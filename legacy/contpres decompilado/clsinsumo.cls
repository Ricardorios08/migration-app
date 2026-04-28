VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsinsumo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40EDCC
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40EDDB
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40EDEA
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96EDE4
  'Data Table: 40EBD0
  loc_96EDBC: FLdRfVar var_88
  loc_96EDBF: FLdPr Me
  loc_96EDC2: MemLdPr RsFrm
  loc_96EDC5:  = Me.RecordCount
  loc_96EDCA: ILdRf var_88
  loc_96EDCD: LitI4 0
  loc_96EDD2: GtI4
  loc_96EDD3: BranchF loc_96EDE1
  loc_96EDD6: FLdPr Me
  loc_96EDD9: MemLdPr RsFrm
  loc_96EDDC: Me.MoveFirst
  loc_96EDE1: ExitProcHresult
End Sub

Public Sub MoveLast() '96EC84
  'Data Table: 40EBD0
  loc_96EC5C: FLdRfVar var_88
  loc_96EC5F: FLdPr Me
  loc_96EC62: MemLdPr RsFrm
  loc_96EC65:  = Me.RecordCount
  loc_96EC6A: ILdRf var_88
  loc_96EC6D: LitI4 0
  loc_96EC72: GtI4
  loc_96EC73: BranchF loc_96EC81
  loc_96EC76: FLdPr Me
  loc_96EC79: MemLdPr RsFrm
  loc_96EC7C: Me.MoveLast
  loc_96EC81: ExitProcHresult
  loc_96EC82: CI4Str
End Sub

Public Sub MoveNext() '99C8D8
  'Data Table: 40EBD0
  loc_99C860: FLdRfVar var_86
  loc_99C863: FLdPr Me
  loc_99C866: MemLdPr RsFrm
  loc_99C869:  = Me.EOF
  loc_99C86E: FLdI2 var_86
  loc_99C871: NotI4
  loc_99C872: FLdRfVar var_8C
  loc_99C875: FLdPr Me
  loc_99C878: MemLdPr RsFrm
  loc_99C87B:  = Me.RecordCount
  loc_99C880: ILdRf var_8C
  loc_99C883: LitI4 0
  loc_99C888: GtI4
  loc_99C889: AndI4
  loc_99C88A: BranchF loc_99C898
  loc_99C88D: FLdPr Me
  loc_99C890: MemLdPr RsFrm
  loc_99C893: Me.MoveNext
  loc_99C898: FLdRfVar var_86
  loc_99C89B: FLdPr Me
  loc_99C89E: MemLdPr RsFrm
  loc_99C8A1:  = Me.EOF
  loc_99C8A6: FLdI2 var_86
  loc_99C8A9: FLdRfVar var_8C
  loc_99C8AC: FLdPr Me
  loc_99C8AF: MemLdPr RsFrm
  loc_99C8B2:  = Me.RecordCount
  loc_99C8B7: ILdRf var_8C
  loc_99C8BA: LitI4 0
  loc_99C8BF: GtI4
  loc_99C8C0: AndI4
  loc_99C8C1: BranchF loc_99C8D4
  loc_99C8C4: ImpAdCallFPR4 Beep()
  loc_99C8C9: FLdPr Me
  loc_99C8CC: MemLdPr RsFrm
  loc_99C8CF: Me.MoveLast
  loc_99C8D4: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '941F6C
  'Data Table: 40EBD0
  loc_941F60: FLdPr Me
  loc_941F63: MemLdPr RsFrm
  loc_941F66: Me.MoveNext
  loc_941F6B: ExitProcHresult
End Sub

Public Sub Move(iValor) '9482C4
  'Data Table: 40EBD0
  loc_9482B0: LitVar_Missing var_94
  loc_9482B3: PopAdLdVar
  loc_9482B4: ILdI2 iValor
  loc_9482B7: CI4UI1
  loc_9482B8: FLdPr Me
  loc_9482BB: MemLdPr RsFrm
  loc_9482BE: Me.Move from_stack_1, from_stack_2
  loc_9482C3: ExitProcHresult
End Sub

Public Sub MovePrevious() '99D010
  'Data Table: 40EBD0
  loc_99CF98: FLdRfVar var_86
  loc_99CF9B: FLdPr Me
  loc_99CF9E: MemLdPr RsFrm
  loc_99CFA1:  = Me.BOF
  loc_99CFA6: FLdI2 var_86
  loc_99CFA9: NotI4
  loc_99CFAA: FLdRfVar var_8C
  loc_99CFAD: FLdPr Me
  loc_99CFB0: MemLdPr RsFrm
  loc_99CFB3:  = Me.RecordCount
  loc_99CFB8: ILdRf var_8C
  loc_99CFBB: LitI4 0
  loc_99CFC0: GtI4
  loc_99CFC1: AndI4
  loc_99CFC2: BranchF loc_99CFD0
  loc_99CFC5: FLdPr Me
  loc_99CFC8: MemLdPr RsFrm
  loc_99CFCB: Me.MovePrevious
  loc_99CFD0: FLdRfVar var_86
  loc_99CFD3: FLdPr Me
  loc_99CFD6: MemLdPr RsFrm
  loc_99CFD9:  = Me.BOF
  loc_99CFDE: FLdI2 var_86
  loc_99CFE1: FLdRfVar var_8C
  loc_99CFE4: FLdPr Me
  loc_99CFE7: MemLdPr RsFrm
  loc_99CFEA:  = Me.RecordCount
  loc_99CFEF: ILdRf var_8C
  loc_99CFF2: LitI4 0
  loc_99CFF7: GtI4
  loc_99CFF8: AndI4
  loc_99CFF9: BranchF loc_99D00C
  loc_99CFFC: ImpAdCallFPR4 Beep()
  loc_99D001: FLdPr Me
  loc_99D004: MemLdPr RsFrm
  loc_99D007: Me.MoveFirst
  loc_99D00C: ExitProcHresult
  loc_99D00D: FLdRfVar var_C8
End Sub

Public Property Get EOF() '95EA38
  'Data Table: 40EBD0
  loc_95EA1C: FLdRfVar var_88
  loc_95EA1F: FLdPr Me
  loc_95EA22: MemLdPr RsFrm
  loc_95EA25:  = Me.EOF
  loc_95EA2A: FLdI2 var_88
  loc_95EA2D: FStI2 var_86
  loc_95EA30: ExitProcCbHresult
  loc_95EA36: CastAd
End Sub

Public Property Get BOF() '95E9A0
  'Data Table: 40EBD0
  loc_95E984: FLdRfVar var_88
  loc_95E987: FLdPr Me
  loc_95E98A: MemLdPr RsFrm
  loc_95E98D:  = Me.BOF
  loc_95E992: FLdI2 var_88
  loc_95E995: FStI2 var_86
  loc_95E998: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '946704
  'Data Table: 40EBD0
  loc_9466F4: ILdI4 sOrden
  loc_9466F7: FLdPr Me
  loc_9466FA: MemLdPr RsFrm
  loc_9466FD: Me.Sort = from_stack_1
  loc_946702: ExitProcHresult
End Sub

Public Sub Find(sFind) '968660
  'Data Table: 40EBD0
  loc_968640: LitVar_Missing var_94
  loc_968643: PopAdLdVar
  loc_968644: LitI4 1
  loc_968649: LitI4 0
  loc_96864E: ILdI4 sFind
  loc_968651: FLdPr Me
  loc_968654: MemLdPr RsFrm
  loc_968657: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96865C: ExitProcHresult
  loc_96865D: FStFPR8 MeFF
End Sub

Public Sub Filter(sCriterio) '947F0C
  'Data Table: 40EBD0
  loc_947EF8: ILdI4 sCriterio
  loc_947EFB: CVarStr var_94
  loc_947EFE: PopAdLdVar
  loc_947EFF: FLdPr Me
  loc_947F02: MemLdPr RsFrm
  loc_947F05: Me.Filter = from_stack_1
  loc_947F0A: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '95E740
  'Data Table: 40EBD0
  loc_95E724: FLdRfVar var_8C
  loc_95E727: FLdPr Me
  loc_95E72A: MemLdPr RsFrm
  loc_95E72D:  = Me.AbsolutePosition
  loc_95E732: ILdRf var_8C
  loc_95E735: FStR4 var_88
  loc_95E738: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '95E6A8
  'Data Table: 40EBD0
  loc_95E68C: FLdRfVar var_8C
  loc_95E68F: FLdPr Me
  loc_95E692: MemLdPr RsFrm
  loc_95E695:  = Me.RecordCount
  loc_95E69A: ILdRf var_8C
  loc_95E69D: FStR4 var_88
  loc_95E6A0: ExitProcCbHresult
End Sub

Public Sub AddNew(DetaInsu, UlprInsu) '9BE160
  'Data Table: 40EBD0
  loc_9BE0C0: ILdRf DetaInsu
  loc_9BE0C3: FStStrCopy var_88
  loc_9BE0C6: FLdRfVar var_90
  loc_9BE0C9: from_stack_1v = NuevoRegistro()
  loc_9BE0CE: ILdRf var_90
  loc_9BE0D1: FStR4 var_8C
  loc_9BE0D4: LitStr "INSERT INTO infogov.insumo (CodiInsu,DetaInsu,UlprInsu,AltaUsua) VALUES ("
  loc_9BE0D7: ILdRf var_8C
  loc_9BE0DA: CStrI4
  loc_9BE0DC: FStStrNoPop var_94
  loc_9BE0DF: ConcatStr
  loc_9BE0E0: FStStrNoPop var_98
  loc_9BE0E3: LitStr ",'"
  loc_9BE0E6: ConcatStr
  loc_9BE0E7: FStStrNoPop var_9C
  loc_9BE0EA: ILdRf var_88
  loc_9BE0ED: ConcatStr
  loc_9BE0EE: FStStrNoPop var_A0
  loc_9BE0F1: LitStr "',"
  loc_9BE0F4: ConcatStr
  loc_9BE0F5: FStStrNoPop var_A8
  loc_9BE0F8: LitI4 0
  loc_9BE0FD: LitI4 -1
  loc_9BE102: LitI4 1
  loc_9BE107: LitStr "."
  loc_9BE10A: LitStr ","
  loc_9BE10D: FLdFPR8 UlprInsu
  loc_9BE110: CStrR8
  loc_9BE112: FStStrNoPop var_A4
  loc_9BE115: ImpAdCallI2 Replace(, , , , , )
  loc_9BE11A: FStStrNoPop var_AC
  loc_9BE11D: ConcatStr
  loc_9BE11E: FStStrNoPop var_B0
  loc_9BE121: LitStr ",'"
  loc_9BE124: ConcatStr
  loc_9BE125: FStStrNoPop var_B4
  loc_9BE128: ImpAdLdI4 MemVar_C3D03C
  loc_9BE12B: ConcatStr
  loc_9BE12C: FStStrNoPop var_B8
  loc_9BE12F: LitStr "')"
  loc_9BE132: ConcatStr
  loc_9BE133: FStStrNoPop var_BC
  loc_9BE136: Call EjecutarRsCls(from_stack_1v)
  loc_9BE13B: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9BE154: ILdRf var_8C
  loc_9BE157: Call Encontrar(from_stack_1v)
  loc_9BE15C: ExitProcHresult
  loc_9BE15D: StAryRecCopy
End Sub

Public Sub Modificar(CodiInsu, DetaInsu, UlprInsu) '9AF3E8
  'Data Table: 40EBD0
  loc_9AF360: ILdRf DetaInsu
  loc_9AF363: FStStrCopy var_88
  loc_9AF366: LitStr "UPDATE infogov.insumo SET DetaInsu='"
  loc_9AF369: ILdRf var_88
  loc_9AF36C: ConcatStr
  loc_9AF36D: FStStrNoPop var_8C
  loc_9AF370: LitStr "',UlprInsu="
  loc_9AF373: ConcatStr
  loc_9AF374: FStStrNoPop var_94
  loc_9AF377: LitI4 0
  loc_9AF37C: LitI4 -1
  loc_9AF381: LitI4 1
  loc_9AF386: LitStr "."
  loc_9AF389: LitStr ","
  loc_9AF38C: FLdFPR8 UlprInsu
  loc_9AF38F: CStrR8
  loc_9AF391: FStStrNoPop var_90
  loc_9AF394: ImpAdCallI2 Replace(, , , , , )
  loc_9AF399: FStStrNoPop var_98
  loc_9AF39C: ConcatStr
  loc_9AF39D: FStStrNoPop var_9C
  loc_9AF3A0: LitStr ",ModiUsua='"
  loc_9AF3A3: ConcatStr
  loc_9AF3A4: FStStrNoPop var_A0
  loc_9AF3A7: ImpAdLdI4 MemVar_C3D03C
  loc_9AF3AA: ConcatStr
  loc_9AF3AB: FStStrNoPop var_A4
  loc_9AF3AE: LitStr "',ModiFeho=now() WHERE CodiInsu="
  loc_9AF3B1: ConcatStr
  loc_9AF3B2: FStStrNoPop var_A8
  loc_9AF3B5: ILdRf CodiInsu
  loc_9AF3B8: CStrI4
  loc_9AF3BA: FStStrNoPop var_AC
  loc_9AF3BD: ConcatStr
  loc_9AF3BE: FStStrNoPop var_B0
  loc_9AF3C1: Call EjecutarRsCls(from_stack_1v)
  loc_9AF3C6: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_9AF3DD: ILdRf CodiInsu
  loc_9AF3E0: Call Encontrar(from_stack_1v)
  loc_9AF3E5: ExitProcHresult
End Sub

Public Sub Anular() '9B7110
  'Data Table: 40EBD0
  loc_9B706C: LitStr "UPDATE infogov.insumo SET BajaUsua='"
  loc_9B706F: ImpAdLdI4 MemVar_C3D03C
  loc_9B7072: ConcatStr
  loc_9B7073: FStStrNoPop var_88
  loc_9B7076: LitStr "',BajaFeho=now() WHERE CodiInsu="
  loc_9B7079: ConcatStr
  loc_9B707A: CVarStr var_C0
  loc_9B707D: FLdRfVar var_B0
  loc_9B7080: FLdRfVar var_A0
  loc_9B7083: LitVarStr var_9C, "CodiInsu"
  loc_9B7088: PopAdLdVar
  loc_9B7089: FLdRfVar var_8C
  loc_9B708C: FLdPr Me
  loc_9B708F: MemLdPr RsFrm
  loc_9B7092:  = Me.Fields
  loc_9B7097: FLdPr var_8C
  loc_9B709A: from_stack_2 = Me.Item(from_stack_1)
  loc_9B709F: FLdPr var_A0
  loc_9B70A2:  = Me.Value
  loc_9B70A7: FLdRfVar var_B0
  loc_9B70AA: ConcatVar var_D0
  loc_9B70AE: CStrVarVal var_D4
  loc_9B70B2: Call EjecutarRsCls(from_stack_1v)
  loc_9B70B7: FFreeStr var_88 = ""
  loc_9B70BE: FFreeAd var_8C = ""
  loc_9B70C5: FFreeVar var_C0 = "": var_B0 = ""
  loc_9B70CE: FLdRfVar var_B0
  loc_9B70D1: FLdRfVar var_A0
  loc_9B70D4: LitVarStr var_9C, "CodiInsu"
  loc_9B70D9: PopAdLdVar
  loc_9B70DA: FLdRfVar var_8C
  loc_9B70DD: FLdPr Me
  loc_9B70E0: MemLdPr RsFrm
  loc_9B70E3:  = Me.Fields
  loc_9B70E8: FLdPr var_8C
  loc_9B70EB: from_stack_2 = Me.Item(from_stack_1)
  loc_9B70F0: FLdPr var_A0
  loc_9B70F3:  = Me.Value
  loc_9B70F8: FLdRfVar var_B0
  loc_9B70FB: CI4Var
  loc_9B70FD: Call Encontrar(from_stack_1v)
  loc_9B7102: FFreeAd var_8C = ""
  loc_9B7109: FFree1Var var_B0 = ""
  loc_9B710C: ExitProcHresult
End Sub

Public Sub Eliminar(CodiInsu) '9A0F80
  'Data Table: 40EBD0
  loc_9A0F08: LitStr "DELETE FROM infogov.insumo WHERE CodiInsu="
  loc_9A0F0B: ILdRf CodiInsu
  loc_9A0F0E: CStrI4
  loc_9A0F10: FStStrNoPop var_88
  loc_9A0F13: ConcatStr
  loc_9A0F14: FStStrNoPop var_8C
  loc_9A0F17: Call EjecutarRsCls(from_stack_1v)
  loc_9A0F1C: FFreeStr var_88 = ""
  loc_9A0F23: FLdRfVar var_94
  loc_9A0F26: FLdPr Me
  loc_9A0F29: MemLdPr RsFrm
  loc_9A0F2C:  = Me.AbsolutePosition
  loc_9A0F31: ILdRf var_94
  loc_9A0F34: FStR4 var_90
  loc_9A0F37: Call Requery()
  loc_9A0F3C: FLdRfVar var_94
  loc_9A0F3F: FLdPr Me
  loc_9A0F42: MemLdPr RsFrm
  loc_9A0F45:  = Me.RecordCount
  loc_9A0F4A: ILdRf var_94
  loc_9A0F4D: LitI4 0
  loc_9A0F52: GtI4
  loc_9A0F53: BranchF loc_9A0F7F
  loc_9A0F56: Call MoveFirst()
  loc_9A0F5B: ILdRf var_90
  loc_9A0F5E: LitI4 1
  loc_9A0F63: GtI4
  loc_9A0F64: BranchF loc_9A0F7F
  loc_9A0F67: LitVar_Missing var_A4
  loc_9A0F6A: PopAdLdVar
  loc_9A0F6B: ILdRf var_90
  loc_9A0F6E: LitI4 2
  loc_9A0F73: SubI4
  loc_9A0F74: FLdPr Me
  loc_9A0F77: MemLdPr RsFrm
  loc_9A0F7A: Me.Move from_stack_1, from_stack_2
  loc_9A0F7F: ExitProcHresult
End Sub

Public Function NuevoRegistro() '9A3144
  'Data Table: 40EBD0
  loc_9A30CC: LitStr "SELECT CodiInsu FROM infogov.insumo ORDER BY CodiInsu DESC LIMIT 1"
  loc_9A30CF: Call EjecutarRsCls(from_stack_1v)
  loc_9A30D4: FLdRfVar var_8C
  loc_9A30D7: FLdPr Me
  loc_9A30DA: MemLdPr global_56
  loc_9A30DD:  = Me.RecordCount
  loc_9A30E2: ILdRf var_8C
  loc_9A30E5: LitI4 0
  loc_9A30EA: GtI4
  loc_9A30EB: BranchF loc_9A3133
  loc_9A30EE: FLdRfVar var_B4
  loc_9A30F1: FLdRfVar var_A4
  loc_9A30F4: LitVarStr var_A0, "CodiInsu"
  loc_9A30F9: PopAdLdVar
  loc_9A30FA: FLdRfVar var_90
  loc_9A30FD: FLdPr Me
  loc_9A3100: MemLdPr global_56
  loc_9A3103:  = Me.Fields
  loc_9A3108: FLdPr var_90
  loc_9A310B: from_stack_2 = Me.Item(from_stack_1)
  loc_9A3110: FLdPr var_A4
  loc_9A3113:  = Me.Value
  loc_9A3118: FLdRfVar var_B4
  loc_9A311B: FnCLngVar
  loc_9A311D: LitI4 1
  loc_9A3122: AddI4
  loc_9A3123: FStR4 var_88
  loc_9A3126: FFreeAd var_90 = ""
  loc_9A312D: FFree1Var var_B4 = ""
  loc_9A3130: Branch loc_9A313B
  loc_9A3133: LitI4 1
  loc_9A3138: FStR4 var_88
  loc_9A313B: ExitProcCbHresult
End Function

Public Sub Encontrar(CodiInsu) '97F680
  'Data Table: 40EBD0
  loc_97F654: Call Requery()
  loc_97F659: LitStr "CodiInsu = '"
  loc_97F65C: ILdRf CodiInsu
  loc_97F65F: CStrI4
  loc_97F661: FStStrNoPop var_88
  loc_97F664: ConcatStr
  loc_97F665: FStStrNoPop var_8C
  loc_97F668: LitStr "'"
  loc_97F66B: ConcatStr
  loc_97F66C: PopTmpLdAdStr
  loc_97F670: Call Find(from_stack_1v)
  loc_97F675: FFreeStr var_88 = "": var_8C = ""
  loc_97F67E: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '972410
  'Data Table: 40EBD0
  loc_9723E8: ILdRf sSelect
  loc_9723EB: FStStrCopy var_88
  loc_9723EE: FLdPr Me
  loc_9723F1: MemLdRfVar from_stack_1.RsFrm
  loc_9723F4: ILdRf var_88
  loc_9723F7: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_9723FC: LitVarStr var_98, "Primary"
  loc_972401: PopAdLdVar
  loc_972402: FLdPr Me
  loc_972405: LateIdCall
  loc_97240D: ExitProcHresult
  loc_97240E: PopAdLd4
End Sub

Public Sub EjecutarRsCls(sSelect) '95E60C
  'Data Table: 40EBD0
  loc_95E5F4: ILdRf sSelect
  loc_95E5F7: FStStrCopy var_88
  loc_95E5FA: FLdPr Me
  loc_95E5FD: MemLdRfVar from_stack_1.global_56
  loc_95E600: ILdRf var_88
  loc_95E603: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95E608: ExitProcHresult
End Sub

Public Sub Requery() '9686B0
  'Data Table: 40EBD0
  loc_968690: FLdPr Me
  loc_968693: MemLdRfVar from_stack_1.RsFrm
  loc_968696: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_96869B: LitVarStr var_94, "Primary"
  loc_9686A0: PopAdLdVar
  loc_9686A1: FLdPr Me
  loc_9686A4: LateIdCall
  loc_9686AC: ExitProcHresult
End Sub

Public Property Get DataSource() '9724C4
  'Data Table: 40EBD0
  loc_9724A0: ZeroRetVal
  loc_9724A2: FLdRfVar var_8C
  loc_9724A5: FLdPr Me
  loc_9724A8: MemLdPr RsFrm
  loc_9724AB:  = Me.DataSource
  loc_9724B0: ILdRf var_8C
  loc_9724B3: CastAd
  loc_9724B6: FStAdFunc var_88
  loc_9724B9: FFree1Ad var_8C
  loc_9724BC: ExitProcCbHresult
  loc_9724C2: AryLock
End Sub

Public Function DetaInsuLostFocus(CodiInsu, DetaInsu) '9F773C
  'Data Table: 40EBD0
  loc_9F762C: ILdRf DetaInsu
  loc_9F762F: FStStrCopy var_98
  loc_9F7632: ZeroRetValVar
  loc_9F7634: LitI2_Byte 0
  loc_9F7636: PopTmpLdAd2 var_9E
  loc_9F7639: LitI2_Byte 0
  loc_9F763B: PopTmpLdAd2 var_9C
  loc_9F763E: LitI2_Byte 0
  loc_9F7640: PopTmpLdAd2 var_9A
  loc_9F7643: ILdRf var_98
  loc_9F7646: LitStr "Insumo"
  loc_9F7649: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9F764E: CVarStr var_B0
  loc_9F7651: FStVar DetaInsuLostFocus
  loc_9F7655: LitStr "SELECT CodiInsu, DetaInsu FROM infogov.insumo WHERE CodiInsu != "
  loc_9F7658: FLdI2 CodiInsu
  loc_9F765B: CStrUI1
  loc_9F765D: FStStrNoPop var_B4
  loc_9F7660: ConcatStr
  loc_9F7661: FStStrNoPop var_B8
  loc_9F7664: LitStr " AND DetaInsu LIKE '"
  loc_9F7667: ConcatStr
  loc_9F7668: FStStrNoPop var_BC
  loc_9F766B: ILdRf var_98
  loc_9F766E: ConcatStr
  loc_9F766F: FStStrNoPop var_C0
  loc_9F7672: LitStr "'"
  loc_9F7675: ConcatStr
  loc_9F7676: FStStrNoPop var_C4
  loc_9F7679: Call EjecutarRsCls(from_stack_1v)
  loc_9F767E: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_9F768B: FLdRfVar var_C8
  loc_9F768E: FLdPr Me
  loc_9F7691: MemLdPr global_56
  loc_9F7694:  = Me.RecordCount
  loc_9F7699: ILdRf var_C8
  loc_9F769C: LitI4 0
  loc_9F76A1: GtI4
  loc_9F76A2: BranchF loc_9F7736
  loc_9F76A5: LitStr "El Insumo ya existe."
  loc_9F76A8: LitStr vbCrLf
  loc_9F76AB: ConcatStr
  loc_9F76AC: CVarStr var_F0
  loc_9F76AF: FLdRfVar var_B0
  loc_9F76B2: FLdRfVar var_E0
  loc_9F76B5: LitVarStr var_DC, "CodiInsu"
  loc_9F76BA: PopAdLdVar
  loc_9F76BB: FLdRfVar var_CC
  loc_9F76BE: FLdPr Me
  loc_9F76C1: MemLdPr global_56
  loc_9F76C4:  = Me.Fields
  loc_9F76C9: FLdPr var_CC
  loc_9F76CC: from_stack_2 = Me.Item(from_stack_1)
  loc_9F76D1: FLdPr var_E0
  loc_9F76D4:  = Me.Value
  loc_9F76D9: FLdRfVar var_B0
  loc_9F76DC: ConcatVar var_100
  loc_9F76E0: LitVarStr var_110, ": "
  loc_9F76E5: ConcatVar var_120
  loc_9F76E9: FLdRfVar var_148
  loc_9F76EC: FLdRfVar var_138
  loc_9F76EF: LitVarStr var_134, "DetaInsu"
  loc_9F76F4: PopAdLdVar
  loc_9F76F5: FLdRfVar var_124
  loc_9F76F8: FLdPr Me
  loc_9F76FB: MemLdPr global_56
  loc_9F76FE:  = Me.Fields
  loc_9F7703: FLdPr var_124
  loc_9F7706: from_stack_2 = Me.Item(from_stack_1)
  loc_9F770B: FLdPr var_138
  loc_9F770E:  = Me.Value
  loc_9F7713: FLdRfVar var_148
  loc_9F7716: ConcatVar var_158
  loc_9F771A: FStVar DetaInsuLostFocus
  loc_9F771E: FFreeAd var_CC = "": var_E0 = "": var_124 = ""
  loc_9F7729: FFreeVar var_F0 = "": var_B0 = "": var_100 = "": var_120 = ""
  loc_9F7736: ExitProcCbHresult
End Function

Public Function ValidaEliminar(iCodiInsu) 'A01250
  'Data Table: 40EBD0
  loc_A01100: ZeroRetVal
  loc_A01102: LitStr "SELECT * FROM insupart WHERE CodiInsu = "
  loc_A01105: FLdI2 iCodiInsu
  loc_A01108: CStrUI1
  loc_A0110A: FStStrNoPop var_8C
  loc_A0110D: ConcatStr
  loc_A0110E: FStStrNoPop var_90
  loc_A01111: Call EjecutarRsCls(from_stack_1v)
  loc_A01116: FFreeStr var_8C = ""
  loc_A0111D: FLdRfVar ValidaEliminar
  loc_A01120: FLdPr Me
  loc_A01123: MemLdPr global_56
  loc_A01126:  = Me.RecordCount
  loc_A0112B: ILdRf ValidaEliminar
  loc_A0112E: LitI4 0
  loc_A01133: GtI4
  loc_A01134: BranchF loc_A01185
  loc_A01137: LitVarStr var_CC, "El Insumo esta Asociado a la Partida: "
  loc_A0113C: FLdRfVar var_BC
  loc_A0113F: FLdRfVar var_AC
  loc_A01142: LitVarStr var_A8, "CodiPart"
  loc_A01147: PopAdLdVar
  loc_A01148: FLdRfVar var_98
  loc_A0114B: FLdPr Me
  loc_A0114E: MemLdPr global_56
  loc_A01151:  = Me.Fields
  loc_A01156: FLdPr var_98
  loc_A01159: from_stack_2 = Me.Item(from_stack_1)
  loc_A0115E: FLdPr var_AC
  loc_A01161:  = Me.Value
  loc_A01166: FLdRfVar var_BC
  loc_A01169: ConcatVar var_DC
  loc_A0116D: CStrVarTmp
  loc_A0116E: FStStr var_88
  loc_A01171: FFreeAd var_98 = ""
  loc_A01178: FFreeVar var_BC = ""
  loc_A0117F: ExitProcCbHresult
  loc_A01185: LitStr "SELECT * FROM itemnota WHERE CodiInsu = "
  loc_A01188: FLdI2 iCodiInsu
  loc_A0118B: CStrUI1
  loc_A0118D: FStStrNoPop var_8C
  loc_A01190: ConcatStr
  loc_A01191: FStStrNoPop var_90
  loc_A01194: Call EjecutarRsCls(from_stack_1v)
  loc_A01199: FFreeStr var_8C = ""
  loc_A011A0: FLdRfVar ValidaEliminar
  loc_A011A3: FLdPr Me
  loc_A011A6: MemLdPr global_56
  loc_A011A9:  = Me.RecordCount
  loc_A011AE: ILdRf ValidaEliminar
  loc_A011B1: LitI4 0
  loc_A011B6: GtI4
  loc_A011B7: BranchF loc_A01208
  loc_A011BA: LitVarStr var_CC, "El Insumo esta incluido en la Nota de Pedido: "
  loc_A011BF: FLdRfVar var_BC
  loc_A011C2: FLdRfVar var_AC
  loc_A011C5: LitVarStr var_A8, "CodiNope"
  loc_A011CA: PopAdLdVar
  loc_A011CB: FLdRfVar var_98
  loc_A011CE: FLdPr Me
  loc_A011D1: MemLdPr global_56
  loc_A011D4:  = Me.Fields
  loc_A011D9: FLdPr var_98
  loc_A011DC: from_stack_2 = Me.Item(from_stack_1)
  loc_A011E1: FLdPr var_AC
  loc_A011E4:  = Me.Value
  loc_A011E9: FLdRfVar var_BC
  loc_A011EC: ConcatVar var_DC
  loc_A011F0: CStrVarTmp
  loc_A011F1: FStStr var_88
  loc_A011F4: FFreeAd var_98 = ""
  loc_A011FB: FFreeVar var_BC = ""
  loc_A01202: ExitProcCbHresult
  loc_A01208: LitStr "SELECT * FROM invepatrimonial WHERE CodiInsu = "
  loc_A0120B: FLdI2 iCodiInsu
  loc_A0120E: CStrUI1
  loc_A01210: FStStrNoPop var_8C
  loc_A01213: ConcatStr
  loc_A01214: FStStrNoPop var_90
  loc_A01217: Call EjecutarRsCls(from_stack_1v)
  loc_A0121C: FFreeStr var_8C = ""
  loc_A01223: FLdRfVar ValidaEliminar
  loc_A01226: FLdPr Me
  loc_A01229: MemLdPr global_56
  loc_A0122C:  = Me.RecordCount
  loc_A01231: ILdRf ValidaEliminar
  loc_A01234: LitI4 0
  loc_A01239: GtI4
  loc_A0123A: BranchF loc_A01249
  loc_A0123D: LitStr "El Insumo esta incluido en un Bien Inventariable. Verifique..."
  loc_A01240: FStStrCopy var_88
  loc_A01243: ExitProcCbHresult
  loc_A01249: ExitProcCbHresult
End Function

Public Function ValidaAnular(iCodiInsu) '992480
  'Data Table: 40EBD0
  loc_992434: ZeroRetVal
  loc_992436: LitStr "SELECT * FROM invepatrimonial WHERE CodiInsu = "
  loc_992439: FLdI2 iCodiInsu
  loc_99243C: CStrUI1
  loc_99243E: FStStrNoPop var_8C
  loc_992441: ConcatStr
  loc_992442: FStStrNoPop var_90
  loc_992445: Call EjecutarRsCls(from_stack_1v)
  loc_99244A: FFreeStr var_8C = ""
  loc_992451: FLdRfVar ValidaAnular
  loc_992454: FLdPr Me
  loc_992457: MemLdPr global_56
  loc_99245A:  = Me.RecordCount
  loc_99245F: ILdRf ValidaAnular
  loc_992462: LitI4 0
  loc_992467: GtI4
  loc_992468: BranchF loc_992477
  loc_99246B: LitStr "El Insumo esta incluido en un Bien Inventariable. Verifique..."
  loc_99246E: FStStrCopy var_88
  loc_992471: ExitProcCbHresult
  loc_992477: ExitProcCbHresult
  loc_99247D: ExitProcR4
  loc_99247E: CI2I4
End Function

Private Function Proc_15_29_97229C() '97229C
  'Data Table: 40EBD0
  loc_972278: LitStr "Primary"
  loc_97227B: FLdPr Me
  loc_97227E: LateIdLdVar var_94 DispID_4 0
  loc_972285: CastAdVar Me
  loc_972289: FStAdFunc var_98
  loc_97228C: FLdPr var_98
  loc_972294: FFree1Ad var_98
  loc_972297: FFree1Var var_94 = ""
  loc_97229A: ExitProcHresult
End Function

Private Function Proc_15_30_9686FC(arg_C) '9686FC
  'Data Table: 40EBD0
  loc_9686E0: ILdI4 arg_C
  loc_9686E3: FStStrCopy var_88
  loc_9686E6: ILdRf var_88
  loc_9686E9: LitStr "Primary"
  loc_9686EC: EqStr
  loc_9686EE: BranchF loc_9686FB
  loc_9686F1: FLdPr Me
  loc_9686F4: MemLdStr RsFrm
  loc_9686F7: IStAd
  loc_9686FB: ExitProcHresult
End Function
