
Private Function Proc_18_0_A166E4(arg_C) 'A166E4
  'Data Table: 4B72E0
  loc_A166A0: ILdRf arg_C
  loc_A166A3: FStStrCopy var_88
  loc_A166A6: LitNothing
  loc_A166A8: CastAd
  loc_A166AB: FMemStAdFunc arg_8(0)
  loc_A166B1: New Recordset
  loc_A166B5: FMemStAdFunc arg_8(0)
  loc_A166BB: LitI4 -1
  loc_A166C0: LitI4 3
  loc_A166C5: LitI4 3
  loc_A166CA: ImpAdLdI4 MemVar_D9301C
  loc_A166CD: CVarAd
  loc_A166D1: PopAdLdVar
  loc_A166D2: ILdRf var_88
  loc_A166D5: CVarStr var_98
  loc_A166D8: PopAdLdVar
  loc_A166D9: FMemLdPr
  loc_A166DE: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A166E3: ExitProc
End Function

Private Function Proc_18_1_A1684C(arg_C) 'A1684C
  'Data Table: 4B72E0
  loc_A16808: ILdRf arg_C
  loc_A1680B: FStStrCopy var_88
  loc_A1680E: LitNothing
  loc_A16810: CastAd
  loc_A16813: FMemStAdFunc arg_8(4)
  loc_A16819: New Recordset
  loc_A1681D: FMemStAdFunc arg_8(4)
  loc_A16823: LitI4 -1
  loc_A16828: LitI4 3
  loc_A1682D: LitI4 3
  loc_A16832: ImpAdLdI4 MemVar_D9301C
  loc_A16835: CVarAd
  loc_A16839: PopAdLdVar
  loc_A1683A: ILdRf var_88
  loc_A1683D: CVarStr var_98
  loc_A16840: PopAdLdVar
  loc_A16841: FMemLdPr
  loc_A16846: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A1684B: ExitProc
End Function

Private Function Proc_18_2_A30F28(arg_C, arg_10) 'A30F28
  'Data Table: 4B72E0
  loc_A30EE0: ILdRf arg_C
  loc_A30EE3: FStStrCopy var_8C
  loc_A30EE6: ILdRf var_8C
  loc_A30EE9: LitStr vbNullString
  loc_A30EEC: NeStr
  loc_A30EEE: BranchF loc_A30F22
  loc_A30EF1: ILdRf var_8C
  loc_A30EF4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A30EF9: ILdI4 arg_10
  loc_A30EFC: FStAd var_90 
  loc_A30F00: FLdRfVar var_90
  loc_A30F03: CVarRef
  loc_A30F08: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A30F0D: ILdRf var_90
  loc_A30F10: CastAd
  loc_A30F13: IStAdFunc
  loc_A30F17: FFree1Ad var_90
  loc_A30F1A: LitI2_Byte &HFF
  loc_A30F1C: FStI2 var_86
  loc_A30F1F: Branch loc_A30F27
  loc_A30F22: LitI2_Byte 0
  loc_A30F24: FStI2 var_86
  loc_A30F27: ExitProcI2
End Function

Private Function Proc_18_3_A17D60(arg_C) 'A17D60
  'Data Table: 4B72E0
  loc_A17D20: ILdRf arg_C
  loc_A17D23: FStStrCopy var_8C
  loc_A17D26: FLdRfVar var_8C
  loc_A17D29: CVarRef
  loc_A17D2E: ImpAdCallI2 IsDate()
  loc_A17D33: NotI4
  loc_A17D34: BranchF loc_A17D3E
  loc_A17D37: LitStr "La HORA no es válida. Reintente..."
  loc_A17D3A: FStStrCopy var_88
  loc_A17D3D: ExitProc
  loc_A17D3E: ILdRf var_8C
  loc_A17D41: CDateStr
  loc_A17D43: LitStr "00:00"
  loc_A17D46: CDateStr
  loc_A17D48: LtR8
  loc_A17D49: ILdRf var_8C
  loc_A17D4C: CDateStr
  loc_A17D4E: LitStr "23:59"
  loc_A17D51: CDateStr
  loc_A17D53: GtR4
  loc_A17D54: OrI4
  loc_A17D55: BranchF loc_A17D5F
  loc_A17D58: LitStr "La HORA no es válida. Reintente"
  loc_A17D5B: FStStrCopy var_88
  loc_A17D5E: ExitProc
  loc_A17D5F: ExitProc
End Function

Private Function Proc_18_4_AAC868(arg_C) 'AAC868
  'Data Table: 4B72E0
  loc_AAC7A8: LitI4 1
  loc_AAC7AD: ILdRf arg_C
  loc_AAC7B0: CVarRef
  loc_AAC7B5: FLdRfVar var_A8
  loc_AAC7B8: ImpAdCallFPR4  = Weekday(, )
  loc_AAC7BD: FLdRfVar var_A8
  loc_AAC7C0: LitVarI2 var_B8, 1
  loc_AAC7C5: HardType
  loc_AAC7C6: NeVar var_C8
  loc_AAC7CA: LitI4 1
  loc_AAC7CF: ILdRf arg_C
  loc_AAC7D2: CVarRef
  loc_AAC7D7: FLdRfVar var_E8
  loc_AAC7DA: ImpAdCallFPR4  = Weekday(, )
  loc_AAC7DF: FLdRfVar var_E8
  loc_AAC7E2: LitVarI2 var_F8, 7
  loc_AAC7E7: HardType
  loc_AAC7E8: NeVar var_108
  loc_AAC7EC: AndVar var_118
  loc_AAC7F0: CBoolVarNull
  loc_AAC7F2: FFreeVar var_A8 = ""
  loc_AAC7F9: BranchF loc_AAC865
  loc_AAC7FC: LitStr "SELECT HOUR(NOW()) Hora"
  loc_AAC7FF: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AAC804: FLdRfVar var_11C
  loc_AAC807: FMemLdPr
  loc_AAC80C:  = Me.RecordCount
  loc_AAC811: ILdRf var_11C
  loc_AAC814: LitI4 0
  loc_AAC819: GtI4
  loc_AAC81A: BranchF loc_AAC865
  loc_AAC81D: FLdRfVar var_A8
  loc_AAC820: FLdRfVar var_124
  loc_AAC823: LitVarStr var_98, "Hora"
  loc_AAC828: PopAdLdVar
  loc_AAC829: FLdRfVar var_120
  loc_AAC82C: FMemLdPr
  loc_AAC831:  = Me.Fields
  loc_AAC836: FLdPr var_120
  loc_AAC839: from_stack_2 = Me.Item(from_stack_1)
  loc_AAC83E: FLdPr var_124
  loc_AAC841:  = Me.Value
  loc_AAC846: FLdRfVar var_A8
  loc_AAC849: LitVarI2 var_B8, 14
  loc_AAC84E: HardType
  loc_AAC84F: LtVarBool
  loc_AAC851: FFreeAd var_120 = ""
  loc_AAC858: FFree1Var var_A8 = ""
  loc_AAC85B: BranchF loc_AAC865
  loc_AAC85E: LitStr "Este proceso solo se debe ejecutar despues de las 14 hs"
  loc_AAC861: FStStrCopy var_88
  loc_AAC864: ExitProc
  loc_AAC865: ExitProc
  loc_AAC866: MulI4
End Function

Private Function Proc_18_5_A95CFC(arg_C) 'A95CFC
  'Data Table: 4B72E0
  loc_A95C58: ILdRf arg_C
  loc_A95C5B: FStStrCopy var_8C
  loc_A95C5E: FLdRfVar var_8C
  loc_A95C61: CVarRef
  loc_A95C66: ImpAdCallI2 IsDate()
  loc_A95C6B: NotI4
  loc_A95C6C: BranchF loc_A95C76
  loc_A95C6F: LitStr "La FECHA NO ES VALIDA. Reintente..."
  loc_A95C72: FStStrCopy var_88
  loc_A95C75: ExitProc
  loc_A95C76: ILdRf var_8C
  loc_A95C79: CDateStr
  loc_A95C7B: LitStr "01/01/1950"
  loc_A95C7E: CDateStr
  loc_A95C80: LeR8
  loc_A95C81: BranchF loc_A95C8B
  loc_A95C84: LitStr "La FECHA NO PUEDE SER ANTERIOR al 01/01/1950. Reintente..."
  loc_A95C87: FStStrCopy var_88
  loc_A95C8A: ExitProc
  loc_A95C8B: ImpAdLdRf MemVar_D9302C
  loc_A95C8E: CVarRef
  loc_A95C93: FLdRfVar var_AC
  loc_A95C96: ImpAdCallFPR4  = Ucase()
  loc_A95C9B: FLdRfVar var_AC
  loc_A95C9E: LitVarStr var_BC, "HTC"
  loc_A95CA3: HardType
  loc_A95CA4: EqVarBool
  loc_A95CA6: FFree1Var var_AC = ""
  loc_A95CA9: BranchF loc_A95CF8
  loc_A95CAC: FLdRfVar var_8C
  loc_A95CAF: CVarRef
  loc_A95CB4: FLdRfVar var_AC
  loc_A95CB7: ImpAdCallFPR4  = Year()
  loc_A95CBC: FLdRfVar var_AC
  loc_A95CBF: CI2Var
  loc_A95CC0: ImpAdCallI2 Proc_18_126_A952D8()
  loc_A95CC5: FStStr var_D4
  loc_A95CC8: ILdRf var_8C
  loc_A95CCB: CDateStr
  loc_A95CCD: FLdZeroAd var_D4
  loc_A95CD0: FStStrNoPop var_D0
  loc_A95CD3: CDateStr
  loc_A95CD5: GtR4
  loc_A95CD6: FFreeStr var_D0 = ""
  loc_A95CDD: FFree1Var var_AC = ""
  loc_A95CE0: BranchF loc_A95CF8
  loc_A95CE3: LitStr "La Contabilidad NO se encuentra Cerrada para la fecha "
  loc_A95CE6: ILdRf var_8C
  loc_A95CE9: ConcatStr
  loc_A95CEA: FStStrNoPop var_D0
  loc_A95CED: LitStr ". Verifique..."
  loc_A95CF0: ConcatStr
  loc_A95CF1: FStStr var_88
  loc_A95CF4: FFree1Str var_D0
  loc_A95CF7: ExitProc
  loc_A95CF8: ExitProc
  loc_A95CF9: ImpAdLdRf MemVar_55B6CC
End Function

Private Function Proc_18_6_A08898(arg_C) 'A08898
  'Data Table: 4B72E0
  loc_A08864: ILdRf arg_C
  loc_A08867: FStStrCopy var_8C
  loc_A0886A: FLdRfVar var_8C
  loc_A0886D: CVarRef
  loc_A08872: ImpAdCallI2 IsDate()
  loc_A08877: NotI4
  loc_A08878: BranchF loc_A08882
  loc_A0887B: LitStr "La FECHA NO ES VALIDA. Reintente..."
  loc_A0887E: FStStrCopy var_88
  loc_A08881: ExitProc
  loc_A08882: ILdRf var_8C
  loc_A08885: CDateStr
  loc_A08887: LitStr "01/01/1990"
  loc_A0888A: CDateStr
  loc_A0888C: LeR8
  loc_A0888D: BranchF loc_A08897
  loc_A08890: LitStr "La FECHA NO PUEDE SER ANTERIOR al 01/01/1990. Reintente..."
  loc_A08893: FStStrCopy var_88
  loc_A08896: ExitProc
  loc_A08897: ExitProc
End Function

Private Function Proc_18_7_A46DF4(arg_C) 'A46DF4
  'Data Table: 4B72E0
  loc_A46DA0: ILdRf arg_C
  loc_A46DA3: FStStrCopy var_8C
  loc_A46DA6: FLdRfVar var_8C
  loc_A46DA9: CVarRef
  loc_A46DAE: ImpAdCallI2 IsDate()
  loc_A46DB3: NotI4
  loc_A46DB4: BranchF loc_A46DBE
  loc_A46DB7: LitStr "La FECHA NO ES VALIDA. Reintente..."
  loc_A46DBA: FStStrCopy var_88
  loc_A46DBD: ExitProc
  loc_A46DBE: ILdRf var_8C
  loc_A46DC1: CDateStr
  loc_A46DC3: LitStr "01/01/1900"
  loc_A46DC6: CDateStr
  loc_A46DC8: LeR8
  loc_A46DC9: BranchF loc_A46DD3
  loc_A46DCC: LitStr "La FECHA NO PUEDE SER ANTERIOR al 01/01/1900. Reintente..."
  loc_A46DCF: FStStrCopy var_88
  loc_A46DD2: ExitProc
  loc_A46DD3: LitI2_Byte 0
  loc_A46DD5: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A46DDA: FStFPR8 var_A4
  loc_A46DDD: ILdRf var_8C
  loc_A46DE0: CDateStr
  loc_A46DE2: FLdFPR8 var_A4
  loc_A46DE5: GtR4
  loc_A46DE6: BranchF loc_A46DF0
  loc_A46DE9: LitStr "La FECHA NO PUEDE SER POSTERIOR a HOY. Reintente..."
  loc_A46DEC: FStStrCopy var_88
  loc_A46DEF: ExitProc
  loc_A46DF0: ExitProc
End Function

Private Function Proc_18_8_A4C3D0(arg_C) 'A4C3D0
  'Data Table: 4B72E0
  loc_A4C37C: ILdRf arg_C
  loc_A4C37F: FStStrCopy var_8C
  loc_A4C382: FLdRfVar var_8C
  loc_A4C385: CVarRef
  loc_A4C38A: ImpAdCallI2 IsDate()
  loc_A4C38F: NotI4
  loc_A4C390: BranchF loc_A4C39A
  loc_A4C393: LitStr "La FECHA NO ES VALIDA. Reintente..."
  loc_A4C396: FStStrCopy var_88
  loc_A4C399: ExitProc
  loc_A4C39A: ILdRf var_8C
  loc_A4C39D: CDateStr
  loc_A4C39F: LitStr "01/01/1990"
  loc_A4C3A2: CDateStr
  loc_A4C3A4: LeR8
  loc_A4C3A5: BranchF loc_A4C3AF
  loc_A4C3A8: LitStr "La FECHA NO PUEDE SER ANTERIOR al 01/01/1990. Reintente..."
  loc_A4C3AB: FStStrCopy var_88
  loc_A4C3AE: ExitProc
  loc_A4C3AF: LitI2_Byte 0
  loc_A4C3B1: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A4C3B6: FStFPR8 var_A4
  loc_A4C3B9: ILdRf var_8C
  loc_A4C3BC: CDateStr
  loc_A4C3BE: FLdFPR8 var_A4
  loc_A4C3C1: GtR4
  loc_A4C3C2: BranchF loc_A4C3CC
  loc_A4C3C5: LitStr "La FECHA NO PUEDE SER POSTERIOR a HOY. Reintente..."
  loc_A4C3C8: FStStrCopy var_88
  loc_A4C3CB: ExitProc
  loc_A4C3CC: ExitProc
End Function

Private Function Proc_18_9_A10358(arg_C) 'A10358
  'Data Table: 4B72E0
  loc_A1031C: ILdRf arg_C
  loc_A1031F: FStStrCopy var_8C
  loc_A10322: FLdRfVar var_8C
  loc_A10325: CVarRef
  loc_A1032A: ImpAdCallI2 IsDate()
  loc_A1032F: NotI4
  loc_A10330: BranchF loc_A1033A
  loc_A10333: LitStr "La FECHA NO ES VALIDA. Reintente..."
  loc_A10336: FStStrCopy var_88
  loc_A10339: ExitProc
  loc_A1033A: LitI2_Byte 0
  loc_A1033C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A10341: FStFPR8 var_A4
  loc_A10344: ILdRf var_8C
  loc_A10347: CDateStr
  loc_A10349: FLdFPR8 var_A4
  loc_A1034C: LtR8
  loc_A1034D: BranchF loc_A10357
  loc_A10350: LitStr "La FECHA NO PUEDE SER ANTERIOR a HOY. Reintente..."
  loc_A10353: FStStrCopy var_88
  loc_A10356: ExitProc
  loc_A10357: ExitProc
End Function

Private Function Proc_18_10_A46E80(arg_C) 'A46E80
  'Data Table: 4B72E0
  loc_A46E2C: ILdRf arg_C
  loc_A46E2F: FStStrCopy var_8C
  loc_A46E32: FLdRfVar var_8C
  loc_A46E35: CVarRef
  loc_A46E3A: ImpAdCallI2 IsDate()
  loc_A46E3F: NotI4
  loc_A46E40: BranchF loc_A46E4A
  loc_A46E43: LitStr "La FECHA NO ES VALIDA. Reintente..."
  loc_A46E46: FStStrCopy var_88
  loc_A46E49: ExitProc
  loc_A46E4A: ILdRf var_8C
  loc_A46E4D: CDateStr
  loc_A46E4F: LitStr "01/01/1500"
  loc_A46E52: CDateStr
  loc_A46E54: LeR8
  loc_A46E55: BranchF loc_A46E5F
  loc_A46E58: LitStr "La FECHA NO PUEDE SER ANTERIOR al 01/01/1500. Reintente..."
  loc_A46E5B: FStStrCopy var_88
  loc_A46E5E: ExitProc
  loc_A46E5F: LitI2_Byte 0
  loc_A46E61: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A46E66: FStFPR8 var_A4
  loc_A46E69: ILdRf var_8C
  loc_A46E6C: CDateStr
  loc_A46E6E: FLdFPR8 var_A4
  loc_A46E71: GtR4
  loc_A46E72: BranchF loc_A46E7C
  loc_A46E75: LitStr "La FECHA NO PUEDE SER POSTERIOR a HOY. Reintente..."
  loc_A46E78: FStStrCopy var_88
  loc_A46E7B: ExitProc
  loc_A46E7C: ExitProc
End Function

Private Function Proc_18_11_A4C088(arg_C) 'A4C088
  'Data Table: 4B72E0
  loc_A4C034: ILdRf arg_C
  loc_A4C037: FStStrCopy var_8C
  loc_A4C03A: FLdRfVar var_8C
  loc_A4C03D: CVarRef
  loc_A4C042: ImpAdCallI2 IsDate()
  loc_A4C047: NotI4
  loc_A4C048: BranchF loc_A4C052
  loc_A4C04B: LitStr "La FECHA NO ES VALIDA. Reintente..."
  loc_A4C04E: FStStrCopy var_88
  loc_A4C051: ExitProc
  loc_A4C052: ILdRf var_8C
  loc_A4C055: CDateStr
  loc_A4C057: LitStr "30/11/2016"
  loc_A4C05A: CDateStr
  loc_A4C05C: LeR8
  loc_A4C05D: BranchF loc_A4C067
  loc_A4C060: LitStr "La FECHA NO PUEDE SER ANTERIOR al 30/11/2016. Reintente..."
  loc_A4C063: FStStrCopy var_88
  loc_A4C066: ExitProc
  loc_A4C067: LitI2_Byte 0
  loc_A4C069: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A4C06E: FStFPR8 var_A4
  loc_A4C071: ILdRf var_8C
  loc_A4C074: CDateStr
  loc_A4C076: FLdFPR8 var_A4
  loc_A4C079: GtR4
  loc_A4C07A: BranchF loc_A4C084
  loc_A4C07D: LitStr "La FECHA NO PUEDE SER POSTERIOR a HOY. Reintente..."
  loc_A4C080: FStStrCopy var_88
  loc_A4C083: ExitProc
  loc_A4C084: ExitProc
  loc_A4C085: CastAd
End Function

Private Function Proc_18_12_A83B84(arg_C, arg_10) 'A83B84
  'Data Table: 4B72E0
  loc_A83AFC: ILdRf arg_C
  loc_A83AFF: FStStrCopy var_8C
  loc_A83B02: ILdRf arg_10
  loc_A83B05: FStStrCopy var_90
  loc_A83B08: ILdRf var_90
  loc_A83B0B: ImpAdCallI2 Trim$()
  loc_A83B10: FStStrNoPop var_94
  loc_A83B13: LitStr vbNullString
  loc_A83B16: EqStr
  loc_A83B18: FFree1Str var_94
  loc_A83B1B: BranchF loc_A83B35
  loc_A83B1E: LitStr "Ingrese un Valor Válido para "
  loc_A83B21: ILdRf var_8C
  loc_A83B24: ConcatStr
  loc_A83B25: FStStrNoPop var_94
  loc_A83B28: LitStr " . Reintente..."
  loc_A83B2B: ConcatStr
  loc_A83B2C: FStStr var_88
  loc_A83B2F: FFree1Str var_94
  loc_A83B32: Branch loc_A83B82
  loc_A83B35: LitI4 1
  loc_A83B3A: ILdRf var_90
  loc_A83B3D: LitStr "'"
  loc_A83B40: LitI4 0
  loc_A83B45: FnInStr4
  loc_A83B47: LitI4 0
  loc_A83B4C: GtI4
  loc_A83B4D: BranchF loc_A83B5D
  loc_A83B50: LitStr "No debe utilizar (comilla simple) en el campo "
  loc_A83B53: ILdRf var_8C
  loc_A83B56: ConcatStr
  loc_A83B57: FStStr var_88
  loc_A83B5A: Branch loc_A83B82
  loc_A83B5D: LitI4 1
  loc_A83B62: ILdRf var_90
  loc_A83B65: LitStr ";"
  loc_A83B68: LitI4 0
  loc_A83B6D: FnInStr4
  loc_A83B6F: LitI4 0
  loc_A83B74: GtI4
  loc_A83B75: BranchF loc_A83B82
  loc_A83B78: LitStr "No debe utilizar (punto y coma) en el campo "
  loc_A83B7B: ILdRf var_8C
  loc_A83B7E: ConcatStr
  loc_A83B7F: FStStr var_88
  loc_A83B82: ExitProc
End Function

Private Function Proc_18_13_AC497C(arg_C, arg_10, arg_14, arg_18) 'AC497C
  'Data Table: 4B72E0
  loc_AC487C: ILdRf arg_C
  loc_AC487F: FStStrCopy var_8C
  loc_AC4882: ILdRf arg_10
  loc_AC4885: FStStrCopy var_90
  loc_AC4888: FLdI2 arg_18
  loc_AC488B: FLdI2 arg_14
  loc_AC488E: ILdRf var_90
  loc_AC4891: ILdRf var_8C
  loc_AC4894: ImpAdCallI2 Proc_18_17_ACA150(, , , )
  loc_AC4899: FStStr var_88
  loc_AC489C: ILdRf var_88
  loc_AC489F: LitStr vbNullString
  loc_AC48A2: NeStr
  loc_AC48A4: BranchF loc_AC48A8
  loc_AC48A7: ExitProc
  loc_AC48A8: LitI4 1
  loc_AC48AD: ILdRf var_90
  loc_AC48B0: LitStr "."
  loc_AC48B3: LitI4 0
  loc_AC48B8: FnInStr4
  loc_AC48BA: CI2I4
  loc_AC48BB: FStI2 var_92
  loc_AC48BE: FLdI2 var_92
  loc_AC48C1: CI4UI1
  loc_AC48C2: LitI4 1
  loc_AC48C7: ILdRf var_90
  loc_AC48CA: LitStr ","
  loc_AC48CD: LitI4 0
  loc_AC48D2: FnInStr4
  loc_AC48D4: AddI4
  loc_AC48D5: CI2I4
  loc_AC48D6: FStI2 var_92
  loc_AC48D9: FLdI2 var_92
  loc_AC48DC: LitI2_Byte 0
  loc_AC48DE: GtI2
  loc_AC48DF: BranchF loc_AC48F7
  loc_AC48E2: LitStr "Ingrese un Número Entero para "
  loc_AC48E5: ILdRf var_8C
  loc_AC48E8: ConcatStr
  loc_AC48E9: FStStrNoPop var_98
  loc_AC48EC: LitStr " . Reintente..."
  loc_AC48EF: ConcatStr
  loc_AC48F0: FStStr var_88
  loc_AC48F3: FFree1Str var_98
  loc_AC48F6: ExitProc
  loc_AC48F7: LitI4 2
  loc_AC48FC: FLdRfVar var_90
  loc_AC48FF: CVarRef
  loc_AC4904: FLdRfVar var_B8
  loc_AC4907: ImpAdCallFPR4  = Left(, )
  loc_AC490C: FLdRfVar var_B8
  loc_AC490F: FnCLngVar
  loc_AC4911: LitI4 &H63
  loc_AC4916: GtI4
  loc_AC4917: FFreeVar var_B8 = ""
  loc_AC491E: BranchF loc_AC4936
  loc_AC4921: LitStr "El Número es Mayor a 99 para "
  loc_AC4924: ILdRf var_8C
  loc_AC4927: ConcatStr
  loc_AC4928: FStStrNoPop var_98
  loc_AC492B: LitStr " . Reintente..."
  loc_AC492E: ConcatStr
  loc_AC492F: FStStr var_88
  loc_AC4932: FFree1Str var_98
  loc_AC4935: ExitProc
  loc_AC4936: FLdI2 arg_14
  loc_AC4939: LitI4 3
  loc_AC493E: FLdRfVar var_90
  loc_AC4941: CVarRef
  loc_AC4946: FLdRfVar var_B8
  loc_AC4949: ImpAdCallFPR4  = Left(, )
  loc_AC494E: FLdRfVar var_B8
  loc_AC4951: FnCLngVar
  loc_AC4953: LitI4 -99
  loc_AC4958: LtI4
  loc_AC4959: AndI4
  loc_AC495A: FFreeVar var_B8 = ""
  loc_AC4961: BranchF loc_AC4979
  loc_AC4964: LitStr "El Número es Menor a -99 para "
  loc_AC4967: ILdRf var_8C
  loc_AC496A: ConcatStr
  loc_AC496B: FStStrNoPop var_98
  loc_AC496E: LitStr " . Reintente..."
  loc_AC4971: ConcatStr
  loc_AC4972: FStStr var_88
  loc_AC4975: FFree1Str var_98
  loc_AC4978: ExitProc
  loc_AC4979: ExitProc
  loc_AC497A: FLdRfVar var_5800
End Function

Private Function Proc_18_14_AC4838(arg_C, arg_10, arg_14, arg_18) 'AC4838
  'Data Table: 4B72E0
  loc_AC4738: ILdRf arg_C
  loc_AC473B: FStStrCopy var_8C
  loc_AC473E: ILdRf arg_10
  loc_AC4741: FStStrCopy var_90
  loc_AC4744: FLdI2 arg_18
  loc_AC4747: FLdI2 arg_14
  loc_AC474A: ILdRf var_90
  loc_AC474D: ILdRf var_8C
  loc_AC4750: ImpAdCallI2 Proc_18_17_ACA150(, , , )
  loc_AC4755: FStStr var_88
  loc_AC4758: ILdRf var_88
  loc_AC475B: LitStr vbNullString
  loc_AC475E: NeStr
  loc_AC4760: BranchF loc_AC4764
  loc_AC4763: ExitProc
  loc_AC4764: LitI4 1
  loc_AC4769: ILdRf var_90
  loc_AC476C: LitStr "."
  loc_AC476F: LitI4 0
  loc_AC4774: FnInStr4
  loc_AC4776: CI2I4
  loc_AC4777: FStI2 var_92
  loc_AC477A: FLdI2 var_92
  loc_AC477D: CI4UI1
  loc_AC477E: LitI4 1
  loc_AC4783: ILdRf var_90
  loc_AC4786: LitStr ","
  loc_AC4789: LitI4 0
  loc_AC478E: FnInStr4
  loc_AC4790: AddI4
  loc_AC4791: CI2I4
  loc_AC4792: FStI2 var_92
  loc_AC4795: FLdI2 var_92
  loc_AC4798: LitI2_Byte 0
  loc_AC479A: GtI2
  loc_AC479B: BranchF loc_AC47B3
  loc_AC479E: LitStr "Ingrese un Número Entero para "
  loc_AC47A1: ILdRf var_8C
  loc_AC47A4: ConcatStr
  loc_AC47A5: FStStrNoPop var_98
  loc_AC47A8: LitStr ". Reintente..."
  loc_AC47AB: ConcatStr
  loc_AC47AC: FStStr var_88
  loc_AC47AF: FFree1Str var_98
  loc_AC47B2: ExitProc
  loc_AC47B3: LitI4 4
  loc_AC47B8: FLdRfVar var_90
  loc_AC47BB: CVarRef
  loc_AC47C0: FLdRfVar var_B8
  loc_AC47C3: ImpAdCallFPR4  = Left(, )
  loc_AC47C8: FLdRfVar var_B8
  loc_AC47CB: FnCLngVar
  loc_AC47CD: LitI4 &H270F
  loc_AC47D2: GtI4
  loc_AC47D3: FFreeVar var_B8 = ""
  loc_AC47DA: BranchF loc_AC47F2
  loc_AC47DD: LitStr "El Número es Mayor a 9999 para "
  loc_AC47E0: ILdRf var_8C
  loc_AC47E3: ConcatStr
  loc_AC47E4: FStStrNoPop var_98
  loc_AC47E7: LitStr " . Reintente..."
  loc_AC47EA: ConcatStr
  loc_AC47EB: FStStr var_88
  loc_AC47EE: FFree1Str var_98
  loc_AC47F1: ExitProc
  loc_AC47F2: FLdI2 arg_14
  loc_AC47F5: LitI4 5
  loc_AC47FA: FLdRfVar var_90
  loc_AC47FD: CVarRef
  loc_AC4802: FLdRfVar var_B8
  loc_AC4805: ImpAdCallFPR4  = Left(, )
  loc_AC480A: FLdRfVar var_B8
  loc_AC480D: FnCLngVar
  loc_AC480F: LitI4 -9999
  loc_AC4814: LtI4
  loc_AC4815: AndI4
  loc_AC4816: FFreeVar var_B8 = ""
  loc_AC481D: BranchF loc_AC4835
  loc_AC4820: LitStr "El Número es Menor a -9999 para "
  loc_AC4823: ILdRf var_8C
  loc_AC4826: ConcatStr
  loc_AC4827: FStStrNoPop var_98
  loc_AC482A: LitStr " . Reintente..."
  loc_AC482D: ConcatStr
  loc_AC482E: FStStr var_88
  loc_AC4831: FFree1Str var_98
  loc_AC4834: ExitProc
  loc_AC4835: ExitProc
End Function

Private Function Proc_18_15_A7C394(arg_C, arg_10, arg_14, arg_18) 'A7C394
  'Data Table: 4B72E0
  loc_A7C318: ILdRf arg_C
  loc_A7C31B: FStStrCopy var_8C
  loc_A7C31E: ILdRf arg_10
  loc_A7C321: FStStrCopy var_90
  loc_A7C324: FLdI2 arg_18
  loc_A7C327: FLdI2 arg_14
  loc_A7C32A: ILdRf var_90
  loc_A7C32D: ILdRf var_8C
  loc_A7C330: ImpAdCallI2 Proc_18_17_ACA150(, , , )
  loc_A7C335: FStStr var_88
  loc_A7C338: ILdRf var_88
  loc_A7C33B: LitStr vbNullString
  loc_A7C33E: NeStr
  loc_A7C340: BranchF loc_A7C344
  loc_A7C343: ExitProc
  loc_A7C344: LitI4 1
  loc_A7C349: ILdRf var_90
  loc_A7C34C: LitStr "."
  loc_A7C34F: LitI4 0
  loc_A7C354: FnInStr4
  loc_A7C356: CI2I4
  loc_A7C357: FStI2 var_92
  loc_A7C35A: FLdI2 var_92
  loc_A7C35D: CI4UI1
  loc_A7C35E: LitI4 1
  loc_A7C363: ILdRf var_90
  loc_A7C366: LitStr ","
  loc_A7C369: LitI4 0
  loc_A7C36E: FnInStr4
  loc_A7C370: AddI4
  loc_A7C371: CI2I4
  loc_A7C372: FStI2 var_92
  loc_A7C375: FLdI2 var_92
  loc_A7C378: LitI2_Byte 0
  loc_A7C37A: GtI2
  loc_A7C37B: BranchF loc_A7C393
  loc_A7C37E: LitStr "Ingrese un Número Entero para "
  loc_A7C381: ILdRf var_8C
  loc_A7C384: ConcatStr
  loc_A7C385: FStStrNoPop var_98
  loc_A7C388: LitStr " . Reintente..."
  loc_A7C38B: ConcatStr
  loc_A7C38C: FStStr var_88
  loc_A7C38F: FFree1Str var_98
  loc_A7C392: ExitProc
  loc_A7C393: ExitProc
End Function

Private Function Proc_18_16_A089D8(arg_C, arg_10, arg_14, arg_18) 'A089D8
  'Data Table: 4B72E0
  loc_A089A8: ILdRf arg_C
  loc_A089AB: FStStrCopy var_8C
  loc_A089AE: ILdRf arg_10
  loc_A089B1: FStStrCopy var_90
  loc_A089B4: FLdI2 arg_18
  loc_A089B7: FLdI2 arg_14
  loc_A089BA: ILdRf var_90
  loc_A089BD: ILdRf var_8C
  loc_A089C0: ImpAdCallI2 Proc_18_17_ACA150(, , , )
  loc_A089C5: FStStr var_88
  loc_A089C8: ILdRf var_88
  loc_A089CB: LitStr vbNullString
  loc_A089CE: NeStr
  loc_A089D0: BranchF loc_A089D4
  loc_A089D3: ExitProc
  loc_A089D4: ExitProc
End Function

Private Function Proc_18_17_ACA150(arg_C, arg_10, arg_14, arg_18) 'ACA150
  'Data Table: 4B72E0
  loc_ACA03C: ILdRf arg_C
  loc_ACA03F: FStStrCopy var_8C
  loc_ACA042: ILdRf arg_10
  loc_ACA045: FStStrCopy var_90
  loc_ACA048: FLdRfVar var_90
  loc_ACA04B: CVarRef
  loc_ACA050: ImpAdCallI2 IsNumeric()
  loc_ACA055: NotI4
  loc_ACA056: BranchF loc_ACA06E
  loc_ACA059: LitStr "Ingrese un Número para "
  loc_ACA05C: ILdRf var_8C
  loc_ACA05F: ConcatStr
  loc_ACA060: FStStrNoPop var_A4
  loc_ACA063: LitStr ". Reintente..."
  loc_ACA066: ConcatStr
  loc_ACA067: FStStr var_88
  loc_ACA06A: FFree1Str var_A4
  loc_ACA06D: ExitProc
  loc_ACA06E: LitI4 9
  loc_ACA073: FLdRfVar var_90
  loc_ACA076: CVarRef
  loc_ACA07B: FLdRfVar var_B4
  loc_ACA07E: ImpAdCallFPR4  = Left(, )
  loc_ACA083: FLdRfVar var_B4
  loc_ACA086: FnCLngVar
  loc_ACA088: LitI4 &H3B9AC9FF
  loc_ACA08D: GtI4
  loc_ACA08E: FFreeVar var_B4 = ""
  loc_ACA095: BranchF loc_ACA0AD
  loc_ACA098: LitStr "El Número es Mayor a 999.999.999 para "
  loc_ACA09B: ILdRf var_8C
  loc_ACA09E: ConcatStr
  loc_ACA09F: FStStrNoPop var_A4
  loc_ACA0A2: LitStr " . Reintente..."
  loc_ACA0A5: ConcatStr
  loc_ACA0A6: FStStr var_88
  loc_ACA0A9: FFree1Str var_A4
  loc_ACA0AC: ExitProc
  loc_ACA0AD: FLdI2 arg_14
  loc_ACA0B0: NotI4
  loc_ACA0B1: BranchF loc_ACA0F6
  loc_ACA0B4: LitI4 9
  loc_ACA0B9: FLdRfVar var_90
  loc_ACA0BC: CVarRef
  loc_ACA0C1: FLdRfVar var_B4
  loc_ACA0C4: ImpAdCallFPR4  = Left(, )
  loc_ACA0C9: FLdRfVar var_B4
  loc_ACA0CC: FnCLngVar
  loc_ACA0CE: LitI4 0
  loc_ACA0D3: LtI4
  loc_ACA0D4: FFreeVar var_B4 = ""
  loc_ACA0DB: BranchF loc_ACA0F3
  loc_ACA0DE: LitStr "Ingrese un Número Positivo para "
  loc_ACA0E1: ILdRf var_8C
  loc_ACA0E4: ConcatStr
  loc_ACA0E5: FStStrNoPop var_A4
  loc_ACA0E8: LitStr " . Reintente..."
  loc_ACA0EB: ConcatStr
  loc_ACA0EC: FStStr var_88
  loc_ACA0EF: FFree1Str var_A4
  loc_ACA0F2: ExitProc
  loc_ACA0F3: Branch loc_ACA135
  loc_ACA0F6: LitI4 &HA
  loc_ACA0FB: FLdRfVar var_90
  loc_ACA0FE: CVarRef
  loc_ACA103: FLdRfVar var_B4
  loc_ACA106: ImpAdCallFPR4  = Left(, )
  loc_ACA10B: FLdRfVar var_B4
  loc_ACA10E: FnCLngVar
  loc_ACA110: LitI4 -99999999
  loc_ACA115: LtI4
  loc_ACA116: FFreeVar var_B4 = ""
  loc_ACA11D: BranchF loc_ACA135
  loc_ACA120: LitStr "El Número es Menor a -99.999.999 para "
  loc_ACA123: ILdRf var_8C
  loc_ACA126: ConcatStr
  loc_ACA127: FStStrNoPop var_A4
  loc_ACA12A: LitStr " . Reintente..."
  loc_ACA12D: ConcatStr
  loc_ACA12E: FStStr var_88
  loc_ACA131: FFree1Str var_A4
  loc_ACA134: ExitProc
  loc_ACA135: FLdI2 arg_18
  loc_ACA138: NotI4
  loc_ACA139: BranchF loc_ACA14F
  loc_ACA13C: ILdRf var_90
  loc_ACA13F: CR8Str
  loc_ACA141: LitI2_Byte 0
  loc_ACA143: CR8I2
  loc_ACA144: EqR4
  loc_ACA145: BranchF loc_ACA14F
  loc_ACA148: LitStr "Ingrese un Número distinto de Cero. Reintente..."
  loc_ACA14B: FStStrCopy var_88
  loc_ACA14E: ExitProc
  loc_ACA14F: ExitProc
End Function

Private Function Proc_18_18_A41358(arg_C, arg_10, arg_14) 'A41358
  'Data Table: 4B72E0
  loc_A4130C: ILdRf arg_C
  loc_A4130F: FStStrCopy var_8C
  loc_A41312: ILdRf arg_10
  loc_A41315: FStStrCopy var_90
  loc_A41318: LitI2_Byte 0
  loc_A4131A: FLdI2 arg_14
  loc_A4131D: ILdRf var_90
  loc_A41320: ILdRf var_8C
  loc_A41323: ImpAdCallI2 Proc_18_17_ACA150(, , , )
  loc_A41328: FStStr var_88
  loc_A4132B: ILdRf var_88
  loc_A4132E: LitStr vbNullString
  loc_A41331: NeStr
  loc_A41333: BranchF loc_A41337
  loc_A41336: ExitProc
  loc_A41337: ILdRf var_90
  loc_A4133A: CI2Str
  loc_A4133C: LitI2 1970
  loc_A4133F: LtI2
  loc_A41340: ILdRf var_90
  loc_A41343: CI2Str
  loc_A41345: LitI2 2500
  loc_A41348: GtI2
  loc_A41349: OrI4
  loc_A4134A: BranchF loc_A41354
  loc_A4134D: LitStr "El periodo es incorrecto. Debe ingresar un valor entre 1970 y 2500. Reintente..."
  loc_A41350: FStStrCopy var_88
  loc_A41353: ExitProc
  loc_A41354: ExitProc
End Function

Private Function Proc_18_19_A413E4(arg_C) 'A413E4
  'Data Table: 4B72E0
  loc_A41394: ILdRf arg_C
  loc_A41397: FStStrCopy var_8C
  loc_A4139A: LitI2_Byte 0
  loc_A4139C: LitI2_Byte 0
  loc_A4139E: ILdRf var_8C
  loc_A413A1: LitStr "el Periodo"
  loc_A413A4: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A413A9: FStStr var_88
  loc_A413AC: ILdRf var_88
  loc_A413AF: LitStr vbNullString
  loc_A413B2: NeStr
  loc_A413B4: ILdRf var_8C
  loc_A413B7: CR8Str
  loc_A413B9: ImpAdLdI2 MemVar_D93034
  loc_A413BC: CR8I2
  loc_A413BD: EqR4
  loc_A413BE: AndI4
  loc_A413BF: BranchF loc_A413C6
  loc_A413C2: ExitProc
  loc_A413C3: Branch loc_A413E2
  loc_A413C6: ILdRf var_88
  loc_A413C9: LitStr vbNullString
  loc_A413CC: NeStr
  loc_A413CE: ILdRf var_8C
  loc_A413D1: CR8Str
  loc_A413D3: ImpAdLdI2 MemVar_D93034
  loc_A413D6: CR8I2
  loc_A413D7: NeR8
  loc_A413D8: OrI4
  loc_A413D9: BranchF loc_A413E2
  loc_A413DC: LitStr " El Periodo es Incorrecto. Reintente..."
  loc_A413DF: FStStrCopy var_88
  loc_A413E2: ExitProc
End Function

Private Function Proc_18_20_A590E4(arg_C) 'A590E4
  'Data Table: 4B72E0
  loc_A5908C: ILdRf arg_C
  loc_A5908F: FStStrCopy var_8C
  loc_A59092: LitI2_Byte 0
  loc_A59094: LitI2_Byte 0
  loc_A59096: ILdRf var_8C
  loc_A59099: LitStr "el Codigo de la CALLE"
  loc_A5909C: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A590A1: FStStr var_88
  loc_A590A4: ILdRf var_88
  loc_A590A7: LitStr vbNullString
  loc_A590AA: NeStr
  loc_A590AC: BranchF loc_A590B0
  loc_A590AF: ExitProc
  loc_A590B0: LitStr "SELECT infogov.calle.CodiCall FROM infogov.calle WHERE CodiCall = "
  loc_A590B3: ILdRf var_8C
  loc_A590B6: ConcatStr
  loc_A590B7: FStStrNoPop var_90
  loc_A590BA: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A590BF: FFree1Str var_90
  loc_A590C2: FLdRfVar var_94
  loc_A590C5: FMemLdPr
  loc_A590CA:  = Me.RecordCount
  loc_A590CF: ILdRf var_94
  loc_A590D2: LitI4 0
  loc_A590D7: EqI4
  loc_A590D8: BranchF loc_A590E1
  loc_A590DB: LitStr "El CODIGO de la CALLE no existe. Reintente..."
  loc_A590DE: FStStrCopy var_88
  loc_A590E1: ExitProc
End Function

Private Function Proc_18_21_A58FBC(arg_C) 'A58FBC
  'Data Table: 4B72E0
  loc_A58F64: ILdRf arg_C
  loc_A58F67: FStStrCopy var_8C
  loc_A58F6A: LitI2_Byte 0
  loc_A58F6C: LitI2_Byte 0
  loc_A58F6E: ILdRf var_8C
  loc_A58F71: LitStr "el Codigo del BARRIO"
  loc_A58F74: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_A58F79: FStStr var_88
  loc_A58F7C: ILdRf var_88
  loc_A58F7F: LitStr vbNullString
  loc_A58F82: NeStr
  loc_A58F84: BranchF loc_A58F88
  loc_A58F87: ExitProc
  loc_A58F88: LitStr "SELECT infogov.barrio.CodiBarr FROM infogov.barrio WHERE CodiBarr = "
  loc_A58F8B: ILdRf var_8C
  loc_A58F8E: ConcatStr
  loc_A58F8F: FStStrNoPop var_90
  loc_A58F92: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A58F97: FFree1Str var_90
  loc_A58F9A: FLdRfVar var_94
  loc_A58F9D: FMemLdPr
  loc_A58FA2:  = Me.RecordCount
  loc_A58FA7: ILdRf var_94
  loc_A58FAA: LitI4 0
  loc_A58FAF: EqI4
  loc_A58FB0: BranchF loc_A58FB9
  loc_A58FB3: LitStr "El CODIGO de BARRIO no existe. Reintente..."
  loc_A58FB6: FStStrCopy var_88
  loc_A58FB9: ExitProc
  loc_A58FBA: AddR8
End Function

Private Function Proc_18_22_A588CC(arg_C) 'A588CC
  'Data Table: 4B72E0
  loc_A58874: ILdRf arg_C
  loc_A58877: FStStrCopy var_8C
  loc_A5887A: LitI2_Byte 0
  loc_A5887C: LitI2_Byte 0
  loc_A5887E: ILdRf var_8C
  loc_A58881: LitStr "el Codigo de la LOCALIDAD"
  loc_A58884: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A58889: FStStr var_88
  loc_A5888C: ILdRf var_88
  loc_A5888F: LitStr vbNullString
  loc_A58892: NeStr
  loc_A58894: BranchF loc_A58898
  loc_A58897: ExitProc
  loc_A58898: LitStr "SELECT infogov.localidad.CodiLoca FROM infogov.localidad WHERE CodiLoca = "
  loc_A5889B: ILdRf var_8C
  loc_A5889E: ConcatStr
  loc_A5889F: FStStrNoPop var_90
  loc_A588A2: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A588A7: FFree1Str var_90
  loc_A588AA: FLdRfVar var_94
  loc_A588AD: FMemLdPr
  loc_A588B2:  = Me.RecordCount
  loc_A588B7: ILdRf var_94
  loc_A588BA: LitI4 0
  loc_A588BF: EqI4
  loc_A588C0: BranchF loc_A588C9
  loc_A588C3: LitStr "El CODIGO de BARRIO no existe. Reintente..."
  loc_A588C6: FStStrCopy var_88
  loc_A588C9: ExitProc
  loc_A588CA: ILdR8 var_57FC
End Function

Private Function Proc_18_23_A82980(arg_C, arg_10) 'A82980
  'Data Table: 4B72E0
  loc_A82904: ILdRf arg_C
  loc_A82907: FStStrCopy var_8C
  loc_A8290A: ILdRf arg_10
  loc_A8290D: FStStrCopy var_90
  loc_A82910: LitI2_Byte 0
  loc_A82912: LitI2_Byte 0
  loc_A82914: ILdRf var_8C
  loc_A82917: LitStr "el Código de Movimiento"
  loc_A8291A: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_A8291F: FStStr var_88
  loc_A82922: ILdRf var_88
  loc_A82925: LitStr vbNullString
  loc_A82928: NeStr
  loc_A8292A: BranchF loc_A8292E
  loc_A8292D: ExitProc
  loc_A8292E: LitStr "SELECT CodiTimo FROM tipomovi WHERE CodiTimo = "
  loc_A82931: ILdRf var_8C
  loc_A82934: ConcatStr
  loc_A82935: FStStrNoPop var_94
  loc_A82938: LitStr " AND DecrTimo = '"
  loc_A8293B: ConcatStr
  loc_A8293C: FStStrNoPop var_98
  loc_A8293F: ILdRf var_90
  loc_A82942: ConcatStr
  loc_A82943: FStStrNoPop var_9C
  loc_A82946: LitStr "'"
  loc_A82949: ConcatStr
  loc_A8294A: FStStrNoPop var_A0
  loc_A8294D: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A82952: FFreeStr var_94 = "": var_98 = "": var_9C = ""
  loc_A8295D: FLdRfVar var_A4
  loc_A82960: FMemLdPr
  loc_A82965:  = Me.RecordCount
  loc_A8296A: ILdRf var_A4
  loc_A8296D: LitI4 0
  loc_A82972: EqI4
  loc_A82973: BranchF loc_A8297C
  loc_A82976: LitStr "El CODIGO de MOVIMIENTO no corresponde. Reintente..."
  loc_A82979: FStStrCopy var_88
  loc_A8297C: ExitProc
  loc_A8297D: CR8R8
  loc_A8297E: VCallFPR8 unk_4B1AE8
End Function

Private Function Proc_18_24_A57368(arg_C) 'A57368
  'Data Table: 4B72E0
  loc_A57310: ILdRf arg_C
  loc_A57313: FStStrCopy var_8C
  loc_A57316: LitI2_Byte 0
  loc_A57318: LitI2_Byte 0
  loc_A5731A: ILdRf var_8C
  loc_A5731D: LitStr "el Codigo de la OFICINA"
  loc_A57320: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A57325: FStStr var_88
  loc_A57328: ILdRf var_88
  loc_A5732B: LitStr vbNullString
  loc_A5732E: NeStr
  loc_A57330: BranchF loc_A57334
  loc_A57333: ExitProc
  loc_A57334: LitStr "SELECT CodiOfic FROM oficina WHERE CodiOfic = "
  loc_A57337: ILdRf var_8C
  loc_A5733A: ConcatStr
  loc_A5733B: FStStrNoPop var_90
  loc_A5733E: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A57343: FFree1Str var_90
  loc_A57346: FLdRfVar var_94
  loc_A57349: FMemLdPr
  loc_A5734E:  = Me.RecordCount
  loc_A57353: ILdRf var_94
  loc_A57356: LitI4 0
  loc_A5735B: EqI4
  loc_A5735C: BranchF loc_A57365
  loc_A5735F: LitStr "El CODIGO OFICINA no existe. Reintente..."
  loc_A57362: FStStrCopy var_88
  loc_A57365: ExitProc
  loc_A57366: FLdPr var_5800
End Function

Private Function Proc_18_25_A7CBA0(arg_10) 'A7CBA0
  'Data Table: 4B72E0
  loc_A7CB2C: ILdRf arg_10
  loc_A7CB2F: FStStrCopy var_8C
  loc_A7CB32: LitI2_Byte 0
  loc_A7CB34: LitI2_Byte 0
  loc_A7CB36: ILdRf var_8C
  loc_A7CB39: LitStr "el Codigo del Tipo De Liquidacion"
  loc_A7CB3C: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A7CB41: FStStr var_88
  loc_A7CB44: ILdRf var_88
  loc_A7CB47: LitStr vbNullString
  loc_A7CB4A: NeStr
  loc_A7CB4C: BranchF loc_A7CB50
  loc_A7CB4F: ExitProc
  loc_A7CB50: LitStr "SELECT CodiTili FROM tipoliqu WHERE CodiOfic = "
  loc_A7CB53: FLdUI1
  loc_A7CB57: CStrI2
  loc_A7CB59: FStStrNoPop var_90
  loc_A7CB5C: ConcatStr
  loc_A7CB5D: FStStrNoPop var_94
  loc_A7CB60: LitStr " AND CodiTili = "
  loc_A7CB63: ConcatStr
  loc_A7CB64: FStStrNoPop var_98
  loc_A7CB67: ILdRf var_8C
  loc_A7CB6A: ConcatStr
  loc_A7CB6B: FStStrNoPop var_9C
  loc_A7CB6E: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A7CB73: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_A7CB7E: FLdRfVar var_A0
  loc_A7CB81: FMemLdPr
  loc_A7CB86:  = Me.RecordCount
  loc_A7CB8B: ILdRf var_A0
  loc_A7CB8E: LitI4 0
  loc_A7CB93: EqI4
  loc_A7CB94: BranchF loc_A7CB9D
  loc_A7CB97: LitStr "El CODIGO del Tipo de Liquidación NO existe. Reintente..."
  loc_A7CB9A: FStStrCopy var_88
  loc_A7CB9D: ExitProc
  loc_A7CB9E: VCallAd Control_ID_
End Function

Private Function Proc_18_26_B7A828(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) 'B7A828
  'Data Table: 4B72E0
  loc_B7A358: ILdRf arg_10
  loc_B7A35B: FStStrCopy var_8C
  loc_B7A35E: ILdRf var_8C
  loc_B7A361: LitStr "el Codigo de Concepto"
  loc_B7A364: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_B7A369: FStStr var_88
  loc_B7A36C: ILdRf var_88
  loc_B7A36F: LitStr vbNullString
  loc_B7A372: NeStr
  loc_B7A374: BranchF loc_B7A378
  loc_B7A377: ExitProc
  loc_B7A378: LitStr "SELECT * FROM concepto WHERE PeriInfo = "
  loc_B7A37B: FLdI2 arg_C
  loc_B7A37E: CStrUI1
  loc_B7A380: FStStrNoPop var_90
  loc_B7A383: ConcatStr
  loc_B7A384: FStStrNoPop var_94
  loc_B7A387: LitStr " AND CodiConc = '"
  loc_B7A38A: ConcatStr
  loc_B7A38B: FStStrNoPop var_98
  loc_B7A38E: ILdRf var_8C
  loc_B7A391: ConcatStr
  loc_B7A392: FStStrNoPop var_9C
  loc_B7A395: LitStr "'"
  loc_B7A398: ConcatStr
  loc_B7A399: FStStrNoPop var_A0
  loc_B7A39C: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_B7A3A1: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_B7A3AE: FLdRfVar var_A4
  loc_B7A3B1: FMemLdPr
  loc_B7A3B6:  = Me.RecordCount
  loc_B7A3BB: ILdRf var_A4
  loc_B7A3BE: LitI4 0
  loc_B7A3C3: EqI4
  loc_B7A3C4: BranchF loc_B7A3CE
  loc_B7A3C7: LitStr "El CODIGO de CONCEPTO no existe. Reintente..."
  loc_B7A3CA: FStStrCopy var_88
  loc_B7A3CD: ExitProc
  loc_B7A3CE: FLdI2 arg_14
  loc_B7A3D1: LitI2_Byte &HFF
  loc_B7A3D3: EqI2
  loc_B7A3D4: BranchF loc_B7A41E
  loc_B7A3D7: FLdRfVar var_CC
  loc_B7A3DA: FLdRfVar var_BC
  loc_B7A3DD: LitVarStr var_B8, "AforConc"
  loc_B7A3E2: PopAdLdVar
  loc_B7A3E3: FLdRfVar var_A8
  loc_B7A3E6: FMemLdPr
  loc_B7A3EB:  = Me.Fields
  loc_B7A3F0: FLdPr var_A8
  loc_B7A3F3: from_stack_2 = Me.Item(from_stack_1)
  loc_B7A3F8: FLdPr var_BC
  loc_B7A3FB:  = Me.Value
  loc_B7A400: FLdRfVar var_CC
  loc_B7A403: LitVarStr var_DC, "0"
  loc_B7A408: HardType
  loc_B7A409: EqVarBool
  loc_B7A40B: FFreeAd var_A8 = ""
  loc_B7A412: FFree1Var var_CC = ""
  loc_B7A415: BranchF loc_B7A41E
  loc_B7A418: LitStr "El CONCEPTO no se puede utilizar, tiene que ser de INGRESOS o AFOROS. Reintente..."
  loc_B7A41B: FStStrCopy var_88
  loc_B7A41E: FLdI2 arg_18
  loc_B7A421: LitI2_Byte &HFF
  loc_B7A423: EqI2
  loc_B7A424: BranchF loc_B7A494
  loc_B7A427: FLdRfVar var_A4
  loc_B7A42A: FMemLdPr
  loc_B7A42F:  = Me.RecordCount
  loc_B7A434: ILdRf var_A4
  loc_B7A437: LitI4 1
  loc_B7A43C: EqI4
  loc_B7A43D: CVarBoolI2 var_FC
  loc_B7A441: FLdRfVar var_CC
  loc_B7A444: FLdRfVar var_BC
  loc_B7A447: LitVarStr var_B8, "DevsConc"
  loc_B7A44C: PopAdLdVar
  loc_B7A44D: FLdRfVar var_A8
  loc_B7A450: FMemLdPr
  loc_B7A455:  = Me.Fields
  loc_B7A45A: FLdPr var_A8
  loc_B7A45D: from_stack_2 = Me.Item(from_stack_1)
  loc_B7A462: FLdPr var_BC
  loc_B7A465:  = Me.Value
  loc_B7A46A: FLdRfVar var_CC
  loc_B7A46D: LitVarStr var_DC, "No"
  loc_B7A472: HardType
  loc_B7A473: EqVar var_EC
  loc_B7A477: AndVar var_10C
  loc_B7A47B: CBoolVarNull
  loc_B7A47D: FFreeAd var_A8 = ""
  loc_B7A484: FFreeVar var_CC = ""
  loc_B7A48B: BranchF loc_B7A494
  loc_B7A48E: LitStr "El CONCEPTO no se utiliza para DEUDORES VARIOS SIN CREACION DE CUENTA. Reintente..."
  loc_B7A491: FStStrCopy var_88
  loc_B7A494: FLdI2 arg_1C
  loc_B7A497: LitI2_Byte &HFF
  loc_B7A499: EqI2
  loc_B7A49A: BranchF loc_B7A50A
  loc_B7A49D: FLdRfVar var_A4
  loc_B7A4A0: FMemLdPr
  loc_B7A4A5:  = Me.RecordCount
  loc_B7A4AA: ILdRf var_A4
  loc_B7A4AD: LitI4 1
  loc_B7A4B2: EqI4
  loc_B7A4B3: CVarBoolI2 var_FC
  loc_B7A4B7: FLdRfVar var_CC
  loc_B7A4BA: FLdRfVar var_BC
  loc_B7A4BD: LitVarStr var_B8, "DevcConc"
  loc_B7A4C2: PopAdLdVar
  loc_B7A4C3: FLdRfVar var_A8
  loc_B7A4C6: FMemLdPr
  loc_B7A4CB:  = Me.Fields
  loc_B7A4D0: FLdPr var_A8
  loc_B7A4D3: from_stack_2 = Me.Item(from_stack_1)
  loc_B7A4D8: FLdPr var_BC
  loc_B7A4DB:  = Me.Value
  loc_B7A4E0: FLdRfVar var_CC
  loc_B7A4E3: LitVarStr var_DC, "No"
  loc_B7A4E8: HardType
  loc_B7A4E9: EqVar var_EC
  loc_B7A4ED: AndVar var_10C
  loc_B7A4F1: CBoolVarNull
  loc_B7A4F3: FFreeAd var_A8 = ""
  loc_B7A4FA: FFreeVar var_CC = ""
  loc_B7A501: BranchF loc_B7A50A
  loc_B7A504: LitStr "El CONCEPTO no se utiliza para DEUDORES VARIOS CON CREACION DE CUENTA. Reintente..."
  loc_B7A507: FStStrCopy var_88
  loc_B7A50A: FLdI2 arg_20
  loc_B7A50D: LitI2_Byte &HFF
  loc_B7A50F: EqI2
  loc_B7A510: BranchF loc_B7A580
  loc_B7A513: FLdRfVar var_A4
  loc_B7A516: FMemLdPr
  loc_B7A51B:  = Me.RecordCount
  loc_B7A520: ILdRf var_A4
  loc_B7A523: LitI4 1
  loc_B7A528: EqI4
  loc_B7A529: CVarBoolI2 var_FC
  loc_B7A52D: FLdRfVar var_CC
  loc_B7A530: FLdRfVar var_BC
  loc_B7A533: LitVarStr var_B8, "DevsConc"
  loc_B7A538: PopAdLdVar
  loc_B7A539: FLdRfVar var_A8
  loc_B7A53C: FMemLdPr
  loc_B7A541:  = Me.Fields
  loc_B7A546: FLdPr var_A8
  loc_B7A549: from_stack_2 = Me.Item(from_stack_1)
  loc_B7A54E: FLdPr var_BC
  loc_B7A551:  = Me.Value
  loc_B7A556: FLdRfVar var_CC
  loc_B7A559: LitVarStr var_DC, "Si"
  loc_B7A55E: HardType
  loc_B7A55F: EqVar var_EC
  loc_B7A563: AndVar var_10C
  loc_B7A567: CBoolVarNull
  loc_B7A569: FFreeAd var_A8 = ""
  loc_B7A570: FFreeVar var_CC = ""
  loc_B7A577: BranchF loc_B7A580
  loc_B7A57A: LitStr "El CONCEPTO SOLO se utiliza para DEUDORES VARIOS SIN CREACION DE CUENTA. Reintente..."
  loc_B7A57D: FStStrCopy var_88
  loc_B7A580: FLdI2 arg_24
  loc_B7A583: LitI2_Byte &HFF
  loc_B7A585: EqI2
  loc_B7A586: BranchF loc_B7A5F6
  loc_B7A589: FLdRfVar var_A4
  loc_B7A58C: FMemLdPr
  loc_B7A591:  = Me.RecordCount
  loc_B7A596: ILdRf var_A4
  loc_B7A599: LitI4 1
  loc_B7A59E: EqI4
  loc_B7A59F: CVarBoolI2 var_FC
  loc_B7A5A3: FLdRfVar var_CC
  loc_B7A5A6: FLdRfVar var_BC
  loc_B7A5A9: LitVarStr var_B8, "IngrConc"
  loc_B7A5AE: PopAdLdVar
  loc_B7A5AF: FLdRfVar var_A8
  loc_B7A5B2: FMemLdPr
  loc_B7A5B7:  = Me.Fields
  loc_B7A5BC: FLdPr var_A8
  loc_B7A5BF: from_stack_2 = Me.Item(from_stack_1)
  loc_B7A5C4: FLdPr var_BC
  loc_B7A5C7:  = Me.Value
  loc_B7A5CC: FLdRfVar var_CC
  loc_B7A5CF: LitVarStr var_DC, vbNullString
  loc_B7A5D4: HardType
  loc_B7A5D5: EqVar var_EC
  loc_B7A5D9: AndVar var_10C
  loc_B7A5DD: CBoolVarNull
  loc_B7A5DF: FFreeAd var_A8 = ""
  loc_B7A5E6: FFreeVar var_CC = ""
  loc_B7A5ED: BranchF loc_B7A5F6
  loc_B7A5F0: LitStr "El concepto no tiene asociado la cuenta contable de INGRESOS. Reintente..."
  loc_B7A5F3: FStStrCopy var_88
  loc_B7A5F6: FLdI2 arg_28
  loc_B7A5F9: LitI2_Byte &HFF
  loc_B7A5FB: EqI2
  loc_B7A5FC: BranchF loc_B7A66C
  loc_B7A5FF: FLdRfVar var_A4
  loc_B7A602: FMemLdPr
  loc_B7A607:  = Me.RecordCount
  loc_B7A60C: ILdRf var_A4
  loc_B7A60F: LitI4 1
  loc_B7A614: EqI4
  loc_B7A615: CVarBoolI2 var_FC
  loc_B7A619: FLdRfVar var_CC
  loc_B7A61C: FLdRfVar var_BC
  loc_B7A61F: LitVarStr var_B8, "ActiConc"
  loc_B7A624: PopAdLdVar
  loc_B7A625: FLdRfVar var_A8
  loc_B7A628: FMemLdPr
  loc_B7A62D:  = Me.Fields
  loc_B7A632: FLdPr var_A8
  loc_B7A635: from_stack_2 = Me.Item(from_stack_1)
  loc_B7A63A: FLdPr var_BC
  loc_B7A63D:  = Me.Value
  loc_B7A642: FLdRfVar var_CC
  loc_B7A645: LitVarStr var_DC, vbNullString
  loc_B7A64A: HardType
  loc_B7A64B: EqVar var_EC
  loc_B7A64F: AndVar var_10C
  loc_B7A653: CBoolVarNull
  loc_B7A655: FFreeAd var_A8 = ""
  loc_B7A65C: FFreeVar var_CC = ""
  loc_B7A663: BranchF loc_B7A66C
  loc_B7A666: LitStr "El concepto no tiene asociado la cuenta contable de ACTIVO. Reintente..."
  loc_B7A669: FStStrCopy var_88
  loc_B7A66C: FLdI2 arg_2C
  loc_B7A66F: LitI2_Byte &HFF
  loc_B7A671: EqI2
  loc_B7A672: BranchF loc_B7A6E2
  loc_B7A675: FLdRfVar var_A4
  loc_B7A678: FMemLdPr
  loc_B7A67D:  = Me.RecordCount
  loc_B7A682: ILdRf var_A4
  loc_B7A685: LitI4 1
  loc_B7A68A: EqI4
  loc_B7A68B: CVarBoolI2 var_FC
  loc_B7A68F: FLdRfVar var_CC
  loc_B7A692: FLdRfVar var_BC
  loc_B7A695: LitVarStr var_B8, "TiafConc"
  loc_B7A69A: PopAdLdVar
  loc_B7A69B: FLdRfVar var_A8
  loc_B7A69E: FMemLdPr
  loc_B7A6A3:  = Me.Fields
  loc_B7A6A8: FLdPr var_A8
  loc_B7A6AB: from_stack_2 = Me.Item(from_stack_1)
  loc_B7A6B0: FLdPr var_BC
  loc_B7A6B3:  = Me.Value
  loc_B7A6B8: FLdRfVar var_CC
  loc_B7A6BB: LitVarI2 var_DC, 0
  loc_B7A6C0: HardType
  loc_B7A6C1: EqVar var_EC
  loc_B7A6C5: AndVar var_10C
  loc_B7A6C9: CBoolVarNull
  loc_B7A6CB: FFreeAd var_A8 = ""
  loc_B7A6D2: FFreeVar var_CC = ""
  loc_B7A6D9: BranchF loc_B7A6E2
  loc_B7A6DC: LitStr "El concepto no tiene asociado ningún tipo de movimiento. Ejemplo: 1-Aforo, 2-Pago, etc. Reintente..."
  loc_B7A6DF: FStStrCopy var_88
  loc_B7A6E2: LitStr "SELECT * FROM concepto WHERE PeriInfo = "
  loc_B7A6E5: ImpAdLdI2 MemVar_D93034
  loc_B7A6E8: CStrUI1
  loc_B7A6EA: FStStrNoPop var_90
  loc_B7A6ED: ConcatStr
  loc_B7A6EE: FStStrNoPop var_94
  loc_B7A6F1: LitStr " AND CodiConc = '"
  loc_B7A6F4: ConcatStr
  loc_B7A6F5: FStStrNoPop var_98
  loc_B7A6F8: ILdRf var_8C
  loc_B7A6FB: ConcatStr
  loc_B7A6FC: FStStrNoPop var_9C
  loc_B7A6FF: LitStr "'"
  loc_B7A702: ConcatStr
  loc_B7A703: FStStrNoPop var_A0
  loc_B7A706: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_B7A70B: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_B7A718: FLdRfVar var_A4
  loc_B7A71B: FMemLdPr
  loc_B7A720:  = Me.RecordCount
  loc_B7A725: ILdRf var_A4
  loc_B7A728: LitI4 0
  loc_B7A72D: EqI4
  loc_B7A72E: BranchF loc_B7A738
  loc_B7A731: LitStr "El CODIGO de CONCEPTO no existe, en el periodo ACTUAl. Reintente..."
  loc_B7A734: FStStrCopy var_88
  loc_B7A737: ExitProc
  loc_B7A738: FLdI2 arg_30
  loc_B7A73B: LitI2_Byte &HFF
  loc_B7A73D: EqI2
  loc_B7A73E: BranchF loc_B7A7AE
  loc_B7A741: FLdRfVar var_A4
  loc_B7A744: FMemLdPr
  loc_B7A749:  = Me.RecordCount
  loc_B7A74E: ILdRf var_A4
  loc_B7A751: LitI4 1
  loc_B7A756: EqI4
  loc_B7A757: CVarBoolI2 var_FC
  loc_B7A75B: FLdRfVar var_CC
  loc_B7A75E: FLdRfVar var_BC
  loc_B7A761: LitVarStr var_B8, "IngrConc"
  loc_B7A766: PopAdLdVar
  loc_B7A767: FLdRfVar var_A8
  loc_B7A76A: FMemLdPr
  loc_B7A76F:  = Me.Fields
  loc_B7A774: FLdPr var_A8
  loc_B7A777: from_stack_2 = Me.Item(from_stack_1)
  loc_B7A77C: FLdPr var_BC
  loc_B7A77F:  = Me.Value
  loc_B7A784: FLdRfVar var_CC
  loc_B7A787: LitVarStr var_DC, vbNullString
  loc_B7A78C: HardType
  loc_B7A78D: EqVar var_EC
  loc_B7A791: AndVar var_10C
  loc_B7A795: CBoolVarNull
  loc_B7A797: FFreeAd var_A8 = ""
  loc_B7A79E: FFreeVar var_CC = ""
  loc_B7A7A5: BranchF loc_B7A7AE
  loc_B7A7A8: LitStr "El concepto del periodo actual no tiene asociado la cuenta contable de INGRESOS. Reintente..."
  loc_B7A7AB: FStStrCopy var_88
  loc_B7A7AE: FLdI2 arg_34
  loc_B7A7B1: LitI2_Byte &HFF
  loc_B7A7B3: EqI2
  loc_B7A7B4: BranchF loc_B7A824
  loc_B7A7B7: FLdRfVar var_A4
  loc_B7A7BA: FMemLdPr
  loc_B7A7BF:  = Me.RecordCount
  loc_B7A7C4: ILdRf var_A4
  loc_B7A7C7: LitI4 1
  loc_B7A7CC: EqI4
  loc_B7A7CD: CVarBoolI2 var_FC
  loc_B7A7D1: FLdRfVar var_CC
  loc_B7A7D4: FLdRfVar var_BC
  loc_B7A7D7: LitVarStr var_B8, "ActiConc"
  loc_B7A7DC: PopAdLdVar
  loc_B7A7DD: FLdRfVar var_A8
  loc_B7A7E0: FMemLdPr
  loc_B7A7E5:  = Me.Fields
  loc_B7A7EA: FLdPr var_A8
  loc_B7A7ED: from_stack_2 = Me.Item(from_stack_1)
  loc_B7A7F2: FLdPr var_BC
  loc_B7A7F5:  = Me.Value
  loc_B7A7FA: FLdRfVar var_CC
  loc_B7A7FD: LitVarStr var_DC, vbNullString
  loc_B7A802: HardType
  loc_B7A803: EqVar var_EC
  loc_B7A807: AndVar var_10C
  loc_B7A80B: CBoolVarNull
  loc_B7A80D: FFreeAd var_A8 = ""
  loc_B7A814: FFreeVar var_CC = ""
  loc_B7A81B: BranchF loc_B7A824
  loc_B7A81E: LitStr "El concepto del periodo actual no tiene asociado la cuenta contable de ACTIVO. Reintente..."
  loc_B7A821: FStStrCopy var_88
  loc_B7A824: ExitProc
End Function

Private Function Proc_18_27_A554C4(arg_C) 'A554C4
  'Data Table: 4B72E0
  loc_A5546C: ILdRf arg_C
  loc_A5546F: FStStrCopy var_8C
  loc_A55472: LitI2_Byte 0
  loc_A55474: LitI2_Byte 0
  loc_A55476: ILdRf var_8C
  loc_A55479: LitStr "el Código de Cementerio"
  loc_A5547C: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_A55481: FStStr var_88
  loc_A55484: ILdRf var_88
  loc_A55487: LitStr vbNullString
  loc_A5548A: NeStr
  loc_A5548C: BranchF loc_A55490
  loc_A5548F: ExitProc
  loc_A55490: LitStr "SELECT * FROM cementerio WHERE CodiCeme = "
  loc_A55493: ILdRf var_8C
  loc_A55496: ConcatStr
  loc_A55497: FStStrNoPop var_90
  loc_A5549A: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A5549F: FFree1Str var_90
  loc_A554A2: FLdRfVar var_94
  loc_A554A5: FMemLdPr
  loc_A554AA:  = Me.RecordCount
  loc_A554AF: ILdRf var_94
  loc_A554B2: LitI4 0
  loc_A554B7: EqI4
  loc_A554B8: BranchF loc_A554C1
  loc_A554BB: LitStr "El CODIGO de Cementerio no existe. Reintente..."
  loc_A554BE: FStStrCopy var_88
  loc_A554C1: ExitProc
  loc_A554C2: Ary1LdPr
End Function

Private Function Proc_18_28_A555EC(arg_C) 'A555EC
  'Data Table: 4B72E0
  loc_A55594: ILdRf arg_C
  loc_A55597: FStStrCopy var_8C
  loc_A5559A: LitI2_Byte 0
  loc_A5559C: LitI2_Byte 0
  loc_A5559E: ILdRf var_8C
  loc_A555A1: LitStr "el Codigo de Tipo Sepultura"
  loc_A555A4: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_A555A9: FStStr var_88
  loc_A555AC: ILdRf var_88
  loc_A555AF: LitStr vbNullString
  loc_A555B2: NeStr
  loc_A555B4: BranchF loc_A555B8
  loc_A555B7: ExitProc
  loc_A555B8: LitStr "SELECT * FROM tiposepu WHERE CodiTise = "
  loc_A555BB: ILdRf var_8C
  loc_A555BE: ConcatStr
  loc_A555BF: FStStrNoPop var_90
  loc_A555C2: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A555C7: FFree1Str var_90
  loc_A555CA: FLdRfVar var_94
  loc_A555CD: FMemLdPr
  loc_A555D2:  = Me.RecordCount
  loc_A555D7: ILdRf var_94
  loc_A555DA: LitI4 0
  loc_A555DF: EqI4
  loc_A555E0: BranchF loc_A555E9
  loc_A555E3: LitStr "El CODIGO de Tipo De Sepultura no existe. Reintente..."
  loc_A555E6: FStStrCopy var_88
  loc_A555E9: ExitProc
  loc_A555EA: FStI2 var_5701
End Function

Private Function Proc_18_29_AC46E8(arg_C, arg_10, arg_14) 'AC46E8
  'Data Table: 4B72E0
  loc_AC45F4: ILdRf arg_C
  loc_AC45F7: FStStrCopy var_8C
  loc_AC45FA: ILdRf arg_14
  loc_AC45FD: FStStrCopy var_90
  loc_AC4600: LitI2_Byte 0
  loc_AC4602: LitI2_Byte 0
  loc_AC4604: ILdRf var_8C
  loc_AC4607: LitStr "el Codigo del servicio de cementerio"
  loc_AC460A: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_AC460F: FStStr var_88
  loc_AC4612: ILdRf var_88
  loc_AC4615: LitStr vbNullString
  loc_AC4618: NeStr
  loc_AC461A: BranchF loc_AC461E
  loc_AC461D: ExitProc
  loc_AC461E: LitStr "SELECT * FROM servceme WHERE CodiSece = "
  loc_AC4621: ILdRf var_8C
  loc_AC4624: ConcatStr
  loc_AC4625: FStStrNoPop var_94
  loc_AC4628: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AC462D: FFree1Str var_94
  loc_AC4630: FLdRfVar var_98
  loc_AC4633: FMemLdPr
  loc_AC4638:  = Me.RecordCount
  loc_AC463D: ILdRf var_98
  loc_AC4640: LitI4 0
  loc_AC4645: EqI4
  loc_AC4646: BranchF loc_AC4652
  loc_AC4649: LitStr "El código del servicio de cementerio no existe. Reintente..."
  loc_AC464C: FStStrCopy var_88
  loc_AC464F: Branch loc_AC46E5
  loc_AC4652: FLdRfVar var_C0
  loc_AC4655: FLdRfVar var_B0
  loc_AC4658: LitVarStr var_AC, "CodiTise"
  loc_AC465D: PopAdLdVar
  loc_AC465E: FLdRfVar var_9C
  loc_AC4661: FMemLdPr
  loc_AC4666:  = Me.Fields
  loc_AC466B: FLdPr var_9C
  loc_AC466E: from_stack_2 = Me.Item(from_stack_1)
  loc_AC4673: FLdPr var_B0
  loc_AC4676:  = Me.Value
  loc_AC467B: FLdRfVar var_C0
  loc_AC467E: FLdI2 arg_10
  loc_AC4681: CVarI2 var_D0
  loc_AC4684: HardType
  loc_AC4685: NeVarBool
  loc_AC4687: FFreeAd var_9C = ""
  loc_AC468E: FFree1Var var_C0 = ""
  loc_AC4691: BranchF loc_AC469D
  loc_AC4694: LitStr "El código del servicio tiene un tipo de sepultura distinto. Reintente..."
  loc_AC4697: FStStrCopy var_88
  loc_AC469A: Branch loc_AC46E5
  loc_AC469D: FLdRfVar var_C0
  loc_AC46A0: FLdRfVar var_B0
  loc_AC46A3: LitVarStr var_AC, "EmisSece"
  loc_AC46A8: PopAdLdVar
  loc_AC46A9: FLdRfVar var_9C
  loc_AC46AC: FMemLdPr
  loc_AC46B1:  = Me.Fields
  loc_AC46B6: FLdPr var_9C
  loc_AC46B9: from_stack_2 = Me.Item(from_stack_1)
  loc_AC46BE: FLdPr var_B0
  loc_AC46C1:  = Me.Value
  loc_AC46C6: FLdRfVar var_C0
  loc_AC46C9: ILdRf var_90
  loc_AC46CC: CVarStr var_D0
  loc_AC46CF: HardType
  loc_AC46D0: NeVarBool
  loc_AC46D2: FFreeAd var_9C = ""
  loc_AC46D9: FFree1Var var_C0 = ""
  loc_AC46DC: BranchF loc_AC46E5
  loc_AC46DF: LitStr "Verifique la emisión del servicio."
  loc_AC46E2: FStStrCopy var_88
  loc_AC46E5: ExitProc
End Function

Private Function Proc_18_30_A55680(arg_C) 'A55680
  'Data Table: 4B72E0
  loc_A55628: ILdRf arg_C
  loc_A5562B: FStStrCopy var_8C
  loc_A5562E: LitI2_Byte 0
  loc_A55630: LitI2_Byte 0
  loc_A55632: ILdRf var_8C
  loc_A55635: LitStr "el Codigo del Ramo"
  loc_A55638: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A5563D: FStStr var_88
  loc_A55640: ILdRf var_88
  loc_A55643: LitStr vbNullString
  loc_A55646: NeStr
  loc_A55648: BranchF loc_A5564C
  loc_A5564B: ExitProc
  loc_A5564C: LitStr "SELECT CodiRamo FROM ramo WHERE CodiRamo = "
  loc_A5564F: ILdRf var_8C
  loc_A55652: ConcatStr
  loc_A55653: FStStrNoPop var_90
  loc_A55656: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A5565B: FFree1Str var_90
  loc_A5565E: FLdRfVar var_94
  loc_A55661: FMemLdPr
  loc_A55666:  = Me.RecordCount
  loc_A5566B: ILdRf var_94
  loc_A5566E: LitI4 0
  loc_A55673: EqI4
  loc_A55674: BranchF loc_A5567D
  loc_A55677: LitStr "El CODIGO del Ramo no existe. Reintente..."
  loc_A5567A: FStStrCopy var_88
  loc_A5567D: ExitProc
End Function

Private Function Proc_18_31_A7B970(arg_C, arg_10) 'A7B970
  'Data Table: 4B72E0
  loc_A7B900: ILdRf arg_C
  loc_A7B903: FStStrCopy var_8C
  loc_A7B906: ILdRf arg_10
  loc_A7B909: FStStrCopy var_90
  loc_A7B90C: LitI2_Byte 0
  loc_A7B90E: LitI2_Byte 0
  loc_A7B910: ILdRf var_90
  loc_A7B913: LitStr "el Codigo del Rubro"
  loc_A7B916: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A7B91B: FStStr var_88
  loc_A7B91E: ILdRf var_88
  loc_A7B921: LitStr vbNullString
  loc_A7B924: NeStr
  loc_A7B926: BranchF loc_A7B92A
  loc_A7B929: ExitProc
  loc_A7B92A: LitStr "SELECT CodiRubr FROM rubro WHERE CodiRamo = "
  loc_A7B92D: ILdRf var_8C
  loc_A7B930: ConcatStr
  loc_A7B931: FStStrNoPop var_94
  loc_A7B934: LitStr " AND CodiRubr = "
  loc_A7B937: ConcatStr
  loc_A7B938: FStStrNoPop var_98
  loc_A7B93B: ILdRf var_90
  loc_A7B93E: ConcatStr
  loc_A7B93F: FStStrNoPop var_9C
  loc_A7B942: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A7B947: FFreeStr var_94 = "": var_98 = ""
  loc_A7B950: FLdRfVar var_A0
  loc_A7B953: FMemLdPr
  loc_A7B958:  = Me.RecordCount
  loc_A7B95D: ILdRf var_A0
  loc_A7B960: LitI4 0
  loc_A7B965: EqI4
  loc_A7B966: BranchF loc_A7B96F
  loc_A7B969: LitStr "El CODIGO del Rubro no existe. Reintente..."
  loc_A7B96C: FStStrCopy var_88
  loc_A7B96F: ExitProc
End Function

Private Function Proc_18_32_AE3A18(arg_C, arg_10, arg_14) 'AE3A18
  'Data Table: 4B72E0
  loc_AE38D8: ILdRf arg_C
  loc_AE38DB: FStStrCopy var_8C
  loc_AE38DE: ILdRf arg_10
  loc_AE38E1: FStStrCopy var_90
  loc_AE38E4: ILdRf arg_14
  loc_AE38E7: FStStrCopy var_94
  loc_AE38EA: ILdRf var_94
  loc_AE38ED: LitStr "el Código del SubRubro"
  loc_AE38F0: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AE38F5: FStStr var_88
  loc_AE38F8: ILdRf var_88
  loc_AE38FB: LitStr vbNullString
  loc_AE38FE: NeStr
  loc_AE3900: BranchF loc_AE3904
  loc_AE3903: ExitProc
  loc_AE3904: LitStr "Municipalidad de Guaymallén"
  loc_AE3907: LitStr "Municipalidad de Malargüe"
  loc_AE390A: EqStr
  loc_AE390C: BranchF loc_AE3969
  loc_AE390F: LitStr "SELECT CodiSubr FROM subrubro WHERE CodiRamo = "
  loc_AE3912: ILdRf var_8C
  loc_AE3915: ConcatStr
  loc_AE3916: FStStrNoPop var_98
  loc_AE3919: LitStr " AND CodiRubr = "
  loc_AE391C: ConcatStr
  loc_AE391D: FStStrNoPop var_9C
  loc_AE3920: ILdRf var_90
  loc_AE3923: ConcatStr
  loc_AE3924: FStStrNoPop var_A0
  loc_AE3927: LitStr " AND CodiSubr = "
  loc_AE392A: ConcatStr
  loc_AE392B: FStStrNoPop var_A4
  loc_AE392E: ILdRf var_94
  loc_AE3931: ConcatStr
  loc_AE3932: FStStrNoPop var_A8
  loc_AE3935: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AE393A: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_AE3947: FLdRfVar var_AC
  loc_AE394A: FMemLdPr
  loc_AE394F:  = Me.RecordCount
  loc_AE3954: ILdRf var_AC
  loc_AE3957: LitI4 0
  loc_AE395C: EqI4
  loc_AE395D: BranchF loc_AE3966
  loc_AE3960: LitStr "El CÓDIGO del SubRubro no existe. Reintente..."
  loc_AE3963: FStStrCopy var_88
  loc_AE3966: Branch loc_AE3A16
  loc_AE3969: LitStr "SELECT CodiSubr, BajaFeho FROM subrubro WHERE CodiRamo = "
  loc_AE396C: ILdRf var_8C
  loc_AE396F: ConcatStr
  loc_AE3970: FStStrNoPop var_98
  loc_AE3973: LitStr " AND CodiRubr = "
  loc_AE3976: ConcatStr
  loc_AE3977: FStStrNoPop var_9C
  loc_AE397A: ILdRf var_90
  loc_AE397D: ConcatStr
  loc_AE397E: FStStrNoPop var_A0
  loc_AE3981: LitStr " AND PeriOrde = "
  loc_AE3984: ConcatStr
  loc_AE3985: FStStrNoPop var_A4
  loc_AE3988: ImpAdLdI2 MemVar_D93036
  loc_AE398B: CStrUI1
  loc_AE398D: FStStrNoPop var_A8
  loc_AE3990: ConcatStr
  loc_AE3991: FStStrNoPop var_B0
  loc_AE3994: LitStr " AND CodiSubr = "
  loc_AE3997: ConcatStr
  loc_AE3998: FStStrNoPop var_B4
  loc_AE399B: ILdRf var_94
  loc_AE399E: ConcatStr
  loc_AE399F: FStStrNoPop var_B8
  loc_AE39A2: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AE39A7: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_B0 = "": var_B4 = ""
  loc_AE39BA: FLdRfVar var_AC
  loc_AE39BD: FMemLdPr
  loc_AE39C2:  = Me.RecordCount
  loc_AE39C7: ILdRf var_AC
  loc_AE39CA: LitI4 0
  loc_AE39CF: EqI4
  loc_AE39D0: BranchF loc_AE39DC
  loc_AE39D3: LitStr "El CÓDIGO del SubRubro no existe. Reintente..."
  loc_AE39D6: FStStrCopy var_88
  loc_AE39D9: Branch loc_AE3A16
  loc_AE39DC: FLdRfVar var_D0
  loc_AE39DF: LitVarStr var_CC, "BajaFeho"
  loc_AE39E4: PopAdLdVar
  loc_AE39E5: FLdRfVar var_BC
  loc_AE39E8: FMemLdPr
  loc_AE39ED:  = Me.Fields
  loc_AE39F2: FLdPr var_BC
  loc_AE39F5: from_stack_2 = Me.Item(from_stack_1)
  loc_AE39FA: FLdZeroAd var_D0
  loc_AE39FD: CVarAd
  loc_AE3A01: ImpAdCallI2 IsNull()
  loc_AE3A06: NotI4
  loc_AE3A07: FFree1Ad var_BC
  loc_AE3A0A: FFree1Var var_E0 = ""
  loc_AE3A0D: BranchF loc_AE3A16
  loc_AE3A10: LitStr "El SubRubro se encuentra de baja. Reintente..."
  loc_AE3A13: FStStrCopy var_88
  loc_AE3A16: ExitProc
End Function

Private Function Proc_18_33_A55964(arg_C) 'A55964
  'Data Table: 4B72E0
  loc_A5590C: ILdRf arg_C
  loc_A5590F: FStStrCopy var_8C
  loc_A55912: LitI2_Byte 0
  loc_A55914: LitI2_Byte 0
  loc_A55916: ILdRf var_8C
  loc_A55919: LitStr "el Código del SubRubro"
  loc_A5591C: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A55921: FStStr var_88
  loc_A55924: ILdRf var_88
  loc_A55927: LitStr vbNullString
  loc_A5592A: NeStr
  loc_A5592C: BranchF loc_A55930
  loc_A5592F: ExitProc
  loc_A55930: LitStr "SELECT CodiSubr FROM subrubro WHERE CodiSubr = "
  loc_A55933: ILdRf var_8C
  loc_A55936: ConcatStr
  loc_A55937: FStStrNoPop var_90
  loc_A5593A: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A5593F: FFree1Str var_90
  loc_A55942: FLdRfVar var_94
  loc_A55945: FMemLdPr
  loc_A5594A:  = Me.RecordCount
  loc_A5594F: ILdRf var_94
  loc_A55952: LitI4 0
  loc_A55957: EqI4
  loc_A55958: BranchF loc_A55961
  loc_A5595B: LitStr "El CÓDIGO del SubRubro no existe. Reintente..."
  loc_A5595E: FStStrCopy var_88
  loc_A55961: ExitProc
End Function

Private Function Proc_18_34_A58710(arg_C) 'A58710
  'Data Table: 4B72E0
  loc_A586B8: ILdRf arg_C
  loc_A586BB: FStStrCopy var_8C
  loc_A586BE: LitI2_Byte &HFF
  loc_A586C0: LitI2_Byte 0
  loc_A586C2: ILdRf var_8C
  loc_A586C5: LitStr "el Codigo del Estado"
  loc_A586C8: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A586CD: FStStr var_88
  loc_A586D0: ILdRf var_88
  loc_A586D3: LitStr vbNullString
  loc_A586D6: NeStr
  loc_A586D8: BranchF loc_A586DC
  loc_A586DB: ExitProc
  loc_A586DC: LitStr "SELECT CodiEsin FROM estainmu WHERE CodiEsin = "
  loc_A586DF: ILdRf var_8C
  loc_A586E2: ConcatStr
  loc_A586E3: FStStrNoPop var_90
  loc_A586E6: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A586EB: FFree1Str var_90
  loc_A586EE: FLdRfVar var_94
  loc_A586F1: FMemLdPr
  loc_A586F6:  = Me.RecordCount
  loc_A586FB: ILdRf var_94
  loc_A586FE: LitI4 0
  loc_A58703: EqI4
  loc_A58704: BranchF loc_A5870D
  loc_A58707: LitStr "El CODIGO del Estado no existe. Reintente..."
  loc_A5870A: FStStrCopy var_88
  loc_A5870D: ExitProc
End Function

Private Function Proc_18_35_A55E04(arg_C) 'A55E04
  'Data Table: 4B72E0
  loc_A55DAC: ILdRf arg_C
  loc_A55DAF: FStStrCopy var_8C
  loc_A55DB2: LitI2_Byte &HFF
  loc_A55DB4: LitI2_Byte 0
  loc_A55DB6: ILdRf var_8C
  loc_A55DB9: LitStr "el Codigo de la Ubicación"
  loc_A55DBC: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A55DC1: FStStr var_88
  loc_A55DC4: ILdRf var_88
  loc_A55DC7: LitStr vbNullString
  loc_A55DCA: NeStr
  loc_A55DCC: BranchF loc_A55DD0
  loc_A55DCF: ExitProc
  loc_A55DD0: LitStr "SELECT CodiUbic FROM tipoubic WHERE CodiUbic = "
  loc_A55DD3: ILdRf var_8C
  loc_A55DD6: ConcatStr
  loc_A55DD7: FStStrNoPop var_90
  loc_A55DDA: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A55DDF: FFree1Str var_90
  loc_A55DE2: FLdRfVar var_94
  loc_A55DE5: FMemLdPr
  loc_A55DEA:  = Me.RecordCount
  loc_A55DEF: ILdRf var_94
  loc_A55DF2: LitI4 0
  loc_A55DF7: EqI4
  loc_A55DF8: BranchF loc_A55E01
  loc_A55DFB: LitStr "El CODIGO de la ubicación no existe. Reintente..."
  loc_A55DFE: FStStrCopy var_88
  loc_A55E01: ExitProc
End Function

Private Function Proc_18_36_A55C48(arg_C) 'A55C48
  'Data Table: 4B72E0
  loc_A55BF0: ILdRf arg_C
  loc_A55BF3: FStStrCopy var_8C
  loc_A55BF6: LitI2_Byte &HFF
  loc_A55BF8: LitI2_Byte 0
  loc_A55BFA: ILdRf var_8C
  loc_A55BFD: LitStr "el Codigo de la Zona"
  loc_A55C00: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A55C05: FStStr var_88
  loc_A55C08: ILdRf var_88
  loc_A55C0B: LitStr vbNullString
  loc_A55C0E: NeStr
  loc_A55C10: BranchF loc_A55C14
  loc_A55C13: ExitProc
  loc_A55C14: LitStr "SELECT CodiZoin FROM zonainmu WHERE CodiZoin = "
  loc_A55C17: ILdRf var_8C
  loc_A55C1A: ConcatStr
  loc_A55C1B: FStStrNoPop var_90
  loc_A55C1E: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A55C23: FFree1Str var_90
  loc_A55C26: FLdRfVar var_94
  loc_A55C29: FMemLdPr
  loc_A55C2E:  = Me.RecordCount
  loc_A55C33: ILdRf var_94
  loc_A55C36: LitI4 0
  loc_A55C3B: EqI4
  loc_A55C3C: BranchF loc_A55C45
  loc_A55C3F: LitStr "El CODIGO de La Zona no existe. Reintente..."
  loc_A55C42: FStStrCopy var_88
  loc_A55C45: ExitProc
End Function

Private Function Proc_18_37_A8EFF0(arg_C, arg_10, arg_14) 'A8EFF0
  'Data Table: 4B72E0
  loc_A8EF64: ILdRf arg_C
  loc_A8EF67: FStStrCopy var_8C
  loc_A8EF6A: LitI2_Byte 0
  loc_A8EF6C: LitI2_Byte 0
  loc_A8EF6E: ILdRf var_8C
  loc_A8EF71: LitStr "el Codigo de la Zona"
  loc_A8EF74: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A8EF79: FStStr var_88
  loc_A8EF7C: ILdRf var_88
  loc_A8EF7F: LitStr vbNullString
  loc_A8EF82: NeStr
  loc_A8EF84: BranchF loc_A8EF88
  loc_A8EF87: ExitProc
  loc_A8EF88: LitStr "SELECT CodiZoin FROM avalinmu WHERE CodiZoin = "
  loc_A8EF8B: ILdRf var_8C
  loc_A8EF8E: ConcatStr
  loc_A8EF8F: FStStrNoPop var_90
  loc_A8EF92: LitStr " AND CodiTram = "
  loc_A8EF95: ConcatStr
  loc_A8EF96: FStStrNoPop var_94
  loc_A8EF99: FLdI2 arg_10
  loc_A8EF9C: CStrUI1
  loc_A8EF9E: FStStrNoPop var_98
  loc_A8EFA1: ConcatStr
  loc_A8EFA2: FStStrNoPop var_9C
  loc_A8EFA5: LitStr " AND CodiSubt = "
  loc_A8EFA8: ConcatStr
  loc_A8EFA9: FStStrNoPop var_A0
  loc_A8EFAC: FLdI2 arg_14
  loc_A8EFAF: CStrUI1
  loc_A8EFB1: FStStrNoPop var_A4
  loc_A8EFB4: ConcatStr
  loc_A8EFB5: FStStrNoPop var_A8
  loc_A8EFB8: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A8EFBD: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A8EFCE: FLdRfVar var_AC
  loc_A8EFD1: FMemLdPr
  loc_A8EFD6:  = Me.RecordCount
  loc_A8EFDB: ILdRf var_AC
  loc_A8EFDE: LitI4 0
  loc_A8EFE3: EqI4
  loc_A8EFE4: BranchF loc_A8EFED
  loc_A8EFE7: LitStr "La combinacion de ZONA, TRAMO, SUBTRAMO no existen. Reintente..."
  loc_A8EFEA: FStStrCopy var_88
  loc_A8EFED: ExitProc
End Function

Private Function Proc_18_38_A58838(arg_C) 'A58838
  'Data Table: 4B72E0
  loc_A587E0: ILdRf arg_C
  loc_A587E3: FStStrCopy var_8C
  loc_A587E6: LitI2_Byte &HFF
  loc_A587E8: LitI2_Byte 0
  loc_A587EA: ILdRf var_8C
  loc_A587ED: LitStr "el Codigo del Grupo"
  loc_A587F0: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A587F5: FStStr var_88
  loc_A587F8: ILdRf var_88
  loc_A587FB: LitStr vbNullString
  loc_A587FE: NeStr
  loc_A58800: BranchF loc_A58804
  loc_A58803: ExitProc
  loc_A58804: LitStr "SELECT CodiGrin FROM grupinmu WHERE CodiGrin = "
  loc_A58807: ILdRf var_8C
  loc_A5880A: ConcatStr
  loc_A5880B: FStStrNoPop var_90
  loc_A5880E: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A58813: FFree1Str var_90
  loc_A58816: FLdRfVar var_94
  loc_A58819: FMemLdPr
  loc_A5881E:  = Me.RecordCount
  loc_A58823: ILdRf var_94
  loc_A58826: LitI4 0
  loc_A5882B: EqI4
  loc_A5882C: BranchF loc_A58835
  loc_A5882F: LitStr "El CODIGO del Grupo NO existe. Reintente..."
  loc_A58832: FStStrCopy var_88
  loc_A58835: ExitProc
End Function

Private Function Proc_18_39_A5661C(arg_C) 'A5661C
  'Data Table: 4B72E0
  loc_A565C4: ILdRf arg_C
  loc_A565C7: FStStrCopy var_8C
  loc_A565CA: LitI2_Byte 0
  loc_A565CC: LitI2_Byte 0
  loc_A565CE: ILdRf var_8C
  loc_A565D1: LitStr "el Codigo del ENTE RECAUDADOR"
  loc_A565D4: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A565D9: FStStr var_88
  loc_A565DC: ILdRf var_88
  loc_A565DF: LitStr vbNullString
  loc_A565E2: NeStr
  loc_A565E4: BranchF loc_A565E8
  loc_A565E7: ExitProc
  loc_A565E8: LitStr "SELECT * FROM infogov.entereca WHERE CodiEnre = "
  loc_A565EB: ILdRf var_8C
  loc_A565EE: ConcatStr
  loc_A565EF: FStStrNoPop var_90
  loc_A565F2: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A565F7: FFree1Str var_90
  loc_A565FA: FLdRfVar var_94
  loc_A565FD: FMemLdPr
  loc_A56602:  = Me.RecordCount
  loc_A56607: ILdRf var_94
  loc_A5660A: LitI4 0
  loc_A5660F: EqI4
  loc_A56610: BranchF loc_A56619
  loc_A56613: LitStr "El CODIGO del ENTE RECAUDADOR no existe. Reintente..."
  loc_A56616: FStStrCopy var_88
  loc_A56619: ExitProc
End Function

Private Function Proc_18_40_A5686C(arg_C) 'A5686C
  'Data Table: 4B72E0
  loc_A56814: ILdRf arg_C
  loc_A56817: FStStrCopy var_8C
  loc_A5681A: LitI2_Byte 0
  loc_A5681C: LitI2_Byte 0
  loc_A5681E: ILdRf var_8C
  loc_A56821: LitStr "el Codigo del RECAUDADOR"
  loc_A56824: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A56829: FStStr var_88
  loc_A5682C: ILdRf var_88
  loc_A5682F: LitStr vbNullString
  loc_A56832: NeStr
  loc_A56834: BranchF loc_A56838
  loc_A56837: ExitProc
  loc_A56838: LitStr "SELECT * FROM recaudador WHERE CodiReca = "
  loc_A5683B: ILdRf var_8C
  loc_A5683E: ConcatStr
  loc_A5683F: FStStrNoPop var_90
  loc_A56842: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A56847: FFree1Str var_90
  loc_A5684A: FLdRfVar var_94
  loc_A5684D: FMemLdPr
  loc_A56852:  = Me.RecordCount
  loc_A56857: ILdRf var_94
  loc_A5685A: LitI4 0
  loc_A5685F: EqI4
  loc_A56860: BranchF loc_A56869
  loc_A56863: LitStr "El CODIGO del ENTE RECAUDADOR no existe. Reintente..."
  loc_A56866: FStStrCopy var_88
  loc_A56869: ExitProc
End Function

Private Function Proc_18_41_A56DA0(arg_C) 'A56DA0
  'Data Table: 4B72E0
  loc_A56D48: ILdRf arg_C
  loc_A56D4B: FStStrCopy var_8C
  loc_A56D4E: LitI2_Byte 0
  loc_A56D50: LitI2_Byte 0
  loc_A56D52: ILdRf var_8C
  loc_A56D55: LitStr "el Codigo del Oficial de Justicia"
  loc_A56D58: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A56D5D: FStStr var_88
  loc_A56D60: ILdRf var_88
  loc_A56D63: LitStr vbNullString
  loc_A56D66: NeStr
  loc_A56D68: BranchF loc_A56D6C
  loc_A56D6B: ExitProc
  loc_A56D6C: LitStr "SELECT * FROM oficjust WHERE CodiOfju = "
  loc_A56D6F: ILdRf var_8C
  loc_A56D72: ConcatStr
  loc_A56D73: FStStrNoPop var_90
  loc_A56D76: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A56D7B: FFree1Str var_90
  loc_A56D7E: FLdRfVar var_94
  loc_A56D81: FMemLdPr
  loc_A56D86:  = Me.RecordCount
  loc_A56D8B: ILdRf var_94
  loc_A56D8E: LitI4 0
  loc_A56D93: EqI4
  loc_A56D94: BranchF loc_A56D9D
  loc_A56D97: LitStr "El CODIGO del OFICIAL DE JUSTICIA no existe. Reintente..."
  loc_A56D9A: FStStrCopy var_88
  loc_A56D9D: ExitProc
End Function

Private Function Proc_18_42_A841B8(arg_C) 'A841B8
  'Data Table: 4B72E0
  loc_A8413C: ILdRf arg_C
  loc_A8413F: FStStrCopy var_8C
  loc_A84142: LitStr "SELECT CodiEnre FROM infogov.entereca WHERE NumeAcpa = "
  loc_A84145: ILdRf var_8C
  loc_A84148: ConcatStr
  loc_A84149: FStStrNoPop var_90
  loc_A8414C: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A84151: FFree1Str var_90
  loc_A84154: FLdRfVar var_94
  loc_A84157: FMemLdPr
  loc_A8415C:  = Me.RecordCount
  loc_A84161: ILdRf var_94
  loc_A84164: LitI4 0
  loc_A84169: GtI4
  loc_A8416A: BranchF loc_A841B4
  loc_A8416D: LitVarStr var_CC, "El NUMERO de GRUPO se encuentra reservado para el ente recaudador: "
  loc_A84172: FLdRfVar var_BC
  loc_A84175: FLdRfVar var_AC
  loc_A84178: LitVarStr var_A8, "CodiEnre"
  loc_A8417D: PopAdLdVar
  loc_A8417E: FLdRfVar var_98
  loc_A84181: FMemLdPr
  loc_A84186:  = Me.Fields
  loc_A8418B: FLdPr var_98
  loc_A8418E: from_stack_2 = Me.Item(from_stack_1)
  loc_A84193: FLdPr var_AC
  loc_A84196:  = Me.Value
  loc_A8419B: FLdRfVar var_BC
  loc_A8419E: ConcatVar var_DC
  loc_A841A2: CStrVarTmp
  loc_A841A3: FStStr var_88
  loc_A841A6: FFreeAd var_98 = ""
  loc_A841AD: FFreeVar var_BC = ""
  loc_A841B4: ExitProc
End Function

Private Function Proc_18_43_AB0C0C(arg_C) 'AB0C0C
  'Data Table: 4B72E0
  loc_AB0B3C: ILdRf arg_C
  loc_AB0B3F: FStStrCopy var_8C
  loc_AB0B42: LitStr "Municipalidad de Guaymallén"
  loc_AB0B45: LitStr "Municipalidad de Malargüe"
  loc_AB0B48: EqStr
  loc_AB0B4A: BranchF loc_AB0B9F
  loc_AB0B4D: LitI2_Byte 0
  loc_AB0B4F: LitI2_Byte 0
  loc_AB0B51: ILdRf var_8C
  loc_AB0B54: LitStr "el Codigo del Servicio de Catastro"
  loc_AB0B57: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_AB0B5C: FStStr var_88
  loc_AB0B5F: ILdRf var_88
  loc_AB0B62: LitStr vbNullString
  loc_AB0B65: NeStr
  loc_AB0B67: BranchF loc_AB0B6B
  loc_AB0B6A: ExitProc
  loc_AB0B6B: LitStr "SELECT CodiSeca FROM servcata WHERE CodiSeca = "
  loc_AB0B6E: ILdRf var_8C
  loc_AB0B71: ConcatStr
  loc_AB0B72: FStStrNoPop var_90
  loc_AB0B75: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AB0B7A: FFree1Str var_90
  loc_AB0B7D: FLdRfVar var_94
  loc_AB0B80: FMemLdPr
  loc_AB0B85:  = Me.RecordCount
  loc_AB0B8A: ILdRf var_94
  loc_AB0B8D: LitI4 0
  loc_AB0B92: EqI4
  loc_AB0B93: BranchF loc_AB0B9C
  loc_AB0B96: LitStr "El CODIGO del SERVICIO no existe. Reintente..."
  loc_AB0B99: FStStrCopy var_88
  loc_AB0B9C: Branch loc_AB0C09
  loc_AB0B9F: LitI2_Byte 0
  loc_AB0BA1: LitI2_Byte 0
  loc_AB0BA3: ILdRf var_8C
  loc_AB0BA6: LitStr "el Codigo del Servicio de Catastro"
  loc_AB0BA9: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_AB0BAE: FStStr var_88
  loc_AB0BB1: ILdRf var_88
  loc_AB0BB4: LitStr vbNullString
  loc_AB0BB7: NeStr
  loc_AB0BB9: BranchF loc_AB0BBD
  loc_AB0BBC: ExitProc
  loc_AB0BBD: LitStr "SELECT CodiSeca FROM servcata WHERE PeriOrde = "
  loc_AB0BC0: ImpAdLdI2 MemVar_D93036
  loc_AB0BC3: CStrUI1
  loc_AB0BC5: FStStrNoPop var_90
  loc_AB0BC8: ConcatStr
  loc_AB0BC9: FStStrNoPop var_98
  loc_AB0BCC: LitStr " AND CodiSeca = "
  loc_AB0BCF: ConcatStr
  loc_AB0BD0: FStStrNoPop var_9C
  loc_AB0BD3: ILdRf var_8C
  loc_AB0BD6: ConcatStr
  loc_AB0BD7: FStStrNoPop var_A0
  loc_AB0BDA: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AB0BDF: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_AB0BEA: FLdRfVar var_94
  loc_AB0BED: FMemLdPr
  loc_AB0BF2:  = Me.RecordCount
  loc_AB0BF7: ILdRf var_94
  loc_AB0BFA: LitI4 0
  loc_AB0BFF: EqI4
  loc_AB0C00: BranchF loc_AB0C09
  loc_AB0C03: LitStr "El CODIGO del SERVICIO no existe. Reintente..."
  loc_AB0C06: FStStrCopy var_88
  loc_AB0C09: ExitProc
End Function

Private Function Proc_18_44_A56C78(arg_C) 'A56C78
  'Data Table: 4B72E0
  loc_A56C20: ILdRf arg_C
  loc_A56C23: FStStrCopy var_8C
  loc_A56C26: LitI2_Byte &HFF
  loc_A56C28: LitI2_Byte 0
  loc_A56C2A: ILdRf var_8C
  loc_A56C2D: LitStr "el Codigo del tipo de estado civil"
  loc_A56C30: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_A56C35: FStStr var_88
  loc_A56C38: ILdRf var_88
  loc_A56C3B: LitStr vbNullString
  loc_A56C3E: NeStr
  loc_A56C40: BranchF loc_A56C44
  loc_A56C43: ExitProc
  loc_A56C44: LitStr "SELECT * FROM infogov.estacivi WHERE CodiEsci = "
  loc_A56C47: ILdRf var_8C
  loc_A56C4A: ConcatStr
  loc_A56C4B: FStStrNoPop var_90
  loc_A56C4E: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A56C53: FFree1Str var_90
  loc_A56C56: FLdRfVar var_94
  loc_A56C59: FMemLdPr
  loc_A56C5E:  = Me.RecordCount
  loc_A56C63: ILdRf var_94
  loc_A56C66: LitI4 0
  loc_A56C6B: EqI4
  loc_A56C6C: BranchF loc_A56C75
  loc_A56C6F: LitStr "El CODIGO del TIPO de ESTADO CIVIL no existe. Reintente..."
  loc_A56C72: FStStrCopy var_88
  loc_A56C75: ExitProc
  loc_A56C76: HardType
End Function

Private Function Proc_18_45_A57240(arg_C) 'A57240
  'Data Table: 4B72E0
  loc_A571E8: ILdRf arg_C
  loc_A571EB: FStStrCopy var_8C
  loc_A571EE: LitI2_Byte 0
  loc_A571F0: LitI2_Byte 0
  loc_A571F2: ILdRf var_8C
  loc_A571F5: LitStr "el Codigo de escala"
  loc_A571F8: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A571FD: FStStr var_88
  loc_A57200: ILdRf var_88
  loc_A57203: LitStr vbNullString
  loc_A57206: NeStr
  loc_A57208: BranchF loc_A5720C
  loc_A5720B: ExitProc
  loc_A5720C: LitStr "SELECT CodiEsca FROM escala WHERE CodiEsca = "
  loc_A5720F: ILdRf var_8C
  loc_A57212: ConcatStr
  loc_A57213: FStStrNoPop var_90
  loc_A57216: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A5721B: FFree1Str var_90
  loc_A5721E: FLdRfVar var_94
  loc_A57221: FMemLdPr
  loc_A57226:  = Me.RecordCount
  loc_A5722B: ILdRf var_94
  loc_A5722E: LitI4 0
  loc_A57233: EqI4
  loc_A57234: BranchF loc_A5723D
  loc_A57237: LitStr "El CODIGO de Escala no existe. Reintente..."
  loc_A5723A: FStStrCopy var_88
  loc_A5723D: ExitProc
End Function

Private Function Proc_18_46_A8CE18(arg_C) 'A8CE18
  'Data Table: 4B72E0
  loc_A8CD84: ILdRf arg_C
  loc_A8CD87: FStStrCopy var_8C
  loc_A8CD8A: LitI2_Byte 0
  loc_A8CD8C: LitI2_Byte 0
  loc_A8CD8E: ILdRf var_8C
  loc_A8CD91: LitStr "el Codigo de Inmueble"
  loc_A8CD94: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A8CD99: FStStr var_88
  loc_A8CD9C: ILdRf var_88
  loc_A8CD9F: LitStr vbNullString
  loc_A8CDA2: NeStr
  loc_A8CDA4: BranchF loc_A8CDA8
  loc_A8CDA7: ExitProc
  loc_A8CDA8: LitStr "SELECT CodiInmu, BajaFeho FROM inmueble WHERE CodiInmu = "
  loc_A8CDAB: ILdRf var_8C
  loc_A8CDAE: ConcatStr
  loc_A8CDAF: FStStrNoPop var_90
  loc_A8CDB2: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A8CDB7: FFree1Str var_90
  loc_A8CDBA: FLdRfVar var_94
  loc_A8CDBD: FMemLdPr
  loc_A8CDC2:  = Me.RecordCount
  loc_A8CDC7: ILdRf var_94
  loc_A8CDCA: LitI4 0
  loc_A8CDCF: EqI4
  loc_A8CDD0: BranchF loc_A8CDDC
  loc_A8CDD3: LitStr "El CODIGO del INMUEBLE no existe. Reintente..."
  loc_A8CDD6: FStStrCopy var_88
  loc_A8CDD9: Branch loc_A8CE16
  loc_A8CDDC: FLdRfVar var_AC
  loc_A8CDDF: LitVarStr var_A8, "BajaFeho"
  loc_A8CDE4: PopAdLdVar
  loc_A8CDE5: FLdRfVar var_98
  loc_A8CDE8: FMemLdPr
  loc_A8CDED:  = Me.Fields
  loc_A8CDF2: FLdPr var_98
  loc_A8CDF5: from_stack_2 = Me.Item(from_stack_1)
  loc_A8CDFA: FLdZeroAd var_AC
  loc_A8CDFD: CVarAd
  loc_A8CE01: ImpAdCallI2 IsNull()
  loc_A8CE06: NotI4
  loc_A8CE07: FFree1Ad var_98
  loc_A8CE0A: FFree1Var var_BC = ""
  loc_A8CE0D: BranchF loc_A8CE16
  loc_A8CE10: LitStr "El Inmueble se encuentra dado de baja. "
  loc_A8CE13: FStStrCopy var_88
  loc_A8CE16: ExitProc
End Function

Private Function Proc_18_47_B06848(arg_C, arg_10) 'B06848
  'Data Table: 4B72E0
  loc_B06670: ILdRf arg_C
  loc_B06673: FStStrCopy var_8C
  loc_B06676: LitI2_Byte 0
  loc_B06678: LitI2_Byte 0
  loc_B0667A: ILdRf var_8C
  loc_B0667D: LitStr "el Codigo de Inmueble"
  loc_B06680: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_B06685: FStStr var_88
  loc_B06688: ILdRf var_88
  loc_B0668B: LitStr vbNullString
  loc_B0668E: NeStr
  loc_B06690: BranchF loc_B06694
  loc_B06693: ExitProc
  loc_B06694: LitStr "SELECT CodiInmu, BajaFeho, CodiExce, FfexInmu FROM inmueble WHERE CodiInmu = "
  loc_B06697: ILdRf var_8C
  loc_B0669A: ConcatStr
  loc_B0669B: FStStrNoPop var_90
  loc_B0669E: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_B066A3: FFree1Str var_90
  loc_B066A6: FLdRfVar var_94
  loc_B066A9: FMemLdPr
  loc_B066AE:  = Me.RecordCount
  loc_B066B3: ILdRf var_94
  loc_B066B6: LitI4 0
  loc_B066BB: EqI4
  loc_B066BC: BranchF loc_B066C8
  loc_B066BF: LitStr "El CODIGO del INMUEBLE no existe. Reintente..."
  loc_B066C2: FStStrCopy var_88
  loc_B066C5: Branch loc_B06702
  loc_B066C8: FLdRfVar var_AC
  loc_B066CB: LitVarStr var_A8, "BajaFeho"
  loc_B066D0: PopAdLdVar
  loc_B066D1: FLdRfVar var_98
  loc_B066D4: FMemLdPr
  loc_B066D9:  = Me.Fields
  loc_B066DE: FLdPr var_98
  loc_B066E1: from_stack_2 = Me.Item(from_stack_1)
  loc_B066E6: FLdZeroAd var_AC
  loc_B066E9: CVarAd
  loc_B066ED: ImpAdCallI2 IsNull()
  loc_B066F2: NotI4
  loc_B066F3: FFree1Ad var_98
  loc_B066F6: FFree1Var var_BC = ""
  loc_B066F9: BranchF loc_B06702
  loc_B066FC: LitStr "El Inmueble se encuentra DADO DE BAJA. "
  loc_B066FF: FStStrCopy var_88
  loc_B06702: FLdRfVar var_94
  loc_B06705: FMemLdPr
  loc_B0670A:  = Me.RecordCount
  loc_B0670F: ILdRf var_94
  loc_B06712: LitI4 0
  loc_B06717: GtI4
  loc_B06718: BranchF loc_B06845
  loc_B0671B: FLdI2 arg_10
  loc_B0671E: LitI2_Byte &HFF
  loc_B06720: EqI2
  loc_B06721: FLdRfVar var_BC
  loc_B06724: FLdRfVar var_AC
  loc_B06727: LitVarStr var_A8, "CodiExce"
  loc_B0672C: PopAdLdVar
  loc_B0672D: FLdRfVar var_98
  loc_B06730: FMemLdPr
  loc_B06735:  = Me.Fields
  loc_B0673A: FLdPr var_98
  loc_B0673D: from_stack_2 = Me.Item(from_stack_1)
  loc_B06742: FLdPr var_AC
  loc_B06745:  = Me.Value
  loc_B0674A: FLdRfVar var_BC
  loc_B0674D: FnCIntVar
  loc_B0674F: LitI2_Byte 0
  loc_B06751: NeI2
  loc_B06752: AndI4
  loc_B06753: FFreeAd var_98 = ""
  loc_B0675A: FFree1Var var_BC = ""
  loc_B0675D: BranchF loc_B06845
  loc_B06760: FLdRfVar var_F4
  loc_B06763: LitVarStr var_F0, "FfexInmu"
  loc_B06768: PopAdLdVar
  loc_B06769: FLdRfVar var_E0
  loc_B0676C: FMemLdPr
  loc_B06771:  = Me.Fields
  loc_B06776: FLdPr var_E0
  loc_B06779: from_stack_2 = Me.Item(from_stack_1)
  loc_B0677E: FLdZeroAd var_F4
  loc_B06781: CVarAd
  loc_B06785: ImpAdCallI2 IsNull()
  loc_B0678A: FStI2 var_19E
  loc_B0678D: ILdRf var_88
  loc_B06790: LitStr " El Inmueble se encuentra con el Código de Exención: "
  loc_B06793: ConcatStr
  loc_B06794: CVarStr var_CC
  loc_B06797: FLdRfVar var_BC
  loc_B0679A: FLdRfVar var_AC
  loc_B0679D: LitVarStr var_A8, "CodiExce"
  loc_B067A2: PopAdLdVar
  loc_B067A3: FLdRfVar var_98
  loc_B067A6: FMemLdPr
  loc_B067AB:  = Me.Fields
  loc_B067B0: FLdPr var_98
  loc_B067B3: from_stack_2 = Me.Item(from_stack_1)
  loc_B067B8: FLdPr var_AC
  loc_B067BB:  = Me.Value
  loc_B067C0: FLdRfVar var_BC
  loc_B067C3: ConcatVar var_DC
  loc_B067C7: LitVarStr var_13C, ". Fecha de Finalización: "
  loc_B067CC: FLdRfVar var_12C
  loc_B067CF: FLdRfVar var_11C
  loc_B067D2: LitVarStr var_118, "FfexInmu"
  loc_B067D7: PopAdLdVar
  loc_B067D8: FLdRfVar var_108
  loc_B067DB: FMemLdPr
  loc_B067E0:  = Me.Fields
  loc_B067E5: FLdPr var_108
  loc_B067E8: from_stack_2 = Me.Item(from_stack_1)
  loc_B067ED: FLdPr var_11C
  loc_B067F0:  = Me.Value
  loc_B067F5: FLdRfVar var_12C
  loc_B067F8: ConcatVar var_14C
  loc_B067FC: LitVarStr var_16C, vbNullString
  loc_B06801: FStVarCopyObj var_17C
  loc_B06804: FLdRfVar var_17C
  loc_B06807: FLdI2 var_19E
  loc_B0680A: CVarBoolI2 var_15C
  loc_B0680E: FLdRfVar var_18C
  loc_B06811: ImpAdCallFPR4  = IIf(, , )
  loc_B06816: FLdRfVar var_18C
  loc_B06819: ConcatVar var_19C
  loc_B0681D: CStrVarTmp
  loc_B0681E: FStStr var_88
  loc_B06821: FFreeAd var_98 = "": var_AC = "": var_E0 = "": var_108 = ""
  loc_B0682E: FFreeVar var_CC = "": var_BC = "": var_104 = "": var_12C = "": var_15C = "": var_17C = "": var_14C = "": var_DC = "": var_18C = ""
  loc_B06845: ExitProc
  loc_B06846: NewIfNullPr Me
End Function

Private Function Proc_18_48_ADCC6C(arg_C, arg_10) 'ADCC6C
  'Data Table: 4B72E0
  loc_ADCB30: ILdRf arg_C
  loc_ADCB33: FStStrCopy var_8C
  loc_ADCB36: LitStr "SELECT CodiInmu, CacoInmu FROM inmueble WHERE CodiInmu = "
  loc_ADCB39: ILdRf var_8C
  loc_ADCB3C: ConcatStr
  loc_ADCB3D: FStStrNoPop var_90
  loc_ADCB40: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_ADCB45: FFree1Str var_90
  loc_ADCB48: FLdRfVar var_94
  loc_ADCB4B: FMemLdPr
  loc_ADCB50:  = Me.RecordCount
  loc_ADCB55: ILdRf var_94
  loc_ADCB58: LitI4 0
  loc_ADCB5D: EqI4
  loc_ADCB5E: BranchF loc_ADCB6A
  loc_ADCB61: LitStr "El CODIGO del INMUEBLE no existe. Reintente..."
  loc_ADCB64: FStStrCopy var_88
  loc_ADCB67: Branch loc_ADCC68
  loc_ADCB6A: LitStr "SELECT CodiInmu FROM comercio WHERE CodiCome <> "
  loc_ADCB6D: FLdI2 arg_10
  loc_ADCB70: CStrUI1
  loc_ADCB72: FStStrNoPop var_90
  loc_ADCB75: ConcatStr
  loc_ADCB76: FStStrNoPop var_98
  loc_ADCB79: LitStr " AND CodiInmu = "
  loc_ADCB7C: ConcatStr
  loc_ADCB7D: FStStrNoPop var_9C
  loc_ADCB80: ILdRf var_8C
  loc_ADCB83: ConcatStr
  loc_ADCB84: FStStrNoPop var_A0
  loc_ADCB87: LitStr " AND FebaCome IS NULL"
  loc_ADCB8A: ConcatStr
  loc_ADCB8B: FStStrNoPop var_A4
  loc_ADCB8E: ImpAdCallFPR4 Proc_18_1_A1684C()
  loc_ADCB93: FFreeStr var_90 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_ADCBA0: FLdRfVar var_94
  loc_ADCBA3: FMemLdPr
  loc_ADCBA8:  = Me.RecordCount
  loc_ADCBAD: ILdRf var_94
  loc_ADCBB0: LitI4 0
  loc_ADCBB5: GtI4
  loc_ADCBB6: BranchF loc_ADCC1B
  loc_ADCBB9: FLdRfVar var_94
  loc_ADCBBC: FMemLdPr
  loc_ADCBC1:  = Me.RecordCount
  loc_ADCBC6: ILdRf var_94
  loc_ADCBC9: CI2I4
  loc_ADCBCA: LitI2_Byte 1
  loc_ADCBCC: AddI2
  loc_ADCBCD: FLdRfVar var_CC
  loc_ADCBD0: FLdRfVar var_BC
  loc_ADCBD3: LitVarStr var_B8, "CacoInmu"
  loc_ADCBD8: PopAdLdVar
  loc_ADCBD9: FLdRfVar var_A8
  loc_ADCBDC: FMemLdPr
  loc_ADCBE1:  = Me.Fields
  loc_ADCBE6: FLdPr var_A8
  loc_ADCBE9: from_stack_2 = Me.Item(from_stack_1)
  loc_ADCBEE: FLdPr var_BC
  loc_ADCBF1:  = Me.Value
  loc_ADCBF6: FLdRfVar var_CC
  loc_ADCBF9: FnCIntVar
  loc_ADCBFB: GtI2
  loc_ADCBFC: FFreeAd var_A8 = ""
  loc_ADCC03: FFree1Var var_CC = ""
  loc_ADCC06: BranchF loc_ADCC12
  loc_ADCC09: LitStr "Al inmueble seleccionado NO se le pueden agregar mas comercios"
  loc_ADCC0C: FStStrCopy var_88
  loc_ADCC0F: Branch loc_ADCC18
  loc_ADCC12: LitStr vbNullString
  loc_ADCC15: FStStrCopy var_88
  loc_ADCC18: Branch loc_ADCC68
  loc_ADCC1B: LitI2_Byte 1
  loc_ADCC1D: FLdRfVar var_CC
  loc_ADCC20: FLdRfVar var_BC
  loc_ADCC23: LitVarStr var_B8, "CacoInmu"
  loc_ADCC28: PopAdLdVar
  loc_ADCC29: FLdRfVar var_A8
  loc_ADCC2C: FMemLdPr
  loc_ADCC31:  = Me.Fields
  loc_ADCC36: FLdPr var_A8
  loc_ADCC39: from_stack_2 = Me.Item(from_stack_1)
  loc_ADCC3E: FLdPr var_BC
  loc_ADCC41:  = Me.Value
  loc_ADCC46: FLdRfVar var_CC
  loc_ADCC49: FnCIntVar
  loc_ADCC4B: GtI2
  loc_ADCC4C: FFreeAd var_A8 = ""
  loc_ADCC53: FFree1Var var_CC = ""
  loc_ADCC56: BranchF loc_ADCC62
  loc_ADCC59: LitStr "Al inmueble seleccionado NO se le pueden agregar mas comercios"
  loc_ADCC5C: FStStrCopy var_88
  loc_ADCC5F: Branch loc_ADCC68
  loc_ADCC62: LitStr vbNullString
  loc_ADCC65: FStStrCopy var_88
  loc_ADCC68: ExitProc
End Function

Private Function Proc_18_49_AD7FC4(arg_C) 'AD7FC4
  'Data Table: 4B72E0
  loc_AD7E90: ILdRf arg_C
  loc_AD7E93: FStStrCopy var_8C
  loc_AD7E96: LitStr "Municipalidad de Guaymallén"
  loc_AD7E99: LitStr "Municipalidad de Tunuyán"
  loc_AD7E9C: EqStr
  loc_AD7E9E: BranchF loc_AD7F37
  loc_AD7EA1: ILdRf var_8C
  loc_AD7EA4: LitStr "el Numero de Cuenta"
  loc_AD7EA7: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AD7EAC: FStStr var_88
  loc_AD7EAF: ILdRf var_88
  loc_AD7EB2: LitStr vbNullString
  loc_AD7EB5: NeStr
  loc_AD7EB7: BranchF loc_AD7EBB
  loc_AD7EBA: ExitProc
  loc_AD7EBB: LitStr "SELECT CodiDifu, BajaFeho FROM difunto WHERE CodiDifu = '"
  loc_AD7EBE: ILdRf var_8C
  loc_AD7EC1: ConcatStr
  loc_AD7EC2: FStStrNoPop var_90
  loc_AD7EC5: LitStr "'"
  loc_AD7EC8: ConcatStr
  loc_AD7EC9: FStStrNoPop var_94
  loc_AD7ECC: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AD7ED1: FFreeStr var_90 = ""
  loc_AD7ED8: FLdRfVar var_98
  loc_AD7EDB: FMemLdPr
  loc_AD7EE0:  = Me.RecordCount
  loc_AD7EE5: ILdRf var_98
  loc_AD7EE8: LitI4 0
  loc_AD7EED: EqI4
  loc_AD7EEE: BranchF loc_AD7EFA
  loc_AD7EF1: LitStr "El NUMERO del REGISTRO de DIFUNTO no existe. Reintente..."
  loc_AD7EF4: FStStrCopy var_88
  loc_AD7EF7: Branch loc_AD7F34
  loc_AD7EFA: FLdRfVar var_B0
  loc_AD7EFD: LitVarStr var_AC, "BajaFeho"
  loc_AD7F02: PopAdLdVar
  loc_AD7F03: FLdRfVar var_9C
  loc_AD7F06: FMemLdPr
  loc_AD7F0B:  = Me.Fields
  loc_AD7F10: FLdPr var_9C
  loc_AD7F13: from_stack_2 = Me.Item(from_stack_1)
  loc_AD7F18: FLdZeroAd var_B0
  loc_AD7F1B: CVarAd
  loc_AD7F1F: ImpAdCallI2 IsNull()
  loc_AD7F24: NotI4
  loc_AD7F25: FFree1Ad var_9C
  loc_AD7F28: FFree1Var var_C0 = ""
  loc_AD7F2B: BranchF loc_AD7F34
  loc_AD7F2E: LitStr "El Numero de Cuenta se encuentra dado de baja"
  loc_AD7F31: FStStrCopy var_88
  loc_AD7F34: Branch loc_AD7FC3
  loc_AD7F37: LitI2_Byte 0
  loc_AD7F39: LitI2_Byte 0
  loc_AD7F3B: ILdRf var_8C
  loc_AD7F3E: LitStr "el Codigo del registro"
  loc_AD7F41: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AD7F46: FStStr var_88
  loc_AD7F49: ILdRf var_88
  loc_AD7F4C: LitStr vbNullString
  loc_AD7F4F: NeStr
  loc_AD7F51: BranchF loc_AD7F55
  loc_AD7F54: ExitProc
  loc_AD7F55: LitStr "SELECT CodiDifu, FebaDifu FROM difunto WHERE CodiDifu = "
  loc_AD7F58: ILdRf var_8C
  loc_AD7F5B: ConcatStr
  loc_AD7F5C: FStStrNoPop var_90
  loc_AD7F5F: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AD7F64: FFree1Str var_90
  loc_AD7F67: FLdRfVar var_98
  loc_AD7F6A: FMemLdPr
  loc_AD7F6F:  = Me.RecordCount
  loc_AD7F74: ILdRf var_98
  loc_AD7F77: LitI4 0
  loc_AD7F7C: EqI4
  loc_AD7F7D: BranchF loc_AD7F89
  loc_AD7F80: LitStr "El CODIGO del REGISTRO de DIFUNTO no existe. Reintente..."
  loc_AD7F83: FStStrCopy var_88
  loc_AD7F86: Branch loc_AD7FC3
  loc_AD7F89: FLdRfVar var_B0
  loc_AD7F8C: LitVarStr var_AC, "FebaDifu"
  loc_AD7F91: PopAdLdVar
  loc_AD7F92: FLdRfVar var_9C
  loc_AD7F95: FMemLdPr
  loc_AD7F9A:  = Me.Fields
  loc_AD7F9F: FLdPr var_9C
  loc_AD7FA2: from_stack_2 = Me.Item(from_stack_1)
  loc_AD7FA7: FLdZeroAd var_B0
  loc_AD7FAA: CVarAd
  loc_AD7FAE: ImpAdCallI2 IsNull()
  loc_AD7FB3: NotI4
  loc_AD7FB4: FFree1Ad var_9C
  loc_AD7FB7: FFree1Var var_C0 = ""
  loc_AD7FBA: BranchF loc_AD7FC3
  loc_AD7FBD: LitStr "El Registro de Difunto se encuentra dado de baja"
  loc_AD7FC0: FStStrCopy var_88
  loc_AD7FC3: ExitProc
End Function

Private Function Proc_18_50_ADBE64(arg_C) 'ADBE64
  'Data Table: 4B72E0
  loc_ADBD24: ILdRf arg_C
  loc_ADBD27: FStStrCopy var_8C
  loc_ADBD2A: LitStr "Municipalidad de Guaymallén"
  loc_ADBD2D: LitStr "Municipalidad de Tunuyán"
  loc_ADBD30: EqStr
  loc_ADBD32: LitStr "Municipalidad de Guaymallén"
  loc_ADBD35: LitStr "Municipalidad de La Paz"
  loc_ADBD38: EqStr
  loc_ADBD3A: OrI4
  loc_ADBD3B: BranchF loc_ADBDD4
  loc_ADBD3E: ILdRf var_8C
  loc_ADBD41: LitStr "el Numero de Cuenta"
  loc_ADBD44: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_ADBD49: FStStr var_88
  loc_ADBD4C: ILdRf var_88
  loc_ADBD4F: LitStr vbNullString
  loc_ADBD52: NeStr
  loc_ADBD54: BranchF loc_ADBD58
  loc_ADBD57: ExitProc
  loc_ADBD58: LitStr "SELECT CodiDifu, BajaFeho FROM difunto WHERE CodiDifu = '"
  loc_ADBD5B: ILdRf var_8C
  loc_ADBD5E: ConcatStr
  loc_ADBD5F: FStStrNoPop var_90
  loc_ADBD62: LitStr "'"
  loc_ADBD65: ConcatStr
  loc_ADBD66: FStStrNoPop var_94
  loc_ADBD69: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_ADBD6E: FFreeStr var_90 = ""
  loc_ADBD75: FLdRfVar var_98
  loc_ADBD78: FMemLdPr
  loc_ADBD7D:  = Me.RecordCount
  loc_ADBD82: ILdRf var_98
  loc_ADBD85: LitI4 0
  loc_ADBD8A: EqI4
  loc_ADBD8B: BranchF loc_ADBD97
  loc_ADBD8E: LitStr "El NUMERO del REGISTRO de DIFUNTO no existe. Reintente..."
  loc_ADBD91: FStStrCopy var_88
  loc_ADBD94: Branch loc_ADBDD1
  loc_ADBD97: FLdRfVar var_B0
  loc_ADBD9A: LitVarStr var_AC, "BajaFeho"
  loc_ADBD9F: PopAdLdVar
  loc_ADBDA0: FLdRfVar var_9C
  loc_ADBDA3: FMemLdPr
  loc_ADBDA8:  = Me.Fields
  loc_ADBDAD: FLdPr var_9C
  loc_ADBDB0: from_stack_2 = Me.Item(from_stack_1)
  loc_ADBDB5: FLdZeroAd var_B0
  loc_ADBDB8: CVarAd
  loc_ADBDBC: ImpAdCallI2 IsNull()
  loc_ADBDC1: NotI4
  loc_ADBDC2: FFree1Ad var_9C
  loc_ADBDC5: FFree1Var var_C0 = ""
  loc_ADBDC8: BranchF loc_ADBDD1
  loc_ADBDCB: LitStr "El Numero de Cuenta se encuentra dado de baja"
  loc_ADBDCE: FStStrCopy var_88
  loc_ADBDD1: Branch loc_ADBE60
  loc_ADBDD4: LitI2_Byte 0
  loc_ADBDD6: LitI2_Byte 0
  loc_ADBDD8: ILdRf var_8C
  loc_ADBDDB: LitStr "el Codigo del registro"
  loc_ADBDDE: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_ADBDE3: FStStr var_88
  loc_ADBDE6: ILdRf var_88
  loc_ADBDE9: LitStr vbNullString
  loc_ADBDEC: NeStr
  loc_ADBDEE: BranchF loc_ADBDF2
  loc_ADBDF1: ExitProc
  loc_ADBDF2: LitStr "SELECT CodiDifu, FebaDifu FROM difunto WHERE CodiDifu = "
  loc_ADBDF5: ILdRf var_8C
  loc_ADBDF8: ConcatStr
  loc_ADBDF9: FStStrNoPop var_90
  loc_ADBDFC: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_ADBE01: FFree1Str var_90
  loc_ADBE04: FLdRfVar var_98
  loc_ADBE07: FMemLdPr
  loc_ADBE0C:  = Me.RecordCount
  loc_ADBE11: ILdRf var_98
  loc_ADBE14: LitI4 0
  loc_ADBE19: EqI4
  loc_ADBE1A: BranchF loc_ADBE26
  loc_ADBE1D: LitStr "El CODIGO del REGISTRO de DIFUNTO no existe. Reintente..."
  loc_ADBE20: FStStrCopy var_88
  loc_ADBE23: Branch loc_ADBE60
  loc_ADBE26: FLdRfVar var_B0
  loc_ADBE29: LitVarStr var_AC, "FebaDifu"
  loc_ADBE2E: PopAdLdVar
  loc_ADBE2F: FLdRfVar var_9C
  loc_ADBE32: FMemLdPr
  loc_ADBE37:  = Me.Fields
  loc_ADBE3C: FLdPr var_9C
  loc_ADBE3F: from_stack_2 = Me.Item(from_stack_1)
  loc_ADBE44: FLdZeroAd var_B0
  loc_ADBE47: CVarAd
  loc_ADBE4B: ImpAdCallI2 IsNull()
  loc_ADBE50: NotI4
  loc_ADBE51: FFree1Ad var_9C
  loc_ADBE54: FFree1Var var_C0 = ""
  loc_ADBE57: BranchF loc_ADBE60
  loc_ADBE5A: LitStr "El Registro de Difunto se encuentra dado de baja"
  loc_ADBE5D: FStStrCopy var_88
  loc_ADBE60: ExitProc
End Function

Private Function Proc_18_51_AB2AFC(arg_C, arg_10, arg_14) 'AB2AFC
  'Data Table: 4B72E0
  loc_AB2A3C: ILdRf arg_C
  loc_AB2A3F: FStStrCopy var_8C
  loc_AB2A42: ILdRf arg_10
  loc_AB2A45: FStStrCopy var_90
  loc_AB2A48: ILdRf var_8C
  loc_AB2A4B: LitStr "Manzana"
  loc_AB2A4E: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AB2A53: FStStr var_88
  loc_AB2A56: ILdRf var_88
  loc_AB2A59: LitStr vbNullString
  loc_AB2A5C: NeStr
  loc_AB2A5E: BranchF loc_AB2A62
  loc_AB2A61: ExitProc
  loc_AB2A62: LitStr "SELECT * FROM inmueble WHERE PadrInmu = '"
  loc_AB2A65: ILdRf var_90
  loc_AB2A68: ConcatStr
  loc_AB2A69: FStStrNoPop var_94
  loc_AB2A6C: LitStr "' AND CodiInmu <> "
  loc_AB2A6F: ConcatStr
  loc_AB2A70: FStStrNoPop var_98
  loc_AB2A73: ILdRf arg_14
  loc_AB2A76: CStrI4
  loc_AB2A78: FStStrNoPop var_9C
  loc_AB2A7B: ConcatStr
  loc_AB2A7C: FStStrNoPop var_A0
  loc_AB2A7F: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AB2A84: FFreeStr var_94 = "": var_98 = "": var_9C = ""
  loc_AB2A8F: FLdRfVar var_A4
  loc_AB2A92: FMemLdPr
  loc_AB2A97:  = Me.RecordCount
  loc_AB2A9C: ILdRf var_A4
  loc_AB2A9F: LitI4 0
  loc_AB2AA4: GtI4
  loc_AB2AA5: BranchF loc_AB2AFA
  loc_AB2AA8: LitVarStr var_DC, "El PADRON ya existe con la cuenta numero: "
  loc_AB2AAD: FLdRfVar var_CC
  loc_AB2AB0: FLdRfVar var_BC
  loc_AB2AB3: LitVarStr var_B8, "CodiInmu"
  loc_AB2AB8: PopAdLdVar
  loc_AB2AB9: FLdRfVar var_A8
  loc_AB2ABC: FMemLdPr
  loc_AB2AC1:  = Me.Fields
  loc_AB2AC6: FLdPr var_A8
  loc_AB2AC9: from_stack_2 = Me.Item(from_stack_1)
  loc_AB2ACE: FLdPr var_BC
  loc_AB2AD1:  = Me.Value
  loc_AB2AD6: FLdRfVar var_CC
  loc_AB2AD9: ConcatVar var_EC
  loc_AB2ADD: LitVarStr var_FC, " Verifique..."
  loc_AB2AE2: ConcatVar var_10C
  loc_AB2AE6: CStrVarTmp
  loc_AB2AE7: FStStr var_88
  loc_AB2AEA: FFreeAd var_A8 = ""
  loc_AB2AF1: FFreeVar var_CC = "": var_EC = ""
  loc_AB2AFA: ExitProc
End Function

Private Function Proc_18_52_A6EDD0(arg_C) 'A6EDD0
  'Data Table: 4B72E0
  loc_A6ED64: LitI2_Byte 0
  loc_A6ED66: LitI2_Byte 0
  loc_A6ED68: ILdRf arg_C
  loc_A6ED6B: CStrI4
  loc_A6ED6D: FStStrNoPop var_8C
  loc_A6ED70: LitStr "Cuenta"
  loc_A6ED73: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A6ED78: FStStr var_88
  loc_A6ED7B: FFree1Str var_8C
  loc_A6ED7E: ILdRf var_88
  loc_A6ED81: LitStr vbNullString
  loc_A6ED84: NeStr
  loc_A6ED86: BranchF loc_A6ED8A
  loc_A6ED89: ExitProc
  loc_A6ED8A: LitStr "SELECT * FROM inmueble WHERE CodiInmu = "
  loc_A6ED8D: ILdRf arg_C
  loc_A6ED90: CStrI4
  loc_A6ED92: FStStrNoPop var_8C
  loc_A6ED95: ConcatStr
  loc_A6ED96: FStStrNoPop var_90
  loc_A6ED99: LitStr " AND ProvInmu = 1"
  loc_A6ED9C: ConcatStr
  loc_A6ED9D: FStStrNoPop var_94
  loc_A6EDA0: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A6EDA5: FFreeStr var_8C = "": var_90 = ""
  loc_A6EDAE: FLdRfVar var_98
  loc_A6EDB1: FMemLdPr
  loc_A6EDB6:  = Me.RecordCount
  loc_A6EDBB: ILdRf var_98
  loc_A6EDBE: LitI4 0
  loc_A6EDC3: GtI4
  loc_A6EDC4: BranchF loc_A6EDCD
  loc_A6EDC7: LitStr "El PADRON se encuentra PROVISORIO, no se puede emitir el certificado de libre de deuda. Verifique..."
  loc_A6EDCA: FStStrCopy var_88
  loc_A6EDCD: ExitProc
End Function

Private Function Proc_18_53_A572D4(arg_C) 'A572D4
  'Data Table: 4B72E0
  loc_A5727C: ILdRf arg_C
  loc_A5727F: FStStrCopy var_8C
  loc_A57282: LitI2_Byte &HFF
  loc_A57284: LitI2_Byte 0
  loc_A57286: ILdRf var_8C
  loc_A57289: LitStr "el Código de Excepción"
  loc_A5728C: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A57291: FStStr var_88
  loc_A57294: ILdRf var_88
  loc_A57297: LitStr vbNullString
  loc_A5729A: NeStr
  loc_A5729C: BranchF loc_A572A0
  loc_A5729F: ExitProc
  loc_A572A0: LitStr "SELECT CodiExce FROM excepcion WHERE CodiExce = "
  loc_A572A3: ILdRf var_8C
  loc_A572A6: ConcatStr
  loc_A572A7: FStStrNoPop var_90
  loc_A572AA: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A572AF: FFree1Str var_90
  loc_A572B2: FLdRfVar var_94
  loc_A572B5: FMemLdPr
  loc_A572BA:  = Me.RecordCount
  loc_A572BF: ILdRf var_94
  loc_A572C2: LitI4 0
  loc_A572C7: EqI4
  loc_A572C8: BranchF loc_A572D1
  loc_A572CB: LitStr "El CÓDIGO de Excepción no existe. Reintente..."
  loc_A572CE: FStStrCopy var_88
  loc_A572D1: ExitProc
End Function

Private Function Proc_18_54_A64EC4(arg_C) 'A64EC4
  'Data Table: 4B72E0
  loc_A64E64: ILdRf arg_C
  loc_A64E67: FStStrCopy var_8C
  loc_A64E6A: ILdRf var_8C
  loc_A64E6D: LitStr "el Código de Ordenanza"
  loc_A64E70: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A64E75: FStStr var_88
  loc_A64E78: ILdRf var_88
  loc_A64E7B: LitStr vbNullString
  loc_A64E7E: NeStr
  loc_A64E80: BranchF loc_A64E84
  loc_A64E83: ExitProc
  loc_A64E84: LitStr "SELECT OrdeObre FROM obreinmu WHERE OrdeObre = '"
  loc_A64E87: ILdRf var_8C
  loc_A64E8A: ConcatStr
  loc_A64E8B: FStStrNoPop var_90
  loc_A64E8E: LitStr "'"
  loc_A64E91: ConcatStr
  loc_A64E92: FStStrNoPop var_94
  loc_A64E95: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A64E9A: FFreeStr var_90 = ""
  loc_A64EA1: FLdRfVar var_98
  loc_A64EA4: FMemLdPr
  loc_A64EA9:  = Me.RecordCount
  loc_A64EAE: ILdRf var_98
  loc_A64EB1: LitI4 0
  loc_A64EB6: EqI4
  loc_A64EB7: BranchF loc_A64EC0
  loc_A64EBA: LitStr "El CODIGO de Ordenanza no existe. Reintente..."
  loc_A64EBD: FStStrCopy var_88
  loc_A64EC0: ExitProc
End Function

Private Function Proc_18_55_A7B240(arg_C, arg_10) 'A7B240
  'Data Table: 4B72E0
  loc_A7B1D0: ILdRf arg_C
  loc_A7B1D3: FStStrCopy var_8C
  loc_A7B1D6: ILdRf arg_10
  loc_A7B1D9: FStStrCopy var_90
  loc_A7B1DC: LitI2_Byte 0
  loc_A7B1DE: LitI2_Byte 0
  loc_A7B1E0: ILdRf var_90
  loc_A7B1E3: LitStr "el Código del Inmueble"
  loc_A7B1E6: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A7B1EB: FStStr var_88
  loc_A7B1EE: ILdRf var_88
  loc_A7B1F1: LitStr vbNullString
  loc_A7B1F4: NeStr
  loc_A7B1F6: BranchF loc_A7B1FA
  loc_A7B1F9: ExitProc
  loc_A7B1FA: LitStr "SELECT CodiInmu FROM obreinmu WHERE OrdeObre = '"
  loc_A7B1FD: ILdRf var_8C
  loc_A7B200: ConcatStr
  loc_A7B201: FStStrNoPop var_94
  loc_A7B204: LitStr "' AND CodiInmu = "
  loc_A7B207: ConcatStr
  loc_A7B208: FStStrNoPop var_98
  loc_A7B20B: ILdRf var_90
  loc_A7B20E: ConcatStr
  loc_A7B20F: FStStrNoPop var_9C
  loc_A7B212: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A7B217: FFreeStr var_94 = "": var_98 = ""
  loc_A7B220: FLdRfVar var_A0
  loc_A7B223: FMemLdPr
  loc_A7B228:  = Me.RecordCount
  loc_A7B22D: ILdRf var_A0
  loc_A7B230: LitI4 0
  loc_A7B235: EqI4
  loc_A7B236: BranchF loc_A7B23F
  loc_A7B239: LitStr "El CODIGO del Inmueble no existe. Reintente..."
  loc_A7B23C: FStStrCopy var_88
  loc_A7B23F: ExitProc
End Function

Private Function Proc_18_56_9FA478(arg_C, arg_10) '9FA478
  'Data Table: 4B72E0
  loc_9FA454: ILdRf arg_10
  loc_9FA457: FStStrCopy var_8C
  loc_9FA45A: ILdRf var_8C
  loc_9FA45D: LitStr "s/f"
  loc_9FA460: NeStr
  loc_9FA462: ILdRf arg_C
  loc_9FA465: LitI4 0
  loc_9FA46A: LeI4
  loc_9FA46B: AndI4
  loc_9FA46C: BranchF loc_9FA476
  loc_9FA46F: LitStr "Ingrese el NUMERO de FACTURA, Reintente..."
  loc_9FA472: FStStrCopy var_88
  loc_9FA475: ExitProc
  loc_9FA476: ExitProc
End Function

Private Function Proc_18_57_AAF758(arg_C, arg_10) 'AAF758
  'Data Table: 4B72E0
  loc_AAF6A8: ILdRf arg_10
  loc_AAF6AB: FStStrCopy var_8C
  loc_AAF6AE: LitI2_Byte &HFF
  loc_AAF6B0: LitI2_Byte 0
  loc_AAF6B2: ILdRf var_8C
  loc_AAF6B5: LitStr "el bimestre"
  loc_AAF6B8: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_AAF6BD: FStStr var_88
  loc_AAF6C0: ILdRf var_88
  loc_AAF6C3: LitStr vbNullString
  loc_AAF6C6: NeStr
  loc_AAF6C8: BranchF loc_AAF6CC
  loc_AAF6CB: ExitProc
  loc_AAF6CC: LitStr "SELECT FeveVenc FROM vencimiento WHERE PeriLiqu = "
  loc_AAF6CF: FLdI2 arg_C
  loc_AAF6D2: CStrUI1
  loc_AAF6D4: FStStrNoPop var_90
  loc_AAF6D7: ConcatStr
  loc_AAF6D8: FStStrNoPop var_94
  loc_AAF6DB: LitStr " AND BimeLiqu = "
  loc_AAF6DE: ConcatStr
  loc_AAF6DF: FStStrNoPop var_98
  loc_AAF6E2: ILdRf var_8C
  loc_AAF6E5: ConcatStr
  loc_AAF6E6: FStStrNoPop var_9C
  loc_AAF6E9: LitStr " AND CodiOfic = "
  loc_AAF6EC: ConcatStr
  loc_AAF6ED: FStStrNoPop var_A0
  loc_AAF6F0: FLdUI1
  loc_AAF6F4: CStrI2
  loc_AAF6F6: FStStrNoPop var_A4
  loc_AAF6F9: ConcatStr
  loc_AAF6FA: FStStrNoPop var_A8
  loc_AAF6FD: LitStr " AND CodiTili = "
  loc_AAF700: ConcatStr
  loc_AAF701: FStStrNoPop var_AC
  loc_AAF704: FLdUI1
  loc_AAF708: CStrI2
  loc_AAF70A: FStStrNoPop var_B0
  loc_AAF70D: ConcatStr
  loc_AAF70E: FStStrNoPop var_B4
  loc_AAF711: LitStr " AND TipoVenc = 'Mensual'"
  loc_AAF714: ConcatStr
  loc_AAF715: FStStrNoPop var_B8
  loc_AAF718: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AAF71D: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_AAF736: FLdRfVar var_BC
  loc_AAF739: FMemLdPr
  loc_AAF73E:  = Me.RecordCount
  loc_AAF743: ILdRf var_BC
  loc_AAF746: LitI4 0
  loc_AAF74B: EqI4
  loc_AAF74C: BranchF loc_AAF755
  loc_AAF74F: LitStr "No esta parametrizado el vencimiento para el año y mes seleccionado. Verifique."
  loc_AAF752: FStStrCopy var_88
  loc_AAF755: ExitProc
End Function

Private Function Proc_18_58_AAF980(arg_C, arg_10) 'AAF980
  'Data Table: 4B72E0
  loc_AAF8D0: ILdRf arg_10
  loc_AAF8D3: FStStrCopy var_8C
  loc_AAF8D6: LitI2_Byte &HFF
  loc_AAF8D8: LitI2_Byte 0
  loc_AAF8DA: ILdRf var_8C
  loc_AAF8DD: LitStr "el mes"
  loc_AAF8E0: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_AAF8E5: FStStr var_88
  loc_AAF8E8: ILdRf var_88
  loc_AAF8EB: LitStr vbNullString
  loc_AAF8EE: NeStr
  loc_AAF8F0: BranchF loc_AAF8F4
  loc_AAF8F3: ExitProc
  loc_AAF8F4: LitStr "SELECT FeveVenc FROM vencimiento WHERE PeriLiqu = "
  loc_AAF8F7: FLdI2 arg_C
  loc_AAF8FA: CStrUI1
  loc_AAF8FC: FStStrNoPop var_90
  loc_AAF8FF: ConcatStr
  loc_AAF900: FStStrNoPop var_94
  loc_AAF903: LitStr " AND BimeLiqu = "
  loc_AAF906: ConcatStr
  loc_AAF907: FStStrNoPop var_98
  loc_AAF90A: ILdRf var_8C
  loc_AAF90D: ConcatStr
  loc_AAF90E: FStStrNoPop var_9C
  loc_AAF911: LitStr " AND CodiOfic = "
  loc_AAF914: ConcatStr
  loc_AAF915: FStStrNoPop var_A0
  loc_AAF918: FLdUI1
  loc_AAF91C: CStrI2
  loc_AAF91E: FStStrNoPop var_A4
  loc_AAF921: ConcatStr
  loc_AAF922: FStStrNoPop var_A8
  loc_AAF925: LitStr " AND CodiTili = "
  loc_AAF928: ConcatStr
  loc_AAF929: FStStrNoPop var_AC
  loc_AAF92C: FLdUI1
  loc_AAF930: CStrI2
  loc_AAF932: FStStrNoPop var_B0
  loc_AAF935: ConcatStr
  loc_AAF936: FStStrNoPop var_B4
  loc_AAF939: LitStr " AND TipoVenc = 'Bimestral'"
  loc_AAF93C: ConcatStr
  loc_AAF93D: FStStrNoPop var_B8
  loc_AAF940: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AAF945: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_AAF95E: FLdRfVar var_BC
  loc_AAF961: FMemLdPr
  loc_AAF966:  = Me.RecordCount
  loc_AAF96B: ILdRf var_BC
  loc_AAF96E: LitI4 0
  loc_AAF973: EqI4
  loc_AAF974: BranchF loc_AAF97D
  loc_AAF977: LitStr "No esta parametrizado el vencimiento para el año y bimestre seleccionado. Verifique."
  loc_AAF97A: FStStrCopy var_88
  loc_AAF97D: ExitProc
  loc_AAF97E: Ary1StCy
End Function

Private Function Proc_18_59_AAFCBC(arg_C, arg_10) 'AAFCBC
  'Data Table: 4B72E0
  loc_AAFC0C: ILdRf arg_10
  loc_AAFC0F: FStStrCopy var_8C
  loc_AAFC12: LitI2_Byte &HFF
  loc_AAFC14: LitI2_Byte 0
  loc_AAFC16: ILdRf var_8C
  loc_AAFC19: LitStr "el semestre"
  loc_AAFC1C: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_AAFC21: FStStr var_88
  loc_AAFC24: ILdRf var_88
  loc_AAFC27: LitStr vbNullString
  loc_AAFC2A: NeStr
  loc_AAFC2C: BranchF loc_AAFC30
  loc_AAFC2F: ExitProc
  loc_AAFC30: LitStr "SELECT FeveVenc FROM vencimiento WHERE PeriLiqu = "
  loc_AAFC33: FLdI2 arg_C
  loc_AAFC36: CStrUI1
  loc_AAFC38: FStStrNoPop var_90
  loc_AAFC3B: ConcatStr
  loc_AAFC3C: FStStrNoPop var_94
  loc_AAFC3F: LitStr " AND BimeLiqu = "
  loc_AAFC42: ConcatStr
  loc_AAFC43: FStStrNoPop var_98
  loc_AAFC46: ILdRf var_8C
  loc_AAFC49: ConcatStr
  loc_AAFC4A: FStStrNoPop var_9C
  loc_AAFC4D: LitStr " AND CodiOfic = "
  loc_AAFC50: ConcatStr
  loc_AAFC51: FStStrNoPop var_A0
  loc_AAFC54: FLdUI1
  loc_AAFC58: CStrI2
  loc_AAFC5A: FStStrNoPop var_A4
  loc_AAFC5D: ConcatStr
  loc_AAFC5E: FStStrNoPop var_A8
  loc_AAFC61: LitStr " AND CodiTili = "
  loc_AAFC64: ConcatStr
  loc_AAFC65: FStStrNoPop var_AC
  loc_AAFC68: FLdUI1
  loc_AAFC6C: CStrI2
  loc_AAFC6E: FStStrNoPop var_B0
  loc_AAFC71: ConcatStr
  loc_AAFC72: FStStrNoPop var_B4
  loc_AAFC75: LitStr " AND TipoVenc = 'Semestral'"
  loc_AAFC78: ConcatStr
  loc_AAFC79: FStStrNoPop var_B8
  loc_AAFC7C: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AAFC81: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_AAFC9A: FLdRfVar var_BC
  loc_AAFC9D: FMemLdPr
  loc_AAFCA2:  = Me.RecordCount
  loc_AAFCA7: ILdRf var_BC
  loc_AAFCAA: LitI4 0
  loc_AAFCAF: EqI4
  loc_AAFCB0: BranchF loc_AAFCB9
  loc_AAFCB3: LitStr "No esta parametrizado el vencimiento para el PAGO DEL PRIMER SEMESTRAL. Verifique."
  loc_AAFCB6: FStStrCopy var_88
  loc_AAFCB9: ExitProc
End Function

Private Function Proc_18_60_AAEDA4(arg_C, arg_10) 'AAEDA4
  'Data Table: 4B72E0
  loc_AAECF4: ILdRf arg_10
  loc_AAECF7: FStStrCopy var_8C
  loc_AAECFA: LitI2_Byte &HFF
  loc_AAECFC: LitI2_Byte 0
  loc_AAECFE: ILdRf var_8C
  loc_AAED01: LitStr "el bimestre"
  loc_AAED04: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_AAED09: FStStr var_88
  loc_AAED0C: ILdRf var_88
  loc_AAED0F: LitStr vbNullString
  loc_AAED12: NeStr
  loc_AAED14: BranchF loc_AAED18
  loc_AAED17: ExitProc
  loc_AAED18: LitStr "SELECT FeveVenc FROM vencimiento WHERE PeriLiqu = "
  loc_AAED1B: FLdI2 arg_C
  loc_AAED1E: CStrUI1
  loc_AAED20: FStStrNoPop var_90
  loc_AAED23: ConcatStr
  loc_AAED24: FStStrNoPop var_94
  loc_AAED27: LitStr " AND BimeLiqu = "
  loc_AAED2A: ConcatStr
  loc_AAED2B: FStStrNoPop var_98
  loc_AAED2E: ILdRf var_8C
  loc_AAED31: ConcatStr
  loc_AAED32: FStStrNoPop var_9C
  loc_AAED35: LitStr " AND CodiOfic = "
  loc_AAED38: ConcatStr
  loc_AAED39: FStStrNoPop var_A0
  loc_AAED3C: FLdUI1
  loc_AAED40: CStrI2
  loc_AAED42: FStStrNoPop var_A4
  loc_AAED45: ConcatStr
  loc_AAED46: FStStrNoPop var_A8
  loc_AAED49: LitStr " AND CodiTili = "
  loc_AAED4C: ConcatStr
  loc_AAED4D: FStStrNoPop var_AC
  loc_AAED50: FLdUI1
  loc_AAED54: CStrI2
  loc_AAED56: FStStrNoPop var_B0
  loc_AAED59: ConcatStr
  loc_AAED5A: FStStrNoPop var_B4
  loc_AAED5D: LitStr " AND TipoVenc = 'Anual'"
  loc_AAED60: ConcatStr
  loc_AAED61: FStStrNoPop var_B8
  loc_AAED64: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AAED69: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_AAED82: FLdRfVar var_BC
  loc_AAED85: FMemLdPr
  loc_AAED8A:  = Me.RecordCount
  loc_AAED8F: ILdRf var_BC
  loc_AAED92: LitI4 0
  loc_AAED97: EqI4
  loc_AAED98: BranchF loc_AAEDA1
  loc_AAED9B: LitStr "No esta parametrizado el vencimiento para el PAGO ANUAL. Verifique."
  loc_AAED9E: FStStrCopy var_88
  loc_AAEDA1: ExitProc
End Function

Private Function Proc_18_61_A68C80(arg_C) 'A68C80
  'Data Table: 4B72E0
  loc_A68C20: LitStr " SELECT NumeApre FROM boleapre "
  loc_A68C23: LitStr " INNER JOIN boleto ON boleto.PeriBole = boleapre.PeriBole AND boleto.NumeBole = boleapre.NumeBole"
  loc_A68C26: ConcatStr
  loc_A68C27: FStStrNoPop var_8C
  loc_A68C2A: LitStr " WHERE NumeApre = "
  loc_A68C2D: ConcatStr
  loc_A68C2E: FStStrNoPop var_90
  loc_A68C31: ILdRf arg_C
  loc_A68C34: CStrI4
  loc_A68C36: FStStrNoPop var_94
  loc_A68C39: ConcatStr
  loc_A68C3A: FStStrNoPop var_98
  loc_A68C3D: LitStr " AND boleto.EstaBole IN ('Pagado','Actualizado')"
  loc_A68C40: ConcatStr
  loc_A68C41: FStStrNoPop var_9C
  loc_A68C44: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A68C49: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A68C56: FLdRfVar var_A0
  loc_A68C59: FMemLdPr
  loc_A68C5E:  = Me.RecordCount
  loc_A68C63: ILdRf var_A0
  loc_A68C66: LitI4 0
  loc_A68C6B: GtI4
  loc_A68C6C: BranchF loc_A68C77
  loc_A68C6F: LitI2_Byte &HFF
  loc_A68C71: FStI2 var_86
  loc_A68C74: Branch loc_A68C7C
  loc_A68C77: LitI2_Byte 0
  loc_A68C79: FStI2 var_86
  loc_A68C7C: ExitProcI2
  loc_A68C7F: CStrVarTmp
End Function

Private Function Proc_18_62_A592A0(arg_C) 'A592A0
  'Data Table: 4B72E0
  loc_A59248: ILdRf arg_C
  loc_A5924B: FStStrCopy var_8C
  loc_A5924E: LitI2_Byte &HFF
  loc_A59250: LitI2_Byte 0
  loc_A59252: ILdRf var_8C
  loc_A59255: LitStr "el Código de la posición fiscal"
  loc_A59258: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A5925D: FStStr var_88
  loc_A59260: ILdRf var_88
  loc_A59263: LitStr vbNullString
  loc_A59266: NeStr
  loc_A59268: BranchF loc_A5926C
  loc_A5926B: ExitProc
  loc_A5926C: LitStr "SELECT * FROM infogov.posifisc WHERE CodiPofi = "
  loc_A5926F: ILdRf var_8C
  loc_A59272: ConcatStr
  loc_A59273: FStStrNoPop var_90
  loc_A59276: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A5927B: FFree1Str var_90
  loc_A5927E: FLdRfVar var_94
  loc_A59281: FMemLdPr
  loc_A59286:  = Me.RecordCount
  loc_A5928B: ILdRf var_94
  loc_A5928E: LitI4 0
  loc_A59293: EqI4
  loc_A59294: BranchF loc_A5929D
  loc_A59297: LitStr "El CODIGO de la posición fiscal no existe. Reintente..."
  loc_A5929A: FStStrCopy var_88
  loc_A5929D: ExitProc
End Function

Private Function Proc_18_63_BEBABC(arg_C, arg_10) 'BEBABC
  'Data Table: 4B72E0
  loc_BEB2D4: ILdRf arg_C
  loc_BEB2D7: FStStrCopy var_8C
  loc_BEB2DA: LitI2_Byte 0
  loc_BEB2DC: LitI2_Byte 0
  loc_BEB2DE: ILdRf var_8C
  loc_BEB2E1: LitStr "la cuenta de comercio"
  loc_BEB2E4: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_BEB2E9: FStStr var_88
  loc_BEB2EC: ILdRf var_88
  loc_BEB2EF: LitStr vbNullString
  loc_BEB2F2: NeStr
  loc_BEB2F4: BranchF loc_BEB2F8
  loc_BEB2F7: ExitProc
  loc_BEB2F8: LitStr "Municipalidad de Guaymallén"
  loc_BEB2FB: LitStr "Municipalidad de San Martin"
  loc_BEB2FE: EqStr
  loc_BEB300: BranchF loc_BEB415
  loc_BEB303: LitStr "SELECT CodiCome, FebaCome, CodiExce, FfexCome, comercio.CodiEsco, estacome.DetaEsco "
  loc_BEB306: LitStr " FROM comercio "
  loc_BEB309: ConcatStr
  loc_BEB30A: FStStrNoPop var_90
  loc_BEB30D: LitStr " INNER JOIN estacome ON estacome.CodiEsco = comercio.CodiEsco"
  loc_BEB310: ConcatStr
  loc_BEB311: FStStrNoPop var_94
  loc_BEB314: LitStr " WHERE CodiCome = "
  loc_BEB317: ConcatStr
  loc_BEB318: FStStrNoPop var_98
  loc_BEB31B: ILdRf var_8C
  loc_BEB31E: ConcatStr
  loc_BEB31F: FStStrNoPop var_9C
  loc_BEB322: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_BEB327: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_BEB332: FLdRfVar var_A0
  loc_BEB335: FMemLdPr
  loc_BEB33A:  = Me.RecordCount
  loc_BEB33F: ILdRf var_A0
  loc_BEB342: LitI4 0
  loc_BEB347: EqI4
  loc_BEB348: BranchF loc_BEB354
  loc_BEB34B: LitStr "El CODIGO del COMERCIO no existe. Reintente..."
  loc_BEB34E: FStStrCopy var_88
  loc_BEB351: Branch loc_BEB412
  loc_BEB354: FLdRfVar var_B8
  loc_BEB357: LitVarStr var_B4, "FebaCome"
  loc_BEB35C: PopAdLdVar
  loc_BEB35D: FLdRfVar var_A4
  loc_BEB360: FMemLdPr
  loc_BEB365:  = Me.Fields
  loc_BEB36A: FLdPr var_A4
  loc_BEB36D: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB372: FLdZeroAd var_B8
  loc_BEB375: CVarAd
  loc_BEB379: ImpAdCallI2 IsNull()
  loc_BEB37E: NotI4
  loc_BEB37F: FFree1Ad var_A4
  loc_BEB382: FFree1Var var_C8 = ""
  loc_BEB385: BranchF loc_BEB412
  loc_BEB388: LitVarStr var_D8, "El Comercio se encuentra dado de baja. Estado: "
  loc_BEB38D: FLdRfVar var_C8
  loc_BEB390: FLdRfVar var_B8
  loc_BEB393: LitVarStr var_B4, "CodiEsco"
  loc_BEB398: PopAdLdVar
  loc_BEB399: FLdRfVar var_A4
  loc_BEB39C: FMemLdPr
  loc_BEB3A1:  = Me.Fields
  loc_BEB3A6: FLdPr var_A4
  loc_BEB3A9: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB3AE: FLdPr var_B8
  loc_BEB3B1:  = Me.Value
  loc_BEB3B6: FLdRfVar var_C8
  loc_BEB3B9: ConcatVar var_E8
  loc_BEB3BD: LitVarStr var_F8, " - "
  loc_BEB3C2: ConcatVar var_108
  loc_BEB3C6: FLdRfVar var_130
  loc_BEB3C9: FLdRfVar var_120
  loc_BEB3CC: LitVarStr var_11C, "DetaEsco"
  loc_BEB3D1: PopAdLdVar
  loc_BEB3D2: FLdRfVar var_10C
  loc_BEB3D5: FMemLdPr
  loc_BEB3DA:  = Me.Fields
  loc_BEB3DF: FLdPr var_10C
  loc_BEB3E2: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB3E7: FLdPr var_120
  loc_BEB3EA:  = Me.Value
  loc_BEB3EF: FLdRfVar var_130
  loc_BEB3F2: ConcatVar var_140
  loc_BEB3F6: CStrVarTmp
  loc_BEB3F7: FStStr var_88
  loc_BEB3FA: FFreeAd var_A4 = "": var_B8 = "": var_10C = ""
  loc_BEB405: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_130 = ""
  loc_BEB412: Branch loc_BEB483
  loc_BEB415: LitStr "SELECT CodiCome, FebaCome, CodiExce, FfexCome FROM comercio WHERE CodiCome = "
  loc_BEB418: ILdRf var_8C
  loc_BEB41B: ConcatStr
  loc_BEB41C: FStStrNoPop var_90
  loc_BEB41F: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_BEB424: FFree1Str var_90
  loc_BEB427: FLdRfVar var_A0
  loc_BEB42A: FMemLdPr
  loc_BEB42F:  = Me.RecordCount
  loc_BEB434: ILdRf var_A0
  loc_BEB437: LitI4 0
  loc_BEB43C: EqI4
  loc_BEB43D: BranchF loc_BEB449
  loc_BEB440: LitStr "El CODIGO del COMERCIO no existe. Reintente..."
  loc_BEB443: FStStrCopy var_88
  loc_BEB446: Branch loc_BEB483
  loc_BEB449: FLdRfVar var_B8
  loc_BEB44C: LitVarStr var_B4, "FebaCome"
  loc_BEB451: PopAdLdVar
  loc_BEB452: FLdRfVar var_A4
  loc_BEB455: FMemLdPr
  loc_BEB45A:  = Me.Fields
  loc_BEB45F: FLdPr var_A4
  loc_BEB462: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB467: FLdZeroAd var_B8
  loc_BEB46A: CVarAd
  loc_BEB46E: ImpAdCallI2 IsNull()
  loc_BEB473: NotI4
  loc_BEB474: FFree1Ad var_A4
  loc_BEB477: FFree1Var var_C8 = ""
  loc_BEB47A: BranchF loc_BEB483
  loc_BEB47D: LitStr "El Comercio se encuentra dado de baja."
  loc_BEB480: FStStrCopy var_88
  loc_BEB483: FLdRfVar var_A0
  loc_BEB486: FMemLdPr
  loc_BEB48B:  = Me.RecordCount
  loc_BEB490: ILdRf var_A0
  loc_BEB493: LitI4 0
  loc_BEB498: GtI4
  loc_BEB499: BranchF loc_BEBABB
  loc_BEB49C: FLdI2 arg_10
  loc_BEB49F: LitI2_Byte &HFF
  loc_BEB4A1: EqI2
  loc_BEB4A2: CVarBoolI2 var_F8
  loc_BEB4A6: FLdRfVar var_C8
  loc_BEB4A9: FLdRfVar var_B8
  loc_BEB4AC: LitVarStr var_B4, "CodiExce"
  loc_BEB4B1: PopAdLdVar
  loc_BEB4B2: FLdRfVar var_A4
  loc_BEB4B5: FMemLdPr
  loc_BEB4BA:  = Me.Fields
  loc_BEB4BF: FLdPr var_A4
  loc_BEB4C2: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB4C7: FLdPr var_B8
  loc_BEB4CA:  = Me.Value
  loc_BEB4CF: FLdRfVar var_C8
  loc_BEB4D2: LitVarI2 var_D8, 0
  loc_BEB4D7: HardType
  loc_BEB4D8: NeVar var_E8
  loc_BEB4DC: AndVar var_108
  loc_BEB4E0: CBoolVarNull
  loc_BEB4E2: FFreeAd var_A4 = ""
  loc_BEB4E9: FFreeVar var_C8 = ""
  loc_BEB4F0: BranchF loc_BEBABB
  loc_BEB4F3: LitStr "Municipalidad de Guaymallén"
  loc_BEB4F6: LitStr "Municipalidad de San Carlos"
  loc_BEB4F9: EqStr
  loc_BEB4FB: BranchF loc_BEB74B
  loc_BEB4FE: FLdRfVar var_B8
  loc_BEB501: LitVarStr var_B4, "FfexCome"
  loc_BEB506: PopAdLdVar
  loc_BEB507: FLdRfVar var_A4
  loc_BEB50A: FMemLdPr
  loc_BEB50F:  = Me.Fields
  loc_BEB514: FLdPr var_A4
  loc_BEB517: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB51C: FLdZeroAd var_B8
  loc_BEB51F: CVarAd
  loc_BEB523: ImpAdCallI2 IsNull()
  loc_BEB528: NotI4
  loc_BEB529: FFree1Ad var_A4
  loc_BEB52C: FFree1Var var_C8 = ""
  loc_BEB52F: BranchF loc_BEB663
  loc_BEB532: LitI2_Byte 0
  loc_BEB534: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BEB539: FStFPR8 var_148
  loc_BEB53C: FLdRfVar var_C8
  loc_BEB53F: FLdRfVar var_B8
  loc_BEB542: LitVarStr var_B4, "FfexCome"
  loc_BEB547: PopAdLdVar
  loc_BEB548: FLdRfVar var_A4
  loc_BEB54B: FMemLdPr
  loc_BEB550:  = Me.Fields
  loc_BEB555: FLdPr var_A4
  loc_BEB558: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB55D: FLdPr var_B8
  loc_BEB560:  = Me.Value
  loc_BEB565: FLdRfVar var_C8
  loc_BEB568: FnCDateVar
  loc_BEB56A: FLdFPR8 var_148
  loc_BEB56D: GeR8
  loc_BEB56E: FFreeAd var_A4 = ""
  loc_BEB575: FFree1Var var_C8 = ""
  loc_BEB578: BranchF loc_BEB660
  loc_BEB57B: FLdRfVar var_120
  loc_BEB57E: LitVarStr var_D8, "FfexCome"
  loc_BEB583: PopAdLdVar
  loc_BEB584: FLdRfVar var_10C
  loc_BEB587: FMemLdPr
  loc_BEB58C:  = Me.Fields
  loc_BEB591: FLdPr var_10C
  loc_BEB594: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB599: FLdZeroAd var_120
  loc_BEB59C: CVarAd
  loc_BEB5A0: ImpAdCallI2 IsNull()
  loc_BEB5A5: FStI2 var_1B2
  loc_BEB5A8: ILdRf var_88
  loc_BEB5AB: LitStr " El Comercio se encuentra con el Código de Exención: "
  loc_BEB5AE: ConcatStr
  loc_BEB5AF: CVarStr var_E8
  loc_BEB5B2: FLdRfVar var_C8
  loc_BEB5B5: FLdRfVar var_B8
  loc_BEB5B8: LitVarStr var_B4, "CodiExce"
  loc_BEB5BD: PopAdLdVar
  loc_BEB5BE: FLdRfVar var_A4
  loc_BEB5C1: FMemLdPr
  loc_BEB5C6:  = Me.Fields
  loc_BEB5CB: FLdPr var_A4
  loc_BEB5CE: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB5D3: FLdPr var_B8
  loc_BEB5D6:  = Me.Value
  loc_BEB5DB: FLdRfVar var_C8
  loc_BEB5DE: ConcatVar var_108
  loc_BEB5E2: LitVarStr var_11C, ". Fecha de Finalización: "
  loc_BEB5E7: FLdRfVar var_140
  loc_BEB5EA: FLdRfVar var_150
  loc_BEB5ED: LitVarStr var_F8, "FfexCome"
  loc_BEB5F2: PopAdLdVar
  loc_BEB5F3: FLdRfVar var_14C
  loc_BEB5F6: FMemLdPr
  loc_BEB5FB:  = Me.Fields
  loc_BEB600: FLdPr var_14C
  loc_BEB603: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB608: FLdPr var_150
  loc_BEB60B:  = Me.Value
  loc_BEB610: FLdRfVar var_140
  loc_BEB613: ConcatVar var_160
  loc_BEB617: LitVarStr var_180, vbNullString
  loc_BEB61C: FStVarCopyObj var_190
  loc_BEB61F: FLdRfVar var_190
  loc_BEB622: FLdI2 var_1B2
  loc_BEB625: CVarBoolI2 var_170
  loc_BEB629: FLdRfVar var_1A0
  loc_BEB62C: ImpAdCallFPR4  = IIf(, , )
  loc_BEB631: FLdRfVar var_1A0
  loc_BEB634: ConcatVar var_1B0
  loc_BEB638: CStrVarTmp
  loc_BEB639: FStStr var_88
  loc_BEB63C: FFreeAd var_A4 = "": var_B8 = "": var_10C = "": var_14C = ""
  loc_BEB649: FFreeVar var_E8 = "": var_C8 = "": var_130 = "": var_140 = "": var_170 = "": var_190 = "": var_160 = "": var_108 = "": var_1A0 = ""
  loc_BEB660: Branch loc_BEB748
  loc_BEB663: FLdRfVar var_120
  loc_BEB666: LitVarStr var_D8, "FfexCome"
  loc_BEB66B: PopAdLdVar
  loc_BEB66C: FLdRfVar var_10C
  loc_BEB66F: FMemLdPr
  loc_BEB674:  = Me.Fields
  loc_BEB679: FLdPr var_10C
  loc_BEB67C: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB681: FLdZeroAd var_120
  loc_BEB684: CVarAd
  loc_BEB688: ImpAdCallI2 IsNull()
  loc_BEB68D: FStI2 var_1B2
  loc_BEB690: ILdRf var_88
  loc_BEB693: LitStr " El Comercio se encuentra con el Código de Exención: "
  loc_BEB696: ConcatStr
  loc_BEB697: CVarStr var_E8
  loc_BEB69A: FLdRfVar var_C8
  loc_BEB69D: FLdRfVar var_B8
  loc_BEB6A0: LitVarStr var_B4, "CodiExce"
  loc_BEB6A5: PopAdLdVar
  loc_BEB6A6: FLdRfVar var_A4
  loc_BEB6A9: FMemLdPr
  loc_BEB6AE:  = Me.Fields
  loc_BEB6B3: FLdPr var_A4
  loc_BEB6B6: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB6BB: FLdPr var_B8
  loc_BEB6BE:  = Me.Value
  loc_BEB6C3: FLdRfVar var_C8
  loc_BEB6C6: ConcatVar var_108
  loc_BEB6CA: LitVarStr var_11C, ". Fecha de Finalización: "
  loc_BEB6CF: FLdRfVar var_140
  loc_BEB6D2: FLdRfVar var_150
  loc_BEB6D5: LitVarStr var_F8, "FfexCome"
  loc_BEB6DA: PopAdLdVar
  loc_BEB6DB: FLdRfVar var_14C
  loc_BEB6DE: FMemLdPr
  loc_BEB6E3:  = Me.Fields
  loc_BEB6E8: FLdPr var_14C
  loc_BEB6EB: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB6F0: FLdPr var_150
  loc_BEB6F3:  = Me.Value
  loc_BEB6F8: FLdRfVar var_140
  loc_BEB6FB: ConcatVar var_160
  loc_BEB6FF: LitVarStr var_180, vbNullString
  loc_BEB704: FStVarCopyObj var_190
  loc_BEB707: FLdRfVar var_190
  loc_BEB70A: FLdI2 var_1B2
  loc_BEB70D: CVarBoolI2 var_170
  loc_BEB711: FLdRfVar var_1A0
  loc_BEB714: ImpAdCallFPR4  = IIf(, , )
  loc_BEB719: FLdRfVar var_1A0
  loc_BEB71C: ConcatVar var_1B0
  loc_BEB720: CStrVarTmp
  loc_BEB721: FStStr var_88
  loc_BEB724: FFreeAd var_A4 = "": var_B8 = "": var_10C = "": var_14C = ""
  loc_BEB731: FFreeVar var_E8 = "": var_C8 = "": var_130 = "": var_140 = "": var_170 = "": var_190 = "": var_160 = "": var_108 = "": var_1A0 = ""
  loc_BEB748: Branch loc_BEBABB
  loc_BEB74B: LitStr "Municipalidad de Guaymallén"
  loc_BEB74E: LitStr "Municipalidad de San Martin"
  loc_BEB751: EqStr
  loc_BEB753: BranchF loc_BEB9D6
  loc_BEB756: FLdRfVar var_B8
  loc_BEB759: LitVarStr var_B4, "FebaCome"
  loc_BEB75E: PopAdLdVar
  loc_BEB75F: FLdRfVar var_A4
  loc_BEB762: FMemLdPr
  loc_BEB767:  = Me.Fields
  loc_BEB76C: FLdPr var_A4
  loc_BEB76F: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB774: FLdZeroAd var_B8
  loc_BEB777: CVarAd
  loc_BEB77B: ImpAdCallI2 IsNull()
  loc_BEB780: FFree1Ad var_A4
  loc_BEB783: FFree1Var var_C8 = ""
  loc_BEB786: BranchF loc_BEB8EE
  loc_BEB789: FLdRfVar var_B8
  loc_BEB78C: LitVarStr var_B4, "FfexCome"
  loc_BEB791: PopAdLdVar
  loc_BEB792: FLdRfVar var_A4
  loc_BEB795: FMemLdPr
  loc_BEB79A:  = Me.Fields
  loc_BEB79F: FLdPr var_A4
  loc_BEB7A2: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB7A7: FLdZeroAd var_B8
  loc_BEB7AA: CVarAd
  loc_BEB7AE: ImpAdCallI2 IsNull()
  loc_BEB7B3: NotI4
  loc_BEB7B4: FFree1Ad var_A4
  loc_BEB7B7: FFree1Var var_C8 = ""
  loc_BEB7BA: BranchF loc_BEB8EB
  loc_BEB7BD: LitI2_Byte 0
  loc_BEB7BF: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BEB7C4: FStFPR8 var_148
  loc_BEB7C7: FLdRfVar var_C8
  loc_BEB7CA: FLdRfVar var_B8
  loc_BEB7CD: LitVarStr var_B4, "FfexCome"
  loc_BEB7D2: PopAdLdVar
  loc_BEB7D3: FLdRfVar var_A4
  loc_BEB7D6: FMemLdPr
  loc_BEB7DB:  = Me.Fields
  loc_BEB7E0: FLdPr var_A4
  loc_BEB7E3: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB7E8: FLdPr var_B8
  loc_BEB7EB:  = Me.Value
  loc_BEB7F0: FLdRfVar var_C8
  loc_BEB7F3: FnCDateVar
  loc_BEB7F5: FLdFPR8 var_148
  loc_BEB7F8: GeR8
  loc_BEB7F9: FFreeAd var_A4 = ""
  loc_BEB800: FFree1Var var_C8 = ""
  loc_BEB803: BranchF loc_BEB8EB
  loc_BEB806: FLdRfVar var_120
  loc_BEB809: LitVarStr var_D8, "FfexCome"
  loc_BEB80E: PopAdLdVar
  loc_BEB80F: FLdRfVar var_10C
  loc_BEB812: FMemLdPr
  loc_BEB817:  = Me.Fields
  loc_BEB81C: FLdPr var_10C
  loc_BEB81F: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB824: FLdZeroAd var_120
  loc_BEB827: CVarAd
  loc_BEB82B: ImpAdCallI2 IsNull()
  loc_BEB830: FStI2 var_1B2
  loc_BEB833: ILdRf var_88
  loc_BEB836: LitStr " El Comercio se encuentra con el Código de Exención: "
  loc_BEB839: ConcatStr
  loc_BEB83A: CVarStr var_E8
  loc_BEB83D: FLdRfVar var_C8
  loc_BEB840: FLdRfVar var_B8
  loc_BEB843: LitVarStr var_B4, "CodiExce"
  loc_BEB848: PopAdLdVar
  loc_BEB849: FLdRfVar var_A4
  loc_BEB84C: FMemLdPr
  loc_BEB851:  = Me.Fields
  loc_BEB856: FLdPr var_A4
  loc_BEB859: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB85E: FLdPr var_B8
  loc_BEB861:  = Me.Value
  loc_BEB866: FLdRfVar var_C8
  loc_BEB869: ConcatVar var_108
  loc_BEB86D: LitVarStr var_11C, ". Fecha de Finalización: "
  loc_BEB872: FLdRfVar var_140
  loc_BEB875: FLdRfVar var_150
  loc_BEB878: LitVarStr var_F8, "FfexCome"
  loc_BEB87D: PopAdLdVar
  loc_BEB87E: FLdRfVar var_14C
  loc_BEB881: FMemLdPr
  loc_BEB886:  = Me.Fields
  loc_BEB88B: FLdPr var_14C
  loc_BEB88E: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB893: FLdPr var_150
  loc_BEB896:  = Me.Value
  loc_BEB89B: FLdRfVar var_140
  loc_BEB89E: ConcatVar var_160
  loc_BEB8A2: LitVarStr var_180, vbNullString
  loc_BEB8A7: FStVarCopyObj var_190
  loc_BEB8AA: FLdRfVar var_190
  loc_BEB8AD: FLdI2 var_1B2
  loc_BEB8B0: CVarBoolI2 var_170
  loc_BEB8B4: FLdRfVar var_1A0
  loc_BEB8B7: ImpAdCallFPR4  = IIf(, , )
  loc_BEB8BC: FLdRfVar var_1A0
  loc_BEB8BF: ConcatVar var_1B0
  loc_BEB8C3: CStrVarTmp
  loc_BEB8C4: FStStr var_88
  loc_BEB8C7: FFreeAd var_A4 = "": var_B8 = "": var_10C = "": var_14C = ""
  loc_BEB8D4: FFreeVar var_E8 = "": var_C8 = "": var_130 = "": var_140 = "": var_170 = "": var_190 = "": var_160 = "": var_108 = "": var_1A0 = ""
  loc_BEB8EB: Branch loc_BEB9D3
  loc_BEB8EE: FLdRfVar var_120
  loc_BEB8F1: LitVarStr var_D8, "FfexCome"
  loc_BEB8F6: PopAdLdVar
  loc_BEB8F7: FLdRfVar var_10C
  loc_BEB8FA: FMemLdPr
  loc_BEB8FF:  = Me.Fields
  loc_BEB904: FLdPr var_10C
  loc_BEB907: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB90C: FLdZeroAd var_120
  loc_BEB90F: CVarAd
  loc_BEB913: ImpAdCallI2 IsNull()
  loc_BEB918: FStI2 var_1B2
  loc_BEB91B: ILdRf var_88
  loc_BEB91E: LitStr " El Comercio se encuentra con el Código de Exención: "
  loc_BEB921: ConcatStr
  loc_BEB922: CVarStr var_E8
  loc_BEB925: FLdRfVar var_C8
  loc_BEB928: FLdRfVar var_B8
  loc_BEB92B: LitVarStr var_B4, "CodiExce"
  loc_BEB930: PopAdLdVar
  loc_BEB931: FLdRfVar var_A4
  loc_BEB934: FMemLdPr
  loc_BEB939:  = Me.Fields
  loc_BEB93E: FLdPr var_A4
  loc_BEB941: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB946: FLdPr var_B8
  loc_BEB949:  = Me.Value
  loc_BEB94E: FLdRfVar var_C8
  loc_BEB951: ConcatVar var_108
  loc_BEB955: LitVarStr var_11C, ". Fecha de Finalización: "
  loc_BEB95A: FLdRfVar var_140
  loc_BEB95D: FLdRfVar var_150
  loc_BEB960: LitVarStr var_F8, "FfexCome"
  loc_BEB965: PopAdLdVar
  loc_BEB966: FLdRfVar var_14C
  loc_BEB969: FMemLdPr
  loc_BEB96E:  = Me.Fields
  loc_BEB973: FLdPr var_14C
  loc_BEB976: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB97B: FLdPr var_150
  loc_BEB97E:  = Me.Value
  loc_BEB983: FLdRfVar var_140
  loc_BEB986: ConcatVar var_160
  loc_BEB98A: LitVarStr var_180, vbNullString
  loc_BEB98F: FStVarCopyObj var_190
  loc_BEB992: FLdRfVar var_190
  loc_BEB995: FLdI2 var_1B2
  loc_BEB998: CVarBoolI2 var_170
  loc_BEB99C: FLdRfVar var_1A0
  loc_BEB99F: ImpAdCallFPR4  = IIf(, , )
  loc_BEB9A4: FLdRfVar var_1A0
  loc_BEB9A7: ConcatVar var_1B0
  loc_BEB9AB: CStrVarTmp
  loc_BEB9AC: FStStr var_88
  loc_BEB9AF: FFreeAd var_A4 = "": var_B8 = "": var_10C = "": var_14C = ""
  loc_BEB9BC: FFreeVar var_E8 = "": var_C8 = "": var_130 = "": var_140 = "": var_170 = "": var_190 = "": var_160 = "": var_108 = "": var_1A0 = ""
  loc_BEB9D3: Branch loc_BEBABB
  loc_BEB9D6: FLdRfVar var_120
  loc_BEB9D9: LitVarStr var_D8, "FfexCome"
  loc_BEB9DE: PopAdLdVar
  loc_BEB9DF: FLdRfVar var_10C
  loc_BEB9E2: FMemLdPr
  loc_BEB9E7:  = Me.Fields
  loc_BEB9EC: FLdPr var_10C
  loc_BEB9EF: from_stack_2 = Me.Item(from_stack_1)
  loc_BEB9F4: FLdZeroAd var_120
  loc_BEB9F7: CVarAd
  loc_BEB9FB: ImpAdCallI2 IsNull()
  loc_BEBA00: FStI2 var_1B2
  loc_BEBA03: ILdRf var_88
  loc_BEBA06: LitStr " El Comercio se encuentra con el Código de Exención: "
  loc_BEBA09: ConcatStr
  loc_BEBA0A: CVarStr var_E8
  loc_BEBA0D: FLdRfVar var_C8
  loc_BEBA10: FLdRfVar var_B8
  loc_BEBA13: LitVarStr var_B4, "CodiExce"
  loc_BEBA18: PopAdLdVar
  loc_BEBA19: FLdRfVar var_A4
  loc_BEBA1C: FMemLdPr
  loc_BEBA21:  = Me.Fields
  loc_BEBA26: FLdPr var_A4
  loc_BEBA29: from_stack_2 = Me.Item(from_stack_1)
  loc_BEBA2E: FLdPr var_B8
  loc_BEBA31:  = Me.Value
  loc_BEBA36: FLdRfVar var_C8
  loc_BEBA39: ConcatVar var_108
  loc_BEBA3D: LitVarStr var_11C, ". Fecha de Finalización: "
  loc_BEBA42: FLdRfVar var_140
  loc_BEBA45: FLdRfVar var_150
  loc_BEBA48: LitVarStr var_F8, "FfexCome"
  loc_BEBA4D: PopAdLdVar
  loc_BEBA4E: FLdRfVar var_14C
  loc_BEBA51: FMemLdPr
  loc_BEBA56:  = Me.Fields
  loc_BEBA5B: FLdPr var_14C
  loc_BEBA5E: from_stack_2 = Me.Item(from_stack_1)
  loc_BEBA63: FLdPr var_150
  loc_BEBA66:  = Me.Value
  loc_BEBA6B: FLdRfVar var_140
  loc_BEBA6E: ConcatVar var_160
  loc_BEBA72: LitVarStr var_180, vbNullString
  loc_BEBA77: FStVarCopyObj var_190
  loc_BEBA7A: FLdRfVar var_190
  loc_BEBA7D: FLdI2 var_1B2
  loc_BEBA80: CVarBoolI2 var_170
  loc_BEBA84: FLdRfVar var_1A0
  loc_BEBA87: ImpAdCallFPR4  = IIf(, , )
  loc_BEBA8C: FLdRfVar var_1A0
  loc_BEBA8F: ConcatVar var_1B0
  loc_BEBA93: CStrVarTmp
  loc_BEBA94: FStStr var_88
  loc_BEBA97: FFreeAd var_A4 = "": var_B8 = "": var_10C = "": var_14C = ""
  loc_BEBAA4: FFreeVar var_E8 = "": var_C8 = "": var_130 = "": var_140 = "": var_170 = "": var_190 = "": var_160 = "": var_108 = "": var_1A0 = ""
  loc_BEBABB: ExitProc
End Function

Private Function Proc_18_64_A8B978(arg_C) 'A8B978
  'Data Table: 4B72E0
  loc_A8B8E4: ILdRf arg_C
  loc_A8B8E7: FStStrCopy var_8C
  loc_A8B8EA: LitI2_Byte 0
  loc_A8B8EC: LitI2_Byte 0
  loc_A8B8EE: ILdRf var_8C
  loc_A8B8F1: LitStr "la cuenta de comercio"
  loc_A8B8F4: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A8B8F9: FStStr var_88
  loc_A8B8FC: ILdRf var_88
  loc_A8B8FF: LitStr vbNullString
  loc_A8B902: NeStr
  loc_A8B904: BranchF loc_A8B908
  loc_A8B907: ExitProc
  loc_A8B908: LitStr "SELECT CodiCome, FebaCome, CodiExce, FfexCome FROM comercio WHERE CodiCome = "
  loc_A8B90B: ILdRf var_8C
  loc_A8B90E: ConcatStr
  loc_A8B90F: FStStrNoPop var_90
  loc_A8B912: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A8B917: FFree1Str var_90
  loc_A8B91A: FLdRfVar var_94
  loc_A8B91D: FMemLdPr
  loc_A8B922:  = Me.RecordCount
  loc_A8B927: ILdRf var_94
  loc_A8B92A: LitI4 0
  loc_A8B92F: EqI4
  loc_A8B930: BranchF loc_A8B93C
  loc_A8B933: LitStr "El CODIGO del COMERCIO no existe. Reintente..."
  loc_A8B936: FStStrCopy var_88
  loc_A8B939: Branch loc_A8B976
  loc_A8B93C: FLdRfVar var_AC
  loc_A8B93F: LitVarStr var_A8, "FebaCome"
  loc_A8B944: PopAdLdVar
  loc_A8B945: FLdRfVar var_98
  loc_A8B948: FMemLdPr
  loc_A8B94D:  = Me.Fields
  loc_A8B952: FLdPr var_98
  loc_A8B955: from_stack_2 = Me.Item(from_stack_1)
  loc_A8B95A: FLdZeroAd var_AC
  loc_A8B95D: CVarAd
  loc_A8B961: ImpAdCallI2 IsNull()
  loc_A8B966: NotI4
  loc_A8B967: FFree1Ad var_98
  loc_A8B96A: FFree1Var var_BC = ""
  loc_A8B96D: BranchF loc_A8B976
  loc_A8B970: LitStr "El Comercio se encuentra dado de baja."
  loc_A8B973: FStStrCopy var_88
  loc_A8B976: ExitProc
End Function

Private Function Proc_18_65_AB8130(arg_C) 'AB8130
  'Data Table: 4B72E0
  loc_AB8068: ILdRf arg_C
  loc_AB806B: FStStrCopy var_8C
  loc_AB806E: LitStr "SELECT CodiCome, VeceCome, VecoCome FROM comercio WHERE CodiCome = "
  loc_AB8071: ILdRf var_8C
  loc_AB8074: ConcatStr
  loc_AB8075: FStStrNoPop var_90
  loc_AB8078: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AB807D: FFree1Str var_90
  loc_AB8080: FLdRfVar var_94
  loc_AB8083: FMemLdPr
  loc_AB8088:  = Me.RecordCount
  loc_AB808D: ILdRf var_94
  loc_AB8090: LitI4 0
  loc_AB8095: GtI4
  loc_AB8096: BranchF loc_AB812E
  loc_AB8099: LitVarStr var_CC, "Vencimiento de Certificado: "
  loc_AB809E: FLdRfVar var_BC
  loc_AB80A1: FLdRfVar var_AC
  loc_AB80A4: LitVarStr var_A8, "VeceCome"
  loc_AB80A9: PopAdLdVar
  loc_AB80AA: FLdRfVar var_98
  loc_AB80AD: FMemLdPr
  loc_AB80B2:  = Me.Fields
  loc_AB80B7: FLdPr var_98
  loc_AB80BA: from_stack_2 = Me.Item(from_stack_1)
  loc_AB80BF: FLdPr var_AC
  loc_AB80C2:  = Me.Value
  loc_AB80C7: FLdRfVar var_BC
  loc_AB80CA: ConcatVar var_DC
  loc_AB80CE: LitVarStr var_EC, vbCrLf
  loc_AB80D3: ConcatVar var_FC
  loc_AB80D7: LitVarStr var_10C, "Vencimiento de Contrato   : "
  loc_AB80DC: ConcatVar var_11C
  loc_AB80E0: FLdRfVar var_144
  loc_AB80E3: FLdRfVar var_134
  loc_AB80E6: LitVarStr var_130, "VecoCome"
  loc_AB80EB: PopAdLdVar
  loc_AB80EC: FLdRfVar var_120
  loc_AB80EF: FMemLdPr
  loc_AB80F4:  = Me.Fields
  loc_AB80F9: FLdPr var_120
  loc_AB80FC: from_stack_2 = Me.Item(from_stack_1)
  loc_AB8101: FLdPr var_134
  loc_AB8104:  = Me.Value
  loc_AB8109: FLdRfVar var_144
  loc_AB810C: ConcatVar var_154
  loc_AB8110: CStrVarTmp
  loc_AB8111: FStStr var_88
  loc_AB8114: FFreeAd var_98 = "": var_AC = "": var_120 = ""
  loc_AB811F: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_144 = ""
  loc_AB812E: ExitProc
  loc_AB812F: ConcatStr
End Function

Private Function Proc_18_66_A532F4(arg_C) 'A532F4
  'Data Table: 4B72E0
  loc_A532A0: ILdRf arg_C
  loc_A532A3: FStStrCopy var_8C
  loc_A532A6: ILdRf var_8C
  loc_A532A9: LitStr "el C.U.I.L. de la persona"
  loc_A532AC: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A532B1: FStStr var_88
  loc_A532B4: ILdRf var_88
  loc_A532B7: LitStr vbNullString
  loc_A532BA: NeStr
  loc_A532BC: BranchF loc_A532C0
  loc_A532BF: ExitProc
  loc_A532C0: LitStr "SELECT CucuPers FROM infogov.persona WHERE CucuPers = "
  loc_A532C3: ILdRf var_8C
  loc_A532C6: ConcatStr
  loc_A532C7: FStStrNoPop var_90
  loc_A532CA: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A532CF: FFree1Str var_90
  loc_A532D2: FLdRfVar var_94
  loc_A532D5: FMemLdPr
  loc_A532DA:  = Me.RecordCount
  loc_A532DF: ILdRf var_94
  loc_A532E2: LitI4 0
  loc_A532E7: EqI4
  loc_A532E8: BranchF loc_A532F1
  loc_A532EB: LitStr "La Persona no existe. Reintente..."
  loc_A532EE: FStStrCopy var_88
  loc_A532F1: ExitProc
  loc_A532F2: DOC
End Function

Private Function Proc_18_67_A5789C(arg_C) 'A5789C
  'Data Table: 4B72E0
  loc_A57844: ILdRf arg_C
  loc_A57847: FStStrCopy var_8C
  loc_A5784A: LitI2_Byte 0
  loc_A5784C: LitI2_Byte 0
  loc_A5784E: ILdRf var_8C
  loc_A57851: LitStr "el Nro de Documento de la persona"
  loc_A57854: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A57859: FStStr var_88
  loc_A5785C: ILdRf var_88
  loc_A5785F: LitStr vbNullString
  loc_A57862: NeStr
  loc_A57864: BranchF loc_A57868
  loc_A57867: ExitProc
  loc_A57868: LitStr "SELECT NudoPers FROM infogov.persona WHERE NudoPers = "
  loc_A5786B: ILdRf var_8C
  loc_A5786E: ConcatStr
  loc_A5786F: FStStrNoPop var_90
  loc_A57872: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A57877: FFree1Str var_90
  loc_A5787A: FLdRfVar var_94
  loc_A5787D: FMemLdPr
  loc_A57882:  = Me.RecordCount
  loc_A57887: ILdRf var_94
  loc_A5788A: LitI4 0
  loc_A5788F: EqI4
  loc_A57890: BranchF loc_A57899
  loc_A57893: LitStr "La Persona no existe. Reintente..."
  loc_A57896: FStStrCopy var_88
  loc_A57899: ExitProc
End Function

Private Function Proc_18_68_A53924(arg_C) 'A53924
  'Data Table: 4B72E0
  loc_A538D0: ILdRf arg_C
  loc_A538D3: FStStrCopy var_8C
  loc_A538D6: ILdRf var_8C
  loc_A538D9: LitStr "el C.U.I.L. de la persona"
  loc_A538DC: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A538E1: FStStr var_88
  loc_A538E4: ILdRf var_88
  loc_A538E7: LitStr vbNullString
  loc_A538EA: NeStr
  loc_A538EC: BranchF loc_A538F0
  loc_A538EF: ExitProc
  loc_A538F0: LitStr "SELECT CucuPers FROM infogov.persona WHERE CucuPers = "
  loc_A538F3: ILdRf var_8C
  loc_A538F6: ConcatStr
  loc_A538F7: FStStrNoPop var_90
  loc_A538FA: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A538FF: FFree1Str var_90
  loc_A53902: FLdRfVar var_94
  loc_A53905: FMemLdPr
  loc_A5390A:  = Me.RecordCount
  loc_A5390F: ILdRf var_94
  loc_A53912: LitI4 0
  loc_A53917: GtI4
  loc_A53918: BranchF loc_A53921
  loc_A5391B: LitStr "La Persona YA EXISTE. Reintente..."
  loc_A5391E: FStStrCopy var_88
  loc_A53921: ExitProc
End Function

Private Function Proc_18_69_A5920C(arg_C) 'A5920C
  'Data Table: 4B72E0
  loc_A591B4: ILdRf arg_C
  loc_A591B7: FStStrCopy var_8C
  loc_A591BA: LitI2_Byte 0
  loc_A591BC: LitI2_Byte 0
  loc_A591BE: ILdRf var_8C
  loc_A591C1: LitStr "Tipo de Inspección"
  loc_A591C4: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A591C9: FStStr var_88
  loc_A591CC: ILdRf var_88
  loc_A591CF: LitStr vbNullString
  loc_A591D2: NeStr
  loc_A591D4: BranchF loc_A591D8
  loc_A591D7: ExitProc
  loc_A591D8: LitStr "SELECT CodiTiic FROM tipoinco WHERE CodiTiic = "
  loc_A591DB: ILdRf var_8C
  loc_A591DE: ConcatStr
  loc_A591DF: FStStrNoPop var_90
  loc_A591E2: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A591E7: FFree1Str var_90
  loc_A591EA: FLdRfVar var_94
  loc_A591ED: FMemLdPr
  loc_A591F2:  = Me.RecordCount
  loc_A591F7: ILdRf var_94
  loc_A591FA: LitI4 0
  loc_A591FF: EqI4
  loc_A59200: BranchF loc_A59209
  loc_A59203: LitStr "El tipo de inspeccion no existe. Reintente..."
  loc_A59206: FStStrCopy var_88
  loc_A59209: ExitProc
  loc_A5920A: FLdPr var_5720
End Function

Private Function Proc_18_70_A7D2F8(arg_C) 'A7D2F8
  'Data Table: 4B72E0
  loc_A7D284: ILdRf arg_C
  loc_A7D287: FStStrCopy var_8C
  loc_A7D28A: LitI2_Byte 0
  loc_A7D28C: LitI2_Byte 0
  loc_A7D28E: ILdRf var_8C
  loc_A7D291: LitStr "Servicio de Derechos Varios"
  loc_A7D294: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A7D299: FStStr var_88
  loc_A7D29C: ILdRf var_88
  loc_A7D29F: LitStr vbNullString
  loc_A7D2A2: NeStr
  loc_A7D2A4: BranchF loc_A7D2A8
  loc_A7D2A7: ExitProc
  loc_A7D2A8: LitStr "SELECT PeriOrde FROM servdeva WHERE PeriOrde = "
  loc_A7D2AB: ImpAdLdI2 MemVar_D93036
  loc_A7D2AE: CStrUI1
  loc_A7D2B0: FStStrNoPop var_90
  loc_A7D2B3: ConcatStr
  loc_A7D2B4: FStStrNoPop var_94
  loc_A7D2B7: LitStr " AND CodiSede = "
  loc_A7D2BA: ConcatStr
  loc_A7D2BB: FStStrNoPop var_98
  loc_A7D2BE: ILdRf var_8C
  loc_A7D2C1: ConcatStr
  loc_A7D2C2: FStStrNoPop var_9C
  loc_A7D2C5: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A7D2CA: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_A7D2D5: FLdRfVar var_A0
  loc_A7D2D8: FMemLdPr
  loc_A7D2DD:  = Me.RecordCount
  loc_A7D2E2: ILdRf var_A0
  loc_A7D2E5: LitI4 0
  loc_A7D2EA: EqI4
  loc_A7D2EB: BranchF loc_A7D2F4
  loc_A7D2EE: LitStr "El código del servicio de derechos varios no existe. Reintente..."
  loc_A7D2F1: FStStrCopy var_88
  loc_A7D2F4: ExitProc
End Function

Private Function Proc_18_71_AB801C(arg_C) 'AB801C
  'Data Table: 4B72E0
  loc_AB7F3C: ILdRf arg_C
  loc_AB7F3F: FStStrCopy var_8C
  loc_AB7F42: LitI2_Byte 0
  loc_AB7F44: LitI2_Byte 0
  loc_AB7F46: ILdRf var_8C
  loc_AB7F49: LitStr "el Código del tipo de facilidad"
  loc_AB7F4C: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AB7F51: FStStr var_88
  loc_AB7F54: ILdRf var_88
  loc_AB7F57: LitStr vbNullString
  loc_AB7F5A: NeStr
  loc_AB7F5C: BranchF loc_AB7F60
  loc_AB7F5F: ExitProc
  loc_AB7F60: LitStr "Municipalidad de Guaymallén"
  loc_AB7F63: LitStr "Municipalidad de Malargüe"
  loc_AB7F66: EqStr
  loc_AB7F68: BranchF loc_AB7FAA
  loc_AB7F6B: LitStr "SELECT CodiTifa FROM tipofapa WHERE CodiTifa = "
  loc_AB7F6E: ILdRf var_8C
  loc_AB7F71: ConcatStr
  loc_AB7F72: FStStrNoPop var_90
  loc_AB7F75: LitStr " AND FealTifa > '2010-06-24' "
  loc_AB7F78: ConcatStr
  loc_AB7F79: FStStrNoPop var_94
  loc_AB7F7C: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AB7F81: FFreeStr var_90 = ""
  loc_AB7F88: FLdRfVar var_98
  loc_AB7F8B: FMemLdPr
  loc_AB7F90:  = Me.RecordCount
  loc_AB7F95: ILdRf var_98
  loc_AB7F98: LitI4 0
  loc_AB7F9D: EqI4
  loc_AB7F9E: BranchF loc_AB7FA7
  loc_AB7FA1: LitStr "El CODIGO del TIPO de FACILIDAD de PAGO no existe. Reintente..."
  loc_AB7FA4: FStStrCopy var_88
  loc_AB7FA7: Branch loc_AB8018
  loc_AB7FAA: LitStr "SELECT CodiTifa, BajaFeho FROM tipofapa WHERE CodiTifa = "
  loc_AB7FAD: ILdRf var_8C
  loc_AB7FB0: ConcatStr
  loc_AB7FB1: FStStrNoPop var_90
  loc_AB7FB4: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AB7FB9: FFree1Str var_90
  loc_AB7FBC: FLdRfVar var_98
  loc_AB7FBF: FMemLdPr
  loc_AB7FC4:  = Me.RecordCount
  loc_AB7FC9: ILdRf var_98
  loc_AB7FCC: LitI4 0
  loc_AB7FD1: EqI4
  loc_AB7FD2: BranchF loc_AB7FDE
  loc_AB7FD5: LitStr "El CODIGO del TIPO de FACILIDAD de PAGO no existe. Reintente..."
  loc_AB7FD8: FStStrCopy var_88
  loc_AB7FDB: Branch loc_AB8018
  loc_AB7FDE: FLdRfVar var_B0
  loc_AB7FE1: LitVarStr var_AC, "BajaFeho"
  loc_AB7FE6: PopAdLdVar
  loc_AB7FE7: FLdRfVar var_9C
  loc_AB7FEA: FMemLdPr
  loc_AB7FEF:  = Me.Fields
  loc_AB7FF4: FLdPr var_9C
  loc_AB7FF7: from_stack_2 = Me.Item(from_stack_1)
  loc_AB7FFC: FLdZeroAd var_B0
  loc_AB7FFF: CVarAd
  loc_AB8003: ImpAdCallI2 IsNull()
  loc_AB8008: NotI4
  loc_AB8009: FFree1Ad var_9C
  loc_AB800C: FFree1Var var_C0 = ""
  loc_AB800F: BranchF loc_AB8018
  loc_AB8012: LitStr "El TIPO de FACILIDAD de PAGO esta DADO de BAJA. Reintente..."
  loc_AB8015: FStStrCopy var_88
  loc_AB8018: ExitProc
End Function

Private Function Proc_18_72_AD4BCC(arg_10) 'AD4BCC
  'Data Table: 4B72E0
  loc_AD4A9C: ILdRf arg_10
  loc_AD4A9F: FStStrCopy var_8C
  loc_AD4AA2: LitI2_Byte 0
  loc_AD4AA4: LitI2_Byte 0
  loc_AD4AA6: ILdRf var_8C
  loc_AD4AA9: LitStr "el Código del gasto administrativo"
  loc_AD4AAC: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AD4AB1: FStStr var_88
  loc_AD4AB4: ILdRf var_88
  loc_AD4AB7: LitStr vbNullString
  loc_AD4ABA: NeStr
  loc_AD4ABC: BranchF loc_AD4AC0
  loc_AD4ABF: ExitProc
  loc_AD4AC0: FLdUI1
  loc_AD4AC4: CI2UI1
  loc_AD4AC6: LitI2_Byte 1
  loc_AD4AC8: EqI2
  loc_AD4AC9: BranchF loc_AD4B18
  loc_AD4ACC: LitStr "SELECT CodiSeca FROM servcata WHERE PeriOrde = "
  loc_AD4ACF: ImpAdLdI2 MemVar_D93036
  loc_AD4AD2: CStrUI1
  loc_AD4AD4: FStStrNoPop var_90
  loc_AD4AD7: ConcatStr
  loc_AD4AD8: FStStrNoPop var_94
  loc_AD4ADB: LitStr " AND CodiSeca = "
  loc_AD4ADE: ConcatStr
  loc_AD4ADF: FStStrNoPop var_98
  loc_AD4AE2: ILdRf var_8C
  loc_AD4AE5: ConcatStr
  loc_AD4AE6: FStStrNoPop var_9C
  loc_AD4AE9: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AD4AEE: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_AD4AF9: FLdRfVar var_A0
  loc_AD4AFC: FMemLdPr
  loc_AD4B01:  = Me.RecordCount
  loc_AD4B06: ILdRf var_A0
  loc_AD4B09: LitI4 0
  loc_AD4B0E: EqI4
  loc_AD4B0F: BranchF loc_AD4B18
  loc_AD4B12: LitStr "El CÓDIGO del GASTO ADMINISTRATIVO no existe. Reintente..."
  loc_AD4B15: FStStrCopy var_88
  loc_AD4B18: FLdUI1
  loc_AD4B1C: CI2UI1
  loc_AD4B1E: LitI2_Byte 2
  loc_AD4B20: EqI2
  loc_AD4B21: BranchF loc_AD4B70
  loc_AD4B24: LitStr "SELECT CodiSubr FROM subrubro WHERE PeriOrde = "
  loc_AD4B27: ImpAdLdI2 MemVar_D93036
  loc_AD4B2A: CStrUI1
  loc_AD4B2C: FStStrNoPop var_90
  loc_AD4B2F: ConcatStr
  loc_AD4B30: FStStrNoPop var_94
  loc_AD4B33: LitStr " AND CodiSubr = "
  loc_AD4B36: ConcatStr
  loc_AD4B37: FStStrNoPop var_98
  loc_AD4B3A: ILdRf var_8C
  loc_AD4B3D: ConcatStr
  loc_AD4B3E: FStStrNoPop var_9C
  loc_AD4B41: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AD4B46: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_AD4B51: FLdRfVar var_A0
  loc_AD4B54: FMemLdPr
  loc_AD4B59:  = Me.RecordCount
  loc_AD4B5E: ILdRf var_A0
  loc_AD4B61: LitI4 0
  loc_AD4B66: EqI4
  loc_AD4B67: BranchF loc_AD4B70
  loc_AD4B6A: LitStr "El CÓDIGO del GASTO ADMINISTRATIVO no existe. Reintente..."
  loc_AD4B6D: FStStrCopy var_88
  loc_AD4B70: FLdUI1
  loc_AD4B74: CI2UI1
  loc_AD4B76: LitI2_Byte 4
  loc_AD4B78: EqI2
  loc_AD4B79: BranchF loc_AD4BC8
  loc_AD4B7C: LitStr "SELECT CodiSece FROM servceme WHERE PeriOrde = "
  loc_AD4B7F: ImpAdLdI2 MemVar_D93036
  loc_AD4B82: CStrUI1
  loc_AD4B84: FStStrNoPop var_90
  loc_AD4B87: ConcatStr
  loc_AD4B88: FStStrNoPop var_94
  loc_AD4B8B: LitStr " AND CodiSece = "
  loc_AD4B8E: ConcatStr
  loc_AD4B8F: FStStrNoPop var_98
  loc_AD4B92: ILdRf var_8C
  loc_AD4B95: ConcatStr
  loc_AD4B96: FStStrNoPop var_9C
  loc_AD4B99: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AD4B9E: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_AD4BA9: FLdRfVar var_A0
  loc_AD4BAC: FMemLdPr
  loc_AD4BB1:  = Me.RecordCount
  loc_AD4BB6: ILdRf var_A0
  loc_AD4BB9: LitI4 0
  loc_AD4BBE: EqI4
  loc_AD4BBF: BranchF loc_AD4BC8
  loc_AD4BC2: LitStr "El CÓDIGO del GASTO ADMINISTRATIVO no existe. Reintente..."
  loc_AD4BC5: FStStrCopy var_88
  loc_AD4BC8: ExitProc
End Function

Private Function Proc_18_73_A8C648(arg_C, arg_10) 'A8C648
  'Data Table: 4B72E0
  loc_A8C5C8: ILdRf arg_10
  loc_A8C5CB: FStStrCopy var_8C
  loc_A8C5CE: LitStr "SELECT FechInre FROM detainre WHERE FechInre >= '"
  loc_A8C5D1: FLdI2 arg_C
  loc_A8C5D4: CStrUI1
  loc_A8C5D6: FStStrNoPop var_90
  loc_A8C5D9: ConcatStr
  loc_A8C5DA: FStStrNoPop var_94
  loc_A8C5DD: LitStr "-01-01'"
  loc_A8C5E0: ConcatStr
  loc_A8C5E1: FStStrNoPop var_98
  loc_A8C5E4: LitStr " AND FechInre <= '"
  loc_A8C5E7: ConcatStr
  loc_A8C5E8: FStStrNoPop var_9C
  loc_A8C5EB: FLdI2 arg_C
  loc_A8C5EE: CStrUI1
  loc_A8C5F0: FStStrNoPop var_A0
  loc_A8C5F3: ConcatStr
  loc_A8C5F4: FStStrNoPop var_A4
  loc_A8C5F7: LitStr "-12-31' AND CodiConc = '"
  loc_A8C5FA: ConcatStr
  loc_A8C5FB: FStStrNoPop var_A8
  loc_A8C5FE: ILdRf var_8C
  loc_A8C601: ConcatStr
  loc_A8C602: FStStrNoPop var_AC
  loc_A8C605: LitStr "'"
  loc_A8C608: ConcatStr
  loc_A8C609: FStStrNoPop var_B0
  loc_A8C60C: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A8C611: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A8C626: FLdRfVar var_B4
  loc_A8C629: FMemLdPr
  loc_A8C62E:  = Me.RecordCount
  loc_A8C633: ILdRf var_B4
  loc_A8C636: LitI4 0
  loc_A8C63B: GtI4
  loc_A8C63C: BranchF loc_A8C645
  loc_A8C63F: LitStr "Ya existen ingresos para este concepto. No se puede cambiar la cuenta contable de ingresos"
  loc_A8C642: FStStrCopy var_88
  loc_A8C645: ExitProc
End Function

Private Function Proc_18_74_A7E438(arg_10) 'A7E438
  'Data Table: 4B72E0
  loc_A7E3B8: ILdRf arg_10
  loc_A7E3BB: FStStrCopy var_8C
  loc_A7E3BE: LitStr "SELECT CodiOfic FROM ctacte USE INDEX (segctacte) WHERE CodiConc = '"
  loc_A7E3C1: ILdRf var_8C
  loc_A7E3C4: ConcatStr
  loc_A7E3C5: FStStrNoPop var_90
  loc_A7E3C8: LitStr "'"
  loc_A7E3CB: ConcatStr
  loc_A7E3CC: FStStrNoPop var_94
  loc_A7E3CF: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A7E3D4: FFreeStr var_90 = ""
  loc_A7E3DB: FLdRfVar var_98
  loc_A7E3DE: FMemLdPr
  loc_A7E3E3:  = Me.RecordCount
  loc_A7E3E8: ILdRf var_98
  loc_A7E3EB: LitI4 0
  loc_A7E3F0: GtI4
  loc_A7E3F1: BranchF loc_A7E3FB
  loc_A7E3F4: LitStr "Ya existen movimientos en la cuenta corriemte para este concepto. No se puede cambiar la cuenta contable de activo"
  loc_A7E3F7: FStStrCopy var_88
  loc_A7E3FA: ExitProc
  loc_A7E3FB: LitStr "SELECT CodiOfic FROM recahisto.histoctacte USE INDEX (segctacte) WHERE CodiConc = '"
  loc_A7E3FE: ILdRf var_8C
  loc_A7E401: ConcatStr
  loc_A7E402: FStStrNoPop var_90
  loc_A7E405: LitStr "'"
  loc_A7E408: ConcatStr
  loc_A7E409: FStStrNoPop var_94
  loc_A7E40C: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A7E411: FFreeStr var_90 = ""
  loc_A7E418: FLdRfVar var_98
  loc_A7E41B: FMemLdPr
  loc_A7E420:  = Me.RecordCount
  loc_A7E425: ILdRf var_98
  loc_A7E428: LitI4 0
  loc_A7E42D: GtI4
  loc_A7E42E: BranchF loc_A7E437
  loc_A7E431: LitStr "Ya existen movimientos en la cuenta corriemte para este concepto. No se puede cambiar la cuenta contable de activo"
  loc_A7E434: FStStrCopy var_88
  loc_A7E437: ExitProc
End Function

Private Function Proc_18_75_A7E678(arg_10) 'A7E678
  'Data Table: 4B72E0
  loc_A7E5F8: ILdRf arg_10
  loc_A7E5FB: FStStrCopy var_8C
  loc_A7E5FE: LitStr "SELECT CodiOfic FROM ctacte USE INDEX (segctacte) WHERE CodiConc = '"
  loc_A7E601: ILdRf var_8C
  loc_A7E604: ConcatStr
  loc_A7E605: FStStrNoPop var_90
  loc_A7E608: LitStr "'"
  loc_A7E60B: ConcatStr
  loc_A7E60C: FStStrNoPop var_94
  loc_A7E60F: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A7E614: FFreeStr var_90 = ""
  loc_A7E61B: FLdRfVar var_98
  loc_A7E61E: FMemLdPr
  loc_A7E623:  = Me.RecordCount
  loc_A7E628: ILdRf var_98
  loc_A7E62B: LitI4 0
  loc_A7E630: GtI4
  loc_A7E631: BranchF loc_A7E63B
  loc_A7E634: LitStr "Ya existen movimientos en la cuenta corriemte para este concepto. No se puede marcar como 'SIN CREACIÓN DE CUENTA'"
  loc_A7E637: FStStrCopy var_88
  loc_A7E63A: ExitProc
  loc_A7E63B: LitStr "SELECT CodiOfic FROM recahisto.histoctacte USE INDEX (segctacte) WHERE CodiConc = '"
  loc_A7E63E: ILdRf var_8C
  loc_A7E641: ConcatStr
  loc_A7E642: FStStrNoPop var_90
  loc_A7E645: LitStr "'"
  loc_A7E648: ConcatStr
  loc_A7E649: FStStrNoPop var_94
  loc_A7E64C: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A7E651: FFreeStr var_90 = ""
  loc_A7E658: FLdRfVar var_98
  loc_A7E65B: FMemLdPr
  loc_A7E660:  = Me.RecordCount
  loc_A7E665: ILdRf var_98
  loc_A7E668: LitI4 0
  loc_A7E66D: GtI4
  loc_A7E66E: BranchF loc_A7E677
  loc_A7E671: LitStr "Ya existen movimientos en la cuenta corriemte para este concepto. No se puede marcar como 'SIN CREACIÓN DE CUENTA'"
  loc_A7E674: FStStrCopy var_88
  loc_A7E677: ExitProc
End Function

Private Function Proc_18_76_A7F730(arg_C, arg_10) 'A7F730
  'Data Table: 4B72E0
  loc_A7F6C0: ILdRf arg_10
  loc_A7F6C3: FStStrCopy var_8C
  loc_A7F6C6: LitStr " SELECT * from boleto"
  loc_A7F6C9: LitStr " LEFT JOIN detabole ON detabole.PeriBole = boleto.PeriBole AND detabole.NumeBole = boleto.NumeBole"
  loc_A7F6CC: ConcatStr
  loc_A7F6CD: FStStrNoPop var_90
  loc_A7F6D0: LitStr " WHERE YEAR(FealBole) = "
  loc_A7F6D3: ConcatStr
  loc_A7F6D4: FStStrNoPop var_94
  loc_A7F6D7: FLdI2 arg_C
  loc_A7F6DA: CStrUI1
  loc_A7F6DC: FStStrNoPop var_98
  loc_A7F6DF: ConcatStr
  loc_A7F6E0: FStStrNoPop var_9C
  loc_A7F6E3: LitStr " AND detabole.CodiConc = '"
  loc_A7F6E6: ConcatStr
  loc_A7F6E7: FStStrNoPop var_A0
  loc_A7F6EA: ILdRf var_8C
  loc_A7F6ED: ConcatStr
  loc_A7F6EE: FStStrNoPop var_A4
  loc_A7F6F1: LitStr "' AND detabole.CodiOfic = 3 AND detabole.CuenCtct = ''"
  loc_A7F6F4: ConcatStr
  loc_A7F6F5: FStStrNoPop var_A8
  loc_A7F6F8: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A7F6FD: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A7F70E: FLdRfVar var_AC
  loc_A7F711: FMemLdPr
  loc_A7F716:  = Me.RecordCount
  loc_A7F71B: ILdRf var_AC
  loc_A7F71E: LitI4 0
  loc_A7F723: GtI4
  loc_A7F724: BranchF loc_A7F72E
  loc_A7F727: LitStr "Ya existen movimientos en los boletos, sin creación de cuenta. No se puede marcar como 'CON CREACIÓN DE CUENTA'"
  loc_A7F72A: FStStrCopy var_88
  loc_A7F72D: ExitProc
  loc_A7F72E: ExitProc
End Function

Private Function Proc_18_77_AC5F18(arg_C, arg_10) 'AC5F18
  'Data Table: 4B72E0
  loc_AC5E2C: ILdRf arg_10
  loc_AC5E2F: FStStrCopy var_8C
  loc_AC5E32: LitStr "SELECT * FROM concepto WHERE PeriInfo = "
  loc_AC5E35: FLdI2 arg_C
  loc_AC5E38: CStrUI1
  loc_AC5E3A: FStStrNoPop var_90
  loc_AC5E3D: ConcatStr
  loc_AC5E3E: FStStrNoPop var_94
  loc_AC5E41: LitStr " AND CodiConc = '"
  loc_AC5E44: ConcatStr
  loc_AC5E45: FStStrNoPop var_98
  loc_AC5E48: ILdRf var_8C
  loc_AC5E4B: ConcatStr
  loc_AC5E4C: FStStrNoPop var_9C
  loc_AC5E4F: LitStr "'"
  loc_AC5E52: ConcatStr
  loc_AC5E53: FStStrNoPop var_A0
  loc_AC5E56: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AC5E5B: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_AC5E68: FLdRfVar var_A4
  loc_AC5E6B: FMemLdPr
  loc_AC5E70:  = Me.RecordCount
  loc_AC5E75: ILdRf var_A4
  loc_AC5E78: LitI4 0
  loc_AC5E7D: GtI4
  loc_AC5E7E: BranchF loc_AC5F14
  loc_AC5E81: FLdRfVar var_CC
  loc_AC5E84: FLdRfVar var_BC
  loc_AC5E87: LitVarStr var_B8, "TiafConc"
  loc_AC5E8C: PopAdLdVar
  loc_AC5E8D: FLdRfVar var_A8
  loc_AC5E90: FMemLdPr
  loc_AC5E95:  = Me.Fields
  loc_AC5E9A: FLdPr var_A8
  loc_AC5E9D: from_stack_2 = Me.Item(from_stack_1)
  loc_AC5EA2: FLdPr var_BC
  loc_AC5EA5:  = Me.Value
  loc_AC5EAA: FLdRfVar var_CC
  loc_AC5EAD: LitVarI2 var_DC, 0
  loc_AC5EB2: HardType
  loc_AC5EB3: EqVarBool
  loc_AC5EB5: FFreeAd var_A8 = ""
  loc_AC5EBC: FFree1Var var_CC = ""
  loc_AC5EBF: BranchF loc_AC5F14
  loc_AC5EC2: LitVarStr var_DC, "El Concepto: "
  loc_AC5EC7: FLdRfVar var_CC
  loc_AC5ECA: FLdRfVar var_BC
  loc_AC5ECD: LitVarStr var_B8, "CodiConc"
  loc_AC5ED2: PopAdLdVar
  loc_AC5ED3: FLdRfVar var_A8
  loc_AC5ED6: FMemLdPr
  loc_AC5EDB:  = Me.Fields
  loc_AC5EE0: FLdPr var_A8
  loc_AC5EE3: from_stack_2 = Me.Item(from_stack_1)
  loc_AC5EE8: FLdPr var_BC
  loc_AC5EEB:  = Me.Value
  loc_AC5EF0: FLdRfVar var_CC
  loc_AC5EF3: ConcatVar var_EC
  loc_AC5EF7: LitVarStr var_FC, " no tiene el tipo de movimiento. Verifique..."
  loc_AC5EFC: ConcatVar var_10C
  loc_AC5F00: CStrVarTmp
  loc_AC5F01: FStStr var_88
  loc_AC5F04: FFreeAd var_A8 = ""
  loc_AC5F0B: FFreeVar var_CC = "": var_EC = ""
  loc_AC5F14: ExitProc
  loc_AC5F15: FLdPr var_C8
End Function

Private Function Proc_18_78_AA57A0(arg_C, arg_10, arg_14) 'AA57A0
  'Data Table: 4B72E0
  loc_AA56FC: ILdRf arg_10
  loc_AA56FF: FStStrCopy var_8C
  loc_AA5702: ILdRf arg_14
  loc_AA5705: FStStrCopy var_90
  loc_AA5708: LitStr "SELECT * FROM concepto WHERE PeriInfo = "
  loc_AA570B: FLdI2 arg_C
  loc_AA570E: CStrUI1
  loc_AA5710: FStStrNoPop var_94
  loc_AA5713: ConcatStr
  loc_AA5714: FStStrNoPop var_98
  loc_AA5717: LitStr " AND ActiConc = '"
  loc_AA571A: ConcatStr
  loc_AA571B: FStStrNoPop var_9C
  loc_AA571E: ILdRf var_8C
  loc_AA5721: ConcatStr
  loc_AA5722: FStStrNoPop var_A0
  loc_AA5725: LitStr "' AND IngrConc <> ''"
  loc_AA5728: ConcatStr
  loc_AA5729: FStStrNoPop var_A4
  loc_AA572C: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AA5731: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_AA573E: FLdRfVar var_A8
  loc_AA5741: FMemLdPr
  loc_AA5746:  = Me.RecordCount
  loc_AA574B: ILdRf var_A8
  loc_AA574E: LitI4 0
  loc_AA5753: GtI4
  loc_AA5754: BranchF loc_AA579F
  loc_AA5757: ILdRf var_90
  loc_AA575A: CVarStr var_E0
  loc_AA575D: HardType
  loc_AA575E: FLdRfVar var_D0
  loc_AA5761: FLdRfVar var_C0
  loc_AA5764: LitVarStr var_BC, "IngrConc"
  loc_AA5769: PopAdLdVar
  loc_AA576A: FLdRfVar var_AC
  loc_AA576D: FMemLdPr
  loc_AA5772:  = Me.Fields
  loc_AA5777: FLdPr var_AC
  loc_AA577A: from_stack_2 = Me.Item(from_stack_1)
  loc_AA577F: FLdPr var_C0
  loc_AA5782:  = Me.Value
  loc_AA5787: FLdRfVar var_D0
  loc_AA578A: NeVarBool
  loc_AA578C: FFreeAd var_AC = ""
  loc_AA5793: FFree1Var var_D0 = ""
  loc_AA5796: BranchF loc_AA579F
  loc_AA5799: LitStr "La cuenta de ingreso no es valida. Verifique que existe otro concepto con la misma cuenta de ACTIVO"
  loc_AA579C: FStStrCopy var_88
  loc_AA579F: ExitProc
End Function

Private Function Proc_18_79_A786B4(arg_C, arg_10, arg_14) 'A786B4
  'Data Table: 4B72E0
  loc_A78650: ILdRf arg_10
  loc_A78653: FStStrCopy var_8C
  loc_A78656: ILdRf arg_14
  loc_A78659: FStStrCopy var_90
  loc_A7865C: LitStr "SELECT * FROM concepto WHERE PeriInfo = "
  loc_A7865F: FLdI2 arg_C
  loc_A78662: CStrUI1
  loc_A78664: FStStrNoPop var_94
  loc_A78667: ConcatStr
  loc_A78668: FStStrNoPop var_98
  loc_A7866B: LitStr " AND IngrConc = '"
  loc_A7866E: ConcatStr
  loc_A7866F: FStStrNoPop var_9C
  loc_A78672: ILdRf var_90
  loc_A78675: ConcatStr
  loc_A78676: FStStrNoPop var_A0
  loc_A78679: LitStr "' AND ActiConc <> ''"
  loc_A7867C: ConcatStr
  loc_A7867D: FStStrNoPop var_A4
  loc_A78680: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A78685: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A78692: FLdRfVar var_A8
  loc_A78695: FMemLdPr
  loc_A7869A:  = Me.RecordCount
  loc_A7869F: ILdRf var_A8
  loc_A786A2: LitI4 0
  loc_A786A7: GtI4
  loc_A786A8: BranchF loc_A786B1
  loc_A786AB: LitStr "La cuenta de ingreso no es valida. Verifique que la cuenta de ingreso no se encuentre en un concepto que tiene cuenta de activo."
  loc_A786AE: FStStrCopy var_88
  loc_A786B1: ExitProc
  loc_A786B2: LitStr " AND c.CodiCuco = tribu.ActiConc"
End Function

Private Function Proc_18_80_A6BBA4(arg_C, arg_10) 'A6BBA4
  'Data Table: 4B72E0
  loc_A6BB48: ILdRf arg_10
  loc_A6BB4B: FStStrCopy var_8C
  loc_A6BB4E: LitStr "SELECT * FROM concepto WHERE PeriInfo = "
  loc_A6BB51: FLdI2 arg_C
  loc_A6BB54: CStrUI1
  loc_A6BB56: FStStrNoPop var_90
  loc_A6BB59: ConcatStr
  loc_A6BB5A: FStStrNoPop var_94
  loc_A6BB5D: LitStr " AND IngrConc = '"
  loc_A6BB60: ConcatStr
  loc_A6BB61: FStStrNoPop var_98
  loc_A6BB64: ILdRf var_8C
  loc_A6BB67: ConcatStr
  loc_A6BB68: FStStrNoPop var_9C
  loc_A6BB6B: LitStr "' AND ActiConc = ''"
  loc_A6BB6E: ConcatStr
  loc_A6BB6F: FStStrNoPop var_A0
  loc_A6BB72: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A6BB77: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A6BB84: FLdRfVar var_A4
  loc_A6BB87: FMemLdPr
  loc_A6BB8C:  = Me.RecordCount
  loc_A6BB91: ILdRf var_A4
  loc_A6BB94: LitI4 0
  loc_A6BB99: GtI4
  loc_A6BB9A: BranchF loc_A6BBA3
  loc_A6BB9D: LitStr "La cuenta de ingreso se encuentra en otros conceptos que se utilizan para DEUDORES SIN CREACION en la cuenta corriente."
  loc_A6BBA0: FStStrCopy var_88
  loc_A6BBA3: ExitProc
End Function

Private Function Proc_18_81_A86A90(arg_C) 'A86A90
  'Data Table: 4B72E0
  loc_A86A18: ILdRf arg_C
  loc_A86A1B: FStStrCopy var_8C
  loc_A86A1E: ILdRf arg_14
  loc_A86A21: FStStrCopy var_90
  loc_A86A24: LitStr "SELECT * FROM relacion WHERE CucuPers <> '"
  loc_A86A27: ILdRf var_8C
  loc_A86A2A: ConcatStr
  loc_A86A2B: FStStrNoPop var_94
  loc_A86A2E: LitStr "' AND CodiOfic = "
  loc_A86A31: ConcatStr
  loc_A86A32: FStStrNoPop var_98
  loc_A86A35: FLdUI1
  loc_A86A39: CStrI2
  loc_A86A3B: FStStrNoPop var_9C
  loc_A86A3E: ConcatStr
  loc_A86A3F: FStStrNoPop var_A0
  loc_A86A42: LitStr " AND CuenCtct = '"
  loc_A86A45: ConcatStr
  loc_A86A46: FStStrNoPop var_A4
  loc_A86A49: ILdRf var_90
  loc_A86A4C: ConcatStr
  loc_A86A4D: FStStrNoPop var_A8
  loc_A86A50: LitStr "' AND TipoRela = 'Titular' "
  loc_A86A53: ConcatStr
  loc_A86A54: FStStrNoPop var_AC
  loc_A86A57: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A86A5C: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A86A6D: FLdRfVar var_B0
  loc_A86A70: FMemLdPr
  loc_A86A75:  = Me.RecordCount
  loc_A86A7A: ILdRf var_B0
  loc_A86A7D: LitI4 0
  loc_A86A82: GtI4
  loc_A86A83: BranchF loc_A86A8C
  loc_A86A86: LitStr "Existe un TITULAR para esta cuenta"
  loc_A86A89: FStStrCopy var_88
  loc_A86A8C: ExitProc
End Function

Private Function Proc_18_82_A5945C(arg_C) 'A5945C
  'Data Table: 4B72E0
  loc_A59404: ILdRf arg_C
  loc_A59407: FStStrCopy var_8C
  loc_A5940A: LitI2_Byte 0
  loc_A5940C: LitI2_Byte 0
  loc_A5940E: ILdRf var_8C
  loc_A59411: LitStr "el Instancia Judicial"
  loc_A59414: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A59419: FStStr var_88
  loc_A5941C: ILdRf var_88
  loc_A5941F: LitStr vbNullString
  loc_A59422: NeStr
  loc_A59424: BranchF loc_A59428
  loc_A59427: ExitProc
  loc_A59428: LitStr "SELECT CodiInju FROM instjudi WHERE CodiInju = "
  loc_A5942B: ILdRf var_8C
  loc_A5942E: ConcatStr
  loc_A5942F: FStStrNoPop var_90
  loc_A59432: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A59437: FFree1Str var_90
  loc_A5943A: FLdRfVar var_94
  loc_A5943D: FMemLdPr
  loc_A59442:  = Me.RecordCount
  loc_A59447: ILdRf var_94
  loc_A5944A: LitI4 0
  loc_A5944F: EqI4
  loc_A59450: BranchF loc_A59459
  loc_A59453: LitStr "La INSTANCIA JUDICIAL no existe. Reintente..."
  loc_A59456: FStStrCopy var_88
  loc_A59459: ExitProc
End Function

Private Function Proc_18_83_A587A4(arg_C) 'A587A4
  'Data Table: 4B72E0
  loc_A5874C: ILdRf arg_C
  loc_A5874F: FStStrCopy var_8C
  loc_A58752: LitI2_Byte 0
  loc_A58754: LitI2_Byte 0
  loc_A58756: ILdRf var_8C
  loc_A58759: LitStr "Código del Tramite"
  loc_A5875C: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A58761: FStStr var_88
  loc_A58764: ILdRf var_88
  loc_A58767: LitStr vbNullString
  loc_A5876A: NeStr
  loc_A5876C: BranchF loc_A58770
  loc_A5876F: ExitProc
  loc_A58770: LitStr "SELECT CodiTram FROM tramite WHERE CodiTram = "
  loc_A58773: ILdRf var_8C
  loc_A58776: ConcatStr
  loc_A58777: FStStrNoPop var_90
  loc_A5877A: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A5877F: FFree1Str var_90
  loc_A58782: FLdRfVar var_94
  loc_A58785: FMemLdPr
  loc_A5878A:  = Me.RecordCount
  loc_A5878F: ILdRf var_94
  loc_A58792: LitI4 0
  loc_A58797: EqI4
  loc_A58798: BranchF loc_A587A1
  loc_A5879B: LitStr "El tramite no exiet. Verifique..."
  loc_A5879E: FStStrCopy var_88
  loc_A587A1: ExitProc
End Function

Private Function Proc_18_84_A7DE34(arg_C) 'A7DE34
  'Data Table: 4B72E0
  loc_A7DDB8: ILdRf arg_C
  loc_A7DDBB: FStStrCopy var_8C
  loc_A7DDBE: LitStr "SELECT * FROM interes ORDER BY CodiInte"
  loc_A7DDC1: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A7DDC6: FLdRfVar var_90
  loc_A7DDC9: FMemLdPr
  loc_A7DDCE:  = Me.RecordCount
  loc_A7DDD3: ILdRf var_90
  loc_A7DDD6: LitI4 0
  loc_A7DDDB: GtI4
  loc_A7DDDC: BranchF loc_A7DE30
  loc_A7DDDF: FMemLdPr
  loc_A7DDE4: Me.MoveLast
  loc_A7DDE9: FLdRfVar var_B8
  loc_A7DDEC: FLdRfVar var_A8
  loc_A7DDEF: LitVarStr var_A4, "FechInte"
  loc_A7DDF4: PopAdLdVar
  loc_A7DDF5: FLdRfVar var_94
  loc_A7DDF8: FMemLdPr
  loc_A7DDFD:  = Me.Fields
  loc_A7DE02: FLdPr var_94
  loc_A7DE05: from_stack_2 = Me.Item(from_stack_1)
  loc_A7DE0A: FLdPr var_A8
  loc_A7DE0D:  = Me.Value
  loc_A7DE12: ILdRf var_8C
  loc_A7DE15: CDateStr
  loc_A7DE17: FLdRfVar var_B8
  loc_A7DE1A: FnCDateVar
  loc_A7DE1C: LeR8
  loc_A7DE1D: FFreeAd var_94 = ""
  loc_A7DE24: FFree1Var var_B8 = ""
  loc_A7DE27: BranchF loc_A7DE30
  loc_A7DE2A: LitStr "La fecha no puede ser menor o igual al ultimo registro ingresado"
  loc_A7DE2D: FStStrCopy var_88
  loc_A7DE30: ExitProc
End Function

Private Function Proc_18_85_AD4EB0(arg_C, arg_10) 'AD4EB0
  'Data Table: 4B72E0
  loc_AD4D8C: ILdRf arg_C
  loc_AD4D8F: FStStrCopy var_8C
  loc_AD4D92: ILdRf arg_10
  loc_AD4D95: FStStrCopy var_90
  loc_AD4D98: LitStr "SELECT * FROM interes WHERE CodiInte = "
  loc_AD4D9B: ILdRf var_8C
  loc_AD4D9E: CR8Str
  loc_AD4DA0: LitI2_Byte 1
  loc_AD4DA2: CR8I2
  loc_AD4DA3: SubR4
  loc_AD4DA4: CStrR8
  loc_AD4DA6: FStStrNoPop var_94
  loc_AD4DA9: ConcatStr
  loc_AD4DAA: FStStrNoPop var_98
  loc_AD4DAD: LitStr " ORDER BY CodiInte"
  loc_AD4DB0: ConcatStr
  loc_AD4DB1: FStStrNoPop var_9C
  loc_AD4DB4: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AD4DB9: FFreeStr var_94 = "": var_98 = ""
  loc_AD4DC2: FLdRfVar var_A0
  loc_AD4DC5: FMemLdPr
  loc_AD4DCA:  = Me.RecordCount
  loc_AD4DCF: ILdRf var_A0
  loc_AD4DD2: LitI4 0
  loc_AD4DD7: GtI4
  loc_AD4DD8: BranchF loc_AD4E22
  loc_AD4DDB: FLdRfVar var_C8
  loc_AD4DDE: FLdRfVar var_B8
  loc_AD4DE1: LitVarStr var_B4, "FechInte"
  loc_AD4DE6: PopAdLdVar
  loc_AD4DE7: FLdRfVar var_A4
  loc_AD4DEA: FMemLdPr
  loc_AD4DEF:  = Me.Fields
  loc_AD4DF4: FLdPr var_A4
  loc_AD4DF7: from_stack_2 = Me.Item(from_stack_1)
  loc_AD4DFC: FLdPr var_B8
  loc_AD4DFF:  = Me.Value
  loc_AD4E04: ILdRf var_90
  loc_AD4E07: CDateStr
  loc_AD4E09: FLdRfVar var_C8
  loc_AD4E0C: FnCDateVar
  loc_AD4E0E: LeR8
  loc_AD4E0F: FFreeAd var_A4 = ""
  loc_AD4E16: FFree1Var var_C8 = ""
  loc_AD4E19: BranchF loc_AD4E22
  loc_AD4E1C: LitStr "La fecha no puede ser menor o igual al registro anterior"
  loc_AD4E1F: FStStrCopy var_88
  loc_AD4E22: LitStr "SELECT * FROM interes WHERE CodiInte = "
  loc_AD4E25: ILdRf var_8C
  loc_AD4E28: CR8Str
  loc_AD4E2A: LitI2_Byte 1
  loc_AD4E2C: CR8I2
  loc_AD4E2D: AddR8
  loc_AD4E2E: CStrR8
  loc_AD4E30: FStStrNoPop var_94
  loc_AD4E33: ConcatStr
  loc_AD4E34: FStStrNoPop var_98
  loc_AD4E37: LitStr " ORDER BY CodiInte"
  loc_AD4E3A: ConcatStr
  loc_AD4E3B: FStStrNoPop var_9C
  loc_AD4E3E: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AD4E43: FFreeStr var_94 = "": var_98 = ""
  loc_AD4E4C: FLdRfVar var_A0
  loc_AD4E4F: FMemLdPr
  loc_AD4E54:  = Me.RecordCount
  loc_AD4E59: ILdRf var_A0
  loc_AD4E5C: LitI4 0
  loc_AD4E61: GtI4
  loc_AD4E62: BranchF loc_AD4EAC
  loc_AD4E65: FLdRfVar var_C8
  loc_AD4E68: FLdRfVar var_B8
  loc_AD4E6B: LitVarStr var_B4, "FechInte"
  loc_AD4E70: PopAdLdVar
  loc_AD4E71: FLdRfVar var_A4
  loc_AD4E74: FMemLdPr
  loc_AD4E79:  = Me.Fields
  loc_AD4E7E: FLdPr var_A4
  loc_AD4E81: from_stack_2 = Me.Item(from_stack_1)
  loc_AD4E86: FLdPr var_B8
  loc_AD4E89:  = Me.Value
  loc_AD4E8E: ILdRf var_90
  loc_AD4E91: CDateStr
  loc_AD4E93: FLdRfVar var_C8
  loc_AD4E96: FnCDateVar
  loc_AD4E98: GeR8
  loc_AD4E99: FFreeAd var_A4 = ""
  loc_AD4EA0: FFree1Var var_C8 = ""
  loc_AD4EA3: BranchF loc_AD4EAC
  loc_AD4EA6: LitStr "La fecha no puede ser mayor o igual al registro siguiente"
  loc_AD4EA9: FStStrCopy var_88
  loc_AD4EAC: ExitProc
End Function

Private Function Proc_18_86_A770F8(arg_C) 'A770F8
  'Data Table: 4B72E0
  loc_A77084: LitStr "SELECT * FROM interes ORDER BY CodiInte"
  loc_A77087: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A7708C: FLdRfVar var_8C
  loc_A7708F: FMemLdPr
  loc_A77094:  = Me.RecordCount
  loc_A77099: ILdRf var_8C
  loc_A7709C: LitI4 0
  loc_A770A1: GtI4
  loc_A770A2: BranchF loc_A770F4
  loc_A770A5: FMemLdPr
  loc_A770AA: Me.MoveLast
  loc_A770AF: FLdRfVar var_B4
  loc_A770B2: FLdRfVar var_A4
  loc_A770B5: LitVarStr var_A0, "PorcInte"
  loc_A770BA: PopAdLdVar
  loc_A770BB: FLdRfVar var_90
  loc_A770BE: FMemLdPr
  loc_A770C3:  = Me.Fields
  loc_A770C8: FLdPr var_90
  loc_A770CB: from_stack_2 = Me.Item(from_stack_1)
  loc_A770D0: FLdPr var_A4
  loc_A770D3:  = Me.Value
  loc_A770D8: FLdFPR8 arg_C
  loc_A770DB: FLdRfVar var_B4
  loc_A770DE: FnCDblVar
  loc_A770E0: LeR8
  loc_A770E1: FFreeAd var_90 = ""
  loc_A770E8: FFree1Var var_B4 = ""
  loc_A770EB: BranchF loc_A770F4
  loc_A770EE: LitStr "El porcentaje no puede ser menor o igual al ultimo registro ingresado"
  loc_A770F1: FStStrCopy var_88
  loc_A770F4: ExitProc
End Function

Private Function Proc_18_87_ACE780(arg_C, arg_10) 'ACE780
  'Data Table: 4B72E0
  loc_ACE668: ILdRf arg_C
  loc_ACE66B: FStStrCopy var_8C
  loc_ACE66E: LitStr "SELECT * FROM interes WHERE CodiInte = "
  loc_ACE671: ILdRf var_8C
  loc_ACE674: CR8Str
  loc_ACE676: LitI2_Byte 1
  loc_ACE678: CR8I2
  loc_ACE679: SubR4
  loc_ACE67A: CStrR8
  loc_ACE67C: FStStrNoPop var_90
  loc_ACE67F: ConcatStr
  loc_ACE680: FStStrNoPop var_94
  loc_ACE683: LitStr " ORDER BY CodiInte"
  loc_ACE686: ConcatStr
  loc_ACE687: FStStrNoPop var_98
  loc_ACE68A: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_ACE68F: FFreeStr var_90 = "": var_94 = ""
  loc_ACE698: FLdRfVar var_9C
  loc_ACE69B: FMemLdPr
  loc_ACE6A0:  = Me.RecordCount
  loc_ACE6A5: ILdRf var_9C
  loc_ACE6A8: LitI4 0
  loc_ACE6AD: GtI4
  loc_ACE6AE: BranchF loc_ACE6F6
  loc_ACE6B1: FLdRfVar var_C4
  loc_ACE6B4: FLdRfVar var_B4
  loc_ACE6B7: LitVarStr var_B0, "PorcInte"
  loc_ACE6BC: PopAdLdVar
  loc_ACE6BD: FLdRfVar var_A0
  loc_ACE6C0: FMemLdPr
  loc_ACE6C5:  = Me.Fields
  loc_ACE6CA: FLdPr var_A0
  loc_ACE6CD: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE6D2: FLdPr var_B4
  loc_ACE6D5:  = Me.Value
  loc_ACE6DA: FLdFPR8 arg_10
  loc_ACE6DD: FLdRfVar var_C4
  loc_ACE6E0: FnCDblVar
  loc_ACE6E2: LeR8
  loc_ACE6E3: FFreeAd var_A0 = ""
  loc_ACE6EA: FFree1Var var_C4 = ""
  loc_ACE6ED: BranchF loc_ACE6F6
  loc_ACE6F0: LitStr "El porcentaje no puede ser menor o igual al registro anterior"
  loc_ACE6F3: FStStrCopy var_88
  loc_ACE6F6: LitStr "SELECT * FROM interes WHERE CodiInte = "
  loc_ACE6F9: ILdRf var_8C
  loc_ACE6FC: CR8Str
  loc_ACE6FE: LitI2_Byte 1
  loc_ACE700: CR8I2
  loc_ACE701: AddR8
  loc_ACE702: CStrR8
  loc_ACE704: FStStrNoPop var_90
  loc_ACE707: ConcatStr
  loc_ACE708: FStStrNoPop var_94
  loc_ACE70B: LitStr " ORDER BY CodiInte"
  loc_ACE70E: ConcatStr
  loc_ACE70F: FStStrNoPop var_98
  loc_ACE712: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_ACE717: FFreeStr var_90 = "": var_94 = ""
  loc_ACE720: FLdRfVar var_9C
  loc_ACE723: FMemLdPr
  loc_ACE728:  = Me.RecordCount
  loc_ACE72D: ILdRf var_9C
  loc_ACE730: LitI4 0
  loc_ACE735: GtI4
  loc_ACE736: BranchF loc_ACE77E
  loc_ACE739: FLdRfVar var_C4
  loc_ACE73C: FLdRfVar var_B4
  loc_ACE73F: LitVarStr var_B0, "PorcInte"
  loc_ACE744: PopAdLdVar
  loc_ACE745: FLdRfVar var_A0
  loc_ACE748: FMemLdPr
  loc_ACE74D:  = Me.Fields
  loc_ACE752: FLdPr var_A0
  loc_ACE755: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE75A: FLdPr var_B4
  loc_ACE75D:  = Me.Value
  loc_ACE762: FLdFPR8 arg_10
  loc_ACE765: FLdRfVar var_C4
  loc_ACE768: FnCDblVar
  loc_ACE76A: GeR8
  loc_ACE76B: FFreeAd var_A0 = ""
  loc_ACE772: FFree1Var var_C4 = ""
  loc_ACE775: BranchF loc_ACE77E
  loc_ACE778: LitStr "El importe no puede ser mayor o igual al registro siguiente"
  loc_ACE77B: FStStrCopy var_88
  loc_ACE77E: ExitProc
End Function

Private Function Proc_18_88_ACF9D4(arg_C) 'ACF9D4
  'Data Table: 4B72E0
  loc_ACF8CC: ILdRf arg_C
  loc_ACF8CF: FStStrCopy var_8C
  loc_ACF8D2: LitStr "SELECT FeprCome FROM comercio WHERE CodiCome = "
  loc_ACF8D5: ILdRf var_8C
  loc_ACF8D8: ConcatStr
  loc_ACF8D9: FStStrNoPop var_90
  loc_ACF8DC: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_ACF8E1: FFree1Str var_90
  loc_ACF8E4: FLdRfVar var_94
  loc_ACF8E7: FMemLdPr
  loc_ACF8EC:  = Me.RecordCount
  loc_ACF8F1: ILdRf var_94
  loc_ACF8F4: LitI4 0
  loc_ACF8F9: GtI4
  loc_ACF8FA: BranchF loc_ACF9D1
  loc_ACF8FD: FLdRfVar var_AC
  loc_ACF900: LitVarStr var_A8, "FeprCome"
  loc_ACF905: PopAdLdVar
  loc_ACF906: FLdRfVar var_98
  loc_ACF909: FMemLdPr
  loc_ACF90E:  = Me.Fields
  loc_ACF913: FLdPr var_98
  loc_ACF916: from_stack_2 = Me.Item(from_stack_1)
  loc_ACF91B: FLdZeroAd var_AC
  loc_ACF91E: CVarAd
  loc_ACF922: ImpAdCallI2 IsNull()
  loc_ACF927: FFree1Ad var_98
  loc_ACF92A: FFree1Var var_BC = ""
  loc_ACF92D: BranchF loc_ACF939
  loc_ACF930: LitStr "El Comercio no tiene cargada la fecha PROVISORIA"
  loc_ACF933: FStStrCopy var_88
  loc_ACF936: Branch loc_ACF9D1
  loc_ACF939: FLdRfVar var_AC
  loc_ACF93C: LitVarStr var_A8, "FeprCome"
  loc_ACF941: PopAdLdVar
  loc_ACF942: FLdRfVar var_98
  loc_ACF945: FMemLdPr
  loc_ACF94A:  = Me.Fields
  loc_ACF94F: FLdPr var_98
  loc_ACF952: from_stack_2 = Me.Item(from_stack_1)
  loc_ACF957: FLdZeroAd var_AC
  loc_ACF95A: CVarAd
  loc_ACF95E: FLdRfVar var_CC
  loc_ACF961: ImpAdCallFPR4  = Year()
  loc_ACF966: FLdRfVar var_CC
  loc_ACF969: FLdRfVar var_E4
  loc_ACF96C: LitVarStr var_E0, "FeprCome"
  loc_ACF971: PopAdLdVar
  loc_ACF972: FLdRfVar var_D0
  loc_ACF975: FMemLdPr
  loc_ACF97A:  = Me.Fields
  loc_ACF97F: FLdPr var_D0
  loc_ACF982: from_stack_2 = Me.Item(from_stack_1)
  loc_ACF987: FLdZeroAd var_E4
  loc_ACF98A: CVarAd
  loc_ACF98E: FLdRfVar var_104
  loc_ACF991: ImpAdCallFPR4  = Year()
  loc_ACF996: FLdRfVar var_104
  loc_ACF999: ImpAdLdI2 MemVar_D93034
  loc_ACF99C: CVarI2 var_114
  loc_ACF99F: HardType
  loc_ACF9A0: LtVar var_124
  loc_ACF9A4: AndVar var_134
  loc_ACF9A8: CBoolVarNull
  loc_ACF9AA: FFreeAd var_98 = ""
  loc_ACF9B1: FFreeVar var_BC = "": var_F4 = "": var_104 = ""
  loc_ACF9BC: BranchF loc_ACF9D1
  loc_ACF9BF: LitStr "El Comercio tiene cargada una fecha PROVISORIA anterior al año: "
  loc_ACF9C2: ImpAdLdI2 MemVar_D93034
  loc_ACF9C5: CStrUI1
  loc_ACF9C7: FStStrNoPop var_90
  loc_ACF9CA: ConcatStr
  loc_ACF9CB: FStStr var_88
  loc_ACF9CE: FFree1Str var_90
  loc_ACF9D1: ExitProc
End Function

Private Function Proc_18_89_AA2EF4(arg_C) 'AA2EF4
  'Data Table: 4B72E0
  loc_AA2E44: ILdRf arg_C
  loc_AA2E47: FStStrCopy var_8C
  loc_AA2E4A: FLdRfVar var_8C
  loc_AA2E4D: CVarRef
  loc_AA2E52: ImpAdCallI2 IsNumeric()
  loc_AA2E57: BranchF loc_AA2EE7
  loc_AA2E5A: LitStr "SELECT PuprCome FROM comercio WHERE CodiCome = "
  loc_AA2E5D: ILdRf var_8C
  loc_AA2E60: ConcatStr
  loc_AA2E61: FStStrNoPop var_A0
  loc_AA2E64: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AA2E69: FFree1Str var_A0
  loc_AA2E6C: FLdRfVar var_A4
  loc_AA2E6F: FMemLdPr
  loc_AA2E74:  = Me.RecordCount
  loc_AA2E79: ILdRf var_A4
  loc_AA2E7C: LitI4 0
  loc_AA2E81: GtI4
  loc_AA2E82: BranchF loc_AA2EDC
  loc_AA2E85: FLdRfVar var_BC
  loc_AA2E88: FLdRfVar var_AC
  loc_AA2E8B: LitVarStr var_9C, "PuprCome"
  loc_AA2E90: PopAdLdVar
  loc_AA2E91: FLdRfVar var_A8
  loc_AA2E94: FMemLdPr
  loc_AA2E99:  = Me.Fields
  loc_AA2E9E: FLdPr var_A8
  loc_AA2EA1: from_stack_2 = Me.Item(from_stack_1)
  loc_AA2EA6: FLdPr var_AC
  loc_AA2EA9:  = Me.Value
  loc_AA2EAE: FLdRfVar var_BC
  loc_AA2EB1: LitVarI2 var_CC, 1
  loc_AA2EB6: HardType
  loc_AA2EB7: EqVarBool
  loc_AA2EB9: FFreeAd var_A8 = ""
  loc_AA2EC0: FFree1Var var_BC = ""
  loc_AA2EC3: BranchF loc_AA2ED1
  loc_AA2EC6: LitI2_Byte 1
  loc_AA2EC8: CUI1I2
  loc_AA2ECA: FStUI1 var_86
  loc_AA2ECE: Branch loc_AA2ED9
  loc_AA2ED1: LitI2_Byte 0
  loc_AA2ED3: CUI1I2
  loc_AA2ED5: FStUI1 var_86
  loc_AA2ED9: Branch loc_AA2EE4
  loc_AA2EDC: LitI2_Byte 0
  loc_AA2EDE: CUI1I2
  loc_AA2EE0: FStUI1 var_86
  loc_AA2EE4: Branch loc_AA2EEF
  loc_AA2EE7: LitI2_Byte 0
  loc_AA2EE9: CUI1I2
  loc_AA2EEB: FStUI1 var_86
  loc_AA2EEF: ExitProcUI1
  loc_AA2EF1: FLdPr arg_3D00
End Function

Private Function Proc_18_90_AB8A90(arg_C) 'AB8A90
  'Data Table: 4B72E0
  loc_AB89C8: ILdRf arg_C
  loc_AB89CB: FStStrCopy var_8C
  loc_AB89CE: LitStr "SELECT FeenAcpa, NumeAcpa FROM acrepago WHERE NoarAcpa = '"
  loc_AB89D1: ILdRf var_8C
  loc_AB89D4: ConcatStr
  loc_AB89D5: FStStrNoPop var_90
  loc_AB89D8: LitStr "'"
  loc_AB89DB: ConcatStr
  loc_AB89DC: FStStrNoPop var_94
  loc_AB89DF: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AB89E4: FFreeStr var_90 = ""
  loc_AB89EB: FLdRfVar var_98
  loc_AB89EE: FMemLdPr
  loc_AB89F3:  = Me.RecordCount
  loc_AB89F8: ILdRf var_98
  loc_AB89FB: LitI4 0
  loc_AB8A00: GtI4
  loc_AB8A01: BranchF loc_AB8A8E
  loc_AB8A04: LitVarStr var_D0, "El archivo ya fue procesado el día: "
  loc_AB8A09: FLdRfVar var_C0
  loc_AB8A0C: FLdRfVar var_B0
  loc_AB8A0F: LitVarStr var_AC, "FeenAcpa"
  loc_AB8A14: PopAdLdVar
  loc_AB8A15: FLdRfVar var_9C
  loc_AB8A18: FMemLdPr
  loc_AB8A1D:  = Me.Fields
  loc_AB8A22: FLdPr var_9C
  loc_AB8A25: from_stack_2 = Me.Item(from_stack_1)
  loc_AB8A2A: FLdPr var_B0
  loc_AB8A2D:  = Me.Value
  loc_AB8A32: FLdRfVar var_C0
  loc_AB8A35: ConcatVar var_E0
  loc_AB8A39: LitVarStr var_F0, " para el grupo numero: "
  loc_AB8A3E: ConcatVar var_100
  loc_AB8A42: FLdRfVar var_128
  loc_AB8A45: FLdRfVar var_118
  loc_AB8A48: LitVarStr var_114, "NumeAcpa"
  loc_AB8A4D: PopAdLdVar
  loc_AB8A4E: FLdRfVar var_104
  loc_AB8A51: FMemLdPr
  loc_AB8A56:  = Me.Fields
  loc_AB8A5B: FLdPr var_104
  loc_AB8A5E: from_stack_2 = Me.Item(from_stack_1)
  loc_AB8A63: FLdPr var_118
  loc_AB8A66:  = Me.Value
  loc_AB8A6B: FLdRfVar var_128
  loc_AB8A6E: ConcatVar var_138
  loc_AB8A72: CStrVarTmp
  loc_AB8A73: FStStr var_88
  loc_AB8A76: FFreeAd var_9C = "": var_B0 = "": var_104 = ""
  loc_AB8A81: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_128 = ""
  loc_AB8A8E: ExitProc
End Function

Private Function Proc_18_91_AC1E90(arg_C, arg_10) 'AC1E90
  'Data Table: 4B72E0
  loc_AC1DAC: ILdRf arg_C
  loc_AC1DAF: FStStrCopy var_8C
  loc_AC1DB2: LitStr "SELECT ActuAcpa FROM acrepago WHERE FeenAcpa = "
  loc_AC1DB5: LitI4 1
  loc_AC1DBA: LitI4 1
  loc_AC1DBF: LitVarStr var_AC, "'yyyy-mm-dd'"
  loc_AC1DC4: FStVarCopyObj var_BC
  loc_AC1DC7: FLdRfVar var_BC
  loc_AC1DCA: FLdRfVar var_8C
  loc_AC1DCD: CVarRef
  loc_AC1DD2: ImpAdCallI2 Format$(, )
  loc_AC1DD7: FStStrNoPop var_C0
  loc_AC1DDA: ConcatStr
  loc_AC1DDB: FStStrNoPop var_C4
  loc_AC1DDE: LitStr " AND NumeAcpa = "
  loc_AC1DE1: ConcatStr
  loc_AC1DE2: FStStrNoPop var_C8
  loc_AC1DE5: ILdRf arg_10
  loc_AC1DE8: CStrI4
  loc_AC1DEA: FStStrNoPop var_CC
  loc_AC1DED: ConcatStr
  loc_AC1DEE: FStStrNoPop var_D0
  loc_AC1DF1: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AC1DF6: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_AC1E03: FFree1Var var_BC = ""
  loc_AC1E06: FLdRfVar var_D4
  loc_AC1E09: FMemLdPr
  loc_AC1E0E:  = Me.RecordCount
  loc_AC1E13: ILdRf var_D4
  loc_AC1E16: LitI4 0
  loc_AC1E1B: GtI4
  loc_AC1E1C: BranchF loc_AC1E8F
  loc_AC1E1F: FLdRfVar var_BC
  loc_AC1E22: FLdRfVar var_DC
  loc_AC1E25: LitVarStr var_9C, "ActuAcpa"
  loc_AC1E2A: PopAdLdVar
  loc_AC1E2B: FLdRfVar var_D8
  loc_AC1E2E: FMemLdPr
  loc_AC1E33:  = Me.Fields
  loc_AC1E38: FLdPr var_D8
  loc_AC1E3B: from_stack_2 = Me.Item(from_stack_1)
  loc_AC1E40: FLdPr var_DC
  loc_AC1E43:  = Me.Value
  loc_AC1E48: FLdRfVar var_BC
  loc_AC1E4B: LitVarStr var_AC, "Si"
  loc_AC1E50: HardType
  loc_AC1E51: EqVarBool
  loc_AC1E53: FFreeAd var_D8 = ""
  loc_AC1E5A: FFree1Var var_BC = ""
  loc_AC1E5D: BranchF loc_AC1E8F
  loc_AC1E60: LitStr "No se puede ingresar el boleto para el dia: "
  loc_AC1E63: ILdRf var_8C
  loc_AC1E66: ConcatStr
  loc_AC1E67: FStStrNoPop var_C0
  loc_AC1E6A: LitStr " numero de grupo: "
  loc_AC1E6D: ConcatStr
  loc_AC1E6E: FStStrNoPop var_C4
  loc_AC1E71: ILdRf arg_10
  loc_AC1E74: CStrI4
  loc_AC1E76: FStStrNoPop var_C8
  loc_AC1E79: ConcatStr
  loc_AC1E7A: FStStrNoPop var_CC
  loc_AC1E7D: LitStr ". El grupo ya fue actualizado"
  loc_AC1E80: ConcatStr
  loc_AC1E81: FStStr var_88
  loc_AC1E84: FFreeStr var_C0 = "": var_C4 = "": var_C8 = ""
  loc_AC1E8F: ExitProc
End Function

Private Function Proc_18_92_A58BB0(arg_C) 'A58BB0
  'Data Table: 4B72E0
  loc_A58B58: ILdRf arg_C
  loc_A58B5B: FStStrCopy var_8C
  loc_A58B5E: LitI2_Byte 0
  loc_A58B60: LitI2_Byte 0
  loc_A58B62: ILdRf var_8C
  loc_A58B65: LitStr "numero de facilidad de pago"
  loc_A58B68: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A58B6D: FStStr var_88
  loc_A58B70: ILdRf var_88
  loc_A58B73: LitStr vbNullString
  loc_A58B76: NeStr
  loc_A58B78: BranchF loc_A58B7C
  loc_A58B7B: ExitProc
  loc_A58B7C: LitStr "SELECT CodiFapa FROM facipago WHERE CodiFapa = "
  loc_A58B7F: ILdRf var_8C
  loc_A58B82: ConcatStr
  loc_A58B83: FStStrNoPop var_90
  loc_A58B86: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A58B8B: FFree1Str var_90
  loc_A58B8E: FLdRfVar var_94
  loc_A58B91: FMemLdPr
  loc_A58B96:  = Me.RecordCount
  loc_A58B9B: ILdRf var_94
  loc_A58B9E: LitI4 0
  loc_A58BA3: EqI4
  loc_A58BA4: BranchF loc_A58BAD
  loc_A58BA7: LitStr "La facilidad de pago no existe. Verifique..."
  loc_A58BAA: FStStrCopy var_88
  loc_A58BAD: ExitProc
  loc_A58BAE: MemStI4 global_-22428
End Function

Private Function Proc_18_93_A58B1C(arg_C) 'A58B1C
  'Data Table: 4B72E0
  loc_A58AC4: ILdRf arg_C
  loc_A58AC7: FStStrCopy var_8C
  loc_A58ACA: LitI2_Byte 0
  loc_A58ACC: LitI2_Byte 0
  loc_A58ACE: ILdRf var_8C
  loc_A58AD1: LitStr "numero de Actividad Principal"
  loc_A58AD4: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A58AD9: FStStr var_88
  loc_A58ADC: ILdRf var_88
  loc_A58ADF: LitStr vbNullString
  loc_A58AE2: NeStr
  loc_A58AE4: BranchF loc_A58AE8
  loc_A58AE7: ExitProc
  loc_A58AE8: LitStr "SELECT CodiActi FROM actividad WHERE CodiActi = "
  loc_A58AEB: ILdRf var_8C
  loc_A58AEE: ConcatStr
  loc_A58AEF: FStStrNoPop var_90
  loc_A58AF2: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A58AF7: FFree1Str var_90
  loc_A58AFA: FLdRfVar var_94
  loc_A58AFD: FMemLdPr
  loc_A58B02:  = Me.RecordCount
  loc_A58B07: ILdRf var_94
  loc_A58B0A: LitI4 0
  loc_A58B0F: EqI4
  loc_A58B10: BranchF loc_A58B19
  loc_A58B13: LitStr "La actividad principal no existe. Verifique..."
  loc_A58B16: FStStrCopy var_88
  loc_A58B19: ExitProc
End Function

Private Function Proc_18_94_A63524(arg_C) 'A63524
  'Data Table: 4B72E0
  loc_A634C4: ILdRf arg_C
  loc_A634C7: FStStrCopy var_8C
  loc_A634CA: ILdRf var_8C
  loc_A634CD: LitStr "Patente"
  loc_A634D0: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A634D5: FStStr var_88
  loc_A634D8: ILdRf var_88
  loc_A634DB: LitStr vbNullString
  loc_A634DE: NeStr
  loc_A634E0: BranchF loc_A634E4
  loc_A634E3: ExitProc
  loc_A634E4: LitStr "SELECT PateVehi FROM vehiculo WHERE PateVehi = '"
  loc_A634E7: ILdRf var_8C
  loc_A634EA: ConcatStr
  loc_A634EB: FStStrNoPop var_90
  loc_A634EE: LitStr "'"
  loc_A634F1: ConcatStr
  loc_A634F2: FStStrNoPop var_94
  loc_A634F5: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A634FA: FFreeStr var_90 = ""
  loc_A63501: FLdRfVar var_98
  loc_A63504: FMemLdPr
  loc_A63509:  = Me.RecordCount
  loc_A6350E: ILdRf var_98
  loc_A63511: LitI4 0
  loc_A63516: EqI4
  loc_A63517: BranchF loc_A63520
  loc_A6351A: LitStr "La patente no existe. Verifique..."
  loc_A6351D: FStStrCopy var_88
  loc_A63520: ExitProc
End Function

Private Function Proc_18_95_A638E4(arg_C) 'A638E4
  'Data Table: 4B72E0
  loc_A63884: ILdRf arg_C
  loc_A63887: FStStrCopy var_8C
  loc_A6388A: ILdRf var_8C
  loc_A6388D: LitStr " la cuenta"
  loc_A63890: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A63895: FStStr var_88
  loc_A63898: ILdRf var_88
  loc_A6389B: LitStr vbNullString
  loc_A6389E: NeStr
  loc_A638A0: BranchF loc_A638A4
  loc_A638A3: ExitProc
  loc_A638A4: LitStr "SELECT CodiDeva FROM deudvari WHERE CodiDeva = '"
  loc_A638A7: ILdRf var_8C
  loc_A638AA: ConcatStr
  loc_A638AB: FStStrNoPop var_90
  loc_A638AE: LitStr "'"
  loc_A638B1: ConcatStr
  loc_A638B2: FStStrNoPop var_94
  loc_A638B5: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A638BA: FFreeStr var_90 = ""
  loc_A638C1: FLdRfVar var_98
  loc_A638C4: FMemLdPr
  loc_A638C9:  = Me.RecordCount
  loc_A638CE: ILdRf var_98
  loc_A638D1: LitI4 0
  loc_A638D6: EqI4
  loc_A638D7: BranchF loc_A638E0
  loc_A638DA: LitStr "La cuenta no existe. Verifique..."
  loc_A638DD: FStStrCopy var_88
  loc_A638E0: ExitProc
End Function

Private Function Proc_18_96_A88088(arg_C, arg_10) 'A88088
  'Data Table: 4B72E0
  loc_A88008: ILdRf arg_C
  loc_A8800B: FStStrCopy var_8C
  loc_A8800E: ILdRf arg_10
  loc_A88011: FStStrCopy var_90
  loc_A88014: ILdRf var_8C
  loc_A88017: LitStr "Numero de Acta"
  loc_A8801A: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A8801F: FStStr var_88
  loc_A88022: ILdRf var_88
  loc_A88025: LitStr vbNullString
  loc_A88028: NeStr
  loc_A8802A: BranchF loc_A8802E
  loc_A8802D: ExitProc
  loc_A8802E: LitStr "SELECT NumeActr FROM actatran WHERE NumeActr = '"
  loc_A88031: ILdRf var_8C
  loc_A88034: ConcatStr
  loc_A88035: FStStrNoPop var_94
  loc_A88038: LitStr "'"
  loc_A8803B: ConcatStr
  loc_A8803C: FStStrNoPop var_98
  loc_A8803F: LitStr " AND CucuPers <> '"
  loc_A88042: ConcatStr
  loc_A88043: FStStrNoPop var_9C
  loc_A88046: ILdRf var_90
  loc_A88049: ConcatStr
  loc_A8804A: FStStrNoPop var_A0
  loc_A8804D: LitStr "'"
  loc_A88050: ConcatStr
  loc_A88051: FStStrNoPop var_A4
  loc_A88054: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A88059: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A88066: FLdRfVar var_A8
  loc_A88069: FMemLdPr
  loc_A8806E:  = Me.RecordCount
  loc_A88073: ILdRf var_A8
  loc_A88076: LitI4 0
  loc_A8807B: GtI4
  loc_A8807C: BranchF loc_A88085
  loc_A8807F: LitStr "El Numero de Acta SE ENCUENTRA CARGADO. Verifique..."
  loc_A88082: FStStrCopy var_88
  loc_A88085: ExitProc
End Function

Private Function Proc_18_97_AE7AE8(arg_10, arg_14, arg_18, arg_1C) 'AE7AE8
  'Data Table: 4B72E0
  loc_AE79BC: ILdRf arg_10
  loc_AE79BF: FStStrCopy var_8C
  loc_AE79C2: LitStr "SELECT PeriBole, NumeBole FROM detapago USE INDEX (idxdetapago01) WHERE CodiOfic = "
  loc_AE79C5: FLdUI1
  loc_AE79C9: CStrI2
  loc_AE79CB: FStStrNoPop var_90
  loc_AE79CE: ConcatStr
  loc_AE79CF: FStStrNoPop var_94
  loc_AE79D2: LitStr " AND CuenCtct = '"
  loc_AE79D5: ConcatStr
  loc_AE79D6: FStStrNoPop var_98
  loc_AE79D9: ILdRf var_8C
  loc_AE79DC: ConcatStr
  loc_AE79DD: FStStrNoPop var_9C
  loc_AE79E0: LitStr "' AND PeriCtct = "
  loc_AE79E3: ConcatStr
  loc_AE79E4: FStStrNoPop var_A0
  loc_AE79E7: FLdI2 arg_14
  loc_AE79EA: CStrUI1
  loc_AE79EC: FStStrNoPop var_A4
  loc_AE79EF: ConcatStr
  loc_AE79F0: FStStrNoPop var_A8
  loc_AE79F3: LitStr " AND BimeCtct = "
  loc_AE79F6: ConcatStr
  loc_AE79F7: FStStrNoPop var_AC
  loc_AE79FA: FLdI2 arg_18
  loc_AE79FD: CStrUI1
  loc_AE79FF: FStStrNoPop var_B0
  loc_AE7A02: ConcatStr
  loc_AE7A03: FStStrNoPop var_B4
  loc_AE7A06: LitStr " AND NumeCtct = "
  loc_AE7A09: ConcatStr
  loc_AE7A0A: FStStrNoPop var_B8
  loc_AE7A0D: ILdRf arg_1C
  loc_AE7A10: CStrI4
  loc_AE7A12: FStStrNoPop var_BC
  loc_AE7A15: ConcatStr
  loc_AE7A16: FStStrNoPop var_C0
  loc_AE7A19: LitStr " AND ActuDepa = 'No'"
  loc_AE7A1C: ConcatStr
  loc_AE7A1D: FStStrNoPop var_C4
  loc_AE7A20: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AE7A25: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AE7A44: FLdRfVar var_C8
  loc_AE7A47: FMemLdPr
  loc_AE7A4C:  = Me.RecordCount
  loc_AE7A51: ILdRf var_C8
  loc_AE7A54: LitI4 1
  loc_AE7A59: GeI4
  loc_AE7A5A: BranchF loc_AE7AE7
  loc_AE7A5D: LitVarStr var_100, "La deuda seleccionada se encuentra pagada con el boleto numero: "
  loc_AE7A62: FLdRfVar var_F0
  loc_AE7A65: FLdRfVar var_E0
  loc_AE7A68: LitVarStr var_DC, "PeriBole"
  loc_AE7A6D: PopAdLdVar
  loc_AE7A6E: FLdRfVar var_CC
  loc_AE7A71: FMemLdPr
  loc_AE7A76:  = Me.Fields
  loc_AE7A7B: FLdPr var_CC
  loc_AE7A7E: from_stack_2 = Me.Item(from_stack_1)
  loc_AE7A83: FLdPr var_E0
  loc_AE7A86:  = Me.Value
  loc_AE7A8B: FLdRfVar var_F0
  loc_AE7A8E: ConcatVar var_110
  loc_AE7A92: LitVarStr var_120, "-"
  loc_AE7A97: ConcatVar var_130
  loc_AE7A9B: FLdRfVar var_158
  loc_AE7A9E: FLdRfVar var_148
  loc_AE7AA1: LitVarStr var_144, "NumeBole"
  loc_AE7AA6: PopAdLdVar
  loc_AE7AA7: FLdRfVar var_134
  loc_AE7AAA: FMemLdPr
  loc_AE7AAF:  = Me.Fields
  loc_AE7AB4: FLdPr var_134
  loc_AE7AB7: from_stack_2 = Me.Item(from_stack_1)
  loc_AE7ABC: FLdPr var_148
  loc_AE7ABF:  = Me.Value
  loc_AE7AC4: FLdRfVar var_158
  loc_AE7AC7: ConcatVar var_168
  loc_AE7ACB: CStrVarTmp
  loc_AE7ACC: FStStr var_88
  loc_AE7ACF: FFreeAd var_CC = "": var_E0 = "": var_134 = ""
  loc_AE7ADA: FFreeVar var_F0 = "": var_110 = "": var_130 = "": var_158 = ""
  loc_AE7AE7: ExitProc
End Function

Private Function Proc_18_98_AF2C9C(arg_C, arg_10) 'AF2C9C
  'Data Table: 4B72E0
  loc_AF2B4C: LitStr " SELECT detapago.PeriBole, detapago.NumeBole FROM detabole"
  loc_AF2B4F: LitStr " LEFT JOIN detapago ON detapago.CodiOfic = detabole.CodiOfic"
  loc_AF2B52: ConcatStr
  loc_AF2B53: FStStrNoPop var_8C
  loc_AF2B56: LitStr " AND detapago.CuenCtct = detabole.CuenCtct"
  loc_AF2B59: ConcatStr
  loc_AF2B5A: FStStrNoPop var_90
  loc_AF2B5D: LitStr " AND detapago.PeriCtct = detabole.PeriCtct"
  loc_AF2B60: ConcatStr
  loc_AF2B61: FStStrNoPop var_94
  loc_AF2B64: LitStr " AND detapago.BimeCtct = detabole.BimeCtct"
  loc_AF2B67: ConcatStr
  loc_AF2B68: FStStrNoPop var_98
  loc_AF2B6B: LitStr " AND detapago.NumeCtct = detabole.NumeCtct"
  loc_AF2B6E: ConcatStr
  loc_AF2B6F: FStStrNoPop var_9C
  loc_AF2B72: LitStr " AND detapago.MoviCtct = detabole.MoviCtct"
  loc_AF2B75: ConcatStr
  loc_AF2B76: FStStrNoPop var_A0
  loc_AF2B79: LitStr " AND detapago.CodiFapa = detabole.Codifapa"
  loc_AF2B7C: ConcatStr
  loc_AF2B7D: FStStrNoPop var_A4
  loc_AF2B80: LitStr " AND detapago.CuotDefa = detabole.CuotDefa"
  loc_AF2B83: ConcatStr
  loc_AF2B84: FStStrNoPop var_A8
  loc_AF2B87: LitStr " AND detapago.ActuDepa = 'No'"
  loc_AF2B8A: ConcatStr
  loc_AF2B8B: FStStrNoPop var_AC
  loc_AF2B8E: LitStr " WHERE detabole.PeriBole = "
  loc_AF2B91: ConcatStr
  loc_AF2B92: FStStrNoPop var_B0
  loc_AF2B95: FLdI2 arg_C
  loc_AF2B98: CStrUI1
  loc_AF2B9A: FStStrNoPop var_B4
  loc_AF2B9D: ConcatStr
  loc_AF2B9E: FStStrNoPop var_B8
  loc_AF2BA1: LitStr " AND detabole.NumeBole = "
  loc_AF2BA4: ConcatStr
  loc_AF2BA5: FStStrNoPop var_BC
  loc_AF2BA8: ILdRf arg_10
  loc_AF2BAB: CStrI4
  loc_AF2BAD: FStStrNoPop var_C0
  loc_AF2BB0: ConcatStr
  loc_AF2BB1: FStStrNoPop var_C4
  loc_AF2BB4: LitStr " AND detabole.CuenCtct <> ''"
  loc_AF2BB7: ConcatStr
  loc_AF2BB8: FStStrNoPop var_C8
  loc_AF2BBB: LitStr " AND detapago.FeenAcpa IS NOT NULL"
  loc_AF2BBE: ConcatStr
  loc_AF2BBF: FStStrNoPop var_CC
  loc_AF2BC2: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AF2BC7: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_AF2BEC: FLdRfVar var_D0
  loc_AF2BEF: FMemLdPr
  loc_AF2BF4:  = Me.RecordCount
  loc_AF2BF9: ILdRf var_D0
  loc_AF2BFC: LitI4 1
  loc_AF2C01: GeI4
  loc_AF2C02: BranchF loc_AF2C9A
  loc_AF2C05: LitVarStr var_108, "El boleto contiene movimientos que fueron pagados con el boleto  "
  loc_AF2C0A: FLdRfVar var_F8
  loc_AF2C0D: FLdRfVar var_E8
  loc_AF2C10: LitVarStr var_E4, "PeriBole"
  loc_AF2C15: PopAdLdVar
  loc_AF2C16: FLdRfVar var_D4
  loc_AF2C19: FMemLdPr
  loc_AF2C1E:  = Me.Fields
  loc_AF2C23: FLdPr var_D4
  loc_AF2C26: from_stack_2 = Me.Item(from_stack_1)
  loc_AF2C2B: FLdPr var_E8
  loc_AF2C2E:  = Me.Value
  loc_AF2C33: FLdRfVar var_F8
  loc_AF2C36: ConcatVar var_118
  loc_AF2C3A: LitVarStr var_128, "-"
  loc_AF2C3F: ConcatVar var_138
  loc_AF2C43: FLdRfVar var_160
  loc_AF2C46: FLdRfVar var_150
  loc_AF2C49: LitVarStr var_14C, "NumeBole"
  loc_AF2C4E: PopAdLdVar
  loc_AF2C4F: FLdRfVar var_13C
  loc_AF2C52: FMemLdPr
  loc_AF2C57:  = Me.Fields
  loc_AF2C5C: FLdPr var_13C
  loc_AF2C5F: from_stack_2 = Me.Item(from_stack_1)
  loc_AF2C64: FLdPr var_150
  loc_AF2C67:  = Me.Value
  loc_AF2C6C: FLdRfVar var_160
  loc_AF2C6F: ConcatVar var_170
  loc_AF2C73: LitVarStr var_180, ". No se realizó el pago."
  loc_AF2C78: ConcatVar var_190
  loc_AF2C7C: CStrVarTmp
  loc_AF2C7D: FStStr var_88
  loc_AF2C80: FFreeAd var_D4 = "": var_E8 = "": var_13C = ""
  loc_AF2C8B: FFreeVar var_F8 = "": var_118 = "": var_138 = "": var_160 = "": var_170 = ""
  loc_AF2C9A: ExitProc
End Function

Private Function Proc_18_99_B055FC(arg_10) 'B055FC
  'Data Table: 4B72E0
  loc_B053FC: ILdRf arg_10
  loc_B053FF: FStStrCopy var_8C
  loc_B05402: FLdUI1
  loc_B05406: CI2UI1
  loc_B05408: LitI2_Byte 1
  loc_B0540A: EqI2
  loc_B0540B: BranchF loc_B0547D
  loc_B0540E: LitStr "SELECT BonoInmu FROM inmueble WHERE CodiInmu = "
  loc_B05411: ILdRf var_8C
  loc_B05414: ConcatStr
  loc_B05415: FStStrNoPop var_90
  loc_B05418: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_B0541D: FFree1Str var_90
  loc_B05420: FLdRfVar var_94
  loc_B05423: FMemLdPr
  loc_B05428:  = Me.RecordCount
  loc_B0542D: ILdRf var_94
  loc_B05430: LitI4 0
  loc_B05435: GtI4
  loc_B05436: BranchF loc_B0547D
  loc_B05439: FLdRfVar var_BC
  loc_B0543C: FLdRfVar var_AC
  loc_B0543F: LitVarStr var_A8, "BonoInmu"
  loc_B05444: PopAdLdVar
  loc_B05445: FLdRfVar var_98
  loc_B05448: FMemLdPr
  loc_B0544D:  = Me.Fields
  loc_B05452: FLdPr var_98
  loc_B05455: from_stack_2 = Me.Item(from_stack_1)
  loc_B0545A: FLdPr var_AC
  loc_B0545D:  = Me.Value
  loc_B05462: FLdRfVar var_BC
  loc_B05465: FnCIntVar
  loc_B05467: LitI2_Byte 1
  loc_B05469: EqI2
  loc_B0546A: FFreeAd var_98 = ""
  loc_B05471: FFree1Var var_BC = ""
  loc_B05474: BranchF loc_B0547D
  loc_B05477: LitStr "La cuenta de inmueble tiene DESCUENTO POR BONO"
  loc_B0547A: FStStrCopy var_88
  loc_B0547D: FLdUI1
  loc_B05481: CI2UI1
  loc_B05483: LitI2_Byte 2
  loc_B05485: EqI2
  loc_B05486: BranchF loc_B054F8
  loc_B05489: LitStr "SELECT BonoCome FROM comercio WHERE CodiCome = "
  loc_B0548C: ILdRf var_8C
  loc_B0548F: ConcatStr
  loc_B05490: FStStrNoPop var_90
  loc_B05493: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_B05498: FFree1Str var_90
  loc_B0549B: FLdRfVar var_94
  loc_B0549E: FMemLdPr
  loc_B054A3:  = Me.RecordCount
  loc_B054A8: ILdRf var_94
  loc_B054AB: LitI4 0
  loc_B054B0: GtI4
  loc_B054B1: BranchF loc_B054F8
  loc_B054B4: FLdRfVar var_BC
  loc_B054B7: FLdRfVar var_AC
  loc_B054BA: LitVarStr var_A8, "BonoCome"
  loc_B054BF: PopAdLdVar
  loc_B054C0: FLdRfVar var_98
  loc_B054C3: FMemLdPr
  loc_B054C8:  = Me.Fields
  loc_B054CD: FLdPr var_98
  loc_B054D0: from_stack_2 = Me.Item(from_stack_1)
  loc_B054D5: FLdPr var_AC
  loc_B054D8:  = Me.Value
  loc_B054DD: FLdRfVar var_BC
  loc_B054E0: FnCIntVar
  loc_B054E2: LitI2_Byte 1
  loc_B054E4: EqI2
  loc_B054E5: FFreeAd var_98 = ""
  loc_B054EC: FFree1Var var_BC = ""
  loc_B054EF: BranchF loc_B054F8
  loc_B054F2: LitStr "La cuenta de comercio tiene DESCUENTO POR BONO"
  loc_B054F5: FStStrCopy var_88
  loc_B054F8: FLdUI1
  loc_B054FC: CI2UI1
  loc_B054FE: LitI2_Byte 3
  loc_B05500: EqI2
  loc_B05501: BranchF loc_B0557E
  loc_B05504: LitStr "SELECT BonoDeva FROM deudvari WHERE CodiDeva = '"
  loc_B05507: ILdRf var_8C
  loc_B0550A: ConcatStr
  loc_B0550B: FStStrNoPop var_90
  loc_B0550E: LitStr "'"
  loc_B05511: ConcatStr
  loc_B05512: FStStrNoPop var_C0
  loc_B05515: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_B0551A: FFreeStr var_90 = ""
  loc_B05521: FLdRfVar var_94
  loc_B05524: FMemLdPr
  loc_B05529:  = Me.RecordCount
  loc_B0552E: ILdRf var_94
  loc_B05531: LitI4 0
  loc_B05536: GtI4
  loc_B05537: BranchF loc_B0557E
  loc_B0553A: FLdRfVar var_BC
  loc_B0553D: FLdRfVar var_AC
  loc_B05540: LitVarStr var_A8, "BonoDeva"
  loc_B05545: PopAdLdVar
  loc_B05546: FLdRfVar var_98
  loc_B05549: FMemLdPr
  loc_B0554E:  = Me.Fields
  loc_B05553: FLdPr var_98
  loc_B05556: from_stack_2 = Me.Item(from_stack_1)
  loc_B0555B: FLdPr var_AC
  loc_B0555E:  = Me.Value
  loc_B05563: FLdRfVar var_BC
  loc_B05566: FnCIntVar
  loc_B05568: LitI2_Byte 1
  loc_B0556A: EqI2
  loc_B0556B: FFreeAd var_98 = ""
  loc_B05572: FFree1Var var_BC = ""
  loc_B05575: BranchF loc_B0557E
  loc_B05578: LitStr "La cuenta de deudores varios tiene DESCUENTO POR BONO"
  loc_B0557B: FStStrCopy var_88
  loc_B0557E: FLdUI1
  loc_B05582: CI2UI1
  loc_B05584: LitI2_Byte 4
  loc_B05586: EqI2
  loc_B05587: BranchF loc_B055F9
  loc_B0558A: LitStr "SELECT BonoDifu FROM difunto WHERE CodiDifu = "
  loc_B0558D: ILdRf var_8C
  loc_B05590: ConcatStr
  loc_B05591: FStStrNoPop var_90
  loc_B05594: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_B05599: FFree1Str var_90
  loc_B0559C: FLdRfVar var_94
  loc_B0559F: FMemLdPr
  loc_B055A4:  = Me.RecordCount
  loc_B055A9: ILdRf var_94
  loc_B055AC: LitI4 0
  loc_B055B1: GtI4
  loc_B055B2: BranchF loc_B055F9
  loc_B055B5: FLdRfVar var_BC
  loc_B055B8: FLdRfVar var_AC
  loc_B055BB: LitVarStr var_A8, "BonoDifu"
  loc_B055C0: PopAdLdVar
  loc_B055C1: FLdRfVar var_98
  loc_B055C4: FMemLdPr
  loc_B055C9:  = Me.Fields
  loc_B055CE: FLdPr var_98
  loc_B055D1: from_stack_2 = Me.Item(from_stack_1)
  loc_B055D6: FLdPr var_AC
  loc_B055D9:  = Me.Value
  loc_B055DE: FLdRfVar var_BC
  loc_B055E1: FnCIntVar
  loc_B055E3: LitI2_Byte 1
  loc_B055E5: EqI2
  loc_B055E6: FFreeAd var_98 = ""
  loc_B055ED: FFree1Var var_BC = ""
  loc_B055F0: BranchF loc_B055F9
  loc_B055F3: LitStr "La cuenta de cementerio tiene DESCUENTO POR BONO"
  loc_B055F6: FStStrCopy var_88
  loc_B055F9: ExitProc
End Function

Private Function Proc_18_100_A771AC(arg_C) 'A771AC
  'Data Table: 4B72E0
  loc_A77138: LitStr "SELECT * FROM interes ORDER BY FechInte desc"
  loc_A7713B: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A77140: FLdRfVar var_8C
  loc_A77143: FMemLdPr
  loc_A77148:  = Me.RecordCount
  loc_A7714D: ILdRf var_8C
  loc_A77150: LitI4 0
  loc_A77155: GtI4
  loc_A77156: BranchF loc_A771A3
  loc_A77159: FLdRfVar var_B4
  loc_A7715C: FLdRfVar var_A4
  loc_A7715F: LitVarStr var_A0, "FechInte"
  loc_A77164: PopAdLdVar
  loc_A77165: FLdRfVar var_90
  loc_A77168: FMemLdPr
  loc_A7716D:  = Me.Fields
  loc_A77172: FLdPr var_90
  loc_A77175: from_stack_2 = Me.Item(from_stack_1)
  loc_A7717A: FLdPr var_A4
  loc_A7717D:  = Me.Value
  loc_A77182: ILdI4 arg_C
  loc_A77185: CDateStr
  loc_A77187: FLdRfVar var_B4
  loc_A7718A: FnCDateVar
  loc_A7718C: GtR4
  loc_A7718D: FFreeAd var_90 = ""
  loc_A77194: FFree1Var var_B4 = ""
  loc_A77197: BranchF loc_A771A0
  loc_A7719A: LitStr "No esta parametrizado los intereses para el calculo del recargo."
  loc_A7719D: FStStrCopy var_88
  loc_A771A0: Branch loc_A771A9
  loc_A771A3: LitStr "No esta parametrizado los intereses para el calculo del recargo."
  loc_A771A6: FStStrCopy var_88
  loc_A771A9: ExitProc
End Function

Private Function Proc_18_101_B5BB64(arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) 'B5BB64
  'Data Table: 4B72E0
  loc_B5B7A4: ILdRf arg_10
  loc_B5B7A7: FStStrCopy var_8C
  loc_B5B7AA: ILdRf arg_14
  loc_B5B7AD: FStStrCopy var_90
  loc_B5B7B0: ILdRf arg_24
  loc_B5B7B3: FStStrCopy var_94
  loc_B5B7B6: LitStr "Municipalidad de Guaymallén"
  loc_B5B7B9: LitStr "Municipalidad de Malargüe"
  loc_B5B7BC: EqStr
  loc_B5B7BE: BranchF loc_B5B8A6
  loc_B5B7C1: LitStr "SELECT CodiDifu FROM difunto WHERE CodiTise = "
  loc_B5B7C4: FLdUI1
  loc_B5B7C8: CStrI2
  loc_B5B7CA: FStStrNoPop var_98
  loc_B5B7CD: ConcatStr
  loc_B5B7CE: FStStrNoPop var_9C
  loc_B5B7D1: LitStr " AND NumeDifu = "
  loc_B5B7D4: ConcatStr
  loc_B5B7D5: FStStrNoPop var_A0
  loc_B5B7D8: FLdI2 arg_18
  loc_B5B7DB: CStrUI1
  loc_B5B7DD: FStStrNoPop var_A4
  loc_B5B7E0: ConcatStr
  loc_B5B7E1: FStStrNoPop var_A8
  loc_B5B7E4: LitStr " AND FilaDifu = "
  loc_B5B7E7: ConcatStr
  loc_B5B7E8: FStStrNoPop var_AC
  loc_B5B7EB: FLdI2 arg_1C
  loc_B5B7EE: CStrUI1
  loc_B5B7F0: FStStrNoPop var_B0
  loc_B5B7F3: ConcatStr
  loc_B5B7F4: FStStrNoPop var_B4
  loc_B5B7F7: LitStr " AND SeccDifu = '"
  loc_B5B7FA: ConcatStr
  loc_B5B7FB: FStStrNoPop var_B8
  loc_B5B7FE: ILdRf var_8C
  loc_B5B801: ConcatStr
  loc_B5B802: FStStrNoPop var_BC
  loc_B5B805: LitStr "' AND CodiDifu <> "
  loc_B5B808: ConcatStr
  loc_B5B809: FStStrNoPop var_C0
  loc_B5B80C: ILdRf arg_20
  loc_B5B80F: CStrI4
  loc_B5B811: FStStrNoPop var_C4
  loc_B5B814: ConcatStr
  loc_B5B815: FStStrNoPop var_C8
  loc_B5B818: LitStr " AND FebaDifu IS NULL"
  loc_B5B81B: ConcatStr
  loc_B5B81C: FStStrNoPop var_CC
  loc_B5B81F: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_B5B824: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B5B843: FLdRfVar var_D0
  loc_B5B846: FMemLdPr
  loc_B5B84B:  = Me.RecordCount
  loc_B5B850: ILdRf var_D0
  loc_B5B853: LitI4 1
  loc_B5B858: GeI4
  loc_B5B859: BranchF loc_B5B8A3
  loc_B5B85C: LitVarStr var_108, "La ubicación seleccionada se encuentra en la cuenta : "
  loc_B5B861: FLdRfVar var_F8
  loc_B5B864: FLdRfVar var_E8
  loc_B5B867: LitVarStr var_E4, "CodiDifu"
  loc_B5B86C: PopAdLdVar
  loc_B5B86D: FLdRfVar var_D4
  loc_B5B870: FMemLdPr
  loc_B5B875:  = Me.Fields
  loc_B5B87A: FLdPr var_D4
  loc_B5B87D: from_stack_2 = Me.Item(from_stack_1)
  loc_B5B882: FLdPr var_E8
  loc_B5B885:  = Me.Value
  loc_B5B88A: FLdRfVar var_F8
  loc_B5B88D: ConcatVar var_118
  loc_B5B891: CStrVarTmp
  loc_B5B892: FStStr var_88
  loc_B5B895: FFreeAd var_D4 = ""
  loc_B5B89C: FFreeVar var_F8 = ""
  loc_B5B8A3: Branch loc_B5BB62
  loc_B5B8A6: LitStr "Municipalidad de Guaymallén"
  loc_B5B8A9: LitStr "Municipalidad de Tunuyán"
  loc_B5B8AC: EqStr
  loc_B5B8AE: BranchF loc_B5B996
  loc_B5B8B1: LitStr "SELECT CodiDifu FROM difunto WHERE CodiTise = "
  loc_B5B8B4: FLdUI1
  loc_B5B8B8: CStrI2
  loc_B5B8BA: FStStrNoPop var_98
  loc_B5B8BD: ConcatStr
  loc_B5B8BE: FStStrNoPop var_9C
  loc_B5B8C1: LitStr " AND NumeDifu = "
  loc_B5B8C4: ConcatStr
  loc_B5B8C5: FStStrNoPop var_A0
  loc_B5B8C8: FLdI2 arg_18
  loc_B5B8CB: CStrUI1
  loc_B5B8CD: FStStrNoPop var_A4
  loc_B5B8D0: ConcatStr
  loc_B5B8D1: FStStrNoPop var_A8
  loc_B5B8D4: LitStr " AND FilaDifu = "
  loc_B5B8D7: ConcatStr
  loc_B5B8D8: FStStrNoPop var_AC
  loc_B5B8DB: FLdI2 arg_1C
  loc_B5B8DE: CStrUI1
  loc_B5B8E0: FStStrNoPop var_B0
  loc_B5B8E3: ConcatStr
  loc_B5B8E4: FStStrNoPop var_B4
  loc_B5B8E7: LitStr " AND SeccDifu = '"
  loc_B5B8EA: ConcatStr
  loc_B5B8EB: FStStrNoPop var_B8
  loc_B5B8EE: ILdRf var_8C
  loc_B5B8F1: ConcatStr
  loc_B5B8F2: FStStrNoPop var_BC
  loc_B5B8F5: LitStr "' AND CodiDifu <> '"
  loc_B5B8F8: ConcatStr
  loc_B5B8F9: FStStrNoPop var_C0
  loc_B5B8FC: ILdRf arg_20
  loc_B5B8FF: CStrI4
  loc_B5B901: FStStrNoPop var_C4
  loc_B5B904: ConcatStr
  loc_B5B905: FStStrNoPop var_C8
  loc_B5B908: LitStr "' AND BajaFeho IS NULL"
  loc_B5B90B: ConcatStr
  loc_B5B90C: FStStrNoPop var_CC
  loc_B5B90F: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_B5B914: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B5B933: FLdRfVar var_D0
  loc_B5B936: FMemLdPr
  loc_B5B93B:  = Me.RecordCount
  loc_B5B940: ILdRf var_D0
  loc_B5B943: LitI4 1
  loc_B5B948: GeI4
  loc_B5B949: BranchF loc_B5B993
  loc_B5B94C: LitVarStr var_108, "La ubicación seleccionada se encuentra en la cuenta : "
  loc_B5B951: FLdRfVar var_F8
  loc_B5B954: FLdRfVar var_E8
  loc_B5B957: LitVarStr var_E4, "CodiDifu"
  loc_B5B95C: PopAdLdVar
  loc_B5B95D: FLdRfVar var_D4
  loc_B5B960: FMemLdPr
  loc_B5B965:  = Me.Fields
  loc_B5B96A: FLdPr var_D4
  loc_B5B96D: from_stack_2 = Me.Item(from_stack_1)
  loc_B5B972: FLdPr var_E8
  loc_B5B975:  = Me.Value
  loc_B5B97A: FLdRfVar var_F8
  loc_B5B97D: ConcatVar var_118
  loc_B5B981: CStrVarTmp
  loc_B5B982: FStStr var_88
  loc_B5B985: FFreeAd var_D4 = ""
  loc_B5B98C: FFreeVar var_F8 = ""
  loc_B5B993: Branch loc_B5BB62
  loc_B5B996: FLdUI1
  loc_B5B99A: CI2UI1
  loc_B5B99C: LitI2_Byte 3
  loc_B5B99E: LeI2
  loc_B5B99F: BranchF loc_B5BA99
  loc_B5B9A2: LitStr "SELECT CodiDifu FROM difunto WHERE CodiTise = "
  loc_B5B9A5: FLdUI1
  loc_B5B9A9: CStrI2
  loc_B5B9AB: FStStrNoPop var_98
  loc_B5B9AE: ConcatStr
  loc_B5B9AF: FStStrNoPop var_9C
  loc_B5B9B2: LitStr " AND SeccDifu = '"
  loc_B5B9B5: ConcatStr
  loc_B5B9B6: FStStrNoPop var_A0
  loc_B5B9B9: ILdRf var_8C
  loc_B5B9BC: ConcatStr
  loc_B5B9BD: FStStrNoPop var_A4
  loc_B5B9C0: LitStr "' AND PlanDifu = "
  loc_B5B9C3: ConcatStr
  loc_B5B9C4: FStStrNoPop var_A8
  loc_B5B9C7: ILdRf var_90
  loc_B5B9CA: ConcatStr
  loc_B5B9CB: FStStrNoPop var_AC
  loc_B5B9CE: LitStr " AND NumeDifu = "
  loc_B5B9D1: ConcatStr
  loc_B5B9D2: FStStrNoPop var_B0
  loc_B5B9D5: FLdI2 arg_18
  loc_B5B9D8: CStrUI1
  loc_B5B9DA: FStStrNoPop var_B4
  loc_B5B9DD: ConcatStr
  loc_B5B9DE: FStStrNoPop var_B8
  loc_B5B9E1: LitStr " AND FilaDifu = "
  loc_B5B9E4: ConcatStr
  loc_B5B9E5: FStStrNoPop var_BC
  loc_B5B9E8: FLdI2 arg_1C
  loc_B5B9EB: CStrUI1
  loc_B5B9ED: FStStrNoPop var_C0
  loc_B5B9F0: ConcatStr
  loc_B5B9F1: FStStrNoPop var_C4
  loc_B5B9F4: LitStr " AND CodiDifu <> "
  loc_B5B9F7: ConcatStr
  loc_B5B9F8: FStStrNoPop var_C8
  loc_B5B9FB: ILdRf arg_20
  loc_B5B9FE: CStrI4
  loc_B5BA00: FStStrNoPop var_CC
  loc_B5BA03: ConcatStr
  loc_B5BA04: FStStrNoPop var_11C
  loc_B5BA07: LitStr " AND FebaDifu IS NULL"
  loc_B5BA0A: ConcatStr
  loc_B5BA0B: FStStrNoPop var_120
  loc_B5BA0E: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_B5BA13: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_11C = ""
  loc_B5BA36: FLdRfVar var_D0
  loc_B5BA39: FMemLdPr
  loc_B5BA3E:  = Me.RecordCount
  loc_B5BA43: ILdRf var_D0
  loc_B5BA46: LitI4 1
  loc_B5BA4B: EqI4
  loc_B5BA4C: BranchF loc_B5BA96
  loc_B5BA4F: LitVarStr var_108, "La ubicación seleccionada se encuentra en la cuenta : "
  loc_B5BA54: FLdRfVar var_F8
  loc_B5BA57: FLdRfVar var_E8
  loc_B5BA5A: LitVarStr var_E4, "CodiDifu"
  loc_B5BA5F: PopAdLdVar
  loc_B5BA60: FLdRfVar var_D4
  loc_B5BA63: FMemLdPr
  loc_B5BA68:  = Me.Fields
  loc_B5BA6D: FLdPr var_D4
  loc_B5BA70: from_stack_2 = Me.Item(from_stack_1)
  loc_B5BA75: FLdPr var_E8
  loc_B5BA78:  = Me.Value
  loc_B5BA7D: FLdRfVar var_F8
  loc_B5BA80: ConcatVar var_118
  loc_B5BA84: CStrVarTmp
  loc_B5BA85: FStStr var_88
  loc_B5BA88: FFreeAd var_D4 = ""
  loc_B5BA8F: FFreeVar var_F8 = ""
  loc_B5BA96: Branch loc_B5BB62
  loc_B5BA99: LitStr "SELECT CodiDifu FROM difunto WHERE CodiTise = "
  loc_B5BA9C: FLdUI1
  loc_B5BAA0: CStrI2
  loc_B5BAA2: FStStrNoPop var_98
  loc_B5BAA5: ConcatStr
  loc_B5BAA6: FStStrNoPop var_9C
  loc_B5BAA9: LitStr " AND SeccDifu = '"
  loc_B5BAAC: ConcatStr
  loc_B5BAAD: FStStrNoPop var_A0
  loc_B5BAB0: ILdRf var_8C
  loc_B5BAB3: ConcatStr
  loc_B5BAB4: FStStrNoPop var_A4
  loc_B5BAB7: LitStr "' AND NumeDifu = "
  loc_B5BABA: ConcatStr
  loc_B5BABB: FStStrNoPop var_A8
  loc_B5BABE: FLdI2 arg_18
  loc_B5BAC1: CStrUI1
  loc_B5BAC3: FStStrNoPop var_AC
  loc_B5BAC6: ConcatStr
  loc_B5BAC7: FStStrNoPop var_B0
  loc_B5BACA: LitStr " AND CodiDifu <> "
  loc_B5BACD: ConcatStr
  loc_B5BACE: FStStrNoPop var_B4
  loc_B5BAD1: ILdRf arg_20
  loc_B5BAD4: CStrI4
  loc_B5BAD6: FStStrNoPop var_B8
  loc_B5BAD9: ConcatStr
  loc_B5BADA: FStStrNoPop var_BC
  loc_B5BADD: LitStr " AND FebaDifu IS NULL"
  loc_B5BAE0: ConcatStr
  loc_B5BAE1: FStStrNoPop var_C0
  loc_B5BAE4: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_B5BAE9: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B5BB02: FLdRfVar var_D0
  loc_B5BB05: FMemLdPr
  loc_B5BB0A:  = Me.RecordCount
  loc_B5BB0F: ILdRf var_D0
  loc_B5BB12: LitI4 1
  loc_B5BB17: EqI4
  loc_B5BB18: BranchF loc_B5BB62
  loc_B5BB1B: LitVarStr var_108, "La ubicación seleccionada se encuentra en la cuenta : "
  loc_B5BB20: FLdRfVar var_F8
  loc_B5BB23: FLdRfVar var_E8
  loc_B5BB26: LitVarStr var_E4, "CodiDifu"
  loc_B5BB2B: PopAdLdVar
  loc_B5BB2C: FLdRfVar var_D4
  loc_B5BB2F: FMemLdPr
  loc_B5BB34:  = Me.Fields
  loc_B5BB39: FLdPr var_D4
  loc_B5BB3C: from_stack_2 = Me.Item(from_stack_1)
  loc_B5BB41: FLdPr var_E8
  loc_B5BB44:  = Me.Value
  loc_B5BB49: FLdRfVar var_F8
  loc_B5BB4C: ConcatVar var_118
  loc_B5BB50: CStrVarTmp
  loc_B5BB51: FStStr var_88
  loc_B5BB54: FFreeAd var_D4 = ""
  loc_B5BB5B: FFreeVar var_F8 = ""
  loc_B5BB62: ExitProc
End Function

Private Function Proc_18_102_AA2D00(arg_C) 'AA2D00
  'Data Table: 4B72E0
  loc_AA2C54: ILdRf arg_C
  loc_AA2C57: FStStrCopy var_8C
  loc_AA2C5A: LitStr "SELECT EstaDeva FROM deudvari WHERE CodiDeva = '"
  loc_AA2C5D: ILdRf var_8C
  loc_AA2C60: ConcatStr
  loc_AA2C61: FStStrNoPop var_90
  loc_AA2C64: LitStr "'"
  loc_AA2C67: ConcatStr
  loc_AA2C68: FStStrNoPop var_94
  loc_AA2C6B: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AA2C70: FFreeStr var_90 = ""
  loc_AA2C77: FLdRfVar var_98
  loc_AA2C7A: FMemLdPr
  loc_AA2C7F:  = Me.RecordCount
  loc_AA2C84: ILdRf var_98
  loc_AA2C87: LitI4 1
  loc_AA2C8C: EqI4
  loc_AA2C8D: BranchF loc_AA2CFE
  loc_AA2C90: FLdRfVar var_C0
  loc_AA2C93: FLdRfVar var_B0
  loc_AA2C96: LitVarStr var_AC, "EstaDeva"
  loc_AA2C9B: PopAdLdVar
  loc_AA2C9C: FLdRfVar var_9C
  loc_AA2C9F: FMemLdPr
  loc_AA2CA4:  = Me.Fields
  loc_AA2CA9: FLdPr var_9C
  loc_AA2CAC: from_stack_2 = Me.Item(from_stack_1)
  loc_AA2CB1: FLdPr var_B0
  loc_AA2CB4:  = Me.Value
  loc_AA2CB9: FLdRfVar var_C0
  loc_AA2CBC: FnCByteVar
  loc_AA2CBE: CI2UI1
  loc_AA2CC0: LitI2_Byte 5
  loc_AA2CC2: EqI2
  loc_AA2CC3: FFreeAd var_9C = ""
  loc_AA2CCA: FFree1Var var_C0 = ""
  loc_AA2CCD: BranchF loc_AA2CFE
  loc_AA2CD0: LitStr "Municipalidad de Guaymallén"
  loc_AA2CD3: LitStr "Municipalidad de Guaymallén"
  loc_AA2CD6: EqStr
  loc_AA2CD8: BranchF loc_AA2CE4
  loc_AA2CDB: LitStr "La cuenta se encuentra con estado: DE BAJA"
  loc_AA2CDE: FStStrCopy var_88
  loc_AA2CE1: Branch loc_AA2CFE
  loc_AA2CE4: LitStr "Municipalidad de Guaymallén"
  loc_AA2CE7: LitStr "Municipalidad de Rivadavia"
  loc_AA2CEA: EqStr
  loc_AA2CEC: BranchF loc_AA2CF8
  loc_AA2CEF: LitStr "La cuenta se encuentra con estado: DE BAJA"
  loc_AA2CF2: FStStrCopy var_88
  loc_AA2CF5: Branch loc_AA2CFE
  loc_AA2CF8: LitStr "El convenio se encuentra con estado: DE BAJA"
  loc_AA2CFB: FStStrCopy var_88
  loc_AA2CFE: ExitProc
End Function

Private Function Proc_18_103_AC8BCC(arg_10) 'AC8BCC
  'Data Table: 4B72E0
  loc_AC8AE4: ILdRf arg_10
  loc_AC8AE7: FStStrCopy var_8C
  loc_AC8AEA: LitStr "SELECT EstaApre, NumeApre FROM apremio WHERE CodiOfic = "
  loc_AC8AED: FLdUI1
  loc_AC8AF1: CStrI2
  loc_AC8AF3: FStStrNoPop var_90
  loc_AC8AF6: ConcatStr
  loc_AC8AF7: FStStrNoPop var_94
  loc_AC8AFA: LitStr " AND CuenCtct = '"
  loc_AC8AFD: ConcatStr
  loc_AC8AFE: FStStrNoPop var_98
  loc_AC8B01: ILdRf var_8C
  loc_AC8B04: ConcatStr
  loc_AC8B05: FStStrNoPop var_9C
  loc_AC8B08: LitStr "'"
  loc_AC8B0B: ConcatStr
  loc_AC8B0C: FStStrNoPop var_A0
  loc_AC8B0F: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AC8B14: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_AC8B21: FLdRfVar var_A4
  loc_AC8B24: FMemLdPr
  loc_AC8B29:  = Me.RecordCount
  loc_AC8B2E: ILdRf var_A4
  loc_AC8B31: LitI4 1
  loc_AC8B36: GeI4
  loc_AC8B37: BranchF loc_AC8BCB
  loc_AC8B3A: FLdRfVar var_CC
  loc_AC8B3D: FLdRfVar var_BC
  loc_AC8B40: LitVarStr var_B8, "EstaApre"
  loc_AC8B45: PopAdLdVar
  loc_AC8B46: FLdRfVar var_A8
  loc_AC8B49: FMemLdPr
  loc_AC8B4E:  = Me.Fields
  loc_AC8B53: FLdPr var_A8
  loc_AC8B56: from_stack_2 = Me.Item(from_stack_1)
  loc_AC8B5B: FLdPr var_BC
  loc_AC8B5E:  = Me.Value
  loc_AC8B63: FLdRfVar var_CC
  loc_AC8B66: LitVarStr var_DC, "Activo"
  loc_AC8B6B: HardType
  loc_AC8B6C: EqVar var_EC
  loc_AC8B70: FLdRfVar var_114
  loc_AC8B73: FLdRfVar var_104
  loc_AC8B76: LitVarStr var_100, "NumeApre"
  loc_AC8B7B: PopAdLdVar
  loc_AC8B7C: FLdRfVar var_F0
  loc_AC8B7F: FMemLdPr
  loc_AC8B84:  = Me.Fields
  loc_AC8B89: FLdPr var_F0
  loc_AC8B8C: from_stack_2 = Me.Item(from_stack_1)
  loc_AC8B91: FLdPr var_104
  loc_AC8B94:  = Me.Value
  loc_AC8B99: FLdRfVar var_114
  loc_AC8B9C: FnCLngVar
  loc_AC8B9E: LitI4 &H2717
  loc_AC8BA3: LeI4
  loc_AC8BA4: CVarBoolI2 var_124
  loc_AC8BA8: AndVar var_134
  loc_AC8BAC: CBoolVarNull
  loc_AC8BAE: FFreeAd var_A8 = "": var_BC = "": var_F0 = ""
  loc_AC8BB9: FFreeVar var_CC = "": var_114 = ""
  loc_AC8BC2: BranchF loc_AC8BCB
  loc_AC8BC5: LitStr "La cuenta tiene apremio, no se puede emitir ningun boleto"
  loc_AC8BC8: FStStrCopy var_88
  loc_AC8BCB: ExitProc
End Function

Private Function Proc_18_104_A8BCDC(arg_C, arg_10, arg_14) 'A8BCDC
  'Data Table: 4B72E0
  loc_A8BC54: ILdRf arg_C
  loc_A8BC57: FStStrCopy var_8C
  loc_A8BC5A: ILdRf arg_10
  loc_A8BC5D: FStStrCopy var_90
  loc_A8BC60: ILdRf arg_14
  loc_A8BC63: FStStrCopy var_94
  loc_A8BC66: LitI2_Byte 0
  loc_A8BC68: LitI2_Byte 0
  loc_A8BC6A: ILdRf var_94
  loc_A8BC6D: LitStr "Código de Etapa"
  loc_A8BC70: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A8BC75: FStStr var_88
  loc_A8BC78: ILdRf var_88
  loc_A8BC7B: LitStr vbNullString
  loc_A8BC7E: NeStr
  loc_A8BC80: BranchF loc_A8BC84
  loc_A8BC83: ExitProc
  loc_A8BC84: LitStr "SELECT NumeEtga FROM etapagas WHERE CodiEtga = "
  loc_A8BC87: ILdRf var_8C
  loc_A8BC8A: ConcatStr
  loc_A8BC8B: FStStrNoPop var_98
  loc_A8BC8E: LitStr " AND CateEtga = "
  loc_A8BC91: ConcatStr
  loc_A8BC92: FStStrNoPop var_9C
  loc_A8BC95: ILdRf var_90
  loc_A8BC98: ConcatStr
  loc_A8BC99: FStStrNoPop var_A0
  loc_A8BC9C: LitStr " AND NumeEtga = "
  loc_A8BC9F: ConcatStr
  loc_A8BCA0: FStStrNoPop var_A4
  loc_A8BCA3: ILdRf var_94
  loc_A8BCA6: ConcatStr
  loc_A8BCA7: FStStrNoPop var_A8
  loc_A8BCAA: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A8BCAF: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A8BCBC: FLdRfVar var_AC
  loc_A8BCBF: FMemLdPr
  loc_A8BCC4:  = Me.RecordCount
  loc_A8BCC9: ILdRf var_AC
  loc_A8BCCC: LitI4 0
  loc_A8BCD1: EqI4
  loc_A8BCD2: BranchF loc_A8BCDB
  loc_A8BCD5: LitStr "La etapa no existe no existe. Reintente..."
  loc_A8BCD8: FStStrCopy var_88
  loc_A8BCDB: ExitProc
End Function

Private Function Proc_18_105_B19E38(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) 'B19E38
  'Data Table: 4B72E0
  loc_B19C5C: ILdRf arg_C
  loc_B19C5F: FStStrCopy var_8C
  loc_B19C62: ILdRf arg_10
  loc_B19C65: FStStrCopy var_90
  loc_B19C68: LitStr " SELECT * FROM detapago"
  loc_B19C6B: LitStr " INNER JOIN pago ON pago.FeenAcpa = detapago.FeenAcpa"
  loc_B19C6E: ConcatStr
  loc_B19C6F: FStStrNoPop var_94
  loc_B19C72: LitStr " AND pago.NumeAcpa = detapago.NumeAcpa"
  loc_B19C75: ConcatStr
  loc_B19C76: FStStrNoPop var_98
  loc_B19C79: LitStr " AND pago.PeriBole = detapago.PeriBole"
  loc_B19C7C: ConcatStr
  loc_B19C7D: FStStrNoPop var_9C
  loc_B19C80: LitStr " AND pago.NumeBole = detapago.NumeBole"
  loc_B19C83: ConcatStr
  loc_B19C84: FStStrNoPop var_A0
  loc_B19C87: LitStr " INNER JOIN devadeta ON devadeta.PeriBole = detapago.PeriBole"
  loc_B19C8A: ConcatStr
  loc_B19C8B: FStStrNoPop var_A4
  loc_B19C8E: LitStr " AND devadeta.NumeBole = detapago.NumeBole"
  loc_B19C91: ConcatStr
  loc_B19C92: FStStrNoPop var_A8
  loc_B19C95: LitStr " AND devadeta.PeriCtct = detapago.PeriCtct"
  loc_B19C98: ConcatStr
  loc_B19C99: FStStrNoPop var_AC
  loc_B19C9C: LitStr " AND devadeta.BimeCtct = detapago.BimeCtct"
  loc_B19C9F: ConcatStr
  loc_B19CA0: FStStrNoPop var_B0
  loc_B19CA3: LitStr " AND devadeta.NumeCtct = detapago.NumeCtct"
  loc_B19CA6: ConcatStr
  loc_B19CA7: FStStrNoPop var_B4
  loc_B19CAA: LitStr " AND devadeta.MoviCtct = detapago.MoviCtct"
  loc_B19CAD: ConcatStr
  loc_B19CAE: FStStrNoPop var_B8
  loc_B19CB1: LitStr " WHERE detapago.CodiOfic = 3 "
  loc_B19CB4: ConcatStr
  loc_B19CB5: FStStrNoPop var_BC
  loc_B19CB8: LitStr " AND pago.CuenCtct = '"
  loc_B19CBB: ConcatStr
  loc_B19CBC: FStStrNoPop var_C0
  loc_B19CBF: ILdRf var_90
  loc_B19CC2: ConcatStr
  loc_B19CC3: FStStrNoPop var_C4
  loc_B19CC6: LitStr "'"
  loc_B19CC9: ConcatStr
  loc_B19CCA: FStStrNoPop var_C8
  loc_B19CCD: LitStr " AND detapago.CodiConc = '91012600' "
  loc_B19CD0: ConcatStr
  loc_B19CD1: FStStrNoPop var_CC
  loc_B19CD4: LitStr " AND pago.CucuPers = '"
  loc_B19CD7: ConcatStr
  loc_B19CD8: FStStrNoPop var_D0
  loc_B19CDB: ILdRf var_8C
  loc_B19CDE: ConcatStr
  loc_B19CDF: FStStrNoPop var_D4
  loc_B19CE2: LitStr "'"
  loc_B19CE5: ConcatStr
  loc_B19CE6: FStStrNoPop var_D8
  loc_B19CE9: LitStr " AND detapago.PeriCtct = "
  loc_B19CEC: ConcatStr
  loc_B19CED: FStStrNoPop var_DC
  loc_B19CF0: FLdI2 arg_14
  loc_B19CF3: CStrUI1
  loc_B19CF5: FStStrNoPop var_E0
  loc_B19CF8: ConcatStr
  loc_B19CF9: FStStrNoPop var_E4
  loc_B19CFC: LitStr " AND detapago.BimeCtct >= "
  loc_B19CFF: ConcatStr
  loc_B19D00: FStStrNoPop var_E8
  loc_B19D03: FLdI2 arg_18
  loc_B19D06: CStrUI1
  loc_B19D08: FStStrNoPop var_EC
  loc_B19D0B: ConcatStr
  loc_B19D0C: FStStrNoPop var_F0
  loc_B19D0F: LitStr " AND detapago.BimeCtct <= "
  loc_B19D12: ConcatStr
  loc_B19D13: FStStrNoPop var_F4
  loc_B19D16: FLdI2 arg_1C
  loc_B19D19: CStrUI1
  loc_B19D1B: FStStrNoPop var_F8
  loc_B19D1E: ConcatStr
  loc_B19D1F: FStStrNoPop var_FC
  loc_B19D22: LitStr " AND devadeta.PeriOrde = "
  loc_B19D25: ConcatStr
  loc_B19D26: FStStrNoPop var_100
  loc_B19D29: FLdI2 arg_14
  loc_B19D2C: CStrUI1
  loc_B19D2E: FStStrNoPop var_104
  loc_B19D31: ConcatStr
  loc_B19D32: FStStrNoPop var_108
  loc_B19D35: LitStr " AND devadeta.CodiSede = "
  loc_B19D38: ConcatStr
  loc_B19D39: FStStrNoPop var_10C
  loc_B19D3C: FLdI2 arg_20
  loc_B19D3F: CStrUI1
  loc_B19D41: FStStrNoPop var_110
  loc_B19D44: ConcatStr
  loc_B19D45: FStStrNoPop var_114
  loc_B19D48: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_B19D4D: FFreeStr var_10C = "": var_110 = "": var_114 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_B19D92: FLdRfVar var_118
  loc_B19D95: FMemLdPr
  loc_B19D9A:  = Me.RecordCount
  loc_B19D9F: ILdRf var_118
  loc_B19DA2: LitI4 0
  loc_B19DA7: GtI4
  loc_B19DA8: BranchF loc_B19E35
  loc_B19DAB: LitVarStr var_150, "El boleto de internet ya se encuentra pagado con el boleto numero: "
  loc_B19DB0: FLdRfVar var_140
  loc_B19DB3: FLdRfVar var_130
  loc_B19DB6: LitVarStr var_12C, "PeriBole"
  loc_B19DBB: PopAdLdVar
  loc_B19DBC: FLdRfVar var_11C
  loc_B19DBF: FMemLdPr
  loc_B19DC4:  = Me.Fields
  loc_B19DC9: FLdPr var_11C
  loc_B19DCC: from_stack_2 = Me.Item(from_stack_1)
  loc_B19DD1: FLdPr var_130
  loc_B19DD4:  = Me.Value
  loc_B19DD9: FLdRfVar var_140
  loc_B19DDC: ConcatVar var_160
  loc_B19DE0: LitVarStr var_170, "-"
  loc_B19DE5: ConcatVar var_180
  loc_B19DE9: FLdRfVar var_1A8
  loc_B19DEC: FLdRfVar var_198
  loc_B19DEF: LitVarStr var_194, "NumeBole"
  loc_B19DF4: PopAdLdVar
  loc_B19DF5: FLdRfVar var_184
  loc_B19DF8: FMemLdPr
  loc_B19DFD:  = Me.Fields
  loc_B19E02: FLdPr var_184
  loc_B19E05: from_stack_2 = Me.Item(from_stack_1)
  loc_B19E0A: FLdPr var_198
  loc_B19E0D:  = Me.Value
  loc_B19E12: FLdRfVar var_1A8
  loc_B19E15: ConcatVar var_1B8
  loc_B19E19: CStrVarTmp
  loc_B19E1A: FStStr var_88
  loc_B19E1D: FFreeAd var_11C = "": var_130 = "": var_184 = ""
  loc_B19E28: FFreeVar var_140 = "": var_160 = "": var_180 = "": var_1A8 = ""
  loc_B19E35: ExitProc
End Function

Private Function Proc_18_106_A6E45C(arg_C) 'A6E45C
  'Data Table: 4B72E0
  loc_A6E3FC: LitStr " SELECT * FROM boleto "
  loc_A6E3FF: LitStr " INNER JOIN pago ON pago.PeriBole = boleto.PeriBole"
  loc_A6E402: ConcatStr
  loc_A6E403: FStStrNoPop var_8C
  loc_A6E406: LitStr " AND pago.NumeBole = boleto.NumeBole"
  loc_A6E409: ConcatStr
  loc_A6E40A: FStStrNoPop var_90
  loc_A6E40D: LitStr " WHERE boleto.CodiOfic = 3 AND boleto.CuenCtct = '' AND boleto.ExpeBole = '"
  loc_A6E410: ConcatStr
  loc_A6E411: FStStrNoPop var_94
  loc_A6E414: FLdI2 arg_C
  loc_A6E417: CStrUI1
  loc_A6E419: FStStrNoPop var_98
  loc_A6E41C: ConcatStr
  loc_A6E41D: FStStrNoPop var_9C
  loc_A6E420: LitStr "'"
  loc_A6E423: ConcatStr
  loc_A6E424: FStStrNoPop var_A0
  loc_A6E427: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A6E42C: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A6E43B: FLdRfVar var_A4
  loc_A6E43E: FMemLdPr
  loc_A6E443:  = Me.RecordCount
  loc_A6E448: ILdRf var_A4
  loc_A6E44B: LitI4 0
  loc_A6E450: GtI4
  loc_A6E451: BranchF loc_A6E45A
  loc_A6E454: LitStr "El boleto YA SE ENCUENTRA PAGADO"
  loc_A6E457: FStStrCopy var_88
  loc_A6E45A: ExitProc
  loc_A6E45B: UMiR8
End Function

Private Function Proc_18_107_A644C4(arg_C) 'A644C4
  'Data Table: 4B72E0
  loc_A64464: ILdRf arg_C
  loc_A64467: FStStrCopy var_8C
  loc_A6446A: ILdRf var_8C
  loc_A6446D: LitStr "Código de Construcción"
  loc_A64470: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A64475: FStStr var_88
  loc_A64478: ILdRf var_88
  loc_A6447B: LitStr vbNullString
  loc_A6447E: NeStr
  loc_A64480: BranchF loc_A64484
  loc_A64483: ExitProc
  loc_A64484: LitStr "SELECT CodiCoca FROM conscate WHERE CodiCoca = '"
  loc_A64487: ILdRf var_8C
  loc_A6448A: ConcatStr
  loc_A6448B: FStStrNoPop var_90
  loc_A6448E: LitStr "'"
  loc_A64491: ConcatStr
  loc_A64492: FStStrNoPop var_94
  loc_A64495: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A6449A: FFreeStr var_90 = ""
  loc_A644A1: FLdRfVar var_98
  loc_A644A4: FMemLdPr
  loc_A644A9:  = Me.RecordCount
  loc_A644AE: ILdRf var_98
  loc_A644B1: LitI4 0
  loc_A644B6: EqI4
  loc_A644B7: BranchF loc_A644C0
  loc_A644BA: LitStr "El código de la constracción no existe"
  loc_A644BD: FStStrCopy var_88
  loc_A644C0: ExitProc
  loc_A644C3: ExitProcHresult
End Function

Private Function Proc_18_108_A80750(arg_C, arg_10) 'A80750
  'Data Table: 4B72E0
  loc_A806D4: LitI2_Byte 0
  loc_A806D6: LitI2_Byte 0
  loc_A806D8: FLdI2 arg_10
  loc_A806DB: CStrUI1
  loc_A806DD: FStStrNoPop var_8C
  loc_A806E0: LitStr "Numero de Frente"
  loc_A806E3: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A806E8: FStStr var_88
  loc_A806EB: FFree1Str var_8C
  loc_A806EE: ILdRf var_88
  loc_A806F1: LitStr vbNullString
  loc_A806F4: NeStr
  loc_A806F6: BranchF loc_A806FA
  loc_A806F9: ExitProc
  loc_A806FA: LitStr "SELECT NumeFrin FROM freninmu WHERE CodiInmu = "
  loc_A806FD: ILdRf arg_C
  loc_A80700: CStrI4
  loc_A80702: FStStrNoPop var_8C
  loc_A80705: ConcatStr
  loc_A80706: FStStrNoPop var_90
  loc_A80709: LitStr " AND NumeFrin = "
  loc_A8070C: ConcatStr
  loc_A8070D: FStStrNoPop var_94
  loc_A80710: FLdI2 arg_10
  loc_A80713: CStrUI1
  loc_A80715: FStStrNoPop var_98
  loc_A80718: ConcatStr
  loc_A80719: FStStrNoPop var_9C
  loc_A8071C: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A80721: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A8072E: FLdRfVar var_A0
  loc_A80731: FMemLdPr
  loc_A80736:  = Me.RecordCount
  loc_A8073B: ILdRf var_A0
  loc_A8073E: LitI4 0
  loc_A80743: EqI4
  loc_A80744: BranchF loc_A8074D
  loc_A80747: LitStr "El Numero de Frente no Existe"
  loc_A8074A: FStStrCopy var_88
  loc_A8074D: ExitProc
  loc_A8074E: ConcatStr
End Function

Private Function Proc_18_109_AB2438(arg_10) 'AB2438
  'Data Table: 4B72E0
  loc_AB2384: ILdRf arg_10
  loc_AB2387: FStStrCopy var_8C
  loc_AB238A: LitStr " SELECT * FROM pagoanual "
  loc_AB238D: LitStr " WHERE CodiOfic = "
  loc_AB2390: ConcatStr
  loc_AB2391: FStStrNoPop var_90
  loc_AB2394: FLdUI1
  loc_AB2398: CStrI2
  loc_AB239A: FStStrNoPop var_94
  loc_AB239D: ConcatStr
  loc_AB239E: FStStrNoPop var_98
  loc_AB23A1: LitStr " AND CuenCtct = '"
  loc_AB23A4: ConcatStr
  loc_AB23A5: FStStrNoPop var_9C
  loc_AB23A8: ILdRf var_8C
  loc_AB23AB: ConcatStr
  loc_AB23AC: FStStrNoPop var_A0
  loc_AB23AF: LitStr "'"
  loc_AB23B2: ConcatStr
  loc_AB23B3: FStStrNoPop var_A4
  loc_AB23B6: LitStr " AND PeriLiqu = "
  loc_AB23B9: ConcatStr
  loc_AB23BA: FStStrNoPop var_A8
  loc_AB23BD: ImpAdLdI2 MemVar_D93034
  loc_AB23C0: CStrUI1
  loc_AB23C2: FStStrNoPop var_AC
  loc_AB23C5: ConcatStr
  loc_AB23C6: FStStrNoPop var_B0
  loc_AB23C9: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AB23CE: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AB23E3: FLdRfVar var_B4
  loc_AB23E6: FMemLdPr
  loc_AB23EB:  = Me.RecordCount
  loc_AB23F0: ILdRf var_B4
  loc_AB23F3: LitI4 0
  loc_AB23F8: GtI4
  loc_AB23F9: BranchF loc_AB2436
  loc_AB23FC: FLdRfVar var_CC
  loc_AB23FF: LitVarStr var_C8, "FepaPaan"
  loc_AB2404: PopAdLdVar
  loc_AB2405: FLdRfVar var_B8
  loc_AB2408: FMemLdPr
  loc_AB240D:  = Me.Fields
  loc_AB2412: FLdPr var_B8
  loc_AB2415: from_stack_2 = Me.Item(from_stack_1)
  loc_AB241A: FLdZeroAd var_CC
  loc_AB241D: CVarAd
  loc_AB2421: ImpAdCallI2 IsNull()
  loc_AB2426: NotI4
  loc_AB2427: FFree1Ad var_B8
  loc_AB242A: FFree1Var var_DC = ""
  loc_AB242D: BranchF loc_AB2436
  loc_AB2430: LitStr "El contribuyente realizó el pago Anual, no se puede mostrar ninguna información."
  loc_AB2433: FStStrCopy var_88
  loc_AB2436: ExitProc
End Function

Private Function Proc_18_110_AA4390(arg_C, arg_10) 'AA4390
  'Data Table: 4B72E0
  loc_AA42E8: ILdRf arg_C
  loc_AA42EB: FStStrCopy var_8C
  loc_AA42EE: LitStr "SELECT ActuInre FROM ingrrent "
  loc_AA42F1: LitStr " WHERE FechInre = '"
  loc_AA42F4: ConcatStr
  loc_AA42F5: CVarStr var_DC
  loc_AA42F8: LitI4 1
  loc_AA42FD: LitI4 1
  loc_AA4302: LitVarStr var_AC, "yyyy-mm-dd"
  loc_AA4307: FStVarCopyObj var_BC
  loc_AA430A: FLdRfVar var_BC
  loc_AA430D: FLdRfVar var_8C
  loc_AA4310: CVarRef
  loc_AA4315: FLdRfVar var_CC
  loc_AA4318: ImpAdCallFPR4  = Format(, )
  loc_AA431D: FLdRfVar var_CC
  loc_AA4320: ConcatVar var_EC
  loc_AA4324: LitVarStr var_FC, "'"
  loc_AA4329: ConcatVar var_10C
  loc_AA432D: LitVarStr var_11C, " AND NumeAcpa = "
  loc_AA4332: ConcatVar var_12C
  loc_AA4336: FLdI2 arg_10
  loc_AA4339: CVarI2 var_13C
  loc_AA433C: ConcatVar var_14C
  loc_AA4340: LitVarStr var_15C, " AND ActuInre = 'Si'"
  loc_AA4345: ConcatVar var_16C
  loc_AA4349: CStrVarVal var_170
  loc_AA434D: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AA4352: FFree1Str var_170
  loc_AA4355: FFreeVar var_BC = "": var_DC = "": var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = ""
  loc_AA4368: FLdRfVar var_174
  loc_AA436B: FMemLdPr
  loc_AA4370:  = Me.RecordCount
  loc_AA4375: ILdRf var_174
  loc_AA4378: LitI4 1
  loc_AA437D: GeI4
  loc_AA437E: BranchF loc_AA4389
  loc_AA4381: LitI2_Byte &HFF
  loc_AA4383: FStI2 var_86
  loc_AA4386: Branch loc_AA438E
  loc_AA4389: LitI2_Byte 0
  loc_AA438B: FStI2 var_86
  loc_AA438E: ExitProcI2
End Function

Private Function Proc_18_111_C62EC8(arg_C, arg_10) 'C62EC8
  'Data Table: 4B72E0
  loc_C61FA4: ILdRf arg_C
  loc_C61FA7: FStStrCopy var_8C
  loc_C61FAA: LitStr " SELECT IFNULL(SUM(TotaPago),0) as TotaPago FROM pago "
  loc_C61FAD: LitStr " WHERE FeenAcpa = '"
  loc_C61FB0: ConcatStr
  loc_C61FB1: CVarStr var_EC
  loc_C61FB4: LitI4 1
  loc_C61FB9: LitI4 1
  loc_C61FBE: LitVarStr var_BC, "yyyy-mm-dd"
  loc_C61FC3: FStVarCopyObj var_CC
  loc_C61FC6: FLdRfVar var_CC
  loc_C61FC9: FLdRfVar var_8C
  loc_C61FCC: CVarRef
  loc_C61FD1: FLdRfVar var_DC
  loc_C61FD4: ImpAdCallFPR4  = Format(, )
  loc_C61FD9: FLdRfVar var_DC
  loc_C61FDC: ConcatVar var_FC
  loc_C61FE0: LitVarStr var_10C, "'"
  loc_C61FE5: ConcatVar var_11C
  loc_C61FE9: LitVarStr var_12C, " AND NumeAcpa = "
  loc_C61FEE: ConcatVar var_13C
  loc_C61FF2: FLdI2 arg_10
  loc_C61FF5: CVarI2 var_14C
  loc_C61FF8: ConcatVar var_15C
  loc_C61FFC: LitVarStr var_16C, " ORDER BY PeriBole, NumeBole, CucuPers"
  loc_C62001: ConcatVar var_17C
  loc_C62005: CStrVarVal var_180
  loc_C62009: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_C6200E: FFree1Str var_180
  loc_C62011: FFreeVar var_CC = "": var_EC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = ""
  loc_C62024: FLdRfVar var_184
  loc_C62027: FMemLdPr
  loc_C6202C:  = Me.RecordCount
  loc_C62031: ILdRf var_184
  loc_C62034: LitI4 0
  loc_C62039: GtI4
  loc_C6203A: BranchF loc_C6207A
  loc_C6203D: FLdRfVar var_CC
  loc_C62040: FLdRfVar var_18C
  loc_C62043: LitVarStr var_AC, "TotaPago"
  loc_C62048: PopAdLdVar
  loc_C62049: FLdRfVar var_188
  loc_C6204C: FMemLdPr
  loc_C62051:  = Me.Fields
  loc_C62056: FLdPr var_188
  loc_C62059: from_stack_2 = Me.Item(from_stack_1)
  loc_C6205E: FLdPr var_18C
  loc_C62061:  = Me.Value
  loc_C62066: FLdRfVar var_CC
  loc_C62069: CR4Var
  loc_C6206A: FStFPR8 var_94
  loc_C6206D: FFreeAd var_188 = ""
  loc_C62074: FFree1Var var_CC = ""
  loc_C62077: Branch loc_C62080
  loc_C6207A: LitI2_Byte 0
  loc_C6207C: CR8I2
  loc_C6207D: FStFPR8 var_94
  loc_C62080: LitStr "DROP TEMPORARY TABLE IF EXISTS deta;"
  loc_C62083: LitStr " CREATE TEMPORARY TABLE deta"
  loc_C62086: ConcatStr
  loc_C62087: FStStrNoPop var_180
  loc_C6208A: LitStr " SELECT detapago.CodiConc, sum(CapiDepa-DecaDepa-ExenDepa-CrafDepa) as TotaDepa, "
  loc_C6208D: ConcatStr
  loc_C6208E: FStStrNoPop var_190
  loc_C62091: LitStr " detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, sum(CapiDepa) as CapiDepa, sum(DecaDepa) as DecaDepa, sum(ExenDepa) as ExenDepa"
  loc_C62094: ConcatStr
  loc_C62095: FStStrNoPop var_194
  loc_C62098: LitStr " FROM detapago"
  loc_C6209B: ConcatStr
  loc_C6209C: FStStrNoPop var_198
  loc_C6209F: LitStr " WHERE detapago.FeenAcpa = '"
  loc_C620A2: ConcatStr
  loc_C620A3: FStStrNoPop var_19C
  loc_C620A6: LitI4 1
  loc_C620AB: LitI4 1
  loc_C620B0: LitVarStr var_BC, "yyyy-mm-dd"
  loc_C620B5: FStVarCopyObj var_CC
  loc_C620B8: FLdRfVar var_CC
  loc_C620BB: FLdRfVar var_8C
  loc_C620BE: CVarRef
  loc_C620C3: ImpAdCallI2 Format$(, )
  loc_C620C8: FStStrNoPop var_1A0
  loc_C620CB: ConcatStr
  loc_C620CC: FStStrNoPop var_1A4
  loc_C620CF: LitStr "' AND NumeAcpa = "
  loc_C620D2: ConcatStr
  loc_C620D3: FStStrNoPop var_1A8
  loc_C620D6: FLdI2 arg_10
  loc_C620D9: CStrUI1
  loc_C620DB: FStStrNoPop var_1AC
  loc_C620DE: ConcatStr
  loc_C620DF: FStStrNoPop var_1B0
  loc_C620E2: LitStr " GROUP BY detapago.CodiConc;"
  loc_C620E5: ConcatStr
  loc_C620E6: FStStrNoPop var_1B4
  loc_C620E9: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_C620EE: FFreeStr var_180 = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = ""
  loc_C62107: FFree1Var var_CC = ""
  loc_C6210A: LitStr "Municipalidad de Guaymallén"
  loc_C6210D: LitStr "Municipalidad de Rivadavia"
  loc_C62110: EqStr
  loc_C62112: BranchF loc_C62415
  loc_C62115: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C62118: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C6211B: ConcatStr
  loc_C6211C: CVarStr var_DC
  loc_C6211F: FLdRfVar var_8C
  loc_C62122: CVarRef
  loc_C62127: FLdRfVar var_CC
  loc_C6212A: ImpAdCallFPR4  = Year()
  loc_C6212F: FLdRfVar var_CC
  loc_C62132: ConcatVar var_EC
  loc_C62136: LitVarStr var_BC, " WHERE detapago.FeenAcpa = '"
  loc_C6213B: ConcatVar var_FC
  loc_C6213F: LitI4 1
  loc_C62144: LitI4 1
  loc_C62149: LitVarStr var_12C, "yyyy-mm-dd"
  loc_C6214E: FStVarCopyObj var_11C
  loc_C62151: FLdRfVar var_11C
  loc_C62154: FLdRfVar var_8C
  loc_C62157: CVarRef
  loc_C6215C: ImpAdCallI2 Format$(, )
  loc_C62161: CVarStr var_13C
  loc_C62164: ConcatVar var_15C
  loc_C62168: LitVarStr var_14C, "' AND detapago.NumeAcpa = "
  loc_C6216D: ConcatVar var_17C
  loc_C62171: FLdI2 arg_10
  loc_C62174: CVarI2 var_16C
  loc_C62177: ConcatVar var_1C4
  loc_C6217B: LitVarStr var_1D4, " GROUP BY TRUE;"
  loc_C62180: ConcatVar var_1E4
  loc_C62184: LitVarStr var_1F4, " INSERT INTO deta SELECT pararenta.CoadPare as CodiConc, sum(CoadBoap) as TotaDepa, pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C62189: ConcatVar var_204
  loc_C6218D: LitVarStr var_214, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C62192: ConcatVar var_224
  loc_C62196: FLdRfVar var_8C
  loc_C62199: CVarRef
  loc_C6219E: FLdRfVar var_244
  loc_C621A1: ImpAdCallFPR4  = Year()
  loc_C621A6: FLdRfVar var_244
  loc_C621A9: ConcatVar var_254
  loc_C621AD: LitVarStr var_264, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_C621B2: ConcatVar var_274
  loc_C621B6: LitVarStr var_284, " WHERE pago.FeenAcpa = '"
  loc_C621BB: ConcatVar var_294
  loc_C621BF: LitI4 1
  loc_C621C4: LitI4 1
  loc_C621C9: LitVarStr var_2B4, "yyyy-mm-dd"
  loc_C621CE: FStVarCopyObj var_2C4
  loc_C621D1: FLdRfVar var_2C4
  loc_C621D4: FLdRfVar var_8C
  loc_C621D7: CVarRef
  loc_C621DC: ImpAdCallI2 Format$(, )
  loc_C621E1: CVarStr var_2D4
  loc_C621E4: ConcatVar var_2E4
  loc_C621E8: LitVarStr var_2F4, "' AND pago.NumeAcpa = "
  loc_C621ED: ConcatVar var_304
  loc_C621F1: FLdI2 arg_10
  loc_C621F4: CVarI2 var_314
  loc_C621F7: ConcatVar var_324
  loc_C621FB: LitVarStr var_334, " GROUP BY TRUE;"
  loc_C62200: ConcatVar var_344
  loc_C62204: LitVarStr var_354, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, sum(HoreBoap+HoofBoap+MoreBoap+MoofBoap) as TotaDepa, "
  loc_C62209: ConcatVar var_364
  loc_C6220D: LitVarStr var_374, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa "
  loc_C62212: ConcatVar var_384
  loc_C62216: LitVarStr var_394, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C6221B: ConcatVar var_3A4
  loc_C6221F: FLdRfVar var_8C
  loc_C62222: CVarRef
  loc_C62227: FLdRfVar var_3C4
  loc_C6222A: ImpAdCallFPR4  = Year()
  loc_C6222F: FLdRfVar var_3C4
  loc_C62232: ConcatVar var_3D4
  loc_C62236: LitVarStr var_3E4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_C6223B: ConcatVar var_3F4
  loc_C6223F: LitVarStr var_404, " WHERE pago.FeenAcpa = '"
  loc_C62244: ConcatVar var_414
  loc_C62248: LitI4 1
  loc_C6224D: LitI4 1
  loc_C62252: LitVarStr var_434, "yyyy-mm-dd"
  loc_C62257: FStVarCopyObj var_444
  loc_C6225A: FLdRfVar var_444
  loc_C6225D: FLdRfVar var_8C
  loc_C62260: CVarRef
  loc_C62265: ImpAdCallI2 Format$(, )
  loc_C6226A: CVarStr var_454
  loc_C6226D: ConcatVar var_464
  loc_C62271: LitVarStr var_474, "' AND pago.NumeAcpa = "
  loc_C62276: ConcatVar var_484
  loc_C6227A: FLdI2 arg_10
  loc_C6227D: CVarI2 var_494
  loc_C62280: ConcatVar var_4A4
  loc_C62284: LitVarStr var_4B4, " GROUP BY TRUE;"
  loc_C62289: ConcatVar var_4C4
  loc_C6228D: LitVarStr var_4D4, " INSERT INTO deta SELECT pararenta.CoimPare as CodiConc, sum(ApleBoap+DefiBoap+ReseBoap) as TotaDepa, "
  loc_C62292: ConcatVar var_4E4
  loc_C62296: LitVarStr var_4F4, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C6229B: ConcatVar var_504
  loc_C6229F: LitVarStr var_514, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C622A4: ConcatVar var_524
  loc_C622A8: FLdRfVar var_8C
  loc_C622AB: CVarRef
  loc_C622B0: FLdRfVar var_544
  loc_C622B3: ImpAdCallFPR4  = Year()
  loc_C622B8: FLdRfVar var_544
  loc_C622BB: ConcatVar var_554
  loc_C622BF: LitVarStr var_564, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_C622C4: ConcatVar var_574
  loc_C622C8: LitVarStr var_584, " WHERE pago.FeenAcpa = '"
  loc_C622CD: ConcatVar var_594
  loc_C622D1: LitI4 1
  loc_C622D6: LitI4 1
  loc_C622DB: LitVarStr var_5B4, "yyyy-mm-dd"
  loc_C622E0: FStVarCopyObj var_5C4
  loc_C622E3: FLdRfVar var_5C4
  loc_C622E6: FLdRfVar var_8C
  loc_C622E9: CVarRef
  loc_C622EE: ImpAdCallI2 Format$(, )
  loc_C622F3: CVarStr var_5D4
  loc_C622F6: ConcatVar var_5E4
  loc_C622FA: LitVarStr var_5F4, "' AND pago.NumeAcpa = "
  loc_C622FF: ConcatVar var_604
  loc_C62303: FLdI2 arg_10
  loc_C62306: CVarI2 var_614
  loc_C62309: ConcatVar var_624
  loc_C6230D: LitVarStr var_634, " GROUP BY TRUE; "
  loc_C62312: ConcatVar var_644
  loc_C62316: LitVarStr var_654, " INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa "
  loc_C6231B: ConcatVar var_664
  loc_C6231F: LitVarStr var_674, " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C62324: ConcatVar var_684
  loc_C62328: FLdRfVar var_8C
  loc_C6232B: CVarRef
  loc_C62330: FLdRfVar var_6A4
  loc_C62333: ImpAdCallFPR4  = Year()
  loc_C62338: FLdRfVar var_6A4
  loc_C6233B: ConcatVar var_6B4
  loc_C6233F: LitVarStr var_6C4, " WHERE detapago.FeenAcpa = '"
  loc_C62344: ConcatVar var_6D4
  loc_C62348: LitI4 1
  loc_C6234D: LitI4 1
  loc_C62352: LitVarStr var_6F4, "yyyy-mm-dd"
  loc_C62357: FStVarCopyObj var_704
  loc_C6235A: FLdRfVar var_704
  loc_C6235D: FLdRfVar var_8C
  loc_C62360: CVarRef
  loc_C62365: ImpAdCallI2 Format$(, )
  loc_C6236A: CVarStr var_714
  loc_C6236D: ConcatVar var_724
  loc_C62371: LitVarStr var_734, "' AND detapago.NumeAcpa = "
  loc_C62376: ConcatVar var_744
  loc_C6237A: FLdI2 arg_10
  loc_C6237D: CVarI2 var_754
  loc_C62380: ConcatVar var_764
  loc_C62384: LitVarStr var_774, " GROUP BY TRUE;"
  loc_C62389: ConcatVar var_784
  loc_C6238D: CStrVarVal var_180
  loc_C62391: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_C62396: FFree1Str var_180
  loc_C62399: FFreeVar var_454 = "": var_464 = "": var_484 = "": var_4A4 = "": var_4C4 = "": var_4E4 = "": var_504 = "": var_524 = "": var_544 = "": var_554 = "": var_574 = "": var_5C4 = "": var_594 = "": var_5D4 = "": var_5E4 = "": var_604 = "": var_624 = "": var_644 = "": var_664 = "": var_684 = "": var_6A4 = "": var_6B4 = "": var_704 = "": var_6D4 = "": var_714 = "": var_724 = "": var_744 = "": var_764 = "": var_784 = "": var_DC = "": var_CC = "": var_EC = "": var_11C = "": var_FC = "": var_13C = "": var_15C = "": var_17C = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = "": var_244 = "": var_254 = "": var_274 = "": var_2C4 = "": var_294 = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_364 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3D4 = "": var_3F4 = "": var_444 = ""
  loc_C62412: Branch loc_C62E4A
  loc_C62415: LitStr "Municipalidad de Guaymallén"
  loc_C62418: LitStr "Municipalidad de Guaymallén"
  loc_C6241B: EqStr
  loc_C6241D: BranchF loc_C6270A
  loc_C62420: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C62423: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C62426: ConcatStr
  loc_C62427: CVarStr var_DC
  loc_C6242A: FLdRfVar var_8C
  loc_C6242D: CVarRef
  loc_C62432: FLdRfVar var_CC
  loc_C62435: ImpAdCallFPR4  = Year()
  loc_C6243A: FLdRfVar var_CC
  loc_C6243D: ConcatVar var_EC
  loc_C62441: LitVarStr var_BC, " WHERE detapago.FeenAcpa = '"
  loc_C62446: ConcatVar var_FC
  loc_C6244A: LitI4 1
  loc_C6244F: LitI4 1
  loc_C62454: LitVarStr var_12C, "yyyy-mm-dd"
  loc_C62459: FStVarCopyObj var_11C
  loc_C6245C: FLdRfVar var_11C
  loc_C6245F: FLdRfVar var_8C
  loc_C62462: CVarRef
  loc_C62467: ImpAdCallI2 Format$(, )
  loc_C6246C: CVarStr var_13C
  loc_C6246F: ConcatVar var_15C
  loc_C62473: LitVarStr var_14C, "' AND detapago.NumeAcpa = "
  loc_C62478: ConcatVar var_17C
  loc_C6247C: FLdI2 arg_10
  loc_C6247F: CVarI2 var_16C
  loc_C62482: ConcatVar var_1C4
  loc_C62486: LitVarStr var_1D4, " GROUP BY TRUE;"
  loc_C6248B: ConcatVar var_1E4
  loc_C6248F: LitVarStr var_1F4, " INSERT INTO deta SELECT pararenta.CoadPare as CodiConc, SUM(CoadBoap+IcomBoap) as TotaDepa, pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C62494: ConcatVar var_204
  loc_C62498: LitVarStr var_214, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C6249D: ConcatVar var_224
  loc_C624A1: FLdRfVar var_8C
  loc_C624A4: CVarRef
  loc_C624A9: FLdRfVar var_244
  loc_C624AC: ImpAdCallFPR4  = Year()
  loc_C624B1: FLdRfVar var_244
  loc_C624B4: ConcatVar var_254
  loc_C624B8: LitVarStr var_264, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_C624BD: ConcatVar var_274
  loc_C624C1: LitVarStr var_284, " WHERE pago.FeenAcpa = '"
  loc_C624C6: ConcatVar var_294
  loc_C624CA: LitI4 1
  loc_C624CF: LitI4 1
  loc_C624D4: LitVarStr var_2B4, "yyyy-mm-dd"
  loc_C624D9: FStVarCopyObj var_2C4
  loc_C624DC: FLdRfVar var_2C4
  loc_C624DF: FLdRfVar var_8C
  loc_C624E2: CVarRef
  loc_C624E7: ImpAdCallI2 Format$(, )
  loc_C624EC: CVarStr var_2D4
  loc_C624EF: ConcatVar var_2E4
  loc_C624F3: LitVarStr var_2F4, "' AND pago.NumeAcpa = "
  loc_C624F8: ConcatVar var_304
  loc_C624FC: FLdI2 arg_10
  loc_C624FF: CVarI2 var_314
  loc_C62502: ConcatVar var_324
  loc_C62506: LitVarStr var_334, " GROUP BY TRUE;"
  loc_C6250B: ConcatVar var_344
  loc_C6250F: LitVarStr var_354, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, SUM(HoreBoap+HoofBoap+MoreBoap+MoofBoap+IrecBoap+IofiBoap) as TotaDepa, "
  loc_C62514: ConcatVar var_364
  loc_C62518: LitVarStr var_374, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C6251D: ConcatVar var_384
  loc_C62521: LitVarStr var_394, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C62526: ConcatVar var_3A4
  loc_C6252A: FLdRfVar var_8C
  loc_C6252D: CVarRef
  loc_C62532: FLdRfVar var_3C4
  loc_C62535: ImpAdCallFPR4  = Year()
  loc_C6253A: FLdRfVar var_3C4
  loc_C6253D: ConcatVar var_3D4
  loc_C62541: LitVarStr var_3E4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_C62546: ConcatVar var_3F4
  loc_C6254A: LitVarStr var_404, " WHERE pago.FeenAcpa = '"
  loc_C6254F: ConcatVar var_414
  loc_C62553: LitI4 1
  loc_C62558: LitI4 1
  loc_C6255D: LitVarStr var_434, "yyyy-mm-dd"
  loc_C62562: FStVarCopyObj var_444
  loc_C62565: FLdRfVar var_444
  loc_C62568: FLdRfVar var_8C
  loc_C6256B: CVarRef
  loc_C62570: ImpAdCallI2 Format$(, )
  loc_C62575: CVarStr var_454
  loc_C62578: ConcatVar var_464
  loc_C6257C: LitVarStr var_474, "' AND pago.NumeAcpa = "
  loc_C62581: ConcatVar var_484
  loc_C62585: FLdI2 arg_10
  loc_C62588: CVarI2 var_494
  loc_C6258B: ConcatVar var_4A4
  loc_C6258F: LitVarStr var_4B4, " GROUP BY TRUE;"
  loc_C62594: ConcatVar var_4C4
  loc_C62598: LitVarStr var_4D4, " INSERT INTO deta SELECT pararenta.CoimPare as CodiConc, SUM(ApleBoap+DefiBoap+ReseBoap) as TotaDepa, "
  loc_C6259D: ConcatVar var_4E4
  loc_C625A1: LitVarStr var_4F4, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C625A6: ConcatVar var_504
  loc_C625AA: LitVarStr var_514, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C625AF: ConcatVar var_524
  loc_C625B3: FLdRfVar var_8C
  loc_C625B6: CVarRef
  loc_C625BB: FLdRfVar var_544
  loc_C625BE: ImpAdCallFPR4  = Year()
  loc_C625C3: FLdRfVar var_544
  loc_C625C6: ConcatVar var_554
  loc_C625CA: LitVarStr var_564, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_C625CF: ConcatVar var_574
  loc_C625D3: LitVarStr var_584, " WHERE pago.FeenAcpa = '"
  loc_C625D8: ConcatVar var_594
  loc_C625DC: LitI4 1
  loc_C625E1: LitI4 1
  loc_C625E6: LitVarStr var_5B4, "yyyy-mm-dd"
  loc_C625EB: FStVarCopyObj var_5C4
  loc_C625EE: FLdRfVar var_5C4
  loc_C625F1: FLdRfVar var_8C
  loc_C625F4: CVarRef
  loc_C625F9: ImpAdCallI2 Format$(, )
  loc_C625FE: CVarStr var_5D4
  loc_C62601: ConcatVar var_5E4
  loc_C62605: LitVarStr var_5F4, "' AND pago.NumeAcpa = "
  loc_C6260A: ConcatVar var_604
  loc_C6260E: FLdI2 arg_10
  loc_C62611: CVarI2 var_614
  loc_C62614: ConcatVar var_624
  loc_C62618: LitVarStr var_634, " GROUP BY TRUE; INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C6261D: ConcatVar var_644
  loc_C62621: FLdRfVar var_8C
  loc_C62624: CVarRef
  loc_C62629: FLdRfVar var_664
  loc_C6262C: ImpAdCallFPR4  = Year()
  loc_C62631: FLdRfVar var_664
  loc_C62634: ConcatVar var_684
  loc_C62638: LitVarStr var_674, " WHERE detapago.FeenAcpa = '"
  loc_C6263D: ConcatVar var_6A4
  loc_C62641: LitI4 1
  loc_C62646: LitI4 1
  loc_C6264B: LitVarStr var_6C4, "yyyy-mm-dd"
  loc_C62650: FStVarCopyObj var_6B4
  loc_C62653: FLdRfVar var_6B4
  loc_C62656: FLdRfVar var_8C
  loc_C62659: CVarRef
  loc_C6265E: ImpAdCallI2 Format$(, )
  loc_C62663: CVarStr var_6D4
  loc_C62666: ConcatVar var_704
  loc_C6266A: LitVarStr var_6E4, "' AND detapago.NumeAcpa = "
  loc_C6266F: ConcatVar var_714
  loc_C62673: FLdI2 arg_10
  loc_C62676: CVarI2 var_6F4
  loc_C62679: ConcatVar var_724
  loc_C6267D: LitVarStr var_734, " GROUP BY TRUE;"
  loc_C62682: ConcatVar var_744
  loc_C62686: CStrVarVal var_180
  loc_C6268A: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_C6268F: FFree1Str var_180
  loc_C62692: FFreeVar var_454 = "": var_464 = "": var_484 = "": var_4A4 = "": var_4C4 = "": var_4E4 = "": var_504 = "": var_524 = "": var_544 = "": var_554 = "": var_574 = "": var_5C4 = "": var_594 = "": var_5D4 = "": var_5E4 = "": var_604 = "": var_624 = "": var_644 = "": var_664 = "": var_684 = "": var_6B4 = "": var_6A4 = "": var_6D4 = "": var_704 = "": var_714 = "": var_724 = "": var_744 = "": var_DC = "": var_CC = "": var_EC = "": var_11C = "": var_FC = "": var_13C = "": var_15C = "": var_17C = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = "": var_244 = "": var_254 = "": var_274 = "": var_2C4 = "": var_294 = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_364 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3D4 = "": var_3F4 = "": var_444 = ""
  loc_C62707: Branch loc_C62E4A
  loc_C6270A: LitStr "Municipalidad de Guaymallén"
  loc_C6270D: LitStr "Municipalidad de San Martin"
  loc_C62710: EqStr
  loc_C62712: BranchF loc_C62972
  loc_C62715: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C62718: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C6271B: ConcatStr
  loc_C6271C: CVarStr var_DC
  loc_C6271F: FLdRfVar var_8C
  loc_C62722: CVarRef
  loc_C62727: FLdRfVar var_CC
  loc_C6272A: ImpAdCallFPR4  = Year()
  loc_C6272F: FLdRfVar var_CC
  loc_C62732: ConcatVar var_EC
  loc_C62736: LitVarStr var_BC, " WHERE detapago.FeenAcpa = '"
  loc_C6273B: ConcatVar var_FC
  loc_C6273F: LitI4 1
  loc_C62744: LitI4 1
  loc_C62749: LitVarStr var_12C, "yyyy-mm-dd"
  loc_C6274E: FStVarCopyObj var_11C
  loc_C62751: FLdRfVar var_11C
  loc_C62754: FLdRfVar var_8C
  loc_C62757: CVarRef
  loc_C6275C: ImpAdCallI2 Format$(, )
  loc_C62761: CVarStr var_13C
  loc_C62764: ConcatVar var_15C
  loc_C62768: LitVarStr var_14C, "' AND detapago.NumeAcpa = "
  loc_C6276D: ConcatVar var_17C
  loc_C62771: FLdI2 arg_10
  loc_C62774: CVarI2 var_16C
  loc_C62777: ConcatVar var_1C4
  loc_C6277B: LitVarStr var_1D4, " GROUP BY TRUE;"
  loc_C62780: ConcatVar var_1E4
  loc_C62784: LitVarStr var_1F4, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, SUM(HoreBoap+HoofBoap+HoofBoapDema+MoreBoap+MoofBoap+MoofBoapDema+IrecBoap+IofiBoap+TrabBoap) as TotaDepa, "
  loc_C62789: ConcatVar var_204
  loc_C6278D: LitVarStr var_214, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C62792: ConcatVar var_224
  loc_C62796: LitVarStr var_234, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C6279B: ConcatVar var_244
  loc_C6279F: FLdRfVar var_8C
  loc_C627A2: CVarRef
  loc_C627A7: FLdRfVar var_254
  loc_C627AA: ImpAdCallFPR4  = Year()
  loc_C627AF: FLdRfVar var_254
  loc_C627B2: ConcatVar var_274
  loc_C627B6: LitVarStr var_284, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_C627BB: ConcatVar var_294
  loc_C627BF: LitVarStr var_2A4, " WHERE pago.FeenAcpa = '"
  loc_C627C4: ConcatVar var_2C4
  loc_C627C8: LitI4 1
  loc_C627CD: LitI4 1
  loc_C627D2: LitVarStr var_2F4, "yyyy-mm-dd"
  loc_C627D7: FStVarCopyObj var_2D4
  loc_C627DA: FLdRfVar var_2D4
  loc_C627DD: FLdRfVar var_8C
  loc_C627E0: CVarRef
  loc_C627E5: ImpAdCallI2 Format$(, )
  loc_C627EA: CVarStr var_2E4
  loc_C627ED: ConcatVar var_304
  loc_C627F1: LitVarStr var_314, "' AND pago.NumeAcpa = "
  loc_C627F6: ConcatVar var_324
  loc_C627FA: FLdI2 arg_10
  loc_C627FD: CVarI2 var_334
  loc_C62800: ConcatVar var_344
  loc_C62804: LitVarStr var_354, " GROUP BY TRUE;"
  loc_C62809: ConcatVar var_364
  loc_C6280D: LitVarStr var_374, " INSERT INTO deta SELECT pararenta.CoimPare as CodiConc, SUM(CoadBoap+IcomBoap+ApleBoap+DefiBoap+ReseBoap) as TotaDepa, "
  loc_C62812: ConcatVar var_384
  loc_C62816: LitVarStr var_394, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C6281B: ConcatVar var_3A4
  loc_C6281F: LitVarStr var_3B4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C62824: ConcatVar var_3C4
  loc_C62828: FLdRfVar var_8C
  loc_C6282B: CVarRef
  loc_C62830: FLdRfVar var_3D4
  loc_C62833: ImpAdCallFPR4  = Year()
  loc_C62838: FLdRfVar var_3D4
  loc_C6283B: ConcatVar var_3F4
  loc_C6283F: LitVarStr var_404, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_C62844: ConcatVar var_414
  loc_C62848: LitVarStr var_424, " WHERE pago.FeenAcpa = '"
  loc_C6284D: ConcatVar var_444
  loc_C62851: LitI4 1
  loc_C62856: LitI4 1
  loc_C6285B: LitVarStr var_474, "yyyy-mm-dd"
  loc_C62860: FStVarCopyObj var_454
  loc_C62863: FLdRfVar var_454
  loc_C62866: FLdRfVar var_8C
  loc_C62869: CVarRef
  loc_C6286E: ImpAdCallI2 Format$(, )
  loc_C62873: CVarStr var_464
  loc_C62876: ConcatVar var_484
  loc_C6287A: LitVarStr var_494, "' AND pago.NumeAcpa = "
  loc_C6287F: ConcatVar var_4A4
  loc_C62883: FLdI2 arg_10
  loc_C62886: CVarI2 var_4B4
  loc_C62889: ConcatVar var_4C4
  loc_C6288D: LitVarStr var_4D4, " GROUP BY TRUE; "
  loc_C62892: ConcatVar var_4E4
  loc_C62896: LitVarStr var_4F4, " INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C6289B: ConcatVar var_504
  loc_C6289F: FLdRfVar var_8C
  loc_C628A2: CVarRef
  loc_C628A7: FLdRfVar var_524
  loc_C628AA: ImpAdCallFPR4  = Year()
  loc_C628AF: FLdRfVar var_524
  loc_C628B2: ConcatVar var_544
  loc_C628B6: LitVarStr var_534, " WHERE detapago.FeenAcpa = '"
  loc_C628BB: ConcatVar var_554
  loc_C628BF: LitI4 1
  loc_C628C4: LitI4 1
  loc_C628C9: LitVarStr var_584, "yyyy-mm-dd"
  loc_C628CE: FStVarCopyObj var_574
  loc_C628D1: FLdRfVar var_574
  loc_C628D4: FLdRfVar var_8C
  loc_C628D7: CVarRef
  loc_C628DC: ImpAdCallI2 Format$(, )
  loc_C628E1: CVarStr var_594
  loc_C628E4: ConcatVar var_5C4
  loc_C628E8: LitVarStr var_5A4, "' AND detapago.NumeAcpa = "
  loc_C628ED: ConcatVar var_5D4
  loc_C628F1: FLdI2 arg_10
  loc_C628F4: CVarI2 var_5B4
  loc_C628F7: ConcatVar var_5E4
  loc_C628FB: LitVarStr var_5F4, " GROUP BY TRUE;"
  loc_C62900: ConcatVar var_604
  loc_C62904: CStrVarVal var_180
  loc_C62908: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_C6290D: FFree1Str var_180
  loc_C62910: FFreeVar var_444 = "": var_464 = "": var_484 = "": var_4A4 = "": var_4C4 = "": var_4E4 = "": var_504 = "": var_524 = "": var_544 = "": var_574 = "": var_554 = "": var_594 = "": var_5C4 = "": var_5D4 = "": var_5E4 = "": var_604 = "": var_DC = "": var_CC = "": var_EC = "": var_11C = "": var_FC = "": var_13C = "": var_15C = "": var_17C = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = "": var_244 = "": var_254 = "": var_274 = "": var_294 = "": var_2D4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_364 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3D4 = "": var_3F4 = "": var_414 = ""
  loc_C6296F: Branch loc_C62E4A
  loc_C62972: LitStr "Municipalidad de Guaymallén"
  loc_C62975: LitStr "Municipalidad de Maipu"
  loc_C62978: EqStr
  loc_C6297A: BranchF loc_C62BDA
  loc_C6297D: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C62980: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C62983: ConcatStr
  loc_C62984: CVarStr var_DC
  loc_C62987: FLdRfVar var_8C
  loc_C6298A: CVarRef
  loc_C6298F: FLdRfVar var_CC
  loc_C62992: ImpAdCallFPR4  = Year()
  loc_C62997: FLdRfVar var_CC
  loc_C6299A: ConcatVar var_EC
  loc_C6299E: LitVarStr var_BC, " WHERE detapago.FeenAcpa = '"
  loc_C629A3: ConcatVar var_FC
  loc_C629A7: LitI4 1
  loc_C629AC: LitI4 1
  loc_C629B1: LitVarStr var_12C, "yyyy-mm-dd"
  loc_C629B6: FStVarCopyObj var_11C
  loc_C629B9: FLdRfVar var_11C
  loc_C629BC: FLdRfVar var_8C
  loc_C629BF: CVarRef
  loc_C629C4: ImpAdCallI2 Format$(, )
  loc_C629C9: CVarStr var_13C
  loc_C629CC: ConcatVar var_15C
  loc_C629D0: LitVarStr var_14C, "' AND detapago.NumeAcpa = "
  loc_C629D5: ConcatVar var_17C
  loc_C629D9: FLdI2 arg_10
  loc_C629DC: CVarI2 var_16C
  loc_C629DF: ConcatVar var_1C4
  loc_C629E3: LitVarStr var_1D4, " GROUP BY TRUE;"
  loc_C629E8: ConcatVar var_1E4
  loc_C629EC: LitVarStr var_1F4, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, SUM(HoreBoap+HoofBoap+MoreBoap+MoofBoap+IrecBoap+IofiBoap+TrabBoap) as TotaDepa, "
  loc_C629F1: ConcatVar var_204
  loc_C629F5: LitVarStr var_214, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C629FA: ConcatVar var_224
  loc_C629FE: LitVarStr var_234, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C62A03: ConcatVar var_244
  loc_C62A07: FLdRfVar var_8C
  loc_C62A0A: CVarRef
  loc_C62A0F: FLdRfVar var_254
  loc_C62A12: ImpAdCallFPR4  = Year()
  loc_C62A17: FLdRfVar var_254
  loc_C62A1A: ConcatVar var_274
  loc_C62A1E: LitVarStr var_284, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_C62A23: ConcatVar var_294
  loc_C62A27: LitVarStr var_2A4, " WHERE pago.FeenAcpa = '"
  loc_C62A2C: ConcatVar var_2C4
  loc_C62A30: LitI4 1
  loc_C62A35: LitI4 1
  loc_C62A3A: LitVarStr var_2F4, "yyyy-mm-dd"
  loc_C62A3F: FStVarCopyObj var_2D4
  loc_C62A42: FLdRfVar var_2D4
  loc_C62A45: FLdRfVar var_8C
  loc_C62A48: CVarRef
  loc_C62A4D: ImpAdCallI2 Format$(, )
  loc_C62A52: CVarStr var_2E4
  loc_C62A55: ConcatVar var_304
  loc_C62A59: LitVarStr var_314, "' AND pago.NumeAcpa = "
  loc_C62A5E: ConcatVar var_324
  loc_C62A62: FLdI2 arg_10
  loc_C62A65: CVarI2 var_334
  loc_C62A68: ConcatVar var_344
  loc_C62A6C: LitVarStr var_354, " GROUP BY TRUE;"
  loc_C62A71: ConcatVar var_364
  loc_C62A75: LitVarStr var_374, " INSERT INTO deta SELECT pararenta.CoimPare as CodiConc, SUM(ComiBoap+CoadBoap+TajuBoap+ApleBoap+DefiBoap) as TotaDepa, "
  loc_C62A7A: ConcatVar var_384
  loc_C62A7E: LitVarStr var_394, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C62A83: ConcatVar var_3A4
  loc_C62A87: LitVarStr var_3B4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C62A8C: ConcatVar var_3C4
  loc_C62A90: FLdRfVar var_8C
  loc_C62A93: CVarRef
  loc_C62A98: FLdRfVar var_3D4
  loc_C62A9B: ImpAdCallFPR4  = Year()
  loc_C62AA0: FLdRfVar var_3D4
  loc_C62AA3: ConcatVar var_3F4
  loc_C62AA7: LitVarStr var_404, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_C62AAC: ConcatVar var_414
  loc_C62AB0: LitVarStr var_424, " WHERE pago.FeenAcpa = '"
  loc_C62AB5: ConcatVar var_444
  loc_C62AB9: LitI4 1
  loc_C62ABE: LitI4 1
  loc_C62AC3: LitVarStr var_474, "yyyy-mm-dd"
  loc_C62AC8: FStVarCopyObj var_454
  loc_C62ACB: FLdRfVar var_454
  loc_C62ACE: FLdRfVar var_8C
  loc_C62AD1: CVarRef
  loc_C62AD6: ImpAdCallI2 Format$(, )
  loc_C62ADB: CVarStr var_464
  loc_C62ADE: ConcatVar var_484
  loc_C62AE2: LitVarStr var_494, "' AND pago.NumeAcpa = "
  loc_C62AE7: ConcatVar var_4A4
  loc_C62AEB: FLdI2 arg_10
  loc_C62AEE: CVarI2 var_4B4
  loc_C62AF1: ConcatVar var_4C4
  loc_C62AF5: LitVarStr var_4D4, " GROUP BY TRUE; "
  loc_C62AFA: ConcatVar var_4E4
  loc_C62AFE: LitVarStr var_4F4, " INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C62B03: ConcatVar var_504
  loc_C62B07: FLdRfVar var_8C
  loc_C62B0A: CVarRef
  loc_C62B0F: FLdRfVar var_524
  loc_C62B12: ImpAdCallFPR4  = Year()
  loc_C62B17: FLdRfVar var_524
  loc_C62B1A: ConcatVar var_544
  loc_C62B1E: LitVarStr var_534, " WHERE detapago.FeenAcpa = '"
  loc_C62B23: ConcatVar var_554
  loc_C62B27: LitI4 1
  loc_C62B2C: LitI4 1
  loc_C62B31: LitVarStr var_584, "yyyy-mm-dd"
  loc_C62B36: FStVarCopyObj var_574
  loc_C62B39: FLdRfVar var_574
  loc_C62B3C: FLdRfVar var_8C
  loc_C62B3F: CVarRef
  loc_C62B44: ImpAdCallI2 Format$(, )
  loc_C62B49: CVarStr var_594
  loc_C62B4C: ConcatVar var_5C4
  loc_C62B50: LitVarStr var_5A4, "' AND detapago.NumeAcpa = "
  loc_C62B55: ConcatVar var_5D4
  loc_C62B59: FLdI2 arg_10
  loc_C62B5C: CVarI2 var_5B4
  loc_C62B5F: ConcatVar var_5E4
  loc_C62B63: LitVarStr var_5F4, " GROUP BY TRUE;"
  loc_C62B68: ConcatVar var_604
  loc_C62B6C: CStrVarVal var_180
  loc_C62B70: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_C62B75: FFree1Str var_180
  loc_C62B78: FFreeVar var_444 = "": var_464 = "": var_484 = "": var_4A4 = "": var_4C4 = "": var_4E4 = "": var_504 = "": var_524 = "": var_544 = "": var_574 = "": var_554 = "": var_594 = "": var_5C4 = "": var_5D4 = "": var_5E4 = "": var_604 = "": var_DC = "": var_CC = "": var_EC = "": var_11C = "": var_FC = "": var_13C = "": var_15C = "": var_17C = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = "": var_244 = "": var_254 = "": var_274 = "": var_294 = "": var_2D4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_364 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3D4 = "": var_3F4 = "": var_414 = ""
  loc_C62BD7: Branch loc_C62E4A
  loc_C62BDA: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa,"
  loc_C62BDD: LitStr " FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C62BE0: ConcatStr
  loc_C62BE1: FStStrNoPop var_180
  loc_C62BE4: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C62BE7: ConcatStr
  loc_C62BE8: CVarStr var_DC
  loc_C62BEB: FLdRfVar var_8C
  loc_C62BEE: CVarRef
  loc_C62BF3: FLdRfVar var_CC
  loc_C62BF6: ImpAdCallFPR4  = Year()
  loc_C62BFB: FLdRfVar var_CC
  loc_C62BFE: ConcatVar var_EC
  loc_C62C02: LitVarStr var_BC, " WHERE detapago.FeenAcpa = '"
  loc_C62C07: ConcatVar var_FC
  loc_C62C0B: LitI4 1
  loc_C62C10: LitI4 1
  loc_C62C15: LitVarStr var_12C, "yyyy-mm-dd"
  loc_C62C1A: FStVarCopyObj var_11C
  loc_C62C1D: FLdRfVar var_11C
  loc_C62C20: FLdRfVar var_8C
  loc_C62C23: CVarRef
  loc_C62C28: ImpAdCallI2 Format$(, )
  loc_C62C2D: CVarStr var_13C
  loc_C62C30: ConcatVar var_15C
  loc_C62C34: LitVarStr var_14C, "' AND detapago.NumeAcpa = "
  loc_C62C39: ConcatVar var_17C
  loc_C62C3D: FLdI2 arg_10
  loc_C62C40: CVarI2 var_16C
  loc_C62C43: ConcatVar var_1C4
  loc_C62C47: LitVarStr var_1D4, " GROUP BY TRUE;"
  loc_C62C4C: ConcatVar var_1E4
  loc_C62C50: LitVarStr var_1F4, " INSERT INTO deta SELECT pararenta.CoadPare as CodiConc, sum(CoadBoap) as TotaDepa, "
  loc_C62C55: ConcatVar var_204
  loc_C62C59: LitVarStr var_214, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C62C5E: ConcatVar var_224
  loc_C62C62: LitVarStr var_234, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C62C67: ConcatVar var_244
  loc_C62C6B: FLdRfVar var_8C
  loc_C62C6E: CVarRef
  loc_C62C73: FLdRfVar var_254
  loc_C62C76: ImpAdCallFPR4  = Year()
  loc_C62C7B: FLdRfVar var_254
  loc_C62C7E: ConcatVar var_274
  loc_C62C82: LitVarStr var_284, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_C62C87: ConcatVar var_294
  loc_C62C8B: LitVarStr var_2A4, " WHERE pago.FeenAcpa = '"
  loc_C62C90: ConcatVar var_2C4
  loc_C62C94: LitI4 1
  loc_C62C99: LitI4 1
  loc_C62C9E: LitVarStr var_2F4, "yyyy-mm-dd"
  loc_C62CA3: FStVarCopyObj var_2D4
  loc_C62CA6: FLdRfVar var_2D4
  loc_C62CA9: FLdRfVar var_8C
  loc_C62CAC: CVarRef
  loc_C62CB1: ImpAdCallI2 Format$(, )
  loc_C62CB6: CVarStr var_2E4
  loc_C62CB9: ConcatVar var_304
  loc_C62CBD: LitVarStr var_314, "' AND pago.NumeAcpa = "
  loc_C62CC2: ConcatVar var_324
  loc_C62CC6: FLdI2 arg_10
  loc_C62CC9: CVarI2 var_334
  loc_C62CCC: ConcatVar var_344
  loc_C62CD0: LitVarStr var_354, " GROUP BY TRUE;"
  loc_C62CD5: ConcatVar var_364
  loc_C62CD9: LitVarStr var_374, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, sum(ApleBoap+DefiBoap+ReseBoap+HoreBoap+HoofBoap+MoreBoap+MoofBoap) as TotaDepa, "
  loc_C62CDE: ConcatVar var_384
  loc_C62CE2: LitVarStr var_394, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C62CE7: ConcatVar var_3A4
  loc_C62CEB: LitVarStr var_3B4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C62CF0: ConcatVar var_3C4
  loc_C62CF4: FLdRfVar var_8C
  loc_C62CF7: CVarRef
  loc_C62CFC: FLdRfVar var_3D4
  loc_C62CFF: ImpAdCallFPR4  = Year()
  loc_C62D04: FLdRfVar var_3D4
  loc_C62D07: ConcatVar var_3F4
  loc_C62D0B: LitVarStr var_404, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_C62D10: ConcatVar var_414
  loc_C62D14: LitVarStr var_424, " WHERE pago.FeenAcpa = '"
  loc_C62D19: ConcatVar var_444
  loc_C62D1D: LitI4 1
  loc_C62D22: LitI4 1
  loc_C62D27: LitVarStr var_474, "yyyy-mm-dd"
  loc_C62D2C: FStVarCopyObj var_454
  loc_C62D2F: FLdRfVar var_454
  loc_C62D32: FLdRfVar var_8C
  loc_C62D35: CVarRef
  loc_C62D3A: ImpAdCallI2 Format$(, )
  loc_C62D3F: CVarStr var_464
  loc_C62D42: ConcatVar var_484
  loc_C62D46: LitVarStr var_494, "' AND pago.NumeAcpa = "
  loc_C62D4B: ConcatVar var_4A4
  loc_C62D4F: FLdI2 arg_10
  loc_C62D52: CVarI2 var_4B4
  loc_C62D55: ConcatVar var_4C4
  loc_C62D59: LitVarStr var_4D4, " GROUP BY TRUE;"
  loc_C62D5E: ConcatVar var_4E4
  loc_C62D62: LitVarStr var_4F4, " INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa "
  loc_C62D67: ConcatVar var_504
  loc_C62D6B: LitVarStr var_514, " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C62D70: ConcatVar var_524
  loc_C62D74: FLdRfVar var_8C
  loc_C62D77: CVarRef
  loc_C62D7C: FLdRfVar var_544
  loc_C62D7F: ImpAdCallFPR4  = Year()
  loc_C62D84: FLdRfVar var_544
  loc_C62D87: ConcatVar var_554
  loc_C62D8B: LitVarStr var_564, " WHERE detapago.FeenAcpa = '"
  loc_C62D90: ConcatVar var_574
  loc_C62D94: LitI4 1
  loc_C62D99: LitI4 1
  loc_C62D9E: LitVarStr var_5A4, "yyyy-mm-dd"
  loc_C62DA3: FStVarCopyObj var_594
  loc_C62DA6: FLdRfVar var_594
  loc_C62DA9: FLdRfVar var_8C
  loc_C62DAC: CVarRef
  loc_C62DB1: ImpAdCallI2 Format$(, )
  loc_C62DB6: CVarStr var_5C4
  loc_C62DB9: ConcatVar var_5D4
  loc_C62DBD: LitVarStr var_5B4, "' AND detapago.NumeAcpa = "
  loc_C62DC2: ConcatVar var_5E4
  loc_C62DC6: FLdI2 arg_10
  loc_C62DC9: CVarI2 var_5F4
  loc_C62DCC: ConcatVar var_604
  loc_C62DD0: LitVarStr var_614, " GROUP BY TRUE;"
  loc_C62DD5: ConcatVar var_624
  loc_C62DD9: CStrVarVal var_190
  loc_C62DDD: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_C62DE2: FFreeStr var_180 = ""
  loc_C62DE9: FFreeVar var_444 = "": var_464 = "": var_484 = "": var_4A4 = "": var_4C4 = "": var_4E4 = "": var_504 = "": var_524 = "": var_544 = "": var_554 = "": var_594 = "": var_574 = "": var_5C4 = "": var_5D4 = "": var_5E4 = "": var_604 = "": var_624 = "": var_DC = "": var_CC = "": var_EC = "": var_11C = "": var_FC = "": var_13C = "": var_15C = "": var_17C = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = "": var_244 = "": var_254 = "": var_274 = "": var_294 = "": var_2D4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_364 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3D4 = "": var_3F4 = "": var_414 = ""
  loc_C62E4A: LitStr "SELECT IFNULL(SUM(TotaDepa),0) as TotaDepa FROM deta WHERE TotaDepa <> 0  ORDER BY CodiConc, FeenAcpa;"
  loc_C62E4D: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_C62E52: FLdRfVar var_184
  loc_C62E55: FMemLdPr
  loc_C62E5A:  = Me.RecordCount
  loc_C62E5F: ILdRf var_184
  loc_C62E62: LitI4 0
  loc_C62E67: GtI4
  loc_C62E68: BranchF loc_C62EA8
  loc_C62E6B: FLdRfVar var_CC
  loc_C62E6E: FLdRfVar var_18C
  loc_C62E71: LitVarStr var_AC, "TotaDepa"
  loc_C62E76: PopAdLdVar
  loc_C62E77: FLdRfVar var_188
  loc_C62E7A: FMemLdPr
  loc_C62E7F:  = Me.Fields
  loc_C62E84: FLdPr var_188
  loc_C62E87: from_stack_2 = Me.Item(from_stack_1)
  loc_C62E8C: FLdPr var_18C
  loc_C62E8F:  = Me.Value
  loc_C62E94: FLdRfVar var_CC
  loc_C62E97: CR4Var
  loc_C62E98: FStFPR8 var_9C
  loc_C62E9B: FFreeAd var_188 = ""
  loc_C62EA2: FFree1Var var_CC = ""
  loc_C62EA5: Branch loc_C62EAE
  loc_C62EA8: LitI2_Byte 0
  loc_C62EAA: CR8I2
  loc_C62EAB: FStFPR8 var_9C
  loc_C62EAE: FLdFPR8 var_94
  loc_C62EB1: FLdFPR8 var_9C
  loc_C62EB4: NeR8
  loc_C62EB5: BranchF loc_C62EC0
  loc_C62EB8: LitI2_Byte &HFF
  loc_C62EBA: FStI2 var_86
  loc_C62EBD: Branch loc_C62EC5
  loc_C62EC0: LitI2_Byte 0
  loc_C62EC2: FStI2 var_86
  loc_C62EC5: ExitProcI2
  loc_C62EC6: FStFPR8 var_5701
End Function

Private Function Proc_18_112_AD107C(arg_C) 'AD107C
  'Data Table: 4B72E0
  loc_AD0F8C: ILdRf arg_C
  loc_AD0F8F: FStStrCopy var_8C
  loc_AD0F92: LitStr "SELECT CuotEtga+if(AntiEtga<>0,1,0) - (count(*)+"
  loc_AD0F95: FLdUI1
  loc_AD0F99: CStrI2
  loc_AD0F9B: FStStrNoPop var_90
  loc_AD0F9E: ConcatStr
  loc_AD0F9F: FStStrNoPop var_94
  loc_AD0FA2: LitStr ") as Saldo FROM ctacte as c"
  loc_AD0FA5: ConcatStr
  loc_AD0FA6: FStStrNoPop var_98
  loc_AD0FA9: LitStr " LEFT JOIN deudvari as dv ON dv.CodiDeva = c.CuenCtct"
  loc_AD0FAC: ConcatStr
  loc_AD0FAD: FStStrNoPop var_9C
  loc_AD0FB0: LitStr " LEFT JOIN etapagas as eg ON eg.CodiEtga = dv.CodiEtga AND eg.CateEtga = dv.CateEtga AND eg.NumeEtga = dv.NumeEtga"
  loc_AD0FB3: ConcatStr
  loc_AD0FB4: FStStrNoPop var_A0
  loc_AD0FB7: LitStr " LEFT JOIN servdeva as sd ON sd.PeriOrde = "
  loc_AD0FBA: ConcatStr
  loc_AD0FBB: FStStrNoPop var_A4
  loc_AD0FBE: ImpAdLdI2 MemVar_D93036
  loc_AD0FC1: CStrUI1
  loc_AD0FC3: FStStrNoPop var_A8
  loc_AD0FC6: ConcatStr
  loc_AD0FC7: FStStrNoPop var_AC
  loc_AD0FCA: LitStr " AND sd.CodiSede = eg.CodiSede"
  loc_AD0FCD: ConcatStr
  loc_AD0FCE: FStStrNoPop var_B0
  loc_AD0FD1: LitStr " WHERE c.CodiOfic = 3 AND c.CodiConc = sd.CodiConc AND c.CuenCtct = '"
  loc_AD0FD4: ConcatStr
  loc_AD0FD5: FStStrNoPop var_B4
  loc_AD0FD8: ILdRf var_8C
  loc_AD0FDB: ConcatStr
  loc_AD0FDC: FStStrNoPop var_B8
  loc_AD0FDF: LitStr "' AND CodiTimo = 2"
  loc_AD0FE2: ConcatStr
  loc_AD0FE3: FStStrNoPop var_BC
  loc_AD0FE6: LitStr " GROUP BY c.CodiOfic, c.CuenCtct"
  loc_AD0FE9: ConcatStr
  loc_AD0FEA: FStStrNoPop var_C0
  loc_AD0FED: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AD0FF2: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AD100F: FLdRfVar var_C4
  loc_AD1012: FMemLdPr
  loc_AD1017:  = Me.RecordCount
  loc_AD101C: ILdRf var_C4
  loc_AD101F: LitI4 0
  loc_AD1024: GtI4
  loc_AD1025: BranchF loc_AD1072
  loc_AD1028: FLdRfVar var_EC
  loc_AD102B: FLdRfVar var_DC
  loc_AD102E: LitVarStr var_D8, "Saldo"
  loc_AD1033: PopAdLdVar
  loc_AD1034: FLdRfVar var_C8
  loc_AD1037: FMemLdPr
  loc_AD103C:  = Me.Fields
  loc_AD1041: FLdPr var_C8
  loc_AD1044: from_stack_2 = Me.Item(from_stack_1)
  loc_AD1049: FLdPr var_DC
  loc_AD104C:  = Me.Value
  loc_AD1051: FLdRfVar var_EC
  loc_AD1054: LitVarI2 var_FC, 0
  loc_AD1059: HardType
  loc_AD105A: GtVarBool
  loc_AD105C: FFreeAd var_C8 = ""
  loc_AD1063: FFree1Var var_EC = ""
  loc_AD1066: BranchF loc_AD106F
  loc_AD1069: LitStr "La cuenta tiene cuotas impagas."
  loc_AD106C: FStStrCopy var_88
  loc_AD106F: Branch loc_AD1078
  loc_AD1072: LitStr "La cuenta no registra ningún movimiento en la cuenta corriente. Reintente..."
  loc_AD1075: FStStrCopy var_88
  loc_AD1078: ExitProc
  loc_AD1079: LitStr " detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, sum(CapiDepa) as CapiDepa, sum(DecaDepa) as DecaDepa, sum(ExenDepa) as ExenDepa"
End Function

Private Function Proc_18_113_ADF8EC(arg_C, arg_10) 'ADF8EC
  'Data Table: 4B72E0
  loc_ADF7C4: LitI2_Byte 0
  loc_ADF7C6: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ADF7CB: FStFPR8 var_188
  loc_ADF7CE: LitStr " SELECT * FROM boleto USE INDEX (idxboleto01)"
  loc_ADF7D1: LitStr " INNER JOIN detabole ON detabole.PeriBole = boleto.PeriBole and detabole.NumeBole = boleto.NumeBole"
  loc_ADF7D4: ConcatStr
  loc_ADF7D5: FStStrNoPop var_8C
  loc_ADF7D8: LitStr " WHERE boleto.FealBole = "
  loc_ADF7DB: ConcatStr
  loc_ADF7DC: CVarStr var_EC
  loc_ADF7DF: LitI4 1
  loc_ADF7E4: LitI4 1
  loc_ADF7E9: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_ADF7EE: FStVarCopyObj var_CC
  loc_ADF7F1: FLdRfVar var_CC
  loc_ADF7F4: FLdFPR8 var_188
  loc_ADF7F7: CVarDate var_AC
  loc_ADF7FB: FLdRfVar var_DC
  loc_ADF7FE: ImpAdCallFPR4  = Format(, )
  loc_ADF803: FLdRfVar var_DC
  loc_ADF806: ConcatVar var_FC
  loc_ADF80A: LitVarStr var_10C, " AND detabole.CodiFapa = "
  loc_ADF80F: ConcatVar var_11C
  loc_ADF813: ILdRf arg_C
  loc_ADF816: CVarI4
  loc_ADF81A: ConcatVar var_13C
  loc_ADF81E: LitVarStr var_14C, " AND detabole.CuotDefa = "
  loc_ADF823: ConcatVar var_15C
  loc_ADF827: FLdI2 arg_10
  loc_ADF82A: CVarI2 var_16C
  loc_ADF82D: ConcatVar var_17C
  loc_ADF831: CStrVarVal var_180
  loc_ADF835: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_ADF83A: FFreeStr var_8C = ""
  loc_ADF841: FFreeVar var_AC = "": var_CC = "": var_EC = "": var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = ""
  loc_ADF856: FLdRfVar var_18C
  loc_ADF859: FMemLdPr
  loc_ADF85E:  = Me.RecordCount
  loc_ADF863: ILdRf var_18C
  loc_ADF866: LitI4 0
  loc_ADF86B: GtI4
  loc_ADF86C: BranchF loc_ADF8E9
  loc_ADF86F: LitStr "La facilidad numero: "
  loc_ADF872: ILdRf arg_C
  loc_ADF875: CStrI4
  loc_ADF877: FStStrNoPop var_8C
  loc_ADF87A: ConcatStr
  loc_ADF87B: FStStrNoPop var_180
  loc_ADF87E: LitStr " y la cuota numero: "
  loc_ADF881: ConcatStr
  loc_ADF882: FStStrNoPop var_190
  loc_ADF885: FLdI2 arg_10
  loc_ADF888: CStrUI1
  loc_ADF88A: FStStrNoPop var_194
  loc_ADF88D: ConcatStr
  loc_ADF88E: FStStrNoPop var_198
  loc_ADF891: LitStr " tiene un boleto con estado: "
  loc_ADF894: ConcatStr
  loc_ADF895: CVarStr var_CC
  loc_ADF898: FLdRfVar var_AC
  loc_ADF89B: FLdRfVar var_1A0
  loc_ADF89E: LitVarStr var_9C, "EstaBole"
  loc_ADF8A3: PopAdLdVar
  loc_ADF8A4: FLdRfVar var_19C
  loc_ADF8A7: FMemLdPr
  loc_ADF8AC:  = Me.Fields
  loc_ADF8B1: FLdPr var_19C
  loc_ADF8B4: from_stack_2 = Me.Item(from_stack_1)
  loc_ADF8B9: FLdPr var_1A0
  loc_ADF8BC:  = Me.Value
  loc_ADF8C1: FLdRfVar var_AC
  loc_ADF8C4: ConcatVar var_DC
  loc_ADF8C8: CStrVarTmp
  loc_ADF8C9: FStStr var_88
  loc_ADF8CC: FFreeStr var_8C = "": var_180 = "": var_190 = "": var_194 = ""
  loc_ADF8D9: FFreeAd var_19C = ""
  loc_ADF8E0: FFreeVar var_CC = "": var_AC = ""
  loc_ADF8E9: ExitProc
End Function

Private Function Proc_18_114_AF80B4(arg_10, arg_14, arg_18, arg_1C) 'AF80B4
  'Data Table: 4B72E0
  loc_AF7F30: ILdRf arg_10
  loc_AF7F33: FStStrCopy var_8C
  loc_AF7F36: LitI2_Byte 0
  loc_AF7F38: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF7F3D: FStFPR8 var_24C
  loc_AF7F40: LitStr "SELECT boleto.PeriBole, boleto.NumeBole FROM boleto USE INDEX (idxboleto01) "
  loc_AF7F43: LitStr " INNER JOIN detabole ON detabole.PeriBole = boleto.PeriBole and detabole.NumeBole = boleto.NumeBole"
  loc_AF7F46: ConcatStr
  loc_AF7F47: FStStrNoPop var_90
  loc_AF7F4A: LitStr " WHERE boleto.FealBole = "
  loc_AF7F4D: ConcatStr
  loc_AF7F4E: CVarStr var_F0
  loc_AF7F51: LitI4 1
  loc_AF7F56: LitI4 1
  loc_AF7F5B: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_AF7F60: FStVarCopyObj var_D0
  loc_AF7F63: FLdRfVar var_D0
  loc_AF7F66: FLdFPR8 var_24C
  loc_AF7F69: CVarDate var_B0
  loc_AF7F6D: FLdRfVar var_E0
  loc_AF7F70: ImpAdCallFPR4  = Format(, )
  loc_AF7F75: FLdRfVar var_E0
  loc_AF7F78: ConcatVar var_100
  loc_AF7F7C: LitVarStr var_110, " AND detabole.CodiOfic = "
  loc_AF7F81: ConcatVar var_120
  loc_AF7F85: FLdUI1
  loc_AF7F89: CVarUI1
  loc_AF7F8D: ConcatVar var_140
  loc_AF7F91: LitVarStr var_150, " AND detabole.CuenCtct = '"
  loc_AF7F96: ConcatVar var_160
  loc_AF7F9A: ILdRf var_8C
  loc_AF7F9D: CVarStr var_170
  loc_AF7FA0: ConcatVar var_180
  loc_AF7FA4: LitVarStr var_190, "' AND detabole.PeriCtct = "
  loc_AF7FA9: ConcatVar var_1A0
  loc_AF7FAD: FLdI2 arg_14
  loc_AF7FB0: CVarI2 var_1B0
  loc_AF7FB3: ConcatVar var_1C0
  loc_AF7FB7: LitVarStr var_1D0, " AND detabole.BimeCtct = "
  loc_AF7FBC: ConcatVar var_1E0
  loc_AF7FC0: FLdI2 arg_18
  loc_AF7FC3: CVarI2 var_1F0
  loc_AF7FC6: ConcatVar var_200
  loc_AF7FCA: LitVarStr var_210, " AND detabole.NumeCtct = "
  loc_AF7FCF: ConcatVar var_220
  loc_AF7FD3: ILdRf arg_1C
  loc_AF7FD6: CVarI4
  loc_AF7FDA: ConcatVar var_240
  loc_AF7FDE: CStrVarVal var_244
  loc_AF7FE2: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AF7FE7: FFreeStr var_90 = ""
  loc_AF7FEE: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_220 = ""
  loc_AF800F: FLdRfVar var_250
  loc_AF8012: FMemLdPr
  loc_AF8017:  = Me.RecordCount
  loc_AF801C: ILdRf var_250
  loc_AF801F: LitI4 1
  loc_AF8024: GeI4
  loc_AF8025: BranchF loc_AF80B2
  loc_AF8028: LitVarStr var_C0, "Para la deuda seleccionada ya se emitio un boleto: "
  loc_AF802D: FLdRfVar var_B0
  loc_AF8030: FLdRfVar var_258
  loc_AF8033: LitVarStr var_A0, "PeriBole"
  loc_AF8038: PopAdLdVar
  loc_AF8039: FLdRfVar var_254
  loc_AF803C: FMemLdPr
  loc_AF8041:  = Me.Fields
  loc_AF8046: FLdPr var_254
  loc_AF8049: from_stack_2 = Me.Item(from_stack_1)
  loc_AF804E: FLdPr var_258
  loc_AF8051:  = Me.Value
  loc_AF8056: FLdRfVar var_B0
  loc_AF8059: ConcatVar var_D0
  loc_AF805D: LitVarStr var_110, "-"
  loc_AF8062: ConcatVar var_E0
  loc_AF8066: FLdRfVar var_F0
  loc_AF8069: FLdRfVar var_260
  loc_AF806C: LitVarStr var_130, "NumeBole"
  loc_AF8071: PopAdLdVar
  loc_AF8072: FLdRfVar var_25C
  loc_AF8075: FMemLdPr
  loc_AF807A:  = Me.Fields
  loc_AF807F: FLdPr var_25C
  loc_AF8082: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8087: FLdPr var_260
  loc_AF808A:  = Me.Value
  loc_AF808F: FLdRfVar var_F0
  loc_AF8092: ConcatVar var_100
  loc_AF8096: CStrVarTmp
  loc_AF8097: FStStr var_88
  loc_AF809A: FFreeAd var_254 = "": var_258 = "": var_25C = ""
  loc_AF80A5: FFreeVar var_B0 = "": var_D0 = "": var_E0 = "": var_F0 = ""
  loc_AF80B2: ExitProc
End Function

Private Function Proc_18_115_AEFEE0(arg_C, arg_10, arg_14, arg_18) 'AEFEE0
  'Data Table: 4B72E0
  loc_AEFD6C: ILdRf arg_C
  loc_AEFD6F: FStStrCopy var_8C
  loc_AEFD72: ILdRf arg_10
  loc_AEFD75: FStStrCopy var_90
  loc_AEFD78: ILdRf arg_14
  loc_AEFD7B: FStStrCopy var_94
  loc_AEFD7E: ILdRf arg_18
  loc_AEFD81: FStStrCopy var_98
  loc_AEFD84: LitI2_Byte 0
  loc_AEFD86: LitI2_Byte 0
  loc_AEFD88: ILdRf var_8C
  loc_AEFD8B: LitStr " el boleto"
  loc_AEFD8E: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AEFD93: FStStr var_88
  loc_AEFD96: ILdRf var_88
  loc_AEFD99: LitStr vbNullString
  loc_AEFD9C: NeStr
  loc_AEFD9E: BranchF loc_AEFDA2
  loc_AEFDA1: ExitProc
  loc_AEFDA2: LitI2_Byte 0
  loc_AEFDA4: LitI2_Byte 0
  loc_AEFDA6: ILdRf var_90
  loc_AEFDA9: LitStr " el periodo del boleto"
  loc_AEFDAC: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AEFDB1: FStStr var_88
  loc_AEFDB4: ILdRf var_88
  loc_AEFDB7: LitStr vbNullString
  loc_AEFDBA: NeStr
  loc_AEFDBC: BranchF loc_AEFDC0
  loc_AEFDBF: ExitProc
  loc_AEFDC0: LitStr "SELECT FealBole FROM boleto WHERE PeriBole = "
  loc_AEFDC3: ILdRf var_90
  loc_AEFDC6: ConcatStr
  loc_AEFDC7: FStStrNoPop var_9C
  loc_AEFDCA: LitStr " AND NumeBole = "
  loc_AEFDCD: ConcatStr
  loc_AEFDCE: FStStrNoPop var_A0
  loc_AEFDD1: ILdRf var_8C
  loc_AEFDD4: ConcatStr
  loc_AEFDD5: CVarStr var_108
  loc_AEFDD8: LitVarStr var_D8, vbNullString
  loc_AEFDDD: FStVarCopyObj var_E8
  loc_AEFDE0: FLdRfVar var_E8
  loc_AEFDE3: LitStr " AND CodiOfic = "
  loc_AEFDE6: ILdRf var_94
  loc_AEFDE9: ConcatStr
  loc_AEFDEA: FStStrNoPop var_A4
  loc_AEFDED: LitStr " AND CuenCtct = "
  loc_AEFDF0: ConcatStr
  loc_AEFDF1: FStStrNoPop var_A8
  loc_AEFDF4: ILdRf var_98
  loc_AEFDF7: ConcatStr
  loc_AEFDF8: CVarStr var_C8
  loc_AEFDFB: ILdRf var_94
  loc_AEFDFE: LitStr vbNullString
  loc_AEFE01: NeStr
  loc_AEFE03: ILdRf var_98
  loc_AEFE06: LitStr vbNullString
  loc_AEFE09: NeStr
  loc_AEFE0B: AndI4
  loc_AEFE0C: CVarBoolI2 var_B8
  loc_AEFE10: FLdRfVar var_F8
  loc_AEFE13: ImpAdCallFPR4  = IIf(, , )
  loc_AEFE18: FLdRfVar var_F8
  loc_AEFE1B: ConcatVar var_118
  loc_AEFE1F: CStrVarVal var_11C
  loc_AEFE23: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AEFE28: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AEFE35: FFreeVar var_B8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_F8 = ""
  loc_AEFE44: FLdRfVar var_120
  loc_AEFE47: FMemLdPr
  loc_AEFE4C:  = Me.RecordCount
  loc_AEFE51: ILdRf var_120
  loc_AEFE54: LitI4 0
  loc_AEFE59: GtI4
  loc_AEFE5A: BranchF loc_AEFE66
  loc_AEFE5D: LitStr vbNullString
  loc_AEFE60: FStStrCopy var_88
  loc_AEFE63: Branch loc_AEFEDF
  loc_AEFE66: ILdRf var_94
  loc_AEFE69: LitStr vbNullString
  loc_AEFE6C: NeStr
  loc_AEFE6E: ILdRf var_98
  loc_AEFE71: LitStr vbNullString
  loc_AEFE74: NeStr
  loc_AEFE76: AndI4
  loc_AEFE77: BranchF loc_AEFEB7
  loc_AEFE7A: LitStr "El boleto "
  loc_AEFE7D: ILdRf var_8C
  loc_AEFE80: ConcatStr
  loc_AEFE81: FStStrNoPop var_9C
  loc_AEFE84: LitStr "/"
  loc_AEFE87: ConcatStr
  loc_AEFE88: FStStrNoPop var_A0
  loc_AEFE8B: ILdRf var_90
  loc_AEFE8E: ConcatStr
  loc_AEFE8F: FStStrNoPop var_A4
  loc_AEFE92: LitStr " asociado a la cuenta "
  loc_AEFE95: ConcatStr
  loc_AEFE96: FStStrNoPop var_A8
  loc_AEFE99: ILdRf var_98
  loc_AEFE9C: ConcatStr
  loc_AEFE9D: FStStrNoPop var_11C
  loc_AEFEA0: LitStr " no existe."
  loc_AEFEA3: ConcatStr
  loc_AEFEA4: FStStr var_88
  loc_AEFEA7: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AEFEB4: Branch loc_AEFEDF
  loc_AEFEB7: LitStr "El boleto "
  loc_AEFEBA: ILdRf var_8C
  loc_AEFEBD: ConcatStr
  loc_AEFEBE: FStStrNoPop var_9C
  loc_AEFEC1: LitStr "/"
  loc_AEFEC4: ConcatStr
  loc_AEFEC5: FStStrNoPop var_A0
  loc_AEFEC8: ILdRf var_90
  loc_AEFECB: ConcatStr
  loc_AEFECC: FStStrNoPop var_A4
  loc_AEFECF: LitStr " no existe."
  loc_AEFED2: ConcatStr
  loc_AEFED3: FStStr var_88
  loc_AEFED6: FFreeStr var_9C = "": var_A0 = ""
  loc_AEFEDF: ExitProc
End Function

Private Function Proc_18_116_A6F73C(arg_C) 'A6F73C
  'Data Table: 4B72E0
  loc_A6F6CC: ILdRf arg_C
  loc_A6F6CF: FStStrCopy var_8C
  loc_A6F6D2: LitI2_Byte 0
  loc_A6F6D4: LitI2_Byte 0
  loc_A6F6D6: ILdRf var_8C
  loc_A6F6D9: LitStr " el comercio"
  loc_A6F6DC: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A6F6E1: FStStr var_88
  loc_A6F6E4: ILdRf var_88
  loc_A6F6E7: LitStr vbNullString
  loc_A6F6EA: NeStr
  loc_A6F6EC: BranchF loc_A6F6F0
  loc_A6F6EF: ExitProc
  loc_A6F6F0: LitStr "SELECT CodiCome FROM comercio WHERE CodiCome = "
  loc_A6F6F3: ILdRf var_8C
  loc_A6F6F6: ConcatStr
  loc_A6F6F7: FStStrNoPop var_90
  loc_A6F6FA: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A6F6FF: FFree1Str var_90
  loc_A6F702: FLdRfVar var_94
  loc_A6F705: FMemLdPr
  loc_A6F70A:  = Me.RecordCount
  loc_A6F70F: ILdRf var_94
  loc_A6F712: LitI4 0
  loc_A6F717: GtI4
  loc_A6F718: BranchF loc_A6F724
  loc_A6F71B: LitStr vbNullString
  loc_A6F71E: FStStrCopy var_88
  loc_A6F721: Branch loc_A6F738
  loc_A6F724: LitStr "El comercio "
  loc_A6F727: ILdRf var_8C
  loc_A6F72A: ConcatStr
  loc_A6F72B: FStStrNoPop var_90
  loc_A6F72E: LitStr " no existe. Debe ingresar un número de comercio válido."
  loc_A6F731: ConcatStr
  loc_A6F732: FStStr var_88
  loc_A6F735: FFree1Str var_90
  loc_A6F738: ExitProc
End Function

Private Function Proc_18_117_A5E6FC(arg_C) 'A5E6FC
  'Data Table: 4B72E0
  loc_A5E6A0: ILdRf arg_C
  loc_A5E6A3: FStStrCopy var_8C
  loc_A5E6A6: LitStr "SELECT CodiCome FROM comercio WHERE CodiCome = "
  loc_A5E6A9: ILdRf var_8C
  loc_A5E6AC: ConcatStr
  loc_A5E6AD: FStStrNoPop var_90
  loc_A5E6B0: LitStr " AND CodiEsco = 1"
  loc_A5E6B3: ConcatStr
  loc_A5E6B4: FStStrNoPop var_94
  loc_A5E6B7: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A5E6BC: FFreeStr var_90 = ""
  loc_A5E6C3: FLdRfVar var_98
  loc_A5E6C6: FMemLdPr
  loc_A5E6CB:  = Me.RecordCount
  loc_A5E6D0: ILdRf var_98
  loc_A5E6D3: LitI4 0
  loc_A5E6D8: GtI4
  loc_A5E6D9: BranchF loc_A5E6E5
  loc_A5E6DC: LitStr vbNullString
  loc_A5E6DF: FStStrCopy var_88
  loc_A5E6E2: Branch loc_A5E6F9
  loc_A5E6E5: LitStr "El comercio "
  loc_A5E6E8: ILdRf var_8C
  loc_A5E6EB: ConcatStr
  loc_A5E6EC: FStStrNoPop var_90
  loc_A5E6EF: LitStr " NO ESTA ACTIVO."
  loc_A5E6F2: ConcatStr
  loc_A5E6F3: FStStr var_88
  loc_A5E6F6: FFree1Str var_90
  loc_A5E6F9: ExitProc
End Function

Private Function Proc_18_118_B1A424(arg_10) 'B1A424
  'Data Table: 4B72E0
  loc_B1A1E0: ILdRf arg_10
  loc_B1A1E3: FStStrCopy var_8C
  loc_B1A1E6: LitI2_Byte 0
  loc_B1A1E8: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B1A1ED: FStFPR8 var_108
  loc_B1A1F0: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_ctacte; CREATE TEMPORARY TABLE tmp_ctacte"
  loc_B1A1F3: LitStr " SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, DebeCtct, CredCtct FROM ctacte "
  loc_B1A1F6: ConcatStr
  loc_B1A1F7: FStStrNoPop var_90
  loc_B1A1FA: LitStr " USE INDEX (idxctacte08)"
  loc_B1A1FD: ConcatStr
  loc_B1A1FE: FStStrNoPop var_94
  loc_B1A201: LitStr " WHERE CodiOfic = "
  loc_B1A204: ConcatStr
  loc_B1A205: FStStrNoPop var_98
  loc_B1A208: FLdUI1
  loc_B1A20C: CStrI2
  loc_B1A20E: FStStrNoPop var_9C
  loc_B1A211: ConcatStr
  loc_B1A212: FStStrNoPop var_A0
  loc_B1A215: LitStr " AND CuenCtct = '"
  loc_B1A218: ConcatStr
  loc_B1A219: FStStrNoPop var_A4
  loc_B1A21C: ILdRf var_8C
  loc_B1A21F: ConcatStr
  loc_B1A220: FStStrNoPop var_A8
  loc_B1A223: LitStr "'"
  loc_B1A226: ConcatStr
  loc_B1A227: FStStrNoPop var_AC
  loc_B1A22A: LitStr " AND MoviCtct = 1 "
  loc_B1A22D: ConcatStr
  loc_B1A22E: FStStrNoPop var_B0
  loc_B1A231: LitStr " AND FeveCtct < "
  loc_B1A234: ConcatStr
  loc_B1A235: FStStrNoPop var_F4
  loc_B1A238: LitI4 1
  loc_B1A23D: LitI4 1
  loc_B1A242: LitVarStr var_E0, "'yyyy-mm-dd'"
  loc_B1A247: FStVarCopyObj var_F0
  loc_B1A24A: FLdRfVar var_F0
  loc_B1A24D: FLdFPR8 var_108
  loc_B1A250: CVarDate var_D0
  loc_B1A254: ImpAdCallI2 Format$(, )
  loc_B1A259: FStStrNoPop var_F8
  loc_B1A25C: ConcatStr
  loc_B1A25D: FStStrNoPop var_FC
  loc_B1A260: LitStr " ORDER BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_B1A263: ConcatStr
  loc_B1A264: FStStrNoPop var_100
  loc_B1A267: ImpAdCallFPR4 Proc_18_1_A1684C()
  loc_B1A26C: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_B1A289: FFreeVar var_D0 = ""
  loc_B1A290: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_ctacte_faci; CREATE TEMPORARY TABLE tmp_ctacte_faci"
  loc_B1A293: LitStr " SELECT ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeApre, ctacte.codifapa, SUM(ctacte.DebeCtct)-SUM(ctacte.CredCtct) as saldo FROM ctacte"
  loc_B1A296: ConcatStr
  loc_B1A297: FStStrNoPop var_90
  loc_B1A29A: LitStr " INNER JOIN tmp_ctacte ON tmp_ctacte.CodiOfic = ctacte.CodiOfic AND tmp_ctacte.CuenCtct = ctacte.CuenCtct"
  loc_B1A29D: ConcatStr
  loc_B1A29E: FStStrNoPop var_94
  loc_B1A2A1: LitStr " AND tmp_ctacte.PeriCtct = ctacte.PeriCtct and tmp_ctacte.BimeCtct = ctacte.BimeCtct"
  loc_B1A2A4: ConcatStr
  loc_B1A2A5: FStStrNoPop var_98
  loc_B1A2A8: LitStr " AND tmp_ctacte.NumeCtct = ctacte.NumeCtct"
  loc_B1A2AB: ConcatStr
  loc_B1A2AC: FStStrNoPop var_9C
  loc_B1A2AF: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.NumeCtct"
  loc_B1A2B2: ConcatStr
  loc_B1A2B3: FStStrNoPop var_A0
  loc_B1A2B6: LitStr " having saldo > 0;"
  loc_B1A2B9: ConcatStr
  loc_B1A2BA: FStStrNoPop var_A4
  loc_B1A2BD: ImpAdCallFPR4 Proc_18_1_A1684C()
  loc_B1A2C2: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_B1A2D1: LitStr " SELECT * FROM tmp_ctacte_faci"
  loc_B1A2D4: LitStr " WHERE (CodiFapa <> 0 OR NumeApre <> 0) "
  loc_B1A2D7: ConcatStr
  loc_B1A2D8: FStStrNoPop var_90
  loc_B1A2DB: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_B1A2E0: FFree1Str var_90
  loc_B1A2E3: FLdRfVar var_10C
  loc_B1A2E6: FMemLdPr
  loc_B1A2EB:  = Me.RecordCount
  loc_B1A2F0: ILdRf var_10C
  loc_B1A2F3: LitI4 0
  loc_B1A2F8: GtI4
  loc_B1A2F9: BranchF loc_B1A422
  loc_B1A2FC: FLdRfVar var_D0
  loc_B1A2FF: FLdRfVar var_114
  loc_B1A302: LitVarStr var_C0, "CodiFapa"
  loc_B1A307: PopAdLdVar
  loc_B1A308: FLdRfVar var_110
  loc_B1A30B: FMemLdPr
  loc_B1A310:  = Me.Fields
  loc_B1A315: FLdPr var_110
  loc_B1A318: from_stack_2 = Me.Item(from_stack_1)
  loc_B1A31D: FLdPr var_114
  loc_B1A320:  = Me.Value
  loc_B1A325: FLdRfVar var_D0
  loc_B1A328: FnCLngVar
  loc_B1A32A: LitI4 0
  loc_B1A32F: GtI4
  loc_B1A330: FFreeAd var_110 = ""
  loc_B1A337: FFree1Var var_D0 = ""
  loc_B1A33A: BranchF loc_B1A38F
  loc_B1A33D: LitVarStr var_E0, "La cuenta corriente tiene la facilidad numero: "
  loc_B1A342: FLdRfVar var_D0
  loc_B1A345: FLdRfVar var_114
  loc_B1A348: LitVarStr var_C0, "CodiFapa"
  loc_B1A34D: PopAdLdVar
  loc_B1A34E: FLdRfVar var_110
  loc_B1A351: FMemLdPr
  loc_B1A356:  = Me.Fields
  loc_B1A35B: FLdPr var_110
  loc_B1A35E: from_stack_2 = Me.Item(from_stack_1)
  loc_B1A363: FLdPr var_114
  loc_B1A366:  = Me.Value
  loc_B1A36B: FLdRfVar var_D0
  loc_B1A36E: ConcatVar var_F0
  loc_B1A372: LitVarStr var_124, " tiene que dar de baja la facilidad para realizar el prorrateo de deuda "
  loc_B1A377: ConcatVar var_134
  loc_B1A37B: CStrVarTmp
  loc_B1A37C: FStStr var_88
  loc_B1A37F: FFreeAd var_110 = ""
  loc_B1A386: FFreeVar var_D0 = "": var_F0 = ""
  loc_B1A38F: FLdRfVar var_D0
  loc_B1A392: FLdRfVar var_114
  loc_B1A395: LitVarStr var_C0, "NumeApre"
  loc_B1A39A: PopAdLdVar
  loc_B1A39B: FLdRfVar var_110
  loc_B1A39E: FMemLdPr
  loc_B1A3A3:  = Me.Fields
  loc_B1A3A8: FLdPr var_110
  loc_B1A3AB: from_stack_2 = Me.Item(from_stack_1)
  loc_B1A3B0: FLdPr var_114
  loc_B1A3B3:  = Me.Value
  loc_B1A3B8: FLdRfVar var_D0
  loc_B1A3BB: FnCLngVar
  loc_B1A3BD: LitI4 0
  loc_B1A3C2: GtI4
  loc_B1A3C3: FFreeAd var_110 = ""
  loc_B1A3CA: FFree1Var var_D0 = ""
  loc_B1A3CD: BranchF loc_B1A422
  loc_B1A3D0: LitVarStr var_E0, "La cuenta corriente tiene la boleta de apremio numero: "
  loc_B1A3D5: FLdRfVar var_D0
  loc_B1A3D8: FLdRfVar var_114
  loc_B1A3DB: LitVarStr var_C0, "NumeApre"
  loc_B1A3E0: PopAdLdVar
  loc_B1A3E1: FLdRfVar var_110
  loc_B1A3E4: FMemLdPr
  loc_B1A3E9:  = Me.Fields
  loc_B1A3EE: FLdPr var_110
  loc_B1A3F1: from_stack_2 = Me.Item(from_stack_1)
  loc_B1A3F6: FLdPr var_114
  loc_B1A3F9:  = Me.Value
  loc_B1A3FE: FLdRfVar var_D0
  loc_B1A401: ConcatVar var_F0
  loc_B1A405: LitVarStr var_124, " tiene que Suspender el apremio para realizar el prorrateo de deuda "
  loc_B1A40A: ConcatVar var_134
  loc_B1A40E: CStrVarTmp
  loc_B1A40F: FStStr var_88
  loc_B1A412: FFreeAd var_110 = ""
  loc_B1A419: FFreeVar var_D0 = "": var_F0 = ""
  loc_B1A422: ExitProc
End Function

Private Function Proc_18_119_A87AD0(arg_C, arg_10) 'A87AD0
  'Data Table: 4B72E0
  loc_A87A58: LitStr "SELECT servinmu.CodiInmu FROM servinmu"
  loc_A87A5B: LitStr " INNER JOIN freninmu ON freninmu.CodiInmu = servinmu.CodiInmu"
  loc_A87A5E: ConcatStr
  loc_A87A5F: FStStrNoPop var_8C
  loc_A87A62: LitStr " AND freninmu.NumeFrin = servinmu.NumeFrin"
  loc_A87A65: ConcatStr
  loc_A87A66: FStStrNoPop var_90
  loc_A87A69: LitStr " WHERE servinmu.CodiInmu = "
  loc_A87A6C: ConcatStr
  loc_A87A6D: FStStrNoPop var_94
  loc_A87A70: ILdRf arg_C
  loc_A87A73: CStrI4
  loc_A87A75: FStStrNoPop var_98
  loc_A87A78: ConcatStr
  loc_A87A79: FStStrNoPop var_9C
  loc_A87A7C: LitStr " AND servinmu.NumeFrin = "
  loc_A87A7F: ConcatStr
  loc_A87A80: FStStrNoPop var_A0
  loc_A87A83: FLdI2 arg_10
  loc_A87A86: CStrUI1
  loc_A87A88: FStStrNoPop var_A4
  loc_A87A8B: ConcatStr
  loc_A87A8C: FStStrNoPop var_A8
  loc_A87A8F: LitStr " AND servinmu.FehaSein IS NULL"
  loc_A87A92: ConcatStr
  loc_A87A93: FStStrNoPop var_AC
  loc_A87A96: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A87A9B: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A87AB0: FLdRfVar var_B0
  loc_A87AB3: FMemLdPr
  loc_A87AB8:  = Me.RecordCount
  loc_A87ABD: ILdRf var_B0
  loc_A87AC0: LitI4 0
  loc_A87AC5: GtI4
  loc_A87AC6: BranchF loc_A87ACF
  loc_A87AC9: LitStr "El frente seleccionado se encuentra activo en los servicios. No se puede eliminar"
  loc_A87ACC: FStStrCopy var_88
  loc_A87ACF: ExitProc
End Function

Private Function Proc_18_120_ADD434(arg_C) 'ADD434
  'Data Table: 4B72E0
  loc_ADD314: ILdRf arg_C
  loc_ADD317: FStStrCopy var_8C
  loc_ADD31A: LitStr "SELECT ((CuotEtga*ImpoEtga)+AntiEtga)-sum(c.CredCtct) as Saldo FROM ctacte as c"
  loc_ADD31D: LitStr " LEFT JOIN deudvari as dv ON dv.CodiDeva = c.CuenCtct"
  loc_ADD320: ConcatStr
  loc_ADD321: FStStrNoPop var_90
  loc_ADD324: LitStr " LEFT JOIN etapagas as eg ON eg.CodiEtga = dv.CodiEtga AND eg.CateEtga = dv.CateEtga AND eg.NumeEtga = dv.NumeEtga"
  loc_ADD327: ConcatStr
  loc_ADD328: FStStrNoPop var_94
  loc_ADD32B: LitStr " LEFT JOIN servdeva as sd ON sd.PeriOrde = "
  loc_ADD32E: ConcatStr
  loc_ADD32F: FStStrNoPop var_98
  loc_ADD332: ImpAdLdI2 MemVar_D93036
  loc_ADD335: CStrUI1
  loc_ADD337: FStStrNoPop var_9C
  loc_ADD33A: ConcatStr
  loc_ADD33B: FStStrNoPop var_A0
  loc_ADD33E: LitStr " AND sd.CodiSede = eg.CodiSede"
  loc_ADD341: ConcatStr
  loc_ADD342: FStStrNoPop var_A4
  loc_ADD345: LitStr " WHERE c.CodiOfic = 3 AND c.CodiConc = sd.CodiConc AND c.CuenCtct = '"
  loc_ADD348: ConcatStr
  loc_ADD349: FStStrNoPop var_A8
  loc_ADD34C: ILdRf var_8C
  loc_ADD34F: ConcatStr
  loc_ADD350: FStStrNoPop var_AC
  loc_ADD353: LitStr "'"
  loc_ADD356: ConcatStr
  loc_ADD357: FStStrNoPop var_B0
  loc_ADD35A: LitStr " GROUP BY c.CodiOfic, c.CuenCtct"
  loc_ADD35D: ConcatStr
  loc_ADD35E: FStStrNoPop var_B4
  loc_ADD361: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_ADD366: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_ADD37D: FLdRfVar var_B8
  loc_ADD380: FMemLdPr
  loc_ADD385:  = Me.RecordCount
  loc_ADD38A: ILdRf var_B8
  loc_ADD38D: LitI4 0
  loc_ADD392: GtI4
  loc_ADD393: BranchF loc_ADD42C
  loc_ADD396: FLdRfVar var_E0
  loc_ADD399: FLdRfVar var_D0
  loc_ADD39C: LitVarStr var_CC, "Saldo"
  loc_ADD3A1: PopAdLdVar
  loc_ADD3A2: FLdRfVar var_BC
  loc_ADD3A5: FMemLdPr
  loc_ADD3AA:  = Me.Fields
  loc_ADD3AF: FLdPr var_BC
  loc_ADD3B2: from_stack_2 = Me.Item(from_stack_1)
  loc_ADD3B7: FLdPr var_D0
  loc_ADD3BA:  = Me.Value
  loc_ADD3BF: FLdRfVar var_E0
  loc_ADD3C2: LitVarI2 var_F0, 0
  loc_ADD3C7: HardType
  loc_ADD3C8: GtVarBool
  loc_ADD3CA: FFreeAd var_BC = ""
  loc_ADD3D1: FFree1Var var_E0 = ""
  loc_ADD3D4: BranchF loc_ADD429
  loc_ADD3D7: LitVarStr var_F0, "La cuenta tiene un saldo de $ "
  loc_ADD3DC: FLdRfVar var_E0
  loc_ADD3DF: FLdRfVar var_D0
  loc_ADD3E2: LitVarStr var_CC, "Saldo"
  loc_ADD3E7: PopAdLdVar
  loc_ADD3E8: FLdRfVar var_BC
  loc_ADD3EB: FMemLdPr
  loc_ADD3F0:  = Me.Fields
  loc_ADD3F5: FLdPr var_BC
  loc_ADD3F8: from_stack_2 = Me.Item(from_stack_1)
  loc_ADD3FD: FLdPr var_D0
  loc_ADD400:  = Me.Value
  loc_ADD405: FLdRfVar var_E0
  loc_ADD408: ConcatVar var_100
  loc_ADD40C: LitVarStr var_110, "."
  loc_ADD411: ConcatVar var_120
  loc_ADD415: CStrVarTmp
  loc_ADD416: FStStr var_88
  loc_ADD419: FFreeAd var_BC = ""
  loc_ADD420: FFreeVar var_E0 = "": var_100 = ""
  loc_ADD429: Branch loc_ADD432
  loc_ADD42C: LitStr "La cuenta no registra ningún movimiento en la cuenta corriente. Reintente..."
  loc_ADD42F: FStStrCopy var_88
  loc_ADD432: ExitProc
End Function

Private Function Proc_18_121_B67888(arg_C, arg_10, arg_14, arg_18) 'B67888
  'Data Table: 4B72E0
  loc_B67490: ILdRf arg_10
  loc_B67493: FStStrCopy var_90
  loc_B67496: ILdRf arg_14
  loc_B67499: FStStrCopy var_94
  loc_B6749C: ILdRf arg_18
  loc_B6749F: FStStrCopy var_98
  loc_B674A2: LitVarStr var_D8, vbNullString
  loc_B674A7: FStVarCopyObj var_E8
  loc_B674AA: FLdRfVar var_E8
  loc_B674AD: LitStr " AND ActiConc = '"
  loc_B674B0: ILdRf var_94
  loc_B674B3: ConcatStr
  loc_B674B4: FStStrNoPop var_A8
  loc_B674B7: LitStr "'"
  loc_B674BA: ConcatStr
  loc_B674BB: CVarStr var_C8
  loc_B674BE: ILdRf var_94
  loc_B674C1: LitStr vbNullString
  loc_B674C4: NeStr
  loc_B674C6: CVarBoolI2 var_B8
  loc_B674CA: FLdRfVar var_F8
  loc_B674CD: ImpAdCallFPR4  = IIf(, , )
  loc_B674D2: FLdRfVar var_F8
  loc_B674D5: CStrVarTmp
  loc_B674D6: FStStr var_9C
  loc_B674D9: FFree1Str var_A8
  loc_B674DC: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_B674E7: ILdRf var_98
  loc_B674EA: LitStr vbNullString
  loc_B674ED: NeStr
  loc_B674EF: BranchF loc_B674FD
  loc_B674F2: ILdRf var_98
  loc_B674F5: CDateStr
  loc_B674F7: FStFPR8 var_A4
  loc_B674FA: Branch loc_B67507
  loc_B674FD: LitI2_Byte 0
  loc_B674FF: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B67504: FStFPR8 var_A4
  loc_B67507: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, DebeCtct, CredCtct FROM ctacte "
  loc_B6750A: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_B6750D: ConcatStr
  loc_B6750E: CVarStr var_F8
  loc_B67511: LitI2_Byte 0
  loc_B67513: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B67518: CVarDate var_C8
  loc_B6751C: FLdRfVar var_E8
  loc_B6751F: ImpAdCallFPR4  = Year()
  loc_B67524: FLdRfVar var_E8
  loc_B67527: ConcatVar var_108
  loc_B6752B: LitVarStr var_D8, " AND concepto.CodiConc = ctacte.CodiConc"
  loc_B67530: ConcatVar var_118
  loc_B67534: LitVarStr var_128, " WHERE CodiOfic = "
  loc_B67539: ConcatVar var_138
  loc_B6753D: FLdI2 arg_C
  loc_B67540: CVarI2 var_148
  loc_B67543: ConcatVar var_158
  loc_B67547: LitVarStr var_168, " AND CuenCtct = '"
  loc_B6754C: ConcatVar var_178
  loc_B67550: ILdRf var_90
  loc_B67553: CVarStr var_188
  loc_B67556: ConcatVar var_198
  loc_B6755A: LitVarStr var_1A8, "'"
  loc_B6755F: ConcatVar var_1B8
  loc_B67563: LitVarStr var_1C8, " AND MoviCtct = 1 "
  loc_B67568: ConcatVar var_1D8
  loc_B6756C: LitVarStr var_1E8, " AND FeveCtct < '"
  loc_B67571: ConcatVar var_1F8
  loc_B67575: LitI4 1
  loc_B6757A: LitI4 1
  loc_B6757F: LitVarStr var_218, "yyyy-mm-dd"
  loc_B67584: FStVarCopyObj var_228
  loc_B67587: FLdRfVar var_228
  loc_B6758A: FLdRfVar var_A4
  loc_B6758D: CVarRef
  loc_B67592: ImpAdCallI2 Format$(, )
  loc_B67597: CVarStr var_238
  loc_B6759A: ConcatVar var_248
  loc_B6759E: LitVarStr var_258, "'"
  loc_B675A3: ConcatVar var_268
  loc_B675A7: ILdRf var_9C
  loc_B675AA: CVarStr var_278
  loc_B675AD: ConcatVar var_288
  loc_B675B1: LitVarStr var_298, " ORDER BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_B675B6: ConcatVar var_2A8
  loc_B675BA: CStrVarVal var_A8
  loc_B675BE: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_B675C3: FFree1Str var_A8
  loc_B675C6: FFreeVar var_C8 = "": var_F8 = "": var_E8 = "": var_108 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_228 = "": var_1F8 = "": var_238 = "": var_248 = "": var_268 = "": var_288 = ""
  loc_B675ED: FLdRfVar var_2AC
  loc_B675F0: FMemLdPr
  loc_B675F5:  = Me.RecordCount
  loc_B675FA: ILdRf var_2AC
  loc_B675FD: LitI4 0
  loc_B67602: GtI4
  loc_B67603: BranchF loc_B6787F
  loc_B67606: FMemLdPr
  loc_B6760B: Me.MoveFirst
  loc_B67610: FLdRfVar var_2AE
  loc_B67613: FMemLdPr
  loc_B67618:  = Me.EOF
  loc_B6761D: FLdI2 var_2AE
  loc_B67620: NotI4
  loc_B67621: BranchF loc_B6787C
  loc_B67624: LitStr "SELECT DebeCtct, CredCtct FROM ctacte "
  loc_B67627: LitStr " WHERE CodiOfic = "
  loc_B6762A: ConcatStr
  loc_B6762B: CVarStr var_E8
  loc_B6762E: FLdRfVar var_C8
  loc_B67631: FLdRfVar var_2B8
  loc_B67634: LitVarStr var_B8, "CodiOfic"
  loc_B67639: PopAdLdVar
  loc_B6763A: FLdRfVar var_2B4
  loc_B6763D: FMemLdPr
  loc_B67642:  = Me.Fields
  loc_B67647: FLdPr var_2B4
  loc_B6764A: from_stack_2 = Me.Item(from_stack_1)
  loc_B6764F: FLdPr var_2B8
  loc_B67652:  = Me.Value
  loc_B67657: FLdRfVar var_C8
  loc_B6765A: ConcatVar var_F8
  loc_B6765E: LitVarStr var_D8, " AND CuenCtct = '"
  loc_B67663: ConcatVar var_108
  loc_B67667: FLdRfVar var_118
  loc_B6766A: FLdRfVar var_2C0
  loc_B6766D: LitVarStr var_128, "CuenCtct"
  loc_B67672: PopAdLdVar
  loc_B67673: FLdRfVar var_2BC
  loc_B67676: FMemLdPr
  loc_B6767B:  = Me.Fields
  loc_B67680: FLdPr var_2BC
  loc_B67683: from_stack_2 = Me.Item(from_stack_1)
  loc_B67688: FLdPr var_2C0
  loc_B6768B:  = Me.Value
  loc_B67690: FLdRfVar var_118
  loc_B67693: ConcatVar var_138
  loc_B67697: LitVarStr var_148, "'"
  loc_B6769C: ConcatVar var_158
  loc_B676A0: LitVarStr var_168, " AND PeriCtct = "
  loc_B676A5: ConcatVar var_178
  loc_B676A9: FLdRfVar var_198
  loc_B676AC: FLdRfVar var_2C8
  loc_B676AF: LitVarStr var_188, "PeriCtct"
  loc_B676B4: PopAdLdVar
  loc_B676B5: FLdRfVar var_2C4
  loc_B676B8: FMemLdPr
  loc_B676BD:  = Me.Fields
  loc_B676C2: FLdPr var_2C4
  loc_B676C5: from_stack_2 = Me.Item(from_stack_1)
  loc_B676CA: FLdPr var_2C8
  loc_B676CD:  = Me.Value
  loc_B676D2: FLdRfVar var_198
  loc_B676D5: ConcatVar var_1B8
  loc_B676D9: LitVarStr var_1A8, " AND BimeCtct = "
  loc_B676DE: ConcatVar var_1D8
  loc_B676E2: FLdRfVar var_1F8
  loc_B676E5: FLdRfVar var_2D0
  loc_B676E8: LitVarStr var_1C8, "BimeCtct"
  loc_B676ED: PopAdLdVar
  loc_B676EE: FLdRfVar var_2CC
  loc_B676F1: FMemLdPr
  loc_B676F6:  = Me.Fields
  loc_B676FB: FLdPr var_2CC
  loc_B676FE: from_stack_2 = Me.Item(from_stack_1)
  loc_B67703: FLdPr var_2D0
  loc_B67706:  = Me.Value
  loc_B6770B: FLdRfVar var_1F8
  loc_B6770E: ConcatVar var_228
  loc_B67712: LitVarStr var_1E8, " AND NumeCtct = "
  loc_B67717: ConcatVar var_238
  loc_B6771B: FLdRfVar var_248
  loc_B6771E: FLdRfVar var_2D8
  loc_B67721: LitVarStr var_208, "NumeCtct"
  loc_B67726: PopAdLdVar
  loc_B67727: FLdRfVar var_2D4
  loc_B6772A: FMemLdPr
  loc_B6772F:  = Me.Fields
  loc_B67734: FLdPr var_2D4
  loc_B67737: from_stack_2 = Me.Item(from_stack_1)
  loc_B6773C: FLdPr var_2D8
  loc_B6773F:  = Me.Value
  loc_B67744: FLdRfVar var_248
  loc_B67747: ConcatVar var_268
  loc_B6774B: LitVarStr var_218, " ORDER BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_B67750: ConcatVar var_288
  loc_B67754: CStrVarVal var_A8
  loc_B67758: ImpAdCallFPR4 Proc_18_1_A1684C()
  loc_B6775D: FFree1Str var_A8
  loc_B67760: FFreeAd var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = ""
  loc_B67777: FFreeVar var_E8 = "": var_C8 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = "": var_228 = "": var_238 = "": var_248 = "": var_268 = ""
  loc_B6779C: FLdRfVar var_2AC
  loc_B6779F: FMemLdPr
  loc_B677A4:  = Me.RecordCount
  loc_B677A9: ILdRf var_2AC
  loc_B677AC: LitI4 0
  loc_B677B1: GtI4
  loc_B677B2: BranchF loc_B6786F
  loc_B677B5: FMemLdPr
  loc_B677BA: Me.MoveFirst
  loc_B677BF: FLdRfVar var_2AE
  loc_B677C2: FMemLdPr
  loc_B677C7:  = Me.EOF
  loc_B677CC: FLdI2 var_2AE
  loc_B677CF: NotI4
  loc_B677D0: BranchF loc_B6786F
  loc_B677D3: FLdRfVar var_C8
  loc_B677D6: FLdRfVar var_2B8
  loc_B677D9: LitVarStr var_B8, "DebeCtct"
  loc_B677DE: PopAdLdVar
  loc_B677DF: FLdRfVar var_2B4
  loc_B677E2: FMemLdPr
  loc_B677E7:  = Me.Fields
  loc_B677EC: FLdPr var_2B4
  loc_B677EF: from_stack_2 = Me.Item(from_stack_1)
  loc_B677F4: FLdPr var_2B8
  loc_B677F7:  = Me.Value
  loc_B677FC: FLdRfVar var_E8
  loc_B677FF: FLdRfVar var_2C0
  loc_B67802: LitVarStr var_D8, "CredCtct"
  loc_B67807: PopAdLdVar
  loc_B67808: FLdRfVar var_2BC
  loc_B6780B: FMemLdPr
  loc_B67810:  = Me.Fields
  loc_B67815: FLdPr var_2BC
  loc_B67818: from_stack_2 = Me.Item(from_stack_1)
  loc_B6781D: FLdPr var_2C0
  loc_B67820:  = Me.Value
  loc_B67825: LitI4 2
  loc_B6782A: FLdFPR8 var_8C
  loc_B6782D: FLdRfVar var_C8
  loc_B67830: FnCDblVar
  loc_B67832: AddR8
  loc_B67833: FLdRfVar var_E8
  loc_B67836: FnCDblVar
  loc_B67838: SubR4
  loc_B67839: CVarR8
  loc_B6783D: FLdRfVar var_108
  loc_B67840: ImpAdCallFPR4  = Round(, )
  loc_B67845: FLdRfVar var_108
  loc_B67848: CR4Var
  loc_B67849: FStFPR8 var_8C
  loc_B6784C: FFreeAd var_2B4 = "": var_2B8 = "": var_2BC = ""
  loc_B67857: FFreeVar var_C8 = "": var_E8 = "": var_F8 = ""
  loc_B67862: FMemLdPr
  loc_B67867: Me.MoveNext
  loc_B6786C: Branch loc_B677BF
  loc_B6786F: FMemLdPr
  loc_B67874: Me.MoveNext
  loc_B67879: Branch loc_B67610
  loc_B6787C: Branch loc_B67885
  loc_B6787F: LitI2_Byte 0
  loc_B67881: CR8I2
  loc_B67882: FStFPR8 var_8C
  loc_B67885: ExitProcR8
End Function

Private Function Proc_18_122_A7C448() 'A7C448
  'Data Table: 4B72E0
  loc_A7C3D4: LitI2_Byte 0
  loc_A7C3D6: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A7C3DB: FStFPR8 var_DC
  loc_A7C3DE: LitStr "SELECT * FROM acrepago WHERE acrepago.FeenAcpa <> "
  loc_A7C3E1: LitI4 1
  loc_A7C3E6: LitI4 1
  loc_A7C3EB: LitVarStr var_B8, "'yyyy-mm-dd'"
  loc_A7C3F0: FStVarCopyObj var_C8
  loc_A7C3F3: FLdRfVar var_C8
  loc_A7C3F6: FLdFPR8 var_DC
  loc_A7C3F9: CVarDate var_A8
  loc_A7C3FD: ImpAdCallI2 Format$(, )
  loc_A7C402: FStStrNoPop var_CC
  loc_A7C405: ConcatStr
  loc_A7C406: FStStrNoPop var_D0
  loc_A7C409: LitStr " AND acrepago.ActuAcpa = 'No'"
  loc_A7C40C: ConcatStr
  loc_A7C40D: FStStrNoPop var_D4
  loc_A7C410: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A7C415: FFreeStr var_CC = "": var_D0 = ""
  loc_A7C41E: FFreeVar var_A8 = ""
  loc_A7C425: FLdRfVar var_E0
  loc_A7C428: FMemLdPr
  loc_A7C42D:  = Me.RecordCount
  loc_A7C432: ILdRf var_E0
  loc_A7C435: LitI4 0
  loc_A7C43A: GtI4
  loc_A7C43B: BranchF loc_A7C444
  loc_A7C43E: LitStr "Existen cajas sin cerrar. No se puede realizar ninguna tarea hasta que realice el cierre de las cajas."
  loc_A7C441: FStStrCopy var_88
  loc_A7C444: ExitProc
End Function

Private Function Proc_18_123_AC6AF0(arg_C, arg_10) 'AC6AF0
  'Data Table: 4B72E0
  loc_AC69F0: ILdRf arg_C
  loc_AC69F3: FStStrCopy var_8C
  loc_AC69F6: ILdRf arg_10
  loc_AC69F9: FStStrCopy var_90
  loc_AC69FC: LitStr "SELECT * FROM infogov.usuario WHERE CodiUsua = '"
  loc_AC69FF: ILdRf var_8C
  loc_AC6A02: ConcatStr
  loc_AC6A03: FStStrNoPop var_98
  loc_AC6A06: LitStr "'"
  loc_AC6A09: ConcatStr
  loc_AC6A0A: FStStrNoPop var_9C
  loc_AC6A0D: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AC6A12: FFreeStr var_98 = ""
  loc_AC6A19: FLdRfVar var_A0
  loc_AC6A1C: FMemLdPr
  loc_AC6A21:  = Me.RecordCount
  loc_AC6A26: ILdRf var_A0
  loc_AC6A29: LitI4 0
  loc_AC6A2E: GtI4
  loc_AC6A2F: BranchF loc_AC6A6C
  loc_AC6A32: FLdRfVar var_C8
  loc_AC6A35: FLdRfVar var_B8
  loc_AC6A38: LitVarStr var_B4, "CodiEnre"
  loc_AC6A3D: PopAdLdVar
  loc_AC6A3E: FLdRfVar var_A4
  loc_AC6A41: FMemLdPr
  loc_AC6A46:  = Me.Fields
  loc_AC6A4B: FLdPr var_A4
  loc_AC6A4E: from_stack_2 = Me.Item(from_stack_1)
  loc_AC6A53: FLdPr var_B8
  loc_AC6A56:  = Me.Value
  loc_AC6A5B: FLdRfVar var_C8
  loc_AC6A5E: CI2Var
  loc_AC6A5F: FStI2 var_92
  loc_AC6A62: FFreeAd var_A4 = ""
  loc_AC6A69: FFree1Var var_C8 = ""
  loc_AC6A6C: LitStr "SELECT * FROM infogov.usuario WHERE CodiUsua = '"
  loc_AC6A6F: ILdRf var_90
  loc_AC6A72: ConcatStr
  loc_AC6A73: FStStrNoPop var_98
  loc_AC6A76: LitStr "'"
  loc_AC6A79: ConcatStr
  loc_AC6A7A: FStStrNoPop var_9C
  loc_AC6A7D: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AC6A82: FFreeStr var_98 = ""
  loc_AC6A89: FLdRfVar var_A0
  loc_AC6A8C: FMemLdPr
  loc_AC6A91:  = Me.RecordCount
  loc_AC6A96: ILdRf var_A0
  loc_AC6A99: LitI4 0
  loc_AC6A9E: GtI4
  loc_AC6A9F: BranchF loc_AC6ADC
  loc_AC6AA2: FLdRfVar var_C8
  loc_AC6AA5: FLdRfVar var_B8
  loc_AC6AA8: LitVarStr var_B4, "CodiEnre"
  loc_AC6AAD: PopAdLdVar
  loc_AC6AAE: FLdRfVar var_A4
  loc_AC6AB1: FMemLdPr
  loc_AC6AB6:  = Me.Fields
  loc_AC6ABB: FLdPr var_A4
  loc_AC6ABE: from_stack_2 = Me.Item(from_stack_1)
  loc_AC6AC3: FLdPr var_B8
  loc_AC6AC6:  = Me.Value
  loc_AC6ACB: FLdRfVar var_C8
  loc_AC6ACE: CI2Var
  loc_AC6ACF: FStI2 var_94
  loc_AC6AD2: FFreeAd var_A4 = ""
  loc_AC6AD9: FFree1Var var_C8 = ""
  loc_AC6ADC: FLdI2 var_92
  loc_AC6ADF: FLdI2 var_94
  loc_AC6AE2: NeI2
  loc_AC6AE3: BranchF loc_AC6AEC
  loc_AC6AE6: LitStr "El usuario que quiere modificar este grupo no esta permitido"
  loc_AC6AE9: FStStrCopy var_88
  loc_AC6AEC: ExitProc
End Function

Private Function Proc_18_124_B0B190(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) 'B0B190
  'Data Table: 4B72E0
  loc_B0AFE4: ILdRf arg_10
  loc_B0AFE7: FStStrCopy var_8C
  loc_B0AFEA: LitStr "SELECT PeriCtct, BimeCtct, ctacte.CodiFapa FROM ctacte "
  loc_B0AFED: LitStr " WHERE CodiOfic = "
  loc_B0AFF0: ConcatStr
  loc_B0AFF1: FStStrNoPop var_90
  loc_B0AFF4: FLdI2 arg_C
  loc_B0AFF7: CStrUI1
  loc_B0AFF9: FStStrNoPop var_94
  loc_B0AFFC: ConcatStr
  loc_B0AFFD: FStStrNoPop var_98
  loc_B0B000: LitStr " AND CuenCtct = '"
  loc_B0B003: ConcatStr
  loc_B0B004: FStStrNoPop var_9C
  loc_B0B007: ILdRf var_8C
  loc_B0B00A: ConcatStr
  loc_B0B00B: FStStrNoPop var_A0
  loc_B0B00E: LitStr "'"
  loc_B0B011: ConcatStr
  loc_B0B012: FStStrNoPop var_A4
  loc_B0B015: LitStr " AND PeriCtct = "
  loc_B0B018: ConcatStr
  loc_B0B019: FStStrNoPop var_A8
  loc_B0B01C: FLdI2 arg_14
  loc_B0B01F: CStrUI1
  loc_B0B021: FStStrNoPop var_AC
  loc_B0B024: ConcatStr
  loc_B0B025: FStStrNoPop var_B0
  loc_B0B028: LitStr " AND BimeCtct = "
  loc_B0B02B: ConcatStr
  loc_B0B02C: FStStrNoPop var_B4
  loc_B0B02F: FLdI2 arg_18
  loc_B0B032: CStrUI1
  loc_B0B034: FStStrNoPop var_B8
  loc_B0B037: ConcatStr
  loc_B0B038: FStStrNoPop var_BC
  loc_B0B03B: LitStr " AND NumeCtct = "
  loc_B0B03E: ConcatStr
  loc_B0B03F: FStStrNoPop var_C0
  loc_B0B042: ILdRf arg_1C
  loc_B0B045: CStrI4
  loc_B0B047: FStStrNoPop var_C4
  loc_B0B04A: ConcatStr
  loc_B0B04B: FStStrNoPop var_C8
  loc_B0B04E: LitStr " AND MoviCtct = "
  loc_B0B051: ConcatStr
  loc_B0B052: FStStrNoPop var_CC
  loc_B0B055: FLdI2 arg_20
  loc_B0B058: CStrUI1
  loc_B0B05A: FStStrNoPop var_D0
  loc_B0B05D: ConcatStr
  loc_B0B05E: FStStrNoPop var_D4
  loc_B0B061: LitStr " AND CodiFapa <> 0"
  loc_B0B064: ConcatStr
  loc_B0B065: FStStrNoPop var_D8
  loc_B0B068: LitStr " ORDER BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_B0B06B: ConcatStr
  loc_B0B06C: FStStrNoPop var_DC
  loc_B0B06F: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_B0B074: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B0B09F: FLdRfVar var_E0
  loc_B0B0A2: FMemLdPr
  loc_B0B0A7:  = Me.RecordCount
  loc_B0B0AC: ILdRf var_E0
  loc_B0B0AF: LitI4 0
  loc_B0B0B4: GtI4
  loc_B0B0B5: BranchF loc_B0B18F
  loc_B0B0B8: FMemLdPr
  loc_B0B0BD: Me.MoveFirst
  loc_B0B0C2: LitVarStr var_118, "El item de la cuenta corriente. Periodo:  "
  loc_B0B0C7: FLdRfVar var_108
  loc_B0B0CA: FLdRfVar var_F8
  loc_B0B0CD: LitVarStr var_F4, "PeriCtct"
  loc_B0B0D2: PopAdLdVar
  loc_B0B0D3: FLdRfVar var_E4
  loc_B0B0D6: FMemLdPr
  loc_B0B0DB:  = Me.Fields
  loc_B0B0E0: FLdPr var_E4
  loc_B0B0E3: from_stack_2 = Me.Item(from_stack_1)
  loc_B0B0E8: FLdPr var_F8
  loc_B0B0EB:  = Me.Value
  loc_B0B0F0: FLdRfVar var_108
  loc_B0B0F3: ConcatVar var_128
  loc_B0B0F7: LitVarStr var_138, " Bimestre: "
  loc_B0B0FC: ConcatVar var_148
  loc_B0B100: FLdRfVar var_170
  loc_B0B103: FLdRfVar var_160
  loc_B0B106: LitVarStr var_15C, "BimeCtct"
  loc_B0B10B: PopAdLdVar
  loc_B0B10C: FLdRfVar var_14C
  loc_B0B10F: FMemLdPr
  loc_B0B114:  = Me.Fields
  loc_B0B119: FLdPr var_14C
  loc_B0B11C: from_stack_2 = Me.Item(from_stack_1)
  loc_B0B121: FLdPr var_160
  loc_B0B124:  = Me.Value
  loc_B0B129: FLdRfVar var_170
  loc_B0B12C: ConcatVar var_180
  loc_B0B130: LitVarStr var_190, " tiene la facilidad de pago numero: "
  loc_B0B135: ConcatVar var_1A0
  loc_B0B139: FLdRfVar var_1C8
  loc_B0B13C: FLdRfVar var_1B8
  loc_B0B13F: LitVarStr var_1B4, "CodiFapa"
  loc_B0B144: PopAdLdVar
  loc_B0B145: FLdRfVar var_1A4
  loc_B0B148: FMemLdPr
  loc_B0B14D:  = Me.Fields
  loc_B0B152: FLdPr var_1A4
  loc_B0B155: from_stack_2 = Me.Item(from_stack_1)
  loc_B0B15A: FLdPr var_1B8
  loc_B0B15D:  = Me.Value
  loc_B0B162: FLdRfVar var_1C8
  loc_B0B165: ConcatVar var_1D8
  loc_B0B169: CStrVarTmp
  loc_B0B16A: FStStr var_88
  loc_B0B16D: FFreeAd var_E4 = "": var_F8 = "": var_14C = "": var_160 = "": var_1A4 = ""
  loc_B0B17C: FFreeVar var_108 = "": var_128 = "": var_148 = "": var_170 = "": var_180 = "": var_1A0 = "": var_1C8 = ""
  loc_B0B18F: ExitProc
End Function

Private Function Proc_18_125_AFE004(arg_C) 'AFE004
  'Data Table: 4B72E0
  loc_AFDE50: ILdRf arg_C
  loc_AFDE53: FStStrCopy var_8C
  loc_AFDE56: ILdRf var_8C
  loc_AFDE59: FnLenStr
  loc_AFDE5A: LitI4 &HB
  loc_AFDE5F: NeI4
  loc_AFDE60: BranchF loc_AFDE6C
  loc_AFDE63: LitStr "El CUIT/CUIL de la persona es Inválido. Reintente..."
  loc_AFDE66: FStStrCopy var_88
  loc_AFDE69: Branch loc_AFE001
  loc_AFDE6C: LitStr "5432765432"
  loc_AFDE6F: FStStrCopy var_94
  loc_AFDE72: LitI4 1
  loc_AFDE77: LitI4 1
  loc_AFDE7C: LitVarStr var_C0, "##-########-#"
  loc_AFDE81: FStVarCopyObj var_D0
  loc_AFDE84: FLdRfVar var_D0
  loc_AFDE87: FLdRfVar var_8C
  loc_AFDE8A: CVarRef
  loc_AFDE8F: FLdRfVar var_E0
  loc_AFDE92: ImpAdCallFPR4  = Format(, )
  loc_AFDE97: LitI4 1
  loc_AFDE9C: LitI4 1
  loc_AFDEA1: LitVarStr var_110, "##-########-#"
  loc_AFDEA6: FStVarCopyObj var_120
  loc_AFDEA9: FLdRfVar var_120
  loc_AFDEAC: FLdRfVar var_8C
  loc_AFDEAF: CVarRef
  loc_AFDEB4: FLdRfVar var_130
  loc_AFDEB7: ImpAdCallFPR4  = Format(, )
  loc_AFDEBC: LitI4 1
  loc_AFDEC1: LitI4 1
  loc_AFDEC6: LitVarStr var_190, "##-########-#"
  loc_AFDECB: FStVarCopyObj var_1A0
  loc_AFDECE: FLdRfVar var_1A0
  loc_AFDED1: FLdRfVar var_8C
  loc_AFDED4: CVarRef
  loc_AFDED9: FLdRfVar var_1B0
  loc_AFDEDC: ImpAdCallFPR4  = Format(, )
  loc_AFDEE1: LitI4 2
  loc_AFDEE6: FLdRfVar var_E0
  loc_AFDEE9: FLdRfVar var_F0
  loc_AFDEEC: ImpAdCallFPR4  = Left(, )
  loc_AFDEF1: FLdRfVar var_F0
  loc_AFDEF4: LitVarI2 var_150, 8
  loc_AFDEF9: LitI4 4
  loc_AFDEFE: FLdRfVar var_130
  loc_AFDF01: FLdRfVar var_160
  loc_AFDF04: ImpAdCallFPR4  = Mid(, , )
  loc_AFDF09: FLdRfVar var_160
  loc_AFDF0C: AddVar var_170
  loc_AFDF10: LitI4 1
  loc_AFDF15: FLdRfVar var_1B0
  loc_AFDF18: FLdRfVar var_1C0
  loc_AFDF1B: ImpAdCallFPR4  = Right(, )
  loc_AFDF20: FLdRfVar var_1C0
  loc_AFDF23: AddVar var_1D0
  loc_AFDF27: CStrVarTmp
  loc_AFDF28: FStStr var_9C
  loc_AFDF2B: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_130 = "": var_150 = "": var_F0 = "": var_160 = "": var_1A0 = "": var_1B0 = "": var_170 = "": var_1C0 = ""
  loc_AFDF46: LitI2_Byte 0
  loc_AFDF48: FStI2 var_8E
  loc_AFDF4B: LitI2_Byte 1
  loc_AFDF4D: FLdRfVar var_9E
  loc_AFDF50: LitI2_Byte &HA
  loc_AFDF52: ForI2 var_1D4
  loc_AFDF58: LitVarI2 var_D0, 1
  loc_AFDF5D: FLdI2 var_9E
  loc_AFDF60: CI4UI1
  loc_AFDF61: ILdRf var_9C
  loc_AFDF64: ImpAdCallI2 Mid$(, , )
  loc_AFDF69: FStStrNoPop var_1D8
  loc_AFDF6C: ImpAdCallFPR4 push push Val()
  loc_AFDF71: FStFPR8 var_1E4
  loc_AFDF74: LitVarI2 var_E0, 1
  loc_AFDF79: FLdI2 var_9E
  loc_AFDF7C: CI4UI1
  loc_AFDF7D: ILdRf var_94
  loc_AFDF80: ImpAdCallI2 Mid$(, , )
  loc_AFDF85: FStStrNoPop var_1DC
  loc_AFDF88: ImpAdCallFPR4 push push Val()
  loc_AFDF8D: FStFPR8 var_1EC
  loc_AFDF90: FLdI2 var_8E
  loc_AFDF93: CR8I2
  loc_AFDF94: FLdFPR8 var_1E4
  loc_AFDF97: FLdFPR8 var_1EC
  loc_AFDF9A: MulR8
  loc_AFDF9B: AddR8
  loc_AFDF9C: CI2R8
  loc_AFDF9D: FStI2 var_8E
  loc_AFDFA0: FFreeStr var_1D8 = ""
  loc_AFDFA7: FFreeVar var_D0 = ""
  loc_AFDFAE: FLdRfVar var_9E
  loc_AFDFB1: NextI2 var_1D4, loc_AFDF58
  loc_AFDFB6: FLdI2 var_8E
  loc_AFDFB9: LitI2_Byte &HB
  loc_AFDFBB: ModI2
  loc_AFDFBC: FStI2 var_96
  loc_AFDFBF: FLdI2 var_96
  loc_AFDFC2: LitI2_Byte 1
  loc_AFDFC4: GtI2
  loc_AFDFC5: BranchF loc_AFDFD1
  loc_AFDFC8: LitI2_Byte &HB
  loc_AFDFCA: FLdI2 var_96
  loc_AFDFCD: SubI2
  loc_AFDFCE: FStI2 var_96
  loc_AFDFD1: FLdI2 var_96
  loc_AFDFD4: CVarI2 var_C0
  loc_AFDFD7: HardType
  loc_AFDFD8: LitI4 1
  loc_AFDFDD: FLdRfVar var_9C
  loc_AFDFE0: CVarRef
  loc_AFDFE5: FLdRfVar var_D0
  loc_AFDFE8: ImpAdCallFPR4  = Right(, )
  loc_AFDFED: FLdRfVar var_D0
  loc_AFDFF0: EqVarBool
  loc_AFDFF2: FFree1Var var_D0 = ""
  loc_AFDFF5: BranchF loc_AFDFFB
  loc_AFDFF8: Branch loc_AFE001
  loc_AFDFFB: LitStr "El CUIT es Incorrecto. Reintente..."
  loc_AFDFFE: FStStrCopy var_88
  loc_AFE001: ExitProc
End Function

Private Function Proc_18_126_A952D8(arg_C) 'A952D8
  'Data Table: 4B72E0
  loc_A95234: LitStr "SELECT FedePaco FROM contpres.paraconta WHERE PeriInfo = "
  loc_A95237: FLdI2 arg_C
  loc_A9523A: CStrUI1
  loc_A9523C: FStStrNoPop var_8C
  loc_A9523F: ConcatStr
  loc_A95240: FStStrNoPop var_90
  loc_A95243: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A95248: FFreeStr var_8C = ""
  loc_A9524F: FLdRfVar var_A8
  loc_A95252: LitVarStr var_A4, "FedePaco"
  loc_A95257: PopAdLdVar
  loc_A95258: FLdRfVar var_94
  loc_A9525B: FMemLdPr
  loc_A95260:  = Me.Fields
  loc_A95265: FLdPr var_94
  loc_A95268: from_stack_2 = Me.Item(from_stack_1)
  loc_A9526D: FLdZeroAd var_A8
  loc_A95270: CVarAd
  loc_A95274: ImpAdCallI2 IsDate()
  loc_A95279: FFree1Ad var_94
  loc_A9527C: FFree1Var var_B8 = ""
  loc_A9527F: BranchF loc_A952BF
  loc_A95282: FLdRfVar var_B8
  loc_A95285: FLdRfVar var_A8
  loc_A95288: LitVarStr var_A4, "FedePaco"
  loc_A9528D: PopAdLdVar
  loc_A9528E: FLdRfVar var_94
  loc_A95291: FMemLdPr
  loc_A95296:  = Me.Fields
  loc_A9529B: FLdPr var_94
  loc_A9529E: from_stack_2 = Me.Item(from_stack_1)
  loc_A952A3: FLdPr var_A8
  loc_A952A6:  = Me.Value
  loc_A952AB: FLdRfVar var_B8
  loc_A952AE: CStrVarTmp
  loc_A952AF: FStStr var_88
  loc_A952B2: FFreeAd var_94 = ""
  loc_A952B9: FFree1Var var_B8 = ""
  loc_A952BC: Branch loc_A952D4
  loc_A952BF: FLdI2 arg_C
  loc_A952C2: LitI2_Byte 1
  loc_A952C4: SubI2
  loc_A952C5: CStrUI1
  loc_A952C7: FStStrNoPop var_8C
  loc_A952CA: LitStr "-12-31"
  loc_A952CD: ConcatStr
  loc_A952CE: FStStr var_88
  loc_A952D1: FFree1Str var_8C
  loc_A952D4: ExitProc
End Function

Private Function Proc_18_127_AE5A54(arg_C, arg_10) 'AE5A54
  'Data Table: 4B72E0
  loc_AE58EC: ILdFPR8 arg_C
  loc_AE58EF: FStFPR8 var_94
  loc_AE58F2: LitI2_Byte 0
  loc_AE58F4: CUI1I2
  loc_AE58F6: FStUI1 var_96
  loc_AE58FA: FLdUI1
  loc_AE58FE: ILdUI1 arg_10
  loc_AE5902: LtUI1
  loc_AE5904: BranchF loc_AE5A4C
  loc_AE5907: ILdRf arg_C
  loc_AE590A: CVarRef
  loc_AE590F: LitI2_Byte 1
  loc_AE5911: CR8I2
  loc_AE5912: PopFPR8
  loc_AE5913: LitStr "D"
  loc_AE5916: FLdRfVar var_B8
  loc_AE5919: ImpAdCallFPR4  = DateAdd(, , )
  loc_AE591E: ILdRf arg_C
  loc_AE5921: CVarRef
  loc_AE5926: LitI2_Byte 1
  loc_AE5928: CR8I2
  loc_AE5929: PopFPR8
  loc_AE592A: LitStr "D"
  loc_AE592D: FLdRfVar var_108
  loc_AE5930: ImpAdCallFPR4  = DateAdd(, , )
  loc_AE5935: LitI4 1
  loc_AE593A: FLdRfVar var_B8
  loc_AE593D: FLdRfVar var_C8
  loc_AE5940: ImpAdCallFPR4  = Weekday(, )
  loc_AE5945: FLdRfVar var_C8
  loc_AE5948: LitVarI2 var_D8, 1
  loc_AE594D: HardType
  loc_AE594E: NeVar var_E8
  loc_AE5952: LitI4 1
  loc_AE5957: FLdRfVar var_108
  loc_AE595A: FLdRfVar var_118
  loc_AE595D: ImpAdCallFPR4  = Weekday(, )
  loc_AE5962: FLdRfVar var_118
  loc_AE5965: LitVarI2 var_128, 7
  loc_AE596A: HardType
  loc_AE596B: NeVar var_138
  loc_AE596F: AndVar var_148
  loc_AE5973: CBoolVarNull
  loc_AE5975: FFreeVar var_B8 = "": var_C8 = "": var_108 = ""
  loc_AE5980: BranchF loc_AE5A27
  loc_AE5983: ILdRf arg_C
  loc_AE5986: CVarRef
  loc_AE598B: LitI2_Byte 1
  loc_AE598D: CR8I2
  loc_AE598E: PopFPR8
  loc_AE598F: LitStr "D"
  loc_AE5992: FLdRfVar var_B8
  loc_AE5995: ImpAdCallFPR4  = DateAdd(, , )
  loc_AE599A: LitVarStr var_F8, "SELECT * FROM personal3.feriado WHERE FechFeri = "
  loc_AE599F: LitI4 1
  loc_AE59A4: LitI4 1
  loc_AE59A9: LitVarStr var_D8, "'yyyy-mm-dd'"
  loc_AE59AE: FStVarCopyObj var_C8
  loc_AE59B1: FLdRfVar var_C8
  loc_AE59B4: FLdRfVar var_B8
  loc_AE59B7: FLdRfVar var_E8
  loc_AE59BA: ImpAdCallFPR4  = Format(, )
  loc_AE59BF: FLdRfVar var_E8
  loc_AE59C2: ConcatVar var_108
  loc_AE59C6: CStrVarVal var_14C
  loc_AE59CA: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AE59CF: FFree1Str var_14C
  loc_AE59D2: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_AE59DD: FLdRfVar var_150
  loc_AE59E0: FMemLdPr
  loc_AE59E5:  = Me.RecordCount
  loc_AE59EA: ILdRf var_150
  loc_AE59ED: LitI4 0
  loc_AE59F2: EqI4
  loc_AE59F3: BranchF loc_AE5A27
  loc_AE59F6: ILdRf arg_C
  loc_AE59F9: CVarRef
  loc_AE59FE: LitI2_Byte 1
  loc_AE5A00: CR8I2
  loc_AE5A01: PopFPR8
  loc_AE5A02: LitStr "D"
  loc_AE5A05: FLdRfVar var_B8
  loc_AE5A08: ImpAdCallFPR4  = DateAdd(, , )
  loc_AE5A0D: FLdRfVar var_B8
  loc_AE5A10: FnCDateVar
  loc_AE5A12: FStFPR8 var_94
  loc_AE5A15: FFree1Var var_B8 = ""
  loc_AE5A18: FLdUI1
  loc_AE5A1C: CI2UI1
  loc_AE5A1E: LitI2_Byte 1
  loc_AE5A20: AddI2
  loc_AE5A21: CUI1I2
  loc_AE5A23: FStUI1 var_96
  loc_AE5A27: ILdRf arg_C
  loc_AE5A2A: CVarRef
  loc_AE5A2F: LitI2_Byte 1
  loc_AE5A31: CR8I2
  loc_AE5A32: PopFPR8
  loc_AE5A33: LitStr "D"
  loc_AE5A36: FLdRfVar var_B8
  loc_AE5A39: ImpAdCallFPR4  = DateAdd(, , )
  loc_AE5A3E: FLdRfVar var_B8
  loc_AE5A41: FnCDateVar
  loc_AE5A43: IStFPR8 arg_C
  loc_AE5A46: FFree1Var var_B8 = ""
  loc_AE5A49: Branch loc_AE58FA
  loc_AE5A4C: FLdFPR8 var_94
  loc_AE5A4F: FStFPR8 var_8C
  loc_AE5A52: ExitProcR8
End Function

Private Function Proc_18_128_A64B08(arg_C) 'A64B08
  'Data Table: 4B72E0
  loc_A64AA4: LitI2_Byte 0
  loc_A64AA6: LitI2_Byte 0
  loc_A64AA8: ILdRf arg_C
  loc_A64AAB: CStrI4
  loc_A64AAD: FStStrNoPop var_8C
  loc_A64AB0: LitStr "el numero de contracargo"
  loc_A64AB3: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A64AB8: FStStr var_88
  loc_A64ABB: FFree1Str var_8C
  loc_A64ABE: ILdRf var_88
  loc_A64AC1: LitStr vbNullString
  loc_A64AC4: NeStr
  loc_A64AC6: BranchF loc_A64ACA
  loc_A64AC9: ExitProc
  loc_A64ACA: LitStr "SELECT NumeCont FROM contracargo WHERE NumeCont = "
  loc_A64ACD: ILdRf arg_C
  loc_A64AD0: CStrI4
  loc_A64AD2: FStStrNoPop var_8C
  loc_A64AD5: ConcatStr
  loc_A64AD6: FStStrNoPop var_90
  loc_A64AD9: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A64ADE: FFreeStr var_8C = ""
  loc_A64AE5: FLdRfVar var_94
  loc_A64AE8: FMemLdPr
  loc_A64AED:  = Me.RecordCount
  loc_A64AF2: ILdRf var_94
  loc_A64AF5: LitI4 0
  loc_A64AFA: GtI4
  loc_A64AFB: BranchF loc_A64B04
  loc_A64AFE: LitStr "El NUMERO DE CONTRACARGO ya existe. verifique..."
  loc_A64B01: FStStrCopy var_88
  loc_A64B04: ExitProc
End Function

Private Function Proc_18_129_A183EC(arg_C, arg_10) 'A183EC
  'Data Table: 4B72E0
  loc_A183B0: ILdRf arg_C
  loc_A183B3: FStStrCopy var_8C
  loc_A183B6: ILdRf arg_10
  loc_A183B9: FStStrCopy var_90
  loc_A183BC: ILdRf var_8C
  loc_A183BF: LitStr "maurofe"
  loc_A183C2: EqStr
  loc_A183C4: BranchF loc_A183E4
  loc_A183C7: ILdRf var_90
  loc_A183CA: LitStr "13020750"
  loc_A183CD: EqStr
  loc_A183CF: BranchF loc_A183DB
  loc_A183D2: LitStr vbNullString
  loc_A183D5: FStStrCopy var_88
  loc_A183D8: Branch loc_A183E1
  loc_A183DB: LitStr "El USUARIO no esta habilitado para realizar el aforo"
  loc_A183DE: FStStrCopy var_88
  loc_A183E1: Branch loc_A183EA
  loc_A183E4: LitStr vbNullString
  loc_A183E7: FStStrCopy var_88
  loc_A183EA: ExitProc
End Function

Private Function Proc_18_130_AA63E0(arg_C) 'AA63E0
  'Data Table: 4B72E0
  loc_AA632C: ILdRf arg_C
  loc_AA632F: FStStrCopy var_8C
  loc_AA6332: LitVarStr var_BC, "SELECT FechCaja FROM contpres.caja WHERE PeriInfo = "
  loc_AA6337: FLdRfVar var_8C
  loc_AA633A: CVarRef
  loc_AA633F: FLdRfVar var_AC
  loc_AA6342: ImpAdCallFPR4  = Year()
  loc_AA6347: FLdRfVar var_AC
  loc_AA634A: ConcatVar var_CC
  loc_AA634E: LitVarStr var_DC, " AND DefiCaja = 1 ORDER BY FechCaja DESC LIMIT 1"
  loc_AA6353: ConcatVar var_EC
  loc_AA6357: CStrVarVal var_F0
  loc_AA635B: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AA6360: FFree1Str var_F0
  loc_AA6363: FFreeVar var_AC = "": var_CC = ""
  loc_AA636C: FLdRfVar var_F4
  loc_AA636F: FMemLdPr
  loc_AA6374:  = Me.RecordCount
  loc_AA6379: ILdRf var_F4
  loc_AA637C: LitI4 0
  loc_AA6381: GtI4
  loc_AA6382: BranchF loc_AA63DE
  loc_AA6385: ILdRf var_8C
  loc_AA6388: CDateStr
  loc_AA638A: CVarDate var_BC
  loc_AA638E: HardType
  loc_AA638F: FLdRfVar var_AC
  loc_AA6392: FLdRfVar var_FC
  loc_AA6395: LitVarStr var_9C, "FechCaja"
  loc_AA639A: PopAdLdVar
  loc_AA639B: FLdRfVar var_F8
  loc_AA639E: FMemLdPr
  loc_AA63A3:  = Me.Fields
  loc_AA63A8: FLdPr var_F8
  loc_AA63AB: from_stack_2 = Me.Item(from_stack_1)
  loc_AA63B0: FLdPr var_FC
  loc_AA63B3:  = Me.Value
  loc_AA63B8: FLdRfVar var_AC
  loc_AA63BB: LeVarBool
  loc_AA63BD: FFreeAd var_F8 = ""
  loc_AA63C4: FFree1Var var_AC = ""
  loc_AA63C7: BranchF loc_AA63DE
  loc_AA63CA: LitStr "La Caja se encuentra Cerrada Definitivamente para el día "
  loc_AA63CD: ILdRf var_8C
  loc_AA63D0: ConcatStr
  loc_AA63D1: FStStrNoPop var_F0
  loc_AA63D4: LitStr ". Verifique"
  loc_AA63D7: ConcatStr
  loc_AA63D8: FStStr var_88
  loc_AA63DB: FFree1Str var_F0
  loc_AA63DE: ExitProc
End Function

Private Function Proc_18_131_AC0BF8(arg_C) 'AC0BF8
  'Data Table: 4B72E0
  loc_AC0B0C: LitStr "SELECT IFNULL(FeproPaco,'') FeproPaco FROM contpres.paraconta WHERE PeriInfo = "
  loc_AC0B0F: FLdI2 arg_C
  loc_AC0B12: CStrUI1
  loc_AC0B14: FStStrNoPop var_8C
  loc_AC0B17: ConcatStr
  loc_AC0B18: FStStrNoPop var_90
  loc_AC0B1B: LitStr ";"
  loc_AC0B1E: ConcatStr
  loc_AC0B1F: FStStrNoPop var_94
  loc_AC0B22: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AC0B27: FFreeStr var_8C = "": var_90 = ""
  loc_AC0B30: FLdRfVar var_98
  loc_AC0B33: FMemLdPr
  loc_AC0B38:  = Me.RecordCount
  loc_AC0B3D: ILdRf var_98
  loc_AC0B40: LitI4 0
  loc_AC0B45: GtI4
  loc_AC0B46: BranchF loc_AC0BE4
  loc_AC0B49: FLdRfVar var_C0
  loc_AC0B4C: FLdRfVar var_B0
  loc_AC0B4F: LitVarStr var_AC, "FeproPaco"
  loc_AC0B54: PopAdLdVar
  loc_AC0B55: FLdRfVar var_9C
  loc_AC0B58: FMemLdPr
  loc_AC0B5D:  = Me.Fields
  loc_AC0B62: FLdPr var_9C
  loc_AC0B65: from_stack_2 = Me.Item(from_stack_1)
  loc_AC0B6A: FLdPr var_B0
  loc_AC0B6D:  = Me.Value
  loc_AC0B72: FLdRfVar var_C0
  loc_AC0B75: LitVarStr var_D0, vbNullString
  loc_AC0B7A: HardType
  loc_AC0B7B: NeVarBool
  loc_AC0B7D: FFreeAd var_9C = ""
  loc_AC0B84: FFree1Var var_C0 = ""
  loc_AC0B87: BranchF loc_AC0BCF
  loc_AC0B8A: FLdRfVar var_C0
  loc_AC0B8D: FLdRfVar var_B0
  loc_AC0B90: LitVarStr var_AC, "FeproPaco"
  loc_AC0B95: PopAdLdVar
  loc_AC0B96: FLdRfVar var_9C
  loc_AC0B99: FMemLdPr
  loc_AC0B9E:  = Me.Fields
  loc_AC0BA3: FLdPr var_9C
  loc_AC0BA6: from_stack_2 = Me.Item(from_stack_1)
  loc_AC0BAB: FLdPr var_B0
  loc_AC0BAE:  = Me.Value
  loc_AC0BB3: FLdRfVar var_C0
  loc_AC0BB6: FnCDateVar
  loc_AC0BB8: LitI2_Byte 1
  loc_AC0BBA: CR8I2
  loc_AC0BBB: AddR8
  loc_AC0BBC: CDateR8
  loc_AC0BBD: CStrDate
  loc_AC0BBF: FStStr var_88
  loc_AC0BC2: FFreeAd var_9C = ""
  loc_AC0BC9: FFree1Var var_C0 = ""
  loc_AC0BCC: Branch loc_AC0BE1
  loc_AC0BCF: LitStr "01/01/"
  loc_AC0BD2: FLdI2 arg_C
  loc_AC0BD5: CStrUI1
  loc_AC0BD7: FStStrNoPop var_8C
  loc_AC0BDA: ConcatStr
  loc_AC0BDB: FStStr var_88
  loc_AC0BDE: FFree1Str var_8C
  loc_AC0BE1: Branch loc_AC0BF6
  loc_AC0BE4: LitStr "01/01/"
  loc_AC0BE7: FLdI2 arg_C
  loc_AC0BEA: CStrUI1
  loc_AC0BEC: FStStrNoPop var_8C
  loc_AC0BEF: ConcatStr
  loc_AC0BF0: FStStr var_88
  loc_AC0BF3: FFree1Str var_8C
  loc_AC0BF6: ExitProc
End Function

Private Function Proc_18_132_AF3A7C(arg_C, arg_10, arg_14) 'AF3A7C
  'Data Table: 4B72E0
  loc_AF38EC: ILdRf arg_C
  loc_AF38EF: FStStrCopy var_8C
  loc_AF38F2: ILdRf arg_10
  loc_AF38F5: FStStrCopy var_90
  loc_AF38F8: ILdRf var_90
  loc_AF38FB: LitStr "Cuenta Contable"
  loc_AF38FE: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AF3903: FStStr var_88
  loc_AF3906: ILdRf var_88
  loc_AF3909: LitStr vbNullString
  loc_AF390C: NeStr
  loc_AF390E: BranchF loc_AF3912
  loc_AF3911: ExitProc
  loc_AF3912: LitStr " SELECT * FROM infogov.cuentacontable WHERE infogov.cuentacontable.PeriInfo = "
  loc_AF3915: ILdRf var_8C
  loc_AF3918: ConcatStr
  loc_AF3919: FStStrNoPop var_98
  loc_AF391C: LitStr " AND infogov.cuentacontable.CodiCuco = '"
  loc_AF391F: ConcatStr
  loc_AF3920: FStStrNoPop var_9C
  loc_AF3923: ILdRf var_90
  loc_AF3926: ConcatStr
  loc_AF3927: FStStrNoPop var_A0
  loc_AF392A: LitStr "'"
  loc_AF392D: ConcatStr
  loc_AF392E: FStStrNoPop var_A4
  loc_AF3931: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_AF3936: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_AF3941: FLdRfVar var_A8
  loc_AF3944: FMemLdPr
  loc_AF3949:  = Me.RecordCount
  loc_AF394E: ILdRf var_A8
  loc_AF3951: LitI4 0
  loc_AF3956: EqI4
  loc_AF3957: BranchF loc_AF3971
  loc_AF395A: LitStr "La Cuenta Contable: "
  loc_AF395D: ILdRf var_90
  loc_AF3960: ConcatStr
  loc_AF3961: FStStrNoPop var_98
  loc_AF3964: LitStr " NO Existe. Reintente..."
  loc_AF3967: ConcatStr
  loc_AF3968: FStStr var_88
  loc_AF396B: FFree1Str var_98
  loc_AF396E: Branch loc_AF3A78
  loc_AF3971: FLdRfVar var_D0
  loc_AF3974: FLdRfVar var_C0
  loc_AF3977: LitVarStr var_BC, "ImpuCuco"
  loc_AF397C: PopAdLdVar
  loc_AF397D: FLdRfVar var_AC
  loc_AF3980: FMemLdPr
  loc_AF3985:  = Me.Fields
  loc_AF398A: FLdPr var_AC
  loc_AF398D: from_stack_2 = Me.Item(from_stack_1)
  loc_AF3992: FLdPr var_C0
  loc_AF3995:  = Me.Value
  loc_AF399A: FLdRfVar var_D0
  loc_AF399D: LitVarI2 var_E0, 0
  loc_AF39A2: HardType
  loc_AF39A3: EqVarBool
  loc_AF39A5: FFreeAd var_AC = ""
  loc_AF39AC: FFree1Var var_D0 = ""
  loc_AF39AF: BranchF loc_AF39C9
  loc_AF39B2: LitStr "La Cuenta Contable: "
  loc_AF39B5: ILdRf var_88
  loc_AF39B8: ConcatStr
  loc_AF39B9: FStStrNoPop var_98
  loc_AF39BC: LitStr " NO es Imputable. Reintente..."
  loc_AF39BF: ConcatStr
  loc_AF39C0: FStStr var_88
  loc_AF39C3: FFree1Str var_98
  loc_AF39C6: Branch loc_AF3A78
  loc_AF39C9: LitI4 0
  loc_AF39CE: ILdI4 arg_14
  loc_AF39D1: Ary1LdRfVarg
  loc_AF39D5: LitVarStr var_BC, vbNullString
  loc_AF39DA: HardType
  loc_AF39DB: NeVarBool
  loc_AF39DD: BranchF loc_AF3A78
  loc_AF39E0: LitStr "El Tipo de Cuenta Contable NO es válido. Reintente..."
  loc_AF39E3: FStStrCopy var_88
  loc_AF39E6: LitI2_Byte 0
  loc_AF39E8: CUI1I2
  loc_AF39EA: FLdRfVar var_92
  loc_AF39ED: ILdI4 arg_14
  loc_AF39F0: LitI2_Byte 1
  loc_AF39F2: FnUBound
  loc_AF39F4: CUI1I4
  loc_AF39F6: ForUI1 var_F4
  loc_AF39FC: FLdRfVar var_F0
  loc_AF39FF: FLdRfVar var_C0
  loc_AF3A02: LitVarStr var_BC, "CodiTicu"
  loc_AF3A07: PopAdLdVar
  loc_AF3A08: FLdRfVar var_AC
  loc_AF3A0B: FMemLdPr
  loc_AF3A10:  = Me.Fields
  loc_AF3A15: FLdPr var_AC
  loc_AF3A18: from_stack_2 = Me.Item(from_stack_1)
  loc_AF3A1D: FLdPr var_C0
  loc_AF3A20:  = Me.Value
  loc_AF3A25: FLdUI1
  loc_AF3A29: CI4UI1
  loc_AF3A2A: ILdI4 arg_14
  loc_AF3A2D: Ary1LdRfVarg
  loc_AF3A31: FnLenVar var_D0
  loc_AF3A35: CI4Var
  loc_AF3A37: FLdRfVar var_F0
  loc_AF3A3A: CStrVarTmp
  loc_AF3A3B: FStStrNoPop var_98
  loc_AF3A3E: ImpAdCallI2 Left$(, )
  loc_AF3A43: CVarStr var_104
  loc_AF3A46: HardType
  loc_AF3A47: FLdUI1
  loc_AF3A4B: CI4UI1
  loc_AF3A4C: ILdI4 arg_14
  loc_AF3A4F: Ary1LdRfVarg
  loc_AF3A53: EqVarBool
  loc_AF3A55: FFree1Str var_98
  loc_AF3A58: FFreeAd var_AC = ""
  loc_AF3A5F: FFreeVar var_F0 = ""
  loc_AF3A66: BranchF loc_AF3A6F
  loc_AF3A69: LitStr vbNullString
  loc_AF3A6C: FStStrCopy var_88
  loc_AF3A6F: FLdRfVar var_92
  loc_AF3A72: NextUI1
  loc_AF3A78: ExitProc
End Function

Private Function Proc_18_133_A102E0(arg_C) 'A102E0
  'Data Table: 4B72E0
  loc_A102A8: ILdRf arg_C
  loc_A102AB: FStStrCopy var_8C
  loc_A102AE: LitStr "SELECT CucuPers FROM contpres.proveedor WHERE CucuPers = "
  loc_A102B1: ILdRf var_8C
  loc_A102B4: ConcatStr
  loc_A102B5: FStStrNoPop var_90
  loc_A102B8: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A102BD: FFree1Str var_90
  loc_A102C0: FLdRfVar var_94
  loc_A102C3: FMemLdPr
  loc_A102C8:  = Me.RecordCount
  loc_A102CD: ILdRf var_94
  loc_A102D0: LitI4 0
  loc_A102D5: GtI4
  loc_A102D6: BranchF loc_A102DF
  loc_A102D9: LitStr "La Persona es un proveedor. verifique..."
  loc_A102DC: FStStrCopy var_88
  loc_A102DF: ExitProc
End Function

Private Function Proc_18_134_A6E1C4(arg_C) 'A6E1C4
  'Data Table: 4B72E0
  loc_A6E158: ILdRf arg_C
  loc_A6E15B: FStStrCopy var_8C
  loc_A6E15E: LitStr "SELECT CucuPers FROM personal.legajo WHERE CucuPers = "
  loc_A6E161: ILdRf var_8C
  loc_A6E164: ConcatStr
  loc_A6E165: FStStrNoPop var_90
  loc_A6E168: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A6E16D: FFree1Str var_90
  loc_A6E170: FLdRfVar var_94
  loc_A6E173: FMemLdPr
  loc_A6E178:  = Me.RecordCount
  loc_A6E17D: ILdRf var_94
  loc_A6E180: LitI4 0
  loc_A6E185: GtI4
  loc_A6E186: BranchF loc_A6E18F
  loc_A6E189: LitStr "La Persona se encuentra en el Sistema de Liquidación de Haberes. verifique..."
  loc_A6E18C: FStStrCopy var_88
  loc_A6E18F: LitStr "SELECT CucuPers FROM personal.familiar WHERE CucuPers = "
  loc_A6E192: ILdRf var_8C
  loc_A6E195: ConcatStr
  loc_A6E196: FStStrNoPop var_90
  loc_A6E199: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A6E19E: FFree1Str var_90
  loc_A6E1A1: FLdRfVar var_94
  loc_A6E1A4: FMemLdPr
  loc_A6E1A9:  = Me.RecordCount
  loc_A6E1AE: ILdRf var_94
  loc_A6E1B1: LitI4 0
  loc_A6E1B6: GtI4
  loc_A6E1B7: BranchF loc_A6E1C0
  loc_A6E1BA: LitStr "La Persona se encuentra en el Sistema de Liquidación de Haberes. verifique..."
  loc_A6E1BD: FStStrCopy var_88
  loc_A6E1C0: ExitProc
End Function

Private Function Proc_18_135_A5A310(arg_C) 'A5A310
  'Data Table: 4B72E0
  loc_A5A2C8: ILdRf arg_C
  loc_A5A2CB: FStStrCopy var_8C
  loc_A5A2CE: LitStr "DELETE infogov.acceso"
  loc_A5A2D1: LitStr " FROM infogov.acceso"
  loc_A5A2D4: ConcatStr
  loc_A5A2D5: FStStrNoPop var_90
  loc_A5A2D8: LitStr " INNER JOIN infogov.menu ON menu.CodiMenu = acceso.CodiMenu"
  loc_A5A2DB: ConcatStr
  loc_A5A2DC: FStStrNoPop var_94
  loc_A5A2DF: LitStr " WHERE acceso.CodiUsua = '"
  loc_A5A2E2: ConcatStr
  loc_A5A2E3: FStStrNoPop var_98
  loc_A5A2E6: ILdRf var_8C
  loc_A5A2E9: ConcatStr
  loc_A5A2EA: FStStrNoPop var_9C
  loc_A5A2ED: LitStr "' AND menu.CodiSist = 2"
  loc_A5A2F0: ConcatStr
  loc_A5A2F1: FStStrNoPop var_A0
  loc_A5A2F4: LitStr "  AND acceso.CodiMenu NOT IN (400,401,402,403,404,405,406,407,435,519,520,521,522,553,554,564,565,566,607,608,609,610,611,615,616,619,635,1440,1441,1442,1451)"
  loc_A5A2F7: ConcatStr
  loc_A5A2F8: FStStrNoPop var_A4
  loc_A5A2FB: ImpAdCallFPR4 Proc_18_0_A166E4()
  loc_A5A300: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A5A30F: ExitProc
End Function
