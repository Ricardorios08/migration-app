VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsservinmu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '430548
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '430557
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '430566
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9EA444
  'Data Table: 4301F4
  loc_9EA41C: FLdRfVar var_88
  loc_9EA41F: FLdPr Me
  loc_9EA422: MemLdPr RsFrm
  loc_9EA425:  = Me.RecordCount
  loc_9EA42A: ILdRf var_88
  loc_9EA42D: LitI4 0
  loc_9EA432: GtI4
  loc_9EA433: BranchF loc_9EA441
  loc_9EA436: FLdPr Me
  loc_9EA439: MemLdPr RsFrm
  loc_9EA43C: Me.MoveFirst
  loc_9EA441: ExitProcHresult
  loc_9EA442: FLdPrThis
End Sub

Public Sub MoveLast() '9EA4F4
  'Data Table: 4301F4
  loc_9EA4CC: FLdRfVar var_88
  loc_9EA4CF: FLdPr Me
  loc_9EA4D2: MemLdPr RsFrm
  loc_9EA4D5:  = Me.RecordCount
  loc_9EA4DA: ILdRf var_88
  loc_9EA4DD: LitI4 0
  loc_9EA4E2: GtI4
  loc_9EA4E3: BranchF loc_9EA4F1
  loc_9EA4E6: FLdPr Me
  loc_9EA4E9: MemLdPr RsFrm
  loc_9EA4EC: Me.MoveLast
  loc_9EA4F1: ExitProcHresult
End Sub

Public Sub MoveNext() 'A52610
  'Data Table: 4301F4
  loc_A525B0: FLdRfVar var_86
  loc_A525B3: FLdPr Me
  loc_A525B6: MemLdPr RsFrm
  loc_A525B9:  = Me.EOF
  loc_A525BE: FLdI2 var_86
  loc_A525C1: NotI4
  loc_A525C2: BranchF loc_A525D0
  loc_A525C5: FLdPr Me
  loc_A525C8: MemLdPr RsFrm
  loc_A525CB: Me.MoveNext
  loc_A525D0: FLdRfVar var_86
  loc_A525D3: FLdPr Me
  loc_A525D6: MemLdPr RsFrm
  loc_A525D9:  = Me.EOF
  loc_A525DE: FLdI2 var_86
  loc_A525E1: FLdRfVar var_8C
  loc_A525E4: FLdPr Me
  loc_A525E7: MemLdPr RsFrm
  loc_A525EA:  = Me.RecordCount
  loc_A525EF: ILdRf var_8C
  loc_A525F2: LitI4 0
  loc_A525F7: GtI4
  loc_A525F8: AndI4
  loc_A525F9: BranchF loc_A5260C
  loc_A525FC: ImpAdCallFPR4 Beep()
  loc_A52601: FLdPr Me
  loc_A52604: MemLdPr RsFrm
  loc_A52607: Me.MoveLast
  loc_A5260C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B1E48
  'Data Table: 4301F4
  loc_9B1E3C: FLdPr Me
  loc_9B1E3F: MemLdPr RsFrm
  loc_9B1E42: Me.MoveNext
  loc_9B1E47: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A535D0
  'Data Table: 4301F4
  loc_A53570: FLdRfVar var_86
  loc_A53573: FLdPr Me
  loc_A53576: MemLdPr RsFrm
  loc_A53579:  = Me.BOF
  loc_A5357E: FLdI2 var_86
  loc_A53581: NotI4
  loc_A53582: BranchF loc_A53590
  loc_A53585: FLdPr Me
  loc_A53588: MemLdPr RsFrm
  loc_A5358B: Me.MovePrevious
  loc_A53590: FLdRfVar var_86
  loc_A53593: FLdPr Me
  loc_A53596: MemLdPr RsFrm
  loc_A53599:  = Me.BOF
  loc_A5359E: FLdI2 var_86
  loc_A535A1: FLdRfVar var_8C
  loc_A535A4: FLdPr Me
  loc_A535A7: MemLdPr RsFrm
  loc_A535AA:  = Me.RecordCount
  loc_A535AF: ILdRf var_8C
  loc_A535B2: LitI4 0
  loc_A535B7: GtI4
  loc_A535B8: AndI4
  loc_A535B9: BranchF loc_A535CC
  loc_A535BC: ImpAdCallFPR4 Beep()
  loc_A535C1: FLdPr Me
  loc_A535C4: MemLdPr RsFrm
  loc_A535C7: Me.MoveFirst
  loc_A535CC: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B9A24
  'Data Table: 4301F4
  loc_9B9A10: LitVar_Missing var_94
  loc_9B9A13: PopAdLdVar
  loc_9B9A14: ILdI2 iValor
  loc_9B9A17: CI4UI1
  loc_9B9A18: FLdPr Me
  loc_9B9A1B: MemLdPr RsFrm
  loc_9B9A1E: Me.Move from_stack_1, from_stack_2
  loc_9B9A23: ExitProcHresult
End Sub

Public Property Get EOF() '9DB504
  'Data Table: 4301F4
  loc_9DB4E8: FLdRfVar var_88
  loc_9DB4EB: FLdPr Me
  loc_9DB4EE: MemLdPr RsFrm
  loc_9DB4F1:  = Me.EOF
  loc_9DB4F6: FLdI2 var_88
  loc_9DB4F9: FStI2 var_86
  loc_9DB4FC: ExitProcCbHresult
End Sub

Public Property Get BOF() '9DB4B8
  'Data Table: 4301F4
  loc_9DB49C: FLdRfVar var_88
  loc_9DB49F: FLdPr Me
  loc_9DB4A2: MemLdPr RsFrm
  loc_9DB4A5:  = Me.BOF
  loc_9DB4AA: FLdI2 var_88
  loc_9DB4AD: FStI2 var_86
  loc_9DB4B0: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B6DB8
  'Data Table: 4301F4
  loc_9B6DA8: ILdI4 sOrden
  loc_9B6DAB: FLdPr Me
  loc_9B6DAE: MemLdPr RsFrm
  loc_9B6DB1: Me.Sort = from_stack_1
  loc_9B6DB6: ExitProcHresult
End Sub

Public Sub Find(sCriterio) '9E2720
  'Data Table: 4301F4
  loc_9E2700: LitVar_Missing var_94
  loc_9E2703: PopAdLdVar
  loc_9E2704: LitI4 1
  loc_9E2709: LitI4 0
  loc_9E270E: ILdI4 sCriterio
  loc_9E2711: FLdPr Me
  loc_9E2714: MemLdPr RsFrm
  loc_9E2717: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E271C: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D49D8
  'Data Table: 4301F4
  loc_9D49BC: FLdRfVar var_8C
  loc_9D49BF: FLdPr Me
  loc_9D49C2: MemLdPr RsFrm
  loc_9D49C5:  = Me.AbsolutePosition
  loc_9D49CA: ILdRf var_8C
  loc_9D49CD: FStR4 var_88
  loc_9D49D0: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D4940
  'Data Table: 4301F4
  loc_9D4924: FLdRfVar var_8C
  loc_9D4927: FLdPr Me
  loc_9D492A: MemLdPr RsFrm
  loc_9D492D:  = Me.RecordCount
  loc_9D4932: ILdRf var_8C
  loc_9D4935: FStR4 var_88
  loc_9D4938: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiInmu, NumeFrin, CodiSeca, FedeSein, CantSein, ExpeSein) 'B0CA14
  'Data Table: 4301F4
  loc_B0C850: ILdRf FedeSein
  loc_B0C853: FStStrCopy var_88
  loc_B0C856: ILdRf arg_24
  loc_B0C859: FStStrCopy var_8C
  loc_B0C85C: FLdRfVar var_90
  loc_B0C85F: FLdI2 CodiSeca
  loc_B0C862: FLdUI1
  loc_B0C866: ILdRf CodiInmu
  loc_B0C869: from_stack_4v = NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B0C86E: FLdUI1
  loc_B0C872: FStUI1 var_8E
  loc_B0C876: FLdRfVar var_94
  loc_B0C879: FLdUI1
  loc_B0C87D: FLdI2 CodiSeca
  loc_B0C880: FLdUI1
  loc_B0C884: ILdRf CodiInmu
  loc_B0C887: from_stack_5v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B0C88C: ILdRf var_94
  loc_B0C88F: LitStr vbNullString
  loc_B0C892: NeStr
  loc_B0C894: FFree1Str var_94
  loc_B0C897: BranchF loc_B0C8A5
  loc_B0C89A: LitStr "El SERVICIO DEL INMUEBLE YA EXISTE. Reintente..."
  loc_B0C89D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B0C8A2: Branch loc_B0CA11
  loc_B0C8A5: LitI2_Byte 0
  loc_B0C8A7: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B0C8AC: FStFPR8 var_174
  loc_B0C8AF: LitStr "INSERT INTO servinmu (CodiInmu, NumeFrin, CodiSeca, CodiSein, FealSein, FedeSein, EstaSein, ExpeSein, CantSein, CodiUsua) "
  loc_B0C8B2: LitStr "VALUES ("
  loc_B0C8B5: ConcatStr
  loc_B0C8B6: FStStrNoPop var_94
  loc_B0C8B9: ILdRf CodiInmu
  loc_B0C8BC: CStrI4
  loc_B0C8BE: FStStrNoPop var_98
  loc_B0C8C1: ConcatStr
  loc_B0C8C2: FStStrNoPop var_9C
  loc_B0C8C5: LitStr ","
  loc_B0C8C8: ConcatStr
  loc_B0C8C9: FStStrNoPop var_A0
  loc_B0C8CC: FLdUI1
  loc_B0C8D0: CStrI2
  loc_B0C8D2: FStStrNoPop var_A4
  loc_B0C8D5: ConcatStr
  loc_B0C8D6: FStStrNoPop var_A8
  loc_B0C8D9: LitStr ","
  loc_B0C8DC: ConcatStr
  loc_B0C8DD: FStStrNoPop var_AC
  loc_B0C8E0: FLdI2 CodiSeca
  loc_B0C8E3: CStrUI1
  loc_B0C8E5: FStStrNoPop var_B0
  loc_B0C8E8: ConcatStr
  loc_B0C8E9: FStStrNoPop var_B4
  loc_B0C8EC: LitStr ","
  loc_B0C8EF: ConcatStr
  loc_B0C8F0: FStStrNoPop var_B8
  loc_B0C8F3: FLdUI1
  loc_B0C8F7: CStrI2
  loc_B0C8F9: FStStrNoPop var_BC
  loc_B0C8FC: ConcatStr
  loc_B0C8FD: FStStrNoPop var_C0
  loc_B0C900: LitStr ",'"
  loc_B0C903: ConcatStr
  loc_B0C904: FStStrNoPop var_104
  loc_B0C907: LitI4 1
  loc_B0C90C: LitI4 1
  loc_B0C911: LitVarStr var_F0, "yyyy-mm-dd"
  loc_B0C916: FStVarCopyObj var_100
  loc_B0C919: FLdRfVar var_100
  loc_B0C91C: FLdFPR8 var_174
  loc_B0C91F: CVarDate var_E0
  loc_B0C923: ImpAdCallI2 Format$(, )
  loc_B0C928: FStStrNoPop var_108
  loc_B0C92B: ConcatStr
  loc_B0C92C: FStStrNoPop var_10C
  loc_B0C92F: LitStr "','"
  loc_B0C932: ConcatStr
  loc_B0C933: FStStrNoPop var_140
  loc_B0C936: LitI4 1
  loc_B0C93B: LitI4 1
  loc_B0C940: LitVarStr var_12C, "yyyy-mm-dd"
  loc_B0C945: FStVarCopyObj var_13C
  loc_B0C948: FLdRfVar var_13C
  loc_B0C94B: FLdRfVar var_88
  loc_B0C94E: CVarRef
  loc_B0C953: ImpAdCallI2 Format$(, )
  loc_B0C958: FStStrNoPop var_144
  loc_B0C95B: ConcatStr
  loc_B0C95C: FStStrNoPop var_148
  loc_B0C95F: LitStr "','Activo','"
  loc_B0C962: ConcatStr
  loc_B0C963: FStStrNoPop var_14C
  loc_B0C966: ILdRf var_8C
  loc_B0C969: ConcatStr
  loc_B0C96A: FStStrNoPop var_150
  loc_B0C96D: LitStr "',"
  loc_B0C970: ConcatStr
  loc_B0C971: FStStrNoPop var_158
  loc_B0C974: LitI4 0
  loc_B0C979: LitI4 -1
  loc_B0C97E: LitI4 1
  loc_B0C983: LitStr "."
  loc_B0C986: LitStr ","
  loc_B0C989: FLdFPR8 CantSein
  loc_B0C98C: CStrR8
  loc_B0C98E: FStStrNoPop var_154
  loc_B0C991: ImpAdCallI2 Replace(, , , , , )
  loc_B0C996: FStStrNoPop var_15C
  loc_B0C999: ConcatStr
  loc_B0C99A: FStStrNoPop var_160
  loc_B0C99D: LitStr ",'"
  loc_B0C9A0: ConcatStr
  loc_B0C9A1: FStStrNoPop var_164
  loc_B0C9A4: ImpAdLdI4 MemVar_D9302C
  loc_B0C9A7: ConcatStr
  loc_B0C9A8: FStStrNoPop var_168
  loc_B0C9AB: LitStr "');"
  loc_B0C9AE: ConcatStr
  loc_B0C9AF: FStStrNoPop var_16C
  loc_B0C9B2: Call EjecutarRsCls(from_stack_1v)
  loc_B0C9B7: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_104 = "": var_108 = "": var_10C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_B0C9F0: FFreeVar var_E0 = "": var_100 = ""
  loc_B0C9F9: Call Requery()
  loc_B0C9FE: FLdUI1
  loc_B0CA02: FLdI2 CodiSeca
  loc_B0CA05: FLdUI1
  loc_B0CA09: ILdRf CodiInmu
  loc_B0CA0C: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B0CA11: ExitProcHresult
End Sub

Public Sub AddNewMigracion(CodiInmu, NumeFrin, CodiSeca, FedeSein, CantSein) 'AF6A20
  'Data Table: 4301F4
  loc_AF68BC: ILdRf FedeSein
  loc_AF68BF: FStStrCopy var_88
  loc_AF68C2: FLdRfVar var_8C
  loc_AF68C5: FLdI2 CodiSeca
  loc_AF68C8: FLdUI1
  loc_AF68CC: ILdRf CodiInmu
  loc_AF68CF: from_stack_4v = NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AF68D4: FLdUI1
  loc_AF68D8: FStUI1 var_8A
  loc_AF68DC: LitI2_Byte 0
  loc_AF68DE: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF68E3: FStFPR8 var_168
  loc_AF68E6: LitStr "INSERT INTO servinmu (CodiInmu, NumeFrin, CodiSeca, CodiSein, FealSein, FedeSein, EstaSein, CantSein, CodiUsua) "
  loc_AF68E9: LitStr "VALUES ("
  loc_AF68EC: ConcatStr
  loc_AF68ED: FStStrNoPop var_90
  loc_AF68F0: ILdRf CodiInmu
  loc_AF68F3: CStrI4
  loc_AF68F5: FStStrNoPop var_94
  loc_AF68F8: ConcatStr
  loc_AF68F9: FStStrNoPop var_98
  loc_AF68FC: LitStr ","
  loc_AF68FF: ConcatStr
  loc_AF6900: FStStrNoPop var_9C
  loc_AF6903: FLdUI1
  loc_AF6907: CStrI2
  loc_AF6909: FStStrNoPop var_A0
  loc_AF690C: ConcatStr
  loc_AF690D: FStStrNoPop var_A4
  loc_AF6910: LitStr ","
  loc_AF6913: ConcatStr
  loc_AF6914: FStStrNoPop var_A8
  loc_AF6917: FLdI2 CodiSeca
  loc_AF691A: CStrUI1
  loc_AF691C: FStStrNoPop var_AC
  loc_AF691F: ConcatStr
  loc_AF6920: FStStrNoPop var_B0
  loc_AF6923: LitStr ","
  loc_AF6926: ConcatStr
  loc_AF6927: FStStrNoPop var_B4
  loc_AF692A: FLdUI1
  loc_AF692E: CStrI2
  loc_AF6930: FStStrNoPop var_B8
  loc_AF6933: ConcatStr
  loc_AF6934: FStStrNoPop var_BC
  loc_AF6937: LitStr ",'"
  loc_AF693A: ConcatStr
  loc_AF693B: FStStrNoPop var_100
  loc_AF693E: LitI4 1
  loc_AF6943: LitI4 1
  loc_AF6948: LitVarStr var_EC, "yyyy-mm-dd"
  loc_AF694D: FStVarCopyObj var_FC
  loc_AF6950: FLdRfVar var_FC
  loc_AF6953: FLdFPR8 var_168
  loc_AF6956: CVarDate var_DC
  loc_AF695A: ImpAdCallI2 Format$(, )
  loc_AF695F: FStStrNoPop var_104
  loc_AF6962: ConcatStr
  loc_AF6963: FStStrNoPop var_108
  loc_AF6966: LitStr "','"
  loc_AF6969: ConcatStr
  loc_AF696A: FStStrNoPop var_13C
  loc_AF696D: LitI4 1
  loc_AF6972: LitI4 1
  loc_AF6977: LitVarStr var_128, "yyyy-mm-dd"
  loc_AF697C: FStVarCopyObj var_138
  loc_AF697F: FLdRfVar var_138
  loc_AF6982: FLdRfVar var_88
  loc_AF6985: CVarRef
  loc_AF698A: ImpAdCallI2 Format$(, )
  loc_AF698F: FStStrNoPop var_140
  loc_AF6992: ConcatStr
  loc_AF6993: FStStrNoPop var_144
  loc_AF6996: LitStr "','Activo',"
  loc_AF6999: ConcatStr
  loc_AF699A: FStStrNoPop var_14C
  loc_AF699D: LitI4 0
  loc_AF69A2: LitI4 -1
  loc_AF69A7: LitI4 1
  loc_AF69AC: LitStr "."
  loc_AF69AF: LitStr ","
  loc_AF69B2: FLdFPR8 CantSein
  loc_AF69B5: CStrR8
  loc_AF69B7: FStStrNoPop var_148
  loc_AF69BA: ImpAdCallI2 Replace(, , , , , )
  loc_AF69BF: FStStrNoPop var_150
  loc_AF69C2: ConcatStr
  loc_AF69C3: FStStrNoPop var_154
  loc_AF69C6: LitStr ",'"
  loc_AF69C9: ConcatStr
  loc_AF69CA: FStStrNoPop var_158
  loc_AF69CD: ImpAdLdI4 MemVar_D9302C
  loc_AF69D0: ConcatStr
  loc_AF69D1: FStStrNoPop var_15C
  loc_AF69D4: LitStr "');"
  loc_AF69D7: ConcatStr
  loc_AF69D8: FStStrNoPop var_160
  loc_AF69DB: Call EjecutarRsCls(from_stack_1v)
  loc_AF69E0: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_100 = "": var_104 = "": var_108 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_AF6A15: FFreeVar var_DC = "": var_FC = ""
  loc_AF6A1E: ExitProcHresult
  loc_AF6A1F: ExitProcR8
End Sub

Public Sub Modificar(CodiInmu, NumeFrin, CodiSeca, CodiSein, FedeSein, CantSein, ExpeSein) 'AEAE34
  'Data Table: 4301F4
  loc_AEACF4: ILdRf FedeSein
  loc_AEACF7: FStStrCopy var_88
  loc_AEACFA: ILdRf arg_28
  loc_AEACFD: FStStrCopy var_8C
  loc_AEAD00: FLdRfVar var_90
  loc_AEAD03: FLdUI1
  loc_AEAD07: FLdI2 CodiSeca
  loc_AEAD0A: FLdUI1
  loc_AEAD0E: ILdRf CodiInmu
  loc_AEAD11: from_stack_5v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_AEAD16: ILdRf var_90
  loc_AEAD19: LitStr vbNullString
  loc_AEAD1C: EqStr
  loc_AEAD1E: FFree1Str var_90
  loc_AEAD21: BranchF loc_AEAD2F
  loc_AEAD24: LitStr "El SERVICIO DEL INMUEBLE NO EXISTE. Reintente..."
  loc_AEAD27: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEAD2C: Branch loc_AEAE1A
  loc_AEAD2F: LitStr "UPDATE servinmu SET FedeSein = '"
  loc_AEAD32: LitI4 1
  loc_AEAD37: LitI4 1
  loc_AEAD3C: LitVarStr var_B0, "yyyy-mm-dd"
  loc_AEAD41: FStVarCopyObj var_C0
  loc_AEAD44: FLdRfVar var_C0
  loc_AEAD47: FLdRfVar var_88
  loc_AEAD4A: CVarRef
  loc_AEAD4F: ImpAdCallI2 Format$(, )
  loc_AEAD54: FStStrNoPop var_90
  loc_AEAD57: ConcatStr
  loc_AEAD58: FStStrNoPop var_C4
  loc_AEAD5B: LitStr "', ExpeSein = '"
  loc_AEAD5E: ConcatStr
  loc_AEAD5F: FStStrNoPop var_C8
  loc_AEAD62: ILdRf var_8C
  loc_AEAD65: ConcatStr
  loc_AEAD66: FStStrNoPop var_CC
  loc_AEAD69: LitStr "', CantSein = "
  loc_AEAD6C: ConcatStr
  loc_AEAD6D: FStStrNoPop var_D4
  loc_AEAD70: LitI4 0
  loc_AEAD75: LitI4 -1
  loc_AEAD7A: LitI4 1
  loc_AEAD7F: LitStr "."
  loc_AEAD82: LitStr ","
  loc_AEAD85: FLdFPR8 CantSein
  loc_AEAD88: CStrR8
  loc_AEAD8A: FStStrNoPop var_D0
  loc_AEAD8D: ImpAdCallI2 Replace(, , , , , )
  loc_AEAD92: FStStrNoPop var_D8
  loc_AEAD95: ConcatStr
  loc_AEAD96: FStStrNoPop var_DC
  loc_AEAD99: LitStr " WHERE CodiInmu = "
  loc_AEAD9C: ConcatStr
  loc_AEAD9D: FStStrNoPop var_E0
  loc_AEADA0: ILdRf CodiInmu
  loc_AEADA3: CStrI4
  loc_AEADA5: FStStrNoPop var_E4
  loc_AEADA8: ConcatStr
  loc_AEADA9: FStStrNoPop var_E8
  loc_AEADAC: LitStr " AND NumeFrin = "
  loc_AEADAF: ConcatStr
  loc_AEADB0: FStStrNoPop var_EC
  loc_AEADB3: FLdUI1
  loc_AEADB7: CStrI2
  loc_AEADB9: FStStrNoPop var_F0
  loc_AEADBC: ConcatStr
  loc_AEADBD: FStStrNoPop var_F4
  loc_AEADC0: LitStr " AND CodiSeca = "
  loc_AEADC3: ConcatStr
  loc_AEADC4: FStStrNoPop var_F8
  loc_AEADC7: FLdI2 CodiSeca
  loc_AEADCA: CStrUI1
  loc_AEADCC: FStStrNoPop var_FC
  loc_AEADCF: ConcatStr
  loc_AEADD0: FStStrNoPop var_100
  loc_AEADD3: LitStr " AND CodiSein = "
  loc_AEADD6: ConcatStr
  loc_AEADD7: FStStrNoPop var_104
  loc_AEADDA: FLdUI1
  loc_AEADDE: CStrI2
  loc_AEADE0: FStStrNoPop var_108
  loc_AEADE3: ConcatStr
  loc_AEADE4: FStStrNoPop var_10C
  loc_AEADE7: Call EjecutarRsCls(from_stack_1v)
  loc_AEADEC: FFreeStr var_90 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_AEAE17: FFree1Var var_C0 = ""
  loc_AEAE1A: Call Requery()
  loc_AEAE1F: FLdUI1
  loc_AEAE23: FLdI2 CodiSeca
  loc_AEAE26: FLdUI1
  loc_AEAE2A: ILdRf CodiInmu
  loc_AEAE2D: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_AEAE32: ExitProcHresult
End Sub

Public Sub Anulando(CodiInmu, NumeFrin, CodiSeca, CodiSein, FehaSein, ExpeSein, CantSein) 'AEBC94
  'Data Table: 4301F4
  loc_AEBB54: ILdRf FehaSein
  loc_AEBB57: FStStrCopy var_88
  loc_AEBB5A: ILdRf ExpeSein
  loc_AEBB5D: FStStrCopy var_8C
  loc_AEBB60: FLdRfVar var_90
  loc_AEBB63: FLdUI1
  loc_AEBB67: FLdI2 CodiSeca
  loc_AEBB6A: FLdUI1
  loc_AEBB6E: ILdRf CodiInmu
  loc_AEBB71: from_stack_5v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_AEBB76: ILdRf var_90
  loc_AEBB79: LitStr vbNullString
  loc_AEBB7C: EqStr
  loc_AEBB7E: FFree1Str var_90
  loc_AEBB81: BranchF loc_AEBB8F
  loc_AEBB84: LitStr "El SERVICIO DEL INMUEBLE NO EXISTE. Reintente..."
  loc_AEBB87: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEBB8C: Branch loc_AEBC7A
  loc_AEBB8F: LitStr "UPDATE servinmu SET FehaSein = '"
  loc_AEBB92: LitI4 1
  loc_AEBB97: LitI4 1
  loc_AEBB9C: LitVarStr var_B0, "yyyy-mm-dd"
  loc_AEBBA1: FStVarCopyObj var_C0
  loc_AEBBA4: FLdRfVar var_C0
  loc_AEBBA7: FLdRfVar var_88
  loc_AEBBAA: CVarRef
  loc_AEBBAF: ImpAdCallI2 Format$(, )
  loc_AEBBB4: FStStrNoPop var_90
  loc_AEBBB7: ConcatStr
  loc_AEBBB8: FStStrNoPop var_C4
  loc_AEBBBB: LitStr "', EstaSein = 'Inactivo', ExpeSein = '"
  loc_AEBBBE: ConcatStr
  loc_AEBBBF: FStStrNoPop var_C8
  loc_AEBBC2: ILdRf var_8C
  loc_AEBBC5: ConcatStr
  loc_AEBBC6: FStStrNoPop var_CC
  loc_AEBBC9: LitStr "', CantSein = "
  loc_AEBBCC: ConcatStr
  loc_AEBBCD: FStStrNoPop var_D4
  loc_AEBBD0: LitI4 0
  loc_AEBBD5: LitI4 -1
  loc_AEBBDA: LitI4 1
  loc_AEBBDF: LitStr "."
  loc_AEBBE2: LitStr ","
  loc_AEBBE5: FLdFPR8 CantSein
  loc_AEBBE8: CStrR8
  loc_AEBBEA: FStStrNoPop var_D0
  loc_AEBBED: ImpAdCallI2 Replace(, , , , , )
  loc_AEBBF2: FStStrNoPop var_D8
  loc_AEBBF5: ConcatStr
  loc_AEBBF6: FStStrNoPop var_DC
  loc_AEBBF9: LitStr " WHERE CodiInmu = "
  loc_AEBBFC: ConcatStr
  loc_AEBBFD: FStStrNoPop var_E0
  loc_AEBC00: ILdRf CodiInmu
  loc_AEBC03: CStrI4
  loc_AEBC05: FStStrNoPop var_E4
  loc_AEBC08: ConcatStr
  loc_AEBC09: FStStrNoPop var_E8
  loc_AEBC0C: LitStr " AND NumeFrin = "
  loc_AEBC0F: ConcatStr
  loc_AEBC10: FStStrNoPop var_EC
  loc_AEBC13: FLdUI1
  loc_AEBC17: CStrI2
  loc_AEBC19: FStStrNoPop var_F0
  loc_AEBC1C: ConcatStr
  loc_AEBC1D: FStStrNoPop var_F4
  loc_AEBC20: LitStr " AND CodiSeca = "
  loc_AEBC23: ConcatStr
  loc_AEBC24: FStStrNoPop var_F8
  loc_AEBC27: FLdI2 CodiSeca
  loc_AEBC2A: CStrUI1
  loc_AEBC2C: FStStrNoPop var_FC
  loc_AEBC2F: ConcatStr
  loc_AEBC30: FStStrNoPop var_100
  loc_AEBC33: LitStr " AND CodiSein = "
  loc_AEBC36: ConcatStr
  loc_AEBC37: FStStrNoPop var_104
  loc_AEBC3A: FLdUI1
  loc_AEBC3E: CStrI2
  loc_AEBC40: FStStrNoPop var_108
  loc_AEBC43: ConcatStr
  loc_AEBC44: FStStrNoPop var_10C
  loc_AEBC47: Call EjecutarRsCls(from_stack_1v)
  loc_AEBC4C: FFreeStr var_90 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_AEBC77: FFree1Var var_C0 = ""
  loc_AEBC7A: Call Requery()
  loc_AEBC7F: FLdUI1
  loc_AEBC83: FLdI2 CodiSeca
  loc_AEBC86: FLdUI1
  loc_AEBC8A: ILdRf CodiInmu
  loc_AEBC8D: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_AEBC92: ExitProcHresult
End Sub

Public Sub AnulandoServInmu(CodiInmu, BajaFeho) 'A77958
  'Data Table: 4301F4
  loc_A778F4: ILdRf BajaFeho
  loc_A778F7: FStStrCopy var_88
  loc_A778FA: LitStr "UPDATE servinmu SET EstaSein = 'Inactivo', FehaSein = '"
  loc_A778FD: LitI4 1
  loc_A77902: LitI4 1
  loc_A77907: LitVarStr var_A8, "yyyy-mm-dd"
  loc_A7790C: FStVarCopyObj var_B8
  loc_A7790F: FLdRfVar var_B8
  loc_A77912: FLdRfVar var_88
  loc_A77915: CVarRef
  loc_A7791A: ImpAdCallI2 Format$(, )
  loc_A7791F: FStStrNoPop var_BC
  loc_A77922: ConcatStr
  loc_A77923: FStStrNoPop var_C0
  loc_A77926: LitStr "' WHERE CodiInmu = "
  loc_A77929: ConcatStr
  loc_A7792A: FStStrNoPop var_C4
  loc_A7792D: ILdRf CodiInmu
  loc_A77930: CStrI4
  loc_A77932: FStStrNoPop var_C8
  loc_A77935: ConcatStr
  loc_A77936: FStStrNoPop var_CC
  loc_A77939: LitStr " AND FehaSein IS NULL"
  loc_A7793C: ConcatStr
  loc_A7793D: FStStrNoPop var_D0
  loc_A77940: Call EjecutarRsCls(from_stack_1v)
  loc_A77945: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A77954: FFree1Var var_B8 = ""
  loc_A77957: ExitProcHresult
End Sub

Public Sub Delete() '9FC1B8
  'Data Table: 4301F4
  loc_9FC188: FLdRfVar var_88
  loc_9FC18B: FLdPr Me
  loc_9FC18E: MemLdPr RsFrm
  loc_9FC191:  = Me.RecordCount
  loc_9FC196: ILdRf var_88
  loc_9FC199: LitI4 0
  loc_9FC19E: GtI4
  loc_9FC19F: BranchF loc_9FC1B7
  loc_9FC1A2: LitI4 1
  loc_9FC1A7: FLdPr Me
  loc_9FC1AA: MemLdPr RsFrm
  loc_9FC1AD: Me.Delete
  loc_9FC1B2: Call MoveNext()
  loc_9FC1B7: ExitProcHresult
End Sub

Public Sub Requery() '9E55EC
  'Data Table: 4301F4
  loc_9E55C8: LitI4 -1
  loc_9E55CD: FLdPr Me
  loc_9E55D0: MemLdPr RsFrm
  loc_9E55D3: Me.Requery from_stack_1
  loc_9E55D8: LitVarStr var_94, "Primary"
  loc_9E55DD: PopAdLdVar
  loc_9E55DE: FLdPr Me
  loc_9E55E1: LateIdCall
  loc_9E55E9: ExitProcHresult
  loc_9E55EA: PutRecFxStr3
End Sub

Public Sub Update() 'A0DE14
  'Data Table: 4301F4
  loc_A0DDD8: FLdPr Me
  loc_A0DDDB: MemLdStr RsFrm
  loc_A0DDDE: FStAd var_88 
  loc_A0DDE2: LitI4 3
  loc_A0DDE7: FLdPr var_88
  loc_A0DDEA: Me.UpdateBatch
  loc_A0DDEF: FLdRfVar var_8C
  loc_A0DDF2: FLdPr var_88
  loc_A0DDF5:  = Me.EditMode
  loc_A0DDFA: ILdRf var_8C
  loc_A0DDFD: LitI4 2
  loc_A0DE02: EqI4
  loc_A0DE03: BranchF loc_A0DE0B
  loc_A0DE06: Call MoveLast()
  loc_A0DE0B: LitNothing
  loc_A0DE0D: FStAd var_88 
  loc_A0DE11: ExitProcHresult
End Sub

Public Sub Cancel() 'A2832C
  'Data Table: 4301F4
  loc_A282E0: FLdPr Me
  loc_A282E3: MemLdStr RsFrm
  loc_A282E6: FStAd var_88 
  loc_A282EA: FLdRfVar var_8C
  loc_A282ED: FLdPr var_88
  loc_A282F0:  = Me.RecordCount
  loc_A282F5: ILdRf var_8C
  loc_A282F8: LitI4 0
  loc_A282FD: GtI4
  loc_A282FE: BranchF loc_A28325
  loc_A28301: FLdPr var_88
  loc_A28304: Me.CancelUpdate
  loc_A28309: FLdRfVar var_8C
  loc_A2830C: FLdPr var_88
  loc_A2830F:  = Me.EditMode
  loc_A28314: ILdRf var_8C
  loc_A28317: LitI4 2
  loc_A2831C: EqI4
  loc_A2831D: BranchF loc_A28325
  loc_A28320: Call MoveFirst()
  loc_A28325: LitNothing
  loc_A28327: FStAd var_88 
  loc_A2832B: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9E22C0
  'Data Table: 4301F4
  loc_9E22A0: FLdRfVar var_8C
  loc_9E22A3: FLdPr Me
  loc_9E22A6: MemLdPr RsFrm
  loc_9E22A9:  = Me.EditMode
  loc_9E22AE: ILdRf var_8C
  loc_9E22B1: LitI4 0
  loc_9E22B6: NeI4
  loc_9E22B7: FStI2 var_86
  loc_9E22BA: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5FBBC
  'Data Table: 4301F4
  loc_A5FB58: ILdRf sSelect
  loc_A5FB5B: FStStrCopy var_88
  loc_A5FB5E: LitNothing
  loc_A5FB60: CastAd
  loc_A5FB63: FStAdFuncNoPop
  loc_A5FB66: FLdPr Me
  loc_A5FB69: MemStAd
  loc_A5FB6D: FFree1Ad var_8C
  loc_A5FB70: New Recordset
  loc_A5FB74: FStAdFuncNoPop
  loc_A5FB77: FLdPr Me
  loc_A5FB7A: MemStAd
  loc_A5FB7E: FFree1Ad var_8C
  loc_A5FB81: LitI4 -1
  loc_A5FB86: LitI4 3
  loc_A5FB8B: LitI4 3
  loc_A5FB90: ImpAdLdI4 MemVar_D9301C
  loc_A5FB93: CVarAd
  loc_A5FB97: PopAdLdVar
  loc_A5FB98: ILdRf var_88
  loc_A5FB9B: CVarStr var_9C
  loc_A5FB9E: PopAdLdVar
  loc_A5FB9F: FLdPr Me
  loc_A5FBA2: MemLdPr RsFrm
  loc_A5FBA5: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5FBAA: LitVarStr var_9C, "Primary"
  loc_A5FBAF: PopAdLdVar
  loc_A5FBB0: FLdPr Me
  loc_A5FBB3: LateIdCall
  loc_A5FBBB: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A4C1A0
  'Data Table: 4301F4
  loc_A4C14C: ILdRf sSelect
  loc_A4C14F: FStStrCopy var_88
  loc_A4C152: LitNothing
  loc_A4C154: CastAd
  loc_A4C157: FStAdFuncNoPop
  loc_A4C15A: FLdPr Me
  loc_A4C15D: MemStAd
  loc_A4C161: FFree1Ad var_8C
  loc_A4C164: New Recordset
  loc_A4C168: FStAdFuncNoPop
  loc_A4C16B: FLdPr Me
  loc_A4C16E: MemStAd
  loc_A4C172: FFree1Ad var_8C
  loc_A4C175: LitI4 -1
  loc_A4C17A: LitI4 3
  loc_A4C17F: LitI4 3
  loc_A4C184: ImpAdLdI4 MemVar_D9301C
  loc_A4C187: CVarAd
  loc_A4C18B: PopAdLdVar
  loc_A4C18C: ILdRf var_88
  loc_A4C18F: CVarStr var_9C
  loc_A4C192: PopAdLdVar
  loc_A4C193: FLdPr Me
  loc_A4C196: MemLdPr global_64
  loc_A4C199: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4C19E: ExitProcHresult
End Sub

Public Sub Encontrar(CodiInmu, NumeFrin, CodiSeca, CodiSein) 'A71220
  'Data Table: 4301F4
  loc_A711AC: LitStr "CodiInmu = "
  loc_A711AF: ILdRf CodiInmu
  loc_A711B2: CStrI4
  loc_A711B4: FStStrNoPop var_88
  loc_A711B7: ConcatStr
  loc_A711B8: PopTmpLdAdStr
  loc_A711BC: Call Find(from_stack_1v)
  loc_A711C1: FFreeStr var_88 = ""
  loc_A711C8: LitStr "NumeFrin = "
  loc_A711CB: FLdUI1
  loc_A711CF: CStrI2
  loc_A711D1: FStStrNoPop var_88
  loc_A711D4: ConcatStr
  loc_A711D5: PopTmpLdAdStr
  loc_A711D9: Call Find(from_stack_1v)
  loc_A711DE: FFreeStr var_88 = ""
  loc_A711E5: LitStr "CodiSeca = "
  loc_A711E8: FLdI2 CodiSeca
  loc_A711EB: CStrUI1
  loc_A711ED: FStStrNoPop var_88
  loc_A711F0: ConcatStr
  loc_A711F1: PopTmpLdAdStr
  loc_A711F5: Call Find(from_stack_1v)
  loc_A711FA: FFreeStr var_88 = ""
  loc_A71201: LitStr "CodiSein = "
  loc_A71204: FLdUI1
  loc_A71208: CStrI2
  loc_A7120A: FStStrNoPop var_88
  loc_A7120D: ConcatStr
  loc_A7120E: PopTmpLdAdStr
  loc_A71212: Call Find(from_stack_1v)
  loc_A71217: FFreeStr var_88 = ""
  loc_A7121E: ExitProcHresult
End Sub

Public Property Get DataSource() '9F1FDC
  'Data Table: 4301F4
  loc_9F1FB8: ZeroRetVal
  loc_9F1FBA: FLdRfVar var_8C
  loc_9F1FBD: FLdPr Me
  loc_9F1FC0: MemLdPr RsFrm
  loc_9F1FC3:  = Me.DataSource
  loc_9F1FC8: ILdRf var_8C
  loc_9F1FCB: CastAd
  loc_9F1FCE: FStAdFunc var_88
  loc_9F1FD1: FFree1Ad var_8C
  loc_9F1FD4: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9D52C0
  'Data Table: 4301F4
  loc_9D52A4: FLdRfVar var_8C
  loc_9D52A7: FLdPr Me
  loc_9D52AA: MemLdPr RsFrm
  loc_9D52AD:  = Me.EditMode
  loc_9D52B2: ILdRf var_8C
  loc_9D52B5: FStR4 var_88
  loc_9D52B8: ExitProcCbHresult
  loc_9D52BE: FLdPr arg_7C00
End Sub

Public Property Get CodiInmu() 'A27FA4
  'Data Table: 4301F4
  loc_A27F60: FLdRfVar var_B0
  loc_A27F63: FLdRfVar var_A0
  loc_A27F66: LitVarStr var_9C, "CodiInmu"
  loc_A27F6B: PopAdLdVar
  loc_A27F6C: FLdRfVar var_8C
  loc_A27F6F: FLdPr Me
  loc_A27F72: MemLdPr RsFrm
  loc_A27F75:  = Me.Fields
  loc_A27F7A: FLdPr var_8C
  loc_A27F7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A27F82: FLdPr var_A0
  loc_A27F85:  = Me.Value
  loc_A27F8A: FLdRfVar var_B0
  loc_A27F8D: CI4Var
  loc_A27F8F: FStR4 var_88
  loc_A27F92: FFreeAd var_8C = ""
  loc_A27F99: FFree1Var var_B0 = ""
  loc_A27F9C: ExitProcCbHresult
  loc_A27FA2: IDvI4
End Sub

Public Property Get NumeFrin() 'A27DA4
  'Data Table: 4301F4
  loc_A27D60: FLdRfVar var_B0
  loc_A27D63: FLdRfVar var_A0
  loc_A27D66: LitVarStr var_9C, "NumeFrin"
  loc_A27D6B: PopAdLdVar
  loc_A27D6C: FLdRfVar var_8C
  loc_A27D6F: FLdPr Me
  loc_A27D72: MemLdPr RsFrm
  loc_A27D75:  = Me.Fields
  loc_A27D7A: FLdPr var_8C
  loc_A27D7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A27D82: FLdPr var_A0
  loc_A27D85:  = Me.Value
  loc_A27D8A: FLdRfVar var_B0
  loc_A27D8D: CUI1Var
  loc_A27D8F: FStUI1 var_86
  loc_A27D93: FFreeAd var_8C = ""
  loc_A27D9A: FFree1Var var_B0 = ""
  loc_A27D9D: ExitProcCbHresult
End Sub

Public Property Get CodiSeca() 'A264A4
  'Data Table: 4301F4
  loc_A26460: FLdRfVar var_B0
  loc_A26463: FLdRfVar var_A0
  loc_A26466: LitVarStr var_9C, "CodiSeca"
  loc_A2646B: PopAdLdVar
  loc_A2646C: FLdRfVar var_8C
  loc_A2646F: FLdPr Me
  loc_A26472: MemLdPr RsFrm
  loc_A26475:  = Me.Fields
  loc_A2647A: FLdPr var_8C
  loc_A2647D: from_stack_2 = Me.Item(from_stack_1)
  loc_A26482: FLdPr var_A0
  loc_A26485:  = Me.Value
  loc_A2648A: FLdRfVar var_B0
  loc_A2648D: CI2Var
  loc_A2648E: FStI2 var_86
  loc_A26491: FFreeAd var_8C = ""
  loc_A26498: FFree1Var var_B0 = ""
  loc_A2649B: ExitProcCbHresult
End Sub

Public Property Get CodiSein() 'A26D24
  'Data Table: 4301F4
  loc_A26CE0: FLdRfVar var_B0
  loc_A26CE3: FLdRfVar var_A0
  loc_A26CE6: LitVarStr var_9C, "CodiSein"
  loc_A26CEB: PopAdLdVar
  loc_A26CEC: FLdRfVar var_8C
  loc_A26CEF: FLdPr Me
  loc_A26CF2: MemLdPr RsFrm
  loc_A26CF5:  = Me.Fields
  loc_A26CFA: FLdPr var_8C
  loc_A26CFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A26D02: FLdPr var_A0
  loc_A26D05:  = Me.Value
  loc_A26D0A: FLdRfVar var_B0
  loc_A26D0D: CUI1Var
  loc_A26D0F: FStUI1 var_86
  loc_A26D13: FFreeAd var_8C = ""
  loc_A26D1A: FFree1Var var_B0 = ""
  loc_A26D1D: ExitProcCbHresult
End Sub

Public Property Get FealSein() 'A26924
  'Data Table: 4301F4
  loc_A268E0: FLdRfVar var_B4
  loc_A268E3: FLdRfVar var_A4
  loc_A268E6: LitVarStr var_A0, "FealSein"
  loc_A268EB: PopAdLdVar
  loc_A268EC: FLdRfVar var_90
  loc_A268EF: FLdPr Me
  loc_A268F2: MemLdPr RsFrm
  loc_A268F5:  = Me.Fields
  loc_A268FA: FLdPr var_90
  loc_A268FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A26902: FLdPr var_A4
  loc_A26905:  = Me.Value
  loc_A2690A: FLdRfVar var_B4
  loc_A2690D: FnCDateVar
  loc_A2690F: FStFPR8 var_8C
  loc_A26912: FFreeAd var_90 = ""
  loc_A26919: FFree1Var var_B4 = ""
  loc_A2691C: ExitProcCbHresult
  loc_A26922: UMiR8
End Sub

Public Property Get FedeSein() 'A25FA4
  'Data Table: 4301F4
  loc_A25F60: FLdRfVar var_B4
  loc_A25F63: FLdRfVar var_A4
  loc_A25F66: LitVarStr var_A0, "FedeSein"
  loc_A25F6B: PopAdLdVar
  loc_A25F6C: FLdRfVar var_90
  loc_A25F6F: FLdPr Me
  loc_A25F72: MemLdPr RsFrm
  loc_A25F75:  = Me.Fields
  loc_A25F7A: FLdPr var_90
  loc_A25F7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A25F82: FLdPr var_A4
  loc_A25F85:  = Me.Value
  loc_A25F8A: FLdRfVar var_B4
  loc_A25F8D: FnCDateVar
  loc_A25F8F: FStFPR8 var_8C
  loc_A25F92: FFreeAd var_90 = ""
  loc_A25F99: FFree1Var var_B4 = ""
  loc_A25F9C: ExitProcCbHresult
End Sub

Public Property Get FehaSein() 'A1D398
  'Data Table: 4301F4
  loc_A1D360: ZeroRetValVar
  loc_A1D362: FLdRfVar var_AC
  loc_A1D365: LitVarStr var_A8, "FehaSein"
  loc_A1D36A: PopAdLdVar
  loc_A1D36B: FLdRfVar var_98
  loc_A1D36E: FLdPr Me
  loc_A1D371: MemLdPr RsFrm
  loc_A1D374:  = Me.Fields
  loc_A1D379: FLdPr var_98
  loc_A1D37C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1D381: FLdZeroAd var_AC
  loc_A1D384: CVarAd
  loc_A1D388: FStVar FehaSein
  loc_A1D38C: FFree1Ad var_98
  loc_A1D38F: ExitProcCbHresult
End Sub

Public Property Get EstaSein() 'A38884
  'Data Table: 4301F4
  loc_A38840: ZeroRetVal
  loc_A38842: FLdRfVar var_B0
  loc_A38845: FLdRfVar var_A0
  loc_A38848: LitVarStr var_9C, "EstaSein"
  loc_A3884D: PopAdLdVar
  loc_A3884E: FLdRfVar var_8C
  loc_A38851: FLdPr Me
  loc_A38854: MemLdPr RsFrm
  loc_A38857:  = Me.Fields
  loc_A3885C: FLdPr var_8C
  loc_A3885F: from_stack_2 = Me.Item(from_stack_1)
  loc_A38864: FLdPr var_A0
  loc_A38867:  = Me.Value
  loc_A3886C: FLdRfVar var_B0
  loc_A3886F: CStrVarTmp
  loc_A38870: FStStr var_88
  loc_A38873: FFreeAd var_8C = ""
  loc_A3887A: FFree1Var var_B0 = ""
  loc_A3887D: ExitProcCbHresult
End Sub

Public Property Get CantSein() 'A260A4
  'Data Table: 4301F4
  loc_A26060: FLdRfVar var_B4
  loc_A26063: FLdRfVar var_A4
  loc_A26066: LitVarStr var_A0, "CantSein"
  loc_A2606B: PopAdLdVar
  loc_A2606C: FLdRfVar var_90
  loc_A2606F: FLdPr Me
  loc_A26072: MemLdPr RsFrm
  loc_A26075:  = Me.Fields
  loc_A2607A: FLdPr var_90
  loc_A2607D: from_stack_2 = Me.Item(from_stack_1)
  loc_A26082: FLdPr var_A4
  loc_A26085:  = Me.Value
  loc_A2608A: FLdRfVar var_B4
  loc_A2608D: CR4Var
  loc_A2608E: FStFPR8 var_8C
  loc_A26091: FFreeAd var_90 = ""
  loc_A26098: FFree1Var var_B4 = ""
  loc_A2609B: ExitProcCbHresult
End Sub

Public Property Get ExpeSein() 'A386F8
  'Data Table: 4301F4
  loc_A386B4: ZeroRetVal
  loc_A386B6: FLdRfVar var_B0
  loc_A386B9: FLdRfVar var_A0
  loc_A386BC: LitVarStr var_9C, "ExpeSein"
  loc_A386C1: PopAdLdVar
  loc_A386C2: FLdRfVar var_8C
  loc_A386C5: FLdPr Me
  loc_A386C8: MemLdPr RsFrm
  loc_A386CB:  = Me.Fields
  loc_A386D0: FLdPr var_8C
  loc_A386D3: from_stack_2 = Me.Item(from_stack_1)
  loc_A386D8: FLdPr var_A0
  loc_A386DB:  = Me.Value
  loc_A386E0: FLdRfVar var_B0
  loc_A386E3: CStrVarTmp
  loc_A386E4: FStStr var_88
  loc_A386E7: FFreeAd var_8C = ""
  loc_A386EE: FFree1Var var_B0 = ""
  loc_A386F1: ExitProcCbHresult
End Sub

Public Property Get FrecSeca() 'A3856C
  'Data Table: 4301F4
  loc_A38528: ZeroRetVal
  loc_A3852A: FLdRfVar var_B0
  loc_A3852D: FLdRfVar var_A0
  loc_A38530: LitVarStr var_9C, "FrecSeca"
  loc_A38535: PopAdLdVar
  loc_A38536: FLdRfVar var_8C
  loc_A38539: FLdPr Me
  loc_A3853C: MemLdPr RsFrm
  loc_A3853F:  = Me.Fields
  loc_A38544: FLdPr var_8C
  loc_A38547: from_stack_2 = Me.Item(from_stack_1)
  loc_A3854C: FLdPr var_A0
  loc_A3854F:  = Me.Value
  loc_A38554: FLdRfVar var_B0
  loc_A38557: CStrVarTmp
  loc_A38558: FStStr var_88
  loc_A3855B: FFreeAd var_8C = ""
  loc_A38562: FFree1Var var_B0 = ""
  loc_A38565: ExitProcCbHresult
End Sub

Public Property Get ImpoSein() 'A26F24
  'Data Table: 4301F4
  loc_A26EE0: FLdRfVar var_B4
  loc_A26EE3: FLdRfVar var_A4
  loc_A26EE6: LitVarStr var_A0, "ImpoSein"
  loc_A26EEB: PopAdLdVar
  loc_A26EEC: FLdRfVar var_90
  loc_A26EEF: FLdPr Me
  loc_A26EF2: MemLdPr RsFrm
  loc_A26EF5:  = Me.Fields
  loc_A26EFA: FLdPr var_90
  loc_A26EFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A26F02: FLdPr var_A4
  loc_A26F05:  = Me.Value
  loc_A26F0A: FLdRfVar var_B4
  loc_A26F0D: CR4Var
  loc_A26F0E: FStFPR8 var_8C
  loc_A26F11: FFreeAd var_90 = ""
  loc_A26F18: FFree1Var var_B4 = ""
  loc_A26F1B: ExitProcCbHresult
End Sub

Public Property Get ImpoSeca() 'A26524
  'Data Table: 4301F4
  loc_A264E0: FLdRfVar var_B4
  loc_A264E3: FLdRfVar var_A4
  loc_A264E6: LitVarStr var_A0, "ImpoSeca"
  loc_A264EB: PopAdLdVar
  loc_A264EC: FLdRfVar var_90
  loc_A264EF: FLdPr Me
  loc_A264F2: MemLdPr RsFrm
  loc_A264F5:  = Me.Fields
  loc_A264FA: FLdPr var_90
  loc_A264FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A26502: FLdPr var_A4
  loc_A26505:  = Me.Value
  loc_A2650A: FLdRfVar var_B4
  loc_A2650D: CR4Var
  loc_A2650E: FStFPR8 var_8C
  loc_A26511: FFreeAd var_90 = ""
  loc_A26518: FFree1Var var_B4 = ""
  loc_A2651B: ExitProcCbHresult
  loc_A26521: StAryCopy
End Sub

Public Property Get FormSeca() 'A26724
  'Data Table: 4301F4
  loc_A266E0: FLdRfVar var_B0
  loc_A266E3: FLdRfVar var_A0
  loc_A266E6: LitVarStr var_9C, "FormSeca"
  loc_A266EB: PopAdLdVar
  loc_A266EC: FLdRfVar var_8C
  loc_A266EF: FLdPr Me
  loc_A266F2: MemLdPr RsFrm
  loc_A266F5:  = Me.Fields
  loc_A266FA: FLdPr var_8C
  loc_A266FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A26702: FLdPr var_A0
  loc_A26705:  = Me.Value
  loc_A2670A: FLdRfVar var_B0
  loc_A2670D: CUI1Var
  loc_A2670F: FStUI1 var_86
  loc_A26713: FFreeAd var_8C = ""
  loc_A2671A: FFree1Var var_B0 = ""
  loc_A2671D: ExitProcCbHresult
End Sub

Public Property Get GastTili() 'A26824
  'Data Table: 4301F4
  loc_A267E0: FLdRfVar var_B4
  loc_A267E3: FLdRfVar var_A4
  loc_A267E6: LitVarStr var_A0, "GastTili"
  loc_A267EB: PopAdLdVar
  loc_A267EC: FLdRfVar var_90
  loc_A267EF: FLdPr Me
  loc_A267F2: MemLdPr RsFrm
  loc_A267F5:  = Me.Fields
  loc_A267FA: FLdPr var_90
  loc_A267FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A26802: FLdPr var_A4
  loc_A26805:  = Me.Value
  loc_A2680A: FLdRfVar var_B4
  loc_A2680D: CR4Var
  loc_A2680E: FStFPR8 var_8C
  loc_A26811: FFreeAd var_90 = ""
  loc_A26818: FFree1Var var_B4 = ""
  loc_A2681B: ExitProcCbHresult
End Sub

Public Property Get CogaTili() 'A28CA4
  'Data Table: 4301F4
  loc_A28C60: FLdRfVar var_B0
  loc_A28C63: FLdRfVar var_A0
  loc_A28C66: LitVarStr var_9C, "CogaTili"
  loc_A28C6B: PopAdLdVar
  loc_A28C6C: FLdRfVar var_8C
  loc_A28C6F: FLdPr Me
  loc_A28C72: MemLdPr RsFrm
  loc_A28C75:  = Me.Fields
  loc_A28C7A: FLdPr var_8C
  loc_A28C7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A28C82: FLdPr var_A0
  loc_A28C85:  = Me.Value
  loc_A28C8A: FLdRfVar var_B0
  loc_A28C8D: CI2Var
  loc_A28C8E: FStI2 var_86
  loc_A28C91: FFreeAd var_8C = ""
  loc_A28C98: FFree1Var var_B0 = ""
  loc_A28C9B: ExitProcCbHresult
End Sub

Public Property Get PeriOrde() 'A28C24
  'Data Table: 4301F4
  loc_A28BE0: FLdRfVar var_B0
  loc_A28BE3: FLdRfVar var_A0
  loc_A28BE6: LitVarStr var_9C, "PeriOrde"
  loc_A28BEB: PopAdLdVar
  loc_A28BEC: FLdRfVar var_8C
  loc_A28BEF: FLdPr Me
  loc_A28BF2: MemLdPr RsFrm
  loc_A28BF5:  = Me.Fields
  loc_A28BFA: FLdPr var_8C
  loc_A28BFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A28C02: FLdPr var_A0
  loc_A28C05:  = Me.Value
  loc_A28C0A: FLdRfVar var_B0
  loc_A28C0D: CI2Var
  loc_A28C0E: FStI2 var_86
  loc_A28C11: FFreeAd var_8C = ""
  loc_A28C18: FFree1Var var_B0 = ""
  loc_A28C1B: ExitProcCbHresult
End Sub

Public Property Get DetaSeca() 'A3790C
  'Data Table: 4301F4
  loc_A378C8: ZeroRetVal
  loc_A378CA: FLdRfVar var_B0
  loc_A378CD: FLdRfVar var_A0
  loc_A378D0: LitVarStr var_9C, "DetaSeca"
  loc_A378D5: PopAdLdVar
  loc_A378D6: FLdRfVar var_8C
  loc_A378D9: FLdPr Me
  loc_A378DC: MemLdPr RsFrm
  loc_A378DF:  = Me.Fields
  loc_A378E4: FLdPr var_8C
  loc_A378E7: from_stack_2 = Me.Item(from_stack_1)
  loc_A378EC: FLdPr var_A0
  loc_A378EF:  = Me.Value
  loc_A378F4: FLdRfVar var_B0
  loc_A378F7: CStrVarTmp
  loc_A378F8: FStStr var_88
  loc_A378FB: FFreeAd var_8C = ""
  loc_A37902: FFree1Var var_B0 = ""
  loc_A37905: ExitProcCbHresult
End Sub

Public Property Get CodiEsin() 'A294A4
  'Data Table: 4301F4
  loc_A29460: FLdRfVar var_B0
  loc_A29463: FLdRfVar var_A0
  loc_A29466: LitVarStr var_9C, "CodiEsin"
  loc_A2946B: PopAdLdVar
  loc_A2946C: FLdRfVar var_8C
  loc_A2946F: FLdPr Me
  loc_A29472: MemLdPr RsFrm
  loc_A29475:  = Me.Fields
  loc_A2947A: FLdPr var_8C
  loc_A2947D: from_stack_2 = Me.Item(from_stack_1)
  loc_A29482: FLdPr var_A0
  loc_A29485:  = Me.Value
  loc_A2948A: FLdRfVar var_B0
  loc_A2948D: CUI1Var
  loc_A2948F: FStUI1 var_86
  loc_A29493: FFreeAd var_8C = ""
  loc_A2949A: FFree1Var var_B0 = ""
  loc_A2949D: ExitProcCbHresult
End Sub

Public Property Get PadrInmu() 'A37570
  'Data Table: 4301F4
  loc_A3752C: ZeroRetVal
  loc_A3752E: FLdRfVar var_B0
  loc_A37531: FLdRfVar var_A0
  loc_A37534: LitVarStr var_9C, "PadrInmu"
  loc_A37539: PopAdLdVar
  loc_A3753A: FLdRfVar var_8C
  loc_A3753D: FLdPr Me
  loc_A37540: MemLdPr RsFrm
  loc_A37543:  = Me.Fields
  loc_A37548: FLdPr var_8C
  loc_A3754B: from_stack_2 = Me.Item(from_stack_1)
  loc_A37550: FLdPr var_A0
  loc_A37553:  = Me.Value
  loc_A37558: FLdRfVar var_B0
  loc_A3755B: CStrVarTmp
  loc_A3755C: FStStr var_88
  loc_A3755F: FFreeAd var_8C = ""
  loc_A37566: FFree1Var var_B0 = ""
  loc_A37569: ExitProcCbHresult
End Sub

Public Property Get PeriInmu() 'A27124
  'Data Table: 4301F4
  loc_A270E0: FLdRfVar var_B0
  loc_A270E3: FLdRfVar var_A0
  loc_A270E6: LitVarStr var_9C, "PeriInmu"
  loc_A270EB: PopAdLdVar
  loc_A270EC: FLdRfVar var_8C
  loc_A270EF: FLdPr Me
  loc_A270F2: MemLdPr RsFrm
  loc_A270F5:  = Me.Fields
  loc_A270FA: FLdPr var_8C
  loc_A270FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A27102: FLdPr var_A0
  loc_A27105:  = Me.Value
  loc_A2710A: FLdRfVar var_B0
  loc_A2710D: CI2Var
  loc_A2710E: FStI2 var_86
  loc_A27111: FFreeAd var_8C = ""
  loc_A27118: FFree1Var var_B0 = ""
  loc_A2711B: ExitProcCbHresult
  loc_A27121: UMiCy
  loc_A27122: Ary1LdFPR4
End Sub

Public Property Get BimeInmu() 'A2A3A4
  'Data Table: 4301F4
  loc_A2A360: FLdRfVar var_B0
  loc_A2A363: FLdRfVar var_A0
  loc_A2A366: LitVarStr var_9C, "BimeInmu"
  loc_A2A36B: PopAdLdVar
  loc_A2A36C: FLdRfVar var_8C
  loc_A2A36F: FLdPr Me
  loc_A2A372: MemLdPr RsFrm
  loc_A2A375:  = Me.Fields
  loc_A2A37A: FLdPr var_8C
  loc_A2A37D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A382: FLdPr var_A0
  loc_A2A385:  = Me.Value
  loc_A2A38A: FLdRfVar var_B0
  loc_A2A38D: CUI1Var
  loc_A2A38F: FStUI1 var_86
  loc_A2A393: FFreeAd var_8C = ""
  loc_A2A39A: FFree1Var var_B0 = ""
  loc_A2A39D: ExitProcCbHresult
End Sub

Public Function ValidaClave(CodiInmu, NumeFrin, CodiSeca, CodiSein) 'A96448
  'Data Table: 4301F4
  loc_A963B8: ZeroRetVal
  loc_A963BA: LitStr "SELECT CodiSein FROM servinmu WHERE CodiInmu = "
  loc_A963BD: ILdRf CodiInmu
  loc_A963C0: CStrI4
  loc_A963C2: FStStrNoPop var_8C
  loc_A963C5: ConcatStr
  loc_A963C6: FStStrNoPop var_90
  loc_A963C9: LitStr " AND NumeFrin = "
  loc_A963CC: ConcatStr
  loc_A963CD: FStStrNoPop ValidaClave
  loc_A963D0: FLdUI1
  loc_A963D4: CStrI2
  loc_A963D6: FStStrNoPop var_98
  loc_A963D9: ConcatStr
  loc_A963DA: FStStrNoPop var_9C
  loc_A963DD: LitStr " AND CodiSeca = "
  loc_A963E0: ConcatStr
  loc_A963E1: FStStrNoPop var_A0
  loc_A963E4: FLdI2 CodiSeca
  loc_A963E7: CStrUI1
  loc_A963E9: FStStrNoPop var_A4
  loc_A963EC: ConcatStr
  loc_A963ED: FStStrNoPop var_A8
  loc_A963F0: LitStr " AND CodiSein = "
  loc_A963F3: ConcatStr
  loc_A963F4: FStStrNoPop var_AC
  loc_A963F7: FLdUI1
  loc_A963FB: CStrI2
  loc_A963FD: FStStrNoPop var_B0
  loc_A96400: ConcatStr
  loc_A96401: FStStrNoPop var_B4
  loc_A96404: Call EjecutarRsCls(from_stack_1v)
  loc_A96409: FFreeStr var_8C = "": var_90 = "": ValidaClave = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A96422: FLdRfVar var_B8
  loc_A96425: FLdPr Me
  loc_A96428: MemLdPr global_64
  loc_A9642B:  = Me.RecordCount
  loc_A96430: ILdRf var_B8
  loc_A96433: LitI4 0
  loc_A96438: GtI4
  loc_A96439: BranchF loc_A96442
  loc_A9643C: LitStr "El SERVICIO de CATASTRO YA EXISTE. Reintente..."
  loc_A9643F: FStStrCopy var_88
  loc_A96442: ExitProcCbHresult
End Function

Public Function NuevoRegistro(CodiInmu, NumeFrin, CodiSeca) 'ABC024
  'Data Table: 4301F4
  loc_ABBF50: LitStr "SELECT CodiSein FROM servinmu WHERE CodiInmu = "
  loc_ABBF53: ILdRf CodiInmu
  loc_ABBF56: CStrI4
  loc_ABBF58: FStStrNoPop var_8C
  loc_ABBF5B: ConcatStr
  loc_ABBF5C: FStStrNoPop var_90
  loc_ABBF5F: LitStr " AND NumeFrin = "
  loc_ABBF62: ConcatStr
  loc_ABBF63: FStStrNoPop NuevoRegistro
  loc_ABBF66: FLdUI1
  loc_ABBF6A: CStrI2
  loc_ABBF6C: FStStrNoPop var_98
  loc_ABBF6F: ConcatStr
  loc_ABBF70: FStStrNoPop var_9C
  loc_ABBF73: LitStr " AND CodiSeca = "
  loc_ABBF76: ConcatStr
  loc_ABBF77: FStStrNoPop var_A0
  loc_ABBF7A: FLdI2 CodiSeca
  loc_ABBF7D: CStrUI1
  loc_ABBF7F: FStStrNoPop var_A4
  loc_ABBF82: ConcatStr
  loc_ABBF83: FStStrNoPop var_A8
  loc_ABBF86: LitStr " ORDER BY CodiSein ASC "
  loc_ABBF89: ConcatStr
  loc_ABBF8A: FStStrNoPop var_AC
  loc_ABBF8D: Call EjecutarRsCls(from_stack_1v)
  loc_ABBF92: FFreeStr var_8C = "": var_90 = "": NuevoRegistro = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_ABBFA7: FLdRfVar var_B0
  loc_ABBFAA: FLdPr Me
  loc_ABBFAD: MemLdPr global_64
  loc_ABBFB0:  = Me.RecordCount
  loc_ABBFB5: ILdRf var_B0
  loc_ABBFB8: LitI4 0
  loc_ABBFBD: GtI4
  loc_ABBFBE: BranchF loc_ABC013
  loc_ABBFC1: FLdPr Me
  loc_ABBFC4: MemLdPr global_64
  loc_ABBFC7: Me.MoveLast
  loc_ABBFCC: FLdRfVar var_D8
  loc_ABBFCF: FLdRfVar var_C8
  loc_ABBFD2: LitVarStr var_C4, "CodiSein"
  loc_ABBFD7: PopAdLdVar
  loc_ABBFD8: FLdRfVar var_B4
  loc_ABBFDB: FLdPr Me
  loc_ABBFDE: MemLdPr global_64
  loc_ABBFE1:  = Me.Fields
  loc_ABBFE6: FLdPr var_B4
  loc_ABBFE9: from_stack_2 = Me.Item(from_stack_1)
  loc_ABBFEE: FLdPr var_C8
  loc_ABBFF1:  = Me.Value
  loc_ABBFF6: FLdRfVar var_D8
  loc_ABBFF9: FnCByteVar
  loc_ABBFFB: CI2UI1
  loc_ABBFFD: LitI2_Byte 1
  loc_ABBFFF: AddI2
  loc_ABC000: CUI1I2
  loc_ABC002: FStUI1 var_86
  loc_ABC006: FFreeAd var_B4 = ""
  loc_ABC00D: FFree1Var var_D8 = ""
  loc_ABC010: Branch loc_ABC01B
  loc_ABC013: LitI2_Byte 1
  loc_ABC015: CUI1I2
  loc_ABC017: FStUI1 var_86
  loc_ABC01B: ExitProcCbHresult
End Function

Public Function ValidaMismoServicio(CodiInmu, NumeFrin, CodiSeca) 'A969EC
  'Data Table: 4301F4
  loc_A96958: ZeroRetVal
  loc_A9695A: LitStr "SELECT CodiSein FROM servinmu WHERE CodiInmu = "
  loc_A9695D: ILdRf CodiInmu
  loc_A96960: CStrI4
  loc_A96962: FStStrNoPop var_8C
  loc_A96965: ConcatStr
  loc_A96966: FStStrNoPop var_90
  loc_A96969: LitStr " AND NumeFrin = "
  loc_A9696C: ConcatStr
  loc_A9696D: FStStrNoPop ValidaMismoServicio
  loc_A96970: FLdUI1
  loc_A96974: CStrI2
  loc_A96976: FStStrNoPop var_98
  loc_A96979: ConcatStr
  loc_A9697A: FStStrNoPop var_9C
  loc_A9697D: LitStr " AND CodiSeca = "
  loc_A96980: ConcatStr
  loc_A96981: FStStrNoPop var_A0
  loc_A96984: FLdI2 CodiSeca
  loc_A96987: CStrUI1
  loc_A96989: FStStrNoPop var_A4
  loc_A9698C: ConcatStr
  loc_A9698D: FStStrNoPop var_A8
  loc_A96990: LitStr " AND FehaSein IS NULL "
  loc_A96993: ConcatStr
  loc_A96994: FStStrNoPop var_AC
  loc_A96997: LitStr " ORDER BY CodiInmu, NumeFrin, CodiSein, CodiSein"
  loc_A9699A: ConcatStr
  loc_A9699B: FStStrNoPop var_B0
  loc_A9699E: Call EjecutarRsCls(from_stack_1v)
  loc_A969A3: FFreeStr var_8C = "": var_90 = "": ValidaMismoServicio = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A969BA: FLdRfVar var_B4
  loc_A969BD: FLdPr Me
  loc_A969C0: MemLdPr global_64
  loc_A969C3:  = Me.RecordCount
  loc_A969C8: ILdRf var_B4
  loc_A969CB: LitI4 0
  loc_A969D0: EqI4
  loc_A969D1: BranchF loc_A969DD
  loc_A969D4: LitStr vbNullString
  loc_A969D7: FStStrCopy var_88
  loc_A969DA: Branch loc_A969E3
  loc_A969DD: LitStr "No se puede crear. El servicio que intenta crear ya existe para el inmuble seleccionado"
  loc_A969E0: FStStrCopy var_88
  loc_A969E3: ExitProcCbHresult
  loc_A969E9: ImpAdLdRf MemVar_5F0DF8
End Function

Private Function Proc_193_55_9E6A3C(arg_10) '9E6A3C
  'Data Table: 4301F4
  loc_9E6A20: ILdRf arg_10
  loc_9E6A23: FStAd var_88 
  loc_9E6A27: ILdRf arg_18
  loc_9E6A2A: FStAd var_8C 
  loc_9E6A2E: FLdPr Me
  loc_9E6A31: RaiseEvent
  loc_9E6A39: ExitProcHresult
End Function

Private Function Proc_193_56_A99AF8(arg_C) 'A99AF8
  'Data Table: 4301F4
  loc_A99A38: ILdRf arg_18
  loc_A99A3B: FStAd var_88 
  loc_A99A3F: ILdRf arg_C
  loc_A99A42: FStR4 var_90
  loc_A99A45: ILdRf var_90
  loc_A99A48: LitI4 1
  loc_A99A4D: EqI4
  loc_A99A4E: BranchF loc_A99A54
  loc_A99A51: Branch loc_A99AE7
  loc_A99A54: ILdRf var_90
  loc_A99A57: LitI4 9
  loc_A99A5C: EqI4
  loc_A99A5D: BranchF loc_A99A63
  loc_A99A60: Branch loc_A99AE7
  loc_A99A63: ILdRf var_90
  loc_A99A66: LitI4 2
  loc_A99A6B: EqI4
  loc_A99A6C: BranchF loc_A99A72
  loc_A99A6F: Branch loc_A99AE7
  loc_A99A72: ILdRf var_90
  loc_A99A75: LitI4 &HB
  loc_A99A7A: EqI4
  loc_A99A7B: BranchF loc_A99A81
  loc_A99A7E: Branch loc_A99AE7
  loc_A99A81: ILdRf var_90
  loc_A99A84: LitI4 &HA
  loc_A99A89: EqI4
  loc_A99A8A: BranchF loc_A99A90
  loc_A99A8D: Branch loc_A99AE7
  loc_A99A90: ILdRf var_90
  loc_A99A93: LitI4 7
  loc_A99A98: EqI4
  loc_A99A99: BranchF loc_A99A9F
  loc_A99A9C: Branch loc_A99AE7
  loc_A99A9F: ILdRf var_90
  loc_A99AA2: LitI4 8
  loc_A99AA7: EqI4
  loc_A99AA8: BranchF loc_A99AAE
  loc_A99AAB: Branch loc_A99AE7
  loc_A99AAE: ILdRf var_90
  loc_A99AB1: LitI4 5
  loc_A99AB6: EqI4
  loc_A99AB7: BranchF loc_A99ABD
  loc_A99ABA: Branch loc_A99AE7
  loc_A99ABD: ILdRf var_90
  loc_A99AC0: LitI4 6
  loc_A99AC5: EqI4
  loc_A99AC6: BranchF loc_A99ACC
  loc_A99AC9: Branch loc_A99AE7
  loc_A99ACC: ILdRf var_90
  loc_A99ACF: LitI4 4
  loc_A99AD4: EqI4
  loc_A99AD5: BranchF loc_A99ADB
  loc_A99AD8: Branch loc_A99AE7
  loc_A99ADB: ILdRf var_90
  loc_A99ADE: LitI4 3
  loc_A99AE3: EqI4
  loc_A99AE4: BranchF loc_A99AE7
  loc_A99AE7: FLdI2 var_8A
  loc_A99AEA: BranchF loc_A99AF5
  loc_A99AED: LitI4 4
  loc_A99AF2: IStI4 arg_14
  loc_A99AF5: ExitProcHresult
End Function

Private Function Proc_193_57_9F2038() '9F2038
  'Data Table: 4301F4
  loc_9F2014: LitStr "Primary"
  loc_9F2017: FLdPr Me
  loc_9F201A: LateIdLdVar var_94 DispID_4 0
  loc_9F2021: CastAdVar Me
  loc_9F2025: FStAdFunc var_98
  loc_9F2028: FLdPr var_98
  loc_9F2030: FFree1Ad var_98
  loc_9F2033: FFree1Var var_94 = ""
  loc_9F2036: ExitProcHresult
End Function

Private Function Proc_193_58_9E212C(arg_C) '9E212C
  'Data Table: 4301F4
  loc_9E2110: ILdI4 arg_C
  loc_9E2113: FStStrCopy var_88
  loc_9E2116: ILdRf var_88
  loc_9E2119: LitStr "Primary"
  loc_9E211C: EqStr
  loc_9E211E: BranchF loc_9E212B
  loc_9E2121: FLdPr Me
  loc_9E2124: MemLdStr RsFrm
  loc_9E2127: IStAd
  loc_9E212B: ExitProcHresult
End Function
