VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsQRFiniteField"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Private Function Proc_279_0_945844() '945844
  'Data Table: 404438
  loc_945834: FLdPr Me
  loc_945837: MemLdStr global_52
  loc_94583A: FStR4 var_88
  loc_94583D: ExitProcCbHresult
  loc_945843: NotI4
End Function

Private Function Proc_279_1_945884() '945884
  'Data Table: 404438
  loc_945874: FLdPr Me
  loc_945877: MemLdStr global_56
  loc_94587A: FStR4 var_88
  loc_94587D: ExitProcCbHresult
End Function

Private Function Proc_279_2_9458C4() '9458C4
  'Data Table: 404438
  loc_9458B4: FLdPr Me
  loc_9458B7: MemLdStr global_60
  loc_9458BA: FStR4 var_88
  loc_9458BD: ExitProcCbHresult
End Function

Private Function Proc_279_3_A4AF00() 'A4AF00
  'Data Table: 404438
  loc_A4ACAC: FLdPr Me
  loc_A4ACAF: MemLdStr global_52
  loc_A4ACB2: LitI4 1
  loc_A4ACB7: SubI4
  loc_A4ACB8: FStR4 var_CC
  loc_A4ACBB: ILdRf var_CC
  loc_A4ACBE: LitI4 1
  loc_A4ACC3: AndI4
  loc_A4ACC4: LitI4 0
  loc_A4ACC9: EqI4
  loc_A4ACCA: BranchF loc_A4AD05
  loc_A4ACCD: ILdRf var_CC
  loc_A4ACD0: LitI4 2
  loc_A4ACD5: IDvI4
  loc_A4ACD6: LitI4 0
  loc_A4ACDB: FLdRfVar var_A0
  loc_A4ACDE: Ary1StI4
  loc_A4ACDF: LitI4 1
  loc_A4ACE4: FStR4 var_C4
  loc_A4ACE7: ILdRf var_CC
  loc_A4ACEA: LitI4 1
  loc_A4ACEF: AndI4
  loc_A4ACF0: CBoolI4
  loc_A4ACF2: NotI4
  loc_A4ACF3: BranchF loc_A4AD05
  loc_A4ACF6: ILdRf var_CC
  loc_A4ACF9: LitI4 2
  loc_A4ACFE: IDvI4
  loc_A4ACFF: FStR4 var_CC
  loc_A4AD02: Branch loc_A4ACE7
  loc_A4AD05: ILdRf var_CC
  loc_A4AD08: CR8I4
  loc_A4AD09: PopFPR8
  loc_A4AD0A: ImpAdCallFPR4 push Sqr()
  loc_A4AD0F: LitI2_Byte 2
  loc_A4AD11: CR8I2
  loc_A4AD12: AddR8
  loc_A4AD13: CI4R8
  loc_A4AD14: FStR4 var_D8
  loc_A4AD17: LitI4 3
  loc_A4AD1C: FStR4 var_D0
  loc_A4AD1F: ILdRf var_D0
  loc_A4AD22: ILdRf var_D8
  loc_A4AD25: LeI4
  loc_A4AD26: BranchF loc_A4ADA3
  loc_A4AD29: ILdRf var_CC
  loc_A4AD2C: ILdRf var_D0
  loc_A4AD2F: IDvI4
  loc_A4AD30: FStR4 var_D4
  loc_A4AD33: ILdRf var_D4
  loc_A4AD36: ILdRf var_D0
  loc_A4AD39: MulI4
  loc_A4AD3A: ILdRf var_CC
  loc_A4AD3D: EqI4
  loc_A4AD3E: BranchF loc_A4AD94
  loc_A4AD41: ILdRf var_D4
  loc_A4AD44: FStR4 var_CC
  loc_A4AD47: ILdRf var_CC
  loc_A4AD4A: ILdRf var_D0
  loc_A4AD4D: IDvI4
  loc_A4AD4E: FStR4 var_D4
  loc_A4AD51: ILdRf var_D4
  loc_A4AD54: ILdRf var_D0
  loc_A4AD57: MulI4
  loc_A4AD58: ILdRf var_CC
  loc_A4AD5B: EqI4
  loc_A4AD5C: BranchT loc_A4AD41
  loc_A4AD5F: FLdPr Me
  loc_A4AD62: MemLdStr global_52
  loc_A4AD65: LitI4 1
  loc_A4AD6A: SubI4
  loc_A4AD6B: ILdRf var_D0
  loc_A4AD6E: IDvI4
  loc_A4AD6F: ILdRf var_C4
  loc_A4AD72: FLdRfVar var_A0
  loc_A4AD75: Ary1StI4
  loc_A4AD76: ILdRf var_C4
  loc_A4AD79: LitI4 1
  loc_A4AD7E: AddI4
  loc_A4AD7F: FStR4 var_C4
  loc_A4AD82: ILdRf var_CC
  loc_A4AD85: CR8I4
  loc_A4AD86: PopFPR8
  loc_A4AD87: ImpAdCallFPR4 push Sqr()
  loc_A4AD8C: LitI2_Byte 2
  loc_A4AD8E: CR8I2
  loc_A4AD8F: AddR8
  loc_A4AD90: CI4R8
  loc_A4AD91: FStR4 var_D8
  loc_A4AD94: ILdRf var_D0
  loc_A4AD97: LitI4 2
  loc_A4AD9C: AddI4
  loc_A4AD9D: FStR4 var_D0
  loc_A4ADA0: Branch loc_A4AD1F
  loc_A4ADA3: ILdRf var_CC
  loc_A4ADA6: LitI4 1
  loc_A4ADAB: GtI4
  loc_A4ADAC: BranchF loc_A4ADD2
  loc_A4ADAF: FLdPr Me
  loc_A4ADB2: MemLdStr global_52
  loc_A4ADB5: LitI4 1
  loc_A4ADBA: SubI4
  loc_A4ADBB: ILdRf var_CC
  loc_A4ADBE: IDvI4
  loc_A4ADBF: ILdRf var_C4
  loc_A4ADC2: FLdRfVar var_A0
  loc_A4ADC5: Ary1StI4
  loc_A4ADC6: ILdRf var_C4
  loc_A4ADC9: LitI4 1
  loc_A4ADCE: AddI4
  loc_A4ADCF: FStR4 var_C4
  loc_A4ADD2: LitI4 2
  loc_A4ADD7: FLdRfVar var_C8
  loc_A4ADDA: FLdPr Me
  loc_A4ADDD: MemLdStr global_52
  loc_A4ADE0: LitI4 1
  loc_A4ADE5: SubI4
  loc_A4ADE6: ForI4 var_E0
  loc_A4ADEC: ILdRf var_C8
  loc_A4ADEF: LitI4 0
  loc_A4ADF4: FLdRfVar var_BC
  loc_A4ADF7: Ary1StI4
  loc_A4ADF8: ILdRf var_C8
  loc_A4ADFB: FStR4 var_D0
  loc_A4ADFE: LitI4 1
  loc_A4AE03: FLdRfVar var_CC
  loc_A4AE06: LitI4 &HD
  loc_A4AE0B: ForI4 var_E8
  loc_A4AE11: FLdRfVar var_EC
  loc_A4AE14: ILdRf var_D0
  loc_A4AE17: ILdRf var_D0
  loc_A4AE1A: ILdRf Me
  loc_A4AE1D: ImpAdCallNonVirt
  loc_A4AE23: ILdRf var_EC
  loc_A4AE26: FStR4 var_D0
  loc_A4AE29: ILdRf var_D0
  loc_A4AE2C: ILdRf var_CC
  loc_A4AE2F: FLdRfVar var_BC
  loc_A4AE32: Ary1StI4
  loc_A4AE33: FLdRfVar var_CC
  loc_A4AE36: NextI4 var_E8, loc_A4AE11
  loc_A4AE3B: LitI4 0
  loc_A4AE40: FLdRfVar var_CC
  loc_A4AE43: ILdRf var_C4
  loc_A4AE46: LitI4 1
  loc_A4AE4B: SubI4
  loc_A4AE4C: ForI4 var_F4
  loc_A4AE52: ILdRf var_CC
  loc_A4AE55: FLdRfVar var_A0
  loc_A4AE58: Ary1LdI4
  loc_A4AE59: FStR4 var_D8
  loc_A4AE5C: LitI4 1
  loc_A4AE61: FStR4 var_D0
  loc_A4AE64: LitI4 0
  loc_A4AE69: FLdRfVar var_D4
  loc_A4AE6C: LitI4 &HD
  loc_A4AE71: ForI4 var_FC
  loc_A4AE77: ILdRf var_D8
  loc_A4AE7A: LitI4 1
  loc_A4AE7F: AndI4
  loc_A4AE80: CBoolI4
  loc_A4AE82: BranchF loc_A4AEA1
  loc_A4AE85: FLdRfVar var_EC
  loc_A4AE88: ILdRf var_D4
  loc_A4AE8B: FLdRfVar var_BC
  loc_A4AE8E: Ary1LdI4
  loc_A4AE8F: ILdRf var_D0
  loc_A4AE92: ILdRf Me
  loc_A4AE95: ImpAdCallNonVirt
  loc_A4AE9B: ILdRf var_EC
  loc_A4AE9E: FStR4 var_D0
  loc_A4AEA1: ILdRf var_D8
  loc_A4AEA4: LitI4 2
  loc_A4AEA9: IDvI4
  loc_A4AEAA: FStR4 var_D8
  loc_A4AEAD: ILdRf var_D8
  loc_A4AEB0: LitI4 0
  loc_A4AEB5: EqI4
  loc_A4AEB6: BranchF loc_A4AEBC
  loc_A4AEB9: Branch loc_A4AEC4
  loc_A4AEBC: FLdRfVar var_D4
  loc_A4AEBF: NextI4 var_FC, loc_A4AE77
  loc_A4AEC4: ILdRf var_D0
  loc_A4AEC7: LitI4 1
  loc_A4AECC: EqI4
  loc_A4AECD: BranchF loc_A4AED3
  loc_A4AED0: Branch loc_A4AEDB
  loc_A4AED3: FLdRfVar var_CC
  loc_A4AED6: NextI4 var_F4, loc_A4AE52
  loc_A4AEDB: ILdRf var_CC
  loc_A4AEDE: ILdRf var_C4
  loc_A4AEE1: GeI4
  loc_A4AEE2: BranchF loc_A4AEF1
  loc_A4AEE5: ILdRf var_C8
  loc_A4AEE8: FStR4 var_88
  loc_A4AEEB: ExitProcCbHresult
  loc_A4AEF1: FLdRfVar var_C8
  loc_A4AEF4: NextI4 var_E0, loc_A4ADEC
  loc_A4AEF9: ExitProcCbHresult
  loc_A4AEFF: SubI4
End Function

Private Function Proc_279_4_A43D98(arg_C, arg_10, arg_14) 'A43D98
  'Data Table: 404438
  loc_A43B14: ILdRf arg_C
  loc_A43B17: LitI4 1
  loc_A43B1C: LeI4
  loc_A43B1D: ILdRf arg_C
  loc_A43B20: LitI4 &H4000
  loc_A43B25: GtI4
  loc_A43B26: OrI4
  loc_A43B27: BranchF loc_A43B30
  loc_A43B2A: ExitProcCbHresult
  loc_A43B30: ILdRf arg_C
  loc_A43B33: LitI4 2
  loc_A43B38: EqI4
  loc_A43B39: BranchF loc_A43B98
  loc_A43B3C: LitI4 2
  loc_A43B41: FLdPr Me
  loc_A43B44: MemStI4 global_52
  loc_A43B47: LitI4 2
  loc_A43B4C: FLdPr Me
  loc_A43B4F: MemStI4 global_56
  loc_A43B52: LitI4 1
  loc_A43B57: FLdPr Me
  loc_A43B5A: MemStI4 global_60
  loc_A43B5D: LitI2_Byte 0
  loc_A43B5F: LitI4 0
  loc_A43B64: FLdPr Me
  loc_A43B67: MemLdRfVar from_stack_1.global_68
  loc_A43B6A: Ary1StI2
  loc_A43B6B: LitI2_Byte 0
  loc_A43B6D: LitI4 1
  loc_A43B72: FLdPr Me
  loc_A43B75: MemLdRfVar from_stack_1.global_68
  loc_A43B78: Ary1StI2
  loc_A43B79: LitI2_Byte 1
  loc_A43B7B: LitI4 0
  loc_A43B80: FLdPr Me
  loc_A43B83: MemLdRfVar from_stack_1.global_96
  loc_A43B86: Ary1StI2
  loc_A43B87: LitI2_Byte 1
  loc_A43B89: LitI4 1
  loc_A43B8E: FLdPr Me
  loc_A43B91: MemLdRfVar from_stack_1.global_96
  loc_A43B94: Ary1StI2
  loc_A43B95: Branch loc_A43D8D
  loc_A43B98: ILdRf arg_C
  loc_A43B9B: ILdRf arg_C
  loc_A43B9E: LitI4 1
  loc_A43BA3: SubI4
  loc_A43BA4: AndI4
  loc_A43BA5: LitI4 0
  loc_A43BAA: EqI4
  loc_A43BAB: BranchF loc_A43CAD
  loc_A43BAE: ILdRf arg_10
  loc_A43BB1: LitI4 0
  loc_A43BB6: EqI4
  loc_A43BB7: BranchF loc_A43BC0
  loc_A43BBA: ExitProcCbHresult
  loc_A43BC0: ILdRf arg_C
  loc_A43BC3: FLdPr Me
  loc_A43BC6: MemStI4 global_52
  loc_A43BC9: ILdRf arg_10
  loc_A43BCC: FLdPr Me
  loc_A43BCF: MemStI4 global_56
  loc_A43BD2: ILdRf arg_14
  loc_A43BD5: LitI4 0
  loc_A43BDA: EqI4
  loc_A43BDB: BranchF loc_A43BF0
  loc_A43BDE: FLdRfVar var_98
  loc_A43BE1: ILdRf Me
  loc_A43BE4: ImpAdCallNonVirt
  loc_A43BEA: ILdRf var_98
  loc_A43BED: FStR4 arg_14
  loc_A43BF0: ILdRf arg_14
  loc_A43BF3: FLdPr Me
  loc_A43BF6: MemStI4 global_60
  loc_A43BF9: LitI2_Byte 0
  loc_A43BFB: LitI4 0
  loc_A43C00: FLdPr Me
  loc_A43C03: MemLdRfVar from_stack_1.global_68
  loc_A43C06: Ary1StI2
  loc_A43C07: LitI2_Byte 0
  loc_A43C09: LitI4 1
  loc_A43C0E: FLdPr Me
  loc_A43C11: MemLdRfVar from_stack_1.global_68
  loc_A43C14: Ary1StI2
  loc_A43C15: LitI2_Byte 1
  loc_A43C17: ILdRf arg_14
  loc_A43C1A: FLdPr Me
  loc_A43C1D: MemLdRfVar from_stack_1.global_68
  loc_A43C20: Ary1StI2
  loc_A43C21: LitI2_Byte 1
  loc_A43C23: LitI4 0
  loc_A43C28: FLdPr Me
  loc_A43C2B: MemLdRfVar from_stack_1.global_96
  loc_A43C2E: Ary1StI2
  loc_A43C2F: LitI2_Byte 1
  loc_A43C31: ILdRf arg_C
  loc_A43C34: LitI4 1
  loc_A43C39: SubI4
  loc_A43C3A: FLdPr Me
  loc_A43C3D: MemLdRfVar from_stack_1.global_96
  loc_A43C40: Ary1StI2
  loc_A43C41: ILdRf arg_14
  loc_A43C44: CI2I4
  loc_A43C45: LitI4 1
  loc_A43C4A: FLdPr Me
  loc_A43C4D: MemLdRfVar from_stack_1.global_96
  loc_A43C50: Ary1StI2
  loc_A43C51: ILdRf arg_14
  loc_A43C54: FStR4 var_90
  loc_A43C57: LitI4 2
  loc_A43C5C: FLdRfVar var_8C
  loc_A43C5F: ILdRf arg_C
  loc_A43C62: LitI4 2
  loc_A43C67: SubI4
  loc_A43C68: ForI4 var_A0
  loc_A43C6E: FLdRfVar var_98
  loc_A43C71: ILdRf arg_14
  loc_A43C74: ILdRf var_90
  loc_A43C77: ILdRf Me
  loc_A43C7A: ImpAdCallNonVirt
  loc_A43C80: ILdRf var_98
  loc_A43C83: FStR4 var_90
  loc_A43C86: ILdRf var_8C
  loc_A43C89: CI2I4
  loc_A43C8A: ILdRf var_90
  loc_A43C8D: FLdPr Me
  loc_A43C90: MemLdRfVar from_stack_1.global_68
  loc_A43C93: Ary1StI2
  loc_A43C94: ILdRf var_90
  loc_A43C97: CI2I4
  loc_A43C98: ILdRf var_8C
  loc_A43C9B: FLdPr Me
  loc_A43C9E: MemLdRfVar from_stack_1.global_96
  loc_A43CA1: Ary1StI2
  loc_A43CA2: FLdRfVar var_8C
  loc_A43CA5: NextI4 var_A0, loc_A43C6E
  loc_A43CAA: Branch loc_A43D8D
  loc_A43CAD: ILdRf arg_C
  loc_A43CB0: FLdPr Me
  loc_A43CB3: MemStI4 global_52
  loc_A43CB6: ILdRf arg_C
  loc_A43CB9: FLdPr Me
  loc_A43CBC: MemStI4 global_56
  loc_A43CBF: ILdRf arg_14
  loc_A43CC2: LitI4 0
  loc_A43CC7: EqI4
  loc_A43CC8: BranchF loc_A43CDD
  loc_A43CCB: FLdRfVar var_98
  loc_A43CCE: ILdRf Me
  loc_A43CD1: ImpAdCallNonVirt
  loc_A43CD7: ILdRf var_98
  loc_A43CDA: FStR4 arg_14
  loc_A43CDD: ILdRf arg_14
  loc_A43CE0: FLdPr Me
  loc_A43CE3: MemStI4 global_60
  loc_A43CE6: LitI2_Byte 0
  loc_A43CE8: LitI4 0
  loc_A43CED: FLdPr Me
  loc_A43CF0: MemLdRfVar from_stack_1.global_68
  loc_A43CF3: Ary1StI2
  loc_A43CF4: LitI2_Byte 0
  loc_A43CF6: LitI4 1
  loc_A43CFB: FLdPr Me
  loc_A43CFE: MemLdRfVar from_stack_1.global_68
  loc_A43D01: Ary1StI2
  loc_A43D02: LitI2_Byte 1
  loc_A43D04: ILdRf arg_14
  loc_A43D07: FLdPr Me
  loc_A43D0A: MemLdRfVar from_stack_1.global_68
  loc_A43D0D: Ary1StI2
  loc_A43D0E: LitI2_Byte 1
  loc_A43D10: LitI4 0
  loc_A43D15: FLdPr Me
  loc_A43D18: MemLdRfVar from_stack_1.global_96
  loc_A43D1B: Ary1StI2
  loc_A43D1C: LitI2_Byte 1
  loc_A43D1E: ILdRf arg_C
  loc_A43D21: LitI4 1
  loc_A43D26: SubI4
  loc_A43D27: FLdPr Me
  loc_A43D2A: MemLdRfVar from_stack_1.global_96
  loc_A43D2D: Ary1StI2
  loc_A43D2E: ILdRf arg_14
  loc_A43D31: CI2I4
  loc_A43D32: LitI4 1
  loc_A43D37: FLdPr Me
  loc_A43D3A: MemLdRfVar from_stack_1.global_96
  loc_A43D3D: Ary1StI2
  loc_A43D3E: ILdRf arg_14
  loc_A43D41: FStR4 var_90
  loc_A43D44: LitI4 2
  loc_A43D49: FLdRfVar var_8C
  loc_A43D4C: ILdRf arg_C
  loc_A43D4F: LitI4 2
  loc_A43D54: SubI4
  loc_A43D55: ForI4 var_A8
  loc_A43D5B: ILdRf var_90
  loc_A43D5E: ILdRf arg_14
  loc_A43D61: MulI4
  loc_A43D62: ILdRf arg_C
  loc_A43D65: ModI4
  loc_A43D66: FStR4 var_90
  loc_A43D69: ILdRf var_8C
  loc_A43D6C: CI2I4
  loc_A43D6D: ILdRf var_90
  loc_A43D70: FLdPr Me
  loc_A43D73: MemLdRfVar from_stack_1.global_68
  loc_A43D76: Ary1StI2
  loc_A43D77: ILdRf var_90
  loc_A43D7A: CI2I4
  loc_A43D7B: ILdRf var_8C
  loc_A43D7E: FLdPr Me
  loc_A43D81: MemLdRfVar from_stack_1.global_96
  loc_A43D84: Ary1StI2
  loc_A43D85: FLdRfVar var_8C
  loc_A43D88: NextI4 var_A8, loc_A43D5B
  loc_A43D8D: LitI2_Byte &HFF
  loc_A43D8F: FStI2 var_86
  loc_A43D92: ExitProcCbHresult
End Function

Private Function Proc_279_5_992FF0(arg_C, arg_10) '992FF0
  'Data Table: 404438
  loc_992F94: FLdPr Me
  loc_992F97: MemLdStr global_52
  loc_992F9A: FLdPr Me
  loc_992F9D: MemLdStr global_52
  loc_992FA0: LitI4 1
  loc_992FA5: SubI4
  loc_992FA6: AndI4
  loc_992FA7: LitI4 0
  loc_992FAC: EqI4
  loc_992FAD: BranchF loc_992FBE
  loc_992FB0: ILdRf arg_C
  loc_992FB3: ILdRf arg_10
  loc_992FB6: XorI4
  loc_992FB8: FStR4 var_88
  loc_992FBB: Branch loc_992FE8
  loc_992FBE: ILdRf arg_C
  loc_992FC1: ILdRf arg_10
  loc_992FC4: AddI4
  loc_992FC5: FStR4 arg_C
  loc_992FC8: ILdRf arg_C
  loc_992FCB: FLdPr Me
  loc_992FCE: MemLdStr global_52
  loc_992FD1: GeI4
  loc_992FD2: BranchF loc_992FE2
  loc_992FD5: ILdRf arg_C
  loc_992FD8: FLdPr Me
  loc_992FDB: MemLdStr global_52
  loc_992FDE: SubI4
  loc_992FDF: FStR4 arg_C
  loc_992FE2: ILdRf arg_C
  loc_992FE5: FStR4 var_88
  loc_992FE8: ExitProcCbHresult
End Function

Private Function Proc_279_6_984E30(arg_C) '984E30
  'Data Table: 404438
  loc_984DEC: FLdPr Me
  loc_984DEF: MemLdStr global_52
  loc_984DF2: FLdPr Me
  loc_984DF5: MemLdStr global_52
  loc_984DF8: LitI4 1
  loc_984DFD: SubI4
  loc_984DFE: AndI4
  loc_984DFF: LitI4 0
  loc_984E04: EqI4
  loc_984E05: ILdRf arg_C
  loc_984E08: LitI4 0
  loc_984E0D: EqI4
  loc_984E0E: OrI4
  loc_984E0F: BranchF loc_984E1B
  loc_984E12: ILdRf arg_C
  loc_984E15: FStR4 var_88
  loc_984E18: Branch loc_984E28
  loc_984E1B: FLdPr Me
  loc_984E1E: MemLdStr global_52
  loc_984E21: ILdRf arg_C
  loc_984E24: SubI4
  loc_984E25: FStR4 var_88
  loc_984E28: ExitProcCbHresult
  loc_984E2E: MemLdPr global_-16129
End Function

Private Function Proc_279_7_9933C4(arg_C, arg_10) '9933C4
  'Data Table: 404438
  loc_993368: FLdPr Me
  loc_99336B: MemLdStr global_52
  loc_99336E: FLdPr Me
  loc_993371: MemLdStr global_52
  loc_993374: LitI4 1
  loc_993379: SubI4
  loc_99337A: AndI4
  loc_99337B: LitI4 0
  loc_993380: EqI4
  loc_993381: BranchF loc_993392
  loc_993384: ILdRf arg_C
  loc_993387: ILdRf arg_10
  loc_99338A: XorI4
  loc_99338C: FStR4 var_88
  loc_99338F: Branch loc_9933BB
  loc_993392: ILdRf arg_C
  loc_993395: ILdRf arg_10
  loc_993398: SubI4
  loc_993399: FStR4 arg_C
  loc_99339C: ILdRf arg_C
  loc_99339F: LitI4 0
  loc_9933A4: LtI4
  loc_9933A5: BranchF loc_9933B5
  loc_9933A8: ILdRf arg_C
  loc_9933AB: FLdPr Me
  loc_9933AE: MemLdStr global_52
  loc_9933B1: AddI4
  loc_9933B2: FStR4 arg_C
  loc_9933B5: ILdRf arg_C
  loc_9933B8: FStR4 var_88
  loc_9933BB: ExitProcCbHresult
  loc_9933C1: ILdRf var_90
End Function

Private Function Proc_279_8_998E90(arg_C, arg_10) '998E90
  'Data Table: 404438
  loc_998E20: ILdRf arg_C
  loc_998E23: LitI4 0
  loc_998E28: EqI4
  loc_998E29: ILdRf arg_10
  loc_998E2C: LitI4 0
  loc_998E31: EqI4
  loc_998E32: OrI4
  loc_998E33: BranchF loc_998E3C
  loc_998E36: ExitProcCbHresult
  loc_998E3C: ILdRf arg_C
  loc_998E3F: FLdPr Me
  loc_998E42: MemLdRfVar from_stack_1.global_68
  loc_998E45: Ary1LdI2
  loc_998E46: ILdRf arg_10
  loc_998E49: FLdPr Me
  loc_998E4C: MemLdRfVar from_stack_1.global_68
  loc_998E4F: Ary1LdI2
  loc_998E50: AddI2
  loc_998E51: CI4UI1
  loc_998E52: FStR4 arg_C
  loc_998E55: ILdRf arg_C
  loc_998E58: FLdPr Me
  loc_998E5B: MemLdStr global_52
  loc_998E5E: LitI4 1
  loc_998E63: SubI4
  loc_998E64: GeI4
  loc_998E65: BranchF loc_998E7B
  loc_998E68: ILdRf arg_C
  loc_998E6B: FLdPr Me
  loc_998E6E: MemLdStr global_52
  loc_998E71: SubI4
  loc_998E72: LitI4 1
  loc_998E77: AddI4
  loc_998E78: FStR4 arg_C
  loc_998E7B: ILdRf arg_C
  loc_998E7E: FLdPr Me
  loc_998E81: MemLdRfVar from_stack_1.global_96
  loc_998E84: Ary1LdI2
  loc_998E85: CI4UI1
  loc_998E86: FStR4 var_88
  loc_998E89: ExitProcCbHresult
End Function

Private Function Proc_279_9_9C8A88(arg_C, arg_10) '9C8A88
  'Data Table: 404438
  loc_9C899C: ILdRf arg_C
  loc_9C899F: LitI4 0
  loc_9C89A4: EqI4
  loc_9C89A5: ILdRf arg_10
  loc_9C89A8: LitI4 0
  loc_9C89AD: EqI4
  loc_9C89AE: OrI4
  loc_9C89AF: BranchF loc_9C89B8
  loc_9C89B2: ExitProcCbHresult
  loc_9C89B8: FLdPr Me
  loc_9C89BB: MemLdStr global_52
  loc_9C89BE: LitI4 2
  loc_9C89C3: EqI4
  loc_9C89C4: BranchF loc_9C89D2
  loc_9C89C7: LitI4 1
  loc_9C89CC: FStR4 var_88
  loc_9C89CF: Branch loc_9C8A82
  loc_9C89D2: FLdPr Me
  loc_9C89D5: MemLdStr global_52
  loc_9C89D8: FLdPr Me
  loc_9C89DB: MemLdStr global_52
  loc_9C89DE: LitI4 1
  loc_9C89E3: SubI4
  loc_9C89E4: AndI4
  loc_9C89E5: LitI4 0
  loc_9C89EA: EqI4
  loc_9C89EB: BranchF loc_9C8A71
  loc_9C89EE: LitI4 1
  loc_9C89F3: FStR4 var_8C
  loc_9C89F6: ILdRf arg_10
  loc_9C89F9: ILdRf var_8C
  loc_9C89FC: AndI4
  loc_9C89FD: CBoolI4
  loc_9C89FF: BranchF loc_9C8A18
  loc_9C8A02: ILdRf arg_10
  loc_9C8A05: ILdRf var_8C
  loc_9C8A08: XorI4
  loc_9C8A0A: FStR4 arg_10
  loc_9C8A0D: ILdRf var_90
  loc_9C8A10: ILdRf arg_C
  loc_9C8A13: XorI4
  loc_9C8A15: FStR4 var_90
  loc_9C8A18: ILdRf arg_10
  loc_9C8A1B: LitI4 0
  loc_9C8A20: EqI4
  loc_9C8A21: BranchF loc_9C8A27
  loc_9C8A24: Branch loc_9C8A68
  loc_9C8A27: ILdRf var_8C
  loc_9C8A2A: ILdRf var_8C
  loc_9C8A2D: AddI4
  loc_9C8A2E: FStR4 var_8C
  loc_9C8A31: ILdRf arg_C
  loc_9C8A34: ILdRf arg_C
  loc_9C8A37: AddI4
  loc_9C8A38: FStR4 arg_C
  loc_9C8A3B: ILdRf arg_C
  loc_9C8A3E: FLdPr Me
  loc_9C8A41: MemLdStr global_52
  loc_9C8A44: AndI4
  loc_9C8A45: CBoolI4
  loc_9C8A47: BranchF loc_9C8A65
  loc_9C8A4A: ILdRf arg_C
  loc_9C8A4D: FLdPr Me
  loc_9C8A50: MemLdStr global_56
  loc_9C8A53: XorI4
  loc_9C8A55: FLdPr Me
  loc_9C8A58: MemLdStr global_52
  loc_9C8A5B: LitI4 1
  loc_9C8A60: SubI4
  loc_9C8A61: AndI4
  loc_9C8A62: FStR4 arg_C
  loc_9C8A65: Branch loc_9C89F6
  loc_9C8A68: ILdRf var_90
  loc_9C8A6B: FStR4 var_88
  loc_9C8A6E: Branch loc_9C8A82
  loc_9C8A71: ILdRf arg_C
  loc_9C8A74: ILdRf arg_10
  loc_9C8A77: MulI4
  loc_9C8A78: FLdPr Me
  loc_9C8A7B: MemLdStr global_52
  loc_9C8A7E: ModI4
  loc_9C8A7F: FStR4 var_88
  loc_9C8A82: ExitProcCbHresult
End Function

Private Function Proc_279_10_980A78(arg_C) '980A78
  'Data Table: 404438
  loc_980A3C: ILdRf arg_C
  loc_980A3F: LitI4 0
  loc_980A44: EqI4
  loc_980A45: BranchF loc_980A4E
  loc_980A48: ExitProcCbHresult
  loc_980A4E: FLdPr Me
  loc_980A51: MemLdStr global_52
  loc_980A54: LitI4 1
  loc_980A59: SubI4
  loc_980A5A: ILdRf arg_C
  loc_980A5D: FLdPr Me
  loc_980A60: MemLdRfVar from_stack_1.global_68
  loc_980A63: Ary1LdI2
  loc_980A64: CI4UI1
  loc_980A65: SubI4
  loc_980A66: FLdPr Me
  loc_980A69: MemLdRfVar from_stack_1.global_96
  loc_980A6C: Ary1LdI2
  loc_980A6D: CI4UI1
  loc_980A6E: FStR4 var_88
  loc_980A71: ExitProcCbHresult
End Function

Private Function Proc_279_11_9C28E8(arg_C) '9C28E8
  'Data Table: 404438
  loc_9C280C: ILdRf arg_C
  loc_9C280F: LitI4 0
  loc_9C2814: EqI4
  loc_9C2815: BranchF loc_9C281E
  loc_9C2818: ExitProcCbHresult
  loc_9C281E: FLdPr Me
  loc_9C2821: MemLdStr global_52
  loc_9C2824: LitI4 2
  loc_9C2829: EqI4
  loc_9C282A: BranchF loc_9C2838
  loc_9C282D: LitI4 1
  loc_9C2832: FStR4 var_88
  loc_9C2835: Branch loc_9C28E1
  loc_9C2838: FLdPr Me
  loc_9C283B: MemLdStr global_52
  loc_9C283E: FLdPr Me
  loc_9C2841: MemLdStr global_52
  loc_9C2844: LitI4 1
  loc_9C2849: SubI4
  loc_9C284A: AndI4
  loc_9C284B: LitI4 0
  loc_9C2850: EqI4
  loc_9C2851: BranchF loc_9C2857
  loc_9C2854: Branch loc_9C28E1
  loc_9C2857: FLdPr Me
  loc_9C285A: MemLdStr global_52
  loc_9C285D: FStR4 var_8C
  loc_9C2860: LitI4 1
  loc_9C2865: FStR4 var_98
  loc_9C2868: ILdRf arg_C
  loc_9C286B: LitI4 0
  loc_9C2870: NeI4
  loc_9C2871: BranchF loc_9C28B5
  loc_9C2874: ILdRf var_8C
  loc_9C2877: ILdRf arg_C
  loc_9C287A: IDvI4
  loc_9C287B: FStR4 var_90
  loc_9C287E: ILdRf var_8C
  loc_9C2881: ILdRf var_90
  loc_9C2884: ILdRf arg_C
  loc_9C2887: MulI4
  loc_9C2888: SubI4
  loc_9C2889: FStR4 var_94
  loc_9C288C: ILdRf arg_C
  loc_9C288F: FStR4 var_8C
  loc_9C2892: ILdRf var_94
  loc_9C2895: FStR4 arg_C
  loc_9C2898: ILdRf var_9C
  loc_9C289B: ILdRf var_90
  loc_9C289E: ILdRf var_98
  loc_9C28A1: MulI4
  loc_9C28A2: SubI4
  loc_9C28A3: FStR4 var_94
  loc_9C28A6: ILdRf var_98
  loc_9C28A9: FStR4 var_9C
  loc_9C28AC: ILdRf var_94
  loc_9C28AF: FStR4 var_98
  loc_9C28B2: Branch loc_9C2868
  loc_9C28B5: ILdRf var_9C
  loc_9C28B8: FLdPr Me
  loc_9C28BB: MemLdStr global_52
  loc_9C28BE: ModI4
  loc_9C28BF: FStR4 var_9C
  loc_9C28C2: ILdRf var_9C
  loc_9C28C5: LitI4 0
  loc_9C28CA: LtI4
  loc_9C28CB: BranchF loc_9C28DB
  loc_9C28CE: ILdRf var_9C
  loc_9C28D1: FLdPr Me
  loc_9C28D4: MemLdStr global_52
  loc_9C28D7: AddI4
  loc_9C28D8: FStR4 var_9C
  loc_9C28DB: ILdRf var_9C
  loc_9C28DE: FStR4 var_88
  loc_9C28E1: ExitProcCbHresult
End Function

Private Function Proc_279_12_995810(arg_C, arg_10) '995810
  'Data Table: 404438
  loc_9957A8: ILdRf arg_C
  loc_9957AB: LitI4 0
  loc_9957B0: EqI4
  loc_9957B1: ILdRf arg_10
  loc_9957B4: LitI4 0
  loc_9957B9: EqI4
  loc_9957BA: OrI4
  loc_9957BB: BranchF loc_9957C4
  loc_9957BE: ExitProcCbHresult
  loc_9957C4: ILdRf arg_C
  loc_9957C7: FLdPr Me
  loc_9957CA: MemLdRfVar from_stack_1.global_68
  loc_9957CD: Ary1LdI2
  loc_9957CE: ILdRf arg_10
  loc_9957D1: FLdPr Me
  loc_9957D4: MemLdRfVar from_stack_1.global_68
  loc_9957D7: Ary1LdI2
  loc_9957D8: SubI2
  loc_9957D9: CI4UI1
  loc_9957DA: FStR4 arg_C
  loc_9957DD: ILdRf arg_C
  loc_9957E0: LitI4 0
  loc_9957E5: LtI4
  loc_9957E6: BranchF loc_9957FC
  loc_9957E9: ILdRf arg_C
  loc_9957EC: FLdPr Me
  loc_9957EF: MemLdStr global_52
  loc_9957F2: AddI4
  loc_9957F3: LitI4 1
  loc_9957F8: SubI4
  loc_9957F9: FStR4 arg_C
  loc_9957FC: ILdRf arg_C
  loc_9957FF: FLdPr Me
  loc_995802: MemLdRfVar from_stack_1.global_96
  loc_995805: Ary1LdI2
  loc_995806: CI4UI1
  loc_995807: FStR4 var_88
  loc_99580A: ExitProcCbHresult
End Function

Private Function Proc_279_13_9C8850(arg_C, arg_10) '9C8850
  'Data Table: 404438
  loc_9C8764: ILdRf arg_C
  loc_9C8767: LitI4 0
  loc_9C876C: EqI4
  loc_9C876D: ILdRf arg_10
  loc_9C8770: LitI4 0
  loc_9C8775: EqI4
  loc_9C8776: OrI4
  loc_9C8777: BranchF loc_9C8780
  loc_9C877A: ExitProcCbHresult
  loc_9C8780: FLdPr Me
  loc_9C8783: MemLdStr global_52
  loc_9C8786: LitI4 2
  loc_9C878B: EqI4
  loc_9C878C: BranchF loc_9C879A
  loc_9C878F: LitI4 1
  loc_9C8794: FStR4 var_88
  loc_9C8797: Branch loc_9C8847
  loc_9C879A: FLdPr Me
  loc_9C879D: MemLdStr global_52
  loc_9C87A0: FLdPr Me
  loc_9C87A3: MemLdStr global_52
  loc_9C87A6: LitI4 1
  loc_9C87AB: SubI4
  loc_9C87AC: AndI4
  loc_9C87AD: LitI4 0
  loc_9C87B2: EqI4
  loc_9C87B3: BranchF loc_9C87B9
  loc_9C87B6: Branch loc_9C8847
  loc_9C87B9: FLdPr Me
  loc_9C87BC: MemLdStr global_52
  loc_9C87BF: FStR4 var_8C
  loc_9C87C2: LitI4 1
  loc_9C87C7: FStR4 var_98
  loc_9C87CA: ILdRf arg_10
  loc_9C87CD: LitI4 0
  loc_9C87D2: NeI4
  loc_9C87D3: BranchF loc_9C8817
  loc_9C87D6: ILdRf var_8C
  loc_9C87D9: ILdRf arg_10
  loc_9C87DC: IDvI4
  loc_9C87DD: FStR4 var_90
  loc_9C87E0: ILdRf var_8C
  loc_9C87E3: ILdRf var_90
  loc_9C87E6: ILdRf arg_10
  loc_9C87E9: MulI4
  loc_9C87EA: SubI4
  loc_9C87EB: FStR4 var_94
  loc_9C87EE: ILdRf arg_10
  loc_9C87F1: FStR4 var_8C
  loc_9C87F4: ILdRf var_94
  loc_9C87F7: FStR4 arg_10
  loc_9C87FA: ILdRf var_9C
  loc_9C87FD: ILdRf var_90
  loc_9C8800: ILdRf var_98
  loc_9C8803: MulI4
  loc_9C8804: SubI4
  loc_9C8805: FStR4 var_94
  loc_9C8808: ILdRf var_98
  loc_9C880B: FStR4 var_9C
  loc_9C880E: ILdRf var_94
  loc_9C8811: FStR4 var_98
  loc_9C8814: Branch loc_9C87CA
  loc_9C8817: ILdRf arg_C
  loc_9C881A: ILdRf var_9C
  loc_9C881D: MulI4
  loc_9C881E: FLdPr Me
  loc_9C8821: MemLdStr global_52
  loc_9C8824: ModI4
  loc_9C8825: FStR4 var_9C
  loc_9C8828: ILdRf var_9C
  loc_9C882B: LitI4 0
  loc_9C8830: LtI4
  loc_9C8831: BranchF loc_9C8841
  loc_9C8834: ILdRf var_9C
  loc_9C8837: FLdPr Me
  loc_9C883A: MemLdStr global_52
  loc_9C883D: AddI4
  loc_9C883E: FStR4 var_9C
  loc_9C8841: ILdRf var_9C
  loc_9C8844: FStR4 var_88
  loc_9C8847: ExitProcCbHresult
End Function

Private Function Proc_279_14_9490D8(arg_C) '9490D8
  'Data Table: 404438
  loc_9490C4: ILdRf arg_C
  loc_9490C7: FLdPr Me
  loc_9490CA: MemLdRfVar from_stack_1.global_68
  loc_9490CD: Ary1LdI2
  loc_9490CE: CI4UI1
  loc_9490CF: FStR4 var_88
  loc_9490D2: ExitProcCbHresult
End Function

Private Function Proc_279_15_989B64(arg_C) '989B64
  'Data Table: 404438
  loc_989B1C: ILdRf arg_C
  loc_989B1F: FLdPr Me
  loc_989B22: MemLdStr global_52
  loc_989B25: LitI4 1
  loc_989B2A: SubI4
  loc_989B2B: ModI4
  loc_989B2C: FStR4 arg_C
  loc_989B2F: ILdRf arg_C
  loc_989B32: LitI4 0
  loc_989B37: LtI4
  loc_989B38: BranchF loc_989B4E
  loc_989B3B: ILdRf arg_C
  loc_989B3E: FLdPr Me
  loc_989B41: MemLdStr global_52
  loc_989B44: AddI4
  loc_989B45: LitI4 1
  loc_989B4A: SubI4
  loc_989B4B: FStR4 arg_C
  loc_989B4E: ILdRf arg_C
  loc_989B51: FLdPr Me
  loc_989B54: MemLdRfVar from_stack_1.global_96
  loc_989B57: Ary1LdI2
  loc_989B58: CI4UI1
  loc_989B59: FStR4 var_88
  loc_989B5C: ExitProcCbHresult
End Function
