VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clscotizacion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '415EAC
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '415EBB
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '415ECA
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96FAF4
  'Data Table: 415BC4
  loc_96FACC: FLdRfVar var_88
  loc_96FACF: FLdPr Me
  loc_96FAD2: MemLdPr RsFrm
  loc_96FAD5:  = Me.RecordCount
  loc_96FADA: ILdRf var_88
  loc_96FADD: LitI4 0
  loc_96FAE2: GtI4
  loc_96FAE3: BranchF loc_96FAF1
  loc_96FAE6: FLdPr Me
  loc_96FAE9: MemLdPr RsFrm
  loc_96FAEC: Me.MoveFirst
  loc_96FAF1: ExitProcHresult
  loc_96FAF2: FFree1Var MoveFirstC68 = ""
End Sub

Public Sub MoveLast() '96FBA4
  'Data Table: 415BC4
  loc_96FB7C: FLdRfVar var_88
  loc_96FB7F: FLdPr Me
  loc_96FB82: MemLdPr RsFrm
  loc_96FB85:  = Me.RecordCount
  loc_96FB8A: ILdRf var_88
  loc_96FB8D: LitI4 0
  loc_96FB92: GtI4
  loc_96FB93: BranchF loc_96FBA1
  loc_96FB96: FLdPr Me
  loc_96FB99: MemLdPr RsFrm
  loc_96FB9C: Me.MoveLast
  loc_96FBA1: ExitProcHresult
  loc_96FBA2: BranchF loc_97487B
End Sub

Public Sub MoveNext() '99F8C0
  'Data Table: 415BC4
  loc_99F848: FLdRfVar var_86
  loc_99F84B: FLdPr Me
  loc_99F84E: MemLdPr RsFrm
  loc_99F851:  = Me.EOF
  loc_99F856: FLdI2 var_86
  loc_99F859: NotI4
  loc_99F85A: FLdRfVar var_8C
  loc_99F85D: FLdPr Me
  loc_99F860: MemLdPr RsFrm
  loc_99F863:  = Me.RecordCount
  loc_99F868: ILdRf var_8C
  loc_99F86B: LitI4 0
  loc_99F870: GtI4
  loc_99F871: AndI4
  loc_99F872: BranchF loc_99F880
  loc_99F875: FLdPr Me
  loc_99F878: MemLdPr RsFrm
  loc_99F87B: Me.MoveNext
  loc_99F880: FLdRfVar var_86
  loc_99F883: FLdPr Me
  loc_99F886: MemLdPr RsFrm
  loc_99F889:  = Me.EOF
  loc_99F88E: FLdI2 var_86
  loc_99F891: FLdRfVar var_8C
  loc_99F894: FLdPr Me
  loc_99F897: MemLdPr RsFrm
  loc_99F89A:  = Me.RecordCount
  loc_99F89F: ILdRf var_8C
  loc_99F8A2: LitI4 0
  loc_99F8A7: GtI4
  loc_99F8A8: AndI4
  loc_99F8A9: BranchF loc_99F8BC
  loc_99F8AC: ImpAdCallFPR4 Beep()
  loc_99F8B1: FLdPr Me
  loc_99F8B4: MemLdPr RsFrm
  loc_99F8B7: Me.MoveLast
  loc_99F8BC: ExitProcHresult
  loc_99F8BD: StAryMove
End Sub

Public Sub MoveSiguiente() '941300
  'Data Table: 415BC4
  loc_9412F4: FLdPr Me
  loc_9412F7: MemLdPr RsFrm
  loc_9412FA: Me.MoveNext
  loc_9412FF: ExitProcHresult
End Sub

Public Sub Move(iValor) '9492B4
  'Data Table: 415BC4
  loc_9492A0: LitVar_Missing var_94
  loc_9492A3: PopAdLdVar
  loc_9492A4: ILdI2 iValor
  loc_9492A7: CI4UI1
  loc_9492A8: FLdPr Me
  loc_9492AB: MemLdPr RsFrm
  loc_9492AE: Me.Move from_stack_1, from_stack_2
  loc_9492B3: ExitProcHresult
End Sub

Public Sub MovePrevious() '99F818
  'Data Table: 415BC4
  loc_99F7A0: FLdRfVar var_86
  loc_99F7A3: FLdPr Me
  loc_99F7A6: MemLdPr RsFrm
  loc_99F7A9:  = Me.BOF
  loc_99F7AE: FLdI2 var_86
  loc_99F7B1: NotI4
  loc_99F7B2: FLdRfVar var_8C
  loc_99F7B5: FLdPr Me
  loc_99F7B8: MemLdPr RsFrm
  loc_99F7BB:  = Me.RecordCount
  loc_99F7C0: ILdRf var_8C
  loc_99F7C3: LitI4 0
  loc_99F7C8: GtI4
  loc_99F7C9: AndI4
  loc_99F7CA: BranchF loc_99F7D8
  loc_99F7CD: FLdPr Me
  loc_99F7D0: MemLdPr RsFrm
  loc_99F7D3: Me.MovePrevious
  loc_99F7D8: FLdRfVar var_86
  loc_99F7DB: FLdPr Me
  loc_99F7DE: MemLdPr RsFrm
  loc_99F7E1:  = Me.BOF
  loc_99F7E6: FLdI2 var_86
  loc_99F7E9: FLdRfVar var_8C
  loc_99F7EC: FLdPr Me
  loc_99F7EF: MemLdPr RsFrm
  loc_99F7F2:  = Me.RecordCount
  loc_99F7F7: ILdRf var_8C
  loc_99F7FA: LitI4 0
  loc_99F7FF: GtI4
  loc_99F800: AndI4
  loc_99F801: BranchF loc_99F814
  loc_99F804: ImpAdCallFPR4 Beep()
  loc_99F809: FLdPr Me
  loc_99F80C: MemLdPr RsFrm
  loc_99F80F: Me.MoveFirst
  loc_99F814: ExitProcHresult
End Sub

Public Property Get EOF() '961E2C
  'Data Table: 415BC4
  loc_961E10: FLdRfVar var_88
  loc_961E13: FLdPr Me
  loc_961E16: MemLdPr RsFrm
  loc_961E19:  = Me.EOF
  loc_961E1E: FLdI2 var_88
  loc_961E21: FStI2 var_86
  loc_961E24: ExitProcCbHresult
End Sub

Public Property Get BOF() '961D94
  'Data Table: 415BC4
  loc_961D78: FLdRfVar var_88
  loc_961D7B: FLdPr Me
  loc_961D7E: MemLdPr RsFrm
  loc_961D81:  = Me.BOF
  loc_961D86: FLdI2 var_88
  loc_961D89: FStI2 var_86
  loc_961D8C: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '945504
  'Data Table: 415BC4
  loc_9454F4: ILdI4 sOrden
  loc_9454F7: FLdPr Me
  loc_9454FA: MemLdPr RsFrm
  loc_9454FD: Me.Sort = from_stack_1
  loc_945502: ExitProcHresult
End Sub

Public Sub Find(sFind) '9678F0
  'Data Table: 415BC4
  loc_9678D0: LitVar_Missing var_94
  loc_9678D3: PopAdLdVar
  loc_9678D4: LitI4 1
  loc_9678D9: LitI4 0
  loc_9678DE: ILdI4 sFind
  loc_9678E1: FLdPr Me
  loc_9678E4: MemLdPr RsFrm
  loc_9678E7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9678EC: ExitProcHresult
  loc_9678ED: CExtInstUnk
End Sub

Public Sub Filter(sCriterio) '94801C
  'Data Table: 415BC4
  loc_948008: ILdI4 sCriterio
  loc_94800B: CVarStr var_94
  loc_94800E: PopAdLdVar
  loc_94800F: FLdPr Me
  loc_948012: MemLdPr RsFrm
  loc_948015: Me.Filter = from_stack_1
  loc_94801A: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '961BCC
  'Data Table: 415BC4
  loc_961BB0: FLdRfVar var_8C
  loc_961BB3: FLdPr Me
  loc_961BB6: MemLdPr RsFrm
  loc_961BB9:  = Me.AbsolutePosition
  loc_961BBE: ILdRf var_8C
  loc_961BC1: FStR4 var_88
  loc_961BC4: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '961B34
  'Data Table: 415BC4
  loc_961B18: FLdRfVar var_8C
  loc_961B1B: FLdPr Me
  loc_961B1E: MemLdPr RsFrm
  loc_961B21:  = Me.RecordCount
  loc_961B26: ILdRf var_8C
  loc_961B29: FStR4 var_88
  loc_961B2C: ExitProcCbHresult
End Sub

Public Sub Encontrar(CodiNope, CucuPers, doIdCoti) 'A1ECC8
  'Data Table: 415BC4
  loc_A1EB2A: ILdRf CucuPers
  loc_A1EB2D: FStStrCopy var_88
  loc_A1EB32: On Error Resume Next
  loc_A1EB37: ILdRf CodiNope
  loc_A1EB3A: LitI4 0
  loc_A1EB3F: EqI4
  loc_A1EB40: ILdRf var_88
  loc_A1EB43: LitStr vbNullString
  loc_A1EB46: EqStr
  loc_A1EB48: AndI4
  loc_A1EB49: ILdI4 doIdCoti
  loc_A1EB4C: LitI4 0
  loc_A1EB51: EqI4
  loc_A1EB52: AndI4
  loc_A1EB53: FLdRfVar var_8C
  loc_A1EB56: FLdPr Me
  loc_A1EB59: MemLdPr RsFrm
  loc_A1EB5C:  = Me.RecordCount
  loc_A1EB61: ILdRf var_8C
  loc_A1EB64: LitI4 0
  loc_A1EB69: GtI4
  loc_A1EB6A: AndI4
  loc_A1EB6B: FLdRfVar var_90
  loc_A1EB6E: FLdPr Me
  loc_A1EB71: MemLdPr RsFrm
  loc_A1EB74:  = Me.AbsolutePosition
  loc_A1EB79: ILdRf var_90
  loc_A1EB7C: LitI4 -3
  loc_A1EB81: NeI4
  loc_A1EB82: AndI4
  loc_A1EB83: BranchF loc_A1EC3F
  loc_A1EB88: FLdRfVar var_B8
  loc_A1EB8B: FLdRfVar var_A8
  loc_A1EB8E: LitVarStr var_A4, "CodiNope"
  loc_A1EB93: PopAdLdVar
  loc_A1EB94: FLdRfVar var_94
  loc_A1EB97: FLdPr Me
  loc_A1EB9A: MemLdPr RsFrm
  loc_A1EB9D:  = Me.Fields
  loc_A1EBA2: FLdPr var_94
  loc_A1EBA5: from_stack_2 = Me.Item(from_stack_1)
  loc_A1EBAA: FLdPr var_A8
  loc_A1EBAD:  = Me.Value
  loc_A1EBB2: FLdRfVar var_B8
  loc_A1EBB5: CI4Var
  loc_A1EBB7: FStR4 CodiNope
  loc_A1EBBA: FFreeAd var_94 = ""
  loc_A1EBC1: FFree1Var var_B8 = ""
  loc_A1EBC6: FLdRfVar var_B8
  loc_A1EBC9: FLdRfVar var_A8
  loc_A1EBCC: LitVarStr var_A4, "CucuPers"
  loc_A1EBD1: PopAdLdVar
  loc_A1EBD2: FLdRfVar var_94
  loc_A1EBD5: FLdPr Me
  loc_A1EBD8: MemLdPr RsFrm
  loc_A1EBDB:  = Me.Fields
  loc_A1EBE0: FLdPr var_94
  loc_A1EBE3: from_stack_2 = Me.Item(from_stack_1)
  loc_A1EBE8: FLdPr var_A8
  loc_A1EBEB:  = Me.Value
  loc_A1EBF0: FLdRfVar var_B8
  loc_A1EBF3: CStrVarTmp
  loc_A1EBF4: FStStr var_88
  loc_A1EBF7: FFreeAd var_94 = ""
  loc_A1EBFE: FFree1Var var_B8 = ""
  loc_A1EC03: FLdRfVar var_B8
  loc_A1EC06: FLdRfVar var_A8
  loc_A1EC09: LitVarStr var_A4, "IdCoti"
  loc_A1EC0E: PopAdLdVar
  loc_A1EC0F: FLdRfVar var_94
  loc_A1EC12: FLdPr Me
  loc_A1EC15: MemLdPr RsFrm
  loc_A1EC18:  = Me.Fields
  loc_A1EC1D: FLdPr var_94
  loc_A1EC20: from_stack_2 = Me.Item(from_stack_1)
  loc_A1EC25: FLdPr var_A8
  loc_A1EC28:  = Me.Value
  loc_A1EC2D: FLdRfVar var_B8
  loc_A1EC30: CI4Var
  loc_A1EC32: IStI4 doIdCoti
  loc_A1EC35: FFreeAd var_94 = ""
  loc_A1EC3C: FFree1Var var_B8 = ""
  loc_A1EC43: Call Requery()
  loc_A1EC4A: LitStr "CodiNope = '"
  loc_A1EC4D: ILdRf CodiNope
  loc_A1EC50: CStrI4
  loc_A1EC52: FStStrNoPop var_BC
  loc_A1EC55: ConcatStr
  loc_A1EC56: FStStrNoPop var_C0
  loc_A1EC59: LitStr "'"
  loc_A1EC5C: ConcatStr
  loc_A1EC5D: PopTmpLdAdStr
  loc_A1EC61: Call Find(from_stack_1v)
  loc_A1EC66: FFreeStr var_BC = "": var_C0 = ""
  loc_A1EC71: LitStr "CucuPers = '"
  loc_A1EC74: ILdRf var_88
  loc_A1EC77: ConcatStr
  loc_A1EC78: FStStrNoPop var_BC
  loc_A1EC7B: LitStr "'"
  loc_A1EC7E: ConcatStr
  loc_A1EC7F: PopTmpLdAdStr
  loc_A1EC83: Call Find(from_stack_1v)
  loc_A1EC88: FFreeStr var_BC = ""
  loc_A1EC91: ILdI4 doIdCoti
  loc_A1EC94: LitI4 0
  loc_A1EC99: GtI4
  loc_A1EC9A: BranchF loc_A1ECC4
  loc_A1EC9F: LitStr "IdCoti = '"
  loc_A1ECA2: ILdI4 doIdCoti
  loc_A1ECA5: CStrI4
  loc_A1ECA7: FStStrNoPop var_BC
  loc_A1ECAA: ConcatStr
  loc_A1ECAB: FStStrNoPop var_C0
  loc_A1ECAE: LitStr "'"
  loc_A1ECB1: ConcatStr
  loc_A1ECB2: PopTmpLdAdStr
  loc_A1ECB6: Call Find(from_stack_1v)
  loc_A1ECBB: FFreeStr var_BC = "": var_C0 = ""
  loc_A1ECC6: ExitProcHresult
End Sub

Public Sub CreaCotizacionAutomatica(PeriInfo, CodiNope, CucuPers, PlenCoti, MaofCoti, ObseCoti) 'A23660
  'Data Table: 415BC4
  loc_A234F8: ILdRf CucuPers
  loc_A234FB: FStStrCopy var_88
  loc_A234FE: ILdRf PlenCoti
  loc_A23501: FStStrCopy var_8C
  loc_A23504: ILdRf MaofCoti
  loc_A23507: FStStrCopy var_90
  loc_A2350A: ILdRf ObseCoti
  loc_A2350D: FStStrCopy var_94
  loc_A23510: LitStr "START TRANSACTION; "
  loc_A23513: FStStrCopy var_98
  loc_A23516: OnErrorGoto loc_A2364A
  loc_A23519: ILdRf var_98
  loc_A2351C: LitStr "REPLACE INTO cotizacion (PeriInfo,CodiNope,CucuPers,FechCoti,PlenCoti,MaofCoti,ObseCoti,AltaUsua)"
  loc_A2351F: ConcatStr
  loc_A23520: FStStrNoPop var_9C
  loc_A23523: LitStr " SELECT PeriInfo, CodiNope, "
  loc_A23526: ConcatStr
  loc_A23527: FStStrNoPop var_A0
  loc_A2352A: ILdRf var_88
  loc_A2352D: ConcatStr
  loc_A2352E: FStStrNoPop var_A4
  loc_A23531: LitStr ", FechNope, '"
  loc_A23534: ConcatStr
  loc_A23535: FStStrNoPop var_A8
  loc_A23538: ILdRf var_8C
  loc_A2353B: ConcatStr
  loc_A2353C: FStStrNoPop var_AC
  loc_A2353F: LitStr "', '"
  loc_A23542: ConcatStr
  loc_A23543: FStStrNoPop var_B0
  loc_A23546: ILdRf var_90
  loc_A23549: ConcatStr
  loc_A2354A: FStStrNoPop var_B4
  loc_A2354D: LitStr "', '"
  loc_A23550: ConcatStr
  loc_A23551: FStStrNoPop var_B8
  loc_A23554: ILdRf var_94
  loc_A23557: ConcatStr
  loc_A23558: FStStrNoPop var_BC
  loc_A2355B: LitStr "', '"
  loc_A2355E: ConcatStr
  loc_A2355F: FStStrNoPop var_C0
  loc_A23562: ImpAdLdI4 MemVar_C3D03C
  loc_A23565: ConcatStr
  loc_A23566: FStStrNoPop var_C4
  loc_A23569: LitStr "'"
  loc_A2356C: ConcatStr
  loc_A2356D: FStStrNoPop var_C8
  loc_A23570: LitStr " FROM notapedido"
  loc_A23573: ConcatStr
  loc_A23574: FStStrNoPop var_CC
  loc_A23577: LitStr " WHERE PeriInfo = "
  loc_A2357A: ConcatStr
  loc_A2357B: FStStrNoPop var_D0
  loc_A2357E: FLdI2 PeriInfo
  loc_A23581: CStrUI1
  loc_A23583: FStStrNoPop var_D4
  loc_A23586: ConcatStr
  loc_A23587: FStStrNoPop var_D8
  loc_A2358A: LitStr " AND CodiNope = "
  loc_A2358D: ConcatStr
  loc_A2358E: FStStrNoPop var_DC
  loc_A23591: ILdRf CodiNope
  loc_A23594: CStrI4
  loc_A23596: FStStrNoPop var_E0
  loc_A23599: ConcatStr
  loc_A2359A: FStStrNoPop var_E4
  loc_A2359D: LitStr ";"
  loc_A235A0: ConcatStr
  loc_A235A1: FStStr var_98
  loc_A235A4: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_A235CD: ILdRf var_98
  loc_A235D0: LitStr "REPLACE INTO itemcotizacion (IdCoti,PeriInfo,CodiNope,CodiItco,AlteItco,DetaItco,CaraItco,CodiInsu,CantItco,ImunItco,AltaUsua)"
  loc_A235D3: ConcatStr
  loc_A235D4: FStStrNoPop var_9C
  loc_A235D7: LitStr " SELECT (SELECT LAST_INSERT_ID()), PeriInfo, CodiNope, CodiItno, 0, DetaItno, CaraItno, CodiInsu, CantItno, ImunItno, '"
  loc_A235DA: ConcatStr
  loc_A235DB: FStStrNoPop var_A0
  loc_A235DE: ImpAdLdI4 MemVar_C3D03C
  loc_A235E1: ConcatStr
  loc_A235E2: FStStrNoPop var_A4
  loc_A235E5: LitStr "'"
  loc_A235E8: ConcatStr
  loc_A235E9: FStStrNoPop var_A8
  loc_A235EC: LitStr " FROM itemnota"
  loc_A235EF: ConcatStr
  loc_A235F0: FStStrNoPop var_AC
  loc_A235F3: LitStr " WHERE PeriInfo = "
  loc_A235F6: ConcatStr
  loc_A235F7: FStStrNoPop var_B0
  loc_A235FA: FLdI2 PeriInfo
  loc_A235FD: CStrUI1
  loc_A235FF: FStStrNoPop var_B4
  loc_A23602: ConcatStr
  loc_A23603: FStStrNoPop var_B8
  loc_A23606: LitStr " AND CodiNope = "
  loc_A23609: ConcatStr
  loc_A2360A: FStStrNoPop var_BC
  loc_A2360D: ILdRf CodiNope
  loc_A23610: CStrI4
  loc_A23612: FStStrNoPop var_C0
  loc_A23615: ConcatStr
  loc_A23616: FStStrNoPop var_C4
  loc_A23619: LitStr ";"
  loc_A2361C: ConcatStr
  loc_A2361D: FStStr var_98
  loc_A23620: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_A23639: ILdRf var_98
  loc_A2363C: Call EjecutarRsCls(from_stack_1v)
  loc_A23641: LitStr "COMMIT;"
  loc_A23644: Call EjecutarRsCls(from_stack_1v)
  loc_A23649: ExitProcHresult
  loc_A2364A: LitStr "ROLLBACK;"
  loc_A2364D: Call EjecutarRsCls(from_stack_1v)
  loc_A23652: LitI4 0
  loc_A23657: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_A2365A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A2365F: ExitProcHresult
End Sub

Public Function AddNew(CodiNope, CucuPers, FechCoti, PlenCoti, MaofCoti, ObseCoti, ItemNotaFlex) 'AA4264
  'Data Table: 415BC4
  loc_AA3E14: ILdRf CucuPers
  loc_AA3E17: FStStrCopy var_8C
  loc_AA3E1A: ILdRf FechCoti
  loc_AA3E1D: FStStrCopy var_90
  loc_AA3E20: ILdRf PlenCoti
  loc_AA3E23: FStStrCopy AddNew
  loc_AA3E26: ILdRf MaofCoti
  loc_AA3E29: FStStrCopy var_98
  loc_AA3E2C: ILdRf ObseCoti
  loc_AA3E2F: FStStrCopy var_9C
  loc_AA3E32: LitStr "START TRANSACTION; "
  loc_AA3E35: FStStrCopy var_A8
  loc_AA3E38: OnErrorGoto loc_AA4244
  loc_AA3E3B: ILdRf var_A8
  loc_AA3E3E: LitStr "INSERT INTO cotizacion (PeriInfo,CodiNope,CucuPers,FechCoti,PlenCoti,MaofCoti,ObseCoti,AltaUsua)"
  loc_AA3E41: ConcatStr
  loc_AA3E42: FStStrNoPop var_AC
  loc_AA3E45: LitStr " VALUES ("
  loc_AA3E48: ConcatStr
  loc_AA3E49: FStStrNoPop var_B0
  loc_AA3E4C: ImpAdLdI2 MemVar_C3D064
  loc_AA3E4F: CStrUI1
  loc_AA3E51: FStStrNoPop var_B4
  loc_AA3E54: ConcatStr
  loc_AA3E55: FStStrNoPop var_B8
  loc_AA3E58: LitStr ","
  loc_AA3E5B: ConcatStr
  loc_AA3E5C: FStStrNoPop var_BC
  loc_AA3E5F: ILdRf CodiNope
  loc_AA3E62: CStrI4
  loc_AA3E64: FStStrNoPop var_C0
  loc_AA3E67: ConcatStr
  loc_AA3E68: FStStrNoPop var_C4
  loc_AA3E6B: LitStr ",'"
  loc_AA3E6E: ConcatStr
  loc_AA3E6F: FStStrNoPop var_C8
  loc_AA3E72: ILdRf var_8C
  loc_AA3E75: ConcatStr
  loc_AA3E76: FStStrNoPop var_CC
  loc_AA3E79: LitStr "','"
  loc_AA3E7C: ConcatStr
  loc_AA3E7D: FStStrNoPop var_100
  loc_AA3E80: LitI4 1
  loc_AA3E85: LitI4 1
  loc_AA3E8A: LitVarStr var_EC, "yyyy-mm-dd"
  loc_AA3E8F: FStVarCopyObj var_FC
  loc_AA3E92: FLdRfVar var_FC
  loc_AA3E95: FLdRfVar var_90
  loc_AA3E98: CVarRef
  loc_AA3E9D: ImpAdCallI2 Format$(, )
  loc_AA3EA2: FStStrNoPop var_104
  loc_AA3EA5: ConcatStr
  loc_AA3EA6: FStStrNoPop var_108
  loc_AA3EA9: LitStr "','"
  loc_AA3EAC: ConcatStr
  loc_AA3EAD: FStStrNoPop var_10C
  loc_AA3EB0: ILdRf AddNew
  loc_AA3EB3: ConcatStr
  loc_AA3EB4: FStStrNoPop var_110
  loc_AA3EB7: LitStr "','"
  loc_AA3EBA: ConcatStr
  loc_AA3EBB: FStStrNoPop var_114
  loc_AA3EBE: ILdRf var_98
  loc_AA3EC1: ConcatStr
  loc_AA3EC2: FStStrNoPop var_118
  loc_AA3EC5: LitStr "','"
  loc_AA3EC8: ConcatStr
  loc_AA3EC9: FStStrNoPop var_11C
  loc_AA3ECC: ILdRf var_9C
  loc_AA3ECF: ConcatStr
  loc_AA3ED0: FStStrNoPop var_120
  loc_AA3ED3: LitStr "','"
  loc_AA3ED6: ConcatStr
  loc_AA3ED7: FStStrNoPop var_124
  loc_AA3EDA: ImpAdLdI4 MemVar_C3D03C
  loc_AA3EDD: ConcatStr
  loc_AA3EDE: FStStrNoPop var_128
  loc_AA3EE1: LitStr "'); "
  loc_AA3EE4: ConcatStr
  loc_AA3EE5: FStStr var_A8
  loc_AA3EE8: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_AA3F13: FFree1Var var_FC = ""
  loc_AA3F16: LitI2_Byte 1
  loc_AA3F18: FLdRfVar var_9E
  loc_AA3F1B: ILdPr
  loc_AA3F1E: LateIdLdVar var_FC DispID_4 0
  loc_AA3F25: CI4Var
  loc_AA3F27: LitI4 1
  loc_AA3F2C: SubI4
  loc_AA3F2D: CI2I4
  loc_AA3F2E: FFree1Var var_FC = ""
  loc_AA3F31: ForI2 var_12C
  loc_AA3F37: FLdI2 var_9E
  loc_AA3F3A: CI4UI1
  loc_AA3F3B: CVarI4
  loc_AA3F3F: PopAdLdVar
  loc_AA3F40: LitVarI4
  loc_AA3F48: PopAdLdVar
  loc_AA3F49: ILdPr
  loc_AA3F4C: LateIdCallLdVar
  loc_AA3F56: CStrVarTmp
  loc_AA3F57: FStStrNoPop var_AC
  loc_AA3F5A: LitStr vbNullString
  loc_AA3F5D: NeStr
  loc_AA3F5F: FFree1Str var_AC
  loc_AA3F62: FFree1Var var_FC = ""
  loc_AA3F65: BranchF loc_AA420E
  loc_AA3F68: FLdI2 var_9E
  loc_AA3F6B: CI4UI1
  loc_AA3F6C: CVarI4
  loc_AA3F70: PopAdLdVar
  loc_AA3F71: LitVarI4
  loc_AA3F79: PopAdLdVar
  loc_AA3F7A: ILdPr
  loc_AA3F7D: LateIdCallLdVar
  loc_AA3F87: PopAd
  loc_AA3F89: LitI4 0
  loc_AA3F8E: LitI4 -1
  loc_AA3F93: LitI4 1
  loc_AA3F98: LitStr vbNullString
  loc_AA3F9B: LitStr "."
  loc_AA3F9E: FLdRfVar var_FC
  loc_AA3FA1: CStrVarTmp
  loc_AA3FA2: FStStrNoPop var_AC
  loc_AA3FA5: ImpAdCallI2 Replace(, , , , , )
  loc_AA3FAA: FStStr var_A4
  loc_AA3FAD: FFree1Str var_AC
  loc_AA3FB0: FFree1Var var_FC = ""
  loc_AA3FB3: LitI4 0
  loc_AA3FB8: LitI4 -1
  loc_AA3FBD: LitI4 1
  loc_AA3FC2: LitStr "."
  loc_AA3FC5: LitStr ","
  loc_AA3FC8: ILdRf var_A4
  loc_AA3FCB: ImpAdCallI2 Replace(, , , , , )
  loc_AA3FD0: FStStr var_A4
  loc_AA3FD3: FLdI2 var_9E
  loc_AA3FD6: CI4UI1
  loc_AA3FD7: CVarI4
  loc_AA3FDB: PopAdLdVar
  loc_AA3FDC: LitVarI4
  loc_AA3FE4: PopAdLdVar
  loc_AA3FE5: ILdPr
  loc_AA3FE8: LateIdCallLdVar
  loc_AA3FF2: PopAd
  loc_AA3FF4: ILdRf var_A8
  loc_AA3FF7: LitStr "INSERT INTO itemcotizacion (IdCoti,PeriInfo,CodiNope,CodiItco,AlteItco,DetaItco,CaraItco,CodiInsu,CantItco,ImunItco,MarcaItco,AltaUsua)"
  loc_AA3FFA: ConcatStr
  loc_AA3FFB: FStStrNoPop var_AC
  loc_AA3FFE: LitStr " VALUES ( (SELECT LAST_INSERT_ID() ),"
  loc_AA4001: ConcatStr
  loc_AA4002: FStStrNoPop var_B0
  loc_AA4005: ImpAdLdI2 MemVar_C3D064
  loc_AA4008: CStrUI1
  loc_AA400A: FStStrNoPop var_B4
  loc_AA400D: ConcatStr
  loc_AA400E: FStStrNoPop var_B8
  loc_AA4011: LitStr ","
  loc_AA4014: ConcatStr
  loc_AA4015: FStStrNoPop var_BC
  loc_AA4018: ILdRf CodiNope
  loc_AA401B: CStrI4
  loc_AA401D: FStStrNoPop var_C0
  loc_AA4020: ConcatStr
  loc_AA4021: FStStrNoPop var_C4
  loc_AA4024: LitStr ","
  loc_AA4027: ConcatStr
  loc_AA4028: FStStrNoPop var_C8
  loc_AA402B: FLdI2 var_9E
  loc_AA402E: CI4UI1
  loc_AA402F: CVarI4
  loc_AA4033: PopAdLdVar
  loc_AA4034: LitVarI4
  loc_AA403C: PopAdLdVar
  loc_AA403D: ILdPr
  loc_AA4040: LateIdCallLdVar
  loc_AA404A: CStrVarTmp
  loc_AA404B: FStStrNoPop var_CC
  loc_AA404E: ConcatStr
  loc_AA404F: FStStrNoPop var_100
  loc_AA4052: LitStr ","
  loc_AA4055: ConcatStr
  loc_AA4056: FStStrNoPop var_104
  loc_AA4059: FLdI2 var_9E
  loc_AA405C: CI4UI1
  loc_AA405D: CVarI4
  loc_AA4061: PopAdLdVar
  loc_AA4062: LitVarI4
  loc_AA406A: PopAdLdVar
  loc_AA406B: ILdPr
  loc_AA406E: LateIdCallLdVar
  loc_AA4078: CStrVarTmp
  loc_AA4079: FStStrNoPop var_108
  loc_AA407C: ConcatStr
  loc_AA407D: FStStrNoPop var_10C
  loc_AA4080: LitStr ",'"
  loc_AA4083: ConcatStr
  loc_AA4084: FStStrNoPop var_114
  loc_AA4087: FLdI2 var_9E
  loc_AA408A: CI4UI1
  loc_AA408B: CVarI4
  loc_AA408F: PopAdLdVar
  loc_AA4090: LitVarI4
  loc_AA4098: PopAdLdVar
  loc_AA4099: ILdPr
  loc_AA409C: LateIdCallLdVar
  loc_AA40A6: CStrVarTmp
  loc_AA40A7: FStStrNoPop var_110
  loc_AA40AA: ImpAdCallI2 Trim$()
  loc_AA40AF: FStStrNoPop var_118
  loc_AA40B2: ConcatStr
  loc_AA40B3: FStStrNoPop var_11C
  loc_AA40B6: LitStr "','"
  loc_AA40B9: ConcatStr
  loc_AA40BA: FStStrNoPop var_124
  loc_AA40BD: FLdI2 var_9E
  loc_AA40C0: CI4UI1
  loc_AA40C1: CVarI4
  loc_AA40C5: PopAdLdVar
  loc_AA40C6: LitVarI4
  loc_AA40CE: PopAdLdVar
  loc_AA40CF: ILdPr
  loc_AA40D2: LateIdCallLdVar
  loc_AA40DC: CStrVarTmp
  loc_AA40DD: FStStrNoPop var_120
  loc_AA40E0: ImpAdCallI2 Trim$()
  loc_AA40E5: FStStrNoPop var_128
  loc_AA40E8: ConcatStr
  loc_AA40E9: FStStrNoPop var_240
  loc_AA40EC: LitStr "',"
  loc_AA40EF: ConcatStr
  loc_AA40F0: FStStrNoPop var_294
  loc_AA40F3: FLdI2 var_9E
  loc_AA40F6: CI4UI1
  loc_AA40F7: CVarI4
  loc_AA40FB: PopAdLdVar
  loc_AA40FC: LitVarI4
  loc_AA4104: PopAdLdVar
  loc_AA4105: ILdPr
  loc_AA4108: LateIdCallLdVar
  loc_AA4112: CStrVarTmp
  loc_AA4113: FStStrNoPop var_298
  loc_AA4116: ConcatStr
  loc_AA4117: FStStrNoPop var_29C
  loc_AA411A: LitStr ","
  loc_AA411D: ConcatStr
  loc_AA411E: FStStrNoPop var_2F4
  loc_AA4121: LitI4 0
  loc_AA4126: LitI4 -1
  loc_AA412B: LitI4 1
  loc_AA4130: LitStr "."
  loc_AA4133: LitStr ","
  loc_AA4136: FLdRfVar var_2EC
  loc_AA4139: CStrVarTmp
  loc_AA413A: FStStrNoPop var_2F0
  loc_AA413D: ImpAdCallI2 Replace(, , , , , )
  loc_AA4142: FStStrNoPop var_2F8
  loc_AA4145: ConcatStr
  loc_AA4146: FStStrNoPop var_2FC
  loc_AA4149: LitStr ","
  loc_AA414C: ConcatStr
  loc_AA414D: FStStrNoPop var_300
  loc_AA4150: ILdRf var_A4
  loc_AA4153: ConcatStr
  loc_AA4154: FStStrNoPop var_304
  loc_AA4157: LitStr ",'"
  loc_AA415A: ConcatStr
  loc_AA415B: CVarStr var_384
  loc_AA415E: FLdI2 var_9E
  loc_AA4161: CI4UI1
  loc_AA4162: CVarI4
  loc_AA4166: PopAdLdVar
  loc_AA4167: LitVarI4
  loc_AA416F: PopAdLdVar
  loc_AA4170: ILdPr
  loc_AA4173: LateIdCallLdVar
  loc_AA417D: CStrVarTmp
  loc_AA417E: CVarStr var_364
  loc_AA4181: FLdRfVar var_374
  loc_AA4184: ImpAdCallFPR4  = Trim()
  loc_AA4189: FLdRfVar var_374
  loc_AA418C: ConcatVar var_394
  loc_AA4190: LitVarStr var_3A4, "','"
  loc_AA4195: ConcatVar var_3B4
  loc_AA4199: ImpAdLdI4 MemVar_C3D03C
  loc_AA419C: CVarStr var_3C4
  loc_AA419F: ConcatVar var_3D4
  loc_AA41A3: LitVarStr var_3E4, "'); "
  loc_AA41A8: ConcatVar var_3F4
  loc_AA41AC: CStrVarTmp
  loc_AA41AD: FStStr var_A8
  loc_AA41B0: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_240 = "": var_294 = "": var_298 = "": var_29C = "": var_2F0 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = ""
  loc_AA41EF: FFreeVar var_FC = "": var_19C = "": var_1EC = "": var_23C = "": var_290 = "": var_2EC = "": var_354 = "": var_364 = "": var_384 = "": var_374 = "": var_394 = "": var_3B4 = "": var_3D4 = ""
  loc_AA420E: FLdRfVar var_9E
  loc_AA4211: NextI2 var_12C, loc_AA3F37
  loc_AA4216: ILdRf var_A8
  loc_AA4219: Call EjecutarRsCls(from_stack_1v)
  loc_AA421E: LitStr "COMMIT;"
  loc_AA4221: Call EjecutarRsCls(from_stack_1v)
  loc_AA4226: LitI4 0
  loc_AA422B: PopTmpLdAdStr var_3F8
  loc_AA422E: ILdRf var_8C
  loc_AA4231: ILdRf CodiNope
  loc_AA4234: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AA4239: LitI2_Byte &HFF
  loc_AA423B: FStI2 var_86
  loc_AA423E: ExitProcCbHresult
  loc_AA4244: LitStr "ROLLBACK;"
  loc_AA4247: Call EjecutarRsCls(from_stack_1v)
  loc_AA424C: LitI4 0
  loc_AA4251: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_AA4254: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AA4259: LitI2_Byte 0
  loc_AA425B: FStI2 var_86
  loc_AA425E: ExitProcCbHresult
End Function

Public Function Modificar(IdCoti, CodiNope, CucuPers, FechCoti, PlenCoti, MaofCoti, ObseCoti, ItemNotaFlex) 'AA47B0
  'Data Table: 415BC4
  loc_AA4360: ILdRf CucuPers
  loc_AA4363: FStStrCopy var_8C
  loc_AA4366: ILdRf FechCoti
  loc_AA4369: FStStrCopy var_90
  loc_AA436C: ILdRf PlenCoti
  loc_AA436F: FStStrCopy Modificar
  loc_AA4372: ILdRf MaofCoti
  loc_AA4375: FStStrCopy var_98
  loc_AA4378: ILdRf ObseCoti
  loc_AA437B: FStStrCopy var_9C
  loc_AA437E: LitStr "START TRANSACTION;"
  loc_AA4381: Call EjecutarRsCls(from_stack_1v)
  loc_AA4386: OnErrorGoto loc_AA478D
  loc_AA4389: LitStr "UPDATE cotizacion "
  loc_AA438C: LitStr " SET FechCoti="
  loc_AA438F: ConcatStr
  loc_AA4390: FStStrNoPop var_D8
  loc_AA4393: LitI4 1
  loc_AA4398: LitI4 1
  loc_AA439D: LitVarStr var_C4, "'yyyy-mm-dd'"
  loc_AA43A2: FStVarCopyObj var_D4
  loc_AA43A5: FLdRfVar var_D4
  loc_AA43A8: FLdRfVar var_90
  loc_AA43AB: CVarRef
  loc_AA43B0: ImpAdCallI2 Format$(, )
  loc_AA43B5: FStStrNoPop var_DC
  loc_AA43B8: ConcatStr
  loc_AA43B9: FStStrNoPop var_E0
  loc_AA43BC: LitStr ",PlenCoti='"
  loc_AA43BF: ConcatStr
  loc_AA43C0: FStStrNoPop var_E4
  loc_AA43C3: ILdRf Modificar
  loc_AA43C6: ConcatStr
  loc_AA43C7: FStStrNoPop var_E8
  loc_AA43CA: LitStr "',MaofCoti='"
  loc_AA43CD: ConcatStr
  loc_AA43CE: FStStrNoPop var_EC
  loc_AA43D1: ILdRf var_98
  loc_AA43D4: ConcatStr
  loc_AA43D5: FStStrNoPop var_F0
  loc_AA43D8: LitStr "',ObseCoti='"
  loc_AA43DB: ConcatStr
  loc_AA43DC: FStStrNoPop var_F4
  loc_AA43DF: ILdRf var_9C
  loc_AA43E2: ConcatStr
  loc_AA43E3: FStStrNoPop var_F8
  loc_AA43E6: LitStr "',ModiUsua='"
  loc_AA43E9: ConcatStr
  loc_AA43EA: FStStrNoPop var_FC
  loc_AA43ED: ImpAdLdI4 MemVar_C3D03C
  loc_AA43F0: ConcatStr
  loc_AA43F1: FStStrNoPop var_100
  loc_AA43F4: LitStr "',ModiFeho=Now() "
  loc_AA43F7: ConcatStr
  loc_AA43F8: FStStrNoPop var_104
  loc_AA43FB: LitStr "WHERE IdCoti = "
  loc_AA43FE: ConcatStr
  loc_AA43FF: FStStrNoPop var_108
  loc_AA4402: ILdRf IdCoti
  loc_AA4405: CStrI4
  loc_AA4407: FStStrNoPop var_10C
  loc_AA440A: ConcatStr
  loc_AA440B: FStStrNoPop var_110
  loc_AA440E: LitStr ";"
  loc_AA4411: ConcatStr
  loc_AA4412: FStStrNoPop var_114
  loc_AA4415: Call EjecutarRsCls(from_stack_1v)
  loc_AA441A: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_AA443D: FFree1Var var_D4 = ""
  loc_AA4440: LitStr "DELETE FROM itemcotizacion WHERE IdCoti = "
  loc_AA4443: ILdRf IdCoti
  loc_AA4446: CStrI4
  loc_AA4448: FStStrNoPop var_D8
  loc_AA444B: ConcatStr
  loc_AA444C: FStStrNoPop var_DC
  loc_AA444F: LitStr ";"
  loc_AA4452: ConcatStr
  loc_AA4453: FStStrNoPop var_E0
  loc_AA4456: Call EjecutarRsCls(from_stack_1v)
  loc_AA445B: FFreeStr var_D8 = "": var_DC = ""
  loc_AA4464: LitI2_Byte 1
  loc_AA4466: FLdRfVar var_9E
  loc_AA4469: ILdPr
  loc_AA446C: LateIdLdVar var_D4 DispID_4 0
  loc_AA4473: CI4Var
  loc_AA4475: LitI4 1
  loc_AA447A: SubI4
  loc_AA447B: CI2I4
  loc_AA447C: FFree1Var var_D4 = ""
  loc_AA447F: ForI2 var_118
  loc_AA4485: FLdI2 var_9E
  loc_AA4488: CI4UI1
  loc_AA4489: CVarI4
  loc_AA448D: PopAdLdVar
  loc_AA448E: LitVarI4
  loc_AA4496: PopAdLdVar
  loc_AA4497: ILdPr
  loc_AA449A: LateIdCallLdVar
  loc_AA44A4: CStrVarTmp
  loc_AA44A5: FStStrNoPop var_D8
  loc_AA44A8: LitStr vbNullString
  loc_AA44AB: NeStr
  loc_AA44AD: FFree1Str var_D8
  loc_AA44B0: FFree1Var var_D4 = ""
  loc_AA44B3: BranchF loc_AA475F
  loc_AA44B6: FLdI2 var_9E
  loc_AA44B9: CI4UI1
  loc_AA44BA: CVarI4
  loc_AA44BE: PopAdLdVar
  loc_AA44BF: LitVarI4
  loc_AA44C7: PopAdLdVar
  loc_AA44C8: ILdPr
  loc_AA44CB: LateIdCallLdVar
  loc_AA44D5: PopAd
  loc_AA44D7: LitI4 0
  loc_AA44DC: LitI4 -1
  loc_AA44E1: LitI4 1
  loc_AA44E6: LitStr vbNullString
  loc_AA44E9: LitStr "."
  loc_AA44EC: FLdRfVar var_D4
  loc_AA44EF: CStrVarTmp
  loc_AA44F0: FStStrNoPop var_D8
  loc_AA44F3: ImpAdCallI2 Replace(, , , , , )
  loc_AA44F8: FStStr var_A4
  loc_AA44FB: FFree1Str var_D8
  loc_AA44FE: FFree1Var var_D4 = ""
  loc_AA4501: LitI4 0
  loc_AA4506: LitI4 -1
  loc_AA450B: LitI4 1
  loc_AA4510: LitStr "."
  loc_AA4513: LitStr ","
  loc_AA4516: ILdRf var_A4
  loc_AA4519: ImpAdCallI2 Replace(, , , , , )
  loc_AA451E: FStStr var_A4
  loc_AA4521: FLdI2 var_9E
  loc_AA4524: CI4UI1
  loc_AA4525: CVarI4
  loc_AA4529: PopAdLdVar
  loc_AA452A: LitVarI4
  loc_AA4532: PopAdLdVar
  loc_AA4533: ILdPr
  loc_AA4536: LateIdCallLdVar
  loc_AA4540: PopAd
  loc_AA4542: LitStr "INSERT INTO itemcotizacion (IdCoti,PeriInfo,CodiNope,CodiItco,AlteItco,DetaItco,CaraItco,CodiInsu,CantItco,ImunItco,MarcaItco,ModiUsua,ModiFeho)"
  loc_AA4545: LitStr " VALUES ("
  loc_AA4548: ConcatStr
  loc_AA4549: FStStrNoPop var_D8
  loc_AA454C: ILdRf IdCoti
  loc_AA454F: CStrI4
  loc_AA4551: FStStrNoPop var_DC
  loc_AA4554: ConcatStr
  loc_AA4555: FStStrNoPop var_E0
  loc_AA4558: LitStr ","
  loc_AA455B: ConcatStr
  loc_AA455C: FStStrNoPop var_E4
  loc_AA455F: ImpAdLdI2 MemVar_C3D064
  loc_AA4562: CStrUI1
  loc_AA4564: FStStrNoPop var_E8
  loc_AA4567: ConcatStr
  loc_AA4568: FStStrNoPop var_EC
  loc_AA456B: LitStr ","
  loc_AA456E: ConcatStr
  loc_AA456F: FStStrNoPop var_F0
  loc_AA4572: ILdRf CodiNope
  loc_AA4575: CStrI4
  loc_AA4577: FStStrNoPop var_F4
  loc_AA457A: ConcatStr
  loc_AA457B: FStStrNoPop var_F8
  loc_AA457E: LitStr ","
  loc_AA4581: ConcatStr
  loc_AA4582: FStStrNoPop var_FC
  loc_AA4585: FLdI2 var_9E
  loc_AA4588: CI4UI1
  loc_AA4589: CVarI4
  loc_AA458D: PopAdLdVar
  loc_AA458E: LitVarI4
  loc_AA4596: PopAdLdVar
  loc_AA4597: ILdPr
  loc_AA459A: LateIdCallLdVar
  loc_AA45A4: CStrVarTmp
  loc_AA45A5: FStStrNoPop var_100
  loc_AA45A8: ConcatStr
  loc_AA45A9: FStStrNoPop var_104
  loc_AA45AC: LitStr ","
  loc_AA45AF: ConcatStr
  loc_AA45B0: FStStrNoPop var_108
  loc_AA45B3: FLdI2 var_9E
  loc_AA45B6: CI4UI1
  loc_AA45B7: CVarI4
  loc_AA45BB: PopAdLdVar
  loc_AA45BC: LitVarI4
  loc_AA45C4: PopAdLdVar
  loc_AA45C5: ILdPr
  loc_AA45C8: LateIdCallLdVar
  loc_AA45D2: CStrVarTmp
  loc_AA45D3: FStStrNoPop var_10C
  loc_AA45D6: ConcatStr
  loc_AA45D7: FStStrNoPop var_110
  loc_AA45DA: LitStr ",'"
  loc_AA45DD: ConcatStr
  loc_AA45DE: FStStrNoPop var_114
  loc_AA45E1: FLdI2 var_9E
  loc_AA45E4: CI4UI1
  loc_AA45E5: CVarI4
  loc_AA45E9: PopAdLdVar
  loc_AA45EA: LitVarI4
  loc_AA45F2: PopAdLdVar
  loc_AA45F3: ILdPr
  loc_AA45F6: LateIdCallLdVar
  loc_AA4600: CStrVarTmp
  loc_AA4601: FStStrNoPop var_1DC
  loc_AA4604: ConcatStr
  loc_AA4605: FStStrNoPop var_1E0
  loc_AA4608: LitStr "','"
  loc_AA460B: ConcatStr
  loc_AA460C: FStStrNoPop var_234
  loc_AA460F: FLdI2 var_9E
  loc_AA4612: CI4UI1
  loc_AA4613: CVarI4
  loc_AA4617: PopAdLdVar
  loc_AA4618: LitVarI4
  loc_AA4620: PopAdLdVar
  loc_AA4621: ILdPr
  loc_AA4624: LateIdCallLdVar
  loc_AA462E: CStrVarTmp
  loc_AA462F: FStStrNoPop var_238
  loc_AA4632: ConcatStr
  loc_AA4633: FStStrNoPop var_23C
  loc_AA4636: LitStr "',"
  loc_AA4639: ConcatStr
  loc_AA463A: FStStrNoPop var_290
  loc_AA463D: FLdI2 var_9E
  loc_AA4640: CI4UI1
  loc_AA4641: CVarI4
  loc_AA4645: PopAdLdVar
  loc_AA4646: LitVarI4
  loc_AA464E: PopAdLdVar
  loc_AA464F: ILdPr
  loc_AA4652: LateIdCallLdVar
  loc_AA465C: CStrVarTmp
  loc_AA465D: FStStrNoPop var_294
  loc_AA4660: ConcatStr
  loc_AA4661: FStStrNoPop var_298
  loc_AA4664: LitStr ","
  loc_AA4667: ConcatStr
  loc_AA4668: FStStrNoPop var_2F0
  loc_AA466B: LitI4 0
  loc_AA4670: LitI4 -1
  loc_AA4675: LitI4 1
  loc_AA467A: LitStr "."
  loc_AA467D: LitStr ","
  loc_AA4680: FLdRfVar var_2E8
  loc_AA4683: CStrVarTmp
  loc_AA4684: FStStrNoPop var_2EC
  loc_AA4687: ImpAdCallI2 Replace(, , , , , )
  loc_AA468C: FStStrNoPop var_2F4
  loc_AA468F: ConcatStr
  loc_AA4690: FStStrNoPop var_2F8
  loc_AA4693: LitStr ","
  loc_AA4696: ConcatStr
  loc_AA4697: FStStrNoPop var_2FC
  loc_AA469A: ILdRf var_A4
  loc_AA469D: ConcatStr
  loc_AA469E: FStStrNoPop var_300
  loc_AA46A1: LitStr ",'"
  loc_AA46A4: ConcatStr
  loc_AA46A5: CVarStr var_380
  loc_AA46A8: FLdI2 var_9E
  loc_AA46AB: CI4UI1
  loc_AA46AC: CVarI4
  loc_AA46B0: PopAdLdVar
  loc_AA46B1: LitVarI4
  loc_AA46B9: PopAdLdVar
  loc_AA46BA: ILdPr
  loc_AA46BD: LateIdCallLdVar
  loc_AA46C7: CStrVarTmp
  loc_AA46C8: CVarStr var_360
  loc_AA46CB: FLdRfVar var_370
  loc_AA46CE: ImpAdCallFPR4  = Trim()
  loc_AA46D3: FLdRfVar var_370
  loc_AA46D6: ConcatVar var_390
  loc_AA46DA: LitVarStr var_3A0, "','"
  loc_AA46DF: ConcatVar var_3B0
  loc_AA46E3: ImpAdLdI4 MemVar_C3D03C
  loc_AA46E6: CVarStr var_3C0
  loc_AA46E9: ConcatVar var_3D0
  loc_AA46ED: LitVarStr var_3E0, "',Now());"
  loc_AA46F2: ConcatVar var_3F0
  loc_AA46F6: CStrVarVal var_3F4
  loc_AA46FA: Call EjecutarRsCls(from_stack_1v)
  loc_AA46FF: FFreeStr var_3F4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_1DC = "": var_1E0 = "": var_234 = "": var_238 = "": var_23C = "": var_290 = "": var_294 = "": var_298 = "": var_2EC = "": var_2F0 = "": var_2F4 = "": var_2F8 = "": var_2FC = ""
  loc_AA4740: FFreeVar var_D4 = "": var_188 = "": var_1D8 = "": var_230 = "": var_28C = "": var_2E8 = "": var_350 = "": var_360 = "": var_380 = "": var_370 = "": var_390 = "": var_3B0 = "": var_3D0 = ""
  loc_AA475F: FLdRfVar var_9E
  loc_AA4762: NextI2 var_118, loc_AA4485
  loc_AA4767: LitStr "COMMIT;"
  loc_AA476A: Call EjecutarRsCls(from_stack_1v)
  loc_AA476F: LitI2_Byte &HFF
  loc_AA4771: FStI2 var_86
  loc_AA4774: LitI4 0
  loc_AA4779: PopTmpLdAdStr var_3F8
  loc_AA477C: ILdRf var_8C
  loc_AA477F: ILdRf CodiNope
  loc_AA4782: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AA4787: ExitProcCbHresult
  loc_AA478D: LitStr "ROLLBACK;"
  loc_AA4790: Call EjecutarRsCls(from_stack_1v)
  loc_AA4795: LitI4 0
  loc_AA479A: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_AA479D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AA47A2: LitI2_Byte 0
  loc_AA47A4: FStI2 var_86
  loc_AA47A7: ExitProcCbHresult
  loc_AA47AD: SetLastSystemError
End Function

Public Sub RedefineRS(sSelect) '971948
  'Data Table: 415BC4
  loc_971920: ILdRf sSelect
  loc_971923: FStStrCopy var_88
  loc_971926: FLdPr Me
  loc_971929: MemLdRfVar from_stack_1.RsFrm
  loc_97192C: ILdRf var_88
  loc_97192F: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_971934: LitVarStr var_98, "Primary"
  loc_971939: PopAdLdVar
  loc_97193A: FLdPr Me
  loc_97193D: LateIdCall
  loc_971945: ExitProcHresult
  loc_971946: LitStr "StrFormMemory_0"
End Sub

Public Sub EjecutarRsCls(sSelect) '961A98
  'Data Table: 415BC4
  loc_961A80: ILdRf sSelect
  loc_961A83: FStStrCopy var_88
  loc_961A86: FLdPr Me
  loc_961A89: MemLdRfVar from_stack_1.global_56
  loc_961A8C: ILdRf var_88
  loc_961A8F: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_961A94: ExitProcHresult
End Sub

Public Sub Requery() '967940
  'Data Table: 415BC4
  loc_967920: FLdPr Me
  loc_967923: MemLdRfVar from_stack_1.RsFrm
  loc_967926: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_96792B: LitVarStr var_94, "Primary"
  loc_967930: PopAdLdVar
  loc_967931: FLdPr Me
  loc_967934: LateIdCall
  loc_96793C: ExitProcHresult
  loc_96793D: FStStrNoPop var_BC
End Sub

Public Property Get DataSource() '9718E8
  'Data Table: 415BC4
  loc_9718C4: ZeroRetVal
  loc_9718C6: FLdRfVar var_8C
  loc_9718C9: FLdPr Me
  loc_9718CC: MemLdPr RsFrm
  loc_9718CF:  = Me.DataSource
  loc_9718D4: ILdRf var_8C
  loc_9718D7: CastAd
  loc_9718DA: FStAdFunc var_88
  loc_9718DD: FFree1Ad var_8C
  loc_9718E0: ExitProcCbHresult
End Sub

Public Function ExisteProveedor(sCucuPers) '9820D8
  'Data Table: 415BC4
  loc_9820A0: ILdRf sCucuPers
  loc_9820A3: FStStrCopy var_8C
  loc_9820A6: LitStr "SELECT CucuPers FROM cotizacion WHERE CucuPers = "
  loc_9820A9: ILdRf var_8C
  loc_9820AC: ConcatStr
  loc_9820AD: FStStrNoPop var_90
  loc_9820B0: Call EjecutarRsCls(from_stack_1v)
  loc_9820B5: FFree1Str var_90
  loc_9820B8: FLdRfVar ExisteProveedor
  loc_9820BB: FLdPr Me
  loc_9820BE: MemLdPr global_56
  loc_9820C1:  = Me.RecordCount
  loc_9820C6: ILdRf ExisteProveedor
  loc_9820C9: LitI4 0
  loc_9820CE: GtI4
  loc_9820CF: FStI2 var_86
  loc_9820D2: ExitProcCbHresult
End Function

Public Function ValidaModificarCotizacion(IdCoti) 'A4742C
  'Data Table: 415BC4
  loc_A471C4: ZeroRetVal
  loc_A471C6: LitStr "SELECT c.AltaUsua, InStr(AltaUsua,'@') TieneArroba"
  loc_A471C9: LitStr " FROM cotizacion c"
  loc_A471CC: ConcatStr
  loc_A471CD: FStStrNoPop var_8C
  loc_A471D0: LitStr " WHERE c.IdCoti = "
  loc_A471D3: ConcatStr
  loc_A471D4: FStStrNoPop var_90
  loc_A471D7: ILdRf IdCoti
  loc_A471DA: CStrI4
  loc_A471DC: FStStrNoPop ValidaModificarCotizacion
  loc_A471DF: ConcatStr
  loc_A471E0: FStStrNoPop var_98
  loc_A471E3: LitStr ";"
  loc_A471E6: ConcatStr
  loc_A471E7: FStStrNoPop var_9C
  loc_A471EA: Call EjecutarRsCls(from_stack_1v)
  loc_A471EF: FFreeStr var_8C = "": var_90 = "": ValidaModificarCotizacion = "": var_98 = ""
  loc_A471FC: FLdRfVar var_C4
  loc_A471FF: FLdRfVar var_B4
  loc_A47202: LitVarStr var_B0, "TieneArroba"
  loc_A47207: PopAdLdVar
  loc_A47208: FLdRfVar var_A0
  loc_A4720B: FLdPr Me
  loc_A4720E: MemLdPr global_56
  loc_A47211:  = Me.Fields
  loc_A47216: FLdPr var_A0
  loc_A47219: from_stack_2 = Me.Item(from_stack_1)
  loc_A4721E: FLdPr var_B4
  loc_A47221:  = Me.Value
  loc_A47226: FLdRfVar var_C4
  loc_A47229: LitVarStr var_D4, "0"
  loc_A4722E: HardType
  loc_A4722F: EqVarBool
  loc_A47231: FFreeAd var_A0 = ""
  loc_A47238: FFree1Var var_C4 = ""
  loc_A4723B: BranchF loc_A47241
  loc_A4723E: Branch loc_A4733A
  loc_A47241: FLdRfVar var_C4
  loc_A47244: FLdRfVar var_B4
  loc_A47247: LitVarStr var_B0, "AltaUsua"
  loc_A4724C: PopAdLdVar
  loc_A4724D: FLdRfVar var_A0
  loc_A47250: FLdPr Me
  loc_A47253: MemLdPr global_56
  loc_A47256:  = Me.Fields
  loc_A4725B: FLdPr var_A0
  loc_A4725E: from_stack_2 = Me.Item(from_stack_1)
  loc_A47263: FLdPr var_B4
  loc_A47266:  = Me.Value
  loc_A4726B: FLdRfVar var_C4
  loc_A4726E: ImpAdLdI4 MemVar_C3D03C
  loc_A47271: CVarStr var_D4
  loc_A47274: HardType
  loc_A47275: NeVarBool
  loc_A47277: FFreeAd var_A0 = ""
  loc_A4727E: FFree1Var var_C4 = ""
  loc_A47281: BranchF loc_A4733A
  loc_A47284: LitStr "Municipalidad de Guaymallén"
  loc_A47287: LitStr "Municipalidad de Maipú"
  loc_A4728A: EqStr
  loc_A4728C: CVarBoolI2 var_F4
  loc_A47290: FLdRfVar var_C4
  loc_A47293: FLdRfVar var_B4
  loc_A47296: LitVarStr var_B0, "AltaUsua"
  loc_A4729B: PopAdLdVar
  loc_A4729C: FLdRfVar var_A0
  loc_A4729F: FLdPr Me
  loc_A472A2: MemLdPr global_56
  loc_A472A5:  = Me.Fields
  loc_A472AA: FLdPr var_A0
  loc_A472AD: from_stack_2 = Me.Item(from_stack_1)
  loc_A472B2: FLdPr var_B4
  loc_A472B5:  = Me.Value
  loc_A472BA: FLdRfVar var_C4
  loc_A472BD: LitVarStr var_D4, "marce"
  loc_A472C2: HardType
  loc_A472C3: EqVar var_E4
  loc_A472C7: AndVar var_104
  loc_A472CB: CBoolVarNull
  loc_A472CD: FFreeAd var_A0 = ""
  loc_A472D4: FFreeVar var_C4 = ""
  loc_A472DB: BranchF loc_A472E1
  loc_A472DE: Branch loc_A4733A
  loc_A472E1: LitVarStr var_D4, "La Cotización está ingresada por el Usuario: "
  loc_A472E6: FLdRfVar var_C4
  loc_A472E9: FLdRfVar var_B4
  loc_A472EC: LitVarStr var_B0, "AltaUsua"
  loc_A472F1: PopAdLdVar
  loc_A472F2: FLdRfVar var_A0
  loc_A472F5: FLdPr Me
  loc_A472F8: MemLdPr global_56
  loc_A472FB:  = Me.Fields
  loc_A47300: FLdPr var_A0
  loc_A47303: from_stack_2 = Me.Item(from_stack_1)
  loc_A47308: FLdPr var_B4
  loc_A4730B:  = Me.Value
  loc_A47310: FLdRfVar var_C4
  loc_A47313: ConcatVar var_E4
  loc_A47317: LitVarStr var_F4, " y NO puede modificarse. Verifique..."
  loc_A4731C: ConcatVar var_104
  loc_A47320: CStrVarTmp
  loc_A47321: FStStr var_88
  loc_A47324: FFreeAd var_A0 = ""
  loc_A4732B: FFreeVar var_C4 = "": var_E4 = ""
  loc_A47334: ExitProcCbHresult
  loc_A4733A: LitStr "SELECT IFNULL(CodiOrco,0) CodiOrco"
  loc_A4733D: LitStr " FROM ordencompra oc"
  loc_A47340: ConcatStr
  loc_A47341: FStStrNoPop var_8C
  loc_A47344: LitStr " WHERE oc.IdCoti = "
  loc_A47347: ConcatStr
  loc_A47348: FStStrNoPop var_90
  loc_A4734B: ILdRf IdCoti
  loc_A4734E: CStrI4
  loc_A47350: FStStrNoPop ValidaModificarCotizacion
  loc_A47353: ConcatStr
  loc_A47354: FStStrNoPop var_98
  loc_A47357: LitStr " AND FeanOrco IS NULL;"
  loc_A4735A: ConcatStr
  loc_A4735B: FStStrNoPop var_9C
  loc_A4735E: Call EjecutarRsCls(from_stack_1v)
  loc_A47363: FFreeStr var_8C = "": var_90 = "": ValidaModificarCotizacion = "": var_98 = ""
  loc_A47370: FLdRfVar var_108
  loc_A47373: FLdPr Me
  loc_A47376: MemLdPr global_56
  loc_A47379:  = Me.RecordCount
  loc_A4737E: ILdRf var_108
  loc_A47381: LitI4 0
  loc_A47386: GtI4
  loc_A47387: BranchF loc_A47425
  loc_A4738A: FLdRfVar var_C4
  loc_A4738D: FLdRfVar var_B4
  loc_A47390: LitVarStr var_B0, "CodiOrco"
  loc_A47395: PopAdLdVar
  loc_A47396: FLdRfVar var_A0
  loc_A47399: FLdPr Me
  loc_A4739C: MemLdPr global_56
  loc_A4739F:  = Me.Fields
  loc_A473A4: FLdPr var_A0
  loc_A473A7: from_stack_2 = Me.Item(from_stack_1)
  loc_A473AC: FLdPr var_B4
  loc_A473AF:  = Me.Value
  loc_A473B4: FLdRfVar var_C4
  loc_A473B7: LitVarI2 var_D4, 0
  loc_A473BC: HardType
  loc_A473BD: GtVarBool
  loc_A473BF: FFreeAd var_A0 = ""
  loc_A473C6: FFree1Var var_C4 = ""
  loc_A473C9: BranchF loc_A47425
  loc_A473CC: LitVarStr var_D4, "La Cotización está incluída en la Orden de Compra: "
  loc_A473D1: FLdRfVar var_C4
  loc_A473D4: FLdRfVar var_B4
  loc_A473D7: LitVarStr var_B0, "CodiOrco"
  loc_A473DC: PopAdLdVar
  loc_A473DD: FLdRfVar var_A0
  loc_A473E0: FLdPr Me
  loc_A473E3: MemLdPr global_56
  loc_A473E6:  = Me.Fields
  loc_A473EB: FLdPr var_A0
  loc_A473EE: from_stack_2 = Me.Item(from_stack_1)
  loc_A473F3: FLdPr var_B4
  loc_A473F6:  = Me.Value
  loc_A473FB: FLdRfVar var_C4
  loc_A473FE: ConcatVar var_E4
  loc_A47402: LitVarStr var_F4, " y NO puede modificarse. Verifique..."
  loc_A47407: ConcatVar var_104
  loc_A4740B: CStrVarTmp
  loc_A4740C: FStStr var_88
  loc_A4740F: FFreeAd var_A0 = ""
  loc_A47416: FFreeVar var_C4 = "": var_E4 = ""
  loc_A4741F: ExitProcCbHresult
  loc_A47425: ExitProcCbHresult
End Function

Public Function ValidaEliminarCotizacion(IdCoti) 'A29214
  'Data Table: 415BC4
  loc_A29060: ZeroRetVal
  loc_A29062: LitStr "SELECT c.AltaUsua"
  loc_A29065: LitStr " FROM cotizacion c"
  loc_A29068: ConcatStr
  loc_A29069: FStStrNoPop var_8C
  loc_A2906C: LitStr " WHERE c.IdCoti = "
  loc_A2906F: ConcatStr
  loc_A29070: FStStrNoPop var_90
  loc_A29073: ILdRf IdCoti
  loc_A29076: CStrI4
  loc_A29078: FStStrNoPop ValidaEliminarCotizacion
  loc_A2907B: ConcatStr
  loc_A2907C: FStStrNoPop var_98
  loc_A2907F: LitStr ";"
  loc_A29082: ConcatStr
  loc_A29083: FStStrNoPop var_9C
  loc_A29086: Call EjecutarRsCls(from_stack_1v)
  loc_A2908B: FFreeStr var_8C = "": var_90 = "": ValidaEliminarCotizacion = "": var_98 = ""
  loc_A29098: FLdRfVar var_C4
  loc_A2909B: FLdRfVar var_B4
  loc_A2909E: LitVarStr var_B0, "AltaUsua"
  loc_A290A3: PopAdLdVar
  loc_A290A4: FLdRfVar var_A0
  loc_A290A7: FLdPr Me
  loc_A290AA: MemLdPr global_56
  loc_A290AD:  = Me.Fields
  loc_A290B2: FLdPr var_A0
  loc_A290B5: from_stack_2 = Me.Item(from_stack_1)
  loc_A290BA: FLdPr var_B4
  loc_A290BD:  = Me.Value
  loc_A290C2: FLdRfVar var_C4
  loc_A290C5: ImpAdLdI4 MemVar_C3D03C
  loc_A290C8: CVarStr var_D4
  loc_A290CB: HardType
  loc_A290CC: NeVarBool
  loc_A290CE: FFreeAd var_A0 = ""
  loc_A290D5: FFree1Var var_C4 = ""
  loc_A290D8: BranchF loc_A29134
  loc_A290DB: LitVarStr var_D4, "La Cotización está ingresada por el Usuario: "
  loc_A290E0: FLdRfVar var_C4
  loc_A290E3: FLdRfVar var_B4
  loc_A290E6: LitVarStr var_B0, "AltaUsua"
  loc_A290EB: PopAdLdVar
  loc_A290EC: FLdRfVar var_A0
  loc_A290EF: FLdPr Me
  loc_A290F2: MemLdPr global_56
  loc_A290F5:  = Me.Fields
  loc_A290FA: FLdPr var_A0
  loc_A290FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29102: FLdPr var_B4
  loc_A29105:  = Me.Value
  loc_A2910A: FLdRfVar var_C4
  loc_A2910D: ConcatVar var_E4
  loc_A29111: LitVarStr var_F4, " y NO puede eliminarse. Verifique..."
  loc_A29116: ConcatVar var_104
  loc_A2911A: CStrVarTmp
  loc_A2911B: FStStr var_88
  loc_A2911E: FFreeAd var_A0 = ""
  loc_A29125: FFreeVar var_C4 = "": var_E4 = ""
  loc_A2912E: ExitProcCbHresult
  loc_A29134: LitStr "SELECT IFNULL(CodiOrco,0) CodiOrco"
  loc_A29137: LitStr " FROM cotizacion c"
  loc_A2913A: ConcatStr
  loc_A2913B: FStStrNoPop var_8C
  loc_A2913E: LitStr " LEFT JOIN ordencompra oc ON oc.PeriInfo = c.PeriInfo AND oc.CodiNope = c.CodiNope AND oc.CucuPers = c.CucuPers AND oc.IdCoti = c.IdCoti"
  loc_A29141: ConcatStr
  loc_A29142: FStStrNoPop var_90
  loc_A29145: LitStr " WHERE c.IdCoti = "
  loc_A29148: ConcatStr
  loc_A29149: FStStrNoPop ValidaEliminarCotizacion
  loc_A2914C: ILdRf IdCoti
  loc_A2914F: CStrI4
  loc_A29151: FStStrNoPop var_98
  loc_A29154: ConcatStr
  loc_A29155: FStStrNoPop var_9C
  loc_A29158: LitStr ";"
  loc_A2915B: ConcatStr
  loc_A2915C: FStStrNoPop var_108
  loc_A2915F: Call EjecutarRsCls(from_stack_1v)
  loc_A29164: FFreeStr var_8C = "": var_90 = "": ValidaEliminarCotizacion = "": var_98 = "": var_9C = ""
  loc_A29173: FLdRfVar var_C4
  loc_A29176: FLdRfVar var_B4
  loc_A29179: LitVarStr var_B0, "CodiOrco"
  loc_A2917E: PopAdLdVar
  loc_A2917F: FLdRfVar var_A0
  loc_A29182: FLdPr Me
  loc_A29185: MemLdPr global_56
  loc_A29188:  = Me.Fields
  loc_A2918D: FLdPr var_A0
  loc_A29190: from_stack_2 = Me.Item(from_stack_1)
  loc_A29195: FLdPr var_B4
  loc_A29198:  = Me.Value
  loc_A2919D: FLdRfVar var_C4
  loc_A291A0: LitVarI2 var_D4, 0
  loc_A291A5: HardType
  loc_A291A6: GtVarBool
  loc_A291A8: FFreeAd var_A0 = ""
  loc_A291AF: FFree1Var var_C4 = ""
  loc_A291B2: BranchF loc_A2920E
  loc_A291B5: LitVarStr var_D4, "La Cotización tiene Orden de Compra número "
  loc_A291BA: FLdRfVar var_C4
  loc_A291BD: FLdRfVar var_B4
  loc_A291C0: LitVarStr var_B0, "CodiOrco"
  loc_A291C5: PopAdLdVar
  loc_A291C6: FLdRfVar var_A0
  loc_A291C9: FLdPr Me
  loc_A291CC: MemLdPr global_56
  loc_A291CF:  = Me.Fields
  loc_A291D4: FLdPr var_A0
  loc_A291D7: from_stack_2 = Me.Item(from_stack_1)
  loc_A291DC: FLdPr var_B4
  loc_A291DF:  = Me.Value
  loc_A291E4: FLdRfVar var_C4
  loc_A291E7: ConcatVar var_E4
  loc_A291EB: LitVarStr var_F4, " y no puede eliminarse. Verifique..."
  loc_A291F0: ConcatVar var_104
  loc_A291F4: CStrVarTmp
  loc_A291F5: FStStr var_88
  loc_A291F8: FFreeAd var_A0 = ""
  loc_A291FF: FFreeVar var_C4 = "": var_E4 = ""
  loc_A29208: ExitProcCbHresult
  loc_A2920E: ExitProcCbHresult
End Function

Public Sub EliminarCotizacion(IdCoti) '992364
  'Data Table: 415BC4
  loc_992324: LitStr "DELETE c, itc"
  loc_992327: LitStr " FROM cotizacion c"
  loc_99232A: ConcatStr
  loc_99232B: FStStrNoPop var_88
  loc_99232E: LitStr " INNER JOIN itemcotizacion itc ON itc.IdCoti = c.IdCoti"
  loc_992331: ConcatStr
  loc_992332: FStStrNoPop var_8C
  loc_992335: LitStr " WHERE c.IdCoti = "
  loc_992338: ConcatStr
  loc_992339: FStStrNoPop var_90
  loc_99233C: ILdRf IdCoti
  loc_99233F: CStrI4
  loc_992341: FStStrNoPop var_94
  loc_992344: ConcatStr
  loc_992345: FStStrNoPop var_98
  loc_992348: LitStr ";"
  loc_99234B: ConcatStr
  loc_99234C: FStStrNoPop var_9C
  loc_99234F: Call EjecutarRsCls(from_stack_1v)
  loc_992354: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_992363: ExitProcHresult
End Sub

Public Function ValidaAnularCotizacion(IdCoti) 'A2B3D0
  'Data Table: 415BC4
  loc_A2B210: ZeroRetVal
  loc_A2B212: LitStr "SELECT c.AltaUsua"
  loc_A2B215: LitStr " FROM cotizacion c"
  loc_A2B218: ConcatStr
  loc_A2B219: FStStrNoPop var_8C
  loc_A2B21C: LitStr " WHERE c.IdCoti = "
  loc_A2B21F: ConcatStr
  loc_A2B220: FStStrNoPop var_90
  loc_A2B223: ILdRf IdCoti
  loc_A2B226: CStrI4
  loc_A2B228: FStStrNoPop ValidaAnularCotizacion
  loc_A2B22B: ConcatStr
  loc_A2B22C: FStStrNoPop var_98
  loc_A2B22F: LitStr ";"
  loc_A2B232: ConcatStr
  loc_A2B233: FStStrNoPop var_9C
  loc_A2B236: Call EjecutarRsCls(from_stack_1v)
  loc_A2B23B: FFreeStr var_8C = "": var_90 = "": ValidaAnularCotizacion = "": var_98 = ""
  loc_A2B248: FLdRfVar var_C4
  loc_A2B24B: FLdRfVar var_B4
  loc_A2B24E: LitVarStr var_B0, "AltaUsua"
  loc_A2B253: PopAdLdVar
  loc_A2B254: FLdRfVar var_A0
  loc_A2B257: FLdPr Me
  loc_A2B25A: MemLdPr global_56
  loc_A2B25D:  = Me.Fields
  loc_A2B262: FLdPr var_A0
  loc_A2B265: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B26A: FLdPr var_B4
  loc_A2B26D:  = Me.Value
  loc_A2B272: FLdRfVar var_C4
  loc_A2B275: ImpAdLdI4 MemVar_C3D03C
  loc_A2B278: CVarStr var_D4
  loc_A2B27B: HardType
  loc_A2B27C: NeVarBool
  loc_A2B27E: FFreeAd var_A0 = ""
  loc_A2B285: FFree1Var var_C4 = ""
  loc_A2B288: BranchF loc_A2B2E4
  loc_A2B28B: LitVarStr var_D4, "La Cotización está ingresada por el Usuario: "
  loc_A2B290: FLdRfVar var_C4
  loc_A2B293: FLdRfVar var_B4
  loc_A2B296: LitVarStr var_B0, "AltaUsua"
  loc_A2B29B: PopAdLdVar
  loc_A2B29C: FLdRfVar var_A0
  loc_A2B29F: FLdPr Me
  loc_A2B2A2: MemLdPr global_56
  loc_A2B2A5:  = Me.Fields
  loc_A2B2AA: FLdPr var_A0
  loc_A2B2AD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B2B2: FLdPr var_B4
  loc_A2B2B5:  = Me.Value
  loc_A2B2BA: FLdRfVar var_C4
  loc_A2B2BD: ConcatVar var_E4
  loc_A2B2C1: LitVarStr var_F4, " y NO puede Anularse. Verifique..."
  loc_A2B2C6: ConcatVar var_104
  loc_A2B2CA: CStrVarTmp
  loc_A2B2CB: FStStr var_88
  loc_A2B2CE: FFreeAd var_A0 = ""
  loc_A2B2D5: FFreeVar var_C4 = "": var_E4 = ""
  loc_A2B2DE: ExitProcCbHresult
  loc_A2B2E4: LitStr "SELECT IFNULL(CodiOrco,0) CodiOrco"
  loc_A2B2E7: LitStr " FROM cotizacion c"
  loc_A2B2EA: ConcatStr
  loc_A2B2EB: FStStrNoPop var_8C
  loc_A2B2EE: LitStr " LEFT JOIN ordencompra oc ON oc.PeriInfo = c.PeriInfo AND oc.CodiNope = c.CodiNope AND oc.CucuPers = c.CucuPers AND oc.IdCoti = c.IdCoti"
  loc_A2B2F1: ConcatStr
  loc_A2B2F2: FStStrNoPop var_90
  loc_A2B2F5: LitStr " AND oc.FeanOrco IS NULL"
  loc_A2B2F8: ConcatStr
  loc_A2B2F9: FStStrNoPop ValidaAnularCotizacion
  loc_A2B2FC: LitStr " WHERE c.IdCoti = "
  loc_A2B2FF: ConcatStr
  loc_A2B300: FStStrNoPop var_98
  loc_A2B303: ILdRf IdCoti
  loc_A2B306: CStrI4
  loc_A2B308: FStStrNoPop var_9C
  loc_A2B30B: ConcatStr
  loc_A2B30C: FStStrNoPop var_108
  loc_A2B30F: LitStr ";"
  loc_A2B312: ConcatStr
  loc_A2B313: FStStrNoPop var_10C
  loc_A2B316: Call EjecutarRsCls(from_stack_1v)
  loc_A2B31B: FFreeStr var_8C = "": var_90 = "": ValidaAnularCotizacion = "": var_98 = "": var_9C = "": var_108 = ""
  loc_A2B32C: FLdRfVar var_C4
  loc_A2B32F: FLdRfVar var_B4
  loc_A2B332: LitVarStr var_B0, "CodiOrco"
  loc_A2B337: PopAdLdVar
  loc_A2B338: FLdRfVar var_A0
  loc_A2B33B: FLdPr Me
  loc_A2B33E: MemLdPr global_56
  loc_A2B341:  = Me.Fields
  loc_A2B346: FLdPr var_A0
  loc_A2B349: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B34E: FLdPr var_B4
  loc_A2B351:  = Me.Value
  loc_A2B356: FLdRfVar var_C4
  loc_A2B359: LitVarI2 var_D4, 0
  loc_A2B35E: HardType
  loc_A2B35F: GtVarBool
  loc_A2B361: FFreeAd var_A0 = ""
  loc_A2B368: FFree1Var var_C4 = ""
  loc_A2B36B: BranchF loc_A2B3C7
  loc_A2B36E: LitVarStr var_D4, "La Cotización tiene Orden de Compra número "
  loc_A2B373: FLdRfVar var_C4
  loc_A2B376: FLdRfVar var_B4
  loc_A2B379: LitVarStr var_B0, "CodiOrco"
  loc_A2B37E: PopAdLdVar
  loc_A2B37F: FLdRfVar var_A0
  loc_A2B382: FLdPr Me
  loc_A2B385: MemLdPr global_56
  loc_A2B388:  = Me.Fields
  loc_A2B38D: FLdPr var_A0
  loc_A2B390: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B395: FLdPr var_B4
  loc_A2B398:  = Me.Value
  loc_A2B39D: FLdRfVar var_C4
  loc_A2B3A0: ConcatVar var_E4
  loc_A2B3A4: LitVarStr var_F4, " y no puede eliminarse. Verifique..."
  loc_A2B3A9: ConcatVar var_104
  loc_A2B3AD: CStrVarTmp
  loc_A2B3AE: FStStr var_88
  loc_A2B3B1: FFreeAd var_A0 = ""
  loc_A2B3B8: FFreeVar var_C4 = "": var_E4 = ""
  loc_A2B3C1: ExitProcCbHresult
  loc_A2B3C7: ExitProcCbHresult
End Function

Public Sub AnularCotizacion(IdCoti) '9956C4
  'Data Table: 415BC4
  loc_995678: LitStr "UPDATE cotizacion"
  loc_99567B: LitStr " SET FeanCoti = Current_date(), BajaUsua = '"
  loc_99567E: ConcatStr
  loc_99567F: FStStrNoPop var_88
  loc_995682: ImpAdLdI4 MemVar_C3D03C
  loc_995685: ConcatStr
  loc_995686: FStStrNoPop var_8C
  loc_995689: LitStr "', BajaFeho = Now(), BajaMoti = 'por error'"
  loc_99568C: ConcatStr
  loc_99568D: FStStrNoPop var_90
  loc_995690: LitStr " WHERE IdCoti = "
  loc_995693: ConcatStr
  loc_995694: FStStrNoPop var_94
  loc_995697: ILdRf IdCoti
  loc_99569A: CStrI4
  loc_99569C: FStStrNoPop var_98
  loc_99569F: ConcatStr
  loc_9956A0: FStStrNoPop var_9C
  loc_9956A3: LitStr ";"
  loc_9956A6: ConcatStr
  loc_9956A7: FStStrNoPop var_A0
  loc_9956AA: Call EjecutarRsCls(from_stack_1v)
  loc_9956AF: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_9956C0: ExitProcHresult
End Sub

Public Function ConsultarMarcaInsu(CodiInsu) '9B481C
  'Data Table: 415BC4
  loc_9B4788: ILdRf CodiInsu
  loc_9B478B: FStStrCopy var_8C
  loc_9B478E: ZeroRetVal
  loc_9B4790: LitStr "SELECT MarcaInsu"
  loc_9B4793: LitStr " FROM infogov.insumo"
  loc_9B4796: ConcatStr
  loc_9B4797: FStStrNoPop var_90
  loc_9B479A: LitStr " WHERE CodiInsu = '"
  loc_9B479D: ConcatStr
  loc_9B479E: FStStrNoPop ConsultarMarcaInsu
  loc_9B47A1: ILdRf var_8C
  loc_9B47A4: ConcatStr
  loc_9B47A5: FStStrNoPop var_98
  loc_9B47A8: LitStr "';"
  loc_9B47AB: ConcatStr
  loc_9B47AC: FStStrNoPop var_9C
  loc_9B47AF: Call EjecutarRsCls(from_stack_1v)
  loc_9B47B4: FFreeStr var_90 = "": ConsultarMarcaInsu = "": var_98 = ""
  loc_9B47BF: FLdRfVar var_A0
  loc_9B47C2: FLdPr Me
  loc_9B47C5: MemLdPr global_56
  loc_9B47C8:  = Me.RecordCount
  loc_9B47CD: ILdRf var_A0
  loc_9B47D0: LitI4 0
  loc_9B47D5: GtI4
  loc_9B47D6: BranchF loc_9B4814
  loc_9B47D9: FLdRfVar var_C8
  loc_9B47DC: FLdRfVar var_B8
  loc_9B47DF: LitVarStr var_B4, "MarcaInsu"
  loc_9B47E4: PopAdLdVar
  loc_9B47E5: FLdRfVar var_A4
  loc_9B47E8: FLdPr Me
  loc_9B47EB: MemLdPr global_56
  loc_9B47EE:  = Me.Fields
  loc_9B47F3: FLdPr var_A4
  loc_9B47F6: from_stack_2 = Me.Item(from_stack_1)
  loc_9B47FB: FLdPr var_B8
  loc_9B47FE:  = Me.Value
  loc_9B4803: FLdRfVar var_C8
  loc_9B4806: CStrVarTmp
  loc_9B4807: FStStr var_88
  loc_9B480A: FFreeAd var_A4 = ""
  loc_9B4811: FFree1Var var_C8 = ""
  loc_9B4814: ExitProcCbHresult
  loc_9B481A: FLdFPR8 ConsultarMarcaInsuC00
End Function

Private Function Proc_7_31_9719FC() '9719FC
  'Data Table: 415BC4
  loc_9719D8: LitStr "Primary"
  loc_9719DB: FLdPr Me
  loc_9719DE: LateIdLdVar var_94 DispID_4 0
  loc_9719E5: CastAdVar Me
  loc_9719E9: FStAdFunc var_98
  loc_9719EC: FLdPr var_98
  loc_9719F4: FFree1Ad var_98
  loc_9719F7: FFree1Var var_94 = ""
  loc_9719FA: ExitProcHresult
End Function

Private Function Proc_7_32_96798C(arg_C) '96798C
  'Data Table: 415BC4
  loc_967970: ILdI4 arg_C
  loc_967973: FStStrCopy var_88
  loc_967976: ILdRf var_88
  loc_967979: LitStr "Primary"
  loc_96797C: EqStr
  loc_96797E: BranchF loc_96798B
  loc_967981: FLdPr Me
  loc_967984: MemLdStr RsFrm
  loc_967987: IStAd
  loc_96798B: ExitProcHresult
End Function
