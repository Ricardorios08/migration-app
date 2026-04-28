VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsrecabole"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0F624
  'Data Table: 450C80
  loc_A0F5E8: FLdRfVar var_8C
  loc_A0F5EB: FLdRfVar var_88
  loc_A0F5EE: FLdPr Me
  loc_A0F5F1: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A0F5F6: FLdPr var_88
  loc_A0F5F9:  = Me.RecordCount
  loc_A0F5FE: ILdRf var_8C
  loc_A0F601: LitI4 0
  loc_A0F606: GtI4
  loc_A0F607: FFree1Ad var_88
  loc_A0F60A: BranchF loc_A0F623
  loc_A0F60D: FLdRfVar var_88
  loc_A0F610: FLdPr Me
  loc_A0F613: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A0F618: FLdPr var_88
  loc_A0F61B: Me.MoveFirst
  loc_A0F620: FFree1Ad var_88
  loc_A0F623: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0F694
  'Data Table: 450C80
  loc_A0F658: FLdRfVar var_8C
  loc_A0F65B: FLdRfVar var_88
  loc_A0F65E: FLdPr Me
  loc_A0F661: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A0F666: FLdPr var_88
  loc_A0F669:  = Me.RecordCount
  loc_A0F66E: ILdRf var_8C
  loc_A0F671: LitI4 0
  loc_A0F676: GtI4
  loc_A0F677: FFree1Ad var_88
  loc_A0F67A: BranchF loc_A0F693
  loc_A0F67D: FLdRfVar var_88
  loc_A0F680: FLdPr Me
  loc_A0F683: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A0F688: FLdPr var_88
  loc_A0F68B: Me.MoveLast
  loc_A0F690: FFree1Ad var_88
  loc_A0F693: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9ECEC
  'Data Table: 450C80
  loc_A9EC30: FLdRfVar var_8A
  loc_A9EC33: FLdRfVar var_88
  loc_A9EC36: FLdPr Me
  loc_A9EC39: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A9EC3E: FLdPr var_88
  loc_A9EC41:  = Me.EOF
  loc_A9EC46: FLdI2 var_8A
  loc_A9EC49: NotI4
  loc_A9EC4A: FLdRfVar var_94
  loc_A9EC4D: FLdRfVar var_90
  loc_A9EC50: FLdPr Me
  loc_A9EC53: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A9EC58: FLdPr var_90
  loc_A9EC5B:  = Me.RecordCount
  loc_A9EC60: ILdRf var_94
  loc_A9EC63: LitI4 0
  loc_A9EC68: GtI4
  loc_A9EC69: AndI4
  loc_A9EC6A: FFreeAd var_88 = ""
  loc_A9EC71: BranchF loc_A9EC8A
  loc_A9EC74: FLdRfVar var_88
  loc_A9EC77: FLdPr Me
  loc_A9EC7A: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A9EC7F: FLdPr var_88
  loc_A9EC82: Me.MoveNext
  loc_A9EC87: FFree1Ad var_88
  loc_A9EC8A: FLdRfVar var_8A
  loc_A9EC8D: FLdRfVar var_88
  loc_A9EC90: FLdPr Me
  loc_A9EC93: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A9EC98: FLdPr var_88
  loc_A9EC9B:  = Me.EOF
  loc_A9ECA0: FLdI2 var_8A
  loc_A9ECA3: FLdRfVar var_94
  loc_A9ECA6: FLdRfVar var_90
  loc_A9ECA9: FLdPr Me
  loc_A9ECAC: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A9ECB1: FLdPr var_90
  loc_A9ECB4:  = Me.RecordCount
  loc_A9ECB9: ILdRf var_94
  loc_A9ECBC: LitI4 0
  loc_A9ECC1: GtI4
  loc_A9ECC2: AndI4
  loc_A9ECC3: FFreeAd var_88 = ""
  loc_A9ECCA: BranchF loc_A9ECE8
  loc_A9ECCD: ImpAdCallFPR4 Beep()
  loc_A9ECD2: FLdRfVar var_88
  loc_A9ECD5: FLdPr Me
  loc_A9ECD8: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A9ECDD: FLdPr var_88
  loc_A9ECE0: Me.MoveLast
  loc_A9ECE5: FFree1Ad var_88
  loc_A9ECE8: ExitProcHresult
  loc_A9ECE9: EqStr
End Sub

Public Sub MoveSiguiente() '9DAD48
  'Data Table: 450C80
  loc_9DAD30: FLdRfVar var_88
  loc_9DAD33: FLdPr Me
  loc_9DAD36: from_stack_1v = clsrecabole.global_4525064Get()
  loc_9DAD3B: FLdPr var_88
  loc_9DAD3E: Me.MoveNext
  loc_9DAD43: FFree1Ad var_88
  loc_9DAD46: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E9A7C
  'Data Table: 450C80
  loc_9E9A5C: LitVar_Missing var_98
  loc_9E9A5F: PopAdLdVar
  loc_9E9A60: ILdI2 iValor
  loc_9E9A63: CI4UI1
  loc_9E9A64: FLdRfVar var_88
  loc_9E9A67: FLdPr Me
  loc_9E9A6A: from_stack_1v = clsrecabole.global_4525064Get()
  loc_9E9A6F: FLdPr var_88
  loc_9E9A72: Me.Move from_stack_1, from_stack_2
  loc_9E9A77: FFree1Ad var_88
  loc_9E9A7A: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9D60C
  'Data Table: 450C80
  loc_A9D550: FLdRfVar var_8A
  loc_A9D553: FLdRfVar var_88
  loc_A9D556: FLdPr Me
  loc_A9D559: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A9D55E: FLdPr var_88
  loc_A9D561:  = Me.BOF
  loc_A9D566: FLdI2 var_8A
  loc_A9D569: NotI4
  loc_A9D56A: FLdRfVar var_94
  loc_A9D56D: FLdRfVar var_90
  loc_A9D570: FLdPr Me
  loc_A9D573: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A9D578: FLdPr var_90
  loc_A9D57B:  = Me.RecordCount
  loc_A9D580: ILdRf var_94
  loc_A9D583: LitI4 0
  loc_A9D588: GtI4
  loc_A9D589: AndI4
  loc_A9D58A: FFreeAd var_88 = ""
  loc_A9D591: BranchF loc_A9D5AA
  loc_A9D594: FLdRfVar var_88
  loc_A9D597: FLdPr Me
  loc_A9D59A: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A9D59F: FLdPr var_88
  loc_A9D5A2: Me.MovePrevious
  loc_A9D5A7: FFree1Ad var_88
  loc_A9D5AA: FLdRfVar var_8A
  loc_A9D5AD: FLdRfVar var_88
  loc_A9D5B0: FLdPr Me
  loc_A9D5B3: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A9D5B8: FLdPr var_88
  loc_A9D5BB:  = Me.BOF
  loc_A9D5C0: FLdI2 var_8A
  loc_A9D5C3: FLdRfVar var_94
  loc_A9D5C6: FLdRfVar var_90
  loc_A9D5C9: FLdPr Me
  loc_A9D5CC: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A9D5D1: FLdPr var_90
  loc_A9D5D4:  = Me.RecordCount
  loc_A9D5D9: ILdRf var_94
  loc_A9D5DC: LitI4 0
  loc_A9D5E1: GtI4
  loc_A9D5E2: AndI4
  loc_A9D5E3: FFreeAd var_88 = ""
  loc_A9D5EA: BranchF loc_A9D608
  loc_A9D5ED: ImpAdCallFPR4 Beep()
  loc_A9D5F2: FLdRfVar var_88
  loc_A9D5F5: FLdPr Me
  loc_A9D5F8: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A9D5FD: FLdPr var_88
  loc_A9D600: Me.MoveFirst
  loc_A9D605: FFree1Ad var_88
  loc_A9D608: ExitProcHresult
  loc_A9D609: IWMemStDargCopy
End Sub

Public Property Get EOF() '9F0C1C
  'Data Table: 450C80
  loc_9F0BF4: FLdRfVar var_8E
  loc_9F0BF7: FLdRfVar var_8C
  loc_9F0BFA: FLdPr Me
  loc_9F0BFD: from_stack_1v = clsrecabole.global_4525064Get()
  loc_9F0C02: FLdPr var_8C
  loc_9F0C05:  = Me.EOF
  loc_9F0C0A: FLdI2 var_8E
  loc_9F0C0D: FStI2 var_86
  loc_9F0C10: FFree1Ad var_8C
  loc_9F0C13: ExitProcCbHresult
  loc_9F0C19: MemLdFPR8 global_10753
End Sub

Public Property Get BOF() '9F0320
  'Data Table: 450C80
  loc_9F02F8: FLdRfVar var_8E
  loc_9F02FB: FLdRfVar var_8C
  loc_9F02FE: FLdPr Me
  loc_9F0301: from_stack_1v = clsrecabole.global_4525064Get()
  loc_9F0306: FLdPr var_8C
  loc_9F0309:  = Me.BOF
  loc_9F030E: FLdI2 var_8E
  loc_9F0311: FStI2 var_86
  loc_9F0314: FFree1Ad var_8C
  loc_9F0317: ExitProcCbHresult
  loc_9F031D: PopAdLdVar
  loc_9F031E: FLdPr Me08
End Sub

Public Sub Sort(sOrden) '9DEF7C
  'Data Table: 450C80
  loc_9DEF60: ILdI4 sOrden
  loc_9DEF63: FLdRfVar var_88
  loc_9DEF66: FLdPr Me
  loc_9DEF69: from_stack_1v = clsrecabole.global_4525064Get()
  loc_9DEF6E: FLdPr var_88
  loc_9DEF71: Me.Sort = from_stack_1
  loc_9DEF76: FFree1Ad var_88
  loc_9DEF79: ExitProcHresult
End Sub

Public Sub Find(sFind) '9EFBF0
  'Data Table: 450C80
  loc_9EFBC8: LitVar_Missing var_98
  loc_9EFBCB: PopAdLdVar
  loc_9EFBCC: LitI4 1
  loc_9EFBD1: LitI4 0
  loc_9EFBD6: ILdI4 sFind
  loc_9EFBD9: FLdRfVar var_88
  loc_9EFBDC: FLdPr Me
  loc_9EFBDF: from_stack_1v = clsrecabole.global_4525064Get()
  loc_9EFBE4: FLdPr var_88
  loc_9EFBE7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9EFBEC: FFree1Ad var_88
  loc_9EFBEF: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9EFE74
  'Data Table: 450C80
  loc_9EFE4C: FLdRfVar var_90
  loc_9EFE4F: FLdRfVar var_8C
  loc_9EFE52: FLdPr Me
  loc_9EFE55: from_stack_1v = clsrecabole.global_4525064Get()
  loc_9EFE5A: FLdPr var_8C
  loc_9EFE5D:  = Me.AbsolutePosition
  loc_9EFE62: ILdRf var_90
  loc_9EFE65: FStR4 var_88
  loc_9EFE68: FFree1Ad var_8C
  loc_9EFE6B: ExitProcCbHresult
  loc_9EFE71: HardType
End Sub

Public Property Get RecordCount() '9EFF2C
  'Data Table: 450C80
  loc_9EFF04: FLdRfVar var_90
  loc_9EFF07: FLdRfVar var_8C
  loc_9EFF0A: FLdPr Me
  loc_9EFF0D: from_stack_1v = clsrecabole.global_4525064Get()
  loc_9EFF12: FLdPr var_8C
  loc_9EFF15:  = Me.RecordCount
  loc_9EFF1A: ILdRf var_90
  loc_9EFF1D: FStR4 var_88
  loc_9EFF20: FFree1Ad var_8C
  loc_9EFF23: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriBole, NumeBole, CodiOfic, CuenCtct, FeveRebo, ImpoRebo, DiasRebo) 'AFC608
  'Data Table: 450C80
  loc_AFC490: ILdRf CuenCtct
  loc_AFC493: FStStrCopy var_88
  loc_AFC496: ILdRf FeveRebo
  loc_AFC499: FStStrCopy var_8C
  loc_AFC49C: FLdRfVar var_90
  loc_AFC49F: ILdRf NumeBole
  loc_AFC4A2: FLdI2 PeriBole
  loc_AFC4A5: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_AFC4AA: ILdRf var_90
  loc_AFC4AD: LitStr vbNullString
  loc_AFC4B0: NeStr
  loc_AFC4B2: FFree1Str var_90
  loc_AFC4B5: BranchF loc_AFC4C3
  loc_AFC4B8: LitStr "El RECARGO de BOLETO ya existe para el boleto. Reintente..."
  loc_AFC4BB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AFC4C0: Branch loc_AFC606
  loc_AFC4C3: LitI2_Byte 0
  loc_AFC4C5: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AFC4CA: FStFPR8 var_174
  loc_AFC4CD: LitI2_Byte 0
  loc_AFC4CF: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AFC4D4: FStFPR8 var_17C
  loc_AFC4D7: LitStr "INSERT INTO recabole (PeriBole,NumeBole,CodiOfic,CuenCtct,FealRebo,FeveRebo,ImpoRebo,DiasRebo,ActuRebo) VALUES ("
  loc_AFC4DA: FLdI2 PeriBole
  loc_AFC4DD: CStrUI1
  loc_AFC4DF: FStStrNoPop var_90
  loc_AFC4E2: ConcatStr
  loc_AFC4E3: FStStrNoPop var_94
  loc_AFC4E6: LitStr ","
  loc_AFC4E9: ConcatStr
  loc_AFC4EA: FStStrNoPop var_98
  loc_AFC4ED: ILdRf NumeBole
  loc_AFC4F0: CStrI4
  loc_AFC4F2: FStStrNoPop var_9C
  loc_AFC4F5: ConcatStr
  loc_AFC4F6: FStStrNoPop var_A0
  loc_AFC4F9: LitStr ","
  loc_AFC4FC: ConcatStr
  loc_AFC4FD: FStStrNoPop var_A4
  loc_AFC500: FLdUI1
  loc_AFC504: CStrI2
  loc_AFC506: FStStrNoPop var_A8
  loc_AFC509: ConcatStr
  loc_AFC50A: FStStrNoPop var_AC
  loc_AFC50D: LitStr ",'"
  loc_AFC510: ConcatStr
  loc_AFC511: FStStrNoPop var_B0
  loc_AFC514: ILdRf var_88
  loc_AFC517: ConcatStr
  loc_AFC518: FStStrNoPop var_B4
  loc_AFC51B: LitStr "','"
  loc_AFC51E: ConcatStr
  loc_AFC51F: FStStrNoPop var_F8
  loc_AFC522: LitI4 1
  loc_AFC527: LitI4 1
  loc_AFC52C: LitVarStr var_E4, "yyyy-mm-dd"
  loc_AFC531: FStVarCopyObj var_F4
  loc_AFC534: FLdRfVar var_F4
  loc_AFC537: FLdFPR8 var_174
  loc_AFC53A: CVarDate var_D4
  loc_AFC53E: ImpAdCallI2 Format$(, )
  loc_AFC543: FStStrNoPop var_FC
  loc_AFC546: ConcatStr
  loc_AFC547: FStStrNoPop var_100
  loc_AFC54A: LitStr "','"
  loc_AFC54D: ConcatStr
  loc_AFC54E: FStStrNoPop var_144
  loc_AFC551: LitI4 1
  loc_AFC556: LitI4 1
  loc_AFC55B: LitVarStr var_130, "yyyy-mm-dd"
  loc_AFC560: FStVarCopyObj var_140
  loc_AFC563: FLdRfVar var_140
  loc_AFC566: FLdFPR8 var_17C
  loc_AFC569: CVarDate var_120
  loc_AFC56D: ImpAdCallI2 Format$(, )
  loc_AFC572: FStStrNoPop var_148
  loc_AFC575: ConcatStr
  loc_AFC576: FStStrNoPop var_14C
  loc_AFC579: LitStr "',"
  loc_AFC57C: ConcatStr
  loc_AFC57D: FStStrNoPop var_154
  loc_AFC580: LitI4 0
  loc_AFC585: LitI4 -1
  loc_AFC58A: LitI4 1
  loc_AFC58F: LitStr "."
  loc_AFC592: LitStr ","
  loc_AFC595: FLdFPR8 ImpoRebo
  loc_AFC598: CStrR8
  loc_AFC59A: FStStrNoPop var_150
  loc_AFC59D: ImpAdCallI2 Replace(, , , , , )
  loc_AFC5A2: FStStrNoPop var_158
  loc_AFC5A5: ConcatStr
  loc_AFC5A6: FStStrNoPop var_15C
  loc_AFC5A9: LitStr ","
  loc_AFC5AC: ConcatStr
  loc_AFC5AD: FStStrNoPop var_160
  loc_AFC5B0: FLdI2 arg_28
  loc_AFC5B3: CStrUI1
  loc_AFC5B5: FStStrNoPop var_164
  loc_AFC5B8: ConcatStr
  loc_AFC5B9: FStStrNoPop var_168
  loc_AFC5BC: LitStr ",'No')"
  loc_AFC5BF: ConcatStr
  loc_AFC5C0: FStStrNoPop var_16C
  loc_AFC5C3: Call EjecutarRs2(from_stack_1v)
  loc_AFC5C8: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_F8 = "": var_FC = "": var_100 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_AFC5FB: FFreeVar var_D4 = "": var_F4 = "": var_120 = ""
  loc_AFC606: ExitProcHresult
End Sub

Public Sub Delete() 'A22A5C
  'Data Table: 450C80
  loc_A22A14: FLdRfVar var_8C
  loc_A22A17: FLdRfVar var_88
  loc_A22A1A: FLdPr Me
  loc_A22A1D: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A22A22: FLdPr var_88
  loc_A22A25:  = Me.RecordCount
  loc_A22A2A: ILdRf var_8C
  loc_A22A2D: LitI4 0
  loc_A22A32: GtI4
  loc_A22A33: FFree1Ad var_88
  loc_A22A36: BranchF loc_A22A59
  loc_A22A39: LitI4 1
  loc_A22A3E: FLdRfVar var_88
  loc_A22A41: FLdPr Me
  loc_A22A44: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A22A49: FLdPr var_88
  loc_A22A4C: Me.Delete
  loc_A22A51: FFree1Ad var_88
  loc_A22A54: Call MoveNext()
  loc_A22A59: ExitProcHresult
  loc_A22A5A: ImpAdLdPr ext_4010C4
End Sub

Public Sub Requery() 'A00178
  'Data Table: 450C80
  loc_A00148: LitI4 -1
  loc_A0014D: FLdRfVar var_88
  loc_A00150: FLdPr Me
  loc_A00153: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A00158: FLdPr var_88
  loc_A0015B: Me.Requery from_stack_1
  loc_A00160: FFree1Ad var_88
  loc_A00163: LitVarStr var_98, "Primary"
  loc_A00168: PopAdLdVar
  loc_A00169: FLdPr Me
  loc_A0016C: LateIdCall
  loc_A00174: ExitProcHresult
End Sub

Public Sub Update() 'A22EB4
  'Data Table: 450C80
  loc_A22E70: FLdRfVar var_88
  loc_A22E73: FLdPr Me
  loc_A22E76: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A22E7B: FLdZeroAd var_88
  loc_A22E7E: FStAdFunc var_8C
  loc_A22E81: LitI4 3
  loc_A22E86: FLdPr var_8C
  loc_A22E89: Me.UpdateBatch
  loc_A22E8E: FLdRfVar var_90
  loc_A22E91: FLdPr var_8C
  loc_A22E94:  = Me.EditMode
  loc_A22E99: ILdRf var_90
  loc_A22E9C: LitI4 2
  loc_A22EA1: EqI4
  loc_A22EA2: BranchF loc_A22EAA
  loc_A22EA5: Call MoveLast()
  loc_A22EAA: LitNothing
  loc_A22EAC: FStAd var_8C 
  loc_A22EB0: ExitProcHresult
  loc_A22EB1: FLdFPR8 arg_6964
End Sub

Public Sub Cancel() 'A4A300
  'Data Table: 450C80
  loc_A4A2AC: FLdRfVar var_88
  loc_A4A2AF: FLdPr Me
  loc_A4A2B2: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A4A2B7: FLdZeroAd var_88
  loc_A4A2BA: FStAdFunc var_8C
  loc_A4A2BD: FLdRfVar var_90
  loc_A4A2C0: FLdPr var_8C
  loc_A4A2C3:  = Me.RecordCount
  loc_A4A2C8: ILdRf var_90
  loc_A4A2CB: LitI4 0
  loc_A4A2D0: GtI4
  loc_A4A2D1: BranchF loc_A4A2F8
  loc_A4A2D4: FLdPr var_8C
  loc_A4A2D7: Me.CancelUpdate
  loc_A4A2DC: FLdRfVar var_90
  loc_A4A2DF: FLdPr var_8C
  loc_A4A2E2:  = Me.EditMode
  loc_A4A2E7: ILdRf var_90
  loc_A4A2EA: LitI4 2
  loc_A4A2EF: EqI4
  loc_A4A2F0: BranchF loc_A4A2F8
  loc_A4A2F3: Call MoveFirst()
  loc_A4A2F8: LitNothing
  loc_A4A2FA: FStAd var_8C 
  loc_A4A2FE: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FE494
  'Data Table: 450C80
  loc_9FE468: FLdRfVar var_90
  loc_9FE46B: FLdRfVar var_8C
  loc_9FE46E: FLdPr Me
  loc_9FE471: from_stack_1v = clsrecabole.global_4525064Get()
  loc_9FE476: FLdPr var_8C
  loc_9FE479:  = Me.EditMode
  loc_9FE47E: ILdRf var_90
  loc_9FE481: LitI4 0
  loc_9FE486: NeI4
  loc_9FE487: FStI2 var_86
  loc_9FE48A: FFree1Ad var_8C
  loc_9FE48D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A6FBF4
  'Data Table: 450C80
  loc_A6FB80: ILdRf sSelect
  loc_A6FB83: FStStrCopy var_88
  loc_A6FB86: LitNothing
  loc_A6FB88: CastAd
  loc_A6FB8B: FStAdFuncNoPop
  loc_A6FB8E: FLdPr Me
  loc_A6FB91: Call clsrecabole.global_4525064Set(from_stack_1v)
  loc_A6FB96: FFree1Ad var_8C
  loc_A6FB99: New Recordset
  loc_A6FB9D: FStAdFuncNoPop
  loc_A6FBA0: FLdPr Me
  loc_A6FBA3: Call clsrecabole.global_4525064Set(from_stack_1v)
  loc_A6FBA8: FFree1Ad var_8C
  loc_A6FBAB: LitI4 -1
  loc_A6FBB0: LitI4 3
  loc_A6FBB5: LitI4 3
  loc_A6FBBA: ImpAdLdI4 MemVar_D9301C
  loc_A6FBBD: CVarAd
  loc_A6FBC1: PopAdLdVar
  loc_A6FBC2: ILdRf var_88
  loc_A6FBC5: CVarStr var_9C
  loc_A6FBC8: PopAdLdVar
  loc_A6FBC9: FLdRfVar var_8C
  loc_A6FBCC: FLdPr Me
  loc_A6FBCF: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A6FBD4: FLdPr var_8C
  loc_A6FBD7: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6FBDC: FFree1Ad var_8C
  loc_A6FBDF: LitVarStr var_9C, "Primary"
  loc_A6FBE4: PopAdLdVar
  loc_A6FBE5: FLdPr Me
  loc_A6FBE8: LateIdCall
  loc_A6FBF0: ExitProcHresult
  loc_A6FBF1: LtCy
  loc_A6FBF2: AndI4
End Sub

Public Sub EjecutarRs2(sSelect) 'A5AF08
  'Data Table: 450C80
  loc_A5AEA8: ILdRf sSelect
  loc_A5AEAB: FStStrCopy var_88
  loc_A5AEAE: LitNothing
  loc_A5AEB0: CastAd
  loc_A5AEB3: FStAdFuncNoPop
  loc_A5AEB6: FLdPr Me
  loc_A5AEB9: Call clsrecabole.global_4525064Set(from_stack_1v)
  loc_A5AEBE: FFree1Ad var_8C
  loc_A5AEC1: New Recordset
  loc_A5AEC5: FStAdFuncNoPop
  loc_A5AEC8: FLdPr Me
  loc_A5AECB: Call clsrecabole.global_4525064Set(from_stack_1v)
  loc_A5AED0: FFree1Ad var_8C
  loc_A5AED3: LitI4 -1
  loc_A5AED8: LitI4 3
  loc_A5AEDD: LitI4 3
  loc_A5AEE2: ImpAdLdI4 MemVar_D9301C
  loc_A5AEE5: CVarAd
  loc_A5AEE9: PopAdLdVar
  loc_A5AEEA: ILdRf var_88
  loc_A5AEED: CVarStr var_9C
  loc_A5AEF0: PopAdLdVar
  loc_A5AEF1: FLdRfVar var_8C
  loc_A5AEF4: FLdPr Me
  loc_A5AEF7: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A5AEFC: FLdPr var_8C
  loc_A5AEFF: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5AF04: FFree1Ad var_8C
  loc_A5AF07: ExitProcHresult
End Sub

Public Sub EjecutarRs3(sSelect) 'A5AE70
  'Data Table: 450C80
  loc_A5AE10: ILdRf sSelect
  loc_A5AE13: FStStrCopy var_88
  loc_A5AE16: LitNothing
  loc_A5AE18: CastAd
  loc_A5AE1B: FStAdFuncNoPop
  loc_A5AE1E: FLdPr Me
  loc_A5AE21: Call clsrecabole.global_4525064Set(from_stack_1v)
  loc_A5AE26: FFree1Ad var_8C
  loc_A5AE29: New Recordset
  loc_A5AE2D: FStAdFuncNoPop
  loc_A5AE30: FLdPr Me
  loc_A5AE33: Call clsrecabole.global_4525064Set(from_stack_1v)
  loc_A5AE38: FFree1Ad var_8C
  loc_A5AE3B: LitI4 -1
  loc_A5AE40: LitI4 3
  loc_A5AE45: LitI4 3
  loc_A5AE4A: ImpAdLdI4 MemVar_D9301C
  loc_A5AE4D: CVarAd
  loc_A5AE51: PopAdLdVar
  loc_A5AE52: ILdRf var_88
  loc_A5AE55: CVarStr var_9C
  loc_A5AE58: PopAdLdVar
  loc_A5AE59: FLdRfVar var_8C
  loc_A5AE5C: FLdPr Me
  loc_A5AE5F: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A5AE64: FLdPr var_8C
  loc_A5AE67: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5AE6C: FFree1Ad var_8C
  loc_A5AE6F: ExitProcHresult
End Sub

Public Sub Encontrar(CodiCall) '9EF714
  'Data Table: 450C80
  loc_9EF6F4: LitStr "CodiCall = "
  loc_9EF6F7: FLdI2 CodiCall
  loc_9EF6FA: CStrUI1
  loc_9EF6FC: FStStrNoPop var_88
  loc_9EF6FF: ConcatStr
  loc_9EF700: PopTmpLdAdStr
  loc_9EF704: Call Find(from_stack_1v)
  loc_9EF709: FFreeStr var_88 = ""
  loc_9EF710: ExitProcHresult
End Sub

Public Property Get DataSource() 'A08E10
  'Data Table: 450C80
  loc_A08DE0: ZeroRetVal
  loc_A08DE2: FLdRfVar var_90
  loc_A08DE5: FLdRfVar var_8C
  loc_A08DE8: FLdPr Me
  loc_A08DEB: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A08DF0: FLdPr var_8C
  loc_A08DF3:  = Me.DataSource
  loc_A08DF8: ILdRf var_90
  loc_A08DFB: CastAd
  loc_A08DFE: FStAdFunc var_88
  loc_A08E01: FFreeAd var_8C = ""
  loc_A08E08: ExitProcCbHresult
  loc_A08E0E: AndI4
End Sub

Public Property Get EditMode() '9F04EC
  'Data Table: 450C80
  loc_9F04C4: FLdRfVar var_90
  loc_9F04C7: FLdRfVar var_8C
  loc_9F04CA: FLdPr Me
  loc_9F04CD: from_stack_1v = clsrecabole.global_4525064Get()
  loc_9F04D2: FLdPr var_8C
  loc_9F04D5:  = Me.EditMode
  loc_9F04DA: ILdRf var_90
  loc_9F04DD: FStR4 var_88
  loc_9F04E0: FFree1Ad var_8C
  loc_9F04E3: ExitProcCbHresult
  loc_9F04E9: GeCyR8
  loc_9F04EA: AndI4
End Sub

Public Property Get CodiOfic() 'A52BA0
  'Data Table: 450C80
  loc_A52B50: FLdRfVar var_B4
  loc_A52B53: FLdRfVar var_A4
  loc_A52B56: LitVarStr var_A0, "CodiOfic"
  loc_A52B5B: PopAdLdVar
  loc_A52B5C: FLdRfVar var_90
  loc_A52B5F: FLdRfVar var_8C
  loc_A52B62: FLdPr Me
  loc_A52B65: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A52B6A: FLdPr var_8C
  loc_A52B6D:  = Me.Fields
  loc_A52B72: FLdPr var_90
  loc_A52B75: from_stack_2 = Me.Item(from_stack_1)
  loc_A52B7A: FLdPr var_A4
  loc_A52B7D:  = Me.Value
  loc_A52B82: FLdRfVar var_B4
  loc_A52B85: CUI1Var
  loc_A52B87: FStUI1 var_86
  loc_A52B8B: FFreeAd var_8C = "": var_90 = ""
  loc_A52B94: FFree1Var var_B4 = ""
  loc_A52B97: ExitProcCbHresult
End Sub

Public Property Let CodiOfic(vDato) '9EFE18
  'Data Table: 450C80
  loc_9EFDF0: FLdUI1
  loc_9EFDF4: CVarUI1
  loc_9EFDF8: PopAdLdVar
  loc_9EFDF9: LitVarStr var_98, "CodiOfic"
  loc_9EFDFE: PopAdLdVar
  loc_9EFDFF: FLdRfVar var_88
  loc_9EFE02: FLdPr Me
  loc_9EFE05: from_stack_1v = clsrecabole.global_4525064Get()
  loc_9EFE0A: FLdPr var_88
  loc_9EFE0D: Me.Collect = from_stack_1
  loc_9EFE12: FFree1Ad var_88
  loc_9EFE15: ExitProcHresult
End Sub

Public Property Get CuenCtct() 'A54B7C
  'Data Table: 450C80
  loc_A54B2C: ZeroRetVal
  loc_A54B2E: FLdRfVar var_B4
  loc_A54B31: FLdRfVar var_A4
  loc_A54B34: LitVarStr var_A0, "CuenCtct"
  loc_A54B39: PopAdLdVar
  loc_A54B3A: FLdRfVar var_90
  loc_A54B3D: FLdRfVar var_8C
  loc_A54B40: FLdPr Me
  loc_A54B43: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A54B48: FLdPr var_8C
  loc_A54B4B:  = Me.Fields
  loc_A54B50: FLdPr var_90
  loc_A54B53: from_stack_2 = Me.Item(from_stack_1)
  loc_A54B58: FLdPr var_A4
  loc_A54B5B:  = Me.Value
  loc_A54B60: FLdRfVar var_B4
  loc_A54B63: CStrVarTmp
  loc_A54B64: FStStr var_88
  loc_A54B67: FFreeAd var_8C = "": var_90 = ""
  loc_A54B70: FFree1Var var_B4 = ""
  loc_A54B73: ExitProcCbHresult
End Sub

Public Property Let CuenCtct(vDato) 'A01560
  'Data Table: 450C80
  loc_A01534: ILdRf vDato
  loc_A01537: FStStrCopy var_88
  loc_A0153A: ILdRf var_88
  loc_A0153D: CVarStr var_AC
  loc_A01540: PopAdLdVar
  loc_A01541: LitVarStr var_9C, "CuenCtct"
  loc_A01546: PopAdLdVar
  loc_A01547: FLdRfVar var_8C
  loc_A0154A: FLdPr Me
  loc_A0154D: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A01552: FLdPr var_8C
  loc_A01555: Me.Collect = from_stack_1
  loc_A0155A: FFree1Ad var_8C
  loc_A0155D: ExitProcHresult
End Sub

Public Property Get PeriBole() 'A4A03C
  'Data Table: 450C80
  loc_A49FF0: FLdRfVar var_B4
  loc_A49FF3: FLdRfVar var_A4
  loc_A49FF6: LitVarStr var_A0, "PeriBole"
  loc_A49FFB: PopAdLdVar
  loc_A49FFC: FLdRfVar var_90
  loc_A49FFF: FLdRfVar var_8C
  loc_A4A002: FLdPr Me
  loc_A4A005: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A4A00A: FLdPr var_8C
  loc_A4A00D:  = Me.Fields
  loc_A4A012: FLdPr var_90
  loc_A4A015: from_stack_2 = Me.Item(from_stack_1)
  loc_A4A01A: FLdPr var_A4
  loc_A4A01D:  = Me.Value
  loc_A4A022: FLdRfVar var_B4
  loc_A4A025: CI2Var
  loc_A4A026: FStI2 var_86
  loc_A4A029: FFreeAd var_8C = "": var_90 = ""
  loc_A4A032: FFree1Var var_B4 = ""
  loc_A4A035: ExitProcCbHresult
End Sub

Public Property Let PeriBole(vDato) '9EF3A8
  'Data Table: 450C80
  loc_9EF384: FLdI2 vDato
  loc_9EF387: CVarI2 var_A8
  loc_9EF38A: PopAdLdVar
  loc_9EF38B: LitVarStr var_98, "PeriBole"
  loc_9EF390: PopAdLdVar
  loc_9EF391: FLdRfVar var_88
  loc_9EF394: FLdPr Me
  loc_9EF397: from_stack_1v = clsrecabole.global_4525064Get()
  loc_9EF39C: FLdPr var_88
  loc_9EF39F: Me.Collect = from_stack_1
  loc_9EF3A4: FFree1Ad var_88
  loc_9EF3A7: ExitProcHresult
End Sub

Public Property Get NumeBole() 'A49FB0
  'Data Table: 450C80
  loc_A49F64: FLdRfVar var_B4
  loc_A49F67: FLdRfVar var_A4
  loc_A49F6A: LitVarStr var_A0, "NumeBole"
  loc_A49F6F: PopAdLdVar
  loc_A49F70: FLdRfVar var_90
  loc_A49F73: FLdRfVar var_8C
  loc_A49F76: FLdPr Me
  loc_A49F79: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A49F7E: FLdPr var_8C
  loc_A49F81:  = Me.Fields
  loc_A49F86: FLdPr var_90
  loc_A49F89: from_stack_2 = Me.Item(from_stack_1)
  loc_A49F8E: FLdPr var_A4
  loc_A49F91:  = Me.Value
  loc_A49F96: FLdRfVar var_B4
  loc_A49F99: CI4Var
  loc_A49F9B: FStR4 var_88
  loc_A49F9E: FFreeAd var_8C = "": var_90 = ""
  loc_A49FA7: FFree1Var var_B4 = ""
  loc_A49FAA: ExitProcCbHresult
End Sub

Public Property Let NumeBole(vDato) '9F0884
  'Data Table: 450C80
  loc_9F085C: ILdRf vDato
  loc_9F085F: CVarI4
  loc_9F0863: PopAdLdVar
  loc_9F0864: LitVarStr var_98, "NumeBole"
  loc_9F0869: PopAdLdVar
  loc_9F086A: FLdRfVar var_88
  loc_9F086D: FLdPr Me
  loc_9F0870: from_stack_1v = clsrecabole.global_4525064Get()
  loc_9F0875: FLdPr var_88
  loc_9F0878: Me.Collect = from_stack_1
  loc_9F087D: FFree1Ad var_88
  loc_9F0880: ExitProcHresult
End Sub

Public Property Get ActuRebo() 'A5526C
  'Data Table: 450C80
  loc_A5521C: ZeroRetVal
  loc_A5521E: FLdRfVar var_B4
  loc_A55221: FLdRfVar var_A4
  loc_A55224: LitVarStr var_A0, "ActuRebo"
  loc_A55229: PopAdLdVar
  loc_A5522A: FLdRfVar var_90
  loc_A5522D: FLdRfVar var_8C
  loc_A55230: FLdPr Me
  loc_A55233: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A55238: FLdPr var_8C
  loc_A5523B:  = Me.Fields
  loc_A55240: FLdPr var_90
  loc_A55243: from_stack_2 = Me.Item(from_stack_1)
  loc_A55248: FLdPr var_A4
  loc_A5524B:  = Me.Value
  loc_A55250: FLdRfVar var_B4
  loc_A55253: CStrVarTmp
  loc_A55254: FStStr var_88
  loc_A55257: FFreeAd var_8C = "": var_90 = ""
  loc_A55260: FFree1Var var_B4 = ""
  loc_A55263: ExitProcCbHresult
  loc_A55269: StAryMove
End Sub

Public Property Let ActuRebo(vDato) 'A018E4
  'Data Table: 450C80
  loc_A018B8: ILdRf vDato
  loc_A018BB: FStStrCopy var_88
  loc_A018BE: ILdRf var_88
  loc_A018C1: CVarStr var_AC
  loc_A018C4: PopAdLdVar
  loc_A018C5: LitVarStr var_9C, "ActuRebo"
  loc_A018CA: PopAdLdVar
  loc_A018CB: FLdRfVar var_8C
  loc_A018CE: FLdPr Me
  loc_A018D1: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A018D6: FLdPr var_8C
  loc_A018D9: Me.Collect = from_stack_1
  loc_A018DE: FFree1Ad var_8C
  loc_A018E1: ExitProcHresult
End Sub

Public Property Get FealRebo() 'A55A84
  'Data Table: 450C80
  loc_A55A34: ZeroRetVal
  loc_A55A36: FLdRfVar var_B4
  loc_A55A39: FLdRfVar var_A4
  loc_A55A3C: LitVarStr var_A0, "FealRebo"
  loc_A55A41: PopAdLdVar
  loc_A55A42: FLdRfVar var_90
  loc_A55A45: FLdRfVar var_8C
  loc_A55A48: FLdPr Me
  loc_A55A4B: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A55A50: FLdPr var_8C
  loc_A55A53:  = Me.Fields
  loc_A55A58: FLdPr var_90
  loc_A55A5B: from_stack_2 = Me.Item(from_stack_1)
  loc_A55A60: FLdPr var_A4
  loc_A55A63:  = Me.Value
  loc_A55A68: FLdRfVar var_B4
  loc_A55A6B: CStrVarTmp
  loc_A55A6C: FStStr var_88
  loc_A55A6F: FFreeAd var_8C = "": var_90 = ""
  loc_A55A78: FFree1Var var_B4 = ""
  loc_A55A7B: ExitProcCbHresult
End Sub

Public Property Let FealRebo(vDato) 'A01A74
  'Data Table: 450C80
  loc_A01A48: ILdRf vDato
  loc_A01A4B: FStStrCopy var_88
  loc_A01A4E: ILdRf var_88
  loc_A01A51: CVarStr var_AC
  loc_A01A54: PopAdLdVar
  loc_A01A55: LitVarStr var_9C, "FealRebo"
  loc_A01A5A: PopAdLdVar
  loc_A01A5B: FLdRfVar var_8C
  loc_A01A5E: FLdPr Me
  loc_A01A61: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A01A66: FLdPr var_8C
  loc_A01A69: Me.Collect = from_stack_1
  loc_A01A6E: FFree1Ad var_8C
  loc_A01A71: ExitProcHresult
  loc_A01A72: EqCy
End Sub

Public Property Get FeveRebo() 'A56174
  'Data Table: 450C80
  loc_A56124: ZeroRetVal
  loc_A56126: FLdRfVar var_B4
  loc_A56129: FLdRfVar var_A4
  loc_A5612C: LitVarStr var_A0, "FeveRebo"
  loc_A56131: PopAdLdVar
  loc_A56132: FLdRfVar var_90
  loc_A56135: FLdRfVar var_8C
  loc_A56138: FLdPr Me
  loc_A5613B: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A56140: FLdPr var_8C
  loc_A56143:  = Me.Fields
  loc_A56148: FLdPr var_90
  loc_A5614B: from_stack_2 = Me.Item(from_stack_1)
  loc_A56150: FLdPr var_A4
  loc_A56153:  = Me.Value
  loc_A56158: FLdRfVar var_B4
  loc_A5615B: CStrVarTmp
  loc_A5615C: FStStr var_88
  loc_A5615F: FFreeAd var_8C = "": var_90 = ""
  loc_A56168: FFree1Var var_B4 = ""
  loc_A5616B: ExitProcCbHresult
  loc_A56171: CStr2Ansi
End Sub

Public Property Let FeveRebo(vDato) 'A01CCC
  'Data Table: 450C80
  loc_A01CA0: ILdRf vDato
  loc_A01CA3: FStStrCopy var_88
  loc_A01CA6: ILdRf var_88
  loc_A01CA9: CVarStr var_AC
  loc_A01CAC: PopAdLdVar
  loc_A01CAD: LitVarStr var_9C, "FeveRebo"
  loc_A01CB2: PopAdLdVar
  loc_A01CB3: FLdRfVar var_8C
  loc_A01CB6: FLdPr Me
  loc_A01CB9: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A01CBE: FLdPr var_8C
  loc_A01CC1: Me.Collect = from_stack_1
  loc_A01CC6: FFree1Ad var_8C
  loc_A01CC9: ExitProcHresult
  loc_A01CCA: EqStr
End Sub

Public Property Get ImpoRebo() 'A48F48
  'Data Table: 450C80
  loc_A48EFC: FLdRfVar var_B8
  loc_A48EFF: FLdRfVar var_A8
  loc_A48F02: LitVarStr var_A4, "ImpoRebo"
  loc_A48F07: PopAdLdVar
  loc_A48F08: FLdRfVar ImpoRebo
  loc_A48F0B: FLdRfVar var_90
  loc_A48F0E: FLdPr Me
  loc_A48F11: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A48F16: FLdPr var_90
  loc_A48F19:  = Me.Fields
  loc_A48F1E: FLdPr ImpoRebo
  loc_A48F21: from_stack_2 = Me.Item(from_stack_1)
  loc_A48F26: FLdPr var_A8
  loc_A48F29:  = Me.Value
  loc_A48F2E: FLdRfVar var_B8
  loc_A48F31: CR4Var
  loc_A48F32: FStFPR8 var_8C
  loc_A48F35: FFreeAd var_90 = "": ImpoRebo = ""
  loc_A48F3E: FFree1Var var_B8 = ""
  loc_A48F41: ExitProcCbHresult
End Sub

Public Property Let ImpoRebo(vDato) '9F0B08
  'Data Table: 450C80
  loc_9F0AE0: FLdFPR8 vDato
  loc_9F0AE3: CVarR8
  loc_9F0AE7: PopAdLdVar
  loc_9F0AE8: LitVarStr var_98, "ImpoRebo"
  loc_9F0AED: PopAdLdVar
  loc_9F0AEE: FLdRfVar var_88
  loc_9F0AF1: FLdPr Me
  loc_9F0AF4: from_stack_1v = clsrecabole.global_4525064Get()
  loc_9F0AF9: FLdPr var_88
  loc_9F0AFC: Me.Collect = from_stack_1
  loc_9F0B01: FFree1Ad var_88
  loc_9F0B04: ExitProcHresult
End Sub

Public Property Get DiasRebo() 'A48E30
  'Data Table: 450C80
  loc_A48DE4: FLdRfVar var_B4
  loc_A48DE7: FLdRfVar var_A4
  loc_A48DEA: LitVarStr var_A0, "DiasRebo"
  loc_A48DEF: PopAdLdVar
  loc_A48DF0: FLdRfVar var_90
  loc_A48DF3: FLdRfVar var_8C
  loc_A48DF6: FLdPr Me
  loc_A48DF9: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A48DFE: FLdPr var_8C
  loc_A48E01:  = Me.Fields
  loc_A48E06: FLdPr var_90
  loc_A48E09: from_stack_2 = Me.Item(from_stack_1)
  loc_A48E0E: FLdPr var_A4
  loc_A48E11:  = Me.Value
  loc_A48E16: FLdRfVar var_B4
  loc_A48E19: CI2Var
  loc_A48E1A: FStI2 var_86
  loc_A48E1D: FFreeAd var_8C = "": var_90 = ""
  loc_A48E26: FFree1Var var_B4 = ""
  loc_A48E29: ExitProcCbHresult
End Sub

Public Property Let DiasRebo(vDato) '9EEED8
  'Data Table: 450C80
  loc_9EEEB4: FLdI2 vDato
  loc_9EEEB7: CVarI2 var_A8
  loc_9EEEBA: PopAdLdVar
  loc_9EEEBB: LitVarStr var_98, "DiasRebo"
  loc_9EEEC0: PopAdLdVar
  loc_9EEEC1: FLdRfVar var_88
  loc_9EEEC4: FLdPr Me
  loc_9EEEC7: from_stack_1v = clsrecabole.global_4525064Get()
  loc_9EEECC: FLdPr var_88
  loc_9EEECF: Me.Collect = from_stack_1
  loc_9EEED4: FFree1Ad var_88
  loc_9EEED7: ExitProcHresult
End Sub

Public Function ValidaClave(PeriBole, NumeBole) 'A791F8
  'Data Table: 450C80
  loc_A79190: ZeroRetVal
  loc_A79192: LitStr "SELECT PeriBole FROM recabole WHERE peribole = "
  loc_A79195: FLdI2 PeriBole
  loc_A79198: CStrUI1
  loc_A7919A: FStStrNoPop var_8C
  loc_A7919D: ConcatStr
  loc_A7919E: FStStrNoPop var_90
  loc_A791A1: LitStr " AND NumeBole = "
  loc_A791A4: ConcatStr
  loc_A791A5: FStStrNoPop ValidaClave
  loc_A791A8: ILdRf NumeBole
  loc_A791AB: CStrI4
  loc_A791AD: FStStrNoPop var_98
  loc_A791B0: ConcatStr
  loc_A791B1: FStStrNoPop var_9C
  loc_A791B4: Call EjecutarRs2(from_stack_1v)
  loc_A791B9: FFreeStr var_8C = "": var_90 = "": ValidaClave = "": var_98 = ""
  loc_A791C6: FLdRfVar var_A4
  loc_A791C9: FLdRfVar var_A0
  loc_A791CC: FLdPr Me
  loc_A791CF: from_stack_1v = clsrecabole.global_4525064Get()
  loc_A791D4: FLdPr var_A0
  loc_A791D7:  = Me.RecordCount
  loc_A791DC: ILdRf var_A4
  loc_A791DF: LitI4 0
  loc_A791E4: GtI4
  loc_A791E5: FFree1Ad var_A0
  loc_A791E8: BranchF loc_A791F1
  loc_A791EB: LitStr "EL TIPO DE LIQUIDACION YA EXISTE. Reintente..."
  loc_A791EE: FStStrCopy var_88
  loc_A791F1: ExitProcCbHresult
End Function

Public Function BuscaImporteRecabole(CodiOfic, CuenCtct) 'C7A8DC
  'Data Table: 450C80
  loc_C795A4: ILdRf CuenCtct
  loc_C795A7: FStStrCopy var_90
  loc_C795AA: LitStr "Municipalidad de Guaymallén"
  loc_C795AD: LitStr "Municipalidad de Malargüe"
  loc_C795B0: EqStr
  loc_C795B2: BranchF loc_C7973C
  loc_C795B5: FLdRfVar var_B4
  loc_C795B8: LitI4 0
  loc_C795BD: FLdRfVar var_A4
  loc_C795C0: NewIfNullPr clsinteres
  loc_C795C3: from_stack_2v = clsinteres.BuscaInteres(from_stack_1v)
  loc_C795C8: FLdFPR8 var_B4
  loc_C795CB: FStFPR8 var_AC
  loc_C795CE: LitStr "SELECT ImpoRebo, DiasRebo FROM recabole WHERE CodiOfic = "
  loc_C795D1: FLdI2 CodiOfic
  loc_C795D4: CStrUI1
  loc_C795D6: FStStrNoPop var_B8
  loc_C795D9: ConcatStr
  loc_C795DA: FStStrNoPop var_BC
  loc_C795DD: LitStr " AND CuenCtct = '"
  loc_C795E0: ConcatStr
  loc_C795E1: FStStrNoPop var_C0
  loc_C795E4: ILdRf var_90
  loc_C795E7: ConcatStr
  loc_C795E8: FStStrNoPop var_C4
  loc_C795EB: LitStr "' AND ActuRebo = 'No'"
  loc_C795EE: ConcatStr
  loc_C795EF: FStStrNoPop var_C8
  loc_C795F2: Call EjecutarRs2(from_stack_1v)
  loc_C795F7: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_C79604: FLdRfVar var_D0
  loc_C79607: FLdRfVar var_CC
  loc_C7960A: FLdPr Me
  loc_C7960D: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79612: FLdPr var_CC
  loc_C79615:  = Me.RecordCount
  loc_C7961A: ILdRf var_D0
  loc_C7961D: LitI4 0
  loc_C79622: GtI4
  loc_C79623: FFree1Ad var_CC
  loc_C79626: BranchF loc_C79733
  loc_C79629: FLdRfVar var_CC
  loc_C7962C: FLdPr Me
  loc_C7962F: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79634: FLdPr var_CC
  loc_C79637: Me.MoveFirst
  loc_C7963C: FFree1Ad var_CC
  loc_C7963F: FLdRfVar var_D2
  loc_C79642: FLdRfVar var_CC
  loc_C79645: FLdPr Me
  loc_C79648: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7964D: FLdPr var_CC
  loc_C79650:  = Me.EOF
  loc_C79655: FLdI2 var_D2
  loc_C79658: NotI4
  loc_C79659: FFree1Ad var_CC
  loc_C7965C: BranchF loc_C79730
  loc_C7965F: FLdRfVar var_FC
  loc_C79662: FLdRfVar var_EC
  loc_C79665: LitVarStr var_E8, "DiasRebo"
  loc_C7966A: PopAdLdVar
  loc_C7966B: FLdRfVar var_D8
  loc_C7966E: FLdRfVar var_CC
  loc_C79671: FLdPr Me
  loc_C79674: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79679: FLdPr var_CC
  loc_C7967C:  = Me.Fields
  loc_C79681: FLdPr var_D8
  loc_C79684: from_stack_2 = Me.Item(from_stack_1)
  loc_C79689: FLdPr var_EC
  loc_C7968C:  = Me.Value
  loc_C79691: FLdRfVar var_128
  loc_C79694: FLdRfVar var_118
  loc_C79697: LitVarStr var_114, "ImpoRebo"
  loc_C7969C: PopAdLdVar
  loc_C7969D: FLdRfVar var_104
  loc_C796A0: FLdRfVar var_100
  loc_C796A3: FLdPr Me
  loc_C796A6: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C796AB: FLdPr var_100
  loc_C796AE:  = Me.Fields
  loc_C796B3: FLdPr var_104
  loc_C796B6: from_stack_2 = Me.Item(from_stack_1)
  loc_C796BB: FLdPr var_118
  loc_C796BE:  = Me.Value
  loc_C796C3: FLdFPR8 var_8C
  loc_C796C6: CVarR8
  loc_C796CA: LitI4 2
  loc_C796CF: FLdRfVar var_FC
  loc_C796D2: FnCIntVar
  loc_C796D4: CR8I2
  loc_C796D5: FLdFPR8 var_AC
  loc_C796D8: MulR8
  loc_C796D9: LitI2 3000
  loc_C796DC: CR8I2
  loc_C796DD: DivR8
  loc_C796DE: FLdRfVar var_128
  loc_C796E1: FnCDblVar
  loc_C796E3: MulR8
  loc_C796E4: CVarR8
  loc_C796E8: FLdRfVar var_158
  loc_C796EB: ImpAdCallFPR4  = Round(, )
  loc_C796F0: FLdRfVar var_158
  loc_C796F3: AddVar var_178
  loc_C796F7: CR4Var
  loc_C796F8: FStFPR8 var_8C
  loc_C796FB: FFreeAd var_CC = "": var_D8 = "": var_EC = "": var_100 = "": var_104 = ""
  loc_C7970A: FFreeVar var_FC = "": var_128 = "": var_148 = "": var_158 = ""
  loc_C79717: FLdRfVar var_CC
  loc_C7971A: FLdPr Me
  loc_C7971D: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79722: FLdPr var_CC
  loc_C79725: Me.MoveNext
  loc_C7972A: FFree1Ad var_CC
  loc_C7972D: Branch loc_C7963F
  loc_C79730: Branch loc_C79739
  loc_C79733: LitI2_Byte 0
  loc_C79735: CR8I2
  loc_C79736: FStFPR8 var_8C
  loc_C79739: Branch loc_C7A8D5
  loc_C7973C: LitStr "Municipalidad de Guaymallén"
  loc_C7973F: LitStr "Municipalidad de Lavalle"
  loc_C79742: EqStr
  loc_C79744: BranchF loc_C79847
  loc_C79747: LitI2_Byte 0
  loc_C79749: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C7974E: FStFPR8 var_B4
  loc_C79751: LitVarStr var_138, "SELECT IFNULL(SUM(round(round(pow(1.015,period_diff(date_format('"
  loc_C79756: LitI4 1
  loc_C7975B: LitI4 1
  loc_C79760: LitVarStr var_114, "yyyy-mm-dd"
  loc_C79765: FStVarCopyObj var_128
  loc_C79768: FLdRfVar var_128
  loc_C7976B: FLdFPR8 var_B4
  loc_C7976E: CVarDate var_FC
  loc_C79772: FLdRfVar var_148
  loc_C79775: ImpAdCallFPR4  = Format(, )
  loc_C7977A: FLdRfVar var_148
  loc_C7977D: ConcatVar var_158
  loc_C79781: LitVarStr var_168, "', '" & Chr(37) & "Y" & Chr(37) & "m'),date_format(FeveRebo, '" & Chr(37) & "y" & Chr(37) & "m'))),3) * ImpoRebo - ImpoRebo,2)),0) as ImpoRebo FROM recabole WHERE CodiOfic = "
  loc_C79786: ConcatVar var_178
  loc_C7978A: FLdI2 CodiOfic
  loc_C7978D: CVarI2 var_188
  loc_C79790: ConcatVar var_198
  loc_C79794: LitVarStr var_1A8, " AND CuenCtct = '"
  loc_C79799: ConcatVar var_1B8
  loc_C7979D: ILdRf var_90
  loc_C797A0: CVarStr var_1C8
  loc_C797A3: ConcatVar var_1D8
  loc_C797A7: LitVarStr var_1E8, "' AND ActuRebo = 'No'"
  loc_C797AC: ConcatVar var_1F8
  loc_C797B0: CStrVarVal var_B8
  loc_C797B4: Call EjecutarRs2(from_stack_1v)
  loc_C797B9: FFree1Str var_B8
  loc_C797BC: FFreeVar var_FC = "": var_128 = "": var_148 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_C797D1: FLdRfVar var_D0
  loc_C797D4: FLdRfVar var_CC
  loc_C797D7: FLdPr Me
  loc_C797DA: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C797DF: FLdPr var_CC
  loc_C797E2:  = Me.RecordCount
  loc_C797E7: ILdRf var_D0
  loc_C797EA: LitI4 0
  loc_C797EF: GtI4
  loc_C797F0: FFree1Ad var_CC
  loc_C797F3: BranchF loc_C7983E
  loc_C797F6: FLdRfVar var_FC
  loc_C797F9: FLdRfVar var_EC
  loc_C797FC: LitVarStr var_E8, "ImpoRebo"
  loc_C79801: PopAdLdVar
  loc_C79802: FLdRfVar var_D8
  loc_C79805: FLdRfVar var_CC
  loc_C79808: FLdPr Me
  loc_C7980B: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79810: FLdPr var_CC
  loc_C79813:  = Me.Fields
  loc_C79818: FLdPr var_D8
  loc_C7981B: from_stack_2 = Me.Item(from_stack_1)
  loc_C79820: FLdPr var_EC
  loc_C79823:  = Me.Value
  loc_C79828: FLdRfVar var_FC
  loc_C7982B: CR4Var
  loc_C7982C: FStFPR8 var_8C
  loc_C7982F: FFreeAd var_CC = "": var_D8 = ""
  loc_C79838: FFree1Var var_FC = ""
  loc_C7983B: Branch loc_C79844
  loc_C7983E: LitI2_Byte 0
  loc_C79840: CR8I2
  loc_C79841: FStFPR8 var_8C
  loc_C79844: Branch loc_C7A8D5
  loc_C79847: LitStr "Municipalidad de Guaymallén"
  loc_C7984A: LitStr "Municipalidad de San Carlos"
  loc_C7984D: EqStr
  loc_C7984F: BranchF loc_C79A44
  loc_C79852: LitStr "SELECT ImpoRebo, FeveRebo, FealRebo FROM recabole WHERE CodiOfic = "
  loc_C79855: FLdI2 CodiOfic
  loc_C79858: CStrUI1
  loc_C7985A: FStStrNoPop var_B8
  loc_C7985D: ConcatStr
  loc_C7985E: FStStrNoPop var_BC
  loc_C79861: LitStr " AND CuenCtct = '"
  loc_C79864: ConcatStr
  loc_C79865: FStStrNoPop var_C0
  loc_C79868: ILdRf var_90
  loc_C7986B: ConcatStr
  loc_C7986C: FStStrNoPop var_C4
  loc_C7986F: LitStr "' AND ActuRebo = 'No' AND PeriLiqu = 0 AND BimeLiqu = 0 AND CodiTili = 0 AND NumeLiqu = 0"
  loc_C79872: ConcatStr
  loc_C79873: FStStrNoPop var_C8
  loc_C79876: Call EjecutarRs2(from_stack_1v)
  loc_C7987B: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_C79888: FLdRfVar var_D0
  loc_C7988B: FLdRfVar var_CC
  loc_C7988E: FLdPr Me
  loc_C79891: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79896: FLdPr var_CC
  loc_C79899:  = Me.RecordCount
  loc_C7989E: ILdRf var_D0
  loc_C798A1: LitI4 0
  loc_C798A6: GtI4
  loc_C798A7: FFree1Ad var_CC
  loc_C798AA: BranchF loc_C79A3B
  loc_C798AD: FLdRfVar var_CC
  loc_C798B0: FLdPr Me
  loc_C798B3: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C798B8: FLdPr var_CC
  loc_C798BB: Me.MoveFirst
  loc_C798C0: FFree1Ad var_CC
  loc_C798C3: FLdRfVar var_D2
  loc_C798C6: FLdRfVar var_CC
  loc_C798C9: FLdPr Me
  loc_C798CC: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C798D1: FLdPr var_CC
  loc_C798D4:  = Me.EOF
  loc_C798D9: FLdI2 var_D2
  loc_C798DC: NotI4
  loc_C798DD: FFree1Ad var_CC
  loc_C798E0: BranchF loc_C79A38
  loc_C798E3: FLdRfVar var_FC
  loc_C798E6: FLdRfVar var_EC
  loc_C798E9: LitVarStr var_E8, "FeveRebo"
  loc_C798EE: PopAdLdVar
  loc_C798EF: FLdRfVar var_D8
  loc_C798F2: FLdRfVar var_CC
  loc_C798F5: FLdPr Me
  loc_C798F8: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C798FD: FLdPr var_CC
  loc_C79900:  = Me.Fields
  loc_C79905: FLdPr var_D8
  loc_C79908: from_stack_2 = Me.Item(from_stack_1)
  loc_C7990D: FLdPr var_EC
  loc_C79910:  = Me.Value
  loc_C79915: FLdRfVar var_B4
  loc_C79918: FLdRfVar var_FC
  loc_C7991B: CStrVarTmp
  loc_C7991C: FStStrNoPop var_B8
  loc_C7991F: FLdRfVar var_A4
  loc_C79922: NewIfNullPr clsinteres
  loc_C79925: from_stack_2v = clsinteres.BuscaInteres(from_stack_1v)
  loc_C7992A: FLdFPR8 var_B4
  loc_C7992D: FStFPR8 var_98
  loc_C79930: FFree1Str var_B8
  loc_C79933: FFreeAd var_CC = "": var_D8 = ""
  loc_C7993C: FFree1Var var_FC = ""
  loc_C7993F: FLdRfVar var_FC
  loc_C79942: FLdRfVar var_EC
  loc_C79945: LitVarStr var_E8, "FealRebo"
  loc_C7994A: PopAdLdVar
  loc_C7994B: FLdRfVar var_D8
  loc_C7994E: FLdRfVar var_CC
  loc_C79951: FLdPr Me
  loc_C79954: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79959: FLdPr var_CC
  loc_C7995C:  = Me.Fields
  loc_C79961: FLdPr var_D8
  loc_C79964: from_stack_2 = Me.Item(from_stack_1)
  loc_C79969: FLdPr var_EC
  loc_C7996C:  = Me.Value
  loc_C79971: FLdRfVar var_B4
  loc_C79974: FLdRfVar var_FC
  loc_C79977: CStrVarTmp
  loc_C79978: FStStrNoPop var_B8
  loc_C7997B: FLdRfVar var_A4
  loc_C7997E: NewIfNullPr clsinteres
  loc_C79981: from_stack_2v = clsinteres.BuscaInteres(from_stack_1v)
  loc_C79986: FLdFPR8 var_B4
  loc_C79989: FStFPR8 var_A0
  loc_C7998C: FFree1Str var_B8
  loc_C7998F: FFreeAd var_CC = "": var_D8 = ""
  loc_C79998: FFree1Var var_FC = ""
  loc_C7999B: FLdFPR8 var_A0
  loc_C7999E: FLdFPR8 var_98
  loc_C799A1: SubR4
  loc_C799A2: CR8R8
  loc_C799A3: LitI2_Byte 0
  loc_C799A5: CR8I2
  loc_C799A6: GtR4
  loc_C799A7: BranchF loc_C79A1F
  loc_C799AA: FLdRfVar var_FC
  loc_C799AD: FLdRfVar var_EC
  loc_C799B0: LitVarStr var_E8, "ImpoRebo"
  loc_C799B5: PopAdLdVar
  loc_C799B6: FLdRfVar var_D8
  loc_C799B9: FLdRfVar var_CC
  loc_C799BC: FLdPr Me
  loc_C799BF: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C799C4: FLdPr var_CC
  loc_C799C7:  = Me.Fields
  loc_C799CC: FLdPr var_D8
  loc_C799CF: from_stack_2 = Me.Item(from_stack_1)
  loc_C799D4: FLdPr var_EC
  loc_C799D7:  = Me.Value
  loc_C799DC: LitI4 2
  loc_C799E1: FLdFPR8 var_8C
  loc_C799E4: CVarR8
  loc_C799E8: FLdRfVar var_FC
  loc_C799EB: FLdFPR8 var_A0
  loc_C799EE: FLdFPR8 var_98
  loc_C799F1: SubR4
  loc_C799F2: CVarR8
  loc_C799F6: MulVar var_128
  loc_C799FA: AddVar var_148
  loc_C799FE: FLdRfVar var_158
  loc_C79A01: ImpAdCallFPR4  = Round(, )
  loc_C79A06: FLdRfVar var_158
  loc_C79A09: CR4Var
  loc_C79A0A: FStFPR8 var_8C
  loc_C79A0D: FFreeAd var_CC = "": var_D8 = ""
  loc_C79A16: FFreeVar var_FC = "": var_148 = ""
  loc_C79A1F: FLdRfVar var_CC
  loc_C79A22: FLdPr Me
  loc_C79A25: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79A2A: FLdPr var_CC
  loc_C79A2D: Me.MoveNext
  loc_C79A32: FFree1Ad var_CC
  loc_C79A35: Branch loc_C798C3
  loc_C79A38: Branch loc_C79A41
  loc_C79A3B: LitI2_Byte 0
  loc_C79A3D: CR8I2
  loc_C79A3E: FStFPR8 var_8C
  loc_C79A41: Branch loc_C7A8D5
  loc_C79A44: LitStr "Municipalidad de Guaymallén"
  loc_C79A47: LitStr "Municipalidad de Rivadavia"
  loc_C79A4A: EqStr
  loc_C79A4C: BranchF loc_C79D4E
  loc_C79A4F: LitI2_Byte 0
  loc_C79A51: CR8I2
  loc_C79A52: FStFPR8 var_8C
  loc_C79A55: LitStr "SELECT ImpoRebo, FeveRebo, FealRebo FROM recabole WHERE CodiOfic = "
  loc_C79A58: FLdI2 CodiOfic
  loc_C79A5B: CStrUI1
  loc_C79A5D: FStStrNoPop var_B8
  loc_C79A60: ConcatStr
  loc_C79A61: FStStrNoPop var_BC
  loc_C79A64: LitStr " AND CuenCtct = '"
  loc_C79A67: ConcatStr
  loc_C79A68: FStStrNoPop var_C0
  loc_C79A6B: ILdRf var_90
  loc_C79A6E: ConcatStr
  loc_C79A6F: FStStrNoPop var_C4
  loc_C79A72: LitStr "' AND ActuRebo = 'No' AND PeriBole >= 2011 AND PeriLiqu = 0 AND BimeLiqu = 0 AND CodiTili = 0 AND NumeLiqu = 0"
  loc_C79A75: ConcatStr
  loc_C79A76: FStStrNoPop var_C8
  loc_C79A79: Call EjecutarRs2(from_stack_1v)
  loc_C79A7E: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_C79A8B: FLdRfVar var_D0
  loc_C79A8E: FLdRfVar var_CC
  loc_C79A91: FLdPr Me
  loc_C79A94: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79A99: FLdPr var_CC
  loc_C79A9C:  = Me.RecordCount
  loc_C79AA1: ILdRf var_D0
  loc_C79AA4: LitI4 0
  loc_C79AA9: GtI4
  loc_C79AAA: FFree1Ad var_CC
  loc_C79AAD: BranchF loc_C79C3B
  loc_C79AB0: FLdRfVar var_CC
  loc_C79AB3: FLdPr Me
  loc_C79AB6: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79ABB: FLdPr var_CC
  loc_C79ABE: Me.MoveFirst
  loc_C79AC3: FFree1Ad var_CC
  loc_C79AC6: FLdRfVar var_D2
  loc_C79AC9: FLdRfVar var_CC
  loc_C79ACC: FLdPr Me
  loc_C79ACF: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79AD4: FLdPr var_CC
  loc_C79AD7:  = Me.EOF
  loc_C79ADC: FLdI2 var_D2
  loc_C79ADF: NotI4
  loc_C79AE0: FFree1Ad var_CC
  loc_C79AE3: BranchF loc_C79C3B
  loc_C79AE6: FLdRfVar var_FC
  loc_C79AE9: FLdRfVar var_EC
  loc_C79AEC: LitVarStr var_E8, "FeveRebo"
  loc_C79AF1: PopAdLdVar
  loc_C79AF2: FLdRfVar var_D8
  loc_C79AF5: FLdRfVar var_CC
  loc_C79AF8: FLdPr Me
  loc_C79AFB: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79B00: FLdPr var_CC
  loc_C79B03:  = Me.Fields
  loc_C79B08: FLdPr var_D8
  loc_C79B0B: from_stack_2 = Me.Item(from_stack_1)
  loc_C79B10: FLdPr var_EC
  loc_C79B13:  = Me.Value
  loc_C79B18: FLdRfVar var_B4
  loc_C79B1B: FLdRfVar var_FC
  loc_C79B1E: CStrVarTmp
  loc_C79B1F: FStStrNoPop var_B8
  loc_C79B22: FLdRfVar var_A4
  loc_C79B25: NewIfNullPr clsinteres
  loc_C79B28: from_stack_2v = clsinteres.BuscaInteres(from_stack_1v)
  loc_C79B2D: FLdFPR8 var_B4
  loc_C79B30: FStFPR8 var_98
  loc_C79B33: FFree1Str var_B8
  loc_C79B36: FFreeAd var_CC = "": var_D8 = ""
  loc_C79B3F: FFree1Var var_FC = ""
  loc_C79B42: FLdRfVar var_FC
  loc_C79B45: FLdRfVar var_EC
  loc_C79B48: LitVarStr var_E8, "FealRebo"
  loc_C79B4D: PopAdLdVar
  loc_C79B4E: FLdRfVar var_D8
  loc_C79B51: FLdRfVar var_CC
  loc_C79B54: FLdPr Me
  loc_C79B57: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79B5C: FLdPr var_CC
  loc_C79B5F:  = Me.Fields
  loc_C79B64: FLdPr var_D8
  loc_C79B67: from_stack_2 = Me.Item(from_stack_1)
  loc_C79B6C: FLdPr var_EC
  loc_C79B6F:  = Me.Value
  loc_C79B74: FLdRfVar var_B4
  loc_C79B77: FLdRfVar var_FC
  loc_C79B7A: CStrVarTmp
  loc_C79B7B: FStStrNoPop var_B8
  loc_C79B7E: FLdRfVar var_A4
  loc_C79B81: NewIfNullPr clsinteres
  loc_C79B84: from_stack_2v = clsinteres.BuscaInteres(from_stack_1v)
  loc_C79B89: FLdFPR8 var_B4
  loc_C79B8C: FStFPR8 var_A0
  loc_C79B8F: FFree1Str var_B8
  loc_C79B92: FFreeAd var_CC = "": var_D8 = ""
  loc_C79B9B: FFree1Var var_FC = ""
  loc_C79B9E: FLdFPR8 var_A0
  loc_C79BA1: FLdFPR8 var_98
  loc_C79BA4: SubR4
  loc_C79BA5: CR8R8
  loc_C79BA6: LitI2_Byte 0
  loc_C79BA8: CR8I2
  loc_C79BA9: GtR4
  loc_C79BAA: BranchF loc_C79C22
  loc_C79BAD: FLdRfVar var_FC
  loc_C79BB0: FLdRfVar var_EC
  loc_C79BB3: LitVarStr var_E8, "ImpoRebo"
  loc_C79BB8: PopAdLdVar
  loc_C79BB9: FLdRfVar var_D8
  loc_C79BBC: FLdRfVar var_CC
  loc_C79BBF: FLdPr Me
  loc_C79BC2: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79BC7: FLdPr var_CC
  loc_C79BCA:  = Me.Fields
  loc_C79BCF: FLdPr var_D8
  loc_C79BD2: from_stack_2 = Me.Item(from_stack_1)
  loc_C79BD7: FLdPr var_EC
  loc_C79BDA:  = Me.Value
  loc_C79BDF: LitI4 2
  loc_C79BE4: FLdFPR8 var_8C
  loc_C79BE7: CVarR8
  loc_C79BEB: FLdRfVar var_FC
  loc_C79BEE: FLdFPR8 var_A0
  loc_C79BF1: FLdFPR8 var_98
  loc_C79BF4: SubR4
  loc_C79BF5: CVarR8
  loc_C79BF9: MulVar var_128
  loc_C79BFD: AddVar var_148
  loc_C79C01: FLdRfVar var_158
  loc_C79C04: ImpAdCallFPR4  = Round(, )
  loc_C79C09: FLdRfVar var_158
  loc_C79C0C: CR4Var
  loc_C79C0D: FStFPR8 var_8C
  loc_C79C10: FFreeAd var_CC = "": var_D8 = ""
  loc_C79C19: FFreeVar var_FC = "": var_148 = ""
  loc_C79C22: FLdRfVar var_CC
  loc_C79C25: FLdPr Me
  loc_C79C28: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79C2D: FLdPr var_CC
  loc_C79C30: Me.MoveNext
  loc_C79C35: FFree1Ad var_CC
  loc_C79C38: Branch loc_C79AC6
  loc_C79C3B: LitStr "SELECT ImpoRebo FROM recabole WHERE CodiOfic = "
  loc_C79C3E: FLdI2 CodiOfic
  loc_C79C41: CStrUI1
  loc_C79C43: FStStrNoPop var_B8
  loc_C79C46: ConcatStr
  loc_C79C47: FStStrNoPop var_BC
  loc_C79C4A: LitStr " AND CuenCtct = '"
  loc_C79C4D: ConcatStr
  loc_C79C4E: FStStrNoPop var_C0
  loc_C79C51: ILdRf var_90
  loc_C79C54: ConcatStr
  loc_C79C55: FStStrNoPop var_C4
  loc_C79C58: LitStr "' AND PeriBole = 2010 AND ActuRebo = 'No' AND PeriLiqu = 0 AND BimeLiqu = 0 AND CodiTili = 0 AND NumeLiqu = 0"
  loc_C79C5B: ConcatStr
  loc_C79C5C: FStStrNoPop var_C8
  loc_C79C5F: Call EjecutarRs2(from_stack_1v)
  loc_C79C64: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_C79C71: FLdRfVar var_D0
  loc_C79C74: FLdRfVar var_CC
  loc_C79C77: FLdPr Me
  loc_C79C7A: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79C7F: FLdPr var_CC
  loc_C79C82:  = Me.RecordCount
  loc_C79C87: ILdRf var_D0
  loc_C79C8A: LitI4 0
  loc_C79C8F: GtI4
  loc_C79C90: FFree1Ad var_CC
  loc_C79C93: BranchF loc_C79D4B
  loc_C79C96: FLdRfVar var_CC
  loc_C79C99: FLdPr Me
  loc_C79C9C: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79CA1: FLdPr var_CC
  loc_C79CA4: Me.MoveFirst
  loc_C79CA9: FFree1Ad var_CC
  loc_C79CAC: FLdRfVar var_D2
  loc_C79CAF: FLdRfVar var_CC
  loc_C79CB2: FLdPr Me
  loc_C79CB5: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79CBA: FLdPr var_CC
  loc_C79CBD:  = Me.EOF
  loc_C79CC2: FLdI2 var_D2
  loc_C79CC5: NotI4
  loc_C79CC6: FFree1Ad var_CC
  loc_C79CC9: BranchF loc_C79D4B
  loc_C79CCC: FLdRfVar var_FC
  loc_C79CCF: FLdRfVar var_EC
  loc_C79CD2: LitVarStr var_E8, "ImpoRebo"
  loc_C79CD7: PopAdLdVar
  loc_C79CD8: FLdRfVar var_D8
  loc_C79CDB: FLdRfVar var_CC
  loc_C79CDE: FLdPr Me
  loc_C79CE1: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79CE6: FLdPr var_CC
  loc_C79CE9:  = Me.Fields
  loc_C79CEE: FLdPr var_D8
  loc_C79CF1: from_stack_2 = Me.Item(from_stack_1)
  loc_C79CF6: FLdPr var_EC
  loc_C79CF9:  = Me.Value
  loc_C79CFE: LitI4 2
  loc_C79D03: FLdFPR8 var_8C
  loc_C79D06: CVarR8
  loc_C79D0A: FLdRfVar var_FC
  loc_C79D0D: AddVar var_128
  loc_C79D11: FLdRfVar var_148
  loc_C79D14: ImpAdCallFPR4  = Round(, )
  loc_C79D19: FLdRfVar var_148
  loc_C79D1C: CR4Var
  loc_C79D1D: FStFPR8 var_8C
  loc_C79D20: FFreeAd var_CC = "": var_D8 = ""
  loc_C79D29: FFreeVar var_FC = "": var_128 = ""
  loc_C79D32: FLdRfVar var_CC
  loc_C79D35: FLdPr Me
  loc_C79D38: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79D3D: FLdPr var_CC
  loc_C79D40: Me.MoveNext
  loc_C79D45: FFree1Ad var_CC
  loc_C79D48: Branch loc_C79CAC
  loc_C79D4B: Branch loc_C7A8D5
  loc_C79D4E: LitStr "Municipalidad de Guaymallén"
  loc_C79D51: LitStr "Municipalidad de Tunuyán"
  loc_C79D54: EqStr
  loc_C79D56: BranchF loc_C79F4B
  loc_C79D59: LitStr "SELECT ImpoRebo, FeveRebo, FealRebo FROM recabole WHERE CodiOfic = "
  loc_C79D5C: FLdI2 CodiOfic
  loc_C79D5F: CStrUI1
  loc_C79D61: FStStrNoPop var_B8
  loc_C79D64: ConcatStr
  loc_C79D65: FStStrNoPop var_BC
  loc_C79D68: LitStr " AND CuenCtct = '"
  loc_C79D6B: ConcatStr
  loc_C79D6C: FStStrNoPop var_C0
  loc_C79D6F: ILdRf var_90
  loc_C79D72: ConcatStr
  loc_C79D73: FStStrNoPop var_C4
  loc_C79D76: LitStr "' AND ActuRebo = 'No' AND PeriLiqu = 0 AND BimeLiqu = 0 AND CodiTili = 0 AND NumeLiqu = 0"
  loc_C79D79: ConcatStr
  loc_C79D7A: FStStrNoPop var_C8
  loc_C79D7D: Call EjecutarRs2(from_stack_1v)
  loc_C79D82: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_C79D8F: FLdRfVar var_D0
  loc_C79D92: FLdRfVar var_CC
  loc_C79D95: FLdPr Me
  loc_C79D98: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79D9D: FLdPr var_CC
  loc_C79DA0:  = Me.RecordCount
  loc_C79DA5: ILdRf var_D0
  loc_C79DA8: LitI4 0
  loc_C79DAD: GtI4
  loc_C79DAE: FFree1Ad var_CC
  loc_C79DB1: BranchF loc_C79F42
  loc_C79DB4: FLdRfVar var_CC
  loc_C79DB7: FLdPr Me
  loc_C79DBA: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79DBF: FLdPr var_CC
  loc_C79DC2: Me.MoveFirst
  loc_C79DC7: FFree1Ad var_CC
  loc_C79DCA: FLdRfVar var_D2
  loc_C79DCD: FLdRfVar var_CC
  loc_C79DD0: FLdPr Me
  loc_C79DD3: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79DD8: FLdPr var_CC
  loc_C79DDB:  = Me.EOF
  loc_C79DE0: FLdI2 var_D2
  loc_C79DE3: NotI4
  loc_C79DE4: FFree1Ad var_CC
  loc_C79DE7: BranchF loc_C79F3F
  loc_C79DEA: FLdRfVar var_FC
  loc_C79DED: FLdRfVar var_EC
  loc_C79DF0: LitVarStr var_E8, "FeveRebo"
  loc_C79DF5: PopAdLdVar
  loc_C79DF6: FLdRfVar var_D8
  loc_C79DF9: FLdRfVar var_CC
  loc_C79DFC: FLdPr Me
  loc_C79DFF: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79E04: FLdPr var_CC
  loc_C79E07:  = Me.Fields
  loc_C79E0C: FLdPr var_D8
  loc_C79E0F: from_stack_2 = Me.Item(from_stack_1)
  loc_C79E14: FLdPr var_EC
  loc_C79E17:  = Me.Value
  loc_C79E1C: FLdRfVar var_B4
  loc_C79E1F: FLdRfVar var_FC
  loc_C79E22: CStrVarTmp
  loc_C79E23: FStStrNoPop var_B8
  loc_C79E26: FLdRfVar var_A4
  loc_C79E29: NewIfNullPr clsinteres
  loc_C79E2C: from_stack_2v = clsinteres.BuscaInteres(from_stack_1v)
  loc_C79E31: FLdFPR8 var_B4
  loc_C79E34: FStFPR8 var_98
  loc_C79E37: FFree1Str var_B8
  loc_C79E3A: FFreeAd var_CC = "": var_D8 = ""
  loc_C79E43: FFree1Var var_FC = ""
  loc_C79E46: FLdRfVar var_FC
  loc_C79E49: FLdRfVar var_EC
  loc_C79E4C: LitVarStr var_E8, "FealRebo"
  loc_C79E51: PopAdLdVar
  loc_C79E52: FLdRfVar var_D8
  loc_C79E55: FLdRfVar var_CC
  loc_C79E58: FLdPr Me
  loc_C79E5B: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79E60: FLdPr var_CC
  loc_C79E63:  = Me.Fields
  loc_C79E68: FLdPr var_D8
  loc_C79E6B: from_stack_2 = Me.Item(from_stack_1)
  loc_C79E70: FLdPr var_EC
  loc_C79E73:  = Me.Value
  loc_C79E78: FLdRfVar var_B4
  loc_C79E7B: FLdRfVar var_FC
  loc_C79E7E: CStrVarTmp
  loc_C79E7F: FStStrNoPop var_B8
  loc_C79E82: FLdRfVar var_A4
  loc_C79E85: NewIfNullPr clsinteres
  loc_C79E88: from_stack_2v = clsinteres.BuscaInteres(from_stack_1v)
  loc_C79E8D: FLdFPR8 var_B4
  loc_C79E90: FStFPR8 var_A0
  loc_C79E93: FFree1Str var_B8
  loc_C79E96: FFreeAd var_CC = "": var_D8 = ""
  loc_C79E9F: FFree1Var var_FC = ""
  loc_C79EA2: FLdFPR8 var_A0
  loc_C79EA5: FLdFPR8 var_98
  loc_C79EA8: SubR4
  loc_C79EA9: CR8R8
  loc_C79EAA: LitI2_Byte 0
  loc_C79EAC: CR8I2
  loc_C79EAD: GtR4
  loc_C79EAE: BranchF loc_C79F26
  loc_C79EB1: FLdRfVar var_FC
  loc_C79EB4: FLdRfVar var_EC
  loc_C79EB7: LitVarStr var_E8, "ImpoRebo"
  loc_C79EBC: PopAdLdVar
  loc_C79EBD: FLdRfVar var_D8
  loc_C79EC0: FLdRfVar var_CC
  loc_C79EC3: FLdPr Me
  loc_C79EC6: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79ECB: FLdPr var_CC
  loc_C79ECE:  = Me.Fields
  loc_C79ED3: FLdPr var_D8
  loc_C79ED6: from_stack_2 = Me.Item(from_stack_1)
  loc_C79EDB: FLdPr var_EC
  loc_C79EDE:  = Me.Value
  loc_C79EE3: LitI4 2
  loc_C79EE8: FLdFPR8 var_8C
  loc_C79EEB: CVarR8
  loc_C79EEF: FLdRfVar var_FC
  loc_C79EF2: FLdFPR8 var_A0
  loc_C79EF5: FLdFPR8 var_98
  loc_C79EF8: SubR4
  loc_C79EF9: CVarR8
  loc_C79EFD: MulVar var_128
  loc_C79F01: AddVar var_148
  loc_C79F05: FLdRfVar var_158
  loc_C79F08: ImpAdCallFPR4  = Round(, )
  loc_C79F0D: FLdRfVar var_158
  loc_C79F10: CR4Var
  loc_C79F11: FStFPR8 var_8C
  loc_C79F14: FFreeAd var_CC = "": var_D8 = ""
  loc_C79F1D: FFreeVar var_FC = "": var_148 = ""
  loc_C79F26: FLdRfVar var_CC
  loc_C79F29: FLdPr Me
  loc_C79F2C: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79F31: FLdPr var_CC
  loc_C79F34: Me.MoveNext
  loc_C79F39: FFree1Ad var_CC
  loc_C79F3C: Branch loc_C79DCA
  loc_C79F3F: Branch loc_C79F48
  loc_C79F42: LitI2_Byte 0
  loc_C79F44: CR8I2
  loc_C79F45: FStFPR8 var_8C
  loc_C79F48: Branch loc_C7A8D5
  loc_C79F4B: LitStr "Municipalidad de Guaymallén"
  loc_C79F4E: LitStr "Municipalidad de General Alvear"
  loc_C79F51: EqStr
  loc_C79F53: BranchF loc_C7A148
  loc_C79F56: LitStr "SELECT ImpoRebo, FeveRebo, FealRebo FROM recabole WHERE CodiOfic = "
  loc_C79F59: FLdI2 CodiOfic
  loc_C79F5C: CStrUI1
  loc_C79F5E: FStStrNoPop var_B8
  loc_C79F61: ConcatStr
  loc_C79F62: FStStrNoPop var_BC
  loc_C79F65: LitStr " AND CuenCtct = '"
  loc_C79F68: ConcatStr
  loc_C79F69: FStStrNoPop var_C0
  loc_C79F6C: ILdRf var_90
  loc_C79F6F: ConcatStr
  loc_C79F70: FStStrNoPop var_C4
  loc_C79F73: LitStr "' AND ActuRebo = 'No' AND PeriLiqu = 0 AND BimeLiqu = 0 AND CodiTili = 0 AND NumeLiqu = 0"
  loc_C79F76: ConcatStr
  loc_C79F77: FStStrNoPop var_C8
  loc_C79F7A: Call EjecutarRs2(from_stack_1v)
  loc_C79F7F: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_C79F8C: FLdRfVar var_D0
  loc_C79F8F: FLdRfVar var_CC
  loc_C79F92: FLdPr Me
  loc_C79F95: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79F9A: FLdPr var_CC
  loc_C79F9D:  = Me.RecordCount
  loc_C79FA2: ILdRf var_D0
  loc_C79FA5: LitI4 0
  loc_C79FAA: GtI4
  loc_C79FAB: FFree1Ad var_CC
  loc_C79FAE: BranchF loc_C7A13F
  loc_C79FB1: FLdRfVar var_CC
  loc_C79FB4: FLdPr Me
  loc_C79FB7: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79FBC: FLdPr var_CC
  loc_C79FBF: Me.MoveFirst
  loc_C79FC4: FFree1Ad var_CC
  loc_C79FC7: FLdRfVar var_D2
  loc_C79FCA: FLdRfVar var_CC
  loc_C79FCD: FLdPr Me
  loc_C79FD0: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C79FD5: FLdPr var_CC
  loc_C79FD8:  = Me.EOF
  loc_C79FDD: FLdI2 var_D2
  loc_C79FE0: NotI4
  loc_C79FE1: FFree1Ad var_CC
  loc_C79FE4: BranchF loc_C7A13C
  loc_C79FE7: FLdRfVar var_FC
  loc_C79FEA: FLdRfVar var_EC
  loc_C79FED: LitVarStr var_E8, "FeveRebo"
  loc_C79FF2: PopAdLdVar
  loc_C79FF3: FLdRfVar var_D8
  loc_C79FF6: FLdRfVar var_CC
  loc_C79FF9: FLdPr Me
  loc_C79FFC: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A001: FLdPr var_CC
  loc_C7A004:  = Me.Fields
  loc_C7A009: FLdPr var_D8
  loc_C7A00C: from_stack_2 = Me.Item(from_stack_1)
  loc_C7A011: FLdPr var_EC
  loc_C7A014:  = Me.Value
  loc_C7A019: FLdRfVar var_B4
  loc_C7A01C: FLdRfVar var_FC
  loc_C7A01F: CStrVarTmp
  loc_C7A020: FStStrNoPop var_B8
  loc_C7A023: FLdRfVar var_A4
  loc_C7A026: NewIfNullPr clsinteres
  loc_C7A029: from_stack_2v = clsinteres.BuscaInteres(from_stack_1v)
  loc_C7A02E: FLdFPR8 var_B4
  loc_C7A031: FStFPR8 var_98
  loc_C7A034: FFree1Str var_B8
  loc_C7A037: FFreeAd var_CC = "": var_D8 = ""
  loc_C7A040: FFree1Var var_FC = ""
  loc_C7A043: FLdRfVar var_FC
  loc_C7A046: FLdRfVar var_EC
  loc_C7A049: LitVarStr var_E8, "FealRebo"
  loc_C7A04E: PopAdLdVar
  loc_C7A04F: FLdRfVar var_D8
  loc_C7A052: FLdRfVar var_CC
  loc_C7A055: FLdPr Me
  loc_C7A058: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A05D: FLdPr var_CC
  loc_C7A060:  = Me.Fields
  loc_C7A065: FLdPr var_D8
  loc_C7A068: from_stack_2 = Me.Item(from_stack_1)
  loc_C7A06D: FLdPr var_EC
  loc_C7A070:  = Me.Value
  loc_C7A075: FLdRfVar var_B4
  loc_C7A078: FLdRfVar var_FC
  loc_C7A07B: CStrVarTmp
  loc_C7A07C: FStStrNoPop var_B8
  loc_C7A07F: FLdRfVar var_A4
  loc_C7A082: NewIfNullPr clsinteres
  loc_C7A085: from_stack_2v = clsinteres.BuscaInteres(from_stack_1v)
  loc_C7A08A: FLdFPR8 var_B4
  loc_C7A08D: FStFPR8 var_A0
  loc_C7A090: FFree1Str var_B8
  loc_C7A093: FFreeAd var_CC = "": var_D8 = ""
  loc_C7A09C: FFree1Var var_FC = ""
  loc_C7A09F: FLdFPR8 var_A0
  loc_C7A0A2: FLdFPR8 var_98
  loc_C7A0A5: SubR4
  loc_C7A0A6: CR8R8
  loc_C7A0A7: LitI2_Byte 0
  loc_C7A0A9: CR8I2
  loc_C7A0AA: GtR4
  loc_C7A0AB: BranchF loc_C7A123
  loc_C7A0AE: FLdRfVar var_FC
  loc_C7A0B1: FLdRfVar var_EC
  loc_C7A0B4: LitVarStr var_E8, "ImpoRebo"
  loc_C7A0B9: PopAdLdVar
  loc_C7A0BA: FLdRfVar var_D8
  loc_C7A0BD: FLdRfVar var_CC
  loc_C7A0C0: FLdPr Me
  loc_C7A0C3: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A0C8: FLdPr var_CC
  loc_C7A0CB:  = Me.Fields
  loc_C7A0D0: FLdPr var_D8
  loc_C7A0D3: from_stack_2 = Me.Item(from_stack_1)
  loc_C7A0D8: FLdPr var_EC
  loc_C7A0DB:  = Me.Value
  loc_C7A0E0: LitI4 2
  loc_C7A0E5: FLdFPR8 var_8C
  loc_C7A0E8: CVarR8
  loc_C7A0EC: FLdRfVar var_FC
  loc_C7A0EF: FLdFPR8 var_A0
  loc_C7A0F2: FLdFPR8 var_98
  loc_C7A0F5: SubR4
  loc_C7A0F6: CVarR8
  loc_C7A0FA: MulVar var_128
  loc_C7A0FE: AddVar var_148
  loc_C7A102: FLdRfVar var_158
  loc_C7A105: ImpAdCallFPR4  = Round(, )
  loc_C7A10A: FLdRfVar var_158
  loc_C7A10D: CR4Var
  loc_C7A10E: FStFPR8 var_8C
  loc_C7A111: FFreeAd var_CC = "": var_D8 = ""
  loc_C7A11A: FFreeVar var_FC = "": var_148 = ""
  loc_C7A123: FLdRfVar var_CC
  loc_C7A126: FLdPr Me
  loc_C7A129: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A12E: FLdPr var_CC
  loc_C7A131: Me.MoveNext
  loc_C7A136: FFree1Ad var_CC
  loc_C7A139: Branch loc_C79FC7
  loc_C7A13C: Branch loc_C7A145
  loc_C7A13F: LitI2_Byte 0
  loc_C7A141: CR8I2
  loc_C7A142: FStFPR8 var_8C
  loc_C7A145: Branch loc_C7A8D5
  loc_C7A148: LitStr "Municipalidad de Guaymallén"
  loc_C7A14B: LitStr "Municipalidad de Guaymallén"
  loc_C7A14E: EqStr
  loc_C7A150: BranchF loc_C7A4AC
  loc_C7A153: FLdRfVar var_B4
  loc_C7A156: LitI4 0
  loc_C7A15B: FLdRfVar var_A4
  loc_C7A15E: NewIfNullPr clsinteres
  loc_C7A161: from_stack_2v = clsinteres.BuscaInteres(from_stack_1v)
  loc_C7A166: FLdFPR8 var_B4
  loc_C7A169: FStFPR8 var_AC
  loc_C7A16C: LitStr "SELECT ImpoRebo, DiasRebo FROM recabole "
  loc_C7A16F: LitStr " INNER JOIN detabole ON detabole.PeriBole = recabole.PeriBole"
  loc_C7A172: ConcatStr
  loc_C7A173: FStStrNoPop var_B8
  loc_C7A176: LitStr " AND detabole.NumeBole = recabole.numebole"
  loc_C7A179: ConcatStr
  loc_C7A17A: FStStrNoPop var_BC
  loc_C7A17D: LitStr " WHERE recabole.CodiOfic = "
  loc_C7A180: ConcatStr
  loc_C7A181: FStStrNoPop var_C0
  loc_C7A184: FLdI2 CodiOfic
  loc_C7A187: CStrUI1
  loc_C7A189: FStStrNoPop var_C4
  loc_C7A18C: ConcatStr
  loc_C7A18D: FStStrNoPop var_C8
  loc_C7A190: LitStr " AND recabole.CuenCtct = '"
  loc_C7A193: ConcatStr
  loc_C7A194: FStStrNoPop var_1FC
  loc_C7A197: ILdRf var_90
  loc_C7A19A: ConcatStr
  loc_C7A19B: FStStrNoPop var_200
  loc_C7A19E: LitStr "' AND recabole.ActuRebo = 'No'"
  loc_C7A1A1: ConcatStr
  loc_C7A1A2: FStStrNoPop var_204
  loc_C7A1A5: LitStr " AND FealRebo >=' 2023-01-01'"
  loc_C7A1A8: ConcatStr
  loc_C7A1A9: FStStrNoPop var_208
  loc_C7A1AC: LitStr " AND detabole.PeriCtct >= 2023 AND detabole.CodiTili <> 0 AND detabole.NumeLiqu <> 0 "
  loc_C7A1AF: ConcatStr
  loc_C7A1B0: FStStrNoPop var_20C
  loc_C7A1B3: LitStr " AND detabole.BimeCtct >= 1 AND recabole.ObseRebo = ''"
  loc_C7A1B6: ConcatStr
  loc_C7A1B7: FStStrNoPop var_210
  loc_C7A1BA: LitStr " GROUP BY recabole.CodiOfic, recabole.CuenCtct, recabole.PeriBole, recabole.NumeBole"
  loc_C7A1BD: ConcatStr
  loc_C7A1BE: FStStrNoPop var_214
  loc_C7A1C1: Call EjecutarRs2(from_stack_1v)
  loc_C7A1C6: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = ""
  loc_C7A1E1: FLdRfVar var_D0
  loc_C7A1E4: FLdRfVar var_CC
  loc_C7A1E7: FLdPr Me
  loc_C7A1EA: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A1EF: FLdPr var_CC
  loc_C7A1F2:  = Me.RecordCount
  loc_C7A1F7: ILdRf var_D0
  loc_C7A1FA: LitI4 0
  loc_C7A1FF: GtI4
  loc_C7A200: FFree1Ad var_CC
  loc_C7A203: BranchF loc_C7A310
  loc_C7A206: FLdRfVar var_CC
  loc_C7A209: FLdPr Me
  loc_C7A20C: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A211: FLdPr var_CC
  loc_C7A214: Me.MoveFirst
  loc_C7A219: FFree1Ad var_CC
  loc_C7A21C: FLdRfVar var_D2
  loc_C7A21F: FLdRfVar var_CC
  loc_C7A222: FLdPr Me
  loc_C7A225: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A22A: FLdPr var_CC
  loc_C7A22D:  = Me.EOF
  loc_C7A232: FLdI2 var_D2
  loc_C7A235: NotI4
  loc_C7A236: FFree1Ad var_CC
  loc_C7A239: BranchF loc_C7A30D
  loc_C7A23C: FLdRfVar var_FC
  loc_C7A23F: FLdRfVar var_EC
  loc_C7A242: LitVarStr var_E8, "DiasRebo"
  loc_C7A247: PopAdLdVar
  loc_C7A248: FLdRfVar var_D8
  loc_C7A24B: FLdRfVar var_CC
  loc_C7A24E: FLdPr Me
  loc_C7A251: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A256: FLdPr var_CC
  loc_C7A259:  = Me.Fields
  loc_C7A25E: FLdPr var_D8
  loc_C7A261: from_stack_2 = Me.Item(from_stack_1)
  loc_C7A266: FLdPr var_EC
  loc_C7A269:  = Me.Value
  loc_C7A26E: FLdRfVar var_128
  loc_C7A271: FLdRfVar var_118
  loc_C7A274: LitVarStr var_114, "ImpoRebo"
  loc_C7A279: PopAdLdVar
  loc_C7A27A: FLdRfVar var_104
  loc_C7A27D: FLdRfVar var_100
  loc_C7A280: FLdPr Me
  loc_C7A283: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A288: FLdPr var_100
  loc_C7A28B:  = Me.Fields
  loc_C7A290: FLdPr var_104
  loc_C7A293: from_stack_2 = Me.Item(from_stack_1)
  loc_C7A298: FLdPr var_118
  loc_C7A29B:  = Me.Value
  loc_C7A2A0: FLdFPR8 var_8C
  loc_C7A2A3: CVarR8
  loc_C7A2A7: LitI4 2
  loc_C7A2AC: FLdRfVar var_FC
  loc_C7A2AF: FnCIntVar
  loc_C7A2B1: CR8I2
  loc_C7A2B2: FLdFPR8 var_AC
  loc_C7A2B5: MulR8
  loc_C7A2B6: LitI2 3000
  loc_C7A2B9: CR8I2
  loc_C7A2BA: DivR8
  loc_C7A2BB: FLdRfVar var_128
  loc_C7A2BE: FnCDblVar
  loc_C7A2C0: MulR8
  loc_C7A2C1: CVarR8
  loc_C7A2C5: FLdRfVar var_158
  loc_C7A2C8: ImpAdCallFPR4  = Round(, )
  loc_C7A2CD: FLdRfVar var_158
  loc_C7A2D0: AddVar var_178
  loc_C7A2D4: CR4Var
  loc_C7A2D5: FStFPR8 var_8C
  loc_C7A2D8: FFreeAd var_CC = "": var_D8 = "": var_EC = "": var_100 = "": var_104 = ""
  loc_C7A2E7: FFreeVar var_FC = "": var_128 = "": var_148 = "": var_158 = ""
  loc_C7A2F4: FLdRfVar var_CC
  loc_C7A2F7: FLdPr Me
  loc_C7A2FA: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A2FF: FLdPr var_CC
  loc_C7A302: Me.MoveNext
  loc_C7A307: FFree1Ad var_CC
  loc_C7A30A: Branch loc_C7A21C
  loc_C7A30D: Branch loc_C7A316
  loc_C7A310: LitI2_Byte 0
  loc_C7A312: CR8I2
  loc_C7A313: FStFPR8 var_8C
  loc_C7A316: LitStr "SELECT ImpoRebo, DiasRebo FROM recabole "
  loc_C7A319: LitStr " WHERE recabole.CodiOfic = "
  loc_C7A31C: ConcatStr
  loc_C7A31D: FStStrNoPop var_B8
  loc_C7A320: FLdI2 CodiOfic
  loc_C7A323: CStrUI1
  loc_C7A325: FStStrNoPop var_BC
  loc_C7A328: ConcatStr
  loc_C7A329: FStStrNoPop var_C0
  loc_C7A32C: LitStr " AND recabole.CuenCtct = '"
  loc_C7A32F: ConcatStr
  loc_C7A330: FStStrNoPop var_C4
  loc_C7A333: ILdRf var_90
  loc_C7A336: ConcatStr
  loc_C7A337: FStStrNoPop var_C8
  loc_C7A33A: LitStr "' AND recabole.ActuRebo = 'No'"
  loc_C7A33D: ConcatStr
  loc_C7A33E: FStStrNoPop var_1FC
  loc_C7A341: LitStr " AND FealRebo >=' 2023-01-01'"
  loc_C7A344: ConcatStr
  loc_C7A345: FStStrNoPop var_200
  loc_C7A348: LitStr " AND recabole.ObseRebo = 'Proceso Automatico Creditos Manuales Pagos Dobles'"
  loc_C7A34B: ConcatStr
  loc_C7A34C: FStStrNoPop var_204
  loc_C7A34F: LitStr " GROUP BY recabole.CodiOfic, recabole.CuenCtct, recabole.PeriBole, recabole.NumeBole"
  loc_C7A352: ConcatStr
  loc_C7A353: FStStrNoPop var_208
  loc_C7A356: Call EjecutarRs2(from_stack_1v)
  loc_C7A35B: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_1FC = "": var_200 = "": var_204 = ""
  loc_C7A370: FLdRfVar var_D0
  loc_C7A373: FLdRfVar var_CC
  loc_C7A376: FLdPr Me
  loc_C7A379: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A37E: FLdPr var_CC
  loc_C7A381:  = Me.RecordCount
  loc_C7A386: ILdRf var_D0
  loc_C7A389: LitI4 0
  loc_C7A38E: GtI4
  loc_C7A38F: FFree1Ad var_CC
  loc_C7A392: BranchF loc_C7A49F
  loc_C7A395: FLdRfVar var_CC
  loc_C7A398: FLdPr Me
  loc_C7A39B: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A3A0: FLdPr var_CC
  loc_C7A3A3: Me.MoveFirst
  loc_C7A3A8: FFree1Ad var_CC
  loc_C7A3AB: FLdRfVar var_D2
  loc_C7A3AE: FLdRfVar var_CC
  loc_C7A3B1: FLdPr Me
  loc_C7A3B4: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A3B9: FLdPr var_CC
  loc_C7A3BC:  = Me.EOF
  loc_C7A3C1: FLdI2 var_D2
  loc_C7A3C4: NotI4
  loc_C7A3C5: FFree1Ad var_CC
  loc_C7A3C8: BranchF loc_C7A49C
  loc_C7A3CB: FLdRfVar var_FC
  loc_C7A3CE: FLdRfVar var_EC
  loc_C7A3D1: LitVarStr var_E8, "DiasRebo"
  loc_C7A3D6: PopAdLdVar
  loc_C7A3D7: FLdRfVar var_D8
  loc_C7A3DA: FLdRfVar var_CC
  loc_C7A3DD: FLdPr Me
  loc_C7A3E0: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A3E5: FLdPr var_CC
  loc_C7A3E8:  = Me.Fields
  loc_C7A3ED: FLdPr var_D8
  loc_C7A3F0: from_stack_2 = Me.Item(from_stack_1)
  loc_C7A3F5: FLdPr var_EC
  loc_C7A3F8:  = Me.Value
  loc_C7A3FD: FLdRfVar var_128
  loc_C7A400: FLdRfVar var_118
  loc_C7A403: LitVarStr var_114, "ImpoRebo"
  loc_C7A408: PopAdLdVar
  loc_C7A409: FLdRfVar var_104
  loc_C7A40C: FLdRfVar var_100
  loc_C7A40F: FLdPr Me
  loc_C7A412: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A417: FLdPr var_100
  loc_C7A41A:  = Me.Fields
  loc_C7A41F: FLdPr var_104
  loc_C7A422: from_stack_2 = Me.Item(from_stack_1)
  loc_C7A427: FLdPr var_118
  loc_C7A42A:  = Me.Value
  loc_C7A42F: FLdFPR8 var_8C
  loc_C7A432: CVarR8
  loc_C7A436: LitI4 2
  loc_C7A43B: FLdRfVar var_FC
  loc_C7A43E: FnCIntVar
  loc_C7A440: CR8I2
  loc_C7A441: FLdFPR8 var_AC
  loc_C7A444: MulR8
  loc_C7A445: LitI2 3000
  loc_C7A448: CR8I2
  loc_C7A449: DivR8
  loc_C7A44A: FLdRfVar var_128
  loc_C7A44D: FnCDblVar
  loc_C7A44F: MulR8
  loc_C7A450: CVarR8
  loc_C7A454: FLdRfVar var_158
  loc_C7A457: ImpAdCallFPR4  = Round(, )
  loc_C7A45C: FLdRfVar var_158
  loc_C7A45F: AddVar var_178
  loc_C7A463: CR4Var
  loc_C7A464: FStFPR8 var_8C
  loc_C7A467: FFreeAd var_CC = "": var_D8 = "": var_EC = "": var_100 = "": var_104 = ""
  loc_C7A476: FFreeVar var_FC = "": var_128 = "": var_148 = "": var_158 = ""
  loc_C7A483: FLdRfVar var_CC
  loc_C7A486: FLdPr Me
  loc_C7A489: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A48E: FLdPr var_CC
  loc_C7A491: Me.MoveNext
  loc_C7A496: FFree1Ad var_CC
  loc_C7A499: Branch loc_C7A3AB
  loc_C7A49C: Branch loc_C7A4A9
  loc_C7A49F: FLdFPR8 var_8C
  loc_C7A4A2: LitI2_Byte 0
  loc_C7A4A4: CR8I2
  loc_C7A4A5: AddR8
  loc_C7A4A6: FStFPR8 var_8C
  loc_C7A4A9: Branch loc_C7A8D5
  loc_C7A4AC: LitStr "Municipalidad de Guaymallén"
  loc_C7A4AF: LitStr "Municipalidad de Santa Rosa"
  loc_C7A4B2: EqStr
  loc_C7A4B4: BranchF loc_C7A63E
  loc_C7A4B7: FLdRfVar var_B4
  loc_C7A4BA: LitI4 0
  loc_C7A4BF: FLdRfVar var_A4
  loc_C7A4C2: NewIfNullPr clsinteres
  loc_C7A4C5: from_stack_2v = clsinteres.BuscaInteres(from_stack_1v)
  loc_C7A4CA: FLdFPR8 var_B4
  loc_C7A4CD: FStFPR8 var_AC
  loc_C7A4D0: LitStr "SELECT ImpoRebo, DiasRebo FROM recabole WHERE CodiOfic = "
  loc_C7A4D3: FLdI2 CodiOfic
  loc_C7A4D6: CStrUI1
  loc_C7A4D8: FStStrNoPop var_B8
  loc_C7A4DB: ConcatStr
  loc_C7A4DC: FStStrNoPop var_BC
  loc_C7A4DF: LitStr " AND CuenCtct = '"
  loc_C7A4E2: ConcatStr
  loc_C7A4E3: FStStrNoPop var_C0
  loc_C7A4E6: ILdRf var_90
  loc_C7A4E9: ConcatStr
  loc_C7A4EA: FStStrNoPop var_C4
  loc_C7A4ED: LitStr "' AND ActuRebo = 'No'"
  loc_C7A4F0: ConcatStr
  loc_C7A4F1: FStStrNoPop var_C8
  loc_C7A4F4: Call EjecutarRs2(from_stack_1v)
  loc_C7A4F9: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_C7A506: FLdRfVar var_D0
  loc_C7A509: FLdRfVar var_CC
  loc_C7A50C: FLdPr Me
  loc_C7A50F: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A514: FLdPr var_CC
  loc_C7A517:  = Me.RecordCount
  loc_C7A51C: ILdRf var_D0
  loc_C7A51F: LitI4 0
  loc_C7A524: GtI4
  loc_C7A525: FFree1Ad var_CC
  loc_C7A528: BranchF loc_C7A635
  loc_C7A52B: FLdRfVar var_CC
  loc_C7A52E: FLdPr Me
  loc_C7A531: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A536: FLdPr var_CC
  loc_C7A539: Me.MoveFirst
  loc_C7A53E: FFree1Ad var_CC
  loc_C7A541: FLdRfVar var_D2
  loc_C7A544: FLdRfVar var_CC
  loc_C7A547: FLdPr Me
  loc_C7A54A: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A54F: FLdPr var_CC
  loc_C7A552:  = Me.EOF
  loc_C7A557: FLdI2 var_D2
  loc_C7A55A: NotI4
  loc_C7A55B: FFree1Ad var_CC
  loc_C7A55E: BranchF loc_C7A632
  loc_C7A561: FLdRfVar var_FC
  loc_C7A564: FLdRfVar var_EC
  loc_C7A567: LitVarStr var_E8, "DiasRebo"
  loc_C7A56C: PopAdLdVar
  loc_C7A56D: FLdRfVar var_D8
  loc_C7A570: FLdRfVar var_CC
  loc_C7A573: FLdPr Me
  loc_C7A576: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A57B: FLdPr var_CC
  loc_C7A57E:  = Me.Fields
  loc_C7A583: FLdPr var_D8
  loc_C7A586: from_stack_2 = Me.Item(from_stack_1)
  loc_C7A58B: FLdPr var_EC
  loc_C7A58E:  = Me.Value
  loc_C7A593: FLdRfVar var_128
  loc_C7A596: FLdRfVar var_118
  loc_C7A599: LitVarStr var_114, "ImpoRebo"
  loc_C7A59E: PopAdLdVar
  loc_C7A59F: FLdRfVar var_104
  loc_C7A5A2: FLdRfVar var_100
  loc_C7A5A5: FLdPr Me
  loc_C7A5A8: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A5AD: FLdPr var_100
  loc_C7A5B0:  = Me.Fields
  loc_C7A5B5: FLdPr var_104
  loc_C7A5B8: from_stack_2 = Me.Item(from_stack_1)
  loc_C7A5BD: FLdPr var_118
  loc_C7A5C0:  = Me.Value
  loc_C7A5C5: FLdFPR8 var_8C
  loc_C7A5C8: CVarR8
  loc_C7A5CC: LitI4 2
  loc_C7A5D1: FLdRfVar var_FC
  loc_C7A5D4: FnCIntVar
  loc_C7A5D6: CR8I2
  loc_C7A5D7: FLdFPR8 var_AC
  loc_C7A5DA: MulR8
  loc_C7A5DB: LitI2 3000
  loc_C7A5DE: CR8I2
  loc_C7A5DF: DivR8
  loc_C7A5E0: FLdRfVar var_128
  loc_C7A5E3: FnCDblVar
  loc_C7A5E5: MulR8
  loc_C7A5E6: CVarR8
  loc_C7A5EA: FLdRfVar var_158
  loc_C7A5ED: ImpAdCallFPR4  = Round(, )
  loc_C7A5F2: FLdRfVar var_158
  loc_C7A5F5: AddVar var_178
  loc_C7A5F9: CR4Var
  loc_C7A5FA: FStFPR8 var_8C
  loc_C7A5FD: FFreeAd var_CC = "": var_D8 = "": var_EC = "": var_100 = "": var_104 = ""
  loc_C7A60C: FFreeVar var_FC = "": var_128 = "": var_148 = "": var_158 = ""
  loc_C7A619: FLdRfVar var_CC
  loc_C7A61C: FLdPr Me
  loc_C7A61F: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A624: FLdPr var_CC
  loc_C7A627: Me.MoveNext
  loc_C7A62C: FFree1Ad var_CC
  loc_C7A62F: Branch loc_C7A541
  loc_C7A632: Branch loc_C7A63B
  loc_C7A635: LitI2_Byte 0
  loc_C7A637: CR8I2
  loc_C7A638: FStFPR8 var_8C
  loc_C7A63B: Branch loc_C7A8D5
  loc_C7A63E: LitStr "Municipalidad de Guaymallén"
  loc_C7A641: LitStr "Municipalidad de San Martin"
  loc_C7A644: EqStr
  loc_C7A646: BranchF loc_C7A8D5
  loc_C7A649: FLdRfVar var_B4
  loc_C7A64C: LitI4 0
  loc_C7A651: FLdRfVar var_A4
  loc_C7A654: NewIfNullPr clsinteres
  loc_C7A657: from_stack_2v = clsinteres.BuscaInteres(from_stack_1v)
  loc_C7A65C: FLdFPR8 var_B4
  loc_C7A65F: FStFPR8 var_AC
  loc_C7A662: LitStr "SELECT FeveRebo, FealRebo, ImpoRebo, DiasRebo FROM recabole WHERE CodiOfic = "
  loc_C7A665: FLdI2 CodiOfic
  loc_C7A668: CStrUI1
  loc_C7A66A: FStStrNoPop var_B8
  loc_C7A66D: ConcatStr
  loc_C7A66E: FStStrNoPop var_BC
  loc_C7A671: LitStr " AND CuenCtct = '"
  loc_C7A674: ConcatStr
  loc_C7A675: FStStrNoPop var_C0
  loc_C7A678: ILdRf var_90
  loc_C7A67B: ConcatStr
  loc_C7A67C: FStStrNoPop var_C4
  loc_C7A67F: LitStr "' AND ActuRebo = 'No'"
  loc_C7A682: ConcatStr
  loc_C7A683: FStStrNoPop var_C8
  loc_C7A686: Call EjecutarRs2(from_stack_1v)
  loc_C7A68B: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_C7A698: FLdRfVar var_D0
  loc_C7A69B: FLdRfVar var_CC
  loc_C7A69E: FLdPr Me
  loc_C7A6A1: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A6A6: FLdPr var_CC
  loc_C7A6A9:  = Me.RecordCount
  loc_C7A6AE: ILdRf var_D0
  loc_C7A6B1: LitI4 0
  loc_C7A6B6: GtI4
  loc_C7A6B7: FFree1Ad var_CC
  loc_C7A6BA: BranchF loc_C7A8CF
  loc_C7A6BD: FLdRfVar var_CC
  loc_C7A6C0: FLdPr Me
  loc_C7A6C3: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A6C8: FLdPr var_CC
  loc_C7A6CB: Me.MoveFirst
  loc_C7A6D0: FFree1Ad var_CC
  loc_C7A6D3: FLdRfVar var_D2
  loc_C7A6D6: FLdRfVar var_CC
  loc_C7A6D9: FLdPr Me
  loc_C7A6DC: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A6E1: FLdPr var_CC
  loc_C7A6E4:  = Me.EOF
  loc_C7A6E9: FLdI2 var_D2
  loc_C7A6EC: NotI4
  loc_C7A6ED: FFree1Ad var_CC
  loc_C7A6F0: BranchF loc_C7A8CC
  loc_C7A6F3: FLdRfVar var_EC
  loc_C7A6F6: LitVarStr var_E8, "FeveRebo"
  loc_C7A6FB: PopAdLdVar
  loc_C7A6FC: FLdRfVar var_D8
  loc_C7A6FF: FLdRfVar var_CC
  loc_C7A702: FLdPr Me
  loc_C7A705: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A70A: FLdPr var_CC
  loc_C7A70D:  = Me.Fields
  loc_C7A712: FLdPr var_D8
  loc_C7A715: from_stack_2 = Me.Item(from_stack_1)
  loc_C7A71A: FLdRfVar var_118
  loc_C7A71D: LitVarStr var_188, "FealRebo"
  loc_C7A722: PopAdLdVar
  loc_C7A723: FLdRfVar var_104
  loc_C7A726: FLdRfVar var_100
  loc_C7A729: FLdPr Me
  loc_C7A72C: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A731: FLdPr var_100
  loc_C7A734:  = Me.Fields
  loc_C7A739: FLdPr var_104
  loc_C7A73C: from_stack_2 = Me.Item(from_stack_1)
  loc_C7A741: FLdRfVar var_240
  loc_C7A744: FLdRfVar var_230
  loc_C7A747: LitVarStr var_1E8, "ImpoRebo"
  loc_C7A74C: PopAdLdVar
  loc_C7A74D: FLdRfVar var_22C
  loc_C7A750: FLdRfVar var_228
  loc_C7A753: FLdPr Me
  loc_C7A756: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A75B: FLdPr var_228
  loc_C7A75E:  = Me.Fields
  loc_C7A763: FLdPr var_22C
  loc_C7A766: from_stack_2 = Me.Item(from_stack_1)
  loc_C7A76B: FLdPr var_230
  loc_C7A76E:  = Me.Value
  loc_C7A773: LitVarStr var_138, "SELECT fnCalculoIntNuevos("
  loc_C7A778: LitI4 1
  loc_C7A77D: LitI4 1
  loc_C7A782: LitVarStr var_114, "'yyyy-mm-dd'"
  loc_C7A787: FStVarCopyObj var_128
  loc_C7A78A: FLdRfVar var_128
  loc_C7A78D: FLdZeroAd var_EC
  loc_C7A790: CVarAd
  loc_C7A794: FLdRfVar var_148
  loc_C7A797: ImpAdCallFPR4  = Format(, )
  loc_C7A79C: FLdRfVar var_148
  loc_C7A79F: ConcatVar var_158
  loc_C7A7A3: LitVarStr var_168, ","
  loc_C7A7A8: ConcatVar var_178
  loc_C7A7AC: LitI4 1
  loc_C7A7B1: LitI4 1
  loc_C7A7B6: LitVarStr var_1A8, "'yyyy-mm-dd'"
  loc_C7A7BB: FStVarCopyObj var_1B8
  loc_C7A7BE: FLdRfVar var_1B8
  loc_C7A7C1: FLdZeroAd var_118
  loc_C7A7C4: CVarAd
  loc_C7A7C8: FLdRfVar var_1D8
  loc_C7A7CB: ImpAdCallFPR4  = Format(, )
  loc_C7A7D0: FLdRfVar var_1D8
  loc_C7A7D3: ConcatVar var_1F8
  loc_C7A7D7: LitVarStr var_1C8, ","
  loc_C7A7DC: ConcatVar var_224
  loc_C7A7E0: LitI4 0
  loc_C7A7E5: LitI4 -1
  loc_C7A7EA: LitI4 1
  loc_C7A7EF: LitStr "."
  loc_C7A7F2: LitStr ","
  loc_C7A7F5: FLdRfVar var_240
  loc_C7A7F8: CStrVarTmp
  loc_C7A7F9: FStStrNoPop var_B8
  loc_C7A7FC: ImpAdCallI2 Replace(, , , , , )
  loc_C7A801: CVarStr var_250
  loc_C7A804: ConcatVar var_260
  loc_C7A808: LitVarStr var_270, ","
  loc_C7A80D: ConcatVar var_280
  loc_C7A811: FLdFPR8 var_AC
  loc_C7A814: CVarR8
  loc_C7A818: ConcatVar var_2A0
  loc_C7A81C: LitVarStr var_2B0, ") Importe"
  loc_C7A821: ConcatVar var_2C0
  loc_C7A825: CStrVarVal var_BC
  loc_C7A829: Call EjecutarRs3(from_stack_1v)
  loc_C7A82E: FFreeStr var_B8 = ""
  loc_C7A835: FFreeAd var_CC = "": var_D8 = "": var_100 = "": var_104 = "": var_228 = "": var_22C = ""
  loc_C7A846: FFreeVar var_FC = "": var_128 = "": var_148 = "": var_158 = "": var_198 = "": var_1B8 = "": var_178 = "": var_1D8 = "": var_1F8 = "": var_240 = "": var_224 = "": var_250 = "": var_260 = "": var_280 = "": var_2A0 = ""
  loc_C7A869: FLdRfVar var_FC
  loc_C7A86C: FLdRfVar var_EC
  loc_C7A86F: LitVarStr var_E8, "Importe"
  loc_C7A874: PopAdLdVar
  loc_C7A875: FLdRfVar var_D8
  loc_C7A878: FLdRfVar var_CC
  loc_C7A87B: FLdPr Me
  loc_C7A87E: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A883: FLdPr var_CC
  loc_C7A886:  = Me.Fields
  loc_C7A88B: FLdPr var_D8
  loc_C7A88E: from_stack_2 = Me.Item(from_stack_1)
  loc_C7A893: FLdPr var_EC
  loc_C7A896:  = Me.Value
  loc_C7A89B: FLdFPR8 var_8C
  loc_C7A89E: FLdRfVar var_FC
  loc_C7A8A1: FnCDblVar
  loc_C7A8A3: AddR8
  loc_C7A8A4: FStFPR8 var_8C
  loc_C7A8A7: FFreeAd var_CC = "": var_D8 = ""
  loc_C7A8B0: FFree1Var var_FC = ""
  loc_C7A8B3: FLdRfVar var_CC
  loc_C7A8B6: FLdPr Me
  loc_C7A8B9: from_stack_1v = clsrecabole.global_4525064Get()
  loc_C7A8BE: FLdPr var_CC
  loc_C7A8C1: Me.MoveNext
  loc_C7A8C6: FFree1Ad var_CC
  loc_C7A8C9: Branch loc_C7A6D3
  loc_C7A8CC: Branch loc_C7A8D5
  loc_C7A8CF: LitI2_Byte 0
  loc_C7A8D1: CR8I2
  loc_C7A8D2: FStFPR8 var_8C
  loc_C7A8D5: ExitProcCbHresult
End Function

Public Sub ModificaRecabole(iPeriliqu, byBimeLiqu, byCodiTili, byNumeLiqu, byCodiOfic, sCuenCtct) 'B10370
  'Data Table: 450C80
  loc_B10174: ILdRf sCuenCtct
  loc_B10177: FStStrCopy var_88
  loc_B1017A: LitStr "Municipalidad de Guaymallén"
  loc_B1017D: LitStr "Municipalidad de Guaymallén"
  loc_B10180: EqStr
  loc_B10182: BranchF loc_B102D1
  loc_B10185: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_recabole;"
  loc_B10188: LitStr " CREATE TEMPORARY TABLE tmp_recabole"
  loc_B1018B: ConcatStr
  loc_B1018C: FStStrNoPop var_8C
  loc_B1018F: LitStr " SELECT recabole.CodiOfic, recabole.CuenCtct, recabole.PeriBole, recabole.NumeBole, recabole.ActuRebo  FROM recabole"
  loc_B10192: ConcatStr
  loc_B10193: FStStrNoPop var_90
  loc_B10196: LitStr " INNER JOIN detabole ON detabole.PeriBole = recabole.PeriBole"
  loc_B10199: ConcatStr
  loc_B1019A: FStStrNoPop var_94
  loc_B1019D: LitStr " AND detabole.NumeBole = recabole.numebole"
  loc_B101A0: ConcatStr
  loc_B101A1: FStStrNoPop var_98
  loc_B101A4: LitStr " WHERE recabole.CodiOfic = "
  loc_B101A7: ConcatStr
  loc_B101A8: FStStrNoPop var_9C
  loc_B101AB: FLdUI1
  loc_B101AF: CStrI2
  loc_B101B1: FStStrNoPop var_A0
  loc_B101B4: ConcatStr
  loc_B101B5: FStStrNoPop var_A4
  loc_B101B8: LitStr " AND recabole.CuenCtct = '"
  loc_B101BB: ConcatStr
  loc_B101BC: FStStrNoPop var_A8
  loc_B101BF: ILdRf var_88
  loc_B101C2: ConcatStr
  loc_B101C3: FStStrNoPop var_AC
  loc_B101C6: LitStr "' AND recabole.ActuRebo = 'No'"
  loc_B101C9: ConcatStr
  loc_B101CA: FStStrNoPop var_B0
  loc_B101CD: LitStr " AND FealRebo >=' 2022-01-01'"
  loc_B101D0: ConcatStr
  loc_B101D1: FStStrNoPop var_B4
  loc_B101D4: LitStr " AND detabole.PeriCtct >= 2023 AND detabole.BimeCtct >= 1 AND detabole.CodiTili <> 0 AND detabole.NumeLiqu <> 0"
  loc_B101D7: ConcatStr
  loc_B101D8: FStStrNoPop var_B8
  loc_B101DB: LitStr " GROUP BY recabole.CodiOfic, recabole.CuenCtct, recabole.PeriBole, recabole.NumeBole"
  loc_B101DE: ConcatStr
  loc_B101DF: FStStrNoPop var_BC
  loc_B101E2: Call EjecutarRs2(from_stack_1v)
  loc_B101E7: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_B10204: LitStr " UPDATE tmp_recabole"
  loc_B10207: LitStr " INNER JOIN recabole ON recabole.CodiOfic = tmp_recabole.CodiOfic"
  loc_B1020A: ConcatStr
  loc_B1020B: FStStrNoPop var_8C
  loc_B1020E: LitStr " AND recabole.CuenCtct = tmp_recabole.CuenCtct"
  loc_B10211: ConcatStr
  loc_B10212: FStStrNoPop var_90
  loc_B10215: LitStr " AND recabole.PeriBole = tmp_recabole.PeriBole"
  loc_B10218: ConcatStr
  loc_B10219: FStStrNoPop var_94
  loc_B1021C: LitStr " AND recabole.NUmeBole = tmp_recabole.NumeBole"
  loc_B1021F: ConcatStr
  loc_B10220: FStStrNoPop var_98
  loc_B10223: LitStr " SET recabole.PeriLiqu = "
  loc_B10226: ConcatStr
  loc_B10227: FStStrNoPop var_9C
  loc_B1022A: FLdI2 iPeriliqu
  loc_B1022D: CStrUI1
  loc_B1022F: FStStrNoPop var_A0
  loc_B10232: ConcatStr
  loc_B10233: FStStrNoPop var_A4
  loc_B10236: LitStr ", recabole.BimeLiqu = "
  loc_B10239: ConcatStr
  loc_B1023A: FStStrNoPop var_A8
  loc_B1023D: FLdUI1
  loc_B10241: CStrI2
  loc_B10243: FStStrNoPop var_AC
  loc_B10246: ConcatStr
  loc_B10247: FStStrNoPop var_B0
  loc_B1024A: LitStr ", recabole.CodiTili = "
  loc_B1024D: ConcatStr
  loc_B1024E: FStStrNoPop var_B4
  loc_B10251: FLdUI1
  loc_B10255: CStrI2
  loc_B10257: FStStrNoPop var_B8
  loc_B1025A: ConcatStr
  loc_B1025B: FStStrNoPop var_BC
  loc_B1025E: LitStr ", recabole.NumeLiqu = "
  loc_B10261: ConcatStr
  loc_B10262: FStStrNoPop var_C0
  loc_B10265: FLdI2 byNumeLiqu
  loc_B10268: CStrUI1
  loc_B1026A: FStStrNoPop var_C4
  loc_B1026D: ConcatStr
  loc_B1026E: FStStrNoPop var_C8
  loc_B10271: LitStr " WHERE recabole.CodiOfic = "
  loc_B10274: ConcatStr
  loc_B10275: FStStrNoPop var_CC
  loc_B10278: FLdUI1
  loc_B1027C: CStrI2
  loc_B1027E: FStStrNoPop var_D0
  loc_B10281: ConcatStr
  loc_B10282: FStStrNoPop var_D4
  loc_B10285: LitStr " AND recabole.CuenCtct = '"
  loc_B10288: ConcatStr
  loc_B10289: FStStrNoPop var_D8
  loc_B1028C: ILdRf var_88
  loc_B1028F: ConcatStr
  loc_B10290: FStStrNoPop var_DC
  loc_B10293: LitStr "' AND recabole.ActuRebo = 'No'"
  loc_B10296: ConcatStr
  loc_B10297: FStStrNoPop var_E0
  loc_B1029A: Call EjecutarRs2(from_stack_1v)
  loc_B1029F: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B102CE: Branch loc_B1036E
  loc_B102D1: LitStr "UPDATE recabole SET PeriLiqu = "
  loc_B102D4: FLdI2 iPeriliqu
  loc_B102D7: CStrUI1
  loc_B102D9: FStStrNoPop var_8C
  loc_B102DC: ConcatStr
  loc_B102DD: FStStrNoPop var_90
  loc_B102E0: LitStr ", BimeLiqu = "
  loc_B102E3: ConcatStr
  loc_B102E4: FStStrNoPop var_94
  loc_B102E7: FLdUI1
  loc_B102EB: CStrI2
  loc_B102ED: FStStrNoPop var_98
  loc_B102F0: ConcatStr
  loc_B102F1: FStStrNoPop var_9C
  loc_B102F4: LitStr ", CodiTili = "
  loc_B102F7: ConcatStr
  loc_B102F8: FStStrNoPop var_A0
  loc_B102FB: FLdUI1
  loc_B102FF: CStrI2
  loc_B10301: FStStrNoPop var_A4
  loc_B10304: ConcatStr
  loc_B10305: FStStrNoPop var_A8
  loc_B10308: LitStr ", NumeLiqu = "
  loc_B1030B: ConcatStr
  loc_B1030C: FStStrNoPop var_AC
  loc_B1030F: FLdI2 byNumeLiqu
  loc_B10312: CStrUI1
  loc_B10314: FStStrNoPop var_B0
  loc_B10317: ConcatStr
  loc_B10318: FStStrNoPop var_B4
  loc_B1031B: LitStr " WHERE CodiOfic = "
  loc_B1031E: ConcatStr
  loc_B1031F: FStStrNoPop var_B8
  loc_B10322: FLdUI1
  loc_B10326: CStrI2
  loc_B10328: FStStrNoPop var_BC
  loc_B1032B: ConcatStr
  loc_B1032C: FStStrNoPop var_C0
  loc_B1032F: LitStr " AND CuenCtct = '"
  loc_B10332: ConcatStr
  loc_B10333: FStStrNoPop var_C4
  loc_B10336: ILdRf var_88
  loc_B10339: ConcatStr
  loc_B1033A: FStStrNoPop var_C8
  loc_B1033D: LitStr "' AND ActuRebo = 'No'"
  loc_B10340: ConcatStr
  loc_B10341: FStStrNoPop var_CC
  loc_B10344: Call EjecutarRs2(from_stack_1v)
  loc_B10349: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B1036E: ExitProcHresult
End Sub

Public Sub ActualizaRecabole(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiOfic, CuenCtct, ActuRebo) 'AC1968
  'Data Table: 450C80
  loc_AC18AC: ILdRf CuenCtct
  loc_AC18AF: FStStrCopy var_88
  loc_AC18B2: ILdRf ActuRebo
  loc_AC18B5: FStStrCopy var_8C
  loc_AC18B8: LitStr "UPDATE recabole SET ActuRebo = '"
  loc_AC18BB: ILdRf var_8C
  loc_AC18BE: ConcatStr
  loc_AC18BF: FStStrNoPop var_90
  loc_AC18C2: LitStr "' WHERE PeriLiqu = "
  loc_AC18C5: ConcatStr
  loc_AC18C6: FStStrNoPop var_94
  loc_AC18C9: FLdI2 PeriLiqu
  loc_AC18CC: CStrUI1
  loc_AC18CE: FStStrNoPop var_98
  loc_AC18D1: ConcatStr
  loc_AC18D2: FStStrNoPop var_9C
  loc_AC18D5: LitStr " AND BimeLiqu = "
  loc_AC18D8: ConcatStr
  loc_AC18D9: FStStrNoPop var_A0
  loc_AC18DC: FLdUI1
  loc_AC18E0: CStrI2
  loc_AC18E2: FStStrNoPop var_A4
  loc_AC18E5: ConcatStr
  loc_AC18E6: FStStrNoPop var_A8
  loc_AC18E9: LitStr " AND CodiTili = "
  loc_AC18EC: ConcatStr
  loc_AC18ED: FStStrNoPop var_AC
  loc_AC18F0: FLdUI1
  loc_AC18F4: CStrI2
  loc_AC18F6: FStStrNoPop var_B0
  loc_AC18F9: ConcatStr
  loc_AC18FA: FStStrNoPop var_B4
  loc_AC18FD: LitStr " AND NumeLiqu = "
  loc_AC1900: ConcatStr
  loc_AC1901: FStStrNoPop var_B8
  loc_AC1904: FLdI2 NumeLiqu
  loc_AC1907: CStrUI1
  loc_AC1909: FStStrNoPop var_BC
  loc_AC190C: ConcatStr
  loc_AC190D: FStStrNoPop var_C0
  loc_AC1910: LitStr " AND CodiOfic =  "
  loc_AC1913: ConcatStr
  loc_AC1914: FStStrNoPop var_C4
  loc_AC1917: FLdUI1
  loc_AC191B: CStrI2
  loc_AC191D: FStStrNoPop var_C8
  loc_AC1920: ConcatStr
  loc_AC1921: FStStrNoPop var_CC
  loc_AC1924: LitStr " AND CuenCtct = '"
  loc_AC1927: ConcatStr
  loc_AC1928: FStStrNoPop var_D0
  loc_AC192B: ILdRf var_88
  loc_AC192E: ConcatStr
  loc_AC192F: FStStrNoPop var_D4
  loc_AC1932: LitStr "'"
  loc_AC1935: ConcatStr
  loc_AC1936: FStStrNoPop var_D8
  loc_AC1939: Call EjecutarRs2(from_stack_1v)
  loc_AC193E: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_AC1967: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E8620
  'Data Table: 450C80
  loc_9E8604: ILdRf pError
  loc_9E8607: FStAd var_88 
  loc_9E860B: ILdRf pRecordset
  loc_9E860E: FStAd var_8C 
  loc_9E8612: FLdPr Me
  loc_9E8615: RaiseEvent
  loc_9E861D: ExitProcHresult
  loc_9E861E: ConcatStr
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9D7F8
  'Data Table: 450C80
  loc_A9D738: ILdRf pRecordset
  loc_A9D73B: FStAd var_88 
  loc_A9D73F: ILdRf adReason
  loc_A9D742: FStR4 var_90
  loc_A9D745: ILdRf var_90
  loc_A9D748: LitI4 1
  loc_A9D74D: EqI4
  loc_A9D74E: BranchF loc_A9D754
  loc_A9D751: Branch loc_A9D7E7
  loc_A9D754: ILdRf var_90
  loc_A9D757: LitI4 9
  loc_A9D75C: EqI4
  loc_A9D75D: BranchF loc_A9D763
  loc_A9D760: Branch loc_A9D7E7
  loc_A9D763: ILdRf var_90
  loc_A9D766: LitI4 2
  loc_A9D76B: EqI4
  loc_A9D76C: BranchF loc_A9D772
  loc_A9D76F: Branch loc_A9D7E7
  loc_A9D772: ILdRf var_90
  loc_A9D775: LitI4 &HB
  loc_A9D77A: EqI4
  loc_A9D77B: BranchF loc_A9D781
  loc_A9D77E: Branch loc_A9D7E7
  loc_A9D781: ILdRf var_90
  loc_A9D784: LitI4 &HA
  loc_A9D789: EqI4
  loc_A9D78A: BranchF loc_A9D790
  loc_A9D78D: Branch loc_A9D7E7
  loc_A9D790: ILdRf var_90
  loc_A9D793: LitI4 7
  loc_A9D798: EqI4
  loc_A9D799: BranchF loc_A9D79F
  loc_A9D79C: Branch loc_A9D7E7
  loc_A9D79F: ILdRf var_90
  loc_A9D7A2: LitI4 8
  loc_A9D7A7: EqI4
  loc_A9D7A8: BranchF loc_A9D7AE
  loc_A9D7AB: Branch loc_A9D7E7
  loc_A9D7AE: ILdRf var_90
  loc_A9D7B1: LitI4 5
  loc_A9D7B6: EqI4
  loc_A9D7B7: BranchF loc_A9D7BD
  loc_A9D7BA: Branch loc_A9D7E7
  loc_A9D7BD: ILdRf var_90
  loc_A9D7C0: LitI4 6
  loc_A9D7C5: EqI4
  loc_A9D7C6: BranchF loc_A9D7CC
  loc_A9D7C9: Branch loc_A9D7E7
  loc_A9D7CC: ILdRf var_90
  loc_A9D7CF: LitI4 4
  loc_A9D7D4: EqI4
  loc_A9D7D5: BranchF loc_A9D7DB
  loc_A9D7D8: Branch loc_A9D7E7
  loc_A9D7DB: ILdRf var_90
  loc_A9D7DE: LitI4 3
  loc_A9D7E3: EqI4
  loc_A9D7E4: BranchF loc_A9D7E7
  loc_A9D7E7: FLdI2 var_8A
  loc_A9D7EA: BranchF loc_A9D7F5
  loc_A9D7ED: LitI4 4
  loc_A9D7F2: IStI4 adStatus
  loc_A9D7F5: ExitProcHresult
  loc_A9D7F6: NeCyR8
End Sub

Private Function Proc_75_48_9EFD5C() '9EFD5C
  'Data Table: 450C80
  loc_9EFD38: LitStr "Primary"
  loc_9EFD3B: FLdPr Me
  loc_9EFD3E: LateIdLdVar var_94 DispID_4 0
  loc_9EFD45: CastAdVar Me
  loc_9EFD49: FStAdFunc var_98
  loc_9EFD4C: FLdPr var_98
  loc_9EFD54: FFree1Ad var_98
  loc_9EFD57: FFree1Var var_94 = ""
  loc_9EFD5A: ExitProcHresult
  loc_9EFD5B: FnLBound
End Function

Private Function Proc_75_49_9F0378(arg_C) '9F0378
  'Data Table: 450C80
  loc_9F0354: ILdI4 arg_C
  loc_9F0357: FStStrCopy var_88
  loc_9F035A: ILdRf var_88
  loc_9F035D: LitStr "Primary"
  loc_9F0360: EqStr
  loc_9F0362: BranchF loc_9F0377
  loc_9F0365: FLdRfVar var_8C
  loc_9F0368: FLdPr Me
  loc_9F036B: from_stack_1v = clsrecabole.global_4525064Get()
  loc_9F0370: FLdZeroAd var_8C
  loc_9F0373: IStAdFunc
  loc_9F0377: ExitProcHresult
End Function

Public Function global_4525064Get() '451238
  global_4525064Get = global_4525064
End Function

Public Sub global_4525064Put(Value) '451252
  global_4525064 = Value
End Sub

Public Sub global_4525064Set(Value) '45126C
  global_4525064 = Value
End Sub

Public Function global_4525064Get() '451286
  global_4525064Get = global_4525064
End Function

Public Sub global_4525064Put(Value) '4512A0
  global_4525064 = Value
End Sub

Public Sub global_4525064Set(Value) '4512BA
  global_4525064 = Value
End Sub

Public Function global_4525064Get() '4512D4
  global_4525064Get = global_4525064
End Function

Public Sub global_4525064Put(Value) '4512EE
  global_4525064 = Value
End Sub

Public Sub global_4525064Set(Value) '451308
  global_4525064 = Value
End Sub

Public Function global_4525064Get() '451322
  global_4525064Get = global_4525064
End Function

Public Sub global_4525064Put(Value) '45133C
  global_4525064 = Value
End Sub

Public Sub global_4525064Set(Value) '451356
  global_4525064 = Value
End Sub
