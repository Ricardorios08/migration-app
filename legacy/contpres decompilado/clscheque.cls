VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clscheque"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '4268E4
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4268F3
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '426902
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96F574
  'Data Table: 4263DC
  loc_96F54C: FLdRfVar var_88
  loc_96F54F: FLdPr Me
  loc_96F552: MemLdPr RsFrm
  loc_96F555:  = Me.RecordCount
  loc_96F55A: ILdRf var_88
  loc_96F55D: LitI4 0
  loc_96F562: GtI4
  loc_96F563: BranchF loc_96F571
  loc_96F566: FLdPr Me
  loc_96F569: MemLdPr RsFrm
  loc_96F56C: Me.MoveFirst
  loc_96F571: ExitProcHresult
  loc_96F572: CCyI2
End Sub

Public Sub MoveLast() '96F5CC
  'Data Table: 4263DC
  loc_96F5A4: FLdRfVar var_88
  loc_96F5A7: FLdPr Me
  loc_96F5AA: MemLdPr RsFrm
  loc_96F5AD:  = Me.RecordCount
  loc_96F5B2: ILdRf var_88
  loc_96F5B5: LitI4 0
  loc_96F5BA: GtI4
  loc_96F5BB: BranchF loc_96F5C9
  loc_96F5BE: FLdPr Me
  loc_96F5C1: MemLdPr RsFrm
  loc_96F5C4: Me.MoveLast
  loc_96F5C9: ExitProcHresult
  loc_96F5CA: Error
End Sub

Public Sub MoveNext() '99F968
  'Data Table: 4263DC
  loc_99F8F0: FLdRfVar var_86
  loc_99F8F3: FLdPr Me
  loc_99F8F6: MemLdPr RsFrm
  loc_99F8F9:  = Me.EOF
  loc_99F8FE: FLdI2 var_86
  loc_99F901: NotI4
  loc_99F902: FLdRfVar var_8C
  loc_99F905: FLdPr Me
  loc_99F908: MemLdPr RsFrm
  loc_99F90B:  = Me.RecordCount
  loc_99F910: ILdRf var_8C
  loc_99F913: LitI4 0
  loc_99F918: GtI4
  loc_99F919: AndI4
  loc_99F91A: BranchF loc_99F928
  loc_99F91D: FLdPr Me
  loc_99F920: MemLdPr RsFrm
  loc_99F923: Me.MoveNext
  loc_99F928: FLdRfVar var_86
  loc_99F92B: FLdPr Me
  loc_99F92E: MemLdPr RsFrm
  loc_99F931:  = Me.EOF
  loc_99F936: FLdI2 var_86
  loc_99F939: FLdRfVar var_8C
  loc_99F93C: FLdPr Me
  loc_99F93F: MemLdPr RsFrm
  loc_99F942:  = Me.RecordCount
  loc_99F947: ILdRf var_8C
  loc_99F94A: LitI4 0
  loc_99F94F: GtI4
  loc_99F950: AndI4
  loc_99F951: BranchF loc_99F964
  loc_99F954: ImpAdCallFPR4 Beep()
  loc_99F959: FLdPr Me
  loc_99F95C: MemLdPr RsFrm
  loc_99F95F: Me.MoveLast
  loc_99F964: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '941B70
  'Data Table: 4263DC
  loc_941B64: FLdPr Me
  loc_941B67: MemLdPr RsFrm
  loc_941B6A: Me.MoveNext
  loc_941B6F: ExitProcHresult
End Sub

Public Sub Move(iValor) '9481B4
  'Data Table: 4263DC
  loc_9481A0: LitVar_Missing var_94
  loc_9481A3: PopAdLdVar
  loc_9481A4: ILdI2 iValor
  loc_9481A7: CI4UI1
  loc_9481A8: FLdPr Me
  loc_9481AB: MemLdPr RsFrm
  loc_9481AE: Me.Move from_stack_1, from_stack_2
  loc_9481B3: ExitProcHresult
End Sub

Public Sub MovePrevious() '99ED98
  'Data Table: 4263DC
  loc_99ED20: FLdRfVar var_86
  loc_99ED23: FLdPr Me
  loc_99ED26: MemLdPr RsFrm
  loc_99ED29:  = Me.BOF
  loc_99ED2E: FLdI2 var_86
  loc_99ED31: NotI4
  loc_99ED32: FLdRfVar var_8C
  loc_99ED35: FLdPr Me
  loc_99ED38: MemLdPr RsFrm
  loc_99ED3B:  = Me.RecordCount
  loc_99ED40: ILdRf var_8C
  loc_99ED43: LitI4 0
  loc_99ED48: GtI4
  loc_99ED49: AndI4
  loc_99ED4A: BranchF loc_99ED58
  loc_99ED4D: FLdPr Me
  loc_99ED50: MemLdPr RsFrm
  loc_99ED53: Me.MovePrevious
  loc_99ED58: FLdRfVar var_86
  loc_99ED5B: FLdPr Me
  loc_99ED5E: MemLdPr RsFrm
  loc_99ED61:  = Me.BOF
  loc_99ED66: FLdI2 var_86
  loc_99ED69: FLdRfVar var_8C
  loc_99ED6C: FLdPr Me
  loc_99ED6F: MemLdPr RsFrm
  loc_99ED72:  = Me.RecordCount
  loc_99ED77: ILdRf var_8C
  loc_99ED7A: LitI4 0
  loc_99ED7F: GtI4
  loc_99ED80: AndI4
  loc_99ED81: BranchF loc_99ED94
  loc_99ED84: ImpAdCallFPR4 Beep()
  loc_99ED89: FLdPr Me
  loc_99ED8C: MemLdPr RsFrm
  loc_99ED8F: Me.MoveFirst
  loc_99ED94: ExitProcHresult
End Sub

Public Property Get EOF() '962E34
  'Data Table: 4263DC
  loc_962E18: FLdRfVar var_88
  loc_962E1B: FLdPr Me
  loc_962E1E: MemLdPr RsFrm
  loc_962E21:  = Me.EOF
  loc_962E26: FLdI2 var_88
  loc_962E29: FStI2 var_86
  loc_962E2C: ExitProcCbHresult
End Sub

Public Property Get BOF() '962D9C
  'Data Table: 4263DC
  loc_962D80: FLdRfVar var_88
  loc_962D83: FLdPr Me
  loc_962D86: MemLdPr RsFrm
  loc_962D89:  = Me.BOF
  loc_962D8E: FLdI2 var_88
  loc_962D91: FStI2 var_86
  loc_962D94: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '945184
  'Data Table: 4263DC
  loc_945174: ILdI4 sOrden
  loc_945177: FLdPr Me
  loc_94517A: MemLdPr RsFrm
  loc_94517D: Me.Sort = from_stack_1
  loc_945182: ExitProcHresult
End Sub

Public Sub Find(sFind) '967800
  'Data Table: 4263DC
  loc_9677E0: LitVar_Missing var_94
  loc_9677E3: PopAdLdVar
  loc_9677E4: LitI4 1
  loc_9677E9: LitI4 0
  loc_9677EE: ILdI4 sFind
  loc_9677F1: FLdPr Me
  loc_9677F4: MemLdPr RsFrm
  loc_9677F7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9677FC: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '962C6C
  'Data Table: 4263DC
  loc_962C50: FLdRfVar var_8C
  loc_962C53: FLdPr Me
  loc_962C56: MemLdPr RsFrm
  loc_962C59:  = Me.AbsolutePosition
  loc_962C5E: ILdRf var_8C
  loc_962C61: FStR4 var_88
  loc_962C64: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '962BD4
  'Data Table: 4263DC
  loc_962BB8: FLdRfVar var_8C
  loc_962BBB: FLdPr Me
  loc_962BBE: MemLdPr RsFrm
  loc_962BC1:  = Me.RecordCount
  loc_962BC6: ILdRf var_8C
  loc_962BC9: FStR4 var_88
  loc_962BCC: ExitProcCbHresult
End Sub

Public Function Modificar(IdCheq, CodiBanc, NumeMoba, FechCheq, OrdeCheq, AutoCheq) '9D2500
  'Data Table: 4263DC
  loc_9D2440: ILdRf FechCheq
  loc_9D2443: FStStrCopy var_8C
  loc_9D2446: ILdRf OrdeCheq
  loc_9D2449: FStStrCopy var_90
  loc_9D244C: OnErrorGoto loc_9D24E4
  loc_9D244F: LitStr "START TRANSACTION;"
  loc_9D2452: Call EjecutarRsCls(from_stack_1v)
  loc_9D2457: LitStr "UPDATE cheque"
  loc_9D245A: LitStr " SET CodiBanc="
  loc_9D245D: ConcatStr
  loc_9D245E: FStStrNoPop Modificar
  loc_9D2461: ILdRf CodiBanc
  loc_9D2464: CStrI4
  loc_9D2466: FStStrNoPop var_98
  loc_9D2469: ConcatStr
  loc_9D246A: FStStrNoPop var_9C
  loc_9D246D: LitStr ", NumeMoba="
  loc_9D2470: ConcatStr
  loc_9D2471: FStStrNoPop var_A0
  loc_9D2474: ILdRf NumeMoba
  loc_9D2477: CStrI4
  loc_9D2479: FStStrNoPop var_A4
  loc_9D247C: ConcatStr
  loc_9D247D: FStStrNoPop var_A8
  loc_9D2480: LitStr " , ModiUsua = '"
  loc_9D2483: ConcatStr
  loc_9D2484: FStStrNoPop var_AC
  loc_9D2487: ImpAdLdI4 MemVar_C3D03C
  loc_9D248A: ConcatStr
  loc_9D248B: FStStrNoPop var_B0
  loc_9D248E: LitStr "', ModiFeho = Now()"
  loc_9D2491: ConcatStr
  loc_9D2492: FStStrNoPop var_B4
  loc_9D2495: LitStr " WHERE IdCheq = "
  loc_9D2498: ConcatStr
  loc_9D2499: FStStrNoPop var_B8
  loc_9D249C: ILdRf IdCheq
  loc_9D249F: CStrI4
  loc_9D24A1: FStStrNoPop var_BC
  loc_9D24A4: ConcatStr
  loc_9D24A5: FStStrNoPop var_C0
  loc_9D24A8: LitStr ";"
  loc_9D24AB: ConcatStr
  loc_9D24AC: FStStrNoPop var_C4
  loc_9D24AF: Call EjecutarRsCls(from_stack_1v)
  loc_9D24B4: FFreeStr Modificar = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_9D24D1: LitStr "COMMIT;"
  loc_9D24D4: Call EjecutarRsCls(from_stack_1v)
  loc_9D24D9: LitI2_Byte &HFF
  loc_9D24DB: FStI2 var_86
  loc_9D24DE: ExitProcCbHresult
  loc_9D24E4: LitStr "RollBack;"
  loc_9D24E7: Call EjecutarRsCls(from_stack_1v)
  loc_9D24EC: LitI4 0
  loc_9D24F1: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_9D24F4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9D24F9: ExitProcCbHresult
End Function

Public Function AddNew(IdCheq, CucuPers, CodiBanc, NumeMoba, ImpoCheq, FechCheq, NumeOrpa, OrdeCheq, AutoCheq) 'B64968
  'Data Table: 4263DC
  loc_B63ECC: ILdRf CucuPers
  loc_B63ECF: FStStrCopy var_8C
  loc_B63ED2: ILdRf NumeOrpa
  loc_B63ED5: FStStrCopy var_90
  loc_B63ED8: ILdRf AutoCheq
  loc_B63EDB: FStStrCopy AddNew
  loc_B63EDE: OnErrorGoto loc_B6494A
  loc_B63EE1: LitStr "START TRANSACTION;"
  loc_B63EE4: FStStrCopy var_9C
  loc_B63EE7: ILdRf IdCheq
  loc_B63EEA: LitI4 0
  loc_B63EEF: GtI4
  loc_B63EF0: BranchF loc_B64012
  loc_B63EF3: LitStr "SELECT *"
  loc_B63EF6: LitStr " FROM movibanco mb"
  loc_B63EF9: ConcatStr
  loc_B63EFA: FStStrNoPop var_B8
  loc_B63EFD: LitStr " WHERE mb.IdCheq = "
  loc_B63F00: ConcatStr
  loc_B63F01: FStStrNoPop var_BC
  loc_B63F04: ILdRf IdCheq
  loc_B63F07: CStrI4
  loc_B63F09: FStStrNoPop var_C0
  loc_B63F0C: ConcatStr
  loc_B63F0D: FStStrNoPop var_C4
  loc_B63F10: LitStr ";"
  loc_B63F13: ConcatStr
  loc_B63F14: FStStrNoPop var_C8
  loc_B63F17: Call EjecutarRsCls(from_stack_1v)
  loc_B63F1C: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B63F29: FLdRfVar var_CC
  loc_B63F2C: FLdPr Me
  loc_B63F2F: MemLdPr global_56
  loc_B63F32:  = Me.RecordCount
  loc_B63F37: ILdRf var_CC
  loc_B63F3A: LitI4 0
  loc_B63F3F: EqI4
  loc_B63F40: BranchF loc_B63FD6
  loc_B63F43: LitI2_Byte 0
  loc_B63F45: FStI2 var_9E
  loc_B63F48: FLdUI1
  loc_B63F4C: CI2UI1
  loc_B63F4E: LitI2_Byte 0
  loc_B63F50: EqI2
  loc_B63F51: BranchF loc_B63F61
  loc_B63F54: LitI2_Byte 0
  loc_B63F56: FStI2 var_A8
  loc_B63F59: LitI2_Byte 0
  loc_B63F5B: FStI2 var_A6
  loc_B63F5E: Branch loc_B63FD3
  loc_B63F61: FLdUI1
  loc_B63F65: CI2UI1
  loc_B63F67: LitI2_Byte 1
  loc_B63F69: EqI2
  loc_B63F6A: BranchF loc_B63F7A
  loc_B63F6D: LitI2_Byte &HFF
  loc_B63F6F: FStI2 var_A8
  loc_B63F72: LitI2_Byte 0
  loc_B63F74: FStI2 var_A6
  loc_B63F77: Branch loc_B63FD3
  loc_B63F7A: FLdUI1
  loc_B63F7E: CI2UI1
  loc_B63F80: LitI2_Byte 2
  loc_B63F82: EqI2
  loc_B63F83: BranchF loc_B63FBD
  loc_B63F86: LitVar_TRUE var_11C
  loc_B63F89: LitVar_FALSE
  loc_B63F8D: ILdRf NumeMoba
  loc_B63F90: LitI4 0
  loc_B63F95: EqI4
  loc_B63F96: CVarBoolI2 var_DC
  loc_B63F9A: FLdRfVar var_12C
  loc_B63F9D: ImpAdCallFPR4  = IIf(, , )
  loc_B63FA2: FLdRfVar var_12C
  loc_B63FA5: CBoolVar
  loc_B63FA7: FStI2 var_A8
  loc_B63FAA: FFreeVar var_DC = "": var_FC = "": var_11C = ""
  loc_B63FB5: LitI2_Byte 0
  loc_B63FB7: FStI2 var_A6
  loc_B63FBA: Branch loc_B63FD3
  loc_B63FBD: FLdUI1
  loc_B63FC1: CI2UI1
  loc_B63FC3: LitI2_Byte 3
  loc_B63FC5: EqI2
  loc_B63FC6: BranchF loc_B63FD3
  loc_B63FC9: LitI2_Byte 0
  loc_B63FCB: FStI2 var_A8
  loc_B63FCE: LitI2_Byte 0
  loc_B63FD0: FStI2 var_A6
  loc_B63FD3: Branch loc_B6400F
  loc_B63FD6: FLdRfVar var_CC
  loc_B63FD9: FLdPr Me
  loc_B63FDC: MemLdPr global_56
  loc_B63FDF:  = Me.RecordCount
  loc_B63FE4: ILdRf var_CC
  loc_B63FE7: LitI4 1
  loc_B63FEC: EqI4
  loc_B63FED: BranchF loc_B6400C
  loc_B63FF0: LitI2_Byte &HFF
  loc_B63FF2: FStI2 var_9E
  loc_B63FF5: LitI2_Byte 0
  loc_B63FF7: FStI2 var_A8
  loc_B63FFA: LitI2_Byte &HFF
  loc_B63FFC: FStI2 var_A6
  loc_B63FFF: LitI2_Byte 0
  loc_B64001: FStI2 var_A2
  loc_B64004: LitI2_Byte &HFF
  loc_B64006: FStI2 var_A0
  loc_B64009: Branch loc_B6400F
  loc_B6400C: Branch loc_B6494A
  loc_B6400F: Branch loc_B64078
  loc_B64012: LitI2_Byte 0
  loc_B64014: FStI2 var_9E
  loc_B64017: FLdUI1
  loc_B6401B: CI2UI1
  loc_B6401D: LitI2_Byte 0
  loc_B6401F: EqI2
  loc_B64020: BranchF loc_B64030
  loc_B64023: LitI2_Byte 0
  loc_B64025: FStI2 var_A8
  loc_B64028: LitI2_Byte 0
  loc_B6402A: FStI2 var_A6
  loc_B6402D: Branch loc_B64078
  loc_B64030: FLdUI1
  loc_B64034: CI2UI1
  loc_B64036: LitI2_Byte 1
  loc_B64038: EqI2
  loc_B64039: BranchF loc_B64049
  loc_B6403C: LitI2_Byte &HFF
  loc_B6403E: FStI2 var_A8
  loc_B64041: LitI2_Byte 0
  loc_B64043: FStI2 var_A6
  loc_B64046: Branch loc_B64078
  loc_B64049: FLdUI1
  loc_B6404D: CI2UI1
  loc_B6404F: LitI2_Byte 2
  loc_B64051: EqI2
  loc_B64052: BranchF loc_B64062
  loc_B64055: LitI2_Byte 0
  loc_B64057: FStI2 var_A8
  loc_B6405A: LitI2_Byte 0
  loc_B6405C: FStI2 var_A6
  loc_B6405F: Branch loc_B64078
  loc_B64062: FLdUI1
  loc_B64066: CI2UI1
  loc_B64068: LitI2_Byte 3
  loc_B6406A: EqI2
  loc_B6406B: BranchF loc_B64078
  loc_B6406E: LitI2_Byte 0
  loc_B64070: FStI2 var_A8
  loc_B64073: LitI2_Byte 0
  loc_B64075: FStI2 var_A6
  loc_B64078: LitStr "SELECT *"
  loc_B6407B: LitStr " FROM cheque"
  loc_B6407E: ConcatStr
  loc_B6407F: FStStrNoPop var_B8
  loc_B64082: LitStr " WHERE cheque.IdCheq = "
  loc_B64085: ConcatStr
  loc_B64086: FStStrNoPop var_BC
  loc_B64089: ILdRf IdCheq
  loc_B6408C: CStrI4
  loc_B6408E: FStStrNoPop var_C0
  loc_B64091: ConcatStr
  loc_B64092: FStStrNoPop var_C4
  loc_B64095: LitStr ";"
  loc_B64098: ConcatStr
  loc_B64099: FStStrNoPop var_C8
  loc_B6409C: Call EjecutarRsCls(from_stack_1v)
  loc_B640A1: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B640AE: FLdRfVar var_CC
  loc_B640B1: FLdPr Me
  loc_B640B4: MemLdPr global_56
  loc_B640B7:  = Me.RecordCount
  loc_B640BC: ILdRf var_CC
  loc_B640BF: LitI4 1
  loc_B640C4: EqI4
  loc_B640C5: BranchF loc_B64267
  loc_B640C8: FLdRfVar var_FC
  loc_B640CB: FLdRfVar var_134
  loc_B640CE: LitVarStr var_DC, "ExpeImpu"
  loc_B640D3: PopAdLdVar
  loc_B640D4: FLdRfVar var_130
  loc_B640D7: FLdPr Me
  loc_B640DA: MemLdPr global_56
  loc_B640DD:  = Me.Fields
  loc_B640E2: FLdPr var_130
  loc_B640E5: from_stack_2 = Me.Item(from_stack_1)
  loc_B640EA: FLdPr var_134
  loc_B640ED:  = Me.Value
  loc_B640F2: FLdRfVar var_FC
  loc_B640F5: CStrVarTmp
  loc_B640F6: FStStr var_B0
  loc_B640F9: FFreeAd var_130 = ""
  loc_B64100: FFree1Var var_FC = ""
  loc_B64103: FLdRfVar var_FC
  loc_B64106: FLdRfVar var_134
  loc_B64109: LitVarStr var_DC, "NumeLiqu"
  loc_B6410E: PopAdLdVar
  loc_B6410F: FLdRfVar var_130
  loc_B64112: FLdPr Me
  loc_B64115: MemLdPr global_56
  loc_B64118:  = Me.Fields
  loc_B6411D: FLdPr var_130
  loc_B64120: from_stack_2 = Me.Item(from_stack_1)
  loc_B64125: FLdPr var_134
  loc_B64128:  = Me.Value
  loc_B6412D: FLdRfVar var_FC
  loc_B64130: CI2Var
  loc_B64131: FStI2 var_B2
  loc_B64134: FFreeAd var_130 = ""
  loc_B6413B: FFree1Var var_FC = ""
  loc_B6413E: FLdRfVar var_FC
  loc_B64141: FLdRfVar var_134
  loc_B64144: LitVarStr var_DC, "NumeMoba"
  loc_B64149: PopAdLdVar
  loc_B6414A: FLdRfVar var_130
  loc_B6414D: FLdPr Me
  loc_B64150: MemLdPr global_56
  loc_B64153:  = Me.Fields
  loc_B64158: FLdPr var_130
  loc_B6415B: from_stack_2 = Me.Item(from_stack_1)
  loc_B64160: FLdPr var_134
  loc_B64163:  = Me.Value
  loc_B64168: FLdRfVar var_FC
  loc_B6416B: FnCLngVar
  loc_B6416D: LitI4 0
  loc_B64172: EqI4
  loc_B64173: ILdRf NumeMoba
  loc_B64176: LitI4 0
  loc_B6417B: GtI4
  loc_B6417C: AndI4
  loc_B6417D: ILdRf CodiBanc
  loc_B64180: LitI4 0
  loc_B64185: GtI4
  loc_B64186: AndI4
  loc_B64187: FLdRfVar var_11C
  loc_B6418A: FLdRfVar var_13C
  loc_B6418D: LitVarStr var_EC, "CodiBanc"
  loc_B64192: PopAdLdVar
  loc_B64193: FLdRfVar var_138
  loc_B64196: FLdPr Me
  loc_B64199: MemLdPr global_56
  loc_B6419C:  = Me.Fields
  loc_B641A1: FLdPr var_138
  loc_B641A4: from_stack_2 = Me.Item(from_stack_1)
  loc_B641A9: FLdPr var_13C
  loc_B641AC:  = Me.Value
  loc_B641B1: FLdRfVar var_11C
  loc_B641B4: FnCLngVar
  loc_B641B6: ILdRf CodiBanc
  loc_B641B9: NeI4
  loc_B641BA: OrI4
  loc_B641BB: FFreeAd var_130 = "": var_134 = "": var_138 = ""
  loc_B641C6: FFreeVar var_FC = ""
  loc_B641CD: BranchF loc_B64230
  loc_B641D0: FLdRfVar var_B8
  loc_B641D3: FLdR8 ImpoCheq
  loc_B641D6: ILdRf var_90
  loc_B641D9: ILdRf CodiBanc
  loc_B641DC: from_stack_4v = ValidaSaldoLibroBanco(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B641E1: ImpAdLdRf MemVar_C3D138
  loc_B641E4: NewIfNullPr frmEmisionCheque
  loc_B641E7: VCallAd Control_ID_
  loc_B641EA: FStAdFunc var_13C
  loc_B641ED: LitNothing
  loc_B641EF: CastAd
  loc_B641F2: FStAdFunc var_138
  loc_B641F5: FLdRfVar var_138
  loc_B641F8: FLdZeroAd var_13C
  loc_B641FB: FStAdFuncNoPop
  loc_B641FE: CastAd
  loc_B64201: FStAdFunc var_134
  loc_B64204: FLdRfVar var_134
  loc_B64207: FLdZeroAd var_B8
  loc_B6420A: PopTmpLdAdStr
  loc_B6420E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B64213: FStI2 var_96
  loc_B64216: FFree1Str var_BC
  loc_B64219: FFreeAd var_130 = "": var_134 = "": var_138 = ""
  loc_B64224: FLdI2 var_96
  loc_B64227: BranchF loc_B6422D
  loc_B6422A: Branch loc_B6494A
  loc_B6422D: Branch loc_B6425A
  loc_B64230: ILdRf NumeMoba
  loc_B64233: LitI4 0
  loc_B64238: EqI4
  loc_B64239: ILdRf CodiBanc
  loc_B6423C: LitI4 0
  loc_B64241: EqI4
  loc_B64242: OrI4
  loc_B64243: BranchF loc_B6425A
  loc_B64246: LitI2_Byte 0
  loc_B64248: FStI2 var_96
  loc_B6424B: LitI2_Byte &HFF
  loc_B6424D: FStI2 var_AA
  loc_B64250: LitI2_Byte 0
  loc_B64252: FStI2 var_A8
  loc_B64255: LitI2_Byte 0
  loc_B64257: FStI2 var_A6
  loc_B6425A: LitI2_Byte &HFF
  loc_B6425C: FStI2 var_A0
  loc_B6425F: LitI2_Byte 0
  loc_B64261: FStI2 var_A2
  loc_B64264: Branch loc_B64381
  loc_B64267: LitI2_Byte 0
  loc_B64269: FStI2 var_A0
  loc_B6426C: LitI2_Byte &HFF
  loc_B6426E: FStI2 var_A2
  loc_B64271: FLdRfVar var_B8
  loc_B64274: FLdR8 ImpoCheq
  loc_B64277: ILdRf var_90
  loc_B6427A: ILdRf CodiBanc
  loc_B6427D: from_stack_4v = ValidaSaldoLibroBanco(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B64282: ImpAdLdRf MemVar_C3D138
  loc_B64285: NewIfNullPr frmEmisionCheque
  loc_B64288: VCallAd Control_ID_
  loc_B6428B: FStAdFunc var_13C
  loc_B6428E: LitNothing
  loc_B64290: CastAd
  loc_B64293: FStAdFunc var_138
  loc_B64296: FLdRfVar var_138
  loc_B64299: FLdZeroAd var_13C
  loc_B6429C: FStAdFuncNoPop
  loc_B6429F: CastAd
  loc_B642A2: FStAdFunc var_134
  loc_B642A5: FLdRfVar var_134
  loc_B642A8: FLdZeroAd var_B8
  loc_B642AB: PopTmpLdAdStr
  loc_B642AF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B642B4: FStI2 var_96
  loc_B642B7: FFree1Str var_BC
  loc_B642BA: FFreeAd var_130 = "": var_134 = "": var_138 = ""
  loc_B642C5: FLdI2 var_96
  loc_B642C8: BranchF loc_B642CE
  loc_B642CB: Branch loc_B6494A
  loc_B642CE: LitStr "SELECT ExpeImpu, NumeLiqu FROM ordenpago WHERE PeriInfo = "
  loc_B642D1: ImpAdLdI2 MemVar_C3D064
  loc_B642D4: CStrUI1
  loc_B642D6: FStStrNoPop var_B8
  loc_B642D9: ConcatStr
  loc_B642DA: FStStrNoPop var_BC
  loc_B642DD: LitStr " AND NumeOrpa = "
  loc_B642E0: ConcatStr
  loc_B642E1: FStStrNoPop var_C0
  loc_B642E4: ILdRf OrdeCheq
  loc_B642E7: CStrI4
  loc_B642E9: FStStrNoPop var_C4
  loc_B642EC: ConcatStr
  loc_B642ED: FStStrNoPop var_C8
  loc_B642F0: LitStr ";"
  loc_B642F3: ConcatStr
  loc_B642F4: FStStrNoPop var_140
  loc_B642F7: Call EjecutarRsCls(from_stack_1v)
  loc_B642FC: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B6430B: FLdRfVar var_FC
  loc_B6430E: FLdRfVar var_134
  loc_B64311: LitVarStr var_DC, "ExpeImpu"
  loc_B64316: PopAdLdVar
  loc_B64317: FLdRfVar var_130
  loc_B6431A: FLdPr Me
  loc_B6431D: MemLdPr global_56
  loc_B64320:  = frmEmisionCheque.Recordset15.Fields
  loc_B64325: FLdPr var_130
  loc_B64328: from_stack_2 = Me.Item(from_stack_1)
  loc_B6432D: FLdPr var_134
  loc_B64330:  = Me.Value
  loc_B64335: FLdRfVar var_FC
  loc_B64338: CStrVarTmp
  loc_B64339: FStStr var_B0
  loc_B6433C: FFreeAd var_130 = ""
  loc_B64343: FFree1Var var_FC = ""
  loc_B64346: FLdRfVar var_FC
  loc_B64349: FLdRfVar var_134
  loc_B6434C: LitVarStr var_DC, "NumeLiqu"
  loc_B64351: PopAdLdVar
  loc_B64352: FLdRfVar var_130
  loc_B64355: FLdPr Me
  loc_B64358: MemLdPr global_56
  loc_B6435B:  = Me.Fields
  loc_B64360: FLdPr var_130
  loc_B64363: from_stack_2 = Me.Item(from_stack_1)
  loc_B64368: FLdPr var_134
  loc_B6436B:  = Me.Value
  loc_B64370: FLdRfVar var_FC
  loc_B64373: CI2Var
  loc_B64374: FStI2 var_B2
  loc_B64377: FFreeAd var_130 = ""
  loc_B6437E: FFree1Var var_FC = ""
  loc_B64381: FLdI2 var_A0
  loc_B64384: LitI2_Byte &HFF
  loc_B64386: EqI2
  loc_B64387: FLdI2 var_A2
  loc_B6438A: LitI2_Byte &HFF
  loc_B6438C: EqI2
  loc_B6438D: AndI4
  loc_B6438E: FLdI2 var_A6
  loc_B64391: LitI2_Byte &HFF
  loc_B64393: EqI2
  loc_B64394: FLdI2 var_A8
  loc_B64397: LitI2_Byte &HFF
  loc_B64399: EqI2
  loc_B6439A: AndI4
  loc_B6439B: OrI4
  loc_B6439C: BranchF loc_B643A2
  loc_B6439F: Branch loc_B6494A
  loc_B643A2: FLdI2 var_A0
  loc_B643A5: BranchF loc_B644D3
  loc_B643A8: ILdRf var_9C
  loc_B643AB: LitStr "UPDATE cheque"
  loc_B643AE: ConcatStr
  loc_B643AF: FStStrNoPop var_B8
  loc_B643B2: LitStr " SET CodiBanc="
  loc_B643B5: ConcatStr
  loc_B643B6: FStStrNoPop var_BC
  loc_B643B9: ILdRf CodiBanc
  loc_B643BC: CStrI4
  loc_B643BE: FStStrNoPop var_C0
  loc_B643C1: ConcatStr
  loc_B643C2: FStStrNoPop var_C4
  loc_B643C5: LitStr ", NumeMoba="
  loc_B643C8: ConcatStr
  loc_B643C9: FStStrNoPop var_C8
  loc_B643CC: ILdRf NumeMoba
  loc_B643CF: CStrI4
  loc_B643D1: FStStrNoPop var_140
  loc_B643D4: ConcatStr
  loc_B643D5: FStStrNoPop var_144
  loc_B643D8: LitStr ", FechCheq="
  loc_B643DB: ConcatStr
  loc_B643DC: CVarStr var_12C
  loc_B643DF: LitI4 1
  loc_B643E4: LitI4 1
  loc_B643E9: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_B643EE: FStVarCopyObj var_FC
  loc_B643F1: FLdRfVar var_FC
  loc_B643F4: FLdRfVar var_90
  loc_B643F7: CVarRef
  loc_B643FC: FLdRfVar var_11C
  loc_B643FF: ImpAdCallFPR4  = Format(, )
  loc_B64404: FLdRfVar var_11C
  loc_B64407: ConcatVar var_154
  loc_B6440B: LitVarStr var_10C, ", ImpoCheq="
  loc_B64410: ConcatVar var_164
  loc_B64414: FLdFPR8 ImpoCheq
  loc_B64417: CStrR8
  loc_B64419: FStStrNoPop var_168
  loc_B6441C: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B64421: CVarStr var_178
  loc_B64424: ConcatVar var_188
  loc_B64428: LitVarStr var_198, " , AutoCheq = "
  loc_B6442D: ConcatVar var_1A8
  loc_B64431: FLdUI1
  loc_B64435: CVarUI1
  loc_B64439: ConcatVar var_1C8
  loc_B6443D: LitVarStr var_1D8, " , OrdeCheq = '"
  loc_B64442: ConcatVar var_1E8
  loc_B64446: ILdRf AddNew
  loc_B64449: CVarStr var_1F8
  loc_B6444C: ConcatVar var_208
  loc_B64450: LitVarStr var_218, "'"
  loc_B64455: ConcatVar var_228
  loc_B64459: LitVarStr var_238, " , ModiUsua = '"
  loc_B6445E: ConcatVar var_248
  loc_B64462: ImpAdLdI4 MemVar_C3D03C
  loc_B64465: CVarStr var_258
  loc_B64468: ConcatVar var_268
  loc_B6446C: LitVarStr var_278, "', ModiFeho = Now()"
  loc_B64471: ConcatVar var_288
  loc_B64475: LitVarStr var_298, " WHERE IdCheq = "
  loc_B6447A: ConcatVar var_2A8
  loc_B6447E: ILdRf IdCheq
  loc_B64481: CVarI4
  loc_B64485: ConcatVar var_2C8
  loc_B64489: LitVarStr var_2D8, ";"
  loc_B6448E: ConcatVar var_2E8
  loc_B64492: CStrVarTmp
  loc_B64493: FStStr var_9C
  loc_B64496: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_140 = "": var_144 = ""
  loc_B644A9: FFreeVar var_FC = "": var_12C = "": var_11C = "": var_154 = "": var_164 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_288 = "": var_2A8 = "": var_2C8 = ""
  loc_B644D0: Branch loc_B64633
  loc_B644D3: FLdI2 var_A2
  loc_B644D6: BranchF loc_B6462D
  loc_B644D9: ILdRf var_9C
  loc_B644DC: LitStr "INSERT INTO cheque (ExpeImpu,NumeLiqu,CucuPers,CodiBanc,NumeMoba,ImpoCheq,PeriInfo,NumeOrpa,FechCheq,OrdeCheq,DetaCheq,AutoCheq,AltaUsua) "
  loc_B644DF: ConcatStr
  loc_B644E0: FStStrNoPop var_B8
  loc_B644E3: LitStr " VALUES ('"
  loc_B644E6: ConcatStr
  loc_B644E7: FStStrNoPop var_BC
  loc_B644EA: ILdRf var_B0
  loc_B644ED: ConcatStr
  loc_B644EE: FStStrNoPop var_C0
  loc_B644F1: LitStr "',"
  loc_B644F4: ConcatStr
  loc_B644F5: FStStrNoPop var_C4
  loc_B644F8: FLdI2 var_B2
  loc_B644FB: CStrUI1
  loc_B644FD: FStStrNoPop var_C8
  loc_B64500: ConcatStr
  loc_B64501: FStStrNoPop var_140
  loc_B64504: LitStr ",'"
  loc_B64507: ConcatStr
  loc_B64508: FStStrNoPop var_144
  loc_B6450B: ILdRf var_8C
  loc_B6450E: ConcatStr
  loc_B6450F: FStStrNoPop var_168
  loc_B64512: LitStr "',"
  loc_B64515: ConcatStr
  loc_B64516: FStStrNoPop var_2EC
  loc_B64519: ILdRf CodiBanc
  loc_B6451C: CStrI4
  loc_B6451E: FStStrNoPop var_2F0
  loc_B64521: ConcatStr
  loc_B64522: FStStrNoPop var_2F4
  loc_B64525: LitStr ","
  loc_B64528: ConcatStr
  loc_B64529: FStStrNoPop var_2F8
  loc_B6452C: ILdRf NumeMoba
  loc_B6452F: CStrI4
  loc_B64531: FStStrNoPop var_2FC
  loc_B64534: ConcatStr
  loc_B64535: FStStrNoPop var_300
  loc_B64538: LitStr ","
  loc_B6453B: ConcatStr
  loc_B6453C: FStStrNoPop var_308
  loc_B6453F: FLdFPR8 ImpoCheq
  loc_B64542: CStrR8
  loc_B64544: FStStrNoPop var_304
  loc_B64547: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B6454C: FStStrNoPop var_30C
  loc_B6454F: ConcatStr
  loc_B64550: FStStrNoPop var_310
  loc_B64553: LitStr ","
  loc_B64556: ConcatStr
  loc_B64557: FStStrNoPop var_314
  loc_B6455A: ImpAdLdI2 MemVar_C3D064
  loc_B6455D: CStrUI1
  loc_B6455F: FStStrNoPop var_318
  loc_B64562: ConcatStr
  loc_B64563: FStStrNoPop var_31C
  loc_B64566: LitStr ","
  loc_B64569: ConcatStr
  loc_B6456A: FStStrNoPop var_320
  loc_B6456D: ILdRf OrdeCheq
  loc_B64570: CStrI4
  loc_B64572: FStStrNoPop var_324
  loc_B64575: ConcatStr
  loc_B64576: FStStrNoPop var_328
  loc_B64579: LitStr ","
  loc_B6457C: ConcatStr
  loc_B6457D: FStStrNoPop var_32C
  loc_B64580: LitI4 1
  loc_B64585: LitI4 1
  loc_B6458A: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_B6458F: FStVarCopyObj var_FC
  loc_B64592: FLdRfVar var_FC
  loc_B64595: FLdRfVar var_90
  loc_B64598: CVarRef
  loc_B6459D: ImpAdCallI2 Format$(, )
  loc_B645A2: FStStrNoPop var_330
  loc_B645A5: ConcatStr
  loc_B645A6: FStStrNoPop var_334
  loc_B645A9: LitStr ",'"
  loc_B645AC: ConcatStr
  loc_B645AD: FStStrNoPop var_338
  loc_B645B0: ILdRf AddNew
  loc_B645B3: ConcatStr
  loc_B645B4: FStStrNoPop var_33C
  loc_B645B7: LitStr "', 0,"
  loc_B645BA: ConcatStr
  loc_B645BB: FStStrNoPop var_340
  loc_B645BE: FLdUI1
  loc_B645C2: CStrI2
  loc_B645C4: FStStrNoPop var_344
  loc_B645C7: ConcatStr
  loc_B645C8: FStStrNoPop var_348
  loc_B645CB: LitStr ",'"
  loc_B645CE: ConcatStr
  loc_B645CF: FStStrNoPop var_34C
  loc_B645D2: ImpAdLdI4 MemVar_C3D03C
  loc_B645D5: ConcatStr
  loc_B645D6: FStStrNoPop var_350
  loc_B645D9: LitStr "');"
  loc_B645DC: ConcatStr
  loc_B645DD: FStStr var_9C
  loc_B645E0: FFreeStr var_344 = "": var_348 = "": var_34C = "": var_350 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_140 = "": var_144 = "": var_168 = "": var_2EC = "": var_2F0 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = "": var_338 = "": var_33C = ""
  loc_B64627: FFree1Var var_FC = ""
  loc_B6462A: Branch loc_B64633
  loc_B6462D: FLdI2 var_A4
  loc_B64630: BranchF loc_B64633
  loc_B64633: FLdI2 var_A6
  loc_B64636: BranchF loc_B64707
  loc_B64639: ILdRf var_9C
  loc_B6463C: LitStr "UPDATE movibanco"
  loc_B6463F: ConcatStr
  loc_B64640: FStStrNoPop var_B8
  loc_B64643: LitStr " SET CodiBanc="
  loc_B64646: ConcatStr
  loc_B64647: FStStrNoPop var_BC
  loc_B6464A: ILdRf CodiBanc
  loc_B6464D: CStrI4
  loc_B6464F: FStStrNoPop var_C0
  loc_B64652: ConcatStr
  loc_B64653: FStStrNoPop var_C4
  loc_B64656: LitStr ", NumeMoba="
  loc_B64659: ConcatStr
  loc_B6465A: FStStrNoPop var_C8
  loc_B6465D: ILdRf NumeMoba
  loc_B64660: CStrI4
  loc_B64662: FStStrNoPop var_140
  loc_B64665: ConcatStr
  loc_B64666: FStStrNoPop var_144
  loc_B64669: LitStr ", FechMoba="
  loc_B6466C: ConcatStr
  loc_B6466D: CVarStr var_12C
  loc_B64670: LitI4 1
  loc_B64675: LitI4 1
  loc_B6467A: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_B6467F: FStVarCopyObj var_FC
  loc_B64682: FLdRfVar var_FC
  loc_B64685: FLdRfVar var_90
  loc_B64688: CVarRef
  loc_B6468D: FLdRfVar var_11C
  loc_B64690: ImpAdCallFPR4  = Format(, )
  loc_B64695: FLdRfVar var_11C
  loc_B64698: ConcatVar var_154
  loc_B6469C: LitVarStr var_10C, ", HabeMoba="
  loc_B646A1: ConcatVar var_164
  loc_B646A5: FLdFPR8 ImpoCheq
  loc_B646A8: CStrR8
  loc_B646AA: FStStrNoPop var_168
  loc_B646AD: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B646B2: CVarStr var_178
  loc_B646B5: ConcatVar var_188
  loc_B646B9: LitVarStr var_198, " WHERE IdCheq = "
  loc_B646BE: ConcatVar var_1A8
  loc_B646C2: ILdRf IdCheq
  loc_B646C5: CVarI4
  loc_B646C9: ConcatVar var_1C8
  loc_B646CD: LitVarStr var_1D8, ";"
  loc_B646D2: ConcatVar var_1E8
  loc_B646D6: CStrVarTmp
  loc_B646D7: FStStr var_9C
  loc_B646DA: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_140 = "": var_144 = ""
  loc_B646ED: FFreeVar var_FC = "": var_12C = "": var_11C = "": var_154 = "": var_164 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1C8 = ""
  loc_B64704: Branch loc_B648B5
  loc_B64707: FLdI2 var_A8
  loc_B6470A: BranchF loc_B64867
  loc_B6470D: ILdRf var_9C
  loc_B64710: LitStr "INSERT INTO movibanco (PeriInfo,IdMoba,CodiBanc,CodiTimb,NumeMoba,FechMoba,FecoMoba,DebeMoba,HabeMoba,DetaMoba,NumeOrpa,IdCheq,AltaUsua)"
  loc_B64713: ConcatStr
  loc_B64714: FStStrNoPop var_B8
  loc_B64717: LitStr " VALUES ("
  loc_B6471A: ConcatStr
  loc_B6471B: FStStrNoPop var_BC
  loc_B6471E: ImpAdLdI2 MemVar_C3D064
  loc_B64721: CStrUI1
  loc_B64723: FStStrNoPop var_C0
  loc_B64726: ConcatStr
  loc_B64727: FStStrNoPop var_C4
  loc_B6472A: LitStr ",(SELECT IFNULL(MAX(IdMoba),0)+1 FROM movibanco mb2 WHERE mb2.PeriInfo = "
  loc_B6472D: ConcatStr
  loc_B6472E: FStStrNoPop var_C8
  loc_B64731: ImpAdLdI2 MemVar_C3D064
  loc_B64734: CStrUI1
  loc_B64736: FStStrNoPop var_140
  loc_B64739: ConcatStr
  loc_B6473A: FStStrNoPop var_144
  loc_B6473D: LitStr "), "
  loc_B64740: ConcatStr
  loc_B64741: FStStrNoPop var_168
  loc_B64744: ILdRf CodiBanc
  loc_B64747: CStrI4
  loc_B64749: FStStrNoPop var_2EC
  loc_B6474C: ConcatStr
  loc_B6474D: FStStrNoPop var_2F0
  loc_B64750: LitStr ", 1, "
  loc_B64753: ConcatStr
  loc_B64754: FStStrNoPop var_2F4
  loc_B64757: ILdRf NumeMoba
  loc_B6475A: CStrI4
  loc_B6475C: FStStrNoPop var_2F8
  loc_B6475F: ConcatStr
  loc_B64760: FStStrNoPop var_2FC
  loc_B64763: LitStr ", "
  loc_B64766: ConcatStr
  loc_B64767: FStStrNoPop var_300
  loc_B6476A: LitI4 1
  loc_B6476F: LitI4 1
  loc_B64774: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_B64779: FStVarCopyObj var_FC
  loc_B6477C: FLdRfVar var_FC
  loc_B6477F: FLdRfVar var_90
  loc_B64782: CVarRef
  loc_B64787: ImpAdCallI2 Format$(, )
  loc_B6478C: FStStrNoPop var_304
  loc_B6478F: ConcatStr
  loc_B64790: FStStrNoPop var_308
  loc_B64793: LitStr ", NULL, 0, "
  loc_B64796: ConcatStr
  loc_B64797: FStStrNoPop var_310
  loc_B6479A: FLdFPR8 ImpoCheq
  loc_B6479D: CStrR8
  loc_B6479F: FStStrNoPop var_30C
  loc_B647A2: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B647A7: FStStrNoPop var_314
  loc_B647AA: ConcatStr
  loc_B647AB: FStStrNoPop var_318
  loc_B647AE: LitStr ", '"
  loc_B647B1: ConcatStr
  loc_B647B2: FStStrNoPop var_31C
  loc_B647B5: ILdRf AddNew
  loc_B647B8: ConcatStr
  loc_B647B9: FStStrNoPop var_320
  loc_B647BC: LitStr " - "
  loc_B647BF: ConcatStr
  loc_B647C0: FStStrNoPop var_324
  loc_B647C3: ILdRf var_B0
  loc_B647C6: ConcatStr
  loc_B647C7: FStStrNoPop var_328
  loc_B647CA: LitStr "-"
  loc_B647CD: ConcatStr
  loc_B647CE: FStStrNoPop var_32C
  loc_B647D1: FLdI2 var_B2
  loc_B647D4: CStrUI1
  loc_B647D6: FStStrNoPop var_330
  loc_B647D9: ConcatStr
  loc_B647DA: FStStrNoPop var_334
  loc_B647DD: LitStr "', "
  loc_B647E0: ConcatStr
  loc_B647E1: FStStrNoPop var_338
  loc_B647E4: ILdRf OrdeCheq
  loc_B647E7: CStrI4
  loc_B647E9: FStStrNoPop var_33C
  loc_B647EC: ConcatStr
  loc_B647ED: FStStrNoPop var_340
  loc_B647F0: LitStr ", "
  loc_B647F3: ConcatStr
  loc_B647F4: FStStrNoPop var_344
  loc_B647F7: ILdRf IdCheq
  loc_B647FA: CStrI4
  loc_B647FC: FStStrNoPop var_348
  loc_B647FF: ConcatStr
  loc_B64800: FStStrNoPop var_34C
  loc_B64803: LitStr ", '"
  loc_B64806: ConcatStr
  loc_B64807: FStStrNoPop var_350
  loc_B6480A: ImpAdLdI4 MemVar_C3D03C
  loc_B6480D: ConcatStr
  loc_B6480E: FStStrNoPop var_354
  loc_B64811: LitStr "');"
  loc_B64814: ConcatStr
  loc_B64815: FStStr var_9C
  loc_B64818: FFreeStr var_344 = "": var_348 = "": var_34C = "": var_350 = "": var_354 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_140 = "": var_144 = "": var_168 = "": var_2EC = "": var_2F0 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = "": var_338 = "": var_33C = ""
  loc_B64861: FFree1Var var_FC = ""
  loc_B64864: Branch loc_B648B5
  loc_B64867: FLdI2 var_AA
  loc_B6486A: BranchF loc_B648B5
  loc_B6486D: ILdRf var_9C
  loc_B64870: LitStr "DELETE FROM movibanco"
  loc_B64873: ConcatStr
  loc_B64874: FStStrNoPop var_B8
  loc_B64877: LitStr " WHERE PeriInfo = "
  loc_B6487A: ConcatStr
  loc_B6487B: FStStrNoPop var_BC
  loc_B6487E: ImpAdLdI2 MemVar_C3D064
  loc_B64881: CStrUI1
  loc_B64883: FStStrNoPop var_C0
  loc_B64886: ConcatStr
  loc_B64887: FStStrNoPop var_C4
  loc_B6488A: LitStr " AND CodiTimb <= 4 AND IdCheq = "
  loc_B6488D: ConcatStr
  loc_B6488E: FStStrNoPop var_C8
  loc_B64891: ILdRf IdCheq
  loc_B64894: CStrI4
  loc_B64896: FStStrNoPop var_140
  loc_B64899: ConcatStr
  loc_B6489A: FStStrNoPop var_144
  loc_B6489D: LitStr ";"
  loc_B648A0: ConcatStr
  loc_B648A1: FStStr var_9C
  loc_B648A4: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_140 = ""
  loc_B648B5: FLdUI1
  loc_B648B9: CI2UI1
  loc_B648BB: LitI2_Byte 2
  loc_B648BD: EqI2
  loc_B648BE: ILdRf NumeMoba
  loc_B648C1: LitI4 0
  loc_B648C6: GtI4
  loc_B648C7: AndI4
  loc_B648C8: ILdRf CodiBanc
  loc_B648CB: LitI4 0
  loc_B648D0: GtI4
  loc_B648D1: AndI4
  loc_B648D2: BranchF loc_B6492D
  loc_B648D5: ILdRf var_9C
  loc_B648D8: LitStr "UPDATE banco SET UlchBanc="
  loc_B648DB: ConcatStr
  loc_B648DC: FStStrNoPop var_B8
  loc_B648DF: ILdRf NumeMoba
  loc_B648E2: CStrI4
  loc_B648E4: FStStrNoPop var_BC
  loc_B648E7: ConcatStr
  loc_B648E8: FStStrNoPop var_C0
  loc_B648EB: LitStr " WHERE PeriInfo = "
  loc_B648EE: ConcatStr
  loc_B648EF: FStStrNoPop var_C4
  loc_B648F2: ImpAdLdI2 MemVar_C3D064
  loc_B648F5: CStrUI1
  loc_B648F7: FStStrNoPop var_C8
  loc_B648FA: ConcatStr
  loc_B648FB: FStStrNoPop var_140
  loc_B648FE: LitStr " AND CodiBanc = "
  loc_B64901: ConcatStr
  loc_B64902: FStStrNoPop var_144
  loc_B64905: ILdRf CodiBanc
  loc_B64908: CStrI4
  loc_B6490A: FStStrNoPop var_168
  loc_B6490D: ConcatStr
  loc_B6490E: FStStrNoPop var_2EC
  loc_B64911: LitStr ";"
  loc_B64914: ConcatStr
  loc_B64915: FStStr var_9C
  loc_B64918: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_140 = "": var_144 = "": var_168 = ""
  loc_B6492D: ILdRf var_9C
  loc_B64930: LitStr "COMMIT;"
  loc_B64933: ConcatStr
  loc_B64934: FStStr var_9C
  loc_B64937: ILdRf var_9C
  loc_B6493A: Call EjecutarRsCls(from_stack_1v)
  loc_B6493F: LitI2_Byte &HFF
  loc_B64941: FStI2 var_86
  loc_B64944: ExitProcCbHresult
  loc_B6494A: LitStr "RollBack;"
  loc_B6494D: Call EjecutarRsCls(from_stack_1v)
  loc_B64952: LitI4 0
  loc_B64957: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B6495A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B6495F: ExitProcCbHresult
End Function

Public Function AddNew_Grid(Grid, NumeOrpa) 'B9DA98
  'Data Table: 4263DC
  loc_B9CC28: ILdRf Grid
  loc_B9CC2B: FStAd var_8C 
  loc_B9CC2F: OnErrorGoto loc_B9DA7B
  loc_B9CC32: LitStr "START TRANSACTION;"
  loc_B9CC35: FStStrCopy AddNew_Grid
  loc_B9CC38: LitI4 1
  loc_B9CC3D: FLdRfVar var_A8
  loc_B9CC40: FLdPr var_8C
  loc_B9CC43: LateIdLdVar var_E4 DispID_4 0
  loc_B9CC4A: CI4Var
  loc_B9CC4C: LitI4 1
  loc_B9CC51: SubI4
  loc_B9CC52: FFree1Var var_E4 = ""
  loc_B9CC55: ForI4 var_EC
  loc_B9CC5B: FLdRfVar var_A8
  loc_B9CC5E: CDargRef
  loc_B9CC62: LitVarI4
  loc_B9CC6A: PopAdLdVar
  loc_B9CC6B: FLdPr var_8C
  loc_B9CC6E: LateIdCallLdVar
  loc_B9CC78: CStrVarTmp
  loc_B9CC79: FStStrNoPop var_120
  loc_B9CC7C: LitStr "No"
  loc_B9CC7F: EqStr
  loc_B9CC81: FFree1Str var_120
  loc_B9CC84: FFree1Var var_E4 = ""
  loc_B9CC87: BranchF loc_B9DA56
  loc_B9CC8A: FLdRfVar var_A8
  loc_B9CC8D: CDargRef
  loc_B9CC91: LitVarI4
  loc_B9CC99: PopAdLdVar
  loc_B9CC9A: FLdPr var_8C
  loc_B9CC9D: LateIdCallLdVar
  loc_B9CCA7: CStrVarTmp
  loc_B9CCA8: FStStrNoPop var_120
  loc_B9CCAB: CI4Str
  loc_B9CCAC: FStR4 var_AC
  loc_B9CCAF: FFree1Str var_120
  loc_B9CCB2: FFree1Var var_E4 = ""
  loc_B9CCB5: FLdRfVar var_A8
  loc_B9CCB8: CDargRef
  loc_B9CCBC: LitVarI4
  loc_B9CCC4: PopAdLdVar
  loc_B9CCC5: FLdPr var_8C
  loc_B9CCC8: LateIdCallLdVar
  loc_B9CCD2: PopAd
  loc_B9CCD4: LitI4 0
  loc_B9CCD9: LitI4 -1
  loc_B9CCDE: LitI4 1
  loc_B9CCE3: LitStr vbNullString
  loc_B9CCE6: LitStr "-"
  loc_B9CCE9: FLdRfVar var_E4
  loc_B9CCEC: CStrVarTmp
  loc_B9CCED: FStStrNoPop var_120
  loc_B9CCF0: ImpAdCallI2 Replace(, , , , , )
  loc_B9CCF5: FStStr var_B0
  loc_B9CCF8: FFree1Str var_120
  loc_B9CCFB: FFree1Var var_E4 = ""
  loc_B9CCFE: FLdRfVar var_A8
  loc_B9CD01: CDargRef
  loc_B9CD05: LitVarI4
  loc_B9CD0D: PopAdLdVar
  loc_B9CD0E: FLdPr var_8C
  loc_B9CD11: LateIdCallLdVar
  loc_B9CD1B: PopAd
  loc_B9CD1D: LitI4 1
  loc_B9CD22: FLdRfVar var_A8
  loc_B9CD25: CDargRef
  loc_B9CD29: LitVarI4
  loc_B9CD31: PopAdLdVar
  loc_B9CD32: FLdPr var_8C
  loc_B9CD35: LateIdCallLdVar
  loc_B9CD3F: CStrVarTmp
  loc_B9CD40: FStStrNoPop var_120
  loc_B9CD43: LitStr "-"
  loc_B9CD46: LitI4 0
  loc_B9CD4B: FnInStr4
  loc_B9CD4D: LitI4 1
  loc_B9CD52: SubI4
  loc_B9CD53: CVarI4
  loc_B9CD57: LitI4 1
  loc_B9CD5C: FLdRfVar var_E4
  loc_B9CD5F: CStrVarTmp
  loc_B9CD60: FStStrNoPop var_164
  loc_B9CD63: ImpAdCallI2 Mid$(, , )
  loc_B9CD68: FStStrNoPop var_188
  loc_B9CD6B: CI4Str
  loc_B9CD6C: FStR4 var_B4
  loc_B9CD6F: FFreeStr var_120 = "": var_164 = ""
  loc_B9CD78: FFreeVar var_E4 = "": var_160 = ""
  loc_B9CD81: FLdRfVar var_A8
  loc_B9CD84: CDargRef
  loc_B9CD88: LitVarI4
  loc_B9CD90: PopAdLdVar
  loc_B9CD91: FLdPr var_8C
  loc_B9CD94: LateIdCallLdVar
  loc_B9CD9E: CStrVarTmp
  loc_B9CD9F: FStStrNoPop var_120
  loc_B9CDA2: CI4Str
  loc_B9CDA3: FStR4 var_B8
  loc_B9CDA6: FFree1Str var_120
  loc_B9CDA9: FFree1Var var_E4 = ""
  loc_B9CDAC: FLdRfVar var_A8
  loc_B9CDAF: CDargRef
  loc_B9CDB3: LitVarI4
  loc_B9CDBB: PopAdLdVar
  loc_B9CDBC: FLdPr var_8C
  loc_B9CDBF: LateIdCallLdVar
  loc_B9CDC9: CStrVarTmp
  loc_B9CDCA: FStStrNoPop var_120
  loc_B9CDCD: CR8Str
  loc_B9CDCF: FStFPR8 var_C0
  loc_B9CDD2: FFree1Str var_120
  loc_B9CDD5: FFree1Var var_E4 = ""
  loc_B9CDD8: FLdRfVar var_A8
  loc_B9CDDB: CDargRef
  loc_B9CDDF: LitVarI4
  loc_B9CDE7: PopAdLdVar
  loc_B9CDE8: FLdPr var_8C
  loc_B9CDEB: LateIdCallLdVar
  loc_B9CDF5: PopAd
  loc_B9CDF7: LitI4 1
  loc_B9CDFC: LitI4 1
  loc_B9CE01: LitVarStr var_130, "'yyyy-mm-dd'"
  loc_B9CE06: FStVarCopyObj var_184
  loc_B9CE09: FLdRfVar var_184
  loc_B9CE0C: FLdRfVar var_E4
  loc_B9CE0F: CStrVarTmp
  loc_B9CE10: CVarStr var_160
  loc_B9CE13: FLdRfVar var_198
  loc_B9CE16: ImpAdCallFPR4  = Format(, )
  loc_B9CE1B: FLdRfVar var_198
  loc_B9CE1E: CStrVarTmp
  loc_B9CE1F: FStStr var_C4
  loc_B9CE22: FFreeVar var_E4 = "": var_160 = "": var_184 = ""
  loc_B9CE2D: FLdRfVar var_A8
  loc_B9CE30: CDargRef
  loc_B9CE34: LitVarI4
  loc_B9CE3C: PopAdLdVar
  loc_B9CE3D: FLdPr var_8C
  loc_B9CE40: LateIdCallLdVar
  loc_B9CE4A: CStrVarTmp
  loc_B9CE4B: FStStr var_C8
  loc_B9CE4E: FFree1Var var_E4 = ""
  loc_B9CE51: FLdRfVar var_A8
  loc_B9CE54: CDargRef
  loc_B9CE58: LitVarI4
  loc_B9CE60: PopAdLdVar
  loc_B9CE61: FLdPr var_8C
  loc_B9CE64: LateIdCallLdVar
  loc_B9CE6E: CStrVarTmp
  loc_B9CE6F: FStStr var_19C
  loc_B9CE72: FFree1Var var_E4 = ""
  loc_B9CE75: ILdRf var_19C
  loc_B9CE78: LitStr vbNullString
  loc_B9CE7B: EqStr
  loc_B9CE7D: BranchF loc_B9CE8B
  loc_B9CE80: LitI2_Byte 0
  loc_B9CE82: CUI1I2
  loc_B9CE84: FStUI1 var_CA
  loc_B9CE88: Branch loc_B9CEE0
  loc_B9CE8B: ILdRf var_19C
  loc_B9CE8E: LitStr "Manual"
  loc_B9CE91: EqStr
  loc_B9CE93: BranchF loc_B9CEA1
  loc_B9CE96: LitI2_Byte 1
  loc_B9CE98: CUI1I2
  loc_B9CE9A: FStUI1 var_CA
  loc_B9CE9E: Branch loc_B9CEE0
  loc_B9CEA1: ILdRf var_19C
  loc_B9CEA4: LitStr "Impreso"
  loc_B9CEA7: EqStr
  loc_B9CEA9: BranchF loc_B9CEB7
  loc_B9CEAC: LitI2_Byte 2
  loc_B9CEAE: CUI1I2
  loc_B9CEB0: FStUI1 var_CA
  loc_B9CEB4: Branch loc_B9CEE0
  loc_B9CEB7: ILdRf var_19C
  loc_B9CEBA: LitStr "Transferencia"
  loc_B9CEBD: EqStr
  loc_B9CEBF: BranchF loc_B9CECD
  loc_B9CEC2: LitI2_Byte 3
  loc_B9CEC4: CUI1I2
  loc_B9CEC6: FStUI1 var_CA
  loc_B9CECA: Branch loc_B9CEE0
  loc_B9CECD: ILdRf var_19C
  loc_B9CED0: LitStr "eCheq"
  loc_B9CED3: EqStr
  loc_B9CED5: BranchF loc_B9CEE0
  loc_B9CED8: LitI2_Byte 4
  loc_B9CEDA: CUI1I2
  loc_B9CEDC: FStUI1 var_CA
  loc_B9CEE0: ILdRf var_B4
  loc_B9CEE3: LitI4 0
  loc_B9CEE8: NeI4
  loc_B9CEE9: BranchF loc_B9D085
  loc_B9CEEC: ILdRf var_AC
  loc_B9CEEF: LitI4 0
  loc_B9CEF4: GtI4
  loc_B9CEF5: BranchF loc_B9D006
  loc_B9CEF8: LitStr "SELECT *"
  loc_B9CEFB: LitStr " FROM movibanco mb"
  loc_B9CEFE: ConcatStr
  loc_B9CEFF: FStStrNoPop var_120
  loc_B9CF02: LitStr " WHERE mb.IdCheq = "
  loc_B9CF05: ConcatStr
  loc_B9CF06: FStStrNoPop var_164
  loc_B9CF09: ILdRf var_AC
  loc_B9CF0C: CStrI4
  loc_B9CF0E: FStStrNoPop var_188
  loc_B9CF11: ConcatStr
  loc_B9CF12: FStStrNoPop var_1A0
  loc_B9CF15: LitStr ";"
  loc_B9CF18: ConcatStr
  loc_B9CF19: FStStrNoPop var_1A4
  loc_B9CF1C: Call EjecutarRsCls(from_stack_1v)
  loc_B9CF21: FFreeStr var_120 = "": var_164 = "": var_188 = "": var_1A0 = ""
  loc_B9CF2E: FLdRfVar var_1A8
  loc_B9CF31: FLdPr Me
  loc_B9CF34: MemLdPr global_56
  loc_B9CF37:  = Me.RecordCount
  loc_B9CF3C: ILdRf var_1A8
  loc_B9CF3F: LitI4 0
  loc_B9CF44: EqI4
  loc_B9CF45: BranchF loc_B9CFCA
  loc_B9CF48: LitI2_Byte 0
  loc_B9CF4A: FStI2 var_96
  loc_B9CF4D: FLdUI1
  loc_B9CF51: CI2UI1
  loc_B9CF53: LitI2_Byte 0
  loc_B9CF55: EqI2
  loc_B9CF56: BranchF loc_B9CF66
  loc_B9CF59: LitI2_Byte 0
  loc_B9CF5B: FStI2 var_A0
  loc_B9CF5E: LitI2_Byte 0
  loc_B9CF60: FStI2 var_9E
  loc_B9CF63: Branch loc_B9CFC7
  loc_B9CF66: FLdUI1
  loc_B9CF6A: CI2UI1
  loc_B9CF6C: LitI2_Byte 1
  loc_B9CF6E: EqI2
  loc_B9CF6F: BranchF loc_B9CF7F
  loc_B9CF72: LitI2_Byte &HFF
  loc_B9CF74: FStI2 var_A0
  loc_B9CF77: LitI2_Byte 0
  loc_B9CF79: FStI2 var_9E
  loc_B9CF7C: Branch loc_B9CFC7
  loc_B9CF7F: FLdUI1
  loc_B9CF83: CI2UI1
  loc_B9CF85: LitI2_Byte 2
  loc_B9CF87: EqI2
  loc_B9CF88: BranchF loc_B9CF98
  loc_B9CF8B: LitI2_Byte 0
  loc_B9CF8D: FStI2 var_A0
  loc_B9CF90: LitI2_Byte 0
  loc_B9CF92: FStI2 var_9E
  loc_B9CF95: Branch loc_B9CFC7
  loc_B9CF98: FLdUI1
  loc_B9CF9C: CI2UI1
  loc_B9CF9E: LitI2_Byte 3
  loc_B9CFA0: EqI2
  loc_B9CFA1: BranchF loc_B9CFB1
  loc_B9CFA4: LitI2_Byte 0
  loc_B9CFA6: FStI2 var_A0
  loc_B9CFA9: LitI2_Byte 0
  loc_B9CFAB: FStI2 var_9E
  loc_B9CFAE: Branch loc_B9CFC7
  loc_B9CFB1: FLdUI1
  loc_B9CFB5: CI2UI1
  loc_B9CFB7: LitI2_Byte 4
  loc_B9CFB9: EqI2
  loc_B9CFBA: BranchF loc_B9CFC7
  loc_B9CFBD: LitI2_Byte &HFF
  loc_B9CFBF: FStI2 var_A0
  loc_B9CFC2: LitI2_Byte 0
  loc_B9CFC4: FStI2 var_9E
  loc_B9CFC7: Branch loc_B9D003
  loc_B9CFCA: FLdRfVar var_1A8
  loc_B9CFCD: FLdPr Me
  loc_B9CFD0: MemLdPr global_56
  loc_B9CFD3:  = Me.RecordCount
  loc_B9CFD8: ILdRf var_1A8
  loc_B9CFDB: LitI4 1
  loc_B9CFE0: EqI4
  loc_B9CFE1: BranchF loc_B9D000
  loc_B9CFE4: LitI2_Byte &HFF
  loc_B9CFE6: FStI2 var_96
  loc_B9CFE9: LitI2_Byte 0
  loc_B9CFEB: FStI2 var_A0
  loc_B9CFEE: LitI2_Byte &HFF
  loc_B9CFF0: FStI2 var_9E
  loc_B9CFF3: LitI2_Byte 0
  loc_B9CFF5: FStI2 var_9A
  loc_B9CFF8: LitI2_Byte &HFF
  loc_B9CFFA: FStI2 var_98
  loc_B9CFFD: Branch loc_B9D003
  loc_B9D000: Branch loc_B9DA7B
  loc_B9D003: Branch loc_B9D085
  loc_B9D006: LitI2_Byte 0
  loc_B9D008: FStI2 var_96
  loc_B9D00B: FLdUI1
  loc_B9D00F: CI2UI1
  loc_B9D011: LitI2_Byte 0
  loc_B9D013: EqI2
  loc_B9D014: BranchF loc_B9D024
  loc_B9D017: LitI2_Byte 0
  loc_B9D019: FStI2 var_A0
  loc_B9D01C: LitI2_Byte 0
  loc_B9D01E: FStI2 var_9E
  loc_B9D021: Branch loc_B9D085
  loc_B9D024: FLdUI1
  loc_B9D028: CI2UI1
  loc_B9D02A: LitI2_Byte 1
  loc_B9D02C: EqI2
  loc_B9D02D: BranchF loc_B9D03D
  loc_B9D030: LitI2_Byte &HFF
  loc_B9D032: FStI2 var_A0
  loc_B9D035: LitI2_Byte 0
  loc_B9D037: FStI2 var_9E
  loc_B9D03A: Branch loc_B9D085
  loc_B9D03D: FLdUI1
  loc_B9D041: CI2UI1
  loc_B9D043: LitI2_Byte 2
  loc_B9D045: EqI2
  loc_B9D046: BranchF loc_B9D056
  loc_B9D049: LitI2_Byte 0
  loc_B9D04B: FStI2 var_A0
  loc_B9D04E: LitI2_Byte 0
  loc_B9D050: FStI2 var_9E
  loc_B9D053: Branch loc_B9D085
  loc_B9D056: FLdUI1
  loc_B9D05A: CI2UI1
  loc_B9D05C: LitI2_Byte 3
  loc_B9D05E: EqI2
  loc_B9D05F: BranchF loc_B9D06F
  loc_B9D062: LitI2_Byte 0
  loc_B9D064: FStI2 var_A0
  loc_B9D067: LitI2_Byte 0
  loc_B9D069: FStI2 var_9E
  loc_B9D06C: Branch loc_B9D085
  loc_B9D06F: FLdUI1
  loc_B9D073: CI2UI1
  loc_B9D075: LitI2_Byte 4
  loc_B9D077: EqI2
  loc_B9D078: BranchF loc_B9D085
  loc_B9D07B: LitI2_Byte &HFF
  loc_B9D07D: FStI2 var_A0
  loc_B9D080: LitI2_Byte 0
  loc_B9D082: FStI2 var_9E
  loc_B9D085: LitStr "SELECT *"
  loc_B9D088: LitStr " FROM cheque"
  loc_B9D08B: ConcatStr
  loc_B9D08C: FStStrNoPop var_120
  loc_B9D08F: LitStr " WHERE cheque.IdCheq = "
  loc_B9D092: ConcatStr
  loc_B9D093: FStStrNoPop var_164
  loc_B9D096: ILdRf var_AC
  loc_B9D099: CStrI4
  loc_B9D09B: FStStrNoPop var_188
  loc_B9D09E: ConcatStr
  loc_B9D09F: FStStrNoPop var_1A0
  loc_B9D0A2: LitStr ";"
  loc_B9D0A5: ConcatStr
  loc_B9D0A6: FStStrNoPop var_1A4
  loc_B9D0A9: Call EjecutarRsCls(from_stack_1v)
  loc_B9D0AE: FFreeStr var_120 = "": var_164 = "": var_188 = "": var_1A0 = ""
  loc_B9D0BB: FLdRfVar var_1A8
  loc_B9D0BE: FLdPr Me
  loc_B9D0C1: MemLdPr global_56
  loc_B9D0C4:  = Me.RecordCount
  loc_B9D0C9: ILdRf var_1A8
  loc_B9D0CC: LitI4 1
  loc_B9D0D1: EqI4
  loc_B9D0D2: BranchF loc_B9D2BA
  loc_B9D0D5: FLdRfVar var_E4
  loc_B9D0D8: FLdRfVar var_1B0
  loc_B9D0DB: LitVarStr var_FC, "ExpeImpu"
  loc_B9D0E0: PopAdLdVar
  loc_B9D0E1: FLdRfVar var_1AC
  loc_B9D0E4: FLdPr Me
  loc_B9D0E7: MemLdPr global_56
  loc_B9D0EA:  = Me.Fields
  loc_B9D0EF: FLdPr var_1AC
  loc_B9D0F2: from_stack_2 = Me.Item(from_stack_1)
  loc_B9D0F7: FLdPr var_1B0
  loc_B9D0FA:  = Me.Value
  loc_B9D0FF: FLdRfVar var_E4
  loc_B9D102: CStrVarTmp
  loc_B9D103: FStStr var_D0
  loc_B9D106: FFreeAd var_1AC = ""
  loc_B9D10D: FFree1Var var_E4 = ""
  loc_B9D110: FLdRfVar var_E4
  loc_B9D113: FLdRfVar var_1B0
  loc_B9D116: LitVarStr var_FC, "NumeLiqu"
  loc_B9D11B: PopAdLdVar
  loc_B9D11C: FLdRfVar var_1AC
  loc_B9D11F: FLdPr Me
  loc_B9D122: MemLdPr global_56
  loc_B9D125:  = Me.Fields
  loc_B9D12A: FLdPr var_1AC
  loc_B9D12D: from_stack_2 = Me.Item(from_stack_1)
  loc_B9D132: FLdPr var_1B0
  loc_B9D135:  = Me.Value
  loc_B9D13A: FLdRfVar var_E4
  loc_B9D13D: CI2Var
  loc_B9D13E: FStI2 var_D2
  loc_B9D141: FFreeAd var_1AC = ""
  loc_B9D148: FFree1Var var_E4 = ""
  loc_B9D14B: FLdRfVar var_E4
  loc_B9D14E: FLdRfVar var_1B0
  loc_B9D151: LitVarStr var_FC, "NumeMoba"
  loc_B9D156: PopAdLdVar
  loc_B9D157: FLdRfVar var_1AC
  loc_B9D15A: FLdPr Me
  loc_B9D15D: MemLdPr global_56
  loc_B9D160:  = Me.Fields
  loc_B9D165: FLdPr var_1AC
  loc_B9D168: from_stack_2 = Me.Item(from_stack_1)
  loc_B9D16D: FLdPr var_1B0
  loc_B9D170:  = Me.Value
  loc_B9D175: FLdRfVar var_E4
  loc_B9D178: FnCLngVar
  loc_B9D17A: LitI4 0
  loc_B9D17F: EqI4
  loc_B9D180: ILdRf var_B8
  loc_B9D183: LitI4 0
  loc_B9D188: GtI4
  loc_B9D189: AndI4
  loc_B9D18A: ILdRf var_B4
  loc_B9D18D: LitI4 0
  loc_B9D192: GtI4
  loc_B9D193: AndI4
  loc_B9D194: FLdRfVar var_160
  loc_B9D197: FLdRfVar var_1B8
  loc_B9D19A: LitVarStr var_10C, "NumeMoba"
  loc_B9D19F: PopAdLdVar
  loc_B9D1A0: FLdRfVar var_1B4
  loc_B9D1A3: FLdPr Me
  loc_B9D1A6: MemLdPr global_56
  loc_B9D1A9:  = Me.Fields
  loc_B9D1AE: FLdPr var_1B4
  loc_B9D1B1: from_stack_2 = Me.Item(from_stack_1)
  loc_B9D1B6: FLdPr var_1B8
  loc_B9D1B9:  = Me.Value
  loc_B9D1BE: FLdRfVar var_160
  loc_B9D1C1: FnCLngVar
  loc_B9D1C3: LitI4 0
  loc_B9D1C8: GtI4
  loc_B9D1C9: FLdRfVar var_184
  loc_B9D1CC: FLdRfVar var_1C0
  loc_B9D1CF: LitVarStr var_11C, "CodiBanc"
  loc_B9D1D4: PopAdLdVar
  loc_B9D1D5: FLdRfVar var_1BC
  loc_B9D1D8: FLdPr Me
  loc_B9D1DB: MemLdPr global_56
  loc_B9D1DE:  = Me.Fields
  loc_B9D1E3: FLdPr var_1BC
  loc_B9D1E6: from_stack_2 = Me.Item(from_stack_1)
  loc_B9D1EB: FLdPr var_1C0
  loc_B9D1EE:  = Me.Value
  loc_B9D1F3: FLdRfVar var_184
  loc_B9D1F6: FnCLngVar
  loc_B9D1F8: ILdRf var_B4
  loc_B9D1FB: NeI4
  loc_B9D1FC: AndI4
  loc_B9D1FD: ILdRf var_B8
  loc_B9D200: LitI4 0
  loc_B9D205: GtI4
  loc_B9D206: AndI4
  loc_B9D207: OrI4
  loc_B9D208: FFreeAd var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = ""
  loc_B9D217: FFreeVar var_E4 = "": var_160 = ""
  loc_B9D220: BranchF loc_B9D283
  loc_B9D223: FLdRfVar var_120
  loc_B9D226: FLdR8 var_C0
  loc_B9D229: ILdRf var_C4
  loc_B9D22C: ILdRf var_B4
  loc_B9D22F: from_stack_4v = ValidaSaldoLibroBanco(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B9D234: ImpAdLdRf MemVar_C3D138
  loc_B9D237: NewIfNullPr frmEmisionCheque
  loc_B9D23A: VCallAd Control_ID_
  loc_B9D23D: FStAdFunc var_1B8
  loc_B9D240: LitNothing
  loc_B9D242: CastAd
  loc_B9D245: FStAdFunc var_1B4
  loc_B9D248: FLdRfVar var_1B4
  loc_B9D24B: FLdZeroAd var_1B8
  loc_B9D24E: FStAdFuncNoPop
  loc_B9D251: CastAd
  loc_B9D254: FStAdFunc var_1B0
  loc_B9D257: FLdRfVar var_1B0
  loc_B9D25A: FLdZeroAd var_120
  loc_B9D25D: PopTmpLdAdStr
  loc_B9D261: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9D266: FStI2 var_8E
  loc_B9D269: FFree1Str var_164
  loc_B9D26C: FFreeAd var_1AC = "": var_1B0 = "": var_1B4 = ""
  loc_B9D277: FLdI2 var_8E
  loc_B9D27A: BranchF loc_B9D280
  loc_B9D27D: Branch loc_B9DA7B
  loc_B9D280: Branch loc_B9D2AD
  loc_B9D283: ILdRf var_B8
  loc_B9D286: LitI4 0
  loc_B9D28B: EqI4
  loc_B9D28C: ILdRf var_B4
  loc_B9D28F: LitI4 0
  loc_B9D294: EqI4
  loc_B9D295: OrI4
  loc_B9D296: BranchF loc_B9D2AD
  loc_B9D299: LitI2_Byte 0
  loc_B9D29B: FStI2 var_8E
  loc_B9D29E: LitI2_Byte &HFF
  loc_B9D2A0: FStI2 var_A2
  loc_B9D2A3: LitI2_Byte 0
  loc_B9D2A5: FStI2 var_A0
  loc_B9D2A8: LitI2_Byte 0
  loc_B9D2AA: FStI2 var_9E
  loc_B9D2AD: LitI2_Byte &HFF
  loc_B9D2AF: FStI2 var_98
  loc_B9D2B2: LitI2_Byte 0
  loc_B9D2B4: FStI2 var_9A
  loc_B9D2B7: Branch loc_B9D3D4
  loc_B9D2BA: LitI2_Byte 0
  loc_B9D2BC: FStI2 var_98
  loc_B9D2BF: LitI2_Byte &HFF
  loc_B9D2C1: FStI2 var_9A
  loc_B9D2C4: FLdRfVar var_120
  loc_B9D2C7: FLdR8 var_C0
  loc_B9D2CA: ILdRf var_C4
  loc_B9D2CD: ILdRf var_B4
  loc_B9D2D0: from_stack_4v = ValidaSaldoLibroBanco(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B9D2D5: ImpAdLdRf MemVar_C3D138
  loc_B9D2D8: NewIfNullPr frmEmisionCheque
  loc_B9D2DB: VCallAd Control_ID_
  loc_B9D2DE: FStAdFunc var_1B8
  loc_B9D2E1: LitNothing
  loc_B9D2E3: CastAd
  loc_B9D2E6: FStAdFunc var_1B4
  loc_B9D2E9: FLdRfVar var_1B4
  loc_B9D2EC: FLdZeroAd var_1B8
  loc_B9D2EF: FStAdFuncNoPop
  loc_B9D2F2: CastAd
  loc_B9D2F5: FStAdFunc var_1B0
  loc_B9D2F8: FLdRfVar var_1B0
  loc_B9D2FB: FLdZeroAd var_120
  loc_B9D2FE: PopTmpLdAdStr
  loc_B9D302: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B9D307: FStI2 var_8E
  loc_B9D30A: FFree1Str var_164
  loc_B9D30D: FFreeAd var_1AC = "": var_1B0 = "": var_1B4 = ""
  loc_B9D318: FLdI2 var_8E
  loc_B9D31B: BranchF loc_B9D321
  loc_B9D31E: Branch loc_B9DA7B
  loc_B9D321: LitStr "SELECT ExpeImpu, NumeLiqu FROM ordenpago WHERE PeriInfo = "
  loc_B9D324: ImpAdLdI2 MemVar_C3D064
  loc_B9D327: CStrUI1
  loc_B9D329: FStStrNoPop var_120
  loc_B9D32C: ConcatStr
  loc_B9D32D: FStStrNoPop var_164
  loc_B9D330: LitStr " AND NumeOrpa = "
  loc_B9D333: ConcatStr
  loc_B9D334: FStStrNoPop var_188
  loc_B9D337: ILdRf NumeOrpa
  loc_B9D33A: CStrI4
  loc_B9D33C: FStStrNoPop var_1A0
  loc_B9D33F: ConcatStr
  loc_B9D340: FStStrNoPop var_1A4
  loc_B9D343: LitStr ";"
  loc_B9D346: ConcatStr
  loc_B9D347: FStStrNoPop var_1C4
  loc_B9D34A: Call EjecutarRsCls(from_stack_1v)
  loc_B9D34F: FFreeStr var_120 = "": var_164 = "": var_188 = "": var_1A0 = "": var_1A4 = ""
  loc_B9D35E: FLdRfVar var_E4
  loc_B9D361: FLdRfVar var_1B0
  loc_B9D364: LitVarStr var_FC, "ExpeImpu"
  loc_B9D369: PopAdLdVar
  loc_B9D36A: FLdRfVar var_1AC
  loc_B9D36D: FLdPr Me
  loc_B9D370: MemLdPr global_56
  loc_B9D373:  = frmEmisionCheque.Recordset15.Fields
  loc_B9D378: FLdPr var_1AC
  loc_B9D37B: from_stack_2 = Me.Item(from_stack_1)
  loc_B9D380: FLdPr var_1B0
  loc_B9D383:  = Me.Value
  loc_B9D388: FLdRfVar var_E4
  loc_B9D38B: CStrVarTmp
  loc_B9D38C: FStStr var_D0
  loc_B9D38F: FFreeAd var_1AC = ""
  loc_B9D396: FFree1Var var_E4 = ""
  loc_B9D399: FLdRfVar var_E4
  loc_B9D39C: FLdRfVar var_1B0
  loc_B9D39F: LitVarStr var_FC, "NumeLiqu"
  loc_B9D3A4: PopAdLdVar
  loc_B9D3A5: FLdRfVar var_1AC
  loc_B9D3A8: FLdPr Me
  loc_B9D3AB: MemLdPr global_56
  loc_B9D3AE:  = Me.Fields
  loc_B9D3B3: FLdPr var_1AC
  loc_B9D3B6: from_stack_2 = Me.Item(from_stack_1)
  loc_B9D3BB: FLdPr var_1B0
  loc_B9D3BE:  = Me.Value
  loc_B9D3C3: FLdRfVar var_E4
  loc_B9D3C6: CI2Var
  loc_B9D3C7: FStI2 var_D2
  loc_B9D3CA: FFreeAd var_1AC = ""
  loc_B9D3D1: FFree1Var var_E4 = ""
  loc_B9D3D4: FLdI2 var_98
  loc_B9D3D7: LitI2_Byte &HFF
  loc_B9D3D9: EqI2
  loc_B9D3DA: FLdI2 var_9A
  loc_B9D3DD: LitI2_Byte &HFF
  loc_B9D3DF: EqI2
  loc_B9D3E0: AndI4
  loc_B9D3E1: FLdI2 var_9E
  loc_B9D3E4: LitI2_Byte &HFF
  loc_B9D3E6: EqI2
  loc_B9D3E7: FLdI2 var_A0
  loc_B9D3EA: LitI2_Byte &HFF
  loc_B9D3EC: EqI2
  loc_B9D3ED: AndI4
  loc_B9D3EE: OrI4
  loc_B9D3EF: BranchF loc_B9D3F5
  loc_B9D3F2: Branch loc_B9DA7B
  loc_B9D3F5: FLdI2 var_98
  loc_B9D3F8: BranchF loc_B9D4E4
  loc_B9D3FB: ILdRf AddNew_Grid
  loc_B9D3FE: LitStr "UPDATE cheque"
  loc_B9D401: ConcatStr
  loc_B9D402: FStStrNoPop var_120
  loc_B9D405: LitStr " SET CodiBanc = "
  loc_B9D408: ConcatStr
  loc_B9D409: FStStrNoPop var_164
  loc_B9D40C: ILdRf var_B4
  loc_B9D40F: CStrI4
  loc_B9D411: FStStrNoPop var_188
  loc_B9D414: ConcatStr
  loc_B9D415: FStStrNoPop var_1A0
  loc_B9D418: LitStr ", NumeMoba = "
  loc_B9D41B: ConcatStr
  loc_B9D41C: FStStrNoPop var_1A4
  loc_B9D41F: ILdRf var_B8
  loc_B9D422: CStrI4
  loc_B9D424: FStStrNoPop var_1C4
  loc_B9D427: ConcatStr
  loc_B9D428: FStStrNoPop var_1C8
  loc_B9D42B: LitStr ", FechCheq = "
  loc_B9D42E: ConcatStr
  loc_B9D42F: FStStrNoPop var_1CC
  loc_B9D432: ILdRf var_C4
  loc_B9D435: ConcatStr
  loc_B9D436: FStStrNoPop var_1D0
  loc_B9D439: LitStr ", ImpoCheq = "
  loc_B9D43C: ConcatStr
  loc_B9D43D: FStStrNoPop var_1D8
  loc_B9D440: FLdFPR8 var_C0
  loc_B9D443: CStrR8
  loc_B9D445: FStStrNoPop var_1D4
  loc_B9D448: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B9D44D: FStStrNoPop var_1DC
  loc_B9D450: ConcatStr
  loc_B9D451: FStStrNoPop var_1E0
  loc_B9D454: LitStr " , AutoCheq = "
  loc_B9D457: ConcatStr
  loc_B9D458: FStStrNoPop var_1E4
  loc_B9D45B: FLdUI1
  loc_B9D45F: CStrI2
  loc_B9D461: FStStrNoPop var_1E8
  loc_B9D464: ConcatStr
  loc_B9D465: FStStrNoPop var_1EC
  loc_B9D468: LitStr " , OrdeCheq = '"
  loc_B9D46B: ConcatStr
  loc_B9D46C: FStStrNoPop var_1F0
  loc_B9D46F: ILdRf var_C8
  loc_B9D472: ConcatStr
  loc_B9D473: FStStrNoPop var_1F4
  loc_B9D476: LitStr "'"
  loc_B9D479: ConcatStr
  loc_B9D47A: FStStrNoPop var_1F8
  loc_B9D47D: LitStr " , ModiUsua = '"
  loc_B9D480: ConcatStr
  loc_B9D481: FStStrNoPop var_1FC
  loc_B9D484: ImpAdLdI4 MemVar_C3D03C
  loc_B9D487: ConcatStr
  loc_B9D488: FStStrNoPop var_200
  loc_B9D48B: LitStr "', ModiFeho = Now()"
  loc_B9D48E: ConcatStr
  loc_B9D48F: FStStrNoPop var_204
  loc_B9D492: LitStr " WHERE IdCheq = "
  loc_B9D495: ConcatStr
  loc_B9D496: FStStrNoPop var_208
  loc_B9D499: ILdRf var_AC
  loc_B9D49C: CStrI4
  loc_B9D49E: FStStrNoPop var_20C
  loc_B9D4A1: ConcatStr
  loc_B9D4A2: FStStrNoPop var_210
  loc_B9D4A5: LitStr ";"
  loc_B9D4A8: ConcatStr
  loc_B9D4A9: FStStr AddNew_Grid
  loc_B9D4AC: FFreeStr var_120 = "": var_164 = "": var_188 = "": var_1A0 = "": var_1A4 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = ""
  loc_B9D4E1: Branch loc_B9D644
  loc_B9D4E4: FLdI2 var_9A
  loc_B9D4E7: BranchF loc_B9D63E
  loc_B9D4EA: ILdRf AddNew_Grid
  loc_B9D4ED: LitStr "INSERT INTO cheque (ExpeImpu,NumeLiqu,CucuPers,CodiBanc,NumeMoba,ImpoCheq,PeriInfo,NumeOrpa,FechCheq,OrdeCheq,DetaCheq,AutoCheq,AltaUsua) "
  loc_B9D4F0: ConcatStr
  loc_B9D4F1: FStStrNoPop var_120
  loc_B9D4F4: LitStr " VALUES ('"
  loc_B9D4F7: ConcatStr
  loc_B9D4F8: FStStrNoPop var_164
  loc_B9D4FB: ILdRf var_D0
  loc_B9D4FE: ConcatStr
  loc_B9D4FF: FStStrNoPop var_188
  loc_B9D502: LitStr "',"
  loc_B9D505: ConcatStr
  loc_B9D506: FStStrNoPop var_1A0
  loc_B9D509: FLdI2 var_D2
  loc_B9D50C: CStrUI1
  loc_B9D50E: FStStrNoPop var_1A4
  loc_B9D511: ConcatStr
  loc_B9D512: FStStrNoPop var_1C4
  loc_B9D515: LitStr ",'"
  loc_B9D518: ConcatStr
  loc_B9D519: FStStrNoPop var_1C8
  loc_B9D51C: ILdRf var_B0
  loc_B9D51F: ConcatStr
  loc_B9D520: FStStrNoPop var_1CC
  loc_B9D523: LitStr "',"
  loc_B9D526: ConcatStr
  loc_B9D527: FStStrNoPop var_1D0
  loc_B9D52A: ILdRf var_B4
  loc_B9D52D: CStrI4
  loc_B9D52F: FStStrNoPop var_1D4
  loc_B9D532: ConcatStr
  loc_B9D533: FStStrNoPop var_1D8
  loc_B9D536: LitStr ","
  loc_B9D539: ConcatStr
  loc_B9D53A: FStStrNoPop var_1DC
  loc_B9D53D: ILdRf var_B8
  loc_B9D540: CStrI4
  loc_B9D542: FStStrNoPop var_1E0
  loc_B9D545: ConcatStr
  loc_B9D546: FStStrNoPop var_1E4
  loc_B9D549: LitStr ","
  loc_B9D54C: ConcatStr
  loc_B9D54D: FStStrNoPop var_1EC
  loc_B9D550: FLdFPR8 var_C0
  loc_B9D553: CStrR8
  loc_B9D555: FStStrNoPop var_1E8
  loc_B9D558: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B9D55D: FStStrNoPop var_1F0
  loc_B9D560: ConcatStr
  loc_B9D561: FStStrNoPop var_1F4
  loc_B9D564: LitStr ","
  loc_B9D567: ConcatStr
  loc_B9D568: FStStrNoPop var_1F8
  loc_B9D56B: ImpAdLdI2 MemVar_C3D064
  loc_B9D56E: CStrUI1
  loc_B9D570: FStStrNoPop var_1FC
  loc_B9D573: ConcatStr
  loc_B9D574: FStStrNoPop var_200
  loc_B9D577: LitStr ","
  loc_B9D57A: ConcatStr
  loc_B9D57B: FStStrNoPop var_204
  loc_B9D57E: ILdRf NumeOrpa
  loc_B9D581: CStrI4
  loc_B9D583: FStStrNoPop var_208
  loc_B9D586: ConcatStr
  loc_B9D587: FStStrNoPop var_20C
  loc_B9D58A: LitStr ","
  loc_B9D58D: ConcatStr
  loc_B9D58E: FStStrNoPop var_210
  loc_B9D591: LitI4 1
  loc_B9D596: LitI4 1
  loc_B9D59B: LitVarStr var_10C, "'yyyy-mm-dd'"
  loc_B9D5A0: FStVarCopyObj var_E4
  loc_B9D5A3: FLdRfVar var_E4
  loc_B9D5A6: FLdRfVar var_C4
  loc_B9D5A9: CVarRef
  loc_B9D5AE: ImpAdCallI2 Format$(, )
  loc_B9D5B3: FStStrNoPop var_214
  loc_B9D5B6: ConcatStr
  loc_B9D5B7: FStStrNoPop var_218
  loc_B9D5BA: LitStr ",'"
  loc_B9D5BD: ConcatStr
  loc_B9D5BE: FStStrNoPop var_21C
  loc_B9D5C1: ILdRf var_C8
  loc_B9D5C4: ConcatStr
  loc_B9D5C5: FStStrNoPop var_220
  loc_B9D5C8: LitStr "',0,"
  loc_B9D5CB: ConcatStr
  loc_B9D5CC: FStStrNoPop var_224
  loc_B9D5CF: FLdUI1
  loc_B9D5D3: CStrI2
  loc_B9D5D5: FStStrNoPop var_228
  loc_B9D5D8: ConcatStr
  loc_B9D5D9: FStStrNoPop var_22C
  loc_B9D5DC: LitStr ",'"
  loc_B9D5DF: ConcatStr
  loc_B9D5E0: FStStrNoPop var_230
  loc_B9D5E3: ImpAdLdI4 MemVar_C3D03C
  loc_B9D5E6: ConcatStr
  loc_B9D5E7: FStStrNoPop var_234
  loc_B9D5EA: LitStr "');"
  loc_B9D5ED: ConcatStr
  loc_B9D5EE: FStStr AddNew_Grid
  loc_B9D5F1: FFreeStr var_228 = "": var_22C = "": var_230 = "": var_234 = "": var_120 = "": var_164 = "": var_188 = "": var_1A0 = "": var_1A4 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = "": var_218 = "": var_21C = "": var_220 = ""
  loc_B9D638: FFree1Var var_E4 = ""
  loc_B9D63B: Branch loc_B9D644
  loc_B9D63E: FLdI2 var_9C
  loc_B9D641: BranchF loc_B9D644
  loc_B9D644: FLdI2 var_9E
  loc_B9D647: BranchF loc_B9D6E3
  loc_B9D64A: ILdRf AddNew_Grid
  loc_B9D64D: LitStr "UPDATE movibanco"
  loc_B9D650: ConcatStr
  loc_B9D651: FStStrNoPop var_120
  loc_B9D654: LitStr " SET CodiBanc="
  loc_B9D657: ConcatStr
  loc_B9D658: FStStrNoPop var_164
  loc_B9D65B: ILdRf var_B4
  loc_B9D65E: CStrI4
  loc_B9D660: FStStrNoPop var_188
  loc_B9D663: ConcatStr
  loc_B9D664: FStStrNoPop var_1A0
  loc_B9D667: LitStr ", NumeMoba="
  loc_B9D66A: ConcatStr
  loc_B9D66B: FStStrNoPop var_1A4
  loc_B9D66E: ILdRf var_B8
  loc_B9D671: CStrI4
  loc_B9D673: FStStrNoPop var_1C4
  loc_B9D676: ConcatStr
  loc_B9D677: FStStrNoPop var_1C8
  loc_B9D67A: LitStr ", FechMoba="
  loc_B9D67D: ConcatStr
  loc_B9D67E: FStStrNoPop var_1CC
  loc_B9D681: ILdRf var_C4
  loc_B9D684: ConcatStr
  loc_B9D685: FStStrNoPop var_1D0
  loc_B9D688: LitStr ", HabeMoba="
  loc_B9D68B: ConcatStr
  loc_B9D68C: FStStrNoPop var_1D8
  loc_B9D68F: FLdFPR8 var_C0
  loc_B9D692: CStrR8
  loc_B9D694: FStStrNoPop var_1D4
  loc_B9D697: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B9D69C: FStStrNoPop var_1DC
  loc_B9D69F: ConcatStr
  loc_B9D6A0: FStStrNoPop var_1E0
  loc_B9D6A3: LitStr " WHERE IdCheq = "
  loc_B9D6A6: ConcatStr
  loc_B9D6A7: FStStrNoPop var_1E4
  loc_B9D6AA: ILdRf var_AC
  loc_B9D6AD: CStrI4
  loc_B9D6AF: FStStrNoPop var_1E8
  loc_B9D6B2: ConcatStr
  loc_B9D6B3: FStStrNoPop var_1EC
  loc_B9D6B6: LitStr ";"
  loc_B9D6B9: ConcatStr
  loc_B9D6BA: FStStr AddNew_Grid
  loc_B9D6BD: FFreeStr var_120 = "": var_164 = "": var_188 = "": var_1A0 = "": var_1A4 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = ""
  loc_B9D6E0: Branch loc_B9D9DE
  loc_B9D6E3: FLdI2 var_A0
  loc_B9D6E6: BranchF loc_B9D990
  loc_B9D6E9: FLdI2 var_98
  loc_B9D6EC: BranchF loc_B9D849
  loc_B9D6EF: ILdRf AddNew_Grid
  loc_B9D6F2: LitStr "INSERT INTO movibanco (PeriInfo,IdMoba,CodiBanc,CodiTimb,NumeMoba,FechMoba,FecoMoba,DebeMoba,HabeMoba,DetaMoba,NumeOrpa,IdCheq,AltaUsua)"
  loc_B9D6F5: ConcatStr
  loc_B9D6F6: FStStrNoPop var_120
  loc_B9D6F9: LitStr " VALUES ("
  loc_B9D6FC: ConcatStr
  loc_B9D6FD: FStStrNoPop var_164
  loc_B9D700: ImpAdLdI2 MemVar_C3D064
  loc_B9D703: CStrUI1
  loc_B9D705: FStStrNoPop var_188
  loc_B9D708: ConcatStr
  loc_B9D709: FStStrNoPop var_1A0
  loc_B9D70C: LitStr ",(SELECT IFNULL(MAX(IdMoba),0)+1 FROM movibanco mb2 WHERE mb2.PeriInfo = "
  loc_B9D70F: ConcatStr
  loc_B9D710: FStStrNoPop var_1A4
  loc_B9D713: ImpAdLdI2 MemVar_C3D064
  loc_B9D716: CStrUI1
  loc_B9D718: FStStrNoPop var_1C4
  loc_B9D71B: ConcatStr
  loc_B9D71C: FStStrNoPop var_1C8
  loc_B9D71F: LitStr "), "
  loc_B9D722: ConcatStr
  loc_B9D723: FStStrNoPop var_1CC
  loc_B9D726: ILdRf var_B4
  loc_B9D729: CStrI4
  loc_B9D72B: FStStrNoPop var_1D0
  loc_B9D72E: ConcatStr
  loc_B9D72F: FStStrNoPop var_1D4
  loc_B9D732: LitStr ", 1, "
  loc_B9D735: ConcatStr
  loc_B9D736: FStStrNoPop var_1D8
  loc_B9D739: ILdRf var_B8
  loc_B9D73C: CStrI4
  loc_B9D73E: FStStrNoPop var_1DC
  loc_B9D741: ConcatStr
  loc_B9D742: FStStrNoPop var_1E0
  loc_B9D745: LitStr ", "
  loc_B9D748: ConcatStr
  loc_B9D749: FStStrNoPop var_1E4
  loc_B9D74C: LitI4 1
  loc_B9D751: LitI4 1
  loc_B9D756: LitVarStr var_10C, "'yyyy-mm-dd'"
  loc_B9D75B: FStVarCopyObj var_E4
  loc_B9D75E: FLdRfVar var_E4
  loc_B9D761: FLdRfVar var_C4
  loc_B9D764: CVarRef
  loc_B9D769: ImpAdCallI2 Format$(, )
  loc_B9D76E: FStStrNoPop var_1E8
  loc_B9D771: ConcatStr
  loc_B9D772: FStStrNoPop var_1EC
  loc_B9D775: LitStr ", NULL, 0, "
  loc_B9D778: ConcatStr
  loc_B9D779: FStStrNoPop var_1F4
  loc_B9D77C: FLdFPR8 var_C0
  loc_B9D77F: CStrR8
  loc_B9D781: FStStrNoPop var_1F0
  loc_B9D784: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B9D789: FStStrNoPop var_1F8
  loc_B9D78C: ConcatStr
  loc_B9D78D: FStStrNoPop var_1FC
  loc_B9D790: LitStr ", '"
  loc_B9D793: ConcatStr
  loc_B9D794: FStStrNoPop var_200
  loc_B9D797: ILdRf var_C8
  loc_B9D79A: ConcatStr
  loc_B9D79B: FStStrNoPop var_204
  loc_B9D79E: LitStr " - "
  loc_B9D7A1: ConcatStr
  loc_B9D7A2: FStStrNoPop var_208
  loc_B9D7A5: ILdRf var_D0
  loc_B9D7A8: ConcatStr
  loc_B9D7A9: FStStrNoPop var_20C
  loc_B9D7AC: LitStr "-"
  loc_B9D7AF: ConcatStr
  loc_B9D7B0: FStStrNoPop var_210
  loc_B9D7B3: FLdI2 var_D2
  loc_B9D7B6: CStrUI1
  loc_B9D7B8: FStStrNoPop var_214
  loc_B9D7BB: ConcatStr
  loc_B9D7BC: FStStrNoPop var_218
  loc_B9D7BF: LitStr "', "
  loc_B9D7C2: ConcatStr
  loc_B9D7C3: FStStrNoPop var_21C
  loc_B9D7C6: ILdRf NumeOrpa
  loc_B9D7C9: CStrI4
  loc_B9D7CB: FStStrNoPop var_220
  loc_B9D7CE: ConcatStr
  loc_B9D7CF: FStStrNoPop var_224
  loc_B9D7D2: LitStr ", "
  loc_B9D7D5: ConcatStr
  loc_B9D7D6: FStStrNoPop var_228
  loc_B9D7D9: ILdRf var_AC
  loc_B9D7DC: CStrI4
  loc_B9D7DE: FStStrNoPop var_22C
  loc_B9D7E1: ConcatStr
  loc_B9D7E2: FStStrNoPop var_230
  loc_B9D7E5: LitStr ", '"
  loc_B9D7E8: ConcatStr
  loc_B9D7E9: FStStrNoPop var_234
  loc_B9D7EC: ImpAdLdI4 MemVar_C3D03C
  loc_B9D7EF: ConcatStr
  loc_B9D7F0: FStStrNoPop var_238
  loc_B9D7F3: LitStr "');"
  loc_B9D7F6: ConcatStr
  loc_B9D7F7: FStStr AddNew_Grid
  loc_B9D7FA: FFreeStr var_228 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = "": var_120 = "": var_164 = "": var_188 = "": var_1A0 = "": var_1A4 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = "": var_218 = "": var_21C = "": var_220 = ""
  loc_B9D843: FFree1Var var_E4 = ""
  loc_B9D846: Branch loc_B9D98D
  loc_B9D849: FLdI2 var_9A
  loc_B9D84C: BranchF loc_B9D98D
  loc_B9D84F: ILdRf AddNew_Grid
  loc_B9D852: LitStr "INSERT INTO movibanco (PeriInfo,IdMoba,CodiBanc,CodiTimb,NumeMoba,FechMoba,FecoMoba,DebeMoba,HabeMoba,DetaMoba,NumeOrpa,IdCheq,AltaUsua)"
  loc_B9D855: ConcatStr
  loc_B9D856: FStStrNoPop var_120
  loc_B9D859: LitStr " VALUES ("
  loc_B9D85C: ConcatStr
  loc_B9D85D: FStStrNoPop var_164
  loc_B9D860: ImpAdLdI2 MemVar_C3D064
  loc_B9D863: CStrUI1
  loc_B9D865: FStStrNoPop var_188
  loc_B9D868: ConcatStr
  loc_B9D869: FStStrNoPop var_1A0
  loc_B9D86C: LitStr ",(SELECT IFNULL(MAX(IdMoba),0)+1 FROM movibanco mb2 WHERE mb2.PeriInfo = "
  loc_B9D86F: ConcatStr
  loc_B9D870: FStStrNoPop var_1A4
  loc_B9D873: ImpAdLdI2 MemVar_C3D064
  loc_B9D876: CStrUI1
  loc_B9D878: FStStrNoPop var_1C4
  loc_B9D87B: ConcatStr
  loc_B9D87C: FStStrNoPop var_1C8
  loc_B9D87F: LitStr "), "
  loc_B9D882: ConcatStr
  loc_B9D883: FStStrNoPop var_1CC
  loc_B9D886: ILdRf var_B4
  loc_B9D889: CStrI4
  loc_B9D88B: FStStrNoPop var_1D0
  loc_B9D88E: ConcatStr
  loc_B9D88F: FStStrNoPop var_1D4
  loc_B9D892: LitStr ", 1, "
  loc_B9D895: ConcatStr
  loc_B9D896: FStStrNoPop var_1D8
  loc_B9D899: ILdRf var_B8
  loc_B9D89C: CStrI4
  loc_B9D89E: FStStrNoPop var_1DC
  loc_B9D8A1: ConcatStr
  loc_B9D8A2: FStStrNoPop var_1E0
  loc_B9D8A5: LitStr ", "
  loc_B9D8A8: ConcatStr
  loc_B9D8A9: FStStrNoPop var_1E4
  loc_B9D8AC: LitI4 1
  loc_B9D8B1: LitI4 1
  loc_B9D8B6: LitVarStr var_10C, "'yyyy-mm-dd'"
  loc_B9D8BB: FStVarCopyObj var_E4
  loc_B9D8BE: FLdRfVar var_E4
  loc_B9D8C1: FLdRfVar var_C4
  loc_B9D8C4: CVarRef
  loc_B9D8C9: ImpAdCallI2 Format$(, )
  loc_B9D8CE: FStStrNoPop var_1E8
  loc_B9D8D1: ConcatStr
  loc_B9D8D2: FStStrNoPop var_1EC
  loc_B9D8D5: LitStr ", NULL, 0, "
  loc_B9D8D8: ConcatStr
  loc_B9D8D9: FStStrNoPop var_1F4
  loc_B9D8DC: FLdFPR8 var_C0
  loc_B9D8DF: CStrR8
  loc_B9D8E1: FStStrNoPop var_1F0
  loc_B9D8E4: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B9D8E9: FStStrNoPop var_1F8
  loc_B9D8EC: ConcatStr
  loc_B9D8ED: FStStrNoPop var_1FC
  loc_B9D8F0: LitStr ", '"
  loc_B9D8F3: ConcatStr
  loc_B9D8F4: FStStrNoPop var_200
  loc_B9D8F7: ILdRf var_C8
  loc_B9D8FA: ConcatStr
  loc_B9D8FB: FStStrNoPop var_204
  loc_B9D8FE: LitStr " - "
  loc_B9D901: ConcatStr
  loc_B9D902: FStStrNoPop var_208
  loc_B9D905: ILdRf var_D0
  loc_B9D908: ConcatStr
  loc_B9D909: FStStrNoPop var_20C
  loc_B9D90C: LitStr "-"
  loc_B9D90F: ConcatStr
  loc_B9D910: FStStrNoPop var_210
  loc_B9D913: FLdI2 var_D2
  loc_B9D916: CStrUI1
  loc_B9D918: FStStrNoPop var_214
  loc_B9D91B: ConcatStr
  loc_B9D91C: FStStrNoPop var_218
  loc_B9D91F: LitStr "', "
  loc_B9D922: ConcatStr
  loc_B9D923: FStStrNoPop var_21C
  loc_B9D926: ILdRf NumeOrpa
  loc_B9D929: CStrI4
  loc_B9D92B: FStStrNoPop var_220
  loc_B9D92E: ConcatStr
  loc_B9D92F: FStStrNoPop var_224
  loc_B9D932: LitStr ", LAST_INSERT_ID(), '"
  loc_B9D935: ConcatStr
  loc_B9D936: FStStrNoPop var_228
  loc_B9D939: ImpAdLdI4 MemVar_C3D03C
  loc_B9D93C: ConcatStr
  loc_B9D93D: FStStrNoPop var_22C
  loc_B9D940: LitStr "');"
  loc_B9D943: ConcatStr
  loc_B9D944: FStStr AddNew_Grid
  loc_B9D947: FFreeStr var_228 = "": var_22C = "": var_120 = "": var_164 = "": var_188 = "": var_1A0 = "": var_1A4 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = "": var_218 = "": var_21C = "": var_220 = ""
  loc_B9D98A: FFree1Var var_E4 = ""
  loc_B9D98D: Branch loc_B9D9DE
  loc_B9D990: FLdI2 var_A2
  loc_B9D993: BranchF loc_B9D9DE
  loc_B9D996: ILdRf AddNew_Grid
  loc_B9D999: LitStr "DELETE FROM movibanco"
  loc_B9D99C: ConcatStr
  loc_B9D99D: FStStrNoPop var_120
  loc_B9D9A0: LitStr " WHERE PeriInfo = "
  loc_B9D9A3: ConcatStr
  loc_B9D9A4: FStStrNoPop var_164
  loc_B9D9A7: ImpAdLdI2 MemVar_C3D064
  loc_B9D9AA: CStrUI1
  loc_B9D9AC: FStStrNoPop var_188
  loc_B9D9AF: ConcatStr
  loc_B9D9B0: FStStrNoPop var_1A0
  loc_B9D9B3: LitStr " AND CodiTimb <= 4 AND IdCheq = "
  loc_B9D9B6: ConcatStr
  loc_B9D9B7: FStStrNoPop var_1A4
  loc_B9D9BA: ILdRf var_AC
  loc_B9D9BD: CStrI4
  loc_B9D9BF: FStStrNoPop var_1C4
  loc_B9D9C2: ConcatStr
  loc_B9D9C3: FStStrNoPop var_1C8
  loc_B9D9C6: LitStr ";"
  loc_B9D9C9: ConcatStr
  loc_B9D9CA: FStStr AddNew_Grid
  loc_B9D9CD: FFreeStr var_120 = "": var_164 = "": var_188 = "": var_1A0 = "": var_1A4 = "": var_1C4 = ""
  loc_B9D9DE: FLdUI1
  loc_B9D9E2: CI2UI1
  loc_B9D9E4: LitI2_Byte 2
  loc_B9D9E6: EqI2
  loc_B9D9E7: ILdRf var_B8
  loc_B9D9EA: LitI4 0
  loc_B9D9EF: GtI4
  loc_B9D9F0: AndI4
  loc_B9D9F1: ILdRf var_B4
  loc_B9D9F4: LitI4 0
  loc_B9D9F9: GtI4
  loc_B9D9FA: AndI4
  loc_B9D9FB: BranchF loc_B9DA56
  loc_B9D9FE: ILdRf AddNew_Grid
  loc_B9DA01: LitStr "UPDATE banco SET UlchBanc = "
  loc_B9DA04: ConcatStr
  loc_B9DA05: FStStrNoPop var_120
  loc_B9DA08: ILdRf var_B8
  loc_B9DA0B: CStrI4
  loc_B9DA0D: FStStrNoPop var_164
  loc_B9DA10: ConcatStr
  loc_B9DA11: FStStrNoPop var_188
  loc_B9DA14: LitStr " WHERE PeriInfo = "
  loc_B9DA17: ConcatStr
  loc_B9DA18: FStStrNoPop var_1A0
  loc_B9DA1B: ImpAdLdI2 MemVar_C3D064
  loc_B9DA1E: CStrUI1
  loc_B9DA20: FStStrNoPop var_1A4
  loc_B9DA23: ConcatStr
  loc_B9DA24: FStStrNoPop var_1C4
  loc_B9DA27: LitStr " AND CodiBanc = "
  loc_B9DA2A: ConcatStr
  loc_B9DA2B: FStStrNoPop var_1C8
  loc_B9DA2E: ILdRf var_B4
  loc_B9DA31: CStrI4
  loc_B9DA33: FStStrNoPop var_1CC
  loc_B9DA36: ConcatStr
  loc_B9DA37: FStStrNoPop var_1D0
  loc_B9DA3A: LitStr ";"
  loc_B9DA3D: ConcatStr
  loc_B9DA3E: FStStr AddNew_Grid
  loc_B9DA41: FFreeStr var_120 = "": var_164 = "": var_188 = "": var_1A0 = "": var_1A4 = "": var_1C4 = "": var_1C8 = "": var_1CC = ""
  loc_B9DA56: FLdRfVar var_A8
  loc_B9DA59: NextI4 var_EC, loc_B9CC5B
  loc_B9DA5E: ILdRf AddNew_Grid
  loc_B9DA61: LitStr "COMMIT;"
  loc_B9DA64: ConcatStr
  loc_B9DA65: FStStr AddNew_Grid
  loc_B9DA68: ILdRf AddNew_Grid
  loc_B9DA6B: Call EjecutarRsCls(from_stack_1v)
  loc_B9DA70: LitI2_Byte &HFF
  loc_B9DA72: FStI2 var_86
  loc_B9DA75: ExitProcCbHresult
  loc_B9DA7B: LitStr "RollBack;"
  loc_B9DA7E: Call EjecutarRsCls(from_stack_1v)
  loc_B9DA83: LitI4 0
  loc_B9DA88: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B9DA8B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9DA90: ExitProcCbHresult
  loc_B9DA96: CStrVarTmp
End Function

Public Function AddNew_ChunOrpa(IdCheq, CucuPers, CodiBanc, NumeMoba, ImpoCheq, FechCheq, NumeOrpa, OrdeCheq, AutoCheq) 'B5EC68
  'Data Table: 4263DC
  loc_B5E208: ILdRf IdCheq
  loc_B5E20B: FStStrCopy var_8C
  loc_B5E20E: ILdRf CucuPers
  loc_B5E211: FStStrCopy var_90
  loc_B5E214: ILdRf NumeOrpa
  loc_B5E217: FStStrCopy AddNew_ChunOrpa
  loc_B5E21A: ILdRf AutoCheq
  loc_B5E21D: FStStrCopy var_98
  loc_B5E220: OnErrorGoto loc_B5EC4D
  loc_B5E223: LitStr "START TRANSACTION;"
  loc_B5E226: FStStrCopy var_A0
  loc_B5E229: ILdRf var_8C
  loc_B5E22C: LitStr vbNullString
  loc_B5E22F: NeStr
  loc_B5E231: BranchF loc_B5E34C
  loc_B5E234: LitStr "SELECT *"
  loc_B5E237: LitStr " FROM movibanco mb"
  loc_B5E23A: ConcatStr
  loc_B5E23B: FStStrNoPop var_BC
  loc_B5E23E: LitStr " WHERE mb.IdCheq IN ("
  loc_B5E241: ConcatStr
  loc_B5E242: FStStrNoPop var_C0
  loc_B5E245: ILdRf var_8C
  loc_B5E248: ConcatStr
  loc_B5E249: FStStrNoPop var_C4
  loc_B5E24C: LitStr ");"
  loc_B5E24F: ConcatStr
  loc_B5E250: FStStrNoPop var_C8
  loc_B5E253: Call EjecutarRsCls(from_stack_1v)
  loc_B5E258: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B5E263: FLdRfVar var_CC
  loc_B5E266: FLdPr Me
  loc_B5E269: MemLdPr global_56
  loc_B5E26C:  = Me.RecordCount
  loc_B5E271: ILdRf var_CC
  loc_B5E274: LitI4 0
  loc_B5E279: EqI4
  loc_B5E27A: BranchF loc_B5E310
  loc_B5E27D: LitI2_Byte 0
  loc_B5E27F: FStI2 var_A2
  loc_B5E282: FLdUI1
  loc_B5E286: CI2UI1
  loc_B5E288: LitI2_Byte 0
  loc_B5E28A: EqI2
  loc_B5E28B: BranchF loc_B5E29B
  loc_B5E28E: LitI2_Byte 0
  loc_B5E290: FStI2 var_AC
  loc_B5E293: LitI2_Byte 0
  loc_B5E295: FStI2 var_AA
  loc_B5E298: Branch loc_B5E30D
  loc_B5E29B: FLdUI1
  loc_B5E29F: CI2UI1
  loc_B5E2A1: LitI2_Byte 1
  loc_B5E2A3: EqI2
  loc_B5E2A4: BranchF loc_B5E2B4
  loc_B5E2A7: LitI2_Byte &HFF
  loc_B5E2A9: FStI2 var_AC
  loc_B5E2AC: LitI2_Byte 0
  loc_B5E2AE: FStI2 var_AA
  loc_B5E2B1: Branch loc_B5E30D
  loc_B5E2B4: FLdUI1
  loc_B5E2B8: CI2UI1
  loc_B5E2BA: LitI2_Byte 2
  loc_B5E2BC: EqI2
  loc_B5E2BD: BranchF loc_B5E2F7
  loc_B5E2C0: LitVar_TRUE var_11C
  loc_B5E2C3: LitVar_FALSE
  loc_B5E2C7: ILdRf NumeMoba
  loc_B5E2CA: LitI4 0
  loc_B5E2CF: EqI4
  loc_B5E2D0: CVarBoolI2 var_DC
  loc_B5E2D4: FLdRfVar var_12C
  loc_B5E2D7: ImpAdCallFPR4  = IIf(, , )
  loc_B5E2DC: FLdRfVar var_12C
  loc_B5E2DF: CBoolVar
  loc_B5E2E1: FStI2 var_AC
  loc_B5E2E4: FFreeVar var_DC = "": var_FC = "": var_11C = ""
  loc_B5E2EF: LitI2_Byte 0
  loc_B5E2F1: FStI2 var_AA
  loc_B5E2F4: Branch loc_B5E30D
  loc_B5E2F7: FLdUI1
  loc_B5E2FB: CI2UI1
  loc_B5E2FD: LitI2_Byte 3
  loc_B5E2FF: EqI2
  loc_B5E300: BranchF loc_B5E30D
  loc_B5E303: LitI2_Byte 0
  loc_B5E305: FStI2 var_AC
  loc_B5E308: LitI2_Byte 0
  loc_B5E30A: FStI2 var_AA
  loc_B5E30D: Branch loc_B5E349
  loc_B5E310: FLdRfVar var_CC
  loc_B5E313: FLdPr Me
  loc_B5E316: MemLdPr global_56
  loc_B5E319:  = Me.RecordCount
  loc_B5E31E: ILdRf var_CC
  loc_B5E321: LitI4 1
  loc_B5E326: EqI4
  loc_B5E327: BranchF loc_B5E346
  loc_B5E32A: LitI2_Byte &HFF
  loc_B5E32C: FStI2 var_A2
  loc_B5E32F: LitI2_Byte 0
  loc_B5E331: FStI2 var_AC
  loc_B5E334: LitI2_Byte &HFF
  loc_B5E336: FStI2 var_AA
  loc_B5E339: LitI2_Byte 0
  loc_B5E33B: FStI2 var_A6
  loc_B5E33E: LitI2_Byte &HFF
  loc_B5E340: FStI2 var_A4
  loc_B5E343: Branch loc_B5E349
  loc_B5E346: Branch loc_B5EC4D
  loc_B5E349: Branch loc_B5E3B2
  loc_B5E34C: LitI2_Byte 0
  loc_B5E34E: FStI2 var_A2
  loc_B5E351: FLdUI1
  loc_B5E355: CI2UI1
  loc_B5E357: LitI2_Byte 0
  loc_B5E359: EqI2
  loc_B5E35A: BranchF loc_B5E36A
  loc_B5E35D: LitI2_Byte 0
  loc_B5E35F: FStI2 var_AC
  loc_B5E362: LitI2_Byte 0
  loc_B5E364: FStI2 var_AA
  loc_B5E367: Branch loc_B5E3B2
  loc_B5E36A: FLdUI1
  loc_B5E36E: CI2UI1
  loc_B5E370: LitI2_Byte 1
  loc_B5E372: EqI2
  loc_B5E373: BranchF loc_B5E383
  loc_B5E376: LitI2_Byte &HFF
  loc_B5E378: FStI2 var_AC
  loc_B5E37B: LitI2_Byte 0
  loc_B5E37D: FStI2 var_AA
  loc_B5E380: Branch loc_B5E3B2
  loc_B5E383: FLdUI1
  loc_B5E387: CI2UI1
  loc_B5E389: LitI2_Byte 2
  loc_B5E38B: EqI2
  loc_B5E38C: BranchF loc_B5E39C
  loc_B5E38F: LitI2_Byte 0
  loc_B5E391: FStI2 var_AC
  loc_B5E394: LitI2_Byte 0
  loc_B5E396: FStI2 var_AA
  loc_B5E399: Branch loc_B5E3B2
  loc_B5E39C: FLdUI1
  loc_B5E3A0: CI2UI1
  loc_B5E3A2: LitI2_Byte 3
  loc_B5E3A4: EqI2
  loc_B5E3A5: BranchF loc_B5E3B2
  loc_B5E3A8: LitI2_Byte 0
  loc_B5E3AA: FStI2 var_AC
  loc_B5E3AD: LitI2_Byte 0
  loc_B5E3AF: FStI2 var_AA
  loc_B5E3B2: LitStr "SELECT *"
  loc_B5E3B5: LitStr " FROM cheque"
  loc_B5E3B8: ConcatStr
  loc_B5E3B9: FStStrNoPop var_BC
  loc_B5E3BC: LitStr " WHERE cheque.IdCheq IN ("
  loc_B5E3BF: ConcatStr
  loc_B5E3C0: FStStrNoPop var_C0
  loc_B5E3C3: ILdRf var_8C
  loc_B5E3C6: ConcatStr
  loc_B5E3C7: FStStrNoPop var_C4
  loc_B5E3CA: LitStr ");"
  loc_B5E3CD: ConcatStr
  loc_B5E3CE: FStStrNoPop var_C8
  loc_B5E3D1: Call EjecutarRsCls(from_stack_1v)
  loc_B5E3D6: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B5E3E1: FLdRfVar var_CC
  loc_B5E3E4: FLdPr Me
  loc_B5E3E7: MemLdPr global_56
  loc_B5E3EA:  = Me.RecordCount
  loc_B5E3EF: ILdRf var_CC
  loc_B5E3F2: LitI4 0
  loc_B5E3F7: GtI4
  loc_B5E3F8: BranchF loc_B5E4A3
  loc_B5E3FB: FLdRfVar var_FC
  loc_B5E3FE: FLdRfVar var_134
  loc_B5E401: LitVarStr var_DC, "ExpeImpu"
  loc_B5E406: PopAdLdVar
  loc_B5E407: FLdRfVar var_130
  loc_B5E40A: FLdPr Me
  loc_B5E40D: MemLdPr global_56
  loc_B5E410:  = Me.Fields
  loc_B5E415: FLdPr var_130
  loc_B5E418: from_stack_2 = Me.Item(from_stack_1)
  loc_B5E41D: FLdPr var_134
  loc_B5E420:  = Me.Value
  loc_B5E425: FLdRfVar var_FC
  loc_B5E428: CStrVarTmp
  loc_B5E429: FStStr var_B4
  loc_B5E42C: FFreeAd var_130 = ""
  loc_B5E433: FFree1Var var_FC = ""
  loc_B5E436: FLdRfVar var_FC
  loc_B5E439: FLdRfVar var_134
  loc_B5E43C: LitVarStr var_DC, "NumeLiqu"
  loc_B5E441: PopAdLdVar
  loc_B5E442: FLdRfVar var_130
  loc_B5E445: FLdPr Me
  loc_B5E448: MemLdPr global_56
  loc_B5E44B:  = Me.Fields
  loc_B5E450: FLdPr var_130
  loc_B5E453: from_stack_2 = Me.Item(from_stack_1)
  loc_B5E458: FLdPr var_134
  loc_B5E45B:  = Me.Value
  loc_B5E460: FLdRfVar var_FC
  loc_B5E463: CI2Var
  loc_B5E464: FStI2 var_B6
  loc_B5E467: FFreeAd var_130 = ""
  loc_B5E46E: FFree1Var var_FC = ""
  loc_B5E471: ILdRf NumeMoba
  loc_B5E474: LitI4 0
  loc_B5E479: EqI4
  loc_B5E47A: BranchF loc_B5E491
  loc_B5E47D: LitI2_Byte 0
  loc_B5E47F: FStI2 var_9A
  loc_B5E482: LitI2_Byte &HFF
  loc_B5E484: FStI2 var_AE
  loc_B5E487: LitI2_Byte 0
  loc_B5E489: FStI2 var_AC
  loc_B5E48C: LitI2_Byte 0
  loc_B5E48E: FStI2 var_AA
  loc_B5E491: LitI2_Byte &HFF
  loc_B5E493: FStI2 var_A8
  loc_B5E496: LitI2_Byte 0
  loc_B5E498: FStI2 var_A4
  loc_B5E49B: LitI2_Byte 0
  loc_B5E49D: FStI2 var_A6
  loc_B5E4A0: Branch loc_B5E4A6
  loc_B5E4A3: Branch loc_B5EC4D
  loc_B5E4A6: FLdI2 var_A4
  loc_B5E4A9: LitI2_Byte &HFF
  loc_B5E4AB: EqI2
  loc_B5E4AC: FLdI2 var_A6
  loc_B5E4AF: LitI2_Byte &HFF
  loc_B5E4B1: EqI2
  loc_B5E4B2: AndI4
  loc_B5E4B3: FLdI2 var_AA
  loc_B5E4B6: LitI2_Byte &HFF
  loc_B5E4B8: EqI2
  loc_B5E4B9: FLdI2 var_AC
  loc_B5E4BC: LitI2_Byte &HFF
  loc_B5E4BE: EqI2
  loc_B5E4BF: AndI4
  loc_B5E4C0: OrI4
  loc_B5E4C1: BranchF loc_B5E4C7
  loc_B5E4C4: Branch loc_B5EC4D
  loc_B5E4C7: FLdI2 var_A4
  loc_B5E4CA: BranchF loc_B5E5F7
  loc_B5E4CD: ILdRf var_A0
  loc_B5E4D0: LitStr "UPDATE cheque"
  loc_B5E4D3: ConcatStr
  loc_B5E4D4: FStStrNoPop var_BC
  loc_B5E4D7: LitStr " SET CodiBanc="
  loc_B5E4DA: ConcatStr
  loc_B5E4DB: FStStrNoPop var_C0
  loc_B5E4DE: ILdRf CodiBanc
  loc_B5E4E1: CStrI4
  loc_B5E4E3: FStStrNoPop var_C4
  loc_B5E4E6: ConcatStr
  loc_B5E4E7: FStStrNoPop var_C8
  loc_B5E4EA: LitStr ", NumeMoba="
  loc_B5E4ED: ConcatStr
  loc_B5E4EE: FStStrNoPop var_138
  loc_B5E4F1: ILdRf NumeMoba
  loc_B5E4F4: CStrI4
  loc_B5E4F6: FStStrNoPop var_13C
  loc_B5E4F9: ConcatStr
  loc_B5E4FA: FStStrNoPop var_140
  loc_B5E4FD: LitStr ", FechCheq="
  loc_B5E500: ConcatStr
  loc_B5E501: CVarStr var_12C
  loc_B5E504: LitI4 1
  loc_B5E509: LitI4 1
  loc_B5E50E: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_B5E513: FStVarCopyObj var_FC
  loc_B5E516: FLdRfVar var_FC
  loc_B5E519: FLdRfVar AddNew_ChunOrpa
  loc_B5E51C: CVarRef
  loc_B5E521: FLdRfVar var_11C
  loc_B5E524: ImpAdCallFPR4  = Format(, )
  loc_B5E529: FLdRfVar var_11C
  loc_B5E52C: ConcatVar var_150
  loc_B5E530: LitVarStr var_10C, ", ImpoCheq="
  loc_B5E535: ConcatVar var_160
  loc_B5E539: FLdFPR8 ImpoCheq
  loc_B5E53C: CStrR8
  loc_B5E53E: FStStrNoPop var_164
  loc_B5E541: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B5E546: CVarStr var_174
  loc_B5E549: ConcatVar var_184
  loc_B5E54D: LitVarStr var_194, " , AutoCheq = "
  loc_B5E552: ConcatVar var_1A4
  loc_B5E556: FLdUI1
  loc_B5E55A: CVarUI1
  loc_B5E55E: ConcatVar var_1C4
  loc_B5E562: LitVarStr var_1D4, " , OrdeCheq = '"
  loc_B5E567: ConcatVar var_1E4
  loc_B5E56B: ILdRf var_98
  loc_B5E56E: CVarStr var_1F4
  loc_B5E571: ConcatVar var_204
  loc_B5E575: LitVarStr var_214, "'"
  loc_B5E57A: ConcatVar var_224
  loc_B5E57E: LitVarStr var_234, " , ModiUsua = '"
  loc_B5E583: ConcatVar var_244
  loc_B5E587: ImpAdLdI4 MemVar_C3D03C
  loc_B5E58A: CVarStr var_254
  loc_B5E58D: ConcatVar var_264
  loc_B5E591: LitVarStr var_274, "', ModiFeho = Now()"
  loc_B5E596: ConcatVar var_284
  loc_B5E59A: LitVarStr var_294, " WHERE IdCheq = "
  loc_B5E59F: ConcatVar var_2A4
  loc_B5E5A3: ILdRf var_8C
  loc_B5E5A6: CVarStr var_2B4
  loc_B5E5A9: ConcatVar var_2C4
  loc_B5E5AD: LitVarStr var_2D4, ";"
  loc_B5E5B2: ConcatVar var_2E4
  loc_B5E5B6: CStrVarTmp
  loc_B5E5B7: FStStr var_A0
  loc_B5E5BA: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_B5E5CD: FFreeVar var_FC = "": var_12C = "": var_11C = "": var_150 = "": var_160 = "": var_174 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = ""
  loc_B5E5F4: Branch loc_B5E8D9
  loc_B5E5F7: FLdI2 var_A6
  loc_B5E5FA: BranchF loc_B5E751
  loc_B5E5FD: ILdRf var_A0
  loc_B5E600: LitStr "INSERT INTO cheque (ExpeImpu,NumeLiqu,CucuPers,CodiBanc,NumeMoba,ImpoCheq,PeriInfo,NumeOrpa,FechCheq,OrdeCheq,AutoCheq,AltaUsua) "
  loc_B5E603: ConcatStr
  loc_B5E604: FStStrNoPop var_BC
  loc_B5E607: LitStr " VALUES ('"
  loc_B5E60A: ConcatStr
  loc_B5E60B: FStStrNoPop var_C0
  loc_B5E60E: ILdRf var_B4
  loc_B5E611: ConcatStr
  loc_B5E612: FStStrNoPop var_C4
  loc_B5E615: LitStr "',"
  loc_B5E618: ConcatStr
  loc_B5E619: FStStrNoPop var_C8
  loc_B5E61C: FLdI2 var_B6
  loc_B5E61F: CStrUI1
  loc_B5E621: FStStrNoPop var_138
  loc_B5E624: ConcatStr
  loc_B5E625: FStStrNoPop var_13C
  loc_B5E628: LitStr ",'"
  loc_B5E62B: ConcatStr
  loc_B5E62C: FStStrNoPop var_140
  loc_B5E62F: ILdRf var_90
  loc_B5E632: ConcatStr
  loc_B5E633: FStStrNoPop var_164
  loc_B5E636: LitStr "',"
  loc_B5E639: ConcatStr
  loc_B5E63A: FStStrNoPop var_2E8
  loc_B5E63D: ILdRf CodiBanc
  loc_B5E640: CStrI4
  loc_B5E642: FStStrNoPop var_2EC
  loc_B5E645: ConcatStr
  loc_B5E646: FStStrNoPop var_2F0
  loc_B5E649: LitStr ","
  loc_B5E64C: ConcatStr
  loc_B5E64D: FStStrNoPop var_2F4
  loc_B5E650: ILdRf NumeMoba
  loc_B5E653: CStrI4
  loc_B5E655: FStStrNoPop var_2F8
  loc_B5E658: ConcatStr
  loc_B5E659: FStStrNoPop var_2FC
  loc_B5E65C: LitStr ","
  loc_B5E65F: ConcatStr
  loc_B5E660: FStStrNoPop var_304
  loc_B5E663: FLdFPR8 ImpoCheq
  loc_B5E666: CStrR8
  loc_B5E668: FStStrNoPop var_300
  loc_B5E66B: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B5E670: FStStrNoPop var_308
  loc_B5E673: ConcatStr
  loc_B5E674: FStStrNoPop var_30C
  loc_B5E677: LitStr ","
  loc_B5E67A: ConcatStr
  loc_B5E67B: FStStrNoPop var_310
  loc_B5E67E: ImpAdLdI2 MemVar_C3D064
  loc_B5E681: CStrUI1
  loc_B5E683: FStStrNoPop var_314
  loc_B5E686: ConcatStr
  loc_B5E687: FStStrNoPop var_318
  loc_B5E68A: LitStr ","
  loc_B5E68D: ConcatStr
  loc_B5E68E: FStStrNoPop var_31C
  loc_B5E691: ILdRf OrdeCheq
  loc_B5E694: CStrI4
  loc_B5E696: FStStrNoPop var_320
  loc_B5E699: ConcatStr
  loc_B5E69A: FStStrNoPop var_324
  loc_B5E69D: LitStr ","
  loc_B5E6A0: ConcatStr
  loc_B5E6A1: FStStrNoPop var_328
  loc_B5E6A4: LitI4 1
  loc_B5E6A9: LitI4 1
  loc_B5E6AE: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_B5E6B3: FStVarCopyObj var_FC
  loc_B5E6B6: FLdRfVar var_FC
  loc_B5E6B9: FLdRfVar AddNew_ChunOrpa
  loc_B5E6BC: CVarRef
  loc_B5E6C1: ImpAdCallI2 Format$(, )
  loc_B5E6C6: FStStrNoPop var_32C
  loc_B5E6C9: ConcatStr
  loc_B5E6CA: FStStrNoPop var_330
  loc_B5E6CD: LitStr ",'"
  loc_B5E6D0: ConcatStr
  loc_B5E6D1: FStStrNoPop var_334
  loc_B5E6D4: ILdRf var_98
  loc_B5E6D7: ConcatStr
  loc_B5E6D8: FStStrNoPop var_338
  loc_B5E6DB: LitStr "',1,"
  loc_B5E6DE: ConcatStr
  loc_B5E6DF: FStStrNoPop var_33C
  loc_B5E6E2: FLdUI1
  loc_B5E6E6: CStrI2
  loc_B5E6E8: FStStrNoPop var_340
  loc_B5E6EB: ConcatStr
  loc_B5E6EC: FStStrNoPop var_344
  loc_B5E6EF: LitStr ",'"
  loc_B5E6F2: ConcatStr
  loc_B5E6F3: FStStrNoPop var_348
  loc_B5E6F6: ImpAdLdI4 MemVar_C3D03C
  loc_B5E6F9: ConcatStr
  loc_B5E6FA: FStStrNoPop var_34C
  loc_B5E6FD: LitStr "');"
  loc_B5E700: ConcatStr
  loc_B5E701: FStStr var_A0
  loc_B5E704: FFreeStr var_340 = "": var_344 = "": var_348 = "": var_34C = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_138 = "": var_13C = "": var_140 = "": var_164 = "": var_2E8 = "": var_2EC = "": var_2F0 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = "": var_338 = ""
  loc_B5E74B: FFree1Var var_FC = ""
  loc_B5E74E: Branch loc_B5E8D9
  loc_B5E751: FLdI2 var_A8
  loc_B5E754: BranchF loc_B5E8D9
  loc_B5E757: ILdRf var_A0
  loc_B5E75A: LitStr "DELETE"
  loc_B5E75D: ConcatStr
  loc_B5E75E: FStStrNoPop var_BC
  loc_B5E761: LitStr " FROM cheque"
  loc_B5E764: ConcatStr
  loc_B5E765: FStStrNoPop var_C0
  loc_B5E768: LitStr " WHERE cheque.IdCheq IN ("
  loc_B5E76B: ConcatStr
  loc_B5E76C: FStStrNoPop var_C4
  loc_B5E76F: ILdRf var_8C
  loc_B5E772: ConcatStr
  loc_B5E773: FStStrNoPop var_C8
  loc_B5E776: LitStr ");"
  loc_B5E779: ConcatStr
  loc_B5E77A: FStStr var_A0
  loc_B5E77D: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B5E788: ILdRf var_A0
  loc_B5E78B: LitStr "INSERT INTO cheque (ExpeImpu,NumeLiqu,CucuPers,CodiBanc,NumeMoba,ImpoCheq,PeriInfo,NumeOrpa,FechCheq,OrdeCheq,DetaCheq,AutoCheq,AltaUsua) "
  loc_B5E78E: ConcatStr
  loc_B5E78F: FStStrNoPop var_BC
  loc_B5E792: LitStr " VALUES ('"
  loc_B5E795: ConcatStr
  loc_B5E796: FStStrNoPop var_C0
  loc_B5E799: ILdRf var_B4
  loc_B5E79C: ConcatStr
  loc_B5E79D: FStStrNoPop var_C4
  loc_B5E7A0: LitStr "',"
  loc_B5E7A3: ConcatStr
  loc_B5E7A4: FStStrNoPop var_C8
  loc_B5E7A7: FLdI2 var_B6
  loc_B5E7AA: CStrUI1
  loc_B5E7AC: FStStrNoPop var_138
  loc_B5E7AF: ConcatStr
  loc_B5E7B0: FStStrNoPop var_13C
  loc_B5E7B3: LitStr ",'"
  loc_B5E7B6: ConcatStr
  loc_B5E7B7: FStStrNoPop var_140
  loc_B5E7BA: ILdRf var_90
  loc_B5E7BD: ConcatStr
  loc_B5E7BE: FStStrNoPop var_164
  loc_B5E7C1: LitStr "',"
  loc_B5E7C4: ConcatStr
  loc_B5E7C5: FStStrNoPop var_2E8
  loc_B5E7C8: ILdRf CodiBanc
  loc_B5E7CB: CStrI4
  loc_B5E7CD: FStStrNoPop var_2EC
  loc_B5E7D0: ConcatStr
  loc_B5E7D1: FStStrNoPop var_2F0
  loc_B5E7D4: LitStr ","
  loc_B5E7D7: ConcatStr
  loc_B5E7D8: FStStrNoPop var_2F4
  loc_B5E7DB: ILdRf NumeMoba
  loc_B5E7DE: CStrI4
  loc_B5E7E0: FStStrNoPop var_2F8
  loc_B5E7E3: ConcatStr
  loc_B5E7E4: FStStrNoPop var_2FC
  loc_B5E7E7: LitStr ","
  loc_B5E7EA: ConcatStr
  loc_B5E7EB: FStStrNoPop var_304
  loc_B5E7EE: FLdFPR8 ImpoCheq
  loc_B5E7F1: CStrR8
  loc_B5E7F3: FStStrNoPop var_300
  loc_B5E7F6: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B5E7FB: FStStrNoPop var_308
  loc_B5E7FE: ConcatStr
  loc_B5E7FF: FStStrNoPop var_30C
  loc_B5E802: LitStr ","
  loc_B5E805: ConcatStr
  loc_B5E806: FStStrNoPop var_310
  loc_B5E809: ImpAdLdI2 MemVar_C3D064
  loc_B5E80C: CStrUI1
  loc_B5E80E: FStStrNoPop var_314
  loc_B5E811: ConcatStr
  loc_B5E812: FStStrNoPop var_318
  loc_B5E815: LitStr ","
  loc_B5E818: ConcatStr
  loc_B5E819: FStStrNoPop var_31C
  loc_B5E81C: ILdRf OrdeCheq
  loc_B5E81F: CStrI4
  loc_B5E821: FStStrNoPop var_320
  loc_B5E824: ConcatStr
  loc_B5E825: FStStrNoPop var_324
  loc_B5E828: LitStr ","
  loc_B5E82B: ConcatStr
  loc_B5E82C: FStStrNoPop var_328
  loc_B5E82F: LitI4 1
  loc_B5E834: LitI4 1
  loc_B5E839: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_B5E83E: FStVarCopyObj var_FC
  loc_B5E841: FLdRfVar var_FC
  loc_B5E844: FLdRfVar AddNew_ChunOrpa
  loc_B5E847: CVarRef
  loc_B5E84C: ImpAdCallI2 Format$(, )
  loc_B5E851: FStStrNoPop var_32C
  loc_B5E854: ConcatStr
  loc_B5E855: FStStrNoPop var_330
  loc_B5E858: LitStr ",'"
  loc_B5E85B: ConcatStr
  loc_B5E85C: FStStrNoPop var_334
  loc_B5E85F: ILdRf var_98
  loc_B5E862: ConcatStr
  loc_B5E863: FStStrNoPop var_338
  loc_B5E866: LitStr "',1,"
  loc_B5E869: ConcatStr
  loc_B5E86A: FStStrNoPop var_33C
  loc_B5E86D: FLdUI1
  loc_B5E871: CStrI2
  loc_B5E873: FStStrNoPop var_340
  loc_B5E876: ConcatStr
  loc_B5E877: FStStrNoPop var_344
  loc_B5E87A: LitStr ",'"
  loc_B5E87D: ConcatStr
  loc_B5E87E: FStStrNoPop var_348
  loc_B5E881: ImpAdLdI4 MemVar_C3D03C
  loc_B5E884: ConcatStr
  loc_B5E885: FStStrNoPop var_34C
  loc_B5E888: LitStr "');"
  loc_B5E88B: ConcatStr
  loc_B5E88C: FStStr var_A0
  loc_B5E88F: FFreeStr var_340 = "": var_344 = "": var_348 = "": var_34C = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_138 = "": var_13C = "": var_140 = "": var_164 = "": var_2E8 = "": var_2EC = "": var_2F0 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = "": var_338 = ""
  loc_B5E8D6: FFree1Var var_FC = ""
  loc_B5E8D9: FLdI2 var_AA
  loc_B5E8DC: BranchF loc_B5E9AC
  loc_B5E8DF: ILdRf var_A0
  loc_B5E8E2: LitStr "UPDATE movibanco"
  loc_B5E8E5: ConcatStr
  loc_B5E8E6: FStStrNoPop var_BC
  loc_B5E8E9: LitStr " SET CodiBanc="
  loc_B5E8EC: ConcatStr
  loc_B5E8ED: FStStrNoPop var_C0
  loc_B5E8F0: ILdRf CodiBanc
  loc_B5E8F3: CStrI4
  loc_B5E8F5: FStStrNoPop var_C4
  loc_B5E8F8: ConcatStr
  loc_B5E8F9: FStStrNoPop var_C8
  loc_B5E8FC: LitStr ", NumeMoba="
  loc_B5E8FF: ConcatStr
  loc_B5E900: FStStrNoPop var_138
  loc_B5E903: ILdRf NumeMoba
  loc_B5E906: CStrI4
  loc_B5E908: FStStrNoPop var_13C
  loc_B5E90B: ConcatStr
  loc_B5E90C: FStStrNoPop var_140
  loc_B5E90F: LitStr ", FechMoba="
  loc_B5E912: ConcatStr
  loc_B5E913: CVarStr var_12C
  loc_B5E916: LitI4 1
  loc_B5E91B: LitI4 1
  loc_B5E920: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_B5E925: FStVarCopyObj var_FC
  loc_B5E928: FLdRfVar var_FC
  loc_B5E92B: FLdRfVar AddNew_ChunOrpa
  loc_B5E92E: CVarRef
  loc_B5E933: FLdRfVar var_11C
  loc_B5E936: ImpAdCallFPR4  = Format(, )
  loc_B5E93B: FLdRfVar var_11C
  loc_B5E93E: ConcatVar var_150
  loc_B5E942: LitVarStr var_10C, ", HabeMoba="
  loc_B5E947: ConcatVar var_160
  loc_B5E94B: FLdFPR8 ImpoCheq
  loc_B5E94E: CStrR8
  loc_B5E950: FStStrNoPop var_164
  loc_B5E953: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B5E958: CVarStr var_174
  loc_B5E95B: ConcatVar var_184
  loc_B5E95F: LitVarStr var_194, " WHERE IdCheq = "
  loc_B5E964: ConcatVar var_1A4
  loc_B5E968: ILdRf var_8C
  loc_B5E96B: CVarStr var_1B4
  loc_B5E96E: ConcatVar var_1C4
  loc_B5E972: LitVarStr var_1D4, ";"
  loc_B5E977: ConcatVar var_1E4
  loc_B5E97B: CStrVarTmp
  loc_B5E97C: FStStr var_A0
  loc_B5E97F: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_B5E992: FFreeVar var_FC = "": var_12C = "": var_11C = "": var_150 = "": var_160 = "": var_174 = "": var_184 = "": var_1A4 = "": var_1C4 = ""
  loc_B5E9A9: Branch loc_B5EB4C
  loc_B5E9AC: FLdI2 var_AC
  loc_B5E9AF: BranchF loc_B5EB05
  loc_B5E9B2: ILdRf var_A0
  loc_B5E9B5: LitStr "INSERT INTO movibanco (PeriInfo,IdMoba,CodiBanc,CodiTimb,NumeMoba,FechMoba,FecoMoba,DebeMoba,HabeMoba,DetaMoba,NumeOrpa,IdCheq,AltaUsua)"
  loc_B5E9B8: ConcatStr
  loc_B5E9B9: FStStrNoPop var_BC
  loc_B5E9BC: LitStr " VALUES ("
  loc_B5E9BF: ConcatStr
  loc_B5E9C0: FStStrNoPop var_C0
  loc_B5E9C3: ImpAdLdI2 MemVar_C3D064
  loc_B5E9C6: CStrUI1
  loc_B5E9C8: FStStrNoPop var_C4
  loc_B5E9CB: ConcatStr
  loc_B5E9CC: FStStrNoPop var_C8
  loc_B5E9CF: LitStr ",(SELECT IFNULL(MAX(IdMoba),0)+1 FROM movibanco mb2 WHERE mb2.PeriInfo = "
  loc_B5E9D2: ConcatStr
  loc_B5E9D3: FStStrNoPop var_138
  loc_B5E9D6: ImpAdLdI2 MemVar_C3D064
  loc_B5E9D9: CStrUI1
  loc_B5E9DB: FStStrNoPop var_13C
  loc_B5E9DE: ConcatStr
  loc_B5E9DF: FStStrNoPop var_140
  loc_B5E9E2: LitStr "), "
  loc_B5E9E5: ConcatStr
  loc_B5E9E6: FStStrNoPop var_164
  loc_B5E9E9: ILdRf CodiBanc
  loc_B5E9EC: CStrI4
  loc_B5E9EE: FStStrNoPop var_2E8
  loc_B5E9F1: ConcatStr
  loc_B5E9F2: FStStrNoPop var_2EC
  loc_B5E9F5: LitStr ", 1, "
  loc_B5E9F8: ConcatStr
  loc_B5E9F9: FStStrNoPop var_2F0
  loc_B5E9FC: ILdRf NumeMoba
  loc_B5E9FF: CStrI4
  loc_B5EA01: FStStrNoPop var_2F4
  loc_B5EA04: ConcatStr
  loc_B5EA05: FStStrNoPop var_2F8
  loc_B5EA08: LitStr ", "
  loc_B5EA0B: ConcatStr
  loc_B5EA0C: FStStrNoPop var_2FC
  loc_B5EA0F: LitI4 1
  loc_B5EA14: LitI4 1
  loc_B5EA19: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_B5EA1E: FStVarCopyObj var_FC
  loc_B5EA21: FLdRfVar var_FC
  loc_B5EA24: FLdRfVar AddNew_ChunOrpa
  loc_B5EA27: CVarRef
  loc_B5EA2C: ImpAdCallI2 Format$(, )
  loc_B5EA31: FStStrNoPop var_300
  loc_B5EA34: ConcatStr
  loc_B5EA35: FStStrNoPop var_304
  loc_B5EA38: LitStr ", NULL, 0, "
  loc_B5EA3B: ConcatStr
  loc_B5EA3C: FStStrNoPop var_30C
  loc_B5EA3F: FLdFPR8 ImpoCheq
  loc_B5EA42: CStrR8
  loc_B5EA44: FStStrNoPop var_308
  loc_B5EA47: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B5EA4C: FStStrNoPop var_310
  loc_B5EA4F: ConcatStr
  loc_B5EA50: FStStrNoPop var_314
  loc_B5EA53: LitStr ", '"
  loc_B5EA56: ConcatStr
  loc_B5EA57: FStStrNoPop var_318
  loc_B5EA5A: ILdRf var_98
  loc_B5EA5D: ConcatStr
  loc_B5EA5E: FStStrNoPop var_31C
  loc_B5EA61: LitStr " - "
  loc_B5EA64: ConcatStr
  loc_B5EA65: FStStrNoPop var_320
  loc_B5EA68: ILdRf var_B4
  loc_B5EA6B: ConcatStr
  loc_B5EA6C: FStStrNoPop var_324
  loc_B5EA6F: LitStr "-"
  loc_B5EA72: ConcatStr
  loc_B5EA73: FStStrNoPop var_328
  loc_B5EA76: FLdI2 var_B6
  loc_B5EA79: CStrUI1
  loc_B5EA7B: FStStrNoPop var_32C
  loc_B5EA7E: ConcatStr
  loc_B5EA7F: FStStrNoPop var_330
  loc_B5EA82: LitStr "', "
  loc_B5EA85: ConcatStr
  loc_B5EA86: FStStrNoPop var_334
  loc_B5EA89: ILdRf OrdeCheq
  loc_B5EA8C: CStrI4
  loc_B5EA8E: FStStrNoPop var_338
  loc_B5EA91: ConcatStr
  loc_B5EA92: FStStrNoPop var_33C
  loc_B5EA95: LitStr ", "
  loc_B5EA98: ConcatStr
  loc_B5EA99: FStStrNoPop var_340
  loc_B5EA9C: ILdRf var_8C
  loc_B5EA9F: ConcatStr
  loc_B5EAA0: FStStrNoPop var_344
  loc_B5EAA3: LitStr ", '"
  loc_B5EAA6: ConcatStr
  loc_B5EAA7: FStStrNoPop var_348
  loc_B5EAAA: ImpAdLdI4 MemVar_C3D03C
  loc_B5EAAD: ConcatStr
  loc_B5EAAE: FStStrNoPop var_34C
  loc_B5EAB1: LitStr "');"
  loc_B5EAB4: ConcatStr
  loc_B5EAB5: FStStr var_A0
  loc_B5EAB8: FFreeStr var_340 = "": var_344 = "": var_348 = "": var_34C = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_138 = "": var_13C = "": var_140 = "": var_164 = "": var_2E8 = "": var_2EC = "": var_2F0 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = "": var_338 = ""
  loc_B5EAFF: FFree1Var var_FC = ""
  loc_B5EB02: Branch loc_B5EB4C
  loc_B5EB05: FLdI2 var_AE
  loc_B5EB08: BranchF loc_B5EB4C
  loc_B5EB0B: ILdRf var_A0
  loc_B5EB0E: LitStr "DELETE FROM movibanco"
  loc_B5EB11: ConcatStr
  loc_B5EB12: FStStrNoPop var_BC
  loc_B5EB15: LitStr " WHERE PeriInfo = "
  loc_B5EB18: ConcatStr
  loc_B5EB19: FStStrNoPop var_C0
  loc_B5EB1C: ImpAdLdI2 MemVar_C3D064
  loc_B5EB1F: CStrUI1
  loc_B5EB21: FStStrNoPop var_C4
  loc_B5EB24: ConcatStr
  loc_B5EB25: FStStrNoPop var_C8
  loc_B5EB28: LitStr " AND CodiTimb <= 4 AND IdCheq IN ("
  loc_B5EB2B: ConcatStr
  loc_B5EB2C: FStStrNoPop var_138
  loc_B5EB2F: ILdRf var_8C
  loc_B5EB32: ConcatStr
  loc_B5EB33: FStStrNoPop var_13C
  loc_B5EB36: LitStr ");"
  loc_B5EB39: ConcatStr
  loc_B5EB3A: FStStr var_A0
  loc_B5EB3D: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_138 = ""
  loc_B5EB4C: FLdUI1
  loc_B5EB50: CI2UI1
  loc_B5EB52: LitI2_Byte 2
  loc_B5EB54: EqI2
  loc_B5EB55: ILdRf NumeMoba
  loc_B5EB58: LitI4 0
  loc_B5EB5D: GtI4
  loc_B5EB5E: AndI4
  loc_B5EB5F: ILdRf CodiBanc
  loc_B5EB62: LitI4 0
  loc_B5EB67: GtI4
  loc_B5EB68: AndI4
  loc_B5EB69: BranchF loc_B5EBC4
  loc_B5EB6C: ILdRf var_A0
  loc_B5EB6F: LitStr "UPDATE banco SET UlchBanc="
  loc_B5EB72: ConcatStr
  loc_B5EB73: FStStrNoPop var_BC
  loc_B5EB76: ILdRf NumeMoba
  loc_B5EB79: CStrI4
  loc_B5EB7B: FStStrNoPop var_C0
  loc_B5EB7E: ConcatStr
  loc_B5EB7F: FStStrNoPop var_C4
  loc_B5EB82: LitStr " WHERE PeriInfo = "
  loc_B5EB85: ConcatStr
  loc_B5EB86: FStStrNoPop var_C8
  loc_B5EB89: ImpAdLdI2 MemVar_C3D064
  loc_B5EB8C: CStrUI1
  loc_B5EB8E: FStStrNoPop var_138
  loc_B5EB91: ConcatStr
  loc_B5EB92: FStStrNoPop var_13C
  loc_B5EB95: LitStr " AND CodiBanc = "
  loc_B5EB98: ConcatStr
  loc_B5EB99: FStStrNoPop var_140
  loc_B5EB9C: ILdRf CodiBanc
  loc_B5EB9F: CStrI4
  loc_B5EBA1: FStStrNoPop var_164
  loc_B5EBA4: ConcatStr
  loc_B5EBA5: FStStrNoPop var_2E8
  loc_B5EBA8: LitStr ";"
  loc_B5EBAB: ConcatStr
  loc_B5EBAC: FStStr var_A0
  loc_B5EBAF: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_138 = "": var_13C = "": var_140 = "": var_164 = ""
  loc_B5EBC4: ILdRf var_A0
  loc_B5EBC7: LitStr "UPDATE ordenpago"
  loc_B5EBCA: ConcatStr
  loc_B5EBCB: FStStrNoPop var_BC
  loc_B5EBCE: LitStr " SET ChunOrpa = 1"
  loc_B5EBD1: ConcatStr
  loc_B5EBD2: FStStrNoPop var_C0
  loc_B5EBD5: LitStr ", ModiUsua = '"
  loc_B5EBD8: ConcatStr
  loc_B5EBD9: FStStrNoPop var_C4
  loc_B5EBDC: ImpAdLdI4 MemVar_C3D03C
  loc_B5EBDF: ConcatStr
  loc_B5EBE0: FStStrNoPop var_C8
  loc_B5EBE3: LitStr "', ModiFeho = Now()"
  loc_B5EBE6: ConcatStr
  loc_B5EBE7: FStStrNoPop var_138
  loc_B5EBEA: LitStr " WHERE ordenpago.PeriInfo = "
  loc_B5EBED: ConcatStr
  loc_B5EBEE: FStStrNoPop var_13C
  loc_B5EBF1: ImpAdLdI2 MemVar_C3D064
  loc_B5EBF4: CStrUI1
  loc_B5EBF6: FStStrNoPop var_140
  loc_B5EBF9: ConcatStr
  loc_B5EBFA: FStStrNoPop var_164
  loc_B5EBFD: LitStr " AND ordenpago.NumeOrpa = "
  loc_B5EC00: ConcatStr
  loc_B5EC01: FStStrNoPop var_2E8
  loc_B5EC04: ILdRf OrdeCheq
  loc_B5EC07: CStrI4
  loc_B5EC09: FStStrNoPop var_2EC
  loc_B5EC0C: ConcatStr
  loc_B5EC0D: FStStrNoPop var_2F0
  loc_B5EC10: LitStr ";"
  loc_B5EC13: ConcatStr
  loc_B5EC14: FStStr var_A0
  loc_B5EC17: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_138 = "": var_13C = "": var_140 = "": var_164 = "": var_2E8 = "": var_2EC = ""
  loc_B5EC30: ILdRf var_A0
  loc_B5EC33: LitStr "COMMIT;"
  loc_B5EC36: ConcatStr
  loc_B5EC37: FStStr var_A0
  loc_B5EC3A: ILdRf var_A0
  loc_B5EC3D: Call EjecutarRsCls(from_stack_1v)
  loc_B5EC42: LitI2_Byte &HFF
  loc_B5EC44: FStI2 var_86
  loc_B5EC47: ExitProcCbHresult
  loc_B5EC4D: LitStr "RollBack;"
  loc_B5EC50: Call EjecutarRsCls(from_stack_1v)
  loc_B5EC55: LitI4 0
  loc_B5EC5A: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B5EC5D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B5EC62: ExitProcCbHresult
End Function

Public Function ValidaSaldoLibroBanco(CodiBanc, FechCheq, ImpoCheq) 'A7AD48
  'Data Table: 4263DC
  loc_A7A980: ILdRf FechCheq
  loc_A7A983: FStStrCopy var_8C
  loc_A7A986: ZeroRetVal
  loc_A7A988: FLdRfVar var_98
  loc_A7A98B: ILdRf CodiBanc
  loc_A7A98E: ImpAdLdI2 MemVar_C3D064
  loc_A7A991: from_stack_3v = DescubiertoAdvertencia(from_stack_1v, from_stack_2v)
  loc_A7A996: FLdUI1
  loc_A7A99A: FStUI1 var_96
  loc_A7A99E: LitStr "Municipalidad de Guaymallén"
  loc_A7A9A1: LitStr "Municipalidad de Lavalle"
  loc_A7A9A4: EqStr
  loc_A7A9A6: BranchF loc_A7A9B4
  loc_A7A9A9: LitI2_Byte 4
  loc_A7A9AB: CUI1I2
  loc_A7A9AD: FStUI1 var_96
  loc_A7A9B1: Branch loc_A7A9CA
  loc_A7A9B4: LitStr "Municipalidad de Guaymallén"
  loc_A7A9B7: LitStr "Municipalidad de General Alvear"
  loc_A7A9BA: EqStr
  loc_A7A9BC: BranchF loc_A7A9C2
  loc_A7A9BF: Branch loc_A7A9CA
  loc_A7A9C2: LitI2_Byte 0
  loc_A7A9C4: CUI1I2
  loc_A7A9C6: FStUI1 var_96
  loc_A7A9CA: LitStr "Municipalidad de Guaymallén"
  loc_A7A9CD: LitStr "Municipalidad de La Paz"
  loc_A7A9D0: EqStr
  loc_A7A9D2: BranchF loc_A7A9DD
  loc_A7A9D5: LitI2_Byte 2
  loc_A7A9D7: CUI1I2
  loc_A7A9D9: FStUI1 var_96
  loc_A7A9DD: LitStr "Municipalidad de Guaymallén"
  loc_A7A9E0: LitStr "Municipalidad de Guaymallén"
  loc_A7A9E3: EqStr
  loc_A7A9E5: BranchF loc_A7A9F0
  loc_A7A9E8: LitI2_Byte 4
  loc_A7A9EA: CUI1I2
  loc_A7A9EC: FStUI1 var_96
  loc_A7A9F0: FLdUI1
  loc_A7A9F4: CI2UI1
  loc_A7A9F6: LitI2_Byte 4
  loc_A7A9F8: EqI2
  loc_A7A9F9: BranchF loc_A7AA08
  loc_A7A9FC: LitStr vbNullString
  loc_A7A9FF: FStStrCopy var_88
  loc_A7AA02: ExitProcCbHresult
  loc_A7AA08: FLdRfVar var_A0
  loc_A7AA0B: ILdRf var_8C
  loc_A7AA0E: ILdRf CodiBanc
  loc_A7AA11: from_stack_3v = SaldoLibroBanco(from_stack_1v, from_stack_2v)
  loc_A7AA16: FLdFPR8 var_A0
  loc_A7AA19: FnCDblR8
  loc_A7AA1B: FStFPR8 ValidaSaldoLibroBanco
  loc_A7AA1E: FLdUI1
  loc_A7AA22: CI2UI1
  loc_A7AA24: LitI2_Byte 0
  loc_A7AA26: EqI2
  loc_A7AA27: BranchF loc_A7AAC0
  loc_A7AA2A: FLdFPR8 ImpoCheq
  loc_A7AA2D: FLdFPR8 ValidaSaldoLibroBanco
  loc_A7AA30: GtR4
  loc_A7AA31: BranchF loc_A7AABD
  loc_A7AA34: LitStr "El Importe del Cheque/Transferencia: "
  loc_A7AA37: LitI4 1
  loc_A7AA3C: LitI4 1
  loc_A7AA41: LitVarStr var_C0, "currency"
  loc_A7AA46: FStVarCopyObj var_D0
  loc_A7AA49: FLdRfVar var_D0
  loc_A7AA4C: FLdRfVar ImpoCheq
  loc_A7AA4F: CVarRef
  loc_A7AA54: ImpAdCallI2 Format$(, )
  loc_A7AA59: FStStrNoPop var_D4
  loc_A7AA5C: ConcatStr
  loc_A7AA5D: FStStrNoPop var_D8
  loc_A7AA60: LitStr " es MAYOR al Saldo del Libro Banco: "
  loc_A7AA63: ConcatStr
  loc_A7AA64: FStStrNoPop var_10C
  loc_A7AA67: LitI4 1
  loc_A7AA6C: LitI4 1
  loc_A7AA71: LitVarStr var_F8, "currency"
  loc_A7AA76: FStVarCopyObj var_108
  loc_A7AA79: FLdRfVar var_108
  loc_A7AA7C: FLdRfVar ValidaSaldoLibroBanco
  loc_A7AA7F: CVarRef
  loc_A7AA84: ImpAdCallI2 Format$(, )
  loc_A7AA89: FStStrNoPop var_110
  loc_A7AA8C: ConcatStr
  loc_A7AA8D: FStStrNoPop var_114
  loc_A7AA90: LitStr vbCrLf
  loc_A7AA93: ConcatStr
  loc_A7AA94: FStStrNoPop var_118
  loc_A7AA97: LitStr vbCrLf
  loc_A7AA9A: ConcatStr
  loc_A7AA9B: FStStrNoPop var_11C
  loc_A7AA9E: LitStr "el Saldo NO es suficiente, operación CANCELADA..."
  loc_A7AAA1: ConcatStr
  loc_A7AAA2: FStStr var_88
  loc_A7AAA5: FFreeStr var_D4 = "": var_D8 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_A7AAB6: FFreeVar var_D0 = ""
  loc_A7AABD: Branch loc_A7AD40
  loc_A7AAC0: FLdUI1
  loc_A7AAC4: CI2UI1
  loc_A7AAC6: LitI2_Byte 1
  loc_A7AAC8: EqI2
  loc_A7AAC9: BranchF loc_A7ABB5
  loc_A7AACC: FLdRfVar var_A0
  loc_A7AACF: ILdRf CodiBanc
  loc_A7AAD2: ImpAdLdI2 MemVar_C3D064
  loc_A7AAD5: from_stack_3v = DescubiertoPermitido(from_stack_1v, from_stack_2v)
  loc_A7AADA: FLdFPR8 ImpoCheq
  loc_A7AADD: FLdFPR8 ValidaSaldoLibroBanco
  loc_A7AAE0: FLdFPR8 var_A0
  loc_A7AAE3: FnCDblR8
  loc_A7AAE5: AddR8
  loc_A7AAE6: CR8R8
  loc_A7AAE7: GtR4
  loc_A7AAE8: BranchF loc_A7ABB2
  loc_A7AAEB: FLdRfVar var_A0
  loc_A7AAEE: ILdRf CodiBanc
  loc_A7AAF1: ImpAdLdI2 MemVar_C3D064
  loc_A7AAF4: from_stack_3v = DescubiertoPermitido(from_stack_1v, from_stack_2v)
  loc_A7AAF9: LitStr "El Importe del Cheque/Transferencia: "
  loc_A7AAFC: LitI4 1
  loc_A7AB01: LitI4 1
  loc_A7AB06: LitVarStr var_C0, "currency"
  loc_A7AB0B: FStVarCopyObj var_D0
  loc_A7AB0E: FLdRfVar var_D0
  loc_A7AB11: FLdRfVar ImpoCheq
  loc_A7AB14: CVarRef
  loc_A7AB19: ImpAdCallI2 Format$(, )
  loc_A7AB1E: FStStrNoPop var_D4
  loc_A7AB21: ConcatStr
  loc_A7AB22: FStStrNoPop var_D8
  loc_A7AB25: LitStr " es MAYOR al Saldo del Libro Banco: "
  loc_A7AB28: ConcatStr
  loc_A7AB29: FStStrNoPop var_10C
  loc_A7AB2C: LitI4 1
  loc_A7AB31: LitI4 1
  loc_A7AB36: LitVarStr var_F8, "currency"
  loc_A7AB3B: FStVarCopyObj var_108
  loc_A7AB3E: FLdRfVar var_108
  loc_A7AB41: FLdRfVar ValidaSaldoLibroBanco
  loc_A7AB44: CVarRef
  loc_A7AB49: ImpAdCallI2 Format$(, )
  loc_A7AB4E: FStStrNoPop var_110
  loc_A7AB51: ConcatStr
  loc_A7AB52: FStStrNoPop var_114
  loc_A7AB55: LitStr " más el DESCUBIERTO permitido: "
  loc_A7AB58: ConcatStr
  loc_A7AB59: FStStrNoPop var_118
  loc_A7AB5C: LitI4 1
  loc_A7AB61: LitI4 1
  loc_A7AB66: LitVarStr var_14C, "currency"
  loc_A7AB6B: FStVarCopyObj var_15C
  loc_A7AB6E: FLdRfVar var_15C
  loc_A7AB71: FLdFPR8 var_A0
  loc_A7AB74: CVarR8
  loc_A7AB78: ImpAdCallI2 Format$(, )
  loc_A7AB7D: FStStrNoPop var_11C
  loc_A7AB80: ConcatStr
  loc_A7AB81: FStStrNoPop var_160
  loc_A7AB84: LitStr vbCrLf
  loc_A7AB87: ConcatStr
  loc_A7AB88: FStStrNoPop var_164
  loc_A7AB8B: LitStr "NO se emitirá ningún cheque. Verifique..."
  loc_A7AB8E: ConcatStr
  loc_A7AB8F: FStStr var_88
  loc_A7AB92: FFreeStr var_D4 = "": var_D8 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_160 = ""
  loc_A7ABA7: FFreeVar var_D0 = "": var_108 = "": var_13C = ""
  loc_A7ABB2: Branch loc_A7AD40
  loc_A7ABB5: FLdUI1
  loc_A7ABB9: CI2UI1
  loc_A7ABBB: LitI2_Byte 2
  loc_A7ABBD: EqI2
  loc_A7ABBE: BranchF loc_A7AC4E
  loc_A7ABC1: FLdFPR8 ImpoCheq
  loc_A7ABC4: FLdFPR8 ValidaSaldoLibroBanco
  loc_A7ABC7: GtR4
  loc_A7ABC8: BranchF loc_A7AC4B
  loc_A7ABCB: LitStr "Advertencia: El Importe del Cheque/Transferencia: "
  loc_A7ABCE: LitI4 1
  loc_A7ABD3: LitI4 1
  loc_A7ABD8: LitVarStr var_C0, "currency"
  loc_A7ABDD: FStVarCopyObj var_D0
  loc_A7ABE0: FLdRfVar var_D0
  loc_A7ABE3: FLdRfVar ImpoCheq
  loc_A7ABE6: CVarRef
  loc_A7ABEB: ImpAdCallI2 Format$(, )
  loc_A7ABF0: FStStrNoPop var_D4
  loc_A7ABF3: ConcatStr
  loc_A7ABF4: FStStrNoPop var_D8
  loc_A7ABF7: LitStr " es MAYOR al Saldo del Libro Banco: "
  loc_A7ABFA: ConcatStr
  loc_A7ABFB: FStStrNoPop var_10C
  loc_A7ABFE: LitI4 1
  loc_A7AC03: LitI4 1
  loc_A7AC08: LitVarStr var_F8, "currency"
  loc_A7AC0D: FStVarCopyObj var_108
  loc_A7AC10: FLdRfVar var_108
  loc_A7AC13: FLdRfVar ValidaSaldoLibroBanco
  loc_A7AC16: CVarRef
  loc_A7AC1B: ImpAdCallI2 Format$(, )
  loc_A7AC20: FStStrNoPop var_110
  loc_A7AC23: ConcatStr
  loc_A7AC24: FStStrNoPop var_114
  loc_A7AC27: LitStr vbCrLf
  loc_A7AC2A: ConcatStr
  loc_A7AC2B: FStStrNoPop var_118
  loc_A7AC2E: LitStr "Se emite SIN Saldo. Verifique..."
  loc_A7AC31: ConcatStr
  loc_A7AC32: FStStr var_88
  loc_A7AC35: FFreeStr var_D4 = "": var_D8 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_A7AC44: FFreeVar var_D0 = ""
  loc_A7AC4B: Branch loc_A7AD40
  loc_A7AC4E: FLdUI1
  loc_A7AC52: CI2UI1
  loc_A7AC54: LitI2_Byte 3
  loc_A7AC56: EqI2
  loc_A7AC57: BranchF loc_A7AD40
  loc_A7AC5A: FLdRfVar var_A0
  loc_A7AC5D: ILdRf CodiBanc
  loc_A7AC60: ImpAdLdI2 MemVar_C3D064
  loc_A7AC63: from_stack_3v = DescubiertoPermitido(from_stack_1v, from_stack_2v)
  loc_A7AC68: FLdFPR8 ImpoCheq
  loc_A7AC6B: FLdFPR8 ValidaSaldoLibroBanco
  loc_A7AC6E: FLdFPR8 var_A0
  loc_A7AC71: FnCDblR8
  loc_A7AC73: AddR8
  loc_A7AC74: CR8R8
  loc_A7AC75: GtR4
  loc_A7AC76: BranchF loc_A7AD40
  loc_A7AC79: FLdRfVar var_A0
  loc_A7AC7C: ILdRf CodiBanc
  loc_A7AC7F: ImpAdLdI2 MemVar_C3D064
  loc_A7AC82: from_stack_3v = DescubiertoPermitido(from_stack_1v, from_stack_2v)
  loc_A7AC87: LitStr "Advertencia: El Importe del Cheque/Transferencia: "
  loc_A7AC8A: LitI4 1
  loc_A7AC8F: LitI4 1
  loc_A7AC94: LitVarStr var_C0, "currency"
  loc_A7AC99: FStVarCopyObj var_D0
  loc_A7AC9C: FLdRfVar var_D0
  loc_A7AC9F: FLdRfVar ImpoCheq
  loc_A7ACA2: CVarRef
  loc_A7ACA7: ImpAdCallI2 Format$(, )
  loc_A7ACAC: FStStrNoPop var_D4
  loc_A7ACAF: ConcatStr
  loc_A7ACB0: FStStrNoPop var_D8
  loc_A7ACB3: LitStr " es MAYOR al Saldo del Libro Banco: "
  loc_A7ACB6: ConcatStr
  loc_A7ACB7: FStStrNoPop var_10C
  loc_A7ACBA: LitI4 1
  loc_A7ACBF: LitI4 1
  loc_A7ACC4: LitVarStr var_F8, "currency"
  loc_A7ACC9: FStVarCopyObj var_108
  loc_A7ACCC: FLdRfVar var_108
  loc_A7ACCF: FLdRfVar ValidaSaldoLibroBanco
  loc_A7ACD2: CVarRef
  loc_A7ACD7: ImpAdCallI2 Format$(, )
  loc_A7ACDC: FStStrNoPop var_110
  loc_A7ACDF: ConcatStr
  loc_A7ACE0: FStStrNoPop var_114
  loc_A7ACE3: LitStr " más el DESCUBIERTO permitido: "
  loc_A7ACE6: ConcatStr
  loc_A7ACE7: FStStrNoPop var_118
  loc_A7ACEA: LitI4 1
  loc_A7ACEF: LitI4 1
  loc_A7ACF4: LitVarStr var_14C, "currency"
  loc_A7ACF9: FStVarCopyObj var_15C
  loc_A7ACFC: FLdRfVar var_15C
  loc_A7ACFF: FLdFPR8 var_A0
  loc_A7AD02: CVarR8
  loc_A7AD06: ImpAdCallI2 Format$(, )
  loc_A7AD0B: FStStrNoPop var_11C
  loc_A7AD0E: ConcatStr
  loc_A7AD0F: FStStrNoPop var_160
  loc_A7AD12: LitStr vbCrLf
  loc_A7AD15: ConcatStr
  loc_A7AD16: FStStrNoPop var_164
  loc_A7AD19: LitStr "Se emite SIN Saldo + Descubierto. Verifique..."
  loc_A7AD1C: ConcatStr
  loc_A7AD1D: FStStr var_88
  loc_A7AD20: FFreeStr var_D4 = "": var_D8 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_160 = ""
  loc_A7AD35: FFreeVar var_D0 = "": var_108 = "": var_13C = ""
  loc_A7AD40: ExitProcCbHresult
  loc_A7AD46: NewIfNullPr Me
End Function

Public Function AnularCheque(IdCheq, ImpoCheq, FeanCheq, OrdeCheq, DetaCheq, AutoCheq) 'A6C658
  'Data Table: 4263DC
  loc_A6C318: ILdRf OrdeCheq
  loc_A6C31B: FStStrCopy var_8C
  loc_A6C31E: ILdRf DetaCheq
  loc_A6C321: FStStrCopy var_90
  loc_A6C324: OnErrorGoto loc_A6C63B
  loc_A6C327: LitStr "START TRANSACTION;"
  loc_A6C32A: Call EjecutarRsCls(from_stack_1v)
  loc_A6C32F: LitStr "UPDATE cheque SET FeanCheq="
  loc_A6C332: LitI4 1
  loc_A6C337: LitI4 1
  loc_A6C33C: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_A6C341: FStVarCopyObj var_C0
  loc_A6C344: FLdRfVar var_C0
  loc_A6C347: FLdRfVar var_8C
  loc_A6C34A: CVarRef
  loc_A6C34F: ImpAdCallI2 Format$(, )
  loc_A6C354: FStStrNoPop var_C4
  loc_A6C357: ConcatStr
  loc_A6C358: FStStrNoPop var_C8
  loc_A6C35B: LitStr " WHERE IdCheq = "
  loc_A6C35E: ConcatStr
  loc_A6C35F: FStStrNoPop var_CC
  loc_A6C362: ILdRf IdCheq
  loc_A6C365: CStrI4
  loc_A6C367: FStStrNoPop var_D0
  loc_A6C36A: ConcatStr
  loc_A6C36B: FStStrNoPop var_D4
  loc_A6C36E: LitStr ";"
  loc_A6C371: ConcatStr
  loc_A6C372: FStStrNoPop var_D8
  loc_A6C375: Call EjecutarRsCls(from_stack_1v)
  loc_A6C37A: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_A6C389: FFree1Var var_C0 = ""
  loc_A6C38C: LitStr "UPDATE movibanco"
  loc_A6C38F: LitStr " SET FecoMoba="
  loc_A6C392: ConcatStr
  loc_A6C393: FStStrNoPop var_C4
  loc_A6C396: LitI4 1
  loc_A6C39B: LitI4 1
  loc_A6C3A0: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_A6C3A5: FStVarCopyObj var_C0
  loc_A6C3A8: FLdRfVar var_C0
  loc_A6C3AB: FLdRfVar var_8C
  loc_A6C3AE: CVarRef
  loc_A6C3B3: ImpAdCallI2 Format$(, )
  loc_A6C3B8: FStStrNoPop var_C8
  loc_A6C3BB: ConcatStr
  loc_A6C3BC: FStStrNoPop var_CC
  loc_A6C3BF: LitStr " WHERE IdCheq = "
  loc_A6C3C2: ConcatStr
  loc_A6C3C3: FStStrNoPop var_D0
  loc_A6C3C6: ILdRf IdCheq
  loc_A6C3C9: CStrI4
  loc_A6C3CB: FStStrNoPop var_D4
  loc_A6C3CE: ConcatStr
  loc_A6C3CF: FStStrNoPop var_D8
  loc_A6C3D2: LitStr " AND CodiTimb = 1 LIMIT 1;"
  loc_A6C3D5: ConcatStr
  loc_A6C3D6: FStStrNoPop var_DC
  loc_A6C3D9: Call EjecutarRsCls(from_stack_1v)
  loc_A6C3DE: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_A6C3EF: FFree1Var var_C0 = ""
  loc_A6C3F2: LitStr "SELECT @codibanc:=CodiBanc, @numemoba:=NumeMoba, @expeimpu:=ExpeImpu, @numeliqu:=NumeLiqu, @cucupers:=CucuPers, @ordecheq:=OrdeCheq, @numeorpa:=NumeOrpa FROM cheque WHERE IdCheq = "
  loc_A6C3F5: ILdRf IdCheq
  loc_A6C3F8: CStrI4
  loc_A6C3FA: FStStrNoPop var_C4
  loc_A6C3FD: ConcatStr
  loc_A6C3FE: FStStrNoPop var_C8
  loc_A6C401: LitStr ";"
  loc_A6C404: ConcatStr
  loc_A6C405: FStStrNoPop var_CC
  loc_A6C408: Call EjecutarRsCls(from_stack_1v)
  loc_A6C40D: FFreeStr var_C4 = "": var_C8 = ""
  loc_A6C416: LitStr "INSERT INTO movibanco (PeriInfo,IdMoba,CodiBanc,CodiTimb,NumeMoba,FechMoba,FecoMoba,DebeMoba,HabeMoba,DetaMoba,NumeOrpa,IdCheq,AltaUsua)"
  loc_A6C419: LitStr " VALUES ("
  loc_A6C41C: ConcatStr
  loc_A6C41D: FStStrNoPop var_C4
  loc_A6C420: ImpAdLdI2 MemVar_C3D064
  loc_A6C423: CStrUI1
  loc_A6C425: FStStrNoPop var_C8
  loc_A6C428: ConcatStr
  loc_A6C429: FStStrNoPop var_CC
  loc_A6C42C: LitStr ",(SELECT MAX(IdMoba)+1 FROM movibanco mb2 WHERE mb2.PeriInfo = "
  loc_A6C42F: ConcatStr
  loc_A6C430: FStStrNoPop var_D0
  loc_A6C433: ImpAdLdI2 MemVar_C3D064
  loc_A6C436: CStrUI1
  loc_A6C438: FStStrNoPop var_D4
  loc_A6C43B: ConcatStr
  loc_A6C43C: FStStrNoPop var_D8
  loc_A6C43F: LitStr "),@codibanc,2,@numemoba,"
  loc_A6C442: ConcatStr
  loc_A6C443: FStStrNoPop var_DC
  loc_A6C446: LitI4 1
  loc_A6C44B: LitI4 1
  loc_A6C450: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_A6C455: FStVarCopyObj var_C0
  loc_A6C458: FLdRfVar var_C0
  loc_A6C45B: FLdRfVar var_8C
  loc_A6C45E: CVarRef
  loc_A6C463: ImpAdCallI2 Format$(, )
  loc_A6C468: FStStrNoPop var_E0
  loc_A6C46B: ConcatStr
  loc_A6C46C: FStStrNoPop var_E4
  loc_A6C46F: LitStr ","
  loc_A6C472: ConcatStr
  loc_A6C473: FStStrNoPop var_118
  loc_A6C476: LitI4 1
  loc_A6C47B: LitI4 1
  loc_A6C480: LitVarStr var_104, "'yyyy-mm-dd'"
  loc_A6C485: FStVarCopyObj var_114
  loc_A6C488: FLdRfVar var_114
  loc_A6C48B: FLdRfVar var_8C
  loc_A6C48E: CVarRef
  loc_A6C493: ImpAdCallI2 Format$(, )
  loc_A6C498: FStStrNoPop var_11C
  loc_A6C49B: ConcatStr
  loc_A6C49C: FStStrNoPop var_120
  loc_A6C49F: LitStr ","
  loc_A6C4A2: ConcatStr
  loc_A6C4A3: FStStrNoPop var_128
  loc_A6C4A6: LitI4 0
  loc_A6C4AB: LitI4 -1
  loc_A6C4B0: LitI4 1
  loc_A6C4B5: LitStr "."
  loc_A6C4B8: LitStr ","
  loc_A6C4BB: FLdFPR8 ImpoCheq
  loc_A6C4BE: CStrR8
  loc_A6C4C0: FStStrNoPop var_124
  loc_A6C4C3: ImpAdCallI2 Replace(, , , , , )
  loc_A6C4C8: FStStrNoPop var_12C
  loc_A6C4CB: ConcatStr
  loc_A6C4CC: FStStrNoPop var_130
  loc_A6C4CF: LitStr ",0,@ordecheq,@numeorpa,"
  loc_A6C4D2: ConcatStr
  loc_A6C4D3: FStStrNoPop var_134
  loc_A6C4D6: ILdRf IdCheq
  loc_A6C4D9: CStrI4
  loc_A6C4DB: FStStrNoPop var_138
  loc_A6C4DE: ConcatStr
  loc_A6C4DF: FStStrNoPop var_13C
  loc_A6C4E2: LitStr ",'"
  loc_A6C4E5: ConcatStr
  loc_A6C4E6: FStStrNoPop var_140
  loc_A6C4E9: ImpAdLdI4 MemVar_C3D03C
  loc_A6C4EC: ConcatStr
  loc_A6C4ED: FStStrNoPop var_144
  loc_A6C4F0: LitStr "');"
  loc_A6C4F3: ConcatStr
  loc_A6C4F4: FStStrNoPop var_148
  loc_A6C4F7: Call EjecutarRsCls(from_stack_1v)
  loc_A6C4FC: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = ""
  loc_A6C52B: FFreeVar var_C0 = ""
  loc_A6C532: LitStr "INSERT INTO cheque (ExpeImpu,NumeLiqu,CucuPers,CodiBanc,NumeMoba,ImpoCheq,PeriInfo,NumeOrpa,FechCheq,OrdeCheq,DetaCheq,AutoCheq,AltaUsua) "
  loc_A6C535: LitStr " VALUES (@expeimpu,@numeliqu,@cucupers,@codibanc,0,"
  loc_A6C538: ConcatStr
  loc_A6C539: FStStrNoPop var_C8
  loc_A6C53C: LitI4 0
  loc_A6C541: LitI4 -1
  loc_A6C546: LitI4 1
  loc_A6C54B: LitStr "."
  loc_A6C54E: LitStr ","
  loc_A6C551: FLdFPR8 ImpoCheq
  loc_A6C554: CStrR8
  loc_A6C556: FStStrNoPop var_C4
  loc_A6C559: ImpAdCallI2 Replace(, , , , , )
  loc_A6C55E: FStStrNoPop var_CC
  loc_A6C561: ConcatStr
  loc_A6C562: FStStrNoPop var_D0
  loc_A6C565: LitStr ","
  loc_A6C568: ConcatStr
  loc_A6C569: FStStrNoPop var_D4
  loc_A6C56C: ImpAdLdI2 MemVar_C3D064
  loc_A6C56F: CStrUI1
  loc_A6C571: FStStrNoPop var_D8
  loc_A6C574: ConcatStr
  loc_A6C575: FStStrNoPop var_DC
  loc_A6C578: LitStr ",@numeorpa,"
  loc_A6C57B: ConcatStr
  loc_A6C57C: FStStrNoPop var_E0
  loc_A6C57F: LitI4 1
  loc_A6C584: LitI4 1
  loc_A6C589: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_A6C58E: FStVarCopyObj var_C0
  loc_A6C591: FLdRfVar var_C0
  loc_A6C594: FLdRfVar var_8C
  loc_A6C597: CVarRef
  loc_A6C59C: ImpAdCallI2 Format$(, )
  loc_A6C5A1: FStStrNoPop var_E4
  loc_A6C5A4: ConcatStr
  loc_A6C5A5: FStStrNoPop var_118
  loc_A6C5A8: LitStr ",'"
  loc_A6C5AB: ConcatStr
  loc_A6C5AC: FStStrNoPop var_11C
  loc_A6C5AF: ILdRf var_90
  loc_A6C5B2: ConcatStr
  loc_A6C5B3: FStStrNoPop var_120
  loc_A6C5B6: LitStr "',"
  loc_A6C5B9: ConcatStr
  loc_A6C5BA: FStStrNoPop var_124
  loc_A6C5BD: FLdUI1
  loc_A6C5C1: CStrI2
  loc_A6C5C3: FStStrNoPop var_128
  loc_A6C5C6: ConcatStr
  loc_A6C5C7: FStStrNoPop var_12C
  loc_A6C5CA: LitStr ","
  loc_A6C5CD: ConcatStr
  loc_A6C5CE: FStStrNoPop var_130
  loc_A6C5D1: FLdUI1
  loc_A6C5D5: CStrI2
  loc_A6C5D7: FStStrNoPop var_134
  loc_A6C5DA: ConcatStr
  loc_A6C5DB: FStStrNoPop var_138
  loc_A6C5DE: LitStr ",'"
  loc_A6C5E1: ConcatStr
  loc_A6C5E2: FStStrNoPop var_13C
  loc_A6C5E5: ImpAdLdI4 MemVar_C3D03C
  loc_A6C5E8: ConcatStr
  loc_A6C5E9: FStStrNoPop var_140
  loc_A6C5EC: LitStr "');"
  loc_A6C5EF: ConcatStr
  loc_A6C5F0: FStStrNoPop var_144
  loc_A6C5F3: Call EjecutarRsCls(from_stack_1v)
  loc_A6C5F8: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_A6C625: FFree1Var var_C0 = ""
  loc_A6C628: LitStr "COMMIT;"
  loc_A6C62B: Call EjecutarRsCls(from_stack_1v)
  loc_A6C630: LitI2_Byte &HFF
  loc_A6C632: FStI2 var_86
  loc_A6C635: ExitProcCbHresult
  loc_A6C63B: LitStr "RollBack;"
  loc_A6C63E: Call EjecutarRsCls(from_stack_1v)
  loc_A6C643: LitI4 0
  loc_A6C648: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_A6C64B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A6C650: ExitProcCbHresult
End Function

Public Function InsertarChequeAnulado(ExpeImpu, NumeLiqu, CucuPers, CodiBanc, NumeMoba, ImpoCheq, FeanCheq, NumeOrpa, OrdeCheq) 'A7D2BC
  'Data Table: 4263DC
  loc_A7CF74: ILdRf ExpeImpu
  loc_A7CF77: FStStrCopy var_8C
  loc_A7CF7A: ILdRf CucuPers
  loc_A7CF7D: FStStrCopy var_90
  loc_A7CF80: ILdRf NumeOrpa
  loc_A7CF83: FStStrCopy InsertarChequeAnulado
  loc_A7CF86: ILdRf arg_30
  loc_A7CF89: FStStrCopy var_98
  loc_A7CF8C: ZeroRetVal
  loc_A7CF8E: LitStr "START TRANSACTION;"
  loc_A7CF91: Call EjecutarRsCls(from_stack_1v)
  loc_A7CF96: LitStr "INSERT INTO cheque (ExpeImpu,NumeLiqu,CucuPers,CodiBanc,NumeMoba,InteMoba,SecuCheq,ImpoCheq,PeriInfo,NumeOrpa,FechCheq,FereCheq,FepaCheq,FeanCheq,OrdeCheq,DetaCheq,AutoCheq,AltaUsua)"
  loc_A7CF99: LitStr " VALUES ('"
  loc_A7CF9C: ConcatStr
  loc_A7CF9D: FStStrNoPop var_9C
  loc_A7CFA0: ILdRf var_8C
  loc_A7CFA3: ConcatStr
  loc_A7CFA4: FStStrNoPop var_A0
  loc_A7CFA7: LitStr "',"
  loc_A7CFAA: ConcatStr
  loc_A7CFAB: FStStrNoPop var_A4
  loc_A7CFAE: FLdI2 NumeLiqu
  loc_A7CFB1: CStrUI1
  loc_A7CFB3: FStStrNoPop var_A8
  loc_A7CFB6: ConcatStr
  loc_A7CFB7: FStStrNoPop var_AC
  loc_A7CFBA: LitStr ",'"
  loc_A7CFBD: ConcatStr
  loc_A7CFBE: FStStrNoPop var_B0
  loc_A7CFC1: ILdRf var_90
  loc_A7CFC4: ConcatStr
  loc_A7CFC5: FStStrNoPop var_B4
  loc_A7CFC8: LitStr "',"
  loc_A7CFCB: ConcatStr
  loc_A7CFCC: FStStrNoPop var_B8
  loc_A7CFCF: ILdRf CodiBanc
  loc_A7CFD2: CStrI4
  loc_A7CFD4: FStStrNoPop var_BC
  loc_A7CFD7: ConcatStr
  loc_A7CFD8: FStStrNoPop var_C0
  loc_A7CFDB: LitStr ","
  loc_A7CFDE: ConcatStr
  loc_A7CFDF: FStStrNoPop var_C4
  loc_A7CFE2: ILdRf NumeMoba
  loc_A7CFE5: CStrI4
  loc_A7CFE7: FStStrNoPop var_C8
  loc_A7CFEA: ConcatStr
  loc_A7CFEB: FStStrNoPop var_CC
  loc_A7CFEE: LitStr ",0,(SELECT SecuCheq+1 FROM cheque tmp WHERE PeriInfo = "
  loc_A7CFF1: ConcatStr
  loc_A7CFF2: FStStrNoPop var_D0
  loc_A7CFF5: ImpAdLdI2 MemVar_C3D064
  loc_A7CFF8: CStrUI1
  loc_A7CFFA: FStStrNoPop var_D4
  loc_A7CFFD: ConcatStr
  loc_A7CFFE: FStStrNoPop var_D8
  loc_A7D001: LitStr " AND ExpeImpu = '"
  loc_A7D004: ConcatStr
  loc_A7D005: FStStrNoPop var_DC
  loc_A7D008: ILdRf var_8C
  loc_A7D00B: ConcatStr
  loc_A7D00C: FStStrNoPop var_E0
  loc_A7D00F: LitStr "' AND NumeLiqu = "
  loc_A7D012: ConcatStr
  loc_A7D013: FStStrNoPop var_E4
  loc_A7D016: FLdI2 NumeLiqu
  loc_A7D019: CStrUI1
  loc_A7D01B: FStStrNoPop var_E8
  loc_A7D01E: ConcatStr
  loc_A7D01F: FStStrNoPop var_EC
  loc_A7D022: LitStr " ORDER BY SecuCheq DESC LIMIT 1),"
  loc_A7D025: ConcatStr
  loc_A7D026: FStStrNoPop var_F4
  loc_A7D029: LitI4 0
  loc_A7D02E: LitI4 -1
  loc_A7D033: LitI4 1
  loc_A7D038: LitStr "."
  loc_A7D03B: LitStr ","
  loc_A7D03E: FLdFPR8 ImpoCheq
  loc_A7D041: CStrR8
  loc_A7D043: FStStrNoPop var_F0
  loc_A7D046: ImpAdCallI2 Replace(, , , , , )
  loc_A7D04B: FStStrNoPop var_F8
  loc_A7D04E: ConcatStr
  loc_A7D04F: FStStrNoPop var_FC
  loc_A7D052: LitStr ","
  loc_A7D055: ConcatStr
  loc_A7D056: FStStrNoPop var_100
  loc_A7D059: ImpAdLdI2 MemVar_C3D064
  loc_A7D05C: CStrUI1
  loc_A7D05E: FStStrNoPop var_104
  loc_A7D061: ConcatStr
  loc_A7D062: FStStrNoPop var_108
  loc_A7D065: LitStr ","
  loc_A7D068: ConcatStr
  loc_A7D069: FStStrNoPop var_10C
  loc_A7D06C: ILdRf OrdeCheq
  loc_A7D06F: CStrI4
  loc_A7D071: FStStrNoPop var_110
  loc_A7D074: ConcatStr
  loc_A7D075: FStStrNoPop var_114
  loc_A7D078: LitStr ",NULL,"
  loc_A7D07B: ConcatStr
  loc_A7D07C: FStStrNoPop var_148
  loc_A7D07F: LitI4 1
  loc_A7D084: LitI4 1
  loc_A7D089: LitVarStr var_134, "'yyyy-mm-dd'"
  loc_A7D08E: FStVarCopyObj var_144
  loc_A7D091: FLdRfVar var_144
  loc_A7D094: FLdRfVar InsertarChequeAnulado
  loc_A7D097: CVarRef
  loc_A7D09C: ImpAdCallI2 Format$(, )
  loc_A7D0A1: FStStrNoPop var_14C
  loc_A7D0A4: ConcatStr
  loc_A7D0A5: FStStrNoPop var_150
  loc_A7D0A8: LitStr ",NULL,"
  loc_A7D0AB: ConcatStr
  loc_A7D0AC: FStStrNoPop var_184
  loc_A7D0AF: LitI4 1
  loc_A7D0B4: LitI4 1
  loc_A7D0B9: LitVarStr var_170, "'yyyy-mm-dd'"
  loc_A7D0BE: FStVarCopyObj var_180
  loc_A7D0C1: FLdRfVar var_180
  loc_A7D0C4: FLdRfVar InsertarChequeAnulado
  loc_A7D0C7: CVarRef
  loc_A7D0CC: ImpAdCallI2 Format$(, )
  loc_A7D0D1: FStStrNoPop var_188
  loc_A7D0D4: ConcatStr
  loc_A7D0D5: FStStrNoPop var_18C
  loc_A7D0D8: LitStr ",'"
  loc_A7D0DB: ConcatStr
  loc_A7D0DC: FStStrNoPop var_190
  loc_A7D0DF: ILdRf var_98
  loc_A7D0E2: ConcatStr
  loc_A7D0E3: FStStrNoPop var_194
  loc_A7D0E6: LitStr "',0,'Manual','"
  loc_A7D0E9: ConcatStr
  loc_A7D0EA: FStStrNoPop var_198
  loc_A7D0ED: ImpAdLdI4 MemVar_C3D03C
  loc_A7D0F0: ConcatStr
  loc_A7D0F1: FStStrNoPop var_19C
  loc_A7D0F4: LitStr "');"
  loc_A7D0F7: ConcatStr
  loc_A7D0F8: FStStrNoPop var_1A0
  loc_A7D0FB: Call EjecutarRsCls(from_stack_1v)
  loc_A7D100: FFreeStr var_114 = "": var_148 = "": var_14C = "": var_150 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = ""
  loc_A7D157: FFreeVar var_144 = ""
  loc_A7D15E: LitStr "INSERT INTO movibanco (PeriInfo,IdMoba,CodiBanc,CodiTimb,NumeMoba,InteMoba,FechMoba,FecoMoba,DebeMoba,HabeMoba,CodiEnre,CodiCuco,DetaMoba,NumeOrpa,IdCheq,AltaUsua)"
  loc_A7D161: LitStr " VALUES ("
  loc_A7D164: ConcatStr
  loc_A7D165: FStStrNoPop var_9C
  loc_A7D168: ImpAdLdI2 MemVar_C3D064
  loc_A7D16B: CStrUI1
  loc_A7D16D: FStStrNoPop var_A0
  loc_A7D170: ConcatStr
  loc_A7D171: FStStrNoPop var_A4
  loc_A7D174: LitStr ",(SELECT MAX(IdMoba)+1 FROM movibanco mb2 WHERE mb2.PeriInfo = "
  loc_A7D177: ConcatStr
  loc_A7D178: FStStrNoPop var_A8
  loc_A7D17B: ImpAdLdI2 MemVar_C3D064
  loc_A7D17E: CStrUI1
  loc_A7D180: FStStrNoPop var_AC
  loc_A7D183: ConcatStr
  loc_A7D184: FStStrNoPop var_B0
  loc_A7D187: LitStr "),"
  loc_A7D18A: ConcatStr
  loc_A7D18B: FStStrNoPop var_B4
  loc_A7D18E: ILdRf CodiBanc
  loc_A7D191: CStrI4
  loc_A7D193: FStStrNoPop var_B8
  loc_A7D196: ConcatStr
  loc_A7D197: FStStrNoPop var_BC
  loc_A7D19A: LitStr ",2,"
  loc_A7D19D: ConcatStr
  loc_A7D19E: FStStrNoPop var_C0
  loc_A7D1A1: ILdRf NumeMoba
  loc_A7D1A4: CStrI4
  loc_A7D1A6: FStStrNoPop var_C4
  loc_A7D1A9: ConcatStr
  loc_A7D1AA: FStStrNoPop var_C8
  loc_A7D1AD: LitStr ",0,"
  loc_A7D1B0: ConcatStr
  loc_A7D1B1: FStStrNoPop var_CC
  loc_A7D1B4: LitI4 1
  loc_A7D1B9: LitI4 1
  loc_A7D1BE: LitVarStr var_134, "'yyyy-mm-dd'"
  loc_A7D1C3: FStVarCopyObj var_144
  loc_A7D1C6: FLdRfVar var_144
  loc_A7D1C9: FLdRfVar InsertarChequeAnulado
  loc_A7D1CC: CVarRef
  loc_A7D1D1: ImpAdCallI2 Format$(, )
  loc_A7D1D6: FStStrNoPop var_D0
  loc_A7D1D9: ConcatStr
  loc_A7D1DA: FStStrNoPop var_D4
  loc_A7D1DD: LitStr ",NULL,"
  loc_A7D1E0: ConcatStr
  loc_A7D1E1: FStStrNoPop var_DC
  loc_A7D1E4: LitI4 0
  loc_A7D1E9: LitI4 -1
  loc_A7D1EE: LitI4 1
  loc_A7D1F3: LitStr "."
  loc_A7D1F6: LitStr ","
  loc_A7D1F9: FLdFPR8 ImpoCheq
  loc_A7D1FC: CStrR8
  loc_A7D1FE: FStStrNoPop var_D8
  loc_A7D201: ImpAdCallI2 Replace(, , , , , )
  loc_A7D206: FStStrNoPop var_E0
  loc_A7D209: ConcatStr
  loc_A7D20A: FStStrNoPop var_E4
  loc_A7D20D: LitStr ",0,0,'','"
  loc_A7D210: ConcatStr
  loc_A7D211: FStStrNoPop var_E8
  loc_A7D214: ILdRf var_98
  loc_A7D217: ConcatStr
  loc_A7D218: FStStrNoPop var_EC
  loc_A7D21B: LitStr " - Exp.: "
  loc_A7D21E: ConcatStr
  loc_A7D21F: FStStrNoPop var_F0
  loc_A7D222: ILdRf var_8C
  loc_A7D225: ConcatStr
  loc_A7D226: FStStrNoPop var_F4
  loc_A7D229: LitStr "',"
  loc_A7D22C: ConcatStr
  loc_A7D22D: FStStrNoPop var_F8
  loc_A7D230: ILdRf OrdeCheq
  loc_A7D233: CStrI4
  loc_A7D235: FStStrNoPop var_FC
  loc_A7D238: ConcatStr
  loc_A7D239: FStStrNoPop var_100
  loc_A7D23C: LitStr ",LAST_INSERT_ID(),'"
  loc_A7D23F: ConcatStr
  loc_A7D240: FStStrNoPop var_104
  loc_A7D243: ImpAdLdI4 MemVar_C3D03C
  loc_A7D246: ConcatStr
  loc_A7D247: FStStrNoPop var_108
  loc_A7D24A: LitStr "');"
  loc_A7D24D: ConcatStr
  loc_A7D24E: FStStrNoPop var_10C
  loc_A7D251: Call EjecutarRsCls(from_stack_1v)
  loc_A7D256: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_A7D293: FFree1Var var_144 = ""
  loc_A7D296: OnErrorGoto loc_A7D2A7
  loc_A7D299: LitStr "COMMIT;"
  loc_A7D29C: Call EjecutarRsCls(from_stack_1v)
  loc_A7D2A1: ExitProcCbHresult
  loc_A7D2A7: LitStr "ROLLBACK;"
  loc_A7D2AA: Call EjecutarRsCls(from_stack_1v)
  loc_A7D2AF: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_A7D2B2: FStStrCopy var_88
  loc_A7D2B5: ExitProcCbHresult
End Function

Public Sub ActualizaFepaCheqInteMoba_ver2018(FepaCheq, InteMoba, ExpeImpu, NumeLiqu, CucuPers, CodiBanc, NumeMoba, PeriInfo, NumeOrpa) 'A3E904
  'Data Table: 4263DC
  loc_A3E760: ILdRf FepaCheq
  loc_A3E763: FStStrCopy var_88
  loc_A3E766: ILdRf ExpeImpu
  loc_A3E769: FStStrCopy var_8C
  loc_A3E76C: ILdRf CucuPers
  loc_A3E76F: FStStrCopy var_90
  loc_A3E772: LitStr "UPDATE cheque"
  loc_A3E775: LitStr " SET InteMoba = "
  loc_A3E778: ConcatStr
  loc_A3E779: FStStrNoPop var_94
  loc_A3E77C: ILdRf InteMoba
  loc_A3E77F: CStrI4
  loc_A3E781: FStStrNoPop var_98
  loc_A3E784: ConcatStr
  loc_A3E785: FStStrNoPop var_9C
  loc_A3E788: LitStr ", FepaCheq = "
  loc_A3E78B: ConcatStr
  loc_A3E78C: FStStrNoPop var_D0
  loc_A3E78F: LitI4 1
  loc_A3E794: LitI4 1
  loc_A3E799: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_A3E79E: FStVarCopyObj var_CC
  loc_A3E7A1: FLdRfVar var_CC
  loc_A3E7A4: FLdRfVar var_88
  loc_A3E7A7: CVarRef
  loc_A3E7AC: ImpAdCallI2 Format$(, )
  loc_A3E7B1: FStStrNoPop var_D4
  loc_A3E7B4: ConcatStr
  loc_A3E7B5: FStStrNoPop var_D8
  loc_A3E7B8: LitStr ", PagaUsua = '"
  loc_A3E7BB: ConcatStr
  loc_A3E7BC: FStStrNoPop var_DC
  loc_A3E7BF: ImpAdLdI4 MemVar_C3D03C
  loc_A3E7C2: ConcatStr
  loc_A3E7C3: FStStrNoPop var_E0
  loc_A3E7C6: LitStr "', PagaFeho = Now()"
  loc_A3E7C9: ConcatStr
  loc_A3E7CA: FStStrNoPop var_E4
  loc_A3E7CD: LitStr " WHERE ExpeImpu='"
  loc_A3E7D0: ConcatStr
  loc_A3E7D1: FStStrNoPop var_E8
  loc_A3E7D4: ILdRf var_8C
  loc_A3E7D7: ConcatStr
  loc_A3E7D8: FStStrNoPop var_EC
  loc_A3E7DB: LitStr "' AND NumeLiqu="
  loc_A3E7DE: ConcatStr
  loc_A3E7DF: FStStrNoPop var_F0
  loc_A3E7E2: FLdI2 NumeLiqu
  loc_A3E7E5: CStrUI1
  loc_A3E7E7: FStStrNoPop var_F4
  loc_A3E7EA: ConcatStr
  loc_A3E7EB: FStStrNoPop var_F8
  loc_A3E7EE: LitStr " AND CucuPers='"
  loc_A3E7F1: ConcatStr
  loc_A3E7F2: FStStrNoPop var_FC
  loc_A3E7F5: ILdRf var_90
  loc_A3E7F8: ConcatStr
  loc_A3E7F9: FStStrNoPop var_100
  loc_A3E7FC: LitStr "' AND CodiBanc="
  loc_A3E7FF: ConcatStr
  loc_A3E800: FStStrNoPop var_104
  loc_A3E803: ILdRf CodiBanc
  loc_A3E806: CStrI4
  loc_A3E808: FStStrNoPop var_108
  loc_A3E80B: ConcatStr
  loc_A3E80C: FStStrNoPop var_10C
  loc_A3E80F: LitStr " AND NumeMoba="
  loc_A3E812: ConcatStr
  loc_A3E813: FStStrNoPop var_110
  loc_A3E816: ILdRf NumeMoba
  loc_A3E819: CStrI4
  loc_A3E81B: FStStrNoPop var_114
  loc_A3E81E: ConcatStr
  loc_A3E81F: FStStrNoPop var_118
  loc_A3E822: LitStr " AND PeriInfo="
  loc_A3E825: ConcatStr
  loc_A3E826: FStStrNoPop var_11C
  loc_A3E829: FLdI2 PeriInfo
  loc_A3E82C: CStrUI1
  loc_A3E82E: FStStrNoPop var_120
  loc_A3E831: ConcatStr
  loc_A3E832: FStStrNoPop var_124
  loc_A3E835: LitStr " AND NumeOrpa="
  loc_A3E838: ConcatStr
  loc_A3E839: FStStrNoPop var_128
  loc_A3E83C: ILdRf NumeOrpa
  loc_A3E83F: CStrI4
  loc_A3E841: FStStrNoPop var_12C
  loc_A3E844: ConcatStr
  loc_A3E845: FStStrNoPop var_130
  loc_A3E848: LitStr " AND FeanCheq IS NULL AND FepaCheq IS NULL; "
  loc_A3E84B: ConcatStr
  loc_A3E84C: FStStrNoPop var_134
  loc_A3E84F: LitStr "UPDATE movibanco"
  loc_A3E852: ConcatStr
  loc_A3E853: FStStrNoPop var_138
  loc_A3E856: LitStr " SET InteMoba="
  loc_A3E859: ConcatStr
  loc_A3E85A: FStStrNoPop var_13C
  loc_A3E85D: ILdRf InteMoba
  loc_A3E860: CStrI4
  loc_A3E862: FStStrNoPop var_140
  loc_A3E865: ConcatStr
  loc_A3E866: FStStrNoPop var_144
  loc_A3E869: LitStr " WHERE PeriInfo="
  loc_A3E86C: ConcatStr
  loc_A3E86D: FStStrNoPop var_148
  loc_A3E870: FLdI2 PeriInfo
  loc_A3E873: CStrUI1
  loc_A3E875: FStStrNoPop var_14C
  loc_A3E878: ConcatStr
  loc_A3E879: FStStrNoPop var_150
  loc_A3E87C: LitStr " AND CodiBanc="
  loc_A3E87F: ConcatStr
  loc_A3E880: FStStrNoPop var_154
  loc_A3E883: ILdRf CodiBanc
  loc_A3E886: CStrI4
  loc_A3E888: FStStrNoPop var_158
  loc_A3E88B: ConcatStr
  loc_A3E88C: FStStrNoPop var_15C
  loc_A3E88F: LitStr " AND CodiTimb<=4 AND NumeMoba="
  loc_A3E892: ConcatStr
  loc_A3E893: FStStrNoPop var_160
  loc_A3E896: ILdRf NumeMoba
  loc_A3E899: CStrI4
  loc_A3E89B: FStStrNoPop var_164
  loc_A3E89E: ConcatStr
  loc_A3E89F: FStStrNoPop var_168
  loc_A3E8A2: Call EjecutarRsCls(from_stack_1v)
  loc_A3E8A7: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_94 = "": var_98 = "": var_9C = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_A3E8FE: FFree1Var var_CC = ""
  loc_A3E901: ExitProcHresult
  loc_A3E902: LitI2_Byte 1
End Sub

Public Sub ActualizaFepaCheqInteMoba(IdCheq, FepaCheq, ExpeImpu, NumeLiqu, CucuPers, CodiBanc, NumeMoba, PeriInfo, NumeOrpa) 'A96BB8
  'Data Table: 4263DC
  loc_A96798: ILdRf FepaCheq
  loc_A9679B: FStStrCopy var_88
  loc_A9679E: ILdRf ExpeImpu
  loc_A967A1: FStStrCopy var_8C
  loc_A967A4: ILdRf CucuPers
  loc_A967A7: FStStrCopy var_90
  loc_A967AA: OnErrorGoto loc_A96B9F
  loc_A967AD: LitStr "START TRANSACTION;"
  loc_A967B0: FStStrCopy var_94
  loc_A967B3: LitStr "SELECT *"
  loc_A967B6: LitStr " FROM cheque"
  loc_A967B9: ConcatStr
  loc_A967BA: FStStrNoPop var_98
  loc_A967BD: LitStr " WHERE cheque.IdCheq = "
  loc_A967C0: ConcatStr
  loc_A967C1: FStStrNoPop var_9C
  loc_A967C4: ILdRf IdCheq
  loc_A967C7: CStrI4
  loc_A967C9: FStStrNoPop var_A0
  loc_A967CC: ConcatStr
  loc_A967CD: FStStrNoPop var_A4
  loc_A967D0: LitStr ";"
  loc_A967D3: ConcatStr
  loc_A967D4: FStStrNoPop var_A8
  loc_A967D7: Call EjecutarRsCls(from_stack_1v)
  loc_A967DC: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A967E9: FLdRfVar var_AC
  loc_A967EC: FLdPr Me
  loc_A967EF: MemLdPr global_56
  loc_A967F2:  = Me.RecordCount
  loc_A967F7: ILdRf var_AC
  loc_A967FA: LitI4 1
  loc_A967FF: EqI4
  loc_A96800: BranchF loc_A96B7D
  loc_A96803: FLdRfVar var_D4
  loc_A96806: FLdRfVar var_C4
  loc_A96809: LitVarStr var_C0, "AutoCheq"
  loc_A9680E: PopAdLdVar
  loc_A9680F: FLdRfVar var_B0
  loc_A96812: FLdPr Me
  loc_A96815: MemLdPr global_56
  loc_A96818:  = Me.Fields
  loc_A9681D: FLdPr var_B0
  loc_A96820: from_stack_2 = Me.Item(from_stack_1)
  loc_A96825: FLdPr var_C4
  loc_A96828:  = Me.Value
  loc_A9682D: FLdRfVar var_D4
  loc_A96830: FnCIntVar
  loc_A96832: LitI2_Byte 3
  loc_A96834: EqI2
  loc_A96835: FFreeAd var_B0 = ""
  loc_A9683C: FFree1Var var_D4 = ""
  loc_A9683F: BranchF loc_A96AF7
  loc_A96842: ILdRf var_94
  loc_A96845: LitStr "UPDATE cheque"
  loc_A96848: ConcatStr
  loc_A96849: FStStrNoPop var_98
  loc_A9684C: LitStr " SET FepaCheq = "
  loc_A9684F: ConcatStr
  loc_A96850: FStStrNoPop var_9C
  loc_A96853: LitI4 1
  loc_A96858: LitI4 1
  loc_A9685D: LitVarStr var_E4, "'yyyy-mm-dd'"
  loc_A96862: FStVarCopyObj var_D4
  loc_A96865: FLdRfVar var_D4
  loc_A96868: FLdRfVar var_88
  loc_A9686B: CVarRef
  loc_A96870: ImpAdCallI2 Format$(, )
  loc_A96875: FStStrNoPop var_A0
  loc_A96878: ConcatStr
  loc_A96879: FStStrNoPop var_A4
  loc_A9687C: LitStr ", PagaUsua = '"
  loc_A9687F: ConcatStr
  loc_A96880: FStStrNoPop var_A8
  loc_A96883: ImpAdLdI4 MemVar_C3D03C
  loc_A96886: ConcatStr
  loc_A96887: FStStrNoPop var_E8
  loc_A9688A: LitStr "', PagaFeho = Now()"
  loc_A9688D: ConcatStr
  loc_A9688E: FStStrNoPop var_EC
  loc_A96891: LitStr " /* , FechCheq = "
  loc_A96894: ConcatStr
  loc_A96895: FStStrNoPop var_120
  loc_A96898: LitI4 1
  loc_A9689D: LitI4 1
  loc_A968A2: LitVarStr var_10C, "'yyyy-mm-dd'"
  loc_A968A7: FStVarCopyObj var_11C
  loc_A968AA: FLdRfVar var_11C
  loc_A968AD: FLdRfVar var_88
  loc_A968B0: CVarRef
  loc_A968B5: ImpAdCallI2 Format$(, )
  loc_A968BA: FStStrNoPop var_124
  loc_A968BD: ConcatStr
  loc_A968BE: FStStrNoPop var_128
  loc_A968C1: LitStr ", FereCheq = "
  loc_A968C4: ConcatStr
  loc_A968C5: FStStrNoPop var_15C
  loc_A968C8: LitI4 1
  loc_A968CD: LitI4 1
  loc_A968D2: LitVarStr var_148, "'yyyy-mm-dd'"
  loc_A968D7: FStVarCopyObj var_158
  loc_A968DA: FLdRfVar var_158
  loc_A968DD: FLdRfVar var_88
  loc_A968E0: CVarRef
  loc_A968E5: ImpAdCallI2 Format$(, )
  loc_A968EA: FStStrNoPop var_160
  loc_A968ED: ConcatStr
  loc_A968EE: FStStrNoPop var_164
  loc_A968F1: LitStr " */ "
  loc_A968F4: ConcatStr
  loc_A968F5: FStStrNoPop var_168
  loc_A968F8: LitStr ", NumeMoba = "
  loc_A968FB: ConcatStr
  loc_A968FC: FStStrNoPop var_16C
  loc_A968FF: ILdRf NumeMoba
  loc_A96902: CStrI4
  loc_A96904: FStStrNoPop var_170
  loc_A96907: ConcatStr
  loc_A96908: FStStrNoPop var_174
  loc_A9690B: LitStr " WHERE IdCheq = "
  loc_A9690E: ConcatStr
  loc_A9690F: FStStrNoPop var_178
  loc_A96912: ILdRf IdCheq
  loc_A96915: CStrI4
  loc_A96917: FStStrNoPop var_17C
  loc_A9691A: ConcatStr
  loc_A9691B: FStStrNoPop var_180
  loc_A9691E: LitStr ";"
  loc_A96921: ConcatStr
  loc_A96922: FStStr var_94
  loc_A96925: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_E8 = "": var_EC = "": var_120 = "": var_124 = "": var_128 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = ""
  loc_A96950: FFreeVar var_D4 = "": var_11C = ""
  loc_A96959: ILdRf var_94
  loc_A9695C: LitStr "INSERT INTO movibanco (PeriInfo,IdMoba,CodiBanc,CodiTimb,NumeMoba,FechMoba,FecoMoba,DebeMoba,HabeMoba,DetaMoba,NumeOrpa,IdCheq,AltaUsua)"
  loc_A9695F: ConcatStr
  loc_A96960: FStStrNoPop var_98
  loc_A96963: LitStr " VALUES ("
  loc_A96966: ConcatStr
  loc_A96967: FStStrNoPop var_9C
  loc_A9696A: ImpAdLdI2 MemVar_C3D064
  loc_A9696D: CStrUI1
  loc_A9696F: FStStrNoPop var_A0
  loc_A96972: ConcatStr
  loc_A96973: FStStrNoPop var_A4
  loc_A96976: LitStr ",(SELECT IFNULL(MAX(IdMoba),0)+1 FROM movibanco mb2 WHERE mb2.PeriInfo = "
  loc_A96979: ConcatStr
  loc_A9697A: FStStrNoPop var_A8
  loc_A9697D: ImpAdLdI2 MemVar_C3D064
  loc_A96980: CStrUI1
  loc_A96982: FStStrNoPop var_E8
  loc_A96985: ConcatStr
  loc_A96986: FStStrNoPop var_EC
  loc_A96989: LitStr "), "
  loc_A9698C: ConcatStr
  loc_A9698D: FStStrNoPop var_120
  loc_A96990: ILdRf CodiBanc
  loc_A96993: CStrI4
  loc_A96995: FStStrNoPop var_124
  loc_A96998: ConcatStr
  loc_A96999: FStStrNoPop var_128
  loc_A9699C: LitStr ", 3, "
  loc_A9699F: ConcatStr
  loc_A969A0: FStStrNoPop var_15C
  loc_A969A3: ILdRf NumeMoba
  loc_A969A6: CStrI4
  loc_A969A8: FStStrNoPop var_160
  loc_A969AB: ConcatStr
  loc_A969AC: FStStrNoPop var_164
  loc_A969AF: LitStr ", "
  loc_A969B2: ConcatStr
  loc_A969B3: FStStrNoPop var_168
  loc_A969B6: LitI4 1
  loc_A969BB: LitI4 1
  loc_A969C0: LitVarStr var_E4, "'yyyy-mm-dd'"
  loc_A969C5: FStVarCopyObj var_D4
  loc_A969C8: FLdRfVar var_D4
  loc_A969CB: FLdRfVar var_88
  loc_A969CE: CVarRef
  loc_A969D3: ImpAdCallI2 Format$(, )
  loc_A969D8: FStStrNoPop var_16C
  loc_A969DB: ConcatStr
  loc_A969DC: FStStrNoPop var_170
  loc_A969DF: LitStr ", NULL, 0, "
  loc_A969E2: ConcatStr
  loc_A969E3: FStStrNoPop var_178
  loc_A969E6: FLdRfVar var_11C
  loc_A969E9: FLdRfVar var_C4
  loc_A969EC: LitVarStr var_FC, "ImpoCheq"
  loc_A969F1: PopAdLdVar
  loc_A969F2: FLdRfVar var_B0
  loc_A969F5: FLdPr Me
  loc_A969F8: MemLdPr global_56
  loc_A969FB:  = Me.Fields
  loc_A96A00: FLdPr var_B0
  loc_A96A03: from_stack_2 = Me.Item(from_stack_1)
  loc_A96A08: FLdPr var_C4
  loc_A96A0B:  = Me.Value
  loc_A96A10: FLdRfVar var_11C
  loc_A96A13: CStrVarTmp
  loc_A96A14: FStStrNoPop var_174
  loc_A96A17: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A96A1C: FStStrNoPop var_17C
  loc_A96A1F: ConcatStr
  loc_A96A20: FStStrNoPop var_180
  loc_A96A23: LitStr ", '"
  loc_A96A26: ConcatStr
  loc_A96A27: CVarStr var_198
  loc_A96A2A: FLdRfVar var_158
  loc_A96A2D: FLdRfVar var_188
  loc_A96A30: LitVarStr var_10C, "OrdeCheq"
  loc_A96A35: PopAdLdVar
  loc_A96A36: FLdRfVar var_184
  loc_A96A39: FLdPr Me
  loc_A96A3C: MemLdPr global_56
  loc_A96A3F:  = Me.Fields
  loc_A96A44: FLdPr var_184
  loc_A96A47: from_stack_2 = Me.Item(from_stack_1)
  loc_A96A4C: FLdPr var_188
  loc_A96A4F:  = Me.Value
  loc_A96A54: FLdRfVar var_158
  loc_A96A57: ConcatVar var_1A8
  loc_A96A5B: LitVarStr var_138, "', "
  loc_A96A60: ConcatVar var_1B8
  loc_A96A64: ILdRf NumeOrpa
  loc_A96A67: CVarI4
  loc_A96A6B: ConcatVar var_1C8
  loc_A96A6F: LitVarStr var_1D8, ", "
  loc_A96A74: ConcatVar var_1E8
  loc_A96A78: ILdRf IdCheq
  loc_A96A7B: CVarI4
  loc_A96A7F: ConcatVar var_208
  loc_A96A83: LitVarStr var_218, ", '"
  loc_A96A88: ConcatVar var_228
  loc_A96A8C: ImpAdLdI4 MemVar_C3D03C
  loc_A96A8F: CVarStr var_238
  loc_A96A92: ConcatVar var_248
  loc_A96A96: LitVarStr var_258, "');"
  loc_A96A9B: ConcatVar var_268
  loc_A96A9F: CStrVarTmp
  loc_A96AA0: FStStr var_94
  loc_A96AA3: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_E8 = "": var_EC = "": var_120 = "": var_124 = "": var_128 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = ""
  loc_A96ACE: FFreeAd var_B0 = "": var_C4 = "": var_184 = ""
  loc_A96AD9: FFreeVar var_D4 = "": var_11C = "": var_198 = "": var_158 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = ""
  loc_A96AF4: Branch loc_A96B7A
  loc_A96AF7: ILdRf var_94
  loc_A96AFA: LitStr "UPDATE cheque"
  loc_A96AFD: ConcatStr
  loc_A96AFE: FStStrNoPop var_98
  loc_A96B01: LitStr " SET FepaCheq = "
  loc_A96B04: ConcatStr
  loc_A96B05: FStStrNoPop var_9C
  loc_A96B08: LitI4 1
  loc_A96B0D: LitI4 1
  loc_A96B12: LitVarStr var_E4, "'yyyy-mm-dd'"
  loc_A96B17: FStVarCopyObj var_D4
  loc_A96B1A: FLdRfVar var_D4
  loc_A96B1D: FLdRfVar var_88
  loc_A96B20: CVarRef
  loc_A96B25: ImpAdCallI2 Format$(, )
  loc_A96B2A: FStStrNoPop var_A0
  loc_A96B2D: ConcatStr
  loc_A96B2E: FStStrNoPop var_A4
  loc_A96B31: LitStr ", PagaUsua = '"
  loc_A96B34: ConcatStr
  loc_A96B35: FStStrNoPop var_A8
  loc_A96B38: ImpAdLdI4 MemVar_C3D03C
  loc_A96B3B: ConcatStr
  loc_A96B3C: FStStrNoPop var_E8
  loc_A96B3F: LitStr "', PagaFeho = Now()"
  loc_A96B42: ConcatStr
  loc_A96B43: FStStrNoPop var_EC
  loc_A96B46: LitStr " WHERE IdCheq = "
  loc_A96B49: ConcatStr
  loc_A96B4A: FStStrNoPop var_120
  loc_A96B4D: ILdRf IdCheq
  loc_A96B50: CStrI4
  loc_A96B52: FStStrNoPop var_124
  loc_A96B55: ConcatStr
  loc_A96B56: FStStrNoPop var_128
  loc_A96B59: LitStr "; "
  loc_A96B5C: ConcatStr
  loc_A96B5D: FStStr var_94
  loc_A96B60: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_E8 = "": var_EC = "": var_120 = "": var_124 = ""
  loc_A96B77: FFree1Var var_D4 = ""
  loc_A96B7A: Branch loc_A96B8E
  loc_A96B7D: LitStr "Municipalidad de Guaymallén"
  loc_A96B80: LitStr "Municipalidad de Maipú"
  loc_A96B83: EqStr
  loc_A96B85: BranchF loc_A96B8B
  loc_A96B88: Branch loc_A96B8E
  loc_A96B8B: Branch loc_A96B9F
  loc_A96B8E: ILdRf var_94
  loc_A96B91: Call EjecutarRsCls(from_stack_1v)
  loc_A96B96: LitStr "COMMIT;"
  loc_A96B99: Call EjecutarRsCls(from_stack_1v)
  loc_A96B9E: ExitProcHresult
  loc_A96B9F: LitStr "ROLLBACK;"
  loc_A96BA2: Call EjecutarRsCls(from_stack_1v)
  loc_A96BA7: LitI4 0
  loc_A96BAC: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_A96BAF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A96BB4: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '971440
  'Data Table: 4263DC
  loc_971418: ILdRf sSelect
  loc_97141B: FStStrCopy var_88
  loc_97141E: FLdPr Me
  loc_971421: MemLdRfVar from_stack_1.RsFrm
  loc_971424: ILdRf var_88
  loc_971427: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_97142C: LitVarStr var_98, "Primary"
  loc_971431: PopAdLdVar
  loc_971432: FLdPr Me
  loc_971435: LateIdCall
  loc_97143D: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '962B38
  'Data Table: 4263DC
  loc_962B20: ILdRf sSelect
  loc_962B23: FStStrCopy var_88
  loc_962B26: FLdPr Me
  loc_962B29: MemLdRfVar from_stack_1.global_56
  loc_962B2C: ILdRf var_88
  loc_962B2F: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_962B34: ExitProcHresult
End Sub

Public Sub EjecutarRsCls2(sSelect) '962AA0
  'Data Table: 4263DC
  loc_962A88: ILdRf sSelect
  loc_962A8B: FStStrCopy var_88
  loc_962A8E: FLdPr Me
  loc_962A91: MemLdRfVar from_stack_1.global_60
  loc_962A94: ILdRf var_88
  loc_962A97: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_962A9C: ExitProcHresult
End Sub

Public Sub Requery() '967850
  'Data Table: 4263DC
  loc_967830: FLdPr Me
  loc_967833: MemLdRfVar from_stack_1.RsFrm
  loc_967836: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_96783B: LitVarStr var_94, "Primary"
  loc_967840: PopAdLdVar
  loc_967841: FLdPr Me
  loc_967844: LateIdCall
  loc_96784C: ExitProcHresult
End Sub

Public Property Get DataSource() '971328
  'Data Table: 4263DC
  loc_971304: ZeroRetVal
  loc_971306: FLdRfVar var_8C
  loc_971309: FLdPr Me
  loc_97130C: MemLdPr RsFrm
  loc_97130F:  = Me.DataSource
  loc_971314: ILdRf var_8C
  loc_971317: CastAd
  loc_97131A: FStAdFunc var_88
  loc_97131D: FFree1Ad var_8C
  loc_971320: ExitProcCbHresult
End Sub

Public Function ValidaFepaCheq(FepaCheq) '982DF4
  'Data Table: 4263DC
  loc_982DC0: ILdRf FepaCheq
  loc_982DC3: FStStrCopy var_8C
  loc_982DC6: ZeroRetVal
  loc_982DC8: LitI2_Byte &HFF
  loc_982DCA: PopTmpLdAd2 var_92
  loc_982DCD: LitNothing
  loc_982DCF: CastAd
  loc_982DD2: FStAdFunc var_90
  loc_982DD5: FLdRfVar var_90
  loc_982DD8: LitStr "01/01/2018"
  loc_982DDB: LitI2_Byte &HFF
  loc_982DDD: LitI2_Byte 0
  loc_982DDF: ILdRf var_8C
  loc_982DE2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_982DE7: FStStr var_88
  loc_982DEA: FFree1Ad var_90
  loc_982DED: ExitProcCbHresult
End Function

Public Function ValidaNumeroCheque(iCodiBanc, lNumeMoba, iPeriInfo, lNumeOrpa) 'A24C34
  'Data Table: 4263DC
  loc_A24AD0: ZeroRetVal
  loc_A24AD2: LitStr "SELECT CodiBanc, NumeMoba, NumeOrpa FROM cheque WHERE CodiBanc = "
  loc_A24AD5: ILdRf iCodiBanc
  loc_A24AD8: CStrI4
  loc_A24ADA: FStStrNoPop var_8C
  loc_A24ADD: ConcatStr
  loc_A24ADE: FStStrNoPop var_90
  loc_A24AE1: LitStr " AND NumeMoba = "
  loc_A24AE4: ConcatStr
  loc_A24AE5: FStStrNoPop ValidaNumeroCheque
  loc_A24AE8: ILdRf lNumeMoba
  loc_A24AEB: CStrI4
  loc_A24AED: FStStrNoPop var_98
  loc_A24AF0: ConcatStr
  loc_A24AF1: FStStrNoPop var_9C
  loc_A24AF4: LitStr " AND PeriInfo = "
  loc_A24AF7: ConcatStr
  loc_A24AF8: FStStrNoPop var_A0
  loc_A24AFB: FLdI2 iPeriInfo
  loc_A24AFE: CStrUI1
  loc_A24B00: FStStrNoPop var_A4
  loc_A24B03: ConcatStr
  loc_A24B04: FStStrNoPop var_A8
  loc_A24B07: LitStr " AND NumeOrpa <> "
  loc_A24B0A: ConcatStr
  loc_A24B0B: FStStrNoPop var_AC
  loc_A24B0E: ILdRf lNumeOrpa
  loc_A24B11: CStrI4
  loc_A24B13: FStStrNoPop var_B0
  loc_A24B16: ConcatStr
  loc_A24B17: FStStrNoPop var_B4
  loc_A24B1A: Call EjecutarRsCls(from_stack_1v)
  loc_A24B1F: FFreeStr var_8C = "": var_90 = "": ValidaNumeroCheque = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A24B38: FLdRfVar var_B8
  loc_A24B3B: FLdPr Me
  loc_A24B3E: MemLdPr global_56
  loc_A24B41:  = Me.RecordCount
  loc_A24B46: ILdRf var_B8
  loc_A24B49: LitI4 0
  loc_A24B4E: GtI4
  loc_A24B4F: BranchF loc_A24C2D
  loc_A24B52: LitVarStr var_F0, "El Número de Cheque: "
  loc_A24B57: FLdRfVar var_E0
  loc_A24B5A: FLdRfVar var_D0
  loc_A24B5D: LitVarStr var_CC, "NumeMoba"
  loc_A24B62: PopAdLdVar
  loc_A24B63: FLdRfVar var_BC
  loc_A24B66: FLdPr Me
  loc_A24B69: MemLdPr global_56
  loc_A24B6C:  = Me.Fields
  loc_A24B71: FLdPr var_BC
  loc_A24B74: from_stack_2 = Me.Item(from_stack_1)
  loc_A24B79: FLdPr var_D0
  loc_A24B7C:  = Me.Value
  loc_A24B81: FLdRfVar var_E0
  loc_A24B84: ConcatVar var_100
  loc_A24B88: LitVarStr var_110, " del Banco: "
  loc_A24B8D: ConcatVar var_120
  loc_A24B91: FLdRfVar var_148
  loc_A24B94: FLdRfVar var_138
  loc_A24B97: LitVarStr var_134, "CodiBanc"
  loc_A24B9C: PopAdLdVar
  loc_A24B9D: FLdRfVar var_124
  loc_A24BA0: FLdPr Me
  loc_A24BA3: MemLdPr global_56
  loc_A24BA6:  = Me.Fields
  loc_A24BAB: FLdPr var_124
  loc_A24BAE: from_stack_2 = Me.Item(from_stack_1)
  loc_A24BB3: FLdPr var_138
  loc_A24BB6:  = Me.Value
  loc_A24BBB: FLdRfVar var_148
  loc_A24BBE: ConcatVar var_158
  loc_A24BC2: LitVarStr var_168, " YA EXISTE en la Orden de Pago número: "
  loc_A24BC7: ConcatVar var_178
  loc_A24BCB: FLdRfVar var_1A0
  loc_A24BCE: FLdRfVar var_190
  loc_A24BD1: LitVarStr var_18C, "NumeOrpa"
  loc_A24BD6: PopAdLdVar
  loc_A24BD7: FLdRfVar var_17C
  loc_A24BDA: FLdPr Me
  loc_A24BDD: MemLdPr global_56
  loc_A24BE0:  = Me.Fields
  loc_A24BE5: FLdPr var_17C
  loc_A24BE8: from_stack_2 = Me.Item(from_stack_1)
  loc_A24BED: FLdPr var_190
  loc_A24BF0:  = Me.Value
  loc_A24BF5: FLdRfVar var_1A0
  loc_A24BF8: ConcatVar var_1B0
  loc_A24BFC: LitVarStr var_1C0, ". Verifique..."
  loc_A24C01: ConcatVar var_1D0
  loc_A24C05: CStrVarTmp
  loc_A24C06: FStStr var_88
  loc_A24C09: FFreeAd var_BC = "": var_D0 = "": var_124 = "": var_138 = "": var_17C = ""
  loc_A24C18: FFreeVar var_E0 = "": var_100 = "": var_120 = "": var_148 = "": var_158 = "": var_178 = "": var_1A0 = "": var_1B0 = ""
  loc_A24C2D: ExitProcCbHresult
End Function

Public Function ExisteNumeCheq(PeriInfo, CodiBanc, NumeMoba) '9A8CCC
  'Data Table: 4263DC
  loc_9A8C50: LitStr "SELECT * FROM movibanco WHERE PeriInfo = "
  loc_9A8C53: FLdI2 PeriInfo
  loc_9A8C56: CStrUI1
  loc_9A8C58: FStStrNoPop var_8C
  loc_9A8C5B: ConcatStr
  loc_9A8C5C: FStStrNoPop var_90
  loc_9A8C5F: LitStr " AND CodiBanc = "
  loc_9A8C62: ConcatStr
  loc_9A8C63: FStStrNoPop ExisteNumeCheq
  loc_9A8C66: ILdRf CodiBanc
  loc_9A8C69: CStrI4
  loc_9A8C6B: FStStrNoPop var_98
  loc_9A8C6E: ConcatStr
  loc_9A8C6F: FStStrNoPop var_9C
  loc_9A8C72: LitStr " AND NumeMoba = "
  loc_9A8C75: ConcatStr
  loc_9A8C76: FStStrNoPop var_A0
  loc_9A8C79: ILdRf NumeMoba
  loc_9A8C7C: CStrI4
  loc_9A8C7E: FStStrNoPop var_A4
  loc_9A8C81: ConcatStr
  loc_9A8C82: FStStrNoPop var_A8
  loc_9A8C85: Call EjecutarRsCls(from_stack_1v)
  loc_9A8C8A: FFreeStr var_8C = "": var_90 = "": ExisteNumeCheq = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9A8C9D: FLdRfVar var_AC
  loc_9A8CA0: FLdPr Me
  loc_9A8CA3: MemLdPr global_56
  loc_9A8CA6:  = Me.RecordCount
  loc_9A8CAB: ILdRf var_AC
  loc_9A8CAE: LitI4 0
  loc_9A8CB3: GtI4
  loc_9A8CB4: BranchF loc_9A8CBF
  loc_9A8CB7: LitI2_Byte &HFF
  loc_9A8CB9: FStI2 var_86
  loc_9A8CBC: Branch loc_9A8CC4
  loc_9A8CBF: LitI2_Byte 0
  loc_9A8CC1: FStI2 var_86
  loc_9A8CC4: ExitProcCbHresult
End Function

Public Function SaldoLibroBanco(CodiBanc, FechMoba) '9CDDF4
  'Data Table: 4263DC
  loc_9CDD2C: ILdRf FechMoba
  loc_9CDD2F: FStStrCopy var_90
  loc_9CDD32: LitStr "SELECT IFNULL(Sum(DebeMoba)-Sum(HabeMoba),0) AS saldo"
  loc_9CDD35: LitStr " FROM movibanco"
  loc_9CDD38: ConcatStr
  loc_9CDD39: FStStrNoPop SaldoLibroBanco
  loc_9CDD3C: LitStr " WHERE CodiBanc = "
  loc_9CDD3F: ConcatStr
  loc_9CDD40: FStStrNoPop var_98
  loc_9CDD43: ILdRf CodiBanc
  loc_9CDD46: CStrI4
  loc_9CDD48: FStStrNoPop var_9C
  loc_9CDD4B: ConcatStr
  loc_9CDD4C: FStStrNoPop var_A0
  loc_9CDD4F: LitStr " AND FechMoba <= "
  loc_9CDD52: ConcatStr
  loc_9CDD53: FStStrNoPop var_D4
  loc_9CDD56: LitI4 1
  loc_9CDD5B: LitI4 1
  loc_9CDD60: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_9CDD65: FStVarCopyObj var_D0
  loc_9CDD68: FLdRfVar var_D0
  loc_9CDD6B: FLdRfVar var_90
  loc_9CDD6E: CVarRef
  loc_9CDD73: ImpAdCallI2 Format$(, )
  loc_9CDD78: FStStrNoPop var_D8
  loc_9CDD7B: ConcatStr
  loc_9CDD7C: FStStrNoPop var_DC
  loc_9CDD7F: Call EjecutarRsCls(from_stack_1v)
  loc_9CDD84: FFreeStr SaldoLibroBanco = "": var_98 = "": var_9C = "": var_A0 = "": var_D4 = "": var_D8 = ""
  loc_9CDD95: FFree1Var var_D0 = ""
  loc_9CDD98: FLdRfVar var_E0
  loc_9CDD9B: FLdPr Me
  loc_9CDD9E: MemLdPr global_56
  loc_9CDDA1:  = Me.RecordCount
  loc_9CDDA6: ILdRf var_E0
  loc_9CDDA9: LitI4 0
  loc_9CDDAE: GtI4
  loc_9CDDAF: BranchF loc_9CDDEE
  loc_9CDDB2: FLdRfVar var_D0
  loc_9CDDB5: FLdRfVar var_E8
  loc_9CDDB8: LitVarStr var_B0, "Saldo"
  loc_9CDDBD: PopAdLdVar
  loc_9CDDBE: FLdRfVar var_E4
  loc_9CDDC1: FLdPr Me
  loc_9CDDC4: MemLdPr global_56
  loc_9CDDC7:  = Me.Fields
  loc_9CDDCC: FLdPr var_E4
  loc_9CDDCF: from_stack_2 = Me.Item(from_stack_1)
  loc_9CDDD4: FLdPr var_E8
  loc_9CDDD7:  = Me.Value
  loc_9CDDDC: FLdRfVar var_D0
  loc_9CDDDF: FnCDblVar
  loc_9CDDE1: FStFPR8 var_8C
  loc_9CDDE4: FFreeAd var_E4 = ""
  loc_9CDDEB: FFree1Var var_D0 = ""
  loc_9CDDEE: ExitProcCbHresult
End Function

Public Function DescubiertoPermitido(PeriInfo, CodiBanc) '9BC89C
  'Data Table: 4263DC
  loc_9BC7F8: LitStr "SELECT DescBanc"
  loc_9BC7FB: LitStr " FROM banco"
  loc_9BC7FE: ConcatStr
  loc_9BC7FF: FStStrNoPop var_90
  loc_9BC802: LitStr " WHERE PeriInfo = "
  loc_9BC805: ConcatStr
  loc_9BC806: FStStrNoPop DescubiertoPermitido
  loc_9BC809: FLdI2 PeriInfo
  loc_9BC80C: CStrUI1
  loc_9BC80E: FStStrNoPop var_98
  loc_9BC811: ConcatStr
  loc_9BC812: FStStrNoPop var_9C
  loc_9BC815: LitStr " AND CodiBanc = "
  loc_9BC818: ConcatStr
  loc_9BC819: FStStrNoPop var_A0
  loc_9BC81C: ILdRf CodiBanc
  loc_9BC81F: CStrI4
  loc_9BC821: FStStrNoPop var_A4
  loc_9BC824: ConcatStr
  loc_9BC825: FStStrNoPop var_A8
  loc_9BC828: Call EjecutarRsCls(from_stack_1v)
  loc_9BC82D: FFreeStr var_90 = "": DescubiertoPermitido = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9BC83E: FLdRfVar var_AC
  loc_9BC841: FLdPr Me
  loc_9BC844: MemLdPr global_56
  loc_9BC847:  = Me.RecordCount
  loc_9BC84C: ILdRf var_AC
  loc_9BC84F: LitI4 0
  loc_9BC854: GtI4
  loc_9BC855: BranchF loc_9BC894
  loc_9BC858: FLdRfVar var_D4
  loc_9BC85B: FLdRfVar var_C4
  loc_9BC85E: LitVarStr var_C0, "DescBanc"
  loc_9BC863: PopAdLdVar
  loc_9BC864: FLdRfVar var_B0
  loc_9BC867: FLdPr Me
  loc_9BC86A: MemLdPr global_56
  loc_9BC86D:  = Me.Fields
  loc_9BC872: FLdPr var_B0
  loc_9BC875: from_stack_2 = Me.Item(from_stack_1)
  loc_9BC87A: FLdPr var_C4
  loc_9BC87D:  = Me.Value
  loc_9BC882: FLdRfVar var_D4
  loc_9BC885: FnCDblVar
  loc_9BC887: FStFPR8 var_8C
  loc_9BC88A: FFreeAd var_B0 = ""
  loc_9BC891: FFree1Var var_D4 = ""
  loc_9BC894: ExitProcCbHresult
End Function

Public Function DescubiertoAdvertencia(PeriInfo, CodiBanc) '9C1A3C
  'Data Table: 4263DC
  loc_9C1990: LitStr "SELECT DescAdvBanc"
  loc_9C1993: LitStr " FROM banco"
  loc_9C1996: ConcatStr
  loc_9C1997: FStStrNoPop var_8C
  loc_9C199A: LitStr " WHERE PeriInfo = "
  loc_9C199D: ConcatStr
  loc_9C199E: FStStrNoPop var_90
  loc_9C19A1: FLdI2 PeriInfo
  loc_9C19A4: CStrUI1
  loc_9C19A6: FStStrNoPop DescubiertoAdvertencia
  loc_9C19A9: ConcatStr
  loc_9C19AA: FStStrNoPop var_98
  loc_9C19AD: LitStr " AND CodiBanc = "
  loc_9C19B0: ConcatStr
  loc_9C19B1: FStStrNoPop var_9C
  loc_9C19B4: ILdRf CodiBanc
  loc_9C19B7: CStrI4
  loc_9C19B9: FStStrNoPop var_A0
  loc_9C19BC: ConcatStr
  loc_9C19BD: FStStrNoPop var_A4
  loc_9C19C0: LitStr ";"
  loc_9C19C3: ConcatStr
  loc_9C19C4: FStStrNoPop var_A8
  loc_9C19C7: Call EjecutarRsCls(from_stack_1v)
  loc_9C19CC: FFreeStr var_8C = "": var_90 = "": DescubiertoAdvertencia = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9C19DF: FLdRfVar var_AC
  loc_9C19E2: FLdPr Me
  loc_9C19E5: MemLdPr global_56
  loc_9C19E8:  = Me.RecordCount
  loc_9C19ED: ILdRf var_AC
  loc_9C19F0: LitI4 0
  loc_9C19F5: GtI4
  loc_9C19F6: BranchF loc_9C1A36
  loc_9C19F9: FLdRfVar var_D4
  loc_9C19FC: FLdRfVar var_C4
  loc_9C19FF: LitVarStr var_C0, "DescAdvBanc"
  loc_9C1A04: PopAdLdVar
  loc_9C1A05: FLdRfVar var_B0
  loc_9C1A08: FLdPr Me
  loc_9C1A0B: MemLdPr global_56
  loc_9C1A0E:  = Me.Fields
  loc_9C1A13: FLdPr var_B0
  loc_9C1A16: from_stack_2 = Me.Item(from_stack_1)
  loc_9C1A1B: FLdPr var_C4
  loc_9C1A1E:  = Me.Value
  loc_9C1A23: FLdRfVar var_D4
  loc_9C1A26: FnCByteVar
  loc_9C1A28: FStUI1 var_86
  loc_9C1A2C: FFreeAd var_B0 = ""
  loc_9C1A33: FFree1Var var_D4 = ""
  loc_9C1A36: ExitProcCbHresult
End Function

Public Function ChequeyRetencion(ExpeImpu, NumeLiqu, CucuPers) 'A36EBC
  'Data Table: 4263DC
  loc_A36D08: ILdRf ExpeImpu
  loc_A36D0B: FStStrCopy var_8C
  loc_A36D0E: ILdRf CucuPers
  loc_A36D11: FStStrCopy var_90
  loc_A36D14: ZeroRetVal
  loc_A36D16: LitStr "SELECT liquidaneto.*, DetaRete"
  loc_A36D19: LitStr " FROM liquidaneto"
  loc_A36D1C: ConcatStr
  loc_A36D1D: FStStrNoPop ChequeyRetencion
  loc_A36D20: LitStr " INNER JOIN retenciones ON retenciones.PeriInfo = liquidaneto.PeriInfo AND retenciones.CodiRete = liquidaneto.CodiRete"
  loc_A36D23: ConcatStr
  loc_A36D24: FStStrNoPop var_98
  loc_A36D27: LitStr " WHERE ExpeImpu = '"
  loc_A36D2A: ConcatStr
  loc_A36D2B: FStStrNoPop var_9C
  loc_A36D2E: ILdRf var_8C
  loc_A36D31: ConcatStr
  loc_A36D32: FStStrNoPop var_A0
  loc_A36D35: LitStr "' AND NumeLiqu = "
  loc_A36D38: ConcatStr
  loc_A36D39: FStStrNoPop var_A4
  loc_A36D3C: FLdI2 NumeLiqu
  loc_A36D3F: CStrUI1
  loc_A36D41: FStStrNoPop var_A8
  loc_A36D44: ConcatStr
  loc_A36D45: FStStrNoPop var_AC
  loc_A36D48: LitStr " AND CucuPers = "
  loc_A36D4B: ConcatStr
  loc_A36D4C: FStStrNoPop var_B0
  loc_A36D4F: ILdRf var_90
  loc_A36D52: ConcatStr
  loc_A36D53: FStStrNoPop var_B4
  loc_A36D56: LitStr " AND liquidaneto.CodiRete > 0"
  loc_A36D59: ConcatStr
  loc_A36D5A: FStStrNoPop var_B8
  loc_A36D5D: Call EjecutarRsCls(from_stack_1v)
  loc_A36D62: FFreeStr ChequeyRetencion = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A36D79: FLdRfVar var_BC
  loc_A36D7C: FLdPr Me
  loc_A36D7F: MemLdPr global_56
  loc_A36D82:  = Me.RecordCount
  loc_A36D87: ILdRf var_BC
  loc_A36D8A: LitI4 0
  loc_A36D8F: GtI4
  loc_A36D90: BranchF loc_A36EB5
  loc_A36D93: FLdPr Me
  loc_A36D96: MemLdPr global_56
  loc_A36D99: Me.MoveFirst
  loc_A36D9E: FLdRfVar var_BE
  loc_A36DA1: FLdPr Me
  loc_A36DA4: MemLdPr global_56
  loc_A36DA7:  = Me.EOF
  loc_A36DAC: FLdI2 var_BE
  loc_A36DAF: NotI4
  loc_A36DB0: BranchF loc_A36EB5
  loc_A36DB3: FLdRfVar var_140
  loc_A36DB6: LitVarStr var_13C, "ImpoLine"
  loc_A36DBB: PopAdLdVar
  loc_A36DBC: FLdRfVar var_12C
  loc_A36DBF: FLdPr Me
  loc_A36DC2: MemLdPr global_56
  loc_A36DC5:  = Me.Fields
  loc_A36DCA: FLdPr var_12C
  loc_A36DCD: from_stack_2 = Me.Item(from_stack_1)
  loc_A36DD2: ILdRf var_88
  loc_A36DD5: CVarStr var_F8
  loc_A36DD8: FLdRfVar var_E8
  loc_A36DDB: FLdRfVar var_D8
  loc_A36DDE: LitVarStr var_D4, "DetaRete"
  loc_A36DE3: PopAdLdVar
  loc_A36DE4: FLdRfVar var_C4
  loc_A36DE7: FLdPr Me
  loc_A36DEA: MemLdPr global_56
  loc_A36DED:  = Me.Fields
  loc_A36DF2: FLdPr var_C4
  loc_A36DF5: from_stack_2 = Me.Item(from_stack_1)
  loc_A36DFA: FLdPr var_D8
  loc_A36DFD:  = Me.Value
  loc_A36E02: FLdRfVar var_E8
  loc_A36E05: ConcatVar var_108
  loc_A36E09: LitVarStr var_118, " "
  loc_A36E0E: ConcatVar var_128
  loc_A36E12: LitI4 1
  loc_A36E17: LitI4 1
  loc_A36E1C: LitVarStr var_160, "currency"
  loc_A36E21: FStVarCopyObj var_170
  loc_A36E24: FLdRfVar var_170
  loc_A36E27: FLdZeroAd var_140
  loc_A36E2A: CVarAd
  loc_A36E2E: ImpAdCallI2 Format$(, )
  loc_A36E33: CVarStr var_180
  loc_A36E36: ConcatVar var_190
  loc_A36E3A: LitVarStr var_1A0, " certificado número: "
  loc_A36E3F: ConcatVar var_1B0
  loc_A36E43: FLdRfVar var_1D8
  loc_A36E46: FLdRfVar var_1C8
  loc_A36E49: LitVarStr var_1C4, "CertLine"
  loc_A36E4E: PopAdLdVar
  loc_A36E4F: FLdRfVar var_1B4
  loc_A36E52: FLdPr Me
  loc_A36E55: MemLdPr global_56
  loc_A36E58:  = Me.Fields
  loc_A36E5D: FLdPr var_1B4
  loc_A36E60: from_stack_2 = Me.Item(from_stack_1)
  loc_A36E65: FLdPr var_1C8
  loc_A36E68:  = Me.Value
  loc_A36E6D: FLdRfVar var_1D8
  loc_A36E70: ConcatVar var_1E8
  loc_A36E74: LitVarStr var_1F8, vbCrLf
  loc_A36E79: ConcatVar var_208
  loc_A36E7D: CStrVarTmp
  loc_A36E7E: FStStr var_88
  loc_A36E81: FFreeAd var_C4 = "": var_D8 = "": var_12C = "": var_1B4 = ""
  loc_A36E8E: FFreeVar var_E8 = "": var_108 = "": var_150 = "": var_170 = "": var_128 = "": var_180 = "": var_190 = "": var_1B0 = "": var_1D8 = "": var_1E8 = ""
  loc_A36EA7: FLdPr Me
  loc_A36EAA: MemLdPr global_56
  loc_A36EAD: Me.MoveNext
  loc_A36EB2: Branch loc_A36D9E
  loc_A36EB5: ExitProcCbHresult
End Function

Public Function DividirVariosCheques() 'A119A4
  'Data Table: 4263DC
  loc_A11858: ZeroRetVal
  loc_A1185A: LitVar_Missing var_174
  loc_A1185D: LitVar_Missing var_154
  loc_A11860: LitVar_Missing var_134
  loc_A11863: LitVar_Missing var_114
  loc_A11866: LitVar_Missing var_F4
  loc_A11869: LitVarStr var_C4, "Dividir Varios Cheques"
  loc_A1186E: FStVarCopyObj var_D4
  loc_A11871: FLdRfVar var_D4
  loc_A11874: LitVarStr var_A4, "Ingrese el nombre del archivo csv..."
  loc_A11879: FStVarCopyObj var_B4
  loc_A1187C: FLdRfVar var_B4
  loc_A1187F: ImpAdCallI2 InputBox(, , , , , , )
  loc_A11884: FStStr var_90
  loc_A11887: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = ""
  loc_A11898: LitI2_Byte 0
  loc_A1189A: PopTmpLdAd2 var_17A
  loc_A1189D: LitI2_Byte 0
  loc_A1189F: PopTmpLdAd2 var_178
  loc_A118A2: LitI2_Byte 0
  loc_A118A4: PopTmpLdAd2 var_176
  loc_A118A7: ILdRf var_90
  loc_A118AA: LitStr "nombre del archivo"
  loc_A118AD: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A118B2: FStStr DividirVariosCheques
  loc_A118B5: ILdRf DividirVariosCheques
  loc_A118B8: LitStr vbNullString
  loc_A118BB: NeStr
  loc_A118BD: BranchF loc_A118D3
  loc_A118C0: LitI4 0
  loc_A118C5: ILdRf DividirVariosCheques
  loc_A118C8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A118CD: ExitProcCbHresult
  loc_A118D3: ImpAdCallI2 Proc_261_16_9B9214()
  loc_A118D8: ImpAdStStr MemVar_C3D05C
  loc_A118DC: FLdRfVar var_176
  loc_A118DF: ImpAdLdI4 MemVar_C3D05C
  loc_A118E2: LitStr "\"
  loc_A118E5: ConcatStr
  loc_A118E6: FStStrNoPop var_180
  loc_A118E9: ILdRf var_90
  loc_A118EC: ConcatStr
  loc_A118ED: FStStrNoPop var_184
  loc_A118F0: FLdRfVar var_8C
  loc_A118F3: NewIfNullPr IFileSystem3
  loc_A118F6: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A118FB: FLdI2 var_176
  loc_A118FE: NotI4
  loc_A118FF: FFreeStr var_180 = ""
  loc_A11906: BranchF loc_A11915
  loc_A11909: LitStr "El archivo NO existe. Verifique..."
  loc_A1190C: FStStrCopy var_88
  loc_A1190F: ExitProcCbHresult
  loc_A11915: LitI4 0
  loc_A1191A: LitI4 -1
  loc_A1191F: LitI4 1
  loc_A11924: LitStr "\\"
  loc_A11927: LitStr "\"
  loc_A1192A: ImpAdLdI4 MemVar_C3D05C
  loc_A1192D: ImpAdCallI2 Replace(, , , , , )
  loc_A11932: ImpAdStStr MemVar_C3D05C
  loc_A11936: OnErrorGoto loc_A1198D
  loc_A11939: LitStr "START TRANSACTION;"
  loc_A1193C: Call EjecutarRsCls(from_stack_1v)
  loc_A11941: LitStr "TRUNCATE TABLE ontpres`.`ttdivcheque`; "
  loc_A11944: LitStr "LOAD DATA LOW_PRIORITY LOCAL INFILE '"
  loc_A11947: ConcatStr
  loc_A11948: FStStrNoPop var_180
  loc_A1194B: ImpAdLdI4 MemVar_C3D05C
  loc_A1194E: ConcatStr
  loc_A1194F: FStStrNoPop var_184
  loc_A11952: LitStr "\\"
  loc_A11955: ConcatStr
  loc_A11956: FStStrNoPop var_188
  loc_A11959: ILdRf var_90
  loc_A1195C: ConcatStr
  loc_A1195D: FStStrNoPop var_18C
  loc_A11960: LitStr "' INTO TABLE ontpres`.`ttdivcheque` FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '""' ESCAPED BY '""' LINES TERMINATED BY '\r\n' (nombre,importe);"
  loc_A11963: ConcatStr
  loc_A11964: FStStrNoPop var_190
  loc_A11967: Call EjecutarRsCls(from_stack_1v)
  loc_A1196C: FFreeStr var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_A11979: LitStr "COMMIT;"
  loc_A1197C: Call EjecutarRsCls(from_stack_1v)
  loc_A11981: LitStr vbNullString
  loc_A11984: FStStrCopy var_88
  loc_A11987: ExitProcCbHresult
  loc_A1198D: LitStr "ROLLBACK;"
  loc_A11990: Call EjecutarRsCls(from_stack_1v)
  loc_A11995: LitStr "Error en la importación del CSV. Verifique..."
  loc_A11998: FStStrCopy var_88
  loc_A1199B: ExitProcCbHresult
  loc_A119A1: BranchFVar
End Function

Public Function ExisteMoviBanc(PeriInfo, CodiBanc, CodiTimb, NumeMoba, FechMoba) 'A27B10
  'Data Table: 4263DC
  loc_A27990: ILdRf FechMoba
  loc_A27993: FStStrCopy var_8C
  loc_A27996: ZeroRetVal
  loc_A27998: OnErrorGoto loc_A27B0A
  loc_A2799B: LitStr "SELECT IFNULL(Group_concat(Distinct NumeOrpa),0) NumeOrpa"
  loc_A2799E: LitStr " FROM movibanco"
  loc_A279A1: ConcatStr
  loc_A279A2: FStStrNoPop var_90
  loc_A279A5: LitStr " WHERE PeriInfo = "
  loc_A279A8: ConcatStr
  loc_A279A9: FStStrNoPop ExisteMoviBanc
  loc_A279AC: FLdI2 PeriInfo
  loc_A279AF: CStrUI1
  loc_A279B1: FStStrNoPop var_98
  loc_A279B4: ConcatStr
  loc_A279B5: FStStrNoPop var_9C
  loc_A279B8: LitStr " AND CodiBanc = "
  loc_A279BB: ConcatStr
  loc_A279BC: FStStrNoPop var_A0
  loc_A279BF: ILdRf CodiBanc
  loc_A279C2: CStrI4
  loc_A279C4: FStStrNoPop var_A4
  loc_A279C7: ConcatStr
  loc_A279C8: FStStrNoPop var_A8
  loc_A279CB: LitStr " AND CodiTimb = "
  loc_A279CE: ConcatStr
  loc_A279CF: FStStrNoPop var_AC
  loc_A279D2: FLdI2 CodiTimb
  loc_A279D5: CStrUI1
  loc_A279D7: FStStrNoPop var_B0
  loc_A279DA: ConcatStr
  loc_A279DB: FStStrNoPop var_B4
  loc_A279DE: LitStr " AND NumeMoba = "
  loc_A279E1: ConcatStr
  loc_A279E2: FStStrNoPop var_B8
  loc_A279E5: ILdRf NumeMoba
  loc_A279E8: CStrI4
  loc_A279EA: FStStrNoPop var_BC
  loc_A279ED: ConcatStr
  loc_A279EE: FStStrNoPop var_C0
  loc_A279F1: LitStr " AND FechMoba = "
  loc_A279F4: ConcatStr
  loc_A279F5: FStStrNoPop var_F4
  loc_A279F8: LitI4 1
  loc_A279FD: LitI4 1
  loc_A27A02: LitVarStr var_E0, "'yyyy-mm-dd'"
  loc_A27A07: FStVarCopyObj var_F0
  loc_A27A0A: FLdRfVar var_F0
  loc_A27A0D: FLdRfVar var_8C
  loc_A27A10: CVarRef
  loc_A27A15: ImpAdCallI2 Format$(, )
  loc_A27A1A: FStStrNoPop var_F8
  loc_A27A1D: ConcatStr
  loc_A27A1E: FStStrNoPop var_FC
  loc_A27A21: LitStr ";"
  loc_A27A24: ConcatStr
  loc_A27A25: FStStrNoPop var_100
  loc_A27A28: Call EjecutarRsCls(from_stack_1v)
  loc_A27A2D: FFreeStr var_90 = "": ExisteMoviBanc = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_A27A52: FFree1Var var_F0 = ""
  loc_A27A55: FLdRfVar var_104
  loc_A27A58: FLdPr Me
  loc_A27A5B: MemLdPr global_56
  loc_A27A5E:  = Me.RecordCount
  loc_A27A63: ILdRf var_104
  loc_A27A66: LitI4 1
  loc_A27A6B: EqI4
  loc_A27A6C: BranchF loc_A27B04
  loc_A27A6F: FLdRfVar var_F0
  loc_A27A72: FLdRfVar var_10C
  loc_A27A75: LitVarStr var_D0, "NumeOrpa"
  loc_A27A7A: PopAdLdVar
  loc_A27A7B: FLdRfVar var_108
  loc_A27A7E: FLdPr Me
  loc_A27A81: MemLdPr global_56
  loc_A27A84:  = Me.Fields
  loc_A27A89: FLdPr var_108
  loc_A27A8C: from_stack_2 = Me.Item(from_stack_1)
  loc_A27A91: FLdPr var_10C
  loc_A27A94:  = Me.Value
  loc_A27A99: FLdRfVar var_F0
  loc_A27A9C: LitVarI2 var_E0, 0
  loc_A27AA1: HardType
  loc_A27AA2: NeVarBool
  loc_A27AA4: FFreeAd var_108 = ""
  loc_A27AAB: FFree1Var var_F0 = ""
  loc_A27AAE: BranchF loc_A27B04
  loc_A27AB1: LitVarStr var_E0, "Ya existe el movimiento en Orden de pago: "
  loc_A27AB6: FLdRfVar var_F0
  loc_A27AB9: FLdRfVar var_10C
  loc_A27ABC: LitVarStr var_D0, "NumeOrpa"
  loc_A27AC1: PopAdLdVar
  loc_A27AC2: FLdRfVar var_108
  loc_A27AC5: FLdPr Me
  loc_A27AC8: MemLdPr global_56
  loc_A27ACB:  = Me.Fields
  loc_A27AD0: FLdPr var_108
  loc_A27AD3: from_stack_2 = Me.Item(from_stack_1)
  loc_A27AD8: FLdPr var_10C
  loc_A27ADB:  = Me.Value
  loc_A27AE0: FLdRfVar var_F0
  loc_A27AE3: ConcatVar var_11C
  loc_A27AE7: LitVarStr var_12C, ". Verifique..."
  loc_A27AEC: ConcatVar var_13C
  loc_A27AF0: CStrVarTmp
  loc_A27AF1: FStStr var_88
  loc_A27AF4: FFreeAd var_108 = ""
  loc_A27AFB: FFreeVar var_F0 = "": var_11C = ""
  loc_A27B04: ExitProcCbHresult
  loc_A27B0A: ExitProcCbHresult
End Function

Private Function Proc_6_38_971B10() '971B10
  'Data Table: 4263DC
  loc_971AEC: LitStr "Primary"
  loc_971AEF: FLdPr Me
  loc_971AF2: LateIdLdVar var_94 DispID_4 0
  loc_971AF9: CastAdVar Me
  loc_971AFD: FStAdFunc var_98
  loc_971B00: FLdPr var_98
  loc_971B08: FFree1Ad var_98
  loc_971B0B: FFree1Var var_94 = ""
  loc_971B0E: ExitProcHresult
End Function

Private Function Proc_6_39_96789C(arg_C) '96789C
  'Data Table: 4263DC
  loc_967880: ILdI4 arg_C
  loc_967883: FStStrCopy var_88
  loc_967886: ILdRf var_88
  loc_967889: LitStr "Primary"
  loc_96788C: EqStr
  loc_96788E: BranchF loc_96789B
  loc_967891: FLdPr Me
  loc_967894: MemLdStr RsFrm
  loc_967897: IStAd
  loc_96789B: ExitProcHresult
End Function
