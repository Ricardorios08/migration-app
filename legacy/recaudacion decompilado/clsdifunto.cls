VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsdifunto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject
Public RsCls As New UnkObject
Public RsCls1 As New UnkObject
Public RsCls2 As New UnkObject


Public Function RsFrmGet() '4363E8
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4363F7
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '436406
  RsFrm = Value
End Sub

Public Function RsClsGet() '436415
  RsClsGet = RsCls
End Function

Public Sub RsClsPut(Value) '436424
  RsCls = Value
End Sub

Public Sub RsClsSet(Value) '436433
  RsCls = Value
End Sub

Public Function RsCls1Get() '436442
  RsCls1Get = RsCls1
End Function

Public Sub RsCls1Put(Value) '436451
  RsCls1 = Value
End Sub

Public Sub RsCls1Set(Value) '436460
  RsCls1 = Value
End Sub

Public Function RsCls2Get() '43646F
  RsCls2Get = RsCls2
End Function

Public Sub RsCls2Put(Value) '43647E
  RsCls2 = Value
End Sub

Public Sub RsCls2Set(Value) '43648D
  RsCls2 = Value
End Sub

Public Sub MoveFirst() '9EDBF4
  'Data Table: 435FA0
  loc_9EDBCC: FLdRfVar var_88
  loc_9EDBCF: FLdPr Me
  loc_9EDBD2: MemLdPr RsFrm
  loc_9EDBD5:  = Me.RecordCount
  loc_9EDBDA: ILdRf var_88
  loc_9EDBDD: LitI4 0
  loc_9EDBE2: GtI4
  loc_9EDBE3: BranchF loc_9EDBF1
  loc_9EDBE6: FLdPr Me
  loc_9EDBE9: MemLdPr RsFrm
  loc_9EDBEC: Me.MoveFirst
  loc_9EDBF1: ExitProcHresult
End Sub

Public Sub MoveLast() '9EDB9C
  'Data Table: 435FA0
  loc_9EDB74: FLdRfVar var_88
  loc_9EDB77: FLdPr Me
  loc_9EDB7A: MemLdPr RsFrm
  loc_9EDB7D:  = Me.RecordCount
  loc_9EDB82: ILdRf var_88
  loc_9EDB85: LitI4 0
  loc_9EDB8A: GtI4
  loc_9EDB8B: BranchF loc_9EDB99
  loc_9EDB8E: FLdPr Me
  loc_9EDB91: MemLdPr RsFrm
  loc_9EDB94: Me.MoveLast
  loc_9EDB99: ExitProcHresult
  loc_9EDB9A: CopyBytes
End Sub

Public Sub MoveNext() 'A6AB58
  'Data Table: 435FA0
  loc_A6AAE0: FLdRfVar var_86
  loc_A6AAE3: FLdPr Me
  loc_A6AAE6: MemLdPr RsFrm
  loc_A6AAE9:  = Me.EOF
  loc_A6AAEE: FLdI2 var_86
  loc_A6AAF1: NotI4
  loc_A6AAF2: FLdRfVar var_8C
  loc_A6AAF5: FLdPr Me
  loc_A6AAF8: MemLdPr RsFrm
  loc_A6AAFB:  = Me.RecordCount
  loc_A6AB00: ILdRf var_8C
  loc_A6AB03: LitI4 0
  loc_A6AB08: GtI4
  loc_A6AB09: AndI4
  loc_A6AB0A: BranchF loc_A6AB18
  loc_A6AB0D: FLdPr Me
  loc_A6AB10: MemLdPr RsFrm
  loc_A6AB13: Me.MoveNext
  loc_A6AB18: FLdRfVar var_86
  loc_A6AB1B: FLdPr Me
  loc_A6AB1E: MemLdPr RsFrm
  loc_A6AB21:  = Me.EOF
  loc_A6AB26: FLdI2 var_86
  loc_A6AB29: FLdRfVar var_8C
  loc_A6AB2C: FLdPr Me
  loc_A6AB2F: MemLdPr RsFrm
  loc_A6AB32:  = Me.RecordCount
  loc_A6AB37: ILdRf var_8C
  loc_A6AB3A: LitI4 0
  loc_A6AB3F: GtI4
  loc_A6AB40: AndI4
  loc_A6AB41: BranchF loc_A6AB54
  loc_A6AB44: ImpAdCallFPR4 Beep()
  loc_A6AB49: FLdPr Me
  loc_A6AB4C: MemLdPr RsFrm
  loc_A6AB4F: Me.MoveLast
  loc_A6AB54: ExitProcHresult
  loc_A6AB55: CStrVar
End Sub

Public Sub MoveSiguiente() '9B10EC
  'Data Table: 435FA0
  loc_9B10E0: FLdPr Me
  loc_9B10E3: MemLdPr RsFrm
  loc_9B10E6: Me.MoveNext
  loc_9B10EB: ExitProcHresult
End Sub

Public Sub Move(iValor) '9BAB24
  'Data Table: 435FA0
  loc_9BAB10: LitVar_Missing var_94
  loc_9BAB13: PopAdLdVar
  loc_9BAB14: ILdI2 iValor
  loc_9BAB17: CI4UI1
  loc_9BAB18: FLdPr Me
  loc_9BAB1B: MemLdPr RsFrm
  loc_9BAB1E: Me.Move from_stack_1, from_stack_2
  loc_9BAB23: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6B728
  'Data Table: 435FA0
  loc_A6B6B0: FLdRfVar var_86
  loc_A6B6B3: FLdPr Me
  loc_A6B6B6: MemLdPr RsFrm
  loc_A6B6B9:  = Me.BOF
  loc_A6B6BE: FLdI2 var_86
  loc_A6B6C1: NotI4
  loc_A6B6C2: FLdRfVar var_8C
  loc_A6B6C5: FLdPr Me
  loc_A6B6C8: MemLdPr RsFrm
  loc_A6B6CB:  = Me.RecordCount
  loc_A6B6D0: ILdRf var_8C
  loc_A6B6D3: LitI4 0
  loc_A6B6D8: GtI4
  loc_A6B6D9: AndI4
  loc_A6B6DA: BranchF loc_A6B6E8
  loc_A6B6DD: FLdPr Me
  loc_A6B6E0: MemLdPr RsFrm
  loc_A6B6E3: Me.MovePrevious
  loc_A6B6E8: FLdRfVar var_86
  loc_A6B6EB: FLdPr Me
  loc_A6B6EE: MemLdPr RsFrm
  loc_A6B6F1:  = Me.BOF
  loc_A6B6F6: FLdI2 var_86
  loc_A6B6F9: FLdRfVar var_8C
  loc_A6B6FC: FLdPr Me
  loc_A6B6FF: MemLdPr RsFrm
  loc_A6B702:  = Me.RecordCount
  loc_A6B707: ILdRf var_8C
  loc_A6B70A: LitI4 0
  loc_A6B70F: GtI4
  loc_A6B710: AndI4
  loc_A6B711: BranchF loc_A6B724
  loc_A6B714: ImpAdCallFPR4 Beep()
  loc_A6B719: FLdPr Me
  loc_A6B71C: MemLdPr RsFrm
  loc_A6B71F: Me.MoveFirst
  loc_A6B724: ExitProcHresult
End Sub

Public Property Get EOF() '9D0674
  'Data Table: 435FA0
  loc_9D0658: FLdRfVar var_88
  loc_9D065B: FLdPr Me
  loc_9D065E: MemLdPr RsFrm
  loc_9D0661:  = Me.EOF
  loc_9D0666: FLdI2 var_88
  loc_9D0669: FStI2 var_86
  loc_9D066C: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D06C0
  'Data Table: 435FA0
  loc_9D06A4: FLdRfVar var_88
  loc_9D06A7: FLdPr Me
  loc_9D06AA: MemLdPr RsFrm
  loc_9D06AD:  = Me.BOF
  loc_9D06B2: FLdI2 var_88
  loc_9D06B5: FStI2 var_86
  loc_9D06B8: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B4CB8
  'Data Table: 435FA0
  loc_9B4CA8: ILdI4 sOrden
  loc_9B4CAB: FLdPr Me
  loc_9B4CAE: MemLdPr RsFrm
  loc_9B4CB1: Me.Sort = from_stack_1
  loc_9B4CB6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DD6D0
  'Data Table: 435FA0
  loc_9DD6B0: LitVar_Missing var_94
  loc_9DD6B3: PopAdLdVar
  loc_9DD6B4: LitI4 1
  loc_9DD6B9: LitI4 0
  loc_9DD6BE: ILdI4 sFind
  loc_9DD6C1: FLdPr Me
  loc_9DD6C4: MemLdPr RsFrm
  loc_9DD6C7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DD6CC: ExitProcHresult
  loc_9DD6CD: FStI2 arg_6CFF
End Sub

Public Sub Filter(sCriterio) '9BA6A0
  'Data Table: 435FA0
  loc_9BA68C: ILdI4 sCriterio
  loc_9BA68F: CVarStr var_94
  loc_9BA692: PopAdLdVar
  loc_9BA693: FLdPr Me
  loc_9BA696: MemLdPr RsFrm
  loc_9BA699: Me.Filter = from_stack_1
  loc_9BA69E: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D07F0
  'Data Table: 435FA0
  loc_9D07D4: FLdRfVar var_8C
  loc_9D07D7: FLdPr Me
  loc_9D07DA: MemLdPr RsFrm
  loc_9D07DD:  = Me.AbsolutePosition
  loc_9D07E2: ILdRf var_8C
  loc_9D07E5: FStR4 var_88
  loc_9D07E8: ExitProcCbHresult
  loc_9D07EE: LeI2
End Sub

Public Property Get RecordCount() '9C989C
  'Data Table: 435FA0
  loc_9C9880: FLdRfVar var_8C
  loc_9C9883: FLdPr Me
  loc_9C9886: MemLdPr RsFrm
  loc_9C9889:  = Me.RecordCount
  loc_9C988E: ILdRf var_8C
  loc_9C9891: FStR4 var_88
  loc_9C9894: ExitProcCbHresult
  loc_9C989A: LeI2
End Sub

Public Sub AddNew(CodiDifu, CucuPers, CodiInmu, CodiCeme, CodiTise, SeccDifu, PlanDifu, NumeDifu, FilaDifu, CacaDifu, CompDifu, ParvDifu, FeveDifu, PeriDifu, MesDifu, AnioDifu, PerpDifu, ObseDifu, EjerDifu, BimeDifu) 'BEB0C8
  'Data Table: 435FA0
  loc_BEAA6C: ILdRf CodiDifu
  loc_BEAA6F: FStStrCopy var_88
  loc_BEAA72: ILdRf CucuPers
  loc_BEAA75: FStStrCopy var_8C
  loc_BEAA78: ILdRf SeccDifu
  loc_BEAA7B: FStStrCopy var_90
  loc_BEAA7E: ILdRf CompDifu
  loc_BEAA81: FStStrCopy var_94
  loc_BEAA84: ILdRf FeveDifu
  loc_BEAA87: FStStrCopy var_98
  loc_BEAA8A: ILdRf AddNewC
  loc_BEAA8D: FStStrCopy var_9C
  loc_BEAA90: ILdRf ObseDifu
  loc_BEAA93: FStStrCopy var_A0
  loc_BEAA96: LitStr "SELECT * FROM infogov.persona WHERE CucuPers = "
  loc_BEAA99: ILdRf var_8C
  loc_BEAA9C: ConcatStr
  loc_BEAA9D: FStStrNoPop var_A8
  loc_BEAAA0: Call EjecutarRsCls1(from_stack_1v)
  loc_BEAAA5: FFree1Str var_A8
  loc_BEAAA8: FLdRfVar var_AC
  loc_BEAAAB: FLdPr Me
  loc_BEAAAE: MemLdPr RsCls1
  loc_BEAAB1:  = Me.RecordCount
  loc_BEAAB6: ILdRf var_AC
  loc_BEAAB9: LitI4 0
  loc_BEAABE: GtI4
  loc_BEAABF: BranchF loc_BEB0C6
  loc_BEAAC2: FLdRfVar var_98
  loc_BEAAC5: CVarRef
  loc_BEAACA: ImpAdCallI2 IsDate()
  loc_BEAACF: FStI2 var_7C2
  loc_BEAAD2: LitI4 1
  loc_BEAAD7: LitI4 1
  loc_BEAADC: LitVarStr var_158, "'yyyy-mm-dd'"
  loc_BEAAE1: FStVarCopyObj var_168
  loc_BEAAE4: FLdRfVar var_168
  loc_BEAAE7: FLdRfVar var_98
  loc_BEAAEA: CVarRef
  loc_BEAAEF: ImpAdCallI2 Format$(, )
  loc_BEAAF4: FStStr var_7C8
  loc_BEAAF7: LitStr "START TRANSACTION; INSERT INTO difunto (CodiDifu,CucuPers,CodiInmu,CodiCeme,CodiTise,SeccDifu,PlanDifu,NumeDifu,FilaDifu,CacaDifu,CompDifu,ParvDifu,FeveDifu,PeriDifu,MesDifu,AnioDifu,PerpDifu,ObseDifu,EjerDifu,BimeDifu,CocpDifu,DecpDifu,NupoDifu,CobpDifu,DebpDifu,MapoDifu,CapoDifu,UbpoDifu,ColpDifu,DelpDifu,CoppDifu,AltaUsua) "
  loc_BEAAFA: LitStr " VALUES ( '"
  loc_BEAAFD: ConcatStr
  loc_BEAAFE: FStStrNoPop var_A8
  loc_BEAB01: ILdRf var_88
  loc_BEAB04: ConcatStr
  loc_BEAB05: FStStrNoPop var_B0
  loc_BEAB08: LitStr "',"
  loc_BEAB0B: ConcatStr
  loc_BEAB0C: FStStrNoPop var_B4
  loc_BEAB0F: ILdRf var_8C
  loc_BEAB12: ConcatStr
  loc_BEAB13: FStStrNoPop var_B8
  loc_BEAB16: LitStr ","
  loc_BEAB19: ConcatStr
  loc_BEAB1A: FStStrNoPop var_BC
  loc_BEAB1D: ILdRf CodiInmu
  loc_BEAB20: CStrI4
  loc_BEAB22: FStStrNoPop var_C0
  loc_BEAB25: ConcatStr
  loc_BEAB26: FStStrNoPop var_C4
  loc_BEAB29: LitStr ","
  loc_BEAB2C: ConcatStr
  loc_BEAB2D: FStStrNoPop var_C8
  loc_BEAB30: FLdUI1
  loc_BEAB34: CStrI2
  loc_BEAB36: FStStrNoPop var_CC
  loc_BEAB39: ConcatStr
  loc_BEAB3A: FStStrNoPop var_D0
  loc_BEAB3D: LitStr ","
  loc_BEAB40: ConcatStr
  loc_BEAB41: FStStrNoPop var_D4
  loc_BEAB44: FLdUI1
  loc_BEAB48: CStrI2
  loc_BEAB4A: FStStrNoPop var_D8
  loc_BEAB4D: ConcatStr
  loc_BEAB4E: FStStrNoPop var_DC
  loc_BEAB51: LitStr ",'"
  loc_BEAB54: ConcatStr
  loc_BEAB55: FStStrNoPop var_E0
  loc_BEAB58: ILdRf var_90
  loc_BEAB5B: ConcatStr
  loc_BEAB5C: FStStrNoPop var_E4
  loc_BEAB5F: LitStr "',"
  loc_BEAB62: ConcatStr
  loc_BEAB63: FStStrNoPop var_E8
  loc_BEAB66: FLdUI1
  loc_BEAB6A: CStrI2
  loc_BEAB6C: FStStrNoPop var_EC
  loc_BEAB6F: ConcatStr
  loc_BEAB70: FStStrNoPop var_F0
  loc_BEAB73: LitStr ","
  loc_BEAB76: ConcatStr
  loc_BEAB77: FStStrNoPop var_F4
  loc_BEAB7A: FLdI2 NumeDifu
  loc_BEAB7D: CStrUI1
  loc_BEAB7F: FStStrNoPop var_F8
  loc_BEAB82: ConcatStr
  loc_BEAB83: FStStrNoPop var_FC
  loc_BEAB86: LitStr ","
  loc_BEAB89: ConcatStr
  loc_BEAB8A: FStStrNoPop var_100
  loc_BEAB8D: FLdI2 FilaDifu
  loc_BEAB90: CStrUI1
  loc_BEAB92: FStStrNoPop var_104
  loc_BEAB95: ConcatStr
  loc_BEAB96: FStStrNoPop var_108
  loc_BEAB99: LitStr ","
  loc_BEAB9C: ConcatStr
  loc_BEAB9D: FStStrNoPop var_10C
  loc_BEABA0: FLdI2 CacaDifu
  loc_BEABA3: CStrUI1
  loc_BEABA5: FStStrNoPop var_110
  loc_BEABA8: ConcatStr
  loc_BEABA9: FStStrNoPop var_114
  loc_BEABAC: LitStr ",'"
  loc_BEABAF: ConcatStr
  loc_BEABB0: FStStrNoPop var_118
  loc_BEABB3: ILdRf var_94
  loc_BEABB6: ConcatStr
  loc_BEABB7: FStStrNoPop var_11C
  loc_BEABBA: LitStr "',"
  loc_BEABBD: ConcatStr
  loc_BEABBE: FStStrNoPop var_120
  loc_BEABC1: FLdUI1
  loc_BEABC5: CStrI2
  loc_BEABC7: FStStrNoPop var_124
  loc_BEABCA: ConcatStr
  loc_BEABCB: FStStrNoPop var_128
  loc_BEABCE: LitStr ","
  loc_BEABD1: ConcatStr
  loc_BEABD2: CVarStr var_1C8
  loc_BEABD5: LitVarStr var_198, "Null"
  loc_BEABDA: FStVarCopyObj var_1A8
  loc_BEABDD: FLdRfVar var_1A8
  loc_BEABE0: FLdZeroAd var_7C8
  loc_BEABE3: CVarStr var_188
  loc_BEABE6: FLdI2 var_7C2
  loc_BEABE9: CVarBoolI2 var_178
  loc_BEABED: FLdRfVar var_1B8
  loc_BEABF0: ImpAdCallFPR4  = IIf(, , )
  loc_BEABF5: FLdRfVar var_1B8
  loc_BEABF8: ConcatVar var_1D8
  loc_BEABFC: LitVarStr var_1E8, ","
  loc_BEAC01: ConcatVar var_1F8
  loc_BEAC05: FLdI2 AddNew0
  loc_BEAC08: CVarI2 var_208
  loc_BEAC0B: ConcatVar var_218
  loc_BEAC0F: LitVarStr var_228, ","
  loc_BEAC14: ConcatVar var_238
  loc_BEAC18: FLdUI1
  loc_BEAC1C: CVarUI1
  loc_BEAC20: ConcatVar var_258
  loc_BEAC24: LitVarStr var_268, ","
  loc_BEAC29: ConcatVar var_278
  loc_BEAC2D: FLdUI1
  loc_BEAC31: CVarUI1
  loc_BEAC35: ConcatVar var_298
  loc_BEAC39: LitVarStr var_2A8, ",'"
  loc_BEAC3E: ConcatVar var_2B8
  loc_BEAC42: ILdRf var_9C
  loc_BEAC45: CVarStr var_2C8
  loc_BEAC48: ConcatVar var_2D8
  loc_BEAC4C: LitVarStr var_2E8, "','"
  loc_BEAC51: ConcatVar var_2F8
  loc_BEAC55: ILdRf var_A0
  loc_BEAC58: CVarStr var_308
  loc_BEAC5B: ConcatVar var_318
  loc_BEAC5F: LitVarStr var_328, "',"
  loc_BEAC64: ConcatVar var_338
  loc_BEAC68: FLdI2 EjerDifu
  loc_BEAC6B: CVarI2 var_348
  loc_BEAC6E: ConcatVar var_358
  loc_BEAC72: LitVarStr var_368, ","
  loc_BEAC77: ConcatVar var_378
  loc_BEAC7B: FLdI2 BimeDifu
  loc_BEAC7E: CVarI2 var_388
  loc_BEAC81: ConcatVar var_398
  loc_BEAC85: LitVarStr var_3A8, ","
  loc_BEAC8A: ConcatVar var_3B8
  loc_BEAC8E: FLdRfVar var_3E0
  loc_BEAC91: FLdRfVar var_3D0
  loc_BEAC94: LitVarStr var_3CC, "CocrPers"
  loc_BEAC99: PopAdLdVar
  loc_BEAC9A: FLdRfVar var_3BC
  loc_BEAC9D: FLdPr Me
  loc_BEACA0: MemLdPr RsCls1
  loc_BEACA3:  = Me.Fields
  loc_BEACA8: FLdPr var_3BC
  loc_BEACAB: from_stack_2 = Me.Item(from_stack_1)
  loc_BEACB0: FLdPr var_3D0
  loc_BEACB3:  = Me.Value
  loc_BEACB8: FLdRfVar var_3E0
  loc_BEACBB: ConcatVar var_3F0
  loc_BEACBF: LitVarStr var_400, ",'"
  loc_BEACC4: ConcatVar var_410
  loc_BEACC8: FLdRfVar var_438
  loc_BEACCB: FLdRfVar var_428
  loc_BEACCE: LitVarStr var_424, "DecrPers"
  loc_BEACD3: PopAdLdVar
  loc_BEACD4: FLdRfVar var_414
  loc_BEACD7: FLdPr Me
  loc_BEACDA: MemLdPr RsCls1
  loc_BEACDD:  = Me.Fields
  loc_BEACE2: FLdPr var_414
  loc_BEACE5: from_stack_2 = Me.Item(from_stack_1)
  loc_BEACEA: FLdPr var_428
  loc_BEACED:  = Me.Value
  loc_BEACF2: FLdRfVar var_438
  loc_BEACF5: ConcatVar var_448
  loc_BEACF9: LitVarStr var_458, "',"
  loc_BEACFE: ConcatVar var_468
  loc_BEAD02: FLdRfVar var_490
  loc_BEAD05: FLdRfVar var_480
  loc_BEAD08: LitVarStr var_47C, "NurePers"
  loc_BEAD0D: PopAdLdVar
  loc_BEAD0E: FLdRfVar var_46C
  loc_BEAD11: FLdPr Me
  loc_BEAD14: MemLdPr RsCls1
  loc_BEAD17:  = Me.Fields
  loc_BEAD1C: FLdPr var_46C
  loc_BEAD1F: from_stack_2 = Me.Item(from_stack_1)
  loc_BEAD24: FLdPr var_480
  loc_BEAD27:  = Me.Value
  loc_BEAD2C: FLdRfVar var_490
  loc_BEAD2F: ConcatVar var_4A0
  loc_BEAD33: LitVarStr var_4B0, ","
  loc_BEAD38: ConcatVar var_4C0
  loc_BEAD3C: FLdRfVar var_4E8
  loc_BEAD3F: FLdRfVar var_4D8
  loc_BEAD42: LitVarStr var_4D4, "CobrPers"
  loc_BEAD47: PopAdLdVar
  loc_BEAD48: FLdRfVar var_4C4
  loc_BEAD4B: FLdPr Me
  loc_BEAD4E: MemLdPr RsCls1
  loc_BEAD51:  = Me.Fields
  loc_BEAD56: FLdPr var_4C4
  loc_BEAD59: from_stack_2 = Me.Item(from_stack_1)
  loc_BEAD5E: FLdPr var_4D8
  loc_BEAD61:  = Me.Value
  loc_BEAD66: FLdRfVar var_4E8
  loc_BEAD69: ConcatVar var_4F8
  loc_BEAD6D: LitVarStr var_508, ",'"
  loc_BEAD72: ConcatVar var_518
  loc_BEAD76: FLdRfVar var_540
  loc_BEAD79: FLdRfVar var_530
  loc_BEAD7C: LitVarStr var_52C, "DebrPers"
  loc_BEAD81: PopAdLdVar
  loc_BEAD82: FLdRfVar var_51C
  loc_BEAD85: FLdPr Me
  loc_BEAD88: MemLdPr RsCls1
  loc_BEAD8B:  = Me.Fields
  loc_BEAD90: FLdPr var_51C
  loc_BEAD93: from_stack_2 = Me.Item(from_stack_1)
  loc_BEAD98: FLdPr var_530
  loc_BEAD9B:  = Me.Value
  loc_BEADA0: FLdRfVar var_540
  loc_BEADA3: ConcatVar var_550
  loc_BEADA7: LitVarStr var_560, "','"
  loc_BEADAC: ConcatVar var_570
  loc_BEADB0: FLdRfVar var_598
  loc_BEADB3: FLdRfVar var_588
  loc_BEADB6: LitVarStr var_584, "MarePers"
  loc_BEADBB: PopAdLdVar
  loc_BEADBC: FLdRfVar var_574
  loc_BEADBF: FLdPr Me
  loc_BEADC2: MemLdPr RsCls1
  loc_BEADC5:  = Me.Fields
  loc_BEADCA: FLdPr var_574
  loc_BEADCD: from_stack_2 = Me.Item(from_stack_1)
  loc_BEADD2: FLdPr var_588
  loc_BEADD5:  = Me.Value
  loc_BEADDA: FLdRfVar var_598
  loc_BEADDD: ConcatVar var_5A8
  loc_BEADE1: LitVarStr var_5B8, "','"
  loc_BEADE6: ConcatVar var_5C8
  loc_BEADEA: FLdRfVar var_5F0
  loc_BEADED: FLdRfVar var_5E0
  loc_BEADF0: LitVarStr var_5DC, "CarePers"
  loc_BEADF5: PopAdLdVar
  loc_BEADF6: FLdRfVar var_5CC
  loc_BEADF9: FLdPr Me
  loc_BEADFC: MemLdPr RsCls1
  loc_BEADFF:  = Me.Fields
  loc_BEAE04: FLdPr var_5CC
  loc_BEAE07: from_stack_2 = Me.Item(from_stack_1)
  loc_BEAE0C: FLdPr var_5E0
  loc_BEAE0F:  = Me.Value
  loc_BEAE14: FLdRfVar var_5F0
  loc_BEAE17: ConcatVar var_600
  loc_BEAE1B: LitVarStr var_610, "','"
  loc_BEAE20: ConcatVar var_620
  loc_BEAE24: FLdRfVar var_648
  loc_BEAE27: FLdRfVar var_638
  loc_BEAE2A: LitVarStr var_634, "UbrePers"
  loc_BEAE2F: PopAdLdVar
  loc_BEAE30: FLdRfVar var_624
  loc_BEAE33: FLdPr Me
  loc_BEAE36: MemLdPr RsCls1
  loc_BEAE39:  = Me.Fields
  loc_BEAE3E: FLdPr var_624
  loc_BEAE41: from_stack_2 = Me.Item(from_stack_1)
  loc_BEAE46: FLdPr var_638
  loc_BEAE49:  = Me.Value
  loc_BEAE4E: FLdRfVar var_648
  loc_BEAE51: ConcatVar var_658
  loc_BEAE55: LitVarStr var_668, "',"
  loc_BEAE5A: ConcatVar var_678
  loc_BEAE5E: FLdRfVar var_6A0
  loc_BEAE61: FLdRfVar var_690
  loc_BEAE64: LitVarStr var_68C, "ColrPers"
  loc_BEAE69: PopAdLdVar
  loc_BEAE6A: FLdRfVar var_67C
  loc_BEAE6D: FLdPr Me
  loc_BEAE70: MemLdPr RsCls1
  loc_BEAE73:  = Me.Fields
  loc_BEAE78: FLdPr var_67C
  loc_BEAE7B: from_stack_2 = Me.Item(from_stack_1)
  loc_BEAE80: FLdPr var_690
  loc_BEAE83:  = Me.Value
  loc_BEAE88: FLdRfVar var_6A0
  loc_BEAE8B: ConcatVar var_6B0
  loc_BEAE8F: LitVarStr var_6C0, ",'"
  loc_BEAE94: ConcatVar var_6D0
  loc_BEAE98: FLdRfVar var_6F8
  loc_BEAE9B: FLdRfVar var_6E8
  loc_BEAE9E: LitVarStr var_6E4, "DelrPers"
  loc_BEAEA3: PopAdLdVar
  loc_BEAEA4: FLdRfVar var_6D4
  loc_BEAEA7: FLdPr Me
  loc_BEAEAA: MemLdPr RsCls1
  loc_BEAEAD:  = Me.Fields
  loc_BEAEB2: FLdPr var_6D4
  loc_BEAEB5: from_stack_2 = Me.Item(from_stack_1)
  loc_BEAEBA: FLdPr var_6E8
  loc_BEAEBD:  = Me.Value
  loc_BEAEC2: FLdRfVar var_6F8
  loc_BEAEC5: ConcatVar var_708
  loc_BEAEC9: LitVarStr var_718, "','"
  loc_BEAECE: ConcatVar var_728
  loc_BEAED2: FLdRfVar var_750
  loc_BEAED5: FLdRfVar var_740
  loc_BEAED8: LitVarStr var_73C, "CoprPers"
  loc_BEAEDD: PopAdLdVar
  loc_BEAEDE: FLdRfVar var_72C
  loc_BEAEE1: FLdPr Me
  loc_BEAEE4: MemLdPr RsCls1
  loc_BEAEE7:  = Me.Fields
  loc_BEAEEC: FLdPr var_72C
  loc_BEAEEF: from_stack_2 = Me.Item(from_stack_1)
  loc_BEAEF4: FLdPr var_740
  loc_BEAEF7:  = Me.Value
  loc_BEAEFC: FLdRfVar var_750
  loc_BEAEFF: ConcatVar var_760
  loc_BEAF03: LitVarStr var_770, "','"
  loc_BEAF08: ConcatVar var_780
  loc_BEAF0C: ImpAdLdI4 MemVar_D9302C
  loc_BEAF0F: CVarStr var_790
  loc_BEAF12: ConcatVar var_7A0
  loc_BEAF16: LitVarStr var_7B0, "');"
  loc_BEAF1B: ConcatVar var_7C0
  loc_BEAF1F: CStrVarTmp
  loc_BEAF20: FStStr var_A4
  loc_BEAF23: FFreeStr var_124 = "": var_128 = "": var_7C8 = "": var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_BEAF68: FFreeAd var_3BC = "": var_3D0 = "": var_414 = "": var_428 = "": var_46C = "": var_480 = "": var_4C4 = "": var_4D8 = "": var_51C = "": var_530 = "": var_574 = "": var_588 = "": var_5CC = "": var_5E0 = "": var_624 = "": var_638 = "": var_67C = "": var_690 = "": var_6D4 = "": var_6E8 = "": var_72C = ""
  loc_BEAF97: FFreeVar var_4C0 = "": var_4E8 = "": var_4F8 = "": var_518 = "": var_540 = "": var_550 = "": var_570 = "": var_598 = "": var_5A8 = "": var_5C8 = "": var_5F0 = "": var_600 = "": var_620 = "": var_648 = "": var_658 = "": var_678 = "": var_6A0 = "": var_6B0 = "": var_6D0 = "": var_6F8 = "": var_708 = "": var_728 = "": var_750 = "": var_760 = "": var_780 = "": var_7A0 = "": var_7C0 = "": var_168 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1B8 = "": var_1D8 = "": var_1F8 = "": var_218 = "": var_238 = "": var_258 = "": var_278 = "": var_298 = "": var_2B8 = "": var_2D8 = "": var_2F8 = "": var_318 = "": var_338 = "": var_358 = "": var_378 = "": var_398 = "": var_3B8 = "": var_3E0 = "": var_3F0 = "": var_410 = "": var_438 = "": var_448 = "": var_468 = "": var_490 = ""
  loc_BEB00C: LitI2_Byte 0
  loc_BEB00E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BEB013: FStFPR8 var_7D0
  loc_BEB016: ILdRf var_A4
  loc_BEB019: LitStr " INSERT INTO relacion (CucuPers,CodiOfic,CuenCtct,NumeRela,TipoRela,FealRela,PorcRela,CodiUsua) VALUES ("
  loc_BEB01C: ConcatStr
  loc_BEB01D: FStStrNoPop var_A8
  loc_BEB020: ILdRf var_8C
  loc_BEB023: ConcatStr
  loc_BEB024: FStStrNoPop var_B0
  loc_BEB027: LitStr ",4,'"
  loc_BEB02A: ConcatStr
  loc_BEB02B: FStStrNoPop var_B4
  loc_BEB02E: ILdRf var_88
  loc_BEB031: ConcatStr
  loc_BEB032: FStStrNoPop var_B8
  loc_BEB035: LitStr "',1,'Titular','"
  loc_BEB038: ConcatStr
  loc_BEB039: FStStrNoPop var_BC
  loc_BEB03C: LitI4 1
  loc_BEB041: LitI4 1
  loc_BEB046: LitVarStr var_148, "yyyy-mm-dd"
  loc_BEB04B: FStVarCopyObj var_188
  loc_BEB04E: FLdRfVar var_188
  loc_BEB051: FLdFPR8 var_7D0
  loc_BEB054: CVarDate var_168
  loc_BEB058: ImpAdCallI2 Format$(, )
  loc_BEB05D: FStStrNoPop var_C0
  loc_BEB060: ConcatStr
  loc_BEB061: FStStrNoPop var_C4
  loc_BEB064: LitStr "',100,'"
  loc_BEB067: ConcatStr
  loc_BEB068: FStStrNoPop var_C8
  loc_BEB06B: ImpAdLdI4 MemVar_D9302C
  loc_BEB06E: ConcatStr
  loc_BEB06F: FStStrNoPop var_CC
  loc_BEB072: LitStr "');"
  loc_BEB075: ConcatStr
  loc_BEB076: FStStr var_A4
  loc_BEB079: FFreeStr var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_BEB08E: FFreeVar var_168 = ""
  loc_BEB095: OnErrorGoto loc_BEB0B6
  loc_BEB098: ILdRf var_A4
  loc_BEB09B: Call EjecutarRsCls1(from_stack_1v)
  loc_BEB0A0: LitStr "COMMIT;"
  loc_BEB0A3: Call EjecutarRsCls1(from_stack_1v)
  loc_BEB0A8: Call Requery()
  loc_BEB0AD: ILdRf var_88
  loc_BEB0B0: Call Encontrar(from_stack_1v)
  loc_BEB0B5: ExitProcHresult
  loc_BEB0B6: LitStr "ROLLBACK;"
  loc_BEB0B9: Call EjecutarRsCls1(from_stack_1v)
  loc_BEB0BE: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_BEB0C1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BEB0C6: ExitProcHresult
End Sub

Public Sub AddNewDetaDifu(CodiDifu, DetaDedi, AnioDedi, MesDedi, FefaDedi, ActaDedi, RegiDedi, ExpeDedi, ExexDedi, FeexDedi, FetrDedi, ExrvDedi, UbtrDedi, ExreDedi, FereDedi) 'B81094
  'Data Table: 435FA0
  loc_B80CA4: ILdRf CodiDifu
  loc_B80CA7: FStStrCopy var_88
  loc_B80CAA: ILdRf DetaDedi
  loc_B80CAD: FStStrCopy var_8C
  loc_B80CB0: ILdRf FefaDedi
  loc_B80CB3: FStStrCopy var_90
  loc_B80CB6: ILdRf ActaDedi
  loc_B80CB9: FStStrCopy var_94
  loc_B80CBC: ILdRf RegiDedi
  loc_B80CBF: FStStrCopy var_98
  loc_B80CC2: ILdRf ExpeDedi
  loc_B80CC5: FStStrCopy var_9C
  loc_B80CC8: ILdRf ExexDedi
  loc_B80CCB: FStStrCopy var_A0
  loc_B80CCE: ILdRf FeexDedi
  loc_B80CD1: FStStrCopy var_A4
  loc_B80CD4: ILdRf FetrDedi
  loc_B80CD7: FStStrCopy var_A8
  loc_B80CDA: ILdRf ExrvDedi
  loc_B80CDD: FStStrCopy var_AC
  loc_B80CE0: ILdRf UbtrDedi
  loc_B80CE3: FStStrCopy var_B0
  loc_B80CE6: ILdRf AddNewDetaDifu0
  loc_B80CE9: FStStrCopy var_B4
  loc_B80CEC: ILdRf AddNewDetaDifu4
  loc_B80CEF: FStStrCopy var_B8
  loc_B80CF2: FLdRfVar var_C0
  loc_B80CF5: ILdRf var_88
  loc_B80CF8: from_stack_2v = NuevoRegistroDetaDifu(from_stack_1v)
  loc_B80CFD: FLdUI1
  loc_B80D01: CI2UI1
  loc_B80D03: FStI2 var_BE
  loc_B80D06: FLdRfVar var_90
  loc_B80D09: CVarRef
  loc_B80D0E: ImpAdCallI2 IsDate()
  loc_B80D13: FStI2 var_C0
  loc_B80D16: LitI4 1
  loc_B80D1B: LitI4 1
  loc_B80D20: LitVarStr var_124, "yyyy-mm-dd"
  loc_B80D25: FStVarCopyObj var_134
  loc_B80D28: FLdRfVar var_134
  loc_B80D2B: FLdRfVar var_90
  loc_B80D2E: CVarRef
  loc_B80D33: ImpAdCallI2 Format$(, )
  loc_B80D38: FStStr var_628
  loc_B80D3B: FLdRfVar var_A4
  loc_B80D3E: CVarRef
  loc_B80D43: ImpAdCallI2 IsDate()
  loc_B80D48: FStI2 var_62A
  loc_B80D4B: LitI4 1
  loc_B80D50: LitI4 1
  loc_B80D55: LitVarStr var_2FC, "yyyy-mm-dd"
  loc_B80D5A: FStVarCopyObj var_30C
  loc_B80D5D: FLdRfVar var_30C
  loc_B80D60: FLdRfVar var_A4
  loc_B80D63: CVarRef
  loc_B80D68: ImpAdCallI2 Format$(, )
  loc_B80D6D: FStStr var_630
  loc_B80D70: FLdRfVar var_A8
  loc_B80D73: CVarRef
  loc_B80D78: ImpAdCallI2 IsDate()
  loc_B80D7D: FStI2 var_632
  loc_B80D80: LitI4 1
  loc_B80D85: LitI4 1
  loc_B80D8A: LitVarStr var_3C4, "yyyy-mm-dd"
  loc_B80D8F: FStVarCopyObj var_3D4
  loc_B80D92: FLdRfVar var_3D4
  loc_B80D95: FLdRfVar var_A8
  loc_B80D98: CVarRef
  loc_B80D9D: ImpAdCallI2 Format$(, )
  loc_B80DA2: FStStr var_638
  loc_B80DA5: FLdRfVar var_B8
  loc_B80DA8: CVarRef
  loc_B80DAD: ImpAdCallI2 IsDate()
  loc_B80DB2: FStI2 var_63A
  loc_B80DB5: LitI4 1
  loc_B80DBA: LitI4 1
  loc_B80DBF: LitVarStr var_54C, "yyyy-mm-dd"
  loc_B80DC4: FStVarCopyObj var_55C
  loc_B80DC7: FLdRfVar var_55C
  loc_B80DCA: FLdRfVar var_B8
  loc_B80DCD: CVarRef
  loc_B80DD2: ImpAdCallI2 Format$(, )
  loc_B80DD7: FStStr var_640
  loc_B80DDA: LitStr "START TRANSACTION; INSERT INTO detadifu (CodiDifu,NumeDedi,DetaDedi,AnioDedi,MesDedi,FefaDedi,ActaDedi,RegiDedi,ExpeDedi,ExexDedi,FeexDedi,FetrDedi,ExrvDedi,UbtrDedi,ExreDedi,FereDedi,AltaUsua) "
  loc_B80DDD: LitStr " VALUES ('"
  loc_B80DE0: ConcatStr
  loc_B80DE1: FStStrNoPop var_C4
  loc_B80DE4: ILdRf var_88
  loc_B80DE7: ConcatStr
  loc_B80DE8: FStStrNoPop var_C8
  loc_B80DEB: LitStr "',"
  loc_B80DEE: ConcatStr
  loc_B80DEF: FStStrNoPop var_CC
  loc_B80DF2: FLdI2 var_BE
  loc_B80DF5: CStrUI1
  loc_B80DF7: FStStrNoPop var_D0
  loc_B80DFA: ConcatStr
  loc_B80DFB: FStStrNoPop var_D4
  loc_B80DFE: LitStr ",'"
  loc_B80E01: ConcatStr
  loc_B80E02: FStStrNoPop var_D8
  loc_B80E05: ILdRf var_8C
  loc_B80E08: ConcatStr
  loc_B80E09: FStStrNoPop var_DC
  loc_B80E0C: LitStr "',"
  loc_B80E0F: ConcatStr
  loc_B80E10: FStStrNoPop var_E0
  loc_B80E13: FLdI2 AnioDedi
  loc_B80E16: CStrUI1
  loc_B80E18: FStStrNoPop var_E4
  loc_B80E1B: ConcatStr
  loc_B80E1C: FStStrNoPop var_E8
  loc_B80E1F: LitStr ","
  loc_B80E22: ConcatStr
  loc_B80E23: FStStrNoPop var_EC
  loc_B80E26: FLdI2 MesDedi
  loc_B80E29: CStrUI1
  loc_B80E2B: FStStrNoPop var_F0
  loc_B80E2E: ConcatStr
  loc_B80E2F: FStStrNoPop var_F4
  loc_B80E32: LitStr ","
  loc_B80E35: ConcatStr
  loc_B80E36: CVarStr var_19C
  loc_B80E39: LitVarStr var_16C, "Null"
  loc_B80E3E: FStVarCopyObj var_17C
  loc_B80E41: FLdRfVar var_17C
  loc_B80E44: LitStr "'"
  loc_B80E47: FLdZeroAd var_628
  loc_B80E4A: FStStrNoPop var_138
  loc_B80E4D: ConcatStr
  loc_B80E4E: FStStrNoPop var_13C
  loc_B80E51: LitStr "'"
  loc_B80E54: ConcatStr
  loc_B80E55: CVarStr var_15C
  loc_B80E58: FLdI2 var_C0
  loc_B80E5B: CVarBoolI2 var_14C
  loc_B80E5F: FLdRfVar var_18C
  loc_B80E62: ImpAdCallFPR4  = IIf(, , )
  loc_B80E67: FLdRfVar var_18C
  loc_B80E6A: ConcatVar var_1AC
  loc_B80E6E: LitVarStr var_1BC, ",'"
  loc_B80E73: ConcatVar var_1CC
  loc_B80E77: ILdRf var_94
  loc_B80E7A: CVarStr var_1DC
  loc_B80E7D: ConcatVar var_1EC
  loc_B80E81: LitVarStr var_1FC, "','"
  loc_B80E86: ConcatVar var_20C
  loc_B80E8A: ILdRf var_98
  loc_B80E8D: CVarStr var_21C
  loc_B80E90: ConcatVar var_22C
  loc_B80E94: LitVarStr var_23C, "','"
  loc_B80E99: ConcatVar var_24C
  loc_B80E9D: ILdRf var_9C
  loc_B80EA0: CVarStr var_25C
  loc_B80EA3: ConcatVar var_26C
  loc_B80EA7: LitVarStr var_27C, "','"
  loc_B80EAC: ConcatVar var_28C
  loc_B80EB0: ILdRf var_A0
  loc_B80EB3: CVarStr var_29C
  loc_B80EB6: ConcatVar var_2AC
  loc_B80EBA: LitVarStr var_2BC, "',"
  loc_B80EBF: ConcatVar var_2CC
  loc_B80EC3: LitVarStr var_344, "Null"
  loc_B80EC8: FStVarCopyObj var_354
  loc_B80ECB: FLdRfVar var_354
  loc_B80ECE: LitStr "'"
  loc_B80ED1: FLdZeroAd var_630
  loc_B80ED4: FStStrNoPop var_310
  loc_B80ED7: ConcatStr
  loc_B80ED8: FStStrNoPop var_314
  loc_B80EDB: LitStr "'"
  loc_B80EDE: ConcatStr
  loc_B80EDF: CVarStr var_334
  loc_B80EE2: FLdI2 var_62A
  loc_B80EE5: CVarBoolI2 var_324
  loc_B80EE9: FLdRfVar var_364
  loc_B80EEC: ImpAdCallFPR4  = IIf(, , )
  loc_B80EF1: FLdRfVar var_364
  loc_B80EF4: ConcatVar var_374
  loc_B80EF8: LitVarStr var_384, ","
  loc_B80EFD: ConcatVar var_394
  loc_B80F01: LitVarStr var_40C, "Null"
  loc_B80F06: FStVarCopyObj var_41C
  loc_B80F09: FLdRfVar var_41C
  loc_B80F0C: LitStr "'"
  loc_B80F0F: FLdZeroAd var_638
  loc_B80F12: FStStrNoPop var_3D8
  loc_B80F15: ConcatStr
  loc_B80F16: FStStrNoPop var_3DC
  loc_B80F19: LitStr "'"
  loc_B80F1C: ConcatStr
  loc_B80F1D: CVarStr var_3FC
  loc_B80F20: FLdI2 var_632
  loc_B80F23: CVarBoolI2 var_3EC
  loc_B80F27: FLdRfVar var_42C
  loc_B80F2A: ImpAdCallFPR4  = IIf(, , )
  loc_B80F2F: FLdRfVar var_42C
  loc_B80F32: ConcatVar var_43C
  loc_B80F36: LitVarStr var_44C, ",'"
  loc_B80F3B: ConcatVar var_45C
  loc_B80F3F: ILdRf var_AC
  loc_B80F42: CVarStr var_46C
  loc_B80F45: ConcatVar var_47C
  loc_B80F49: LitVarStr var_48C, "','"
  loc_B80F4E: ConcatVar var_49C
  loc_B80F52: ILdRf var_B0
  loc_B80F55: CVarStr var_4AC
  loc_B80F58: ConcatVar var_4BC
  loc_B80F5C: LitVarStr var_4CC, "','"
  loc_B80F61: ConcatVar var_4DC
  loc_B80F65: ILdRf var_B4
  loc_B80F68: CVarStr var_4EC
  loc_B80F6B: ConcatVar var_4FC
  loc_B80F6F: LitVarStr var_50C, "',"
  loc_B80F74: ConcatVar var_51C
  loc_B80F78: LitVarStr var_594, "Null"
  loc_B80F7D: FStVarCopyObj var_5A4
  loc_B80F80: FLdRfVar var_5A4
  loc_B80F83: LitStr "'"
  loc_B80F86: FLdZeroAd var_640
  loc_B80F89: FStStrNoPop var_560
  loc_B80F8C: ConcatStr
  loc_B80F8D: FStStrNoPop var_564
  loc_B80F90: LitStr "'"
  loc_B80F93: ConcatStr
  loc_B80F94: CVarStr var_584
  loc_B80F97: FLdI2 var_63A
  loc_B80F9A: CVarBoolI2 var_574
  loc_B80F9E: FLdRfVar var_5B4
  loc_B80FA1: ImpAdCallFPR4  = IIf(, , )
  loc_B80FA6: FLdRfVar var_5B4
  loc_B80FA9: ConcatVar var_5C4
  loc_B80FAD: LitVarStr var_5D4, ",'"
  loc_B80FB2: ConcatVar var_5E4
  loc_B80FB6: ImpAdLdI4 MemVar_D9302C
  loc_B80FB9: CVarStr var_5F4
  loc_B80FBC: ConcatVar var_604
  loc_B80FC0: LitVarStr var_614, "')"
  loc_B80FC5: ConcatVar var_624
  loc_B80FC9: CStrVarTmp
  loc_B80FCA: FStStr var_BC
  loc_B80FCD: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_138 = "": var_13C = "": var_310 = "": var_314 = "": var_3D8 = "": var_3DC = "": var_560 = "": var_564 = "": var_628 = "": var_630 = "": var_638 = ""
  loc_B81002: FFreeVar var_47C = "": var_49C = "": var_4BC = "": var_4DC = "": var_4FC = "": var_55C = "": var_574 = "": var_584 = "": var_5A4 = "": var_51C = "": var_5B4 = "": var_5C4 = "": var_5E4 = "": var_604 = "": var_624 = "": var_134 = "": var_14C = "": var_15C = "": var_17C = "": var_19C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_30C = "": var_324 = "": var_334 = "": var_354 = "": var_2CC = "": var_364 = "": var_374 = "": var_3D4 = "": var_3EC = "": var_3FC = "": var_41C = "": var_394 = "": var_42C = "": var_43C = ""
  loc_B8105F: OnErrorGoto loc_B81083
  loc_B81062: ILdRf var_BC
  loc_B81065: Call EjecutarRsCls1(from_stack_1v)
  loc_B8106A: LitStr "COMMIT;"
  loc_B8106D: Call EjecutarRsCls1(from_stack_1v)
  loc_B81072: Call Requery()
  loc_B81077: FLdI2 var_BE
  loc_B8107A: ILdRf var_88
  loc_B8107D: Call EncontrarDetaDifu(from_stack_1v, from_stack_2v)
  loc_B81082: ExitProcHresult
  loc_B81083: LitStr "ROLLBACK;"
  loc_B81086: Call EjecutarRsCls1(from_stack_1v)
  loc_B8108B: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B8108E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B81093: ExitProcHresult
End Sub

Public Sub AddNewTransferecia(CodiDifu, CucuVend, CucuComp, FeesTrdi, ExpeTrdi, ObseTrdi, HaceRequery) 'B4C294
  'Data Table: 435FA0
  loc_B4BF60: ILdRf CodiDifu
  loc_B4BF63: FStStrCopy var_88
  loc_B4BF66: ILdRf CucuVend
  loc_B4BF69: FStStrCopy var_8C
  loc_B4BF6C: ILdRf CucuComp
  loc_B4BF6F: FStStrCopy var_90
  loc_B4BF72: ILdRf ObseTrdi
  loc_B4BF75: FStStrCopy var_94
  loc_B4BF78: ILdRf HaceRequery
  loc_B4BF7B: FStStrCopy var_98
  loc_B4BF7E: FLdRfVar var_A6
  loc_B4BF81: ILdRf var_88
  loc_B4BF84: from_stack_2v = NuevoRegistroTransferencia(from_stack_1v)
  loc_B4BF89: FLdI2 var_A6
  loc_B4BF8C: FStI2 var_A2
  loc_B4BF8F: FLdRfVar var_B8
  loc_B4BF92: FLdI2 var_A2
  loc_B4BF95: ILdRf var_88
  loc_B4BF98: from_stack_3v = ValidaClaveTransferencia(from_stack_1v, from_stack_2v)
  loc_B4BF9D: FLdRfVar var_B8
  loc_B4BFA0: LitVarStr var_C8, vbNullString
  loc_B4BFA5: HardType
  loc_B4BFA6: NeVarBool
  loc_B4BFA8: FFree1Var var_B8 = ""
  loc_B4BFAB: BranchF loc_B4BFB9
  loc_B4BFAE: LitStr "La TRANSFERENCIA del TITULAR del DIFUNTO YA EXISTE. Reintente..."
  loc_B4BFB1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B4BFB6: Branch loc_B4C290
  loc_B4BFB9: LitI2_Byte 0
  loc_B4BFBB: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B4BFC0: FStFPR8 var_174
  loc_B4BFC3: LitStr "START TRANSACTION; INSERT INTO trandifu (CodiDifu, NumeTrdi, CucuVend, CucuComp, FealTrdi, FeesTrdi, ExpeTrdi, ObseTrdi, CodiUsua) "
  loc_B4BFC6: LitStr "VALUES ('"
  loc_B4BFC9: ConcatStr
  loc_B4BFCA: FStStrNoPop var_DC
  loc_B4BFCD: ILdRf var_88
  loc_B4BFD0: ConcatStr
  loc_B4BFD1: FStStrNoPop var_E0
  loc_B4BFD4: LitStr "',"
  loc_B4BFD7: ConcatStr
  loc_B4BFD8: FStStrNoPop var_E4
  loc_B4BFDB: FLdI2 var_A2
  loc_B4BFDE: CStrUI1
  loc_B4BFE0: FStStrNoPop var_E8
  loc_B4BFE3: ConcatStr
  loc_B4BFE4: FStStrNoPop var_EC
  loc_B4BFE7: LitStr ",'"
  loc_B4BFEA: ConcatStr
  loc_B4BFEB: FStStrNoPop var_F0
  loc_B4BFEE: ILdRf var_8C
  loc_B4BFF1: ConcatStr
  loc_B4BFF2: FStStrNoPop var_F4
  loc_B4BFF5: LitStr "','"
  loc_B4BFF8: ConcatStr
  loc_B4BFF9: FStStrNoPop var_F8
  loc_B4BFFC: ILdRf var_90
  loc_B4BFFF: ConcatStr
  loc_B4C000: FStStrNoPop var_FC
  loc_B4C003: LitStr "','"
  loc_B4C006: ConcatStr
  loc_B4C007: FStStrNoPop var_110
  loc_B4C00A: LitI4 1
  loc_B4C00F: LitI4 1
  loc_B4C014: LitVarStr var_10C, "yyyy-mm-dd"
  loc_B4C019: FStVarCopyObj var_D8
  loc_B4C01C: FLdRfVar var_D8
  loc_B4C01F: FLdFPR8 var_174
  loc_B4C022: CVarDate var_B8
  loc_B4C026: ImpAdCallI2 Format$(, )
  loc_B4C02B: FStStrNoPop var_114
  loc_B4C02E: ConcatStr
  loc_B4C02F: FStStrNoPop var_118
  loc_B4C032: LitStr "','"
  loc_B4C035: ConcatStr
  loc_B4C036: FStStrNoPop var_14C
  loc_B4C039: LitI4 1
  loc_B4C03E: LitI4 1
  loc_B4C043: LitVarStr var_138, "yyyy-mm-dd"
  loc_B4C048: FStVarCopyObj var_148
  loc_B4C04B: FLdRfVar var_148
  loc_B4C04E: FLdRfVar FeesTrdi
  loc_B4C051: CVarRef
  loc_B4C056: ImpAdCallI2 Format$(, )
  loc_B4C05B: FStStrNoPop var_150
  loc_B4C05E: ConcatStr
  loc_B4C05F: FStStrNoPop var_154
  loc_B4C062: LitStr "','"
  loc_B4C065: ConcatStr
  loc_B4C066: FStStrNoPop var_158
  loc_B4C069: ILdRf var_94
  loc_B4C06C: ConcatStr
  loc_B4C06D: FStStrNoPop var_15C
  loc_B4C070: LitStr "','"
  loc_B4C073: ConcatStr
  loc_B4C074: FStStrNoPop var_160
  loc_B4C077: ILdRf var_98
  loc_B4C07A: ConcatStr
  loc_B4C07B: FStStrNoPop var_164
  loc_B4C07E: LitStr "','"
  loc_B4C081: ConcatStr
  loc_B4C082: FStStrNoPop var_168
  loc_B4C085: ImpAdLdI4 MemVar_D9302C
  loc_B4C088: ConcatStr
  loc_B4C089: FStStrNoPop var_16C
  loc_B4C08C: LitStr "');"
  loc_B4C08F: ConcatStr
  loc_B4C090: FStStr var_A0
  loc_B4C093: FFreeStr var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_110 = "": var_114 = "": var_118 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_B4C0C0: FFreeVar var_B8 = "": var_D8 = ""
  loc_B4C0C9: LitI2_Byte 0
  loc_B4C0CB: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B4C0D0: FStFPR8 var_174
  loc_B4C0D3: ILdRf var_A0
  loc_B4C0D6: LitStr " UPDATE relacion SET TipoRela = 'Transferencia', FebaRela = '"
  loc_B4C0D9: ConcatStr
  loc_B4C0DA: FStStrNoPop var_DC
  loc_B4C0DD: LitI4 1
  loc_B4C0E2: LitI4 1
  loc_B4C0E7: LitVarStr var_10C, "yyyy-mm-dd"
  loc_B4C0EC: FStVarCopyObj var_D8
  loc_B4C0EF: FLdRfVar var_D8
  loc_B4C0F2: FLdFPR8 var_174
  loc_B4C0F5: CVarDate var_B8
  loc_B4C0F9: ImpAdCallI2 Format$(, )
  loc_B4C0FE: FStStrNoPop var_E0
  loc_B4C101: ConcatStr
  loc_B4C102: FStStrNoPop var_E4
  loc_B4C105: LitStr "', MobaRela = 'TRANSFERENCIA DIFUNTO' WHERE CodiOfic = 4 AND CuenCtct = '"
  loc_B4C108: ConcatStr
  loc_B4C109: FStStrNoPop var_E8
  loc_B4C10C: ILdRf var_88
  loc_B4C10F: ConcatStr
  loc_B4C110: FStStrNoPop var_EC
  loc_B4C113: LitStr "';"
  loc_B4C116: ConcatStr
  loc_B4C117: FStStr var_A0
  loc_B4C11A: FFreeStr var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_B4C127: FFreeVar var_B8 = ""
  loc_B4C12E: ILdRf var_A0
  loc_B4C131: LitStr " UPDATE difunto SET CucuPers = '"
  loc_B4C134: ConcatStr
  loc_B4C135: FStStrNoPop var_DC
  loc_B4C138: ILdRf var_90
  loc_B4C13B: ConcatStr
  loc_B4C13C: FStStrNoPop var_E0
  loc_B4C13F: LitStr "' WHERE CodiDifu = '"
  loc_B4C142: ConcatStr
  loc_B4C143: FStStrNoPop var_E4
  loc_B4C146: ILdRf var_88
  loc_B4C149: ConcatStr
  loc_B4C14A: FStStrNoPop var_E8
  loc_B4C14D: LitStr "';"
  loc_B4C150: ConcatStr
  loc_B4C151: FStStr var_A0
  loc_B4C154: FFreeStr var_DC = "": var_E0 = "": var_E4 = ""
  loc_B4C15F: FLdRfVar var_A6
  loc_B4C162: ILdRf var_88
  loc_B4C165: LitI2_Byte 4
  loc_B4C167: CUI1I2
  loc_B4C169: ILdRf var_90
  loc_B4C16C: FLdRfVar var_9C
  loc_B4C16F: NewIfNullPr clsrelacion
  loc_B4C172: from_stack_4v = clsrelacion.NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B4C177: FLdUI1
  loc_B4C17B: FStUI1 var_A4
  loc_B4C17F: FLdRfVar var_DC
  loc_B4C182: FLdUI1
  loc_B4C186: ILdRf var_88
  loc_B4C189: LitI2_Byte 4
  loc_B4C18B: CUI1I2
  loc_B4C18D: ILdRf var_90
  loc_B4C190: FLdRfVar var_9C
  loc_B4C193: NewIfNullPr clsrelacion
  loc_B4C196: from_stack_5v = clsrelacion.ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B4C19B: ILdRf var_DC
  loc_B4C19E: LitStr vbNullString
  loc_B4C1A1: EqStr
  loc_B4C1A3: FFree1Str var_DC
  loc_B4C1A6: BranchF loc_B4C24F
  loc_B4C1A9: LitI2_Byte 0
  loc_B4C1AB: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B4C1B0: FStFPR8 var_174
  loc_B4C1B3: ILdRf var_A0
  loc_B4C1B6: LitStr " INSERT INTO relacion (CucuPers,CodiOfic,CuenCtct,NumeRela,TipoRela,FealRela,PorcRela,CodiUsua) VALUES ('"
  loc_B4C1B9: ConcatStr
  loc_B4C1BA: FStStrNoPop var_DC
  loc_B4C1BD: ILdRf var_90
  loc_B4C1C0: ConcatStr
  loc_B4C1C1: FStStrNoPop var_E0
  loc_B4C1C4: LitStr "',4,'"
  loc_B4C1C7: ConcatStr
  loc_B4C1C8: FStStrNoPop var_E4
  loc_B4C1CB: ILdRf var_88
  loc_B4C1CE: ConcatStr
  loc_B4C1CF: FStStrNoPop var_E8
  loc_B4C1D2: LitStr "',"
  loc_B4C1D5: ConcatStr
  loc_B4C1D6: FStStrNoPop var_EC
  loc_B4C1D9: FLdUI1
  loc_B4C1DD: CStrI2
  loc_B4C1DF: FStStrNoPop var_F0
  loc_B4C1E2: ConcatStr
  loc_B4C1E3: FStStrNoPop var_F4
  loc_B4C1E6: LitStr ",'Titular','"
  loc_B4C1E9: ConcatStr
  loc_B4C1EA: FStStrNoPop var_F8
  loc_B4C1ED: LitI4 1
  loc_B4C1F2: LitI4 1
  loc_B4C1F7: LitVarStr var_10C, "yyyy-mm-dd"
  loc_B4C1FC: FStVarCopyObj var_D8
  loc_B4C1FF: FLdRfVar var_D8
  loc_B4C202: FLdFPR8 var_174
  loc_B4C205: CVarDate var_B8
  loc_B4C209: ImpAdCallI2 Format$(, )
  loc_B4C20E: FStStrNoPop var_FC
  loc_B4C211: ConcatStr
  loc_B4C212: FStStrNoPop var_110
  loc_B4C215: LitStr "',100,'"
  loc_B4C218: ConcatStr
  loc_B4C219: FStStrNoPop var_114
  loc_B4C21C: ImpAdLdI4 MemVar_D9302C
  loc_B4C21F: ConcatStr
  loc_B4C220: FStStrNoPop var_118
  loc_B4C223: LitStr "');"
  loc_B4C226: ConcatStr
  loc_B4C227: FStStr var_A0
  loc_B4C22A: FFreeStr var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_110 = "": var_114 = ""
  loc_B4C245: FFreeVar var_B8 = ""
  loc_B4C24C: Branch loc_B4C259
  loc_B4C24F: ILdRf var_A0
  loc_B4C252: LitStr " INSERT INTO ERRROR"
  loc_B4C255: ConcatStr
  loc_B4C256: FStStr var_A0
  loc_B4C259: OnErrorGoto loc_B4C280
  loc_B4C25C: ILdRf var_A0
  loc_B4C25F: Call EjecutarRsCls1(from_stack_1v)
  loc_B4C264: LitStr "COMMIT;"
  loc_B4C267: Call EjecutarRsCls1(from_stack_1v)
  loc_B4C26C: FLdI2 arg_28
  loc_B4C26F: BranchF loc_B4C27F
  loc_B4C272: Call Requery()
  loc_B4C277: ILdRf var_88
  loc_B4C27A: Call Encontrar(from_stack_1v)
  loc_B4C27F: ExitProcHresult
  loc_B4C280: LitStr "ROLLBACK;"
  loc_B4C283: Call RedefineRS(from_stack_1v)
  loc_B4C288: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B4C28B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B4C290: ExitProcHresult
  loc_B4C291: CastAd
End Sub

Public Sub Modificar(CodiDifu, CodiInmu, ParvDifu, CacaDifu, CompDifu, FeveDifu, PeriDifu, MesDifu, AnioDifu, PerpDifu, ObseDifu, EjerDifu, BimeDifu) 'B20194
  'Data Table: 435FA0
  loc_B1FF88: ILdRf CodiDifu
  loc_B1FF8B: FStStrCopy var_88
  loc_B1FF8E: ILdRf CompDifu
  loc_B1FF91: FStStrCopy var_8C
  loc_B1FF94: ILdRf FeveDifu
  loc_B1FF97: FStStrCopy var_90
  loc_B1FF9A: ILdRf PerpDifu
  loc_B1FF9D: FStStrCopy var_94
  loc_B1FFA0: ILdRf ObseDifu
  loc_B1FFA3: FStStrCopy var_98
  loc_B1FFA6: FLdRfVar var_9C
  loc_B1FFA9: ILdRf var_88
  loc_B1FFAC: from_stack_2v = ValidaClave(from_stack_1v)
  loc_B1FFB1: ILdRf var_9C
  loc_B1FFB4: LitStr vbNullString
  loc_B1FFB7: EqStr
  loc_B1FFB9: FFree1Str var_9C
  loc_B1FFBC: BranchF loc_B1FFCA
  loc_B1FFBF: LitStr "El REGISTRO DE DIFUNTO NO EXISTE. Reintente..."
  loc_B1FFC2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1FFC7: Branch loc_B20184
  loc_B1FFCA: FLdRfVar var_90
  loc_B1FFCD: CVarRef
  loc_B1FFD2: ImpAdCallI2 IsDate()
  loc_B1FFD7: FStI2 var_3D6
  loc_B1FFDA: LitI4 1
  loc_B1FFDF: LitI4 1
  loc_B1FFE4: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_B1FFE9: FStVarCopyObj var_100
  loc_B1FFEC: FLdRfVar var_100
  loc_B1FFEF: FLdRfVar var_90
  loc_B1FFF2: CVarRef
  loc_B1FFF7: ImpAdCallI2 Format$(, )
  loc_B1FFFC: FStStr var_3DC
  loc_B1FFFF: LitStr "UPDATE difunto SET CodiInmu = "
  loc_B20002: ILdRf CodiInmu
  loc_B20005: CStrI4
  loc_B20007: FStStrNoPop var_9C
  loc_B2000A: ConcatStr
  loc_B2000B: FStStrNoPop var_A0
  loc_B2000E: LitStr ", ParvDifu = "
  loc_B20011: ConcatStr
  loc_B20012: FStStrNoPop var_A4
  loc_B20015: FLdUI1
  loc_B20019: CStrI2
  loc_B2001B: FStStrNoPop var_A8
  loc_B2001E: ConcatStr
  loc_B2001F: FStStrNoPop var_AC
  loc_B20022: LitStr ", CacaDifu = "
  loc_B20025: ConcatStr
  loc_B20026: FStStrNoPop var_B0
  loc_B20029: FLdI2 CacaDifu
  loc_B2002C: CStrUI1
  loc_B2002E: FStStrNoPop var_B4
  loc_B20031: ConcatStr
  loc_B20032: FStStrNoPop var_B8
  loc_B20035: LitStr ", CompDifu = '"
  loc_B20038: ConcatStr
  loc_B20039: FStStrNoPop var_BC
  loc_B2003C: ILdRf var_8C
  loc_B2003F: ConcatStr
  loc_B20040: FStStrNoPop var_C0
  loc_B20043: LitStr "', FeveDifu = "
  loc_B20046: ConcatStr
  loc_B20047: CVarStr var_160
  loc_B2004A: LitVarStr var_130, "Null"
  loc_B2004F: FStVarCopyObj var_140
  loc_B20052: FLdRfVar var_140
  loc_B20055: FLdZeroAd var_3DC
  loc_B20058: CVarStr var_120
  loc_B2005B: FLdI2 var_3D6
  loc_B2005E: CVarBoolI2 var_110
  loc_B20062: FLdRfVar var_150
  loc_B20065: ImpAdCallFPR4  = IIf(, , )
  loc_B2006A: FLdRfVar var_150
  loc_B2006D: ConcatVar var_170
  loc_B20071: LitVarStr var_180, ", PeriDifu = "
  loc_B20076: ConcatVar var_190
  loc_B2007A: FLdI2 PeriDifu
  loc_B2007D: CVarI2 var_1A0
  loc_B20080: ConcatVar var_1B0
  loc_B20084: LitVarStr var_1C0, ", MesDifu = "
  loc_B20089: ConcatVar var_1D0
  loc_B2008D: FLdUI1
  loc_B20091: CVarUI1
  loc_B20095: ConcatVar var_1F0
  loc_B20099: LitVarStr var_200, ", AnioDifu = "
  loc_B2009E: ConcatVar var_210
  loc_B200A2: FLdUI1
  loc_B200A6: CVarUI1
  loc_B200AA: ConcatVar var_230
  loc_B200AE: LitVarStr var_240, ", PerpDifu = '"
  loc_B200B3: ConcatVar var_250
  loc_B200B7: ILdRf var_94
  loc_B200BA: CVarStr var_260
  loc_B200BD: ConcatVar var_270
  loc_B200C1: LitVarStr var_280, "', ObseDifu = '"
  loc_B200C6: ConcatVar var_290
  loc_B200CA: ILdRf var_98
  loc_B200CD: CVarStr var_2A0
  loc_B200D0: ConcatVar var_2B0
  loc_B200D4: LitVarStr var_2C0, "', EjerDifu = "
  loc_B200D9: ConcatVar var_2D0
  loc_B200DD: FLdI2 EjerDifu
  loc_B200E0: CVarI2 var_2E0
  loc_B200E3: ConcatVar var_2F0
  loc_B200E7: LitVarStr var_300, ", BimeDifu = "
  loc_B200EC: ConcatVar var_310
  loc_B200F0: FLdI2 BimeDifu
  loc_B200F3: CVarI2 var_320
  loc_B200F6: ConcatVar var_330
  loc_B200FA: LitVarStr var_340, ", ModiUsua = '"
  loc_B200FF: ConcatVar var_350
  loc_B20103: ImpAdLdI4 MemVar_D9302C
  loc_B20106: CVarStr var_360
  loc_B20109: ConcatVar var_370
  loc_B2010D: LitVarStr var_380, "', ModiFeho = now() WHERE CodiDifu = '"
  loc_B20112: ConcatVar var_390
  loc_B20116: ILdRf var_88
  loc_B20119: CVarStr var_3A0
  loc_B2011C: ConcatVar var_3B0
  loc_B20120: LitVarStr var_3C0, "'"
  loc_B20125: ConcatVar var_3D0
  loc_B20129: CStrVarVal var_3D4
  loc_B2012D: Call EjecutarRsCls1(from_stack_1v)
  loc_B20132: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_3D4 = ""
  loc_B2014D: FFreeVar var_100 = "": var_110 = "": var_120 = "": var_140 = "": var_160 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = "": var_210 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = "": var_350 = "": var_370 = "": var_390 = "": var_3B0 = ""
  loc_B20184: Call Requery()
  loc_B20189: ILdRf var_88
  loc_B2018C: Call Encontrar(from_stack_1v)
  loc_B20191: ExitProcHresult
End Sub

Public Sub ModificarDetaDifu(CodiDifu, NumeDedi, DetaDedi, AnioDedi, MesDedi, FefaDedi, ActaDedi, RegiDedi, ExpeDedi, ExexDedi, FeexDedi, FetrDedi, ExrvDedi, UbtrDedi, ExreDedi, FereDedi) 'B80080
  'Data Table: 435FA0
  loc_B7FC98: ILdRf CodiDifu
  loc_B7FC9B: FStStrCopy var_88
  loc_B7FC9E: ILdRf DetaDedi
  loc_B7FCA1: FStStrCopy var_8C
  loc_B7FCA4: ILdRf FefaDedi
  loc_B7FCA7: FStStrCopy var_90
  loc_B7FCAA: ILdRf ActaDedi
  loc_B7FCAD: FStStrCopy var_94
  loc_B7FCB0: ILdRf RegiDedi
  loc_B7FCB3: FStStrCopy var_98
  loc_B7FCB6: ILdRf ExpeDedi
  loc_B7FCB9: FStStrCopy var_9C
  loc_B7FCBC: ILdRf ExexDedi
  loc_B7FCBF: FStStrCopy var_A0
  loc_B7FCC2: ILdRf FeexDedi
  loc_B7FCC5: FStStrCopy var_A4
  loc_B7FCC8: ILdRf FetrDedi
  loc_B7FCCB: FStStrCopy var_A8
  loc_B7FCCE: ILdRf ExrvDedi
  loc_B7FCD1: FStStrCopy var_AC
  loc_B7FCD4: ILdRf ModificarDetaDifu0
  loc_B7FCD7: FStStrCopy var_B0
  loc_B7FCDA: ILdRf ModificarDetaDifu4
  loc_B7FCDD: FStStrCopy var_B4
  loc_B7FCE0: ILdRf ModificarDetaDifu8
  loc_B7FCE3: FStStrCopy var_B8
  loc_B7FCE6: FLdRfVar var_BC
  loc_B7FCE9: FLdI2 NumeDedi
  loc_B7FCEC: ILdRf var_88
  loc_B7FCEF: from_stack_3v = ValidaClaveDetaDifu(from_stack_1v, from_stack_2v)
  loc_B7FCF4: ILdRf var_BC
  loc_B7FCF7: LitStr vbNullString
  loc_B7FCFA: EqStr
  loc_B7FCFC: FFree1Str var_BC
  loc_B7FCFF: BranchF loc_B7FD0D
  loc_B7FD02: LitStr "El REGISTRO DE DIFUNTO NO EXISTE. Reintente..."
  loc_B7FD05: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B7FD0A: Branch loc_B80072
  loc_B7FD0D: FLdRfVar var_90
  loc_B7FD10: CVarRef
  loc_B7FD15: ImpAdCallI2 IsDate()
  loc_B7FD1A: FStI2 var_6AA
  loc_B7FD1D: LitI4 1
  loc_B7FD22: LitI4 1
  loc_B7FD27: LitVarStr var_104, "yyyy-mm-dd"
  loc_B7FD2C: FStVarCopyObj var_114
  loc_B7FD2F: FLdRfVar var_114
  loc_B7FD32: FLdRfVar var_90
  loc_B7FD35: CVarRef
  loc_B7FD3A: ImpAdCallI2 Format$(, )
  loc_B7FD3F: FStStr var_6B0
  loc_B7FD42: FLdRfVar var_A4
  loc_B7FD45: CVarRef
  loc_B7FD4A: ImpAdCallI2 IsDate()
  loc_B7FD4F: FStI2 var_6B2
  loc_B7FD52: LitI4 1
  loc_B7FD57: LitI4 1
  loc_B7FD5C: LitVarStr var_2DC, "yyyy-mm-dd"
  loc_B7FD61: FStVarCopyObj var_2EC
  loc_B7FD64: FLdRfVar var_2EC
  loc_B7FD67: FLdRfVar var_A4
  loc_B7FD6A: CVarRef
  loc_B7FD6F: ImpAdCallI2 Format$(, )
  loc_B7FD74: FStStr var_6B8
  loc_B7FD77: FLdRfVar var_A8
  loc_B7FD7A: CVarRef
  loc_B7FD7F: ImpAdCallI2 IsDate()
  loc_B7FD84: FStI2 var_6BA
  loc_B7FD87: LitI4 1
  loc_B7FD8C: LitI4 1
  loc_B7FD91: LitVarStr var_3A4, "yyyy-mm-dd"
  loc_B7FD96: FStVarCopyObj var_3B4
  loc_B7FD99: FLdRfVar var_3B4
  loc_B7FD9C: FLdRfVar var_A8
  loc_B7FD9F: CVarRef
  loc_B7FDA4: ImpAdCallI2 Format$(, )
  loc_B7FDA9: FStStr var_6C0
  loc_B7FDAC: FLdRfVar var_B8
  loc_B7FDAF: CVarRef
  loc_B7FDB4: ImpAdCallI2 IsDate()
  loc_B7FDB9: FStI2 var_6C2
  loc_B7FDBC: LitI4 1
  loc_B7FDC1: LitI4 1
  loc_B7FDC6: LitVarStr var_52C, "yyyy-mm-dd"
  loc_B7FDCB: FStVarCopyObj var_53C
  loc_B7FDCE: FLdRfVar var_53C
  loc_B7FDD1: FLdRfVar var_B8
  loc_B7FDD4: CVarRef
  loc_B7FDD9: ImpAdCallI2 Format$(, )
  loc_B7FDDE: FStStr var_6C8
  loc_B7FDE1: LitStr "UPDATE detadifu SET DetaDedi = '"
  loc_B7FDE4: ILdRf var_8C
  loc_B7FDE7: ConcatStr
  loc_B7FDE8: FStStrNoPop var_BC
  loc_B7FDEB: LitStr "', AnioDedi = "
  loc_B7FDEE: ConcatStr
  loc_B7FDEF: FStStrNoPop var_C0
  loc_B7FDF2: FLdI2 AnioDedi
  loc_B7FDF5: CStrUI1
  loc_B7FDF7: FStStrNoPop var_C4
  loc_B7FDFA: ConcatStr
  loc_B7FDFB: FStStrNoPop var_C8
  loc_B7FDFE: LitStr ", MesDedi = "
  loc_B7FE01: ConcatStr
  loc_B7FE02: FStStrNoPop var_CC
  loc_B7FE05: FLdI2 MesDedi
  loc_B7FE08: CStrUI1
  loc_B7FE0A: FStStrNoPop var_D0
  loc_B7FE0D: ConcatStr
  loc_B7FE0E: FStStrNoPop var_D4
  loc_B7FE11: LitStr ", FefaDedi = "
  loc_B7FE14: ConcatStr
  loc_B7FE15: CVarStr var_17C
  loc_B7FE18: LitVarStr var_14C, "Null"
  loc_B7FE1D: FStVarCopyObj var_15C
  loc_B7FE20: FLdRfVar var_15C
  loc_B7FE23: LitStr "'"
  loc_B7FE26: FLdZeroAd var_6B0
  loc_B7FE29: FStStrNoPop var_118
  loc_B7FE2C: ConcatStr
  loc_B7FE2D: FStStrNoPop var_11C
  loc_B7FE30: LitStr "'"
  loc_B7FE33: ConcatStr
  loc_B7FE34: CVarStr var_13C
  loc_B7FE37: FLdI2 var_6AA
  loc_B7FE3A: CVarBoolI2 var_12C
  loc_B7FE3E: FLdRfVar var_16C
  loc_B7FE41: ImpAdCallFPR4  = IIf(, , )
  loc_B7FE46: FLdRfVar var_16C
  loc_B7FE49: ConcatVar var_18C
  loc_B7FE4D: LitVarStr var_19C, ", ActaDedi = '"
  loc_B7FE52: ConcatVar var_1AC
  loc_B7FE56: ILdRf var_94
  loc_B7FE59: CVarStr var_1BC
  loc_B7FE5C: ConcatVar var_1CC
  loc_B7FE60: LitVarStr var_1DC, "', RegiDedi = '"
  loc_B7FE65: ConcatVar var_1EC
  loc_B7FE69: ILdRf var_98
  loc_B7FE6C: CVarStr var_1FC
  loc_B7FE6F: ConcatVar var_20C
  loc_B7FE73: LitVarStr var_21C, "', ExpeDedi = '"
  loc_B7FE78: ConcatVar var_22C
  loc_B7FE7C: ILdRf var_9C
  loc_B7FE7F: CVarStr var_23C
  loc_B7FE82: ConcatVar var_24C
  loc_B7FE86: LitVarStr var_25C, "', ExexDedi = '"
  loc_B7FE8B: ConcatVar var_26C
  loc_B7FE8F: ILdRf var_A0
  loc_B7FE92: CVarStr var_27C
  loc_B7FE95: ConcatVar var_28C
  loc_B7FE99: LitVarStr var_29C, "', FeexDedi = "
  loc_B7FE9E: ConcatVar var_2AC
  loc_B7FEA2: LitVarStr var_324, "Null"
  loc_B7FEA7: FStVarCopyObj var_334
  loc_B7FEAA: FLdRfVar var_334
  loc_B7FEAD: LitStr "'"
  loc_B7FEB0: FLdZeroAd var_6B8
  loc_B7FEB3: FStStrNoPop var_2F0
  loc_B7FEB6: ConcatStr
  loc_B7FEB7: FStStrNoPop var_2F4
  loc_B7FEBA: LitStr "'"
  loc_B7FEBD: ConcatStr
  loc_B7FEBE: CVarStr var_314
  loc_B7FEC1: FLdI2 var_6B2
  loc_B7FEC4: CVarBoolI2 var_304
  loc_B7FEC8: FLdRfVar var_344
  loc_B7FECB: ImpAdCallFPR4  = IIf(, , )
  loc_B7FED0: FLdRfVar var_344
  loc_B7FED3: ConcatVar var_354
  loc_B7FED7: LitVarStr var_364, ",  FetrDedi = "
  loc_B7FEDC: ConcatVar var_374
  loc_B7FEE0: LitVarStr var_3EC, "Null"
  loc_B7FEE5: FStVarCopyObj var_3FC
  loc_B7FEE8: FLdRfVar var_3FC
  loc_B7FEEB: LitStr "'"
  loc_B7FEEE: FLdZeroAd var_6C0
  loc_B7FEF1: FStStrNoPop var_3B8
  loc_B7FEF4: ConcatStr
  loc_B7FEF5: FStStrNoPop var_3BC
  loc_B7FEF8: LitStr "'"
  loc_B7FEFB: ConcatStr
  loc_B7FEFC: CVarStr var_3DC
  loc_B7FEFF: FLdI2 var_6BA
  loc_B7FF02: CVarBoolI2 var_3CC
  loc_B7FF06: FLdRfVar var_40C
  loc_B7FF09: ImpAdCallFPR4  = IIf(, , )
  loc_B7FF0E: FLdRfVar var_40C
  loc_B7FF11: ConcatVar var_41C
  loc_B7FF15: LitVarStr var_42C, ", ExrvDedi = '"
  loc_B7FF1A: ConcatVar var_43C
  loc_B7FF1E: ILdRf var_AC
  loc_B7FF21: CVarStr var_44C
  loc_B7FF24: ConcatVar var_45C
  loc_B7FF28: LitVarStr var_46C, "', UbtrDedi = '"
  loc_B7FF2D: ConcatVar var_47C
  loc_B7FF31: ILdRf var_B0
  loc_B7FF34: CVarStr var_48C
  loc_B7FF37: ConcatVar var_49C
  loc_B7FF3B: LitVarStr var_4AC, "', ExreDedi = '"
  loc_B7FF40: ConcatVar var_4BC
  loc_B7FF44: ILdRf var_B4
  loc_B7FF47: CVarStr var_4CC
  loc_B7FF4A: ConcatVar var_4DC
  loc_B7FF4E: LitVarStr var_4EC, "', FereDedi = "
  loc_B7FF53: ConcatVar var_4FC
  loc_B7FF57: LitVarStr var_574, "Null"
  loc_B7FF5C: FStVarCopyObj var_584
  loc_B7FF5F: FLdRfVar var_584
  loc_B7FF62: LitStr "'"
  loc_B7FF65: FLdZeroAd var_6C8
  loc_B7FF68: FStStrNoPop var_540
  loc_B7FF6B: ConcatStr
  loc_B7FF6C: FStStrNoPop var_544
  loc_B7FF6F: LitStr "'"
  loc_B7FF72: ConcatStr
  loc_B7FF73: CVarStr var_564
  loc_B7FF76: FLdI2 var_6C2
  loc_B7FF79: CVarBoolI2 var_554
  loc_B7FF7D: FLdRfVar var_594
  loc_B7FF80: ImpAdCallFPR4  = IIf(, , )
  loc_B7FF85: FLdRfVar var_594
  loc_B7FF88: ConcatVar var_5A4
  loc_B7FF8C: LitVarStr var_5B4, ", ModiUsua = '"
  loc_B7FF91: ConcatVar var_5C4
  loc_B7FF95: ImpAdLdI4 MemVar_D9302C
  loc_B7FF98: CVarStr var_5D4
  loc_B7FF9B: ConcatVar var_5E4
  loc_B7FF9F: LitVarStr var_5F4, "', ModiFeho = now() "
  loc_B7FFA4: ConcatVar var_604
  loc_B7FFA8: LitVarStr var_614, " WHERE  CodiDifu = '"
  loc_B7FFAD: ConcatVar var_624
  loc_B7FFB1: ILdRf var_88
  loc_B7FFB4: CVarStr var_634
  loc_B7FFB7: ConcatVar var_644
  loc_B7FFBB: LitVarStr var_654, "' AND NumeDedi = "
  loc_B7FFC0: ConcatVar var_664
  loc_B7FFC4: FLdI2 NumeDedi
  loc_B7FFC7: CVarI2 var_674
  loc_B7FFCA: ConcatVar var_684
  loc_B7FFCE: LitVarStr var_694, ";"
  loc_B7FFD3: ConcatVar var_6A4
  loc_B7FFD7: CStrVarVal var_6A8
  loc_B7FFDB: Call EjecutarRsCls1(from_stack_1v)
  loc_B7FFE0: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_118 = "": var_11C = "": var_2F0 = "": var_2F4 = "": var_3B8 = "": var_3BC = "": var_540 = "": var_544 = "": var_6A8 = "": var_6B0 = "": var_6B8 = "": var_6C0 = ""
  loc_B8000B: FFreeVar var_45C = "": var_47C = "": var_49C = "": var_4BC = "": var_4DC = "": var_53C = "": var_554 = "": var_564 = "": var_584 = "": var_4FC = "": var_594 = "": var_5A4 = "": var_5C4 = "": var_5E4 = "": var_604 = "": var_624 = "": var_644 = "": var_664 = "": var_684 = "": var_6A4 = "": var_114 = "": var_12C = "": var_13C = "": var_15C = "": var_17C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2EC = "": var_304 = "": var_314 = "": var_334 = "": var_2AC = "": var_344 = "": var_354 = "": var_3B4 = "": var_3CC = "": var_3DC = "": var_3FC = "": var_374 = "": var_40C = "": var_41C = ""
  loc_B80072: Call Requery()
  loc_B80077: ILdRf var_88
  loc_B8007A: Call Encontrar(from_stack_1v)
  loc_B8007F: ExitProcHresult
End Sub

Public Sub ModificarDomicilioPostal(CodiDifu, CocpDifu, DecpDifu, NupoDifu, CobpDifu, DebpDifu, MapoDifu, CapoDifu, UbpoDifu, ColpDifu, DelpDifu, CoppDifu) 'B02A7C
  'Data Table: 435FA0
  loc_B02908: ILdRf CodiDifu
  loc_B0290B: FStStrCopy var_88
  loc_B0290E: ILdRf DecpDifu
  loc_B02911: FStStrCopy var_8C
  loc_B02914: ILdRf DebpDifu
  loc_B02917: FStStrCopy var_90
  loc_B0291A: ILdRf MapoDifu
  loc_B0291D: FStStrCopy var_94
  loc_B02920: ILdRf CapoDifu
  loc_B02923: FStStrCopy var_98
  loc_B02926: ILdRf UbpoDifu
  loc_B02929: FStStrCopy var_9C
  loc_B0292C: ILdRf DelpDifu
  loc_B0292F: FStStrCopy var_A0
  loc_B02932: ILdRf CoppDifu
  loc_B02935: FStStrCopy var_A4
  loc_B02938: FLdRfVar var_A8
  loc_B0293B: ILdRf var_88
  loc_B0293E: from_stack_2v = ValidaClave(from_stack_1v)
  loc_B02943: ILdRf var_A8
  loc_B02946: LitStr vbNullString
  loc_B02949: EqStr
  loc_B0294B: FFree1Str var_A8
  loc_B0294E: BranchF loc_B0295C
  loc_B02951: LitStr "El Difurcio NO EXISTE. Reintente..."
  loc_B02954: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B02959: Branch loc_B02A6D
  loc_B0295C: LitStr " UPDATE difunto SET CocpDifu = "
  loc_B0295F: ILdRf CocpDifu
  loc_B02962: CStrI4
  loc_B02964: FStStrNoPop var_A8
  loc_B02967: ConcatStr
  loc_B02968: FStStrNoPop var_AC
  loc_B0296B: LitStr ", DecpDifu = '"
  loc_B0296E: ConcatStr
  loc_B0296F: FStStrNoPop var_B0
  loc_B02972: ILdRf var_8C
  loc_B02975: ConcatStr
  loc_B02976: FStStrNoPop var_B4
  loc_B02979: LitStr "', NupoDifu = "
  loc_B0297C: ConcatStr
  loc_B0297D: FStStrNoPop var_B8
  loc_B02980: FLdI2 NupoDifu
  loc_B02983: CStrUI1
  loc_B02985: FStStrNoPop var_BC
  loc_B02988: ConcatStr
  loc_B02989: FStStrNoPop var_C0
  loc_B0298C: LitStr ", CobpDifu = "
  loc_B0298F: ConcatStr
  loc_B02990: FStStrNoPop var_C4
  loc_B02993: FLdI2 CobpDifu
  loc_B02996: CStrUI1
  loc_B02998: FStStrNoPop var_C8
  loc_B0299B: ConcatStr
  loc_B0299C: FStStrNoPop var_CC
  loc_B0299F: LitStr ", DebpDifu = '"
  loc_B029A2: ConcatStr
  loc_B029A3: FStStrNoPop var_D0
  loc_B029A6: ILdRf var_90
  loc_B029A9: ConcatStr
  loc_B029AA: FStStrNoPop var_D4
  loc_B029AD: LitStr "', MapoDifu = '"
  loc_B029B0: ConcatStr
  loc_B029B1: FStStrNoPop var_D8
  loc_B029B4: ILdRf var_94
  loc_B029B7: ConcatStr
  loc_B029B8: FStStrNoPop var_DC
  loc_B029BB: LitStr "', CapoDifu = '"
  loc_B029BE: ConcatStr
  loc_B029BF: FStStrNoPop var_E0
  loc_B029C2: ILdRf var_98
  loc_B029C5: ConcatStr
  loc_B029C6: FStStrNoPop var_E4
  loc_B029C9: LitStr "', UbpoDifu = '"
  loc_B029CC: ConcatStr
  loc_B029CD: FStStrNoPop var_E8
  loc_B029D0: ILdRf var_9C
  loc_B029D3: ConcatStr
  loc_B029D4: FStStrNoPop var_EC
  loc_B029D7: LitStr "', ColpDifu = "
  loc_B029DA: ConcatStr
  loc_B029DB: FStStrNoPop var_F0
  loc_B029DE: FLdI2 ColpDifu
  loc_B029E1: CStrUI1
  loc_B029E3: FStStrNoPop var_F4
  loc_B029E6: ConcatStr
  loc_B029E7: FStStrNoPop var_F8
  loc_B029EA: LitStr ", DelpDifu = '"
  loc_B029ED: ConcatStr
  loc_B029EE: FStStrNoPop var_FC
  loc_B029F1: ILdRf var_A0
  loc_B029F4: ConcatStr
  loc_B029F5: FStStrNoPop var_100
  loc_B029F8: LitStr "', CoppDifu = '"
  loc_B029FB: ConcatStr
  loc_B029FC: FStStrNoPop var_104
  loc_B029FF: ILdRf var_A4
  loc_B02A02: ConcatStr
  loc_B02A03: FStStrNoPop var_108
  loc_B02A06: LitStr "', ModiUsua = '"
  loc_B02A09: ConcatStr
  loc_B02A0A: FStStrNoPop var_10C
  loc_B02A0D: ImpAdLdI4 MemVar_D9302C
  loc_B02A10: ConcatStr
  loc_B02A11: FStStrNoPop var_110
  loc_B02A14: LitStr "', ModiFeho = now() WHERE CodiDifu = '"
  loc_B02A17: ConcatStr
  loc_B02A18: FStStrNoPop var_114
  loc_B02A1B: ILdRf var_88
  loc_B02A1E: ConcatStr
  loc_B02A1F: FStStrNoPop var_118
  loc_B02A22: LitStr "'"
  loc_B02A25: ConcatStr
  loc_B02A26: FStStrNoPop var_11C
  loc_B02A29: Call EjecutarRsCls1(from_stack_1v)
  loc_B02A2E: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_B02A6D: Call Requery()
  loc_B02A72: ILdRf var_88
  loc_B02A75: Call Encontrar(from_stack_1v)
  loc_B02A7A: ExitProcHresult
End Sub

Public Sub ModificarFechaVencimiento(CodiDifu, FeveDifu) 'A6A0BC
  'Data Table: 435FA0
  loc_A6A060: ILdRf FeveDifu
  loc_A6A063: FStStrCopy var_88
  loc_A6A066: LitStr "UPDATE difunto SET FeveDifu = "
  loc_A6A069: LitI4 1
  loc_A6A06E: LitI4 1
  loc_A6A073: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_A6A078: FStVarCopyObj var_B8
  loc_A6A07B: FLdRfVar var_B8
  loc_A6A07E: FLdRfVar var_88
  loc_A6A081: CVarRef
  loc_A6A086: ImpAdCallI2 Format$(, )
  loc_A6A08B: FStStrNoPop var_BC
  loc_A6A08E: ConcatStr
  loc_A6A08F: FStStrNoPop var_C0
  loc_A6A092: LitStr " WHERE CodiDifu = "
  loc_A6A095: ConcatStr
  loc_A6A096: FStStrNoPop var_C4
  loc_A6A099: ILdRf CodiDifu
  loc_A6A09C: CStrI4
  loc_A6A09E: FStStrNoPop var_C8
  loc_A6A0A1: ConcatStr
  loc_A6A0A2: FStStrNoPop var_CC
  loc_A6A0A5: Call EjecutarRsCls1(from_stack_1v)
  loc_A6A0AA: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_A6A0B7: FFree1Var var_B8 = ""
  loc_A6A0BA: ExitProcHresult
End Sub

Public Sub Baja(CodiDifu, MobaDifu) 'A88F60
  'Data Table: 435FA0
  loc_A88ED4: ILdRf CodiDifu
  loc_A88ED7: FStStrCopy var_88
  loc_A88EDA: ILdRf MobaDifu
  loc_A88EDD: FStStrCopy var_8C
  loc_A88EE0: FLdRfVar var_94
  loc_A88EE3: ILdRf var_88
  loc_A88EE6: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A88EEB: ILdRf var_94
  loc_A88EEE: LitStr vbNullString
  loc_A88EF1: EqStr
  loc_A88EF3: FFree1Str var_94
  loc_A88EF6: BranchF loc_A88F04
  loc_A88EF9: LitStr "El REGISTRO DE DIFUNTO NO EXISTE. Reintente..."
  loc_A88EFC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A88F01: Branch loc_A88F5D
  loc_A88F04: LitStr "START TRANSACTION; UPDATE difunto SET BajaFeho = now(), BajaMoti = '"
  loc_A88F07: ILdRf var_8C
  loc_A88F0A: ConcatStr
  loc_A88F0B: FStStrNoPop var_94
  loc_A88F0E: LitStr "' WHERE CodiDifu = '"
  loc_A88F11: ConcatStr
  loc_A88F12: FStStrNoPop var_98
  loc_A88F15: ILdRf var_88
  loc_A88F18: ConcatStr
  loc_A88F19: FStStrNoPop var_9C
  loc_A88F1C: LitStr "'"
  loc_A88F1F: ConcatStr
  loc_A88F20: FStStr var_90
  loc_A88F23: FFreeStr var_94 = "": var_98 = ""
  loc_A88F2C: OnErrorGoto loc_A88F4D
  loc_A88F2F: ILdRf var_90
  loc_A88F32: Call EjecutarRsCls1(from_stack_1v)
  loc_A88F37: LitStr "COMMIT;"
  loc_A88F3A: Call EjecutarRsCls1(from_stack_1v)
  loc_A88F3F: Call Requery()
  loc_A88F44: ILdRf var_88
  loc_A88F47: Call Encontrar(from_stack_1v)
  loc_A88F4C: ExitProcHresult
  loc_A88F4D: LitStr "ROLLBACK;"
  loc_A88F50: Call EjecutarRsCls1(from_stack_1v)
  loc_A88F55: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_A88F58: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A88F5D: ExitProcHresult
End Sub

Public Sub Delete() '9FDA18
  'Data Table: 435FA0
  loc_9FD9E8: FLdRfVar var_88
  loc_9FD9EB: FLdPr Me
  loc_9FD9EE: MemLdPr RsFrm
  loc_9FD9F1:  = Me.RecordCount
  loc_9FD9F6: ILdRf var_88
  loc_9FD9F9: LitI4 0
  loc_9FD9FE: GtI4
  loc_9FD9FF: BranchF loc_9FDA17
  loc_9FDA02: LitI4 1
  loc_9FDA07: FLdPr Me
  loc_9FDA0A: MemLdPr RsFrm
  loc_9FDA0D: Me.Delete
  loc_9FDA12: Call MoveNext()
  loc_9FDA17: ExitProcHresult
End Sub

Public Sub Requery() '9E4E0C
  'Data Table: 435FA0
  loc_9E4DE8: LitI4 -1
  loc_9E4DED: FLdPr Me
  loc_9E4DF0: MemLdPr RsFrm
  loc_9E4DF3: Me.Requery from_stack_1
  loc_9E4DF8: LitVarStr var_94, "Primary"
  loc_9E4DFD: PopAdLdVar
  loc_9E4DFE: FLdPr Me
  loc_9E4E01: LateIdCall
  loc_9E4E09: ExitProcHresult
End Sub

Public Sub Update() 'A0F004
  'Data Table: 435FA0
  loc_A0EFC8: FLdPr Me
  loc_A0EFCB: MemLdStr RsFrm
  loc_A0EFCE: FStAd var_88 
  loc_A0EFD2: LitI4 3
  loc_A0EFD7: FLdPr var_88
  loc_A0EFDA: Me.UpdateBatch
  loc_A0EFDF: FLdRfVar var_8C
  loc_A0EFE2: FLdPr var_88
  loc_A0EFE5:  = Me.EditMode
  loc_A0EFEA: ILdRf var_8C
  loc_A0EFED: LitI4 2
  loc_A0EFF2: EqI4
  loc_A0EFF3: BranchF loc_A0EFFB
  loc_A0EFF6: Call MoveLast()
  loc_A0EFFB: LitNothing
  loc_A0EFFD: FStAd var_88 
  loc_A0F001: ExitProcHresult
  loc_A0F002: SetLastSystemError
End Sub

Public Sub Cancel() 'A296AC
  'Data Table: 435FA0
  loc_A29660: FLdPr Me
  loc_A29663: MemLdStr RsFrm
  loc_A29666: FStAd var_88 
  loc_A2966A: FLdRfVar var_8C
  loc_A2966D: FLdPr var_88
  loc_A29670:  = Me.RecordCount
  loc_A29675: ILdRf var_8C
  loc_A29678: LitI4 0
  loc_A2967D: GtI4
  loc_A2967E: BranchF loc_A296A5
  loc_A29681: FLdPr var_88
  loc_A29684: Me.CancelUpdate
  loc_A29689: FLdRfVar var_8C
  loc_A2968C: FLdPr var_88
  loc_A2968F:  = Me.EditMode
  loc_A29694: ILdRf var_8C
  loc_A29697: LitI4 2
  loc_A2969C: EqI4
  loc_A2969D: BranchF loc_A296A5
  loc_A296A0: Call MoveFirst()
  loc_A296A5: LitNothing
  loc_A296A7: FStAd var_88 
  loc_A296AB: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9DD9F0
  'Data Table: 435FA0
  loc_9DD9D0: FLdRfVar var_8C
  loc_9DD9D3: FLdPr Me
  loc_9DD9D6: MemLdPr RsFrm
  loc_9DD9D9:  = Me.EditMode
  loc_9DD9DE: ILdRf var_8C
  loc_9DD9E1: LitI4 0
  loc_9DD9E6: NeI4
  loc_9DD9E7: FStI2 var_86
  loc_9DD9EA: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5E8D8
  'Data Table: 435FA0
  loc_A5E874: ILdRf sSelect
  loc_A5E877: FStStrCopy var_88
  loc_A5E87A: LitNothing
  loc_A5E87C: CastAd
  loc_A5E87F: FStAdFuncNoPop
  loc_A5E882: FLdPr Me
  loc_A5E885: MemStAd
  loc_A5E889: FFree1Ad var_8C
  loc_A5E88C: New Recordset
  loc_A5E890: FStAdFuncNoPop
  loc_A5E893: FLdPr Me
  loc_A5E896: MemStAd
  loc_A5E89A: FFree1Ad var_8C
  loc_A5E89D: LitI4 -1
  loc_A5E8A2: LitI4 3
  loc_A5E8A7: LitI4 3
  loc_A5E8AC: ImpAdLdI4 MemVar_D9301C
  loc_A5E8AF: CVarAd
  loc_A5E8B3: PopAdLdVar
  loc_A5E8B4: ILdRf var_88
  loc_A5E8B7: CVarStr var_9C
  loc_A5E8BA: PopAdLdVar
  loc_A5E8BB: FLdPr Me
  loc_A5E8BE: MemLdPr RsFrm
  loc_A5E8C1: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5E8C6: LitVarStr var_9C, "Primary"
  loc_A5E8CB: PopAdLdVar
  loc_A5E8CC: FLdPr Me
  loc_A5E8CF: LateIdCall
  loc_A5E8D7: ExitProcHresult
End Sub

Public Sub EjecutarRsCls1(sSelect) 'A4B6B0
  'Data Table: 435FA0
  loc_A4B65C: ILdRf sSelect
  loc_A4B65F: FStStrCopy var_88
  loc_A4B662: LitNothing
  loc_A4B664: CastAd
  loc_A4B667: FStAdFuncNoPop
  loc_A4B66A: FLdPr Me
  loc_A4B66D: MemStAd
  loc_A4B671: FFree1Ad var_8C
  loc_A4B674: New Recordset
  loc_A4B678: FStAdFuncNoPop
  loc_A4B67B: FLdPr Me
  loc_A4B67E: MemStAd
  loc_A4B682: FFree1Ad var_8C
  loc_A4B685: LitI4 -1
  loc_A4B68A: LitI4 3
  loc_A4B68F: LitI4 3
  loc_A4B694: ImpAdLdI4 MemVar_D9301C
  loc_A4B697: CVarAd
  loc_A4B69B: PopAdLdVar
  loc_A4B69C: ILdRf var_88
  loc_A4B69F: CVarStr var_9C
  loc_A4B6A2: PopAdLdVar
  loc_A4B6A3: FLdPr Me
  loc_A4B6A6: MemLdPr RsCls1
  loc_A4B6A9: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4B6AE: ExitProcHresult
End Sub

Public Sub EjecutarRsCls2(sSelect) 'A4B598
  'Data Table: 435FA0
  loc_A4B544: ILdRf sSelect
  loc_A4B547: FStStrCopy var_88
  loc_A4B54A: LitNothing
  loc_A4B54C: CastAd
  loc_A4B54F: FStAdFuncNoPop
  loc_A4B552: FLdPr Me
  loc_A4B555: MemStAd
  loc_A4B559: FFree1Ad var_8C
  loc_A4B55C: New Recordset
  loc_A4B560: FStAdFuncNoPop
  loc_A4B563: FLdPr Me
  loc_A4B566: MemStAd
  loc_A4B56A: FFree1Ad var_8C
  loc_A4B56D: LitI4 -1
  loc_A4B572: LitI4 3
  loc_A4B577: LitI4 3
  loc_A4B57C: ImpAdLdI4 MemVar_D9301C
  loc_A4B57F: CVarAd
  loc_A4B583: PopAdLdVar
  loc_A4B584: ILdRf var_88
  loc_A4B587: CVarStr var_9C
  loc_A4B58A: PopAdLdVar
  loc_A4B58B: FLdPr Me
  loc_A4B58E: MemLdPr RsCls2
  loc_A4B591: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4B596: ExitProcHresult
End Sub

Public Sub Encontrar(CodiDifu) 'A00814
  'Data Table: 435FA0
  loc_A007EC: ILdRf CodiDifu
  loc_A007EF: FStStrCopy var_88
  loc_A007F2: LitStr "CodiDifu = '"
  loc_A007F5: ILdRf var_88
  loc_A007F8: ConcatStr
  loc_A007F9: FStStrNoPop var_8C
  loc_A007FC: LitStr "'"
  loc_A007FF: ConcatStr
  loc_A00800: PopTmpLdAdStr
  loc_A00804: Call Find(from_stack_1v)
  loc_A00809: FFreeStr var_8C = ""
  loc_A00810: ExitProcHresult
  loc_A00811: FLdPr Me
End Sub

Public Sub EncontrarDetaDifu(CodiDifu, NumeDedi) 'A270A4
  'Data Table: 435FA0
  loc_A27060: ILdRf CodiDifu
  loc_A27063: FStStrCopy var_88
  loc_A27066: LitStr "CodiDifu = '"
  loc_A27069: ILdRf var_88
  loc_A2706C: ConcatStr
  loc_A2706D: FStStrNoPop var_8C
  loc_A27070: LitStr "'"
  loc_A27073: ConcatStr
  loc_A27074: PopTmpLdAdStr
  loc_A27078: Call Find(from_stack_1v)
  loc_A2707D: FFreeStr var_8C = ""
  loc_A27084: LitStr "NumeDedi = "
  loc_A27087: FLdI2 NumeDedi
  loc_A2708A: CStrUI1
  loc_A2708C: FStStrNoPop var_8C
  loc_A2708F: ConcatStr
  loc_A27090: PopTmpLdAdStr
  loc_A27094: Call Find(from_stack_1v)
  loc_A27099: FFreeStr var_8C = ""
  loc_A270A0: ExitProcHresult
End Sub

Public Property Get DataSource() '9F453C
  'Data Table: 435FA0
  loc_9F4518: ZeroRetVal
  loc_9F451A: FLdRfVar var_8C
  loc_9F451D: FLdPr Me
  loc_9F4520: MemLdPr RsFrm
  loc_9F4523:  = Me.DataSource
  loc_9F4528: ILdRf var_8C
  loc_9F452B: CastAd
  loc_9F452E: FStAdFunc var_88
  loc_9F4531: FFree1Ad var_8C
  loc_9F4534: ExitProcCbHresult
  loc_9F453A: ConcatStr
End Sub

Public Property Get EditMode() '9C99CC
  'Data Table: 435FA0
  loc_9C99B0: FLdRfVar var_8C
  loc_9C99B3: FLdPr Me
  loc_9C99B6: MemLdPr RsFrm
  loc_9C99B9:  = Me.EditMode
  loc_9C99BE: ILdRf var_8C
  loc_9C99C1: FStR4 var_88
  loc_9C99C4: ExitProcCbHresult
End Sub

Public Function ValidaClave(CodiDifu) 'A4B3EC
  'Data Table: 435FA0
  loc_A4B3A0: ILdRf CodiDifu
  loc_A4B3A3: FStStrCopy var_8C
  loc_A4B3A6: ZeroRetVal
  loc_A4B3A8: LitStr "SELECT CodiDifu FROM difunto WHERE CodiDifu = '"
  loc_A4B3AB: ILdRf var_8C
  loc_A4B3AE: ConcatStr
  loc_A4B3AF: FStStrNoPop var_90
  loc_A4B3B2: LitStr "'"
  loc_A4B3B5: ConcatStr
  loc_A4B3B6: FStStrNoPop ValidaClave
  loc_A4B3B9: Call EjecutarRsCls1(from_stack_1v)
  loc_A4B3BE: FFreeStr var_90 = ""
  loc_A4B3C5: FLdRfVar var_98
  loc_A4B3C8: FLdPr Me
  loc_A4B3CB: MemLdPr RsCls1
  loc_A4B3CE:  = Me.RecordCount
  loc_A4B3D3: ILdRf var_98
  loc_A4B3D6: LitI4 0
  loc_A4B3DB: GtI4
  loc_A4B3DC: BranchF loc_A4B3E5
  loc_A4B3DF: LitStr "El REGISTRO DE CEMENTERIO YA EXISTE. Reintente..."
  loc_A4B3E2: FStStrCopy var_88
  loc_A4B3E5: ExitProcCbHresult
  loc_A4B3EB: Ary1LdCy
End Function

Public Function ValidaClaveDetaDifu(CodiDifu, NumeDedi) 'A67C78
  'Data Table: 435FA0
  loc_A67C1C: ILdRf CodiDifu
  loc_A67C1F: FStStrCopy var_8C
  loc_A67C22: ZeroRetVal
  loc_A67C24: LitStr "SELECT CodiDifu, NumeDedi FROM detadifu WHERE CodiDifu = '"
  loc_A67C27: ILdRf var_8C
  loc_A67C2A: ConcatStr
  loc_A67C2B: FStStrNoPop var_90
  loc_A67C2E: LitStr "' AND NumeDedi = "
  loc_A67C31: ConcatStr
  loc_A67C32: FStStrNoPop ValidaClaveDetaDifu
  loc_A67C35: FLdI2 NumeDedi
  loc_A67C38: CStrUI1
  loc_A67C3A: FStStrNoPop var_98
  loc_A67C3D: ConcatStr
  loc_A67C3E: FStStrNoPop var_9C
  loc_A67C41: Call EjecutarRsCls1(from_stack_1v)
  loc_A67C46: FFreeStr var_90 = "": ValidaClaveDetaDifu = "": var_98 = ""
  loc_A67C51: FLdRfVar var_A0
  loc_A67C54: FLdPr Me
  loc_A67C57: MemLdPr RsCls1
  loc_A67C5A:  = Me.RecordCount
  loc_A67C5F: ILdRf var_A0
  loc_A67C62: LitI4 0
  loc_A67C67: GtI4
  loc_A67C68: BranchF loc_A67C71
  loc_A67C6B: LitStr "El DIFUNTO YA EXISTE. Reintente..."
  loc_A67C6E: FStStrCopy var_88
  loc_A67C71: ExitProcCbHresult
  loc_A67C77: Ary1LdCy
End Function

Public Function NuevoRegistroDetaDifu(CodiDifu) 'A8B374
  'Data Table: 435FA0
  loc_A8B2E0: ILdRf CodiDifu
  loc_A8B2E3: FStStrCopy var_8C
  loc_A8B2E6: LitStr "SELECT CodiDifu, NumeDedi FROM detadifu WHERE CodiDifu = '"
  loc_A8B2E9: ILdRf var_8C
  loc_A8B2EC: ConcatStr
  loc_A8B2ED: FStStrNoPop var_90
  loc_A8B2F0: LitStr "' ORDER BY CodiDifu, NumeDedi DESC "
  loc_A8B2F3: ConcatStr
  loc_A8B2F4: FStStrNoPop NuevoRegistroDetaDifu
  loc_A8B2F7: Call EjecutarRsCls1(from_stack_1v)
  loc_A8B2FC: FFreeStr var_90 = ""
  loc_A8B303: FLdRfVar var_98
  loc_A8B306: FLdPr Me
  loc_A8B309: MemLdPr RsCls1
  loc_A8B30C:  = Me.RecordCount
  loc_A8B311: ILdRf var_98
  loc_A8B314: LitI4 0
  loc_A8B319: GtI4
  loc_A8B31A: BranchF loc_A8B365
  loc_A8B31D: FLdRfVar var_C0
  loc_A8B320: FLdRfVar var_B0
  loc_A8B323: LitVarStr var_AC, "NumeDedi"
  loc_A8B328: PopAdLdVar
  loc_A8B329: FLdRfVar var_9C
  loc_A8B32C: FLdPr Me
  loc_A8B32F: MemLdPr RsCls1
  loc_A8B332:  = Me.Fields
  loc_A8B337: FLdPr var_9C
  loc_A8B33A: from_stack_2 = Me.Item(from_stack_1)
  loc_A8B33F: FLdPr var_B0
  loc_A8B342:  = Me.Value
  loc_A8B347: FLdRfVar var_C0
  loc_A8B34A: FnCLngVar
  loc_A8B34C: LitI4 1
  loc_A8B351: AddI4
  loc_A8B352: CUI1I4
  loc_A8B354: FStUI1 var_86
  loc_A8B358: FFreeAd var_9C = ""
  loc_A8B35F: FFree1Var var_C0 = ""
  loc_A8B362: Branch loc_A8B36D
  loc_A8B365: LitI2_Byte 1
  loc_A8B367: CUI1I2
  loc_A8B369: FStUI1 var_86
  loc_A8B36D: ExitProcCbHresult
End Function

Public Function NuevoRegistroTransferencia(CodiDifu) 'A88718
  'Data Table: 435FA0
  loc_A8868C: ILdRf CodiDifu
  loc_A8868F: FStStrCopy var_8C
  loc_A88692: LitStr "SELECT IFNULL(MAX(NumeTrdi),0) + 1 as NumeTrdi FROM trandifu WHERE CodiDifu = '"
  loc_A88695: ILdRf var_8C
  loc_A88698: ConcatStr
  loc_A88699: FStStrNoPop var_90
  loc_A8869C: LitStr "' ORDER BY CodiDifu DESC LIMIT 1"
  loc_A8869F: ConcatStr
  loc_A886A0: FStStrNoPop NuevoRegistroTransferencia
  loc_A886A3: Call EjecutarRsCls1(from_stack_1v)
  loc_A886A8: FFreeStr var_90 = ""
  loc_A886AF: FLdRfVar var_98
  loc_A886B2: FLdPr Me
  loc_A886B5: MemLdPr RsCls1
  loc_A886B8:  = Me.RecordCount
  loc_A886BD: ILdRf var_98
  loc_A886C0: LitI4 0
  loc_A886C5: GtI4
  loc_A886C6: BranchF loc_A8870D
  loc_A886C9: FLdRfVar var_C0
  loc_A886CC: FLdRfVar var_B0
  loc_A886CF: LitVarStr var_AC, "NumeTrdi"
  loc_A886D4: PopAdLdVar
  loc_A886D5: FLdRfVar var_9C
  loc_A886D8: FLdPr Me
  loc_A886DB: MemLdPr RsCls1
  loc_A886DE:  = Me.Fields
  loc_A886E3: FLdPr var_9C
  loc_A886E6: from_stack_2 = Me.Item(from_stack_1)
  loc_A886EB: FLdPr var_B0
  loc_A886EE:  = Me.Value
  loc_A886F3: FLdRfVar var_C0
  loc_A886F6: FnCByteVar
  loc_A886F8: CI2UI1
  loc_A886FA: LitI2_Byte 1
  loc_A886FC: AddI2
  loc_A886FD: FStI2 var_86
  loc_A88700: FFreeAd var_9C = ""
  loc_A88707: FFree1Var var_C0 = ""
  loc_A8870A: Branch loc_A88712
  loc_A8870D: LitI2_Byte 1
  loc_A8870F: FStI2 var_86
  loc_A88712: ExitProcCbHresult
End Function

Public Function ValidaClaveTransferencia(CodiDifu, NumeTrdi) 'A6DDC8
  'Data Table: 435FA0
  loc_A6DD68: ILdRf CodiDifu
  loc_A6DD6B: FStStrCopy var_98
  loc_A6DD6E: ZeroRetValVar
  loc_A6DD70: LitStr "SELECT CodiDifu FROM trandifu WHERE CodiDifu = '"
  loc_A6DD73: ILdRf var_98
  loc_A6DD76: ConcatStr
  loc_A6DD77: FStStrNoPop var_9C
  loc_A6DD7A: LitStr "' AND NumeTrdi = "
  loc_A6DD7D: ConcatStr
  loc_A6DD7E: FStStrNoPop var_A0
  loc_A6DD81: FLdI2 NumeTrdi
  loc_A6DD84: CStrUI1
  loc_A6DD86: FStStrNoPop var_A4
  loc_A6DD89: ConcatStr
  loc_A6DD8A: FStStrNoPop var_A8
  loc_A6DD8D: Call EjecutarRsCls1(from_stack_1v)
  loc_A6DD92: FFreeStr var_9C = "": var_A0 = "": var_A4 = ""
  loc_A6DD9D: FLdRfVar var_AC
  loc_A6DDA0: FLdPr Me
  loc_A6DDA3: MemLdPr RsCls1
  loc_A6DDA6:  = Me.RecordCount
  loc_A6DDAB: ILdRf var_AC
  loc_A6DDAE: LitI4 0
  loc_A6DDB3: GtI4
  loc_A6DDB4: BranchF loc_A6DDC0
  loc_A6DDB7: LitVarStr var_BC, "La transferencia YA EXISTE. Reintente..."
  loc_A6DDBC: FStVarCopy
  loc_A6DDC0: ExitProcCbHresult
End Function

Public Sub sSelect(sFiltro, FiltroCbo) 'AC8294
  'Data Table: 435FA0
  loc_AC8198: ILdRf sFiltro
  loc_AC819B: FStStrCopy var_88
  loc_AC819E: ILdRf FiltroCbo
  loc_AC81A1: FStAd var_8C 
  loc_AC81A5: ILdRf var_88
  loc_AC81A8: LitStr vbNullString
  loc_AC81AB: EqStr
  loc_AC81AD: BranchF loc_AC81B9
  loc_AC81B0: LitStr " WHERE difunto.CodiCeme = 0"
  loc_AC81B3: FStStrCopy var_90
  loc_AC81B6: Branch loc_AC8247
  loc_AC81B9: FLdRfVar var_92
  loc_AC81BC: FLdPr var_8C
  loc_AC81BF:  = Me.ListIndex
  loc_AC81C4: FLdI2 var_92
  loc_AC81C7: FStI2 var_94
  loc_AC81CA: FLdI2 var_94
  loc_AC81CD: LitI2_Byte 0
  loc_AC81CF: EqI2
  loc_AC81D0: BranchF loc_AC81EA
  loc_AC81D3: LitStr " WHERE difunto.CodiDifu LIKE '" & Chr(37)
  loc_AC81D6: ILdRf var_88
  loc_AC81D9: ConcatStr
  loc_AC81DA: FStStrNoPop var_98
  loc_AC81DD: LitStr Chr(37) & "' ORDER BY difunto.CodiDifu"
  loc_AC81E0: ConcatStr
  loc_AC81E1: FStStr var_90
  loc_AC81E4: FFree1Str var_98
  loc_AC81E7: Branch loc_AC8247
  loc_AC81EA: FLdI2 var_94
  loc_AC81ED: LitI2_Byte 1
  loc_AC81EF: EqI2
  loc_AC81F0: BranchF loc_AC820A
  loc_AC81F3: LitStr " WHERE DetaPers LIKE '" & Chr(37)
  loc_AC81F6: ILdRf var_88
  loc_AC81F9: ConcatStr
  loc_AC81FA: FStStrNoPop var_98
  loc_AC81FD: LitStr Chr(37) & "' ORDER BY persona.DetaPers"
  loc_AC8200: ConcatStr
  loc_AC8201: FStStr var_90
  loc_AC8204: FFree1Str var_98
  loc_AC8207: Branch loc_AC8247
  loc_AC820A: FLdI2 var_94
  loc_AC820D: LitI2_Byte 2
  loc_AC820F: EqI2
  loc_AC8210: BranchF loc_AC822A
  loc_AC8213: LitStr " WHERE difunto.CodiTise = "
  loc_AC8216: ILdRf var_88
  loc_AC8219: ConcatStr
  loc_AC821A: FStStrNoPop var_98
  loc_AC821D: LitStr " ORDER BY difunto.CodiTise"
  loc_AC8220: ConcatStr
  loc_AC8221: FStStr var_90
  loc_AC8224: FFree1Str var_98
  loc_AC8227: Branch loc_AC8247
  loc_AC822A: FLdI2 var_94
  loc_AC822D: LitI2_Byte 3
  loc_AC822F: EqI2
  loc_AC8230: BranchF loc_AC8247
  loc_AC8233: LitStr " WHERE DetaDedi LIKE '" & Chr(37)
  loc_AC8236: ILdRf var_88
  loc_AC8239: ConcatStr
  loc_AC823A: FStStrNoPop var_98
  loc_AC823D: LitStr Chr(37) & "' ORDER BY DetaDedi"
  loc_AC8240: ConcatStr
  loc_AC8241: FStStr var_90
  loc_AC8244: FFree1Str var_98
  loc_AC8247: LitStr "SELECT difunto.CodiDifu, difunto.CucuPers, infogov.persona.DetaPers, difunto.CodiInmu, difunto.CodiCeme, cementerio.DetaCeme, difunto.CodiTise, tiposepu.DetaTise, SeccDifu, PlanDifu, NumeDifu, FilaDifu, CacaDifu, CompDifu, ParvDifu, difunto.BajaFeho, difunto.BajaMoti, FeveDifu, PeriDifu, MesDifu, AnioDifu, PerpDifu, ObseDifu, DetaDedi, detadifu.NumeDedi, difunto.EjerDifu, difunto.BimeDifu,"
  loc_AC824A: LitStr " difunto.CocpDifu,difunto.DecpDifu,difunto.NupoDifu,difunto.CobpDifu,difunto.DebpDifu,difunto.MapoDifu,difunto.CapoDifu,difunto.UbpoDifu,difunto.ColpDifu,difunto.DelpDifu,difunto.CoppDifu,difunto.BajaMoti as BajaMotiDifu,difunto.BajaFeho"
  loc_AC824D: ConcatStr
  loc_AC824E: FStStrNoPop var_98
  loc_AC8251: LitStr " FROM difunto "
  loc_AC8254: ConcatStr
  loc_AC8255: FStStrNoPop var_9C
  loc_AC8258: LitStr " LEFT JOIN infogov.persona On difunto.CucuPers = infogov.persona.CucuPers"
  loc_AC825B: ConcatStr
  loc_AC825C: FStStrNoPop var_A0
  loc_AC825F: LitStr " LEFT JOIN tiposepu On difunto.CodiTise = tiposepu.CodiTise"
  loc_AC8262: ConcatStr
  loc_AC8263: FStStrNoPop var_A4
  loc_AC8266: LitStr " LEFT JOIN cementerio On difunto.CodiCeme = cementerio.CodiCeme "
  loc_AC8269: ConcatStr
  loc_AC826A: FStStrNoPop var_A8
  loc_AC826D: LitStr " LEFT JOIN detadifu ON detadifu.CodiDifu = difunto.CodiDifu"
  loc_AC8270: ConcatStr
  loc_AC8271: FStStrNoPop var_AC
  loc_AC8274: ILdRf var_90
  loc_AC8277: ConcatStr
  loc_AC8278: FStStrNoPop var_B0
  loc_AC827B: Call RedefineRS(from_stack_1v)
  loc_AC8280: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AC8291: ExitProcHresult
End Sub

Public Sub sSelectDomicilioPostal(sFiltro, FiltroCbo) 'A95684
  'Data Table: 435FA0
  loc_A955E4: ILdRf sFiltro
  loc_A955E7: FStStrCopy var_88
  loc_A955EA: ILdRf FiltroCbo
  loc_A955ED: FStAd var_8C 
  loc_A955F1: ILdRf var_88
  loc_A955F4: LitStr vbNullString
  loc_A955F7: EqStr
  loc_A955F9: BranchF loc_A95605
  loc_A955FC: LitStr " WHERE CodiDifu = ''"
  loc_A955FF: FStStrCopy var_90
  loc_A95602: Branch loc_A95653
  loc_A95605: FLdRfVar var_92
  loc_A95608: FLdPr var_8C
  loc_A9560B:  = Me.ListIndex
  loc_A95610: FLdI2 var_92
  loc_A95613: FStI2 var_94
  loc_A95616: FLdI2 var_94
  loc_A95619: LitI2_Byte 0
  loc_A9561B: EqI2
  loc_A9561C: BranchF loc_A95636
  loc_A9561F: LitStr " WHERE CodiDifu LIKE '" & Chr(37)
  loc_A95622: ILdRf var_88
  loc_A95625: ConcatStr
  loc_A95626: FStStrNoPop var_98
  loc_A95629: LitStr Chr(37) & "' ORDER BY difunto.CodiDifu"
  loc_A9562C: ConcatStr
  loc_A9562D: FStStr var_90
  loc_A95630: FFree1Str var_98
  loc_A95633: Branch loc_A95653
  loc_A95636: FLdI2 var_94
  loc_A95639: LitI2_Byte 1
  loc_A9563B: EqI2
  loc_A9563C: BranchF loc_A95653
  loc_A9563F: LitStr " WHERE DetaPers LIKE '" & Chr(37)
  loc_A95642: ILdRf var_88
  loc_A95645: ConcatStr
  loc_A95646: FStStrNoPop var_98
  loc_A95649: LitStr Chr(37) & "' ORDER BY persona.DetaPers"
  loc_A9564C: ConcatStr
  loc_A9564D: FStStr var_90
  loc_A95650: FFree1Str var_98
  loc_A95653: LitStr " SELECT difunto.CodiDifu, difunto.CucuPers, infogov.persona.DetaPers, "
  loc_A95656: LitStr " CocpDifu, DecpDifu, NupoDifu, CobpDifu, DebpDifu, MapoDifu, CapoDifu, UbpoDifu, ColpDifu, DelpDifu, CoppDifu"
  loc_A95659: ConcatStr
  loc_A9565A: FStStrNoPop var_98
  loc_A9565D: LitStr " FROM difunto"
  loc_A95660: ConcatStr
  loc_A95661: FStStrNoPop var_9C
  loc_A95664: LitStr " LEFT JOIN infogov.persona on infogov.persona.CucuPers = difunto.CucuPers"
  loc_A95667: ConcatStr
  loc_A95668: FStStrNoPop var_A0
  loc_A9566B: ILdRf var_90
  loc_A9566E: ConcatStr
  loc_A9566F: FStStrNoPop var_A4
  loc_A95672: Call RedefineRS(from_stack_1v)
  loc_A95677: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_A95682: ExitProcHresult
End Sub

Public Sub AnulandoDifunto(CodiDifu, NumeDedi, BajaMoti, boTodo) 'AA6BF8
  'Data Table: 435FA0
  loc_AA6B4C: ILdRf CodiDifu
  loc_AA6B4F: FStStrCopy var_88
  loc_AA6B52: ILdRf BajaMoti
  loc_AA6B55: FStStrCopy var_8C
  loc_AA6B58: FLdI2 boTodo
  loc_AA6B5B: LitI2_Byte &HFF
  loc_AA6B5D: EqI2
  loc_AA6B5E: BranchF loc_AA6BA5
  loc_AA6B61: LitStr "UPDATE detadifu SET detadifu.BajaUsua = '"
  loc_AA6B64: ImpAdLdI4 MemVar_D9302C
  loc_AA6B67: ConcatStr
  loc_AA6B68: FStStrNoPop var_90
  loc_AA6B6B: LitStr "', detadifu.BajaFeho = now(), BajaMoti = '"
  loc_AA6B6E: ConcatStr
  loc_AA6B6F: FStStrNoPop var_94
  loc_AA6B72: ILdRf var_8C
  loc_AA6B75: ConcatStr
  loc_AA6B76: FStStrNoPop var_98
  loc_AA6B79: LitStr "' WHERE CodiDifu = '"
  loc_AA6B7C: ConcatStr
  loc_AA6B7D: FStStrNoPop var_9C
  loc_AA6B80: ILdRf var_88
  loc_AA6B83: ConcatStr
  loc_AA6B84: FStStrNoPop var_A0
  loc_AA6B87: LitStr "'"
  loc_AA6B8A: ConcatStr
  loc_AA6B8B: FStStrNoPop var_A4
  loc_AA6B8E: Call EjecutarRsCls1(from_stack_1v)
  loc_AA6B93: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_AA6BA2: Branch loc_AA6BF6
  loc_AA6BA5: LitStr "UPDATE detadifu SET detadifu.BajaUsua = '"
  loc_AA6BA8: ImpAdLdI4 MemVar_D9302C
  loc_AA6BAB: ConcatStr
  loc_AA6BAC: FStStrNoPop var_90
  loc_AA6BAF: LitStr "', detadifu.BajaFeho = now(), BajaMoti = '"
  loc_AA6BB2: ConcatStr
  loc_AA6BB3: FStStrNoPop var_94
  loc_AA6BB6: ILdRf var_8C
  loc_AA6BB9: ConcatStr
  loc_AA6BBA: FStStrNoPop var_98
  loc_AA6BBD: LitStr "' WHERE CodiDifu = '"
  loc_AA6BC0: ConcatStr
  loc_AA6BC1: FStStrNoPop var_9C
  loc_AA6BC4: ILdRf var_88
  loc_AA6BC7: ConcatStr
  loc_AA6BC8: FStStrNoPop var_A0
  loc_AA6BCB: LitStr "' AND NumeDedi = "
  loc_AA6BCE: ConcatStr
  loc_AA6BCF: FStStrNoPop var_A4
  loc_AA6BD2: FLdI2 NumeDedi
  loc_AA6BD5: CStrUI1
  loc_AA6BD7: FStStrNoPop var_A8
  loc_AA6BDA: ConcatStr
  loc_AA6BDB: FStStrNoPop var_AC
  loc_AA6BDE: Call EjecutarRsCls1(from_stack_1v)
  loc_AA6BE3: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AA6BF6: ExitProcHresult
End Sub

Private Function Proc_189_53_9F4428() '9F4428
  'Data Table: 435FA0
  loc_9F4404: LitStr "Primary"
  loc_9F4407: FLdPr Me
  loc_9F440A: LateIdLdVar var_94 DispID_4 0
  loc_9F4411: CastAdVar Me
  loc_9F4415: FStAdFunc var_98
  loc_9F4418: FLdPr var_98
  loc_9F4420: FFree1Ad var_98
  loc_9F4423: FFree1Var var_94 = ""
  loc_9F4426: ExitProcHresult
End Function

Private Function Proc_189_54_9DDADC(arg_C) '9DDADC
  'Data Table: 435FA0
  loc_9DDAC0: ILdI4 arg_C
  loc_9DDAC3: FStStrCopy var_88
  loc_9DDAC6: ILdRf var_88
  loc_9DDAC9: LitStr "Primary"
  loc_9DDACC: EqStr
  loc_9DDACE: BranchF loc_9DDADB
  loc_9DDAD1: FLdPr Me
  loc_9DDAD4: MemLdStr RsFrm
  loc_9DDAD7: IStAd
  loc_9DDADB: ExitProcHresult
End Function
