VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsmoviextracto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40E468
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40E477
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40E486
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96D4CC
  'Data Table: 40E248
  loc_96D4A4: FLdRfVar var_88
  loc_96D4A7: FLdPr Me
  loc_96D4AA: MemLdPr RsFrm
  loc_96D4AD:  = Me.RecordCount
  loc_96D4B2: ILdRf var_88
  loc_96D4B5: LitI4 0
  loc_96D4BA: GtI4
  loc_96D4BB: BranchF loc_96D4C9
  loc_96D4BE: FLdPr Me
  loc_96D4C1: MemLdPr RsFrm
  loc_96D4C4: Me.MoveFirst
  loc_96D4C9: ExitProcHresult
End Sub

Public Sub MoveLast() '96FF14
  'Data Table: 40E248
  loc_96FEEC: FLdRfVar var_88
  loc_96FEEF: FLdPr Me
  loc_96FEF2: MemLdPr RsFrm
  loc_96FEF5:  = Me.RecordCount
  loc_96FEFA: ILdRf var_88
  loc_96FEFD: LitI4 0
  loc_96FF02: GtI4
  loc_96FF03: BranchF loc_96FF11
  loc_96FF06: FLdPr Me
  loc_96FF09: MemLdPr RsFrm
  loc_96FF0C: Me.MoveLast
  loc_96FF11: ExitProcHresult
End Sub

Public Sub MoveNext() '99D358
  'Data Table: 40E248
  loc_99D2E0: FLdRfVar var_86
  loc_99D2E3: FLdPr Me
  loc_99D2E6: MemLdPr RsFrm
  loc_99D2E9:  = Me.EOF
  loc_99D2EE: FLdI2 var_86
  loc_99D2F1: NotI4
  loc_99D2F2: FLdRfVar var_8C
  loc_99D2F5: FLdPr Me
  loc_99D2F8: MemLdPr RsFrm
  loc_99D2FB:  = Me.RecordCount
  loc_99D300: ILdRf var_8C
  loc_99D303: LitI4 0
  loc_99D308: GtI4
  loc_99D309: AndI4
  loc_99D30A: BranchF loc_99D318
  loc_99D30D: FLdPr Me
  loc_99D310: MemLdPr RsFrm
  loc_99D313: Me.MoveNext
  loc_99D318: FLdRfVar var_86
  loc_99D31B: FLdPr Me
  loc_99D31E: MemLdPr RsFrm
  loc_99D321:  = Me.EOF
  loc_99D326: FLdI2 var_86
  loc_99D329: FLdRfVar var_8C
  loc_99D32C: FLdPr Me
  loc_99D32F: MemLdPr RsFrm
  loc_99D332:  = Me.RecordCount
  loc_99D337: ILdRf var_8C
  loc_99D33A: LitI4 0
  loc_99D33F: GtI4
  loc_99D340: AndI4
  loc_99D341: BranchF loc_99D354
  loc_99D344: ImpAdCallFPR4 Beep()
  loc_99D349: FLdPr Me
  loc_99D34C: MemLdPr RsFrm
  loc_99D34F: Me.MoveLast
  loc_99D354: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '94214C
  'Data Table: 40E248
  loc_942140: FLdPr Me
  loc_942143: MemLdPr RsFrm
  loc_942146: Me.MoveNext
  loc_94214B: ExitProcHresult
End Sub

Public Sub Move(iValor) '94933C
  'Data Table: 40E248
  loc_949328: LitVar_Missing var_94
  loc_94932B: PopAdLdVar
  loc_94932C: ILdI2 iValor
  loc_94932F: CI4UI1
  loc_949330: FLdPr Me
  loc_949333: MemLdPr RsFrm
  loc_949336: Me.Move from_stack_1, from_stack_2
  loc_94933B: ExitProcHresult
End Sub

Public Sub MovePrevious() '99D400
  'Data Table: 40E248
  loc_99D388: FLdRfVar var_86
  loc_99D38B: FLdPr Me
  loc_99D38E: MemLdPr RsFrm
  loc_99D391:  = Me.BOF
  loc_99D396: FLdI2 var_86
  loc_99D399: NotI4
  loc_99D39A: FLdRfVar var_8C
  loc_99D39D: FLdPr Me
  loc_99D3A0: MemLdPr RsFrm
  loc_99D3A3:  = Me.RecordCount
  loc_99D3A8: ILdRf var_8C
  loc_99D3AB: LitI4 0
  loc_99D3B0: GtI4
  loc_99D3B1: AndI4
  loc_99D3B2: BranchF loc_99D3C0
  loc_99D3B5: FLdPr Me
  loc_99D3B8: MemLdPr RsFrm
  loc_99D3BB: Me.MovePrevious
  loc_99D3C0: FLdRfVar var_86
  loc_99D3C3: FLdPr Me
  loc_99D3C6: MemLdPr RsFrm
  loc_99D3C9:  = Me.BOF
  loc_99D3CE: FLdI2 var_86
  loc_99D3D1: FLdRfVar var_8C
  loc_99D3D4: FLdPr Me
  loc_99D3D7: MemLdPr RsFrm
  loc_99D3DA:  = Me.RecordCount
  loc_99D3DF: ILdRf var_8C
  loc_99D3E2: LitI4 0
  loc_99D3E7: GtI4
  loc_99D3E8: AndI4
  loc_99D3E9: BranchF loc_99D3FC
  loc_99D3EC: ImpAdCallFPR4 Beep()
  loc_99D3F1: FLdPr Me
  loc_99D3F4: MemLdPr RsFrm
  loc_99D3F7: Me.MoveFirst
  loc_99D3FC: ExitProcHresult
End Sub

Public Property Get EOF() '95BFC4
  'Data Table: 40E248
  loc_95BFA8: FLdRfVar var_88
  loc_95BFAB: FLdPr Me
  loc_95BFAE: MemLdPr RsFrm
  loc_95BFB1:  = Me.EOF
  loc_95BFB6: FLdI2 var_88
  loc_95BFB9: FStI2 var_86
  loc_95BFBC: ExitProcCbHresult
  loc_95BFC2: ExitProcR4
End Sub

Public Property Get BOF() '95BF2C
  'Data Table: 40E248
  loc_95BF10: FLdRfVar var_88
  loc_95BF13: FLdPr Me
  loc_95BF16: MemLdPr RsFrm
  loc_95BF19:  = Me.BOF
  loc_95BF1E: FLdI2 var_88
  loc_95BF21: FStI2 var_86
  loc_95BF24: ExitProcCbHresult
  loc_95BF2A: FLdPr var_2FF8
End Sub

Public Sub Sort(sOrden) '9454C4
  'Data Table: 40E248
  loc_9454B4: ILdI4 sOrden
  loc_9454B7: FLdPr Me
  loc_9454BA: MemLdPr RsFrm
  loc_9454BD: Me.Sort = from_stack_1
  loc_9454C2: ExitProcHresult
End Sub

Public Sub Find(sFind) '968BB0
  'Data Table: 40E248
  loc_968B90: LitVar_Missing var_94
  loc_968B93: PopAdLdVar
  loc_968B94: LitI4 1
  loc_968B99: LitI4 0
  loc_968B9E: ILdI4 sFind
  loc_968BA1: FLdPr Me
  loc_968BA4: MemLdPr RsFrm
  loc_968BA7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_968BAC: ExitProcHresult
  loc_968BAD: StAryMove
End Sub

Public Sub Filter(sCriterio) '968C00
  'Data Table: 40E248
  loc_968BE4: On Error Resume Next
  loc_968BE9: ILdI4 sCriterio
  loc_968BEC: CVarStr var_94
  loc_968BEF: PopAdLdVar
  loc_968BF0: FLdPr Me
  loc_968BF3: MemLdPr RsFrm
  loc_968BF6: Me.Filter = from_stack_1
  loc_968BFD: ExitProcHresult
  loc_968BFE: LitStr "StrFormMemory_0"
End Sub

Public Property Get AbsolutePosition() '95BDFC
  'Data Table: 40E248
  loc_95BDE0: FLdRfVar var_8C
  loc_95BDE3: FLdPr Me
  loc_95BDE6: MemLdPr RsFrm
  loc_95BDE9:  = Me.AbsolutePosition
  loc_95BDEE: ILdRf var_8C
  loc_95BDF1: FStR4 var_88
  loc_95BDF4: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '95BD64
  'Data Table: 40E248
  loc_95BD48: FLdRfVar var_8C
  loc_95BD4B: FLdPr Me
  loc_95BD4E: MemLdPr RsFrm
  loc_95BD51:  = Me.RecordCount
  loc_95BD56: ILdRf var_8C
  loc_95BD59: FStR4 var_88
  loc_95BD5C: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriInfo, CodiBanc, NumeMoba, FechMoba, FecoMoba, DebeMoba, HabeMoba, DetaMoba) 'A4A634
  'Data Table: 40E248
  loc_A4A424: ILdRf FechMoba
  loc_A4A427: FStStrCopy var_88
  loc_A4A42A: ILdRf FecoMoba
  loc_A4A42D: FStStrCopy var_8C
  loc_A4A430: ILdRf arg_30
  loc_A4A433: FStStrCopy var_90
  loc_A4A436: FLdRfVar var_94
  loc_A4A439: ILdRf var_88
  loc_A4A43C: ILdRf NumeMoba
  loc_A4A43F: ILdRf CodiBanc
  loc_A4A442: FLdI2 PeriInfo
  loc_A4A445: from_stack_5v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_A4A44A: ILdRf var_94
  loc_A4A44D: LitStr vbNullString
  loc_A4A450: NeStr
  loc_A4A452: FFree1Str var_94
  loc_A4A455: BranchF loc_A4A468
  loc_A4A458: LitI4 0
  loc_A4A45D: LitStr "El Movimiento del Extracto YA EXISTE. Verifique..."
  loc_A4A460: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A4A465: Branch loc_A4A61F
  loc_A4A468: FLdRfVar var_8C
  loc_A4A46B: CVarRef
  loc_A4A470: ImpAdCallI2 IsDate()
  loc_A4A475: FStI2 var_2CE
  loc_A4A478: LitI4 1
  loc_A4A47D: LitI4 1
  loc_A4A482: LitVarStr var_120, "'yyyy-mm-dd'"
  loc_A4A487: FStVarCopyObj var_130
  loc_A4A48A: FLdRfVar var_130
  loc_A4A48D: FLdRfVar var_8C
  loc_A4A490: CVarRef
  loc_A4A495: ImpAdCallI2 Format$(, )
  loc_A4A49A: FStStr var_2D4
  loc_A4A49D: LitStr "INSERT INTO moviextracto (PeriInfo,CodiBanc,NumeMoba,FechMoba,FecoMoba,DebeMoba,HabeMoba,DetaMoba,AltaUsua)"
  loc_A4A4A0: LitStr " VALUES ("
  loc_A4A4A3: ConcatStr
  loc_A4A4A4: FStStrNoPop var_94
  loc_A4A4A7: FLdI2 PeriInfo
  loc_A4A4AA: CStrUI1
  loc_A4A4AC: FStStrNoPop var_98
  loc_A4A4AF: ConcatStr
  loc_A4A4B0: FStStrNoPop var_9C
  loc_A4A4B3: LitStr ","
  loc_A4A4B6: ConcatStr
  loc_A4A4B7: FStStrNoPop var_A0
  loc_A4A4BA: ILdRf CodiBanc
  loc_A4A4BD: CStrI4
  loc_A4A4BF: FStStrNoPop var_A4
  loc_A4A4C2: ConcatStr
  loc_A4A4C3: FStStrNoPop var_A8
  loc_A4A4C6: LitStr ","
  loc_A4A4C9: ConcatStr
  loc_A4A4CA: FStStrNoPop var_AC
  loc_A4A4CD: ILdRf NumeMoba
  loc_A4A4D0: CStrI4
  loc_A4A4D2: FStStrNoPop var_B0
  loc_A4A4D5: ConcatStr
  loc_A4A4D6: FStStrNoPop var_B4
  loc_A4A4D9: LitStr ","
  loc_A4A4DC: ConcatStr
  loc_A4A4DD: FStStrNoPop var_E8
  loc_A4A4E0: LitI4 1
  loc_A4A4E5: LitI4 1
  loc_A4A4EA: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_A4A4EF: FStVarCopyObj var_E4
  loc_A4A4F2: FLdRfVar var_E4
  loc_A4A4F5: FLdRfVar var_88
  loc_A4A4F8: CVarRef
  loc_A4A4FD: ImpAdCallI2 Format$(, )
  loc_A4A502: FStStrNoPop var_EC
  loc_A4A505: ConcatStr
  loc_A4A506: FStStrNoPop var_F0
  loc_A4A509: LitStr ","
  loc_A4A50C: ConcatStr
  loc_A4A50D: CVarStr var_190
  loc_A4A510: LitVarStr var_160, "Null"
  loc_A4A515: FStVarCopyObj var_170
  loc_A4A518: FLdRfVar var_170
  loc_A4A51B: FLdZeroAd var_2D4
  loc_A4A51E: CVarStr var_150
  loc_A4A521: FLdI2 var_2CE
  loc_A4A524: CVarBoolI2 var_140
  loc_A4A528: FLdRfVar var_180
  loc_A4A52B: ImpAdCallFPR4  = IIf(, , )
  loc_A4A530: FLdRfVar var_180
  loc_A4A533: ConcatVar var_1A0
  loc_A4A537: LitVarStr var_1B0, ","
  loc_A4A53C: ConcatVar var_1C0
  loc_A4A540: LitI4 0
  loc_A4A545: LitI4 -1
  loc_A4A54A: LitI4 1
  loc_A4A54F: LitStr "."
  loc_A4A552: LitStr ","
  loc_A4A555: FLdFPR8 DebeMoba
  loc_A4A558: CStrR8
  loc_A4A55A: FStStrNoPop var_1C4
  loc_A4A55D: ImpAdCallI2 Replace(, , , , , )
  loc_A4A562: CVarStr var_1D4
  loc_A4A565: ConcatVar var_1E4
  loc_A4A569: LitVarStr var_1F4, ","
  loc_A4A56E: ConcatVar var_204
  loc_A4A572: LitI4 0
  loc_A4A577: LitI4 -1
  loc_A4A57C: LitI4 1
  loc_A4A581: LitStr "."
  loc_A4A584: LitStr ","
  loc_A4A587: FLdFPR8 DetaMoba
  loc_A4A58A: CStrR8
  loc_A4A58C: FStStrNoPop var_208
  loc_A4A58F: ImpAdCallI2 Replace(, , , , , )
  loc_A4A594: CVarStr var_218
  loc_A4A597: ConcatVar var_228
  loc_A4A59B: LitVarStr var_238, ",'"
  loc_A4A5A0: ConcatVar var_248
  loc_A4A5A4: ILdRf var_90
  loc_A4A5A7: CVarStr var_258
  loc_A4A5AA: ConcatVar var_268
  loc_A4A5AE: LitVarStr var_278, "','"
  loc_A4A5B3: ConcatVar var_288
  loc_A4A5B7: ImpAdLdI4 MemVar_C3D03C
  loc_A4A5BA: CVarStr var_298
  loc_A4A5BD: ConcatVar var_2A8
  loc_A4A5C1: LitVarStr var_2B8, "')"
  loc_A4A5C6: ConcatVar var_2C8
  loc_A4A5CA: CStrVarVal var_2CC
  loc_A4A5CE: Call EjecutarRsCls(from_stack_1v)
  loc_A4A5D3: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_1C4 = "": var_208 = "": var_2CC = ""
  loc_A4A5F6: FFreeVar var_E4 = "": var_130 = "": var_140 = "": var_150 = "": var_170 = "": var_190 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_218 = "": var_228 = "": var_248 = "": var_268 = "": var_288 = "": var_2A8 = ""
  loc_A4A61F: ILdRf var_88
  loc_A4A622: ILdRf NumeMoba
  loc_A4A625: ILdRf CodiBanc
  loc_A4A628: FLdI2 PeriInfo
  loc_A4A62B: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_A4A630: ExitProcHresult
End Sub

Public Sub Eliminar() '9C25A8
  'Data Table: 40E248
  loc_9C24E8: LitStr "DELETE FROM moviextracto"
  loc_9C24EB: LitStr " WHERE IdMobaex = "
  loc_9C24EE: ConcatStr
  loc_9C24EF: CVarStr var_BC
  loc_9C24F2: FLdRfVar var_AC
  loc_9C24F5: FLdRfVar var_9C
  loc_9C24F8: LitVarStr var_98, "IdMobaex"
  loc_9C24FD: PopAdLdVar
  loc_9C24FE: FLdRfVar var_88
  loc_9C2501: FLdPr Me
  loc_9C2504: MemLdPr RsFrm
  loc_9C2507:  = Me.Fields
  loc_9C250C: FLdPr var_88
  loc_9C250F: from_stack_2 = Me.Item(from_stack_1)
  loc_9C2514: FLdPr var_9C
  loc_9C2517:  = Me.Value
  loc_9C251C: FLdRfVar var_AC
  loc_9C251F: ConcatVar var_CC
  loc_9C2523: LitVarStr var_DC, ";"
  loc_9C2528: ConcatVar var_EC
  loc_9C252C: CStrVarVal var_F0
  loc_9C2530: Call EjecutarRsCls(from_stack_1v)
  loc_9C2535: FFree1Str var_F0
  loc_9C2538: FFreeAd var_88 = ""
  loc_9C253F: FFreeVar var_BC = "": var_AC = "": var_CC = ""
  loc_9C254A: FLdRfVar var_F8
  loc_9C254D: FLdPr Me
  loc_9C2550: MemLdPr RsFrm
  loc_9C2553:  = Me.AbsolutePosition
  loc_9C2558: ILdRf var_F8
  loc_9C255B: FStR4 var_F4
  loc_9C255E: Call Requery()
  loc_9C2563: FLdRfVar var_F8
  loc_9C2566: FLdPr Me
  loc_9C2569: MemLdPr RsFrm
  loc_9C256C:  = Me.RecordCount
  loc_9C2571: ILdRf var_F8
  loc_9C2574: LitI4 0
  loc_9C2579: GtI4
  loc_9C257A: BranchF loc_9C25A6
  loc_9C257D: Call MoveFirst()
  loc_9C2582: ILdRf var_F4
  loc_9C2585: LitI4 1
  loc_9C258A: GtI4
  loc_9C258B: BranchF loc_9C25A6
  loc_9C258E: LitVar_Missing var_98
  loc_9C2591: PopAdLdVar
  loc_9C2592: ILdRf var_F4
  loc_9C2595: LitI4 2
  loc_9C259A: SubI4
  loc_9C259B: FLdPr Me
  loc_9C259E: MemLdPr RsFrm
  loc_9C25A1: Me.Move from_stack_1, from_stack_2
  loc_9C25A6: ExitProcHresult
End Sub

Public Sub Modificar(IdMobaex, CodiBanc, NumeMoba, FechMoba, FecoMoba, DebeMoba, HabeMoba, DetaMoba) 'A55F3C
  'Data Table: 40E248
  loc_A55CE8: ILdRf FecoMoba
  loc_A55CEB: FStStrCopy var_88
  loc_A55CEE: ILdRf DebeMoba
  loc_A55CF1: FStStrCopy var_8C
  loc_A55CF4: ILdRf arg_34
  loc_A55CF7: FStStrCopy var_90
  loc_A55CFA: FLdRfVar var_94
  loc_A55CFD: ILdRf var_88
  loc_A55D00: ILdRf FechMoba
  loc_A55D03: ILdRf NumeMoba
  loc_A55D06: ImpAdLdI2 MemVar_C3D064
  loc_A55D09: from_stack_5v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_A55D0E: ILdRf var_94
  loc_A55D11: LitStr vbNullString
  loc_A55D14: NeStr
  loc_A55D16: FFree1Str var_94
  loc_A55D19: BranchF loc_A55F27
  loc_A55D1C: LitI4 0
  loc_A55D21: LitStr "Advertencia: El Movimiento del Extracto YA EXISTE. Verifique..."
  loc_A55D24: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A55D29: FLdRfVar var_88
  loc_A55D2C: CVarRef
  loc_A55D31: ImpAdCallI2 IsDate()
  loc_A55D36: FStI2 var_3A6
  loc_A55D39: LitI4 1
  loc_A55D3E: LitI4 1
  loc_A55D43: LitVarStr var_D8, "'yyyy-mm-dd'"
  loc_A55D48: FStVarCopyObj var_E8
  loc_A55D4B: FLdRfVar var_E8
  loc_A55D4E: FLdRfVar var_88
  loc_A55D51: CVarRef
  loc_A55D56: ImpAdCallI2 Format$(, )
  loc_A55D5B: FStStr var_3AC
  loc_A55D5E: FLdRfVar var_8C
  loc_A55D61: CVarRef
  loc_A55D66: ImpAdCallI2 IsDate()
  loc_A55D6B: FStI2 var_3AE
  loc_A55D6E: LitI4 1
  loc_A55D73: LitI4 1
  loc_A55D78: LitVarStr var_1A8, "'yyyy-mm-dd'"
  loc_A55D7D: FStVarCopyObj var_1B8
  loc_A55D80: FLdRfVar var_1B8
  loc_A55D83: FLdRfVar var_8C
  loc_A55D86: CVarRef
  loc_A55D8B: ImpAdCallI2 Format$(, )
  loc_A55D90: FStStr var_3B4
  loc_A55D93: LitStr "UPDATE moviextracto"
  loc_A55D96: LitStr " SET CodiBanc="
  loc_A55D99: ConcatStr
  loc_A55D9A: FStStrNoPop var_94
  loc_A55D9D: ILdRf NumeMoba
  loc_A55DA0: CStrI4
  loc_A55DA2: FStStrNoPop var_98
  loc_A55DA5: ConcatStr
  loc_A55DA6: FStStrNoPop var_9C
  loc_A55DA9: LitStr ", NumeMoba="
  loc_A55DAC: ConcatStr
  loc_A55DAD: FStStrNoPop var_A0
  loc_A55DB0: ILdRf FechMoba
  loc_A55DB3: CStrI4
  loc_A55DB5: FStStrNoPop var_A4
  loc_A55DB8: ConcatStr
  loc_A55DB9: FStStrNoPop var_A8
  loc_A55DBC: LitStr ", FechMoba="
  loc_A55DBF: ConcatStr
  loc_A55DC0: CVarStr var_148
  loc_A55DC3: LitVarStr var_118, "Null"
  loc_A55DC8: FStVarCopyObj var_128
  loc_A55DCB: FLdRfVar var_128
  loc_A55DCE: FLdZeroAd var_3AC
  loc_A55DD1: CVarStr var_108
  loc_A55DD4: FLdI2 var_3A6
  loc_A55DD7: CVarBoolI2 var_F8
  loc_A55DDB: FLdRfVar var_138
  loc_A55DDE: ImpAdCallFPR4  = IIf(, , )
  loc_A55DE3: FLdRfVar var_138
  loc_A55DE6: ConcatVar var_158
  loc_A55DEA: LitVarStr var_168, ", FecoMoba="
  loc_A55DEF: ConcatVar var_178
  loc_A55DF3: LitVarStr var_1E8, "Null"
  loc_A55DF8: FStVarCopyObj var_1F8
  loc_A55DFB: FLdRfVar var_1F8
  loc_A55DFE: FLdZeroAd var_3B4
  loc_A55E01: CVarStr var_1D8
  loc_A55E04: FLdI2 var_3AE
  loc_A55E07: CVarBoolI2 var_1C8
  loc_A55E0B: FLdRfVar var_208
  loc_A55E0E: ImpAdCallFPR4  = IIf(, , )
  loc_A55E13: FLdRfVar var_208
  loc_A55E16: ConcatVar var_218
  loc_A55E1A: LitVarStr var_228, ", DebeMoba="
  loc_A55E1F: ConcatVar var_238
  loc_A55E23: LitI4 0
  loc_A55E28: LitI4 -1
  loc_A55E2D: LitI4 1
  loc_A55E32: LitStr "."
  loc_A55E35: LitStr ","
  loc_A55E38: FLdFPR8 HabeMoba
  loc_A55E3B: CStrR8
  loc_A55E3D: FStStrNoPop var_23C
  loc_A55E40: ImpAdCallI2 Replace(, , , , , )
  loc_A55E45: CVarStr var_24C
  loc_A55E48: ConcatVar var_25C
  loc_A55E4C: LitVarStr var_26C, ", HabeMoba="
  loc_A55E51: ConcatVar var_27C
  loc_A55E55: LitI4 0
  loc_A55E5A: LitI4 -1
  loc_A55E5F: LitI4 1
  loc_A55E64: LitStr "."
  loc_A55E67: LitStr ","
  loc_A55E6A: FLdFPR8 arg_2C
  loc_A55E6D: CStrR8
  loc_A55E6F: FStStrNoPop var_280
  loc_A55E72: ImpAdCallI2 Replace(, , , , , )
  loc_A55E77: CVarStr var_290
  loc_A55E7A: ConcatVar var_2A0
  loc_A55E7E: LitVarStr var_2B0, ", DetaMoba='"
  loc_A55E83: ConcatVar var_2C0
  loc_A55E87: ILdRf var_90
  loc_A55E8A: CVarStr var_2D0
  loc_A55E8D: ConcatVar var_2E0
  loc_A55E91: LitVarStr var_2F0, "'"
  loc_A55E96: ConcatVar var_300
  loc_A55E9A: LitVarStr var_310, " WHERE PeriInfo = "
  loc_A55E9F: ConcatVar var_320
  loc_A55EA3: ImpAdLdI2 MemVar_C3D064
  loc_A55EA6: CVarI2 var_330
  loc_A55EA9: ConcatVar var_340
  loc_A55EAD: LitVarStr var_350, " AND IdMobaex = "
  loc_A55EB2: ConcatVar var_360
  loc_A55EB6: FLdFPR8 IdMobaex
  loc_A55EB9: CVarR8
  loc_A55EBD: ConcatVar var_380
  loc_A55EC1: LitVarStr var_390, ";"
  loc_A55EC6: ConcatVar var_3A0
  loc_A55ECA: CStrVarVal var_3A4
  loc_A55ECE: Call EjecutarRsCls(from_stack_1v)
  loc_A55ED3: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_23C = "": var_280 = "": var_3A4 = "": var_3AC = ""
  loc_A55EEC: FFreeVar var_E8 = "": var_F8 = "": var_108 = "": var_128 = "": var_148 = "": var_138 = "": var_158 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_178 = "": var_208 = "": var_218 = "": var_238 = "": var_24C = "": var_25C = "": var_27C = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E0 = "": var_300 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = ""
  loc_A55F27: ILdRf var_88
  loc_A55F2A: ILdRf FechMoba
  loc_A55F2D: ILdRf NumeMoba
  loc_A55F30: ImpAdLdI2 MemVar_C3D064
  loc_A55F33: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_A55F38: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '97371C
  'Data Table: 40E248
  loc_9736F4: ILdRf sSelect
  loc_9736F7: FStStrCopy var_88
  loc_9736FA: FLdPr Me
  loc_9736FD: MemLdRfVar from_stack_1.RsFrm
  loc_973700: ILdRf var_88
  loc_973703: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_973708: LitVarStr var_98, "Primary"
  loc_97370D: PopAdLdVar
  loc_97370E: FLdPr Me
  loc_973711: LateIdCall
  loc_973719: ExitProcHresult
  loc_97371A: CCyI2
End Sub

Public Sub EjecutarRsCls(sSelect) '95BC30
  'Data Table: 40E248
  loc_95BC18: ILdRf sSelect
  loc_95BC1B: FStStrCopy var_88
  loc_95BC1E: FLdPr Me
  loc_95BC21: MemLdRfVar from_stack_1.global_56
  loc_95BC24: ILdRf var_88
  loc_95BC27: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95BC2C: ExitProcHresult
End Sub

Public Sub Requery() '968CA0
  'Data Table: 40E248
  loc_968C80: FLdPr Me
  loc_968C83: MemLdRfVar from_stack_1.RsFrm
  loc_968C86: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_968C8B: LitVarStr var_94, "Primary"
  loc_968C90: PopAdLdVar
  loc_968C91: FLdPr Me
  loc_968C94: LateIdCall
  loc_968C9C: ExitProcHresult
End Sub

Public Property Get DataSource() '97382C
  'Data Table: 40E248
  loc_973808: ZeroRetVal
  loc_97380A: FLdRfVar var_8C
  loc_97380D: FLdPr Me
  loc_973810: MemLdPr RsFrm
  loc_973813:  = Me.DataSource
  loc_973818: ILdRf var_8C
  loc_97381B: CastAd
  loc_97381E: FStAdFunc var_88
  loc_973821: FFree1Ad var_8C
  loc_973824: ExitProcCbHresult
End Sub

Public Sub Encontrar(PeriInfo, CodiBanc, NumeMoba, FechMoex) 'A31704
  'Data Table: 40E248
  loc_A31512: ILdRf FechMoex
  loc_A31515: FStStrCopy var_88
  loc_A3151A: On Error Resume Next
  loc_A3151F: FLdI2 PeriInfo
  loc_A31522: LitI2_Byte 0
  loc_A31524: EqI2
  loc_A31525: ILdRf CodiBanc
  loc_A31528: LitI4 0
  loc_A3152D: EqI4
  loc_A3152E: AndI4
  loc_A3152F: ILdRf NumeMoba
  loc_A31532: LitI4 0
  loc_A31537: EqI4
  loc_A31538: AndI4
  loc_A31539: FLdRfVar var_8C
  loc_A3153C: FLdPr Me
  loc_A3153F: MemLdPr RsFrm
  loc_A31542:  = Me.RecordCount
  loc_A31547: ILdRf var_8C
  loc_A3154A: LitI4 0
  loc_A3154F: GtI4
  loc_A31550: AndI4
  loc_A31551: FLdRfVar var_90
  loc_A31554: FLdPr Me
  loc_A31557: MemLdPr RsFrm
  loc_A3155A:  = Me.AbsolutePosition
  loc_A3155F: ILdRf var_90
  loc_A31562: LitI4 -3
  loc_A31567: NeI4
  loc_A31568: AndI4
  loc_A31569: BranchF loc_A31662
  loc_A3156E: FLdRfVar var_B8
  loc_A31571: FLdRfVar var_A8
  loc_A31574: LitVarStr var_A4, "PeriInfo"
  loc_A31579: PopAdLdVar
  loc_A3157A: FLdRfVar var_94
  loc_A3157D: FLdPr Me
  loc_A31580: MemLdPr RsFrm
  loc_A31583:  = Me.Fields
  loc_A31588: FLdPr var_94
  loc_A3158B: from_stack_2 = Me.Item(from_stack_1)
  loc_A31590: FLdPr var_A8
  loc_A31593:  = Me.Value
  loc_A31598: FLdRfVar var_B8
  loc_A3159B: CI2Var
  loc_A3159C: FStI2 PeriInfo
  loc_A3159F: FFreeAd var_94 = ""
  loc_A315A6: FFree1Var var_B8 = ""
  loc_A315AB: FLdRfVar var_B8
  loc_A315AE: FLdRfVar var_A8
  loc_A315B1: LitVarStr var_A4, "CodiBanc"
  loc_A315B6: PopAdLdVar
  loc_A315B7: FLdRfVar var_94
  loc_A315BA: FLdPr Me
  loc_A315BD: MemLdPr RsFrm
  loc_A315C0:  = Me.Fields
  loc_A315C5: FLdPr var_94
  loc_A315C8: from_stack_2 = Me.Item(from_stack_1)
  loc_A315CD: FLdPr var_A8
  loc_A315D0:  = Me.Value
  loc_A315D5: FLdRfVar var_B8
  loc_A315D8: CI4Var
  loc_A315DA: FStR4 CodiBanc
  loc_A315DD: FFreeAd var_94 = ""
  loc_A315E4: FFree1Var var_B8 = ""
  loc_A315E9: FLdRfVar var_B8
  loc_A315EC: FLdRfVar var_A8
  loc_A315EF: LitVarStr var_A4, "NumeMoba"
  loc_A315F4: PopAdLdVar
  loc_A315F5: FLdRfVar var_94
  loc_A315F8: FLdPr Me
  loc_A315FB: MemLdPr RsFrm
  loc_A315FE:  = Me.Fields
  loc_A31603: FLdPr var_94
  loc_A31606: from_stack_2 = Me.Item(from_stack_1)
  loc_A3160B: FLdPr var_A8
  loc_A3160E:  = Me.Value
  loc_A31613: FLdRfVar var_B8
  loc_A31616: CI4Var
  loc_A31618: FStR4 NumeMoba
  loc_A3161B: FFreeAd var_94 = ""
  loc_A31622: FFree1Var var_B8 = ""
  loc_A31627: FLdRfVar var_B8
  loc_A3162A: FLdRfVar var_A8
  loc_A3162D: LitVarStr var_A4, "FechMoba"
  loc_A31632: PopAdLdVar
  loc_A31633: FLdRfVar var_94
  loc_A31636: FLdPr Me
  loc_A31639: MemLdPr RsFrm
  loc_A3163C:  = Me.Fields
  loc_A31641: FLdPr var_94
  loc_A31644: from_stack_2 = Me.Item(from_stack_1)
  loc_A31649: FLdPr var_A8
  loc_A3164C:  = Me.Value
  loc_A31651: FLdRfVar var_B8
  loc_A31654: CStrVarTmp
  loc_A31655: FStStr var_88
  loc_A31658: FFreeAd var_94 = ""
  loc_A3165F: FFree1Var var_B8 = ""
  loc_A31666: Call Requery()
  loc_A3166D: LitStr "PeriInfo = '"
  loc_A31670: FLdI2 PeriInfo
  loc_A31673: CStrUI1
  loc_A31675: FStStrNoPop var_BC
  loc_A31678: ConcatStr
  loc_A31679: FStStrNoPop var_C0
  loc_A3167C: LitStr "'"
  loc_A3167F: ConcatStr
  loc_A31680: PopTmpLdAdStr
  loc_A31684: Call Find(from_stack_1v)
  loc_A31689: FFreeStr var_BC = "": var_C0 = ""
  loc_A31694: LitStr "CodiBanc = '"
  loc_A31697: ILdRf CodiBanc
  loc_A3169A: CStrI4
  loc_A3169C: FStStrNoPop var_BC
  loc_A3169F: ConcatStr
  loc_A316A0: FStStrNoPop var_C0
  loc_A316A3: LitStr "'"
  loc_A316A6: ConcatStr
  loc_A316A7: PopTmpLdAdStr
  loc_A316AB: Call Find(from_stack_1v)
  loc_A316B0: FFreeStr var_BC = "": var_C0 = ""
  loc_A316BB: LitStr "NumeMoba = '"
  loc_A316BE: ILdRf NumeMoba
  loc_A316C1: CStrI4
  loc_A316C3: FStStrNoPop var_BC
  loc_A316C6: ConcatStr
  loc_A316C7: FStStrNoPop var_C0
  loc_A316CA: LitStr "'"
  loc_A316CD: ConcatStr
  loc_A316CE: PopTmpLdAdStr
  loc_A316D2: Call Find(from_stack_1v)
  loc_A316D7: FFreeStr var_BC = "": var_C0 = ""
  loc_A316E2: LitStr "FechMoba = '"
  loc_A316E5: ILdRf var_88
  loc_A316E8: ConcatStr
  loc_A316E9: FStStrNoPop var_BC
  loc_A316EC: LitStr "'"
  loc_A316EF: ConcatStr
  loc_A316F0: PopTmpLdAdStr
  loc_A316F4: Call Find(from_stack_1v)
  loc_A316F9: FFreeStr var_BC = ""
  loc_A31702: ExitProcHresult
End Sub

Public Function ValidaClave(PeriInfo, CodiBanc, NumeMoba, FechMoex) '9E2668
  'Data Table: 40E248
  loc_9E258C: ILdRf FechMoex
  loc_9E258F: FStStrCopy var_8C
  loc_9E2592: ZeroRetVal
  loc_9E2594: LitStr "SELECT PeriInfo, CodiBanc, NumeMoba"
  loc_9E2597: LitStr " FROM moviextracto"
  loc_9E259A: ConcatStr
  loc_9E259B: FStStrNoPop var_90
  loc_9E259E: LitStr " WHERE PeriInfo = "
  loc_9E25A1: ConcatStr
  loc_9E25A2: FStStrNoPop ValidaClave
  loc_9E25A5: FLdI2 PeriInfo
  loc_9E25A8: CStrUI1
  loc_9E25AA: FStStrNoPop var_98
  loc_9E25AD: ConcatStr
  loc_9E25AE: FStStrNoPop var_9C
  loc_9E25B1: LitStr " AND CodiBanc = "
  loc_9E25B4: ConcatStr
  loc_9E25B5: FStStrNoPop var_A0
  loc_9E25B8: ILdRf CodiBanc
  loc_9E25BB: CStrI4
  loc_9E25BD: FStStrNoPop var_A4
  loc_9E25C0: ConcatStr
  loc_9E25C1: FStStrNoPop var_A8
  loc_9E25C4: LitStr " AND NumeMoba = "
  loc_9E25C7: ConcatStr
  loc_9E25C8: FStStrNoPop var_AC
  loc_9E25CB: ILdRf NumeMoba
  loc_9E25CE: CStrI4
  loc_9E25D0: FStStrNoPop var_B0
  loc_9E25D3: ConcatStr
  loc_9E25D4: FStStrNoPop var_B4
  loc_9E25D7: LitStr " AND FechMoba = "
  loc_9E25DA: ConcatStr
  loc_9E25DB: CVarStr var_104
  loc_9E25DE: LitI4 1
  loc_9E25E3: LitI4 1
  loc_9E25E8: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_9E25ED: FStVarCopyObj var_E4
  loc_9E25F0: FLdRfVar var_E4
  loc_9E25F3: FLdRfVar var_8C
  loc_9E25F6: CVarRef
  loc_9E25FB: FLdRfVar var_F4
  loc_9E25FE: ImpAdCallFPR4  = Format(, )
  loc_9E2603: FLdRfVar var_F4
  loc_9E2606: ConcatVar var_114
  loc_9E260A: LitVarStr var_124, ";"
  loc_9E260F: ConcatVar var_134
  loc_9E2613: CStrVarVal var_138
  loc_9E2617: Call EjecutarRsCls(from_stack_1v)
  loc_9E261C: FFreeStr var_90 = "": ValidaClave = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_9E2635: FFreeVar var_E4 = "": var_104 = "": var_F4 = "": var_114 = ""
  loc_9E2642: FLdRfVar var_13C
  loc_9E2645: FLdPr Me
  loc_9E2648: MemLdPr global_56
  loc_9E264B:  = Me.RecordCount
  loc_9E2650: ILdRf var_13C
  loc_9E2653: LitI4 0
  loc_9E2658: GtI4
  loc_9E2659: BranchF loc_9E2662
  loc_9E265C: LitStr "El Movimiento del Extracto YA EXISTE. Reintente..."
  loc_9E265F: FStStrCopy var_88
  loc_9E2662: ExitProcCbHresult
End Function

Public Function UltimoNroSegunTipo(CodiBanc, FechMoex) '9ED190
  'Data Table: 40E248
  loc_9ED08C: ILdRf FechMoex
  loc_9ED08F: FStStrCopy var_8C
  loc_9ED092: LitStr "SELECT IFNULL(MAX(NumeMoba)+1,1) AS NumeMoba"
  loc_9ED095: LitStr " FROM moviextracto"
  loc_9ED098: ConcatStr
  loc_9ED099: FStStrNoPop var_90
  loc_9ED09C: LitStr " WHERE PeriInfo = "
  loc_9ED09F: ConcatStr
  loc_9ED0A0: FStStrNoPop UltimoNroSegunTipo
  loc_9ED0A3: ImpAdLdI2 MemVar_C3D064
  loc_9ED0A6: CStrUI1
  loc_9ED0A8: FStStrNoPop var_98
  loc_9ED0AB: ConcatStr
  loc_9ED0AC: FStStrNoPop var_9C
  loc_9ED0AF: LitStr " AND CodiBanc = "
  loc_9ED0B2: ConcatStr
  loc_9ED0B3: FStStrNoPop var_A0
  loc_9ED0B6: ILdRf CodiBanc
  loc_9ED0B9: CStrI4
  loc_9ED0BB: FStStrNoPop var_A4
  loc_9ED0BE: ConcatStr
  loc_9ED0BF: FStStrNoPop var_A8
  loc_9ED0C2: LitStr " AND FechMoba = "
  loc_9ED0C5: ConcatStr
  loc_9ED0C6: CVarStr var_F8
  loc_9ED0C9: LitI4 1
  loc_9ED0CE: LitI4 1
  loc_9ED0D3: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_9ED0D8: FStVarCopyObj var_D8
  loc_9ED0DB: FLdRfVar var_D8
  loc_9ED0DE: FLdRfVar var_8C
  loc_9ED0E1: CVarRef
  loc_9ED0E6: FLdRfVar var_E8
  loc_9ED0E9: ImpAdCallFPR4  = Format(, )
  loc_9ED0EE: FLdRfVar var_E8
  loc_9ED0F1: ConcatVar var_108
  loc_9ED0F5: LitVarStr var_118, ";"
  loc_9ED0FA: ConcatVar var_128
  loc_9ED0FE: CStrVarVal var_12C
  loc_9ED102: Call EjecutarRsCls(from_stack_1v)
  loc_9ED107: FFreeStr var_90 = "": UltimoNroSegunTipo = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9ED11A: FFreeVar var_D8 = "": var_F8 = "": var_E8 = "": var_108 = ""
  loc_9ED127: FLdRfVar var_130
  loc_9ED12A: FLdPr Me
  loc_9ED12D: MemLdPr global_56
  loc_9ED130:  = Me.RecordCount
  loc_9ED135: ILdRf var_130
  loc_9ED138: LitI4 0
  loc_9ED13D: GtI4
  loc_9ED13E: BranchF loc_9ED180
  loc_9ED141: FLdRfVar var_D8
  loc_9ED144: FLdRfVar var_138
  loc_9ED147: LitVarStr var_B8, "NumeMoba"
  loc_9ED14C: PopAdLdVar
  loc_9ED14D: FLdRfVar var_134
  loc_9ED150: FLdPr Me
  loc_9ED153: MemLdPr global_56
  loc_9ED156:  = Me.Fields
  loc_9ED15B: FLdPr var_134
  loc_9ED15E: from_stack_2 = Me.Item(from_stack_1)
  loc_9ED163: FLdPr var_138
  loc_9ED166:  = Me.Value
  loc_9ED16B: FLdRfVar var_D8
  loc_9ED16E: CI4Var
  loc_9ED170: FStR4 var_88
  loc_9ED173: FFreeAd var_134 = ""
  loc_9ED17A: FFree1Var var_D8 = ""
  loc_9ED17D: Branch loc_9ED188
  loc_9ED180: LitI4 1
  loc_9ED185: FStR4 var_88
  loc_9ED188: ExitProcCbHresult
End Function

Private Function Proc_19_26_9736BC() '9736BC
  'Data Table: 40E248
  loc_973698: LitStr "Primary"
  loc_97369B: FLdPr Me
  loc_97369E: LateIdLdVar var_94 DispID_4 0
  loc_9736A5: CastAdVar Me
  loc_9736A9: FStAdFunc var_98
  loc_9736AC: FLdPr var_98
  loc_9736B4: FFree1Ad var_98
  loc_9736B7: FFree1Var var_94 = ""
  loc_9736BA: ExitProcHresult
End Function

Private Function Proc_19_27_968CEC(arg_C) '968CEC
  'Data Table: 40E248
  loc_968CD0: ILdI4 arg_C
  loc_968CD3: FStStrCopy var_88
  loc_968CD6: ILdRf var_88
  loc_968CD9: LitStr "Primary"
  loc_968CDC: EqStr
  loc_968CDE: BranchF loc_968CEB
  loc_968CE1: FLdPr Me
  loc_968CE4: MemLdStr RsFrm
  loc_968CE7: IStAd
  loc_968CEB: ExitProcHresult
End Function
