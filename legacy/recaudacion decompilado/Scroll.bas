
Private Function Proc_58_0_9FD654() '9FD654
  'Data Table: 40239C
  loc_9FD628: ILdPr
  loc_9FD62B: LateMemLdVar
  loc_9FD630: PopAd
  loc_9FD632: ImpAdLdRf MemVar_402408
  loc_9FD635: LitI4 -4
  loc_9FD63A: FLdRfVar var_94
  loc_9FD63D: CI4Var
  loc_9FD63F: ImpAdCallI2 SetWindowLong(, , )
  loc_9FD644: FStR4 var_98
  loc_9FD647: SetLastSystemError
  loc_9FD648: ILdRf var_98
  loc_9FD64B: FMemStI4 arg_8(0)
  loc_9FD650: FFree1Var var_94 = ""
  loc_9FD653: ExitProc
End Function

Private Function Proc_58_1_9EAB78() '9EAB78
  'Data Table: 40239C
  loc_9EAB54: ILdPr
  loc_9EAB57: LateMemLdVar
  loc_9EAB5C: PopAd
  loc_9EAB5E: FMemLdR4 arg_8(0)
  loc_9EAB63: LitI4 -4
  loc_9EAB68: FLdRfVar var_94
  loc_9EAB6B: CI4Var
  loc_9EAB6D: ImpAdCallFPR4 SetWindowLong(, , )
  loc_9EAB72: SetLastSystemError
  loc_9EAB73: FFree1Var var_94 = ""
  loc_9EAB76: ExitProc
End Function

Private Function Proc_58_2_AD1D9C(arg_C, arg_10, arg_14, arg_18) 'AD1D9C
  'Data Table: 40239C
  loc_AD1C64: LitStr "DataGridSplitVScroll"
  loc_AD1C67: FLdRfVar var_94
  loc_AD1C6A: CStr2Ansi
  loc_AD1C6B: ILdRf var_94
  loc_AD1C6E: LitStr "ScrollBar"
  loc_AD1C71: FLdRfVar var_90
  loc_AD1C74: CStr2Ansi
  loc_AD1C75: ILdRf var_90
  loc_AD1C78: LitI4 0
  loc_AD1C7D: ILdRf arg_C
  loc_AD1C80: ImpAdCallI2 FindWindowEx(, , , )
  loc_AD1C85: FStR4 var_98
  loc_AD1C88: SetLastSystemError
  loc_AD1C89: ILdRf var_98
  loc_AD1C8C: FStR4 var_8C
  loc_AD1C8F: FFreeStr var_90 = ""
  loc_AD1C96: FLdRfVar arg_C
  loc_AD1C99: ImpAdCallI2 Proc_58_3_A7B51C()
  loc_AD1C9E: FStStrNoPop var_90
  loc_AD1CA1: LitStr "DataGridWndClass"
  loc_AD1CA4: EqStr
  loc_AD1CA6: ILdRf var_8C
  loc_AD1CA9: LitI4 0
  loc_AD1CAE: EqI4
  loc_AD1CAF: AndI4
  loc_AD1CB0: FFree1Str var_90
  loc_AD1CB3: BranchF loc_AD1CD7
  loc_AD1CB6: ILdRf arg_18
  loc_AD1CB9: ILdRf arg_14
  loc_AD1CBC: ILdRf arg_10
  loc_AD1CBF: ILdRf arg_C
  loc_AD1CC2: FMemLdR4 arg_8(0)
  loc_AD1CC7: ImpAdCallI2 CallWindowProc(, , , , )
  loc_AD1CCC: FStR4 var_98
  loc_AD1CCF: SetLastSystemError
  loc_AD1CD0: ILdRf var_98
  loc_AD1CD3: FStR4 var_88
  loc_AD1CD6: ExitProc
  loc_AD1CD7: ILdRf arg_10
  loc_AD1CDA: LitI4 &H20A
  loc_AD1CDF: EqI4
  loc_AD1CE0: BranchF loc_AD1D7A
  loc_AD1CE3: FLdRfVar arg_C
  loc_AD1CE6: ImpAdCallI2 Proc_58_3_A7B51C()
  loc_AD1CEB: FStStrNoPop var_90
  loc_AD1CEE: LitStr "DataGridWndClass"
  loc_AD1CF1: EqStr
  loc_AD1CF3: ILdRf var_8C
  loc_AD1CF6: LitI4 0
  loc_AD1CFB: NeI4
  loc_AD1CFC: AndI4
  loc_AD1CFD: FFree1Str var_90
  loc_AD1D00: BranchF loc_AD1D41
  loc_AD1D03: ILdRf arg_14
  loc_AD1D06: LitI4 0
  loc_AD1D0B: LtI4
  loc_AD1D0C: BranchF loc_AD1D28
  loc_AD1D0F: ILdRf var_8C
  loc_AD1D12: LitI4 1
  loc_AD1D17: LitI4 &H115
  loc_AD1D1C: ILdRf arg_C
  loc_AD1D1F: ImpAdCallFPR4 SendMessage(, , , )
  loc_AD1D24: SetLastSystemError
  loc_AD1D25: Branch loc_AD1D3E
  loc_AD1D28: ILdRf var_8C
  loc_AD1D2B: LitI4 0
  loc_AD1D30: LitI4 &H115
  loc_AD1D35: ILdRf arg_C
  loc_AD1D38: ImpAdCallFPR4 SendMessage(, , , )
  loc_AD1D3D: SetLastSystemError
  loc_AD1D3E: Branch loc_AD1D7A
  loc_AD1D41: ILdRf arg_14
  loc_AD1D44: LitI4 0
  loc_AD1D49: LtI4
  loc_AD1D4A: BranchF loc_AD1D65
  loc_AD1D4D: LitI2_Byte 0
  loc_AD1D4F: LitI4 1
  loc_AD1D54: LitI4 &H115
  loc_AD1D59: ILdRf arg_C
  loc_AD1D5C: ImpAdCallFPR4 SendMessage(, , , )
  loc_AD1D61: SetLastSystemError
  loc_AD1D62: Branch loc_AD1D7A
  loc_AD1D65: LitI2_Byte 0
  loc_AD1D67: LitI4 0
  loc_AD1D6C: LitI4 &H115
  loc_AD1D71: ILdRf arg_C
  loc_AD1D74: ImpAdCallFPR4 SendMessage(, , , )
  loc_AD1D79: SetLastSystemError
  loc_AD1D7A: ILdRf arg_18
  loc_AD1D7D: ILdRf arg_14
  loc_AD1D80: ILdRf arg_10
  loc_AD1D83: ILdRf arg_C
  loc_AD1D86: FMemLdR4 arg_8(0)
  loc_AD1D8B: ImpAdCallI2 CallWindowProc(, , , , )
  loc_AD1D90: FStR4 var_98
  loc_AD1D93: SetLastSystemError
  loc_AD1D94: ILdRf var_98
  loc_AD1D97: FStR4 var_88
  loc_AD1D9A: ExitProc
End Function

Private Function Proc_58_3_A7B51C(arg_C) 'A7B51C
  'Data Table: 40239C
  loc_A7B4B0: LitI4 &H100
  loc_A7B4B5: ILdRf var_8C
  loc_A7B4B8: FLdRfVar var_94
  loc_A7B4BB: CStr2Ansi
  loc_A7B4BC: ILdRf var_94
  loc_A7B4BF: ILdI4 arg_C
  loc_A7B4C2: ImpAdCallI2 GetClassName(, , )
  loc_A7B4C7: FStR4 var_9C
  loc_A7B4CA: SetLastSystemError
  loc_A7B4CB: ILdRf var_94
  loc_A7B4CE: FLdRfVar var_98
  loc_A7B4D1: CStr2Uni
  loc_A7B4D3: ILdRf var_98
  loc_A7B4D6: ILdRf var_8C
  loc_A7B4D9: StFixedStr
  loc_A7B4DC: ILdRf var_9C
  loc_A7B4DF: FStR4 var_90
  loc_A7B4E2: FFreeStr var_94 = ""
  loc_A7B4E9: ILdRf var_90
  loc_A7B4EC: ILdRf var_8C
  loc_A7B4EF: FStStrCopy var_94
  loc_A7B4F2: FLdRfVar var_94
  loc_A7B4F5: CVarRef
  loc_A7B4FA: FLdRfVar var_BC
  loc_A7B4FD: ImpAdCallFPR4  = Left(, )
  loc_A7B502: ILdRf var_94
  loc_A7B505: ILdRf var_8C
  loc_A7B508: StFixedStr
  loc_A7B50B: FLdRfVar var_BC
  loc_A7B50E: CStrVarTmp
  loc_A7B50F: FStStr var_88
  loc_A7B512: FFree1Str var_94
  loc_A7B515: FFree1Var var_BC = ""
  loc_A7B518: ExitProc
  loc_A7B519: CStrVar
End Function
