VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clszonainmu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0D9B4
  'Data Table: 4269C8
  loc_A0D978: FLdRfVar var_8C
  loc_A0D97B: FLdRfVar var_88
  loc_A0D97E: FLdPr Me
  loc_A0D981: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A0D986: FLdPr var_88
  loc_A0D989:  = Me.RecordCount
  loc_A0D98E: ILdRf var_8C
  loc_A0D991: LitI4 0
  loc_A0D996: GtI4
  loc_A0D997: FFree1Ad var_88
  loc_A0D99A: BranchF loc_A0D9B3
  loc_A0D99D: FLdRfVar var_88
  loc_A0D9A0: FLdPr Me
  loc_A0D9A3: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A0D9A8: FLdPr var_88
  loc_A0D9AB: Me.MoveFirst
  loc_A0D9B0: FFree1Ad var_88
  loc_A0D9B3: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0DDA4
  'Data Table: 4269C8
  loc_A0DD68: FLdRfVar var_8C
  loc_A0DD6B: FLdRfVar var_88
  loc_A0DD6E: FLdPr Me
  loc_A0DD71: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A0DD76: FLdPr var_88
  loc_A0DD79:  = Me.RecordCount
  loc_A0DD7E: ILdRf var_8C
  loc_A0DD81: LitI4 0
  loc_A0DD86: GtI4
  loc_A0DD87: FFree1Ad var_88
  loc_A0DD8A: BranchF loc_A0DDA3
  loc_A0DD8D: FLdRfVar var_88
  loc_A0DD90: FLdPr Me
  loc_A0DD93: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A0DD98: FLdPr var_88
  loc_A0DD9B: Me.MoveLast
  loc_A0DDA0: FFree1Ad var_88
  loc_A0DDA3: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9AB28
  'Data Table: 4269C8
  loc_A9AA6C: FLdRfVar var_8A
  loc_A9AA6F: FLdRfVar var_88
  loc_A9AA72: FLdPr Me
  loc_A9AA75: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A9AA7A: FLdPr var_88
  loc_A9AA7D:  = Me.EOF
  loc_A9AA82: FLdI2 var_8A
  loc_A9AA85: NotI4
  loc_A9AA86: FLdRfVar var_94
  loc_A9AA89: FLdRfVar var_90
  loc_A9AA8C: FLdPr Me
  loc_A9AA8F: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A9AA94: FLdPr var_90
  loc_A9AA97:  = Me.RecordCount
  loc_A9AA9C: ILdRf var_94
  loc_A9AA9F: LitI4 0
  loc_A9AAA4: GtI4
  loc_A9AAA5: AndI4
  loc_A9AAA6: FFreeAd var_88 = ""
  loc_A9AAAD: BranchF loc_A9AAC6
  loc_A9AAB0: FLdRfVar var_88
  loc_A9AAB3: FLdPr Me
  loc_A9AAB6: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A9AABB: FLdPr var_88
  loc_A9AABE: Me.MoveNext
  loc_A9AAC3: FFree1Ad var_88
  loc_A9AAC6: FLdRfVar var_8A
  loc_A9AAC9: FLdRfVar var_88
  loc_A9AACC: FLdPr Me
  loc_A9AACF: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A9AAD4: FLdPr var_88
  loc_A9AAD7:  = Me.EOF
  loc_A9AADC: FLdI2 var_8A
  loc_A9AADF: FLdRfVar var_94
  loc_A9AAE2: FLdRfVar var_90
  loc_A9AAE5: FLdPr Me
  loc_A9AAE8: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A9AAED: FLdPr var_90
  loc_A9AAF0:  = Me.RecordCount
  loc_A9AAF5: ILdRf var_94
  loc_A9AAF8: LitI4 0
  loc_A9AAFD: GtI4
  loc_A9AAFE: AndI4
  loc_A9AAFF: FFreeAd var_88 = ""
  loc_A9AB06: BranchF loc_A9AB24
  loc_A9AB09: ImpAdCallFPR4 Beep()
  loc_A9AB0E: FLdRfVar var_88
  loc_A9AB11: FLdPr Me
  loc_A9AB14: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A9AB19: FLdPr var_88
  loc_A9AB1C: Me.MoveLast
  loc_A9AB21: FFree1Ad var_88
  loc_A9AB24: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9DB3D0
  'Data Table: 4269C8
  loc_9DB3B8: FLdRfVar var_88
  loc_9DB3BB: FLdPr Me
  loc_9DB3BE: from_stack_1v = clszonainmu.global_4352336Get()
  loc_9DB3C3: FLdPr var_88
  loc_9DB3C6: Me.MoveNext
  loc_9DB3CB: FFree1Ad var_88
  loc_9DB3CE: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E50FC
  'Data Table: 4269C8
  loc_9E50DC: LitVar_Missing var_98
  loc_9E50DF: PopAdLdVar
  loc_9E50E0: ILdI2 iValor
  loc_9E50E3: CI4UI1
  loc_9E50E4: FLdRfVar var_88
  loc_9E50E7: FLdPr Me
  loc_9E50EA: from_stack_1v = clszonainmu.global_4352336Get()
  loc_9E50EF: FLdPr var_88
  loc_9E50F2: Me.Move from_stack_1, from_stack_2
  loc_9E50F7: FFree1Ad var_88
  loc_9E50FA: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9B1D4
  'Data Table: 4269C8
  loc_A9B118: FLdRfVar var_8A
  loc_A9B11B: FLdRfVar var_88
  loc_A9B11E: FLdPr Me
  loc_A9B121: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A9B126: FLdPr var_88
  loc_A9B129:  = Me.BOF
  loc_A9B12E: FLdI2 var_8A
  loc_A9B131: NotI4
  loc_A9B132: FLdRfVar var_94
  loc_A9B135: FLdRfVar var_90
  loc_A9B138: FLdPr Me
  loc_A9B13B: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A9B140: FLdPr var_90
  loc_A9B143:  = Me.RecordCount
  loc_A9B148: ILdRf var_94
  loc_A9B14B: LitI4 0
  loc_A9B150: GtI4
  loc_A9B151: AndI4
  loc_A9B152: FFreeAd var_88 = ""
  loc_A9B159: BranchF loc_A9B172
  loc_A9B15C: FLdRfVar var_88
  loc_A9B15F: FLdPr Me
  loc_A9B162: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A9B167: FLdPr var_88
  loc_A9B16A: Me.MovePrevious
  loc_A9B16F: FFree1Ad var_88
  loc_A9B172: FLdRfVar var_8A
  loc_A9B175: FLdRfVar var_88
  loc_A9B178: FLdPr Me
  loc_A9B17B: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A9B180: FLdPr var_88
  loc_A9B183:  = Me.BOF
  loc_A9B188: FLdI2 var_8A
  loc_A9B18B: FLdRfVar var_94
  loc_A9B18E: FLdRfVar var_90
  loc_A9B191: FLdPr Me
  loc_A9B194: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A9B199: FLdPr var_90
  loc_A9B19C:  = Me.RecordCount
  loc_A9B1A1: ILdRf var_94
  loc_A9B1A4: LitI4 0
  loc_A9B1A9: GtI4
  loc_A9B1AA: AndI4
  loc_A9B1AB: FFreeAd var_88 = ""
  loc_A9B1B2: BranchF loc_A9B1D0
  loc_A9B1B5: ImpAdCallFPR4 Beep()
  loc_A9B1BA: FLdRfVar var_88
  loc_A9B1BD: FLdPr Me
  loc_A9B1C0: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A9B1C5: FLdPr var_88
  loc_A9B1C8: Me.MoveFirst
  loc_A9B1CD: FFree1Ad var_88
  loc_A9B1D0: ExitProcHresult
End Sub

Public Property Get EOF() '9F0A50
  'Data Table: 4269C8
  loc_9F0A28: FLdRfVar var_8E
  loc_9F0A2B: FLdRfVar var_8C
  loc_9F0A2E: FLdPr Me
  loc_9F0A31: from_stack_1v = clszonainmu.global_4352336Get()
  loc_9F0A36: FLdPr var_8C
  loc_9F0A39:  = Me.EOF
  loc_9F0A3E: FLdI2 var_8E
  loc_9F0A41: FStI2 var_86
  loc_9F0A44: FFree1Ad var_8C
  loc_9F0A47: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F07CC
  'Data Table: 4269C8
  loc_9F07A4: FLdRfVar var_8E
  loc_9F07A7: FLdRfVar var_8C
  loc_9F07AA: FLdPr Me
  loc_9F07AD: from_stack_1v = clszonainmu.global_4352336Get()
  loc_9F07B2: FLdPr var_8C
  loc_9F07B5:  = Me.BOF
  loc_9F07BA: FLdI2 var_8E
  loc_9F07BD: FStI2 var_86
  loc_9F07C0: FFree1Ad var_8C
  loc_9F07C3: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9DD44C
  'Data Table: 4269C8
  loc_9DD430: ILdI4 sOrden
  loc_9DD433: FLdRfVar var_88
  loc_9DD436: FLdPr Me
  loc_9DD439: from_stack_1v = clszonainmu.global_4352336Get()
  loc_9DD43E: FLdPr var_88
  loc_9DD441: Me.Sort = from_stack_1
  loc_9DD446: FFree1Ad var_88
  loc_9DD449: ExitProcHresult
End Sub

Public Sub Find(sFind) '9F093C
  'Data Table: 4269C8
  loc_9F0914: LitVar_Missing var_98
  loc_9F0917: PopAdLdVar
  loc_9F0918: LitI4 1
  loc_9F091D: LitI4 0
  loc_9F0922: ILdI4 sFind
  loc_9F0925: FLdRfVar var_88
  loc_9F0928: FLdPr Me
  loc_9F092B: from_stack_1v = clszonainmu.global_4352336Get()
  loc_9F0930: FLdPr var_88
  loc_9F0933: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F0938: FFree1Ad var_88
  loc_9F093B: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F08E0
  'Data Table: 4269C8
  loc_9F08B8: FLdRfVar var_90
  loc_9F08BB: FLdRfVar var_8C
  loc_9F08BE: FLdPr Me
  loc_9F08C1: from_stack_1v = clszonainmu.global_4352336Get()
  loc_9F08C6: FLdPr var_8C
  loc_9F08C9:  = Me.AbsolutePosition
  loc_9F08CE: ILdRf var_90
  loc_9F08D1: FStR4 var_88
  loc_9F08D4: FFree1Ad var_8C
  loc_9F08D7: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F0770
  'Data Table: 4269C8
  loc_9F0748: FLdRfVar var_90
  loc_9F074B: FLdRfVar var_8C
  loc_9F074E: FLdPr Me
  loc_9F0751: from_stack_1v = clszonainmu.global_4352336Get()
  loc_9F0756: FLdPr var_8C
  loc_9F0759:  = Me.RecordCount
  loc_9F075E: ILdRf var_90
  loc_9F0761: FStR4 var_88
  loc_9F0764: FFree1Ad var_8C
  loc_9F0767: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiZoin, DetaZoin) 'A7A830
  'Data Table: 4269C8
  loc_A7A7C0: ILdRf DetaZoin
  loc_A7A7C3: FStStrCopy var_88
  loc_A7A7C6: FLdRfVar var_8C
  loc_A7A7C9: FLdI2 CodiZoin
  loc_A7A7CC: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A7A7D1: ILdRf var_8C
  loc_A7A7D4: LitStr vbNullString
  loc_A7A7D7: NeStr
  loc_A7A7D9: FFree1Str var_8C
  loc_A7A7DC: BranchF loc_A7A7EA
  loc_A7A7DF: LitStr "LA ZONA YA EXISTE. Reintente..."
  loc_A7A7E2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7A7E7: Branch loc_A7A82E
  loc_A7A7EA: LitStr "INSERT INTO zonainmu (CodiZoin, DetaZoin) VALUES ("
  loc_A7A7ED: FLdI2 CodiZoin
  loc_A7A7F0: CStrUI1
  loc_A7A7F2: FStStrNoPop var_8C
  loc_A7A7F5: ConcatStr
  loc_A7A7F6: FStStrNoPop var_90
  loc_A7A7F9: LitStr ",'"
  loc_A7A7FC: ConcatStr
  loc_A7A7FD: FStStrNoPop var_94
  loc_A7A800: ILdRf var_88
  loc_A7A803: ConcatStr
  loc_A7A804: FStStrNoPop var_98
  loc_A7A807: LitStr "');"
  loc_A7A80A: ConcatStr
  loc_A7A80B: FStStrNoPop var_9C
  loc_A7A80E: Call EjecutarRs2(from_stack_1v)
  loc_A7A813: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A7A820: Call Requery()
  loc_A7A825: FLdI2 CodiZoin
  loc_A7A828: CI4UI1
  loc_A7A829: Call Encontrar(from_stack_1v)
  loc_A7A82E: ExitProcHresult
End Sub

Public Sub Modificar(CodiZoin, DetaZoin) 'A6FC94
  'Data Table: 4269C8
  loc_A6FC2C: ILdRf DetaZoin
  loc_A6FC2F: FStStrCopy var_88
  loc_A6FC32: FLdRfVar var_8C
  loc_A6FC35: FLdI2 CodiZoin
  loc_A6FC38: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A6FC3D: ILdRf var_8C
  loc_A6FC40: LitStr vbNullString
  loc_A6FC43: EqStr
  loc_A6FC45: FFree1Str var_8C
  loc_A6FC48: BranchF loc_A6FC56
  loc_A6FC4B: LitStr "LA ZONA NO EXISTE. Reintente..."
  loc_A6FC4E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6FC53: Branch loc_A6FC83
  loc_A6FC56: LitStr "UPDATE Zonainmu SET DetaZoin = '"
  loc_A6FC59: ILdRf var_88
  loc_A6FC5C: ConcatStr
  loc_A6FC5D: FStStrNoPop var_8C
  loc_A6FC60: LitStr "' WHERE CodiZoin = "
  loc_A6FC63: ConcatStr
  loc_A6FC64: FStStrNoPop var_90
  loc_A6FC67: FLdI2 CodiZoin
  loc_A6FC6A: CStrUI1
  loc_A6FC6C: FStStrNoPop var_94
  loc_A6FC6F: ConcatStr
  loc_A6FC70: FStStrNoPop var_98
  loc_A6FC73: Call EjecutarRs2(from_stack_1v)
  loc_A6FC78: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_A6FC83: Call Requery()
  loc_A6FC88: FLdI2 CodiZoin
  loc_A6FC8B: CI4UI1
  loc_A6FC8C: Call Encontrar(from_stack_1v)
  loc_A6FC91: ExitProcHresult
  loc_A6FC92: EqI4
End Sub

Public Sub Delete() 'A24484
  'Data Table: 4269C8
  loc_A2443C: FLdRfVar var_8C
  loc_A2443F: FLdRfVar var_88
  loc_A24442: FLdPr Me
  loc_A24445: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A2444A: FLdPr var_88
  loc_A2444D:  = Me.RecordCount
  loc_A24452: ILdRf var_8C
  loc_A24455: LitI4 0
  loc_A2445A: GtI4
  loc_A2445B: FFree1Ad var_88
  loc_A2445E: BranchF loc_A24481
  loc_A24461: LitI4 1
  loc_A24466: FLdRfVar var_88
  loc_A24469: FLdPr Me
  loc_A2446C: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A24471: FLdPr var_88
  loc_A24474: Me.Delete
  loc_A24479: FFree1Ad var_88
  loc_A2447C: Call MoveNext()
  loc_A24481: ExitProcHresult
  loc_A24482: EqI4
End Sub

Public Sub Requery() '9FFE58
  'Data Table: 4269C8
  loc_9FFE28: LitI4 -1
  loc_9FFE2D: FLdRfVar var_88
  loc_9FFE30: FLdPr Me
  loc_9FFE33: from_stack_1v = clszonainmu.global_4352336Get()
  loc_9FFE38: FLdPr var_88
  loc_9FFE3B: Me.Requery from_stack_1
  loc_9FFE40: FFree1Ad var_88
  loc_9FFE43: LitVarStr var_98, "Primary"
  loc_9FFE48: PopAdLdVar
  loc_9FFE49: FLdPr Me
  loc_9FFE4C: LateIdCall
  loc_9FFE54: ExitProcHresult
  loc_9FFE55: Ary1StVar
  loc_9FFE56: EqI4
End Sub

Public Sub Update() 'A24F28
  'Data Table: 4269C8
  loc_A24EE4: FLdRfVar var_88
  loc_A24EE7: FLdPr Me
  loc_A24EEA: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A24EEF: FLdZeroAd var_88
  loc_A24EF2: FStAdFunc var_8C
  loc_A24EF5: LitI4 3
  loc_A24EFA: FLdPr var_8C
  loc_A24EFD: Me.UpdateBatch
  loc_A24F02: FLdRfVar var_90
  loc_A24F05: FLdPr var_8C
  loc_A24F08:  = Me.EditMode
  loc_A24F0D: ILdRf var_90
  loc_A24F10: LitI4 2
  loc_A24F15: EqI4
  loc_A24F16: BranchF loc_A24F1E
  loc_A24F19: Call MoveLast()
  loc_A24F1E: LitNothing
  loc_A24F20: FStAd var_8C 
  loc_A24F24: ExitProcHresult
End Sub

Public Sub Cancel() 'A49554
  'Data Table: 4269C8
  loc_A49500: FLdRfVar var_88
  loc_A49503: FLdPr Me
  loc_A49506: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A4950B: FLdZeroAd var_88
  loc_A4950E: FStAdFunc var_8C
  loc_A49511: FLdRfVar var_90
  loc_A49514: FLdPr var_8C
  loc_A49517:  = Me.RecordCount
  loc_A4951C: ILdRf var_90
  loc_A4951F: LitI4 0
  loc_A49524: GtI4
  loc_A49525: BranchF loc_A4954C
  loc_A49528: FLdPr var_8C
  loc_A4952B: Me.CancelUpdate
  loc_A49530: FLdRfVar var_90
  loc_A49533: FLdPr var_8C
  loc_A49536:  = Me.EditMode
  loc_A4953B: ILdRf var_90
  loc_A4953E: LitI4 2
  loc_A49543: EqI4
  loc_A49544: BranchF loc_A4954C
  loc_A49547: Call MoveFirst()
  loc_A4954C: LitNothing
  loc_A4954E: FStAd var_8C 
  loc_A49552: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FD6B4
  'Data Table: 4269C8
  loc_9FD688: FLdRfVar var_90
  loc_9FD68B: FLdRfVar var_8C
  loc_9FD68E: FLdPr Me
  loc_9FD691: from_stack_1v = clszonainmu.global_4352336Get()
  loc_9FD696: FLdPr var_8C
  loc_9FD699:  = Me.EditMode
  loc_9FD69E: ILdRf var_90
  loc_9FD6A1: LitI4 0
  loc_9FD6A6: NeI4
  loc_9FD6A7: FStI2 var_86
  loc_9FD6AA: FFree1Ad var_8C
  loc_9FD6AD: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A6F28C
  'Data Table: 4269C8
  loc_A6F218: ILdRf sSelect
  loc_A6F21B: FStStrCopy var_88
  loc_A6F21E: LitNothing
  loc_A6F220: CastAd
  loc_A6F223: FStAdFuncNoPop
  loc_A6F226: FLdPr Me
  loc_A6F229: Call clszonainmu.global_4352336Set(from_stack_1v)
  loc_A6F22E: FFree1Ad var_8C
  loc_A6F231: New Recordset
  loc_A6F235: FStAdFuncNoPop
  loc_A6F238: FLdPr Me
  loc_A6F23B: Call clszonainmu.global_4352336Set(from_stack_1v)
  loc_A6F240: FFree1Ad var_8C
  loc_A6F243: LitI4 -1
  loc_A6F248: LitI4 3
  loc_A6F24D: LitI4 3
  loc_A6F252: ImpAdLdI4 MemVar_D9301C
  loc_A6F255: CVarAd
  loc_A6F259: PopAdLdVar
  loc_A6F25A: ILdRf var_88
  loc_A6F25D: CVarStr var_9C
  loc_A6F260: PopAdLdVar
  loc_A6F261: FLdRfVar var_8C
  loc_A6F264: FLdPr Me
  loc_A6F267: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A6F26C: FLdPr var_8C
  loc_A6F26F: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6F274: FFree1Ad var_8C
  loc_A6F277: LitVarStr var_9C, "Primary"
  loc_A6F27C: PopAdLdVar
  loc_A6F27D: FLdPr Me
  loc_A6F280: LateIdCall
  loc_A6F288: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A5ACA8
  'Data Table: 4269C8
  loc_A5AC48: ILdRf sSelect
  loc_A5AC4B: FStStrCopy var_88
  loc_A5AC4E: LitNothing
  loc_A5AC50: CastAd
  loc_A5AC53: FStAdFuncNoPop
  loc_A5AC56: FLdPr Me
  loc_A5AC59: Call clszonainmu.global_4352336Set(from_stack_1v)
  loc_A5AC5E: FFree1Ad var_8C
  loc_A5AC61: New Recordset
  loc_A5AC65: FStAdFuncNoPop
  loc_A5AC68: FLdPr Me
  loc_A5AC6B: Call clszonainmu.global_4352336Set(from_stack_1v)
  loc_A5AC70: FFree1Ad var_8C
  loc_A5AC73: LitI4 -1
  loc_A5AC78: LitI4 3
  loc_A5AC7D: LitI4 3
  loc_A5AC82: ImpAdLdI4 MemVar_D9301C
  loc_A5AC85: CVarAd
  loc_A5AC89: PopAdLdVar
  loc_A5AC8A: ILdRf var_88
  loc_A5AC8D: CVarStr var_9C
  loc_A5AC90: PopAdLdVar
  loc_A5AC91: FLdRfVar var_8C
  loc_A5AC94: FLdPr Me
  loc_A5AC97: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A5AC9C: FLdPr var_8C
  loc_A5AC9F: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5ACA4: FFree1Ad var_8C
  loc_A5ACA7: ExitProcHresult
End Sub

Public Sub Encontrar(CodiZoin) '9EF6BC
  'Data Table: 4269C8
  loc_9EF69C: LitStr "CodiZoin = "
  loc_9EF69F: ILdRf CodiZoin
  loc_9EF6A2: CStrI4
  loc_9EF6A4: FStStrNoPop var_88
  loc_9EF6A7: ConcatStr
  loc_9EF6A8: PopTmpLdAdStr
  loc_9EF6AC: Call Find(from_stack_1v)
  loc_9EF6B1: FFreeStr var_88 = ""
  loc_9EF6B8: ExitProcHresult
End Sub

Public Property Get DataSource() 'A096EC
  'Data Table: 4269C8
  loc_A096BC: ZeroRetVal
  loc_A096BE: FLdRfVar var_90
  loc_A096C1: FLdRfVar var_8C
  loc_A096C4: FLdPr Me
  loc_A096C7: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A096CC: FLdPr var_8C
  loc_A096CF:  = Me.DataSource
  loc_A096D4: ILdRf var_90
  loc_A096D7: CastAd
  loc_A096DA: FStAdFunc var_88
  loc_A096DD: FFreeAd var_8C = ""
  loc_A096E4: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9EFED0
  'Data Table: 4269C8
  loc_9EFEA8: FLdRfVar var_90
  loc_9EFEAB: FLdRfVar var_8C
  loc_9EFEAE: FLdPr Me
  loc_9EFEB1: from_stack_1v = clszonainmu.global_4352336Get()
  loc_9EFEB6: FLdPr var_8C
  loc_9EFEB9:  = Me.EditMode
  loc_9EFEBE: ILdRf var_90
  loc_9EFEC1: FStR4 var_88
  loc_9EFEC4: FFree1Ad var_8C
  loc_9EFEC7: ExitProcCbHresult
End Sub

Public Property Get CodiZoin() 'A4882C
  'Data Table: 4269C8
  loc_A487E0: FLdRfVar var_B4
  loc_A487E3: FLdRfVar var_A4
  loc_A487E6: LitVarStr var_A0, "CodiZoin"
  loc_A487EB: PopAdLdVar
  loc_A487EC: FLdRfVar var_90
  loc_A487EF: FLdRfVar var_8C
  loc_A487F2: FLdPr Me
  loc_A487F5: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A487FA: FLdPr var_8C
  loc_A487FD:  = Me.Fields
  loc_A48802: FLdPr var_90
  loc_A48805: from_stack_2 = Me.Item(from_stack_1)
  loc_A4880A: FLdPr var_A4
  loc_A4880D:  = Me.Value
  loc_A48812: FLdRfVar var_B4
  loc_A48815: CI2Var
  loc_A48816: FStI2 var_86
  loc_A48819: FFreeAd var_8C = "": var_90 = ""
  loc_A48822: FFree1Var var_B4 = ""
  loc_A48825: ExitProcCbHresult
End Sub

Public Property Let CodiZoin(vDato) '9EEC70
  'Data Table: 4269C8
  loc_9EEC4C: FLdI2 vDato
  loc_9EEC4F: CVarI2 var_A8
  loc_9EEC52: PopAdLdVar
  loc_9EEC53: LitVarStr var_98, "CodiZoin"
  loc_9EEC58: PopAdLdVar
  loc_9EEC59: FLdRfVar var_88
  loc_9EEC5C: FLdPr Me
  loc_9EEC5F: from_stack_1v = clszonainmu.global_4352336Get()
  loc_9EEC64: FLdPr var_88
  loc_9EEC67: Me.Collect = from_stack_1
  loc_9EEC6C: FFree1Ad var_88
  loc_9EEC6F: ExitProcHresult
End Sub

Public Property Get DetaZoin() 'A541A8
  'Data Table: 4269C8
  loc_A54158: ZeroRetVal
  loc_A5415A: FLdRfVar var_B4
  loc_A5415D: FLdRfVar var_A4
  loc_A54160: LitVarStr var_A0, "DetaZoin"
  loc_A54165: PopAdLdVar
  loc_A54166: FLdRfVar var_90
  loc_A54169: FLdRfVar var_8C
  loc_A5416C: FLdPr Me
  loc_A5416F: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A54174: FLdPr var_8C
  loc_A54177:  = Me.Fields
  loc_A5417C: FLdPr var_90
  loc_A5417F: from_stack_2 = Me.Item(from_stack_1)
  loc_A54184: FLdPr var_A4
  loc_A54187:  = Me.Value
  loc_A5418C: FLdRfVar var_B4
  loc_A5418F: CStrVarTmp
  loc_A54190: FStStr var_88
  loc_A54193: FFreeAd var_8C = "": var_90 = ""
  loc_A5419C: FFree1Var var_B4 = ""
  loc_A5419F: ExitProcCbHresult
End Sub

Public Property Let DetaZoin(vDato) '9FFDF0
  'Data Table: 4269C8
  loc_9FFDC4: ILdRf vDato
  loc_9FFDC7: FStStrCopy var_88
  loc_9FFDCA: ILdRf var_88
  loc_9FFDCD: CVarStr var_AC
  loc_9FFDD0: PopAdLdVar
  loc_9FFDD1: LitVarStr var_9C, "DetaZoin"
  loc_9FFDD6: PopAdLdVar
  loc_9FFDD7: FLdRfVar var_8C
  loc_9FFDDA: FLdPr Me
  loc_9FFDDD: from_stack_1v = clszonainmu.global_4352336Get()
  loc_9FFDE2: FLdPr var_8C
  loc_9FFDE5: Me.Collect = from_stack_1
  loc_9FFDEA: FFree1Ad var_8C
  loc_9FFDED: ExitProcHresult
End Sub

Public Function ValidaClave(CodiZoin) 'A52840
  'Data Table: 4269C8
  loc_A527F0: ZeroRetVal
  loc_A527F2: LitStr "SELECT CodiZoin FROM zonainmu WHERE CodiZoin = "
  loc_A527F5: FLdI2 CodiZoin
  loc_A527F8: CStrUI1
  loc_A527FA: FStStrNoPop var_8C
  loc_A527FD: ConcatStr
  loc_A527FE: FStStrNoPop var_90
  loc_A52801: Call EjecutarRs2(from_stack_1v)
  loc_A52806: FFreeStr var_8C = ""
  loc_A5280D: FLdRfVar var_98
  loc_A52810: FLdRfVar ValidaClave
  loc_A52813: FLdPr Me
  loc_A52816: from_stack_1v = clszonainmu.global_4352336Get()
  loc_A5281B: FLdPr ValidaClave
  loc_A5281E:  = Me.RecordCount
  loc_A52823: ILdRf var_98
  loc_A52826: LitI4 0
  loc_A5282B: GtI4
  loc_A5282C: FFree1Ad ValidaClave
  loc_A5282F: BranchF loc_A52838
  loc_A52832: LitStr "LA ZONA YA EXISTE. Reintente..."
  loc_A52835: FStStrCopy var_88
  loc_A52838: ExitProcCbHresult
End Function

Public Function NuevoRegistro() 'ABB0B0
  'Data Table: 4269C8
  loc_ABAFC0: New Recordset
  loc_ABAFC4: FStAdFuncNoPop
  loc_ABAFC7: FLdPr Me
  loc_ABAFCA: Call clszonainmu.global_4352336Set(from_stack_1v)
  loc_ABAFCF: FFree1Ad var_8C
  loc_ABAFD2: LitI4 -1
  loc_ABAFD7: LitI4 3
  loc_ABAFDC: LitI4 3
  loc_ABAFE1: ImpAdLdI4 MemVar_D9301C
  loc_ABAFE4: CVarAd
  loc_ABAFE8: PopAdLdVar
  loc_ABAFE9: LitVarStr var_9C, "SELECT CodiZoin FROM zonainmu ORDER BY CodiZoin DESC "
  loc_ABAFEE: PopAdLdVar
  loc_ABAFEF: FLdRfVar var_8C
  loc_ABAFF2: FLdPr Me
  loc_ABAFF5: from_stack_1v = clszonainmu.global_4352336Get()
  loc_ABAFFA: FLdPr var_8C
  loc_ABAFFD: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_ABB002: FFree1Ad var_8C
  loc_ABB005: FLdRfVar var_B0
  loc_ABB008: FLdRfVar var_8C
  loc_ABB00B: FLdPr Me
  loc_ABB00E: from_stack_1v = clszonainmu.global_4352336Get()
  loc_ABB013: FLdPr var_8C
  loc_ABB016:  = Me.RecordCount
  loc_ABB01B: ILdRf var_B0
  loc_ABB01E: LitI4 0
  loc_ABB023: GtI4
  loc_ABB024: FFree1Ad var_8C
  loc_ABB027: BranchF loc_ABB079
  loc_ABB02A: FLdRfVar var_C8
  loc_ABB02D: FLdRfVar var_B8
  loc_ABB030: LitVarStr var_9C, "CodiZoin"
  loc_ABB035: PopAdLdVar
  loc_ABB036: FLdRfVar var_B4
  loc_ABB039: FLdRfVar var_8C
  loc_ABB03C: FLdPr Me
  loc_ABB03F: from_stack_1v = clszonainmu.global_4352336Get()
  loc_ABB044: FLdPr var_8C
  loc_ABB047:  = Me.Fields
  loc_ABB04C: FLdPr var_B4
  loc_ABB04F: from_stack_2 = Me.Item(from_stack_1)
  loc_ABB054: FLdPr var_B8
  loc_ABB057:  = Me.Value
  loc_ABB05C: FLdRfVar var_C8
  loc_ABB05F: FnCLngVar
  loc_ABB061: LitI4 1
  loc_ABB066: AddI4
  loc_ABB067: FStR4 var_88
  loc_ABB06A: FFreeAd var_8C = "": var_B4 = ""
  loc_ABB073: FFree1Var var_C8 = ""
  loc_ABB076: Branch loc_ABB081
  loc_ABB079: LitI4 1
  loc_ABB07E: FStR4 var_88
  loc_ABB081: FLdRfVar var_8C
  loc_ABB084: FLdPr Me
  loc_ABB087: from_stack_1v = clszonainmu.global_4352336Get()
  loc_ABB08C: FLdPr var_8C
  loc_ABB08F: Me.Close
  loc_ABB094: FFree1Ad var_8C
  loc_ABB097: LitNothing
  loc_ABB099: CastAd
  loc_ABB09C: FStAdFuncNoPop
  loc_ABB09F: FLdPr Me
  loc_ABB0A2: Call clszonainmu.global_4352336Set(from_stack_1v)
  loc_ABB0A7: FFree1Ad var_8C
  loc_ABB0AA: ExitProcCbHresult
End Function

Public Function ValidaEliminarInmueble(CodiZoin) '9FFD88
  'Data Table: 4269C8
  loc_9FFD60: ZeroRetVal
  loc_9FFD62: FLdRfVar var_90
  loc_9FFD65: FLdI2 CodiZoin
  loc_9FFD68: FLdRfVar var_8C
  loc_9FFD6B: NewIfNullPr clsInmueble
  loc_9FFD6E: from_stack_2v = clsInmueble.ValidaEliminarZonaInmu(from_stack_1v)
  loc_9FFD73: FLdZeroAd var_90
  loc_9FFD76: FStStr var_88
  loc_9FFD79: LitNothing
  loc_9FFD7B: CastAd
  loc_9FFD7E: FStAdFunc var_8C
  loc_9FFD81: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E6208
  'Data Table: 4269C8
  loc_9E61EC: ILdRf pError
  loc_9E61EF: FStAd var_88 
  loc_9E61F3: ILdRf pRecordset
  loc_9E61F6: FStAd var_8C 
  loc_9E61FA: FLdPr Me
  loc_9E61FD: RaiseEvent
  loc_9E6205: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9B3C0
  'Data Table: 4269C8
  loc_A9B300: ILdRf pRecordset
  loc_A9B303: FStAd var_88 
  loc_A9B307: ILdRf adReason
  loc_A9B30A: FStR4 var_90
  loc_A9B30D: ILdRf var_90
  loc_A9B310: LitI4 1
  loc_A9B315: EqI4
  loc_A9B316: BranchF loc_A9B31C
  loc_A9B319: Branch loc_A9B3AF
  loc_A9B31C: ILdRf var_90
  loc_A9B31F: LitI4 9
  loc_A9B324: EqI4
  loc_A9B325: BranchF loc_A9B32B
  loc_A9B328: Branch loc_A9B3AF
  loc_A9B32B: ILdRf var_90
  loc_A9B32E: LitI4 2
  loc_A9B333: EqI4
  loc_A9B334: BranchF loc_A9B33A
  loc_A9B337: Branch loc_A9B3AF
  loc_A9B33A: ILdRf var_90
  loc_A9B33D: LitI4 &HB
  loc_A9B342: EqI4
  loc_A9B343: BranchF loc_A9B349
  loc_A9B346: Branch loc_A9B3AF
  loc_A9B349: ILdRf var_90
  loc_A9B34C: LitI4 &HA
  loc_A9B351: EqI4
  loc_A9B352: BranchF loc_A9B358
  loc_A9B355: Branch loc_A9B3AF
  loc_A9B358: ILdRf var_90
  loc_A9B35B: LitI4 7
  loc_A9B360: EqI4
  loc_A9B361: BranchF loc_A9B367
  loc_A9B364: Branch loc_A9B3AF
  loc_A9B367: ILdRf var_90
  loc_A9B36A: LitI4 8
  loc_A9B36F: EqI4
  loc_A9B370: BranchF loc_A9B376
  loc_A9B373: Branch loc_A9B3AF
  loc_A9B376: ILdRf var_90
  loc_A9B379: LitI4 5
  loc_A9B37E: EqI4
  loc_A9B37F: BranchF loc_A9B385
  loc_A9B382: Branch loc_A9B3AF
  loc_A9B385: ILdRf var_90
  loc_A9B388: LitI4 6
  loc_A9B38D: EqI4
  loc_A9B38E: BranchF loc_A9B394
  loc_A9B391: Branch loc_A9B3AF
  loc_A9B394: ILdRf var_90
  loc_A9B397: LitI4 4
  loc_A9B39C: EqI4
  loc_A9B39D: BranchF loc_A9B3A3
  loc_A9B3A0: Branch loc_A9B3AF
  loc_A9B3A3: ILdRf var_90
  loc_A9B3A6: LitI4 3
  loc_A9B3AB: EqI4
  loc_A9B3AC: BranchF loc_A9B3AF
  loc_A9B3AF: FLdI2 var_8A
  loc_A9B3B2: BranchF loc_A9B3BD
  loc_A9B3B5: LitI4 4
  loc_A9B3BA: IStI4 adStatus
  loc_A9B3BD: ExitProcHresult
  loc_A9B3BE: ModI2
End Sub

Private Function Proc_92_33_9F02C0() '9F02C0
  'Data Table: 4269C8
  loc_9F029C: LitStr "Primary"
  loc_9F029F: FLdPr Me
  loc_9F02A2: LateIdLdVar var_94 DispID_4 0
  loc_9F02A9: CastAdVar Me
  loc_9F02AD: FStAdFunc var_98
  loc_9F02B0: FLdPr var_98
  loc_9F02B8: FFree1Ad var_98
  loc_9F02BB: FFree1Var var_94 = ""
  loc_9F02BE: ExitProcHresult
End Function

Private Function Proc_92_34_9F0D88(arg_C) '9F0D88
  'Data Table: 4269C8
  loc_9F0D64: ILdI4 arg_C
  loc_9F0D67: FStStrCopy var_88
  loc_9F0D6A: ILdRf var_88
  loc_9F0D6D: LitStr "Primary"
  loc_9F0D70: EqStr
  loc_9F0D72: BranchF loc_9F0D87
  loc_9F0D75: FLdRfVar var_8C
  loc_9F0D78: FLdPr Me
  loc_9F0D7B: from_stack_1v = clszonainmu.global_4352336Get()
  loc_9F0D80: FLdZeroAd var_8C
  loc_9F0D83: IStAdFunc
  loc_9F0D87: ExitProcHresult
End Function

Public Function global_4352336Get() '426D50
  global_4352336Get = global_4352336
End Function

Public Sub global_4352336Put(Value) '426D6A
  global_4352336 = Value
End Sub

Public Sub global_4352336Set(Value) '426D84
  global_4352336 = Value
End Sub

Public Function global_4352336Get() '426D9E
  global_4352336Get = global_4352336
End Function

Public Sub global_4352336Put(Value) '426DB8
  global_4352336 = Value
End Sub

Public Sub global_4352336Set(Value) '426DD2
  global_4352336 = Value
End Sub

Public Function global_4352336Get() '426DEC
  global_4352336Get = global_4352336
End Function

Public Sub global_4352336Put(Value) '426E06
  global_4352336 = Value
End Sub

Public Sub global_4352336Set(Value) '426E20
  global_4352336 = Value
End Sub
