VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsinstjudi"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '430E38
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '430E47
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '430E56
  RsFrm = Value
End Sub

Public Sub Move(iValor) '9B8F40
  'Data Table: 430A50
  loc_9B8F2C: LitVar_Missing var_94
  loc_9B8F2F: PopAdLdVar
  loc_9B8F30: ILdI2 iValor
  loc_9B8F33: CI4UI1
  loc_9B8F34: FLdPr Me
  loc_9B8F37: MemLdPr RsFrm
  loc_9B8F3A: Me.Move from_stack_1, from_stack_2
  loc_9B8F3F: ExitProcHresult
End Sub

Public Sub MoveFirst() '9EE384
  'Data Table: 430A50
  loc_9EE35C: FLdRfVar var_88
  loc_9EE35F: FLdPr Me
  loc_9EE362: MemLdPr RsFrm
  loc_9EE365:  = Me.RecordCount
  loc_9EE36A: ILdRf var_88
  loc_9EE36D: LitI4 0
  loc_9EE372: GtI4
  loc_9EE373: BranchF loc_9EE381
  loc_9EE376: FLdPr Me
  loc_9EE379: MemLdPr RsFrm
  loc_9EE37C: Me.MoveFirst
  loc_9EE381: ExitProcHresult
End Sub

Public Sub MoveLast() '9EF614
  'Data Table: 430A50
  loc_9EF5EC: FLdRfVar var_88
  loc_9EF5EF: FLdPr Me
  loc_9EF5F2: MemLdPr RsFrm
  loc_9EF5F5:  = Me.RecordCount
  loc_9EF5FA: ILdRf var_88
  loc_9EF5FD: LitI4 0
  loc_9EF602: GtI4
  loc_9EF603: BranchF loc_9EF611
  loc_9EF606: FLdPr Me
  loc_9EF609: MemLdPr RsFrm
  loc_9EF60C: Me.MoveLast
  loc_9EF611: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6AAB0
  'Data Table: 430A50
  loc_A6AA38: FLdRfVar var_86
  loc_A6AA3B: FLdPr Me
  loc_A6AA3E: MemLdPr RsFrm
  loc_A6AA41:  = Me.EOF
  loc_A6AA46: FLdI2 var_86
  loc_A6AA49: NotI4
  loc_A6AA4A: FLdRfVar var_8C
  loc_A6AA4D: FLdPr Me
  loc_A6AA50: MemLdPr RsFrm
  loc_A6AA53:  = Me.RecordCount
  loc_A6AA58: ILdRf var_8C
  loc_A6AA5B: LitI4 0
  loc_A6AA60: GtI4
  loc_A6AA61: AndI4
  loc_A6AA62: BranchF loc_A6AA70
  loc_A6AA65: FLdPr Me
  loc_A6AA68: MemLdPr RsFrm
  loc_A6AA6B: Me.MoveNext
  loc_A6AA70: FLdRfVar var_86
  loc_A6AA73: FLdPr Me
  loc_A6AA76: MemLdPr RsFrm
  loc_A6AA79:  = Me.EOF
  loc_A6AA7E: FLdI2 var_86
  loc_A6AA81: FLdRfVar var_8C
  loc_A6AA84: FLdPr Me
  loc_A6AA87: MemLdPr RsFrm
  loc_A6AA8A:  = Me.RecordCount
  loc_A6AA8F: ILdRf var_8C
  loc_A6AA92: LitI4 0
  loc_A6AA97: GtI4
  loc_A6AA98: AndI4
  loc_A6AA99: BranchF loc_A6AAAC
  loc_A6AA9C: ImpAdCallFPR4 Beep()
  loc_A6AAA1: FLdPr Me
  loc_A6AAA4: MemLdPr RsFrm
  loc_A6AAA7: Me.MoveLast
  loc_A6AAAC: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B15D8
  'Data Table: 430A50
  loc_9B15CC: FLdPr Me
  loc_9B15CF: MemLdPr RsFrm
  loc_9B15D2: Me.MoveNext
  loc_9B15D7: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6B1E8
  'Data Table: 430A50
  loc_A6B170: FLdRfVar var_86
  loc_A6B173: FLdPr Me
  loc_A6B176: MemLdPr RsFrm
  loc_A6B179:  = Me.BOF
  loc_A6B17E: FLdI2 var_86
  loc_A6B181: NotI4
  loc_A6B182: FLdRfVar var_8C
  loc_A6B185: FLdPr Me
  loc_A6B188: MemLdPr RsFrm
  loc_A6B18B:  = Me.RecordCount
  loc_A6B190: ILdRf var_8C
  loc_A6B193: LitI4 0
  loc_A6B198: GtI4
  loc_A6B199: AndI4
  loc_A6B19A: BranchF loc_A6B1A8
  loc_A6B19D: FLdPr Me
  loc_A6B1A0: MemLdPr RsFrm
  loc_A6B1A3: Me.MovePrevious
  loc_A6B1A8: FLdRfVar var_86
  loc_A6B1AB: FLdPr Me
  loc_A6B1AE: MemLdPr RsFrm
  loc_A6B1B1:  = Me.BOF
  loc_A6B1B6: FLdI2 var_86
  loc_A6B1B9: FLdRfVar var_8C
  loc_A6B1BC: FLdPr Me
  loc_A6B1BF: MemLdPr RsFrm
  loc_A6B1C2:  = Me.RecordCount
  loc_A6B1C7: ILdRf var_8C
  loc_A6B1CA: LitI4 0
  loc_A6B1CF: GtI4
  loc_A6B1D0: AndI4
  loc_A6B1D1: BranchF loc_A6B1E4
  loc_A6B1D4: ImpAdCallFPR4 Beep()
  loc_A6B1D9: FLdPr Me
  loc_A6B1DC: MemLdPr RsFrm
  loc_A6B1DF: Me.MoveFirst
  loc_A6B1E4: ExitProcHresult
End Sub

Public Property Get EOF() '9D9C14
  'Data Table: 430A50
  loc_9D9BF8: FLdRfVar var_88
  loc_9D9BFB: FLdPr Me
  loc_9D9BFE: MemLdPr RsFrm
  loc_9D9C01:  = Me.EOF
  loc_9D9C06: FLdI2 var_88
  loc_9D9C09: FStI2 var_86
  loc_9D9C0C: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D9BC8
  'Data Table: 430A50
  loc_9D9BAC: FLdRfVar var_88
  loc_9D9BAF: FLdPr Me
  loc_9D9BB2: MemLdPr RsFrm
  loc_9D9BB5:  = Me.BOF
  loc_9D9BBA: FLdI2 var_88
  loc_9D9BBD: FStI2 var_86
  loc_9D9BC0: ExitProcCbHresult
  loc_9D9BC6: Ary1LdCy
End Sub

Public Sub Sort(sOrden) '9B8A38
  'Data Table: 430A50
  loc_9B8A28: ILdI4 sOrden
  loc_9B8A2B: FLdPr Me
  loc_9B8A2E: MemLdPr RsFrm
  loc_9B8A31: Me.Sort = from_stack_1
  loc_9B8A36: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E01A0
  'Data Table: 430A50
  loc_9E0180: LitVar_Missing var_94
  loc_9E0183: PopAdLdVar
  loc_9E0184: LitI4 1
  loc_9E0189: LitI4 0
  loc_9E018E: ILdI4 sFind
  loc_9E0191: FLdPr Me
  loc_9E0194: MemLdPr RsFrm
  loc_9E0197: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E019C: ExitProcHresult
  loc_9E019D: LdPrVar
End Sub

Public Property Get AbsolutePosition() '9D9AE4
  'Data Table: 430A50
  loc_9D9AC8: FLdRfVar var_8C
  loc_9D9ACB: FLdPr Me
  loc_9D9ACE: MemLdPr RsFrm
  loc_9D9AD1:  = Me.AbsolutePosition
  loc_9D9AD6: ILdRf var_8C
  loc_9D9AD9: FStR4 var_88
  loc_9D9ADC: ExitProcCbHresult
  loc_9D9AE2: PopAdLdVar
End Sub

Public Property Get RecordCount() '9D9A4C
  'Data Table: 430A50
  loc_9D9A30: FLdRfVar var_8C
  loc_9D9A33: FLdPr Me
  loc_9D9A36: MemLdPr RsFrm
  loc_9D9A39:  = Me.RecordCount
  loc_9D9A3E: ILdRf var_8C
  loc_9D9A41: FStR4 var_88
  loc_9D9A44: ExitProcCbHresult
  loc_9D9A4A: ILdRf var_2701
End Sub

Public Sub AddNew(CodiInju, FealInju, DetaInju, DefiInju, CoadInju, HoreInju, HoofInju, ApleInju, ReseInju, KireInju, KiofInju) 'B387BC
  'Data Table: 430A50
  loc_B38548: ILdRf FealInju
  loc_B3854B: FStStrCopy var_88
  loc_B3854E: ILdRf DetaInju
  loc_B38551: FStStrCopy var_8C
  loc_B38554: FLdRfVar var_90
  loc_B38557: ILdRf var_88
  loc_B3855A: FLdI2 CodiInju
  loc_B3855D: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_B38562: ILdRf var_90
  loc_B38565: LitStr vbNullString
  loc_B38568: NeStr
  loc_B3856A: FFree1Str var_90
  loc_B3856D: BranchF loc_B3857B
  loc_B38570: LitStr "LA INSTANCIA YA EXISTE. Reintente..."
  loc_B38573: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B38578: Branch loc_B387BA
  loc_B3857B: LitStr "INSERT INTO instjudi (CodiInju, FealInju, DetaInju, DefiInju, CoadInju, HoreInju, HoofInju, ApleInju, ReseInju, KireInju, KiofInju) VALUES ("
  loc_B3857E: FLdI2 CodiInju
  loc_B38581: CStrUI1
  loc_B38583: FStStrNoPop var_90
  loc_B38586: ConcatStr
  loc_B38587: FStStrNoPop var_94
  loc_B3858A: LitStr ",'"
  loc_B3858D: ConcatStr
  loc_B3858E: FStStrNoPop var_C8
  loc_B38591: LitI4 1
  loc_B38596: LitI4 1
  loc_B3859B: LitVarStr var_B4, "yyyy-mm-dd"
  loc_B385A0: FStVarCopyObj var_C4
  loc_B385A3: FLdRfVar var_C4
  loc_B385A6: FLdRfVar var_88
  loc_B385A9: CVarRef
  loc_B385AE: ImpAdCallI2 Format$(, )
  loc_B385B3: FStStrNoPop var_CC
  loc_B385B6: ConcatStr
  loc_B385B7: FStStrNoPop var_D0
  loc_B385BA: LitStr "','"
  loc_B385BD: ConcatStr
  loc_B385BE: FStStrNoPop var_D4
  loc_B385C1: ILdRf var_8C
  loc_B385C4: ConcatStr
  loc_B385C5: FStStrNoPop var_D8
  loc_B385C8: LitStr "',"
  loc_B385CB: ConcatStr
  loc_B385CC: FStStrNoPop var_E0
  loc_B385CF: LitI4 0
  loc_B385D4: LitI4 -1
  loc_B385D9: LitI4 1
  loc_B385DE: LitStr "."
  loc_B385E1: LitStr ","
  loc_B385E4: FLdFPR8 DefiInju
  loc_B385E7: CStrR8
  loc_B385E9: FStStrNoPop var_DC
  loc_B385EC: ImpAdCallI2 Replace(, , , , , )
  loc_B385F1: FStStrNoPop var_E4
  loc_B385F4: ConcatStr
  loc_B385F5: FStStrNoPop var_E8
  loc_B385F8: LitStr ","
  loc_B385FB: ConcatStr
  loc_B385FC: FStStrNoPop var_F0
  loc_B385FF: LitI4 0
  loc_B38604: LitI4 -1
  loc_B38609: LitI4 1
  loc_B3860E: LitStr "."
  loc_B38611: LitStr ","
  loc_B38614: FLdFPR8 HoreInju
  loc_B38617: CStrR8
  loc_B38619: FStStrNoPop var_EC
  loc_B3861C: ImpAdCallI2 Replace(, , , , , )
  loc_B38621: FStStrNoPop var_F4
  loc_B38624: ConcatStr
  loc_B38625: FStStrNoPop var_F8
  loc_B38628: LitStr ","
  loc_B3862B: ConcatStr
  loc_B3862C: FStStrNoPop var_100
  loc_B3862F: LitI4 0
  loc_B38634: LitI4 -1
  loc_B38639: LitI4 1
  loc_B3863E: LitStr "."
  loc_B38641: LitStr ","
  loc_B38644: FLdFPR8 ApleInju
  loc_B38647: CStrR8
  loc_B38649: FStStrNoPop var_FC
  loc_B3864C: ImpAdCallI2 Replace(, , , , , )
  loc_B38651: FStStrNoPop var_104
  loc_B38654: ConcatStr
  loc_B38655: FStStrNoPop var_108
  loc_B38658: LitStr ","
  loc_B3865B: ConcatStr
  loc_B3865C: FStStrNoPop var_110
  loc_B3865F: LitI4 0
  loc_B38664: LitI4 -1
  loc_B38669: LitI4 1
  loc_B3866E: LitStr "."
  loc_B38671: LitStr ","
  loc_B38674: FLdFPR8 KireInju
  loc_B38677: CStrR8
  loc_B38679: FStStrNoPop var_10C
  loc_B3867C: ImpAdCallI2 Replace(, , , , , )
  loc_B38681: FStStrNoPop var_114
  loc_B38684: ConcatStr
  loc_B38685: FStStrNoPop var_118
  loc_B38688: LitStr ","
  loc_B3868B: ConcatStr
  loc_B3868C: FStStrNoPop var_120
  loc_B3868F: LitI4 0
  loc_B38694: LitI4 -1
  loc_B38699: LitI4 1
  loc_B3869E: LitStr "."
  loc_B386A1: LitStr ","
  loc_B386A4: FLdFPR8 arg_38
  loc_B386A7: CStrR8
  loc_B386A9: FStStrNoPop var_11C
  loc_B386AC: ImpAdCallI2 Replace(, , , , , )
  loc_B386B1: FStStrNoPop var_124
  loc_B386B4: ConcatStr
  loc_B386B5: FStStrNoPop var_128
  loc_B386B8: LitStr ","
  loc_B386BB: ConcatStr
  loc_B386BC: FStStrNoPop var_130
  loc_B386BF: LitI4 0
  loc_B386C4: LitI4 -1
  loc_B386C9: LitI4 1
  loc_B386CE: LitStr "."
  loc_B386D1: LitStr ","
  loc_B386D4: FLdFPR8 AddNew0
  loc_B386D7: CStrR8
  loc_B386D9: FStStrNoPop var_12C
  loc_B386DC: ImpAdCallI2 Replace(, , , , , )
  loc_B386E1: FStStrNoPop var_134
  loc_B386E4: ConcatStr
  loc_B386E5: FStStrNoPop var_138
  loc_B386E8: LitStr ","
  loc_B386EB: ConcatStr
  loc_B386EC: FStStrNoPop var_140
  loc_B386EF: LitI4 0
  loc_B386F4: LitI4 -1
  loc_B386F9: LitI4 1
  loc_B386FE: LitStr "."
  loc_B38701: LitStr ","
  loc_B38704: FLdFPR8 AddNew8
  loc_B38707: CStrR8
  loc_B38709: FStStrNoPop var_13C
  loc_B3870C: ImpAdCallI2 Replace(, , , , , )
  loc_B38711: FStStrNoPop var_144
  loc_B38714: ConcatStr
  loc_B38715: FStStrNoPop var_148
  loc_B38718: LitStr ","
  loc_B3871B: ConcatStr
  loc_B3871C: FStStrNoPop var_150
  loc_B3871F: LitI4 0
  loc_B38724: LitI4 -1
  loc_B38729: LitI4 1
  loc_B3872E: LitStr "."
  loc_B38731: LitStr ","
  loc_B38734: FLdFPR8 arg_50
  loc_B38737: CStrR8
  loc_B38739: FStStrNoPop var_14C
  loc_B3873C: ImpAdCallI2 Replace(, , , , , )
  loc_B38741: FStStrNoPop var_154
  loc_B38744: ConcatStr
  loc_B38745: FStStrNoPop var_158
  loc_B38748: LitStr ");"
  loc_B3874B: ConcatStr
  loc_B3874C: FStStrNoPop var_15C
  loc_B3874F: Call EjecutarRsCls(from_stack_1v)
  loc_B38754: FFreeStr var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_90 = "": var_94 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_B387A7: FFree1Var var_C4 = ""
  loc_B387AA: Call Requery()
  loc_B387AF: ILdRf var_88
  loc_B387B2: FLdI2 CodiInju
  loc_B387B5: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_B387BA: ExitProcHresult
End Sub

Public Sub Modificar(CodiInju, FealInju, DetaInju, DefiInju, CoadInju, HoreInju, HoofInju, ApleInju, ReseInju, KireInju, KiofInju) 'B38B0C
  'Data Table: 430A50
  loc_B38898: ILdRf FealInju
  loc_B3889B: FStStrCopy var_88
  loc_B3889E: ILdRf DetaInju
  loc_B388A1: FStStrCopy var_8C
  loc_B388A4: FLdRfVar var_90
  loc_B388A7: ILdRf var_88
  loc_B388AA: FLdI2 CodiInju
  loc_B388AD: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_B388B2: ILdRf var_90
  loc_B388B5: LitStr vbNullString
  loc_B388B8: EqStr
  loc_B388BA: FFree1Str var_90
  loc_B388BD: BranchF loc_B388CB
  loc_B388C0: LitStr "La Instancia Judicial NO EXISTE. Reintente..."
  loc_B388C3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B388C8: Branch loc_B38AFA
  loc_B388CB: LitStr "UPDATE instjudi SET DetaInju = '"
  loc_B388CE: ILdRf var_8C
  loc_B388D1: ConcatStr
  loc_B388D2: FStStrNoPop var_90
  loc_B388D5: LitStr "', DefiInju = "
  loc_B388D8: ConcatStr
  loc_B388D9: FStStrNoPop var_98
  loc_B388DC: LitI4 0
  loc_B388E1: LitI4 -1
  loc_B388E6: LitI4 1
  loc_B388EB: LitStr "."
  loc_B388EE: LitStr ","
  loc_B388F1: FLdFPR8 DefiInju
  loc_B388F4: CStrR8
  loc_B388F6: FStStrNoPop var_94
  loc_B388F9: ImpAdCallI2 Replace(, , , , , )
  loc_B388FE: FStStrNoPop var_9C
  loc_B38901: ConcatStr
  loc_B38902: FStStrNoPop var_A0
  loc_B38905: LitStr ", CoadInju = "
  loc_B38908: ConcatStr
  loc_B38909: FStStrNoPop var_A8
  loc_B3890C: LitI4 0
  loc_B38911: LitI4 -1
  loc_B38916: LitI4 1
  loc_B3891B: LitStr "."
  loc_B3891E: LitStr ","
  loc_B38921: FLdFPR8 HoreInju
  loc_B38924: CStrR8
  loc_B38926: FStStrNoPop var_A4
  loc_B38929: ImpAdCallI2 Replace(, , , , , )
  loc_B3892E: FStStrNoPop var_AC
  loc_B38931: ConcatStr
  loc_B38932: FStStrNoPop var_B0
  loc_B38935: LitStr ", HoreInju = "
  loc_B38938: ConcatStr
  loc_B38939: FStStrNoPop var_B8
  loc_B3893C: LitI4 0
  loc_B38941: LitI4 -1
  loc_B38946: LitI4 1
  loc_B3894B: LitStr "."
  loc_B3894E: LitStr ","
  loc_B38951: FLdFPR8 ApleInju
  loc_B38954: CStrR8
  loc_B38956: FStStrNoPop var_B4
  loc_B38959: ImpAdCallI2 Replace(, , , , , )
  loc_B3895E: FStStrNoPop var_BC
  loc_B38961: ConcatStr
  loc_B38962: FStStrNoPop var_C0
  loc_B38965: LitStr ", HoofInju = "
  loc_B38968: ConcatStr
  loc_B38969: FStStrNoPop var_C8
  loc_B3896C: LitI4 0
  loc_B38971: LitI4 -1
  loc_B38976: LitI4 1
  loc_B3897B: LitStr "."
  loc_B3897E: LitStr ","
  loc_B38981: FLdFPR8 KireInju
  loc_B38984: CStrR8
  loc_B38986: FStStrNoPop var_C4
  loc_B38989: ImpAdCallI2 Replace(, , , , , )
  loc_B3898E: FStStrNoPop var_CC
  loc_B38991: ConcatStr
  loc_B38992: FStStrNoPop var_D0
  loc_B38995: LitStr ", ApleInju = "
  loc_B38998: ConcatStr
  loc_B38999: FStStrNoPop var_D8
  loc_B3899C: LitI4 0
  loc_B389A1: LitI4 -1
  loc_B389A6: LitI4 1
  loc_B389AB: LitStr "."
  loc_B389AE: LitStr ","
  loc_B389B1: FLdFPR8 arg_38
  loc_B389B4: CStrR8
  loc_B389B6: FStStrNoPop var_D4
  loc_B389B9: ImpAdCallI2 Replace(, , , , , )
  loc_B389BE: FStStrNoPop var_DC
  loc_B389C1: ConcatStr
  loc_B389C2: FStStrNoPop var_E0
  loc_B389C5: LitStr ", ReseInju = "
  loc_B389C8: ConcatStr
  loc_B389C9: FStStrNoPop var_E8
  loc_B389CC: LitI4 0
  loc_B389D1: LitI4 -1
  loc_B389D6: LitI4 1
  loc_B389DB: LitStr "."
  loc_B389DE: LitStr ","
  loc_B389E1: FLdFPR8 Modificar0
  loc_B389E4: CStrR8
  loc_B389E6: FStStrNoPop var_E4
  loc_B389E9: ImpAdCallI2 Replace(, , , , , )
  loc_B389EE: FStStrNoPop var_EC
  loc_B389F1: ConcatStr
  loc_B389F2: FStStrNoPop var_F0
  loc_B389F5: LitStr ", KireInju = "
  loc_B389F8: ConcatStr
  loc_B389F9: FStStrNoPop var_F8
  loc_B389FC: LitI4 0
  loc_B38A01: LitI4 -1
  loc_B38A06: LitI4 1
  loc_B38A0B: LitStr "."
  loc_B38A0E: LitStr ","
  loc_B38A11: FLdFPR8 Modificar8
  loc_B38A14: CStrR8
  loc_B38A16: FStStrNoPop var_F4
  loc_B38A19: ImpAdCallI2 Replace(, , , , , )
  loc_B38A1E: FStStrNoPop var_FC
  loc_B38A21: ConcatStr
  loc_B38A22: FStStrNoPop var_100
  loc_B38A25: LitStr ", KiofInju = "
  loc_B38A28: ConcatStr
  loc_B38A29: FStStrNoPop var_108
  loc_B38A2C: LitI4 0
  loc_B38A31: LitI4 -1
  loc_B38A36: LitI4 1
  loc_B38A3B: LitStr "."
  loc_B38A3E: LitStr ","
  loc_B38A41: FLdFPR8 arg_50
  loc_B38A44: CStrR8
  loc_B38A46: FStStrNoPop var_104
  loc_B38A49: ImpAdCallI2 Replace(, , , , , )
  loc_B38A4E: FStStrNoPop var_10C
  loc_B38A51: ConcatStr
  loc_B38A52: FStStrNoPop var_110
  loc_B38A55: LitStr " WHERE CodiInju = "
  loc_B38A58: ConcatStr
  loc_B38A59: FStStrNoPop var_114
  loc_B38A5C: FLdI2 CodiInju
  loc_B38A5F: CStrUI1
  loc_B38A61: FStStrNoPop var_118
  loc_B38A64: ConcatStr
  loc_B38A65: FStStrNoPop var_11C
  loc_B38A68: LitStr " AND FealInju = '"
  loc_B38A6B: ConcatStr
  loc_B38A6C: FStStrNoPop var_150
  loc_B38A6F: LitI4 1
  loc_B38A74: LitI4 1
  loc_B38A79: LitVarStr var_13C, "yyyy-mm-dd"
  loc_B38A7E: FStVarCopyObj var_14C
  loc_B38A81: FLdRfVar var_14C
  loc_B38A84: FLdRfVar var_88
  loc_B38A87: CVarRef
  loc_B38A8C: ImpAdCallI2 Format$(, )
  loc_B38A91: FStStrNoPop var_154
  loc_B38A94: ConcatStr
  loc_B38A95: FStStrNoPop var_158
  loc_B38A98: LitStr "';"
  loc_B38A9B: ConcatStr
  loc_B38A9C: FStStrNoPop var_15C
  loc_B38A9F: Call EjecutarRsCls(from_stack_1v)
  loc_B38AA4: FFreeStr var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_B38AF7: FFree1Var var_14C = ""
  loc_B38AFA: Call Requery()
  loc_B38AFF: ILdRf var_88
  loc_B38B02: FLdI2 CodiInju
  loc_B38B05: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_B38B0A: ExitProcHresult
End Sub

Public Sub Requery() '9E6948
  'Data Table: 430A50
  loc_9E6924: LitI4 -1
  loc_9E6929: FLdPr Me
  loc_9E692C: MemLdPr RsFrm
  loc_9E692F: Me.Requery from_stack_1
  loc_9E6934: LitVarStr var_94, "Primary"
  loc_9E6939: PopAdLdVar
  loc_9E693A: FLdPr Me
  loc_9E693D: LateIdCall
  loc_9E6945: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A45210
  'Data Table: 430A50
  loc_A451BC: ILdRf sSelect
  loc_A451BF: FStStrCopy var_88
  loc_A451C2: LitNothing
  loc_A451C4: CastAd
  loc_A451C7: FStAdFuncNoPop
  loc_A451CA: FLdPr Me
  loc_A451CD: MemStAd
  loc_A451D1: FFree1Ad var_8C
  loc_A451D4: New Recordset
  loc_A451D8: FStAdFuncNoPop
  loc_A451DB: FLdPr Me
  loc_A451DE: MemStAd
  loc_A451E2: FFree1Ad var_8C
  loc_A451E5: LitI4 -1
  loc_A451EA: LitI4 3
  loc_A451EF: LitI4 3
  loc_A451F4: ImpAdLdI4 MemVar_D9301C
  loc_A451F7: CVarAd
  loc_A451FB: PopAdLdVar
  loc_A451FC: ILdRf var_88
  loc_A451FF: CVarStr var_9C
  loc_A45202: PopAdLdVar
  loc_A45203: FLdPr Me
  loc_A45206: MemLdPr global_56
  loc_A45209: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4520E: ExitProcHresult
End Sub

Public Sub EjecutarRsCls1(sSelect) 'A47A88
  'Data Table: 430A50
  loc_A47A34: ILdRf sSelect
  loc_A47A37: FStStrCopy var_88
  loc_A47A3A: LitNothing
  loc_A47A3C: CastAd
  loc_A47A3F: FStAdFuncNoPop
  loc_A47A42: FLdPr Me
  loc_A47A45: MemStAd
  loc_A47A49: FFree1Ad var_8C
  loc_A47A4C: New Recordset
  loc_A47A50: FStAdFuncNoPop
  loc_A47A53: FLdPr Me
  loc_A47A56: MemStAd
  loc_A47A5A: FFree1Ad var_8C
  loc_A47A5D: LitI4 -1
  loc_A47A62: LitI4 3
  loc_A47A67: LitI4 3
  loc_A47A6C: ImpAdLdI4 MemVar_D9301C
  loc_A47A6F: CVarAd
  loc_A47A73: PopAdLdVar
  loc_A47A74: ILdRf var_88
  loc_A47A77: CVarStr var_9C
  loc_A47A7A: PopAdLdVar
  loc_A47A7B: FLdPr Me
  loc_A47A7E: MemLdPr global_60
  loc_A47A81: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A47A86: ExitProcHresult
End Sub

Public Sub EjecutarRsCls2(sSelect) 'A4A530
  'Data Table: 430A50
  loc_A4A4DC: ILdRf sSelect
  loc_A4A4DF: FStStrCopy var_88
  loc_A4A4E2: LitNothing
  loc_A4A4E4: CastAd
  loc_A4A4E7: FStAdFuncNoPop
  loc_A4A4EA: FLdPr Me
  loc_A4A4ED: MemStAd
  loc_A4A4F1: FFree1Ad var_8C
  loc_A4A4F4: New Recordset
  loc_A4A4F8: FStAdFuncNoPop
  loc_A4A4FB: FLdPr Me
  loc_A4A4FE: MemStAd
  loc_A4A502: FFree1Ad var_8C
  loc_A4A505: LitI4 -1
  loc_A4A50A: LitI4 3
  loc_A4A50F: LitI4 3
  loc_A4A514: ImpAdLdI4 MemVar_D9301C
  loc_A4A517: CVarAd
  loc_A4A51B: PopAdLdVar
  loc_A4A51C: ILdRf var_88
  loc_A4A51F: CVarStr var_9C
  loc_A4A522: PopAdLdVar
  loc_A4A523: FLdPr Me
  loc_A4A526: MemLdPr global_64
  loc_A4A529: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4A52E: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) 'A6057C
  'Data Table: 430A50
  loc_A60518: ILdRf sSelect
  loc_A6051B: FStStrCopy var_88
  loc_A6051E: LitNothing
  loc_A60520: CastAd
  loc_A60523: FStAdFuncNoPop
  loc_A60526: FLdPr Me
  loc_A60529: MemStAd
  loc_A6052D: FFree1Ad var_8C
  loc_A60530: New Recordset
  loc_A60534: FStAdFuncNoPop
  loc_A60537: FLdPr Me
  loc_A6053A: MemStAd
  loc_A6053E: FFree1Ad var_8C
  loc_A60541: LitI4 -1
  loc_A60546: LitI4 3
  loc_A6054B: LitI4 3
  loc_A60550: ImpAdLdI4 MemVar_D9301C
  loc_A60553: CVarAd
  loc_A60557: PopAdLdVar
  loc_A60558: ILdRf var_88
  loc_A6055B: CVarStr var_9C
  loc_A6055E: PopAdLdVar
  loc_A6055F: FLdPr Me
  loc_A60562: MemLdPr RsFrm
  loc_A60565: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6056A: LitVarStr var_9C, "Primary"
  loc_A6056F: PopAdLdVar
  loc_A60570: FLdPr Me
  loc_A60573: LateIdCall
  loc_A6057B: ExitProcHresult
End Sub

Public Property Get DataSource() '9F2B5C
  'Data Table: 430A50
  loc_9F2B38: ZeroRetVal
  loc_9F2B3A: FLdRfVar var_8C
  loc_9F2B3D: FLdPr Me
  loc_9F2B40: MemLdPr RsFrm
  loc_9F2B43:  = Me.DataSource
  loc_9F2B48: ILdRf var_8C
  loc_9F2B4B: CastAd
  loc_9F2B4E: FStAdFunc var_88
  loc_9F2B51: FFree1Ad var_8C
  loc_9F2B54: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9D96BC
  'Data Table: 430A50
  loc_9D96A0: FLdRfVar var_8C
  loc_9D96A3: FLdPr Me
  loc_9D96A6: MemLdPr RsFrm
  loc_9D96A9:  = Me.EditMode
  loc_9D96AE: ILdRf var_8C
  loc_9D96B1: FStR4 var_88
  loc_9D96B4: ExitProcCbHresult
End Sub

Public Property Get CodiInju() 'A2C8A4
  'Data Table: 430A50
  loc_A2C860: FLdRfVar var_B0
  loc_A2C863: FLdRfVar var_A0
  loc_A2C866: LitVarStr var_9C, "CodiInju"
  loc_A2C86B: PopAdLdVar
  loc_A2C86C: FLdRfVar var_8C
  loc_A2C86F: FLdPr Me
  loc_A2C872: MemLdPr RsFrm
  loc_A2C875:  = Me.Fields
  loc_A2C87A: FLdPr var_8C
  loc_A2C87D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C882: FLdPr var_A0
  loc_A2C885:  = Me.Value
  loc_A2C88A: FLdRfVar var_B0
  loc_A2C88D: CI2Var
  loc_A2C88E: FStI2 var_86
  loc_A2C891: FFreeAd var_8C = ""
  loc_A2C898: FFree1Var var_B0 = ""
  loc_A2C89B: ExitProcCbHresult
End Sub

Public Property Let CodiInju(vDato) '9D9624
  'Data Table: 430A50
  loc_9D9608: FLdI2 vDato
  loc_9D960B: CVarI2 var_A4
  loc_9D960E: PopAdLdVar
  loc_9D960F: LitVarStr var_94, "CodiInju"
  loc_9D9614: PopAdLdVar
  loc_9D9615: FLdPr Me
  loc_9D9618: MemLdPr RsFrm
  loc_9D961B: Me.Collect = from_stack_1
  loc_9D9620: ExitProcHresult
End Sub

Public Property Get FealInju() 'A19CC0
  'Data Table: 430A50
  loc_A19C88: ZeroRetValVar
  loc_A19C8A: FLdRfVar var_AC
  loc_A19C8D: LitVarStr var_A8, "FealInju"
  loc_A19C92: PopAdLdVar
  loc_A19C93: FLdRfVar var_98
  loc_A19C96: FLdPr Me
  loc_A19C99: MemLdPr RsFrm
  loc_A19C9C:  = Me.Fields
  loc_A19CA1: FLdPr var_98
  loc_A19CA4: from_stack_2 = Me.Item(from_stack_1)
  loc_A19CA9: FLdZeroAd var_AC
  loc_A19CAC: CVarAd
  loc_A19CB0: FStVar FealInju
  loc_A19CB4: FFree1Ad var_98
  loc_A19CB7: ExitProcCbHresult
End Sub

Public Property Let FealInju(vDato) '9E05AC
  'Data Table: 430A50
  loc_9E0590: FDupVar
  loc_9E0596: FLdVar var_94
  loc_9E059A: LitVarStr var_A4, "FealInju"
  loc_9E059F: PopAdLdVar
  loc_9E05A0: FLdPr Me
  loc_9E05A3: MemLdPr RsFrm
  loc_9E05A6: Me.Collect = from_stack_1
  loc_9E05AB: ExitProcHresult
End Sub

Public Property Get DetaInju() 'A3EC08
  'Data Table: 430A50
  loc_A3EBC4: ZeroRetVal
  loc_A3EBC6: FLdRfVar var_B0
  loc_A3EBC9: FLdRfVar var_A0
  loc_A3EBCC: LitVarStr var_9C, "DetaInju"
  loc_A3EBD1: PopAdLdVar
  loc_A3EBD2: FLdRfVar var_8C
  loc_A3EBD5: FLdPr Me
  loc_A3EBD8: MemLdPr RsFrm
  loc_A3EBDB:  = Me.Fields
  loc_A3EBE0: FLdPr var_8C
  loc_A3EBE3: from_stack_2 = Me.Item(from_stack_1)
  loc_A3EBE8: FLdPr var_A0
  loc_A3EBEB:  = Me.Value
  loc_A3EBF0: FLdRfVar var_B0
  loc_A3EBF3: CStrVarTmp
  loc_A3EBF4: FStStr var_88
  loc_A3EBF7: FFreeAd var_8C = ""
  loc_A3EBFE: FFree1Var var_B0 = ""
  loc_A3EC01: ExitProcCbHresult
End Sub

Public Property Let DetaInju(vDato) '9E6DDC
  'Data Table: 430A50
  loc_9E6DBC: ILdRf vDato
  loc_9E6DBF: FStStrCopy var_88
  loc_9E6DC2: ILdRf var_88
  loc_9E6DC5: CVarStr var_A8
  loc_9E6DC8: PopAdLdVar
  loc_9E6DC9: LitVarStr var_98, "DetaInju"
  loc_9E6DCE: PopAdLdVar
  loc_9E6DCF: FLdPr Me
  loc_9E6DD2: MemLdPr RsFrm
  loc_9E6DD5: Me.Collect = from_stack_1
  loc_9E6DDA: ExitProcHresult
End Sub

Public Property Get DefiInju() 'A32AA4
  'Data Table: 430A50
  loc_A32A60: FLdRfVar var_B4
  loc_A32A63: FLdRfVar var_A4
  loc_A32A66: LitVarStr var_A0, "DefiInju"
  loc_A32A6B: PopAdLdVar
  loc_A32A6C: FLdRfVar var_90
  loc_A32A6F: FLdPr Me
  loc_A32A72: MemLdPr RsFrm
  loc_A32A75:  = Me.Fields
  loc_A32A7A: FLdPr var_90
  loc_A32A7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A32A82: FLdPr var_A4
  loc_A32A85:  = Me.Value
  loc_A32A8A: FLdRfVar var_B4
  loc_A32A8D: CR4Var
  loc_A32A8E: FStFPR8 var_8C
  loc_A32A91: FFreeAd var_90 = ""
  loc_A32A98: FFree1Var var_B4 = ""
  loc_A32A9B: ExitProcCbHresult
End Sub

Public Property Let DefiInju(vDato) '9D9410
  'Data Table: 430A50
  loc_9D93F4: FLdFPR8 vDato
  loc_9D93F7: CVarR8
  loc_9D93FB: PopAdLdVar
  loc_9D93FC: LitVarStr var_94, "DefiInju"
  loc_9D9401: PopAdLdVar
  loc_9D9402: FLdPr Me
  loc_9D9405: MemLdPr RsFrm
  loc_9D9408: Me.Collect = from_stack_1
  loc_9D940D: ExitProcHresult
End Sub

Public Property Get CoadInju() 'A2CF24
  'Data Table: 430A50
  loc_A2CEE0: FLdRfVar var_B4
  loc_A2CEE3: FLdRfVar var_A4
  loc_A2CEE6: LitVarStr var_A0, "CoadInju"
  loc_A2CEEB: PopAdLdVar
  loc_A2CEEC: FLdRfVar var_90
  loc_A2CEEF: FLdPr Me
  loc_A2CEF2: MemLdPr RsFrm
  loc_A2CEF5:  = Me.Fields
  loc_A2CEFA: FLdPr var_90
  loc_A2CEFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2CF02: FLdPr var_A4
  loc_A2CF05:  = Me.Value
  loc_A2CF0A: FLdRfVar var_B4
  loc_A2CF0D: CR4Var
  loc_A2CF0E: FStFPR8 var_8C
  loc_A2CF11: FFreeAd var_90 = ""
  loc_A2CF18: FFree1Var var_B4 = ""
  loc_A2CF1B: ExitProcCbHresult
End Sub

Public Property Let CoadInju(vDato) '9D932C
  'Data Table: 430A50
  loc_9D9310: FLdFPR8 vDato
  loc_9D9313: CVarR8
  loc_9D9317: PopAdLdVar
  loc_9D9318: LitVarStr var_94, "CoadInju"
  loc_9D931D: PopAdLdVar
  loc_9D931E: FLdPr Me
  loc_9D9321: MemLdPr RsFrm
  loc_9D9324: Me.Collect = from_stack_1
  loc_9D9329: ExitProcHresult
End Sub

Public Property Get HoreInju() 'A2D0A4
  'Data Table: 430A50
  loc_A2D060: FLdRfVar var_B4
  loc_A2D063: FLdRfVar var_A4
  loc_A2D066: LitVarStr var_A0, "HoreInju"
  loc_A2D06B: PopAdLdVar
  loc_A2D06C: FLdRfVar var_90
  loc_A2D06F: FLdPr Me
  loc_A2D072: MemLdPr RsFrm
  loc_A2D075:  = Me.Fields
  loc_A2D07A: FLdPr var_90
  loc_A2D07D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D082: FLdPr var_A4
  loc_A2D085:  = Me.Value
  loc_A2D08A: FLdRfVar var_B4
  loc_A2D08D: CR4Var
  loc_A2D08E: FStFPR8 var_8C
  loc_A2D091: FFreeAd var_90 = ""
  loc_A2D098: FFree1Var var_B4 = ""
  loc_A2D09B: ExitProcCbHresult
End Sub

Public Property Let HoreInju(vDato) '9D91FC
  'Data Table: 430A50
  loc_9D91E0: FLdFPR8 vDato
  loc_9D91E3: CVarR8
  loc_9D91E7: PopAdLdVar
  loc_9D91E8: LitVarStr var_94, "HoreInju"
  loc_9D91ED: PopAdLdVar
  loc_9D91EE: FLdPr Me
  loc_9D91F1: MemLdPr RsFrm
  loc_9D91F4: Me.Collect = from_stack_1
  loc_9D91F9: ExitProcHresult
End Sub

Public Property Get HoofInju() 'A2D124
  'Data Table: 430A50
  loc_A2D0E0: FLdRfVar var_B4
  loc_A2D0E3: FLdRfVar var_A4
  loc_A2D0E6: LitVarStr var_A0, "HoofInju"
  loc_A2D0EB: PopAdLdVar
  loc_A2D0EC: FLdRfVar var_90
  loc_A2D0EF: FLdPr Me
  loc_A2D0F2: MemLdPr RsFrm
  loc_A2D0F5:  = Me.Fields
  loc_A2D0FA: FLdPr var_90
  loc_A2D0FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D102: FLdPr var_A4
  loc_A2D105:  = Me.Value
  loc_A2D10A: FLdRfVar var_B4
  loc_A2D10D: CR4Var
  loc_A2D10E: FStFPR8 var_8C
  loc_A2D111: FFreeAd var_90 = ""
  loc_A2D118: FFree1Var var_B4 = ""
  loc_A2D11B: ExitProcCbHresult
End Sub

Public Property Let HoofInju(vDato) '9D9164
  'Data Table: 430A50
  loc_9D9148: FLdFPR8 vDato
  loc_9D914B: CVarR8
  loc_9D914F: PopAdLdVar
  loc_9D9150: LitVarStr var_94, "HoofInju"
  loc_9D9155: PopAdLdVar
  loc_9D9156: FLdPr Me
  loc_9D9159: MemLdPr RsFrm
  loc_9D915C: Me.Collect = from_stack_1
  loc_9D9161: ExitProcHresult
End Sub

Public Property Get ApleInju() 'A2D1A4
  'Data Table: 430A50
  loc_A2D160: FLdRfVar var_B4
  loc_A2D163: FLdRfVar var_A4
  loc_A2D166: LitVarStr var_A0, "ApleInju"
  loc_A2D16B: PopAdLdVar
  loc_A2D16C: FLdRfVar var_90
  loc_A2D16F: FLdPr Me
  loc_A2D172: MemLdPr RsFrm
  loc_A2D175:  = Me.Fields
  loc_A2D17A: FLdPr var_90
  loc_A2D17D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D182: FLdPr var_A4
  loc_A2D185:  = Me.Value
  loc_A2D18A: FLdRfVar var_B4
  loc_A2D18D: CR4Var
  loc_A2D18E: FStFPR8 var_8C
  loc_A2D191: FFreeAd var_90 = ""
  loc_A2D198: FFree1Var var_B4 = ""
  loc_A2D19B: ExitProcCbHresult
End Sub

Public Property Let ApleInju(vDato) '9D90CC
  'Data Table: 430A50
  loc_9D90B0: FLdFPR8 vDato
  loc_9D90B3: CVarR8
  loc_9D90B7: PopAdLdVar
  loc_9D90B8: LitVarStr var_94, "ApleInju"
  loc_9D90BD: PopAdLdVar
  loc_9D90BE: FLdPr Me
  loc_9D90C1: MemLdPr RsFrm
  loc_9D90C4: Me.Collect = from_stack_1
  loc_9D90C9: ExitProcHresult
End Sub

Public Property Get ReseInju() 'A2EF24
  'Data Table: 430A50
  loc_A2EEE0: FLdRfVar var_B4
  loc_A2EEE3: FLdRfVar var_A4
  loc_A2EEE6: LitVarStr var_A0, "ReseInju"
  loc_A2EEEB: PopAdLdVar
  loc_A2EEEC: FLdRfVar var_90
  loc_A2EEEF: FLdPr Me
  loc_A2EEF2: MemLdPr RsFrm
  loc_A2EEF5:  = Me.Fields
  loc_A2EEFA: FLdPr var_90
  loc_A2EEFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2EF02: FLdPr var_A4
  loc_A2EF05:  = Me.Value
  loc_A2EF0A: FLdRfVar var_B4
  loc_A2EF0D: CR4Var
  loc_A2EF0E: FStFPR8 var_8C
  loc_A2EF11: FFreeAd var_90 = ""
  loc_A2EF18: FFree1Var var_B4 = ""
  loc_A2EF1B: ExitProcCbHresult
End Sub

Public Property Let ReseInju(vDato) '9D8FE8
  'Data Table: 430A50
  loc_9D8FCC: FLdFPR8 vDato
  loc_9D8FCF: CVarR8
  loc_9D8FD3: PopAdLdVar
  loc_9D8FD4: LitVarStr var_94, "ReseInju"
  loc_9D8FD9: PopAdLdVar
  loc_9D8FDA: FLdPr Me
  loc_9D8FDD: MemLdPr RsFrm
  loc_9D8FE0: Me.Collect = from_stack_1
  loc_9D8FE5: ExitProcHresult
End Sub

Public Function ValidaClave(CodiInju, FealInju) 'A8EB90
  'Data Table: 430A50
  loc_A8EB04: ILdRf FealInju
  loc_A8EB07: FStStrCopy var_8C
  loc_A8EB0A: ZeroRetVal
  loc_A8EB0C: LitStr "SELECT CodiInju, FealInju FROM instjudi WHERE CodiInju = "
  loc_A8EB0F: FLdI2 CodiInju
  loc_A8EB12: CStrUI1
  loc_A8EB14: FStStrNoPop var_90
  loc_A8EB17: ConcatStr
  loc_A8EB18: FStStrNoPop ValidaClave
  loc_A8EB1B: LitStr " AND FealInju = '"
  loc_A8EB1E: ConcatStr
  loc_A8EB1F: FStStrNoPop var_C8
  loc_A8EB22: LitI4 1
  loc_A8EB27: LitI4 1
  loc_A8EB2C: LitVarStr var_B4, "yyyy-mm-dd"
  loc_A8EB31: FStVarCopyObj var_C4
  loc_A8EB34: FLdRfVar var_C4
  loc_A8EB37: FLdRfVar var_8C
  loc_A8EB3A: CVarRef
  loc_A8EB3F: ImpAdCallI2 Format$(, )
  loc_A8EB44: FStStrNoPop var_CC
  loc_A8EB47: ConcatStr
  loc_A8EB48: FStStrNoPop var_D0
  loc_A8EB4B: LitStr "'"
  loc_A8EB4E: ConcatStr
  loc_A8EB4F: FStStrNoPop var_D4
  loc_A8EB52: Call EjecutarRsCls1(from_stack_1v)
  loc_A8EB57: FFreeStr var_90 = "": ValidaClave = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_A8EB66: FFree1Var var_C4 = ""
  loc_A8EB69: FLdRfVar var_D8
  loc_A8EB6C: FLdPr Me
  loc_A8EB6F: MemLdPr global_60
  loc_A8EB72:  = Me.RecordCount
  loc_A8EB77: ILdRf var_D8
  loc_A8EB7A: LitI4 0
  loc_A8EB7F: GtI4
  loc_A8EB80: BranchF loc_A8EB89
  loc_A8EB83: LitStr "La Instancia Judicial YA EXISTE. Reintente..."
  loc_A8EB86: FStStrCopy var_88
  loc_A8EB89: ExitProcCbHresult
End Function

Public Sub Encontrar(CodiInju, FealInju) 'A706A8
  'Data Table: 430A50
  loc_A70640: ILdRf FealInju
  loc_A70643: FStStrCopy var_88
  loc_A70646: LitStr "CodiInju = "
  loc_A70649: FLdI2 CodiInju
  loc_A7064C: CStrUI1
  loc_A7064E: FStStrNoPop var_8C
  loc_A70651: ConcatStr
  loc_A70652: PopTmpLdAdStr
  loc_A70656: Call Find(from_stack_1v)
  loc_A7065B: FFreeStr var_8C = ""
  loc_A70662: LitStr "FealInju = '"
  loc_A70665: LitI4 1
  loc_A7066A: LitI4 1
  loc_A7066F: LitVarStr var_B0, "yyyy-mm-dd"
  loc_A70674: FStVarCopyObj var_C0
  loc_A70677: FLdRfVar var_C0
  loc_A7067A: FLdRfVar var_88
  loc_A7067D: CVarRef
  loc_A70682: ImpAdCallI2 Format$(, )
  loc_A70687: FStStrNoPop var_8C
  loc_A7068A: ConcatStr
  loc_A7068B: FStStrNoPop var_90
  loc_A7068E: LitStr "'"
  loc_A70691: ConcatStr
  loc_A70692: PopTmpLdAdStr
  loc_A70696: Call Find(from_stack_1v)
  loc_A7069B: FFreeStr var_8C = "": var_90 = ""
  loc_A706A4: FFree1Var var_C0 = ""
  loc_A706A7: ExitProcHresult
End Sub

Public Function BuscaSiguienteInstancia(iCodiInju) 'AD6068
  'Data Table: 430A50
  loc_AD5F34: FLdI2 iCodiInju
  loc_AD5F37: LitI2_Byte 0
  loc_AD5F39: NeI2
  loc_AD5F3A: BranchF loc_AD5FE9
  loc_AD5F3D: LitStr "SELECT * FROM instjudi WHERE CodiInju >= "
  loc_AD5F40: FLdI2 iCodiInju
  loc_AD5F43: CStrUI1
  loc_AD5F45: FStStrNoPop var_8C
  loc_AD5F48: ConcatStr
  loc_AD5F49: FStStrNoPop var_90
  loc_AD5F4C: LitStr " ORDER BY CodiInju"
  loc_AD5F4F: ConcatStr
  loc_AD5F50: FStStrNoPop BuscaSiguienteInstancia
  loc_AD5F53: Call EjecutarRsCls(from_stack_1v)
  loc_AD5F58: FFreeStr var_8C = "": var_90 = ""
  loc_AD5F61: FLdRfVar var_98
  loc_AD5F64: FLdPr Me
  loc_AD5F67: MemLdPr global_56
  loc_AD5F6A:  = Me.RecordCount
  loc_AD5F6F: ILdRf var_98
  loc_AD5F72: LitI4 0
  loc_AD5F77: GtI4
  loc_AD5F78: BranchF loc_AD5FE1
  loc_AD5F7B: FLdPr Me
  loc_AD5F7E: MemLdPr global_56
  loc_AD5F81: Me.MoveNext
  loc_AD5F86: FLdRfVar var_9A
  loc_AD5F89: FLdPr Me
  loc_AD5F8C: MemLdPr global_56
  loc_AD5F8F:  = Me.EOF
  loc_AD5F94: FLdI2 var_9A
  loc_AD5F97: NotI4
  loc_AD5F98: BranchF loc_AD5FD9
  loc_AD5F9B: FLdRfVar var_C4
  loc_AD5F9E: FLdRfVar var_B4
  loc_AD5FA1: LitVarStr var_B0, "CodiInju"
  loc_AD5FA6: PopAdLdVar
  loc_AD5FA7: FLdRfVar var_A0
  loc_AD5FAA: FLdPr Me
  loc_AD5FAD: MemLdPr global_56
  loc_AD5FB0:  = Me.Fields
  loc_AD5FB5: FLdPr var_A0
  loc_AD5FB8: from_stack_2 = Me.Item(from_stack_1)
  loc_AD5FBD: FLdPr var_B4
  loc_AD5FC0:  = Me.Value
  loc_AD5FC5: FLdRfVar var_C4
  loc_AD5FC8: CI2Var
  loc_AD5FC9: FStI2 var_86
  loc_AD5FCC: FFreeAd var_A0 = ""
  loc_AD5FD3: FFree1Var var_C4 = ""
  loc_AD5FD6: Branch loc_AD5FDE
  loc_AD5FD9: LitI2_Byte 0
  loc_AD5FDB: FStI2 var_86
  loc_AD5FDE: Branch loc_AD5FE6
  loc_AD5FE1: LitI2_Byte 0
  loc_AD5FE3: FStI2 var_86
  loc_AD5FE6: Branch loc_AD6062
  loc_AD5FE9: FLdI2 iCodiInju
  loc_AD5FEC: LitI2_Byte 0
  loc_AD5FEE: EqI2
  loc_AD5FEF: BranchF loc_AD6062
  loc_AD5FF2: LitStr "SELECT * FROM instjudi ORDER BY CodiInju"
  loc_AD5FF5: Call EjecutarRsCls(from_stack_1v)
  loc_AD5FFA: FLdRfVar var_98
  loc_AD5FFD: FLdPr Me
  loc_AD6000: MemLdPr global_56
  loc_AD6003:  = Me.RecordCount
  loc_AD6008: ILdRf var_98
  loc_AD600B: LitI4 0
  loc_AD6010: GtI4
  loc_AD6011: BranchF loc_AD605D
  loc_AD6014: FLdPr Me
  loc_AD6017: MemLdPr global_56
  loc_AD601A: Me.MoveFirst
  loc_AD601F: FLdRfVar var_C4
  loc_AD6022: FLdRfVar var_B4
  loc_AD6025: LitVarStr var_B0, "CodiInju"
  loc_AD602A: PopAdLdVar
  loc_AD602B: FLdRfVar var_A0
  loc_AD602E: FLdPr Me
  loc_AD6031: MemLdPr global_56
  loc_AD6034:  = Me.Fields
  loc_AD6039: FLdPr var_A0
  loc_AD603C: from_stack_2 = Me.Item(from_stack_1)
  loc_AD6041: FLdPr var_B4
  loc_AD6044:  = Me.Value
  loc_AD6049: FLdRfVar var_C4
  loc_AD604C: CI2Var
  loc_AD604D: FStI2 var_86
  loc_AD6050: FFreeAd var_A0 = ""
  loc_AD6057: FFree1Var var_C4 = ""
  loc_AD605A: Branch loc_AD6062
  loc_AD605D: LitI2_Byte 0
  loc_AD605F: FStI2 var_86
  loc_AD6062: ExitProcCbHresult
End Function

Public Function BuscaGastosInstancia(lNumeApre, iCodiInju, sFealInju, iCodiReca, iCodiOfju, doCapiApre, doRecaApre, ikilometros) 'C32B4C
  'Data Table: 430A50
  loc_C3201C: ILdRf sFealInju
  loc_C3201F: FStStrCopy var_90
  loc_C32022: LitI4 2
  loc_C32027: FLdFPR8 doCapiApre
  loc_C3202A: FLdFPR8 ikilometros
  loc_C3202D: AddR8
  loc_C3202E: CVarR8
  loc_C32032: FLdRfVar var_13C
  loc_C32035: ImpAdCallFPR4  = Round(, )
  loc_C3203A: FLdRfVar var_13C
  loc_C3203D: CR4Var
  loc_C3203E: FStFPR8 var_98
  loc_C32041: FFreeVar var_12C = ""
  loc_C32048: FLdI2 iCodiReca
  loc_C3204B: CUI1I2
  loc_C3204D: ImpAdCallI2  = Proc_270_47_A79CB0()
  loc_C32052: FStStrNoPop var_140
  loc_C32055: CUI1Str
  loc_C32057: FStUI1 var_F2
  loc_C3205B: FFree1Str var_140
  loc_C3205E: LitStr "SELECT CodiPaap,CamiPaap,CamaPaap,AplePaap, DefiPaap, TajuPaap, HrmiPaap, HrmaPaap FROM paraapre ORDER BY CodiPaap"
  loc_C32061: FLdRfVar var_108
  loc_C32064: NewIfNullPr clsparaapre
  loc_C32067: Call clsparaapre.RedefineRS(from_stack_1v)
  loc_C3206C: FLdRfVar var_144
  loc_C3206F: FLdRfVar var_108
  loc_C32072: NewIfNullPr clsparaapre
  loc_C32075: from_stack_1 = clsparaapre.RecordCount
  loc_C3207A: ILdRf var_144
  loc_C3207D: LitI4 0
  loc_C32082: GtI4
  loc_C32083: BranchF loc_C32B36
  loc_C32086: FLdRfVar var_108
  loc_C32089: NewIfNullPr clsparaapre
  loc_C3208C: Call clsparaapre.MoveLast()
  loc_C32091: LitStr "SELECT * FROM instjudi WHERE CodiInju = "
  loc_C32094: FLdI2 iCodiInju
  loc_C32097: CStrUI1
  loc_C32099: FStStrNoPop var_140
  loc_C3209C: ConcatStr
  loc_C3209D: FStStrNoPop var_148
  loc_C320A0: LitStr " AND FealInju <= "
  loc_C320A3: ConcatStr
  loc_C320A4: FStStrNoPop var_15C
  loc_C320A7: LitI4 1
  loc_C320AC: LitI4 1
  loc_C320B1: LitVarStr var_158, "'yyyy-mm-dd'"
  loc_C320B6: FStVarCopyObj var_12C
  loc_C320B9: FLdRfVar var_12C
  loc_C320BC: FLdRfVar var_90
  loc_C320BF: CVarRef
  loc_C320C4: ImpAdCallI2 Format$(, )
  loc_C320C9: FStStrNoPop var_160
  loc_C320CC: ConcatStr
  loc_C320CD: FStStrNoPop var_164
  loc_C320D0: Call EjecutarRsCls(from_stack_1v)
  loc_C320D5: FFreeStr var_140 = "": var_148 = "": var_15C = "": var_160 = ""
  loc_C320E2: FFree1Var var_12C = ""
  loc_C320E5: FLdRfVar var_144
  loc_C320E8: FLdPr Me
  loc_C320EB: MemLdPr global_56
  loc_C320EE:  = Me.RecordCount
  loc_C320F3: ILdRf var_144
  loc_C320F6: LitI4 0
  loc_C320FB: GtI4
  loc_C320FC: BranchF loc_C325ED
  loc_C320FF: FLdRfVar var_12C
  loc_C32102: FLdRfVar var_16C
  loc_C32105: LitVarStr var_11C, "CoadInju"
  loc_C3210A: PopAdLdVar
  loc_C3210B: FLdRfVar var_168
  loc_C3210E: FLdPr Me
  loc_C32111: MemLdPr global_56
  loc_C32114:  = Me.Fields
  loc_C32119: FLdPr var_168
  loc_C3211C: from_stack_2 = Me.Item(from_stack_1)
  loc_C32121: FLdPr var_16C
  loc_C32124:  = Me.Value
  loc_C32129: LitI4 2
  loc_C3212E: FLdFPR8 var_98
  loc_C32131: FLdRfVar var_12C
  loc_C32134: FnCDblVar
  loc_C32136: MulR8
  loc_C32137: LitI2_Byte &H64
  loc_C32139: CR8I2
  loc_C3213A: DivR8
  loc_C3213B: CVarR8
  loc_C3213F: FLdRfVar var_17C
  loc_C32142: ImpAdCallFPR4  = Round(, )
  loc_C32147: FLdRfVar var_17C
  loc_C3214A: CR4Var
  loc_C3214B: FStFPR8 var_A0
  loc_C3214E: FFreeAd var_168 = ""
  loc_C32155: FFreeVar var_12C = "": var_13C = ""
  loc_C3215E: FLdRfVar var_184
  loc_C32161: FLdRfVar var_108
  loc_C32164: NewIfNullPr clsparaapre
  loc_C32167: from_stack_1 = clsparaapre.CamiPaap
  loc_C3216C: FLdFPR8 var_A0
  loc_C3216F: FLdFPR8 var_184
  loc_C32172: FnCDblR8
  loc_C32174: LtR8
  loc_C32175: FLdFPR8 var_A0
  loc_C32178: LitI2_Byte 0
  loc_C3217A: CR8I2
  loc_C3217B: GtR4
  loc_C3217C: AndI4
  loc_C3217D: BranchF loc_C32199
  loc_C32180: FLdRfVar var_184
  loc_C32183: FLdRfVar var_108
  loc_C32186: NewIfNullPr clsparaapre
  loc_C32189: from_stack_1 = clsparaapre.CamiPaap
  loc_C3218E: FLdFPR8 var_184
  loc_C32191: FnCDblR8
  loc_C32193: FStFPR8 var_A0
  loc_C32196: Branch loc_C321C9
  loc_C32199: FLdRfVar var_184
  loc_C3219C: FLdRfVar var_108
  loc_C3219F: NewIfNullPr clsparaapre
  loc_C321A2: from_stack_1 = clsparaapre.CamaPaap
  loc_C321A7: FLdFPR8 var_A0
  loc_C321AA: FLdFPR8 var_184
  loc_C321AD: FnCDblR8
  loc_C321AF: GtR4
  loc_C321B0: BranchF loc_C321C9
  loc_C321B3: FLdRfVar var_184
  loc_C321B6: FLdRfVar var_108
  loc_C321B9: NewIfNullPr clsparaapre
  loc_C321BC: from_stack_1 = clsparaapre.CamaPaap
  loc_C321C1: FLdFPR8 var_184
  loc_C321C4: FnCDblR8
  loc_C321C6: FStFPR8 var_A0
  loc_C321C9: FLdUI1
  loc_C321CD: CI2UI1
  loc_C321CF: LitI2_Byte 1
  loc_C321D1: EqI2
  loc_C321D2: BranchF loc_C32202
  loc_C321D5: LitI4 2
  loc_C321DA: FLdFPR8 var_A0
  loc_C321DD: LitI2_Byte &H15
  loc_C321DF: CR8I2
  loc_C321E0: MulR8
  loc_C321E1: LitI2_Byte &H64
  loc_C321E3: CR8I2
  loc_C321E4: DivR8
  loc_C321E5: CVarR8
  loc_C321E9: FLdRfVar var_13C
  loc_C321EC: ImpAdCallFPR4  = Round(, )
  loc_C321F1: FLdRfVar var_13C
  loc_C321F4: CR4Var
  loc_C321F5: FStFPR8 var_A8
  loc_C321F8: FFreeVar var_12C = ""
  loc_C321FF: Branch loc_C32208
  loc_C32202: LitI2_Byte 0
  loc_C32204: CR8I2
  loc_C32205: FStFPR8 var_A8
  loc_C32208: FLdRfVar var_12C
  loc_C3220B: FLdRfVar var_16C
  loc_C3220E: LitVarStr var_11C, "ReseInju"
  loc_C32213: PopAdLdVar
  loc_C32214: FLdRfVar var_168
  loc_C32217: FLdPr Me
  loc_C3221A: MemLdPr global_56
  loc_C3221D:  = Me.Fields
  loc_C32222: FLdPr var_168
  loc_C32225: from_stack_2 = Me.Item(from_stack_1)
  loc_C3222A: FLdPr var_16C
  loc_C3222D:  = Me.Value
  loc_C32232: LitI4 2
  loc_C32237: FLdFPR8 var_98
  loc_C3223A: FLdRfVar var_12C
  loc_C3223D: FnCDblVar
  loc_C3223F: MulR8
  loc_C32240: LitI2_Byte &H64
  loc_C32242: CR8I2
  loc_C32243: DivR8
  loc_C32244: CVarR8
  loc_C32248: FLdRfVar var_17C
  loc_C3224B: ImpAdCallFPR4  = Round(, )
  loc_C32250: FLdRfVar var_17C
  loc_C32253: CR4Var
  loc_C32254: FStFPR8 var_B0
  loc_C32257: FFreeAd var_168 = ""
  loc_C3225E: FFreeVar var_12C = "": var_13C = ""
  loc_C32267: FLdRfVar var_12C
  loc_C3226A: FLdRfVar var_16C
  loc_C3226D: LitVarStr var_11C, "ApleInju"
  loc_C32272: PopAdLdVar
  loc_C32273: FLdRfVar var_168
  loc_C32276: FLdPr Me
  loc_C32279: MemLdPr global_56
  loc_C3227C:  = Me.Fields
  loc_C32281: FLdPr var_168
  loc_C32284: from_stack_2 = Me.Item(from_stack_1)
  loc_C32289: FLdPr var_16C
  loc_C3228C:  = Me.Value
  loc_C32291: LitI4 2
  loc_C32296: FLdFPR8 var_98
  loc_C32299: FLdRfVar var_12C
  loc_C3229C: FnCDblVar
  loc_C3229E: MulR8
  loc_C3229F: LitI2_Byte &H64
  loc_C322A1: CR8I2
  loc_C322A2: DivR8
  loc_C322A3: CVarR8
  loc_C322A7: FLdRfVar var_17C
  loc_C322AA: ImpAdCallFPR4  = Round(, )
  loc_C322AF: FLdRfVar var_17C
  loc_C322B2: CR4Var
  loc_C322B3: FStFPR8 var_B8
  loc_C322B6: FFreeAd var_168 = ""
  loc_C322BD: FFreeVar var_12C = "": var_13C = ""
  loc_C322C6: FLdRfVar var_184
  loc_C322C9: FLdRfVar var_108
  loc_C322CC: NewIfNullPr clsparaapre
  loc_C322CF: from_stack_1 = clsparaapre.AplePaap
  loc_C322D4: FLdRfVar var_12C
  loc_C322D7: FLdRfVar var_16C
  loc_C322DA: LitVarStr var_11C, "ApleInju"
  loc_C322DF: PopAdLdVar
  loc_C322E0: FLdRfVar var_168
  loc_C322E3: FLdPr Me
  loc_C322E6: MemLdPr global_56
  loc_C322E9:  = Me.Fields
  loc_C322EE: FLdPr var_168
  loc_C322F1: from_stack_2 = Me.Item(from_stack_1)
  loc_C322F6: FLdPr var_16C
  loc_C322F9:  = Me.Value
  loc_C322FE: FLdRfVar var_18C
  loc_C32301: FLdRfVar var_108
  loc_C32304: NewIfNullPr clsparaapre
  loc_C32307: from_stack_1 = clsparaapre.AplePaap
  loc_C3230C: FLdRfVar var_B8
  loc_C3230F: CVarRef
  loc_C32314: FLdFPR8 var_18C
  loc_C32317: FnCDblR8
  loc_C32319: CVarR8
  loc_C3231D: FLdFPR8 var_B8
  loc_C32320: FLdFPR8 var_184
  loc_C32323: FnCDblR8
  loc_C32325: LtR8
  loc_C32326: FLdRfVar var_12C
  loc_C32329: FnCDblVar
  loc_C3232B: LitI2_Byte 0
  loc_C3232D: CR8I2
  loc_C3232E: GtR4
  loc_C3232F: AndI4
  loc_C32330: CVarBoolI2 var_158
  loc_C32334: FLdRfVar var_17C
  loc_C32337: ImpAdCallFPR4  = IIf(, , )
  loc_C3233C: FLdRfVar var_17C
  loc_C3233F: CR4Var
  loc_C32340: FStFPR8 var_B8
  loc_C32343: FFreeAd var_168 = ""
  loc_C3234A: FFreeVar var_12C = "": var_158 = "": var_13C = ""
  loc_C32355: FLdI2 iCodiInju
  loc_C32358: LitI2_Byte 1
  loc_C3235A: GtI2
  loc_C3235B: BranchF loc_C32426
  loc_C3235E: LitStr "SELECT DesdEsap, HastEsap, ImpoEsap FROM escaapre WHERE CodiPaap = "
  loc_C32361: FLdRfVar var_1AE
  loc_C32364: FLdRfVar var_108
  loc_C32367: NewIfNullPr clsparaapre
  loc_C3236A: from_stack_1 = clsparaapre.CodiPaap
  loc_C3236F: FLdI2 var_1AE
  loc_C32372: CStrUI1
  loc_C32374: FStStrNoPop var_140
  loc_C32377: ConcatStr
  loc_C32378: FStStrNoPop var_148
  loc_C3237B: LitStr " AND TipoEsap = 'Tasa de Justicia' ORDER BY CodiPaap, CodiEsap"
  loc_C3237E: ConcatStr
  loc_C3237F: FStStrNoPop var_15C
  loc_C32382: FLdRfVar var_10C
  loc_C32385: NewIfNullPr clsescaapre
  loc_C32388: Call clsescaapre.RedefineRS(from_stack_1v)
  loc_C3238D: FFreeStr var_140 = "": var_148 = ""
  loc_C32396: FLdRfVar var_144
  loc_C32399: FLdRfVar var_10C
  loc_C3239C: NewIfNullPr clsescaapre
  loc_C3239F: from_stack_1 = clsescaapre.RecordCount
  loc_C323A4: ILdRf var_144
  loc_C323A7: LitI4 0
  loc_C323AC: GtI4
  loc_C323AD: BranchF loc_C32426
  loc_C323B0: FLdRfVar var_10C
  loc_C323B3: NewIfNullPr clsescaapre
  loc_C323B6: Call clsescaapre.MoveFirst()
  loc_C323BB: FLdRfVar var_1AE
  loc_C323BE: FLdRfVar var_10C
  loc_C323C1: NewIfNullPr clsescaapre
  loc_C323C4: from_stack_1 = clsescaapre.EOF
  loc_C323C9: FLdI2 var_1AE
  loc_C323CC: NotI4
  loc_C323CD: BranchF loc_C32426
  loc_C323D0: FLdRfVar var_184
  loc_C323D3: FLdRfVar var_10C
  loc_C323D6: NewIfNullPr clsescaapre
  loc_C323D9: from_stack_1 = clsescaapre.DesdEsap
  loc_C323DE: FLdRfVar var_18C
  loc_C323E1: FLdRfVar var_10C
  loc_C323E4: NewIfNullPr clsescaapre
  loc_C323E7: from_stack_1 = clsescaapre.HastEsap
  loc_C323EC: FLdFPR8 var_98
  loc_C323EF: FLdFPR8 var_184
  loc_C323F2: FnCDblR8
  loc_C323F4: GtR4
  loc_C323F5: FLdFPR8 var_98
  loc_C323F8: FLdFPR8 var_18C
  loc_C323FB: FnCDblR8
  loc_C323FD: LtR8
  loc_C323FE: AndI4
  loc_C323FF: BranchF loc_C32418
  loc_C32402: FLdRfVar var_184
  loc_C32405: FLdRfVar var_10C
  loc_C32408: NewIfNullPr clsescaapre
  loc_C3240B: from_stack_1 = clsescaapre.ImpoEsap
  loc_C32410: FLdFPR8 var_184
  loc_C32413: FnCDblR8
  loc_C32415: FStFPR8 var_B0
  loc_C32418: FLdRfVar var_10C
  loc_C3241B: NewIfNullPr clsescaapre
  loc_C3241E: Call clsescaapre.MoveSiguiente()
  loc_C32423: Branch loc_C323BB
  loc_C32426: FLdRfVar var_12C
  loc_C32429: FLdRfVar var_1B4
  loc_C3242C: LitVarStr var_11C, "TajuPaap"
  loc_C32431: PopAdLdVar
  loc_C32432: FLdRfVar var_16C
  loc_C32435: FLdRfVar var_168
  loc_C32438: FLdRfVar var_108
  loc_C3243B: NewIfNullPr clsparaapre
  loc_C3243E: from_stack_1v = clsparaapre.RsFrmGet()
  loc_C32443: FLdPr var_168
  loc_C32446:  = Me.Fields
  loc_C3244B: FLdPr var_16C
  loc_C3244E: from_stack_2 = Me.Item(from_stack_1)
  loc_C32453: FLdPr var_1B4
  loc_C32456:  = Me.Value
  loc_C3245B: FLdRfVar var_13C
  loc_C3245E: FLdRfVar var_1BC
  loc_C32461: LitVarStr var_158, "ReseInju"
  loc_C32466: PopAdLdVar
  loc_C32467: FLdRfVar var_1B8
  loc_C3246A: FLdPr Me
  loc_C3246D: MemLdPr global_56
  loc_C32470:  = Me.Fields
  loc_C32475: FLdPr var_1B8
  loc_C32478: from_stack_2 = Me.Item(from_stack_1)
  loc_C3247D: FLdPr var_1BC
  loc_C32480:  = Me.Value
  loc_C32485: FLdRfVar var_17C
  loc_C32488: FLdRfVar var_1C8
  loc_C3248B: LitVarStr var_19C, "TajuPaap"
  loc_C32490: PopAdLdVar
  loc_C32491: FLdRfVar var_1C4
  loc_C32494: FLdRfVar var_1C0
  loc_C32497: FLdRfVar var_108
  loc_C3249A: NewIfNullPr clsparaapre
  loc_C3249D: from_stack_1v = clsparaapre.RsFrmGet()
  loc_C324A2: FLdPr var_1C0
  loc_C324A5:  = Me.Fields
  loc_C324AA: FLdPr var_1C4
  loc_C324AD: from_stack_2 = Me.Item(from_stack_1)
  loc_C324B2: FLdPr var_1C8
  loc_C324B5:  = Me.Value
  loc_C324BA: FLdRfVar var_B0
  loc_C324BD: CVarRef
  loc_C324C2: FLdRfVar var_17C
  loc_C324C5: FnCDblVar
  loc_C324C7: CVarR8
  loc_C324CB: FLdFPR8 var_B0
  loc_C324CE: FLdRfVar var_12C
  loc_C324D1: FnCDblVar
  loc_C324D3: LtR8
  loc_C324D4: FLdRfVar var_13C
  loc_C324D7: FnCDblVar
  loc_C324D9: LitI2_Byte 0
  loc_C324DB: CR8I2
  loc_C324DC: GtR4
  loc_C324DD: AndI4
  loc_C324DE: CVarBoolI2 var_1AC
  loc_C324E2: FLdRfVar var_208
  loc_C324E5: ImpAdCallFPR4  = IIf(, , )
  loc_C324EA: FLdRfVar var_208
  loc_C324ED: CR4Var
  loc_C324EE: FStFPR8 var_B0
  loc_C324F1: FFreeAd var_168 = "": var_16C = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = ""
  loc_C32504: FFreeVar var_12C = "": var_13C = "": var_17C = "": var_1AC = "": var_1E8 = ""
  loc_C32513: FLdRfVar var_12C
  loc_C32516: FLdRfVar var_16C
  loc_C32519: LitVarStr var_11C, "DefiInju"
  loc_C3251E: PopAdLdVar
  loc_C3251F: FLdRfVar var_168
  loc_C32522: FLdPr Me
  loc_C32525: MemLdPr global_56
  loc_C32528:  = Me.Fields
  loc_C3252D: FLdPr var_168
  loc_C32530: from_stack_2 = Me.Item(from_stack_1)
  loc_C32535: FLdPr var_16C
  loc_C32538:  = Me.Value
  loc_C3253D: LitI4 2
  loc_C32542: FLdFPR8 var_B0
  loc_C32545: FLdRfVar var_12C
  loc_C32548: FnCDblVar
  loc_C3254A: MulR8
  loc_C3254B: LitI2_Byte &H64
  loc_C3254D: CR8I2
  loc_C3254E: DivR8
  loc_C3254F: CVarR8
  loc_C32553: FLdRfVar var_17C
  loc_C32556: ImpAdCallFPR4  = Round(, )
  loc_C3255B: LitVarI2 var_1E8, 0
  loc_C32560: FLdRfVar var_17C
  loc_C32563: FLdFPR8 var_B0
  loc_C32566: LitI2_Byte 0
  loc_C32568: CR8I2
  loc_C32569: GtR4
  loc_C3256A: CVarBoolI2 var_19C
  loc_C3256E: FLdRfVar var_208
  loc_C32571: ImpAdCallFPR4  = IIf(, , )
  loc_C32576: FLdRfVar var_208
  loc_C32579: CR4Var
  loc_C3257A: FStFPR8 var_C0
  loc_C3257D: FFreeAd var_168 = ""
  loc_C32584: FFreeVar var_12C = "": var_13C = "": var_19C = "": var_17C = "": var_1E8 = ""
  loc_C32593: FLdRfVar var_184
  loc_C32596: FLdRfVar var_108
  loc_C32599: NewIfNullPr clsparaapre
  loc_C3259C: from_stack_1 = clsparaapre.DefiPaap
  loc_C325A1: FLdRfVar var_18C
  loc_C325A4: FLdRfVar var_108
  loc_C325A7: NewIfNullPr clsparaapre
  loc_C325AA: from_stack_1 = clsparaapre.DefiPaap
  loc_C325AF: FLdRfVar var_C0
  loc_C325B2: CVarRef
  loc_C325B7: FLdFPR8 var_18C
  loc_C325BA: FnCDblR8
  loc_C325BC: CVarR8
  loc_C325C0: FLdFPR8 var_C0
  loc_C325C3: LitI2_Byte 0
  loc_C325C5: CR8I2
  loc_C325C6: GtR4
  loc_C325C7: FLdFPR8 var_C0
  loc_C325CA: FLdFPR8 var_184
  loc_C325CD: FnCDblR8
  loc_C325CF: LtR8
  loc_C325D0: AndI4
  loc_C325D1: CVarBoolI2 var_11C
  loc_C325D5: FLdRfVar var_13C
  loc_C325D8: ImpAdCallFPR4  = IIf(, , )
  loc_C325DD: FLdRfVar var_13C
  loc_C325E0: CR4Var
  loc_C325E1: FStFPR8 var_C0
  loc_C325E4: FFreeVar var_11C = "": var_12C = ""
  loc_C325ED: LitI2_Byte 0
  loc_C325EF: CR8I2
  loc_C325F0: FStFPR8 var_E8
  loc_C325F3: LitI2_Byte 0
  loc_C325F5: CR8I2
  loc_C325F6: FStFPR8 var_F0
  loc_C325F9: LitI2_Byte 0
  loc_C325FB: CR8I2
  loc_C325FC: FStFPR8 var_D0
  loc_C325FF: LitI2_Byte 0
  loc_C32601: CR8I2
  loc_C32602: FStFPR8 var_E0
  loc_C32605: LitI2_Byte 0
  loc_C32607: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C3260C: FStFPR8 var_184
  loc_C3260F: LitStr "SELECT instapre.CodiInju, instapre.CodiReca, instapre.CodiOfju, SUM(instjudi.HoreInju) HoreInju, "
  loc_C32612: LitStr " SUM(instjudi.HoofInju) HoofInju, SUM(IF(KiofInju=1,ImpoMoap,0)) MoofMoap FROM instapre "
  loc_C32615: ConcatStr
  loc_C32616: FStStrNoPop var_140
  loc_C32619: LitStr " INNER JOIN instjudi ON instjudi.CodiInju = instapre.CodiInju"
  loc_C3261C: ConcatStr
  loc_C3261D: FStStrNoPop var_148
  loc_C32620: LitStr " INNER JOIN moviapre ON moviapre.ZonaMoap = instapre.ZonaMoap"
  loc_C32623: ConcatStr
  loc_C32624: FStStrNoPop var_15C
  loc_C32627: LitStr " WHERE NumeApre = "
  loc_C3262A: ConcatStr
  loc_C3262B: FStStrNoPop var_160
  loc_C3262E: ILdRf lNumeApre
  loc_C32631: CStrI4
  loc_C32633: FStStrNoPop var_164
  loc_C32636: ConcatStr
  loc_C32637: FStStrNoPop var_20C
  loc_C3263A: LitStr " AND FechInap <= '"
  loc_C3263D: ConcatStr
  loc_C3263E: FStStrNoPop var_210
  loc_C32641: LitI4 1
  loc_C32646: LitI4 1
  loc_C3264B: LitVarStr var_158, "yyyy-mm-dd"
  loc_C32650: FStVarCopyObj var_13C
  loc_C32653: FLdRfVar var_13C
  loc_C32656: FLdFPR8 var_184
  loc_C32659: CVarDate var_12C
  loc_C3265D: ImpAdCallI2 Format$(, )
  loc_C32662: FStStrNoPop var_214
  loc_C32665: ConcatStr
  loc_C32666: FStStrNoPop var_218
  loc_C32669: LitStr "' ORDER BY instapre.NumeApre, instapre.CodiInju"
  loc_C3266C: ConcatStr
  loc_C3266D: FStStrNoPop var_21C
  loc_C32670: Call EjecutarRsCls1(from_stack_1v)
  loc_C32675: FFreeStr var_140 = "": var_148 = "": var_15C = "": var_160 = "": var_164 = "": var_20C = "": var_210 = "": var_214 = "": var_218 = ""
  loc_C3268C: FFreeVar var_12C = ""
  loc_C32693: FLdRfVar var_144
  loc_C32696: FLdPr Me
  loc_C32699: MemLdPr global_60
  loc_C3269C:  = Me.RecordCount
  loc_C326A1: ILdRf var_144
  loc_C326A4: LitI4 0
  loc_C326A9: GtI4
  loc_C326AA: BranchF loc_C328C1
  loc_C326AD: FLdPr Me
  loc_C326B0: MemLdPr global_60
  loc_C326B3: Me.MoveFirst
  loc_C326B8: FLdRfVar var_12C
  loc_C326BB: FLdRfVar var_16C
  loc_C326BE: LitVarStr var_11C, "HoreInju"
  loc_C326C3: PopAdLdVar
  loc_C326C4: FLdRfVar var_168
  loc_C326C7: FLdPr Me
  loc_C326CA: MemLdPr global_60
  loc_C326CD:  = Me.Fields
  loc_C326D2: FLdPr var_168
  loc_C326D5: from_stack_2 = Me.Item(from_stack_1)
  loc_C326DA: FLdPr var_16C
  loc_C326DD:  = Me.Value
  loc_C326E2: LitI4 2
  loc_C326E7: FLdFPR8 var_98
  loc_C326EA: FLdRfVar var_12C
  loc_C326ED: FnCDblVar
  loc_C326EF: MulR8
  loc_C326F0: LitI2_Byte &H64
  loc_C326F2: CR8I2
  loc_C326F3: DivR8
  loc_C326F4: CVarR8
  loc_C326F8: FLdRfVar var_17C
  loc_C326FB: ImpAdCallFPR4  = Round(, )
  loc_C32700: FLdFPR8 var_C8
  loc_C32703: CVarR8
  loc_C32707: LitVarI2 var_1E8, 0
  loc_C3270C: FLdRfVar var_17C
  loc_C3270F: FLdI2 iCodiReca
  loc_C32712: LitI2_Byte 0
  loc_C32714: NeI2
  loc_C32715: CVarBoolI2 var_19C
  loc_C32719: FLdRfVar var_208
  loc_C3271C: ImpAdCallFPR4  = IIf(, , )
  loc_C32721: FLdRfVar var_208
  loc_C32724: AddVar var_22C
  loc_C32728: CR4Var
  loc_C32729: FStFPR8 var_C8
  loc_C3272C: FFreeAd var_168 = ""
  loc_C32733: FFreeVar var_12C = "": var_13C = "": var_19C = "": var_17C = "": var_1E8 = "": var_208 = ""
  loc_C32744: FLdRfVar var_12C
  loc_C32747: FLdRfVar var_16C
  loc_C3274A: LitVarStr var_11C, "HoofInju"
  loc_C3274F: PopAdLdVar
  loc_C32750: FLdRfVar var_168
  loc_C32753: FLdPr Me
  loc_C32756: MemLdPr global_60
  loc_C32759:  = Me.Fields
  loc_C3275E: FLdPr var_168
  loc_C32761: from_stack_2 = Me.Item(from_stack_1)
  loc_C32766: FLdPr var_16C
  loc_C32769:  = Me.Value
  loc_C3276E: LitI4 2
  loc_C32773: FLdFPR8 var_98
  loc_C32776: FLdRfVar var_12C
  loc_C32779: FnCDblVar
  loc_C3277B: MulR8
  loc_C3277C: LitI2_Byte &H64
  loc_C3277E: CR8I2
  loc_C3277F: DivR8
  loc_C32780: CVarR8
  loc_C32784: FLdRfVar var_17C
  loc_C32787: ImpAdCallFPR4  = Round(, )
  loc_C3278C: FLdFPR8 var_D8
  loc_C3278F: CVarR8
  loc_C32793: LitVarI2 var_1E8, 0
  loc_C32798: FLdRfVar var_17C
  loc_C3279B: FLdI2 iCodiOfju
  loc_C3279E: LitI2_Byte 0
  loc_C327A0: NeI2
  loc_C327A1: CVarBoolI2 var_19C
  loc_C327A5: FLdRfVar var_208
  loc_C327A8: ImpAdCallFPR4  = IIf(, , )
  loc_C327AD: FLdRfVar var_208
  loc_C327B0: AddVar var_22C
  loc_C327B4: CR4Var
  loc_C327B5: FStFPR8 var_D8
  loc_C327B8: FFreeAd var_168 = ""
  loc_C327BF: FFreeVar var_12C = "": var_13C = "": var_19C = "": var_17C = "": var_1E8 = "": var_208 = ""
  loc_C327D0: FLdRfVar var_12C
  loc_C327D3: FLdRfVar var_16C
  loc_C327D6: LitVarStr var_11C, "CodiReca"
  loc_C327DB: PopAdLdVar
  loc_C327DC: FLdRfVar var_168
  loc_C327DF: FLdPr Me
  loc_C327E2: MemLdPr global_60
  loc_C327E5:  = Me.Fields
  loc_C327EA: FLdPr var_168
  loc_C327ED: from_stack_2 = Me.Item(from_stack_1)
  loc_C327F2: FLdPr var_16C
  loc_C327F5:  = Me.Value
  loc_C327FA: FLdRfVar var_12C
  loc_C327FD: CUI1Var
  loc_C327FF: ImpAdCallI2  = Proc_270_47_A79CB0()
  loc_C32804: FStStrNoPop var_140
  loc_C32807: CUI1Str
  loc_C32809: FStUI1 var_F2
  loc_C3280D: FFree1Str var_140
  loc_C32810: FFreeAd var_168 = ""
  loc_C32817: FFree1Var var_12C = ""
  loc_C3281A: FLdUI1
  loc_C3281E: CI2UI1
  loc_C32820: LitI2_Byte 1
  loc_C32822: EqI2
  loc_C32823: BranchF loc_C32853
  loc_C32826: LitI4 2
  loc_C3282B: FLdFPR8 var_C8
  loc_C3282E: LitI2_Byte &H15
  loc_C32830: CR8I2
  loc_C32831: MulR8
  loc_C32832: LitI2_Byte &H64
  loc_C32834: CR8I2
  loc_C32835: DivR8
  loc_C32836: CVarR8
  loc_C3283A: FLdRfVar var_13C
  loc_C3283D: ImpAdCallFPR4  = Round(, )
  loc_C32842: FLdRfVar var_13C
  loc_C32845: CR4Var
  loc_C32846: FStFPR8 var_D0
  loc_C32849: FFreeVar var_12C = ""
  loc_C32850: Branch loc_C32859
  loc_C32853: LitI2_Byte 0
  loc_C32855: CR8I2
  loc_C32856: FStFPR8 var_D0
  loc_C32859: LitI2_Byte 0
  loc_C3285B: CR8I2
  loc_C3285C: FStFPR8 var_E0
  loc_C3285F: LitI2_Byte 0
  loc_C32861: CR8I2
  loc_C32862: FStFPR8 var_E8
  loc_C32865: FLdRfVar var_12C
  loc_C32868: FLdRfVar var_16C
  loc_C3286B: LitVarStr var_11C, "MoofMoap"
  loc_C32870: PopAdLdVar
  loc_C32871: FLdRfVar var_168
  loc_C32874: FLdPr Me
  loc_C32877: MemLdPr global_60
  loc_C3287A:  = Me.Fields
  loc_C3287F: FLdPr var_168
  loc_C32882: from_stack_2 = Me.Item(from_stack_1)
  loc_C32887: FLdPr var_16C
  loc_C3288A:  = Me.Value
  loc_C3288F: LitI4 2
  loc_C32894: FLdFPR8 var_F0
  loc_C32897: CVarR8
  loc_C3289B: FLdRfVar var_12C
  loc_C3289E: AddVar var_13C
  loc_C328A2: FLdRfVar var_17C
  loc_C328A5: ImpAdCallFPR4  = Round(, )
  loc_C328AA: FLdRfVar var_17C
  loc_C328AD: CR4Var
  loc_C328AE: FStFPR8 var_F0
  loc_C328B1: FFreeAd var_168 = ""
  loc_C328B8: FFreeVar var_12C = "": var_13C = ""
  loc_C328C1: FLdRfVar var_12C
  loc_C328C4: FLdRfVar var_1B4
  loc_C328C7: LitVarStr var_11C, "HrmiPaap"
  loc_C328CC: PopAdLdVar
  loc_C328CD: FLdRfVar var_16C
  loc_C328D0: FLdRfVar var_168
  loc_C328D3: FLdRfVar var_108
  loc_C328D6: NewIfNullPr clsparaapre
  loc_C328D9: from_stack_1v = clsparaapre.RsFrmGet()
  loc_C328DE: FLdPr var_168
  loc_C328E1:  = Me.Fields
  loc_C328E6: FLdPr var_16C
  loc_C328E9: from_stack_2 = Me.Item(from_stack_1)
  loc_C328EE: FLdPr var_1B4
  loc_C328F1:  = Me.Value
  loc_C328F6: FLdFPR8 var_C8
  loc_C328F9: FLdRfVar var_12C
  loc_C328FC: FnCDblVar
  loc_C328FE: LtR8
  loc_C328FF: FLdFPR8 var_C8
  loc_C32902: LitI2_Byte 0
  loc_C32904: CR8I2
  loc_C32905: GtR4
  loc_C32906: AndI4
  loc_C32907: FLdRfVar var_13C
  loc_C3290A: FLdRfVar var_1C0
  loc_C3290D: LitVarStr var_158, "HrmiPaap"
  loc_C32912: PopAdLdVar
  loc_C32913: FLdRfVar var_1BC
  loc_C32916: FLdRfVar var_1B8
  loc_C32919: FLdRfVar var_108
  loc_C3291C: NewIfNullPr clsparaapre
  loc_C3291F: from_stack_1v = clsparaapre.RsFrmGet()
  loc_C32924: FLdPr var_1B8
  loc_C32927:  = Me.Fields
  loc_C3292C: FLdPr var_1BC
  loc_C3292F: from_stack_2 = Me.Item(from_stack_1)
  loc_C32934: FLdPr var_1C0
  loc_C32937:  = Me.Value
  loc_C3293C: FLdRfVar var_13C
  loc_C3293F: FnCDblVar
  loc_C32941: LitI2_Byte 0
  loc_C32943: CR8I2
  loc_C32944: GtR4
  loc_C32945: AndI4
  loc_C32946: FFreeAd var_168 = "": var_16C = "": var_1B4 = "": var_1B8 = "": var_1BC = ""
  loc_C32955: FFreeVar var_12C = ""
  loc_C3295C: BranchF loc_C329EA
  loc_C3295F: FLdRfVar var_12C
  loc_C32962: FLdRfVar var_1B4
  loc_C32965: LitVarStr var_11C, "HrmiPaap"
  loc_C3296A: PopAdLdVar
  loc_C3296B: FLdRfVar var_16C
  loc_C3296E: FLdRfVar var_168
  loc_C32971: FLdRfVar var_108
  loc_C32974: NewIfNullPr clsparaapre
  loc_C32977: from_stack_1v = clsparaapre.RsFrmGet()
  loc_C3297C: FLdPr var_168
  loc_C3297F:  = Me.Fields
  loc_C32984: FLdPr var_16C
  loc_C32987: from_stack_2 = Me.Item(from_stack_1)
  loc_C3298C: FLdPr var_1B4
  loc_C3298F:  = Me.Value
  loc_C32994: FLdRfVar var_12C
  loc_C32997: FnCDblVar
  loc_C32999: FStFPR8 var_C8
  loc_C3299C: FFreeAd var_168 = "": var_16C = ""
  loc_C329A5: FFree1Var var_12C = ""
  loc_C329A8: FLdUI1
  loc_C329AC: CI2UI1
  loc_C329AE: LitI2_Byte 1
  loc_C329B0: EqI2
  loc_C329B1: BranchF loc_C329E1
  loc_C329B4: LitI4 2
  loc_C329B9: FLdFPR8 var_C8
  loc_C329BC: LitI2_Byte &H15
  loc_C329BE: CR8I2
  loc_C329BF: MulR8
  loc_C329C0: LitI2_Byte &H64
  loc_C329C2: CR8I2
  loc_C329C3: DivR8
  loc_C329C4: CVarR8
  loc_C329C8: FLdRfVar var_13C
  loc_C329CB: ImpAdCallFPR4  = Round(, )
  loc_C329D0: FLdRfVar var_13C
  loc_C329D3: CR4Var
  loc_C329D4: FStFPR8 var_D0
  loc_C329D7: FFreeVar var_12C = ""
  loc_C329DE: Branch loc_C329E7
  loc_C329E1: LitI2_Byte 0
  loc_C329E3: CR8I2
  loc_C329E4: FStFPR8 var_D0
  loc_C329E7: Branch loc_C32B08
  loc_C329EA: FLdRfVar var_12C
  loc_C329ED: FLdRfVar var_1B4
  loc_C329F0: LitVarStr var_11C, "HrmaPaap"
  loc_C329F5: PopAdLdVar
  loc_C329F6: FLdRfVar var_16C
  loc_C329F9: FLdRfVar var_168
  loc_C329FC: FLdRfVar var_108
  loc_C329FF: NewIfNullPr clsparaapre
  loc_C32A02: from_stack_1v = clsparaapre.RsFrmGet()
  loc_C32A07: FLdPr var_168
  loc_C32A0A:  = Me.Fields
  loc_C32A0F: FLdPr var_16C
  loc_C32A12: from_stack_2 = Me.Item(from_stack_1)
  loc_C32A17: FLdPr var_1B4
  loc_C32A1A:  = Me.Value
  loc_C32A1F: FLdFPR8 var_C8
  loc_C32A22: FLdRfVar var_12C
  loc_C32A25: FnCDblVar
  loc_C32A27: GtR4
  loc_C32A28: FLdRfVar var_13C
  loc_C32A2B: FLdRfVar var_1C0
  loc_C32A2E: LitVarStr var_158, "HrmaPaap"
  loc_C32A33: PopAdLdVar
  loc_C32A34: FLdRfVar var_1BC
  loc_C32A37: FLdRfVar var_1B8
  loc_C32A3A: FLdRfVar var_108
  loc_C32A3D: NewIfNullPr clsparaapre
  loc_C32A40: from_stack_1v = clsparaapre.RsFrmGet()
  loc_C32A45: FLdPr var_1B8
  loc_C32A48:  = Me.Fields
  loc_C32A4D: FLdPr var_1BC
  loc_C32A50: from_stack_2 = Me.Item(from_stack_1)
  loc_C32A55: FLdPr var_1C0
  loc_C32A58:  = Me.Value
  loc_C32A5D: FLdRfVar var_13C
  loc_C32A60: FnCDblVar
  loc_C32A62: LitI2_Byte 0
  loc_C32A64: CR8I2
  loc_C32A65: GtR4
  loc_C32A66: AndI4
  loc_C32A67: FFreeAd var_168 = "": var_16C = "": var_1B4 = "": var_1B8 = "": var_1BC = ""
  loc_C32A76: FFreeVar var_12C = ""
  loc_C32A7D: BranchF loc_C32B08
  loc_C32A80: FLdRfVar var_12C
  loc_C32A83: FLdRfVar var_1B4
  loc_C32A86: LitVarStr var_11C, "HrmaPaap"
  loc_C32A8B: PopAdLdVar
  loc_C32A8C: FLdRfVar var_16C
  loc_C32A8F: FLdRfVar var_168
  loc_C32A92: FLdRfVar var_108
  loc_C32A95: NewIfNullPr clsparaapre
  loc_C32A98: from_stack_1v = clsparaapre.RsFrmGet()
  loc_C32A9D: FLdPr var_168
  loc_C32AA0:  = Me.Fields
  loc_C32AA5: FLdPr var_16C
  loc_C32AA8: from_stack_2 = Me.Item(from_stack_1)
  loc_C32AAD: FLdPr var_1B4
  loc_C32AB0:  = Me.Value
  loc_C32AB5: FLdRfVar var_12C
  loc_C32AB8: FnCDblVar
  loc_C32ABA: FStFPR8 var_C8
  loc_C32ABD: FFreeAd var_168 = "": var_16C = ""
  loc_C32AC6: FFree1Var var_12C = ""
  loc_C32AC9: FLdUI1
  loc_C32ACD: CI2UI1
  loc_C32ACF: LitI2_Byte 1
  loc_C32AD1: EqI2
  loc_C32AD2: BranchF loc_C32B02
  loc_C32AD5: LitI4 2
  loc_C32ADA: FLdFPR8 var_C8
  loc_C32ADD: LitI2_Byte &H15
  loc_C32ADF: CR8I2
  loc_C32AE0: MulR8
  loc_C32AE1: LitI2_Byte &H64
  loc_C32AE3: CR8I2
  loc_C32AE4: DivR8
  loc_C32AE5: CVarR8
  loc_C32AE9: FLdRfVar var_13C
  loc_C32AEC: ImpAdCallFPR4  = Round(, )
  loc_C32AF1: FLdRfVar var_13C
  loc_C32AF4: CR4Var
  loc_C32AF5: FStFPR8 var_D0
  loc_C32AF8: FFreeVar var_12C = ""
  loc_C32AFF: Branch loc_C32B08
  loc_C32B02: LitI2_Byte 0
  loc_C32B04: CR8I2
  loc_C32B05: FStFPR8 var_D0
  loc_C32B08: FLdFPR8 var_A0
  loc_C32B0B: FLdFPR8 var_B0
  loc_C32B0E: AddR8
  loc_C32B0F: FLdFPR8 var_B8
  loc_C32B12: AddR8
  loc_C32B13: FLdFPR8 var_C0
  loc_C32B16: AddR8
  loc_C32B17: FLdFPR8 var_C8
  loc_C32B1A: AddR8
  loc_C32B1B: FLdFPR8 var_D8
  loc_C32B1E: AddR8
  loc_C32B1F: FLdFPR8 var_E8
  loc_C32B22: AddR8
  loc_C32B23: FLdFPR8 var_F0
  loc_C32B26: AddR8
  loc_C32B27: FLdFPR8 var_A8
  loc_C32B2A: AddR8
  loc_C32B2B: FLdFPR8 var_D0
  loc_C32B2E: AddR8
  loc_C32B2F: FLdFPR8 var_E0
  loc_C32B32: AddR8
  loc_C32B33: FStFPR8 var_8C
  loc_C32B36: LitNothing
  loc_C32B38: CastAd
  loc_C32B3B: FStAdFunc var_108
  loc_C32B3E: LitNothing
  loc_C32B40: CastAd
  loc_C32B43: FStAdFunc var_10C
  loc_C32B46: ExitProcCbHresult
End Function

Public Function BuscaGastosInstanciaDetalle(lNumeApre, iCodiInju, sFealInju, iCodiReca, iCodiOfju, doCapiApre, doRecaApre, ikilometros, boMoviliBoleApre) 'C9E2AC
  'Data Table: 430A50
  loc_C9C838: ILdRf sFealInju
  loc_C9C83B: FStStrCopy var_98
  loc_C9C83E: ZeroRetValVar
  loc_C9C840: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_apredeta;"
  loc_C9C843: LitStr " CREATE TEMPORARY TABLE tmp_apredeta ("
  loc_C9C846: ConcatStr
  loc_C9C847: FStStrNoPop var_13C
  loc_C9C84A: LitStr " umeApre` int(8) unsigned NOT NULL DEFAULT '0',"
  loc_C9C84D: ConcatStr
  loc_C9C84E: FStStrNoPop var_140
  loc_C9C851: LitStr " odiInju` tinyint(2) unsigned NOT NULL DEFAULT '0',"
  loc_C9C854: ConcatStr
  loc_C9C855: FStStrNoPop var_144
  loc_C9C858: LitStr " odiReca` smallint(3) unsigned NOT NULL DEFAULT '0',"
  loc_C9C85B: ConcatStr
  loc_C9C85C: FStStrNoPop var_148
  loc_C9C85F: LitStr " mreBade` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_C9C862: ConcatStr
  loc_C9C863: FStStrNoPop var_14C
  loc_C9C866: LitStr " vreBade` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_C9C869: ConcatStr
  loc_C9C86A: FStStrNoPop var_150
  loc_C9C86D: LitStr " odiOfju` smallint(3) unsigned NOT NULL DEFAULT '0',"
  loc_C9C870: ConcatStr
  loc_C9C871: FStStrNoPop var_154
  loc_C9C874: LitStr " mofBade` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_C9C877: ConcatStr
  loc_C9C878: FStStrNoPop var_158
  loc_C9C87B: LitStr " vofBade` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_C9C87E: ConcatStr
  loc_C9C87F: FStStrNoPop var_15C
  loc_C9C882: LitStr " PRIMARY KEY  (umeApre`,`CodiInju`)"
  loc_C9C885: ConcatStr
  loc_C9C886: FStStrNoPop var_160
  loc_C9C889: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_C9C88C: ConcatStr
  loc_C9C88D: FStStrNoPop var_164
  loc_C9C890: Call EjecutarRsCls1(from_stack_1v)
  loc_C9C895: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_C9C8AE: LitI4 2
  loc_C9C8B3: FLdFPR8 doCapiApre
  loc_C9C8B6: FLdFPR8 ikilometros
  loc_C9C8B9: AddR8
  loc_C9C8BA: CVarR8
  loc_C9C8BE: FLdRfVar var_198
  loc_C9C8C1: ImpAdCallFPR4  = Round(, )
  loc_C9C8C6: FLdRfVar var_198
  loc_C9C8C9: CR4Var
  loc_C9C8CA: FStFPR8 var_BC
  loc_C9C8CD: FFreeVar var_188 = ""
  loc_C9C8D4: FLdI2 iCodiReca
  loc_C9C8D7: CUI1I2
  loc_C9C8D9: ImpAdCallI2  = Proc_270_47_A79CB0()
  loc_C9C8DE: FStStrNoPop var_13C
  loc_C9C8E1: CUI1Str
  loc_C9C8E3: FStUI1 var_126
  loc_C9C8E7: FFree1Str var_13C
  loc_C9C8EA: LitStr "SELECT CodiPaap,CamiPaap,CamaPaap,AplePaap, DefiPaap, TajuPaap, HrmiPaap, HrmaPaap FROM paraapre ORDER BY CodiPaap"
  loc_C9C8ED: Call EjecutarRsCls2(from_stack_1v)
  loc_C9C8F2: FLdRfVar var_19C
  loc_C9C8F5: FLdPr Me
  loc_C9C8F8: MemLdPr global_64
  loc_C9C8FB:  = Me.RecordCount
  loc_C9C900: ILdRf var_19C
  loc_C9C903: LitI4 0
  loc_C9C908: GtI4
  loc_C9C909: BranchF loc_C9E29E
  loc_C9C90C: FLdPr Me
  loc_C9C90F: MemLdPr global_64
  loc_C9C912: Me.MoveLast
  loc_C9C917: LitStr "SELECT * FROM instjudi WHERE CodiInju = "
  loc_C9C91A: FLdI2 iCodiInju
  loc_C9C91D: CStrUI1
  loc_C9C91F: FStStrNoPop var_13C
  loc_C9C922: ConcatStr
  loc_C9C923: FStStrNoPop var_140
  loc_C9C926: LitStr " AND FealInju <= "
  loc_C9C929: ConcatStr
  loc_C9C92A: FStStrNoPop var_144
  loc_C9C92D: LitI4 1
  loc_C9C932: LitI4 1
  loc_C9C937: LitVarStr var_1AC, "'yyyy-mm-dd'"
  loc_C9C93C: FStVarCopyObj var_188
  loc_C9C93F: FLdRfVar var_188
  loc_C9C942: FLdRfVar var_98
  loc_C9C945: CVarRef
  loc_C9C94A: ImpAdCallI2 Format$(, )
  loc_C9C94F: FStStrNoPop var_148
  loc_C9C952: ConcatStr
  loc_C9C953: FStStrNoPop var_14C
  loc_C9C956: Call EjecutarRsCls(from_stack_1v)
  loc_C9C95B: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_C9C968: FFree1Var var_188 = ""
  loc_C9C96B: FLdRfVar var_19C
  loc_C9C96E: FLdPr Me
  loc_C9C971: MemLdPr global_56
  loc_C9C974:  = Me.RecordCount
  loc_C9C979: ILdRf var_19C
  loc_C9C97C: LitI4 0
  loc_C9C981: GtI4
  loc_C9C982: BranchF loc_C9D00F
  loc_C9C985: FLdRfVar var_188
  loc_C9C988: FLdRfVar var_1B4
  loc_C9C98B: LitVarStr var_178, "CoadInju"
  loc_C9C990: PopAdLdVar
  loc_C9C991: FLdRfVar var_1B0
  loc_C9C994: FLdPr Me
  loc_C9C997: MemLdPr global_56
  loc_C9C99A:  = Me.Fields
  loc_C9C99F: FLdPr var_1B0
  loc_C9C9A2: from_stack_2 = Me.Item(from_stack_1)
  loc_C9C9A7: FLdPr var_1B4
  loc_C9C9AA:  = Me.Value
  loc_C9C9AF: LitI4 2
  loc_C9C9B4: FLdFPR8 var_BC
  loc_C9C9B7: FLdRfVar var_188
  loc_C9C9BA: FnCDblVar
  loc_C9C9BC: MulR8
  loc_C9C9BD: LitI2_Byte &H64
  loc_C9C9BF: CR8I2
  loc_C9C9C0: DivR8
  loc_C9C9C1: CVarR8
  loc_C9C9C5: FLdRfVar var_1C4
  loc_C9C9C8: ImpAdCallFPR4  = Round(, )
  loc_C9C9CD: FLdRfVar var_1C4
  loc_C9C9D0: CR4Var
  loc_C9C9D1: FStFPR8 var_C4
  loc_C9C9D4: FFreeAd var_1B0 = ""
  loc_C9C9DB: FFreeVar var_188 = "": var_198 = ""
  loc_C9C9E4: FLdRfVar var_188
  loc_C9C9E7: FLdRfVar var_1B4
  loc_C9C9EA: LitVarStr var_178, "CamiPaap"
  loc_C9C9EF: PopAdLdVar
  loc_C9C9F0: FLdRfVar var_1B0
  loc_C9C9F3: FLdPr Me
  loc_C9C9F6: MemLdPr global_64
  loc_C9C9F9:  = Me.Fields
  loc_C9C9FE: FLdPr var_1B0
  loc_C9CA01: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CA06: FLdPr var_1B4
  loc_C9CA09:  = Me.Value
  loc_C9CA0E: FLdFPR8 var_C4
  loc_C9CA11: FLdRfVar var_188
  loc_C9CA14: FnCDblVar
  loc_C9CA16: LtR8
  loc_C9CA17: FLdFPR8 var_C4
  loc_C9CA1A: LitI2_Byte 0
  loc_C9CA1C: CR8I2
  loc_C9CA1D: GtR4
  loc_C9CA1E: AndI4
  loc_C9CA1F: FFreeAd var_1B0 = ""
  loc_C9CA26: FFree1Var var_188 = ""
  loc_C9CA29: BranchF loc_C9CA6B
  loc_C9CA2C: FLdRfVar var_188
  loc_C9CA2F: FLdRfVar var_1B4
  loc_C9CA32: LitVarStr var_178, "CamiPaap"
  loc_C9CA37: PopAdLdVar
  loc_C9CA38: FLdRfVar var_1B0
  loc_C9CA3B: FLdPr Me
  loc_C9CA3E: MemLdPr global_64
  loc_C9CA41:  = Me.Fields
  loc_C9CA46: FLdPr var_1B0
  loc_C9CA49: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CA4E: FLdPr var_1B4
  loc_C9CA51:  = Me.Value
  loc_C9CA56: FLdRfVar var_188
  loc_C9CA59: FnCDblVar
  loc_C9CA5B: FStFPR8 var_C4
  loc_C9CA5E: FFreeAd var_1B0 = ""
  loc_C9CA65: FFree1Var var_188 = ""
  loc_C9CA68: Branch loc_C9CAE7
  loc_C9CA6B: FLdRfVar var_188
  loc_C9CA6E: FLdRfVar var_1B4
  loc_C9CA71: LitVarStr var_178, "CamaPaap"
  loc_C9CA76: PopAdLdVar
  loc_C9CA77: FLdRfVar var_1B0
  loc_C9CA7A: FLdPr Me
  loc_C9CA7D: MemLdPr global_64
  loc_C9CA80:  = Me.Fields
  loc_C9CA85: FLdPr var_1B0
  loc_C9CA88: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CA8D: FLdPr var_1B4
  loc_C9CA90:  = Me.Value
  loc_C9CA95: FLdFPR8 var_C4
  loc_C9CA98: FLdRfVar var_188
  loc_C9CA9B: FnCDblVar
  loc_C9CA9D: GtR4
  loc_C9CA9E: FFreeAd var_1B0 = ""
  loc_C9CAA5: FFree1Var var_188 = ""
  loc_C9CAA8: BranchF loc_C9CAE7
  loc_C9CAAB: FLdRfVar var_188
  loc_C9CAAE: FLdRfVar var_1B4
  loc_C9CAB1: LitVarStr var_178, "CamaPaap"
  loc_C9CAB6: PopAdLdVar
  loc_C9CAB7: FLdRfVar var_1B0
  loc_C9CABA: FLdPr Me
  loc_C9CABD: MemLdPr global_64
  loc_C9CAC0:  = Me.Fields
  loc_C9CAC5: FLdPr var_1B0
  loc_C9CAC8: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CACD: FLdPr var_1B4
  loc_C9CAD0:  = Me.Value
  loc_C9CAD5: FLdRfVar var_188
  loc_C9CAD8: FnCDblVar
  loc_C9CADA: FStFPR8 var_C4
  loc_C9CADD: FFreeAd var_1B0 = ""
  loc_C9CAE4: FFree1Var var_188 = ""
  loc_C9CAE7: FLdUI1
  loc_C9CAEB: CI2UI1
  loc_C9CAED: LitI2_Byte 1
  loc_C9CAEF: EqI2
  loc_C9CAF0: BranchF loc_C9CB20
  loc_C9CAF3: LitI4 2
  loc_C9CAF8: FLdFPR8 var_C4
  loc_C9CAFB: LitI2_Byte &H15
  loc_C9CAFD: CR8I2
  loc_C9CAFE: MulR8
  loc_C9CAFF: LitI2_Byte &H64
  loc_C9CB01: CR8I2
  loc_C9CB02: DivR8
  loc_C9CB03: CVarR8
  loc_C9CB07: FLdRfVar var_198
  loc_C9CB0A: ImpAdCallFPR4  = Round(, )
  loc_C9CB0F: FLdRfVar var_198
  loc_C9CB12: CR4Var
  loc_C9CB13: FStFPR8 var_CC
  loc_C9CB16: FFreeVar var_188 = ""
  loc_C9CB1D: Branch loc_C9CB26
  loc_C9CB20: LitI2_Byte 0
  loc_C9CB22: CR8I2
  loc_C9CB23: FStFPR8 var_CC
  loc_C9CB26: FLdRfVar var_188
  loc_C9CB29: FLdRfVar var_1B4
  loc_C9CB2C: LitVarStr var_178, "ApleInju"
  loc_C9CB31: PopAdLdVar
  loc_C9CB32: FLdRfVar var_1B0
  loc_C9CB35: FLdPr Me
  loc_C9CB38: MemLdPr global_56
  loc_C9CB3B:  = Me.Fields
  loc_C9CB40: FLdPr var_1B0
  loc_C9CB43: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CB48: FLdPr var_1B4
  loc_C9CB4B:  = Me.Value
  loc_C9CB50: LitI4 2
  loc_C9CB55: FLdFPR8 var_BC
  loc_C9CB58: FLdRfVar var_188
  loc_C9CB5B: FnCDblVar
  loc_C9CB5D: MulR8
  loc_C9CB5E: LitI2_Byte &H64
  loc_C9CB60: CR8I2
  loc_C9CB61: DivR8
  loc_C9CB62: CVarR8
  loc_C9CB66: FLdRfVar var_1C4
  loc_C9CB69: ImpAdCallFPR4  = Round(, )
  loc_C9CB6E: FLdRfVar var_1C4
  loc_C9CB71: CR4Var
  loc_C9CB72: FStFPR8 var_DC
  loc_C9CB75: FFreeAd var_1B0 = ""
  loc_C9CB7C: FFreeVar var_188 = "": var_198 = ""
  loc_C9CB85: FLdRfVar var_188
  loc_C9CB88: FLdRfVar var_1B4
  loc_C9CB8B: LitVarStr var_178, "AplePaap"
  loc_C9CB90: PopAdLdVar
  loc_C9CB91: FLdRfVar var_1B0
  loc_C9CB94: FLdPr Me
  loc_C9CB97: MemLdPr global_64
  loc_C9CB9A:  = Me.Fields
  loc_C9CB9F: FLdPr var_1B0
  loc_C9CBA2: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CBA7: FLdPr var_1B4
  loc_C9CBAA:  = Me.Value
  loc_C9CBAF: FLdRfVar var_198
  loc_C9CBB2: FLdRfVar var_1CC
  loc_C9CBB5: LitVarStr var_1AC, "ApleInju"
  loc_C9CBBA: PopAdLdVar
  loc_C9CBBB: FLdRfVar var_1C8
  loc_C9CBBE: FLdPr Me
  loc_C9CBC1: MemLdPr global_56
  loc_C9CBC4:  = Me.Fields
  loc_C9CBC9: FLdPr var_1C8
  loc_C9CBCC: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CBD1: FLdPr var_1CC
  loc_C9CBD4:  = Me.Value
  loc_C9CBD9: FLdRfVar var_1C4
  loc_C9CBDC: FLdRfVar var_1E4
  loc_C9CBDF: LitVarStr var_1E0, "AplePaap"
  loc_C9CBE4: PopAdLdVar
  loc_C9CBE5: FLdRfVar var_1D0
  loc_C9CBE8: FLdPr Me
  loc_C9CBEB: MemLdPr global_64
  loc_C9CBEE:  = Me.Fields
  loc_C9CBF3: FLdPr var_1D0
  loc_C9CBF6: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CBFB: FLdPr var_1E4
  loc_C9CBFE:  = Me.Value
  loc_C9CC03: FLdRfVar var_DC
  loc_C9CC06: CVarRef
  loc_C9CC0B: FLdRfVar var_1C4
  loc_C9CC0E: FnCDblVar
  loc_C9CC10: CVarR8
  loc_C9CC14: FLdFPR8 var_DC
  loc_C9CC17: FLdRfVar var_188
  loc_C9CC1A: FnCDblVar
  loc_C9CC1C: LtR8
  loc_C9CC1D: FLdRfVar var_198
  loc_C9CC20: FnCDblVar
  loc_C9CC22: LitI2_Byte 0
  loc_C9CC24: CR8I2
  loc_C9CC25: GtR4
  loc_C9CC26: AndI4
  loc_C9CC27: CVarBoolI2 var_1F4
  loc_C9CC2B: FLdRfVar var_234
  loc_C9CC2E: ImpAdCallFPR4  = IIf(, , )
  loc_C9CC33: FLdRfVar var_234
  loc_C9CC36: CR4Var
  loc_C9CC37: FStFPR8 var_DC
  loc_C9CC3A: FFreeAd var_1B0 = "": var_1B4 = "": var_1C8 = "": var_1CC = "": var_1D0 = ""
  loc_C9CC49: FFreeVar var_188 = "": var_198 = "": var_1C4 = "": var_1F4 = "": var_214 = ""
  loc_C9CC58: FLdRfVar var_188
  loc_C9CC5B: FLdRfVar var_1B4
  loc_C9CC5E: LitVarStr var_178, "ReseInju"
  loc_C9CC63: PopAdLdVar
  loc_C9CC64: FLdRfVar var_1B0
  loc_C9CC67: FLdPr Me
  loc_C9CC6A: MemLdPr global_56
  loc_C9CC6D:  = Me.Fields
  loc_C9CC72: FLdPr var_1B0
  loc_C9CC75: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CC7A: FLdPr var_1B4
  loc_C9CC7D:  = Me.Value
  loc_C9CC82: LitI4 2
  loc_C9CC87: FLdFPR8 var_BC
  loc_C9CC8A: FLdRfVar var_188
  loc_C9CC8D: FnCDblVar
  loc_C9CC8F: MulR8
  loc_C9CC90: LitI2_Byte &H64
  loc_C9CC92: CR8I2
  loc_C9CC93: DivR8
  loc_C9CC94: CVarR8
  loc_C9CC98: FLdRfVar var_1C4
  loc_C9CC9B: ImpAdCallFPR4  = Round(, )
  loc_C9CCA0: FLdRfVar var_1C4
  loc_C9CCA3: CR4Var
  loc_C9CCA4: FStFPR8 var_D4
  loc_C9CCA7: FFreeAd var_1B0 = ""
  loc_C9CCAE: FFreeVar var_188 = "": var_198 = ""
  loc_C9CCB7: FLdI2 iCodiInju
  loc_C9CCBA: LitI2_Byte 1
  loc_C9CCBC: GtI2
  loc_C9CCBD: BranchF loc_C9CE1B
  loc_C9CCC0: LitVarStr var_1AC, "SELECT DesdEsap, HastEsap, ImpoEsap FROM escaapre WHERE CodiPaap = "
  loc_C9CCC5: FLdRfVar var_188
  loc_C9CCC8: FLdRfVar var_1B4
  loc_C9CCCB: LitVarStr var_178, "CodiPaap"
  loc_C9CCD0: PopAdLdVar
  loc_C9CCD1: FLdRfVar var_1B0
  loc_C9CCD4: FLdPr Me
  loc_C9CCD7: MemLdPr global_64
  loc_C9CCDA:  = Me.Fields
  loc_C9CCDF: FLdPr var_1B0
  loc_C9CCE2: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CCE7: FLdPr var_1B4
  loc_C9CCEA:  = Me.Value
  loc_C9CCEF: FLdRfVar var_188
  loc_C9CCF2: ConcatVar var_198
  loc_C9CCF6: LitVarStr var_1E0, " AND TipoEsap = 'Tasa de Justicia' ORDER BY CodiPaap, CodiEsap"
  loc_C9CCFB: ConcatVar var_1C4
  loc_C9CCFF: CStrVarVal var_13C
  loc_C9CD03: Call EjecutarRsCls1(from_stack_1v)
  loc_C9CD08: FFree1Str var_13C
  loc_C9CD0B: FFreeAd var_1B0 = ""
  loc_C9CD12: FFreeVar var_188 = "": var_198 = ""
  loc_C9CD1B: FLdRfVar var_19C
  loc_C9CD1E: FLdPr Me
  loc_C9CD21: MemLdPr global_60
  loc_C9CD24:  = Me.RecordCount
  loc_C9CD29: ILdRf var_19C
  loc_C9CD2C: LitI4 0
  loc_C9CD31: GtI4
  loc_C9CD32: BranchF loc_C9CE1B
  loc_C9CD35: FLdPr Me
  loc_C9CD38: MemLdPr global_60
  loc_C9CD3B: Me.MoveFirst
  loc_C9CD40: FLdRfVar var_236
  loc_C9CD43: FLdPr Me
  loc_C9CD46: MemLdPr global_60
  loc_C9CD49:  = Me.EOF
  loc_C9CD4E: FLdI2 var_236
  loc_C9CD51: NotI4
  loc_C9CD52: BranchF loc_C9CE1B
  loc_C9CD55: FLdRfVar var_188
  loc_C9CD58: FLdRfVar var_1B4
  loc_C9CD5B: LitVarStr var_178, "DesdEsap"
  loc_C9CD60: PopAdLdVar
  loc_C9CD61: FLdRfVar var_1B0
  loc_C9CD64: FLdPr Me
  loc_C9CD67: MemLdPr global_60
  loc_C9CD6A:  = Me.Fields
  loc_C9CD6F: FLdPr var_1B0
  loc_C9CD72: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CD77: FLdPr var_1B4
  loc_C9CD7A:  = Me.Value
  loc_C9CD7F: FLdRfVar var_198
  loc_C9CD82: FLdRfVar var_1CC
  loc_C9CD85: LitVarStr var_1AC, "HastEsap"
  loc_C9CD8A: PopAdLdVar
  loc_C9CD8B: FLdRfVar var_1C8
  loc_C9CD8E: FLdPr Me
  loc_C9CD91: MemLdPr global_60
  loc_C9CD94:  = Me.Fields
  loc_C9CD99: FLdPr var_1C8
  loc_C9CD9C: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CDA1: FLdPr var_1CC
  loc_C9CDA4:  = Me.Value
  loc_C9CDA9: FLdFPR8 var_BC
  loc_C9CDAC: FLdRfVar var_188
  loc_C9CDAF: FnCDblVar
  loc_C9CDB1: GtR4
  loc_C9CDB2: FLdFPR8 var_BC
  loc_C9CDB5: FLdRfVar var_198
  loc_C9CDB8: FnCDblVar
  loc_C9CDBA: LtR8
  loc_C9CDBB: AndI4
  loc_C9CDBC: FFreeAd var_1B0 = "": var_1B4 = "": var_1C8 = ""
  loc_C9CDC7: FFreeVar var_188 = ""
  loc_C9CDCE: BranchF loc_C9CE0D
  loc_C9CDD1: FLdRfVar var_188
  loc_C9CDD4: FLdRfVar var_1B4
  loc_C9CDD7: LitVarStr var_178, "ImpoEsap"
  loc_C9CDDC: PopAdLdVar
  loc_C9CDDD: FLdRfVar var_1B0
  loc_C9CDE0: FLdPr Me
  loc_C9CDE3: MemLdPr global_60
  loc_C9CDE6:  = Me.Fields
  loc_C9CDEB: FLdPr var_1B0
  loc_C9CDEE: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CDF3: FLdPr var_1B4
  loc_C9CDF6:  = Me.Value
  loc_C9CDFB: FLdRfVar var_188
  loc_C9CDFE: FnCDblVar
  loc_C9CE00: FStFPR8 var_D4
  loc_C9CE03: FFreeAd var_1B0 = ""
  loc_C9CE0A: FFree1Var var_188 = ""
  loc_C9CE0D: FLdPr Me
  loc_C9CE10: MemLdPr global_60
  loc_C9CE13: Me.MoveNext
  loc_C9CE18: Branch loc_C9CD40
  loc_C9CE1B: FLdRfVar var_188
  loc_C9CE1E: FLdRfVar var_1B4
  loc_C9CE21: LitVarStr var_178, "TajuPaap"
  loc_C9CE26: PopAdLdVar
  loc_C9CE27: FLdRfVar var_1B0
  loc_C9CE2A: FLdPr Me
  loc_C9CE2D: MemLdPr global_64
  loc_C9CE30:  = Me.Fields
  loc_C9CE35: FLdPr var_1B0
  loc_C9CE38: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CE3D: FLdPr var_1B4
  loc_C9CE40:  = Me.Value
  loc_C9CE45: FLdRfVar var_198
  loc_C9CE48: FLdRfVar var_1CC
  loc_C9CE4B: LitVarStr var_1AC, "ReseInju"
  loc_C9CE50: PopAdLdVar
  loc_C9CE51: FLdRfVar var_1C8
  loc_C9CE54: FLdPr Me
  loc_C9CE57: MemLdPr global_56
  loc_C9CE5A:  = Me.Fields
  loc_C9CE5F: FLdPr var_1C8
  loc_C9CE62: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CE67: FLdPr var_1CC
  loc_C9CE6A:  = Me.Value
  loc_C9CE6F: FLdRfVar var_1C4
  loc_C9CE72: FLdRfVar var_1E4
  loc_C9CE75: LitVarStr var_1E0, "TajuPaap"
  loc_C9CE7A: PopAdLdVar
  loc_C9CE7B: FLdRfVar var_1D0
  loc_C9CE7E: FLdPr Me
  loc_C9CE81: MemLdPr global_64
  loc_C9CE84:  = Me.Fields
  loc_C9CE89: FLdPr var_1D0
  loc_C9CE8C: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CE91: FLdPr var_1E4
  loc_C9CE94:  = Me.Value
  loc_C9CE99: FLdRfVar var_D4
  loc_C9CE9C: CVarRef
  loc_C9CEA1: FLdRfVar var_1C4
  loc_C9CEA4: FnCDblVar
  loc_C9CEA6: CVarR8
  loc_C9CEAA: FLdFPR8 var_D4
  loc_C9CEAD: FLdRfVar var_188
  loc_C9CEB0: FnCDblVar
  loc_C9CEB2: LtR8
  loc_C9CEB3: FLdRfVar var_198
  loc_C9CEB6: FnCDblVar
  loc_C9CEB8: LitI2_Byte 0
  loc_C9CEBA: CR8I2
  loc_C9CEBB: GtR4
  loc_C9CEBC: AndI4
  loc_C9CEBD: CVarBoolI2 var_1F4
  loc_C9CEC1: FLdRfVar var_234
  loc_C9CEC4: ImpAdCallFPR4  = IIf(, , )
  loc_C9CEC9: FLdRfVar var_234
  loc_C9CECC: CR4Var
  loc_C9CECD: FStFPR8 var_D4
  loc_C9CED0: FFreeAd var_1B0 = "": var_1B4 = "": var_1C8 = "": var_1CC = "": var_1D0 = ""
  loc_C9CEDF: FFreeVar var_188 = "": var_198 = "": var_1C4 = "": var_1F4 = "": var_214 = ""
  loc_C9CEEE: FLdRfVar var_188
  loc_C9CEF1: FLdRfVar var_1B4
  loc_C9CEF4: LitVarStr var_178, "DefiInju"
  loc_C9CEF9: PopAdLdVar
  loc_C9CEFA: FLdRfVar var_1B0
  loc_C9CEFD: FLdPr Me
  loc_C9CF00: MemLdPr global_56
  loc_C9CF03:  = Me.Fields
  loc_C9CF08: FLdPr var_1B0
  loc_C9CF0B: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CF10: FLdPr var_1B4
  loc_C9CF13:  = Me.Value
  loc_C9CF18: LitI4 2
  loc_C9CF1D: FLdFPR8 var_D4
  loc_C9CF20: FLdRfVar var_188
  loc_C9CF23: FnCDblVar
  loc_C9CF25: MulR8
  loc_C9CF26: LitI2_Byte &H64
  loc_C9CF28: CR8I2
  loc_C9CF29: DivR8
  loc_C9CF2A: CVarR8
  loc_C9CF2E: FLdRfVar var_1C4
  loc_C9CF31: ImpAdCallFPR4  = Round(, )
  loc_C9CF36: LitVarI2 var_214, 0
  loc_C9CF3B: FLdRfVar var_1C4
  loc_C9CF3E: FLdFPR8 var_D4
  loc_C9CF41: LitI2_Byte 0
  loc_C9CF43: CR8I2
  loc_C9CF44: GtR4
  loc_C9CF45: CVarBoolI2 var_1E0
  loc_C9CF49: FLdRfVar var_234
  loc_C9CF4C: ImpAdCallFPR4  = IIf(, , )
  loc_C9CF51: FLdRfVar var_234
  loc_C9CF54: CR4Var
  loc_C9CF55: FStFPR8 var_E4
  loc_C9CF58: FFreeAd var_1B0 = ""
  loc_C9CF5F: FFreeVar var_188 = "": var_198 = "": var_1E0 = "": var_1C4 = "": var_214 = ""
  loc_C9CF6E: FLdRfVar var_188
  loc_C9CF71: FLdRfVar var_1B4
  loc_C9CF74: LitVarStr var_178, "DefiPaap"
  loc_C9CF79: PopAdLdVar
  loc_C9CF7A: FLdRfVar var_1B0
  loc_C9CF7D: FLdPr Me
  loc_C9CF80: MemLdPr global_64
  loc_C9CF83:  = Me.Fields
  loc_C9CF88: FLdPr var_1B0
  loc_C9CF8B: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CF90: FLdPr var_1B4
  loc_C9CF93:  = Me.Value
  loc_C9CF98: FLdRfVar var_198
  loc_C9CF9B: FLdRfVar var_1CC
  loc_C9CF9E: LitVarStr var_1AC, "DefiPaap"
  loc_C9CFA3: PopAdLdVar
  loc_C9CFA4: FLdRfVar var_1C8
  loc_C9CFA7: FLdPr Me
  loc_C9CFAA: MemLdPr global_64
  loc_C9CFAD:  = Me.Fields
  loc_C9CFB2: FLdPr var_1C8
  loc_C9CFB5: from_stack_2 = Me.Item(from_stack_1)
  loc_C9CFBA: FLdPr var_1CC
  loc_C9CFBD:  = Me.Value
  loc_C9CFC2: FLdRfVar var_E4
  loc_C9CFC5: CVarRef
  loc_C9CFCA: FLdRfVar var_198
  loc_C9CFCD: FnCDblVar
  loc_C9CFCF: CVarR8
  loc_C9CFD3: FLdFPR8 var_E4
  loc_C9CFD6: LitI2_Byte 0
  loc_C9CFD8: CR8I2
  loc_C9CFD9: GtR4
  loc_C9CFDA: FLdFPR8 var_E4
  loc_C9CFDD: FLdRfVar var_188
  loc_C9CFE0: FnCDblVar
  loc_C9CFE2: LtR8
  loc_C9CFE3: AndI4
  loc_C9CFE4: CVarBoolI2 var_1E0
  loc_C9CFE8: FLdRfVar var_214
  loc_C9CFEB: ImpAdCallFPR4  = IIf(, , )
  loc_C9CFF0: FLdRfVar var_214
  loc_C9CFF3: CR4Var
  loc_C9CFF4: FStFPR8 var_E4
  loc_C9CFF7: FFreeAd var_1B0 = "": var_1B4 = "": var_1C8 = ""
  loc_C9D002: FFreeVar var_188 = "": var_198 = "": var_1E0 = "": var_1C4 = ""
  loc_C9D00F: LitI2_Byte 0
  loc_C9D011: CR8I2
  loc_C9D012: FStFPR8 var_10C
  loc_C9D015: LitI2_Byte 0
  loc_C9D017: CR8I2
  loc_C9D018: FStFPR8 var_114
  loc_C9D01B: LitI2_Byte 0
  loc_C9D01D: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C9D022: FStFPR8 var_240
  loc_C9D025: LitStr "SELECT instapre.CodiInju, instapre.CodiReca, instapre.CodiOfju, SUM(instjudi.HoreInju) HoreInju, "
  loc_C9D028: LitStr " SUM(instjudi.HoofInju) HoofInju, SUM(IF(KiofInju=1,ImpoMoap,0)) MoofMoap FROM instapre USE INDEX (idx_instapre_01)"
  loc_C9D02B: ConcatStr
  loc_C9D02C: FStStrNoPop var_13C
  loc_C9D02F: LitStr " INNER JOIN instjudi ON instjudi.CodiInju = instapre.CodiInju"
  loc_C9D032: ConcatStr
  loc_C9D033: FStStrNoPop var_140
  loc_C9D036: LitStr " INNER JOIN moviapre ON moviapre.ZonaMoap = instapre.ZonaMoap"
  loc_C9D039: ConcatStr
  loc_C9D03A: FStStrNoPop var_144
  loc_C9D03D: LitStr " WHERE NumeApre = "
  loc_C9D040: ConcatStr
  loc_C9D041: FStStrNoPop var_148
  loc_C9D044: ILdRf lNumeApre
  loc_C9D047: CStrI4
  loc_C9D049: FStStrNoPop var_14C
  loc_C9D04C: ConcatStr
  loc_C9D04D: FStStrNoPop var_150
  loc_C9D050: LitStr " AND FechInap <= '"
  loc_C9D053: ConcatStr
  loc_C9D054: FStStrNoPop var_154
  loc_C9D057: LitI4 1
  loc_C9D05C: LitI4 1
  loc_C9D061: LitVarStr var_1AC, "yyyy-mm-dd"
  loc_C9D066: FStVarCopyObj var_198
  loc_C9D069: FLdRfVar var_198
  loc_C9D06C: FLdFPR8 var_240
  loc_C9D06F: CVarDate var_188
  loc_C9D073: ImpAdCallI2 Format$(, )
  loc_C9D078: FStStrNoPop var_158
  loc_C9D07B: ConcatStr
  loc_C9D07C: FStStrNoPop var_15C
  loc_C9D07F: LitStr "' ORDER BY instapre.NumeApre, instapre.CodiInju"
  loc_C9D082: ConcatStr
  loc_C9D083: FStStrNoPop var_160
  loc_C9D086: Call EjecutarRsCls1(from_stack_1v)
  loc_C9D08B: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_C9D0A2: FFreeVar var_188 = ""
  loc_C9D0A9: FLdRfVar var_19C
  loc_C9D0AC: FLdPr Me
  loc_C9D0AF: MemLdPr global_60
  loc_C9D0B2:  = Me.RecordCount
  loc_C9D0B7: ILdRf var_19C
  loc_C9D0BA: LitI4 0
  loc_C9D0BF: GtI4
  loc_C9D0C0: BranchF loc_C9D5A6
  loc_C9D0C3: FLdPr Me
  loc_C9D0C6: MemLdPr global_60
  loc_C9D0C9: Me.MoveFirst
  loc_C9D0CE: FLdRfVar var_188
  loc_C9D0D1: FLdRfVar var_1B4
  loc_C9D0D4: LitVarStr var_178, "HoreInju"
  loc_C9D0D9: PopAdLdVar
  loc_C9D0DA: FLdRfVar var_1B0
  loc_C9D0DD: FLdPr Me
  loc_C9D0E0: MemLdPr global_60
  loc_C9D0E3:  = Me.Fields
  loc_C9D0E8: FLdPr var_1B0
  loc_C9D0EB: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D0F0: FLdPr var_1B4
  loc_C9D0F3:  = Me.Value
  loc_C9D0F8: LitI4 2
  loc_C9D0FD: FLdFPR8 var_BC
  loc_C9D100: FLdRfVar var_188
  loc_C9D103: FnCDblVar
  loc_C9D105: MulR8
  loc_C9D106: LitI2_Byte &H64
  loc_C9D108: CR8I2
  loc_C9D109: DivR8
  loc_C9D10A: CVarR8
  loc_C9D10E: FLdRfVar var_1C4
  loc_C9D111: ImpAdCallFPR4  = Round(, )
  loc_C9D116: FLdFPR8 var_EC
  loc_C9D119: CVarR8
  loc_C9D11D: LitVarI2 var_214, 0
  loc_C9D122: FLdRfVar var_1C4
  loc_C9D125: FLdI2 iCodiReca
  loc_C9D128: LitI2_Byte 0
  loc_C9D12A: NeI2
  loc_C9D12B: CVarBoolI2 var_1E0
  loc_C9D12F: FLdRfVar var_234
  loc_C9D132: ImpAdCallFPR4  = IIf(, , )
  loc_C9D137: FLdRfVar var_234
  loc_C9D13A: AddVar var_250
  loc_C9D13E: CR4Var
  loc_C9D13F: FStFPR8 var_EC
  loc_C9D142: FFreeAd var_1B0 = ""
  loc_C9D149: FFreeVar var_188 = "": var_198 = "": var_1E0 = "": var_1C4 = "": var_214 = "": var_234 = ""
  loc_C9D15A: FLdRfVar var_188
  loc_C9D15D: FLdRfVar var_1B4
  loc_C9D160: LitVarStr var_178, "CodiReca"
  loc_C9D165: PopAdLdVar
  loc_C9D166: FLdRfVar var_1B0
  loc_C9D169: FLdPr Me
  loc_C9D16C: MemLdPr global_60
  loc_C9D16F:  = Me.Fields
  loc_C9D174: FLdPr var_1B0
  loc_C9D177: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D17C: FLdPr var_1B4
  loc_C9D17F:  = Me.Value
  loc_C9D184: FLdRfVar var_188
  loc_C9D187: CUI1Var
  loc_C9D189: ImpAdCallI2  = Proc_270_47_A79CB0()
  loc_C9D18E: FStStrNoPop var_13C
  loc_C9D191: CUI1Str
  loc_C9D193: FStUI1 var_126
  loc_C9D197: FFree1Str var_13C
  loc_C9D19A: FFreeAd var_1B0 = ""
  loc_C9D1A1: FFree1Var var_188 = ""
  loc_C9D1A4: FLdUI1
  loc_C9D1A8: CI2UI1
  loc_C9D1AA: LitI2_Byte 1
  loc_C9D1AC: EqI2
  loc_C9D1AD: BranchF loc_C9D1DD
  loc_C9D1B0: LitI4 2
  loc_C9D1B5: FLdFPR8 var_EC
  loc_C9D1B8: LitI2_Byte &H15
  loc_C9D1BA: CR8I2
  loc_C9D1BB: MulR8
  loc_C9D1BC: LitI2_Byte &H64
  loc_C9D1BE: CR8I2
  loc_C9D1BF: DivR8
  loc_C9D1C0: CVarR8
  loc_C9D1C4: FLdRfVar var_198
  loc_C9D1C7: ImpAdCallFPR4  = Round(, )
  loc_C9D1CC: FLdRfVar var_198
  loc_C9D1CF: CR4Var
  loc_C9D1D0: FStFPR8 var_F4
  loc_C9D1D3: FFreeVar var_188 = ""
  loc_C9D1DA: Branch loc_C9D1E3
  loc_C9D1DD: LitI2_Byte 0
  loc_C9D1DF: CR8I2
  loc_C9D1E0: FStFPR8 var_F4
  loc_C9D1E3: FLdRfVar var_188
  loc_C9D1E6: FLdRfVar var_1B4
  loc_C9D1E9: LitVarStr var_178, "HoofInju"
  loc_C9D1EE: PopAdLdVar
  loc_C9D1EF: FLdRfVar var_1B0
  loc_C9D1F2: FLdPr Me
  loc_C9D1F5: MemLdPr global_60
  loc_C9D1F8:  = Me.Fields
  loc_C9D1FD: FLdPr var_1B0
  loc_C9D200: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D205: FLdPr var_1B4
  loc_C9D208:  = Me.Value
  loc_C9D20D: LitI4 2
  loc_C9D212: FLdFPR8 var_BC
  loc_C9D215: FLdRfVar var_188
  loc_C9D218: FnCDblVar
  loc_C9D21A: MulR8
  loc_C9D21B: LitI2_Byte &H64
  loc_C9D21D: CR8I2
  loc_C9D21E: DivR8
  loc_C9D21F: CVarR8
  loc_C9D223: FLdRfVar var_1C4
  loc_C9D226: ImpAdCallFPR4  = Round(, )
  loc_C9D22B: FLdFPR8 var_FC
  loc_C9D22E: CVarR8
  loc_C9D232: LitVarI2 var_214, 0
  loc_C9D237: FLdRfVar var_1C4
  loc_C9D23A: FLdI2 iCodiOfju
  loc_C9D23D: LitI2_Byte 0
  loc_C9D23F: NeI2
  loc_C9D240: CVarBoolI2 var_1E0
  loc_C9D244: FLdRfVar var_234
  loc_C9D247: ImpAdCallFPR4  = IIf(, , )
  loc_C9D24C: FLdRfVar var_234
  loc_C9D24F: AddVar var_250
  loc_C9D253: CR4Var
  loc_C9D254: FStFPR8 var_FC
  loc_C9D257: FFreeAd var_1B0 = ""
  loc_C9D25E: FFreeVar var_188 = "": var_198 = "": var_1E0 = "": var_1C4 = "": var_214 = "": var_234 = ""
  loc_C9D26F: LitI2_Byte 0
  loc_C9D271: CR8I2
  loc_C9D272: FStFPR8 var_104
  loc_C9D275: LitI2_Byte 0
  loc_C9D277: CR8I2
  loc_C9D278: FStFPR8 var_10C
  loc_C9D27B: FLdRfVar var_188
  loc_C9D27E: FLdRfVar var_1B4
  loc_C9D281: LitVarStr var_178, "MoofMoap"
  loc_C9D286: PopAdLdVar
  loc_C9D287: FLdRfVar var_1B0
  loc_C9D28A: FLdPr Me
  loc_C9D28D: MemLdPr global_60
  loc_C9D290:  = Me.Fields
  loc_C9D295: FLdPr var_1B0
  loc_C9D298: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D29D: FLdPr var_1B4
  loc_C9D2A0:  = Me.Value
  loc_C9D2A5: LitI4 2
  loc_C9D2AA: FLdFPR8 var_114
  loc_C9D2AD: CVarR8
  loc_C9D2B1: FLdRfVar var_188
  loc_C9D2B4: AddVar var_198
  loc_C9D2B8: FLdRfVar var_1C4
  loc_C9D2BB: ImpAdCallFPR4  = Round(, )
  loc_C9D2C0: FLdRfVar var_1C4
  loc_C9D2C3: CR4Var
  loc_C9D2C4: FStFPR8 var_114
  loc_C9D2C7: FFreeAd var_1B0 = ""
  loc_C9D2CE: FFreeVar var_188 = "": var_198 = ""
  loc_C9D2D7: FLdRfVar var_270
  loc_C9D2DA: FLdRfVar var_1E4
  loc_C9D2DD: LitVarStr var_204, "HoreInju"
  loc_C9D2E2: PopAdLdVar
  loc_C9D2E3: FLdRfVar var_1D0
  loc_C9D2E6: FLdPr Me
  loc_C9D2E9: MemLdPr global_60
  loc_C9D2EC:  = Me.Fields
  loc_C9D2F1: FLdPr var_1D0
  loc_C9D2F4: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D2F9: FLdPr var_1E4
  loc_C9D2FC:  = Me.Value
  loc_C9D301: LitI4 2
  loc_C9D306: FLdFPR8 var_BC
  loc_C9D309: FLdRfVar var_270
  loc_C9D30C: FnCDblVar
  loc_C9D30E: MulR8
  loc_C9D30F: LitI2_Byte &H64
  loc_C9D311: CR8I2
  loc_C9D312: DivR8
  loc_C9D313: CVarR8
  loc_C9D317: FLdRfVar var_290
  loc_C9D31A: ImpAdCallFPR4  = Round(, )
  loc_C9D31F: LitVarI2 var_2C0, 0
  loc_C9D324: FLdRfVar var_290
  loc_C9D327: FLdI2 iCodiReca
  loc_C9D32A: LitI2_Byte 0
  loc_C9D32C: NeI2
  loc_C9D32D: CVarBoolI2 var_2A0
  loc_C9D331: FLdRfVar var_2D0
  loc_C9D334: ImpAdCallFPR4  = IIf(, , )
  loc_C9D339: FLdRfVar var_3D0
  loc_C9D33C: FLdRfVar var_3C0
  loc_C9D33F: LitVarStr var_3BC, "HoofInju"
  loc_C9D344: PopAdLdVar
  loc_C9D345: FLdRfVar var_3AC
  loc_C9D348: FLdPr Me
  loc_C9D34B: MemLdPr global_60
  loc_C9D34E:  = Me.Fields
  loc_C9D353: FLdPr var_3AC
  loc_C9D356: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D35B: FLdPr var_3C0
  loc_C9D35E:  = Me.Value
  loc_C9D363: LitI4 2
  loc_C9D368: FLdFPR8 var_BC
  loc_C9D36B: FLdRfVar var_3D0
  loc_C9D36E: FnCDblVar
  loc_C9D370: MulR8
  loc_C9D371: LitI2_Byte &H64
  loc_C9D373: CR8I2
  loc_C9D374: DivR8
  loc_C9D375: CVarR8
  loc_C9D379: FLdRfVar var_400
  loc_C9D37C: ImpAdCallFPR4  = Round(, )
  loc_C9D381: LitVarI2 var_430, 0
  loc_C9D386: FLdRfVar var_400
  loc_C9D389: FLdI2 iCodiOfju
  loc_C9D38C: LitI2_Byte 0
  loc_C9D38E: NeI2
  loc_C9D38F: CVarBoolI2 var_410
  loc_C9D393: FLdRfVar var_440
  loc_C9D396: ImpAdCallFPR4  = IIf(, , )
  loc_C9D39B: LitStr " INSERT INTO tmp_apredeta (NumeApre, CodiInju, CodiReca, ImreBade, IvreBade, CodiOfju, ImofBade, IvofBade) "
  loc_C9D39E: LitStr " VALUES ("
  loc_C9D3A1: ConcatStr
  loc_C9D3A2: FStStrNoPop var_13C
  loc_C9D3A5: ILdRf lNumeApre
  loc_C9D3A8: CStrI4
  loc_C9D3AA: FStStrNoPop var_140
  loc_C9D3AD: ConcatStr
  loc_C9D3AE: FStStrNoPop var_144
  loc_C9D3B1: LitStr ","
  loc_C9D3B4: ConcatStr
  loc_C9D3B5: CVarStr var_198
  loc_C9D3B8: FLdRfVar var_188
  loc_C9D3BB: FLdRfVar var_1B4
  loc_C9D3BE: LitVarStr var_178, "CodiInju"
  loc_C9D3C3: PopAdLdVar
  loc_C9D3C4: FLdRfVar var_1B0
  loc_C9D3C7: FLdPr Me
  loc_C9D3CA: MemLdPr global_60
  loc_C9D3CD:  = Me.Fields
  loc_C9D3D2: FLdPr var_1B0
  loc_C9D3D5: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D3DA: FLdPr var_1B4
  loc_C9D3DD:  = Me.Value
  loc_C9D3E2: FLdRfVar var_188
  loc_C9D3E5: ConcatVar var_1C4
  loc_C9D3E9: LitVarStr var_1AC, ","
  loc_C9D3EE: ConcatVar var_214
  loc_C9D3F2: FLdRfVar var_234
  loc_C9D3F5: FLdRfVar var_1CC
  loc_C9D3F8: LitVarStr var_1E0, "CodiReca"
  loc_C9D3FD: PopAdLdVar
  loc_C9D3FE: FLdRfVar var_1C8
  loc_C9D401: FLdPr Me
  loc_C9D404: MemLdPr global_60
  loc_C9D407:  = Me.Fields
  loc_C9D40C: FLdPr var_1C8
  loc_C9D40F: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D414: FLdPr var_1CC
  loc_C9D417:  = Me.Value
  loc_C9D41C: FLdRfVar var_234
  loc_C9D41F: ConcatVar var_250
  loc_C9D423: LitVarStr var_1F4, ","
  loc_C9D428: ConcatVar var_260
  loc_C9D42C: LitI4 0
  loc_C9D431: LitI4 -1
  loc_C9D436: LitI4 1
  loc_C9D43B: LitStr "."
  loc_C9D43E: LitStr ","
  loc_C9D441: FLdRfVar var_2D0
  loc_C9D444: CStrVarVal var_148
  loc_C9D448: ImpAdCallI2 Replace(, , , , , )
  loc_C9D44D: CVarStr var_2E0
  loc_C9D450: ConcatVar var_2F0
  loc_C9D454: LitVarStr var_300, ","
  loc_C9D459: ConcatVar var_310
  loc_C9D45D: LitI4 0
  loc_C9D462: LitI4 -1
  loc_C9D467: LitI4 1
  loc_C9D46C: LitStr "."
  loc_C9D46F: LitStr ","
  loc_C9D472: FLdFPR8 var_F4
  loc_C9D475: CStrR8
  loc_C9D477: FStStrNoPop var_14C
  loc_C9D47A: ImpAdCallI2 Replace(, , , , , )
  loc_C9D47F: CVarStr var_320
  loc_C9D482: ConcatVar var_330
  loc_C9D486: LitVarStr var_340, ","
  loc_C9D48B: ConcatVar var_350
  loc_C9D48F: FLdRfVar var_378
  loc_C9D492: FLdRfVar var_368
  loc_C9D495: LitVarStr var_364, "CodiOfju"
  loc_C9D49A: PopAdLdVar
  loc_C9D49B: FLdRfVar var_354
  loc_C9D49E: FLdPr Me
  loc_C9D4A1: MemLdPr global_60
  loc_C9D4A4:  = Me.Fields
  loc_C9D4A9: FLdPr var_354
  loc_C9D4AC: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D4B1: FLdPr var_368
  loc_C9D4B4:  = Me.Value
  loc_C9D4B9: FLdRfVar var_378
  loc_C9D4BC: ConcatVar var_388
  loc_C9D4C0: LitVarStr var_398, ","
  loc_C9D4C5: ConcatVar var_3A8
  loc_C9D4C9: LitI4 0
  loc_C9D4CE: LitI4 -1
  loc_C9D4D3: LitI4 1
  loc_C9D4D8: LitStr "."
  loc_C9D4DB: LitStr ","
  loc_C9D4DE: FLdRfVar var_440
  loc_C9D4E1: CStrVarVal var_150
  loc_C9D4E5: ImpAdCallI2 Replace(, , , , , )
  loc_C9D4EA: CVarStr var_450
  loc_C9D4ED: ConcatVar var_460
  loc_C9D4F1: LitVarStr var_470, ","
  loc_C9D4F6: ConcatVar var_480
  loc_C9D4FA: LitI4 0
  loc_C9D4FF: LitI4 -1
  loc_C9D504: LitI4 1
  loc_C9D509: LitStr "."
  loc_C9D50C: LitStr ","
  loc_C9D50F: FLdFPR8 var_104
  loc_C9D512: CStrR8
  loc_C9D514: FStStrNoPop var_154
  loc_C9D517: ImpAdCallI2 Replace(, , , , , )
  loc_C9D51C: CVarStr var_490
  loc_C9D51F: ConcatVar var_4A0
  loc_C9D523: LitVarStr var_4B0, ")"
  loc_C9D528: ConcatVar var_4C0
  loc_C9D52C: CStrVarVal var_158
  loc_C9D530: Call EjecutarRsCls(from_stack_1v)
  loc_C9D535: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_C9D548: FFreeAd var_1B0 = "": var_1B4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1E4 = "": var_354 = "": var_368 = "": var_3AC = ""
  loc_C9D55F: FFreeVar var_480 = "": var_490 = "": var_4A0 = "": var_4C0 = "": var_198 = "": var_188 = "": var_1C4 = "": var_214 = "": var_234 = "": var_250 = "": var_270 = "": var_280 = "": var_2A0 = "": var_290 = "": var_2C0 = "": var_2D0 = "": var_260 = "": var_2E0 = "": var_2F0 = "": var_310 = "": var_320 = "": var_330 = "": var_350 = "": var_378 = "": var_388 = "": var_3D0 = "": var_3F0 = "": var_410 = "": var_400 = "": var_430 = "": var_440 = "": var_3A8 = "": var_450 = ""
  loc_C9D5A6: LitI2_Byte 0
  loc_C9D5A8: CR8I2
  loc_C9D5A9: FStFPR8 var_11C
  loc_C9D5AC: LitI2_Byte 0
  loc_C9D5AE: CR8I2
  loc_C9D5AF: FStFPR8 var_124
  loc_C9D5B2: FLdRfVar var_188
  loc_C9D5B5: FLdRfVar var_1B4
  loc_C9D5B8: LitVarStr var_178, "HrmiPaap"
  loc_C9D5BD: PopAdLdVar
  loc_C9D5BE: FLdRfVar var_1B0
  loc_C9D5C1: FLdPr Me
  loc_C9D5C4: MemLdPr global_64
  loc_C9D5C7:  = Me.Fields
  loc_C9D5CC: FLdPr var_1B0
  loc_C9D5CF: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D5D4: FLdPr var_1B4
  loc_C9D5D7:  = Me.Value
  loc_C9D5DC: FLdFPR8 var_EC
  loc_C9D5DF: FLdRfVar var_188
  loc_C9D5E2: FnCDblVar
  loc_C9D5E4: LtR8
  loc_C9D5E5: FLdFPR8 var_EC
  loc_C9D5E8: LitI2_Byte 0
  loc_C9D5EA: CR8I2
  loc_C9D5EB: GtR4
  loc_C9D5EC: AndI4
  loc_C9D5ED: FLdRfVar var_198
  loc_C9D5F0: FLdRfVar var_1CC
  loc_C9D5F3: LitVarStr var_1AC, "HrmiPaap"
  loc_C9D5F8: PopAdLdVar
  loc_C9D5F9: FLdRfVar var_1C8
  loc_C9D5FC: FLdPr Me
  loc_C9D5FF: MemLdPr global_64
  loc_C9D602:  = Me.Fields
  loc_C9D607: FLdPr var_1C8
  loc_C9D60A: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D60F: FLdPr var_1CC
  loc_C9D612:  = Me.Value
  loc_C9D617: FLdRfVar var_198
  loc_C9D61A: FnCDblVar
  loc_C9D61C: LitI2_Byte 0
  loc_C9D61E: CR8I2
  loc_C9D61F: GtR4
  loc_C9D620: AndI4
  loc_C9D621: FFreeAd var_1B0 = "": var_1B4 = "": var_1C8 = ""
  loc_C9D62C: FFreeVar var_188 = ""
  loc_C9D633: BranchF loc_C9D8E5
  loc_C9D636: FLdRfVar var_188
  loc_C9D639: FLdRfVar var_1B4
  loc_C9D63C: LitVarStr var_178, "HrmiPaap"
  loc_C9D641: PopAdLdVar
  loc_C9D642: FLdRfVar var_1B0
  loc_C9D645: FLdPr Me
  loc_C9D648: MemLdPr global_64
  loc_C9D64B:  = Me.Fields
  loc_C9D650: FLdPr var_1B0
  loc_C9D653: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D658: FLdPr var_1B4
  loc_C9D65B:  = Me.Value
  loc_C9D660: FLdRfVar var_188
  loc_C9D663: FnCDblVar
  loc_C9D665: FStFPR8 var_EC
  loc_C9D668: FFreeAd var_1B0 = ""
  loc_C9D66F: FFree1Var var_188 = ""
  loc_C9D672: FLdUI1
  loc_C9D676: CI2UI1
  loc_C9D678: LitI2_Byte 1
  loc_C9D67A: EqI2
  loc_C9D67B: BranchF loc_C9D6AB
  loc_C9D67E: LitI4 2
  loc_C9D683: FLdFPR8 var_EC
  loc_C9D686: LitI2_Byte &H15
  loc_C9D688: CR8I2
  loc_C9D689: MulR8
  loc_C9D68A: LitI2_Byte &H64
  loc_C9D68C: CR8I2
  loc_C9D68D: DivR8
  loc_C9D68E: CVarR8
  loc_C9D692: FLdRfVar var_198
  loc_C9D695: ImpAdCallFPR4  = Round(, )
  loc_C9D69A: FLdRfVar var_198
  loc_C9D69D: CR4Var
  loc_C9D69E: FStFPR8 var_F4
  loc_C9D6A1: FFreeVar var_188 = ""
  loc_C9D6A8: Branch loc_C9D6B1
  loc_C9D6AB: LitI2_Byte 0
  loc_C9D6AD: CR8I2
  loc_C9D6AE: FStFPR8 var_F4
  loc_C9D6B1: LitStr "SELECT sum(ImreBade) ImreBade, SUM(IvreBade) IvreBade FROM tmp_apredeta WHERE NumeApre = "
  loc_C9D6B4: ILdRf lNumeApre
  loc_C9D6B7: CStrI4
  loc_C9D6B9: FStStrNoPop var_13C
  loc_C9D6BC: ConcatStr
  loc_C9D6BD: FStStrNoPop var_140
  loc_C9D6C0: Call EjecutarRsCls1(from_stack_1v)
  loc_C9D6C5: FFreeStr var_13C = ""
  loc_C9D6CC: FLdRfVar var_19C
  loc_C9D6CF: FLdPr Me
  loc_C9D6D2: MemLdPr global_60
  loc_C9D6D5:  = Me.RecordCount
  loc_C9D6DA: ILdRf var_19C
  loc_C9D6DD: LitI4 0
  loc_C9D6E2: GtI4
  loc_C9D6E3: BranchF loc_C9D8E2
  loc_C9D6E6: FLdRfVar var_188
  loc_C9D6E9: FLdRfVar var_1B4
  loc_C9D6EC: LitVarStr var_178, "ImreBade"
  loc_C9D6F1: PopAdLdVar
  loc_C9D6F2: FLdRfVar var_1B0
  loc_C9D6F5: FLdPr Me
  loc_C9D6F8: MemLdPr global_60
  loc_C9D6FB:  = Me.Fields
  loc_C9D700: FLdPr var_1B0
  loc_C9D703: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D708: FLdPr var_1B4
  loc_C9D70B:  = Me.Value
  loc_C9D710: LitI4 2
  loc_C9D715: FLdFPR8 var_EC
  loc_C9D718: FLdRfVar var_188
  loc_C9D71B: FnCDblVar
  loc_C9D71D: SubR4
  loc_C9D71E: CVarR8
  loc_C9D722: FLdRfVar var_1C4
  loc_C9D725: ImpAdCallFPR4  = Round(, )
  loc_C9D72A: FLdRfVar var_1C4
  loc_C9D72D: CR4Var
  loc_C9D72E: FStFPR8 var_11C
  loc_C9D731: FFreeAd var_1B0 = ""
  loc_C9D738: FFreeVar var_188 = "": var_198 = ""
  loc_C9D741: FLdRfVar var_188
  loc_C9D744: FLdRfVar var_1B4
  loc_C9D747: LitVarStr var_178, "IvreBade"
  loc_C9D74C: PopAdLdVar
  loc_C9D74D: FLdRfVar var_1B0
  loc_C9D750: FLdPr Me
  loc_C9D753: MemLdPr global_60
  loc_C9D756:  = Me.Fields
  loc_C9D75B: FLdPr var_1B0
  loc_C9D75E: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D763: FLdPr var_1B4
  loc_C9D766:  = Me.Value
  loc_C9D76B: LitI4 2
  loc_C9D770: FLdFPR8 var_F4
  loc_C9D773: FLdRfVar var_188
  loc_C9D776: FnCDblVar
  loc_C9D778: SubR4
  loc_C9D779: CVarR8
  loc_C9D77D: FLdRfVar var_1C4
  loc_C9D780: ImpAdCallFPR4  = Round(, )
  loc_C9D785: FLdRfVar var_1C4
  loc_C9D788: CR4Var
  loc_C9D789: FStFPR8 var_124
  loc_C9D78C: FFreeAd var_1B0 = ""
  loc_C9D793: FFreeVar var_188 = "": var_198 = ""
  loc_C9D79C: LitStr "SELECT * FROM tmp_apredeta WHERE NumeApre = "
  loc_C9D79F: ILdRf lNumeApre
  loc_C9D7A2: CStrI4
  loc_C9D7A4: FStStrNoPop var_13C
  loc_C9D7A7: ConcatStr
  loc_C9D7A8: FStStrNoPop var_140
  loc_C9D7AB: LitStr " ORDER BY NumeApre, CodiInju Desc "
  loc_C9D7AE: ConcatStr
  loc_C9D7AF: FStStrNoPop var_144
  loc_C9D7B2: Call EjecutarRsCls1(from_stack_1v)
  loc_C9D7B7: FFreeStr var_13C = "": var_140 = ""
  loc_C9D7C0: FLdRfVar var_19C
  loc_C9D7C3: FLdPr Me
  loc_C9D7C6: MemLdPr global_60
  loc_C9D7C9:  = Me.RecordCount
  loc_C9D7CE: ILdRf var_19C
  loc_C9D7D1: LitI4 0
  loc_C9D7D6: GtI4
  loc_C9D7D7: BranchF loc_C9D8E2
  loc_C9D7DA: LitStr "UPDATE tmp_apredeta SET ImreBade = ImreBade + "
  loc_C9D7DD: LitI4 0
  loc_C9D7E2: LitI4 -1
  loc_C9D7E7: LitI4 1
  loc_C9D7EC: LitStr "."
  loc_C9D7EF: LitStr ","
  loc_C9D7F2: FLdFPR8 var_11C
  loc_C9D7F5: FnCDblR8
  loc_C9D7F7: CStrR8
  loc_C9D7F9: FStStrNoPop var_13C
  loc_C9D7FC: ImpAdCallI2 Replace(, , , , , )
  loc_C9D801: FStStrNoPop var_140
  loc_C9D804: ConcatStr
  loc_C9D805: FStStrNoPop var_144
  loc_C9D808: LitStr ", IvreBade = IvreBade + "
  loc_C9D80B: ConcatStr
  loc_C9D80C: FStStrNoPop var_14C
  loc_C9D80F: LitI4 0
  loc_C9D814: LitI4 -1
  loc_C9D819: LitI4 1
  loc_C9D81E: LitStr "."
  loc_C9D821: LitStr ","
  loc_C9D824: FLdFPR8 var_124
  loc_C9D827: FnCDblR8
  loc_C9D829: CStrR8
  loc_C9D82B: FStStrNoPop var_148
  loc_C9D82E: ImpAdCallI2 Replace(, , , , , )
  loc_C9D833: FStStrNoPop var_150
  loc_C9D836: ConcatStr
  loc_C9D837: FStStrNoPop var_154
  loc_C9D83A: LitStr " WHERE NumeApre = "
  loc_C9D83D: ConcatStr
  loc_C9D83E: CVarStr var_198
  loc_C9D841: FLdRfVar var_188
  loc_C9D844: FLdRfVar var_1B4
  loc_C9D847: LitVarStr var_178, "NumeApre"
  loc_C9D84C: PopAdLdVar
  loc_C9D84D: FLdRfVar var_1B0
  loc_C9D850: FLdPr Me
  loc_C9D853: MemLdPr global_60
  loc_C9D856:  = Me.Fields
  loc_C9D85B: FLdPr var_1B0
  loc_C9D85E: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D863: FLdPr var_1B4
  loc_C9D866:  = Me.Value
  loc_C9D86B: FLdRfVar var_188
  loc_C9D86E: ConcatVar var_1C4
  loc_C9D872: LitVarStr var_1AC, " AND CodiInju = "
  loc_C9D877: ConcatVar var_214
  loc_C9D87B: FLdRfVar var_234
  loc_C9D87E: FLdRfVar var_1CC
  loc_C9D881: LitVarStr var_1E0, "CodiInju"
  loc_C9D886: PopAdLdVar
  loc_C9D887: FLdRfVar var_1C8
  loc_C9D88A: FLdPr Me
  loc_C9D88D: MemLdPr global_60
  loc_C9D890:  = Me.Fields
  loc_C9D895: FLdPr var_1C8
  loc_C9D898: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D89D: FLdPr var_1CC
  loc_C9D8A0:  = Me.Value
  loc_C9D8A5: FLdRfVar var_234
  loc_C9D8A8: ConcatVar var_250
  loc_C9D8AC: CStrVarVal var_158
  loc_C9D8B0: Call EjecutarRsCls(from_stack_1v)
  loc_C9D8B5: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_C9D8C8: FFreeAd var_1B0 = "": var_1B4 = "": var_1C8 = ""
  loc_C9D8D3: FFreeVar var_198 = "": var_188 = "": var_1C4 = "": var_214 = "": var_234 = ""
  loc_C9D8E2: Branch loc_C9DC0D
  loc_C9D8E5: FLdRfVar var_188
  loc_C9D8E8: FLdRfVar var_1B4
  loc_C9D8EB: LitVarStr var_178, "HrmaPaap"
  loc_C9D8F0: PopAdLdVar
  loc_C9D8F1: FLdRfVar var_1B0
  loc_C9D8F4: FLdPr Me
  loc_C9D8F7: MemLdPr global_64
  loc_C9D8FA:  = Me.Fields
  loc_C9D8FF: FLdPr var_1B0
  loc_C9D902: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D907: FLdPr var_1B4
  loc_C9D90A:  = Me.Value
  loc_C9D90F: FLdFPR8 var_EC
  loc_C9D912: FLdRfVar var_188
  loc_C9D915: FnCDblVar
  loc_C9D917: GtR4
  loc_C9D918: FLdRfVar var_198
  loc_C9D91B: FLdRfVar var_1CC
  loc_C9D91E: LitVarStr var_1AC, "HrmaPaap"
  loc_C9D923: PopAdLdVar
  loc_C9D924: FLdRfVar var_1C8
  loc_C9D927: FLdPr Me
  loc_C9D92A: MemLdPr global_64
  loc_C9D92D:  = Me.Fields
  loc_C9D932: FLdPr var_1C8
  loc_C9D935: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D93A: FLdPr var_1CC
  loc_C9D93D:  = Me.Value
  loc_C9D942: FLdRfVar var_198
  loc_C9D945: FnCDblVar
  loc_C9D947: LitI2_Byte 0
  loc_C9D949: CR8I2
  loc_C9D94A: GtR4
  loc_C9D94B: AndI4
  loc_C9D94C: FFreeAd var_1B0 = "": var_1B4 = "": var_1C8 = ""
  loc_C9D957: FFreeVar var_188 = ""
  loc_C9D95E: BranchF loc_C9DC0D
  loc_C9D961: FLdRfVar var_188
  loc_C9D964: FLdRfVar var_1B4
  loc_C9D967: LitVarStr var_178, "HrmaPaap"
  loc_C9D96C: PopAdLdVar
  loc_C9D96D: FLdRfVar var_1B0
  loc_C9D970: FLdPr Me
  loc_C9D973: MemLdPr global_64
  loc_C9D976:  = Me.Fields
  loc_C9D97B: FLdPr var_1B0
  loc_C9D97E: from_stack_2 = Me.Item(from_stack_1)
  loc_C9D983: FLdPr var_1B4
  loc_C9D986:  = Me.Value
  loc_C9D98B: FLdRfVar var_188
  loc_C9D98E: FnCDblVar
  loc_C9D990: FStFPR8 var_EC
  loc_C9D993: FFreeAd var_1B0 = ""
  loc_C9D99A: FFree1Var var_188 = ""
  loc_C9D99D: FLdUI1
  loc_C9D9A1: CI2UI1
  loc_C9D9A3: LitI2_Byte 1
  loc_C9D9A5: EqI2
  loc_C9D9A6: BranchF loc_C9D9D6
  loc_C9D9A9: LitI4 2
  loc_C9D9AE: FLdFPR8 var_EC
  loc_C9D9B1: LitI2_Byte &H15
  loc_C9D9B3: CR8I2
  loc_C9D9B4: MulR8
  loc_C9D9B5: LitI2_Byte &H64
  loc_C9D9B7: CR8I2
  loc_C9D9B8: DivR8
  loc_C9D9B9: CVarR8
  loc_C9D9BD: FLdRfVar var_198
  loc_C9D9C0: ImpAdCallFPR4  = Round(, )
  loc_C9D9C5: FLdRfVar var_198
  loc_C9D9C8: CR4Var
  loc_C9D9C9: FStFPR8 var_F4
  loc_C9D9CC: FFreeVar var_188 = ""
  loc_C9D9D3: Branch loc_C9D9DC
  loc_C9D9D6: LitI2_Byte 0
  loc_C9D9D8: CR8I2
  loc_C9D9D9: FStFPR8 var_F4
  loc_C9D9DC: LitStr "SELECT sum(ImreBade) ImreBade, sum(IvreBade) IvreBade FROM tmp_apredeta WHERE NumeApre = "
  loc_C9D9DF: ILdRf lNumeApre
  loc_C9D9E2: CStrI4
  loc_C9D9E4: FStStrNoPop var_13C
  loc_C9D9E7: ConcatStr
  loc_C9D9E8: FStStrNoPop var_140
  loc_C9D9EB: Call EjecutarRsCls1(from_stack_1v)
  loc_C9D9F0: FFreeStr var_13C = ""
  loc_C9D9F7: FLdRfVar var_19C
  loc_C9D9FA: FLdPr Me
  loc_C9D9FD: MemLdPr global_60
  loc_C9DA00:  = Me.RecordCount
  loc_C9DA05: ILdRf var_19C
  loc_C9DA08: LitI4 0
  loc_C9DA0D: GtI4
  loc_C9DA0E: BranchF loc_C9DC0D
  loc_C9DA11: FLdRfVar var_188
  loc_C9DA14: FLdRfVar var_1B4
  loc_C9DA17: LitVarStr var_178, "ImreBade"
  loc_C9DA1C: PopAdLdVar
  loc_C9DA1D: FLdRfVar var_1B0
  loc_C9DA20: FLdPr Me
  loc_C9DA23: MemLdPr global_60
  loc_C9DA26:  = Me.Fields
  loc_C9DA2B: FLdPr var_1B0
  loc_C9DA2E: from_stack_2 = Me.Item(from_stack_1)
  loc_C9DA33: FLdPr var_1B4
  loc_C9DA36:  = Me.Value
  loc_C9DA3B: LitI4 2
  loc_C9DA40: FLdRfVar var_188
  loc_C9DA43: FnCDblVar
  loc_C9DA45: FLdFPR8 var_EC
  loc_C9DA48: SubR4
  loc_C9DA49: CVarR8
  loc_C9DA4D: FLdRfVar var_1C4
  loc_C9DA50: ImpAdCallFPR4  = Round(, )
  loc_C9DA55: FLdRfVar var_1C4
  loc_C9DA58: CR4Var
  loc_C9DA59: FStFPR8 var_11C
  loc_C9DA5C: FFreeAd var_1B0 = ""
  loc_C9DA63: FFreeVar var_188 = "": var_198 = ""
  loc_C9DA6C: FLdRfVar var_188
  loc_C9DA6F: FLdRfVar var_1B4
  loc_C9DA72: LitVarStr var_178, "IvreBade"
  loc_C9DA77: PopAdLdVar
  loc_C9DA78: FLdRfVar var_1B0
  loc_C9DA7B: FLdPr Me
  loc_C9DA7E: MemLdPr global_60
  loc_C9DA81:  = Me.Fields
  loc_C9DA86: FLdPr var_1B0
  loc_C9DA89: from_stack_2 = Me.Item(from_stack_1)
  loc_C9DA8E: FLdPr var_1B4
  loc_C9DA91:  = Me.Value
  loc_C9DA96: LitI4 2
  loc_C9DA9B: FLdRfVar var_188
  loc_C9DA9E: FnCDblVar
  loc_C9DAA0: FLdFPR8 var_F4
  loc_C9DAA3: SubR4
  loc_C9DAA4: CVarR8
  loc_C9DAA8: FLdRfVar var_1C4
  loc_C9DAAB: ImpAdCallFPR4  = Round(, )
  loc_C9DAB0: FLdRfVar var_1C4
  loc_C9DAB3: CR4Var
  loc_C9DAB4: FStFPR8 var_124
  loc_C9DAB7: FFreeAd var_1B0 = ""
  loc_C9DABE: FFreeVar var_188 = "": var_198 = ""
  loc_C9DAC7: LitStr "SELECT * FROM tmp_apredeta WHERE NumeApre = "
  loc_C9DACA: ILdRf lNumeApre
  loc_C9DACD: CStrI4
  loc_C9DACF: FStStrNoPop var_13C
  loc_C9DAD2: ConcatStr
  loc_C9DAD3: FStStrNoPop var_140
  loc_C9DAD6: LitStr " ORDER BY NumeApre, CodiInju Desc "
  loc_C9DAD9: ConcatStr
  loc_C9DADA: FStStrNoPop var_144
  loc_C9DADD: Call EjecutarRsCls1(from_stack_1v)
  loc_C9DAE2: FFreeStr var_13C = "": var_140 = ""
  loc_C9DAEB: FLdRfVar var_19C
  loc_C9DAEE: FLdPr Me
  loc_C9DAF1: MemLdPr global_60
  loc_C9DAF4:  = Me.RecordCount
  loc_C9DAF9: ILdRf var_19C
  loc_C9DAFC: LitI4 0
  loc_C9DB01: GtI4
  loc_C9DB02: BranchF loc_C9DC0D
  loc_C9DB05: LitStr "UPDATE tmp_apredeta SET ImreBade = ImreBade - "
  loc_C9DB08: LitI4 0
  loc_C9DB0D: LitI4 -1
  loc_C9DB12: LitI4 1
  loc_C9DB17: LitStr "."
  loc_C9DB1A: LitStr ","
  loc_C9DB1D: FLdFPR8 var_11C
  loc_C9DB20: FnCDblR8
  loc_C9DB22: CStrR8
  loc_C9DB24: FStStrNoPop var_13C
  loc_C9DB27: ImpAdCallI2 Replace(, , , , , )
  loc_C9DB2C: FStStrNoPop var_140
  loc_C9DB2F: ConcatStr
  loc_C9DB30: FStStrNoPop var_144
  loc_C9DB33: LitStr ", IvreBade = IvreBade - "
  loc_C9DB36: ConcatStr
  loc_C9DB37: FStStrNoPop var_14C
  loc_C9DB3A: LitI4 0
  loc_C9DB3F: LitI4 -1
  loc_C9DB44: LitI4 1
  loc_C9DB49: LitStr "."
  loc_C9DB4C: LitStr ","
  loc_C9DB4F: FLdFPR8 var_124
  loc_C9DB52: FnCDblR8
  loc_C9DB54: CStrR8
  loc_C9DB56: FStStrNoPop var_148
  loc_C9DB59: ImpAdCallI2 Replace(, , , , , )
  loc_C9DB5E: FStStrNoPop var_150
  loc_C9DB61: ConcatStr
  loc_C9DB62: FStStrNoPop var_154
  loc_C9DB65: LitStr " WHERE NumeApre = "
  loc_C9DB68: ConcatStr
  loc_C9DB69: CVarStr var_198
  loc_C9DB6C: FLdRfVar var_188
  loc_C9DB6F: FLdRfVar var_1B4
  loc_C9DB72: LitVarStr var_178, "NumeApre"
  loc_C9DB77: PopAdLdVar
  loc_C9DB78: FLdRfVar var_1B0
  loc_C9DB7B: FLdPr Me
  loc_C9DB7E: MemLdPr global_60
  loc_C9DB81:  = Me.Fields
  loc_C9DB86: FLdPr var_1B0
  loc_C9DB89: from_stack_2 = Me.Item(from_stack_1)
  loc_C9DB8E: FLdPr var_1B4
  loc_C9DB91:  = Me.Value
  loc_C9DB96: FLdRfVar var_188
  loc_C9DB99: ConcatVar var_1C4
  loc_C9DB9D: LitVarStr var_1AC, " AND CodiInju = "
  loc_C9DBA2: ConcatVar var_214
  loc_C9DBA6: FLdRfVar var_234
  loc_C9DBA9: FLdRfVar var_1CC
  loc_C9DBAC: LitVarStr var_1E0, "CodiInju"
  loc_C9DBB1: PopAdLdVar
  loc_C9DBB2: FLdRfVar var_1C8
  loc_C9DBB5: FLdPr Me
  loc_C9DBB8: MemLdPr global_60
  loc_C9DBBB:  = Me.Fields
  loc_C9DBC0: FLdPr var_1C8
  loc_C9DBC3: from_stack_2 = Me.Item(from_stack_1)
  loc_C9DBC8: FLdPr var_1CC
  loc_C9DBCB:  = Me.Value
  loc_C9DBD0: FLdRfVar var_234
  loc_C9DBD3: ConcatVar var_250
  loc_C9DBD7: CStrVarVal var_158
  loc_C9DBDB: Call EjecutarRsCls(from_stack_1v)
  loc_C9DBE0: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_C9DBF3: FFreeAd var_1B0 = "": var_1B4 = "": var_1C8 = ""
  loc_C9DBFE: FFreeVar var_198 = "": var_188 = "": var_1C4 = "": var_214 = "": var_234 = ""
  loc_C9DC0D: FLdI2 arg_34
  loc_C9DC10: LitI2_Byte &HFF
  loc_C9DC12: EqI2
  loc_C9DC13: BranchF loc_C9DD00
  loc_C9DC16: LitVarStr var_1AC, " SELECT ImpoEsap FROM escaapre WHERE CodiPaap = "
  loc_C9DC1B: FLdRfVar var_188
  loc_C9DC1E: FLdRfVar var_1B4
  loc_C9DC21: LitVarStr var_178, "CodiPaap"
  loc_C9DC26: PopAdLdVar
  loc_C9DC27: FLdRfVar var_1B0
  loc_C9DC2A: FLdPr Me
  loc_C9DC2D: MemLdPr global_64
  loc_C9DC30:  = Me.Fields
  loc_C9DC35: FLdPr var_1B0
  loc_C9DC38: from_stack_2 = Me.Item(from_stack_1)
  loc_C9DC3D: FLdPr var_1B4
  loc_C9DC40:  = Me.Value
  loc_C9DC45: FLdRfVar var_188
  loc_C9DC48: ConcatVar var_198
  loc_C9DC4C: LitVarStr var_1E0, " AND TipoEsap = 'Notificacion' "
  loc_C9DC51: ConcatVar var_1C4
  loc_C9DC55: LitVarStr var_1F4, " AND "
  loc_C9DC5A: ConcatVar var_214
  loc_C9DC5E: FLdI2 arg_30
  loc_C9DC61: CVarI2 var_204
  loc_C9DC64: ConcatVar var_234
  loc_C9DC68: LitVarStr var_224, " >= DesdEsap AND "
  loc_C9DC6D: ConcatVar var_250
  loc_C9DC71: FLdI2 arg_30
  loc_C9DC74: CVarI2 var_2A0
  loc_C9DC77: ConcatVar var_260
  loc_C9DC7B: LitVarStr var_2B0, " <= HastEsap ORDER BY CodiPaap, CodiEsap"
  loc_C9DC80: ConcatVar var_270
  loc_C9DC84: CStrVarVal var_13C
  loc_C9DC88: Call EjecutarRsCls1(from_stack_1v)
  loc_C9DC8D: FFree1Str var_13C
  loc_C9DC90: FFreeAd var_1B0 = ""
  loc_C9DC97: FFreeVar var_188 = "": var_198 = "": var_1C4 = "": var_214 = "": var_234 = "": var_250 = "": var_260 = ""
  loc_C9DCAA: FLdRfVar var_19C
  loc_C9DCAD: FLdPr Me
  loc_C9DCB0: MemLdPr global_60
  loc_C9DCB3:  = Me.RecordCount
  loc_C9DCB8: ILdRf var_19C
  loc_C9DCBB: LitI4 0
  loc_C9DCC0: GtI4
  loc_C9DCC1: BranchF loc_C9DD00
  loc_C9DCC4: FLdRfVar var_188
  loc_C9DCC7: FLdRfVar var_1B4
  loc_C9DCCA: LitVarStr var_178, "ImpoEsap"
  loc_C9DCCF: PopAdLdVar
  loc_C9DCD0: FLdRfVar var_1B0
  loc_C9DCD3: FLdPr Me
  loc_C9DCD6: MemLdPr global_60
  loc_C9DCD9:  = Me.Fields
  loc_C9DCDE: FLdPr var_1B0
  loc_C9DCE1: from_stack_2 = Me.Item(from_stack_1)
  loc_C9DCE6: FLdPr var_1B4
  loc_C9DCE9:  = Me.Value
  loc_C9DCEE: FLdRfVar var_188
  loc_C9DCF1: FnCDblVar
  loc_C9DCF3: FStFPR8 var_114
  loc_C9DCF6: FFreeAd var_1B0 = ""
  loc_C9DCFD: FFree1Var var_188 = ""
  loc_C9DD00: ILdRf lNumeApre
  loc_C9DD03: FLdRfVar var_188
  loc_C9DD06: ImpAdCallFPR4  = Proc_270_154_B625BC()
  loc_C9DD0B: FLdRfVar var_188
  loc_C9DD0E: FStVar var_138
  loc_C9DD12: LitVarI2 var_178, 1
  loc_C9DD17: PopAdLdVar
  loc_C9DD18: FLdRfVar var_138
  loc_C9DD1B: VarIndexLdVar
  loc_C9DD21: PopAd
  loc_C9DD23: FLdFPR8 var_C4
  loc_C9DD26: CVarR8
  loc_C9DD2A: LitVarI2 var_204, 1
  loc_C9DD2F: PopAdLdVar
  loc_C9DD30: FLdRfVar var_138
  loc_C9DD33: VarIndexLdVar
  loc_C9DD39: SubVar var_234
  loc_C9DD3D: FStVar var_270
  loc_C9DD41: FLdRfVar var_270
  loc_C9DD44: LitVarI2 var_260, 0
  loc_C9DD49: FLdFPR8 var_C4
  loc_C9DD4C: CVarR8
  loc_C9DD50: FLdRfVar var_188
  loc_C9DD53: SubVar var_198
  loc_C9DD57: LitVarI2 var_1F4, 0
  loc_C9DD5C: HardType
  loc_C9DD5D: LtVar var_1C4
  loc_C9DD61: FStVar var_250
  loc_C9DD65: FLdRfVar var_250
  loc_C9DD68: FLdRfVar var_280
  loc_C9DD6B: ImpAdCallFPR4  = IIf(, , )
  loc_C9DD70: FLdRfVar var_280
  loc_C9DD73: CStrVarTmp
  loc_C9DD74: FStStrNoPop var_13C
  loc_C9DD77: LitI4 1
  loc_C9DD7C: FLdRfVar var_B0
  loc_C9DD7F: Ary1StStrCopy
  loc_C9DD80: FFree1Str var_13C
  loc_C9DD83: FFreeVar var_188 = "": var_214 = "": var_250 = "": var_260 = "": var_270 = ""
  loc_C9DD92: LitVarI2 var_178, 2
  loc_C9DD97: PopAdLdVar
  loc_C9DD98: FLdRfVar var_138
  loc_C9DD9B: VarIndexLdVar
  loc_C9DDA1: PopAd
  loc_C9DDA3: FLdFPR8 var_D4
  loc_C9DDA6: CVarR8
  loc_C9DDAA: LitVarI2 var_204, 2
  loc_C9DDAF: PopAdLdVar
  loc_C9DDB0: FLdRfVar var_138
  loc_C9DDB3: VarIndexLdVar
  loc_C9DDB9: SubVar var_234
  loc_C9DDBD: FStVar var_270
  loc_C9DDC1: FLdRfVar var_270
  loc_C9DDC4: LitVarI2 var_260, 0
  loc_C9DDC9: FLdFPR8 var_D4
  loc_C9DDCC: CVarR8
  loc_C9DDD0: FLdRfVar var_188
  loc_C9DDD3: SubVar var_198
  loc_C9DDD7: LitVarI2 var_1F4, 0
  loc_C9DDDC: HardType
  loc_C9DDDD: LtVar var_1C4
  loc_C9DDE1: FStVar var_250
  loc_C9DDE5: FLdRfVar var_250
  loc_C9DDE8: FLdRfVar var_280
  loc_C9DDEB: ImpAdCallFPR4  = IIf(, , )
  loc_C9DDF0: FLdRfVar var_280
  loc_C9DDF3: CStrVarTmp
  loc_C9DDF4: FStStrNoPop var_13C
  loc_C9DDF7: LitI4 2
  loc_C9DDFC: FLdRfVar var_B0
  loc_C9DDFF: Ary1StStrCopy
  loc_C9DE00: FFree1Str var_13C
  loc_C9DE03: FFreeVar var_188 = "": var_214 = "": var_250 = "": var_260 = "": var_270 = ""
  loc_C9DE12: LitVarI2 var_178, 3
  loc_C9DE17: PopAdLdVar
  loc_C9DE18: FLdRfVar var_138
  loc_C9DE1B: VarIndexLdVar
  loc_C9DE21: PopAd
  loc_C9DE23: FLdFPR8 var_DC
  loc_C9DE26: CVarR8
  loc_C9DE2A: LitVarI2 var_204, 3
  loc_C9DE2F: PopAdLdVar
  loc_C9DE30: FLdRfVar var_138
  loc_C9DE33: VarIndexLdVar
  loc_C9DE39: SubVar var_234
  loc_C9DE3D: FStVar var_270
  loc_C9DE41: FLdRfVar var_270
  loc_C9DE44: LitVarI2 var_260, 0
  loc_C9DE49: FLdFPR8 var_DC
  loc_C9DE4C: CVarR8
  loc_C9DE50: FLdRfVar var_188
  loc_C9DE53: SubVar var_198
  loc_C9DE57: LitVarI2 var_1F4, 0
  loc_C9DE5C: HardType
  loc_C9DE5D: LtVar var_1C4
  loc_C9DE61: FStVar var_250
  loc_C9DE65: FLdRfVar var_250
  loc_C9DE68: FLdRfVar var_280
  loc_C9DE6B: ImpAdCallFPR4  = IIf(, , )
  loc_C9DE70: FLdRfVar var_280
  loc_C9DE73: CStrVarTmp
  loc_C9DE74: FStStrNoPop var_13C
  loc_C9DE77: LitI4 3
  loc_C9DE7C: FLdRfVar var_B0
  loc_C9DE7F: Ary1StStrCopy
  loc_C9DE80: FFree1Str var_13C
  loc_C9DE83: FFreeVar var_188 = "": var_214 = "": var_250 = "": var_260 = "": var_270 = ""
  loc_C9DE92: LitVarI2 var_178, 4
  loc_C9DE97: PopAdLdVar
  loc_C9DE98: FLdRfVar var_138
  loc_C9DE9B: VarIndexLdVar
  loc_C9DEA1: PopAd
  loc_C9DEA3: FLdFPR8 var_E4
  loc_C9DEA6: CVarR8
  loc_C9DEAA: LitVarI2 var_204, 4
  loc_C9DEAF: PopAdLdVar
  loc_C9DEB0: FLdRfVar var_138
  loc_C9DEB3: VarIndexLdVar
  loc_C9DEB9: SubVar var_234
  loc_C9DEBD: FStVar var_270
  loc_C9DEC1: FLdRfVar var_270
  loc_C9DEC4: LitVarI2 var_260, 0
  loc_C9DEC9: FLdFPR8 var_E4
  loc_C9DECC: CVarR8
  loc_C9DED0: FLdRfVar var_188
  loc_C9DED3: SubVar var_198
  loc_C9DED7: LitVarI2 var_1F4, 0
  loc_C9DEDC: HardType
  loc_C9DEDD: LtVar var_1C4
  loc_C9DEE1: FStVar var_250
  loc_C9DEE5: FLdRfVar var_250
  loc_C9DEE8: FLdRfVar var_280
  loc_C9DEEB: ImpAdCallFPR4  = IIf(, , )
  loc_C9DEF0: FLdRfVar var_280
  loc_C9DEF3: CStrVarTmp
  loc_C9DEF4: FStStrNoPop var_13C
  loc_C9DEF7: LitI4 4
  loc_C9DEFC: FLdRfVar var_B0
  loc_C9DEFF: Ary1StStrCopy
  loc_C9DF00: FFree1Str var_13C
  loc_C9DF03: FFreeVar var_188 = "": var_214 = "": var_250 = "": var_260 = "": var_270 = ""
  loc_C9DF12: LitVarI2 var_178, 5
  loc_C9DF17: PopAdLdVar
  loc_C9DF18: FLdRfVar var_138
  loc_C9DF1B: VarIndexLdVar
  loc_C9DF21: PopAd
  loc_C9DF23: FLdFPR8 var_EC
  loc_C9DF26: CVarR8
  loc_C9DF2A: LitVarI2 var_204, 5
  loc_C9DF2F: PopAdLdVar
  loc_C9DF30: FLdRfVar var_138
  loc_C9DF33: VarIndexLdVar
  loc_C9DF39: SubVar var_234
  loc_C9DF3D: FStVar var_270
  loc_C9DF41: FLdRfVar var_270
  loc_C9DF44: LitVarI2 var_260, 0
  loc_C9DF49: FLdFPR8 var_EC
  loc_C9DF4C: CVarR8
  loc_C9DF50: FLdRfVar var_188
  loc_C9DF53: SubVar var_198
  loc_C9DF57: LitVarI2 var_1F4, 0
  loc_C9DF5C: HardType
  loc_C9DF5D: LtVar var_1C4
  loc_C9DF61: FStVar var_250
  loc_C9DF65: FLdRfVar var_250
  loc_C9DF68: FLdRfVar var_280
  loc_C9DF6B: ImpAdCallFPR4  = IIf(, , )
  loc_C9DF70: FLdRfVar var_280
  loc_C9DF73: CStrVarTmp
  loc_C9DF74: FStStrNoPop var_13C
  loc_C9DF77: LitI4 5
  loc_C9DF7C: FLdRfVar var_B0
  loc_C9DF7F: Ary1StStrCopy
  loc_C9DF80: FFree1Str var_13C
  loc_C9DF83: FFreeVar var_188 = "": var_214 = "": var_250 = "": var_260 = "": var_270 = ""
  loc_C9DF92: LitVarI2 var_178, 6
  loc_C9DF97: PopAdLdVar
  loc_C9DF98: FLdRfVar var_138
  loc_C9DF9B: VarIndexLdVar
  loc_C9DFA1: PopAd
  loc_C9DFA3: FLdFPR8 var_FC
  loc_C9DFA6: CVarR8
  loc_C9DFAA: LitVarI2 var_204, 6
  loc_C9DFAF: PopAdLdVar
  loc_C9DFB0: FLdRfVar var_138
  loc_C9DFB3: VarIndexLdVar
  loc_C9DFB9: SubVar var_234
  loc_C9DFBD: FStVar var_270
  loc_C9DFC1: FLdRfVar var_270
  loc_C9DFC4: LitVarI2 var_260, 0
  loc_C9DFC9: FLdFPR8 var_FC
  loc_C9DFCC: CVarR8
  loc_C9DFD0: FLdRfVar var_188
  loc_C9DFD3: SubVar var_198
  loc_C9DFD7: LitVarI2 var_1F4, 0
  loc_C9DFDC: HardType
  loc_C9DFDD: LtVar var_1C4
  loc_C9DFE1: FStVar var_250
  loc_C9DFE5: FLdRfVar var_250
  loc_C9DFE8: FLdRfVar var_280
  loc_C9DFEB: ImpAdCallFPR4  = IIf(, , )
  loc_C9DFF0: FLdRfVar var_280
  loc_C9DFF3: CStrVarTmp
  loc_C9DFF4: FStStrNoPop var_13C
  loc_C9DFF7: LitI4 6
  loc_C9DFFC: FLdRfVar var_B0
  loc_C9DFFF: Ary1StStrCopy
  loc_C9E000: FFree1Str var_13C
  loc_C9E003: FFreeVar var_188 = "": var_214 = "": var_250 = "": var_260 = "": var_270 = ""
  loc_C9E012: LitVarI2 var_178, 7
  loc_C9E017: PopAdLdVar
  loc_C9E018: FLdRfVar var_138
  loc_C9E01B: VarIndexLdVar
  loc_C9E021: PopAd
  loc_C9E023: FLdFPR8 var_10C
  loc_C9E026: CVarR8
  loc_C9E02A: LitVarI2 var_204, 7
  loc_C9E02F: PopAdLdVar
  loc_C9E030: FLdRfVar var_138
  loc_C9E033: VarIndexLdVar
  loc_C9E039: SubVar var_234
  loc_C9E03D: FStVar var_270
  loc_C9E041: FLdRfVar var_270
  loc_C9E044: LitVarI2 var_260, 0
  loc_C9E049: FLdFPR8 var_10C
  loc_C9E04C: CVarR8
  loc_C9E050: FLdRfVar var_188
  loc_C9E053: SubVar var_198
  loc_C9E057: LitVarI2 var_1F4, 0
  loc_C9E05C: HardType
  loc_C9E05D: LtVar var_1C4
  loc_C9E061: FStVar var_250
  loc_C9E065: FLdRfVar var_250
  loc_C9E068: FLdRfVar var_280
  loc_C9E06B: ImpAdCallFPR4  = IIf(, , )
  loc_C9E070: FLdRfVar var_280
  loc_C9E073: CStrVarTmp
  loc_C9E074: FStStrNoPop var_13C
  loc_C9E077: LitI4 7
  loc_C9E07C: FLdRfVar var_B0
  loc_C9E07F: Ary1StStrCopy
  loc_C9E080: FFree1Str var_13C
  loc_C9E083: FFreeVar var_188 = "": var_214 = "": var_250 = "": var_260 = "": var_270 = ""
  loc_C9E092: LitVarI2 var_178, 8
  loc_C9E097: PopAdLdVar
  loc_C9E098: FLdRfVar var_138
  loc_C9E09B: VarIndexLdVar
  loc_C9E0A1: PopAd
  loc_C9E0A3: FLdFPR8 var_114
  loc_C9E0A6: CVarR8
  loc_C9E0AA: LitVarI2 var_204, 8
  loc_C9E0AF: PopAdLdVar
  loc_C9E0B0: FLdRfVar var_138
  loc_C9E0B3: VarIndexLdVar
  loc_C9E0B9: SubVar var_234
  loc_C9E0BD: FStVar var_270
  loc_C9E0C1: FLdRfVar var_270
  loc_C9E0C4: LitVarI2 var_260, 0
  loc_C9E0C9: FLdFPR8 var_114
  loc_C9E0CC: CVarR8
  loc_C9E0D0: FLdRfVar var_188
  loc_C9E0D3: SubVar var_198
  loc_C9E0D7: LitVarI2 var_1F4, 0
  loc_C9E0DC: HardType
  loc_C9E0DD: LtVar var_1C4
  loc_C9E0E1: FStVar var_250
  loc_C9E0E5: FLdRfVar var_250
  loc_C9E0E8: FLdRfVar var_280
  loc_C9E0EB: ImpAdCallFPR4  = IIf(, , )
  loc_C9E0F0: FLdRfVar var_280
  loc_C9E0F3: CStrVarTmp
  loc_C9E0F4: FStStrNoPop var_13C
  loc_C9E0F7: LitI4 8
  loc_C9E0FC: FLdRfVar var_B0
  loc_C9E0FF: Ary1StStrCopy
  loc_C9E100: FFree1Str var_13C
  loc_C9E103: FFreeVar var_188 = "": var_214 = "": var_250 = "": var_260 = "": var_270 = ""
  loc_C9E112: LitVarI2 var_178, 9
  loc_C9E117: PopAdLdVar
  loc_C9E118: FLdRfVar var_138
  loc_C9E11B: VarIndexLdVar
  loc_C9E121: PopAd
  loc_C9E123: FLdFPR8 var_CC
  loc_C9E126: CVarR8
  loc_C9E12A: LitVarI2 var_204, 9
  loc_C9E12F: PopAdLdVar
  loc_C9E130: FLdRfVar var_138
  loc_C9E133: VarIndexLdVar
  loc_C9E139: SubVar var_234
  loc_C9E13D: FStVar var_270
  loc_C9E141: FLdRfVar var_270
  loc_C9E144: LitVarI2 var_260, 0
  loc_C9E149: FLdFPR8 var_CC
  loc_C9E14C: CVarR8
  loc_C9E150: FLdRfVar var_188
  loc_C9E153: SubVar var_198
  loc_C9E157: LitVarI2 var_1F4, 0
  loc_C9E15C: HardType
  loc_C9E15D: LtVar var_1C4
  loc_C9E161: FStVar var_250
  loc_C9E165: FLdRfVar var_250
  loc_C9E168: FLdRfVar var_280
  loc_C9E16B: ImpAdCallFPR4  = IIf(, , )
  loc_C9E170: FLdRfVar var_280
  loc_C9E173: CStrVarTmp
  loc_C9E174: FStStrNoPop var_13C
  loc_C9E177: LitI4 9
  loc_C9E17C: FLdRfVar var_B0
  loc_C9E17F: Ary1StStrCopy
  loc_C9E180: FFree1Str var_13C
  loc_C9E183: FFreeVar var_188 = "": var_214 = "": var_250 = "": var_260 = "": var_270 = ""
  loc_C9E192: LitVarI2 var_178, 10
  loc_C9E197: PopAdLdVar
  loc_C9E198: FLdRfVar var_138
  loc_C9E19B: VarIndexLdVar
  loc_C9E1A1: PopAd
  loc_C9E1A3: FLdFPR8 var_F4
  loc_C9E1A6: CVarR8
  loc_C9E1AA: LitVarI2 var_204, 10
  loc_C9E1AF: PopAdLdVar
  loc_C9E1B0: FLdRfVar var_138
  loc_C9E1B3: VarIndexLdVar
  loc_C9E1B9: SubVar var_234
  loc_C9E1BD: FStVar var_270
  loc_C9E1C1: FLdRfVar var_270
  loc_C9E1C4: LitVarI2 var_260, 0
  loc_C9E1C9: FLdFPR8 var_F4
  loc_C9E1CC: CVarR8
  loc_C9E1D0: FLdRfVar var_188
  loc_C9E1D3: SubVar var_198
  loc_C9E1D7: LitVarI2 var_1F4, 0
  loc_C9E1DC: HardType
  loc_C9E1DD: LtVar var_1C4
  loc_C9E1E1: FStVar var_250
  loc_C9E1E5: FLdRfVar var_250
  loc_C9E1E8: FLdRfVar var_280
  loc_C9E1EB: ImpAdCallFPR4  = IIf(, , )
  loc_C9E1F0: FLdRfVar var_280
  loc_C9E1F3: CStrVarTmp
  loc_C9E1F4: FStStrNoPop var_13C
  loc_C9E1F7: LitI4 &HA
  loc_C9E1FC: FLdRfVar var_B0
  loc_C9E1FF: Ary1StStrCopy
  loc_C9E200: FFree1Str var_13C
  loc_C9E203: FFreeVar var_188 = "": var_214 = "": var_250 = "": var_260 = "": var_270 = ""
  loc_C9E212: LitVarI2 var_178, 11
  loc_C9E217: PopAdLdVar
  loc_C9E218: FLdRfVar var_138
  loc_C9E21B: VarIndexLdVar
  loc_C9E221: PopAd
  loc_C9E223: FLdFPR8 var_104
  loc_C9E226: CVarR8
  loc_C9E22A: LitVarI2 var_204, 11
  loc_C9E22F: PopAdLdVar
  loc_C9E230: FLdRfVar var_138
  loc_C9E233: VarIndexLdVar
  loc_C9E239: SubVar var_234
  loc_C9E23D: FStVar var_270
  loc_C9E241: FLdRfVar var_270
  loc_C9E244: LitVarI2 var_260, 0
  loc_C9E249: FLdFPR8 var_104
  loc_C9E24C: CVarR8
  loc_C9E250: FLdRfVar var_188
  loc_C9E253: SubVar var_198
  loc_C9E257: LitVarI2 var_1F4, 0
  loc_C9E25C: HardType
  loc_C9E25D: LtVar var_1C4
  loc_C9E261: FStVar var_250
  loc_C9E265: FLdRfVar var_250
  loc_C9E268: FLdRfVar var_280
  loc_C9E26B: ImpAdCallFPR4  = IIf(, , )
  loc_C9E270: FLdRfVar var_280
  loc_C9E273: CStrVarTmp
  loc_C9E274: FStStrNoPop var_13C
  loc_C9E277: LitI4 &HB
  loc_C9E27C: FLdRfVar var_B0
  loc_C9E27F: Ary1StStrCopy
  loc_C9E280: FFree1Str var_13C
  loc_C9E283: FFreeVar var_188 = "": var_214 = "": var_250 = "": var_260 = "": var_270 = ""
  loc_C9E292: FLdRfVar var_B0
  loc_C9E295: CVarRef
  loc_C9E29A: FStVarCopy
  loc_C9E29E: LitNothing
  loc_C9E2A0: CastAd
  loc_C9E2A3: FStAdFunc var_168
  loc_C9E2A6: ExitProcCbHresult
End Function

Public Function BuscaDetalleInstanciaJudicial(iCodiInju) 'A85C04
  'Data Table: 430A50
  loc_A85B80: ZeroRetVal
  loc_A85B82: LitStr "SELECT * FROM instjudi WHERE CodiInju = "
  loc_A85B85: FLdI2 iCodiInju
  loc_A85B88: CStrUI1
  loc_A85B8A: FStStrNoPop var_8C
  loc_A85B8D: ConcatStr
  loc_A85B8E: FStStrNoPop var_90
  loc_A85B91: Call EjecutarRsCls(from_stack_1v)
  loc_A85B96: FFreeStr var_8C = ""
  loc_A85B9D: FLdRfVar BuscaDetalleInstanciaJudicial
  loc_A85BA0: FLdPr Me
  loc_A85BA3: MemLdPr global_56
  loc_A85BA6:  = Me.RecordCount
  loc_A85BAB: ILdRf BuscaDetalleInstanciaJudicial
  loc_A85BAE: LitI4 1
  loc_A85BB3: EqI4
  loc_A85BB4: BranchF loc_A85BF5
  loc_A85BB7: FLdRfVar var_BC
  loc_A85BBA: FLdRfVar var_AC
  loc_A85BBD: LitVarStr var_A8, "DetaInju"
  loc_A85BC2: PopAdLdVar
  loc_A85BC3: FLdRfVar var_98
  loc_A85BC6: FLdPr Me
  loc_A85BC9: MemLdPr global_56
  loc_A85BCC:  = Me.Fields
  loc_A85BD1: FLdPr var_98
  loc_A85BD4: from_stack_2 = Me.Item(from_stack_1)
  loc_A85BD9: FLdPr var_AC
  loc_A85BDC:  = Me.Value
  loc_A85BE1: FLdRfVar var_BC
  loc_A85BE4: CStrVarTmp
  loc_A85BE5: FStStr var_88
  loc_A85BE8: FFreeAd var_98 = ""
  loc_A85BEF: FFree1Var var_BC = ""
  loc_A85BF2: Branch loc_A85BFB
  loc_A85BF5: LitStr vbNullString
  loc_A85BF8: FStStrCopy var_88
  loc_A85BFB: ExitProcCbHresult
  loc_A85C01: AddR8
End Function

Public Function NuevoRegistro() 'A778B8
  'Data Table: 430A50
  loc_A77840: LitStr "SELECT CodiInju FROM instjudi ORDER BY CodiInju DESC "
  loc_A77843: Call EjecutarRsCls(from_stack_1v)
  loc_A77848: FLdRfVar var_8C
  loc_A7784B: FLdPr Me
  loc_A7784E: MemLdPr global_56
  loc_A77851:  = Me.RecordCount
  loc_A77856: ILdRf var_8C
  loc_A77859: LitI4 0
  loc_A7785E: GtI4
  loc_A7785F: BranchF loc_A778A7
  loc_A77862: FLdRfVar var_B4
  loc_A77865: FLdRfVar var_A4
  loc_A77868: LitVarStr var_A0, "CodiInju"
  loc_A7786D: PopAdLdVar
  loc_A7786E: FLdRfVar var_90
  loc_A77871: FLdPr Me
  loc_A77874: MemLdPr global_56
  loc_A77877:  = Me.Fields
  loc_A7787C: FLdPr var_90
  loc_A7787F: from_stack_2 = Me.Item(from_stack_1)
  loc_A77884: FLdPr var_A4
  loc_A77887:  = Me.Value
  loc_A7788C: FLdRfVar var_B4
  loc_A7788F: FnCLngVar
  loc_A77891: LitI4 1
  loc_A77896: AddI4
  loc_A77897: FStR4 var_88
  loc_A7789A: FFreeAd var_90 = ""
  loc_A778A1: FFree1Var var_B4 = ""
  loc_A778A4: Branch loc_A778AF
  loc_A778A7: LitI4 1
  loc_A778AC: FStR4 var_88
  loc_A778AF: ExitProcCbHresult
End Function

Public Function MovilidaddeApremio(iCodiInju, iMoofInap, ikilometros) 'B09514
  'Data Table: 430A50
  loc_B09310: FLdI2 iCodiInju
  loc_B09313: LitI2_Byte 1
  loc_B09315: EqI2
  loc_B09316: BranchF loc_B09467
  loc_B09319: LitStr "SELECT CodiPaap,CamiPaap,CamaPaap,AplePaap FROM paraapre ORDER BY CodiPaap"
  loc_B0931C: Call EjecutarRsCls1(from_stack_1v)
  loc_B09321: FLdRfVar var_90
  loc_B09324: FLdPr Me
  loc_B09327: MemLdPr global_60
  loc_B0932A:  = Me.RecordCount
  loc_B0932F: ILdRf var_90
  loc_B09332: LitI4 0
  loc_B09337: GtI4
  loc_B09338: BranchF loc_B0945E
  loc_B0933B: FLdPr Me
  loc_B0933E: MemLdPr global_60
  loc_B09341: Me.MoveFirst
  loc_B09346: LitVarStr var_C8, " SELECT ImpoEsap FROM escaapre WHERE CodiPaap = "
  loc_B0934B: FLdRfVar var_B8
  loc_B0934E: FLdRfVar var_A8
  loc_B09351: LitVarStr var_A4, "CodiPaap"
  loc_B09356: PopAdLdVar
  loc_B09357: FLdRfVar MovilidaddeApremio
  loc_B0935A: FLdPr Me
  loc_B0935D: MemLdPr global_60
  loc_B09360:  = Me.Fields
  loc_B09365: FLdPr MovilidaddeApremio
  loc_B09368: from_stack_2 = Me.Item(from_stack_1)
  loc_B0936D: FLdPr var_A8
  loc_B09370:  = Me.Value
  loc_B09375: FLdRfVar var_B8
  loc_B09378: ConcatVar var_D8
  loc_B0937C: LitVarStr var_E8, " AND TipoEsap = 'Notificacion' "
  loc_B09381: ConcatVar var_F8
  loc_B09385: LitVarStr var_108, " AND "
  loc_B0938A: ConcatVar var_118
  loc_B0938E: ILdRf ikilometros
  loc_B09391: CVarI4
  loc_B09395: ConcatVar var_138
  loc_B09399: LitVarStr var_148, " >= DesdEsap AND "
  loc_B0939E: ConcatVar var_158
  loc_B093A2: ILdRf ikilometros
  loc_B093A5: CVarI4
  loc_B093A9: ConcatVar var_178
  loc_B093AD: LitVarStr var_188, " <= HastEsap ORDER BY CodiPaap, CodiEsap"
  loc_B093B2: ConcatVar var_198
  loc_B093B6: CStrVarVal var_19C
  loc_B093BA: Call EjecutarRsCls2(from_stack_1v)
  loc_B093BF: FFree1Str var_19C
  loc_B093C2: FFreeAd MovilidaddeApremio = ""
  loc_B093C9: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = ""
  loc_B093DC: FLdRfVar var_90
  loc_B093DF: FLdPr Me
  loc_B093E2: MemLdPr global_64
  loc_B093E5:  = Me.RecordCount
  loc_B093EA: ILdRf var_90
  loc_B093ED: LitI4 0
  loc_B093F2: GtI4
  loc_B093F3: BranchF loc_B09455
  loc_B093F6: FLdRfVar var_B8
  loc_B093F9: FLdRfVar var_A8
  loc_B093FC: LitVarStr var_A4, "ImpoEsap"
  loc_B09401: PopAdLdVar
  loc_B09402: FLdRfVar MovilidaddeApremio
  loc_B09405: FLdPr Me
  loc_B09408: MemLdPr global_64
  loc_B0940B:  = Me.Fields
  loc_B09410: FLdPr MovilidaddeApremio
  loc_B09413: from_stack_2 = Me.Item(from_stack_1)
  loc_B09418: FLdPr var_A8
  loc_B0941B:  = Me.Value
  loc_B09420: LitI4 2
  loc_B09425: ILdRf iMoofInap
  loc_B09428: CR8I4
  loc_B09429: FLdRfVar var_B8
  loc_B0942C: FnCDblVar
  loc_B0942E: MulR8
  loc_B0942F: CVarR8
  loc_B09433: FLdRfVar var_F8
  loc_B09436: ImpAdCallFPR4  = Round(, )
  loc_B0943B: FLdRfVar var_F8
  loc_B0943E: CR4Var
  loc_B0943F: FStFPR8 var_8C
  loc_B09442: FFreeAd MovilidaddeApremio = ""
  loc_B09449: FFreeVar var_B8 = "": var_D8 = ""
  loc_B09452: Branch loc_B0945B
  loc_B09455: LitI2_Byte 0
  loc_B09457: CR8I2
  loc_B09458: FStFPR8 var_8C
  loc_B0945B: Branch loc_B09464
  loc_B0945E: LitI2_Byte 0
  loc_B09460: CR8I2
  loc_B09461: FStFPR8 var_8C
  loc_B09464: Branch loc_B0950C
  loc_B09467: LitStr "SELECT KiofInju FROM instjudi WHERE CodiInju = "
  loc_B0946A: FLdI2 iCodiInju
  loc_B0946D: CStrUI1
  loc_B0946F: FStStrNoPop var_19C
  loc_B09472: ConcatStr
  loc_B09473: FStStrNoPop var_1A0
  loc_B09476: Call EjecutarRsCls1(from_stack_1v)
  loc_B0947B: FFreeStr var_19C = ""
  loc_B09482: FLdRfVar var_90
  loc_B09485: FLdPr Me
  loc_B09488: MemLdPr global_60
  loc_B0948B:  = Me.RecordCount
  loc_B09490: ILdRf var_90
  loc_B09493: LitI4 0
  loc_B09498: GtI4
  loc_B09499: BranchF loc_B09506
  loc_B0949C: FLdPr Me
  loc_B0949F: MemLdPr global_60
  loc_B094A2: Me.MoveFirst
  loc_B094A7: FLdRfVar var_B8
  loc_B094AA: FLdRfVar var_A8
  loc_B094AD: LitVarStr var_A4, "KiofInju"
  loc_B094B2: PopAdLdVar
  loc_B094B3: FLdRfVar MovilidaddeApremio
  loc_B094B6: FLdPr Me
  loc_B094B9: MemLdPr global_60
  loc_B094BC:  = Me.Fields
  loc_B094C1: FLdPr MovilidaddeApremio
  loc_B094C4: from_stack_2 = Me.Item(from_stack_1)
  loc_B094C9: FLdPr var_A8
  loc_B094CC:  = Me.Value
  loc_B094D1: LitI4 2
  loc_B094D6: ILdRf iMoofInap
  loc_B094D9: CR8I4
  loc_B094DA: FLdRfVar var_B8
  loc_B094DD: FnCDblVar
  loc_B094DF: MulR8
  loc_B094E0: CVarR8
  loc_B094E4: FLdRfVar var_F8
  loc_B094E7: ImpAdCallFPR4  = Round(, )
  loc_B094EC: FLdRfVar var_F8
  loc_B094EF: CR4Var
  loc_B094F0: FStFPR8 var_8C
  loc_B094F3: FFreeAd MovilidaddeApremio = ""
  loc_B094FA: FFreeVar var_B8 = "": var_D8 = ""
  loc_B09503: Branch loc_B0950C
  loc_B09506: LitI2_Byte 0
  loc_B09508: CR8I2
  loc_B09509: FStFPR8 var_8C
  loc_B0950C: ExitProcCbHresult
End Function

Private Function Proc_296_50_9F2B00() '9F2B00
  'Data Table: 430A50
  loc_9F2ADC: LitStr "Primary"
  loc_9F2ADF: FLdPr Me
  loc_9F2AE2: LateIdLdVar var_94 DispID_4 0
  loc_9F2AE9: CastAdVar Me
  loc_9F2AED: FStAdFunc var_98
  loc_9F2AF0: FLdPr var_98
  loc_9F2AF8: FFree1Ad var_98
  loc_9F2AFB: FFree1Var var_94 = ""
  loc_9F2AFE: ExitProcHresult
End Function

Private Function Proc_296_51_9E04BC(arg_C) '9E04BC
  'Data Table: 430A50
  loc_9E04A0: ILdI4 arg_C
  loc_9E04A3: FStStrCopy var_88
  loc_9E04A6: ILdRf var_88
  loc_9E04A9: LitStr "Primary"
  loc_9E04AC: EqStr
  loc_9E04AE: BranchF loc_9E04BB
  loc_9E04B1: FLdPr Me
  loc_9E04B4: MemLdStr RsFrm
  loc_9E04B7: IStAd
  loc_9E04BB: ExitProcHresult
End Function
