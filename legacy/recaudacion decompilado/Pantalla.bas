
Private Function Proc_36_0_A9C978(arg_C, arg_10) 'A9C978
  'Data Table: 402090
  loc_A9C8EC: LitI2_Byte 0
  loc_A9C8EE: FStI2 var_88
  loc_A9C8F1: FMemLdRf unk_402099
  loc_A9C8F6: FLdRfVar var_104
  loc_A9C8F9: CRec2Ansi arg_0
  loc_A9C8FC: FLdRfVar var_104
  loc_A9C8FF: FLdI2 var_88
  loc_A9C902: CI4UI1
  loc_A9C903: LitI4 0
  loc_A9C908: ImpAdCallI2 EnumDisplaySettings(, , )
  loc_A9C90D: FStI2 var_106
  loc_A9C910: SetLastSystemError
  loc_A9C911: FLdRfVar var_104
  loc_A9C914: FMemLdRf unk_402099
  loc_A9C919: CRec2Uni arg_0
  loc_A9C91C: FLdI2 var_106
  loc_A9C91F: FStI2 var_86
  loc_A9C922: FLdI2 var_88
  loc_A9C925: LitI2_Byte 1
  loc_A9C927: AddI2
  loc_A9C928: FStI2 var_88
  loc_A9C92B: FLdI2 var_86
  loc_A9C92E: LitI2_Byte 0
  loc_A9C930: NeI2
  loc_A9C931: BranchT loc_A9C8F1
  loc_A9C934: LitI4 &H180000
  loc_A9C939: FMemStI4 arg_8(72)
  loc_A9C93E: ILdFPR4 arg_C
  loc_A9C941: CI4R8
  loc_A9C942: FMemStI4 arg_8(172)
  loc_A9C947: ILdFPR4 arg_10
  loc_A9C94A: CI4R8
  loc_A9C94B: FMemStI4 arg_8(176)
  loc_A9C950: LitI4 0
  loc_A9C955: FMemLdRf unk_402099
  loc_A9C95A: FLdRfVar var_188
  loc_A9C95D: CRec2Ansi arg_0
  loc_A9C960: FLdRfVar var_188
  loc_A9C963: ImpAdCallFPR4 ChangeDisplaySettings(, )
  loc_A9C968: SetLastSystemError
  loc_A9C969: FLdRfVar var_188
  loc_A9C96C: FMemLdRf unk_402099
  loc_A9C971: CRec2Uni arg_0
  loc_A9C974: ExitProc
End Function
