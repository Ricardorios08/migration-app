VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsconcepto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '4351AC
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4351BB
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4351CA
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9EC17C
  'Data Table: 434E24
  loc_9EC154: FLdRfVar var_88
  loc_9EC157: FLdPr Me
  loc_9EC15A: MemLdPr RsFrm
  loc_9EC15D:  = Me.RecordCount
  loc_9EC162: ILdRf var_88
  loc_9EC165: LitI4 0
  loc_9EC16A: GtI4
  loc_9EC16B: BranchF loc_9EC179
  loc_9EC16E: FLdPr Me
  loc_9EC171: MemLdPr RsFrm
  loc_9EC174: Me.MoveFirst
  loc_9EC179: ExitProcHresult
  loc_9EC17A: FLdPr var_53A0
End Sub

Public Sub MoveLast() '9EBE64
  'Data Table: 434E24
  loc_9EBE3C: FLdRfVar var_88
  loc_9EBE3F: FLdPr Me
  loc_9EBE42: MemLdPr RsFrm
  loc_9EBE45:  = Me.RecordCount
  loc_9EBE4A: ILdRf var_88
  loc_9EBE4D: LitI4 0
  loc_9EBE52: GtI4
  loc_9EBE53: BranchF loc_9EBE61
  loc_9EBE56: FLdPr Me
  loc_9EBE59: MemLdPr RsFrm
  loc_9EBE5C: Me.MoveLast
  loc_9EBE61: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6B680
  'Data Table: 434E24
  loc_A6B608: FLdRfVar var_86
  loc_A6B60B: FLdPr Me
  loc_A6B60E: MemLdPr RsFrm
  loc_A6B611:  = Me.EOF
  loc_A6B616: FLdI2 var_86
  loc_A6B619: NotI4
  loc_A6B61A: FLdRfVar var_8C
  loc_A6B61D: FLdPr Me
  loc_A6B620: MemLdPr RsFrm
  loc_A6B623:  = Me.RecordCount
  loc_A6B628: ILdRf var_8C
  loc_A6B62B: LitI4 0
  loc_A6B630: GtI4
  loc_A6B631: AndI4
  loc_A6B632: BranchF loc_A6B640
  loc_A6B635: FLdPr Me
  loc_A6B638: MemLdPr RsFrm
  loc_A6B63B: Me.MoveNext
  loc_A6B640: FLdRfVar var_86
  loc_A6B643: FLdPr Me
  loc_A6B646: MemLdPr RsFrm
  loc_A6B649:  = Me.EOF
  loc_A6B64E: FLdI2 var_86
  loc_A6B651: FLdRfVar var_8C
  loc_A6B654: FLdPr Me
  loc_A6B657: MemLdPr RsFrm
  loc_A6B65A:  = Me.RecordCount
  loc_A6B65F: ILdRf var_8C
  loc_A6B662: LitI4 0
  loc_A6B667: GtI4
  loc_A6B668: AndI4
  loc_A6B669: BranchF loc_A6B67C
  loc_A6B66C: ImpAdCallFPR4 Beep()
  loc_A6B671: FLdPr Me
  loc_A6B674: MemLdPr RsFrm
  loc_A6B677: Me.MoveLast
  loc_A6B67C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B186C
  'Data Table: 434E24
  loc_9B1860: FLdPr Me
  loc_9B1863: MemLdPr RsFrm
  loc_9B1866: Me.MoveNext
  loc_9B186B: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B9D54
  'Data Table: 434E24
  loc_9B9D40: LitVar_Missing var_94
  loc_9B9D43: PopAdLdVar
  loc_9B9D44: ILdI2 iValor
  loc_9B9D47: CI4UI1
  loc_9B9D48: FLdPr Me
  loc_9B9D4B: MemLdPr RsFrm
  loc_9B9D4E: Me.Move from_stack_1, from_stack_2
  loc_9B9D53: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A69F88
  'Data Table: 434E24
  loc_A69F10: FLdRfVar var_86
  loc_A69F13: FLdPr Me
  loc_A69F16: MemLdPr RsFrm
  loc_A69F19:  = Me.BOF
  loc_A69F1E: FLdI2 var_86
  loc_A69F21: NotI4
  loc_A69F22: FLdRfVar var_8C
  loc_A69F25: FLdPr Me
  loc_A69F28: MemLdPr RsFrm
  loc_A69F2B:  = Me.RecordCount
  loc_A69F30: ILdRf var_8C
  loc_A69F33: LitI4 0
  loc_A69F38: GtI4
  loc_A69F39: AndI4
  loc_A69F3A: BranchF loc_A69F48
  loc_A69F3D: FLdPr Me
  loc_A69F40: MemLdPr RsFrm
  loc_A69F43: Me.MovePrevious
  loc_A69F48: FLdRfVar var_86
  loc_A69F4B: FLdPr Me
  loc_A69F4E: MemLdPr RsFrm
  loc_A69F51:  = Me.BOF
  loc_A69F56: FLdI2 var_86
  loc_A69F59: FLdRfVar var_8C
  loc_A69F5C: FLdPr Me
  loc_A69F5F: MemLdPr RsFrm
  loc_A69F62:  = Me.RecordCount
  loc_A69F67: ILdRf var_8C
  loc_A69F6A: LitI4 0
  loc_A69F6F: GtI4
  loc_A69F70: AndI4
  loc_A69F71: BranchF loc_A69F84
  loc_A69F74: ImpAdCallFPR4 Beep()
  loc_A69F79: FLdPr Me
  loc_A69F7C: MemLdPr RsFrm
  loc_A69F7F: Me.MoveFirst
  loc_A69F84: ExitProcHresult
End Sub

Public Property Get EOF() '9D12A0
  'Data Table: 434E24
  loc_9D1284: FLdRfVar var_88
  loc_9D1287: FLdPr Me
  loc_9D128A: MemLdPr RsFrm
  loc_9D128D:  = Me.EOF
  loc_9D1292: FLdI2 var_88
  loc_9D1295: FStI2 var_86
  loc_9D1298: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D1254
  'Data Table: 434E24
  loc_9D1238: FLdRfVar var_88
  loc_9D123B: FLdPr Me
  loc_9D123E: MemLdPr RsFrm
  loc_9D1241:  = Me.BOF
  loc_9D1246: FLdI2 var_88
  loc_9D1249: FStI2 var_86
  loc_9D124C: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B2B38
  'Data Table: 434E24
  loc_9B2B28: ILdI4 sOrden
  loc_9B2B2B: FLdPr Me
  loc_9B2B2E: MemLdPr RsFrm
  loc_9B2B31: Me.Sort = from_stack_1
  loc_9B2B36: ExitProcHresult
  loc_9B2B37: ExitProcR8
End Sub

Public Sub Find(sFind) '9E3850
  'Data Table: 434E24
  loc_9E3830: LitVar_Missing var_94
  loc_9E3833: PopAdLdVar
  loc_9E3834: LitI4 1
  loc_9E3839: LitI4 0
  loc_9E383E: ILdI4 sFind
  loc_9E3841: FLdPr Me
  loc_9E3844: MemLdPr RsFrm
  loc_9E3847: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E384C: ExitProcHresult
  loc_9E384D: FStAdFunc var_88
End Sub

Public Sub Filter(sCriterio) '9E3B70
  'Data Table: 434E24
  loc_9E3B54: On Error Resume Next
  loc_9E3B59: ILdI4 sCriterio
  loc_9E3B5C: CVarStr var_94
  loc_9E3B5F: PopAdLdVar
  loc_9E3B60: FLdPr Me
  loc_9E3B63: MemLdPr RsFrm
  loc_9E3B66: Me.Filter = from_stack_1
  loc_9E3B6D: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D1208
  'Data Table: 434E24
  loc_9D11EC: FLdRfVar var_8C
  loc_9D11EF: FLdPr Me
  loc_9D11F2: MemLdPr RsFrm
  loc_9D11F5:  = Me.AbsolutePosition
  loc_9D11FA: ILdRf var_8C
  loc_9D11FD: FStR4 var_88
  loc_9D1200: ExitProcCbHresult
  loc_9D1206: IDvI2
End Sub

Public Property Get RecordCount() '9D108C
  'Data Table: 434E24
  loc_9D1070: FLdRfVar var_8C
  loc_9D1073: FLdPr Me
  loc_9D1076: MemLdPr RsFrm
  loc_9D1079:  = Me.RecordCount
  loc_9D107E: ILdRf var_8C
  loc_9D1081: FStR4 var_88
  loc_9D1084: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriInfo, CodiConc, DetaConc, DevcConc, DevsConc, IngrConc, ActiConc, TiafConc, TipaConc) 'B00980
  'Data Table: 434E24
  loc_B007EC: ILdRf CodiConc
  loc_B007EF: FStStrCopy var_88
  loc_B007F2: ILdRf DetaConc
  loc_B007F5: FStStrCopy var_8C
  loc_B007F8: ILdRf DevcConc
  loc_B007FB: FStStrCopy var_90
  loc_B007FE: ILdRf DevsConc
  loc_B00801: FStStrCopy var_94
  loc_B00804: ILdRf IngrConc
  loc_B00807: FStStrCopy var_98
  loc_B0080A: ILdRf ActiConc
  loc_B0080D: FStStrCopy var_9C
  loc_B00810: FLdRfVar var_A0
  loc_B00813: ILdRf var_88
  loc_B00816: FLdI2 PeriInfo
  loc_B00819: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_B0081E: ILdRf var_A0
  loc_B00821: LitStr vbNullString
  loc_B00824: NeStr
  loc_B00826: FFree1Str var_A0
  loc_B00829: BranchF loc_B00837
  loc_B0082C: LitStr "El CONCEPTO YA EXISTE. Reintente..."
  loc_B0082F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B00834: Branch loc_B0097F
  loc_B00837: FLdRfVar var_A2
  loc_B0083A: ILdRf var_88
  loc_B0083D: from_stack_2v = NivelConcepto(from_stack_1v)
  loc_B00842: FLdUI1
  loc_B00846: CI2UI1
  loc_B00848: LitI2_Byte 1
  loc_B0084A: GtI2
  loc_B0084B: BranchF loc_B008A2
  loc_B0084E: FLdRfVar var_A2
  loc_B00851: ILdRf var_88
  loc_B00854: from_stack_2v = NivelConcepto(from_stack_1v)
  loc_B00859: LitStr "UPDATE concepto SET AforConc = '0' WHERE PeriInfo = "
  loc_B0085C: FLdI2 PeriInfo
  loc_B0085F: CStrUI1
  loc_B00861: FStStrNoPop var_A0
  loc_B00864: ConcatStr
  loc_B00865: FStStrNoPop var_A8
  loc_B00868: LitStr " AND CodiConc = '"
  loc_B0086B: ConcatStr
  loc_B0086C: FStStrNoPop var_B0
  loc_B0086F: FLdRfVar var_AC
  loc_B00872: FLdUI1
  loc_B00876: CI2UI1
  loc_B00878: ILdRf var_88
  loc_B0087B: from_stack_3v = ConceptoNivelSuperior(from_stack_1v, from_stack_2v)
  loc_B00880: ILdRf var_AC
  loc_B00883: ConcatStr
  loc_B00884: FStStrNoPop var_B4
  loc_B00887: LitStr "'"
  loc_B0088A: ConcatStr
  loc_B0088B: FStStrNoPop var_B8
  loc_B0088E: Call Proc_9_59_A45184()
  loc_B00893: FFreeStr var_A0 = "": var_A8 = "": var_B0 = "": var_AC = "": var_B4 = ""
  loc_B008A2: LitStr "INSERT INTO concepto (PeriInfo, CodiConc, VigeConc, DetaConc, AforConc, DevcConc, DevsConc, IngrConc, ActiConc, TiafConc, TipaConc) "
  loc_B008A5: LitStr " VALUES ("
  loc_B008A8: ConcatStr
  loc_B008A9: FStStrNoPop var_A0
  loc_B008AC: FLdI2 PeriInfo
  loc_B008AF: CStrUI1
  loc_B008B1: FStStrNoPop var_A8
  loc_B008B4: ConcatStr
  loc_B008B5: FStStrNoPop var_AC
  loc_B008B8: LitStr ",'"
  loc_B008BB: ConcatStr
  loc_B008BC: FStStrNoPop var_B0
  loc_B008BF: ILdRf var_88
  loc_B008C2: ConcatStr
  loc_B008C3: FStStrNoPop var_B4
  loc_B008C6: LitStr "','1','"
  loc_B008C9: ConcatStr
  loc_B008CA: FStStrNoPop var_B8
  loc_B008CD: ILdRf var_8C
  loc_B008D0: ConcatStr
  loc_B008D1: FStStrNoPop var_BC
  loc_B008D4: LitStr "','1','"
  loc_B008D7: ConcatStr
  loc_B008D8: FStStrNoPop var_C0
  loc_B008DB: ILdRf var_90
  loc_B008DE: ConcatStr
  loc_B008DF: FStStrNoPop var_C4
  loc_B008E2: LitStr "','"
  loc_B008E5: ConcatStr
  loc_B008E6: FStStrNoPop var_C8
  loc_B008E9: ILdRf var_94
  loc_B008EC: ConcatStr
  loc_B008ED: FStStrNoPop var_CC
  loc_B008F0: LitStr "','"
  loc_B008F3: ConcatStr
  loc_B008F4: FStStrNoPop var_D0
  loc_B008F7: ILdRf var_98
  loc_B008FA: ConcatStr
  loc_B008FB: FStStrNoPop var_D4
  loc_B008FE: LitStr "','"
  loc_B00901: ConcatStr
  loc_B00902: FStStrNoPop var_D8
  loc_B00905: ILdRf var_9C
  loc_B00908: ConcatStr
  loc_B00909: FStStrNoPop var_DC
  loc_B0090C: LitStr "',"
  loc_B0090F: ConcatStr
  loc_B00910: FStStrNoPop var_E0
  loc_B00913: FLdUI1
  loc_B00917: CStrI2
  loc_B00919: FStStrNoPop var_E4
  loc_B0091C: ConcatStr
  loc_B0091D: FStStrNoPop var_E8
  loc_B00920: LitStr ","
  loc_B00923: ConcatStr
  loc_B00924: FStStrNoPop var_EC
  loc_B00927: FLdUI1
  loc_B0092B: CStrI2
  loc_B0092D: FStStrNoPop var_F0
  loc_B00930: ConcatStr
  loc_B00931: FStStrNoPop var_F4
  loc_B00934: LitStr ");"
  loc_B00937: ConcatStr
  loc_B00938: FStStrNoPop var_F8
  loc_B0093B: Call Proc_9_59_A45184()
  loc_B00940: FFreeStr var_A0 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_B0096F: Call Requery()
  loc_B00974: ILdRf var_88
  loc_B00977: FLdI2 PeriInfo
  loc_B0097A: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_B0097F: ExitProcHresult
End Sub

Public Sub Modificar(PeriInfo, CodiConc, DetaConc, DevcConc, DevsConc, IngrConc, ActiConc, TiafConc, TipaConc) 'AE6EB0
  'Data Table: 434E24
  loc_AE6D90: ILdRf CodiConc
  loc_AE6D93: FStStrCopy var_88
  loc_AE6D96: ILdRf DetaConc
  loc_AE6D99: FStStrCopy var_8C
  loc_AE6D9C: ILdRf DevcConc
  loc_AE6D9F: FStStrCopy var_90
  loc_AE6DA2: ILdRf DevsConc
  loc_AE6DA5: FStStrCopy var_94
  loc_AE6DA8: ILdRf IngrConc
  loc_AE6DAB: FStStrCopy var_98
  loc_AE6DAE: ILdRf ActiConc
  loc_AE6DB1: FStStrCopy var_9C
  loc_AE6DB4: FLdRfVar var_A0
  loc_AE6DB7: ILdRf var_88
  loc_AE6DBA: FLdI2 PeriInfo
  loc_AE6DBD: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_AE6DC2: ILdRf var_A0
  loc_AE6DC5: LitStr vbNullString
  loc_AE6DC8: EqStr
  loc_AE6DCA: FFree1Str var_A0
  loc_AE6DCD: BranchF loc_AE6DDB
  loc_AE6DD0: LitStr "El CONCEPTO NO EXISTE. Reintente..."
  loc_AE6DD3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE6DD8: Branch loc_AE6E9F
  loc_AE6DDB: LitStr " UPDATE concepto SET DetaConc = '"
  loc_AE6DDE: ILdRf var_8C
  loc_AE6DE1: ConcatStr
  loc_AE6DE2: FStStrNoPop var_A0
  loc_AE6DE5: LitStr "', DevcConc = '"
  loc_AE6DE8: ConcatStr
  loc_AE6DE9: FStStrNoPop var_A4
  loc_AE6DEC: ILdRf var_90
  loc_AE6DEF: ConcatStr
  loc_AE6DF0: FStStrNoPop var_A8
  loc_AE6DF3: LitStr "', DevsConc = '"
  loc_AE6DF6: ConcatStr
  loc_AE6DF7: FStStrNoPop var_AC
  loc_AE6DFA: ILdRf var_94
  loc_AE6DFD: ConcatStr
  loc_AE6DFE: FStStrNoPop var_B0
  loc_AE6E01: LitStr "', IngrConc = '"
  loc_AE6E04: ConcatStr
  loc_AE6E05: FStStrNoPop var_B4
  loc_AE6E08: ILdRf var_98
  loc_AE6E0B: ConcatStr
  loc_AE6E0C: FStStrNoPop var_B8
  loc_AE6E0F: LitStr "', ActiConc = '"
  loc_AE6E12: ConcatStr
  loc_AE6E13: FStStrNoPop var_BC
  loc_AE6E16: ILdRf var_9C
  loc_AE6E19: ConcatStr
  loc_AE6E1A: FStStrNoPop var_C0
  loc_AE6E1D: LitStr "', TiafConc = "
  loc_AE6E20: ConcatStr
  loc_AE6E21: FStStrNoPop var_C4
  loc_AE6E24: FLdUI1
  loc_AE6E28: CStrI2
  loc_AE6E2A: FStStrNoPop var_C8
  loc_AE6E2D: ConcatStr
  loc_AE6E2E: FStStrNoPop var_CC
  loc_AE6E31: LitStr ", TipaConc = "
  loc_AE6E34: ConcatStr
  loc_AE6E35: FStStrNoPop var_D0
  loc_AE6E38: FLdUI1
  loc_AE6E3C: CStrI2
  loc_AE6E3E: FStStrNoPop var_D4
  loc_AE6E41: ConcatStr
  loc_AE6E42: FStStrNoPop var_D8
  loc_AE6E45: LitStr " WHERE PeriInfo = "
  loc_AE6E48: ConcatStr
  loc_AE6E49: FStStrNoPop var_DC
  loc_AE6E4C: FLdI2 PeriInfo
  loc_AE6E4F: CStrUI1
  loc_AE6E51: FStStrNoPop var_E0
  loc_AE6E54: ConcatStr
  loc_AE6E55: FStStrNoPop var_E4
  loc_AE6E58: LitStr " AND CodiConc = '"
  loc_AE6E5B: ConcatStr
  loc_AE6E5C: FStStrNoPop var_E8
  loc_AE6E5F: ILdRf var_88
  loc_AE6E62: ConcatStr
  loc_AE6E63: FStStrNoPop var_EC
  loc_AE6E66: LitStr "'"
  loc_AE6E69: ConcatStr
  loc_AE6E6A: FStStrNoPop var_F0
  loc_AE6E6D: Call Proc_9_59_A45184()
  loc_AE6E72: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_AE6E9F: Call Requery()
  loc_AE6EA4: ILdRf var_88
  loc_AE6EA7: FLdI2 PeriInfo
  loc_AE6EAA: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_AE6EAF: ExitProcHresult
End Sub

Public Sub Requery() '9E9C78
  'Data Table: 434E24
  loc_9E9C54: LitI4 -1
  loc_9E9C59: FLdPr Me
  loc_9E9C5C: MemLdPr RsFrm
  loc_9E9C5F: Me.Requery from_stack_1
  loc_9E9C64: LitVarStr var_94, "Primary"
  loc_9E9C69: PopAdLdVar
  loc_9E9C6A: FLdPr Me
  loc_9E9C6D: LateIdCall
  loc_9E9C75: ExitProcHresult
  loc_9E9C76: IStR8 var_53F9
End Sub

Public Sub RedefineRS(sSelect) 'A5F1FC
  'Data Table: 434E24
  loc_A5F198: ILdRf sSelect
  loc_A5F19B: FStStrCopy var_88
  loc_A5F19E: LitNothing
  loc_A5F1A0: CastAd
  loc_A5F1A3: FStAdFuncNoPop
  loc_A5F1A6: FLdPr Me
  loc_A5F1A9: MemStAd
  loc_A5F1AD: FFree1Ad var_8C
  loc_A5F1B0: New Recordset
  loc_A5F1B4: FStAdFuncNoPop
  loc_A5F1B7: FLdPr Me
  loc_A5F1BA: MemStAd
  loc_A5F1BE: FFree1Ad var_8C
  loc_A5F1C1: LitI4 -1
  loc_A5F1C6: LitI4 3
  loc_A5F1CB: LitI4 3
  loc_A5F1D0: ImpAdLdI4 MemVar_D9301C
  loc_A5F1D3: CVarAd
  loc_A5F1D7: PopAdLdVar
  loc_A5F1D8: ILdRf var_88
  loc_A5F1DB: CVarStr var_9C
  loc_A5F1DE: PopAdLdVar
  loc_A5F1DF: FLdPr Me
  loc_A5F1E2: MemLdPr RsFrm
  loc_A5F1E5: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5F1EA: LitVarStr var_9C, "Primary"
  loc_A5F1EF: PopAdLdVar
  loc_A5F1F0: FLdPr Me
  loc_A5F1F3: LateIdCall
  loc_A5F1FB: ExitProcHresult
End Sub

Public Sub Encontrar(PeriInfo, CodiConc) 'A12054
  'Data Table: 434E24
  loc_A1201C: ILdRf CodiConc
  loc_A1201F: FStStrCopy var_88
  loc_A12022: LitStr "PeriInfo = "
  loc_A12025: FLdI2 PeriInfo
  loc_A12028: CStrUI1
  loc_A1202A: FStStrNoPop var_8C
  loc_A1202D: ConcatStr
  loc_A1202E: PopTmpLdAdStr
  loc_A12032: Call Find(from_stack_1v)
  loc_A12037: FFreeStr var_8C = ""
  loc_A1203E: LitStr "CodiConc = "
  loc_A12041: ILdRf var_88
  loc_A12044: ConcatStr
  loc_A12045: PopTmpLdAdStr
  loc_A12049: Call Find(from_stack_1v)
  loc_A1204E: FFree1Str var_8C
  loc_A12051: ExitProcHresult
  loc_A12052: FLdPr var_53FC
End Sub

Public Property Get DataSource() '9F78FC
  'Data Table: 434E24
  loc_9F78D8: ZeroRetVal
  loc_9F78DA: FLdRfVar var_8C
  loc_9F78DD: FLdPr Me
  loc_9F78E0: MemLdPr RsFrm
  loc_9F78E3:  = Me.DataSource
  loc_9F78E8: ILdRf var_8C
  loc_9F78EB: CastAd
  loc_9F78EE: FStAdFunc var_88
  loc_9F78F1: FFree1Ad var_8C
  loc_9F78F4: ExitProcCbHresult
End Sub

Public Property Get PeriInfo() 'A31E24
  'Data Table: 434E24
  loc_A31DE0: FLdRfVar var_B0
  loc_A31DE3: FLdRfVar var_A0
  loc_A31DE6: LitVarStr var_9C, "PeriInfo"
  loc_A31DEB: PopAdLdVar
  loc_A31DEC: FLdRfVar var_8C
  loc_A31DEF: FLdPr Me
  loc_A31DF2: MemLdPr RsFrm
  loc_A31DF5:  = Me.Fields
  loc_A31DFA: FLdPr var_8C
  loc_A31DFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A31E02: FLdPr var_A0
  loc_A31E05:  = Me.Value
  loc_A31E0A: FLdRfVar var_B0
  loc_A31E0D: CI2Var
  loc_A31E0E: FStI2 var_86
  loc_A31E11: FFreeAd var_8C = ""
  loc_A31E18: FFree1Var var_B0 = ""
  loc_A31E1B: ExitProcCbHresult
End Sub

Public Property Get CodiConc() 'A3FE14
  'Data Table: 434E24
  loc_A3FDD0: ZeroRetVal
  loc_A3FDD2: FLdRfVar var_B0
  loc_A3FDD5: FLdRfVar var_A0
  loc_A3FDD8: LitVarStr var_9C, "CodiConc"
  loc_A3FDDD: PopAdLdVar
  loc_A3FDDE: FLdRfVar var_8C
  loc_A3FDE1: FLdPr Me
  loc_A3FDE4: MemLdPr RsFrm
  loc_A3FDE7:  = Me.Fields
  loc_A3FDEC: FLdPr var_8C
  loc_A3FDEF: from_stack_2 = Me.Item(from_stack_1)
  loc_A3FDF4: FLdPr var_A0
  loc_A3FDF7:  = Me.Value
  loc_A3FDFC: FLdRfVar var_B0
  loc_A3FDFF: CStrVarTmp
  loc_A3FE00: FStStr var_88
  loc_A3FE03: FFreeAd var_8C = ""
  loc_A3FE0A: FFree1Var var_B0 = ""
  loc_A3FE0D: ExitProcCbHresult
End Sub

Public Property Get VigeConc() 'A3F970
  'Data Table: 434E24
  loc_A3F92C: ZeroRetVal
  loc_A3F92E: FLdRfVar var_B0
  loc_A3F931: FLdRfVar var_A0
  loc_A3F934: LitVarStr var_9C, "VigeConc"
  loc_A3F939: PopAdLdVar
  loc_A3F93A: FLdRfVar var_8C
  loc_A3F93D: FLdPr Me
  loc_A3F940: MemLdPr RsFrm
  loc_A3F943:  = Me.Fields
  loc_A3F948: FLdPr var_8C
  loc_A3F94B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F950: FLdPr var_A0
  loc_A3F953:  = Me.Value
  loc_A3F958: FLdRfVar var_B0
  loc_A3F95B: CStrVarTmp
  loc_A3F95C: FStStr var_88
  loc_A3F95F: FFreeAd var_8C = ""
  loc_A3F966: FFree1Var var_B0 = ""
  loc_A3F969: ExitProcCbHresult
End Sub

Public Property Get DetaConc() 'A3FD0C
  'Data Table: 434E24
  loc_A3FCC8: ZeroRetVal
  loc_A3FCCA: FLdRfVar var_B0
  loc_A3FCCD: FLdRfVar var_A0
  loc_A3FCD0: LitVarStr var_9C, "DetaConc"
  loc_A3FCD5: PopAdLdVar
  loc_A3FCD6: FLdRfVar var_8C
  loc_A3FCD9: FLdPr Me
  loc_A3FCDC: MemLdPr RsFrm
  loc_A3FCDF:  = Me.Fields
  loc_A3FCE4: FLdPr var_8C
  loc_A3FCE7: from_stack_2 = Me.Item(from_stack_1)
  loc_A3FCEC: FLdPr var_A0
  loc_A3FCEF:  = Me.Value
  loc_A3FCF4: FLdRfVar var_B0
  loc_A3FCF7: CStrVarTmp
  loc_A3FCF8: FStStr var_88
  loc_A3FCFB: FFreeAd var_8C = ""
  loc_A3FD02: FFree1Var var_B0 = ""
  loc_A3FD05: ExitProcCbHresult
End Sub

Public Property Get DevcConc() 'A3F6DC
  'Data Table: 434E24
  loc_A3F698: ZeroRetVal
  loc_A3F69A: FLdRfVar var_B0
  loc_A3F69D: FLdRfVar var_A0
  loc_A3F6A0: LitVarStr var_9C, "DevcConc"
  loc_A3F6A5: PopAdLdVar
  loc_A3F6A6: FLdRfVar var_8C
  loc_A3F6A9: FLdPr Me
  loc_A3F6AC: MemLdPr RsFrm
  loc_A3F6AF:  = Me.Fields
  loc_A3F6B4: FLdPr var_8C
  loc_A3F6B7: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F6BC: FLdPr var_A0
  loc_A3F6BF:  = Me.Value
  loc_A3F6C4: FLdRfVar var_B0
  loc_A3F6C7: CStrVarTmp
  loc_A3F6C8: FStStr var_88
  loc_A3F6CB: FFreeAd var_8C = ""
  loc_A3F6D2: FFree1Var var_B0 = ""
  loc_A3F6D5: ExitProcCbHresult
End Sub

Public Property Get DevsConc() 'A3F868
  'Data Table: 434E24
  loc_A3F824: ZeroRetVal
  loc_A3F826: FLdRfVar var_B0
  loc_A3F829: FLdRfVar var_A0
  loc_A3F82C: LitVarStr var_9C, "DevsConc"
  loc_A3F831: PopAdLdVar
  loc_A3F832: FLdRfVar var_8C
  loc_A3F835: FLdPr Me
  loc_A3F838: MemLdPr RsFrm
  loc_A3F83B:  = Me.Fields
  loc_A3F840: FLdPr var_8C
  loc_A3F843: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F848: FLdPr var_A0
  loc_A3F84B:  = Me.Value
  loc_A3F850: FLdRfVar var_B0
  loc_A3F853: CStrVarTmp
  loc_A3F854: FStStr var_88
  loc_A3F857: FFreeAd var_8C = ""
  loc_A3F85E: FFree1Var var_B0 = ""
  loc_A3F861: ExitProcCbHresult
End Sub

Public Property Get IngrConc() 'A3FAFC
  'Data Table: 434E24
  loc_A3FAB8: ZeroRetVal
  loc_A3FABA: FLdRfVar var_B0
  loc_A3FABD: FLdRfVar var_A0
  loc_A3FAC0: LitVarStr var_9C, "IngrConc"
  loc_A3FAC5: PopAdLdVar
  loc_A3FAC6: FLdRfVar var_8C
  loc_A3FAC9: FLdPr Me
  loc_A3FACC: MemLdPr RsFrm
  loc_A3FACF:  = Me.Fields
  loc_A3FAD4: FLdPr var_8C
  loc_A3FAD7: from_stack_2 = Me.Item(from_stack_1)
  loc_A3FADC: FLdPr var_A0
  loc_A3FADF:  = Me.Value
  loc_A3FAE4: FLdRfVar var_B0
  loc_A3FAE7: CStrVarTmp
  loc_A3FAE8: FStStr var_88
  loc_A3FAEB: FFreeAd var_8C = ""
  loc_A3FAF2: FFree1Var var_B0 = ""
  loc_A3FAF5: ExitProcCbHresult
End Sub

Public Property Get ActiConc() 'A3FB80
  'Data Table: 434E24
  loc_A3FB3C: ZeroRetVal
  loc_A3FB3E: FLdRfVar var_B0
  loc_A3FB41: FLdRfVar var_A0
  loc_A3FB44: LitVarStr var_9C, "ActiConc"
  loc_A3FB49: PopAdLdVar
  loc_A3FB4A: FLdRfVar var_8C
  loc_A3FB4D: FLdPr Me
  loc_A3FB50: MemLdPr RsFrm
  loc_A3FB53:  = Me.Fields
  loc_A3FB58: FLdPr var_8C
  loc_A3FB5B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3FB60: FLdPr var_A0
  loc_A3FB63:  = Me.Value
  loc_A3FB68: FLdRfVar var_B0
  loc_A3FB6B: CStrVarTmp
  loc_A3FB6C: FStStr var_88
  loc_A3FB6F: FFreeAd var_8C = ""
  loc_A3FB76: FFree1Var var_B0 = ""
  loc_A3FB79: ExitProcCbHresult
End Sub

Public Property Get TotaDepa() 'A130F0
  'Data Table: 434E24
  loc_A130B8: ZeroRetValVar
  loc_A130BA: FLdRfVar var_AC
  loc_A130BD: LitVarStr var_A8, "TotaDepa"
  loc_A130C2: PopAdLdVar
  loc_A130C3: FLdRfVar var_98
  loc_A130C6: FLdPr Me
  loc_A130C9: MemLdPr RsFrm
  loc_A130CC:  = Me.Fields
  loc_A130D1: FLdPr var_98
  loc_A130D4: from_stack_2 = Me.Item(from_stack_1)
  loc_A130D9: FLdZeroAd var_AC
  loc_A130DC: CVarAd
  loc_A130E0: FStVar TotaDepa
  loc_A130E4: FFree1Ad var_98
  loc_A130E7: ExitProcCbHresult
  loc_A130ED: CStr2Ansi
End Sub

Public Property Get DeinCuco() 'A129E8
  'Data Table: 434E24
  loc_A129B0: ZeroRetValVar
  loc_A129B2: FLdRfVar var_AC
  loc_A129B5: LitVarStr var_A8, "DeinCuco"
  loc_A129BA: PopAdLdVar
  loc_A129BB: FLdRfVar var_98
  loc_A129BE: FLdPr Me
  loc_A129C1: MemLdPr RsFrm
  loc_A129C4:  = Me.Fields
  loc_A129C9: FLdPr var_98
  loc_A129CC: from_stack_2 = Me.Item(from_stack_1)
  loc_A129D1: FLdZeroAd var_AC
  loc_A129D4: CVarAd
  loc_A129D8: FStVar DeinCuco
  loc_A129DC: FFree1Ad var_98
  loc_A129DF: ExitProcCbHresult
End Sub

Public Property Get DeacCuco() 'A133C0
  'Data Table: 434E24
  loc_A13388: ZeroRetValVar
  loc_A1338A: FLdRfVar var_AC
  loc_A1338D: LitVarStr var_A8, "DeacCuco"
  loc_A13392: PopAdLdVar
  loc_A13393: FLdRfVar var_98
  loc_A13396: FLdPr Me
  loc_A13399: MemLdPr RsFrm
  loc_A1339C:  = Me.Fields
  loc_A133A1: FLdPr var_98
  loc_A133A4: from_stack_2 = Me.Item(from_stack_1)
  loc_A133A9: FLdZeroAd var_AC
  loc_A133AC: CVarAd
  loc_A133B0: FStVar DeacCuco
  loc_A133B4: FFree1Ad var_98
  loc_A133B7: ExitProcCbHresult
  loc_A133BD: Branch loc_A13B58
End Sub

Public Property Get CtaCte(arg_C) 'A13F78
  'Data Table: 434E24
  loc_A13F40: ZeroRetValVar
  loc_A13F42: FLdRfVar var_AC
  loc_A13F45: LitVarStr var_A8, "CtaCte"
  loc_A13F4A: PopAdLdVar
  loc_A13F4B: FLdRfVar var_98
  loc_A13F4E: FLdPr Me
  loc_A13F51: MemLdPr RsFrm
  loc_A13F54:  = Me.Fields
  loc_A13F59: FLdPr var_98
  loc_A13F5C: from_stack_2 = Me.Item(from_stack_1)
  loc_A13F61: FLdZeroAd var_AC
  loc_A13F64: CVarAd
  loc_A13F68: FStVar CtaCte
  loc_A13F6C: FFree1Ad var_98
  loc_A13F6F: ExitProcCbHresult
  loc_A13F75: IStI2 arg_C
End Sub

Public Property Get histoctacte() 'A13F00
  'Data Table: 434E24
  loc_A13EC8: ZeroRetValVar
  loc_A13ECA: FLdRfVar var_AC
  loc_A13ECD: LitVarStr var_A8, "histoctacte"
  loc_A13ED2: PopAdLdVar
  loc_A13ED3: FLdRfVar var_98
  loc_A13ED6: FLdPr Me
  loc_A13ED9: MemLdPr RsFrm
  loc_A13EDC:  = Me.Fields
  loc_A13EE1: FLdPr var_98
  loc_A13EE4: from_stack_2 = Me.Item(from_stack_1)
  loc_A13EE9: FLdZeroAd var_AC
  loc_A13EEC: CVarAd
  loc_A13EF0: FStVar histoctacte
  loc_A13EF4: FFree1Ad var_98
  loc_A13EF7: ExitProcCbHresult
End Sub

Public Property Get detapago() 'A15DF0
  'Data Table: 434E24
  loc_A15DB8: ZeroRetValVar
  loc_A15DBA: FLdRfVar var_AC
  loc_A15DBD: LitVarStr var_A8, "detapago"
  loc_A15DC2: PopAdLdVar
  loc_A15DC3: FLdRfVar var_98
  loc_A15DC6: FLdPr Me
  loc_A15DC9: MemLdPr RsFrm
  loc_A15DCC:  = Me.Fields
  loc_A15DD1: FLdPr var_98
  loc_A15DD4: from_stack_2 = Me.Item(from_stack_1)
  loc_A15DD9: FLdZeroAd var_AC
  loc_A15DDC: CVarAd
  loc_A15DE0: FStVar detapago
  loc_A15DE4: FFree1Ad var_98
  loc_A15DE7: ExitProcCbHresult
  loc_A15DED: Ary1LdCy
  loc_A15DEE: ImpAdLdPr 0
End Sub

Public Property Get FeenAcpa() 'A3FA78
  'Data Table: 434E24
  loc_A3FA34: ZeroRetVal
  loc_A3FA36: FLdRfVar var_B0
  loc_A3FA39: FLdRfVar var_A0
  loc_A3FA3C: LitVarStr var_9C, "FeenAcpa"
  loc_A3FA41: PopAdLdVar
  loc_A3FA42: FLdRfVar var_8C
  loc_A3FA45: FLdPr Me
  loc_A3FA48: MemLdPr RsFrm
  loc_A3FA4B:  = Me.Fields
  loc_A3FA50: FLdPr var_8C
  loc_A3FA53: from_stack_2 = Me.Item(from_stack_1)
  loc_A3FA58: FLdPr var_A0
  loc_A3FA5B:  = Me.Value
  loc_A3FA60: FLdRfVar var_B0
  loc_A3FA63: CStrVarTmp
  loc_A3FA64: FStStr var_88
  loc_A3FA67: FFreeAd var_8C = ""
  loc_A3FA6E: FFree1Var var_B0 = ""
  loc_A3FA71: ExitProcCbHresult
End Sub

Public Property Get CodiOfic() 'A2A524
  'Data Table: 434E24
  loc_A2A4E0: FLdRfVar var_B0
  loc_A2A4E3: FLdRfVar var_A0
  loc_A2A4E6: LitVarStr var_9C, "CodiOfic"
  loc_A2A4EB: PopAdLdVar
  loc_A2A4EC: FLdRfVar var_8C
  loc_A2A4EF: FLdPr Me
  loc_A2A4F2: MemLdPr RsFrm
  loc_A2A4F5:  = Me.Fields
  loc_A2A4FA: FLdPr var_8C
  loc_A2A4FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A502: FLdPr var_A0
  loc_A2A505:  = Me.Value
  loc_A2A50A: FLdRfVar var_B0
  loc_A2A50D: CUI1Var
  loc_A2A50F: FStUI1 var_86
  loc_A2A513: FFreeAd var_8C = ""
  loc_A2A51A: FFree1Var var_B0 = ""
  loc_A2A51D: ExitProcCbHresult
End Sub

Public Property Get CuenCtct() 'A3EE18
  'Data Table: 434E24
  loc_A3EDD4: ZeroRetVal
  loc_A3EDD6: FLdRfVar var_B0
  loc_A3EDD9: FLdRfVar var_A0
  loc_A3EDDC: LitVarStr var_9C, "CuenCtct"
  loc_A3EDE1: PopAdLdVar
  loc_A3EDE2: FLdRfVar var_8C
  loc_A3EDE5: FLdPr Me
  loc_A3EDE8: MemLdPr RsFrm
  loc_A3EDEB:  = Me.Fields
  loc_A3EDF0: FLdPr var_8C
  loc_A3EDF3: from_stack_2 = Me.Item(from_stack_1)
  loc_A3EDF8: FLdPr var_A0
  loc_A3EDFB:  = Me.Value
  loc_A3EE00: FLdRfVar var_B0
  loc_A3EE03: CStrVarTmp
  loc_A3EE04: FStStr var_88
  loc_A3EE07: FFreeAd var_8C = ""
  loc_A3EE0E: FFree1Var var_B0 = ""
  loc_A3EE11: ExitProcCbHresult
End Sub

Public Property Get PeriBole() 'A31D24
  'Data Table: 434E24
  loc_A31CE0: FLdRfVar var_B0
  loc_A31CE3: FLdRfVar var_A0
  loc_A31CE6: LitVarStr var_9C, "PeriBole"
  loc_A31CEB: PopAdLdVar
  loc_A31CEC: FLdRfVar var_8C
  loc_A31CEF: FLdPr Me
  loc_A31CF2: MemLdPr RsFrm
  loc_A31CF5:  = Me.Fields
  loc_A31CFA: FLdPr var_8C
  loc_A31CFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A31D02: FLdPr var_A0
  loc_A31D05:  = Me.Value
  loc_A31D0A: FLdRfVar var_B0
  loc_A31D0D: CI2Var
  loc_A31D0E: FStI2 var_86
  loc_A31D11: FFreeAd var_8C = ""
  loc_A31D18: FFree1Var var_B0 = ""
  loc_A31D1B: ExitProcCbHresult
End Sub

Public Property Get NumeBole() 'A31CA4
  'Data Table: 434E24
  loc_A31C60: FLdRfVar var_B0
  loc_A31C63: FLdRfVar var_A0
  loc_A31C66: LitVarStr var_9C, "NumeBole"
  loc_A31C6B: PopAdLdVar
  loc_A31C6C: FLdRfVar var_8C
  loc_A31C6F: FLdPr Me
  loc_A31C72: MemLdPr RsFrm
  loc_A31C75:  = Me.Fields
  loc_A31C7A: FLdPr var_8C
  loc_A31C7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31C82: FLdPr var_A0
  loc_A31C85:  = Me.Value
  loc_A31C8A: FLdRfVar var_B0
  loc_A31C8D: CI4Var
  loc_A31C8F: FStR4 var_88
  loc_A31C92: FFreeAd var_8C = ""
  loc_A31C99: FFree1Var var_B0 = ""
  loc_A31C9C: ExitProcCbHresult
End Sub

Public Property Get CapiDepa() 'A31C24
  'Data Table: 434E24
  loc_A31BE0: FLdRfVar var_B4
  loc_A31BE3: FLdRfVar var_A4
  loc_A31BE6: LitVarStr var_A0, "CapiDepa"
  loc_A31BEB: PopAdLdVar
  loc_A31BEC: FLdRfVar var_90
  loc_A31BEF: FLdPr Me
  loc_A31BF2: MemLdPr RsFrm
  loc_A31BF5:  = Me.Fields
  loc_A31BFA: FLdPr var_90
  loc_A31BFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A31C02: FLdPr var_A4
  loc_A31C05:  = Me.Value
  loc_A31C0A: FLdRfVar var_B4
  loc_A31C0D: CR4Var
  loc_A31C0E: FStFPR8 var_8C
  loc_A31C11: FFreeAd var_90 = ""
  loc_A31C18: FFree1Var var_B4 = ""
  loc_A31C1B: ExitProcCbHresult
End Sub

Public Property Get DecaDepa() 'A31BA4
  'Data Table: 434E24
  loc_A31B60: FLdRfVar var_B4
  loc_A31B63: FLdRfVar var_A4
  loc_A31B66: LitVarStr var_A0, "DecaDepa"
  loc_A31B6B: PopAdLdVar
  loc_A31B6C: FLdRfVar var_90
  loc_A31B6F: FLdPr Me
  loc_A31B72: MemLdPr RsFrm
  loc_A31B75:  = Me.Fields
  loc_A31B7A: FLdPr var_90
  loc_A31B7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31B82: FLdPr var_A4
  loc_A31B85:  = Me.Value
  loc_A31B8A: FLdRfVar var_B4
  loc_A31B8D: CR4Var
  loc_A31B8E: FStFPR8 var_8C
  loc_A31B91: FFreeAd var_90 = ""
  loc_A31B98: FFree1Var var_B4 = ""
  loc_A31B9B: ExitProcCbHresult
End Sub

Public Property Get RecaDepa() 'A31B24
  'Data Table: 434E24
  loc_A31AE0: FLdRfVar var_B4
  loc_A31AE3: FLdRfVar var_A4
  loc_A31AE6: LitVarStr var_A0, "RecaDepa"
  loc_A31AEB: PopAdLdVar
  loc_A31AEC: FLdRfVar var_90
  loc_A31AEF: FLdPr Me
  loc_A31AF2: MemLdPr RsFrm
  loc_A31AF5:  = Me.Fields
  loc_A31AFA: FLdPr var_90
  loc_A31AFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A31B02: FLdPr var_A4
  loc_A31B05:  = Me.Value
  loc_A31B0A: FLdRfVar var_B4
  loc_A31B0D: CR4Var
  loc_A31B0E: FStFPR8 var_8C
  loc_A31B11: FFreeAd var_90 = ""
  loc_A31B18: FFree1Var var_B4 = ""
  loc_A31B1B: ExitProcCbHresult
  loc_A31B21: FLdRfVar arg_15
End Sub

Public Property Get DereDepa() 'A31AA4
  'Data Table: 434E24
  loc_A31A60: FLdRfVar var_B4
  loc_A31A63: FLdRfVar var_A4
  loc_A31A66: LitVarStr var_A0, "DereDepa"
  loc_A31A6B: PopAdLdVar
  loc_A31A6C: FLdRfVar var_90
  loc_A31A6F: FLdPr Me
  loc_A31A72: MemLdPr RsFrm
  loc_A31A75:  = Me.Fields
  loc_A31A7A: FLdPr var_90
  loc_A31A7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31A82: FLdPr var_A4
  loc_A31A85:  = Me.Value
  loc_A31A8A: FLdRfVar var_B4
  loc_A31A8D: CR4Var
  loc_A31A8E: FStFPR8 var_8C
  loc_A31A91: FFreeAd var_90 = ""
  loc_A31A98: FFree1Var var_B4 = ""
  loc_A31A9B: ExitProcCbHresult
End Sub

Public Property Get InteDepa() 'A319A4
  'Data Table: 434E24
  loc_A31960: FLdRfVar var_B4
  loc_A31963: FLdRfVar var_A4
  loc_A31966: LitVarStr var_A0, "InteDepa"
  loc_A3196B: PopAdLdVar
  loc_A3196C: FLdRfVar var_90
  loc_A3196F: FLdPr Me
  loc_A31972: MemLdPr RsFrm
  loc_A31975:  = Me.Fields
  loc_A3197A: FLdPr var_90
  loc_A3197D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31982: FLdPr var_A4
  loc_A31985:  = Me.Value
  loc_A3198A: FLdRfVar var_B4
  loc_A3198D: CR4Var
  loc_A3198E: FStFPR8 var_8C
  loc_A31991: FFreeAd var_90 = ""
  loc_A31998: FFree1Var var_B4 = ""
  loc_A3199B: ExitProcCbHresult
End Sub

Public Property Get ExenDepa() 'A31924
  'Data Table: 434E24
  loc_A318E0: FLdRfVar var_B4
  loc_A318E3: FLdRfVar var_A4
  loc_A318E6: LitVarStr var_A0, "ExenDepa"
  loc_A318EB: PopAdLdVar
  loc_A318EC: FLdRfVar var_90
  loc_A318EF: FLdPr Me
  loc_A318F2: MemLdPr RsFrm
  loc_A318F5:  = Me.Fields
  loc_A318FA: FLdPr var_90
  loc_A318FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A31902: FLdPr var_A4
  loc_A31905:  = Me.Value
  loc_A3190A: FLdRfVar var_B4
  loc_A3190D: CR4Var
  loc_A3190E: FStFPR8 var_8C
  loc_A31911: FFreeAd var_90 = ""
  loc_A31918: FFree1Var var_B4 = ""
  loc_A3191B: ExitProcCbHresult
  loc_A31921: ConcatStr
  loc_A31922: FStStrNoPop var_5390
End Sub

Public Property Get ApreDepa() 'A318A4
  'Data Table: 434E24
  loc_A31860: FLdRfVar var_B4
  loc_A31863: FLdRfVar var_A4
  loc_A31866: LitVarStr var_A0, "ApreDepa"
  loc_A3186B: PopAdLdVar
  loc_A3186C: FLdRfVar var_90
  loc_A3186F: FLdPr Me
  loc_A31872: MemLdPr RsFrm
  loc_A31875:  = Me.Fields
  loc_A3187A: FLdPr var_90
  loc_A3187D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31882: FLdPr var_A4
  loc_A31885:  = Me.Value
  loc_A3188A: FLdRfVar var_B4
  loc_A3188D: CR4Var
  loc_A3188E: FStFPR8 var_8C
  loc_A31891: FFreeAd var_90 = ""
  loc_A31898: FFree1Var var_B4 = ""
  loc_A3189B: ExitProcCbHresult
End Sub

Public Property Get DetaPers() 'A13A50
  'Data Table: 434E24
  loc_A13A18: ZeroRetValVar
  loc_A13A1A: FLdRfVar var_AC
  loc_A13A1D: LitVarStr var_A8, "DetaPers"
  loc_A13A22: PopAdLdVar
  loc_A13A23: FLdRfVar var_98
  loc_A13A26: FLdPr Me
  loc_A13A29: MemLdPr RsFrm
  loc_A13A2C:  = Me.Fields
  loc_A13A31: FLdPr var_98
  loc_A13A34: from_stack_2 = Me.Item(from_stack_1)
  loc_A13A39: FLdZeroAd var_AC
  loc_A13A3C: CVarAd
  loc_A13A40: FStVar DetaPers
  loc_A13A44: FFree1Ad var_98
  loc_A13A47: ExitProcCbHresult
  loc_A13A4D: StAryRecMove
End Sub

Public Property Get ExpeBole() 'A169A8
  'Data Table: 434E24
  loc_A16970: ZeroRetValVar
  loc_A16972: FLdRfVar var_AC
  loc_A16975: LitVarStr var_A8, "ExpeBole"
  loc_A1697A: PopAdLdVar
  loc_A1697B: FLdRfVar var_98
  loc_A1697E: FLdPr Me
  loc_A16981: MemLdPr RsFrm
  loc_A16984:  = Me.Fields
  loc_A16989: FLdPr var_98
  loc_A1698C: from_stack_2 = Me.Item(from_stack_1)
  loc_A16991: FLdZeroAd var_AC
  loc_A16994: CVarAd
  loc_A16998: FStVar ExpeBole
  loc_A1699C: FFree1Ad var_98
  loc_A1699F: ExitProcCbHresult
End Sub

Public Property Get DetaCuco() 'A17038
  'Data Table: 434E24
  loc_A17000: ZeroRetValVar
  loc_A17002: FLdRfVar var_AC
  loc_A17005: LitVarStr var_A8, "DetaCuco"
  loc_A1700A: PopAdLdVar
  loc_A1700B: FLdRfVar var_98
  loc_A1700E: FLdPr Me
  loc_A17011: MemLdPr RsFrm
  loc_A17014:  = Me.Fields
  loc_A17019: FLdPr var_98
  loc_A1701C: from_stack_2 = Me.Item(from_stack_1)
  loc_A17021: FLdZeroAd var_AC
  loc_A17024: CVarAd
  loc_A17028: FStVar DetaCuco
  loc_A1702C: FFree1Ad var_98
  loc_A1702F: ExitProcCbHresult
End Sub

Public Property Get CodiCuco() 'A14338
  'Data Table: 434E24
  loc_A14300: ZeroRetValVar
  loc_A14302: FLdRfVar var_AC
  loc_A14305: LitVarStr var_A8, "CodiCuco"
  loc_A1430A: PopAdLdVar
  loc_A1430B: FLdRfVar var_98
  loc_A1430E: FLdPr Me
  loc_A14311: MemLdPr RsFrm
  loc_A14314:  = Me.Fields
  loc_A14319: FLdPr var_98
  loc_A1431C: from_stack_2 = Me.Item(from_stack_1)
  loc_A14321: FLdZeroAd var_AC
  loc_A14324: CVarAd
  loc_A14328: FStVar CodiCuco
  loc_A1432C: FFree1Ad var_98
  loc_A1432F: ExitProcCbHresult
  loc_A14335: OrI4
  loc_A14336: FnAbsCy
End Sub

Public Property Get CodiEnre() 'A14E00
  'Data Table: 434E24
  loc_A14DC8: ZeroRetValVar
  loc_A14DCA: FLdRfVar var_AC
  loc_A14DCD: LitVarStr var_A8, "CodiEnre"
  loc_A14DD2: PopAdLdVar
  loc_A14DD3: FLdRfVar var_98
  loc_A14DD6: FLdPr Me
  loc_A14DD9: MemLdPr RsFrm
  loc_A14DDC:  = Me.Fields
  loc_A14DE1: FLdPr var_98
  loc_A14DE4: from_stack_2 = Me.Item(from_stack_1)
  loc_A14DE9: FLdZeroAd var_AC
  loc_A14DEC: CVarAd
  loc_A14DF0: FStVar CodiEnre
  loc_A14DF4: FFree1Ad var_98
  loc_A14DF7: ExitProcCbHresult
End Sub

Public Property Get DetaEnre() 'A152B0
  'Data Table: 434E24
  loc_A15278: ZeroRetValVar
  loc_A1527A: FLdRfVar var_AC
  loc_A1527D: LitVarStr var_A8, "DetaEnre"
  loc_A15282: PopAdLdVar
  loc_A15283: FLdRfVar var_98
  loc_A15286: FLdPr Me
  loc_A15289: MemLdPr RsFrm
  loc_A1528C:  = Me.Fields
  loc_A15291: FLdPr var_98
  loc_A15294: from_stack_2 = Me.Item(from_stack_1)
  loc_A15299: FLdZeroAd var_AC
  loc_A1529C: CVarAd
  loc_A152A0: FStVar DetaEnre
  loc_A152A4: FFree1Ad var_98
  loc_A152A7: ExitProcCbHresult
End Sub

Public Function ValidaClave(PeriInfo, CodiConc) 'A76468
  'Data Table: 434E24
  loc_A76404: ILdRf CodiConc
  loc_A76407: FStStrCopy var_8C
  loc_A7640A: ZeroRetVal
  loc_A7640C: LitStr "SELECT PeriInfo, CodiConc FROM concepto WHERE PeriInfo = "
  loc_A7640F: FLdI2 PeriInfo
  loc_A76412: CStrUI1
  loc_A76414: FStStrNoPop var_90
  loc_A76417: ConcatStr
  loc_A76418: FStStrNoPop ValidaClave
  loc_A7641B: LitStr " AND CodiConc = '"
  loc_A7641E: ConcatStr
  loc_A7641F: FStStrNoPop var_98
  loc_A76422: ILdRf var_8C
  loc_A76425: ConcatStr
  loc_A76426: FStStrNoPop var_9C
  loc_A76429: LitStr "'"
  loc_A7642C: ConcatStr
  loc_A7642D: FStStrNoPop var_A0
  loc_A76430: Call Proc_9_59_A45184()
  loc_A76435: FFreeStr var_90 = "": ValidaClave = "": var_98 = "": var_9C = ""
  loc_A76442: FLdRfVar var_A4
  loc_A76445: FLdPr Me
  loc_A76448: MemLdPr global_64
  loc_A7644B:  = Me.RecordCount
  loc_A76450: ILdRf var_A4
  loc_A76453: LitI4 0
  loc_A76458: GtI4
  loc_A76459: BranchF loc_A76462
  loc_A7645C: LitStr "El CONCEPTO YA EXISTE. Reintente..."
  loc_A7645F: FStStrCopy var_88
  loc_A76462: ExitProcCbHresult
End Function

Public Function ValidaCodiConc(PeriInfo, CodiConc) 'B7E6FC
  'Data Table: 434E24
  loc_B7E218: ILdRf CodiConc
  loc_B7E21B: FStStrCopy var_8C
  loc_B7E21E: ZeroRetVal
  loc_B7E220: ILdRf var_8C
  loc_B7E223: FnLenStr
  loc_B7E224: LitI4 8
  loc_B7E229: NeI4
  loc_B7E22A: BranchF loc_B7E236
  loc_B7E22D: LitStr "Debe ingresar 8 caracteres. Verifique..."
  loc_B7E230: FStStrCopy var_88
  loc_B7E233: Branch loc_B7E6F6
  loc_B7E236: LitStr "Falta ingresar un Nivel. Verifique..."
  loc_B7E239: FStStrCopy var_88
  loc_B7E23C: LitVarI2 var_AC, 2
  loc_B7E241: LitI4 7
  loc_B7E246: ILdRf var_8C
  loc_B7E249: ImpAdCallI2 Mid$(, , )
  loc_B7E24E: FStStrNoPop var_B0
  loc_B7E251: LitStr "00"
  loc_B7E254: NeStr
  loc_B7E256: LitVarI2 var_D0, 2
  loc_B7E25B: LitI4 5
  loc_B7E260: ILdRf var_8C
  loc_B7E263: ImpAdCallI2 Mid$(, , )
  loc_B7E268: FStStrNoPop var_D4
  loc_B7E26B: LitStr "00"
  loc_B7E26E: NeStr
  loc_B7E270: AndI4
  loc_B7E271: LitVarI2 var_F4, 2
  loc_B7E276: LitI4 3
  loc_B7E27B: ILdRf var_8C
  loc_B7E27E: ImpAdCallI2 Mid$(, , )
  loc_B7E283: FStStrNoPop var_F8
  loc_B7E286: LitStr "00"
  loc_B7E289: NeStr
  loc_B7E28B: AndI4
  loc_B7E28C: LitVarI2 var_118, 1
  loc_B7E291: LitI4 2
  loc_B7E296: ILdRf var_8C
  loc_B7E299: ImpAdCallI2 Mid$(, , )
  loc_B7E29E: FStStrNoPop var_11C
  loc_B7E2A1: LitStr "0"
  loc_B7E2A4: NeStr
  loc_B7E2A6: AndI4
  loc_B7E2A7: LitVarI2 var_13C, 1
  loc_B7E2AC: LitI4 1
  loc_B7E2B1: ILdRf var_8C
  loc_B7E2B4: ImpAdCallI2 Mid$(, , )
  loc_B7E2B9: FStStrNoPop var_140
  loc_B7E2BC: LitStr "0"
  loc_B7E2BF: NeStr
  loc_B7E2C1: AndI4
  loc_B7E2C2: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B7E2CF: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B7E2DC: BranchF loc_B7E2E8
  loc_B7E2DF: LitStr vbNullString
  loc_B7E2E2: FStStrCopy var_88
  loc_B7E2E5: Branch loc_B7E595
  loc_B7E2E8: LitVarI2 var_AC, 2
  loc_B7E2ED: LitI4 5
  loc_B7E2F2: ILdRf var_8C
  loc_B7E2F5: ImpAdCallI2 Mid$(, , )
  loc_B7E2FA: FStStrNoPop var_B0
  loc_B7E2FD: LitStr "00"
  loc_B7E300: NeStr
  loc_B7E302: LitVarI2 var_D0, 2
  loc_B7E307: LitI4 7
  loc_B7E30C: ILdRf var_8C
  loc_B7E30F: ImpAdCallI2 Mid$(, , )
  loc_B7E314: FStStrNoPop var_D4
  loc_B7E317: LitStr "00"
  loc_B7E31A: EqStr
  loc_B7E31C: AndI4
  loc_B7E31D: LitVarI2 var_F4, 2
  loc_B7E322: LitI4 3
  loc_B7E327: ILdRf var_8C
  loc_B7E32A: ImpAdCallI2 Mid$(, , )
  loc_B7E32F: FStStrNoPop var_F8
  loc_B7E332: LitStr "00"
  loc_B7E335: NeStr
  loc_B7E337: AndI4
  loc_B7E338: LitVarI2 var_118, 1
  loc_B7E33D: LitI4 2
  loc_B7E342: ILdRf var_8C
  loc_B7E345: ImpAdCallI2 Mid$(, , )
  loc_B7E34A: FStStrNoPop var_11C
  loc_B7E34D: LitStr "0"
  loc_B7E350: NeStr
  loc_B7E352: AndI4
  loc_B7E353: LitVarI2 var_13C, 1
  loc_B7E358: LitI4 1
  loc_B7E35D: ILdRf var_8C
  loc_B7E360: ImpAdCallI2 Mid$(, , )
  loc_B7E365: FStStrNoPop var_140
  loc_B7E368: LitStr "0"
  loc_B7E36B: NeStr
  loc_B7E36D: AndI4
  loc_B7E36E: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B7E37B: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B7E388: BranchF loc_B7E394
  loc_B7E38B: LitStr vbNullString
  loc_B7E38E: FStStrCopy var_88
  loc_B7E391: Branch loc_B7E595
  loc_B7E394: LitVarI2 var_AC, 2
  loc_B7E399: LitI4 3
  loc_B7E39E: ILdRf var_8C
  loc_B7E3A1: ImpAdCallI2 Mid$(, , )
  loc_B7E3A6: FStStrNoPop var_B0
  loc_B7E3A9: LitStr "00"
  loc_B7E3AC: NeStr
  loc_B7E3AE: LitVarI2 var_D0, 2
  loc_B7E3B3: LitI4 7
  loc_B7E3B8: ILdRf var_8C
  loc_B7E3BB: ImpAdCallI2 Mid$(, , )
  loc_B7E3C0: FStStrNoPop var_D4
  loc_B7E3C3: LitStr "00"
  loc_B7E3C6: EqStr
  loc_B7E3C8: AndI4
  loc_B7E3C9: LitVarI2 var_F4, 2
  loc_B7E3CE: LitI4 5
  loc_B7E3D3: ILdRf var_8C
  loc_B7E3D6: ImpAdCallI2 Mid$(, , )
  loc_B7E3DB: FStStrNoPop var_F8
  loc_B7E3DE: LitStr "00"
  loc_B7E3E1: EqStr
  loc_B7E3E3: AndI4
  loc_B7E3E4: LitVarI2 var_118, 1
  loc_B7E3E9: LitI4 2
  loc_B7E3EE: ILdRf var_8C
  loc_B7E3F1: ImpAdCallI2 Mid$(, , )
  loc_B7E3F6: FStStrNoPop var_11C
  loc_B7E3F9: LitStr "0"
  loc_B7E3FC: NeStr
  loc_B7E3FE: AndI4
  loc_B7E3FF: LitVarI2 var_13C, 1
  loc_B7E404: LitI4 1
  loc_B7E409: ILdRf var_8C
  loc_B7E40C: ImpAdCallI2 Mid$(, , )
  loc_B7E411: FStStrNoPop var_140
  loc_B7E414: LitStr "0"
  loc_B7E417: NeStr
  loc_B7E419: AndI4
  loc_B7E41A: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B7E427: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B7E434: BranchF loc_B7E440
  loc_B7E437: LitStr vbNullString
  loc_B7E43A: FStStrCopy var_88
  loc_B7E43D: Branch loc_B7E595
  loc_B7E440: LitVarI2 var_AC, 1
  loc_B7E445: LitI4 2
  loc_B7E44A: ILdRf var_8C
  loc_B7E44D: ImpAdCallI2 Mid$(, , )
  loc_B7E452: FStStrNoPop var_B0
  loc_B7E455: LitStr "0"
  loc_B7E458: NeStr
  loc_B7E45A: LitVarI2 var_D0, 2
  loc_B7E45F: LitI4 7
  loc_B7E464: ILdRf var_8C
  loc_B7E467: ImpAdCallI2 Mid$(, , )
  loc_B7E46C: FStStrNoPop var_D4
  loc_B7E46F: LitStr "00"
  loc_B7E472: EqStr
  loc_B7E474: AndI4
  loc_B7E475: LitVarI2 var_F4, 2
  loc_B7E47A: LitI4 5
  loc_B7E47F: ILdRf var_8C
  loc_B7E482: ImpAdCallI2 Mid$(, , )
  loc_B7E487: FStStrNoPop var_F8
  loc_B7E48A: LitStr "00"
  loc_B7E48D: EqStr
  loc_B7E48F: AndI4
  loc_B7E490: LitVarI2 var_118, 2
  loc_B7E495: LitI4 3
  loc_B7E49A: ILdRf var_8C
  loc_B7E49D: ImpAdCallI2 Mid$(, , )
  loc_B7E4A2: FStStrNoPop var_11C
  loc_B7E4A5: LitStr "00"
  loc_B7E4A8: EqStr
  loc_B7E4AA: AndI4
  loc_B7E4AB: LitVarI2 var_13C, 1
  loc_B7E4B0: LitI4 1
  loc_B7E4B5: ILdRf var_8C
  loc_B7E4B8: ImpAdCallI2 Mid$(, , )
  loc_B7E4BD: FStStrNoPop var_140
  loc_B7E4C0: LitStr "0"
  loc_B7E4C3: NeStr
  loc_B7E4C5: AndI4
  loc_B7E4C6: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B7E4D3: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B7E4E0: BranchF loc_B7E4EC
  loc_B7E4E3: LitStr vbNullString
  loc_B7E4E6: FStStrCopy var_88
  loc_B7E4E9: Branch loc_B7E595
  loc_B7E4EC: LitVarI2 var_AC, 1
  loc_B7E4F1: LitI4 1
  loc_B7E4F6: ILdRf var_8C
  loc_B7E4F9: ImpAdCallI2 Mid$(, , )
  loc_B7E4FE: FStStrNoPop var_B0
  loc_B7E501: LitStr "0"
  loc_B7E504: NeStr
  loc_B7E506: LitVarI2 var_D0, 2
  loc_B7E50B: LitI4 7
  loc_B7E510: ILdRf var_8C
  loc_B7E513: ImpAdCallI2 Mid$(, , )
  loc_B7E518: FStStrNoPop var_D4
  loc_B7E51B: LitStr "00"
  loc_B7E51E: EqStr
  loc_B7E520: AndI4
  loc_B7E521: LitVarI2 var_F4, 2
  loc_B7E526: LitI4 5
  loc_B7E52B: ILdRf var_8C
  loc_B7E52E: ImpAdCallI2 Mid$(, , )
  loc_B7E533: FStStrNoPop var_F8
  loc_B7E536: LitStr "00"
  loc_B7E539: EqStr
  loc_B7E53B: AndI4
  loc_B7E53C: LitVarI2 var_118, 2
  loc_B7E541: LitI4 3
  loc_B7E546: ILdRf var_8C
  loc_B7E549: ImpAdCallI2 Mid$(, , )
  loc_B7E54E: FStStrNoPop var_11C
  loc_B7E551: LitStr "00"
  loc_B7E554: EqStr
  loc_B7E556: AndI4
  loc_B7E557: LitVarI2 var_13C, 1
  loc_B7E55C: LitI4 2
  loc_B7E561: ILdRf var_8C
  loc_B7E564: ImpAdCallI2 Mid$(, , )
  loc_B7E569: FStStrNoPop var_140
  loc_B7E56C: LitStr "0"
  loc_B7E56F: EqStr
  loc_B7E571: AndI4
  loc_B7E572: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B7E57F: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B7E58C: BranchF loc_B7E595
  loc_B7E58F: LitStr vbNullString
  loc_B7E592: FStStrCopy var_88
  loc_B7E595: ILdRf var_88
  loc_B7E598: LitStr vbNullString
  loc_B7E59B: NeStr
  loc_B7E59D: BranchF loc_B7E5A6
  loc_B7E5A0: ExitProcCbHresult
  loc_B7E5A6: FLdRfVar var_142
  loc_B7E5A9: ILdRf var_8C
  loc_B7E5AC: from_stack_2v = NivelConcepto(from_stack_1v)
  loc_B7E5B1: FLdUI1
  loc_B7E5B5: CI2UI1
  loc_B7E5B7: LitI2_Byte 1
  loc_B7E5B9: GtI2
  loc_B7E5BA: BranchF loc_B7E6F6
  loc_B7E5BD: FLdRfVar var_142
  loc_B7E5C0: ILdRf var_8C
  loc_B7E5C3: from_stack_2v = NivelConcepto(from_stack_1v)
  loc_B7E5C8: LitStr "SELECT * FROM concepto WHERE PeriInfo = "
  loc_B7E5CB: FLdI2 PeriInfo
  loc_B7E5CE: CStrUI1
  loc_B7E5D0: FStStrNoPop var_B0
  loc_B7E5D3: ConcatStr
  loc_B7E5D4: FStStrNoPop var_D4
  loc_B7E5D7: LitStr " AND CodiConc = '"
  loc_B7E5DA: ConcatStr
  loc_B7E5DB: FStStrNoPop var_11C
  loc_B7E5DE: FLdRfVar var_F8
  loc_B7E5E1: FLdUI1
  loc_B7E5E5: CI2UI1
  loc_B7E5E7: ILdRf var_8C
  loc_B7E5EA: from_stack_3v = ConceptoNivelSuperior(from_stack_1v, from_stack_2v)
  loc_B7E5EF: ILdRf var_F8
  loc_B7E5F2: ConcatStr
  loc_B7E5F3: FStStrNoPop var_140
  loc_B7E5F6: LitStr "'"
  loc_B7E5F9: ConcatStr
  loc_B7E5FA: FStStrNoPop var_148
  loc_B7E5FD: Call Proc_9_59_A45184()
  loc_B7E602: FFreeStr var_B0 = "": var_D4 = "": var_11C = "": var_F8 = "": var_140 = ""
  loc_B7E611: FLdRfVar var_14C
  loc_B7E614: FLdPr Me
  loc_B7E617: MemLdPr global_64
  loc_B7E61A:  = Me.RecordCount
  loc_B7E61F: ILdRf var_14C
  loc_B7E622: LitI4 0
  loc_B7E627: EqI4
  loc_B7E628: BranchF loc_B7E68C
  loc_B7E62B: FLdRfVar var_142
  loc_B7E62E: ILdRf var_8C
  loc_B7E631: from_stack_2v = NivelConcepto(from_stack_1v)
  loc_B7E636: LitStr "EL Concepto: "
  loc_B7E639: FLdRfVar var_B0
  loc_B7E63C: FLdUI1
  loc_B7E640: CI2UI1
  loc_B7E642: ILdRf var_8C
  loc_B7E645: from_stack_3v = ConceptoNivelSuperior(from_stack_1v, from_stack_2v)
  loc_B7E64A: ILdRf var_B0
  loc_B7E64D: ConcatStr
  loc_B7E64E: FStStrNoPop var_D4
  loc_B7E651: LitStr " de Nivel "
  loc_B7E654: ConcatStr
  loc_B7E655: FStStrNoPop var_F8
  loc_B7E658: FLdRfVar var_14E
  loc_B7E65B: ILdRf var_8C
  loc_B7E65E: from_stack_2v = NivelConcepto(from_stack_1v)
  loc_B7E663: FLdUI1
  loc_B7E667: CI2UI1
  loc_B7E669: LitI2_Byte 1
  loc_B7E66B: SubI2
  loc_B7E66C: CStrUI1
  loc_B7E66E: FStStrNoPop var_11C
  loc_B7E671: ConcatStr
  loc_B7E672: FStStrNoPop var_140
  loc_B7E675: LitStr " NO EXISTE. Verifique..."
  loc_B7E678: ConcatStr
  loc_B7E679: FStStr var_88
  loc_B7E67C: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B7E689: Branch loc_B7E6F6
  loc_B7E68C: LitStr "SELECT * FROM concepto WHERE PeriInfo = "
  loc_B7E68F: FLdI2 PeriInfo
  loc_B7E692: CStrUI1
  loc_B7E694: FStStrNoPop var_B0
  loc_B7E697: ConcatStr
  loc_B7E698: FStStrNoPop var_D4
  loc_B7E69B: LitStr " AND CodiConc = '"
  loc_B7E69E: ConcatStr
  loc_B7E69F: FStStrNoPop var_F8
  loc_B7E6A2: ILdRf var_8C
  loc_B7E6A5: ConcatStr
  loc_B7E6A6: FStStrNoPop var_11C
  loc_B7E6A9: LitStr "'"
  loc_B7E6AC: ConcatStr
  loc_B7E6AD: FStStrNoPop var_140
  loc_B7E6B0: Call Proc_9_59_A45184()
  loc_B7E6B5: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B7E6C2: FLdRfVar var_14C
  loc_B7E6C5: FLdPr Me
  loc_B7E6C8: MemLdPr global_64
  loc_B7E6CB:  = Me.RecordCount
  loc_B7E6D0: ILdRf var_14C
  loc_B7E6D3: LitI4 0
  loc_B7E6D8: GtI4
  loc_B7E6D9: BranchF loc_B7E6F6
  loc_B7E6DC: LitStr "El concepto "
  loc_B7E6DF: ILdRf var_8C
  loc_B7E6E2: ConcatStr
  loc_B7E6E3: FStStrNoPop var_B0
  loc_B7E6E6: LitStr " YA EXISTE. Verifique..."
  loc_B7E6E9: ConcatStr
  loc_B7E6EA: FStStr var_88
  loc_B7E6ED: FFree1Str var_B0
  loc_B7E6F0: ExitProcCbHresult
  loc_B7E6F6: ExitProcCbHresult
End Function

Public Function NivelConcepto(CodiConc) 'B4E610
  'Data Table: 434E24
  loc_B4E280: ILdRf CodiConc
  loc_B4E283: FStStrCopy var_8C
  loc_B4E286: LitI2_Byte 0
  loc_B4E288: CUI1I2
  loc_B4E28A: FStUI1 var_86
  loc_B4E28E: LitVarI2 var_AC, 2
  loc_B4E293: LitI4 7
  loc_B4E298: ILdRf var_8C
  loc_B4E29B: ImpAdCallI2 Mid$(, , )
  loc_B4E2A0: FStStrNoPop var_B0
  loc_B4E2A3: LitStr "00"
  loc_B4E2A6: NeStr
  loc_B4E2A8: LitVarI2 var_D0, 2
  loc_B4E2AD: LitI4 5
  loc_B4E2B2: ILdRf var_8C
  loc_B4E2B5: ImpAdCallI2 Mid$(, , )
  loc_B4E2BA: FStStrNoPop var_D4
  loc_B4E2BD: LitStr "00"
  loc_B4E2C0: NeStr
  loc_B4E2C2: AndI4
  loc_B4E2C3: LitVarI2 var_F4, 2
  loc_B4E2C8: LitI4 3
  loc_B4E2CD: ILdRf var_8C
  loc_B4E2D0: ImpAdCallI2 Mid$(, , )
  loc_B4E2D5: FStStrNoPop var_F8
  loc_B4E2D8: LitStr "00"
  loc_B4E2DB: NeStr
  loc_B4E2DD: AndI4
  loc_B4E2DE: LitVarI2 var_118, 1
  loc_B4E2E3: LitI4 2
  loc_B4E2E8: ILdRf var_8C
  loc_B4E2EB: ImpAdCallI2 Mid$(, , )
  loc_B4E2F0: FStStrNoPop var_11C
  loc_B4E2F3: LitStr "0"
  loc_B4E2F6: NeStr
  loc_B4E2F8: AndI4
  loc_B4E2F9: LitVarI2 var_13C, 1
  loc_B4E2FE: LitI4 1
  loc_B4E303: ILdRf var_8C
  loc_B4E306: ImpAdCallI2 Mid$(, , )
  loc_B4E30B: FStStrNoPop var_140
  loc_B4E30E: LitStr "0"
  loc_B4E311: NeStr
  loc_B4E313: AndI4
  loc_B4E314: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B4E321: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B4E32E: BranchF loc_B4E342
  loc_B4E331: LitI2_Byte 5
  loc_B4E333: CUI1I2
  loc_B4E335: FStUI1 var_86
  loc_B4E339: ExitProcCbHresult
  loc_B4E33F: Branch loc_B4E609
  loc_B4E342: LitVarI2 var_AC, 2
  loc_B4E347: LitI4 5
  loc_B4E34C: ILdRf var_8C
  loc_B4E34F: ImpAdCallI2 Mid$(, , )
  loc_B4E354: FStStrNoPop var_B0
  loc_B4E357: LitStr "00"
  loc_B4E35A: NeStr
  loc_B4E35C: LitVarI2 var_D0, 2
  loc_B4E361: LitI4 7
  loc_B4E366: ILdRf var_8C
  loc_B4E369: ImpAdCallI2 Mid$(, , )
  loc_B4E36E: FStStrNoPop var_D4
  loc_B4E371: LitStr "00"
  loc_B4E374: EqStr
  loc_B4E376: AndI4
  loc_B4E377: LitVarI2 var_F4, 2
  loc_B4E37C: LitI4 3
  loc_B4E381: ILdRf var_8C
  loc_B4E384: ImpAdCallI2 Mid$(, , )
  loc_B4E389: FStStrNoPop var_F8
  loc_B4E38C: LitStr "00"
  loc_B4E38F: NeStr
  loc_B4E391: AndI4
  loc_B4E392: LitVarI2 var_118, 1
  loc_B4E397: LitI4 2
  loc_B4E39C: ILdRf var_8C
  loc_B4E39F: ImpAdCallI2 Mid$(, , )
  loc_B4E3A4: FStStrNoPop var_11C
  loc_B4E3A7: LitStr "0"
  loc_B4E3AA: NeStr
  loc_B4E3AC: AndI4
  loc_B4E3AD: LitVarI2 var_13C, 1
  loc_B4E3B2: LitI4 1
  loc_B4E3B7: ILdRf var_8C
  loc_B4E3BA: ImpAdCallI2 Mid$(, , )
  loc_B4E3BF: FStStrNoPop var_140
  loc_B4E3C2: LitStr "0"
  loc_B4E3C5: NeStr
  loc_B4E3C7: AndI4
  loc_B4E3C8: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B4E3D5: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B4E3E2: BranchF loc_B4E3F6
  loc_B4E3E5: LitI2_Byte 4
  loc_B4E3E7: CUI1I2
  loc_B4E3E9: FStUI1 var_86
  loc_B4E3ED: ExitProcCbHresult
  loc_B4E3F3: Branch loc_B4E609
  loc_B4E3F6: LitVarI2 var_AC, 2
  loc_B4E3FB: LitI4 3
  loc_B4E400: ILdRf var_8C
  loc_B4E403: ImpAdCallI2 Mid$(, , )
  loc_B4E408: FStStrNoPop var_B0
  loc_B4E40B: LitStr "00"
  loc_B4E40E: NeStr
  loc_B4E410: LitVarI2 var_D0, 2
  loc_B4E415: LitI4 7
  loc_B4E41A: ILdRf var_8C
  loc_B4E41D: ImpAdCallI2 Mid$(, , )
  loc_B4E422: FStStrNoPop var_D4
  loc_B4E425: LitStr "00"
  loc_B4E428: EqStr
  loc_B4E42A: AndI4
  loc_B4E42B: LitVarI2 var_F4, 2
  loc_B4E430: LitI4 5
  loc_B4E435: ILdRf var_8C
  loc_B4E438: ImpAdCallI2 Mid$(, , )
  loc_B4E43D: FStStrNoPop var_F8
  loc_B4E440: LitStr "00"
  loc_B4E443: EqStr
  loc_B4E445: AndI4
  loc_B4E446: LitVarI2 var_118, 1
  loc_B4E44B: LitI4 2
  loc_B4E450: ILdRf var_8C
  loc_B4E453: ImpAdCallI2 Mid$(, , )
  loc_B4E458: FStStrNoPop var_11C
  loc_B4E45B: LitStr "0"
  loc_B4E45E: NeStr
  loc_B4E460: AndI4
  loc_B4E461: LitVarI2 var_13C, 1
  loc_B4E466: LitI4 1
  loc_B4E46B: ILdRf var_8C
  loc_B4E46E: ImpAdCallI2 Mid$(, , )
  loc_B4E473: FStStrNoPop var_140
  loc_B4E476: LitStr "0"
  loc_B4E479: NeStr
  loc_B4E47B: AndI4
  loc_B4E47C: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B4E489: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B4E496: BranchF loc_B4E4AA
  loc_B4E499: LitI2_Byte 3
  loc_B4E49B: CUI1I2
  loc_B4E49D: FStUI1 var_86
  loc_B4E4A1: ExitProcCbHresult
  loc_B4E4A7: Branch loc_B4E609
  loc_B4E4AA: LitVarI2 var_AC, 1
  loc_B4E4AF: LitI4 2
  loc_B4E4B4: ILdRf var_8C
  loc_B4E4B7: ImpAdCallI2 Mid$(, , )
  loc_B4E4BC: FStStrNoPop var_B0
  loc_B4E4BF: LitStr "0"
  loc_B4E4C2: NeStr
  loc_B4E4C4: LitVarI2 var_D0, 2
  loc_B4E4C9: LitI4 7
  loc_B4E4CE: ILdRf var_8C
  loc_B4E4D1: ImpAdCallI2 Mid$(, , )
  loc_B4E4D6: FStStrNoPop var_D4
  loc_B4E4D9: LitStr "00"
  loc_B4E4DC: EqStr
  loc_B4E4DE: AndI4
  loc_B4E4DF: LitVarI2 var_F4, 2
  loc_B4E4E4: LitI4 5
  loc_B4E4E9: ILdRf var_8C
  loc_B4E4EC: ImpAdCallI2 Mid$(, , )
  loc_B4E4F1: FStStrNoPop var_F8
  loc_B4E4F4: LitStr "00"
  loc_B4E4F7: EqStr
  loc_B4E4F9: AndI4
  loc_B4E4FA: LitVarI2 var_118, 2
  loc_B4E4FF: LitI4 3
  loc_B4E504: ILdRf var_8C
  loc_B4E507: ImpAdCallI2 Mid$(, , )
  loc_B4E50C: FStStrNoPop var_11C
  loc_B4E50F: LitStr "00"
  loc_B4E512: EqStr
  loc_B4E514: AndI4
  loc_B4E515: LitVarI2 var_13C, 1
  loc_B4E51A: LitI4 1
  loc_B4E51F: ILdRf var_8C
  loc_B4E522: ImpAdCallI2 Mid$(, , )
  loc_B4E527: FStStrNoPop var_140
  loc_B4E52A: LitStr "0"
  loc_B4E52D: NeStr
  loc_B4E52F: AndI4
  loc_B4E530: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B4E53D: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B4E54A: BranchF loc_B4E55E
  loc_B4E54D: LitI2_Byte 2
  loc_B4E54F: CUI1I2
  loc_B4E551: FStUI1 var_86
  loc_B4E555: ExitProcCbHresult
  loc_B4E55B: Branch loc_B4E609
  loc_B4E55E: LitVarI2 var_AC, 1
  loc_B4E563: LitI4 1
  loc_B4E568: ILdRf var_8C
  loc_B4E56B: ImpAdCallI2 Mid$(, , )
  loc_B4E570: FStStrNoPop var_B0
  loc_B4E573: LitStr "0"
  loc_B4E576: NeStr
  loc_B4E578: LitVarI2 var_D0, 2
  loc_B4E57D: LitI4 7
  loc_B4E582: ILdRf var_8C
  loc_B4E585: ImpAdCallI2 Mid$(, , )
  loc_B4E58A: FStStrNoPop var_D4
  loc_B4E58D: LitStr "00"
  loc_B4E590: EqStr
  loc_B4E592: AndI4
  loc_B4E593: LitVarI2 var_F4, 2
  loc_B4E598: LitI4 5
  loc_B4E59D: ILdRf var_8C
  loc_B4E5A0: ImpAdCallI2 Mid$(, , )
  loc_B4E5A5: FStStrNoPop var_F8
  loc_B4E5A8: LitStr "00"
  loc_B4E5AB: EqStr
  loc_B4E5AD: AndI4
  loc_B4E5AE: LitVarI2 var_118, 2
  loc_B4E5B3: LitI4 3
  loc_B4E5B8: ILdRf var_8C
  loc_B4E5BB: ImpAdCallI2 Mid$(, , )
  loc_B4E5C0: FStStrNoPop var_11C
  loc_B4E5C3: LitStr "0"
  loc_B4E5C6: EqStr
  loc_B4E5C8: AndI4
  loc_B4E5C9: LitVarI2 var_13C, 1
  loc_B4E5CE: LitI4 2
  loc_B4E5D3: ILdRf var_8C
  loc_B4E5D6: ImpAdCallI2 Mid$(, , )
  loc_B4E5DB: FStStrNoPop var_140
  loc_B4E5DE: LitStr "0"
  loc_B4E5E1: EqStr
  loc_B4E5E3: AndI4
  loc_B4E5E4: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B4E5F1: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B4E5FE: BranchF loc_B4E609
  loc_B4E601: LitI2_Byte 1
  loc_B4E603: CUI1I2
  loc_B4E605: FStUI1 var_86
  loc_B4E609: ExitProcCbHresult
End Function

Public Function ConceptoNivelSuperior(CodiConc, Nivel) 'A891E4
  'Data Table: 434E24
  loc_A89150: ILdRf CodiConc
  loc_A89153: FStStrCopy var_8C
  loc_A89156: ZeroRetVal
  loc_A89158: FLdI2 Nivel
  loc_A8915B: FStI2 var_96
  loc_A8915E: FLdI2 var_96
  loc_A89161: LitI2_Byte 2
  loc_A89163: EqI2
  loc_A89164: BranchF loc_A89178
  loc_A89167: LitI2_Byte 1
  loc_A89169: CUI1I2
  loc_A8916B: FStUI1 var_8E
  loc_A8916F: LitStr "0000000"
  loc_A89172: FStStrCopy ConceptoNivelSuperior
  loc_A89175: Branch loc_A891C3
  loc_A89178: FLdI2 var_96
  loc_A8917B: LitI2_Byte 3
  loc_A8917D: EqI2
  loc_A8917E: BranchF loc_A89192
  loc_A89181: LitI2_Byte 2
  loc_A89183: CUI1I2
  loc_A89185: FStUI1 var_8E
  loc_A89189: LitStr "000000"
  loc_A8918C: FStStrCopy ConceptoNivelSuperior
  loc_A8918F: Branch loc_A891C3
  loc_A89192: FLdI2 var_96
  loc_A89195: LitI2_Byte 4
  loc_A89197: EqI2
  loc_A89198: BranchF loc_A891AC
  loc_A8919B: LitI2_Byte 4
  loc_A8919D: CUI1I2
  loc_A8919F: FStUI1 var_8E
  loc_A891A3: LitStr "0000"
  loc_A891A6: FStStrCopy ConceptoNivelSuperior
  loc_A891A9: Branch loc_A891C3
  loc_A891AC: FLdI2 var_96
  loc_A891AF: LitI2_Byte 5
  loc_A891B1: EqI2
  loc_A891B2: BranchF loc_A891C3
  loc_A891B5: LitI2_Byte 6
  loc_A891B7: CUI1I2
  loc_A891B9: FStUI1 var_8E
  loc_A891BD: LitStr "00"
  loc_A891C0: FStStrCopy ConceptoNivelSuperior
  loc_A891C3: FLdUI1
  loc_A891C7: CI4UI1
  loc_A891C8: ILdRf var_8C
  loc_A891CB: ImpAdCallI2 Left$(, )
  loc_A891D0: FStStrNoPop var_9C
  loc_A891D3: ILdRf ConceptoNivelSuperior
  loc_A891D6: ConcatStr
  loc_A891D7: FStStr var_88
  loc_A891DA: FFree1Str var_9C
  loc_A891DD: ExitProcCbHresult
End Function

Private Function Proc_9_58_9F9788() '9F9788
  'Data Table: 434E24
  loc_9F9764: LitStr "Primary"
  loc_9F9767: FLdPr Me
  loc_9F976A: LateIdLdVar var_94 DispID_4 0
  loc_9F9771: CastAdVar Me
  loc_9F9775: FStAdFunc var_98
  loc_9F9778: FLdPr var_98
  loc_9F9780: FFree1Ad var_98
  loc_9F9783: FFree1Var var_94 = ""
  loc_9F9786: ExitProcHresult
End Function

Private Function Proc_9_59_A45184(arg_C) 'A45184
  'Data Table: 434E24
  loc_A45130: ILdRf arg_C
  loc_A45133: FStStrCopy var_88
  loc_A45136: LitNothing
  loc_A45138: CastAd
  loc_A4513B: FStAdFuncNoPop
  loc_A4513E: FLdPr Me
  loc_A45141: MemStAd
  loc_A45145: FFree1Ad var_8C
  loc_A45148: New Recordset
  loc_A4514C: FStAdFuncNoPop
  loc_A4514F: FLdPr Me
  loc_A45152: MemStAd
  loc_A45156: FFree1Ad var_8C
  loc_A45159: LitI4 -1
  loc_A4515E: LitI4 3
  loc_A45163: LitI4 3
  loc_A45168: ImpAdLdI4 MemVar_D9301C
  loc_A4516B: CVarAd
  loc_A4516F: PopAdLdVar
  loc_A45170: ILdRf var_88
  loc_A45173: CVarStr var_9C
  loc_A45176: PopAdLdVar
  loc_A45177: FLdPr Me
  loc_A4517A: MemLdPr global_64
  loc_A4517D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A45182: ExitProcHresult
End Function

Private Function Proc_9_60_9E3BBC(arg_C) '9E3BBC
  'Data Table: 434E24
  loc_9E3BA0: ILdI4 arg_C
  loc_9E3BA3: FStStrCopy var_88
  loc_9E3BA6: ILdRf var_88
  loc_9E3BA9: LitStr "Primary"
  loc_9E3BAC: EqStr
  loc_9E3BAE: BranchF loc_9E3BBB
  loc_9E3BB1: FLdPr Me
  loc_9E3BB4: MemLdStr RsFrm
  loc_9E3BB7: IStAd
  loc_9E3BBB: ExitProcHresult
End Function
