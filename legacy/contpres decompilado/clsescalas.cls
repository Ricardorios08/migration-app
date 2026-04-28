VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsescalas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40D1C8
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40D1D7
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40D1E6
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96F2B4
  'Data Table: 40CFBC
  loc_96F28C: FLdRfVar var_88
  loc_96F28F: FLdPr Me
  loc_96F292: MemLdPr RsFrm
  loc_96F295:  = Me.RecordCount
  loc_96F29A: ILdRf var_88
  loc_96F29D: LitI4 0
  loc_96F2A2: GtI4
  loc_96F2A3: BranchF loc_96F2B1
  loc_96F2A6: FLdPr Me
  loc_96F2A9: MemLdPr RsFrm
  loc_96F2AC: Me.MoveFirst
  loc_96F2B1: ExitProcHresult
  loc_96F2B2: Ary1LdPr
End Sub

Public Sub MoveLast() '96F414
  'Data Table: 40CFBC
  loc_96F3EC: FLdRfVar var_88
  loc_96F3EF: FLdPr Me
  loc_96F3F2: MemLdPr RsFrm
  loc_96F3F5:  = Me.RecordCount
  loc_96F3FA: ILdRf var_88
  loc_96F3FD: LitI4 0
  loc_96F402: GtI4
  loc_96F403: BranchF loc_96F411
  loc_96F406: FLdPr Me
  loc_96F409: MemLdPr RsFrm
  loc_96F40C: Me.MoveLast
  loc_96F411: ExitProcHresult
End Sub

Public Sub MoveNext() '99EF90
  'Data Table: 40CFBC
  loc_99EF18: FLdRfVar var_86
  loc_99EF1B: FLdPr Me
  loc_99EF1E: MemLdPr RsFrm
  loc_99EF21:  = Me.EOF
  loc_99EF26: FLdI2 var_86
  loc_99EF29: NotI4
  loc_99EF2A: FLdRfVar var_8C
  loc_99EF2D: FLdPr Me
  loc_99EF30: MemLdPr RsFrm
  loc_99EF33:  = Me.RecordCount
  loc_99EF38: ILdRf var_8C
  loc_99EF3B: LitI4 0
  loc_99EF40: GtI4
  loc_99EF41: AndI4
  loc_99EF42: BranchF loc_99EF50
  loc_99EF45: FLdPr Me
  loc_99EF48: MemLdPr RsFrm
  loc_99EF4B: Me.MoveNext
  loc_99EF50: FLdRfVar var_86
  loc_99EF53: FLdPr Me
  loc_99EF56: MemLdPr RsFrm
  loc_99EF59:  = Me.EOF
  loc_99EF5E: FLdI2 var_86
  loc_99EF61: FLdRfVar var_8C
  loc_99EF64: FLdPr Me
  loc_99EF67: MemLdPr RsFrm
  loc_99EF6A:  = Me.RecordCount
  loc_99EF6F: ILdRf var_8C
  loc_99EF72: LitI4 0
  loc_99EF77: GtI4
  loc_99EF78: AndI4
  loc_99EF79: BranchF loc_99EF8C
  loc_99EF7C: ImpAdCallFPR4 Beep()
  loc_99EF81: FLdPr Me
  loc_99EF84: MemLdPr RsFrm
  loc_99EF87: Me.MoveLast
  loc_99EF8C: ExitProcHresult
  loc_99EF8D: VCallFPR8 0
End Sub

Public Sub MoveSiguiente() '940E50
  'Data Table: 40CFBC
  loc_940E44: FLdPr Me
  loc_940E47: MemLdPr RsFrm
  loc_940E4A: Me.MoveNext
  loc_940E4F: ExitProcHresult
End Sub

Public Sub Move(iValor) '948528
  'Data Table: 40CFBC
  loc_948514: LitVar_Missing var_94
  loc_948517: PopAdLdVar
  loc_948518: ILdI2 iValor
  loc_94851B: CI4UI1
  loc_94851C: FLdPr Me
  loc_94851F: MemLdPr RsFrm
  loc_948522: Me.Move from_stack_1, from_stack_2
  loc_948527: ExitProcHresult
End Sub

Public Sub MovePrevious() '99EC48
  'Data Table: 40CFBC
  loc_99EBD0: FLdRfVar var_86
  loc_99EBD3: FLdPr Me
  loc_99EBD6: MemLdPr RsFrm
  loc_99EBD9:  = Me.BOF
  loc_99EBDE: FLdI2 var_86
  loc_99EBE1: NotI4
  loc_99EBE2: FLdRfVar var_8C
  loc_99EBE5: FLdPr Me
  loc_99EBE8: MemLdPr RsFrm
  loc_99EBEB:  = Me.RecordCount
  loc_99EBF0: ILdRf var_8C
  loc_99EBF3: LitI4 0
  loc_99EBF8: GtI4
  loc_99EBF9: AndI4
  loc_99EBFA: BranchF loc_99EC08
  loc_99EBFD: FLdPr Me
  loc_99EC00: MemLdPr RsFrm
  loc_99EC03: Me.MovePrevious
  loc_99EC08: FLdRfVar var_86
  loc_99EC0B: FLdPr Me
  loc_99EC0E: MemLdPr RsFrm
  loc_99EC11:  = Me.BOF
  loc_99EC16: FLdI2 var_86
  loc_99EC19: FLdRfVar var_8C
  loc_99EC1C: FLdPr Me
  loc_99EC1F: MemLdPr RsFrm
  loc_99EC22:  = Me.RecordCount
  loc_99EC27: ILdRf var_8C
  loc_99EC2A: LitI4 0
  loc_99EC2F: GtI4
  loc_99EC30: AndI4
  loc_99EC31: BranchF loc_99EC44
  loc_99EC34: ImpAdCallFPR4 Beep()
  loc_99EC39: FLdPr Me
  loc_99EC3C: MemLdPr RsFrm
  loc_99EC3F: Me.MoveFirst
  loc_99EC44: ExitProcHresult
End Sub

Public Property Get EOF() '960BC4
  'Data Table: 40CFBC
  loc_960BA8: FLdRfVar var_88
  loc_960BAB: FLdPr Me
  loc_960BAE: MemLdPr RsFrm
  loc_960BB1:  = Me.EOF
  loc_960BB6: FLdI2 var_88
  loc_960BB9: FStI2 var_86
  loc_960BBC: ExitProcCbHresult
End Sub

Public Property Get BOF() '960B2C
  'Data Table: 40CFBC
  loc_960B10: FLdRfVar var_88
  loc_960B13: FLdPr Me
  loc_960B16: MemLdPr RsFrm
  loc_960B19:  = Me.BOF
  loc_960B1E: FLdI2 var_88
  loc_960B21: FStI2 var_86
  loc_960B24: ExitProcCbHresult
  loc_960B2A: ImpAdLdRf MemVar_C3D064
End Sub

Public Sub Sort(sOrden) '945B04
  'Data Table: 40CFBC
  loc_945AF4: ILdI4 sOrden
  loc_945AF7: FLdPr Me
  loc_945AFA: MemLdPr RsFrm
  loc_945AFD: Me.Sort = from_stack_1
  loc_945B02: ExitProcHresult
End Sub

Public Sub Find(sFind) '968160
  'Data Table: 40CFBC
  loc_968140: LitVar_Missing var_94
  loc_968143: PopAdLdVar
  loc_968144: LitI4 1
  loc_968149: LitI4 0
  loc_96814E: ILdI4 sFind
  loc_968151: FLdPr Me
  loc_968154: MemLdPr RsFrm
  loc_968157: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96815C: ExitProcHresult
  loc_96815D: ImpAdLdI2 MemVar_42AAB8
End Sub

Public Sub Filter(sCriterio) '949160
  'Data Table: 40CFBC
  loc_94914C: ILdI4 sCriterio
  loc_94914F: CVarStr var_94
  loc_949152: PopAdLdVar
  loc_949153: FLdPr Me
  loc_949156: MemLdPr RsFrm
  loc_949159: Me.Filter = from_stack_1
  loc_94915E: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '960964
  'Data Table: 40CFBC
  loc_960948: FLdRfVar var_8C
  loc_96094B: FLdPr Me
  loc_96094E: MemLdPr RsFrm
  loc_960951:  = Me.AbsolutePosition
  loc_960956: ILdRf var_8C
  loc_960959: FStR4 var_88
  loc_96095C: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9608CC
  'Data Table: 40CFBC
  loc_9608B0: FLdRfVar var_8C
  loc_9608B3: FLdPr Me
  loc_9608B6: MemLdPr RsFrm
  loc_9608B9:  = Me.RecordCount
  loc_9608BE: ILdRf var_8C
  loc_9608C1: FStR4 var_88
  loc_9608C4: ExitProcCbHresult
End Sub

Public Sub Encontrar(PeriInfo, FechEsca, CodiRete, CodiDere, CodiEsca) '9C0B04
  'Data Table: 40CFBC
  loc_9C0A40: ILdRf FechEsca
  loc_9C0A43: FStStrCopy var_88
  loc_9C0A46: Call Requery()
  loc_9C0A4B: LitStr "PeriInfo = '"
  loc_9C0A4E: FLdI2 PeriInfo
  loc_9C0A51: CStrUI1
  loc_9C0A53: FStStrNoPop var_8C
  loc_9C0A56: ConcatStr
  loc_9C0A57: FStStrNoPop var_90
  loc_9C0A5A: LitStr "'"
  loc_9C0A5D: ConcatStr
  loc_9C0A5E: PopTmpLdAdStr
  loc_9C0A62: Call Find(from_stack_1v)
  loc_9C0A67: FFreeStr var_8C = "": var_90 = ""
  loc_9C0A70: LitStr "FechEsca = '"
  loc_9C0A73: ILdRf var_88
  loc_9C0A76: ConcatStr
  loc_9C0A77: FStStrNoPop var_8C
  loc_9C0A7A: LitStr "'"
  loc_9C0A7D: ConcatStr
  loc_9C0A7E: PopTmpLdAdStr
  loc_9C0A82: Call Find(from_stack_1v)
  loc_9C0A87: FFreeStr var_8C = ""
  loc_9C0A8E: LitStr "CodiRete = '"
  loc_9C0A91: FLdUI1
  loc_9C0A95: CStrI2
  loc_9C0A97: FStStrNoPop var_8C
  loc_9C0A9A: ConcatStr
  loc_9C0A9B: FStStrNoPop var_90
  loc_9C0A9E: LitStr "'"
  loc_9C0AA1: ConcatStr
  loc_9C0AA2: PopTmpLdAdStr
  loc_9C0AA6: Call Find(from_stack_1v)
  loc_9C0AAB: FFreeStr var_8C = "": var_90 = ""
  loc_9C0AB4: LitStr "CodiDere = '"
  loc_9C0AB7: FLdUI1
  loc_9C0ABB: CStrI2
  loc_9C0ABD: FStStrNoPop var_8C
  loc_9C0AC0: ConcatStr
  loc_9C0AC1: FStStrNoPop var_90
  loc_9C0AC4: LitStr "'"
  loc_9C0AC7: ConcatStr
  loc_9C0AC8: PopTmpLdAdStr
  loc_9C0ACC: Call Find(from_stack_1v)
  loc_9C0AD1: FFreeStr var_8C = "": var_90 = ""
  loc_9C0ADA: LitStr "CodiEsca = '"
  loc_9C0ADD: FLdUI1
  loc_9C0AE1: CStrI2
  loc_9C0AE3: FStStrNoPop var_8C
  loc_9C0AE6: ConcatStr
  loc_9C0AE7: FStStrNoPop var_90
  loc_9C0AEA: LitStr "'"
  loc_9C0AED: ConcatStr
  loc_9C0AEE: PopTmpLdAdStr
  loc_9C0AF2: Call Find(from_stack_1v)
  loc_9C0AF7: FFreeStr var_8C = "": var_90 = ""
  loc_9C0B00: ExitProcHresult
End Sub

Public Function AddNew(PeriInfo, FechEsca, CodiRete, CodiDere, MiniEsca, MaxiEsca, ImfiEsca, AlicEsca, ImnoEsca, RemiEsca, BaseEsca, PefiEsca, PerfEsca) 'A76204
  'Data Table: 40CFBC
  loc_A75EF8: ILdRf FechEsca
  loc_A75EFB: FStStrCopy var_8C
  loc_A75EFE: LitStr "START TRANSACTION;"
  loc_A75F01: Call EjecutarRsCls(from_stack_1v)
  loc_A75F06: OnErrorGoto loc_A761F4
  loc_A75F09: LitStr "SELECT IFNULL(Max(CodiEsca),0) + 1 AS CodiEsca"
  loc_A75F0C: LitStr " FROM escalas"
  loc_A75F0F: ConcatStr
  loc_A75F10: FStStrNoPop AddNew
  loc_A75F13: LitStr " WHERE PeriInfo = "
  loc_A75F16: ConcatStr
  loc_A75F17: FStStrNoPop var_98
  loc_A75F1A: FLdI2 PeriInfo
  loc_A75F1D: CStrUI1
  loc_A75F1F: FStStrNoPop var_9C
  loc_A75F22: ConcatStr
  loc_A75F23: FStStrNoPop var_A0
  loc_A75F26: LitStr " AND FechEsca = "
  loc_A75F29: ConcatStr
  loc_A75F2A: FStStrNoPop var_D4
  loc_A75F2D: LitI4 1
  loc_A75F32: LitI4 1
  loc_A75F37: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_A75F3C: FStVarCopyObj var_D0
  loc_A75F3F: FLdRfVar var_D0
  loc_A75F42: FLdRfVar var_8C
  loc_A75F45: CVarRef
  loc_A75F4A: ImpAdCallI2 Format$(, )
  loc_A75F4F: FStStrNoPop var_D8
  loc_A75F52: ConcatStr
  loc_A75F53: FStStrNoPop var_DC
  loc_A75F56: LitStr " AND CodiRete = "
  loc_A75F59: ConcatStr
  loc_A75F5A: FStStrNoPop var_E0
  loc_A75F5D: FLdUI1
  loc_A75F61: CStrI2
  loc_A75F63: FStStrNoPop var_E4
  loc_A75F66: ConcatStr
  loc_A75F67: FStStrNoPop var_E8
  loc_A75F6A: LitStr " AND CodiDere = "
  loc_A75F6D: ConcatStr
  loc_A75F6E: FStStrNoPop var_EC
  loc_A75F71: FLdUI1
  loc_A75F75: CStrI2
  loc_A75F77: FStStrNoPop var_F0
  loc_A75F7A: ConcatStr
  loc_A75F7B: FStStrNoPop var_F4
  loc_A75F7E: Call EjecutarRsCls(from_stack_1v)
  loc_A75F83: FFreeStr AddNew = "": var_98 = "": var_9C = "": var_A0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_A75FA0: FFree1Var var_D0 = ""
  loc_A75FA3: FLdRfVar var_D0
  loc_A75FA6: FLdRfVar var_FC
  loc_A75FA9: LitVarStr var_B0, "CodiEsca"
  loc_A75FAE: PopAdLdVar
  loc_A75FAF: FLdRfVar var_F8
  loc_A75FB2: FLdPr Me
  loc_A75FB5: MemLdPr global_56
  loc_A75FB8:  = Me.Fields
  loc_A75FBD: FLdPr var_F8
  loc_A75FC0: from_stack_2 = Me.Item(from_stack_1)
  loc_A75FC5: FLdPr var_FC
  loc_A75FC8:  = Me.Value
  loc_A75FCD: FLdRfVar var_D0
  loc_A75FD0: CUI1Var
  loc_A75FD2: FStUI1 var_8E
  loc_A75FD6: FFreeAd var_F8 = ""
  loc_A75FDD: FFree1Var var_D0 = ""
  loc_A75FE0: LitStr "REPLACE INTO escalas (PeriInfo,FechEsca,CodiRete,CodiDere,CodiEsca,MiniEsca,MaxiEsca,ImfiEsca,AlicEsca,ImnoEsca,RemiEsca,BaseEsca,PefiEsca,PerfEsca)"
  loc_A75FE3: LitStr " VALUES ("
  loc_A75FE6: ConcatStr
  loc_A75FE7: FStStrNoPop AddNew
  loc_A75FEA: FLdI2 PeriInfo
  loc_A75FED: CStrUI1
  loc_A75FEF: FStStrNoPop var_98
  loc_A75FF2: ConcatStr
  loc_A75FF3: FStStrNoPop var_9C
  loc_A75FF6: LitStr ","
  loc_A75FF9: ConcatStr
  loc_A75FFA: FStStrNoPop var_A0
  loc_A75FFD: LitI4 1
  loc_A76002: LitI4 1
  loc_A76007: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_A7600C: FStVarCopyObj var_D0
  loc_A7600F: FLdRfVar var_D0
  loc_A76012: FLdRfVar var_8C
  loc_A76015: CVarRef
  loc_A7601A: ImpAdCallI2 Format$(, )
  loc_A7601F: FStStrNoPop var_D4
  loc_A76022: ConcatStr
  loc_A76023: FStStrNoPop var_D8
  loc_A76026: LitStr ","
  loc_A76029: ConcatStr
  loc_A7602A: FStStrNoPop var_DC
  loc_A7602D: FLdUI1
  loc_A76031: CStrI2
  loc_A76033: FStStrNoPop var_E0
  loc_A76036: ConcatStr
  loc_A76037: FStStrNoPop var_E4
  loc_A7603A: LitStr ","
  loc_A7603D: ConcatStr
  loc_A7603E: FStStrNoPop var_E8
  loc_A76041: FLdUI1
  loc_A76045: CStrI2
  loc_A76047: FStStrNoPop var_EC
  loc_A7604A: ConcatStr
  loc_A7604B: FStStrNoPop var_F0
  loc_A7604E: LitStr ","
  loc_A76051: ConcatStr
  loc_A76052: FStStrNoPop var_F4
  loc_A76055: FLdUI1
  loc_A76059: CStrI2
  loc_A7605B: FStStrNoPop var_100
  loc_A7605E: ConcatStr
  loc_A7605F: FStStrNoPop var_104
  loc_A76062: LitStr ","
  loc_A76065: ConcatStr
  loc_A76066: FStStrNoPop var_10C
  loc_A76069: FLdFPR8 MiniEsca
  loc_A7606C: CStrR8
  loc_A7606E: FStStrNoPop var_108
  loc_A76071: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A76076: FStStrNoPop var_110
  loc_A76079: ConcatStr
  loc_A7607A: FStStrNoPop var_114
  loc_A7607D: LitStr ","
  loc_A76080: ConcatStr
  loc_A76081: FStStrNoPop var_11C
  loc_A76084: FLdFPR8 ImfiEsca
  loc_A76087: CStrR8
  loc_A76089: FStStrNoPop var_118
  loc_A7608C: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A76091: FStStrNoPop var_120
  loc_A76094: ConcatStr
  loc_A76095: FStStrNoPop var_124
  loc_A76098: LitStr ","
  loc_A7609B: ConcatStr
  loc_A7609C: FStStrNoPop var_12C
  loc_A7609F: FLdFPR8 ImnoEsca
  loc_A760A2: CStrR8
  loc_A760A4: FStStrNoPop var_128
  loc_A760A7: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A760AC: FStStrNoPop var_130
  loc_A760AF: ConcatStr
  loc_A760B0: FStStrNoPop var_134
  loc_A760B3: LitStr ","
  loc_A760B6: ConcatStr
  loc_A760B7: FStStrNoPop var_13C
  loc_A760BA: FLdFPR8 BaseEsca
  loc_A760BD: CStrR8
  loc_A760BF: FStStrNoPop var_138
  loc_A760C2: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A760C7: FStStrNoPop var_140
  loc_A760CA: ConcatStr
  loc_A760CB: FStStrNoPop var_144
  loc_A760CE: LitStr ","
  loc_A760D1: ConcatStr
  loc_A760D2: FStStrNoPop var_14C
  loc_A760D5: FLdFPR8 PerfEsca
  loc_A760D8: CStrR8
  loc_A760DA: FStStrNoPop var_148
  loc_A760DD: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A760E2: FStStrNoPop var_150
  loc_A760E5: ConcatStr
  loc_A760E6: FStStrNoPop var_154
  loc_A760E9: LitStr ","
  loc_A760EC: ConcatStr
  loc_A760ED: FStStrNoPop var_15C
  loc_A760F0: FLdFPR8 AddNew4
  loc_A760F3: CStrR8
  loc_A760F5: FStStrNoPop var_158
  loc_A760F8: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A760FD: FStStrNoPop var_160
  loc_A76100: ConcatStr
  loc_A76101: FStStrNoPop var_164
  loc_A76104: LitStr ","
  loc_A76107: ConcatStr
  loc_A76108: FStStrNoPop var_16C
  loc_A7610B: FLdFPR8 AddNewC
  loc_A7610E: CStrR8
  loc_A76110: FStStrNoPop var_168
  loc_A76113: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A76118: FStStrNoPop var_170
  loc_A7611B: ConcatStr
  loc_A7611C: FStStrNoPop var_174
  loc_A7611F: LitStr ",'"
  loc_A76122: ConcatStr
  loc_A76123: FStStrNoPop var_17C
  loc_A76126: FLdFPR8 arg_54
  loc_A76129: CStrR8
  loc_A7612B: FStStrNoPop var_178
  loc_A7612E: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A76133: FStStrNoPop var_180
  loc_A76136: ConcatStr
  loc_A76137: FStStrNoPop var_184
  loc_A7613A: LitStr "','"
  loc_A7613D: ConcatStr
  loc_A7613E: FStStrNoPop var_18C
  loc_A76141: FLdFPR8 arg_5C
  loc_A76144: CStrR8
  loc_A76146: FStStrNoPop var_188
  loc_A76149: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A7614E: FStStrNoPop var_190
  loc_A76151: ConcatStr
  loc_A76152: FStStrNoPop var_194
  loc_A76155: LitStr "')"
  loc_A76158: ConcatStr
  loc_A76159: FStStrNoPop var_198
  loc_A7615C: Call EjecutarRsCls(from_stack_1v)
  loc_A76161: FFreeStr var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": AddNew = "": var_98 = "": var_9C = "": var_A0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_A761CC: FFree1Var var_D0 = ""
  loc_A761CF: LitStr "COMMIT;"
  loc_A761D2: Call EjecutarRsCls(from_stack_1v)
  loc_A761D7: FLdUI1
  loc_A761DB: FLdUI1
  loc_A761DF: FLdUI1
  loc_A761E3: ILdRf var_8C
  loc_A761E6: FLdI2 PeriInfo
  loc_A761E9: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_A761EE: ExitProcCbHresult
  loc_A761F4: LitStr "ROLLBACK;"
  loc_A761F7: Call EjecutarRsCls(from_stack_1v)
  loc_A761FC: ExitProcCbHresult
End Function

Public Sub Modificar(MiniEsca, MaxiEsca, ImfiEsca, AlicEsca, ImnoEsca, RemiEsca, BaseEsca, PefiEsca, PerfEsca) 'A9AC58
  'Data Table: 40CFBC
  loc_A9A880: FLdRfVar var_194
  loc_A9A883: LitVarStr var_190, "FechEsca"
  loc_A9A888: PopAdLdVar
  loc_A9A889: FLdRfVar var_180
  loc_A9A88C: FLdPr Me
  loc_A9A88F: MemLdPr RsFrm
  loc_A9A892:  = Me.Fields
  loc_A9A897: FLdPr var_180
  loc_A9A89A: from_stack_2 = Me.Item(from_stack_1)
  loc_A9A89F: LitStr "UPDATE escalas"
  loc_A9A8A2: LitStr " SET MiniEsca="
  loc_A9A8A5: ConcatStr
  loc_A9A8A6: FStStrNoPop var_8C
  loc_A9A8A9: FLdFPR8 MiniEsca
  loc_A9A8AC: CStrR8
  loc_A9A8AE: FStStrNoPop var_88
  loc_A9A8B1: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A9A8B6: FStStrNoPop var_90
  loc_A9A8B9: ConcatStr
  loc_A9A8BA: FStStrNoPop var_94
  loc_A9A8BD: LitStr ",MaxiEsca="
  loc_A9A8C0: ConcatStr
  loc_A9A8C1: FStStrNoPop var_9C
  loc_A9A8C4: FLdFPR8 ImfiEsca
  loc_A9A8C7: CStrR8
  loc_A9A8C9: FStStrNoPop var_98
  loc_A9A8CC: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A9A8D1: FStStrNoPop var_A0
  loc_A9A8D4: ConcatStr
  loc_A9A8D5: FStStrNoPop var_A4
  loc_A9A8D8: LitStr ",ImfiEsca="
  loc_A9A8DB: ConcatStr
  loc_A9A8DC: FStStrNoPop var_AC
  loc_A9A8DF: FLdFPR8 ImnoEsca
  loc_A9A8E2: CStrR8
  loc_A9A8E4: FStStrNoPop var_A8
  loc_A9A8E7: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A9A8EC: FStStrNoPop var_B0
  loc_A9A8EF: ConcatStr
  loc_A9A8F0: FStStrNoPop var_B4
  loc_A9A8F3: LitStr ",AlicEsca="
  loc_A9A8F6: ConcatStr
  loc_A9A8F7: FStStrNoPop var_BC
  loc_A9A8FA: FLdFPR8 BaseEsca
  loc_A9A8FD: CStrR8
  loc_A9A8FF: FStStrNoPop var_B8
  loc_A9A902: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A9A907: FStStrNoPop var_C0
  loc_A9A90A: ConcatStr
  loc_A9A90B: FStStrNoPop var_C4
  loc_A9A90E: LitStr ",ImnoEsca="
  loc_A9A911: ConcatStr
  loc_A9A912: FStStrNoPop var_CC
  loc_A9A915: FLdFPR8 PerfEsca
  loc_A9A918: CStrR8
  loc_A9A91A: FStStrNoPop var_C8
  loc_A9A91D: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A9A922: FStStrNoPop var_D0
  loc_A9A925: ConcatStr
  loc_A9A926: FStStrNoPop var_D4
  loc_A9A929: LitStr ",RemiEsca="
  loc_A9A92C: ConcatStr
  loc_A9A92D: FStStrNoPop var_DC
  loc_A9A930: FLdFPR8 arg_34
  loc_A9A933: CStrR8
  loc_A9A935: FStStrNoPop var_D8
  loc_A9A938: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A9A93D: FStStrNoPop var_E0
  loc_A9A940: ConcatStr
  loc_A9A941: FStStrNoPop var_E4
  loc_A9A944: LitStr ",BaseEsca="
  loc_A9A947: ConcatStr
  loc_A9A948: FStStrNoPop var_EC
  loc_A9A94B: FLdFPR8 arg_3C
  loc_A9A94E: CStrR8
  loc_A9A950: FStStrNoPop var_E8
  loc_A9A953: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A9A958: FStStrNoPop var_F0
  loc_A9A95B: ConcatStr
  loc_A9A95C: FStStrNoPop var_F4
  loc_A9A95F: LitStr ",PefiEsca="
  loc_A9A962: ConcatStr
  loc_A9A963: FStStrNoPop var_FC
  loc_A9A966: FLdFPR8 Modificar4
  loc_A9A969: CStrR8
  loc_A9A96B: FStStrNoPop var_F8
  loc_A9A96E: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A9A973: FStStrNoPop var_100
  loc_A9A976: ConcatStr
  loc_A9A977: FStStrNoPop var_104
  loc_A9A97A: LitStr ",PerfEsca="
  loc_A9A97D: ConcatStr
  loc_A9A97E: FStStrNoPop var_10C
  loc_A9A981: FLdFPR8 ModificarC
  loc_A9A984: CStrR8
  loc_A9A986: FStStrNoPop var_108
  loc_A9A989: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A9A98E: FStStrNoPop var_110
  loc_A9A991: ConcatStr
  loc_A9A992: FStStrNoPop var_114
  loc_A9A995: LitStr " WHERE PeriInfo="
  loc_A9A998: ConcatStr
  loc_A9A999: CVarStr var_14C
  loc_A9A99C: FLdRfVar var_13C
  loc_A9A99F: FLdRfVar var_12C
  loc_A9A9A2: LitVarStr var_128, "PeriInfo"
  loc_A9A9A7: PopAdLdVar
  loc_A9A9A8: FLdRfVar var_118
  loc_A9A9AB: FLdPr Me
  loc_A9A9AE: MemLdPr RsFrm
  loc_A9A9B1:  = Me.Fields
  loc_A9A9B6: FLdPr var_118
  loc_A9A9B9: from_stack_2 = Me.Item(from_stack_1)
  loc_A9A9BE: FLdPr var_12C
  loc_A9A9C1:  = Me.Value
  loc_A9A9C6: FLdRfVar var_13C
  loc_A9A9C9: ConcatVar var_15C
  loc_A9A9CD: LitVarStr var_16C, " AND FechEsca = "
  loc_A9A9D2: ConcatVar var_17C
  loc_A9A9D6: LitI4 1
  loc_A9A9DB: LitI4 1
  loc_A9A9E0: LitVarStr var_1B4, "'yyyy-mm-dd'"
  loc_A9A9E5: FStVarCopyObj var_1C4
  loc_A9A9E8: FLdRfVar var_1C4
  loc_A9A9EB: FLdZeroAd var_194
  loc_A9A9EE: CVarAd
  loc_A9A9F2: ImpAdCallI2 Format$(, )
  loc_A9A9F7: CVarStr var_1D4
  loc_A9A9FA: ConcatVar var_1E4
  loc_A9A9FE: LitVarStr var_1F4, " AND CodiRete="
  loc_A9AA03: ConcatVar var_204
  loc_A9AA07: FLdRfVar var_22C
  loc_A9AA0A: FLdRfVar var_21C
  loc_A9AA0D: LitVarStr var_218, "CodiRete"
  loc_A9AA12: PopAdLdVar
  loc_A9AA13: FLdRfVar var_208
  loc_A9AA16: FLdPr Me
  loc_A9AA19: MemLdPr RsFrm
  loc_A9AA1C:  = Me.Fields
  loc_A9AA21: FLdPr var_208
  loc_A9AA24: from_stack_2 = Me.Item(from_stack_1)
  loc_A9AA29: FLdPr var_21C
  loc_A9AA2C:  = Me.Value
  loc_A9AA31: FLdRfVar var_22C
  loc_A9AA34: ConcatVar var_23C
  loc_A9AA38: LitVarStr var_24C, " AND CodiDere="
  loc_A9AA3D: ConcatVar var_25C
  loc_A9AA41: FLdRfVar var_284
  loc_A9AA44: FLdRfVar var_274
  loc_A9AA47: LitVarStr var_270, "CodiDere"
  loc_A9AA4C: PopAdLdVar
  loc_A9AA4D: FLdRfVar var_260
  loc_A9AA50: FLdPr Me
  loc_A9AA53: MemLdPr RsFrm
  loc_A9AA56:  = Me.Fields
  loc_A9AA5B: FLdPr var_260
  loc_A9AA5E: from_stack_2 = Me.Item(from_stack_1)
  loc_A9AA63: FLdPr var_274
  loc_A9AA66:  = Me.Value
  loc_A9AA6B: FLdRfVar var_284
  loc_A9AA6E: ConcatVar var_294
  loc_A9AA72: LitVarStr var_2A4, " AND CodiEsca="
  loc_A9AA77: ConcatVar var_2B4
  loc_A9AA7B: FLdRfVar var_2DC
  loc_A9AA7E: FLdRfVar var_2CC
  loc_A9AA81: LitVarStr var_2C8, "CodiEsca"
  loc_A9AA86: PopAdLdVar
  loc_A9AA87: FLdRfVar var_2B8
  loc_A9AA8A: FLdPr Me
  loc_A9AA8D: MemLdPr RsFrm
  loc_A9AA90:  = Me.Fields
  loc_A9AA95: FLdPr var_2B8
  loc_A9AA98: from_stack_2 = Me.Item(from_stack_1)
  loc_A9AA9D: FLdPr var_2CC
  loc_A9AAA0:  = Me.Value
  loc_A9AAA5: FLdRfVar var_2DC
  loc_A9AAA8: ConcatVar var_2EC
  loc_A9AAAC: CStrVarVal var_2F0
  loc_A9AAB0: Call EjecutarRsCls(from_stack_1v)
  loc_A9AAB5: FFreeStr var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_2F0 = "": var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_A9AB02: FFreeAd var_118 = "": var_12C = "": var_180 = "": var_208 = "": var_21C = "": var_260 = "": var_274 = "": var_2B8 = ""
  loc_A9AB17: FFreeVar var_14C = "": var_13C = "": var_15C = "": var_1A4 = "": var_1C4 = "": var_17C = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_22C = "": var_23C = "": var_25C = "": var_284 = "": var_294 = "": var_2B4 = "": var_2DC = ""
  loc_A9AB3C: FLdRfVar var_13C
  loc_A9AB3F: FLdRfVar var_12C
  loc_A9AB42: LitVarStr var_128, "PeriInfo"
  loc_A9AB47: PopAdLdVar
  loc_A9AB48: FLdRfVar var_118
  loc_A9AB4B: FLdPr Me
  loc_A9AB4E: MemLdPr RsFrm
  loc_A9AB51:  = Me.Fields
  loc_A9AB56: FLdPr var_118
  loc_A9AB59: from_stack_2 = Me.Item(from_stack_1)
  loc_A9AB5E: FLdPr var_12C
  loc_A9AB61:  = Me.Value
  loc_A9AB66: FLdRfVar var_14C
  loc_A9AB69: FLdRfVar var_194
  loc_A9AB6C: LitVarStr var_16C, "FechEsca"
  loc_A9AB71: PopAdLdVar
  loc_A9AB72: FLdRfVar var_180
  loc_A9AB75: FLdPr Me
  loc_A9AB78: MemLdPr RsFrm
  loc_A9AB7B:  = Me.Fields
  loc_A9AB80: FLdPr var_180
  loc_A9AB83: from_stack_2 = Me.Item(from_stack_1)
  loc_A9AB88: FLdPr var_194
  loc_A9AB8B:  = Me.Value
  loc_A9AB90: FLdRfVar var_15C
  loc_A9AB93: FLdRfVar var_21C
  loc_A9AB96: LitVarStr var_190, "CodiRete"
  loc_A9AB9B: PopAdLdVar
  loc_A9AB9C: FLdRfVar var_208
  loc_A9AB9F: FLdPr Me
  loc_A9ABA2: MemLdPr RsFrm
  loc_A9ABA5:  = Me.Fields
  loc_A9ABAA: FLdPr var_208
  loc_A9ABAD: from_stack_2 = Me.Item(from_stack_1)
  loc_A9ABB2: FLdPr var_21C
  loc_A9ABB5:  = Me.Value
  loc_A9ABBA: FLdRfVar var_17C
  loc_A9ABBD: FLdRfVar var_274
  loc_A9ABC0: LitVarStr var_1B4, "CodiDere"
  loc_A9ABC5: PopAdLdVar
  loc_A9ABC6: FLdRfVar var_260
  loc_A9ABC9: FLdPr Me
  loc_A9ABCC: MemLdPr RsFrm
  loc_A9ABCF:  = Me.Fields
  loc_A9ABD4: FLdPr var_260
  loc_A9ABD7: from_stack_2 = Me.Item(from_stack_1)
  loc_A9ABDC: FLdPr var_274
  loc_A9ABDF:  = Me.Value
  loc_A9ABE4: FLdRfVar var_1A4
  loc_A9ABE7: FLdRfVar var_2CC
  loc_A9ABEA: LitVarStr var_1F4, "CodiEsca"
  loc_A9ABEF: PopAdLdVar
  loc_A9ABF0: FLdRfVar var_2B8
  loc_A9ABF3: FLdPr Me
  loc_A9ABF6: MemLdPr RsFrm
  loc_A9ABF9:  = Me.Fields
  loc_A9ABFE: FLdPr var_2B8
  loc_A9AC01: from_stack_2 = Me.Item(from_stack_1)
  loc_A9AC06: FLdPr var_2CC
  loc_A9AC09:  = Me.Value
  loc_A9AC0E: FLdRfVar var_1A4
  loc_A9AC11: CUI1Var
  loc_A9AC13: FLdRfVar var_17C
  loc_A9AC16: CUI1Var
  loc_A9AC18: FLdRfVar var_15C
  loc_A9AC1B: CUI1Var
  loc_A9AC1D: FLdRfVar var_14C
  loc_A9AC20: CStrVarTmp
  loc_A9AC21: FStStrNoPop var_88
  loc_A9AC24: FLdRfVar var_13C
  loc_A9AC27: CI2Var
  loc_A9AC28: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_A9AC2D: FFree1Str var_88
  loc_A9AC30: FFreeAd var_118 = "": var_180 = "": var_208 = "": var_260 = "": var_2B8 = "": var_12C = "": var_194 = "": var_21C = "": var_274 = ""
  loc_A9AC47: FFreeVar var_13C = "": var_14C = "": var_15C = "": var_17C = ""
  loc_A9AC54: ExitProcHresult
  loc_A9AC55: CR8I4
  loc_A9AC56: LeCy
  loc_A9AC57: CI4Cy
End Sub

Public Sub EliminarEscala(PeriInfo, FechEsca, CodiRete, CodiDere, CodiEsca) '9DF9BC
  'Data Table: 40CFBC
  loc_9DF8E8: ILdRf FechEsca
  loc_9DF8EB: FStStrCopy var_88
  loc_9DF8EE: LitStr "DELETE "
  loc_9DF8F1: LitStr " FROM escalas"
  loc_9DF8F4: ConcatStr
  loc_9DF8F5: FStStrNoPop var_8C
  loc_9DF8F8: LitStr " WHERE PeriInfo = "
  loc_9DF8FB: ConcatStr
  loc_9DF8FC: FStStrNoPop var_90
  loc_9DF8FF: FLdI2 PeriInfo
  loc_9DF902: CStrUI1
  loc_9DF904: FStStrNoPop var_94
  loc_9DF907: ConcatStr
  loc_9DF908: FStStrNoPop var_98
  loc_9DF90B: LitStr " AND FechEsca = "
  loc_9DF90E: ConcatStr
  loc_9DF90F: FStStrNoPop var_CC
  loc_9DF912: LitI4 1
  loc_9DF917: LitI4 1
  loc_9DF91C: LitVarStr var_B8, "'yyyy-mm-dd'"
  loc_9DF921: FStVarCopyObj var_C8
  loc_9DF924: FLdRfVar var_C8
  loc_9DF927: FLdRfVar var_88
  loc_9DF92A: CVarRef
  loc_9DF92F: ImpAdCallI2 Format$(, )
  loc_9DF934: FStStrNoPop var_D0
  loc_9DF937: ConcatStr
  loc_9DF938: FStStrNoPop var_D4
  loc_9DF93B: LitStr " AND CodiRete = "
  loc_9DF93E: ConcatStr
  loc_9DF93F: FStStrNoPop var_D8
  loc_9DF942: FLdUI1
  loc_9DF946: CStrI2
  loc_9DF948: FStStrNoPop var_DC
  loc_9DF94B: ConcatStr
  loc_9DF94C: FStStrNoPop var_E0
  loc_9DF94F: LitStr " AND CodiDere = "
  loc_9DF952: ConcatStr
  loc_9DF953: FStStrNoPop var_E4
  loc_9DF956: FLdUI1
  loc_9DF95A: CStrI2
  loc_9DF95C: FStStrNoPop var_E8
  loc_9DF95F: ConcatStr
  loc_9DF960: FStStrNoPop var_EC
  loc_9DF963: LitStr " AND CodiEsca = "
  loc_9DF966: ConcatStr
  loc_9DF967: FStStrNoPop var_F0
  loc_9DF96A: FLdUI1
  loc_9DF96E: CStrI2
  loc_9DF970: FStStrNoPop var_F4
  loc_9DF973: ConcatStr
  loc_9DF974: FStStrNoPop var_F8
  loc_9DF977: Call EjecutarRsCls(from_stack_1v)
  loc_9DF97C: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_9DF99F: FFree1Var var_C8 = ""
  loc_9DF9A2: FLdUI1
  loc_9DF9A6: FLdUI1
  loc_9DF9AA: FLdUI1
  loc_9DF9AE: ILdRf var_88
  loc_9DF9B1: FLdI2 PeriInfo
  loc_9DF9B4: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_9DF9B9: ExitProcHresult
  loc_9DF9BA: LitStr "????????¦"
End Sub

Public Sub RedefineRS(sSelect) '971BCC
  'Data Table: 40CFBC
  loc_971BA4: ILdRf sSelect
  loc_971BA7: FStStrCopy var_88
  loc_971BAA: FLdPr Me
  loc_971BAD: MemLdRfVar from_stack_1.RsFrm
  loc_971BB0: ILdRf var_88
  loc_971BB3: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_971BB8: LitVarStr var_98, "Primary"
  loc_971BBD: PopAdLdVar
  loc_971BBE: FLdPr Me
  loc_971BC1: LateIdCall
  loc_971BC9: ExitProcHresult
  loc_971BCA: NewIfNullPr Me
End Sub

Public Sub EjecutarRsCls(sSelect) '960830
  'Data Table: 40CFBC
  loc_960818: ILdRf sSelect
  loc_96081B: FStStrCopy var_88
  loc_96081E: FLdPr Me
  loc_960821: MemLdRfVar from_stack_1.global_56
  loc_960824: ILdRf var_88
  loc_960827: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_96082C: ExitProcHresult
End Sub

Public Sub Requery() '9681B0
  'Data Table: 40CFBC
  loc_968190: FLdPr Me
  loc_968193: MemLdRfVar from_stack_1.RsFrm
  loc_968196: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_96819B: LitVarStr var_94, "Primary"
  loc_9681A0: PopAdLdVar
  loc_9681A1: FLdPr Me
  loc_9681A4: LateIdCall
  loc_9681AC: ExitProcHresult
End Sub

Public Property Get DataSource() '971AB4
  'Data Table: 40CFBC
  loc_971A90: ZeroRetVal
  loc_971A92: FLdRfVar var_8C
  loc_971A95: FLdPr Me
  loc_971A98: MemLdPr RsFrm
  loc_971A9B:  = Me.DataSource
  loc_971AA0: ILdRf var_8C
  loc_971AA3: CastAd
  loc_971AA6: FStAdFunc var_88
  loc_971AA9: FFree1Ad var_8C
  loc_971AAC: ExitProcCbHresult
End Sub

Public Function SinLiquidacion(PeriInfo, FechEsca, CodiRete, CodiDere, CodiEsca) '9E4D3C
  'Data Table: 40CFBC
  loc_9E4C5C: ILdRf FechEsca
  loc_9E4C5F: FStStrCopy var_8C
  loc_9E4C62: LitStr "SELECT *"
  loc_9E4C65: LitStr " FROM liquidaneto"
  loc_9E4C68: ConcatStr
  loc_9E4C69: FStStrNoPop var_90
  loc_9E4C6C: LitStr " WHERE PeriInfo = "
  loc_9E4C6F: ConcatStr
  loc_9E4C70: FStStrNoPop SinLiquidacion
  loc_9E4C73: FLdI2 PeriInfo
  loc_9E4C76: CStrUI1
  loc_9E4C78: FStStrNoPop var_98
  loc_9E4C7B: ConcatStr
  loc_9E4C7C: FStStrNoPop var_9C
  loc_9E4C7F: LitStr " AND FechEsca = "
  loc_9E4C82: ConcatStr
  loc_9E4C83: FStStrNoPop var_D0
  loc_9E4C86: LitI4 1
  loc_9E4C8B: LitI4 1
  loc_9E4C90: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_9E4C95: FStVarCopyObj var_CC
  loc_9E4C98: FLdRfVar var_CC
  loc_9E4C9B: FLdRfVar var_8C
  loc_9E4C9E: CVarRef
  loc_9E4CA3: ImpAdCallI2 Format$(, )
  loc_9E4CA8: FStStrNoPop var_D4
  loc_9E4CAB: ConcatStr
  loc_9E4CAC: FStStrNoPop var_D8
  loc_9E4CAF: LitStr " AND CodiRete = "
  loc_9E4CB2: ConcatStr
  loc_9E4CB3: FStStrNoPop var_DC
  loc_9E4CB6: FLdUI1
  loc_9E4CBA: CStrI2
  loc_9E4CBC: FStStrNoPop var_E0
  loc_9E4CBF: ConcatStr
  loc_9E4CC0: FStStrNoPop var_E4
  loc_9E4CC3: LitStr " AND CodiDere = "
  loc_9E4CC6: ConcatStr
  loc_9E4CC7: FStStrNoPop var_E8
  loc_9E4CCA: FLdUI1
  loc_9E4CCE: CStrI2
  loc_9E4CD0: FStStrNoPop var_EC
  loc_9E4CD3: ConcatStr
  loc_9E4CD4: FStStrNoPop var_F0
  loc_9E4CD7: LitStr " AND CodiEsca = "
  loc_9E4CDA: ConcatStr
  loc_9E4CDB: FStStrNoPop var_F4
  loc_9E4CDE: FLdUI1
  loc_9E4CE2: CStrI2
  loc_9E4CE4: FStStrNoPop var_F8
  loc_9E4CE7: ConcatStr
  loc_9E4CE8: FStStrNoPop var_FC
  loc_9E4CEB: Call EjecutarRsCls(from_stack_1v)
  loc_9E4CF0: FFreeStr var_90 = "": SinLiquidacion = "": var_98 = "": var_9C = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_9E4D13: FFree1Var var_CC = ""
  loc_9E4D16: FLdRfVar var_100
  loc_9E4D19: FLdPr Me
  loc_9E4D1C: MemLdPr global_56
  loc_9E4D1F:  = Me.RecordCount
  loc_9E4D24: ILdRf var_100
  loc_9E4D27: LitI4 0
  loc_9E4D2C: EqI4
  loc_9E4D2D: BranchF loc_9E4D35
  loc_9E4D30: LitI2_Byte &HFF
  loc_9E4D32: FStI2 var_86
  loc_9E4D35: ExitProcCbHresult
End Function

Private Function Proc_10_25_9712CC() '9712CC
  'Data Table: 40CFBC
  loc_9712A8: LitStr "Primary"
  loc_9712AB: FLdPr Me
  loc_9712AE: LateIdLdVar var_94 DispID_4 0
  loc_9712B5: CastAdVar Me
  loc_9712B9: FStAdFunc var_98
  loc_9712BC: FLdPr var_98
  loc_9712C4: FFree1Ad var_98
  loc_9712C7: FFree1Var var_94 = ""
  loc_9712CA: ExitProcHresult
End Function

Private Function Proc_10_26_96829C(arg_C) '96829C
  'Data Table: 40CFBC
  loc_968280: ILdI4 arg_C
  loc_968283: FStStrCopy var_88
  loc_968286: ILdRf var_88
  loc_968289: LitStr "Primary"
  loc_96828C: EqStr
  loc_96828E: BranchF loc_96829B
  loc_968291: FLdPr Me
  loc_968294: MemLdStr RsFrm
  loc_968297: IStAd
  loc_96829B: ExitProcHresult
End Function
