VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsingrrent"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0B104
  'Data Table: 41D340
  loc_A0B0C8: FLdRfVar var_8C
  loc_A0B0CB: FLdRfVar var_88
  loc_A0B0CE: FLdPr Me
  loc_A0B0D1: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A0B0D6: FLdPr var_88
  loc_A0B0D9:  = Me.RecordCount
  loc_A0B0DE: ILdRf var_8C
  loc_A0B0E1: LitI4 0
  loc_A0B0E6: GtI4
  loc_A0B0E7: FFree1Ad var_88
  loc_A0B0EA: BranchF loc_A0B103
  loc_A0B0ED: FLdRfVar var_88
  loc_A0B0F0: FLdPr Me
  loc_A0B0F3: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A0B0F8: FLdPr var_88
  loc_A0B0FB: Me.MoveFirst
  loc_A0B100: FFree1Ad var_88
  loc_A0B103: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0E194
  'Data Table: 41D340
  loc_A0E158: FLdRfVar var_8C
  loc_A0E15B: FLdRfVar var_88
  loc_A0E15E: FLdPr Me
  loc_A0E161: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A0E166: FLdPr var_88
  loc_A0E169:  = Me.RecordCount
  loc_A0E16E: ILdRf var_8C
  loc_A0E171: LitI4 0
  loc_A0E176: GtI4
  loc_A0E177: FFree1Ad var_88
  loc_A0E17A: BranchF loc_A0E193
  loc_A0E17D: FLdRfVar var_88
  loc_A0E180: FLdPr Me
  loc_A0E183: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A0E188: FLdPr var_88
  loc_A0E18B: Me.MoveLast
  loc_A0E190: FFree1Ad var_88
  loc_A0E193: ExitProcHresult
End Sub

Public Sub MoveNext() 'A99A00
  'Data Table: 41D340
  loc_A99944: FLdRfVar var_8A
  loc_A99947: FLdRfVar var_88
  loc_A9994A: FLdPr Me
  loc_A9994D: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A99952: FLdPr var_88
  loc_A99955:  = Me.EOF
  loc_A9995A: FLdI2 var_8A
  loc_A9995D: NotI4
  loc_A9995E: FLdRfVar var_94
  loc_A99961: FLdRfVar var_90
  loc_A99964: FLdPr Me
  loc_A99967: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A9996C: FLdPr var_90
  loc_A9996F:  = Me.RecordCount
  loc_A99974: ILdRf var_94
  loc_A99977: LitI4 0
  loc_A9997C: GtI4
  loc_A9997D: AndI4
  loc_A9997E: FFreeAd var_88 = ""
  loc_A99985: BranchF loc_A9999E
  loc_A99988: FLdRfVar var_88
  loc_A9998B: FLdPr Me
  loc_A9998E: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A99993: FLdPr var_88
  loc_A99996: Me.MoveNext
  loc_A9999B: FFree1Ad var_88
  loc_A9999E: FLdRfVar var_8A
  loc_A999A1: FLdRfVar var_88
  loc_A999A4: FLdPr Me
  loc_A999A7: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A999AC: FLdPr var_88
  loc_A999AF:  = Me.EOF
  loc_A999B4: FLdI2 var_8A
  loc_A999B7: FLdRfVar var_94
  loc_A999BA: FLdRfVar var_90
  loc_A999BD: FLdPr Me
  loc_A999C0: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A999C5: FLdPr var_90
  loc_A999C8:  = Me.RecordCount
  loc_A999CD: ILdRf var_94
  loc_A999D0: LitI4 0
  loc_A999D5: GtI4
  loc_A999D6: AndI4
  loc_A999D7: FFreeAd var_88 = ""
  loc_A999DE: BranchF loc_A999FC
  loc_A999E1: ImpAdCallFPR4 Beep()
  loc_A999E6: FLdRfVar var_88
  loc_A999E9: FLdPr Me
  loc_A999EC: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A999F1: FLdPr var_88
  loc_A999F4: Me.MoveLast
  loc_A999F9: FFree1Ad var_88
  loc_A999FC: ExitProcHresult
  loc_A999FD: FLdRfVar var_88
End Sub

Public Sub MoveSiguiente() '9DB338
  'Data Table: 41D340
  loc_9DB320: FLdRfVar var_88
  loc_9DB323: FLdPr Me
  loc_9DB326: from_stack_1v = clsingrrent.global_4313800Get()
  loc_9DB32B: FLdPr var_88
  loc_9DB32E: Me.MoveNext
  loc_9DB333: FFree1Ad var_88
  loc_9DB336: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E770C
  'Data Table: 41D340
  loc_9E76EC: LitVar_Missing var_98
  loc_9E76EF: PopAdLdVar
  loc_9E76F0: ILdI2 iValor
  loc_9E76F3: CI4UI1
  loc_9E76F4: FLdRfVar var_88
  loc_9E76F7: FLdPr Me
  loc_9E76FA: from_stack_1v = clsingrrent.global_4313800Get()
  loc_9E76FF: FLdPr var_88
  loc_9E7702: Me.Move from_stack_1, from_stack_2
  loc_9E7707: FFree1Ad var_88
  loc_9E770A: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9B698
  'Data Table: 41D340
  loc_A9B5DC: FLdRfVar var_8A
  loc_A9B5DF: FLdRfVar var_88
  loc_A9B5E2: FLdPr Me
  loc_A9B5E5: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A9B5EA: FLdPr var_88
  loc_A9B5ED:  = Me.BOF
  loc_A9B5F2: FLdI2 var_8A
  loc_A9B5F5: NotI4
  loc_A9B5F6: FLdRfVar var_94
  loc_A9B5F9: FLdRfVar var_90
  loc_A9B5FC: FLdPr Me
  loc_A9B5FF: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A9B604: FLdPr var_90
  loc_A9B607:  = Me.RecordCount
  loc_A9B60C: ILdRf var_94
  loc_A9B60F: LitI4 0
  loc_A9B614: GtI4
  loc_A9B615: AndI4
  loc_A9B616: FFreeAd var_88 = ""
  loc_A9B61D: BranchF loc_A9B636
  loc_A9B620: FLdRfVar var_88
  loc_A9B623: FLdPr Me
  loc_A9B626: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A9B62B: FLdPr var_88
  loc_A9B62E: Me.MovePrevious
  loc_A9B633: FFree1Ad var_88
  loc_A9B636: FLdRfVar var_8A
  loc_A9B639: FLdRfVar var_88
  loc_A9B63C: FLdPr Me
  loc_A9B63F: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A9B644: FLdPr var_88
  loc_A9B647:  = Me.BOF
  loc_A9B64C: FLdI2 var_8A
  loc_A9B64F: FLdRfVar var_94
  loc_A9B652: FLdRfVar var_90
  loc_A9B655: FLdPr Me
  loc_A9B658: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A9B65D: FLdPr var_90
  loc_A9B660:  = Me.RecordCount
  loc_A9B665: ILdRf var_94
  loc_A9B668: LitI4 0
  loc_A9B66D: GtI4
  loc_A9B66E: AndI4
  loc_A9B66F: FFreeAd var_88 = ""
  loc_A9B676: BranchF loc_A9B694
  loc_A9B679: ImpAdCallFPR4 Beep()
  loc_A9B67E: FLdRfVar var_88
  loc_A9B681: FLdPr Me
  loc_A9B684: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A9B689: FLdPr var_88
  loc_A9B68C: Me.MoveFirst
  loc_A9B691: FFree1Ad var_88
  loc_A9B694: ExitProcHresult
End Sub

Public Property Get EOF() '9F8594
  'Data Table: 41D340
  loc_9F856C: FLdRfVar var_8E
  loc_9F856F: FLdRfVar var_8C
  loc_9F8572: FLdPr Me
  loc_9F8575: from_stack_1v = clsingrrent.global_4313800Get()
  loc_9F857A: FLdPr var_8C
  loc_9F857D:  = Me.EOF
  loc_9F8582: FLdI2 var_8E
  loc_9F8585: FStI2 var_86
  loc_9F8588: FFree1Ad var_8C
  loc_9F858B: ExitProcCbHresult
  loc_9F8591: FLdPr arg_F00
End Sub

Public Property Get BOF() '9F8874
  'Data Table: 41D340
  loc_9F884C: FLdRfVar var_8E
  loc_9F884F: FLdRfVar var_8C
  loc_9F8852: FLdPr Me
  loc_9F8855: from_stack_1v = clsingrrent.global_4313800Get()
  loc_9F885A: FLdPr var_8C
  loc_9F885D:  = Me.BOF
  loc_9F8862: FLdI2 var_8E
  loc_9F8865: FStI2 var_86
  loc_9F8868: FFree1Ad var_8C
  loc_9F886B: ExitProcCbHresult
  loc_9F8871: FLdPr arg_3D00
End Sub

Public Sub Sort(sOrden) '9E44CC
  'Data Table: 41D340
  loc_9E44B0: ILdI4 sOrden
  loc_9E44B3: FLdRfVar var_88
  loc_9E44B6: FLdPr Me
  loc_9E44B9: from_stack_1v = clsingrrent.global_4313800Get()
  loc_9E44BE: FLdPr var_88
  loc_9E44C1: Me.Sort = from_stack_1
  loc_9E44C6: FFree1Ad var_88
  loc_9E44C9: ExitProcHresult
  loc_9E44CA: FStI2 var_3701
End Sub

Public Sub Find(sFind) '9F892C
  'Data Table: 41D340
  loc_9F8904: LitVar_Missing var_98
  loc_9F8907: PopAdLdVar
  loc_9F8908: LitI4 1
  loc_9F890D: LitI4 0
  loc_9F8912: ILdI4 sFind
  loc_9F8915: FLdRfVar var_88
  loc_9F8918: FLdPr Me
  loc_9F891B: from_stack_1v = clsingrrent.global_4313800Get()
  loc_9F8920: FLdPr var_88
  loc_9F8923: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F8928: FFree1Ad var_88
  loc_9F892B: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F8988
  'Data Table: 41D340
  loc_9F8960: FLdRfVar var_90
  loc_9F8963: FLdRfVar var_8C
  loc_9F8966: FLdPr Me
  loc_9F8969: from_stack_1v = clsingrrent.global_4313800Get()
  loc_9F896E: FLdPr var_8C
  loc_9F8971:  = Me.AbsolutePosition
  loc_9F8976: ILdRf var_90
  loc_9F8979: FStR4 var_88
  loc_9F897C: FFree1Ad var_8C
  loc_9F897F: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F89E4
  'Data Table: 41D340
  loc_9F89BC: FLdRfVar var_90
  loc_9F89BF: FLdRfVar var_8C
  loc_9F89C2: FLdPr Me
  loc_9F89C5: from_stack_1v = clsingrrent.global_4313800Get()
  loc_9F89CA: FLdPr var_8C
  loc_9F89CD:  = Me.RecordCount
  loc_9F89D2: ILdRf var_90
  loc_9F89D5: FStR4 var_88
  loc_9F89D8: FFree1Ad var_8C
  loc_9F89DB: ExitProcCbHresult
End Sub

Public Sub AddNew(FechInre, NumeAcpa, ActuInre) 'AC9E84
  'Data Table: 41D340
  loc_AC9D8C: ILdRf FechInre
  loc_AC9D8F: FStStrCopy var_88
  loc_AC9D92: ILdRf ActuInre
  loc_AC9D95: FStStrCopy var_8C
  loc_AC9D98: LitStr "SELECT FechInre FROM ingrrent WHERE FechInre = '"
  loc_AC9D9B: LitI4 1
  loc_AC9DA0: LitI4 1
  loc_AC9DA5: LitVarStr var_AC, "yyyy-mm-dd"
  loc_AC9DAA: FStVarCopyObj var_BC
  loc_AC9DAD: FLdRfVar var_BC
  loc_AC9DB0: FLdRfVar var_88
  loc_AC9DB3: CVarRef
  loc_AC9DB8: ImpAdCallI2 Format$(, )
  loc_AC9DBD: FStStrNoPop var_C0
  loc_AC9DC0: ConcatStr
  loc_AC9DC1: FStStrNoPop var_C4
  loc_AC9DC4: LitStr "' AND NumeAcpa = "
  loc_AC9DC7: ConcatStr
  loc_AC9DC8: FStStrNoPop var_C8
  loc_AC9DCB: FLdI2 NumeAcpa
  loc_AC9DCE: CStrUI1
  loc_AC9DD0: FStStrNoPop var_CC
  loc_AC9DD3: ConcatStr
  loc_AC9DD4: FStStrNoPop var_D0
  loc_AC9DD7: Call EjecutarRs2(from_stack_1v)
  loc_AC9DDC: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_AC9DE9: FFree1Var var_BC = ""
  loc_AC9DEC: FLdRfVar var_D8
  loc_AC9DEF: FLdRfVar var_D4
  loc_AC9DF2: FLdPr Me
  loc_AC9DF5: from_stack_1v = clsingrrent.global_4313800Get()
  loc_AC9DFA: FLdPr var_D4
  loc_AC9DFD:  = Me.RecordCount
  loc_AC9E02: ILdRf var_D8
  loc_AC9E05: LitI4 0
  loc_AC9E0A: EqI4
  loc_AC9E0B: FFree1Ad var_D4
  loc_AC9E0E: BranchF loc_AC9E80
  loc_AC9E11: LitStr "INSERT INTO ingrrent (FechInre, NumeAcpa, ActuInre) VALUES ('"
  loc_AC9E14: LitI4 1
  loc_AC9E19: LitI4 1
  loc_AC9E1E: LitVarStr var_AC, "yyyy-mm-dd"
  loc_AC9E23: FStVarCopyObj var_BC
  loc_AC9E26: FLdRfVar var_BC
  loc_AC9E29: FLdRfVar var_88
  loc_AC9E2C: CVarRef
  loc_AC9E31: ImpAdCallI2 Format$(, )
  loc_AC9E36: FStStrNoPop var_C0
  loc_AC9E39: ConcatStr
  loc_AC9E3A: FStStrNoPop var_C4
  loc_AC9E3D: LitStr "',"
  loc_AC9E40: ConcatStr
  loc_AC9E41: FStStrNoPop var_C8
  loc_AC9E44: FLdI2 NumeAcpa
  loc_AC9E47: CStrUI1
  loc_AC9E49: FStStrNoPop var_CC
  loc_AC9E4C: ConcatStr
  loc_AC9E4D: FStStrNoPop var_D0
  loc_AC9E50: LitStr ",'"
  loc_AC9E53: ConcatStr
  loc_AC9E54: FStStrNoPop var_DC
  loc_AC9E57: ILdRf var_8C
  loc_AC9E5A: ConcatStr
  loc_AC9E5B: FStStrNoPop var_E0
  loc_AC9E5E: LitStr "')"
  loc_AC9E61: ConcatStr
  loc_AC9E62: FStStrNoPop var_E4
  loc_AC9E65: Call EjecutarRs2(from_stack_1v)
  loc_AC9E6A: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_DC = "": var_E0 = ""
  loc_AC9E7D: FFree1Var var_BC = ""
  loc_AC9E80: ExitProcHresult
End Sub

Public Sub Actualiza(FechInre, NumeAcpa) 'A6DA7C
  'Data Table: 41D340
  loc_A6DA20: ILdRf FechInre
  loc_A6DA23: FStStrCopy var_88
  loc_A6DA26: LitStr "UPDATE ingrrent SET ActuInre = 'Si' WHERE FechInre = '"
  loc_A6DA29: LitI4 1
  loc_A6DA2E: LitI4 1
  loc_A6DA33: LitVarStr var_A8, "yyyy-mm-dd"
  loc_A6DA38: FStVarCopyObj var_B8
  loc_A6DA3B: FLdRfVar var_B8
  loc_A6DA3E: FLdRfVar var_88
  loc_A6DA41: CVarRef
  loc_A6DA46: ImpAdCallI2 Format$(, )
  loc_A6DA4B: FStStrNoPop var_BC
  loc_A6DA4E: ConcatStr
  loc_A6DA4F: FStStrNoPop var_C0
  loc_A6DA52: LitStr "' AND NumeAcpa = "
  loc_A6DA55: ConcatStr
  loc_A6DA56: FStStrNoPop var_C4
  loc_A6DA59: FLdI2 NumeAcpa
  loc_A6DA5C: CStrUI1
  loc_A6DA5E: FStStrNoPop var_C8
  loc_A6DA61: ConcatStr
  loc_A6DA62: FStStrNoPop var_CC
  loc_A6DA65: Call EjecutarRs2(from_stack_1v)
  loc_A6DA6A: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_A6DA77: FFree1Var var_B8 = ""
  loc_A6DA7A: ExitProcHresult
  loc_A6DA7B: CStrVarTmp
End Sub

Public Sub Delete() 'A24028
  'Data Table: 41D340
  loc_A23FE0: FLdRfVar var_8C
  loc_A23FE3: FLdRfVar var_88
  loc_A23FE6: FLdPr Me
  loc_A23FE9: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A23FEE: FLdPr var_88
  loc_A23FF1:  = Me.RecordCount
  loc_A23FF6: ILdRf var_8C
  loc_A23FF9: LitI4 0
  loc_A23FFE: GtI4
  loc_A23FFF: FFree1Ad var_88
  loc_A24002: BranchF loc_A24025
  loc_A24005: LitI4 1
  loc_A2400A: FLdRfVar var_88
  loc_A2400D: FLdPr Me
  loc_A24010: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A24015: FLdPr var_88
  loc_A24018: Me.Delete
  loc_A2401D: FFree1Ad var_88
  loc_A24020: Call MoveNext()
  loc_A24025: ExitProcHresult
  loc_A24026: LitStr "?@<("
End Sub

Public Sub Requery(arg_C) 'A00AD8
  'Data Table: 41D340
  loc_A00AA8: LitI4 -1
  loc_A00AAD: FLdRfVar var_88
  loc_A00AB0: FLdPr Me
  loc_A00AB3: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A00AB8: FLdPr var_88
  loc_A00ABB: Me.Requery from_stack_1
  loc_A00AC0: FFree1Ad var_88
  loc_A00AC3: LitVarStr var_98, "Primary"
  loc_A00AC8: PopAdLdVar
  loc_A00AC9: FLdPr Me
  loc_A00ACC: LateIdCall
  loc_A00AD4: ExitProcHresult
  loc_A00AD5: IStI2 arg_C
End Sub

Public Sub Update() 'A217F0
  'Data Table: 41D340
  loc_A217AC: FLdRfVar var_88
  loc_A217AF: FLdPr Me
  loc_A217B2: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A217B7: FLdZeroAd var_88
  loc_A217BA: FStAdFunc var_8C
  loc_A217BD: LitI4 3
  loc_A217C2: FLdPr var_8C
  loc_A217C5: Me.UpdateBatch
  loc_A217CA: FLdRfVar var_90
  loc_A217CD: FLdPr var_8C
  loc_A217D0:  = Me.EditMode
  loc_A217D5: ILdRf var_90
  loc_A217D8: LitI4 2
  loc_A217DD: EqI4
  loc_A217DE: BranchF loc_A217E6
  loc_A217E1: Call MoveLast()
  loc_A217E6: LitNothing
  loc_A217E8: FStAd var_8C 
  loc_A217EC: ExitProcHresult
End Sub

Public Sub Cancel() 'A4A760
  'Data Table: 41D340
  loc_A4A70C: FLdRfVar var_88
  loc_A4A70F: FLdPr Me
  loc_A4A712: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A4A717: FLdZeroAd var_88
  loc_A4A71A: FStAdFunc var_8C
  loc_A4A71D: FLdRfVar var_90
  loc_A4A720: FLdPr var_8C
  loc_A4A723:  = Me.RecordCount
  loc_A4A728: ILdRf var_90
  loc_A4A72B: LitI4 0
  loc_A4A730: GtI4
  loc_A4A731: BranchF loc_A4A758
  loc_A4A734: FLdPr var_8C
  loc_A4A737: Me.CancelUpdate
  loc_A4A73C: FLdRfVar var_90
  loc_A4A73F: FLdPr var_8C
  loc_A4A742:  = Me.EditMode
  loc_A4A747: ILdRf var_90
  loc_A4A74A: LitI4 2
  loc_A4A74F: EqI4
  loc_A4A750: BranchF loc_A4A758
  loc_A4A753: Call MoveFirst()
  loc_A4A758: LitNothing
  loc_A4A75A: FStAd var_8C 
  loc_A4A75E: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FC6F4
  'Data Table: 41D340
  loc_9FC6C8: FLdRfVar var_90
  loc_9FC6CB: FLdRfVar var_8C
  loc_9FC6CE: FLdPr Me
  loc_9FC6D1: from_stack_1v = clsingrrent.global_4313800Get()
  loc_9FC6D6: FLdPr var_8C
  loc_9FC6D9:  = Me.EditMode
  loc_9FC6DE: ILdRf var_90
  loc_9FC6E1: LitI4 0
  loc_9FC6E6: NeI4
  loc_9FC6E7: FStI2 var_86
  loc_9FC6EA: FFree1Ad var_8C
  loc_9FC6ED: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A71378
  'Data Table: 41D340
  loc_A71304: ILdRf sSelect
  loc_A71307: FStStrCopy var_88
  loc_A7130A: LitNothing
  loc_A7130C: CastAd
  loc_A7130F: FStAdFuncNoPop
  loc_A71312: FLdPr Me
  loc_A71315: Call clsingrrent.global_4313800Set(from_stack_1v)
  loc_A7131A: FFree1Ad var_8C
  loc_A7131D: New Recordset
  loc_A71321: FStAdFuncNoPop
  loc_A71324: FLdPr Me
  loc_A71327: Call clsingrrent.global_4313800Set(from_stack_1v)
  loc_A7132C: FFree1Ad var_8C
  loc_A7132F: LitI4 -1
  loc_A71334: LitI4 3
  loc_A71339: LitI4 3
  loc_A7133E: ImpAdLdI4 MemVar_D9301C
  loc_A71341: CVarAd
  loc_A71345: PopAdLdVar
  loc_A71346: ILdRf var_88
  loc_A71349: CVarStr var_9C
  loc_A7134C: PopAdLdVar
  loc_A7134D: FLdRfVar var_8C
  loc_A71350: FLdPr Me
  loc_A71353: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A71358: FLdPr var_8C
  loc_A7135B: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A71360: FFree1Ad var_8C
  loc_A71363: LitVarStr var_9C, "Primary"
  loc_A71368: PopAdLdVar
  loc_A71369: FLdPr Me
  loc_A7136C: LateIdCall
  loc_A71374: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A5B330
  'Data Table: 41D340
  loc_A5B2D0: ILdRf sSelect
  loc_A5B2D3: FStStrCopy var_88
  loc_A5B2D6: LitNothing
  loc_A5B2D8: CastAd
  loc_A5B2DB: FStAdFuncNoPop
  loc_A5B2DE: FLdPr Me
  loc_A5B2E1: Call clsingrrent.global_4313800Set(from_stack_1v)
  loc_A5B2E6: FFree1Ad var_8C
  loc_A5B2E9: New Recordset
  loc_A5B2ED: FStAdFuncNoPop
  loc_A5B2F0: FLdPr Me
  loc_A5B2F3: Call clsingrrent.global_4313800Set(from_stack_1v)
  loc_A5B2F8: FFree1Ad var_8C
  loc_A5B2FB: LitI4 -1
  loc_A5B300: LitI4 3
  loc_A5B305: LitI4 3
  loc_A5B30A: ImpAdLdI4 MemVar_D9301C
  loc_A5B30D: CVarAd
  loc_A5B311: PopAdLdVar
  loc_A5B312: ILdRf var_88
  loc_A5B315: CVarStr var_9C
  loc_A5B318: PopAdLdVar
  loc_A5B319: FLdRfVar var_8C
  loc_A5B31C: FLdPr Me
  loc_A5B31F: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A5B324: FLdPr var_8C
  loc_A5B327: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5B32C: FFree1Ad var_8C
  loc_A5B32F: ExitProcHresult
End Sub

Public Property Get DataSource() 'A09EF0
  'Data Table: 41D340
  loc_A09EC0: ZeroRetVal
  loc_A09EC2: FLdRfVar var_90
  loc_A09EC5: FLdRfVar var_8C
  loc_A09EC8: FLdPr Me
  loc_A09ECB: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A09ED0: FLdPr var_8C
  loc_A09ED3:  = Me.DataSource
  loc_A09ED8: ILdRf var_90
  loc_A09EDB: CastAd
  loc_A09EDE: FStAdFunc var_88
  loc_A09EE1: FFreeAd var_8C = ""
  loc_A09EE8: ExitProcCbHresult
  loc_A09EEE: CopyBytes
End Sub

Public Property Get EditMode() '9F8EEC
  'Data Table: 41D340
  loc_9F8EC4: FLdRfVar var_90
  loc_9F8EC7: FLdRfVar var_8C
  loc_9F8ECA: FLdPr Me
  loc_9F8ECD: from_stack_1v = clsingrrent.global_4313800Get()
  loc_9F8ED2: FLdPr var_8C
  loc_9F8ED5:  = Me.EditMode
  loc_9F8EDA: ILdRf var_90
  loc_9F8EDD: FStR4 var_88
  loc_9F8EE0: FFree1Ad var_8C
  loc_9F8EE3: ExitProcCbHresult
  loc_9F8EEB: FnLBound
End Sub

Public Property Get FechInre() 'A5604C
  'Data Table: 41D340
  loc_A55FFC: ZeroRetVal
  loc_A55FFE: FLdRfVar var_B4
  loc_A56001: FLdRfVar var_A4
  loc_A56004: LitVarStr var_A0, "FechInre"
  loc_A56009: PopAdLdVar
  loc_A5600A: FLdRfVar var_90
  loc_A5600D: FLdRfVar var_8C
  loc_A56010: FLdPr Me
  loc_A56013: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A56018: FLdPr var_8C
  loc_A5601B:  = Me.Fields
  loc_A56020: FLdPr var_90
  loc_A56023: from_stack_2 = Me.Item(from_stack_1)
  loc_A56028: FLdPr var_A4
  loc_A5602B:  = Me.Value
  loc_A56030: FLdRfVar var_B4
  loc_A56033: CStrVarTmp
  loc_A56034: FStStr var_88
  loc_A56037: FFreeAd var_8C = "": var_90 = ""
  loc_A56040: FFree1Var var_B4 = ""
  loc_A56043: ExitProcCbHresult
  loc_A56049: FFree1Ad var_88
End Sub

Public Property Let FechInre(vDato) 'A01240
  'Data Table: 41D340
  loc_A01214: ILdRf vDato
  loc_A01217: FStStrCopy var_88
  loc_A0121A: ILdRf var_88
  loc_A0121D: CVarStr var_AC
  loc_A01220: PopAdLdVar
  loc_A01221: LitVarStr var_9C, "FechInre"
  loc_A01226: PopAdLdVar
  loc_A01227: FLdRfVar var_8C
  loc_A0122A: FLdPr Me
  loc_A0122D: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A01232: FLdPr var_8C
  loc_A01235: Me.Collect = from_stack_1
  loc_A0123A: FFree1Ad var_8C
  loc_A0123D: ExitProcHresult
  loc_A0123E: FStI2 var_3786
End Sub

Public Property Get NumeAcpa() 'A460CC
  'Data Table: 41D340
  loc_A46080: FLdRfVar var_B4
  loc_A46083: FLdRfVar var_A4
  loc_A46086: LitVarStr var_A0, "NumeAcpa"
  loc_A4608B: PopAdLdVar
  loc_A4608C: FLdRfVar var_90
  loc_A4608F: FLdRfVar var_8C
  loc_A46092: FLdPr Me
  loc_A46095: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A4609A: FLdPr var_8C
  loc_A4609D:  = Me.Fields
  loc_A460A2: FLdPr var_90
  loc_A460A5: from_stack_2 = Me.Item(from_stack_1)
  loc_A460AA: FLdPr var_A4
  loc_A460AD:  = Me.Value
  loc_A460B2: FLdRfVar var_B4
  loc_A460B5: CI2Var
  loc_A460B6: FStI2 var_86
  loc_A460B9: FFreeAd var_8C = "": var_90 = ""
  loc_A460C2: FFree1Var var_B4 = ""
  loc_A460C5: ExitProcCbHresult
End Sub

Public Property Get ActuInre() 'A55834
  'Data Table: 41D340
  loc_A557E4: ZeroRetVal
  loc_A557E6: FLdRfVar var_B4
  loc_A557E9: FLdRfVar var_A4
  loc_A557EC: LitVarStr var_A0, "ActuInre"
  loc_A557F1: PopAdLdVar
  loc_A557F2: FLdRfVar var_90
  loc_A557F5: FLdRfVar var_8C
  loc_A557F8: FLdPr Me
  loc_A557FB: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A55800: FLdPr var_8C
  loc_A55803:  = Me.Fields
  loc_A55808: FLdPr var_90
  loc_A5580B: from_stack_2 = Me.Item(from_stack_1)
  loc_A55810: FLdPr var_A4
  loc_A55813:  = Me.Value
  loc_A55818: FLdRfVar var_B4
  loc_A5581B: CStrVarTmp
  loc_A5581C: FStStr var_88
  loc_A5581F: FFreeAd var_8C = "": var_90 = ""
  loc_A55828: FFree1Var var_B4 = ""
  loc_A5582B: ExitProcCbHresult
End Sub

Public Property Let ActuInre(vDato) 'A003CC
  'Data Table: 41D340
  loc_A003A0: ILdRf vDato
  loc_A003A3: FStStrCopy var_88
  loc_A003A6: ILdRf var_88
  loc_A003A9: CVarStr var_AC
  loc_A003AC: PopAdLdVar
  loc_A003AD: LitVarStr var_9C, "ActuInre"
  loc_A003B2: PopAdLdVar
  loc_A003B3: FLdRfVar var_8C
  loc_A003B6: FLdPr Me
  loc_A003B9: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A003BE: FLdPr var_8C
  loc_A003C1: Me.Collect = from_stack_1
  loc_A003C6: FFree1Ad var_8C
  loc_A003C9: ExitProcHresult
End Sub

Public Function ValidaClave(FechInre) 'A85270
  'Data Table: 41D340
  loc_A851F0: ILdRf FechInre
  loc_A851F3: FStStrCopy var_8C
  loc_A851F6: ZeroRetVal
  loc_A851F8: LitStr "SELECT FechInre FROM ingrrent WHERE FechInre = '"
  loc_A851FB: LitI4 1
  loc_A85200: LitI4 1
  loc_A85205: LitVarStr var_AC, "yyyy-mm-dd"
  loc_A8520A: FStVarCopyObj var_BC
  loc_A8520D: FLdRfVar var_BC
  loc_A85210: FLdRfVar var_8C
  loc_A85213: CVarRef
  loc_A85218: ImpAdCallI2 Format$(, )
  loc_A8521D: FStStrNoPop var_C0
  loc_A85220: ConcatStr
  loc_A85221: FStStrNoPop var_C4
  loc_A85224: LitStr "'"
  loc_A85227: ConcatStr
  loc_A85228: FStStrNoPop var_C8
  loc_A8522B: Call EjecutarRs2(from_stack_1v)
  loc_A85230: FFreeStr var_C0 = "": var_C4 = ""
  loc_A85239: FFree1Var var_BC = ""
  loc_A8523C: FLdRfVar var_D0
  loc_A8523F: FLdRfVar var_CC
  loc_A85242: FLdPr Me
  loc_A85245: from_stack_1v = clsingrrent.global_4313800Get()
  loc_A8524A: FLdPr var_CC
  loc_A8524D:  = Me.RecordCount
  loc_A85252: ILdRf var_D0
  loc_A85255: LitI4 0
  loc_A8525A: GtI4
  loc_A8525B: FFree1Ad var_CC
  loc_A8525E: BranchF loc_A85267
  loc_A85261: LitStr "El REGISTRO de INGRESO de RENTAS YA EXISTE. Reintente..."
  loc_A85264: FStStrCopy var_88
  loc_A85267: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E77B0
  'Data Table: 41D340
  loc_9E7794: ILdRf pError
  loc_9E7797: FStAd var_88 
  loc_9E779B: ILdRf pRecordset
  loc_9E779E: FStAd var_8C 
  loc_9E77A2: FLdPr Me
  loc_9E77A5: RaiseEvent
  loc_9E77AD: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A99634
  'Data Table: 41D340
  loc_A99574: ILdRf pRecordset
  loc_A99577: FStAd var_88 
  loc_A9957B: ILdRf adReason
  loc_A9957E: FStR4 var_90
  loc_A99581: ILdRf var_90
  loc_A99584: LitI4 1
  loc_A99589: EqI4
  loc_A9958A: BranchF loc_A99590
  loc_A9958D: Branch loc_A99623
  loc_A99590: ILdRf var_90
  loc_A99593: LitI4 9
  loc_A99598: EqI4
  loc_A99599: BranchF loc_A9959F
  loc_A9959C: Branch loc_A99623
  loc_A9959F: ILdRf var_90
  loc_A995A2: LitI4 2
  loc_A995A7: EqI4
  loc_A995A8: BranchF loc_A995AE
  loc_A995AB: Branch loc_A99623
  loc_A995AE: ILdRf var_90
  loc_A995B1: LitI4 &HB
  loc_A995B6: EqI4
  loc_A995B7: BranchF loc_A995BD
  loc_A995BA: Branch loc_A99623
  loc_A995BD: ILdRf var_90
  loc_A995C0: LitI4 &HA
  loc_A995C5: EqI4
  loc_A995C6: BranchF loc_A995CC
  loc_A995C9: Branch loc_A99623
  loc_A995CC: ILdRf var_90
  loc_A995CF: LitI4 7
  loc_A995D4: EqI4
  loc_A995D5: BranchF loc_A995DB
  loc_A995D8: Branch loc_A99623
  loc_A995DB: ILdRf var_90
  loc_A995DE: LitI4 8
  loc_A995E3: EqI4
  loc_A995E4: BranchF loc_A995EA
  loc_A995E7: Branch loc_A99623
  loc_A995EA: ILdRf var_90
  loc_A995ED: LitI4 5
  loc_A995F2: EqI4
  loc_A995F3: BranchF loc_A995F9
  loc_A995F6: Branch loc_A99623
  loc_A995F9: ILdRf var_90
  loc_A995FC: LitI4 6
  loc_A99601: EqI4
  loc_A99602: BranchF loc_A99608
  loc_A99605: Branch loc_A99623
  loc_A99608: ILdRf var_90
  loc_A9960B: LitI4 4
  loc_A99610: EqI4
  loc_A99611: BranchF loc_A99617
  loc_A99614: Branch loc_A99623
  loc_A99617: ILdRf var_90
  loc_A9961A: LitI4 3
  loc_A9961F: EqI4
  loc_A99620: BranchF loc_A99623
  loc_A99623: FLdI2 var_8A
  loc_A99626: BranchF loc_A99631
  loc_A99629: LitI4 4
  loc_A9962E: IStI4 adStatus
  loc_A99631: ExitProcHresult
End Sub

Private Function Proc_83_31_9F8C64() '9F8C64
  'Data Table: 41D340
  loc_9F8C40: LitStr "Primary"
  loc_9F8C43: FLdPr Me
  loc_9F8C46: LateIdLdVar var_94 DispID_4 0
  loc_9F8C4D: CastAdVar Me
  loc_9F8C51: FStAdFunc var_98
  loc_9F8C54: FLdPr var_98
  loc_9F8C5C: FFree1Ad var_98
  loc_9F8C5F: FFree1Var var_94 = ""
  loc_9F8C62: ExitProcHresult
End Function

Private Function Proc_83_32_9F8E30(arg_C) '9F8E30
  'Data Table: 41D340
  loc_9F8E0C: ILdI4 arg_C
  loc_9F8E0F: FStStrCopy var_88
  loc_9F8E12: ILdRf var_88
  loc_9F8E15: LitStr "Primary"
  loc_9F8E18: EqStr
  loc_9F8E1A: BranchF loc_9F8E2F
  loc_9F8E1D: FLdRfVar var_8C
  loc_9F8E20: FLdPr Me
  loc_9F8E23: from_stack_1v = clsingrrent.global_4313800Get()
  loc_9F8E28: FLdZeroAd var_8C
  loc_9F8E2B: IStAdFunc
  loc_9F8E2F: ExitProcHresult
End Function

Public Function global_4313800Get() '41D6B0
  global_4313800Get = global_4313800
End Function

Public Sub global_4313800Put(Value) '41D6CA
  global_4313800 = Value
End Sub

Public Sub global_4313800Set(Value) '41D6E4
  global_4313800 = Value
End Sub

Public Function global_4313800Get() '41D6FE
  global_4313800Get = global_4313800
End Function

Public Sub global_4313800Put(Value) '41D718
  global_4313800 = Value
End Sub

Public Sub global_4313800Set(Value) '41D732
  global_4313800 = Value
End Sub

Public Function global_4313800Get() '41D74C
  global_4313800Get = global_4313800
End Function

Public Sub global_4313800Put(Value) '41D766
  global_4313800 = Value
End Sub

Public Sub global_4313800Set(Value) '41D780
  global_4313800 = Value
End Sub
