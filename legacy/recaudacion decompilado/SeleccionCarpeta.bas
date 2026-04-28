
Private Function Proc_306_0_AC7FF8(arg_C, arg_10, arg_14) 'AC7FF8
  'Data Table: 4020EC
  loc_AC7EF0: ILdRf arg_10
  loc_AC7EF3: FStStrCopy var_8C
  loc_AC7EF6: ILdRf arg_14
  loc_AC7EF9: FStStrCopy var_90
  loc_AC7EFC: ILdRf var_8C
  loc_AC7EFF: FMemStStrCopy
  loc_AC7F04: FLdRfVar var_B0
  loc_AC7F07: FStR4 var_BC
  loc_AC7F0A: ILdRf arg_C
  loc_AC7F0D: FMemStI4 var_BC(0)
  loc_AC7F12: LitI4 &H57
  loc_AC7F17: FMemStI4 var_BC(16)
  loc_AC7F1C: LitStr vbNullString
  loc_AC7F1F: FLdRfVar var_C4
  loc_AC7F22: CStr2Ansi
  loc_AC7F23: ILdRf var_C4
  loc_AC7F26: ILdRf var_90
  loc_AC7F29: FLdRfVar var_C0
  loc_AC7F2C: CStr2Ansi
  loc_AC7F2D: ILdRf var_C0
  loc_AC7F30: ImpAdCallI2 lstrcat(, )
  loc_AC7F35: FStR4 var_C8
  loc_AC7F38: SetLastSystemError
  loc_AC7F39: ILdRf var_C0
  loc_AC7F3C: FLdRfVar var_90
  loc_AC7F3F: CStr2Uni
  loc_AC7F41: ILdRf var_C8
  loc_AC7F44: FMemStI4 var_BC(12)
  loc_AC7F49: FFreeStr var_C0 = ""
  loc_AC7F50: ImpAdLdRf MemVar_402144
  loc_AC7F53: ImpAdCallI2 Proc_306_2_9AFCF4()
  loc_AC7F58: FMemStI4 var_BC(20)
  loc_AC7F5D: LitI4 0
  loc_AC7F62: FStR4 var_BC
  loc_AC7F65: FLdRfVar var_B0
  loc_AC7F68: ImpAdCallI2 SHBrowseForFolder()
  loc_AC7F6D: FStR4 var_C8
  loc_AC7F70: SetLastSystemError
  loc_AC7F71: ILdRf var_C8
  loc_AC7F74: FStR4 var_B4
  loc_AC7F77: ILdRf var_B4
  loc_AC7F7A: CBoolI4
  loc_AC7F7C: BranchF loc_AC7FEE
  loc_AC7F7F: LitI4 &H104
  loc_AC7F84: ImpAdCallI2 Space$()
  loc_AC7F89: FStStr var_B8
  loc_AC7F8C: ILdRf var_B8
  loc_AC7F8F: FLdRfVar var_C0
  loc_AC7F92: CStr2Ansi
  loc_AC7F93: ILdRf var_C0
  loc_AC7F96: ILdRf var_B4
  loc_AC7F99: ImpAdCallFPR4 SHGetPathFromIDList(, )
  loc_AC7F9E: SetLastSystemError
  loc_AC7F9F: ILdRf var_C0
  loc_AC7FA2: FLdRfVar var_B8
  loc_AC7FA5: CStr2Uni
  loc_AC7FA7: FFree1Str var_C0
  loc_AC7FAA: LitI4 1
  loc_AC7FAF: ILdRf var_B8
  loc_AC7FB2: LitStr vbNullString
  loc_AC7FB5: LitI4 0
  loc_AC7FBA: FnInStr4
  loc_AC7FBC: LitI4 1
  loc_AC7FC1: SubI4
  loc_AC7FC2: FLdRfVar var_B8
  loc_AC7FC5: CVarRef
  loc_AC7FCA: FLdRfVar var_E8
  loc_AC7FCD: ImpAdCallFPR4  = Left(, )
  loc_AC7FD2: FLdRfVar var_E8
  loc_AC7FD5: CStrVarTmp
  loc_AC7FD6: FStStr var_B8
  loc_AC7FD9: FFree1Var var_E8 = ""
  loc_AC7FDC: ILdRf var_B4
  loc_AC7FDF: ImpAdCallFPR4 CoTaskMemFree()
  loc_AC7FE4: SetLastSystemError
  loc_AC7FE5: ILdRf var_B8
  loc_AC7FE8: FStStrCopy var_88
  loc_AC7FEB: Branch loc_AC7FF4
  loc_AC7FEE: LitStr vbNullString
  loc_AC7FF1: FStStrCopy var_88
  loc_AC7FF4: ExitProc
End Function

Private Function Proc_306_1_A93768(arg_C, arg_10, arg_14) 'A93768
  'Data Table: 4020EC
  loc_A936B8: ILdRf arg_10
  loc_A936BB: LitI4 1
  loc_A936C0: EqI4
  loc_A936C1: BranchF loc_A936F3
  loc_A936C4: FMemLdR4 arg_8(0)
  loc_A936C9: FLdRfVar var_94
  loc_A936CC: CStr2Ansi
  loc_A936CD: ILdRf var_94
  loc_A936D0: LitI4 1
  loc_A936D5: LitI4 &H466
  loc_A936DA: ILdRf arg_C
  loc_A936DD: ImpAdCallFPR4 SendMessage(, , , )
  loc_A936E2: SetLastSystemError
  loc_A936E3: ILdRf var_94
  loc_A936E6: FMemLdRf  = Left(, )
  loc_A936EB: CStr2Uni
  loc_A936ED: FFree1Str var_94
  loc_A936F0: Branch loc_A9375E
  loc_A936F3: ILdRf arg_10
  loc_A936F6: LitI4 2
  loc_A936FB: EqI4
  loc_A936FC: BranchF loc_A9375E
  loc_A936FF: LitI4 &H104
  loc_A93704: ImpAdCallI2 Space$()
  loc_A93709: FStStr var_90
  loc_A9370C: ILdRf var_90
  loc_A9370F: FLdRfVar var_94
  loc_A93712: CStr2Ansi
  loc_A93713: ILdRf var_94
  loc_A93716: ILdRf arg_14
  loc_A93719: ImpAdCallI2 SHGetPathFromIDList(, )
  loc_A9371E: FStR4 var_98
  loc_A93721: SetLastSystemError
  loc_A93722: ILdRf var_94
  loc_A93725: FLdRfVar var_90
  loc_A93728: CStr2Uni
  loc_A9372A: ILdRf var_98
  loc_A9372D: FnAbsI4
  loc_A9372E: CBoolI4
  loc_A93730: FFree1Str var_94
  loc_A93733: BranchF loc_A9375E
  loc_A93736: ILdRf var_90
  loc_A93739: FLdRfVar var_94
  loc_A9373C: CStr2Ansi
  loc_A9373D: ILdRf var_94
  loc_A93740: LitI4 0
  loc_A93745: LitI4 &H464
  loc_A9374A: ILdRf arg_C
  loc_A9374D: ImpAdCallFPR4 SendMessage(, , , )
  loc_A93752: SetLastSystemError
  loc_A93753: ILdRf var_94
  loc_A93756: FLdRfVar var_90
  loc_A93759: CStr2Uni
  loc_A9375B: FFree1Str var_94
  loc_A9375E: LitI4 0
  loc_A93763: FStR4 var_88
  loc_A93766: ExitProc
End Function

Private Function Proc_306_2_9AFCF4(arg_C) '9AFCF4
  'Data Table: 4020EC
  loc_9AFCEC: ILdRf arg_C
  loc_9AFCEF: FStR4 var_88
  loc_9AFCF2: ExitProc
End Function
