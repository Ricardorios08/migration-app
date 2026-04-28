VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsingreso"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '4141E4
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4141F3
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '414202
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96F7DC
  'Data Table: 413F20
  loc_96F7B4: FLdRfVar var_88
  loc_96F7B7: FLdPr Me
  loc_96F7BA: MemLdPr RsFrm
  loc_96F7BD:  = Me.RecordCount
  loc_96F7C2: ILdRf var_88
  loc_96F7C5: LitI4 0
  loc_96F7CA: GtI4
  loc_96F7CB: BranchF loc_96F7D9
  loc_96F7CE: FLdPr Me
  loc_96F7D1: MemLdPr RsFrm
  loc_96F7D4: Me.MoveFirst
  loc_96F7D9: ExitProcHresult
End Sub

Public Sub MoveLast() '96F784
  'Data Table: 413F20
  loc_96F75C: FLdRfVar var_88
  loc_96F75F: FLdPr Me
  loc_96F762: MemLdPr RsFrm
  loc_96F765:  = Me.RecordCount
  loc_96F76A: ILdRf var_88
  loc_96F76D: LitI4 0
  loc_96F772: GtI4
  loc_96F773: BranchF loc_96F781
  loc_96F776: FLdPr Me
  loc_96F779: MemLdPr RsFrm
  loc_96F77C: Me.MoveLast
  loc_96F781: ExitProcHresult
End Sub

Public Sub MoveNext() '99D2B0
  'Data Table: 413F20
  loc_99D238: FLdRfVar var_86
  loc_99D23B: FLdPr Me
  loc_99D23E: MemLdPr RsFrm
  loc_99D241:  = Me.EOF
  loc_99D246: FLdI2 var_86
  loc_99D249: NotI4
  loc_99D24A: FLdRfVar var_8C
  loc_99D24D: FLdPr Me
  loc_99D250: MemLdPr RsFrm
  loc_99D253:  = Me.RecordCount
  loc_99D258: ILdRf var_8C
  loc_99D25B: LitI4 0
  loc_99D260: GtI4
  loc_99D261: AndI4
  loc_99D262: BranchF loc_99D270
  loc_99D265: FLdPr Me
  loc_99D268: MemLdPr RsFrm
  loc_99D26B: Me.MoveNext
  loc_99D270: FLdRfVar var_86
  loc_99D273: FLdPr Me
  loc_99D276: MemLdPr RsFrm
  loc_99D279:  = Me.EOF
  loc_99D27E: FLdI2 var_86
  loc_99D281: FLdRfVar var_8C
  loc_99D284: FLdPr Me
  loc_99D287: MemLdPr RsFrm
  loc_99D28A:  = Me.RecordCount
  loc_99D28F: ILdRf var_8C
  loc_99D292: LitI4 0
  loc_99D297: GtI4
  loc_99D298: AndI4
  loc_99D299: BranchF loc_99D2AC
  loc_99D29C: ImpAdCallFPR4 Beep()
  loc_99D2A1: FLdPr Me
  loc_99D2A4: MemLdPr RsFrm
  loc_99D2A7: Me.MoveLast
  loc_99D2AC: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '941864
  'Data Table: 413F20
  loc_941858: FLdPr Me
  loc_94185B: MemLdPr RsFrm
  loc_94185E: Me.MoveNext
  loc_941863: ExitProcHresult
End Sub

Public Sub Move(iValor) '9483D4
  'Data Table: 413F20
  loc_9483C0: LitVar_Missing var_94
  loc_9483C3: PopAdLdVar
  loc_9483C4: ILdI2 iValor
  loc_9483C7: CI4UI1
  loc_9483C8: FLdPr Me
  loc_9483CB: MemLdPr RsFrm
  loc_9483CE: Me.Move from_stack_1, from_stack_2
  loc_9483D3: ExitProcHresult
End Sub

Public Sub MovePrevious() '99D160
  'Data Table: 413F20
  loc_99D0E8: FLdRfVar var_86
  loc_99D0EB: FLdPr Me
  loc_99D0EE: MemLdPr RsFrm
  loc_99D0F1:  = Me.BOF
  loc_99D0F6: FLdI2 var_86
  loc_99D0F9: NotI4
  loc_99D0FA: FLdRfVar var_8C
  loc_99D0FD: FLdPr Me
  loc_99D100: MemLdPr RsFrm
  loc_99D103:  = Me.RecordCount
  loc_99D108: ILdRf var_8C
  loc_99D10B: LitI4 0
  loc_99D110: GtI4
  loc_99D111: AndI4
  loc_99D112: BranchF loc_99D120
  loc_99D115: FLdPr Me
  loc_99D118: MemLdPr RsFrm
  loc_99D11B: Me.MovePrevious
  loc_99D120: FLdRfVar var_86
  loc_99D123: FLdPr Me
  loc_99D126: MemLdPr RsFrm
  loc_99D129:  = Me.BOF
  loc_99D12E: FLdI2 var_86
  loc_99D131: FLdRfVar var_8C
  loc_99D134: FLdPr Me
  loc_99D137: MemLdPr RsFrm
  loc_99D13A:  = Me.RecordCount
  loc_99D13F: ILdRf var_8C
  loc_99D142: LitI4 0
  loc_99D147: GtI4
  loc_99D148: AndI4
  loc_99D149: BranchF loc_99D15C
  loc_99D14C: ImpAdCallFPR4 Beep()
  loc_99D151: FLdPr Me
  loc_99D154: MemLdPr RsFrm
  loc_99D157: Me.MoveFirst
  loc_99D15C: ExitProcHresult
End Sub

Public Property Get EOF() '95F074
  'Data Table: 413F20
  loc_95F058: FLdRfVar var_88
  loc_95F05B: FLdPr Me
  loc_95F05E: MemLdPr RsFrm
  loc_95F061:  = Me.EOF
  loc_95F066: FLdI2 var_88
  loc_95F069: FStI2 var_86
  loc_95F06C: ExitProcCbHresult
End Sub

Public Property Get BOF() '95EFDC
  'Data Table: 413F20
  loc_95EFC0: FLdRfVar var_88
  loc_95EFC3: FLdPr Me
  loc_95EFC6: MemLdPr RsFrm
  loc_95EFC9:  = Me.BOF
  loc_95EFCE: FLdI2 var_88
  loc_95EFD1: FStI2 var_86
  loc_95EFD4: ExitProcCbHresult
  loc_95EFDA: ImpAdLdFPR4 MemVar_905A4D
End Sub

Public Sub Sort(sOrden) '946584
  'Data Table: 413F20
  loc_946574: ILdI4 sOrden
  loc_946577: FLdPr Me
  loc_94657A: MemLdPr RsFrm
  loc_94657D: Me.Sort = from_stack_1
  loc_946582: ExitProcHresult
  loc_946583: CI4UI1
End Sub

Public Sub Filter(sCriterio) '948390
  'Data Table: 413F20
  loc_94837C: ILdI4 sCriterio
  loc_94837F: CVarStr var_94
  loc_948382: PopAdLdVar
  loc_948383: FLdPr Me
  loc_948386: MemLdPr RsFrm
  loc_948389: Me.Filter = from_stack_1
  loc_94838E: ExitProcHresult
End Sub

Public Sub Find(sFind) '968570
  'Data Table: 413F20
  loc_968550: LitVar_Missing var_94
  loc_968553: PopAdLdVar
  loc_968554: LitI4 1
  loc_968559: LitI4 0
  loc_96855E: ILdI4 sFind
  loc_968561: FLdPr Me
  loc_968564: MemLdPr RsFrm
  loc_968567: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96856C: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '95EE14
  'Data Table: 413F20
  loc_95EDF8: FLdRfVar var_8C
  loc_95EDFB: FLdPr Me
  loc_95EDFE: MemLdPr RsFrm
  loc_95EE01:  = Me.AbsolutePosition
  loc_95EE06: ILdRf var_8C
  loc_95EE09: FStR4 var_88
  loc_95EE0C: ExitProcCbHresult
  loc_95EE12: FLdRfVar var_579C
End Sub

Public Property Get RecordCount() '95ED30
  'Data Table: 413F20
  loc_95ED14: FLdRfVar var_8C
  loc_95ED17: FLdPr Me
  loc_95ED1A: MemLdPr RsFrm
  loc_95ED1D:  = Me.RecordCount
  loc_95ED22: ILdRf var_8C
  loc_95ED25: FStR4 var_88
  loc_95ED28: ExitProcCbHresult
End Sub

Public Property Get Recordset() '953088
  'Data Table: 413F20
  loc_953074: ZeroRetVal
  loc_953076: FLdPr Me
  loc_953079: MemLdStr RsFrm
  loc_95307C: FStAd var_88 
  loc_953080: ExitProcCbHresult
  loc_953086: AryUnlock
End Sub

Public Sub AddNew(FechIngr, PeriInfo, CodiCuco, CodiConc, CodiEnre, ImpoIngr, DetaIngr, IndeIngr) 'A2B7D4
  'Data Table: 413F20
  loc_A2B65C: ILdRf FechIngr
  loc_A2B65F: FStStrCopy var_88
  loc_A2B662: ILdRf CodiCuco
  loc_A2B665: FStStrCopy var_8C
  loc_A2B668: ILdRf CodiConc
  loc_A2B66B: FStStrCopy var_90
  loc_A2B66E: ILdRf CodiEnre
  loc_A2B671: FStStrCopy var_94
  loc_A2B674: ILdRf IndeIngr
  loc_A2B677: FStStrCopy var_98
  loc_A2B67A: ILdRf arg_2C
  loc_A2B67D: FStStrCopy var_9C
  loc_A2B680: LitStr "INSERT INTO ingreso (FechIngr,PeriInfo,CodiCuco,CodiConc,CodiEnre,ImpoIngr,DetaIngr,IndeIngr,AutoIngr,AltaUsua)"
  loc_A2B683: LitStr " VALUES ('"
  loc_A2B686: ConcatStr
  loc_A2B687: FStStrNoPop var_D0
  loc_A2B68A: LitI4 1
  loc_A2B68F: LitI4 1
  loc_A2B694: LitVarStr var_BC, "yyyy-mm-dd"
  loc_A2B699: FStVarCopyObj var_CC
  loc_A2B69C: FLdRfVar var_CC
  loc_A2B69F: FLdRfVar var_88
  loc_A2B6A2: CVarRef
  loc_A2B6A7: ImpAdCallI2 Format$(, )
  loc_A2B6AC: FStStrNoPop var_D4
  loc_A2B6AF: ConcatStr
  loc_A2B6B0: FStStrNoPop var_D8
  loc_A2B6B3: LitStr "',"
  loc_A2B6B6: ConcatStr
  loc_A2B6B7: FStStrNoPop var_DC
  loc_A2B6BA: FLdI2 PeriInfo
  loc_A2B6BD: CStrUI1
  loc_A2B6BF: FStStrNoPop var_E0
  loc_A2B6C2: ConcatStr
  loc_A2B6C3: FStStrNoPop var_E4
  loc_A2B6C6: LitStr ",'"
  loc_A2B6C9: ConcatStr
  loc_A2B6CA: FStStrNoPop var_E8
  loc_A2B6CD: ILdRf var_8C
  loc_A2B6D0: ConcatStr
  loc_A2B6D1: FStStrNoPop var_EC
  loc_A2B6D4: LitStr "','"
  loc_A2B6D7: ConcatStr
  loc_A2B6D8: FStStrNoPop var_F0
  loc_A2B6DB: ILdRf var_90
  loc_A2B6DE: ConcatStr
  loc_A2B6DF: FStStrNoPop var_F4
  loc_A2B6E2: LitStr "','"
  loc_A2B6E5: ConcatStr
  loc_A2B6E6: FStStrNoPop var_F8
  loc_A2B6E9: ILdRf var_94
  loc_A2B6EC: ConcatStr
  loc_A2B6ED: FStStrNoPop var_FC
  loc_A2B6F0: LitStr "',"
  loc_A2B6F3: ConcatStr
  loc_A2B6F4: FStStrNoPop var_104
  loc_A2B6F7: LitI4 0
  loc_A2B6FC: LitI4 -1
  loc_A2B701: LitI4 1
  loc_A2B706: LitStr "."
  loc_A2B709: LitStr ","
  loc_A2B70C: FLdFPR8 ImpoIngr
  loc_A2B70F: CStrR8
  loc_A2B711: FStStrNoPop var_100
  loc_A2B714: ImpAdCallI2 Replace(, , , , , )
  loc_A2B719: FStStrNoPop var_108
  loc_A2B71C: ConcatStr
  loc_A2B71D: FStStrNoPop var_10C
  loc_A2B720: LitStr ",'"
  loc_A2B723: ConcatStr
  loc_A2B724: FStStrNoPop var_110
  loc_A2B727: ILdRf var_98
  loc_A2B72A: ConcatStr
  loc_A2B72B: FStStrNoPop var_114
  loc_A2B72E: LitStr "',"
  loc_A2B731: ConcatStr
  loc_A2B732: FStStrNoPop var_118
  loc_A2B735: ILdRf var_9C
  loc_A2B738: ConcatStr
  loc_A2B739: FStStrNoPop var_11C
  loc_A2B73C: LitStr ",0,'"
  loc_A2B73F: ConcatStr
  loc_A2B740: FStStrNoPop var_120
  loc_A2B743: ImpAdLdI4 MemVar_C3D03C
  loc_A2B746: ConcatStr
  loc_A2B747: FStStrNoPop var_124
  loc_A2B74A: LitStr "');"
  loc_A2B74D: ConcatStr
  loc_A2B74E: FStStrNoPop var_128
  loc_A2B751: Call EjecutarRsCls(from_stack_1v)
  loc_A2B756: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_A2B787: FFree1Var var_CC = ""
  loc_A2B78A: LitStr "SELECT LAST_INSERT_ID() IdIngr;"
  loc_A2B78D: Call EjecutarRsCls(from_stack_1v)
  loc_A2B792: FLdRfVar var_CC
  loc_A2B795: FLdRfVar var_130
  loc_A2B798: LitVarStr var_AC, "IdIngr"
  loc_A2B79D: PopAdLdVar
  loc_A2B79E: FLdRfVar var_12C
  loc_A2B7A1: FLdPr Me
  loc_A2B7A4: MemLdPr global_56
  loc_A2B7A7:  = Me.Fields
  loc_A2B7AC: FLdPr var_12C
  loc_A2B7AF: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B7B4: FLdPr var_130
  loc_A2B7B7:  = Me.Value
  loc_A2B7BC: FLdRfVar var_CC
  loc_A2B7BF: CI4Var
  loc_A2B7C1: Call Encontrar(from_stack_1v)
  loc_A2B7C6: FFreeAd var_12C = ""
  loc_A2B7CD: FFree1Var var_CC = ""
  loc_A2B7D0: ExitProcHresult
End Sub

Public Function AddNew_Ajustes(FechIngr, PeriInfo, CodiEnre, DetaIngr, FlexAjustes) 'A9D54C
  'Data Table: 413F20
  loc_A9D0EC: ILdRf FechIngr
  loc_A9D0EF: FStStrCopy var_8C
  loc_A9D0F2: ILdRf CodiEnre
  loc_A9D0F5: FStStrCopy var_90
  loc_A9D0F8: ILdRf DetaIngr
  loc_A9D0FB: FStStrCopy AddNew_Ajustes
  loc_A9D0FE: OnErrorGoto loc_A9D4C7
  loc_A9D101: FLdRfVar var_9E
  loc_A9D104: FLdI2 PeriInfo
  loc_A9D107: CStrUI1
  loc_A9D109: FStStrNoPop var_9C
  loc_A9D10C: from_stack_2v = NuevoLote(from_stack_1v)
  loc_A9D111: FLdI2 var_9E
  loc_A9D114: FStI2 var_96
  loc_A9D117: FFree1Str var_9C
  loc_A9D11A: LitI2_Byte 1
  loc_A9D11C: CUI1I2
  loc_A9D11E: FLdRfVar var_98
  loc_A9D121: ILdPr
  loc_A9D124: LateIdLdVar var_B0 DispID_4 0
  loc_A9D12B: CI4Var
  loc_A9D12D: LitI4 1
  loc_A9D132: SubI4
  loc_A9D133: CUI1I4
  loc_A9D135: FFree1Var var_B0 = ""
  loc_A9D138: ForUI1 var_B4
  loc_A9D13E: FLdUI1
  loc_A9D142: CI4UI1
  loc_A9D143: CVarI4
  loc_A9D147: PopAdLdVar
  loc_A9D148: LitVarI4
  loc_A9D150: PopAdLdVar
  loc_A9D151: ILdPr
  loc_A9D154: LateIdCallLdVar
  loc_A9D15E: CStrVarTmp
  loc_A9D15F: FStStrNoPop var_9C
  loc_A9D162: LitStr vbNullString
  loc_A9D165: NeStr
  loc_A9D167: FFree1Str var_9C
  loc_A9D16A: FFree1Var var_B0 = ""
  loc_A9D16D: BranchF loc_A9D469
  loc_A9D170: FLdUI1
  loc_A9D174: CI4UI1
  loc_A9D175: CVarI4
  loc_A9D179: PopAdLdVar
  loc_A9D17A: LitVarI4
  loc_A9D182: PopAdLdVar
  loc_A9D183: ILdPr
  loc_A9D186: LateIdCallLdVar
  loc_A9D190: CStrVarTmp
  loc_A9D191: FStStrNoPop var_9C
  loc_A9D194: LitStr vbNullString
  loc_A9D197: NeStr
  loc_A9D199: FFree1Str var_9C
  loc_A9D19C: FFree1Var var_B0 = ""
  loc_A9D19F: BranchF loc_A9D2EE
  loc_A9D1A2: FLdUI1
  loc_A9D1A6: CI4UI1
  loc_A9D1A7: CVarI4
  loc_A9D1AB: PopAdLdVar
  loc_A9D1AC: LitVarI4
  loc_A9D1B4: PopAdLdVar
  loc_A9D1B5: ILdPr
  loc_A9D1B8: LateIdCallLdVar
  loc_A9D1C2: PopAd
  loc_A9D1C4: LitStr "INSERT INTO ingreso (FechIngr,PeriInfo,CodiCuco,CodiConc,CodiEnre,ImpoIngr,DetaIngr,IndeIngr,AutoIngr,LoteIngr,AltaUsua)"
  loc_A9D1C7: LitStr " VALUES ('"
  loc_A9D1CA: ConcatStr
  loc_A9D1CB: FStStrNoPop var_9C
  loc_A9D1CE: LitI4 1
  loc_A9D1D3: LitI4 1
  loc_A9D1D8: LitVarStr var_D4, "yyyy-mm-dd"
  loc_A9D1DD: FStVarCopyObj var_B0
  loc_A9D1E0: FLdRfVar var_B0
  loc_A9D1E3: FLdRfVar var_8C
  loc_A9D1E6: CVarRef
  loc_A9D1EB: ImpAdCallI2 Format$(, )
  loc_A9D1F0: FStStrNoPop var_F8
  loc_A9D1F3: ConcatStr
  loc_A9D1F4: FStStrNoPop var_FC
  loc_A9D1F7: LitStr "',"
  loc_A9D1FA: ConcatStr
  loc_A9D1FB: FStStrNoPop var_100
  loc_A9D1FE: FLdI2 PeriInfo
  loc_A9D201: CStrUI1
  loc_A9D203: FStStrNoPop var_104
  loc_A9D206: ConcatStr
  loc_A9D207: FStStrNoPop var_108
  loc_A9D20A: LitStr ",'"
  loc_A9D20D: ConcatStr
  loc_A9D20E: FStStrNoPop var_13C
  loc_A9D211: FLdUI1
  loc_A9D215: CI4UI1
  loc_A9D216: CVarI4
  loc_A9D21A: PopAdLdVar
  loc_A9D21B: LitVarI4
  loc_A9D223: PopAdLdVar
  loc_A9D224: ILdPr
  loc_A9D227: LateIdCallLdVar
  loc_A9D231: CStrVarTmp
  loc_A9D232: FStStrNoPop var_140
  loc_A9D235: ConcatStr
  loc_A9D236: FStStrNoPop var_144
  loc_A9D239: LitStr "','','"
  loc_A9D23C: ConcatStr
  loc_A9D23D: FStStrNoPop var_148
  loc_A9D240: ILdRf var_90
  loc_A9D243: ConcatStr
  loc_A9D244: FStStrNoPop var_14C
  loc_A9D247: LitStr "',-"
  loc_A9D24A: ConcatStr
  loc_A9D24B: FStStrNoPop var_1A4
  loc_A9D24E: LitI4 0
  loc_A9D253: LitI4 -1
  loc_A9D258: LitI4 1
  loc_A9D25D: LitStr "."
  loc_A9D260: LitStr ","
  loc_A9D263: FLdRfVar var_19C
  loc_A9D266: CStrVarTmp
  loc_A9D267: FStStrNoPop var_1A0
  loc_A9D26A: ImpAdCallI2 Replace(, , , , , )
  loc_A9D26F: FStStrNoPop var_1A8
  loc_A9D272: ConcatStr
  loc_A9D273: FStStrNoPop var_1AC
  loc_A9D276: LitStr ",'"
  loc_A9D279: ConcatStr
  loc_A9D27A: FStStrNoPop var_1B0
  loc_A9D27D: ILdRf AddNew_Ajustes
  loc_A9D280: ConcatStr
  loc_A9D281: FStStrNoPop var_1B4
  loc_A9D284: LitStr "',0,0,"
  loc_A9D287: ConcatStr
  loc_A9D288: FStStrNoPop var_1B8
  loc_A9D28B: FLdI2 var_96
  loc_A9D28E: CStrUI1
  loc_A9D290: FStStrNoPop var_1BC
  loc_A9D293: ConcatStr
  loc_A9D294: FStStrNoPop var_1C0
  loc_A9D297: LitStr ",'"
  loc_A9D29A: ConcatStr
  loc_A9D29B: FStStrNoPop var_1C4
  loc_A9D29E: ImpAdLdI4 MemVar_C3D03C
  loc_A9D2A1: ConcatStr
  loc_A9D2A2: FStStrNoPop var_1C8
  loc_A9D2A5: LitStr "')"
  loc_A9D2A8: ConcatStr
  loc_A9D2A9: FStStrNoPop var_1CC
  loc_A9D2AC: Call EjecutarRsCls(from_stack_1v)
  loc_A9D2B1: FFreeStr var_9C = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = ""
  loc_A9D2E2: FFreeVar var_B0 = "": var_138 = ""
  loc_A9D2EB: Branch loc_A9D469
  loc_A9D2EE: FLdUI1
  loc_A9D2F2: CI4UI1
  loc_A9D2F3: CVarI4
  loc_A9D2F7: PopAdLdVar
  loc_A9D2F8: LitVarI4
  loc_A9D300: PopAdLdVar
  loc_A9D301: ILdPr
  loc_A9D304: LateIdCallLdVar
  loc_A9D30E: CStrVarTmp
  loc_A9D30F: FStStrNoPop var_9C
  loc_A9D312: LitStr vbNullString
  loc_A9D315: NeStr
  loc_A9D317: FFree1Str var_9C
  loc_A9D31A: FFree1Var var_B0 = ""
  loc_A9D31D: BranchF loc_A9D469
  loc_A9D320: FLdUI1
  loc_A9D324: CI4UI1
  loc_A9D325: CVarI4
  loc_A9D329: PopAdLdVar
  loc_A9D32A: LitVarI4
  loc_A9D332: PopAdLdVar
  loc_A9D333: ILdPr
  loc_A9D336: LateIdCallLdVar
  loc_A9D340: PopAd
  loc_A9D342: LitStr "INSERT INTO ingreso (FechIngr,PeriInfo,CodiCuco,CodiConc,CodiEnre,ImpoIngr,DetaIngr,IndeIngr,AutoIngr,LoteIngr,AltaUsua)"
  loc_A9D345: LitStr " VALUES ('"
  loc_A9D348: ConcatStr
  loc_A9D349: FStStrNoPop var_9C
  loc_A9D34C: LitI4 1
  loc_A9D351: LitI4 1
  loc_A9D356: LitVarStr var_D4, "yyyy-mm-dd"
  loc_A9D35B: FStVarCopyObj var_B0
  loc_A9D35E: FLdRfVar var_B0
  loc_A9D361: FLdRfVar var_8C
  loc_A9D364: CVarRef
  loc_A9D369: ImpAdCallI2 Format$(, )
  loc_A9D36E: FStStrNoPop var_F8
  loc_A9D371: ConcatStr
  loc_A9D372: FStStrNoPop var_FC
  loc_A9D375: LitStr "',"
  loc_A9D378: ConcatStr
  loc_A9D379: FStStrNoPop var_100
  loc_A9D37C: FLdI2 PeriInfo
  loc_A9D37F: CStrUI1
  loc_A9D381: FStStrNoPop var_104
  loc_A9D384: ConcatStr
  loc_A9D385: FStStrNoPop var_108
  loc_A9D388: LitStr ",'"
  loc_A9D38B: ConcatStr
  loc_A9D38C: FStStrNoPop var_13C
  loc_A9D38F: FLdUI1
  loc_A9D393: CI4UI1
  loc_A9D394: CVarI4
  loc_A9D398: PopAdLdVar
  loc_A9D399: LitVarI4
  loc_A9D3A1: PopAdLdVar
  loc_A9D3A2: ILdPr
  loc_A9D3A5: LateIdCallLdVar
  loc_A9D3AF: CStrVarTmp
  loc_A9D3B0: FStStrNoPop var_140
  loc_A9D3B3: ConcatStr
  loc_A9D3B4: FStStrNoPop var_144
  loc_A9D3B7: LitStr "','','"
  loc_A9D3BA: ConcatStr
  loc_A9D3BB: FStStrNoPop var_148
  loc_A9D3BE: ILdRf var_90
  loc_A9D3C1: ConcatStr
  loc_A9D3C2: FStStrNoPop var_14C
  loc_A9D3C5: LitStr "',"
  loc_A9D3C8: ConcatStr
  loc_A9D3C9: FStStrNoPop var_1A4
  loc_A9D3CC: LitI4 0
  loc_A9D3D1: LitI4 -1
  loc_A9D3D6: LitI4 1
  loc_A9D3DB: LitStr "."
  loc_A9D3DE: LitStr ","
  loc_A9D3E1: FLdRfVar var_19C
  loc_A9D3E4: CStrVarTmp
  loc_A9D3E5: FStStrNoPop var_1A0
  loc_A9D3E8: ImpAdCallI2 Replace(, , , , , )
  loc_A9D3ED: FStStrNoPop var_1A8
  loc_A9D3F0: ConcatStr
  loc_A9D3F1: FStStrNoPop var_1AC
  loc_A9D3F4: LitStr ",'"
  loc_A9D3F7: ConcatStr
  loc_A9D3F8: FStStrNoPop var_1B0
  loc_A9D3FB: ILdRf AddNew_Ajustes
  loc_A9D3FE: ConcatStr
  loc_A9D3FF: FStStrNoPop var_1B4
  loc_A9D402: LitStr "',0,0,"
  loc_A9D405: ConcatStr
  loc_A9D406: FStStrNoPop var_1B8
  loc_A9D409: FLdI2 var_96
  loc_A9D40C: CStrUI1
  loc_A9D40E: FStStrNoPop var_1BC
  loc_A9D411: ConcatStr
  loc_A9D412: FStStrNoPop var_1C0
  loc_A9D415: LitStr ",'"
  loc_A9D418: ConcatStr
  loc_A9D419: FStStrNoPop var_1C4
  loc_A9D41C: ImpAdLdI4 MemVar_C3D03C
  loc_A9D41F: ConcatStr
  loc_A9D420: FStStrNoPop var_1C8
  loc_A9D423: LitStr "')"
  loc_A9D426: ConcatStr
  loc_A9D427: FStStrNoPop var_1CC
  loc_A9D42A: Call EjecutarRsCls(from_stack_1v)
  loc_A9D42F: FFreeStr var_9C = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = ""
  loc_A9D460: FFreeVar var_B0 = "": var_138 = ""
  loc_A9D469: FLdRfVar var_98
  loc_A9D46C: NextUI1
  loc_A9D472: FLdI2 var_96
  loc_A9D475: FStI2 var_86
  loc_A9D478: LitStr "SELECT LAST_INSERT_ID() IdIngr;"
  loc_A9D47B: Call EjecutarRsCls(from_stack_1v)
  loc_A9D480: FLdRfVar var_B0
  loc_A9D483: FLdRfVar var_1D4
  loc_A9D486: LitVarStr var_C4, "IdIngr"
  loc_A9D48B: PopAdLdVar
  loc_A9D48C: FLdRfVar var_1D0
  loc_A9D48F: FLdPr Me
  loc_A9D492: MemLdPr global_56
  loc_A9D495:  = Me.Fields
  loc_A9D49A: FLdPr var_1D0
  loc_A9D49D: from_stack_2 = Me.Item(from_stack_1)
  loc_A9D4A2: FLdPr var_1D4
  loc_A9D4A5:  = Me.Value
  loc_A9D4AA: FLdRfVar var_B0
  loc_A9D4AD: CI4Var
  loc_A9D4AF: Call Encontrar(from_stack_1v)
  loc_A9D4B4: FFreeAd var_1D0 = ""
  loc_A9D4BB: FFree1Var var_B0 = ""
  loc_A9D4BE: On Error GoTo 0
  loc_A9D4C1: ExitProcCbHresult
  loc_A9D4C7: LitVar_Missing var_1E8
  loc_A9D4CA: LitVar_Missing var_19C
  loc_A9D4CD: LitVar_Missing var_138
  loc_A9D4D0: LitI4 0
  loc_A9D4D5: LitStr "Error "
  loc_A9D4D8: FLdRfVar var_1D8
  loc_A9D4DB: ImpAdCallI2 Err 'rtcErrObj
  loc_A9D4E0: FStAdFunc var_1D0
  loc_A9D4E3: FLdPr var_1D0
  loc_A9D4E6:  = Err.Number
  loc_A9D4EB: ILdRf var_1D8
  loc_A9D4EE: CStrI4
  loc_A9D4F0: FStStrNoPop var_9C
  loc_A9D4F3: ConcatStr
  loc_A9D4F4: FStStrNoPop var_F8
  loc_A9D4F7: LitStr " ("
  loc_A9D4FA: ConcatStr
  loc_A9D4FB: FStStrNoPop var_100
  loc_A9D4FE: FLdRfVar var_FC
  loc_A9D501: ImpAdCallI2 Err 'rtcErrObj
  loc_A9D506: FStAdFunc var_1D4
  loc_A9D509: FLdPr var_1D4
  loc_A9D50C:  = Err.Description
  loc_A9D511: ILdRf var_FC
  loc_A9D514: ConcatStr
  loc_A9D515: FStStrNoPop var_104
  loc_A9D518: LitStr ") in procedure AddNew_Ajustes_Error of Módulo de clase clsingreso"
  loc_A9D51B: ConcatStr
  loc_A9D51C: CVarStr var_B0
  loc_A9D51F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_A9D524: FFreeStr var_9C = "": var_F8 = "": var_100 = "": var_FC = ""
  loc_A9D531: FFreeAd var_1D0 = ""
  loc_A9D538: FFreeVar var_B0 = "": var_138 = "": var_19C = ""
  loc_A9D543: ExitProcCbHresult
End Function

Public Sub Modificar(CodiCuco, CodiConc, CodiEnre, ImpoIngr, DetaIngr, IndeIngr) 'A1EA90
  'Data Table: 413F20
  loc_A1E93C: ILdRf CodiCuco
  loc_A1E93F: FStStrCopy var_88
  loc_A1E942: ILdRf CodiConc
  loc_A1E945: FStStrCopy var_8C
  loc_A1E948: ILdRf CodiEnre
  loc_A1E94B: FStStrCopy var_90
  loc_A1E94E: ILdRf IndeIngr
  loc_A1E951: FStStrCopy var_94
  loc_A1E954: ILdRf arg_24
  loc_A1E957: FStStrCopy var_98
  loc_A1E95A: LitStr "UPDATE ingreso"
  loc_A1E95D: LitStr " SET CodiCuco='"
  loc_A1E960: ConcatStr
  loc_A1E961: FStStrNoPop var_9C
  loc_A1E964: ILdRf var_88
  loc_A1E967: ConcatStr
  loc_A1E968: FStStrNoPop var_A0
  loc_A1E96B: LitStr "',CodiConc='"
  loc_A1E96E: ConcatStr
  loc_A1E96F: FStStrNoPop var_A4
  loc_A1E972: ILdRf var_8C
  loc_A1E975: ConcatStr
  loc_A1E976: FStStrNoPop var_A8
  loc_A1E979: LitStr "',CodiEnre='"
  loc_A1E97C: ConcatStr
  loc_A1E97D: FStStrNoPop var_AC
  loc_A1E980: ILdRf var_90
  loc_A1E983: ConcatStr
  loc_A1E984: FStStrNoPop var_B0
  loc_A1E987: LitStr "',ImpoIngr="
  loc_A1E98A: ConcatStr
  loc_A1E98B: FStStrNoPop var_B8
  loc_A1E98E: LitI4 0
  loc_A1E993: LitI4 -1
  loc_A1E998: LitI4 1
  loc_A1E99D: LitStr "."
  loc_A1E9A0: LitStr ","
  loc_A1E9A3: FLdFPR8 ImpoIngr
  loc_A1E9A6: CStrR8
  loc_A1E9A8: FStStrNoPop var_B4
  loc_A1E9AB: ImpAdCallI2 Replace(, , , , , )
  loc_A1E9B0: FStStrNoPop var_BC
  loc_A1E9B3: ConcatStr
  loc_A1E9B4: FStStrNoPop var_C0
  loc_A1E9B7: LitStr ",DetaIngr='"
  loc_A1E9BA: ConcatStr
  loc_A1E9BB: FStStrNoPop var_C4
  loc_A1E9BE: ILdRf var_94
  loc_A1E9C1: ConcatStr
  loc_A1E9C2: FStStrNoPop var_C8
  loc_A1E9C5: LitStr "',IndeIngr="
  loc_A1E9C8: ConcatStr
  loc_A1E9C9: FStStrNoPop var_CC
  loc_A1E9CC: ILdRf var_98
  loc_A1E9CF: ConcatStr
  loc_A1E9D0: FStStrNoPop var_D0
  loc_A1E9D3: LitStr ",ModiUsua=@sUsuario,ModiFeho=Now()"
  loc_A1E9D6: ConcatStr
  loc_A1E9D7: FStStrNoPop var_D4
  loc_A1E9DA: LitStr " WHERE IdIngr="
  loc_A1E9DD: ConcatStr
  loc_A1E9DE: CVarStr var_10C
  loc_A1E9E1: FLdRfVar var_FC
  loc_A1E9E4: FLdRfVar var_EC
  loc_A1E9E7: LitVarStr var_E8, "IdIngr"
  loc_A1E9EC: PopAdLdVar
  loc_A1E9ED: FLdRfVar var_D8
  loc_A1E9F0: FLdPr Me
  loc_A1E9F3: MemLdPr RsFrm
  loc_A1E9F6:  = Me.Fields
  loc_A1E9FB: FLdPr var_D8
  loc_A1E9FE: from_stack_2 = Me.Item(from_stack_1)
  loc_A1EA03: FLdPr var_EC
  loc_A1EA06:  = Me.Value
  loc_A1EA0B: FLdRfVar var_FC
  loc_A1EA0E: ConcatVar var_11C
  loc_A1EA12: CStrVarVal var_120
  loc_A1EA16: Call EjecutarRsCls(from_stack_1v)
  loc_A1EA1B: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_A1EA3E: FFreeAd var_D8 = ""
  loc_A1EA45: FFreeVar var_10C = "": var_FC = ""
  loc_A1EA4E: FLdRfVar var_FC
  loc_A1EA51: FLdRfVar var_EC
  loc_A1EA54: LitVarStr var_E8, "IdIngr"
  loc_A1EA59: PopAdLdVar
  loc_A1EA5A: FLdRfVar var_D8
  loc_A1EA5D: FLdPr Me
  loc_A1EA60: MemLdPr RsFrm
  loc_A1EA63:  = Me.Fields
  loc_A1EA68: FLdPr var_D8
  loc_A1EA6B: from_stack_2 = Me.Item(from_stack_1)
  loc_A1EA70: FLdPr var_EC
  loc_A1EA73:  = Me.Value
  loc_A1EA78: FLdRfVar var_FC
  loc_A1EA7B: CI4Var
  loc_A1EA7D: Call Encontrar(from_stack_1v)
  loc_A1EA82: FFreeAd var_D8 = ""
  loc_A1EA89: FFree1Var var_FC = ""
  loc_A1EA8C: ExitProcHresult
End Sub

Public Sub Eliminar() '9C27C0
  'Data Table: 413F20
  loc_9C2700: LitStr "DELETE FROM ingreso"
  loc_9C2703: LitStr " WHERE IdIngr="
  loc_9C2706: ConcatStr
  loc_9C2707: CVarStr var_BC
  loc_9C270A: FLdRfVar var_AC
  loc_9C270D: FLdRfVar var_9C
  loc_9C2710: LitVarStr var_98, "IdIngr"
  loc_9C2715: PopAdLdVar
  loc_9C2716: FLdRfVar var_88
  loc_9C2719: FLdPr Me
  loc_9C271C: MemLdPr RsFrm
  loc_9C271F:  = Me.Fields
  loc_9C2724: FLdPr var_88
  loc_9C2727: from_stack_2 = Me.Item(from_stack_1)
  loc_9C272C: FLdPr var_9C
  loc_9C272F:  = Me.Value
  loc_9C2734: FLdRfVar var_AC
  loc_9C2737: ConcatVar var_CC
  loc_9C273B: LitVarStr var_DC, ";"
  loc_9C2740: ConcatVar var_EC
  loc_9C2744: CStrVarVal var_F0
  loc_9C2748: Call EjecutarRsCls(from_stack_1v)
  loc_9C274D: FFree1Str var_F0
  loc_9C2750: FFreeAd var_88 = ""
  loc_9C2757: FFreeVar var_BC = "": var_AC = "": var_CC = ""
  loc_9C2762: FLdRfVar var_F8
  loc_9C2765: FLdPr Me
  loc_9C2768: MemLdPr RsFrm
  loc_9C276B:  = Me.AbsolutePosition
  loc_9C2770: ILdRf var_F8
  loc_9C2773: FStR4 var_F4
  loc_9C2776: Call Requery()
  loc_9C277B: FLdRfVar var_F8
  loc_9C277E: FLdPr Me
  loc_9C2781: MemLdPr RsFrm
  loc_9C2784:  = Me.RecordCount
  loc_9C2789: ILdRf var_F8
  loc_9C278C: LitI4 0
  loc_9C2791: GtI4
  loc_9C2792: BranchF loc_9C27BE
  loc_9C2795: Call MoveFirst()
  loc_9C279A: ILdRf var_F4
  loc_9C279D: LitI4 1
  loc_9C27A2: GtI4
  loc_9C27A3: BranchF loc_9C27BE
  loc_9C27A6: LitVar_Missing var_98
  loc_9C27A9: PopAdLdVar
  loc_9C27AA: ILdRf var_F4
  loc_9C27AD: LitI4 2
  loc_9C27B2: SubI4
  loc_9C27B3: FLdPr Me
  loc_9C27B6: MemLdPr RsFrm
  loc_9C27B9: Me.Move from_stack_1, from_stack_2
  loc_9C27BE: ExitProcHresult
End Sub

Public Function NuevoLote(PeriInfo) '9B490C
  'Data Table: 413F20
  loc_9B4870: ILdRf PeriInfo
  loc_9B4873: FStStrCopy var_8C
  loc_9B4876: LitStr "SELECT IFNULL(Max(LoteIngr),0) + 1 LoteIngr"
  loc_9B4879: LitStr " FROM ingreso"
  loc_9B487C: ConcatStr
  loc_9B487D: FStStrNoPop var_90
  loc_9B4880: LitStr " WHERE PeriInfo = "
  loc_9B4883: ConcatStr
  loc_9B4884: FStStrNoPop NuevoLote
  loc_9B4887: ILdRf var_8C
  loc_9B488A: ConcatStr
  loc_9B488B: FStStrNoPop var_98
  loc_9B488E: LitStr ";"
  loc_9B4891: ConcatStr
  loc_9B4892: FStStrNoPop var_9C
  loc_9B4895: Call EjecutarRsCls(from_stack_1v)
  loc_9B489A: FFreeStr var_90 = "": NuevoLote = "": var_98 = ""
  loc_9B48A5: FLdRfVar var_A0
  loc_9B48A8: FLdPr Me
  loc_9B48AB: MemLdPr global_56
  loc_9B48AE:  = Me.RecordCount
  loc_9B48B3: ILdRf var_A0
  loc_9B48B6: LitI4 0
  loc_9B48BB: GtI4
  loc_9B48BC: BranchF loc_9B48FE
  loc_9B48BF: FLdRfVar var_C8
  loc_9B48C2: FLdRfVar var_B8
  loc_9B48C5: LitVarStr var_B4, "LoteIngr"
  loc_9B48CA: PopAdLdVar
  loc_9B48CB: FLdRfVar var_A4
  loc_9B48CE: FLdPr Me
  loc_9B48D1: MemLdPr global_56
  loc_9B48D4:  = Me.Fields
  loc_9B48D9: FLdPr var_A4
  loc_9B48DC: from_stack_2 = Me.Item(from_stack_1)
  loc_9B48E1: FLdPr var_B8
  loc_9B48E4:  = Me.Value
  loc_9B48E9: FLdRfVar var_C8
  loc_9B48EC: FnCIntVar
  loc_9B48EE: FStI2 var_86
  loc_9B48F1: FFreeAd var_A4 = ""
  loc_9B48F8: FFree1Var var_C8 = ""
  loc_9B48FB: Branch loc_9B4903
  loc_9B48FE: LitI2_Byte 1
  loc_9B4900: FStI2 var_86
  loc_9B4903: ExitProcCbHresult
End Function

Public Sub Encontrar(IdIngr) '9BD678
  'Data Table: 413F20
  loc_9BD5C4: On Error Resume Next
  loc_9BD5C9: ILdRf IdIngr
  loc_9BD5CC: LitI4 0
  loc_9BD5D1: EqI4
  loc_9BD5D2: FLdRfVar var_88
  loc_9BD5D5: FLdPr Me
  loc_9BD5D8: MemLdPr RsFrm
  loc_9BD5DB:  = Me.RecordCount
  loc_9BD5E0: ILdRf var_88
  loc_9BD5E3: LitI4 0
  loc_9BD5E8: GtI4
  loc_9BD5E9: AndI4
  loc_9BD5EA: FLdRfVar var_8C
  loc_9BD5ED: FLdPr Me
  loc_9BD5F0: MemLdPr RsFrm
  loc_9BD5F3:  = Me.AbsolutePosition
  loc_9BD5F8: ILdRf var_8C
  loc_9BD5FB: LitI4 -3
  loc_9BD600: NeI4
  loc_9BD601: AndI4
  loc_9BD602: BranchF loc_9BD643
  loc_9BD607: FLdRfVar var_B4
  loc_9BD60A: FLdRfVar var_A4
  loc_9BD60D: LitVarStr var_A0, "IdIngr"
  loc_9BD612: PopAdLdVar
  loc_9BD613: FLdRfVar var_90
  loc_9BD616: FLdPr Me
  loc_9BD619: MemLdPr RsFrm
  loc_9BD61C:  = Me.Fields
  loc_9BD621: FLdPr var_90
  loc_9BD624: from_stack_2 = Me.Item(from_stack_1)
  loc_9BD629: FLdPr var_A4
  loc_9BD62C:  = Me.Value
  loc_9BD631: FLdRfVar var_B4
  loc_9BD634: CI4Var
  loc_9BD636: FStR4 IdIngr
  loc_9BD639: FFreeAd var_90 = ""
  loc_9BD640: FFree1Var var_B4 = ""
  loc_9BD647: Call Requery()
  loc_9BD64E: LitStr "IdIngr = '"
  loc_9BD651: ILdRf IdIngr
  loc_9BD654: CStrI4
  loc_9BD656: FStStrNoPop var_B8
  loc_9BD659: ConcatStr
  loc_9BD65A: FStStrNoPop var_BC
  loc_9BD65D: LitStr "'"
  loc_9BD660: ConcatStr
  loc_9BD661: PopTmpLdAdStr
  loc_9BD665: Call Find(from_stack_1v)
  loc_9BD66A: FFreeStr var_B8 = "": var_BC = ""
  loc_9BD675: ExitProcHresult
  loc_9BD676: FLdRfVar var_57F0
End Sub

Public Sub RedefineRS(sSelect) '971DF4
  'Data Table: 413F20
  loc_971DCC: ILdRf sSelect
  loc_971DCF: FStStrCopy var_88
  loc_971DD2: FLdPr Me
  loc_971DD5: MemLdRfVar from_stack_1.RsFrm
  loc_971DD8: ILdRf var_88
  loc_971DDB: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_971DE0: LitVarStr var_98, "Primary"
  loc_971DE5: PopAdLdVar
  loc_971DE6: FLdPr Me
  loc_971DE9: LateIdCall
  loc_971DF1: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '95EC94
  'Data Table: 413F20
  loc_95EC7C: ILdRf sSelect
  loc_95EC7F: FStStrCopy var_88
  loc_95EC82: FLdPr Me
  loc_95EC85: MemLdRfVar from_stack_1.global_56
  loc_95EC88: ILdRf var_88
  loc_95EC8B: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95EC90: ExitProcHresult
End Sub

Public Sub Requery() '9685C0
  'Data Table: 413F20
  loc_9685A0: FLdPr Me
  loc_9685A3: MemLdRfVar from_stack_1.RsFrm
  loc_9685A6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_9685AB: LitVarStr var_94, "Primary"
  loc_9685B0: PopAdLdVar
  loc_9685B1: FLdPr Me
  loc_9685B4: LateIdCall
  loc_9685BC: ExitProcHresult
End Sub

Public Property Get DataSource() '971F60
  'Data Table: 413F20
  loc_971F3C: ZeroRetVal
  loc_971F3E: FLdRfVar var_8C
  loc_971F41: FLdPr Me
  loc_971F44: MemLdPr RsFrm
  loc_971F47:  = Me.DataSource
  loc_971F4C: ILdRf var_8C
  loc_971F4F: CastAd
  loc_971F52: FStAdFunc var_88
  loc_971F55: FFree1Ad var_8C
  loc_971F58: ExitProcCbHresult
  loc_971F5E: ConcatStr
End Sub

Public Function TotalSegunFiltro(whFiltro) '9BB000
  'Data Table: 413F20
  loc_9BAF5C: ILdRf whFiltro
  loc_9BAF5F: FStStrCopy var_90
  loc_9BAF62: LitStr "SELECT IFNULL(Sum(ImpoIngr),0) As ImpoIngr"
  loc_9BAF65: LitStr " FROM ingreso"
  loc_9BAF68: ConcatStr
  loc_9BAF69: FStStrNoPop TotalSegunFiltro
  loc_9BAF6C: LitStr " LEFT JOIN infogov.cuentacontable cc ON cc.PeriInfo = ingreso.PeriInfo AND cc.CodiCuco = ingreso.CodiCuco"
  loc_9BAF6F: ConcatStr
  loc_9BAF70: FStStrNoPop var_98
  loc_9BAF73: LitStr " WHERE ingreso.PeriInfo = "
  loc_9BAF76: ConcatStr
  loc_9BAF77: FStStrNoPop var_9C
  loc_9BAF7A: ImpAdLdI2 MemVar_C3D064
  loc_9BAF7D: CStrUI1
  loc_9BAF7F: FStStrNoPop var_A0
  loc_9BAF82: ConcatStr
  loc_9BAF83: FStStrNoPop var_A4
  loc_9BAF86: ILdRf var_90
  loc_9BAF89: ConcatStr
  loc_9BAF8A: FStStrNoPop var_A8
  loc_9BAF8D: Call EjecutarRsCls(from_stack_1v)
  loc_9BAF92: FFreeStr TotalSegunFiltro = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9BAFA1: FLdRfVar var_AC
  loc_9BAFA4: FLdPr Me
  loc_9BAFA7: MemLdPr global_56
  loc_9BAFAA:  = Me.RecordCount
  loc_9BAFAF: ILdRf var_AC
  loc_9BAFB2: LitI4 0
  loc_9BAFB7: GtI4
  loc_9BAFB8: BranchF loc_9BAFF7
  loc_9BAFBB: FLdRfVar var_D4
  loc_9BAFBE: FLdRfVar var_C4
  loc_9BAFC1: LitVarStr var_C0, "ImpoIngr"
  loc_9BAFC6: PopAdLdVar
  loc_9BAFC7: FLdRfVar var_B0
  loc_9BAFCA: FLdPr Me
  loc_9BAFCD: MemLdPr global_56
  loc_9BAFD0:  = Me.Fields
  loc_9BAFD5: FLdPr var_B0
  loc_9BAFD8: from_stack_2 = Me.Item(from_stack_1)
  loc_9BAFDD: FLdPr var_C4
  loc_9BAFE0:  = Me.Value
  loc_9BAFE5: FLdRfVar var_D4
  loc_9BAFE8: FnCDblVar
  loc_9BAFEA: FStFPR8 var_8C
  loc_9BAFED: FFreeAd var_B0 = ""
  loc_9BAFF4: FFree1Var var_D4 = ""
  loc_9BAFF7: ExitProcCbHresult
  loc_9BAFFD: Assert
End Function

Public Function ImportarCSV() 'A5B988
  'Data Table: 413F20
  loc_A5B6C8: ZeroRetVal
  loc_A5B6CA: LitVar_Missing var_174
  loc_A5B6CD: LitVar_Missing var_154
  loc_A5B6D0: LitVar_Missing var_134
  loc_A5B6D3: LitVar_Missing var_114
  loc_A5B6D6: LitVar_Missing var_F4
  loc_A5B6D9: LitVarStr var_C4, "Importar CSV"
  loc_A5B6DE: FStVarCopyObj var_D4
  loc_A5B6E1: FLdRfVar var_D4
  loc_A5B6E4: LitVarStr var_A4, "Ingrese el nombre del archivo CSV..."
  loc_A5B6E9: FStVarCopyObj var_B4
  loc_A5B6EC: FLdRfVar var_B4
  loc_A5B6EF: ImpAdCallI2 InputBox(, , , , , , )
  loc_A5B6F4: FStStr var_90
  loc_A5B6F7: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = ""
  loc_A5B708: LitI2_Byte 0
  loc_A5B70A: PopTmpLdAd2 var_17A
  loc_A5B70D: LitI2_Byte 0
  loc_A5B70F: PopTmpLdAd2 var_178
  loc_A5B712: LitI2_Byte 0
  loc_A5B714: PopTmpLdAd2 var_176
  loc_A5B717: ILdRf var_90
  loc_A5B71A: LitStr "nombre del archivo"
  loc_A5B71D: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A5B722: FStStr ImportarCSV
  loc_A5B725: ILdRf ImportarCSV
  loc_A5B728: LitStr vbNullString
  loc_A5B72B: NeStr
  loc_A5B72D: BranchF loc_A5B743
  loc_A5B730: LitI4 0
  loc_A5B735: ILdRf ImportarCSV
  loc_A5B738: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A5B73D: ExitProcCbHresult
  loc_A5B743: ImpAdCallI2 Proc_261_16_9B9214()
  loc_A5B748: ImpAdStStr MemVar_C3D05C
  loc_A5B74C: FLdRfVar var_176
  loc_A5B74F: ImpAdLdI4 MemVar_C3D05C
  loc_A5B752: LitStr "\"
  loc_A5B755: ConcatStr
  loc_A5B756: FStStrNoPop var_180
  loc_A5B759: ILdRf var_90
  loc_A5B75C: ConcatStr
  loc_A5B75D: FStStrNoPop var_184
  loc_A5B760: FLdRfVar var_8C
  loc_A5B763: NewIfNullPr IFileSystem3
  loc_A5B766: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A5B76B: FLdI2 var_176
  loc_A5B76E: NotI4
  loc_A5B76F: FFreeStr var_180 = ""
  loc_A5B776: BranchF loc_A5B785
  loc_A5B779: LitStr "El archivo NO existe. Verifique..."
  loc_A5B77C: FStStrCopy var_88
  loc_A5B77F: ExitProcCbHresult
  loc_A5B785: LitI4 0
  loc_A5B78A: LitI4 -1
  loc_A5B78F: LitI4 1
  loc_A5B794: LitStr "\\"
  loc_A5B797: LitStr "\"
  loc_A5B79A: ImpAdLdI4 MemVar_C3D05C
  loc_A5B79D: ImpAdCallI2 Replace(, , , , , )
  loc_A5B7A2: ImpAdStStr MemVar_C3D05C
  loc_A5B7A6: OnErrorGoto loc_A5B974
  loc_A5B7A9: LitStr "START TRANSACTION;"
  loc_A5B7AC: Call EjecutarRsCls(from_stack_1v)
  loc_A5B7B1: LitI4 0
  loc_A5B7B6: LitStr "Comienza limpieza e importación del CSV..."
  loc_A5B7B9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A5B7BE: LitStr "TRUNCATE TABLE ontpres`.`tmp_ingreso`; "
  loc_A5B7C1: LitStr "LOAD DATA LOW_PRIORITY LOCAL INFILE '"
  loc_A5B7C4: ConcatStr
  loc_A5B7C5: FStStrNoPop var_180
  loc_A5B7C8: ImpAdLdI4 MemVar_C3D05C
  loc_A5B7CB: ConcatStr
  loc_A5B7CC: FStStrNoPop var_184
  loc_A5B7CF: LitStr "\\"
  loc_A5B7D2: ConcatStr
  loc_A5B7D3: FStStrNoPop var_188
  loc_A5B7D6: ILdRf var_90
  loc_A5B7D9: ConcatStr
  loc_A5B7DA: FStStrNoPop var_18C
  loc_A5B7DD: LitStr "' INTO TABLE ontpres`.`tmp_ingreso` FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '""' ESCAPED BY '""' LINES TERMINATED BY '\r\n' (cuenta,fecha,recaudador,importe);"
  loc_A5B7E0: ConcatStr
  loc_A5B7E1: FStStrNoPop var_190
  loc_A5B7E4: Call EjecutarRsCls(from_stack_1v)
  loc_A5B7E9: FFreeStr var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_A5B7F6: LitStr "SELECT ifnull(group_concat(distinct cuenta),'') Error"
  loc_A5B7F9: LitStr " FROM tmp_ingreso"
  loc_A5B7FC: ConcatStr
  loc_A5B7FD: FStStrNoPop var_180
  loc_A5B800: LitStr " LEFT JOIN infogov.cuentacontable cc on cc.PeriInfo = "
  loc_A5B803: ConcatStr
  loc_A5B804: FStStrNoPop var_184
  loc_A5B807: ImpAdLdI2 MemVar_C3D064
  loc_A5B80A: CStrUI1
  loc_A5B80C: FStStrNoPop var_188
  loc_A5B80F: ConcatStr
  loc_A5B810: FStStrNoPop var_18C
  loc_A5B813: LitStr " AND cc.CodiCuco = cuenta"
  loc_A5B816: ConcatStr
  loc_A5B817: FStStrNoPop var_190
  loc_A5B81A: LitStr " WHERE PeriInfo IS NULL"
  loc_A5B81D: ConcatStr
  loc_A5B81E: FStStrNoPop var_194
  loc_A5B821: Call EjecutarRsCls(from_stack_1v)
  loc_A5B826: FFreeStr var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_A5B835: FLdRfVar var_B4
  loc_A5B838: FLdRfVar var_19C
  loc_A5B83B: LitVarStr var_A4, "Error"
  loc_A5B840: PopAdLdVar
  loc_A5B841: FLdRfVar var_198
  loc_A5B844: FLdPr Me
  loc_A5B847: MemLdPr global_56
  loc_A5B84A:  = Me.Fields
  loc_A5B84F: FLdPr var_198
  loc_A5B852: from_stack_2 = Me.Item(from_stack_1)
  loc_A5B857: FLdPr var_19C
  loc_A5B85A:  = Me.Value
  loc_A5B85F: FLdRfVar var_B4
  loc_A5B862: LitVarStr var_C4, vbNullString
  loc_A5B867: HardType
  loc_A5B868: NeVarBool
  loc_A5B86A: FFreeAd var_198 = ""
  loc_A5B871: FFree1Var var_B4 = ""
  loc_A5B874: BranchF loc_A5B8D2
  loc_A5B877: LitI4 0
  loc_A5B87C: LitVarStr var_C4, "Error en los códigos: "
  loc_A5B881: FLdRfVar var_B4
  loc_A5B884: FLdRfVar var_19C
  loc_A5B887: LitVarStr var_A4, "Error"
  loc_A5B88C: PopAdLdVar
  loc_A5B88D: FLdRfVar var_198
  loc_A5B890: FLdPr Me
  loc_A5B893: MemLdPr global_56
  loc_A5B896:  = Me.Fields
  loc_A5B89B: FLdPr var_198
  loc_A5B89E: from_stack_2 = Me.Item(from_stack_1)
  loc_A5B8A3: FLdPr var_19C
  loc_A5B8A6:  = Me.Value
  loc_A5B8AB: FLdRfVar var_B4
  loc_A5B8AE: ConcatVar var_D4
  loc_A5B8B2: CStrVarVal var_180
  loc_A5B8B6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A5B8BB: FFree1Str var_180
  loc_A5B8BE: FFreeAd var_198 = ""
  loc_A5B8C5: FFreeVar var_B4 = ""
  loc_A5B8CC: ExitProcCbHresult
  loc_A5B8D2: LitStr "DELETE ingreso"
  loc_A5B8D5: LitStr " FROM tmp_ingreso"
  loc_A5B8D8: ConcatStr
  loc_A5B8D9: FStStrNoPop var_180
  loc_A5B8DC: LitStr " LEFT JOIN ingreso on ingreso.PeriInfo = "
  loc_A5B8DF: ConcatStr
  loc_A5B8E0: FStStrNoPop var_184
  loc_A5B8E3: ImpAdLdI2 MemVar_C3D064
  loc_A5B8E6: CStrUI1
  loc_A5B8E8: FStStrNoPop var_188
  loc_A5B8EB: ConcatStr
  loc_A5B8EC: FStStrNoPop var_18C
  loc_A5B8EF: LitStr " AND FechIngr = Str_to_date(tmp_ingreso.fecha,'" & Chr(37) & "d/" & Chr(37) & "m/" & Chr(37) & "Y') AND AutoIngr = 1"
  loc_A5B8F2: ConcatStr
  loc_A5B8F3: FStStrNoPop var_190
  loc_A5B8F6: Call EjecutarRsCls(from_stack_1v)
  loc_A5B8FB: FFreeStr var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_A5B908: LitStr " INSERT INTO ingreso (FechIngr,PeriInfo,CodiCuco,CodiConc,CodiEnre,ImpoIngr,DetaIngr,IndeIngr,AutoIngr,AltaUsua)"
  loc_A5B90B: LitStr " SELECT Str_to_date(tmp_ingreso.fecha,'" & Chr(37) & "d/" & Chr(37) & "m/" & Chr(37) & "Y'), "
  loc_A5B90E: ConcatStr
  loc_A5B90F: FStStrNoPop var_180
  loc_A5B912: ImpAdLdI2 MemVar_C3D064
  loc_A5B915: CStrUI1
  loc_A5B917: FStStrNoPop var_184
  loc_A5B91A: ConcatStr
  loc_A5B91B: FStStrNoPop var_188
  loc_A5B91E: LitStr ", cuenta, '', tmp_ingreso.recaudador, importe, Concat('Importado el: ',Now()), 0, 1, @sUsuario"
  loc_A5B921: ConcatStr
  loc_A5B922: FStStrNoPop var_18C
  loc_A5B925: LitStr " FROM tmp_ingreso"
  loc_A5B928: ConcatStr
  loc_A5B929: FStStrNoPop var_190
  loc_A5B92C: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = "
  loc_A5B92F: ConcatStr
  loc_A5B930: FStStrNoPop var_194
  loc_A5B933: ImpAdLdI2 MemVar_C3D064
  loc_A5B936: CStrUI1
  loc_A5B938: FStStrNoPop var_1A0
  loc_A5B93B: ConcatStr
  loc_A5B93C: FStStrNoPop var_1A4
  loc_A5B93F: LitStr " AND cc.CodiCuco = cuenta;"
  loc_A5B942: ConcatStr
  loc_A5B943: FStStrNoPop var_1A8
  loc_A5B946: Call EjecutarRsCls(from_stack_1v)
  loc_A5B94B: FFreeStr var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_1A0 = "": var_1A4 = ""
  loc_A5B960: LitStr "COMMIT;"
  loc_A5B963: Call EjecutarRsCls(from_stack_1v)
  loc_A5B968: LitStr vbNullString
  loc_A5B96B: FStStrCopy var_88
  loc_A5B96E: ExitProcCbHresult
  loc_A5B974: LitStr "ROLLBACK;"
  loc_A5B977: Call EjecutarRsCls(from_stack_1v)
  loc_A5B97C: LitStr "Error en la importación del CSV. Verifique..."
  loc_A5B97F: FStStrCopy var_88
  loc_A5B982: ExitProcCbHresult
End Function

Private Function Proc_14_29_971D94() '971D94
  'Data Table: 413F20
  loc_971D70: LitStr "Primary"
  loc_971D73: FLdPr Me
  loc_971D76: LateIdLdVar var_94 DispID_4 0
  loc_971D7D: CastAdVar Me
  loc_971D81: FStAdFunc var_98
  loc_971D84: FLdPr var_98
  loc_971D8C: FFree1Ad var_98
  loc_971D8F: FFree1Var var_94 = ""
  loc_971D92: ExitProcHresult
End Function

Private Function Proc_14_30_96860C(arg_C) '96860C
  'Data Table: 413F20
  loc_9685F0: ILdI4 arg_C
  loc_9685F3: FStStrCopy var_88
  loc_9685F6: ILdRf var_88
  loc_9685F9: LitStr "Primary"
  loc_9685FC: EqStr
  loc_9685FE: BranchF loc_96860B
  loc_968601: FLdPr Me
  loc_968604: MemLdStr RsFrm
  loc_968607: IStAd
  loc_96860B: ExitProcHresult
End Function
