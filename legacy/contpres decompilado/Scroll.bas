
Private Function Proc_264_0_9758D8() '9758D8
  'Data Table: 40221C
  loc_9758AC: ILdPr
  loc_9758AF: LateMemLdVar
  loc_9758B4: PopAd
  loc_9758B6: ImpAdLdRf MemVar_402288
  loc_9758B9: LitI4 -4
  loc_9758BE: FLdRfVar var_94
  loc_9758C1: CI4Var
  loc_9758C3: ImpAdCallI2 SetWindowLong(, , )
  loc_9758C8: FStR4 var_98
  loc_9758CB: SetLastSystemError
  loc_9758CC: ILdRf var_98
  loc_9758CF: FMemStI4 arg_8(0)
  loc_9758D4: FFree1Var var_94 = ""
  loc_9758D7: ExitProc
End Function

Private Function Proc_264_1_96D788() '96D788
  'Data Table: 40221C
  loc_96D764: ILdPr
  loc_96D767: LateMemLdVar
  loc_96D76C: PopAd
  loc_96D76E: FMemLdR4 arg_8(0)
  loc_96D773: LitI4 -4
  loc_96D778: FLdRfVar var_94
  loc_96D77B: CI4Var
  loc_96D77D: ImpAdCallFPR4 SetWindowLong(, , )
  loc_96D782: SetLastSystemError
  loc_96D783: FFree1Var var_94 = ""
  loc_96D786: ExitProc
End Function

Private Function Proc_264_2_9EBF00(arg_C, arg_10, arg_14, arg_18) '9EBF00
  'Data Table: 40221C
  loc_9EBDC8: LitStr "DataGridSplitVScroll"
  loc_9EBDCB: FLdRfVar var_94
  loc_9EBDCE: CStr2Ansi
  loc_9EBDCF: ILdRf var_94
  loc_9EBDD2: LitStr "ScrollBar"
  loc_9EBDD5: FLdRfVar var_90
  loc_9EBDD8: CStr2Ansi
  loc_9EBDD9: ILdRf var_90
  loc_9EBDDC: LitI4 0
  loc_9EBDE1: ILdRf arg_C
  loc_9EBDE4: ImpAdCallI2 FindWindowEx(, , , )
  loc_9EBDE9: FStR4 var_98
  loc_9EBDEC: SetLastSystemError
  loc_9EBDED: ILdRf var_98
  loc_9EBDF0: FStR4 var_8C
  loc_9EBDF3: FFreeStr var_90 = ""
  loc_9EBDFA: FLdRfVar arg_C
  loc_9EBDFD: ImpAdCallI2 Proc_264_3_99F368()
  loc_9EBE02: FStStrNoPop var_90
  loc_9EBE05: LitStr "DataGridWndClass"
  loc_9EBE08: EqStr
  loc_9EBE0A: ILdRf var_8C
  loc_9EBE0D: LitI4 0
  loc_9EBE12: EqI4
  loc_9EBE13: AndI4
  loc_9EBE14: FFree1Str var_90
  loc_9EBE17: BranchF loc_9EBE3B
  loc_9EBE1A: ILdRf arg_18
  loc_9EBE1D: ILdRf arg_14
  loc_9EBE20: ILdRf arg_10
  loc_9EBE23: ILdRf arg_C
  loc_9EBE26: FMemLdR4 arg_8(0)
  loc_9EBE2B: ImpAdCallI2 CallWindowProc(, , , , )
  loc_9EBE30: FStR4 var_98
  loc_9EBE33: SetLastSystemError
  loc_9EBE34: ILdRf var_98
  loc_9EBE37: FStR4 var_88
  loc_9EBE3A: ExitProc
  loc_9EBE3B: ILdRf arg_10
  loc_9EBE3E: LitI4 &H20A
  loc_9EBE43: EqI4
  loc_9EBE44: BranchF loc_9EBEDE
  loc_9EBE47: FLdRfVar arg_C
  loc_9EBE4A: ImpAdCallI2 Proc_264_3_99F368()
  loc_9EBE4F: FStStrNoPop var_90
  loc_9EBE52: LitStr "DataGridWndClass"
  loc_9EBE55: EqStr
  loc_9EBE57: ILdRf var_8C
  loc_9EBE5A: LitI4 0
  loc_9EBE5F: NeI4
  loc_9EBE60: AndI4
  loc_9EBE61: FFree1Str var_90
  loc_9EBE64: BranchF loc_9EBEA5
  loc_9EBE67: ILdRf arg_14
  loc_9EBE6A: LitI4 0
  loc_9EBE6F: LtI4
  loc_9EBE70: BranchF loc_9EBE8C
  loc_9EBE73: ILdRf var_8C
  loc_9EBE76: LitI4 1
  loc_9EBE7B: LitI4 &H115
  loc_9EBE80: ILdRf arg_C
  loc_9EBE83: ImpAdCallFPR4 SendMessage(, , , )
  loc_9EBE88: SetLastSystemError
  loc_9EBE89: Branch loc_9EBEA2
  loc_9EBE8C: ILdRf var_8C
  loc_9EBE8F: LitI4 0
  loc_9EBE94: LitI4 &H115
  loc_9EBE99: ILdRf arg_C
  loc_9EBE9C: ImpAdCallFPR4 SendMessage(, , , )
  loc_9EBEA1: SetLastSystemError
  loc_9EBEA2: Branch loc_9EBEDE
  loc_9EBEA5: ILdRf arg_14
  loc_9EBEA8: LitI4 0
  loc_9EBEAD: LtI4
  loc_9EBEAE: BranchF loc_9EBEC9
  loc_9EBEB1: LitI2_Byte 0
  loc_9EBEB3: LitI4 1
  loc_9EBEB8: LitI4 &H115
  loc_9EBEBD: ILdRf arg_C
  loc_9EBEC0: ImpAdCallFPR4 SendMessage(, , , )
  loc_9EBEC5: SetLastSystemError
  loc_9EBEC6: Branch loc_9EBEDE
  loc_9EBEC9: LitI2_Byte 0
  loc_9EBECB: LitI4 0
  loc_9EBED0: LitI4 &H115
  loc_9EBED5: ILdRf arg_C
  loc_9EBED8: ImpAdCallFPR4 SendMessage(, , , )
  loc_9EBEDD: SetLastSystemError
  loc_9EBEDE: ILdRf arg_18
  loc_9EBEE1: ILdRf arg_14
  loc_9EBEE4: ILdRf arg_10
  loc_9EBEE7: ILdRf arg_C
  loc_9EBEEA: FMemLdR4 arg_8(0)
  loc_9EBEEF: ImpAdCallI2 CallWindowProc(, , , , )
  loc_9EBEF4: FStR4 var_98
  loc_9EBEF7: SetLastSystemError
  loc_9EBEF8: ILdRf var_98
  loc_9EBEFB: FStR4 var_88
  loc_9EBEFE: ExitProc
End Function

Private Function Proc_264_3_99F368(arg_C) '99F368
  'Data Table: 40221C
  loc_99F308: LitI4 &H100
  loc_99F30D: ILdRf var_8C
  loc_99F310: FLdRfVar var_94
  loc_99F313: CStr2Ansi
  loc_99F314: ILdRf var_94
  loc_99F317: ILdI4 arg_C
  loc_99F31A: ImpAdCallI2 GetClassName(, , )
  loc_99F31F: FStR4 var_9C
  loc_99F322: SetLastSystemError
  loc_99F323: ILdRf var_94
  loc_99F326: FLdRfVar var_98
  loc_99F329: CStr2Uni
  loc_99F32B: ILdRf var_98
  loc_99F32E: ILdRf var_8C
  loc_99F331: StFixedStr
  loc_99F334: ILdRf var_9C
  loc_99F337: FStR4 var_90
  loc_99F33A: FFreeStr var_94 = ""
  loc_99F341: ILdRf var_90
  loc_99F344: ILdRf var_8C
  loc_99F347: FStStrCopy var_94
  loc_99F34A: ILdRf var_94
  loc_99F34D: ImpAdCallI2 Left$(, )
  loc_99F352: FStStr var_98
  loc_99F355: ILdRf var_94
  loc_99F358: ILdRf var_8C
  loc_99F35B: StFixedStr
  loc_99F35E: FLdZeroAd var_98
  loc_99F361: FStStr var_88
  loc_99F364: FFree1Str var_94
  loc_99F367: ExitProc
End Function
