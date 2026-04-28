VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsestacivi"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0D784
  'Data Table: 4225A0
  loc_A0D748: FLdRfVar var_8C
  loc_A0D74B: FLdRfVar var_88
  loc_A0D74E: FLdPr Me
  loc_A0D751: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A0D756: FLdPr var_88
  loc_A0D759:  = Me.RecordCount
  loc_A0D75E: ILdRf var_8C
  loc_A0D761: LitI4 0
  loc_A0D766: GtI4
  loc_A0D767: FFree1Ad var_88
  loc_A0D76A: BranchF loc_A0D783
  loc_A0D76D: FLdRfVar var_88
  loc_A0D770: FLdPr Me
  loc_A0D773: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A0D778: FLdPr var_88
  loc_A0D77B: Me.MoveFirst
  loc_A0D780: FFree1Ad var_88
  loc_A0D783: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0D7F4
  'Data Table: 4225A0
  loc_A0D7B8: FLdRfVar var_8C
  loc_A0D7BB: FLdRfVar var_88
  loc_A0D7BE: FLdPr Me
  loc_A0D7C1: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A0D7C6: FLdPr var_88
  loc_A0D7C9:  = Me.RecordCount
  loc_A0D7CE: ILdRf var_8C
  loc_A0D7D1: LitI4 0
  loc_A0D7D6: GtI4
  loc_A0D7D7: FFree1Ad var_88
  loc_A0D7DA: BranchF loc_A0D7F3
  loc_A0D7DD: FLdRfVar var_88
  loc_A0D7E0: FLdPr Me
  loc_A0D7E3: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A0D7E8: FLdPr var_88
  loc_A0D7EB: Me.MoveLast
  loc_A0D7F0: FFree1Ad var_88
  loc_A0D7F3: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9DF94
  'Data Table: 4225A0
  loc_A9DED8: FLdRfVar var_8A
  loc_A9DEDB: FLdRfVar var_88
  loc_A9DEDE: FLdPr Me
  loc_A9DEE1: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A9DEE6: FLdPr var_88
  loc_A9DEE9:  = Me.EOF
  loc_A9DEEE: FLdI2 var_8A
  loc_A9DEF1: NotI4
  loc_A9DEF2: FLdRfVar var_94
  loc_A9DEF5: FLdRfVar var_90
  loc_A9DEF8: FLdPr Me
  loc_A9DEFB: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A9DF00: FLdPr var_90
  loc_A9DF03:  = Me.RecordCount
  loc_A9DF08: ILdRf var_94
  loc_A9DF0B: LitI4 0
  loc_A9DF10: GtI4
  loc_A9DF11: AndI4
  loc_A9DF12: FFreeAd var_88 = ""
  loc_A9DF19: BranchF loc_A9DF32
  loc_A9DF1C: FLdRfVar var_88
  loc_A9DF1F: FLdPr Me
  loc_A9DF22: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A9DF27: FLdPr var_88
  loc_A9DF2A: Me.MoveNext
  loc_A9DF2F: FFree1Ad var_88
  loc_A9DF32: FLdRfVar var_8A
  loc_A9DF35: FLdRfVar var_88
  loc_A9DF38: FLdPr Me
  loc_A9DF3B: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A9DF40: FLdPr var_88
  loc_A9DF43:  = Me.EOF
  loc_A9DF48: FLdI2 var_8A
  loc_A9DF4B: FLdRfVar var_94
  loc_A9DF4E: FLdRfVar var_90
  loc_A9DF51: FLdPr Me
  loc_A9DF54: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A9DF59: FLdPr var_90
  loc_A9DF5C:  = Me.RecordCount
  loc_A9DF61: ILdRf var_94
  loc_A9DF64: LitI4 0
  loc_A9DF69: GtI4
  loc_A9DF6A: AndI4
  loc_A9DF6B: FFreeAd var_88 = ""
  loc_A9DF72: BranchF loc_A9DF90
  loc_A9DF75: ImpAdCallFPR4 Beep()
  loc_A9DF7A: FLdRfVar var_88
  loc_A9DF7D: FLdPr Me
  loc_A9DF80: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A9DF85: FLdPr var_88
  loc_A9DF88: Me.MoveLast
  loc_A9DF8D: FFree1Ad var_88
  loc_A9DF90: ExitProcHresult
  loc_A9DF91: CCyI2
  loc_A9DF92: LeCyR8
End Sub

Public Sub MoveSiguiente() '9D9F08
  'Data Table: 4225A0
  loc_9D9EF0: FLdRfVar var_88
  loc_9D9EF3: FLdPr Me
  loc_9D9EF6: from_stack_1v = clsestacivi.global_4334888Get()
  loc_9D9EFB: FLdPr var_88
  loc_9D9EFE: Me.MoveNext
  loc_9D9F03: FFree1Ad var_88
  loc_9D9F06: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E7C4C
  'Data Table: 4225A0
  loc_9E7C2C: LitVar_Missing var_98
  loc_9E7C2F: PopAdLdVar
  loc_9E7C30: ILdI2 iValor
  loc_9E7C33: CI4UI1
  loc_9E7C34: FLdRfVar var_88
  loc_9E7C37: FLdPr Me
  loc_9E7C3A: from_stack_1v = clsestacivi.global_4334888Get()
  loc_9E7C3F: FLdPr var_88
  loc_9E7C42: Me.Move from_stack_1, from_stack_2
  loc_9E7C47: FFree1Ad var_88
  loc_9E7C4A: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9DAD0
  'Data Table: 4225A0
  loc_A9DA14: FLdRfVar var_8A
  loc_A9DA17: FLdRfVar var_88
  loc_A9DA1A: FLdPr Me
  loc_A9DA1D: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A9DA22: FLdPr var_88
  loc_A9DA25:  = Me.BOF
  loc_A9DA2A: FLdI2 var_8A
  loc_A9DA2D: NotI4
  loc_A9DA2E: FLdRfVar var_94
  loc_A9DA31: FLdRfVar var_90
  loc_A9DA34: FLdPr Me
  loc_A9DA37: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A9DA3C: FLdPr var_90
  loc_A9DA3F:  = Me.RecordCount
  loc_A9DA44: ILdRf var_94
  loc_A9DA47: LitI4 0
  loc_A9DA4C: GtI4
  loc_A9DA4D: AndI4
  loc_A9DA4E: FFreeAd var_88 = ""
  loc_A9DA55: BranchF loc_A9DA6E
  loc_A9DA58: FLdRfVar var_88
  loc_A9DA5B: FLdPr Me
  loc_A9DA5E: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A9DA63: FLdPr var_88
  loc_A9DA66: Me.MovePrevious
  loc_A9DA6B: FFree1Ad var_88
  loc_A9DA6E: FLdRfVar var_8A
  loc_A9DA71: FLdRfVar var_88
  loc_A9DA74: FLdPr Me
  loc_A9DA77: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A9DA7C: FLdPr var_88
  loc_A9DA7F:  = Me.BOF
  loc_A9DA84: FLdI2 var_8A
  loc_A9DA87: FLdRfVar var_94
  loc_A9DA8A: FLdRfVar var_90
  loc_A9DA8D: FLdPr Me
  loc_A9DA90: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A9DA95: FLdPr var_90
  loc_A9DA98:  = Me.RecordCount
  loc_A9DA9D: ILdRf var_94
  loc_A9DAA0: LitI4 0
  loc_A9DAA5: GtI4
  loc_A9DAA6: AndI4
  loc_A9DAA7: FFreeAd var_88 = ""
  loc_A9DAAE: BranchF loc_A9DACC
  loc_A9DAB1: ImpAdCallFPR4 Beep()
  loc_A9DAB6: FLdRfVar var_88
  loc_A9DAB9: FLdPr Me
  loc_A9DABC: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A9DAC1: FLdPr var_88
  loc_A9DAC4: Me.MoveFirst
  loc_A9DAC9: FFree1Ad var_88
  loc_A9DACC: ExitProcHresult
End Sub

Public Property Get EOF() '9F5AD0
  'Data Table: 4225A0
  loc_9F5AA8: FLdRfVar var_8E
  loc_9F5AAB: FLdRfVar var_8C
  loc_9F5AAE: FLdPr Me
  loc_9F5AB1: from_stack_1v = clsestacivi.global_4334888Get()
  loc_9F5AB6: FLdPr var_8C
  loc_9F5AB9:  = Me.EOF
  loc_9F5ABE: FLdI2 var_8E
  loc_9F5AC1: FStI2 var_86
  loc_9F5AC4: FFree1Ad var_8C
  loc_9F5AC7: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F5A74
  'Data Table: 4225A0
  loc_9F5A4C: FLdRfVar var_8E
  loc_9F5A4F: FLdRfVar var_8C
  loc_9F5A52: FLdPr Me
  loc_9F5A55: from_stack_1v = clsestacivi.global_4334888Get()
  loc_9F5A5A: FLdPr var_8C
  loc_9F5A5D:  = Me.BOF
  loc_9F5A62: FLdI2 var_8E
  loc_9F5A65: FStI2 var_86
  loc_9F5A68: FFree1Ad var_8C
  loc_9F5A6B: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9DFCEC
  'Data Table: 4225A0
  loc_9DFCD0: ILdI4 sOrden
  loc_9DFCD3: FLdRfVar var_88
  loc_9DFCD6: FLdPr Me
  loc_9DFCD9: from_stack_1v = clsestacivi.global_4334888Get()
  loc_9DFCDE: FLdPr var_88
  loc_9DFCE1: Me.Sort = from_stack_1
  loc_9DFCE6: FFree1Ad var_88
  loc_9DFCE9: ExitProcHresult
  loc_9DFCEA: GtI2
End Sub

Public Sub Find(sFind) '9F5B2C
  'Data Table: 4225A0
  loc_9F5B04: LitVar_Missing var_98
  loc_9F5B07: PopAdLdVar
  loc_9F5B08: LitI4 1
  loc_9F5B0D: LitI4 0
  loc_9F5B12: ILdI4 sFind
  loc_9F5B15: FLdRfVar var_88
  loc_9F5B18: FLdPr Me
  loc_9F5B1B: from_stack_1v = clsestacivi.global_4334888Get()
  loc_9F5B20: FLdPr var_88
  loc_9F5B23: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F5B28: FFree1Ad var_88
  loc_9F5B2B: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F961C
  'Data Table: 4225A0
  loc_9F95F4: FLdRfVar var_90
  loc_9F95F7: FLdRfVar var_8C
  loc_9F95FA: FLdPr Me
  loc_9F95FD: from_stack_1v = clsestacivi.global_4334888Get()
  loc_9F9602: FLdPr var_8C
  loc_9F9605:  = Me.AbsolutePosition
  loc_9F960A: ILdRf var_90
  loc_9F960D: FStR4 var_88
  loc_9F9610: FFree1Ad var_8C
  loc_9F9613: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F53FC
  'Data Table: 4225A0
  loc_9F53D4: FLdRfVar var_90
  loc_9F53D7: FLdRfVar var_8C
  loc_9F53DA: FLdPr Me
  loc_9F53DD: from_stack_1v = clsestacivi.global_4334888Get()
  loc_9F53E2: FLdPr var_8C
  loc_9F53E5:  = Me.RecordCount
  loc_9F53EA: ILdRf var_90
  loc_9F53ED: FStR4 var_88
  loc_9F53F0: FFree1Ad var_8C
  loc_9F53F3: ExitProcCbHresult
  loc_9F53F9: ImpAdLdFPR8 MemVar_0
End Sub

Public Sub AddNew(CodiEsci, DetaEsci) 'A7A608
  'Data Table: 4225A0
  loc_A7A598: ILdRf DetaEsci
  loc_A7A59B: FStStrCopy var_88
  loc_A7A59E: FLdRfVar var_8C
  loc_A7A5A1: FLdI2 CodiEsci
  loc_A7A5A4: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A7A5A9: ILdRf var_8C
  loc_A7A5AC: LitStr vbNullString
  loc_A7A5AF: NeStr
  loc_A7A5B1: FFree1Str var_8C
  loc_A7A5B4: BranchF loc_A7A5C2
  loc_A7A5B7: LitStr "El TIPO de ESTADO CIVIL YA EXISTE. Reintente..."
  loc_A7A5BA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7A5BF: Branch loc_A7A605
  loc_A7A5C2: LitStr "INSERT INTO estacivi (CodiEsci, DetaEsci) VALUES ("
  loc_A7A5C5: FLdI2 CodiEsci
  loc_A7A5C8: CStrUI1
  loc_A7A5CA: FStStrNoPop var_8C
  loc_A7A5CD: ConcatStr
  loc_A7A5CE: FStStrNoPop var_90
  loc_A7A5D1: LitStr ",'"
  loc_A7A5D4: ConcatStr
  loc_A7A5D5: FStStrNoPop var_94
  loc_A7A5D8: ILdRf var_88
  loc_A7A5DB: ConcatStr
  loc_A7A5DC: FStStrNoPop var_98
  loc_A7A5DF: LitStr "');"
  loc_A7A5E2: ConcatStr
  loc_A7A5E3: FStStrNoPop var_9C
  loc_A7A5E6: Call EjecutarRs2(from_stack_1v)
  loc_A7A5EB: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A7A5F8: Call Requery()
  loc_A7A5FD: FLdI2 CodiEsci
  loc_A7A600: Call Encontrar(from_stack_1v)
  loc_A7A605: ExitProcHresult
End Sub

Public Sub Modificar(CodiEsci, DetaEsci) 'A735B0
  'Data Table: 4225A0
  loc_A73548: ILdRf DetaEsci
  loc_A7354B: FStStrCopy var_88
  loc_A7354E: FLdRfVar var_8C
  loc_A73551: FLdI2 CodiEsci
  loc_A73554: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A73559: ILdRf var_8C
  loc_A7355C: LitStr vbNullString
  loc_A7355F: EqStr
  loc_A73561: FFree1Str var_8C
  loc_A73564: BranchF loc_A73572
  loc_A73567: LitStr "El TIPO de ESTADO CIVIL NO EXISTE. Reintente..."
  loc_A7356A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7356F: Branch loc_A7359F
  loc_A73572: LitStr " UPDATE estacivi SET DetaEsci='"
  loc_A73575: ILdRf var_88
  loc_A73578: ConcatStr
  loc_A73579: FStStrNoPop var_8C
  loc_A7357C: LitStr "' WHERE CodiEsci="
  loc_A7357F: ConcatStr
  loc_A73580: FStStrNoPop var_90
  loc_A73583: FLdI2 CodiEsci
  loc_A73586: CStrUI1
  loc_A73588: FStStrNoPop var_94
  loc_A7358B: ConcatStr
  loc_A7358C: FStStrNoPop var_98
  loc_A7358F: Call EjecutarRs2(from_stack_1v)
  loc_A73594: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_A7359F: Call Requery()
  loc_A735A4: FLdI2 CodiEsci
  loc_A735A7: Call Encontrar(from_stack_1v)
  loc_A735AC: ExitProcHresult
End Sub

Public Sub Delete() 'A22DC0
  'Data Table: 4225A0
  loc_A22D78: FLdRfVar var_8C
  loc_A22D7B: FLdRfVar var_88
  loc_A22D7E: FLdPr Me
  loc_A22D81: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A22D86: FLdPr var_88
  loc_A22D89:  = Me.RecordCount
  loc_A22D8E: ILdRf var_8C
  loc_A22D91: LitI4 0
  loc_A22D96: GtI4
  loc_A22D97: FFree1Ad var_88
  loc_A22D9A: BranchF loc_A22DBD
  loc_A22D9D: LitI4 1
  loc_A22DA2: FLdRfVar var_88
  loc_A22DA5: FLdPr Me
  loc_A22DA8: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A22DAD: FLdPr var_88
  loc_A22DB0: Me.Delete
  loc_A22DB5: FFree1Ad var_88
  loc_A22DB8: Call MoveNext()
  loc_A22DBD: ExitProcHresult
End Sub

Public Sub Requery() 'A05894
  'Data Table: 4225A0
  loc_A05864: LitI4 -1
  loc_A05869: FLdRfVar var_88
  loc_A0586C: FLdPr Me
  loc_A0586F: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A05874: FLdPr var_88
  loc_A05877: Me.Requery from_stack_1
  loc_A0587C: FFree1Ad var_88
  loc_A0587F: LitVarStr var_98, "Primary"
  loc_A05884: PopAdLdVar
  loc_A05885: FLdPr Me
  loc_A05888: LateIdCall
  loc_A05890: ExitProcHresult
End Sub

Public Sub Update() 'A227EC
  'Data Table: 4225A0
  loc_A227A8: FLdRfVar var_88
  loc_A227AB: FLdPr Me
  loc_A227AE: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A227B3: FLdZeroAd var_88
  loc_A227B6: FStAdFunc var_8C
  loc_A227B9: LitI4 3
  loc_A227BE: FLdPr var_8C
  loc_A227C1: Me.UpdateBatch
  loc_A227C6: FLdRfVar var_90
  loc_A227C9: FLdPr var_8C
  loc_A227CC:  = Me.EditMode
  loc_A227D1: ILdRf var_90
  loc_A227D4: LitI4 2
  loc_A227D9: EqI4
  loc_A227DA: BranchF loc_A227E2
  loc_A227DD: Call MoveLast()
  loc_A227E2: LitNothing
  loc_A227E4: FStAd var_8C 
  loc_A227E8: ExitProcHresult
  loc_A227E9: MulCyI2
End Sub

Public Sub Cancel() 'A4AA1C
  'Data Table: 4225A0
  loc_A4A9C8: FLdRfVar var_88
  loc_A4A9CB: FLdPr Me
  loc_A4A9CE: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A4A9D3: FLdZeroAd var_88
  loc_A4A9D6: FStAdFunc var_8C
  loc_A4A9D9: FLdRfVar var_90
  loc_A4A9DC: FLdPr var_8C
  loc_A4A9DF:  = Me.RecordCount
  loc_A4A9E4: ILdRf var_90
  loc_A4A9E7: LitI4 0
  loc_A4A9EC: GtI4
  loc_A4A9ED: BranchF loc_A4AA14
  loc_A4A9F0: FLdPr var_8C
  loc_A4A9F3: Me.CancelUpdate
  loc_A4A9F8: FLdRfVar var_90
  loc_A4A9FB: FLdPr var_8C
  loc_A4A9FE:  = Me.EditMode
  loc_A4AA03: ILdRf var_90
  loc_A4AA06: LitI4 2
  loc_A4AA0B: EqI4
  loc_A4AA0C: BranchF loc_A4AA14
  loc_A4AA0F: Call MoveFirst()
  loc_A4AA14: LitNothing
  loc_A4AA16: FStAd var_8C 
  loc_A4AA1A: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FDA74
  'Data Table: 4225A0
  loc_9FDA48: FLdRfVar var_90
  loc_9FDA4B: FLdRfVar var_8C
  loc_9FDA4E: FLdPr Me
  loc_9FDA51: from_stack_1v = clsestacivi.global_4334888Get()
  loc_9FDA56: FLdPr var_8C
  loc_9FDA59:  = Me.EditMode
  loc_9FDA5E: ILdRf var_90
  loc_9FDA61: LitI4 0
  loc_9FDA66: NeI4
  loc_9FDA67: FStI2 var_86
  loc_9FDA6A: FFree1Ad var_8C
  loc_9FDA6D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A71CE0
  'Data Table: 4225A0
  loc_A71C6C: ILdRf sSelect
  loc_A71C6F: FStStrCopy var_88
  loc_A71C72: LitNothing
  loc_A71C74: CastAd
  loc_A71C77: FStAdFuncNoPop
  loc_A71C7A: FLdPr Me
  loc_A71C7D: Call clsestacivi.global_4334888Set(from_stack_1v)
  loc_A71C82: FFree1Ad var_8C
  loc_A71C85: New Recordset
  loc_A71C89: FStAdFuncNoPop
  loc_A71C8C: FLdPr Me
  loc_A71C8F: Call clsestacivi.global_4334888Set(from_stack_1v)
  loc_A71C94: FFree1Ad var_8C
  loc_A71C97: LitI4 -1
  loc_A71C9C: LitI4 3
  loc_A71CA1: LitI4 3
  loc_A71CA6: ImpAdLdI4 MemVar_D9301C
  loc_A71CA9: CVarAd
  loc_A71CAD: PopAdLdVar
  loc_A71CAE: ILdRf var_88
  loc_A71CB1: CVarStr var_9C
  loc_A71CB4: PopAdLdVar
  loc_A71CB5: FLdRfVar var_8C
  loc_A71CB8: FLdPr Me
  loc_A71CBB: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A71CC0: FLdPr var_8C
  loc_A71CC3: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A71CC8: FFree1Ad var_8C
  loc_A71CCB: LitVarStr var_9C, "Primary"
  loc_A71CD0: PopAdLdVar
  loc_A71CD1: FLdPr Me
  loc_A71CD4: LateIdCall
  loc_A71CDC: ExitProcHresult
  loc_A71CDD: BranchFVar
End Sub

Public Sub EjecutarRs2(sSelect) 'A5C760
  'Data Table: 4225A0
  loc_A5C700: ILdRf sSelect
  loc_A5C703: FStStrCopy var_88
  loc_A5C706: LitNothing
  loc_A5C708: CastAd
  loc_A5C70B: FStAdFuncNoPop
  loc_A5C70E: FLdPr Me
  loc_A5C711: Call clsestacivi.global_4334888Set(from_stack_1v)
  loc_A5C716: FFree1Ad var_8C
  loc_A5C719: New Recordset
  loc_A5C71D: FStAdFuncNoPop
  loc_A5C720: FLdPr Me
  loc_A5C723: Call clsestacivi.global_4334888Set(from_stack_1v)
  loc_A5C728: FFree1Ad var_8C
  loc_A5C72B: LitI4 -1
  loc_A5C730: LitI4 3
  loc_A5C735: LitI4 3
  loc_A5C73A: ImpAdLdI4 MemVar_D9301C
  loc_A5C73D: CVarAd
  loc_A5C741: PopAdLdVar
  loc_A5C742: ILdRf var_88
  loc_A5C745: CVarStr var_9C
  loc_A5C748: PopAdLdVar
  loc_A5C749: FLdRfVar var_8C
  loc_A5C74C: FLdPr Me
  loc_A5C74F: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A5C754: FLdPr var_8C
  loc_A5C757: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5C75C: FFree1Ad var_8C
  loc_A5C75F: ExitProcHresult
End Sub

Public Sub Encontrar(CodiEsci) '9ECC74
  'Data Table: 4225A0
  loc_9ECC54: LitStr "CodiEsci = "
  loc_9ECC57: FLdI2 CodiEsci
  loc_9ECC5A: CStrUI1
  loc_9ECC5C: FStStrNoPop var_88
  loc_9ECC5F: ConcatStr
  loc_9ECC60: PopTmpLdAdStr
  loc_9ECC64: Call Find(from_stack_1v)
  loc_9ECC69: FFreeStr var_88 = ""
  loc_9ECC70: ExitProcHresult
  loc_9ECC71: StAryMove
End Sub

Public Property Get DataSource() 'A08900
  'Data Table: 4225A0
  loc_A088D0: ZeroRetVal
  loc_A088D2: FLdRfVar var_90
  loc_A088D5: FLdRfVar var_8C
  loc_A088D8: FLdPr Me
  loc_A088DB: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A088E0: FLdPr var_8C
  loc_A088E3:  = Me.DataSource
  loc_A088E8: ILdRf var_90
  loc_A088EB: CastAd
  loc_A088EE: FStAdFunc var_88
  loc_A088F1: FFreeAd var_8C = ""
  loc_A088F8: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9F72E4
  'Data Table: 4225A0
  loc_9F72BC: FLdRfVar var_90
  loc_9F72BF: FLdRfVar var_8C
  loc_9F72C2: FLdPr Me
  loc_9F72C5: from_stack_1v = clsestacivi.global_4334888Get()
  loc_9F72CA: FLdPr var_8C
  loc_9F72CD:  = Me.EditMode
  loc_9F72D2: ILdRf var_90
  loc_9F72D5: FStR4 var_88
  loc_9F72D8: FFree1Ad var_8C
  loc_9F72DB: ExitProcCbHresult
End Sub

Public Property Get CodiEsci() 'A464A0
  'Data Table: 4225A0
  loc_A46454: FLdRfVar var_B4
  loc_A46457: FLdRfVar var_A4
  loc_A4645A: LitVarStr var_A0, "CodiEsci"
  loc_A4645F: PopAdLdVar
  loc_A46460: FLdRfVar var_90
  loc_A46463: FLdRfVar var_8C
  loc_A46466: FLdPr Me
  loc_A46469: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A4646E: FLdPr var_8C
  loc_A46471:  = Me.Fields
  loc_A46476: FLdPr var_90
  loc_A46479: from_stack_2 = Me.Item(from_stack_1)
  loc_A4647E: FLdPr var_A4
  loc_A46481:  = Me.Value
  loc_A46486: FLdRfVar var_B4
  loc_A46489: CI2Var
  loc_A4648A: FStI2 var_86
  loc_A4648D: FFreeAd var_8C = "": var_90 = ""
  loc_A46496: FFree1Var var_B4 = ""
  loc_A46499: ExitProcCbHresult
End Sub

Public Property Let CodiEsci(vDato) '9ECCD0
  'Data Table: 4225A0
  loc_9ECCAC: FLdI2 vDato
  loc_9ECCAF: CVarI2 var_A8
  loc_9ECCB2: PopAdLdVar
  loc_9ECCB3: LitVarStr var_98, "CodiEsci"
  loc_9ECCB8: PopAdLdVar
  loc_9ECCB9: FLdRfVar var_88
  loc_9ECCBC: FLdPr Me
  loc_9ECCBF: from_stack_1v = clsestacivi.global_4334888Get()
  loc_9ECCC4: FLdPr var_88
  loc_9ECCC7: Me.Collect = from_stack_1
  loc_9ECCCC: FFree1Ad var_88
  loc_9ECCCF: ExitProcHresult
End Sub

Public Property Get DetaEsci() 'A5629C
  'Data Table: 4225A0
  loc_A5624C: ZeroRetVal
  loc_A5624E: FLdRfVar var_B4
  loc_A56251: FLdRfVar var_A4
  loc_A56254: LitVarStr var_A0, "DetaEsci"
  loc_A56259: PopAdLdVar
  loc_A5625A: FLdRfVar var_90
  loc_A5625D: FLdRfVar var_8C
  loc_A56260: FLdPr Me
  loc_A56263: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A56268: FLdPr var_8C
  loc_A5626B:  = Me.Fields
  loc_A56270: FLdPr var_90
  loc_A56273: from_stack_2 = Me.Item(from_stack_1)
  loc_A56278: FLdPr var_A4
  loc_A5627B:  = Me.Value
  loc_A56280: FLdRfVar var_B4
  loc_A56283: CStrVarTmp
  loc_A56284: FStStr var_88
  loc_A56287: FFreeAd var_8C = "": var_90 = ""
  loc_A56290: FFree1Var var_B4 = ""
  loc_A56293: ExitProcCbHresult
End Sub

Public Property Let DetaEsci(vDato) 'A052B4
  'Data Table: 4225A0
  loc_A05288: ILdRf vDato
  loc_A0528B: FStStrCopy var_88
  loc_A0528E: ILdRf var_88
  loc_A05291: CVarStr var_AC
  loc_A05294: PopAdLdVar
  loc_A05295: LitVarStr var_9C, "DetaEsci"
  loc_A0529A: PopAdLdVar
  loc_A0529B: FLdRfVar var_8C
  loc_A0529E: FLdPr Me
  loc_A052A1: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A052A6: FLdPr var_8C
  loc_A052A9: Me.Collect = from_stack_1
  loc_A052AE: FFree1Ad var_8C
  loc_A052B1: ExitProcHresult
End Sub

Public Function ValidaClave(CodiEsci) 'A520F0
  'Data Table: 4225A0
  loc_A520A0: ZeroRetVal
  loc_A520A2: LitStr "SELECT CodiEsci FROM infogov.estacivi WHERE CodiEsci = "
  loc_A520A5: FLdI2 CodiEsci
  loc_A520A8: CStrUI1
  loc_A520AA: FStStrNoPop var_8C
  loc_A520AD: ConcatStr
  loc_A520AE: FStStrNoPop var_90
  loc_A520B1: Call EjecutarRs2(from_stack_1v)
  loc_A520B6: FFreeStr var_8C = ""
  loc_A520BD: FLdRfVar var_98
  loc_A520C0: FLdRfVar ValidaClave
  loc_A520C3: FLdPr Me
  loc_A520C6: from_stack_1v = clsestacivi.global_4334888Get()
  loc_A520CB: FLdPr ValidaClave
  loc_A520CE:  = Me.RecordCount
  loc_A520D3: ILdRf var_98
  loc_A520D6: LitI4 0
  loc_A520DB: GtI4
  loc_A520DC: FFree1Ad ValidaClave
  loc_A520DF: BranchF loc_A520E8
  loc_A520E2: LitStr "El TIPO de DOCUMENTO YA EXISTE. Reintente..."
  loc_A520E5: FStStrCopy var_88
  loc_A520E8: ExitProcCbHresult
End Function

Public Function NuevoRegistro() 'AB9430
  'Data Table: 4225A0
  loc_AB9340: New Recordset
  loc_AB9344: FStAdFuncNoPop
  loc_AB9347: FLdPr Me
  loc_AB934A: Call clsestacivi.global_4334888Set(from_stack_1v)
  loc_AB934F: FFree1Ad var_8C
  loc_AB9352: LitI4 -1
  loc_AB9357: LitI4 3
  loc_AB935C: LitI4 3
  loc_AB9361: ImpAdLdI4 MemVar_D9301C
  loc_AB9364: CVarAd
  loc_AB9368: PopAdLdVar
  loc_AB9369: LitVarStr var_9C, "SELECT CodiEsci FROM infogov.estacivi ORDER BY CodiEsci DESC "
  loc_AB936E: PopAdLdVar
  loc_AB936F: FLdRfVar var_8C
  loc_AB9372: FLdPr Me
  loc_AB9375: from_stack_1v = clsestacivi.global_4334888Get()
  loc_AB937A: FLdPr var_8C
  loc_AB937D: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_AB9382: FFree1Ad var_8C
  loc_AB9385: FLdRfVar var_B0
  loc_AB9388: FLdRfVar var_8C
  loc_AB938B: FLdPr Me
  loc_AB938E: from_stack_1v = clsestacivi.global_4334888Get()
  loc_AB9393: FLdPr var_8C
  loc_AB9396:  = Me.RecordCount
  loc_AB939B: ILdRf var_B0
  loc_AB939E: LitI4 0
  loc_AB93A3: GtI4
  loc_AB93A4: FFree1Ad var_8C
  loc_AB93A7: BranchF loc_AB93F9
  loc_AB93AA: FLdRfVar var_C8
  loc_AB93AD: FLdRfVar var_B8
  loc_AB93B0: LitVarStr var_9C, "CodiEsci"
  loc_AB93B5: PopAdLdVar
  loc_AB93B6: FLdRfVar var_B4
  loc_AB93B9: FLdRfVar var_8C
  loc_AB93BC: FLdPr Me
  loc_AB93BF: from_stack_1v = clsestacivi.global_4334888Get()
  loc_AB93C4: FLdPr var_8C
  loc_AB93C7:  = Me.Fields
  loc_AB93CC: FLdPr var_B4
  loc_AB93CF: from_stack_2 = Me.Item(from_stack_1)
  loc_AB93D4: FLdPr var_B8
  loc_AB93D7:  = Me.Value
  loc_AB93DC: FLdRfVar var_C8
  loc_AB93DF: FnCLngVar
  loc_AB93E1: LitI4 1
  loc_AB93E6: AddI4
  loc_AB93E7: FStR4 var_88
  loc_AB93EA: FFreeAd var_8C = "": var_B4 = ""
  loc_AB93F3: FFree1Var var_C8 = ""
  loc_AB93F6: Branch loc_AB9401
  loc_AB93F9: LitI4 1
  loc_AB93FE: FStR4 var_88
  loc_AB9401: FLdRfVar var_8C
  loc_AB9404: FLdPr Me
  loc_AB9407: from_stack_1v = clsestacivi.global_4334888Get()
  loc_AB940C: FLdPr var_8C
  loc_AB940F: Me.Close
  loc_AB9414: FFree1Ad var_8C
  loc_AB9417: LitNothing
  loc_AB9419: CastAd
  loc_AB941C: FStAdFuncNoPop
  loc_AB941F: FLdPr Me
  loc_AB9422: Call clsestacivi.global_4334888Set(from_stack_1v)
  loc_AB9427: FFree1Ad var_8C
  loc_AB942A: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E7AF8
  'Data Table: 4225A0
  loc_9E7ADC: ILdRf pError
  loc_9E7ADF: FStAd var_88 
  loc_9E7AE3: ILdRf pRecordset
  loc_9E7AE6: FStAd var_8C 
  loc_9E7AEA: FLdPr Me
  loc_9E7AED: RaiseEvent
  loc_9E7AF5: ExitProcHresult
  loc_9E7AF6: FStFPR4 arg_2843
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9FB3C
  'Data Table: 4225A0
  loc_A9FA7C: ILdRf pRecordset
  loc_A9FA7F: FStAd var_88 
  loc_A9FA83: ILdRf adReason
  loc_A9FA86: FStR4 var_90
  loc_A9FA89: ILdRf var_90
  loc_A9FA8C: LitI4 1
  loc_A9FA91: EqI4
  loc_A9FA92: BranchF loc_A9FA98
  loc_A9FA95: Branch loc_A9FB2B
  loc_A9FA98: ILdRf var_90
  loc_A9FA9B: LitI4 9
  loc_A9FAA0: EqI4
  loc_A9FAA1: BranchF loc_A9FAA7
  loc_A9FAA4: Branch loc_A9FB2B
  loc_A9FAA7: ILdRf var_90
  loc_A9FAAA: LitI4 2
  loc_A9FAAF: EqI4
  loc_A9FAB0: BranchF loc_A9FAB6
  loc_A9FAB3: Branch loc_A9FB2B
  loc_A9FAB6: ILdRf var_90
  loc_A9FAB9: LitI4 &HB
  loc_A9FABE: EqI4
  loc_A9FABF: BranchF loc_A9FAC5
  loc_A9FAC2: Branch loc_A9FB2B
  loc_A9FAC5: ILdRf var_90
  loc_A9FAC8: LitI4 &HA
  loc_A9FACD: EqI4
  loc_A9FACE: BranchF loc_A9FAD4
  loc_A9FAD1: Branch loc_A9FB2B
  loc_A9FAD4: ILdRf var_90
  loc_A9FAD7: LitI4 7
  loc_A9FADC: EqI4
  loc_A9FADD: BranchF loc_A9FAE3
  loc_A9FAE0: Branch loc_A9FB2B
  loc_A9FAE3: ILdRf var_90
  loc_A9FAE6: LitI4 8
  loc_A9FAEB: EqI4
  loc_A9FAEC: BranchF loc_A9FAF2
  loc_A9FAEF: Branch loc_A9FB2B
  loc_A9FAF2: ILdRf var_90
  loc_A9FAF5: LitI4 5
  loc_A9FAFA: EqI4
  loc_A9FAFB: BranchF loc_A9FB01
  loc_A9FAFE: Branch loc_A9FB2B
  loc_A9FB01: ILdRf var_90
  loc_A9FB04: LitI4 6
  loc_A9FB09: EqI4
  loc_A9FB0A: BranchF loc_A9FB10
  loc_A9FB0D: Branch loc_A9FB2B
  loc_A9FB10: ILdRf var_90
  loc_A9FB13: LitI4 4
  loc_A9FB18: EqI4
  loc_A9FB19: BranchF loc_A9FB1F
  loc_A9FB1C: Branch loc_A9FB2B
  loc_A9FB1F: ILdRf var_90
  loc_A9FB22: LitI4 3
  loc_A9FB27: EqI4
  loc_A9FB28: BranchF loc_A9FB2B
  loc_A9FB2B: FLdI2 var_8A
  loc_A9FB2E: BranchF loc_A9FB39
  loc_A9FB31: LitI4 4
  loc_A9FB36: IStI4 adStatus
  loc_A9FB39: ExitProcHresult
End Sub

Private Function Proc_43_32_9F9B7C() '9F9B7C
  'Data Table: 4225A0
  loc_9F9B58: LitStr "Primary"
  loc_9F9B5B: FLdPr Me
  loc_9F9B5E: LateIdLdVar var_94 DispID_4 0
  loc_9F9B65: CastAdVar Me
  loc_9F9B69: FStAdFunc var_98
  loc_9F9B6C: FLdPr var_98
  loc_9F9B74: FFree1Ad var_98
  loc_9F9B77: FFree1Var var_94 = ""
  loc_9F9B7A: ExitProcHresult
  loc_9F9B7B: PopAdLdVar
End Function

Private Function Proc_43_33_9F9E00(arg_C) '9F9E00
  'Data Table: 4225A0
  loc_9F9DDC: ILdI4 arg_C
  loc_9F9DDF: FStStrCopy var_88
  loc_9F9DE2: ILdRf var_88
  loc_9F9DE5: LitStr "Primary"
  loc_9F9DE8: EqStr
  loc_9F9DEA: BranchF loc_9F9DFF
  loc_9F9DED: FLdRfVar var_8C
  loc_9F9DF0: FLdPr Me
  loc_9F9DF3: from_stack_1v = clsestacivi.global_4334888Get()
  loc_9F9DF8: FLdZeroAd var_8C
  loc_9F9DFB: IStAdFunc
  loc_9F9DFF: ExitProcHresult
End Function

Public Function global_4334888Get() '42291C
  global_4334888Get = global_4334888
End Function

Public Sub global_4334888Put(Value) '422936
  global_4334888 = Value
End Sub

Public Sub global_4334888Set(Value) '422950
  global_4334888 = Value
End Sub

Public Function global_4334888Get() '42296A
  global_4334888Get = global_4334888
End Function

Public Sub global_4334888Put(Value) '422984
  global_4334888 = Value
End Sub

Public Sub global_4334888Set(Value) '42299E
  global_4334888 = Value
End Sub

Public Function global_4334888Get() '4229B8
  global_4334888Get = global_4334888
End Function

Public Sub global_4334888Put(Value) '4229D2
  global_4334888 = Value
End Sub

Public Sub global_4334888Set(Value) '4229EC
  global_4334888 = Value
End Sub
