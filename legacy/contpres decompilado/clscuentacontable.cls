VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clscuentacontable"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '414D38
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '414D47
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '414D56
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96FE0C
  'Data Table: 414A60
  loc_96FDE4: FLdRfVar var_88
  loc_96FDE7: FLdPr Me
  loc_96FDEA: MemLdPr RsFrm
  loc_96FDED:  = Me.RecordCount
  loc_96FDF2: ILdRf var_88
  loc_96FDF5: LitI4 0
  loc_96FDFA: GtI4
  loc_96FDFB: BranchF loc_96FE09
  loc_96FDFE: FLdPr Me
  loc_96FE01: MemLdPr RsFrm
  loc_96FE04: Me.MoveFirst
  loc_96FE09: ExitProcHresult
End Sub

Public Sub MoveLast() '96FE64
  'Data Table: 414A60
  loc_96FE3C: FLdRfVar var_88
  loc_96FE3F: FLdPr Me
  loc_96FE42: MemLdPr RsFrm
  loc_96FE45:  = Me.RecordCount
  loc_96FE4A: ILdRf var_88
  loc_96FE4D: LitI4 0
  loc_96FE52: GtI4
  loc_96FE53: BranchF loc_96FE61
  loc_96FE56: FLdPr Me
  loc_96FE59: MemLdPr RsFrm
  loc_96FE5C: Me.MoveLast
  loc_96FE61: ExitProcHresult
  loc_96FE62: Ary1LdFPR4
End Sub

Public Sub MoveNext() '99F620
  'Data Table: 414A60
  loc_99F5A8: FLdRfVar var_86
  loc_99F5AB: FLdPr Me
  loc_99F5AE: MemLdPr RsFrm
  loc_99F5B1:  = Me.EOF
  loc_99F5B6: FLdI2 var_86
  loc_99F5B9: NotI4
  loc_99F5BA: FLdRfVar var_8C
  loc_99F5BD: FLdPr Me
  loc_99F5C0: MemLdPr RsFrm
  loc_99F5C3:  = Me.RecordCount
  loc_99F5C8: ILdRf var_8C
  loc_99F5CB: LitI4 0
  loc_99F5D0: GtI4
  loc_99F5D1: AndI4
  loc_99F5D2: BranchF loc_99F5E0
  loc_99F5D5: FLdPr Me
  loc_99F5D8: MemLdPr RsFrm
  loc_99F5DB: Me.MoveNext
  loc_99F5E0: FLdRfVar var_86
  loc_99F5E3: FLdPr Me
  loc_99F5E6: MemLdPr RsFrm
  loc_99F5E9:  = Me.EOF
  loc_99F5EE: FLdI2 var_86
  loc_99F5F1: FLdRfVar var_8C
  loc_99F5F4: FLdPr Me
  loc_99F5F7: MemLdPr RsFrm
  loc_99F5FA:  = Me.RecordCount
  loc_99F5FF: ILdRf var_8C
  loc_99F602: LitI4 0
  loc_99F607: GtI4
  loc_99F608: AndI4
  loc_99F609: BranchF loc_99F61C
  loc_99F60C: ImpAdCallFPR4 Beep()
  loc_99F611: FLdPr Me
  loc_99F614: MemLdPr RsFrm
  loc_99F617: Me.MoveLast
  loc_99F61C: ExitProcHresult
  loc_99F61D: IDvI4
  loc_99F61E: VCallAd Control_ID_
End Sub

Public Sub MoveSiguiente() '941288
  'Data Table: 414A60
  loc_94127C: FLdPr Me
  loc_94127F: MemLdPr RsFrm
  loc_941282: Me.MoveNext
  loc_941287: ExitProcHresult
End Sub

Public Sub MovePrevious() '99F578
  'Data Table: 414A60
  loc_99F500: FLdRfVar var_86
  loc_99F503: FLdPr Me
  loc_99F506: MemLdPr RsFrm
  loc_99F509:  = Me.BOF
  loc_99F50E: FLdI2 var_86
  loc_99F511: NotI4
  loc_99F512: FLdRfVar var_8C
  loc_99F515: FLdPr Me
  loc_99F518: MemLdPr RsFrm
  loc_99F51B:  = Me.RecordCount
  loc_99F520: ILdRf var_8C
  loc_99F523: LitI4 0
  loc_99F528: GtI4
  loc_99F529: AndI4
  loc_99F52A: BranchF loc_99F538
  loc_99F52D: FLdPr Me
  loc_99F530: MemLdPr RsFrm
  loc_99F533: Me.MovePrevious
  loc_99F538: FLdRfVar var_86
  loc_99F53B: FLdPr Me
  loc_99F53E: MemLdPr RsFrm
  loc_99F541:  = Me.BOF
  loc_99F546: FLdI2 var_86
  loc_99F549: FLdRfVar var_8C
  loc_99F54C: FLdPr Me
  loc_99F54F: MemLdPr RsFrm
  loc_99F552:  = Me.RecordCount
  loc_99F557: ILdRf var_8C
  loc_99F55A: LitI4 0
  loc_99F55F: GtI4
  loc_99F560: AndI4
  loc_99F561: BranchF loc_99F574
  loc_99F564: ImpAdCallFPR4 Beep()
  loc_99F569: FLdPr Me
  loc_99F56C: MemLdPr RsFrm
  loc_99F56F: Me.MoveFirst
  loc_99F574: ExitProcHresult
End Sub

Public Property Get EOF() '9618D4
  'Data Table: 414A60
  loc_9618B8: FLdRfVar var_88
  loc_9618BB: FLdPr Me
  loc_9618BE: MemLdPr RsFrm
  loc_9618C1:  = Me.EOF
  loc_9618C6: FLdI2 var_88
  loc_9618C9: FStI2 var_86
  loc_9618CC: ExitProcCbHresult
End Sub

Public Property Get BOF() '96183C
  'Data Table: 414A60
  loc_961820: FLdRfVar var_88
  loc_961823: FLdPr Me
  loc_961826: MemLdPr RsFrm
  loc_961829:  = Me.BOF
  loc_96182E: FLdI2 var_88
  loc_961831: FStI2 var_86
  loc_961834: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '945644
  'Data Table: 414A60
  loc_945634: ILdI4 sOrden
  loc_945637: FLdPr Me
  loc_94563A: MemLdPr RsFrm
  loc_94563D: Me.Sort = from_stack_1
  loc_945642: ExitProcHresult
End Sub

Public Sub Find(sFind) '9679E0
  'Data Table: 414A60
  loc_9679C0: LitVar_Missing var_94
  loc_9679C3: PopAdLdVar
  loc_9679C4: LitI4 1
  loc_9679C9: LitI4 0
  loc_9679CE: ILdI4 sFind
  loc_9679D1: FLdPr Me
  loc_9679D4: MemLdPr RsFrm
  loc_9679D7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9679DC: ExitProcHresult
  loc_9679DD: ImpAdLdFPR4 MemVar_0
End Sub

Public Sub Filter(sCriterio) '9491E8
  'Data Table: 414A60
  loc_9491D4: ILdI4 sCriterio
  loc_9491D7: CVarStr var_94
  loc_9491DA: PopAdLdVar
  loc_9491DB: FLdPr Me
  loc_9491DE: MemLdPr RsFrm
  loc_9491E1: Me.Filter = from_stack_1
  loc_9491E6: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '961674
  'Data Table: 414A60
  loc_961658: FLdRfVar var_8C
  loc_96165B: FLdPr Me
  loc_96165E: MemLdPr RsFrm
  loc_961661:  = Me.AbsolutePosition
  loc_961666: ILdRf var_8C
  loc_961669: FStR4 var_88
  loc_96166C: ExitProcCbHresult
  loc_961672: Assert
End Sub

Public Property Get RecordCount() '9615DC
  'Data Table: 414A60
  loc_9615C0: FLdRfVar var_8C
  loc_9615C3: FLdPr Me
  loc_9615C6: MemLdPr RsFrm
  loc_9615C9:  = Me.RecordCount
  loc_9615CE: ILdRf var_8C
  loc_9615D1: FStR4 var_88
  loc_9615D4: ExitProcCbHresult
  loc_9615DA: ConcatStr
End Sub

Public Sub AddNew(PeriInfo, CodiCuco, DetaCuco, CodiTicu, CodiReca) '9E2A60
  'Data Table: 414A60
  loc_9E2988: ILdRf CodiCuco
  loc_9E298B: FStStrCopy var_88
  loc_9E298E: ILdRf DetaCuco
  loc_9E2991: FStStrCopy var_8C
  loc_9E2994: ILdRf CodiTicu
  loc_9E2997: FStStrCopy var_90
  loc_9E299A: ILdRf CodiReca
  loc_9E299D: FStStrCopy var_94
  loc_9E29A0: FLdRfVar var_9C
  loc_9E29A3: ILdRf var_88
  loc_9E29A6: from_stack_2v = ValidaClave(from_stack_1v)
  loc_9E29AB: FLdZeroAd var_9C
  loc_9E29AE: FStStr var_98
  loc_9E29B1: ILdRf var_98
  loc_9E29B4: LitStr vbNullString
  loc_9E29B7: NeStr
  loc_9E29B9: BranchF loc_9E29CC
  loc_9E29BC: LitI4 0
  loc_9E29C1: ILdRf var_98
  loc_9E29C4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9E29C9: Branch loc_9E2A5E
  loc_9E29CC: LitStr "INSERT INTO infogov.cuentacontable (PeriInfo,CodiCuco,DetaCuco,ImpuCuco,CodiTicu,CodiReca,AltaUsua)"
  loc_9E29CF: LitStr " VALUES ("
  loc_9E29D2: ConcatStr
  loc_9E29D3: FStStrNoPop var_9C
  loc_9E29D6: FLdI2 PeriInfo
  loc_9E29D9: CStrUI1
  loc_9E29DB: FStStrNoPop var_A0
  loc_9E29DE: ConcatStr
  loc_9E29DF: FStStrNoPop var_A4
  loc_9E29E2: LitStr ",'"
  loc_9E29E5: ConcatStr
  loc_9E29E6: FStStrNoPop var_A8
  loc_9E29E9: ILdRf var_88
  loc_9E29EC: ConcatStr
  loc_9E29ED: FStStrNoPop var_AC
  loc_9E29F0: LitStr "','"
  loc_9E29F3: ConcatStr
  loc_9E29F4: FStStrNoPop var_B0
  loc_9E29F7: ILdRf var_8C
  loc_9E29FA: ConcatStr
  loc_9E29FB: FStStrNoPop var_B4
  loc_9E29FE: LitStr "',1,'"
  loc_9E2A01: ConcatStr
  loc_9E2A02: FStStrNoPop var_B8
  loc_9E2A05: ILdRf var_90
  loc_9E2A08: ConcatStr
  loc_9E2A09: FStStrNoPop var_BC
  loc_9E2A0C: LitStr "','"
  loc_9E2A0F: ConcatStr
  loc_9E2A10: FStStrNoPop var_C0
  loc_9E2A13: ILdRf var_94
  loc_9E2A16: ConcatStr
  loc_9E2A17: FStStrNoPop var_C4
  loc_9E2A1A: LitStr "','"
  loc_9E2A1D: ConcatStr
  loc_9E2A1E: FStStrNoPop var_C8
  loc_9E2A21: ImpAdLdI4 MemVar_C3D03C
  loc_9E2A24: ConcatStr
  loc_9E2A25: FStStrNoPop var_CC
  loc_9E2A28: LitStr "')"
  loc_9E2A2B: ConcatStr
  loc_9E2A2C: FStStrNoPop var_D0
  loc_9E2A2F: Call EjecutarRsCls(from_stack_1v)
  loc_9E2A34: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_9E2A53: ILdRf var_88
  loc_9E2A56: FLdI2 PeriInfo
  loc_9E2A59: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_9E2A5E: ExitProcHresult
End Sub

Public Sub Modificar(DetaCuco, CodiTicu, CodiReca) 'A2647C
  'Data Table: 414A60
  loc_A26300: ILdRf DetaCuco
  loc_A26303: FStStrCopy var_88
  loc_A26306: ILdRf CodiTicu
  loc_A26309: FStStrCopy var_8C
  loc_A2630C: ILdRf CodiReca
  loc_A2630F: FStStrCopy var_90
  loc_A26312: LitStr "UPDATE infogov.cuentacontable"
  loc_A26315: LitStr " SET DetaCuco='"
  loc_A26318: ConcatStr
  loc_A26319: FStStrNoPop var_94
  loc_A2631C: ILdRf var_88
  loc_A2631F: ConcatStr
  loc_A26320: FStStrNoPop var_98
  loc_A26323: LitStr "',CodiTicu='"
  loc_A26326: ConcatStr
  loc_A26327: FStStrNoPop var_9C
  loc_A2632A: ILdRf var_8C
  loc_A2632D: ConcatStr
  loc_A2632E: FStStrNoPop var_A0
  loc_A26331: LitStr "',CodiReca='"
  loc_A26334: ConcatStr
  loc_A26335: FStStrNoPop var_A4
  loc_A26338: ILdRf var_90
  loc_A2633B: ConcatStr
  loc_A2633C: FStStrNoPop var_A8
  loc_A2633F: LitStr "',ModiUsua='"
  loc_A26342: ConcatStr
  loc_A26343: FStStrNoPop var_AC
  loc_A26346: ImpAdLdI4 MemVar_C3D03C
  loc_A26349: ConcatStr
  loc_A2634A: FStStrNoPop var_B0
  loc_A2634D: LitStr "',ModiFeho=Now() WHERE PeriInfo="
  loc_A26350: ConcatStr
  loc_A26351: CVarStr var_E8
  loc_A26354: FLdRfVar var_D8
  loc_A26357: FLdRfVar var_C8
  loc_A2635A: LitVarStr var_C4, "PeriInfo"
  loc_A2635F: PopAdLdVar
  loc_A26360: FLdRfVar var_B4
  loc_A26363: FLdPr Me
  loc_A26366: MemLdPr RsFrm
  loc_A26369:  = Me.Fields
  loc_A2636E: FLdPr var_B4
  loc_A26371: from_stack_2 = Me.Item(from_stack_1)
  loc_A26376: FLdPr var_C8
  loc_A26379:  = Me.Value
  loc_A2637E: FLdRfVar var_D8
  loc_A26381: ConcatVar var_F8
  loc_A26385: LitVarStr var_108, " AND CodiCuco='"
  loc_A2638A: ConcatVar var_118
  loc_A2638E: FLdRfVar var_140
  loc_A26391: FLdRfVar var_130
  loc_A26394: LitVarStr var_12C, "CodiCuco"
  loc_A26399: PopAdLdVar
  loc_A2639A: FLdRfVar var_11C
  loc_A2639D: FLdPr Me
  loc_A263A0: MemLdPr RsFrm
  loc_A263A3:  = Me.Fields
  loc_A263A8: FLdPr var_11C
  loc_A263AB: from_stack_2 = Me.Item(from_stack_1)
  loc_A263B0: FLdPr var_130
  loc_A263B3:  = Me.Value
  loc_A263B8: FLdRfVar var_140
  loc_A263BB: ConcatVar var_150
  loc_A263BF: LitVarStr var_160, "'"
  loc_A263C4: ConcatVar var_170
  loc_A263C8: CStrVarVal var_174
  loc_A263CC: Call EjecutarRsCls(from_stack_1v)
  loc_A263D1: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A263E6: FFreeAd var_B4 = "": var_C8 = "": var_11C = ""
  loc_A263F1: FFreeVar var_E8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_140 = "": var_150 = ""
  loc_A26402: FLdRfVar var_D8
  loc_A26405: FLdRfVar var_C8
  loc_A26408: LitVarStr var_C4, "PeriInfo"
  loc_A2640D: PopAdLdVar
  loc_A2640E: FLdRfVar var_B4
  loc_A26411: FLdPr Me
  loc_A26414: MemLdPr RsFrm
  loc_A26417:  = Me.Fields
  loc_A2641C: FLdPr var_B4
  loc_A2641F: from_stack_2 = Me.Item(from_stack_1)
  loc_A26424: FLdPr var_C8
  loc_A26427:  = Me.Value
  loc_A2642C: FLdRfVar var_E8
  loc_A2642F: FLdRfVar var_130
  loc_A26432: LitVarStr var_108, "CodiCuco"
  loc_A26437: PopAdLdVar
  loc_A26438: FLdRfVar var_11C
  loc_A2643B: FLdPr Me
  loc_A2643E: MemLdPr RsFrm
  loc_A26441:  = Me.Fields
  loc_A26446: FLdPr var_11C
  loc_A26449: from_stack_2 = Me.Item(from_stack_1)
  loc_A2644E: FLdPr var_130
  loc_A26451:  = Me.Value
  loc_A26456: FLdRfVar var_E8
  loc_A26459: CStrVarTmp
  loc_A2645A: FStStrNoPop var_94
  loc_A2645D: FLdRfVar var_D8
  loc_A26460: CI2Var
  loc_A26461: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A26466: FFree1Str var_94
  loc_A26469: FFreeAd var_B4 = "": var_11C = "": var_C8 = ""
  loc_A26474: FFreeVar var_D8 = ""
  loc_A2647B: ExitProcHresult
End Sub

Public Sub ModificarManual(DebeCuco, HabeCuco, SaldCuco, DescCuco) 'A2FE0C
  'Data Table: 414A60
  loc_A2FC6C: ILdRf DebeCuco
  loc_A2FC6F: FStStrCopy var_88
  loc_A2FC72: ILdRf HabeCuco
  loc_A2FC75: FStStrCopy var_8C
  loc_A2FC78: ILdRf SaldCuco
  loc_A2FC7B: FStStrCopy var_90
  loc_A2FC7E: ILdRf DescCuco
  loc_A2FC81: FStStrCopy var_94
  loc_A2FC84: LitStr "UPDATE infogov.cuentacontable"
  loc_A2FC87: LitStr " SET DebeCuco='"
  loc_A2FC8A: ConcatStr
  loc_A2FC8B: FStStrNoPop var_98
  loc_A2FC8E: ILdRf var_88
  loc_A2FC91: ConcatStr
  loc_A2FC92: FStStrNoPop var_9C
  loc_A2FC95: LitStr "',HabeCuco='"
  loc_A2FC98: ConcatStr
  loc_A2FC99: FStStrNoPop var_A0
  loc_A2FC9C: ILdRf var_8C
  loc_A2FC9F: ConcatStr
  loc_A2FCA0: FStStrNoPop var_A4
  loc_A2FCA3: LitStr "',SaldCuco='"
  loc_A2FCA6: ConcatStr
  loc_A2FCA7: FStStrNoPop var_A8
  loc_A2FCAA: ILdRf var_90
  loc_A2FCAD: ConcatStr
  loc_A2FCAE: FStStrNoPop var_AC
  loc_A2FCB1: LitStr "',DescCuco='"
  loc_A2FCB4: ConcatStr
  loc_A2FCB5: FStStrNoPop var_B0
  loc_A2FCB8: ILdRf var_94
  loc_A2FCBB: ConcatStr
  loc_A2FCBC: FStStrNoPop var_B4
  loc_A2FCBF: LitStr "',ModiUsua='"
  loc_A2FCC2: ConcatStr
  loc_A2FCC3: FStStrNoPop var_B8
  loc_A2FCC6: ImpAdLdI4 MemVar_C3D03C
  loc_A2FCC9: ConcatStr
  loc_A2FCCA: FStStrNoPop var_BC
  loc_A2FCCD: LitStr "',ModiFeho=Now()"
  loc_A2FCD0: ConcatStr
  loc_A2FCD1: FStStrNoPop var_C0
  loc_A2FCD4: LitStr " WHERE PeriInfo="
  loc_A2FCD7: ConcatStr
  loc_A2FCD8: CVarStr var_F8
  loc_A2FCDB: FLdRfVar var_E8
  loc_A2FCDE: FLdRfVar var_D8
  loc_A2FCE1: LitVarStr var_D4, "PeriInfo"
  loc_A2FCE6: PopAdLdVar
  loc_A2FCE7: FLdRfVar var_C4
  loc_A2FCEA: FLdPr Me
  loc_A2FCED: MemLdPr RsFrm
  loc_A2FCF0:  = Me.Fields
  loc_A2FCF5: FLdPr var_C4
  loc_A2FCF8: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FCFD: FLdPr var_D8
  loc_A2FD00:  = Me.Value
  loc_A2FD05: FLdRfVar var_E8
  loc_A2FD08: ConcatVar var_108
  loc_A2FD0C: LitVarStr var_118, " AND CodiCuco='"
  loc_A2FD11: ConcatVar var_128
  loc_A2FD15: FLdRfVar var_150
  loc_A2FD18: FLdRfVar var_140
  loc_A2FD1B: LitVarStr var_13C, "CodiCuco"
  loc_A2FD20: PopAdLdVar
  loc_A2FD21: FLdRfVar var_12C
  loc_A2FD24: FLdPr Me
  loc_A2FD27: MemLdPr RsFrm
  loc_A2FD2A:  = Me.Fields
  loc_A2FD2F: FLdPr var_12C
  loc_A2FD32: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FD37: FLdPr var_140
  loc_A2FD3A:  = Me.Value
  loc_A2FD3F: FLdRfVar var_150
  loc_A2FD42: ConcatVar var_160
  loc_A2FD46: LitVarStr var_170, "'"
  loc_A2FD4B: ConcatVar var_180
  loc_A2FD4F: CStrVarVal var_184
  loc_A2FD53: Call EjecutarRsCls(from_stack_1v)
  loc_A2FD58: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_A2FD73: FFreeAd var_C4 = "": var_D8 = "": var_12C = ""
  loc_A2FD7E: FFreeVar var_F8 = "": var_E8 = "": var_108 = "": var_128 = "": var_150 = "": var_160 = ""
  loc_A2FD8F: FLdRfVar var_E8
  loc_A2FD92: FLdRfVar var_D8
  loc_A2FD95: LitVarStr var_D4, "PeriInfo"
  loc_A2FD9A: PopAdLdVar
  loc_A2FD9B: FLdRfVar var_C4
  loc_A2FD9E: FLdPr Me
  loc_A2FDA1: MemLdPr RsFrm
  loc_A2FDA4:  = Me.Fields
  loc_A2FDA9: FLdPr var_C4
  loc_A2FDAC: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FDB1: FLdPr var_D8
  loc_A2FDB4:  = Me.Value
  loc_A2FDB9: FLdRfVar var_F8
  loc_A2FDBC: FLdRfVar var_140
  loc_A2FDBF: LitVarStr var_118, "CodiCuco"
  loc_A2FDC4: PopAdLdVar
  loc_A2FDC5: FLdRfVar var_12C
  loc_A2FDC8: FLdPr Me
  loc_A2FDCB: MemLdPr RsFrm
  loc_A2FDCE:  = Me.Fields
  loc_A2FDD3: FLdPr var_12C
  loc_A2FDD6: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FDDB: FLdPr var_140
  loc_A2FDDE:  = Me.Value
  loc_A2FDE3: FLdRfVar var_F8
  loc_A2FDE6: CStrVarTmp
  loc_A2FDE7: FStStrNoPop var_98
  loc_A2FDEA: FLdRfVar var_E8
  loc_A2FDED: CI2Var
  loc_A2FDEE: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A2FDF3: FFree1Str var_98
  loc_A2FDF6: FFreeAd var_C4 = "": var_12C = "": var_D8 = ""
  loc_A2FE01: FFreeVar var_E8 = ""
  loc_A2FE08: ExitProcHresult
End Sub

Public Function ValidaEliminar() 'A74A1C
  'Data Table: 414A60
  loc_A74664: ZeroRetVal
  loc_A74666: LitVarStr var_C0, "SELECT CodiCuco FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_A7466B: FLdRfVar var_B0
  loc_A7466E: FLdRfVar var_A0
  loc_A74671: LitVarStr var_9C, "PeriInfo"
  loc_A74676: PopAdLdVar
  loc_A74677: FLdRfVar var_8C
  loc_A7467A: FLdPr Me
  loc_A7467D: MemLdPr RsFrm
  loc_A74680:  = Me.Fields
  loc_A74685: FLdPr var_8C
  loc_A74688: from_stack_2 = Me.Item(from_stack_1)
  loc_A7468D: FLdPr var_A0
  loc_A74690:  = Me.Value
  loc_A74695: FLdRfVar var_B0
  loc_A74698: ConcatVar var_D0
  loc_A7469C: LitVarStr var_E0, " AND CodiCuco = '"
  loc_A746A1: ConcatVar var_F0
  loc_A746A5: FLdRfVar var_118
  loc_A746A8: FLdRfVar var_108
  loc_A746AB: LitVarStr var_104, "CodiCuco"
  loc_A746B0: PopAdLdVar
  loc_A746B1: FLdRfVar var_F4
  loc_A746B4: FLdPr Me
  loc_A746B7: MemLdPr RsFrm
  loc_A746BA:  = Me.Fields
  loc_A746BF: FLdPr var_F4
  loc_A746C2: from_stack_2 = Me.Item(from_stack_1)
  loc_A746C7: FLdPr var_108
  loc_A746CA:  = Me.Value
  loc_A746CF: FLdRfVar var_118
  loc_A746D2: ConcatVar var_128
  loc_A746D6: LitVarStr var_138, "' AND ImpuCuco = 0;"
  loc_A746DB: ConcatVar var_148
  loc_A746DF: CStrVarVal var_14C
  loc_A746E3: Call EjecutarRsCls(from_stack_1v)
  loc_A746E8: FFree1Str var_14C
  loc_A746EB: FFreeAd var_8C = "": var_A0 = "": var_F4 = ""
  loc_A746F6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = ""
  loc_A74705: FLdRfVar var_150
  loc_A74708: FLdPr Me
  loc_A7470B: MemLdPr global_56
  loc_A7470E:  = Me.RecordCount
  loc_A74713: ILdRf var_150
  loc_A74716: LitI4 0
  loc_A7471B: GtI4
  loc_A7471C: BranchF loc_A7472B
  loc_A7471F: LitStr "La Cuenta Contable NO es Imputable. Verifique..."
  loc_A74722: FStStrCopy var_88
  loc_A74725: ExitProcCbHresult
  loc_A7472B: LitVarStr var_C0, "SELECT * FROM debito WHERE PeriInfo = "
  loc_A74730: FLdRfVar var_B0
  loc_A74733: FLdRfVar var_A0
  loc_A74736: LitVarStr var_9C, "PeriInfo"
  loc_A7473B: PopAdLdVar
  loc_A7473C: FLdRfVar var_8C
  loc_A7473F: FLdPr Me
  loc_A74742: MemLdPr RsFrm
  loc_A74745:  = Me.Fields
  loc_A7474A: FLdPr var_8C
  loc_A7474D: from_stack_2 = Me.Item(from_stack_1)
  loc_A74752: FLdPr var_A0
  loc_A74755:  = Me.Value
  loc_A7475A: FLdRfVar var_B0
  loc_A7475D: ConcatVar var_D0
  loc_A74761: LitVarStr var_E0, " AND CodiCuco = '"
  loc_A74766: ConcatVar var_F0
  loc_A7476A: FLdRfVar var_118
  loc_A7476D: FLdRfVar var_108
  loc_A74770: LitVarStr var_104, "CodiCuco"
  loc_A74775: PopAdLdVar
  loc_A74776: FLdRfVar var_F4
  loc_A74779: FLdPr Me
  loc_A7477C: MemLdPr RsFrm
  loc_A7477F:  = Me.Fields
  loc_A74784: FLdPr var_F4
  loc_A74787: from_stack_2 = Me.Item(from_stack_1)
  loc_A7478C: FLdPr var_108
  loc_A7478F:  = Me.Value
  loc_A74794: FLdRfVar var_118
  loc_A74797: ConcatVar var_128
  loc_A7479B: LitVarStr var_138, "' LIMIT 1;"
  loc_A747A0: ConcatVar var_148
  loc_A747A4: CStrVarVal var_14C
  loc_A747A8: Call EjecutarRsCls(from_stack_1v)
  loc_A747AD: FFree1Str var_14C
  loc_A747B0: FFreeAd var_8C = "": var_A0 = "": var_F4 = ""
  loc_A747BB: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = ""
  loc_A747CA: FLdRfVar var_150
  loc_A747CD: FLdPr Me
  loc_A747D0: MemLdPr global_56
  loc_A747D3:  = Me.RecordCount
  loc_A747D8: ILdRf var_150
  loc_A747DB: LitI4 0
  loc_A747E0: GtI4
  loc_A747E1: BranchF loc_A7483D
  loc_A747E4: LitVarStr var_C0, "La Cuenta Contable se encuentra en el Débito: "
  loc_A747E9: FLdRfVar var_B0
  loc_A747EC: FLdRfVar var_A0
  loc_A747EF: LitVarStr var_9C, "NumeDebi"
  loc_A747F4: PopAdLdVar
  loc_A747F5: FLdRfVar var_8C
  loc_A747F8: FLdPr Me
  loc_A747FB: MemLdPr global_56
  loc_A747FE:  = Me.Fields
  loc_A74803: FLdPr var_8C
  loc_A74806: from_stack_2 = Me.Item(from_stack_1)
  loc_A7480B: FLdPr var_A0
  loc_A7480E:  = Me.Value
  loc_A74813: FLdRfVar var_B0
  loc_A74816: ConcatVar var_D0
  loc_A7481A: LitVarStr var_E0, " y NO puede Eliminarse. Verifique..."
  loc_A7481F: ConcatVar var_F0
  loc_A74823: CStrVarTmp
  loc_A74824: FStStr var_88
  loc_A74827: FFreeAd var_8C = ""
  loc_A7482E: FFreeVar var_B0 = "": var_D0 = ""
  loc_A74837: ExitProcCbHresult
  loc_A7483D: LitVarStr var_C0, "SELECT * FROM moviasiento WHERE PeriInfo = "
  loc_A74842: FLdRfVar var_B0
  loc_A74845: FLdRfVar var_A0
  loc_A74848: LitVarStr var_9C, "PeriInfo"
  loc_A7484D: PopAdLdVar
  loc_A7484E: FLdRfVar var_8C
  loc_A74851: FLdPr Me
  loc_A74854: MemLdPr RsFrm
  loc_A74857:  = Me.Fields
  loc_A7485C: FLdPr var_8C
  loc_A7485F: from_stack_2 = Me.Item(from_stack_1)
  loc_A74864: FLdPr var_A0
  loc_A74867:  = Me.Value
  loc_A7486C: FLdRfVar var_B0
  loc_A7486F: ConcatVar var_D0
  loc_A74873: LitVarStr var_E0, " AND CodiCuco = '"
  loc_A74878: ConcatVar var_F0
  loc_A7487C: FLdRfVar var_118
  loc_A7487F: FLdRfVar var_108
  loc_A74882: LitVarStr var_104, "CodiCuco"
  loc_A74887: PopAdLdVar
  loc_A74888: FLdRfVar var_F4
  loc_A7488B: FLdPr Me
  loc_A7488E: MemLdPr RsFrm
  loc_A74891:  = Me.Fields
  loc_A74896: FLdPr var_F4
  loc_A74899: from_stack_2 = Me.Item(from_stack_1)
  loc_A7489E: FLdPr var_108
  loc_A748A1:  = Me.Value
  loc_A748A6: FLdRfVar var_118
  loc_A748A9: ConcatVar var_128
  loc_A748AD: LitVarStr var_138, "' LIMIT 1;"
  loc_A748B2: ConcatVar var_148
  loc_A748B6: CStrVarVal var_14C
  loc_A748BA: Call EjecutarRsCls(from_stack_1v)
  loc_A748BF: FFree1Str var_14C
  loc_A748C2: FFreeAd var_8C = "": var_A0 = "": var_F4 = ""
  loc_A748CD: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = ""
  loc_A748DC: FLdRfVar var_150
  loc_A748DF: FLdPr Me
  loc_A748E2: MemLdPr global_56
  loc_A748E5:  = Me.RecordCount
  loc_A748EA: ILdRf var_150
  loc_A748ED: LitI4 0
  loc_A748F2: GtI4
  loc_A748F3: BranchF loc_A7494F
  loc_A748F6: LitVarStr var_C0, "La Cuenta Contable se encuentra en el Asiento: "
  loc_A748FB: FLdRfVar var_B0
  loc_A748FE: FLdRfVar var_A0
  loc_A74901: LitVarStr var_9C, "CodiAsie"
  loc_A74906: PopAdLdVar
  loc_A74907: FLdRfVar var_8C
  loc_A7490A: FLdPr Me
  loc_A7490D: MemLdPr global_56
  loc_A74910:  = Me.Fields
  loc_A74915: FLdPr var_8C
  loc_A74918: from_stack_2 = Me.Item(from_stack_1)
  loc_A7491D: FLdPr var_A0
  loc_A74920:  = Me.Value
  loc_A74925: FLdRfVar var_B0
  loc_A74928: ConcatVar var_D0
  loc_A7492C: LitVarStr var_E0, " y NO puede Eliminarse. Verifique..."
  loc_A74931: ConcatVar var_F0
  loc_A74935: CStrVarTmp
  loc_A74936: FStStr var_88
  loc_A74939: FFreeAd var_8C = ""
  loc_A74940: FFreeVar var_B0 = "": var_D0 = ""
  loc_A74949: ExitProcCbHresult
  loc_A7494F: LitVarStr var_C0, "SELECT * FROM ingreso WHERE PeriInfo = "
  loc_A74954: FLdRfVar var_B0
  loc_A74957: FLdRfVar var_A0
  loc_A7495A: LitVarStr var_9C, "PeriInfo"
  loc_A7495F: PopAdLdVar
  loc_A74960: FLdRfVar var_8C
  loc_A74963: FLdPr Me
  loc_A74966: MemLdPr RsFrm
  loc_A74969:  = Me.Fields
  loc_A7496E: FLdPr var_8C
  loc_A74971: from_stack_2 = Me.Item(from_stack_1)
  loc_A74976: FLdPr var_A0
  loc_A74979:  = Me.Value
  loc_A7497E: FLdRfVar var_B0
  loc_A74981: ConcatVar var_D0
  loc_A74985: LitVarStr var_E0, " AND CodiCuco = '"
  loc_A7498A: ConcatVar var_F0
  loc_A7498E: FLdRfVar var_118
  loc_A74991: FLdRfVar var_108
  loc_A74994: LitVarStr var_104, "CodiCuco"
  loc_A74999: PopAdLdVar
  loc_A7499A: FLdRfVar var_F4
  loc_A7499D: FLdPr Me
  loc_A749A0: MemLdPr RsFrm
  loc_A749A3:  = Me.Fields
  loc_A749A8: FLdPr var_F4
  loc_A749AB: from_stack_2 = Me.Item(from_stack_1)
  loc_A749B0: FLdPr var_108
  loc_A749B3:  = Me.Value
  loc_A749B8: FLdRfVar var_118
  loc_A749BB: ConcatVar var_128
  loc_A749BF: LitVarStr var_138, "' LIMIT 1;"
  loc_A749C4: ConcatVar var_148
  loc_A749C8: CStrVarVal var_14C
  loc_A749CC: Call EjecutarRsCls(from_stack_1v)
  loc_A749D1: FFree1Str var_14C
  loc_A749D4: FFreeAd var_8C = "": var_A0 = "": var_F4 = ""
  loc_A749DF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = ""
  loc_A749EE: FLdRfVar var_150
  loc_A749F1: FLdPr Me
  loc_A749F4: MemLdPr global_56
  loc_A749F7:  = Me.RecordCount
  loc_A749FC: ILdRf var_150
  loc_A749FF: LitI4 0
  loc_A74A04: GtI4
  loc_A74A05: BranchF loc_A74A14
  loc_A74A08: LitStr "La Cuenta Contable se encuentra en un ingreso y NO puede Eliminarse. Verifique..."
  loc_A74A0B: FStStrCopy var_88
  loc_A74A0E: ExitProcCbHresult
  loc_A74A14: ExitProcCbHresult
End Function

Public Sub Eliminar(iPeriInfo, sCodiCuco) 'A10884
  'Data Table: 414A60
  loc_A10724: ILdRf sCodiCuco
  loc_A10727: FStStrCopy var_88
  loc_A1072A: FLdRfVar var_9A
  loc_A1072D: ILdRf var_88
  loc_A10730: from_stack_2v = NivelCuentaContable(from_stack_1v)
  loc_A10735: LitStr "SELECT *"
  loc_A10738: LitStr " FROM infogov.cuentacontable"
  loc_A1073B: ConcatStr
  loc_A1073C: FStStrNoPop var_8C
  loc_A1073F: LitStr " WHERE PeriInfo = "
  loc_A10742: ConcatStr
  loc_A10743: FStStrNoPop var_90
  loc_A10746: FLdI2 iPeriInfo
  loc_A10749: CStrUI1
  loc_A1074B: FStStrNoPop var_94
  loc_A1074E: ConcatStr
  loc_A1074F: FStStrNoPop var_98
  loc_A10752: LitStr " AND CodiCuco LIKE '"
  loc_A10755: ConcatStr
  loc_A10756: FStStrNoPop var_A0
  loc_A10759: FLdRfVar var_9C
  loc_A1075C: FLdUI1
  loc_A10760: Call Proc_8_31_A498A0()
  loc_A10765: FLdUI1
  loc_A10769: CI4UI1
  loc_A1076A: ILdRf var_88
  loc_A1076D: ImpAdCallI2 Left$(, )
  loc_A10772: FStStrNoPop var_A4
  loc_A10775: ConcatStr
  loc_A10776: FStStrNoPop var_A8
  loc_A10779: LitStr Chr(37) & "'"
  loc_A1077C: ConcatStr
  loc_A1077D: FStStrNoPop var_AC
  loc_A10780: Call EjecutarRsCls(from_stack_1v)
  loc_A10785: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A10798: FLdRfVar var_B0
  loc_A1079B: FLdPr Me
  loc_A1079E: MemLdPr global_56
  loc_A107A1:  = Me.RecordCount
  loc_A107A6: ILdRf var_B0
  loc_A107A9: LitI4 2
  loc_A107AE: EqI4
  loc_A107AF: BranchF loc_A10818
  loc_A107B2: FLdRfVar var_9A
  loc_A107B5: ILdRf var_88
  loc_A107B8: from_stack_2v = NivelCuentaContable(from_stack_1v)
  loc_A107BD: LitStr "UPDATE infogov.cuentacontable"
  loc_A107C0: LitStr " SET ImpuCuco=1"
  loc_A107C3: ConcatStr
  loc_A107C4: FStStrNoPop var_8C
  loc_A107C7: LitStr " WHERE PeriInfo = "
  loc_A107CA: ConcatStr
  loc_A107CB: FStStrNoPop var_90
  loc_A107CE: FLdI2 iPeriInfo
  loc_A107D1: CStrUI1
  loc_A107D3: FStStrNoPop var_94
  loc_A107D6: ConcatStr
  loc_A107D7: FStStrNoPop var_98
  loc_A107DA: LitStr " AND CodiCuco = '"
  loc_A107DD: ConcatStr
  loc_A107DE: FStStrNoPop var_A4
  loc_A107E1: FLdRfVar var_A0
  loc_A107E4: FLdUI1
  loc_A107E8: CI2UI1
  loc_A107EA: ILdRf var_88
  loc_A107ED: from_stack_3v = CuentaContableNivelSuperior(from_stack_1v, from_stack_2v)
  loc_A107F2: ILdRf var_A0
  loc_A107F5: ConcatStr
  loc_A107F6: FStStrNoPop var_A8
  loc_A107F9: LitStr "';"
  loc_A107FC: ConcatStr
  loc_A107FD: FStStrNoPop var_AC
  loc_A10800: Call EjecutarRsCls(from_stack_1v)
  loc_A10805: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_A4 = "": var_A0 = "": var_A8 = ""
  loc_A10818: LitStr "DELETE FROM infogov.cuentacontable"
  loc_A1081B: LitStr " WHERE PeriInfo="
  loc_A1081E: ConcatStr
  loc_A1081F: FStStrNoPop var_8C
  loc_A10822: FLdI2 iPeriInfo
  loc_A10825: CStrUI1
  loc_A10827: FStStrNoPop var_90
  loc_A1082A: ConcatStr
  loc_A1082B: FStStrNoPop var_94
  loc_A1082E: LitStr " AND CodiCuco='"
  loc_A10831: ConcatStr
  loc_A10832: FStStrNoPop var_98
  loc_A10835: ILdRf var_88
  loc_A10838: ConcatStr
  loc_A10839: FStStrNoPop var_A0
  loc_A1083C: LitStr "';"
  loc_A1083F: ConcatStr
  loc_A10840: FStStrNoPop var_A4
  loc_A10843: Call EjecutarRsCls(from_stack_1v)
  loc_A10848: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_A0 = ""
  loc_A10857: FLdRfVar var_9A
  loc_A1085A: ILdRf var_88
  loc_A1085D: from_stack_2v = NivelCuentaContable(from_stack_1v)
  loc_A10862: FLdRfVar var_8C
  loc_A10865: FLdUI1
  loc_A10869: CI2UI1
  loc_A1086B: ILdRf var_88
  loc_A1086E: from_stack_3v = CuentaContableNivelSuperior(from_stack_1v, from_stack_2v)
  loc_A10873: ILdRf var_8C
  loc_A10876: FLdI2 iPeriInfo
  loc_A10879: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A1087E: FFree1Str var_8C
  loc_A10881: ExitProcHresult
End Sub

Public Function ValidaClave(CodiCuco) '9A2CFC
  'Data Table: 414A60
  loc_9A2C98: ILdRf CodiCuco
  loc_9A2C9B: FStStrCopy var_8C
  loc_9A2C9E: ZeroRetVal
  loc_9A2CA0: LitStr "SELECT CodiCuco FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_9A2CA3: ImpAdLdI2 MemVar_C3D064
  loc_9A2CA6: CStrUI1
  loc_9A2CA8: FStStrNoPop var_90
  loc_9A2CAB: ConcatStr
  loc_9A2CAC: FStStrNoPop ValidaClave
  loc_9A2CAF: LitStr " AND CodiCuco = '"
  loc_9A2CB2: ConcatStr
  loc_9A2CB3: FStStrNoPop var_98
  loc_9A2CB6: ILdRf var_8C
  loc_9A2CB9: ConcatStr
  loc_9A2CBA: FStStrNoPop var_9C
  loc_9A2CBD: LitStr "'"
  loc_9A2CC0: ConcatStr
  loc_9A2CC1: FStStrNoPop var_A0
  loc_9A2CC4: Call EjecutarRsCls(from_stack_1v)
  loc_9A2CC9: FFreeStr var_90 = "": ValidaClave = "": var_98 = "": var_9C = ""
  loc_9A2CD6: FLdRfVar var_A4
  loc_9A2CD9: FLdPr Me
  loc_9A2CDC: MemLdPr global_56
  loc_9A2CDF:  = Me.RecordCount
  loc_9A2CE4: ILdRf var_A4
  loc_9A2CE7: LitI4 0
  loc_9A2CEC: GtI4
  loc_9A2CED: BranchF loc_9A2CF6
  loc_9A2CF0: LitStr "La Cuenta Contable YA EXISTE. Reintente..."
  loc_9A2CF3: FStStrCopy var_88
  loc_9A2CF6: ExitProcCbHresult
End Function

Public Sub Encontrar(PeriInfo, CodiCuco) '993DC0
  'Data Table: 414A60
  loc_993D70: ILdRf CodiCuco
  loc_993D73: FStStrCopy var_88
  loc_993D76: Call Requery()
  loc_993D7B: LitStr "PeriInfo = '"
  loc_993D7E: FLdI2 PeriInfo
  loc_993D81: CStrUI1
  loc_993D83: FStStrNoPop var_8C
  loc_993D86: ConcatStr
  loc_993D87: FStStrNoPop var_90
  loc_993D8A: LitStr "'"
  loc_993D8D: ConcatStr
  loc_993D8E: PopTmpLdAdStr
  loc_993D92: Call Find(from_stack_1v)
  loc_993D97: FFreeStr var_8C = "": var_90 = ""
  loc_993DA0: LitStr "CodiCuco = '"
  loc_993DA3: ILdRf var_88
  loc_993DA6: ConcatStr
  loc_993DA7: FStStrNoPop var_8C
  loc_993DAA: LitStr "'"
  loc_993DAD: ConcatStr
  loc_993DAE: PopTmpLdAdStr
  loc_993DB2: Call Find(from_stack_1v)
  loc_993DB7: FFreeStr var_8C = ""
  loc_993DBE: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '972ED8
  'Data Table: 414A60
  loc_972EB0: ILdRf sSelect
  loc_972EB3: FStStrCopy var_88
  loc_972EB6: FLdPr Me
  loc_972EB9: MemLdRfVar from_stack_1.RsFrm
  loc_972EBC: ILdRf var_88
  loc_972EBF: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_972EC4: LitVarStr var_98, "Primary"
  loc_972EC9: PopAdLdVar
  loc_972ECA: FLdPr Me
  loc_972ECD: LateIdCall
  loc_972ED5: ExitProcHresult
  loc_972ED6: FStVarCopyObj var_1800
End Sub

Public Sub EjecutarRsCls(sSelect) '961540
  'Data Table: 414A60
  loc_961528: ILdRf sSelect
  loc_96152B: FStStrCopy var_88
  loc_96152E: FLdPr Me
  loc_961531: MemLdRfVar from_stack_1.global_56
  loc_961534: ILdRf var_88
  loc_961537: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_96153C: ExitProcHresult
End Sub

Public Sub Requery() '967A30
  'Data Table: 414A60
  loc_967A10: FLdPr Me
  loc_967A13: MemLdRfVar from_stack_1.RsFrm
  loc_967A16: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_967A1B: LitVarStr var_94, "Primary"
  loc_967A20: PopAdLdVar
  loc_967A21: FLdPr Me
  loc_967A24: LateIdCall
  loc_967A2C: ExitProcHresult
End Sub

Public Property Get DataSource() '971778
  'Data Table: 414A60
  loc_971754: ZeroRetVal
  loc_971756: FLdRfVar var_8C
  loc_971759: FLdPr Me
  loc_97175C: MemLdPr RsFrm
  loc_97175F:  = Me.DataSource
  loc_971764: ILdRf var_8C
  loc_971767: CastAd
  loc_97176A: FStAdFunc var_88
  loc_97176D: FFree1Ad var_8C
  loc_971770: ExitProcCbHresult
  loc_971776: FStR8 var_1800
End Sub

Public Function ValidaCodiCuco(PeriInfo, CodiCuco) 'C17E18
  'Data Table: 414A60
  loc_C15198: ILdRf CodiCuco
  loc_C1519B: FStStrCopy var_8C
  loc_C1519E: ZeroRetVal
  loc_C151A0: ILdRf var_8C
  loc_C151A3: FnLenStr
  loc_C151A4: LitI2_Byte &HA
  loc_C151A6: CI4UI1
  loc_C151A7: NeI4
  loc_C151A8: BranchF loc_C151CA
  loc_C151AB: LitStr "Debe ingresar "
  loc_C151AE: LitI2_Byte &HA
  loc_C151B0: CStrI2
  loc_C151B2: FStStrNoPop var_90
  loc_C151B5: ConcatStr
  loc_C151B6: FStStrNoPop ValidaCodiCuco
  loc_C151B9: LitStr " caracteres. Verifique..."
  loc_C151BC: ConcatStr
  loc_C151BD: FStStr var_88
  loc_C151C0: FFreeStr var_90 = ""
  loc_C151C7: Branch loc_C17E10
  loc_C151CA: LitStr "Falta ingresar un Nivel. Verifique..."
  loc_C151CD: FStStrCopy var_88
  loc_C151D0: LitStr "Municipalidad de Guaymallén"
  loc_C151D3: FStStrCopy var_98
  loc_C151D6: ILdRf var_98
  loc_C151D9: LitStr "Municipalidad de Tunuyán"
  loc_C151DC: EqStr
  loc_C151DE: BranchF loc_C15847
  loc_C151E1: LitVarI2 var_B8, 2
  loc_C151E6: LitI4 &HA
  loc_C151EB: ILdRf var_8C
  loc_C151EE: ImpAdCallI2 Mid$(, , )
  loc_C151F3: FStStrNoPop var_90
  loc_C151F6: LitStr "00"
  loc_C151F9: NeStr
  loc_C151FB: LitVarI2 var_D8, 2
  loc_C15200: LitI4 8
  loc_C15205: ILdRf var_8C
  loc_C15208: ImpAdCallI2 Mid$(, , )
  loc_C1520D: FStStrNoPop ValidaCodiCuco
  loc_C15210: LitStr "00"
  loc_C15213: NeStr
  loc_C15215: AndI4
  loc_C15216: LitVarI2 var_F8, 2
  loc_C1521B: LitI4 6
  loc_C15220: ILdRf var_8C
  loc_C15223: ImpAdCallI2 Mid$(, , )
  loc_C15228: FStStrNoPop var_FC
  loc_C1522B: LitStr "00"
  loc_C1522E: NeStr
  loc_C15230: AndI4
  loc_C15231: LitVarI2 var_11C, 2
  loc_C15236: LitI4 4
  loc_C1523B: ILdRf var_8C
  loc_C1523E: ImpAdCallI2 Mid$(, , )
  loc_C15243: FStStrNoPop var_120
  loc_C15246: LitStr "00"
  loc_C15249: NeStr
  loc_C1524B: AndI4
  loc_C1524C: LitVarI2 var_140, 1
  loc_C15251: LitI4 3
  loc_C15256: ILdRf var_8C
  loc_C15259: ImpAdCallI2 Mid$(, , )
  loc_C1525E: FStStrNoPop var_144
  loc_C15261: LitStr "0"
  loc_C15264: NeStr
  loc_C15266: AndI4
  loc_C15267: LitVarI2 var_164, 1
  loc_C1526C: LitI4 2
  loc_C15271: ILdRf var_8C
  loc_C15274: ImpAdCallI2 Mid$(, , )
  loc_C15279: FStStrNoPop var_168
  loc_C1527C: LitStr "0"
  loc_C1527F: NeStr
  loc_C15281: AndI4
  loc_C15282: LitVarI2 var_188, 1
  loc_C15287: LitI4 1
  loc_C1528C: ILdRf var_8C
  loc_C1528F: ImpAdCallI2 Mid$(, , )
  loc_C15294: FStStrNoPop var_18C
  loc_C15297: LitStr "0"
  loc_C1529A: NeStr
  loc_C1529C: AndI4
  loc_C1529D: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C152AE: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C152BF: BranchF loc_C152CB
  loc_C152C2: LitStr vbNullString
  loc_C152C5: FStStrCopy var_88
  loc_C152C8: Branch loc_C15844
  loc_C152CB: LitVarI2 var_B8, 2
  loc_C152D0: LitI4 8
  loc_C152D5: ILdRf var_8C
  loc_C152D8: ImpAdCallI2 Mid$(, , )
  loc_C152DD: FStStrNoPop var_90
  loc_C152E0: LitStr "00"
  loc_C152E3: NeStr
  loc_C152E5: LitVarI2 var_D8, 2
  loc_C152EA: LitI4 &HA
  loc_C152EF: ILdRf var_8C
  loc_C152F2: ImpAdCallI2 Mid$(, , )
  loc_C152F7: FStStrNoPop ValidaCodiCuco
  loc_C152FA: LitStr "00"
  loc_C152FD: EqStr
  loc_C152FF: AndI4
  loc_C15300: LitVarI2 var_F8, 2
  loc_C15305: LitI4 6
  loc_C1530A: ILdRf var_8C
  loc_C1530D: ImpAdCallI2 Mid$(, , )
  loc_C15312: FStStrNoPop var_FC
  loc_C15315: LitStr "00"
  loc_C15318: NeStr
  loc_C1531A: AndI4
  loc_C1531B: LitVarI2 var_11C, 2
  loc_C15320: LitI4 4
  loc_C15325: ILdRf var_8C
  loc_C15328: ImpAdCallI2 Mid$(, , )
  loc_C1532D: FStStrNoPop var_120
  loc_C15330: LitStr "00"
  loc_C15333: NeStr
  loc_C15335: AndI4
  loc_C15336: LitVarI2 var_140, 1
  loc_C1533B: LitI4 3
  loc_C15340: ILdRf var_8C
  loc_C15343: ImpAdCallI2 Mid$(, , )
  loc_C15348: FStStrNoPop var_144
  loc_C1534B: LitStr "0"
  loc_C1534E: NeStr
  loc_C15350: AndI4
  loc_C15351: LitVarI2 var_164, 1
  loc_C15356: LitI4 2
  loc_C1535B: ILdRf var_8C
  loc_C1535E: ImpAdCallI2 Mid$(, , )
  loc_C15363: FStStrNoPop var_168
  loc_C15366: LitStr "0"
  loc_C15369: NeStr
  loc_C1536B: AndI4
  loc_C1536C: LitVarI2 var_188, 1
  loc_C15371: LitI4 1
  loc_C15376: ILdRf var_8C
  loc_C15379: ImpAdCallI2 Mid$(, , )
  loc_C1537E: FStStrNoPop var_18C
  loc_C15381: LitStr "0"
  loc_C15384: NeStr
  loc_C15386: AndI4
  loc_C15387: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C15398: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C153A9: BranchF loc_C153B5
  loc_C153AC: LitStr vbNullString
  loc_C153AF: FStStrCopy var_88
  loc_C153B2: Branch loc_C15844
  loc_C153B5: LitVarI2 var_B8, 2
  loc_C153BA: LitI4 6
  loc_C153BF: ILdRf var_8C
  loc_C153C2: ImpAdCallI2 Mid$(, , )
  loc_C153C7: FStStrNoPop var_90
  loc_C153CA: LitStr "00"
  loc_C153CD: NeStr
  loc_C153CF: LitVarI2 var_D8, 2
  loc_C153D4: LitI4 &HA
  loc_C153D9: ILdRf var_8C
  loc_C153DC: ImpAdCallI2 Mid$(, , )
  loc_C153E1: FStStrNoPop ValidaCodiCuco
  loc_C153E4: LitStr "00"
  loc_C153E7: EqStr
  loc_C153E9: AndI4
  loc_C153EA: LitVarI2 var_F8, 2
  loc_C153EF: LitI4 8
  loc_C153F4: ILdRf var_8C
  loc_C153F7: ImpAdCallI2 Mid$(, , )
  loc_C153FC: FStStrNoPop var_FC
  loc_C153FF: LitStr "00"
  loc_C15402: EqStr
  loc_C15404: AndI4
  loc_C15405: LitVarI2 var_11C, 2
  loc_C1540A: LitI4 4
  loc_C1540F: ILdRf var_8C
  loc_C15412: ImpAdCallI2 Mid$(, , )
  loc_C15417: FStStrNoPop var_120
  loc_C1541A: LitStr "00"
  loc_C1541D: NeStr
  loc_C1541F: AndI4
  loc_C15420: LitVarI2 var_140, 1
  loc_C15425: LitI4 3
  loc_C1542A: ILdRf var_8C
  loc_C1542D: ImpAdCallI2 Mid$(, , )
  loc_C15432: FStStrNoPop var_144
  loc_C15435: LitStr "0"
  loc_C15438: NeStr
  loc_C1543A: AndI4
  loc_C1543B: LitVarI2 var_164, 1
  loc_C15440: LitI4 2
  loc_C15445: ILdRf var_8C
  loc_C15448: ImpAdCallI2 Mid$(, , )
  loc_C1544D: FStStrNoPop var_168
  loc_C15450: LitStr "0"
  loc_C15453: NeStr
  loc_C15455: AndI4
  loc_C15456: LitVarI2 var_188, 1
  loc_C1545B: LitI4 1
  loc_C15460: ILdRf var_8C
  loc_C15463: ImpAdCallI2 Mid$(, , )
  loc_C15468: FStStrNoPop var_18C
  loc_C1546B: LitStr "0"
  loc_C1546E: NeStr
  loc_C15470: AndI4
  loc_C15471: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C15482: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C15493: BranchF loc_C1549F
  loc_C15496: LitStr vbNullString
  loc_C15499: FStStrCopy var_88
  loc_C1549C: Branch loc_C15844
  loc_C1549F: LitVarI2 var_B8, 2
  loc_C154A4: LitI4 4
  loc_C154A9: ILdRf var_8C
  loc_C154AC: ImpAdCallI2 Mid$(, , )
  loc_C154B1: FStStrNoPop var_90
  loc_C154B4: LitStr "00"
  loc_C154B7: NeStr
  loc_C154B9: LitVarI2 var_D8, 2
  loc_C154BE: LitI4 &HA
  loc_C154C3: ILdRf var_8C
  loc_C154C6: ImpAdCallI2 Mid$(, , )
  loc_C154CB: FStStrNoPop ValidaCodiCuco
  loc_C154CE: LitStr "00"
  loc_C154D1: EqStr
  loc_C154D3: AndI4
  loc_C154D4: LitVarI2 var_F8, 2
  loc_C154D9: LitI4 8
  loc_C154DE: ILdRf var_8C
  loc_C154E1: ImpAdCallI2 Mid$(, , )
  loc_C154E6: FStStrNoPop var_FC
  loc_C154E9: LitStr "00"
  loc_C154EC: EqStr
  loc_C154EE: AndI4
  loc_C154EF: LitVarI2 var_11C, 2
  loc_C154F4: LitI4 6
  loc_C154F9: ILdRf var_8C
  loc_C154FC: ImpAdCallI2 Mid$(, , )
  loc_C15501: FStStrNoPop var_120
  loc_C15504: LitStr "00"
  loc_C15507: EqStr
  loc_C15509: AndI4
  loc_C1550A: LitVarI2 var_140, 1
  loc_C1550F: LitI4 3
  loc_C15514: ILdRf var_8C
  loc_C15517: ImpAdCallI2 Mid$(, , )
  loc_C1551C: FStStrNoPop var_144
  loc_C1551F: LitStr "0"
  loc_C15522: NeStr
  loc_C15524: AndI4
  loc_C15525: LitVarI2 var_164, 1
  loc_C1552A: LitI4 2
  loc_C1552F: ILdRf var_8C
  loc_C15532: ImpAdCallI2 Mid$(, , )
  loc_C15537: FStStrNoPop var_168
  loc_C1553A: LitStr "0"
  loc_C1553D: NeStr
  loc_C1553F: AndI4
  loc_C15540: LitVarI2 var_188, 1
  loc_C15545: LitI4 1
  loc_C1554A: ILdRf var_8C
  loc_C1554D: ImpAdCallI2 Mid$(, , )
  loc_C15552: FStStrNoPop var_18C
  loc_C15555: LitStr "0"
  loc_C15558: NeStr
  loc_C1555A: AndI4
  loc_C1555B: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C1556C: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C1557D: BranchF loc_C15589
  loc_C15580: LitStr vbNullString
  loc_C15583: FStStrCopy var_88
  loc_C15586: Branch loc_C15844
  loc_C15589: LitVarI2 var_B8, 1
  loc_C1558E: LitI4 3
  loc_C15593: ILdRf var_8C
  loc_C15596: ImpAdCallI2 Mid$(, , )
  loc_C1559B: FStStrNoPop var_90
  loc_C1559E: LitStr "0"
  loc_C155A1: NeStr
  loc_C155A3: LitVarI2 var_D8, 2
  loc_C155A8: LitI4 &HA
  loc_C155AD: ILdRf var_8C
  loc_C155B0: ImpAdCallI2 Mid$(, , )
  loc_C155B5: FStStrNoPop ValidaCodiCuco
  loc_C155B8: LitStr "00"
  loc_C155BB: EqStr
  loc_C155BD: AndI4
  loc_C155BE: LitVarI2 var_F8, 2
  loc_C155C3: LitI4 8
  loc_C155C8: ILdRf var_8C
  loc_C155CB: ImpAdCallI2 Mid$(, , )
  loc_C155D0: FStStrNoPop var_FC
  loc_C155D3: LitStr "00"
  loc_C155D6: EqStr
  loc_C155D8: AndI4
  loc_C155D9: LitVarI2 var_11C, 2
  loc_C155DE: LitI4 6
  loc_C155E3: ILdRf var_8C
  loc_C155E6: ImpAdCallI2 Mid$(, , )
  loc_C155EB: FStStrNoPop var_120
  loc_C155EE: LitStr "00"
  loc_C155F1: EqStr
  loc_C155F3: AndI4
  loc_C155F4: LitVarI2 var_140, 2
  loc_C155F9: LitI4 4
  loc_C155FE: ILdRf var_8C
  loc_C15601: ImpAdCallI2 Mid$(, , )
  loc_C15606: FStStrNoPop var_144
  loc_C15609: LitStr "00"
  loc_C1560C: EqStr
  loc_C1560E: AndI4
  loc_C1560F: LitVarI2 var_164, 1
  loc_C15614: LitI4 2
  loc_C15619: ILdRf var_8C
  loc_C1561C: ImpAdCallI2 Mid$(, , )
  loc_C15621: FStStrNoPop var_168
  loc_C15624: LitStr "0"
  loc_C15627: NeStr
  loc_C15629: AndI4
  loc_C1562A: LitVarI2 var_188, 1
  loc_C1562F: LitI4 1
  loc_C15634: ILdRf var_8C
  loc_C15637: ImpAdCallI2 Mid$(, , )
  loc_C1563C: FStStrNoPop var_18C
  loc_C1563F: LitStr "0"
  loc_C15642: NeStr
  loc_C15644: AndI4
  loc_C15645: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C15656: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C15667: BranchF loc_C15673
  loc_C1566A: LitStr vbNullString
  loc_C1566D: FStStrCopy var_88
  loc_C15670: Branch loc_C15844
  loc_C15673: LitVarI2 var_B8, 1
  loc_C15678: LitI4 2
  loc_C1567D: ILdRf var_8C
  loc_C15680: ImpAdCallI2 Mid$(, , )
  loc_C15685: FStStrNoPop var_90
  loc_C15688: LitStr "0"
  loc_C1568B: NeStr
  loc_C1568D: LitVarI2 var_D8, 2
  loc_C15692: LitI4 &HA
  loc_C15697: ILdRf var_8C
  loc_C1569A: ImpAdCallI2 Mid$(, , )
  loc_C1569F: FStStrNoPop ValidaCodiCuco
  loc_C156A2: LitStr "00"
  loc_C156A5: EqStr
  loc_C156A7: AndI4
  loc_C156A8: LitVarI2 var_F8, 2
  loc_C156AD: LitI4 8
  loc_C156B2: ILdRf var_8C
  loc_C156B5: ImpAdCallI2 Mid$(, , )
  loc_C156BA: FStStrNoPop var_FC
  loc_C156BD: LitStr "00"
  loc_C156C0: EqStr
  loc_C156C2: AndI4
  loc_C156C3: LitVarI2 var_11C, 2
  loc_C156C8: LitI4 6
  loc_C156CD: ILdRf var_8C
  loc_C156D0: ImpAdCallI2 Mid$(, , )
  loc_C156D5: FStStrNoPop var_120
  loc_C156D8: LitStr "00"
  loc_C156DB: EqStr
  loc_C156DD: AndI4
  loc_C156DE: LitVarI2 var_140, 2
  loc_C156E3: LitI4 4
  loc_C156E8: ILdRf var_8C
  loc_C156EB: ImpAdCallI2 Mid$(, , )
  loc_C156F0: FStStrNoPop var_144
  loc_C156F3: LitStr "00"
  loc_C156F6: EqStr
  loc_C156F8: AndI4
  loc_C156F9: LitVarI2 var_164, 1
  loc_C156FE: LitI4 3
  loc_C15703: ILdRf var_8C
  loc_C15706: ImpAdCallI2 Mid$(, , )
  loc_C1570B: FStStrNoPop var_168
  loc_C1570E: LitStr "0"
  loc_C15711: EqStr
  loc_C15713: AndI4
  loc_C15714: LitVarI2 var_188, 1
  loc_C15719: LitI4 1
  loc_C1571E: ILdRf var_8C
  loc_C15721: ImpAdCallI2 Mid$(, , )
  loc_C15726: FStStrNoPop var_18C
  loc_C15729: LitStr "0"
  loc_C1572C: NeStr
  loc_C1572E: AndI4
  loc_C1572F: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C15740: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C15751: BranchF loc_C1575D
  loc_C15754: LitStr vbNullString
  loc_C15757: FStStrCopy var_88
  loc_C1575A: Branch loc_C15844
  loc_C1575D: LitVarI2 var_B8, 1
  loc_C15762: LitI4 1
  loc_C15767: ILdRf var_8C
  loc_C1576A: ImpAdCallI2 Mid$(, , )
  loc_C1576F: FStStrNoPop var_90
  loc_C15772: LitStr "0"
  loc_C15775: NeStr
  loc_C15777: LitVarI2 var_D8, 2
  loc_C1577C: LitI4 &HA
  loc_C15781: ILdRf var_8C
  loc_C15784: ImpAdCallI2 Mid$(, , )
  loc_C15789: FStStrNoPop ValidaCodiCuco
  loc_C1578C: LitStr "00"
  loc_C1578F: EqStr
  loc_C15791: AndI4
  loc_C15792: LitVarI2 var_F8, 2
  loc_C15797: LitI4 8
  loc_C1579C: ILdRf var_8C
  loc_C1579F: ImpAdCallI2 Mid$(, , )
  loc_C157A4: FStStrNoPop var_FC
  loc_C157A7: LitStr "00"
  loc_C157AA: EqStr
  loc_C157AC: AndI4
  loc_C157AD: LitVarI2 var_11C, 2
  loc_C157B2: LitI4 6
  loc_C157B7: ILdRf var_8C
  loc_C157BA: ImpAdCallI2 Mid$(, , )
  loc_C157BF: FStStrNoPop var_120
  loc_C157C2: LitStr "00"
  loc_C157C5: EqStr
  loc_C157C7: AndI4
  loc_C157C8: LitVarI2 var_140, 2
  loc_C157CD: LitI4 4
  loc_C157D2: ILdRf var_8C
  loc_C157D5: ImpAdCallI2 Mid$(, , )
  loc_C157DA: FStStrNoPop var_144
  loc_C157DD: LitStr "00"
  loc_C157E0: EqStr
  loc_C157E2: AndI4
  loc_C157E3: LitVarI2 var_164, 1
  loc_C157E8: LitI4 3
  loc_C157ED: ILdRf var_8C
  loc_C157F0: ImpAdCallI2 Mid$(, , )
  loc_C157F5: FStStrNoPop var_168
  loc_C157F8: LitStr "0"
  loc_C157FB: EqStr
  loc_C157FD: AndI4
  loc_C157FE: LitVarI2 var_188, 1
  loc_C15803: LitI4 2
  loc_C15808: ILdRf var_8C
  loc_C1580B: ImpAdCallI2 Mid$(, , )
  loc_C15810: FStStrNoPop var_18C
  loc_C15813: LitStr "0"
  loc_C15816: EqStr
  loc_C15818: AndI4
  loc_C15819: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C1582A: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C1583B: BranchF loc_C15844
  loc_C1583E: LitStr vbNullString
  loc_C15841: FStStrCopy var_88
  loc_C15844: Branch loc_C17AFC
  loc_C15847: ILdRf var_98
  loc_C1584A: LitStr "Municipalidad de General Alvear"
  loc_C1584D: EqStr
  loc_C1584F: BranchF loc_C15DDF
  loc_C15852: LitVarI2 var_B8, 2
  loc_C15857: LitI4 8
  loc_C1585C: ILdRf var_8C
  loc_C1585F: ImpAdCallI2 Mid$(, , )
  loc_C15864: FStStrNoPop var_90
  loc_C15867: LitStr "00"
  loc_C1586A: NeStr
  loc_C1586C: LitVarI2 var_D8, 2
  loc_C15871: LitI4 6
  loc_C15876: ILdRf var_8C
  loc_C15879: ImpAdCallI2 Mid$(, , )
  loc_C1587E: FStStrNoPop ValidaCodiCuco
  loc_C15881: LitStr "00"
  loc_C15884: NeStr
  loc_C15886: AndI4
  loc_C15887: LitVarI2 var_F8, 2
  loc_C1588C: LitI4 4
  loc_C15891: ILdRf var_8C
  loc_C15894: ImpAdCallI2 Mid$(, , )
  loc_C15899: FStStrNoPop var_FC
  loc_C1589C: LitStr "00"
  loc_C1589F: NeStr
  loc_C158A1: AndI4
  loc_C158A2: LitVarI2 var_11C, 1
  loc_C158A7: LitI4 3
  loc_C158AC: ILdRf var_8C
  loc_C158AF: ImpAdCallI2 Mid$(, , )
  loc_C158B4: FStStrNoPop var_120
  loc_C158B7: LitStr "0"
  loc_C158BA: NeStr
  loc_C158BC: AndI4
  loc_C158BD: LitVarI2 var_140, 1
  loc_C158C2: LitI4 2
  loc_C158C7: ILdRf var_8C
  loc_C158CA: ImpAdCallI2 Mid$(, , )
  loc_C158CF: FStStrNoPop var_144
  loc_C158D2: LitStr "0"
  loc_C158D5: NeStr
  loc_C158D7: AndI4
  loc_C158D8: LitVarI2 var_164, 1
  loc_C158DD: LitI4 1
  loc_C158E2: ILdRf var_8C
  loc_C158E5: ImpAdCallI2 Mid$(, , )
  loc_C158EA: FStStrNoPop var_168
  loc_C158ED: LitStr "0"
  loc_C158F0: NeStr
  loc_C158F2: AndI4
  loc_C158F3: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C15902: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C15911: BranchF loc_C1591D
  loc_C15914: LitStr vbNullString
  loc_C15917: FStStrCopy var_88
  loc_C1591A: Branch loc_C15DDC
  loc_C1591D: LitVarI2 var_B8, 2
  loc_C15922: LitI4 8
  loc_C15927: ILdRf var_8C
  loc_C1592A: ImpAdCallI2 Mid$(, , )
  loc_C1592F: FStStrNoPop var_90
  loc_C15932: LitStr "00"
  loc_C15935: NeStr
  loc_C15937: LitVarI2 var_D8, 2
  loc_C1593C: LitI4 6
  loc_C15941: ILdRf var_8C
  loc_C15944: ImpAdCallI2 Mid$(, , )
  loc_C15949: FStStrNoPop ValidaCodiCuco
  loc_C1594C: LitStr "00"
  loc_C1594F: NeStr
  loc_C15951: AndI4
  loc_C15952: LitVarI2 var_F8, 2
  loc_C15957: LitI4 4
  loc_C1595C: ILdRf var_8C
  loc_C1595F: ImpAdCallI2 Mid$(, , )
  loc_C15964: FStStrNoPop var_FC
  loc_C15967: LitStr "00"
  loc_C1596A: NeStr
  loc_C1596C: AndI4
  loc_C1596D: LitVarI2 var_11C, 1
  loc_C15972: LitI4 3
  loc_C15977: ILdRf var_8C
  loc_C1597A: ImpAdCallI2 Mid$(, , )
  loc_C1597F: FStStrNoPop var_120
  loc_C15982: LitStr "0"
  loc_C15985: NeStr
  loc_C15987: AndI4
  loc_C15988: LitVarI2 var_140, 1
  loc_C1598D: LitI4 2
  loc_C15992: ILdRf var_8C
  loc_C15995: ImpAdCallI2 Mid$(, , )
  loc_C1599A: FStStrNoPop var_144
  loc_C1599D: LitStr "0"
  loc_C159A0: NeStr
  loc_C159A2: AndI4
  loc_C159A3: LitVarI2 var_164, 1
  loc_C159A8: LitI4 1
  loc_C159AD: ILdRf var_8C
  loc_C159B0: ImpAdCallI2 Mid$(, , )
  loc_C159B5: FStStrNoPop var_168
  loc_C159B8: LitStr "0"
  loc_C159BB: NeStr
  loc_C159BD: AndI4
  loc_C159BE: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C159CD: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C159DC: BranchF loc_C159E8
  loc_C159DF: LitStr vbNullString
  loc_C159E2: FStStrCopy var_88
  loc_C159E5: Branch loc_C15DDC
  loc_C159E8: LitVarI2 var_B8, 2
  loc_C159ED: LitI4 6
  loc_C159F2: ILdRf var_8C
  loc_C159F5: ImpAdCallI2 Mid$(, , )
  loc_C159FA: FStStrNoPop var_90
  loc_C159FD: LitStr "00"
  loc_C15A00: NeStr
  loc_C15A02: LitVarI2 var_D8, 2
  loc_C15A07: LitI4 8
  loc_C15A0C: ILdRf var_8C
  loc_C15A0F: ImpAdCallI2 Mid$(, , )
  loc_C15A14: FStStrNoPop ValidaCodiCuco
  loc_C15A17: LitStr "00"
  loc_C15A1A: EqStr
  loc_C15A1C: AndI4
  loc_C15A1D: LitVarI2 var_F8, 2
  loc_C15A22: LitI4 4
  loc_C15A27: ILdRf var_8C
  loc_C15A2A: ImpAdCallI2 Mid$(, , )
  loc_C15A2F: FStStrNoPop var_FC
  loc_C15A32: LitStr "00"
  loc_C15A35: NeStr
  loc_C15A37: AndI4
  loc_C15A38: LitVarI2 var_11C, 1
  loc_C15A3D: LitI4 3
  loc_C15A42: ILdRf var_8C
  loc_C15A45: ImpAdCallI2 Mid$(, , )
  loc_C15A4A: FStStrNoPop var_120
  loc_C15A4D: LitStr "0"
  loc_C15A50: NeStr
  loc_C15A52: AndI4
  loc_C15A53: LitVarI2 var_140, 1
  loc_C15A58: LitI4 2
  loc_C15A5D: ILdRf var_8C
  loc_C15A60: ImpAdCallI2 Mid$(, , )
  loc_C15A65: FStStrNoPop var_144
  loc_C15A68: LitStr "0"
  loc_C15A6B: NeStr
  loc_C15A6D: AndI4
  loc_C15A6E: LitVarI2 var_164, 1
  loc_C15A73: LitI4 1
  loc_C15A78: ILdRf var_8C
  loc_C15A7B: ImpAdCallI2 Mid$(, , )
  loc_C15A80: FStStrNoPop var_168
  loc_C15A83: LitStr "0"
  loc_C15A86: NeStr
  loc_C15A88: AndI4
  loc_C15A89: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C15A98: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C15AA7: BranchF loc_C15AB3
  loc_C15AAA: LitStr vbNullString
  loc_C15AAD: FStStrCopy var_88
  loc_C15AB0: Branch loc_C15DDC
  loc_C15AB3: LitVarI2 var_B8, 2
  loc_C15AB8: LitI4 4
  loc_C15ABD: ILdRf var_8C
  loc_C15AC0: ImpAdCallI2 Mid$(, , )
  loc_C15AC5: FStStrNoPop var_90
  loc_C15AC8: LitStr "00"
  loc_C15ACB: NeStr
  loc_C15ACD: LitVarI2 var_D8, 2
  loc_C15AD2: LitI4 8
  loc_C15AD7: ILdRf var_8C
  loc_C15ADA: ImpAdCallI2 Mid$(, , )
  loc_C15ADF: FStStrNoPop ValidaCodiCuco
  loc_C15AE2: LitStr "00"
  loc_C15AE5: EqStr
  loc_C15AE7: AndI4
  loc_C15AE8: LitVarI2 var_F8, 2
  loc_C15AED: LitI4 6
  loc_C15AF2: ILdRf var_8C
  loc_C15AF5: ImpAdCallI2 Mid$(, , )
  loc_C15AFA: FStStrNoPop var_FC
  loc_C15AFD: LitStr "00"
  loc_C15B00: EqStr
  loc_C15B02: AndI4
  loc_C15B03: LitVarI2 var_11C, 1
  loc_C15B08: LitI4 3
  loc_C15B0D: ILdRf var_8C
  loc_C15B10: ImpAdCallI2 Mid$(, , )
  loc_C15B15: FStStrNoPop var_120
  loc_C15B18: LitStr "0"
  loc_C15B1B: NeStr
  loc_C15B1D: AndI4
  loc_C15B1E: LitVarI2 var_140, 1
  loc_C15B23: LitI4 2
  loc_C15B28: ILdRf var_8C
  loc_C15B2B: ImpAdCallI2 Mid$(, , )
  loc_C15B30: FStStrNoPop var_144
  loc_C15B33: LitStr "0"
  loc_C15B36: NeStr
  loc_C15B38: AndI4
  loc_C15B39: LitVarI2 var_164, 1
  loc_C15B3E: LitI4 1
  loc_C15B43: ILdRf var_8C
  loc_C15B46: ImpAdCallI2 Mid$(, , )
  loc_C15B4B: FStStrNoPop var_168
  loc_C15B4E: LitStr "0"
  loc_C15B51: NeStr
  loc_C15B53: AndI4
  loc_C15B54: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C15B63: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C15B72: BranchF loc_C15B7E
  loc_C15B75: LitStr vbNullString
  loc_C15B78: FStStrCopy var_88
  loc_C15B7B: Branch loc_C15DDC
  loc_C15B7E: LitVarI2 var_B8, 1
  loc_C15B83: LitI4 3
  loc_C15B88: ILdRf var_8C
  loc_C15B8B: ImpAdCallI2 Mid$(, , )
  loc_C15B90: FStStrNoPop var_90
  loc_C15B93: LitStr "0"
  loc_C15B96: NeStr
  loc_C15B98: LitVarI2 var_D8, 2
  loc_C15B9D: LitI4 8
  loc_C15BA2: ILdRf var_8C
  loc_C15BA5: ImpAdCallI2 Mid$(, , )
  loc_C15BAA: FStStrNoPop ValidaCodiCuco
  loc_C15BAD: LitStr "00"
  loc_C15BB0: EqStr
  loc_C15BB2: AndI4
  loc_C15BB3: LitVarI2 var_F8, 2
  loc_C15BB8: LitI4 6
  loc_C15BBD: ILdRf var_8C
  loc_C15BC0: ImpAdCallI2 Mid$(, , )
  loc_C15BC5: FStStrNoPop var_FC
  loc_C15BC8: LitStr "00"
  loc_C15BCB: EqStr
  loc_C15BCD: AndI4
  loc_C15BCE: LitVarI2 var_11C, 2
  loc_C15BD3: LitI4 4
  loc_C15BD8: ILdRf var_8C
  loc_C15BDB: ImpAdCallI2 Mid$(, , )
  loc_C15BE0: FStStrNoPop var_120
  loc_C15BE3: LitStr "00"
  loc_C15BE6: EqStr
  loc_C15BE8: AndI4
  loc_C15BE9: LitVarI2 var_140, 1
  loc_C15BEE: LitI4 2
  loc_C15BF3: ILdRf var_8C
  loc_C15BF6: ImpAdCallI2 Mid$(, , )
  loc_C15BFB: FStStrNoPop var_144
  loc_C15BFE: LitStr "0"
  loc_C15C01: NeStr
  loc_C15C03: AndI4
  loc_C15C04: LitVarI2 var_164, 1
  loc_C15C09: LitI4 1
  loc_C15C0E: ILdRf var_8C
  loc_C15C11: ImpAdCallI2 Mid$(, , )
  loc_C15C16: FStStrNoPop var_168
  loc_C15C19: LitStr "0"
  loc_C15C1C: NeStr
  loc_C15C1E: AndI4
  loc_C15C1F: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C15C2E: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C15C3D: BranchF loc_C15C49
  loc_C15C40: LitStr vbNullString
  loc_C15C43: FStStrCopy var_88
  loc_C15C46: Branch loc_C15DDC
  loc_C15C49: LitVarI2 var_B8, 1
  loc_C15C4E: LitI4 2
  loc_C15C53: ILdRf var_8C
  loc_C15C56: ImpAdCallI2 Mid$(, , )
  loc_C15C5B: FStStrNoPop var_90
  loc_C15C5E: LitStr "0"
  loc_C15C61: NeStr
  loc_C15C63: LitVarI2 var_D8, 2
  loc_C15C68: LitI4 8
  loc_C15C6D: ILdRf var_8C
  loc_C15C70: ImpAdCallI2 Mid$(, , )
  loc_C15C75: FStStrNoPop ValidaCodiCuco
  loc_C15C78: LitStr "00"
  loc_C15C7B: EqStr
  loc_C15C7D: AndI4
  loc_C15C7E: LitVarI2 var_F8, 2
  loc_C15C83: LitI4 6
  loc_C15C88: ILdRf var_8C
  loc_C15C8B: ImpAdCallI2 Mid$(, , )
  loc_C15C90: FStStrNoPop var_FC
  loc_C15C93: LitStr "00"
  loc_C15C96: EqStr
  loc_C15C98: AndI4
  loc_C15C99: LitVarI2 var_11C, 2
  loc_C15C9E: LitI4 4
  loc_C15CA3: ILdRf var_8C
  loc_C15CA6: ImpAdCallI2 Mid$(, , )
  loc_C15CAB: FStStrNoPop var_120
  loc_C15CAE: LitStr "00"
  loc_C15CB1: EqStr
  loc_C15CB3: AndI4
  loc_C15CB4: LitVarI2 var_140, 1
  loc_C15CB9: LitI4 3
  loc_C15CBE: ILdRf var_8C
  loc_C15CC1: ImpAdCallI2 Mid$(, , )
  loc_C15CC6: FStStrNoPop var_144
  loc_C15CC9: LitStr "0"
  loc_C15CCC: EqStr
  loc_C15CCE: AndI4
  loc_C15CCF: LitVarI2 var_164, 1
  loc_C15CD4: LitI4 1
  loc_C15CD9: ILdRf var_8C
  loc_C15CDC: ImpAdCallI2 Mid$(, , )
  loc_C15CE1: FStStrNoPop var_168
  loc_C15CE4: LitStr "0"
  loc_C15CE7: NeStr
  loc_C15CE9: AndI4
  loc_C15CEA: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C15CF9: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C15D08: BranchF loc_C15D14
  loc_C15D0B: LitStr vbNullString
  loc_C15D0E: FStStrCopy var_88
  loc_C15D11: Branch loc_C15DDC
  loc_C15D14: LitVarI2 var_B8, 1
  loc_C15D19: LitI4 1
  loc_C15D1E: ILdRf var_8C
  loc_C15D21: ImpAdCallI2 Mid$(, , )
  loc_C15D26: FStStrNoPop var_90
  loc_C15D29: LitStr "0"
  loc_C15D2C: NeStr
  loc_C15D2E: LitVarI2 var_D8, 2
  loc_C15D33: LitI4 8
  loc_C15D38: ILdRf var_8C
  loc_C15D3B: ImpAdCallI2 Mid$(, , )
  loc_C15D40: FStStrNoPop ValidaCodiCuco
  loc_C15D43: LitStr "00"
  loc_C15D46: EqStr
  loc_C15D48: AndI4
  loc_C15D49: LitVarI2 var_F8, 2
  loc_C15D4E: LitI4 6
  loc_C15D53: ILdRf var_8C
  loc_C15D56: ImpAdCallI2 Mid$(, , )
  loc_C15D5B: FStStrNoPop var_FC
  loc_C15D5E: LitStr "00"
  loc_C15D61: EqStr
  loc_C15D63: AndI4
  loc_C15D64: LitVarI2 var_11C, 2
  loc_C15D69: LitI4 4
  loc_C15D6E: ILdRf var_8C
  loc_C15D71: ImpAdCallI2 Mid$(, , )
  loc_C15D76: FStStrNoPop var_120
  loc_C15D79: LitStr "00"
  loc_C15D7C: EqStr
  loc_C15D7E: AndI4
  loc_C15D7F: LitVarI2 var_140, 1
  loc_C15D84: LitI4 3
  loc_C15D89: ILdRf var_8C
  loc_C15D8C: ImpAdCallI2 Mid$(, , )
  loc_C15D91: FStStrNoPop var_144
  loc_C15D94: LitStr "0"
  loc_C15D97: EqStr
  loc_C15D99: AndI4
  loc_C15D9A: LitVarI2 var_164, 1
  loc_C15D9F: LitI4 2
  loc_C15DA4: ILdRf var_8C
  loc_C15DA7: ImpAdCallI2 Mid$(, , )
  loc_C15DAC: FStStrNoPop var_168
  loc_C15DAF: LitStr "0"
  loc_C15DB2: EqStr
  loc_C15DB4: AndI4
  loc_C15DB5: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C15DC4: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C15DD3: BranchF loc_C15DDC
  loc_C15DD6: LitStr vbNullString
  loc_C15DD9: FStStrCopy var_88
  loc_C15DDC: Branch loc_C17AFC
  loc_C15DDF: ILdRf var_98
  loc_C15DE2: LitStr "Municipalidad de Tupungato"
  loc_C15DE5: EqStr
  loc_C15DE7: BranchF loc_C16632
  loc_C15DEA: LitVarI2 var_B8, 2
  loc_C15DEF: LitI4 &HB
  loc_C15DF4: ILdRf var_8C
  loc_C15DF7: ImpAdCallI2 Mid$(, , )
  loc_C15DFC: FStStrNoPop var_90
  loc_C15DFF: LitStr "00"
  loc_C15E02: NeStr
  loc_C15E04: LitVarI2 var_D8, 2
  loc_C15E09: LitI4 9
  loc_C15E0E: ILdRf var_8C
  loc_C15E11: ImpAdCallI2 Mid$(, , )
  loc_C15E16: FStStrNoPop ValidaCodiCuco
  loc_C15E19: LitStr "00"
  loc_C15E1C: NeStr
  loc_C15E1E: AndI4
  loc_C15E1F: LitVarI2 var_F8, 1
  loc_C15E24: LitI4 7
  loc_C15E29: ILdRf var_8C
  loc_C15E2C: ImpAdCallI2 Mid$(, , )
  loc_C15E31: FStStrNoPop var_FC
  loc_C15E34: LitStr "0"
  loc_C15E37: NeStr
  loc_C15E39: AndI4
  loc_C15E3A: LitVarI2 var_11C, 2
  loc_C15E3F: LitI4 6
  loc_C15E44: ILdRf var_8C
  loc_C15E47: ImpAdCallI2 Mid$(, , )
  loc_C15E4C: FStStrNoPop var_120
  loc_C15E4F: LitStr "00"
  loc_C15E52: NeStr
  loc_C15E54: AndI4
  loc_C15E55: LitVarI2 var_140, 2
  loc_C15E5A: LitI4 4
  loc_C15E5F: ILdRf var_8C
  loc_C15E62: ImpAdCallI2 Mid$(, , )
  loc_C15E67: FStStrNoPop var_144
  loc_C15E6A: LitStr "00"
  loc_C15E6D: NeStr
  loc_C15E6F: AndI4
  loc_C15E70: LitVarI2 var_164, 1
  loc_C15E75: LitI4 3
  loc_C15E7A: ILdRf var_8C
  loc_C15E7D: ImpAdCallI2 Mid$(, , )
  loc_C15E82: FStStrNoPop var_168
  loc_C15E85: LitStr "0"
  loc_C15E88: NeStr
  loc_C15E8A: AndI4
  loc_C15E8B: LitVarI2 var_188, 1
  loc_C15E90: LitI4 2
  loc_C15E95: ILdRf var_8C
  loc_C15E98: ImpAdCallI2 Mid$(, , )
  loc_C15E9D: FStStrNoPop var_18C
  loc_C15EA0: LitStr "0"
  loc_C15EA3: NeStr
  loc_C15EA5: AndI4
  loc_C15EA6: LitVarI2 var_1AC, 1
  loc_C15EAB: LitI4 1
  loc_C15EB0: ILdRf var_8C
  loc_C15EB3: ImpAdCallI2 Mid$(, , )
  loc_C15EB8: FStStrNoPop var_1B0
  loc_C15EBB: LitStr "0"
  loc_C15EBE: NeStr
  loc_C15EC0: AndI4
  loc_C15EC1: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = "": var_18C = ""
  loc_C15ED4: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = "": var_188 = ""
  loc_C15EE7: BranchF loc_C15EF3
  loc_C15EEA: LitStr vbNullString
  loc_C15EED: FStStrCopy var_88
  loc_C15EF0: Branch loc_C1662F
  loc_C15EF3: LitVarI2 var_B8, 2
  loc_C15EF8: LitI4 &HB
  loc_C15EFD: ILdRf var_8C
  loc_C15F00: ImpAdCallI2 Mid$(, , )
  loc_C15F05: FStStrNoPop var_90
  loc_C15F08: LitStr "00"
  loc_C15F0B: EqStr
  loc_C15F0D: LitVarI2 var_D8, 2
  loc_C15F12: LitI4 9
  loc_C15F17: ILdRf var_8C
  loc_C15F1A: ImpAdCallI2 Mid$(, , )
  loc_C15F1F: FStStrNoPop ValidaCodiCuco
  loc_C15F22: LitStr "00"
  loc_C15F25: NeStr
  loc_C15F27: AndI4
  loc_C15F28: LitVarI2 var_F8, 1
  loc_C15F2D: LitI4 7
  loc_C15F32: ILdRf var_8C
  loc_C15F35: ImpAdCallI2 Mid$(, , )
  loc_C15F3A: FStStrNoPop var_FC
  loc_C15F3D: LitStr "0"
  loc_C15F40: NeStr
  loc_C15F42: AndI4
  loc_C15F43: LitVarI2 var_11C, 2
  loc_C15F48: LitI4 6
  loc_C15F4D: ILdRf var_8C
  loc_C15F50: ImpAdCallI2 Mid$(, , )
  loc_C15F55: FStStrNoPop var_120
  loc_C15F58: LitStr "00"
  loc_C15F5B: NeStr
  loc_C15F5D: AndI4
  loc_C15F5E: LitVarI2 var_140, 2
  loc_C15F63: LitI4 4
  loc_C15F68: ILdRf var_8C
  loc_C15F6B: ImpAdCallI2 Mid$(, , )
  loc_C15F70: FStStrNoPop var_144
  loc_C15F73: LitStr "00"
  loc_C15F76: NeStr
  loc_C15F78: AndI4
  loc_C15F79: LitVarI2 var_164, 1
  loc_C15F7E: LitI4 3
  loc_C15F83: ILdRf var_8C
  loc_C15F86: ImpAdCallI2 Mid$(, , )
  loc_C15F8B: FStStrNoPop var_168
  loc_C15F8E: LitStr "0"
  loc_C15F91: NeStr
  loc_C15F93: AndI4
  loc_C15F94: LitVarI2 var_188, 1
  loc_C15F99: LitI4 2
  loc_C15F9E: ILdRf var_8C
  loc_C15FA1: ImpAdCallI2 Mid$(, , )
  loc_C15FA6: FStStrNoPop var_18C
  loc_C15FA9: LitStr "0"
  loc_C15FAC: NeStr
  loc_C15FAE: AndI4
  loc_C15FAF: LitVarI2 var_1AC, 1
  loc_C15FB4: LitI4 1
  loc_C15FB9: ILdRf var_8C
  loc_C15FBC: ImpAdCallI2 Mid$(, , )
  loc_C15FC1: FStStrNoPop var_1B0
  loc_C15FC4: LitStr "0"
  loc_C15FC7: NeStr
  loc_C15FC9: AndI4
  loc_C15FCA: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = "": var_18C = ""
  loc_C15FDD: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = "": var_188 = ""
  loc_C15FF0: BranchF loc_C15FFC
  loc_C15FF3: LitStr vbNullString
  loc_C15FF6: FStStrCopy var_88
  loc_C15FF9: Branch loc_C1662F
  loc_C15FFC: LitVarI2 var_B8, 2
  loc_C16001: LitI4 &HB
  loc_C16006: ILdRf var_8C
  loc_C16009: ImpAdCallI2 Mid$(, , )
  loc_C1600E: FStStrNoPop var_90
  loc_C16011: LitStr "00"
  loc_C16014: EqStr
  loc_C16016: LitVarI2 var_D8, 2
  loc_C1601B: LitI4 9
  loc_C16020: ILdRf var_8C
  loc_C16023: ImpAdCallI2 Mid$(, , )
  loc_C16028: FStStrNoPop ValidaCodiCuco
  loc_C1602B: LitStr "00"
  loc_C1602E: EqStr
  loc_C16030: AndI4
  loc_C16031: LitVarI2 var_F8, 1
  loc_C16036: LitI4 7
  loc_C1603B: ILdRf var_8C
  loc_C1603E: ImpAdCallI2 Mid$(, , )
  loc_C16043: FStStrNoPop var_FC
  loc_C16046: LitStr "0"
  loc_C16049: NeStr
  loc_C1604B: AndI4
  loc_C1604C: LitVarI2 var_11C, 2
  loc_C16051: LitI4 6
  loc_C16056: ILdRf var_8C
  loc_C16059: ImpAdCallI2 Mid$(, , )
  loc_C1605E: FStStrNoPop var_120
  loc_C16061: LitStr "00"
  loc_C16064: NeStr
  loc_C16066: AndI4
  loc_C16067: LitVarI2 var_140, 2
  loc_C1606C: LitI4 4
  loc_C16071: ILdRf var_8C
  loc_C16074: ImpAdCallI2 Mid$(, , )
  loc_C16079: FStStrNoPop var_144
  loc_C1607C: LitStr "00"
  loc_C1607F: NeStr
  loc_C16081: AndI4
  loc_C16082: LitVarI2 var_164, 1
  loc_C16087: LitI4 3
  loc_C1608C: ILdRf var_8C
  loc_C1608F: ImpAdCallI2 Mid$(, , )
  loc_C16094: FStStrNoPop var_168
  loc_C16097: LitStr "0"
  loc_C1609A: NeStr
  loc_C1609C: AndI4
  loc_C1609D: LitVarI2 var_188, 1
  loc_C160A2: LitI4 2
  loc_C160A7: ILdRf var_8C
  loc_C160AA: ImpAdCallI2 Mid$(, , )
  loc_C160AF: FStStrNoPop var_18C
  loc_C160B2: LitStr "0"
  loc_C160B5: NeStr
  loc_C160B7: AndI4
  loc_C160B8: LitVarI2 var_1AC, 1
  loc_C160BD: LitI4 1
  loc_C160C2: ILdRf var_8C
  loc_C160C5: ImpAdCallI2 Mid$(, , )
  loc_C160CA: FStStrNoPop var_1B0
  loc_C160CD: LitStr "0"
  loc_C160D0: NeStr
  loc_C160D2: AndI4
  loc_C160D3: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = "": var_18C = ""
  loc_C160E6: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = "": var_188 = ""
  loc_C160F9: BranchF loc_C16105
  loc_C160FC: LitStr vbNullString
  loc_C160FF: FStStrCopy var_88
  loc_C16102: Branch loc_C1662F
  loc_C16105: LitVarI2 var_B8, 2
  loc_C1610A: LitI4 &HB
  loc_C1610F: ILdRf var_8C
  loc_C16112: ImpAdCallI2 Mid$(, , )
  loc_C16117: FStStrNoPop var_90
  loc_C1611A: LitStr "00"
  loc_C1611D: EqStr
  loc_C1611F: LitVarI2 var_D8, 2
  loc_C16124: LitI4 9
  loc_C16129: ILdRf var_8C
  loc_C1612C: ImpAdCallI2 Mid$(, , )
  loc_C16131: FStStrNoPop ValidaCodiCuco
  loc_C16134: LitStr "00"
  loc_C16137: EqStr
  loc_C16139: AndI4
  loc_C1613A: LitVarI2 var_F8, 1
  loc_C1613F: LitI4 7
  loc_C16144: ILdRf var_8C
  loc_C16147: ImpAdCallI2 Mid$(, , )
  loc_C1614C: FStStrNoPop var_FC
  loc_C1614F: LitStr "0"
  loc_C16152: EqStr
  loc_C16154: AndI4
  loc_C16155: LitVarI2 var_11C, 2
  loc_C1615A: LitI4 6
  loc_C1615F: ILdRf var_8C
  loc_C16162: ImpAdCallI2 Mid$(, , )
  loc_C16167: FStStrNoPop var_120
  loc_C1616A: LitStr "00"
  loc_C1616D: NeStr
  loc_C1616F: AndI4
  loc_C16170: LitVarI2 var_140, 2
  loc_C16175: LitI4 4
  loc_C1617A: ILdRf var_8C
  loc_C1617D: ImpAdCallI2 Mid$(, , )
  loc_C16182: FStStrNoPop var_144
  loc_C16185: LitStr "00"
  loc_C16188: NeStr
  loc_C1618A: AndI4
  loc_C1618B: LitVarI2 var_164, 1
  loc_C16190: LitI4 3
  loc_C16195: ILdRf var_8C
  loc_C16198: ImpAdCallI2 Mid$(, , )
  loc_C1619D: FStStrNoPop var_168
  loc_C161A0: LitStr "0"
  loc_C161A3: NeStr
  loc_C161A5: AndI4
  loc_C161A6: LitVarI2 var_188, 1
  loc_C161AB: LitI4 2
  loc_C161B0: ILdRf var_8C
  loc_C161B3: ImpAdCallI2 Mid$(, , )
  loc_C161B8: FStStrNoPop var_18C
  loc_C161BB: LitStr "0"
  loc_C161BE: NeStr
  loc_C161C0: AndI4
  loc_C161C1: LitVarI2 var_1AC, 1
  loc_C161C6: LitI4 1
  loc_C161CB: ILdRf var_8C
  loc_C161CE: ImpAdCallI2 Mid$(, , )
  loc_C161D3: FStStrNoPop var_1B0
  loc_C161D6: LitStr "0"
  loc_C161D9: NeStr
  loc_C161DB: AndI4
  loc_C161DC: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = "": var_18C = ""
  loc_C161EF: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = "": var_188 = ""
  loc_C16202: BranchF loc_C1620E
  loc_C16205: LitStr vbNullString
  loc_C16208: FStStrCopy var_88
  loc_C1620B: Branch loc_C1662F
  loc_C1620E: LitVarI2 var_B8, 2
  loc_C16213: LitI4 &HB
  loc_C16218: ILdRf var_8C
  loc_C1621B: ImpAdCallI2 Mid$(, , )
  loc_C16220: FStStrNoPop var_90
  loc_C16223: LitStr "00"
  loc_C16226: EqStr
  loc_C16228: LitVarI2 var_D8, 2
  loc_C1622D: LitI4 9
  loc_C16232: ILdRf var_8C
  loc_C16235: ImpAdCallI2 Mid$(, , )
  loc_C1623A: FStStrNoPop ValidaCodiCuco
  loc_C1623D: LitStr "00"
  loc_C16240: EqStr
  loc_C16242: AndI4
  loc_C16243: LitVarI2 var_F8, 1
  loc_C16248: LitI4 7
  loc_C1624D: ILdRf var_8C
  loc_C16250: ImpAdCallI2 Mid$(, , )
  loc_C16255: FStStrNoPop var_FC
  loc_C16258: LitStr "0"
  loc_C1625B: EqStr
  loc_C1625D: AndI4
  loc_C1625E: LitVarI2 var_11C, 2
  loc_C16263: LitI4 6
  loc_C16268: ILdRf var_8C
  loc_C1626B: ImpAdCallI2 Mid$(, , )
  loc_C16270: FStStrNoPop var_120
  loc_C16273: LitStr "00"
  loc_C16276: EqStr
  loc_C16278: AndI4
  loc_C16279: LitVarI2 var_140, 2
  loc_C1627E: LitI4 4
  loc_C16283: ILdRf var_8C
  loc_C16286: ImpAdCallI2 Mid$(, , )
  loc_C1628B: FStStrNoPop var_144
  loc_C1628E: LitStr "00"
  loc_C16291: NeStr
  loc_C16293: AndI4
  loc_C16294: LitVarI2 var_164, 1
  loc_C16299: LitI4 3
  loc_C1629E: ILdRf var_8C
  loc_C162A1: ImpAdCallI2 Mid$(, , )
  loc_C162A6: FStStrNoPop var_168
  loc_C162A9: LitStr "0"
  loc_C162AC: NeStr
  loc_C162AE: AndI4
  loc_C162AF: LitVarI2 var_188, 1
  loc_C162B4: LitI4 2
  loc_C162B9: ILdRf var_8C
  loc_C162BC: ImpAdCallI2 Mid$(, , )
  loc_C162C1: FStStrNoPop var_18C
  loc_C162C4: LitStr "0"
  loc_C162C7: NeStr
  loc_C162C9: AndI4
  loc_C162CA: LitVarI2 var_1AC, 1
  loc_C162CF: LitI4 1
  loc_C162D4: ILdRf var_8C
  loc_C162D7: ImpAdCallI2 Mid$(, , )
  loc_C162DC: FStStrNoPop var_1B0
  loc_C162DF: LitStr "0"
  loc_C162E2: NeStr
  loc_C162E4: AndI4
  loc_C162E5: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = "": var_18C = ""
  loc_C162F8: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = "": var_188 = ""
  loc_C1630B: BranchF loc_C16317
  loc_C1630E: LitStr vbNullString
  loc_C16311: FStStrCopy var_88
  loc_C16314: Branch loc_C1662F
  loc_C16317: LitVarI2 var_B8, 2
  loc_C1631C: LitI4 &HB
  loc_C16321: ILdRf var_8C
  loc_C16324: ImpAdCallI2 Mid$(, , )
  loc_C16329: FStStrNoPop var_90
  loc_C1632C: LitStr "00"
  loc_C1632F: EqStr
  loc_C16331: LitVarI2 var_D8, 2
  loc_C16336: LitI4 9
  loc_C1633B: ILdRf var_8C
  loc_C1633E: ImpAdCallI2 Mid$(, , )
  loc_C16343: FStStrNoPop ValidaCodiCuco
  loc_C16346: LitStr "00"
  loc_C16349: EqStr
  loc_C1634B: AndI4
  loc_C1634C: LitVarI2 var_F8, 1
  loc_C16351: LitI4 7
  loc_C16356: ILdRf var_8C
  loc_C16359: ImpAdCallI2 Mid$(, , )
  loc_C1635E: FStStrNoPop var_FC
  loc_C16361: LitStr "0"
  loc_C16364: EqStr
  loc_C16366: AndI4
  loc_C16367: LitVarI2 var_11C, 2
  loc_C1636C: LitI4 6
  loc_C16371: ILdRf var_8C
  loc_C16374: ImpAdCallI2 Mid$(, , )
  loc_C16379: FStStrNoPop var_120
  loc_C1637C: LitStr "00"
  loc_C1637F: EqStr
  loc_C16381: AndI4
  loc_C16382: LitVarI2 var_140, 2
  loc_C16387: LitI4 4
  loc_C1638C: ILdRf var_8C
  loc_C1638F: ImpAdCallI2 Mid$(, , )
  loc_C16394: FStStrNoPop var_144
  loc_C16397: LitStr "00"
  loc_C1639A: EqStr
  loc_C1639C: AndI4
  loc_C1639D: LitVarI2 var_164, 1
  loc_C163A2: LitI4 3
  loc_C163A7: ILdRf var_8C
  loc_C163AA: ImpAdCallI2 Mid$(, , )
  loc_C163AF: FStStrNoPop var_168
  loc_C163B2: LitStr "0"
  loc_C163B5: NeStr
  loc_C163B7: AndI4
  loc_C163B8: LitVarI2 var_188, 1
  loc_C163BD: LitI4 2
  loc_C163C2: ILdRf var_8C
  loc_C163C5: ImpAdCallI2 Mid$(, , )
  loc_C163CA: FStStrNoPop var_18C
  loc_C163CD: LitStr "0"
  loc_C163D0: NeStr
  loc_C163D2: AndI4
  loc_C163D3: LitVarI2 var_1AC, 1
  loc_C163D8: LitI4 1
  loc_C163DD: ILdRf var_8C
  loc_C163E0: ImpAdCallI2 Mid$(, , )
  loc_C163E5: FStStrNoPop var_1B0
  loc_C163E8: LitStr "0"
  loc_C163EB: NeStr
  loc_C163ED: AndI4
  loc_C163EE: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = "": var_18C = ""
  loc_C16401: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = "": var_188 = ""
  loc_C16414: BranchF loc_C16420
  loc_C16417: LitStr vbNullString
  loc_C1641A: FStStrCopy var_88
  loc_C1641D: Branch loc_C1662F
  loc_C16420: LitVarI2 var_B8, 2
  loc_C16425: LitI4 &HB
  loc_C1642A: ILdRf var_8C
  loc_C1642D: ImpAdCallI2 Mid$(, , )
  loc_C16432: FStStrNoPop var_90
  loc_C16435: LitStr "00"
  loc_C16438: EqStr
  loc_C1643A: LitVarI2 var_D8, 2
  loc_C1643F: LitI4 9
  loc_C16444: ILdRf var_8C
  loc_C16447: ImpAdCallI2 Mid$(, , )
  loc_C1644C: FStStrNoPop ValidaCodiCuco
  loc_C1644F: LitStr "00"
  loc_C16452: EqStr
  loc_C16454: AndI4
  loc_C16455: LitVarI2 var_F8, 1
  loc_C1645A: LitI4 7
  loc_C1645F: ILdRf var_8C
  loc_C16462: ImpAdCallI2 Mid$(, , )
  loc_C16467: FStStrNoPop var_FC
  loc_C1646A: LitStr "0"
  loc_C1646D: EqStr
  loc_C1646F: AndI4
  loc_C16470: LitVarI2 var_11C, 2
  loc_C16475: LitI4 6
  loc_C1647A: ILdRf var_8C
  loc_C1647D: ImpAdCallI2 Mid$(, , )
  loc_C16482: FStStrNoPop var_120
  loc_C16485: LitStr "00"
  loc_C16488: EqStr
  loc_C1648A: AndI4
  loc_C1648B: LitVarI2 var_140, 2
  loc_C16490: LitI4 4
  loc_C16495: ILdRf var_8C
  loc_C16498: ImpAdCallI2 Mid$(, , )
  loc_C1649D: FStStrNoPop var_144
  loc_C164A0: LitStr "00"
  loc_C164A3: EqStr
  loc_C164A5: AndI4
  loc_C164A6: LitVarI2 var_164, 1
  loc_C164AB: LitI4 3
  loc_C164B0: ILdRf var_8C
  loc_C164B3: ImpAdCallI2 Mid$(, , )
  loc_C164B8: FStStrNoPop var_168
  loc_C164BB: LitStr "0"
  loc_C164BE: EqStr
  loc_C164C0: AndI4
  loc_C164C1: LitVarI2 var_188, 1
  loc_C164C6: LitI4 2
  loc_C164CB: ILdRf var_8C
  loc_C164CE: ImpAdCallI2 Mid$(, , )
  loc_C164D3: FStStrNoPop var_18C
  loc_C164D6: LitStr "0"
  loc_C164D9: NeStr
  loc_C164DB: AndI4
  loc_C164DC: LitVarI2 var_1AC, 1
  loc_C164E1: LitI4 1
  loc_C164E6: ILdRf var_8C
  loc_C164E9: ImpAdCallI2 Mid$(, , )
  loc_C164EE: FStStrNoPop var_1B0
  loc_C164F1: LitStr "0"
  loc_C164F4: NeStr
  loc_C164F6: AndI4
  loc_C164F7: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = "": var_18C = ""
  loc_C1650A: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = "": var_188 = ""
  loc_C1651D: BranchF loc_C16529
  loc_C16520: LitStr vbNullString
  loc_C16523: FStStrCopy var_88
  loc_C16526: Branch loc_C1662F
  loc_C16529: LitVarI2 var_B8, 2
  loc_C1652E: LitI4 &HB
  loc_C16533: ILdRf var_8C
  loc_C16536: ImpAdCallI2 Mid$(, , )
  loc_C1653B: FStStrNoPop var_90
  loc_C1653E: LitStr "00"
  loc_C16541: EqStr
  loc_C16543: LitVarI2 var_D8, 2
  loc_C16548: LitI4 9
  loc_C1654D: ILdRf var_8C
  loc_C16550: ImpAdCallI2 Mid$(, , )
  loc_C16555: FStStrNoPop ValidaCodiCuco
  loc_C16558: LitStr "00"
  loc_C1655B: EqStr
  loc_C1655D: AndI4
  loc_C1655E: LitVarI2 var_F8, 1
  loc_C16563: LitI4 7
  loc_C16568: ILdRf var_8C
  loc_C1656B: ImpAdCallI2 Mid$(, , )
  loc_C16570: FStStrNoPop var_FC
  loc_C16573: LitStr "0"
  loc_C16576: EqStr
  loc_C16578: AndI4
  loc_C16579: LitVarI2 var_11C, 2
  loc_C1657E: LitI4 6
  loc_C16583: ILdRf var_8C
  loc_C16586: ImpAdCallI2 Mid$(, , )
  loc_C1658B: FStStrNoPop var_120
  loc_C1658E: LitStr "00"
  loc_C16591: EqStr
  loc_C16593: AndI4
  loc_C16594: LitVarI2 var_140, 2
  loc_C16599: LitI4 4
  loc_C1659E: ILdRf var_8C
  loc_C165A1: ImpAdCallI2 Mid$(, , )
  loc_C165A6: FStStrNoPop var_144
  loc_C165A9: LitStr "00"
  loc_C165AC: EqStr
  loc_C165AE: AndI4
  loc_C165AF: LitVarI2 var_164, 1
  loc_C165B4: LitI4 3
  loc_C165B9: ILdRf var_8C
  loc_C165BC: ImpAdCallI2 Mid$(, , )
  loc_C165C1: FStStrNoPop var_168
  loc_C165C4: LitStr "0"
  loc_C165C7: EqStr
  loc_C165C9: AndI4
  loc_C165CA: LitVarI2 var_188, 1
  loc_C165CF: LitI4 2
  loc_C165D4: ILdRf var_8C
  loc_C165D7: ImpAdCallI2 Mid$(, , )
  loc_C165DC: FStStrNoPop var_18C
  loc_C165DF: LitStr "0"
  loc_C165E2: EqStr
  loc_C165E4: AndI4
  loc_C165E5: LitVarI2 var_1AC, 1
  loc_C165EA: LitI4 1
  loc_C165EF: ILdRf var_8C
  loc_C165F2: ImpAdCallI2 Mid$(, , )
  loc_C165F7: FStStrNoPop var_1B0
  loc_C165FA: LitStr "0"
  loc_C165FD: NeStr
  loc_C165FF: AndI4
  loc_C16600: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = "": var_18C = ""
  loc_C16613: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = "": var_188 = ""
  loc_C16626: BranchF loc_C1662F
  loc_C16629: LitStr vbNullString
  loc_C1662C: FStStrCopy var_88
  loc_C1662F: Branch loc_C17AFC
  loc_C16632: ILdRf var_98
  loc_C16635: LitStr "Municipalidad de Guaymallén"
  loc_C16638: EqStr
  loc_C1663A: BranchF loc_C16AFF
  loc_C1663D: LitVarI2 var_B8, 2
  loc_C16642: LitI4 9
  loc_C16647: ILdRf var_8C
  loc_C1664A: ImpAdCallI2 Mid$(, , )
  loc_C1664F: FStStrNoPop var_90
  loc_C16652: LitStr "00"
  loc_C16655: NeStr
  loc_C16657: LitVarI2 var_D8, 2
  loc_C1665C: LitI4 7
  loc_C16661: ILdRf var_8C
  loc_C16664: ImpAdCallI2 Mid$(, , )
  loc_C16669: FStStrNoPop ValidaCodiCuco
  loc_C1666C: LitStr "00"
  loc_C1666F: NeStr
  loc_C16671: AndI4
  loc_C16672: LitVarI2 var_F8, 2
  loc_C16677: LitI4 5
  loc_C1667C: ILdRf var_8C
  loc_C1667F: ImpAdCallI2 Mid$(, , )
  loc_C16684: FStStrNoPop var_FC
  loc_C16687: LitStr "00"
  loc_C1668A: NeStr
  loc_C1668C: AndI4
  loc_C1668D: LitVarI2 var_11C, 2
  loc_C16692: LitI4 3
  loc_C16697: ILdRf var_8C
  loc_C1669A: ImpAdCallI2 Mid$(, , )
  loc_C1669F: FStStrNoPop var_120
  loc_C166A2: LitStr "00"
  loc_C166A5: NeStr
  loc_C166A7: AndI4
  loc_C166A8: LitVarI2 var_140, 1
  loc_C166AD: LitI4 2
  loc_C166B2: ILdRf var_8C
  loc_C166B5: ImpAdCallI2 Mid$(, , )
  loc_C166BA: FStStrNoPop var_144
  loc_C166BD: LitStr "0"
  loc_C166C0: NeStr
  loc_C166C2: AndI4
  loc_C166C3: LitVarI2 var_164, 1
  loc_C166C8: LitI4 1
  loc_C166CD: ILdRf var_8C
  loc_C166D0: ImpAdCallI2 Mid$(, , )
  loc_C166D5: FStStrNoPop var_168
  loc_C166D8: LitStr "0"
  loc_C166DB: NeStr
  loc_C166DD: AndI4
  loc_C166DE: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C166ED: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C166FC: BranchF loc_C16708
  loc_C166FF: LitStr vbNullString
  loc_C16702: FStStrCopy var_88
  loc_C16705: Branch loc_C16AFC
  loc_C16708: LitVarI2 var_B8, 2
  loc_C1670D: LitI4 7
  loc_C16712: ILdRf var_8C
  loc_C16715: ImpAdCallI2 Mid$(, , )
  loc_C1671A: FStStrNoPop var_90
  loc_C1671D: LitStr "00"
  loc_C16720: NeStr
  loc_C16722: LitVarI2 var_D8, 2
  loc_C16727: LitI4 9
  loc_C1672C: ILdRf var_8C
  loc_C1672F: ImpAdCallI2 Mid$(, , )
  loc_C16734: FStStrNoPop ValidaCodiCuco
  loc_C16737: LitStr "00"
  loc_C1673A: EqStr
  loc_C1673C: AndI4
  loc_C1673D: LitVarI2 var_F8, 2
  loc_C16742: LitI4 5
  loc_C16747: ILdRf var_8C
  loc_C1674A: ImpAdCallI2 Mid$(, , )
  loc_C1674F: FStStrNoPop var_FC
  loc_C16752: LitStr "00"
  loc_C16755: NeStr
  loc_C16757: AndI4
  loc_C16758: LitVarI2 var_11C, 2
  loc_C1675D: LitI4 3
  loc_C16762: ILdRf var_8C
  loc_C16765: ImpAdCallI2 Mid$(, , )
  loc_C1676A: FStStrNoPop var_120
  loc_C1676D: LitStr "00"
  loc_C16770: NeStr
  loc_C16772: AndI4
  loc_C16773: LitVarI2 var_140, 1
  loc_C16778: LitI4 2
  loc_C1677D: ILdRf var_8C
  loc_C16780: ImpAdCallI2 Mid$(, , )
  loc_C16785: FStStrNoPop var_144
  loc_C16788: LitStr "0"
  loc_C1678B: NeStr
  loc_C1678D: AndI4
  loc_C1678E: LitVarI2 var_164, 1
  loc_C16793: LitI4 1
  loc_C16798: ILdRf var_8C
  loc_C1679B: ImpAdCallI2 Mid$(, , )
  loc_C167A0: FStStrNoPop var_168
  loc_C167A3: LitStr "0"
  loc_C167A6: NeStr
  loc_C167A8: AndI4
  loc_C167A9: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C167B8: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C167C7: BranchF loc_C167D3
  loc_C167CA: LitStr vbNullString
  loc_C167CD: FStStrCopy var_88
  loc_C167D0: Branch loc_C16AFC
  loc_C167D3: LitVarI2 var_B8, 2
  loc_C167D8: LitI4 5
  loc_C167DD: ILdRf var_8C
  loc_C167E0: ImpAdCallI2 Mid$(, , )
  loc_C167E5: FStStrNoPop var_90
  loc_C167E8: LitStr "00"
  loc_C167EB: NeStr
  loc_C167ED: LitVarI2 var_D8, 2
  loc_C167F2: LitI4 9
  loc_C167F7: ILdRf var_8C
  loc_C167FA: ImpAdCallI2 Mid$(, , )
  loc_C167FF: FStStrNoPop ValidaCodiCuco
  loc_C16802: LitStr "00"
  loc_C16805: EqStr
  loc_C16807: AndI4
  loc_C16808: LitVarI2 var_F8, 2
  loc_C1680D: LitI4 7
  loc_C16812: ILdRf var_8C
  loc_C16815: ImpAdCallI2 Mid$(, , )
  loc_C1681A: FStStrNoPop var_FC
  loc_C1681D: LitStr "00"
  loc_C16820: EqStr
  loc_C16822: AndI4
  loc_C16823: LitVarI2 var_11C, 2
  loc_C16828: LitI4 3
  loc_C1682D: ILdRf var_8C
  loc_C16830: ImpAdCallI2 Mid$(, , )
  loc_C16835: FStStrNoPop var_120
  loc_C16838: LitStr "00"
  loc_C1683B: NeStr
  loc_C1683D: AndI4
  loc_C1683E: LitVarI2 var_140, 1
  loc_C16843: LitI4 2
  loc_C16848: ILdRf var_8C
  loc_C1684B: ImpAdCallI2 Mid$(, , )
  loc_C16850: FStStrNoPop var_144
  loc_C16853: LitStr "0"
  loc_C16856: NeStr
  loc_C16858: AndI4
  loc_C16859: LitVarI2 var_164, 1
  loc_C1685E: LitI4 1
  loc_C16863: ILdRf var_8C
  loc_C16866: ImpAdCallI2 Mid$(, , )
  loc_C1686B: FStStrNoPop var_168
  loc_C1686E: LitStr "0"
  loc_C16871: NeStr
  loc_C16873: AndI4
  loc_C16874: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C16883: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C16892: BranchF loc_C1689E
  loc_C16895: LitStr vbNullString
  loc_C16898: FStStrCopy var_88
  loc_C1689B: Branch loc_C16AFC
  loc_C1689E: LitVarI2 var_B8, 2
  loc_C168A3: LitI4 3
  loc_C168A8: ILdRf var_8C
  loc_C168AB: ImpAdCallI2 Mid$(, , )
  loc_C168B0: FStStrNoPop var_90
  loc_C168B3: LitStr "00"
  loc_C168B6: NeStr
  loc_C168B8: LitVarI2 var_D8, 2
  loc_C168BD: LitI4 9
  loc_C168C2: ILdRf var_8C
  loc_C168C5: ImpAdCallI2 Mid$(, , )
  loc_C168CA: FStStrNoPop ValidaCodiCuco
  loc_C168CD: LitStr "00"
  loc_C168D0: EqStr
  loc_C168D2: AndI4
  loc_C168D3: LitVarI2 var_F8, 2
  loc_C168D8: LitI4 7
  loc_C168DD: ILdRf var_8C
  loc_C168E0: ImpAdCallI2 Mid$(, , )
  loc_C168E5: FStStrNoPop var_FC
  loc_C168E8: LitStr "00"
  loc_C168EB: EqStr
  loc_C168ED: AndI4
  loc_C168EE: LitVarI2 var_11C, 2
  loc_C168F3: LitI4 5
  loc_C168F8: ILdRf var_8C
  loc_C168FB: ImpAdCallI2 Mid$(, , )
  loc_C16900: FStStrNoPop var_120
  loc_C16903: LitStr "00"
  loc_C16906: EqStr
  loc_C16908: AndI4
  loc_C16909: LitVarI2 var_140, 1
  loc_C1690E: LitI4 2
  loc_C16913: ILdRf var_8C
  loc_C16916: ImpAdCallI2 Mid$(, , )
  loc_C1691B: FStStrNoPop var_144
  loc_C1691E: LitStr "0"
  loc_C16921: NeStr
  loc_C16923: AndI4
  loc_C16924: LitVarI2 var_164, 1
  loc_C16929: LitI4 1
  loc_C1692E: ILdRf var_8C
  loc_C16931: ImpAdCallI2 Mid$(, , )
  loc_C16936: FStStrNoPop var_168
  loc_C16939: LitStr "0"
  loc_C1693C: NeStr
  loc_C1693E: AndI4
  loc_C1693F: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C1694E: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C1695D: BranchF loc_C16969
  loc_C16960: LitStr vbNullString
  loc_C16963: FStStrCopy var_88
  loc_C16966: Branch loc_C16AFC
  loc_C16969: LitVarI2 var_B8, 1
  loc_C1696E: LitI4 2
  loc_C16973: ILdRf var_8C
  loc_C16976: ImpAdCallI2 Mid$(, , )
  loc_C1697B: FStStrNoPop var_90
  loc_C1697E: LitStr "0"
  loc_C16981: NeStr
  loc_C16983: LitVarI2 var_D8, 2
  loc_C16988: LitI4 9
  loc_C1698D: ILdRf var_8C
  loc_C16990: ImpAdCallI2 Mid$(, , )
  loc_C16995: FStStrNoPop ValidaCodiCuco
  loc_C16998: LitStr "00"
  loc_C1699B: EqStr
  loc_C1699D: AndI4
  loc_C1699E: LitVarI2 var_F8, 2
  loc_C169A3: LitI4 7
  loc_C169A8: ILdRf var_8C
  loc_C169AB: ImpAdCallI2 Mid$(, , )
  loc_C169B0: FStStrNoPop var_FC
  loc_C169B3: LitStr "00"
  loc_C169B6: EqStr
  loc_C169B8: AndI4
  loc_C169B9: LitVarI2 var_11C, 2
  loc_C169BE: LitI4 5
  loc_C169C3: ILdRf var_8C
  loc_C169C6: ImpAdCallI2 Mid$(, , )
  loc_C169CB: FStStrNoPop var_120
  loc_C169CE: LitStr "00"
  loc_C169D1: EqStr
  loc_C169D3: AndI4
  loc_C169D4: LitVarI2 var_140, 2
  loc_C169D9: LitI4 3
  loc_C169DE: ILdRf var_8C
  loc_C169E1: ImpAdCallI2 Mid$(, , )
  loc_C169E6: FStStrNoPop var_144
  loc_C169E9: LitStr "00"
  loc_C169EC: EqStr
  loc_C169EE: AndI4
  loc_C169EF: LitVarI2 var_164, 1
  loc_C169F4: LitI4 1
  loc_C169F9: ILdRf var_8C
  loc_C169FC: ImpAdCallI2 Mid$(, , )
  loc_C16A01: FStStrNoPop var_168
  loc_C16A04: LitStr "0"
  loc_C16A07: NeStr
  loc_C16A09: AndI4
  loc_C16A0A: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C16A19: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C16A28: BranchF loc_C16A34
  loc_C16A2B: LitStr vbNullString
  loc_C16A2E: FStStrCopy var_88
  loc_C16A31: Branch loc_C16AFC
  loc_C16A34: LitVarI2 var_B8, 1
  loc_C16A39: LitI4 1
  loc_C16A3E: ILdRf var_8C
  loc_C16A41: ImpAdCallI2 Mid$(, , )
  loc_C16A46: FStStrNoPop var_90
  loc_C16A49: LitStr "0"
  loc_C16A4C: NeStr
  loc_C16A4E: LitVarI2 var_D8, 2
  loc_C16A53: LitI4 9
  loc_C16A58: ILdRf var_8C
  loc_C16A5B: ImpAdCallI2 Mid$(, , )
  loc_C16A60: FStStrNoPop ValidaCodiCuco
  loc_C16A63: LitStr "00"
  loc_C16A66: EqStr
  loc_C16A68: AndI4
  loc_C16A69: LitVarI2 var_F8, 2
  loc_C16A6E: LitI4 7
  loc_C16A73: ILdRf var_8C
  loc_C16A76: ImpAdCallI2 Mid$(, , )
  loc_C16A7B: FStStrNoPop var_FC
  loc_C16A7E: LitStr "00"
  loc_C16A81: EqStr
  loc_C16A83: AndI4
  loc_C16A84: LitVarI2 var_11C, 2
  loc_C16A89: LitI4 5
  loc_C16A8E: ILdRf var_8C
  loc_C16A91: ImpAdCallI2 Mid$(, , )
  loc_C16A96: FStStrNoPop var_120
  loc_C16A99: LitStr "00"
  loc_C16A9C: EqStr
  loc_C16A9E: AndI4
  loc_C16A9F: LitVarI2 var_140, 2
  loc_C16AA4: LitI4 3
  loc_C16AA9: ILdRf var_8C
  loc_C16AAC: ImpAdCallI2 Mid$(, , )
  loc_C16AB1: FStStrNoPop var_144
  loc_C16AB4: LitStr "00"
  loc_C16AB7: EqStr
  loc_C16AB9: AndI4
  loc_C16ABA: LitVarI2 var_164, 1
  loc_C16ABF: LitI4 2
  loc_C16AC4: ILdRf var_8C
  loc_C16AC7: ImpAdCallI2 Mid$(, , )
  loc_C16ACC: FStStrNoPop var_168
  loc_C16ACF: LitStr "0"
  loc_C16AD2: EqStr
  loc_C16AD4: AndI4
  loc_C16AD5: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C16AE4: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C16AF3: BranchF loc_C16AFC
  loc_C16AF6: LitStr vbNullString
  loc_C16AF9: FStStrCopy var_88
  loc_C16AFC: Branch loc_C17AFC
  loc_C16AFF: ILdRf var_98
  loc_C16B02: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_C16B05: EqStr
  loc_C16B07: BranchF loc_C16FCC
  loc_C16B0A: LitVarI2 var_B8, 2
  loc_C16B0F: LitI4 9
  loc_C16B14: ILdRf var_8C
  loc_C16B17: ImpAdCallI2 Mid$(, , )
  loc_C16B1C: FStStrNoPop var_90
  loc_C16B1F: LitStr "00"
  loc_C16B22: NeStr
  loc_C16B24: LitVarI2 var_D8, 3
  loc_C16B29: LitI4 6
  loc_C16B2E: ILdRf var_8C
  loc_C16B31: ImpAdCallI2 Mid$(, , )
  loc_C16B36: FStStrNoPop ValidaCodiCuco
  loc_C16B39: LitStr "000"
  loc_C16B3C: NeStr
  loc_C16B3E: AndI4
  loc_C16B3F: LitVarI2 var_F8, 2
  loc_C16B44: LitI4 4
  loc_C16B49: ILdRf var_8C
  loc_C16B4C: ImpAdCallI2 Mid$(, , )
  loc_C16B51: FStStrNoPop var_FC
  loc_C16B54: LitStr "00"
  loc_C16B57: NeStr
  loc_C16B59: AndI4
  loc_C16B5A: LitVarI2 var_11C, 1
  loc_C16B5F: LitI4 3
  loc_C16B64: ILdRf var_8C
  loc_C16B67: ImpAdCallI2 Mid$(, , )
  loc_C16B6C: FStStrNoPop var_120
  loc_C16B6F: LitStr "0"
  loc_C16B72: NeStr
  loc_C16B74: AndI4
  loc_C16B75: LitVarI2 var_140, 1
  loc_C16B7A: LitI4 2
  loc_C16B7F: ILdRf var_8C
  loc_C16B82: ImpAdCallI2 Mid$(, , )
  loc_C16B87: FStStrNoPop var_144
  loc_C16B8A: LitStr "0"
  loc_C16B8D: NeStr
  loc_C16B8F: AndI4
  loc_C16B90: LitVarI2 var_164, 1
  loc_C16B95: LitI4 1
  loc_C16B9A: ILdRf var_8C
  loc_C16B9D: ImpAdCallI2 Mid$(, , )
  loc_C16BA2: FStStrNoPop var_168
  loc_C16BA5: LitStr "0"
  loc_C16BA8: NeStr
  loc_C16BAA: AndI4
  loc_C16BAB: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C16BBA: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C16BC9: BranchF loc_C16BD5
  loc_C16BCC: LitStr vbNullString
  loc_C16BCF: FStStrCopy var_88
  loc_C16BD2: Branch loc_C16FC9
  loc_C16BD5: LitVarI2 var_B8, 3
  loc_C16BDA: LitI4 6
  loc_C16BDF: ILdRf var_8C
  loc_C16BE2: ImpAdCallI2 Mid$(, , )
  loc_C16BE7: FStStrNoPop var_90
  loc_C16BEA: LitStr "000"
  loc_C16BED: NeStr
  loc_C16BEF: LitVarI2 var_D8, 2
  loc_C16BF4: LitI4 9
  loc_C16BF9: ILdRf var_8C
  loc_C16BFC: ImpAdCallI2 Mid$(, , )
  loc_C16C01: FStStrNoPop ValidaCodiCuco
  loc_C16C04: LitStr "00"
  loc_C16C07: EqStr
  loc_C16C09: AndI4
  loc_C16C0A: LitVarI2 var_F8, 2
  loc_C16C0F: LitI4 4
  loc_C16C14: ILdRf var_8C
  loc_C16C17: ImpAdCallI2 Mid$(, , )
  loc_C16C1C: FStStrNoPop var_FC
  loc_C16C1F: LitStr "00"
  loc_C16C22: NeStr
  loc_C16C24: AndI4
  loc_C16C25: LitVarI2 var_11C, 1
  loc_C16C2A: LitI4 3
  loc_C16C2F: ILdRf var_8C
  loc_C16C32: ImpAdCallI2 Mid$(, , )
  loc_C16C37: FStStrNoPop var_120
  loc_C16C3A: LitStr "0"
  loc_C16C3D: NeStr
  loc_C16C3F: AndI4
  loc_C16C40: LitVarI2 var_140, 1
  loc_C16C45: LitI4 2
  loc_C16C4A: ILdRf var_8C
  loc_C16C4D: ImpAdCallI2 Mid$(, , )
  loc_C16C52: FStStrNoPop var_144
  loc_C16C55: LitStr "0"
  loc_C16C58: NeStr
  loc_C16C5A: AndI4
  loc_C16C5B: LitVarI2 var_164, 1
  loc_C16C60: LitI4 1
  loc_C16C65: ILdRf var_8C
  loc_C16C68: ImpAdCallI2 Mid$(, , )
  loc_C16C6D: FStStrNoPop var_168
  loc_C16C70: LitStr "0"
  loc_C16C73: NeStr
  loc_C16C75: AndI4
  loc_C16C76: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C16C85: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C16C94: BranchF loc_C16CA0
  loc_C16C97: LitStr vbNullString
  loc_C16C9A: FStStrCopy var_88
  loc_C16C9D: Branch loc_C16FC9
  loc_C16CA0: LitVarI2 var_B8, 2
  loc_C16CA5: LitI4 4
  loc_C16CAA: ILdRf var_8C
  loc_C16CAD: ImpAdCallI2 Mid$(, , )
  loc_C16CB2: FStStrNoPop var_90
  loc_C16CB5: LitStr "00"
  loc_C16CB8: NeStr
  loc_C16CBA: LitVarI2 var_D8, 2
  loc_C16CBF: LitI4 9
  loc_C16CC4: ILdRf var_8C
  loc_C16CC7: ImpAdCallI2 Mid$(, , )
  loc_C16CCC: FStStrNoPop ValidaCodiCuco
  loc_C16CCF: LitStr "00"
  loc_C16CD2: EqStr
  loc_C16CD4: AndI4
  loc_C16CD5: LitVarI2 var_F8, 3
  loc_C16CDA: LitI4 6
  loc_C16CDF: ILdRf var_8C
  loc_C16CE2: ImpAdCallI2 Mid$(, , )
  loc_C16CE7: FStStrNoPop var_FC
  loc_C16CEA: LitStr "000"
  loc_C16CED: EqStr
  loc_C16CEF: AndI4
  loc_C16CF0: LitVarI2 var_11C, 1
  loc_C16CF5: LitI4 3
  loc_C16CFA: ILdRf var_8C
  loc_C16CFD: ImpAdCallI2 Mid$(, , )
  loc_C16D02: FStStrNoPop var_120
  loc_C16D05: LitStr "0"
  loc_C16D08: NeStr
  loc_C16D0A: AndI4
  loc_C16D0B: LitVarI2 var_140, 1
  loc_C16D10: LitI4 2
  loc_C16D15: ILdRf var_8C
  loc_C16D18: ImpAdCallI2 Mid$(, , )
  loc_C16D1D: FStStrNoPop var_144
  loc_C16D20: LitStr "0"
  loc_C16D23: NeStr
  loc_C16D25: AndI4
  loc_C16D26: LitVarI2 var_164, 1
  loc_C16D2B: LitI4 1
  loc_C16D30: ILdRf var_8C
  loc_C16D33: ImpAdCallI2 Mid$(, , )
  loc_C16D38: FStStrNoPop var_168
  loc_C16D3B: LitStr "0"
  loc_C16D3E: NeStr
  loc_C16D40: AndI4
  loc_C16D41: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C16D50: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C16D5F: BranchF loc_C16D6B
  loc_C16D62: LitStr vbNullString
  loc_C16D65: FStStrCopy var_88
  loc_C16D68: Branch loc_C16FC9
  loc_C16D6B: LitVarI2 var_B8, 1
  loc_C16D70: LitI4 3
  loc_C16D75: ILdRf var_8C
  loc_C16D78: ImpAdCallI2 Mid$(, , )
  loc_C16D7D: FStStrNoPop var_90
  loc_C16D80: LitStr "0"
  loc_C16D83: NeStr
  loc_C16D85: LitVarI2 var_D8, 2
  loc_C16D8A: LitI4 9
  loc_C16D8F: ILdRf var_8C
  loc_C16D92: ImpAdCallI2 Mid$(, , )
  loc_C16D97: FStStrNoPop ValidaCodiCuco
  loc_C16D9A: LitStr "00"
  loc_C16D9D: EqStr
  loc_C16D9F: AndI4
  loc_C16DA0: LitVarI2 var_F8, 3
  loc_C16DA5: LitI4 6
  loc_C16DAA: ILdRf var_8C
  loc_C16DAD: ImpAdCallI2 Mid$(, , )
  loc_C16DB2: FStStrNoPop var_FC
  loc_C16DB5: LitStr "000"
  loc_C16DB8: EqStr
  loc_C16DBA: AndI4
  loc_C16DBB: LitVarI2 var_11C, 2
  loc_C16DC0: LitI4 4
  loc_C16DC5: ILdRf var_8C
  loc_C16DC8: ImpAdCallI2 Mid$(, , )
  loc_C16DCD: FStStrNoPop var_120
  loc_C16DD0: LitStr "00"
  loc_C16DD3: EqStr
  loc_C16DD5: AndI4
  loc_C16DD6: LitVarI2 var_140, 1
  loc_C16DDB: LitI4 2
  loc_C16DE0: ILdRf var_8C
  loc_C16DE3: ImpAdCallI2 Mid$(, , )
  loc_C16DE8: FStStrNoPop var_144
  loc_C16DEB: LitStr "0"
  loc_C16DEE: NeStr
  loc_C16DF0: AndI4
  loc_C16DF1: LitVarI2 var_164, 1
  loc_C16DF6: LitI4 1
  loc_C16DFB: ILdRf var_8C
  loc_C16DFE: ImpAdCallI2 Mid$(, , )
  loc_C16E03: FStStrNoPop var_168
  loc_C16E06: LitStr "0"
  loc_C16E09: NeStr
  loc_C16E0B: AndI4
  loc_C16E0C: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C16E1B: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C16E2A: BranchF loc_C16E36
  loc_C16E2D: LitStr vbNullString
  loc_C16E30: FStStrCopy var_88
  loc_C16E33: Branch loc_C16FC9
  loc_C16E36: LitVarI2 var_B8, 1
  loc_C16E3B: LitI4 2
  loc_C16E40: ILdRf var_8C
  loc_C16E43: ImpAdCallI2 Mid$(, , )
  loc_C16E48: FStStrNoPop var_90
  loc_C16E4B: LitStr "0"
  loc_C16E4E: NeStr
  loc_C16E50: LitVarI2 var_D8, 2
  loc_C16E55: LitI4 9
  loc_C16E5A: ILdRf var_8C
  loc_C16E5D: ImpAdCallI2 Mid$(, , )
  loc_C16E62: FStStrNoPop ValidaCodiCuco
  loc_C16E65: LitStr "00"
  loc_C16E68: EqStr
  loc_C16E6A: AndI4
  loc_C16E6B: LitVarI2 var_F8, 3
  loc_C16E70: LitI4 6
  loc_C16E75: ILdRf var_8C
  loc_C16E78: ImpAdCallI2 Mid$(, , )
  loc_C16E7D: FStStrNoPop var_FC
  loc_C16E80: LitStr "000"
  loc_C16E83: EqStr
  loc_C16E85: AndI4
  loc_C16E86: LitVarI2 var_11C, 2
  loc_C16E8B: LitI4 4
  loc_C16E90: ILdRf var_8C
  loc_C16E93: ImpAdCallI2 Mid$(, , )
  loc_C16E98: FStStrNoPop var_120
  loc_C16E9B: LitStr "00"
  loc_C16E9E: EqStr
  loc_C16EA0: AndI4
  loc_C16EA1: LitVarI2 var_140, 1
  loc_C16EA6: LitI4 3
  loc_C16EAB: ILdRf var_8C
  loc_C16EAE: ImpAdCallI2 Mid$(, , )
  loc_C16EB3: FStStrNoPop var_144
  loc_C16EB6: LitStr "0"
  loc_C16EB9: EqStr
  loc_C16EBB: AndI4
  loc_C16EBC: LitVarI2 var_164, 1
  loc_C16EC1: LitI4 1
  loc_C16EC6: ILdRf var_8C
  loc_C16EC9: ImpAdCallI2 Mid$(, , )
  loc_C16ECE: FStStrNoPop var_168
  loc_C16ED1: LitStr "0"
  loc_C16ED4: NeStr
  loc_C16ED6: AndI4
  loc_C16ED7: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C16EE6: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C16EF5: BranchF loc_C16F01
  loc_C16EF8: LitStr vbNullString
  loc_C16EFB: FStStrCopy var_88
  loc_C16EFE: Branch loc_C16FC9
  loc_C16F01: LitVarI2 var_B8, 1
  loc_C16F06: LitI4 1
  loc_C16F0B: ILdRf var_8C
  loc_C16F0E: ImpAdCallI2 Mid$(, , )
  loc_C16F13: FStStrNoPop var_90
  loc_C16F16: LitStr "0"
  loc_C16F19: NeStr
  loc_C16F1B: LitVarI2 var_D8, 2
  loc_C16F20: LitI4 9
  loc_C16F25: ILdRf var_8C
  loc_C16F28: ImpAdCallI2 Mid$(, , )
  loc_C16F2D: FStStrNoPop ValidaCodiCuco
  loc_C16F30: LitStr "00"
  loc_C16F33: EqStr
  loc_C16F35: AndI4
  loc_C16F36: LitVarI2 var_F8, 3
  loc_C16F3B: LitI4 6
  loc_C16F40: ILdRf var_8C
  loc_C16F43: ImpAdCallI2 Mid$(, , )
  loc_C16F48: FStStrNoPop var_FC
  loc_C16F4B: LitStr "000"
  loc_C16F4E: EqStr
  loc_C16F50: AndI4
  loc_C16F51: LitVarI2 var_11C, 2
  loc_C16F56: LitI4 4
  loc_C16F5B: ILdRf var_8C
  loc_C16F5E: ImpAdCallI2 Mid$(, , )
  loc_C16F63: FStStrNoPop var_120
  loc_C16F66: LitStr "00"
  loc_C16F69: EqStr
  loc_C16F6B: AndI4
  loc_C16F6C: LitVarI2 var_140, 1
  loc_C16F71: LitI4 3
  loc_C16F76: ILdRf var_8C
  loc_C16F79: ImpAdCallI2 Mid$(, , )
  loc_C16F7E: FStStrNoPop var_144
  loc_C16F81: LitStr "0"
  loc_C16F84: EqStr
  loc_C16F86: AndI4
  loc_C16F87: LitVarI2 var_164, 1
  loc_C16F8C: LitI4 2
  loc_C16F91: ILdRf var_8C
  loc_C16F94: ImpAdCallI2 Mid$(, , )
  loc_C16F99: FStStrNoPop var_168
  loc_C16F9C: LitStr "0"
  loc_C16F9F: EqStr
  loc_C16FA1: AndI4
  loc_C16FA2: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C16FB1: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C16FC0: BranchF loc_C16FC9
  loc_C16FC3: LitStr vbNullString
  loc_C16FC6: FStStrCopy var_88
  loc_C16FC9: Branch loc_C17AFC
  loc_C16FCC: ILdRf var_98
  loc_C16FCF: LitStr "EPAS - Ente Provincial del Agua y de Saneamiento"
  loc_C16FD2: EqStr
  loc_C16FD4: BranchF loc_C17499
  loc_C16FD7: LitVarI2 var_B8, 2
  loc_C16FDC: LitI4 9
  loc_C16FE1: ILdRf var_8C
  loc_C16FE4: ImpAdCallI2 Mid$(, , )
  loc_C16FE9: FStStrNoPop var_90
  loc_C16FEC: LitStr "00"
  loc_C16FEF: NeStr
  loc_C16FF1: LitVarI2 var_D8, 2
  loc_C16FF6: LitI4 7
  loc_C16FFB: ILdRf var_8C
  loc_C16FFE: ImpAdCallI2 Mid$(, , )
  loc_C17003: FStStrNoPop ValidaCodiCuco
  loc_C17006: LitStr "00"
  loc_C17009: NeStr
  loc_C1700B: AndI4
  loc_C1700C: LitVarI2 var_F8, 2
  loc_C17011: LitI4 5
  loc_C17016: ILdRf var_8C
  loc_C17019: ImpAdCallI2 Mid$(, , )
  loc_C1701E: FStStrNoPop var_FC
  loc_C17021: LitStr "00"
  loc_C17024: NeStr
  loc_C17026: AndI4
  loc_C17027: LitVarI2 var_11C, 2
  loc_C1702C: LitI4 3
  loc_C17031: ILdRf var_8C
  loc_C17034: ImpAdCallI2 Mid$(, , )
  loc_C17039: FStStrNoPop var_120
  loc_C1703C: LitStr "00"
  loc_C1703F: NeStr
  loc_C17041: AndI4
  loc_C17042: LitVarI2 var_140, 1
  loc_C17047: LitI4 2
  loc_C1704C: ILdRf var_8C
  loc_C1704F: ImpAdCallI2 Mid$(, , )
  loc_C17054: FStStrNoPop var_144
  loc_C17057: LitStr "0"
  loc_C1705A: NeStr
  loc_C1705C: AndI4
  loc_C1705D: LitVarI2 var_164, 1
  loc_C17062: LitI4 1
  loc_C17067: ILdRf var_8C
  loc_C1706A: ImpAdCallI2 Mid$(, , )
  loc_C1706F: FStStrNoPop var_168
  loc_C17072: LitStr "0"
  loc_C17075: NeStr
  loc_C17077: AndI4
  loc_C17078: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C17087: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C17096: BranchF loc_C170A2
  loc_C17099: LitStr vbNullString
  loc_C1709C: FStStrCopy var_88
  loc_C1709F: Branch loc_C17496
  loc_C170A2: LitVarI2 var_B8, 2
  loc_C170A7: LitI4 7
  loc_C170AC: ILdRf var_8C
  loc_C170AF: ImpAdCallI2 Mid$(, , )
  loc_C170B4: FStStrNoPop var_90
  loc_C170B7: LitStr "00"
  loc_C170BA: NeStr
  loc_C170BC: LitVarI2 var_D8, 2
  loc_C170C1: LitI4 9
  loc_C170C6: ILdRf var_8C
  loc_C170C9: ImpAdCallI2 Mid$(, , )
  loc_C170CE: FStStrNoPop ValidaCodiCuco
  loc_C170D1: LitStr "00"
  loc_C170D4: EqStr
  loc_C170D6: AndI4
  loc_C170D7: LitVarI2 var_F8, 2
  loc_C170DC: LitI4 5
  loc_C170E1: ILdRf var_8C
  loc_C170E4: ImpAdCallI2 Mid$(, , )
  loc_C170E9: FStStrNoPop var_FC
  loc_C170EC: LitStr "00"
  loc_C170EF: NeStr
  loc_C170F1: AndI4
  loc_C170F2: LitVarI2 var_11C, 2
  loc_C170F7: LitI4 3
  loc_C170FC: ILdRf var_8C
  loc_C170FF: ImpAdCallI2 Mid$(, , )
  loc_C17104: FStStrNoPop var_120
  loc_C17107: LitStr "00"
  loc_C1710A: NeStr
  loc_C1710C: AndI4
  loc_C1710D: LitVarI2 var_140, 1
  loc_C17112: LitI4 2
  loc_C17117: ILdRf var_8C
  loc_C1711A: ImpAdCallI2 Mid$(, , )
  loc_C1711F: FStStrNoPop var_144
  loc_C17122: LitStr "0"
  loc_C17125: NeStr
  loc_C17127: AndI4
  loc_C17128: LitVarI2 var_164, 1
  loc_C1712D: LitI4 1
  loc_C17132: ILdRf var_8C
  loc_C17135: ImpAdCallI2 Mid$(, , )
  loc_C1713A: FStStrNoPop var_168
  loc_C1713D: LitStr "0"
  loc_C17140: NeStr
  loc_C17142: AndI4
  loc_C17143: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C17152: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C17161: BranchF loc_C1716D
  loc_C17164: LitStr vbNullString
  loc_C17167: FStStrCopy var_88
  loc_C1716A: Branch loc_C17496
  loc_C1716D: LitVarI2 var_B8, 2
  loc_C17172: LitI4 5
  loc_C17177: ILdRf var_8C
  loc_C1717A: ImpAdCallI2 Mid$(, , )
  loc_C1717F: FStStrNoPop var_90
  loc_C17182: LitStr "00"
  loc_C17185: NeStr
  loc_C17187: LitVarI2 var_D8, 2
  loc_C1718C: LitI4 9
  loc_C17191: ILdRf var_8C
  loc_C17194: ImpAdCallI2 Mid$(, , )
  loc_C17199: FStStrNoPop ValidaCodiCuco
  loc_C1719C: LitStr "00"
  loc_C1719F: EqStr
  loc_C171A1: AndI4
  loc_C171A2: LitVarI2 var_F8, 2
  loc_C171A7: LitI4 7
  loc_C171AC: ILdRf var_8C
  loc_C171AF: ImpAdCallI2 Mid$(, , )
  loc_C171B4: FStStrNoPop var_FC
  loc_C171B7: LitStr "00"
  loc_C171BA: EqStr
  loc_C171BC: AndI4
  loc_C171BD: LitVarI2 var_11C, 2
  loc_C171C2: LitI4 3
  loc_C171C7: ILdRf var_8C
  loc_C171CA: ImpAdCallI2 Mid$(, , )
  loc_C171CF: FStStrNoPop var_120
  loc_C171D2: LitStr "00"
  loc_C171D5: NeStr
  loc_C171D7: AndI4
  loc_C171D8: LitVarI2 var_140, 1
  loc_C171DD: LitI4 2
  loc_C171E2: ILdRf var_8C
  loc_C171E5: ImpAdCallI2 Mid$(, , )
  loc_C171EA: FStStrNoPop var_144
  loc_C171ED: LitStr "0"
  loc_C171F0: NeStr
  loc_C171F2: AndI4
  loc_C171F3: LitVarI2 var_164, 1
  loc_C171F8: LitI4 1
  loc_C171FD: ILdRf var_8C
  loc_C17200: ImpAdCallI2 Mid$(, , )
  loc_C17205: FStStrNoPop var_168
  loc_C17208: LitStr "0"
  loc_C1720B: NeStr
  loc_C1720D: AndI4
  loc_C1720E: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C1721D: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C1722C: BranchF loc_C17238
  loc_C1722F: LitStr vbNullString
  loc_C17232: FStStrCopy var_88
  loc_C17235: Branch loc_C17496
  loc_C17238: LitVarI2 var_B8, 2
  loc_C1723D: LitI4 3
  loc_C17242: ILdRf var_8C
  loc_C17245: ImpAdCallI2 Mid$(, , )
  loc_C1724A: FStStrNoPop var_90
  loc_C1724D: LitStr "00"
  loc_C17250: NeStr
  loc_C17252: LitVarI2 var_D8, 2
  loc_C17257: LitI4 9
  loc_C1725C: ILdRf var_8C
  loc_C1725F: ImpAdCallI2 Mid$(, , )
  loc_C17264: FStStrNoPop ValidaCodiCuco
  loc_C17267: LitStr "00"
  loc_C1726A: EqStr
  loc_C1726C: AndI4
  loc_C1726D: LitVarI2 var_F8, 2
  loc_C17272: LitI4 7
  loc_C17277: ILdRf var_8C
  loc_C1727A: ImpAdCallI2 Mid$(, , )
  loc_C1727F: FStStrNoPop var_FC
  loc_C17282: LitStr "00"
  loc_C17285: EqStr
  loc_C17287: AndI4
  loc_C17288: LitVarI2 var_11C, 2
  loc_C1728D: LitI4 5
  loc_C17292: ILdRf var_8C
  loc_C17295: ImpAdCallI2 Mid$(, , )
  loc_C1729A: FStStrNoPop var_120
  loc_C1729D: LitStr "00"
  loc_C172A0: EqStr
  loc_C172A2: AndI4
  loc_C172A3: LitVarI2 var_140, 1
  loc_C172A8: LitI4 2
  loc_C172AD: ILdRf var_8C
  loc_C172B0: ImpAdCallI2 Mid$(, , )
  loc_C172B5: FStStrNoPop var_144
  loc_C172B8: LitStr "0"
  loc_C172BB: NeStr
  loc_C172BD: AndI4
  loc_C172BE: LitVarI2 var_164, 1
  loc_C172C3: LitI4 1
  loc_C172C8: ILdRf var_8C
  loc_C172CB: ImpAdCallI2 Mid$(, , )
  loc_C172D0: FStStrNoPop var_168
  loc_C172D3: LitStr "0"
  loc_C172D6: NeStr
  loc_C172D8: AndI4
  loc_C172D9: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C172E8: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C172F7: BranchF loc_C17303
  loc_C172FA: LitStr vbNullString
  loc_C172FD: FStStrCopy var_88
  loc_C17300: Branch loc_C17496
  loc_C17303: LitVarI2 var_B8, 1
  loc_C17308: LitI4 2
  loc_C1730D: ILdRf var_8C
  loc_C17310: ImpAdCallI2 Mid$(, , )
  loc_C17315: FStStrNoPop var_90
  loc_C17318: LitStr "0"
  loc_C1731B: NeStr
  loc_C1731D: LitVarI2 var_D8, 2
  loc_C17322: LitI4 9
  loc_C17327: ILdRf var_8C
  loc_C1732A: ImpAdCallI2 Mid$(, , )
  loc_C1732F: FStStrNoPop ValidaCodiCuco
  loc_C17332: LitStr "00"
  loc_C17335: EqStr
  loc_C17337: AndI4
  loc_C17338: LitVarI2 var_F8, 2
  loc_C1733D: LitI4 7
  loc_C17342: ILdRf var_8C
  loc_C17345: ImpAdCallI2 Mid$(, , )
  loc_C1734A: FStStrNoPop var_FC
  loc_C1734D: LitStr "00"
  loc_C17350: EqStr
  loc_C17352: AndI4
  loc_C17353: LitVarI2 var_11C, 2
  loc_C17358: LitI4 5
  loc_C1735D: ILdRf var_8C
  loc_C17360: ImpAdCallI2 Mid$(, , )
  loc_C17365: FStStrNoPop var_120
  loc_C17368: LitStr "00"
  loc_C1736B: EqStr
  loc_C1736D: AndI4
  loc_C1736E: LitVarI2 var_140, 2
  loc_C17373: LitI4 3
  loc_C17378: ILdRf var_8C
  loc_C1737B: ImpAdCallI2 Mid$(, , )
  loc_C17380: FStStrNoPop var_144
  loc_C17383: LitStr "00"
  loc_C17386: EqStr
  loc_C17388: AndI4
  loc_C17389: LitVarI2 var_164, 1
  loc_C1738E: LitI4 1
  loc_C17393: ILdRf var_8C
  loc_C17396: ImpAdCallI2 Mid$(, , )
  loc_C1739B: FStStrNoPop var_168
  loc_C1739E: LitStr "0"
  loc_C173A1: NeStr
  loc_C173A3: AndI4
  loc_C173A4: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C173B3: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C173C2: BranchF loc_C173CE
  loc_C173C5: LitStr vbNullString
  loc_C173C8: FStStrCopy var_88
  loc_C173CB: Branch loc_C17496
  loc_C173CE: LitVarI2 var_B8, 1
  loc_C173D3: LitI4 1
  loc_C173D8: ILdRf var_8C
  loc_C173DB: ImpAdCallI2 Mid$(, , )
  loc_C173E0: FStStrNoPop var_90
  loc_C173E3: LitStr "0"
  loc_C173E6: NeStr
  loc_C173E8: LitVarI2 var_D8, 2
  loc_C173ED: LitI4 9
  loc_C173F2: ILdRf var_8C
  loc_C173F5: ImpAdCallI2 Mid$(, , )
  loc_C173FA: FStStrNoPop ValidaCodiCuco
  loc_C173FD: LitStr "00"
  loc_C17400: EqStr
  loc_C17402: AndI4
  loc_C17403: LitVarI2 var_F8, 2
  loc_C17408: LitI4 7
  loc_C1740D: ILdRf var_8C
  loc_C17410: ImpAdCallI2 Mid$(, , )
  loc_C17415: FStStrNoPop var_FC
  loc_C17418: LitStr "00"
  loc_C1741B: EqStr
  loc_C1741D: AndI4
  loc_C1741E: LitVarI2 var_11C, 2
  loc_C17423: LitI4 5
  loc_C17428: ILdRf var_8C
  loc_C1742B: ImpAdCallI2 Mid$(, , )
  loc_C17430: FStStrNoPop var_120
  loc_C17433: LitStr "00"
  loc_C17436: EqStr
  loc_C17438: AndI4
  loc_C17439: LitVarI2 var_140, 2
  loc_C1743E: LitI4 3
  loc_C17443: ILdRf var_8C
  loc_C17446: ImpAdCallI2 Mid$(, , )
  loc_C1744B: FStStrNoPop var_144
  loc_C1744E: LitStr "00"
  loc_C17451: EqStr
  loc_C17453: AndI4
  loc_C17454: LitVarI2 var_164, 1
  loc_C17459: LitI4 2
  loc_C1745E: ILdRf var_8C
  loc_C17461: ImpAdCallI2 Mid$(, , )
  loc_C17466: FStStrNoPop var_168
  loc_C17469: LitStr "0"
  loc_C1746C: EqStr
  loc_C1746E: AndI4
  loc_C1746F: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C1747E: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C1748D: BranchF loc_C17496
  loc_C17490: LitStr vbNullString
  loc_C17493: FStStrCopy var_88
  loc_C17496: Branch loc_C17AFC
  loc_C17499: LitVarI2 var_B8, 2
  loc_C1749E: LitI4 9
  loc_C174A3: ILdRf var_8C
  loc_C174A6: ImpAdCallI2 Mid$(, , )
  loc_C174AB: FStStrNoPop var_90
  loc_C174AE: LitStr "00"
  loc_C174B1: NeStr
  loc_C174B3: LitVarI2 var_D8, 2
  loc_C174B8: LitI4 7
  loc_C174BD: ILdRf var_8C
  loc_C174C0: ImpAdCallI2 Mid$(, , )
  loc_C174C5: FStStrNoPop ValidaCodiCuco
  loc_C174C8: LitStr "00"
  loc_C174CB: NeStr
  loc_C174CD: AndI4
  loc_C174CE: LitVarI2 var_F8, 2
  loc_C174D3: LitI4 5
  loc_C174D8: ILdRf var_8C
  loc_C174DB: ImpAdCallI2 Mid$(, , )
  loc_C174E0: FStStrNoPop var_FC
  loc_C174E3: LitStr "00"
  loc_C174E6: NeStr
  loc_C174E8: AndI4
  loc_C174E9: LitVarI2 var_11C, 1
  loc_C174EE: LitI4 4
  loc_C174F3: ILdRf var_8C
  loc_C174F6: ImpAdCallI2 Mid$(, , )
  loc_C174FB: FStStrNoPop var_120
  loc_C174FE: LitStr "0"
  loc_C17501: NeStr
  loc_C17503: AndI4
  loc_C17504: LitVarI2 var_140, 1
  loc_C17509: LitI4 3
  loc_C1750E: ILdRf var_8C
  loc_C17511: ImpAdCallI2 Mid$(, , )
  loc_C17516: FStStrNoPop var_144
  loc_C17519: LitStr "0"
  loc_C1751C: NeStr
  loc_C1751E: AndI4
  loc_C1751F: LitVarI2 var_164, 1
  loc_C17524: LitI4 2
  loc_C17529: ILdRf var_8C
  loc_C1752C: ImpAdCallI2 Mid$(, , )
  loc_C17531: FStStrNoPop var_168
  loc_C17534: LitStr "0"
  loc_C17537: NeStr
  loc_C17539: AndI4
  loc_C1753A: LitVarI2 var_188, 1
  loc_C1753F: LitI4 1
  loc_C17544: ILdRf var_8C
  loc_C17547: ImpAdCallI2 Mid$(, , )
  loc_C1754C: FStStrNoPop var_18C
  loc_C1754F: LitStr "0"
  loc_C17552: NeStr
  loc_C17554: AndI4
  loc_C17555: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C17566: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C17577: BranchF loc_C17583
  loc_C1757A: LitStr vbNullString
  loc_C1757D: FStStrCopy var_88
  loc_C17580: Branch loc_C17AFC
  loc_C17583: LitVarI2 var_B8, 2
  loc_C17588: LitI4 7
  loc_C1758D: ILdRf var_8C
  loc_C17590: ImpAdCallI2 Mid$(, , )
  loc_C17595: FStStrNoPop var_90
  loc_C17598: LitStr "00"
  loc_C1759B: NeStr
  loc_C1759D: LitVarI2 var_D8, 2
  loc_C175A2: LitI4 9
  loc_C175A7: ILdRf var_8C
  loc_C175AA: ImpAdCallI2 Mid$(, , )
  loc_C175AF: FStStrNoPop ValidaCodiCuco
  loc_C175B2: LitStr "00"
  loc_C175B5: EqStr
  loc_C175B7: AndI4
  loc_C175B8: LitVarI2 var_F8, 2
  loc_C175BD: LitI4 5
  loc_C175C2: ILdRf var_8C
  loc_C175C5: ImpAdCallI2 Mid$(, , )
  loc_C175CA: FStStrNoPop var_FC
  loc_C175CD: LitStr "00"
  loc_C175D0: NeStr
  loc_C175D2: AndI4
  loc_C175D3: LitVarI2 var_11C, 1
  loc_C175D8: LitI4 4
  loc_C175DD: ILdRf var_8C
  loc_C175E0: ImpAdCallI2 Mid$(, , )
  loc_C175E5: FStStrNoPop var_120
  loc_C175E8: LitStr "0"
  loc_C175EB: NeStr
  loc_C175ED: AndI4
  loc_C175EE: LitVarI2 var_140, 1
  loc_C175F3: LitI4 3
  loc_C175F8: ILdRf var_8C
  loc_C175FB: ImpAdCallI2 Mid$(, , )
  loc_C17600: FStStrNoPop var_144
  loc_C17603: LitStr "0"
  loc_C17606: NeStr
  loc_C17608: AndI4
  loc_C17609: LitVarI2 var_164, 1
  loc_C1760E: LitI4 2
  loc_C17613: ILdRf var_8C
  loc_C17616: ImpAdCallI2 Mid$(, , )
  loc_C1761B: FStStrNoPop var_168
  loc_C1761E: LitStr "0"
  loc_C17621: NeStr
  loc_C17623: AndI4
  loc_C17624: LitVarI2 var_188, 1
  loc_C17629: LitI4 1
  loc_C1762E: ILdRf var_8C
  loc_C17631: ImpAdCallI2 Mid$(, , )
  loc_C17636: FStStrNoPop var_18C
  loc_C17639: LitStr "0"
  loc_C1763C: NeStr
  loc_C1763E: AndI4
  loc_C1763F: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C17650: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C17661: BranchF loc_C1766D
  loc_C17664: LitStr vbNullString
  loc_C17667: FStStrCopy var_88
  loc_C1766A: Branch loc_C17AFC
  loc_C1766D: LitVarI2 var_B8, 2
  loc_C17672: LitI4 5
  loc_C17677: ILdRf var_8C
  loc_C1767A: ImpAdCallI2 Mid$(, , )
  loc_C1767F: FStStrNoPop var_90
  loc_C17682: LitStr "00"
  loc_C17685: NeStr
  loc_C17687: LitVarI2 var_D8, 2
  loc_C1768C: LitI4 9
  loc_C17691: ILdRf var_8C
  loc_C17694: ImpAdCallI2 Mid$(, , )
  loc_C17699: FStStrNoPop ValidaCodiCuco
  loc_C1769C: LitStr "00"
  loc_C1769F: EqStr
  loc_C176A1: AndI4
  loc_C176A2: LitVarI2 var_F8, 2
  loc_C176A7: LitI4 7
  loc_C176AC: ILdRf var_8C
  loc_C176AF: ImpAdCallI2 Mid$(, , )
  loc_C176B4: FStStrNoPop var_FC
  loc_C176B7: LitStr "00"
  loc_C176BA: EqStr
  loc_C176BC: AndI4
  loc_C176BD: LitVarI2 var_11C, 1
  loc_C176C2: LitI4 4
  loc_C176C7: ILdRf var_8C
  loc_C176CA: ImpAdCallI2 Mid$(, , )
  loc_C176CF: FStStrNoPop var_120
  loc_C176D2: LitStr "0"
  loc_C176D5: NeStr
  loc_C176D7: AndI4
  loc_C176D8: LitVarI2 var_140, 1
  loc_C176DD: LitI4 3
  loc_C176E2: ILdRf var_8C
  loc_C176E5: ImpAdCallI2 Mid$(, , )
  loc_C176EA: FStStrNoPop var_144
  loc_C176ED: LitStr "0"
  loc_C176F0: NeStr
  loc_C176F2: AndI4
  loc_C176F3: LitVarI2 var_164, 1
  loc_C176F8: LitI4 2
  loc_C176FD: ILdRf var_8C
  loc_C17700: ImpAdCallI2 Mid$(, , )
  loc_C17705: FStStrNoPop var_168
  loc_C17708: LitStr "0"
  loc_C1770B: NeStr
  loc_C1770D: AndI4
  loc_C1770E: LitVarI2 var_188, 1
  loc_C17713: LitI4 1
  loc_C17718: ILdRf var_8C
  loc_C1771B: ImpAdCallI2 Mid$(, , )
  loc_C17720: FStStrNoPop var_18C
  loc_C17723: LitStr "0"
  loc_C17726: NeStr
  loc_C17728: AndI4
  loc_C17729: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C1773A: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C1774B: BranchF loc_C17757
  loc_C1774E: LitStr vbNullString
  loc_C17751: FStStrCopy var_88
  loc_C17754: Branch loc_C17AFC
  loc_C17757: LitVarI2 var_B8, 1
  loc_C1775C: LitI4 4
  loc_C17761: ILdRf var_8C
  loc_C17764: ImpAdCallI2 Mid$(, , )
  loc_C17769: FStStrNoPop var_90
  loc_C1776C: LitStr "0"
  loc_C1776F: NeStr
  loc_C17771: LitVarI2 var_D8, 2
  loc_C17776: LitI4 9
  loc_C1777B: ILdRf var_8C
  loc_C1777E: ImpAdCallI2 Mid$(, , )
  loc_C17783: FStStrNoPop ValidaCodiCuco
  loc_C17786: LitStr "00"
  loc_C17789: EqStr
  loc_C1778B: AndI4
  loc_C1778C: LitVarI2 var_F8, 2
  loc_C17791: LitI4 7
  loc_C17796: ILdRf var_8C
  loc_C17799: ImpAdCallI2 Mid$(, , )
  loc_C1779E: FStStrNoPop var_FC
  loc_C177A1: LitStr "00"
  loc_C177A4: EqStr
  loc_C177A6: AndI4
  loc_C177A7: LitVarI2 var_11C, 2
  loc_C177AC: LitI4 5
  loc_C177B1: ILdRf var_8C
  loc_C177B4: ImpAdCallI2 Mid$(, , )
  loc_C177B9: FStStrNoPop var_120
  loc_C177BC: LitStr "00"
  loc_C177BF: EqStr
  loc_C177C1: AndI4
  loc_C177C2: LitVarI2 var_140, 1
  loc_C177C7: LitI4 3
  loc_C177CC: ILdRf var_8C
  loc_C177CF: ImpAdCallI2 Mid$(, , )
  loc_C177D4: FStStrNoPop var_144
  loc_C177D7: LitStr "0"
  loc_C177DA: NeStr
  loc_C177DC: AndI4
  loc_C177DD: LitVarI2 var_164, 1
  loc_C177E2: LitI4 2
  loc_C177E7: ILdRf var_8C
  loc_C177EA: ImpAdCallI2 Mid$(, , )
  loc_C177EF: FStStrNoPop var_168
  loc_C177F2: LitStr "0"
  loc_C177F5: NeStr
  loc_C177F7: AndI4
  loc_C177F8: LitVarI2 var_188, 1
  loc_C177FD: LitI4 1
  loc_C17802: ILdRf var_8C
  loc_C17805: ImpAdCallI2 Mid$(, , )
  loc_C1780A: FStStrNoPop var_18C
  loc_C1780D: LitStr "0"
  loc_C17810: NeStr
  loc_C17812: AndI4
  loc_C17813: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C17824: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C17835: BranchF loc_C17841
  loc_C17838: LitStr vbNullString
  loc_C1783B: FStStrCopy var_88
  loc_C1783E: Branch loc_C17AFC
  loc_C17841: LitVarI2 var_B8, 1
  loc_C17846: LitI4 3
  loc_C1784B: ILdRf var_8C
  loc_C1784E: ImpAdCallI2 Mid$(, , )
  loc_C17853: FStStrNoPop var_90
  loc_C17856: LitStr "0"
  loc_C17859: NeStr
  loc_C1785B: LitVarI2 var_D8, 2
  loc_C17860: LitI4 9
  loc_C17865: ILdRf var_8C
  loc_C17868: ImpAdCallI2 Mid$(, , )
  loc_C1786D: FStStrNoPop ValidaCodiCuco
  loc_C17870: LitStr "00"
  loc_C17873: EqStr
  loc_C17875: AndI4
  loc_C17876: LitVarI2 var_F8, 2
  loc_C1787B: LitI4 7
  loc_C17880: ILdRf var_8C
  loc_C17883: ImpAdCallI2 Mid$(, , )
  loc_C17888: FStStrNoPop var_FC
  loc_C1788B: LitStr "00"
  loc_C1788E: EqStr
  loc_C17890: AndI4
  loc_C17891: LitVarI2 var_11C, 2
  loc_C17896: LitI4 5
  loc_C1789B: ILdRf var_8C
  loc_C1789E: ImpAdCallI2 Mid$(, , )
  loc_C178A3: FStStrNoPop var_120
  loc_C178A6: LitStr "00"
  loc_C178A9: EqStr
  loc_C178AB: AndI4
  loc_C178AC: LitVarI2 var_140, 1
  loc_C178B1: LitI4 4
  loc_C178B6: ILdRf var_8C
  loc_C178B9: ImpAdCallI2 Mid$(, , )
  loc_C178BE: FStStrNoPop var_144
  loc_C178C1: LitStr "0"
  loc_C178C4: EqStr
  loc_C178C6: AndI4
  loc_C178C7: LitVarI2 var_164, 1
  loc_C178CC: LitI4 2
  loc_C178D1: ILdRf var_8C
  loc_C178D4: ImpAdCallI2 Mid$(, , )
  loc_C178D9: FStStrNoPop var_168
  loc_C178DC: LitStr "0"
  loc_C178DF: NeStr
  loc_C178E1: AndI4
  loc_C178E2: LitVarI2 var_188, 1
  loc_C178E7: LitI4 1
  loc_C178EC: ILdRf var_8C
  loc_C178EF: ImpAdCallI2 Mid$(, , )
  loc_C178F4: FStStrNoPop var_18C
  loc_C178F7: LitStr "0"
  loc_C178FA: NeStr
  loc_C178FC: AndI4
  loc_C178FD: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C1790E: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C1791F: BranchF loc_C1792B
  loc_C17922: LitStr vbNullString
  loc_C17925: FStStrCopy var_88
  loc_C17928: Branch loc_C17AFC
  loc_C1792B: LitVarI2 var_B8, 1
  loc_C17930: LitI4 2
  loc_C17935: ILdRf var_8C
  loc_C17938: ImpAdCallI2 Mid$(, , )
  loc_C1793D: FStStrNoPop var_90
  loc_C17940: LitStr "0"
  loc_C17943: NeStr
  loc_C17945: LitVarI2 var_D8, 2
  loc_C1794A: LitI4 9
  loc_C1794F: ILdRf var_8C
  loc_C17952: ImpAdCallI2 Mid$(, , )
  loc_C17957: FStStrNoPop ValidaCodiCuco
  loc_C1795A: LitStr "00"
  loc_C1795D: EqStr
  loc_C1795F: AndI4
  loc_C17960: LitVarI2 var_F8, 2
  loc_C17965: LitI4 7
  loc_C1796A: ILdRf var_8C
  loc_C1796D: ImpAdCallI2 Mid$(, , )
  loc_C17972: FStStrNoPop var_FC
  loc_C17975: LitStr "00"
  loc_C17978: EqStr
  loc_C1797A: AndI4
  loc_C1797B: LitVarI2 var_11C, 2
  loc_C17980: LitI4 5
  loc_C17985: ILdRf var_8C
  loc_C17988: ImpAdCallI2 Mid$(, , )
  loc_C1798D: FStStrNoPop var_120
  loc_C17990: LitStr "00"
  loc_C17993: EqStr
  loc_C17995: AndI4
  loc_C17996: LitVarI2 var_140, 1
  loc_C1799B: LitI4 4
  loc_C179A0: ILdRf var_8C
  loc_C179A3: ImpAdCallI2 Mid$(, , )
  loc_C179A8: FStStrNoPop var_144
  loc_C179AB: LitStr "0"
  loc_C179AE: EqStr
  loc_C179B0: AndI4
  loc_C179B1: LitVarI2 var_164, 1
  loc_C179B6: LitI4 3
  loc_C179BB: ILdRf var_8C
  loc_C179BE: ImpAdCallI2 Mid$(, , )
  loc_C179C3: FStStrNoPop var_168
  loc_C179C6: LitStr "0"
  loc_C179C9: EqStr
  loc_C179CB: AndI4
  loc_C179CC: LitVarI2 var_188, 1
  loc_C179D1: LitI4 1
  loc_C179D6: ILdRf var_8C
  loc_C179D9: ImpAdCallI2 Mid$(, , )
  loc_C179DE: FStStrNoPop var_18C
  loc_C179E1: LitStr "0"
  loc_C179E4: NeStr
  loc_C179E6: AndI4
  loc_C179E7: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C179F8: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C17A09: BranchF loc_C17A15
  loc_C17A0C: LitStr vbNullString
  loc_C17A0F: FStStrCopy var_88
  loc_C17A12: Branch loc_C17AFC
  loc_C17A15: LitVarI2 var_B8, 1
  loc_C17A1A: LitI4 1
  loc_C17A1F: ILdRf var_8C
  loc_C17A22: ImpAdCallI2 Mid$(, , )
  loc_C17A27: FStStrNoPop var_90
  loc_C17A2A: LitStr "0"
  loc_C17A2D: NeStr
  loc_C17A2F: LitVarI2 var_D8, 2
  loc_C17A34: LitI4 9
  loc_C17A39: ILdRf var_8C
  loc_C17A3C: ImpAdCallI2 Mid$(, , )
  loc_C17A41: FStStrNoPop ValidaCodiCuco
  loc_C17A44: LitStr "00"
  loc_C17A47: EqStr
  loc_C17A49: AndI4
  loc_C17A4A: LitVarI2 var_F8, 2
  loc_C17A4F: LitI4 7
  loc_C17A54: ILdRf var_8C
  loc_C17A57: ImpAdCallI2 Mid$(, , )
  loc_C17A5C: FStStrNoPop var_FC
  loc_C17A5F: LitStr "00"
  loc_C17A62: EqStr
  loc_C17A64: AndI4
  loc_C17A65: LitVarI2 var_11C, 2
  loc_C17A6A: LitI4 5
  loc_C17A6F: ILdRf var_8C
  loc_C17A72: ImpAdCallI2 Mid$(, , )
  loc_C17A77: FStStrNoPop var_120
  loc_C17A7A: LitStr "00"
  loc_C17A7D: EqStr
  loc_C17A7F: AndI4
  loc_C17A80: LitVarI2 var_140, 1
  loc_C17A85: LitI4 4
  loc_C17A8A: ILdRf var_8C
  loc_C17A8D: ImpAdCallI2 Mid$(, , )
  loc_C17A92: FStStrNoPop var_144
  loc_C17A95: LitStr "0"
  loc_C17A98: EqStr
  loc_C17A9A: AndI4
  loc_C17A9B: LitVarI2 var_164, 1
  loc_C17AA0: LitI4 3
  loc_C17AA5: ILdRf var_8C
  loc_C17AA8: ImpAdCallI2 Mid$(, , )
  loc_C17AAD: FStStrNoPop var_168
  loc_C17AB0: LitStr "0"
  loc_C17AB3: EqStr
  loc_C17AB5: AndI4
  loc_C17AB6: LitVarI2 var_188, 1
  loc_C17ABB: LitI4 2
  loc_C17AC0: ILdRf var_8C
  loc_C17AC3: ImpAdCallI2 Mid$(, , )
  loc_C17AC8: FStStrNoPop var_18C
  loc_C17ACB: LitStr "0"
  loc_C17ACE: EqStr
  loc_C17AD0: AndI4
  loc_C17AD1: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C17AE2: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C17AF3: BranchF loc_C17AFC
  loc_C17AF6: LitStr vbNullString
  loc_C17AF9: FStStrCopy var_88
  loc_C17AFC: ILdRf var_88
  loc_C17AFF: LitStr vbNullString
  loc_C17B02: NeStr
  loc_C17B04: BranchF loc_C17B0D
  loc_C17B07: ExitProcCbHresult
  loc_C17B0D: FLdRfVar var_1B2
  loc_C17B10: ILdRf var_8C
  loc_C17B13: from_stack_2v = NivelCuentaContable(from_stack_1v)
  loc_C17B18: FLdUI1
  loc_C17B1C: CI2UI1
  loc_C17B1E: LitI2_Byte 1
  loc_C17B20: GtI2
  loc_C17B21: BranchF loc_C17E10
  loc_C17B24: FLdRfVar var_1B2
  loc_C17B27: ILdRf var_8C
  loc_C17B2A: from_stack_2v = NivelCuentaContable(from_stack_1v)
  loc_C17B2F: LitStr "SELECT * FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_C17B32: FLdI2 PeriInfo
  loc_C17B35: CStrUI1
  loc_C17B37: FStStrNoPop var_90
  loc_C17B3A: ConcatStr
  loc_C17B3B: FStStrNoPop ValidaCodiCuco
  loc_C17B3E: LitStr " AND CodiCuco = '"
  loc_C17B41: ConcatStr
  loc_C17B42: FStStrNoPop var_120
  loc_C17B45: FLdRfVar var_FC
  loc_C17B48: FLdUI1
  loc_C17B4C: CI2UI1
  loc_C17B4E: ILdRf var_8C
  loc_C17B51: from_stack_3v = CuentaContableNivelSuperior(from_stack_1v, from_stack_2v)
  loc_C17B56: ILdRf var_FC
  loc_C17B59: ConcatStr
  loc_C17B5A: FStStrNoPop var_144
  loc_C17B5D: LitStr "'"
  loc_C17B60: ConcatStr
  loc_C17B61: FStStrNoPop var_168
  loc_C17B64: Call EjecutarRsCls(from_stack_1v)
  loc_C17B69: FFreeStr var_90 = "": ValidaCodiCuco = "": var_120 = "": var_FC = "": var_144 = ""
  loc_C17B78: FLdRfVar var_1B8
  loc_C17B7B: FLdPr Me
  loc_C17B7E: MemLdPr global_56
  loc_C17B81:  = Me.RecordCount
  loc_C17B86: ILdRf var_1B8
  loc_C17B89: LitI4 0
  loc_C17B8E: EqI4
  loc_C17B8F: BranchF loc_C17BF3
  loc_C17B92: FLdRfVar var_1B2
  loc_C17B95: ILdRf var_8C
  loc_C17B98: from_stack_2v = NivelCuentaContable(from_stack_1v)
  loc_C17B9D: LitStr "La Cuenta Contable: "
  loc_C17BA0: FLdRfVar var_90
  loc_C17BA3: FLdUI1
  loc_C17BA7: CI2UI1
  loc_C17BA9: ILdRf var_8C
  loc_C17BAC: from_stack_3v = CuentaContableNivelSuperior(from_stack_1v, from_stack_2v)
  loc_C17BB1: ILdRf var_90
  loc_C17BB4: ConcatStr
  loc_C17BB5: FStStrNoPop ValidaCodiCuco
  loc_C17BB8: LitStr " de Nivel "
  loc_C17BBB: ConcatStr
  loc_C17BBC: FStStrNoPop var_FC
  loc_C17BBF: FLdRfVar var_1BA
  loc_C17BC2: ILdRf var_8C
  loc_C17BC5: from_stack_2v = NivelCuentaContable(from_stack_1v)
  loc_C17BCA: FLdUI1
  loc_C17BCE: CI2UI1
  loc_C17BD0: LitI2_Byte 1
  loc_C17BD2: SubI2
  loc_C17BD3: CStrUI1
  loc_C17BD5: FStStrNoPop var_120
  loc_C17BD8: ConcatStr
  loc_C17BD9: FStStrNoPop var_144
  loc_C17BDC: LitStr " NO EXISTE. Verifique..."
  loc_C17BDF: ConcatStr
  loc_C17BE0: FStStr var_88
  loc_C17BE3: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = ""
  loc_C17BF0: Branch loc_C17E10
  loc_C17BF3: LitStr "SELECT * FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_C17BF6: FLdI2 PeriInfo
  loc_C17BF9: CStrUI1
  loc_C17BFB: FStStrNoPop var_90
  loc_C17BFE: ConcatStr
  loc_C17BFF: FStStrNoPop ValidaCodiCuco
  loc_C17C02: LitStr " AND CodiCuco = '"
  loc_C17C05: ConcatStr
  loc_C17C06: FStStrNoPop var_FC
  loc_C17C09: ILdRf var_8C
  loc_C17C0C: ConcatStr
  loc_C17C0D: FStStrNoPop var_120
  loc_C17C10: LitStr "'"
  loc_C17C13: ConcatStr
  loc_C17C14: FStStrNoPop var_144
  loc_C17C17: Call EjecutarRsCls(from_stack_1v)
  loc_C17C1C: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = ""
  loc_C17C29: FLdRfVar var_1B8
  loc_C17C2C: FLdPr Me
  loc_C17C2F: MemLdPr global_56
  loc_C17C32:  = Me.RecordCount
  loc_C17C37: ILdRf var_1B8
  loc_C17C3A: LitI4 0
  loc_C17C3F: GtI4
  loc_C17C40: BranchF loc_C17C5D
  loc_C17C43: LitStr "La Cuenta Contable "
  loc_C17C46: ILdRf var_8C
  loc_C17C49: ConcatStr
  loc_C17C4A: FStStrNoPop var_90
  loc_C17C4D: LitStr " YA EXISTE. Verifique..."
  loc_C17C50: ConcatStr
  loc_C17C51: FStStr var_88
  loc_C17C54: FFree1Str var_90
  loc_C17C57: ExitProcCbHresult
  loc_C17C5D: FLdRfVar var_1B2
  loc_C17C60: ILdRf var_8C
  loc_C17C63: from_stack_2v = NivelCuentaContable(from_stack_1v)
  loc_C17C68: LitStr "SELECT * FROM cajaauto WHERE PeriInfo = "
  loc_C17C6B: FLdI2 PeriInfo
  loc_C17C6E: CStrUI1
  loc_C17C70: FStStrNoPop var_90
  loc_C17C73: ConcatStr
  loc_C17C74: FStStrNoPop ValidaCodiCuco
  loc_C17C77: LitStr " AND CodiCuco = '"
  loc_C17C7A: ConcatStr
  loc_C17C7B: FStStrNoPop var_120
  loc_C17C7E: FLdRfVar var_FC
  loc_C17C81: FLdUI1
  loc_C17C85: CI2UI1
  loc_C17C87: ILdRf var_8C
  loc_C17C8A: from_stack_3v = CuentaContableNivelSuperior(from_stack_1v, from_stack_2v)
  loc_C17C8F: ILdRf var_FC
  loc_C17C92: ConcatStr
  loc_C17C93: FStStrNoPop var_144
  loc_C17C96: LitStr "' LIMIT 1;"
  loc_C17C99: ConcatStr
  loc_C17C9A: FStStrNoPop var_168
  loc_C17C9D: Call EjecutarRsCls(from_stack_1v)
  loc_C17CA2: FFreeStr var_90 = "": ValidaCodiCuco = "": var_120 = "": var_FC = "": var_144 = ""
  loc_C17CB1: FLdRfVar var_1B8
  loc_C17CB4: FLdPr Me
  loc_C17CB7: MemLdPr global_56
  loc_C17CBA:  = Me.RecordCount
  loc_C17CBF: ILdRf var_1B8
  loc_C17CC2: LitI4 0
  loc_C17CC7: GtI4
  loc_C17CC8: BranchF loc_C17D53
  loc_C17CCB: LitStr "Municipalidad de Guaymallén"
  loc_C17CCE: LitStr "Municipalidad de Tupungato"
  loc_C17CD1: EqStr
  loc_C17CD3: BranchF loc_C17D19
  loc_C17CD6: FLdRfVar var_1B2
  loc_C17CD9: ILdRf var_8C
  loc_C17CDC: from_stack_2v = NivelCuentaContable(from_stack_1v)
  loc_C17CE1: FLdRfVar var_90
  loc_C17CE4: FLdUI1
  loc_C17CE8: CI2UI1
  loc_C17CEA: ILdRf var_8C
  loc_C17CED: from_stack_3v = CuentaContableNivelSuperior(from_stack_1v, from_stack_2v)
  loc_C17CF2: LitI4 0
  loc_C17CF7: LitStr "Advertencia: La Cuenta Contable "
  loc_C17CFA: ILdRf var_90
  loc_C17CFD: ConcatStr
  loc_C17CFE: FStStrNoPop ValidaCodiCuco
  loc_C17D01: LitStr " tiene Asientos de Crédito Presupuestario. Verifique..."
  loc_C17D04: ConcatStr
  loc_C17D05: FStStrNoPop var_FC
  loc_C17D08: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C17D0D: FFreeStr var_90 = "": ValidaCodiCuco = ""
  loc_C17D16: Branch loc_C17D53
  loc_C17D19: FLdRfVar var_1B2
  loc_C17D1C: ILdRf var_8C
  loc_C17D1F: from_stack_2v = NivelCuentaContable(from_stack_1v)
  loc_C17D24: LitStr "La Cuenta Contable "
  loc_C17D27: FLdRfVar var_90
  loc_C17D2A: FLdUI1
  loc_C17D2E: CI2UI1
  loc_C17D30: ILdRf var_8C
  loc_C17D33: from_stack_3v = CuentaContableNivelSuperior(from_stack_1v, from_stack_2v)
  loc_C17D38: ILdRf var_90
  loc_C17D3B: ConcatStr
  loc_C17D3C: FStStrNoPop ValidaCodiCuco
  loc_C17D3F: LitStr " tiene Asientos de Crédito Presupuestario. Verifique..."
  loc_C17D42: ConcatStr
  loc_C17D43: FStStr var_88
  loc_C17D46: FFreeStr var_90 = ""
  loc_C17D4D: ExitProcCbHresult
  loc_C17D53: FLdRfVar var_1B2
  loc_C17D56: ILdRf var_8C
  loc_C17D59: from_stack_2v = NivelCuentaContable(from_stack_1v)
  loc_C17D5E: LitStr "SELECT a.*"
  loc_C17D61: LitStr " FROM moviasiento ma"
  loc_C17D64: ConcatStr
  loc_C17D65: FStStrNoPop var_90
  loc_C17D68: LitStr " INNER JOIN asiento a ON a.PeriInfo = ma.PeriInfo AND a.CodiAsie = ma.CodiAsie"
  loc_C17D6B: ConcatStr
  loc_C17D6C: FStStrNoPop ValidaCodiCuco
  loc_C17D6F: LitStr " WHERE ma.PeriInfo = "
  loc_C17D72: ConcatStr
  loc_C17D73: FStStrNoPop var_FC
  loc_C17D76: FLdI2 PeriInfo
  loc_C17D79: CStrUI1
  loc_C17D7B: FStStrNoPop var_120
  loc_C17D7E: ConcatStr
  loc_C17D7F: FStStrNoPop var_144
  loc_C17D82: LitStr " AND ma.CodiCuco = '"
  loc_C17D85: ConcatStr
  loc_C17D86: FStStrNoPop var_18C
  loc_C17D89: FLdRfVar var_168
  loc_C17D8C: FLdUI1
  loc_C17D90: CI2UI1
  loc_C17D92: ILdRf var_8C
  loc_C17D95: from_stack_3v = CuentaContableNivelSuperior(from_stack_1v, from_stack_2v)
  loc_C17D9A: ILdRf var_168
  loc_C17D9D: ConcatStr
  loc_C17D9E: FStStrNoPop var_1B0
  loc_C17DA1: LitStr "' LIMIT 1;"
  loc_C17DA4: ConcatStr
  loc_C17DA5: FStStrNoPop var_1C0
  loc_C17DA8: Call EjecutarRsCls(from_stack_1v)
  loc_C17DAD: FFreeStr var_90 = "": ValidaCodiCuco = "": var_FC = "": var_120 = "": var_144 = "": var_18C = "": var_168 = "": var_1B0 = ""
  loc_C17DC2: FLdRfVar var_1B8
  loc_C17DC5: FLdPr Me
  loc_C17DC8: MemLdPr global_56
  loc_C17DCB:  = Me.RecordCount
  loc_C17DD0: ILdRf var_1B8
  loc_C17DD3: LitI4 0
  loc_C17DD8: GtI4
  loc_C17DD9: BranchF loc_C17E10
  loc_C17DDC: FLdRfVar var_1B2
  loc_C17DDF: ILdRf var_8C
  loc_C17DE2: from_stack_2v = NivelCuentaContable(from_stack_1v)
  loc_C17DE7: LitStr "La Cuenta Contable "
  loc_C17DEA: FLdRfVar var_90
  loc_C17DED: FLdUI1
  loc_C17DF1: CI2UI1
  loc_C17DF3: ILdRf var_8C
  loc_C17DF6: from_stack_3v = CuentaContableNivelSuperior(from_stack_1v, from_stack_2v)
  loc_C17DFB: ILdRf var_90
  loc_C17DFE: ConcatStr
  loc_C17DFF: FStStrNoPop ValidaCodiCuco
  loc_C17E02: LitStr " tiene Asientos . Verifique..."
  loc_C17E05: ConcatStr
  loc_C17E06: FStStr var_88
  loc_C17E09: FFreeStr var_90 = ""
  loc_C17E10: ExitProcCbHresult
End Function

Public Function NivelCuentaContable(CuentaContable) 'C0CEF4
  'Data Table: 414A60
  loc_C0A620: ILdRf CuentaContable
  loc_C0A623: FStStrCopy var_8C
  loc_C0A626: LitI2_Byte 0
  loc_C0A628: CUI1I2
  loc_C0A62A: FStUI1 var_86
  loc_C0A62E: LitStr "Municipalidad de Guaymallén"
  loc_C0A631: FStStrCopy var_90
  loc_C0A634: ILdRf var_90
  loc_C0A637: LitStr "Municipalidad de Tunuyán"
  loc_C0A63A: EqStr
  loc_C0A63C: BranchF loc_C0ACB3
  loc_C0A63F: LitVarI2 var_B0, 2
  loc_C0A644: LitI4 &HA
  loc_C0A649: ILdRf var_8C
  loc_C0A64C: ImpAdCallI2 Mid$(, , )
  loc_C0A651: FStStrNoPop var_B4
  loc_C0A654: LitStr "00"
  loc_C0A657: NeStr
  loc_C0A659: LitVarI2 var_D4, 2
  loc_C0A65E: LitI4 8
  loc_C0A663: ILdRf var_8C
  loc_C0A666: ImpAdCallI2 Mid$(, , )
  loc_C0A66B: FStStrNoPop var_D8
  loc_C0A66E: LitStr "00"
  loc_C0A671: NeStr
  loc_C0A673: AndI4
  loc_C0A674: LitVarI2 var_F8, 2
  loc_C0A679: LitI4 6
  loc_C0A67E: ILdRf var_8C
  loc_C0A681: ImpAdCallI2 Mid$(, , )
  loc_C0A686: FStStrNoPop var_FC
  loc_C0A689: LitStr "00"
  loc_C0A68C: NeStr
  loc_C0A68E: AndI4
  loc_C0A68F: LitVarI2 var_11C, 2
  loc_C0A694: LitI4 4
  loc_C0A699: ILdRf var_8C
  loc_C0A69C: ImpAdCallI2 Mid$(, , )
  loc_C0A6A1: FStStrNoPop var_120
  loc_C0A6A4: LitStr "00"
  loc_C0A6A7: NeStr
  loc_C0A6A9: AndI4
  loc_C0A6AA: LitVarI2 var_140, 1
  loc_C0A6AF: LitI4 3
  loc_C0A6B4: ILdRf var_8C
  loc_C0A6B7: ImpAdCallI2 Mid$(, , )
  loc_C0A6BC: FStStrNoPop var_144
  loc_C0A6BF: LitStr "0"
  loc_C0A6C2: NeStr
  loc_C0A6C4: AndI4
  loc_C0A6C5: LitVarI2 var_164, 1
  loc_C0A6CA: LitI4 2
  loc_C0A6CF: ILdRf var_8C
  loc_C0A6D2: ImpAdCallI2 Mid$(, , )
  loc_C0A6D7: FStStrNoPop var_168
  loc_C0A6DA: LitStr "0"
  loc_C0A6DD: NeStr
  loc_C0A6DF: AndI4
  loc_C0A6E0: LitVarI2 var_188, 1
  loc_C0A6E5: LitI4 1
  loc_C0A6EA: ILdRf var_8C
  loc_C0A6ED: ImpAdCallI2 Mid$(, , )
  loc_C0A6F2: FStStrNoPop var_18C
  loc_C0A6F5: LitStr "0"
  loc_C0A6F8: NeStr
  loc_C0A6FA: AndI4
  loc_C0A6FB: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C0A70C: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C0A71D: BranchF loc_C0A72B
  loc_C0A720: LitI2_Byte 7
  loc_C0A722: CUI1I2
  loc_C0A724: FStUI1 var_86
  loc_C0A728: Branch loc_C0ACB0
  loc_C0A72B: LitVarI2 var_B0, 2
  loc_C0A730: LitI4 8
  loc_C0A735: ILdRf var_8C
  loc_C0A738: ImpAdCallI2 Mid$(, , )
  loc_C0A73D: FStStrNoPop var_B4
  loc_C0A740: LitStr "00"
  loc_C0A743: NeStr
  loc_C0A745: LitVarI2 var_D4, 2
  loc_C0A74A: LitI4 &HA
  loc_C0A74F: ILdRf var_8C
  loc_C0A752: ImpAdCallI2 Mid$(, , )
  loc_C0A757: FStStrNoPop var_D8
  loc_C0A75A: LitStr "00"
  loc_C0A75D: EqStr
  loc_C0A75F: AndI4
  loc_C0A760: LitVarI2 var_F8, 2
  loc_C0A765: LitI4 6
  loc_C0A76A: ILdRf var_8C
  loc_C0A76D: ImpAdCallI2 Mid$(, , )
  loc_C0A772: FStStrNoPop var_FC
  loc_C0A775: LitStr "00"
  loc_C0A778: NeStr
  loc_C0A77A: AndI4
  loc_C0A77B: LitVarI2 var_11C, 2
  loc_C0A780: LitI4 4
  loc_C0A785: ILdRf var_8C
  loc_C0A788: ImpAdCallI2 Mid$(, , )
  loc_C0A78D: FStStrNoPop var_120
  loc_C0A790: LitStr "00"
  loc_C0A793: NeStr
  loc_C0A795: AndI4
  loc_C0A796: LitVarI2 var_140, 1
  loc_C0A79B: LitI4 3
  loc_C0A7A0: ILdRf var_8C
  loc_C0A7A3: ImpAdCallI2 Mid$(, , )
  loc_C0A7A8: FStStrNoPop var_144
  loc_C0A7AB: LitStr "0"
  loc_C0A7AE: NeStr
  loc_C0A7B0: AndI4
  loc_C0A7B1: LitVarI2 var_164, 1
  loc_C0A7B6: LitI4 2
  loc_C0A7BB: ILdRf var_8C
  loc_C0A7BE: ImpAdCallI2 Mid$(, , )
  loc_C0A7C3: FStStrNoPop var_168
  loc_C0A7C6: LitStr "0"
  loc_C0A7C9: NeStr
  loc_C0A7CB: AndI4
  loc_C0A7CC: LitVarI2 var_188, 1
  loc_C0A7D1: LitI4 1
  loc_C0A7D6: ILdRf var_8C
  loc_C0A7D9: ImpAdCallI2 Mid$(, , )
  loc_C0A7DE: FStStrNoPop var_18C
  loc_C0A7E1: LitStr "0"
  loc_C0A7E4: NeStr
  loc_C0A7E6: AndI4
  loc_C0A7E7: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C0A7F8: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C0A809: BranchF loc_C0A817
  loc_C0A80C: LitI2_Byte 6
  loc_C0A80E: CUI1I2
  loc_C0A810: FStUI1 var_86
  loc_C0A814: Branch loc_C0ACB0
  loc_C0A817: LitVarI2 var_B0, 2
  loc_C0A81C: LitI4 6
  loc_C0A821: ILdRf var_8C
  loc_C0A824: ImpAdCallI2 Mid$(, , )
  loc_C0A829: FStStrNoPop var_B4
  loc_C0A82C: LitStr "00"
  loc_C0A82F: NeStr
  loc_C0A831: LitVarI2 var_D4, 2
  loc_C0A836: LitI4 &HA
  loc_C0A83B: ILdRf var_8C
  loc_C0A83E: ImpAdCallI2 Mid$(, , )
  loc_C0A843: FStStrNoPop var_D8
  loc_C0A846: LitStr "00"
  loc_C0A849: EqStr
  loc_C0A84B: AndI4
  loc_C0A84C: LitVarI2 var_F8, 2
  loc_C0A851: LitI4 8
  loc_C0A856: ILdRf var_8C
  loc_C0A859: ImpAdCallI2 Mid$(, , )
  loc_C0A85E: FStStrNoPop var_FC
  loc_C0A861: LitStr "00"
  loc_C0A864: EqStr
  loc_C0A866: AndI4
  loc_C0A867: LitVarI2 var_11C, 2
  loc_C0A86C: LitI4 4
  loc_C0A871: ILdRf var_8C
  loc_C0A874: ImpAdCallI2 Mid$(, , )
  loc_C0A879: FStStrNoPop var_120
  loc_C0A87C: LitStr "00"
  loc_C0A87F: NeStr
  loc_C0A881: AndI4
  loc_C0A882: LitVarI2 var_140, 1
  loc_C0A887: LitI4 3
  loc_C0A88C: ILdRf var_8C
  loc_C0A88F: ImpAdCallI2 Mid$(, , )
  loc_C0A894: FStStrNoPop var_144
  loc_C0A897: LitStr "0"
  loc_C0A89A: NeStr
  loc_C0A89C: AndI4
  loc_C0A89D: LitVarI2 var_164, 1
  loc_C0A8A2: LitI4 2
  loc_C0A8A7: ILdRf var_8C
  loc_C0A8AA: ImpAdCallI2 Mid$(, , )
  loc_C0A8AF: FStStrNoPop var_168
  loc_C0A8B2: LitStr "0"
  loc_C0A8B5: NeStr
  loc_C0A8B7: AndI4
  loc_C0A8B8: LitVarI2 var_188, 1
  loc_C0A8BD: LitI4 1
  loc_C0A8C2: ILdRf var_8C
  loc_C0A8C5: ImpAdCallI2 Mid$(, , )
  loc_C0A8CA: FStStrNoPop var_18C
  loc_C0A8CD: LitStr "0"
  loc_C0A8D0: NeStr
  loc_C0A8D2: AndI4
  loc_C0A8D3: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C0A8E4: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C0A8F5: BranchF loc_C0A903
  loc_C0A8F8: LitI2_Byte 5
  loc_C0A8FA: CUI1I2
  loc_C0A8FC: FStUI1 var_86
  loc_C0A900: Branch loc_C0ACB0
  loc_C0A903: LitVarI2 var_B0, 2
  loc_C0A908: LitI4 4
  loc_C0A90D: ILdRf var_8C
  loc_C0A910: ImpAdCallI2 Mid$(, , )
  loc_C0A915: FStStrNoPop var_B4
  loc_C0A918: LitStr "00"
  loc_C0A91B: NeStr
  loc_C0A91D: LitVarI2 var_D4, 2
  loc_C0A922: LitI4 &HA
  loc_C0A927: ILdRf var_8C
  loc_C0A92A: ImpAdCallI2 Mid$(, , )
  loc_C0A92F: FStStrNoPop var_D8
  loc_C0A932: LitStr "00"
  loc_C0A935: EqStr
  loc_C0A937: AndI4
  loc_C0A938: LitVarI2 var_F8, 2
  loc_C0A93D: LitI4 8
  loc_C0A942: ILdRf var_8C
  loc_C0A945: ImpAdCallI2 Mid$(, , )
  loc_C0A94A: FStStrNoPop var_FC
  loc_C0A94D: LitStr "00"
  loc_C0A950: EqStr
  loc_C0A952: AndI4
  loc_C0A953: LitVarI2 var_11C, 2
  loc_C0A958: LitI4 6
  loc_C0A95D: ILdRf var_8C
  loc_C0A960: ImpAdCallI2 Mid$(, , )
  loc_C0A965: FStStrNoPop var_120
  loc_C0A968: LitStr "00"
  loc_C0A96B: EqStr
  loc_C0A96D: AndI4
  loc_C0A96E: LitVarI2 var_140, 1
  loc_C0A973: LitI4 3
  loc_C0A978: ILdRf var_8C
  loc_C0A97B: ImpAdCallI2 Mid$(, , )
  loc_C0A980: FStStrNoPop var_144
  loc_C0A983: LitStr "0"
  loc_C0A986: NeStr
  loc_C0A988: AndI4
  loc_C0A989: LitVarI2 var_164, 1
  loc_C0A98E: LitI4 2
  loc_C0A993: ILdRf var_8C
  loc_C0A996: ImpAdCallI2 Mid$(, , )
  loc_C0A99B: FStStrNoPop var_168
  loc_C0A99E: LitStr "0"
  loc_C0A9A1: NeStr
  loc_C0A9A3: AndI4
  loc_C0A9A4: LitVarI2 var_188, 1
  loc_C0A9A9: LitI4 1
  loc_C0A9AE: ILdRf var_8C
  loc_C0A9B1: ImpAdCallI2 Mid$(, , )
  loc_C0A9B6: FStStrNoPop var_18C
  loc_C0A9B9: LitStr "0"
  loc_C0A9BC: NeStr
  loc_C0A9BE: AndI4
  loc_C0A9BF: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C0A9D0: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C0A9E1: BranchF loc_C0A9EF
  loc_C0A9E4: LitI2_Byte 4
  loc_C0A9E6: CUI1I2
  loc_C0A9E8: FStUI1 var_86
  loc_C0A9EC: Branch loc_C0ACB0
  loc_C0A9EF: LitVarI2 var_B0, 1
  loc_C0A9F4: LitI4 3
  loc_C0A9F9: ILdRf var_8C
  loc_C0A9FC: ImpAdCallI2 Mid$(, , )
  loc_C0AA01: FStStrNoPop var_B4
  loc_C0AA04: LitStr "0"
  loc_C0AA07: NeStr
  loc_C0AA09: LitVarI2 var_D4, 2
  loc_C0AA0E: LitI4 &HA
  loc_C0AA13: ILdRf var_8C
  loc_C0AA16: ImpAdCallI2 Mid$(, , )
  loc_C0AA1B: FStStrNoPop var_D8
  loc_C0AA1E: LitStr "00"
  loc_C0AA21: EqStr
  loc_C0AA23: AndI4
  loc_C0AA24: LitVarI2 var_F8, 2
  loc_C0AA29: LitI4 8
  loc_C0AA2E: ILdRf var_8C
  loc_C0AA31: ImpAdCallI2 Mid$(, , )
  loc_C0AA36: FStStrNoPop var_FC
  loc_C0AA39: LitStr "00"
  loc_C0AA3C: EqStr
  loc_C0AA3E: AndI4
  loc_C0AA3F: LitVarI2 var_11C, 2
  loc_C0AA44: LitI4 6
  loc_C0AA49: ILdRf var_8C
  loc_C0AA4C: ImpAdCallI2 Mid$(, , )
  loc_C0AA51: FStStrNoPop var_120
  loc_C0AA54: LitStr "00"
  loc_C0AA57: EqStr
  loc_C0AA59: AndI4
  loc_C0AA5A: LitVarI2 var_140, 2
  loc_C0AA5F: LitI4 4
  loc_C0AA64: ILdRf var_8C
  loc_C0AA67: ImpAdCallI2 Mid$(, , )
  loc_C0AA6C: FStStrNoPop var_144
  loc_C0AA6F: LitStr "00"
  loc_C0AA72: EqStr
  loc_C0AA74: AndI4
  loc_C0AA75: LitVarI2 var_164, 1
  loc_C0AA7A: LitI4 2
  loc_C0AA7F: ILdRf var_8C
  loc_C0AA82: ImpAdCallI2 Mid$(, , )
  loc_C0AA87: FStStrNoPop var_168
  loc_C0AA8A: LitStr "0"
  loc_C0AA8D: NeStr
  loc_C0AA8F: AndI4
  loc_C0AA90: LitVarI2 var_188, 1
  loc_C0AA95: LitI4 1
  loc_C0AA9A: ILdRf var_8C
  loc_C0AA9D: ImpAdCallI2 Mid$(, , )
  loc_C0AAA2: FStStrNoPop var_18C
  loc_C0AAA5: LitStr "0"
  loc_C0AAA8: NeStr
  loc_C0AAAA: AndI4
  loc_C0AAAB: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C0AABC: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C0AACD: BranchF loc_C0AADB
  loc_C0AAD0: LitI2_Byte 3
  loc_C0AAD2: CUI1I2
  loc_C0AAD4: FStUI1 var_86
  loc_C0AAD8: Branch loc_C0ACB0
  loc_C0AADB: LitVarI2 var_B0, 1
  loc_C0AAE0: LitI4 2
  loc_C0AAE5: ILdRf var_8C
  loc_C0AAE8: ImpAdCallI2 Mid$(, , )
  loc_C0AAED: FStStrNoPop var_B4
  loc_C0AAF0: LitStr "0"
  loc_C0AAF3: NeStr
  loc_C0AAF5: LitVarI2 var_D4, 2
  loc_C0AAFA: LitI4 &HA
  loc_C0AAFF: ILdRf var_8C
  loc_C0AB02: ImpAdCallI2 Mid$(, , )
  loc_C0AB07: FStStrNoPop var_D8
  loc_C0AB0A: LitStr "00"
  loc_C0AB0D: EqStr
  loc_C0AB0F: AndI4
  loc_C0AB10: LitVarI2 var_F8, 2
  loc_C0AB15: LitI4 8
  loc_C0AB1A: ILdRf var_8C
  loc_C0AB1D: ImpAdCallI2 Mid$(, , )
  loc_C0AB22: FStStrNoPop var_FC
  loc_C0AB25: LitStr "00"
  loc_C0AB28: EqStr
  loc_C0AB2A: AndI4
  loc_C0AB2B: LitVarI2 var_11C, 2
  loc_C0AB30: LitI4 6
  loc_C0AB35: ILdRf var_8C
  loc_C0AB38: ImpAdCallI2 Mid$(, , )
  loc_C0AB3D: FStStrNoPop var_120
  loc_C0AB40: LitStr "00"
  loc_C0AB43: EqStr
  loc_C0AB45: AndI4
  loc_C0AB46: LitVarI2 var_140, 2
  loc_C0AB4B: LitI4 4
  loc_C0AB50: ILdRf var_8C
  loc_C0AB53: ImpAdCallI2 Mid$(, , )
  loc_C0AB58: FStStrNoPop var_144
  loc_C0AB5B: LitStr "00"
  loc_C0AB5E: EqStr
  loc_C0AB60: AndI4
  loc_C0AB61: LitVarI2 var_164, 1
  loc_C0AB66: LitI4 3
  loc_C0AB6B: ILdRf var_8C
  loc_C0AB6E: ImpAdCallI2 Mid$(, , )
  loc_C0AB73: FStStrNoPop var_168
  loc_C0AB76: LitStr "0"
  loc_C0AB79: EqStr
  loc_C0AB7B: AndI4
  loc_C0AB7C: LitVarI2 var_188, 1
  loc_C0AB81: LitI4 1
  loc_C0AB86: ILdRf var_8C
  loc_C0AB89: ImpAdCallI2 Mid$(, , )
  loc_C0AB8E: FStStrNoPop var_18C
  loc_C0AB91: LitStr "0"
  loc_C0AB94: NeStr
  loc_C0AB96: AndI4
  loc_C0AB97: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C0ABA8: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C0ABB9: BranchF loc_C0ABC7
  loc_C0ABBC: LitI2_Byte 2
  loc_C0ABBE: CUI1I2
  loc_C0ABC0: FStUI1 var_86
  loc_C0ABC4: Branch loc_C0ACB0
  loc_C0ABC7: LitVarI2 var_B0, 1
  loc_C0ABCC: LitI4 1
  loc_C0ABD1: ILdRf var_8C
  loc_C0ABD4: ImpAdCallI2 Mid$(, , )
  loc_C0ABD9: FStStrNoPop var_B4
  loc_C0ABDC: LitStr "0"
  loc_C0ABDF: NeStr
  loc_C0ABE1: LitVarI2 var_D4, 2
  loc_C0ABE6: LitI4 &HA
  loc_C0ABEB: ILdRf var_8C
  loc_C0ABEE: ImpAdCallI2 Mid$(, , )
  loc_C0ABF3: FStStrNoPop var_D8
  loc_C0ABF6: LitStr "00"
  loc_C0ABF9: EqStr
  loc_C0ABFB: AndI4
  loc_C0ABFC: LitVarI2 var_F8, 2
  loc_C0AC01: LitI4 8
  loc_C0AC06: ILdRf var_8C
  loc_C0AC09: ImpAdCallI2 Mid$(, , )
  loc_C0AC0E: FStStrNoPop var_FC
  loc_C0AC11: LitStr "00"
  loc_C0AC14: EqStr
  loc_C0AC16: AndI4
  loc_C0AC17: LitVarI2 var_11C, 2
  loc_C0AC1C: LitI4 6
  loc_C0AC21: ILdRf var_8C
  loc_C0AC24: ImpAdCallI2 Mid$(, , )
  loc_C0AC29: FStStrNoPop var_120
  loc_C0AC2C: LitStr "00"
  loc_C0AC2F: EqStr
  loc_C0AC31: AndI4
  loc_C0AC32: LitVarI2 var_140, 2
  loc_C0AC37: LitI4 4
  loc_C0AC3C: ILdRf var_8C
  loc_C0AC3F: ImpAdCallI2 Mid$(, , )
  loc_C0AC44: FStStrNoPop var_144
  loc_C0AC47: LitStr "00"
  loc_C0AC4A: EqStr
  loc_C0AC4C: AndI4
  loc_C0AC4D: LitVarI2 var_164, 1
  loc_C0AC52: LitI4 3
  loc_C0AC57: ILdRf var_8C
  loc_C0AC5A: ImpAdCallI2 Mid$(, , )
  loc_C0AC5F: FStStrNoPop var_168
  loc_C0AC62: LitStr "0"
  loc_C0AC65: EqStr
  loc_C0AC67: AndI4
  loc_C0AC68: LitVarI2 var_188, 1
  loc_C0AC6D: LitI4 2
  loc_C0AC72: ILdRf var_8C
  loc_C0AC75: ImpAdCallI2 Mid$(, , )
  loc_C0AC7A: FStStrNoPop var_18C
  loc_C0AC7D: LitStr "0"
  loc_C0AC80: EqStr
  loc_C0AC82: AndI4
  loc_C0AC83: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C0AC94: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C0ACA5: BranchF loc_C0ACB0
  loc_C0ACA8: LitI2_Byte 1
  loc_C0ACAA: CUI1I2
  loc_C0ACAC: FStUI1 var_86
  loc_C0ACB0: Branch loc_C0CEEB
  loc_C0ACB3: ILdRf var_90
  loc_C0ACB6: LitStr "Municipalidad de General Alvear"
  loc_C0ACB9: EqStr
  loc_C0ACBB: BranchF loc_C0B18C
  loc_C0ACBE: LitVarI2 var_B0, 2
  loc_C0ACC3: LitI4 8
  loc_C0ACC8: ILdRf var_8C
  loc_C0ACCB: ImpAdCallI2 Mid$(, , )
  loc_C0ACD0: FStStrNoPop var_B4
  loc_C0ACD3: LitStr "00"
  loc_C0ACD6: NeStr
  loc_C0ACD8: LitVarI2 var_D4, 2
  loc_C0ACDD: LitI4 6
  loc_C0ACE2: ILdRf var_8C
  loc_C0ACE5: ImpAdCallI2 Mid$(, , )
  loc_C0ACEA: FStStrNoPop var_D8
  loc_C0ACED: LitStr "00"
  loc_C0ACF0: NeStr
  loc_C0ACF2: AndI4
  loc_C0ACF3: LitVarI2 var_F8, 2
  loc_C0ACF8: LitI4 4
  loc_C0ACFD: ILdRf var_8C
  loc_C0AD00: ImpAdCallI2 Mid$(, , )
  loc_C0AD05: FStStrNoPop var_FC
  loc_C0AD08: LitStr "00"
  loc_C0AD0B: NeStr
  loc_C0AD0D: AndI4
  loc_C0AD0E: LitVarI2 var_11C, 1
  loc_C0AD13: LitI4 3
  loc_C0AD18: ILdRf var_8C
  loc_C0AD1B: ImpAdCallI2 Mid$(, , )
  loc_C0AD20: FStStrNoPop var_120
  loc_C0AD23: LitStr "0"
  loc_C0AD26: NeStr
  loc_C0AD28: AndI4
  loc_C0AD29: LitVarI2 var_140, 1
  loc_C0AD2E: LitI4 2
  loc_C0AD33: ILdRf var_8C
  loc_C0AD36: ImpAdCallI2 Mid$(, , )
  loc_C0AD3B: FStStrNoPop var_144
  loc_C0AD3E: LitStr "0"
  loc_C0AD41: NeStr
  loc_C0AD43: AndI4
  loc_C0AD44: LitVarI2 var_164, 1
  loc_C0AD49: LitI4 1
  loc_C0AD4E: ILdRf var_8C
  loc_C0AD51: ImpAdCallI2 Mid$(, , )
  loc_C0AD56: FStStrNoPop var_168
  loc_C0AD59: LitStr "0"
  loc_C0AD5C: NeStr
  loc_C0AD5E: AndI4
  loc_C0AD5F: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0AD6E: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0AD7D: BranchF loc_C0AD8B
  loc_C0AD80: LitI2_Byte 6
  loc_C0AD82: CUI1I2
  loc_C0AD84: FStUI1 var_86
  loc_C0AD88: Branch loc_C0B189
  loc_C0AD8B: LitVarI2 var_B0, 2
  loc_C0AD90: LitI4 6
  loc_C0AD95: ILdRf var_8C
  loc_C0AD98: ImpAdCallI2 Mid$(, , )
  loc_C0AD9D: FStStrNoPop var_B4
  loc_C0ADA0: LitStr "00"
  loc_C0ADA3: NeStr
  loc_C0ADA5: LitVarI2 var_D4, 2
  loc_C0ADAA: LitI4 8
  loc_C0ADAF: ILdRf var_8C
  loc_C0ADB2: ImpAdCallI2 Mid$(, , )
  loc_C0ADB7: FStStrNoPop var_D8
  loc_C0ADBA: LitStr "00"
  loc_C0ADBD: EqStr
  loc_C0ADBF: AndI4
  loc_C0ADC0: LitVarI2 var_F8, 2
  loc_C0ADC5: LitI4 4
  loc_C0ADCA: ILdRf var_8C
  loc_C0ADCD: ImpAdCallI2 Mid$(, , )
  loc_C0ADD2: FStStrNoPop var_FC
  loc_C0ADD5: LitStr "00"
  loc_C0ADD8: NeStr
  loc_C0ADDA: AndI4
  loc_C0ADDB: LitVarI2 var_11C, 1
  loc_C0ADE0: LitI4 3
  loc_C0ADE5: ILdRf var_8C
  loc_C0ADE8: ImpAdCallI2 Mid$(, , )
  loc_C0ADED: FStStrNoPop var_120
  loc_C0ADF0: LitStr "0"
  loc_C0ADF3: NeStr
  loc_C0ADF5: AndI4
  loc_C0ADF6: LitVarI2 var_140, 1
  loc_C0ADFB: LitI4 2
  loc_C0AE00: ILdRf var_8C
  loc_C0AE03: ImpAdCallI2 Mid$(, , )
  loc_C0AE08: FStStrNoPop var_144
  loc_C0AE0B: LitStr "0"
  loc_C0AE0E: NeStr
  loc_C0AE10: AndI4
  loc_C0AE11: LitVarI2 var_164, 1
  loc_C0AE16: LitI4 1
  loc_C0AE1B: ILdRf var_8C
  loc_C0AE1E: ImpAdCallI2 Mid$(, , )
  loc_C0AE23: FStStrNoPop var_168
  loc_C0AE26: LitStr "0"
  loc_C0AE29: NeStr
  loc_C0AE2B: AndI4
  loc_C0AE2C: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0AE3B: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0AE4A: BranchF loc_C0AE58
  loc_C0AE4D: LitI2_Byte 5
  loc_C0AE4F: CUI1I2
  loc_C0AE51: FStUI1 var_86
  loc_C0AE55: Branch loc_C0B189
  loc_C0AE58: LitVarI2 var_B0, 2
  loc_C0AE5D: LitI4 4
  loc_C0AE62: ILdRf var_8C
  loc_C0AE65: ImpAdCallI2 Mid$(, , )
  loc_C0AE6A: FStStrNoPop var_B4
  loc_C0AE6D: LitStr "00"
  loc_C0AE70: NeStr
  loc_C0AE72: LitVarI2 var_D4, 2
  loc_C0AE77: LitI4 8
  loc_C0AE7C: ILdRf var_8C
  loc_C0AE7F: ImpAdCallI2 Mid$(, , )
  loc_C0AE84: FStStrNoPop var_D8
  loc_C0AE87: LitStr "00"
  loc_C0AE8A: EqStr
  loc_C0AE8C: AndI4
  loc_C0AE8D: LitVarI2 var_F8, 2
  loc_C0AE92: LitI4 6
  loc_C0AE97: ILdRf var_8C
  loc_C0AE9A: ImpAdCallI2 Mid$(, , )
  loc_C0AE9F: FStStrNoPop var_FC
  loc_C0AEA2: LitStr "00"
  loc_C0AEA5: EqStr
  loc_C0AEA7: AndI4
  loc_C0AEA8: LitVarI2 var_11C, 1
  loc_C0AEAD: LitI4 3
  loc_C0AEB2: ILdRf var_8C
  loc_C0AEB5: ImpAdCallI2 Mid$(, , )
  loc_C0AEBA: FStStrNoPop var_120
  loc_C0AEBD: LitStr "0"
  loc_C0AEC0: NeStr
  loc_C0AEC2: AndI4
  loc_C0AEC3: LitVarI2 var_140, 1
  loc_C0AEC8: LitI4 2
  loc_C0AECD: ILdRf var_8C
  loc_C0AED0: ImpAdCallI2 Mid$(, , )
  loc_C0AED5: FStStrNoPop var_144
  loc_C0AED8: LitStr "0"
  loc_C0AEDB: NeStr
  loc_C0AEDD: AndI4
  loc_C0AEDE: LitVarI2 var_164, 1
  loc_C0AEE3: LitI4 1
  loc_C0AEE8: ILdRf var_8C
  loc_C0AEEB: ImpAdCallI2 Mid$(, , )
  loc_C0AEF0: FStStrNoPop var_168
  loc_C0AEF3: LitStr "0"
  loc_C0AEF6: NeStr
  loc_C0AEF8: AndI4
  loc_C0AEF9: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0AF08: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0AF17: BranchF loc_C0AF25
  loc_C0AF1A: LitI2_Byte 4
  loc_C0AF1C: CUI1I2
  loc_C0AF1E: FStUI1 var_86
  loc_C0AF22: Branch loc_C0B189
  loc_C0AF25: LitVarI2 var_B0, 1
  loc_C0AF2A: LitI4 3
  loc_C0AF2F: ILdRf var_8C
  loc_C0AF32: ImpAdCallI2 Mid$(, , )
  loc_C0AF37: FStStrNoPop var_B4
  loc_C0AF3A: LitStr "0"
  loc_C0AF3D: NeStr
  loc_C0AF3F: LitVarI2 var_D4, 2
  loc_C0AF44: LitI4 8
  loc_C0AF49: ILdRf var_8C
  loc_C0AF4C: ImpAdCallI2 Mid$(, , )
  loc_C0AF51: FStStrNoPop var_D8
  loc_C0AF54: LitStr "00"
  loc_C0AF57: EqStr
  loc_C0AF59: AndI4
  loc_C0AF5A: LitVarI2 var_F8, 2
  loc_C0AF5F: LitI4 6
  loc_C0AF64: ILdRf var_8C
  loc_C0AF67: ImpAdCallI2 Mid$(, , )
  loc_C0AF6C: FStStrNoPop var_FC
  loc_C0AF6F: LitStr "00"
  loc_C0AF72: EqStr
  loc_C0AF74: AndI4
  loc_C0AF75: LitVarI2 var_11C, 2
  loc_C0AF7A: LitI4 4
  loc_C0AF7F: ILdRf var_8C
  loc_C0AF82: ImpAdCallI2 Mid$(, , )
  loc_C0AF87: FStStrNoPop var_120
  loc_C0AF8A: LitStr "00"
  loc_C0AF8D: EqStr
  loc_C0AF8F: AndI4
  loc_C0AF90: LitVarI2 var_140, 1
  loc_C0AF95: LitI4 2
  loc_C0AF9A: ILdRf var_8C
  loc_C0AF9D: ImpAdCallI2 Mid$(, , )
  loc_C0AFA2: FStStrNoPop var_144
  loc_C0AFA5: LitStr "0"
  loc_C0AFA8: NeStr
  loc_C0AFAA: AndI4
  loc_C0AFAB: LitVarI2 var_164, 1
  loc_C0AFB0: LitI4 1
  loc_C0AFB5: ILdRf var_8C
  loc_C0AFB8: ImpAdCallI2 Mid$(, , )
  loc_C0AFBD: FStStrNoPop var_168
  loc_C0AFC0: LitStr "0"
  loc_C0AFC3: NeStr
  loc_C0AFC5: AndI4
  loc_C0AFC6: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0AFD5: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0AFE4: BranchF loc_C0AFF2
  loc_C0AFE7: LitI2_Byte 3
  loc_C0AFE9: CUI1I2
  loc_C0AFEB: FStUI1 var_86
  loc_C0AFEF: Branch loc_C0B189
  loc_C0AFF2: LitVarI2 var_B0, 1
  loc_C0AFF7: LitI4 2
  loc_C0AFFC: ILdRf var_8C
  loc_C0AFFF: ImpAdCallI2 Mid$(, , )
  loc_C0B004: FStStrNoPop var_B4
  loc_C0B007: LitStr "0"
  loc_C0B00A: NeStr
  loc_C0B00C: LitVarI2 var_D4, 2
  loc_C0B011: LitI4 8
  loc_C0B016: ILdRf var_8C
  loc_C0B019: ImpAdCallI2 Mid$(, , )
  loc_C0B01E: FStStrNoPop var_D8
  loc_C0B021: LitStr "00"
  loc_C0B024: EqStr
  loc_C0B026: AndI4
  loc_C0B027: LitVarI2 var_F8, 2
  loc_C0B02C: LitI4 6
  loc_C0B031: ILdRf var_8C
  loc_C0B034: ImpAdCallI2 Mid$(, , )
  loc_C0B039: FStStrNoPop var_FC
  loc_C0B03C: LitStr "00"
  loc_C0B03F: EqStr
  loc_C0B041: AndI4
  loc_C0B042: LitVarI2 var_11C, 2
  loc_C0B047: LitI4 4
  loc_C0B04C: ILdRf var_8C
  loc_C0B04F: ImpAdCallI2 Mid$(, , )
  loc_C0B054: FStStrNoPop var_120
  loc_C0B057: LitStr "00"
  loc_C0B05A: EqStr
  loc_C0B05C: AndI4
  loc_C0B05D: LitVarI2 var_140, 1
  loc_C0B062: LitI4 3
  loc_C0B067: ILdRf var_8C
  loc_C0B06A: ImpAdCallI2 Mid$(, , )
  loc_C0B06F: FStStrNoPop var_144
  loc_C0B072: LitStr "0"
  loc_C0B075: EqStr
  loc_C0B077: AndI4
  loc_C0B078: LitVarI2 var_164, 1
  loc_C0B07D: LitI4 1
  loc_C0B082: ILdRf var_8C
  loc_C0B085: ImpAdCallI2 Mid$(, , )
  loc_C0B08A: FStStrNoPop var_168
  loc_C0B08D: LitStr "0"
  loc_C0B090: NeStr
  loc_C0B092: AndI4
  loc_C0B093: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0B0A2: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0B0B1: BranchF loc_C0B0BF
  loc_C0B0B4: LitI2_Byte 2
  loc_C0B0B6: CUI1I2
  loc_C0B0B8: FStUI1 var_86
  loc_C0B0BC: Branch loc_C0B189
  loc_C0B0BF: LitVarI2 var_B0, 1
  loc_C0B0C4: LitI4 1
  loc_C0B0C9: ILdRf var_8C
  loc_C0B0CC: ImpAdCallI2 Mid$(, , )
  loc_C0B0D1: FStStrNoPop var_B4
  loc_C0B0D4: LitStr "0"
  loc_C0B0D7: NeStr
  loc_C0B0D9: LitVarI2 var_D4, 2
  loc_C0B0DE: LitI4 8
  loc_C0B0E3: ILdRf var_8C
  loc_C0B0E6: ImpAdCallI2 Mid$(, , )
  loc_C0B0EB: FStStrNoPop var_D8
  loc_C0B0EE: LitStr "00"
  loc_C0B0F1: EqStr
  loc_C0B0F3: AndI4
  loc_C0B0F4: LitVarI2 var_F8, 2
  loc_C0B0F9: LitI4 6
  loc_C0B0FE: ILdRf var_8C
  loc_C0B101: ImpAdCallI2 Mid$(, , )
  loc_C0B106: FStStrNoPop var_FC
  loc_C0B109: LitStr "00"
  loc_C0B10C: EqStr
  loc_C0B10E: AndI4
  loc_C0B10F: LitVarI2 var_11C, 2
  loc_C0B114: LitI4 4
  loc_C0B119: ILdRf var_8C
  loc_C0B11C: ImpAdCallI2 Mid$(, , )
  loc_C0B121: FStStrNoPop var_120
  loc_C0B124: LitStr "00"
  loc_C0B127: EqStr
  loc_C0B129: AndI4
  loc_C0B12A: LitVarI2 var_140, 1
  loc_C0B12F: LitI4 3
  loc_C0B134: ILdRf var_8C
  loc_C0B137: ImpAdCallI2 Mid$(, , )
  loc_C0B13C: FStStrNoPop var_144
  loc_C0B13F: LitStr "0"
  loc_C0B142: EqStr
  loc_C0B144: AndI4
  loc_C0B145: LitVarI2 var_164, 1
  loc_C0B14A: LitI4 2
  loc_C0B14F: ILdRf var_8C
  loc_C0B152: ImpAdCallI2 Mid$(, , )
  loc_C0B157: FStStrNoPop var_168
  loc_C0B15A: LitStr "0"
  loc_C0B15D: EqStr
  loc_C0B15F: AndI4
  loc_C0B160: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0B16F: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0B17E: BranchF loc_C0B189
  loc_C0B181: LitI2_Byte 1
  loc_C0B183: CUI1I2
  loc_C0B185: FStUI1 var_86
  loc_C0B189: Branch loc_C0CEEB
  loc_C0B18C: ILdRf var_90
  loc_C0B18F: LitStr "Municipalidad de Tupungato"
  loc_C0B192: EqStr
  loc_C0B194: BranchF loc_C0B9EF
  loc_C0B197: LitVarI2 var_B0, 2
  loc_C0B19C: LitI4 &HB
  loc_C0B1A1: ILdRf var_8C
  loc_C0B1A4: ImpAdCallI2 Mid$(, , )
  loc_C0B1A9: FStStrNoPop var_B4
  loc_C0B1AC: LitStr "00"
  loc_C0B1AF: NeStr
  loc_C0B1B1: LitVarI2 var_D4, 2
  loc_C0B1B6: LitI4 9
  loc_C0B1BB: ILdRf var_8C
  loc_C0B1BE: ImpAdCallI2 Mid$(, , )
  loc_C0B1C3: FStStrNoPop var_D8
  loc_C0B1C6: LitStr "00"
  loc_C0B1C9: NeStr
  loc_C0B1CB: AndI4
  loc_C0B1CC: LitVarI2 var_F8, 2
  loc_C0B1D1: LitI4 7
  loc_C0B1D6: ILdRf var_8C
  loc_C0B1D9: ImpAdCallI2 Mid$(, , )
  loc_C0B1DE: FStStrNoPop var_FC
  loc_C0B1E1: LitStr "00"
  loc_C0B1E4: NeStr
  loc_C0B1E6: AndI4
  loc_C0B1E7: LitVarI2 var_11C, 2
  loc_C0B1EC: LitI4 5
  loc_C0B1F1: ILdRf var_8C
  loc_C0B1F4: ImpAdCallI2 Mid$(, , )
  loc_C0B1F9: FStStrNoPop var_120
  loc_C0B1FC: LitStr "00"
  loc_C0B1FF: NeStr
  loc_C0B201: AndI4
  loc_C0B202: LitVarI2 var_140, 1
  loc_C0B207: LitI4 4
  loc_C0B20C: ILdRf var_8C
  loc_C0B20F: ImpAdCallI2 Mid$(, , )
  loc_C0B214: FStStrNoPop var_144
  loc_C0B217: LitStr "0"
  loc_C0B21A: NeStr
  loc_C0B21C: AndI4
  loc_C0B21D: LitVarI2 var_164, 1
  loc_C0B222: LitI4 3
  loc_C0B227: ILdRf var_8C
  loc_C0B22A: ImpAdCallI2 Mid$(, , )
  loc_C0B22F: FStStrNoPop var_168
  loc_C0B232: LitStr "0"
  loc_C0B235: NeStr
  loc_C0B237: AndI4
  loc_C0B238: LitVarI2 var_188, 1
  loc_C0B23D: LitI4 2
  loc_C0B242: ILdRf var_8C
  loc_C0B245: ImpAdCallI2 Mid$(, , )
  loc_C0B24A: FStStrNoPop var_18C
  loc_C0B24D: LitStr "0"
  loc_C0B250: NeStr
  loc_C0B252: AndI4
  loc_C0B253: LitVarI2 var_1AC, 1
  loc_C0B258: LitI4 1
  loc_C0B25D: ILdRf var_8C
  loc_C0B260: ImpAdCallI2 Mid$(, , )
  loc_C0B265: FStStrNoPop var_1B0
  loc_C0B268: LitStr "0"
  loc_C0B26B: NeStr
  loc_C0B26D: AndI4
  loc_C0B26E: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = "": var_18C = ""
  loc_C0B281: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = "": var_188 = ""
  loc_C0B294: BranchF loc_C0B2A2
  loc_C0B297: LitI2_Byte 8
  loc_C0B299: CUI1I2
  loc_C0B29B: FStUI1 var_86
  loc_C0B29F: Branch loc_C0B9EC
  loc_C0B2A2: LitVarI2 var_B0, 2
  loc_C0B2A7: LitI4 &HB
  loc_C0B2AC: ILdRf var_8C
  loc_C0B2AF: ImpAdCallI2 Mid$(, , )
  loc_C0B2B4: FStStrNoPop var_B4
  loc_C0B2B7: LitStr "00"
  loc_C0B2BA: EqStr
  loc_C0B2BC: LitVarI2 var_D4, 2
  loc_C0B2C1: LitI4 9
  loc_C0B2C6: ILdRf var_8C
  loc_C0B2C9: ImpAdCallI2 Mid$(, , )
  loc_C0B2CE: FStStrNoPop var_D8
  loc_C0B2D1: LitStr "00"
  loc_C0B2D4: NeStr
  loc_C0B2D6: AndI4
  loc_C0B2D7: LitVarI2 var_F8, 1
  loc_C0B2DC: LitI4 8
  loc_C0B2E1: ILdRf var_8C
  loc_C0B2E4: ImpAdCallI2 Mid$(, , )
  loc_C0B2E9: FStStrNoPop var_FC
  loc_C0B2EC: LitStr "0"
  loc_C0B2EF: NeStr
  loc_C0B2F1: AndI4
  loc_C0B2F2: LitVarI2 var_11C, 2
  loc_C0B2F7: LitI4 6
  loc_C0B2FC: ILdRf var_8C
  loc_C0B2FF: ImpAdCallI2 Mid$(, , )
  loc_C0B304: FStStrNoPop var_120
  loc_C0B307: LitStr "00"
  loc_C0B30A: NeStr
  loc_C0B30C: AndI4
  loc_C0B30D: LitVarI2 var_140, 2
  loc_C0B312: LitI4 4
  loc_C0B317: ILdRf var_8C
  loc_C0B31A: ImpAdCallI2 Mid$(, , )
  loc_C0B31F: FStStrNoPop var_144
  loc_C0B322: LitStr "00"
  loc_C0B325: NeStr
  loc_C0B327: AndI4
  loc_C0B328: LitVarI2 var_164, 1
  loc_C0B32D: LitI4 3
  loc_C0B332: ILdRf var_8C
  loc_C0B335: ImpAdCallI2 Mid$(, , )
  loc_C0B33A: FStStrNoPop var_168
  loc_C0B33D: LitStr "0"
  loc_C0B340: NeStr
  loc_C0B342: AndI4
  loc_C0B343: LitVarI2 var_188, 1
  loc_C0B348: LitI4 2
  loc_C0B34D: ILdRf var_8C
  loc_C0B350: ImpAdCallI2 Mid$(, , )
  loc_C0B355: FStStrNoPop var_18C
  loc_C0B358: LitStr "0"
  loc_C0B35B: NeStr
  loc_C0B35D: AndI4
  loc_C0B35E: LitVarI2 var_1AC, 1
  loc_C0B363: LitI4 1
  loc_C0B368: ILdRf var_8C
  loc_C0B36B: ImpAdCallI2 Mid$(, , )
  loc_C0B370: FStStrNoPop var_1B0
  loc_C0B373: LitStr "0"
  loc_C0B376: NeStr
  loc_C0B378: AndI4
  loc_C0B379: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = "": var_18C = ""
  loc_C0B38C: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = "": var_188 = ""
  loc_C0B39F: BranchF loc_C0B3AD
  loc_C0B3A2: LitI2_Byte 7
  loc_C0B3A4: CUI1I2
  loc_C0B3A6: FStUI1 var_86
  loc_C0B3AA: Branch loc_C0B9EC
  loc_C0B3AD: LitVarI2 var_B0, 2
  loc_C0B3B2: LitI4 &HB
  loc_C0B3B7: ILdRf var_8C
  loc_C0B3BA: ImpAdCallI2 Mid$(, , )
  loc_C0B3BF: FStStrNoPop var_B4
  loc_C0B3C2: LitStr "00"
  loc_C0B3C5: EqStr
  loc_C0B3C7: LitVarI2 var_D4, 2
  loc_C0B3CC: LitI4 9
  loc_C0B3D1: ILdRf var_8C
  loc_C0B3D4: ImpAdCallI2 Mid$(, , )
  loc_C0B3D9: FStStrNoPop var_D8
  loc_C0B3DC: LitStr "00"
  loc_C0B3DF: EqStr
  loc_C0B3E1: AndI4
  loc_C0B3E2: LitVarI2 var_F8, 1
  loc_C0B3E7: LitI4 8
  loc_C0B3EC: ILdRf var_8C
  loc_C0B3EF: ImpAdCallI2 Mid$(, , )
  loc_C0B3F4: FStStrNoPop var_FC
  loc_C0B3F7: LitStr "0"
  loc_C0B3FA: NeStr
  loc_C0B3FC: AndI4
  loc_C0B3FD: LitVarI2 var_11C, 2
  loc_C0B402: LitI4 6
  loc_C0B407: ILdRf var_8C
  loc_C0B40A: ImpAdCallI2 Mid$(, , )
  loc_C0B40F: FStStrNoPop var_120
  loc_C0B412: LitStr "00"
  loc_C0B415: NeStr
  loc_C0B417: AndI4
  loc_C0B418: LitVarI2 var_140, 2
  loc_C0B41D: LitI4 4
  loc_C0B422: ILdRf var_8C
  loc_C0B425: ImpAdCallI2 Mid$(, , )
  loc_C0B42A: FStStrNoPop var_144
  loc_C0B42D: LitStr "00"
  loc_C0B430: NeStr
  loc_C0B432: AndI4
  loc_C0B433: LitVarI2 var_164, 1
  loc_C0B438: LitI4 3
  loc_C0B43D: ILdRf var_8C
  loc_C0B440: ImpAdCallI2 Mid$(, , )
  loc_C0B445: FStStrNoPop var_168
  loc_C0B448: LitStr "0"
  loc_C0B44B: NeStr
  loc_C0B44D: AndI4
  loc_C0B44E: LitVarI2 var_188, 1
  loc_C0B453: LitI4 2
  loc_C0B458: ILdRf var_8C
  loc_C0B45B: ImpAdCallI2 Mid$(, , )
  loc_C0B460: FStStrNoPop var_18C
  loc_C0B463: LitStr "0"
  loc_C0B466: NeStr
  loc_C0B468: AndI4
  loc_C0B469: LitVarI2 var_1AC, 1
  loc_C0B46E: LitI4 1
  loc_C0B473: ILdRf var_8C
  loc_C0B476: ImpAdCallI2 Mid$(, , )
  loc_C0B47B: FStStrNoPop var_1B0
  loc_C0B47E: LitStr "0"
  loc_C0B481: NeStr
  loc_C0B483: AndI4
  loc_C0B484: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = "": var_18C = ""
  loc_C0B497: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = "": var_188 = ""
  loc_C0B4AA: BranchF loc_C0B4B8
  loc_C0B4AD: LitI2_Byte 6
  loc_C0B4AF: CUI1I2
  loc_C0B4B1: FStUI1 var_86
  loc_C0B4B5: Branch loc_C0B9EC
  loc_C0B4B8: LitVarI2 var_B0, 2
  loc_C0B4BD: LitI4 &HB
  loc_C0B4C2: ILdRf var_8C
  loc_C0B4C5: ImpAdCallI2 Mid$(, , )
  loc_C0B4CA: FStStrNoPop var_B4
  loc_C0B4CD: LitStr "00"
  loc_C0B4D0: EqStr
  loc_C0B4D2: LitVarI2 var_D4, 2
  loc_C0B4D7: LitI4 9
  loc_C0B4DC: ILdRf var_8C
  loc_C0B4DF: ImpAdCallI2 Mid$(, , )
  loc_C0B4E4: FStStrNoPop var_D8
  loc_C0B4E7: LitStr "00"
  loc_C0B4EA: EqStr
  loc_C0B4EC: AndI4
  loc_C0B4ED: LitVarI2 var_F8, 1
  loc_C0B4F2: LitI4 8
  loc_C0B4F7: ILdRf var_8C
  loc_C0B4FA: ImpAdCallI2 Mid$(, , )
  loc_C0B4FF: FStStrNoPop var_FC
  loc_C0B502: LitStr "0"
  loc_C0B505: EqStr
  loc_C0B507: AndI4
  loc_C0B508: LitVarI2 var_11C, 2
  loc_C0B50D: LitI4 6
  loc_C0B512: ILdRf var_8C
  loc_C0B515: ImpAdCallI2 Mid$(, , )
  loc_C0B51A: FStStrNoPop var_120
  loc_C0B51D: LitStr "00"
  loc_C0B520: NeStr
  loc_C0B522: AndI4
  loc_C0B523: LitVarI2 var_140, 2
  loc_C0B528: LitI4 4
  loc_C0B52D: ILdRf var_8C
  loc_C0B530: ImpAdCallI2 Mid$(, , )
  loc_C0B535: FStStrNoPop var_144
  loc_C0B538: LitStr "00"
  loc_C0B53B: NeStr
  loc_C0B53D: AndI4
  loc_C0B53E: LitVarI2 var_164, 1
  loc_C0B543: LitI4 3
  loc_C0B548: ILdRf var_8C
  loc_C0B54B: ImpAdCallI2 Mid$(, , )
  loc_C0B550: FStStrNoPop var_168
  loc_C0B553: LitStr "0"
  loc_C0B556: NeStr
  loc_C0B558: AndI4
  loc_C0B559: LitVarI2 var_188, 1
  loc_C0B55E: LitI4 2
  loc_C0B563: ILdRf var_8C
  loc_C0B566: ImpAdCallI2 Mid$(, , )
  loc_C0B56B: FStStrNoPop var_18C
  loc_C0B56E: LitStr "0"
  loc_C0B571: NeStr
  loc_C0B573: AndI4
  loc_C0B574: LitVarI2 var_1AC, 1
  loc_C0B579: LitI4 1
  loc_C0B57E: ILdRf var_8C
  loc_C0B581: ImpAdCallI2 Mid$(, , )
  loc_C0B586: FStStrNoPop var_1B0
  loc_C0B589: LitStr "0"
  loc_C0B58C: NeStr
  loc_C0B58E: AndI4
  loc_C0B58F: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = "": var_18C = ""
  loc_C0B5A2: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = "": var_188 = ""
  loc_C0B5B5: BranchF loc_C0B5C3
  loc_C0B5B8: LitI2_Byte 5
  loc_C0B5BA: CUI1I2
  loc_C0B5BC: FStUI1 var_86
  loc_C0B5C0: Branch loc_C0B9EC
  loc_C0B5C3: LitVarI2 var_B0, 2
  loc_C0B5C8: LitI4 &HB
  loc_C0B5CD: ILdRf var_8C
  loc_C0B5D0: ImpAdCallI2 Mid$(, , )
  loc_C0B5D5: FStStrNoPop var_B4
  loc_C0B5D8: LitStr "00"
  loc_C0B5DB: EqStr
  loc_C0B5DD: LitVarI2 var_D4, 2
  loc_C0B5E2: LitI4 9
  loc_C0B5E7: ILdRf var_8C
  loc_C0B5EA: ImpAdCallI2 Mid$(, , )
  loc_C0B5EF: FStStrNoPop var_D8
  loc_C0B5F2: LitStr "00"
  loc_C0B5F5: EqStr
  loc_C0B5F7: AndI4
  loc_C0B5F8: LitVarI2 var_F8, 1
  loc_C0B5FD: LitI4 8
  loc_C0B602: ILdRf var_8C
  loc_C0B605: ImpAdCallI2 Mid$(, , )
  loc_C0B60A: FStStrNoPop var_FC
  loc_C0B60D: LitStr "0"
  loc_C0B610: EqStr
  loc_C0B612: AndI4
  loc_C0B613: LitVarI2 var_11C, 2
  loc_C0B618: LitI4 6
  loc_C0B61D: ILdRf var_8C
  loc_C0B620: ImpAdCallI2 Mid$(, , )
  loc_C0B625: FStStrNoPop var_120
  loc_C0B628: LitStr "00"
  loc_C0B62B: EqStr
  loc_C0B62D: AndI4
  loc_C0B62E: LitVarI2 var_140, 2
  loc_C0B633: LitI4 4
  loc_C0B638: ILdRf var_8C
  loc_C0B63B: ImpAdCallI2 Mid$(, , )
  loc_C0B640: FStStrNoPop var_144
  loc_C0B643: LitStr "00"
  loc_C0B646: NeStr
  loc_C0B648: AndI4
  loc_C0B649: LitVarI2 var_164, 1
  loc_C0B64E: LitI4 3
  loc_C0B653: ILdRf var_8C
  loc_C0B656: ImpAdCallI2 Mid$(, , )
  loc_C0B65B: FStStrNoPop var_168
  loc_C0B65E: LitStr "0"
  loc_C0B661: NeStr
  loc_C0B663: AndI4
  loc_C0B664: LitVarI2 var_188, 1
  loc_C0B669: LitI4 2
  loc_C0B66E: ILdRf var_8C
  loc_C0B671: ImpAdCallI2 Mid$(, , )
  loc_C0B676: FStStrNoPop var_18C
  loc_C0B679: LitStr "0"
  loc_C0B67C: NeStr
  loc_C0B67E: AndI4
  loc_C0B67F: LitVarI2 var_1AC, 1
  loc_C0B684: LitI4 1
  loc_C0B689: ILdRf var_8C
  loc_C0B68C: ImpAdCallI2 Mid$(, , )
  loc_C0B691: FStStrNoPop var_1B0
  loc_C0B694: LitStr "0"
  loc_C0B697: NeStr
  loc_C0B699: AndI4
  loc_C0B69A: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = "": var_18C = ""
  loc_C0B6AD: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = "": var_188 = ""
  loc_C0B6C0: BranchF loc_C0B6CE
  loc_C0B6C3: LitI2_Byte 4
  loc_C0B6C5: CUI1I2
  loc_C0B6C7: FStUI1 var_86
  loc_C0B6CB: Branch loc_C0B9EC
  loc_C0B6CE: LitVarI2 var_B0, 2
  loc_C0B6D3: LitI4 &HB
  loc_C0B6D8: ILdRf var_8C
  loc_C0B6DB: ImpAdCallI2 Mid$(, , )
  loc_C0B6E0: FStStrNoPop var_B4
  loc_C0B6E3: LitStr "00"
  loc_C0B6E6: EqStr
  loc_C0B6E8: LitVarI2 var_D4, 2
  loc_C0B6ED: LitI4 9
  loc_C0B6F2: ILdRf var_8C
  loc_C0B6F5: ImpAdCallI2 Mid$(, , )
  loc_C0B6FA: FStStrNoPop var_D8
  loc_C0B6FD: LitStr "00"
  loc_C0B700: EqStr
  loc_C0B702: AndI4
  loc_C0B703: LitVarI2 var_F8, 1
  loc_C0B708: LitI4 8
  loc_C0B70D: ILdRf var_8C
  loc_C0B710: ImpAdCallI2 Mid$(, , )
  loc_C0B715: FStStrNoPop var_FC
  loc_C0B718: LitStr "0"
  loc_C0B71B: EqStr
  loc_C0B71D: AndI4
  loc_C0B71E: LitVarI2 var_11C, 2
  loc_C0B723: LitI4 6
  loc_C0B728: ILdRf var_8C
  loc_C0B72B: ImpAdCallI2 Mid$(, , )
  loc_C0B730: FStStrNoPop var_120
  loc_C0B733: LitStr "00"
  loc_C0B736: EqStr
  loc_C0B738: AndI4
  loc_C0B739: LitVarI2 var_140, 2
  loc_C0B73E: LitI4 4
  loc_C0B743: ILdRf var_8C
  loc_C0B746: ImpAdCallI2 Mid$(, , )
  loc_C0B74B: FStStrNoPop var_144
  loc_C0B74E: LitStr "00"
  loc_C0B751: EqStr
  loc_C0B753: AndI4
  loc_C0B754: LitVarI2 var_164, 1
  loc_C0B759: LitI4 3
  loc_C0B75E: ILdRf var_8C
  loc_C0B761: ImpAdCallI2 Mid$(, , )
  loc_C0B766: FStStrNoPop var_168
  loc_C0B769: LitStr "0"
  loc_C0B76C: NeStr
  loc_C0B76E: AndI4
  loc_C0B76F: LitVarI2 var_188, 1
  loc_C0B774: LitI4 2
  loc_C0B779: ILdRf var_8C
  loc_C0B77C: ImpAdCallI2 Mid$(, , )
  loc_C0B781: FStStrNoPop var_18C
  loc_C0B784: LitStr "0"
  loc_C0B787: NeStr
  loc_C0B789: AndI4
  loc_C0B78A: LitVarI2 var_1AC, 1
  loc_C0B78F: LitI4 1
  loc_C0B794: ILdRf var_8C
  loc_C0B797: ImpAdCallI2 Mid$(, , )
  loc_C0B79C: FStStrNoPop var_1B0
  loc_C0B79F: LitStr "0"
  loc_C0B7A2: NeStr
  loc_C0B7A4: AndI4
  loc_C0B7A5: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = "": var_18C = ""
  loc_C0B7B8: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = "": var_188 = ""
  loc_C0B7CB: BranchF loc_C0B7D9
  loc_C0B7CE: LitI2_Byte 3
  loc_C0B7D0: CUI1I2
  loc_C0B7D2: FStUI1 var_86
  loc_C0B7D6: Branch loc_C0B9EC
  loc_C0B7D9: LitVarI2 var_B0, 2
  loc_C0B7DE: LitI4 &HB
  loc_C0B7E3: ILdRf var_8C
  loc_C0B7E6: ImpAdCallI2 Mid$(, , )
  loc_C0B7EB: FStStrNoPop var_B4
  loc_C0B7EE: LitStr "00"
  loc_C0B7F1: EqStr
  loc_C0B7F3: LitVarI2 var_D4, 2
  loc_C0B7F8: LitI4 9
  loc_C0B7FD: ILdRf var_8C
  loc_C0B800: ImpAdCallI2 Mid$(, , )
  loc_C0B805: FStStrNoPop var_D8
  loc_C0B808: LitStr "00"
  loc_C0B80B: EqStr
  loc_C0B80D: AndI4
  loc_C0B80E: LitVarI2 var_F8, 1
  loc_C0B813: LitI4 8
  loc_C0B818: ILdRf var_8C
  loc_C0B81B: ImpAdCallI2 Mid$(, , )
  loc_C0B820: FStStrNoPop var_FC
  loc_C0B823: LitStr "0"
  loc_C0B826: EqStr
  loc_C0B828: AndI4
  loc_C0B829: LitVarI2 var_11C, 2
  loc_C0B82E: LitI4 6
  loc_C0B833: ILdRf var_8C
  loc_C0B836: ImpAdCallI2 Mid$(, , )
  loc_C0B83B: FStStrNoPop var_120
  loc_C0B83E: LitStr "00"
  loc_C0B841: EqStr
  loc_C0B843: AndI4
  loc_C0B844: LitVarI2 var_140, 2
  loc_C0B849: LitI4 4
  loc_C0B84E: ILdRf var_8C
  loc_C0B851: ImpAdCallI2 Mid$(, , )
  loc_C0B856: FStStrNoPop var_144
  loc_C0B859: LitStr "00"
  loc_C0B85C: EqStr
  loc_C0B85E: AndI4
  loc_C0B85F: LitVarI2 var_164, 1
  loc_C0B864: LitI4 3
  loc_C0B869: ILdRf var_8C
  loc_C0B86C: ImpAdCallI2 Mid$(, , )
  loc_C0B871: FStStrNoPop var_168
  loc_C0B874: LitStr "0"
  loc_C0B877: EqStr
  loc_C0B879: AndI4
  loc_C0B87A: LitVarI2 var_188, 1
  loc_C0B87F: LitI4 2
  loc_C0B884: ILdRf var_8C
  loc_C0B887: ImpAdCallI2 Mid$(, , )
  loc_C0B88C: FStStrNoPop var_18C
  loc_C0B88F: LitStr "0"
  loc_C0B892: NeStr
  loc_C0B894: AndI4
  loc_C0B895: LitVarI2 var_1AC, 1
  loc_C0B89A: LitI4 1
  loc_C0B89F: ILdRf var_8C
  loc_C0B8A2: ImpAdCallI2 Mid$(, , )
  loc_C0B8A7: FStStrNoPop var_1B0
  loc_C0B8AA: LitStr "0"
  loc_C0B8AD: NeStr
  loc_C0B8AF: AndI4
  loc_C0B8B0: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = "": var_18C = ""
  loc_C0B8C3: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = "": var_188 = ""
  loc_C0B8D6: BranchF loc_C0B8E4
  loc_C0B8D9: LitI2_Byte 2
  loc_C0B8DB: CUI1I2
  loc_C0B8DD: FStUI1 var_86
  loc_C0B8E1: Branch loc_C0B9EC
  loc_C0B8E4: LitVarI2 var_B0, 2
  loc_C0B8E9: LitI4 &HB
  loc_C0B8EE: ILdRf var_8C
  loc_C0B8F1: ImpAdCallI2 Mid$(, , )
  loc_C0B8F6: FStStrNoPop var_B4
  loc_C0B8F9: LitStr "00"
  loc_C0B8FC: EqStr
  loc_C0B8FE: LitVarI2 var_D4, 2
  loc_C0B903: LitI4 9
  loc_C0B908: ILdRf var_8C
  loc_C0B90B: ImpAdCallI2 Mid$(, , )
  loc_C0B910: FStStrNoPop var_D8
  loc_C0B913: LitStr "00"
  loc_C0B916: EqStr
  loc_C0B918: AndI4
  loc_C0B919: LitVarI2 var_F8, 1
  loc_C0B91E: LitI4 8
  loc_C0B923: ILdRf var_8C
  loc_C0B926: ImpAdCallI2 Mid$(, , )
  loc_C0B92B: FStStrNoPop var_FC
  loc_C0B92E: LitStr "0"
  loc_C0B931: EqStr
  loc_C0B933: AndI4
  loc_C0B934: LitVarI2 var_11C, 2
  loc_C0B939: LitI4 6
  loc_C0B93E: ILdRf var_8C
  loc_C0B941: ImpAdCallI2 Mid$(, , )
  loc_C0B946: FStStrNoPop var_120
  loc_C0B949: LitStr "00"
  loc_C0B94C: EqStr
  loc_C0B94E: AndI4
  loc_C0B94F: LitVarI2 var_140, 2
  loc_C0B954: LitI4 4
  loc_C0B959: ILdRf var_8C
  loc_C0B95C: ImpAdCallI2 Mid$(, , )
  loc_C0B961: FStStrNoPop var_144
  loc_C0B964: LitStr "00"
  loc_C0B967: EqStr
  loc_C0B969: AndI4
  loc_C0B96A: LitVarI2 var_164, 1
  loc_C0B96F: LitI4 3
  loc_C0B974: ILdRf var_8C
  loc_C0B977: ImpAdCallI2 Mid$(, , )
  loc_C0B97C: FStStrNoPop var_168
  loc_C0B97F: LitStr "0"
  loc_C0B982: EqStr
  loc_C0B984: AndI4
  loc_C0B985: LitVarI2 var_188, 1
  loc_C0B98A: LitI4 2
  loc_C0B98F: ILdRf var_8C
  loc_C0B992: ImpAdCallI2 Mid$(, , )
  loc_C0B997: FStStrNoPop var_18C
  loc_C0B99A: LitStr "0"
  loc_C0B99D: EqStr
  loc_C0B99F: AndI4
  loc_C0B9A0: LitVarI2 var_1AC, 1
  loc_C0B9A5: LitI4 1
  loc_C0B9AA: ILdRf var_8C
  loc_C0B9AD: ImpAdCallI2 Mid$(, , )
  loc_C0B9B2: FStStrNoPop var_1B0
  loc_C0B9B5: LitStr "0"
  loc_C0B9B8: NeStr
  loc_C0B9BA: AndI4
  loc_C0B9BB: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = "": var_18C = ""
  loc_C0B9CE: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = "": var_188 = ""
  loc_C0B9E1: BranchF loc_C0B9EC
  loc_C0B9E4: LitI2_Byte 1
  loc_C0B9E6: CUI1I2
  loc_C0B9E8: FStUI1 var_86
  loc_C0B9EC: Branch loc_C0CEEB
  loc_C0B9EF: ILdRf var_90
  loc_C0B9F2: LitStr "Municipalidad de Guaymallén"
  loc_C0B9F5: EqStr
  loc_C0B9F7: BranchF loc_C0BEC8
  loc_C0B9FA: LitVarI2 var_B0, 2
  loc_C0B9FF: LitI4 9
  loc_C0BA04: ILdRf var_8C
  loc_C0BA07: ImpAdCallI2 Mid$(, , )
  loc_C0BA0C: FStStrNoPop var_B4
  loc_C0BA0F: LitStr "00"
  loc_C0BA12: NeStr
  loc_C0BA14: LitVarI2 var_D4, 2
  loc_C0BA19: LitI4 7
  loc_C0BA1E: ILdRf var_8C
  loc_C0BA21: ImpAdCallI2 Mid$(, , )
  loc_C0BA26: FStStrNoPop var_D8
  loc_C0BA29: LitStr "00"
  loc_C0BA2C: NeStr
  loc_C0BA2E: AndI4
  loc_C0BA2F: LitVarI2 var_F8, 2
  loc_C0BA34: LitI4 5
  loc_C0BA39: ILdRf var_8C
  loc_C0BA3C: ImpAdCallI2 Mid$(, , )
  loc_C0BA41: FStStrNoPop var_FC
  loc_C0BA44: LitStr "00"
  loc_C0BA47: NeStr
  loc_C0BA49: AndI4
  loc_C0BA4A: LitVarI2 var_11C, 2
  loc_C0BA4F: LitI4 3
  loc_C0BA54: ILdRf var_8C
  loc_C0BA57: ImpAdCallI2 Mid$(, , )
  loc_C0BA5C: FStStrNoPop var_120
  loc_C0BA5F: LitStr "00"
  loc_C0BA62: NeStr
  loc_C0BA64: AndI4
  loc_C0BA65: LitVarI2 var_140, 1
  loc_C0BA6A: LitI4 2
  loc_C0BA6F: ILdRf var_8C
  loc_C0BA72: ImpAdCallI2 Mid$(, , )
  loc_C0BA77: FStStrNoPop var_144
  loc_C0BA7A: LitStr "0"
  loc_C0BA7D: NeStr
  loc_C0BA7F: AndI4
  loc_C0BA80: LitVarI2 var_164, 1
  loc_C0BA85: LitI4 1
  loc_C0BA8A: ILdRf var_8C
  loc_C0BA8D: ImpAdCallI2 Mid$(, , )
  loc_C0BA92: FStStrNoPop var_168
  loc_C0BA95: LitStr "0"
  loc_C0BA98: NeStr
  loc_C0BA9A: AndI4
  loc_C0BA9B: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0BAAA: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0BAB9: BranchF loc_C0BAC7
  loc_C0BABC: LitI2_Byte 6
  loc_C0BABE: CUI1I2
  loc_C0BAC0: FStUI1 var_86
  loc_C0BAC4: Branch loc_C0BEC5
  loc_C0BAC7: LitVarI2 var_B0, 2
  loc_C0BACC: LitI4 9
  loc_C0BAD1: ILdRf var_8C
  loc_C0BAD4: ImpAdCallI2 Mid$(, , )
  loc_C0BAD9: FStStrNoPop var_B4
  loc_C0BADC: LitStr "00"
  loc_C0BADF: EqStr
  loc_C0BAE1: LitVarI2 var_D4, 2
  loc_C0BAE6: LitI4 7
  loc_C0BAEB: ILdRf var_8C
  loc_C0BAEE: ImpAdCallI2 Mid$(, , )
  loc_C0BAF3: FStStrNoPop var_D8
  loc_C0BAF6: LitStr "00"
  loc_C0BAF9: NeStr
  loc_C0BAFB: AndI4
  loc_C0BAFC: LitVarI2 var_F8, 2
  loc_C0BB01: LitI4 5
  loc_C0BB06: ILdRf var_8C
  loc_C0BB09: ImpAdCallI2 Mid$(, , )
  loc_C0BB0E: FStStrNoPop var_FC
  loc_C0BB11: LitStr "00"
  loc_C0BB14: NeStr
  loc_C0BB16: AndI4
  loc_C0BB17: LitVarI2 var_11C, 2
  loc_C0BB1C: LitI4 3
  loc_C0BB21: ILdRf var_8C
  loc_C0BB24: ImpAdCallI2 Mid$(, , )
  loc_C0BB29: FStStrNoPop var_120
  loc_C0BB2C: LitStr "00"
  loc_C0BB2F: NeStr
  loc_C0BB31: AndI4
  loc_C0BB32: LitVarI2 var_140, 1
  loc_C0BB37: LitI4 2
  loc_C0BB3C: ILdRf var_8C
  loc_C0BB3F: ImpAdCallI2 Mid$(, , )
  loc_C0BB44: FStStrNoPop var_144
  loc_C0BB47: LitStr "0"
  loc_C0BB4A: NeStr
  loc_C0BB4C: AndI4
  loc_C0BB4D: LitVarI2 var_164, 1
  loc_C0BB52: LitI4 1
  loc_C0BB57: ILdRf var_8C
  loc_C0BB5A: ImpAdCallI2 Mid$(, , )
  loc_C0BB5F: FStStrNoPop var_168
  loc_C0BB62: LitStr "0"
  loc_C0BB65: NeStr
  loc_C0BB67: AndI4
  loc_C0BB68: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0BB77: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0BB86: BranchF loc_C0BB94
  loc_C0BB89: LitI2_Byte 5
  loc_C0BB8B: CUI1I2
  loc_C0BB8D: FStUI1 var_86
  loc_C0BB91: Branch loc_C0BEC5
  loc_C0BB94: LitVarI2 var_B0, 2
  loc_C0BB99: LitI4 9
  loc_C0BB9E: ILdRf var_8C
  loc_C0BBA1: ImpAdCallI2 Mid$(, , )
  loc_C0BBA6: FStStrNoPop var_B4
  loc_C0BBA9: LitStr "00"
  loc_C0BBAC: EqStr
  loc_C0BBAE: LitVarI2 var_D4, 2
  loc_C0BBB3: LitI4 7
  loc_C0BBB8: ILdRf var_8C
  loc_C0BBBB: ImpAdCallI2 Mid$(, , )
  loc_C0BBC0: FStStrNoPop var_D8
  loc_C0BBC3: LitStr "00"
  loc_C0BBC6: EqStr
  loc_C0BBC8: AndI4
  loc_C0BBC9: LitVarI2 var_F8, 2
  loc_C0BBCE: LitI4 5
  loc_C0BBD3: ILdRf var_8C
  loc_C0BBD6: ImpAdCallI2 Mid$(, , )
  loc_C0BBDB: FStStrNoPop var_FC
  loc_C0BBDE: LitStr "00"
  loc_C0BBE1: NeStr
  loc_C0BBE3: AndI4
  loc_C0BBE4: LitVarI2 var_11C, 2
  loc_C0BBE9: LitI4 3
  loc_C0BBEE: ILdRf var_8C
  loc_C0BBF1: ImpAdCallI2 Mid$(, , )
  loc_C0BBF6: FStStrNoPop var_120
  loc_C0BBF9: LitStr "00"
  loc_C0BBFC: NeStr
  loc_C0BBFE: AndI4
  loc_C0BBFF: LitVarI2 var_140, 1
  loc_C0BC04: LitI4 2
  loc_C0BC09: ILdRf var_8C
  loc_C0BC0C: ImpAdCallI2 Mid$(, , )
  loc_C0BC11: FStStrNoPop var_144
  loc_C0BC14: LitStr "0"
  loc_C0BC17: NeStr
  loc_C0BC19: AndI4
  loc_C0BC1A: LitVarI2 var_164, 1
  loc_C0BC1F: LitI4 1
  loc_C0BC24: ILdRf var_8C
  loc_C0BC27: ImpAdCallI2 Mid$(, , )
  loc_C0BC2C: FStStrNoPop var_168
  loc_C0BC2F: LitStr "0"
  loc_C0BC32: NeStr
  loc_C0BC34: AndI4
  loc_C0BC35: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0BC44: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0BC53: BranchF loc_C0BC61
  loc_C0BC56: LitI2_Byte 4
  loc_C0BC58: CUI1I2
  loc_C0BC5A: FStUI1 var_86
  loc_C0BC5E: Branch loc_C0BEC5
  loc_C0BC61: LitVarI2 var_B0, 2
  loc_C0BC66: LitI4 9
  loc_C0BC6B: ILdRf var_8C
  loc_C0BC6E: ImpAdCallI2 Mid$(, , )
  loc_C0BC73: FStStrNoPop var_B4
  loc_C0BC76: LitStr "00"
  loc_C0BC79: EqStr
  loc_C0BC7B: LitVarI2 var_D4, 2
  loc_C0BC80: LitI4 7
  loc_C0BC85: ILdRf var_8C
  loc_C0BC88: ImpAdCallI2 Mid$(, , )
  loc_C0BC8D: FStStrNoPop var_D8
  loc_C0BC90: LitStr "00"
  loc_C0BC93: EqStr
  loc_C0BC95: AndI4
  loc_C0BC96: LitVarI2 var_F8, 2
  loc_C0BC9B: LitI4 5
  loc_C0BCA0: ILdRf var_8C
  loc_C0BCA3: ImpAdCallI2 Mid$(, , )
  loc_C0BCA8: FStStrNoPop var_FC
  loc_C0BCAB: LitStr "00"
  loc_C0BCAE: EqStr
  loc_C0BCB0: AndI4
  loc_C0BCB1: LitVarI2 var_11C, 2
  loc_C0BCB6: LitI4 3
  loc_C0BCBB: ILdRf var_8C
  loc_C0BCBE: ImpAdCallI2 Mid$(, , )
  loc_C0BCC3: FStStrNoPop var_120
  loc_C0BCC6: LitStr "00"
  loc_C0BCC9: NeStr
  loc_C0BCCB: AndI4
  loc_C0BCCC: LitVarI2 var_140, 1
  loc_C0BCD1: LitI4 2
  loc_C0BCD6: ILdRf var_8C
  loc_C0BCD9: ImpAdCallI2 Mid$(, , )
  loc_C0BCDE: FStStrNoPop var_144
  loc_C0BCE1: LitStr "0"
  loc_C0BCE4: NeStr
  loc_C0BCE6: AndI4
  loc_C0BCE7: LitVarI2 var_164, 1
  loc_C0BCEC: LitI4 1
  loc_C0BCF1: ILdRf var_8C
  loc_C0BCF4: ImpAdCallI2 Mid$(, , )
  loc_C0BCF9: FStStrNoPop var_168
  loc_C0BCFC: LitStr "0"
  loc_C0BCFF: NeStr
  loc_C0BD01: AndI4
  loc_C0BD02: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0BD11: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0BD20: BranchF loc_C0BD2E
  loc_C0BD23: LitI2_Byte 3
  loc_C0BD25: CUI1I2
  loc_C0BD27: FStUI1 var_86
  loc_C0BD2B: Branch loc_C0BEC5
  loc_C0BD2E: LitVarI2 var_B0, 2
  loc_C0BD33: LitI4 9
  loc_C0BD38: ILdRf var_8C
  loc_C0BD3B: ImpAdCallI2 Mid$(, , )
  loc_C0BD40: FStStrNoPop var_B4
  loc_C0BD43: LitStr "00"
  loc_C0BD46: EqStr
  loc_C0BD48: LitVarI2 var_D4, 2
  loc_C0BD4D: LitI4 7
  loc_C0BD52: ILdRf var_8C
  loc_C0BD55: ImpAdCallI2 Mid$(, , )
  loc_C0BD5A: FStStrNoPop var_D8
  loc_C0BD5D: LitStr "00"
  loc_C0BD60: EqStr
  loc_C0BD62: AndI4
  loc_C0BD63: LitVarI2 var_F8, 2
  loc_C0BD68: LitI4 5
  loc_C0BD6D: ILdRf var_8C
  loc_C0BD70: ImpAdCallI2 Mid$(, , )
  loc_C0BD75: FStStrNoPop var_FC
  loc_C0BD78: LitStr "00"
  loc_C0BD7B: EqStr
  loc_C0BD7D: AndI4
  loc_C0BD7E: LitVarI2 var_11C, 2
  loc_C0BD83: LitI4 3
  loc_C0BD88: ILdRf var_8C
  loc_C0BD8B: ImpAdCallI2 Mid$(, , )
  loc_C0BD90: FStStrNoPop var_120
  loc_C0BD93: LitStr "00"
  loc_C0BD96: EqStr
  loc_C0BD98: AndI4
  loc_C0BD99: LitVarI2 var_140, 1
  loc_C0BD9E: LitI4 2
  loc_C0BDA3: ILdRf var_8C
  loc_C0BDA6: ImpAdCallI2 Mid$(, , )
  loc_C0BDAB: FStStrNoPop var_144
  loc_C0BDAE: LitStr "0"
  loc_C0BDB1: NeStr
  loc_C0BDB3: AndI4
  loc_C0BDB4: LitVarI2 var_164, 1
  loc_C0BDB9: LitI4 1
  loc_C0BDBE: ILdRf var_8C
  loc_C0BDC1: ImpAdCallI2 Mid$(, , )
  loc_C0BDC6: FStStrNoPop var_168
  loc_C0BDC9: LitStr "0"
  loc_C0BDCC: NeStr
  loc_C0BDCE: AndI4
  loc_C0BDCF: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0BDDE: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0BDED: BranchF loc_C0BDFB
  loc_C0BDF0: LitI2_Byte 2
  loc_C0BDF2: CUI1I2
  loc_C0BDF4: FStUI1 var_86
  loc_C0BDF8: Branch loc_C0BEC5
  loc_C0BDFB: LitVarI2 var_B0, 2
  loc_C0BE00: LitI4 9
  loc_C0BE05: ILdRf var_8C
  loc_C0BE08: ImpAdCallI2 Mid$(, , )
  loc_C0BE0D: FStStrNoPop var_B4
  loc_C0BE10: LitStr "00"
  loc_C0BE13: EqStr
  loc_C0BE15: LitVarI2 var_D4, 2
  loc_C0BE1A: LitI4 7
  loc_C0BE1F: ILdRf var_8C
  loc_C0BE22: ImpAdCallI2 Mid$(, , )
  loc_C0BE27: FStStrNoPop var_D8
  loc_C0BE2A: LitStr "00"
  loc_C0BE2D: EqStr
  loc_C0BE2F: AndI4
  loc_C0BE30: LitVarI2 var_F8, 2
  loc_C0BE35: LitI4 5
  loc_C0BE3A: ILdRf var_8C
  loc_C0BE3D: ImpAdCallI2 Mid$(, , )
  loc_C0BE42: FStStrNoPop var_FC
  loc_C0BE45: LitStr "00"
  loc_C0BE48: EqStr
  loc_C0BE4A: AndI4
  loc_C0BE4B: LitVarI2 var_11C, 2
  loc_C0BE50: LitI4 3
  loc_C0BE55: ILdRf var_8C
  loc_C0BE58: ImpAdCallI2 Mid$(, , )
  loc_C0BE5D: FStStrNoPop var_120
  loc_C0BE60: LitStr "00"
  loc_C0BE63: EqStr
  loc_C0BE65: AndI4
  loc_C0BE66: LitVarI2 var_140, 1
  loc_C0BE6B: LitI4 2
  loc_C0BE70: ILdRf var_8C
  loc_C0BE73: ImpAdCallI2 Mid$(, , )
  loc_C0BE78: FStStrNoPop var_144
  loc_C0BE7B: LitStr "0"
  loc_C0BE7E: EqStr
  loc_C0BE80: AndI4
  loc_C0BE81: LitVarI2 var_164, 1
  loc_C0BE86: LitI4 1
  loc_C0BE8B: ILdRf var_8C
  loc_C0BE8E: ImpAdCallI2 Mid$(, , )
  loc_C0BE93: FStStrNoPop var_168
  loc_C0BE96: LitStr "0"
  loc_C0BE99: NeStr
  loc_C0BE9B: AndI4
  loc_C0BE9C: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0BEAB: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0BEBA: BranchF loc_C0BEC5
  loc_C0BEBD: LitI2_Byte 1
  loc_C0BEBF: CUI1I2
  loc_C0BEC1: FStUI1 var_86
  loc_C0BEC5: Branch loc_C0CEEB
  loc_C0BEC8: ILdRf var_90
  loc_C0BECB: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_C0BECE: EqStr
  loc_C0BED0: BranchF loc_C0C3A1
  loc_C0BED3: LitVarI2 var_B0, 2
  loc_C0BED8: LitI4 9
  loc_C0BEDD: ILdRf var_8C
  loc_C0BEE0: ImpAdCallI2 Mid$(, , )
  loc_C0BEE5: FStStrNoPop var_B4
  loc_C0BEE8: LitStr "00"
  loc_C0BEEB: NeStr
  loc_C0BEED: LitVarI2 var_D4, 3
  loc_C0BEF2: LitI4 6
  loc_C0BEF7: ILdRf var_8C
  loc_C0BEFA: ImpAdCallI2 Mid$(, , )
  loc_C0BEFF: FStStrNoPop var_D8
  loc_C0BF02: LitStr "000"
  loc_C0BF05: NeStr
  loc_C0BF07: AndI4
  loc_C0BF08: LitVarI2 var_F8, 2
  loc_C0BF0D: LitI4 4
  loc_C0BF12: ILdRf var_8C
  loc_C0BF15: ImpAdCallI2 Mid$(, , )
  loc_C0BF1A: FStStrNoPop var_FC
  loc_C0BF1D: LitStr "00"
  loc_C0BF20: NeStr
  loc_C0BF22: AndI4
  loc_C0BF23: LitVarI2 var_11C, 1
  loc_C0BF28: LitI4 3
  loc_C0BF2D: ILdRf var_8C
  loc_C0BF30: ImpAdCallI2 Mid$(, , )
  loc_C0BF35: FStStrNoPop var_120
  loc_C0BF38: LitStr "0"
  loc_C0BF3B: NeStr
  loc_C0BF3D: AndI4
  loc_C0BF3E: LitVarI2 var_140, 1
  loc_C0BF43: LitI4 2
  loc_C0BF48: ILdRf var_8C
  loc_C0BF4B: ImpAdCallI2 Mid$(, , )
  loc_C0BF50: FStStrNoPop var_144
  loc_C0BF53: LitStr "0"
  loc_C0BF56: NeStr
  loc_C0BF58: AndI4
  loc_C0BF59: LitVarI2 var_164, 1
  loc_C0BF5E: LitI4 1
  loc_C0BF63: ILdRf var_8C
  loc_C0BF66: ImpAdCallI2 Mid$(, , )
  loc_C0BF6B: FStStrNoPop var_168
  loc_C0BF6E: LitStr "0"
  loc_C0BF71: NeStr
  loc_C0BF73: AndI4
  loc_C0BF74: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0BF83: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0BF92: BranchF loc_C0BFA0
  loc_C0BF95: LitI2_Byte 6
  loc_C0BF97: CUI1I2
  loc_C0BF99: FStUI1 var_86
  loc_C0BF9D: Branch loc_C0C39E
  loc_C0BFA0: LitVarI2 var_B0, 2
  loc_C0BFA5: LitI4 9
  loc_C0BFAA: ILdRf var_8C
  loc_C0BFAD: ImpAdCallI2 Mid$(, , )
  loc_C0BFB2: FStStrNoPop var_B4
  loc_C0BFB5: LitStr "00"
  loc_C0BFB8: EqStr
  loc_C0BFBA: LitVarI2 var_D4, 3
  loc_C0BFBF: LitI4 6
  loc_C0BFC4: ILdRf var_8C
  loc_C0BFC7: ImpAdCallI2 Mid$(, , )
  loc_C0BFCC: FStStrNoPop var_D8
  loc_C0BFCF: LitStr "000"
  loc_C0BFD2: NeStr
  loc_C0BFD4: AndI4
  loc_C0BFD5: LitVarI2 var_F8, 2
  loc_C0BFDA: LitI4 4
  loc_C0BFDF: ILdRf var_8C
  loc_C0BFE2: ImpAdCallI2 Mid$(, , )
  loc_C0BFE7: FStStrNoPop var_FC
  loc_C0BFEA: LitStr "00"
  loc_C0BFED: NeStr
  loc_C0BFEF: AndI4
  loc_C0BFF0: LitVarI2 var_11C, 1
  loc_C0BFF5: LitI4 3
  loc_C0BFFA: ILdRf var_8C
  loc_C0BFFD: ImpAdCallI2 Mid$(, , )
  loc_C0C002: FStStrNoPop var_120
  loc_C0C005: LitStr "0"
  loc_C0C008: NeStr
  loc_C0C00A: AndI4
  loc_C0C00B: LitVarI2 var_140, 1
  loc_C0C010: LitI4 2
  loc_C0C015: ILdRf var_8C
  loc_C0C018: ImpAdCallI2 Mid$(, , )
  loc_C0C01D: FStStrNoPop var_144
  loc_C0C020: LitStr "0"
  loc_C0C023: NeStr
  loc_C0C025: AndI4
  loc_C0C026: LitVarI2 var_164, 1
  loc_C0C02B: LitI4 1
  loc_C0C030: ILdRf var_8C
  loc_C0C033: ImpAdCallI2 Mid$(, , )
  loc_C0C038: FStStrNoPop var_168
  loc_C0C03B: LitStr "0"
  loc_C0C03E: NeStr
  loc_C0C040: AndI4
  loc_C0C041: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0C050: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0C05F: BranchF loc_C0C06D
  loc_C0C062: LitI2_Byte 5
  loc_C0C064: CUI1I2
  loc_C0C066: FStUI1 var_86
  loc_C0C06A: Branch loc_C0C39E
  loc_C0C06D: LitVarI2 var_B0, 2
  loc_C0C072: LitI4 9
  loc_C0C077: ILdRf var_8C
  loc_C0C07A: ImpAdCallI2 Mid$(, , )
  loc_C0C07F: FStStrNoPop var_B4
  loc_C0C082: LitStr "00"
  loc_C0C085: EqStr
  loc_C0C087: LitVarI2 var_D4, 3
  loc_C0C08C: LitI4 6
  loc_C0C091: ILdRf var_8C
  loc_C0C094: ImpAdCallI2 Mid$(, , )
  loc_C0C099: FStStrNoPop var_D8
  loc_C0C09C: LitStr "000"
  loc_C0C09F: EqStr
  loc_C0C0A1: AndI4
  loc_C0C0A2: LitVarI2 var_F8, 2
  loc_C0C0A7: LitI4 4
  loc_C0C0AC: ILdRf var_8C
  loc_C0C0AF: ImpAdCallI2 Mid$(, , )
  loc_C0C0B4: FStStrNoPop var_FC
  loc_C0C0B7: LitStr "00"
  loc_C0C0BA: NeStr
  loc_C0C0BC: AndI4
  loc_C0C0BD: LitVarI2 var_11C, 1
  loc_C0C0C2: LitI4 3
  loc_C0C0C7: ILdRf var_8C
  loc_C0C0CA: ImpAdCallI2 Mid$(, , )
  loc_C0C0CF: FStStrNoPop var_120
  loc_C0C0D2: LitStr "0"
  loc_C0C0D5: NeStr
  loc_C0C0D7: AndI4
  loc_C0C0D8: LitVarI2 var_140, 1
  loc_C0C0DD: LitI4 2
  loc_C0C0E2: ILdRf var_8C
  loc_C0C0E5: ImpAdCallI2 Mid$(, , )
  loc_C0C0EA: FStStrNoPop var_144
  loc_C0C0ED: LitStr "0"
  loc_C0C0F0: NeStr
  loc_C0C0F2: AndI4
  loc_C0C0F3: LitVarI2 var_164, 1
  loc_C0C0F8: LitI4 1
  loc_C0C0FD: ILdRf var_8C
  loc_C0C100: ImpAdCallI2 Mid$(, , )
  loc_C0C105: FStStrNoPop var_168
  loc_C0C108: LitStr "0"
  loc_C0C10B: NeStr
  loc_C0C10D: AndI4
  loc_C0C10E: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0C11D: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0C12C: BranchF loc_C0C13A
  loc_C0C12F: LitI2_Byte 4
  loc_C0C131: CUI1I2
  loc_C0C133: FStUI1 var_86
  loc_C0C137: Branch loc_C0C39E
  loc_C0C13A: LitVarI2 var_B0, 2
  loc_C0C13F: LitI4 9
  loc_C0C144: ILdRf var_8C
  loc_C0C147: ImpAdCallI2 Mid$(, , )
  loc_C0C14C: FStStrNoPop var_B4
  loc_C0C14F: LitStr "00"
  loc_C0C152: EqStr
  loc_C0C154: LitVarI2 var_D4, 3
  loc_C0C159: LitI4 6
  loc_C0C15E: ILdRf var_8C
  loc_C0C161: ImpAdCallI2 Mid$(, , )
  loc_C0C166: FStStrNoPop var_D8
  loc_C0C169: LitStr "000"
  loc_C0C16C: EqStr
  loc_C0C16E: AndI4
  loc_C0C16F: LitVarI2 var_F8, 2
  loc_C0C174: LitI4 4
  loc_C0C179: ILdRf var_8C
  loc_C0C17C: ImpAdCallI2 Mid$(, , )
  loc_C0C181: FStStrNoPop var_FC
  loc_C0C184: LitStr "00"
  loc_C0C187: EqStr
  loc_C0C189: AndI4
  loc_C0C18A: LitVarI2 var_11C, 1
  loc_C0C18F: LitI4 3
  loc_C0C194: ILdRf var_8C
  loc_C0C197: ImpAdCallI2 Mid$(, , )
  loc_C0C19C: FStStrNoPop var_120
  loc_C0C19F: LitStr "0"
  loc_C0C1A2: NeStr
  loc_C0C1A4: AndI4
  loc_C0C1A5: LitVarI2 var_140, 1
  loc_C0C1AA: LitI4 2
  loc_C0C1AF: ILdRf var_8C
  loc_C0C1B2: ImpAdCallI2 Mid$(, , )
  loc_C0C1B7: FStStrNoPop var_144
  loc_C0C1BA: LitStr "0"
  loc_C0C1BD: NeStr
  loc_C0C1BF: AndI4
  loc_C0C1C0: LitVarI2 var_164, 1
  loc_C0C1C5: LitI4 1
  loc_C0C1CA: ILdRf var_8C
  loc_C0C1CD: ImpAdCallI2 Mid$(, , )
  loc_C0C1D2: FStStrNoPop var_168
  loc_C0C1D5: LitStr "0"
  loc_C0C1D8: NeStr
  loc_C0C1DA: AndI4
  loc_C0C1DB: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0C1EA: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0C1F9: BranchF loc_C0C207
  loc_C0C1FC: LitI2_Byte 3
  loc_C0C1FE: CUI1I2
  loc_C0C200: FStUI1 var_86
  loc_C0C204: Branch loc_C0C39E
  loc_C0C207: LitVarI2 var_B0, 2
  loc_C0C20C: LitI4 9
  loc_C0C211: ILdRf var_8C
  loc_C0C214: ImpAdCallI2 Mid$(, , )
  loc_C0C219: FStStrNoPop var_B4
  loc_C0C21C: LitStr "00"
  loc_C0C21F: EqStr
  loc_C0C221: LitVarI2 var_D4, 3
  loc_C0C226: LitI4 6
  loc_C0C22B: ILdRf var_8C
  loc_C0C22E: ImpAdCallI2 Mid$(, , )
  loc_C0C233: FStStrNoPop var_D8
  loc_C0C236: LitStr "000"
  loc_C0C239: EqStr
  loc_C0C23B: AndI4
  loc_C0C23C: LitVarI2 var_F8, 2
  loc_C0C241: LitI4 4
  loc_C0C246: ILdRf var_8C
  loc_C0C249: ImpAdCallI2 Mid$(, , )
  loc_C0C24E: FStStrNoPop var_FC
  loc_C0C251: LitStr "00"
  loc_C0C254: EqStr
  loc_C0C256: AndI4
  loc_C0C257: LitVarI2 var_11C, 1
  loc_C0C25C: LitI4 3
  loc_C0C261: ILdRf var_8C
  loc_C0C264: ImpAdCallI2 Mid$(, , )
  loc_C0C269: FStStrNoPop var_120
  loc_C0C26C: LitStr "0"
  loc_C0C26F: EqStr
  loc_C0C271: AndI4
  loc_C0C272: LitVarI2 var_140, 1
  loc_C0C277: LitI4 2
  loc_C0C27C: ILdRf var_8C
  loc_C0C27F: ImpAdCallI2 Mid$(, , )
  loc_C0C284: FStStrNoPop var_144
  loc_C0C287: LitStr "0"
  loc_C0C28A: NeStr
  loc_C0C28C: AndI4
  loc_C0C28D: LitVarI2 var_164, 1
  loc_C0C292: LitI4 1
  loc_C0C297: ILdRf var_8C
  loc_C0C29A: ImpAdCallI2 Mid$(, , )
  loc_C0C29F: FStStrNoPop var_168
  loc_C0C2A2: LitStr "0"
  loc_C0C2A5: NeStr
  loc_C0C2A7: AndI4
  loc_C0C2A8: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0C2B7: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0C2C6: BranchF loc_C0C2D4
  loc_C0C2C9: LitI2_Byte 2
  loc_C0C2CB: CUI1I2
  loc_C0C2CD: FStUI1 var_86
  loc_C0C2D1: Branch loc_C0C39E
  loc_C0C2D4: LitVarI2 var_B0, 2
  loc_C0C2D9: LitI4 9
  loc_C0C2DE: ILdRf var_8C
  loc_C0C2E1: ImpAdCallI2 Mid$(, , )
  loc_C0C2E6: FStStrNoPop var_B4
  loc_C0C2E9: LitStr "00"
  loc_C0C2EC: EqStr
  loc_C0C2EE: LitVarI2 var_D4, 3
  loc_C0C2F3: LitI4 6
  loc_C0C2F8: ILdRf var_8C
  loc_C0C2FB: ImpAdCallI2 Mid$(, , )
  loc_C0C300: FStStrNoPop var_D8
  loc_C0C303: LitStr "000"
  loc_C0C306: EqStr
  loc_C0C308: AndI4
  loc_C0C309: LitVarI2 var_F8, 2
  loc_C0C30E: LitI4 4
  loc_C0C313: ILdRf var_8C
  loc_C0C316: ImpAdCallI2 Mid$(, , )
  loc_C0C31B: FStStrNoPop var_FC
  loc_C0C31E: LitStr "00"
  loc_C0C321: EqStr
  loc_C0C323: AndI4
  loc_C0C324: LitVarI2 var_11C, 1
  loc_C0C329: LitI4 3
  loc_C0C32E: ILdRf var_8C
  loc_C0C331: ImpAdCallI2 Mid$(, , )
  loc_C0C336: FStStrNoPop var_120
  loc_C0C339: LitStr "0"
  loc_C0C33C: EqStr
  loc_C0C33E: AndI4
  loc_C0C33F: LitVarI2 var_140, 1
  loc_C0C344: LitI4 2
  loc_C0C349: ILdRf var_8C
  loc_C0C34C: ImpAdCallI2 Mid$(, , )
  loc_C0C351: FStStrNoPop var_144
  loc_C0C354: LitStr "0"
  loc_C0C357: EqStr
  loc_C0C359: AndI4
  loc_C0C35A: LitVarI2 var_164, 1
  loc_C0C35F: LitI4 1
  loc_C0C364: ILdRf var_8C
  loc_C0C367: ImpAdCallI2 Mid$(, , )
  loc_C0C36C: FStStrNoPop var_168
  loc_C0C36F: LitStr "0"
  loc_C0C372: NeStr
  loc_C0C374: AndI4
  loc_C0C375: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0C384: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0C393: BranchF loc_C0C39E
  loc_C0C396: LitI2_Byte 1
  loc_C0C398: CUI1I2
  loc_C0C39A: FStUI1 var_86
  loc_C0C39E: Branch loc_C0CEEB
  loc_C0C3A1: ILdRf var_90
  loc_C0C3A4: LitStr "EPAS - Ente Provincial del Agua y de Saneamiento"
  loc_C0C3A7: EqStr
  loc_C0C3A9: BranchF loc_C0C87A
  loc_C0C3AC: LitVarI2 var_B0, 2
  loc_C0C3B1: LitI4 9
  loc_C0C3B6: ILdRf var_8C
  loc_C0C3B9: ImpAdCallI2 Mid$(, , )
  loc_C0C3BE: FStStrNoPop var_B4
  loc_C0C3C1: LitStr "00"
  loc_C0C3C4: NeStr
  loc_C0C3C6: LitVarI2 var_D4, 2
  loc_C0C3CB: LitI4 6
  loc_C0C3D0: ILdRf var_8C
  loc_C0C3D3: ImpAdCallI2 Mid$(, , )
  loc_C0C3D8: FStStrNoPop var_D8
  loc_C0C3DB: LitStr "00"
  loc_C0C3DE: NeStr
  loc_C0C3E0: AndI4
  loc_C0C3E1: LitVarI2 var_F8, 2
  loc_C0C3E6: LitI4 4
  loc_C0C3EB: ILdRf var_8C
  loc_C0C3EE: ImpAdCallI2 Mid$(, , )
  loc_C0C3F3: FStStrNoPop var_FC
  loc_C0C3F6: LitStr "00"
  loc_C0C3F9: NeStr
  loc_C0C3FB: AndI4
  loc_C0C3FC: LitVarI2 var_11C, 2
  loc_C0C401: LitI4 3
  loc_C0C406: ILdRf var_8C
  loc_C0C409: ImpAdCallI2 Mid$(, , )
  loc_C0C40E: FStStrNoPop var_120
  loc_C0C411: LitStr "00"
  loc_C0C414: NeStr
  loc_C0C416: AndI4
  loc_C0C417: LitVarI2 var_140, 1
  loc_C0C41C: LitI4 2
  loc_C0C421: ILdRf var_8C
  loc_C0C424: ImpAdCallI2 Mid$(, , )
  loc_C0C429: FStStrNoPop var_144
  loc_C0C42C: LitStr "0"
  loc_C0C42F: NeStr
  loc_C0C431: AndI4
  loc_C0C432: LitVarI2 var_164, 1
  loc_C0C437: LitI4 1
  loc_C0C43C: ILdRf var_8C
  loc_C0C43F: ImpAdCallI2 Mid$(, , )
  loc_C0C444: FStStrNoPop var_168
  loc_C0C447: LitStr "0"
  loc_C0C44A: NeStr
  loc_C0C44C: AndI4
  loc_C0C44D: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0C45C: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0C46B: BranchF loc_C0C479
  loc_C0C46E: LitI2_Byte 6
  loc_C0C470: CUI1I2
  loc_C0C472: FStUI1 var_86
  loc_C0C476: Branch loc_C0C877
  loc_C0C479: LitVarI2 var_B0, 2
  loc_C0C47E: LitI4 9
  loc_C0C483: ILdRf var_8C
  loc_C0C486: ImpAdCallI2 Mid$(, , )
  loc_C0C48B: FStStrNoPop var_B4
  loc_C0C48E: LitStr "00"
  loc_C0C491: EqStr
  loc_C0C493: LitVarI2 var_D4, 2
  loc_C0C498: LitI4 6
  loc_C0C49D: ILdRf var_8C
  loc_C0C4A0: ImpAdCallI2 Mid$(, , )
  loc_C0C4A5: FStStrNoPop var_D8
  loc_C0C4A8: LitStr "00"
  loc_C0C4AB: NeStr
  loc_C0C4AD: AndI4
  loc_C0C4AE: LitVarI2 var_F8, 2
  loc_C0C4B3: LitI4 4
  loc_C0C4B8: ILdRf var_8C
  loc_C0C4BB: ImpAdCallI2 Mid$(, , )
  loc_C0C4C0: FStStrNoPop var_FC
  loc_C0C4C3: LitStr "00"
  loc_C0C4C6: NeStr
  loc_C0C4C8: AndI4
  loc_C0C4C9: LitVarI2 var_11C, 2
  loc_C0C4CE: LitI4 3
  loc_C0C4D3: ILdRf var_8C
  loc_C0C4D6: ImpAdCallI2 Mid$(, , )
  loc_C0C4DB: FStStrNoPop var_120
  loc_C0C4DE: LitStr "00"
  loc_C0C4E1: NeStr
  loc_C0C4E3: AndI4
  loc_C0C4E4: LitVarI2 var_140, 1
  loc_C0C4E9: LitI4 2
  loc_C0C4EE: ILdRf var_8C
  loc_C0C4F1: ImpAdCallI2 Mid$(, , )
  loc_C0C4F6: FStStrNoPop var_144
  loc_C0C4F9: LitStr "0"
  loc_C0C4FC: NeStr
  loc_C0C4FE: AndI4
  loc_C0C4FF: LitVarI2 var_164, 1
  loc_C0C504: LitI4 1
  loc_C0C509: ILdRf var_8C
  loc_C0C50C: ImpAdCallI2 Mid$(, , )
  loc_C0C511: FStStrNoPop var_168
  loc_C0C514: LitStr "0"
  loc_C0C517: NeStr
  loc_C0C519: AndI4
  loc_C0C51A: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0C529: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0C538: BranchF loc_C0C546
  loc_C0C53B: LitI2_Byte 5
  loc_C0C53D: CUI1I2
  loc_C0C53F: FStUI1 var_86
  loc_C0C543: Branch loc_C0C877
  loc_C0C546: LitVarI2 var_B0, 2
  loc_C0C54B: LitI4 9
  loc_C0C550: ILdRf var_8C
  loc_C0C553: ImpAdCallI2 Mid$(, , )
  loc_C0C558: FStStrNoPop var_B4
  loc_C0C55B: LitStr "00"
  loc_C0C55E: EqStr
  loc_C0C560: LitVarI2 var_D4, 2
  loc_C0C565: LitI4 6
  loc_C0C56A: ILdRf var_8C
  loc_C0C56D: ImpAdCallI2 Mid$(, , )
  loc_C0C572: FStStrNoPop var_D8
  loc_C0C575: LitStr "00"
  loc_C0C578: EqStr
  loc_C0C57A: AndI4
  loc_C0C57B: LitVarI2 var_F8, 2
  loc_C0C580: LitI4 4
  loc_C0C585: ILdRf var_8C
  loc_C0C588: ImpAdCallI2 Mid$(, , )
  loc_C0C58D: FStStrNoPop var_FC
  loc_C0C590: LitStr "00"
  loc_C0C593: NeStr
  loc_C0C595: AndI4
  loc_C0C596: LitVarI2 var_11C, 2
  loc_C0C59B: LitI4 3
  loc_C0C5A0: ILdRf var_8C
  loc_C0C5A3: ImpAdCallI2 Mid$(, , )
  loc_C0C5A8: FStStrNoPop var_120
  loc_C0C5AB: LitStr "00"
  loc_C0C5AE: NeStr
  loc_C0C5B0: AndI4
  loc_C0C5B1: LitVarI2 var_140, 1
  loc_C0C5B6: LitI4 2
  loc_C0C5BB: ILdRf var_8C
  loc_C0C5BE: ImpAdCallI2 Mid$(, , )
  loc_C0C5C3: FStStrNoPop var_144
  loc_C0C5C6: LitStr "0"
  loc_C0C5C9: NeStr
  loc_C0C5CB: AndI4
  loc_C0C5CC: LitVarI2 var_164, 1
  loc_C0C5D1: LitI4 1
  loc_C0C5D6: ILdRf var_8C
  loc_C0C5D9: ImpAdCallI2 Mid$(, , )
  loc_C0C5DE: FStStrNoPop var_168
  loc_C0C5E1: LitStr "0"
  loc_C0C5E4: NeStr
  loc_C0C5E6: AndI4
  loc_C0C5E7: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0C5F6: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0C605: BranchF loc_C0C613
  loc_C0C608: LitI2_Byte 4
  loc_C0C60A: CUI1I2
  loc_C0C60C: FStUI1 var_86
  loc_C0C610: Branch loc_C0C877
  loc_C0C613: LitVarI2 var_B0, 2
  loc_C0C618: LitI4 9
  loc_C0C61D: ILdRf var_8C
  loc_C0C620: ImpAdCallI2 Mid$(, , )
  loc_C0C625: FStStrNoPop var_B4
  loc_C0C628: LitStr "00"
  loc_C0C62B: EqStr
  loc_C0C62D: LitVarI2 var_D4, 2
  loc_C0C632: LitI4 6
  loc_C0C637: ILdRf var_8C
  loc_C0C63A: ImpAdCallI2 Mid$(, , )
  loc_C0C63F: FStStrNoPop var_D8
  loc_C0C642: LitStr "00"
  loc_C0C645: EqStr
  loc_C0C647: AndI4
  loc_C0C648: LitVarI2 var_F8, 2
  loc_C0C64D: LitI4 4
  loc_C0C652: ILdRf var_8C
  loc_C0C655: ImpAdCallI2 Mid$(, , )
  loc_C0C65A: FStStrNoPop var_FC
  loc_C0C65D: LitStr "00"
  loc_C0C660: EqStr
  loc_C0C662: AndI4
  loc_C0C663: LitVarI2 var_11C, 2
  loc_C0C668: LitI4 3
  loc_C0C66D: ILdRf var_8C
  loc_C0C670: ImpAdCallI2 Mid$(, , )
  loc_C0C675: FStStrNoPop var_120
  loc_C0C678: LitStr "00"
  loc_C0C67B: NeStr
  loc_C0C67D: AndI4
  loc_C0C67E: LitVarI2 var_140, 1
  loc_C0C683: LitI4 2
  loc_C0C688: ILdRf var_8C
  loc_C0C68B: ImpAdCallI2 Mid$(, , )
  loc_C0C690: FStStrNoPop var_144
  loc_C0C693: LitStr "0"
  loc_C0C696: NeStr
  loc_C0C698: AndI4
  loc_C0C699: LitVarI2 var_164, 1
  loc_C0C69E: LitI4 1
  loc_C0C6A3: ILdRf var_8C
  loc_C0C6A6: ImpAdCallI2 Mid$(, , )
  loc_C0C6AB: FStStrNoPop var_168
  loc_C0C6AE: LitStr "0"
  loc_C0C6B1: NeStr
  loc_C0C6B3: AndI4
  loc_C0C6B4: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0C6C3: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0C6D2: BranchF loc_C0C6E0
  loc_C0C6D5: LitI2_Byte 3
  loc_C0C6D7: CUI1I2
  loc_C0C6D9: FStUI1 var_86
  loc_C0C6DD: Branch loc_C0C877
  loc_C0C6E0: LitVarI2 var_B0, 2
  loc_C0C6E5: LitI4 9
  loc_C0C6EA: ILdRf var_8C
  loc_C0C6ED: ImpAdCallI2 Mid$(, , )
  loc_C0C6F2: FStStrNoPop var_B4
  loc_C0C6F5: LitStr "00"
  loc_C0C6F8: EqStr
  loc_C0C6FA: LitVarI2 var_D4, 2
  loc_C0C6FF: LitI4 6
  loc_C0C704: ILdRf var_8C
  loc_C0C707: ImpAdCallI2 Mid$(, , )
  loc_C0C70C: FStStrNoPop var_D8
  loc_C0C70F: LitStr "00"
  loc_C0C712: EqStr
  loc_C0C714: AndI4
  loc_C0C715: LitVarI2 var_F8, 2
  loc_C0C71A: LitI4 4
  loc_C0C71F: ILdRf var_8C
  loc_C0C722: ImpAdCallI2 Mid$(, , )
  loc_C0C727: FStStrNoPop var_FC
  loc_C0C72A: LitStr "00"
  loc_C0C72D: EqStr
  loc_C0C72F: AndI4
  loc_C0C730: LitVarI2 var_11C, 2
  loc_C0C735: LitI4 3
  loc_C0C73A: ILdRf var_8C
  loc_C0C73D: ImpAdCallI2 Mid$(, , )
  loc_C0C742: FStStrNoPop var_120
  loc_C0C745: LitStr "00"
  loc_C0C748: EqStr
  loc_C0C74A: AndI4
  loc_C0C74B: LitVarI2 var_140, 1
  loc_C0C750: LitI4 2
  loc_C0C755: ILdRf var_8C
  loc_C0C758: ImpAdCallI2 Mid$(, , )
  loc_C0C75D: FStStrNoPop var_144
  loc_C0C760: LitStr "0"
  loc_C0C763: NeStr
  loc_C0C765: AndI4
  loc_C0C766: LitVarI2 var_164, 1
  loc_C0C76B: LitI4 1
  loc_C0C770: ILdRf var_8C
  loc_C0C773: ImpAdCallI2 Mid$(, , )
  loc_C0C778: FStStrNoPop var_168
  loc_C0C77B: LitStr "0"
  loc_C0C77E: NeStr
  loc_C0C780: AndI4
  loc_C0C781: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0C790: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0C79F: BranchF loc_C0C7AD
  loc_C0C7A2: LitI2_Byte 2
  loc_C0C7A4: CUI1I2
  loc_C0C7A6: FStUI1 var_86
  loc_C0C7AA: Branch loc_C0C877
  loc_C0C7AD: LitVarI2 var_B0, 2
  loc_C0C7B2: LitI4 9
  loc_C0C7B7: ILdRf var_8C
  loc_C0C7BA: ImpAdCallI2 Mid$(, , )
  loc_C0C7BF: FStStrNoPop var_B4
  loc_C0C7C2: LitStr "00"
  loc_C0C7C5: EqStr
  loc_C0C7C7: LitVarI2 var_D4, 2
  loc_C0C7CC: LitI4 6
  loc_C0C7D1: ILdRf var_8C
  loc_C0C7D4: ImpAdCallI2 Mid$(, , )
  loc_C0C7D9: FStStrNoPop var_D8
  loc_C0C7DC: LitStr "00"
  loc_C0C7DF: EqStr
  loc_C0C7E1: AndI4
  loc_C0C7E2: LitVarI2 var_F8, 2
  loc_C0C7E7: LitI4 4
  loc_C0C7EC: ILdRf var_8C
  loc_C0C7EF: ImpAdCallI2 Mid$(, , )
  loc_C0C7F4: FStStrNoPop var_FC
  loc_C0C7F7: LitStr "00"
  loc_C0C7FA: EqStr
  loc_C0C7FC: AndI4
  loc_C0C7FD: LitVarI2 var_11C, 2
  loc_C0C802: LitI4 3
  loc_C0C807: ILdRf var_8C
  loc_C0C80A: ImpAdCallI2 Mid$(, , )
  loc_C0C80F: FStStrNoPop var_120
  loc_C0C812: LitStr "00"
  loc_C0C815: EqStr
  loc_C0C817: AndI4
  loc_C0C818: LitVarI2 var_140, 1
  loc_C0C81D: LitI4 2
  loc_C0C822: ILdRf var_8C
  loc_C0C825: ImpAdCallI2 Mid$(, , )
  loc_C0C82A: FStStrNoPop var_144
  loc_C0C82D: LitStr "0"
  loc_C0C830: EqStr
  loc_C0C832: AndI4
  loc_C0C833: LitVarI2 var_164, 1
  loc_C0C838: LitI4 1
  loc_C0C83D: ILdRf var_8C
  loc_C0C840: ImpAdCallI2 Mid$(, , )
  loc_C0C845: FStStrNoPop var_168
  loc_C0C848: LitStr "0"
  loc_C0C84B: NeStr
  loc_C0C84D: AndI4
  loc_C0C84E: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = ""
  loc_C0C85D: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_C0C86C: BranchF loc_C0C877
  loc_C0C86F: LitI2_Byte 1
  loc_C0C871: CUI1I2
  loc_C0C873: FStUI1 var_86
  loc_C0C877: Branch loc_C0CEEB
  loc_C0C87A: LitVarI2 var_B0, 2
  loc_C0C87F: LitI4 9
  loc_C0C884: ILdRf var_8C
  loc_C0C887: ImpAdCallI2 Mid$(, , )
  loc_C0C88C: FStStrNoPop var_B4
  loc_C0C88F: LitStr "00"
  loc_C0C892: NeStr
  loc_C0C894: LitVarI2 var_D4, 2
  loc_C0C899: LitI4 7
  loc_C0C89E: ILdRf var_8C
  loc_C0C8A1: ImpAdCallI2 Mid$(, , )
  loc_C0C8A6: FStStrNoPop var_D8
  loc_C0C8A9: LitStr "00"
  loc_C0C8AC: NeStr
  loc_C0C8AE: AndI4
  loc_C0C8AF: LitVarI2 var_F8, 2
  loc_C0C8B4: LitI4 5
  loc_C0C8B9: ILdRf var_8C
  loc_C0C8BC: ImpAdCallI2 Mid$(, , )
  loc_C0C8C1: FStStrNoPop var_FC
  loc_C0C8C4: LitStr "00"
  loc_C0C8C7: NeStr
  loc_C0C8C9: AndI4
  loc_C0C8CA: LitVarI2 var_11C, 1
  loc_C0C8CF: LitI4 4
  loc_C0C8D4: ILdRf var_8C
  loc_C0C8D7: ImpAdCallI2 Mid$(, , )
  loc_C0C8DC: FStStrNoPop var_120
  loc_C0C8DF: LitStr "0"
  loc_C0C8E2: NeStr
  loc_C0C8E4: AndI4
  loc_C0C8E5: LitVarI2 var_140, 1
  loc_C0C8EA: LitI4 3
  loc_C0C8EF: ILdRf var_8C
  loc_C0C8F2: ImpAdCallI2 Mid$(, , )
  loc_C0C8F7: FStStrNoPop var_144
  loc_C0C8FA: LitStr "0"
  loc_C0C8FD: NeStr
  loc_C0C8FF: AndI4
  loc_C0C900: LitVarI2 var_164, 1
  loc_C0C905: LitI4 2
  loc_C0C90A: ILdRf var_8C
  loc_C0C90D: ImpAdCallI2 Mid$(, , )
  loc_C0C912: FStStrNoPop var_168
  loc_C0C915: LitStr "0"
  loc_C0C918: NeStr
  loc_C0C91A: AndI4
  loc_C0C91B: LitVarI2 var_188, 1
  loc_C0C920: LitI4 1
  loc_C0C925: ILdRf var_8C
  loc_C0C928: ImpAdCallI2 Mid$(, , )
  loc_C0C92D: FStStrNoPop var_18C
  loc_C0C930: LitStr "0"
  loc_C0C933: NeStr
  loc_C0C935: AndI4
  loc_C0C936: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C0C947: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C0C958: BranchF loc_C0C966
  loc_C0C95B: LitI2_Byte 7
  loc_C0C95D: CUI1I2
  loc_C0C95F: FStUI1 var_86
  loc_C0C963: Branch loc_C0CEEB
  loc_C0C966: LitVarI2 var_B0, 2
  loc_C0C96B: LitI4 9
  loc_C0C970: ILdRf var_8C
  loc_C0C973: ImpAdCallI2 Mid$(, , )
  loc_C0C978: FStStrNoPop var_B4
  loc_C0C97B: LitStr "00"
  loc_C0C97E: EqStr
  loc_C0C980: LitVarI2 var_D4, 2
  loc_C0C985: LitI4 7
  loc_C0C98A: ILdRf var_8C
  loc_C0C98D: ImpAdCallI2 Mid$(, , )
  loc_C0C992: FStStrNoPop var_D8
  loc_C0C995: LitStr "00"
  loc_C0C998: NeStr
  loc_C0C99A: AndI4
  loc_C0C99B: LitVarI2 var_F8, 2
  loc_C0C9A0: LitI4 5
  loc_C0C9A5: ILdRf var_8C
  loc_C0C9A8: ImpAdCallI2 Mid$(, , )
  loc_C0C9AD: FStStrNoPop var_FC
  loc_C0C9B0: LitStr "00"
  loc_C0C9B3: NeStr
  loc_C0C9B5: AndI4
  loc_C0C9B6: LitVarI2 var_11C, 1
  loc_C0C9BB: LitI4 4
  loc_C0C9C0: ILdRf var_8C
  loc_C0C9C3: ImpAdCallI2 Mid$(, , )
  loc_C0C9C8: FStStrNoPop var_120
  loc_C0C9CB: LitStr "0"
  loc_C0C9CE: NeStr
  loc_C0C9D0: AndI4
  loc_C0C9D1: LitVarI2 var_140, 1
  loc_C0C9D6: LitI4 3
  loc_C0C9DB: ILdRf var_8C
  loc_C0C9DE: ImpAdCallI2 Mid$(, , )
  loc_C0C9E3: FStStrNoPop var_144
  loc_C0C9E6: LitStr "0"
  loc_C0C9E9: NeStr
  loc_C0C9EB: AndI4
  loc_C0C9EC: LitVarI2 var_164, 1
  loc_C0C9F1: LitI4 2
  loc_C0C9F6: ILdRf var_8C
  loc_C0C9F9: ImpAdCallI2 Mid$(, , )
  loc_C0C9FE: FStStrNoPop var_168
  loc_C0CA01: LitStr "0"
  loc_C0CA04: NeStr
  loc_C0CA06: AndI4
  loc_C0CA07: LitVarI2 var_188, 1
  loc_C0CA0C: LitI4 1
  loc_C0CA11: ILdRf var_8C
  loc_C0CA14: ImpAdCallI2 Mid$(, , )
  loc_C0CA19: FStStrNoPop var_18C
  loc_C0CA1C: LitStr "0"
  loc_C0CA1F: NeStr
  loc_C0CA21: AndI4
  loc_C0CA22: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C0CA33: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C0CA44: BranchF loc_C0CA52
  loc_C0CA47: LitI2_Byte 6
  loc_C0CA49: CUI1I2
  loc_C0CA4B: FStUI1 var_86
  loc_C0CA4F: Branch loc_C0CEEB
  loc_C0CA52: LitVarI2 var_B0, 2
  loc_C0CA57: LitI4 9
  loc_C0CA5C: ILdRf var_8C
  loc_C0CA5F: ImpAdCallI2 Mid$(, , )
  loc_C0CA64: FStStrNoPop var_B4
  loc_C0CA67: LitStr "00"
  loc_C0CA6A: EqStr
  loc_C0CA6C: LitVarI2 var_D4, 2
  loc_C0CA71: LitI4 7
  loc_C0CA76: ILdRf var_8C
  loc_C0CA79: ImpAdCallI2 Mid$(, , )
  loc_C0CA7E: FStStrNoPop var_D8
  loc_C0CA81: LitStr "00"
  loc_C0CA84: EqStr
  loc_C0CA86: AndI4
  loc_C0CA87: LitVarI2 var_F8, 2
  loc_C0CA8C: LitI4 5
  loc_C0CA91: ILdRf var_8C
  loc_C0CA94: ImpAdCallI2 Mid$(, , )
  loc_C0CA99: FStStrNoPop var_FC
  loc_C0CA9C: LitStr "00"
  loc_C0CA9F: NeStr
  loc_C0CAA1: AndI4
  loc_C0CAA2: LitVarI2 var_11C, 1
  loc_C0CAA7: LitI4 4
  loc_C0CAAC: ILdRf var_8C
  loc_C0CAAF: ImpAdCallI2 Mid$(, , )
  loc_C0CAB4: FStStrNoPop var_120
  loc_C0CAB7: LitStr "0"
  loc_C0CABA: NeStr
  loc_C0CABC: AndI4
  loc_C0CABD: LitVarI2 var_140, 1
  loc_C0CAC2: LitI4 3
  loc_C0CAC7: ILdRf var_8C
  loc_C0CACA: ImpAdCallI2 Mid$(, , )
  loc_C0CACF: FStStrNoPop var_144
  loc_C0CAD2: LitStr "0"
  loc_C0CAD5: NeStr
  loc_C0CAD7: AndI4
  loc_C0CAD8: LitVarI2 var_164, 1
  loc_C0CADD: LitI4 2
  loc_C0CAE2: ILdRf var_8C
  loc_C0CAE5: ImpAdCallI2 Mid$(, , )
  loc_C0CAEA: FStStrNoPop var_168
  loc_C0CAED: LitStr "0"
  loc_C0CAF0: NeStr
  loc_C0CAF2: AndI4
  loc_C0CAF3: LitVarI2 var_188, 1
  loc_C0CAF8: LitI4 1
  loc_C0CAFD: ILdRf var_8C
  loc_C0CB00: ImpAdCallI2 Mid$(, , )
  loc_C0CB05: FStStrNoPop var_18C
  loc_C0CB08: LitStr "0"
  loc_C0CB0B: NeStr
  loc_C0CB0D: AndI4
  loc_C0CB0E: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C0CB1F: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C0CB30: BranchF loc_C0CB3E
  loc_C0CB33: LitI2_Byte 5
  loc_C0CB35: CUI1I2
  loc_C0CB37: FStUI1 var_86
  loc_C0CB3B: Branch loc_C0CEEB
  loc_C0CB3E: LitVarI2 var_B0, 2
  loc_C0CB43: LitI4 9
  loc_C0CB48: ILdRf var_8C
  loc_C0CB4B: ImpAdCallI2 Mid$(, , )
  loc_C0CB50: FStStrNoPop var_B4
  loc_C0CB53: LitStr "00"
  loc_C0CB56: EqStr
  loc_C0CB58: LitVarI2 var_D4, 2
  loc_C0CB5D: LitI4 7
  loc_C0CB62: ILdRf var_8C
  loc_C0CB65: ImpAdCallI2 Mid$(, , )
  loc_C0CB6A: FStStrNoPop var_D8
  loc_C0CB6D: LitStr "00"
  loc_C0CB70: EqStr
  loc_C0CB72: AndI4
  loc_C0CB73: LitVarI2 var_F8, 2
  loc_C0CB78: LitI4 5
  loc_C0CB7D: ILdRf var_8C
  loc_C0CB80: ImpAdCallI2 Mid$(, , )
  loc_C0CB85: FStStrNoPop var_FC
  loc_C0CB88: LitStr "00"
  loc_C0CB8B: EqStr
  loc_C0CB8D: AndI4
  loc_C0CB8E: LitVarI2 var_11C, 1
  loc_C0CB93: LitI4 4
  loc_C0CB98: ILdRf var_8C
  loc_C0CB9B: ImpAdCallI2 Mid$(, , )
  loc_C0CBA0: FStStrNoPop var_120
  loc_C0CBA3: LitStr "0"
  loc_C0CBA6: NeStr
  loc_C0CBA8: AndI4
  loc_C0CBA9: LitVarI2 var_140, 1
  loc_C0CBAE: LitI4 3
  loc_C0CBB3: ILdRf var_8C
  loc_C0CBB6: ImpAdCallI2 Mid$(, , )
  loc_C0CBBB: FStStrNoPop var_144
  loc_C0CBBE: LitStr "0"
  loc_C0CBC1: NeStr
  loc_C0CBC3: AndI4
  loc_C0CBC4: LitVarI2 var_164, 1
  loc_C0CBC9: LitI4 2
  loc_C0CBCE: ILdRf var_8C
  loc_C0CBD1: ImpAdCallI2 Mid$(, , )
  loc_C0CBD6: FStStrNoPop var_168
  loc_C0CBD9: LitStr "0"
  loc_C0CBDC: NeStr
  loc_C0CBDE: AndI4
  loc_C0CBDF: LitVarI2 var_188, 1
  loc_C0CBE4: LitI4 1
  loc_C0CBE9: ILdRf var_8C
  loc_C0CBEC: ImpAdCallI2 Mid$(, , )
  loc_C0CBF1: FStStrNoPop var_18C
  loc_C0CBF4: LitStr "0"
  loc_C0CBF7: NeStr
  loc_C0CBF9: AndI4
  loc_C0CBFA: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C0CC0B: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C0CC1C: BranchF loc_C0CC2A
  loc_C0CC1F: LitI2_Byte 4
  loc_C0CC21: CUI1I2
  loc_C0CC23: FStUI1 var_86
  loc_C0CC27: Branch loc_C0CEEB
  loc_C0CC2A: LitVarI2 var_B0, 2
  loc_C0CC2F: LitI4 9
  loc_C0CC34: ILdRf var_8C
  loc_C0CC37: ImpAdCallI2 Mid$(, , )
  loc_C0CC3C: FStStrNoPop var_B4
  loc_C0CC3F: LitStr "00"
  loc_C0CC42: EqStr
  loc_C0CC44: LitVarI2 var_D4, 2
  loc_C0CC49: LitI4 7
  loc_C0CC4E: ILdRf var_8C
  loc_C0CC51: ImpAdCallI2 Mid$(, , )
  loc_C0CC56: FStStrNoPop var_D8
  loc_C0CC59: LitStr "00"
  loc_C0CC5C: EqStr
  loc_C0CC5E: AndI4
  loc_C0CC5F: LitVarI2 var_F8, 2
  loc_C0CC64: LitI4 5
  loc_C0CC69: ILdRf var_8C
  loc_C0CC6C: ImpAdCallI2 Mid$(, , )
  loc_C0CC71: FStStrNoPop var_FC
  loc_C0CC74: LitStr "00"
  loc_C0CC77: EqStr
  loc_C0CC79: AndI4
  loc_C0CC7A: LitVarI2 var_11C, 1
  loc_C0CC7F: LitI4 4
  loc_C0CC84: ILdRf var_8C
  loc_C0CC87: ImpAdCallI2 Mid$(, , )
  loc_C0CC8C: FStStrNoPop var_120
  loc_C0CC8F: LitStr "0"
  loc_C0CC92: EqStr
  loc_C0CC94: AndI4
  loc_C0CC95: LitVarI2 var_140, 1
  loc_C0CC9A: LitI4 3
  loc_C0CC9F: ILdRf var_8C
  loc_C0CCA2: ImpAdCallI2 Mid$(, , )
  loc_C0CCA7: FStStrNoPop var_144
  loc_C0CCAA: LitStr "0"
  loc_C0CCAD: NeStr
  loc_C0CCAF: AndI4
  loc_C0CCB0: LitVarI2 var_164, 1
  loc_C0CCB5: LitI4 2
  loc_C0CCBA: ILdRf var_8C
  loc_C0CCBD: ImpAdCallI2 Mid$(, , )
  loc_C0CCC2: FStStrNoPop var_168
  loc_C0CCC5: LitStr "0"
  loc_C0CCC8: NeStr
  loc_C0CCCA: AndI4
  loc_C0CCCB: LitVarI2 var_188, 1
  loc_C0CCD0: LitI4 1
  loc_C0CCD5: ILdRf var_8C
  loc_C0CCD8: ImpAdCallI2 Mid$(, , )
  loc_C0CCDD: FStStrNoPop var_18C
  loc_C0CCE0: LitStr "0"
  loc_C0CCE3: NeStr
  loc_C0CCE5: AndI4
  loc_C0CCE6: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C0CCF7: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C0CD08: BranchF loc_C0CD16
  loc_C0CD0B: LitI2_Byte 3
  loc_C0CD0D: CUI1I2
  loc_C0CD0F: FStUI1 var_86
  loc_C0CD13: Branch loc_C0CEEB
  loc_C0CD16: LitVarI2 var_B0, 2
  loc_C0CD1B: LitI4 9
  loc_C0CD20: ILdRf var_8C
  loc_C0CD23: ImpAdCallI2 Mid$(, , )
  loc_C0CD28: FStStrNoPop var_B4
  loc_C0CD2B: LitStr "00"
  loc_C0CD2E: EqStr
  loc_C0CD30: LitVarI2 var_D4, 2
  loc_C0CD35: LitI4 7
  loc_C0CD3A: ILdRf var_8C
  loc_C0CD3D: ImpAdCallI2 Mid$(, , )
  loc_C0CD42: FStStrNoPop var_D8
  loc_C0CD45: LitStr "00"
  loc_C0CD48: EqStr
  loc_C0CD4A: AndI4
  loc_C0CD4B: LitVarI2 var_F8, 2
  loc_C0CD50: LitI4 5
  loc_C0CD55: ILdRf var_8C
  loc_C0CD58: ImpAdCallI2 Mid$(, , )
  loc_C0CD5D: FStStrNoPop var_FC
  loc_C0CD60: LitStr "00"
  loc_C0CD63: EqStr
  loc_C0CD65: AndI4
  loc_C0CD66: LitVarI2 var_11C, 1
  loc_C0CD6B: LitI4 4
  loc_C0CD70: ILdRf var_8C
  loc_C0CD73: ImpAdCallI2 Mid$(, , )
  loc_C0CD78: FStStrNoPop var_120
  loc_C0CD7B: LitStr "0"
  loc_C0CD7E: EqStr
  loc_C0CD80: AndI4
  loc_C0CD81: LitVarI2 var_140, 1
  loc_C0CD86: LitI4 3
  loc_C0CD8B: ILdRf var_8C
  loc_C0CD8E: ImpAdCallI2 Mid$(, , )
  loc_C0CD93: FStStrNoPop var_144
  loc_C0CD96: LitStr "0"
  loc_C0CD99: EqStr
  loc_C0CD9B: AndI4
  loc_C0CD9C: LitVarI2 var_164, 1
  loc_C0CDA1: LitI4 2
  loc_C0CDA6: ILdRf var_8C
  loc_C0CDA9: ImpAdCallI2 Mid$(, , )
  loc_C0CDAE: FStStrNoPop var_168
  loc_C0CDB1: LitStr "0"
  loc_C0CDB4: NeStr
  loc_C0CDB6: AndI4
  loc_C0CDB7: LitVarI2 var_188, 1
  loc_C0CDBC: LitI4 1
  loc_C0CDC1: ILdRf var_8C
  loc_C0CDC4: ImpAdCallI2 Mid$(, , )
  loc_C0CDC9: FStStrNoPop var_18C
  loc_C0CDCC: LitStr "0"
  loc_C0CDCF: NeStr
  loc_C0CDD1: AndI4
  loc_C0CDD2: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C0CDE3: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C0CDF4: BranchF loc_C0CE02
  loc_C0CDF7: LitI2_Byte 2
  loc_C0CDF9: CUI1I2
  loc_C0CDFB: FStUI1 var_86
  loc_C0CDFF: Branch loc_C0CEEB
  loc_C0CE02: LitVarI2 var_B0, 2
  loc_C0CE07: LitI4 9
  loc_C0CE0C: ILdRf var_8C
  loc_C0CE0F: ImpAdCallI2 Mid$(, , )
  loc_C0CE14: FStStrNoPop var_B4
  loc_C0CE17: LitStr "00"
  loc_C0CE1A: EqStr
  loc_C0CE1C: LitVarI2 var_D4, 2
  loc_C0CE21: LitI4 7
  loc_C0CE26: ILdRf var_8C
  loc_C0CE29: ImpAdCallI2 Mid$(, , )
  loc_C0CE2E: FStStrNoPop var_D8
  loc_C0CE31: LitStr "00"
  loc_C0CE34: EqStr
  loc_C0CE36: AndI4
  loc_C0CE37: LitVarI2 var_F8, 2
  loc_C0CE3C: LitI4 5
  loc_C0CE41: ILdRf var_8C
  loc_C0CE44: ImpAdCallI2 Mid$(, , )
  loc_C0CE49: FStStrNoPop var_FC
  loc_C0CE4C: LitStr "00"
  loc_C0CE4F: EqStr
  loc_C0CE51: AndI4
  loc_C0CE52: LitVarI2 var_11C, 1
  loc_C0CE57: LitI4 4
  loc_C0CE5C: ILdRf var_8C
  loc_C0CE5F: ImpAdCallI2 Mid$(, , )
  loc_C0CE64: FStStrNoPop var_120
  loc_C0CE67: LitStr "0"
  loc_C0CE6A: EqStr
  loc_C0CE6C: AndI4
  loc_C0CE6D: LitVarI2 var_140, 1
  loc_C0CE72: LitI4 3
  loc_C0CE77: ILdRf var_8C
  loc_C0CE7A: ImpAdCallI2 Mid$(, , )
  loc_C0CE7F: FStStrNoPop var_144
  loc_C0CE82: LitStr "0"
  loc_C0CE85: EqStr
  loc_C0CE87: AndI4
  loc_C0CE88: LitVarI2 var_164, 1
  loc_C0CE8D: LitI4 2
  loc_C0CE92: ILdRf var_8C
  loc_C0CE95: ImpAdCallI2 Mid$(, , )
  loc_C0CE9A: FStStrNoPop var_168
  loc_C0CE9D: LitStr "0"
  loc_C0CEA0: EqStr
  loc_C0CEA2: AndI4
  loc_C0CEA3: LitVarI2 var_188, 1
  loc_C0CEA8: LitI4 1
  loc_C0CEAD: ILdRf var_8C
  loc_C0CEB0: ImpAdCallI2 Mid$(, , )
  loc_C0CEB5: FStStrNoPop var_18C
  loc_C0CEB8: LitStr "0"
  loc_C0CEBB: NeStr
  loc_C0CEBD: AndI4
  loc_C0CEBE: FFreeStr var_B4 = "": var_D8 = "": var_FC = "": var_120 = "": var_144 = "": var_168 = ""
  loc_C0CECF: FFreeVar var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = "": var_164 = ""
  loc_C0CEE0: BranchF loc_C0CEEB
  loc_C0CEE3: LitI2_Byte 1
  loc_C0CEE5: CUI1I2
  loc_C0CEE7: FStUI1 var_86
  loc_C0CEEB: ExitProcCbHresult
End Function

Public Function CuentaContableNivelSuperior(CodiCuco, Nivel) 'AA8E58
  'Data Table: 414A60
  loc_AA892C: ILdRf CodiCuco
  loc_AA892F: FStStrCopy var_8C
  loc_AA8932: ZeroRetVal
  loc_AA8934: LitStr "Municipalidad de Guaymallén"
  loc_AA8937: FStStrCopy var_98
  loc_AA893A: ILdRf var_98
  loc_AA893D: LitStr "Municipalidad de Tunuyán"
  loc_AA8940: EqStr
  loc_AA8942: BranchF loc_AA8A01
  loc_AA8945: FLdI2 Nivel
  loc_AA8948: FStI2 var_9A
  loc_AA894B: FLdI2 var_9A
  loc_AA894E: LitI2_Byte 2
  loc_AA8950: EqI2
  loc_AA8951: BranchF loc_AA8965
  loc_AA8954: LitI2_Byte 1
  loc_AA8956: CUI1I2
  loc_AA8958: FStUI1 var_8E
  loc_AA895C: LitStr "0000000000"
  loc_AA895F: FStStrCopy CuentaContableNivelSuperior
  loc_AA8962: Branch loc_AA89E4
  loc_AA8965: FLdI2 var_9A
  loc_AA8968: LitI2_Byte 3
  loc_AA896A: EqI2
  loc_AA896B: BranchF loc_AA897F
  loc_AA896E: LitI2_Byte 2
  loc_AA8970: CUI1I2
  loc_AA8972: FStUI1 var_8E
  loc_AA8976: LitStr "000000000"
  loc_AA8979: FStStrCopy CuentaContableNivelSuperior
  loc_AA897C: Branch loc_AA89E4
  loc_AA897F: FLdI2 var_9A
  loc_AA8982: LitI2_Byte 4
  loc_AA8984: EqI2
  loc_AA8985: BranchF loc_AA8999
  loc_AA8988: LitI2_Byte 3
  loc_AA898A: CUI1I2
  loc_AA898C: FStUI1 var_8E
  loc_AA8990: LitStr "00000000"
  loc_AA8993: FStStrCopy CuentaContableNivelSuperior
  loc_AA8996: Branch loc_AA89E4
  loc_AA8999: FLdI2 var_9A
  loc_AA899C: LitI2_Byte 5
  loc_AA899E: EqI2
  loc_AA899F: BranchF loc_AA89B3
  loc_AA89A2: LitI2_Byte 5
  loc_AA89A4: CUI1I2
  loc_AA89A6: FStUI1 var_8E
  loc_AA89AA: LitStr "000000"
  loc_AA89AD: FStStrCopy CuentaContableNivelSuperior
  loc_AA89B0: Branch loc_AA89E4
  loc_AA89B3: FLdI2 var_9A
  loc_AA89B6: LitI2_Byte 6
  loc_AA89B8: EqI2
  loc_AA89B9: BranchF loc_AA89CD
  loc_AA89BC: LitI2_Byte 7
  loc_AA89BE: CUI1I2
  loc_AA89C0: FStUI1 var_8E
  loc_AA89C4: LitStr "0000"
  loc_AA89C7: FStStrCopy CuentaContableNivelSuperior
  loc_AA89CA: Branch loc_AA89E4
  loc_AA89CD: FLdI2 var_9A
  loc_AA89D0: LitI2_Byte 7
  loc_AA89D2: EqI2
  loc_AA89D3: BranchF loc_AA89E4
  loc_AA89D6: LitI2_Byte 9
  loc_AA89D8: CUI1I2
  loc_AA89DA: FStUI1 var_8E
  loc_AA89DE: LitStr "00"
  loc_AA89E1: FStStrCopy CuentaContableNivelSuperior
  loc_AA89E4: FLdUI1
  loc_AA89E8: CI4UI1
  loc_AA89E9: ILdRf var_8C
  loc_AA89EC: ImpAdCallI2 Left$(, )
  loc_AA89F1: FStStrNoPop var_A0
  loc_AA89F4: ILdRf CuentaContableNivelSuperior
  loc_AA89F7: ConcatStr
  loc_AA89F8: FStStr var_88
  loc_AA89FB: FFree1Str var_A0
  loc_AA89FE: Branch loc_AA8E4F
  loc_AA8A01: ILdRf var_98
  loc_AA8A04: LitStr "Municipalidad de Tupungato"
  loc_AA8A07: EqStr
  loc_AA8A09: BranchF loc_AA8AE2
  loc_AA8A0C: FLdI2 Nivel
  loc_AA8A0F: FStI2 var_A2
  loc_AA8A12: FLdI2 var_A2
  loc_AA8A15: LitI2_Byte 2
  loc_AA8A17: EqI2
  loc_AA8A18: BranchF loc_AA8A2C
  loc_AA8A1B: LitI2_Byte 1
  loc_AA8A1D: CUI1I2
  loc_AA8A1F: FStUI1 var_8E
  loc_AA8A23: LitStr "00000000000"
  loc_AA8A26: FStStrCopy CuentaContableNivelSuperior
  loc_AA8A29: Branch loc_AA8AC5
  loc_AA8A2C: FLdI2 var_A2
  loc_AA8A2F: LitI2_Byte 3
  loc_AA8A31: EqI2
  loc_AA8A32: BranchF loc_AA8A46
  loc_AA8A35: LitI2_Byte 2
  loc_AA8A37: CUI1I2
  loc_AA8A39: FStUI1 var_8E
  loc_AA8A3D: LitStr "0000000000"
  loc_AA8A40: FStStrCopy CuentaContableNivelSuperior
  loc_AA8A43: Branch loc_AA8AC5
  loc_AA8A46: FLdI2 var_A2
  loc_AA8A49: LitI2_Byte 4
  loc_AA8A4B: EqI2
  loc_AA8A4C: BranchF loc_AA8A60
  loc_AA8A4F: LitI2_Byte 3
  loc_AA8A51: CUI1I2
  loc_AA8A53: FStUI1 var_8E
  loc_AA8A57: LitStr "000000000"
  loc_AA8A5A: FStStrCopy CuentaContableNivelSuperior
  loc_AA8A5D: Branch loc_AA8AC5
  loc_AA8A60: FLdI2 var_A2
  loc_AA8A63: LitI2_Byte 5
  loc_AA8A65: EqI2
  loc_AA8A66: BranchF loc_AA8A7A
  loc_AA8A69: LitI2_Byte 5
  loc_AA8A6B: CUI1I2
  loc_AA8A6D: FStUI1 var_8E
  loc_AA8A71: LitStr "0000000"
  loc_AA8A74: FStStrCopy CuentaContableNivelSuperior
  loc_AA8A77: Branch loc_AA8AC5
  loc_AA8A7A: FLdI2 var_A2
  loc_AA8A7D: LitI2_Byte 6
  loc_AA8A7F: EqI2
  loc_AA8A80: BranchF loc_AA8A94
  loc_AA8A83: LitI2_Byte 7
  loc_AA8A85: CUI1I2
  loc_AA8A87: FStUI1 var_8E
  loc_AA8A8B: LitStr "00000"
  loc_AA8A8E: FStStrCopy CuentaContableNivelSuperior
  loc_AA8A91: Branch loc_AA8AC5
  loc_AA8A94: FLdI2 var_A2
  loc_AA8A97: LitI2_Byte 7
  loc_AA8A99: EqI2
  loc_AA8A9A: BranchF loc_AA8AAE
  loc_AA8A9D: LitI2_Byte 8
  loc_AA8A9F: CUI1I2
  loc_AA8AA1: FStUI1 var_8E
  loc_AA8AA5: LitStr "0000"
  loc_AA8AA8: FStStrCopy CuentaContableNivelSuperior
  loc_AA8AAB: Branch loc_AA8AC5
  loc_AA8AAE: FLdI2 var_A2
  loc_AA8AB1: LitI2_Byte 8
  loc_AA8AB3: EqI2
  loc_AA8AB4: BranchF loc_AA8AC5
  loc_AA8AB7: LitI2_Byte &HA
  loc_AA8AB9: CUI1I2
  loc_AA8ABB: FStUI1 var_8E
  loc_AA8ABF: LitStr "00"
  loc_AA8AC2: FStStrCopy CuentaContableNivelSuperior
  loc_AA8AC5: FLdUI1
  loc_AA8AC9: CI4UI1
  loc_AA8ACA: ILdRf var_8C
  loc_AA8ACD: ImpAdCallI2 Left$(, )
  loc_AA8AD2: FStStrNoPop var_A0
  loc_AA8AD5: ILdRf CuentaContableNivelSuperior
  loc_AA8AD8: ConcatStr
  loc_AA8AD9: FStStr var_88
  loc_AA8ADC: FFree1Str var_A0
  loc_AA8ADF: Branch loc_AA8E4F
  loc_AA8AE2: ILdRf var_98
  loc_AA8AE5: LitStr "Municipalidad de General Alvear"
  loc_AA8AE8: EqStr
  loc_AA8AEA: BranchF loc_AA8B8F
  loc_AA8AED: FLdI2 Nivel
  loc_AA8AF0: FStI2 var_A4
  loc_AA8AF3: FLdI2 var_A4
  loc_AA8AF6: LitI2_Byte 2
  loc_AA8AF8: EqI2
  loc_AA8AF9: BranchF loc_AA8B0D
  loc_AA8AFC: LitI2_Byte 1
  loc_AA8AFE: CUI1I2
  loc_AA8B00: FStUI1 var_8E
  loc_AA8B04: LitStr "00000000"
  loc_AA8B07: FStStrCopy CuentaContableNivelSuperior
  loc_AA8B0A: Branch loc_AA8B72
  loc_AA8B0D: FLdI2 var_A4
  loc_AA8B10: LitI2_Byte 3
  loc_AA8B12: EqI2
  loc_AA8B13: BranchF loc_AA8B27
  loc_AA8B16: LitI2_Byte 2
  loc_AA8B18: CUI1I2
  loc_AA8B1A: FStUI1 var_8E
  loc_AA8B1E: LitStr "0000000"
  loc_AA8B21: FStStrCopy CuentaContableNivelSuperior
  loc_AA8B24: Branch loc_AA8B72
  loc_AA8B27: FLdI2 var_A4
  loc_AA8B2A: LitI2_Byte 4
  loc_AA8B2C: EqI2
  loc_AA8B2D: BranchF loc_AA8B41
  loc_AA8B30: LitI2_Byte 3
  loc_AA8B32: CUI1I2
  loc_AA8B34: FStUI1 var_8E
  loc_AA8B38: LitStr "000000"
  loc_AA8B3B: FStStrCopy CuentaContableNivelSuperior
  loc_AA8B3E: Branch loc_AA8B72
  loc_AA8B41: FLdI2 var_A4
  loc_AA8B44: LitI2_Byte 5
  loc_AA8B46: EqI2
  loc_AA8B47: BranchF loc_AA8B5B
  loc_AA8B4A: LitI2_Byte 5
  loc_AA8B4C: CUI1I2
  loc_AA8B4E: FStUI1 var_8E
  loc_AA8B52: LitStr "0000"
  loc_AA8B55: FStStrCopy CuentaContableNivelSuperior
  loc_AA8B58: Branch loc_AA8B72
  loc_AA8B5B: FLdI2 var_A4
  loc_AA8B5E: LitI2_Byte 6
  loc_AA8B60: EqI2
  loc_AA8B61: BranchF loc_AA8B72
  loc_AA8B64: LitI2_Byte 7
  loc_AA8B66: CUI1I2
  loc_AA8B68: FStUI1 var_8E
  loc_AA8B6C: LitStr "00"
  loc_AA8B6F: FStStrCopy CuentaContableNivelSuperior
  loc_AA8B72: FLdUI1
  loc_AA8B76: CI4UI1
  loc_AA8B77: ILdRf var_8C
  loc_AA8B7A: ImpAdCallI2 Left$(, )
  loc_AA8B7F: FStStrNoPop var_A0
  loc_AA8B82: ILdRf CuentaContableNivelSuperior
  loc_AA8B85: ConcatStr
  loc_AA8B86: FStStr var_88
  loc_AA8B89: FFree1Str var_A0
  loc_AA8B8C: Branch loc_AA8E4F
  loc_AA8B8F: ILdRf var_98
  loc_AA8B92: LitStr "Municipalidad de Guaymallén"
  loc_AA8B95: EqStr
  loc_AA8B97: BranchF loc_AA8C3C
  loc_AA8B9A: FLdI2 Nivel
  loc_AA8B9D: FStI2 var_A6
  loc_AA8BA0: FLdI2 var_A6
  loc_AA8BA3: LitI2_Byte 2
  loc_AA8BA5: EqI2
  loc_AA8BA6: BranchF loc_AA8BBA
  loc_AA8BA9: LitI2_Byte 1
  loc_AA8BAB: CUI1I2
  loc_AA8BAD: FStUI1 var_8E
  loc_AA8BB1: LitStr "000000000"
  loc_AA8BB4: FStStrCopy CuentaContableNivelSuperior
  loc_AA8BB7: Branch loc_AA8C1F
  loc_AA8BBA: FLdI2 var_A6
  loc_AA8BBD: LitI2_Byte 3
  loc_AA8BBF: EqI2
  loc_AA8BC0: BranchF loc_AA8BD4
  loc_AA8BC3: LitI2_Byte 2
  loc_AA8BC5: CUI1I2
  loc_AA8BC7: FStUI1 var_8E
  loc_AA8BCB: LitStr "00000000"
  loc_AA8BCE: FStStrCopy CuentaContableNivelSuperior
  loc_AA8BD1: Branch loc_AA8C1F
  loc_AA8BD4: FLdI2 var_A6
  loc_AA8BD7: LitI2_Byte 4
  loc_AA8BD9: EqI2
  loc_AA8BDA: BranchF loc_AA8BEE
  loc_AA8BDD: LitI2_Byte 4
  loc_AA8BDF: CUI1I2
  loc_AA8BE1: FStUI1 var_8E
  loc_AA8BE5: LitStr "000000"
  loc_AA8BE8: FStStrCopy CuentaContableNivelSuperior
  loc_AA8BEB: Branch loc_AA8C1F
  loc_AA8BEE: FLdI2 var_A6
  loc_AA8BF1: LitI2_Byte 5
  loc_AA8BF3: EqI2
  loc_AA8BF4: BranchF loc_AA8C08
  loc_AA8BF7: LitI2_Byte 6
  loc_AA8BF9: CUI1I2
  loc_AA8BFB: FStUI1 var_8E
  loc_AA8BFF: LitStr "0000"
  loc_AA8C02: FStStrCopy CuentaContableNivelSuperior
  loc_AA8C05: Branch loc_AA8C1F
  loc_AA8C08: FLdI2 var_A6
  loc_AA8C0B: LitI2_Byte 6
  loc_AA8C0D: EqI2
  loc_AA8C0E: BranchF loc_AA8C1F
  loc_AA8C11: LitI2_Byte 8
  loc_AA8C13: CUI1I2
  loc_AA8C15: FStUI1 var_8E
  loc_AA8C19: LitStr "00"
  loc_AA8C1C: FStStrCopy CuentaContableNivelSuperior
  loc_AA8C1F: FLdUI1
  loc_AA8C23: CI4UI1
  loc_AA8C24: ILdRf var_8C
  loc_AA8C27: ImpAdCallI2 Left$(, )
  loc_AA8C2C: FStStrNoPop var_A0
  loc_AA8C2F: ILdRf CuentaContableNivelSuperior
  loc_AA8C32: ConcatStr
  loc_AA8C33: FStStr var_88
  loc_AA8C36: FFree1Str var_A0
  loc_AA8C39: Branch loc_AA8E4F
  loc_AA8C3C: ILdRf var_98
  loc_AA8C3F: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_AA8C42: EqStr
  loc_AA8C44: BranchF loc_AA8CE9
  loc_AA8C47: FLdI2 Nivel
  loc_AA8C4A: FStI2 var_A8
  loc_AA8C4D: FLdI2 var_A8
  loc_AA8C50: LitI2_Byte 2
  loc_AA8C52: EqI2
  loc_AA8C53: BranchF loc_AA8C67
  loc_AA8C56: LitI2_Byte 1
  loc_AA8C58: CUI1I2
  loc_AA8C5A: FStUI1 var_8E
  loc_AA8C5E: LitStr "000000000"
  loc_AA8C61: FStStrCopy CuentaContableNivelSuperior
  loc_AA8C64: Branch loc_AA8CCC
  loc_AA8C67: FLdI2 var_A8
  loc_AA8C6A: LitI2_Byte 3
  loc_AA8C6C: EqI2
  loc_AA8C6D: BranchF loc_AA8C81
  loc_AA8C70: LitI2_Byte 2
  loc_AA8C72: CUI1I2
  loc_AA8C74: FStUI1 var_8E
  loc_AA8C78: LitStr "00000000"
  loc_AA8C7B: FStStrCopy CuentaContableNivelSuperior
  loc_AA8C7E: Branch loc_AA8CCC
  loc_AA8C81: FLdI2 var_A8
  loc_AA8C84: LitI2_Byte 4
  loc_AA8C86: EqI2
  loc_AA8C87: BranchF loc_AA8C9B
  loc_AA8C8A: LitI2_Byte 4
  loc_AA8C8C: CUI1I2
  loc_AA8C8E: FStUI1 var_8E
  loc_AA8C92: LitStr "000000"
  loc_AA8C95: FStStrCopy CuentaContableNivelSuperior
  loc_AA8C98: Branch loc_AA8CCC
  loc_AA8C9B: FLdI2 var_A8
  loc_AA8C9E: LitI2_Byte 5
  loc_AA8CA0: EqI2
  loc_AA8CA1: BranchF loc_AA8CB5
  loc_AA8CA4: LitI2_Byte 6
  loc_AA8CA6: CUI1I2
  loc_AA8CA8: FStUI1 var_8E
  loc_AA8CAC: LitStr "0000"
  loc_AA8CAF: FStStrCopy CuentaContableNivelSuperior
  loc_AA8CB2: Branch loc_AA8CCC
  loc_AA8CB5: FLdI2 var_A8
  loc_AA8CB8: LitI2_Byte 6
  loc_AA8CBA: EqI2
  loc_AA8CBB: BranchF loc_AA8CCC
  loc_AA8CBE: LitI2_Byte 8
  loc_AA8CC0: CUI1I2
  loc_AA8CC2: FStUI1 var_8E
  loc_AA8CC6: LitStr "00"
  loc_AA8CC9: FStStrCopy CuentaContableNivelSuperior
  loc_AA8CCC: FLdUI1
  loc_AA8CD0: CI4UI1
  loc_AA8CD1: ILdRf var_8C
  loc_AA8CD4: ImpAdCallI2 Left$(, )
  loc_AA8CD9: FStStrNoPop var_A0
  loc_AA8CDC: ILdRf CuentaContableNivelSuperior
  loc_AA8CDF: ConcatStr
  loc_AA8CE0: FStStr var_88
  loc_AA8CE3: FFree1Str var_A0
  loc_AA8CE6: Branch loc_AA8E4F
  loc_AA8CE9: ILdRf var_98
  loc_AA8CEC: LitStr "EPAS - Ente Provincial del Agua y de Saneamiento"
  loc_AA8CEF: EqStr
  loc_AA8CF1: BranchF loc_AA8D96
  loc_AA8CF4: FLdI2 Nivel
  loc_AA8CF7: FStI2 var_AA
  loc_AA8CFA: FLdI2 var_AA
  loc_AA8CFD: LitI2_Byte 2
  loc_AA8CFF: EqI2
  loc_AA8D00: BranchF loc_AA8D14
  loc_AA8D03: LitI2_Byte 1
  loc_AA8D05: CUI1I2
  loc_AA8D07: FStUI1 var_8E
  loc_AA8D0B: LitStr "000000000"
  loc_AA8D0E: FStStrCopy CuentaContableNivelSuperior
  loc_AA8D11: Branch loc_AA8D79
  loc_AA8D14: FLdI2 var_AA
  loc_AA8D17: LitI2_Byte 3
  loc_AA8D19: EqI2
  loc_AA8D1A: BranchF loc_AA8D2E
  loc_AA8D1D: LitI2_Byte 2
  loc_AA8D1F: CUI1I2
  loc_AA8D21: FStUI1 var_8E
  loc_AA8D25: LitStr "0000000"
  loc_AA8D28: FStStrCopy CuentaContableNivelSuperior
  loc_AA8D2B: Branch loc_AA8D79
  loc_AA8D2E: FLdI2 var_AA
  loc_AA8D31: LitI2_Byte 4
  loc_AA8D33: EqI2
  loc_AA8D34: BranchF loc_AA8D48
  loc_AA8D37: LitI2_Byte 2
  loc_AA8D39: CUI1I2
  loc_AA8D3B: FStUI1 var_8E
  loc_AA8D3F: LitStr "00000000"
  loc_AA8D42: FStStrCopy CuentaContableNivelSuperior
  loc_AA8D45: Branch loc_AA8D79
  loc_AA8D48: FLdI2 var_AA
  loc_AA8D4B: LitI2_Byte 5
  loc_AA8D4D: EqI2
  loc_AA8D4E: BranchF loc_AA8D62
  loc_AA8D51: LitI2_Byte 4
  loc_AA8D53: CUI1I2
  loc_AA8D55: FStUI1 var_8E
  loc_AA8D59: LitStr "000000"
  loc_AA8D5C: FStStrCopy CuentaContableNivelSuperior
  loc_AA8D5F: Branch loc_AA8D79
  loc_AA8D62: FLdI2 var_AA
  loc_AA8D65: LitI2_Byte 6
  loc_AA8D67: EqI2
  loc_AA8D68: BranchF loc_AA8D79
  loc_AA8D6B: LitI2_Byte 8
  loc_AA8D6D: CUI1I2
  loc_AA8D6F: FStUI1 var_8E
  loc_AA8D73: LitStr "00"
  loc_AA8D76: FStStrCopy CuentaContableNivelSuperior
  loc_AA8D79: FLdUI1
  loc_AA8D7D: CI4UI1
  loc_AA8D7E: ILdRf var_8C
  loc_AA8D81: ImpAdCallI2 Left$(, )
  loc_AA8D86: FStStrNoPop var_A0
  loc_AA8D89: ILdRf CuentaContableNivelSuperior
  loc_AA8D8C: ConcatStr
  loc_AA8D8D: FStStr var_88
  loc_AA8D90: FFree1Str var_A0
  loc_AA8D93: Branch loc_AA8E4F
  loc_AA8D96: FLdI2 Nivel
  loc_AA8D99: FStI2 var_AC
  loc_AA8D9C: FLdI2 var_AC
  loc_AA8D9F: LitI2_Byte 2
  loc_AA8DA1: EqI2
  loc_AA8DA2: BranchF loc_AA8DB6
  loc_AA8DA5: LitI2_Byte 1
  loc_AA8DA7: CUI1I2
  loc_AA8DA9: FStUI1 var_8E
  loc_AA8DAD: LitStr "000000000"
  loc_AA8DB0: FStStrCopy CuentaContableNivelSuperior
  loc_AA8DB3: Branch loc_AA8E35
  loc_AA8DB6: FLdI2 var_AC
  loc_AA8DB9: LitI2_Byte 3
  loc_AA8DBB: EqI2
  loc_AA8DBC: BranchF loc_AA8DD0
  loc_AA8DBF: LitI2_Byte 2
  loc_AA8DC1: CUI1I2
  loc_AA8DC3: FStUI1 var_8E
  loc_AA8DC7: LitStr "00000000"
  loc_AA8DCA: FStStrCopy CuentaContableNivelSuperior
  loc_AA8DCD: Branch loc_AA8E35
  loc_AA8DD0: FLdI2 var_AC
  loc_AA8DD3: LitI2_Byte 4
  loc_AA8DD5: EqI2
  loc_AA8DD6: BranchF loc_AA8DEA
  loc_AA8DD9: LitI2_Byte 3
  loc_AA8DDB: CUI1I2
  loc_AA8DDD: FStUI1 var_8E
  loc_AA8DE1: LitStr "0000000"
  loc_AA8DE4: FStStrCopy CuentaContableNivelSuperior
  loc_AA8DE7: Branch loc_AA8E35
  loc_AA8DEA: FLdI2 var_AC
  loc_AA8DED: LitI2_Byte 5
  loc_AA8DEF: EqI2
  loc_AA8DF0: BranchF loc_AA8E04
  loc_AA8DF3: LitI2_Byte 4
  loc_AA8DF5: CUI1I2
  loc_AA8DF7: FStUI1 var_8E
  loc_AA8DFB: LitStr "000000"
  loc_AA8DFE: FStStrCopy CuentaContableNivelSuperior
  loc_AA8E01: Branch loc_AA8E35
  loc_AA8E04: FLdI2 var_AC
  loc_AA8E07: LitI2_Byte 6
  loc_AA8E09: EqI2
  loc_AA8E0A: BranchF loc_AA8E1E
  loc_AA8E0D: LitI2_Byte 6
  loc_AA8E0F: CUI1I2
  loc_AA8E11: FStUI1 var_8E
  loc_AA8E15: LitStr "0000"
  loc_AA8E18: FStStrCopy CuentaContableNivelSuperior
  loc_AA8E1B: Branch loc_AA8E35
  loc_AA8E1E: FLdI2 var_AC
  loc_AA8E21: LitI2_Byte 7
  loc_AA8E23: EqI2
  loc_AA8E24: BranchF loc_AA8E35
  loc_AA8E27: LitI2_Byte 8
  loc_AA8E29: CUI1I2
  loc_AA8E2B: FStUI1 var_8E
  loc_AA8E2F: LitStr "00"
  loc_AA8E32: FStStrCopy CuentaContableNivelSuperior
  loc_AA8E35: FLdUI1
  loc_AA8E39: CI4UI1
  loc_AA8E3A: ILdRf var_8C
  loc_AA8E3D: ImpAdCallI2 Left$(, )
  loc_AA8E42: FStStrNoPop var_A0
  loc_AA8E45: ILdRf CuentaContableNivelSuperior
  loc_AA8E48: ConcatStr
  loc_AA8E49: FStStr var_88
  loc_AA8E4C: FFree1Str var_A0
  loc_AA8E4F: ExitProcCbHresult
End Function

Private Function Proc_8_29_972F8C() '972F8C
  'Data Table: 414A60
  loc_972F68: LitStr "Primary"
  loc_972F6B: FLdPr Me
  loc_972F6E: LateIdLdVar var_94 DispID_4 0
  loc_972F75: CastAdVar Me
  loc_972F79: FStAdFunc var_98
  loc_972F7C: FLdPr var_98
  loc_972F84: FFree1Ad var_98
  loc_972F87: FFree1Var var_94 = ""
  loc_972F8A: ExitProcHresult
End Function

Private Function Proc_8_30_967E8C(arg_C) '967E8C
  'Data Table: 414A60
  loc_967E70: ILdI4 arg_C
  loc_967E73: FStStrCopy var_88
  loc_967E76: ILdRf var_88
  loc_967E79: LitStr "Primary"
  loc_967E7C: EqStr
  loc_967E7E: BranchF loc_967E8B
  loc_967E81: FLdPr Me
  loc_967E84: MemLdStr RsFrm
  loc_967E87: IStAd
  loc_967E8B: ExitProcHresult
End Function

Private Function Proc_8_31_A498A0() 'A498A0
  'Data Table: 414A60
  loc_A49604: LitStr "Municipalidad de Guaymallén"
  loc_A49607: FStStrCopy var_8C
  loc_A4960A: ILdRf var_8C
  loc_A4960D: LitStr "Municipalidad de Tunuyán"
  loc_A49610: EqStr
  loc_A49612: BranchF loc_A496A7
  loc_A49615: FLdUI1
  loc_A49619: FStUI1 var_8E
  loc_A4961D: FLdUI1
  loc_A49621: LitI2_Byte 2
  loc_A49623: CUI1I2
  loc_A49625: EqI2
  loc_A49626: BranchF loc_A49634
  loc_A49629: LitI2_Byte 1
  loc_A4962B: CUI1I2
  loc_A4962D: FStUI1 var_86
  loc_A49631: Branch loc_A496A4
  loc_A49634: FLdUI1
  loc_A49638: LitI2_Byte 3
  loc_A4963A: CUI1I2
  loc_A4963C: EqI2
  loc_A4963D: BranchF loc_A4964B
  loc_A49640: LitI2_Byte 2
  loc_A49642: CUI1I2
  loc_A49644: FStUI1 var_86
  loc_A49648: Branch loc_A496A4
  loc_A4964B: FLdUI1
  loc_A4964F: LitI2_Byte 4
  loc_A49651: CUI1I2
  loc_A49653: EqI2
  loc_A49654: BranchF loc_A49662
  loc_A49657: LitI2_Byte 3
  loc_A49659: CUI1I2
  loc_A4965B: FStUI1 var_86
  loc_A4965F: Branch loc_A496A4
  loc_A49662: FLdUI1
  loc_A49666: LitI2_Byte 5
  loc_A49668: CUI1I2
  loc_A4966A: EqI2
  loc_A4966B: BranchF loc_A49679
  loc_A4966E: LitI2_Byte 5
  loc_A49670: CUI1I2
  loc_A49672: FStUI1 var_86
  loc_A49676: Branch loc_A496A4
  loc_A49679: FLdUI1
  loc_A4967D: LitI2_Byte 6
  loc_A4967F: CUI1I2
  loc_A49681: EqI2
  loc_A49682: BranchF loc_A49690
  loc_A49685: LitI2_Byte 7
  loc_A49687: CUI1I2
  loc_A49689: FStUI1 var_86
  loc_A4968D: Branch loc_A496A4
  loc_A49690: FLdUI1
  loc_A49694: LitI2_Byte 7
  loc_A49696: CUI1I2
  loc_A49698: EqI2
  loc_A49699: BranchF loc_A496A4
  loc_A4969C: LitI2_Byte 9
  loc_A4969E: CUI1I2
  loc_A496A0: FStUI1 var_86
  loc_A496A4: Branch loc_A4989A
  loc_A496A7: ILdRf var_8C
  loc_A496AA: LitStr "Municipalidad de Guaymallén"
  loc_A496AD: EqStr
  loc_A496AF: BranchF loc_A4972D
  loc_A496B2: FLdUI1
  loc_A496B6: FStUI1 var_90
  loc_A496BA: FLdUI1
  loc_A496BE: LitI2_Byte 2
  loc_A496C0: CUI1I2
  loc_A496C2: EqI2
  loc_A496C3: BranchF loc_A496D1
  loc_A496C6: LitI2_Byte 1
  loc_A496C8: CUI1I2
  loc_A496CA: FStUI1 var_86
  loc_A496CE: Branch loc_A4972A
  loc_A496D1: FLdUI1
  loc_A496D5: LitI2_Byte 3
  loc_A496D7: CUI1I2
  loc_A496D9: EqI2
  loc_A496DA: BranchF loc_A496E8
  loc_A496DD: LitI2_Byte 2
  loc_A496DF: CUI1I2
  loc_A496E1: FStUI1 var_86
  loc_A496E5: Branch loc_A4972A
  loc_A496E8: FLdUI1
  loc_A496EC: LitI2_Byte 4
  loc_A496EE: CUI1I2
  loc_A496F0: EqI2
  loc_A496F1: BranchF loc_A496FF
  loc_A496F4: LitI2_Byte 4
  loc_A496F6: CUI1I2
  loc_A496F8: FStUI1 var_86
  loc_A496FC: Branch loc_A4972A
  loc_A496FF: FLdUI1
  loc_A49703: LitI2_Byte 5
  loc_A49705: CUI1I2
  loc_A49707: EqI2
  loc_A49708: BranchF loc_A49716
  loc_A4970B: LitI2_Byte 6
  loc_A4970D: CUI1I2
  loc_A4970F: FStUI1 var_86
  loc_A49713: Branch loc_A4972A
  loc_A49716: FLdUI1
  loc_A4971A: LitI2_Byte 6
  loc_A4971C: CUI1I2
  loc_A4971E: EqI2
  loc_A4971F: BranchF loc_A4972A
  loc_A49722: LitI2_Byte 8
  loc_A49724: CUI1I2
  loc_A49726: FStUI1 var_86
  loc_A4972A: Branch loc_A4989A
  loc_A4972D: ILdRf var_8C
  loc_A49730: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_A49733: EqStr
  loc_A49735: BranchF loc_A4979C
  loc_A49738: FLdUI1
  loc_A4973C: FStUI1 var_92
  loc_A49740: FLdUI1
  loc_A49744: LitI2_Byte 2
  loc_A49746: CUI1I2
  loc_A49748: EqI2
  loc_A49749: BranchF loc_A49757
  loc_A4974C: LitI2_Byte 1
  loc_A4974E: CUI1I2
  loc_A49750: FStUI1 var_86
  loc_A49754: Branch loc_A49799
  loc_A49757: FLdUI1
  loc_A4975B: LitI2_Byte 3
  loc_A4975D: CUI1I2
  loc_A4975F: EqI2
  loc_A49760: BranchF loc_A4976E
  loc_A49763: LitI2_Byte 2
  loc_A49765: CUI1I2
  loc_A49767: FStUI1 var_86
  loc_A4976B: Branch loc_A49799
  loc_A4976E: FLdUI1
  loc_A49772: LitI2_Byte 4
  loc_A49774: CUI1I2
  loc_A49776: EqI2
  loc_A49777: BranchF loc_A49785
  loc_A4977A: LitI2_Byte 4
  loc_A4977C: CUI1I2
  loc_A4977E: FStUI1 var_86
  loc_A49782: Branch loc_A49799
  loc_A49785: FLdUI1
  loc_A49789: LitI2_Byte 5
  loc_A4978B: CUI1I2
  loc_A4978D: EqI2
  loc_A4978E: BranchF loc_A49799
  loc_A49791: LitI2_Byte 6
  loc_A49793: CUI1I2
  loc_A49795: FStUI1 var_86
  loc_A49799: Branch loc_A4989A
  loc_A4979C: ILdRf var_8C
  loc_A4979F: LitStr "EPAS - Ente Provincial del Agua y de Saneamiento"
  loc_A497A2: EqStr
  loc_A497A4: BranchF loc_A4980B
  loc_A497A7: FLdUI1
  loc_A497AB: FStUI1 var_94
  loc_A497AF: FLdUI1
  loc_A497B3: LitI2_Byte 2
  loc_A497B5: CUI1I2
  loc_A497B7: EqI2
  loc_A497B8: BranchF loc_A497C6
  loc_A497BB: LitI2_Byte 1
  loc_A497BD: CUI1I2
  loc_A497BF: FStUI1 var_86
  loc_A497C3: Branch loc_A49808
  loc_A497C6: FLdUI1
  loc_A497CA: LitI2_Byte 3
  loc_A497CC: CUI1I2
  loc_A497CE: EqI2
  loc_A497CF: BranchF loc_A497DD
  loc_A497D2: LitI2_Byte 2
  loc_A497D4: CUI1I2
  loc_A497D6: FStUI1 var_86
  loc_A497DA: Branch loc_A49808
  loc_A497DD: FLdUI1
  loc_A497E1: LitI2_Byte 4
  loc_A497E3: CUI1I2
  loc_A497E5: EqI2
  loc_A497E6: BranchF loc_A497F4
  loc_A497E9: LitI2_Byte 4
  loc_A497EB: CUI1I2
  loc_A497ED: FStUI1 var_86
  loc_A497F1: Branch loc_A49808
  loc_A497F4: FLdUI1
  loc_A497F8: LitI2_Byte 5
  loc_A497FA: CUI1I2
  loc_A497FC: EqI2
  loc_A497FD: BranchF loc_A49808
  loc_A49800: LitI2_Byte 6
  loc_A49802: CUI1I2
  loc_A49804: FStUI1 var_86
  loc_A49808: Branch loc_A4989A
  loc_A4980B: FLdUI1
  loc_A4980F: FStUI1 var_96
  loc_A49813: FLdUI1
  loc_A49817: LitI2_Byte 2
  loc_A49819: CUI1I2
  loc_A4981B: EqI2
  loc_A4981C: BranchF loc_A4982A
  loc_A4981F: LitI2_Byte 1
  loc_A49821: CUI1I2
  loc_A49823: FStUI1 var_86
  loc_A49827: Branch loc_A4989A
  loc_A4982A: FLdUI1
  loc_A4982E: LitI2_Byte 3
  loc_A49830: CUI1I2
  loc_A49832: EqI2
  loc_A49833: BranchF loc_A49841
  loc_A49836: LitI2_Byte 2
  loc_A49838: CUI1I2
  loc_A4983A: FStUI1 var_86
  loc_A4983E: Branch loc_A4989A
  loc_A49841: FLdUI1
  loc_A49845: LitI2_Byte 4
  loc_A49847: CUI1I2
  loc_A49849: EqI2
  loc_A4984A: BranchF loc_A49858
  loc_A4984D: LitI2_Byte 3
  loc_A4984F: CUI1I2
  loc_A49851: FStUI1 var_86
  loc_A49855: Branch loc_A4989A
  loc_A49858: FLdUI1
  loc_A4985C: LitI2_Byte 5
  loc_A4985E: CUI1I2
  loc_A49860: EqI2
  loc_A49861: BranchF loc_A4986F
  loc_A49864: LitI2_Byte 4
  loc_A49866: CUI1I2
  loc_A49868: FStUI1 var_86
  loc_A4986C: Branch loc_A4989A
  loc_A4986F: FLdUI1
  loc_A49873: LitI2_Byte 6
  loc_A49875: CUI1I2
  loc_A49877: EqI2
  loc_A49878: BranchF loc_A49886
  loc_A4987B: LitI2_Byte 6
  loc_A4987D: CUI1I2
  loc_A4987F: FStUI1 var_86
  loc_A49883: Branch loc_A4989A
  loc_A49886: FLdUI1
  loc_A4988A: LitI2_Byte 7
  loc_A4988C: CUI1I2
  loc_A4988E: EqI2
  loc_A4988F: BranchF loc_A4989A
  loc_A49892: LitI2_Byte 8
  loc_A49894: CUI1I2
  loc_A49896: FStUI1 var_86
  loc_A4989A: ExitProcCbHresult
End Function
