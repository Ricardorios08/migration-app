VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsparaconta"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40A65C
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40A66B
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40A67A
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96EEEC
  'Data Table: 40A48C
  loc_96EEC4: FLdRfVar var_88
  loc_96EEC7: FLdPr Me
  loc_96EECA: MemLdPr RsFrm
  loc_96EECD:  = Me.RecordCount
  loc_96EED2: ILdRf var_88
  loc_96EED5: LitI4 0
  loc_96EEDA: GtI4
  loc_96EEDB: BranchF loc_96EEE9
  loc_96EEDE: FLdPr Me
  loc_96EEE1: MemLdPr RsFrm
  loc_96EEE4: Me.MoveFirst
  loc_96EEE9: ExitProcHresult
End Sub

Public Sub MoveLast() '96EE3C
  'Data Table: 40A48C
  loc_96EE14: FLdRfVar var_88
  loc_96EE17: FLdPr Me
  loc_96EE1A: MemLdPr RsFrm
  loc_96EE1D:  = Me.RecordCount
  loc_96EE22: ILdRf var_88
  loc_96EE25: LitI4 0
  loc_96EE2A: GtI4
  loc_96EE2B: BranchF loc_96EE39
  loc_96EE2E: FLdPr Me
  loc_96EE31: MemLdPr RsFrm
  loc_96EE34: Me.MoveLast
  loc_96EE39: ExitProcHresult
  loc_96EE3A: StAryCopy
End Sub

Public Sub MoveNext() '99EAF8
  'Data Table: 40A48C
  loc_99EA80: FLdRfVar var_86
  loc_99EA83: FLdPr Me
  loc_99EA86: MemLdPr RsFrm
  loc_99EA89:  = Me.EOF
  loc_99EA8E: FLdI2 var_86
  loc_99EA91: NotI4
  loc_99EA92: FLdRfVar var_8C
  loc_99EA95: FLdPr Me
  loc_99EA98: MemLdPr RsFrm
  loc_99EA9B:  = Me.RecordCount
  loc_99EAA0: ILdRf var_8C
  loc_99EAA3: LitI4 0
  loc_99EAA8: GtI4
  loc_99EAA9: AndI4
  loc_99EAAA: BranchF loc_99EAB8
  loc_99EAAD: FLdPr Me
  loc_99EAB0: MemLdPr RsFrm
  loc_99EAB3: Me.MoveNext
  loc_99EAB8: FLdRfVar var_86
  loc_99EABB: FLdPr Me
  loc_99EABE: MemLdPr RsFrm
  loc_99EAC1:  = Me.EOF
  loc_99EAC6: FLdI2 var_86
  loc_99EAC9: FLdRfVar var_8C
  loc_99EACC: FLdPr Me
  loc_99EACF: MemLdPr RsFrm
  loc_99EAD2:  = Me.RecordCount
  loc_99EAD7: ILdRf var_8C
  loc_99EADA: LitI4 0
  loc_99EADF: GtI4
  loc_99EAE0: AndI4
  loc_99EAE1: BranchF loc_99EAF4
  loc_99EAE4: ImpAdCallFPR4 Beep()
  loc_99EAE9: FLdPr Me
  loc_99EAEC: MemLdPr RsFrm
  loc_99EAEF: Me.MoveLast
  loc_99EAF4: ExitProcHresult
End Sub

Public Sub MovePrevious() '99FC08
  'Data Table: 40A48C
  loc_99FB90: FLdRfVar var_86
  loc_99FB93: FLdPr Me
  loc_99FB96: MemLdPr RsFrm
  loc_99FB99:  = Me.BOF
  loc_99FB9E: FLdI2 var_86
  loc_99FBA1: NotI4
  loc_99FBA2: FLdRfVar var_8C
  loc_99FBA5: FLdPr Me
  loc_99FBA8: MemLdPr RsFrm
  loc_99FBAB:  = Me.RecordCount
  loc_99FBB0: ILdRf var_8C
  loc_99FBB3: LitI4 0
  loc_99FBB8: GtI4
  loc_99FBB9: AndI4
  loc_99FBBA: BranchF loc_99FBC8
  loc_99FBBD: FLdPr Me
  loc_99FBC0: MemLdPr RsFrm
  loc_99FBC3: Me.MovePrevious
  loc_99FBC8: FLdRfVar var_86
  loc_99FBCB: FLdPr Me
  loc_99FBCE: MemLdPr RsFrm
  loc_99FBD1:  = Me.BOF
  loc_99FBD6: FLdI2 var_86
  loc_99FBD9: FLdRfVar var_8C
  loc_99FBDC: FLdPr Me
  loc_99FBDF: MemLdPr RsFrm
  loc_99FBE2:  = Me.RecordCount
  loc_99FBE7: ILdRf var_8C
  loc_99FBEA: LitI4 0
  loc_99FBEF: GtI4
  loc_99FBF0: AndI4
  loc_99FBF1: BranchF loc_99FC04
  loc_99FBF4: ImpAdCallFPR4 Beep()
  loc_99FBF9: FLdPr Me
  loc_99FBFC: MemLdPr RsFrm
  loc_99FBFF: Me.MoveFirst
  loc_99FC04: ExitProcHresult
End Sub

Public Property Get EOF() '959D54
  'Data Table: 40A48C
  loc_959D38: FLdRfVar var_88
  loc_959D3B: FLdPr Me
  loc_959D3E: MemLdPr RsFrm
  loc_959D41:  = Me.EOF
  loc_959D46: FLdI2 var_88
  loc_959D49: FStI2 var_86
  loc_959D4C: ExitProcCbHresult
End Sub

Public Property Get BOF() '959D08
  'Data Table: 40A48C
  loc_959CEC: FLdRfVar var_88
  loc_959CEF: FLdPr Me
  loc_959CF2: MemLdPr RsFrm
  loc_959CF5:  = Me.BOF
  loc_959CFA: FLdI2 var_88
  loc_959CFD: FStI2 var_86
  loc_959D00: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '946B04
  'Data Table: 40A48C
  loc_946AF4: ILdI4 sOrden
  loc_946AF7: FLdPr Me
  loc_946AFA: MemLdPr RsFrm
  loc_946AFD: Me.Sort = from_stack_1
  loc_946B02: ExitProcHresult
End Sub

Public Sub Find(sFind) '969150
  'Data Table: 40A48C
  loc_969130: LitVar_Missing var_94
  loc_969133: PopAdLdVar
  loc_969134: LitI4 1
  loc_969139: LitI4 0
  loc_96913E: ILdI4 sFind
  loc_969141: FLdPr Me
  loc_969144: MemLdPr RsFrm
  loc_969147: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96914C: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '959C70
  'Data Table: 40A48C
  loc_959C54: FLdRfVar var_8C
  loc_959C57: FLdPr Me
  loc_959C5A: MemLdPr RsFrm
  loc_959C5D:  = Me.AbsolutePosition
  loc_959C62: ILdRf var_8C
  loc_959C65: FStR4 var_88
  loc_959C68: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9669E0
  'Data Table: 40A48C
  loc_9669C4: FLdRfVar var_8C
  loc_9669C7: FLdPr Me
  loc_9669CA: MemLdPr RsFrm
  loc_9669CD:  = Me.RecordCount
  loc_9669D2: ILdRf var_8C
  loc_9669D5: FStR4 var_88
  loc_9669D8: ExitProcCbHresult
End Sub

Public Function AddNew(PeriInfo, CaerPaco, ProvPaco, DeexPaco, ChsrPaco, CatePaco, CajaPaco, CarePaco, PatrPaco, ReejPaco) 'A25A2C
  'Data Table: 40A48C
  loc_A258E0: ILdRf CaerPaco
  loc_A258E3: FStStrCopy var_8C
  loc_A258E6: ILdRf ProvPaco
  loc_A258E9: FStStrCopy var_90
  loc_A258EC: ILdRf DeexPaco
  loc_A258EF: FStStrCopy AddNew
  loc_A258F2: ILdRf ChsrPaco
  loc_A258F5: FStStrCopy var_98
  loc_A258F8: ILdRf CatePaco
  loc_A258FB: FStStrCopy var_9C
  loc_A258FE: ILdRf CajaPaco
  loc_A25901: FStStrCopy var_A0
  loc_A25904: ILdRf CarePaco
  loc_A25907: FStStrCopy var_A4
  loc_A2590A: ILdRf PatrPaco
  loc_A2590D: FStStrCopy var_A8
  loc_A25910: ILdRf ReejPaco
  loc_A25913: FStStrCopy var_AC
  loc_A25916: ZeroRetVal
  loc_A25918: FLdRfVar var_B0
  loc_A2591B: FLdI2 PeriInfo
  loc_A2591E: Call Proc_24_21_98F12C()
  loc_A25923: FLdZeroAd var_B0
  loc_A25926: FStStr var_88
  loc_A25929: ILdRf var_88
  loc_A2592C: LitStr vbNullString
  loc_A2592F: NeStr
  loc_A25931: BranchF loc_A2593A
  loc_A25934: ExitProcCbHresult
  loc_A2593A: LitStr "INSERT INTO paraconta (PeriInfo,CaerPaco,ProvPaco,DeexPaco,ChsrPaco,CatePaco,CajaPaco,CarePaco,PatrPaco,ReejPaco,CodiUsua)"
  loc_A2593D: LitStr " VALUES ("
  loc_A25940: ConcatStr
  loc_A25941: FStStrNoPop var_B0
  loc_A25944: FLdI2 PeriInfo
  loc_A25947: CStrUI1
  loc_A25949: FStStrNoPop var_B4
  loc_A2594C: ConcatStr
  loc_A2594D: FStStrNoPop var_B8
  loc_A25950: LitStr ",'"
  loc_A25953: ConcatStr
  loc_A25954: FStStrNoPop var_BC
  loc_A25957: ILdRf var_8C
  loc_A2595A: ConcatStr
  loc_A2595B: FStStrNoPop var_C0
  loc_A2595E: LitStr "','"
  loc_A25961: ConcatStr
  loc_A25962: FStStrNoPop var_C4
  loc_A25965: ILdRf var_90
  loc_A25968: ConcatStr
  loc_A25969: FStStrNoPop var_C8
  loc_A2596C: LitStr "','"
  loc_A2596F: ConcatStr
  loc_A25970: FStStrNoPop var_CC
  loc_A25973: ILdRf AddNew
  loc_A25976: ConcatStr
  loc_A25977: FStStrNoPop var_D0
  loc_A2597A: LitStr "','"
  loc_A2597D: ConcatStr
  loc_A2597E: FStStrNoPop var_D4
  loc_A25981: ILdRf var_98
  loc_A25984: ConcatStr
  loc_A25985: FStStrNoPop var_D8
  loc_A25988: LitStr "','"
  loc_A2598B: ConcatStr
  loc_A2598C: FStStrNoPop var_DC
  loc_A2598F: ILdRf var_9C
  loc_A25992: ConcatStr
  loc_A25993: FStStrNoPop var_E0
  loc_A25996: LitStr "','"
  loc_A25999: ConcatStr
  loc_A2599A: FStStrNoPop var_E4
  loc_A2599D: ILdRf var_A0
  loc_A259A0: ConcatStr
  loc_A259A1: FStStrNoPop var_E8
  loc_A259A4: LitStr "','"
  loc_A259A7: ConcatStr
  loc_A259A8: FStStrNoPop var_EC
  loc_A259AB: ILdRf var_A4
  loc_A259AE: ConcatStr
  loc_A259AF: FStStrNoPop var_F0
  loc_A259B2: LitStr "','"
  loc_A259B5: ConcatStr
  loc_A259B6: FStStrNoPop var_F4
  loc_A259B9: ILdRf var_A8
  loc_A259BC: ConcatStr
  loc_A259BD: FStStrNoPop var_F8
  loc_A259C0: LitStr "','"
  loc_A259C3: ConcatStr
  loc_A259C4: FStStrNoPop var_FC
  loc_A259C7: ILdRf var_AC
  loc_A259CA: ConcatStr
  loc_A259CB: FStStrNoPop var_100
  loc_A259CE: LitStr "','"
  loc_A259D1: ConcatStr
  loc_A259D2: FStStrNoPop var_104
  loc_A259D5: ImpAdLdI4 MemVar_C3D03C
  loc_A259D8: ConcatStr
  loc_A259D9: FStStrNoPop var_108
  loc_A259DC: LitStr "')"
  loc_A259DF: ConcatStr
  loc_A259E0: FStStrNoPop var_10C
  loc_A259E3: Call EjecutarRsCls(from_stack_1v)
  loc_A259E8: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_A25A1B: FLdI2 PeriInfo
  loc_A25A1E: Call Encontrar(from_stack_1v)
  loc_A25A23: ExitProcCbHresult
End Function

Public Sub ModificarParametrosalInicio(CaerPaco, ProvPaco, DeexPaco, ChsrPaco, CatePaco, CajaPaco, CarePaco, PatrPaco, PaexPaco, SacePaco, DefaPaco, MiinPaco) 'A49520
  'Data Table: 40A48C
  loc_A49334: ILdRf CaerPaco
  loc_A49337: FStStrCopy var_88
  loc_A4933A: ILdRf ProvPaco
  loc_A4933D: FStStrCopy var_8C
  loc_A49340: ILdRf DeexPaco
  loc_A49343: FStStrCopy var_90
  loc_A49346: ILdRf ChsrPaco
  loc_A49349: FStStrCopy var_94
  loc_A4934C: ILdRf CatePaco
  loc_A4934F: FStStrCopy var_98
  loc_A49352: ILdRf CajaPaco
  loc_A49355: FStStrCopy var_9C
  loc_A49358: ILdRf CarePaco
  loc_A4935B: FStStrCopy var_A0
  loc_A4935E: ILdRf PatrPaco
  loc_A49361: FStStrCopy var_A4
  loc_A49364: ILdRf PaexPaco
  loc_A49367: FStStrCopy var_A8
  loc_A4936A: ILdRf SacePaco
  loc_A4936D: FStStrCopy var_AC
  loc_A49370: ILdRf DefaPaco
  loc_A49373: FStStrCopy var_B0
  loc_A49376: ILdRf MiinPaco
  loc_A49379: FStStrCopy var_B4
  loc_A4937C: LitStr "UPDATE paraconta"
  loc_A4937F: LitStr " SET CaerPaco='"
  loc_A49382: ConcatStr
  loc_A49383: FStStrNoPop var_B8
  loc_A49386: ILdRf var_88
  loc_A49389: ConcatStr
  loc_A4938A: FStStrNoPop var_BC
  loc_A4938D: LitStr "',ProvPaco='"
  loc_A49390: ConcatStr
  loc_A49391: FStStrNoPop var_C0
  loc_A49394: ILdRf var_8C
  loc_A49397: ConcatStr
  loc_A49398: FStStrNoPop var_C4
  loc_A4939B: LitStr "',DeexPaco='"
  loc_A4939E: ConcatStr
  loc_A4939F: FStStrNoPop var_C8
  loc_A493A2: ILdRf var_90
  loc_A493A5: ConcatStr
  loc_A493A6: FStStrNoPop var_CC
  loc_A493A9: LitStr "',ChsrPaco='"
  loc_A493AC: ConcatStr
  loc_A493AD: FStStrNoPop var_D0
  loc_A493B0: ILdRf var_94
  loc_A493B3: ConcatStr
  loc_A493B4: FStStrNoPop var_D4
  loc_A493B7: LitStr "',CatePaco='"
  loc_A493BA: ConcatStr
  loc_A493BB: FStStrNoPop var_D8
  loc_A493BE: ILdRf var_98
  loc_A493C1: ConcatStr
  loc_A493C2: FStStrNoPop var_DC
  loc_A493C5: LitStr "',CajaPaco='"
  loc_A493C8: ConcatStr
  loc_A493C9: FStStrNoPop var_E0
  loc_A493CC: ILdRf var_9C
  loc_A493CF: ConcatStr
  loc_A493D0: FStStrNoPop var_E4
  loc_A493D3: LitStr "',CarePaco='"
  loc_A493D6: ConcatStr
  loc_A493D7: FStStrNoPop var_E8
  loc_A493DA: ILdRf var_A0
  loc_A493DD: ConcatStr
  loc_A493DE: FStStrNoPop var_EC
  loc_A493E1: LitStr "',PatrPaco='"
  loc_A493E4: ConcatStr
  loc_A493E5: FStStrNoPop var_F0
  loc_A493E8: ILdRf var_A4
  loc_A493EB: ConcatStr
  loc_A493EC: FStStrNoPop var_F4
  loc_A493EF: LitStr "',PaexPaco='"
  loc_A493F2: ConcatStr
  loc_A493F3: FStStrNoPop var_F8
  loc_A493F6: ILdRf var_A8
  loc_A493F9: ConcatStr
  loc_A493FA: FStStrNoPop var_FC
  loc_A493FD: LitStr "',SacePaco='"
  loc_A49400: ConcatStr
  loc_A49401: FStStrNoPop var_100
  loc_A49404: ILdRf var_AC
  loc_A49407: ConcatStr
  loc_A49408: FStStrNoPop var_104
  loc_A4940B: LitStr "',DefaPaco='"
  loc_A4940E: ConcatStr
  loc_A4940F: FStStrNoPop var_108
  loc_A49412: ILdRf var_B0
  loc_A49415: ConcatStr
  loc_A49416: FStStrNoPop var_10C
  loc_A49419: LitStr "',MiinPaco='"
  loc_A4941C: ConcatStr
  loc_A4941D: FStStrNoPop var_110
  loc_A49420: LitI4 0
  loc_A49425: LitI4 -1
  loc_A4942A: LitI4 1
  loc_A4942F: LitStr "."
  loc_A49432: LitStr ","
  loc_A49435: ILdRf var_B4
  loc_A49438: ImpAdCallI2 Replace(, , , , , )
  loc_A4943D: FStStrNoPop var_114
  loc_A49440: ConcatStr
  loc_A49441: FStStrNoPop var_118
  loc_A49444: LitStr "', ModiUsua=@sUsuario, ModiFeho=Now()"
  loc_A49447: ConcatStr
  loc_A49448: FStStrNoPop var_11C
  loc_A4944B: LitStr " WHERE PeriInfo = "
  loc_A4944E: ConcatStr
  loc_A4944F: CVarStr var_154
  loc_A49452: FLdRfVar var_144
  loc_A49455: FLdRfVar var_134
  loc_A49458: LitVarStr var_130, "PeriInfo"
  loc_A4945D: PopAdLdVar
  loc_A4945E: FLdRfVar var_120
  loc_A49461: FLdPr Me
  loc_A49464: MemLdPr RsFrm
  loc_A49467:  = Me.Fields
  loc_A4946C: FLdPr var_120
  loc_A4946F: from_stack_2 = Me.Item(from_stack_1)
  loc_A49474: FLdPr var_134
  loc_A49477:  = Me.Value
  loc_A4947C: FLdRfVar var_144
  loc_A4947F: ConcatVar var_164
  loc_A49483: LitVarStr var_174, ";"
  loc_A49488: ConcatVar var_184
  loc_A4948C: CStrVarVal var_188
  loc_A49490: Call EjecutarRsCls(from_stack_1v)
  loc_A49495: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_A494CE: FFreeAd var_120 = ""
  loc_A494D5: FFreeVar var_154 = "": var_144 = "": var_164 = ""
  loc_A494E0: FLdRfVar var_144
  loc_A494E3: FLdRfVar var_134
  loc_A494E6: LitVarStr var_130, "PeriInfo"
  loc_A494EB: PopAdLdVar
  loc_A494EC: FLdRfVar var_120
  loc_A494EF: FLdPr Me
  loc_A494F2: MemLdPr RsFrm
  loc_A494F5:  = Me.Fields
  loc_A494FA: FLdPr var_120
  loc_A494FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A49502: FLdPr var_134
  loc_A49505:  = Me.Value
  loc_A4950A: FLdRfVar var_144
  loc_A4950D: CI2Var
  loc_A4950E: Call Encontrar(from_stack_1v)
  loc_A49513: FFreeAd var_120 = ""
  loc_A4951A: FFree1Var var_144 = ""
  loc_A4951D: ExitProcHresult
End Sub

Public Sub ModificarParametrosalCierre(ReejPaco, FeretePaco) '9FB034
  'Data Table: 40A48C
  loc_9FAF20: ILdRf ReejPaco
  loc_9FAF23: FStStrCopy var_88
  loc_9FAF26: ILdRf FeretePaco
  loc_9FAF29: FStStrCopy var_8C
  loc_9FAF2C: LitStr "UPDATE paraconta"
  loc_9FAF2F: LitStr " SET ReejPaco='"
  loc_9FAF32: ConcatStr
  loc_9FAF33: FStStrNoPop var_90
  loc_9FAF36: ILdRf var_88
  loc_9FAF39: ConcatStr
  loc_9FAF3A: FStStrNoPop var_94
  loc_9FAF3D: LitStr "', FeretePaco="
  loc_9FAF40: ConcatStr
  loc_9FAF41: FStStrNoPop var_C8
  loc_9FAF44: LitI4 1
  loc_9FAF49: LitI4 1
  loc_9FAF4E: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_9FAF53: FStVarCopyObj var_C4
  loc_9FAF56: FLdRfVar var_C4
  loc_9FAF59: FLdRfVar var_8C
  loc_9FAF5C: CVarRef
  loc_9FAF61: ImpAdCallI2 Format$(, )
  loc_9FAF66: FStStrNoPop var_CC
  loc_9FAF69: ConcatStr
  loc_9FAF6A: FStStrNoPop var_D0
  loc_9FAF6D: LitStr ", ModiUsua='"
  loc_9FAF70: ConcatStr
  loc_9FAF71: FStStrNoPop var_D4
  loc_9FAF74: ImpAdLdI4 MemVar_C3D03C
  loc_9FAF77: ConcatStr
  loc_9FAF78: FStStrNoPop var_D8
  loc_9FAF7B: LitStr "', ModiFeho=Now()"
  loc_9FAF7E: ConcatStr
  loc_9FAF7F: FStStrNoPop var_DC
  loc_9FAF82: LitStr " WHERE PeriInfo="
  loc_9FAF85: ConcatStr
  loc_9FAF86: CVarStr var_114
  loc_9FAF89: FLdRfVar var_104
  loc_9FAF8C: FLdRfVar var_F4
  loc_9FAF8F: LitVarStr var_F0, "PeriInfo"
  loc_9FAF94: PopAdLdVar
  loc_9FAF95: FLdRfVar var_E0
  loc_9FAF98: FLdPr Me
  loc_9FAF9B: MemLdPr RsFrm
  loc_9FAF9E:  = Me.Fields
  loc_9FAFA3: FLdPr var_E0
  loc_9FAFA6: from_stack_2 = Me.Item(from_stack_1)
  loc_9FAFAB: FLdPr var_F4
  loc_9FAFAE:  = Me.Value
  loc_9FAFB3: FLdRfVar var_104
  loc_9FAFB6: ConcatVar var_124
  loc_9FAFBA: LitVarStr var_134, ";"
  loc_9FAFBF: ConcatVar var_144
  loc_9FAFC3: CStrVarVal var_148
  loc_9FAFC7: Call EjecutarRsCls(from_stack_1v)
  loc_9FAFCC: FFreeStr var_90 = "": var_94 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_9FAFE1: FFreeAd var_E0 = ""
  loc_9FAFE8: FFreeVar var_C4 = "": var_114 = "": var_104 = "": var_124 = ""
  loc_9FAFF5: FLdRfVar var_C4
  loc_9FAFF8: FLdRfVar var_F4
  loc_9FAFFB: LitVarStr var_A4, "PeriInfo"
  loc_9FB000: PopAdLdVar
  loc_9FB001: FLdRfVar var_E0
  loc_9FB004: FLdPr Me
  loc_9FB007: MemLdPr RsFrm
  loc_9FB00A:  = Me.Fields
  loc_9FB00F: FLdPr var_E0
  loc_9FB012: from_stack_2 = Me.Item(from_stack_1)
  loc_9FB017: FLdPr var_F4
  loc_9FB01A:  = Me.Value
  loc_9FB01F: FLdRfVar var_C4
  loc_9FB022: CI2Var
  loc_9FB023: Call Encontrar(from_stack_1v)
  loc_9FB028: FFreeAd var_E0 = ""
  loc_9FB02F: FFree1Var var_C4 = ""
  loc_9FB032: ExitProcHresult
End Sub

Public Sub Encontrar(PeriInfo) '9CF5FC
  'Data Table: 40A48C
  loc_9CF520: FLdI2 PeriInfo
  loc_9CF523: LitI2_Byte 0
  loc_9CF525: EqI2
  loc_9CF526: FLdRfVar var_88
  loc_9CF529: FLdPr Me
  loc_9CF52C: MemLdPr RsFrm
  loc_9CF52F:  = Me.RecordCount
  loc_9CF534: ILdRf var_88
  loc_9CF537: LitI4 0
  loc_9CF53C: GtI4
  loc_9CF53D: AndI4
  loc_9CF53E: FLdRfVar var_8C
  loc_9CF541: FLdPr Me
  loc_9CF544: MemLdPr RsFrm
  loc_9CF547:  = Me.AbsolutePosition
  loc_9CF54C: ILdRf var_8C
  loc_9CF54F: LitI4 -3
  loc_9CF554: NeI4
  loc_9CF555: AndI4
  loc_9CF556: BranchF loc_9CF594
  loc_9CF559: FLdRfVar var_B4
  loc_9CF55C: FLdRfVar var_A4
  loc_9CF55F: LitVarStr var_A0, "PeriInfo"
  loc_9CF564: PopAdLdVar
  loc_9CF565: FLdRfVar var_90
  loc_9CF568: FLdPr Me
  loc_9CF56B: MemLdPr RsFrm
  loc_9CF56E:  = Me.Fields
  loc_9CF573: FLdPr var_90
  loc_9CF576: from_stack_2 = Me.Item(from_stack_1)
  loc_9CF57B: FLdPr var_A4
  loc_9CF57E:  = Me.Value
  loc_9CF583: FLdRfVar var_B4
  loc_9CF586: CI2Var
  loc_9CF587: FStI2 PeriInfo
  loc_9CF58A: FFreeAd var_90 = ""
  loc_9CF591: FFree1Var var_B4 = ""
  loc_9CF594: Call Requery()
  loc_9CF599: LitStr "PeriInfo = '"
  loc_9CF59C: FLdI2 PeriInfo
  loc_9CF59F: CStrUI1
  loc_9CF5A1: FStStrNoPop var_B8
  loc_9CF5A4: ConcatStr
  loc_9CF5A5: FStStrNoPop var_BC
  loc_9CF5A8: LitStr "'"
  loc_9CF5AB: ConcatStr
  loc_9CF5AC: PopTmpLdAdStr
  loc_9CF5B0: Call Find(from_stack_1v)
  loc_9CF5B5: FFreeStr var_B8 = "": var_BC = ""
  loc_9CF5BE: FLdRfVar var_88
  loc_9CF5C1: FLdPr Me
  loc_9CF5C4: MemLdPr RsFrm
  loc_9CF5C7:  = Me.RecordCount
  loc_9CF5CC: ILdRf var_88
  loc_9CF5CF: LitI4 0
  loc_9CF5D4: GtI4
  loc_9CF5D5: FLdRfVar var_8C
  loc_9CF5D8: FLdPr Me
  loc_9CF5DB: MemLdPr RsFrm
  loc_9CF5DE:  = Me.AbsolutePosition
  loc_9CF5E3: ILdRf var_8C
  loc_9CF5E6: LitI4 -3
  loc_9CF5EB: EqI4
  loc_9CF5EC: AndI4
  loc_9CF5ED: BranchF loc_9CF5FB
  loc_9CF5F0: FLdPr Me
  loc_9CF5F3: MemLdPr RsFrm
  loc_9CF5F6: Me.MoveFirst
  loc_9CF5FB: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '974800
  'Data Table: 40A48C
  loc_9747D8: ILdRf sSelect
  loc_9747DB: FStStrCopy var_88
  loc_9747DE: FLdPr Me
  loc_9747E1: MemLdRfVar from_stack_1.RsFrm
  loc_9747E4: ILdRf var_88
  loc_9747E7: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_9747EC: LitVarStr var_98, "Primary"
  loc_9747F1: PopAdLdVar
  loc_9747F2: FLdPr Me
  loc_9747F5: LateIdCall
  loc_9747FD: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '959B88
  'Data Table: 40A48C
  loc_959B70: ILdRf sSelect
  loc_959B73: FStStrCopy var_88
  loc_959B76: FLdPr Me
  loc_959B79: MemLdRfVar from_stack_1.global_56
  loc_959B7C: ILdRf var_88
  loc_959B7F: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_959B84: ExitProcHresult
  loc_959B85: EqStr
End Sub

Public Sub Requery() '9691A0
  'Data Table: 40A48C
  loc_969180: FLdPr Me
  loc_969183: MemLdRfVar from_stack_1.RsFrm
  loc_969186: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_96918B: LitVarStr var_94, "Primary"
  loc_969190: PopAdLdVar
  loc_969191: FLdPr Me
  loc_969194: LateIdCall
  loc_96919C: ExitProcHresult
End Sub

Public Property Get DataSource() '974E74
  'Data Table: 40A48C
  loc_974E50: ZeroRetVal
  loc_974E52: FLdRfVar var_8C
  loc_974E55: FLdPr Me
  loc_974E58: MemLdPr RsFrm
  loc_974E5B:  = Me.DataSource
  loc_974E60: ILdRf var_8C
  loc_974E63: CastAd
  loc_974E66: FStAdFunc var_88
  loc_974E69: FFree1Ad var_8C
  loc_974E6C: ExitProcCbHresult
  loc_974E72: ImpAdLdFPR8 MemVar_4C44BAC0
End Sub

Private Function Proc_24_21_98F12C(arg_C) '98F12C
  'Data Table: 40A48C
  loc_98F0E8: ZeroRetVal
  loc_98F0EA: LitStr "SELECT PeriInfo FROM paraconta WHERE PeriInfo = "
  loc_98F0ED: FLdI2 arg_C
  loc_98F0F0: CStrUI1
  loc_98F0F2: FStStrNoPop var_8C
  loc_98F0F5: ConcatStr
  loc_98F0F6: FStStrNoPop var_90
  loc_98F0F9: Call EjecutarRsCls(from_stack_1v)
  loc_98F0FE: FFreeStr var_8C = ""
  loc_98F105: FLdRfVar var_94
  loc_98F108: FLdPr Me
  loc_98F10B: MemLdPr global_56
  loc_98F10E:  = Me.RecordCount
  loc_98F113: ILdRf var_94
  loc_98F116: LitI4 0
  loc_98F11B: GtI4
  loc_98F11C: BranchF loc_98F125
  loc_98F11F: LitStr "EL Parámetro YA EXISTE. Verifique..."
  loc_98F122: FStStrCopy var_88
  loc_98F125: ExitProcCbHresult
End Function

Private Function Proc_24_22_974858() '974858
  'Data Table: 40A48C
  loc_974834: LitStr "Primary"
  loc_974837: FLdPr Me
  loc_97483A: LateIdLdVar var_94 DispID_4 0
  loc_974841: CastAdVar Me
  loc_974845: FStAdFunc var_98
  loc_974848: FLdPr var_98
  loc_974850: FFree1Ad var_98
  loc_974853: FFree1Var var_94 = ""
  loc_974856: ExitProcHresult
End Function

Private Function Proc_24_23_9691EC(arg_C) '9691EC
  'Data Table: 40A48C
  loc_9691D0: ILdI4 arg_C
  loc_9691D3: FStStrCopy var_88
  loc_9691D6: ILdRf var_88
  loc_9691D9: LitStr "Primary"
  loc_9691DC: EqStr
  loc_9691DE: BranchF loc_9691EB
  loc_9691E1: FLdPr Me
  loc_9691E4: MemLdStr RsFrm
  loc_9691E7: IStAd
  loc_9691EB: ExitProcHresult
End Function
