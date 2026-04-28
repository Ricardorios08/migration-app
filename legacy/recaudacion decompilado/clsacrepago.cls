VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsacrepago"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0F934
  'Data Table: 44DFCC
  loc_A0F8F8: FLdRfVar var_8C
  loc_A0F8FB: FLdRfVar var_88
  loc_A0F8FE: FLdPr Me
  loc_A0F901: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A0F906: FLdPr var_88
  loc_A0F909:  = Me.RecordCount
  loc_A0F90E: ILdRf var_8C
  loc_A0F911: LitI4 0
  loc_A0F916: GtI4
  loc_A0F917: FFree1Ad var_88
  loc_A0F91A: BranchF loc_A0F933
  loc_A0F91D: FLdRfVar var_88
  loc_A0F920: FLdPr Me
  loc_A0F923: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A0F928: FLdPr var_88
  loc_A0F92B: Me.MoveFirst
  loc_A0F930: FFree1Ad var_88
  loc_A0F933: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0FAF4
  'Data Table: 44DFCC
  loc_A0FAB8: FLdRfVar var_8C
  loc_A0FABB: FLdRfVar var_88
  loc_A0FABE: FLdPr Me
  loc_A0FAC1: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A0FAC6: FLdPr var_88
  loc_A0FAC9:  = Me.RecordCount
  loc_A0FACE: ILdRf var_8C
  loc_A0FAD1: LitI4 0
  loc_A0FAD6: GtI4
  loc_A0FAD7: FFree1Ad var_88
  loc_A0FADA: BranchF loc_A0FAF3
  loc_A0FADD: FLdRfVar var_88
  loc_A0FAE0: FLdPr Me
  loc_A0FAE3: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A0FAE8: FLdPr var_88
  loc_A0FAEB: Me.MoveLast
  loc_A0FAF0: FFree1Ad var_88
  loc_A0FAF3: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9A664
  'Data Table: 44DFCC
  loc_A9A5A8: FLdRfVar var_8A
  loc_A9A5AB: FLdRfVar var_88
  loc_A9A5AE: FLdPr Me
  loc_A9A5B1: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A9A5B6: FLdPr var_88
  loc_A9A5B9:  = Me.EOF
  loc_A9A5BE: FLdI2 var_8A
  loc_A9A5C1: NotI4
  loc_A9A5C2: FLdRfVar var_94
  loc_A9A5C5: FLdRfVar var_90
  loc_A9A5C8: FLdPr Me
  loc_A9A5CB: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A9A5D0: FLdPr var_90
  loc_A9A5D3:  = Me.RecordCount
  loc_A9A5D8: ILdRf var_94
  loc_A9A5DB: LitI4 0
  loc_A9A5E0: GtI4
  loc_A9A5E1: AndI4
  loc_A9A5E2: FFreeAd var_88 = ""
  loc_A9A5E9: BranchF loc_A9A602
  loc_A9A5EC: FLdRfVar var_88
  loc_A9A5EF: FLdPr Me
  loc_A9A5F2: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A9A5F7: FLdPr var_88
  loc_A9A5FA: Me.MoveNext
  loc_A9A5FF: FFree1Ad var_88
  loc_A9A602: FLdRfVar var_8A
  loc_A9A605: FLdRfVar var_88
  loc_A9A608: FLdPr Me
  loc_A9A60B: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A9A610: FLdPr var_88
  loc_A9A613:  = Me.EOF
  loc_A9A618: FLdI2 var_8A
  loc_A9A61B: FLdRfVar var_94
  loc_A9A61E: FLdRfVar var_90
  loc_A9A621: FLdPr Me
  loc_A9A624: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A9A629: FLdPr var_90
  loc_A9A62C:  = Me.RecordCount
  loc_A9A631: ILdRf var_94
  loc_A9A634: LitI4 0
  loc_A9A639: GtI4
  loc_A9A63A: AndI4
  loc_A9A63B: FFreeAd var_88 = ""
  loc_A9A642: BranchF loc_A9A660
  loc_A9A645: ImpAdCallFPR4 Beep()
  loc_A9A64A: FLdRfVar var_88
  loc_A9A64D: FLdPr Me
  loc_A9A650: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A9A655: FLdPr var_88
  loc_A9A658: Me.MoveLast
  loc_A9A65D: FFree1Ad var_88
  loc_A9A660: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9D48F0
  'Data Table: 44DFCC
  loc_9D48D8: FLdRfVar var_88
  loc_9D48DB: FLdPr Me
  loc_9D48DE: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9D48E3: FLdPr var_88
  loc_9D48E6: Me.MoveNext
  loc_9D48EB: FFree1Ad var_88
  loc_9D48EE: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E539C
  'Data Table: 44DFCC
  loc_9E537C: LitVar_Missing var_98
  loc_9E537F: PopAdLdVar
  loc_9E5380: ILdI2 iValor
  loc_9E5383: CI4UI1
  loc_9E5384: FLdRfVar var_88
  loc_9E5387: FLdPr Me
  loc_9E538A: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9E538F: FLdPr var_88
  loc_9E5392: Me.Move from_stack_1, from_stack_2
  loc_9E5397: FFree1Ad var_88
  loc_9E539A: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9B2C8
  'Data Table: 44DFCC
  loc_A9B20C: FLdRfVar var_8A
  loc_A9B20F: FLdRfVar var_88
  loc_A9B212: FLdPr Me
  loc_A9B215: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A9B21A: FLdPr var_88
  loc_A9B21D:  = Me.BOF
  loc_A9B222: FLdI2 var_8A
  loc_A9B225: NotI4
  loc_A9B226: FLdRfVar var_94
  loc_A9B229: FLdRfVar var_90
  loc_A9B22C: FLdPr Me
  loc_A9B22F: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A9B234: FLdPr var_90
  loc_A9B237:  = Me.RecordCount
  loc_A9B23C: ILdRf var_94
  loc_A9B23F: LitI4 0
  loc_A9B244: GtI4
  loc_A9B245: AndI4
  loc_A9B246: FFreeAd var_88 = ""
  loc_A9B24D: BranchF loc_A9B266
  loc_A9B250: FLdRfVar var_88
  loc_A9B253: FLdPr Me
  loc_A9B256: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A9B25B: FLdPr var_88
  loc_A9B25E: Me.MovePrevious
  loc_A9B263: FFree1Ad var_88
  loc_A9B266: FLdRfVar var_8A
  loc_A9B269: FLdRfVar var_88
  loc_A9B26C: FLdPr Me
  loc_A9B26F: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A9B274: FLdPr var_88
  loc_A9B277:  = Me.BOF
  loc_A9B27C: FLdI2 var_8A
  loc_A9B27F: FLdRfVar var_94
  loc_A9B282: FLdRfVar var_90
  loc_A9B285: FLdPr Me
  loc_A9B288: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A9B28D: FLdPr var_90
  loc_A9B290:  = Me.RecordCount
  loc_A9B295: ILdRf var_94
  loc_A9B298: LitI4 0
  loc_A9B29D: GtI4
  loc_A9B29E: AndI4
  loc_A9B29F: FFreeAd var_88 = ""
  loc_A9B2A6: BranchF loc_A9B2C4
  loc_A9B2A9: ImpAdCallFPR4 Beep()
  loc_A9B2AE: FLdRfVar var_88
  loc_A9B2B1: FLdPr Me
  loc_A9B2B4: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A9B2B9: FLdPr var_88
  loc_A9B2BC: Me.MoveFirst
  loc_A9B2C1: FFree1Ad var_88
  loc_A9B2C4: ExitProcHresult
End Sub

Public Property Get EOF() '9F56DC
  'Data Table: 44DFCC
  loc_9F56B4: FLdRfVar var_8E
  loc_9F56B7: FLdRfVar var_8C
  loc_9F56BA: FLdPr Me
  loc_9F56BD: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9F56C2: FLdPr var_8C
  loc_9F56C5:  = Me.EOF
  loc_9F56CA: FLdI2 var_8E
  loc_9F56CD: FStI2 var_86
  loc_9F56D0: FFree1Ad var_8C
  loc_9F56D3: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F57F0
  'Data Table: 44DFCC
  loc_9F57C8: FLdRfVar var_8E
  loc_9F57CB: FLdRfVar var_8C
  loc_9F57CE: FLdPr Me
  loc_9F57D1: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9F57D6: FLdPr var_8C
  loc_9F57D9:  = Me.BOF
  loc_9F57DE: FLdI2 var_8E
  loc_9F57E1: FStI2 var_86
  loc_9F57E4: FFree1Ad var_8C
  loc_9F57E7: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9E3ACC
  'Data Table: 44DFCC
  loc_9E3AB0: ILdI4 sOrden
  loc_9E3AB3: FLdRfVar var_88
  loc_9E3AB6: FLdPr Me
  loc_9E3AB9: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9E3ABE: FLdPr var_88
  loc_9E3AC1: Me.Sort = from_stack_1
  loc_9E3AC6: FFree1Ad var_88
  loc_9E3AC9: ExitProcHresult
End Sub

Public Sub Find(sFind) '9F584C
  'Data Table: 44DFCC
  loc_9F5824: LitVar_Missing var_98
  loc_9F5827: PopAdLdVar
  loc_9F5828: LitI4 1
  loc_9F582D: LitI4 0
  loc_9F5832: ILdI4 sFind
  loc_9F5835: FLdRfVar var_88
  loc_9F5838: FLdPr Me
  loc_9F583B: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9F5840: FLdPr var_88
  loc_9F5843: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F5848: FFree1Ad var_88
  loc_9F584B: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F58A8
  'Data Table: 44DFCC
  loc_9F5880: FLdRfVar var_90
  loc_9F5883: FLdRfVar var_8C
  loc_9F5886: FLdPr Me
  loc_9F5889: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9F588E: FLdPr var_8C
  loc_9F5891:  = Me.AbsolutePosition
  loc_9F5896: ILdRf var_90
  loc_9F5899: FStR4 var_88
  loc_9F589C: FFree1Ad var_8C
  loc_9F589F: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F5904
  'Data Table: 44DFCC
  loc_9F58DC: FLdRfVar var_90
  loc_9F58DF: FLdRfVar var_8C
  loc_9F58E2: FLdPr Me
  loc_9F58E5: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9F58EA: FLdPr var_8C
  loc_9F58ED:  = Me.RecordCount
  loc_9F58F2: ILdRf var_90
  loc_9F58F5: FStR4 var_88
  loc_9F58F8: FFree1Ad var_8C
  loc_9F58FB: ExitProcCbHresult
End Sub

Public Sub AddNew(FeenAcpa, NumeAcpa, ActuAcpa, CodiEnre, FepaAcpa, TocoAcpa, ImpoAcpa, ObseAcpa) 'B15C78
  'Data Table: 44DFCC
  loc_B15A94: FDupVar
  loc_B15A9A: ILdRf TocoAcpa
  loc_B15A9D: FStStrCopy var_98
  loc_B15AA0: FDupVar
  loc_B15AA6: ILdRf AddNew4
  loc_B15AA9: FStStrCopy var_AC
  loc_B15AAC: LitI2_Byte 0
  loc_B15AAE: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B15AB3: FStFPR8 var_308
  loc_B15AB6: FLdRfVar var_A8
  loc_B15AB9: ImpAdCallI2 IsDate()
  loc_B15ABE: FStI2 var_30A
  loc_B15AC1: LitI4 1
  loc_B15AC6: LitI4 1
  loc_B15ACB: LitVarStr var_150, "yyyy-mm-dd"
  loc_B15AD0: FStVarCopyObj var_160
  loc_B15AD3: FLdRfVar var_160
  loc_B15AD6: FLdRfVar var_A8
  loc_B15AD9: ImpAdCallI2 Format$(, )
  loc_B15ADE: FStStr var_310
  loc_B15AE1: LitStr "INSERT INTO acrepago (FeenAcpa,NumeAcpa,ActuAcpa,CodiEnre,FealAcpa,FepaAcpa,TocoAcpa,ImpoAcpa,ObseAcpa,CodiUsua) VALUES ('"
  loc_B15AE4: LitI4 1
  loc_B15AE9: LitI4 1
  loc_B15AEE: LitVarStr var_BC, "yyyy-mm-dd"
  loc_B15AF3: FStVarCopyObj var_CC
  loc_B15AF6: FLdRfVar var_CC
  loc_B15AF9: FLdRfVar var_94
  loc_B15AFC: ImpAdCallI2 Format$(, )
  loc_B15B01: FStStrNoPop var_D0
  loc_B15B04: ConcatStr
  loc_B15B05: FStStrNoPop var_D4
  loc_B15B08: LitStr "',"
  loc_B15B0B: ConcatStr
  loc_B15B0C: FStStrNoPop var_D8
  loc_B15B0F: FLdI2 FepaAcpa
  loc_B15B12: CStrUI1
  loc_B15B14: FStStrNoPop var_DC
  loc_B15B17: ConcatStr
  loc_B15B18: FStStrNoPop var_E0
  loc_B15B1B: LitStr ",'"
  loc_B15B1E: ConcatStr
  loc_B15B1F: FStStrNoPop var_E4
  loc_B15B22: ILdRf var_98
  loc_B15B25: ConcatStr
  loc_B15B26: FStStrNoPop var_E8
  loc_B15B29: LitStr "',"
  loc_B15B2C: ConcatStr
  loc_B15B2D: FStStrNoPop var_EC
  loc_B15B30: FLdI2 ImpoAcpa
  loc_B15B33: CStrUI1
  loc_B15B35: FStStrNoPop var_F0
  loc_B15B38: ConcatStr
  loc_B15B39: FStStrNoPop var_F4
  loc_B15B3C: LitStr ",'"
  loc_B15B3F: ConcatStr
  loc_B15B40: FStStrNoPop var_138
  loc_B15B43: LitI4 1
  loc_B15B48: LitI4 1
  loc_B15B4D: LitVarStr var_124, "yyyy-mm-dd"
  loc_B15B52: FStVarCopyObj var_134
  loc_B15B55: FLdRfVar var_134
  loc_B15B58: FLdFPR8 var_308
  loc_B15B5B: CVarDate var_114
  loc_B15B5F: ImpAdCallI2 Format$(, )
  loc_B15B64: FStStrNoPop var_13C
  loc_B15B67: ConcatStr
  loc_B15B68: FStStrNoPop var_140
  loc_B15B6B: LitStr "',"
  loc_B15B6E: ConcatStr
  loc_B15B6F: CVarStr var_1C8
  loc_B15B72: LitVarStr var_198, "Null"
  loc_B15B77: FStVarCopyObj var_1A8
  loc_B15B7A: FLdRfVar var_1A8
  loc_B15B7D: LitStr "'"
  loc_B15B80: FLdZeroAd var_310
  loc_B15B83: FStStrNoPop var_164
  loc_B15B86: ConcatStr
  loc_B15B87: FStStrNoPop var_168
  loc_B15B8A: LitStr "'"
  loc_B15B8D: ConcatStr
  loc_B15B8E: CVarStr var_188
  loc_B15B91: FLdI2 var_30A
  loc_B15B94: CVarBoolI2 var_178
  loc_B15B98: FLdRfVar var_1B8
  loc_B15B9B: ImpAdCallFPR4  = IIf(, , )
  loc_B15BA0: FLdRfVar var_1B8
  loc_B15BA3: ConcatVar var_1D8
  loc_B15BA7: LitVarStr var_1E8, ","
  loc_B15BAC: ConcatVar var_1F8
  loc_B15BB0: ILdRf arg_38
  loc_B15BB3: CVarI4
  loc_B15BB7: ConcatVar var_218
  loc_B15BBB: LitVarStr var_228, ","
  loc_B15BC0: ConcatVar var_238
  loc_B15BC4: LitI4 0
  loc_B15BC9: LitI4 -1
  loc_B15BCE: LitI4 1
  loc_B15BD3: LitStr "."
  loc_B15BD6: LitStr ","
  loc_B15BD9: FLdFPR8 arg_3C
  loc_B15BDC: CStrR8
  loc_B15BDE: FStStrNoPop var_23C
  loc_B15BE1: ImpAdCallI2 Replace(, , , , , )
  loc_B15BE6: CVarStr var_24C
  loc_B15BE9: ConcatVar var_25C
  loc_B15BED: LitVarStr var_26C, ",'"
  loc_B15BF2: ConcatVar var_27C
  loc_B15BF6: ILdRf var_AC
  loc_B15BF9: CVarStr var_28C
  loc_B15BFC: ConcatVar var_29C
  loc_B15C00: LitVarStr var_2AC, "','"
  loc_B15C05: ConcatVar var_2BC
  loc_B15C09: ImpAdLdI4 MemVar_D9302C
  loc_B15C0C: CVarStr var_2CC
  loc_B15C0F: ConcatVar var_2DC
  loc_B15C13: LitVarStr var_2EC, "')"
  loc_B15C18: ConcatVar var_2FC
  loc_B15C1C: CStrVarVal var_300
  loc_B15C20: Call EjecutarRs2(from_stack_1v)
  loc_B15C25: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_138 = "": var_13C = "": var_140 = "": var_164 = "": var_168 = "": var_23C = "": var_300 = ""
  loc_B15C4C: FFreeVar var_CC = "": var_114 = "": var_134 = "": var_160 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1B8 = "": var_1D8 = "": var_1F8 = "": var_218 = "": var_238 = "": var_24C = "": var_25C = "": var_27C = "": var_29C = "": var_2BC = "": var_2DC = ""
  loc_B15C77: ExitProcHresult
End Sub

Public Sub Modificar(FeenAcpa, NumeAcpa, CodiEnre, FepaAcpa, TocoAcpa, ImpoAcpa) 'AE518C
  'Data Table: 44DFCC
  loc_AE5060: FDupVar
  loc_AE5066: FDupVar
  loc_AE506C: FLdRfVar var_AC
  loc_AE506F: FLdI2 TocoAcpa
  loc_AE5072: FLdRfVar var_94
  loc_AE5075: CStrVarVal var_A8
  loc_AE5079: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_AE507E: ILdRf var_AC
  loc_AE5081: LitStr vbNullString
  loc_AE5084: EqStr
  loc_AE5086: FFreeStr var_A8 = ""
  loc_AE508D: BranchF loc_AE509B
  loc_AE5090: LitStr "La FECHA de ENVIO y el NUMERO de GRUPO NO EXISTE. Reintente..."
  loc_AE5093: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE5098: Branch loc_AE5189
  loc_AE509B: LitStr "UPDATE acrepago SET CodiEnre = "
  loc_AE509E: FLdI2 ImpoAcpa
  loc_AE50A1: CStrUI1
  loc_AE50A3: FStStrNoPop var_A8
  loc_AE50A6: ConcatStr
  loc_AE50A7: FStStrNoPop var_AC
  loc_AE50AA: LitStr ",FepaAcpa = '"
  loc_AE50AD: ConcatStr
  loc_AE50AE: FStStrNoPop var_D0
  loc_AE50B1: LitI4 1
  loc_AE50B6: LitI4 1
  loc_AE50BB: LitVarStr var_BC, "yyyy-mm-dd"
  loc_AE50C0: FStVarCopyObj var_CC
  loc_AE50C3: FLdRfVar var_CC
  loc_AE50C6: FLdRfVar var_A4
  loc_AE50C9: ImpAdCallI2 Format$(, )
  loc_AE50CE: FStStrNoPop var_D4
  loc_AE50D1: ConcatStr
  loc_AE50D2: FStStrNoPop var_D8
  loc_AE50D5: LitStr "',TocoAcpa = TocoAcpa + "
  loc_AE50D8: ConcatStr
  loc_AE50D9: FStStrNoPop var_DC
  loc_AE50DC: ILdRf arg_34
  loc_AE50DF: CStrI4
  loc_AE50E1: FStStrNoPop var_E0
  loc_AE50E4: ConcatStr
  loc_AE50E5: FStStrNoPop var_E4
  loc_AE50E8: LitStr ",ImpoAcpa = ImpoAcpa + "
  loc_AE50EB: ConcatStr
  loc_AE50EC: FStStrNoPop var_EC
  loc_AE50EF: LitI4 0
  loc_AE50F4: LitI4 -1
  loc_AE50F9: LitI4 1
  loc_AE50FE: LitStr "."
  loc_AE5101: LitStr ","
  loc_AE5104: FLdFPR8 arg_38
  loc_AE5107: CStrR8
  loc_AE5109: FStStrNoPop var_E8
  loc_AE510C: ImpAdCallI2 Replace(, , , , , )
  loc_AE5111: FStStrNoPop var_F0
  loc_AE5114: ConcatStr
  loc_AE5115: FStStrNoPop var_F4
  loc_AE5118: LitStr " WHERE FeenAcpa = '"
  loc_AE511B: ConcatStr
  loc_AE511C: FStStrNoPop var_118
  loc_AE511F: LitI4 1
  loc_AE5124: LitI4 1
  loc_AE5129: LitVarStr var_104, "yyyy-mm-dd"
  loc_AE512E: FStVarCopyObj var_114
  loc_AE5131: FLdRfVar var_114
  loc_AE5134: FLdRfVar var_A4
  loc_AE5137: ImpAdCallI2 Format$(, )
  loc_AE513C: FStStrNoPop var_11C
  loc_AE513F: ConcatStr
  loc_AE5140: FStStrNoPop var_120
  loc_AE5143: LitStr "' AND NumeAcpa = "
  loc_AE5146: ConcatStr
  loc_AE5147: FStStrNoPop var_124
  loc_AE514A: FLdI2 TocoAcpa
  loc_AE514D: CStrUI1
  loc_AE514F: FStStrNoPop var_128
  loc_AE5152: ConcatStr
  loc_AE5153: FStStrNoPop var_12C
  loc_AE5156: Call EjecutarRs2(from_stack_1v)
  loc_AE515B: FFreeStr var_A8 = "": var_AC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_AE5182: FFreeVar var_CC = ""
  loc_AE5189: ExitProcHresult
End Sub

Public Sub ModificarGlobal(FeenAcpa, NumeAcpa, CodiEnre, FepaAcpa, TocoAcpa, ImpoAcpa) 'AE5340
  'Data Table: 44DFCC
  loc_AE5214: FDupVar
  loc_AE521A: FDupVar
  loc_AE5220: FLdRfVar var_AC
  loc_AE5223: FLdI2 TocoAcpa
  loc_AE5226: FLdRfVar var_94
  loc_AE5229: CStrVarVal var_A8
  loc_AE522D: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_AE5232: ILdRf var_AC
  loc_AE5235: LitStr vbNullString
  loc_AE5238: EqStr
  loc_AE523A: FFreeStr var_A8 = ""
  loc_AE5241: BranchF loc_AE524F
  loc_AE5244: LitStr "La FECHA de ENVIO y el NUMERO de GRUPO NO EXISTE. Reintente..."
  loc_AE5247: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE524C: Branch loc_AE533D
  loc_AE524F: LitStr "UPDATE acrepago SET CodiEnre = "
  loc_AE5252: FLdI2 ImpoAcpa
  loc_AE5255: CStrUI1
  loc_AE5257: FStStrNoPop var_A8
  loc_AE525A: ConcatStr
  loc_AE525B: FStStrNoPop var_AC
  loc_AE525E: LitStr ",FepaAcpa = '"
  loc_AE5261: ConcatStr
  loc_AE5262: FStStrNoPop var_D0
  loc_AE5265: LitI4 1
  loc_AE526A: LitI4 1
  loc_AE526F: LitVarStr var_BC, "yyyy-mm-dd"
  loc_AE5274: FStVarCopyObj var_CC
  loc_AE5277: FLdRfVar var_CC
  loc_AE527A: FLdRfVar var_A4
  loc_AE527D: ImpAdCallI2 Format$(, )
  loc_AE5282: FStStrNoPop var_D4
  loc_AE5285: ConcatStr
  loc_AE5286: FStStrNoPop var_D8
  loc_AE5289: LitStr "',TocoAcpa = "
  loc_AE528C: ConcatStr
  loc_AE528D: FStStrNoPop var_DC
  loc_AE5290: ILdRf arg_34
  loc_AE5293: CStrI4
  loc_AE5295: FStStrNoPop var_E0
  loc_AE5298: ConcatStr
  loc_AE5299: FStStrNoPop var_E4
  loc_AE529C: LitStr ",ImpoAcpa = "
  loc_AE529F: ConcatStr
  loc_AE52A0: FStStrNoPop var_EC
  loc_AE52A3: LitI4 0
  loc_AE52A8: LitI4 -1
  loc_AE52AD: LitI4 1
  loc_AE52B2: LitStr "."
  loc_AE52B5: LitStr ","
  loc_AE52B8: FLdFPR8 arg_38
  loc_AE52BB: CStrR8
  loc_AE52BD: FStStrNoPop var_E8
  loc_AE52C0: ImpAdCallI2 Replace(, , , , , )
  loc_AE52C5: FStStrNoPop var_F0
  loc_AE52C8: ConcatStr
  loc_AE52C9: FStStrNoPop var_F4
  loc_AE52CC: LitStr " WHERE FeenAcpa = '"
  loc_AE52CF: ConcatStr
  loc_AE52D0: FStStrNoPop var_118
  loc_AE52D3: LitI4 1
  loc_AE52D8: LitI4 1
  loc_AE52DD: LitVarStr var_104, "yyyy-mm-dd"
  loc_AE52E2: FStVarCopyObj var_114
  loc_AE52E5: FLdRfVar var_114
  loc_AE52E8: FLdRfVar var_94
  loc_AE52EB: ImpAdCallI2 Format$(, )
  loc_AE52F0: FStStrNoPop var_11C
  loc_AE52F3: ConcatStr
  loc_AE52F4: FStStrNoPop var_120
  loc_AE52F7: LitStr "' AND NumeAcpa = "
  loc_AE52FA: ConcatStr
  loc_AE52FB: FStStrNoPop var_124
  loc_AE52FE: FLdI2 TocoAcpa
  loc_AE5301: CStrUI1
  loc_AE5303: FStStrNoPop var_128
  loc_AE5306: ConcatStr
  loc_AE5307: FStStrNoPop var_12C
  loc_AE530A: Call EjecutarRs2(from_stack_1v)
  loc_AE530F: FFreeStr var_A8 = "": var_AC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_AE5336: FFreeVar var_CC = ""
  loc_AE533D: ExitProcHresult
  loc_AE533E: FStFPR4 arg_5403
End Sub

Public Sub Delete() 'A21778
  'Data Table: 44DFCC
  loc_A21730: FLdRfVar var_8C
  loc_A21733: FLdRfVar var_88
  loc_A21736: FLdPr Me
  loc_A21739: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A2173E: FLdPr var_88
  loc_A21741:  = Me.RecordCount
  loc_A21746: ILdRf var_8C
  loc_A21749: LitI4 0
  loc_A2174E: GtI4
  loc_A2174F: FFree1Ad var_88
  loc_A21752: BranchF loc_A21775
  loc_A21755: LitI4 1
  loc_A2175A: FLdRfVar var_88
  loc_A2175D: FLdPr Me
  loc_A21760: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A21765: FLdPr var_88
  loc_A21768: Me.Delete
  loc_A2176D: FFree1Ad var_88
  loc_A21770: Call MoveNext()
  loc_A21775: ExitProcHresult
End Sub

Public Sub Requery() 'A00D94
  'Data Table: 44DFCC
  loc_A00D64: LitI4 -1
  loc_A00D69: FLdRfVar var_88
  loc_A00D6C: FLdPr Me
  loc_A00D6F: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A00D74: FLdPr var_88
  loc_A00D77: Me.Requery from_stack_1
  loc_A00D7C: FFree1Ad var_88
  loc_A00D7F: LitVarStr var_98, "Primary"
  loc_A00D84: PopAdLdVar
  loc_A00D85: FLdPr Me
  loc_A00D88: LateIdCall
  loc_A00D90: ExitProcHresult
  loc_A00D91: FLdPr var_7700
End Sub

Public Sub Update() 'A2167C
  'Data Table: 44DFCC
  loc_A21638: FLdRfVar var_88
  loc_A2163B: FLdPr Me
  loc_A2163E: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A21643: FLdZeroAd var_88
  loc_A21646: FStAdFunc var_8C
  loc_A21649: LitI4 3
  loc_A2164E: FLdPr var_8C
  loc_A21651: Me.UpdateBatch
  loc_A21656: FLdRfVar var_90
  loc_A21659: FLdPr var_8C
  loc_A2165C:  = Me.EditMode
  loc_A21661: ILdRf var_90
  loc_A21664: LitI4 2
  loc_A21669: EqI4
  loc_A2166A: BranchF loc_A21672
  loc_A2166D: Call MoveLast()
  loc_A21672: LitNothing
  loc_A21674: FStAd var_8C 
  loc_A21678: ExitProcHresult
  loc_A21679: BranchFVar
End Sub

Public Sub Cancel() 'A4AAA8
  'Data Table: 44DFCC
  loc_A4AA54: FLdRfVar var_88
  loc_A4AA57: FLdPr Me
  loc_A4AA5A: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A4AA5F: FLdZeroAd var_88
  loc_A4AA62: FStAdFunc var_8C
  loc_A4AA65: FLdRfVar var_90
  loc_A4AA68: FLdPr var_8C
  loc_A4AA6B:  = Me.RecordCount
  loc_A4AA70: ILdRf var_90
  loc_A4AA73: LitI4 0
  loc_A4AA78: GtI4
  loc_A4AA79: BranchF loc_A4AAA0
  loc_A4AA7C: FLdPr var_8C
  loc_A4AA7F: Me.CancelUpdate
  loc_A4AA84: FLdRfVar var_90
  loc_A4AA87: FLdPr var_8C
  loc_A4AA8A:  = Me.EditMode
  loc_A4AA8F: ILdRf var_90
  loc_A4AA92: LitI4 2
  loc_A4AA97: EqI4
  loc_A4AA98: BranchF loc_A4AAA0
  loc_A4AA9B: Call MoveFirst()
  loc_A4AAA0: LitNothing
  loc_A4AAA2: FStAd var_8C 
  loc_A4AAA6: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FD894
  'Data Table: 44DFCC
  loc_9FD868: FLdRfVar var_90
  loc_9FD86B: FLdRfVar var_8C
  loc_9FD86E: FLdPr Me
  loc_9FD871: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9FD876: FLdPr var_8C
  loc_9FD879:  = Me.EditMode
  loc_9FD87E: ILdRf var_90
  loc_9FD881: LitI4 0
  loc_9FD886: NeI4
  loc_9FD887: FStI2 var_86
  loc_9FD88A: FFree1Ad var_8C
  loc_9FD88D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A72398
  'Data Table: 44DFCC
  loc_A72324: ILdRf sSelect
  loc_A72327: FStStrCopy var_88
  loc_A7232A: LitNothing
  loc_A7232C: CastAd
  loc_A7232F: FStAdFuncNoPop
  loc_A72332: FLdPr Me
  loc_A72335: Call clsacrepago.global_4513620Set(from_stack_1v)
  loc_A7233A: FFree1Ad var_8C
  loc_A7233D: New Recordset
  loc_A72341: FStAdFuncNoPop
  loc_A72344: FLdPr Me
  loc_A72347: Call clsacrepago.global_4513620Set(from_stack_1v)
  loc_A7234C: FFree1Ad var_8C
  loc_A7234F: LitI4 -1
  loc_A72354: LitI4 3
  loc_A72359: LitI4 3
  loc_A7235E: ImpAdLdI4 MemVar_D9301C
  loc_A72361: CVarAd
  loc_A72365: PopAdLdVar
  loc_A72366: ILdRf var_88
  loc_A72369: CVarStr var_9C
  loc_A7236C: PopAdLdVar
  loc_A7236D: FLdRfVar var_8C
  loc_A72370: FLdPr Me
  loc_A72373: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A72378: FLdPr var_8C
  loc_A7237B: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A72380: FFree1Ad var_8C
  loc_A72383: LitVarStr var_9C, "Primary"
  loc_A72388: PopAdLdVar
  loc_A72389: FLdPr Me
  loc_A7238C: LateIdCall
  loc_A72394: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A5B920
  'Data Table: 44DFCC
  loc_A5B8C0: ILdRf sSelect
  loc_A5B8C3: FStStrCopy var_88
  loc_A5B8C6: LitNothing
  loc_A5B8C8: CastAd
  loc_A5B8CB: FStAdFuncNoPop
  loc_A5B8CE: FLdPr Me
  loc_A5B8D1: Call clsacrepago.global_4513620Set(from_stack_1v)
  loc_A5B8D6: FFree1Ad var_8C
  loc_A5B8D9: New Recordset
  loc_A5B8DD: FStAdFuncNoPop
  loc_A5B8E0: FLdPr Me
  loc_A5B8E3: Call clsacrepago.global_4513620Set(from_stack_1v)
  loc_A5B8E8: FFree1Ad var_8C
  loc_A5B8EB: LitI4 -1
  loc_A5B8F0: LitI4 3
  loc_A5B8F5: LitI4 3
  loc_A5B8FA: ImpAdLdI4 MemVar_D9301C
  loc_A5B8FD: CVarAd
  loc_A5B901: PopAdLdVar
  loc_A5B902: ILdRf var_88
  loc_A5B905: CVarStr var_9C
  loc_A5B908: PopAdLdVar
  loc_A5B909: FLdRfVar var_8C
  loc_A5B90C: FLdPr Me
  loc_A5B90F: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A5B914: FLdPr var_8C
  loc_A5B917: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5B91C: FFree1Ad var_8C
  loc_A5B91F: ExitProcHresult
End Sub

Public Sub Encontrar(FeenAcpa, NumeAcpa) 'A71ED8
  'Data Table: 44DFCC
  loc_A71E70: ILdRf FeenAcpa
  loc_A71E73: FStStrCopy var_88
  loc_A71E76: LitStr "FeenAcpa = '"
  loc_A71E79: LitI4 1
  loc_A71E7E: LitI4 1
  loc_A71E83: LitVarStr var_A8, "yyyy-mm-dd"
  loc_A71E88: FStVarCopyObj var_B8
  loc_A71E8B: FLdRfVar var_B8
  loc_A71E8E: FLdRfVar var_88
  loc_A71E91: CVarRef
  loc_A71E96: ImpAdCallI2 Format$(, )
  loc_A71E9B: FStStrNoPop var_BC
  loc_A71E9E: ConcatStr
  loc_A71E9F: FStStrNoPop var_C0
  loc_A71EA2: LitStr "'"
  loc_A71EA5: ConcatStr
  loc_A71EA6: PopTmpLdAdStr
  loc_A71EAA: Call Find(from_stack_1v)
  loc_A71EAF: FFreeStr var_BC = "": var_C0 = ""
  loc_A71EB8: FFree1Var var_B8 = ""
  loc_A71EBB: LitStr "NumeAcpa = "
  loc_A71EBE: FLdI2 NumeAcpa
  loc_A71EC1: CStrUI1
  loc_A71EC3: FStStrNoPop var_BC
  loc_A71EC6: ConcatStr
  loc_A71EC7: PopTmpLdAdStr
  loc_A71ECB: Call Find(from_stack_1v)
  loc_A71ED0: FFreeStr var_BC = ""
  loc_A71ED7: ExitProcHresult
End Sub

Public Property Get DataSource() 'A092B4
  'Data Table: 44DFCC
  loc_A09284: ZeroRetVal
  loc_A09286: FLdRfVar var_90
  loc_A09289: FLdRfVar var_8C
  loc_A0928C: FLdPr Me
  loc_A0928F: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A09294: FLdPr var_8C
  loc_A09297:  = Me.DataSource
  loc_A0929C: ILdRf var_90
  loc_A0929F: CastAd
  loc_A092A2: FStAdFunc var_88
  loc_A092A5: FFreeAd var_8C = ""
  loc_A092AC: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9F5A18
  'Data Table: 44DFCC
  loc_9F59F0: FLdRfVar var_90
  loc_9F59F3: FLdRfVar var_8C
  loc_9F59F6: FLdPr Me
  loc_9F59F9: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9F59FE: FLdPr var_8C
  loc_9F5A01:  = Me.EditMode
  loc_9F5A06: ILdRf var_90
  loc_9F5A09: FStR4 var_88
  loc_9F5A0C: FFree1Ad var_8C
  loc_9F5A0F: ExitProcCbHresult
  loc_9F5A15: FLdZeroAd var_8C
End Sub

Public Property Get FeenAcpa() 'A42B38
  'Data Table: 44DFCC
  loc_A42AF4: ZeroRetValVar
  loc_A42AF6: FLdRfVar var_B0
  loc_A42AF9: LitVarStr var_AC, "FeenAcpa"
  loc_A42AFE: PopAdLdVar
  loc_A42AFF: FLdRfVar var_9C
  loc_A42B02: FLdRfVar var_98
  loc_A42B05: FLdPr Me
  loc_A42B08: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A42B0D: FLdPr var_98
  loc_A42B10:  = Me.Fields
  loc_A42B15: FLdPr var_9C
  loc_A42B18: from_stack_2 = Me.Item(from_stack_1)
  loc_A42B1D: FLdZeroAd var_B0
  loc_A42B20: CVarAd
  loc_A42B24: FStVar FeenAcpa
  loc_A42B28: FFreeAd var_98 = ""
  loc_A42B2F: ExitProcCbHresult
End Sub

Public Property Let FeenAcpa(vDato) '9FD8F0
  'Data Table: 44DFCC
  loc_9FD8C8: FDupVar
  loc_9FD8CE: FLdVar var_94
  loc_9FD8D2: LitVarStr var_A8, "FeenAcpa"
  loc_9FD8D7: PopAdLdVar
  loc_9FD8D8: FLdRfVar var_98
  loc_9FD8DB: FLdPr Me
  loc_9FD8DE: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9FD8E3: FLdPr var_98
  loc_9FD8E6: Me.Collect = from_stack_1
  loc_9FD8EB: FFree1Ad var_98
  loc_9FD8EE: ExitProcHresult
End Sub

Public Property Get NumeAcpa() 'A4A988
  'Data Table: 44DFCC
  loc_A4A93C: FLdRfVar var_B4
  loc_A4A93F: FLdRfVar var_A4
  loc_A4A942: LitVarStr var_A0, "NumeAcpa"
  loc_A4A947: PopAdLdVar
  loc_A4A948: FLdRfVar var_90
  loc_A4A94B: FLdRfVar var_8C
  loc_A4A94E: FLdPr Me
  loc_A4A951: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A4A956: FLdPr var_8C
  loc_A4A959:  = Me.Fields
  loc_A4A95E: FLdPr var_90
  loc_A4A961: from_stack_2 = Me.Item(from_stack_1)
  loc_A4A966: FLdPr var_A4
  loc_A4A969:  = Me.Value
  loc_A4A96E: FLdRfVar var_B4
  loc_A4A971: CI2Var
  loc_A4A972: FStI2 var_86
  loc_A4A975: FFreeAd var_8C = "": var_90 = ""
  loc_A4A97E: FFree1Var var_B4 = ""
  loc_A4A981: ExitProcCbHresult
End Sub

Public Property Let NumeAcpa(vDato) '9EA020
  'Data Table: 44DFCC
  loc_9E9FFC: FLdI2 vDato
  loc_9E9FFF: CVarI2 var_A8
  loc_9EA002: PopAdLdVar
  loc_9EA003: LitVarStr var_98, "NumeAcpa"
  loc_9EA008: PopAdLdVar
  loc_9EA009: FLdRfVar var_88
  loc_9EA00C: FLdPr Me
  loc_9EA00F: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9EA014: FLdPr var_88
  loc_9EA017: Me.Collect = from_stack_1
  loc_9EA01C: FFree1Ad var_88
  loc_9EA01F: ExitProcHresult
End Sub

Public Property Get ActuAcpa() 'A56458
  'Data Table: 44DFCC
  loc_A56408: ZeroRetVal
  loc_A5640A: FLdRfVar var_B4
  loc_A5640D: FLdRfVar var_A4
  loc_A56410: LitVarStr var_A0, "ActuAcpa"
  loc_A56415: PopAdLdVar
  loc_A56416: FLdRfVar var_90
  loc_A56419: FLdRfVar var_8C
  loc_A5641C: FLdPr Me
  loc_A5641F: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A56424: FLdPr var_8C
  loc_A56427:  = Me.Fields
  loc_A5642C: FLdPr var_90
  loc_A5642F: from_stack_2 = Me.Item(from_stack_1)
  loc_A56434: FLdPr var_A4
  loc_A56437:  = Me.Value
  loc_A5643C: FLdRfVar var_B4
  loc_A5643F: CStrVarTmp
  loc_A56440: FStStr var_88
  loc_A56443: FFreeAd var_8C = "": var_90 = ""
  loc_A5644C: FFree1Var var_B4 = ""
  loc_A5644F: ExitProcCbHresult
End Sub

Public Property Let ActuAcpa(vDato) 'A01114
  'Data Table: 44DFCC
  loc_A010E8: ILdRf vDato
  loc_A010EB: FStStrCopy var_88
  loc_A010EE: ILdRf var_88
  loc_A010F1: CVarStr var_AC
  loc_A010F4: PopAdLdVar
  loc_A010F5: LitVarStr var_9C, "ActuAcpa"
  loc_A010FA: PopAdLdVar
  loc_A010FB: FLdRfVar var_8C
  loc_A010FE: FLdPr Me
  loc_A01101: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A01106: FLdPr var_8C
  loc_A01109: Me.Collect = from_stack_1
  loc_A0110E: FFree1Ad var_8C
  loc_A01111: ExitProcHresult
End Sub

Public Property Get ContAcpa() 'A56580
  'Data Table: 44DFCC
  loc_A56530: ZeroRetVal
  loc_A56532: FLdRfVar var_B4
  loc_A56535: FLdRfVar var_A4
  loc_A56538: LitVarStr var_A0, "ContAcpa"
  loc_A5653D: PopAdLdVar
  loc_A5653E: FLdRfVar var_90
  loc_A56541: FLdRfVar var_8C
  loc_A56544: FLdPr Me
  loc_A56547: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A5654C: FLdPr var_8C
  loc_A5654F:  = Me.Fields
  loc_A56554: FLdPr var_90
  loc_A56557: from_stack_2 = Me.Item(from_stack_1)
  loc_A5655C: FLdPr var_A4
  loc_A5655F:  = Me.Value
  loc_A56564: FLdRfVar var_B4
  loc_A56567: CStrVarTmp
  loc_A56568: FStStr var_88
  loc_A5656B: FFreeAd var_8C = "": var_90 = ""
  loc_A56574: FFree1Var var_B4 = ""
  loc_A56577: ExitProcCbHresult
End Sub

Public Property Let ContAcpa(vDato) 'A01178
  'Data Table: 44DFCC
  loc_A0114C: ILdRf vDato
  loc_A0114F: FStStrCopy var_88
  loc_A01152: ILdRf var_88
  loc_A01155: CVarStr var_AC
  loc_A01158: PopAdLdVar
  loc_A01159: LitVarStr var_9C, "ContAcpa"
  loc_A0115E: PopAdLdVar
  loc_A0115F: FLdRfVar var_8C
  loc_A01162: FLdPr Me
  loc_A01165: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A0116A: FLdPr var_8C
  loc_A0116D: Me.Collect = from_stack_1
  loc_A01172: FFree1Ad var_8C
  loc_A01175: ExitProcHresult
End Sub

Public Property Get CodiEnre() 'A4A8FC
  'Data Table: 44DFCC
  loc_A4A8B0: FLdRfVar var_B4
  loc_A4A8B3: FLdRfVar var_A4
  loc_A4A8B6: LitVarStr var_A0, "CodiEnre"
  loc_A4A8BB: PopAdLdVar
  loc_A4A8BC: FLdRfVar var_90
  loc_A4A8BF: FLdRfVar var_8C
  loc_A4A8C2: FLdPr Me
  loc_A4A8C5: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A4A8CA: FLdPr var_8C
  loc_A4A8CD:  = Me.Fields
  loc_A4A8D2: FLdPr var_90
  loc_A4A8D5: from_stack_2 = Me.Item(from_stack_1)
  loc_A4A8DA: FLdPr var_A4
  loc_A4A8DD:  = Me.Value
  loc_A4A8E2: FLdRfVar var_B4
  loc_A4A8E5: CI2Var
  loc_A4A8E6: FStI2 var_86
  loc_A4A8E9: FFreeAd var_8C = "": var_90 = ""
  loc_A4A8F2: FFree1Var var_B4 = ""
  loc_A4A8F5: ExitProcCbHresult
End Sub

Public Property Let CodiEnre(vDato) '9E9F18
  'Data Table: 44DFCC
  loc_9E9EF4: FLdI2 vDato
  loc_9E9EF7: CVarI2 var_A8
  loc_9E9EFA: PopAdLdVar
  loc_9E9EFB: LitVarStr var_98, "CodiEnre"
  loc_9E9F00: PopAdLdVar
  loc_9E9F01: FLdRfVar var_88
  loc_9E9F04: FLdPr Me
  loc_9E9F07: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9E9F0C: FLdPr var_88
  loc_9E9F0F: Me.Collect = from_stack_1
  loc_9E9F14: FFree1Ad var_88
  loc_9E9F17: ExitProcHresult
End Sub

Public Property Get FealAcpa() 'A41CE0
  'Data Table: 44DFCC
  loc_A41C9C: ZeroRetValVar
  loc_A41C9E: FLdRfVar var_B0
  loc_A41CA1: LitVarStr var_AC, "FealAcpa"
  loc_A41CA6: PopAdLdVar
  loc_A41CA7: FLdRfVar var_9C
  loc_A41CAA: FLdRfVar var_98
  loc_A41CAD: FLdPr Me
  loc_A41CB0: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A41CB5: FLdPr var_98
  loc_A41CB8:  = Me.Fields
  loc_A41CBD: FLdPr var_9C
  loc_A41CC0: from_stack_2 = Me.Item(from_stack_1)
  loc_A41CC5: FLdZeroAd var_B0
  loc_A41CC8: CVarAd
  loc_A41CCC: FStVar FealAcpa
  loc_A41CD0: FFreeAd var_98 = ""
  loc_A41CD7: ExitProcCbHresult
  loc_A41CDF: LitI2_Byte &H54
End Sub

Public Property Let FealAcpa(vDato) '9FD770
  'Data Table: 44DFCC
  loc_9FD748: FDupVar
  loc_9FD74E: FLdVar var_94
  loc_9FD752: LitVarStr var_A8, "FealAcpa"
  loc_9FD757: PopAdLdVar
  loc_9FD758: FLdRfVar var_98
  loc_9FD75B: FLdPr Me
  loc_9FD75E: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9FD763: FLdPr var_98
  loc_9FD766: Me.Collect = from_stack_1
  loc_9FD76B: FFree1Ad var_98
  loc_9FD76E: ExitProcHresult
End Sub

Public Property Get FeacAcpa() 'A41D68
  'Data Table: 44DFCC
  loc_A41D24: ZeroRetValVar
  loc_A41D26: FLdRfVar var_B0
  loc_A41D29: LitVarStr var_AC, "FeacAcpa"
  loc_A41D2E: PopAdLdVar
  loc_A41D2F: FLdRfVar var_9C
  loc_A41D32: FLdRfVar var_98
  loc_A41D35: FLdPr Me
  loc_A41D38: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A41D3D: FLdPr var_98
  loc_A41D40:  = Me.Fields
  loc_A41D45: FLdPr var_9C
  loc_A41D48: from_stack_2 = Me.Item(from_stack_1)
  loc_A41D4D: FLdZeroAd var_B0
  loc_A41D50: CVarAd
  loc_A41D54: FStVar FeacAcpa
  loc_A41D58: FFreeAd var_98 = ""
  loc_A41D5F: ExitProcCbHresult
End Sub

Public Property Let FeacAcpa(vDato) '9FD830
  'Data Table: 44DFCC
  loc_9FD808: FDupVar
  loc_9FD80E: FLdVar var_94
  loc_9FD812: LitVarStr var_A8, "FeacAcpa"
  loc_9FD817: PopAdLdVar
  loc_9FD818: FLdRfVar var_98
  loc_9FD81B: FLdPr Me
  loc_9FD81E: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9FD823: FLdPr var_98
  loc_9FD826: Me.Collect = from_stack_1
  loc_9FD82B: FFree1Ad var_98
  loc_9FD82E: ExitProcHresult
End Sub

Public Property Get FepaAcpa() 'A42BC0
  'Data Table: 44DFCC
  loc_A42B7C: ZeroRetValVar
  loc_A42B7E: FLdRfVar var_B0
  loc_A42B81: LitVarStr var_AC, "FepaAcpa"
  loc_A42B86: PopAdLdVar
  loc_A42B87: FLdRfVar var_9C
  loc_A42B8A: FLdRfVar var_98
  loc_A42B8D: FLdPr Me
  loc_A42B90: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A42B95: FLdPr var_98
  loc_A42B98:  = Me.Fields
  loc_A42B9D: FLdPr var_9C
  loc_A42BA0: from_stack_2 = Me.Item(from_stack_1)
  loc_A42BA5: FLdZeroAd var_B0
  loc_A42BA8: CVarAd
  loc_A42BAC: FStVar FepaAcpa
  loc_A42BB0: FFreeAd var_98 = ""
  loc_A42BB7: ExitProcCbHresult
End Sub

Public Property Let FepaAcpa(vDato) '9FD7D0
  'Data Table: 44DFCC
  loc_9FD7A8: FDupVar
  loc_9FD7AE: FLdVar var_94
  loc_9FD7B2: LitVarStr var_A8, "FepaAcpa"
  loc_9FD7B7: PopAdLdVar
  loc_9FD7B8: FLdRfVar var_98
  loc_9FD7BB: FLdPr Me
  loc_9FD7BE: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9FD7C3: FLdPr var_98
  loc_9FD7C6: Me.Collect = from_stack_1
  loc_9FD7CB: FFree1Ad var_98
  loc_9FD7CE: ExitProcHresult
End Sub

Public Property Get TocoAcpa() 'A4A6CC
  'Data Table: 44DFCC
  loc_A4A680: FLdRfVar var_B4
  loc_A4A683: FLdRfVar var_A4
  loc_A4A686: LitVarStr var_A0, "TocoAcpa"
  loc_A4A68B: PopAdLdVar
  loc_A4A68C: FLdRfVar var_90
  loc_A4A68F: FLdRfVar var_8C
  loc_A4A692: FLdPr Me
  loc_A4A695: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A4A69A: FLdPr var_8C
  loc_A4A69D:  = Me.Fields
  loc_A4A6A2: FLdPr var_90
  loc_A4A6A5: from_stack_2 = Me.Item(from_stack_1)
  loc_A4A6AA: FLdPr var_A4
  loc_A4A6AD:  = Me.Value
  loc_A4A6B2: FLdRfVar var_B4
  loc_A4A6B5: CI4Var
  loc_A4A6B7: FStR4 var_88
  loc_A4A6BA: FFreeAd var_8C = "": var_90 = ""
  loc_A4A6C3: FFree1Var var_B4 = ""
  loc_A4A6C6: ExitProcCbHresult
End Sub

Public Property Let TocoAcpa(vDato) '9F5C40
  'Data Table: 44DFCC
  loc_9F5C18: ILdRf vDato
  loc_9F5C1B: CVarI4
  loc_9F5C1F: PopAdLdVar
  loc_9F5C20: LitVarStr var_98, "TocoAcpa"
  loc_9F5C25: PopAdLdVar
  loc_9F5C26: FLdRfVar var_88
  loc_9F5C29: FLdPr Me
  loc_9F5C2C: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9F5C31: FLdPr var_88
  loc_9F5C34: Me.Collect = from_stack_1
  loc_9F5C39: FFree1Ad var_88
  loc_9F5C3C: ExitProcHresult
  loc_9F5C3D: VCallAd Control_ID_
End Sub

Public Property Get ImpoAcpa() 'A4A5B4
  'Data Table: 44DFCC
  loc_A4A568: FLdRfVar var_B8
  loc_A4A56B: FLdRfVar var_A8
  loc_A4A56E: LitVarStr var_A4, "ImpoAcpa"
  loc_A4A573: PopAdLdVar
  loc_A4A574: FLdRfVar ImpoAcpa
  loc_A4A577: FLdRfVar var_90
  loc_A4A57A: FLdPr Me
  loc_A4A57D: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A4A582: FLdPr var_90
  loc_A4A585:  = Me.Fields
  loc_A4A58A: FLdPr ImpoAcpa
  loc_A4A58D: from_stack_2 = Me.Item(from_stack_1)
  loc_A4A592: FLdPr var_A8
  loc_A4A595:  = Me.Value
  loc_A4A59A: FLdRfVar var_B8
  loc_A4A59D: CR4Var
  loc_A4A59E: FStFPR8 var_8C
  loc_A4A5A1: FFreeAd var_90 = "": ImpoAcpa = ""
  loc_A4A5AA: FFree1Var var_B8 = ""
  loc_A4A5AD: ExitProcCbHresult
End Sub

Public Property Let ImpoAcpa(vDato) '9F5D54
  'Data Table: 44DFCC
  loc_9F5D2C: FLdFPR8 vDato
  loc_9F5D2F: CVarR8
  loc_9F5D33: PopAdLdVar
  loc_9F5D34: LitVarStr var_98, "ImpoAcpa"
  loc_9F5D39: PopAdLdVar
  loc_9F5D3A: FLdRfVar var_88
  loc_9F5D3D: FLdPr Me
  loc_9F5D40: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9F5D45: FLdPr var_88
  loc_9F5D48: Me.Collect = from_stack_1
  loc_9F5D4D: FFree1Ad var_88
  loc_9F5D50: ExitProcHresult
End Sub

Public Property Get ObseAcapa() 'A58958
  'Data Table: 44DFCC
  loc_A58908: ZeroRetVal
  loc_A5890A: FLdRfVar var_B4
  loc_A5890D: FLdRfVar var_A4
  loc_A58910: LitVarStr var_A0, "ObseAcapa"
  loc_A58915: PopAdLdVar
  loc_A58916: FLdRfVar var_90
  loc_A58919: FLdRfVar var_8C
  loc_A5891C: FLdPr Me
  loc_A5891F: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A58924: FLdPr var_8C
  loc_A58927:  = Me.Fields
  loc_A5892C: FLdPr var_90
  loc_A5892F: from_stack_2 = Me.Item(from_stack_1)
  loc_A58934: FLdPr var_A4
  loc_A58937:  = Me.Value
  loc_A5893C: FLdRfVar var_B4
  loc_A5893F: CStrVarTmp
  loc_A58940: FStStr var_88
  loc_A58943: FFreeAd var_8C = "": var_90 = ""
  loc_A5894C: FFree1Var var_B4 = ""
  loc_A5894F: ExitProcCbHresult
  loc_A58955: StAryRecCopy
End Sub

Public Property Let ObseAcapa(vDato) 'A013D0
  'Data Table: 44DFCC
  loc_A013A4: ILdRf vDato
  loc_A013A7: FStStrCopy var_88
  loc_A013AA: ILdRf var_88
  loc_A013AD: CVarStr var_AC
  loc_A013B0: PopAdLdVar
  loc_A013B1: LitVarStr var_9C, "ObseAcapa"
  loc_A013B6: PopAdLdVar
  loc_A013B7: FLdRfVar var_8C
  loc_A013BA: FLdPr Me
  loc_A013BD: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A013C2: FLdPr var_8C
  loc_A013C5: Me.Collect = from_stack_1
  loc_A013CA: FFree1Ad var_8C
  loc_A013CD: ExitProcHresult
End Sub

Public Property Get CodiUsua() 'A58674
  'Data Table: 44DFCC
  loc_A58624: ZeroRetVal
  loc_A58626: FLdRfVar var_B4
  loc_A58629: FLdRfVar var_A4
  loc_A5862C: LitVarStr var_A0, "CodiUsua"
  loc_A58631: PopAdLdVar
  loc_A58632: FLdRfVar var_90
  loc_A58635: FLdRfVar var_8C
  loc_A58638: FLdPr Me
  loc_A5863B: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A58640: FLdPr var_8C
  loc_A58643:  = Me.Fields
  loc_A58648: FLdPr var_90
  loc_A5864B: from_stack_2 = Me.Item(from_stack_1)
  loc_A58650: FLdPr var_A4
  loc_A58653:  = Me.Value
  loc_A58658: FLdRfVar var_B4
  loc_A5865B: CStrVarTmp
  loc_A5865C: FStStr var_88
  loc_A5865F: FFreeAd var_8C = "": var_90 = ""
  loc_A58668: FFree1Var var_B4 = ""
  loc_A5866B: ExitProcCbHresult
  loc_A58671: FStAdFunc var_A8
End Sub

Public Property Let CodiUsua(vDato) 'A01434
  'Data Table: 44DFCC
  loc_A01408: ILdRf vDato
  loc_A0140B: FStStrCopy var_88
  loc_A0140E: ILdRf var_88
  loc_A01411: CVarStr var_AC
  loc_A01414: PopAdLdVar
  loc_A01415: LitVarStr var_9C, "CodiUsua"
  loc_A0141A: PopAdLdVar
  loc_A0141B: FLdRfVar var_8C
  loc_A0141E: FLdPr Me
  loc_A01421: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A01426: FLdPr var_8C
  loc_A01429: Me.Collect = from_stack_1
  loc_A0142E: FFree1Ad var_8C
  loc_A01431: ExitProcHresult
End Sub

Public Property Get VeriAcpa() 'A596A4
  'Data Table: 44DFCC
  loc_A59654: ZeroRetVal
  loc_A59656: FLdRfVar var_B4
  loc_A59659: FLdRfVar var_A4
  loc_A5965C: LitVarStr var_A0, "VeriAcpa"
  loc_A59661: PopAdLdVar
  loc_A59662: FLdRfVar var_90
  loc_A59665: FLdRfVar var_8C
  loc_A59668: FLdPr Me
  loc_A5966B: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A59670: FLdPr var_8C
  loc_A59673:  = Me.Fields
  loc_A59678: FLdPr var_90
  loc_A5967B: from_stack_2 = Me.Item(from_stack_1)
  loc_A59680: FLdPr var_A4
  loc_A59683:  = Me.Value
  loc_A59688: FLdRfVar var_B4
  loc_A5968B: CStrVarTmp
  loc_A5968C: FStStr var_88
  loc_A5968F: FFreeAd var_8C = "": var_90 = ""
  loc_A59698: FFree1Var var_B4 = ""
  loc_A5969B: ExitProcCbHresult
End Sub

Public Property Let VeriAcpa(vDato) 'A014FC
  'Data Table: 44DFCC
  loc_A014D0: ILdRf vDato
  loc_A014D3: FStStrCopy var_88
  loc_A014D6: ILdRf var_88
  loc_A014D9: CVarStr var_AC
  loc_A014DC: PopAdLdVar
  loc_A014DD: LitVarStr var_9C, "VeriAcpa"
  loc_A014E2: PopAdLdVar
  loc_A014E3: FLdRfVar var_8C
  loc_A014E6: FLdPr Me
  loc_A014E9: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A014EE: FLdPr var_8C
  loc_A014F1: Me.Collect = from_stack_1
  loc_A014F6: FFree1Ad var_8C
  loc_A014F9: ExitProcHresult
End Sub

Public Property Get DetaEnre() 'A42CD0
  'Data Table: 44DFCC
  loc_A42C8C: ZeroRetValVar
  loc_A42C8E: FLdRfVar var_B0
  loc_A42C91: LitVarStr var_AC, "DetaEnre"
  loc_A42C96: PopAdLdVar
  loc_A42C97: FLdRfVar var_9C
  loc_A42C9A: FLdRfVar var_98
  loc_A42C9D: FLdPr Me
  loc_A42CA0: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A42CA5: FLdPr var_98
  loc_A42CA8:  = Me.Fields
  loc_A42CAD: FLdPr var_9C
  loc_A42CB0: from_stack_2 = Me.Item(from_stack_1)
  loc_A42CB5: FLdZeroAd var_B0
  loc_A42CB8: CVarAd
  loc_A42CBC: FStVar DetaEnre
  loc_A42CC0: FFreeAd var_98 = ""
  loc_A42CC7: ExitProcCbHresult
  loc_A42CCD: EqI2
End Sub

Public Function ValidaClave(FeenAcpa, NumeAcpa) 'A91FDC
  'Data Table: 44DFCC
  loc_A91F4C: ILdRf FeenAcpa
  loc_A91F4F: FStStrCopy var_8C
  loc_A91F52: ZeroRetVal
  loc_A91F54: LitStr "SELECT FeenAcpa FROM acrepago WHERE FeenAcpa = '"
  loc_A91F57: LitI4 1
  loc_A91F5C: LitI4 1
  loc_A91F61: LitVarStr var_AC, "yyyy-mm-dd"
  loc_A91F66: FStVarCopyObj var_BC
  loc_A91F69: FLdRfVar var_BC
  loc_A91F6C: FLdRfVar var_8C
  loc_A91F6F: CVarRef
  loc_A91F74: ImpAdCallI2 Format$(, )
  loc_A91F79: FStStrNoPop var_C0
  loc_A91F7C: ConcatStr
  loc_A91F7D: FStStrNoPop var_C4
  loc_A91F80: LitStr "' AND NumeAcpa = "
  loc_A91F83: ConcatStr
  loc_A91F84: FStStrNoPop var_C8
  loc_A91F87: FLdI2 NumeAcpa
  loc_A91F8A: CStrUI1
  loc_A91F8C: FStStrNoPop var_CC
  loc_A91F8F: ConcatStr
  loc_A91F90: FStStrNoPop var_D0
  loc_A91F93: Call EjecutarRs2(from_stack_1v)
  loc_A91F98: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A91FA5: FFree1Var var_BC = ""
  loc_A91FA8: FLdRfVar var_D8
  loc_A91FAB: FLdRfVar var_D4
  loc_A91FAE: FLdPr Me
  loc_A91FB1: from_stack_1v = clsacrepago.global_4513620Get()
  loc_A91FB6: FLdPr var_D4
  loc_A91FB9:  = Me.RecordCount
  loc_A91FBE: ILdRf var_D8
  loc_A91FC1: LitI4 0
  loc_A91FC6: GtI4
  loc_A91FC7: FFree1Ad var_D4
  loc_A91FCA: BranchF loc_A91FD3
  loc_A91FCD: LitStr "La FECHA DE ENVIO y NUMERO DE GRUPO ingresados ya existen. Verifique ..."
  loc_A91FD0: FStStrCopy var_88
  loc_A91FD3: ExitProcCbHresult
End Function

Public Function ValidaFeenAcpa(sFeenAcpa) 'A28B28
  'Data Table: 44DFCC
  loc_A28AE0: ILdRf sFeenAcpa
  loc_A28AE3: FStStrCopy var_8C
  loc_A28AE6: ZeroRetVal
  loc_A28AE8: ILdRf var_8C
  loc_A28AEB: ImpAdCallI2 Proc_18_6_A08898()
  loc_A28AF0: FStStr var_88
  loc_A28AF3: ILdRf var_88
  loc_A28AF6: LitStr vbNullString
  loc_A28AF9: NeStr
  loc_A28AFB: BranchF loc_A28B04
  loc_A28AFE: ExitProcCbHresult
  loc_A28B04: LitI2_Byte 0
  loc_A28B06: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A28B0B: FStFPR8 ValidaFeenAcpa
  loc_A28B0E: ILdRf var_8C
  loc_A28B11: CDateStr
  loc_A28B13: FLdFPR8 ValidaFeenAcpa
  loc_A28B16: GtR4
  loc_A28B17: BranchF loc_A28B20
  loc_A28B1A: LitStr "La FECHA no puede ser mayor al dia de hoy. Reintente..."
  loc_A28B1D: FStStrCopy var_88
  loc_A28B20: ExitProcCbHresult
End Function

Public Sub ActualizaAcrePago(FeenAcpa, NumeAcpa, ActuAcpa, FeacAcpa) 'ADAA28
  'Data Table: 44DFCC
  loc_ADA920: ILdRf FeenAcpa
  loc_ADA923: FStStrCopy var_88
  loc_ADA926: ILdRf ActuAcpa
  loc_ADA929: FStStrCopy var_8C
  loc_ADA92C: ILdRf FeacAcpa
  loc_ADA92F: FStStrCopy var_90
  loc_ADA932: FLdRfVar var_90
  loc_ADA935: CVarRef
  loc_ADA93A: ImpAdCallI2 IsDate()
  loc_ADA93F: FStI2 var_202
  loc_ADA942: LitI4 1
  loc_ADA947: LitI4 1
  loc_ADA94C: LitVarStr var_C4, "yyyy-mm-dd"
  loc_ADA951: FStVarCopyObj var_D4
  loc_ADA954: FLdRfVar var_D4
  loc_ADA957: FLdRfVar var_90
  loc_ADA95A: CVarRef
  loc_ADA95F: ImpAdCallI2 Format$(, )
  loc_ADA964: FStStr var_208
  loc_ADA967: LitStr "UPDATE acrepago SET ActuAcpa = '"
  loc_ADA96A: ILdRf var_8C
  loc_ADA96D: ConcatStr
  loc_ADA96E: FStStrNoPop var_94
  loc_ADA971: LitStr "', FeacAcpa = "
  loc_ADA974: ConcatStr
  loc_ADA975: CVarStr var_13C
  loc_ADA978: LitVarStr var_10C, "Null"
  loc_ADA97D: FStVarCopyObj var_11C
  loc_ADA980: FLdRfVar var_11C
  loc_ADA983: LitStr "'"
  loc_ADA986: FLdZeroAd var_208
  loc_ADA989: FStStrNoPop var_D8
  loc_ADA98C: ConcatStr
  loc_ADA98D: FStStrNoPop var_DC
  loc_ADA990: LitStr "'"
  loc_ADA993: ConcatStr
  loc_ADA994: CVarStr var_FC
  loc_ADA997: FLdI2 var_202
  loc_ADA99A: CVarBoolI2 var_EC
  loc_ADA99E: FLdRfVar var_12C
  loc_ADA9A1: ImpAdCallFPR4  = IIf(, , )
  loc_ADA9A6: FLdRfVar var_12C
  loc_ADA9A9: ConcatVar var_14C
  loc_ADA9AD: LitVarStr var_15C, " WHERE FeenAcpa = '"
  loc_ADA9B2: ConcatVar var_16C
  loc_ADA9B6: LitI4 1
  loc_ADA9BB: LitI4 1
  loc_ADA9C0: LitVarStr var_18C, "yyyy-mm-dd"
  loc_ADA9C5: FStVarCopyObj var_19C
  loc_ADA9C8: FLdRfVar var_19C
  loc_ADA9CB: FLdRfVar var_88
  loc_ADA9CE: CVarRef
  loc_ADA9D3: ImpAdCallI2 Format$(, )
  loc_ADA9D8: CVarStr var_1AC
  loc_ADA9DB: ConcatVar var_1BC
  loc_ADA9DF: LitVarStr var_1CC, "' AND NumeAcpa = "
  loc_ADA9E4: ConcatVar var_1DC
  loc_ADA9E8: FLdI2 NumeAcpa
  loc_ADA9EB: CVarI2 var_1EC
  loc_ADA9EE: ConcatVar var_1FC
  loc_ADA9F2: CStrVarVal var_200
  loc_ADA9F6: Call EjecutarRs2(from_stack_1v)
  loc_ADA9FB: FFreeStr var_94 = "": var_D8 = "": var_DC = "": var_200 = ""
  loc_ADAA08: FFreeVar var_D4 = "": var_EC = "": var_FC = "": var_11C = "": var_13C = "": var_12C = "": var_14C = "": var_19C = "": var_16C = "": var_1AC = "": var_1BC = "": var_1DC = ""
  loc_ADAA25: ExitProcHresult
  loc_ADAA26: LitStr "StrFormMemory_0"
End Sub

Public Sub ActualizaVerificaciondePago(FeenAcpa, NumeAcpa) 'A801E8
  'Data Table: 44DFCC
  loc_A80178: ILdRf FeenAcpa
  loc_A8017B: FStStrCopy var_88
  loc_A8017E: LitStr "UPDATE acrepago SET VeriAcpa = 1, FeveAcpa = now(), UsveAcpa = '"
  loc_A80181: ImpAdLdI4 MemVar_D9302C
  loc_A80184: ConcatStr
  loc_A80185: FStStrNoPop var_8C
  loc_A80188: LitStr "' WHERE FeenAcpa = '"
  loc_A8018B: ConcatStr
  loc_A8018C: FStStrNoPop var_C0
  loc_A8018F: LitI4 1
  loc_A80194: LitI4 1
  loc_A80199: LitVarStr var_AC, "yyyy-mm-dd"
  loc_A8019E: FStVarCopyObj var_BC
  loc_A801A1: FLdRfVar var_BC
  loc_A801A4: FLdRfVar var_88
  loc_A801A7: CVarRef
  loc_A801AC: ImpAdCallI2 Format$(, )
  loc_A801B1: FStStrNoPop var_C4
  loc_A801B4: ConcatStr
  loc_A801B5: FStStrNoPop var_C8
  loc_A801B8: LitStr "' AND NumeAcpa = "
  loc_A801BB: ConcatStr
  loc_A801BC: FStStrNoPop var_CC
  loc_A801BF: FLdI2 NumeAcpa
  loc_A801C2: CStrUI1
  loc_A801C4: FStStrNoPop var_D0
  loc_A801C7: ConcatStr
  loc_A801C8: FStStrNoPop var_D4
  loc_A801CB: Call EjecutarRs2(from_stack_1v)
  loc_A801D0: FFreeStr var_8C = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_A801E1: FFree1Var var_BC = ""
  loc_A801E4: ExitProcHresult
  loc_A801E5: NewIfNullPr Me
End Sub

Public Sub BooraIngresoRentas(FeenAcpa) 'A8CC54
  'Data Table: 44DFCC
  loc_A8CBCC: ILdRf FeenAcpa
  loc_A8CBCF: FStStrCopy var_88
  loc_A8CBD2: LitStr "DELETE FROM ingrrent WHERE FechInre = "
  loc_A8CBD5: LitI4 1
  loc_A8CBDA: LitI4 1
  loc_A8CBDF: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_A8CBE4: FStVarCopyObj var_B8
  loc_A8CBE7: FLdRfVar var_B8
  loc_A8CBEA: FLdRfVar var_88
  loc_A8CBED: CVarRef
  loc_A8CBF2: ImpAdCallI2 Format$(, )
  loc_A8CBF7: FStStrNoPop var_BC
  loc_A8CBFA: ConcatStr
  loc_A8CBFB: FStStrNoPop var_C0
  loc_A8CBFE: LitStr "; "
  loc_A8CC01: ConcatStr
  loc_A8CC02: FStStrNoPop var_C4
  loc_A8CC05: LitStr "DELETE FROM detainre WHERE FechInre = "
  loc_A8CC08: ConcatStr
  loc_A8CC09: FStStrNoPop var_F8
  loc_A8CC0C: LitI4 1
  loc_A8CC11: LitI4 1
  loc_A8CC16: LitVarStr var_E4, "'yyyy-mm-dd'"
  loc_A8CC1B: FStVarCopyObj var_F4
  loc_A8CC1E: FLdRfVar var_F4
  loc_A8CC21: FLdRfVar var_88
  loc_A8CC24: CVarRef
  loc_A8CC29: ImpAdCallI2 Format$(, )
  loc_A8CC2E: FStStrNoPop var_FC
  loc_A8CC31: ConcatStr
  loc_A8CC32: FStStrNoPop var_100
  loc_A8CC35: Call EjecutarRs2(from_stack_1v)
  loc_A8CC3A: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_F8 = "": var_FC = ""
  loc_A8CC49: FFreeVar var_B8 = ""
  loc_A8CC50: ExitProcHresult
  loc_A8CC53: CStr2Ansi
End Sub

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E65A4
  'Data Table: 44DFCC
  loc_9E6588: ILdRf pError
  loc_9E658B: FStAd var_88 
  loc_9E658F: ILdRf pRecordset
  loc_9E6592: FStAd var_8C 
  loc_9E6596: FLdPr Me
  loc_9E6599: RaiseEvent
  loc_9E65A1: ExitProcHresult
  loc_9E65A2: FStR4 arg_5403
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9C024
  'Data Table: 44DFCC
  loc_A9BF64: ILdRf pRecordset
  loc_A9BF67: FStAd var_88 
  loc_A9BF6B: ILdRf adReason
  loc_A9BF6E: FStR4 var_90
  loc_A9BF71: ILdRf var_90
  loc_A9BF74: LitI4 1
  loc_A9BF79: EqI4
  loc_A9BF7A: BranchF loc_A9BF80
  loc_A9BF7D: Branch loc_A9C013
  loc_A9BF80: ILdRf var_90
  loc_A9BF83: LitI4 9
  loc_A9BF88: EqI4
  loc_A9BF89: BranchF loc_A9BF8F
  loc_A9BF8C: Branch loc_A9C013
  loc_A9BF8F: ILdRf var_90
  loc_A9BF92: LitI4 2
  loc_A9BF97: EqI4
  loc_A9BF98: BranchF loc_A9BF9E
  loc_A9BF9B: Branch loc_A9C013
  loc_A9BF9E: ILdRf var_90
  loc_A9BFA1: LitI4 &HB
  loc_A9BFA6: EqI4
  loc_A9BFA7: BranchF loc_A9BFAD
  loc_A9BFAA: Branch loc_A9C013
  loc_A9BFAD: ILdRf var_90
  loc_A9BFB0: LitI4 &HA
  loc_A9BFB5: EqI4
  loc_A9BFB6: BranchF loc_A9BFBC
  loc_A9BFB9: Branch loc_A9C013
  loc_A9BFBC: ILdRf var_90
  loc_A9BFBF: LitI4 7
  loc_A9BFC4: EqI4
  loc_A9BFC5: BranchF loc_A9BFCB
  loc_A9BFC8: Branch loc_A9C013
  loc_A9BFCB: ILdRf var_90
  loc_A9BFCE: LitI4 8
  loc_A9BFD3: EqI4
  loc_A9BFD4: BranchF loc_A9BFDA
  loc_A9BFD7: Branch loc_A9C013
  loc_A9BFDA: ILdRf var_90
  loc_A9BFDD: LitI4 5
  loc_A9BFE2: EqI4
  loc_A9BFE3: BranchF loc_A9BFE9
  loc_A9BFE6: Branch loc_A9C013
  loc_A9BFE9: ILdRf var_90
  loc_A9BFEC: LitI4 6
  loc_A9BFF1: EqI4
  loc_A9BFF2: BranchF loc_A9BFF8
  loc_A9BFF5: Branch loc_A9C013
  loc_A9BFF8: ILdRf var_90
  loc_A9BFFB: LitI4 4
  loc_A9C000: EqI4
  loc_A9C001: BranchF loc_A9C007
  loc_A9C004: Branch loc_A9C013
  loc_A9C007: ILdRf var_90
  loc_A9C00A: LitI4 3
  loc_A9C00F: EqI4
  loc_A9C010: BranchF loc_A9C013
  loc_A9C013: FLdI2 var_8A
  loc_A9C016: BranchF loc_A9C021
  loc_A9C019: LitI4 4
  loc_A9C01E: IStI4 adStatus
  loc_A9C021: ExitProcHresult
End Sub

Private Function Proc_15_59_9F59B8() '9F59B8
  'Data Table: 44DFCC
  loc_9F5994: LitStr "Primary"
  loc_9F5997: FLdPr Me
  loc_9F599A: LateIdLdVar var_94 DispID_4 0
  loc_9F59A1: CastAdVar Me
  loc_9F59A5: FStAdFunc var_98
  loc_9F59A8: FLdPr var_98
  loc_9F59B0: FFree1Ad var_98
  loc_9F59B3: FFree1Var var_94 = ""
  loc_9F59B6: ExitProcHresult
End Function

Private Function Proc_15_60_9F51D0(arg_C) '9F51D0
  'Data Table: 44DFCC
  loc_9F51AC: ILdI4 arg_C
  loc_9F51AF: FStStrCopy var_88
  loc_9F51B2: ILdRf var_88
  loc_9F51B5: LitStr "Primary"
  loc_9F51B8: EqStr
  loc_9F51BA: BranchF loc_9F51CF
  loc_9F51BD: FLdRfVar var_8C
  loc_9F51C0: FLdPr Me
  loc_9F51C3: from_stack_1v = clsacrepago.global_4513620Get()
  loc_9F51C8: FLdZeroAd var_8C
  loc_9F51CB: IStAdFunc
  loc_9F51CF: ExitProcHresult
End Function

Public Function global_4513620Get() '44E4C0
  global_4513620Get = global_4513620
End Function

Public Sub global_4513620Put(Value) '44E4DA
  global_4513620 = Value
End Sub

Public Sub global_4513620Set(Value) '44E4F4
  global_4513620 = Value
End Sub

Public Function global_4513620Get() '44E50E
  global_4513620Get = global_4513620
End Function

Public Sub global_4513620Put(Value) '44E528
  global_4513620 = Value
End Sub

Public Sub global_4513620Set(Value) '44E542
  global_4513620 = Value
End Sub

Public Function global_4513620Get() '44E55C
  global_4513620Get = global_4513620
End Function

Public Sub global_4513620Put(Value) '44E576
  global_4513620 = Value
End Sub

Public Sub global_4513620Set(Value) '44E590
  global_4513620 = Value
End Sub
