VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsoficina"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0F774
  'Data Table: 42791C
  loc_A0F738: FLdRfVar var_8C
  loc_A0F73B: FLdRfVar var_88
  loc_A0F73E: FLdPr Me
  loc_A0F741: from_stack_1v = clsoficina.global_4356260Get()
  loc_A0F746: FLdPr var_88
  loc_A0F749:  = Me.RecordCount
  loc_A0F74E: ILdRf var_8C
  loc_A0F751: LitI4 0
  loc_A0F756: GtI4
  loc_A0F757: FFree1Ad var_88
  loc_A0F75A: BranchF loc_A0F773
  loc_A0F75D: FLdRfVar var_88
  loc_A0F760: FLdPr Me
  loc_A0F763: from_stack_1v = clsoficina.global_4356260Get()
  loc_A0F768: FLdPr var_88
  loc_A0F76B: Me.MoveFirst
  loc_A0F770: FFree1Ad var_88
  loc_A0F773: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0F5B4
  'Data Table: 42791C
  loc_A0F578: FLdRfVar var_8C
  loc_A0F57B: FLdRfVar var_88
  loc_A0F57E: FLdPr Me
  loc_A0F581: from_stack_1v = clsoficina.global_4356260Get()
  loc_A0F586: FLdPr var_88
  loc_A0F589:  = Me.RecordCount
  loc_A0F58E: ILdRf var_8C
  loc_A0F591: LitI4 0
  loc_A0F596: GtI4
  loc_A0F597: FFree1Ad var_88
  loc_A0F59A: BranchF loc_A0F5B3
  loc_A0F59D: FLdRfVar var_88
  loc_A0F5A0: FLdPr Me
  loc_A0F5A3: from_stack_1v = clsoficina.global_4356260Get()
  loc_A0F5A8: FLdPr var_88
  loc_A0F5AB: Me.MoveLast
  loc_A0F5B0: FFree1Ad var_88
  loc_A0F5B3: ExitProcHresult
End Sub

Public Sub MoveNext() 'AA0E48
  'Data Table: 42791C
  loc_AA0D8C: FLdRfVar var_8A
  loc_AA0D8F: FLdRfVar var_88
  loc_AA0D92: FLdPr Me
  loc_AA0D95: from_stack_1v = clsoficina.global_4356260Get()
  loc_AA0D9A: FLdPr var_88
  loc_AA0D9D:  = Me.EOF
  loc_AA0DA2: FLdI2 var_8A
  loc_AA0DA5: NotI4
  loc_AA0DA6: FLdRfVar var_94
  loc_AA0DA9: FLdRfVar var_90
  loc_AA0DAC: FLdPr Me
  loc_AA0DAF: from_stack_1v = clsoficina.global_4356260Get()
  loc_AA0DB4: FLdPr var_90
  loc_AA0DB7:  = Me.RecordCount
  loc_AA0DBC: ILdRf var_94
  loc_AA0DBF: LitI4 0
  loc_AA0DC4: GtI4
  loc_AA0DC5: AndI4
  loc_AA0DC6: FFreeAd var_88 = ""
  loc_AA0DCD: BranchF loc_AA0DE6
  loc_AA0DD0: FLdRfVar var_88
  loc_AA0DD3: FLdPr Me
  loc_AA0DD6: from_stack_1v = clsoficina.global_4356260Get()
  loc_AA0DDB: FLdPr var_88
  loc_AA0DDE: Me.MoveNext
  loc_AA0DE3: FFree1Ad var_88
  loc_AA0DE6: FLdRfVar var_8A
  loc_AA0DE9: FLdRfVar var_88
  loc_AA0DEC: FLdPr Me
  loc_AA0DEF: from_stack_1v = clsoficina.global_4356260Get()
  loc_AA0DF4: FLdPr var_88
  loc_AA0DF7:  = Me.EOF
  loc_AA0DFC: FLdI2 var_8A
  loc_AA0DFF: FLdRfVar var_94
  loc_AA0E02: FLdRfVar var_90
  loc_AA0E05: FLdPr Me
  loc_AA0E08: from_stack_1v = clsoficina.global_4356260Get()
  loc_AA0E0D: FLdPr var_90
  loc_AA0E10:  = Me.RecordCount
  loc_AA0E15: ILdRf var_94
  loc_AA0E18: LitI4 0
  loc_AA0E1D: GtI4
  loc_AA0E1E: AndI4
  loc_AA0E1F: FFreeAd var_88 = ""
  loc_AA0E26: BranchF loc_AA0E44
  loc_AA0E29: ImpAdCallFPR4 Beep()
  loc_AA0E2E: FLdRfVar var_88
  loc_AA0E31: FLdPr Me
  loc_AA0E34: from_stack_1v = clsoficina.global_4356260Get()
  loc_AA0E39: FLdPr var_88
  loc_AA0E3C: Me.MoveLast
  loc_AA0E41: FFree1Ad var_88
  loc_AA0E44: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9D518C
  'Data Table: 42791C
  loc_9D5174: FLdRfVar var_88
  loc_9D5177: FLdPr Me
  loc_9D517A: from_stack_1v = clsoficina.global_4356260Get()
  loc_9D517F: FLdPr var_88
  loc_9D5182: Me.MoveNext
  loc_9D5187: FFree1Ad var_88
  loc_9D518A: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E9884
  'Data Table: 42791C
  loc_9E9864: LitVar_Missing var_98
  loc_9E9867: PopAdLdVar
  loc_9E9868: ILdI2 iValor
  loc_9E986B: CI4UI1
  loc_9E986C: FLdRfVar var_88
  loc_9E986F: FLdPr Me
  loc_9E9872: from_stack_1v = clsoficina.global_4356260Get()
  loc_9E9877: FLdPr var_88
  loc_9E987A: Me.Move from_stack_1, from_stack_2
  loc_9E987F: FFree1Ad var_88
  loc_9E9882: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9FC2C
  'Data Table: 42791C
  loc_A9FB70: FLdRfVar var_8A
  loc_A9FB73: FLdRfVar var_88
  loc_A9FB76: FLdPr Me
  loc_A9FB79: from_stack_1v = clsoficina.global_4356260Get()
  loc_A9FB7E: FLdPr var_88
  loc_A9FB81:  = Me.BOF
  loc_A9FB86: FLdI2 var_8A
  loc_A9FB89: NotI4
  loc_A9FB8A: FLdRfVar var_94
  loc_A9FB8D: FLdRfVar var_90
  loc_A9FB90: FLdPr Me
  loc_A9FB93: from_stack_1v = clsoficina.global_4356260Get()
  loc_A9FB98: FLdPr var_90
  loc_A9FB9B:  = Me.RecordCount
  loc_A9FBA0: ILdRf var_94
  loc_A9FBA3: LitI4 0
  loc_A9FBA8: GtI4
  loc_A9FBA9: AndI4
  loc_A9FBAA: FFreeAd var_88 = ""
  loc_A9FBB1: BranchF loc_A9FBCA
  loc_A9FBB4: FLdRfVar var_88
  loc_A9FBB7: FLdPr Me
  loc_A9FBBA: from_stack_1v = clsoficina.global_4356260Get()
  loc_A9FBBF: FLdPr var_88
  loc_A9FBC2: Me.MovePrevious
  loc_A9FBC7: FFree1Ad var_88
  loc_A9FBCA: FLdRfVar var_8A
  loc_A9FBCD: FLdRfVar var_88
  loc_A9FBD0: FLdPr Me
  loc_A9FBD3: from_stack_1v = clsoficina.global_4356260Get()
  loc_A9FBD8: FLdPr var_88
  loc_A9FBDB:  = Me.BOF
  loc_A9FBE0: FLdI2 var_8A
  loc_A9FBE3: FLdRfVar var_94
  loc_A9FBE6: FLdRfVar var_90
  loc_A9FBE9: FLdPr Me
  loc_A9FBEC: from_stack_1v = clsoficina.global_4356260Get()
  loc_A9FBF1: FLdPr var_90
  loc_A9FBF4:  = Me.RecordCount
  loc_A9FBF9: ILdRf var_94
  loc_A9FBFC: LitI4 0
  loc_A9FC01: GtI4
  loc_A9FC02: AndI4
  loc_A9FC03: FFreeAd var_88 = ""
  loc_A9FC0A: BranchF loc_A9FC28
  loc_A9FC0D: ImpAdCallFPR4 Beep()
  loc_A9FC12: FLdRfVar var_88
  loc_A9FC15: FLdPr Me
  loc_A9FC18: from_stack_1v = clsoficina.global_4356260Get()
  loc_A9FC1D: FLdPr var_88
  loc_A9FC20: Me.MoveFirst
  loc_A9FC25: FFree1Ad var_88
  loc_A9FC28: ExitProcHresult
  loc_A9FC29: PopAdLdVar
  loc_A9FC2A: FLdPr var_5BF8
End Sub

Public Property Get EOF() '9F99B4
  'Data Table: 42791C
  loc_9F998C: FLdRfVar var_8E
  loc_9F998F: FLdRfVar var_8C
  loc_9F9992: FLdPr Me
  loc_9F9995: from_stack_1v = clsoficina.global_4356260Get()
  loc_9F999A: FLdPr var_8C
  loc_9F999D:  = Me.EOF
  loc_9F99A2: FLdI2 var_8E
  loc_9F99A5: FStI2 var_86
  loc_9F99A8: FFree1Ad var_8C
  loc_9F99AB: ExitProcCbHresult
  loc_9F99B3: Ary1LdCy
End Sub

Public Property Get BOF() '9F5960
  'Data Table: 42791C
  loc_9F5938: FLdRfVar var_8E
  loc_9F593B: FLdRfVar var_8C
  loc_9F593E: FLdPr Me
  loc_9F5941: from_stack_1v = clsoficina.global_4356260Get()
  loc_9F5946: FLdPr var_8C
  loc_9F5949:  = Me.BOF
  loc_9F594E: FLdI2 var_8E
  loc_9F5951: FStI2 var_86
  loc_9F5954: FFree1Ad var_8C
  loc_9F5957: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9E1EFC
  'Data Table: 42791C
  loc_9E1EE0: ILdI4 sOrden
  loc_9E1EE3: FLdRfVar var_88
  loc_9E1EE6: FLdPr Me
  loc_9E1EE9: from_stack_1v = clsoficina.global_4356260Get()
  loc_9E1EEE: FLdPr var_88
  loc_9E1EF1: Me.Sort = from_stack_1
  loc_9E1EF6: FFree1Ad var_88
  loc_9E1EF9: ExitProcHresult
End Sub

Public Sub Find(sFind) '9F9844
  'Data Table: 42791C
  loc_9F981C: LitVar_Missing var_98
  loc_9F981F: PopAdLdVar
  loc_9F9820: LitI4 1
  loc_9F9825: LitI4 0
  loc_9F982A: ILdI4 sFind
  loc_9F982D: FLdRfVar var_88
  loc_9F9830: FLdPr Me
  loc_9F9833: from_stack_1v = clsoficina.global_4356260Get()
  loc_9F9838: FLdPr var_88
  loc_9F983B: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F9840: FFree1Ad var_88
  loc_9F9843: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F5738
  'Data Table: 42791C
  loc_9F5710: FLdRfVar var_90
  loc_9F5713: FLdRfVar var_8C
  loc_9F5716: FLdPr Me
  loc_9F5719: from_stack_1v = clsoficina.global_4356260Get()
  loc_9F571E: FLdPr var_8C
  loc_9F5721:  = Me.AbsolutePosition
  loc_9F5726: ILdRf var_90
  loc_9F5729: FStR4 var_88
  loc_9F572C: FFree1Ad var_8C
  loc_9F572F: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F5680
  'Data Table: 42791C
  loc_9F5658: FLdRfVar var_90
  loc_9F565B: FLdRfVar var_8C
  loc_9F565E: FLdPr Me
  loc_9F5661: from_stack_1v = clsoficina.global_4356260Get()
  loc_9F5666: FLdPr var_8C
  loc_9F5669:  = Me.RecordCount
  loc_9F566E: ILdRf var_90
  loc_9F5671: FStR4 var_88
  loc_9F5674: FFree1Ad var_8C
  loc_9F5677: ExitProcCbHresult
  loc_9F567D: FFree1Ad var_88
End Sub

Public Sub AddNew(CodiOfic, DetaOfic) 'A7B8B8
  'Data Table: 42791C
  loc_A7B848: ILdRf DetaOfic
  loc_A7B84B: FStStrCopy var_88
  loc_A7B84E: FLdRfVar var_8C
  loc_A7B851: FLdI2 CodiOfic
  loc_A7B854: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A7B859: ILdRf var_8C
  loc_A7B85C: LitStr vbNullString
  loc_A7B85F: NeStr
  loc_A7B861: FFree1Str var_8C
  loc_A7B864: BranchF loc_A7B872
  loc_A7B867: LitStr "La Oficina YA EXISTE. Reintente..."
  loc_A7B86A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7B86F: Branch loc_A7B8B5
  loc_A7B872: LitStr "INSERT INTO oficina (CodiOfic, DetaOfic) VALUES ("
  loc_A7B875: FLdI2 CodiOfic
  loc_A7B878: CStrUI1
  loc_A7B87A: FStStrNoPop var_8C
  loc_A7B87D: ConcatStr
  loc_A7B87E: FStStrNoPop var_90
  loc_A7B881: LitStr ",'"
  loc_A7B884: ConcatStr
  loc_A7B885: FStStrNoPop var_94
  loc_A7B888: ILdRf var_88
  loc_A7B88B: ConcatStr
  loc_A7B88C: FStStrNoPop var_98
  loc_A7B88F: LitStr "');"
  loc_A7B892: ConcatStr
  loc_A7B893: FStStrNoPop var_9C
  loc_A7B896: Call EjecutarRs2(from_stack_1v)
  loc_A7B89B: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A7B8A8: Call Requery()
  loc_A7B8AD: FLdI2 CodiOfic
  loc_A7B8B0: Call Encontrar(from_stack_1v)
  loc_A7B8B5: ExitProcHresult
  loc_A7B8B6: NewIfNullPr Me
End Sub

Public Sub Modificar(CodiOfic, DetaOfic) 'A6EB1C
  'Data Table: 42791C
  loc_A6EAB4: ILdRf DetaOfic
  loc_A6EAB7: FStStrCopy var_88
  loc_A6EABA: FLdRfVar var_8C
  loc_A6EABD: FLdI2 CodiOfic
  loc_A6EAC0: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A6EAC5: ILdRf var_8C
  loc_A6EAC8: LitStr vbNullString
  loc_A6EACB: EqStr
  loc_A6EACD: FFree1Str var_8C
  loc_A6EAD0: BranchF loc_A6EADE
  loc_A6EAD3: LitStr "La Oficina NO EXISTE. Reintente..."
  loc_A6EAD6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6EADB: Branch loc_A6EB0B
  loc_A6EADE: LitStr " UPDATE oficina SET DetaOfic='"
  loc_A6EAE1: ILdRf var_88
  loc_A6EAE4: ConcatStr
  loc_A6EAE5: FStStrNoPop var_8C
  loc_A6EAE8: LitStr "' WHERE CodiOfic="
  loc_A6EAEB: ConcatStr
  loc_A6EAEC: FStStrNoPop var_90
  loc_A6EAEF: FLdI2 CodiOfic
  loc_A6EAF2: CStrUI1
  loc_A6EAF4: FStStrNoPop var_94
  loc_A6EAF7: ConcatStr
  loc_A6EAF8: FStStrNoPop var_98
  loc_A6EAFB: Call EjecutarRs2(from_stack_1v)
  loc_A6EB00: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_A6EB0B: Call Requery()
  loc_A6EB10: FLdI2 CodiOfic
  loc_A6EB13: Call Encontrar(from_stack_1v)
  loc_A6EB18: ExitProcHresult
  loc_A6EB19: StUdtVar
End Sub

Public Sub Delete() 'A228E8
  'Data Table: 42791C
  loc_A228A0: FLdRfVar var_8C
  loc_A228A3: FLdRfVar var_88
  loc_A228A6: FLdPr Me
  loc_A228A9: from_stack_1v = clsoficina.global_4356260Get()
  loc_A228AE: FLdPr var_88
  loc_A228B1:  = Me.RecordCount
  loc_A228B6: ILdRf var_8C
  loc_A228B9: LitI4 0
  loc_A228BE: GtI4
  loc_A228BF: FFree1Ad var_88
  loc_A228C2: BranchF loc_A228E5
  loc_A228C5: LitI4 1
  loc_A228CA: FLdRfVar var_88
  loc_A228CD: FLdPr Me
  loc_A228D0: from_stack_1v = clsoficina.global_4356260Get()
  loc_A228D5: FLdPr var_88
  loc_A228D8: Me.Delete
  loc_A228DD: FFree1Ad var_88
  loc_A228E0: Call MoveNext()
  loc_A228E5: ExitProcHresult
End Sub

Public Sub Requery() '9FFF84
  'Data Table: 42791C
  loc_9FFF54: LitI4 -1
  loc_9FFF59: FLdRfVar var_88
  loc_9FFF5C: FLdPr Me
  loc_9FFF5F: from_stack_1v = clsoficina.global_4356260Get()
  loc_9FFF64: FLdPr var_88
  loc_9FFF67: Me.Requery from_stack_1
  loc_9FFF6C: FFree1Ad var_88
  loc_9FFF6F: LitVarStr var_98, "Primary"
  loc_9FFF74: PopAdLdVar
  loc_9FFF75: FLdPr Me
  loc_9FFF78: LateIdCall
  loc_9FFF80: ExitProcHresult
  loc_9FFF81: FLdPr arg_D00
End Sub

Public Sub Update() 'A21220
  'Data Table: 42791C
  loc_A211DC: FLdRfVar var_88
  loc_A211DF: FLdPr Me
  loc_A211E2: from_stack_1v = clsoficina.global_4356260Get()
  loc_A211E7: FLdZeroAd var_88
  loc_A211EA: FStAdFunc var_8C
  loc_A211ED: LitI4 3
  loc_A211F2: FLdPr var_8C
  loc_A211F5: Me.UpdateBatch
  loc_A211FA: FLdRfVar var_90
  loc_A211FD: FLdPr var_8C
  loc_A21200:  = Me.EditMode
  loc_A21205: ILdRf var_90
  loc_A21208: LitI4 2
  loc_A2120D: EqI4
  loc_A2120E: BranchF loc_A21216
  loc_A21211: Call MoveLast()
  loc_A21216: LitNothing
  loc_A21218: FStAd var_8C 
  loc_A2121C: ExitProcHresult
  loc_A2121D: CBoolVarNull
End Sub

Public Sub Cancel() 'A4F6AC
  'Data Table: 42791C
  loc_A4F658: FLdRfVar var_88
  loc_A4F65B: FLdPr Me
  loc_A4F65E: from_stack_1v = clsoficina.global_4356260Get()
  loc_A4F663: FLdZeroAd var_88
  loc_A4F666: FStAdFunc var_8C
  loc_A4F669: FLdRfVar var_90
  loc_A4F66C: FLdPr var_8C
  loc_A4F66F:  = Me.RecordCount
  loc_A4F674: ILdRf var_90
  loc_A4F677: LitI4 0
  loc_A4F67C: GtI4
  loc_A4F67D: BranchF loc_A4F6A4
  loc_A4F680: FLdPr var_8C
  loc_A4F683: Me.CancelUpdate
  loc_A4F688: FLdRfVar var_90
  loc_A4F68B: FLdPr var_8C
  loc_A4F68E:  = Me.EditMode
  loc_A4F693: ILdRf var_90
  loc_A4F696: LitI4 2
  loc_A4F69B: EqI4
  loc_A4F69C: BranchF loc_A4F6A4
  loc_A4F69F: Call MoveFirst()
  loc_A4F6A4: LitNothing
  loc_A4F6A6: FStAd var_8C 
  loc_A4F6AA: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FCF94
  'Data Table: 42791C
  loc_9FCF68: FLdRfVar var_90
  loc_9FCF6B: FLdRfVar var_8C
  loc_9FCF6E: FLdPr Me
  loc_9FCF71: from_stack_1v = clsoficina.global_4356260Get()
  loc_9FCF76: FLdPr var_8C
  loc_9FCF79:  = Me.EditMode
  loc_9FCF7E: ILdRf var_90
  loc_9FCF81: LitI4 0
  loc_9FCF86: NeI4
  loc_9FCF87: FStI2 var_86
  loc_9FCF8A: FFree1Ad var_8C
  loc_9FCF8D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A716D4
  'Data Table: 42791C
  loc_A71660: ILdRf sSelect
  loc_A71663: FStStrCopy var_88
  loc_A71666: LitNothing
  loc_A71668: CastAd
  loc_A7166B: FStAdFuncNoPop
  loc_A7166E: FLdPr Me
  loc_A71671: Call clsoficina.global_4356260Set(from_stack_1v)
  loc_A71676: FFree1Ad var_8C
  loc_A71679: New Recordset
  loc_A7167D: FStAdFuncNoPop
  loc_A71680: FLdPr Me
  loc_A71683: Call clsoficina.global_4356260Set(from_stack_1v)
  loc_A71688: FFree1Ad var_8C
  loc_A7168B: LitI4 -1
  loc_A71690: LitI4 3
  loc_A71695: LitI4 3
  loc_A7169A: ImpAdLdI4 MemVar_D9301C
  loc_A7169D: CVarAd
  loc_A716A1: PopAdLdVar
  loc_A716A2: ILdRf var_88
  loc_A716A5: CVarStr var_9C
  loc_A716A8: PopAdLdVar
  loc_A716A9: FLdRfVar var_8C
  loc_A716AC: FLdPr Me
  loc_A716AF: from_stack_1v = clsoficina.global_4356260Get()
  loc_A716B4: FLdPr var_8C
  loc_A716B7: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A716BC: FFree1Ad var_8C
  loc_A716BF: LitVarStr var_9C, "Primary"
  loc_A716C4: PopAdLdVar
  loc_A716C5: FLdPr Me
  loc_A716C8: LateIdCall
  loc_A716D0: ExitProcHresult
  loc_A716D1: FLdPr arg_D00
End Sub

Public Sub EjecutarRs2(sSelect) 'A5B888
  'Data Table: 42791C
  loc_A5B828: ILdRf sSelect
  loc_A5B82B: FStStrCopy var_88
  loc_A5B82E: LitNothing
  loc_A5B830: CastAd
  loc_A5B833: FStAdFuncNoPop
  loc_A5B836: FLdPr Me
  loc_A5B839: Call clsoficina.global_4356260Set(from_stack_1v)
  loc_A5B83E: FFree1Ad var_8C
  loc_A5B841: New Recordset
  loc_A5B845: FStAdFuncNoPop
  loc_A5B848: FLdPr Me
  loc_A5B84B: Call clsoficina.global_4356260Set(from_stack_1v)
  loc_A5B850: FFree1Ad var_8C
  loc_A5B853: LitI4 -1
  loc_A5B858: LitI4 3
  loc_A5B85D: LitI4 3
  loc_A5B862: ImpAdLdI4 MemVar_D9301C
  loc_A5B865: CVarAd
  loc_A5B869: PopAdLdVar
  loc_A5B86A: ILdRf var_88
  loc_A5B86D: CVarStr var_9C
  loc_A5B870: PopAdLdVar
  loc_A5B871: FLdRfVar var_8C
  loc_A5B874: FLdPr Me
  loc_A5B877: from_stack_1v = clsoficina.global_4356260Get()
  loc_A5B87C: FLdPr var_8C
  loc_A5B87F: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5B884: FFree1Ad var_8C
  loc_A5B887: ExitProcHresult
End Sub

Public Sub Encontrar(CodiOfic) '9EDEAC
  'Data Table: 42791C
  loc_9EDE8C: LitStr "CodiOfic = "
  loc_9EDE8F: FLdI2 CodiOfic
  loc_9EDE92: CStrUI1
  loc_9EDE94: FStStrNoPop var_88
  loc_9EDE97: ConcatStr
  loc_9EDE98: PopTmpLdAdStr
  loc_9EDE9C: Call Find(from_stack_1v)
  loc_9EDEA1: FFreeStr var_88 = ""
  loc_9EDEA8: ExitProcHresult
  loc_9EDEA9: Ary1LdRf
End Sub

Public Property Get DataSource() 'A08F54
  'Data Table: 42791C
  loc_A08F24: ZeroRetVal
  loc_A08F26: FLdRfVar var_90
  loc_A08F29: FLdRfVar var_8C
  loc_A08F2C: FLdPr Me
  loc_A08F2F: from_stack_1v = clsoficina.global_4356260Get()
  loc_A08F34: FLdPr var_8C
  loc_A08F37:  = Me.DataSource
  loc_A08F3C: ILdRf var_90
  loc_A08F3F: CastAd
  loc_A08F42: FStAdFunc var_88
  loc_A08F45: FFreeAd var_8C = ""
  loc_A08F4C: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9F9170
  'Data Table: 42791C
  loc_9F9148: FLdRfVar var_90
  loc_9F914B: FLdRfVar var_8C
  loc_9F914E: FLdPr Me
  loc_9F9151: from_stack_1v = clsoficina.global_4356260Get()
  loc_9F9156: FLdPr var_8C
  loc_9F9159:  = Me.EditMode
  loc_9F915E: ILdRf var_90
  loc_9F9161: FStR4 var_88
  loc_9F9164: FFree1Ad var_8C
  loc_9F9167: ExitProcCbHresult
  loc_9F916D: FLdPr Me
End Sub

Public Property Get CodiOfic() 'A48B74
  'Data Table: 42791C
  loc_A48B28: FLdRfVar var_B4
  loc_A48B2B: FLdRfVar var_A4
  loc_A48B2E: LitVarStr var_A0, "CodiOfic"
  loc_A48B33: PopAdLdVar
  loc_A48B34: FLdRfVar var_90
  loc_A48B37: FLdRfVar var_8C
  loc_A48B3A: FLdPr Me
  loc_A48B3D: from_stack_1v = clsoficina.global_4356260Get()
  loc_A48B42: FLdPr var_8C
  loc_A48B45:  = Me.Fields
  loc_A48B4A: FLdPr var_90
  loc_A48B4D: from_stack_2 = Me.Item(from_stack_1)
  loc_A48B52: FLdPr var_A4
  loc_A48B55:  = Me.Value
  loc_A48B5A: FLdRfVar var_B4
  loc_A48B5D: CI2Var
  loc_A48B5E: FStI2 var_86
  loc_A48B61: FFreeAd var_8C = "": var_90 = ""
  loc_A48B6A: FFree1Var var_B4 = ""
  loc_A48B6D: ExitProcCbHresult
End Sub

Public Property Let CodiOfic(vDato) '9EDE58
  'Data Table: 42791C
  loc_9EDE34: FLdI2 vDato
  loc_9EDE37: CVarI2 var_A8
  loc_9EDE3A: PopAdLdVar
  loc_9EDE3B: LitVarStr var_98, "CodiOfic"
  loc_9EDE40: PopAdLdVar
  loc_9EDE41: FLdRfVar var_88
  loc_9EDE44: FLdPr Me
  loc_9EDE47: from_stack_1v = clsoficina.global_4356260Get()
  loc_9EDE4C: FLdPr var_88
  loc_9EDE4F: Me.Collect = from_stack_1
  loc_9EDE54: FFree1Ad var_88
  loc_9EDE57: ExitProcHresult
End Sub

Public Property Get DetaOfic() 'A573F4
  'Data Table: 42791C
  loc_A573A4: ZeroRetVal
  loc_A573A6: FLdRfVar var_B4
  loc_A573A9: FLdRfVar var_A4
  loc_A573AC: LitVarStr var_A0, "DetaOfic"
  loc_A573B1: PopAdLdVar
  loc_A573B2: FLdRfVar var_90
  loc_A573B5: FLdRfVar var_8C
  loc_A573B8: FLdPr Me
  loc_A573BB: from_stack_1v = clsoficina.global_4356260Get()
  loc_A573C0: FLdPr var_8C
  loc_A573C3:  = Me.Fields
  loc_A573C8: FLdPr var_90
  loc_A573CB: from_stack_2 = Me.Item(from_stack_1)
  loc_A573D0: FLdPr var_A4
  loc_A573D3:  = Me.Value
  loc_A573D8: FLdRfVar var_B4
  loc_A573DB: CStrVarTmp
  loc_A573DC: FStStr var_88
  loc_A573DF: FFreeAd var_8C = "": var_90 = ""
  loc_A573E8: FFree1Var var_B4 = ""
  loc_A573EB: ExitProcCbHresult
End Sub

Public Property Let DetaOfic(vDato) '9FEDEC
  'Data Table: 42791C
  loc_9FEDC0: ILdRf vDato
  loc_9FEDC3: FStStrCopy var_88
  loc_9FEDC6: ILdRf var_88
  loc_9FEDC9: CVarStr var_AC
  loc_9FEDCC: PopAdLdVar
  loc_9FEDCD: LitVarStr var_9C, "DetaOfic"
  loc_9FEDD2: PopAdLdVar
  loc_9FEDD3: FLdRfVar var_8C
  loc_9FEDD6: FLdPr Me
  loc_9FEDD9: from_stack_1v = clsoficina.global_4356260Get()
  loc_9FEDDE: FLdPr var_8C
  loc_9FEDE1: Me.Collect = from_stack_1
  loc_9FEDE6: FFree1Ad var_8C
  loc_9FEDE9: ExitProcHresult
  loc_9FEDEA: LeR8
End Sub

Public Function ValidaClave(CodiOfic) 'A52F90
  'Data Table: 42791C
  loc_A52F40: ZeroRetVal
  loc_A52F42: LitStr "SELECT CodiOfic FROM oficina WHERE CodiOfic = "
  loc_A52F45: FLdI2 CodiOfic
  loc_A52F48: CStrUI1
  loc_A52F4A: FStStrNoPop var_8C
  loc_A52F4D: ConcatStr
  loc_A52F4E: FStStrNoPop var_90
  loc_A52F51: Call EjecutarRs2(from_stack_1v)
  loc_A52F56: FFreeStr var_8C = ""
  loc_A52F5D: FLdRfVar var_98
  loc_A52F60: FLdRfVar ValidaClave
  loc_A52F63: FLdPr Me
  loc_A52F66: from_stack_1v = clsoficina.global_4356260Get()
  loc_A52F6B: FLdPr ValidaClave
  loc_A52F6E:  = Me.RecordCount
  loc_A52F73: ILdRf var_98
  loc_A52F76: LitI4 0
  loc_A52F7B: GtI4
  loc_A52F7C: FFree1Ad ValidaClave
  loc_A52F7F: BranchF loc_A52F88
  loc_A52F82: LitStr "La Oficina YA EXISTE. Reintente..."
  loc_A52F85: FStStrCopy var_88
  loc_A52F88: ExitProcCbHresult
End Function

Public Function NuevoRegistro() 'ABA990
  'Data Table: 42791C
  loc_ABA8A0: New Recordset
  loc_ABA8A4: FStAdFuncNoPop
  loc_ABA8A7: FLdPr Me
  loc_ABA8AA: Call clsoficina.global_4356260Set(from_stack_1v)
  loc_ABA8AF: FFree1Ad var_8C
  loc_ABA8B2: LitI4 -1
  loc_ABA8B7: LitI4 3
  loc_ABA8BC: LitI4 3
  loc_ABA8C1: ImpAdLdI4 MemVar_D9301C
  loc_ABA8C4: CVarAd
  loc_ABA8C8: PopAdLdVar
  loc_ABA8C9: LitVarStr var_9C, "SELECT CodiOfic FROM oficina ORDER BY CodiOfic DESC "
  loc_ABA8CE: PopAdLdVar
  loc_ABA8CF: FLdRfVar var_8C
  loc_ABA8D2: FLdPr Me
  loc_ABA8D5: from_stack_1v = clsoficina.global_4356260Get()
  loc_ABA8DA: FLdPr var_8C
  loc_ABA8DD: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_ABA8E2: FFree1Ad var_8C
  loc_ABA8E5: FLdRfVar var_B0
  loc_ABA8E8: FLdRfVar var_8C
  loc_ABA8EB: FLdPr Me
  loc_ABA8EE: from_stack_1v = clsoficina.global_4356260Get()
  loc_ABA8F3: FLdPr var_8C
  loc_ABA8F6:  = Me.RecordCount
  loc_ABA8FB: ILdRf var_B0
  loc_ABA8FE: LitI4 0
  loc_ABA903: GtI4
  loc_ABA904: FFree1Ad var_8C
  loc_ABA907: BranchF loc_ABA959
  loc_ABA90A: FLdRfVar var_C8
  loc_ABA90D: FLdRfVar var_B8
  loc_ABA910: LitVarStr var_9C, "CodiOfic"
  loc_ABA915: PopAdLdVar
  loc_ABA916: FLdRfVar var_B4
  loc_ABA919: FLdRfVar var_8C
  loc_ABA91C: FLdPr Me
  loc_ABA91F: from_stack_1v = clsoficina.global_4356260Get()
  loc_ABA924: FLdPr var_8C
  loc_ABA927:  = Me.Fields
  loc_ABA92C: FLdPr var_B4
  loc_ABA92F: from_stack_2 = Me.Item(from_stack_1)
  loc_ABA934: FLdPr var_B8
  loc_ABA937:  = Me.Value
  loc_ABA93C: FLdRfVar var_C8
  loc_ABA93F: FnCLngVar
  loc_ABA941: LitI4 1
  loc_ABA946: AddI4
  loc_ABA947: FStR4 var_88
  loc_ABA94A: FFreeAd var_8C = "": var_B4 = ""
  loc_ABA953: FFree1Var var_C8 = ""
  loc_ABA956: Branch loc_ABA961
  loc_ABA959: LitI4 1
  loc_ABA95E: FStR4 var_88
  loc_ABA961: FLdRfVar var_8C
  loc_ABA964: FLdPr Me
  loc_ABA967: from_stack_1v = clsoficina.global_4356260Get()
  loc_ABA96C: FLdPr var_8C
  loc_ABA96F: Me.Close
  loc_ABA974: FFree1Ad var_8C
  loc_ABA977: LitNothing
  loc_ABA979: CastAd
  loc_ABA97C: FStAdFuncNoPop
  loc_ABA97F: FLdPr Me
  loc_ABA982: Call clsoficina.global_4356260Set(from_stack_1v)
  loc_ABA987: FFree1Ad var_8C
  loc_ABA98A: ExitProcCbHresult
End Function

Public Function CodiOficValidate(iCodiOfic) 'AB365C
  'Data Table: 42791C
  loc_AB357C: ZeroRetVal
  loc_AB357E: LitI2_Byte 0
  loc_AB3580: LitI2_Byte 0
  loc_AB3582: FLdUI1
  loc_AB3586: CStrI2
  loc_AB3588: FStStrNoPop var_8C
  loc_AB358B: LitStr "el Codigo del tipo de estado civil"
  loc_AB358E: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_AB3593: FStStr var_88
  loc_AB3596: FFree1Str var_8C
  loc_AB3599: ILdRf var_88
  loc_AB359C: LitStr vbNullString
  loc_AB359F: NeStr
  loc_AB35A1: BranchF loc_AB35AA
  loc_AB35A4: ExitProcCbHresult
  loc_AB35AA: New Recordset
  loc_AB35AE: FStAdFuncNoPop
  loc_AB35B1: FLdPr Me
  loc_AB35B4: Call clsoficina.global_4356260Set(from_stack_1v)
  loc_AB35B9: FFree1Ad var_90
  loc_AB35BC: LitI4 -1
  loc_AB35C1: LitI4 3
  loc_AB35C6: LitI4 3
  loc_AB35CB: ImpAdLdI4 MemVar_D9301C
  loc_AB35CE: CVarAd
  loc_AB35D2: PopAdLdVar
  loc_AB35D3: LitStr "SELECT * FROM oficina WHERE CodiOfic = "
  loc_AB35D6: FLdUI1
  loc_AB35DA: CStrI2
  loc_AB35DC: FStStrNoPop var_8C
  loc_AB35DF: ConcatStr
  loc_AB35E0: CVarStr var_A0
  loc_AB35E3: PopAdLdVar
  loc_AB35E4: FLdRfVar var_90
  loc_AB35E7: FLdPr Me
  loc_AB35EA: from_stack_1v = clsoficina.global_4356260Get()
  loc_AB35EF: FLdPr var_90
  loc_AB35F2: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_AB35F7: FFree1Str var_8C
  loc_AB35FA: FFree1Ad var_90
  loc_AB35FD: FFree1Var var_A0 = ""
  loc_AB3600: FLdRfVar var_B4
  loc_AB3603: FLdRfVar var_90
  loc_AB3606: FLdPr Me
  loc_AB3609: from_stack_1v = clsoficina.global_4356260Get()
  loc_AB360E: FLdPr var_90
  loc_AB3611:  = Me.RecordCount
  loc_AB3616: ILdRf var_B4
  loc_AB3619: LitI4 0
  loc_AB361E: EqI4
  loc_AB361F: FFree1Ad var_90
  loc_AB3622: BranchF loc_AB362B
  loc_AB3625: LitStr "El CODIGO de Oficina no existe. Reintente..."
  loc_AB3628: FStStrCopy var_88
  loc_AB362B: FLdRfVar var_90
  loc_AB362E: FLdPr Me
  loc_AB3631: from_stack_1v = clsoficina.global_4356260Get()
  loc_AB3636: FLdPr var_90
  loc_AB3639: Me.Close
  loc_AB363E: FFree1Ad var_90
  loc_AB3641: LitNothing
  loc_AB3643: CastAd
  loc_AB3646: FStAdFuncNoPop
  loc_AB3649: FLdPr Me
  loc_AB364C: Call clsoficina.global_4356260Set(from_stack_1v)
  loc_AB3651: FFree1Ad var_90
  loc_AB3654: ExitProcCbHresult
  loc_AB365A: LeR8
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E94E4
  'Data Table: 42791C
  loc_9E94C8: ILdRf pError
  loc_9E94CB: FStAd var_88 
  loc_9E94CF: ILdRf pRecordset
  loc_9E94D2: FStAd var_8C 
  loc_9E94D6: FLdPr Me
  loc_9E94D9: RaiseEvent
  loc_9E94E1: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'AA1404
  'Data Table: 42791C
  loc_AA1344: ILdRf pRecordset
  loc_AA1347: FStAd var_88 
  loc_AA134B: ILdRf adReason
  loc_AA134E: FStR4 var_90
  loc_AA1351: ILdRf var_90
  loc_AA1354: LitI4 1
  loc_AA1359: EqI4
  loc_AA135A: BranchF loc_AA1360
  loc_AA135D: Branch loc_AA13F3
  loc_AA1360: ILdRf var_90
  loc_AA1363: LitI4 9
  loc_AA1368: EqI4
  loc_AA1369: BranchF loc_AA136F
  loc_AA136C: Branch loc_AA13F3
  loc_AA136F: ILdRf var_90
  loc_AA1372: LitI4 2
  loc_AA1377: EqI4
  loc_AA1378: BranchF loc_AA137E
  loc_AA137B: Branch loc_AA13F3
  loc_AA137E: ILdRf var_90
  loc_AA1381: LitI4 &HB
  loc_AA1386: EqI4
  loc_AA1387: BranchF loc_AA138D
  loc_AA138A: Branch loc_AA13F3
  loc_AA138D: ILdRf var_90
  loc_AA1390: LitI4 &HA
  loc_AA1395: EqI4
  loc_AA1396: BranchF loc_AA139C
  loc_AA1399: Branch loc_AA13F3
  loc_AA139C: ILdRf var_90
  loc_AA139F: LitI4 7
  loc_AA13A4: EqI4
  loc_AA13A5: BranchF loc_AA13AB
  loc_AA13A8: Branch loc_AA13F3
  loc_AA13AB: ILdRf var_90
  loc_AA13AE: LitI4 8
  loc_AA13B3: EqI4
  loc_AA13B4: BranchF loc_AA13BA
  loc_AA13B7: Branch loc_AA13F3
  loc_AA13BA: ILdRf var_90
  loc_AA13BD: LitI4 5
  loc_AA13C2: EqI4
  loc_AA13C3: BranchF loc_AA13C9
  loc_AA13C6: Branch loc_AA13F3
  loc_AA13C9: ILdRf var_90
  loc_AA13CC: LitI4 6
  loc_AA13D1: EqI4
  loc_AA13D2: BranchF loc_AA13D8
  loc_AA13D5: Branch loc_AA13F3
  loc_AA13D8: ILdRf var_90
  loc_AA13DB: LitI4 4
  loc_AA13E0: EqI4
  loc_AA13E1: BranchF loc_AA13E7
  loc_AA13E4: Branch loc_AA13F3
  loc_AA13E7: ILdRf var_90
  loc_AA13EA: LitI4 3
  loc_AA13EF: EqI4
  loc_AA13F0: BranchF loc_AA13F3
  loc_AA13F3: FLdI2 var_8A
  loc_AA13F6: BranchF loc_AA1401
  loc_AA13F9: LitI4 4
  loc_AA13FE: IStI4 adStatus
  loc_AA1401: ExitProcHresult
End Sub

Private Function Proc_56_33_9F9394() '9F9394
  'Data Table: 42791C
  loc_9F9370: LitStr "Primary"
  loc_9F9373: FLdPr Me
  loc_9F9376: LateIdLdVar var_94 DispID_4 0
  loc_9F937D: CastAdVar Me
  loc_9F9381: FStAdFunc var_98
  loc_9F9384: FLdPr var_98
  loc_9F938C: FFree1Ad var_98
  loc_9F938F: FFree1Var var_94 = ""
  loc_9F9392: ExitProcHresult
End Function

Private Function Proc_56_34_9F9224(arg_C) '9F9224
  'Data Table: 42791C
  loc_9F9200: ILdI4 arg_C
  loc_9F9203: FStStrCopy var_88
  loc_9F9206: ILdRf var_88
  loc_9F9209: LitStr "Primary"
  loc_9F920C: EqStr
  loc_9F920E: BranchF loc_9F9223
  loc_9F9211: FLdRfVar var_8C
  loc_9F9214: FLdPr Me
  loc_9F9217: from_stack_1v = clsoficina.global_4356260Get()
  loc_9F921C: FLdZeroAd var_8C
  loc_9F921F: IStAdFunc
  loc_9F9223: ExitProcHresult
End Function

Public Function global_4356260Get() '427CAC
  global_4356260Get = global_4356260
End Function

Public Sub global_4356260Put(Value) '427CC6
  global_4356260 = Value
End Sub

Public Sub global_4356260Set(Value) '427CE0
  global_4356260 = Value
End Sub

Public Function global_4356260Get() '427CFA
  global_4356260Get = global_4356260
End Function

Public Sub global_4356260Put(Value) '427D14
  global_4356260 = Value
End Sub

Public Sub global_4356260Set(Value) '427D2E
  global_4356260 = Value
End Sub

Public Function global_4356260Get() '427D48
  global_4356260Get = global_4356260
End Function

Public Sub global_4356260Put(Value) '427D62
  global_4356260 = Value
End Sub

Public Sub global_4356260Set(Value) '427D7C
  global_4356260 = Value
End Sub
