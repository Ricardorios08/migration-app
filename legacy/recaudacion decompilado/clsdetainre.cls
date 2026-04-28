VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsdetainre"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0ECF4
  'Data Table: 43238C
  loc_A0ECB8: FLdRfVar var_8C
  loc_A0ECBB: FLdRfVar var_88
  loc_A0ECBE: FLdPr Me
  loc_A0ECC1: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A0ECC6: FLdPr var_88
  loc_A0ECC9:  = Me.RecordCount
  loc_A0ECCE: ILdRf var_8C
  loc_A0ECD1: LitI4 0
  loc_A0ECD6: GtI4
  loc_A0ECD7: FFree1Ad var_88
  loc_A0ECDA: BranchF loc_A0ECF3
  loc_A0ECDD: FLdRfVar var_88
  loc_A0ECE0: FLdPr Me
  loc_A0ECE3: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A0ECE8: FLdPr var_88
  loc_A0ECEB: Me.MoveFirst
  loc_A0ECF0: FFree1Ad var_88
  loc_A0ECF3: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0ED64
  'Data Table: 43238C
  loc_A0ED28: FLdRfVar var_8C
  loc_A0ED2B: FLdRfVar var_88
  loc_A0ED2E: FLdPr Me
  loc_A0ED31: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A0ED36: FLdPr var_88
  loc_A0ED39:  = Me.RecordCount
  loc_A0ED3E: ILdRf var_8C
  loc_A0ED41: LitI4 0
  loc_A0ED46: GtI4
  loc_A0ED47: FFree1Ad var_88
  loc_A0ED4A: BranchF loc_A0ED63
  loc_A0ED4D: FLdRfVar var_88
  loc_A0ED50: FLdPr Me
  loc_A0ED53: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A0ED58: FLdPr var_88
  loc_A0ED5B: Me.MoveLast
  loc_A0ED60: FFree1Ad var_88
  loc_A0ED63: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9B880
  'Data Table: 43238C
  loc_A9B7C4: FLdRfVar var_8A
  loc_A9B7C7: FLdRfVar var_88
  loc_A9B7CA: FLdPr Me
  loc_A9B7CD: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A9B7D2: FLdPr var_88
  loc_A9B7D5:  = Me.EOF
  loc_A9B7DA: FLdI2 var_8A
  loc_A9B7DD: NotI4
  loc_A9B7DE: FLdRfVar var_94
  loc_A9B7E1: FLdRfVar var_90
  loc_A9B7E4: FLdPr Me
  loc_A9B7E7: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A9B7EC: FLdPr var_90
  loc_A9B7EF:  = Me.RecordCount
  loc_A9B7F4: ILdRf var_94
  loc_A9B7F7: LitI4 0
  loc_A9B7FC: GtI4
  loc_A9B7FD: AndI4
  loc_A9B7FE: FFreeAd var_88 = ""
  loc_A9B805: BranchF loc_A9B81E
  loc_A9B808: FLdRfVar var_88
  loc_A9B80B: FLdPr Me
  loc_A9B80E: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A9B813: FLdPr var_88
  loc_A9B816: Me.MoveNext
  loc_A9B81B: FFree1Ad var_88
  loc_A9B81E: FLdRfVar var_8A
  loc_A9B821: FLdRfVar var_88
  loc_A9B824: FLdPr Me
  loc_A9B827: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A9B82C: FLdPr var_88
  loc_A9B82F:  = Me.EOF
  loc_A9B834: FLdI2 var_8A
  loc_A9B837: FLdRfVar var_94
  loc_A9B83A: FLdRfVar var_90
  loc_A9B83D: FLdPr Me
  loc_A9B840: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A9B845: FLdPr var_90
  loc_A9B848:  = Me.RecordCount
  loc_A9B84D: ILdRf var_94
  loc_A9B850: LitI4 0
  loc_A9B855: GtI4
  loc_A9B856: AndI4
  loc_A9B857: FFreeAd var_88 = ""
  loc_A9B85E: BranchF loc_A9B87C
  loc_A9B861: ImpAdCallFPR4 Beep()
  loc_A9B866: FLdRfVar var_88
  loc_A9B869: FLdPr Me
  loc_A9B86C: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A9B871: FLdPr var_88
  loc_A9B874: Me.MoveLast
  loc_A9B879: FFree1Ad var_88
  loc_A9B87C: ExitProcHresult
  loc_A9B87D: Ary1StStrCopy
  loc_A9B87E: NeR8
End Sub

Public Sub MoveSiguiente() '9D350C
  'Data Table: 43238C
  loc_9D34F4: FLdRfVar var_88
  loc_9D34F7: FLdPr Me
  loc_9D34FA: from_stack_1v = clsdetainre.global_4399892Get()
  loc_9D34FF: FLdPr var_88
  loc_9D3502: Me.MoveNext
  loc_9D3507: FFree1Ad var_88
  loc_9D350A: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E78B0
  'Data Table: 43238C
  loc_9E7890: LitVar_Missing var_98
  loc_9E7893: PopAdLdVar
  loc_9E7894: ILdI2 iValor
  loc_9E7897: CI4UI1
  loc_9E7898: FLdRfVar var_88
  loc_9E789B: FLdPr Me
  loc_9E789E: from_stack_1v = clsdetainre.global_4399892Get()
  loc_9E78A3: FLdPr var_88
  loc_9E78A6: Me.Move from_stack_1, from_stack_2
  loc_9E78AB: FFree1Ad var_88
  loc_9E78AE: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9C114
  'Data Table: 43238C
  loc_A9C058: FLdRfVar var_8A
  loc_A9C05B: FLdRfVar var_88
  loc_A9C05E: FLdPr Me
  loc_A9C061: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A9C066: FLdPr var_88
  loc_A9C069:  = Me.BOF
  loc_A9C06E: FLdI2 var_8A
  loc_A9C071: NotI4
  loc_A9C072: FLdRfVar var_94
  loc_A9C075: FLdRfVar var_90
  loc_A9C078: FLdPr Me
  loc_A9C07B: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A9C080: FLdPr var_90
  loc_A9C083:  = Me.RecordCount
  loc_A9C088: ILdRf var_94
  loc_A9C08B: LitI4 0
  loc_A9C090: GtI4
  loc_A9C091: AndI4
  loc_A9C092: FFreeAd var_88 = ""
  loc_A9C099: BranchF loc_A9C0B2
  loc_A9C09C: FLdRfVar var_88
  loc_A9C09F: FLdPr Me
  loc_A9C0A2: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A9C0A7: FLdPr var_88
  loc_A9C0AA: Me.MovePrevious
  loc_A9C0AF: FFree1Ad var_88
  loc_A9C0B2: FLdRfVar var_8A
  loc_A9C0B5: FLdRfVar var_88
  loc_A9C0B8: FLdPr Me
  loc_A9C0BB: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A9C0C0: FLdPr var_88
  loc_A9C0C3:  = Me.BOF
  loc_A9C0C8: FLdI2 var_8A
  loc_A9C0CB: FLdRfVar var_94
  loc_A9C0CE: FLdRfVar var_90
  loc_A9C0D1: FLdPr Me
  loc_A9C0D4: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A9C0D9: FLdPr var_90
  loc_A9C0DC:  = Me.RecordCount
  loc_A9C0E1: ILdRf var_94
  loc_A9C0E4: LitI4 0
  loc_A9C0E9: GtI4
  loc_A9C0EA: AndI4
  loc_A9C0EB: FFreeAd var_88 = ""
  loc_A9C0F2: BranchF loc_A9C110
  loc_A9C0F5: ImpAdCallFPR4 Beep()
  loc_A9C0FA: FLdRfVar var_88
  loc_A9C0FD: FLdPr Me
  loc_A9C100: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A9C105: FLdPr var_88
  loc_A9C108: Me.MoveFirst
  loc_A9C10D: FFree1Ad var_88
  loc_A9C110: ExitProcHresult
End Sub

Public Property Get EOF() '9F905C
  'Data Table: 43238C
  loc_9F9034: FLdRfVar var_8E
  loc_9F9037: FLdRfVar var_8C
  loc_9F903A: FLdPr Me
  loc_9F903D: from_stack_1v = clsdetainre.global_4399892Get()
  loc_9F9042: FLdPr var_8C
  loc_9F9045:  = Me.EOF
  loc_9F904A: FLdI2 var_8E
  loc_9F904D: FStI2 var_86
  loc_9F9050: FFree1Ad var_8C
  loc_9F9053: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F91CC
  'Data Table: 43238C
  loc_9F91A4: FLdRfVar var_8E
  loc_9F91A7: FLdRfVar var_8C
  loc_9F91AA: FLdPr Me
  loc_9F91AD: from_stack_1v = clsdetainre.global_4399892Get()
  loc_9F91B2: FLdPr var_8C
  loc_9F91B5:  = Me.BOF
  loc_9F91BA: FLdI2 var_8E
  loc_9F91BD: FStI2 var_86
  loc_9F91C0: FFree1Ad var_8C
  loc_9F91C3: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9E492C
  'Data Table: 43238C
  loc_9E4910: ILdI4 sOrden
  loc_9E4913: FLdRfVar var_88
  loc_9E4916: FLdPr Me
  loc_9E4919: from_stack_1v = clsdetainre.global_4399892Get()
  loc_9E491E: FLdPr var_88
  loc_9E4921: Me.Sort = from_stack_1
  loc_9E4926: FFree1Ad var_88
  loc_9E4929: ExitProcHresult
  loc_9E492A: FStFPR4 arg_1400
End Sub

Public Sub Find(sFind) '9F9284
  'Data Table: 43238C
  loc_9F925C: LitVar_Missing var_98
  loc_9F925F: PopAdLdVar
  loc_9F9260: LitI4 1
  loc_9F9265: LitI4 0
  loc_9F926A: ILdI4 sFind
  loc_9F926D: FLdRfVar var_88
  loc_9F9270: FLdPr Me
  loc_9F9273: from_stack_1v = clsdetainre.global_4399892Get()
  loc_9F9278: FLdPr var_88
  loc_9F927B: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F9280: FFree1Ad var_88
  loc_9F9283: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F92E0
  'Data Table: 43238C
  loc_9F92B8: FLdRfVar var_90
  loc_9F92BB: FLdRfVar var_8C
  loc_9F92BE: FLdPr Me
  loc_9F92C1: from_stack_1v = clsdetainre.global_4399892Get()
  loc_9F92C6: FLdPr var_8C
  loc_9F92C9:  = Me.AbsolutePosition
  loc_9F92CE: ILdRf var_90
  loc_9F92D1: FStR4 var_88
  loc_9F92D4: FFree1Ad var_8C
  loc_9F92D7: ExitProcCbHresult
End Sub

Public Property Get RecordCount(arg_14) '9F9450
  'Data Table: 43238C
  loc_9F9428: FLdRfVar var_90
  loc_9F942B: FLdRfVar var_8C
  loc_9F942E: FLdPr Me
  loc_9F9431: from_stack_1v = clsdetainre.global_4399892Get()
  loc_9F9436: FLdPr var_8C
  loc_9F9439:  = Me.RecordCount
  loc_9F943E: ILdRf var_90
  loc_9F9441: FStR4 var_88
  loc_9F9444: FFree1Ad var_8C
  loc_9F9447: ExitProcCbHresult
  loc_9F944D: SetLastSystemError
  loc_9F944E: FLdFPR4 arg_1403
End Sub

Public Sub AddNew(FechInre, NumeAcpa, CodiConc, CodiCuco, CodiEnre, TotaDeir) 'B01038
  'Data Table: 43238C
  loc_B00E88: ILdRf FechInre
  loc_B00E8B: FStStrCopy var_88
  loc_B00E8E: ILdRf CodiConc
  loc_B00E91: FStStrCopy var_8C
  loc_B00E94: ILdRf CodiCuco
  loc_B00E97: FStStrCopy var_90
  loc_B00E9A: FLdRfVar var_94
  loc_B00E9D: ILdRf var_8C
  loc_B00EA0: FLdI2 NumeAcpa
  loc_B00EA3: ILdRf var_88
  loc_B00EA6: from_stack_4v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B00EAB: ILdRf var_94
  loc_B00EAE: LitStr vbNullString
  loc_B00EB1: NeStr
  loc_B00EB3: FFree1Str var_94
  loc_B00EB6: BranchF loc_B00F63
  loc_B00EB9: LitStr "UPDATE detainre SET TotaDeir =  TotaDeir + "
  loc_B00EBC: LitI4 0
  loc_B00EC1: LitI4 -1
  loc_B00EC6: LitI4 1
  loc_B00ECB: LitStr "."
  loc_B00ECE: LitStr ","
  loc_B00ED1: FLdFPR8 TotaDeir
  loc_B00ED4: CStrR8
  loc_B00ED6: FStStrNoPop var_94
  loc_B00ED9: ImpAdCallI2 Replace(, , , , , )
  loc_B00EDE: FStStrNoPop var_98
  loc_B00EE1: ConcatStr
  loc_B00EE2: FStStrNoPop var_9C
  loc_B00EE5: LitStr " WHERE FechInre = '"
  loc_B00EE8: ConcatStr
  loc_B00EE9: FStStrNoPop var_D0
  loc_B00EEC: LitI4 1
  loc_B00EF1: LitI4 1
  loc_B00EF6: LitVarStr var_BC, "yyyy-mm-dd"
  loc_B00EFB: FStVarCopyObj var_CC
  loc_B00EFE: FLdRfVar var_CC
  loc_B00F01: FLdRfVar var_88
  loc_B00F04: CVarRef
  loc_B00F09: ImpAdCallI2 Format$(, )
  loc_B00F0E: FStStrNoPop var_D4
  loc_B00F11: ConcatStr
  loc_B00F12: FStStrNoPop var_D8
  loc_B00F15: LitStr "' AND NumeAcpa = "
  loc_B00F18: ConcatStr
  loc_B00F19: FStStrNoPop var_DC
  loc_B00F1C: FLdI2 NumeAcpa
  loc_B00F1F: CStrUI1
  loc_B00F21: FStStrNoPop var_E0
  loc_B00F24: ConcatStr
  loc_B00F25: FStStrNoPop var_E4
  loc_B00F28: LitStr " AND CodiConc = '"
  loc_B00F2B: ConcatStr
  loc_B00F2C: FStStrNoPop var_E8
  loc_B00F2F: ILdRf var_8C
  loc_B00F32: ConcatStr
  loc_B00F33: FStStrNoPop var_EC
  loc_B00F36: LitStr "'"
  loc_B00F39: ConcatStr
  loc_B00F3A: FStStrNoPop var_F0
  loc_B00F3D: Call EjecutarRs2(from_stack_1v)
  loc_B00F42: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_B00F5D: FFree1Var var_CC = ""
  loc_B00F60: Branch loc_B01035
  loc_B00F63: LitStr "INSERT INTO detainre (FechInre, NumeAcpa, CodiConc, CodiCuco, CodiEnre, TotaDeir) VALUES ('"
  loc_B00F66: LitI4 1
  loc_B00F6B: LitI4 1
  loc_B00F70: LitVarStr var_BC, "yyyy-mm-dd"
  loc_B00F75: FStVarCopyObj var_CC
  loc_B00F78: FLdRfVar var_CC
  loc_B00F7B: FLdRfVar var_88
  loc_B00F7E: CVarRef
  loc_B00F83: ImpAdCallI2 Format$(, )
  loc_B00F88: FStStrNoPop var_94
  loc_B00F8B: ConcatStr
  loc_B00F8C: FStStrNoPop var_98
  loc_B00F8F: LitStr "',"
  loc_B00F92: ConcatStr
  loc_B00F93: FStStrNoPop var_9C
  loc_B00F96: FLdI2 NumeAcpa
  loc_B00F99: CStrUI1
  loc_B00F9B: FStStrNoPop var_D0
  loc_B00F9E: ConcatStr
  loc_B00F9F: FStStrNoPop var_D4
  loc_B00FA2: LitStr ",'"
  loc_B00FA5: ConcatStr
  loc_B00FA6: FStStrNoPop var_D8
  loc_B00FA9: ILdRf var_8C
  loc_B00FAC: ConcatStr
  loc_B00FAD: FStStrNoPop var_DC
  loc_B00FB0: LitStr "','"
  loc_B00FB3: ConcatStr
  loc_B00FB4: FStStrNoPop var_E0
  loc_B00FB7: ILdRf var_90
  loc_B00FBA: ConcatStr
  loc_B00FBB: FStStrNoPop var_E4
  loc_B00FBE: LitStr "',"
  loc_B00FC1: ConcatStr
  loc_B00FC2: FStStrNoPop var_E8
  loc_B00FC5: FLdI2 CodiEnre
  loc_B00FC8: CStrUI1
  loc_B00FCA: FStStrNoPop var_EC
  loc_B00FCD: ConcatStr
  loc_B00FCE: FStStrNoPop var_F0
  loc_B00FD1: LitStr ","
  loc_B00FD4: ConcatStr
  loc_B00FD5: FStStrNoPop var_F8
  loc_B00FD8: LitI4 0
  loc_B00FDD: LitI4 -1
  loc_B00FE2: LitI4 1
  loc_B00FE7: LitStr "."
  loc_B00FEA: LitStr ","
  loc_B00FED: FLdFPR8 TotaDeir
  loc_B00FF0: CStrR8
  loc_B00FF2: FStStrNoPop var_F4
  loc_B00FF5: ImpAdCallI2 Replace(, , , , , )
  loc_B00FFA: FStStrNoPop var_FC
  loc_B00FFD: ConcatStr
  loc_B00FFE: FStStrNoPop var_100
  loc_B01001: LitStr ")"
  loc_B01004: ConcatStr
  loc_B01005: FStStrNoPop var_104
  loc_B01008: Call EjecutarRs2(from_stack_1v)
  loc_B0100D: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_B01032: FFree1Var var_CC = ""
  loc_B01035: ExitProcHresult
End Sub

Public Sub Delete() 'A22CC8
  'Data Table: 43238C
  loc_A22C80: FLdRfVar var_8C
  loc_A22C83: FLdRfVar var_88
  loc_A22C86: FLdPr Me
  loc_A22C89: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A22C8E: FLdPr var_88
  loc_A22C91:  = Me.RecordCount
  loc_A22C96: ILdRf var_8C
  loc_A22C99: LitI4 0
  loc_A22C9E: GtI4
  loc_A22C9F: FFree1Ad var_88
  loc_A22CA2: BranchF loc_A22CC5
  loc_A22CA5: LitI4 1
  loc_A22CAA: FLdRfVar var_88
  loc_A22CAD: FLdPr Me
  loc_A22CB0: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A22CB5: FLdPr var_88
  loc_A22CB8: Me.Delete
  loc_A22CBD: FFree1Ad var_88
  loc_A22CC0: Call MoveNext()
  loc_A22CC5: ExitProcHresult
  loc_A22CC6: Ary1StCy
End Sub

Public Sub Requery() 'A01BA4
  'Data Table: 43238C
  loc_A01B74: LitI4 -1
  loc_A01B79: FLdRfVar var_88
  loc_A01B7C: FLdPr Me
  loc_A01B7F: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A01B84: FLdPr var_88
  loc_A01B87: Me.Requery from_stack_1
  loc_A01B8C: FFree1Ad var_88
  loc_A01B8F: LitVarStr var_98, "Primary"
  loc_A01B94: PopAdLdVar
  loc_A01B95: FLdPr Me
  loc_A01B98: LateIdCall
  loc_A01BA0: ExitProcHresult
End Sub

Public Sub Update() 'A20F38
  'Data Table: 43238C
  loc_A20EF4: FLdRfVar var_88
  loc_A20EF7: FLdPr Me
  loc_A20EFA: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A20EFF: FLdZeroAd var_88
  loc_A20F02: FStAdFunc var_8C
  loc_A20F05: LitI4 3
  loc_A20F0A: FLdPr var_8C
  loc_A20F0D: Me.UpdateBatch
  loc_A20F12: FLdRfVar var_90
  loc_A20F15: FLdPr var_8C
  loc_A20F18:  = Me.EditMode
  loc_A20F1D: ILdRf var_90
  loc_A20F20: LitI4 2
  loc_A20F25: EqI4
  loc_A20F26: BranchF loc_A20F2E
  loc_A20F29: Call MoveLast()
  loc_A20F2E: LitNothing
  loc_A20F30: FStAd var_8C 
  loc_A20F34: ExitProcHresult
End Sub

Public Sub Cancel() 'A49068
  'Data Table: 43238C
  loc_A49014: FLdRfVar var_88
  loc_A49017: FLdPr Me
  loc_A4901A: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A4901F: FLdZeroAd var_88
  loc_A49022: FStAdFunc var_8C
  loc_A49025: FLdRfVar var_90
  loc_A49028: FLdPr var_8C
  loc_A4902B:  = Me.RecordCount
  loc_A49030: ILdRf var_90
  loc_A49033: LitI4 0
  loc_A49038: GtI4
  loc_A49039: BranchF loc_A49060
  loc_A4903C: FLdPr var_8C
  loc_A4903F: Me.CancelUpdate
  loc_A49044: FLdRfVar var_90
  loc_A49047: FLdPr var_8C
  loc_A4904A:  = Me.EditMode
  loc_A4904F: ILdRf var_90
  loc_A49052: LitI4 2
  loc_A49057: EqI4
  loc_A49058: BranchF loc_A49060
  loc_A4905B: Call MoveFirst()
  loc_A49060: LitNothing
  loc_A49062: FStAd var_8C 
  loc_A49066: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FCF34
  'Data Table: 43238C
  loc_9FCF08: FLdRfVar var_90
  loc_9FCF0B: FLdRfVar var_8C
  loc_9FCF0E: FLdPr Me
  loc_9FCF11: from_stack_1v = clsdetainre.global_4399892Get()
  loc_9FCF16: FLdPr var_8C
  loc_9FCF19:  = Me.EditMode
  loc_9FCF1E: ILdRf var_90
  loc_9FCF21: LitI4 0
  loc_9FCF26: NeI4
  loc_9FCF27: FStI2 var_86
  loc_9FCF2A: FFree1Ad var_8C
  loc_9FCF2D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A72240
  'Data Table: 43238C
  loc_A721CC: ILdRf sSelect
  loc_A721CF: FStStrCopy var_88
  loc_A721D2: LitNothing
  loc_A721D4: CastAd
  loc_A721D7: FStAdFuncNoPop
  loc_A721DA: FLdPr Me
  loc_A721DD: Call clsdetainre.global_4399892Set(from_stack_1v)
  loc_A721E2: FFree1Ad var_8C
  loc_A721E5: New Recordset
  loc_A721E9: FStAdFuncNoPop
  loc_A721EC: FLdPr Me
  loc_A721EF: Call clsdetainre.global_4399892Set(from_stack_1v)
  loc_A721F4: FFree1Ad var_8C
  loc_A721F7: LitI4 -1
  loc_A721FC: LitI4 3
  loc_A72201: LitI4 3
  loc_A72206: ImpAdLdI4 MemVar_D9301C
  loc_A72209: CVarAd
  loc_A7220D: PopAdLdVar
  loc_A7220E: ILdRf var_88
  loc_A72211: CVarStr var_9C
  loc_A72214: PopAdLdVar
  loc_A72215: FLdRfVar var_8C
  loc_A72218: FLdPr Me
  loc_A7221B: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A72220: FLdPr var_8C
  loc_A72223: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A72228: FFree1Ad var_8C
  loc_A7222B: LitVarStr var_9C, "Primary"
  loc_A72230: PopAdLdVar
  loc_A72231: FLdPr Me
  loc_A72234: LateIdCall
  loc_A7223C: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A5A880
  'Data Table: 43238C
  loc_A5A820: ILdRf sSelect
  loc_A5A823: FStStrCopy var_88
  loc_A5A826: LitNothing
  loc_A5A828: CastAd
  loc_A5A82B: FStAdFuncNoPop
  loc_A5A82E: FLdPr Me
  loc_A5A831: Call clsdetainre.global_4399892Set(from_stack_1v)
  loc_A5A836: FFree1Ad var_8C
  loc_A5A839: New Recordset
  loc_A5A83D: FStAdFuncNoPop
  loc_A5A840: FLdPr Me
  loc_A5A843: Call clsdetainre.global_4399892Set(from_stack_1v)
  loc_A5A848: FFree1Ad var_8C
  loc_A5A84B: LitI4 -1
  loc_A5A850: LitI4 3
  loc_A5A855: LitI4 3
  loc_A5A85A: ImpAdLdI4 MemVar_D9301C
  loc_A5A85D: CVarAd
  loc_A5A861: PopAdLdVar
  loc_A5A862: ILdRf var_88
  loc_A5A865: CVarStr var_9C
  loc_A5A868: PopAdLdVar
  loc_A5A869: FLdRfVar var_8C
  loc_A5A86C: FLdPr Me
  loc_A5A86F: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A5A874: FLdPr var_8C
  loc_A5A877: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5A87C: FFree1Ad var_8C
  loc_A5A87F: ExitProcHresult
End Sub

Public Property Get DataSource() 'A0953C
  'Data Table: 43238C
  loc_A0950C: ZeroRetVal
  loc_A0950E: FLdRfVar var_90
  loc_A09511: FLdRfVar var_8C
  loc_A09514: FLdPr Me
  loc_A09517: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A0951C: FLdPr var_8C
  loc_A0951F:  = Me.DataSource
  loc_A09524: ILdRf var_90
  loc_A09527: CastAd
  loc_A0952A: FStAdFunc var_88
  loc_A0952D: FFreeAd var_8C = ""
  loc_A09534: ExitProcCbHresult
  loc_A0953A: DOC
End Sub

Public Property Get EditMode() '9F556C
  'Data Table: 43238C
  loc_9F5544: FLdRfVar var_90
  loc_9F5547: FLdRfVar var_8C
  loc_9F554A: FLdPr Me
  loc_9F554D: from_stack_1v = clsdetainre.global_4399892Get()
  loc_9F5552: FLdPr var_8C
  loc_9F5555:  = Me.EditMode
  loc_9F555A: ILdRf var_90
  loc_9F555D: FStR4 var_88
  loc_9F5560: FFree1Ad var_8C
  loc_9F5563: ExitProcCbHresult
End Sub

Public Property Get FechInre() 'A55550
  'Data Table: 43238C
  loc_A55500: ZeroRetVal
  loc_A55502: FLdRfVar var_B4
  loc_A55505: FLdRfVar var_A4
  loc_A55508: LitVarStr var_A0, "FechInre"
  loc_A5550D: PopAdLdVar
  loc_A5550E: FLdRfVar var_90
  loc_A55511: FLdRfVar var_8C
  loc_A55514: FLdPr Me
  loc_A55517: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A5551C: FLdPr var_8C
  loc_A5551F:  = Me.Fields
  loc_A55524: FLdPr var_90
  loc_A55527: from_stack_2 = Me.Item(from_stack_1)
  loc_A5552C: FLdPr var_A4
  loc_A5552F:  = Me.Value
  loc_A55534: FLdRfVar var_B4
  loc_A55537: CStrVarTmp
  loc_A55538: FStStr var_88
  loc_A5553B: FFreeAd var_8C = "": var_90 = ""
  loc_A55544: FFree1Var var_B4 = ""
  loc_A55547: ExitProcCbHresult
End Sub

Public Property Let FechInre(vDato) 'A01EC0
  'Data Table: 43238C
  loc_A01E94: ILdRf vDato
  loc_A01E97: FStStrCopy var_88
  loc_A01E9A: ILdRf var_88
  loc_A01E9D: CVarStr var_AC
  loc_A01EA0: PopAdLdVar
  loc_A01EA1: LitVarStr var_9C, "FechInre"
  loc_A01EA6: PopAdLdVar
  loc_A01EA7: FLdRfVar var_8C
  loc_A01EAA: FLdPr Me
  loc_A01EAD: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A01EB2: FLdPr var_8C
  loc_A01EB5: Me.Collect = from_stack_1
  loc_A01EBA: FFree1Ad var_8C
  loc_A01EBD: ExitProcHresult
End Sub

Public Property Get NumeAcpa() 'A454C4
  'Data Table: 43238C
  loc_A45478: FLdRfVar var_B4
  loc_A4547B: FLdRfVar var_A4
  loc_A4547E: LitVarStr var_A0, "NumeAcpa"
  loc_A45483: PopAdLdVar
  loc_A45484: FLdRfVar var_90
  loc_A45487: FLdRfVar var_8C
  loc_A4548A: FLdPr Me
  loc_A4548D: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A45492: FLdPr var_8C
  loc_A45495:  = Me.Fields
  loc_A4549A: FLdPr var_90
  loc_A4549D: from_stack_2 = Me.Item(from_stack_1)
  loc_A454A2: FLdPr var_A4
  loc_A454A5:  = Me.Value
  loc_A454AA: FLdRfVar var_B4
  loc_A454AD: CI2Var
  loc_A454AE: FStI2 var_86
  loc_A454B1: FFreeAd var_8C = "": var_90 = ""
  loc_A454BA: FFree1Var var_B4 = ""
  loc_A454BD: ExitProcCbHresult
End Sub

Public Property Let NumeAcpa(vDato) '9ECAC0
  'Data Table: 43238C
  loc_9ECA9C: FLdI2 vDato
  loc_9ECA9F: CVarI2 var_A8
  loc_9ECAA2: PopAdLdVar
  loc_9ECAA3: LitVarStr var_98, "NumeAcpa"
  loc_9ECAA8: PopAdLdVar
  loc_9ECAA9: FLdRfVar var_88
  loc_9ECAAC: FLdPr Me
  loc_9ECAAF: from_stack_1v = clsdetainre.global_4399892Get()
  loc_9ECAB4: FLdPr var_88
  loc_9ECAB7: Me.Collect = from_stack_1
  loc_9ECABC: FFree1Ad var_88
  loc_9ECABF: ExitProcHresult
End Sub

Public Property Get CodiConc() 'A5570C
  'Data Table: 43238C
  loc_A556BC: ZeroRetVal
  loc_A556BE: FLdRfVar var_B4
  loc_A556C1: FLdRfVar var_A4
  loc_A556C4: LitVarStr var_A0, "CodiConc"
  loc_A556C9: PopAdLdVar
  loc_A556CA: FLdRfVar var_90
  loc_A556CD: FLdRfVar var_8C
  loc_A556D0: FLdPr Me
  loc_A556D3: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A556D8: FLdPr var_8C
  loc_A556DB:  = Me.Fields
  loc_A556E0: FLdPr var_90
  loc_A556E3: from_stack_2 = Me.Item(from_stack_1)
  loc_A556E8: FLdPr var_A4
  loc_A556EB:  = Me.Value
  loc_A556F0: FLdRfVar var_B4
  loc_A556F3: CStrVarTmp
  loc_A556F4: FStStr var_88
  loc_A556F7: FFreeAd var_8C = "": var_90 = ""
  loc_A55700: FFree1Var var_B4 = ""
  loc_A55703: ExitProcCbHresult
End Sub

Public Property Let CodiConc(vDato) 'A01F24
  'Data Table: 43238C
  loc_A01EF8: ILdRf vDato
  loc_A01EFB: FStStrCopy var_88
  loc_A01EFE: ILdRf var_88
  loc_A01F01: CVarStr var_AC
  loc_A01F04: PopAdLdVar
  loc_A01F05: LitVarStr var_9C, "CodiConc"
  loc_A01F0A: PopAdLdVar
  loc_A01F0B: FLdRfVar var_8C
  loc_A01F0E: FLdPr Me
  loc_A01F11: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A01F16: FLdPr var_8C
  loc_A01F19: Me.Collect = from_stack_1
  loc_A01F1E: FFree1Ad var_8C
  loc_A01F21: ExitProcHresult
End Sub

Public Property Get CodiCuco() 'A557A0
  'Data Table: 43238C
  loc_A55750: ZeroRetVal
  loc_A55752: FLdRfVar var_B4
  loc_A55755: FLdRfVar var_A4
  loc_A55758: LitVarStr var_A0, "CodiCuco"
  loc_A5575D: PopAdLdVar
  loc_A5575E: FLdRfVar var_90
  loc_A55761: FLdRfVar var_8C
  loc_A55764: FLdPr Me
  loc_A55767: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A5576C: FLdPr var_8C
  loc_A5576F:  = Me.Fields
  loc_A55774: FLdPr var_90
  loc_A55777: from_stack_2 = Me.Item(from_stack_1)
  loc_A5577C: FLdPr var_A4
  loc_A5577F:  = Me.Value
  loc_A55784: FLdRfVar var_B4
  loc_A55787: CStrVarTmp
  loc_A55788: FStStr var_88
  loc_A5578B: FFreeAd var_8C = "": var_90 = ""
  loc_A55794: FFree1Var var_B4 = ""
  loc_A55797: ExitProcCbHresult
End Sub

Public Property Let CodiCuco(vDato) 'A021E0
  'Data Table: 43238C
  loc_A021B4: ILdRf vDato
  loc_A021B7: FStStrCopy var_88
  loc_A021BA: ILdRf var_88
  loc_A021BD: CVarStr var_AC
  loc_A021C0: PopAdLdVar
  loc_A021C1: LitVarStr var_9C, "CodiCuco"
  loc_A021C6: PopAdLdVar
  loc_A021C7: FLdRfVar var_8C
  loc_A021CA: FLdPr Me
  loc_A021CD: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A021D2: FLdPr var_8C
  loc_A021D5: Me.Collect = from_stack_1
  loc_A021DA: FFree1Ad var_8C
  loc_A021DD: ExitProcHresult
End Sub

Public Property Get CodiEnre() 'A48714
  'Data Table: 43238C
  loc_A486C8: FLdRfVar var_B4
  loc_A486CB: FLdRfVar var_A4
  loc_A486CE: LitVarStr var_A0, "CodiEnre"
  loc_A486D3: PopAdLdVar
  loc_A486D4: FLdRfVar var_90
  loc_A486D7: FLdRfVar var_8C
  loc_A486DA: FLdPr Me
  loc_A486DD: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A486E2: FLdPr var_8C
  loc_A486E5:  = Me.Fields
  loc_A486EA: FLdPr var_90
  loc_A486ED: from_stack_2 = Me.Item(from_stack_1)
  loc_A486F2: FLdPr var_A4
  loc_A486F5:  = Me.Value
  loc_A486FA: FLdRfVar var_B4
  loc_A486FD: CI2Var
  loc_A486FE: FStI2 var_86
  loc_A48701: FFreeAd var_8C = "": var_90 = ""
  loc_A4870A: FFree1Var var_B4 = ""
  loc_A4870D: ExitProcCbHresult
End Sub

Public Property Let CodiEnre(vDato) '9ECA68
  'Data Table: 43238C
  loc_9ECA44: FLdI2 vDato
  loc_9ECA47: CVarI2 var_A8
  loc_9ECA4A: PopAdLdVar
  loc_9ECA4B: LitVarStr var_98, "CodiEnre"
  loc_9ECA50: PopAdLdVar
  loc_9ECA51: FLdRfVar var_88
  loc_9ECA54: FLdPr Me
  loc_9ECA57: from_stack_1v = clsdetainre.global_4399892Get()
  loc_9ECA5C: FLdPr var_88
  loc_9ECA5F: Me.Collect = from_stack_1
  loc_9ECA64: FFree1Ad var_88
  loc_9ECA67: ExitProcHresult
End Sub

Public Property Get TotaDeir() 'A4819C
  'Data Table: 43238C
  loc_A48150: FLdRfVar var_B8
  loc_A48153: FLdRfVar var_A8
  loc_A48156: LitVarStr var_A4, "TotaDeir"
  loc_A4815B: PopAdLdVar
  loc_A4815C: FLdRfVar TotaDeir
  loc_A4815F: FLdRfVar var_90
  loc_A48162: FLdPr Me
  loc_A48165: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A4816A: FLdPr var_90
  loc_A4816D:  = Me.Fields
  loc_A48172: FLdPr TotaDeir
  loc_A48175: from_stack_2 = Me.Item(from_stack_1)
  loc_A4817A: FLdPr var_A8
  loc_A4817D:  = Me.Value
  loc_A48182: FLdRfVar var_B8
  loc_A48185: CR4Var
  loc_A48186: FStFPR8 var_8C
  loc_A48189: FFreeAd var_90 = "": TotaDeir = ""
  loc_A48192: FFree1Var var_B8 = ""
  loc_A48195: ExitProcCbHresult
End Sub

Public Property Let TotaDeir(vDato) '9F98A0
  'Data Table: 43238C
  loc_9F9878: FLdFPR8 vDato
  loc_9F987B: CVarR8
  loc_9F987F: PopAdLdVar
  loc_9F9880: LitVarStr var_98, "TotaDeir"
  loc_9F9885: PopAdLdVar
  loc_9F9886: FLdRfVar var_88
  loc_9F9889: FLdPr Me
  loc_9F988C: from_stack_1v = clsdetainre.global_4399892Get()
  loc_9F9891: FLdPr var_88
  loc_9F9894: Me.Collect = from_stack_1
  loc_9F9899: FFree1Ad var_88
  loc_9F989C: ExitProcHresult
End Sub

Public Property Get TotaDeirFora() 'A48110
  'Data Table: 43238C
  loc_A480C4: FLdRfVar var_B8
  loc_A480C7: FLdRfVar var_A8
  loc_A480CA: LitVarStr var_A4, "TotaDeirFora"
  loc_A480CF: PopAdLdVar
  loc_A480D0: FLdRfVar TotaDeirFora
  loc_A480D3: FLdRfVar var_90
  loc_A480D6: FLdPr Me
  loc_A480D9: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A480DE: FLdPr var_90
  loc_A480E1:  = Me.Fields
  loc_A480E6: FLdPr TotaDeirFora
  loc_A480E9: from_stack_2 = Me.Item(from_stack_1)
  loc_A480EE: FLdPr var_A8
  loc_A480F1:  = Me.Value
  loc_A480F6: FLdRfVar var_B8
  loc_A480F9: CR4Var
  loc_A480FA: FStFPR8 var_8C
  loc_A480FD: FFreeAd var_90 = "": TotaDeirFora = ""
  loc_A48106: FFree1Var var_B8 = ""
  loc_A48109: ExitProcCbHresult
End Sub

Public Property Get DetaCuco() 'A41F88
  'Data Table: 43238C
  loc_A41F44: ZeroRetValVar
  loc_A41F46: FLdRfVar var_B0
  loc_A41F49: LitVarStr var_AC, "DetaCuco"
  loc_A41F4E: PopAdLdVar
  loc_A41F4F: FLdRfVar var_9C
  loc_A41F52: FLdRfVar var_98
  loc_A41F55: FLdPr Me
  loc_A41F58: from_stack_1v = clsdetainre.global_4399892Get()
  loc_A41F5D: FLdPr var_98
  loc_A41F60:  = Me.Fields
  loc_A41F65: FLdPr var_9C
  loc_A41F68: from_stack_2 = Me.Item(from_stack_1)
  loc_A41F6D: FLdZeroAd var_B0
  loc_A41F70: CVarAd
  loc_A41F74: FStVar DetaCuco
  loc_A41F78: FFreeAd var_98 = ""
  loc_A41F7F: ExitProcCbHresult
End Sub

Public Function ValidaClave(FechInre, NumeAcpa, CodiConc) 'AAE840
  'Data Table: 43238C
  loc_AAE790: ILdRf FechInre
  loc_AAE793: FStStrCopy var_8C
  loc_AAE796: ILdRf CodiConc
  loc_AAE799: FStStrCopy var_90
  loc_AAE79C: ZeroRetVal
  loc_AAE79E: LitStr "SELECT FechInre FROM detainre WHERE FechInre = '"
  loc_AAE7A1: LitI4 1
  loc_AAE7A6: LitI4 1
  loc_AAE7AB: LitVarStr var_B0, "yyyy-mm-dd"
  loc_AAE7B0: FStVarCopyObj var_C0
  loc_AAE7B3: FLdRfVar var_C0
  loc_AAE7B6: FLdRfVar var_8C
  loc_AAE7B9: CVarRef
  loc_AAE7BE: ImpAdCallI2 Format$(, )
  loc_AAE7C3: FStStrNoPop var_C4
  loc_AAE7C6: ConcatStr
  loc_AAE7C7: FStStrNoPop var_C8
  loc_AAE7CA: LitStr "' AND NumeAcpa = "
  loc_AAE7CD: ConcatStr
  loc_AAE7CE: FStStrNoPop var_CC
  loc_AAE7D1: FLdI2 NumeAcpa
  loc_AAE7D4: CStrUI1
  loc_AAE7D6: FStStrNoPop var_D0
  loc_AAE7D9: ConcatStr
  loc_AAE7DA: FStStrNoPop var_D4
  loc_AAE7DD: LitStr " AND CodiConc = '"
  loc_AAE7E0: ConcatStr
  loc_AAE7E1: FStStrNoPop var_D8
  loc_AAE7E4: ILdRf var_90
  loc_AAE7E7: ConcatStr
  loc_AAE7E8: FStStrNoPop var_DC
  loc_AAE7EB: LitStr "'"
  loc_AAE7EE: ConcatStr
  loc_AAE7EF: FStStrNoPop var_E0
  loc_AAE7F2: Call EjecutarRs2(from_stack_1v)
  loc_AAE7F7: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AAE80A: FFree1Var var_C0 = ""
  loc_AAE80D: FLdRfVar var_E8
  loc_AAE810: FLdRfVar var_E4
  loc_AAE813: FLdPr Me
  loc_AAE816: from_stack_1v = clsdetainre.global_4399892Get()
  loc_AAE81B: FLdPr var_E4
  loc_AAE81E:  = Me.RecordCount
  loc_AAE823: ILdRf var_E8
  loc_AAE826: LitI4 0
  loc_AAE82B: GtI4
  loc_AAE82C: FFree1Ad var_E4
  loc_AAE82F: BranchF loc_AAE838
  loc_AAE832: LitStr "El REGISTRO de INGRESO de RENTAS YA EXISTE. Reintente..."
  loc_AAE835: FStStrCopy var_88
  loc_AAE838: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E7954
  'Data Table: 43238C
  loc_9E7938: ILdRf pError
  loc_9E793B: FStAd var_88 
  loc_9E793F: ILdRf pRecordset
  loc_9E7942: FStAd var_8C 
  loc_9E7946: FLdPr Me
  loc_9E7949: RaiseEvent
  loc_9E7951: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9B0E4
  'Data Table: 43238C
  loc_A9B024: ILdRf pRecordset
  loc_A9B027: FStAd var_88 
  loc_A9B02B: ILdRf adReason
  loc_A9B02E: FStR4 var_90
  loc_A9B031: ILdRf var_90
  loc_A9B034: LitI4 1
  loc_A9B039: EqI4
  loc_A9B03A: BranchF loc_A9B040
  loc_A9B03D: Branch loc_A9B0D3
  loc_A9B040: ILdRf var_90
  loc_A9B043: LitI4 9
  loc_A9B048: EqI4
  loc_A9B049: BranchF loc_A9B04F
  loc_A9B04C: Branch loc_A9B0D3
  loc_A9B04F: ILdRf var_90
  loc_A9B052: LitI4 2
  loc_A9B057: EqI4
  loc_A9B058: BranchF loc_A9B05E
  loc_A9B05B: Branch loc_A9B0D3
  loc_A9B05E: ILdRf var_90
  loc_A9B061: LitI4 &HB
  loc_A9B066: EqI4
  loc_A9B067: BranchF loc_A9B06D
  loc_A9B06A: Branch loc_A9B0D3
  loc_A9B06D: ILdRf var_90
  loc_A9B070: LitI4 &HA
  loc_A9B075: EqI4
  loc_A9B076: BranchF loc_A9B07C
  loc_A9B079: Branch loc_A9B0D3
  loc_A9B07C: ILdRf var_90
  loc_A9B07F: LitI4 7
  loc_A9B084: EqI4
  loc_A9B085: BranchF loc_A9B08B
  loc_A9B088: Branch loc_A9B0D3
  loc_A9B08B: ILdRf var_90
  loc_A9B08E: LitI4 8
  loc_A9B093: EqI4
  loc_A9B094: BranchF loc_A9B09A
  loc_A9B097: Branch loc_A9B0D3
  loc_A9B09A: ILdRf var_90
  loc_A9B09D: LitI4 5
  loc_A9B0A2: EqI4
  loc_A9B0A3: BranchF loc_A9B0A9
  loc_A9B0A6: Branch loc_A9B0D3
  loc_A9B0A9: ILdRf var_90
  loc_A9B0AC: LitI4 6
  loc_A9B0B1: EqI4
  loc_A9B0B2: BranchF loc_A9B0B8
  loc_A9B0B5: Branch loc_A9B0D3
  loc_A9B0B8: ILdRf var_90
  loc_A9B0BB: LitI4 4
  loc_A9B0C0: EqI4
  loc_A9B0C1: BranchF loc_A9B0C7
  loc_A9B0C4: Branch loc_A9B0D3
  loc_A9B0C7: ILdRf var_90
  loc_A9B0CA: LitI4 3
  loc_A9B0CF: EqI4
  loc_A9B0D0: BranchF loc_A9B0D3
  loc_A9B0D3: FLdI2 var_8A
  loc_A9B0D6: BranchF loc_A9B0E1
  loc_A9B0D9: LitI4 4
  loc_A9B0DE: IStI4 adStatus
  loc_A9B0E1: ExitProcHresult
End Sub

Private Function Proc_41_39_9F9560() '9F9560
  'Data Table: 43238C
  loc_9F953C: LitStr "Primary"
  loc_9F953F: FLdPr Me
  loc_9F9542: LateIdLdVar var_94 DispID_4 0
  loc_9F9549: CastAdVar Me
  loc_9F954D: FStAdFunc var_98
  loc_9F9550: FLdPr var_98
  loc_9F9558: FFree1Ad var_98
  loc_9F955B: FFree1Var var_94 = ""
  loc_9F955E: ExitProcHresult
End Function

Private Function Proc_41_40_9F52E4(arg_C) '9F52E4
  'Data Table: 43238C
  loc_9F52C0: ILdI4 arg_C
  loc_9F52C3: FStStrCopy var_88
  loc_9F52C6: ILdRf var_88
  loc_9F52C9: LitStr "Primary"
  loc_9F52CC: EqStr
  loc_9F52CE: BranchF loc_9F52E3
  loc_9F52D1: FLdRfVar var_8C
  loc_9F52D4: FLdPr Me
  loc_9F52D7: from_stack_1v = clsdetainre.global_4399892Get()
  loc_9F52DC: FLdZeroAd var_8C
  loc_9F52DF: IStAdFunc
  loc_9F52E3: ExitProcHresult
End Function

Public Function global_4399892Get() '43276C
  global_4399892Get = global_4399892
End Function

Public Sub global_4399892Put(Value) '432786
  global_4399892 = Value
End Sub

Public Sub global_4399892Set(Value) '4327A0
  global_4399892 = Value
End Sub

Public Function global_4399892Get() '4327BA
  global_4399892Get = global_4399892
End Function

Public Sub global_4399892Put(Value) '4327D4
  global_4399892 = Value
End Sub

Public Sub global_4399892Set(Value) '4327EE
  global_4399892 = Value
End Sub

Public Function global_4399892Get() '432808
  global_4399892Get = global_4399892
End Function

Public Sub global_4399892Put(Value) '432822
  global_4399892 = Value
End Sub

Public Sub global_4399892Set(Value) '43283C
  global_4399892 = Value
End Sub
