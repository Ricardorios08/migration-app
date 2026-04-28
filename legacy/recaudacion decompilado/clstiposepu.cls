VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clstiposepu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0D164
  'Data Table: 4280CC
  loc_A0D128: FLdRfVar var_8C
  loc_A0D12B: FLdRfVar var_88
  loc_A0D12E: FLdPr Me
  loc_A0D131: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A0D136: FLdPr var_88
  loc_A0D139:  = Me.RecordCount
  loc_A0D13E: ILdRf var_8C
  loc_A0D141: LitI4 0
  loc_A0D146: GtI4
  loc_A0D147: FFree1Ad var_88
  loc_A0D14A: BranchF loc_A0D163
  loc_A0D14D: FLdRfVar var_88
  loc_A0D150: FLdPr Me
  loc_A0D153: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A0D158: FLdPr var_88
  loc_A0D15B: Me.MoveFirst
  loc_A0D160: FFree1Ad var_88
  loc_A0D163: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0D394
  'Data Table: 4280CC
  loc_A0D358: FLdRfVar var_8C
  loc_A0D35B: FLdRfVar var_88
  loc_A0D35E: FLdPr Me
  loc_A0D361: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A0D366: FLdPr var_88
  loc_A0D369:  = Me.RecordCount
  loc_A0D36E: ILdRf var_8C
  loc_A0D371: LitI4 0
  loc_A0D376: GtI4
  loc_A0D377: FFree1Ad var_88
  loc_A0D37A: BranchF loc_A0D393
  loc_A0D37D: FLdRfVar var_88
  loc_A0D380: FLdPr Me
  loc_A0D383: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A0D388: FLdPr var_88
  loc_A0D38B: Me.MoveLast
  loc_A0D390: FFree1Ad var_88
  loc_A0D393: ExitProcHresult
End Sub

Public Sub MoveNext() 'AA01E4
  'Data Table: 4280CC
  loc_AA0128: FLdRfVar var_8A
  loc_AA012B: FLdRfVar var_88
  loc_AA012E: FLdPr Me
  loc_AA0131: from_stack_1v = clstiposepu.global_4358228Get()
  loc_AA0136: FLdPr var_88
  loc_AA0139:  = Me.EOF
  loc_AA013E: FLdI2 var_8A
  loc_AA0141: NotI4
  loc_AA0142: FLdRfVar var_94
  loc_AA0145: FLdRfVar var_90
  loc_AA0148: FLdPr Me
  loc_AA014B: from_stack_1v = clstiposepu.global_4358228Get()
  loc_AA0150: FLdPr var_90
  loc_AA0153:  = Me.RecordCount
  loc_AA0158: ILdRf var_94
  loc_AA015B: LitI4 0
  loc_AA0160: GtI4
  loc_AA0161: AndI4
  loc_AA0162: FFreeAd var_88 = ""
  loc_AA0169: BranchF loc_AA0182
  loc_AA016C: FLdRfVar var_88
  loc_AA016F: FLdPr Me
  loc_AA0172: from_stack_1v = clstiposepu.global_4358228Get()
  loc_AA0177: FLdPr var_88
  loc_AA017A: Me.MoveNext
  loc_AA017F: FFree1Ad var_88
  loc_AA0182: FLdRfVar var_8A
  loc_AA0185: FLdRfVar var_88
  loc_AA0188: FLdPr Me
  loc_AA018B: from_stack_1v = clstiposepu.global_4358228Get()
  loc_AA0190: FLdPr var_88
  loc_AA0193:  = Me.EOF
  loc_AA0198: FLdI2 var_8A
  loc_AA019B: FLdRfVar var_94
  loc_AA019E: FLdRfVar var_90
  loc_AA01A1: FLdPr Me
  loc_AA01A4: from_stack_1v = clstiposepu.global_4358228Get()
  loc_AA01A9: FLdPr var_90
  loc_AA01AC:  = Me.RecordCount
  loc_AA01B1: ILdRf var_94
  loc_AA01B4: LitI4 0
  loc_AA01B9: GtI4
  loc_AA01BA: AndI4
  loc_AA01BB: FFreeAd var_88 = ""
  loc_AA01C2: BranchF loc_AA01E0
  loc_AA01C5: ImpAdCallFPR4 Beep()
  loc_AA01CA: FLdRfVar var_88
  loc_AA01CD: FLdPr Me
  loc_AA01D0: from_stack_1v = clstiposepu.global_4358228Get()
  loc_AA01D5: FLdPr var_88
  loc_AA01D8: Me.MoveLast
  loc_AA01DD: FFree1Ad var_88
  loc_AA01E0: ExitProcHresult
  loc_AA01E1: FnStrComp3Var
End Sub

Public Sub MoveSiguiente() '9D7C4C
  'Data Table: 4280CC
  loc_9D7C34: FLdRfVar var_88
  loc_9D7C37: FLdPr Me
  loc_9D7C3A: from_stack_1v = clstiposepu.global_4358228Get()
  loc_9D7C3F: FLdPr var_88
  loc_9D7C42: Me.MoveNext
  loc_9D7C47: FFree1Ad var_88
  loc_9D7C4A: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E92F0
  'Data Table: 4280CC
  loc_9E92D0: LitVar_Missing var_98
  loc_9E92D3: PopAdLdVar
  loc_9E92D4: ILdI2 iValor
  loc_9E92D7: CI4UI1
  loc_9E92D8: FLdRfVar var_88
  loc_9E92DB: FLdPr Me
  loc_9E92DE: from_stack_1v = clstiposepu.global_4358228Get()
  loc_9E92E3: FLdPr var_88
  loc_9E92E6: Me.Move from_stack_1, from_stack_2
  loc_9E92EB: FFree1Ad var_88
  loc_9E92EE: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9F2A4
  'Data Table: 4280CC
  loc_A9F1E8: FLdRfVar var_8A
  loc_A9F1EB: FLdRfVar var_88
  loc_A9F1EE: FLdPr Me
  loc_A9F1F1: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A9F1F6: FLdPr var_88
  loc_A9F1F9:  = Me.BOF
  loc_A9F1FE: FLdI2 var_8A
  loc_A9F201: NotI4
  loc_A9F202: FLdRfVar var_94
  loc_A9F205: FLdRfVar var_90
  loc_A9F208: FLdPr Me
  loc_A9F20B: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A9F210: FLdPr var_90
  loc_A9F213:  = Me.RecordCount
  loc_A9F218: ILdRf var_94
  loc_A9F21B: LitI4 0
  loc_A9F220: GtI4
  loc_A9F221: AndI4
  loc_A9F222: FFreeAd var_88 = ""
  loc_A9F229: BranchF loc_A9F242
  loc_A9F22C: FLdRfVar var_88
  loc_A9F22F: FLdPr Me
  loc_A9F232: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A9F237: FLdPr var_88
  loc_A9F23A: Me.MovePrevious
  loc_A9F23F: FFree1Ad var_88
  loc_A9F242: FLdRfVar var_8A
  loc_A9F245: FLdRfVar var_88
  loc_A9F248: FLdPr Me
  loc_A9F24B: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A9F250: FLdPr var_88
  loc_A9F253:  = Me.BOF
  loc_A9F258: FLdI2 var_8A
  loc_A9F25B: FLdRfVar var_94
  loc_A9F25E: FLdRfVar var_90
  loc_A9F261: FLdPr Me
  loc_A9F264: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A9F269: FLdPr var_90
  loc_A9F26C:  = Me.RecordCount
  loc_A9F271: ILdRf var_94
  loc_A9F274: LitI4 0
  loc_A9F279: GtI4
  loc_A9F27A: AndI4
  loc_A9F27B: FFreeAd var_88 = ""
  loc_A9F282: BranchF loc_A9F2A0
  loc_A9F285: ImpAdCallFPR4 Beep()
  loc_A9F28A: FLdRfVar var_88
  loc_A9F28D: FLdPr Me
  loc_A9F290: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A9F295: FLdPr var_88
  loc_A9F298: Me.MoveFirst
  loc_A9F29D: FFree1Ad var_88
  loc_A9F2A0: ExitProcHresult
  loc_A9F2A1: FLdPr Me
End Sub

Public Property Get EOF() '9F16E4
  'Data Table: 4280CC
  loc_9F16BC: FLdRfVar var_8E
  loc_9F16BF: FLdRfVar var_8C
  loc_9F16C2: FLdPr Me
  loc_9F16C5: from_stack_1v = clstiposepu.global_4358228Get()
  loc_9F16CA: FLdPr var_8C
  loc_9F16CD:  = Me.EOF
  loc_9F16D2: FLdI2 var_8E
  loc_9F16D5: FStI2 var_86
  loc_9F16D8: FFree1Ad var_8C
  loc_9F16DB: ExitProcCbHresult
  loc_9F16E1: SubCy
End Sub

Public Property Get BOF() '9F1688
  'Data Table: 4280CC
  loc_9F1660: FLdRfVar var_8E
  loc_9F1663: FLdRfVar var_8C
  loc_9F1666: FLdPr Me
  loc_9F1669: from_stack_1v = clstiposepu.global_4358228Get()
  loc_9F166E: FLdPr var_8C
  loc_9F1671:  = Me.BOF
  loc_9F1676: FLdI2 var_8E
  loc_9F1679: FStI2 var_86
  loc_9F167C: FFree1Ad var_8C
  loc_9F167F: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9E14AC
  'Data Table: 4280CC
  loc_9E1490: ILdI4 sOrden
  loc_9E1493: FLdRfVar var_88
  loc_9E1496: FLdPr Me
  loc_9E1499: from_stack_1v = clstiposepu.global_4358228Get()
  loc_9E149E: FLdPr var_88
  loc_9E14A1: Me.Sort = from_stack_1
  loc_9E14A6: FFree1Ad var_88
  loc_9E14A9: ExitProcHresult
  loc_9E14AA: LitI2_Byte 0
End Sub

Public Sub Find(sFind) '9F15D0
  'Data Table: 4280CC
  loc_9F15A8: LitVar_Missing var_98
  loc_9F15AB: PopAdLdVar
  loc_9F15AC: LitI4 1
  loc_9F15B1: LitI4 0
  loc_9F15B6: ILdI4 sFind
  loc_9F15B9: FLdRfVar var_88
  loc_9F15BC: FLdPr Me
  loc_9F15BF: from_stack_1v = clstiposepu.global_4358228Get()
  loc_9F15C4: FLdPr var_88
  loc_9F15C7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F15CC: FFree1Ad var_88
  loc_9F15CF: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F1574
  'Data Table: 4280CC
  loc_9F154C: FLdRfVar var_90
  loc_9F154F: FLdRfVar var_8C
  loc_9F1552: FLdPr Me
  loc_9F1555: from_stack_1v = clstiposepu.global_4358228Get()
  loc_9F155A: FLdPr var_8C
  loc_9F155D:  = Me.AbsolutePosition
  loc_9F1562: ILdRf var_90
  loc_9F1565: FStR4 var_88
  loc_9F1568: FFree1Ad var_8C
  loc_9F156B: ExitProcCbHresult
  loc_9F1571: FnStrComp3Var
End Sub

Public Property Get RecordCount() '9F1518
  'Data Table: 4280CC
  loc_9F14F0: FLdRfVar var_90
  loc_9F14F3: FLdRfVar var_8C
  loc_9F14F6: FLdPr Me
  loc_9F14F9: from_stack_1v = clstiposepu.global_4358228Get()
  loc_9F14FE: FLdPr var_8C
  loc_9F1501:  = Me.RecordCount
  loc_9F1506: ILdRf var_90
  loc_9F1509: FStR4 var_88
  loc_9F150C: FFree1Ad var_8C
  loc_9F150F: ExitProcCbHresult
  loc_9F1515: MemLdRfVar from_stack_1.global_60
End Sub

Public Sub AddNew(CodiTise, DetaTise, FijoTise) 'A8FB58
  'Data Table: 4280CC
  loc_A8FAC8: ILdRf DetaTise
  loc_A8FACB: FStStrCopy var_88
  loc_A8FACE: ILdRf FijoTise
  loc_A8FAD1: FStStrCopy var_8C
  loc_A8FAD4: FLdRfVar var_90
  loc_A8FAD7: FLdUI1
  loc_A8FADB: CI2UI1
  loc_A8FADD: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A8FAE2: ILdRf var_90
  loc_A8FAE5: LitStr vbNullString
  loc_A8FAE8: NeStr
  loc_A8FAEA: FFree1Str var_90
  loc_A8FAED: BranchF loc_A8FAFB
  loc_A8FAF0: LitStr "El TIPO DE SEPULTURA YA EXISTE. Reintente..."
  loc_A8FAF3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8FAF8: Branch loc_A8FB54
  loc_A8FAFB: LitStr "INSERT INTO tiposepu (CodiTise, DetaTise, FijoTise) VALUES ("
  loc_A8FAFE: FLdUI1
  loc_A8FB02: CStrI2
  loc_A8FB04: FStStrNoPop var_90
  loc_A8FB07: ConcatStr
  loc_A8FB08: FStStrNoPop var_94
  loc_A8FB0B: LitStr ",'"
  loc_A8FB0E: ConcatStr
  loc_A8FB0F: FStStrNoPop var_98
  loc_A8FB12: ILdRf var_88
  loc_A8FB15: ConcatStr
  loc_A8FB16: FStStrNoPop var_9C
  loc_A8FB19: LitStr "','"
  loc_A8FB1C: ConcatStr
  loc_A8FB1D: FStStrNoPop var_A0
  loc_A8FB20: ILdRf var_8C
  loc_A8FB23: ConcatStr
  loc_A8FB24: FStStrNoPop var_A4
  loc_A8FB27: LitStr "');"
  loc_A8FB2A: ConcatStr
  loc_A8FB2B: FStStrNoPop var_A8
  loc_A8FB2E: Call EjecutarRs2(from_stack_1v)
  loc_A8FB33: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A8FB44: Call Requery()
  loc_A8FB49: FLdUI1
  loc_A8FB4D: CI2UI1
  loc_A8FB4F: Call Encontrar(from_stack_1v)
  loc_A8FB54: ExitProcHresult
End Sub

Public Sub Modificar(CodiTise, DetaTise, FijoTise) 'A89100
  'Data Table: 4280CC
  loc_A8907C: ILdRf DetaTise
  loc_A8907F: FStStrCopy var_88
  loc_A89082: ILdRf FijoTise
  loc_A89085: FStStrCopy var_8C
  loc_A89088: FLdRfVar var_90
  loc_A8908B: FLdUI1
  loc_A8908F: CI2UI1
  loc_A89091: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A89096: ILdRf var_90
  loc_A89099: LitStr vbNullString
  loc_A8909C: EqStr
  loc_A8909E: FFree1Str var_90
  loc_A890A1: BranchF loc_A890AF
  loc_A890A4: LitStr "El TIPO de SEPULTURA NO EXISTE. Reintente..."
  loc_A890A7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A890AC: Branch loc_A890EF
  loc_A890AF: LitStr "UPDATE tiposepu SET DetaTise = '"
  loc_A890B2: ILdRf var_88
  loc_A890B5: ConcatStr
  loc_A890B6: FStStrNoPop var_90
  loc_A890B9: LitStr "', FijoTise = '"
  loc_A890BC: ConcatStr
  loc_A890BD: FStStrNoPop var_94
  loc_A890C0: ILdRf var_8C
  loc_A890C3: ConcatStr
  loc_A890C4: FStStrNoPop var_98
  loc_A890C7: LitStr "' WHERE CodiTise="
  loc_A890CA: ConcatStr
  loc_A890CB: FStStrNoPop var_9C
  loc_A890CE: FLdUI1
  loc_A890D2: CStrI2
  loc_A890D4: FStStrNoPop var_A0
  loc_A890D7: ConcatStr
  loc_A890D8: FStStrNoPop var_A4
  loc_A890DB: Call EjecutarRs2(from_stack_1v)
  loc_A890E0: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A890EF: Call Requery()
  loc_A890F4: FLdUI1
  loc_A890F8: CI2UI1
  loc_A890FA: Call Encontrar(from_stack_1v)
  loc_A890FF: ExitProcHresult
End Sub

Public Sub Delete() 'A212A0
  'Data Table: 4280CC
  loc_A21258: FLdRfVar var_8C
  loc_A2125B: FLdRfVar var_88
  loc_A2125E: FLdPr Me
  loc_A21261: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A21266: FLdPr var_88
  loc_A21269:  = Me.RecordCount
  loc_A2126E: ILdRf var_8C
  loc_A21271: LitI4 0
  loc_A21276: GtI4
  loc_A21277: FFree1Ad var_88
  loc_A2127A: BranchF loc_A2129D
  loc_A2127D: LitI4 1
  loc_A21282: FLdRfVar var_88
  loc_A21285: FLdPr Me
  loc_A21288: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A2128D: FLdPr var_88
  loc_A21290: Me.Delete
  loc_A21295: FFree1Ad var_88
  loc_A21298: Call MoveNext()
  loc_A2129D: ExitProcHresult
End Sub

Public Sub Requery() '9FE814
  'Data Table: 4280CC
  loc_9FE7E4: LitI4 -1
  loc_9FE7E9: FLdRfVar var_88
  loc_9FE7EC: FLdPr Me
  loc_9FE7EF: from_stack_1v = clstiposepu.global_4358228Get()
  loc_9FE7F4: FLdPr var_88
  loc_9FE7F7: Me.Requery from_stack_1
  loc_9FE7FC: FFree1Ad var_88
  loc_9FE7FF: LitVarStr var_98, "Primary"
  loc_9FE804: PopAdLdVar
  loc_9FE805: FLdPr Me
  loc_9FE808: LateIdCall
  loc_9FE810: ExitProcHresult
  loc_9FE813: CStrVarTmp
End Sub

Public Sub Update() 'A22E38
  'Data Table: 4280CC
  loc_A22DF4: FLdRfVar var_88
  loc_A22DF7: FLdPr Me
  loc_A22DFA: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A22DFF: FLdZeroAd var_88
  loc_A22E02: FStAdFunc var_8C
  loc_A22E05: LitI4 3
  loc_A22E0A: FLdPr var_8C
  loc_A22E0D: Me.UpdateBatch
  loc_A22E12: FLdRfVar var_90
  loc_A22E15: FLdPr var_8C
  loc_A22E18:  = Me.EditMode
  loc_A22E1D: ILdRf var_90
  loc_A22E20: LitI4 2
  loc_A22E25: EqI4
  loc_A22E26: BranchF loc_A22E2E
  loc_A22E29: Call MoveLast()
  loc_A22E2E: LitNothing
  loc_A22E30: FStAd var_8C 
  loc_A22E34: ExitProcHresult
End Sub

Public Sub Cancel() 'A4B138
  'Data Table: 4280CC
  loc_A4B0E4: FLdRfVar var_88
  loc_A4B0E7: FLdPr Me
  loc_A4B0EA: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A4B0EF: FLdZeroAd var_88
  loc_A4B0F2: FStAdFunc var_8C
  loc_A4B0F5: FLdRfVar var_90
  loc_A4B0F8: FLdPr var_8C
  loc_A4B0FB:  = Me.RecordCount
  loc_A4B100: ILdRf var_90
  loc_A4B103: LitI4 0
  loc_A4B108: GtI4
  loc_A4B109: BranchF loc_A4B130
  loc_A4B10C: FLdPr var_8C
  loc_A4B10F: Me.CancelUpdate
  loc_A4B114: FLdRfVar var_90
  loc_A4B117: FLdPr var_8C
  loc_A4B11A:  = Me.EditMode
  loc_A4B11F: ILdRf var_90
  loc_A4B122: LitI4 2
  loc_A4B127: EqI4
  loc_A4B128: BranchF loc_A4B130
  loc_A4B12B: Call MoveFirst()
  loc_A4B130: LitNothing
  loc_A4B132: FStAd var_8C 
  loc_A4B136: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FE434
  'Data Table: 4280CC
  loc_9FE408: FLdRfVar var_90
  loc_9FE40B: FLdRfVar var_8C
  loc_9FE40E: FLdPr Me
  loc_9FE411: from_stack_1v = clstiposepu.global_4358228Get()
  loc_9FE416: FLdPr var_8C
  loc_9FE419:  = Me.EditMode
  loc_9FE41E: ILdRf var_90
  loc_9FE421: LitI4 0
  loc_9FE426: NeI4
  loc_9FE427: FStI2 var_86
  loc_9FE42A: FFree1Ad var_8C
  loc_9FE42D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A7182C
  'Data Table: 4280CC
  loc_A717B8: ILdRf sSelect
  loc_A717BB: FStStrCopy var_88
  loc_A717BE: LitNothing
  loc_A717C0: CastAd
  loc_A717C3: FStAdFuncNoPop
  loc_A717C6: FLdPr Me
  loc_A717C9: Call clstiposepu.global_4358228Set(from_stack_1v)
  loc_A717CE: FFree1Ad var_8C
  loc_A717D1: New Recordset
  loc_A717D5: FStAdFuncNoPop
  loc_A717D8: FLdPr Me
  loc_A717DB: Call clstiposepu.global_4358228Set(from_stack_1v)
  loc_A717E0: FFree1Ad var_8C
  loc_A717E3: LitI4 -1
  loc_A717E8: LitI4 3
  loc_A717ED: LitI4 3
  loc_A717F2: ImpAdLdI4 MemVar_D9301C
  loc_A717F5: CVarAd
  loc_A717F9: PopAdLdVar
  loc_A717FA: ILdRf var_88
  loc_A717FD: CVarStr var_9C
  loc_A71800: PopAdLdVar
  loc_A71801: FLdRfVar var_8C
  loc_A71804: FLdPr Me
  loc_A71807: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A7180C: FLdPr var_8C
  loc_A7180F: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A71814: FFree1Ad var_8C
  loc_A71817: LitVarStr var_9C, "Primary"
  loc_A7181C: PopAdLdVar
  loc_A7181D: FLdPr Me
  loc_A71820: LateIdCall
  loc_A71828: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A5A160
  'Data Table: 4280CC
  loc_A5A100: ILdRf sSelect
  loc_A5A103: FStStrCopy var_88
  loc_A5A106: LitNothing
  loc_A5A108: CastAd
  loc_A5A10B: FStAdFuncNoPop
  loc_A5A10E: FLdPr Me
  loc_A5A111: Call clstiposepu.global_4358228Set(from_stack_1v)
  loc_A5A116: FFree1Ad var_8C
  loc_A5A119: New Recordset
  loc_A5A11D: FStAdFuncNoPop
  loc_A5A120: FLdPr Me
  loc_A5A123: Call clstiposepu.global_4358228Set(from_stack_1v)
  loc_A5A128: FFree1Ad var_8C
  loc_A5A12B: LitI4 -1
  loc_A5A130: LitI4 3
  loc_A5A135: LitI4 3
  loc_A5A13A: ImpAdLdI4 MemVar_D9301C
  loc_A5A13D: CVarAd
  loc_A5A141: PopAdLdVar
  loc_A5A142: ILdRf var_88
  loc_A5A145: CVarStr var_9C
  loc_A5A148: PopAdLdVar
  loc_A5A149: FLdRfVar var_8C
  loc_A5A14C: FLdPr Me
  loc_A5A14F: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A5A154: FLdPr var_8C
  loc_A5A157: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5A15C: FFree1Ad var_8C
  loc_A5A15F: ExitProcHresult
End Sub

Public Sub Encontrar(CodiTise) '9EF81C
  'Data Table: 4280CC
  loc_9EF7FC: LitStr "CodiTise = "
  loc_9EF7FF: FLdI2 CodiTise
  loc_9EF802: CStrUI1
  loc_9EF804: FStStrNoPop var_88
  loc_9EF807: ConcatStr
  loc_9EF808: PopTmpLdAdStr
  loc_9EF80C: Call Find(from_stack_1v)
  loc_9EF811: FFreeStr var_88 = ""
  loc_9EF818: ExitProcHresult
End Sub

Public Property Get DataSource() 'A08D38
  'Data Table: 4280CC
  loc_A08D08: ZeroRetVal
  loc_A08D0A: FLdRfVar var_90
  loc_A08D0D: FLdRfVar var_8C
  loc_A08D10: FLdPr Me
  loc_A08D13: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A08D18: FLdPr var_8C
  loc_A08D1B:  = Me.DataSource
  loc_A08D20: ILdRf var_90
  loc_A08D23: CastAd
  loc_A08D26: FStAdFunc var_88
  loc_A08D29: FFreeAd var_8C = ""
  loc_A08D30: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9F0F58
  'Data Table: 4280CC
  loc_9F0F30: FLdRfVar var_90
  loc_9F0F33: FLdRfVar var_8C
  loc_9F0F36: FLdPr Me
  loc_9F0F39: from_stack_1v = clstiposepu.global_4358228Get()
  loc_9F0F3E: FLdPr var_8C
  loc_9F0F41:  = Me.EditMode
  loc_9F0F46: ILdRf var_90
  loc_9F0F49: FStR4 var_88
  loc_9F0F4C: FFree1Ad var_8C
  loc_9F0F4F: ExitProcCbHresult
End Sub

Public Property Get CodiTise() 'A53890
  'Data Table: 4280CC
  loc_A53840: FLdRfVar var_B4
  loc_A53843: FLdRfVar var_A4
  loc_A53846: LitVarStr var_A0, "CodiTise"
  loc_A5384B: PopAdLdVar
  loc_A5384C: FLdRfVar var_90
  loc_A5384F: FLdRfVar var_8C
  loc_A53852: FLdPr Me
  loc_A53855: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A5385A: FLdPr var_8C
  loc_A5385D:  = Me.Fields
  loc_A53862: FLdPr var_90
  loc_A53865: from_stack_2 = Me.Item(from_stack_1)
  loc_A5386A: FLdPr var_A4
  loc_A5386D:  = Me.Value
  loc_A53872: FLdRfVar var_B4
  loc_A53875: CUI1Var
  loc_A53877: FStUI1 var_86
  loc_A5387B: FFreeAd var_8C = "": var_90 = ""
  loc_A53884: FFree1Var var_B4 = ""
  loc_A53887: ExitProcCbHresult
End Sub

Public Property Let CodiTise(vDato) '9F4204
  'Data Table: 4280CC
  loc_9F41DC: FLdUI1
  loc_9F41E0: CVarUI1
  loc_9F41E4: PopAdLdVar
  loc_9F41E5: LitVarStr var_98, "CodiTise"
  loc_9F41EA: PopAdLdVar
  loc_9F41EB: FLdRfVar var_88
  loc_9F41EE: FLdPr Me
  loc_9F41F1: from_stack_1v = clstiposepu.global_4358228Get()
  loc_9F41F6: FLdPr var_88
  loc_9F41F9: Me.Collect = from_stack_1
  loc_9F41FE: FFree1Ad var_88
  loc_9F4201: ExitProcHresult
End Sub

Public Property Get DetaTise() 'A56A20
  'Data Table: 4280CC
  loc_A569D0: ZeroRetVal
  loc_A569D2: FLdRfVar var_B4
  loc_A569D5: FLdRfVar var_A4
  loc_A569D8: LitVarStr var_A0, "DetaTise"
  loc_A569DD: PopAdLdVar
  loc_A569DE: FLdRfVar var_90
  loc_A569E1: FLdRfVar var_8C
  loc_A569E4: FLdPr Me
  loc_A569E7: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A569EC: FLdPr var_8C
  loc_A569EF:  = Me.Fields
  loc_A569F4: FLdPr var_90
  loc_A569F7: from_stack_2 = Me.Item(from_stack_1)
  loc_A569FC: FLdPr var_A4
  loc_A569FF:  = Me.Value
  loc_A56A04: FLdRfVar var_B4
  loc_A56A07: CStrVarTmp
  loc_A56A08: FStStr var_88
  loc_A56A0B: FFreeAd var_8C = "": var_90 = ""
  loc_A56A14: FFree1Var var_B4 = ""
  loc_A56A17: ExitProcCbHresult
End Sub

Public Property Let DetaTise(vDato) '9FE9A0
  'Data Table: 4280CC
  loc_9FE974: ILdRf vDato
  loc_9FE977: FStStrCopy var_88
  loc_9FE97A: ILdRf var_88
  loc_9FE97D: CVarStr var_AC
  loc_9FE980: PopAdLdVar
  loc_9FE981: LitVarStr var_9C, "DetaTise"
  loc_9FE986: PopAdLdVar
  loc_9FE987: FLdRfVar var_8C
  loc_9FE98A: FLdPr Me
  loc_9FE98D: from_stack_1v = clstiposepu.global_4358228Get()
  loc_9FE992: FLdPr var_8C
  loc_9FE995: Me.Collect = from_stack_1
  loc_9FE99A: FFree1Ad var_8C
  loc_9FE99D: ExitProcHresult
End Sub

Public Property Get FijoTise() 'A5957C
  'Data Table: 4280CC
  loc_A5952C: ZeroRetVal
  loc_A5952E: FLdRfVar var_B4
  loc_A59531: FLdRfVar var_A4
  loc_A59534: LitVarStr var_A0, "FijoTise"
  loc_A59539: PopAdLdVar
  loc_A5953A: FLdRfVar var_90
  loc_A5953D: FLdRfVar var_8C
  loc_A59540: FLdPr Me
  loc_A59543: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A59548: FLdPr var_8C
  loc_A5954B:  = Me.Fields
  loc_A59550: FLdPr var_90
  loc_A59553: from_stack_2 = Me.Item(from_stack_1)
  loc_A59558: FLdPr var_A4
  loc_A5955B:  = Me.Value
  loc_A59560: FLdRfVar var_B4
  loc_A59563: CStrVarTmp
  loc_A59564: FStStr var_88
  loc_A59567: FFreeAd var_8C = "": var_90 = ""
  loc_A59570: FFree1Var var_B4 = ""
  loc_A59573: ExitProcCbHresult
End Sub

Public Property Let FijoTise(vDato) '9FF5BC
  'Data Table: 4280CC
  loc_9FF590: ILdRf vDato
  loc_9FF593: FStStrCopy var_88
  loc_9FF596: ILdRf var_88
  loc_9FF599: CVarStr var_AC
  loc_9FF59C: PopAdLdVar
  loc_9FF59D: LitVarStr var_9C, "FijoTise"
  loc_9FF5A2: PopAdLdVar
  loc_9FF5A3: FLdRfVar var_8C
  loc_9FF5A6: FLdPr Me
  loc_9FF5A9: from_stack_1v = clstiposepu.global_4358228Get()
  loc_9FF5AE: FLdPr var_8C
  loc_9FF5B1: Me.Collect = from_stack_1
  loc_9FF5B6: FFree1Ad var_8C
  loc_9FF5B9: ExitProcHresult
End Sub

Public Function ValidaClave(CodiTise) 'A53410
  'Data Table: 4280CC
  loc_A533C0: ZeroRetVal
  loc_A533C2: LitStr "SELECT CodiTise FROM tiposepu WHERE CodiTise = "
  loc_A533C5: FLdI2 CodiTise
  loc_A533C8: CStrUI1
  loc_A533CA: FStStrNoPop var_8C
  loc_A533CD: ConcatStr
  loc_A533CE: FStStrNoPop var_90
  loc_A533D1: Call EjecutarRs2(from_stack_1v)
  loc_A533D6: FFreeStr var_8C = ""
  loc_A533DD: FLdRfVar var_98
  loc_A533E0: FLdRfVar ValidaClave
  loc_A533E3: FLdPr Me
  loc_A533E6: from_stack_1v = clstiposepu.global_4358228Get()
  loc_A533EB: FLdPr ValidaClave
  loc_A533EE:  = Me.RecordCount
  loc_A533F3: ILdRf var_98
  loc_A533F6: LitI4 0
  loc_A533FB: GtI4
  loc_A533FC: FFree1Ad ValidaClave
  loc_A533FF: BranchF loc_A53408
  loc_A53402: LitStr "El TIPO de DOCUMENTO YA EXISTE. Reintente..."
  loc_A53405: FStStrCopy var_88
  loc_A53408: ExitProcCbHresult
End Function

Public Function NuevoRegistro() 'AB9EE0
  'Data Table: 4280CC
  loc_AB9DF0: New Recordset
  loc_AB9DF4: FStAdFuncNoPop
  loc_AB9DF7: FLdPr Me
  loc_AB9DFA: Call clstiposepu.global_4358228Set(from_stack_1v)
  loc_AB9DFF: FFree1Ad var_8C
  loc_AB9E02: LitI4 -1
  loc_AB9E07: LitI4 3
  loc_AB9E0C: LitI4 3
  loc_AB9E11: ImpAdLdI4 MemVar_D9301C
  loc_AB9E14: CVarAd
  loc_AB9E18: PopAdLdVar
  loc_AB9E19: LitVarStr var_9C, "SELECT CodiTise FROM tiposepu ORDER BY CodiTise DESC "
  loc_AB9E1E: PopAdLdVar
  loc_AB9E1F: FLdRfVar var_8C
  loc_AB9E22: FLdPr Me
  loc_AB9E25: from_stack_1v = clstiposepu.global_4358228Get()
  loc_AB9E2A: FLdPr var_8C
  loc_AB9E2D: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_AB9E32: FFree1Ad var_8C
  loc_AB9E35: FLdRfVar var_B0
  loc_AB9E38: FLdRfVar var_8C
  loc_AB9E3B: FLdPr Me
  loc_AB9E3E: from_stack_1v = clstiposepu.global_4358228Get()
  loc_AB9E43: FLdPr var_8C
  loc_AB9E46:  = Me.RecordCount
  loc_AB9E4B: ILdRf var_B0
  loc_AB9E4E: LitI4 0
  loc_AB9E53: GtI4
  loc_AB9E54: FFree1Ad var_8C
  loc_AB9E57: BranchF loc_AB9EA9
  loc_AB9E5A: FLdRfVar var_C8
  loc_AB9E5D: FLdRfVar var_B8
  loc_AB9E60: LitVarStr var_9C, "CodiTise"
  loc_AB9E65: PopAdLdVar
  loc_AB9E66: FLdRfVar var_B4
  loc_AB9E69: FLdRfVar var_8C
  loc_AB9E6C: FLdPr Me
  loc_AB9E6F: from_stack_1v = clstiposepu.global_4358228Get()
  loc_AB9E74: FLdPr var_8C
  loc_AB9E77:  = Me.Fields
  loc_AB9E7C: FLdPr var_B4
  loc_AB9E7F: from_stack_2 = Me.Item(from_stack_1)
  loc_AB9E84: FLdPr var_B8
  loc_AB9E87:  = Me.Value
  loc_AB9E8C: FLdRfVar var_C8
  loc_AB9E8F: FnCLngVar
  loc_AB9E91: LitI4 1
  loc_AB9E96: AddI4
  loc_AB9E97: FStR4 var_88
  loc_AB9E9A: FFreeAd var_8C = "": var_B4 = ""
  loc_AB9EA3: FFree1Var var_C8 = ""
  loc_AB9EA6: Branch loc_AB9EB1
  loc_AB9EA9: LitI4 1
  loc_AB9EAE: FStR4 var_88
  loc_AB9EB1: FLdRfVar var_8C
  loc_AB9EB4: FLdPr Me
  loc_AB9EB7: from_stack_1v = clstiposepu.global_4358228Get()
  loc_AB9EBC: FLdPr var_8C
  loc_AB9EBF: Me.Close
  loc_AB9EC4: FFree1Ad var_8C
  loc_AB9EC7: LitNothing
  loc_AB9EC9: CastAd
  loc_AB9ECC: FStAdFuncNoPop
  loc_AB9ECF: FLdPr Me
  loc_AB9ED2: Call clstiposepu.global_4358228Set(from_stack_1v)
  loc_AB9ED7: FFree1Ad var_8C
  loc_AB9EDA: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E919C
  'Data Table: 4280CC
  loc_9E9180: ILdRf pError
  loc_9E9183: FStAd var_88 
  loc_9E9187: ILdRf pRecordset
  loc_9E918A: FStAd var_8C 
  loc_9E918E: FLdPr Me
  loc_9E9191: RaiseEvent
  loc_9E9199: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9EBFC
  'Data Table: 4280CC
  loc_A9EB3C: ILdRf pRecordset
  loc_A9EB3F: FStAd var_88 
  loc_A9EB43: ILdRf adReason
  loc_A9EB46: FStR4 var_90
  loc_A9EB49: ILdRf var_90
  loc_A9EB4C: LitI4 1
  loc_A9EB51: EqI4
  loc_A9EB52: BranchF loc_A9EB58
  loc_A9EB55: Branch loc_A9EBEB
  loc_A9EB58: ILdRf var_90
  loc_A9EB5B: LitI4 9
  loc_A9EB60: EqI4
  loc_A9EB61: BranchF loc_A9EB67
  loc_A9EB64: Branch loc_A9EBEB
  loc_A9EB67: ILdRf var_90
  loc_A9EB6A: LitI4 2
  loc_A9EB6F: EqI4
  loc_A9EB70: BranchF loc_A9EB76
  loc_A9EB73: Branch loc_A9EBEB
  loc_A9EB76: ILdRf var_90
  loc_A9EB79: LitI4 &HB
  loc_A9EB7E: EqI4
  loc_A9EB7F: BranchF loc_A9EB85
  loc_A9EB82: Branch loc_A9EBEB
  loc_A9EB85: ILdRf var_90
  loc_A9EB88: LitI4 &HA
  loc_A9EB8D: EqI4
  loc_A9EB8E: BranchF loc_A9EB94
  loc_A9EB91: Branch loc_A9EBEB
  loc_A9EB94: ILdRf var_90
  loc_A9EB97: LitI4 7
  loc_A9EB9C: EqI4
  loc_A9EB9D: BranchF loc_A9EBA3
  loc_A9EBA0: Branch loc_A9EBEB
  loc_A9EBA3: ILdRf var_90
  loc_A9EBA6: LitI4 8
  loc_A9EBAB: EqI4
  loc_A9EBAC: BranchF loc_A9EBB2
  loc_A9EBAF: Branch loc_A9EBEB
  loc_A9EBB2: ILdRf var_90
  loc_A9EBB5: LitI4 5
  loc_A9EBBA: EqI4
  loc_A9EBBB: BranchF loc_A9EBC1
  loc_A9EBBE: Branch loc_A9EBEB
  loc_A9EBC1: ILdRf var_90
  loc_A9EBC4: LitI4 6
  loc_A9EBC9: EqI4
  loc_A9EBCA: BranchF loc_A9EBD0
  loc_A9EBCD: Branch loc_A9EBEB
  loc_A9EBD0: ILdRf var_90
  loc_A9EBD3: LitI4 4
  loc_A9EBD8: EqI4
  loc_A9EBD9: BranchF loc_A9EBDF
  loc_A9EBDC: Branch loc_A9EBEB
  loc_A9EBDF: ILdRf var_90
  loc_A9EBE2: LitI4 3
  loc_A9EBE7: EqI4
  loc_A9EBE8: BranchF loc_A9EBEB
  loc_A9EBEB: FLdI2 var_8A
  loc_A9EBEE: BranchF loc_A9EBF9
  loc_A9EBF1: LitI4 4
  loc_A9EBF6: IStI4 adStatus
  loc_A9EBF9: ExitProcHresult
End Sub

Private Function Proc_71_34_9F117C() '9F117C
  'Data Table: 4280CC
  loc_9F1158: LitStr "Primary"
  loc_9F115B: FLdPr Me
  loc_9F115E: LateIdLdVar var_94 DispID_4 0
  loc_9F1165: CastAdVar Me
  loc_9F1169: FStAdFunc var_98
  loc_9F116C: FLdPr var_98
  loc_9F1174: FFree1Ad var_98
  loc_9F1177: FFree1Var var_94 = ""
  loc_9F117A: ExitProcHresult
End Function

Private Function Proc_71_35_9F100C(arg_C) '9F100C
  'Data Table: 4280CC
  loc_9F0FE8: ILdI4 arg_C
  loc_9F0FEB: FStStrCopy var_88
  loc_9F0FEE: ILdRf var_88
  loc_9F0FF1: LitStr "Primary"
  loc_9F0FF4: EqStr
  loc_9F0FF6: BranchF loc_9F100B
  loc_9F0FF9: FLdRfVar var_8C
  loc_9F0FFC: FLdPr Me
  loc_9F0FFF: from_stack_1v = clstiposepu.global_4358228Get()
  loc_9F1004: FLdZeroAd var_8C
  loc_9F1007: IStAdFunc
  loc_9F100B: ExitProcHresult
End Function

Public Function global_4358228Get() '428464
  global_4358228Get = global_4358228
End Function

Public Sub global_4358228Put(Value) '42847E
  global_4358228 = Value
End Sub

Public Sub global_4358228Set(Value) '428498
  global_4358228 = Value
End Sub

Public Function global_4358228Get() '4284B2
  global_4358228Get = global_4358228
End Function

Public Sub global_4358228Put(Value) '4284CC
  global_4358228 = Value
End Sub

Public Sub global_4358228Set(Value) '4284E6
  global_4358228 = Value
End Sub

Public Function global_4358228Get() '428500
  global_4358228Get = global_4358228
End Function

Public Sub global_4358228Put(Value) '42851A
  global_4358228 = Value
End Sub

Public Sub global_4358228Set(Value) '428534
  global_4358228 = Value
End Sub
