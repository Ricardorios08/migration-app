
Private Function Proc_211_0_B64A8C(arg_C) 'B64A8C
  'Data Table: 40223C
  loc_B64638: LitStr vbNullString
  loc_B6463B: FMemStStrCopy
  loc_B64640: ILdI4 arg_C
  loc_B64643: ImpAdCallI2 Trim$()
  loc_B64648: IStStr
  loc_B6464C: LitI4 1
  loc_B64651: ILdI4 arg_C
  loc_B64654: LitStr "Ñ"
  loc_B64657: LitI4 0
  loc_B6465C: FnInStr4
  loc_B6465E: CI2I4
  loc_B6465F: FMemStI2 arg_8(24)
  loc_B64664: FMemLdI2 arg_8(24)
  loc_B64669: BranchF loc_B6469B
  loc_B6466C: ILdRf arg_C
  loc_B6466F: FMemLdI2 arg_8(24)
  loc_B64674: CI4UI1
  loc_B64675: LitI4 1
  loc_B6467A: LitStr "@"
  loc_B6467D: MidStr arg_0
  loc_B64680: LitI4 1
  loc_B64685: ILdI4 arg_C
  loc_B64688: LitStr "Ñ"
  loc_B6468B: LitI4 0
  loc_B64690: FnInStr4
  loc_B64692: CI2I4
  loc_B64693: FMemStI2 arg_8(24)
  loc_B64698: Branch loc_B64664
  loc_B6469B: LitI4 &H68
  loc_B646A0: FMemStI4 arg_8(20)
  loc_B646A5: LitStr "|"
  loc_B646A8: FMemStStrCopy
  loc_B646AD: LitI2_Byte 1
  loc_B646AF: FMemLdRf  = Chr()
  loc_B646B4: ILdI4 arg_C
  loc_B646B7: FnLenStr
  loc_B646B8: CI2I4
  loc_B646B9: ForI2 var_8C
  loc_B646BF: LitVarI2 var_BC, 1
  loc_B646C4: FMemLdI2 arg_8(24)
  loc_B646C9: CI4UI1
  loc_B646CA: ILdRf arg_C
  loc_B646CD: CVarRef
  loc_B646D2: FLdRfVar var_CC
  loc_B646D5: ImpAdCallFPR4  = Mid(, , )
  loc_B646DA: FLdRfVar var_CC
  loc_B646DD: CStrVarVal var_D0
  loc_B646E1: ImpAdCallI2 Asc()
  loc_B646E6: CStrUI1
  loc_B646E8: FMemStStr arg_8(28)
  loc_B646EE: FFree1Str var_D0
  loc_B646F1: FFreeVar var_BC = ""
  loc_B646F8: FMemLdR4 arg_8(28)
  loc_B646FD: CR8Str
  loc_B646FF: LitI2_Byte &H7F
  loc_B64701: CR8I2
  loc_B64702: LtR8
  loc_B64703: BranchF loc_B6471A
  loc_B64706: FMemLdR4 arg_8(28)
  loc_B6470B: CR8Str
  loc_B6470D: LitI2_Byte &H20
  loc_B6470F: CR8I2
  loc_B64710: SubR4
  loc_B64711: CI4R8
  loc_B64712: FMemStI4 arg_8(32)
  loc_B64717: Branch loc_B6472B
  loc_B6471A: FMemLdR4 arg_8(28)
  loc_B6471F: CR8Str
  loc_B64721: LitI2_Byte &H67
  loc_B64723: CR8I2
  loc_B64724: SubR4
  loc_B64725: CI4R8
  loc_B64726: FMemStI4 arg_8(32)
  loc_B6472B: FMemLdR4 arg_8(20)
  loc_B64730: FMemLdR4 arg_8(32)
  loc_B64735: FMemLdI2 arg_8(24)
  loc_B6473A: CI4UI1
  loc_B6473B: MulI4
  loc_B6473C: AddI4
  loc_B6473D: FMemStI4 arg_8(20)
  loc_B64742: LitVarI2 var_BC, 1
  loc_B64747: FMemLdI2 arg_8(24)
  loc_B6474C: CI4UI1
  loc_B6474D: ILdRf arg_C
  loc_B64750: CVarRef
  loc_B64755: FLdRfVar var_CC
  loc_B64758: ImpAdCallFPR4  = Mid(, , )
  loc_B6475D: FLdRfVar var_CC
  loc_B64760: LitVarStr var_E0, " "
  loc_B64765: HardType
  loc_B64766: EqVarBool
  loc_B64768: FFreeVar var_BC = ""
  loc_B6476F: BranchF loc_B6479F
  loc_B64772: FMemLdR4 arg_8(0)
  loc_B64777: CVarStr var_9C
  loc_B6477A: LitI4 &HE4
  loc_B6477F: FLdRfVar var_BC
  loc_B64782: ImpAdCallFPR4  = Chr()
  loc_B64787: FLdRfVar var_BC
  loc_B6478A: ConcatVar var_CC
  loc_B6478E: CStrVarTmp
  loc_B6478F: FMemStStr arg_8(0)
  loc_B64795: FFreeVar var_BC = ""
  loc_B6479C: Branch loc_B649CD
  loc_B6479F: LitVarI2 var_BC, 1
  loc_B647A4: FMemLdI2 arg_8(24)
  loc_B647A9: CI4UI1
  loc_B647AA: ILdRf arg_C
  loc_B647AD: CVarRef
  loc_B647B2: FLdRfVar var_CC
  loc_B647B5: ImpAdCallFPR4  = Mid(, , )
  loc_B647BA: FLdRfVar var_CC
  loc_B647BD: CStrVarVal var_D0
  loc_B647C1: ImpAdCallI2 Asc()
  loc_B647C6: LitI2_Byte &H22
  loc_B647C8: EqI2
  loc_B647C9: FFree1Str var_D0
  loc_B647CC: FFreeVar var_BC = ""
  loc_B647D3: BranchF loc_B64803
  loc_B647D6: FMemLdR4 arg_8(0)
  loc_B647DB: CVarStr var_9C
  loc_B647DE: LitI4 &HE2
  loc_B647E3: FLdRfVar var_BC
  loc_B647E6: ImpAdCallFPR4  = Chr()
  loc_B647EB: FLdRfVar var_BC
  loc_B647EE: ConcatVar var_CC
  loc_B647F2: CStrVarTmp
  loc_B647F3: FMemStStr arg_8(0)
  loc_B647F9: FFreeVar var_BC = ""
  loc_B64800: Branch loc_B649CD
  loc_B64803: LitVarI2 var_BC, 1
  loc_B64808: FMemLdI2 arg_8(24)
  loc_B6480D: CI4UI1
  loc_B6480E: ILdRf arg_C
  loc_B64811: CVarRef
  loc_B64816: FLdRfVar var_CC
  loc_B64819: ImpAdCallFPR4  = Mid(, , )
  loc_B6481E: FLdRfVar var_CC
  loc_B64821: CStrVarVal var_D0
  loc_B64825: ImpAdCallI2 Asc()
  loc_B6482A: LitI2_Byte &H7B
  loc_B6482C: EqI2
  loc_B6482D: FFree1Str var_D0
  loc_B64830: FFreeVar var_BC = ""
  loc_B64837: BranchF loc_B64867
  loc_B6483A: FMemLdR4 arg_8(0)
  loc_B6483F: CVarStr var_9C
  loc_B64842: LitI4 &HC2
  loc_B64847: FLdRfVar var_BC
  loc_B6484A: ImpAdCallFPR4  = Chr()
  loc_B6484F: FLdRfVar var_BC
  loc_B64852: ConcatVar var_CC
  loc_B64856: CStrVarTmp
  loc_B64857: FMemStStr arg_8(0)
  loc_B6485D: FFreeVar var_BC = ""
  loc_B64864: Branch loc_B649CD
  loc_B64867: LitVarI2 var_BC, 1
  loc_B6486C: FMemLdI2 arg_8(24)
  loc_B64871: CI4UI1
  loc_B64872: ILdRf arg_C
  loc_B64875: CVarRef
  loc_B6487A: FLdRfVar var_CC
  loc_B6487D: ImpAdCallFPR4  = Mid(, , )
  loc_B64882: FLdRfVar var_CC
  loc_B64885: CStrVarVal var_D0
  loc_B64889: ImpAdCallI2 Asc()
  loc_B6488E: LitI2_Byte &H7C
  loc_B64890: EqI2
  loc_B64891: FFree1Str var_D0
  loc_B64894: FFreeVar var_BC = ""
  loc_B6489B: BranchF loc_B648CB
  loc_B6489E: FMemLdR4 arg_8(0)
  loc_B648A3: CVarStr var_9C
  loc_B648A6: LitI4 &HC3
  loc_B648AB: FLdRfVar var_BC
  loc_B648AE: ImpAdCallFPR4  = Chr()
  loc_B648B3: FLdRfVar var_BC
  loc_B648B6: ConcatVar var_CC
  loc_B648BA: CStrVarTmp
  loc_B648BB: FMemStStr arg_8(0)
  loc_B648C1: FFreeVar var_BC = ""
  loc_B648C8: Branch loc_B649CD
  loc_B648CB: LitVarI2 var_BC, 1
  loc_B648D0: FMemLdI2 arg_8(24)
  loc_B648D5: CI4UI1
  loc_B648D6: ILdRf arg_C
  loc_B648D9: CVarRef
  loc_B648DE: FLdRfVar var_CC
  loc_B648E1: ImpAdCallFPR4  = Mid(, , )
  loc_B648E6: FLdRfVar var_CC
  loc_B648E9: CStrVarVal var_D0
  loc_B648ED: ImpAdCallI2 Asc()
  loc_B648F2: LitI2_Byte &H7D
  loc_B648F4: EqI2
  loc_B648F5: FFree1Str var_D0
  loc_B648F8: FFreeVar var_BC = ""
  loc_B648FF: BranchF loc_B6492F
  loc_B64902: FMemLdR4 arg_8(0)
  loc_B64907: CVarStr var_9C
  loc_B6490A: LitI4 &HC4
  loc_B6490F: FLdRfVar var_BC
  loc_B64912: ImpAdCallFPR4  = Chr()
  loc_B64917: FLdRfVar var_BC
  loc_B6491A: ConcatVar var_CC
  loc_B6491E: CStrVarTmp
  loc_B6491F: FMemStStr arg_8(0)
  loc_B64925: FFreeVar var_BC = ""
  loc_B6492C: Branch loc_B649CD
  loc_B6492F: LitVarI2 var_BC, 1
  loc_B64934: FMemLdI2 arg_8(24)
  loc_B64939: CI4UI1
  loc_B6493A: ILdRf arg_C
  loc_B6493D: CVarRef
  loc_B64942: FLdRfVar var_CC
  loc_B64945: ImpAdCallFPR4  = Mid(, , )
  loc_B6494A: FLdRfVar var_CC
  loc_B6494D: CStrVarVal var_D0
  loc_B64951: ImpAdCallI2 Asc()
  loc_B64956: LitI2_Byte &H7E
  loc_B64958: EqI2
  loc_B64959: FFree1Str var_D0
  loc_B6495C: FFreeVar var_BC = ""
  loc_B64963: BranchF loc_B64993
  loc_B64966: FMemLdR4 arg_8(0)
  loc_B6496B: CVarStr var_9C
  loc_B6496E: LitI4 &HC5
  loc_B64973: FLdRfVar var_BC
  loc_B64976: ImpAdCallFPR4  = Chr()
  loc_B6497B: FLdRfVar var_BC
  loc_B6497E: ConcatVar var_CC
  loc_B64982: CStrVarTmp
  loc_B64983: FMemStStr arg_8(0)
  loc_B64989: FFreeVar var_BC = ""
  loc_B64990: Branch loc_B649CD
  loc_B64993: FMemLdR4 arg_8(0)
  loc_B64998: CVarStr var_E0
  loc_B6499B: LitVarI2 var_BC, 1
  loc_B649A0: FMemLdI2 arg_8(24)
  loc_B649A5: CI4UI1
  loc_B649A6: ILdRf arg_C
  loc_B649A9: CVarRef
  loc_B649AE: FLdRfVar var_CC
  loc_B649B1: ImpAdCallFPR4  = Mid(, , )
  loc_B649B6: FLdRfVar var_CC
  loc_B649B9: ConcatVar var_F0
  loc_B649BD: CStrVarTmp
  loc_B649BE: FMemStStr arg_8(0)
  loc_B649C4: FFreeVar var_BC = "": var_CC = ""
  loc_B649CD: FMemLdRf  = Chr()
  loc_B649D2: NextI2 var_8C, loc_B646BF
  loc_B649D7: FMemLdR4 arg_8(20)
  loc_B649DC: LitI4 &H67
  loc_B649E1: ModI4
  loc_B649E2: CI2I4
  loc_B649E3: FMemStI2 arg_8(36)
  loc_B649E8: FMemLdI2 arg_8(36)
  loc_B649ED: LitI2_Byte &H5A
  loc_B649EF: GtI2
  loc_B649F0: BranchF loc_B64A14
  loc_B649F3: FMemLdI2 arg_8(36)
  loc_B649F8: LitI2_Byte &H67
  loc_B649FA: AddI2
  loc_B649FB: CI4UI1
  loc_B649FC: FLdRfVar var_BC
  loc_B649FF: ImpAdCallFPR4  = Chr()
  loc_B64A04: FLdRfVar var_BC
  loc_B64A07: CStrVarTmp
  loc_B64A08: FMemStStr arg_8(40)
  loc_B64A0E: FFree1Var var_BC = ""
  loc_B64A11: Branch loc_B64A5A
  loc_B64A14: FMemLdI2 arg_8(36)
  loc_B64A19: LitI2_Byte 0
  loc_B64A1B: GtI2
  loc_B64A1C: BranchF loc_B64A40
  loc_B64A1F: FMemLdI2 arg_8(36)
  loc_B64A24: LitI2_Byte &H20
  loc_B64A26: AddI2
  loc_B64A27: CI4UI1
  loc_B64A28: FLdRfVar var_BC
  loc_B64A2B: ImpAdCallFPR4  = Chr()
  loc_B64A30: FLdRfVar var_BC
  loc_B64A33: CStrVarTmp
  loc_B64A34: FMemStStr arg_8(40)
  loc_B64A3A: FFree1Var var_BC = ""
  loc_B64A3D: Branch loc_B64A5A
  loc_B64A40: LitI4 &HE4
  loc_B64A45: FLdRfVar var_BC
  loc_B64A48: ImpAdCallFPR4  = Chr()
  loc_B64A4D: FLdRfVar var_BC
  loc_B64A50: CStrVarTmp
  loc_B64A51: FMemStStr arg_8(40)
  loc_B64A57: FFree1Var var_BC = ""
  loc_B64A5A: FMemLdR4 arg_8(44)
  loc_B64A5F: FMemLdR4 arg_8(0)
  loc_B64A64: ConcatStr
  loc_B64A65: FStStrNoPop var_D0
  loc_B64A68: FMemLdR4 arg_8(40)
  loc_B64A6D: ConcatStr
  loc_B64A6E: FStStrNoPop var_F4
  loc_B64A71: LitStr "~ "
  loc_B64A74: ConcatStr
  loc_B64A75: FMemStStr arg_8(12)
  loc_B64A7B: FFreeStr var_D0 = ""
  loc_B64A82: FMemLdR4 arg_8(12)
  loc_B64A87: FStStrCopy var_88
  loc_B64A8A: ExitProc
End Function

Private Function Proc_211_1_B13CE0(arg_C) 'B13CE0
  'Data Table: 40223C
  loc_B13A8C: LitVarI2 var_BC, 11
  loc_B13A91: LitI4 0
  loc_B13A96: FMemLdPr
  loc_B13A9B: MemLdRfVar from_stack_1.global_4
  loc_B13A9E: Ary1StVar
  loc_B13A9F: LitVarI2 var_BC, 13
  loc_B13AA4: LitI4 1
  loc_B13AA9: FMemLdPr
  loc_B13AAE: MemLdRfVar from_stack_1.global_4
  loc_B13AB1: Ary1StVar
  loc_B13AB2: LitVarI2 var_BC, 17
  loc_B13AB7: LitI4 2
  loc_B13ABC: FMemLdPr
  loc_B13AC1: MemLdRfVar from_stack_1.global_4
  loc_B13AC4: Ary1StVar
  loc_B13AC5: LitVarI2 var_BC, 19
  loc_B13ACA: LitI4 3
  loc_B13ACF: FMemLdPr
  loc_B13AD4: MemLdRfVar from_stack_1.global_4
  loc_B13AD7: Ary1StVar
  loc_B13AD8: LitVarI2 var_BC, 23
  loc_B13ADD: LitI4 4
  loc_B13AE2: FMemLdPr
  loc_B13AE7: MemLdRfVar from_stack_1.global_4
  loc_B13AEA: Ary1StVar
  loc_B13AEB: ILdI4 arg_C
  loc_B13AEE: ImpAdCallI2 Trim$()
  loc_B13AF3: IStStr
  loc_B13AF7: LitI4 1
  loc_B13AFC: ILdI4 arg_C
  loc_B13AFF: LitStr "Ñ"
  loc_B13B02: LitI4 0
  loc_B13B07: FnInStr4
  loc_B13B09: CI2I4
  loc_B13B0A: FStI2 var_A4
  loc_B13B0D: FLdI2 var_A4
  loc_B13B10: BranchF loc_B13B3E
  loc_B13B13: ILdRf arg_C
  loc_B13B16: FLdI2 var_A4
  loc_B13B19: CI4UI1
  loc_B13B1A: LitI4 1
  loc_B13B1F: LitStr "@"
  loc_B13B22: MidStr arg_0
  loc_B13B25: LitI4 1
  loc_B13B2A: ILdI4 arg_C
  loc_B13B2D: LitStr "Ñ"
  loc_B13B30: LitI4 0
  loc_B13B35: FnInStr4
  loc_B13B37: CI2I4
  loc_B13B38: FStI2 var_A4
  loc_B13B3B: Branch loc_B13B0D
  loc_B13B3E: LitI2_Byte 0
  loc_B13B40: FStI2 var_8A
  loc_B13B43: LitI2_Byte 0
  loc_B13B45: FStI2 var_AA
  loc_B13B48: ILdI4 arg_C
  loc_B13B4B: ImpAdCallI2 UCase$()
  loc_B13B50: FStStr var_98
  loc_B13B53: ILdRf var_98
  loc_B13B56: FnLenStr
  loc_B13B57: CI2I4
  loc_B13B58: FStI2 var_A2
  loc_B13B5B: FLdI2 var_A2
  loc_B13B5E: BranchF loc_B13C0E
  loc_B13B61: LitVarI2 var_CC, 1
  loc_B13B66: FLdI2 var_A2
  loc_B13B69: CI4UI1
  loc_B13B6A: ILdRf var_98
  loc_B13B6D: ImpAdCallI2 Mid$(, , )
  loc_B13B72: FStStr var_A8
  loc_B13B75: FFree1Var var_CC = ""
  loc_B13B78: ILdRf var_A8
  loc_B13B7B: LitStr "9"
  loc_B13B7E: GtStr
  loc_B13B80: ILdRf var_A8
  loc_B13B83: LitStr "0"
  loc_B13B86: LtStr
  loc_B13B88: OrI4
  loc_B13B89: BranchF loc_B13B8F
  loc_B13B8C: Branch loc_B13BA9
  loc_B13B8F: ILdRf var_A8
  loc_B13B92: ImpAdCallI2 Asc()
  loc_B13B97: LitStr "0"
  loc_B13B9A: ImpAdCallI2 Asc()
  loc_B13B9F: SubI2
  loc_B13BA0: CI4UI1
  loc_B13BA1: ImpAdCallI2 Chr$()
  loc_B13BA6: FStStr var_A8
  loc_B13BA9: ILdRf var_A8
  loc_B13BAC: LitStr "P"
  loc_B13BAF: EqStr
  loc_B13BB1: BranchF loc_B13BBA
  loc_B13BB4: LitStr "F"
  loc_B13BB7: FStStrCopy var_A8
  loc_B13BBA: FLdI2 var_8A
  loc_B13BBD: CVarI2 var_DC
  loc_B13BC0: FLdI2 var_AA
  loc_B13BC3: CI4UI1
  loc_B13BC4: FMemLdPr
  loc_B13BC9: MemLdRfVar from_stack_1.global_4
  loc_B13BCC: Ary1LdRfVar
  loc_B13BCE: ILdRf var_A8
  loc_B13BD1: ImpAdCallI2 Asc()
  loc_B13BD6: CVarI2 var_BC
  loc_B13BD9: MulVar var_CC
  loc_B13BDD: AddVar var_EC
  loc_B13BE1: CI2Var
  loc_B13BE2: FStI2 var_8A
  loc_B13BE5: FFree1Var var_EC = ""
  loc_B13BE8: FLdI2 var_AA
  loc_B13BEB: LitI2_Byte 4
  loc_B13BED: EqI2
  loc_B13BEE: BranchF loc_B13BF9
  loc_B13BF1: LitI2_Byte 0
  loc_B13BF3: FStI2 var_AA
  loc_B13BF6: Branch loc_B13C02
  loc_B13BF9: FLdI2 var_AA
  loc_B13BFC: LitI2_Byte 1
  loc_B13BFE: AddI2
  loc_B13BFF: FStI2 var_AA
  loc_B13C02: FLdI2 var_A2
  loc_B13C05: LitI2_Byte 1
  loc_B13C07: SubI2
  loc_B13C08: FStI2 var_A2
  loc_B13C0B: Branch loc_B13B5B
  loc_B13C0E: LitI4 1
  loc_B13C13: LitI4 1
  loc_B13C18: LitVarStr var_DC, "000000"
  loc_B13C1D: FStVarCopyObj var_CC
  loc_B13C20: FLdRfVar var_CC
  loc_B13C23: FLdRfVar var_8A
  loc_B13C26: CVarRef
  loc_B13C2B: ImpAdCallI2 Format$(, )
  loc_B13C30: FStStr var_98
  loc_B13C33: FFree1Var var_CC = ""
  loc_B13C36: LitVar_Missing var_CC
  loc_B13C39: LitI4 5
  loc_B13C3E: ILdRf var_98
  loc_B13C41: ImpAdCallI2 Mid$(, , )
  loc_B13C46: FStStrNoPop var_F0
  loc_B13C49: ImpAdCallFPR4 push push Val()
  loc_B13C4E: CI4R8
  loc_B13C4F: FStR4 var_90
  loc_B13C52: FFree1Str var_F0
  loc_B13C55: FFree1Var var_CC = ""
  loc_B13C58: LitVarI2 var_CC, 2
  loc_B13C5D: LitI4 3
  loc_B13C62: ILdRf var_98
  loc_B13C65: ImpAdCallI2 Mid$(, , )
  loc_B13C6A: FStStrNoPop var_F0
  loc_B13C6D: ImpAdCallFPR4 push push Val()
  loc_B13C72: CI4R8
  loc_B13C73: FStR4 var_94
  loc_B13C76: FFree1Str var_F0
  loc_B13C79: FFree1Var var_CC = ""
  loc_B13C7C: LitDate 1
  loc_B13C85: ILdRf var_90
  loc_B13C88: CR8I4
  loc_B13C89: MulR8
  loc_B13C8A: ILdRf var_94
  loc_B13C8D: CR8I4
  loc_B13C8E: SubR4
  loc_B13C8F: FnAbsR4
  loc_B13C90: FnIntR8
  loc_B13C92: CI4R8
  loc_B13C93: FStR4 var_90
  loc_B13C96: LitI4 1
  loc_B13C9B: LitI4 1
  loc_B13CA0: LitVarStr var_DC, "0000"
  loc_B13CA5: FStVarCopyObj var_CC
  loc_B13CA8: FLdRfVar var_CC
  loc_B13CAB: FLdRfVar var_90
  loc_B13CAE: CVarRef
  loc_B13CB3: ImpAdCallI2 Format$(, )
  loc_B13CB8: FStStr var_A0
  loc_B13CBB: FFree1Var var_CC = ""
  loc_B13CBE: LitVarI2 var_CC, 2
  loc_B13CC3: LitI4 3
  loc_B13CC8: ILdRf var_A0
  loc_B13CCB: ImpAdCallI2 Mid$(, , )
  loc_B13CD0: FStStr var_9C
  loc_B13CD3: FFree1Var var_CC = ""
  loc_B13CD6: ILdRf var_9C
  loc_B13CD9: FStStrCopy var_88
  loc_B13CDC: ExitProc
End Function
