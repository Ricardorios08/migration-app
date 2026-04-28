VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsmovibanco"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '417698
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4176A7
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4176B6
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96D474
  'Data Table: 4173B8
  loc_96D44C: FLdRfVar var_88
  loc_96D44F: FLdPr Me
  loc_96D452: MemLdPr RsFrm
  loc_96D455:  = Me.RecordCount
  loc_96D45A: ILdRf var_88
  loc_96D45D: LitI4 0
  loc_96D462: GtI4
  loc_96D463: BranchF loc_96D471
  loc_96D466: FLdPr Me
  loc_96D469: MemLdPr RsFrm
  loc_96D46C: Me.MoveFirst
  loc_96D471: ExitProcHresult
End Sub

Public Sub MoveLast() '96D2BC
  'Data Table: 4173B8
  loc_96D294: FLdRfVar var_88
  loc_96D297: FLdPr Me
  loc_96D29A: MemLdPr RsFrm
  loc_96D29D:  = Me.RecordCount
  loc_96D2A2: ILdRf var_88
  loc_96D2A5: LitI4 0
  loc_96D2AA: GtI4
  loc_96D2AB: BranchF loc_96D2B9
  loc_96D2AE: FLdPr Me
  loc_96D2B1: MemLdPr RsFrm
  loc_96D2B4: Me.MoveLast
  loc_96D2B9: ExitProcHresult
End Sub

Public Sub MoveNext() '99C440
  'Data Table: 4173B8
  loc_99C3C8: FLdRfVar var_86
  loc_99C3CB: FLdPr Me
  loc_99C3CE: MemLdPr RsFrm
  loc_99C3D1:  = Me.EOF
  loc_99C3D6: FLdI2 var_86
  loc_99C3D9: NotI4
  loc_99C3DA: FLdRfVar var_8C
  loc_99C3DD: FLdPr Me
  loc_99C3E0: MemLdPr RsFrm
  loc_99C3E3:  = Me.RecordCount
  loc_99C3E8: ILdRf var_8C
  loc_99C3EB: LitI4 0
  loc_99C3F0: GtI4
  loc_99C3F1: AndI4
  loc_99C3F2: BranchF loc_99C400
  loc_99C3F5: FLdPr Me
  loc_99C3F8: MemLdPr RsFrm
  loc_99C3FB: Me.MoveNext
  loc_99C400: FLdRfVar var_86
  loc_99C403: FLdPr Me
  loc_99C406: MemLdPr RsFrm
  loc_99C409:  = Me.EOF
  loc_99C40E: FLdI2 var_86
  loc_99C411: FLdRfVar var_8C
  loc_99C414: FLdPr Me
  loc_99C417: MemLdPr RsFrm
  loc_99C41A:  = Me.RecordCount
  loc_99C41F: ILdRf var_8C
  loc_99C422: LitI4 0
  loc_99C427: GtI4
  loc_99C428: AndI4
  loc_99C429: BranchF loc_99C43C
  loc_99C42C: ImpAdCallFPR4 Beep()
  loc_99C431: FLdPr Me
  loc_99C434: MemLdPr RsFrm
  loc_99C437: Me.MoveLast
  loc_99C43C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9420D4
  'Data Table: 4173B8
  loc_9420C8: FLdPr Me
  loc_9420CB: MemLdPr RsFrm
  loc_9420CE: Me.MoveNext
  loc_9420D3: ExitProcHresult
End Sub

Public Sub Move(iValor) '948638
  'Data Table: 4173B8
  loc_948624: LitVar_Missing var_94
  loc_948627: PopAdLdVar
  loc_948628: ILdI2 iValor
  loc_94862B: CI4UI1
  loc_94862C: FLdPr Me
  loc_94862F: MemLdPr RsFrm
  loc_948632: Me.Move from_stack_1, from_stack_2
  loc_948637: ExitProcHresult
End Sub

Public Sub MovePrevious() '99C590
  'Data Table: 4173B8
  loc_99C518: FLdRfVar var_86
  loc_99C51B: FLdPr Me
  loc_99C51E: MemLdPr RsFrm
  loc_99C521:  = Me.BOF
  loc_99C526: FLdI2 var_86
  loc_99C529: NotI4
  loc_99C52A: FLdRfVar var_8C
  loc_99C52D: FLdPr Me
  loc_99C530: MemLdPr RsFrm
  loc_99C533:  = Me.RecordCount
  loc_99C538: ILdRf var_8C
  loc_99C53B: LitI4 0
  loc_99C540: GtI4
  loc_99C541: AndI4
  loc_99C542: BranchF loc_99C550
  loc_99C545: FLdPr Me
  loc_99C548: MemLdPr RsFrm
  loc_99C54B: Me.MovePrevious
  loc_99C550: FLdRfVar var_86
  loc_99C553: FLdPr Me
  loc_99C556: MemLdPr RsFrm
  loc_99C559:  = Me.BOF
  loc_99C55E: FLdI2 var_86
  loc_99C561: FLdRfVar var_8C
  loc_99C564: FLdPr Me
  loc_99C567: MemLdPr RsFrm
  loc_99C56A:  = Me.RecordCount
  loc_99C56F: ILdRf var_8C
  loc_99C572: LitI4 0
  loc_99C577: GtI4
  loc_99C578: AndI4
  loc_99C579: BranchF loc_99C58C
  loc_99C57C: ImpAdCallFPR4 Beep()
  loc_99C581: FLdPr Me
  loc_99C584: MemLdPr RsFrm
  loc_99C587: Me.MoveFirst
  loc_99C58C: ExitProcHresult
End Sub

Public Property Get EOF() '95C5B4
  'Data Table: 4173B8
  loc_95C598: FLdRfVar var_88
  loc_95C59B: FLdPr Me
  loc_95C59E: MemLdPr RsFrm
  loc_95C5A1:  = Me.EOF
  loc_95C5A6: FLdI2 var_88
  loc_95C5A9: FStI2 var_86
  loc_95C5AC: ExitProcCbHresult
End Sub

Public Property Get BOF() '95C568
  'Data Table: 4173B8
  loc_95C54C: FLdRfVar var_88
  loc_95C54F: FLdPr Me
  loc_95C552: MemLdPr RsFrm
  loc_95C555:  = Me.BOF
  loc_95C55A: FLdI2 var_88
  loc_95C55D: FStI2 var_86
  loc_95C560: ExitProcCbHresult
  loc_95C566: FStVarCopyObj BOF000
End Sub

Public Sub Sort(sOrden) '95C51C
  'Data Table: 4173B8
  loc_95C504: On Error Resume Next
  loc_95C509: ILdI4 sOrden
  loc_95C50C: FLdPr Me
  loc_95C50F: MemLdPr RsFrm
  loc_95C512: Me.Sort = from_stack_1
  loc_95C519: ExitProcHresult
  loc_95C51A: ImpAdLdI2 MemVar_0
End Sub

Public Sub Find(sFind) '968A20
  'Data Table: 4173B8
  loc_968A00: LitVar_Missing var_94
  loc_968A03: PopAdLdVar
  loc_968A04: LitI4 1
  loc_968A09: LitI4 0
  loc_968A0E: ILdI4 sFind
  loc_968A11: FLdPr Me
  loc_968A14: MemLdPr RsFrm
  loc_968A17: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_968A1C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '95C484
  'Data Table: 4173B8
  loc_95C468: OnErrorGoto loc_95C481
  loc_95C46B: ILdI4 sCriterio
  loc_95C46E: CVarStr var_94
  loc_95C471: PopAdLdVar
  loc_95C472: FLdPr Me
  loc_95C475: MemLdPr RsFrm
  loc_95C478: Me.Filter = from_stack_1
  loc_95C47D: On Error GoTo 0
  loc_95C480: ExitProcHresult
  loc_95C481: ExitProcHresult
  loc_95C482: CVarI2 Filter000
End Sub

Public Property Get AbsolutePosition() '95C3EC
  'Data Table: 4173B8
  loc_95C3D0: FLdRfVar var_8C
  loc_95C3D3: FLdPr Me
  loc_95C3D6: MemLdPr RsFrm
  loc_95C3D9:  = Me.AbsolutePosition
  loc_95C3DE: ILdRf var_8C
  loc_95C3E1: FStR4 var_88
  loc_95C3E4: ExitProcCbHresult
  loc_95C3EA: AryLock
End Sub

Public Property Get RecordCount() '95C354
  'Data Table: 4173B8
  loc_95C338: FLdRfVar var_8C
  loc_95C33B: FLdPr Me
  loc_95C33E: MemLdPr RsFrm
  loc_95C341:  = Me.RecordCount
  loc_95C346: ILdRf var_8C
  loc_95C349: FStR4 var_88
  loc_95C34C: ExitProcCbHresult
  loc_95C352: LitVar_TRUE RecordCount000
End Sub

Public Sub AddNew(PeriInfo, CodiBanc, CodiTimb, NumeMoba, FechMoba, FeinMoba, FecoMoba, ImpoMoba, ComiMoba, IvaMoba, CodiEnre, CodiCuco, DetaMoba, NumeOrpa) 'AF4118
  'Data Table: 4173B8
  loc_AF3AA8: ILdRf FechMoba
  loc_AF3AAB: FStStrCopy var_88
  loc_AF3AAE: ILdRf FeinMoba
  loc_AF3AB1: FStStrCopy var_8C
  loc_AF3AB4: ILdRf FecoMoba
  loc_AF3AB7: FStStrCopy var_90
  loc_AF3ABA: ILdRf AddNew4
  loc_AF3ABD: FStStrCopy var_94
  loc_AF3AC0: ILdRf AddNew8
  loc_AF3AC3: FStStrCopy var_98
  loc_AF3AC6: FLdRfVar var_9C
  loc_AF3AC9: ILdRf var_88
  loc_AF3ACC: ILdRf NumeMoba
  loc_AF3ACF: FLdI2 CodiTimb
  loc_AF3AD2: CUI1I2
  loc_AF3AD4: ILdRf CodiBanc
  loc_AF3AD7: FLdI2 PeriInfo
  loc_AF3ADA: from_stack_6v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_AF3ADF: ILdRf var_9C
  loc_AF3AE2: LitStr vbNullString
  loc_AF3AE5: NeStr
  loc_AF3AE7: FFree1Str var_9C
  loc_AF3AEA: BranchF loc_AF3AFD
  loc_AF3AED: LitI4 0
  loc_AF3AF2: LitStr "El Movimiento de Banco YA EXISTE. Verifique..."
  loc_AF3AF5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF3AFA: Branch loc_AF4116
  loc_AF3AFD: LitStr "SELECT * FROM tipomovibanco WHERE CodiTimb = "
  loc_AF3B00: FLdI2 CodiTimb
  loc_AF3B03: CStrUI1
  loc_AF3B05: FStStrNoPop var_9C
  loc_AF3B08: ConcatStr
  loc_AF3B09: FStStrNoPop var_A0
  loc_AF3B0C: LitStr ";"
  loc_AF3B0F: ConcatStr
  loc_AF3B10: FStStrNoPop var_A4
  loc_AF3B13: Call EjecutarRsCls(from_stack_1v)
  loc_AF3B18: FFreeStr var_9C = "": var_A0 = ""
  loc_AF3B21: FLdRfVar var_A8
  loc_AF3B24: FLdPr Me
  loc_AF3B27: MemLdPr global_56
  loc_AF3B2A:  = Me.RecordCount
  loc_AF3B2F: ILdRf var_A8
  loc_AF3B32: LitI4 0
  loc_AF3B37: GtI4
  loc_AF3B38: BranchF loc_AF4100
  loc_AF3B3B: FLdRfVar var_D0
  loc_AF3B3E: FLdRfVar var_C0
  loc_AF3B41: LitVarStr var_BC, "DeCreTimb"
  loc_AF3B46: PopAdLdVar
  loc_AF3B47: FLdRfVar var_AC
  loc_AF3B4A: FLdPr Me
  loc_AF3B4D: MemLdPr global_56
  loc_AF3B50:  = Me.Fields
  loc_AF3B55: FLdPr var_AC
  loc_AF3B58: from_stack_2 = Me.Item(from_stack_1)
  loc_AF3B5D: FLdPr var_C0
  loc_AF3B60:  = Me.Value
  loc_AF3B65: FLdRfVar var_D0
  loc_AF3B68: LitVarStr var_E0, "0"
  loc_AF3B6D: HardType
  loc_AF3B6E: EqVarBool
  loc_AF3B70: FFreeAd var_AC = ""
  loc_AF3B77: FFree1Var var_D0 = ""
  loc_AF3B7A: BranchF loc_AF3E1F
  loc_AF3B7D: FLdRfVar var_8C
  loc_AF3B80: CVarRef
  loc_AF3B85: ImpAdCallI2 IsDate()
  loc_AF3B8A: FStI2 var_4BE
  loc_AF3B8D: LitI4 1
  loc_AF3B92: LitI4 1
  loc_AF3B97: LitVarStr var_15C, "'yyyy-mm-dd'"
  loc_AF3B9C: FStVarCopyObj var_F0
  loc_AF3B9F: FLdRfVar var_F0
  loc_AF3BA2: FLdRfVar var_8C
  loc_AF3BA5: CVarRef
  loc_AF3BAA: ImpAdCallI2 Format$(, )
  loc_AF3BAF: FStStr var_4C4
  loc_AF3BB2: FLdRfVar var_90
  loc_AF3BB5: CVarRef
  loc_AF3BBA: ImpAdCallI2 IsDate()
  loc_AF3BBF: FStI2 var_4C6
  loc_AF3BC2: LitI4 1
  loc_AF3BC7: LitI4 1
  loc_AF3BCC: LitVarStr var_21C, "'yyyy-mm-dd'"
  loc_AF3BD1: FStVarCopyObj var_22C
  loc_AF3BD4: FLdRfVar var_22C
  loc_AF3BD7: FLdRfVar var_90
  loc_AF3BDA: CVarRef
  loc_AF3BDF: ImpAdCallI2 Format$(, )
  loc_AF3BE4: FStStr var_4CC
  loc_AF3BE7: LitStr "INSERT INTO movibanco (PeriInfo,IdMoba,CodiBanc,CodiTimb,NumeMoba,FechMoba,FeinMoba,FecoMoba,DebeMoba,HabeMoba,ComiMoba,IvaMoba,CodiEnre,CodiCuco,DetaMoba,NumeOrpa,AltaUsua)"
  loc_AF3BEA: LitStr " VALUES ("
  loc_AF3BED: ConcatStr
  loc_AF3BEE: FStStrNoPop var_9C
  loc_AF3BF1: FLdI2 PeriInfo
  loc_AF3BF4: CStrUI1
  loc_AF3BF6: FStStrNoPop var_A0
  loc_AF3BF9: ConcatStr
  loc_AF3BFA: FStStrNoPop var_A4
  loc_AF3BFD: LitStr ",(SELECT Max(IdMoba)+1 FROM movibanco mb2 WHERE mb2.PeriInfo = "
  loc_AF3C00: ConcatStr
  loc_AF3C01: FStStrNoPop var_F4
  loc_AF3C04: ImpAdLdI2 MemVar_C3D064
  loc_AF3C07: CStrUI1
  loc_AF3C09: FStStrNoPop var_F8
  loc_AF3C0C: ConcatStr
  loc_AF3C0D: FStStrNoPop var_FC
  loc_AF3C10: LitStr "),"
  loc_AF3C13: ConcatStr
  loc_AF3C14: FStStrNoPop var_100
  loc_AF3C17: ILdRf CodiBanc
  loc_AF3C1A: CStrI4
  loc_AF3C1C: FStStrNoPop var_104
  loc_AF3C1F: ConcatStr
  loc_AF3C20: FStStrNoPop var_108
  loc_AF3C23: LitStr ","
  loc_AF3C26: ConcatStr
  loc_AF3C27: FStStrNoPop var_10C
  loc_AF3C2A: FLdI2 CodiTimb
  loc_AF3C2D: CStrUI1
  loc_AF3C2F: FStStrNoPop var_110
  loc_AF3C32: ConcatStr
  loc_AF3C33: FStStrNoPop var_114
  loc_AF3C36: LitStr ","
  loc_AF3C39: ConcatStr
  loc_AF3C3A: FStStrNoPop var_118
  loc_AF3C3D: ILdRf NumeMoba
  loc_AF3C40: CStrI4
  loc_AF3C42: FStStrNoPop var_11C
  loc_AF3C45: ConcatStr
  loc_AF3C46: FStStrNoPop var_120
  loc_AF3C49: LitStr ","
  loc_AF3C4C: ConcatStr
  loc_AF3C4D: FStStrNoPop var_124
  loc_AF3C50: LitI4 1
  loc_AF3C55: LitI4 1
  loc_AF3C5A: LitVarStr var_E0, "'yyyy-mm-dd'"
  loc_AF3C5F: FStVarCopyObj var_D0
  loc_AF3C62: FLdRfVar var_D0
  loc_AF3C65: FLdRfVar var_88
  loc_AF3C68: CVarRef
  loc_AF3C6D: ImpAdCallI2 Format$(, )
  loc_AF3C72: FStStrNoPop var_128
  loc_AF3C75: ConcatStr
  loc_AF3C76: FStStrNoPop var_12C
  loc_AF3C79: LitStr ","
  loc_AF3C7C: ConcatStr
  loc_AF3C7D: CVarStr var_1BC
  loc_AF3C80: LitVarStr var_18C, "Null"
  loc_AF3C85: FStVarCopyObj var_19C
  loc_AF3C88: FLdRfVar var_19C
  loc_AF3C8B: FLdZeroAd var_4C4
  loc_AF3C8E: CVarStr var_17C
  loc_AF3C91: FLdI2 var_4BE
  loc_AF3C94: CVarBoolI2 var_16C
  loc_AF3C98: FLdRfVar var_1AC
  loc_AF3C9B: ImpAdCallFPR4  = IIf(, , )
  loc_AF3CA0: FLdRfVar var_1AC
  loc_AF3CA3: ConcatVar var_1CC
  loc_AF3CA7: LitVarStr var_1DC, ","
  loc_AF3CAC: ConcatVar var_1EC
  loc_AF3CB0: LitVarStr var_25C, "Null"
  loc_AF3CB5: FStVarCopyObj var_26C
  loc_AF3CB8: FLdRfVar var_26C
  loc_AF3CBB: FLdZeroAd var_4CC
  loc_AF3CBE: CVarStr var_24C
  loc_AF3CC1: FLdI2 var_4C6
  loc_AF3CC4: CVarBoolI2 var_23C
  loc_AF3CC8: FLdRfVar var_27C
  loc_AF3CCB: ImpAdCallFPR4  = IIf(, , )
  loc_AF3CD0: FLdRfVar var_27C
  loc_AF3CD3: ConcatVar var_28C
  loc_AF3CD7: LitVarStr var_29C, ","
  loc_AF3CDC: ConcatVar var_2AC
  loc_AF3CE0: FLdFPR8 ImpoMoba
  loc_AF3CE3: CStrR8
  loc_AF3CE5: FStStrNoPop var_2B0
  loc_AF3CE8: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AF3CED: CVarStr var_2C0
  loc_AF3CF0: ConcatVar var_2D0
  loc_AF3CF4: LitVarStr var_2E0, ",0,"
  loc_AF3CF9: ConcatVar var_2F0
  loc_AF3CFD: FLdFPR8 IvaMoba
  loc_AF3D00: CStrR8
  loc_AF3D02: FStStrNoPop var_2F4
  loc_AF3D05: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AF3D0A: CVarStr var_304
  loc_AF3D0D: ConcatVar var_314
  loc_AF3D11: LitVarStr var_324, ","
  loc_AF3D16: ConcatVar var_334
  loc_AF3D1A: FLdFPR8 CodiCuco
  loc_AF3D1D: CStrR8
  loc_AF3D1F: FStStrNoPop var_338
  loc_AF3D22: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AF3D27: CVarStr var_348
  loc_AF3D2A: ConcatVar var_358
  loc_AF3D2E: LitVarStr var_368, ","
  loc_AF3D33: ConcatVar var_378
  loc_AF3D37: FLdI2 AddNew0
  loc_AF3D3A: CVarI2 var_388
  loc_AF3D3D: ConcatVar var_398
  loc_AF3D41: LitVarStr var_3A8, ",'"
  loc_AF3D46: ConcatVar var_3B8
  loc_AF3D4A: ILdRf var_94
  loc_AF3D4D: CVarStr var_3C8
  loc_AF3D50: ConcatVar var_3D8
  loc_AF3D54: LitVarStr var_3E8, "','"
  loc_AF3D59: ConcatVar var_3F8
  loc_AF3D5D: ILdRf var_98
  loc_AF3D60: CVarStr var_408
  loc_AF3D63: ConcatVar var_418
  loc_AF3D67: LitVarStr var_428, "',"
  loc_AF3D6C: ConcatVar var_438
  loc_AF3D70: ILdI4 AddNewC
  loc_AF3D73: CVarI4
  loc_AF3D77: ConcatVar var_458
  loc_AF3D7B: LitVarStr var_468, ",'"
  loc_AF3D80: ConcatVar var_478
  loc_AF3D84: ImpAdLdI4 MemVar_C3D03C
  loc_AF3D87: CVarStr var_488
  loc_AF3D8A: ConcatVar var_498
  loc_AF3D8E: LitVarStr var_4A8, "');"
  loc_AF3D93: ConcatVar var_4B8
  loc_AF3D97: CStrVarVal var_4BC
  loc_AF3D9B: Call EjecutarRsCls(from_stack_1v)
  loc_AF3DA0: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_2B0 = "": var_2F4 = "": var_338 = "": var_4BC = "": var_4C4 = ""
  loc_AF3DD3: FFreeVar var_438 = "": var_458 = "": var_478 = "": var_498 = "": var_4B8 = "": var_D0 = "": var_F0 = "": var_16C = "": var_17C = "": var_19C = "": var_1BC = "": var_1AC = "": var_1CC = "": var_22C = "": var_23C = "": var_24C = "": var_26C = "": var_1EC = "": var_27C = "": var_28C = "": var_2AC = "": var_2C0 = "": var_2D0 = "": var_2F0 = "": var_304 = "": var_314 = "": var_334 = "": var_348 = "": var_358 = "": var_378 = "": var_398 = "": var_3B8 = "": var_3D8 = "": var_3F8 = ""
  loc_AF3E1C: Branch loc_AF4100
  loc_AF3E1F: FLdRfVar var_D0
  loc_AF3E22: FLdRfVar var_C0
  loc_AF3E25: LitVarStr var_BC, "DeCreTimb"
  loc_AF3E2A: PopAdLdVar
  loc_AF3E2B: FLdRfVar var_AC
  loc_AF3E2E: FLdPr Me
  loc_AF3E31: MemLdPr global_56
  loc_AF3E34:  = Me.Fields
  loc_AF3E39: FLdPr var_AC
  loc_AF3E3C: from_stack_2 = Me.Item(from_stack_1)
  loc_AF3E41: FLdPr var_C0
  loc_AF3E44:  = Me.Value
  loc_AF3E49: FLdRfVar var_D0
  loc_AF3E4C: LitVarStr var_E0, "1"
  loc_AF3E51: HardType
  loc_AF3E52: EqVarBool
  loc_AF3E54: FFreeAd var_AC = ""
  loc_AF3E5B: FFree1Var var_D0 = ""
  loc_AF3E5E: BranchF loc_AF4100
  loc_AF3E61: FLdRfVar var_8C
  loc_AF3E64: CVarRef
  loc_AF3E69: ImpAdCallI2 IsDate()
  loc_AF3E6E: FStI2 var_4BE
  loc_AF3E71: LitI4 1
  loc_AF3E76: LitI4 1
  loc_AF3E7B: LitVarStr var_15C, "'yyyy-mm-dd'"
  loc_AF3E80: FStVarCopyObj var_F0
  loc_AF3E83: FLdRfVar var_F0
  loc_AF3E86: FLdRfVar var_8C
  loc_AF3E89: CVarRef
  loc_AF3E8E: ImpAdCallI2 Format$(, )
  loc_AF3E93: FStStr var_4C4
  loc_AF3E96: FLdRfVar var_90
  loc_AF3E99: CVarRef
  loc_AF3E9E: ImpAdCallI2 IsDate()
  loc_AF3EA3: FStI2 var_4C6
  loc_AF3EA6: LitI4 1
  loc_AF3EAB: LitI4 1
  loc_AF3EB0: LitVarStr var_21C, "'yyyy-mm-dd'"
  loc_AF3EB5: FStVarCopyObj var_22C
  loc_AF3EB8: FLdRfVar var_22C
  loc_AF3EBB: FLdRfVar var_90
  loc_AF3EBE: CVarRef
  loc_AF3EC3: ImpAdCallI2 Format$(, )
  loc_AF3EC8: FStStr var_4CC
  loc_AF3ECB: LitStr "INSERT INTO movibanco (PeriInfo,IdMoba,CodiBanc,CodiTimb,NumeMoba,FechMoba,FeinMoba,FecoMoba,DebeMoba,HabeMoba,ComiMoba,IvaMoba,CodiEnre,CodiCuco,DetaMoba,NumeOrpa,AltaUsua)"
  loc_AF3ECE: LitStr " VALUES ("
  loc_AF3ED1: ConcatStr
  loc_AF3ED2: FStStrNoPop var_9C
  loc_AF3ED5: FLdI2 PeriInfo
  loc_AF3ED8: CStrUI1
  loc_AF3EDA: FStStrNoPop var_A0
  loc_AF3EDD: ConcatStr
  loc_AF3EDE: FStStrNoPop var_A4
  loc_AF3EE1: LitStr ",(SELECT Max(IdMoba)+1 FROM movibanco mb2 WHERE mb2.PeriInfo = "
  loc_AF3EE4: ConcatStr
  loc_AF3EE5: FStStrNoPop var_F4
  loc_AF3EE8: ImpAdLdI2 MemVar_C3D064
  loc_AF3EEB: CStrUI1
  loc_AF3EED: FStStrNoPop var_F8
  loc_AF3EF0: ConcatStr
  loc_AF3EF1: FStStrNoPop var_FC
  loc_AF3EF4: LitStr "),"
  loc_AF3EF7: ConcatStr
  loc_AF3EF8: FStStrNoPop var_100
  loc_AF3EFB: ILdRf CodiBanc
  loc_AF3EFE: CStrI4
  loc_AF3F00: FStStrNoPop var_104
  loc_AF3F03: ConcatStr
  loc_AF3F04: FStStrNoPop var_108
  loc_AF3F07: LitStr ","
  loc_AF3F0A: ConcatStr
  loc_AF3F0B: FStStrNoPop var_10C
  loc_AF3F0E: FLdI2 CodiTimb
  loc_AF3F11: CStrUI1
  loc_AF3F13: FStStrNoPop var_110
  loc_AF3F16: ConcatStr
  loc_AF3F17: FStStrNoPop var_114
  loc_AF3F1A: LitStr ","
  loc_AF3F1D: ConcatStr
  loc_AF3F1E: FStStrNoPop var_118
  loc_AF3F21: ILdRf NumeMoba
  loc_AF3F24: CStrI4
  loc_AF3F26: FStStrNoPop var_11C
  loc_AF3F29: ConcatStr
  loc_AF3F2A: FStStrNoPop var_120
  loc_AF3F2D: LitStr ","
  loc_AF3F30: ConcatStr
  loc_AF3F31: FStStrNoPop var_124
  loc_AF3F34: LitI4 1
  loc_AF3F39: LitI4 1
  loc_AF3F3E: LitVarStr var_E0, "'yyyy-mm-dd'"
  loc_AF3F43: FStVarCopyObj var_D0
  loc_AF3F46: FLdRfVar var_D0
  loc_AF3F49: FLdRfVar var_88
  loc_AF3F4C: CVarRef
  loc_AF3F51: ImpAdCallI2 Format$(, )
  loc_AF3F56: FStStrNoPop var_128
  loc_AF3F59: ConcatStr
  loc_AF3F5A: FStStrNoPop var_12C
  loc_AF3F5D: LitStr ","
  loc_AF3F60: ConcatStr
  loc_AF3F61: CVarStr var_1BC
  loc_AF3F64: LitVarStr var_18C, "Null"
  loc_AF3F69: FStVarCopyObj var_19C
  loc_AF3F6C: FLdRfVar var_19C
  loc_AF3F6F: FLdZeroAd var_4C4
  loc_AF3F72: CVarStr var_17C
  loc_AF3F75: FLdI2 var_4BE
  loc_AF3F78: CVarBoolI2 var_16C
  loc_AF3F7C: FLdRfVar var_1AC
  loc_AF3F7F: ImpAdCallFPR4  = IIf(, , )
  loc_AF3F84: FLdRfVar var_1AC
  loc_AF3F87: ConcatVar var_1CC
  loc_AF3F8B: LitVarStr var_1DC, ","
  loc_AF3F90: ConcatVar var_1EC
  loc_AF3F94: LitVarStr var_25C, "Null"
  loc_AF3F99: FStVarCopyObj var_26C
  loc_AF3F9C: FLdRfVar var_26C
  loc_AF3F9F: FLdZeroAd var_4CC
  loc_AF3FA2: CVarStr var_24C
  loc_AF3FA5: FLdI2 var_4C6
  loc_AF3FA8: CVarBoolI2 var_23C
  loc_AF3FAC: FLdRfVar var_27C
  loc_AF3FAF: ImpAdCallFPR4  = IIf(, , )
  loc_AF3FB4: FLdRfVar var_27C
  loc_AF3FB7: ConcatVar var_28C
  loc_AF3FBB: LitVarStr var_29C, ",0,"
  loc_AF3FC0: ConcatVar var_2AC
  loc_AF3FC4: FLdFPR8 ImpoMoba
  loc_AF3FC7: CStrR8
  loc_AF3FC9: FStStrNoPop var_2B0
  loc_AF3FCC: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AF3FD1: CVarStr var_2C0
  loc_AF3FD4: ConcatVar var_2D0
  loc_AF3FD8: LitVarStr var_2E0, ","
  loc_AF3FDD: ConcatVar var_2F0
  loc_AF3FE1: FLdFPR8 IvaMoba
  loc_AF3FE4: CStrR8
  loc_AF3FE6: FStStrNoPop var_2F4
  loc_AF3FE9: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AF3FEE: CVarStr var_304
  loc_AF3FF1: ConcatVar var_314
  loc_AF3FF5: LitVarStr var_324, ","
  loc_AF3FFA: ConcatVar var_334
  loc_AF3FFE: FLdFPR8 CodiCuco
  loc_AF4001: CStrR8
  loc_AF4003: FStStrNoPop var_338
  loc_AF4006: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AF400B: CVarStr var_348
  loc_AF400E: ConcatVar var_358
  loc_AF4012: LitVarStr var_368, ","
  loc_AF4017: ConcatVar var_378
  loc_AF401B: FLdI2 AddNew0
  loc_AF401E: CVarI2 var_388
  loc_AF4021: ConcatVar var_398
  loc_AF4025: LitVarStr var_3A8, ",'"
  loc_AF402A: ConcatVar var_3B8
  loc_AF402E: ILdRf var_94
  loc_AF4031: CVarStr var_3C8
  loc_AF4034: ConcatVar var_3D8
  loc_AF4038: LitVarStr var_3E8, "','"
  loc_AF403D: ConcatVar var_3F8
  loc_AF4041: ILdRf var_98
  loc_AF4044: CVarStr var_408
  loc_AF4047: ConcatVar var_418
  loc_AF404B: LitVarStr var_428, "',"
  loc_AF4050: ConcatVar var_438
  loc_AF4054: ILdI4 AddNewC
  loc_AF4057: CVarI4
  loc_AF405B: ConcatVar var_458
  loc_AF405F: LitVarStr var_468, ",'"
  loc_AF4064: ConcatVar var_478
  loc_AF4068: ImpAdLdI4 MemVar_C3D03C
  loc_AF406B: CVarStr var_488
  loc_AF406E: ConcatVar var_498
  loc_AF4072: LitVarStr var_4A8, "');"
  loc_AF4077: ConcatVar var_4B8
  loc_AF407B: CStrVarVal var_4BC
  loc_AF407F: Call EjecutarRsCls(from_stack_1v)
  loc_AF4084: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_2B0 = "": var_2F4 = "": var_338 = "": var_4BC = "": var_4C4 = ""
  loc_AF40B7: FFreeVar var_438 = "": var_458 = "": var_478 = "": var_498 = "": var_4B8 = "": var_D0 = "": var_F0 = "": var_16C = "": var_17C = "": var_19C = "": var_1BC = "": var_1AC = "": var_1CC = "": var_22C = "": var_23C = "": var_24C = "": var_26C = "": var_1EC = "": var_27C = "": var_28C = "": var_2AC = "": var_2C0 = "": var_2D0 = "": var_2F0 = "": var_304 = "": var_314 = "": var_334 = "": var_348 = "": var_358 = "": var_378 = "": var_398 = "": var_3B8 = "": var_3D8 = "": var_3F8 = ""
  loc_AF4100: ILdRf NumeMoba
  loc_AF4103: ILdRf var_88
  loc_AF4106: FLdI2 CodiTimb
  loc_AF4109: CUI1I2
  loc_AF410B: ILdRf CodiBanc
  loc_AF410E: FLdI2 PeriInfo
  loc_AF4111: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_AF4116: ExitProcHresult
End Sub

Public Sub Modificar(FeinMoba, ImpoMoba, ComiMoba, IvaMoba, CodiEnre, CodiCuco, DetaMoba) 'AD0C60
  'Data Table: 4173B8
  loc_AD06A4: ILdRf FeinMoba
  loc_AD06A7: FStStrCopy var_88
  loc_AD06AA: ILdRf arg_2C
  loc_AD06AD: FStStrCopy var_8C
  loc_AD06B0: ILdRf arg_30
  loc_AD06B3: FStStrCopy var_90
  loc_AD06B6: LitVarStr var_C8, "SELECT * FROM tipomovibanco WHERE CodiTimb = "
  loc_AD06BB: FLdRfVar var_B8
  loc_AD06BE: FLdRfVar var_A8
  loc_AD06C1: LitVarStr var_A4, "CodiTimb"
  loc_AD06C6: PopAdLdVar
  loc_AD06C7: FLdRfVar var_94
  loc_AD06CA: FLdPr Me
  loc_AD06CD: MemLdPr RsFrm
  loc_AD06D0:  = Me.Fields
  loc_AD06D5: FLdPr var_94
  loc_AD06D8: from_stack_2 = Me.Item(from_stack_1)
  loc_AD06DD: FLdPr var_A8
  loc_AD06E0:  = Me.Value
  loc_AD06E5: FLdRfVar var_B8
  loc_AD06E8: ConcatVar var_D8
  loc_AD06EC: LitVarStr var_E8, ";"
  loc_AD06F1: ConcatVar var_F8
  loc_AD06F5: CStrVarVal var_FC
  loc_AD06F9: Call EjecutarRsCls(from_stack_1v)
  loc_AD06FE: FFree1Str var_FC
  loc_AD0701: FFreeAd var_94 = ""
  loc_AD0708: FFreeVar var_B8 = "": var_D8 = ""
  loc_AD0711: FLdRfVar var_100
  loc_AD0714: FLdPr Me
  loc_AD0717: MemLdPr global_56
  loc_AD071A:  = Me.RecordCount
  loc_AD071F: ILdRf var_100
  loc_AD0722: LitI4 0
  loc_AD0727: GtI4
  loc_AD0728: BranchF loc_AD0B28
  loc_AD072B: FLdRfVar var_B8
  loc_AD072E: FLdRfVar var_A8
  loc_AD0731: LitVarStr var_A4, "DeCreTimb"
  loc_AD0736: PopAdLdVar
  loc_AD0737: FLdRfVar var_94
  loc_AD073A: FLdPr Me
  loc_AD073D: MemLdPr global_56
  loc_AD0740:  = Me.Fields
  loc_AD0745: FLdPr var_94
  loc_AD0748: from_stack_2 = Me.Item(from_stack_1)
  loc_AD074D: FLdPr var_A8
  loc_AD0750:  = Me.Value
  loc_AD0755: FLdRfVar var_B8
  loc_AD0758: LitVarStr var_C8, "0"
  loc_AD075D: HardType
  loc_AD075E: EqVarBool
  loc_AD0760: FFreeAd var_94 = ""
  loc_AD0767: FFree1Var var_B8 = ""
  loc_AD076A: BranchF loc_AD094C
  loc_AD076D: FLdRfVar var_88
  loc_AD0770: CVarRef
  loc_AD0775: ImpAdCallI2 IsDate()
  loc_AD077A: FStI2 var_3C6
  loc_AD077D: LitI4 1
  loc_AD0782: LitI4 1
  loc_AD0787: LitVarStr var_E8, "'yyyy-mm-dd'"
  loc_AD078C: FStVarCopyObj var_B8
  loc_AD078F: FLdRfVar var_B8
  loc_AD0792: FLdRfVar var_88
  loc_AD0795: CVarRef
  loc_AD079A: ImpAdCallI2 Format$(, )
  loc_AD079F: FStStr var_3CC
  loc_AD07A2: LitStr "UPDATE movibanco"
  loc_AD07A5: LitStr " SET FeinMoba="
  loc_AD07A8: ConcatStr
  loc_AD07A9: CVarStr var_140
  loc_AD07AC: LitVarStr var_120, "Null"
  loc_AD07B1: FStVarCopyObj var_F8
  loc_AD07B4: FLdRfVar var_F8
  loc_AD07B7: FLdZeroAd var_3CC
  loc_AD07BA: CVarStr var_D8
  loc_AD07BD: FLdI2 var_3C6
  loc_AD07C0: CVarBoolI2 var_110
  loc_AD07C4: FLdRfVar var_130
  loc_AD07C7: ImpAdCallFPR4  = IIf(, , )
  loc_AD07CC: FLdRfVar var_130
  loc_AD07CF: ConcatVar var_150
  loc_AD07D3: LitVarStr var_160, ",DebeMoba="
  loc_AD07D8: ConcatVar var_170
  loc_AD07DC: FLdFPR8 ImpoMoba
  loc_AD07DF: CStrR8
  loc_AD07E1: FStStrNoPop var_FC
  loc_AD07E4: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AD07E9: CVarStr var_180
  loc_AD07EC: ConcatVar var_190
  loc_AD07F0: LitVarStr var_1A0, ",HabeMoba=0,ComiMoba="
  loc_AD07F5: ConcatVar var_1B0
  loc_AD07F9: FLdFPR8 IvaMoba
  loc_AD07FC: CStrR8
  loc_AD07FE: FStStrNoPop var_1B4
  loc_AD0801: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AD0806: CVarStr var_1C4
  loc_AD0809: ConcatVar var_1D4
  loc_AD080D: LitVarStr var_1E4, ",IvaMoba="
  loc_AD0812: ConcatVar var_1F4
  loc_AD0816: FLdFPR8 CodiCuco
  loc_AD0819: CStrR8
  loc_AD081B: FStStrNoPop var_1F8
  loc_AD081E: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AD0823: CVarStr var_208
  loc_AD0826: ConcatVar var_218
  loc_AD082A: LitVarStr var_228, ",CodiEnre="
  loc_AD082F: ConcatVar var_238
  loc_AD0833: FLdI2 arg_28
  loc_AD0836: CVarI2 var_248
  loc_AD0839: ConcatVar var_258
  loc_AD083D: LitVarStr var_268, ",CodiCuco='"
  loc_AD0842: ConcatVar var_278
  loc_AD0846: ILdRf var_8C
  loc_AD0849: CVarStr var_288
  loc_AD084C: ConcatVar var_298
  loc_AD0850: LitVarStr var_2A8, "',DetaMoba='"
  loc_AD0855: ConcatVar var_2B8
  loc_AD0859: ILdRf var_90
  loc_AD085C: CVarStr var_2C8
  loc_AD085F: ConcatVar var_2D8
  loc_AD0863: LitVarStr var_2E8, "'"
  loc_AD0868: ConcatVar var_2F8
  loc_AD086C: LitVarStr var_308, " WHERE PeriInfo = "
  loc_AD0871: ConcatVar var_318
  loc_AD0875: FLdRfVar var_338
  loc_AD0878: FLdRfVar var_A8
  loc_AD087B: LitVarStr var_328, "PeriInfo"
  loc_AD0880: PopAdLdVar
  loc_AD0881: FLdRfVar var_94
  loc_AD0884: FLdPr Me
  loc_AD0887: MemLdPr RsFrm
  loc_AD088A:  = Me.Fields
  loc_AD088F: FLdPr var_94
  loc_AD0892: from_stack_2 = Me.Item(from_stack_1)
  loc_AD0897: FLdPr var_A8
  loc_AD089A:  = Me.Value
  loc_AD089F: FLdRfVar var_338
  loc_AD08A2: ConcatVar var_348
  loc_AD08A6: LitVarStr var_358, " AND IdMoba = "
  loc_AD08AB: ConcatVar var_368
  loc_AD08AF: FLdRfVar var_390
  loc_AD08B2: FLdRfVar var_380
  loc_AD08B5: LitVarStr var_37C, "IdMoba"
  loc_AD08BA: PopAdLdVar
  loc_AD08BB: FLdRfVar var_36C
  loc_AD08BE: FLdPr Me
  loc_AD08C1: MemLdPr RsFrm
  loc_AD08C4:  = Me.Fields
  loc_AD08C9: FLdPr var_36C
  loc_AD08CC: from_stack_2 = Me.Item(from_stack_1)
  loc_AD08D1: FLdPr var_380
  loc_AD08D4:  = Me.Value
  loc_AD08D9: FLdRfVar var_390
  loc_AD08DC: ConcatVar var_3A0
  loc_AD08E0: LitVarStr var_3B0, ";"
  loc_AD08E5: ConcatVar var_3C0
  loc_AD08E9: CStrVarVal var_3C4
  loc_AD08ED: Call EjecutarRsCls(from_stack_1v)
  loc_AD08F2: FFreeStr var_FC = "": var_1B4 = "": var_1F8 = "": var_3C4 = ""
  loc_AD08FF: FFreeAd var_94 = "": var_A8 = "": var_36C = ""
  loc_AD090A: FFreeVar var_B8 = "": var_110 = "": var_D8 = "": var_F8 = "": var_140 = "": var_130 = "": var_150 = "": var_170 = "": var_180 = "": var_190 = "": var_1B0 = "": var_1C4 = "": var_1D4 = "": var_1F4 = "": var_208 = "": var_218 = "": var_238 = "": var_258 = "": var_278 = "": var_298 = "": var_2B8 = "": var_2D8 = "": var_2F8 = "": var_318 = "": var_338 = "": var_348 = "": var_368 = "": var_390 = "": var_3A0 = ""
  loc_AD0949: Branch loc_AD0B28
  loc_AD094C: FLdRfVar var_88
  loc_AD094F: CVarRef
  loc_AD0954: ImpAdCallI2 IsDate()
  loc_AD0959: FStI2 var_3C6
  loc_AD095C: LitI4 1
  loc_AD0961: LitI4 1
  loc_AD0966: LitVarStr var_E8, "'yyyy-mm-dd'"
  loc_AD096B: FStVarCopyObj var_B8
  loc_AD096E: FLdRfVar var_B8
  loc_AD0971: FLdRfVar var_88
  loc_AD0974: CVarRef
  loc_AD0979: ImpAdCallI2 Format$(, )
  loc_AD097E: FStStr var_3CC
  loc_AD0981: LitStr "UPDATE movibanco"
  loc_AD0984: LitStr " SET FeinMoba="
  loc_AD0987: ConcatStr
  loc_AD0988: CVarStr var_140
  loc_AD098B: LitVarStr var_120, "Null"
  loc_AD0990: FStVarCopyObj var_F8
  loc_AD0993: FLdRfVar var_F8
  loc_AD0996: FLdZeroAd var_3CC
  loc_AD0999: CVarStr var_D8
  loc_AD099C: FLdI2 var_3C6
  loc_AD099F: CVarBoolI2 var_110
  loc_AD09A3: FLdRfVar var_130
  loc_AD09A6: ImpAdCallFPR4  = IIf(, , )
  loc_AD09AB: FLdRfVar var_130
  loc_AD09AE: ConcatVar var_150
  loc_AD09B2: LitVarStr var_160, ",HabeMoba="
  loc_AD09B7: ConcatVar var_170
  loc_AD09BB: FLdFPR8 ImpoMoba
  loc_AD09BE: CStrR8
  loc_AD09C0: FStStrNoPop var_FC
  loc_AD09C3: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AD09C8: CVarStr var_180
  loc_AD09CB: ConcatVar var_190
  loc_AD09CF: LitVarStr var_1A0, ",DebeMoba=0,ComiMoba="
  loc_AD09D4: ConcatVar var_1B0
  loc_AD09D8: FLdFPR8 IvaMoba
  loc_AD09DB: CStrR8
  loc_AD09DD: FStStrNoPop var_1B4
  loc_AD09E0: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AD09E5: CVarStr var_1C4
  loc_AD09E8: ConcatVar var_1D4
  loc_AD09EC: LitVarStr var_1E4, ",IvaMoba="
  loc_AD09F1: ConcatVar var_1F4
  loc_AD09F5: FLdFPR8 CodiCuco
  loc_AD09F8: CStrR8
  loc_AD09FA: FStStrNoPop var_1F8
  loc_AD09FD: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AD0A02: CVarStr var_208
  loc_AD0A05: ConcatVar var_218
  loc_AD0A09: LitVarStr var_228, ",CodiEnre="
  loc_AD0A0E: ConcatVar var_238
  loc_AD0A12: FLdI2 arg_28
  loc_AD0A15: CVarI2 var_248
  loc_AD0A18: ConcatVar var_258
  loc_AD0A1C: LitVarStr var_268, ",CodiCuco='"
  loc_AD0A21: ConcatVar var_278
  loc_AD0A25: ILdRf var_8C
  loc_AD0A28: CVarStr var_288
  loc_AD0A2B: ConcatVar var_298
  loc_AD0A2F: LitVarStr var_2A8, "',DetaMoba='"
  loc_AD0A34: ConcatVar var_2B8
  loc_AD0A38: ILdRf var_90
  loc_AD0A3B: CVarStr var_2C8
  loc_AD0A3E: ConcatVar var_2D8
  loc_AD0A42: LitVarStr var_2E8, "'"
  loc_AD0A47: ConcatVar var_2F8
  loc_AD0A4B: LitVarStr var_308, " WHERE PeriInfo = "
  loc_AD0A50: ConcatVar var_318
  loc_AD0A54: FLdRfVar var_338
  loc_AD0A57: FLdRfVar var_A8
  loc_AD0A5A: LitVarStr var_328, "PeriInfo"
  loc_AD0A5F: PopAdLdVar
  loc_AD0A60: FLdRfVar var_94
  loc_AD0A63: FLdPr Me
  loc_AD0A66: MemLdPr RsFrm
  loc_AD0A69:  = Me.Fields
  loc_AD0A6E: FLdPr var_94
  loc_AD0A71: from_stack_2 = Me.Item(from_stack_1)
  loc_AD0A76: FLdPr var_A8
  loc_AD0A79:  = Me.Value
  loc_AD0A7E: FLdRfVar var_338
  loc_AD0A81: ConcatVar var_348
  loc_AD0A85: LitVarStr var_358, " AND IdMoba = "
  loc_AD0A8A: ConcatVar var_368
  loc_AD0A8E: FLdRfVar var_390
  loc_AD0A91: FLdRfVar var_380
  loc_AD0A94: LitVarStr var_37C, "IdMoba"
  loc_AD0A99: PopAdLdVar
  loc_AD0A9A: FLdRfVar var_36C
  loc_AD0A9D: FLdPr Me
  loc_AD0AA0: MemLdPr RsFrm
  loc_AD0AA3:  = Me.Fields
  loc_AD0AA8: FLdPr var_36C
  loc_AD0AAB: from_stack_2 = Me.Item(from_stack_1)
  loc_AD0AB0: FLdPr var_380
  loc_AD0AB3:  = Me.Value
  loc_AD0AB8: FLdRfVar var_390
  loc_AD0ABB: ConcatVar var_3A0
  loc_AD0ABF: LitVarStr var_3B0, ";"
  loc_AD0AC4: ConcatVar var_3C0
  loc_AD0AC8: CStrVarVal var_3C4
  loc_AD0ACC: Call EjecutarRsCls(from_stack_1v)
  loc_AD0AD1: FFreeStr var_FC = "": var_1B4 = "": var_1F8 = "": var_3C4 = ""
  loc_AD0ADE: FFreeAd var_94 = "": var_A8 = "": var_36C = ""
  loc_AD0AE9: FFreeVar var_B8 = "": var_110 = "": var_D8 = "": var_F8 = "": var_140 = "": var_130 = "": var_150 = "": var_170 = "": var_180 = "": var_190 = "": var_1B0 = "": var_1C4 = "": var_1D4 = "": var_1F4 = "": var_208 = "": var_218 = "": var_238 = "": var_258 = "": var_278 = "": var_298 = "": var_2B8 = "": var_2D8 = "": var_2F8 = "": var_318 = "": var_338 = "": var_348 = "": var_368 = "": var_390 = "": var_3A0 = ""
  loc_AD0B28: FLdRfVar var_F8
  loc_AD0B2B: FLdRfVar var_A8
  loc_AD0B2E: LitVarStr var_A4, "PeriInfo"
  loc_AD0B33: PopAdLdVar
  loc_AD0B34: FLdRfVar var_94
  loc_AD0B37: FLdPr Me
  loc_AD0B3A: MemLdPr RsFrm
  loc_AD0B3D:  = Me.Fields
  loc_AD0B42: FLdPr var_94
  loc_AD0B45: from_stack_2 = Me.Item(from_stack_1)
  loc_AD0B4A: FLdPr var_A8
  loc_AD0B4D:  = Me.Value
  loc_AD0B52: FLdRfVar var_130
  loc_AD0B55: FLdRfVar var_380
  loc_AD0B58: LitVarStr var_C8, "CodiBanc"
  loc_AD0B5D: PopAdLdVar
  loc_AD0B5E: FLdRfVar var_36C
  loc_AD0B61: FLdPr Me
  loc_AD0B64: MemLdPr RsFrm
  loc_AD0B67:  = Me.Fields
  loc_AD0B6C: FLdPr var_36C
  loc_AD0B6F: from_stack_2 = Me.Item(from_stack_1)
  loc_AD0B74: FLdPr var_380
  loc_AD0B77:  = Me.Value
  loc_AD0B7C: FLdRfVar var_140
  loc_AD0B7F: FLdRfVar var_3D4
  loc_AD0B82: LitVarStr var_E8, "CodiTimb"
  loc_AD0B87: PopAdLdVar
  loc_AD0B88: FLdRfVar var_3D0
  loc_AD0B8B: FLdPr Me
  loc_AD0B8E: MemLdPr RsFrm
  loc_AD0B91:  = Me.Fields
  loc_AD0B96: FLdPr var_3D0
  loc_AD0B99: from_stack_2 = Me.Item(from_stack_1)
  loc_AD0B9E: FLdPr var_3D4
  loc_AD0BA1:  = Me.Value
  loc_AD0BA6: FLdRfVar var_3DC
  loc_AD0BA9: LitVarStr var_110, "FechMoba"
  loc_AD0BAE: PopAdLdVar
  loc_AD0BAF: FLdRfVar var_3D8
  loc_AD0BB2: FLdPr Me
  loc_AD0BB5: MemLdPr RsFrm
  loc_AD0BB8:  = Me.Fields
  loc_AD0BBD: FLdPr var_3D8
  loc_AD0BC0: from_stack_2 = Me.Item(from_stack_1)
  loc_AD0BC5: LitI4 1
  loc_AD0BCA: LitI4 1
  loc_AD0BCF: LitVarStr var_120, "yyyy-mm-dd"
  loc_AD0BD4: FStVarCopyObj var_D8
  loc_AD0BD7: FLdRfVar var_D8
  loc_AD0BDA: FLdZeroAd var_3DC
  loc_AD0BDD: CVarAd
  loc_AD0BE1: ImpAdCallI2 Format$(, )
  loc_AD0BE6: FStStr var_1B4
  loc_AD0BE9: FLdRfVar var_150
  loc_AD0BEC: FLdRfVar var_3E4
  loc_AD0BEF: LitVarStr var_160, "NumeMoba"
  loc_AD0BF4: PopAdLdVar
  loc_AD0BF5: FLdRfVar var_3E0
  loc_AD0BF8: FLdPr Me
  loc_AD0BFB: MemLdPr RsFrm
  loc_AD0BFE:  = Me.Fields
  loc_AD0C03: FLdPr var_3E0
  loc_AD0C06: from_stack_2 = Me.Item(from_stack_1)
  loc_AD0C0B: FLdPr var_3E4
  loc_AD0C0E:  = Me.Value
  loc_AD0C13: FLdRfVar var_150
  loc_AD0C16: CI4Var
  loc_AD0C18: FLdZeroAd var_1B4
  loc_AD0C1B: FStStrNoPop var_FC
  loc_AD0C1E: FLdRfVar var_140
  loc_AD0C21: CUI1Var
  loc_AD0C23: FLdRfVar var_130
  loc_AD0C26: CI4Var
  loc_AD0C28: FLdRfVar var_F8
  loc_AD0C2B: CI2Var
  loc_AD0C2C: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_AD0C31: FFreeStr var_FC = ""
  loc_AD0C38: FFreeAd var_94 = "": var_36C = "": var_3D0 = "": var_3D8 = "": var_3E0 = "": var_A8 = "": var_380 = "": var_3D4 = ""
  loc_AD0C4D: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_130 = "": var_140 = ""
  loc_AD0C5C: ExitProcHresult
End Sub

Public Sub Eliminar(PeriInfo, IdMoba) '9B6E40
  'Data Table: 4173B8
  loc_9B6D9C: LitStr "DELETE FROM movibanco"
  loc_9B6D9F: LitStr " WHERE PeriInfo = "
  loc_9B6DA2: ConcatStr
  loc_9B6DA3: FStStrNoPop var_88
  loc_9B6DA6: FLdI2 PeriInfo
  loc_9B6DA9: CStrUI1
  loc_9B6DAB: FStStrNoPop var_8C
  loc_9B6DAE: ConcatStr
  loc_9B6DAF: FStStrNoPop var_90
  loc_9B6DB2: LitStr " AND IdMoba = "
  loc_9B6DB5: ConcatStr
  loc_9B6DB6: FStStrNoPop var_94
  loc_9B6DB9: ILdRf IdMoba
  loc_9B6DBC: CStrI4
  loc_9B6DBE: FStStrNoPop var_98
  loc_9B6DC1: ConcatStr
  loc_9B6DC2: FStStrNoPop var_9C
  loc_9B6DC5: LitStr ";"
  loc_9B6DC8: ConcatStr
  loc_9B6DC9: FStStrNoPop var_A0
  loc_9B6DCC: Call EjecutarRsCls(from_stack_1v)
  loc_9B6DD1: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_9B6DE2: FLdRfVar var_A8
  loc_9B6DE5: FLdPr Me
  loc_9B6DE8: MemLdPr RsFrm
  loc_9B6DEB:  = Me.AbsolutePosition
  loc_9B6DF0: ILdRf var_A8
  loc_9B6DF3: FStR4 var_A4
  loc_9B6DF6: Call Requery()
  loc_9B6DFB: FLdRfVar var_A8
  loc_9B6DFE: FLdPr Me
  loc_9B6E01: MemLdPr RsFrm
  loc_9B6E04:  = Me.RecordCount
  loc_9B6E09: ILdRf var_A8
  loc_9B6E0C: LitI4 0
  loc_9B6E11: GtI4
  loc_9B6E12: BranchF loc_9B6E3E
  loc_9B6E15: Call MoveFirst()
  loc_9B6E1A: ILdRf var_A4
  loc_9B6E1D: LitI4 1
  loc_9B6E22: GtI4
  loc_9B6E23: BranchF loc_9B6E3E
  loc_9B6E26: LitVar_Missing var_B8
  loc_9B6E29: PopAdLdVar
  loc_9B6E2A: ILdRf var_A4
  loc_9B6E2D: LitI4 2
  loc_9B6E32: SubI4
  loc_9B6E33: FLdPr Me
  loc_9B6E36: MemLdPr RsFrm
  loc_9B6E39: Me.Move from_stack_1, from_stack_2
  loc_9B6E3E: ExitProcHresult
End Sub

Public Function ValidaClave(PeriInfo, CodiBanc, CodiTimb, NumeMoba, FechMoba) '9E0974
  'Data Table: 4173B8
  loc_9E089C: ILdRf FechMoba
  loc_9E089F: FStStrCopy var_8C
  loc_9E08A2: ZeroRetVal
  loc_9E08A4: LitI4 0
  loc_9E08A9: LitI4 0
  loc_9E08AE: FLdRfVar var_90
  loc_9E08B1: Redim
  loc_9E08BB: FLdRfVar var_8C
  loc_9E08BE: CVarRef
  loc_9E08C3: ParmAry1St
  loc_9E08C9: FLdRfVar var_90
  loc_9E08CC: ImpAdCallFPR4 Proc_261_57_A2BA40()
  loc_9E08D1: FLdRfVar var_90
  loc_9E08D4: Erase
  loc_9E08D5: LitStr "SELECT * FROM movibanco WHERE PeriInfo = "
  loc_9E08D8: FLdI2 PeriInfo
  loc_9E08DB: CStrUI1
  loc_9E08DD: FStStrNoPop var_A4
  loc_9E08E0: ConcatStr
  loc_9E08E1: FStStrNoPop var_A8
  loc_9E08E4: LitStr " AND CodiBanc = "
  loc_9E08E7: ConcatStr
  loc_9E08E8: FStStrNoPop var_AC
  loc_9E08EB: ILdRf CodiBanc
  loc_9E08EE: CStrI4
  loc_9E08F0: FStStrNoPop var_B0
  loc_9E08F3: ConcatStr
  loc_9E08F4: FStStrNoPop var_B4
  loc_9E08F7: LitStr " AND CodiTimb = "
  loc_9E08FA: ConcatStr
  loc_9E08FB: FStStrNoPop var_B8
  loc_9E08FE: FLdUI1
  loc_9E0902: CStrI2
  loc_9E0904: FStStrNoPop var_BC
  loc_9E0907: ConcatStr
  loc_9E0908: FStStrNoPop var_C0
  loc_9E090B: LitStr " AND NumeMoba = "
  loc_9E090E: ConcatStr
  loc_9E090F: FStStrNoPop var_C4
  loc_9E0912: ILdRf NumeMoba
  loc_9E0915: CStrI4
  loc_9E0917: FStStrNoPop var_C8
  loc_9E091A: ConcatStr
  loc_9E091B: FStStrNoPop var_CC
  loc_9E091E: LitStr " AND FechMoba = "
  loc_9E0921: ConcatStr
  loc_9E0922: FStStrNoPop var_D0
  loc_9E0925: ILdRf var_8C
  loc_9E0928: ConcatStr
  loc_9E0929: FStStrNoPop var_D4
  loc_9E092C: Call EjecutarRsCls(from_stack_1v)
  loc_9E0931: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_9E094E: FLdRfVar var_D8
  loc_9E0951: FLdPr Me
  loc_9E0954: MemLdPr global_56
  loc_9E0957:  = Me.RecordCount
  loc_9E095C: ILdRf var_D8
  loc_9E095F: LitI4 0
  loc_9E0964: GtI4
  loc_9E0965: BranchF loc_9E096E
  loc_9E0968: LitStr "El Movimiento de Banco YA EXISTE. Reintente..."
  loc_9E096B: FStStrCopy var_88
  loc_9E096E: ExitProcCbHresult
End Function

Public Sub Encontrar(PeriInfo, CodiBanc, CodiTimb, FechMoba, NumeMoba) '9E4814
  'Data Table: 4173B8
  loc_9E46FC: ILdRf FechMoba
  loc_9E46FF: FStStrCopy var_88
  loc_9E4702: Call Requery()
  loc_9E4707: LitStr "PeriInfo = '"
  loc_9E470A: FLdI2 PeriInfo
  loc_9E470D: CStrUI1
  loc_9E470F: FStStrNoPop var_8C
  loc_9E4712: ConcatStr
  loc_9E4713: FStStrNoPop var_90
  loc_9E4716: LitStr "'"
  loc_9E4719: ConcatStr
  loc_9E471A: PopTmpLdAdStr
  loc_9E471E: Call Find(from_stack_1v)
  loc_9E4723: FFreeStr var_8C = "": var_90 = ""
  loc_9E472C: LitStr "CodiBanc = '"
  loc_9E472F: ILdRf CodiBanc
  loc_9E4732: CStrI4
  loc_9E4734: FStStrNoPop var_8C
  loc_9E4737: ConcatStr
  loc_9E4738: FStStrNoPop var_90
  loc_9E473B: LitStr "'"
  loc_9E473E: ConcatStr
  loc_9E473F: PopTmpLdAdStr
  loc_9E4743: Call Find(from_stack_1v)
  loc_9E4748: FFreeStr var_8C = "": var_90 = ""
  loc_9E4751: LitStr "CodiTimb = '"
  loc_9E4754: FLdUI1
  loc_9E4758: CStrI2
  loc_9E475A: FStStrNoPop var_8C
  loc_9E475D: ConcatStr
  loc_9E475E: FStStrNoPop var_90
  loc_9E4761: LitStr "'"
  loc_9E4764: ConcatStr
  loc_9E4765: PopTmpLdAdStr
  loc_9E4769: Call Find(from_stack_1v)
  loc_9E476E: FFreeStr var_8C = "": var_90 = ""
  loc_9E4777: LitStr "FechMoba = '"
  loc_9E477A: ILdRf var_88
  loc_9E477D: ConcatStr
  loc_9E477E: FStStrNoPop var_8C
  loc_9E4781: LitStr "'"
  loc_9E4784: ConcatStr
  loc_9E4785: PopTmpLdAdStr
  loc_9E4789: Call Find(from_stack_1v)
  loc_9E478E: FFreeStr var_8C = ""
  loc_9E4795: LitStr "NumeMoba = '"
  loc_9E4798: ILdRf NumeMoba
  loc_9E479B: CStrI4
  loc_9E479D: FStStrNoPop var_8C
  loc_9E47A0: ConcatStr
  loc_9E47A1: FStStrNoPop var_90
  loc_9E47A4: LitStr "'"
  loc_9E47A7: ConcatStr
  loc_9E47A8: PopTmpLdAdStr
  loc_9E47AC: Call Find(from_stack_1v)
  loc_9E47B1: FFreeStr var_8C = "": var_90 = ""
  loc_9E47BA: FLdRfVar var_98
  loc_9E47BD: FLdPr Me
  loc_9E47C0: MemLdPr RsFrm
  loc_9E47C3:  = Me.RecordCount
  loc_9E47C8: ILdRf var_98
  loc_9E47CB: LitI4 0
  loc_9E47D0: GtI4
  loc_9E47D1: BranchF loc_9E4812
  loc_9E47D4: FLdRfVar var_9A
  loc_9E47D7: FLdPr Me
  loc_9E47DA: MemLdPr RsFrm
  loc_9E47DD:  = Me.BOF
  loc_9E47E2: FLdI2 var_9A
  loc_9E47E5: BranchF loc_9E47F3
  loc_9E47E8: FLdPr Me
  loc_9E47EB: MemLdPr RsFrm
  loc_9E47EE: Me.MoveFirst
  loc_9E47F3: FLdRfVar var_9A
  loc_9E47F6: FLdPr Me
  loc_9E47F9: MemLdPr RsFrm
  loc_9E47FC:  = Me.EOF
  loc_9E4801: FLdI2 var_9A
  loc_9E4804: BranchF loc_9E4812
  loc_9E4807: FLdPr Me
  loc_9E480A: MemLdPr RsFrm
  loc_9E480D: Me.MoveLast
  loc_9E4812: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '973270
  'Data Table: 4173B8
  loc_973248: ILdRf sSelect
  loc_97324B: FStStrCopy var_88
  loc_97324E: FLdPr Me
  loc_973251: MemLdRfVar from_stack_1.RsFrm
  loc_973254: ILdRf var_88
  loc_973257: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_97325C: LitVarStr var_98, "Primary"
  loc_973261: PopAdLdVar
  loc_973262: FLdPr Me
  loc_973265: LateIdCall
  loc_97326D: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '95C2B8
  'Data Table: 4173B8
  loc_95C2A0: ILdRf sSelect
  loc_95C2A3: FStStrCopy var_88
  loc_95C2A6: FLdPr Me
  loc_95C2A9: MemLdRfVar from_stack_1.global_56
  loc_95C2AC: ILdRf var_88
  loc_95C2AF: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95C2B4: ExitProcHresult
End Sub

Public Sub Requery() '968AC0
  'Data Table: 4173B8
  loc_968AA0: FLdPr Me
  loc_968AA3: MemLdRfVar from_stack_1.RsFrm
  loc_968AA6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_968AAB: LitVarStr var_94, "Primary"
  loc_968AB0: PopAdLdVar
  loc_968AB1: FLdPr Me
  loc_968AB4: LateIdCall
  loc_968ABC: ExitProcHresult
End Sub

Public Property Get DataSource() '9733DC
  'Data Table: 4173B8
  loc_9733B8: ZeroRetVal
  loc_9733BA: FLdRfVar var_8C
  loc_9733BD: FLdPr Me
  loc_9733C0: MemLdPr RsFrm
  loc_9733C3:  = Me.DataSource
  loc_9733C8: ILdRf var_8C
  loc_9733CB: CastAd
  loc_9733CE: FStAdFunc var_88
  loc_9733D1: FFree1Ad var_8C
  loc_9733D4: ExitProcCbHresult
  loc_9733DA: MulR8
End Sub

Public Function TotalSegunFiltro(whFiltro) '9C5A78
  'Data Table: 4173B8
  loc_9C59C4: ILdRf whFiltro
  loc_9C59C7: FStStrCopy var_90
  loc_9C59CA: LitStr "SELECT IFNULL(Sum(DebeMoba-HabeMoba),0) DebeHabeMoba"
  loc_9C59CD: LitStr " FROM movibanco mb"
  loc_9C59D0: ConcatStr
  loc_9C59D1: FStStrNoPop TotalSegunFiltro
  loc_9C59D4: LitStr " INNER JOIN banco b ON b.PeriInfo = mb.PeriInfo AND b.CodiBanc = mb.CodiBanc"
  loc_9C59D7: ConcatStr
  loc_9C59D8: FStStrNoPop var_98
  loc_9C59DB: LitStr " INNER JOIN infogov.entereca er ON er.CodiEnre = mb.CodiEnre"
  loc_9C59DE: ConcatStr
  loc_9C59DF: FStStrNoPop var_9C
  loc_9C59E2: LitStr " WHERE mb.PeriInfo = "
  loc_9C59E5: ConcatStr
  loc_9C59E6: FStStrNoPop var_A0
  loc_9C59E9: ImpAdLdI2 MemVar_C3D064
  loc_9C59EC: CStrUI1
  loc_9C59EE: FStStrNoPop var_A4
  loc_9C59F1: ConcatStr
  loc_9C59F2: FStStrNoPop var_A8
  loc_9C59F5: LitStr " AND CodiTimb IN (5,6)"
  loc_9C59F8: ConcatStr
  loc_9C59F9: FStStrNoPop var_AC
  loc_9C59FC: ILdRf var_90
  loc_9C59FF: ConcatStr
  loc_9C5A00: FStStrNoPop var_B0
  loc_9C5A03: Call EjecutarRsCls(from_stack_1v)
  loc_9C5A08: FFreeStr TotalSegunFiltro = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_9C5A1B: FLdRfVar var_B4
  loc_9C5A1E: FLdPr Me
  loc_9C5A21: MemLdPr global_56
  loc_9C5A24:  = Me.RecordCount
  loc_9C5A29: ILdRf var_B4
  loc_9C5A2C: LitI4 0
  loc_9C5A31: GtI4
  loc_9C5A32: BranchF loc_9C5A71
  loc_9C5A35: FLdRfVar var_DC
  loc_9C5A38: FLdRfVar var_CC
  loc_9C5A3B: LitVarStr var_C8, "DebeHabeMoba"
  loc_9C5A40: PopAdLdVar
  loc_9C5A41: FLdRfVar var_B8
  loc_9C5A44: FLdPr Me
  loc_9C5A47: MemLdPr global_56
  loc_9C5A4A:  = Me.Fields
  loc_9C5A4F: FLdPr var_B8
  loc_9C5A52: from_stack_2 = Me.Item(from_stack_1)
  loc_9C5A57: FLdPr var_CC
  loc_9C5A5A:  = Me.Value
  loc_9C5A5F: FLdRfVar var_DC
  loc_9C5A62: FnCDblVar
  loc_9C5A64: FStFPR8 var_8C
  loc_9C5A67: FFreeAd var_B8 = ""
  loc_9C5A6E: FFree1Var var_DC = ""
  loc_9C5A71: ExitProcCbHresult
End Function

Public Sub AnulaCheques(PeriInfo, CodiBanc, CodiTimb, NumeMoba, FecoMoba) '9C83A0
  'Data Table: 4173B8
  loc_9C82F8: ILdRf FecoMoba
  loc_9C82FB: FStStrCopy var_88
  loc_9C82FE: LitStr "UPDATE movibanco SET FecoMoba='"
  loc_9C8301: LitI4 1
  loc_9C8306: LitI4 1
  loc_9C830B: LitVarStr var_A8, "yyyy-mm-dd"
  loc_9C8310: FStVarCopyObj var_B8
  loc_9C8313: FLdRfVar var_B8
  loc_9C8316: FLdRfVar var_88
  loc_9C8319: CVarRef
  loc_9C831E: ImpAdCallI2 Format$(, )
  loc_9C8323: FStStrNoPop var_BC
  loc_9C8326: ConcatStr
  loc_9C8327: FStStrNoPop var_C0
  loc_9C832A: LitStr "' WHERE PeriInfo = "
  loc_9C832D: ConcatStr
  loc_9C832E: FStStrNoPop var_C4
  loc_9C8331: FLdI2 PeriInfo
  loc_9C8334: CStrUI1
  loc_9C8336: FStStrNoPop var_C8
  loc_9C8339: ConcatStr
  loc_9C833A: FStStrNoPop var_CC
  loc_9C833D: LitStr " AND CodiBanc = "
  loc_9C8340: ConcatStr
  loc_9C8341: FStStrNoPop var_D0
  loc_9C8344: ILdRf CodiBanc
  loc_9C8347: CStrI4
  loc_9C8349: FStStrNoPop var_D4
  loc_9C834C: ConcatStr
  loc_9C834D: FStStrNoPop var_D8
  loc_9C8350: LitStr " AND CodiTimb = "
  loc_9C8353: ConcatStr
  loc_9C8354: FStStrNoPop var_DC
  loc_9C8357: FLdUI1
  loc_9C835B: CStrI2
  loc_9C835D: FStStrNoPop var_E0
  loc_9C8360: ConcatStr
  loc_9C8361: FStStrNoPop var_E4
  loc_9C8364: LitStr " AND NumeMoba = "
  loc_9C8367: ConcatStr
  loc_9C8368: FStStrNoPop var_E8
  loc_9C836B: ILdRf NumeMoba
  loc_9C836E: CStrI4
  loc_9C8370: FStStrNoPop var_EC
  loc_9C8373: ConcatStr
  loc_9C8374: FStStrNoPop var_F0
  loc_9C8377: Call EjecutarRsCls(from_stack_1v)
  loc_9C837C: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_9C839B: FFree1Var var_B8 = ""
  loc_9C839E: ExitProcHresult
End Sub

Public Function UltimoNroSegunTipo(CodiBanc, CodiTimb) '9CFCBC
  'Data Table: 4173B8
  loc_9CFBF8: LitStr "SELECT NumeMoba FROM movibanco WHERE PeriInfo = "
  loc_9CFBFB: ImpAdLdI2 MemVar_C3D064
  loc_9CFBFE: CStrUI1
  loc_9CFC00: FStStrNoPop var_8C
  loc_9CFC03: ConcatStr
  loc_9CFC04: FStStrNoPop var_90
  loc_9CFC07: LitStr " AND CodiBanc = "
  loc_9CFC0A: ConcatStr
  loc_9CFC0B: FStStrNoPop UltimoNroSegunTipo
  loc_9CFC0E: ILdRf CodiBanc
  loc_9CFC11: CStrI4
  loc_9CFC13: FStStrNoPop var_98
  loc_9CFC16: ConcatStr
  loc_9CFC17: FStStrNoPop var_9C
  loc_9CFC1A: LitStr " AND CodiTimb = "
  loc_9CFC1D: ConcatStr
  loc_9CFC1E: FStStrNoPop var_A0
  loc_9CFC21: FLdUI1
  loc_9CFC25: CStrI2
  loc_9CFC27: FStStrNoPop var_A4
  loc_9CFC2A: ConcatStr
  loc_9CFC2B: FStStrNoPop var_A8
  loc_9CFC2E: LitStr " ORDER BY NumeMoba DESC LIMIT 1"
  loc_9CFC31: ConcatStr
  loc_9CFC32: FStStrNoPop var_AC
  loc_9CFC35: Call EjecutarRsCls(from_stack_1v)
  loc_9CFC3A: FFreeStr var_8C = "": var_90 = "": UltimoNroSegunTipo = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9CFC4F: FLdRfVar var_B0
  loc_9CFC52: FLdPr Me
  loc_9CFC55: MemLdPr global_56
  loc_9CFC58:  = Me.RecordCount
  loc_9CFC5D: ILdRf var_B0
  loc_9CFC60: LitI4 0
  loc_9CFC65: GtI4
  loc_9CFC66: BranchF loc_9CFCAE
  loc_9CFC69: FLdRfVar var_D8
  loc_9CFC6C: FLdRfVar var_C8
  loc_9CFC6F: LitVarStr var_C4, "NumeMoba"
  loc_9CFC74: PopAdLdVar
  loc_9CFC75: FLdRfVar var_B4
  loc_9CFC78: FLdPr Me
  loc_9CFC7B: MemLdPr global_56
  loc_9CFC7E:  = Me.Fields
  loc_9CFC83: FLdPr var_B4
  loc_9CFC86: from_stack_2 = Me.Item(from_stack_1)
  loc_9CFC8B: FLdPr var_C8
  loc_9CFC8E:  = Me.Value
  loc_9CFC93: FLdRfVar var_D8
  loc_9CFC96: FnCLngVar
  loc_9CFC98: LitI4 1
  loc_9CFC9D: AddI4
  loc_9CFC9E: FStR4 var_88
  loc_9CFCA1: FFreeAd var_B4 = ""
  loc_9CFCA8: FFree1Var var_D8 = ""
  loc_9CFCAB: Branch loc_9CFCB6
  loc_9CFCAE: LitI4 1
  loc_9CFCB3: FStR4 var_88
  loc_9CFCB6: ExitProcCbHresult
End Function

Public Function UltimoNroDeposito(PeriInfo, CodiBanc, CodiTimb, FechMoba) '9ECBC0
  'Data Table: 4173B8
  loc_9ECABC: ILdRf FechMoba
  loc_9ECABF: FStStrCopy var_8C
  loc_9ECAC2: LitStr "SELECT NumeMoba FROM movibanco WHERE PeriInfo = "
  loc_9ECAC5: FLdI2 PeriInfo
  loc_9ECAC8: CStrUI1
  loc_9ECACA: FStStrNoPop var_90
  loc_9ECACD: ConcatStr
  loc_9ECACE: FStStrNoPop UltimoNroDeposito
  loc_9ECAD1: LitStr " AND CodiBanc = "
  loc_9ECAD4: ConcatStr
  loc_9ECAD5: FStStrNoPop var_98
  loc_9ECAD8: ILdRf CodiBanc
  loc_9ECADB: CStrI4
  loc_9ECADD: FStStrNoPop var_9C
  loc_9ECAE0: ConcatStr
  loc_9ECAE1: FStStrNoPop var_A0
  loc_9ECAE4: LitStr " AND CodiTimb = "
  loc_9ECAE7: ConcatStr
  loc_9ECAE8: FStStrNoPop var_A4
  loc_9ECAEB: FLdUI1
  loc_9ECAEF: CStrI2
  loc_9ECAF1: FStStrNoPop var_A8
  loc_9ECAF4: ConcatStr
  loc_9ECAF5: FStStrNoPop var_AC
  loc_9ECAF8: LitStr " AND FechMoba = '"
  loc_9ECAFB: ConcatStr
  loc_9ECAFC: FStStrNoPop var_E0
  loc_9ECAFF: LitI4 1
  loc_9ECB04: LitI4 1
  loc_9ECB09: LitVarStr var_CC, "yyyy-mm-dd"
  loc_9ECB0E: FStVarCopyObj var_DC
  loc_9ECB11: FLdRfVar var_DC
  loc_9ECB14: FLdRfVar var_8C
  loc_9ECB17: CVarRef
  loc_9ECB1C: ImpAdCallI2 Format$(, )
  loc_9ECB21: FStStrNoPop var_E4
  loc_9ECB24: ConcatStr
  loc_9ECB25: FStStrNoPop var_E8
  loc_9ECB28: LitStr "' ORDER BY NumeMoba DESC LIMIT 1"
  loc_9ECB2B: ConcatStr
  loc_9ECB2C: FStStrNoPop var_EC
  loc_9ECB2F: Call EjecutarRsCls(from_stack_1v)
  loc_9ECB34: FFreeStr var_90 = "": UltimoNroDeposito = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_9ECB4F: FFree1Var var_DC = ""
  loc_9ECB52: FLdRfVar var_F0
  loc_9ECB55: FLdPr Me
  loc_9ECB58: MemLdPr global_56
  loc_9ECB5B:  = Me.RecordCount
  loc_9ECB60: ILdRf var_F0
  loc_9ECB63: LitI4 0
  loc_9ECB68: GtI4
  loc_9ECB69: BranchF loc_9ECBB1
  loc_9ECB6C: FLdRfVar var_DC
  loc_9ECB6F: FLdRfVar var_F8
  loc_9ECB72: LitVarStr var_BC, "NumeMoba"
  loc_9ECB77: PopAdLdVar
  loc_9ECB78: FLdRfVar var_F4
  loc_9ECB7B: FLdPr Me
  loc_9ECB7E: MemLdPr global_56
  loc_9ECB81:  = Me.Fields
  loc_9ECB86: FLdPr var_F4
  loc_9ECB89: from_stack_2 = Me.Item(from_stack_1)
  loc_9ECB8E: FLdPr var_F8
  loc_9ECB91:  = Me.Value
  loc_9ECB96: FLdRfVar var_DC
  loc_9ECB99: FnCLngVar
  loc_9ECB9B: LitI4 1
  loc_9ECBA0: AddI4
  loc_9ECBA1: FStR4 var_88
  loc_9ECBA4: FFreeAd var_F4 = ""
  loc_9ECBAB: FFree1Var var_DC = ""
  loc_9ECBAE: Branch loc_9ECBB9
  loc_9ECBB1: LitI4 1
  loc_9ECBB6: FStR4 var_88
  loc_9ECBB9: ExitProcCbHresult
End Function

Public Function SaldoBancario(CodiBanc, FechMoba) '9C2CEC
  'Data Table: 4173B8
  loc_9C2C3C: ILdRf FechMoba
  loc_9C2C3F: FStStrCopy var_90
  loc_9C2C42: LitStr "SELECT IFNULL(Sum(DebeMoba)-Sum(HabeMoba),0) saldo"
  loc_9C2C45: LitStr " FROM movibanco"
  loc_9C2C48: ConcatStr
  loc_9C2C49: FStStrNoPop SaldoBancario
  loc_9C2C4C: LitStr " WHERE CodiBanc = "
  loc_9C2C4F: ConcatStr
  loc_9C2C50: FStStrNoPop var_98
  loc_9C2C53: ILdRf CodiBanc
  loc_9C2C56: CStrI4
  loc_9C2C58: FStStrNoPop var_9C
  loc_9C2C5B: ConcatStr
  loc_9C2C5C: FStStrNoPop var_A0
  loc_9C2C5F: LitStr " AND FechMoba <= "
  loc_9C2C62: ConcatStr
  loc_9C2C63: FStStrNoPop var_D4
  loc_9C2C66: LitI4 1
  loc_9C2C6B: LitI4 1
  loc_9C2C70: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_9C2C75: FStVarCopyObj var_D0
  loc_9C2C78: FLdRfVar var_D0
  loc_9C2C7B: FLdRfVar var_90
  loc_9C2C7E: CVarRef
  loc_9C2C83: ImpAdCallI2 Format$(, )
  loc_9C2C88: FStStrNoPop var_D8
  loc_9C2C8B: ConcatStr
  loc_9C2C8C: FStStrNoPop var_DC
  loc_9C2C8F: Call EjecutarRsCls(from_stack_1v)
  loc_9C2C94: FFreeStr SaldoBancario = "": var_98 = "": var_9C = "": var_A0 = "": var_D4 = "": var_D8 = ""
  loc_9C2CA5: FFree1Var var_D0 = ""
  loc_9C2CA8: FLdRfVar var_D0
  loc_9C2CAB: FLdRfVar var_E4
  loc_9C2CAE: LitVarStr var_B0, "Saldo"
  loc_9C2CB3: PopAdLdVar
  loc_9C2CB4: FLdRfVar var_E0
  loc_9C2CB7: FLdPr Me
  loc_9C2CBA: MemLdPr global_56
  loc_9C2CBD:  = Me.Fields
  loc_9C2CC2: FLdPr var_E0
  loc_9C2CC5: from_stack_2 = Me.Item(from_stack_1)
  loc_9C2CCA: FLdPr var_E4
  loc_9C2CCD:  = Me.Value
  loc_9C2CD2: FLdRfVar var_D0
  loc_9C2CD5: CR4Var
  loc_9C2CD6: FStFPR8 var_8C
  loc_9C2CD9: FFreeAd var_E0 = ""
  loc_9C2CE0: FFree1Var var_D0 = ""
  loc_9C2CE3: ExitProcCbHresult
End Function

Public Sub ConciliarMovibanco(PeriInfo, CodiBanc, IdMoba, FecoMoba) '9C7450
  'Data Table: 4173B8
  loc_9C73A8: ILdRf FecoMoba
  loc_9C73AB: FStStrCopy var_88
  loc_9C73AE: LitStr "UPDATE movibanco"
  loc_9C73B1: LitStr " SET FecoMoba = "
  loc_9C73B4: ConcatStr
  loc_9C73B5: FStStrNoPop var_BC
  loc_9C73B8: LitI4 1
  loc_9C73BD: LitI4 1
  loc_9C73C2: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_9C73C7: FStVarCopyObj var_B8
  loc_9C73CA: FLdRfVar var_B8
  loc_9C73CD: FLdRfVar var_88
  loc_9C73D0: CVarRef
  loc_9C73D5: ImpAdCallI2 Format$(, )
  loc_9C73DA: FStStrNoPop var_C0
  loc_9C73DD: ConcatStr
  loc_9C73DE: FStStrNoPop var_C4
  loc_9C73E1: LitStr ", FehocoMoba=Now()"
  loc_9C73E4: ConcatStr
  loc_9C73E5: FStStrNoPop var_C8
  loc_9C73E8: LitStr " WHERE PeriInfo = "
  loc_9C73EB: ConcatStr
  loc_9C73EC: FStStrNoPop var_CC
  loc_9C73EF: FLdI2 PeriInfo
  loc_9C73F2: CStrUI1
  loc_9C73F4: FStStrNoPop var_D0
  loc_9C73F7: ConcatStr
  loc_9C73F8: FStStrNoPop var_D4
  loc_9C73FB: LitStr " AND CodiBanc = "
  loc_9C73FE: ConcatStr
  loc_9C73FF: FStStrNoPop var_D8
  loc_9C7402: ILdRf CodiBanc
  loc_9C7405: CStrI4
  loc_9C7407: FStStrNoPop var_DC
  loc_9C740A: ConcatStr
  loc_9C740B: FStStrNoPop var_E0
  loc_9C740E: LitStr " AND IdMoba = "
  loc_9C7411: ConcatStr
  loc_9C7412: FStStrNoPop var_E4
  loc_9C7415: ILdRf IdMoba
  loc_9C7418: CStrI4
  loc_9C741A: FStStrNoPop var_E8
  loc_9C741D: ConcatStr
  loc_9C741E: FStStrNoPop var_EC
  loc_9C7421: LitStr ";"
  loc_9C7424: ConcatStr
  loc_9C7425: FStStrNoPop var_F0
  loc_9C7428: Call EjecutarRsCls(from_stack_1v)
  loc_9C742D: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_9C744C: FFree1Var var_B8 = ""
  loc_9C744F: ExitProcHresult
End Sub

Public Sub DesconciliarMovibanco(PeriInfo, CodiBanc, IdMoba) '9A7AC0
  'Data Table: 4173B8
  loc_9A7A54: LitStr "UPDATE movibanco"
  loc_9A7A57: LitStr " SET FecoMoba = NULL, FehocoMoba = NULL"
  loc_9A7A5A: ConcatStr
  loc_9A7A5B: FStStrNoPop var_88
  loc_9A7A5E: LitStr " WHERE PeriInfo = "
  loc_9A7A61: ConcatStr
  loc_9A7A62: FStStrNoPop var_8C
  loc_9A7A65: FLdI2 PeriInfo
  loc_9A7A68: CStrUI1
  loc_9A7A6A: FStStrNoPop var_90
  loc_9A7A6D: ConcatStr
  loc_9A7A6E: FStStrNoPop var_94
  loc_9A7A71: LitStr " AND CodiBanc = "
  loc_9A7A74: ConcatStr
  loc_9A7A75: FStStrNoPop var_98
  loc_9A7A78: ILdRf CodiBanc
  loc_9A7A7B: CStrI4
  loc_9A7A7D: FStStrNoPop var_9C
  loc_9A7A80: ConcatStr
  loc_9A7A81: FStStrNoPop var_A0
  loc_9A7A84: LitStr " AND IdMoba = "
  loc_9A7A87: ConcatStr
  loc_9A7A88: FStStrNoPop var_A4
  loc_9A7A8B: ILdRf IdMoba
  loc_9A7A8E: CStrI4
  loc_9A7A90: FStStrNoPop var_A8
  loc_9A7A93: ConcatStr
  loc_9A7A94: FStStrNoPop var_AC
  loc_9A7A97: LitStr ";"
  loc_9A7A9A: ConcatStr
  loc_9A7A9B: FStStrNoPop var_B0
  loc_9A7A9E: Call EjecutarRsCls(from_stack_1v)
  loc_9A7AA3: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_9A7ABC: ExitProcHresult
End Sub

Public Sub ConciliarMoviextracto(PeriInfo, CodiBanc, IdMobaex, FecoMoba) '9C7F40
  'Data Table: 4173B8
  loc_9C7E98: ILdRf FecoMoba
  loc_9C7E9B: FStStrCopy var_88
  loc_9C7E9E: LitStr "UPDATE moviextracto"
  loc_9C7EA1: LitStr " SET FecoMoba = "
  loc_9C7EA4: ConcatStr
  loc_9C7EA5: FStStrNoPop var_BC
  loc_9C7EA8: LitI4 1
  loc_9C7EAD: LitI4 1
  loc_9C7EB2: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_9C7EB7: FStVarCopyObj var_B8
  loc_9C7EBA: FLdRfVar var_B8
  loc_9C7EBD: FLdRfVar var_88
  loc_9C7EC0: CVarRef
  loc_9C7EC5: ImpAdCallI2 Format$(, )
  loc_9C7ECA: FStStrNoPop var_C0
  loc_9C7ECD: ConcatStr
  loc_9C7ECE: FStStrNoPop var_C4
  loc_9C7ED1: LitStr ", FehocoMoba=Now()"
  loc_9C7ED4: ConcatStr
  loc_9C7ED5: FStStrNoPop var_C8
  loc_9C7ED8: LitStr " WHERE PeriInfo = "
  loc_9C7EDB: ConcatStr
  loc_9C7EDC: FStStrNoPop var_CC
  loc_9C7EDF: FLdI2 PeriInfo
  loc_9C7EE2: CStrUI1
  loc_9C7EE4: FStStrNoPop var_D0
  loc_9C7EE7: ConcatStr
  loc_9C7EE8: FStStrNoPop var_D4
  loc_9C7EEB: LitStr " AND CodiBanc = "
  loc_9C7EEE: ConcatStr
  loc_9C7EEF: FStStrNoPop var_D8
  loc_9C7EF2: ILdRf CodiBanc
  loc_9C7EF5: CStrI4
  loc_9C7EF7: FStStrNoPop var_DC
  loc_9C7EFA: ConcatStr
  loc_9C7EFB: FStStrNoPop var_E0
  loc_9C7EFE: LitStr " AND IdMobaex = "
  loc_9C7F01: ConcatStr
  loc_9C7F02: FStStrNoPop var_E4
  loc_9C7F05: ILdRf IdMobaex
  loc_9C7F08: CStrI4
  loc_9C7F0A: FStStrNoPop var_E8
  loc_9C7F0D: ConcatStr
  loc_9C7F0E: FStStrNoPop var_EC
  loc_9C7F11: LitStr ";"
  loc_9C7F14: ConcatStr
  loc_9C7F15: FStStrNoPop var_F0
  loc_9C7F18: Call EjecutarRsCls(from_stack_1v)
  loc_9C7F1D: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_9C7F3C: FFree1Var var_B8 = ""
  loc_9C7F3F: ExitProcHresult
End Sub

Public Sub DesconciliarMoviextracto(PeriInfo, CodiBanc, IdMobaex) '9A6BE8
  'Data Table: 4173B8
  loc_9A6B7C: LitStr "UPDATE moviextracto"
  loc_9A6B7F: LitStr " SET FecoMoba = NULL, FehocoMoba = NULL"
  loc_9A6B82: ConcatStr
  loc_9A6B83: FStStrNoPop var_88
  loc_9A6B86: LitStr " WHERE PeriInfo = "
  loc_9A6B89: ConcatStr
  loc_9A6B8A: FStStrNoPop var_8C
  loc_9A6B8D: FLdI2 PeriInfo
  loc_9A6B90: CStrUI1
  loc_9A6B92: FStStrNoPop var_90
  loc_9A6B95: ConcatStr
  loc_9A6B96: FStStrNoPop var_94
  loc_9A6B99: LitStr " AND CodiBanc = "
  loc_9A6B9C: ConcatStr
  loc_9A6B9D: FStStrNoPop var_98
  loc_9A6BA0: ILdRf CodiBanc
  loc_9A6BA3: CStrI4
  loc_9A6BA5: FStStrNoPop var_9C
  loc_9A6BA8: ConcatStr
  loc_9A6BA9: FStStrNoPop var_A0
  loc_9A6BAC: LitStr " AND IdMobaex = "
  loc_9A6BAF: ConcatStr
  loc_9A6BB0: FStStrNoPop var_A4
  loc_9A6BB3: ILdRf IdMobaex
  loc_9A6BB6: CStrI4
  loc_9A6BB8: FStStrNoPop var_A8
  loc_9A6BBB: ConcatStr
  loc_9A6BBC: FStStrNoPop var_AC
  loc_9A6BBF: LitStr ";"
  loc_9A6BC2: ConcatStr
  loc_9A6BC3: FStStrNoPop var_B0
  loc_9A6BC6: Call EjecutarRsCls(from_stack_1v)
  loc_9A6BCB: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_9A6BE4: ExitProcHresult
End Sub

Private Function Proc_18_34_9730A0() '9730A0
  'Data Table: 4173B8
  loc_97307C: LitStr "Primary"
  loc_97307F: FLdPr Me
  loc_973082: LateIdLdVar var_94 DispID_4 0
  loc_973089: CastAdVar Me
  loc_97308D: FStAdFunc var_98
  loc_973090: FLdPr var_98
  loc_973098: FFree1Ad var_98
  loc_97309B: FFree1Var var_94 = ""
  loc_97309E: ExitProcHresult
End Function

Private Function Proc_18_35_968B5C(arg_C) '968B5C
  'Data Table: 4173B8
  loc_968B40: ILdI4 arg_C
  loc_968B43: FStStrCopy var_88
  loc_968B46: ILdRf var_88
  loc_968B49: LitStr "Primary"
  loc_968B4C: EqStr
  loc_968B4E: BranchF loc_968B5B
  loc_968B51: FLdPr Me
  loc_968B54: MemLdStr RsFrm
  loc_968B57: IStAd
  loc_968B5B: ExitProcHresult
End Function
