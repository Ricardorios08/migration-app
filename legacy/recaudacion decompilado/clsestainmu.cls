VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsestainmu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0EAC4
  'Data Table: 427170
  loc_A0EA88: FLdRfVar var_8C
  loc_A0EA8B: FLdRfVar var_88
  loc_A0EA8E: FLdPr Me
  loc_A0EA91: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A0EA96: FLdPr var_88
  loc_A0EA99:  = Me.RecordCount
  loc_A0EA9E: ILdRf var_8C
  loc_A0EAA1: LitI4 0
  loc_A0EAA6: GtI4
  loc_A0EAA7: FFree1Ad var_88
  loc_A0EAAA: BranchF loc_A0EAC3
  loc_A0EAAD: FLdRfVar var_88
  loc_A0EAB0: FLdPr Me
  loc_A0EAB3: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A0EAB8: FLdPr var_88
  loc_A0EABB: Me.MoveFirst
  loc_A0EAC0: FFree1Ad var_88
  loc_A0EAC3: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0BC64
  'Data Table: 427170
  loc_A0BC28: FLdRfVar var_8C
  loc_A0BC2B: FLdRfVar var_88
  loc_A0BC2E: FLdPr Me
  loc_A0BC31: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A0BC36: FLdPr var_88
  loc_A0BC39:  = Me.RecordCount
  loc_A0BC3E: ILdRf var_8C
  loc_A0BC41: LitI4 0
  loc_A0BC46: GtI4
  loc_A0BC47: FFree1Ad var_88
  loc_A0BC4A: BranchF loc_A0BC63
  loc_A0BC4D: FLdRfVar var_88
  loc_A0BC50: FLdPr Me
  loc_A0BC53: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A0BC58: FLdPr var_88
  loc_A0BC5B: Me.MoveLast
  loc_A0BC60: FFree1Ad var_88
  loc_A0BC63: ExitProcHresult
End Sub

Public Sub MoveNext() 'AA130C
  'Data Table: 427170
  loc_AA1250: FLdRfVar var_8A
  loc_AA1253: FLdRfVar var_88
  loc_AA1256: FLdPr Me
  loc_AA1259: from_stack_1v = clsestainmu.global_4354296Get()
  loc_AA125E: FLdPr var_88
  loc_AA1261:  = Me.EOF
  loc_AA1266: FLdI2 var_8A
  loc_AA1269: NotI4
  loc_AA126A: FLdRfVar var_94
  loc_AA126D: FLdRfVar var_90
  loc_AA1270: FLdPr Me
  loc_AA1273: from_stack_1v = clsestainmu.global_4354296Get()
  loc_AA1278: FLdPr var_90
  loc_AA127B:  = Me.RecordCount
  loc_AA1280: ILdRf var_94
  loc_AA1283: LitI4 0
  loc_AA1288: GtI4
  loc_AA1289: AndI4
  loc_AA128A: FFreeAd var_88 = ""
  loc_AA1291: BranchF loc_AA12AA
  loc_AA1294: FLdRfVar var_88
  loc_AA1297: FLdPr Me
  loc_AA129A: from_stack_1v = clsestainmu.global_4354296Get()
  loc_AA129F: FLdPr var_88
  loc_AA12A2: Me.MoveNext
  loc_AA12A7: FFree1Ad var_88
  loc_AA12AA: FLdRfVar var_8A
  loc_AA12AD: FLdRfVar var_88
  loc_AA12B0: FLdPr Me
  loc_AA12B3: from_stack_1v = clsestainmu.global_4354296Get()
  loc_AA12B8: FLdPr var_88
  loc_AA12BB:  = Me.EOF
  loc_AA12C0: FLdI2 var_8A
  loc_AA12C3: FLdRfVar var_94
  loc_AA12C6: FLdRfVar var_90
  loc_AA12C9: FLdPr Me
  loc_AA12CC: from_stack_1v = clsestainmu.global_4354296Get()
  loc_AA12D1: FLdPr var_90
  loc_AA12D4:  = Me.RecordCount
  loc_AA12D9: ILdRf var_94
  loc_AA12DC: LitI4 0
  loc_AA12E1: GtI4
  loc_AA12E2: AndI4
  loc_AA12E3: FFreeAd var_88 = ""
  loc_AA12EA: BranchF loc_AA1308
  loc_AA12ED: ImpAdCallFPR4 Beep()
  loc_AA12F2: FLdRfVar var_88
  loc_AA12F5: FLdPr Me
  loc_AA12F8: from_stack_1v = clsestainmu.global_4354296Get()
  loc_AA12FD: FLdPr var_88
  loc_AA1300: Me.MoveLast
  loc_AA1305: FFree1Ad var_88
  loc_AA1308: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9DC2A8
  'Data Table: 427170
  loc_9DC290: FLdRfVar var_88
  loc_9DC293: FLdPr Me
  loc_9DC296: from_stack_1v = clsestainmu.global_4354296Get()
  loc_9DC29B: FLdPr var_88
  loc_9DC29E: Me.MoveNext
  loc_9DC2A3: FFree1Ad var_88
  loc_9DC2A6: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E5888
  'Data Table: 427170
  loc_9E5868: LitVar_Missing var_98
  loc_9E586B: PopAdLdVar
  loc_9E586C: ILdI2 iValor
  loc_9E586F: CI4UI1
  loc_9E5870: FLdRfVar var_88
  loc_9E5873: FLdPr Me
  loc_9E5876: from_stack_1v = clsestainmu.global_4354296Get()
  loc_9E587B: FLdPr var_88
  loc_9E587E: Me.Move from_stack_1, from_stack_2
  loc_9E5883: FFree1Ad var_88
  loc_9E5886: ExitProcHresult
  loc_9E5887: ExitProc
End Sub

Public Sub MovePrevious() 'A9DCB8
  'Data Table: 427170
  loc_A9DBFC: FLdRfVar var_8A
  loc_A9DBFF: FLdRfVar var_88
  loc_A9DC02: FLdPr Me
  loc_A9DC05: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A9DC0A: FLdPr var_88
  loc_A9DC0D:  = Me.BOF
  loc_A9DC12: FLdI2 var_8A
  loc_A9DC15: NotI4
  loc_A9DC16: FLdRfVar var_94
  loc_A9DC19: FLdRfVar var_90
  loc_A9DC1C: FLdPr Me
  loc_A9DC1F: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A9DC24: FLdPr var_90
  loc_A9DC27:  = Me.RecordCount
  loc_A9DC2C: ILdRf var_94
  loc_A9DC2F: LitI4 0
  loc_A9DC34: GtI4
  loc_A9DC35: AndI4
  loc_A9DC36: FFreeAd var_88 = ""
  loc_A9DC3D: BranchF loc_A9DC56
  loc_A9DC40: FLdRfVar var_88
  loc_A9DC43: FLdPr Me
  loc_A9DC46: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A9DC4B: FLdPr var_88
  loc_A9DC4E: Me.MovePrevious
  loc_A9DC53: FFree1Ad var_88
  loc_A9DC56: FLdRfVar var_8A
  loc_A9DC59: FLdRfVar var_88
  loc_A9DC5C: FLdPr Me
  loc_A9DC5F: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A9DC64: FLdPr var_88
  loc_A9DC67:  = Me.BOF
  loc_A9DC6C: FLdI2 var_8A
  loc_A9DC6F: FLdRfVar var_94
  loc_A9DC72: FLdRfVar var_90
  loc_A9DC75: FLdPr Me
  loc_A9DC78: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A9DC7D: FLdPr var_90
  loc_A9DC80:  = Me.RecordCount
  loc_A9DC85: ILdRf var_94
  loc_A9DC88: LitI4 0
  loc_A9DC8D: GtI4
  loc_A9DC8E: AndI4
  loc_A9DC8F: FFreeAd var_88 = ""
  loc_A9DC96: BranchF loc_A9DCB4
  loc_A9DC99: ImpAdCallFPR4 Beep()
  loc_A9DC9E: FLdRfVar var_88
  loc_A9DCA1: FLdPr Me
  loc_A9DCA4: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A9DCA9: FLdPr var_88
  loc_A9DCAC: Me.MoveFirst
  loc_A9DCB1: FFree1Ad var_88
  loc_A9DCB4: ExitProcHresult
  loc_A9DCB5: BranchFVar
End Sub

Public Property Get EOF() '9F17F8
  'Data Table: 427170
  loc_9F17D0: FLdRfVar var_8E
  loc_9F17D3: FLdRfVar var_8C
  loc_9F17D6: FLdPr Me
  loc_9F17D9: from_stack_1v = clsestainmu.global_4354296Get()
  loc_9F17DE: FLdPr var_8C
  loc_9F17E1:  = Me.EOF
  loc_9F17E6: FLdI2 var_8E
  loc_9F17E9: FStI2 var_86
  loc_9F17EC: FFree1Ad var_8C
  loc_9F17EF: ExitProcCbHresult
  loc_9F17F7: ExitProcR4
End Sub

Public Property Get BOF() '9F0154
  'Data Table: 427170
  loc_9F012C: FLdRfVar var_8E
  loc_9F012F: FLdRfVar var_8C
  loc_9F0132: FLdPr Me
  loc_9F0135: from_stack_1v = clsestainmu.global_4354296Get()
  loc_9F013A: FLdPr var_8C
  loc_9F013D:  = Me.BOF
  loc_9F0142: FLdI2 var_8E
  loc_9F0145: FStI2 var_86
  loc_9F0148: FFree1Ad var_8C
  loc_9F014B: ExitProcCbHresult
  loc_9F0151: ExitProcR4
End Sub

Public Sub Sort(sOrden) '9E195C
  'Data Table: 427170
  loc_9E1940: ILdI4 sOrden
  loc_9E1943: FLdRfVar var_88
  loc_9E1946: FLdPr Me
  loc_9E1949: from_stack_1v = clsestainmu.global_4354296Get()
  loc_9E194E: FLdPr var_88
  loc_9E1951: Me.Sort = from_stack_1
  loc_9E1956: FFree1Ad var_88
  loc_9E1959: ExitProcHresult
  loc_9E195A: NewIfNullPr Me
End Sub

Public Sub Find(sFind) '9F106C
  'Data Table: 427170
  loc_9F1044: LitVar_Missing var_98
  loc_9F1047: PopAdLdVar
  loc_9F1048: LitI4 1
  loc_9F104D: LitI4 0
  loc_9F1052: ILdI4 sFind
  loc_9F1055: FLdRfVar var_88
  loc_9F1058: FLdPr Me
  loc_9F105B: from_stack_1v = clsestainmu.global_4354296Get()
  loc_9F1060: FLdPr var_88
  loc_9F1063: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F1068: FFree1Ad var_88
  loc_9F106B: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F12F0
  'Data Table: 427170
  loc_9F12C8: FLdRfVar var_90
  loc_9F12CB: FLdRfVar var_8C
  loc_9F12CE: FLdPr Me
  loc_9F12D1: from_stack_1v = clsestainmu.global_4354296Get()
  loc_9F12D6: FLdPr var_8C
  loc_9F12D9:  = Me.AbsolutePosition
  loc_9F12DE: ILdRf var_90
  loc_9F12E1: FStR4 var_88
  loc_9F12E4: FFree1Ad var_8C
  loc_9F12E7: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F0040
  'Data Table: 427170
  loc_9F0018: FLdRfVar var_90
  loc_9F001B: FLdRfVar var_8C
  loc_9F001E: FLdPr Me
  loc_9F0021: from_stack_1v = clsestainmu.global_4354296Get()
  loc_9F0026: FLdPr var_8C
  loc_9F0029:  = Me.RecordCount
  loc_9F002E: ILdRf var_90
  loc_9F0031: FStR4 var_88
  loc_9F0034: FFree1Ad var_8C
  loc_9F0037: ExitProcCbHresult
  loc_9F003D: MemLdRfVar from_stack_1.global_3580
End Sub

Public Sub AddNew(CodiEsin, DetaEsin) 'A7A550
  'Data Table: 427170
  loc_A7A4E0: ILdRf DetaEsin
  loc_A7A4E3: FStStrCopy var_88
  loc_A7A4E6: FLdRfVar var_8C
  loc_A7A4E9: FLdI2 CodiEsin
  loc_A7A4EC: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A7A4F1: ILdRf var_8C
  loc_A7A4F4: LitStr vbNullString
  loc_A7A4F7: NeStr
  loc_A7A4F9: FFree1Str var_8C
  loc_A7A4FC: BranchF loc_A7A50A
  loc_A7A4FF: LitStr "LA ZONA YA EXISTE. Reintente..."
  loc_A7A502: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7A507: Branch loc_A7A54E
  loc_A7A50A: LitStr "INSERT INTO estainmu (CodiEsin, DetaEsin) VALUES ("
  loc_A7A50D: FLdI2 CodiEsin
  loc_A7A510: CStrUI1
  loc_A7A512: FStStrNoPop var_8C
  loc_A7A515: ConcatStr
  loc_A7A516: FStStrNoPop var_90
  loc_A7A519: LitStr ",'"
  loc_A7A51C: ConcatStr
  loc_A7A51D: FStStrNoPop var_94
  loc_A7A520: ILdRf var_88
  loc_A7A523: ConcatStr
  loc_A7A524: FStStrNoPop var_98
  loc_A7A527: LitStr "');"
  loc_A7A52A: ConcatStr
  loc_A7A52B: FStStrNoPop var_9C
  loc_A7A52E: Call EjecutarRs2(from_stack_1v)
  loc_A7A533: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A7A540: Call Requery()
  loc_A7A545: FLdI2 CodiEsin
  loc_A7A548: CI4UI1
  loc_A7A549: Call Encontrar(from_stack_1v)
  loc_A7A54E: ExitProcHresult
End Sub

Public Sub Modificar(CodiEsin, DetaEsin) 'A70EB8
  'Data Table: 427170
  loc_A70E50: ILdRf DetaEsin
  loc_A70E53: FStStrCopy var_88
  loc_A70E56: FLdRfVar var_8C
  loc_A70E59: FLdI2 CodiEsin
  loc_A70E5C: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A70E61: ILdRf var_8C
  loc_A70E64: LitStr vbNullString
  loc_A70E67: EqStr
  loc_A70E69: FFree1Str var_8C
  loc_A70E6C: BranchF loc_A70E7A
  loc_A70E6F: LitStr "EL ESTADO NO EXISTE. Reintente..."
  loc_A70E72: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A70E77: Branch loc_A70EA7
  loc_A70E7A: LitStr "UPDATE estainmu SET DetaEsin = '"
  loc_A70E7D: ILdRf var_88
  loc_A70E80: ConcatStr
  loc_A70E81: FStStrNoPop var_8C
  loc_A70E84: LitStr "' WHERE CodiEsin = "
  loc_A70E87: ConcatStr
  loc_A70E88: FStStrNoPop var_90
  loc_A70E8B: FLdI2 CodiEsin
  loc_A70E8E: CStrUI1
  loc_A70E90: FStStrNoPop var_94
  loc_A70E93: ConcatStr
  loc_A70E94: FStStrNoPop var_98
  loc_A70E97: Call EjecutarRs2(from_stack_1v)
  loc_A70E9C: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_A70EA7: Call Requery()
  loc_A70EAC: FLdI2 CodiEsin
  loc_A70EAF: CI4UI1
  loc_A70EB0: Call Encontrar(from_stack_1v)
  loc_A70EB5: ExitProcHresult
  loc_A70EB6: NewIfNullPr Me
End Sub

Public Sub Delete() 'A24310
  'Data Table: 427170
  loc_A242C8: FLdRfVar var_8C
  loc_A242CB: FLdRfVar var_88
  loc_A242CE: FLdPr Me
  loc_A242D1: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A242D6: FLdPr var_88
  loc_A242D9:  = Me.RecordCount
  loc_A242DE: ILdRf var_8C
  loc_A242E1: LitI4 0
  loc_A242E6: GtI4
  loc_A242E7: FFree1Ad var_88
  loc_A242EA: BranchF loc_A2430D
  loc_A242ED: LitI4 1
  loc_A242F2: FLdRfVar var_88
  loc_A242F5: FLdPr Me
  loc_A242F8: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A242FD: FLdPr var_88
  loc_A24300: Me.Delete
  loc_A24305: FFree1Ad var_88
  loc_A24308: Call MoveNext()
  loc_A2430D: ExitProcHresult
End Sub

Public Sub Requery() '9FFEBC
  'Data Table: 427170
  loc_9FFE8C: LitI4 -1
  loc_9FFE91: FLdRfVar var_88
  loc_9FFE94: FLdPr Me
  loc_9FFE97: from_stack_1v = clsestainmu.global_4354296Get()
  loc_9FFE9C: FLdPr var_88
  loc_9FFE9F: Me.Requery from_stack_1
  loc_9FFEA4: FFree1Ad var_88
  loc_9FFEA7: LitVarStr var_98, "Primary"
  loc_9FFEAC: PopAdLdVar
  loc_9FFEAD: FLdPr Me
  loc_9FFEB0: LateIdCall
  loc_9FFEB8: ExitProcHresult
End Sub

Public Sub Update() 'A24198
  'Data Table: 427170
  loc_A24154: FLdRfVar var_88
  loc_A24157: FLdPr Me
  loc_A2415A: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A2415F: FLdZeroAd var_88
  loc_A24162: FStAdFunc var_8C
  loc_A24165: LitI4 3
  loc_A2416A: FLdPr var_8C
  loc_A2416D: Me.UpdateBatch
  loc_A24172: FLdRfVar var_90
  loc_A24175: FLdPr var_8C
  loc_A24178:  = Me.EditMode
  loc_A2417D: ILdRf var_90
  loc_A24180: LitI4 2
  loc_A24185: EqI4
  loc_A24186: BranchF loc_A2418E
  loc_A24189: Call MoveLast()
  loc_A2418E: LitNothing
  loc_A24190: FStAd var_8C 
  loc_A24194: ExitProcHresult
  loc_A24195: StAryMove
End Sub

Public Sub Cancel() 'A4CFD8
  'Data Table: 427170
  loc_A4CF84: FLdRfVar var_88
  loc_A4CF87: FLdPr Me
  loc_A4CF8A: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A4CF8F: FLdZeroAd var_88
  loc_A4CF92: FStAdFunc var_8C
  loc_A4CF95: FLdRfVar var_90
  loc_A4CF98: FLdPr var_8C
  loc_A4CF9B:  = Me.RecordCount
  loc_A4CFA0: ILdRf var_90
  loc_A4CFA3: LitI4 0
  loc_A4CFA8: GtI4
  loc_A4CFA9: BranchF loc_A4CFD0
  loc_A4CFAC: FLdPr var_8C
  loc_A4CFAF: Me.CancelUpdate
  loc_A4CFB4: FLdRfVar var_90
  loc_A4CFB7: FLdPr var_8C
  loc_A4CFBA:  = Me.EditMode
  loc_A4CFBF: ILdRf var_90
  loc_A4CFC2: LitI4 2
  loc_A4CFC7: EqI4
  loc_A4CFC8: BranchF loc_A4CFD0
  loc_A4CFCB: Call MoveFirst()
  loc_A4CFD0: LitNothing
  loc_A4CFD2: FStAd var_8C 
  loc_A4CFD6: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FC754
  'Data Table: 427170
  loc_9FC728: FLdRfVar var_90
  loc_9FC72B: FLdRfVar var_8C
  loc_9FC72E: FLdPr Me
  loc_9FC731: from_stack_1v = clsestainmu.global_4354296Get()
  loc_9FC736: FLdPr var_8C
  loc_9FC739:  = Me.EditMode
  loc_9FC73E: ILdRf var_90
  loc_9FC741: LitI4 0
  loc_9FC746: NeI4
  loc_9FC747: FStI2 var_86
  loc_9FC74A: FFree1Ad var_8C
  loc_9FC74D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A6FD4C
  'Data Table: 427170
  loc_A6FCD8: ILdRf sSelect
  loc_A6FCDB: FStStrCopy var_88
  loc_A6FCDE: LitNothing
  loc_A6FCE0: CastAd
  loc_A6FCE3: FStAdFuncNoPop
  loc_A6FCE6: FLdPr Me
  loc_A6FCE9: Call clsestainmu.global_4354296Set(from_stack_1v)
  loc_A6FCEE: FFree1Ad var_8C
  loc_A6FCF1: New Recordset
  loc_A6FCF5: FStAdFuncNoPop
  loc_A6FCF8: FLdPr Me
  loc_A6FCFB: Call clsestainmu.global_4354296Set(from_stack_1v)
  loc_A6FD00: FFree1Ad var_8C
  loc_A6FD03: LitI4 -1
  loc_A6FD08: LitI4 3
  loc_A6FD0D: LitI4 3
  loc_A6FD12: ImpAdLdI4 MemVar_D9301C
  loc_A6FD15: CVarAd
  loc_A6FD19: PopAdLdVar
  loc_A6FD1A: ILdRf var_88
  loc_A6FD1D: CVarStr var_9C
  loc_A6FD20: PopAdLdVar
  loc_A6FD21: FLdRfVar var_8C
  loc_A6FD24: FLdPr Me
  loc_A6FD27: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A6FD2C: FLdPr var_8C
  loc_A6FD2F: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6FD34: FFree1Ad var_8C
  loc_A6FD37: LitVarStr var_9C, "Primary"
  loc_A6FD3C: PopAdLdVar
  loc_A6FD3D: FLdPr Me
  loc_A6FD40: LateIdCall
  loc_A6FD48: ExitProcHresult
  loc_A6FD49: ImpAdLdFPR4 MemVar_0
End Sub

Public Sub EjecutarRs2(sSelect) 'A5A6B8
  'Data Table: 427170
  loc_A5A658: ILdRf sSelect
  loc_A5A65B: FStStrCopy var_88
  loc_A5A65E: LitNothing
  loc_A5A660: CastAd
  loc_A5A663: FStAdFuncNoPop
  loc_A5A666: FLdPr Me
  loc_A5A669: Call clsestainmu.global_4354296Set(from_stack_1v)
  loc_A5A66E: FFree1Ad var_8C
  loc_A5A671: New Recordset
  loc_A5A675: FStAdFuncNoPop
  loc_A5A678: FLdPr Me
  loc_A5A67B: Call clsestainmu.global_4354296Set(from_stack_1v)
  loc_A5A680: FFree1Ad var_8C
  loc_A5A683: LitI4 -1
  loc_A5A688: LitI4 3
  loc_A5A68D: LitI4 3
  loc_A5A692: ImpAdLdI4 MemVar_D9301C
  loc_A5A695: CVarAd
  loc_A5A699: PopAdLdVar
  loc_A5A69A: ILdRf var_88
  loc_A5A69D: CVarStr var_9C
  loc_A5A6A0: PopAdLdVar
  loc_A5A6A1: FLdRfVar var_8C
  loc_A5A6A4: FLdPr Me
  loc_A5A6A7: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A5A6AC: FLdPr var_8C
  loc_A5A6AF: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5A6B4: FFree1Ad var_8C
  loc_A5A6B7: ExitProcHresult
End Sub

Public Sub Encontrar(CodiEsin) '9EECC4
  'Data Table: 427170
  loc_9EECA4: LitStr "CodiEsin = "
  loc_9EECA7: ILdRf CodiEsin
  loc_9EECAA: CStrI4
  loc_9EECAC: FStStrNoPop var_88
  loc_9EECAF: ConcatStr
  loc_9EECB0: PopTmpLdAdStr
  loc_9EECB4: Call Find(from_stack_1v)
  loc_9EECB9: FFreeStr var_88 = ""
  loc_9EECC0: ExitProcHresult
  loc_9EECC1: FLdPr var_88
End Sub

Public Property Get DataSource() 'A0938C
  'Data Table: 427170
  loc_A0935C: ZeroRetVal
  loc_A0935E: FLdRfVar var_90
  loc_A09361: FLdRfVar var_8C
  loc_A09364: FLdPr Me
  loc_A09367: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A0936C: FLdPr var_8C
  loc_A0936F:  = Me.DataSource
  loc_A09374: ILdRf var_90
  loc_A09377: CastAd
  loc_A0937A: FStAdFunc var_88
  loc_A0937D: FFreeAd var_8C = ""
  loc_A09384: ExitProcCbHresult
  loc_A0938A: FStAdFunc var_7A4
End Sub

Public Property Get EditMode() '9EFFE4
  'Data Table: 427170
  loc_9EFFBC: FLdRfVar var_90
  loc_9EFFBF: FLdRfVar var_8C
  loc_9EFFC2: FLdPr Me
  loc_9EFFC5: from_stack_1v = clsestainmu.global_4354296Get()
  loc_9EFFCA: FLdPr var_8C
  loc_9EFFCD:  = Me.EditMode
  loc_9EFFD2: ILdRf var_90
  loc_9EFFD5: FStR4 var_88
  loc_9EFFD8: FFree1Ad var_8C
  loc_9EFFDB: ExitProcCbHresult
  loc_9EFFE1: ExitProcCy
End Sub

Public Property Get CodiEsin() 'A4E754
  'Data Table: 427170
  loc_A4E708: FLdRfVar var_B4
  loc_A4E70B: FLdRfVar var_A4
  loc_A4E70E: LitVarStr var_A0, "CodiEsin"
  loc_A4E713: PopAdLdVar
  loc_A4E714: FLdRfVar var_90
  loc_A4E717: FLdRfVar var_8C
  loc_A4E71A: FLdPr Me
  loc_A4E71D: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A4E722: FLdPr var_8C
  loc_A4E725:  = Me.Fields
  loc_A4E72A: FLdPr var_90
  loc_A4E72D: from_stack_2 = Me.Item(from_stack_1)
  loc_A4E732: FLdPr var_A4
  loc_A4E735:  = Me.Value
  loc_A4E73A: FLdRfVar var_B4
  loc_A4E73D: CI2Var
  loc_A4E73E: FStI2 var_86
  loc_A4E741: FFreeAd var_8C = "": var_90 = ""
  loc_A4E74A: FFree1Var var_B4 = ""
  loc_A4E74D: ExitProcCbHresult
End Sub

Public Property Let CodiEsin(vDato) '9EEE28
  'Data Table: 427170
  loc_9EEE04: FLdI2 vDato
  loc_9EEE07: CVarI2 var_A8
  loc_9EEE0A: PopAdLdVar
  loc_9EEE0B: LitVarStr var_98, "CodiEsin"
  loc_9EEE10: PopAdLdVar
  loc_9EEE11: FLdRfVar var_88
  loc_9EEE14: FLdPr Me
  loc_9EEE17: from_stack_1v = clsestainmu.global_4354296Get()
  loc_9EEE1C: FLdPr var_88
  loc_9EEE1F: Me.Collect = from_stack_1
  loc_9EEE24: FFree1Ad var_88
  loc_9EEE27: ExitProcHresult
End Sub

Public Property Get DetaEsin() 'A53F58
  'Data Table: 427170
  loc_A53F08: ZeroRetVal
  loc_A53F0A: FLdRfVar var_B4
  loc_A53F0D: FLdRfVar var_A4
  loc_A53F10: LitVarStr var_A0, "DetaEsin"
  loc_A53F15: PopAdLdVar
  loc_A53F16: FLdRfVar var_90
  loc_A53F19: FLdRfVar var_8C
  loc_A53F1C: FLdPr Me
  loc_A53F1F: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A53F24: FLdPr var_8C
  loc_A53F27:  = Me.Fields
  loc_A53F2C: FLdPr var_90
  loc_A53F2F: from_stack_2 = Me.Item(from_stack_1)
  loc_A53F34: FLdPr var_A4
  loc_A53F37:  = Me.Value
  loc_A53F3C: FLdRfVar var_B4
  loc_A53F3F: CStrVarTmp
  loc_A53F40: FStStr var_88
  loc_A53F43: FFreeAd var_8C = "": var_90 = ""
  loc_A53F4C: FFree1Var var_B4 = ""
  loc_A53F4F: ExitProcCbHresult
  loc_A53F55: FStI2 arg_5CFF
End Sub

Public Property Let DetaEsin(vDato) 'A00110
  'Data Table: 427170
  loc_A000E4: ILdRf vDato
  loc_A000E7: FStStrCopy var_88
  loc_A000EA: ILdRf var_88
  loc_A000ED: CVarStr var_AC
  loc_A000F0: PopAdLdVar
  loc_A000F1: LitVarStr var_9C, "DetaEsin"
  loc_A000F6: PopAdLdVar
  loc_A000F7: FLdRfVar var_8C
  loc_A000FA: FLdPr Me
  loc_A000FD: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A00102: FLdPr var_8C
  loc_A00105: Me.Collect = from_stack_1
  loc_A0010A: FFree1Ad var_8C
  loc_A0010D: ExitProcHresult
  loc_A0010E: CBoolVarNull
End Sub

Public Function ValidaClave(CodiEsin) 'A53A40
  'Data Table: 427170
  loc_A539F0: ZeroRetVal
  loc_A539F2: LitStr "SELECT CodiEsin FROM estainmu WHERE CodiEsin = "
  loc_A539F5: FLdI2 CodiEsin
  loc_A539F8: CStrUI1
  loc_A539FA: FStStrNoPop var_8C
  loc_A539FD: ConcatStr
  loc_A539FE: FStStrNoPop var_90
  loc_A53A01: Call EjecutarRs2(from_stack_1v)
  loc_A53A06: FFreeStr var_8C = ""
  loc_A53A0D: FLdRfVar var_98
  loc_A53A10: FLdRfVar ValidaClave
  loc_A53A13: FLdPr Me
  loc_A53A16: from_stack_1v = clsestainmu.global_4354296Get()
  loc_A53A1B: FLdPr ValidaClave
  loc_A53A1E:  = Me.RecordCount
  loc_A53A23: ILdRf var_98
  loc_A53A26: LitI4 0
  loc_A53A2B: GtI4
  loc_A53A2C: FFree1Ad ValidaClave
  loc_A53A2F: BranchF loc_A53A38
  loc_A53A32: LitStr "EL ESTADO YA EXISTE. Reintente..."
  loc_A53A35: FStStrCopy var_88
  loc_A53A38: ExitProcCbHresult
  loc_A53A3E: FStStrNoPop var_798
End Function

Public Function NuevoRegistro() 'AB8E40
  'Data Table: 427170
  loc_AB8D50: New Recordset
  loc_AB8D54: FStAdFuncNoPop
  loc_AB8D57: FLdPr Me
  loc_AB8D5A: Call clsestainmu.global_4354296Set(from_stack_1v)
  loc_AB8D5F: FFree1Ad var_8C
  loc_AB8D62: LitI4 -1
  loc_AB8D67: LitI4 3
  loc_AB8D6C: LitI4 3
  loc_AB8D71: ImpAdLdI4 MemVar_D9301C
  loc_AB8D74: CVarAd
  loc_AB8D78: PopAdLdVar
  loc_AB8D79: LitVarStr var_9C, "SELECT CodiEsin FROM estainmu ORDER BY CodiEsin DESC "
  loc_AB8D7E: PopAdLdVar
  loc_AB8D7F: FLdRfVar var_8C
  loc_AB8D82: FLdPr Me
  loc_AB8D85: from_stack_1v = clsestainmu.global_4354296Get()
  loc_AB8D8A: FLdPr var_8C
  loc_AB8D8D: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_AB8D92: FFree1Ad var_8C
  loc_AB8D95: FLdRfVar var_B0
  loc_AB8D98: FLdRfVar var_8C
  loc_AB8D9B: FLdPr Me
  loc_AB8D9E: from_stack_1v = clsestainmu.global_4354296Get()
  loc_AB8DA3: FLdPr var_8C
  loc_AB8DA6:  = Me.RecordCount
  loc_AB8DAB: ILdRf var_B0
  loc_AB8DAE: LitI4 0
  loc_AB8DB3: GtI4
  loc_AB8DB4: FFree1Ad var_8C
  loc_AB8DB7: BranchF loc_AB8E09
  loc_AB8DBA: FLdRfVar var_C8
  loc_AB8DBD: FLdRfVar var_B8
  loc_AB8DC0: LitVarStr var_9C, "CodiEsin"
  loc_AB8DC5: PopAdLdVar
  loc_AB8DC6: FLdRfVar var_B4
  loc_AB8DC9: FLdRfVar var_8C
  loc_AB8DCC: FLdPr Me
  loc_AB8DCF: from_stack_1v = clsestainmu.global_4354296Get()
  loc_AB8DD4: FLdPr var_8C
  loc_AB8DD7:  = Me.Fields
  loc_AB8DDC: FLdPr var_B4
  loc_AB8DDF: from_stack_2 = Me.Item(from_stack_1)
  loc_AB8DE4: FLdPr var_B8
  loc_AB8DE7:  = Me.Value
  loc_AB8DEC: FLdRfVar var_C8
  loc_AB8DEF: FnCLngVar
  loc_AB8DF1: LitI4 1
  loc_AB8DF6: AddI4
  loc_AB8DF7: FStR4 var_88
  loc_AB8DFA: FFreeAd var_8C = "": var_B4 = ""
  loc_AB8E03: FFree1Var var_C8 = ""
  loc_AB8E06: Branch loc_AB8E11
  loc_AB8E09: LitI4 1
  loc_AB8E0E: FStR4 var_88
  loc_AB8E11: FLdRfVar var_8C
  loc_AB8E14: FLdPr Me
  loc_AB8E17: from_stack_1v = clsestainmu.global_4354296Get()
  loc_AB8E1C: FLdPr var_8C
  loc_AB8E1F: Me.Close
  loc_AB8E24: FFree1Ad var_8C
  loc_AB8E27: LitNothing
  loc_AB8E29: CastAd
  loc_AB8E2C: FStAdFuncNoPop
  loc_AB8E2F: FLdPr Me
  loc_AB8E32: Call clsestainmu.global_4354296Set(from_stack_1v)
  loc_AB8E37: FFree1Ad var_8C
  loc_AB8E3A: ExitProcCbHresult
End Function

Public Function ValidaEliminarInmueble(CodiEsin) 'A00044
  'Data Table: 427170
  loc_A0001C: ZeroRetVal
  loc_A0001E: FLdRfVar var_90
  loc_A00021: FLdI2 CodiEsin
  loc_A00024: FLdRfVar var_8C
  loc_A00027: NewIfNullPr clsInmueble
  loc_A0002A: from_stack_2v = clsInmueble.ValidaEliminarEstaInmu(from_stack_1v)
  loc_A0002F: FLdZeroAd var_90
  loc_A00032: FStStr var_88
  loc_A00035: LitNothing
  loc_A00037: CastAd
  loc_A0003A: FStAdFunc var_8C
  loc_A0003D: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E4F54
  'Data Table: 427170
  loc_9E4F38: ILdRf pError
  loc_9E4F3B: FStAd var_88 
  loc_9E4F3F: ILdRf pRecordset
  loc_9E4F42: FStAd var_8C 
  loc_9E4F46: FLdPr Me
  loc_9E4F49: RaiseEvent
  loc_9E4F51: ExitProcHresult
  loc_9E4F52: PopAdLdVar
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9D058
  'Data Table: 427170
  loc_A9CF98: ILdRf pRecordset
  loc_A9CF9B: FStAd var_88 
  loc_A9CF9F: ILdRf adReason
  loc_A9CFA2: FStR4 var_90
  loc_A9CFA5: ILdRf var_90
  loc_A9CFA8: LitI4 1
  loc_A9CFAD: EqI4
  loc_A9CFAE: BranchF loc_A9CFB4
  loc_A9CFB1: Branch loc_A9D047
  loc_A9CFB4: ILdRf var_90
  loc_A9CFB7: LitI4 9
  loc_A9CFBC: EqI4
  loc_A9CFBD: BranchF loc_A9CFC3
  loc_A9CFC0: Branch loc_A9D047
  loc_A9CFC3: ILdRf var_90
  loc_A9CFC6: LitI4 2
  loc_A9CFCB: EqI4
  loc_A9CFCC: BranchF loc_A9CFD2
  loc_A9CFCF: Branch loc_A9D047
  loc_A9CFD2: ILdRf var_90
  loc_A9CFD5: LitI4 &HB
  loc_A9CFDA: EqI4
  loc_A9CFDB: BranchF loc_A9CFE1
  loc_A9CFDE: Branch loc_A9D047
  loc_A9CFE1: ILdRf var_90
  loc_A9CFE4: LitI4 &HA
  loc_A9CFE9: EqI4
  loc_A9CFEA: BranchF loc_A9CFF0
  loc_A9CFED: Branch loc_A9D047
  loc_A9CFF0: ILdRf var_90
  loc_A9CFF3: LitI4 7
  loc_A9CFF8: EqI4
  loc_A9CFF9: BranchF loc_A9CFFF
  loc_A9CFFC: Branch loc_A9D047
  loc_A9CFFF: ILdRf var_90
  loc_A9D002: LitI4 8
  loc_A9D007: EqI4
  loc_A9D008: BranchF loc_A9D00E
  loc_A9D00B: Branch loc_A9D047
  loc_A9D00E: ILdRf var_90
  loc_A9D011: LitI4 5
  loc_A9D016: EqI4
  loc_A9D017: BranchF loc_A9D01D
  loc_A9D01A: Branch loc_A9D047
  loc_A9D01D: ILdRf var_90
  loc_A9D020: LitI4 6
  loc_A9D025: EqI4
  loc_A9D026: BranchF loc_A9D02C
  loc_A9D029: Branch loc_A9D047
  loc_A9D02C: ILdRf var_90
  loc_A9D02F: LitI4 4
  loc_A9D034: EqI4
  loc_A9D035: BranchF loc_A9D03B
  loc_A9D038: Branch loc_A9D047
  loc_A9D03B: ILdRf var_90
  loc_A9D03E: LitI4 3
  loc_A9D043: EqI4
  loc_A9D044: BranchF loc_A9D047
  loc_A9D047: FLdI2 var_8A
  loc_A9D04A: BranchF loc_A9D055
  loc_A9D04D: LitI4 4
  loc_A9D052: IStI4 adStatus
  loc_A9D055: ExitProcHresult
  loc_A9D056: VCallAd Control_ID_
End Sub

Private Function Proc_89_33_9F00F4() '9F00F4
  'Data Table: 427170
  loc_9F00D0: LitStr "Primary"
  loc_9F00D3: FLdPr Me
  loc_9F00D6: LateIdLdVar var_94 DispID_4 0
  loc_9F00DD: CastAdVar Me
  loc_9F00E1: FStAdFunc var_98
  loc_9F00E4: FLdPr var_98
  loc_9F00EC: FFree1Ad var_98
  loc_9F00EF: FFree1Var var_94 = ""
  loc_9F00F2: ExitProcHresult
End Function

Private Function Proc_89_34_9F0E40(arg_C) '9F0E40
  'Data Table: 427170
  loc_9F0E1C: ILdI4 arg_C
  loc_9F0E1F: FStStrCopy var_88
  loc_9F0E22: ILdRf var_88
  loc_9F0E25: LitStr "Primary"
  loc_9F0E28: EqStr
  loc_9F0E2A: BranchF loc_9F0E3F
  loc_9F0E2D: FLdRfVar var_8C
  loc_9F0E30: FLdPr Me
  loc_9F0E33: from_stack_1v = clsestainmu.global_4354296Get()
  loc_9F0E38: FLdZeroAd var_8C
  loc_9F0E3B: IStAdFunc
  loc_9F0E3F: ExitProcHresult
End Function

Public Function global_4354296Get() '4274FC
  global_4354296Get = global_4354296
End Function

Public Sub global_4354296Put(Value) '427516
  global_4354296 = Value
End Sub

Public Sub global_4354296Set(Value) '427530
  global_4354296 = Value
End Sub

Public Function global_4354296Get() '42754A
  global_4354296Get = global_4354296
End Function

Public Sub global_4354296Put(Value) '427564
  global_4354296 = Value
End Sub

Public Sub global_4354296Set(Value) '42757E
  global_4354296 = Value
End Sub

Public Function global_4354296Get() '427598
  global_4354296Get = global_4354296
End Function

Public Sub global_4354296Put(Value) '4275B2
  global_4354296 = Value
End Sub

Public Sub global_4354296Set(Value) '4275CC
  global_4354296 = Value
End Sub
