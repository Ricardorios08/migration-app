
Private Function Proc_17_0_A75B7C(arg_C) 'A75B7C
  'Data Table: 40329C
  loc_A75B14: ILdRf arg_C
  loc_A75B17: LitI4 0
  loc_A75B1C: EqI4
  loc_A75B1D: BranchF loc_A75B27
  loc_A75B20: LitStr " "
  loc_A75B23: FStStrCopy var_88
  loc_A75B26: ExitProc
  loc_A75B27: LitI4 &H100
  loc_A75B2C: ILdRf arg_C
  loc_A75B2F: ILdRf var_8C
  loc_A75B32: FLdRfVar var_90
  loc_A75B35: CStr2Ansi
  loc_A75B36: ILdRf var_90
  loc_A75B39: ImpAdCallFPR4 CopyMemory(, , )
  loc_A75B3E: SetLastSystemError
  loc_A75B3F: ILdRf var_90
  loc_A75B42: FLdRfVar var_94
  loc_A75B45: CStr2Uni
  loc_A75B47: ILdRf var_94
  loc_A75B4A: ILdRf var_8C
  loc_A75B4D: StFixedStr
  loc_A75B50: FFreeStr var_90 = ""
  loc_A75B57: ILdRf var_8C
  loc_A75B5A: FStStrCopy var_90
  loc_A75B5D: FLdRfVar var_90
  loc_A75B60: ImpAdCallI2 Proc_17_1_A888C4()
  loc_A75B65: FStStr var_94
  loc_A75B68: ILdRf var_90
  loc_A75B6B: ILdRf var_8C
  loc_A75B6E: StFixedStr
  loc_A75B71: FLdZeroAd var_94
  loc_A75B74: FStStr var_88
  loc_A75B77: FFree1Str var_90
  loc_A75B7A: ExitProc
End Function

Private Function Proc_17_1_A888C4(arg_C) 'A888C4
  'Data Table: 40329C
  loc_A88834: LitI4 1
  loc_A88839: ILdI4 arg_C
  loc_A8883C: CVarStr var_A8
  loc_A8883F: LitI4 0
  loc_A88844: FLdRfVar var_98
  loc_A88847: ImpAdCallFPR4  = Chr()
  loc_A8884C: FLdRfVar var_98
  loc_A8884F: LitI4 0
  loc_A88854: FnInStr4Var
  loc_A88858: LitVarI2 var_C8, 0
  loc_A8885D: HardType
  loc_A8885E: GtVarBool
  loc_A88860: FFreeVar var_98 = ""
  loc_A88867: BranchF loc_A888BA
  loc_A8886A: LitI4 1
  loc_A8886F: ILdI4 arg_C
  loc_A88872: CVarStr var_A8
  loc_A88875: LitI4 0
  loc_A8887A: FLdRfVar var_98
  loc_A8887D: ImpAdCallFPR4  = Chr()
  loc_A88882: FLdRfVar var_98
  loc_A88885: LitI4 0
  loc_A8888A: FnInStr4Var
  loc_A8888E: LitVarI2 var_C8, 1
  loc_A88893: SubVar var_D8
  loc_A88897: CI4Var
  loc_A88899: ILdRf arg_C
  loc_A8889C: CVarRef
  loc_A888A1: FLdRfVar var_F8
  loc_A888A4: ImpAdCallFPR4  = Left(, )
  loc_A888A9: FLdRfVar var_F8
  loc_A888AC: CStrVarTmp
  loc_A888AD: IStStr
  loc_A888B1: FFreeVar var_98 = "": var_B8 = ""
  loc_A888BA: ILdI4 arg_C
  loc_A888BD: FStStrCopy var_88
  loc_A888C0: ExitProc
End Function

Private Function Proc_17_2_B1BDA4(arg_C) 'B1BDA4
  'Data Table: 40329C
  loc_B1BB10: ILdI4 arg_C
  loc_B1BB13: LitI4 0
  loc_B1BB18: EqI4
  loc_B1BB19: BranchF loc_B1BB29
  loc_B1BB1C: LitStr "Printer Status = Ready"
  loc_B1BB1F: LitStr vbCrLf
  loc_B1BB22: ConcatStr
  loc_B1BB23: FStStr var_88
  loc_B1BB26: Branch loc_B1BDA2
  loc_B1BB29: LitStr vbNullString
  loc_B1BB2C: FStStrCopy var_8C
  loc_B1BB2F: ILdI4 arg_C
  loc_B1BB32: LitI4 &H200
  loc_B1BB37: AndI4
  loc_B1BB38: CBoolI4
  loc_B1BB3A: BranchF loc_B1BB47
  loc_B1BB3D: ILdRf var_8C
  loc_B1BB40: LitStr "Busy  "
  loc_B1BB43: ConcatStr
  loc_B1BB44: FStStr var_8C
  loc_B1BB47: ILdI4 arg_C
  loc_B1BB4A: LitI4 &H400000
  loc_B1BB4F: AndI4
  loc_B1BB50: CBoolI4
  loc_B1BB52: BranchF loc_B1BB5F
  loc_B1BB55: ILdRf var_8C
  loc_B1BB58: LitStr "Printer Door Open  "
  loc_B1BB5B: ConcatStr
  loc_B1BB5C: FStStr var_8C
  loc_B1BB5F: ILdI4 arg_C
  loc_B1BB62: LitI4 2
  loc_B1BB67: AndI4
  loc_B1BB68: CBoolI4
  loc_B1BB6A: BranchF loc_B1BB77
  loc_B1BB6D: ILdRf var_8C
  loc_B1BB70: LitStr "Printer Error  "
  loc_B1BB73: ConcatStr
  loc_B1BB74: FStStr var_8C
  loc_B1BB77: ILdI4 arg_C
  loc_B1BB7A: LitI4 -32768
  loc_B1BB7F: AndI4
  loc_B1BB80: CBoolI4
  loc_B1BB82: BranchF loc_B1BB8F
  loc_B1BB85: ILdRf var_8C
  loc_B1BB88: LitStr "Initializing  "
  loc_B1BB8B: ConcatStr
  loc_B1BB8C: FStStr var_8C
  loc_B1BB8F: ILdI4 arg_C
  loc_B1BB92: LitI4 &H100
  loc_B1BB97: AndI4
  loc_B1BB98: CBoolI4
  loc_B1BB9A: BranchF loc_B1BBA7
  loc_B1BB9D: ILdRf var_8C
  loc_B1BBA0: LitStr "I/O Active  "
  loc_B1BBA3: ConcatStr
  loc_B1BBA4: FStStr var_8C
  loc_B1BBA7: ILdI4 arg_C
  loc_B1BBAA: LitI4 &H20
  loc_B1BBAF: AndI4
  loc_B1BBB0: CBoolI4
  loc_B1BBB2: BranchF loc_B1BBBF
  loc_B1BBB5: ILdRf var_8C
  loc_B1BBB8: LitStr "Manual Feed  "
  loc_B1BBBB: ConcatStr
  loc_B1BBBC: FStStr var_8C
  loc_B1BBBF: ILdI4 arg_C
  loc_B1BBC2: LitI4 &H40000
  loc_B1BBC7: AndI4
  loc_B1BBC8: CBoolI4
  loc_B1BBCA: BranchF loc_B1BBD7
  loc_B1BBCD: ILdRf var_8C
  loc_B1BBD0: LitStr "No Toner  "
  loc_B1BBD3: ConcatStr
  loc_B1BBD4: FStStr var_8C
  loc_B1BBD7: ILdI4 arg_C
  loc_B1BBDA: LitI4 &H1000
  loc_B1BBDF: AndI4
  loc_B1BBE0: CBoolI4
  loc_B1BBE2: BranchF loc_B1BBEF
  loc_B1BBE5: ILdRf var_8C
  loc_B1BBE8: LitStr "Not Available  "
  loc_B1BBEB: ConcatStr
  loc_B1BBEC: FStStr var_8C
  loc_B1BBEF: ILdI4 arg_C
  loc_B1BBF2: LitI4 &H80
  loc_B1BBF7: AndI4
  loc_B1BBF8: CBoolI4
  loc_B1BBFA: BranchF loc_B1BC07
  loc_B1BBFD: ILdRf var_8C
  loc_B1BC00: LitStr "Off Line  "
  loc_B1BC03: ConcatStr
  loc_B1BC04: FStStr var_8C
  loc_B1BC07: ILdI4 arg_C
  loc_B1BC0A: LitI4 &H200000
  loc_B1BC0F: AndI4
  loc_B1BC10: CBoolI4
  loc_B1BC12: BranchF loc_B1BC1F
  loc_B1BC15: ILdRf var_8C
  loc_B1BC18: LitStr "Out of Memory  "
  loc_B1BC1B: ConcatStr
  loc_B1BC1C: FStStr var_8C
  loc_B1BC1F: ILdI4 arg_C
  loc_B1BC22: LitI4 &H800
  loc_B1BC27: AndI4
  loc_B1BC28: CBoolI4
  loc_B1BC2A: BranchF loc_B1BC37
  loc_B1BC2D: ILdRf var_8C
  loc_B1BC30: LitStr "Output Bin Full  "
  loc_B1BC33: ConcatStr
  loc_B1BC34: FStStr var_8C
  loc_B1BC37: ILdI4 arg_C
  loc_B1BC3A: LitI4 &H80000
  loc_B1BC3F: AndI4
  loc_B1BC40: CBoolI4
  loc_B1BC42: BranchF loc_B1BC4F
  loc_B1BC45: ILdRf var_8C
  loc_B1BC48: LitStr "Page Punt  "
  loc_B1BC4B: ConcatStr
  loc_B1BC4C: FStStr var_8C
  loc_B1BC4F: ILdI4 arg_C
  loc_B1BC52: LitI4 8
  loc_B1BC57: AndI4
  loc_B1BC58: CBoolI4
  loc_B1BC5A: BranchF loc_B1BC67
  loc_B1BC5D: ILdRf var_8C
  loc_B1BC60: LitStr "Paper Jam  "
  loc_B1BC63: ConcatStr
  loc_B1BC64: FStStr var_8C
  loc_B1BC67: ILdI4 arg_C
  loc_B1BC6A: LitI4 &H10
  loc_B1BC6F: AndI4
  loc_B1BC70: CBoolI4
  loc_B1BC72: BranchF loc_B1BC7F
  loc_B1BC75: ILdRf var_8C
  loc_B1BC78: LitStr "Paper Out  "
  loc_B1BC7B: ConcatStr
  loc_B1BC7C: FStStr var_8C
  loc_B1BC7F: ILdI4 arg_C
  loc_B1BC82: LitI4 &H800
  loc_B1BC87: AndI4
  loc_B1BC88: CBoolI4
  loc_B1BC8A: BranchF loc_B1BC97
  loc_B1BC8D: ILdRf var_8C
  loc_B1BC90: LitStr "Output Bin Full  "
  loc_B1BC93: ConcatStr
  loc_B1BC94: FStStr var_8C
  loc_B1BC97: ILdI4 arg_C
  loc_B1BC9A: LitI4 &H40
  loc_B1BC9F: AndI4
  loc_B1BCA0: CBoolI4
  loc_B1BCA2: BranchF loc_B1BCAF
  loc_B1BCA5: ILdRf var_8C
  loc_B1BCA8: LitStr "Page Problem  "
  loc_B1BCAB: ConcatStr
  loc_B1BCAC: FStStr var_8C
  loc_B1BCAF: ILdI4 arg_C
  loc_B1BCB2: LitI4 1
  loc_B1BCB7: AndI4
  loc_B1BCB8: CBoolI4
  loc_B1BCBA: BranchF loc_B1BCC7
  loc_B1BCBD: ILdRf var_8C
  loc_B1BCC0: LitStr "Paused  "
  loc_B1BCC3: ConcatStr
  loc_B1BCC4: FStStr var_8C
  loc_B1BCC7: ILdI4 arg_C
  loc_B1BCCA: LitI4 4
  loc_B1BCCF: AndI4
  loc_B1BCD0: CBoolI4
  loc_B1BCD2: BranchF loc_B1BCDF
  loc_B1BCD5: ILdRf var_8C
  loc_B1BCD8: LitStr "Pending Deletion  "
  loc_B1BCDB: ConcatStr
  loc_B1BCDC: FStStr var_8C
  loc_B1BCDF: ILdI4 arg_C
  loc_B1BCE2: LitI4 &H400
  loc_B1BCE7: AndI4
  loc_B1BCE8: CBoolI4
  loc_B1BCEA: BranchF loc_B1BCF7
  loc_B1BCED: ILdRf var_8C
  loc_B1BCF0: LitStr "Printing  "
  loc_B1BCF3: ConcatStr
  loc_B1BCF4: FStStr var_8C
  loc_B1BCF7: ILdI4 arg_C
  loc_B1BCFA: LitI4 &H4000
  loc_B1BCFF: AndI4
  loc_B1BD00: CBoolI4
  loc_B1BD02: BranchF loc_B1BD0F
  loc_B1BD05: ILdRf var_8C
  loc_B1BD08: LitStr "Processing  "
  loc_B1BD0B: ConcatStr
  loc_B1BD0C: FStStr var_8C
  loc_B1BD0F: ILdI4 arg_C
  loc_B1BD12: LitI4 &H20000
  loc_B1BD17: AndI4
  loc_B1BD18: CBoolI4
  loc_B1BD1A: BranchF loc_B1BD27
  loc_B1BD1D: ILdRf var_8C
  loc_B1BD20: LitStr "Toner Low  "
  loc_B1BD23: ConcatStr
  loc_B1BD24: FStStr var_8C
  loc_B1BD27: ILdI4 arg_C
  loc_B1BD2A: LitI4 &H100000
  loc_B1BD2F: AndI4
  loc_B1BD30: CBoolI4
  loc_B1BD32: BranchF loc_B1BD3F
  loc_B1BD35: ILdRf var_8C
  loc_B1BD38: LitStr "User Intervention  "
  loc_B1BD3B: ConcatStr
  loc_B1BD3C: FStStr var_8C
  loc_B1BD3F: ILdI4 arg_C
  loc_B1BD42: LitI4 &H2000
  loc_B1BD47: AndI4
  loc_B1BD48: CBoolI4
  loc_B1BD4A: BranchF loc_B1BD57
  loc_B1BD4D: ILdRf var_8C
  loc_B1BD50: LitStr "Waiting  "
  loc_B1BD53: ConcatStr
  loc_B1BD54: FStStr var_8C
  loc_B1BD57: ILdI4 arg_C
  loc_B1BD5A: LitI4 &H10000
  loc_B1BD5F: AndI4
  loc_B1BD60: CBoolI4
  loc_B1BD62: BranchF loc_B1BD6F
  loc_B1BD65: ILdRf var_8C
  loc_B1BD68: LitStr "Warming Up  "
  loc_B1BD6B: ConcatStr
  loc_B1BD6C: FStStr var_8C
  loc_B1BD6F: ILdRf var_8C
  loc_B1BD72: FnLenStr
  loc_B1BD73: LitI4 0
  loc_B1BD78: EqI4
  loc_B1BD79: BranchF loc_B1BD8E
  loc_B1BD7C: LitStr "Unknown Status of "
  loc_B1BD7F: ILdI4 arg_C
  loc_B1BD82: CStrI4
  loc_B1BD84: FStStrNoPop var_90
  loc_B1BD87: ConcatStr
  loc_B1BD88: FStStr var_8C
  loc_B1BD8B: FFree1Str var_90
  loc_B1BD8E: LitStr "Printer Status = "
  loc_B1BD91: ILdRf var_8C
  loc_B1BD94: ConcatStr
  loc_B1BD95: FStStrNoPop var_90
  loc_B1BD98: LitStr vbCrLf
  loc_B1BD9B: ConcatStr
  loc_B1BD9C: FStStr var_88
  loc_B1BD9F: FFree1Str var_90
  loc_B1BDA2: ExitProc
End Function

Private Function Proc_17_3_A6FF40(arg_C) 'A6FF40
  'Data Table: 40329C
  loc_A6FEDC: FLdRfVar var_8C
  loc_A6FEDF: ImpAdLdRf MemVar_D9C5D8
  loc_A6FEE2: NewIfNullPr Global
  loc_A6FEE5:  = Global.Printers
  loc_A6FEEA: FLdZeroAd var_8C
  loc_A6FEED: FStAdFuncNoPop
  loc_A6FEF0: FLdRfVar var_88
  loc_A6FEF3: ForEachCollObj
  loc_A6FEFB: FLdPr var_88
  loc_A6FEFE: LateIdLdVar var_A4 DispID_28 1
  loc_A6FF05: CStrVarTmp
  loc_A6FF06: FStStrNoPop var_A8
  loc_A6FF09: ILdI4 arg_C
  loc_A6FF0C: EqStr
  loc_A6FF0E: FFree1Str var_A8
  loc_A6FF11: FFree1Var var_A4 = ""
  loc_A6FF14: BranchF loc_A6FF32
  loc_A6FF17: ILdRf var_88
  loc_A6FF1A: FStAdNoPop
  loc_A6FF1E: ImpAdLdRf MemVar_D9C5D8
  loc_A6FF21: NewIfNullPr Global
  loc_A6FF24: Global.Printer = from_stack_1
  loc_A6FF29: FFree1Ad var_8C
  loc_A6FF2C: ExitForCollObj
  loc_A6FF32: FLdRfVar var_88
  loc_A6FF35: NextEachCollObj
  loc_A6FF3D: ExitProc
End Function

Private Function Proc_17_4_B5FCCC(arg_C, arg_10) 'B5FCCC
  'Data Table: 40329C
  loc_B5F958: OnErrorGoto loc_B5FC3E
  loc_B5F95D: FLdRfVar var_17C
  loc_B5F960: ImpAdLdRf MemVar_D9C5D8
  loc_B5F963: NewIfNullPr Global
  loc_B5F966:  = Global.Printer
  loc_B5F96B: FLdPr var_17C
  loc_B5F96E: LateIdLdVar var_18C DispID_28 1
  loc_B5F975: CStrVarTmp
  loc_B5F976: FMemStStr arg_8(0)
  loc_B5F97C: FFree1Ad var_17C
  loc_B5F97F: FFree1Var var_18C = ""
  loc_B5F984: FMemLdR4 arg_8(0)
  loc_B5F989: LitStr vbNullString
  loc_B5F98C: EqStr
  loc_B5F98E: BranchF loc_B5F994
  loc_B5F993: ExitProc
  loc_B5F998: LitI4 0
  loc_B5F99D: FStR4 var_94
  loc_B5F9A2: LitI4 0
  loc_B5F9A7: FStR4 var_90
  loc_B5F9AC: LitI4 &HF000C
  loc_B5F9B1: FStR4 var_8C
  loc_B5F9B6: FLdRfVar var_94
  loc_B5F9B9: FLdRfVar var_88
  loc_B5F9BC: FMemLdR4 arg_8(0)
  loc_B5F9C1: FLdRfVar var_190
  loc_B5F9C4: CStr2Ansi
  loc_B5F9C5: ILdRf var_190
  loc_B5F9C8: ImpAdCallI2 OpenPrinter(, , )
  loc_B5F9CD: FStR4 var_194
  loc_B5F9D0: SetLastSystemError
  loc_B5F9D1: ILdRf var_190
  loc_B5F9D4: FMemLdRf unk_4032A5
  loc_B5F9D9: CStr2Uni
  loc_B5F9DB: ILdRf var_194
  loc_B5F9DE: FStR4 var_16C
  loc_B5F9E1: FFree1Str var_190
  loc_B5F9E6: FLdRfVar var_170
  loc_B5F9E9: LitI4 0
  loc_B5F9EE: LitI4 0
  loc_B5F9F3: LitI4 2
  loc_B5F9F8: ILdRf var_88
  loc_B5F9FB: ImpAdCallI2 GetPrinter(, , , , )
  loc_B5FA00: FStR4 var_194
  loc_B5FA03: SetLastSystemError
  loc_B5FA04: ILdRf var_194
  loc_B5FA07: FStR4 var_16C
  loc_B5FA0C: LitI4 0
  loc_B5FA11: ILdRf var_170
  loc_B5FA14: LitI4 4
  loc_B5FA19: IDvI4
  loc_B5FA1A: FLdRfVar var_178
  loc_B5FA1D: Redim
  loc_B5FA29: FLdRfVar var_170
  loc_B5FA2C: ILdRf var_170
  loc_B5FA2F: LitI4 0
  loc_B5FA34: ILdRf var_178
  loc_B5FA37: AryLock
  loc_B5FA3A: Ary1LdRf
  loc_B5FA3B: LitI4 2
  loc_B5FA40: ILdRf var_88
  loc_B5FA43: ImpAdCallI2 GetPrinter(, , , , )
  loc_B5FA48: FStR4 var_194
  loc_B5FA4B: SetLastSystemError
  loc_B5FA4C: AryUnlock
  loc_B5FA4F: ILdRf var_194
  loc_B5FA52: FStR4 var_16C
  loc_B5FA57: LitI4 7
  loc_B5FA5C: ILdRf var_178
  loc_B5FA5F: Ary1LdI4
  loc_B5FA60: FStR4 var_174
  loc_B5FA65: LitI4 &H94
  loc_B5FA6A: ILdRf var_174
  loc_B5FA6D: FLdRfVar var_168
  loc_B5FA70: FLdRfVar var_22C
  loc_B5FA73: CRec2Ansi arg_27
  loc_B5FA76: FLdRfVar var_22C
  loc_B5FA79: ImpAdCallFPR4 CopyMemory(, , )
  loc_B5FA7E: SetLastSystemError
  loc_B5FA7F: FLdRfVar var_22C
  loc_B5FA82: FLdRfVar var_168
  loc_B5FA85: CRec2Uni arg_27
  loc_B5FA8A: ILdI4 arg_C
  loc_B5FA8D: CI2I4
  loc_B5FA8E: FStI2 var_10A
  loc_B5FA93: LitI4 &H1001
  loc_B5FA98: FStR4 var_120
  loc_B5FA9D: ILdI2 arg_10
  loc_B5FAA0: FStI2 var_11C
  loc_B5FAA5: LitI4 &H94
  loc_B5FAAA: FLdRfVar var_168
  loc_B5FAAD: FLdRfVar var_2C0
  loc_B5FAB0: CRec2Ansi arg_27
  loc_B5FAB3: FLdRfVar var_2C0
  loc_B5FAB6: ILdRf var_174
  loc_B5FAB9: ImpAdCallFPR4 CopyMemory(, , )
  loc_B5FABE: SetLastSystemError
  loc_B5FABF: FLdRfVar var_2C0
  loc_B5FAC2: FLdRfVar var_168
  loc_B5FAC5: CRec2Uni arg_27
  loc_B5FACA: LitVarI2 var_2D0, 0
  loc_B5FACF: PopAdLdVar
  loc_B5FAD0: FLdRfVar var_17C
  loc_B5FAD3: ImpAdLdRf MemVar_D9C5D8
  loc_B5FAD6: NewIfNullPr Global
  loc_B5FAD9:  = Global.Forms
  loc_B5FADE: FLdPr var_17C
  loc_B5FAE1: LateIdCallLdVar
  loc_B5FAEB: VarLateMemLdVar var_2F0, .hWnd
  loc_B5FAF1: PopAd
  loc_B5FAF3: LitI4 &HA
  loc_B5FAF8: ILdRf var_174
  loc_B5FAFB: ILdRf var_174
  loc_B5FAFE: FMemLdR4 arg_8(0)
  loc_B5FB03: FLdRfVar var_190
  loc_B5FB06: CStr2Ansi
  loc_B5FB07: ILdRf var_190
  loc_B5FB0A: ILdRf var_88
  loc_B5FB0D: FLdRfVar var_2F0
  loc_B5FB10: CI4Var
  loc_B5FB12: ImpAdCallI2 AdvancedDocumentProperties(, , , , )
  loc_B5FB17: FStR4 var_194
  loc_B5FB1A: SetLastSystemError
  loc_B5FB1B: ILdRf var_190
  loc_B5FB1E: FMemLdRf unk_4032A5
  loc_B5FB23: CStr2Uni
  loc_B5FB25: ILdRf var_194
  loc_B5FB28: FStR4 var_16C
  loc_B5FB2B: FFree1Str var_190
  loc_B5FB2E: FFree1Ad var_17C
  loc_B5FB31: FFreeVar var_18C = ""
  loc_B5FB3A: LitI4 0
  loc_B5FB3F: LitI4 0
  loc_B5FB44: ILdRf var_178
  loc_B5FB47: AryLock
  loc_B5FB4A: Ary1LdRf
  loc_B5FB4B: LitI4 2
  loc_B5FB50: ILdRf var_88
  loc_B5FB53: ImpAdCallI2 SetPrinter(, , , )
  loc_B5FB58: FStR4 var_194
  loc_B5FB5B: SetLastSystemError
  loc_B5FB5C: AryUnlock
  loc_B5FB5F: ILdRf var_194
  loc_B5FB62: FStR4 var_16C
  loc_B5FB69: LitI4 &H94
  loc_B5FB6E: ILdRf var_174
  loc_B5FB71: FLdRfVar var_168
  loc_B5FB74: FLdRfVar var_384
  loc_B5FB77: CRec2Ansi arg_27
  loc_B5FB7A: FLdRfVar var_384
  loc_B5FB7D: ImpAdCallFPR4 CopyMemory(, , )
  loc_B5FB82: SetLastSystemError
  loc_B5FB83: FLdRfVar var_384
  loc_B5FB86: FLdRfVar var_168
  loc_B5FB89: CRec2Uni arg_27
  loc_B5FB8E: ImpAdCallFPR4 DoEvents()
  loc_B5FB95: FLdI2 var_11C
  loc_B5FB98: ILdI2 arg_10
  loc_B5FB9B: NeI2
  loc_B5FB9C: BranchT loc_B5FB67
  loc_B5FBA1: ILdRf var_88
  loc_B5FBA4: ImpAdCallFPR4 ClosePrinter()
  loc_B5FBA9: SetLastSystemError
  loc_B5FBAC: FLdRfVar var_17C
  loc_B5FBAF: ImpAdLdRf MemVar_D9C5D8
  loc_B5FBB2: NewIfNullPr Global
  loc_B5FBB5:  = Global.Printers
  loc_B5FBBA: FLdZeroAd var_17C
  loc_B5FBBD: FStAdFuncNoPop
  loc_B5FBC0: FLdRfVar var_388
  loc_B5FBC3: ForEachCollObj
  loc_B5FBCD: FLdPr var_388
  loc_B5FBD0: LateIdLdVar var_18C DispID_28 1
  loc_B5FBD7: CStrVarTmp
  loc_B5FBD8: FStStrNoPop var_190
  loc_B5FBDB: FMemLdR4 arg_8(0)
  loc_B5FBE0: EqStr
  loc_B5FBE2: FFree1Str var_190
  loc_B5FBE5: FFree1Var var_18C = ""
  loc_B5FBE8: BranchF loc_B5FC0A
  loc_B5FBED: ILdRf var_388
  loc_B5FBF0: FStAdNoPop
  loc_B5FBF4: ImpAdLdRf MemVar_D9C5D8
  loc_B5FBF7: NewIfNullPr Global
  loc_B5FBFA: Global.Printer = from_stack_1
  loc_B5FBFF: FFree1Ad var_17C
  loc_B5FC04: ExitForCollObj
  loc_B5FC0E: FLdRfVar var_388
  loc_B5FC11: NextEachCollObj
  loc_B5FC1B: FLdRfVar var_10A
  loc_B5FC1E: CDargRef
  loc_B5FC22: FLdRfVar var_17C
  loc_B5FC25: ImpAdLdRf MemVar_D9C5D8
  loc_B5FC28: NewIfNullPr Global
  loc_B5FC2B:  = Global.Printer
  loc_B5FC30: FLdPr var_17C
  loc_B5FC33: LateIdSt
  loc_B5FC38: FFree1Ad var_17C
  loc_B5FC3D: ExitProc
  loc_B5FC40: FLdRfVar var_194
  loc_B5FC43: ImpAdCallI2 Err 'rtcErrObj
  loc_B5FC48: FStAdFunc var_17C
  loc_B5FC4B: FLdPr var_17C
  loc_B5FC4E:  = Err.Number
  loc_B5FC53: ILdRf var_194
  loc_B5FC56: LitI4 &H1E2
  loc_B5FC5B: EqI4
  loc_B5FC5C: FFree1Ad var_17C
  loc_B5FC5F: BranchF loc_B5FC65
  loc_B5FC64: ExitProc
  loc_B5FC67: LitStr "Error de impresora: "
  loc_B5FC6A: FLdRfVar var_194
  loc_B5FC6D: ImpAdCallI2 Err 'rtcErrObj
  loc_B5FC72: FStAdFunc var_17C
  loc_B5FC75: FLdPr var_17C
  loc_B5FC78:  = Err.Number
  loc_B5FC7D: ILdRf var_194
  loc_B5FC80: CStrI4
  loc_B5FC82: FStStrNoPop var_190
  loc_B5FC85: ConcatStr
  loc_B5FC86: FStStrNoPop var_394
  loc_B5FC89: LitStr vbCrLf
  loc_B5FC8C: ConcatStr
  loc_B5FC8D: FStStrNoPop var_3A0
  loc_B5FC90: FLdRfVar var_39C
  loc_B5FC93: ImpAdCallI2 Err 'rtcErrObj
  loc_B5FC98: FStAdFunc var_398
  loc_B5FC9B: FLdPr var_398
  loc_B5FC9E:  = Err.Description
  loc_B5FCA3: ILdRf var_39C
  loc_B5FCA6: ConcatStr
  loc_B5FCA7: FStStrNoPop var_3A4
  loc_B5FCAA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5FCAF: FFreeStr var_190 = "": var_394 = "": var_3A0 = "": var_39C = ""
  loc_B5FCBC: FFreeAd var_17C = ""
  loc_B5FCC5: Resume
  loc_B5FCCB: ExitProc
End Function

Private Function Proc_17_5_B0B408() 'B0B408
  'Data Table: 40329C
  loc_B0B254: OnErrorGoto loc_B0B39F
  loc_B0B259: FLdRfVar var_180
  loc_B0B25C: ImpAdLdRf MemVar_D9C5D8
  loc_B0B25F: NewIfNullPr Global
  loc_B0B262:  = Global.Printer
  loc_B0B267: FLdPr var_180
  loc_B0B26A: LateIdLdVar var_190 DispID_28 1
  loc_B0B271: CStrVarTmp
  loc_B0B272: FMemStStr arg_8(0)
  loc_B0B278: FFree1Ad var_180
  loc_B0B27B: FFree1Var var_190 = ""
  loc_B0B280: FMemLdR4 arg_8(0)
  loc_B0B285: LitStr vbNullString
  loc_B0B288: EqStr
  loc_B0B28A: BranchF loc_B0B291
  loc_B0B28F: ExitProcUI1
  loc_B0B295: LitI4 0
  loc_B0B29A: FStR4 var_98
  loc_B0B29F: LitI4 0
  loc_B0B2A4: FStR4 var_94
  loc_B0B2A9: LitI4 &HF000C
  loc_B0B2AE: FStR4 var_90
  loc_B0B2B3: FLdRfVar var_98
  loc_B0B2B6: FLdRfVar var_8C
  loc_B0B2B9: FMemLdR4 arg_8(0)
  loc_B0B2BE: FLdRfVar var_194
  loc_B0B2C1: CStr2Ansi
  loc_B0B2C2: ILdRf var_194
  loc_B0B2C5: ImpAdCallI2 OpenPrinter(, , )
  loc_B0B2CA: FStR4 var_198
  loc_B0B2CD: SetLastSystemError
  loc_B0B2CE: ILdRf var_194
  loc_B0B2D1: FMemLdRf unk_4032A5
  loc_B0B2D6: CStr2Uni
  loc_B0B2D8: ILdRf var_198
  loc_B0B2DB: FStR4 var_170
  loc_B0B2DE: FFree1Str var_194
  loc_B0B2E3: FLdRfVar var_174
  loc_B0B2E6: LitI4 0
  loc_B0B2EB: LitI4 0
  loc_B0B2F0: LitI4 2
  loc_B0B2F5: ILdRf var_8C
  loc_B0B2F8: ImpAdCallI2 GetPrinter(, , , , )
  loc_B0B2FD: FStR4 var_198
  loc_B0B300: SetLastSystemError
  loc_B0B301: ILdRf var_198
  loc_B0B304: FStR4 var_170
  loc_B0B309: LitI4 0
  loc_B0B30E: ILdRf var_174
  loc_B0B311: LitI4 4
  loc_B0B316: IDvI4
  loc_B0B317: FLdRfVar var_17C
  loc_B0B31A: Redim
  loc_B0B326: FLdRfVar var_174
  loc_B0B329: ILdRf var_174
  loc_B0B32C: LitI4 0
  loc_B0B331: ILdRf var_17C
  loc_B0B334: AryLock
  loc_B0B337: Ary1LdRf
  loc_B0B338: LitI4 2
  loc_B0B33D: ILdRf var_8C
  loc_B0B340: ImpAdCallI2 GetPrinter(, , , , )
  loc_B0B345: FStR4 var_198
  loc_B0B348: SetLastSystemError
  loc_B0B349: AryUnlock
  loc_B0B34C: ILdRf var_198
  loc_B0B34F: FStR4 var_170
  loc_B0B354: LitI4 7
  loc_B0B359: ILdRf var_17C
  loc_B0B35C: Ary1LdI4
  loc_B0B35D: FStR4 var_178
  loc_B0B362: LitI4 &H94
  loc_B0B367: ILdRf var_178
  loc_B0B36A: FLdRfVar var_16C
  loc_B0B36D: FLdRfVar var_230
  loc_B0B370: CRec2Ansi arg_27
  loc_B0B373: FLdRfVar var_230
  loc_B0B376: ImpAdCallFPR4 CopyMemory(, , )
  loc_B0B37B: SetLastSystemError
  loc_B0B37C: FLdRfVar var_230
  loc_B0B37F: FLdRfVar var_16C
  loc_B0B382: CRec2Uni arg_27
  loc_B0B387: FLdI2 var_120
  loc_B0B38A: CUI1I2
  loc_B0B38C: FStUI1 var_86
  loc_B0B392: ILdRf var_8C
  loc_B0B395: ImpAdCallFPR4 ClosePrinter()
  loc_B0B39A: SetLastSystemError
  loc_B0B39D: ExitProcUI1
  loc_B0B3A1: LitStr "Error de impresora: "
  loc_B0B3A4: FLdRfVar var_198
  loc_B0B3A7: ImpAdCallI2 Err 'rtcErrObj
  loc_B0B3AC: FStAdFunc var_180
  loc_B0B3AF: FLdPr var_180
  loc_B0B3B2:  = Err.Number
  loc_B0B3B7: ILdRf var_198
  loc_B0B3BA: CStrI4
  loc_B0B3BC: FStStrNoPop var_194
  loc_B0B3BF: ConcatStr
  loc_B0B3C0: FStStrNoPop var_234
  loc_B0B3C3: LitStr vbCrLf
  loc_B0B3C6: ConcatStr
  loc_B0B3C7: FStStrNoPop var_240
  loc_B0B3CA: FLdRfVar var_23C
  loc_B0B3CD: ImpAdCallI2 Err 'rtcErrObj
  loc_B0B3D2: FStAdFunc var_238
  loc_B0B3D5: FLdPr var_238
  loc_B0B3D8:  = Err.Description
  loc_B0B3DD: ILdRf var_23C
  loc_B0B3E0: ConcatStr
  loc_B0B3E1: FStStrNoPop var_244
  loc_B0B3E4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B0B3E9: FFreeStr var_194 = "": var_234 = "": var_240 = "": var_23C = ""
  loc_B0B3F6: FFreeAd var_180 = ""
  loc_B0B3FF: Resume
  loc_B0B405: ExitProcUI1
End Function

Private Function Proc_17_6_A8760C(arg_C) 'A8760C
  'Data Table: 40329C
  loc_A87578: LitStr vbNullString
  loc_A8757B: FStStrCopy var_88
  loc_A8757E: FLdRfVar var_98
  loc_A87581: ILdPr
  loc_A87584:  = Form.hWnd
  loc_A87589: FLdRfVar var_94
  loc_A8758C: ILdI4 arg_C
  loc_A8758F: ILdRf var_98
  loc_A87592: ImpAdCallI2 SHGetSpecialFolderLocation(, , )
  loc_A87597: FStR4 var_9C
  loc_A8759A: SetLastSystemError
  loc_A8759B: ILdRf var_9C
  loc_A8759E: LitI4 0
  loc_A875A3: EqI4
  loc_A875A4: BranchF loc_A8760A
  loc_A875A7: LitI4 &H104
  loc_A875AC: ImpAdCallI2 Space$()
  loc_A875B1: FStStr var_8C
  loc_A875B4: ILdRf var_8C
  loc_A875B7: FLdRfVar var_A0
  loc_A875BA: CStr2Ansi
  loc_A875BB: ILdRf var_A0
  loc_A875BE: ILdRf var_94
  loc_A875C1: ImpAdCallI2 SHGetPathFromIDListA()
  loc_A875C6: FStR4 var_98
  loc_A875C9: SetLastSystemError
  loc_A875CA: ILdRf var_A0
  loc_A875CD: FLdRfVar var_8C
  loc_A875D0: CStr2Uni
  loc_A875D2: ILdRf var_98
  loc_A875D5: CBoolI4
  loc_A875D7: FFree1Str var_A0
  loc_A875DA: BranchF loc_A8760A
  loc_A875DD: LitI4 1
  loc_A875E2: ILdRf var_8C
  loc_A875E5: LitStr vbNullString
  loc_A875E8: LitI4 0
  loc_A875ED: FnInStr4
  loc_A875EF: LitI4 1
  loc_A875F4: SubI4
  loc_A875F5: ILdRf var_8C
  loc_A875F8: ImpAdCallI2 Left$(, )
  loc_A875FD: FStStrNoPop var_A0
  loc_A87600: LitStr vbNullString
  loc_A87603: ConcatStr
  loc_A87604: FStStr var_88
  loc_A87607: FFree1Str var_A0
  loc_A8760A: ExitProc
End Function

Private Function Proc_17_7_ABB1C8(arg_C) 'ABB1C8
  'Data Table: 40329C
  loc_ABB0F0: ILdI4 arg_C
  loc_ABB0F3: ILdRf var_8C
  loc_ABB0F6: FLdRfVar var_94
  loc_ABB0F9: CStr2Ansi
  loc_ABB0FA: ILdRf var_94
  loc_ABB0FD: ImpAdCallI2 lstrcpy(, )
  loc_ABB102: FStR4 var_9C
  loc_ABB105: SetLastSystemError
  loc_ABB106: ILdRf var_94
  loc_ABB109: FLdRfVar var_98
  loc_ABB10C: CStr2Uni
  loc_ABB10E: ILdRf var_98
  loc_ABB111: ILdRf var_8C
  loc_ABB114: StFixedStr
  loc_ABB117: ILdRf var_9C
  loc_ABB11A: FStR4 var_90
  loc_ABB11D: FFreeStr var_94 = ""
  loc_ABB124: LitI4 1
  loc_ABB129: ILdRf var_8C
  loc_ABB12C: CVarStr var_BC
  loc_ABB12F: LitI4 0
  loc_ABB134: FLdRfVar var_AC
  loc_ABB137: ImpAdCallFPR4  = Chr()
  loc_ABB13C: FLdRfVar var_AC
  loc_ABB13F: LitI4 0
  loc_ABB144: FnInStr4Var
  loc_ABB148: LitVarI2 var_DC, 0
  loc_ABB14D: HardType
  loc_ABB14E: EqVarBool
  loc_ABB150: FFreeVar var_AC = ""
  loc_ABB157: BranchF loc_ABB163
  loc_ABB15A: LitStr vbNullString
  loc_ABB15D: FStStrCopy var_88
  loc_ABB160: Branch loc_ABB1C4
  loc_ABB163: LitI4 1
  loc_ABB168: ILdRf var_8C
  loc_ABB16B: CVarStr var_BC
  loc_ABB16E: LitI4 0
  loc_ABB173: FLdRfVar var_AC
  loc_ABB176: ImpAdCallFPR4  = Chr()
  loc_ABB17B: FLdRfVar var_AC
  loc_ABB17E: LitI4 0
  loc_ABB183: FnInStr4Var
  loc_ABB187: LitVarI2 var_DC, 1
  loc_ABB18C: SubVar var_EC
  loc_ABB190: CI4Var
  loc_ABB192: ILdRf var_8C
  loc_ABB195: FStStrCopy var_94
  loc_ABB198: FLdRfVar var_94
  loc_ABB19B: CVarRef
  loc_ABB1A0: FLdRfVar var_10C
  loc_ABB1A3: ImpAdCallFPR4  = Left(, )
  loc_ABB1A8: ILdRf var_94
  loc_ABB1AB: ILdRf var_8C
  loc_ABB1AE: StFixedStr
  loc_ABB1B1: FLdRfVar var_10C
  loc_ABB1B4: CStrVarTmp
  loc_ABB1B5: FStStr var_88
  loc_ABB1B8: FFree1Str var_94
  loc_ABB1BB: FFreeVar var_AC = "": var_CC = ""
  loc_ABB1C4: ExitProc
End Function

Private Function Proc_17_8_A836C8(arg_C, arg_10, arg_14) 'A836C8
  'Data Table: 40329C
  loc_A8364C: ILdRf arg_C
  loc_A8364F: FStStrCopy var_88
  loc_A83652: ILdRf arg_10
  loc_A83655: FStStrCopy var_8C
  loc_A83658: ILdRf arg_14
  loc_A8365B: FStStrCopy var_90
  loc_A8365E: ILdRf var_88
  loc_A83661: LitStr ","
  loc_A83664: ConcatStr
  loc_A83665: FStStrNoPop var_A0
  loc_A83668: ILdRf var_8C
  loc_A8366B: ConcatStr
  loc_A8366C: FStStrNoPop var_A4
  loc_A8366F: LitStr ","
  loc_A83672: ConcatStr
  loc_A83673: FStStrNoPop var_A8
  loc_A83676: ILdRf var_90
  loc_A83679: ConcatStr
  loc_A8367A: FStStr var_94
  loc_A8367D: FFreeStr var_A0 = "": var_A4 = ""
  loc_A83686: ILdRf var_94
  loc_A83689: FLdRfVar var_A8
  loc_A8368C: CStr2Ansi
  loc_A8368D: ILdRf var_A8
  loc_A83690: LitStr "Device"
  loc_A83693: FLdRfVar var_A4
  loc_A83696: CStr2Ansi
  loc_A83697: ILdRf var_A4
  loc_A8369A: LitStr "windows"
  loc_A8369D: FLdRfVar var_A0
  loc_A836A0: CStr2Ansi
  loc_A836A1: ILdRf var_A0
  loc_A836A4: ImpAdCallI2 WriteProfileString(, , )
  loc_A836A9: FStR4 var_AC
  loc_A836AC: SetLastSystemError
  loc_A836AD: ILdRf var_A8
  loc_A836B0: FLdRfVar var_94
  loc_A836B3: CStr2Uni
  loc_A836B5: ILdRf var_AC
  loc_A836B8: FStR4 var_98
  loc_A836BB: FFreeStr var_A0 = "": var_A4 = ""
  loc_A836C4: ExitProc
  loc_A836C5: ExitProcI2
  loc_A836C6: ModI4
End Function

Private Function Proc_17_9_B44DBC(arg_C) 'B44DBC
  'Data Table: 40329C
  loc_B44AEE: ILdRf arg_C
  loc_B44AF1: FStStrCopy var_88
  loc_B44AF6: OnErrorGoto loc_B44D43
  loc_B44AFB: ILdRf var_88
  loc_B44AFE: LitStr vbNullString
  loc_B44B01: EqStr
  loc_B44B03: BranchF loc_B44B09
  loc_B44B08: ExitProc
  loc_B44B0D: LitI4 0
  loc_B44B12: FStR4 var_98
  loc_B44B17: LitI4 &HF000C
  loc_B44B1C: ILdRf var_90
  loc_B44B1F: OrI4
  loc_B44B20: FStR4 var_90
  loc_B44B25: FLdRfVar var_98
  loc_B44B28: FLdRfVar var_8C
  loc_B44B2B: ILdRf var_88
  loc_B44B2E: FLdRfVar var_BC
  loc_B44B31: CStr2Ansi
  loc_B44B32: ILdRf var_BC
  loc_B44B35: ImpAdCallI2 OpenPrinter(, , )
  loc_B44B3A: FStR4 var_C0
  loc_B44B3D: SetLastSystemError
  loc_B44B3E: ILdRf var_BC
  loc_B44B41: FLdRfVar var_88
  loc_B44B44: CStr2Uni
  loc_B44B46: ILdRf var_C0
  loc_B44B49: FStR4 var_9C
  loc_B44B4C: FFree1Str var_BC
  loc_B44B51: ILdRf var_9C
  loc_B44B54: LitI2_Byte 0
  loc_B44B56: CI4UI1
  loc_B44B57: EqI4
  loc_B44B58: BranchF loc_B44B5E
  loc_B44B5D: ExitProc
  loc_B44B62: FLdRfVar var_A0
  loc_B44B65: LitI4 0
  loc_B44B6A: LitI4 0
  loc_B44B6F: LitI4 5
  loc_B44B74: ILdRf var_8C
  loc_B44B77: ImpAdCallI2 GetPrinter(, , , , )
  loc_B44B7C: FStR4 var_C0
  loc_B44B7F: SetLastSystemError
  loc_B44B80: ILdRf var_C0
  loc_B44B83: FStR4 var_9C
  loc_B44B88: LitI4 0
  loc_B44B8D: ILdRf var_A0
  loc_B44B90: LitI4 4
  loc_B44B95: IDvI4
  loc_B44B96: FLdRfVar var_C4
  loc_B44B99: Redim
  loc_B44BA5: FLdRfVar var_A0
  loc_B44BA8: ILdRf var_A0
  loc_B44BAB: LitI4 0
  loc_B44BB0: ILdRf var_C4
  loc_B44BB3: AryLock
  loc_B44BB6: Ary1LdRf
  loc_B44BB7: LitI4 5
  loc_B44BBC: ILdRf var_8C
  loc_B44BBF: ImpAdCallI2 GetPrinter(, , , , )
  loc_B44BC4: FStR4 var_C0
  loc_B44BC7: SetLastSystemError
  loc_B44BC8: AryUnlock
  loc_B44BCB: ILdRf var_C0
  loc_B44BCE: FStR4 var_9C
  loc_B44BD3: ILdRf var_9C
  loc_B44BD6: LitI2_Byte 0
  loc_B44BD8: CI4UI1
  loc_B44BD9: EqI4
  loc_B44BDA: BranchF loc_B44BE0
  loc_B44BDF: ExitProc
  loc_B44BE4: LitI4 0
  loc_B44BE9: ILdRf var_C4
  loc_B44BEC: AryLock
  loc_B44BEF: Ary1LdRf
  loc_B44BF0: ImpAdCallI2 Proc_17_7_ABB1C8()
  loc_B44BF5: FStStr var_BC
  loc_B44BF8: AryUnlock
  loc_B44BFB: ILdRf var_BC
  loc_B44BFE: FStStrCopy var_B4
  loc_B44C01: FFree1Str var_BC
  loc_B44C06: LitI4 1
  loc_B44C0B: ILdRf var_C4
  loc_B44C0E: AryLock
  loc_B44C11: Ary1LdRf
  loc_B44C12: ImpAdCallI2 Proc_17_7_ABB1C8()
  loc_B44C17: FStStr var_BC
  loc_B44C1A: AryUnlock
  loc_B44C1D: ILdRf var_BC
  loc_B44C20: FStStrCopy var_B0
  loc_B44C23: FFree1Str var_BC
  loc_B44C28: LitI4 2
  loc_B44C2D: ILdRf var_C4
  loc_B44C30: Ary1LdI4
  loc_B44C31: FStR4 var_AC
  loc_B44C36: LitI4 3
  loc_B44C3B: ILdRf var_C4
  loc_B44C3E: Ary1LdI4
  loc_B44C3F: FStR4 var_A8
  loc_B44C44: LitI4 4
  loc_B44C49: ILdRf var_C4
  loc_B44C4C: Ary1LdI4
  loc_B44C4D: FStR4 var_A4
  loc_B44C52: LitI4 4
  loc_B44C57: FStR4 var_AC
  loc_B44C5C: LitI4 0
  loc_B44C61: FLdRfVar var_B4
  loc_B44C64: FLdRfVar var_DC
  loc_B44C67: CRec2Ansi arg_3D
  loc_B44C6A: FLdRfVar var_DC
  loc_B44C6D: LitI4 5
  loc_B44C72: ILdRf var_8C
  loc_B44C75: ImpAdCallI2 SetPrinter(, , , )
  loc_B44C7A: FStR4 var_C0
  loc_B44C7D: SetLastSystemError
  loc_B44C7E: FLdRfVar var_DC
  loc_B44C81: FLdRfVar var_B4
  loc_B44C84: CRec2Uni arg_3D
  loc_B44C87: ILdRf var_C0
  loc_B44C8A: FStR4 var_9C
  loc_B44C8D: DestructAnsiOFrame
  loc_B44C95: ILdRf var_9C
  loc_B44C98: LitI2_Byte 0
  loc_B44C9A: CI4UI1
  loc_B44C9B: EqI4
  loc_B44C9C: BranchF loc_B44CED
  loc_B44CA1: LitVar_Missing var_150
  loc_B44CA4: LitVar_Missing var_130
  loc_B44CA7: LitVar_Missing var_110
  loc_B44CAA: LitI4 0
  loc_B44CAF: LitStr "SetPrinter Failed. Error code: "
  loc_B44CB2: FLdRfVar var_C0
  loc_B44CB5: ImpAdCallI2 Err 'rtcErrObj
  loc_B44CBA: FStAdFunc var_E0
  loc_B44CBD: FLdPr var_E0
  loc_B44CC0:  = Err.LastDllError
  loc_B44CC5: ILdRf var_C0
  loc_B44CC8: CStrI4
  loc_B44CCA: FStStrNoPop var_BC
  loc_B44CCD: ConcatStr
  loc_B44CCE: CVarStr var_F0
  loc_B44CD1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B44CD6: FFree1Str var_BC
  loc_B44CD9: FFree1Ad var_E0
  loc_B44CDC: FFreeVar var_F0 = "": var_110 = "": var_130 = ""
  loc_B44CE9: ExitProc
  loc_B44CEA: Branch loc_B44D33
  loc_B44CF1: FLdRfVar var_E0
  loc_B44CF4: ImpAdLdRf MemVar_D9C5D8
  loc_B44CF7: NewIfNullPr Global
  loc_B44CFA:  = Global.Printer
  loc_B44CFF: FLdPr var_E0
  loc_B44D02: LateIdLdVar var_F0 DispID_28 1
  loc_B44D09: CStrVarTmp
  loc_B44D0A: FStStrNoPop var_BC
  loc_B44D0D: ILdRf var_88
  loc_B44D10: NeStr
  loc_B44D12: FFree1Str var_BC
  loc_B44D15: FFree1Ad var_E0
  loc_B44D18: FFree1Var var_F0 = ""
  loc_B44D1B: BranchF loc_B44D31
  loc_B44D20: ILdRf var_88
  loc_B44D23: FStStrCopy var_BC
  loc_B44D26: FLdRfVar var_BC
  loc_B44D29: ImpAdCallFPR4 Proc_17_3_A6FF40()
  loc_B44D2E: FFree1Str var_BC
  loc_B44D37: ILdRf var_8C
  loc_B44D3A: ImpAdCallFPR4 ClosePrinter()
  loc_B44D3F: SetLastSystemError
  loc_B44D42: ExitProc
  loc_B44D45: LitStr "Error al acceder a la impresora."
  loc_B44D48: LitStr vbCrLf
  loc_B44D4B: ConcatStr
  loc_B44D4C: FStStrNoPop var_BC
  loc_B44D4F: LitStr "Cod. "
  loc_B44D52: ConcatStr
  loc_B44D53: FStStrNoPop var_154
  loc_B44D56: FLdRfVar var_C0
  loc_B44D59: ImpAdCallI2 Err 'rtcErrObj
  loc_B44D5E: FStAdFunc var_E0
  loc_B44D61: FLdPr var_E0
  loc_B44D64:  = Err.Number
  loc_B44D69: ILdRf var_C0
  loc_B44D6C: CStrI4
  loc_B44D6E: FStStrNoPop var_158
  loc_B44D71: ConcatStr
  loc_B44D72: FStStrNoPop var_15C
  loc_B44D75: LitStr ": "
  loc_B44D78: ConcatStr
  loc_B44D79: FStStrNoPop var_168
  loc_B44D7C: FLdRfVar var_164
  loc_B44D7F: ImpAdCallI2 Err 'rtcErrObj
  loc_B44D84: FStAdFunc var_160
  loc_B44D87: FLdPr var_160
  loc_B44D8A:  = Err.Description
  loc_B44D8F: ILdRf var_164
  loc_B44D92: ConcatStr
  loc_B44D93: FStStrNoPop var_16C
  loc_B44D96: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B44D9B: FFreeStr var_BC = "": var_154 = "": var_158 = "": var_15C = "": var_168 = "": var_164 = ""
  loc_B44DAC: FFreeAd var_E0 = ""
  loc_B44DB5: Resume
  loc_B44DBB: ExitProc
End Function

Private Function Proc_17_10_A9384C(arg_C, arg_10, arg_14) 'A9384C
  'Data Table: 40329C
  loc_A937A0: ILdRf arg_C
  loc_A937A3: FStStrCopy var_88
  loc_A937A6: LitStr vbNullString
  loc_A937A9: IStStrCopy arg_10
  loc_A937AD: LitStr vbNullString
  loc_A937B0: IStStrCopy arg_14
  loc_A937B4: LitI4 1
  loc_A937B9: ILdRf var_88
  loc_A937BC: LitStr ","
  loc_A937BF: LitI4 0
  loc_A937C4: FnInStr4
  loc_A937C6: CI2I4
  loc_A937C7: FStI2 var_8A
  loc_A937CA: FLdI2 var_8A
  loc_A937CD: LitI2_Byte 0
  loc_A937CF: GtI2
  loc_A937D0: BranchF loc_A93849
  loc_A937D3: FLdI2 var_8A
  loc_A937D6: LitI2_Byte 1
  loc_A937D8: SubI2
  loc_A937D9: CI4UI1
  loc_A937DA: FLdRfVar var_88
  loc_A937DD: CVarRef
  loc_A937E2: FLdRfVar var_AC
  loc_A937E5: ImpAdCallFPR4  = Left(, )
  loc_A937EA: FLdRfVar var_AC
  loc_A937ED: CStrVarTmp
  loc_A937EE: IStStr
  loc_A937F2: FFree1Var var_AC = ""
  loc_A937F5: FLdI2 var_8A
  loc_A937F8: LitI2_Byte 1
  loc_A937FA: AddI2
  loc_A937FB: CI4UI1
  loc_A937FC: ILdRf var_88
  loc_A937FF: LitStr ","
  loc_A93802: LitI4 0
  loc_A93807: FnInStr4
  loc_A93809: CI2I4
  loc_A9380A: FStI2 var_8C
  loc_A9380D: FLdI2 var_8C
  loc_A93810: LitI2_Byte 0
  loc_A93812: GtI2
  loc_A93813: BranchF loc_A93849
  loc_A93816: FLdI2 var_8C
  loc_A93819: FLdI2 var_8A
  loc_A9381C: SubI2
  loc_A9381D: LitI2_Byte 1
  loc_A9381F: SubI2
  loc_A93820: CVarI2 var_AC
  loc_A93823: FLdI2 var_8A
  loc_A93826: LitI2_Byte 1
  loc_A93828: AddI2
  loc_A93829: CI4UI1
  loc_A9382A: FLdRfVar var_88
  loc_A9382D: CVarRef
  loc_A93832: FLdRfVar var_CC
  loc_A93835: ImpAdCallFPR4  = Mid(, , )
  loc_A9383A: FLdRfVar var_CC
  loc_A9383D: CStrVarTmp
  loc_A9383E: IStStr
  loc_A93842: FFreeVar var_AC = ""
  loc_A93849: ExitProc
  loc_A9384A: FLdPr arg_6408
End Function

Private Function Proc_17_11_AC2ED0(arg_C) 'AC2ED0
  'Data Table: 40329C
  loc_AC2DEC: ILdRf arg_C
  loc_AC2DEF: FStStrCopy var_88
  loc_AC2DF2: LitI4 &H400
  loc_AC2DF7: FLdRfVar var_AC
  loc_AC2DFA: ImpAdCallFPR4  = Space()
  loc_AC2DFF: FLdRfVar var_AC
  loc_AC2E02: CStrVarTmp
  loc_AC2E03: FStStr var_8C
  loc_AC2E06: FFree1Var var_AC = ""
  loc_AC2E09: ILdRf var_8C
  loc_AC2E0C: FnLenStr
  loc_AC2E0D: ILdRf var_8C
  loc_AC2E10: FLdRfVar var_BC
  loc_AC2E13: CStr2Ansi
  loc_AC2E14: ILdRf var_BC
  loc_AC2E17: LitStr vbNullString
  loc_AC2E1A: FLdRfVar var_B8
  loc_AC2E1D: CStr2Ansi
  loc_AC2E1E: ILdRf var_B8
  loc_AC2E21: ILdRf var_88
  loc_AC2E24: FLdRfVar var_B4
  loc_AC2E27: CStr2Ansi
  loc_AC2E28: ILdRf var_B4
  loc_AC2E2B: LitStr "PrinterPorts"
  loc_AC2E2E: FLdRfVar var_B0
  loc_AC2E31: CStr2Ansi
  loc_AC2E32: ILdRf var_B0
  loc_AC2E35: ImpAdCallI2 GetProfileString(, , , , )
  loc_AC2E3A: FStR4 var_C0
  loc_AC2E3D: SetLastSystemError
  loc_AC2E3E: ILdRf var_B4
  loc_AC2E41: FLdRfVar var_88
  loc_AC2E44: CStr2Uni
  loc_AC2E46: ILdRf var_BC
  loc_AC2E49: FLdRfVar var_8C
  loc_AC2E4C: CStr2Uni
  loc_AC2E4E: ILdRf var_C0
  loc_AC2E51: FStR4 var_9C
  loc_AC2E54: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_AC2E5F: FLdRfVar var_98
  loc_AC2E62: FLdRfVar var_94
  loc_AC2E65: ILdRf var_8C
  loc_AC2E68: ImpAdCallFPR4 Proc_17_10_A9384C(, , )
  loc_AC2E6D: ILdRf var_94
  loc_AC2E70: LitStr vbNullString
  loc_AC2E73: NeStr
  loc_AC2E75: ILdRf var_98
  loc_AC2E78: LitStr vbNullString
  loc_AC2E7B: NeStr
  loc_AC2E7D: AndI4
  loc_AC2E7E: BranchF loc_AC2ECD
  loc_AC2E81: ILdRf var_98
  loc_AC2E84: ILdRf var_94
  loc_AC2E87: ILdRf var_88
  loc_AC2E8A: ImpAdCallFPR4 Proc_17_8_A836C8(, , )
  loc_AC2E8F: FLdRfVar var_C4
  loc_AC2E92: ImpAdLdRf MemVar_D9C5D8
  loc_AC2E95: NewIfNullPr Global
  loc_AC2E98:  = Global.Printer
  loc_AC2E9D: FLdPr var_C4
  loc_AC2EA0: LateIdLdVar var_AC DispID_28 1
  loc_AC2EA7: CStrVarTmp
  loc_AC2EA8: FStStrNoPop var_B0
  loc_AC2EAB: ILdRf var_88
  loc_AC2EAE: NeStr
  loc_AC2EB0: FFree1Str var_B0
  loc_AC2EB3: FFree1Ad var_C4
  loc_AC2EB6: FFree1Var var_AC = ""
  loc_AC2EB9: BranchF loc_AC2ECD
  loc_AC2EBC: ILdRf var_88
  loc_AC2EBF: FStStrCopy var_B0
  loc_AC2EC2: FLdRfVar var_B0
  loc_AC2EC5: ImpAdCallFPR4 Proc_17_3_A6FF40()
  loc_AC2ECA: FFree1Str var_B0
  loc_AC2ECD: ExitProc
End Function

Private Function Proc_17_12_B18584(arg_C) 'B18584
  'Data Table: 40329C
  loc_B1839C: ILdRf arg_C
  loc_B1839F: FStStrCopy var_8C
  loc_B183A2: FLdRfVar var_184
  loc_B183A5: ImpAdLdRf MemVar_D9C5D8
  loc_B183A8: NewIfNullPr Global
  loc_B183AB:  = Global.Printer
  loc_B183B0: FLdPr var_184
  loc_B183B3: LateIdLdVar var_194 DispID_28 1
  loc_B183BA: CStrVarTmp
  loc_B183BB: FStStr var_8C
  loc_B183BE: FFree1Ad var_184
  loc_B183C1: FFree1Var var_194 = ""
  loc_B183C4: ILdRf var_8C
  loc_B183C7: LitStr vbNullString
  loc_B183CA: EqStr
  loc_B183CC: BranchF loc_B183D0
  loc_B183CF: ExitProcI2
  loc_B183D0: LitI4 0
  loc_B183D5: FStR4 var_9C
  loc_B183D8: LitI4 0
  loc_B183DD: FStR4 var_98
  loc_B183E0: LitI4 &HF000C
  loc_B183E5: FStR4 var_94
  loc_B183E8: FLdRfVar var_9C
  loc_B183EB: FLdRfVar var_90
  loc_B183EE: ILdRf var_8C
  loc_B183F1: FLdRfVar var_198
  loc_B183F4: CStr2Ansi
  loc_B183F5: ILdRf var_198
  loc_B183F8: ImpAdCallI2 OpenPrinter(, , )
  loc_B183FD: FStR4 var_19C
  loc_B18400: SetLastSystemError
  loc_B18401: ILdRf var_198
  loc_B18404: FLdRfVar var_8C
  loc_B18407: CStr2Uni
  loc_B18409: ILdRf var_19C
  loc_B1840C: FStR4 var_174
  loc_B1840F: FFree1Str var_198
  loc_B18412: FLdRfVar var_178
  loc_B18415: LitI4 0
  loc_B1841A: LitI4 0
  loc_B1841F: LitI4 2
  loc_B18424: ILdRf var_90
  loc_B18427: ImpAdCallI2 GetPrinter(, , , , )
  loc_B1842C: FStR4 var_19C
  loc_B1842F: SetLastSystemError
  loc_B18430: ILdRf var_19C
  loc_B18433: FStR4 var_174
  loc_B18436: LitI4 0
  loc_B1843B: ILdRf var_178
  loc_B1843E: LitI4 4
  loc_B18443: IDvI4
  loc_B18444: FLdRfVar var_180
  loc_B18447: Redim
  loc_B18451: FLdRfVar var_178
  loc_B18454: ILdRf var_178
  loc_B18457: LitI4 0
  loc_B1845C: ILdRf var_180
  loc_B1845F: AryLock
  loc_B18462: Ary1LdRf
  loc_B18463: LitI4 2
  loc_B18468: ILdRf var_90
  loc_B1846B: ImpAdCallI2 GetPrinter(, , , , )
  loc_B18470: FStR4 var_19C
  loc_B18473: SetLastSystemError
  loc_B18474: AryUnlock
  loc_B18477: ILdRf var_19C
  loc_B1847A: FStR4 var_174
  loc_B1847D: LitI4 7
  loc_B18482: ILdRf var_180
  loc_B18485: Ary1LdI4
  loc_B18486: FStR4 var_17C
  loc_B18489: LitI4 &H94
  loc_B1848E: ILdRf var_17C
  loc_B18491: FLdRfVar var_170
  loc_B18494: FLdRfVar var_234
  loc_B18497: CRec2Ansi arg_27
  loc_B1849A: FLdRfVar var_234
  loc_B1849D: ImpAdCallFPR4 CopyMemory(, , )
  loc_B184A2: SetLastSystemError
  loc_B184A3: FLdRfVar var_234
  loc_B184A6: FLdRfVar var_170
  loc_B184A9: CRec2Uni arg_27
  loc_B184AC: FLdRfVar var_244
  loc_B184AF: CI2Var
  loc_B184B0: FStI2 var_112
  loc_B184B3: LitI4 &H1001
  loc_B184B8: FStR4 var_128
  loc_B184BB: FLdRfVar var_254
  loc_B184BE: CI2Var
  loc_B184BF: FStI2 var_124
  loc_B184C2: LitI4 &H94
  loc_B184C7: FLdRfVar var_170
  loc_B184CA: FLdRfVar var_2E8
  loc_B184CD: CRec2Ansi arg_27
  loc_B184D0: FLdRfVar var_2E8
  loc_B184D3: ILdRf var_17C
  loc_B184D6: ImpAdCallFPR4 CopyMemory(, , )
  loc_B184DB: SetLastSystemError
  loc_B184DC: FLdRfVar var_2E8
  loc_B184DF: FLdRfVar var_170
  loc_B184E2: CRec2Uni arg_27
  loc_B184E5: LitVarI2 var_2F8, 0
  loc_B184EA: PopAdLdVar
  loc_B184EB: FLdRfVar var_184
  loc_B184EE: ImpAdLdRf MemVar_D9C5D8
  loc_B184F1: NewIfNullPr Global
  loc_B184F4:  = Global.Forms
  loc_B184F9: FLdPr var_184
  loc_B184FC: LateIdCallLdVar
  loc_B18506: VarLateMemLdVar var_318, .hWnd
  loc_B1850C: PopAd
  loc_B1850E: LitI4 &HA
  loc_B18513: ILdRf var_17C
  loc_B18516: ILdRf var_17C
  loc_B18519: ILdRf var_8C
  loc_B1851C: FLdRfVar var_198
  loc_B1851F: CStr2Ansi
  loc_B18520: ILdRf var_198
  loc_B18523: ILdRf var_90
  loc_B18526: FLdRfVar var_318
  loc_B18529: CI4Var
  loc_B1852B: ImpAdCallI2 AdvancedDocumentProperties(, , , , )
  loc_B18530: FStR4 var_19C
  loc_B18533: SetLastSystemError
  loc_B18534: ILdRf var_198
  loc_B18537: FLdRfVar var_8C
  loc_B1853A: CStr2Uni
  loc_B1853C: ILdRf var_19C
  loc_B1853F: FStR4 var_174
  loc_B18542: FFree1Str var_198
  loc_B18545: FFree1Ad var_184
  loc_B18548: FFreeVar var_194 = ""
  loc_B1854F: LitI4 0
  loc_B18554: LitI4 0
  loc_B18559: ILdRf var_180
  loc_B1855C: AryLock
  loc_B1855F: Ary1LdRf
  loc_B18560: LitI4 2
  loc_B18565: ILdRf var_90
  loc_B18568: ImpAdCallI2 SetPrinter(, , , )
  loc_B1856D: FStR4 var_19C
  loc_B18570: SetLastSystemError
  loc_B18571: AryUnlock
  loc_B18574: ILdRf var_19C
  loc_B18577: FStR4 var_174
  loc_B1857A: ILdRf var_90
  loc_B1857D: ImpAdCallFPR4 ClosePrinter()
  loc_B18582: SetLastSystemError
  loc_B18583: ExitProcI2
End Function

Private Function Proc_17_13_B0A5D0(arg_C) 'B0A5D0
  'Data Table: 40329C
  loc_B0A3DC: ILdRf arg_C
  loc_B0A3DF: FStStrCopy var_8C
  loc_B0A3E2: LitI4 8
  loc_B0A3E7: FStR4 var_178
  loc_B0A3EA: FLdRfVar var_180
  loc_B0A3ED: FLdRfVar var_98
  loc_B0A3F0: ILdRf var_8C
  loc_B0A3F3: FLdRfVar var_188
  loc_B0A3F6: CStr2Ansi
  loc_B0A3F7: ILdRf var_188
  loc_B0A3FA: ImpAdCallI2 OpenPrinter(, , )
  loc_B0A3FF: FStR4 var_18C
  loc_B0A402: SetLastSystemError
  loc_B0A403: ILdRf var_188
  loc_B0A406: FLdRfVar var_8C
  loc_B0A409: CStr2Uni
  loc_B0A40B: ILdRf var_18C
  loc_B0A40E: FStR4 var_168
  loc_B0A411: FFree1Str var_188
  loc_B0A414: ILdRf var_168
  loc_B0A417: LitI4 0
  loc_B0A41C: EqI4
  loc_B0A41D: BranchF loc_B0A461
  loc_B0A420: LitStr "Cannot open printer "
  loc_B0A423: ILdRf var_8C
  loc_B0A426: ConcatStr
  loc_B0A427: FStStrNoPop var_188
  loc_B0A42A: LitStr ", Error: "
  loc_B0A42D: ConcatStr
  loc_B0A42E: FStStrNoPop var_194
  loc_B0A431: FLdRfVar var_18C
  loc_B0A434: ImpAdCallI2 Err 'rtcErrObj
  loc_B0A439: FStAdFunc var_190
  loc_B0A43C: FLdPr var_190
  loc_B0A43F:  = Err.LastDllError
  loc_B0A444: ILdRf var_18C
  loc_B0A447: CStrI4
  loc_B0A449: FStStrNoPop var_198
  loc_B0A44C: ConcatStr
  loc_B0A44D: CVarStr var_1B8
  loc_B0A450: FStVar var_1A8
  loc_B0A454: FFreeStr var_188 = "": var_194 = ""
  loc_B0A45D: FFree1Ad var_190
  loc_B0A460: ExitProcI2
  loc_B0A461: LitI4 0
  loc_B0A466: FStR4 var_A0
  loc_B0A469: ImpAdCallI2 Err 'rtcErrObj
  loc_B0A46E: FStAdFunc var_190
  loc_B0A471: FLdPr var_190
  loc_B0A474: VCallFPR8  = Proc_17_10_A9384C(, , )
  loc_B0A477: FFree1Ad var_190
  loc_B0A47A: FLdRfVar var_A0
  loc_B0A47D: LitI4 0
  loc_B0A482: LitI4 0
  loc_B0A487: PopTmpLdAdStr var_18C
  loc_B0A48A: LitI4 2
  loc_B0A48F: ILdRf var_98
  loc_B0A492: ImpAdCallI2 GetPrinter(, , , , )
  loc_B0A497: FStR4 var_1BC
  loc_B0A49A: SetLastSystemError
  loc_B0A49B: ILdRf var_1BC
  loc_B0A49E: FStR4 var_168
  loc_B0A4A1: FLdRfVar var_18C
  loc_B0A4A4: ImpAdCallI2 Err 'rtcErrObj
  loc_B0A4A9: FStAdFunc var_190
  loc_B0A4AC: FLdPr var_190
  loc_B0A4AF:  = Err.LastDllError
  loc_B0A4B4: ILdRf var_18C
  loc_B0A4B7: CVarI4
  loc_B0A4BB: HardType
  loc_B0A4BC: FLdRfVar var_1CC
  loc_B0A4BF: NeVarBool
  loc_B0A4C1: FFree1Ad var_190
  loc_B0A4C4: BranchF loc_B0A4DA
  loc_B0A4C7: LitVarStr var_1DC, " > GetPrinter Failed on initial call! <"
  loc_B0A4CC: FStVarCopy
  loc_B0A4D0: ILdRf var_98
  loc_B0A4D3: ImpAdCallFPR4 ClosePrinter()
  loc_B0A4D8: SetLastSystemError
  loc_B0A4D9: ExitProcI2
  loc_B0A4DA: LitI4 1
  loc_B0A4DF: ILdRf var_A0
  loc_B0A4E2: FLdRfVar var_160
  loc_B0A4E5: Redim
  loc_B0A4EF: ILdRf var_A0
  loc_B0A4F2: FStR4 var_9C
  loc_B0A4F5: FLdRfVar var_A0
  loc_B0A4F8: ILdRf var_9C
  loc_B0A4FB: LitI4 1
  loc_B0A500: ILdRf var_160
  loc_B0A503: AryLock
  loc_B0A506: Ary1LdRf
  loc_B0A507: LitI4 2
  loc_B0A50C: ILdRf var_98
  loc_B0A50F: ImpAdCallI2 GetPrinter(, , , , )
  loc_B0A514: FStR4 var_18C
  loc_B0A517: SetLastSystemError
  loc_B0A518: AryUnlock
  loc_B0A51B: ILdRf var_18C
  loc_B0A51E: FStR4 var_168
  loc_B0A521: ILdRf var_168
  loc_B0A524: LitI4 0
  loc_B0A529: EqI4
  loc_B0A52A: BranchF loc_B0A569
  loc_B0A52D: FLdRfVar var_18C
  loc_B0A530: ImpAdCallI2 Err 'rtcErrObj
  loc_B0A535: FStAdFunc var_190
  loc_B0A538: FLdPr var_190
  loc_B0A53B:  = Err.LastDllError
  loc_B0A540: ILdRf var_18C
  loc_B0A543: FStR4 var_16C
  loc_B0A546: FFree1Ad var_190
  loc_B0A549: LitStr "Couldn't get Printer Status!  Error = "
  loc_B0A54C: ILdRf var_16C
  loc_B0A54F: CStrI4
  loc_B0A551: FStStrNoPop var_188
  loc_B0A554: ConcatStr
  loc_B0A555: CVarStr var_1B8
  loc_B0A558: FStVar var_1A8
  loc_B0A55C: FFree1Str var_188
  loc_B0A55F: ILdRf var_98
  loc_B0A562: ImpAdCallFPR4 ClosePrinter()
  loc_B0A567: SetLastSystemError
  loc_B0A568: ExitProcI2
  loc_B0A569: LitI4 &H54
  loc_B0A56E: LitI4 1
  loc_B0A573: ILdRf var_160
  loc_B0A576: AryLock
  loc_B0A579: Ary1LdRf
  loc_B0A57A: FLdRfVar var_F4
  loc_B0A57D: ImpAdCallFPR4 CopyMemory(, , )
  loc_B0A582: SetLastSystemError
  loc_B0A583: AryUnlock
  loc_B0A586: FLdRfVar var_AC
  loc_B0A589: ImpAdCallI2 Proc_17_2_B1BDA4()
  loc_B0A58E: FStStr var_90
  loc_B0A591: FLdRfVar var_174
  loc_B0A594: FLdRfVar var_A0
  loc_B0A597: LitI4 0
  loc_B0A59C: LitI4 0
  loc_B0A5A1: CUI1I4
  loc_B0A5A3: LitI4 2
  loc_B0A5A8: LitI4 -1
  loc_B0A5AD: LitI4 0
  loc_B0A5B2: ILdRf var_98
  loc_B0A5B5: ImpAdCallI2 EnumJobs(, , , , , , , )
  loc_B0A5BA: FStR4 var_18C
  loc_B0A5BD: SetLastSystemError
  loc_B0A5BE: ILdRf var_18C
  loc_B0A5C1: FStR4 var_168
  loc_B0A5C4: ILdRf var_98
  loc_B0A5C7: ImpAdCallFPR4 ClosePrinter()
  loc_B0A5CC: SetLastSystemError
  loc_B0A5CD: ExitProcI2
End Function

Private Function Proc_17_14_B37E58(arg_C, arg_10) 'B37E58
  'Data Table: 40329C
  loc_B37B60: LitI2_Byte 0
  loc_B37B62: FStI2 var_86
  loc_B37B65: LitI2_Byte &HFF
  loc_B37B67: FStI2 var_8E
  loc_B37B6A: FLdRfVar var_A0
  loc_B37B6D: ILdPr
  loc_B37B70:  = Me.SelStart
  loc_B37B75: ILdRf var_A0
  loc_B37B78: FStR4 var_98
  loc_B37B7B: FLdRfVar var_A0
  loc_B37B7E: ILdPr
  loc_B37B81:  = Me.SelLength
  loc_B37B86: ILdRf var_A0
  loc_B37B89: FStR4 var_9C
  loc_B37B8C: OnErrorGoto loc_B37E31
  loc_B37B8F: FLdI2 arg_10
  loc_B37B92: LitI2_Byte &H20
  loc_B37B94: LtI2
  loc_B37B95: BranchF loc_B37CEC
  loc_B37B98: LitI2_Byte 0
  loc_B37B9A: FStI2 var_8E
  loc_B37B9D: LitI4 0
  loc_B37BA2: ILdPr
  loc_B37BA5: Me.SelLength = from_stack_1
  loc_B37BAA: FLdI2 arg_10
  loc_B37BAD: LitStr ""
  loc_B37BB0: ImpAdCallI2 Asc()
  loc_B37BB5: EqI2
  loc_B37BB6: BranchF loc_B37C80
  loc_B37BB9: ILdRf var_9C
  loc_B37BBC: LitI4 0
  loc_B37BC1: EqI4
  loc_B37BC2: BranchF loc_B37C2E
  loc_B37BC5: FLdRfVar var_A4
  loc_B37BC8: ILdPr
  loc_B37BCB:  = Me.Text
  loc_B37BD0: ILdRf var_A4
  loc_B37BD3: FnLenStr
  loc_B37BD4: LitI4 0
  loc_B37BD9: GtI4
  loc_B37BDA: FFree1Str var_A4
  loc_B37BDD: BranchF loc_B37C2B
  loc_B37BE0: FLdRfVar var_A4
  loc_B37BE3: ILdPr
  loc_B37BE6:  = Me.Text
  loc_B37BEB: FLdRfVar var_A8
  loc_B37BEE: ILdPr
  loc_B37BF1:  = Me.Text
  loc_B37BF6: ILdRf var_A8
  loc_B37BF9: FnLenStr
  loc_B37BFA: LitI4 1
  loc_B37BFF: SubI4
  loc_B37C00: FLdZeroAd var_A4
  loc_B37C03: CVarStr var_B8
  loc_B37C06: FLdRfVar var_C8
  loc_B37C09: ImpAdCallFPR4  = Left(, )
  loc_B37C0E: FLdRfVar var_C8
  loc_B37C11: CStrVarVal var_CC
  loc_B37C15: ILdPr
  loc_B37C18: Me.Text = from_stack_1
  loc_B37C1D: FFreeStr var_A8 = ""
  loc_B37C24: FFreeVar var_B8 = ""
  loc_B37C2B: Branch loc_B37C63
  loc_B37C2E: FLdRfVar var_A4
  loc_B37C31: ILdPr
  loc_B37C34:  = Me.Text
  loc_B37C39: ILdRf var_98
  loc_B37C3C: FLdZeroAd var_A4
  loc_B37C3F: CVarStr var_B8
  loc_B37C42: FLdRfVar var_C8
  loc_B37C45: ImpAdCallFPR4  = Left(, )
  loc_B37C4A: FLdRfVar var_C8
  loc_B37C4D: CStrVarVal var_A8
  loc_B37C51: ILdPr
  loc_B37C54: Me.Text = from_stack_1
  loc_B37C59: FFree1Str var_A8
  loc_B37C5C: FFreeVar var_B8 = ""
  loc_B37C63: FLdRfVar var_A4
  loc_B37C66: ILdPr
  loc_B37C69:  = Me.Text
  loc_B37C6E: ILdRf var_A4
  loc_B37C71: FnLenStr
  loc_B37C72: ILdPr
  loc_B37C75: Me.SelStart = from_stack_1
  loc_B37C7A: FFree1Str var_A4
  loc_B37C7D: Branch loc_B37CE9
  loc_B37C80: FLdI2 arg_10
  loc_B37C83: CI4UI1
  loc_B37C84: LitI4 &HD
  loc_B37C89: EqI4
  loc_B37C8A: BranchF loc_B37CE9
  loc_B37C8D: FLdRfVar var_A4
  loc_B37C90: ILdPr
  loc_B37C93:  = Me.Text
  loc_B37C98: ILdRf var_A4
  loc_B37C9B: FnLenStr
  loc_B37C9C: ILdPr
  loc_B37C9F: Me.SelStart = from_stack_1
  loc_B37CA4: FFree1Str var_A4
  loc_B37CA7: FLdRfVar var_A0
  loc_B37CAA: ILdPr
  loc_B37CAD:  = Me.hWnd
  loc_B37CB2: LitI2_Byte 0
  loc_B37CB4: CStrUI1
  loc_B37CB6: FStStrNoPop var_A4
  loc_B37CB9: FLdRfVar var_A8
  loc_B37CBC: CStr2Ansi
  loc_B37CBD: FLdRfVar var_A8
  loc_B37CC0: LitI4 0
  loc_B37CC5: LitI4 9
  loc_B37CCA: ILdRf var_A0
  loc_B37CCD: ImpAdCallI2 SendMessage(, , , )
  loc_B37CD2: FStR4 var_D0
  loc_B37CD5: SetLastSystemError
  loc_B37CD6: ILdRf var_D0
  loc_B37CD9: FStR4 var_94
  loc_B37CDC: FFreeStr var_A4 = ""
  loc_B37CE3: FLdI2 arg_10
  loc_B37CE6: FStI2 var_86
  loc_B37CE9: Branch loc_B37D6D
  loc_B37CEC: ILdRf var_9C
  loc_B37CEF: LitI4 0
  loc_B37CF4: EqI4
  loc_B37CF5: BranchF loc_B37D2C
  loc_B37CF8: FLdRfVar var_A4
  loc_B37CFB: ILdPr
  loc_B37CFE:  = Me.Text
  loc_B37D03: FLdZeroAd var_A4
  loc_B37D06: CVarStr var_C8
  loc_B37D09: FLdI2 arg_10
  loc_B37D0C: CI4UI1
  loc_B37D0D: FLdRfVar var_B8
  loc_B37D10: ImpAdCallFPR4  = Chr()
  loc_B37D15: FLdRfVar var_B8
  loc_B37D18: ConcatVar var_E0
  loc_B37D1C: CStrVarTmp
  loc_B37D1D: FStStr var_8C
  loc_B37D20: FFreeVar var_C8 = "": var_B8 = ""
  loc_B37D29: Branch loc_B37D6D
  loc_B37D2C: FLdRfVar var_A4
  loc_B37D2F: ILdPr
  loc_B37D32:  = Me.Text
  loc_B37D37: ILdRf var_98
  loc_B37D3A: FLdZeroAd var_A4
  loc_B37D3D: CVarStr var_B8
  loc_B37D40: FLdRfVar var_C8
  loc_B37D43: ImpAdCallFPR4  = Left(, )
  loc_B37D48: FLdRfVar var_C8
  loc_B37D4B: FLdI2 arg_10
  loc_B37D4E: CI4UI1
  loc_B37D4F: FLdRfVar var_E0
  loc_B37D52: ImpAdCallFPR4  = Chr()
  loc_B37D57: FLdRfVar var_E0
  loc_B37D5A: ConcatVar var_F0
  loc_B37D5E: CStrVarTmp
  loc_B37D5F: FStStr var_8C
  loc_B37D62: FFreeVar var_B8 = "": var_C8 = "": var_E0 = ""
  loc_B37D6D: FLdI2 var_8E
  loc_B37D70: BranchF loc_B37E2D
  loc_B37D73: ILdRf arg_C
  loc_B37D76: ImpAdCallFPR4 Proc_17_15_A09468()
  loc_B37D7B: FLdRfVar var_A0
  loc_B37D7E: ILdPr
  loc_B37D81:  = Me.hWnd
  loc_B37D86: ILdRf var_8C
  loc_B37D89: FLdRfVar var_A4
  loc_B37D8C: CStr2Ansi
  loc_B37D8D: ILdRf var_A4
  loc_B37D90: LitI4 -1
  loc_B37D95: LitI4 &H14D
  loc_B37D9A: ILdRf var_A0
  loc_B37D9D: ImpAdCallI2 SendMessage(, , , )
  loc_B37DA2: FStR4 var_D0
  loc_B37DA5: SetLastSystemError
  loc_B37DA6: ILdRf var_A4
  loc_B37DA9: FLdRfVar var_8C
  loc_B37DAC: CStr2Uni
  loc_B37DAE: ILdRf var_D0
  loc_B37DB1: FStR4 var_94
  loc_B37DB4: FFree1Str var_A4
  loc_B37DB7: ILdRf var_94
  loc_B37DBA: LitI4 -1
  loc_B37DBF: EqI4
  loc_B37DC0: BranchF loc_B37DF8
  loc_B37DC3: ILdRf var_8C
  loc_B37DC6: ILdPr
  loc_B37DC9: Me.Text = from_stack_1
  loc_B37DCE: LitI4 0
  loc_B37DD3: ILdPr
  loc_B37DD6: Me.SelLength = from_stack_1
  loc_B37DDB: FLdRfVar var_A4
  loc_B37DDE: ILdPr
  loc_B37DE1:  = Me.Text
  loc_B37DE6: ILdRf var_A4
  loc_B37DE9: FnLenStr
  loc_B37DEA: ILdPr
  loc_B37DED: Me.SelStart = from_stack_1
  loc_B37DF2: FFree1Str var_A4
  loc_B37DF5: Branch loc_B37E2D
  loc_B37DF8: ILdRf var_8C
  loc_B37DFB: FnLenStr
  loc_B37DFC: ILdPr
  loc_B37DFF: Me.SelStart = from_stack_1
  loc_B37E04: FLdRfVar var_A4
  loc_B37E07: ILdPr
  loc_B37E0A:  = Me.Text
  loc_B37E0F: ILdRf var_A4
  loc_B37E12: FnLenStr
  loc_B37E13: FLdRfVar var_A0
  loc_B37E16: ILdPr
  loc_B37E19:  = Me.SelStart
  loc_B37E1E: ILdRf var_A0
  loc_B37E21: SubI4
  loc_B37E22: ILdPr
  loc_B37E25: Me.SelLength = from_stack_1
  loc_B37E2A: FFree1Str var_A4
  loc_B37E2D: On Error GoTo 0
  loc_B37E30: ExitProcI2
  loc_B37E31: FLdRfVar var_A4
  loc_B37E34: ImpAdCallI2 Err 'rtcErrObj
  loc_B37E39: FStAdFunc var_F4
  loc_B37E3C: FLdPr var_F4
  loc_B37E3F:  = Err.Description
  loc_B37E44: FFreeStr var_A4 = ""
  loc_B37E4B: FFree1Ad var_F4
  loc_B37E4E: FLdI2 arg_10
  loc_B37E51: FStI2 var_86
  loc_B37E54: On Error GoTo 0
  loc_B37E57: ExitProcI2
End Function

Private Function Proc_17_15_A09468() 'A09468
  'Data Table: 40329C
  loc_A09434: FLdRfVar var_88
  loc_A09437: ILdPr
  loc_A0943A:  = Me.hWnd
  loc_A0943F: LitI2_Byte 0
  loc_A09441: CStrUI1
  loc_A09443: FStStrNoPop var_8C
  loc_A09446: FLdRfVar var_90
  loc_A09449: CStr2Ansi
  loc_A0944A: FLdRfVar var_90
  loc_A0944D: LitI4 1
  loc_A09452: LitI4 &H14F
  loc_A09457: ILdRf var_88
  loc_A0945A: ImpAdCallFPR4 SendMessage(, , , )
  loc_A0945F: SetLastSystemError
  loc_A09460: FFreeStr var_8C = ""
  loc_A09467: ExitProc
End Function
