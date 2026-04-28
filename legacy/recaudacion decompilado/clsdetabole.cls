VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsdetabole"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Move(iValor) '9E7EEC
  'Data Table: 477A54
  loc_9E7ECC: LitVar_Missing var_98
  loc_9E7ECF: PopAdLdVar
  loc_9E7ED0: ILdI2 iValor
  loc_9E7ED3: CI4UI1
  loc_9E7ED4: FLdRfVar var_88
  loc_9E7ED7: FLdPr Me
  loc_9E7EDA: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9E7EDF: FLdPr var_88
  loc_9E7EE2: Me.Move from_stack_1, from_stack_2
  loc_9E7EE7: FFree1Ad var_88
  loc_9E7EEA: ExitProcHresult
End Sub

Public Sub MoveFirst() 'A0F8C4
  'Data Table: 477A54
  loc_A0F888: FLdRfVar var_8C
  loc_A0F88B: FLdRfVar var_88
  loc_A0F88E: FLdPr Me
  loc_A0F891: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A0F896: FLdPr var_88
  loc_A0F899:  = Me.RecordCount
  loc_A0F89E: ILdRf var_8C
  loc_A0F8A1: LitI4 0
  loc_A0F8A6: GtI4
  loc_A0F8A7: FFree1Ad var_88
  loc_A0F8AA: BranchF loc_A0F8C3
  loc_A0F8AD: FLdRfVar var_88
  loc_A0F8B0: FLdPr Me
  loc_A0F8B3: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A0F8B8: FLdPr var_88
  loc_A0F8BB: Me.MoveFirst
  loc_A0F8C0: FFree1Ad var_88
  loc_A0F8C3: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0FCB4
  'Data Table: 477A54
  loc_A0FC78: FLdRfVar var_8C
  loc_A0FC7B: FLdRfVar var_88
  loc_A0FC7E: FLdPr Me
  loc_A0FC81: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A0FC86: FLdPr var_88
  loc_A0FC89:  = Me.RecordCount
  loc_A0FC8E: ILdRf var_8C
  loc_A0FC91: LitI4 0
  loc_A0FC96: GtI4
  loc_A0FC97: FFree1Ad var_88
  loc_A0FC9A: BranchF loc_A0FCB3
  loc_A0FC9D: FLdRfVar var_88
  loc_A0FCA0: FLdPr Me
  loc_A0FCA3: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A0FCA8: FLdPr var_88
  loc_A0FCAB: Me.MoveLast
  loc_A0FCB0: FFree1Ad var_88
  loc_A0FCB3: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9EED4
  'Data Table: 477A54
  loc_A9EE18: FLdRfVar var_8A
  loc_A9EE1B: FLdRfVar var_88
  loc_A9EE1E: FLdPr Me
  loc_A9EE21: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A9EE26: FLdPr var_88
  loc_A9EE29:  = Me.EOF
  loc_A9EE2E: FLdI2 var_8A
  loc_A9EE31: NotI4
  loc_A9EE32: FLdRfVar var_94
  loc_A9EE35: FLdRfVar var_90
  loc_A9EE38: FLdPr Me
  loc_A9EE3B: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A9EE40: FLdPr var_90
  loc_A9EE43:  = Me.RecordCount
  loc_A9EE48: ILdRf var_94
  loc_A9EE4B: LitI4 0
  loc_A9EE50: GtI4
  loc_A9EE51: AndI4
  loc_A9EE52: FFreeAd var_88 = ""
  loc_A9EE59: BranchF loc_A9EE72
  loc_A9EE5C: FLdRfVar var_88
  loc_A9EE5F: FLdPr Me
  loc_A9EE62: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A9EE67: FLdPr var_88
  loc_A9EE6A: Me.MoveNext
  loc_A9EE6F: FFree1Ad var_88
  loc_A9EE72: FLdRfVar var_8A
  loc_A9EE75: FLdRfVar var_88
  loc_A9EE78: FLdPr Me
  loc_A9EE7B: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A9EE80: FLdPr var_88
  loc_A9EE83:  = Me.EOF
  loc_A9EE88: FLdI2 var_8A
  loc_A9EE8B: FLdRfVar var_94
  loc_A9EE8E: FLdRfVar var_90
  loc_A9EE91: FLdPr Me
  loc_A9EE94: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A9EE99: FLdPr var_90
  loc_A9EE9C:  = Me.RecordCount
  loc_A9EEA1: ILdRf var_94
  loc_A9EEA4: LitI4 0
  loc_A9EEA9: GtI4
  loc_A9EEAA: AndI4
  loc_A9EEAB: FFreeAd var_88 = ""
  loc_A9EEB2: BranchF loc_A9EED0
  loc_A9EEB5: ImpAdCallFPR4 Beep()
  loc_A9EEBA: FLdRfVar var_88
  loc_A9EEBD: FLdPr Me
  loc_A9EEC0: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A9EEC5: FLdPr var_88
  loc_A9EEC8: Me.MoveLast
  loc_A9EECD: FFree1Ad var_88
  loc_A9EED0: ExitProcHresult
  loc_A9EED1: VCallAd Control_ID_
End Sub

Public Sub MoveSiguiente() '9D1840
  'Data Table: 477A54
  loc_9D1828: FLdRfVar var_88
  loc_9D182B: FLdPr Me
  loc_9D182E: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9D1833: FLdPr var_88
  loc_9D1836: Me.MoveNext
  loc_9D183B: FFree1Ad var_88
  loc_9D183E: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9C8B4
  'Data Table: 477A54
  loc_A9C7F8: FLdRfVar var_8A
  loc_A9C7FB: FLdRfVar var_88
  loc_A9C7FE: FLdPr Me
  loc_A9C801: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A9C806: FLdPr var_88
  loc_A9C809:  = Me.BOF
  loc_A9C80E: FLdI2 var_8A
  loc_A9C811: NotI4
  loc_A9C812: FLdRfVar var_94
  loc_A9C815: FLdRfVar var_90
  loc_A9C818: FLdPr Me
  loc_A9C81B: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A9C820: FLdPr var_90
  loc_A9C823:  = Me.RecordCount
  loc_A9C828: ILdRf var_94
  loc_A9C82B: LitI4 0
  loc_A9C830: GtI4
  loc_A9C831: AndI4
  loc_A9C832: FFreeAd var_88 = ""
  loc_A9C839: BranchF loc_A9C852
  loc_A9C83C: FLdRfVar var_88
  loc_A9C83F: FLdPr Me
  loc_A9C842: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A9C847: FLdPr var_88
  loc_A9C84A: Me.MovePrevious
  loc_A9C84F: FFree1Ad var_88
  loc_A9C852: FLdRfVar var_8A
  loc_A9C855: FLdRfVar var_88
  loc_A9C858: FLdPr Me
  loc_A9C85B: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A9C860: FLdPr var_88
  loc_A9C863:  = Me.BOF
  loc_A9C868: FLdI2 var_8A
  loc_A9C86B: FLdRfVar var_94
  loc_A9C86E: FLdRfVar var_90
  loc_A9C871: FLdPr Me
  loc_A9C874: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A9C879: FLdPr var_90
  loc_A9C87C:  = Me.RecordCount
  loc_A9C881: ILdRf var_94
  loc_A9C884: LitI4 0
  loc_A9C889: GtI4
  loc_A9C88A: AndI4
  loc_A9C88B: FFreeAd var_88 = ""
  loc_A9C892: BranchF loc_A9C8B0
  loc_A9C895: ImpAdCallFPR4 Beep()
  loc_A9C89A: FLdRfVar var_88
  loc_A9C89D: FLdPr Me
  loc_A9C8A0: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A9C8A5: FLdPr var_88
  loc_A9C8A8: Me.MoveFirst
  loc_A9C8AD: FFree1Ad var_88
  loc_A9C8B0: ExitProcHresult
End Sub

Public Property Get EOF() '9F9EBC
  'Data Table: 477A54
  loc_9F9E94: FLdRfVar var_8E
  loc_9F9E97: FLdRfVar var_8C
  loc_9F9E9A: FLdPr Me
  loc_9F9E9D: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9F9EA2: FLdPr var_8C
  loc_9F9EA5:  = Me.EOF
  loc_9F9EAA: FLdI2 var_8E
  loc_9F9EAD: FStI2 var_86
  loc_9F9EB0: FFree1Ad var_8C
  loc_9F9EB3: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F6BB4
  'Data Table: 477A54
  loc_9F6B8C: FLdRfVar var_8E
  loc_9F6B8F: FLdRfVar var_8C
  loc_9F6B92: FLdPr Me
  loc_9F6B95: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9F6B9A: FLdPr var_8C
  loc_9F6B9D:  = Me.BOF
  loc_9F6BA2: FLdI2 var_8E
  loc_9F6BA5: FStI2 var_86
  loc_9F6BA8: FFree1Ad var_8C
  loc_9F6BAB: ExitProcCbHresult
  loc_9F6BB3: CStrVarTmp
End Sub

Public Sub Sort(sOrden) '9E190C
  'Data Table: 477A54
  loc_9E18F0: ILdI4 sOrden
  loc_9E18F3: FLdRfVar var_88
  loc_9E18F6: FLdPr Me
  loc_9E18F9: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9E18FE: FLdPr var_88
  loc_9E1901: Me.Sort = from_stack_1
  loc_9E1906: FFree1Ad var_88
  loc_9E1909: ExitProcHresult
  loc_9E190A: HardType
End Sub

Public Sub Find(sFind) '9F6C10
  'Data Table: 477A54
  loc_9F6BE8: LitVar_Missing var_98
  loc_9F6BEB: PopAdLdVar
  loc_9F6BEC: LitI4 1
  loc_9F6BF1: LitI4 0
  loc_9F6BF6: ILdI4 sFind
  loc_9F6BF9: FLdRfVar var_88
  loc_9F6BFC: FLdPr Me
  loc_9F6BFF: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9F6C04: FLdPr var_88
  loc_9F6C07: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F6C0C: FFree1Ad var_88
  loc_9F6C0F: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9FA02C
  'Data Table: 477A54
  loc_9FA004: FLdRfVar var_90
  loc_9FA007: FLdRfVar var_8C
  loc_9FA00A: FLdPr Me
  loc_9FA00D: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9FA012: FLdPr var_8C
  loc_9FA015:  = Me.AbsolutePosition
  loc_9FA01A: ILdRf var_90
  loc_9FA01D: FStR4 var_88
  loc_9FA020: FFree1Ad var_8C
  loc_9FA023: ExitProcCbHresult
  loc_9FA029: Ary1LdFPR8
  loc_9FA02A: ImpAdLdPr unk_475655
End Sub

Public Property Get RecordCount() '9FA0E4
  'Data Table: 477A54
  loc_9FA0BC: FLdRfVar var_90
  loc_9FA0BF: FLdRfVar var_8C
  loc_9FA0C2: FLdPr Me
  loc_9FA0C5: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9FA0CA: FLdPr var_8C
  loc_9FA0CD:  = Me.RecordCount
  loc_9FA0D2: ILdRf var_90
  loc_9FA0D5: FStR4 var_88
  loc_9FA0D8: FFree1Ad var_8C
  loc_9FA0DB: ExitProcCbHresult
End Sub

Public Sub Delete() 'A218EC
  'Data Table: 477A54
  loc_A218A4: FLdRfVar var_8C
  loc_A218A7: FLdRfVar var_88
  loc_A218AA: FLdPr Me
  loc_A218AD: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A218B2: FLdPr var_88
  loc_A218B5:  = Me.RecordCount
  loc_A218BA: ILdRf var_8C
  loc_A218BD: LitI4 0
  loc_A218C2: GtI4
  loc_A218C3: FFree1Ad var_88
  loc_A218C6: BranchF loc_A218E9
  loc_A218C9: LitI4 1
  loc_A218CE: FLdRfVar var_88
  loc_A218D1: FLdPr Me
  loc_A218D4: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A218D9: FLdPr var_88
  loc_A218DC: Me.Delete
  loc_A218E1: FFree1Ad var_88
  loc_A218E4: Call MoveNext()
  loc_A218E9: ExitProcHresult
End Sub

Public Sub Requery() '9FED8C
  'Data Table: 477A54
  loc_9FED5C: LitI4 -1
  loc_9FED61: FLdRfVar var_88
  loc_9FED64: FLdPr Me
  loc_9FED67: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9FED6C: FLdPr var_88
  loc_9FED6F: Me.Requery from_stack_1
  loc_9FED74: FFree1Ad var_88
  loc_9FED77: LitVarStr var_98, "Primary"
  loc_9FED7C: PopAdLdVar
  loc_9FED7D: FLdPr Me
  loc_9FED80: LateIdCall
  loc_9FED88: ExitProcHresult
End Sub

Public Sub Update() 'A22390
  'Data Table: 477A54
  loc_A2234C: FLdRfVar var_88
  loc_A2234F: FLdPr Me
  loc_A22352: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A22357: FLdZeroAd var_88
  loc_A2235A: FStAdFunc var_8C
  loc_A2235D: LitI4 3
  loc_A22362: FLdPr var_8C
  loc_A22365: Me.UpdateBatch
  loc_A2236A: FLdRfVar var_90
  loc_A2236D: FLdPr var_8C
  loc_A22370:  = Me.EditMode
  loc_A22375: ILdRf var_90
  loc_A22378: LitI4 2
  loc_A2237D: EqI4
  loc_A2237E: BranchF loc_A22386
  loc_A22381: Call MoveLast()
  loc_A22386: LitNothing
  loc_A22388: FStAd var_8C 
  loc_A2238C: ExitProcHresult
  loc_A2238D: MemLdFPR4 global_0
End Sub

Public Sub Cancel() 'A4AC4C
  'Data Table: 477A54
  loc_A4ABF8: FLdRfVar var_88
  loc_A4ABFB: FLdPr Me
  loc_A4ABFE: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4AC03: FLdZeroAd var_88
  loc_A4AC06: FStAdFunc var_8C
  loc_A4AC09: FLdRfVar var_90
  loc_A4AC0C: FLdPr var_8C
  loc_A4AC0F:  = Me.RecordCount
  loc_A4AC14: ILdRf var_90
  loc_A4AC17: LitI4 0
  loc_A4AC1C: GtI4
  loc_A4AC1D: BranchF loc_A4AC44
  loc_A4AC20: FLdPr var_8C
  loc_A4AC23: Me.CancelUpdate
  loc_A4AC28: FLdRfVar var_90
  loc_A4AC2B: FLdPr var_8C
  loc_A4AC2E:  = Me.EditMode
  loc_A4AC33: ILdRf var_90
  loc_A4AC36: LitI4 2
  loc_A4AC3B: EqI4
  loc_A4AC3C: BranchF loc_A4AC44
  loc_A4AC3F: Call MoveFirst()
  loc_A4AC44: LitNothing
  loc_A4AC46: FStAd var_8C 
  loc_A4AC4A: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FBFD4
  'Data Table: 477A54
  loc_9FBFA8: FLdRfVar var_90
  loc_9FBFAB: FLdRfVar var_8C
  loc_9FBFAE: FLdPr Me
  loc_9FBFB1: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9FBFB6: FLdPr var_8C
  loc_9FBFB9:  = Me.EditMode
  loc_9FBFBE: ILdRf var_90
  loc_9FBFC1: LitI4 0
  loc_9FBFC6: NeI4
  loc_9FBFC7: FStI2 var_86
  loc_9FBFCA: FFree1Ad var_8C
  loc_9FBFCD: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A733B8
  'Data Table: 477A54
  loc_A73344: ILdRf sSelect
  loc_A73347: FStStrCopy var_88
  loc_A7334A: LitNothing
  loc_A7334C: CastAd
  loc_A7334F: FStAdFuncNoPop
  loc_A73352: FLdPr Me
  loc_A73355: Call clsdetabole.global_4684252Set(from_stack_1v)
  loc_A7335A: FFree1Ad var_8C
  loc_A7335D: New Recordset
  loc_A73361: FStAdFuncNoPop
  loc_A73364: FLdPr Me
  loc_A73367: Call clsdetabole.global_4684252Set(from_stack_1v)
  loc_A7336C: FFree1Ad var_8C
  loc_A7336F: LitI4 -1
  loc_A73374: LitI4 3
  loc_A73379: LitI4 3
  loc_A7337E: ImpAdLdI4 MemVar_D9301C
  loc_A73381: CVarAd
  loc_A73385: PopAdLdVar
  loc_A73386: ILdRf var_88
  loc_A73389: CVarStr var_9C
  loc_A7338C: PopAdLdVar
  loc_A7338D: FLdRfVar var_8C
  loc_A73390: FLdPr Me
  loc_A73393: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A73398: FLdPr var_8C
  loc_A7339B: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A733A0: FFree1Ad var_8C
  loc_A733A3: LitVarStr var_9C, "Primary"
  loc_A733A8: PopAdLdVar
  loc_A733A9: FLdPr Me
  loc_A733AC: LateIdCall
  loc_A733B4: ExitProcHresult
  loc_A733B5: BranchT loc_A7380A
End Sub

Public Sub EjecutarRs2(sSelect) 'A5BAE8
  'Data Table: 477A54
  loc_A5BA88: ILdRf sSelect
  loc_A5BA8B: FStStrCopy var_88
  loc_A5BA8E: LitNothing
  loc_A5BA90: CastAd
  loc_A5BA93: FStAdFuncNoPop
  loc_A5BA96: FLdPr Me
  loc_A5BA99: Call clsdetabole.global_4684252Set(from_stack_1v)
  loc_A5BA9E: FFree1Ad var_8C
  loc_A5BAA1: New Recordset
  loc_A5BAA5: FStAdFuncNoPop
  loc_A5BAA8: FLdPr Me
  loc_A5BAAB: Call clsdetabole.global_4684252Set(from_stack_1v)
  loc_A5BAB0: FFree1Ad var_8C
  loc_A5BAB3: LitI4 -1
  loc_A5BAB8: LitI4 3
  loc_A5BABD: LitI4 3
  loc_A5BAC2: ImpAdLdI4 MemVar_D9301C
  loc_A5BAC5: CVarAd
  loc_A5BAC9: PopAdLdVar
  loc_A5BACA: ILdRf var_88
  loc_A5BACD: CVarStr var_9C
  loc_A5BAD0: PopAdLdVar
  loc_A5BAD1: FLdRfVar var_8C
  loc_A5BAD4: FLdPr Me
  loc_A5BAD7: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A5BADC: FLdPr var_8C
  loc_A5BADF: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5BAE4: FFree1Ad var_8C
  loc_A5BAE7: ExitProcHresult
End Sub

Public Property Get DataSource() 'A0A688
  'Data Table: 477A54
  loc_A0A658: ZeroRetVal
  loc_A0A65A: FLdRfVar var_90
  loc_A0A65D: FLdRfVar var_8C
  loc_A0A660: FLdPr Me
  loc_A0A663: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A0A668: FLdPr var_8C
  loc_A0A66B:  = Me.DataSource
  loc_A0A670: ILdRf var_90
  loc_A0A673: CastAd
  loc_A0A676: FStAdFunc var_88
  loc_A0A679: FFreeAd var_8C = ""
  loc_A0A680: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9FA7B8
  'Data Table: 477A54
  loc_9FA790: FLdRfVar var_90
  loc_9FA793: FLdRfVar var_8C
  loc_9FA796: FLdPr Me
  loc_9FA799: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9FA79E: FLdPr var_8C
  loc_9FA7A1:  = Me.EditMode
  loc_9FA7A6: ILdRf var_90
  loc_9FA7A9: FStR4 var_88
  loc_9FA7AC: FFree1Ad var_8C
  loc_9FA7AF: ExitProcCbHresult
End Sub

Public Property Get PeriBole() 'A495D8
  'Data Table: 477A54
  loc_A4958C: FLdRfVar var_B4
  loc_A4958F: FLdRfVar var_A4
  loc_A49592: LitVarStr var_A0, "PeriBole"
  loc_A49597: PopAdLdVar
  loc_A49598: FLdRfVar var_90
  loc_A4959B: FLdRfVar var_8C
  loc_A4959E: FLdPr Me
  loc_A495A1: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A495A6: FLdPr var_8C
  loc_A495A9:  = Me.Fields
  loc_A495AE: FLdPr var_90
  loc_A495B1: from_stack_2 = Me.Item(from_stack_1)
  loc_A495B6: FLdPr var_A4
  loc_A495B9:  = Me.Value
  loc_A495BE: FLdRfVar var_B4
  loc_A495C1: CI2Var
  loc_A495C2: FStI2 var_86
  loc_A495C5: FFreeAd var_8C = "": var_90 = ""
  loc_A495CE: FFree1Var var_B4 = ""
  loc_A495D1: ExitProcCbHresult
End Sub

Public Property Let PeriBole(vDato) '9EE8A8
  'Data Table: 477A54
  loc_9EE884: FLdI2 vDato
  loc_9EE887: CVarI2 var_A8
  loc_9EE88A: PopAdLdVar
  loc_9EE88B: LitVarStr var_98, "PeriBole"
  loc_9EE890: PopAdLdVar
  loc_9EE891: FLdRfVar var_88
  loc_9EE894: FLdPr Me
  loc_9EE897: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9EE89C: FLdPr var_88
  loc_9EE89F: Me.Collect = from_stack_1
  loc_9EE8A4: FFree1Ad var_88
  loc_9EE8A7: ExitProcHresult
End Sub

Public Property Get NumeBole() 'A45550
  'Data Table: 477A54
  loc_A45504: FLdRfVar var_B4
  loc_A45507: FLdRfVar var_A4
  loc_A4550A: LitVarStr var_A0, "NumeBole"
  loc_A4550F: PopAdLdVar
  loc_A45510: FLdRfVar var_90
  loc_A45513: FLdRfVar var_8C
  loc_A45516: FLdPr Me
  loc_A45519: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4551E: FLdPr var_8C
  loc_A45521:  = Me.Fields
  loc_A45526: FLdPr var_90
  loc_A45529: from_stack_2 = Me.Item(from_stack_1)
  loc_A4552E: FLdPr var_A4
  loc_A45531:  = Me.Value
  loc_A45536: FLdRfVar var_B4
  loc_A45539: CI4Var
  loc_A4553B: FStR4 var_88
  loc_A4553E: FFreeAd var_8C = "": var_90 = ""
  loc_A45547: FFree1Var var_B4 = ""
  loc_A4554A: ExitProcCbHresult
End Sub

Public Property Let NumeBole(vDato) '9F528C
  'Data Table: 477A54
  loc_9F5264: ILdRf vDato
  loc_9F5267: CVarI4
  loc_9F526B: PopAdLdVar
  loc_9F526C: LitVarStr var_98, "NumeBole"
  loc_9F5271: PopAdLdVar
  loc_9F5272: FLdRfVar var_88
  loc_9F5275: FLdPr Me
  loc_9F5278: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9F527D: FLdPr var_88
  loc_9F5280: Me.Collect = from_stack_1
  loc_9F5285: FFree1Ad var_88
  loc_9F5288: ExitProcHresult
End Sub

Public Property Get PeriCtct() 'A488B8
  'Data Table: 477A54
  loc_A4886C: FLdRfVar var_B4
  loc_A4886F: FLdRfVar var_A4
  loc_A48872: LitVarStr var_A0, "PeriCtct"
  loc_A48877: PopAdLdVar
  loc_A48878: FLdRfVar var_90
  loc_A4887B: FLdRfVar var_8C
  loc_A4887E: FLdPr Me
  loc_A48881: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A48886: FLdPr var_8C
  loc_A48889:  = Me.Fields
  loc_A4888E: FLdPr var_90
  loc_A48891: from_stack_2 = Me.Item(from_stack_1)
  loc_A48896: FLdPr var_A4
  loc_A48899:  = Me.Value
  loc_A4889E: FLdRfVar var_B4
  loc_A488A1: CI4Var
  loc_A488A3: FStR4 var_88
  loc_A488A6: FFreeAd var_8C = "": var_90 = ""
  loc_A488AF: FFree1Var var_B4 = ""
  loc_A488B2: ExitProcCbHresult
End Sub

Public Property Let PeriCtct(vDato) '9F836C
  'Data Table: 477A54
  loc_9F8344: ILdRf vDato
  loc_9F8347: CVarI4
  loc_9F834B: PopAdLdVar
  loc_9F834C: LitVarStr var_98, "PeriCtct"
  loc_9F8351: PopAdLdVar
  loc_9F8352: FLdRfVar var_88
  loc_9F8355: FLdPr Me
  loc_9F8358: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9F835D: FLdPr var_88
  loc_9F8360: Me.Collect = from_stack_1
  loc_9F8365: FFree1Ad var_88
  loc_9F8368: ExitProcHresult
End Sub

Public Property Get BimeCtct() 'A489D0
  'Data Table: 477A54
  loc_A48984: FLdRfVar var_B4
  loc_A48987: FLdRfVar var_A4
  loc_A4898A: LitVarStr var_A0, "BimeCtct"
  loc_A4898F: PopAdLdVar
  loc_A48990: FLdRfVar var_90
  loc_A48993: FLdRfVar var_8C
  loc_A48996: FLdPr Me
  loc_A48999: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4899E: FLdPr var_8C
  loc_A489A1:  = Me.Fields
  loc_A489A6: FLdPr var_90
  loc_A489A9: from_stack_2 = Me.Item(from_stack_1)
  loc_A489AE: FLdPr var_A4
  loc_A489B1:  = Me.Value
  loc_A489B6: FLdRfVar var_B4
  loc_A489B9: CI2Var
  loc_A489BA: FStI2 var_86
  loc_A489BD: FFreeAd var_8C = "": var_90 = ""
  loc_A489C6: FFree1Var var_B4 = ""
  loc_A489C9: ExitProcCbHresult
  loc_A489CF: EqI4
End Sub

Public Property Let BimeCtct(vDato) '9EE6F0
  'Data Table: 477A54
  loc_9EE6CC: FLdI2 vDato
  loc_9EE6CF: CVarI2 var_A8
  loc_9EE6D2: PopAdLdVar
  loc_9EE6D3: LitVarStr var_98, "BimeCtct"
  loc_9EE6D8: PopAdLdVar
  loc_9EE6D9: FLdRfVar var_88
  loc_9EE6DC: FLdPr Me
  loc_9EE6DF: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9EE6E4: FLdPr var_88
  loc_9EE6E7: Me.Collect = from_stack_1
  loc_9EE6EC: FFree1Ad var_88
  loc_9EE6EF: ExitProcHresult
End Sub

Public Property Get NumeCtct() 'A483CC
  'Data Table: 477A54
  loc_A48380: FLdRfVar var_B4
  loc_A48383: FLdRfVar var_A4
  loc_A48386: LitVarStr var_A0, "NumeCtct"
  loc_A4838B: PopAdLdVar
  loc_A4838C: FLdRfVar var_90
  loc_A4838F: FLdRfVar var_8C
  loc_A48392: FLdPr Me
  loc_A48395: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4839A: FLdPr var_8C
  loc_A4839D:  = Me.Fields
  loc_A483A2: FLdPr var_90
  loc_A483A5: from_stack_2 = Me.Item(from_stack_1)
  loc_A483AA: FLdPr var_A4
  loc_A483AD:  = Me.Value
  loc_A483B2: FLdRfVar var_B4
  loc_A483B5: CI4Var
  loc_A483B7: FStR4 var_88
  loc_A483BA: FFreeAd var_8C = "": var_90 = ""
  loc_A483C3: FFree1Var var_B4 = ""
  loc_A483C6: ExitProcCbHresult
End Sub

Public Property Get MoviCtct() 'A477C4
  'Data Table: 477A54
  loc_A47778: FLdRfVar var_B4
  loc_A4777B: FLdRfVar var_A4
  loc_A4777E: LitVarStr var_A0, "MoviCtct"
  loc_A47783: PopAdLdVar
  loc_A47784: FLdRfVar var_90
  loc_A47787: FLdRfVar var_8C
  loc_A4778A: FLdPr Me
  loc_A4778D: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A47792: FLdPr var_8C
  loc_A47795:  = Me.Fields
  loc_A4779A: FLdPr var_90
  loc_A4779D: from_stack_2 = Me.Item(from_stack_1)
  loc_A477A2: FLdPr var_A4
  loc_A477A5:  = Me.Value
  loc_A477AA: FLdRfVar var_B4
  loc_A477AD: CI2Var
  loc_A477AE: FStI2 var_86
  loc_A477B1: FFreeAd var_8C = "": var_90 = ""
  loc_A477BA: FFree1Var var_B4 = ""
  loc_A477BD: ExitProcCbHresult
End Sub

Public Property Get MoviDebo() 'A4701C
  'Data Table: 477A54
  loc_A46FD0: FLdRfVar var_B4
  loc_A46FD3: FLdRfVar var_A4
  loc_A46FD6: LitVarStr var_A0, "MoviDebo"
  loc_A46FDB: PopAdLdVar
  loc_A46FDC: FLdRfVar var_90
  loc_A46FDF: FLdRfVar var_8C
  loc_A46FE2: FLdPr Me
  loc_A46FE5: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A46FEA: FLdPr var_8C
  loc_A46FED:  = Me.Fields
  loc_A46FF2: FLdPr var_90
  loc_A46FF5: from_stack_2 = Me.Item(from_stack_1)
  loc_A46FFA: FLdPr var_A4
  loc_A46FFD:  = Me.Value
  loc_A47002: FLdRfVar var_B4
  loc_A47005: CI2Var
  loc_A47006: FStI2 var_86
  loc_A47009: FFreeAd var_8C = "": var_90 = ""
  loc_A47012: FFree1Var var_B4 = ""
  loc_A47015: ExitProcCbHresult
End Sub

Public Property Get CodiTili() 'A52450
  'Data Table: 477A54
  loc_A52400: FLdRfVar var_B4
  loc_A52403: FLdRfVar var_A4
  loc_A52406: LitVarStr var_A0, "CodiTili"
  loc_A5240B: PopAdLdVar
  loc_A5240C: FLdRfVar var_90
  loc_A5240F: FLdRfVar var_8C
  loc_A52412: FLdPr Me
  loc_A52415: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A5241A: FLdPr var_8C
  loc_A5241D:  = Me.Fields
  loc_A52422: FLdPr var_90
  loc_A52425: from_stack_2 = Me.Item(from_stack_1)
  loc_A5242A: FLdPr var_A4
  loc_A5242D:  = Me.Value
  loc_A52432: FLdRfVar var_B4
  loc_A52435: CUI1Var
  loc_A52437: FStUI1 var_86
  loc_A5243B: FFreeAd var_8C = "": var_90 = ""
  loc_A52444: FFree1Var var_B4 = ""
  loc_A52447: ExitProcCbHresult
  loc_A5244D: ILdR8 arg_771
End Sub

Public Property Get NumeLiqu() 'A453AC
  'Data Table: 477A54
  loc_A45360: FLdRfVar var_B4
  loc_A45363: FLdRfVar var_A4
  loc_A45366: LitVarStr var_A0, "NumeLiqu"
  loc_A4536B: PopAdLdVar
  loc_A4536C: FLdRfVar var_90
  loc_A4536F: FLdRfVar var_8C
  loc_A45372: FLdPr Me
  loc_A45375: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4537A: FLdPr var_8C
  loc_A4537D:  = Me.Fields
  loc_A45382: FLdPr var_90
  loc_A45385: from_stack_2 = Me.Item(from_stack_1)
  loc_A4538A: FLdPr var_A4
  loc_A4538D:  = Me.Value
  loc_A45392: FLdRfVar var_B4
  loc_A45395: CI2Var
  loc_A45396: FStI2 var_86
  loc_A45399: FFreeAd var_8C = "": var_90 = ""
  loc_A453A2: FFree1Var var_B4 = ""
  loc_A453A5: ExitProcCbHresult
End Sub

Public Property Get CodiOfic(arg_C) 'A51B50
  'Data Table: 477A54
  loc_A51B00: FLdRfVar var_B4
  loc_A51B03: FLdRfVar var_A4
  loc_A51B06: LitVarStr var_A0, "CodiOfic"
  loc_A51B0B: PopAdLdVar
  loc_A51B0C: FLdRfVar var_90
  loc_A51B0F: FLdRfVar var_8C
  loc_A51B12: FLdPr Me
  loc_A51B15: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A51B1A: FLdPr var_8C
  loc_A51B1D:  = Me.Fields
  loc_A51B22: FLdPr var_90
  loc_A51B25: from_stack_2 = Me.Item(from_stack_1)
  loc_A51B2A: FLdPr var_A4
  loc_A51B2D:  = Me.Value
  loc_A51B32: FLdRfVar var_B4
  loc_A51B35: CUI1Var
  loc_A51B37: FStUI1 var_86
  loc_A51B3B: FFreeAd var_8C = "": var_90 = ""
  loc_A51B44: FFree1Var var_B4 = ""
  loc_A51B47: ExitProcCbHresult
  loc_A51B4D: FFree1Str arg_C
End Sub

Public Property Let CodiOfic(vDato) '9FAB50
  'Data Table: 477A54
  loc_9FAB28: FLdUI1
  loc_9FAB2C: CVarUI1
  loc_9FAB30: PopAdLdVar
  loc_9FAB31: LitVarStr var_98, "CodiOfic"
  loc_9FAB36: PopAdLdVar
  loc_9FAB37: FLdRfVar var_88
  loc_9FAB3A: FLdPr Me
  loc_9FAB3D: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9FAB42: FLdPr var_88
  loc_9FAB45: Me.Collect = from_stack_1
  loc_9FAB4A: FFree1Ad var_88
  loc_9FAB4D: ExitProcHresult
  loc_9FAB4E: ImpAdLdFPR4 MemVar_46F588
End Sub

Public Property Get CuenCtct() 'A5698C
  'Data Table: 477A54
  loc_A5693C: ZeroRetVal
  loc_A5693E: FLdRfVar var_B4
  loc_A56941: FLdRfVar var_A4
  loc_A56944: LitVarStr var_A0, "CuenCtct"
  loc_A56949: PopAdLdVar
  loc_A5694A: FLdRfVar var_90
  loc_A5694D: FLdRfVar var_8C
  loc_A56950: FLdPr Me
  loc_A56953: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A56958: FLdPr var_8C
  loc_A5695B:  = Me.Fields
  loc_A56960: FLdPr var_90
  loc_A56963: from_stack_2 = Me.Item(from_stack_1)
  loc_A56968: FLdPr var_A4
  loc_A5696B:  = Me.Value
  loc_A56970: FLdRfVar var_B4
  loc_A56973: CStrVarTmp
  loc_A56974: FStStr var_88
  loc_A56977: FFreeAd var_8C = "": var_90 = ""
  loc_A56980: FFree1Var var_B4 = ""
  loc_A56983: ExitProcCbHresult
End Sub

Public Property Let CuenCtct(vDato) '9FEB30
  'Data Table: 477A54
  loc_9FEB04: ILdRf vDato
  loc_9FEB07: FStStrCopy var_88
  loc_9FEB0A: ILdRf var_88
  loc_9FEB0D: CVarStr var_AC
  loc_9FEB10: PopAdLdVar
  loc_9FEB11: LitVarStr var_9C, "CuenCtct"
  loc_9FEB16: PopAdLdVar
  loc_9FEB17: FLdRfVar var_8C
  loc_9FEB1A: FLdPr Me
  loc_9FEB1D: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9FEB22: FLdPr var_8C
  loc_9FEB25: Me.Collect = from_stack_1
  loc_9FEB2A: FFree1Ad var_8C
  loc_9FEB2D: ExitProcHresult
End Sub

Public Property Get TipoCtct() 'A56B48
  'Data Table: 477A54
  loc_A56AF8: ZeroRetVal
  loc_A56AFA: FLdRfVar var_B4
  loc_A56AFD: FLdRfVar var_A4
  loc_A56B00: LitVarStr var_A0, "TipoCtct"
  loc_A56B05: PopAdLdVar
  loc_A56B06: FLdRfVar var_90
  loc_A56B09: FLdRfVar var_8C
  loc_A56B0C: FLdPr Me
  loc_A56B0F: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A56B14: FLdPr var_8C
  loc_A56B17:  = Me.Fields
  loc_A56B1C: FLdPr var_90
  loc_A56B1F: from_stack_2 = Me.Item(from_stack_1)
  loc_A56B24: FLdPr var_A4
  loc_A56B27:  = Me.Value
  loc_A56B2C: FLdRfVar var_B4
  loc_A56B2F: CStrVarTmp
  loc_A56B30: FStStr var_88
  loc_A56B33: FFreeAd var_8C = "": var_90 = ""
  loc_A56B3C: FFree1Var var_B4 = ""
  loc_A56B3F: ExitProcCbHresult
  loc_A56B45: StAryMove
End Sub

Public Property Let TipoCtct(vDato) '9FEA68
  'Data Table: 477A54
  loc_9FEA3C: ILdRf vDato
  loc_9FEA3F: FStStrCopy var_88
  loc_9FEA42: ILdRf var_88
  loc_9FEA45: CVarStr var_AC
  loc_9FEA48: PopAdLdVar
  loc_9FEA49: LitVarStr var_9C, "TipoCtct"
  loc_9FEA4E: PopAdLdVar
  loc_9FEA4F: FLdRfVar var_8C
  loc_9FEA52: FLdPr Me
  loc_9FEA55: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9FEA5A: FLdPr var_8C
  loc_9FEA5D: Me.Collect = from_stack_1
  loc_9FEA62: FFree1Ad var_8C
  loc_9FEA65: ExitProcHresult
  loc_9FEA66: ConcatStr
End Sub

Public Property Get CodiFapa() 'A442B8
  'Data Table: 477A54
  loc_A4426C: FLdRfVar var_B4
  loc_A4426F: FLdRfVar var_A4
  loc_A44272: LitVarStr var_A0, "CodiFapa"
  loc_A44277: PopAdLdVar
  loc_A44278: FLdRfVar var_90
  loc_A4427B: FLdRfVar var_8C
  loc_A4427E: FLdPr Me
  loc_A44281: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A44286: FLdPr var_8C
  loc_A44289:  = Me.Fields
  loc_A4428E: FLdPr var_90
  loc_A44291: from_stack_2 = Me.Item(from_stack_1)
  loc_A44296: FLdPr var_A4
  loc_A44299:  = Me.Value
  loc_A4429E: FLdRfVar var_B4
  loc_A442A1: CI4Var
  loc_A442A3: FStR4 var_88
  loc_A442A6: FFreeAd var_8C = "": var_90 = ""
  loc_A442AF: FFree1Var var_B4 = ""
  loc_A442B2: ExitProcCbHresult
End Sub

Public Property Let CodiFapa(vDato) '9F8CC4
  'Data Table: 477A54
  loc_9F8C9C: ILdRf vDato
  loc_9F8C9F: CVarI4
  loc_9F8CA3: PopAdLdVar
  loc_9F8CA4: LitVarStr var_98, "CodiFapa"
  loc_9F8CA9: PopAdLdVar
  loc_9F8CAA: FLdRfVar var_88
  loc_9F8CAD: FLdPr Me
  loc_9F8CB0: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9F8CB5: FLdPr var_88
  loc_9F8CB8: Me.Collect = from_stack_1
  loc_9F8CBD: FFree1Ad var_88
  loc_9F8CC0: ExitProcHresult
End Sub

Public Property Get CuotDefa() 'A441A0
  'Data Table: 477A54
  loc_A44154: FLdRfVar var_B4
  loc_A44157: FLdRfVar var_A4
  loc_A4415A: LitVarStr var_A0, "CuotDefa"
  loc_A4415F: PopAdLdVar
  loc_A44160: FLdRfVar var_90
  loc_A44163: FLdRfVar var_8C
  loc_A44166: FLdPr Me
  loc_A44169: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4416E: FLdPr var_8C
  loc_A44171:  = Me.Fields
  loc_A44176: FLdPr var_90
  loc_A44179: from_stack_2 = Me.Item(from_stack_1)
  loc_A4417E: FLdPr var_A4
  loc_A44181:  = Me.Value
  loc_A44186: FLdRfVar var_B4
  loc_A44189: CI2Var
  loc_A4418A: FStI2 var_86
  loc_A4418D: FFreeAd var_8C = "": var_90 = ""
  loc_A44196: FFree1Var var_B4 = ""
  loc_A44199: ExitProcCbHresult
End Sub

Public Property Let CuotDefa(vDato) '9EE590
  'Data Table: 477A54
  loc_9EE56C: FLdI2 vDato
  loc_9EE56F: CVarI2 var_A8
  loc_9EE572: PopAdLdVar
  loc_9EE573: LitVarStr var_98, "CuotDefa"
  loc_9EE578: PopAdLdVar
  loc_9EE579: FLdRfVar var_88
  loc_9EE57C: FLdPr Me
  loc_9EE57F: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9EE584: FLdPr var_88
  loc_9EE587: Me.Collect = from_stack_1
  loc_9EE58C: FFree1Ad var_88
  loc_9EE58F: ExitProcHresult
End Sub

Public Property Get NumeApre() 'A447A4
  'Data Table: 477A54
  loc_A44758: FLdRfVar var_B4
  loc_A4475B: FLdRfVar var_A4
  loc_A4475E: LitVarStr var_A0, "NumeApre"
  loc_A44763: PopAdLdVar
  loc_A44764: FLdRfVar var_90
  loc_A44767: FLdRfVar var_8C
  loc_A4476A: FLdPr Me
  loc_A4476D: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A44772: FLdPr var_8C
  loc_A44775:  = Me.Fields
  loc_A4477A: FLdPr var_90
  loc_A4477D: from_stack_2 = Me.Item(from_stack_1)
  loc_A44782: FLdPr var_A4
  loc_A44785:  = Me.Value
  loc_A4478A: FLdRfVar var_B4
  loc_A4478D: CI4Var
  loc_A4478F: FStR4 var_88
  loc_A44792: FFreeAd var_8C = "": var_90 = ""
  loc_A4479B: FFree1Var var_B4 = ""
  loc_A4479E: ExitProcCbHresult
End Sub

Public Property Let NumeApre(vDato) '9FAFA0
  'Data Table: 477A54
  loc_9FAF78: ILdRf vDato
  loc_9FAF7B: CVarI4
  loc_9FAF7F: PopAdLdVar
  loc_9FAF80: LitVarStr var_98, "NumeApre"
  loc_9FAF85: PopAdLdVar
  loc_9FAF86: FLdRfVar var_88
  loc_9FAF89: FLdPr Me
  loc_9FAF8C: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9FAF91: FLdPr var_88
  loc_9FAF94: Me.Collect = from_stack_1
  loc_9FAF99: FFree1Ad var_88
  loc_9FAF9C: ExitProcHresult
End Sub

Public Property Get CodiTimo() 'A44A60
  'Data Table: 477A54
  loc_A44A14: FLdRfVar var_B4
  loc_A44A17: FLdRfVar var_A4
  loc_A44A1A: LitVarStr var_A0, "CodiTimo"
  loc_A44A1F: PopAdLdVar
  loc_A44A20: FLdRfVar var_90
  loc_A44A23: FLdRfVar var_8C
  loc_A44A26: FLdPr Me
  loc_A44A29: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A44A2E: FLdPr var_8C
  loc_A44A31:  = Me.Fields
  loc_A44A36: FLdPr var_90
  loc_A44A39: from_stack_2 = Me.Item(from_stack_1)
  loc_A44A3E: FLdPr var_A4
  loc_A44A41:  = Me.Value
  loc_A44A46: FLdRfVar var_B4
  loc_A44A49: CI2Var
  loc_A44A4A: FStI2 var_86
  loc_A44A4D: FFreeAd var_8C = "": var_90 = ""
  loc_A44A56: FFree1Var var_B4 = ""
  loc_A44A59: ExitProcCbHresult
End Sub

Public Property Let CodiTimo(vDato) '9EE3D8
  'Data Table: 477A54
  loc_9EE3B4: FLdI2 vDato
  loc_9EE3B7: CVarI2 var_A8
  loc_9EE3BA: PopAdLdVar
  loc_9EE3BB: LitVarStr var_98, "CodiTimo"
  loc_9EE3C0: PopAdLdVar
  loc_9EE3C1: FLdRfVar var_88
  loc_9EE3C4: FLdPr Me
  loc_9EE3C7: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9EE3CC: FLdPr var_88
  loc_9EE3CF: Me.Collect = from_stack_1
  loc_9EE3D4: FFree1Ad var_88
  loc_9EE3D7: ExitProcHresult
End Sub

Public Property Get PeriInfo() 'A44AEC
  'Data Table: 477A54
  loc_A44AA0: FLdRfVar var_B4
  loc_A44AA3: FLdRfVar var_A4
  loc_A44AA6: LitVarStr var_A0, "PeriInfo"
  loc_A44AAB: PopAdLdVar
  loc_A44AAC: FLdRfVar var_90
  loc_A44AAF: FLdRfVar var_8C
  loc_A44AB2: FLdPr Me
  loc_A44AB5: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A44ABA: FLdPr var_8C
  loc_A44ABD:  = Me.Fields
  loc_A44AC2: FLdPr var_90
  loc_A44AC5: from_stack_2 = Me.Item(from_stack_1)
  loc_A44ACA: FLdPr var_A4
  loc_A44ACD:  = Me.Value
  loc_A44AD2: FLdRfVar var_B4
  loc_A44AD5: CI2Var
  loc_A44AD6: FStI2 var_86
  loc_A44AD9: FFreeAd var_8C = "": var_90 = ""
  loc_A44AE2: FFree1Var var_B4 = ""
  loc_A44AE5: ExitProcCbHresult
End Sub

Public Property Let PeriInfo(vDato) '9EE278
  'Data Table: 477A54
  loc_9EE254: FLdI2 vDato
  loc_9EE257: CVarI2 var_A8
  loc_9EE25A: PopAdLdVar
  loc_9EE25B: LitVarStr var_98, "PeriInfo"
  loc_9EE260: PopAdLdVar
  loc_9EE261: FLdRfVar var_88
  loc_9EE264: FLdPr Me
  loc_9EE267: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9EE26C: FLdPr var_88
  loc_9EE26F: Me.Collect = from_stack_1
  loc_9EE274: FFree1Ad var_88
  loc_9EE277: ExitProcHresult
End Sub

Public Property Get CodiConc() 'A57C0C
  'Data Table: 477A54
  loc_A57BBC: ZeroRetVal
  loc_A57BBE: FLdRfVar var_B4
  loc_A57BC1: FLdRfVar var_A4
  loc_A57BC4: LitVarStr var_A0, "CodiConc"
  loc_A57BC9: PopAdLdVar
  loc_A57BCA: FLdRfVar var_90
  loc_A57BCD: FLdRfVar var_8C
  loc_A57BD0: FLdPr Me
  loc_A57BD3: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A57BD8: FLdPr var_8C
  loc_A57BDB:  = Me.Fields
  loc_A57BE0: FLdPr var_90
  loc_A57BE3: from_stack_2 = Me.Item(from_stack_1)
  loc_A57BE8: FLdPr var_A4
  loc_A57BEB:  = Me.Value
  loc_A57BF0: FLdRfVar var_B4
  loc_A57BF3: CStrVarTmp
  loc_A57BF4: FStStr var_88
  loc_A57BF7: FFreeAd var_8C = "": var_90 = ""
  loc_A57C00: FFree1Var var_B4 = ""
  loc_A57C03: ExitProcCbHresult
  loc_A57C09: PopTmpLdAd8 arg_6C04
End Sub

Public Property Let CodiConc(vDato) '9FE6E4
  'Data Table: 477A54
  loc_9FE6B8: ILdRf vDato
  loc_9FE6BB: FStStrCopy var_88
  loc_9FE6BE: ILdRf var_88
  loc_9FE6C1: CVarStr var_AC
  loc_9FE6C4: PopAdLdVar
  loc_9FE6C5: LitVarStr var_9C, "CodiConc"
  loc_9FE6CA: PopAdLdVar
  loc_9FE6CB: FLdRfVar var_8C
  loc_9FE6CE: FLdPr Me
  loc_9FE6D1: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9FE6D6: FLdPr var_8C
  loc_9FE6D9: Me.Collect = from_stack_1
  loc_9FE6DE: FFree1Ad var_8C
  loc_9FE6E1: ExitProcHresult
  loc_9FE6E2: BranchF loc_A0C31E
End Sub

Public Property Get CapiDebo() 'A45294
  'Data Table: 477A54
  loc_A45248: FLdRfVar var_B8
  loc_A4524B: FLdRfVar var_A8
  loc_A4524E: LitVarStr var_A4, "CapiDebo"
  loc_A45253: PopAdLdVar
  loc_A45254: FLdRfVar CapiDebo
  loc_A45257: FLdRfVar var_90
  loc_A4525A: FLdPr Me
  loc_A4525D: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A45262: FLdPr var_90
  loc_A45265:  = Me.Fields
  loc_A4526A: FLdPr CapiDebo
  loc_A4526D: from_stack_2 = Me.Item(from_stack_1)
  loc_A45272: FLdPr var_A8
  loc_A45275:  = Me.Value
  loc_A4527A: FLdRfVar var_B8
  loc_A4527D: CR4Var
  loc_A4527E: FStFPR8 var_8C
  loc_A45281: FFreeAd var_90 = "": CapiDebo = ""
  loc_A4528A: FFree1Var var_B8 = ""
  loc_A4528D: ExitProcCbHresult
End Sub

Public Property Let CapiDebo(vDato) '9F9678
  'Data Table: 477A54
  loc_9F9650: FLdFPR8 vDato
  loc_9F9653: CVarR8
  loc_9F9657: PopAdLdVar
  loc_9F9658: LitVarStr var_98, "CapiDebo"
  loc_9F965D: PopAdLdVar
  loc_9F965E: FLdRfVar var_88
  loc_9F9661: FLdPr Me
  loc_9F9664: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9F9669: FLdPr var_88
  loc_9F966C: Me.Collect = from_stack_1
  loc_9F9671: FFree1Ad var_88
  loc_9F9674: ExitProcHresult
End Sub

Public Property Get DecaDebo() 'A45A3C
  'Data Table: 477A54
  loc_A459F0: FLdRfVar var_B8
  loc_A459F3: FLdRfVar var_A8
  loc_A459F6: LitVarStr var_A4, "DecaDebo"
  loc_A459FB: PopAdLdVar
  loc_A459FC: FLdRfVar DecaDebo
  loc_A459FF: FLdRfVar var_90
  loc_A45A02: FLdPr Me
  loc_A45A05: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A45A0A: FLdPr var_90
  loc_A45A0D:  = Me.Fields
  loc_A45A12: FLdPr DecaDebo
  loc_A45A15: from_stack_2 = Me.Item(from_stack_1)
  loc_A45A1A: FLdPr var_A8
  loc_A45A1D:  = Me.Value
  loc_A45A22: FLdRfVar var_B8
  loc_A45A25: CR4Var
  loc_A45A26: FStFPR8 var_8C
  loc_A45A29: FFreeAd var_90 = "": DecaDebo = ""
  loc_A45A32: FFree1Var var_B8 = ""
  loc_A45A35: ExitProcCbHresult
End Sub

Public Property Let DecaDebo(vDato) '9F9A10
  'Data Table: 477A54
  loc_9F99E8: FLdFPR8 vDato
  loc_9F99EB: CVarR8
  loc_9F99EF: PopAdLdVar
  loc_9F99F0: LitVarStr var_98, "DecaDebo"
  loc_9F99F5: PopAdLdVar
  loc_9F99F6: FLdRfVar var_88
  loc_9F99F9: FLdPr Me
  loc_9F99FC: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9F9A01: FLdPr var_88
  loc_9F9A04: Me.Collect = from_stack_1
  loc_9F9A09: FFree1Ad var_88
  loc_9F9A0C: ExitProcHresult
End Sub

Public Property Get RecaDebo() 'A45898
  'Data Table: 477A54
  loc_A4584C: FLdRfVar var_B8
  loc_A4584F: FLdRfVar var_A8
  loc_A45852: LitVarStr var_A4, "RecaDebo"
  loc_A45857: PopAdLdVar
  loc_A45858: FLdRfVar RecaDebo
  loc_A4585B: FLdRfVar var_90
  loc_A4585E: FLdPr Me
  loc_A45861: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A45866: FLdPr var_90
  loc_A45869:  = Me.Fields
  loc_A4586E: FLdPr RecaDebo
  loc_A45871: from_stack_2 = Me.Item(from_stack_1)
  loc_A45876: FLdPr var_A8
  loc_A45879:  = Me.Value
  loc_A4587E: FLdRfVar var_B8
  loc_A45881: CR4Var
  loc_A45882: FStFPR8 var_8C
  loc_A45885: FFreeAd var_90 = "": RecaDebo = ""
  loc_A4588E: FFree1Var var_B8 = ""
  loc_A45891: ExitProcCbHresult
End Sub

Public Property Let RecaDebo(vDato) '9FB44C
  'Data Table: 477A54
  loc_9FB424: FLdFPR8 vDato
  loc_9FB427: CVarR8
  loc_9FB42B: PopAdLdVar
  loc_9FB42C: LitVarStr var_98, "RecaDebo"
  loc_9FB431: PopAdLdVar
  loc_9FB432: FLdRfVar var_88
  loc_9FB435: FLdPr Me
  loc_9FB438: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9FB43D: FLdPr var_88
  loc_9FB440: Me.Collect = from_stack_1
  loc_9FB445: FFree1Ad var_88
  loc_9FB448: ExitProcHresult
End Sub

Public Property Get DereDebo() 'A44EC0
  'Data Table: 477A54
  loc_A44E74: FLdRfVar var_B8
  loc_A44E77: FLdRfVar var_A8
  loc_A44E7A: LitVarStr var_A4, "DereDebo"
  loc_A44E7F: PopAdLdVar
  loc_A44E80: FLdRfVar DereDebo
  loc_A44E83: FLdRfVar var_90
  loc_A44E86: FLdPr Me
  loc_A44E89: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A44E8E: FLdPr var_90
  loc_A44E91:  = Me.Fields
  loc_A44E96: FLdPr DereDebo
  loc_A44E99: from_stack_2 = Me.Item(from_stack_1)
  loc_A44E9E: FLdPr var_A8
  loc_A44EA1:  = Me.Value
  loc_A44EA6: FLdRfVar var_B8
  loc_A44EA9: CR4Var
  loc_A44EAA: FStFPR8 var_8C
  loc_A44EAD: FFreeAd var_90 = "": DereDebo = ""
  loc_A44EB6: FFree1Var var_B8 = ""
  loc_A44EB9: ExitProcCbHresult
End Sub

Public Property Let DereDebo(vDato) '9F9C94
  'Data Table: 477A54
  loc_9F9C6C: FLdFPR8 vDato
  loc_9F9C6F: CVarR8
  loc_9F9C73: PopAdLdVar
  loc_9F9C74: LitVarStr var_98, "DereDebo"
  loc_9F9C79: PopAdLdVar
  loc_9F9C7A: FLdRfVar var_88
  loc_9F9C7D: FLdPr Me
  loc_9F9C80: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9F9C85: FLdPr var_88
  loc_9F9C88: Me.Collect = from_stack_1
  loc_9F9C8D: FFree1Ad var_88
  loc_9F9C90: ExitProcHresult
End Sub

Public Property Get InteDebo() 'A47B0C
  'Data Table: 477A54
  loc_A47AC0: FLdRfVar var_B8
  loc_A47AC3: FLdRfVar var_A8
  loc_A47AC6: LitVarStr var_A4, "InteDebo"
  loc_A47ACB: PopAdLdVar
  loc_A47ACC: FLdRfVar InteDebo
  loc_A47ACF: FLdRfVar var_90
  loc_A47AD2: FLdPr Me
  loc_A47AD5: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A47ADA: FLdPr var_90
  loc_A47ADD:  = Me.Fields
  loc_A47AE2: FLdPr InteDebo
  loc_A47AE5: from_stack_2 = Me.Item(from_stack_1)
  loc_A47AEA: FLdPr var_A8
  loc_A47AED:  = Me.Value
  loc_A47AF2: FLdRfVar var_B8
  loc_A47AF5: CR4Var
  loc_A47AF6: FStFPR8 var_8C
  loc_A47AF9: FFreeAd var_90 = "": InteDebo = ""
  loc_A47B02: FFree1Var var_B8 = ""
  loc_A47B05: ExitProcCbHresult
End Sub

Public Property Let InteDebo(vDato) '9F9F74
  'Data Table: 477A54
  loc_9F9F4C: FLdFPR8 vDato
  loc_9F9F4F: CVarR8
  loc_9F9F53: PopAdLdVar
  loc_9F9F54: LitVarStr var_98, "InteDebo"
  loc_9F9F59: PopAdLdVar
  loc_9F9F5A: FLdRfVar var_88
  loc_9F9F5D: FLdPr Me
  loc_9F9F60: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9F9F65: FLdPr var_88
  loc_9F9F68: Me.Collect = from_stack_1
  loc_9F9F6D: FFree1Ad var_88
  loc_9F9F70: ExitProcHresult
End Sub

Public Property Get ExenDebo() 'A4C10C
  'Data Table: 477A54
  loc_A4C0C0: FLdRfVar var_B8
  loc_A4C0C3: FLdRfVar var_A8
  loc_A4C0C6: LitVarStr var_A4, "ExenDebo"
  loc_A4C0CB: PopAdLdVar
  loc_A4C0CC: FLdRfVar ExenDebo
  loc_A4C0CF: FLdRfVar var_90
  loc_A4C0D2: FLdPr Me
  loc_A4C0D5: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4C0DA: FLdPr var_90
  loc_A4C0DD:  = Me.Fields
  loc_A4C0E2: FLdPr ExenDebo
  loc_A4C0E5: from_stack_2 = Me.Item(from_stack_1)
  loc_A4C0EA: FLdPr var_A8
  loc_A4C0ED:  = Me.Value
  loc_A4C0F2: FLdRfVar var_B8
  loc_A4C0F5: CR4Var
  loc_A4C0F6: FStFPR8 var_8C
  loc_A4C0F9: FFreeAd var_90 = "": ExenDebo = ""
  loc_A4C102: FFree1Var var_B8 = ""
  loc_A4C105: ExitProcCbHresult
End Sub

Public Property Get CrafDebo() 'A48D18
  'Data Table: 477A54
  loc_A48CCC: FLdRfVar var_B8
  loc_A48CCF: FLdRfVar var_A8
  loc_A48CD2: LitVarStr var_A4, "CrafDebo"
  loc_A48CD7: PopAdLdVar
  loc_A48CD8: FLdRfVar CrafDebo
  loc_A48CDB: FLdRfVar var_90
  loc_A48CDE: FLdPr Me
  loc_A48CE1: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A48CE6: FLdPr var_90
  loc_A48CE9:  = Me.Fields
  loc_A48CEE: FLdPr CrafDebo
  loc_A48CF1: from_stack_2 = Me.Item(from_stack_1)
  loc_A48CF6: FLdPr var_A8
  loc_A48CF9:  = Me.Value
  loc_A48CFE: FLdRfVar var_B8
  loc_A48D01: CR4Var
  loc_A48D02: FStFPR8 var_8C
  loc_A48D05: FFreeAd var_90 = "": CrafDebo = ""
  loc_A48D0E: FFree1Var var_B8 = ""
  loc_A48D11: ExitProcCbHresult
End Sub

Public Property Get ApreDebo() 'A48DA4
  'Data Table: 477A54
  loc_A48D58: FLdRfVar var_B8
  loc_A48D5B: FLdRfVar var_A8
  loc_A48D5E: LitVarStr var_A4, "ApreDebo"
  loc_A48D63: PopAdLdVar
  loc_A48D64: FLdRfVar ApreDebo
  loc_A48D67: FLdRfVar var_90
  loc_A48D6A: FLdPr Me
  loc_A48D6D: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A48D72: FLdPr var_90
  loc_A48D75:  = Me.Fields
  loc_A48D7A: FLdPr ApreDebo
  loc_A48D7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A48D82: FLdPr var_A8
  loc_A48D85:  = Me.Value
  loc_A48D8A: FLdRfVar var_B8
  loc_A48D8D: CR4Var
  loc_A48D8E: FStFPR8 var_8C
  loc_A48D91: FFreeAd var_90 = "": ApreDebo = ""
  loc_A48D9A: FFree1Var var_B8 = ""
  loc_A48D9D: ExitProcCbHresult
End Sub

Public Property Let ApreDebo(vDato) '9F9E60
  'Data Table: 477A54
  loc_9F9E38: FLdFPR8 vDato
  loc_9F9E3B: CVarR8
  loc_9F9E3F: PopAdLdVar
  loc_9F9E40: LitVarStr var_98, "ApreDebo"
  loc_9F9E45: PopAdLdVar
  loc_9F9E46: FLdRfVar var_88
  loc_9F9E49: FLdPr Me
  loc_9F9E4C: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9F9E51: FLdPr var_88
  loc_9F9E54: Me.Collect = from_stack_1
  loc_9F9E59: FFree1Ad var_88
  loc_9F9E5C: ExitProcHresult
End Sub

Public Property Get TotaDebo() 'A49290
  'Data Table: 477A54
  loc_A49244: FLdRfVar var_B8
  loc_A49247: FLdRfVar var_A8
  loc_A4924A: LitVarStr var_A4, "TotaDebo"
  loc_A4924F: PopAdLdVar
  loc_A49250: FLdRfVar TotaDebo
  loc_A49253: FLdRfVar var_90
  loc_A49256: FLdPr Me
  loc_A49259: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4925E: FLdPr var_90
  loc_A49261:  = Me.Fields
  loc_A49266: FLdPr TotaDebo
  loc_A49269: from_stack_2 = Me.Item(from_stack_1)
  loc_A4926E: FLdPr var_A8
  loc_A49271:  = Me.Value
  loc_A49276: FLdRfVar var_B8
  loc_A49279: CR4Var
  loc_A4927A: FStFPR8 var_8C
  loc_A4927D: FFreeAd var_90 = "": TotaDebo = ""
  loc_A49286: FFree1Var var_B8 = ""
  loc_A49289: ExitProcCbHresult
End Sub

Public Property Let TotaDebo(vDato) '9F9F18
  'Data Table: 477A54
  loc_9F9EF0: FLdFPR8 vDato
  loc_9F9EF3: CVarR8
  loc_9F9EF7: PopAdLdVar
  loc_9F9EF8: LitVarStr var_98, "TotaDebo"
  loc_9F9EFD: PopAdLdVar
  loc_9F9EFE: FLdRfVar var_88
  loc_9F9F01: FLdPr Me
  loc_9F9F04: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9F9F09: FLdPr var_88
  loc_9F9F0C: Me.Collect = from_stack_1
  loc_9F9F11: FFree1Ad var_88
  loc_9F9F14: ExitProcHresult
End Sub

Public Property Get PeriOrde() 'A4931C
  'Data Table: 477A54
  loc_A492D0: FLdRfVar var_B4
  loc_A492D3: FLdRfVar var_A4
  loc_A492D6: LitVarStr var_A0, "PeriOrde"
  loc_A492DB: PopAdLdVar
  loc_A492DC: FLdRfVar var_90
  loc_A492DF: FLdRfVar var_8C
  loc_A492E2: FLdPr Me
  loc_A492E5: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A492EA: FLdPr var_8C
  loc_A492ED:  = Me.Fields
  loc_A492F2: FLdPr var_90
  loc_A492F5: from_stack_2 = Me.Item(from_stack_1)
  loc_A492FA: FLdPr var_A4
  loc_A492FD:  = Me.Value
  loc_A49302: FLdRfVar var_B4
  loc_A49305: CI2Var
  loc_A49306: FStI2 var_86
  loc_A49309: FFreeAd var_8C = "": var_90 = ""
  loc_A49312: FFree1Var var_B4 = ""
  loc_A49315: ExitProcCbHresult
End Sub

Public Property Get CodiCtde() 'A55CD4
  'Data Table: 477A54
  loc_A55C84: ZeroRetVal
  loc_A55C86: FLdRfVar var_B4
  loc_A55C89: FLdRfVar var_A4
  loc_A55C8C: LitVarStr var_A0, "CodiCtde"
  loc_A55C91: PopAdLdVar
  loc_A55C92: FLdRfVar var_90
  loc_A55C95: FLdRfVar var_8C
  loc_A55C98: FLdPr Me
  loc_A55C9B: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A55CA0: FLdPr var_8C
  loc_A55CA3:  = Me.Fields
  loc_A55CA8: FLdPr var_90
  loc_A55CAB: from_stack_2 = Me.Item(from_stack_1)
  loc_A55CB0: FLdPr var_A4
  loc_A55CB3:  = Me.Value
  loc_A55CB8: FLdRfVar var_B4
  loc_A55CBB: CStrVarTmp
  loc_A55CBC: FStStr var_88
  loc_A55CBF: FFreeAd var_8C = "": var_90 = ""
  loc_A55CC8: FFree1Var var_B4 = ""
  loc_A55CCB: ExitProcCbHresult
  loc_A55CD1: ExitProcHresult
End Sub

Public Property Get NumeCtde() 'A493A8
  'Data Table: 477A54
  loc_A4935C: FLdRfVar var_B4
  loc_A4935F: FLdRfVar var_A4
  loc_A49362: LitVarStr var_A0, "NumeCtde"
  loc_A49367: PopAdLdVar
  loc_A49368: FLdRfVar var_90
  loc_A4936B: FLdRfVar var_8C
  loc_A4936E: FLdPr Me
  loc_A49371: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A49376: FLdPr var_8C
  loc_A49379:  = Me.Fields
  loc_A4937E: FLdPr var_90
  loc_A49381: from_stack_2 = Me.Item(from_stack_1)
  loc_A49386: FLdPr var_A4
  loc_A49389:  = Me.Value
  loc_A4938E: FLdRfVar var_B4
  loc_A49391: CI4Var
  loc_A49393: FStR4 var_88
  loc_A49396: FFreeAd var_8C = "": var_90 = ""
  loc_A4939F: FFree1Var var_B4 = ""
  loc_A493A2: ExitProcCbHresult
End Sub

Public Property Get MoviCtde() 'A49434
  'Data Table: 477A54
  loc_A493E8: FLdRfVar var_B4
  loc_A493EB: FLdRfVar var_A4
  loc_A493EE: LitVarStr var_A0, "MoviCtde"
  loc_A493F3: PopAdLdVar
  loc_A493F4: FLdRfVar var_90
  loc_A493F7: FLdRfVar var_8C
  loc_A493FA: FLdPr Me
  loc_A493FD: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A49402: FLdPr var_8C
  loc_A49405:  = Me.Fields
  loc_A4940A: FLdPr var_90
  loc_A4940D: from_stack_2 = Me.Item(from_stack_1)
  loc_A49412: FLdPr var_A4
  loc_A49415:  = Me.Value
  loc_A4941A: FLdRfVar var_B4
  loc_A4941D: CI2Var
  loc_A4941E: FStI2 var_86
  loc_A49421: FFreeAd var_8C = "": var_90 = ""
  loc_A4942A: FFree1Var var_B4 = ""
  loc_A4942D: ExitProcCbHresult
End Sub

Public Property Get ImpoBode() 'A494C0
  'Data Table: 477A54
  loc_A49474: FLdRfVar var_B8
  loc_A49477: FLdRfVar var_A8
  loc_A4947A: LitVarStr var_A4, "ImpoBode"
  loc_A4947F: PopAdLdVar
  loc_A49480: FLdRfVar ImpoBode
  loc_A49483: FLdRfVar var_90
  loc_A49486: FLdPr Me
  loc_A49489: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4948E: FLdPr var_90
  loc_A49491:  = Me.Fields
  loc_A49496: FLdPr ImpoBode
  loc_A49499: from_stack_2 = Me.Item(from_stack_1)
  loc_A4949E: FLdPr var_A8
  loc_A494A1:  = Me.Value
  loc_A494A6: FLdRfVar var_B8
  loc_A494A9: CR4Var
  loc_A494AA: FStFPR8 var_8C
  loc_A494AD: FFreeAd var_90 = "": ImpoBode = ""
  loc_A494B6: FFree1Var var_B8 = ""
  loc_A494B9: ExitProcCbHresult
End Sub

Public Property Get DecaBode() 'A49CF4
  'Data Table: 477A54
  loc_A49CA8: FLdRfVar var_B8
  loc_A49CAB: FLdRfVar var_A8
  loc_A49CAE: LitVarStr var_A4, "DecaBode"
  loc_A49CB3: PopAdLdVar
  loc_A49CB4: FLdRfVar DecaBode
  loc_A49CB7: FLdRfVar var_90
  loc_A49CBA: FLdPr Me
  loc_A49CBD: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A49CC2: FLdPr var_90
  loc_A49CC5:  = Me.Fields
  loc_A49CCA: FLdPr DecaBode
  loc_A49CCD: from_stack_2 = Me.Item(from_stack_1)
  loc_A49CD2: FLdPr var_A8
  loc_A49CD5:  = Me.Value
  loc_A49CDA: FLdRfVar var_B8
  loc_A49CDD: CR4Var
  loc_A49CDE: FStFPR8 var_8C
  loc_A49CE1: FFreeAd var_90 = "": DecaBode = ""
  loc_A49CEA: FFree1Var var_B8 = ""
  loc_A49CED: ExitProcCbHresult
End Sub

Public Property Get TotaBode() 'A49F24
  'Data Table: 477A54
  loc_A49ED8: FLdRfVar var_B8
  loc_A49EDB: FLdRfVar var_A8
  loc_A49EDE: LitVarStr var_A4, "TotaBode"
  loc_A49EE3: PopAdLdVar
  loc_A49EE4: FLdRfVar TotaBode
  loc_A49EE7: FLdRfVar var_90
  loc_A49EEA: FLdPr Me
  loc_A49EED: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A49EF2: FLdPr var_90
  loc_A49EF5:  = Me.Fields
  loc_A49EFA: FLdPr TotaBode
  loc_A49EFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A49F02: FLdPr var_A8
  loc_A49F05:  = Me.Value
  loc_A49F0A: FLdRfVar var_B8
  loc_A49F0D: CR4Var
  loc_A49F0E: FStFPR8 var_8C
  loc_A49F11: FFreeAd var_90 = "": TotaBode = ""
  loc_A49F1A: FFree1Var var_B8 = ""
  loc_A49F1D: ExitProcCbHresult
End Sub

Public Property Get TiafConc() 'A52A80
  'Data Table: 477A54
  loc_A52A30: FLdRfVar var_B4
  loc_A52A33: FLdRfVar var_A4
  loc_A52A36: LitVarStr var_A0, "TiafConc"
  loc_A52A3B: PopAdLdVar
  loc_A52A3C: FLdRfVar var_90
  loc_A52A3F: FLdRfVar var_8C
  loc_A52A42: FLdPr Me
  loc_A52A45: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A52A4A: FLdPr var_8C
  loc_A52A4D:  = Me.Fields
  loc_A52A52: FLdPr var_90
  loc_A52A55: from_stack_2 = Me.Item(from_stack_1)
  loc_A52A5A: FLdPr var_A4
  loc_A52A5D:  = Me.Value
  loc_A52A62: FLdRfVar var_B4
  loc_A52A65: CUI1Var
  loc_A52A67: FStUI1 var_86
  loc_A52A6B: FFreeAd var_8C = "": var_90 = ""
  loc_A52A74: FFree1Var var_B4 = ""
  loc_A52A77: ExitProcCbHresult
End Sub

Public Property Get TipaConc() 'A52B10
  'Data Table: 477A54
  loc_A52AC0: FLdRfVar var_B4
  loc_A52AC3: FLdRfVar var_A4
  loc_A52AC6: LitVarStr var_A0, "TipaConc"
  loc_A52ACB: PopAdLdVar
  loc_A52ACC: FLdRfVar var_90
  loc_A52ACF: FLdRfVar var_8C
  loc_A52AD2: FLdPr Me
  loc_A52AD5: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A52ADA: FLdPr var_8C
  loc_A52ADD:  = Me.Fields
  loc_A52AE2: FLdPr var_90
  loc_A52AE5: from_stack_2 = Me.Item(from_stack_1)
  loc_A52AEA: FLdPr var_A4
  loc_A52AED:  = Me.Value
  loc_A52AF2: FLdRfVar var_B4
  loc_A52AF5: CUI1Var
  loc_A52AF7: FStUI1 var_86
  loc_A52AFB: FFreeAd var_8C = "": var_90 = ""
  loc_A52B04: FFree1Var var_B4 = ""
  loc_A52B07: ExitProcCbHresult
End Sub

Public Property Get ExpeCtct() 'A5492C
  'Data Table: 477A54
  loc_A548DC: ZeroRetVal
  loc_A548DE: FLdRfVar var_B4
  loc_A548E1: FLdRfVar var_A4
  loc_A548E4: LitVarStr var_A0, "ExpeCtct"
  loc_A548E9: PopAdLdVar
  loc_A548EA: FLdRfVar var_90
  loc_A548ED: FLdRfVar var_8C
  loc_A548F0: FLdPr Me
  loc_A548F3: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A548F8: FLdPr var_8C
  loc_A548FB:  = Me.Fields
  loc_A54900: FLdPr var_90
  loc_A54903: from_stack_2 = Me.Item(from_stack_1)
  loc_A54908: FLdPr var_A4
  loc_A5490B:  = Me.Value
  loc_A54910: FLdRfVar var_B4
  loc_A54913: CStrVarTmp
  loc_A54914: FStStr var_88
  loc_A54917: FFreeAd var_8C = "": var_90 = ""
  loc_A54920: FFree1Var var_B4 = ""
  loc_A54923: ExitProcCbHresult
End Sub

Public Property Get Bimestres() 'A5673C
  'Data Table: 477A54
  loc_A566EC: ZeroRetVal
  loc_A566EE: FLdRfVar var_B4
  loc_A566F1: FLdRfVar var_A4
  loc_A566F4: LitVarStr var_A0, "Bimestres"
  loc_A566F9: PopAdLdVar
  loc_A566FA: FLdRfVar var_90
  loc_A566FD: FLdRfVar var_8C
  loc_A56700: FLdPr Me
  loc_A56703: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A56708: FLdPr var_8C
  loc_A5670B:  = Me.Fields
  loc_A56710: FLdPr var_90
  loc_A56713: from_stack_2 = Me.Item(from_stack_1)
  loc_A56718: FLdPr var_A4
  loc_A5671B:  = Me.Value
  loc_A56720: FLdRfVar var_B4
  loc_A56723: CStrVarTmp
  loc_A56724: FStStr var_88
  loc_A56727: FFreeAd var_8C = "": var_90 = ""
  loc_A56730: FFree1Var var_B4 = ""
  loc_A56733: ExitProcCbHresult
End Sub

Public Property Get DetaBode() 'A40AD0
  'Data Table: 477A54
  loc_A40A8C: ZeroRetValVar
  loc_A40A8E: FLdRfVar var_B0
  loc_A40A91: LitVarStr var_AC, "DetaBode"
  loc_A40A96: PopAdLdVar
  loc_A40A97: FLdRfVar var_9C
  loc_A40A9A: FLdRfVar var_98
  loc_A40A9D: FLdPr Me
  loc_A40AA0: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A40AA5: FLdPr var_98
  loc_A40AA8:  = Me.Fields
  loc_A40AAD: FLdPr var_9C
  loc_A40AB0: from_stack_2 = Me.Item(from_stack_1)
  loc_A40AB5: FLdZeroAd var_B0
  loc_A40AB8: CVarAd
  loc_A40ABC: FStVar DetaBode
  loc_A40AC0: FFreeAd var_98 = ""
  loc_A40AC7: ExitProcCbHresult
End Sub

Public Property Get DetaConc() 'A401C8
  'Data Table: 477A54
  loc_A40184: ZeroRetValVar
  loc_A40186: FLdRfVar var_B0
  loc_A40189: LitVarStr var_AC, "DetaConc"
  loc_A4018E: PopAdLdVar
  loc_A4018F: FLdRfVar var_9C
  loc_A40192: FLdRfVar var_98
  loc_A40195: FLdPr Me
  loc_A40198: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4019D: FLdPr var_98
  loc_A401A0:  = Me.Fields
  loc_A401A5: FLdPr var_9C
  loc_A401A8: from_stack_2 = Me.Item(from_stack_1)
  loc_A401AD: FLdZeroAd var_B0
  loc_A401B0: CVarAd
  loc_A401B4: FStVar DetaConc
  loc_A401B8: FFreeAd var_98 = ""
  loc_A401BF: ExitProcCbHresult
End Sub

Public Property Get DescDebo() 'A4B1BC
  'Data Table: 477A54
  loc_A4B170: FLdRfVar var_B8
  loc_A4B173: FLdRfVar var_A8
  loc_A4B176: LitVarStr var_A4, "DescDebo"
  loc_A4B17B: PopAdLdVar
  loc_A4B17C: FLdRfVar DescDebo
  loc_A4B17F: FLdRfVar var_90
  loc_A4B182: FLdPr Me
  loc_A4B185: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4B18A: FLdPr var_90
  loc_A4B18D:  = Me.Fields
  loc_A4B192: FLdPr DescDebo
  loc_A4B195: from_stack_2 = Me.Item(from_stack_1)
  loc_A4B19A: FLdPr var_A8
  loc_A4B19D:  = Me.Value
  loc_A4B1A2: FLdRfVar var_B8
  loc_A4B1A5: CR4Var
  loc_A4B1A6: FStFPR8 var_8C
  loc_A4B1A9: FFreeAd var_90 = "": DescDebo = ""
  loc_A4B1B2: FFree1Var var_B8 = ""
  loc_A4B1B5: ExitProcCbHresult
End Sub

Public Property Get CantDede() 'A4BC20
  'Data Table: 477A54
  loc_A4BBD4: FLdRfVar var_B8
  loc_A4BBD7: FLdRfVar var_A8
  loc_A4BBDA: LitVarStr var_A4, "CantDede"
  loc_A4BBDF: PopAdLdVar
  loc_A4BBE0: FLdRfVar CantDede
  loc_A4BBE3: FLdRfVar var_90
  loc_A4BBE6: FLdPr Me
  loc_A4BBE9: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4BBEE: FLdPr var_90
  loc_A4BBF1:  = Me.Fields
  loc_A4BBF6: FLdPr CantDede
  loc_A4BBF9: from_stack_2 = Me.Item(from_stack_1)
  loc_A4BBFE: FLdPr var_A8
  loc_A4BC01:  = Me.Value
  loc_A4BC06: FLdRfVar var_B8
  loc_A4BC09: CR4Var
  loc_A4BC0A: FStFPR8 var_8C
  loc_A4BC0D: FFreeAd var_90 = "": CantDede = ""
  loc_A4BC16: FFree1Var var_B8 = ""
  loc_A4BC19: ExitProcCbHresult
End Sub

Public Property Get CodiSede() 'A4C4E0
  'Data Table: 477A54
  loc_A4C494: FLdRfVar var_B4
  loc_A4C497: FLdRfVar var_A4
  loc_A4C49A: LitVarStr var_A0, "CodiSede"
  loc_A4C49F: PopAdLdVar
  loc_A4C4A0: FLdRfVar var_90
  loc_A4C4A3: FLdRfVar var_8C
  loc_A4C4A6: FLdPr Me
  loc_A4C4A9: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4C4AE: FLdPr var_8C
  loc_A4C4B1:  = Me.Fields
  loc_A4C4B6: FLdPr var_90
  loc_A4C4B9: from_stack_2 = Me.Item(from_stack_1)
  loc_A4C4BE: FLdPr var_A4
  loc_A4C4C1:  = Me.Value
  loc_A4C4C6: FLdRfVar var_B4
  loc_A4C4C9: CI4Var
  loc_A4C4CB: FStR4 var_88
  loc_A4C4CE: FFreeAd var_8C = "": var_90 = ""
  loc_A4C4D7: FFree1Var var_B4 = ""
  loc_A4C4DA: ExitProcCbHresult
End Sub

Public Property Get DetaSede() 'A40D78
  'Data Table: 477A54
  loc_A40D34: ZeroRetValVar
  loc_A40D36: FLdRfVar var_B0
  loc_A40D39: LitVarStr var_AC, "DetaSede"
  loc_A40D3E: PopAdLdVar
  loc_A40D3F: FLdRfVar var_9C
  loc_A40D42: FLdRfVar var_98
  loc_A40D45: FLdPr Me
  loc_A40D48: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A40D4D: FLdPr var_98
  loc_A40D50:  = Me.Fields
  loc_A40D55: FLdPr var_9C
  loc_A40D58: from_stack_2 = Me.Item(from_stack_1)
  loc_A40D5D: FLdZeroAd var_B0
  loc_A40D60: CVarAd
  loc_A40D64: FStVar DetaSede
  loc_A40D68: FFreeAd var_98 = ""
  loc_A40D6F: ExitProcCbHresult
End Sub

Public Property Get PrunDede() 'A4CAE4
  'Data Table: 477A54
  loc_A4CA98: FLdRfVar var_B8
  loc_A4CA9B: FLdRfVar var_A8
  loc_A4CA9E: LitVarStr var_A4, "PrunDede"
  loc_A4CAA3: PopAdLdVar
  loc_A4CAA4: FLdRfVar PrunDede
  loc_A4CAA7: FLdRfVar var_90
  loc_A4CAAA: FLdPr Me
  loc_A4CAAD: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4CAB2: FLdPr var_90
  loc_A4CAB5:  = Me.Fields
  loc_A4CABA: FLdPr PrunDede
  loc_A4CABD: from_stack_2 = Me.Item(from_stack_1)
  loc_A4CAC2: FLdPr var_A8
  loc_A4CAC5:  = Me.Value
  loc_A4CACA: FLdRfVar var_B8
  loc_A4CACD: CR4Var
  loc_A4CACE: FStFPR8 var_8C
  loc_A4CAD1: FFreeAd var_90 = "": PrunDede = ""
  loc_A4CADA: FFree1Var var_B8 = ""
  loc_A4CADD: ExitProcCbHresult
End Sub

Public Property Get SubtDede() 'A4CBFC
  'Data Table: 477A54
  loc_A4CBB0: FLdRfVar var_B8
  loc_A4CBB3: FLdRfVar var_A8
  loc_A4CBB6: LitVarStr var_A4, "SubtDede"
  loc_A4CBBB: PopAdLdVar
  loc_A4CBBC: FLdRfVar SubtDede
  loc_A4CBBF: FLdRfVar var_90
  loc_A4CBC2: FLdPr Me
  loc_A4CBC5: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4CBCA: FLdPr var_90
  loc_A4CBCD:  = Me.Fields
  loc_A4CBD2: FLdPr SubtDede
  loc_A4CBD5: from_stack_2 = Me.Item(from_stack_1)
  loc_A4CBDA: FLdPr var_A8
  loc_A4CBDD:  = Me.Value
  loc_A4CBE2: FLdRfVar var_B8
  loc_A4CBE5: CR4Var
  loc_A4CBE6: FStFPR8 var_8C
  loc_A4CBE9: FFreeAd var_90 = "": SubtDede = ""
  loc_A4CBF2: FFree1Var var_B8 = ""
  loc_A4CBF5: ExitProcCbHresult
End Sub

Public Property Get DescDede() 'A4BB08
  'Data Table: 477A54
  loc_A4BABC: FLdRfVar var_B8
  loc_A4BABF: FLdRfVar var_A8
  loc_A4BAC2: LitVarStr var_A4, "DescDede"
  loc_A4BAC7: PopAdLdVar
  loc_A4BAC8: FLdRfVar DescDede
  loc_A4BACB: FLdRfVar var_90
  loc_A4BACE: FLdPr Me
  loc_A4BAD1: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4BAD6: FLdPr var_90
  loc_A4BAD9:  = Me.Fields
  loc_A4BADE: FLdPr DescDede
  loc_A4BAE1: from_stack_2 = Me.Item(from_stack_1)
  loc_A4BAE6: FLdPr var_A8
  loc_A4BAE9:  = Me.Value
  loc_A4BAEE: FLdRfVar var_B8
  loc_A4BAF1: CR4Var
  loc_A4BAF2: FStFPR8 var_8C
  loc_A4BAF5: FFreeAd var_90 = "": DescDede = ""
  loc_A4BAFE: FFree1Var var_B8 = ""
  loc_A4BB01: ExitProcCbHresult
End Sub

Public Property Get TotaDede() 'A4F474
  'Data Table: 477A54
  loc_A4F428: FLdRfVar var_B8
  loc_A4F42B: FLdRfVar var_A8
  loc_A4F42E: LitVarStr var_A4, "TotaDede"
  loc_A4F433: PopAdLdVar
  loc_A4F434: FLdRfVar TotaDede
  loc_A4F437: FLdRfVar var_90
  loc_A4F43A: FLdPr Me
  loc_A4F43D: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4F442: FLdPr var_90
  loc_A4F445:  = Me.Fields
  loc_A4F44A: FLdPr TotaDede
  loc_A4F44D: from_stack_2 = Me.Item(from_stack_1)
  loc_A4F452: FLdPr var_A8
  loc_A4F455:  = Me.Value
  loc_A4F45A: FLdRfVar var_B8
  loc_A4F45D: CR4Var
  loc_A4F45E: FStFPR8 var_8C
  loc_A4F461: FFreeAd var_90 = "": TotaDede = ""
  loc_A4F46A: FFree1Var var_B8 = ""
  loc_A4F46D: ExitProcCbHresult
End Sub

Public Property Get AdicDebo() 'A4F0A0
  'Data Table: 477A54
  loc_A4F054: FLdRfVar var_B4
  loc_A4F057: FLdRfVar var_A4
  loc_A4F05A: LitVarStr var_A0, "AdicDebo"
  loc_A4F05F: PopAdLdVar
  loc_A4F060: FLdRfVar var_90
  loc_A4F063: FLdRfVar var_8C
  loc_A4F066: FLdPr Me
  loc_A4F069: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A4F06E: FLdPr var_8C
  loc_A4F071:  = Me.Fields
  loc_A4F076: FLdPr var_90
  loc_A4F079: from_stack_2 = Me.Item(from_stack_1)
  loc_A4F07E: FLdPr var_A4
  loc_A4F081:  = Me.Value
  loc_A4F086: FLdRfVar var_B4
  loc_A4F089: CI2Var
  loc_A4F08A: FStI2 var_86
  loc_A4F08D: FFreeAd var_8C = "": var_90 = ""
  loc_A4F096: FFree1Var var_B4 = ""
  loc_A4F099: ExitProcCbHresult
End Sub

Public Property Get DetaCtct() 'A40A48
  'Data Table: 477A54
  loc_A40A04: ZeroRetValVar
  loc_A40A06: FLdRfVar var_B0
  loc_A40A09: LitVarStr var_AC, "DetaCtct"
  loc_A40A0E: PopAdLdVar
  loc_A40A0F: FLdRfVar var_9C
  loc_A40A12: FLdRfVar var_98
  loc_A40A15: FLdPr Me
  loc_A40A18: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A40A1D: FLdPr var_98
  loc_A40A20:  = Me.Fields
  loc_A40A25: FLdPr var_9C
  loc_A40A28: from_stack_2 = Me.Item(from_stack_1)
  loc_A40A2D: FLdZeroAd var_B0
  loc_A40A30: CVarAd
  loc_A40A34: FStVar DetaCtct
  loc_A40A38: FFreeAd var_98 = ""
  loc_A40A3F: ExitProcCbHresult
End Sub

Public Property Get TotaBole() 'A409C0
  'Data Table: 477A54
  loc_A4097C: ZeroRetValVar
  loc_A4097E: FLdRfVar var_B0
  loc_A40981: LitVarStr var_AC, "TotaBole"
  loc_A40986: PopAdLdVar
  loc_A40987: FLdRfVar var_9C
  loc_A4098A: FLdRfVar var_98
  loc_A4098D: FLdPr Me
  loc_A40990: from_stack_1v = clsdetabole.global_4684252Get()
  loc_A40995: FLdPr var_98
  loc_A40998:  = Me.Fields
  loc_A4099D: FLdPr var_9C
  loc_A409A0: from_stack_2 = Me.Item(from_stack_1)
  loc_A409A5: FLdZeroAd var_B0
  loc_A409A8: CVarAd
  loc_A409AC: FStVar TotaBole
  loc_A409B0: FFreeAd var_98 = ""
  loc_A409B7: ExitProcCbHresult
End Sub

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E7C9C
  'Data Table: 477A54
  loc_9E7C80: ILdRf pError
  loc_9E7C83: FStAd var_88 
  loc_9E7C87: ILdRf pRecordset
  loc_9E7C8A: FStAd var_8C 
  loc_9E7C8E: FLdPr Me
  loc_9E7C91: RaiseEvent
  loc_9E7C99: ExitProcHresult
  loc_9E7C9A: EqI4
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9B790
  'Data Table: 477A54
  loc_A9B6D0: ILdRf pRecordset
  loc_A9B6D3: FStAd var_88 
  loc_A9B6D7: ILdRf adReason
  loc_A9B6DA: FStR4 var_90
  loc_A9B6DD: ILdRf var_90
  loc_A9B6E0: LitI4 1
  loc_A9B6E5: EqI4
  loc_A9B6E6: BranchF loc_A9B6EC
  loc_A9B6E9: Branch loc_A9B77F
  loc_A9B6EC: ILdRf var_90
  loc_A9B6EF: LitI4 9
  loc_A9B6F4: EqI4
  loc_A9B6F5: BranchF loc_A9B6FB
  loc_A9B6F8: Branch loc_A9B77F
  loc_A9B6FB: ILdRf var_90
  loc_A9B6FE: LitI4 2
  loc_A9B703: EqI4
  loc_A9B704: BranchF loc_A9B70A
  loc_A9B707: Branch loc_A9B77F
  loc_A9B70A: ILdRf var_90
  loc_A9B70D: LitI4 &HB
  loc_A9B712: EqI4
  loc_A9B713: BranchF loc_A9B719
  loc_A9B716: Branch loc_A9B77F
  loc_A9B719: ILdRf var_90
  loc_A9B71C: LitI4 &HA
  loc_A9B721: EqI4
  loc_A9B722: BranchF loc_A9B728
  loc_A9B725: Branch loc_A9B77F
  loc_A9B728: ILdRf var_90
  loc_A9B72B: LitI4 7
  loc_A9B730: EqI4
  loc_A9B731: BranchF loc_A9B737
  loc_A9B734: Branch loc_A9B77F
  loc_A9B737: ILdRf var_90
  loc_A9B73A: LitI4 8
  loc_A9B73F: EqI4
  loc_A9B740: BranchF loc_A9B746
  loc_A9B743: Branch loc_A9B77F
  loc_A9B746: ILdRf var_90
  loc_A9B749: LitI4 5
  loc_A9B74E: EqI4
  loc_A9B74F: BranchF loc_A9B755
  loc_A9B752: Branch loc_A9B77F
  loc_A9B755: ILdRf var_90
  loc_A9B758: LitI4 6
  loc_A9B75D: EqI4
  loc_A9B75E: BranchF loc_A9B764
  loc_A9B761: Branch loc_A9B77F
  loc_A9B764: ILdRf var_90
  loc_A9B767: LitI4 4
  loc_A9B76C: EqI4
  loc_A9B76D: BranchF loc_A9B773
  loc_A9B770: Branch loc_A9B77F
  loc_A9B773: ILdRf var_90
  loc_A9B776: LitI4 3
  loc_A9B77B: EqI4
  loc_A9B77C: BranchF loc_A9B77F
  loc_A9B77F: FLdI2 var_8A
  loc_A9B782: BranchF loc_A9B78D
  loc_A9B785: LitI4 4
  loc_A9B78A: IStI4 adStatus
  loc_A9B78D: ExitProcHresult
  loc_A9B78E: FLdRfVar var_2370
End Sub

Private Function Proc_5_94_9FA6A0() '9FA6A0
  'Data Table: 477A54
  loc_9FA67C: LitStr "Primary"
  loc_9FA67F: FLdPr Me
  loc_9FA682: LateIdLdVar var_94 DispID_4 0
  loc_9FA689: CastAdVar Me
  loc_9FA68D: FStAdFunc var_98
  loc_9FA690: FLdPr var_98
  loc_9FA698: FFree1Ad var_98
  loc_9FA69B: FFree1Var var_94 = ""
  loc_9FA69E: ExitProcHresult
End Function

Private Function Proc_5_95_9FA6FC(arg_C) '9FA6FC
  'Data Table: 477A54
  loc_9FA6D8: ILdI4 arg_C
  loc_9FA6DB: FStStrCopy var_88
  loc_9FA6DE: ILdRf var_88
  loc_9FA6E1: LitStr "Primary"
  loc_9FA6E4: EqStr
  loc_9FA6E6: BranchF loc_9FA6FB
  loc_9FA6E9: FLdRfVar var_8C
  loc_9FA6EC: FLdPr Me
  loc_9FA6EF: from_stack_1v = clsdetabole.global_4684252Get()
  loc_9FA6F4: FLdZeroAd var_8C
  loc_9FA6F7: IStAdFunc
  loc_9FA6FB: ExitProcHresult
End Function

Public Function global_4684252Get() '478050
  global_4684252Get = global_4684252
End Function

Public Sub global_4684252Put(Value) '47806A
  global_4684252 = Value
End Sub

Public Sub global_4684252Set(Value) '478084
  global_4684252 = Value
End Sub

Public Function global_4684252Get() '47809E
  global_4684252Get = global_4684252
End Function

Public Sub global_4684252Put(Value) '4780B8
  global_4684252 = Value
End Sub

Public Sub global_4684252Set(Value) '4780D2
  global_4684252 = Value
End Sub

Public Function global_4684252Get() '4780EC
  global_4684252Get = global_4684252
End Function

Public Sub global_4684252Put(Value) '478106
  global_4684252 = Value
End Sub

Public Sub global_4684252Set(Value) '478120
  global_4684252 = Value
End Sub
