VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsescaapre"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Move(iValor) '9B98D0
  'Data Table: 40F224
  loc_9B98BC: LitVar_Missing var_94
  loc_9B98BF: PopAdLdVar
  loc_9B98C0: ILdI2 iValor
  loc_9B98C3: CI4UI1
  loc_9B98C4: FLdPr Me
  loc_9B98C7: MemLdPr global_60
  loc_9B98CA: Me.Move from_stack_1, from_stack_2
  loc_9B98CF: ExitProcHresult
End Sub

Public Sub MoveFirst() '9EC1D4
  'Data Table: 40F224
  loc_9EC1AC: FLdRfVar var_88
  loc_9EC1AF: FLdPr Me
  loc_9EC1B2: MemLdPr global_60
  loc_9EC1B5:  = Me.RecordCount
  loc_9EC1BA: ILdRf var_88
  loc_9EC1BD: LitI4 0
  loc_9EC1C2: GtI4
  loc_9EC1C3: BranchF loc_9EC1D1
  loc_9EC1C6: FLdPr Me
  loc_9EC1C9: MemLdPr global_60
  loc_9EC1CC: Me.MoveFirst
  loc_9EC1D1: ExitProcHresult
End Sub

Public Sub MoveLast() '9EC38C
  'Data Table: 40F224
  loc_9EC364: FLdRfVar var_88
  loc_9EC367: FLdPr Me
  loc_9EC36A: MemLdPr global_60
  loc_9EC36D:  = Me.RecordCount
  loc_9EC372: ILdRf var_88
  loc_9EC375: LitI4 0
  loc_9EC37A: GtI4
  loc_9EC37B: BranchF loc_9EC389
  loc_9EC37E: FLdPr Me
  loc_9EC381: MemLdPr global_60
  loc_9EC384: Me.MoveLast
  loc_9EC389: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6A768
  'Data Table: 40F224
  loc_A6A6F0: FLdRfVar var_86
  loc_A6A6F3: FLdPr Me
  loc_A6A6F6: MemLdPr global_60
  loc_A6A6F9:  = Me.EOF
  loc_A6A6FE: FLdI2 var_86
  loc_A6A701: NotI4
  loc_A6A702: FLdRfVar var_8C
  loc_A6A705: FLdPr Me
  loc_A6A708: MemLdPr global_60
  loc_A6A70B:  = Me.RecordCount
  loc_A6A710: ILdRf var_8C
  loc_A6A713: LitI4 0
  loc_A6A718: GtI4
  loc_A6A719: AndI4
  loc_A6A71A: BranchF loc_A6A728
  loc_A6A71D: FLdPr Me
  loc_A6A720: MemLdPr global_60
  loc_A6A723: Me.MoveNext
  loc_A6A728: FLdRfVar var_86
  loc_A6A72B: FLdPr Me
  loc_A6A72E: MemLdPr global_60
  loc_A6A731:  = Me.EOF
  loc_A6A736: FLdI2 var_86
  loc_A6A739: FLdRfVar var_8C
  loc_A6A73C: FLdPr Me
  loc_A6A73F: MemLdPr global_60
  loc_A6A742:  = Me.RecordCount
  loc_A6A747: ILdRf var_8C
  loc_A6A74A: LitI4 0
  loc_A6A74F: GtI4
  loc_A6A750: AndI4
  loc_A6A751: BranchF loc_A6A764
  loc_A6A754: ImpAdCallFPR4 Beep()
  loc_A6A759: FLdPr Me
  loc_A6A75C: MemLdPr global_60
  loc_A6A75F: Me.MoveLast
  loc_A6A764: ExitProcHresult
  loc_A6A765: LdFixedStr
End Sub

Public Sub MoveSiguiente() '9B1C68
  'Data Table: 40F224
  loc_9B1C5C: FLdPr Me
  loc_9B1C5F: MemLdPr global_60
  loc_9B1C62: Me.MoveNext
  loc_9B1C67: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6A570
  'Data Table: 40F224
  loc_A6A4F8: FLdRfVar var_86
  loc_A6A4FB: FLdPr Me
  loc_A6A4FE: MemLdPr global_60
  loc_A6A501:  = Me.BOF
  loc_A6A506: FLdI2 var_86
  loc_A6A509: NotI4
  loc_A6A50A: FLdRfVar var_8C
  loc_A6A50D: FLdPr Me
  loc_A6A510: MemLdPr global_60
  loc_A6A513:  = Me.RecordCount
  loc_A6A518: ILdRf var_8C
  loc_A6A51B: LitI4 0
  loc_A6A520: GtI4
  loc_A6A521: AndI4
  loc_A6A522: BranchF loc_A6A530
  loc_A6A525: FLdPr Me
  loc_A6A528: MemLdPr global_60
  loc_A6A52B: Me.MovePrevious
  loc_A6A530: FLdRfVar var_86
  loc_A6A533: FLdPr Me
  loc_A6A536: MemLdPr global_60
  loc_A6A539:  = Me.BOF
  loc_A6A53E: FLdI2 var_86
  loc_A6A541: FLdRfVar var_8C
  loc_A6A544: FLdPr Me
  loc_A6A547: MemLdPr global_60
  loc_A6A54A:  = Me.RecordCount
  loc_A6A54F: ILdRf var_8C
  loc_A6A552: LitI4 0
  loc_A6A557: GtI4
  loc_A6A558: AndI4
  loc_A6A559: BranchF loc_A6A56C
  loc_A6A55C: ImpAdCallFPR4 Beep()
  loc_A6A561: FLdPr Me
  loc_A6A564: MemLdPr global_60
  loc_A6A567: Me.MoveFirst
  loc_A6A56C: ExitProcHresult
End Sub

Public Property Get EOF() '9D6490
  'Data Table: 40F224
  loc_9D6474: FLdRfVar var_88
  loc_9D6477: FLdPr Me
  loc_9D647A: MemLdPr global_60
  loc_9D647D:  = Me.EOF
  loc_9D6482: FLdI2 var_88
  loc_9D6485: FStI2 var_86
  loc_9D6488: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D63F8
  'Data Table: 40F224
  loc_9D63DC: FLdRfVar var_88
  loc_9D63DF: FLdPr Me
  loc_9D63E2: MemLdPr global_60
  loc_9D63E5:  = Me.BOF
  loc_9D63EA: FLdI2 var_88
  loc_9D63ED: FStI2 var_86
  loc_9D63F0: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B3CF8
  'Data Table: 40F224
  loc_9B3CE8: ILdI4 sOrden
  loc_9B3CEB: FLdPr Me
  loc_9B3CEE: MemLdPr global_60
  loc_9B3CF1: Me.Sort = from_stack_1
  loc_9B3CF6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E4890
  'Data Table: 40F224
  loc_9E4870: LitVar_Missing var_94
  loc_9E4873: PopAdLdVar
  loc_9E4874: LitI4 1
  loc_9E4879: LitI4 0
  loc_9E487E: ILdI4 sFind
  loc_9E4881: FLdPr Me
  loc_9E4884: MemLdPr global_60
  loc_9E4887: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E488C: ExitProcHresult
  loc_9E488D: ImpAdLdI4 MemVar_0
End Sub

Public Property Get AbsolutePosition() '9D61E4
  'Data Table: 40F224
  loc_9D61C8: FLdRfVar var_8C
  loc_9D61CB: FLdPr Me
  loc_9D61CE: MemLdPr global_60
  loc_9D61D1:  = Me.AbsolutePosition
  loc_9D61D6: ILdRf var_8C
  loc_9D61D9: FStR4 var_88
  loc_9D61DC: ExitProcCbHresult
  loc_9D61E2: ImpAdLdFPR4 MemVar_905A4D
End Sub

Public Property Get RecordCount() '9D614C
  'Data Table: 40F224
  loc_9D6130: FLdRfVar var_8C
  loc_9D6133: FLdPr Me
  loc_9D6136: MemLdPr global_60
  loc_9D6139:  = Me.RecordCount
  loc_9D613E: ILdRf var_8C
  loc_9D6141: FStR4 var_88
  loc_9D6144: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiPaap, TipoEsap, DesdEsap, HastEsap, ImpoEsap, HaceRequery) 'AF5E1C
  'Data Table: 40F224
  loc_AF5CA4: ILdRf TipoEsap
  loc_AF5CA7: FStStrCopy var_88
  loc_AF5CAA: FLdRfVar var_90
  loc_AF5CAD: ILdRf var_88
  loc_AF5CB0: FLdI2 CodiPaap
  loc_AF5CB3: from_stack_3v = NumeradorCodiEsap(from_stack_1v, from_stack_2v)
  loc_AF5CB8: FLdI2 var_90
  loc_AF5CBB: FStI2 var_8E
  loc_AF5CBE: FLdRfVar var_94
  loc_AF5CC1: ILdRf var_88
  loc_AF5CC4: FLdI2 var_8E
  loc_AF5CC7: FLdI2 CodiPaap
  loc_AF5CCA: from_stack_4v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AF5CCF: ILdRf var_94
  loc_AF5CD2: LitStr vbNullString
  loc_AF5CD5: NeStr
  loc_AF5CD7: FFree1Str var_94
  loc_AF5CDA: BranchF loc_AF5CE8
  loc_AF5CDD: LitStr "LA ESCALERA DE APREMIOS YA EXISTE. Reintente..."
  loc_AF5CE0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF5CE5: Branch loc_AF5E19
  loc_AF5CE8: LitStr "START TRANSACTION; INSERT INTO escaapre (CodiPaap, CodiEsap, TipoEsap, DesdEsap, HastEsap, ImpoEsap) "
  loc_AF5CEB: LitStr "VALUES ("
  loc_AF5CEE: ConcatStr
  loc_AF5CEF: FStStrNoPop var_94
  loc_AF5CF2: FLdI2 CodiPaap
  loc_AF5CF5: CStrUI1
  loc_AF5CF7: FStStrNoPop var_98
  loc_AF5CFA: ConcatStr
  loc_AF5CFB: FStStrNoPop var_9C
  loc_AF5CFE: LitStr ","
  loc_AF5D01: ConcatStr
  loc_AF5D02: FStStrNoPop var_A0
  loc_AF5D05: FLdI2 var_8E
  loc_AF5D08: CStrUI1
  loc_AF5D0A: FStStrNoPop var_A4
  loc_AF5D0D: ConcatStr
  loc_AF5D0E: FStStrNoPop var_A8
  loc_AF5D11: LitStr ",'"
  loc_AF5D14: ConcatStr
  loc_AF5D15: FStStrNoPop var_AC
  loc_AF5D18: ILdRf var_88
  loc_AF5D1B: ConcatStr
  loc_AF5D1C: FStStrNoPop var_B0
  loc_AF5D1F: LitStr "',"
  loc_AF5D22: ConcatStr
  loc_AF5D23: FStStrNoPop var_B8
  loc_AF5D26: LitI4 0
  loc_AF5D2B: LitI4 -1
  loc_AF5D30: LitI4 1
  loc_AF5D35: LitStr "."
  loc_AF5D38: LitStr ","
  loc_AF5D3B: FLdFPR8 DesdEsap
  loc_AF5D3E: CStrR8
  loc_AF5D40: FStStrNoPop var_B4
  loc_AF5D43: ImpAdCallI2 Replace(, , , , , )
  loc_AF5D48: FStStrNoPop var_BC
  loc_AF5D4B: ConcatStr
  loc_AF5D4C: FStStrNoPop var_C0
  loc_AF5D4F: LitStr ", "
  loc_AF5D52: ConcatStr
  loc_AF5D53: FStStrNoPop var_C8
  loc_AF5D56: LitI4 0
  loc_AF5D5B: LitI4 -1
  loc_AF5D60: LitI4 1
  loc_AF5D65: LitStr "."
  loc_AF5D68: LitStr ","
  loc_AF5D6B: FLdFPR8 ImpoEsap
  loc_AF5D6E: CStrR8
  loc_AF5D70: FStStrNoPop var_C4
  loc_AF5D73: ImpAdCallI2 Replace(, , , , , )
  loc_AF5D78: FStStrNoPop var_CC
  loc_AF5D7B: ConcatStr
  loc_AF5D7C: FStStrNoPop var_D0
  loc_AF5D7F: LitStr ", "
  loc_AF5D82: ConcatStr
  loc_AF5D83: FStStrNoPop var_D8
  loc_AF5D86: LitI4 0
  loc_AF5D8B: LitI4 -1
  loc_AF5D90: LitI4 1
  loc_AF5D95: LitStr "."
  loc_AF5D98: LitStr ","
  loc_AF5D9B: FLdFPR8 arg_24
  loc_AF5D9E: CStrR8
  loc_AF5DA0: FStStrNoPop var_D4
  loc_AF5DA3: ImpAdCallI2 Replace(, , , , , )
  loc_AF5DA8: FStStrNoPop var_DC
  loc_AF5DAB: ConcatStr
  loc_AF5DAC: FStStrNoPop var_E0
  loc_AF5DAF: LitStr " );"
  loc_AF5DB2: ConcatStr
  loc_AF5DB3: FStStr var_8C
  loc_AF5DB6: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AF5DE1: OnErrorGoto loc_AF5E09
  loc_AF5DE4: ILdRf var_8C
  loc_AF5DE7: Call EjecutarRsCls(from_stack_1v)
  loc_AF5DEC: LitStr "COMMIT;"
  loc_AF5DEF: Call EjecutarRsCls(from_stack_1v)
  loc_AF5DF4: FLdI2 arg_2C
  loc_AF5DF7: BranchF loc_AF5E08
  loc_AF5DFA: ILdRf var_88
  loc_AF5DFD: FLdI2 var_8E
  loc_AF5E00: FLdI2 CodiPaap
  loc_AF5E03: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AF5E08: ExitProcHresult
  loc_AF5E09: LitStr "ROLLBACK;"
  loc_AF5E0C: Call EjecutarRsCls(from_stack_1v)
  loc_AF5E11: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AF5E14: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF5E19: ExitProcHresult
End Sub

Public Sub Modificar(CodiPaap, CodiEsap, TipoEsap, DesdEsap, HastEsap, ImpoEsap, HaceRequery) 'AEF568
  'Data Table: 40F224
  loc_AEF40C: ILdRf TipoEsap
  loc_AEF40F: FStStrCopy var_88
  loc_AEF412: FLdRfVar var_90
  loc_AEF415: ILdRf var_88
  loc_AEF418: FLdI2 CodiEsap
  loc_AEF41B: FLdI2 CodiPaap
  loc_AEF41E: from_stack_4v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AEF423: ILdRf var_90
  loc_AEF426: LitStr vbNullString
  loc_AEF429: EqStr
  loc_AEF42B: FFree1Str var_90
  loc_AEF42E: BranchF loc_AEF43C
  loc_AEF431: LitStr "LA ESCALERA DE APREMIOS NO EXISTE. Reintente..."
  loc_AEF434: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEF439: Branch loc_AEF564
  loc_AEF43C: LitStr "START TRANSACTION; UPDATE escaapre SET DesdEsap = "
  loc_AEF43F: LitI4 0
  loc_AEF444: LitI4 -1
  loc_AEF449: LitI4 1
  loc_AEF44E: LitStr "."
  loc_AEF451: LitStr ","
  loc_AEF454: FLdFPR8 DesdEsap
  loc_AEF457: CStrR8
  loc_AEF459: FStStrNoPop var_90
  loc_AEF45C: ImpAdCallI2 Replace(, , , , , )
  loc_AEF461: FStStrNoPop var_94
  loc_AEF464: ConcatStr
  loc_AEF465: FStStrNoPop var_98
  loc_AEF468: LitStr ", HastEsap = "
  loc_AEF46B: ConcatStr
  loc_AEF46C: FStStrNoPop var_A0
  loc_AEF46F: LitI4 0
  loc_AEF474: LitI4 -1
  loc_AEF479: LitI4 1
  loc_AEF47E: LitStr "."
  loc_AEF481: LitStr ","
  loc_AEF484: FLdFPR8 ImpoEsap
  loc_AEF487: CStrR8
  loc_AEF489: FStStrNoPop var_9C
  loc_AEF48C: ImpAdCallI2 Replace(, , , , , )
  loc_AEF491: FStStrNoPop var_A4
  loc_AEF494: ConcatStr
  loc_AEF495: FStStrNoPop var_A8
  loc_AEF498: LitStr ", ImpoEsap = "
  loc_AEF49B: ConcatStr
  loc_AEF49C: FStStrNoPop var_B0
  loc_AEF49F: LitI4 0
  loc_AEF4A4: LitI4 -1
  loc_AEF4A9: LitI4 1
  loc_AEF4AE: LitStr "."
  loc_AEF4B1: LitStr ","
  loc_AEF4B4: FLdFPR8 arg_28
  loc_AEF4B7: CStrR8
  loc_AEF4B9: FStStrNoPop var_AC
  loc_AEF4BC: ImpAdCallI2 Replace(, , , , , )
  loc_AEF4C1: FStStrNoPop var_B4
  loc_AEF4C4: ConcatStr
  loc_AEF4C5: FStStrNoPop var_B8
  loc_AEF4C8: LitStr " WHERE CodiPaap = "
  loc_AEF4CB: ConcatStr
  loc_AEF4CC: FStStrNoPop var_BC
  loc_AEF4CF: FLdI2 CodiPaap
  loc_AEF4D2: CStrUI1
  loc_AEF4D4: FStStrNoPop var_C0
  loc_AEF4D7: ConcatStr
  loc_AEF4D8: FStStrNoPop var_C4
  loc_AEF4DB: LitStr " AND CodiEsap= "
  loc_AEF4DE: ConcatStr
  loc_AEF4DF: FStStrNoPop var_C8
  loc_AEF4E2: FLdI2 CodiEsap
  loc_AEF4E5: CStrUI1
  loc_AEF4E7: FStStrNoPop var_CC
  loc_AEF4EA: ConcatStr
  loc_AEF4EB: FStStrNoPop var_D0
  loc_AEF4EE: LitStr " AND TipoEsap = '"
  loc_AEF4F1: ConcatStr
  loc_AEF4F2: FStStrNoPop var_D4
  loc_AEF4F5: ILdRf var_88
  loc_AEF4F8: ConcatStr
  loc_AEF4F9: FStStrNoPop var_D8
  loc_AEF4FC: LitStr "';"
  loc_AEF4FF: ConcatStr
  loc_AEF500: FStStr var_8C
  loc_AEF503: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_AEF52C: OnErrorGoto loc_AEF554
  loc_AEF52F: ILdRf var_8C
  loc_AEF532: Call EjecutarRsCls(from_stack_1v)
  loc_AEF537: LitStr "COMMIT;"
  loc_AEF53A: Call EjecutarRsCls(from_stack_1v)
  loc_AEF53F: FLdI2 arg_30
  loc_AEF542: BranchF loc_AEF553
  loc_AEF545: ILdRf var_88
  loc_AEF548: FLdI2 CodiEsap
  loc_AEF54B: FLdI2 CodiPaap
  loc_AEF54E: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AEF553: ExitProcHresult
  loc_AEF554: LitStr "ROLLBACK;"
  loc_AEF557: Call EjecutarRsCls(from_stack_1v)
  loc_AEF55C: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AEF55F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEF564: ExitProcHresult
End Sub

Public Sub Eliminar(CodiPaap, TipoEsap, CodiEsap) 'AC8FE0
  'Data Table: 40F224
  loc_AC8EE0: ILdRf TipoEsap
  loc_AC8EE3: FStStrCopy var_88
  loc_AC8EE6: FLdRfVar var_94
  loc_AC8EE9: ILdRf var_88
  loc_AC8EEC: FLdI2 CodiEsap
  loc_AC8EEF: FLdI2 CodiPaap
  loc_AC8EF2: from_stack_4v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AC8EF7: ILdRf var_94
  loc_AC8EFA: LitStr vbNullString
  loc_AC8EFD: EqStr
  loc_AC8EFF: FFree1Str var_94
  loc_AC8F02: BranchF loc_AC8F10
  loc_AC8F05: LitStr "La escalera de Apremio NO EXISTE. Reintente..."
  loc_AC8F08: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC8F0D: Branch loc_AC8FCD
  loc_AC8F10: LitStr "START TRANSACTION; DELETE FROM escaapre  WHERE CodiPaap = "
  loc_AC8F13: FLdI2 CodiPaap
  loc_AC8F16: CStrUI1
  loc_AC8F18: FStStrNoPop var_94
  loc_AC8F1B: ConcatStr
  loc_AC8F1C: FStStrNoPop var_98
  loc_AC8F1F: LitStr " AND TipoEsap = '"
  loc_AC8F22: ConcatStr
  loc_AC8F23: FStStrNoPop var_9C
  loc_AC8F26: ILdRf var_88
  loc_AC8F29: ConcatStr
  loc_AC8F2A: FStStrNoPop var_A0
  loc_AC8F2D: LitStr "' AND CodiEsap = "
  loc_AC8F30: ConcatStr
  loc_AC8F31: FStStrNoPop var_A4
  loc_AC8F34: FLdI2 CodiEsap
  loc_AC8F37: CStrUI1
  loc_AC8F39: FStStrNoPop var_A8
  loc_AC8F3C: ConcatStr
  loc_AC8F3D: FStStrNoPop var_AC
  loc_AC8F40: LitStr ";"
  loc_AC8F43: ConcatStr
  loc_AC8F44: FStStr var_8C
  loc_AC8F47: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AC8F58: OnErrorGoto loc_AC8FCE
  loc_AC8F5B: ILdRf var_8C
  loc_AC8F5E: Call EjecutarRsCls(from_stack_1v)
  loc_AC8F63: LitStr "COMMIT;"
  loc_AC8F66: Call EjecutarRsCls(from_stack_1v)
  loc_AC8F6B: FLdRfVar var_B0
  loc_AC8F6E: FLdPr Me
  loc_AC8F71: MemLdPr global_60
  loc_AC8F74:  = Me.AbsolutePosition
  loc_AC8F79: ILdRf var_B0
  loc_AC8F7C: FStR4 var_90
  loc_AC8F7F: Call Requery()
  loc_AC8F84: FLdRfVar var_B0
  loc_AC8F87: FLdPr Me
  loc_AC8F8A: MemLdPr global_60
  loc_AC8F8D:  = Me.RecordCount
  loc_AC8F92: ILdRf var_B0
  loc_AC8F95: LitI4 0
  loc_AC8F9A: GtI4
  loc_AC8F9B: BranchF loc_AC8FCD
  loc_AC8F9E: FLdPr Me
  loc_AC8FA1: MemLdPr global_60
  loc_AC8FA4: Me.MoveFirst
  loc_AC8FA9: ILdRf var_90
  loc_AC8FAC: LitI4 1
  loc_AC8FB1: GtI4
  loc_AC8FB2: BranchF loc_AC8FCD
  loc_AC8FB5: LitVar_Missing var_C0
  loc_AC8FB8: PopAdLdVar
  loc_AC8FB9: ILdRf var_90
  loc_AC8FBC: LitI4 2
  loc_AC8FC1: SubI4
  loc_AC8FC2: FLdPr Me
  loc_AC8FC5: MemLdPr global_60
  loc_AC8FC8: Me.Move from_stack_1, from_stack_2
  loc_AC8FCD: ExitProcHresult
  loc_AC8FCE: LitStr "ROLLBACK;"
  loc_AC8FD1: Call EjecutarRsCls(from_stack_1v)
  loc_AC8FD6: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AC8FD9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC8FDE: ExitProcHresult
End Sub

Public Sub Delete() '9FD3B8
  'Data Table: 40F224
  loc_9FD388: FLdRfVar var_88
  loc_9FD38B: FLdPr Me
  loc_9FD38E: MemLdPr global_60
  loc_9FD391:  = Me.RecordCount
  loc_9FD396: ILdRf var_88
  loc_9FD399: LitI4 0
  loc_9FD39E: GtI4
  loc_9FD39F: BranchF loc_9FD3B7
  loc_9FD3A2: LitI4 1
  loc_9FD3A7: FLdPr Me
  loc_9FD3AA: MemLdPr global_60
  loc_9FD3AD: Me.Delete
  loc_9FD3B2: Call MoveNext()
  loc_9FD3B7: ExitProcHresult
End Sub

Public Sub Requery() '9E6B94
  'Data Table: 40F224
  loc_9E6B70: LitI4 -1
  loc_9E6B75: FLdPr Me
  loc_9E6B78: MemLdPr global_60
  loc_9E6B7B: Me.Requery from_stack_1
  loc_9E6B80: LitVarStr var_94, "Primary"
  loc_9E6B85: PopAdLdVar
  loc_9E6B86: FLdPr Me
  loc_9E6B89: LateIdCall
  loc_9E6B91: ExitProcHresult
  loc_9E6B92: MemLdPr global_-21249
End Sub

Public Sub Encontrar(CodiPaap, CodiEsap, TipoEsap) 'A641A8
  'Data Table: 40F224
  loc_A64144: ILdRf TipoEsap
  loc_A64147: FStStrCopy var_88
  loc_A6414A: Call Requery()
  loc_A6414F: LitStr "CodiPaap = "
  loc_A64152: FLdI2 CodiPaap
  loc_A64155: CStrUI1
  loc_A64157: FStStrNoPop var_8C
  loc_A6415A: ConcatStr
  loc_A6415B: PopTmpLdAdStr
  loc_A6415F: Call Find(from_stack_1v)
  loc_A64164: FFreeStr var_8C = ""
  loc_A6416B: LitStr "CodiEsap = "
  loc_A6416E: FLdI2 CodiEsap
  loc_A64171: CStrUI1
  loc_A64173: FStStrNoPop var_8C
  loc_A64176: ConcatStr
  loc_A64177: PopTmpLdAdStr
  loc_A6417B: Call Find(from_stack_1v)
  loc_A64180: FFreeStr var_8C = ""
  loc_A64187: LitStr "TipoEsap = '"
  loc_A6418A: ILdRf var_88
  loc_A6418D: ConcatStr
  loc_A6418E: FStStrNoPop var_8C
  loc_A64191: LitStr "'"
  loc_A64194: ConcatStr
  loc_A64195: PopTmpLdAdStr
  loc_A64199: Call Find(from_stack_1v)
  loc_A6419E: FFreeStr var_8C = ""
  loc_A641A5: ExitProcHresult
End Sub

Public Function ValidaClave(CodiPaap, CodiEsap, TipoEsap) 'A8A0CC
  'Data Table: 40F224
  loc_A8A04C: ILdRf TipoEsap
  loc_A8A04F: FStStrCopy var_8C
  loc_A8A052: ZeroRetVal
  loc_A8A054: LitStr "SELECT CodiPaap,CodiEsap FROM escaapre WHERE CodiPaap = "
  loc_A8A057: FLdI2 CodiPaap
  loc_A8A05A: CStrUI1
  loc_A8A05C: FStStrNoPop var_90
  loc_A8A05F: ConcatStr
  loc_A8A060: FStStrNoPop ValidaClave
  loc_A8A063: LitStr " And CodiEsap = "
  loc_A8A066: ConcatStr
  loc_A8A067: FStStrNoPop var_98
  loc_A8A06A: FLdI2 CodiEsap
  loc_A8A06D: CStrUI1
  loc_A8A06F: FStStrNoPop var_9C
  loc_A8A072: ConcatStr
  loc_A8A073: FStStrNoPop var_A0
  loc_A8A076: LitStr " And TipoEsap = '"
  loc_A8A079: ConcatStr
  loc_A8A07A: FStStrNoPop var_A4
  loc_A8A07D: ILdRf var_8C
  loc_A8A080: ConcatStr
  loc_A8A081: FStStrNoPop var_A8
  loc_A8A084: LitStr " '"
  loc_A8A087: ConcatStr
  loc_A8A088: FStStrNoPop var_AC
  loc_A8A08B: Call EjecutarRsCls(from_stack_1v)
  loc_A8A090: FFreeStr var_90 = "": ValidaClave = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A8A0A3: FLdRfVar var_B0
  loc_A8A0A6: FLdPr Me
  loc_A8A0A9: MemLdPr global_64
  loc_A8A0AC:  = Me.RecordCount
  loc_A8A0B1: ILdRf var_B0
  loc_A8A0B4: LitI4 0
  loc_A8A0B9: GtI4
  loc_A8A0BA: BranchF loc_A8A0C3
  loc_A8A0BD: LitStr "LA ESCALERA DE APREMIO YA EXISTE. Reintente..."
  loc_A8A0C0: FStStrCopy var_88
  loc_A8A0C3: ExitProcCbHresult
  loc_A8A0C9: BranchF loc_A8A498
End Function

Public Function NumeradorCodiEsap(CodiPaap, TipoEsap) 'AA7428
  'Data Table: 40F224
  loc_AA7374: ILdRf TipoEsap
  loc_AA7377: FStStrCopy var_8C
  loc_AA737A: LitStr "SELECT CodiPaap, CodiEsap FROM escaapre WHERE CodiPaap = "
  loc_AA737D: FLdI2 CodiPaap
  loc_AA7380: CStrUI1
  loc_AA7382: FStStrNoPop var_90
  loc_AA7385: ConcatStr
  loc_AA7386: FStStrNoPop NumeradorCodiEsap
  loc_AA7389: LitStr " and TipoEsap = '"
  loc_AA738C: ConcatStr
  loc_AA738D: FStStrNoPop var_98
  loc_AA7390: ILdRf var_8C
  loc_AA7393: ConcatStr
  loc_AA7394: FStStrNoPop var_9C
  loc_AA7397: LitStr "' "
  loc_AA739A: ConcatStr
  loc_AA739B: FStStrNoPop var_A0
  loc_AA739E: Call EjecutarRsCls(from_stack_1v)
  loc_AA73A3: FFreeStr var_90 = "": NumeradorCodiEsap = "": var_98 = "": var_9C = ""
  loc_AA73B0: FLdRfVar var_A4
  loc_AA73B3: FLdPr Me
  loc_AA73B6: MemLdPr global_64
  loc_AA73B9:  = Me.RecordCount
  loc_AA73BE: ILdRf var_A4
  loc_AA73C1: LitI4 0
  loc_AA73C6: GtI4
  loc_AA73C7: BranchF loc_AA741B
  loc_AA73CA: FLdPr Me
  loc_AA73CD: MemLdPr global_64
  loc_AA73D0: Me.MoveLast
  loc_AA73D5: FLdRfVar var_CC
  loc_AA73D8: FLdRfVar var_BC
  loc_AA73DB: LitVarStr var_B8, "CodiEsap"
  loc_AA73E0: PopAdLdVar
  loc_AA73E1: FLdRfVar var_A8
  loc_AA73E4: FLdPr Me
  loc_AA73E7: MemLdPr global_64
  loc_AA73EA:  = Me.Fields
  loc_AA73EF: FLdPr var_A8
  loc_AA73F2: from_stack_2 = Me.Item(from_stack_1)
  loc_AA73F7: FLdPr var_BC
  loc_AA73FA:  = Me.Value
  loc_AA73FF: FLdRfVar var_CC
  loc_AA7402: FnCLngVar
  loc_AA7404: LitI4 1
  loc_AA7409: AddI4
  loc_AA740A: CI2I4
  loc_AA740B: FStI2 var_86
  loc_AA740E: FFreeAd var_A8 = ""
  loc_AA7415: FFree1Var var_CC = ""
  loc_AA7418: Branch loc_AA7420
  loc_AA741B: LitI2_Byte 1
  loc_AA741D: FStI2 var_86
  loc_AA7420: ExitProcCbHresult
  loc_AA7426: DOC
End Function

Public Sub Update() 'A0C6E4
  'Data Table: 40F224
  loc_A0C6A8: FLdPr Me
  loc_A0C6AB: MemLdStr global_60
  loc_A0C6AE: FStAd var_88 
  loc_A0C6B2: LitI4 3
  loc_A0C6B7: FLdPr var_88
  loc_A0C6BA: Me.UpdateBatch
  loc_A0C6BF: FLdRfVar var_8C
  loc_A0C6C2: FLdPr var_88
  loc_A0C6C5:  = Me.EditMode
  loc_A0C6CA: ILdRf var_8C
  loc_A0C6CD: LitI4 2
  loc_A0C6D2: EqI4
  loc_A0C6D3: BranchF loc_A0C6DB
  loc_A0C6D6: Call MoveLast()
  loc_A0C6DB: LitNothing
  loc_A0C6DD: FStAd var_88 
  loc_A0C6E1: ExitProcHresult
  loc_A0C6E2: GtR4
End Sub

Public Sub Cancel() 'A2A7AC
  'Data Table: 40F224
  loc_A2A760: FLdPr Me
  loc_A2A763: MemLdStr global_60
  loc_A2A766: FStAd var_88 
  loc_A2A76A: FLdRfVar var_8C
  loc_A2A76D: FLdPr var_88
  loc_A2A770:  = Me.RecordCount
  loc_A2A775: ILdRf var_8C
  loc_A2A778: LitI4 0
  loc_A2A77D: GtI4
  loc_A2A77E: BranchF loc_A2A7A5
  loc_A2A781: FLdPr var_88
  loc_A2A784: Me.CancelUpdate
  loc_A2A789: FLdRfVar var_8C
  loc_A2A78C: FLdPr var_88
  loc_A2A78F:  = Me.EditMode
  loc_A2A794: ILdRf var_8C
  loc_A2A797: LitI4 2
  loc_A2A79C: EqI4
  loc_A2A79D: BranchF loc_A2A7A5
  loc_A2A7A0: Call MoveFirst()
  loc_A2A7A5: LitNothing
  loc_A2A7A7: FStAd var_88 
  loc_A2A7AB: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9E3EE0
  'Data Table: 40F224
  loc_9E3EC0: FLdRfVar var_8C
  loc_9E3EC3: FLdPr Me
  loc_9E3EC6: MemLdPr global_60
  loc_9E3EC9:  = Me.EditMode
  loc_9E3ECE: ILdRf var_8C
  loc_9E3ED1: LitI4 0
  loc_9E3ED6: NeI4
  loc_9E3ED7: FStI2 var_86
  loc_9E3EDA: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5EEF0
  'Data Table: 40F224
  loc_A5EE8C: ILdRf sSelect
  loc_A5EE8F: FStStrCopy var_88
  loc_A5EE92: LitNothing
  loc_A5EE94: CastAd
  loc_A5EE97: FStAdFuncNoPop
  loc_A5EE9A: FLdPr Me
  loc_A5EE9D: MemStAd
  loc_A5EEA1: FFree1Ad var_8C
  loc_A5EEA4: New Recordset
  loc_A5EEA8: FStAdFuncNoPop
  loc_A5EEAB: FLdPr Me
  loc_A5EEAE: MemStAd
  loc_A5EEB2: FFree1Ad var_8C
  loc_A5EEB5: LitI4 -1
  loc_A5EEBA: LitI4 3
  loc_A5EEBF: LitI4 3
  loc_A5EEC4: ImpAdLdI4 MemVar_D9301C
  loc_A5EEC7: CVarAd
  loc_A5EECB: PopAdLdVar
  loc_A5EECC: ILdRf var_88
  loc_A5EECF: CVarStr var_9C
  loc_A5EED2: PopAdLdVar
  loc_A5EED3: FLdPr Me
  loc_A5EED6: MemLdPr global_60
  loc_A5EED9: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5EEDE: LitVarStr var_9C, "Primary"
  loc_A5EEE3: PopAdLdVar
  loc_A5EEE4: FLdPr Me
  loc_A5EEE7: LateIdCall
  loc_A5EEEF: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A47628
  'Data Table: 40F224
  loc_A475D4: ILdRf sSelect
  loc_A475D7: FStStrCopy var_88
  loc_A475DA: LitNothing
  loc_A475DC: CastAd
  loc_A475DF: FStAdFuncNoPop
  loc_A475E2: FLdPr Me
  loc_A475E5: MemStAd
  loc_A475E9: FFree1Ad var_8C
  loc_A475EC: New Recordset
  loc_A475F0: FStAdFuncNoPop
  loc_A475F3: FLdPr Me
  loc_A475F6: MemStAd
  loc_A475FA: FFree1Ad var_8C
  loc_A475FD: LitI4 -1
  loc_A47602: LitI4 3
  loc_A47607: LitI4 3
  loc_A4760C: ImpAdLdI4 MemVar_D9301C
  loc_A4760F: CVarAd
  loc_A47613: PopAdLdVar
  loc_A47614: ILdRf var_88
  loc_A47617: CVarStr var_9C
  loc_A4761A: PopAdLdVar
  loc_A4761B: FLdPr Me
  loc_A4761E: MemLdPr global_64
  loc_A47621: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A47626: ExitProcHresult
  loc_A47627: NotI4
End Sub

Public Property Get DataSource() '9F7844
  'Data Table: 40F224
  loc_9F7820: ZeroRetVal
  loc_9F7822: FLdRfVar var_8C
  loc_9F7825: FLdPr Me
  loc_9F7828: MemLdPr global_60
  loc_9F782B:  = Me.DataSource
  loc_9F7830: ILdRf var_8C
  loc_9F7833: CastAd
  loc_9F7836: FStAdFunc var_88
  loc_9F7839: FFree1Ad var_8C
  loc_9F783C: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9D5F84
  'Data Table: 40F224
  loc_9D5F68: FLdRfVar var_8C
  loc_9D5F6B: FLdPr Me
  loc_9D5F6E: MemLdPr global_60
  loc_9D5F71:  = Me.EditMode
  loc_9D5F76: ILdRf var_8C
  loc_9D5F79: FStR4 var_88
  loc_9D5F7C: ExitProcCbHresult
  loc_9D5F82: PopTmpLdAd8 var_5355
End Sub

Public Property Get CodiPaap() 'A2A8A4
  'Data Table: 40F224
  loc_A2A860: FLdRfVar var_B0
  loc_A2A863: FLdRfVar var_A0
  loc_A2A866: LitVarStr var_9C, "CodiPaap"
  loc_A2A86B: PopAdLdVar
  loc_A2A86C: FLdRfVar var_8C
  loc_A2A86F: FLdPr Me
  loc_A2A872: MemLdPr global_60
  loc_A2A875:  = Me.Fields
  loc_A2A87A: FLdPr var_8C
  loc_A2A87D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A882: FLdPr var_A0
  loc_A2A885:  = Me.Value
  loc_A2A88A: FLdRfVar var_B0
  loc_A2A88D: CI2Var
  loc_A2A88E: FStI2 var_86
  loc_A2A891: FFreeAd var_8C = ""
  loc_A2A898: FFree1Var var_B0 = ""
  loc_A2A89B: ExitProcCbHresult
  loc_A2A8A1: AryDescTemp 0
End Sub

Public Property Let CodiPaap(vDato) '9D5C40
  'Data Table: 40F224
  loc_9D5C24: FLdI2 vDato
  loc_9D5C27: CVarI2 var_A4
  loc_9D5C2A: PopAdLdVar
  loc_9D5C2B: LitVarStr var_94, "CodiPaap"
  loc_9D5C30: PopAdLdVar
  loc_9D5C31: FLdPr Me
  loc_9D5C34: MemLdPr global_60
  loc_9D5C37: Me.Collect = from_stack_1
  loc_9D5C3C: ExitProcHresult
End Sub

Public Property Get CodiEsap() 'A2ABA4
  'Data Table: 40F224
  loc_A2AB60: FLdRfVar var_B0
  loc_A2AB63: FLdRfVar var_A0
  loc_A2AB66: LitVarStr var_9C, "CodiEsap"
  loc_A2AB6B: PopAdLdVar
  loc_A2AB6C: FLdRfVar var_8C
  loc_A2AB6F: FLdPr Me
  loc_A2AB72: MemLdPr global_60
  loc_A2AB75:  = Me.Fields
  loc_A2AB7A: FLdPr var_8C
  loc_A2AB7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AB82: FLdPr var_A0
  loc_A2AB85:  = Me.Value
  loc_A2AB8A: FLdRfVar var_B0
  loc_A2AB8D: CI2Var
  loc_A2AB8E: FStI2 var_86
  loc_A2AB91: FFreeAd var_8C = ""
  loc_A2AB98: FFree1Var var_B0 = ""
  loc_A2AB9B: ExitProcCbHresult
End Sub

Public Property Let CodiEsap(vDato) '9D58FC
  'Data Table: 40F224
  loc_9D58E0: FLdI2 vDato
  loc_9D58E3: CVarI2 var_A4
  loc_9D58E6: PopAdLdVar
  loc_9D58E7: LitVarStr var_94, "CodiEsap"
  loc_9D58EC: PopAdLdVar
  loc_9D58ED: FLdPr Me
  loc_9D58F0: MemLdPr global_60
  loc_9D58F3: Me.Collect = from_stack_1
  loc_9D58F8: ExitProcHresult
  loc_9D58F9: BranchFVar
End Sub

Public Property Get TipoEsap() 'A3625C
  'Data Table: 40F224
  loc_A36218: ZeroRetVal
  loc_A3621A: FLdRfVar var_B0
  loc_A3621D: FLdRfVar var_A0
  loc_A36220: LitVarStr var_9C, "TipoEsap"
  loc_A36225: PopAdLdVar
  loc_A36226: FLdRfVar var_8C
  loc_A36229: FLdPr Me
  loc_A3622C: MemLdPr global_60
  loc_A3622F:  = Me.Fields
  loc_A36234: FLdPr var_8C
  loc_A36237: from_stack_2 = Me.Item(from_stack_1)
  loc_A3623C: FLdPr var_A0
  loc_A3623F:  = Me.Value
  loc_A36244: FLdRfVar var_B0
  loc_A36247: CStrVarTmp
  loc_A36248: FStStr var_88
  loc_A3624B: FFreeAd var_8C = ""
  loc_A36252: FFree1Var var_B0 = ""
  loc_A36255: ExitProcCbHresult
End Sub

Public Property Let TipoEsap(vDato) '9E6E30
  'Data Table: 40F224
  loc_9E6E10: ILdRf vDato
  loc_9E6E13: FStStrCopy var_88
  loc_9E6E16: ILdRf var_88
  loc_9E6E19: CVarStr var_A8
  loc_9E6E1C: PopAdLdVar
  loc_9E6E1D: LitVarStr var_98, "TipoEsap"
  loc_9E6E22: PopAdLdVar
  loc_9E6E23: FLdPr Me
  loc_9E6E26: MemLdPr global_60
  loc_9E6E29: Me.Collect = from_stack_1
  loc_9E6E2E: ExitProcHresult
End Sub

Public Property Get DesdEsap() 'A2B1A4
  'Data Table: 40F224
  loc_A2B160: FLdRfVar var_B4
  loc_A2B163: FLdRfVar var_A4
  loc_A2B166: LitVarStr var_A0, "DesdEsap"
  loc_A2B16B: PopAdLdVar
  loc_A2B16C: FLdRfVar var_90
  loc_A2B16F: FLdPr Me
  loc_A2B172: MemLdPr global_60
  loc_A2B175:  = Me.Fields
  loc_A2B17A: FLdPr var_90
  loc_A2B17D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B182: FLdPr var_A4
  loc_A2B185:  = Me.Value
  loc_A2B18A: FLdRfVar var_B4
  loc_A2B18D: CR4Var
  loc_A2B18E: FStFPR8 var_8C
  loc_A2B191: FFreeAd var_90 = ""
  loc_A2B198: FFree1Var var_B4 = ""
  loc_A2B19B: ExitProcCbHresult
  loc_A2B1A3: ExitProc
End Sub

Public Property Let DesdEsap(vDato) '9D55B8
  'Data Table: 40F224
  loc_9D559C: FLdFPR8 vDato
  loc_9D559F: CVarR8
  loc_9D55A3: PopAdLdVar
  loc_9D55A4: LitVarStr var_94, "DesdEsap"
  loc_9D55A9: PopAdLdVar
  loc_9D55AA: FLdPr Me
  loc_9D55AD: MemLdPr global_60
  loc_9D55B0: Me.Collect = from_stack_1
  loc_9D55B5: ExitProcHresult
  loc_9D55B6: FStAdFunc var_5388
End Sub

Public Property Get HastEsap() 'A2B224
  'Data Table: 40F224
  loc_A2B1E0: FLdRfVar var_B4
  loc_A2B1E3: FLdRfVar var_A4
  loc_A2B1E6: LitVarStr var_A0, "HastEsap"
  loc_A2B1EB: PopAdLdVar
  loc_A2B1EC: FLdRfVar var_90
  loc_A2B1EF: FLdPr Me
  loc_A2B1F2: MemLdPr global_60
  loc_A2B1F5:  = Me.Fields
  loc_A2B1FA: FLdPr var_90
  loc_A2B1FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B202: FLdPr var_A4
  loc_A2B205:  = Me.Value
  loc_A2B20A: FLdRfVar var_B4
  loc_A2B20D: CR4Var
  loc_A2B20E: FStFPR8 var_8C
  loc_A2B211: FFreeAd var_90 = ""
  loc_A2B218: FFree1Var var_B4 = ""
  loc_A2B21B: ExitProcCbHresult
  loc_A2B221: FFree1Var var_98 = ""
End Sub

Public Property Let HastEsap(vDato) '9D530C
  'Data Table: 40F224
  loc_9D52F0: FLdFPR8 vDato
  loc_9D52F3: CVarR8
  loc_9D52F7: PopAdLdVar
  loc_9D52F8: LitVarStr var_94, "HastEsap"
  loc_9D52FD: PopAdLdVar
  loc_9D52FE: FLdPr Me
  loc_9D5301: MemLdPr global_60
  loc_9D5304: Me.Collect = from_stack_1
  loc_9D5309: ExitProcHresult
End Sub

Public Property Get ImpoEsap() 'A2B2A4
  'Data Table: 40F224
  loc_A2B260: FLdRfVar var_B4
  loc_A2B263: FLdRfVar var_A4
  loc_A2B266: LitVarStr var_A0, "ImpoEsap"
  loc_A2B26B: PopAdLdVar
  loc_A2B26C: FLdRfVar var_90
  loc_A2B26F: FLdPr Me
  loc_A2B272: MemLdPr global_60
  loc_A2B275:  = Me.Fields
  loc_A2B27A: FLdPr var_90
  loc_A2B27D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B282: FLdPr var_A4
  loc_A2B285:  = Me.Value
  loc_A2B28A: FLdRfVar var_B4
  loc_A2B28D: CR4Var
  loc_A2B28E: FStFPR8 var_8C
  loc_A2B291: FFreeAd var_90 = ""
  loc_A2B298: FFree1Var var_B4 = ""
  loc_A2B29B: ExitProcCbHresult
  loc_A2B2A1: FLdFPR8 var_98
End Sub

Public Property Let ImpoEsap(vDato) '9D5228
  'Data Table: 40F224
  loc_9D520C: FLdFPR8 vDato
  loc_9D520F: CVarR8
  loc_9D5213: PopAdLdVar
  loc_9D5214: LitVarStr var_94, "ImpoEsap"
  loc_9D5219: PopAdLdVar
  loc_9D521A: FLdPr Me
  loc_9D521D: MemLdPr global_60
  loc_9D5220: Me.Collect = from_stack_1
  loc_9D5225: ExitProcHresult
  loc_9D5226: LeCy
End Sub

Private Function Proc_26_39_9E6B38(arg_10) '9E6B38
  'Data Table: 40F224
  loc_9E6B1C: ILdRf arg_10
  loc_9E6B1F: FStAd var_88 
  loc_9E6B23: ILdRf arg_18
  loc_9E6B26: FStAd var_8C 
  loc_9E6B2A: FLdPr Me
  loc_9E6B2D: RaiseEvent
  loc_9E6B35: ExitProcHresult
End Function

Private Function Proc_26_40_AA16E0(arg_C) 'AA16E0
  'Data Table: 40F224
  loc_AA1620: ILdRf arg_18
  loc_AA1623: FStAd var_88 
  loc_AA1627: ILdRf arg_C
  loc_AA162A: FStR4 var_90
  loc_AA162D: ILdRf var_90
  loc_AA1630: LitI4 1
  loc_AA1635: EqI4
  loc_AA1636: BranchF loc_AA163C
  loc_AA1639: Branch loc_AA16CF
  loc_AA163C: ILdRf var_90
  loc_AA163F: LitI4 9
  loc_AA1644: EqI4
  loc_AA1645: BranchF loc_AA164B
  loc_AA1648: Branch loc_AA16CF
  loc_AA164B: ILdRf var_90
  loc_AA164E: LitI4 2
  loc_AA1653: EqI4
  loc_AA1654: BranchF loc_AA165A
  loc_AA1657: Branch loc_AA16CF
  loc_AA165A: ILdRf var_90
  loc_AA165D: LitI4 &HB
  loc_AA1662: EqI4
  loc_AA1663: BranchF loc_AA1669
  loc_AA1666: Branch loc_AA16CF
  loc_AA1669: ILdRf var_90
  loc_AA166C: LitI4 &HA
  loc_AA1671: EqI4
  loc_AA1672: BranchF loc_AA1678
  loc_AA1675: Branch loc_AA16CF
  loc_AA1678: ILdRf var_90
  loc_AA167B: LitI4 7
  loc_AA1680: EqI4
  loc_AA1681: BranchF loc_AA1687
  loc_AA1684: Branch loc_AA16CF
  loc_AA1687: ILdRf var_90
  loc_AA168A: LitI4 8
  loc_AA168F: EqI4
  loc_AA1690: BranchF loc_AA1696
  loc_AA1693: Branch loc_AA16CF
  loc_AA1696: ILdRf var_90
  loc_AA1699: LitI4 5
  loc_AA169E: EqI4
  loc_AA169F: BranchF loc_AA16A5
  loc_AA16A2: Branch loc_AA16CF
  loc_AA16A5: ILdRf var_90
  loc_AA16A8: LitI4 6
  loc_AA16AD: EqI4
  loc_AA16AE: BranchF loc_AA16B4
  loc_AA16B1: Branch loc_AA16CF
  loc_AA16B4: ILdRf var_90
  loc_AA16B7: LitI4 4
  loc_AA16BC: EqI4
  loc_AA16BD: BranchF loc_AA16C3
  loc_AA16C0: Branch loc_AA16CF
  loc_AA16C3: ILdRf var_90
  loc_AA16C6: LitI4 3
  loc_AA16CB: EqI4
  loc_AA16CC: BranchF loc_AA16CF
  loc_AA16CF: FLdI2 var_8A
  loc_AA16D2: BranchF loc_AA16DD
  loc_AA16D5: LitI4 4
  loc_AA16DA: IStI4 arg_14
  loc_AA16DD: ExitProcHresult
  loc_AA16DE: FLdPr var_5388
End Function

Private Function Proc_26_41_9F761C() '9F761C
  'Data Table: 40F224
  loc_9F75F8: LitStr "Primary"
  loc_9F75FB: FLdPr Me
  loc_9F75FE: LateIdLdVar var_94 DispID_4 0
  loc_9F7605: CastAdVar Me
  loc_9F7609: FStAdFunc var_98
  loc_9F760C: FLdPr var_98
  loc_9F7614: FFree1Ad var_98
  loc_9F7617: FFree1Var var_94 = ""
  loc_9F761A: ExitProcHresult
End Function

Private Function Proc_26_42_9E3E8C(arg_C) '9E3E8C
  'Data Table: 40F224
  loc_9E3E70: ILdI4 arg_C
  loc_9E3E73: FStStrCopy var_88
  loc_9E3E76: ILdRf var_88
  loc_9E3E79: LitStr "Primary"
  loc_9E3E7C: EqStr
  loc_9E3E7E: BranchF loc_9E3E8B
  loc_9E3E81: FLdPr Me
  loc_9E3E84: MemLdStr global_60
  loc_9E3E87: IStAd
  loc_9E3E8B: ExitProcHresult
End Function
