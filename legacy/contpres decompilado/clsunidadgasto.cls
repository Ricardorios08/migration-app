VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsunidadgasto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40DF98
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40DFA7
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40DFB6
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96D264
  'Data Table: 40DD90
  loc_96D23C: FLdRfVar var_88
  loc_96D23F: FLdPr Me
  loc_96D242: MemLdPr RsFrm
  loc_96D245:  = Me.RecordCount
  loc_96D24A: ILdRf var_88
  loc_96D24D: LitI4 0
  loc_96D252: GtI4
  loc_96D253: BranchF loc_96D261
  loc_96D256: FLdPr Me
  loc_96D259: MemLdPr RsFrm
  loc_96D25C: Me.MoveFirst
  loc_96D261: ExitProcHresult
  loc_96D262: FLdPrThis
End Sub

Public Sub MoveLast() '96D314
  'Data Table: 40DD90
  loc_96D2EC: FLdRfVar var_88
  loc_96D2EF: FLdPr Me
  loc_96D2F2: MemLdPr RsFrm
  loc_96D2F5:  = Me.RecordCount
  loc_96D2FA: ILdRf var_88
  loc_96D2FD: LitI4 0
  loc_96D302: GtI4
  loc_96D303: BranchF loc_96D311
  loc_96D306: FLdPr Me
  loc_96D309: MemLdPr RsFrm
  loc_96D30C: Me.MoveLast
  loc_96D311: ExitProcHresult
End Sub

Public Sub MoveNext() '99EBA0
  'Data Table: 40DD90
  loc_99EB28: FLdRfVar var_86
  loc_99EB2B: FLdPr Me
  loc_99EB2E: MemLdPr RsFrm
  loc_99EB31:  = Me.EOF
  loc_99EB36: FLdI2 var_86
  loc_99EB39: NotI4
  loc_99EB3A: FLdRfVar var_8C
  loc_99EB3D: FLdPr Me
  loc_99EB40: MemLdPr RsFrm
  loc_99EB43:  = Me.RecordCount
  loc_99EB48: ILdRf var_8C
  loc_99EB4B: LitI4 0
  loc_99EB50: GtI4
  loc_99EB51: AndI4
  loc_99EB52: BranchF loc_99EB60
  loc_99EB55: FLdPr Me
  loc_99EB58: MemLdPr RsFrm
  loc_99EB5B: Me.MoveNext
  loc_99EB60: FLdRfVar var_86
  loc_99EB63: FLdPr Me
  loc_99EB66: MemLdPr RsFrm
  loc_99EB69:  = Me.EOF
  loc_99EB6E: FLdI2 var_86
  loc_99EB71: FLdRfVar var_8C
  loc_99EB74: FLdPr Me
  loc_99EB77: MemLdPr RsFrm
  loc_99EB7A:  = Me.RecordCount
  loc_99EB7F: ILdRf var_8C
  loc_99EB82: LitI4 0
  loc_99EB87: GtI4
  loc_99EB88: AndI4
  loc_99EB89: BranchF loc_99EB9C
  loc_99EB8C: ImpAdCallFPR4 Beep()
  loc_99EB91: FLdPr Me
  loc_99EB94: MemLdPr RsFrm
  loc_99EB97: Me.MoveLast
  loc_99EB9C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '94115C
  'Data Table: 40DD90
  loc_941150: FLdPr Me
  loc_941153: MemLdPr RsFrm
  loc_941156: Me.MoveNext
  loc_94115B: ExitProcHresult
End Sub

Public Sub Move(iValor) '948CDC
  'Data Table: 40DD90
  loc_948CC8: LitVar_Missing var_94
  loc_948CCB: PopAdLdVar
  loc_948CCC: ILdI2 iValor
  loc_948CCF: CI4UI1
  loc_948CD0: FLdPr Me
  loc_948CD3: MemLdPr RsFrm
  loc_948CD6: Me.Move from_stack_1, from_stack_2
  loc_948CDB: ExitProcHresult
End Sub

Public Sub MovePrevious() '99ECF0
  'Data Table: 40DD90
  loc_99EC78: FLdRfVar var_86
  loc_99EC7B: FLdPr Me
  loc_99EC7E: MemLdPr RsFrm
  loc_99EC81:  = Me.BOF
  loc_99EC86: FLdI2 var_86
  loc_99EC89: NotI4
  loc_99EC8A: FLdRfVar var_8C
  loc_99EC8D: FLdPr Me
  loc_99EC90: MemLdPr RsFrm
  loc_99EC93:  = Me.RecordCount
  loc_99EC98: ILdRf var_8C
  loc_99EC9B: LitI4 0
  loc_99ECA0: GtI4
  loc_99ECA1: AndI4
  loc_99ECA2: BranchF loc_99ECB0
  loc_99ECA5: FLdPr Me
  loc_99ECA8: MemLdPr RsFrm
  loc_99ECAB: Me.MovePrevious
  loc_99ECB0: FLdRfVar var_86
  loc_99ECB3: FLdPr Me
  loc_99ECB6: MemLdPr RsFrm
  loc_99ECB9:  = Me.BOF
  loc_99ECBE: FLdI2 var_86
  loc_99ECC1: FLdRfVar var_8C
  loc_99ECC4: FLdPr Me
  loc_99ECC7: MemLdPr RsFrm
  loc_99ECCA:  = Me.RecordCount
  loc_99ECCF: ILdRf var_8C
  loc_99ECD2: LitI4 0
  loc_99ECD7: GtI4
  loc_99ECD8: AndI4
  loc_99ECD9: BranchF loc_99ECEC
  loc_99ECDC: ImpAdCallFPR4 Beep()
  loc_99ECE1: FLdPr Me
  loc_99ECE4: MemLdPr RsFrm
  loc_99ECE7: Me.MoveFirst
  loc_99ECEC: ExitProcHresult
End Sub

Public Property Get EOF() '9577A0
  'Data Table: 40DD90
  loc_957784: FLdRfVar var_88
  loc_957787: FLdPr Me
  loc_95778A: MemLdPr RsFrm
  loc_95778D:  = Me.EOF
  loc_957792: FLdI2 var_88
  loc_957795: FStI2 var_86
  loc_957798: ExitProcCbHresult
  loc_95779E: FnLBound
End Sub

Public Property Get BOF() '957754
  'Data Table: 40DD90
  loc_957738: FLdRfVar var_88
  loc_95773B: FLdPr Me
  loc_95773E: MemLdPr RsFrm
  loc_957741:  = Me.BOF
  loc_957746: FLdI2 var_88
  loc_957749: FStI2 var_86
  loc_95774C: ExitProcCbHresult
  loc_957752: MemLdPr global_6144
End Sub

Public Sub Sort(sOrden) '947804
  'Data Table: 40DD90
  loc_9477F4: ILdI4 sOrden
  loc_9477F7: FLdPr Me
  loc_9477FA: MemLdPr RsFrm
  loc_9477FD: Me.Sort = from_stack_1
  loc_947802: ExitProcHresult
End Sub

Public Sub Find(sFind) '967DF0
  'Data Table: 40DD90
  loc_967DD0: LitVar_Missing var_94
  loc_967DD3: PopAdLdVar
  loc_967DD4: LitI4 1
  loc_967DD9: LitI4 0
  loc_967DDE: ILdI4 sFind
  loc_967DE1: FLdPr Me
  loc_967DE4: MemLdPr RsFrm
  loc_967DE7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_967DEC: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '948EB8
  'Data Table: 40DD90
  loc_948EA4: ILdI4 sCriterio
  loc_948EA7: CVarStr var_94
  loc_948EAA: PopAdLdVar
  loc_948EAB: FLdPr Me
  loc_948EAE: MemLdPr RsFrm
  loc_948EB1: Me.Filter = from_stack_1
  loc_948EB6: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9604F0
  'Data Table: 40DD90
  loc_9604D4: FLdRfVar var_8C
  loc_9604D7: FLdPr Me
  loc_9604DA: MemLdPr RsFrm
  loc_9604DD:  = Me.AbsolutePosition
  loc_9604E2: ILdRf var_8C
  loc_9604E5: FStR4 var_88
  loc_9604E8: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '957624
  'Data Table: 40DD90
  loc_957608: FLdRfVar var_8C
  loc_95760B: FLdPr Me
  loc_95760E: MemLdPr RsFrm
  loc_957611:  = Me.RecordCount
  loc_957616: ILdRf var_8C
  loc_957619: FStR4 var_88
  loc_95761C: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiTiug, DetaUnga, PeriInfo, CodiOrga, CodiInsu, CodiPart, CodiFifu, CucuPers, CucuProv) 'A381A8
  'Data Table: 40DD90
  loc_A38004: ILdRf DetaUnga
  loc_A38007: FStStrCopy var_88
  loc_A3800A: ILdRf CodiOrga
  loc_A3800D: FStStrCopy var_8C
  loc_A38010: ILdRf CodiPart
  loc_A38013: FStStrCopy var_90
  loc_A38016: ILdRf CodiFifu
  loc_A38019: FStStrCopy var_94
  loc_A3801C: ILdRf CucuPers
  loc_A3801F: FStStrCopy var_98
  loc_A38022: ILdRf CucuProv
  loc_A38025: FStStrCopy var_9C
  loc_A38028: LitStr "SELECT CodiUnga"
  loc_A3802B: LitStr " FROM unidadgasto"
  loc_A3802E: ConcatStr
  loc_A3802F: FStStrNoPop var_A4
  loc_A38032: LitStr " ORDER BY CodiUnga DESC LIMIT 1"
  loc_A38035: ConcatStr
  loc_A38036: FStStrNoPop var_A8
  loc_A38039: Call EjecutarRsCls(from_stack_1v)
  loc_A3803E: FFreeStr var_A4 = ""
  loc_A38045: FLdRfVar var_AC
  loc_A38048: FLdPr Me
  loc_A3804B: MemLdPr global_56
  loc_A3804E:  = Me.RecordCount
  loc_A38053: ILdRf var_AC
  loc_A38056: LitI4 0
  loc_A3805B: GtI4
  loc_A3805C: BranchF loc_A380A1
  loc_A3805F: FLdRfVar var_D4
  loc_A38062: FLdRfVar var_C4
  loc_A38065: LitVarStr var_C0, "CodiUnga"
  loc_A3806A: PopAdLdVar
  loc_A3806B: FLdRfVar var_B0
  loc_A3806E: FLdPr Me
  loc_A38071: MemLdPr global_56
  loc_A38074:  = Me.Fields
  loc_A38079: FLdPr var_B0
  loc_A3807C: from_stack_2 = Me.Item(from_stack_1)
  loc_A38081: FLdPr var_C4
  loc_A38084:  = Me.Value
  loc_A38089: FLdRfVar var_D4
  loc_A3808C: FnCIntVar
  loc_A3808E: LitI2_Byte 1
  loc_A38090: AddI2
  loc_A38091: FStI2 var_9E
  loc_A38094: FFreeAd var_B0 = ""
  loc_A3809B: FFree1Var var_D4 = ""
  loc_A3809E: Branch loc_A380A6
  loc_A380A1: LitI2_Byte 1
  loc_A380A3: FStI2 var_9E
  loc_A380A6: LitStr "INSERT INTO unidadgasto (CodiTiug,CodiUnga,DetaUnga,PeriInfo,CodiOrga,CodiInsu,CodiPart,CodiFifu,CucuPers,CucuProv,AltaUsua)"
  loc_A380A9: LitStr " VALUES ("
  loc_A380AC: ConcatStr
  loc_A380AD: FStStrNoPop var_A4
  loc_A380B0: FLdUI1
  loc_A380B4: CStrI2
  loc_A380B6: FStStrNoPop var_A8
  loc_A380B9: ConcatStr
  loc_A380BA: FStStrNoPop var_D8
  loc_A380BD: LitStr ","
  loc_A380C0: ConcatStr
  loc_A380C1: FStStrNoPop var_DC
  loc_A380C4: FLdI2 var_9E
  loc_A380C7: CStrUI1
  loc_A380C9: FStStrNoPop var_E0
  loc_A380CC: ConcatStr
  loc_A380CD: FStStrNoPop var_E4
  loc_A380D0: LitStr ",'"
  loc_A380D3: ConcatStr
  loc_A380D4: FStStrNoPop var_E8
  loc_A380D7: ILdRf var_88
  loc_A380DA: ConcatStr
  loc_A380DB: FStStrNoPop var_EC
  loc_A380DE: LitStr "',"
  loc_A380E1: ConcatStr
  loc_A380E2: FStStrNoPop var_F0
  loc_A380E5: FLdI2 PeriInfo
  loc_A380E8: CStrUI1
  loc_A380EA: FStStrNoPop var_F4
  loc_A380ED: ConcatStr
  loc_A380EE: FStStrNoPop var_F8
  loc_A380F1: LitStr ",'"
  loc_A380F4: ConcatStr
  loc_A380F5: FStStrNoPop var_FC
  loc_A380F8: ILdRf var_8C
  loc_A380FB: ConcatStr
  loc_A380FC: FStStrNoPop var_100
  loc_A380FF: LitStr "',"
  loc_A38102: ConcatStr
  loc_A38103: FStStrNoPop var_104
  loc_A38106: ILdRf CodiInsu
  loc_A38109: CStrI4
  loc_A3810B: FStStrNoPop var_108
  loc_A3810E: ConcatStr
  loc_A3810F: FStStrNoPop var_10C
  loc_A38112: LitStr ",'"
  loc_A38115: ConcatStr
  loc_A38116: FStStrNoPop var_110
  loc_A38119: ILdRf var_90
  loc_A3811C: ConcatStr
  loc_A3811D: FStStrNoPop var_114
  loc_A38120: LitStr "','"
  loc_A38123: ConcatStr
  loc_A38124: FStStrNoPop var_118
  loc_A38127: ILdRf var_94
  loc_A3812A: ConcatStr
  loc_A3812B: FStStrNoPop var_11C
  loc_A3812E: LitStr "',"
  loc_A38131: ConcatStr
  loc_A38132: FStStrNoPop var_120
  loc_A38135: ILdRf var_98
  loc_A38138: ConcatStr
  loc_A38139: FStStrNoPop var_124
  loc_A3813C: LitStr ","
  loc_A3813F: ConcatStr
  loc_A38140: FStStrNoPop var_128
  loc_A38143: ILdRf var_9C
  loc_A38146: ConcatStr
  loc_A38147: FStStrNoPop var_12C
  loc_A3814A: LitStr ",'"
  loc_A3814D: ConcatStr
  loc_A3814E: FStStrNoPop var_130
  loc_A38151: ImpAdLdI4 MemVar_C3D03C
  loc_A38154: ConcatStr
  loc_A38155: FStStrNoPop var_134
  loc_A38158: LitStr "')"
  loc_A3815B: ConcatStr
  loc_A3815C: FStStrNoPop var_138
  loc_A3815F: Call EjecutarRsCls(from_stack_1v)
  loc_A38164: FFreeStr var_A4 = "": var_A8 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_A3819D: FLdI2 var_9E
  loc_A381A0: Call Encontrar(from_stack_1v)
  loc_A381A5: ExitProcHresult
  loc_A381A6: FLdPr CodiOrga08
End Sub

Public Function ValidaModificar() '9AD8EC
  'Data Table: 40DD90
  loc_9AD854: ZeroRetVal
  loc_9AD856: FLdRfVar var_B0
  loc_9AD859: FLdRfVar var_A0
  loc_9AD85C: LitVarStr var_9C, "BajaUsua"
  loc_9AD861: PopAdLdVar
  loc_9AD862: FLdRfVar var_8C
  loc_9AD865: FLdPr Me
  loc_9AD868: MemLdPr RsFrm
  loc_9AD86B:  = Me.Fields
  loc_9AD870: FLdPr var_8C
  loc_9AD873: from_stack_2 = Me.Item(from_stack_1)
  loc_9AD878: FLdPr var_A0
  loc_9AD87B:  = Me.Value
  loc_9AD880: FLdRfVar var_B0
  loc_9AD883: LitVarStr var_C0, vbNullString
  loc_9AD888: HardType
  loc_9AD889: NeVarBool
  loc_9AD88B: FFreeAd var_8C = ""
  loc_9AD892: FFree1Var var_B0 = ""
  loc_9AD895: BranchF loc_9AD8A1
  loc_9AD898: LitStr "La Unidad de Gasto está dada de baja. Verifique..."
  loc_9AD89B: FStStrCopy var_88
  loc_9AD89E: Branch loc_9AD8E6
  loc_9AD8A1: FLdRfVar var_B0
  loc_9AD8A4: FLdRfVar var_A0
  loc_9AD8A7: LitVarStr var_9C, "CodiUnga"
  loc_9AD8AC: PopAdLdVar
  loc_9AD8AD: FLdRfVar var_8C
  loc_9AD8B0: FLdPr Me
  loc_9AD8B3: MemLdPr RsFrm
  loc_9AD8B6:  = Me.Fields
  loc_9AD8BB: FLdPr var_8C
  loc_9AD8BE: from_stack_2 = Me.Item(from_stack_1)
  loc_9AD8C3: FLdPr var_A0
  loc_9AD8C6:  = Me.Value
  loc_9AD8CB: FLdRfVar var_B0
  loc_9AD8CE: FnCIntVar
  loc_9AD8D0: LitI2_Byte 1
  loc_9AD8D2: EqI2
  loc_9AD8D3: FFreeAd var_8C = ""
  loc_9AD8DA: FFree1Var var_B0 = ""
  loc_9AD8DD: BranchF loc_9AD8E6
  loc_9AD8E0: LitStr "La Unidad de Gasto Nro. 1 NO puede Modificarse. Verifique..."
  loc_9AD8E3: FStStrCopy var_88
  loc_9AD8E6: ExitProcCbHresult
End Function

Public Sub Modificar(CodiTiug, DetaUnga, PeriInfo, CodiOrga, CodiInsu, CodiPart, CodiFifu, CucuPers, CucuProv) 'A336A0
  'Data Table: 40DD90
  loc_A33510: ILdRf DetaUnga
  loc_A33513: FStStrCopy var_88
  loc_A33516: ILdRf CodiOrga
  loc_A33519: FStStrCopy var_8C
  loc_A3351C: ILdRf CodiPart
  loc_A3351F: FStStrCopy var_90
  loc_A33522: ILdRf CodiFifu
  loc_A33525: FStStrCopy var_94
  loc_A33528: ILdRf CucuPers
  loc_A3352B: FStStrCopy var_98
  loc_A3352E: ILdRf CucuProv
  loc_A33531: FStStrCopy var_9C
  loc_A33534: LitStr "UPDATE unidadgasto"
  loc_A33537: LitStr " SET CodiTiug="
  loc_A3353A: ConcatStr
  loc_A3353B: FStStrNoPop var_A0
  loc_A3353E: FLdUI1
  loc_A33542: CStrI2
  loc_A33544: FStStrNoPop var_A4
  loc_A33547: ConcatStr
  loc_A33548: FStStrNoPop var_A8
  loc_A3354B: LitStr ", DetaUnga='"
  loc_A3354E: ConcatStr
  loc_A3354F: FStStrNoPop var_AC
  loc_A33552: ILdRf var_88
  loc_A33555: ConcatStr
  loc_A33556: FStStrNoPop var_B0
  loc_A33559: LitStr "',PeriInfo="
  loc_A3355C: ConcatStr
  loc_A3355D: FStStrNoPop var_B4
  loc_A33560: FLdI2 PeriInfo
  loc_A33563: CStrUI1
  loc_A33565: FStStrNoPop var_B8
  loc_A33568: ConcatStr
  loc_A33569: FStStrNoPop var_BC
  loc_A3356C: LitStr ", CodiOrga='"
  loc_A3356F: ConcatStr
  loc_A33570: FStStrNoPop var_C0
  loc_A33573: ILdRf var_8C
  loc_A33576: ConcatStr
  loc_A33577: FStStrNoPop var_C4
  loc_A3357A: LitStr "',CodiInsu="
  loc_A3357D: ConcatStr
  loc_A3357E: FStStrNoPop var_C8
  loc_A33581: ILdRf CodiInsu
  loc_A33584: CStrI4
  loc_A33586: FStStrNoPop var_CC
  loc_A33589: ConcatStr
  loc_A3358A: FStStrNoPop var_D0
  loc_A3358D: LitStr ",CodiPart='"
  loc_A33590: ConcatStr
  loc_A33591: FStStrNoPop var_D4
  loc_A33594: ILdRf var_90
  loc_A33597: ConcatStr
  loc_A33598: FStStrNoPop var_D8
  loc_A3359B: LitStr "',CodiFifu='"
  loc_A3359E: ConcatStr
  loc_A3359F: FStStrNoPop var_DC
  loc_A335A2: ILdRf var_94
  loc_A335A5: ConcatStr
  loc_A335A6: FStStrNoPop var_E0
  loc_A335A9: LitStr "',CucuPers="
  loc_A335AC: ConcatStr
  loc_A335AD: FStStrNoPop var_E4
  loc_A335B0: ILdRf var_98
  loc_A335B3: ConcatStr
  loc_A335B4: FStStrNoPop var_E8
  loc_A335B7: LitStr ",CucuProv="
  loc_A335BA: ConcatStr
  loc_A335BB: FStStrNoPop var_EC
  loc_A335BE: ILdRf var_9C
  loc_A335C1: ConcatStr
  loc_A335C2: FStStrNoPop var_F0
  loc_A335C5: LitStr ",ModiUsua='"
  loc_A335C8: ConcatStr
  loc_A335C9: FStStrNoPop var_F4
  loc_A335CC: ImpAdLdI4 MemVar_C3D03C
  loc_A335CF: ConcatStr
  loc_A335D0: FStStrNoPop var_F8
  loc_A335D3: LitStr "',ModiFeho=Now()"
  loc_A335D6: ConcatStr
  loc_A335D7: FStStrNoPop var_FC
  loc_A335DA: LitStr " WHERE CodiUnga = "
  loc_A335DD: ConcatStr
  loc_A335DE: CVarStr var_134
  loc_A335E1: FLdRfVar var_124
  loc_A335E4: FLdRfVar var_114
  loc_A335E7: LitVarStr var_110, "CodiUnga"
  loc_A335EC: PopAdLdVar
  loc_A335ED: FLdRfVar var_100
  loc_A335F0: FLdPr Me
  loc_A335F3: MemLdPr RsFrm
  loc_A335F6:  = Me.Fields
  loc_A335FB: FLdPr var_100
  loc_A335FE: from_stack_2 = Me.Item(from_stack_1)
  loc_A33603: FLdPr var_114
  loc_A33606:  = Me.Value
  loc_A3360B: FLdRfVar var_124
  loc_A3360E: ConcatVar var_144
  loc_A33612: CStrVarVal var_148
  loc_A33616: Call EjecutarRsCls(from_stack_1v)
  loc_A3361B: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_A33650: FFreeAd var_100 = ""
  loc_A33657: FFreeVar var_134 = "": var_124 = ""
  loc_A33660: FLdRfVar var_124
  loc_A33663: FLdRfVar var_114
  loc_A33666: LitVarStr var_110, "CodiUnga"
  loc_A3366B: PopAdLdVar
  loc_A3366C: FLdRfVar var_100
  loc_A3366F: FLdPr Me
  loc_A33672: MemLdPr RsFrm
  loc_A33675:  = Me.Fields
  loc_A3367A: FLdPr var_100
  loc_A3367D: from_stack_2 = Me.Item(from_stack_1)
  loc_A33682: FLdPr var_114
  loc_A33685:  = Me.Value
  loc_A3368A: FLdRfVar var_124
  loc_A3368D: CI2Var
  loc_A3368E: Call Encontrar(from_stack_1v)
  loc_A33693: FFreeAd var_100 = ""
  loc_A3369A: FFree1Var var_124 = ""
  loc_A3369D: ExitProcHresult
End Sub

Public Sub Anular(BajaMoti) '9D3ED4
  'Data Table: 40DD90
  loc_9D3E08: ILdRf BajaMoti
  loc_9D3E0B: FStStrCopy var_88
  loc_9D3E0E: LitStr "UPDATE unidadgasto"
  loc_9D3E11: LitStr " SET BajaUsua='"
  loc_9D3E14: ConcatStr
  loc_9D3E15: FStStrNoPop var_8C
  loc_9D3E18: ImpAdLdI4 MemVar_C3D03C
  loc_9D3E1B: ConcatStr
  loc_9D3E1C: FStStrNoPop var_90
  loc_9D3E1F: LitStr "', BajaFeho=Now(), BajaMoti='"
  loc_9D3E22: ConcatStr
  loc_9D3E23: FStStrNoPop var_94
  loc_9D3E26: ILdRf var_88
  loc_9D3E29: ConcatStr
  loc_9D3E2A: FStStrNoPop var_98
  loc_9D3E2D: LitStr "'"
  loc_9D3E30: ConcatStr
  loc_9D3E31: FStStrNoPop var_9C
  loc_9D3E34: LitStr " WHERE CodiUnga = "
  loc_9D3E37: ConcatStr
  loc_9D3E38: CVarStr var_D4
  loc_9D3E3B: FLdRfVar var_C4
  loc_9D3E3E: FLdRfVar var_B4
  loc_9D3E41: LitVarStr var_B0, "CodiUnga"
  loc_9D3E46: PopAdLdVar
  loc_9D3E47: FLdRfVar var_A0
  loc_9D3E4A: FLdPr Me
  loc_9D3E4D: MemLdPr RsFrm
  loc_9D3E50:  = Me.Fields
  loc_9D3E55: FLdPr var_A0
  loc_9D3E58: from_stack_2 = Me.Item(from_stack_1)
  loc_9D3E5D: FLdPr var_B4
  loc_9D3E60:  = Me.Value
  loc_9D3E65: FLdRfVar var_C4
  loc_9D3E68: ConcatVar var_E4
  loc_9D3E6C: CStrVarVal var_E8
  loc_9D3E70: Call EjecutarRsCls(from_stack_1v)
  loc_9D3E75: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_9D3E84: FFreeAd var_A0 = ""
  loc_9D3E8B: FFreeVar var_D4 = "": var_C4 = ""
  loc_9D3E94: FLdRfVar var_C4
  loc_9D3E97: FLdRfVar var_B4
  loc_9D3E9A: LitVarStr var_B0, "CodiUnga"
  loc_9D3E9F: PopAdLdVar
  loc_9D3EA0: FLdRfVar var_A0
  loc_9D3EA3: FLdPr Me
  loc_9D3EA6: MemLdPr RsFrm
  loc_9D3EA9:  = Me.Fields
  loc_9D3EAE: FLdPr var_A0
  loc_9D3EB1: from_stack_2 = Me.Item(from_stack_1)
  loc_9D3EB6: FLdPr var_B4
  loc_9D3EB9:  = Me.Value
  loc_9D3EBE: FLdRfVar var_C4
  loc_9D3EC1: CI2Var
  loc_9D3EC2: Call Encontrar(from_stack_1v)
  loc_9D3EC7: FFreeAd var_A0 = ""
  loc_9D3ECE: FFree1Var var_C4 = ""
  loc_9D3ED1: ExitProcHresult
  loc_9D3ED2: CExtInstUnk
End Sub

Public Function ValidaEliminar() 'A2AD7C
  'Data Table: 40DD90
  loc_A2ABB0: ZeroRetVal
  loc_A2ABB2: FLdRfVar var_B0
  loc_A2ABB5: FLdRfVar var_A0
  loc_A2ABB8: LitVarStr var_9C, "BajaUsua"
  loc_A2ABBD: PopAdLdVar
  loc_A2ABBE: FLdRfVar var_8C
  loc_A2ABC1: FLdPr Me
  loc_A2ABC4: MemLdPr RsFrm
  loc_A2ABC7:  = Me.Fields
  loc_A2ABCC: FLdPr var_8C
  loc_A2ABCF: from_stack_2 = Me.Item(from_stack_1)
  loc_A2ABD4: FLdPr var_A0
  loc_A2ABD7:  = Me.Value
  loc_A2ABDC: FLdRfVar var_B0
  loc_A2ABDF: LitVarStr var_C0, vbNullString
  loc_A2ABE4: HardType
  loc_A2ABE5: NeVarBool
  loc_A2ABE7: FFreeAd var_8C = ""
  loc_A2ABEE: FFree1Var var_B0 = ""
  loc_A2ABF1: BranchF loc_A2AC03
  loc_A2ABF4: LitStr "La Unidad de Gasto está dada de baja. Verifique..."
  loc_A2ABF7: FStStrCopy var_88
  loc_A2ABFA: ExitProcCbHresult
  loc_A2AC00: Branch loc_A2AC4E
  loc_A2AC03: FLdRfVar var_B0
  loc_A2AC06: FLdRfVar var_A0
  loc_A2AC09: LitVarStr var_9C, "CodiUnga"
  loc_A2AC0E: PopAdLdVar
  loc_A2AC0F: FLdRfVar var_8C
  loc_A2AC12: FLdPr Me
  loc_A2AC15: MemLdPr RsFrm
  loc_A2AC18:  = Me.Fields
  loc_A2AC1D: FLdPr var_8C
  loc_A2AC20: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AC25: FLdPr var_A0
  loc_A2AC28:  = Me.Value
  loc_A2AC2D: FLdRfVar var_B0
  loc_A2AC30: FnCIntVar
  loc_A2AC32: LitI2_Byte 1
  loc_A2AC34: EqI2
  loc_A2AC35: FFreeAd var_8C = ""
  loc_A2AC3C: FFree1Var var_B0 = ""
  loc_A2AC3F: BranchF loc_A2AC4E
  loc_A2AC42: LitStr "La Unidad de Gasto Nro. 1 NO puede Eliminarse. Verifique..."
  loc_A2AC45: FStStrCopy var_88
  loc_A2AC48: ExitProcCbHresult
  loc_A2AC4E: LitStr "SELECT *"
  loc_A2AC51: LitStr " FROM imputacion"
  loc_A2AC54: ConcatStr
  loc_A2AC55: FStStrNoPop var_D4
  loc_A2AC58: LitStr " WHERE CodiUnga = "
  loc_A2AC5B: ConcatStr
  loc_A2AC5C: CVarStr var_D0
  loc_A2AC5F: FLdRfVar var_B0
  loc_A2AC62: FLdRfVar var_A0
  loc_A2AC65: LitVarStr var_9C, "CodiUnga"
  loc_A2AC6A: PopAdLdVar
  loc_A2AC6B: FLdRfVar var_8C
  loc_A2AC6E: FLdPr Me
  loc_A2AC71: MemLdPr RsFrm
  loc_A2AC74:  = Me.Fields
  loc_A2AC79: FLdPr var_8C
  loc_A2AC7C: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AC81: FLdPr var_A0
  loc_A2AC84:  = Me.Value
  loc_A2AC89: FLdRfVar var_B0
  loc_A2AC8C: ConcatVar var_E4
  loc_A2AC90: LitVarStr var_C0, " LIMIT 1"
  loc_A2AC95: ConcatVar var_F4
  loc_A2AC99: CStrVarVal var_F8
  loc_A2AC9D: Call EjecutarRsCls(from_stack_1v)
  loc_A2ACA2: FFreeStr var_D4 = ""
  loc_A2ACA9: FFreeAd var_8C = ""
  loc_A2ACB0: FFreeVar var_D0 = "": var_B0 = "": var_E4 = ""
  loc_A2ACBB: FLdRfVar var_FC
  loc_A2ACBE: FLdPr Me
  loc_A2ACC1: MemLdPr global_56
  loc_A2ACC4:  = Me.RecordCount
  loc_A2ACC9: ILdRf var_FC
  loc_A2ACCC: LitI4 0
  loc_A2ACD1: GtI4
  loc_A2ACD2: BranchF loc_A2ACE1
  loc_A2ACD5: LitStr "La Unidad de Gasto tiene imputaciones y NO puede Eliminarse. Verifique..."
  loc_A2ACD8: FStStrCopy var_88
  loc_A2ACDB: ExitProcCbHresult
  loc_A2ACE1: LitStr "SELECT *"
  loc_A2ACE4: LitStr " FROM itemnota"
  loc_A2ACE7: ConcatStr
  loc_A2ACE8: FStStrNoPop var_D4
  loc_A2ACEB: LitStr " WHERE CodiUnga = "
  loc_A2ACEE: ConcatStr
  loc_A2ACEF: CVarStr var_D0
  loc_A2ACF2: FLdRfVar var_B0
  loc_A2ACF5: FLdRfVar var_A0
  loc_A2ACF8: LitVarStr var_9C, "CodiUnga"
  loc_A2ACFD: PopAdLdVar
  loc_A2ACFE: FLdRfVar var_8C
  loc_A2AD01: FLdPr Me
  loc_A2AD04: MemLdPr RsFrm
  loc_A2AD07:  = Me.Fields
  loc_A2AD0C: FLdPr var_8C
  loc_A2AD0F: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AD14: FLdPr var_A0
  loc_A2AD17:  = Me.Value
  loc_A2AD1C: FLdRfVar var_B0
  loc_A2AD1F: ConcatVar var_E4
  loc_A2AD23: LitVarStr var_C0, " LIMIT 1"
  loc_A2AD28: ConcatVar var_F4
  loc_A2AD2C: CStrVarVal var_F8
  loc_A2AD30: Call EjecutarRsCls(from_stack_1v)
  loc_A2AD35: FFreeStr var_D4 = ""
  loc_A2AD3C: FFreeAd var_8C = ""
  loc_A2AD43: FFreeVar var_D0 = "": var_B0 = "": var_E4 = ""
  loc_A2AD4E: FLdRfVar var_FC
  loc_A2AD51: FLdPr Me
  loc_A2AD54: MemLdPr global_56
  loc_A2AD57:  = Me.RecordCount
  loc_A2AD5C: ILdRf var_FC
  loc_A2AD5F: LitI4 0
  loc_A2AD64: GtI4
  loc_A2AD65: BranchF loc_A2AD74
  loc_A2AD68: LitStr "La Unidad de Gasto tiene nota de pedido y NO puede Eliminarse. Verifique..."
  loc_A2AD6B: FStStrCopy var_88
  loc_A2AD6E: ExitProcCbHresult
  loc_A2AD74: ExitProcCbHresult
End Function

Public Sub Eliminar() '9BD08C
  'Data Table: 40DD90
  loc_9BCFD8: LitStr "DELETE FROM unidadgasto"
  loc_9BCFDB: LitStr " WHERE CodiUnga="
  loc_9BCFDE: ConcatStr
  loc_9BCFDF: CVarStr var_BC
  loc_9BCFE2: FLdRfVar var_AC
  loc_9BCFE5: FLdRfVar var_9C
  loc_9BCFE8: LitVarStr var_98, "CodiUnga"
  loc_9BCFED: PopAdLdVar
  loc_9BCFEE: FLdRfVar var_88
  loc_9BCFF1: FLdPr Me
  loc_9BCFF4: MemLdPr RsFrm
  loc_9BCFF7:  = Me.Fields
  loc_9BCFFC: FLdPr var_88
  loc_9BCFFF: from_stack_2 = Me.Item(from_stack_1)
  loc_9BD004: FLdPr var_9C
  loc_9BD007:  = Me.Value
  loc_9BD00C: FLdRfVar var_AC
  loc_9BD00F: ConcatVar var_CC
  loc_9BD013: CStrVarVal var_D0
  loc_9BD017: Call EjecutarRsCls(from_stack_1v)
  loc_9BD01C: FFree1Str var_D0
  loc_9BD01F: FFreeAd var_88 = ""
  loc_9BD026: FFreeVar var_BC = "": var_AC = ""
  loc_9BD02F: FLdRfVar var_D8
  loc_9BD032: FLdPr Me
  loc_9BD035: MemLdPr RsFrm
  loc_9BD038:  = Me.AbsolutePosition
  loc_9BD03D: ILdRf var_D8
  loc_9BD040: FStR4 var_D4
  loc_9BD043: Call Requery()
  loc_9BD048: FLdRfVar var_D8
  loc_9BD04B: FLdPr Me
  loc_9BD04E: MemLdPr RsFrm
  loc_9BD051:  = Me.RecordCount
  loc_9BD056: ILdRf var_D8
  loc_9BD059: LitI4 0
  loc_9BD05E: GtI4
  loc_9BD05F: BranchF loc_9BD08B
  loc_9BD062: Call MoveFirst()
  loc_9BD067: ILdRf var_D4
  loc_9BD06A: LitI4 1
  loc_9BD06F: GtI4
  loc_9BD070: BranchF loc_9BD08B
  loc_9BD073: LitVar_Missing var_98
  loc_9BD076: PopAdLdVar
  loc_9BD077: ILdRf var_D4
  loc_9BD07A: LitI4 2
  loc_9BD07F: SubI4
  loc_9BD080: FLdPr Me
  loc_9BD083: MemLdPr RsFrm
  loc_9BD086: Me.Move from_stack_1, from_stack_2
  loc_9BD08B: ExitProcHresult
End Sub

Public Sub Encontrar(CodiUnga) '9AF150
  'Data Table: 40DD90
  loc_9AF0B8: On Error Resume Next
  loc_9AF0BD: FLdI2 CodiUnga
  loc_9AF0C0: LitI2_Byte 0
  loc_9AF0C2: EqI2
  loc_9AF0C3: FLdRfVar var_88
  loc_9AF0C6: FLdPr Me
  loc_9AF0C9: MemLdPr RsFrm
  loc_9AF0CC:  = Me.RecordCount
  loc_9AF0D1: ILdRf var_88
  loc_9AF0D4: LitI4 0
  loc_9AF0D9: GtI4
  loc_9AF0DA: AndI4
  loc_9AF0DB: BranchF loc_9AF11B
  loc_9AF0E0: FLdRfVar var_B0
  loc_9AF0E3: FLdRfVar var_A0
  loc_9AF0E6: LitVarStr var_9C, "CodiUnga"
  loc_9AF0EB: PopAdLdVar
  loc_9AF0EC: FLdRfVar var_8C
  loc_9AF0EF: FLdPr Me
  loc_9AF0F2: MemLdPr RsFrm
  loc_9AF0F5:  = Me.Fields
  loc_9AF0FA: FLdPr var_8C
  loc_9AF0FD: from_stack_2 = Me.Item(from_stack_1)
  loc_9AF102: FLdPr var_A0
  loc_9AF105:  = Me.Value
  loc_9AF10A: FLdRfVar var_B0
  loc_9AF10D: CI2Var
  loc_9AF10E: FStI2 CodiUnga
  loc_9AF111: FFreeAd var_8C = ""
  loc_9AF118: FFree1Var var_B0 = ""
  loc_9AF11F: Call Requery()
  loc_9AF126: LitStr "CodiUnga = '"
  loc_9AF129: FLdI2 CodiUnga
  loc_9AF12C: CStrUI1
  loc_9AF12E: FStStrNoPop var_B4
  loc_9AF131: ConcatStr
  loc_9AF132: FStStrNoPop var_B8
  loc_9AF135: LitStr "'"
  loc_9AF138: ConcatStr
  loc_9AF139: PopTmpLdAdStr
  loc_9AF13D: Call Find(from_stack_1v)
  loc_9AF142: FFreeStr var_B4 = "": var_B8 = ""
  loc_9AF14D: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '97343C
  'Data Table: 40DD90
  loc_973414: ILdRf sSelect
  loc_973417: FStStrCopy var_88
  loc_97341A: FLdPr Me
  loc_97341D: MemLdRfVar from_stack_1.RsFrm
  loc_973420: ILdRf var_88
  loc_973423: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_973428: LitVarStr var_98, "Primary"
  loc_97342D: PopAdLdVar
  loc_97342E: FLdPr Me
  loc_973431: LateIdCall
  loc_973439: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '9575D4
  'Data Table: 40DD90
  loc_9575BC: ILdRf sSelect
  loc_9575BF: FStStrCopy var_88
  loc_9575C2: FLdPr Me
  loc_9575C5: MemLdRfVar from_stack_1.global_56
  loc_9575C8: ILdRf var_88
  loc_9575CB: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_9575D0: ExitProcHresult
End Sub

Public Sub Requery() '967FD0
  'Data Table: 40DD90
  loc_967FB0: FLdPr Me
  loc_967FB3: MemLdRfVar from_stack_1.RsFrm
  loc_967FB6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_967FBB: LitVarStr var_94, "Primary"
  loc_967FC0: PopAdLdVar
  loc_967FC1: FLdPr Me
  loc_967FC4: LateIdCall
  loc_967FCC: ExitProcHresult
  loc_967FCD: MulR8
  loc_967FCE: EqI2
End Sub

Public Property Get DataSource() '9737D0
  'Data Table: 40DD90
  loc_9737AC: ZeroRetVal
  loc_9737AE: FLdRfVar var_8C
  loc_9737B1: FLdPr Me
  loc_9737B4: MemLdPr RsFrm
  loc_9737B7:  = Me.DataSource
  loc_9737BC: ILdRf var_8C
  loc_9737BF: CastAd
  loc_9737C2: FStAdFunc var_88
  loc_9737C5: FFree1Ad var_8C
  loc_9737C8: ExitProcCbHresult
End Sub

Private Function Proc_36_27_9732C8() '9732C8
  'Data Table: 40DD90
  loc_9732A4: LitStr "Primary"
  loc_9732A7: FLdPr Me
  loc_9732AA: LateIdLdVar var_94 DispID_4 0
  loc_9732B1: CastAdVar Me
  loc_9732B5: FStAdFunc var_98
  loc_9732B8: FLdPr var_98
  loc_9732C0: FFree1Ad var_98
  loc_9732C3: FFree1Var var_94 = ""
  loc_9732C6: ExitProcHresult
End Function

Private Function Proc_36_28_96A1DC(arg_C) '96A1DC
  'Data Table: 40DD90
  loc_96A1C0: ILdI4 arg_C
  loc_96A1C3: FStStrCopy var_88
  loc_96A1C6: ILdRf var_88
  loc_96A1C9: LitStr "Primary"
  loc_96A1CC: EqStr
  loc_96A1CE: BranchF loc_96A1DB
  loc_96A1D1: FLdPr Me
  loc_96A1D4: MemLdStr RsFrm
  loc_96A1D7: IStAd
  loc_96A1DB: ExitProcHresult
End Function
