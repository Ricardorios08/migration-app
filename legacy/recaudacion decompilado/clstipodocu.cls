VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clstipodocu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0ACA4
  'Data Table: 429064
  loc_A0AC68: FLdRfVar var_8C
  loc_A0AC6B: FLdRfVar var_88
  loc_A0AC6E: FLdPr Me
  loc_A0AC71: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A0AC76: FLdPr var_88
  loc_A0AC79:  = Me.RecordCount
  loc_A0AC7E: ILdRf var_8C
  loc_A0AC81: LitI4 0
  loc_A0AC86: GtI4
  loc_A0AC87: FFree1Ad var_88
  loc_A0AC8A: BranchF loc_A0ACA3
  loc_A0AC8D: FLdRfVar var_88
  loc_A0AC90: FLdPr Me
  loc_A0AC93: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A0AC98: FLdPr var_88
  loc_A0AC9B: Me.MoveFirst
  loc_A0ACA0: FFree1Ad var_88
  loc_A0ACA3: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0AD14
  'Data Table: 429064
  loc_A0ACD8: FLdRfVar var_8C
  loc_A0ACDB: FLdRfVar var_88
  loc_A0ACDE: FLdPr Me
  loc_A0ACE1: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A0ACE6: FLdPr var_88
  loc_A0ACE9:  = Me.RecordCount
  loc_A0ACEE: ILdRf var_8C
  loc_A0ACF1: LitI4 0
  loc_A0ACF6: GtI4
  loc_A0ACF7: FFree1Ad var_88
  loc_A0ACFA: BranchF loc_A0AD13
  loc_A0ACFD: FLdRfVar var_88
  loc_A0AD00: FLdPr Me
  loc_A0AD03: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A0AD08: FLdPr var_88
  loc_A0AD0B: Me.MoveLast
  loc_A0AD10: FFree1Ad var_88
  loc_A0AD13: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9C4E4
  'Data Table: 429064
  loc_A9C428: FLdRfVar var_8A
  loc_A9C42B: FLdRfVar var_88
  loc_A9C42E: FLdPr Me
  loc_A9C431: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A9C436: FLdPr var_88
  loc_A9C439:  = Me.EOF
  loc_A9C43E: FLdI2 var_8A
  loc_A9C441: NotI4
  loc_A9C442: FLdRfVar var_94
  loc_A9C445: FLdRfVar var_90
  loc_A9C448: FLdPr Me
  loc_A9C44B: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A9C450: FLdPr var_90
  loc_A9C453:  = Me.RecordCount
  loc_A9C458: ILdRf var_94
  loc_A9C45B: LitI4 0
  loc_A9C460: GtI4
  loc_A9C461: AndI4
  loc_A9C462: FFreeAd var_88 = ""
  loc_A9C469: BranchF loc_A9C482
  loc_A9C46C: FLdRfVar var_88
  loc_A9C46F: FLdPr Me
  loc_A9C472: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A9C477: FLdPr var_88
  loc_A9C47A: Me.MoveNext
  loc_A9C47F: FFree1Ad var_88
  loc_A9C482: FLdRfVar var_8A
  loc_A9C485: FLdRfVar var_88
  loc_A9C488: FLdPr Me
  loc_A9C48B: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A9C490: FLdPr var_88
  loc_A9C493:  = Me.EOF
  loc_A9C498: FLdI2 var_8A
  loc_A9C49B: FLdRfVar var_94
  loc_A9C49E: FLdRfVar var_90
  loc_A9C4A1: FLdPr Me
  loc_A9C4A4: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A9C4A9: FLdPr var_90
  loc_A9C4AC:  = Me.RecordCount
  loc_A9C4B1: ILdRf var_94
  loc_A9C4B4: LitI4 0
  loc_A9C4B9: GtI4
  loc_A9C4BA: AndI4
  loc_A9C4BB: FFreeAd var_88 = ""
  loc_A9C4C2: BranchF loc_A9C4E0
  loc_A9C4C5: ImpAdCallFPR4 Beep()
  loc_A9C4CA: FLdRfVar var_88
  loc_A9C4CD: FLdPr Me
  loc_A9C4D0: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A9C4D5: FLdPr var_88
  loc_A9C4D8: Me.MoveLast
  loc_A9C4DD: FFree1Ad var_88
  loc_A9C4E0: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9D50F4
  'Data Table: 429064
  loc_9D50DC: FLdRfVar var_88
  loc_9D50DF: FLdPr Me
  loc_9D50E2: from_stack_1v = clstipodocu.global_4362220Get()
  loc_9D50E7: FLdPr var_88
  loc_9D50EA: Me.MoveNext
  loc_9D50EF: FFree1Ad var_88
  loc_9D50F2: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E9344
  'Data Table: 429064
  loc_9E9324: LitVar_Missing var_98
  loc_9E9327: PopAdLdVar
  loc_9E9328: ILdI2 iValor
  loc_9E932B: CI4UI1
  loc_9E932C: FLdRfVar var_88
  loc_9E932F: FLdPr Me
  loc_9E9332: from_stack_1v = clstipodocu.global_4362220Get()
  loc_9E9337: FLdPr var_88
  loc_9E933A: Me.Move from_stack_1, from_stack_2
  loc_9E933F: FFree1Ad var_88
  loc_9E9342: ExitProcHresult
End Sub

Public Sub MovePrevious() 'AA1218
  'Data Table: 429064
  loc_AA115C: FLdRfVar var_8A
  loc_AA115F: FLdRfVar var_88
  loc_AA1162: FLdPr Me
  loc_AA1165: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AA116A: FLdPr var_88
  loc_AA116D:  = Me.BOF
  loc_AA1172: FLdI2 var_8A
  loc_AA1175: NotI4
  loc_AA1176: FLdRfVar var_94
  loc_AA1179: FLdRfVar var_90
  loc_AA117C: FLdPr Me
  loc_AA117F: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AA1184: FLdPr var_90
  loc_AA1187:  = Me.RecordCount
  loc_AA118C: ILdRf var_94
  loc_AA118F: LitI4 0
  loc_AA1194: GtI4
  loc_AA1195: AndI4
  loc_AA1196: FFreeAd var_88 = ""
  loc_AA119D: BranchF loc_AA11B6
  loc_AA11A0: FLdRfVar var_88
  loc_AA11A3: FLdPr Me
  loc_AA11A6: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AA11AB: FLdPr var_88
  loc_AA11AE: Me.MovePrevious
  loc_AA11B3: FFree1Ad var_88
  loc_AA11B6: FLdRfVar var_8A
  loc_AA11B9: FLdRfVar var_88
  loc_AA11BC: FLdPr Me
  loc_AA11BF: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AA11C4: FLdPr var_88
  loc_AA11C7:  = Me.BOF
  loc_AA11CC: FLdI2 var_8A
  loc_AA11CF: FLdRfVar var_94
  loc_AA11D2: FLdRfVar var_90
  loc_AA11D5: FLdPr Me
  loc_AA11D8: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AA11DD: FLdPr var_90
  loc_AA11E0:  = Me.RecordCount
  loc_AA11E5: ILdRf var_94
  loc_AA11E8: LitI4 0
  loc_AA11ED: GtI4
  loc_AA11EE: AndI4
  loc_AA11EF: FFreeAd var_88 = ""
  loc_AA11F6: BranchF loc_AA1214
  loc_AA11F9: ImpAdCallFPR4 Beep()
  loc_AA11FE: FLdRfVar var_88
  loc_AA1201: FLdPr Me
  loc_AA1204: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AA1209: FLdPr var_88
  loc_AA120C: Me.MoveFirst
  loc_AA1211: FFree1Ad var_88
  loc_AA1214: ExitProcHresult
  loc_AA1215: FLdPr Me
End Sub

Public Property Get EOF() '9FBAC4
  'Data Table: 429064
  loc_9FBA9C: FLdRfVar var_8E
  loc_9FBA9F: FLdRfVar var_8C
  loc_9FBAA2: FLdPr Me
  loc_9FBAA5: from_stack_1v = clstipodocu.global_4362220Get()
  loc_9FBAAA: FLdPr var_8C
  loc_9FBAAD:  = Me.EOF
  loc_9FBAB2: FLdI2 var_8E
  loc_9FBAB5: FStI2 var_86
  loc_9FBAB8: FFree1Ad var_8C
  loc_9FBABB: ExitProcCbHresult
End Sub

Public Property Get BOF() '9FAEE8
  'Data Table: 429064
  loc_9FAEC0: FLdRfVar var_8E
  loc_9FAEC3: FLdRfVar var_8C
  loc_9FAEC6: FLdPr Me
  loc_9FAEC9: from_stack_1v = clstipodocu.global_4362220Get()
  loc_9FAECE: FLdPr var_8C
  loc_9FAED1:  = Me.BOF
  loc_9FAED6: FLdI2 var_8E
  loc_9FAED9: FStI2 var_86
  loc_9FAEDC: FFree1Ad var_8C
  loc_9FAEDF: ExitProcCbHresult
  loc_9FAEE5: StAryRecCopy
End Sub

Public Sub Sort(sOrden) '9E1F9C
  'Data Table: 429064
  loc_9E1F80: ILdI4 sOrden
  loc_9E1F83: FLdRfVar var_88
  loc_9E1F86: FLdPr Me
  loc_9E1F89: from_stack_1v = clstipodocu.global_4362220Get()
  loc_9E1F8E: FLdPr var_88
  loc_9E1F91: Me.Sort = from_stack_1
  loc_9E1F96: FFree1Ad var_88
  loc_9E1F99: ExitProcHresult
End Sub

Public Sub Find(sFind) '9FB89C
  'Data Table: 429064
  loc_9FB874: LitVar_Missing var_98
  loc_9FB877: PopAdLdVar
  loc_9FB878: LitI4 1
  loc_9FB87D: LitI4 0
  loc_9FB882: ILdI4 sFind
  loc_9FB885: FLdRfVar var_88
  loc_9FB888: FLdPr Me
  loc_9FB88B: from_stack_1v = clstipodocu.global_4362220Get()
  loc_9FB890: FLdPr var_88
  loc_9FB893: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9FB898: FFree1Ad var_88
  loc_9FB89B: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9FB8F8
  'Data Table: 429064
  loc_9FB8D0: FLdRfVar var_90
  loc_9FB8D3: FLdRfVar var_8C
  loc_9FB8D6: FLdPr Me
  loc_9FB8D9: from_stack_1v = clstipodocu.global_4362220Get()
  loc_9FB8DE: FLdPr var_8C
  loc_9FB8E1:  = Me.AbsolutePosition
  loc_9FB8E6: ILdRf var_90
  loc_9FB8E9: FStR4 var_88
  loc_9FB8EC: FFree1Ad var_8C
  loc_9FB8EF: ExitProcCbHresult
  loc_9FB8F5: FLdFPR8 var_120
End Sub

Public Property Get RecordCount() '9FA590
  'Data Table: 429064
  loc_9FA568: FLdRfVar var_90
  loc_9FA56B: FLdRfVar var_8C
  loc_9FA56E: FLdPr Me
  loc_9FA571: from_stack_1v = clstipodocu.global_4362220Get()
  loc_9FA576: FLdPr var_8C
  loc_9FA579:  = Me.RecordCount
  loc_9FA57E: ILdRf var_90
  loc_9FA581: FStR4 var_88
  loc_9FA584: FFree1Ad var_8C
  loc_9FA587: ExitProcCbHresult
  loc_9FA58D: FLdFPR8 var_190
End Sub

Public Sub AddNew(CodiTido, DetaTido) 'A7B2F8
  'Data Table: 429064
  loc_A7B288: ILdRf DetaTido
  loc_A7B28B: FStStrCopy var_88
  loc_A7B28E: FLdRfVar var_8C
  loc_A7B291: FLdI2 CodiTido
  loc_A7B294: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A7B299: ILdRf var_8C
  loc_A7B29C: LitStr vbNullString
  loc_A7B29F: NeStr
  loc_A7B2A1: FFree1Str var_8C
  loc_A7B2A4: BranchF loc_A7B2B2
  loc_A7B2A7: LitStr "El TIPO DE DOCUMENTO YA EXISTE. Reintente..."
  loc_A7B2AA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7B2AF: Branch loc_A7B2F5
  loc_A7B2B2: LitStr "INSERT INTO tipodocu (CodiTido, DetaTido) VALUES ("
  loc_A7B2B5: FLdI2 CodiTido
  loc_A7B2B8: CStrUI1
  loc_A7B2BA: FStStrNoPop var_8C
  loc_A7B2BD: ConcatStr
  loc_A7B2BE: FStStrNoPop var_90
  loc_A7B2C1: LitStr ",'"
  loc_A7B2C4: ConcatStr
  loc_A7B2C5: FStStrNoPop var_94
  loc_A7B2C8: ILdRf var_88
  loc_A7B2CB: ConcatStr
  loc_A7B2CC: FStStrNoPop var_98
  loc_A7B2CF: LitStr "');"
  loc_A7B2D2: ConcatStr
  loc_A7B2D3: FStStrNoPop var_9C
  loc_A7B2D6: Call EjecutarRs2(from_stack_1v)
  loc_A7B2DB: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A7B2E8: Call Requery()
  loc_A7B2ED: FLdI2 CodiTido
  loc_A7B2F0: Call Encontrar(from_stack_1v)
  loc_A7B2F5: ExitProcHresult
End Sub

Public Sub Modificar(CodiTido, DetaTido) 'A708AC
  'Data Table: 429064
  loc_A70844: ILdRf DetaTido
  loc_A70847: FStStrCopy var_88
  loc_A7084A: FLdRfVar var_8C
  loc_A7084D: FLdI2 CodiTido
  loc_A70850: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A70855: ILdRf var_8C
  loc_A70858: LitStr vbNullString
  loc_A7085B: EqStr
  loc_A7085D: FFree1Str var_8C
  loc_A70860: BranchF loc_A7086E
  loc_A70863: LitStr "El tipodocu NO EXISTE. Reintente..."
  loc_A70866: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7086B: Branch loc_A7089B
  loc_A7086E: LitStr " UPDATE tipodocu SET DetaTido='"
  loc_A70871: ILdRf var_88
  loc_A70874: ConcatStr
  loc_A70875: FStStrNoPop var_8C
  loc_A70878: LitStr "' WHERE CodiTido="
  loc_A7087B: ConcatStr
  loc_A7087C: FStStrNoPop var_90
  loc_A7087F: FLdI2 CodiTido
  loc_A70882: CStrUI1
  loc_A70884: FStStrNoPop var_94
  loc_A70887: ConcatStr
  loc_A70888: FStStrNoPop var_98
  loc_A7088B: Call EjecutarRs2(from_stack_1v)
  loc_A70890: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_A7089B: Call Requery()
  loc_A708A0: FLdI2 CodiTido
  loc_A708A3: Call Encontrar(from_stack_1v)
  loc_A708A8: ExitProcHresult
End Sub

Public Sub Delete() 'A23580
  'Data Table: 429064
  loc_A23538: FLdRfVar var_8C
  loc_A2353B: FLdRfVar var_88
  loc_A2353E: FLdPr Me
  loc_A23541: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A23546: FLdPr var_88
  loc_A23549:  = Me.RecordCount
  loc_A2354E: ILdRf var_8C
  loc_A23551: LitI4 0
  loc_A23556: GtI4
  loc_A23557: FFree1Ad var_88
  loc_A2355A: BranchF loc_A2357D
  loc_A2355D: LitI4 1
  loc_A23562: FLdRfVar var_88
  loc_A23565: FLdPr Me
  loc_A23568: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A2356D: FLdPr var_88
  loc_A23570: Me.Delete
  loc_A23575: FFree1Ad var_88
  loc_A23578: Call MoveNext()
  loc_A2357D: ExitProcHresult
End Sub

Public Sub Requery() 'A01370
  'Data Table: 429064
  loc_A01340: LitI4 -1
  loc_A01345: FLdRfVar var_88
  loc_A01348: FLdPr Me
  loc_A0134B: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A01350: FLdPr var_88
  loc_A01353: Me.Requery from_stack_1
  loc_A01358: FFree1Ad var_88
  loc_A0135B: LitVarStr var_98, "Primary"
  loc_A01360: PopAdLdVar
  loc_A01361: FLdPr Me
  loc_A01364: LateIdCall
  loc_A0136C: ExitProcHresult
  loc_A0136D: GeI4
End Sub

Public Sub Update() 'A235F8
  'Data Table: 429064
  loc_A235B4: FLdRfVar var_88
  loc_A235B7: FLdPr Me
  loc_A235BA: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A235BF: FLdZeroAd var_88
  loc_A235C2: FStAdFunc var_8C
  loc_A235C5: LitI4 3
  loc_A235CA: FLdPr var_8C
  loc_A235CD: Me.UpdateBatch
  loc_A235D2: FLdRfVar var_90
  loc_A235D5: FLdPr var_8C
  loc_A235D8:  = Me.EditMode
  loc_A235DD: ILdRf var_90
  loc_A235E0: LitI4 2
  loc_A235E5: EqI4
  loc_A235E6: BranchF loc_A235EE
  loc_A235E9: Call MoveLast()
  loc_A235EE: LitNothing
  loc_A235F0: FStAd var_8C 
  loc_A235F4: ExitProcHresult
  loc_A235F5: CRec2Uni var_404
End Sub

Public Sub Cancel() 'A487A8
  'Data Table: 429064
  loc_A48754: FLdRfVar var_88
  loc_A48757: FLdPr Me
  loc_A4875A: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A4875F: FLdZeroAd var_88
  loc_A48762: FStAdFunc var_8C
  loc_A48765: FLdRfVar var_90
  loc_A48768: FLdPr var_8C
  loc_A4876B:  = Me.RecordCount
  loc_A48770: ILdRf var_90
  loc_A48773: LitI4 0
  loc_A48778: GtI4
  loc_A48779: BranchF loc_A487A0
  loc_A4877C: FLdPr var_8C
  loc_A4877F: Me.CancelUpdate
  loc_A48784: FLdRfVar var_90
  loc_A48787: FLdPr var_8C
  loc_A4878A:  = Me.EditMode
  loc_A4878F: ILdRf var_90
  loc_A48792: LitI4 2
  loc_A48797: EqI4
  loc_A48798: BranchF loc_A487A0
  loc_A4879B: Call MoveFirst()
  loc_A487A0: LitNothing
  loc_A487A2: FStAd var_8C 
  loc_A487A6: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FC934
  'Data Table: 429064
  loc_9FC908: FLdRfVar var_90
  loc_9FC90B: FLdRfVar var_8C
  loc_9FC90E: FLdPr Me
  loc_9FC911: from_stack_1v = clstipodocu.global_4362220Get()
  loc_9FC916: FLdPr var_8C
  loc_9FC919:  = Me.EditMode
  loc_9FC91E: ILdRf var_90
  loc_9FC921: LitI4 0
  loc_9FC926: NeI4
  loc_9FC927: FStI2 var_86
  loc_9FC92A: FFree1Ad var_8C
  loc_9FC92D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A7080C
  'Data Table: 429064
  loc_A70798: ILdRf sSelect
  loc_A7079B: FStStrCopy var_88
  loc_A7079E: LitNothing
  loc_A707A0: CastAd
  loc_A707A3: FStAdFuncNoPop
  loc_A707A6: FLdPr Me
  loc_A707A9: Call clstipodocu.global_4362220Set(from_stack_1v)
  loc_A707AE: FFree1Ad var_8C
  loc_A707B1: New Recordset
  loc_A707B5: FStAdFuncNoPop
  loc_A707B8: FLdPr Me
  loc_A707BB: Call clstipodocu.global_4362220Set(from_stack_1v)
  loc_A707C0: FFree1Ad var_8C
  loc_A707C3: LitI4 -1
  loc_A707C8: LitI4 3
  loc_A707CD: LitI4 3
  loc_A707D2: ImpAdLdI4 MemVar_D9301C
  loc_A707D5: CVarAd
  loc_A707D9: PopAdLdVar
  loc_A707DA: ILdRf var_88
  loc_A707DD: CVarStr var_9C
  loc_A707E0: PopAdLdVar
  loc_A707E1: FLdRfVar var_8C
  loc_A707E4: FLdPr Me
  loc_A707E7: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A707EC: FLdPr var_8C
  loc_A707EF: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A707F4: FFree1Ad var_8C
  loc_A707F7: LitVarStr var_9C, "Primary"
  loc_A707FC: PopAdLdVar
  loc_A707FD: FLdPr Me
  loc_A70800: LateIdCall
  loc_A70808: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A59E68
  'Data Table: 429064
  loc_A59E08: ILdRf sSelect
  loc_A59E0B: FStStrCopy var_88
  loc_A59E0E: LitNothing
  loc_A59E10: CastAd
  loc_A59E13: FStAdFuncNoPop
  loc_A59E16: FLdPr Me
  loc_A59E19: Call clstipodocu.global_4362220Set(from_stack_1v)
  loc_A59E1E: FFree1Ad var_8C
  loc_A59E21: New Recordset
  loc_A59E25: FStAdFuncNoPop
  loc_A59E28: FLdPr Me
  loc_A59E2B: Call clstipodocu.global_4362220Set(from_stack_1v)
  loc_A59E30: FFree1Ad var_8C
  loc_A59E33: LitI4 -1
  loc_A59E38: LitI4 3
  loc_A59E3D: LitI4 3
  loc_A59E42: ImpAdLdI4 MemVar_D9301C
  loc_A59E45: CVarAd
  loc_A59E49: PopAdLdVar
  loc_A59E4A: ILdRf var_88
  loc_A59E4D: CVarStr var_9C
  loc_A59E50: PopAdLdVar
  loc_A59E51: FLdRfVar var_8C
  loc_A59E54: FLdPr Me
  loc_A59E57: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A59E5C: FLdPr var_8C
  loc_A59E5F: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A59E64: FFree1Ad var_8C
  loc_A59E67: ExitProcHresult
End Sub

Public Sub Encontrar(CodiTido) '9EADDC
  'Data Table: 429064
  loc_9EADBC: LitStr "CodiTido = "
  loc_9EADBF: FLdI2 CodiTido
  loc_9EADC2: CStrUI1
  loc_9EADC4: FStStrNoPop var_88
  loc_9EADC7: ConcatStr
  loc_9EADC8: PopTmpLdAdStr
  loc_9EADCC: Call Find(from_stack_1v)
  loc_9EADD1: FFreeStr var_88 = ""
  loc_9EADD8: ExitProcHresult
End Sub

Public Property Get DataSource() 'A08B1C
  'Data Table: 429064
  loc_A08AEC: ZeroRetVal
  loc_A08AEE: FLdRfVar var_90
  loc_A08AF1: FLdRfVar var_8C
  loc_A08AF4: FLdPr Me
  loc_A08AF7: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A08AFC: FLdPr var_8C
  loc_A08AFF:  = Me.DataSource
  loc_A08B04: ILdRf var_90
  loc_A08B07: CastAd
  loc_A08B0A: FStAdFunc var_88
  loc_A08B0D: FFreeAd var_8C = ""
  loc_A08B14: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9FA4D8
  'Data Table: 429064
  loc_9FA4B0: FLdRfVar var_90
  loc_9FA4B3: FLdRfVar var_8C
  loc_9FA4B6: FLdPr Me
  loc_9FA4B9: from_stack_1v = clstipodocu.global_4362220Get()
  loc_9FA4BE: FLdPr var_8C
  loc_9FA4C1:  = Me.EditMode
  loc_9FA4C6: ILdRf var_90
  loc_9FA4C9: FStR4 var_88
  loc_9FA4CC: FFree1Ad var_8C
  loc_9FA4CF: ExitProcCbHresult
End Sub

Public Property Get CodiTido() 'A4A640
  'Data Table: 429064
  loc_A4A5F4: FLdRfVar var_B4
  loc_A4A5F7: FLdRfVar var_A4
  loc_A4A5FA: LitVarStr var_A0, "CodiTido"
  loc_A4A5FF: PopAdLdVar
  loc_A4A600: FLdRfVar var_90
  loc_A4A603: FLdRfVar var_8C
  loc_A4A606: FLdPr Me
  loc_A4A609: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A4A60E: FLdPr var_8C
  loc_A4A611:  = Me.Fields
  loc_A4A616: FLdPr var_90
  loc_A4A619: from_stack_2 = Me.Item(from_stack_1)
  loc_A4A61E: FLdPr var_A4
  loc_A4A621:  = Me.Value
  loc_A4A626: FLdRfVar var_B4
  loc_A4A629: CI2Var
  loc_A4A62A: FStI2 var_86
  loc_A4A62D: FFreeAd var_8C = "": var_90 = ""
  loc_A4A636: FFree1Var var_B4 = ""
  loc_A4A639: ExitProcCbHresult
End Sub

Public Property Let CodiTido(vDato) '9EAE38
  'Data Table: 429064
  loc_9EAE14: FLdI2 vDato
  loc_9EAE17: CVarI2 var_A8
  loc_9EAE1A: PopAdLdVar
  loc_9EAE1B: LitVarStr var_98, "CodiTido"
  loc_9EAE20: PopAdLdVar
  loc_9EAE21: FLdRfVar var_88
  loc_9EAE24: FLdPr Me
  loc_9EAE27: from_stack_1v = clstipodocu.global_4362220Get()
  loc_9EAE2C: FLdPr var_88
  loc_9EAE2F: Me.Collect = from_stack_1
  loc_9EAE34: FFree1Ad var_88
  loc_9EAE37: ExitProcHresult
End Sub

Public Property Get DetaTido() 'A59048
  'Data Table: 429064
  loc_A58FF8: ZeroRetVal
  loc_A58FFA: FLdRfVar var_B4
  loc_A58FFD: FLdRfVar var_A4
  loc_A59000: LitVarStr var_A0, "DetaTido"
  loc_A59005: PopAdLdVar
  loc_A59006: FLdRfVar var_90
  loc_A59009: FLdRfVar var_8C
  loc_A5900C: FLdPr Me
  loc_A5900F: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A59014: FLdPr var_8C
  loc_A59017:  = Me.Fields
  loc_A5901C: FLdPr var_90
  loc_A5901F: from_stack_2 = Me.Item(from_stack_1)
  loc_A59024: FLdPr var_A4
  loc_A59027:  = Me.Value
  loc_A5902C: FLdRfVar var_B4
  loc_A5902F: CStrVarTmp
  loc_A59030: FStStr var_88
  loc_A59033: FFreeAd var_8C = "": var_90 = ""
  loc_A5903C: FFree1Var var_B4 = ""
  loc_A5903F: ExitProcCbHresult
  loc_A59045: LitStr "StrFormMemory_0"
End Sub

Public Property Let DetaTido(vDato) 'A043DC
  'Data Table: 429064
  loc_A043B0: ILdRf vDato
  loc_A043B3: FStStrCopy var_88
  loc_A043B6: ILdRf var_88
  loc_A043B9: CVarStr var_AC
  loc_A043BC: PopAdLdVar
  loc_A043BD: LitVarStr var_9C, "DetaTido"
  loc_A043C2: PopAdLdVar
  loc_A043C3: FLdRfVar var_8C
  loc_A043C6: FLdPr Me
  loc_A043C9: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A043CE: FLdPr var_8C
  loc_A043D1: Me.Collect = from_stack_1
  loc_A043D6: FFree1Ad var_8C
  loc_A043D9: ExitProcHresult
End Sub

Public Function ValidaClave(CodiTido) 'A53AD0
  'Data Table: 429064
  loc_A53A80: ZeroRetVal
  loc_A53A82: LitStr "SELECT CodiTido FROM infogov.tipodocu WHERE CodiTido = "
  loc_A53A85: FLdI2 CodiTido
  loc_A53A88: CStrUI1
  loc_A53A8A: FStStrNoPop var_8C
  loc_A53A8D: ConcatStr
  loc_A53A8E: FStStrNoPop var_90
  loc_A53A91: Call EjecutarRs2(from_stack_1v)
  loc_A53A96: FFreeStr var_8C = ""
  loc_A53A9D: FLdRfVar var_98
  loc_A53AA0: FLdRfVar ValidaClave
  loc_A53AA3: FLdPr Me
  loc_A53AA6: from_stack_1v = clstipodocu.global_4362220Get()
  loc_A53AAB: FLdPr ValidaClave
  loc_A53AAE:  = Me.RecordCount
  loc_A53AB3: ILdRf var_98
  loc_A53AB6: LitI4 0
  loc_A53ABB: GtI4
  loc_A53ABC: FFree1Ad ValidaClave
  loc_A53ABF: BranchF loc_A53AC8
  loc_A53AC2: LitStr "El TIPO de DOCUMENTO YA EXISTE. Reintente..."
  loc_A53AC5: FStStrCopy var_88
  loc_A53AC8: ExitProcCbHresult
  loc_A53ACE: GtCyR8
End Function

Public Function NuevoRegistro() 'AB9300
  'Data Table: 429064
  loc_AB9210: New Recordset
  loc_AB9214: FStAdFuncNoPop
  loc_AB9217: FLdPr Me
  loc_AB921A: Call clstipodocu.global_4362220Set(from_stack_1v)
  loc_AB921F: FFree1Ad var_8C
  loc_AB9222: LitI4 -1
  loc_AB9227: LitI4 3
  loc_AB922C: LitI4 3
  loc_AB9231: ImpAdLdI4 MemVar_D9301C
  loc_AB9234: CVarAd
  loc_AB9238: PopAdLdVar
  loc_AB9239: LitVarStr var_9C, "SELECT CodiTido FROM infogov.tipodocu ORDER BY CodiTido DESC "
  loc_AB923E: PopAdLdVar
  loc_AB923F: FLdRfVar var_8C
  loc_AB9242: FLdPr Me
  loc_AB9245: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AB924A: FLdPr var_8C
  loc_AB924D: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_AB9252: FFree1Ad var_8C
  loc_AB9255: FLdRfVar var_B0
  loc_AB9258: FLdRfVar var_8C
  loc_AB925B: FLdPr Me
  loc_AB925E: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AB9263: FLdPr var_8C
  loc_AB9266:  = Me.RecordCount
  loc_AB926B: ILdRf var_B0
  loc_AB926E: LitI4 0
  loc_AB9273: GtI4
  loc_AB9274: FFree1Ad var_8C
  loc_AB9277: BranchF loc_AB92C9
  loc_AB927A: FLdRfVar var_C8
  loc_AB927D: FLdRfVar var_B8
  loc_AB9280: LitVarStr var_9C, "CodiTido"
  loc_AB9285: PopAdLdVar
  loc_AB9286: FLdRfVar var_B4
  loc_AB9289: FLdRfVar var_8C
  loc_AB928C: FLdPr Me
  loc_AB928F: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AB9294: FLdPr var_8C
  loc_AB9297:  = Me.Fields
  loc_AB929C: FLdPr var_B4
  loc_AB929F: from_stack_2 = Me.Item(from_stack_1)
  loc_AB92A4: FLdPr var_B8
  loc_AB92A7:  = Me.Value
  loc_AB92AC: FLdRfVar var_C8
  loc_AB92AF: FnCLngVar
  loc_AB92B1: LitI4 1
  loc_AB92B6: AddI4
  loc_AB92B7: FStR4 var_88
  loc_AB92BA: FFreeAd var_8C = "": var_B4 = ""
  loc_AB92C3: FFree1Var var_C8 = ""
  loc_AB92C6: Branch loc_AB92D1
  loc_AB92C9: LitI4 1
  loc_AB92CE: FStR4 var_88
  loc_AB92D1: FLdRfVar var_8C
  loc_AB92D4: FLdPr Me
  loc_AB92D7: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AB92DC: FLdPr var_8C
  loc_AB92DF: Me.Close
  loc_AB92E4: FFree1Ad var_8C
  loc_AB92E7: LitNothing
  loc_AB92E9: CastAd
  loc_AB92EC: FStAdFuncNoPop
  loc_AB92EF: FLdPr Me
  loc_AB92F2: Call clstipodocu.global_4362220Set(from_stack_1v)
  loc_AB92F7: FFree1Ad var_8C
  loc_AB92FA: ExitProcCbHresult
End Function

Public Function CodiTidoValidate(sCodiTido) 'AB046C
  'Data Table: 429064
  loc_AB0398: ILdRf sCodiTido
  loc_AB039B: FStStrCopy var_8C
  loc_AB039E: ZeroRetVal
  loc_AB03A0: LitI2_Byte 0
  loc_AB03A2: LitI2_Byte 0
  loc_AB03A4: ILdRf var_8C
  loc_AB03A7: LitStr "el Codigo del tipo de documento"
  loc_AB03AA: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_AB03AF: FStStr var_88
  loc_AB03B2: ILdRf var_88
  loc_AB03B5: LitStr vbNullString
  loc_AB03B8: NeStr
  loc_AB03BA: BranchF loc_AB03C3
  loc_AB03BD: ExitProcCbHresult
  loc_AB03C3: New Recordset
  loc_AB03C7: FStAdFuncNoPop
  loc_AB03CA: FLdPr Me
  loc_AB03CD: Call clstipodocu.global_4362220Set(from_stack_1v)
  loc_AB03D2: FFree1Ad var_90
  loc_AB03D5: LitI4 -1
  loc_AB03DA: LitI4 3
  loc_AB03DF: LitI4 3
  loc_AB03E4: ImpAdLdI4 MemVar_D9301C
  loc_AB03E7: CVarAd
  loc_AB03EB: PopAdLdVar
  loc_AB03EC: LitStr "SELECT * FROM infogov.tipodocu WHERE CodiTido = "
  loc_AB03EF: ILdRf var_8C
  loc_AB03F2: ConcatStr
  loc_AB03F3: CVarStr var_A0
  loc_AB03F6: PopAdLdVar
  loc_AB03F7: FLdRfVar var_90
  loc_AB03FA: FLdPr Me
  loc_AB03FD: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AB0402: FLdPr var_90
  loc_AB0405: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_AB040A: FFree1Ad var_90
  loc_AB040D: FFree1Var var_A0 = ""
  loc_AB0410: FLdRfVar var_B4
  loc_AB0413: FLdRfVar var_90
  loc_AB0416: FLdPr Me
  loc_AB0419: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AB041E: FLdPr var_90
  loc_AB0421:  = Me.RecordCount
  loc_AB0426: ILdRf var_B4
  loc_AB0429: LitI4 0
  loc_AB042E: EqI4
  loc_AB042F: FFree1Ad var_90
  loc_AB0432: BranchF loc_AB043B
  loc_AB0435: LitStr "El CODIGO del Tipo de Documento no existe. Reintente..."
  loc_AB0438: FStStrCopy var_88
  loc_AB043B: FLdRfVar var_90
  loc_AB043E: FLdPr Me
  loc_AB0441: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AB0446: FLdPr var_90
  loc_AB0449: Me.Close
  loc_AB044E: FFree1Ad var_90
  loc_AB0451: LitNothing
  loc_AB0453: CastAd
  loc_AB0456: FStAdFuncNoPop
  loc_AB0459: FLdPr Me
  loc_AB045C: Call clstipodocu.global_4362220Set(from_stack_1v)
  loc_AB0461: FFree1Ad var_90
  loc_AB0464: ExitProcCbHresult
End Function

Public Function BuscaDetalleTipoDocu(iCodiTido) 'AC3904
  'Data Table: 429064
  loc_AC3808: ZeroRetVal
  loc_AC380A: New Recordset
  loc_AC380E: FStAdFuncNoPop
  loc_AC3811: FLdPr Me
  loc_AC3814: Call clstipodocu.global_4362220Set(from_stack_1v)
  loc_AC3819: FFree1Ad var_8C
  loc_AC381C: LitI4 -1
  loc_AC3821: LitI4 3
  loc_AC3826: LitI4 3
  loc_AC382B: ImpAdLdI4 MemVar_D9301C
  loc_AC382E: CVarAd
  loc_AC3832: PopAdLdVar
  loc_AC3833: LitStr "SELECT * FROM infogov.tipodocu WHERE CodiTido = "
  loc_AC3836: FLdUI1
  loc_AC383A: CStrI2
  loc_AC383C: FStStrNoPop var_90
  loc_AC383F: ConcatStr
  loc_AC3840: CVarStr var_A0
  loc_AC3843: PopAdLdVar
  loc_AC3844: FLdRfVar var_8C
  loc_AC3847: FLdPr Me
  loc_AC384A: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AC384F: FLdPr var_8C
  loc_AC3852: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_AC3857: FFree1Str var_90
  loc_AC385A: FFree1Ad var_8C
  loc_AC385D: FFree1Var var_A0 = ""
  loc_AC3860: FLdRfVar var_B4
  loc_AC3863: FLdRfVar var_8C
  loc_AC3866: FLdPr Me
  loc_AC3869: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AC386E: FLdPr var_8C
  loc_AC3871:  = Me.RecordCount
  loc_AC3876: ILdRf var_B4
  loc_AC3879: LitI4 1
  loc_AC387E: EqI4
  loc_AC387F: FFree1Ad var_8C
  loc_AC3882: BranchF loc_AC38CD
  loc_AC3885: FLdRfVar var_A0
  loc_AC3888: FLdRfVar var_BC
  loc_AC388B: LitVarStr var_B0, "DetaTido"
  loc_AC3890: PopAdLdVar
  loc_AC3891: FLdRfVar var_B8
  loc_AC3894: FLdRfVar var_8C
  loc_AC3897: FLdPr Me
  loc_AC389A: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AC389F: FLdPr var_8C
  loc_AC38A2:  = Me.Fields
  loc_AC38A7: FLdPr var_B8
  loc_AC38AA: from_stack_2 = Me.Item(from_stack_1)
  loc_AC38AF: FLdPr var_BC
  loc_AC38B2:  = Me.Value
  loc_AC38B7: FLdRfVar var_A0
  loc_AC38BA: CStrVarTmp
  loc_AC38BB: FStStr var_88
  loc_AC38BE: FFreeAd var_8C = "": var_B8 = ""
  loc_AC38C7: FFree1Var var_A0 = ""
  loc_AC38CA: Branch loc_AC38D3
  loc_AC38CD: LitStr vbNullString
  loc_AC38D0: FStStrCopy var_88
  loc_AC38D3: FLdRfVar var_8C
  loc_AC38D6: FLdPr Me
  loc_AC38D9: from_stack_1v = clstipodocu.global_4362220Get()
  loc_AC38DE: FLdPr var_8C
  loc_AC38E1: Me.Close
  loc_AC38E6: FFree1Ad var_8C
  loc_AC38E9: LitNothing
  loc_AC38EB: CastAd
  loc_AC38EE: FStAdFuncNoPop
  loc_AC38F1: FLdPr Me
  loc_AC38F4: Call clstipodocu.global_4362220Set(from_stack_1v)
  loc_AC38F9: FFree1Ad var_8C
  loc_AC38FC: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E9298
  'Data Table: 429064
  loc_9E927C: ILdRf pError
  loc_9E927F: FStAd var_88 
  loc_9E9283: ILdRf pRecordset
  loc_9E9286: FStAd var_8C 
  loc_9E928A: FLdPr Me
  loc_9E928D: RaiseEvent
  loc_9E9295: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'AA05B8
  'Data Table: 429064
  loc_AA04F8: ILdRf pRecordset
  loc_AA04FB: FStAd var_88 
  loc_AA04FF: ILdRf adReason
  loc_AA0502: FStR4 var_90
  loc_AA0505: ILdRf var_90
  loc_AA0508: LitI4 1
  loc_AA050D: EqI4
  loc_AA050E: BranchF loc_AA0514
  loc_AA0511: Branch loc_AA05A7
  loc_AA0514: ILdRf var_90
  loc_AA0517: LitI4 9
  loc_AA051C: EqI4
  loc_AA051D: BranchF loc_AA0523
  loc_AA0520: Branch loc_AA05A7
  loc_AA0523: ILdRf var_90
  loc_AA0526: LitI4 2
  loc_AA052B: EqI4
  loc_AA052C: BranchF loc_AA0532
  loc_AA052F: Branch loc_AA05A7
  loc_AA0532: ILdRf var_90
  loc_AA0535: LitI4 &HB
  loc_AA053A: EqI4
  loc_AA053B: BranchF loc_AA0541
  loc_AA053E: Branch loc_AA05A7
  loc_AA0541: ILdRf var_90
  loc_AA0544: LitI4 &HA
  loc_AA0549: EqI4
  loc_AA054A: BranchF loc_AA0550
  loc_AA054D: Branch loc_AA05A7
  loc_AA0550: ILdRf var_90
  loc_AA0553: LitI4 7
  loc_AA0558: EqI4
  loc_AA0559: BranchF loc_AA055F
  loc_AA055C: Branch loc_AA05A7
  loc_AA055F: ILdRf var_90
  loc_AA0562: LitI4 8
  loc_AA0567: EqI4
  loc_AA0568: BranchF loc_AA056E
  loc_AA056B: Branch loc_AA05A7
  loc_AA056E: ILdRf var_90
  loc_AA0571: LitI4 5
  loc_AA0576: EqI4
  loc_AA0577: BranchF loc_AA057D
  loc_AA057A: Branch loc_AA05A7
  loc_AA057D: ILdRf var_90
  loc_AA0580: LitI4 6
  loc_AA0585: EqI4
  loc_AA0586: BranchF loc_AA058C
  loc_AA0589: Branch loc_AA05A7
  loc_AA058C: ILdRf var_90
  loc_AA058F: LitI4 4
  loc_AA0594: EqI4
  loc_AA0595: BranchF loc_AA059B
  loc_AA0598: Branch loc_AA05A7
  loc_AA059B: ILdRf var_90
  loc_AA059E: LitI4 3
  loc_AA05A3: EqI4
  loc_AA05A4: BranchF loc_AA05A7
  loc_AA05A7: FLdI2 var_8A
  loc_AA05AA: BranchF loc_AA05B5
  loc_AA05AD: LitI4 4
  loc_AA05B2: IStI4 adStatus
  loc_AA05B5: ExitProcHresult
End Sub

Private Function Proc_73_34_9FA5E8() '9FA5E8
  'Data Table: 429064
  loc_9FA5C4: LitStr "Primary"
  loc_9FA5C7: FLdPr Me
  loc_9FA5CA: LateIdLdVar var_94 DispID_4 0
  loc_9FA5D1: CastAdVar Me
  loc_9FA5D5: FStAdFunc var_98
  loc_9FA5D8: FLdPr var_98
  loc_9FA5E0: FFree1Ad var_98
  loc_9FA5E3: FFree1Var var_94 = ""
  loc_9FA5E6: ExitProcHresult
End Function

Private Function Proc_73_35_9FA530(arg_C) '9FA530
  'Data Table: 429064
  loc_9FA50C: ILdI4 arg_C
  loc_9FA50F: FStStrCopy var_88
  loc_9FA512: ILdRf var_88
  loc_9FA515: LitStr "Primary"
  loc_9FA518: EqStr
  loc_9FA51A: BranchF loc_9FA52F
  loc_9FA51D: FLdRfVar var_8C
  loc_9FA520: FLdPr Me
  loc_9FA523: from_stack_1v = clstipodocu.global_4362220Get()
  loc_9FA528: FLdZeroAd var_8C
  loc_9FA52B: IStAdFunc
  loc_9FA52F: ExitProcHresult
End Function

Public Function global_4362220Get() '429400
  global_4362220Get = global_4362220
End Function

Public Sub global_4362220Put(Value) '42941A
  global_4362220 = Value
End Sub

Public Sub global_4362220Set(Value) '429434
  global_4362220 = Value
End Sub

Public Function global_4362220Get() '42944E
  global_4362220Get = global_4362220
End Function

Public Sub global_4362220Put(Value) '429468
  global_4362220 = Value
End Sub

Public Sub global_4362220Set(Value) '429482
  global_4362220 = Value
End Sub

Public Function global_4362220Get() '42949C
  global_4362220Get = global_4362220
End Function

Public Sub global_4362220Put(Value) '4294B6
  global_4362220 = Value
End Sub

Public Sub global_4362220Set(Value) '4294D0
  global_4362220 = Value
End Sub
