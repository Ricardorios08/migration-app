VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clscementerio"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0C674
  'Data Table: 423C38
  loc_A0C638: FLdRfVar var_8C
  loc_A0C63B: FLdRfVar var_88
  loc_A0C63E: FLdPr Me
  loc_A0C641: from_stack_1v = clscementerio.global_4340672Get()
  loc_A0C646: FLdPr var_88
  loc_A0C649:  = Me.RecordCount
  loc_A0C64E: ILdRf var_8C
  loc_A0C651: LitI4 0
  loc_A0C656: GtI4
  loc_A0C657: FFree1Ad var_88
  loc_A0C65A: BranchF loc_A0C673
  loc_A0C65D: FLdRfVar var_88
  loc_A0C660: FLdPr Me
  loc_A0C663: from_stack_1v = clscementerio.global_4340672Get()
  loc_A0C668: FLdPr var_88
  loc_A0C66B: Me.MoveFirst
  loc_A0C670: FFree1Ad var_88
  loc_A0C673: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0C914
  'Data Table: 423C38
  loc_A0C8D8: FLdRfVar var_8C
  loc_A0C8DB: FLdRfVar var_88
  loc_A0C8DE: FLdPr Me
  loc_A0C8E1: from_stack_1v = clscementerio.global_4340672Get()
  loc_A0C8E6: FLdPr var_88
  loc_A0C8E9:  = Me.RecordCount
  loc_A0C8EE: ILdRf var_8C
  loc_A0C8F1: LitI4 0
  loc_A0C8F6: GtI4
  loc_A0C8F7: FFree1Ad var_88
  loc_A0C8FA: BranchF loc_A0C913
  loc_A0C8FD: FLdRfVar var_88
  loc_A0C900: FLdPr Me
  loc_A0C903: from_stack_1v = clscementerio.global_4340672Get()
  loc_A0C908: FLdPr var_88
  loc_A0C90B: Me.MoveLast
  loc_A0C910: FFree1Ad var_88
  loc_A0C913: ExitProcHresult
End Sub

Public Sub MoveNext() 'AA14F4
  'Data Table: 423C38
  loc_AA1438: FLdRfVar var_8A
  loc_AA143B: FLdRfVar var_88
  loc_AA143E: FLdPr Me
  loc_AA1441: from_stack_1v = clscementerio.global_4340672Get()
  loc_AA1446: FLdPr var_88
  loc_AA1449:  = Me.EOF
  loc_AA144E: FLdI2 var_8A
  loc_AA1451: NotI4
  loc_AA1452: FLdRfVar var_94
  loc_AA1455: FLdRfVar var_90
  loc_AA1458: FLdPr Me
  loc_AA145B: from_stack_1v = clscementerio.global_4340672Get()
  loc_AA1460: FLdPr var_90
  loc_AA1463:  = Me.RecordCount
  loc_AA1468: ILdRf var_94
  loc_AA146B: LitI4 0
  loc_AA1470: GtI4
  loc_AA1471: AndI4
  loc_AA1472: FFreeAd var_88 = ""
  loc_AA1479: BranchF loc_AA1492
  loc_AA147C: FLdRfVar var_88
  loc_AA147F: FLdPr Me
  loc_AA1482: from_stack_1v = clscementerio.global_4340672Get()
  loc_AA1487: FLdPr var_88
  loc_AA148A: Me.MoveNext
  loc_AA148F: FFree1Ad var_88
  loc_AA1492: FLdRfVar var_8A
  loc_AA1495: FLdRfVar var_88
  loc_AA1498: FLdPr Me
  loc_AA149B: from_stack_1v = clscementerio.global_4340672Get()
  loc_AA14A0: FLdPr var_88
  loc_AA14A3:  = Me.EOF
  loc_AA14A8: FLdI2 var_8A
  loc_AA14AB: FLdRfVar var_94
  loc_AA14AE: FLdRfVar var_90
  loc_AA14B1: FLdPr Me
  loc_AA14B4: from_stack_1v = clscementerio.global_4340672Get()
  loc_AA14B9: FLdPr var_90
  loc_AA14BC:  = Me.RecordCount
  loc_AA14C1: ILdRf var_94
  loc_AA14C4: LitI4 0
  loc_AA14C9: GtI4
  loc_AA14CA: AndI4
  loc_AA14CB: FFreeAd var_88 = ""
  loc_AA14D2: BranchF loc_AA14F0
  loc_AA14D5: ImpAdCallFPR4 Beep()
  loc_AA14DA: FLdRfVar var_88
  loc_AA14DD: FLdPr Me
  loc_AA14E0: from_stack_1v = clscementerio.global_4340672Get()
  loc_AA14E5: FLdPr var_88
  loc_AA14E8: Me.MoveLast
  loc_AA14ED: FFree1Ad var_88
  loc_AA14F0: ExitProcHresult
  loc_AA14F1: Branch loc_AA15B8
End Sub

Public Sub MoveSiguiente() '9D4EE0
  'Data Table: 423C38
  loc_9D4EC8: FLdRfVar var_88
  loc_9D4ECB: FLdPr Me
  loc_9D4ECE: from_stack_1v = clscementerio.global_4340672Get()
  loc_9D4ED3: FLdPr var_88
  loc_9D4ED6: Me.MoveNext
  loc_9D4EDB: FFree1Ad var_88
  loc_9D4EDE: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E8D08
  'Data Table: 423C38
  loc_9E8CE8: LitVar_Missing var_98
  loc_9E8CEB: PopAdLdVar
  loc_9E8CEC: ILdI2 iValor
  loc_9E8CEF: CI4UI1
  loc_9E8CF0: FLdRfVar var_88
  loc_9E8CF3: FLdPr Me
  loc_9E8CF6: from_stack_1v = clscementerio.global_4340672Get()
  loc_9E8CFB: FLdPr var_88
  loc_9E8CFE: Me.Move from_stack_1, from_stack_2
  loc_9E8D03: FFree1Ad var_88
  loc_9E8D06: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9CC84
  'Data Table: 423C38
  loc_A9CBC8: FLdRfVar var_8A
  loc_A9CBCB: FLdRfVar var_88
  loc_A9CBCE: FLdPr Me
  loc_A9CBD1: from_stack_1v = clscementerio.global_4340672Get()
  loc_A9CBD6: FLdPr var_88
  loc_A9CBD9:  = Me.BOF
  loc_A9CBDE: FLdI2 var_8A
  loc_A9CBE1: NotI4
  loc_A9CBE2: FLdRfVar var_94
  loc_A9CBE5: FLdRfVar var_90
  loc_A9CBE8: FLdPr Me
  loc_A9CBEB: from_stack_1v = clscementerio.global_4340672Get()
  loc_A9CBF0: FLdPr var_90
  loc_A9CBF3:  = Me.RecordCount
  loc_A9CBF8: ILdRf var_94
  loc_A9CBFB: LitI4 0
  loc_A9CC00: GtI4
  loc_A9CC01: AndI4
  loc_A9CC02: FFreeAd var_88 = ""
  loc_A9CC09: BranchF loc_A9CC22
  loc_A9CC0C: FLdRfVar var_88
  loc_A9CC0F: FLdPr Me
  loc_A9CC12: from_stack_1v = clscementerio.global_4340672Get()
  loc_A9CC17: FLdPr var_88
  loc_A9CC1A: Me.MovePrevious
  loc_A9CC1F: FFree1Ad var_88
  loc_A9CC22: FLdRfVar var_8A
  loc_A9CC25: FLdRfVar var_88
  loc_A9CC28: FLdPr Me
  loc_A9CC2B: from_stack_1v = clscementerio.global_4340672Get()
  loc_A9CC30: FLdPr var_88
  loc_A9CC33:  = Me.BOF
  loc_A9CC38: FLdI2 var_8A
  loc_A9CC3B: FLdRfVar var_94
  loc_A9CC3E: FLdRfVar var_90
  loc_A9CC41: FLdPr Me
  loc_A9CC44: from_stack_1v = clscementerio.global_4340672Get()
  loc_A9CC49: FLdPr var_90
  loc_A9CC4C:  = Me.RecordCount
  loc_A9CC51: ILdRf var_94
  loc_A9CC54: LitI4 0
  loc_A9CC59: GtI4
  loc_A9CC5A: AndI4
  loc_A9CC5B: FFreeAd var_88 = ""
  loc_A9CC62: BranchF loc_A9CC80
  loc_A9CC65: ImpAdCallFPR4 Beep()
  loc_A9CC6A: FLdRfVar var_88
  loc_A9CC6D: FLdPr Me
  loc_A9CC70: from_stack_1v = clscementerio.global_4340672Get()
  loc_A9CC75: FLdPr var_88
  loc_A9CC78: Me.MoveFirst
  loc_A9CC7D: FFree1Ad var_88
  loc_A9CC80: ExitProcHresult
End Sub

Public Property Get EOF() '9F3E10
  'Data Table: 423C38
  loc_9F3DE8: FLdRfVar var_8E
  loc_9F3DEB: FLdRfVar var_8C
  loc_9F3DEE: FLdPr Me
  loc_9F3DF1: from_stack_1v = clscementerio.global_4340672Get()
  loc_9F3DF6: FLdPr var_8C
  loc_9F3DF9:  = Me.EOF
  loc_9F3DFE: FLdI2 var_8E
  loc_9F3E01: FStI2 var_86
  loc_9F3E04: FFree1Ad var_8C
  loc_9F3E07: ExitProcCbHresult
  loc_9F3E0D: FLdPr var_300
End Sub

Public Property Get BOF() '9F3DB4
  'Data Table: 423C38
  loc_9F3D8C: FLdRfVar var_8E
  loc_9F3D8F: FLdRfVar var_8C
  loc_9F3D92: FLdPr Me
  loc_9F3D95: from_stack_1v = clscementerio.global_4340672Get()
  loc_9F3D9A: FLdPr var_8C
  loc_9F3D9D:  = Me.BOF
  loc_9F3DA2: FLdI2 var_8E
  loc_9F3DA5: FStI2 var_86
  loc_9F3DA8: FFree1Ad var_8C
  loc_9F3DAB: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9E221C
  'Data Table: 423C38
  loc_9E2200: ILdI4 sOrden
  loc_9E2203: FLdRfVar var_88
  loc_9E2206: FLdPr Me
  loc_9E2209: from_stack_1v = clscementerio.global_4340672Get()
  loc_9E220E: FLdPr var_88
  loc_9E2211: Me.Sort = from_stack_1
  loc_9E2216: FFree1Ad var_88
  loc_9E2219: ExitProcHresult
End Sub

Public Sub Find(sFind) '9F3CFC
  'Data Table: 423C38
  loc_9F3CD4: LitVar_Missing var_98
  loc_9F3CD7: PopAdLdVar
  loc_9F3CD8: LitI4 1
  loc_9F3CDD: LitI4 0
  loc_9F3CE2: ILdI4 sFind
  loc_9F3CE5: FLdRfVar var_88
  loc_9F3CE8: FLdPr Me
  loc_9F3CEB: from_stack_1v = clscementerio.global_4340672Get()
  loc_9F3CF0: FLdPr var_88
  loc_9F3CF3: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F3CF8: FFree1Ad var_88
  loc_9F3CFB: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F3CA0
  'Data Table: 423C38
  loc_9F3C78: FLdRfVar var_90
  loc_9F3C7B: FLdRfVar var_8C
  loc_9F3C7E: FLdPr Me
  loc_9F3C81: from_stack_1v = clscementerio.global_4340672Get()
  loc_9F3C86: FLdPr var_8C
  loc_9F3C89:  = Me.AbsolutePosition
  loc_9F3C8E: ILdRf var_90
  loc_9F3C91: FStR4 var_88
  loc_9F3C94: FFree1Ad var_8C
  loc_9F3C97: ExitProcCbHresult
  loc_9F3C9D: ConcatStr
End Sub

Public Property Get RecordCount() '9F3C44
  'Data Table: 423C38
  loc_9F3C1C: FLdRfVar var_90
  loc_9F3C1F: FLdRfVar var_8C
  loc_9F3C22: FLdPr Me
  loc_9F3C25: from_stack_1v = clscementerio.global_4340672Get()
  loc_9F3C2A: FLdPr var_8C
  loc_9F3C2D:  = Me.RecordCount
  loc_9F3C32: ILdRf var_90
  loc_9F3C35: FStR4 var_88
  loc_9F3C38: FFree1Ad var_8C
  loc_9F3C3B: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiCeme, DetaCeme) 'A7E2B0
  'Data Table: 423C38
  loc_A7E238: ILdRf DetaCeme
  loc_A7E23B: FStStrCopy var_88
  loc_A7E23E: FLdRfVar var_8C
  loc_A7E241: FLdUI1
  loc_A7E245: CI2UI1
  loc_A7E247: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A7E24C: ILdRf var_8C
  loc_A7E24F: LitStr vbNullString
  loc_A7E252: NeStr
  loc_A7E254: FFree1Str var_8C
  loc_A7E257: BranchF loc_A7E265
  loc_A7E25A: LitStr "El CEMENTERIO YA EXISTE. Reintente..."
  loc_A7E25D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7E262: Branch loc_A7E2AC
  loc_A7E265: LitStr "INSERT INTO cementerio (CodiCeme, DetaCeme) VALUES ("
  loc_A7E268: FLdUI1
  loc_A7E26C: CStrI2
  loc_A7E26E: FStStrNoPop var_8C
  loc_A7E271: ConcatStr
  loc_A7E272: FStStrNoPop var_90
  loc_A7E275: LitStr ",'"
  loc_A7E278: ConcatStr
  loc_A7E279: FStStrNoPop var_94
  loc_A7E27C: ILdRf var_88
  loc_A7E27F: ConcatStr
  loc_A7E280: FStStrNoPop var_98
  loc_A7E283: LitStr "');"
  loc_A7E286: ConcatStr
  loc_A7E287: FStStrNoPop var_9C
  loc_A7E28A: Call EjecutarRs2(from_stack_1v)
  loc_A7E28F: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A7E29C: Call Requery()
  loc_A7E2A1: FLdUI1
  loc_A7E2A5: CI2UI1
  loc_A7E2A7: Call Encontrar(from_stack_1v)
  loc_A7E2AC: ExitProcHresult
End Sub

Public Sub Modificar(CodiCeme, DetaCeme) 'A740B0
  'Data Table: 423C38
  loc_A74044: ILdRf DetaCeme
  loc_A74047: FStStrCopy var_88
  loc_A7404A: FLdRfVar var_8C
  loc_A7404D: FLdUI1
  loc_A74051: CI2UI1
  loc_A74053: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A74058: ILdRf var_8C
  loc_A7405B: LitStr vbNullString
  loc_A7405E: EqStr
  loc_A74060: FFree1Str var_8C
  loc_A74063: BranchF loc_A74071
  loc_A74066: LitStr "El TIPO de SEPULTURA NO EXISTE. Reintente..."
  loc_A74069: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7406E: Branch loc_A7409F
  loc_A74071: LitStr "UPDATE cementerio SET DetaCeme = '"
  loc_A74074: ILdRf var_88
  loc_A74077: ConcatStr
  loc_A74078: FStStrNoPop var_8C
  loc_A7407B: LitStr "' WHERE CodiCeme="
  loc_A7407E: ConcatStr
  loc_A7407F: FStStrNoPop var_90
  loc_A74082: FLdUI1
  loc_A74086: CStrI2
  loc_A74088: FStStrNoPop var_94
  loc_A7408B: ConcatStr
  loc_A7408C: FStStrNoPop var_98
  loc_A7408F: Call EjecutarRs2(from_stack_1v)
  loc_A74094: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_A7409F: Call Requery()
  loc_A740A4: FLdUI1
  loc_A740A8: CI2UI1
  loc_A740AA: Call Encontrar(from_stack_1v)
  loc_A740AF: ExitProcHresult
End Sub

Public Sub Delete() 'A23E38
  'Data Table: 423C38
  loc_A23DF0: FLdRfVar var_8C
  loc_A23DF3: FLdRfVar var_88
  loc_A23DF6: FLdPr Me
  loc_A23DF9: from_stack_1v = clscementerio.global_4340672Get()
  loc_A23DFE: FLdPr var_88
  loc_A23E01:  = Me.RecordCount
  loc_A23E06: ILdRf var_8C
  loc_A23E09: LitI4 0
  loc_A23E0E: GtI4
  loc_A23E0F: FFree1Ad var_88
  loc_A23E12: BranchF loc_A23E35
  loc_A23E15: LitI4 1
  loc_A23E1A: FLdRfVar var_88
  loc_A23E1D: FLdPr Me
  loc_A23E20: from_stack_1v = clscementerio.global_4340672Get()
  loc_A23E25: FLdPr var_88
  loc_A23E28: Me.Delete
  loc_A23E2D: FFree1Ad var_88
  loc_A23E30: Call MoveNext()
  loc_A23E35: ExitProcHresult
  loc_A23E36: FLdFPR8 var_4000
End Sub

Public Sub Requery() '9FEF80
  'Data Table: 423C38
  loc_9FEF50: LitI4 -1
  loc_9FEF55: FLdRfVar var_88
  loc_9FEF58: FLdPr Me
  loc_9FEF5B: from_stack_1v = clscementerio.global_4340672Get()
  loc_9FEF60: FLdPr var_88
  loc_9FEF63: Me.Requery from_stack_1
  loc_9FEF68: FFree1Ad var_88
  loc_9FEF6B: LitVarStr var_98, "Primary"
  loc_9FEF70: PopAdLdVar
  loc_9FEF71: FLdPr Me
  loc_9FEF74: LateIdCall
  loc_9FEF7C: ExitProcHresult
End Sub

Public Sub Update() 'A23D3C
  'Data Table: 423C38
  loc_A23CF8: FLdRfVar var_88
  loc_A23CFB: FLdPr Me
  loc_A23CFE: from_stack_1v = clscementerio.global_4340672Get()
  loc_A23D03: FLdZeroAd var_88
  loc_A23D06: FStAdFunc var_8C
  loc_A23D09: LitI4 3
  loc_A23D0E: FLdPr var_8C
  loc_A23D11: Me.UpdateBatch
  loc_A23D16: FLdRfVar var_90
  loc_A23D19: FLdPr var_8C
  loc_A23D1C:  = Me.EditMode
  loc_A23D21: ILdRf var_90
  loc_A23D24: LitI4 2
  loc_A23D29: EqI4
  loc_A23D2A: BranchF loc_A23D32
  loc_A23D2D: Call MoveLast()
  loc_A23D32: LitNothing
  loc_A23D34: FStAd var_8C 
  loc_A23D38: ExitProcHresult
End Sub

Public Sub Cancel() 'A4966C
  'Data Table: 423C38
  loc_A49618: FLdRfVar var_88
  loc_A4961B: FLdPr Me
  loc_A4961E: from_stack_1v = clscementerio.global_4340672Get()
  loc_A49623: FLdZeroAd var_88
  loc_A49626: FStAdFunc var_8C
  loc_A49629: FLdRfVar var_90
  loc_A4962C: FLdPr var_8C
  loc_A4962F:  = Me.RecordCount
  loc_A49634: ILdRf var_90
  loc_A49637: LitI4 0
  loc_A4963C: GtI4
  loc_A4963D: BranchF loc_A49664
  loc_A49640: FLdPr var_8C
  loc_A49643: Me.CancelUpdate
  loc_A49648: FLdRfVar var_90
  loc_A4964B: FLdPr var_8C
  loc_A4964E:  = Me.EditMode
  loc_A49653: ILdRf var_90
  loc_A49656: LitI4 2
  loc_A4965B: EqI4
  loc_A4965C: BranchF loc_A49664
  loc_A4965F: Call MoveFirst()
  loc_A49664: LitNothing
  loc_A49666: FStAd var_8C 
  loc_A4966A: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FC2D4
  'Data Table: 423C38
  loc_9FC2A8: FLdRfVar var_90
  loc_9FC2AB: FLdRfVar var_8C
  loc_9FC2AE: FLdPr Me
  loc_9FC2B1: from_stack_1v = clscementerio.global_4340672Get()
  loc_9FC2B6: FLdPr var_8C
  loc_9FC2B9:  = Me.EditMode
  loc_9FC2BE: ILdRf var_90
  loc_9FC2C1: LitI4 0
  loc_9FC2C6: NeI4
  loc_9FC2C7: FStI2 var_86
  loc_9FC2CA: FFree1Ad var_8C
  loc_9FC2CD: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A70964
  'Data Table: 423C38
  loc_A708F0: ILdRf sSelect
  loc_A708F3: FStStrCopy var_88
  loc_A708F6: LitNothing
  loc_A708F8: CastAd
  loc_A708FB: FStAdFuncNoPop
  loc_A708FE: FLdPr Me
  loc_A70901: Call clscementerio.global_4340672Set(from_stack_1v)
  loc_A70906: FFree1Ad var_8C
  loc_A70909: New Recordset
  loc_A7090D: FStAdFuncNoPop
  loc_A70910: FLdPr Me
  loc_A70913: Call clscementerio.global_4340672Set(from_stack_1v)
  loc_A70918: FFree1Ad var_8C
  loc_A7091B: LitI4 -1
  loc_A70920: LitI4 3
  loc_A70925: LitI4 3
  loc_A7092A: ImpAdLdI4 MemVar_D9301C
  loc_A7092D: CVarAd
  loc_A70931: PopAdLdVar
  loc_A70932: ILdRf var_88
  loc_A70935: CVarStr var_9C
  loc_A70938: PopAdLdVar
  loc_A70939: FLdRfVar var_8C
  loc_A7093C: FLdPr Me
  loc_A7093F: from_stack_1v = clscementerio.global_4340672Get()
  loc_A70944: FLdPr var_8C
  loc_A70947: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A7094C: FFree1Ad var_8C
  loc_A7094F: LitVarStr var_9C, "Primary"
  loc_A70954: PopAdLdVar
  loc_A70955: FLdPr Me
  loc_A70958: LateIdCall
  loc_A70960: ExitProcHresult
  loc_A70961: IStI2 sSelect
End Sub

Public Sub EjecutarRs2(sSelect) 'A5C0D8
  'Data Table: 423C38
  loc_A5C078: ILdRf sSelect
  loc_A5C07B: FStStrCopy var_88
  loc_A5C07E: LitNothing
  loc_A5C080: CastAd
  loc_A5C083: FStAdFuncNoPop
  loc_A5C086: FLdPr Me
  loc_A5C089: Call clscementerio.global_4340672Set(from_stack_1v)
  loc_A5C08E: FFree1Ad var_8C
  loc_A5C091: New Recordset
  loc_A5C095: FStAdFuncNoPop
  loc_A5C098: FLdPr Me
  loc_A5C09B: Call clscementerio.global_4340672Set(from_stack_1v)
  loc_A5C0A0: FFree1Ad var_8C
  loc_A5C0A3: LitI4 -1
  loc_A5C0A8: LitI4 3
  loc_A5C0AD: LitI4 3
  loc_A5C0B2: ImpAdLdI4 MemVar_D9301C
  loc_A5C0B5: CVarAd
  loc_A5C0B9: PopAdLdVar
  loc_A5C0BA: ILdRf var_88
  loc_A5C0BD: CVarStr var_9C
  loc_A5C0C0: PopAdLdVar
  loc_A5C0C1: FLdRfVar var_8C
  loc_A5C0C4: FLdPr Me
  loc_A5C0C7: from_stack_1v = clscementerio.global_4340672Get()
  loc_A5C0CC: FLdPr var_8C
  loc_A5C0CF: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5C0D4: FFree1Ad var_8C
  loc_A5C0D7: ExitProcHresult
End Sub

Public Sub Encontrar(CodiCeme) '9EF244
  'Data Table: 423C38
  loc_9EF224: LitStr "CodiCeme = "
  loc_9EF227: FLdI2 CodiCeme
  loc_9EF22A: CStrUI1
  loc_9EF22C: FStStrNoPop var_88
  loc_9EF22F: ConcatStr
  loc_9EF230: PopTmpLdAdStr
  loc_9EF234: Call Find(from_stack_1v)
  loc_9EF239: FFreeStr var_88 = ""
  loc_9EF240: ExitProcHresult
  loc_9EF241: FLdPr Me
End Sub

Public Property Get DataSource() 'A0A250
  'Data Table: 423C38
  loc_A0A220: ZeroRetVal
  loc_A0A222: FLdRfVar var_90
  loc_A0A225: FLdRfVar var_8C
  loc_A0A228: FLdPr Me
  loc_A0A22B: from_stack_1v = clscementerio.global_4340672Get()
  loc_A0A230: FLdPr var_8C
  loc_A0A233:  = Me.DataSource
  loc_A0A238: ILdRf var_90
  loc_A0A23B: CastAd
  loc_A0A23E: FStAdFunc var_88
  loc_A0A241: FFreeAd var_8C = ""
  loc_A0A248: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9F3684
  'Data Table: 423C38
  loc_9F365C: FLdRfVar var_90
  loc_9F365F: FLdRfVar var_8C
  loc_9F3662: FLdPr Me
  loc_9F3665: from_stack_1v = clscementerio.global_4340672Get()
  loc_9F366A: FLdPr var_8C
  loc_9F366D:  = Me.EditMode
  loc_9F3672: ILdRf var_90
  loc_9F3675: FStR4 var_88
  loc_9F3678: FFree1Ad var_8C
  loc_9F367B: ExitProcCbHresult
  loc_9F3681: ImpAdLdI4 MemVar_0
End Sub

Public Property Get CodiCeme() 'A51EB0
  'Data Table: 423C38
  loc_A51E60: FLdRfVar var_B4
  loc_A51E63: FLdRfVar var_A4
  loc_A51E66: LitVarStr var_A0, "CodiCeme"
  loc_A51E6B: PopAdLdVar
  loc_A51E6C: FLdRfVar var_90
  loc_A51E6F: FLdRfVar var_8C
  loc_A51E72: FLdPr Me
  loc_A51E75: from_stack_1v = clscementerio.global_4340672Get()
  loc_A51E7A: FLdPr var_8C
  loc_A51E7D:  = Me.Fields
  loc_A51E82: FLdPr var_90
  loc_A51E85: from_stack_2 = Me.Item(from_stack_1)
  loc_A51E8A: FLdPr var_A4
  loc_A51E8D:  = Me.Value
  loc_A51E92: FLdRfVar var_B4
  loc_A51E95: CUI1Var
  loc_A51E97: FStUI1 var_86
  loc_A51E9B: FFreeAd var_8C = "": var_90 = ""
  loc_A51EA4: FFree1Var var_B4 = ""
  loc_A51EA7: ExitProcCbHresult
End Sub

Public Property Let CodiCeme(vDato) '9F35CC
  'Data Table: 423C38
  loc_9F35A4: FLdUI1
  loc_9F35A8: CVarUI1
  loc_9F35AC: PopAdLdVar
  loc_9F35AD: LitVarStr var_98, "CodiCeme"
  loc_9F35B2: PopAdLdVar
  loc_9F35B3: FLdRfVar var_88
  loc_9F35B6: FLdPr Me
  loc_9F35B9: from_stack_1v = clscementerio.global_4340672Get()
  loc_9F35BE: FLdPr var_88
  loc_9F35C1: Me.Collect = from_stack_1
  loc_9F35C6: FFree1Ad var_88
  loc_9F35C9: ExitProcHresult
  loc_9F35CA: Ary1LdCy
End Sub

Public Property Get DetaCeme() 'A59170
  'Data Table: 423C38
  loc_A59120: ZeroRetVal
  loc_A59122: FLdRfVar var_B4
  loc_A59125: FLdRfVar var_A4
  loc_A59128: LitVarStr var_A0, "DetaCeme"
  loc_A5912D: PopAdLdVar
  loc_A5912E: FLdRfVar var_90
  loc_A59131: FLdRfVar var_8C
  loc_A59134: FLdPr Me
  loc_A59137: from_stack_1v = clscementerio.global_4340672Get()
  loc_A5913C: FLdPr var_8C
  loc_A5913F:  = Me.Fields
  loc_A59144: FLdPr var_90
  loc_A59147: from_stack_2 = Me.Item(from_stack_1)
  loc_A5914C: FLdPr var_A4
  loc_A5914F:  = Me.Value
  loc_A59154: FLdRfVar var_B4
  loc_A59157: CStrVarTmp
  loc_A59158: FStStr var_88
  loc_A5915B: FFreeAd var_8C = "": var_90 = ""
  loc_A59164: FFree1Var var_B4 = ""
  loc_A59167: ExitProcCbHresult
  loc_A5916D: ConcatVar var_3F3C
End Sub

Public Property Let DetaCeme(vDato) '9FEACC
  'Data Table: 423C38
  loc_9FEAA0: ILdRf vDato
  loc_9FEAA3: FStStrCopy var_88
  loc_9FEAA6: ILdRf var_88
  loc_9FEAA9: CVarStr var_AC
  loc_9FEAAC: PopAdLdVar
  loc_9FEAAD: LitVarStr var_9C, "DetaCeme"
  loc_9FEAB2: PopAdLdVar
  loc_9FEAB3: FLdRfVar var_8C
  loc_9FEAB6: FLdPr Me
  loc_9FEAB9: from_stack_1v = clscementerio.global_4340672Get()
  loc_9FEABE: FLdPr var_8C
  loc_9FEAC1: Me.Collect = from_stack_1
  loc_9FEAC6: FFree1Ad var_8C
  loc_9FEAC9: ExitProcHresult
  loc_9FEACA: MemLdRfVar from_stack_1.global_-16312
End Sub

Public Function ValidaClave(CodiCeme) 'A52C30
  'Data Table: 423C38
  loc_A52BE0: ZeroRetVal
  loc_A52BE2: LitStr "SELECT CodiCeme FROM infogov.cementerio WHERE CodiCeme = "
  loc_A52BE5: FLdI2 CodiCeme
  loc_A52BE8: CStrUI1
  loc_A52BEA: FStStrNoPop var_8C
  loc_A52BED: ConcatStr
  loc_A52BEE: FStStrNoPop var_90
  loc_A52BF1: Call EjecutarRs2(from_stack_1v)
  loc_A52BF6: FFreeStr var_8C = ""
  loc_A52BFD: FLdRfVar var_98
  loc_A52C00: FLdRfVar ValidaClave
  loc_A52C03: FLdPr Me
  loc_A52C06: from_stack_1v = clscementerio.global_4340672Get()
  loc_A52C0B: FLdPr ValidaClave
  loc_A52C0E:  = Me.RecordCount
  loc_A52C13: ILdRf var_98
  loc_A52C16: LitI4 0
  loc_A52C1B: GtI4
  loc_A52C1C: FFree1Ad ValidaClave
  loc_A52C1F: BranchF loc_A52C28
  loc_A52C22: LitStr "El TIPO de DOCUMENTO YA EXISTE. Reintente..."
  loc_A52C25: FStStrCopy var_88
  loc_A52C28: ExitProcCbHresult
  loc_A52C2E: Ary1LdCy
End Function

Public Function NuevoRegistro() 'ABA3A0
  'Data Table: 423C38
  loc_ABA2B0: New Recordset
  loc_ABA2B4: FStAdFuncNoPop
  loc_ABA2B7: FLdPr Me
  loc_ABA2BA: Call clscementerio.global_4340672Set(from_stack_1v)
  loc_ABA2BF: FFree1Ad var_8C
  loc_ABA2C2: LitI4 -1
  loc_ABA2C7: LitI4 3
  loc_ABA2CC: LitI4 3
  loc_ABA2D1: ImpAdLdI4 MemVar_D9301C
  loc_ABA2D4: CVarAd
  loc_ABA2D8: PopAdLdVar
  loc_ABA2D9: LitVarStr var_9C, "SELECT CodiCeme FROM infogov.cementerio ORDER BY CodiCeme DESC "
  loc_ABA2DE: PopAdLdVar
  loc_ABA2DF: FLdRfVar var_8C
  loc_ABA2E2: FLdPr Me
  loc_ABA2E5: from_stack_1v = clscementerio.global_4340672Get()
  loc_ABA2EA: FLdPr var_8C
  loc_ABA2ED: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_ABA2F2: FFree1Ad var_8C
  loc_ABA2F5: FLdRfVar var_B0
  loc_ABA2F8: FLdRfVar var_8C
  loc_ABA2FB: FLdPr Me
  loc_ABA2FE: from_stack_1v = clscementerio.global_4340672Get()
  loc_ABA303: FLdPr var_8C
  loc_ABA306:  = Me.RecordCount
  loc_ABA30B: ILdRf var_B0
  loc_ABA30E: LitI4 0
  loc_ABA313: GtI4
  loc_ABA314: FFree1Ad var_8C
  loc_ABA317: BranchF loc_ABA369
  loc_ABA31A: FLdRfVar var_C8
  loc_ABA31D: FLdRfVar var_B8
  loc_ABA320: LitVarStr var_9C, "CodiCeme"
  loc_ABA325: PopAdLdVar
  loc_ABA326: FLdRfVar var_B4
  loc_ABA329: FLdRfVar var_8C
  loc_ABA32C: FLdPr Me
  loc_ABA32F: from_stack_1v = clscementerio.global_4340672Get()
  loc_ABA334: FLdPr var_8C
  loc_ABA337:  = Me.Fields
  loc_ABA33C: FLdPr var_B4
  loc_ABA33F: from_stack_2 = Me.Item(from_stack_1)
  loc_ABA344: FLdPr var_B8
  loc_ABA347:  = Me.Value
  loc_ABA34C: FLdRfVar var_C8
  loc_ABA34F: FnCLngVar
  loc_ABA351: LitI4 1
  loc_ABA356: AddI4
  loc_ABA357: FStR4 var_88
  loc_ABA35A: FFreeAd var_8C = "": var_B4 = ""
  loc_ABA363: FFree1Var var_C8 = ""
  loc_ABA366: Branch loc_ABA371
  loc_ABA369: LitI4 1
  loc_ABA36E: FStR4 var_88
  loc_ABA371: FLdRfVar var_8C
  loc_ABA374: FLdPr Me
  loc_ABA377: from_stack_1v = clscementerio.global_4340672Get()
  loc_ABA37C: FLdPr var_8C
  loc_ABA37F: Me.Close
  loc_ABA384: FFree1Ad var_8C
  loc_ABA387: LitNothing
  loc_ABA389: CastAd
  loc_ABA38C: FStAdFuncNoPop
  loc_ABA38F: FLdPr Me
  loc_ABA392: Call clscementerio.global_4340672Set(from_stack_1v)
  loc_ABA397: FFree1Ad var_8C
  loc_ABA39A: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E8D58
  'Data Table: 423C38
  loc_9E8D3C: ILdRf pError
  loc_9E8D3F: FStAd var_88 
  loc_9E8D43: ILdRf pRecordset
  loc_9E8D46: FStAd var_8C 
  loc_9E8D4A: FLdPr Me
  loc_9E8D4D: RaiseEvent
  loc_9E8D55: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9AA38
  'Data Table: 423C38
  loc_A9A978: ILdRf pRecordset
  loc_A9A97B: FStAd var_88 
  loc_A9A97F: ILdRf adReason
  loc_A9A982: FStR4 var_90
  loc_A9A985: ILdRf var_90
  loc_A9A988: LitI4 1
  loc_A9A98D: EqI4
  loc_A9A98E: BranchF loc_A9A994
  loc_A9A991: Branch loc_A9AA27
  loc_A9A994: ILdRf var_90
  loc_A9A997: LitI4 9
  loc_A9A99C: EqI4
  loc_A9A99D: BranchF loc_A9A9A3
  loc_A9A9A0: Branch loc_A9AA27
  loc_A9A9A3: ILdRf var_90
  loc_A9A9A6: LitI4 2
  loc_A9A9AB: EqI4
  loc_A9A9AC: BranchF loc_A9A9B2
  loc_A9A9AF: Branch loc_A9AA27
  loc_A9A9B2: ILdRf var_90
  loc_A9A9B5: LitI4 &HB
  loc_A9A9BA: EqI4
  loc_A9A9BB: BranchF loc_A9A9C1
  loc_A9A9BE: Branch loc_A9AA27
  loc_A9A9C1: ILdRf var_90
  loc_A9A9C4: LitI4 &HA
  loc_A9A9C9: EqI4
  loc_A9A9CA: BranchF loc_A9A9D0
  loc_A9A9CD: Branch loc_A9AA27
  loc_A9A9D0: ILdRf var_90
  loc_A9A9D3: LitI4 7
  loc_A9A9D8: EqI4
  loc_A9A9D9: BranchF loc_A9A9DF
  loc_A9A9DC: Branch loc_A9AA27
  loc_A9A9DF: ILdRf var_90
  loc_A9A9E2: LitI4 8
  loc_A9A9E7: EqI4
  loc_A9A9E8: BranchF loc_A9A9EE
  loc_A9A9EB: Branch loc_A9AA27
  loc_A9A9EE: ILdRf var_90
  loc_A9A9F1: LitI4 5
  loc_A9A9F6: EqI4
  loc_A9A9F7: BranchF loc_A9A9FD
  loc_A9A9FA: Branch loc_A9AA27
  loc_A9A9FD: ILdRf var_90
  loc_A9AA00: LitI4 6
  loc_A9AA05: EqI4
  loc_A9AA06: BranchF loc_A9AA0C
  loc_A9AA09: Branch loc_A9AA27
  loc_A9AA0C: ILdRf var_90
  loc_A9AA0F: LitI4 4
  loc_A9AA14: EqI4
  loc_A9AA15: BranchF loc_A9AA1B
  loc_A9AA18: Branch loc_A9AA27
  loc_A9AA1B: ILdRf var_90
  loc_A9AA1E: LitI4 3
  loc_A9AA23: EqI4
  loc_A9AA24: BranchF loc_A9AA27
  loc_A9AA27: FLdI2 var_8A
  loc_A9AA2A: BranchF loc_A9AA35
  loc_A9AA2D: LitI4 4
  loc_A9AA32: IStI4 adStatus
  loc_A9AA35: ExitProcHresult
End Sub

Private Function Proc_68_32_9F38A8() '9F38A8
  'Data Table: 423C38
  loc_9F3884: LitStr "Primary"
  loc_9F3887: FLdPr Me
  loc_9F388A: LateIdLdVar var_94 DispID_4 0
  loc_9F3891: CastAdVar Me
  loc_9F3895: FStAdFunc var_98
  loc_9F3898: FLdPr var_98
  loc_9F38A0: FFree1Ad var_98
  loc_9F38A3: FFree1Var var_94 = ""
  loc_9F38A6: ExitProcHresult
End Function

Private Function Proc_68_33_9F3738(arg_C) '9F3738
  'Data Table: 423C38
  loc_9F3714: ILdI4 arg_C
  loc_9F3717: FStStrCopy var_88
  loc_9F371A: ILdRf var_88
  loc_9F371D: LitStr "Primary"
  loc_9F3720: EqStr
  loc_9F3722: BranchF loc_9F3737
  loc_9F3725: FLdRfVar var_8C
  loc_9F3728: FLdPr Me
  loc_9F372B: from_stack_1v = clscementerio.global_4340672Get()
  loc_9F3730: FLdZeroAd var_8C
  loc_9F3733: IStAdFunc
  loc_9F3737: ExitProcHresult
End Function

Public Function global_4340672Get() '423FB4
  global_4340672Get = global_4340672
End Function

Public Sub global_4340672Put(Value) '423FCE
  global_4340672 = Value
End Sub

Public Sub global_4340672Set(Value) '423FE8
  global_4340672 = Value
End Sub

Public Function global_4340672Get() '424002
  global_4340672Get = global_4340672
End Function

Public Sub global_4340672Put(Value) '42401C
  global_4340672 = Value
End Sub

Public Sub global_4340672Set(Value) '424036
  global_4340672 = Value
End Sub

Public Function global_4340672Get() '424050
  global_4340672Get = global_4340672
End Function

Public Sub global_4340672Put(Value) '42406A
  global_4340672 = Value
End Sub

Public Sub global_4340672Set(Value) '424084
  global_4340672 = Value
End Sub
