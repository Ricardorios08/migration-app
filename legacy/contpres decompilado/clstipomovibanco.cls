VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clstipomovibanco"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40AA44
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40AA53
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40AA62
  RsFrm = Value
End Sub

Public Sub MoveFirst(arg_30) '96D20C
  'Data Table: 40A8A8
  loc_96D1E4: FLdRfVar var_88
  loc_96D1E7: FLdPr Me
  loc_96D1EA: MemLdPr RsFrm
  loc_96D1ED:  = Me.RecordCount
  loc_96D1F2: ILdRf var_88
  loc_96D1F5: LitI4 0
  loc_96D1FA: GtI4
  loc_96D1FB: BranchF loc_96D209
  loc_96D1FE: FLdPr Me
  loc_96D201: MemLdPr RsFrm
  loc_96D204: Me.MoveFirst
  loc_96D209: ExitProcHresult
  loc_96D20A: FStStrNoPop arg_3064
End Sub

Public Sub MoveLast() '96E54C
  'Data Table: 40A8A8
  loc_96E524: FLdRfVar var_88
  loc_96E527: FLdPr Me
  loc_96E52A: MemLdPr RsFrm
  loc_96E52D:  = Me.RecordCount
  loc_96E532: ILdRf var_88
  loc_96E535: LitI4 0
  loc_96E53A: GtI4
  loc_96E53B: BranchF loc_96E549
  loc_96E53E: FLdPr Me
  loc_96E541: MemLdPr RsFrm
  loc_96E544: Me.MoveLast
  loc_96E549: ExitProcHresult
End Sub

Public Sub MoveNext() '9938C0
  'Data Table: 40A8A8
  loc_993860: FLdRfVar var_86
  loc_993863: FLdPr Me
  loc_993866: MemLdPr RsFrm
  loc_993869:  = Me.EOF
  loc_99386E: FLdI2 var_86
  loc_993871: NotI4
  loc_993872: BranchF loc_993880
  loc_993875: FLdPr Me
  loc_993878: MemLdPr RsFrm
  loc_99387B: Me.MoveNext
  loc_993880: FLdRfVar var_86
  loc_993883: FLdPr Me
  loc_993886: MemLdPr RsFrm
  loc_993889:  = Me.EOF
  loc_99388E: FLdI2 var_86
  loc_993891: FLdRfVar var_8C
  loc_993894: FLdPr Me
  loc_993897: MemLdPr RsFrm
  loc_99389A:  = Me.RecordCount
  loc_99389F: ILdRf var_8C
  loc_9938A2: LitI4 0
  loc_9938A7: GtI4
  loc_9938A8: AndI4
  loc_9938A9: BranchF loc_9938BC
  loc_9938AC: ImpAdCallFPR4 Beep()
  loc_9938B1: FLdPr Me
  loc_9938B4: MemLdPr RsFrm
  loc_9938B7: Me.MoveLast
  loc_9938BC: ExitProcHresult
  loc_9938BD: FStStrNoPop var_AC
End Sub

Public Sub MoveSiguiente() '9410E4
  'Data Table: 40A8A8
  loc_9410D8: FLdPr Me
  loc_9410DB: MemLdPr RsFrm
  loc_9410DE: Me.MoveNext
  loc_9410E3: ExitProcHresult
End Sub

Public Sub MovePrevious() '993830
  'Data Table: 40A8A8
  loc_9937D0: FLdRfVar var_86
  loc_9937D3: FLdPr Me
  loc_9937D6: MemLdPr RsFrm
  loc_9937D9:  = Me.BOF
  loc_9937DE: FLdI2 var_86
  loc_9937E1: NotI4
  loc_9937E2: BranchF loc_9937F0
  loc_9937E5: FLdPr Me
  loc_9937E8: MemLdPr RsFrm
  loc_9937EB: Me.MovePrevious
  loc_9937F0: FLdRfVar var_86
  loc_9937F3: FLdPr Me
  loc_9937F6: MemLdPr RsFrm
  loc_9937F9:  = Me.BOF
  loc_9937FE: FLdI2 var_86
  loc_993801: FLdRfVar var_8C
  loc_993804: FLdPr Me
  loc_993807: MemLdPr RsFrm
  loc_99380A:  = Me.RecordCount
  loc_99380F: ILdRf var_8C
  loc_993812: LitI4 0
  loc_993817: GtI4
  loc_993818: AndI4
  loc_993819: BranchF loc_99382C
  loc_99381C: ImpAdCallFPR4 Beep()
  loc_993821: FLdPr Me
  loc_993824: MemLdPr RsFrm
  loc_993827: Me.MoveFirst
  loc_99382C: ExitProcHresult
  loc_99382D: CI2Var
End Sub

Public Property Get EOF() '957A98
  'Data Table: 40A8A8
  loc_957A7C: FLdRfVar var_88
  loc_957A7F: FLdPr Me
  loc_957A82: MemLdPr RsFrm
  loc_957A85:  = Me.EOF
  loc_957A8A: FLdI2 var_88
  loc_957A8D: FStI2 var_86
  loc_957A90: ExitProcCbHresult
End Sub

Public Property Get BOF() '957A4C
  'Data Table: 40A8A8
  loc_957A30: FLdRfVar var_88
  loc_957A33: FLdPr Me
  loc_957A36: MemLdPr RsFrm
  loc_957A39:  = Me.BOF
  loc_957A3E: FLdI2 var_88
  loc_957A41: FStI2 var_86
  loc_957A44: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '946F44
  'Data Table: 40A8A8
  loc_946F34: ILdI4 sOrden
  loc_946F37: FLdPr Me
  loc_946F3A: MemLdPr RsFrm
  loc_946F3D: Me.Sort = from_stack_1
  loc_946F42: ExitProcHresult
End Sub

Public Sub Find(sCriterio) '969FB0
  'Data Table: 40A8A8
  loc_969F90: LitVar_Missing var_94
  loc_969F93: PopAdLdVar
  loc_969F94: LitI4 1
  loc_969F99: LitI4 0
  loc_969F9E: ILdI4 sCriterio
  loc_969FA1: FLdPr Me
  loc_969FA4: MemLdPr RsFrm
  loc_969FA7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_969FAC: ExitProcHresult
  loc_969FAD: DestructRecord
End Sub

Public Sub Filter(sCriterio) '948B88
  'Data Table: 40A8A8
  loc_948B74: ILdI4 sCriterio
  loc_948B77: CVarStr var_94
  loc_948B7A: PopAdLdVar
  loc_948B7B: FLdPr Me
  loc_948B7E: MemLdPr RsFrm
  loc_948B81: Me.Filter = from_stack_1
  loc_948B86: ExitProcHresult
End Sub

Public Property Get AbsolutePosition(arg_30) '960C10
  'Data Table: 40A8A8
  loc_960BF4: FLdRfVar var_8C
  loc_960BF7: FLdPr Me
  loc_960BFA: MemLdPr RsFrm
  loc_960BFD:  = Me.AbsolutePosition
  loc_960C02: ILdRf var_8C
  loc_960C05: FStR4 var_88
  loc_960C08: ExitProcCbHresult
  loc_960C0E: FStR4 arg_3005
End Sub

Public Property Get RecordCount() '960CA8
  'Data Table: 40A8A8
  loc_960C8C: FLdRfVar var_8C
  loc_960C8F: FLdPr Me
  loc_960C92: MemLdPr RsFrm
  loc_960C95:  = Me.RecordCount
  loc_960C9A: ILdRf var_8C
  loc_960C9D: FStR4 var_88
  loc_960CA0: ExitProcCbHresult
End Sub

Public Sub AddNew(DetaTimb, TipoTimb) '9BF48C
  'Data Table: 40A8A8
  loc_9BF3E8: ILdRf DetaTimb
  loc_9BF3EB: FStStrCopy var_88
  loc_9BF3EE: ILdRf TipoTimb
  loc_9BF3F1: FStStrCopy var_8C
  loc_9BF3F4: LitStr "SELECT IFNULL(Max(CodiTimb),0) + 1 CodiTimb FROM tipomovibanco ORDER BY CodiTimb DESC LIMIT 1"
  loc_9BF3F7: Call EjecutarRsCls(from_stack_1v)
  loc_9BF3FC: FLdRfVar var_B8
  loc_9BF3FF: FLdRfVar var_A8
  loc_9BF402: LitVarStr var_A4, "CodiTimb"
  loc_9BF407: PopAdLdVar
  loc_9BF408: FLdRfVar var_94
  loc_9BF40B: FLdPr Me
  loc_9BF40E: MemLdPr global_56
  loc_9BF411:  = Me.Fields
  loc_9BF416: FLdPr var_94
  loc_9BF419: from_stack_2 = Me.Item(from_stack_1)
  loc_9BF41E: FLdPr var_A8
  loc_9BF421:  = Me.Value
  loc_9BF426: FLdRfVar var_B8
  loc_9BF429: CUI1Var
  loc_9BF42B: FStUI1 var_8E
  loc_9BF42F: FFreeAd var_94 = ""
  loc_9BF436: FFree1Var var_B8 = ""
  loc_9BF439: LitStr "INSERT INTO tipomovibanco VALUES ("
  loc_9BF43C: FLdUI1
  loc_9BF440: CStrI2
  loc_9BF442: FStStrNoPop var_BC
  loc_9BF445: ConcatStr
  loc_9BF446: FStStrNoPop var_C0
  loc_9BF449: LitStr ",'"
  loc_9BF44C: ConcatStr
  loc_9BF44D: FStStrNoPop var_C4
  loc_9BF450: ILdRf var_88
  loc_9BF453: ConcatStr
  loc_9BF454: FStStrNoPop var_C8
  loc_9BF457: LitStr "','"
  loc_9BF45A: ConcatStr
  loc_9BF45B: FStStrNoPop var_CC
  loc_9BF45E: ILdRf var_8C
  loc_9BF461: ConcatStr
  loc_9BF462: FStStrNoPop var_D0
  loc_9BF465: LitStr "',0,0)"
  loc_9BF468: ConcatStr
  loc_9BF469: FStStrNoPop var_D4
  loc_9BF46C: Call EjecutarRsCls(from_stack_1v)
  loc_9BF471: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_9BF482: FLdUI1
  loc_9BF486: Call Encontrar(from_stack_1v)
  loc_9BF48B: ExitProcHresult
End Sub

Public Sub Modificar(CodiTimb, DetaTimb, TipoTimb) '99E8E0
  'Data Table: 40A8A8
  loc_99E888: ILdRf DetaTimb
  loc_99E88B: FStStrCopy var_88
  loc_99E88E: ILdRf TipoTimb
  loc_99E891: FStStrCopy var_8C
  loc_99E894: LitStr "UPDATE tipomovibanco SET DetaTimb='"
  loc_99E897: ILdRf var_88
  loc_99E89A: ConcatStr
  loc_99E89B: FStStrNoPop var_90
  loc_99E89E: LitStr "',TipoTimb='"
  loc_99E8A1: ConcatStr
  loc_99E8A2: FStStrNoPop var_94
  loc_99E8A5: ILdRf var_8C
  loc_99E8A8: ConcatStr
  loc_99E8A9: FStStrNoPop var_98
  loc_99E8AC: LitStr "' WHERE CodiTimb="
  loc_99E8AF: ConcatStr
  loc_99E8B0: FStStrNoPop var_9C
  loc_99E8B3: FLdUI1
  loc_99E8B7: CStrI2
  loc_99E8B9: FStStrNoPop var_A0
  loc_99E8BC: ConcatStr
  loc_99E8BD: FStStrNoPop var_A4
  loc_99E8C0: Call EjecutarRsCls(from_stack_1v)
  loc_99E8C5: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_99E8D4: FLdUI1
  loc_99E8D8: Call Encontrar(from_stack_1v)
  loc_99E8DD: ExitProcHresult
End Sub

Public Sub Eliminar(CodiTimb) '9A3C88
  'Data Table: 40A8A8
  loc_9A3C0C: LitStr "DELETE FROM tipomovibanco WHERE CodiTimb="
  loc_9A3C0F: FLdUI1
  loc_9A3C13: CStrI2
  loc_9A3C15: FStStrNoPop var_88
  loc_9A3C18: ConcatStr
  loc_9A3C19: FStStrNoPop var_8C
  loc_9A3C1C: Call EjecutarRsCls(from_stack_1v)
  loc_9A3C21: FFreeStr var_88 = ""
  loc_9A3C28: FLdRfVar var_94
  loc_9A3C2B: FLdPr Me
  loc_9A3C2E: MemLdPr RsFrm
  loc_9A3C31:  = Me.AbsolutePosition
  loc_9A3C36: ILdRf var_94
  loc_9A3C39: FStR4 var_90
  loc_9A3C3C: Call Requery()
  loc_9A3C41: FLdRfVar var_94
  loc_9A3C44: FLdPr Me
  loc_9A3C47: MemLdPr RsFrm
  loc_9A3C4A:  = Me.RecordCount
  loc_9A3C4F: ILdRf var_94
  loc_9A3C52: LitI4 0
  loc_9A3C57: GtI4
  loc_9A3C58: BranchF loc_9A3C84
  loc_9A3C5B: Call MoveFirst(from_stack_1v)
  loc_9A3C60: ILdRf var_90
  loc_9A3C63: LitI4 1
  loc_9A3C68: GtI4
  loc_9A3C69: BranchF loc_9A3C84
  loc_9A3C6C: LitVar_Missing var_A4
  loc_9A3C6F: PopAdLdVar
  loc_9A3C70: ILdRf var_90
  loc_9A3C73: LitI4 2
  loc_9A3C78: SubI4
  loc_9A3C79: FLdPr Me
  loc_9A3C7C: MemLdPr RsFrm
  loc_9A3C7F: Me.Move from_stack_1, from_stack_2
  loc_9A3C84: ExitProcHresult
End Sub

Public Sub Encontrar(CodiTimb) '97C628
  'Data Table: 40A8A8
  loc_97C5FC: Call Requery()
  loc_97C601: LitStr "CodiTimb = '"
  loc_97C604: FLdUI1
  loc_97C608: CStrI2
  loc_97C60A: FStStrNoPop var_88
  loc_97C60D: ConcatStr
  loc_97C60E: FStStrNoPop var_8C
  loc_97C611: LitStr "'"
  loc_97C614: ConcatStr
  loc_97C615: PopTmpLdAdStr
  loc_97C619: Call Find(from_stack_1v)
  loc_97C61E: FFreeStr var_88 = "": var_8C = ""
  loc_97C627: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '9731B8
  'Data Table: 40A8A8
  loc_973190: ILdRf sSelect
  loc_973193: FStStrCopy var_88
  loc_973196: FLdPr Me
  loc_973199: MemLdRfVar from_stack_1.RsFrm
  loc_97319C: ILdRf var_88
  loc_97319F: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_9731A4: LitVarStr var_98, "Primary"
  loc_9731A9: PopAdLdVar
  loc_9731AA: FLdPr Me
  loc_9731AD: LateIdCall
  loc_9731B5: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '960ADC
  'Data Table: 40A8A8
  loc_960AC4: ILdRf sSelect
  loc_960AC7: FStStrCopy var_88
  loc_960ACA: FLdPr Me
  loc_960ACD: MemLdRfVar from_stack_1.global_56
  loc_960AD0: ILdRf var_88
  loc_960AD3: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_960AD8: ExitProcHresult
End Sub

Public Sub Requery() '967B20
  'Data Table: 40A8A8
  loc_967B00: FLdPr Me
  loc_967B03: MemLdRfVar from_stack_1.RsFrm
  loc_967B06: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_967B0B: LitVarStr var_94, "Primary"
  loc_967B10: PopAdLdVar
  loc_967B11: FLdPr Me
  loc_967B14: LateIdCall
  loc_967B1C: ExitProcHresult
  loc_967B1D: MulI2
  loc_967B1E: CStrVarTmp
End Sub

Public Property Get DataSource() '973604
  'Data Table: 40A8A8
  loc_9735E0: ZeroRetVal
  loc_9735E2: FLdRfVar var_8C
  loc_9735E5: FLdPr Me
  loc_9735E8: MemLdPr RsFrm
  loc_9735EB:  = Me.DataSource
  loc_9735F0: ILdRf var_8C
  loc_9735F3: CastAd
  loc_9735F6: FStAdFunc var_88
  loc_9735F9: FFree1Ad var_8C
  loc_9735FC: ExitProcCbHresult
  loc_973602: FnAbsR4
End Sub

Public Function ValidaModificarTipoTimb(iCodiTimb) '9AEA58
  'Data Table: 40A8A8
  loc_9AE9B4: ZeroRetVal
  loc_9AE9B6: FLdUI1
  loc_9AE9BA: CI2UI1
  loc_9AE9BC: LitI2_Byte &HB
  loc_9AE9BE: LtI2
  loc_9AE9BF: BranchF loc_9AE9CE
  loc_9AE9C2: LitStr "El Tipo de Movimiento está reservado. Verifique..."
  loc_9AE9C5: FStStrCopy var_88
  loc_9AE9C8: ExitProcCbHresult
  loc_9AE9CE: LitStr "SELECT * FROM movibanco WHERE CodiTimb = "
  loc_9AE9D1: FLdUI1
  loc_9AE9D5: CStrI2
  loc_9AE9D7: FStStrNoPop var_8C
  loc_9AE9DA: ConcatStr
  loc_9AE9DB: FStStrNoPop var_90
  loc_9AE9DE: Call EjecutarRsCls(from_stack_1v)
  loc_9AE9E3: FFreeStr var_8C = ""
  loc_9AE9EA: FLdRfVar ValidaModificarTipoTimb
  loc_9AE9ED: FLdPr Me
  loc_9AE9F0: MemLdPr global_56
  loc_9AE9F3:  = Me.RecordCount
  loc_9AE9F8: ILdRf ValidaModificarTipoTimb
  loc_9AE9FB: LitI4 0
  loc_9AEA00: GtI4
  loc_9AEA01: BranchF loc_9AEA10
  loc_9AEA04: LitStr "El Tipo de Movimiento está en un Libro Banco y NO puede modificarse. Verifique..."
  loc_9AEA07: FStStrCopy var_88
  loc_9AEA0A: ExitProcCbHresult
  loc_9AEA10: LitStr "SELECT * FROM moviextracto WHERE CodiTimb = "
  loc_9AEA13: FLdUI1
  loc_9AEA17: CStrI2
  loc_9AEA19: FStStrNoPop var_8C
  loc_9AEA1C: ConcatStr
  loc_9AEA1D: FStStrNoPop var_90
  loc_9AEA20: Call EjecutarRsCls(from_stack_1v)
  loc_9AEA25: FFreeStr var_8C = ""
  loc_9AEA2C: FLdRfVar ValidaModificarTipoTimb
  loc_9AEA2F: FLdPr Me
  loc_9AEA32: MemLdPr global_56
  loc_9AEA35:  = Me.RecordCount
  loc_9AEA3A: ILdRf ValidaModificarTipoTimb
  loc_9AEA3D: LitI4 0
  loc_9AEA42: GtI4
  loc_9AEA43: BranchF loc_9AEA52
  loc_9AEA46: LitStr "El Tipo de Movimiento está en un Extracto Bancario y NO puede modificarse. Verifique..."
  loc_9AEA49: FStStrCopy var_88
  loc_9AEA4C: ExitProcCbHresult
  loc_9AEA52: ExitProcCbHresult
End Function

Public Function ValidaEliminar(CodiTimb) '9A6CD0
  'Data Table: 40A8A8
  loc_9A6C44: ZeroRetVal
  loc_9A6C46: LitStr "SELECT * FROM movibanco WHERE CodiTimb = "
  loc_9A6C49: FLdUI1
  loc_9A6C4D: CStrI2
  loc_9A6C4F: FStStrNoPop var_8C
  loc_9A6C52: ConcatStr
  loc_9A6C53: FStStrNoPop var_90
  loc_9A6C56: Call EjecutarRsCls(from_stack_1v)
  loc_9A6C5B: FFreeStr var_8C = ""
  loc_9A6C62: FLdRfVar ValidaEliminar
  loc_9A6C65: FLdPr Me
  loc_9A6C68: MemLdPr global_56
  loc_9A6C6B:  = Me.RecordCount
  loc_9A6C70: ILdRf ValidaEliminar
  loc_9A6C73: LitI4 0
  loc_9A6C78: GtI4
  loc_9A6C79: BranchF loc_9A6C88
  loc_9A6C7C: LitStr "El Tipo de Movimiento está en un Libro Banco. Verifique..."
  loc_9A6C7F: FStStrCopy var_88
  loc_9A6C82: ExitProcCbHresult
  loc_9A6C88: LitStr "SELECT * FROM moviextracto WHERE CodiTimb = "
  loc_9A6C8B: FLdUI1
  loc_9A6C8F: CStrI2
  loc_9A6C91: FStStrNoPop var_8C
  loc_9A6C94: ConcatStr
  loc_9A6C95: FStStrNoPop var_90
  loc_9A6C98: Call EjecutarRsCls(from_stack_1v)
  loc_9A6C9D: FFreeStr var_8C = ""
  loc_9A6CA4: FLdRfVar ValidaEliminar
  loc_9A6CA7: FLdPr Me
  loc_9A6CAA: MemLdPr global_56
  loc_9A6CAD:  = Me.RecordCount
  loc_9A6CB2: ILdRf ValidaEliminar
  loc_9A6CB5: LitI4 0
  loc_9A6CBA: GtI4
  loc_9A6CBB: BranchF loc_9A6CCA
  loc_9A6CBE: LitStr "El Tipo de Movimiento está en un Extracto Bancario. Verifique..."
  loc_9A6CC1: FStStrCopy var_88
  loc_9A6CC4: ExitProcCbHresult
  loc_9A6CCA: ExitProcCbHresult
End Function

Private Function Proc_35_25_9730FC() '9730FC
  'Data Table: 40A8A8
  loc_9730D8: LitStr "Primary"
  loc_9730DB: FLdPr Me
  loc_9730DE: LateIdLdVar var_94 DispID_4 0
  loc_9730E5: CastAdVar Me
  loc_9730E9: FStAdFunc var_98
  loc_9730EC: FLdPr var_98
  loc_9730F4: FFree1Ad var_98
  loc_9730F7: FFree1Var var_94 = ""
  loc_9730FA: ExitProcHresult
End Function

Private Function Proc_35_26_967B6C(arg_C) '967B6C
  'Data Table: 40A8A8
  loc_967B50: ILdI4 arg_C
  loc_967B53: FStStrCopy var_88
  loc_967B56: ILdRf var_88
  loc_967B59: LitStr "Primary"
  loc_967B5C: EqStr
  loc_967B5E: BranchF loc_967B6B
  loc_967B61: FLdPr Me
  loc_967B64: MemLdStr RsFrm
  loc_967B67: IStAd
  loc_967B6B: ExitProcHresult
End Function
