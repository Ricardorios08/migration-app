VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clstipoliqu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0EC84
  'Data Table: 43714C
  loc_A0EC48: FLdRfVar var_8C
  loc_A0EC4B: FLdRfVar var_88
  loc_A0EC4E: FLdPr Me
  loc_A0EC51: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A0EC56: FLdPr var_88
  loc_A0EC59:  = Me.RecordCount
  loc_A0EC5E: ILdRf var_8C
  loc_A0EC61: LitI4 0
  loc_A0EC66: GtI4
  loc_A0EC67: FFree1Ad var_88
  loc_A0EC6A: BranchF loc_A0EC83
  loc_A0EC6D: FLdRfVar var_88
  loc_A0EC70: FLdPr Me
  loc_A0EC73: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A0EC78: FLdPr var_88
  loc_A0EC7B: Me.MoveFirst
  loc_A0EC80: FFree1Ad var_88
  loc_A0EC83: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0FBD4
  'Data Table: 43714C
  loc_A0FB98: FLdRfVar var_8C
  loc_A0FB9B: FLdRfVar var_88
  loc_A0FB9E: FLdPr Me
  loc_A0FBA1: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A0FBA6: FLdPr var_88
  loc_A0FBA9:  = Me.RecordCount
  loc_A0FBAE: ILdRf var_8C
  loc_A0FBB1: LitI4 0
  loc_A0FBB6: GtI4
  loc_A0FBB7: FFree1Ad var_88
  loc_A0FBBA: BranchF loc_A0FBD3
  loc_A0FBBD: FLdRfVar var_88
  loc_A0FBC0: FLdPr Me
  loc_A0FBC3: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A0FBC8: FLdPr var_88
  loc_A0FBCB: Me.MoveLast
  loc_A0FBD0: FFree1Ad var_88
  loc_A0FBD3: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9A570
  'Data Table: 43714C
  loc_A9A4B4: FLdRfVar var_8A
  loc_A9A4B7: FLdRfVar var_88
  loc_A9A4BA: FLdPr Me
  loc_A9A4BD: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A9A4C2: FLdPr var_88
  loc_A9A4C5:  = Me.EOF
  loc_A9A4CA: FLdI2 var_8A
  loc_A9A4CD: NotI4
  loc_A9A4CE: FLdRfVar var_94
  loc_A9A4D1: FLdRfVar var_90
  loc_A9A4D4: FLdPr Me
  loc_A9A4D7: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A9A4DC: FLdPr var_90
  loc_A9A4DF:  = Me.RecordCount
  loc_A9A4E4: ILdRf var_94
  loc_A9A4E7: LitI4 0
  loc_A9A4EC: GtI4
  loc_A9A4ED: AndI4
  loc_A9A4EE: FFreeAd var_88 = ""
  loc_A9A4F5: BranchF loc_A9A50E
  loc_A9A4F8: FLdRfVar var_88
  loc_A9A4FB: FLdPr Me
  loc_A9A4FE: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A9A503: FLdPr var_88
  loc_A9A506: Me.MoveNext
  loc_A9A50B: FFree1Ad var_88
  loc_A9A50E: FLdRfVar var_8A
  loc_A9A511: FLdRfVar var_88
  loc_A9A514: FLdPr Me
  loc_A9A517: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A9A51C: FLdPr var_88
  loc_A9A51F:  = Me.EOF
  loc_A9A524: FLdI2 var_8A
  loc_A9A527: FLdRfVar var_94
  loc_A9A52A: FLdRfVar var_90
  loc_A9A52D: FLdPr Me
  loc_A9A530: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A9A535: FLdPr var_90
  loc_A9A538:  = Me.RecordCount
  loc_A9A53D: ILdRf var_94
  loc_A9A540: LitI4 0
  loc_A9A545: GtI4
  loc_A9A546: AndI4
  loc_A9A547: FFreeAd var_88 = ""
  loc_A9A54E: BranchF loc_A9A56C
  loc_A9A551: ImpAdCallFPR4 Beep()
  loc_A9A556: FLdRfVar var_88
  loc_A9A559: FLdPr Me
  loc_A9A55C: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A9A561: FLdPr var_88
  loc_A9A564: Me.MoveLast
  loc_A9A569: FFree1Ad var_88
  loc_A9A56C: ExitProcHresult
  loc_A9A56D: StAryRecMove
End Sub

Public Sub MoveSiguiente() '9D8618
  'Data Table: 43714C
  loc_9D8600: FLdRfVar var_88
  loc_9D8603: FLdPr Me
  loc_9D8606: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_9D860B: FLdPr var_88
  loc_9D860E: Me.MoveNext
  loc_9D8613: FFree1Ad var_88
  loc_9D8616: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E9590
  'Data Table: 43714C
  loc_9E9570: LitVar_Missing var_98
  loc_9E9573: PopAdLdVar
  loc_9E9574: ILdI2 iValor
  loc_9E9577: CI4UI1
  loc_9E9578: FLdRfVar var_88
  loc_9E957B: FLdPr Me
  loc_9E957E: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_9E9583: FLdPr var_88
  loc_9E9586: Me.Move from_stack_1, from_stack_2
  loc_9E958B: FFree1Ad var_88
  loc_9E958E: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A99CDC
  'Data Table: 43714C
  loc_A99C20: FLdRfVar var_8A
  loc_A99C23: FLdRfVar var_88
  loc_A99C26: FLdPr Me
  loc_A99C29: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A99C2E: FLdPr var_88
  loc_A99C31:  = Me.BOF
  loc_A99C36: FLdI2 var_8A
  loc_A99C39: NotI4
  loc_A99C3A: FLdRfVar var_94
  loc_A99C3D: FLdRfVar var_90
  loc_A99C40: FLdPr Me
  loc_A99C43: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A99C48: FLdPr var_90
  loc_A99C4B:  = Me.RecordCount
  loc_A99C50: ILdRf var_94
  loc_A99C53: LitI4 0
  loc_A99C58: GtI4
  loc_A99C59: AndI4
  loc_A99C5A: FFreeAd var_88 = ""
  loc_A99C61: BranchF loc_A99C7A
  loc_A99C64: FLdRfVar var_88
  loc_A99C67: FLdPr Me
  loc_A99C6A: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A99C6F: FLdPr var_88
  loc_A99C72: Me.MovePrevious
  loc_A99C77: FFree1Ad var_88
  loc_A99C7A: FLdRfVar var_8A
  loc_A99C7D: FLdRfVar var_88
  loc_A99C80: FLdPr Me
  loc_A99C83: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A99C88: FLdPr var_88
  loc_A99C8B:  = Me.BOF
  loc_A99C90: FLdI2 var_8A
  loc_A99C93: FLdRfVar var_94
  loc_A99C96: FLdRfVar var_90
  loc_A99C99: FLdPr Me
  loc_A99C9C: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A99CA1: FLdPr var_90
  loc_A99CA4:  = Me.RecordCount
  loc_A99CA9: ILdRf var_94
  loc_A99CAC: LitI4 0
  loc_A99CB1: GtI4
  loc_A99CB2: AndI4
  loc_A99CB3: FFreeAd var_88 = ""
  loc_A99CBA: BranchF loc_A99CD8
  loc_A99CBD: ImpAdCallFPR4 Beep()
  loc_A99CC2: FLdRfVar var_88
  loc_A99CC5: FLdPr Me
  loc_A99CC8: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A99CCD: FLdPr var_88
  loc_A99CD0: Me.MoveFirst
  loc_A99CD5: FFree1Ad var_88
  loc_A99CD8: ExitProcHresult
End Sub

Public Property Get EOF() '9FA75C
  'Data Table: 43714C
  loc_9FA734: FLdRfVar var_8E
  loc_9FA737: FLdRfVar var_8C
  loc_9FA73A: FLdPr Me
  loc_9FA73D: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_9FA742: FLdPr var_8C
  loc_9FA745:  = Me.EOF
  loc_9FA74A: FLdI2 var_8E
  loc_9FA74D: FStI2 var_86
  loc_9FA750: FFree1Ad var_8C
  loc_9FA753: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F5230
  'Data Table: 43714C
  loc_9F5208: FLdRfVar var_8E
  loc_9F520B: FLdRfVar var_8C
  loc_9F520E: FLdPr Me
  loc_9F5211: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_9F5216: FLdPr var_8C
  loc_9F5219:  = Me.BOF
  loc_9F521E: FLdI2 var_8E
  loc_9F5221: FStI2 var_86
  loc_9F5224: FFree1Ad var_8C
  loc_9F5227: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9E433C
  'Data Table: 43714C
  loc_9E4320: ILdI4 sOrden
  loc_9E4323: FLdRfVar var_88
  loc_9E4326: FLdPr Me
  loc_9E4329: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_9E432E: FLdPr var_88
  loc_9E4331: Me.Sort = from_stack_1
  loc_9E4336: FFree1Ad var_88
  loc_9E4339: ExitProcHresult
End Sub

Public Sub Find(sFind) '9FAAF4
  'Data Table: 43714C
  loc_9FAACC: LitVar_Missing var_98
  loc_9FAACF: PopAdLdVar
  loc_9FAAD0: LitI4 1
  loc_9FAAD5: LitI4 0
  loc_9FAADA: ILdI4 sFind
  loc_9FAADD: FLdRfVar var_88
  loc_9FAAE0: FLdPr Me
  loc_9FAAE3: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_9FAAE8: FLdPr var_88
  loc_9FAAEB: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9FAAF0: FFree1Ad var_88
  loc_9FAAF3: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9FABAC
  'Data Table: 43714C
  loc_9FAB84: FLdRfVar var_90
  loc_9FAB87: FLdRfVar var_8C
  loc_9FAB8A: FLdPr Me
  loc_9FAB8D: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_9FAB92: FLdPr var_8C
  loc_9FAB95:  = Me.AbsolutePosition
  loc_9FAB9A: ILdRf var_90
  loc_9FAB9D: FStR4 var_88
  loc_9FABA0: FFree1Ad var_8C
  loc_9FABA3: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9FAC64
  'Data Table: 43714C
  loc_9FAC3C: FLdRfVar var_90
  loc_9FAC3F: FLdRfVar var_8C
  loc_9FAC42: FLdPr Me
  loc_9FAC45: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_9FAC4A: FLdPr var_8C
  loc_9FAC4D:  = Me.RecordCount
  loc_9FAC52: ILdRf var_90
  loc_9FAC55: FStR4 var_88
  loc_9FAC58: FFree1Ad var_8C
  loc_9FAC5B: ExitProcCbHresult
End Sub

Public Sub AddNew(ByOficina, CodiTili, DetaTili, ConcTili, CoreTili, DescTili, DeanTili, GastTili, LeyeTili, MiniTili, CogaTili) 'B23C94
  'Data Table: 43714C
  loc_B23A6C: ILdRf DetaTili
  loc_B23A6F: FStStrCopy var_88
  loc_B23A72: ILdRf ConcTili
  loc_B23A75: FStStrCopy var_8C
  loc_B23A78: ILdRf CoreTili
  loc_B23A7B: FStStrCopy var_90
  loc_B23A7E: ILdRf arg_38
  loc_B23A81: FStStrCopy var_94
  loc_B23A84: FLdRfVar var_98
  loc_B23A87: FLdI2 CodiTili
  loc_B23A8A: CUI1I2
  loc_B23A8C: FLdUI1
  loc_B23A90: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_B23A95: ILdRf var_98
  loc_B23A98: LitStr vbNullString
  loc_B23A9B: NeStr
  loc_B23A9D: FFree1Str var_98
  loc_B23AA0: BranchF loc_B23AAE
  loc_B23AA3: LitStr "El TIPO DE LIQUIDACION YA EXISTE. Reintente..."
  loc_B23AA6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B23AAB: Branch loc_B23C91
  loc_B23AAE: LitStr "INSERT INTO tipoliqu (CodiOfic, CodiTili, DetaTili, PeriInfo, ConcTili, CoreTili, CogaTili, DescTili, DeanTili, GastTili, MiniTili, LeyeTili) "
  loc_B23AB1: LitStr " VALUES ("
  loc_B23AB4: ConcatStr
  loc_B23AB5: FStStrNoPop var_98
  loc_B23AB8: FLdUI1
  loc_B23ABC: CStrI2
  loc_B23ABE: FStStrNoPop var_9C
  loc_B23AC1: ConcatStr
  loc_B23AC2: FStStrNoPop var_A0
  loc_B23AC5: LitStr ","
  loc_B23AC8: ConcatStr
  loc_B23AC9: FStStrNoPop var_A4
  loc_B23ACC: FLdI2 CodiTili
  loc_B23ACF: CStrUI1
  loc_B23AD1: FStStrNoPop var_A8
  loc_B23AD4: ConcatStr
  loc_B23AD5: FStStrNoPop var_AC
  loc_B23AD8: LitStr ",'"
  loc_B23ADB: ConcatStr
  loc_B23ADC: FStStrNoPop var_B0
  loc_B23ADF: ILdRf var_88
  loc_B23AE2: ConcatStr
  loc_B23AE3: FStStrNoPop var_B4
  loc_B23AE6: LitStr "',"
  loc_B23AE9: ConcatStr
  loc_B23AEA: CVarStr var_F4
  loc_B23AED: LitI2_Byte 0
  loc_B23AEF: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B23AF4: CVarDate var_D4
  loc_B23AF8: FLdRfVar var_E4
  loc_B23AFB: ImpAdCallFPR4  = Year()
  loc_B23B00: FLdRfVar var_E4
  loc_B23B03: ConcatVar var_104
  loc_B23B07: LitVarStr var_114, ",'"
  loc_B23B0C: ConcatVar var_124
  loc_B23B10: ILdRf var_8C
  loc_B23B13: CVarStr var_134
  loc_B23B16: ConcatVar var_144
  loc_B23B1A: LitVarStr var_154, "','"
  loc_B23B1F: ConcatVar var_164
  loc_B23B23: ILdRf var_90
  loc_B23B26: CVarStr var_174
  loc_B23B29: ConcatVar var_184
  loc_B23B2D: LitVarStr var_194, "',"
  loc_B23B32: ConcatVar var_1A4
  loc_B23B36: ILdRf AddNew4
  loc_B23B39: CVarI4
  loc_B23B3D: ConcatVar var_1C4
  loc_B23B41: LitVarStr var_1D4, ","
  loc_B23B46: ConcatVar var_1E4
  loc_B23B4A: LitI4 0
  loc_B23B4F: LitI4 -1
  loc_B23B54: LitI4 1
  loc_B23B59: LitStr "."
  loc_B23B5C: LitStr ","
  loc_B23B5F: FLdFPR8 DescTili
  loc_B23B62: CStrR8
  loc_B23B64: FStStrNoPop var_1E8
  loc_B23B67: ImpAdCallI2 Replace(, , , , , )
  loc_B23B6C: CVarStr var_1F8
  loc_B23B6F: ConcatVar var_208
  loc_B23B73: LitVarStr var_218, ","
  loc_B23B78: ConcatVar var_228
  loc_B23B7C: LitI4 0
  loc_B23B81: LitI4 -1
  loc_B23B86: LitI4 1
  loc_B23B8B: LitStr "."
  loc_B23B8E: LitStr ","
  loc_B23B91: FLdFPR8 GastTili
  loc_B23B94: CStrR8
  loc_B23B96: FStStrNoPop var_22C
  loc_B23B99: ImpAdCallI2 Replace(, , , , , )
  loc_B23B9E: CVarStr var_23C
  loc_B23BA1: ConcatVar var_24C
  loc_B23BA5: LitVarStr var_25C, ","
  loc_B23BAA: ConcatVar var_26C
  loc_B23BAE: LitI4 0
  loc_B23BB3: LitI4 -1
  loc_B23BB8: LitI4 1
  loc_B23BBD: LitStr "."
  loc_B23BC0: LitStr ","
  loc_B23BC3: FLdFPR8 MiniTili
  loc_B23BC6: CStrR8
  loc_B23BC8: FStStrNoPop var_270
  loc_B23BCB: ImpAdCallI2 Replace(, , , , , )
  loc_B23BD0: CVarStr var_280
  loc_B23BD3: ConcatVar var_290
  loc_B23BD7: LitVarStr var_2A0, ","
  loc_B23BDC: ConcatVar var_2B0
  loc_B23BE0: LitI4 0
  loc_B23BE5: LitI4 -1
  loc_B23BEA: LitI4 1
  loc_B23BEF: LitStr "."
  loc_B23BF2: LitStr ","
  loc_B23BF5: FLdFPR8 arg_3C
  loc_B23BF8: CStrR8
  loc_B23BFA: FStStrNoPop var_2B4
  loc_B23BFD: ImpAdCallI2 Replace(, , , , , )
  loc_B23C02: CVarStr var_2C4
  loc_B23C05: ConcatVar var_2D4
  loc_B23C09: LitVarStr var_2E4, ",'"
  loc_B23C0E: ConcatVar var_2F4
  loc_B23C12: ILdRf var_94
  loc_B23C15: CVarStr var_304
  loc_B23C18: ConcatVar var_314
  loc_B23C1C: LitVarStr var_324, "');"
  loc_B23C21: ConcatVar var_334
  loc_B23C25: CStrVarVal var_338
  loc_B23C29: Call EjecutarRs2(from_stack_1v)
  loc_B23C2E: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_1E8 = "": var_22C = "": var_270 = "": var_2B4 = ""
  loc_B23C4B: FFreeVar var_D4 = "": var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_1F8 = "": var_208 = "": var_228 = "": var_23C = "": var_24C = "": var_26C = "": var_280 = "": var_290 = "": var_2B0 = "": var_2C4 = "": var_2D4 = "": var_2F4 = "": var_314 = ""
  loc_B23C80: Call Requery()
  loc_B23C85: FLdI2 CodiTili
  loc_B23C88: FLdUI1
  loc_B23C8C: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_B23C91: ExitProcHresult
End Sub

Public Sub Modificar(ByOficina, CodiTili, DetaTili, ConcTili, CoreTili, DescTili, DeanTili, GastTili, LeyeTili, MiniTili, CogaTili) 'B22DA8
  'Data Table: 43714C
  loc_B22B80: ILdRf DetaTili
  loc_B22B83: FStStrCopy var_88
  loc_B22B86: ILdRf ConcTili
  loc_B22B89: FStStrCopy var_8C
  loc_B22B8C: ILdRf CoreTili
  loc_B22B8F: FStStrCopy var_90
  loc_B22B92: ILdRf arg_38
  loc_B22B95: FStStrCopy var_94
  loc_B22B98: FLdRfVar var_98
  loc_B22B9B: FLdI2 CodiTili
  loc_B22B9E: CUI1I2
  loc_B22BA0: FLdUI1
  loc_B22BA4: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_B22BA9: ILdRf var_98
  loc_B22BAC: LitStr vbNullString
  loc_B22BAF: EqStr
  loc_B22BB1: FFree1Str var_98
  loc_B22BB4: BranchF loc_B22BC2
  loc_B22BB7: LitStr "El Tipo De Liquidacion NO EXISTE. Reintente..."
  loc_B22BBA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B22BBF: Branch loc_B22D94
  loc_B22BC2: LitStr " UPDATE tipoliqu SET DetaTili='"
  loc_B22BC5: ILdRf var_88
  loc_B22BC8: ConcatStr
  loc_B22BC9: FStStrNoPop var_98
  loc_B22BCC: LitStr "',PeriInfo = "
  loc_B22BCF: ConcatStr
  loc_B22BD0: CVarStr var_D8
  loc_B22BD3: LitI2_Byte 0
  loc_B22BD5: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B22BDA: CVarDate var_B8
  loc_B22BDE: FLdRfVar var_C8
  loc_B22BE1: ImpAdCallFPR4  = Year()
  loc_B22BE6: FLdRfVar var_C8
  loc_B22BE9: ConcatVar var_E8
  loc_B22BED: LitVarStr var_F8, ", ConcTili = '"
  loc_B22BF2: ConcatVar var_108
  loc_B22BF6: ILdRf var_8C
  loc_B22BF9: CVarStr var_118
  loc_B22BFC: ConcatVar var_128
  loc_B22C00: LitVarStr var_138, "', CoreTili = '"
  loc_B22C05: ConcatVar var_148
  loc_B22C09: ILdRf var_90
  loc_B22C0C: CVarStr var_158
  loc_B22C0F: ConcatVar var_168
  loc_B22C13: LitVarStr var_178, "', CogaTili = "
  loc_B22C18: ConcatVar var_188
  loc_B22C1C: ILdRf Modificar4
  loc_B22C1F: CVarI4
  loc_B22C23: ConcatVar var_1A8
  loc_B22C27: LitVarStr var_1B8, ", DescTili = "
  loc_B22C2C: ConcatVar var_1C8
  loc_B22C30: LitI4 0
  loc_B22C35: LitI4 -1
  loc_B22C3A: LitI4 1
  loc_B22C3F: LitStr "."
  loc_B22C42: LitStr ","
  loc_B22C45: FLdFPR8 DescTili
  loc_B22C48: CStrR8
  loc_B22C4A: FStStrNoPop var_1CC
  loc_B22C4D: ImpAdCallI2 Replace(, , , , , )
  loc_B22C52: CVarStr var_1DC
  loc_B22C55: ConcatVar var_1EC
  loc_B22C59: LitVarStr var_1FC, ", DeanTili = "
  loc_B22C5E: ConcatVar var_20C
  loc_B22C62: LitI4 0
  loc_B22C67: LitI4 -1
  loc_B22C6C: LitI4 1
  loc_B22C71: LitStr "."
  loc_B22C74: LitStr ","
  loc_B22C77: FLdFPR8 GastTili
  loc_B22C7A: CStrR8
  loc_B22C7C: FStStrNoPop var_210
  loc_B22C7F: ImpAdCallI2 Replace(, , , , , )
  loc_B22C84: CVarStr var_220
  loc_B22C87: ConcatVar var_230
  loc_B22C8B: LitVarStr var_240, ", GastTili = "
  loc_B22C90: ConcatVar var_250
  loc_B22C94: LitI4 0
  loc_B22C99: LitI4 -1
  loc_B22C9E: LitI4 1
  loc_B22CA3: LitStr "."
  loc_B22CA6: LitStr ","
  loc_B22CA9: FLdFPR8 MiniTili
  loc_B22CAC: CStrR8
  loc_B22CAE: FStStrNoPop var_254
  loc_B22CB1: ImpAdCallI2 Replace(, , , , , )
  loc_B22CB6: CVarStr var_264
  loc_B22CB9: ConcatVar var_274
  loc_B22CBD: LitVarStr var_284, ", MiniTili = "
  loc_B22CC2: ConcatVar var_294
  loc_B22CC6: LitI4 0
  loc_B22CCB: LitI4 -1
  loc_B22CD0: LitI4 1
  loc_B22CD5: LitStr "."
  loc_B22CD8: LitStr ","
  loc_B22CDB: FLdFPR8 arg_3C
  loc_B22CDE: CStrR8
  loc_B22CE0: FStStrNoPop var_298
  loc_B22CE3: ImpAdCallI2 Replace(, , , , , )
  loc_B22CE8: CVarStr var_2A8
  loc_B22CEB: ConcatVar var_2B8
  loc_B22CEF: LitVarStr var_2C8, ", LeyeTili = '"
  loc_B22CF4: ConcatVar var_2D8
  loc_B22CF8: ILdRf var_94
  loc_B22CFB: CVarStr var_2E8
  loc_B22CFE: ConcatVar var_2F8
  loc_B22D02: LitVarStr var_308, "', ModiUsua = '"
  loc_B22D07: ConcatVar var_318
  loc_B22D0B: ImpAdLdI4 MemVar_D9302C
  loc_B22D0E: CVarStr var_328
  loc_B22D11: ConcatVar var_338
  loc_B22D15: LitVarStr var_348, "', ModiFeho = NOW() WHERE CodiOfic = "
  loc_B22D1A: ConcatVar var_358
  loc_B22D1E: FLdUI1
  loc_B22D22: CVarUI1
  loc_B22D26: ConcatVar var_378
  loc_B22D2A: LitVarStr var_388, " AND CodiTili="
  loc_B22D2F: ConcatVar var_398
  loc_B22D33: FLdI2 CodiTili
  loc_B22D36: CVarI2 var_3A8
  loc_B22D39: ConcatVar var_3B8
  loc_B22D3D: CStrVarVal var_3BC
  loc_B22D41: Call EjecutarRs2(from_stack_1v)
  loc_B22D46: FFreeStr var_98 = "": var_1CC = "": var_210 = "": var_254 = "": var_298 = ""
  loc_B22D55: FFreeVar var_B8 = "": var_D8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1DC = "": var_1EC = "": var_20C = "": var_220 = "": var_230 = "": var_250 = "": var_264 = "": var_274 = "": var_294 = "": var_2A8 = "": var_2B8 = "": var_2D8 = "": var_2F8 = "": var_318 = "": var_338 = "": var_358 = "": var_378 = "": var_398 = ""
  loc_B22D94: Call Requery()
  loc_B22D99: FLdI2 CodiTili
  loc_B22D9C: FLdUI1
  loc_B22DA0: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_B22DA5: ExitProcHresult
End Sub

Public Sub Delete() 'A226F8
  'Data Table: 43714C
  loc_A226B0: FLdRfVar var_8C
  loc_A226B3: FLdRfVar var_88
  loc_A226B6: FLdPr Me
  loc_A226B9: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A226BE: FLdPr var_88
  loc_A226C1:  = Me.RecordCount
  loc_A226C6: ILdRf var_8C
  loc_A226C9: LitI4 0
  loc_A226CE: GtI4
  loc_A226CF: FFree1Ad var_88
  loc_A226D2: BranchF loc_A226F5
  loc_A226D5: LitI4 1
  loc_A226DA: FLdRfVar var_88
  loc_A226DD: FLdPr Me
  loc_A226E0: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A226E5: FLdPr var_88
  loc_A226E8: Me.Delete
  loc_A226ED: FFree1Ad var_88
  loc_A226F0: Call MoveNext()
  loc_A226F5: ExitProcHresult
  loc_A226F6: FLdPr var_2C00
End Sub

Public Sub Requery() 'A03E68
  'Data Table: 43714C
  loc_A03E38: LitI4 -1
  loc_A03E3D: FLdRfVar var_88
  loc_A03E40: FLdPr Me
  loc_A03E43: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A03E48: FLdPr var_88
  loc_A03E4B: Me.Requery from_stack_1
  loc_A03E50: FFree1Ad var_88
  loc_A03E53: LitVarStr var_98, "Primary"
  loc_A03E58: PopAdLdVar
  loc_A03E59: FLdPr Me
  loc_A03E5C: LateIdCall
  loc_A03E64: ExitProcHresult
End Sub

Public Sub Update() 'A22770
  'Data Table: 43714C
  loc_A2272C: FLdRfVar var_88
  loc_A2272F: FLdPr Me
  loc_A22732: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A22737: FLdZeroAd var_88
  loc_A2273A: FStAdFunc var_8C
  loc_A2273D: LitI4 3
  loc_A22742: FLdPr var_8C
  loc_A22745: Me.UpdateBatch
  loc_A2274A: FLdRfVar var_90
  loc_A2274D: FLdPr var_8C
  loc_A22750:  = Me.EditMode
  loc_A22755: ILdRf var_90
  loc_A22758: LitI4 2
  loc_A2275D: EqI4
  loc_A2275E: BranchF loc_A22766
  loc_A22761: Call MoveLast()
  loc_A22766: LitNothing
  loc_A22768: FStAd var_8C 
  loc_A2276C: ExitProcHresult
End Sub

Public Sub Cancel() 'A443D8
  'Data Table: 43714C
  loc_A44384: FLdRfVar var_88
  loc_A44387: FLdPr Me
  loc_A4438A: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A4438F: FLdZeroAd var_88
  loc_A44392: FStAdFunc var_8C
  loc_A44395: FLdRfVar var_90
  loc_A44398: FLdPr var_8C
  loc_A4439B:  = Me.RecordCount
  loc_A443A0: ILdRf var_90
  loc_A443A3: LitI4 0
  loc_A443A8: GtI4
  loc_A443A9: BranchF loc_A443D0
  loc_A443AC: FLdPr var_8C
  loc_A443AF: Me.CancelUpdate
  loc_A443B4: FLdRfVar var_90
  loc_A443B7: FLdPr var_8C
  loc_A443BA:  = Me.EditMode
  loc_A443BF: ILdRf var_90
  loc_A443C2: LitI4 2
  loc_A443C7: EqI4
  loc_A443C8: BranchF loc_A443D0
  loc_A443CB: Call MoveFirst()
  loc_A443D0: LitNothing
  loc_A443D2: FStAd var_8C 
  loc_A443D6: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FC034
  'Data Table: 43714C
  loc_9FC008: FLdRfVar var_90
  loc_9FC00B: FLdRfVar var_8C
  loc_9FC00E: FLdPr Me
  loc_9FC011: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_9FC016: FLdPr var_8C
  loc_9FC019:  = Me.EditMode
  loc_9FC01E: ILdRf var_90
  loc_9FC021: LitI4 0
  loc_9FC026: NeI4
  loc_9FC027: FStI2 var_86
  loc_9FC02A: FFree1Ad var_8C
  loc_9FC02D: ExitProcCbHresult
  loc_9FC033: LeCy
End Sub

Public Sub RedefineRS(sSelect) 'A72D00
  'Data Table: 43714C
  loc_A72C8C: ILdRf sSelect
  loc_A72C8F: FStStrCopy var_88
  loc_A72C92: LitNothing
  loc_A72C94: CastAd
  loc_A72C97: FStAdFuncNoPop
  loc_A72C9A: FLdPr Me
  loc_A72C9D: Call clstipoliqu.global_4419796Set(from_stack_1v)
  loc_A72CA2: FFree1Ad var_8C
  loc_A72CA5: New Recordset
  loc_A72CA9: FStAdFuncNoPop
  loc_A72CAC: FLdPr Me
  loc_A72CAF: Call clstipoliqu.global_4419796Set(from_stack_1v)
  loc_A72CB4: FFree1Ad var_8C
  loc_A72CB7: LitI4 -1
  loc_A72CBC: LitI4 3
  loc_A72CC1: LitI4 3
  loc_A72CC6: ImpAdLdI4 MemVar_D9301C
  loc_A72CC9: CVarAd
  loc_A72CCD: PopAdLdVar
  loc_A72CCE: ILdRf var_88
  loc_A72CD1: CVarStr var_9C
  loc_A72CD4: PopAdLdVar
  loc_A72CD5: FLdRfVar var_8C
  loc_A72CD8: FLdPr Me
  loc_A72CDB: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A72CE0: FLdPr var_8C
  loc_A72CE3: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A72CE8: FFree1Ad var_8C
  loc_A72CEB: LitVarStr var_9C, "Primary"
  loc_A72CF0: PopAdLdVar
  loc_A72CF1: FLdPr Me
  loc_A72CF4: LateIdCall
  loc_A72CFC: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A59D38
  'Data Table: 43714C
  loc_A59CD8: ILdRf sSelect
  loc_A59CDB: FStStrCopy var_88
  loc_A59CDE: LitNothing
  loc_A59CE0: CastAd
  loc_A59CE3: FStAdFuncNoPop
  loc_A59CE6: FLdPr Me
  loc_A59CE9: Call clstipoliqu.global_4419796Set(from_stack_1v)
  loc_A59CEE: FFree1Ad var_8C
  loc_A59CF1: New Recordset
  loc_A59CF5: FStAdFuncNoPop
  loc_A59CF8: FLdPr Me
  loc_A59CFB: Call clstipoliqu.global_4419796Set(from_stack_1v)
  loc_A59D00: FFree1Ad var_8C
  loc_A59D03: LitI4 -1
  loc_A59D08: LitI4 3
  loc_A59D0D: LitI4 3
  loc_A59D12: ImpAdLdI4 MemVar_D9301C
  loc_A59D15: CVarAd
  loc_A59D19: PopAdLdVar
  loc_A59D1A: ILdRf var_88
  loc_A59D1D: CVarStr var_9C
  loc_A59D20: PopAdLdVar
  loc_A59D21: FLdRfVar var_8C
  loc_A59D24: FLdPr Me
  loc_A59D27: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A59D2C: FLdPr var_8C
  loc_A59D2F: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A59D34: FFree1Ad var_8C
  loc_A59D37: ExitProcHresult
End Sub

Public Sub Encontrar(CodiOfic, CodiTili) 'A103CC
  'Data Table: 43714C
  loc_A10390: LitStr "CodiOfic = "
  loc_A10393: FLdUI1
  loc_A10397: CStrI2
  loc_A10399: FStStrNoPop var_88
  loc_A1039C: ConcatStr
  loc_A1039D: PopTmpLdAdStr
  loc_A103A1: Call Find(from_stack_1v)
  loc_A103A6: FFreeStr var_88 = ""
  loc_A103AD: LitStr "CodiTili = "
  loc_A103B0: FLdI2 CodiTili
  loc_A103B3: CStrUI1
  loc_A103B5: FStStrNoPop var_88
  loc_A103B8: ConcatStr
  loc_A103B9: PopTmpLdAdStr
  loc_A103BD: Call Find(from_stack_1v)
  loc_A103C2: FFreeStr var_88 = ""
  loc_A103C9: ExitProcHresult
End Sub

Public Property Get DataSource() 'A0A544
  'Data Table: 43714C
  loc_A0A514: ZeroRetVal
  loc_A0A516: FLdRfVar var_90
  loc_A0A519: FLdRfVar var_8C
  loc_A0A51C: FLdPr Me
  loc_A0A51F: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A0A524: FLdPr var_8C
  loc_A0A527:  = Me.DataSource
  loc_A0A52C: ILdRf var_90
  loc_A0A52F: CastAd
  loc_A0A532: FStAdFunc var_88
  loc_A0A535: FFreeAd var_8C = ""
  loc_A0A53C: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9F8BB0
  'Data Table: 43714C
  loc_9F8B88: FLdRfVar var_90
  loc_9F8B8B: FLdRfVar var_8C
  loc_9F8B8E: FLdPr Me
  loc_9F8B91: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_9F8B96: FLdPr var_8C
  loc_9F8B99:  = Me.EditMode
  loc_9F8B9E: ILdRf var_90
  loc_9F8BA1: FStR4 var_88
  loc_9F8BA4: FFree1Ad var_8C
  loc_9F8BA7: ExitProcCbHresult
End Sub

Public Property Get CodiOfic() 'A51D90
  'Data Table: 43714C
  loc_A51D40: FLdRfVar var_B4
  loc_A51D43: FLdRfVar var_A4
  loc_A51D46: LitVarStr var_A0, "CodiOfic"
  loc_A51D4B: PopAdLdVar
  loc_A51D4C: FLdRfVar var_90
  loc_A51D4F: FLdRfVar var_8C
  loc_A51D52: FLdPr Me
  loc_A51D55: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A51D5A: FLdPr var_8C
  loc_A51D5D:  = Me.Fields
  loc_A51D62: FLdPr var_90
  loc_A51D65: from_stack_2 = Me.Item(from_stack_1)
  loc_A51D6A: FLdPr var_A4
  loc_A51D6D:  = Me.Value
  loc_A51D72: FLdRfVar var_B4
  loc_A51D75: CUI1Var
  loc_A51D77: FStUI1 var_86
  loc_A51D7B: FFreeAd var_8C = "": var_90 = ""
  loc_A51D84: FFree1Var var_B4 = ""
  loc_A51D87: ExitProcCbHresult
  loc_A51D8F: CStr2Ansi
End Sub

Public Property Get CodiTili() 'A51FD0
  'Data Table: 43714C
  loc_A51F80: FLdRfVar var_B4
  loc_A51F83: FLdRfVar var_A4
  loc_A51F86: LitVarStr var_A0, "CodiTili"
  loc_A51F8B: PopAdLdVar
  loc_A51F8C: FLdRfVar var_90
  loc_A51F8F: FLdRfVar var_8C
  loc_A51F92: FLdPr Me
  loc_A51F95: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A51F9A: FLdPr var_8C
  loc_A51F9D:  = Me.Fields
  loc_A51FA2: FLdPr var_90
  loc_A51FA5: from_stack_2 = Me.Item(from_stack_1)
  loc_A51FAA: FLdPr var_A4
  loc_A51FAD:  = Me.Value
  loc_A51FB2: FLdRfVar var_B4
  loc_A51FB5: CUI1Var
  loc_A51FB7: FStUI1 var_86
  loc_A51FBB: FFreeAd var_8C = "": var_90 = ""
  loc_A51FC4: FFree1Var var_B4 = ""
  loc_A51FC7: ExitProcCbHresult
End Sub

Public Property Get DetaTili() 'A56E2C
  'Data Table: 43714C
  loc_A56DDC: ZeroRetVal
  loc_A56DDE: FLdRfVar var_B4
  loc_A56DE1: FLdRfVar var_A4
  loc_A56DE4: LitVarStr var_A0, "DetaTili"
  loc_A56DE9: PopAdLdVar
  loc_A56DEA: FLdRfVar var_90
  loc_A56DED: FLdRfVar var_8C
  loc_A56DF0: FLdPr Me
  loc_A56DF3: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A56DF8: FLdPr var_8C
  loc_A56DFB:  = Me.Fields
  loc_A56E00: FLdPr var_90
  loc_A56E03: from_stack_2 = Me.Item(from_stack_1)
  loc_A56E08: FLdPr var_A4
  loc_A56E0B:  = Me.Value
  loc_A56E10: FLdRfVar var_B4
  loc_A56E13: CStrVarTmp
  loc_A56E14: FStStr var_88
  loc_A56E17: FFreeAd var_8C = "": var_90 = ""
  loc_A56E20: FFree1Var var_B4 = ""
  loc_A56E23: ExitProcCbHresult
  loc_A56E29: Ary1StCy
  loc_A56E2A: PopFPR8
End Sub

Public Property Get PeriInfo() 'A44114
  'Data Table: 43714C
  loc_A440C8: FLdRfVar var_B4
  loc_A440CB: FLdRfVar var_A4
  loc_A440CE: LitVarStr var_A0, "PeriInfo"
  loc_A440D3: PopAdLdVar
  loc_A440D4: FLdRfVar var_90
  loc_A440D7: FLdRfVar var_8C
  loc_A440DA: FLdPr Me
  loc_A440DD: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A440E2: FLdPr var_8C
  loc_A440E5:  = Me.Fields
  loc_A440EA: FLdPr var_90
  loc_A440ED: from_stack_2 = Me.Item(from_stack_1)
  loc_A440F2: FLdPr var_A4
  loc_A440F5:  = Me.Value
  loc_A440FA: FLdRfVar var_B4
  loc_A440FD: CI2Var
  loc_A440FE: FStI2 var_86
  loc_A44101: FFreeAd var_8C = "": var_90 = ""
  loc_A4410A: FFree1Var var_B4 = ""
  loc_A4410D: ExitProcCbHresult
End Sub

Public Property Get ConcTili() 'A56EC0
  'Data Table: 43714C
  loc_A56E70: ZeroRetVal
  loc_A56E72: FLdRfVar var_B4
  loc_A56E75: FLdRfVar var_A4
  loc_A56E78: LitVarStr var_A0, "ConcTili"
  loc_A56E7D: PopAdLdVar
  loc_A56E7E: FLdRfVar var_90
  loc_A56E81: FLdRfVar var_8C
  loc_A56E84: FLdPr Me
  loc_A56E87: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A56E8C: FLdPr var_8C
  loc_A56E8F:  = Me.Fields
  loc_A56E94: FLdPr var_90
  loc_A56E97: from_stack_2 = Me.Item(from_stack_1)
  loc_A56E9C: FLdPr var_A4
  loc_A56E9F:  = Me.Value
  loc_A56EA4: FLdRfVar var_B4
  loc_A56EA7: CStrVarTmp
  loc_A56EA8: FStStr var_88
  loc_A56EAB: FFreeAd var_8C = "": var_90 = ""
  loc_A56EB4: FFree1Var var_B4 = ""
  loc_A56EB7: ExitProcCbHresult
End Sub

Public Property Get CoreTili() 'A56F54
  'Data Table: 43714C
  loc_A56F04: ZeroRetVal
  loc_A56F06: FLdRfVar var_B4
  loc_A56F09: FLdRfVar var_A4
  loc_A56F0C: LitVarStr var_A0, "CoreTili"
  loc_A56F11: PopAdLdVar
  loc_A56F12: FLdRfVar var_90
  loc_A56F15: FLdRfVar var_8C
  loc_A56F18: FLdPr Me
  loc_A56F1B: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A56F20: FLdPr var_8C
  loc_A56F23:  = Me.Fields
  loc_A56F28: FLdPr var_90
  loc_A56F2B: from_stack_2 = Me.Item(from_stack_1)
  loc_A56F30: FLdPr var_A4
  loc_A56F33:  = Me.Value
  loc_A56F38: FLdRfVar var_B4
  loc_A56F3B: CStrVarTmp
  loc_A56F3C: FStStr var_88
  loc_A56F3F: FFreeAd var_8C = "": var_90 = ""
  loc_A56F48: FFree1Var var_B4 = ""
  loc_A56F4B: ExitProcCbHresult
  loc_A56F51: ModI2
  loc_A56F52: CStr2Ansi
End Sub

Public Property Get CogaTili() 'A5707C
  'Data Table: 43714C
  loc_A5702C: ZeroRetVal
  loc_A5702E: FLdRfVar var_B4
  loc_A57031: FLdRfVar var_A4
  loc_A57034: LitVarStr var_A0, "CogaTili"
  loc_A57039: PopAdLdVar
  loc_A5703A: FLdRfVar var_90
  loc_A5703D: FLdRfVar var_8C
  loc_A57040: FLdPr Me
  loc_A57043: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A57048: FLdPr var_8C
  loc_A5704B:  = Me.Fields
  loc_A57050: FLdPr var_90
  loc_A57053: from_stack_2 = Me.Item(from_stack_1)
  loc_A57058: FLdPr var_A4
  loc_A5705B:  = Me.Value
  loc_A57060: FLdRfVar var_B4
  loc_A57063: CStrVarTmp
  loc_A57064: FStStr var_88
  loc_A57067: FFreeAd var_8C = "": var_90 = ""
  loc_A57070: FFree1Var var_B4 = ""
  loc_A57073: ExitProcCbHresult
End Sub

Public Property Get DescTili() 'A43FFC
  'Data Table: 43714C
  loc_A43FB0: FLdRfVar var_B8
  loc_A43FB3: FLdRfVar var_A8
  loc_A43FB6: LitVarStr var_A4, "DescTili"
  loc_A43FBB: PopAdLdVar
  loc_A43FBC: FLdRfVar DescTili
  loc_A43FBF: FLdRfVar var_90
  loc_A43FC2: FLdPr Me
  loc_A43FC5: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A43FCA: FLdPr var_90
  loc_A43FCD:  = Me.Fields
  loc_A43FD2: FLdPr DescTili
  loc_A43FD5: from_stack_2 = Me.Item(from_stack_1)
  loc_A43FDA: FLdPr var_A8
  loc_A43FDD:  = Me.Value
  loc_A43FE2: FLdRfVar var_B8
  loc_A43FE5: CR4Var
  loc_A43FE6: FStFPR8 var_8C
  loc_A43FE9: FFreeAd var_90 = "": DescTili = ""
  loc_A43FF2: FFree1Var var_B8 = ""
  loc_A43FF5: ExitProcCbHresult
  loc_A43FFB: NotI4
End Sub

Public Property Get DeanTili() 'A44088
  'Data Table: 43714C
  loc_A4403C: FLdRfVar var_B8
  loc_A4403F: FLdRfVar var_A8
  loc_A44042: LitVarStr var_A4, "DeanTili"
  loc_A44047: PopAdLdVar
  loc_A44048: FLdRfVar DeanTili
  loc_A4404B: FLdRfVar var_90
  loc_A4404E: FLdPr Me
  loc_A44051: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A44056: FLdPr var_90
  loc_A44059:  = Me.Fields
  loc_A4405E: FLdPr DeanTili
  loc_A44061: from_stack_2 = Me.Item(from_stack_1)
  loc_A44066: FLdPr var_A8
  loc_A44069:  = Me.Value
  loc_A4406E: FLdRfVar var_B8
  loc_A44071: CR4Var
  loc_A44072: FStFPR8 var_8C
  loc_A44075: FFreeAd var_90 = "": DeanTili = ""
  loc_A4407E: FFree1Var var_B8 = ""
  loc_A44081: ExitProcCbHresult
  loc_A44087: ExitProcHresult
End Sub

Public Property Get DeanDiaTili() 'A444E8
  'Data Table: 43714C
  loc_A4449C: FLdRfVar var_B8
  loc_A4449F: FLdRfVar var_A8
  loc_A444A2: LitVarStr var_A4, "DeanDiaTili"
  loc_A444A7: PopAdLdVar
  loc_A444A8: FLdRfVar DeanDiaTili
  loc_A444AB: FLdRfVar var_90
  loc_A444AE: FLdPr Me
  loc_A444B1: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A444B6: FLdPr var_90
  loc_A444B9:  = Me.Fields
  loc_A444BE: FLdPr DeanDiaTili
  loc_A444C1: from_stack_2 = Me.Item(from_stack_1)
  loc_A444C6: FLdPr var_A8
  loc_A444C9:  = Me.Value
  loc_A444CE: FLdRfVar var_B8
  loc_A444D1: CR4Var
  loc_A444D2: FStFPR8 var_8C
  loc_A444D5: FFreeAd var_90 = "": DeanDiaTili = ""
  loc_A444DE: FFree1Var var_B8 = ""
  loc_A444E1: ExitProcCbHresult
End Sub

Public Property Get GastTili() 'A44948
  'Data Table: 43714C
  loc_A448FC: FLdRfVar var_B8
  loc_A448FF: FLdRfVar var_A8
  loc_A44902: LitVarStr var_A4, "GastTili"
  loc_A44907: PopAdLdVar
  loc_A44908: FLdRfVar GastTili
  loc_A4490B: FLdRfVar var_90
  loc_A4490E: FLdPr Me
  loc_A44911: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A44916: FLdPr var_90
  loc_A44919:  = Me.Fields
  loc_A4491E: FLdPr GastTili
  loc_A44921: from_stack_2 = Me.Item(from_stack_1)
  loc_A44926: FLdPr var_A8
  loc_A44929:  = Me.Value
  loc_A4492E: FLdRfVar var_B8
  loc_A44931: CR4Var
  loc_A44932: FStFPR8 var_8C
  loc_A44935: FFreeAd var_90 = "": GastTili = ""
  loc_A4493E: FFree1Var var_B8 = ""
  loc_A44941: ExitProcCbHresult
End Sub

Public Property Get MiniTili() 'A44718
  'Data Table: 43714C
  loc_A446CC: FLdRfVar var_B8
  loc_A446CF: FLdRfVar var_A8
  loc_A446D2: LitVarStr var_A4, "MiniTili"
  loc_A446D7: PopAdLdVar
  loc_A446D8: FLdRfVar MiniTili
  loc_A446DB: FLdRfVar var_90
  loc_A446DE: FLdPr Me
  loc_A446E1: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A446E6: FLdPr var_90
  loc_A446E9:  = Me.Fields
  loc_A446EE: FLdPr MiniTili
  loc_A446F1: from_stack_2 = Me.Item(from_stack_1)
  loc_A446F6: FLdPr var_A8
  loc_A446F9:  = Me.Value
  loc_A446FE: FLdRfVar var_B8
  loc_A44701: CR4Var
  loc_A44702: FStFPR8 var_8C
  loc_A44705: FFreeAd var_90 = "": MiniTili = ""
  loc_A4470E: FFree1Var var_B8 = ""
  loc_A44711: ExitProcCbHresult
End Sub

Public Property Get LeyeTili() 'A57488
  'Data Table: 43714C
  loc_A57438: ZeroRetVal
  loc_A5743A: FLdRfVar var_B4
  loc_A5743D: FLdRfVar var_A4
  loc_A57440: LitVarStr var_A0, "LeyeTili"
  loc_A57445: PopAdLdVar
  loc_A57446: FLdRfVar var_90
  loc_A57449: FLdRfVar var_8C
  loc_A5744C: FLdPr Me
  loc_A5744F: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A57454: FLdPr var_8C
  loc_A57457:  = Me.Fields
  loc_A5745C: FLdPr var_90
  loc_A5745F: from_stack_2 = Me.Item(from_stack_1)
  loc_A57464: FLdPr var_A4
  loc_A57467:  = Me.Value
  loc_A5746C: FLdRfVar var_B4
  loc_A5746F: CStrVarTmp
  loc_A57470: FStStr var_88
  loc_A57473: FFreeAd var_8C = "": var_90 = ""
  loc_A5747C: FFree1Var var_B4 = ""
  loc_A5747F: ExitProcCbHresult
End Sub

Public Property Get CodiUsua() 'A5751C
  'Data Table: 43714C
  loc_A574CC: ZeroRetVal
  loc_A574CE: FLdRfVar var_B4
  loc_A574D1: FLdRfVar var_A4
  loc_A574D4: LitVarStr var_A0, "CodiUsua"
  loc_A574D9: PopAdLdVar
  loc_A574DA: FLdRfVar var_90
  loc_A574DD: FLdRfVar var_8C
  loc_A574E0: FLdPr Me
  loc_A574E3: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A574E8: FLdPr var_8C
  loc_A574EB:  = Me.Fields
  loc_A574F0: FLdPr var_90
  loc_A574F3: from_stack_2 = Me.Item(from_stack_1)
  loc_A574F8: FLdPr var_A4
  loc_A574FB:  = Me.Value
  loc_A57500: FLdRfVar var_B4
  loc_A57503: CStrVarTmp
  loc_A57504: FStStr var_88
  loc_A57507: FFreeAd var_8C = "": var_90 = ""
  loc_A57510: FFree1Var var_B4 = ""
  loc_A57513: ExitProcCbHresult
  loc_A57519: FStStrNoPop var_A0
End Sub

Public Function ValidaClave(ByOficina, CodiTili) 'A7A26C
  'Data Table: 43714C
  loc_A7A200: ZeroRetVal
  loc_A7A202: LitStr "SELECT CodiOfic,CodiTili FROM tipoliqu WHERE CodiOfic = "
  loc_A7A205: FLdUI1
  loc_A7A209: CStrI2
  loc_A7A20B: FStStrNoPop var_8C
  loc_A7A20E: ConcatStr
  loc_A7A20F: FStStrNoPop var_90
  loc_A7A212: LitStr " AND CodiTili = "
  loc_A7A215: ConcatStr
  loc_A7A216: FStStrNoPop ValidaClave
  loc_A7A219: FLdUI1
  loc_A7A21D: CStrI2
  loc_A7A21F: FStStrNoPop var_98
  loc_A7A222: ConcatStr
  loc_A7A223: FStStrNoPop var_9C
  loc_A7A226: Call EjecutarRs2(from_stack_1v)
  loc_A7A22B: FFreeStr var_8C = "": var_90 = "": ValidaClave = "": var_98 = ""
  loc_A7A238: FLdRfVar var_A4
  loc_A7A23B: FLdRfVar var_A0
  loc_A7A23E: FLdPr Me
  loc_A7A241: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_A7A246: FLdPr var_A0
  loc_A7A249:  = Me.RecordCount
  loc_A7A24E: ILdRf var_A4
  loc_A7A251: LitI4 0
  loc_A7A256: GtI4
  loc_A7A257: FFree1Ad var_A0
  loc_A7A25A: BranchF loc_A7A263
  loc_A7A25D: LitStr "EL TIPO DE LIQUIDACION YA EXISTE. Reintente..."
  loc_A7A260: FStStrCopy var_88
  loc_A7A263: ExitProcCbHresult
  loc_A7A269: FLdRfVar arg_6FFD
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E9730
  'Data Table: 43714C
  loc_9E9714: ILdRf pError
  loc_9E9717: FStAd var_88 
  loc_9E971B: ILdRf pRecordset
  loc_9E971E: FStAd var_8C 
  loc_9E9722: FLdPr Me
  loc_9E9725: RaiseEvent
  loc_9E972D: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A99358
  'Data Table: 43714C
  loc_A99298: ILdRf pRecordset
  loc_A9929B: FStAd var_88 
  loc_A9929F: ILdRf adReason
  loc_A992A2: FStR4 var_90
  loc_A992A5: ILdRf var_90
  loc_A992A8: LitI4 1
  loc_A992AD: EqI4
  loc_A992AE: BranchF loc_A992B4
  loc_A992B1: Branch loc_A99347
  loc_A992B4: ILdRf var_90
  loc_A992B7: LitI4 9
  loc_A992BC: EqI4
  loc_A992BD: BranchF loc_A992C3
  loc_A992C0: Branch loc_A99347
  loc_A992C3: ILdRf var_90
  loc_A992C6: LitI4 2
  loc_A992CB: EqI4
  loc_A992CC: BranchF loc_A992D2
  loc_A992CF: Branch loc_A99347
  loc_A992D2: ILdRf var_90
  loc_A992D5: LitI4 &HB
  loc_A992DA: EqI4
  loc_A992DB: BranchF loc_A992E1
  loc_A992DE: Branch loc_A99347
  loc_A992E1: ILdRf var_90
  loc_A992E4: LitI4 &HA
  loc_A992E9: EqI4
  loc_A992EA: BranchF loc_A992F0
  loc_A992ED: Branch loc_A99347
  loc_A992F0: ILdRf var_90
  loc_A992F3: LitI4 7
  loc_A992F8: EqI4
  loc_A992F9: BranchF loc_A992FF
  loc_A992FC: Branch loc_A99347
  loc_A992FF: ILdRf var_90
  loc_A99302: LitI4 8
  loc_A99307: EqI4
  loc_A99308: BranchF loc_A9930E
  loc_A9930B: Branch loc_A99347
  loc_A9930E: ILdRf var_90
  loc_A99311: LitI4 5
  loc_A99316: EqI4
  loc_A99317: BranchF loc_A9931D
  loc_A9931A: Branch loc_A99347
  loc_A9931D: ILdRf var_90
  loc_A99320: LitI4 6
  loc_A99325: EqI4
  loc_A99326: BranchF loc_A9932C
  loc_A99329: Branch loc_A99347
  loc_A9932C: ILdRf var_90
  loc_A9932F: LitI4 4
  loc_A99334: EqI4
  loc_A99335: BranchF loc_A9933B
  loc_A99338: Branch loc_A99347
  loc_A9933B: ILdRf var_90
  loc_A9933E: LitI4 3
  loc_A99343: EqI4
  loc_A99344: BranchF loc_A99347
  loc_A99347: FLdI2 var_8A
  loc_A9934A: BranchF loc_A99355
  loc_A9934D: LitI4 4
  loc_A99352: IStI4 adStatus
  loc_A99355: ExitProcHresult
End Sub

Private Function Proc_78_41_9FAD74() '9FAD74
  'Data Table: 43714C
  loc_9FAD50: LitStr "Primary"
  loc_9FAD53: FLdPr Me
  loc_9FAD56: LateIdLdVar var_94 DispID_4 0
  loc_9FAD5D: CastAdVar Me
  loc_9FAD61: FStAdFunc var_98
  loc_9FAD64: FLdPr var_98
  loc_9FAD6C: FFree1Ad var_98
  loc_9FAD6F: FFree1Var var_94 = ""
  loc_9FAD72: ExitProcHresult
End Function

Private Function Proc_78_42_9F8B50(arg_C) '9F8B50
  'Data Table: 43714C
  loc_9F8B2C: ILdI4 arg_C
  loc_9F8B2F: FStStrCopy var_88
  loc_9F8B32: ILdRf var_88
  loc_9F8B35: LitStr "Primary"
  loc_9F8B38: EqStr
  loc_9F8B3A: BranchF loc_9F8B4F
  loc_9F8B3D: FLdRfVar var_8C
  loc_9F8B40: FLdPr Me
  loc_9F8B43: from_stack_1v = clstipoliqu.global_4419796Get()
  loc_9F8B48: FLdZeroAd var_8C
  loc_9F8B4B: IStAdFunc
  loc_9F8B4F: ExitProcHresult
End Function

Public Function global_4419796Get() '437594
  global_4419796Get = global_4419796
End Function

Public Sub global_4419796Put(Value) '4375AE
  global_4419796 = Value
End Sub

Public Sub global_4419796Set(Value) '4375C8
  global_4419796 = Value
End Sub

Public Function global_4419796Get() '4375E2
  global_4419796Get = global_4419796
End Function

Public Sub global_4419796Put(Value) '4375FC
  global_4419796 = Value
End Sub

Public Sub global_4419796Set(Value) '437616
  global_4419796 = Value
End Sub

Public Function global_4419796Get() '437630
  global_4419796Get = global_4419796
End Function

Public Sub global_4419796Put(Value) '43764A
  global_4419796 = Value
End Sub

Public Sub global_4419796Set(Value) '437664
  global_4419796 = Value
End Sub
