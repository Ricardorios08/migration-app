
Private Function Proc_262_0_9B90FC(arg_C, arg_10) '9B90FC
  'Data Table: 402110
  loc_9B9070: LitI2_Byte 0
  loc_9B9072: FStI2 var_88
  loc_9B9075: FMemLdRf unk_402119
  loc_9B907A: FLdRfVar var_104
  loc_9B907D: CRec2Ansi arg_0
  loc_9B9080: FLdRfVar var_104
  loc_9B9083: FLdI2 var_88
  loc_9B9086: CI4UI1
  loc_9B9087: LitI4 0
  loc_9B908C: ImpAdCallI2 EnumDisplaySettings(, , )
  loc_9B9091: FStI2 var_106
  loc_9B9094: SetLastSystemError
  loc_9B9095: FLdRfVar var_104
  loc_9B9098: FMemLdRf unk_402119
  loc_9B909D: CRec2Uni arg_0
  loc_9B90A0: FLdI2 var_106
  loc_9B90A3: FStI2 var_86
  loc_9B90A6: FLdI2 var_88
  loc_9B90A9: LitI2_Byte 1
  loc_9B90AB: AddI2
  loc_9B90AC: FStI2 var_88
  loc_9B90AF: FLdI2 var_86
  loc_9B90B2: LitI2_Byte 0
  loc_9B90B4: NeI2
  loc_9B90B5: BranchT loc_9B9075
  loc_9B90B8: LitI4 &H180000
  loc_9B90BD: FMemStI4 arg_8(72)
  loc_9B90C2: ILdFPR4 arg_C
  loc_9B90C5: CI4R8
  loc_9B90C6: FMemStI4 arg_8(172)
  loc_9B90CB: ILdFPR4 arg_10
  loc_9B90CE: CI4R8
  loc_9B90CF: FMemStI4 arg_8(176)
  loc_9B90D4: LitI4 0
  loc_9B90D9: FMemLdRf unk_402119
  loc_9B90DE: FLdRfVar var_188
  loc_9B90E1: CRec2Ansi arg_0
  loc_9B90E4: FLdRfVar var_188
  loc_9B90E7: ImpAdCallFPR4 ChangeDisplaySettings(, )
  loc_9B90EC: SetLastSystemError
  loc_9B90ED: FLdRfVar var_188
  loc_9B90F0: FMemLdRf unk_402119
  loc_9B90F5: CRec2Uni arg_0
  loc_9B90F8: ExitProc
  loc_9B90F9: NeR8
  loc_9B90FA: Error
End Function
