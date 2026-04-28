VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsproveedor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '4152F0
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4152FF
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '41530E
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96E5FC
  'Data Table: 415024
  loc_96E5D4: FLdRfVar var_88
  loc_96E5D7: FLdPr Me
  loc_96E5DA: MemLdPr RsFrm
  loc_96E5DD:  = Me.RecordCount
  loc_96E5E2: ILdRf var_88
  loc_96E5E5: LitI4 0
  loc_96E5EA: GtI4
  loc_96E5EB: BranchF loc_96E5F9
  loc_96E5EE: FLdPr Me
  loc_96E5F1: MemLdPr RsFrm
  loc_96E5F4: Me.MoveFirst
  loc_96E5F9: ExitProcHresult
  loc_96E5FA: VCallAd Control_ID_
End Sub

Public Sub MoveLast() '96E394
  'Data Table: 415024
  loc_96E36C: FLdRfVar var_88
  loc_96E36F: FLdPr Me
  loc_96E372: MemLdPr RsFrm
  loc_96E375:  = Me.RecordCount
  loc_96E37A: ILdRf var_88
  loc_96E37D: LitI4 0
  loc_96E382: GtI4
  loc_96E383: BranchF loc_96E391
  loc_96E386: FLdPr Me
  loc_96E389: MemLdPr RsFrm
  loc_96E38C: Me.MoveLast
  loc_96E391: ExitProcHresult
End Sub

Public Sub MoveNext() '993C20
  'Data Table: 415024
  loc_993BC0: FLdRfVar var_86
  loc_993BC3: FLdPr Me
  loc_993BC6: MemLdPr RsFrm
  loc_993BC9:  = Me.EOF
  loc_993BCE: FLdI2 var_86
  loc_993BD1: NotI4
  loc_993BD2: BranchF loc_993BE0
  loc_993BD5: FLdPr Me
  loc_993BD8: MemLdPr RsFrm
  loc_993BDB: Me.MoveNext
  loc_993BE0: FLdRfVar var_86
  loc_993BE3: FLdPr Me
  loc_993BE6: MemLdPr RsFrm
  loc_993BE9:  = Me.EOF
  loc_993BEE: FLdI2 var_86
  loc_993BF1: FLdRfVar var_8C
  loc_993BF4: FLdPr Me
  loc_993BF7: MemLdPr RsFrm
  loc_993BFA:  = Me.RecordCount
  loc_993BFF: ILdRf var_8C
  loc_993C02: LitI4 0
  loc_993C07: GtI4
  loc_993C08: AndI4
  loc_993C09: BranchF loc_993C1C
  loc_993C0C: ImpAdCallFPR4 Beep()
  loc_993C11: FLdPr Me
  loc_993C14: MemLdPr RsFrm
  loc_993C17: Me.MoveLast
  loc_993C1C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '942098
  'Data Table: 415024
  loc_94208C: FLdPr Me
  loc_94208F: MemLdPr RsFrm
  loc_942092: Me.MoveNext
  loc_942097: ExitProcHresult
End Sub

Public Sub MovePrevious() '993710
  'Data Table: 415024
  loc_9936B0: FLdRfVar var_86
  loc_9936B3: FLdPr Me
  loc_9936B6: MemLdPr RsFrm
  loc_9936B9:  = Me.BOF
  loc_9936BE: FLdI2 var_86
  loc_9936C1: NotI4
  loc_9936C2: BranchF loc_9936D0
  loc_9936C5: FLdPr Me
  loc_9936C8: MemLdPr RsFrm
  loc_9936CB: Me.MovePrevious
  loc_9936D0: FLdRfVar var_86
  loc_9936D3: FLdPr Me
  loc_9936D6: MemLdPr RsFrm
  loc_9936D9:  = Me.BOF
  loc_9936DE: FLdI2 var_86
  loc_9936E1: FLdRfVar var_8C
  loc_9936E4: FLdPr Me
  loc_9936E7: MemLdPr RsFrm
  loc_9936EA:  = Me.RecordCount
  loc_9936EF: ILdRf var_8C
  loc_9936F2: LitI4 0
  loc_9936F7: GtI4
  loc_9936F8: AndI4
  loc_9936F9: BranchF loc_99370C
  loc_9936FC: ImpAdCallFPR4 Beep()
  loc_993701: FLdPr Me
  loc_993704: MemLdPr RsFrm
  loc_993707: Me.MoveFirst
  loc_99370C: ExitProcHresult
  loc_99370D: MemLdPr global_-1280
End Sub

Public Property Get EOF() '964D60
  'Data Table: 415024
  loc_964D44: FLdRfVar var_88
  loc_964D47: FLdPr Me
  loc_964D4A: MemLdPr RsFrm
  loc_964D4D:  = Me.EOF
  loc_964D52: FLdI2 var_88
  loc_964D55: FStI2 var_86
  loc_964D58: ExitProcCbHresult
End Sub

Public Property Get BOF() '959090
  'Data Table: 415024
  loc_959074: FLdRfVar var_88
  loc_959077: FLdPr Me
  loc_95907A: MemLdPr RsFrm
  loc_95907D:  = Me.BOF
  loc_959082: FLdI2 var_88
  loc_959085: FStI2 var_86
  loc_959088: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '947E84
  'Data Table: 415024
  loc_947E74: ILdI4 sOrden
  loc_947E77: FLdPr Me
  loc_947E7A: MemLdPr RsFrm
  loc_947E7D: Me.Sort = from_stack_1
  loc_947E82: ExitProcHresult
End Sub

Public Sub Find(sCriterio) '969650
  'Data Table: 415024
  loc_969630: LitVar_Missing var_94
  loc_969633: PopAdLdVar
  loc_969634: LitI4 1
  loc_969639: LitI4 0
  loc_96963E: ILdI4 sCriterio
  loc_969641: FLdPr Me
  loc_969644: MemLdPr RsFrm
  loc_969647: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96964C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '947F50
  'Data Table: 415024
  loc_947F3C: ILdI4 sCriterio
  loc_947F3F: CVarStr var_94
  loc_947F42: PopAdLdVar
  loc_947F43: FLdPr Me
  loc_947F46: MemLdPr RsFrm
  loc_947F49: Me.Filter = from_stack_1
  loc_947F4E: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '958FAC
  'Data Table: 415024
  loc_958F90: FLdRfVar var_8C
  loc_958F93: FLdPr Me
  loc_958F96: MemLdPr RsFrm
  loc_958F99:  = Me.AbsolutePosition
  loc_958F9E: ILdRf var_8C
  loc_958FA1: FStR4 var_88
  loc_958FA4: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '958F60
  'Data Table: 415024
  loc_958F44: FLdRfVar var_8C
  loc_958F47: FLdPr Me
  loc_958F4A: MemLdPr RsFrm
  loc_958F4D:  = Me.RecordCount
  loc_958F52: ILdRf var_8C
  loc_958F55: FStR4 var_88
  loc_958F58: ExitProcCbHresult
End Sub

Public Function AddNew(CucuPers, DetaProv, FantProv, DofiProv, CccaProv, CubaProv, PainProv, LocaProv, FedcProv, FehcProv, TotcProv, FactProv, FeviProv, ExpeProv, CedeProv, IdDivte) 'A5DA04
  'Data Table: 415024
  loc_A5D7BC: ILdRf CucuPers
  loc_A5D7BF: FStStrCopy var_8C
  loc_A5D7C2: ILdRf DetaProv
  loc_A5D7C5: FStStrCopy var_90
  loc_A5D7C8: ILdRf FantProv
  loc_A5D7CB: FStStrCopy AddNew
  loc_A5D7CE: ILdRf DofiProv
  loc_A5D7D1: FStStrCopy var_98
  loc_A5D7D4: ILdRf CubaProv
  loc_A5D7D7: FStStrCopy var_9C
  loc_A5D7DA: ILdRf PainProv
  loc_A5D7DD: FStStrCopy var_A0
  loc_A5D7E0: ILdRf FedcProv
  loc_A5D7E3: FStStrCopy var_A4
  loc_A5D7E6: ILdRf FehcProv
  loc_A5D7E9: FStStrCopy var_A8
  loc_A5D7EC: ILdRf TotcProv
  loc_A5D7EF: FStStrCopy var_AC
  loc_A5D7F2: ILdRf FactProv
  loc_A5D7F5: FStStrCopy var_B0
  loc_A5D7F8: ILdRf FeviProv
  loc_A5D7FB: FStStrCopy var_B4
  loc_A5D7FE: ILdRf AddNew0
  loc_A5D801: FStStrCopy var_B8
  loc_A5D804: ZeroRetVal
  loc_A5D806: FLdRfVar var_BC
  loc_A5D809: ILdRf var_8C
  loc_A5D80C: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A5D811: FLdZeroAd var_BC
  loc_A5D814: FStStr var_88
  loc_A5D817: ILdRf var_88
  loc_A5D81A: LitStr vbNullString
  loc_A5D81D: NeStr
  loc_A5D81F: BranchF loc_A5D828
  loc_A5D822: ExitProcCbHresult
  loc_A5D828: LitI4 0
  loc_A5D82D: LitI4 2
  loc_A5D832: FLdRfVar var_C0
  loc_A5D835: Redim
  loc_A5D83F: FLdRfVar var_B4
  loc_A5D842: CVarRef
  loc_A5D847: ParmAry1St
  loc_A5D84D: FLdRfVar var_A4
  loc_A5D850: CVarRef
  loc_A5D855: ParmAry1St
  loc_A5D85B: FLdRfVar var_A8
  loc_A5D85E: CVarRef
  loc_A5D863: ParmAry1St
  loc_A5D869: FLdRfVar var_C0
  loc_A5D86C: ImpAdCallFPR4 Proc_261_57_A2BA40()
  loc_A5D871: FLdRfVar var_C0
  loc_A5D874: Erase
  loc_A5D875: LitStr "INSERT INTO proveedor (CucuPers,DetaProv,FantProv,DofiProv,CccaProv,CubaProv,PainProv,LocaProv,FedcProv,FehcProv,TotcProv,FactProv,FeviProv,ExpeProv,CedeProv,IdDivte,AltaUsua)"
  loc_A5D878: LitStr " VALUES ('"
  loc_A5D87B: ConcatStr
  loc_A5D87C: FStStrNoPop var_BC
  loc_A5D87F: ILdRf var_8C
  loc_A5D882: ConcatStr
  loc_A5D883: FStStrNoPop var_F4
  loc_A5D886: LitStr "','"
  loc_A5D889: ConcatStr
  loc_A5D88A: FStStrNoPop var_F8
  loc_A5D88D: ILdRf var_90
  loc_A5D890: ConcatStr
  loc_A5D891: FStStrNoPop var_FC
  loc_A5D894: LitStr "','"
  loc_A5D897: ConcatStr
  loc_A5D898: FStStrNoPop var_100
  loc_A5D89B: ILdRf AddNew
  loc_A5D89E: ConcatStr
  loc_A5D89F: FStStrNoPop var_104
  loc_A5D8A2: LitStr "','"
  loc_A5D8A5: ConcatStr
  loc_A5D8A6: FStStrNoPop var_108
  loc_A5D8A9: ILdRf var_98
  loc_A5D8AC: ConcatStr
  loc_A5D8AD: FStStrNoPop var_10C
  loc_A5D8B0: LitStr "',"
  loc_A5D8B3: ConcatStr
  loc_A5D8B4: FStStrNoPop var_110
  loc_A5D8B7: FLdUI1
  loc_A5D8BB: CStrI2
  loc_A5D8BD: FStStrNoPop var_114
  loc_A5D8C0: ConcatStr
  loc_A5D8C1: FStStrNoPop var_118
  loc_A5D8C4: LitStr ",'"
  loc_A5D8C7: ConcatStr
  loc_A5D8C8: FStStrNoPop var_11C
  loc_A5D8CB: ILdRf var_9C
  loc_A5D8CE: ConcatStr
  loc_A5D8CF: FStStrNoPop var_120
  loc_A5D8D2: LitStr "','"
  loc_A5D8D5: ConcatStr
  loc_A5D8D6: FStStrNoPop var_124
  loc_A5D8D9: ILdRf var_A0
  loc_A5D8DC: ConcatStr
  loc_A5D8DD: FStStrNoPop var_128
  loc_A5D8E0: LitStr "',"
  loc_A5D8E3: ConcatStr
  loc_A5D8E4: FStStrNoPop var_12C
  loc_A5D8E7: FLdUI1
  loc_A5D8EB: CStrI2
  loc_A5D8ED: FStStrNoPop var_130
  loc_A5D8F0: ConcatStr
  loc_A5D8F1: FStStrNoPop var_134
  loc_A5D8F4: LitStr ","
  loc_A5D8F7: ConcatStr
  loc_A5D8F8: FStStrNoPop var_138
  loc_A5D8FB: ILdRf var_A4
  loc_A5D8FE: ConcatStr
  loc_A5D8FF: FStStrNoPop var_13C
  loc_A5D902: LitStr ","
  loc_A5D905: ConcatStr
  loc_A5D906: FStStrNoPop var_140
  loc_A5D909: ILdRf var_A8
  loc_A5D90C: ConcatStr
  loc_A5D90D: FStStrNoPop var_144
  loc_A5D910: LitStr ","
  loc_A5D913: ConcatStr
  loc_A5D914: FStStrNoPop var_148
  loc_A5D917: ILdRf var_AC
  loc_A5D91A: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A5D91F: FStStrNoPop var_14C
  loc_A5D922: ConcatStr
  loc_A5D923: FStStrNoPop var_150
  loc_A5D926: LitStr ",'"
  loc_A5D929: ConcatStr
  loc_A5D92A: FStStrNoPop var_154
  loc_A5D92D: ILdRf var_B0
  loc_A5D930: ConcatStr
  loc_A5D931: FStStrNoPop var_158
  loc_A5D934: LitStr "',"
  loc_A5D937: ConcatStr
  loc_A5D938: FStStrNoPop var_15C
  loc_A5D93B: ILdRf var_B4
  loc_A5D93E: ConcatStr
  loc_A5D93F: FStStrNoPop var_160
  loc_A5D942: LitStr ",'"
  loc_A5D945: ConcatStr
  loc_A5D946: FStStrNoPop var_164
  loc_A5D949: ILdRf var_B8
  loc_A5D94C: ConcatStr
  loc_A5D94D: FStStrNoPop var_168
  loc_A5D950: LitStr "','"
  loc_A5D953: ConcatStr
  loc_A5D954: FStStrNoPop var_16C
  loc_A5D957: FLdUI1
  loc_A5D95B: CStrI2
  loc_A5D95D: FStStrNoPop var_170
  loc_A5D960: ConcatStr
  loc_A5D961: FStStrNoPop var_174
  loc_A5D964: LitStr "',"
  loc_A5D967: ConcatStr
  loc_A5D968: FStStrNoPop var_178
  loc_A5D96B: FLdUI1
  loc_A5D96F: CStrI2
  loc_A5D971: FStStrNoPop var_17C
  loc_A5D974: ConcatStr
  loc_A5D975: FStStrNoPop var_180
  loc_A5D978: LitStr ",'"
  loc_A5D97B: ConcatStr
  loc_A5D97C: FStStrNoPop var_184
  loc_A5D97F: ImpAdLdI4 MemVar_C3D03C
  loc_A5D982: ConcatStr
  loc_A5D983: FStStrNoPop var_188
  loc_A5D986: LitStr "')"
  loc_A5D989: ConcatStr
  loc_A5D98A: FStStrNoPop var_18C
  loc_A5D98D: Call EjecutarRsCls(from_stack_1v)
  loc_A5D992: FFreeStr var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_BC = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_A5D9E5: FLdPr Me
  loc_A5D9E8: MemLdStr RsFrm
  loc_A5D9EB: LitNothing
  loc_A5D9ED: Is
  loc_A5D9EF: NotI4
  loc_A5D9F0: BranchF loc_A5D9FB
  loc_A5D9F3: ILdRf var_8C
  loc_A5D9F6: Call Encontrar(from_stack_1v)
  loc_A5D9FB: ExitProcCbHresult
End Function

Public Sub Modificar(CucuPers, DetaProv, FantProv, DofiProv, CccaProv, CubaProv, PainProv, LocaProv, FedcProv, FehcProv, TotcProv, FactProv, FeviProv, ExpeProv, CedeProv, IdDivte) 'A5F16C
  'Data Table: 415024
  loc_A5EF28: ILdRf CucuPers
  loc_A5EF2B: FStStrCopy var_88
  loc_A5EF2E: ILdRf DetaProv
  loc_A5EF31: FStStrCopy var_8C
  loc_A5EF34: ILdRf FantProv
  loc_A5EF37: FStStrCopy var_90
  loc_A5EF3A: ILdRf DofiProv
  loc_A5EF3D: FStStrCopy var_94
  loc_A5EF40: ILdRf CubaProv
  loc_A5EF43: FStStrCopy var_98
  loc_A5EF46: ILdRf PainProv
  loc_A5EF49: FStStrCopy var_9C
  loc_A5EF4C: ILdRf FedcProv
  loc_A5EF4F: FStStrCopy var_A0
  loc_A5EF52: ILdRf FehcProv
  loc_A5EF55: FStStrCopy var_A4
  loc_A5EF58: ILdRf FeviProv
  loc_A5EF5B: FStStrCopy var_A8
  loc_A5EF5E: ILdRf Modificar0
  loc_A5EF61: FStStrCopy var_AC
  loc_A5EF64: ILdRf Modificar4
  loc_A5EF67: FStStrCopy var_B0
  loc_A5EF6A: LitI4 0
  loc_A5EF6F: LitI4 2
  loc_A5EF74: FLdRfVar var_B4
  loc_A5EF77: Redim
  loc_A5EF81: FLdRfVar var_AC
  loc_A5EF84: CVarRef
  loc_A5EF89: ParmAry1St
  loc_A5EF8F: FLdRfVar var_A0
  loc_A5EF92: CVarRef
  loc_A5EF97: ParmAry1St
  loc_A5EF9D: FLdRfVar var_A4
  loc_A5EFA0: CVarRef
  loc_A5EFA5: ParmAry1St
  loc_A5EFAB: FLdRfVar var_B4
  loc_A5EFAE: ImpAdCallFPR4 Proc_261_57_A2BA40()
  loc_A5EFB3: FLdRfVar var_B4
  loc_A5EFB6: Erase
  loc_A5EFB7: LitStr "UPDATE proveedor p"
  loc_A5EFBA: LitStr " INNER JOIN infogov.persona pp ON pp.CucuPers = p.CucuPers"
  loc_A5EFBD: ConcatStr
  loc_A5EFBE: FStStrNoPop var_E8
  loc_A5EFC1: LitStr " SET DetaProv='"
  loc_A5EFC4: ConcatStr
  loc_A5EFC5: FStStrNoPop var_EC
  loc_A5EFC8: ILdRf var_8C
  loc_A5EFCB: ConcatStr
  loc_A5EFCC: FStStrNoPop var_F0
  loc_A5EFCF: LitStr "',FantProv='"
  loc_A5EFD2: ConcatStr
  loc_A5EFD3: FStStrNoPop var_F4
  loc_A5EFD6: ILdRf var_90
  loc_A5EFD9: ConcatStr
  loc_A5EFDA: FStStrNoPop var_F8
  loc_A5EFDD: LitStr "',DofiProv='"
  loc_A5EFE0: ConcatStr
  loc_A5EFE1: FStStrNoPop var_FC
  loc_A5EFE4: ILdRf var_94
  loc_A5EFE7: ConcatStr
  loc_A5EFE8: FStStrNoPop var_100
  loc_A5EFEB: LitStr "',CccaProv="
  loc_A5EFEE: ConcatStr
  loc_A5EFEF: FStStrNoPop var_104
  loc_A5EFF2: FLdUI1
  loc_A5EFF6: CStrI2
  loc_A5EFF8: FStStrNoPop var_108
  loc_A5EFFB: ConcatStr
  loc_A5EFFC: FStStrNoPop var_10C
  loc_A5EFFF: LitStr ",CubaProv='"
  loc_A5F002: ConcatStr
  loc_A5F003: FStStrNoPop var_110
  loc_A5F006: ILdRf var_98
  loc_A5F009: ConcatStr
  loc_A5F00A: FStStrNoPop var_114
  loc_A5F00D: LitStr "',PainProv='"
  loc_A5F010: ConcatStr
  loc_A5F011: FStStrNoPop var_118
  loc_A5F014: ILdRf var_9C
  loc_A5F017: ConcatStr
  loc_A5F018: FStStrNoPop var_11C
  loc_A5F01B: LitStr "',LocaProv="
  loc_A5F01E: ConcatStr
  loc_A5F01F: FStStrNoPop var_120
  loc_A5F022: FLdUI1
  loc_A5F026: CStrI2
  loc_A5F028: FStStrNoPop var_124
  loc_A5F02B: ConcatStr
  loc_A5F02C: FStStrNoPop var_128
  loc_A5F02F: LitStr ",FedcProv="
  loc_A5F032: ConcatStr
  loc_A5F033: FStStrNoPop var_12C
  loc_A5F036: ILdRf var_A0
  loc_A5F039: ConcatStr
  loc_A5F03A: FStStrNoPop var_130
  loc_A5F03D: LitStr ",FehcProv="
  loc_A5F040: ConcatStr
  loc_A5F041: FStStrNoPop var_134
  loc_A5F044: ILdRf var_A4
  loc_A5F047: ConcatStr
  loc_A5F048: FStStrNoPop var_138
  loc_A5F04B: LitStr ",TotcProv="
  loc_A5F04E: ConcatStr
  loc_A5F04F: FStStrNoPop var_140
  loc_A5F052: FLdFPR8 TotcProv
  loc_A5F055: CStrR8
  loc_A5F057: FStStrNoPop var_13C
  loc_A5F05A: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A5F05F: FStStrNoPop var_144
  loc_A5F062: ConcatStr
  loc_A5F063: FStStrNoPop var_148
  loc_A5F066: LitStr ",FactProv='"
  loc_A5F069: ConcatStr
  loc_A5F06A: FStStrNoPop var_14C
  loc_A5F06D: ILdRf var_A8
  loc_A5F070: ConcatStr
  loc_A5F071: FStStrNoPop var_150
  loc_A5F074: LitStr "',FeviProv="
  loc_A5F077: ConcatStr
  loc_A5F078: FStStrNoPop var_154
  loc_A5F07B: ILdRf var_AC
  loc_A5F07E: ConcatStr
  loc_A5F07F: FStStrNoPop var_158
  loc_A5F082: LitStr ",ExpeProv='"
  loc_A5F085: ConcatStr
  loc_A5F086: FStStrNoPop var_15C
  loc_A5F089: ILdRf var_B0
  loc_A5F08C: ConcatStr
  loc_A5F08D: FStStrNoPop var_160
  loc_A5F090: LitStr "',CedeProv='"
  loc_A5F093: ConcatStr
  loc_A5F094: FStStrNoPop var_164
  loc_A5F097: FLdUI1
  loc_A5F09B: CStrI2
  loc_A5F09D: FStStrNoPop var_168
  loc_A5F0A0: ConcatStr
  loc_A5F0A1: FStStrNoPop var_16C
  loc_A5F0A4: LitStr "'"
  loc_A5F0A7: ConcatStr
  loc_A5F0A8: FStStrNoPop var_170
  loc_A5F0AB: LitStr ", IdDivte='"
  loc_A5F0AE: ConcatStr
  loc_A5F0AF: FStStrNoPop var_174
  loc_A5F0B2: FLdUI1
  loc_A5F0B6: CStrI2
  loc_A5F0B8: FStStrNoPop var_178
  loc_A5F0BB: ConcatStr
  loc_A5F0BC: FStStrNoPop var_17C
  loc_A5F0BF: LitStr "'"
  loc_A5F0C2: ConcatStr
  loc_A5F0C3: FStStrNoPop var_180
  loc_A5F0C6: LitStr ", p.ModiUsua=@sUsuario, p.ModiFeho=Now()"
  loc_A5F0C9: ConcatStr
  loc_A5F0CA: FStStrNoPop var_184
  loc_A5F0CD: LitStr ", DetaPers='"
  loc_A5F0D0: ConcatStr
  loc_A5F0D1: FStStrNoPop var_188
  loc_A5F0D4: ILdRf var_8C
  loc_A5F0D7: ConcatStr
  loc_A5F0D8: FStStrNoPop var_18C
  loc_A5F0DB: LitStr "'"
  loc_A5F0DE: ConcatStr
  loc_A5F0DF: FStStrNoPop var_190
  loc_A5F0E2: LitStr " WHERE p.CucuPers = "
  loc_A5F0E5: ConcatStr
  loc_A5F0E6: FStStrNoPop var_194
  loc_A5F0E9: ILdRf var_88
  loc_A5F0EC: ConcatStr
  loc_A5F0ED: FStStrNoPop var_198
  loc_A5F0F0: Call EjecutarRsCls(from_stack_1v)
  loc_A5F0F5: FFreeStr var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = ""
  loc_A5F152: FLdPr Me
  loc_A5F155: MemLdStr RsFrm
  loc_A5F158: LitNothing
  loc_A5F15A: Is
  loc_A5F15C: NotI4
  loc_A5F15D: BranchF loc_A5F168
  loc_A5F160: ILdRf var_88
  loc_A5F163: Call Encontrar(from_stack_1v)
  loc_A5F168: ExitProcHresult
End Sub

Public Sub Modificar_2(CucuPers, DetaProv, FantProv, DofiProv, FactProv, IdDivte) '9DC38C
  'Data Table: 415024
  loc_9DC2C4: ILdRf CucuPers
  loc_9DC2C7: FStStrCopy var_88
  loc_9DC2CA: ILdRf DetaProv
  loc_9DC2CD: FStStrCopy var_8C
  loc_9DC2D0: ILdRf FantProv
  loc_9DC2D3: FStStrCopy var_90
  loc_9DC2D6: ILdRf DofiProv
  loc_9DC2D9: FStStrCopy var_94
  loc_9DC2DC: ILdRf FactProv
  loc_9DC2DF: FStStrCopy var_98
  loc_9DC2E2: LitStr "UPDATE proveedor"
  loc_9DC2E5: LitStr " SET DetaProv='"
  loc_9DC2E8: ConcatStr
  loc_9DC2E9: FStStrNoPop var_9C
  loc_9DC2EC: ILdRf var_8C
  loc_9DC2EF: ConcatStr
  loc_9DC2F0: FStStrNoPop var_A0
  loc_9DC2F3: LitStr "',FantProv='"
  loc_9DC2F6: ConcatStr
  loc_9DC2F7: FStStrNoPop var_A4
  loc_9DC2FA: ILdRf var_90
  loc_9DC2FD: ConcatStr
  loc_9DC2FE: FStStrNoPop var_A8
  loc_9DC301: LitStr "',FactProv='"
  loc_9DC304: ConcatStr
  loc_9DC305: FStStrNoPop var_AC
  loc_9DC308: ILdRf var_98
  loc_9DC30B: ConcatStr
  loc_9DC30C: FStStrNoPop var_B0
  loc_9DC30F: LitStr "'"
  loc_9DC312: ConcatStr
  loc_9DC313: FStStrNoPop var_B4
  loc_9DC316: LitStr ",DofiProv='"
  loc_9DC319: ConcatStr
  loc_9DC31A: FStStrNoPop var_B8
  loc_9DC31D: ILdRf var_94
  loc_9DC320: ConcatStr
  loc_9DC321: FStStrNoPop var_BC
  loc_9DC324: LitStr "',IdDivte="
  loc_9DC327: ConcatStr
  loc_9DC328: FStStrNoPop var_C0
  loc_9DC32B: FLdUI1
  loc_9DC32F: CStrI2
  loc_9DC331: FStStrNoPop var_C4
  loc_9DC334: ConcatStr
  loc_9DC335: FStStrNoPop var_C8
  loc_9DC338: LitStr ", ModiUsua=@sUsuario, ModiFeho=Now()"
  loc_9DC33B: ConcatStr
  loc_9DC33C: FStStrNoPop var_CC
  loc_9DC33F: LitStr " WHERE proveedor.CucuPers = "
  loc_9DC342: ConcatStr
  loc_9DC343: FStStrNoPop var_D0
  loc_9DC346: ILdRf var_88
  loc_9DC349: ConcatStr
  loc_9DC34A: FStStrNoPop var_D4
  loc_9DC34D: Call EjecutarRsCls(from_stack_1v)
  loc_9DC352: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_9DC373: FLdPr Me
  loc_9DC376: MemLdStr RsFrm
  loc_9DC379: LitNothing
  loc_9DC37B: Is
  loc_9DC37D: NotI4
  loc_9DC37E: BranchF loc_9DC389
  loc_9DC381: ILdRf var_88
  loc_9DC384: Call Encontrar(from_stack_1v)
  loc_9DC389: ExitProcHresult
End Sub

Public Function ValidaEliminar(sCucuPers) '9BF3A8
  'Data Table: 415024
  loc_9BF2E4: ILdRf sCucuPers
  loc_9BF2E7: FStStrCopy var_8C
  loc_9BF2EA: ZeroRetVal
  loc_9BF2EC: LitStr "SELECT CucuPers FROM cotizacion WHERE CucuPers = "
  loc_9BF2EF: ILdRf var_8C
  loc_9BF2F2: ConcatStr
  loc_9BF2F3: FStStrNoPop var_90
  loc_9BF2F6: Call EjecutarRsCls(from_stack_1v)
  loc_9BF2FB: FFree1Str var_90
  loc_9BF2FE: FLdRfVar ValidaEliminar
  loc_9BF301: FLdPr Me
  loc_9BF304: MemLdPr global_56
  loc_9BF307:  = Me.RecordCount
  loc_9BF30C: ILdRf ValidaEliminar
  loc_9BF30F: LitI4 0
  loc_9BF314: GtI4
  loc_9BF315: BranchF loc_9BF324
  loc_9BF318: LitStr "El PROVEEDOR tiene Cotizaciones y NO puede ELIMINARSE. Verifique..."
  loc_9BF31B: FStStrCopy var_88
  loc_9BF31E: ExitProcCbHresult
  loc_9BF324: LitStr "SELECT CucuPers FROM debito WHERE CucuPers = "
  loc_9BF327: ILdRf var_8C
  loc_9BF32A: ConcatStr
  loc_9BF32B: FStStrNoPop var_90
  loc_9BF32E: Call EjecutarRsCls(from_stack_1v)
  loc_9BF333: FFree1Str var_90
  loc_9BF336: FLdRfVar ValidaEliminar
  loc_9BF339: FLdPr Me
  loc_9BF33C: MemLdPr global_56
  loc_9BF33F:  = Me.RecordCount
  loc_9BF344: ILdRf ValidaEliminar
  loc_9BF347: LitI4 0
  loc_9BF34C: GtI4
  loc_9BF34D: BranchF loc_9BF35C
  loc_9BF350: LitStr "El PROVEEDOR tiene Débitos y NO puede ELIMINARSE. Verifique..."
  loc_9BF353: FStStrCopy var_88
  loc_9BF356: ExitProcCbHresult
  loc_9BF35C: LitStr "SELECT CucuPers FROM imputacion WHERE CucuPers = "
  loc_9BF35F: ILdRf var_8C
  loc_9BF362: ConcatStr
  loc_9BF363: FStStrNoPop var_90
  loc_9BF366: LitStr " LIMIT 1;"
  loc_9BF369: ConcatStr
  loc_9BF36A: FStStrNoPop var_98
  loc_9BF36D: Call EjecutarRsCls(from_stack_1v)
  loc_9BF372: FFreeStr var_90 = ""
  loc_9BF379: FLdRfVar ValidaEliminar
  loc_9BF37C: FLdPr Me
  loc_9BF37F: MemLdPr global_56
  loc_9BF382:  = Me.RecordCount
  loc_9BF387: ILdRf ValidaEliminar
  loc_9BF38A: LitI4 0
  loc_9BF38F: GtI4
  loc_9BF390: BranchF loc_9BF39F
  loc_9BF393: LitStr "El PROVEEDOR tiene Imputaciones Definitivas y NO puede ELIMINARSE. Verifique..."
  loc_9BF396: FStStrCopy var_88
  loc_9BF399: ExitProcCbHresult
  loc_9BF39F: ExitProcCbHresult
  loc_9BF3A5: CStr2Ansi
End Function

Public Sub Eliminar() '9C355C
  'Data Table: 415024
  loc_9C349C: LitStr "DELETE FROM proveedor"
  loc_9C349F: LitStr " WHERE CucuPers = '"
  loc_9C34A2: ConcatStr
  loc_9C34A3: CVarStr var_BC
  loc_9C34A6: FLdRfVar var_AC
  loc_9C34A9: FLdRfVar var_9C
  loc_9C34AC: LitVarStr var_98, "CucuPers"
  loc_9C34B1: PopAdLdVar
  loc_9C34B2: FLdRfVar var_88
  loc_9C34B5: FLdPr Me
  loc_9C34B8: MemLdPr RsFrm
  loc_9C34BB:  = Me.Fields
  loc_9C34C0: FLdPr var_88
  loc_9C34C3: from_stack_2 = Me.Item(from_stack_1)
  loc_9C34C8: FLdPr var_9C
  loc_9C34CB:  = Me.Value
  loc_9C34D0: FLdRfVar var_AC
  loc_9C34D3: ConcatVar var_CC
  loc_9C34D7: LitVarStr var_DC, "';"
  loc_9C34DC: ConcatVar var_EC
  loc_9C34E0: CStrVarVal var_F0
  loc_9C34E4: Call EjecutarRsCls(from_stack_1v)
  loc_9C34E9: FFree1Str var_F0
  loc_9C34EC: FFreeAd var_88 = ""
  loc_9C34F3: FFreeVar var_BC = "": var_AC = "": var_CC = ""
  loc_9C34FE: FLdRfVar var_F8
  loc_9C3501: FLdPr Me
  loc_9C3504: MemLdPr RsFrm
  loc_9C3507:  = Me.AbsolutePosition
  loc_9C350C: ILdRf var_F8
  loc_9C350F: FStR4 var_F4
  loc_9C3512: Call Requery()
  loc_9C3517: FLdRfVar var_F8
  loc_9C351A: FLdPr Me
  loc_9C351D: MemLdPr RsFrm
  loc_9C3520:  = Me.RecordCount
  loc_9C3525: ILdRf var_F8
  loc_9C3528: LitI4 0
  loc_9C352D: GtI4
  loc_9C352E: BranchF loc_9C355A
  loc_9C3531: Call MoveFirst()
  loc_9C3536: ILdRf var_F4
  loc_9C3539: LitI4 1
  loc_9C353E: GtI4
  loc_9C353F: BranchF loc_9C355A
  loc_9C3542: LitVar_Missing var_98
  loc_9C3545: PopAdLdVar
  loc_9C3546: ILdRf var_F4
  loc_9C3549: LitI4 2
  loc_9C354E: SubI4
  loc_9C354F: FLdPr Me
  loc_9C3552: MemLdPr RsFrm
  loc_9C3555: Me.Move from_stack_1, from_stack_2
  loc_9C355A: ExitProcHresult
End Sub

Public Sub Anular(MoanProv) '9DAE1C
  'Data Table: 415024
  loc_9DAD40: ILdRf MoanProv
  loc_9DAD43: FStStrCopy var_88
  loc_9DAD46: LitStr "UPDATE proveedor"
  loc_9DAD49: LitStr " SET BajaUsua='"
  loc_9DAD4C: ConcatStr
  loc_9DAD4D: FStStrNoPop var_8C
  loc_9DAD50: ImpAdLdI4 MemVar_C3D03C
  loc_9DAD53: ConcatStr
  loc_9DAD54: FStStrNoPop var_90
  loc_9DAD57: LitStr "', BajaFeho=Now(), BajaMoti='"
  loc_9DAD5A: ConcatStr
  loc_9DAD5B: FStStrNoPop var_94
  loc_9DAD5E: ILdRf var_88
  loc_9DAD61: ConcatStr
  loc_9DAD62: FStStrNoPop var_98
  loc_9DAD65: LitStr "'"
  loc_9DAD68: ConcatStr
  loc_9DAD69: FStStrNoPop var_9C
  loc_9DAD6C: LitStr " WHERE CucuPers='"
  loc_9DAD6F: ConcatStr
  loc_9DAD70: CVarStr var_D4
  loc_9DAD73: FLdRfVar var_C4
  loc_9DAD76: FLdRfVar var_B4
  loc_9DAD79: LitVarStr var_B0, "CucuPers"
  loc_9DAD7E: PopAdLdVar
  loc_9DAD7F: FLdRfVar var_A0
  loc_9DAD82: FLdPr Me
  loc_9DAD85: MemLdPr RsFrm
  loc_9DAD88:  = Me.Fields
  loc_9DAD8D: FLdPr var_A0
  loc_9DAD90: from_stack_2 = Me.Item(from_stack_1)
  loc_9DAD95: FLdPr var_B4
  loc_9DAD98:  = Me.Value
  loc_9DAD9D: FLdRfVar var_C4
  loc_9DADA0: ConcatVar var_E4
  loc_9DADA4: LitVarStr var_F4, "';"
  loc_9DADA9: ConcatVar var_104
  loc_9DADAD: CStrVarVal var_108
  loc_9DADB1: Call EjecutarRsCls(from_stack_1v)
  loc_9DADB6: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_9DADC5: FFreeAd var_A0 = ""
  loc_9DADCC: FFreeVar var_D4 = "": var_C4 = "": var_E4 = ""
  loc_9DADD7: FLdRfVar var_C4
  loc_9DADDA: FLdRfVar var_B4
  loc_9DADDD: LitVarStr var_B0, "CucuPers"
  loc_9DADE2: PopAdLdVar
  loc_9DADE3: FLdRfVar var_A0
  loc_9DADE6: FLdPr Me
  loc_9DADE9: MemLdPr RsFrm
  loc_9DADEC:  = Me.Fields
  loc_9DADF1: FLdPr var_A0
  loc_9DADF4: from_stack_2 = Me.Item(from_stack_1)
  loc_9DADF9: FLdPr var_B4
  loc_9DADFC:  = Me.Value
  loc_9DAE01: FLdRfVar var_C4
  loc_9DAE04: CStrVarTmp
  loc_9DAE05: FStStrNoPop var_8C
  loc_9DAE08: Call Encontrar(from_stack_1v)
  loc_9DAE0D: FFree1Str var_8C
  loc_9DAE10: FFreeAd var_A0 = ""
  loc_9DAE17: FFree1Var var_C4 = ""
  loc_9DAE1A: ExitProcHresult
End Sub

Public Sub Encontrar(CucuPers) '97D390
  'Data Table: 415024
  loc_97D364: ILdRf CucuPers
  loc_97D367: FStStrCopy var_88
  loc_97D36A: Call Requery()
  loc_97D36F: LitStr "CucuPers = '"
  loc_97D372: ILdRf var_88
  loc_97D375: ConcatStr
  loc_97D376: FStStrNoPop var_8C
  loc_97D379: LitStr "'"
  loc_97D37C: ConcatStr
  loc_97D37D: PopTmpLdAdStr
  loc_97D381: Call Find(from_stack_1v)
  loc_97D386: FFreeStr var_8C = ""
  loc_97D38D: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '974CAC
  'Data Table: 415024
  loc_974C84: ILdRf sSelect
  loc_974C87: FStStrCopy var_88
  loc_974C8A: FLdPr Me
  loc_974C8D: MemLdRfVar from_stack_1.RsFrm
  loc_974C90: ILdRf var_88
  loc_974C93: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_974C98: LitVarStr var_98, "Primary"
  loc_974C9D: PopAdLdVar
  loc_974C9E: FLdPr Me
  loc_974CA1: LateIdCall
  loc_974CA9: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '96463C
  'Data Table: 415024
  loc_964624: ILdRf sSelect
  loc_964627: FStStrCopy var_88
  loc_96462A: FLdPr Me
  loc_96462D: MemLdRfVar from_stack_1.global_56
  loc_964630: ILdRf var_88
  loc_964633: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_964638: ExitProcHresult
End Sub

Public Sub Requery() '9696F0
  'Data Table: 415024
  loc_9696D0: FLdPr Me
  loc_9696D3: MemLdRfVar from_stack_1.RsFrm
  loc_9696D6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_9696DB: LitVarStr var_94, "Primary"
  loc_9696E0: PopAdLdVar
  loc_9696E1: FLdPr Me
  loc_9696E4: LateIdCall
  loc_9696EC: ExitProcHresult
End Sub

Public Property Get DataSource() '974464
  'Data Table: 415024
  loc_974440: ZeroRetVal
  loc_974442: FLdRfVar var_8C
  loc_974445: FLdPr Me
  loc_974448: MemLdPr RsFrm
  loc_97444B:  = Me.DataSource
  loc_974450: ILdRf var_8C
  loc_974453: CastAd
  loc_974456: FStAdFunc var_88
  loc_974459: FFree1Ad var_8C
  loc_97445C: ExitProcCbHresult
End Sub

Public Function ValidaClave(CucuPers) '9DB6EC
  'Data Table: 415024
  loc_9DB610: ILdRf CucuPers
  loc_9DB613: FStStrCopy var_8C
  loc_9DB616: ZeroRetVal
  loc_9DB618: LitStr "SELECT proveedor.* FROM proveedor WHERE CucuPers = '"
  loc_9DB61B: ILdRf var_8C
  loc_9DB61E: ConcatStr
  loc_9DB61F: FStStrNoPop var_90
  loc_9DB622: LitStr "';"
  loc_9DB625: ConcatStr
  loc_9DB626: FStStrNoPop ValidaClave
  loc_9DB629: Call EjecutarRsCls(from_stack_1v)
  loc_9DB62E: FFreeStr var_90 = ""
  loc_9DB635: FLdRfVar var_98
  loc_9DB638: FLdPr Me
  loc_9DB63B: MemLdPr global_56
  loc_9DB63E:  = Me.RecordCount
  loc_9DB643: ILdRf var_98
  loc_9DB646: LitI4 0
  loc_9DB64B: GtI4
  loc_9DB64C: BranchF loc_9DB6E6
  loc_9DB64F: LitVarStr var_D0, "El Proveedor: "
  loc_9DB654: FLdRfVar var_C0
  loc_9DB657: FLdRfVar var_B0
  loc_9DB65A: LitVarStr var_AC, "DetaProv"
  loc_9DB65F: PopAdLdVar
  loc_9DB660: FLdRfVar var_9C
  loc_9DB663: FLdPr Me
  loc_9DB666: MemLdPr global_56
  loc_9DB669:  = Me.Fields
  loc_9DB66E: FLdPr var_9C
  loc_9DB671: from_stack_2 = Me.Item(from_stack_1)
  loc_9DB676: FLdPr var_B0
  loc_9DB679:  = Me.Value
  loc_9DB67E: FLdRfVar var_C0
  loc_9DB681: ConcatVar var_E0
  loc_9DB685: LitVarStr var_F0, " - CUIT/CUIL: "
  loc_9DB68A: ConcatVar var_100
  loc_9DB68E: FLdRfVar var_128
  loc_9DB691: FLdRfVar var_118
  loc_9DB694: LitVarStr var_114, "CucuPers"
  loc_9DB699: PopAdLdVar
  loc_9DB69A: FLdRfVar var_104
  loc_9DB69D: FLdPr Me
  loc_9DB6A0: MemLdPr global_56
  loc_9DB6A3:  = Me.Fields
  loc_9DB6A8: FLdPr var_104
  loc_9DB6AB: from_stack_2 = Me.Item(from_stack_1)
  loc_9DB6B0: FLdPr var_118
  loc_9DB6B3:  = Me.Value
  loc_9DB6B8: FLdRfVar var_128
  loc_9DB6BB: ConcatVar var_138
  loc_9DB6BF: LitVarStr var_148, " YA EXISTE. Verifique..."
  loc_9DB6C4: ConcatVar var_158
  loc_9DB6C8: CStrVarTmp
  loc_9DB6C9: FStStr var_88
  loc_9DB6CC: FFreeAd var_9C = "": var_B0 = "": var_104 = ""
  loc_9DB6D7: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_128 = "": var_138 = ""
  loc_9DB6E6: ExitProcCbHresult
End Function

Public Function PainProvValidate(sPainProv) 'A16C6C
  'Data Table: 415024
  loc_A16B08: ILdRf sPainProv
  loc_A16B0B: FStStrCopy var_8C
  loc_A16B0E: ZeroRetVal
  loc_A16B10: ILdRf var_8C
  loc_A16B13: LitStr vbNullString
  loc_A16B16: NeStr
  loc_A16B18: ILdRf var_8C
  loc_A16B1B: LitStr "0"
  loc_A16B1E: NeStr
  loc_A16B20: AndI4
  loc_A16B21: BranchF loc_A16C65
  loc_A16B24: LitI2_Byte 0
  loc_A16B26: PopTmpLdAd2 var_92
  loc_A16B29: LitI2_Byte &HFF
  loc_A16B2B: PopTmpLdAd2 var_90
  loc_A16B2E: LitI2_Byte 0
  loc_A16B30: PopTmpLdAd2 var_8E
  loc_A16B33: ILdRf var_8C
  loc_A16B36: LitStr "Pago Interbanking"
  loc_A16B39: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A16B3E: FStStr var_88
  loc_A16B41: ILdRf var_88
  loc_A16B44: LitStr vbNullString
  loc_A16B47: NeStr
  loc_A16B49: BranchF loc_A16B52
  loc_A16B4C: ExitProcCbHresult
  loc_A16B52: LitStr "SELECT * FROM proveedor WHERE PainProv = "
  loc_A16B55: ILdRf var_8C
  loc_A16B58: ConcatStr
  loc_A16B59: FStStrNoPop var_98
  loc_A16B5C: LitStr " AND CucuPers <> "
  loc_A16B5F: ConcatStr
  loc_A16B60: CVarStr var_D0
  loc_A16B63: FLdRfVar var_C0
  loc_A16B66: FLdRfVar var_B0
  loc_A16B69: LitVarStr var_AC, "CucuPers"
  loc_A16B6E: PopAdLdVar
  loc_A16B6F: FLdRfVar var_9C
  loc_A16B72: FLdPr Me
  loc_A16B75: MemLdPr RsFrm
  loc_A16B78:  = Me.Fields
  loc_A16B7D: FLdPr var_9C
  loc_A16B80: from_stack_2 = Me.Item(from_stack_1)
  loc_A16B85: FLdPr var_B0
  loc_A16B88:  = Me.Value
  loc_A16B8D: FLdRfVar var_C0
  loc_A16B90: ConcatVar var_E0
  loc_A16B94: CStrVarVal var_E4
  loc_A16B98: Call EjecutarRsCls(from_stack_1v)
  loc_A16B9D: FFreeStr var_98 = ""
  loc_A16BA4: FFreeAd var_9C = ""
  loc_A16BAB: FFreeVar var_D0 = "": var_C0 = ""
  loc_A16BB4: FLdRfVar var_E8
  loc_A16BB7: FLdPr Me
  loc_A16BBA: MemLdPr global_56
  loc_A16BBD:  = Me.RecordCount
  loc_A16BC2: ILdRf var_E8
  loc_A16BC5: LitI4 0
  loc_A16BCA: GtI4
  loc_A16BCB: BranchF loc_A16C65
  loc_A16BCE: LitVarStr var_F8, "El Proveedor: "
  loc_A16BD3: FLdRfVar var_C0
  loc_A16BD6: FLdRfVar var_B0
  loc_A16BD9: LitVarStr var_AC, "DetaProv"
  loc_A16BDE: PopAdLdVar
  loc_A16BDF: FLdRfVar var_9C
  loc_A16BE2: FLdPr Me
  loc_A16BE5: MemLdPr global_56
  loc_A16BE8:  = Me.Fields
  loc_A16BED: FLdPr var_9C
  loc_A16BF0: from_stack_2 = Me.Item(from_stack_1)
  loc_A16BF5: FLdPr var_B0
  loc_A16BF8:  = Me.Value
  loc_A16BFD: FLdRfVar var_C0
  loc_A16C00: ConcatVar var_D0
  loc_A16C04: LitVarStr var_108, " - CUIT-CUIL: "
  loc_A16C09: ConcatVar var_E0
  loc_A16C0D: FLdRfVar var_130
  loc_A16C10: FLdRfVar var_120
  loc_A16C13: LitVarStr var_11C, "CucuPers"
  loc_A16C18: PopAdLdVar
  loc_A16C19: FLdRfVar var_10C
  loc_A16C1C: FLdPr Me
  loc_A16C1F: MemLdPr global_56
  loc_A16C22:  = Me.Fields
  loc_A16C27: FLdPr var_10C
  loc_A16C2A: from_stack_2 = Me.Item(from_stack_1)
  loc_A16C2F: FLdPr var_120
  loc_A16C32:  = Me.Value
  loc_A16C37: FLdRfVar var_130
  loc_A16C3A: ConcatVar var_140
  loc_A16C3E: LitVarStr var_150, " tiene el mismo número de referencia. Verifique..."
  loc_A16C43: ConcatVar var_160
  loc_A16C47: CStrVarTmp
  loc_A16C48: FStStr var_88
  loc_A16C4B: FFreeAd var_9C = "": var_B0 = "": var_10C = ""
  loc_A16C56: FFreeVar var_C0 = "": var_D0 = "": var_E0 = "": var_130 = "": var_140 = ""
  loc_A16C65: ExitProcCbHresult
  loc_A16C6B: ModI2
End Function

Public Function UltimoPainProv() '9CB3F4
  'Data Table: 415024
  loc_9CB314: ZeroRetVal
  loc_9CB316: LitStr "SELECT PainProv FROM proveedor ORDER BY PainProv DESC LIMIT 1;"
  loc_9CB319: Call EjecutarRsCls(from_stack_1v)
  loc_9CB31E: FLdRfVar var_8C
  loc_9CB321: FLdPr Me
  loc_9CB324: MemLdPr global_56
  loc_9CB327:  = Me.RecordCount
  loc_9CB32C: ILdRf var_8C
  loc_9CB32F: LitI4 0
  loc_9CB334: GtI4
  loc_9CB335: BranchF loc_9CB3EE
  loc_9CB338: FLdRfVar var_A4
  loc_9CB33B: LitVarStr var_A0, "PainProv"
  loc_9CB340: PopAdLdVar
  loc_9CB341: FLdRfVar var_90
  loc_9CB344: FLdPr Me
  loc_9CB347: MemLdPr global_56
  loc_9CB34A:  = Me.Fields
  loc_9CB34F: FLdPr var_90
  loc_9CB352: from_stack_2 = Me.Item(from_stack_1)
  loc_9CB357: FLdZeroAd var_A4
  loc_9CB35A: CVarAd
  loc_9CB35E: ImpAdCallI2 IsNumeric()
  loc_9CB363: FFree1Ad var_90
  loc_9CB366: FFree1Var var_B4 = ""
  loc_9CB369: BranchF loc_9CB3B3
  loc_9CB36C: FLdRfVar var_B4
  loc_9CB36F: FLdRfVar var_A4
  loc_9CB372: LitVarStr var_A0, "PainProv"
  loc_9CB377: PopAdLdVar
  loc_9CB378: FLdRfVar var_90
  loc_9CB37B: FLdPr Me
  loc_9CB37E: MemLdPr global_56
  loc_9CB381:  = Me.Fields
  loc_9CB386: FLdPr var_90
  loc_9CB389: from_stack_2 = Me.Item(from_stack_1)
  loc_9CB38E: FLdPr var_A4
  loc_9CB391:  = Me.Value
  loc_9CB396: FLdRfVar var_B4
  loc_9CB399: FnCLngVar
  loc_9CB39B: LitI4 1
  loc_9CB3A0: AddI4
  loc_9CB3A1: CStrI4
  loc_9CB3A3: FStStr var_88
  loc_9CB3A6: FFreeAd var_90 = ""
  loc_9CB3AD: FFree1Var var_B4 = ""
  loc_9CB3B0: Branch loc_9CB3EE
  loc_9CB3B3: FLdRfVar var_B4
  loc_9CB3B6: FLdRfVar var_A4
  loc_9CB3B9: LitVarStr var_A0, "PainProv"
  loc_9CB3BE: PopAdLdVar
  loc_9CB3BF: FLdRfVar var_90
  loc_9CB3C2: FLdPr Me
  loc_9CB3C5: MemLdPr global_56
  loc_9CB3C8:  = Me.Fields
  loc_9CB3CD: FLdPr var_90
  loc_9CB3D0: from_stack_2 = Me.Item(from_stack_1)
  loc_9CB3D5: FLdPr var_A4
  loc_9CB3D8:  = Me.Value
  loc_9CB3DD: FLdRfVar var_B4
  loc_9CB3E0: CStrVarTmp
  loc_9CB3E1: FStStr var_88
  loc_9CB3E4: FFreeAd var_90 = ""
  loc_9CB3EB: FFree1Var var_B4 = ""
  loc_9CB3EE: ExitProcCbHresult
End Function

Public Sub GrabarCorreo(sCorreo, sCUIT) '9DD308
  'Data Table: 415024
  loc_9DD224: ILdRf sCorreo
  loc_9DD227: FStStrCopy var_88
  loc_9DD22A: ILdRf sCUIT
  loc_9DD22D: FStStrCopy var_8C
  loc_9DD230: OnErrorGoto loc_9DD2F2
  loc_9DD233: FLdRfVar var_88
  loc_9DD236: CVarRef
  loc_9DD23B: FLdRfVar var_AC
  loc_9DD23E: ImpAdCallFPR4  = LCase()
  loc_9DD243: FLdRfVar var_AC
  loc_9DD246: CStrVarTmp
  loc_9DD247: FStStr var_88
  loc_9DD24A: FFree1Var var_AC = ""
  loc_9DD24D: LitStr "SELECT * FROM contpres.usuaprov WHERE UsuaUspro = '"
  loc_9DD250: ILdRf var_88
  loc_9DD253: ConcatStr
  loc_9DD254: FStStrNoPop var_B0
  loc_9DD257: LitStr "';"
  loc_9DD25A: ConcatStr
  loc_9DD25B: FStStrNoPop var_B4
  loc_9DD25E: Call EjecutarRsCls(from_stack_1v)
  loc_9DD263: FFreeStr var_B0 = ""
  loc_9DD26A: FLdRfVar var_B8
  loc_9DD26D: FLdPr Me
  loc_9DD270: MemLdPr global_56
  loc_9DD273:  = Me.RecordCount
  loc_9DD278: ILdRf var_B8
  loc_9DD27B: LitI4 0
  loc_9DD280: EqI4
  loc_9DD281: BranchF loc_9DD2F1
  loc_9DD284: LitStr "START TRANSACTION; "
  loc_9DD287: LitStr "INSERT INTO usuaprov (UsuaUspro, AltaUsua) VALUES ('"
  loc_9DD28A: ConcatStr
  loc_9DD28B: FStStrNoPop var_B0
  loc_9DD28E: ILdRf var_88
  loc_9DD291: ConcatStr
  loc_9DD292: FStStrNoPop var_B4
  loc_9DD295: LitStr "', '"
  loc_9DD298: ConcatStr
  loc_9DD299: FStStrNoPop var_BC
  loc_9DD29C: ImpAdLdI4 MemVar_C3D03C
  loc_9DD29F: ConcatStr
  loc_9DD2A0: FStStrNoPop var_C0
  loc_9DD2A3: LitStr "'); "
  loc_9DD2A6: ConcatStr
  loc_9DD2A7: FStStrNoPop var_C4
  loc_9DD2AA: LitStr "INSERT INTO usuaprovcuit (IdUspro, CucuProv, AltaUsua) VALUES ((SELECT LAST_INSERT_ID()), '"
  loc_9DD2AD: ConcatStr
  loc_9DD2AE: FStStrNoPop var_C8
  loc_9DD2B1: ILdRf var_8C
  loc_9DD2B4: ConcatStr
  loc_9DD2B5: FStStrNoPop var_CC
  loc_9DD2B8: LitStr "', '"
  loc_9DD2BB: ConcatStr
  loc_9DD2BC: FStStrNoPop var_D0
  loc_9DD2BF: ImpAdLdI4 MemVar_C3D03C
  loc_9DD2C2: ConcatStr
  loc_9DD2C3: FStStrNoPop var_D4
  loc_9DD2C6: LitStr "');"
  loc_9DD2C9: ConcatStr
  loc_9DD2CA: FStStrNoPop var_D8
  loc_9DD2CD: Call EjecutarRsCls(from_stack_1v)
  loc_9DD2D2: FFreeStr var_B0 = "": var_B4 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_9DD2E9: LitStr "COMMIT;"
  loc_9DD2EC: Call EjecutarRsCls(from_stack_1v)
  loc_9DD2F1: ExitProcHresult
  loc_9DD2F2: LitStr "ROLLBACK;"
  loc_9DD2F5: Call EjecutarRsCls(from_stack_1v)
  loc_9DD2FA: LitI4 0
  loc_9DD2FF: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_9DD302: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9DD307: ExitProcHresult
End Sub

Public Function ValidaExpeProv(sCucuPers, sExpeProv) '9A2A3C
  'Data Table: 415024
  loc_9A29D8: ILdRf sCucuPers
  loc_9A29DB: FStStrCopy var_8C
  loc_9A29DE: ILdRf sExpeProv
  loc_9A29E1: FStStrCopy var_90
  loc_9A29E4: ZeroRetVal
  loc_9A29E6: LitStr "SELECT ExpeProv FROM proveedor WHERE CucuPers != '"
  loc_9A29E9: ILdRf var_8C
  loc_9A29EC: ConcatStr
  loc_9A29ED: FStStrNoPop ValidaExpeProv
  loc_9A29F0: LitStr "' AND ExpeProv = '"
  loc_9A29F3: ConcatStr
  loc_9A29F4: FStStrNoPop var_98
  loc_9A29F7: ILdRf var_90
  loc_9A29FA: ConcatStr
  loc_9A29FB: FStStrNoPop var_9C
  loc_9A29FE: LitStr "';"
  loc_9A2A01: ConcatStr
  loc_9A2A02: FStStrNoPop var_A0
  loc_9A2A05: Call EjecutarRsCls(from_stack_1v)
  loc_9A2A0A: FFreeStr ValidaExpeProv = "": var_98 = "": var_9C = ""
  loc_9A2A15: FLdRfVar var_A4
  loc_9A2A18: FLdPr Me
  loc_9A2A1B: MemLdPr global_56
  loc_9A2A1E:  = Me.RecordCount
  loc_9A2A23: ILdRf var_A4
  loc_9A2A26: LitI4 0
  loc_9A2A2B: GtI4
  loc_9A2A2C: BranchF loc_9A2A35
  loc_9A2A2F: LitStr "El Número de Expediente YA EXISTE. Verifique..."
  loc_9A2A32: FStStrCopy var_88
  loc_9A2A35: ExitProcCbHresult
End Function

Private Function Proc_28_31_974D04() '974D04
  'Data Table: 415024
  loc_974CE0: LitStr "Primary"
  loc_974CE3: FLdPr Me
  loc_974CE6: LateIdLdVar var_94 DispID_4 0
  loc_974CED: CastAdVar Me
  loc_974CF1: FStAdFunc var_98
  loc_974CF4: FLdPr var_98
  loc_974CFC: FFree1Ad var_98
  loc_974CFF: FFree1Var var_94 = ""
  loc_974D02: ExitProcHresult
End Function

Private Function Proc_28_32_96973C(arg_C) '96973C
  'Data Table: 415024
  loc_969720: ILdI4 arg_C
  loc_969723: FStStrCopy var_88
  loc_969726: ILdRf var_88
  loc_969729: LitStr "Primary"
  loc_96972C: EqStr
  loc_96972E: BranchF loc_96973B
  loc_969731: FLdPr Me
  loc_969734: MemLdStr RsFrm
  loc_969737: IStAd
  loc_96973B: ExitProcHresult
End Function
