VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clstipocuco"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40B6E8
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40B6F7
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40B706
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96D734
  'Data Table: 40B53C
  loc_96D70C: FLdRfVar var_88
  loc_96D70F: FLdPr Me
  loc_96D712: MemLdPr RsFrm
  loc_96D715:  = Me.RecordCount
  loc_96D71A: ILdRf var_88
  loc_96D71D: LitI4 0
  loc_96D722: GtI4
  loc_96D723: BranchF loc_96D731
  loc_96D726: FLdPr Me
  loc_96D729: MemLdPr RsFrm
  loc_96D72C: Me.MoveFirst
  loc_96D731: ExitProcHresult
  loc_96D732: ExitProcHresult
End Sub

Public Sub MoveLast() '96D57C
  'Data Table: 40B53C
  loc_96D554: FLdRfVar var_88
  loc_96D557: FLdPr Me
  loc_96D55A: MemLdPr RsFrm
  loc_96D55D:  = Me.RecordCount
  loc_96D562: ILdRf var_88
  loc_96D565: LitI4 0
  loc_96D56A: GtI4
  loc_96D56B: BranchF loc_96D579
  loc_96D56E: FLdPr Me
  loc_96D571: MemLdPr RsFrm
  loc_96D574: Me.MoveLast
  loc_96D579: ExitProcHresult
End Sub

Public Sub MoveNext() '99E708
  'Data Table: 40B53C
  loc_99E690: FLdRfVar var_86
  loc_99E693: FLdPr Me
  loc_99E696: MemLdPr RsFrm
  loc_99E699:  = Me.EOF
  loc_99E69E: FLdI2 var_86
  loc_99E6A1: NotI4
  loc_99E6A2: FLdRfVar var_8C
  loc_99E6A5: FLdPr Me
  loc_99E6A8: MemLdPr RsFrm
  loc_99E6AB:  = Me.RecordCount
  loc_99E6B0: ILdRf var_8C
  loc_99E6B3: LitI4 0
  loc_99E6B8: GtI4
  loc_99E6B9: AndI4
  loc_99E6BA: BranchF loc_99E6C8
  loc_99E6BD: FLdPr Me
  loc_99E6C0: MemLdPr RsFrm
  loc_99E6C3: Me.MoveNext
  loc_99E6C8: FLdRfVar var_86
  loc_99E6CB: FLdPr Me
  loc_99E6CE: MemLdPr RsFrm
  loc_99E6D1:  = Me.EOF
  loc_99E6D6: FLdI2 var_86
  loc_99E6D9: FLdRfVar var_8C
  loc_99E6DC: FLdPr Me
  loc_99E6DF: MemLdPr RsFrm
  loc_99E6E2:  = Me.RecordCount
  loc_99E6E7: ILdRf var_8C
  loc_99E6EA: LitI4 0
  loc_99E6EF: GtI4
  loc_99E6F0: AndI4
  loc_99E6F1: BranchF loc_99E704
  loc_99E6F4: ImpAdCallFPR4 Beep()
  loc_99E6F9: FLdPr Me
  loc_99E6FC: MemLdPr RsFrm
  loc_99E6FF: Me.MoveLast
  loc_99E704: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9417EC
  'Data Table: 40B53C
  loc_9417E0: FLdPr Me
  loc_9417E3: MemLdPr RsFrm
  loc_9417E6: Me.MoveNext
  loc_9417EB: ExitProcHresult
End Sub

Public Sub MovePrevious() '99E7B0
  'Data Table: 40B53C
  loc_99E738: FLdRfVar var_86
  loc_99E73B: FLdPr Me
  loc_99E73E: MemLdPr RsFrm
  loc_99E741:  = Me.BOF
  loc_99E746: FLdI2 var_86
  loc_99E749: NotI4
  loc_99E74A: FLdRfVar var_8C
  loc_99E74D: FLdPr Me
  loc_99E750: MemLdPr RsFrm
  loc_99E753:  = Me.RecordCount
  loc_99E758: ILdRf var_8C
  loc_99E75B: LitI4 0
  loc_99E760: GtI4
  loc_99E761: AndI4
  loc_99E762: BranchF loc_99E770
  loc_99E765: FLdPr Me
  loc_99E768: MemLdPr RsFrm
  loc_99E76B: Me.MovePrevious
  loc_99E770: FLdRfVar var_86
  loc_99E773: FLdPr Me
  loc_99E776: MemLdPr RsFrm
  loc_99E779:  = Me.BOF
  loc_99E77E: FLdI2 var_86
  loc_99E781: FLdRfVar var_8C
  loc_99E784: FLdPr Me
  loc_99E787: MemLdPr RsFrm
  loc_99E78A:  = Me.RecordCount
  loc_99E78F: ILdRf var_8C
  loc_99E792: LitI4 0
  loc_99E797: GtI4
  loc_99E798: AndI4
  loc_99E799: BranchF loc_99E7AC
  loc_99E79C: ImpAdCallFPR4 Beep()
  loc_99E7A1: FLdPr Me
  loc_99E7A4: MemLdPr RsFrm
  loc_99E7A7: Me.MoveFirst
  loc_99E7AC: ExitProcHresult
  loc_99E7AD: FStI2 MeFF
End Sub

Public Property Get EOF() '957D44
  'Data Table: 40B53C
  loc_957D28: FLdRfVar var_88
  loc_957D2B: FLdPr Me
  loc_957D2E: MemLdPr RsFrm
  loc_957D31:  = Me.EOF
  loc_957D36: FLdI2 var_88
  loc_957D39: FStI2 var_86
  loc_957D3C: ExitProcCbHresult
  loc_957D42: FLdPr var_3C00
End Sub

Public Property Get BOF() '957CF8
  'Data Table: 40B53C
  loc_957CDC: FLdRfVar var_88
  loc_957CDF: FLdPr Me
  loc_957CE2: MemLdPr RsFrm
  loc_957CE5:  = Me.BOF
  loc_957CEA: FLdI2 var_88
  loc_957CED: FStI2 var_86
  loc_957CF0: ExitProcCbHresult
  loc_957CF6: FLdPr var_3BF8
End Sub

Public Sub Sort(sOrden) '944444
  'Data Table: 40B53C
  loc_944434: ILdI4 sOrden
  loc_944437: FLdPr Me
  loc_94443A: MemLdPr RsFrm
  loc_94443D: Me.Sort = from_stack_1
  loc_944442: ExitProcHresult
End Sub

Public Sub Find(sFind) '969EC0
  'Data Table: 40B53C
  loc_969EA0: LitVar_Missing var_94
  loc_969EA3: PopAdLdVar
  loc_969EA4: LitI4 1
  loc_969EA9: LitI4 0
  loc_969EAE: ILdI4 sFind
  loc_969EB1: FLdPr Me
  loc_969EB4: MemLdPr RsFrm
  loc_969EB7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_969EBC: ExitProcHresult
  loc_969EBD: ImpAdLdFPR4 MemVar_40DA75
End Sub

Public Sub Filter(sCriterio) '948924
  'Data Table: 40B53C
  loc_948910: ILdI4 sCriterio
  loc_948913: CVarStr var_94
  loc_948916: PopAdLdVar
  loc_948917: FLdPr Me
  loc_94891A: MemLdPr RsFrm
  loc_94891D: Me.Filter = from_stack_1
  loc_948922: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '961200
  'Data Table: 40B53C
  loc_9611E4: FLdRfVar var_8C
  loc_9611E7: FLdPr Me
  loc_9611EA: MemLdPr RsFrm
  loc_9611ED:  = Me.AbsolutePosition
  loc_9611F2: ILdRf var_8C
  loc_9611F5: FStR4 var_88
  loc_9611F8: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '961168
  'Data Table: 40B53C
  loc_96114C: FLdRfVar var_8C
  loc_96114F: FLdPr Me
  loc_961152: MemLdPr RsFrm
  loc_961155:  = Me.RecordCount
  loc_96115A: ILdRf var_8C
  loc_96115D: FStR4 var_88
  loc_961160: ExitProcCbHresult
  loc_961166: ILdRf var_3B01
End Sub

Public Sub AddNew(CodiTicu, DetaTicu) '9B277C
  'Data Table: 40B53C
  loc_9B26E8: ILdRf DetaTicu
  loc_9B26EB: FStStrCopy var_88
  loc_9B26EE: FLdRfVar var_94
  loc_9B26F1: FLdI2 CodiTicu
  loc_9B26F4: CStrUI1
  loc_9B26F6: FStStrNoPop var_90
  loc_9B26F9: Call Proc_34_25_9930F8()
  loc_9B26FE: FLdZeroAd var_94
  loc_9B2701: FStStr var_8C
  loc_9B2704: FFree1Str var_90
  loc_9B2707: ILdRf var_8C
  loc_9B270A: LitStr vbNullString
  loc_9B270D: NeStr
  loc_9B270F: BranchF loc_9B2722
  loc_9B2712: LitI4 0
  loc_9B2717: ILdRf var_8C
  loc_9B271A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9B271F: Branch loc_9B277A
  loc_9B2722: LitStr "INSERT INTO tipocuco VALUES ('"
  loc_9B2725: FLdI2 CodiTicu
  loc_9B2728: CStrUI1
  loc_9B272A: FStStrNoPop var_90
  loc_9B272D: ConcatStr
  loc_9B272E: FStStrNoPop var_94
  loc_9B2731: LitStr "','"
  loc_9B2734: ConcatStr
  loc_9B2735: FStStrNoPop var_98
  loc_9B2738: ILdRf var_88
  loc_9B273B: ConcatStr
  loc_9B273C: FStStrNoPop var_9C
  loc_9B273F: LitStr "',0,'"
  loc_9B2742: ConcatStr
  loc_9B2743: FStStrNoPop var_A0
  loc_9B2746: ImpAdLdI4 MemVar_C3D03C
  loc_9B2749: ConcatStr
  loc_9B274A: FStStrNoPop var_A4
  loc_9B274D: LitStr "')"
  loc_9B2750: ConcatStr
  loc_9B2751: FStStrNoPop var_A8
  loc_9B2754: Call EjecutarRsCls(from_stack_1v)
  loc_9B2759: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9B276A: FLdI2 CodiTicu
  loc_9B276D: CStrUI1
  loc_9B276F: FStStrNoPop var_90
  loc_9B2772: Call Encontrar(from_stack_1v)
  loc_9B2777: FFree1Str var_90
  loc_9B277A: ExitProcHresult
  loc_9B277B: PopAdLdVar
End Sub

Public Sub Modificar(CodiTicu, DetaTicu) '99E838
  'Data Table: 40B53C
  loc_99E7E0: ILdRf CodiTicu
  loc_99E7E3: FStStrCopy var_88
  loc_99E7E6: ILdRf DetaTicu
  loc_99E7E9: FStStrCopy var_8C
  loc_99E7EC: LitStr "UPDATE tipocuco SET DetaTicu='"
  loc_99E7EF: ILdRf var_8C
  loc_99E7F2: ConcatStr
  loc_99E7F3: FStStrNoPop var_90
  loc_99E7F6: LitStr "',CodiUsua='"
  loc_99E7F9: ConcatStr
  loc_99E7FA: FStStrNoPop var_94
  loc_99E7FD: ImpAdLdI4 MemVar_C3D03C
  loc_99E800: ConcatStr
  loc_99E801: FStStrNoPop var_98
  loc_99E804: LitStr "' WHERE CodiTicu='"
  loc_99E807: ConcatStr
  loc_99E808: FStStrNoPop var_9C
  loc_99E80B: ILdRf var_88
  loc_99E80E: ConcatStr
  loc_99E80F: FStStrNoPop var_A0
  loc_99E812: LitStr "'"
  loc_99E815: ConcatStr
  loc_99E816: FStStrNoPop var_A4
  loc_99E819: Call EjecutarRsCls(from_stack_1v)
  loc_99E81E: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_99E82D: ILdRf var_88
  loc_99E830: Call Encontrar(from_stack_1v)
  loc_99E835: ExitProcHresult
End Sub

Public Sub Eliminar(CodiTicu) '9A4CF8
  'Data Table: 40B53C
  loc_9A4C78: ILdRf CodiTicu
  loc_9A4C7B: FStStrCopy var_88
  loc_9A4C7E: LitStr "DELETE FROM tipocuco WHERE CodiTicu='"
  loc_9A4C81: ILdRf var_88
  loc_9A4C84: ConcatStr
  loc_9A4C85: FStStrNoPop var_8C
  loc_9A4C88: LitStr "'"
  loc_9A4C8B: ConcatStr
  loc_9A4C8C: FStStrNoPop var_90
  loc_9A4C8F: Call EjecutarRsCls(from_stack_1v)
  loc_9A4C94: FFreeStr var_8C = ""
  loc_9A4C9B: FLdRfVar var_98
  loc_9A4C9E: FLdPr Me
  loc_9A4CA1: MemLdPr RsFrm
  loc_9A4CA4:  = Me.AbsolutePosition
  loc_9A4CA9: ILdRf var_98
  loc_9A4CAC: FStR4 var_94
  loc_9A4CAF: Call Requery()
  loc_9A4CB4: FLdRfVar var_98
  loc_9A4CB7: FLdPr Me
  loc_9A4CBA: MemLdPr RsFrm
  loc_9A4CBD:  = Me.RecordCount
  loc_9A4CC2: ILdRf var_98
  loc_9A4CC5: LitI4 0
  loc_9A4CCA: GtI4
  loc_9A4CCB: BranchF loc_9A4CF7
  loc_9A4CCE: Call MoveFirst()
  loc_9A4CD3: ILdRf var_94
  loc_9A4CD6: LitI4 1
  loc_9A4CDB: GtI4
  loc_9A4CDC: BranchF loc_9A4CF7
  loc_9A4CDF: LitVar_Missing var_A8
  loc_9A4CE2: PopAdLdVar
  loc_9A4CE3: ILdRf var_94
  loc_9A4CE6: LitI4 2
  loc_9A4CEB: SubI4
  loc_9A4CEC: FLdPr Me
  loc_9A4CEF: MemLdPr RsFrm
  loc_9A4CF2: Me.Move from_stack_1, from_stack_2
  loc_9A4CF7: ExitProcHresult
End Sub

Public Sub Encontrar(CodiTicu) '97C9D0
  'Data Table: 40B53C
  loc_97C9A4: ILdRf CodiTicu
  loc_97C9A7: FStStrCopy var_88
  loc_97C9AA: Call Requery()
  loc_97C9AF: LitStr "CodiTicu = '"
  loc_97C9B2: ILdRf var_88
  loc_97C9B5: ConcatStr
  loc_97C9B6: FStStrNoPop var_8C
  loc_97C9B9: LitStr "'"
  loc_97C9BC: ConcatStr
  loc_97C9BD: PopTmpLdAdStr
  loc_97C9C1: Call Find(from_stack_1v)
  loc_97C9C6: FFreeStr var_8C = ""
  loc_97C9CD: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '973550
  'Data Table: 40B53C
  loc_973528: ILdRf sSelect
  loc_97352B: FStStrCopy var_88
  loc_97352E: FLdPr Me
  loc_973531: MemLdRfVar from_stack_1.RsFrm
  loc_973534: ILdRf var_88
  loc_973537: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_97353C: LitVarStr var_98, "Primary"
  loc_973541: PopAdLdVar
  loc_973542: FLdPr Me
  loc_973545: LateIdCall
  loc_97354D: ExitProcHresult
  loc_97354E: FLdPr var_3BF8
End Sub

Public Sub EjecutarRsCls(sSelect) '961034
  'Data Table: 40B53C
  loc_96101C: ILdRf sSelect
  loc_96101F: FStStrCopy var_88
  loc_961022: FLdPr Me
  loc_961025: MemLdRfVar from_stack_1.global_56
  loc_961028: ILdRf var_88
  loc_96102B: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_961030: ExitProcHresult
  loc_961031: FFree1Str var_AC
End Sub

Public Sub Requery() '969F10
  'Data Table: 40B53C
  loc_969EF0: FLdPr Me
  loc_969EF3: MemLdRfVar from_stack_1.RsFrm
  loc_969EF6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_969EFB: LitVarStr var_94, "Primary"
  loc_969F00: PopAdLdVar
  loc_969F01: FLdPr Me
  loc_969F04: LateIdCall
  loc_969F0C: ExitProcHresult
  loc_969F0F: CStr2Ansi
End Sub

Public Property Get DataSource() '974630
  'Data Table: 40B53C
  loc_97460C: ZeroRetVal
  loc_97460E: FLdRfVar var_8C
  loc_974611: FLdPr Me
  loc_974614: MemLdPr RsFrm
  loc_974617:  = Me.DataSource
  loc_97461C: ILdRf var_8C
  loc_97461F: CastAd
  loc_974622: FStAdFunc var_88
  loc_974625: FFree1Ad var_8C
  loc_974628: ExitProcCbHresult
End Sub

Public Function ValidaModificar() '9A973C
  'Data Table: 40B53C
  loc_9A96B8: ZeroRetVal
  loc_9A96BA: LitVarStr var_C0, "SELECT * FROM tipocuco WHERE CodiTicu = "
  loc_9A96BF: FLdRfVar var_B0
  loc_9A96C2: FLdRfVar var_A0
  loc_9A96C5: LitVarStr var_9C, "CodiTicu"
  loc_9A96CA: PopAdLdVar
  loc_9A96CB: FLdRfVar var_8C
  loc_9A96CE: FLdPr Me
  loc_9A96D1: MemLdPr RsFrm
  loc_9A96D4:  = Me.Fields
  loc_9A96D9: FLdPr var_8C
  loc_9A96DC: from_stack_2 = Me.Item(from_stack_1)
  loc_9A96E1: FLdPr var_A0
  loc_9A96E4:  = Me.Value
  loc_9A96E9: FLdRfVar var_B0
  loc_9A96EC: ConcatVar var_D0
  loc_9A96F0: LitVarStr var_E0, " AND FijoTicu = 1"
  loc_9A96F5: ConcatVar var_F0
  loc_9A96F9: CStrVarVal var_F4
  loc_9A96FD: Call EjecutarRsCls(from_stack_1v)
  loc_9A9702: FFree1Str var_F4
  loc_9A9705: FFreeAd var_8C = ""
  loc_9A970C: FFreeVar var_B0 = "": var_D0 = ""
  loc_9A9715: FLdRfVar var_F8
  loc_9A9718: FLdPr Me
  loc_9A971B: MemLdPr global_56
  loc_9A971E:  = Me.RecordCount
  loc_9A9723: ILdRf var_F8
  loc_9A9726: LitI4 0
  loc_9A972B: GtI4
  loc_9A972C: BranchF loc_9A9735
  loc_9A972F: LitStr "El Tipo de Cuenta Contable es Fijo. Verifique..."
  loc_9A9732: FStStrCopy var_88
  loc_9A9735: ExitProcCbHresult
End Function

Public Function ValidaEliminar() '9DF750
  'Data Table: 40B53C
  loc_9DF650: ZeroRetVal
  loc_9DF652: LitVarStr var_C0, "SELECT * FROM tipocuco WHERE CodiTicu = "
  loc_9DF657: FLdRfVar var_B0
  loc_9DF65A: FLdRfVar var_A0
  loc_9DF65D: LitVarStr var_9C, "CodiTicu"
  loc_9DF662: PopAdLdVar
  loc_9DF663: FLdRfVar var_8C
  loc_9DF666: FLdPr Me
  loc_9DF669: MemLdPr RsFrm
  loc_9DF66C:  = Me.Fields
  loc_9DF671: FLdPr var_8C
  loc_9DF674: from_stack_2 = Me.Item(from_stack_1)
  loc_9DF679: FLdPr var_A0
  loc_9DF67C:  = Me.Value
  loc_9DF681: FLdRfVar var_B0
  loc_9DF684: ConcatVar var_D0
  loc_9DF688: LitVarStr var_E0, " AND FijoTicu = 1"
  loc_9DF68D: ConcatVar var_F0
  loc_9DF691: CStrVarVal var_F4
  loc_9DF695: Call EjecutarRsCls(from_stack_1v)
  loc_9DF69A: FFree1Str var_F4
  loc_9DF69D: FFreeAd var_8C = ""
  loc_9DF6A4: FFreeVar var_B0 = "": var_D0 = ""
  loc_9DF6AD: FLdRfVar var_F8
  loc_9DF6B0: FLdPr Me
  loc_9DF6B3: MemLdPr global_56
  loc_9DF6B6:  = Me.RecordCount
  loc_9DF6BB: ILdRf var_F8
  loc_9DF6BE: LitI4 0
  loc_9DF6C3: GtI4
  loc_9DF6C4: BranchF loc_9DF6D3
  loc_9DF6C7: LitStr "El Tipo de Cuenta Contable es Fijo. Verifique..."
  loc_9DF6CA: FStStrCopy var_88
  loc_9DF6CD: ExitProcCbHresult
  loc_9DF6D3: LitVarStr var_C0, "SELECT * FROM infogov.cuentacontable WHERE CodiTicu = "
  loc_9DF6D8: FLdRfVar var_B0
  loc_9DF6DB: FLdRfVar var_A0
  loc_9DF6DE: LitVarStr var_9C, "CodiTicu"
  loc_9DF6E3: PopAdLdVar
  loc_9DF6E4: FLdRfVar var_8C
  loc_9DF6E7: FLdPr Me
  loc_9DF6EA: MemLdPr RsFrm
  loc_9DF6ED:  = Me.Fields
  loc_9DF6F2: FLdPr var_8C
  loc_9DF6F5: from_stack_2 = Me.Item(from_stack_1)
  loc_9DF6FA: FLdPr var_A0
  loc_9DF6FD:  = Me.Value
  loc_9DF702: FLdRfVar var_B0
  loc_9DF705: ConcatVar var_D0
  loc_9DF709: CStrVarVal var_F4
  loc_9DF70D: Call EjecutarRsCls(from_stack_1v)
  loc_9DF712: FFree1Str var_F4
  loc_9DF715: FFreeAd var_8C = ""
  loc_9DF71C: FFreeVar var_B0 = ""
  loc_9DF723: FLdRfVar var_F8
  loc_9DF726: FLdPr Me
  loc_9DF729: MemLdPr global_56
  loc_9DF72C:  = Me.RecordCount
  loc_9DF731: ILdRf var_F8
  loc_9DF734: LitI4 0
  loc_9DF739: GtI4
  loc_9DF73A: BranchF loc_9DF749
  loc_9DF73D: LitStr "El Tipo de Cuenta Contable está incluido en una Cuenta. Verifique..."
  loc_9DF740: FStStrCopy var_88
  loc_9DF743: ExitProcCbHresult
  loc_9DF749: ExitProcCbHresult
End Function

Private Function Proc_34_25_9930F8(arg_C) '9930F8
  'Data Table: 40B53C
  loc_9930AC: ILdRf arg_C
  loc_9930AF: FStStrCopy var_8C
  loc_9930B2: ZeroRetVal
  loc_9930B4: LitStr "SELECT CodiTicu FROM tipocuco WHERE CodiTicu = '"
  loc_9930B7: ILdRf var_8C
  loc_9930BA: ConcatStr
  loc_9930BB: FStStrNoPop var_90
  loc_9930BE: LitStr "'"
  loc_9930C1: ConcatStr
  loc_9930C2: FStStrNoPop var_94
  loc_9930C5: Call EjecutarRsCls(from_stack_1v)
  loc_9930CA: FFreeStr var_90 = ""
  loc_9930D1: FLdRfVar var_98
  loc_9930D4: FLdPr Me
  loc_9930D7: MemLdPr global_56
  loc_9930DA:  = Me.RecordCount
  loc_9930DF: ILdRf var_98
  loc_9930E2: LitI4 0
  loc_9930E7: GtI4
  loc_9930E8: BranchF loc_9930F1
  loc_9930EB: LitStr "El Tipo de Cuenta Contable YA EXISTE. Reintente..."
  loc_9930EE: FStStrCopy var_88
  loc_9930F1: ExitProcCbHresult
End Function

Private Function Proc_34_26_9734F0() '9734F0
  'Data Table: 40B53C
  loc_9734CC: LitStr "Primary"
  loc_9734CF: FLdPr Me
  loc_9734D2: LateIdLdVar var_94 DispID_4 0
  loc_9734D9: CastAdVar Me
  loc_9734DD: FStAdFunc var_98
  loc_9734E0: FLdPr var_98
  loc_9734E8: FFree1Ad var_98
  loc_9734EB: FFree1Var var_94 = ""
  loc_9734EE: ExitProcHresult
End Function

Private Function Proc_34_27_969F5C(arg_C) '969F5C
  'Data Table: 40B53C
  loc_969F40: ILdI4 arg_C
  loc_969F43: FStStrCopy var_88
  loc_969F46: ILdRf var_88
  loc_969F49: LitStr "Primary"
  loc_969F4C: EqStr
  loc_969F4E: BranchF loc_969F5B
  loc_969F51: FLdPr Me
  loc_969F54: MemLdStr RsFrm
  loc_969F57: IStAd
  loc_969F5B: ExitProcHresult
End Function
