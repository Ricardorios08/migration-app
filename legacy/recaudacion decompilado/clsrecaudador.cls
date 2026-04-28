VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsrecaudador"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0CC24
  'Data Table: 4252E0
  loc_A0CBE8: FLdRfVar var_8C
  loc_A0CBEB: FLdRfVar var_88
  loc_A0CBEE: FLdPr Me
  loc_A0CBF1: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A0CBF6: FLdPr var_88
  loc_A0CBF9:  = Me.RecordCount
  loc_A0CBFE: ILdRf var_8C
  loc_A0CC01: LitI4 0
  loc_A0CC06: GtI4
  loc_A0CC07: FFree1Ad var_88
  loc_A0CC0A: BranchF loc_A0CC23
  loc_A0CC0D: FLdRfVar var_88
  loc_A0CC10: FLdPr Me
  loc_A0CC13: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A0CC18: FLdPr var_88
  loc_A0CC1B: Me.MoveFirst
  loc_A0CC20: FFree1Ad var_88
  loc_A0CC23: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0CBB4
  'Data Table: 4252E0
  loc_A0CB78: FLdRfVar var_8C
  loc_A0CB7B: FLdRfVar var_88
  loc_A0CB7E: FLdPr Me
  loc_A0CB81: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A0CB86: FLdPr var_88
  loc_A0CB89:  = Me.RecordCount
  loc_A0CB8E: ILdRf var_8C
  loc_A0CB91: LitI4 0
  loc_A0CB96: GtI4
  loc_A0CB97: FFree1Ad var_88
  loc_A0CB9A: BranchF loc_A0CBB3
  loc_A0CB9D: FLdRfVar var_88
  loc_A0CBA0: FLdPr Me
  loc_A0CBA3: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A0CBA8: FLdPr var_88
  loc_A0CBAB: Me.MoveLast
  loc_A0CBB0: FFree1Ad var_88
  loc_A0CBB3: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9E088
  'Data Table: 4252E0
  loc_A9DFCC: FLdRfVar var_8A
  loc_A9DFCF: FLdRfVar var_88
  loc_A9DFD2: FLdPr Me
  loc_A9DFD5: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A9DFDA: FLdPr var_88
  loc_A9DFDD:  = Me.EOF
  loc_A9DFE2: FLdI2 var_8A
  loc_A9DFE5: NotI4
  loc_A9DFE6: FLdRfVar var_94
  loc_A9DFE9: FLdRfVar var_90
  loc_A9DFEC: FLdPr Me
  loc_A9DFEF: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A9DFF4: FLdPr var_90
  loc_A9DFF7:  = Me.RecordCount
  loc_A9DFFC: ILdRf var_94
  loc_A9DFFF: LitI4 0
  loc_A9E004: GtI4
  loc_A9E005: AndI4
  loc_A9E006: FFreeAd var_88 = ""
  loc_A9E00D: BranchF loc_A9E026
  loc_A9E010: FLdRfVar var_88
  loc_A9E013: FLdPr Me
  loc_A9E016: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A9E01B: FLdPr var_88
  loc_A9E01E: Me.MoveNext
  loc_A9E023: FFree1Ad var_88
  loc_A9E026: FLdRfVar var_8A
  loc_A9E029: FLdRfVar var_88
  loc_A9E02C: FLdPr Me
  loc_A9E02F: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A9E034: FLdPr var_88
  loc_A9E037:  = Me.EOF
  loc_A9E03C: FLdI2 var_8A
  loc_A9E03F: FLdRfVar var_94
  loc_A9E042: FLdRfVar var_90
  loc_A9E045: FLdPr Me
  loc_A9E048: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A9E04D: FLdPr var_90
  loc_A9E050:  = Me.RecordCount
  loc_A9E055: ILdRf var_94
  loc_A9E058: LitI4 0
  loc_A9E05D: GtI4
  loc_A9E05E: AndI4
  loc_A9E05F: FFreeAd var_88 = ""
  loc_A9E066: BranchF loc_A9E084
  loc_A9E069: ImpAdCallFPR4 Beep()
  loc_A9E06E: FLdRfVar var_88
  loc_A9E071: FLdPr Me
  loc_A9E074: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A9E079: FLdPr var_88
  loc_A9E07C: Me.MoveLast
  loc_A9E081: FFree1Ad var_88
  loc_A9E084: ExitProcHresult
  loc_A9E085: CI4UI1
End Sub

Public Sub MoveSiguiente() '9D3804
  'Data Table: 4252E0
  loc_9D37EC: FLdRfVar var_88
  loc_9D37EF: FLdPr Me
  loc_9D37F2: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_9D37F7: FLdPr var_88
  loc_9D37FA: Me.MoveNext
  loc_9D37FF: FFree1Ad var_88
  loc_9D3802: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E9D70
  'Data Table: 4252E0
  loc_9E9D50: LitVar_Missing var_98
  loc_9E9D53: PopAdLdVar
  loc_9E9D54: ILdI2 iValor
  loc_9E9D57: CI4UI1
  loc_9E9D58: FLdRfVar var_88
  loc_9E9D5B: FLdPr Me
  loc_9E9D5E: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_9E9D63: FLdPr var_88
  loc_9E9D66: Me.Move from_stack_1, from_stack_2
  loc_9E9D6B: FFree1Ad var_88
  loc_9E9D6E: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9E17C
  'Data Table: 4252E0
  loc_A9E0C0: FLdRfVar var_8A
  loc_A9E0C3: FLdRfVar var_88
  loc_A9E0C6: FLdPr Me
  loc_A9E0C9: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A9E0CE: FLdPr var_88
  loc_A9E0D1:  = Me.BOF
  loc_A9E0D6: FLdI2 var_8A
  loc_A9E0D9: NotI4
  loc_A9E0DA: FLdRfVar var_94
  loc_A9E0DD: FLdRfVar var_90
  loc_A9E0E0: FLdPr Me
  loc_A9E0E3: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A9E0E8: FLdPr var_90
  loc_A9E0EB:  = Me.RecordCount
  loc_A9E0F0: ILdRf var_94
  loc_A9E0F3: LitI4 0
  loc_A9E0F8: GtI4
  loc_A9E0F9: AndI4
  loc_A9E0FA: FFreeAd var_88 = ""
  loc_A9E101: BranchF loc_A9E11A
  loc_A9E104: FLdRfVar var_88
  loc_A9E107: FLdPr Me
  loc_A9E10A: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A9E10F: FLdPr var_88
  loc_A9E112: Me.MovePrevious
  loc_A9E117: FFree1Ad var_88
  loc_A9E11A: FLdRfVar var_8A
  loc_A9E11D: FLdRfVar var_88
  loc_A9E120: FLdPr Me
  loc_A9E123: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A9E128: FLdPr var_88
  loc_A9E12B:  = Me.BOF
  loc_A9E130: FLdI2 var_8A
  loc_A9E133: FLdRfVar var_94
  loc_A9E136: FLdRfVar var_90
  loc_A9E139: FLdPr Me
  loc_A9E13C: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A9E141: FLdPr var_90
  loc_A9E144:  = Me.RecordCount
  loc_A9E149: ILdRf var_94
  loc_A9E14C: LitI4 0
  loc_A9E151: GtI4
  loc_A9E152: AndI4
  loc_A9E153: FFreeAd var_88 = ""
  loc_A9E15A: BranchF loc_A9E178
  loc_A9E15D: ImpAdCallFPR4 Beep()
  loc_A9E162: FLdRfVar var_88
  loc_A9E165: FLdPr Me
  loc_A9E168: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A9E16D: FLdPr var_88
  loc_A9E170: Me.MoveFirst
  loc_A9E175: FFree1Ad var_88
  loc_A9E178: ExitProcHresult
  loc_A9E179: ExitProcCy
  loc_A9E17A: LitI2_Byte
End Sub

Public Property Get EOF() '9FB504
  'Data Table: 4252E0
  loc_9FB4DC: FLdRfVar var_8E
  loc_9FB4DF: FLdRfVar var_8C
  loc_9FB4E2: FLdPr Me
  loc_9FB4E5: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_9FB4EA: FLdPr var_8C
  loc_9FB4ED:  = Me.EOF
  loc_9FB4F2: FLdI2 var_8E
  loc_9FB4F5: FStI2 var_86
  loc_9FB4F8: FFree1Ad var_8C
  loc_9FB4FB: ExitProcCbHresult
  loc_9FB501: ModI2
End Sub

Public Property Get BOF() '9FB5BC
  'Data Table: 4252E0
  loc_9FB594: FLdRfVar var_8E
  loc_9FB597: FLdRfVar var_8C
  loc_9FB59A: FLdPr Me
  loc_9FB59D: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_9FB5A2: FLdPr var_8C
  loc_9FB5A5:  = Me.BOF
  loc_9FB5AA: FLdI2 var_8E
  loc_9FB5AD: FStI2 var_86
  loc_9FB5B0: FFree1Ad var_8C
  loc_9FB5B3: ExitProcCbHresult
  loc_9FB5B9: CStrVarTmp
  loc_9FB5BA: FStStrNoPop arg_689C
End Sub

Public Sub Sort(sOrden) '9E389C
  'Data Table: 4252E0
  loc_9E3880: ILdI4 sOrden
  loc_9E3883: FLdRfVar var_88
  loc_9E3886: FLdPr Me
  loc_9E3889: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_9E388E: FLdPr var_88
  loc_9E3891: Me.Sort = from_stack_1
  loc_9E3896: FFree1Ad var_88
  loc_9E3899: ExitProcHresult
End Sub

Public Sub Find(sFind) '9FB72C
  'Data Table: 4252E0
  loc_9FB704: LitVar_Missing var_98
  loc_9FB707: PopAdLdVar
  loc_9FB708: LitI4 1
  loc_9FB70D: LitI4 0
  loc_9FB712: ILdI4 sFind
  loc_9FB715: FLdRfVar var_88
  loc_9FB718: FLdPr Me
  loc_9FB71B: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_9FB720: FLdPr var_88
  loc_9FB723: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9FB728: FFree1Ad var_88
  loc_9FB72B: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9FBB7C
  'Data Table: 4252E0
  loc_9FBB54: FLdRfVar var_90
  loc_9FBB57: FLdRfVar var_8C
  loc_9FBB5A: FLdPr Me
  loc_9FBB5D: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_9FBB62: FLdPr var_8C
  loc_9FBB65:  = Me.AbsolutePosition
  loc_9FBB6A: ILdRf var_90
  loc_9FBB6D: FStR4 var_88
  loc_9FBB70: FFree1Ad var_8C
  loc_9FBB73: ExitProcCbHresult
  loc_9FBB79: ILdPr
End Sub

Public Property Get RecordCount() '9FBB20
  'Data Table: 4252E0
  loc_9FBAF8: FLdRfVar var_90
  loc_9FBAFB: FLdRfVar var_8C
  loc_9FBAFE: FLdPr Me
  loc_9FBB01: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_9FBB06: FLdPr var_8C
  loc_9FBB09:  = Me.RecordCount
  loc_9FBB0E: ILdRf var_90
  loc_9FBB11: FStR4 var_88
  loc_9FBB14: FFree1Ad var_8C
  loc_9FBB17: ExitProcCbHresult
  loc_9FBB1D: FLdPr Me
End Sub

Public Sub AddNew(CodiReca, DetaReca, MatrReca) 'A71E1C
  'Data Table: 4252E0
  loc_A71DC4: ILdRf DetaReca
  loc_A71DC7: FStStrCopy var_88
  loc_A71DCA: LitStr "INSERT INTO recaudador (CodiReca, DetaReca, MatrReca) VALUES ("
  loc_A71DCD: ILdRf CodiReca
  loc_A71DD0: CStrI4
  loc_A71DD2: FStStrNoPop var_8C
  loc_A71DD5: ConcatStr
  loc_A71DD6: FStStrNoPop var_90
  loc_A71DD9: LitStr ",'"
  loc_A71DDC: ConcatStr
  loc_A71DDD: FStStrNoPop var_94
  loc_A71DE0: ILdRf var_88
  loc_A71DE3: ConcatStr
  loc_A71DE4: FStStrNoPop var_98
  loc_A71DE7: LitStr "',"
  loc_A71DEA: ConcatStr
  loc_A71DEB: FStStrNoPop var_9C
  loc_A71DEE: ILdRf MatrReca
  loc_A71DF1: CStrI4
  loc_A71DF3: FStStrNoPop var_A0
  loc_A71DF6: ConcatStr
  loc_A71DF7: FStStrNoPop var_A4
  loc_A71DFA: LitStr ");"
  loc_A71DFD: ConcatStr
  loc_A71DFE: FStStrNoPop var_A8
  loc_A71E01: Call EjecutarRs2(from_stack_1v)
  loc_A71E06: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A71E19: ExitProcHresult
  loc_A71E1A: ILdPr
End Sub

Public Sub Delete() 'A23960
  'Data Table: 4252E0
  loc_A23918: FLdRfVar var_8C
  loc_A2391B: FLdRfVar var_88
  loc_A2391E: FLdPr Me
  loc_A23921: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A23926: FLdPr var_88
  loc_A23929:  = Me.RecordCount
  loc_A2392E: ILdRf var_8C
  loc_A23931: LitI4 0
  loc_A23936: GtI4
  loc_A23937: FFree1Ad var_88
  loc_A2393A: BranchF loc_A2395D
  loc_A2393D: LitI4 1
  loc_A23942: FLdRfVar var_88
  loc_A23945: FLdPr Me
  loc_A23948: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A2394D: FLdPr var_88
  loc_A23950: Me.Delete
  loc_A23955: FFree1Ad var_88
  loc_A23958: Call MoveNext()
  loc_A2395D: ExitProcHresult
End Sub

Public Sub Requery() 'A04BB0
  'Data Table: 4252E0
  loc_A04B80: LitI4 -1
  loc_A04B85: FLdRfVar var_88
  loc_A04B88: FLdPr Me
  loc_A04B8B: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A04B90: FLdPr var_88
  loc_A04B93: Me.Requery from_stack_1
  loc_A04B98: FFree1Ad var_88
  loc_A04B9B: LitVarStr var_98, "Primary"
  loc_A04BA0: PopAdLdVar
  loc_A04BA1: FLdPr Me
  loc_A04BA4: LateIdCall
  loc_A04BAC: ExitProcHresult
End Sub

Public Sub Update() 'A239D8
  'Data Table: 4252E0
  loc_A23994: FLdRfVar var_88
  loc_A23997: FLdPr Me
  loc_A2399A: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A2399F: FLdZeroAd var_88
  loc_A239A2: FStAdFunc var_8C
  loc_A239A5: LitI4 3
  loc_A239AA: FLdPr var_8C
  loc_A239AD: Me.UpdateBatch
  loc_A239B2: FLdRfVar var_90
  loc_A239B5: FLdPr var_8C
  loc_A239B8:  = Me.EditMode
  loc_A239BD: ILdRf var_90
  loc_A239C0: LitI4 2
  loc_A239C5: EqI4
  loc_A239C6: BranchF loc_A239CE
  loc_A239C9: Call MoveLast()
  loc_A239CE: LitNothing
  loc_A239D0: FStAd var_8C 
  loc_A239D4: ExitProcHresult
End Sub

Public Sub Cancel() 'A4641C
  'Data Table: 4252E0
  loc_A463C8: FLdRfVar var_88
  loc_A463CB: FLdPr Me
  loc_A463CE: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A463D3: FLdZeroAd var_88
  loc_A463D6: FStAdFunc var_8C
  loc_A463D9: FLdRfVar var_90
  loc_A463DC: FLdPr var_8C
  loc_A463DF:  = Me.RecordCount
  loc_A463E4: ILdRf var_90
  loc_A463E7: LitI4 0
  loc_A463EC: GtI4
  loc_A463ED: BranchF loc_A46414
  loc_A463F0: FLdPr var_8C
  loc_A463F3: Me.CancelUpdate
  loc_A463F8: FLdRfVar var_90
  loc_A463FB: FLdPr var_8C
  loc_A463FE:  = Me.EditMode
  loc_A46403: ILdRf var_90
  loc_A46406: LitI4 2
  loc_A4640B: EqI4
  loc_A4640C: BranchF loc_A46414
  loc_A4640F: Call MoveFirst()
  loc_A46414: LitNothing
  loc_A46416: FStAd var_8C 
  loc_A4641A: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FBF74
  'Data Table: 4252E0
  loc_9FBF48: FLdRfVar var_90
  loc_9FBF4B: FLdRfVar var_8C
  loc_9FBF4E: FLdPr Me
  loc_9FBF51: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_9FBF56: FLdPr var_8C
  loc_9FBF59:  = Me.EditMode
  loc_9FBF5E: ILdRf var_90
  loc_9FBF61: LitI4 0
  loc_9FBF66: NeI4
  loc_9FBF67: FStI2 var_86
  loc_9FBF6A: FFree1Ad var_8C
  loc_9FBF6D: ExitProcCbHresult
  loc_9FBF73: ExitProcCy
End Sub

Public Sub RedefineRS(sSelect) 'A71B88
  'Data Table: 4252E0
  loc_A71B14: ILdRf sSelect
  loc_A71B17: FStStrCopy var_88
  loc_A71B1A: LitNothing
  loc_A71B1C: CastAd
  loc_A71B1F: FStAdFuncNoPop
  loc_A71B22: FLdPr Me
  loc_A71B25: Call clsrecaudador.global_4346472Set(from_stack_1v)
  loc_A71B2A: FFree1Ad var_8C
  loc_A71B2D: New Recordset
  loc_A71B31: FStAdFuncNoPop
  loc_A71B34: FLdPr Me
  loc_A71B37: Call clsrecaudador.global_4346472Set(from_stack_1v)
  loc_A71B3C: FFree1Ad var_8C
  loc_A71B3F: LitI4 -1
  loc_A71B44: LitI4 3
  loc_A71B49: LitI4 3
  loc_A71B4E: ImpAdLdI4 MemVar_D9301C
  loc_A71B51: CVarAd
  loc_A71B55: PopAdLdVar
  loc_A71B56: ILdRf var_88
  loc_A71B59: CVarStr var_9C
  loc_A71B5C: PopAdLdVar
  loc_A71B5D: FLdRfVar var_8C
  loc_A71B60: FLdPr Me
  loc_A71B63: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A71B68: FLdPr var_8C
  loc_A71B6B: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A71B70: FFree1Ad var_8C
  loc_A71B73: LitVarStr var_9C, "Primary"
  loc_A71B78: PopAdLdVar
  loc_A71B79: FLdPr Me
  loc_A71B7C: LateIdCall
  loc_A71B84: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A5A620
  'Data Table: 4252E0
  loc_A5A5C0: ILdRf sSelect
  loc_A5A5C3: FStStrCopy var_88
  loc_A5A5C6: LitNothing
  loc_A5A5C8: CastAd
  loc_A5A5CB: FStAdFuncNoPop
  loc_A5A5CE: FLdPr Me
  loc_A5A5D1: Call clsrecaudador.global_4346472Set(from_stack_1v)
  loc_A5A5D6: FFree1Ad var_8C
  loc_A5A5D9: New Recordset
  loc_A5A5DD: FStAdFuncNoPop
  loc_A5A5E0: FLdPr Me
  loc_A5A5E3: Call clsrecaudador.global_4346472Set(from_stack_1v)
  loc_A5A5E8: FFree1Ad var_8C
  loc_A5A5EB: LitI4 -1
  loc_A5A5F0: LitI4 3
  loc_A5A5F5: LitI4 3
  loc_A5A5FA: ImpAdLdI4 MemVar_D9301C
  loc_A5A5FD: CVarAd
  loc_A5A601: PopAdLdVar
  loc_A5A602: ILdRf var_88
  loc_A5A605: CVarStr var_9C
  loc_A5A608: PopAdLdVar
  loc_A5A609: FLdRfVar var_8C
  loc_A5A60C: FLdPr Me
  loc_A5A60F: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A5A614: FLdPr var_8C
  loc_A5A617: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5A61C: FFree1Ad var_8C
  loc_A5A61F: ExitProcHresult
End Sub

Public Property Get DataSource() 'A09F5C
  'Data Table: 4252E0
  loc_A09F2C: ZeroRetVal
  loc_A09F2E: FLdRfVar var_90
  loc_A09F31: FLdRfVar var_8C
  loc_A09F34: FLdPr Me
  loc_A09F37: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A09F3C: FLdPr var_8C
  loc_A09F3F:  = Me.DataSource
  loc_A09F44: ILdRf var_90
  loc_A09F47: CastAd
  loc_A09F4A: FStAdFunc var_88
  loc_A09F4D: FFreeAd var_8C = ""
  loc_A09F54: ExitProcCbHresult
  loc_A09F5A: NewIfNullPr Me
End Sub

Public Property Get EditMode() '9FBE5C
  'Data Table: 4252E0
  loc_9FBE34: FLdRfVar var_90
  loc_9FBE37: FLdRfVar var_8C
  loc_9FBE3A: FLdPr Me
  loc_9FBE3D: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_9FBE42: FLdPr var_8C
  loc_9FBE45:  = Me.EditMode
  loc_9FBE4A: ILdRf var_90
  loc_9FBE4D: FStR4 var_88
  loc_9FBE50: FFree1Ad var_8C
  loc_9FBE53: ExitProcCbHresult
  loc_9FBE59: DOC
End Sub

Public Property Get CodiReca() 'A44C04
  'Data Table: 4252E0
  loc_A44BB8: FLdRfVar var_B4
  loc_A44BBB: FLdRfVar var_A4
  loc_A44BBE: LitVarStr var_A0, "CodiReca"
  loc_A44BC3: PopAdLdVar
  loc_A44BC4: FLdRfVar var_90
  loc_A44BC7: FLdRfVar var_8C
  loc_A44BCA: FLdPr Me
  loc_A44BCD: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A44BD2: FLdPr var_8C
  loc_A44BD5:  = Me.Fields
  loc_A44BDA: FLdPr var_90
  loc_A44BDD: from_stack_2 = Me.Item(from_stack_1)
  loc_A44BE2: FLdPr var_A4
  loc_A44BE5:  = Me.Value
  loc_A44BEA: FLdRfVar var_B4
  loc_A44BED: CI2Var
  loc_A44BEE: FStI2 var_86
  loc_A44BF1: FFreeAd var_8C = "": var_90 = ""
  loc_A44BFA: FFree1Var var_B4 = ""
  loc_A44BFD: ExitProcCbHresult
End Sub

Public Property Let CodiReca(vDato) '9EB888
  'Data Table: 4252E0
  loc_9EB864: FLdI2 vDato
  loc_9EB867: CVarI2 var_A8
  loc_9EB86A: PopAdLdVar
  loc_9EB86B: LitVarStr var_98, "CodiReca"
  loc_9EB870: PopAdLdVar
  loc_9EB871: FLdRfVar var_88
  loc_9EB874: FLdPr Me
  loc_9EB877: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_9EB87C: FLdPr var_88
  loc_9EB87F: Me.Collect = from_stack_1
  loc_9EB884: FFree1Ad var_88
  loc_9EB887: ExitProcHresult
End Sub

Public Property Get DetaReca() 'A56208
  'Data Table: 4252E0
  loc_A561B8: ZeroRetVal
  loc_A561BA: FLdRfVar var_B4
  loc_A561BD: FLdRfVar var_A4
  loc_A561C0: LitVarStr var_A0, "DetaReca"
  loc_A561C5: PopAdLdVar
  loc_A561C6: FLdRfVar var_90
  loc_A561C9: FLdRfVar var_8C
  loc_A561CC: FLdPr Me
  loc_A561CF: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A561D4: FLdPr var_8C
  loc_A561D7:  = Me.Fields
  loc_A561DC: FLdPr var_90
  loc_A561DF: from_stack_2 = Me.Item(from_stack_1)
  loc_A561E4: FLdPr var_A4
  loc_A561E7:  = Me.Value
  loc_A561EC: FLdRfVar var_B4
  loc_A561EF: CStrVarTmp
  loc_A561F0: FStStr var_88
  loc_A561F3: FFreeAd var_8C = "": var_90 = ""
  loc_A561FC: FFree1Var var_B4 = ""
  loc_A561FF: ExitProcCbHresult
End Sub

Public Property Let DetaReca(vDato) 'A04120
  'Data Table: 4252E0
  loc_A040F4: ILdRf vDato
  loc_A040F7: FStStrCopy var_88
  loc_A040FA: ILdRf var_88
  loc_A040FD: CVarStr var_AC
  loc_A04100: PopAdLdVar
  loc_A04101: LitVarStr var_9C, "DetaReca"
  loc_A04106: PopAdLdVar
  loc_A04107: FLdRfVar var_8C
  loc_A0410A: FLdPr Me
  loc_A0410D: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A04112: FLdPr var_8C
  loc_A04115: Me.Collect = from_stack_1
  loc_A0411A: FFree1Ad var_8C
  loc_A0411D: ExitProcHresult
  loc_A0411E: FStI2 arg_6800
End Sub

Public Property Get MatrReca() 'A46B30
  'Data Table: 4252E0
  loc_A46AE4: FLdRfVar var_B4
  loc_A46AE7: FLdRfVar var_A4
  loc_A46AEA: LitVarStr var_A0, "MatrReca"
  loc_A46AEF: PopAdLdVar
  loc_A46AF0: FLdRfVar var_90
  loc_A46AF3: FLdRfVar var_8C
  loc_A46AF6: FLdPr Me
  loc_A46AF9: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A46AFE: FLdPr var_8C
  loc_A46B01:  = Me.Fields
  loc_A46B06: FLdPr var_90
  loc_A46B09: from_stack_2 = Me.Item(from_stack_1)
  loc_A46B0E: FLdPr var_A4
  loc_A46B11:  = Me.Value
  loc_A46B16: FLdRfVar var_B4
  loc_A46B19: CI4Var
  loc_A46B1B: FStR4 var_88
  loc_A46B1E: FFreeAd var_8C = "": var_90 = ""
  loc_A46B27: FFree1Var var_B4 = ""
  loc_A46B2A: ExitProcCbHresult
End Sub

Public Property Let MatrReca(vDato) '9FBD48
  'Data Table: 4252E0
  loc_9FBD20: ILdRf vDato
  loc_9FBD23: CVarI4
  loc_9FBD27: PopAdLdVar
  loc_9FBD28: LitVarStr var_98, "MatrReca"
  loc_9FBD2D: PopAdLdVar
  loc_9FBD2E: FLdRfVar var_88
  loc_9FBD31: FLdPr Me
  loc_9FBD34: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_9FBD39: FLdPr var_88
  loc_9FBD3C: Me.Collect = from_stack_1
  loc_9FBD41: FFree1Ad var_88
  loc_9FBD44: ExitProcHresult
End Sub

Public Function ValidaClave(CodiReca) 'A9E450
  'Data Table: 4252E0
  loc_A9E39C: ZeroRetVal
  loc_A9E39E: New Recordset
  loc_A9E3A2: FStAdFuncNoPop
  loc_A9E3A5: FLdPr Me
  loc_A9E3A8: Call clsrecaudador.global_4346472Set(from_stack_1v)
  loc_A9E3AD: FFree1Ad var_8C
  loc_A9E3B0: LitI4 -1
  loc_A9E3B5: LitI4 3
  loc_A9E3BA: LitI4 3
  loc_A9E3BF: ImpAdLdI4 MemVar_D9301C
  loc_A9E3C2: CVarAd
  loc_A9E3C6: PopAdLdVar
  loc_A9E3C7: LitStr "SELECT * FROM recaudador WHERE CodiReca = "
  loc_A9E3CA: FLdI2 CodiReca
  loc_A9E3CD: CStrUI1
  loc_A9E3CF: FStStrNoPop var_90
  loc_A9E3D2: ConcatStr
  loc_A9E3D3: CVarStr var_A0
  loc_A9E3D6: PopAdLdVar
  loc_A9E3D7: FLdRfVar var_8C
  loc_A9E3DA: FLdPr Me
  loc_A9E3DD: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A9E3E2: FLdPr var_8C
  loc_A9E3E5: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A9E3EA: FFree1Str var_90
  loc_A9E3ED: FFree1Ad var_8C
  loc_A9E3F0: FFree1Var var_A0 = ""
  loc_A9E3F3: FLdRfVar var_B4
  loc_A9E3F6: FLdRfVar var_8C
  loc_A9E3F9: FLdPr Me
  loc_A9E3FC: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A9E401: FLdPr var_8C
  loc_A9E404:  = Me.RecordCount
  loc_A9E409: ILdRf var_B4
  loc_A9E40C: LitI4 0
  loc_A9E411: GtI4
  loc_A9E412: FFree1Ad var_8C
  loc_A9E415: BranchF loc_A9E41E
  loc_A9E418: LitStr "El recaudador YA EXISTE. Reintente..."
  loc_A9E41B: FStStrCopy var_88
  loc_A9E41E: FLdRfVar var_8C
  loc_A9E421: FLdPr Me
  loc_A9E424: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A9E429: FLdPr var_8C
  loc_A9E42C: Me.Close
  loc_A9E431: FFree1Ad var_8C
  loc_A9E434: LitNothing
  loc_A9E436: CastAd
  loc_A9E439: FStAdFuncNoPop
  loc_A9E43C: FLdPr Me
  loc_A9E43F: Call clsrecaudador.global_4346472Set(from_stack_1v)
  loc_A9E444: FFree1Ad var_8C
  loc_A9E447: ExitProcCbHresult
  loc_A9E44D: LitVar_Missing ValidaClave00
End Function

Public Function NuevoRegistro() 'ABB310
  'Data Table: 4252E0
  loc_ABB220: New Recordset
  loc_ABB224: FStAdFuncNoPop
  loc_ABB227: FLdPr Me
  loc_ABB22A: Call clsrecaudador.global_4346472Set(from_stack_1v)
  loc_ABB22F: FFree1Ad var_8C
  loc_ABB232: LitI4 -1
  loc_ABB237: LitI4 3
  loc_ABB23C: LitI4 3
  loc_ABB241: ImpAdLdI4 MemVar_D9301C
  loc_ABB244: CVarAd
  loc_ABB248: PopAdLdVar
  loc_ABB249: LitVarStr var_9C, "SELECT CodiReca FROM recaudador ORDER BY CodiReca DESC "
  loc_ABB24E: PopAdLdVar
  loc_ABB24F: FLdRfVar var_8C
  loc_ABB252: FLdPr Me
  loc_ABB255: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_ABB25A: FLdPr var_8C
  loc_ABB25D: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_ABB262: FFree1Ad var_8C
  loc_ABB265: FLdRfVar var_B0
  loc_ABB268: FLdRfVar var_8C
  loc_ABB26B: FLdPr Me
  loc_ABB26E: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_ABB273: FLdPr var_8C
  loc_ABB276:  = Me.RecordCount
  loc_ABB27B: ILdRf var_B0
  loc_ABB27E: LitI4 0
  loc_ABB283: GtI4
  loc_ABB284: FFree1Ad var_8C
  loc_ABB287: BranchF loc_ABB2D9
  loc_ABB28A: FLdRfVar var_C8
  loc_ABB28D: FLdRfVar var_B8
  loc_ABB290: LitVarStr var_9C, "CodiReca"
  loc_ABB295: PopAdLdVar
  loc_ABB296: FLdRfVar var_B4
  loc_ABB299: FLdRfVar var_8C
  loc_ABB29C: FLdPr Me
  loc_ABB29F: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_ABB2A4: FLdPr var_8C
  loc_ABB2A7:  = Me.Fields
  loc_ABB2AC: FLdPr var_B4
  loc_ABB2AF: from_stack_2 = Me.Item(from_stack_1)
  loc_ABB2B4: FLdPr var_B8
  loc_ABB2B7:  = Me.Value
  loc_ABB2BC: FLdRfVar var_C8
  loc_ABB2BF: FnCLngVar
  loc_ABB2C1: LitI4 1
  loc_ABB2C6: AddI4
  loc_ABB2C7: FStR4 var_88
  loc_ABB2CA: FFreeAd var_8C = "": var_B4 = ""
  loc_ABB2D3: FFree1Var var_C8 = ""
  loc_ABB2D6: Branch loc_ABB2E1
  loc_ABB2D9: LitI4 1
  loc_ABB2DE: FStR4 var_88
  loc_ABB2E1: FLdRfVar var_8C
  loc_ABB2E4: FLdPr Me
  loc_ABB2E7: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_ABB2EC: FLdPr var_8C
  loc_ABB2EF: Me.Close
  loc_ABB2F4: FFree1Ad var_8C
  loc_ABB2F7: LitNothing
  loc_ABB2F9: CastAd
  loc_ABB2FC: FStAdFuncNoPop
  loc_ABB2FF: FLdPr Me
  loc_ABB302: Call clsrecaudador.global_4346472Set(from_stack_1v)
  loc_ABB307: FFree1Ad var_8C
  loc_ABB30A: ExitProcCbHresult
End Function

Public Sub Encontrar(iCodiReca) 'A751DC
  'Data Table: 4252E0
  loc_A75174: LitStr "CodiReca = "
  loc_A75177: ILdRf iCodiReca
  loc_A7517A: CStrI4
  loc_A7517C: FStStrNoPop var_A8
  loc_A7517F: ConcatStr
  loc_A75180: CVarStr var_B8
  loc_A75183: FStVar var_94
  loc_A75187: FFree1Str var_A8
  loc_A7518A: FLdRfVar var_BC
  loc_A7518D: FLdPr Me
  loc_A75190: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_A75195: FLdZeroAd var_BC
  loc_A75198: FStAdFunc var_C0
  loc_A7519B: FLdVar var_94
  loc_A7519F: FLdPr var_C0
  loc_A751A2: Me.Filter = from_stack_1
  loc_A751A7: FLdRfVar var_B8
  loc_A751AA: FLdPr var_C0
  loc_A751AD:  = Me.Bookmark
  loc_A751B2: FLdRfVar var_B8
  loc_A751B5: FStVar var_A4
  loc_A751B9: LitVarStr var_D0, "CodiReca <> 0"
  loc_A751BE: PopAdLdVar
  loc_A751BF: FLdPr var_C0
  loc_A751C2: Me.Filter = from_stack_1
  loc_A751C7: FLdVar var_A4
  loc_A751CB: FLdPr var_C0
  loc_A751CE: Me.Bookmark = from_stack_1
  loc_A751D3: LitNothing
  loc_A751D5: FStAd var_C0 
  loc_A751D9: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E9DC0
  'Data Table: 4252E0
  loc_9E9DA4: ILdRf pError
  loc_9E9DA7: FStAd var_88 
  loc_9E9DAB: ILdRf pRecordset
  loc_9E9DAE: FStAd var_8C 
  loc_9E9DB2: FLdPr Me
  loc_9E9DB5: RaiseEvent
  loc_9E9DBD: ExitProcHresult
  loc_9E9DBE: CopyBytes
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9E368
  'Data Table: 4252E0
  loc_A9E2A8: ILdRf pRecordset
  loc_A9E2AB: FStAd var_88 
  loc_A9E2AF: ILdRf adReason
  loc_A9E2B2: FStR4 var_90
  loc_A9E2B5: ILdRf var_90
  loc_A9E2B8: LitI4 1
  loc_A9E2BD: EqI4
  loc_A9E2BE: BranchF loc_A9E2C4
  loc_A9E2C1: Branch loc_A9E357
  loc_A9E2C4: ILdRf var_90
  loc_A9E2C7: LitI4 9
  loc_A9E2CC: EqI4
  loc_A9E2CD: BranchF loc_A9E2D3
  loc_A9E2D0: Branch loc_A9E357
  loc_A9E2D3: ILdRf var_90
  loc_A9E2D6: LitI4 2
  loc_A9E2DB: EqI4
  loc_A9E2DC: BranchF loc_A9E2E2
  loc_A9E2DF: Branch loc_A9E357
  loc_A9E2E2: ILdRf var_90
  loc_A9E2E5: LitI4 &HB
  loc_A9E2EA: EqI4
  loc_A9E2EB: BranchF loc_A9E2F1
  loc_A9E2EE: Branch loc_A9E357
  loc_A9E2F1: ILdRf var_90
  loc_A9E2F4: LitI4 &HA
  loc_A9E2F9: EqI4
  loc_A9E2FA: BranchF loc_A9E300
  loc_A9E2FD: Branch loc_A9E357
  loc_A9E300: ILdRf var_90
  loc_A9E303: LitI4 7
  loc_A9E308: EqI4
  loc_A9E309: BranchF loc_A9E30F
  loc_A9E30C: Branch loc_A9E357
  loc_A9E30F: ILdRf var_90
  loc_A9E312: LitI4 8
  loc_A9E317: EqI4
  loc_A9E318: BranchF loc_A9E31E
  loc_A9E31B: Branch loc_A9E357
  loc_A9E31E: ILdRf var_90
  loc_A9E321: LitI4 5
  loc_A9E326: EqI4
  loc_A9E327: BranchF loc_A9E32D
  loc_A9E32A: Branch loc_A9E357
  loc_A9E32D: ILdRf var_90
  loc_A9E330: LitI4 6
  loc_A9E335: EqI4
  loc_A9E336: BranchF loc_A9E33C
  loc_A9E339: Branch loc_A9E357
  loc_A9E33C: ILdRf var_90
  loc_A9E33F: LitI4 4
  loc_A9E344: EqI4
  loc_A9E345: BranchF loc_A9E34B
  loc_A9E348: Branch loc_A9E357
  loc_A9E34B: ILdRf var_90
  loc_A9E34E: LitI4 3
  loc_A9E353: EqI4
  loc_A9E354: BranchF loc_A9E357
  loc_A9E357: FLdI2 var_8A
  loc_A9E35A: BranchF loc_A9E365
  loc_A9E35D: LitI4 4
  loc_A9E362: IStI4 adStatus
  loc_A9E365: ExitProcHresult
End Sub

Private Function Proc_64_33_9FBEB4() '9FBEB4
  'Data Table: 4252E0
  loc_9FBE90: LitStr "Primary"
  loc_9FBE93: FLdPr Me
  loc_9FBE96: LateIdLdVar var_94 DispID_4 0
  loc_9FBE9D: CastAdVar Me
  loc_9FBEA1: FStAdFunc var_98
  loc_9FBEA4: FLdPr var_98
  loc_9FBEAC: FFree1Ad var_98
  loc_9FBEAF: FFree1Var var_94 = ""
  loc_9FBEB2: ExitProcHresult
End Function

Private Function Proc_64_34_9FBDFC(arg_C) '9FBDFC
  'Data Table: 4252E0
  loc_9FBDD8: ILdI4 arg_C
  loc_9FBDDB: FStStrCopy var_88
  loc_9FBDDE: ILdRf var_88
  loc_9FBDE1: LitStr "Primary"
  loc_9FBDE4: EqStr
  loc_9FBDE6: BranchF loc_9FBDFB
  loc_9FBDE9: FLdRfVar var_8C
  loc_9FBDEC: FLdPr Me
  loc_9FBDEF: from_stack_1v = clsrecaudador.global_4346472Get()
  loc_9FBDF4: FLdZeroAd var_8C
  loc_9FBDF7: IStAdFunc
  loc_9FBDFB: ExitProcHresult
End Function

Public Function global_4346472Get() '425658
  global_4346472Get = global_4346472
End Function

Public Sub global_4346472Put(Value) '425672
  global_4346472 = Value
End Sub

Public Sub global_4346472Set(Value) '42568C
  global_4346472 = Value
End Sub

Public Function global_4346472Get() '4256A6
  global_4346472Get = global_4346472
End Function

Public Sub global_4346472Put(Value) '4256C0
  global_4346472 = Value
End Sub

Public Sub global_4346472Set(Value) '4256DA
  global_4346472 = Value
End Sub

Public Function global_4346472Get() '4256F4
  global_4346472Get = global_4346472
End Function

Public Sub global_4346472Put(Value) '42570E
  global_4346472 = Value
End Sub

Public Sub global_4346472Set(Value) '425728
  global_4346472 = Value
End Sub
