VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsentereca"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0D6A4
  'Data Table: 41C480
  loc_A0D668: FLdRfVar var_8C
  loc_A0D66B: FLdRfVar var_88
  loc_A0D66E: FLdPr Me
  loc_A0D671: from_stack_1v = clsentereca.global_4310024Get()
  loc_A0D676: FLdPr var_88
  loc_A0D679:  = Me.RecordCount
  loc_A0D67E: ILdRf var_8C
  loc_A0D681: LitI4 0
  loc_A0D686: GtI4
  loc_A0D687: FFree1Ad var_88
  loc_A0D68A: BranchF loc_A0D6A3
  loc_A0D68D: FLdRfVar var_88
  loc_A0D690: FLdPr Me
  loc_A0D693: from_stack_1v = clsentereca.global_4310024Get()
  loc_A0D698: FLdPr var_88
  loc_A0D69B: Me.MoveFirst
  loc_A0D6A0: FFree1Ad var_88
  loc_A0D6A3: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0D634
  'Data Table: 41C480
  loc_A0D5F8: FLdRfVar var_8C
  loc_A0D5FB: FLdRfVar var_88
  loc_A0D5FE: FLdPr Me
  loc_A0D601: from_stack_1v = clsentereca.global_4310024Get()
  loc_A0D606: FLdPr var_88
  loc_A0D609:  = Me.RecordCount
  loc_A0D60E: ILdRf var_8C
  loc_A0D611: LitI4 0
  loc_A0D616: GtI4
  loc_A0D617: FFree1Ad var_88
  loc_A0D61A: BranchF loc_A0D633
  loc_A0D61D: FLdRfVar var_88
  loc_A0D620: FLdPr Me
  loc_A0D623: from_stack_1v = clsentereca.global_4310024Get()
  loc_A0D628: FLdPr var_88
  loc_A0D62B: Me.MoveLast
  loc_A0D630: FFree1Ad var_88
  loc_A0D633: ExitProcHresult
End Sub

Public Sub MoveNext() 'AA079C
  'Data Table: 41C480
  loc_AA06E0: FLdRfVar var_8A
  loc_AA06E3: FLdRfVar var_88
  loc_AA06E6: FLdPr Me
  loc_AA06E9: from_stack_1v = clsentereca.global_4310024Get()
  loc_AA06EE: FLdPr var_88
  loc_AA06F1:  = Me.EOF
  loc_AA06F6: FLdI2 var_8A
  loc_AA06F9: NotI4
  loc_AA06FA: FLdRfVar var_94
  loc_AA06FD: FLdRfVar var_90
  loc_AA0700: FLdPr Me
  loc_AA0703: from_stack_1v = clsentereca.global_4310024Get()
  loc_AA0708: FLdPr var_90
  loc_AA070B:  = Me.RecordCount
  loc_AA0710: ILdRf var_94
  loc_AA0713: LitI4 0
  loc_AA0718: GtI4
  loc_AA0719: AndI4
  loc_AA071A: FFreeAd var_88 = ""
  loc_AA0721: BranchF loc_AA073A
  loc_AA0724: FLdRfVar var_88
  loc_AA0727: FLdPr Me
  loc_AA072A: from_stack_1v = clsentereca.global_4310024Get()
  loc_AA072F: FLdPr var_88
  loc_AA0732: Me.MoveNext
  loc_AA0737: FFree1Ad var_88
  loc_AA073A: FLdRfVar var_8A
  loc_AA073D: FLdRfVar var_88
  loc_AA0740: FLdPr Me
  loc_AA0743: from_stack_1v = clsentereca.global_4310024Get()
  loc_AA0748: FLdPr var_88
  loc_AA074B:  = Me.EOF
  loc_AA0750: FLdI2 var_8A
  loc_AA0753: FLdRfVar var_94
  loc_AA0756: FLdRfVar var_90
  loc_AA0759: FLdPr Me
  loc_AA075C: from_stack_1v = clsentereca.global_4310024Get()
  loc_AA0761: FLdPr var_90
  loc_AA0764:  = Me.RecordCount
  loc_AA0769: ILdRf var_94
  loc_AA076C: LitI4 0
  loc_AA0771: GtI4
  loc_AA0772: AndI4
  loc_AA0773: FFreeAd var_88 = ""
  loc_AA077A: BranchF loc_AA0798
  loc_AA077D: ImpAdCallFPR4 Beep()
  loc_AA0782: FLdRfVar var_88
  loc_AA0785: FLdPr Me
  loc_AA0788: from_stack_1v = clsentereca.global_4310024Get()
  loc_AA078D: FLdPr var_88
  loc_AA0790: Me.MoveLast
  loc_AA0795: FFree1Ad var_88
  loc_AA0798: ExitProcHresult
  loc_AA0799: FStAdFunc var_A4
End Sub

Public Sub MoveSiguiente() '9D1548
  'Data Table: 41C480
  loc_9D1530: FLdRfVar var_88
  loc_9D1533: FLdPr Me
  loc_9D1536: from_stack_1v = clsentereca.global_4310024Get()
  loc_9D153B: FLdPr var_88
  loc_9D153E: Me.MoveNext
  loc_9D1543: FFree1Ad var_88
  loc_9D1546: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E87C8
  'Data Table: 41C480
  loc_9E87A8: LitVar_Missing var_98
  loc_9E87AB: PopAdLdVar
  loc_9E87AC: ILdI2 iValor
  loc_9E87AF: CI4UI1
  loc_9E87B0: FLdRfVar var_88
  loc_9E87B3: FLdPr Me
  loc_9E87B6: from_stack_1v = clsentereca.global_4310024Get()
  loc_9E87BB: FLdPr var_88
  loc_9E87BE: Me.Move from_stack_1, from_stack_2
  loc_9E87C3: FFree1Ad var_88
  loc_9E87C6: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9CD78
  'Data Table: 41C480
  loc_A9CCBC: FLdRfVar var_8A
  loc_A9CCBF: FLdRfVar var_88
  loc_A9CCC2: FLdPr Me
  loc_A9CCC5: from_stack_1v = clsentereca.global_4310024Get()
  loc_A9CCCA: FLdPr var_88
  loc_A9CCCD:  = Me.BOF
  loc_A9CCD2: FLdI2 var_8A
  loc_A9CCD5: NotI4
  loc_A9CCD6: FLdRfVar var_94
  loc_A9CCD9: FLdRfVar var_90
  loc_A9CCDC: FLdPr Me
  loc_A9CCDF: from_stack_1v = clsentereca.global_4310024Get()
  loc_A9CCE4: FLdPr var_90
  loc_A9CCE7:  = Me.RecordCount
  loc_A9CCEC: ILdRf var_94
  loc_A9CCEF: LitI4 0
  loc_A9CCF4: GtI4
  loc_A9CCF5: AndI4
  loc_A9CCF6: FFreeAd var_88 = ""
  loc_A9CCFD: BranchF loc_A9CD16
  loc_A9CD00: FLdRfVar var_88
  loc_A9CD03: FLdPr Me
  loc_A9CD06: from_stack_1v = clsentereca.global_4310024Get()
  loc_A9CD0B: FLdPr var_88
  loc_A9CD0E: Me.MovePrevious
  loc_A9CD13: FFree1Ad var_88
  loc_A9CD16: FLdRfVar var_8A
  loc_A9CD19: FLdRfVar var_88
  loc_A9CD1C: FLdPr Me
  loc_A9CD1F: from_stack_1v = clsentereca.global_4310024Get()
  loc_A9CD24: FLdPr var_88
  loc_A9CD27:  = Me.BOF
  loc_A9CD2C: FLdI2 var_8A
  loc_A9CD2F: FLdRfVar var_94
  loc_A9CD32: FLdRfVar var_90
  loc_A9CD35: FLdPr Me
  loc_A9CD38: from_stack_1v = clsentereca.global_4310024Get()
  loc_A9CD3D: FLdPr var_90
  loc_A9CD40:  = Me.RecordCount
  loc_A9CD45: ILdRf var_94
  loc_A9CD48: LitI4 0
  loc_A9CD4D: GtI4
  loc_A9CD4E: AndI4
  loc_A9CD4F: FFreeAd var_88 = ""
  loc_A9CD56: BranchF loc_A9CD74
  loc_A9CD59: ImpAdCallFPR4 Beep()
  loc_A9CD5E: FLdRfVar var_88
  loc_A9CD61: FLdPr Me
  loc_A9CD64: from_stack_1v = clsentereca.global_4310024Get()
  loc_A9CD69: FLdPr var_88
  loc_A9CD6C: Me.MoveFirst
  loc_A9CD71: FFree1Ad var_88
  loc_A9CD74: ExitProcHresult
End Sub

Public Property Get EOF() '9F6878
  'Data Table: 41C480
  loc_9F6850: FLdRfVar var_8E
  loc_9F6853: FLdRfVar var_8C
  loc_9F6856: FLdPr Me
  loc_9F6859: from_stack_1v = clsentereca.global_4310024Get()
  loc_9F685E: FLdPr var_8C
  loc_9F6861:  = Me.EOF
  loc_9F6866: FLdI2 var_8E
  loc_9F6869: FStI2 var_86
  loc_9F686C: FFree1Ad var_8C
  loc_9F686F: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F68D4
  'Data Table: 41C480
  loc_9F68AC: FLdRfVar var_8E
  loc_9F68AF: FLdRfVar var_8C
  loc_9F68B2: FLdPr Me
  loc_9F68B5: from_stack_1v = clsentereca.global_4310024Get()
  loc_9F68BA: FLdPr var_8C
  loc_9F68BD:  = Me.BOF
  loc_9F68C2: FLdI2 var_8E
  loc_9F68C5: FStI2 var_86
  loc_9F68C8: FFree1Ad var_8C
  loc_9F68CB: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9E0E1C
  'Data Table: 41C480
  loc_9E0E00: ILdI4 sOrden
  loc_9E0E03: FLdRfVar var_88
  loc_9E0E06: FLdPr Me
  loc_9E0E09: from_stack_1v = clsentereca.global_4310024Get()
  loc_9E0E0E: FLdPr var_88
  loc_9E0E11: Me.Sort = from_stack_1
  loc_9E0E16: FFree1Ad var_88
  loc_9E0E19: ExitProcHresult
End Sub

Public Sub Find(sFind) '9F6D24
  'Data Table: 41C480
  loc_9F6CFC: LitVar_Missing var_98
  loc_9F6CFF: PopAdLdVar
  loc_9F6D00: LitI4 1
  loc_9F6D05: LitI4 0
  loc_9F6D0A: ILdI4 sFind
  loc_9F6D0D: FLdRfVar var_88
  loc_9F6D10: FLdPr Me
  loc_9F6D13: from_stack_1v = clsentereca.global_4310024Get()
  loc_9F6D18: FLdPr var_88
  loc_9F6D1B: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F6D20: FFree1Ad var_88
  loc_9F6D23: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F6DDC
  'Data Table: 41C480
  loc_9F6DB4: FLdRfVar var_90
  loc_9F6DB7: FLdRfVar var_8C
  loc_9F6DBA: FLdPr Me
  loc_9F6DBD: from_stack_1v = clsentereca.global_4310024Get()
  loc_9F6DC2: FLdPr var_8C
  loc_9F6DC5:  = Me.AbsolutePosition
  loc_9F6DCA: ILdRf var_90
  loc_9F6DCD: FStR4 var_88
  loc_9F6DD0: FFree1Ad var_8C
  loc_9F6DD3: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F6E94
  'Data Table: 41C480
  loc_9F6E6C: FLdRfVar var_90
  loc_9F6E6F: FLdRfVar var_8C
  loc_9F6E72: FLdPr Me
  loc_9F6E75: from_stack_1v = clsentereca.global_4310024Get()
  loc_9F6E7A: FLdPr var_8C
  loc_9F6E7D:  = Me.RecordCount
  loc_9F6E82: ILdRf var_90
  loc_9F6E85: FStR4 var_88
  loc_9F6E88: FFree1Ad var_8C
  loc_9F6E8B: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiEnre, DetaEnre, NumeAcpa) 'A8C498
  'Data Table: 41C480
  loc_A8C410: ILdRf DetaEnre
  loc_A8C413: FStStrCopy var_88
  loc_A8C416: FLdRfVar var_8C
  loc_A8C419: FLdI2 CodiEnre
  loc_A8C41C: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A8C421: ILdRf var_8C
  loc_A8C424: LitStr vbNullString
  loc_A8C427: NeStr
  loc_A8C429: FFree1Str var_8C
  loc_A8C42C: BranchF loc_A8C43A
  loc_A8C42F: LitStr "El ENTE YA EXISTE. Reintente..."
  loc_A8C432: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8C437: Branch loc_A8C496
  loc_A8C43A: LitStr "INSERT INTO infogov.entereca (CodiEnre, DetaEnre, NumeAcpa) VALUES ("
  loc_A8C43D: FLdI2 CodiEnre
  loc_A8C440: CStrUI1
  loc_A8C442: FStStrNoPop var_8C
  loc_A8C445: ConcatStr
  loc_A8C446: FStStrNoPop var_90
  loc_A8C449: LitStr ",'"
  loc_A8C44C: ConcatStr
  loc_A8C44D: FStStrNoPop var_94
  loc_A8C450: ILdRf var_88
  loc_A8C453: ConcatStr
  loc_A8C454: FStStrNoPop var_98
  loc_A8C457: LitStr "',"
  loc_A8C45A: ConcatStr
  loc_A8C45B: FStStrNoPop var_9C
  loc_A8C45E: FLdI2 NumeAcpa
  loc_A8C461: CStrUI1
  loc_A8C463: FStStrNoPop var_A0
  loc_A8C466: ConcatStr
  loc_A8C467: FStStrNoPop var_A4
  loc_A8C46A: LitStr ");"
  loc_A8C46D: ConcatStr
  loc_A8C46E: FStStrNoPop var_A8
  loc_A8C471: Call EjecutarRs2(from_stack_1v)
  loc_A8C476: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A8C489: Call Requery()
  loc_A8C48E: FLdI2 CodiEnre
  loc_A8C491: Call Encontrar(from_stack_1v)
  loc_A8C496: ExitProcHresult
End Sub

Public Sub Modificar(CodiEnre, DetaEnre, NumeAcpa) 'A85F38
  'Data Table: 41C480
  loc_A85EB8: ILdRf DetaEnre
  loc_A85EBB: FStStrCopy var_88
  loc_A85EBE: FLdRfVar var_8C
  loc_A85EC1: FLdI2 CodiEnre
  loc_A85EC4: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A85EC9: ILdRf var_8C
  loc_A85ECC: LitStr vbNullString
  loc_A85ECF: EqStr
  loc_A85ED1: FFree1Str var_8C
  loc_A85ED4: BranchF loc_A85EE2
  loc_A85ED7: LitStr "El ENTE NO EXISTE. Reintente..."
  loc_A85EDA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A85EDF: Branch loc_A85F28
  loc_A85EE2: LitStr "UPDATE infogov.entereca SET DetaEnre = '"
  loc_A85EE5: ILdRf var_88
  loc_A85EE8: ConcatStr
  loc_A85EE9: FStStrNoPop var_8C
  loc_A85EEC: LitStr "', NumeAcpa = "
  loc_A85EEF: ConcatStr
  loc_A85EF0: FStStrNoPop var_90
  loc_A85EF3: ILdRf NumeAcpa
  loc_A85EF6: CStrI4
  loc_A85EF8: FStStrNoPop var_94
  loc_A85EFB: ConcatStr
  loc_A85EFC: FStStrNoPop var_98
  loc_A85EFF: LitStr " WHERE CodiEnre = "
  loc_A85F02: ConcatStr
  loc_A85F03: FStStrNoPop var_9C
  loc_A85F06: FLdI2 CodiEnre
  loc_A85F09: CStrUI1
  loc_A85F0B: FStStrNoPop var_A0
  loc_A85F0E: ConcatStr
  loc_A85F0F: FStStrNoPop var_A4
  loc_A85F12: Call EjecutarRs2(from_stack_1v)
  loc_A85F17: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A85F28: Call Requery()
  loc_A85F2D: FLdI2 CodiEnre
  loc_A85F30: Call Encontrar(from_stack_1v)
  loc_A85F35: ExitProcHresult
End Sub

Public Sub Delete() 'A23678
  'Data Table: 41C480
  loc_A23630: FLdRfVar var_8C
  loc_A23633: FLdRfVar var_88
  loc_A23636: FLdPr Me
  loc_A23639: from_stack_1v = clsentereca.global_4310024Get()
  loc_A2363E: FLdPr var_88
  loc_A23641:  = Me.RecordCount
  loc_A23646: ILdRf var_8C
  loc_A23649: LitI4 0
  loc_A2364E: GtI4
  loc_A2364F: FFree1Ad var_88
  loc_A23652: BranchF loc_A23675
  loc_A23655: LitI4 1
  loc_A2365A: FLdRfVar var_88
  loc_A2365D: FLdPr Me
  loc_A23660: from_stack_1v = clsentereca.global_4310024Get()
  loc_A23665: FLdPr var_88
  loc_A23668: Me.Delete
  loc_A2366D: FFree1Ad var_88
  loc_A23670: Call MoveNext()
  loc_A23675: ExitProcHresult
End Sub

Public Sub Requery() 'A023D8
  'Data Table: 41C480
  loc_A023A8: LitI4 -1
  loc_A023AD: FLdRfVar var_88
  loc_A023B0: FLdPr Me
  loc_A023B3: from_stack_1v = clsentereca.global_4310024Get()
  loc_A023B8: FLdPr var_88
  loc_A023BB: Me.Requery from_stack_1
  loc_A023C0: FFree1Ad var_88
  loc_A023C3: LitVarStr var_98, "Primary"
  loc_A023C8: PopAdLdVar
  loc_A023C9: FLdPr Me
  loc_A023CC: LateIdCall
  loc_A023D4: ExitProcHresult
  loc_A023D5: CExtInstUnk
End Sub

Public Sub Update() 'A236F0
  'Data Table: 41C480
  loc_A236AC: FLdRfVar var_88
  loc_A236AF: FLdPr Me
  loc_A236B2: from_stack_1v = clsentereca.global_4310024Get()
  loc_A236B7: FLdZeroAd var_88
  loc_A236BA: FStAdFunc var_8C
  loc_A236BD: LitI4 3
  loc_A236C2: FLdPr var_8C
  loc_A236C5: Me.UpdateBatch
  loc_A236CA: FLdRfVar var_90
  loc_A236CD: FLdPr var_8C
  loc_A236D0:  = Me.EditMode
  loc_A236D5: ILdRf var_90
  loc_A236D8: LitI4 2
  loc_A236DD: EqI4
  loc_A236DE: BranchF loc_A236E6
  loc_A236E1: Call MoveLast()
  loc_A236E6: LitNothing
  loc_A236E8: FStAd var_8C 
  loc_A236EC: ExitProcHresult
End Sub

Public Sub Cancel() 'A48AF0
  'Data Table: 41C480
  loc_A48A9C: FLdRfVar var_88
  loc_A48A9F: FLdPr Me
  loc_A48AA2: from_stack_1v = clsentereca.global_4310024Get()
  loc_A48AA7: FLdZeroAd var_88
  loc_A48AAA: FStAdFunc var_8C
  loc_A48AAD: FLdRfVar var_90
  loc_A48AB0: FLdPr var_8C
  loc_A48AB3:  = Me.RecordCount
  loc_A48AB8: ILdRf var_90
  loc_A48ABB: LitI4 0
  loc_A48AC0: GtI4
  loc_A48AC1: BranchF loc_A48AE8
  loc_A48AC4: FLdPr var_8C
  loc_A48AC7: Me.CancelUpdate
  loc_A48ACC: FLdRfVar var_90
  loc_A48ACF: FLdPr var_8C
  loc_A48AD2:  = Me.EditMode
  loc_A48AD7: ILdRf var_90
  loc_A48ADA: LitI4 2
  loc_A48ADF: EqI4
  loc_A48AE0: BranchF loc_A48AE8
  loc_A48AE3: Call MoveFirst()
  loc_A48AE8: LitNothing
  loc_A48AEA: FStAd var_8C 
  loc_A48AEE: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FE194
  'Data Table: 41C480
  loc_9FE168: FLdRfVar var_90
  loc_9FE16B: FLdRfVar var_8C
  loc_9FE16E: FLdPr Me
  loc_9FE171: from_stack_1v = clsentereca.global_4310024Get()
  loc_9FE176: FLdPr var_8C
  loc_9FE179:  = Me.EditMode
  loc_9FE17E: ILdRf var_90
  loc_9FE181: LitI4 0
  loc_9FE186: NeI4
  loc_9FE187: FStI2 var_86
  loc_9FE18A: FFree1Ad var_8C
  loc_9FE18D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A953D4
  'Data Table: 41C480
  loc_A95320: ILdRf sSelect
  loc_A95323: FStStrCopy var_88
  loc_A95326: LitNothing
  loc_A95328: CastAd
  loc_A9532B: FStAdFuncNoPop
  loc_A9532E: FLdPr Me
  loc_A95331: Call clsentereca.global_4310024Set(from_stack_1v)
  loc_A95336: FFree1Ad var_8C
  loc_A95339: New Recordset
  loc_A9533D: FStAdFuncNoPop
  loc_A95340: FLdPr Me
  loc_A95343: Call clsentereca.global_4310024Set(from_stack_1v)
  loc_A95348: FFree1Ad var_8C
  loc_A9534B: LitI2_Byte 2
  loc_A9534D: CI2UI1
  loc_A9534F: LitI2_Byte 3
  loc_A95351: EqI2
  loc_A95352: BranchF loc_A9538B
  loc_A95355: LitI4 -1
  loc_A9535A: LitI4 3
  loc_A9535F: LitI4 3
  loc_A95364: ImpAdLdI4 MemVar_D93024
  loc_A95367: CVarStr var_AC
  loc_A9536A: PopAdLdVar
  loc_A9536B: ILdRf var_88
  loc_A9536E: CVarStr var_9C
  loc_A95371: PopAdLdVar
  loc_A95372: FLdRfVar var_8C
  loc_A95375: FLdPr Me
  loc_A95378: from_stack_1v = clsentereca.global_4310024Get()
  loc_A9537D: FLdPr var_8C
  loc_A95380: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A95385: FFree1Ad var_8C
  loc_A95388: Branch loc_A953BF
  loc_A9538B: LitI4 -1
  loc_A95390: LitI4 3
  loc_A95395: LitI4 3
  loc_A9539A: ImpAdLdI4 MemVar_D9301C
  loc_A9539D: CVarAd
  loc_A953A1: PopAdLdVar
  loc_A953A2: ILdRf var_88
  loc_A953A5: CVarStr var_9C
  loc_A953A8: PopAdLdVar
  loc_A953A9: FLdRfVar var_8C
  loc_A953AC: FLdPr Me
  loc_A953AF: from_stack_1v = clsentereca.global_4310024Get()
  loc_A953B4: FLdPr var_8C
  loc_A953B7: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A953BC: FFree1Ad var_8C
  loc_A953BF: LitVarStr var_9C, "Primary"
  loc_A953C4: PopAdLdVar
  loc_A953C5: FLdPr Me
  loc_A953C8: LateIdCall
  loc_A953D0: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A5B3C8
  'Data Table: 41C480
  loc_A5B368: ILdRf sSelect
  loc_A5B36B: FStStrCopy var_88
  loc_A5B36E: LitNothing
  loc_A5B370: CastAd
  loc_A5B373: FStAdFuncNoPop
  loc_A5B376: FLdPr Me
  loc_A5B379: Call clsentereca.global_4310024Set(from_stack_1v)
  loc_A5B37E: FFree1Ad var_8C
  loc_A5B381: New Recordset
  loc_A5B385: FStAdFuncNoPop
  loc_A5B388: FLdPr Me
  loc_A5B38B: Call clsentereca.global_4310024Set(from_stack_1v)
  loc_A5B390: FFree1Ad var_8C
  loc_A5B393: LitI4 -1
  loc_A5B398: LitI4 3
  loc_A5B39D: LitI4 3
  loc_A5B3A2: ImpAdLdI4 MemVar_D9301C
  loc_A5B3A5: CVarAd
  loc_A5B3A9: PopAdLdVar
  loc_A5B3AA: ILdRf var_88
  loc_A5B3AD: CVarStr var_9C
  loc_A5B3B0: PopAdLdVar
  loc_A5B3B1: FLdRfVar var_8C
  loc_A5B3B4: FLdPr Me
  loc_A5B3B7: from_stack_1v = clsentereca.global_4310024Get()
  loc_A5B3BC: FLdPr var_8C
  loc_A5B3BF: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5B3C4: FFree1Ad var_8C
  loc_A5B3C7: ExitProcHresult
End Sub

Public Sub Encontrar(CodiEnre) '9EAEE4
  'Data Table: 41C480
  loc_9EAEC4: LitStr "CodiEnre = "
  loc_9EAEC7: FLdI2 CodiEnre
  loc_9EAECA: CStrUI1
  loc_9EAECC: FStStrNoPop var_88
  loc_9EAECF: ConcatStr
  loc_9EAED0: PopTmpLdAdStr
  loc_9EAED4: Call Find(from_stack_1v)
  loc_9EAED9: FFreeStr var_88 = ""
  loc_9EAEE0: ExitProcHresult
End Sub

Public Property Get DataSource() 'A08CCC
  'Data Table: 41C480
  loc_A08C9C: ZeroRetVal
  loc_A08C9E: FLdRfVar var_90
  loc_A08CA1: FLdRfVar var_8C
  loc_A08CA4: FLdPr Me
  loc_A08CA7: from_stack_1v = clsentereca.global_4310024Get()
  loc_A08CAC: FLdPr var_8C
  loc_A08CAF:  = Me.DataSource
  loc_A08CB4: ILdRf var_90
  loc_A08CB7: CastAd
  loc_A08CBA: FStAdFunc var_88
  loc_A08CBD: FFreeAd var_8C = ""
  loc_A08CC4: ExitProcCbHresult
  loc_A08CCA: FLdPr Me08
End Sub

Public Property Get EditMode() '9F750C
  'Data Table: 41C480
  loc_9F74E4: FLdRfVar var_90
  loc_9F74E7: FLdRfVar var_8C
  loc_9F74EA: FLdPr Me
  loc_9F74ED: from_stack_1v = clsentereca.global_4310024Get()
  loc_9F74F2: FLdPr var_8C
  loc_9F74F5:  = Me.EditMode
  loc_9F74FA: ILdRf var_90
  loc_9F74FD: FStR4 var_88
  loc_9F7500: FFree1Ad var_8C
  loc_9F7503: ExitProcCbHresult
  loc_9F7509: CVarR8
End Sub

Public Property Get CodiEnre() 'A48944
  'Data Table: 41C480
  loc_A488F8: FLdRfVar var_B4
  loc_A488FB: FLdRfVar var_A4
  loc_A488FE: LitVarStr var_A0, "CodiEnre"
  loc_A48903: PopAdLdVar
  loc_A48904: FLdRfVar var_90
  loc_A48907: FLdRfVar var_8C
  loc_A4890A: FLdPr Me
  loc_A4890D: from_stack_1v = clsentereca.global_4310024Get()
  loc_A48912: FLdPr var_8C
  loc_A48915:  = Me.Fields
  loc_A4891A: FLdPr var_90
  loc_A4891D: from_stack_2 = Me.Item(from_stack_1)
  loc_A48922: FLdPr var_A4
  loc_A48925:  = Me.Value
  loc_A4892A: FLdRfVar var_B4
  loc_A4892D: CI2Var
  loc_A4892E: FStI2 var_86
  loc_A48931: FFreeAd var_8C = "": var_90 = ""
  loc_A4893A: FFree1Var var_B4 = ""
  loc_A4893D: ExitProcCbHresult
End Sub

Public Property Get DetaEnre() 'A54CA4
  'Data Table: 41C480
  loc_A54C54: ZeroRetVal
  loc_A54C56: FLdRfVar var_B4
  loc_A54C59: FLdRfVar var_A4
  loc_A54C5C: LitVarStr var_A0, "DetaEnre"
  loc_A54C61: PopAdLdVar
  loc_A54C62: FLdRfVar var_90
  loc_A54C65: FLdRfVar var_8C
  loc_A54C68: FLdPr Me
  loc_A54C6B: from_stack_1v = clsentereca.global_4310024Get()
  loc_A54C70: FLdPr var_8C
  loc_A54C73:  = Me.Fields
  loc_A54C78: FLdPr var_90
  loc_A54C7B: from_stack_2 = Me.Item(from_stack_1)
  loc_A54C80: FLdPr var_A4
  loc_A54C83:  = Me.Value
  loc_A54C88: FLdRfVar var_B4
  loc_A54C8B: CStrVarTmp
  loc_A54C8C: FStStr var_88
  loc_A54C8F: FFreeAd var_8C = "": var_90 = ""
  loc_A54C98: FFree1Var var_B4 = ""
  loc_A54C9B: ExitProcCbHresult
End Sub

Public Function ValidaClave(CodiEnre) 'A52960
  'Data Table: 41C480
  loc_A52910: ZeroRetVal
  loc_A52912: LitStr "SELECT CodiEnre FROM infogov.entereca WHERE CodiEnre = "
  loc_A52915: FLdI2 CodiEnre
  loc_A52918: CStrUI1
  loc_A5291A: FStStrNoPop var_8C
  loc_A5291D: ConcatStr
  loc_A5291E: FStStrNoPop var_90
  loc_A52921: Call EjecutarRs2(from_stack_1v)
  loc_A52926: FFreeStr var_8C = ""
  loc_A5292D: FLdRfVar var_98
  loc_A52930: FLdRfVar ValidaClave
  loc_A52933: FLdPr Me
  loc_A52936: from_stack_1v = clsentereca.global_4310024Get()
  loc_A5293B: FLdPr ValidaClave
  loc_A5293E:  = Me.RecordCount
  loc_A52943: ILdRf var_98
  loc_A52946: LitI4 0
  loc_A5294B: GtI4
  loc_A5294C: FFree1Ad ValidaClave
  loc_A5294F: BranchF loc_A52958
  loc_A52952: LitStr "EL ENTE YA EXISTE. Reintente..."
  loc_A52955: FStStrCopy var_88
  loc_A52958: ExitProcCbHresult
End Function

Public Function NuevoRegistro() 'ABB440
  'Data Table: 41C480
  loc_ABB350: New Recordset
  loc_ABB354: FStAdFuncNoPop
  loc_ABB357: FLdPr Me
  loc_ABB35A: Call clsentereca.global_4310024Set(from_stack_1v)
  loc_ABB35F: FFree1Ad var_8C
  loc_ABB362: LitI4 -1
  loc_ABB367: LitI4 3
  loc_ABB36C: LitI4 3
  loc_ABB371: ImpAdLdI4 MemVar_D9301C
  loc_ABB374: CVarAd
  loc_ABB378: PopAdLdVar
  loc_ABB379: LitVarStr var_9C, "SELECT CodiEnre FROM infogov.entereca ORDER BY CodiEnre DESC "
  loc_ABB37E: PopAdLdVar
  loc_ABB37F: FLdRfVar var_8C
  loc_ABB382: FLdPr Me
  loc_ABB385: from_stack_1v = clsentereca.global_4310024Get()
  loc_ABB38A: FLdPr var_8C
  loc_ABB38D: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_ABB392: FFree1Ad var_8C
  loc_ABB395: FLdRfVar var_B0
  loc_ABB398: FLdRfVar var_8C
  loc_ABB39B: FLdPr Me
  loc_ABB39E: from_stack_1v = clsentereca.global_4310024Get()
  loc_ABB3A3: FLdPr var_8C
  loc_ABB3A6:  = Me.RecordCount
  loc_ABB3AB: ILdRf var_B0
  loc_ABB3AE: LitI4 0
  loc_ABB3B3: GtI4
  loc_ABB3B4: FFree1Ad var_8C
  loc_ABB3B7: BranchF loc_ABB409
  loc_ABB3BA: FLdRfVar var_C8
  loc_ABB3BD: FLdRfVar var_B8
  loc_ABB3C0: LitVarStr var_9C, "CodiEnre"
  loc_ABB3C5: PopAdLdVar
  loc_ABB3C6: FLdRfVar var_B4
  loc_ABB3C9: FLdRfVar var_8C
  loc_ABB3CC: FLdPr Me
  loc_ABB3CF: from_stack_1v = clsentereca.global_4310024Get()
  loc_ABB3D4: FLdPr var_8C
  loc_ABB3D7:  = Me.Fields
  loc_ABB3DC: FLdPr var_B4
  loc_ABB3DF: from_stack_2 = Me.Item(from_stack_1)
  loc_ABB3E4: FLdPr var_B8
  loc_ABB3E7:  = Me.Value
  loc_ABB3EC: FLdRfVar var_C8
  loc_ABB3EF: FnCLngVar
  loc_ABB3F1: LitI4 1
  loc_ABB3F6: AddI4
  loc_ABB3F7: FStR4 var_88
  loc_ABB3FA: FFreeAd var_8C = "": var_B4 = ""
  loc_ABB403: FFree1Var var_C8 = ""
  loc_ABB406: Branch loc_ABB411
  loc_ABB409: LitI4 1
  loc_ABB40E: FStR4 var_88
  loc_ABB411: FLdRfVar var_8C
  loc_ABB414: FLdPr Me
  loc_ABB417: from_stack_1v = clsentereca.global_4310024Get()
  loc_ABB41C: FLdPr var_8C
  loc_ABB41F: Me.Close
  loc_ABB424: FFree1Ad var_8C
  loc_ABB427: LitNothing
  loc_ABB429: CastAd
  loc_ABB42C: FStAdFuncNoPop
  loc_ABB42F: FLdPr Me
  loc_ABB432: Call clsentereca.global_4310024Set(from_stack_1v)
  loc_ABB437: FFree1Ad var_8C
  loc_ABB43A: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E8E00
  'Data Table: 41C480
  loc_9E8DE4: ILdRf pError
  loc_9E8DE7: FStAd var_88 
  loc_9E8DEB: ILdRf pRecordset
  loc_9E8DEE: FStAd var_8C 
  loc_9E8DF2: FLdPr Me
  loc_9E8DF5: RaiseEvent
  loc_9E8DFD: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9EB08
  'Data Table: 41C480
  loc_A9EA48: ILdRf pRecordset
  loc_A9EA4B: FStAd var_88 
  loc_A9EA4F: ILdRf adReason
  loc_A9EA52: FStR4 var_90
  loc_A9EA55: ILdRf var_90
  loc_A9EA58: LitI4 1
  loc_A9EA5D: EqI4
  loc_A9EA5E: BranchF loc_A9EA64
  loc_A9EA61: Branch loc_A9EAF7
  loc_A9EA64: ILdRf var_90
  loc_A9EA67: LitI4 9
  loc_A9EA6C: EqI4
  loc_A9EA6D: BranchF loc_A9EA73
  loc_A9EA70: Branch loc_A9EAF7
  loc_A9EA73: ILdRf var_90
  loc_A9EA76: LitI4 2
  loc_A9EA7B: EqI4
  loc_A9EA7C: BranchF loc_A9EA82
  loc_A9EA7F: Branch loc_A9EAF7
  loc_A9EA82: ILdRf var_90
  loc_A9EA85: LitI4 &HB
  loc_A9EA8A: EqI4
  loc_A9EA8B: BranchF loc_A9EA91
  loc_A9EA8E: Branch loc_A9EAF7
  loc_A9EA91: ILdRf var_90
  loc_A9EA94: LitI4 &HA
  loc_A9EA99: EqI4
  loc_A9EA9A: BranchF loc_A9EAA0
  loc_A9EA9D: Branch loc_A9EAF7
  loc_A9EAA0: ILdRf var_90
  loc_A9EAA3: LitI4 7
  loc_A9EAA8: EqI4
  loc_A9EAA9: BranchF loc_A9EAAF
  loc_A9EAAC: Branch loc_A9EAF7
  loc_A9EAAF: ILdRf var_90
  loc_A9EAB2: LitI4 8
  loc_A9EAB7: EqI4
  loc_A9EAB8: BranchF loc_A9EABE
  loc_A9EABB: Branch loc_A9EAF7
  loc_A9EABE: ILdRf var_90
  loc_A9EAC1: LitI4 5
  loc_A9EAC6: EqI4
  loc_A9EAC7: BranchF loc_A9EACD
  loc_A9EACA: Branch loc_A9EAF7
  loc_A9EACD: ILdRf var_90
  loc_A9EAD0: LitI4 6
  loc_A9EAD5: EqI4
  loc_A9EAD6: BranchF loc_A9EADC
  loc_A9EAD9: Branch loc_A9EAF7
  loc_A9EADC: ILdRf var_90
  loc_A9EADF: LitI4 4
  loc_A9EAE4: EqI4
  loc_A9EAE5: BranchF loc_A9EAEB
  loc_A9EAE8: Branch loc_A9EAF7
  loc_A9EAEB: ILdRf var_90
  loc_A9EAEE: LitI4 3
  loc_A9EAF3: EqI4
  loc_A9EAF4: BranchF loc_A9EAF7
  loc_A9EAF7: FLdI2 var_8A
  loc_A9EAFA: BranchF loc_A9EB05
  loc_A9EAFD: LitI4 4
  loc_A9EB02: IStI4 adStatus
  loc_A9EB05: ExitProcHresult
End Sub

Private Function Proc_7_30_9F705C() '9F705C
  'Data Table: 41C480
  loc_9F7038: LitStr "Primary"
  loc_9F703B: FLdPr Me
  loc_9F703E: LateIdLdVar var_94 DispID_4 0
  loc_9F7045: CastAdVar Me
  loc_9F7049: FStAdFunc var_98
  loc_9F704C: FLdPr var_98
  loc_9F7054: FFree1Ad var_98
  loc_9F7057: FFree1Var var_94 = ""
  loc_9F705A: ExitProcHresult
End Function

Private Function Proc_7_31_9F73F4(arg_C) '9F73F4
  'Data Table: 41C480
  loc_9F73D0: ILdI4 arg_C
  loc_9F73D3: FStStrCopy var_88
  loc_9F73D6: ILdRf var_88
  loc_9F73D9: LitStr "Primary"
  loc_9F73DC: EqStr
  loc_9F73DE: BranchF loc_9F73F3
  loc_9F73E1: FLdRfVar var_8C
  loc_9F73E4: FLdPr Me
  loc_9F73E7: from_stack_1v = clsentereca.global_4310024Get()
  loc_9F73EC: FLdZeroAd var_8C
  loc_9F73EF: IStAdFunc
  loc_9F73F3: ExitProcHresult
End Function

Public Function global_4310024Get() '41C7F8
  global_4310024Get = global_4310024
End Function

Public Sub global_4310024Put(Value) '41C812
  global_4310024 = Value
End Sub

Public Sub global_4310024Set(Value) '41C82C
  global_4310024 = Value
End Sub

Public Function global_4310024Get() '41C846
  global_4310024Get = global_4310024
End Function

Public Sub global_4310024Put(Value) '41C860
  global_4310024 = Value
End Sub

Public Sub global_4310024Set(Value) '41C87A
  global_4310024 = Value
End Sub

Public Function global_4310024Get() '41C894
  global_4310024Get = global_4310024
End Function

Public Sub global_4310024Put(Value) '41C8AE
  global_4310024 = Value
End Sub

Public Sub global_4310024Set(Value) '41C8C8
  global_4310024 = Value
End Sub
