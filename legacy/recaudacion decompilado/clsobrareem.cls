VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsobrareem"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0A8B4
  'Data Table: 415B38
  loc_A0A878: FLdRfVar var_8C
  loc_A0A87B: FLdRfVar var_88
  loc_A0A87E: FLdPr Me
  loc_A0A881: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A0A886: FLdPr var_88
  loc_A0A889:  = Me.RecordCount
  loc_A0A88E: ILdRf var_8C
  loc_A0A891: LitI4 0
  loc_A0A896: GtI4
  loc_A0A897: FFree1Ad var_88
  loc_A0A89A: BranchF loc_A0A8B3
  loc_A0A89D: FLdRfVar var_88
  loc_A0A8A0: FLdPr Me
  loc_A0A8A3: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A0A8A8: FLdPr var_88
  loc_A0A8AB: Me.MoveFirst
  loc_A0A8B0: FFree1Ad var_88
  loc_A0A8B3: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0AD84
  'Data Table: 415B38
  loc_A0AD48: FLdRfVar var_8C
  loc_A0AD4B: FLdRfVar var_88
  loc_A0AD4E: FLdPr Me
  loc_A0AD51: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A0AD56: FLdPr var_88
  loc_A0AD59:  = Me.RecordCount
  loc_A0AD5E: ILdRf var_8C
  loc_A0AD61: LitI4 0
  loc_A0AD66: GtI4
  loc_A0AD67: FFree1Ad var_88
  loc_A0AD6A: BranchF loc_A0AD83
  loc_A0AD6D: FLdRfVar var_88
  loc_A0AD70: FLdPr Me
  loc_A0AD73: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A0AD78: FLdPr var_88
  loc_A0AD7B: Me.MoveLast
  loc_A0AD80: FFree1Ad var_88
  loc_A0AD83: ExitProcHresult
End Sub

Public Sub MoveNext() 'A99EC4
  'Data Table: 415B38
  loc_A99E08: FLdRfVar var_8A
  loc_A99E0B: FLdRfVar var_88
  loc_A99E0E: FLdPr Me
  loc_A99E11: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A99E16: FLdPr var_88
  loc_A99E19:  = Me.EOF
  loc_A99E1E: FLdI2 var_8A
  loc_A99E21: NotI4
  loc_A99E22: FLdRfVar var_94
  loc_A99E25: FLdRfVar var_90
  loc_A99E28: FLdPr Me
  loc_A99E2B: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A99E30: FLdPr var_90
  loc_A99E33:  = Me.RecordCount
  loc_A99E38: ILdRf var_94
  loc_A99E3B: LitI4 0
  loc_A99E40: GtI4
  loc_A99E41: AndI4
  loc_A99E42: FFreeAd var_88 = ""
  loc_A99E49: BranchF loc_A99E62
  loc_A99E4C: FLdRfVar var_88
  loc_A99E4F: FLdPr Me
  loc_A99E52: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A99E57: FLdPr var_88
  loc_A99E5A: Me.MoveNext
  loc_A99E5F: FFree1Ad var_88
  loc_A99E62: FLdRfVar var_8A
  loc_A99E65: FLdRfVar var_88
  loc_A99E68: FLdPr Me
  loc_A99E6B: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A99E70: FLdPr var_88
  loc_A99E73:  = Me.EOF
  loc_A99E78: FLdI2 var_8A
  loc_A99E7B: FLdRfVar var_94
  loc_A99E7E: FLdRfVar var_90
  loc_A99E81: FLdPr Me
  loc_A99E84: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A99E89: FLdPr var_90
  loc_A99E8C:  = Me.RecordCount
  loc_A99E91: ILdRf var_94
  loc_A99E94: LitI4 0
  loc_A99E99: GtI4
  loc_A99E9A: AndI4
  loc_A99E9B: FFreeAd var_88 = ""
  loc_A99EA2: BranchF loc_A99EC0
  loc_A99EA5: ImpAdCallFPR4 Beep()
  loc_A99EAA: FLdRfVar var_88
  loc_A99EAD: FLdPr Me
  loc_A99EB0: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A99EB5: FLdPr var_88
  loc_A99EB8: Me.MoveLast
  loc_A99EBD: FFree1Ad var_88
  loc_A99EC0: ExitProcHresult
  loc_A99EC1: MulCy
  loc_A99EC2: UMiI4
End Sub

Public Sub MoveSiguiente() '9D5270
  'Data Table: 415B38
  loc_9D5258: FLdRfVar var_88
  loc_9D525B: FLdPr Me
  loc_9D525E: from_stack_1v = clsobrareem.global_4283072Get()
  loc_9D5263: FLdPr var_88
  loc_9D5266: Me.MoveNext
  loc_9D526B: FFree1Ad var_88
  loc_9D526E: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E6F80
  'Data Table: 415B38
  loc_9E6F60: LitVar_Missing var_98
  loc_9E6F63: PopAdLdVar
  loc_9E6F64: ILdI2 iValor
  loc_9E6F67: CI4UI1
  loc_9E6F68: FLdRfVar var_88
  loc_9E6F6B: FLdPr Me
  loc_9E6F6E: from_stack_1v = clsobrareem.global_4283072Get()
  loc_9E6F73: FLdPr var_88
  loc_9E6F76: Me.Move from_stack_1, from_stack_2
  loc_9E6F7B: FFree1Ad var_88
  loc_9E6F7E: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9953C
  'Data Table: 415B38
  loc_A99480: FLdRfVar var_8A
  loc_A99483: FLdRfVar var_88
  loc_A99486: FLdPr Me
  loc_A99489: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A9948E: FLdPr var_88
  loc_A99491:  = Me.BOF
  loc_A99496: FLdI2 var_8A
  loc_A99499: NotI4
  loc_A9949A: FLdRfVar var_94
  loc_A9949D: FLdRfVar var_90
  loc_A994A0: FLdPr Me
  loc_A994A3: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A994A8: FLdPr var_90
  loc_A994AB:  = Me.RecordCount
  loc_A994B0: ILdRf var_94
  loc_A994B3: LitI4 0
  loc_A994B8: GtI4
  loc_A994B9: AndI4
  loc_A994BA: FFreeAd var_88 = ""
  loc_A994C1: BranchF loc_A994DA
  loc_A994C4: FLdRfVar var_88
  loc_A994C7: FLdPr Me
  loc_A994CA: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A994CF: FLdPr var_88
  loc_A994D2: Me.MovePrevious
  loc_A994D7: FFree1Ad var_88
  loc_A994DA: FLdRfVar var_8A
  loc_A994DD: FLdRfVar var_88
  loc_A994E0: FLdPr Me
  loc_A994E3: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A994E8: FLdPr var_88
  loc_A994EB:  = Me.BOF
  loc_A994F0: FLdI2 var_8A
  loc_A994F3: FLdRfVar var_94
  loc_A994F6: FLdRfVar var_90
  loc_A994F9: FLdPr Me
  loc_A994FC: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A99501: FLdPr var_90
  loc_A99504:  = Me.RecordCount
  loc_A99509: ILdRf var_94
  loc_A9950C: LitI4 0
  loc_A99511: GtI4
  loc_A99512: AndI4
  loc_A99513: FFreeAd var_88 = ""
  loc_A9951A: BranchF loc_A99538
  loc_A9951D: ImpAdCallFPR4 Beep()
  loc_A99522: FLdRfVar var_88
  loc_A99525: FLdPr Me
  loc_A99528: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A9952D: FLdPr var_88
  loc_A99530: Me.MoveFirst
  loc_A99535: FFree1Ad var_88
  loc_A99538: ExitProcHresult
  loc_A99539: FFree1Var MovePreviousC1 = ""
End Sub

Public Property Get EOF() '9F3570
  'Data Table: 415B38
  loc_9F3548: FLdRfVar var_8E
  loc_9F354B: FLdRfVar var_8C
  loc_9F354E: FLdPr Me
  loc_9F3551: from_stack_1v = clsobrareem.global_4283072Get()
  loc_9F3556: FLdPr var_8C
  loc_9F3559:  = Me.EOF
  loc_9F355E: FLdI2 var_8E
  loc_9F3561: FStI2 var_86
  loc_9F3564: FFree1Ad var_8C
  loc_9F3567: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F36E0
  'Data Table: 415B38
  loc_9F36B8: FLdRfVar var_8E
  loc_9F36BB: FLdRfVar var_8C
  loc_9F36BE: FLdPr Me
  loc_9F36C1: from_stack_1v = clsobrareem.global_4283072Get()
  loc_9F36C6: FLdPr var_8C
  loc_9F36C9:  = Me.BOF
  loc_9F36CE: FLdI2 var_8E
  loc_9F36D1: FStI2 var_86
  loc_9F36D4: FFree1Ad var_8C
  loc_9F36D7: ExitProcCbHresult
  loc_9F36DD: CVarI2 arg_332
End Sub

Public Sub Sort(sOrden) '9E1FEC
  'Data Table: 415B38
  loc_9E1FD0: ILdI4 sOrden
  loc_9E1FD3: FLdRfVar var_88
  loc_9E1FD6: FLdPr Me
  loc_9E1FD9: from_stack_1v = clsobrareem.global_4283072Get()
  loc_9E1FDE: FLdPr var_88
  loc_9E1FE1: Me.Sort = from_stack_1
  loc_9E1FE6: FFree1Ad var_88
  loc_9E1FE9: ExitProcHresult
  loc_9E1FEA: FnAbsR4
End Sub

Public Sub Find(sFind) '9F39C0
  'Data Table: 415B38
  loc_9F3998: LitVar_Missing var_98
  loc_9F399B: PopAdLdVar
  loc_9F399C: LitI4 1
  loc_9F39A1: LitI4 0
  loc_9F39A6: ILdI4 sFind
  loc_9F39A9: FLdRfVar var_88
  loc_9F39AC: FLdPr Me
  loc_9F39AF: from_stack_1v = clsobrareem.global_4283072Get()
  loc_9F39B4: FLdPr var_88
  loc_9F39B7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F39BC: FFree1Ad var_88
  loc_9F39BF: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F3A78
  'Data Table: 415B38
  loc_9F3A50: FLdRfVar var_90
  loc_9F3A53: FLdRfVar var_8C
  loc_9F3A56: FLdPr Me
  loc_9F3A59: from_stack_1v = clsobrareem.global_4283072Get()
  loc_9F3A5E: FLdPr var_8C
  loc_9F3A61:  = Me.AbsolutePosition
  loc_9F3A66: ILdRf var_90
  loc_9F3A69: FStR4 var_88
  loc_9F3A6C: FFree1Ad var_8C
  loc_9F3A6F: ExitProcCbHresult
  loc_9F3A75: Error
  loc_9F3A76: FnAbsCy
End Sub

Public Property Get RecordCount() '9F3AD4
  'Data Table: 415B38
  loc_9F3AAC: FLdRfVar var_90
  loc_9F3AAF: FLdRfVar var_8C
  loc_9F3AB2: FLdPr Me
  loc_9F3AB5: from_stack_1v = clsobrareem.global_4283072Get()
  loc_9F3ABA: FLdPr var_8C
  loc_9F3ABD:  = Me.RecordCount
  loc_9F3AC2: ILdRf var_90
  loc_9F3AC5: FStR4 var_88
  loc_9F3AC8: FFree1Ad var_8C
  loc_9F3ACB: ExitProcCbHresult
  loc_9F3AD1: FLdR8 RecordCountBD
End Sub

Public Sub AddNew(OrdeObre, DetaObre, NotaObre) 'AC6440
  'Data Table: 415B38
  loc_AC6360: ILdRf OrdeObre
  loc_AC6363: FStStrCopy var_88
  loc_AC6366: ILdRf DetaObre
  loc_AC6369: FStStrCopy var_8C
  loc_AC636C: ILdRf NotaObre
  loc_AC636F: FStStrCopy var_90
  loc_AC6372: FLdRfVar var_94
  loc_AC6375: ILdRf var_88
  loc_AC6378: from_stack_2v = ValidaClave(from_stack_1v)
  loc_AC637D: ILdRf var_94
  loc_AC6380: LitStr vbNullString
  loc_AC6383: NeStr
  loc_AC6385: FFree1Str var_94
  loc_AC6388: BranchF loc_AC6396
  loc_AC638B: LitStr "LA ORDENANZA YA EXISTE. Reintente..."
  loc_AC638E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC6393: Branch loc_AC643C
  loc_AC6396: LitI2_Byte 0
  loc_AC6398: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AC639D: FStFPR8 var_104
  loc_AC63A0: LitStr "INSERT INTO obrareem (OrdeObre, DetaObre, FealObre, NotaObre, CodiUsua) VALUES ( '"
  loc_AC63A3: ILdRf var_88
  loc_AC63A6: ConcatStr
  loc_AC63A7: FStStrNoPop var_94
  loc_AC63AA: LitStr "','"
  loc_AC63AD: ConcatStr
  loc_AC63AE: FStStrNoPop var_98
  loc_AC63B1: ILdRf var_8C
  loc_AC63B4: ConcatStr
  loc_AC63B5: FStStrNoPop var_9C
  loc_AC63B8: LitStr "','"
  loc_AC63BB: ConcatStr
  loc_AC63BC: FStStrNoPop var_E0
  loc_AC63BF: LitI4 1
  loc_AC63C4: LitI4 1
  loc_AC63C9: LitVarStr var_CC, "yyyy-mm-dd"
  loc_AC63CE: FStVarCopyObj var_DC
  loc_AC63D1: FLdRfVar var_DC
  loc_AC63D4: FLdFPR8 var_104
  loc_AC63D7: CVarDate var_BC
  loc_AC63DB: ImpAdCallI2 Format$(, )
  loc_AC63E0: FStStrNoPop var_E4
  loc_AC63E3: ConcatStr
  loc_AC63E4: FStStrNoPop var_E8
  loc_AC63E7: LitStr "','"
  loc_AC63EA: ConcatStr
  loc_AC63EB: FStStrNoPop var_EC
  loc_AC63EE: ILdRf var_90
  loc_AC63F1: ConcatStr
  loc_AC63F2: FStStrNoPop var_F0
  loc_AC63F5: LitStr "','"
  loc_AC63F8: ConcatStr
  loc_AC63F9: FStStrNoPop var_F4
  loc_AC63FC: ImpAdLdI4 MemVar_D9302C
  loc_AC63FF: ConcatStr
  loc_AC6400: FStStrNoPop var_F8
  loc_AC6403: LitStr "');"
  loc_AC6406: ConcatStr
  loc_AC6407: FStStrNoPop var_FC
  loc_AC640A: Call EjecutarRs2(from_stack_1v)
  loc_AC640F: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_AC6428: FFreeVar var_BC = ""
  loc_AC642F: Call Requery()
  loc_AC6434: ILdRf var_88
  loc_AC6437: Call Encontrar(from_stack_1v)
  loc_AC643C: ExitProcHresult
End Sub

Public Sub Modificar(OrdeObre, DetaObre, NotaObre) 'A8D334
  'Data Table: 415B38
  loc_A8D2AC: ILdRf OrdeObre
  loc_A8D2AF: FStStrCopy var_88
  loc_A8D2B2: ILdRf DetaObre
  loc_A8D2B5: FStStrCopy var_8C
  loc_A8D2B8: ILdRf NotaObre
  loc_A8D2BB: FStStrCopy var_90
  loc_A8D2BE: FLdRfVar var_94
  loc_A8D2C1: ILdRf var_88
  loc_A8D2C4: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A8D2C9: ILdRf var_94
  loc_A8D2CC: LitStr vbNullString
  loc_A8D2CF: EqStr
  loc_A8D2D1: FFree1Str var_94
  loc_A8D2D4: BranchF loc_A8D2E2
  loc_A8D2D7: LitStr "LA ORDENANZA NO EXISTE. Reintente..."
  loc_A8D2DA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8D2DF: Branch loc_A8D323
  loc_A8D2E2: LitStr "UPDATE obrareem SET DetaObre = '"
  loc_A8D2E5: ILdRf var_8C
  loc_A8D2E8: ConcatStr
  loc_A8D2E9: FStStrNoPop var_94
  loc_A8D2EC: LitStr "', NotaObre = '"
  loc_A8D2EF: ConcatStr
  loc_A8D2F0: FStStrNoPop var_98
  loc_A8D2F3: ILdRf var_90
  loc_A8D2F6: ConcatStr
  loc_A8D2F7: FStStrNoPop var_9C
  loc_A8D2FA: LitStr "' WHERE OrdeObre = '"
  loc_A8D2FD: ConcatStr
  loc_A8D2FE: FStStrNoPop var_A0
  loc_A8D301: ILdRf var_88
  loc_A8D304: ConcatStr
  loc_A8D305: FStStrNoPop var_A4
  loc_A8D308: LitStr "';"
  loc_A8D30B: ConcatStr
  loc_A8D30C: FStStrNoPop var_A8
  loc_A8D30F: Call EjecutarRs2(from_stack_1v)
  loc_A8D314: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A8D323: Call Requery()
  loc_A8D328: ILdRf var_88
  loc_A8D32B: Call Encontrar(from_stack_1v)
  loc_A8D330: ExitProcHresult
  loc_A8D331: PopTmpLdAd2 arg_1DC
End Sub

Public Sub Delete() 'A25C40
  'Data Table: 415B38
  loc_A25BF8: FLdRfVar var_8C
  loc_A25BFB: FLdRfVar var_88
  loc_A25BFE: FLdPr Me
  loc_A25C01: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A25C06: FLdPr var_88
  loc_A25C09:  = Me.RecordCount
  loc_A25C0E: ILdRf var_8C
  loc_A25C11: LitI4 0
  loc_A25C16: GtI4
  loc_A25C17: FFree1Ad var_88
  loc_A25C1A: BranchF loc_A25C3D
  loc_A25C1D: LitI4 1
  loc_A25C22: FLdRfVar var_88
  loc_A25C25: FLdPr Me
  loc_A25C28: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A25C2D: FLdPr var_88
  loc_A25C30: Me.Delete
  loc_A25C35: FFree1Ad var_88
  loc_A25C38: Call MoveNext()
  loc_A25C3D: ExitProcHresult
End Sub

Public Sub Requery() '9FECC4
  'Data Table: 415B38
  loc_9FEC94: LitI4 -1
  loc_9FEC99: FLdRfVar var_88
  loc_9FEC9C: FLdPr Me
  loc_9FEC9F: from_stack_1v = clsobrareem.global_4283072Get()
  loc_9FECA4: FLdPr var_88
  loc_9FECA7: Me.Requery from_stack_1
  loc_9FECAC: FFree1Ad var_88
  loc_9FECAF: LitVarStr var_98, "Primary"
  loc_9FECB4: PopAdLdVar
  loc_9FECB5: FLdPr Me
  loc_9FECB8: LateIdCall
  loc_9FECC0: ExitProcHresult
End Sub

Public Sub Update() 'A25BC0
  'Data Table: 415B38
  loc_A25B7C: FLdRfVar var_88
  loc_A25B7F: FLdPr Me
  loc_A25B82: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A25B87: FLdZeroAd var_88
  loc_A25B8A: FStAdFunc var_8C
  loc_A25B8D: LitI4 3
  loc_A25B92: FLdPr var_8C
  loc_A25B95: Me.UpdateBatch
  loc_A25B9A: FLdRfVar var_90
  loc_A25B9D: FLdPr var_8C
  loc_A25BA0:  = Me.EditMode
  loc_A25BA5: ILdRf var_90
  loc_A25BA8: LitI4 2
  loc_A25BAD: EqI4
  loc_A25BAE: BranchF loc_A25BB6
  loc_A25BB1: Call MoveLast()
  loc_A25BB6: LitNothing
  loc_A25BB8: FStAd var_8C 
  loc_A25BBC: ExitProcHresult
End Sub

Public Sub Cancel() 'A4E52C
  'Data Table: 415B38
  loc_A4E4D8: FLdRfVar var_88
  loc_A4E4DB: FLdPr Me
  loc_A4E4DE: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A4E4E3: FLdZeroAd var_88
  loc_A4E4E6: FStAdFunc var_8C
  loc_A4E4E9: FLdRfVar var_90
  loc_A4E4EC: FLdPr var_8C
  loc_A4E4EF:  = Me.RecordCount
  loc_A4E4F4: ILdRf var_90
  loc_A4E4F7: LitI4 0
  loc_A4E4FC: GtI4
  loc_A4E4FD: BranchF loc_A4E524
  loc_A4E500: FLdPr var_8C
  loc_A4E503: Me.CancelUpdate
  loc_A4E508: FLdRfVar var_90
  loc_A4E50B: FLdPr var_8C
  loc_A4E50E:  = Me.EditMode
  loc_A4E513: ILdRf var_90
  loc_A4E516: LitI4 2
  loc_A4E51B: EqI4
  loc_A4E51C: BranchF loc_A4E524
  loc_A4E51F: Call MoveFirst()
  loc_A4E524: LitNothing
  loc_A4E526: FStAd var_8C 
  loc_A4E52A: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FCC94
  'Data Table: 415B38
  loc_9FCC68: FLdRfVar var_90
  loc_9FCC6B: FLdRfVar var_8C
  loc_9FCC6E: FLdPr Me
  loc_9FCC71: from_stack_1v = clsobrareem.global_4283072Get()
  loc_9FCC76: FLdPr var_8C
  loc_9FCC79:  = Me.EditMode
  loc_9FCC7E: ILdRf var_90
  loc_9FCC81: LitI4 0
  loc_9FCC86: NeI4
  loc_9FCC87: FStI2 var_86
  loc_9FCC8A: FFree1Ad var_8C
  loc_9FCC8D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A6F53C
  'Data Table: 415B38
  loc_A6F4C8: ILdRf sSelect
  loc_A6F4CB: FStStrCopy var_88
  loc_A6F4CE: LitNothing
  loc_A6F4D0: CastAd
  loc_A6F4D3: FStAdFuncNoPop
  loc_A6F4D6: FLdPr Me
  loc_A6F4D9: Call clsobrareem.global_4283072Set(from_stack_1v)
  loc_A6F4DE: FFree1Ad var_8C
  loc_A6F4E1: New Recordset
  loc_A6F4E5: FStAdFuncNoPop
  loc_A6F4E8: FLdPr Me
  loc_A6F4EB: Call clsobrareem.global_4283072Set(from_stack_1v)
  loc_A6F4F0: FFree1Ad var_8C
  loc_A6F4F3: LitI4 -1
  loc_A6F4F8: LitI4 3
  loc_A6F4FD: LitI4 3
  loc_A6F502: ImpAdLdI4 MemVar_D9301C
  loc_A6F505: CVarAd
  loc_A6F509: PopAdLdVar
  loc_A6F50A: ILdRf var_88
  loc_A6F50D: CVarStr var_9C
  loc_A6F510: PopAdLdVar
  loc_A6F511: FLdRfVar var_8C
  loc_A6F514: FLdPr Me
  loc_A6F517: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A6F51C: FLdPr var_8C
  loc_A6F51F: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6F524: FFree1Ad var_8C
  loc_A6F527: LitVarStr var_9C, "Primary"
  loc_A6F52C: PopAdLdVar
  loc_A6F52D: FLdPr Me
  loc_A6F530: LateIdCall
  loc_A6F538: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A59878
  'Data Table: 415B38
  loc_A59818: ILdRf sSelect
  loc_A5981B: FStStrCopy var_88
  loc_A5981E: LitNothing
  loc_A59820: CastAd
  loc_A59823: FStAdFuncNoPop
  loc_A59826: FLdPr Me
  loc_A59829: Call clsobrareem.global_4283072Set(from_stack_1v)
  loc_A5982E: FFree1Ad var_8C
  loc_A59831: New Recordset
  loc_A59835: FStAdFuncNoPop
  loc_A59838: FLdPr Me
  loc_A5983B: Call clsobrareem.global_4283072Set(from_stack_1v)
  loc_A59840: FFree1Ad var_8C
  loc_A59843: LitI4 -1
  loc_A59848: LitI4 3
  loc_A5984D: LitI4 3
  loc_A59852: ImpAdLdI4 MemVar_D9301C
  loc_A59855: CVarAd
  loc_A59859: PopAdLdVar
  loc_A5985A: ILdRf var_88
  loc_A5985D: CVarStr var_9C
  loc_A59860: PopAdLdVar
  loc_A59861: FLdRfVar var_8C
  loc_A59864: FLdPr Me
  loc_A59867: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A5986C: FLdPr var_8C
  loc_A5986F: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A59874: FFree1Ad var_8C
  loc_A59877: ExitProcHresult
End Sub

Public Sub Encontrar(OrdeObre) '9FF9A0
  'Data Table: 415B38
  loc_9FF978: ILdRf OrdeObre
  loc_9FF97B: FStStrCopy var_88
  loc_9FF97E: LitStr "OrdeObre = '"
  loc_9FF981: ILdRf var_88
  loc_9FF984: ConcatStr
  loc_9FF985: FStStrNoPop var_8C
  loc_9FF988: LitStr "' "
  loc_9FF98B: ConcatStr
  loc_9FF98C: PopTmpLdAdStr
  loc_9FF990: Call Find(from_stack_1v)
  loc_9FF995: FFreeStr var_8C = ""
  loc_9FF99C: ExitProcHresult
End Sub

Public Property Get DataSource() 'A08A44
  'Data Table: 415B38
  loc_A08A14: ZeroRetVal
  loc_A08A16: FLdRfVar var_90
  loc_A08A19: FLdRfVar var_8C
  loc_A08A1C: FLdPr Me
  loc_A08A1F: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A08A24: FLdPr var_8C
  loc_A08A27:  = Me.DataSource
  loc_A08A2C: ILdRf var_90
  loc_A08A2F: CastAd
  loc_A08A32: FStAdFunc var_88
  loc_A08A35: FFreeAd var_8C = ""
  loc_A08A3C: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9F4374
  'Data Table: 415B38
  loc_9F434C: FLdRfVar var_90
  loc_9F434F: FLdRfVar var_8C
  loc_9F4352: FLdPr Me
  loc_9F4355: from_stack_1v = clsobrareem.global_4283072Get()
  loc_9F435A: FLdPr var_8C
  loc_9F435D:  = Me.EditMode
  loc_9F4362: ILdRf var_90
  loc_9F4365: FStR4 var_88
  loc_9F4368: FFree1Ad var_8C
  loc_9F436B: ExitProcCbHresult
  loc_9F4371: MemLdPr global_255
End Sub

Public Property Get OrdeObre() 'A545B4
  'Data Table: 415B38
  loc_A54564: ZeroRetVal
  loc_A54566: FLdRfVar var_B4
  loc_A54569: FLdRfVar var_A4
  loc_A5456C: LitVarStr var_A0, "OrdeObre"
  loc_A54571: PopAdLdVar
  loc_A54572: FLdRfVar var_90
  loc_A54575: FLdRfVar var_8C
  loc_A54578: FLdPr Me
  loc_A5457B: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A54580: FLdPr var_8C
  loc_A54583:  = Me.Fields
  loc_A54588: FLdPr var_90
  loc_A5458B: from_stack_2 = Me.Item(from_stack_1)
  loc_A54590: FLdPr var_A4
  loc_A54593:  = Me.Value
  loc_A54598: FLdRfVar var_B4
  loc_A5459B: CStrVarTmp
  loc_A5459C: FStStr var_88
  loc_A5459F: FFreeAd var_8C = "": var_90 = ""
  loc_A545A8: FFree1Var var_B4 = ""
  loc_A545AB: ExitProcCbHresult
  loc_A545B1: StAryCopy
End Sub

Public Property Get DetaObre() 'A54648
  'Data Table: 415B38
  loc_A545F8: ZeroRetVal
  loc_A545FA: FLdRfVar var_B4
  loc_A545FD: FLdRfVar var_A4
  loc_A54600: LitVarStr var_A0, "DetaObre"
  loc_A54605: PopAdLdVar
  loc_A54606: FLdRfVar var_90
  loc_A54609: FLdRfVar var_8C
  loc_A5460C: FLdPr Me
  loc_A5460F: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A54614: FLdPr var_8C
  loc_A54617:  = Me.Fields
  loc_A5461C: FLdPr var_90
  loc_A5461F: from_stack_2 = Me.Item(from_stack_1)
  loc_A54624: FLdPr var_A4
  loc_A54627:  = Me.Value
  loc_A5462C: FLdRfVar var_B4
  loc_A5462F: CStrVarTmp
  loc_A54630: FStStr var_88
  loc_A54633: FFreeAd var_8C = "": var_90 = ""
  loc_A5463C: FFree1Var var_B4 = ""
  loc_A5463F: ExitProcCbHresult
  loc_A54645: SetLastSystemError
  loc_A54646: IDvI2
End Sub

Public Property Get FealObre() 'A4ED58
  'Data Table: 415B38
  loc_A4ED0C: FLdRfVar var_B8
  loc_A4ED0F: FLdRfVar var_A8
  loc_A4ED12: LitVarStr var_A4, "FealObre"
  loc_A4ED17: PopAdLdVar
  loc_A4ED18: FLdRfVar FealObre
  loc_A4ED1B: FLdRfVar var_90
  loc_A4ED1E: FLdPr Me
  loc_A4ED21: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A4ED26: FLdPr var_90
  loc_A4ED29:  = Me.Fields
  loc_A4ED2E: FLdPr FealObre
  loc_A4ED31: from_stack_2 = Me.Item(from_stack_1)
  loc_A4ED36: FLdPr var_A8
  loc_A4ED39:  = Me.Value
  loc_A4ED3E: FLdRfVar var_B8
  loc_A4ED41: FnCDateVar
  loc_A4ED43: FStFPR8 var_8C
  loc_A4ED46: FFreeAd var_90 = "": FealObre = ""
  loc_A4ED4F: FFree1Var var_B8 = ""
  loc_A4ED52: ExitProcCbHresult
End Sub

Public Property Get NotaObre() 'A546DC
  'Data Table: 415B38
  loc_A5468C: ZeroRetVal
  loc_A5468E: FLdRfVar var_B4
  loc_A54691: FLdRfVar var_A4
  loc_A54694: LitVarStr var_A0, "NotaObre"
  loc_A54699: PopAdLdVar
  loc_A5469A: FLdRfVar var_90
  loc_A5469D: FLdRfVar var_8C
  loc_A546A0: FLdPr Me
  loc_A546A3: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A546A8: FLdPr var_8C
  loc_A546AB:  = Me.Fields
  loc_A546B0: FLdPr var_90
  loc_A546B3: from_stack_2 = Me.Item(from_stack_1)
  loc_A546B8: FLdPr var_A4
  loc_A546BB:  = Me.Value
  loc_A546C0: FLdRfVar var_B4
  loc_A546C3: CStrVarTmp
  loc_A546C4: FStStr var_88
  loc_A546C7: FFreeAd var_8C = "": var_90 = ""
  loc_A546D0: FFree1Var var_B4 = ""
  loc_A546D3: ExitProcCbHresult
  loc_A546D9: FLdPr arg_F00
End Sub

Public Property Get CodiUsua() 'A53EC4
  'Data Table: 415B38
  loc_A53E74: ZeroRetVal
  loc_A53E76: FLdRfVar var_B4
  loc_A53E79: FLdRfVar var_A4
  loc_A53E7C: LitVarStr var_A0, "CodiUsua"
  loc_A53E81: PopAdLdVar
  loc_A53E82: FLdRfVar var_90
  loc_A53E85: FLdRfVar var_8C
  loc_A53E88: FLdPr Me
  loc_A53E8B: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A53E90: FLdPr var_8C
  loc_A53E93:  = Me.Fields
  loc_A53E98: FLdPr var_90
  loc_A53E9B: from_stack_2 = Me.Item(from_stack_1)
  loc_A53EA0: FLdPr var_A4
  loc_A53EA3:  = Me.Value
  loc_A53EA8: FLdRfVar var_B4
  loc_A53EAB: CStrVarTmp
  loc_A53EAC: FStStr var_88
  loc_A53EAF: FFreeAd var_8C = "": var_90 = ""
  loc_A53EB8: FFree1Var var_B4 = ""
  loc_A53EBB: ExitProcCbHresult
End Sub

Public Function ValidaClave(OrdeObre) 'A615E4
  'Data Table: 415B38
  loc_A6158C: ILdRf OrdeObre
  loc_A6158F: FStStrCopy var_8C
  loc_A61592: ZeroRetVal
  loc_A61594: LitStr "SELECT OrdeObre FROM obrareem WHERE OrdeObre = '"
  loc_A61597: ILdRf var_8C
  loc_A6159A: ConcatStr
  loc_A6159B: FStStrNoPop var_90
  loc_A6159E: LitStr "'"
  loc_A615A1: ConcatStr
  loc_A615A2: FStStrNoPop ValidaClave
  loc_A615A5: Call EjecutarRs2(from_stack_1v)
  loc_A615AA: FFreeStr var_90 = ""
  loc_A615B1: FLdRfVar var_9C
  loc_A615B4: FLdRfVar var_98
  loc_A615B7: FLdPr Me
  loc_A615BA: from_stack_1v = clsobrareem.global_4283072Get()
  loc_A615BF: FLdPr var_98
  loc_A615C2:  = Me.RecordCount
  loc_A615C7: ILdRf var_9C
  loc_A615CA: LitI4 0
  loc_A615CF: GtI4
  loc_A615D0: FFree1Ad var_98
  loc_A615D3: BranchF loc_A615DC
  loc_A615D6: LitStr "El REGISTRO YA EXISTE. Reintente..."
  loc_A615D9: FStStrCopy var_88
  loc_A615DC: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E6FD0
  'Data Table: 415B38
  loc_9E6FB4: ILdRf pError
  loc_9E6FB7: FStAd var_88 
  loc_9E6FBB: ILdRf pRecordset
  loc_9E6FBE: FStAd var_8C 
  loc_9E6FC2: FLdPr Me
  loc_9E6FC5: RaiseEvent
  loc_9E6FCD: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A99910
  'Data Table: 415B38
  loc_A99850: ILdRf pRecordset
  loc_A99853: FStAd var_88 
  loc_A99857: ILdRf adReason
  loc_A9985A: FStR4 var_90
  loc_A9985D: ILdRf var_90
  loc_A99860: LitI4 1
  loc_A99865: EqI4
  loc_A99866: BranchF loc_A9986C
  loc_A99869: Branch loc_A998FF
  loc_A9986C: ILdRf var_90
  loc_A9986F: LitI4 9
  loc_A99874: EqI4
  loc_A99875: BranchF loc_A9987B
  loc_A99878: Branch loc_A998FF
  loc_A9987B: ILdRf var_90
  loc_A9987E: LitI4 2
  loc_A99883: EqI4
  loc_A99884: BranchF loc_A9988A
  loc_A99887: Branch loc_A998FF
  loc_A9988A: ILdRf var_90
  loc_A9988D: LitI4 &HB
  loc_A99892: EqI4
  loc_A99893: BranchF loc_A99899
  loc_A99896: Branch loc_A998FF
  loc_A99899: ILdRf var_90
  loc_A9989C: LitI4 &HA
  loc_A998A1: EqI4
  loc_A998A2: BranchF loc_A998A8
  loc_A998A5: Branch loc_A998FF
  loc_A998A8: ILdRf var_90
  loc_A998AB: LitI4 7
  loc_A998B0: EqI4
  loc_A998B1: BranchF loc_A998B7
  loc_A998B4: Branch loc_A998FF
  loc_A998B7: ILdRf var_90
  loc_A998BA: LitI4 8
  loc_A998BF: EqI4
  loc_A998C0: BranchF loc_A998C6
  loc_A998C3: Branch loc_A998FF
  loc_A998C6: ILdRf var_90
  loc_A998C9: LitI4 5
  loc_A998CE: EqI4
  loc_A998CF: BranchF loc_A998D5
  loc_A998D2: Branch loc_A998FF
  loc_A998D5: ILdRf var_90
  loc_A998D8: LitI4 6
  loc_A998DD: EqI4
  loc_A998DE: BranchF loc_A998E4
  loc_A998E1: Branch loc_A998FF
  loc_A998E4: ILdRf var_90
  loc_A998E7: LitI4 4
  loc_A998EC: EqI4
  loc_A998ED: BranchF loc_A998F3
  loc_A998F0: Branch loc_A998FF
  loc_A998F3: ILdRf var_90
  loc_A998F6: LitI4 3
  loc_A998FB: EqI4
  loc_A998FC: BranchF loc_A998FF
  loc_A998FF: FLdI2 var_8A
  loc_A99902: BranchF loc_A9990D
  loc_A99905: LitI4 4
  loc_A9990A: IStI4 adStatus
  loc_A9990D: ExitProcHresult
  loc_A9990E: LitVar_TRUE var_4000
End Sub

Private Function Proc_113_32_9F41A4() '9F41A4
  'Data Table: 415B38
  loc_9F4180: LitStr "Primary"
  loc_9F4183: FLdPr Me
  loc_9F4186: LateIdLdVar var_94 DispID_4 0
  loc_9F418D: CastAdVar Me
  loc_9F4191: FStAdFunc var_98
  loc_9F4194: FLdPr var_98
  loc_9F419C: FFree1Ad var_98
  loc_9F419F: FFree1Var var_94 = ""
  loc_9F41A2: ExitProcHresult
End Function

Private Function Proc_113_33_9F42B8(arg_C) '9F42B8
  'Data Table: 415B38
  loc_9F4294: ILdI4 arg_C
  loc_9F4297: FStStrCopy var_88
  loc_9F429A: ILdRf var_88
  loc_9F429D: LitStr "Primary"
  loc_9F42A0: EqStr
  loc_9F42A2: BranchF loc_9F42B7
  loc_9F42A5: FLdRfVar var_8C
  loc_9F42A8: FLdPr Me
  loc_9F42AB: from_stack_1v = clsobrareem.global_4283072Get()
  loc_9F42B0: FLdZeroAd var_8C
  loc_9F42B3: IStAdFunc
  loc_9F42B7: ExitProcHresult
End Function

Public Function global_4283072Get() '415E54
  global_4283072Get = global_4283072
End Function

Public Sub global_4283072Put(Value) '415E6E
  global_4283072 = Value
End Sub

Public Sub global_4283072Set(Value) '415E88
  global_4283072 = Value
End Sub

Public Function global_4283072Get() '415EA2
  global_4283072Get = global_4283072
End Function

Public Sub global_4283072Put(Value) '415EBC
  global_4283072 = Value
End Sub

Public Sub global_4283072Set(Value) '415ED6
  global_4283072 = Value
End Sub
