
Private Function Proc_272_0_A83C54(arg_C) 'A83C54
  'Data Table: 43C408
  loc_A83BC4: ILdI4 arg_C
  loc_A83BC7: FStStrCopy var_8C
  loc_A83BCA: ILdRf var_8C
  loc_A83BCD: LitStr "Mayor o Igual que"
  loc_A83BD0: EqStr
  loc_A83BD2: BranchF loc_A83BDE
  loc_A83BD5: LitStr ">="
  loc_A83BD8: FStStrCopy var_88
  loc_A83BDB: Branch loc_A83C53
  loc_A83BDE: ILdRf var_8C
  loc_A83BE1: LitStr "Mayor que"
  loc_A83BE4: EqStr
  loc_A83BE6: BranchF loc_A83BF2
  loc_A83BE9: LitStr ">"
  loc_A83BEC: FStStrCopy var_88
  loc_A83BEF: Branch loc_A83C53
  loc_A83BF2: ILdRf var_8C
  loc_A83BF5: LitStr "Igual a"
  loc_A83BF8: EqStr
  loc_A83BFA: BranchF loc_A83C06
  loc_A83BFD: LitStr "="
  loc_A83C00: FStStrCopy var_88
  loc_A83C03: Branch loc_A83C53
  loc_A83C06: ILdRf var_8C
  loc_A83C09: LitStr "Distinto a"
  loc_A83C0C: EqStr
  loc_A83C0E: BranchF loc_A83C1A
  loc_A83C11: LitStr "<>"
  loc_A83C14: FStStrCopy var_88
  loc_A83C17: Branch loc_A83C53
  loc_A83C1A: ILdRf var_8C
  loc_A83C1D: LitStr "Contiene"
  loc_A83C20: EqStr
  loc_A83C22: BranchF loc_A83C2E
  loc_A83C25: LitStr "LIKE"
  loc_A83C28: FStStrCopy var_88
  loc_A83C2B: Branch loc_A83C53
  loc_A83C2E: ILdRf var_8C
  loc_A83C31: LitStr "Menor que"
  loc_A83C34: EqStr
  loc_A83C36: BranchF loc_A83C42
  loc_A83C39: LitStr "<"
  loc_A83C3C: FStStrCopy var_88
  loc_A83C3F: Branch loc_A83C53
  loc_A83C42: ILdRf var_8C
  loc_A83C45: LitStr "Menor o Igual que"
  loc_A83C48: EqStr
  loc_A83C4A: BranchF loc_A83C53
  loc_A83C4D: LitStr "<="
  loc_A83C50: FStStrCopy var_88
  loc_A83C53: ExitProc
End Function

Private Function Proc_272_1_A20028(arg_C) 'A20028
  'Data Table: 43C408
  loc_A1FFE8: ILdI4 arg_C
  loc_A1FFEB: FStStrCopy var_8C
  loc_A1FFEE: ILdRf var_8C
  loc_A1FFF1: LitStr "Mayor que"
  loc_A1FFF4: EqStr
  loc_A1FFF6: BranchF loc_A20002
  loc_A1FFF9: LitStr ">"
  loc_A1FFFC: FStStrCopy var_88
  loc_A1FFFF: Branch loc_A20027
  loc_A20002: ILdRf var_8C
  loc_A20005: LitStr "Igual a"
  loc_A20008: EqStr
  loc_A2000A: BranchF loc_A20016
  loc_A2000D: LitStr "="
  loc_A20010: FStStrCopy var_88
  loc_A20013: Branch loc_A20027
  loc_A20016: ILdRf var_8C
  loc_A20019: LitStr "Menor que"
  loc_A2001C: EqStr
  loc_A2001E: BranchF loc_A20027
  loc_A20021: LitStr "<"
  loc_A20024: FStStrCopy var_88
  loc_A20027: ExitProc
End Function

Private Function Proc_272_2_AAD850(arg_C, arg_10) 'AAD850
  'Data Table: 43C408
  loc_AAD798: ILdI4 arg_10
  loc_AAD79B: FnLenStr
  loc_AAD79C: CVarI4
  loc_AAD7A0: FStVar var_94
  loc_AAD7A4: LitI2_Byte 1
  loc_AAD7A6: FLdRfVar var_96
  loc_AAD7A9: ILdI4 arg_C
  loc_AAD7AC: FnLenStr
  loc_AAD7AD: CI2I4
  loc_AAD7AE: ForI2 var_B0
  loc_AAD7B4: LitVarI2 var_140, 1
  loc_AAD7B9: FLdI2 var_96
  loc_AAD7BC: CVarI2 var_AC
  loc_AAD7BF: FLdRfVar var_94
  loc_AAD7C2: ModVar var_C0
  loc_AAD7C6: FLdRfVar var_94
  loc_AAD7C9: FLdI2 var_96
  loc_AAD7CC: CVarI2 var_D0
  loc_AAD7CF: FLdRfVar var_94
  loc_AAD7D2: ModVar var_E0
  loc_AAD7D6: LitVarI2 var_F0, 0
  loc_AAD7DB: HardType
  loc_AAD7DC: EqVar var_100
  loc_AAD7E0: MulVar var_110
  loc_AAD7E4: SubVar var_120
  loc_AAD7E8: CI4Var
  loc_AAD7EA: ILdI4 arg_10
  loc_AAD7ED: ImpAdCallI2 Mid$(, , )
  loc_AAD7F2: FStStrNoPop var_144
  loc_AAD7F5: ImpAdCallI2 Asc()
  loc_AAD7FA: CStrUI1
  loc_AAD7FC: FStStr var_9C
  loc_AAD7FF: FFree1Str var_144
  loc_AAD802: FFree1Var var_140 = ""
  loc_AAD805: ILdRf arg_C
  loc_AAD808: FLdI2 var_96
  loc_AAD80B: CI4UI1
  loc_AAD80C: LitI4 1
  loc_AAD811: LitVarI2 var_C0, 1
  loc_AAD816: FLdI2 var_96
  loc_AAD819: CI4UI1
  loc_AAD81A: ILdI4 arg_C
  loc_AAD81D: ImpAdCallI2 Mid$(, , )
  loc_AAD822: FStStrNoPop var_144
  loc_AAD825: ImpAdCallI2 Asc()
  loc_AAD82A: CI4UI1
  loc_AAD82B: ILdRf var_9C
  loc_AAD82E: CI4Str
  loc_AAD82F: XorI4
  loc_AAD831: ImpAdCallI2 Chr$()
  loc_AAD836: FStStrNoPop var_148
  loc_AAD839: MidStr arg_0
  loc_AAD83C: FFreeStr var_144 = ""
  loc_AAD843: FFree1Var var_C0 = ""
  loc_AAD846: FLdRfVar var_96
  loc_AAD849: NextI2 var_B0, loc_AAD7B4
  loc_AAD84E: ExitProc
End Function

Private Function Proc_272_3_B44A88(arg_10) 'B44A88
  'Data Table: 43C408
  loc_B44750: On Error Resume Next
  loc_B44755: FLdRfVar var_AC
  loc_B44758: ILdPr
  loc_B4475B:  = Form.Name
  loc_B44760: LitVar_Missing var_CC
  loc_B44763: LitI4 4
  loc_B44768: ILdRf var_AC
  loc_B4476B: ImpAdCallI2 Mid$(, , )
  loc_B44770: FStStr var_D4
  loc_B44773: FLdRfVar var_A8
  loc_B44776: FLdZeroAd var_D4
  loc_B44779: FStStrNoPop var_D0
  loc_B4477C: LitI2_Byte 2
  loc_B4477E: FMemLdR4 arg_8(16)
  loc_B44783: ImpAdCallI2  = Proc_270_4_B3D5F8()
  loc_B44788: FFreeStr var_AC = "": var_D0 = ""
  loc_B44791: FFree1Var var_CC = ""
  loc_B44794: BranchF loc_B44A21
  loc_B44799: ILdPr
  loc_B4479C: LateMemLdVar
  loc_B447A1: FStVarZero
  loc_B447A5: FLdRfVar var_E4
  loc_B447A8: FStR4 var_E8
  loc_B447AD: FLdI2 arg_10
  loc_B447B0: CVarBoolI2 var_108
  loc_B447B4: PopAdLdVar
  loc_B447B5: LitVarI2 var_BC, 12
  loc_B447BA: PopAdLdVar
  loc_B447BB: ILdRf var_E8
  loc_B447BE: VarLateMemLdRfVar var_CC, .Buttons
  loc_B447C4: VarLateMemCallLdRfVar
  loc_B447CC: VarLateMemSt .Visible
  loc_B447D0: FFreeVar var_CC = "": var_108 = ""
  loc_B447DB: ILdRf var_9C
  loc_B447DE: CVarStr var_108
  loc_B447E1: PopAdLdVar
  loc_B447E2: LitVarI2 var_BC, 1
  loc_B447E7: PopAdLdVar
  loc_B447E8: ILdRf var_E8
  loc_B447EB: VarLateMemLdRfVar var_CC, .Buttons
  loc_B447F1: VarLateMemCallLdRfVar
  loc_B447F9: VarLateMemSt .Enabled
  loc_B447FD: FFreeVar var_CC = ""
  loc_B44806: ILdRf var_94
  loc_B44809: CVarStr var_108
  loc_B4480C: PopAdLdVar
  loc_B4480D: LitVarI2 var_BC, 2
  loc_B44812: PopAdLdVar
  loc_B44813: ILdRf var_E8
  loc_B44816: VarLateMemLdRfVar var_CC, .Buttons
  loc_B4481C: VarLateMemCallLdRfVar
  loc_B44824: VarLateMemSt .Enabled
  loc_B44828: FFreeVar var_CC = ""
  loc_B44831: ILdRf var_98
  loc_B44834: CVarStr var_108
  loc_B44837: PopAdLdVar
  loc_B44838: LitVarI2 var_BC, 3
  loc_B4483D: PopAdLdVar
  loc_B4483E: ILdRf var_E8
  loc_B44841: VarLateMemLdRfVar var_CC, .Buttons
  loc_B44847: VarLateMemCallLdRfVar
  loc_B4484F: VarLateMemSt .Enabled
  loc_B44853: FFreeVar var_CC = ""
  loc_B4485C: LitVar_FALSE
  loc_B44860: PopAdLdVar
  loc_B44861: LitVarI2 var_BC, 4
  loc_B44866: PopAdLdVar
  loc_B44867: ILdRf var_E8
  loc_B4486A: VarLateMemLdRfVar var_CC, .Buttons
  loc_B44870: VarLateMemCallLdRfVar
  loc_B44878: VarLateMemSt .Enabled
  loc_B4487C: FFreeVar var_CC = ""
  loc_B44885: LitVar_FALSE
  loc_B44889: PopAdLdVar
  loc_B4488A: LitVarI2 var_BC, 5
  loc_B4488F: PopAdLdVar
  loc_B44890: ILdRf var_E8
  loc_B44893: VarLateMemLdRfVar var_CC, .Buttons
  loc_B44899: VarLateMemCallLdRfVar
  loc_B448A1: VarLateMemSt .Enabled
  loc_B448A5: FFreeVar var_CC = ""
  loc_B448AE: LitVar_TRUE var_108
  loc_B448B1: PopAdLdVar
  loc_B448B2: LitVarI2 var_BC, 7
  loc_B448B7: PopAdLdVar
  loc_B448B8: ILdRf var_E8
  loc_B448BB: VarLateMemLdRfVar var_CC, .Buttons
  loc_B448C1: VarLateMemCallLdRfVar
  loc_B448C9: VarLateMemSt .Enabled
  loc_B448CD: FFreeVar var_CC = ""
  loc_B448D6: LitVar_TRUE var_108
  loc_B448D9: PopAdLdVar
  loc_B448DA: LitVarI2 var_BC, 8
  loc_B448DF: PopAdLdVar
  loc_B448E0: ILdRf var_E8
  loc_B448E3: VarLateMemLdRfVar var_CC, .Buttons
  loc_B448E9: VarLateMemCallLdRfVar
  loc_B448F1: VarLateMemSt .Enabled
  loc_B448F5: FFreeVar var_CC = ""
  loc_B448FE: LitVar_TRUE var_108
  loc_B44901: PopAdLdVar
  loc_B44902: LitVarI2 var_BC, 9
  loc_B44907: PopAdLdVar
  loc_B44908: ILdRf var_E8
  loc_B4490B: VarLateMemLdRfVar var_CC, .Buttons
  loc_B44911: VarLateMemCallLdRfVar
  loc_B44919: VarLateMemSt .Enabled
  loc_B4491D: FFreeVar var_CC = ""
  loc_B44926: LitVar_TRUE var_108
  loc_B44929: PopAdLdVar
  loc_B4492A: LitVarI2 var_BC, 10
  loc_B4492F: PopAdLdVar
  loc_B44930: ILdRf var_E8
  loc_B44933: VarLateMemLdRfVar var_CC, .Buttons
  loc_B44939: VarLateMemCallLdRfVar
  loc_B44941: VarLateMemSt .Enabled
  loc_B44945: FFreeVar var_CC = ""
  loc_B4494E: LitVar_TRUE var_108
  loc_B44951: PopAdLdVar
  loc_B44952: LitVarI2 var_BC, 12
  loc_B44957: PopAdLdVar
  loc_B44958: ILdRf var_E8
  loc_B4495B: VarLateMemLdRfVar var_CC, .Buttons
  loc_B44961: VarLateMemCallLdRfVar
  loc_B44969: VarLateMemSt .Enabled
  loc_B4496D: FFreeVar var_CC = ""
  loc_B44976: LitVar_TRUE var_108
  loc_B44979: PopAdLdVar
  loc_B4497A: LitVarI2 var_BC, 13
  loc_B4497F: PopAdLdVar
  loc_B44980: ILdRf var_E8
  loc_B44983: VarLateMemLdRfVar var_CC, .Buttons
  loc_B44989: VarLateMemCallLdRfVar
  loc_B44991: VarLateMemSt .Enabled
  loc_B44995: FFreeVar var_CC = ""
  loc_B4499E: LitVar_TRUE var_108
  loc_B449A1: PopAdLdVar
  loc_B449A2: LitVarI2 var_BC, 14
  loc_B449A7: PopAdLdVar
  loc_B449A8: ILdRf var_E8
  loc_B449AB: VarLateMemLdRfVar var_CC, .Buttons
  loc_B449B1: VarLateMemCallLdRfVar
  loc_B449B9: VarLateMemSt .Enabled
  loc_B449BD: FFreeVar var_CC = ""
  loc_B449C6: LitVar_TRUE var_108
  loc_B449C9: PopAdLdVar
  loc_B449CA: LitVarI2 var_BC, 15
  loc_B449CF: PopAdLdVar
  loc_B449D0: ILdRf var_E8
  loc_B449D3: VarLateMemLdRfVar var_CC, .Buttons
  loc_B449D9: VarLateMemCallLdRfVar
  loc_B449E1: VarLateMemSt .Enabled
  loc_B449E5: FFreeVar var_CC = ""
  loc_B449EE: LitVar_TRUE var_108
  loc_B449F1: PopAdLdVar
  loc_B449F2: LitVarI2 var_BC, 17
  loc_B449F7: PopAdLdVar
  loc_B449F8: ILdRf var_E8
  loc_B449FB: VarLateMemLdRfVar var_CC, .Buttons
  loc_B44A01: VarLateMemCallLdRfVar
  loc_B44A09: VarLateMemSt .Enabled
  loc_B44A0D: FFreeVar var_CC = ""
  loc_B44A16: LitI4 0
  loc_B44A1B: FStR4 var_E8
  loc_B44A1E: Branch loc_B44A2D
  loc_B44A25: ILdRf var_A8
  loc_B44A28: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B44A31: LitVar_FALSE
  loc_B44A35: PopAdLdVar
  loc_B44A36: ILdPr
  loc_B44A39: LateMemLdVar
  loc_B44A3E: VarLateMemSt .Enabled
  loc_B44A42: FFree1Var var_CC = ""
  loc_B44A47: LitVar_TRUE var_BC
  loc_B44A4A: PopAdLdVar
  loc_B44A4B: ILdPr
  loc_B44A4E: LateMemLdVar
  loc_B44A53: VarLateMemSt .Enabled
  loc_B44A57: FFree1Var var_CC = ""
  loc_B44A5C: LitVar_TRUE var_BC
  loc_B44A5F: PopAdLdVar
  loc_B44A60: ILdPr
  loc_B44A63: LateMemLdVar
  loc_B44A68: VarLateMemSt .Enabled
  loc_B44A6C: FFree1Var var_CC = ""
  loc_B44A71: LitVar_TRUE var_BC
  loc_B44A74: PopAdLdVar
  loc_B44A75: ILdPr
  loc_B44A78: LateMemLdVar
  loc_B44A7D: VarLateMemSt .Enabled
  loc_B44A81: FFree1Var var_CC = ""
  loc_B44A86: ExitProc
End Function

Private Function Proc_272_4_B2D678() 'B2D678
  'Data Table: 43C408
  loc_B2D398: On Error Resume Next
  loc_B2D39D: ILdPr
  loc_B2D3A0: LateMemLdVar
  loc_B2D3A5: FStVarZero
  loc_B2D3A9: FLdRfVar var_A4
  loc_B2D3AC: FStR4 var_A8
  loc_B2D3B1: LitVar_FALSE
  loc_B2D3B5: PopAdLdVar
  loc_B2D3B6: LitVarI2 var_B8, 12
  loc_B2D3BB: PopAdLdVar
  loc_B2D3BC: ILdRf var_A8
  loc_B2D3BF: VarLateMemLdRfVar var_94, .Buttons
  loc_B2D3C5: VarLateMemCallLdRfVar
  loc_B2D3CD: VarLateMemSt .Visible
  loc_B2D3D1: FFreeVar var_94 = ""
  loc_B2D3DA: LitVar_FALSE
  loc_B2D3DE: PopAdLdVar
  loc_B2D3DF: LitVarI2 var_B8, 1
  loc_B2D3E4: PopAdLdVar
  loc_B2D3E5: ILdRf var_A8
  loc_B2D3E8: VarLateMemLdRfVar var_94, .Buttons
  loc_B2D3EE: VarLateMemCallLdRfVar
  loc_B2D3F6: VarLateMemSt .Enabled
  loc_B2D3FA: FFreeVar var_94 = ""
  loc_B2D403: LitVar_FALSE
  loc_B2D407: PopAdLdVar
  loc_B2D408: LitVarI2 var_B8, 2
  loc_B2D40D: PopAdLdVar
  loc_B2D40E: ILdRf var_A8
  loc_B2D411: VarLateMemLdRfVar var_94, .Buttons
  loc_B2D417: VarLateMemCallLdRfVar
  loc_B2D41F: VarLateMemSt .Enabled
  loc_B2D423: FFreeVar var_94 = ""
  loc_B2D42C: LitVar_FALSE
  loc_B2D430: PopAdLdVar
  loc_B2D431: LitVarI2 var_B8, 3
  loc_B2D436: PopAdLdVar
  loc_B2D437: ILdRf var_A8
  loc_B2D43A: VarLateMemLdRfVar var_94, .Buttons
  loc_B2D440: VarLateMemCallLdRfVar
  loc_B2D448: VarLateMemSt .Enabled
  loc_B2D44C: FFreeVar var_94 = ""
  loc_B2D455: LitVar_TRUE var_D8
  loc_B2D458: PopAdLdVar
  loc_B2D459: LitVarI2 var_B8, 4
  loc_B2D45E: PopAdLdVar
  loc_B2D45F: ILdRf var_A8
  loc_B2D462: VarLateMemLdRfVar var_94, .Buttons
  loc_B2D468: VarLateMemCallLdRfVar
  loc_B2D470: VarLateMemSt .Enabled
  loc_B2D474: FFreeVar var_94 = ""
  loc_B2D47D: LitVar_TRUE var_D8
  loc_B2D480: PopAdLdVar
  loc_B2D481: LitVarI2 var_B8, 5
  loc_B2D486: PopAdLdVar
  loc_B2D487: ILdRf var_A8
  loc_B2D48A: VarLateMemLdRfVar var_94, .Buttons
  loc_B2D490: VarLateMemCallLdRfVar
  loc_B2D498: VarLateMemSt .Enabled
  loc_B2D49C: FFreeVar var_94 = ""
  loc_B2D4A5: LitVar_FALSE
  loc_B2D4A9: PopAdLdVar
  loc_B2D4AA: LitVarI2 var_B8, 7
  loc_B2D4AF: PopAdLdVar
  loc_B2D4B0: ILdRf var_A8
  loc_B2D4B3: VarLateMemLdRfVar var_94, .Buttons
  loc_B2D4B9: VarLateMemCallLdRfVar
  loc_B2D4C1: VarLateMemSt .Enabled
  loc_B2D4C5: FFreeVar var_94 = ""
  loc_B2D4CE: LitVar_FALSE
  loc_B2D4D2: PopAdLdVar
  loc_B2D4D3: LitVarI2 var_B8, 8
  loc_B2D4D8: PopAdLdVar
  loc_B2D4D9: ILdRf var_A8
  loc_B2D4DC: VarLateMemLdRfVar var_94, .Buttons
  loc_B2D4E2: VarLateMemCallLdRfVar
  loc_B2D4EA: VarLateMemSt .Enabled
  loc_B2D4EE: FFreeVar var_94 = ""
  loc_B2D4F7: LitVar_FALSE
  loc_B2D4FB: PopAdLdVar
  loc_B2D4FC: LitVarI2 var_B8, 9
  loc_B2D501: PopAdLdVar
  loc_B2D502: ILdRf var_A8
  loc_B2D505: VarLateMemLdRfVar var_94, .Buttons
  loc_B2D50B: VarLateMemCallLdRfVar
  loc_B2D513: VarLateMemSt .Enabled
  loc_B2D517: FFreeVar var_94 = ""
  loc_B2D520: LitVar_FALSE
  loc_B2D524: PopAdLdVar
  loc_B2D525: LitVarI2 var_B8, 10
  loc_B2D52A: PopAdLdVar
  loc_B2D52B: ILdRf var_A8
  loc_B2D52E: VarLateMemLdRfVar var_94, .Buttons
  loc_B2D534: VarLateMemCallLdRfVar
  loc_B2D53C: VarLateMemSt .Enabled
  loc_B2D540: FFreeVar var_94 = ""
  loc_B2D549: LitVar_FALSE
  loc_B2D54D: PopAdLdVar
  loc_B2D54E: LitVarI2 var_B8, 12
  loc_B2D553: PopAdLdVar
  loc_B2D554: ILdRf var_A8
  loc_B2D557: VarLateMemLdRfVar var_94, .Buttons
  loc_B2D55D: VarLateMemCallLdRfVar
  loc_B2D565: VarLateMemSt .Enabled
  loc_B2D569: FFreeVar var_94 = ""
  loc_B2D572: LitVar_FALSE
  loc_B2D576: PopAdLdVar
  loc_B2D577: LitVarI2 var_B8, 13
  loc_B2D57C: PopAdLdVar
  loc_B2D57D: ILdRf var_A8
  loc_B2D580: VarLateMemLdRfVar var_94, .Buttons
  loc_B2D586: VarLateMemCallLdRfVar
  loc_B2D58E: VarLateMemSt .Enabled
  loc_B2D592: FFreeVar var_94 = ""
  loc_B2D59B: LitVar_FALSE
  loc_B2D59F: PopAdLdVar
  loc_B2D5A0: LitVarI2 var_B8, 14
  loc_B2D5A5: PopAdLdVar
  loc_B2D5A6: ILdRf var_A8
  loc_B2D5A9: VarLateMemLdRfVar var_94, .Buttons
  loc_B2D5AF: VarLateMemCallLdRfVar
  loc_B2D5B7: VarLateMemSt .Enabled
  loc_B2D5BB: FFreeVar var_94 = ""
  loc_B2D5C4: LitVar_TRUE var_D8
  loc_B2D5C7: PopAdLdVar
  loc_B2D5C8: LitVarI2 var_B8, 15
  loc_B2D5CD: PopAdLdVar
  loc_B2D5CE: ILdRf var_A8
  loc_B2D5D1: VarLateMemLdRfVar var_94, .Buttons
  loc_B2D5D7: VarLateMemCallLdRfVar
  loc_B2D5DF: VarLateMemSt .Enabled
  loc_B2D5E3: FFreeVar var_94 = ""
  loc_B2D5EC: LitVar_FALSE
  loc_B2D5F0: PopAdLdVar
  loc_B2D5F1: LitVarI2 var_B8, 17
  loc_B2D5F6: PopAdLdVar
  loc_B2D5F7: ILdRf var_A8
  loc_B2D5FA: VarLateMemLdRfVar var_94, .Buttons
  loc_B2D600: VarLateMemCallLdRfVar
  loc_B2D608: VarLateMemSt .Enabled
  loc_B2D60C: FFreeVar var_94 = ""
  loc_B2D615: LitI4 0
  loc_B2D61A: FStR4 var_A8
  loc_B2D61F: LitVar_TRUE var_B8
  loc_B2D622: PopAdLdVar
  loc_B2D623: ILdPr
  loc_B2D626: LateMemLdVar
  loc_B2D62B: VarLateMemSt .Enabled
  loc_B2D62F: FFree1Var var_94 = ""
  loc_B2D634: LitVar_FALSE
  loc_B2D638: PopAdLdVar
  loc_B2D639: ILdPr
  loc_B2D63C: LateMemLdVar
  loc_B2D641: VarLateMemSt .Enabled
  loc_B2D645: FFree1Var var_94 = ""
  loc_B2D64A: LitVar_FALSE
  loc_B2D64E: PopAdLdVar
  loc_B2D64F: ILdPr
  loc_B2D652: LateMemLdVar
  loc_B2D657: VarLateMemSt .Enabled
  loc_B2D65B: FFree1Var var_94 = ""
  loc_B2D660: LitVar_FALSE
  loc_B2D664: PopAdLdVar
  loc_B2D665: ILdPr
  loc_B2D668: LateMemLdVar
  loc_B2D66D: VarLateMemSt .Enabled
  loc_B2D671: FFree1Var var_94 = ""
  loc_B2D676: ExitProc
End Function

Private Function Proc_272_5_B525D4(arg_10) 'B525D4
  'Data Table: 43C408
  loc_B52204: FLdI2 arg_10
  loc_B52207: FStI2 var_86
  loc_B5220A: FLdI2 var_86
  loc_B5220D: LitI4 &H70
  loc_B52212: CI2I4
  loc_B52213: EqI2
  loc_B52214: BranchF loc_B5226B
  loc_B52217: LitVarI2 var_98, 1
  loc_B5221C: PopAdLdVar
  loc_B5221D: ILdPr
  loc_B52220: LateMemLdVar
  loc_B52225: VarLateMemCallLdRfVar
  loc_B5222D: VarLateMemLdVar var_D8, .Enabled
  loc_B52233: CBoolVarNull
  loc_B52235: FFreeVar var_B8 = "": var_C8 = ""
  loc_B5223E: BranchF loc_B52268
  loc_B52241: LitVarI2 var_98, 1
  loc_B52246: PopAdLdVar
  loc_B52247: ILdPr
  loc_B5224A: LateMemLdVar
  loc_B5224F: VarLateMemCallLdVar var_C8, .Buttons
  loc_B52257: PopAdLdVar
  loc_B52258: ILdPr
  loc_B5225B: LateMemCall
  loc_B52261: FFreeVar var_B8 = ""
  loc_B52268: Branch loc_B525D1
  loc_B5226B: FLdI2 var_86
  loc_B5226E: LitI4 &H71
  loc_B52273: CI2I4
  loc_B52274: EqI2
  loc_B52275: BranchF loc_B522CC
  loc_B52278: LitVarI2 var_98, 2
  loc_B5227D: PopAdLdVar
  loc_B5227E: ILdPr
  loc_B52281: LateMemLdVar
  loc_B52286: VarLateMemCallLdRfVar
  loc_B5228E: VarLateMemLdVar var_D8, .Enabled
  loc_B52294: CBoolVarNull
  loc_B52296: FFreeVar var_B8 = "": var_C8 = ""
  loc_B5229F: BranchF loc_B522C9
  loc_B522A2: LitVarI2 var_98, 2
  loc_B522A7: PopAdLdVar
  loc_B522A8: ILdPr
  loc_B522AB: LateMemLdVar
  loc_B522B0: VarLateMemCallLdVar var_C8, .Buttons
  loc_B522B8: PopAdLdVar
  loc_B522B9: ILdPr
  loc_B522BC: LateMemCall
  loc_B522C2: FFreeVar var_B8 = ""
  loc_B522C9: Branch loc_B525D1
  loc_B522CC: FLdI2 var_86
  loc_B522CF: LitI4 &H72
  loc_B522D4: CI2I4
  loc_B522D5: EqI2
  loc_B522D6: BranchF loc_B5232D
  loc_B522D9: LitVarI2 var_98, 3
  loc_B522DE: PopAdLdVar
  loc_B522DF: ILdPr
  loc_B522E2: LateMemLdVar
  loc_B522E7: VarLateMemCallLdRfVar
  loc_B522EF: VarLateMemLdVar var_D8, .Enabled
  loc_B522F5: CBoolVarNull
  loc_B522F7: FFreeVar var_B8 = "": var_C8 = ""
  loc_B52300: BranchF loc_B5232A
  loc_B52303: LitVarI2 var_98, 3
  loc_B52308: PopAdLdVar
  loc_B52309: ILdPr
  loc_B5230C: LateMemLdVar
  loc_B52311: VarLateMemCallLdVar var_C8, .Buttons
  loc_B52319: PopAdLdVar
  loc_B5231A: ILdPr
  loc_B5231D: LateMemCall
  loc_B52323: FFreeVar var_B8 = ""
  loc_B5232A: Branch loc_B525D1
  loc_B5232D: FLdI2 var_86
  loc_B52330: LitI4 &H73
  loc_B52335: CI2I4
  loc_B52336: EqI2
  loc_B52337: BranchF loc_B5238E
  loc_B5233A: LitVarI2 var_98, 4
  loc_B5233F: PopAdLdVar
  loc_B52340: ILdPr
  loc_B52343: LateMemLdVar
  loc_B52348: VarLateMemCallLdRfVar
  loc_B52350: VarLateMemLdVar var_D8, .Enabled
  loc_B52356: CBoolVarNull
  loc_B52358: FFreeVar var_B8 = "": var_C8 = ""
  loc_B52361: BranchF loc_B5238B
  loc_B52364: LitVarI2 var_98, 4
  loc_B52369: PopAdLdVar
  loc_B5236A: ILdPr
  loc_B5236D: LateMemLdVar
  loc_B52372: VarLateMemCallLdVar var_C8, .Buttons
  loc_B5237A: PopAdLdVar
  loc_B5237B: ILdPr
  loc_B5237E: LateMemCall
  loc_B52384: FFreeVar var_B8 = ""
  loc_B5238B: Branch loc_B525D1
  loc_B5238E: FLdI2 var_86
  loc_B52391: LitI4 &H74
  loc_B52396: CI2I4
  loc_B52397: EqI2
  loc_B52398: BranchF loc_B523EF
  loc_B5239B: LitVarI2 var_98, 5
  loc_B523A0: PopAdLdVar
  loc_B523A1: ILdPr
  loc_B523A4: LateMemLdVar
  loc_B523A9: VarLateMemCallLdRfVar
  loc_B523B1: VarLateMemLdVar var_D8, .Enabled
  loc_B523B7: CBoolVarNull
  loc_B523B9: FFreeVar var_B8 = "": var_C8 = ""
  loc_B523C2: BranchF loc_B523EC
  loc_B523C5: LitVarI2 var_98, 5
  loc_B523CA: PopAdLdVar
  loc_B523CB: ILdPr
  loc_B523CE: LateMemLdVar
  loc_B523D3: VarLateMemCallLdVar var_C8, .Buttons
  loc_B523DB: PopAdLdVar
  loc_B523DC: ILdPr
  loc_B523DF: LateMemCall
  loc_B523E5: FFreeVar var_B8 = ""
  loc_B523EC: Branch loc_B525D1
  loc_B523EF: FLdI2 var_86
  loc_B523F2: LitI4 &H75
  loc_B523F7: CI2I4
  loc_B523F8: EqI2
  loc_B523F9: BranchF loc_B52450
  loc_B523FC: LitVarI2 var_98, 12
  loc_B52401: PopAdLdVar
  loc_B52402: ILdPr
  loc_B52405: LateMemLdVar
  loc_B5240A: VarLateMemCallLdRfVar
  loc_B52412: VarLateMemLdVar var_D8, .Enabled
  loc_B52418: CBoolVarNull
  loc_B5241A: FFreeVar var_B8 = "": var_C8 = ""
  loc_B52423: BranchF loc_B5244D
  loc_B52426: LitVarI2 var_98, 12
  loc_B5242B: PopAdLdVar
  loc_B5242C: ILdPr
  loc_B5242F: LateMemLdVar
  loc_B52434: VarLateMemCallLdVar var_C8, .Buttons
  loc_B5243C: PopAdLdVar
  loc_B5243D: ILdPr
  loc_B52440: LateMemCall
  loc_B52446: FFreeVar var_B8 = ""
  loc_B5244D: Branch loc_B525D1
  loc_B52450: FLdI2 var_86
  loc_B52453: LitI4 &H76
  loc_B52458: CI2I4
  loc_B52459: EqI2
  loc_B5245A: BranchF loc_B524B1
  loc_B5245D: LitVarI2 var_98, 14
  loc_B52462: PopAdLdVar
  loc_B52463: ILdPr
  loc_B52466: LateMemLdVar
  loc_B5246B: VarLateMemCallLdRfVar
  loc_B52473: VarLateMemLdVar var_D8, .Enabled
  loc_B52479: CBoolVarNull
  loc_B5247B: FFreeVar var_B8 = "": var_C8 = ""
  loc_B52484: BranchF loc_B524AE
  loc_B52487: LitVarI2 var_98, 14
  loc_B5248C: PopAdLdVar
  loc_B5248D: ILdPr
  loc_B52490: LateMemLdVar
  loc_B52495: VarLateMemCallLdVar var_C8, .Buttons
  loc_B5249D: PopAdLdVar
  loc_B5249E: ILdPr
  loc_B524A1: LateMemCall
  loc_B524A7: FFreeVar var_B8 = ""
  loc_B524AE: Branch loc_B525D1
  loc_B524B1: FLdI2 var_86
  loc_B524B4: LitI4 &H78
  loc_B524B9: CI2I4
  loc_B524BA: EqI2
  loc_B524BB: BranchF loc_B52512
  loc_B524BE: LitVarI2 var_98, 17
  loc_B524C3: PopAdLdVar
  loc_B524C4: ILdPr
  loc_B524C7: LateMemLdVar
  loc_B524CC: VarLateMemCallLdRfVar
  loc_B524D4: VarLateMemLdVar var_D8, .Enabled
  loc_B524DA: CBoolVarNull
  loc_B524DC: FFreeVar var_B8 = "": var_C8 = ""
  loc_B524E5: BranchF loc_B5250F
  loc_B524E8: LitVarI2 var_98, 17
  loc_B524ED: PopAdLdVar
  loc_B524EE: ILdPr
  loc_B524F1: LateMemLdVar
  loc_B524F6: VarLateMemCallLdVar var_C8, .Buttons
  loc_B524FE: PopAdLdVar
  loc_B524FF: ILdPr
  loc_B52502: LateMemCall
  loc_B52508: FFreeVar var_B8 = ""
  loc_B5250F: Branch loc_B525D1
  loc_B52512: FLdI2 var_86
  loc_B52515: LitI4 &H24
  loc_B5251A: CI2I4
  loc_B5251B: EqI2
  loc_B5251C: BranchF loc_B52573
  loc_B5251F: LitVarI2 var_98, 7
  loc_B52524: PopAdLdVar
  loc_B52525: ILdPr
  loc_B52528: LateMemLdVar
  loc_B5252D: VarLateMemCallLdRfVar
  loc_B52535: VarLateMemLdVar var_D8, .Enabled
  loc_B5253B: CBoolVarNull
  loc_B5253D: FFreeVar var_B8 = "": var_C8 = ""
  loc_B52546: BranchF loc_B52570
  loc_B52549: LitVarI2 var_98, 7
  loc_B5254E: PopAdLdVar
  loc_B5254F: ILdPr
  loc_B52552: LateMemLdVar
  loc_B52557: VarLateMemCallLdVar var_C8, .Buttons
  loc_B5255F: PopAdLdVar
  loc_B52560: ILdPr
  loc_B52563: LateMemCall
  loc_B52569: FFreeVar var_B8 = ""
  loc_B52570: Branch loc_B525D1
  loc_B52573: FLdI2 var_86
  loc_B52576: LitI4 &H23
  loc_B5257B: CI2I4
  loc_B5257C: EqI2
  loc_B5257D: BranchF loc_B525D1
  loc_B52580: LitVarI2 var_98, 10
  loc_B52585: PopAdLdVar
  loc_B52586: ILdPr
  loc_B52589: LateMemLdVar
  loc_B5258E: VarLateMemCallLdRfVar
  loc_B52596: VarLateMemLdVar var_D8, .Enabled
  loc_B5259C: CBoolVarNull
  loc_B5259E: FFreeVar var_B8 = "": var_C8 = ""
  loc_B525A7: BranchF loc_B525D1
  loc_B525AA: LitVarI2 var_98, 10
  loc_B525AF: PopAdLdVar
  loc_B525B0: ILdPr
  loc_B525B3: LateMemLdVar
  loc_B525B8: VarLateMemCallLdVar var_C8, .Buttons
  loc_B525C0: PopAdLdVar
  loc_B525C1: ILdPr
  loc_B525C4: LateMemCall
  loc_B525CA: FFreeVar var_B8 = ""
  loc_B525D1: ExitProc
End Function

Private Function Proc_272_6_A781DC(arg_C) 'A781DC
  'Data Table: 43C408
  loc_A78164: LitI2_Byte 0
  loc_A78166: FLdRfVar var_86
  loc_A78169: ILdI4 arg_C
  loc_A7816C: LitI2_Byte 1
  loc_A7816E: FnUBound
  loc_A78170: CI2I4
  loc_A78171: ForI2 var_8A
  loc_A78177: LitVar_TRUE var_9C
  loc_A7817A: PopAdLdVar
  loc_A7817B: FLdI2 var_86
  loc_A7817E: CI4UI1
  loc_A7817F: ILdI4 arg_C
  loc_A78182: Ary1LdRfVarg
  loc_A78186: VarLateMemSt .Enabled
  loc_A7818A: FLdRfVar var_86
  loc_A7818D: NextI2 var_8A, loc_A78177
  loc_A78192: LitI4 0
  loc_A78197: ILdI4 arg_C
  loc_A7819A: Ary1LdRfVarg
  loc_A7819E: VarLateMemLdVar var_CC, .Enabled
  loc_A781A4: LitI4 0
  loc_A781A9: ILdI4 arg_C
  loc_A781AC: Ary1LdRfVarg
  loc_A781B0: VarLateMemLdVar var_DC, .Visible
  loc_A781B6: AndVar var_EC
  loc_A781BA: CBoolVarNull
  loc_A781BC: FFreeVar var_CC = ""
  loc_A781C3: BranchF loc_A781DA
  loc_A781C6: LitI4 0
  loc_A781CB: ILdI4 arg_C
  loc_A781CE: Ary1LdRfVarg
  loc_A781D2: LdPrVar
  loc_A781D4: LateMemCall
  loc_A781DA: ExitProc
End Function

Private Function Proc_272_7_9FC518(arg_C) '9FC518
  'Data Table: 43C408
  loc_9FC4E8: LitI2_Byte 0
  loc_9FC4EA: FLdRfVar var_86
  loc_9FC4ED: ILdI4 arg_C
  loc_9FC4F0: LitI2_Byte 1
  loc_9FC4F2: FnUBound
  loc_9FC4F4: CI2I4
  loc_9FC4F5: ForI2 var_8A
  loc_9FC4FB: LitVar_FALSE
  loc_9FC4FF: PopAdLdVar
  loc_9FC500: FLdI2 var_86
  loc_9FC503: CI4UI1
  loc_9FC504: ILdI4 arg_C
  loc_9FC507: Ary1LdRfVarg
  loc_9FC50B: VarLateMemSt .Enabled
  loc_9FC50F: FLdRfVar var_86
  loc_9FC512: NextI2 var_8A, loc_9FC4FB
  loc_9FC517: ExitProc
End Function

Private Function Proc_272_8_A7AA70(arg_C) 'A7AA70
  'Data Table: 43C408
  loc_A7A9E8: LitI2_Byte 0
  loc_A7A9EA: FLdRfVar var_86
  loc_A7A9ED: ILdI4 arg_C
  loc_A7A9F0: LitI2_Byte 1
  loc_A7A9F2: FnUBound
  loc_A7A9F4: CI2I4
  loc_A7A9F5: ForI2 var_8A
  loc_A7A9FB: FLdI2 var_86
  loc_A7A9FE: CI4UI1
  loc_A7A9FF: ILdI4 arg_C
  loc_A7AA02: Ary1LdRfVarg
  loc_A7AA06: CheckTypeVar
  loc_A7AA0A: BranchF loc_A7AA25
  loc_A7AA0D: LitVarStr var_9C, vbNullString
  loc_A7AA12: PopAdLdVar
  loc_A7AA13: FLdI2 var_86
  loc_A7AA16: CI4UI1
  loc_A7AA17: ILdI4 arg_C
  loc_A7AA1A: Ary1LdRfVarg
  loc_A7AA1E: VarLateMemSt .Caption
  loc_A7AA22: Branch loc_A7AA64
  loc_A7AA25: FLdI2 var_86
  loc_A7AA28: CI4UI1
  loc_A7AA29: ILdI4 arg_C
  loc_A7AA2C: Ary1LdRfVarg
  loc_A7AA30: CheckTypeVar
  loc_A7AA34: BranchF loc_A7AA4F
  loc_A7AA37: LitVarStr var_9C, vbNullString
  loc_A7AA3C: PopAdLdVar
  loc_A7AA3D: FLdI2 var_86
  loc_A7AA40: CI4UI1
  loc_A7AA41: ILdI4 arg_C
  loc_A7AA44: Ary1LdRfVarg
  loc_A7AA48: VarLateMemSt .SelText
  loc_A7AA4C: Branch loc_A7AA64
  loc_A7AA4F: LitVarStr var_9C, vbNullString
  loc_A7AA54: PopAdLdVar
  loc_A7AA55: FLdI2 var_86
  loc_A7AA58: CI4UI1
  loc_A7AA59: ILdI4 arg_C
  loc_A7AA5C: Ary1LdRfVarg
  loc_A7AA60: VarLateMemSt .Text
  loc_A7AA64: FLdRfVar var_86
  loc_A7AA67: NextI2 var_8A, loc_A7A9FB
  loc_A7AA6C: ExitProc
  loc_A7AA6D: ThisVCallAd
End Function

Private Function Proc_272_9_AA2A28(arg_C) 'AA2A28
  'Data Table: 43C408
  loc_AA296C: ILdRf arg_C
  loc_AA296F: FStR4 var_88
  loc_AA2972: LitVarI2 var_98, 0
  loc_AA2977: PopAdLdVar
  loc_AA2978: ILdRf var_88
  loc_AA297B: VarLateMemSt .SelStart
  loc_AA297F: ILdRfDarg arg_C
  loc_AA2985: CheckTypeVar
  loc_AA2989: BranchF loc_AA29D9
  loc_AA298C: ILdRf var_88
  loc_AA298F: VarLateMemLdVar var_B8, .Mask
  loc_AA2995: LitVarStr var_98, vbNullString
  loc_AA299A: HardType
  loc_AA299B: EqVarBool
  loc_AA299D: FFree1Var var_B8 = ""
  loc_AA29A0: BranchF loc_AA29BE
  loc_AA29A3: ILdRf var_88
  loc_AA29A6: VarLateMemLdVar var_B8, .ClipText
  loc_AA29AC: FnLenVar var_C8
  loc_AA29B0: PopAdLdVar
  loc_AA29B1: ILdRf var_88
  loc_AA29B4: VarLateMemSt .SelLength
  loc_AA29B8: FFree1Var var_B8 = ""
  loc_AA29BB: Branch loc_AA29D6
  loc_AA29BE: ILdRf var_88
  loc_AA29C1: VarLateMemLdVar var_B8, .Mask
  loc_AA29C7: FnLenVar var_C8
  loc_AA29CB: PopAdLdVar
  loc_AA29CC: ILdRf var_88
  loc_AA29CF: VarLateMemSt .SelLength
  loc_AA29D3: FFree1Var var_B8 = ""
  loc_AA29D6: Branch loc_AA29F1
  loc_AA29D9: ILdRf arg_C
  loc_AA29DC: VarLateMemLdVar var_B8, .Text
  loc_AA29E2: FnLenVar var_C8
  loc_AA29E6: PopAdLdVar
  loc_AA29E7: ILdRf var_88
  loc_AA29EA: VarLateMemSt .SelLength
  loc_AA29EE: FFree1Var var_B8 = ""
  loc_AA29F1: ILdRf var_88
  loc_AA29F4: VarLateMemLdVar var_B8, .Enabled
  loc_AA29FA: ILdRf var_88
  loc_AA29FD: VarLateMemLdVar var_C8, .Visible
  loc_AA2A03: AndVar var_D8
  loc_AA2A07: CBoolVarNull
  loc_AA2A09: FFreeVar var_B8 = ""
  loc_AA2A10: BranchF loc_AA2A1E
  loc_AA2A13: ILdRf var_88
  loc_AA2A16: LdPrVar
  loc_AA2A18: LateMemCall
  loc_AA2A1E: LitI4 0
  loc_AA2A23: FStR4 var_88
  loc_AA2A26: ExitProc
End Function

Private Function Proc_272_10_A3FC90(arg_C) 'A3FC90
  'Data Table: 43C408
  loc_A3FC44: LitI2_Byte 0
  loc_A3FC46: FLdRfVar var_86
  loc_A3FC49: ILdI4 arg_C
  loc_A3FC4C: LitI2_Byte 1
  loc_A3FC4E: FnUBound
  loc_A3FC50: CI2I4
  loc_A3FC51: ForI2 var_8A
  loc_A3FC57: FLdI2 var_86
  loc_A3FC5A: CI4UI1
  loc_A3FC5B: ILdI4 arg_C
  loc_A3FC5E: Ary1LdRfVarg
  loc_A3FC62: VarLateMemLdVar var_BC, .MaxLength
  loc_A3FC68: LitVarI2 var_AC, 110
  loc_A3FC6D: MulVar var_CC
  loc_A3FC71: PopAdLdVar
  loc_A3FC72: FLdI2 var_86
  loc_A3FC75: CI4UI1
  loc_A3FC76: ILdI4 arg_C
  loc_A3FC79: Ary1LdRfVarg
  loc_A3FC7D: VarLateMemSt .Width
  loc_A3FC81: FFree1Var var_BC = ""
  loc_A3FC84: FLdRfVar var_86
  loc_A3FC87: NextI2 var_8A, loc_A3FC57
  loc_A3FC8C: ExitProc
  loc_A3FC8D: PopTmpLdAd2 arg_330
End Function

Private Function Proc_272_11_9F5798(arg_C) '9F5798
  'Data Table: 43C408
  loc_9F576C: LitI2_Byte 0
  loc_9F576E: FLdRfVar var_86
  loc_9F5771: ILdI4 arg_C
  loc_9F5774: LitI2_Byte 1
  loc_9F5776: FnUBound
  loc_9F5778: CI2I4
  loc_9F5779: ForI2 var_8A
  loc_9F577F: LitVar_FALSE
  loc_9F5783: FLdI2 var_86
  loc_9F5786: CI4UI1
  loc_9F5787: ILdI4 arg_C
  loc_9F578A: Ary1StVarg
  loc_9F578C: FLdRfVar var_86
  loc_9F578F: NextI2 var_8A, loc_9F577F
  loc_9F5794: ExitProc
  loc_9F5795: BranchT loc_9F5A9D
End Function

Private Function Proc_272_12_A8945C(arg_C, arg_10) 'A8945C
  'Data Table: 43C408
  loc_A893CC: ILdRf arg_10
  loc_A893CF: CVarRef
  loc_A893D4: FLdRfVar var_B0
  loc_A893D7: ImpAdCallFPR4  = Ucase()
  loc_A893DC: FLdRfVar var_B0
  loc_A893DF: LitI4 8
  loc_A893E4: FLdRfVar var_C0
  loc_A893E7: ImpAdCallFPR4  = Chr()
  loc_A893EC: FLdRfVar var_C0
  loc_A893EF: ConcatVar var_D0
  loc_A893F3: CStrVarTmp
  loc_A893F4: FStStr var_8C
  loc_A893F7: FFreeVar var_B0 = "": var_C0 = ""
  loc_A89400: LitI4 1
  loc_A89405: ILdRf var_8C
  loc_A89408: CVarStr var_A0
  loc_A8940B: ILdI2 arg_C
  loc_A8940E: CI4UI1
  loc_A8940F: FLdRfVar var_B0
  loc_A89412: ImpAdCallFPR4  = Chr()
  loc_A89417: FLdRfVar var_B0
  loc_A8941A: FLdRfVar var_C0
  loc_A8941D: ImpAdCallFPR4  = Ucase()
  loc_A89422: FLdRfVar var_C0
  loc_A89425: LitI4 1
  loc_A8942A: FnInStr4Var
  loc_A8942E: LitVarI2 var_E0, 0
  loc_A89433: HardType
  loc_A89434: GtVarBool
  loc_A89436: FFreeVar var_B0 = "": var_C0 = ""
  loc_A8943F: BranchF loc_A8944B
  loc_A89442: ILdI2 arg_C
  loc_A89445: FStI2 var_8E
  loc_A89448: Branch loc_A89455
  loc_A8944B: LitI2_Byte 0
  loc_A8944D: FStI2 var_8E
  loc_A89450: ImpAdCallFPR4 Beep()
  loc_A89455: FLdI2 var_8E
  loc_A89458: FStI2 var_86
  loc_A8945B: ExitProcI2
End Function

Private Function Proc_272_13_A32230(arg_C) 'A32230
  'Data Table: 43C408
  loc_A321E0: LitI2_Byte 1
  loc_A321E2: FLdRfVar var_86
  loc_A321E5: ILdI4 arg_C
  loc_A321E8: LitI2_Byte 1
  loc_A321EA: FnUBound
  loc_A321EC: CI2I4
  loc_A321ED: ForI2 var_8A
  loc_A321F3: LitVarStr var_9C, "Primary"
  loc_A321F8: PopAdLdVar
  loc_A321F9: FLdI2 var_86
  loc_A321FC: CI4UI1
  loc_A321FD: ILdI4 arg_C
  loc_A32200: Ary1LdRfVarg
  loc_A32204: VarLateMemSt .DataMember
  loc_A32208: LitI4 0
  loc_A3220D: ILdI4 arg_C
  loc_A32210: Ary1LdRfVarg
  loc_A32214: PopAdLdVar
  loc_A32215: FLdI2 var_86
  loc_A32218: CI4UI1
  loc_A32219: ILdI4 arg_C
  loc_A3221C: Ary1LdRfVarg
  loc_A32220: VarLateMemStAd
  loc_A32226: FLdRfVar var_86
  loc_A32229: NextI2 var_8A, loc_A321F3
  loc_A3222E: ExitProc
End Function

Private Function Proc_272_14_A8F45C(arg_10) 'A8F45C
  'Data Table: 43C408
  loc_A8F3C4: ILdRf arg_10
  loc_A8F3C7: VarLateMemLdVar var_B8, .RecordCount
  loc_A8F3CD: LitVarI2 var_A8, 0
  loc_A8F3D2: HardType
  loc_A8F3D3: GtVarBool
  loc_A8F3D5: FFree1Var var_B8 = ""
  loc_A8F3D8: BranchF loc_A8F45B
  loc_A8F3DB: FLdRfVar var_CC
  loc_A8F3DE: ILdPr
  loc_A8F3E1:  = Form.Controls
  loc_A8F3E6: FLdZeroAd var_CC
  loc_A8F3E9: FStAdFuncNoPop
  loc_A8F3EC: FLdRfVar var_88
  loc_A8F3EF: ForEachCollAd var_D4
  loc_A8F3F5: ILdRf var_88
  loc_A8F3F8: CheckType
  loc_A8F3FC: ILdRf var_88
  loc_A8F3FF: CheckType
  loc_A8F403: OrI4
  loc_A8F404: ILdRf var_88
  loc_A8F407: CheckType
  loc_A8F40B: OrI4
  loc_A8F40C: ILdRf var_88
  loc_A8F40F: CheckType
  loc_A8F413: OrI4
  loc_A8F414: ILdRf var_88
  loc_A8F417: CheckType
  loc_A8F41B: OrI4
  loc_A8F41C: BranchF loc_A8F452
  loc_A8F41F: FLdPr var_88
  loc_A8F422: LateMemLdVar
  loc_A8F427: LitVarStr var_98, vbNullString
  loc_A8F42C: HardType
  loc_A8F42D: NeVarBool
  loc_A8F42F: FFree1Var var_B8 = ""
  loc_A8F432: BranchF loc_A8F452
  loc_A8F435: LitVarStr var_98, "Primary"
  loc_A8F43A: PopAdLdVar
  loc_A8F43B: FLdPr var_88
  loc_A8F43E: LateMemSt
  loc_A8F442: ILdRfDarg arg_10
  loc_A8F448: PopAdLdVar
  loc_A8F449: FLdPr var_88
  loc_A8F44C: LateMemStAd
  loc_A8F452: FLdRfVar var_88
  loc_A8F455: NextEachCollAd var_D4
  loc_A8F45B: ExitProc
End Function

Private Function Proc_272_15_A6AD3C() 'A6AD3C
  'Data Table: 43C408
  loc_A6ACD8: FLdRfVar var_8C
  loc_A6ACDB: ILdPr
  loc_A6ACDE:  = Form.Controls
  loc_A6ACE3: FLdZeroAd var_8C
  loc_A6ACE6: FStAdFuncNoPop
  loc_A6ACE9: FLdRfVar var_88
  loc_A6ACEC: ForEachCollAd var_94
  loc_A6ACF2: ILdRf var_88
  loc_A6ACF5: CheckType
  loc_A6ACF9: ILdRf var_88
  loc_A6ACFC: CheckType
  loc_A6AD00: OrI4
  loc_A6AD01: ILdRf var_88
  loc_A6AD04: CheckType
  loc_A6AD08: OrI4
  loc_A6AD09: ILdRf var_88
  loc_A6AD0C: CheckType
  loc_A6AD10: OrI4
  loc_A6AD11: ILdRf var_88
  loc_A6AD14: CheckType
  loc_A6AD18: OrI4
  loc_A6AD19: BranchF loc_A6AD2F
  loc_A6AD1C: LitNothing
  loc_A6AD1E: CVarAd
  loc_A6AD22: PopAdLdVar
  loc_A6AD23: FLdPr var_88
  loc_A6AD26: LateMemStAd
  loc_A6AD2C: FFree1Var var_A4 = ""
  loc_A6AD2F: FLdRfVar var_88
  loc_A6AD32: NextEachCollAd var_94
  loc_A6AD38: ExitProc
  loc_A6AD39: OnErrorGoto loc_A6B012
End Function

Private Function Proc_272_16_AA0A60() 'AA0A60
  'Data Table: 43C408
  loc_AA09BC: FLdRfVar var_8C
  loc_AA09BF: ILdPr
  loc_AA09C2:  = Form.Controls
  loc_AA09C7: FLdZeroAd var_8C
  loc_AA09CA: FStAdFuncNoPop
  loc_AA09CD: FLdRfVar var_88
  loc_AA09D0: ForEachCollAd var_94
  loc_AA09D6: ILdRf var_88
  loc_AA09D9: CheckType
  loc_AA09DD: CVarBoolI2 var_D4
  loc_AA09E1: FLdPr var_88
  loc_AA09E4: LateMemLdVar
  loc_AA09E9: LitVarStr var_A4, "cmdCancelar"
  loc_AA09EE: HardType
  loc_AA09EF: EqVar var_C4
  loc_AA09F3: AndVar var_E4
  loc_AA09F7: NotVar var_F4
  loc_AA09FB: CBoolVarNull
  loc_AA09FD: FFreeVar var_B4 = ""
  loc_AA0A04: BranchF loc_AA0A55
  loc_AA0A07: ILdRf var_88
  loc_AA0A0A: CheckType
  loc_AA0A0E: ILdRf var_88
  loc_AA0A11: CheckType
  loc_AA0A15: OrI4
  loc_AA0A16: ILdRf var_88
  loc_AA0A19: CheckType
  loc_AA0A1D: OrI4
  loc_AA0A1E: ILdRf var_88
  loc_AA0A21: CheckType
  loc_AA0A25: OrI4
  loc_AA0A26: ILdRf var_88
  loc_AA0A29: CheckType
  loc_AA0A2D: OrI4
  loc_AA0A2E: ILdRf var_88
  loc_AA0A31: CheckType
  loc_AA0A35: OrI4
  loc_AA0A36: ILdRf var_88
  loc_AA0A39: CheckType
  loc_AA0A3D: OrI4
  loc_AA0A3E: ILdRf var_88
  loc_AA0A41: CheckType
  loc_AA0A45: OrI4
  loc_AA0A46: BranchF loc_AA0A55
  loc_AA0A49: LitVar_FALSE
  loc_AA0A4D: PopAdLdVar
  loc_AA0A4E: FLdPr var_88
  loc_AA0A51: LateMemSt
  loc_AA0A55: FLdRfVar var_88
  loc_AA0A58: NextEachCollAd var_94
  loc_AA0A5E: ExitProc
End Function

Private Function Proc_272_17_A8BE98() 'A8BE98
  'Data Table: 43C408
  loc_A8BE0C: FLdRfVar var_8C
  loc_A8BE0F: ILdPr
  loc_A8BE12:  = Form.Controls
  loc_A8BE17: FLdZeroAd var_8C
  loc_A8BE1A: FStAdFuncNoPop
  loc_A8BE1D: FLdRfVar var_88
  loc_A8BE20: ForEachCollAd var_94
  loc_A8BE26: ILdRf var_88
  loc_A8BE29: CheckType
  loc_A8BE2D: CVarBoolI2 var_D4
  loc_A8BE31: FLdPr var_88
  loc_A8BE34: LateMemLdVar
  loc_A8BE39: LitVarStr var_A4, "cmdCancelar"
  loc_A8BE3E: HardType
  loc_A8BE3F: EqVar var_C4
  loc_A8BE43: AndVar var_E4
  loc_A8BE47: NotVar var_F4
  loc_A8BE4B: CBoolVarNull
  loc_A8BE4D: FFreeVar var_B4 = ""
  loc_A8BE54: BranchF loc_A8BE8C
  loc_A8BE57: ILdRf var_88
  loc_A8BE5A: CheckType
  loc_A8BE5E: ILdRf var_88
  loc_A8BE61: CheckType
  loc_A8BE65: OrI4
  loc_A8BE66: ILdRf var_88
  loc_A8BE69: CheckType
  loc_A8BE6D: OrI4
  loc_A8BE6E: ILdRf var_88
  loc_A8BE71: CheckType
  loc_A8BE75: OrI4
  loc_A8BE76: ILdRf var_88
  loc_A8BE79: CheckType
  loc_A8BE7D: OrI4
  loc_A8BE7E: BranchF loc_A8BE8C
  loc_A8BE81: LitVar_TRUE var_A4
  loc_A8BE84: PopAdLdVar
  loc_A8BE85: FLdPr var_88
  loc_A8BE88: LateMemSt
  loc_A8BE8C: FLdRfVar var_88
  loc_A8BE8F: NextEachCollAd var_94
  loc_A8BE95: ExitProc
End Function

Private Function Proc_272_18_AE5BF0() 'AE5BF0
  'Data Table: 43C408
  loc_AE5AA4: FLdRfVar var_90
  loc_AE5AA7: ILdPr
  loc_AE5AAA:  = Form.Controls
  loc_AE5AAF: FLdZeroAd var_90
  loc_AE5AB2: FStAdFuncNoPop
  loc_AE5AB5: FLdRfVar var_88
  loc_AE5AB8: ForEachCollAd var_98
  loc_AE5ABE: FLdPr var_88
  loc_AE5AC1: LateMemLdVar
  loc_AE5AC6: LitVarStr var_A8, "FiltroCbo"
  loc_AE5ACB: HardType
  loc_AE5ACC: EqVar var_C8
  loc_AE5AD0: FLdPr var_88
  loc_AE5AD3: LateMemLdVar
  loc_AE5AD8: LitVarStr var_D8, "FiltroTxt"
  loc_AE5ADD: HardType
  loc_AE5ADE: EqVar var_F8
  loc_AE5AE2: OrVar var_108
  loc_AE5AE6: FLdPr var_88
  loc_AE5AE9: LateMemLdVar
  loc_AE5AEE: LitVarStr var_118, "FiltroMsk"
  loc_AE5AF3: HardType
  loc_AE5AF4: EqVar var_138
  loc_AE5AF8: OrVar var_148
  loc_AE5AFC: CBoolVarNull
  loc_AE5AFE: FFreeVar var_B8 = "": var_E8 = ""
  loc_AE5B07: BranchF loc_AE5B0D
  loc_AE5B0A: Branch loc_AE5BE3
  loc_AE5B0D: ILdRf var_88
  loc_AE5B10: CheckType
  loc_AE5B14: BranchF loc_AE5B33
  loc_AE5B17: FLdPr var_88
  loc_AE5B1A: LateMemLdVar
  loc_AE5B1F: CStrVarTmp
  loc_AE5B20: FStStr var_8C
  loc_AE5B23: FFree1Var var_B8 = ""
  loc_AE5B26: LitVarStr var_A8, vbNullString
  loc_AE5B2B: PopAdLdVar
  loc_AE5B2C: FLdPr var_88
  loc_AE5B2F: LateMemSt
  loc_AE5B33: ILdRf var_88
  loc_AE5B36: CheckType
  loc_AE5B3A: BranchF loc_AE5B56
  loc_AE5B3D: FLdPr var_88
  loc_AE5B40: LateMemLdVar
  loc_AE5B45: LitVarI2 var_A8, 2
  loc_AE5B4A: HardType
  loc_AE5B4B: EqVarBool
  loc_AE5B4D: FFree1Var var_B8 = ""
  loc_AE5B50: BranchF loc_AE5B56
  loc_AE5B53: Branch loc_AE5BE3
  loc_AE5B56: ILdRf var_88
  loc_AE5B59: CheckType
  loc_AE5B5D: ILdRf var_88
  loc_AE5B60: CheckType
  loc_AE5B64: OrI4
  loc_AE5B65: ILdRf var_88
  loc_AE5B68: CheckType
  loc_AE5B6C: OrI4
  loc_AE5B6D: BranchF loc_AE5B7D
  loc_AE5B70: LitVarStr var_A8, vbNullString
  loc_AE5B75: PopAdLdVar
  loc_AE5B76: FLdPr var_88
  loc_AE5B79: LateMemSt
  loc_AE5B7D: ILdRf var_88
  loc_AE5B80: CheckType
  loc_AE5B84: BranchF loc_AE5B95
  loc_AE5B87: ILdRf var_8C
  loc_AE5B8A: CVarStr var_A8
  loc_AE5B8D: PopAdLdVar
  loc_AE5B8E: FLdPr var_88
  loc_AE5B91: LateMemSt
  loc_AE5B95: FLdPr var_88
  loc_AE5B98: LateMemLdVar
  loc_AE5B9D: PopAd
  loc_AE5B9F: ILdRf var_88
  loc_AE5BA2: CheckType
  loc_AE5BA6: LitVarI2 var_C8, 5
  loc_AE5BAB: LitI4 1
  loc_AE5BB0: FLdRfVar var_B8
  loc_AE5BB3: CStrVarVal var_14C
  loc_AE5BB7: ImpAdCallI2 Mid$(, , )
  loc_AE5BBC: FStStrNoPop var_150
  loc_AE5BBF: LitStr "Label"
  loc_AE5BC2: NeStr
  loc_AE5BC4: AndI4
  loc_AE5BC5: FFreeStr var_14C = ""
  loc_AE5BCC: FFreeVar var_B8 = ""
  loc_AE5BD3: BranchF loc_AE5BE3
  loc_AE5BD6: LitVarStr var_A8, vbNullString
  loc_AE5BDB: PopAdLdVar
  loc_AE5BDC: FLdPr var_88
  loc_AE5BDF: LateMemSt
  loc_AE5BE3: FLdRfVar var_88
  loc_AE5BE6: NextEachCollAd var_98
  loc_AE5BEC: ExitProc
  loc_AE5BED: CI4R8
  loc_AE5BEE: FStFPR8 var_2FFD
End Function

Private Function Proc_272_19_A53E30() 'A53E30
  'Data Table: 43C408
  loc_A53DE0: LitVarI2 var_9C, 0
  loc_A53DE5: PopAdLdVar
  loc_A53DE6: FLdRfVar var_8C
  loc_A53DE9: ImpAdLdRf MemVar_D9C5D8
  loc_A53DEC: NewIfNullPr Global
  loc_A53DEF:  = Global.Forms
  loc_A53DF4: FLdPr var_8C
  loc_A53DF7: LateIdCallLdVar
  loc_A53E01: CastAdVar Me
  loc_A53E05: FStAdFunc var_C4
  loc_A53E08: FLdRfVar var_C4
  loc_A53E0B: LitI4 5
  loc_A53E10: PopTmpLdAdStr var_B0
  loc_A53E13: ImpAdCallI2  = Proc_17_6_A8760C()
  loc_A53E18: FStStrNoPop var_C8
  loc_A53E1B: LitStr "\Reportes InfoGov"
  loc_A53E1E: ConcatStr
  loc_A53E1F: FStStr var_88
  loc_A53E22: FFree1Str var_C8
  loc_A53E25: FFreeAd var_8C = ""
  loc_A53E2C: FFree1Var var_C0 = ""
  loc_A53E2F: ExitProc
End Function

Private Function Proc_272_20_A73C8C(arg_C) 'A73C8C
  'Data Table: 43C408
  loc_A73C24: ILdRf arg_C
  loc_A73C27: FStStrCopy var_8C
  loc_A73C2A: FLdRfVar var_90
  loc_A73C2D: NewIfNullAd
  loc_A73C30: FStAd var_98 
  loc_A73C34: FLdRfVar var_9C
  loc_A73C37: ILdRf var_8C
  loc_A73C3A: FLdPr var_98
  loc_A73C3D: from_stack_2 = Me.GetParentFolderName(from_stack_1v)
  loc_A73C42: FLdZeroAd var_9C
  loc_A73C45: FStStr var_94
  loc_A73C48: FLdRfVar var_9E
  loc_A73C4B: ILdRf var_94
  loc_A73C4E: FLdPr var_98
  loc_A73C51: from_stack_2 = Me.FolderExists(from_stack_1v)
  loc_A73C56: FLdI2 var_9E
  loc_A73C59: BranchF loc_A73C64
  loc_A73C5C: LitI2_Byte &HFF
  loc_A73C5E: FStI2 var_86
  loc_A73C61: Branch loc_A73C85
  loc_A73C64: ILdRf var_94
  loc_A73C67: ImpAdCallI2 Proc_272_20_A73C8C()
  loc_A73C6C: BranchF loc_A73C85
  loc_A73C6F: FLdRfVar var_A4
  loc_A73C72: ILdRf var_94
  loc_A73C75: FLdPr var_98
  loc_A73C78: from_stack_2 = Me.CreateFolder(from_stack_1v)
  loc_A73C7D: FFree1Ad var_A4
  loc_A73C80: LitI2_Byte &HFF
  loc_A73C82: FStI2 var_86
  loc_A73C85: LitNothing
  loc_A73C87: FStAd var_98 
  loc_A73C8B: ExitProcI2
End Function

Private Function Proc_272_21_B1B23C(arg_10, arg_14) 'B1B23C
  'Data Table: 43C408
  loc_B1AFD4: OnErrorGoto loc_B1B1A4
  loc_B1AFD7: ImpAdCallI2 Proc_272_19_A53E30()
  loc_B1AFDC: FMemStStr arg_8(20)
  loc_B1AFE2: FLdRfVar var_8E
  loc_B1AFE5: FMemLdR4 arg_8(20)
  loc_B1AFEA: FLdRfVar var_8C
  loc_B1AFED: NewIfNullPr IFileSystem3
  loc_B1AFF0: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B1AFF5: FLdI2 var_8E
  loc_B1AFF8: NotI4
  loc_B1AFF9: BranchF loc_B1B012
  loc_B1AFFC: FLdRfVar var_94
  loc_B1AFFF: FMemLdR4 arg_8(20)
  loc_B1B004: FLdRfVar var_8C
  loc_B1B007: NewIfNullPr IFileSystem3
  loc_B1B00A: from_stack_2 = IFileSystem3.IFileSystem.CreateFolder(from_stack_1v)
  loc_B1B00F: FFree1Ad var_94
  loc_B1B012: FLdRfVar var_98
  loc_B1B015: ILdPr
  loc_B1B018:  = Form.Caption
  loc_B1B01D: FLdRfVar var_9C
  loc_B1B020: ILdRf var_98
  loc_B1B023: FMemLdR4 arg_8(20)
  loc_B1B028: FLdRfVar var_8C
  loc_B1B02B: NewIfNullPr IFileSystem3
  loc_B1B02E: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B1B033: FLdZeroAd var_9C
  loc_B1B036: FMemStStr arg_8(20)
  loc_B1B03C: FFree1Str var_98
  loc_B1B03F: LitVar_TRUE var_AC
  loc_B1B042: PopAdLdVar
  loc_B1B043: ILdPr
  loc_B1B046: LateMemLdVar
  loc_B1B04B: VarLateMemSt .CancelError
  loc_B1B04F: FFree1Var var_CC = ""
  loc_B1B052: LitVarStr var_AC, "Guardar como..."
  loc_B1B057: PopAdLdVar
  loc_B1B058: ILdPr
  loc_B1B05B: LateMemLdVar
  loc_B1B060: VarLateMemSt .DialogTitle
  loc_B1B064: FFree1Var var_CC = ""
  loc_B1B067: LitVarStr var_AC, "txt"
  loc_B1B06C: PopAdLdVar
  loc_B1B06D: ILdPr
  loc_B1B070: LateMemLdVar
  loc_B1B075: VarLateMemSt .DefaultExt
  loc_B1B079: FFree1Var var_CC = ""
  loc_B1B07C: LitVarI4
  loc_B1B084: PopAdLdVar
  loc_B1B085: ILdPr
  loc_B1B088: LateMemLdVar
  loc_B1B08D: VarLateMemSt .Flags
  loc_B1B091: FFree1Var var_CC = ""
  loc_B1B094: FLdI2 arg_10
  loc_B1B097: BranchF loc_B1B0D2
  loc_B1B09A: LitVarStr var_AC, "(*.pdf)|*.pdf"
  loc_B1B09F: PopAdLdVar
  loc_B1B0A0: ILdPr
  loc_B1B0A3: LateMemLdVar
  loc_B1B0A8: VarLateMemSt .Filter
  loc_B1B0AC: FFree1Var var_CC = ""
  loc_B1B0AF: FMemLdR4 arg_8(20)
  loc_B1B0B4: LitStr ".pdf"
  loc_B1B0B7: ConcatStr
  loc_B1B0B8: CVarStr var_CC
  loc_B1B0BB: PopAdLdVar
  loc_B1B0BC: ILdPr
  loc_B1B0BF: LateMemLdVar
  loc_B1B0C4: VarLateMemSt .fileName
  loc_B1B0C8: FFreeVar var_CC = ""
  loc_B1B0CF: Branch loc_B1B145
  loc_B1B0D2: FLdI2 arg_14
  loc_B1B0D5: BranchF loc_B1B110
  loc_B1B0D8: LitVarStr var_AC, "(*.xls)|*.xls"
  loc_B1B0DD: PopAdLdVar
  loc_B1B0DE: ILdPr
  loc_B1B0E1: LateMemLdVar
  loc_B1B0E6: VarLateMemSt .Filter
  loc_B1B0EA: FFree1Var var_CC = ""
  loc_B1B0ED: FMemLdR4 arg_8(20)
  loc_B1B0F2: LitStr ".xls"
  loc_B1B0F5: ConcatStr
  loc_B1B0F6: CVarStr var_CC
  loc_B1B0F9: PopAdLdVar
  loc_B1B0FA: ILdPr
  loc_B1B0FD: LateMemLdVar
  loc_B1B102: VarLateMemSt .fileName
  loc_B1B106: FFreeVar var_CC = ""
  loc_B1B10D: Branch loc_B1B145
  loc_B1B110: LitVarStr var_AC, "(*.txt)|*.txt"
  loc_B1B115: PopAdLdVar
  loc_B1B116: ILdPr
  loc_B1B119: LateMemLdVar
  loc_B1B11E: VarLateMemSt .Filter
  loc_B1B122: FFree1Var var_CC = ""
  loc_B1B125: FMemLdR4 arg_8(20)
  loc_B1B12A: LitStr ".txt"
  loc_B1B12D: ConcatStr
  loc_B1B12E: CVarStr var_CC
  loc_B1B131: PopAdLdVar
  loc_B1B132: ILdPr
  loc_B1B135: LateMemLdVar
  loc_B1B13A: VarLateMemSt .fileName
  loc_B1B13E: FFreeVar var_CC = ""
  loc_B1B145: ILdPr
  loc_B1B148: LateMemLdVar
  loc_B1B14D: LdPrVar
  loc_B1B14F: LateMemCall
  loc_B1B155: FFree1Var var_DC = ""
  loc_B1B158: ILdPr
  loc_B1B15B: LateMemLdVar
  loc_B1B160: VarLateMemLdRfVar var_10C, .fileName
  loc_B1B166: PopAd
  loc_B1B168: ILdPr
  loc_B1B16B: LateMemLdVar
  loc_B1B170: VarLateMemLdVar var_EC, .fileName
  loc_B1B176: FnLenVar var_FC
  loc_B1B17A: CI4Var
  loc_B1B17C: FLdRfVar var_10C
  loc_B1B17F: FLdRfVar var_11C
  loc_B1B182: ImpAdCallFPR4  = Left(, )
  loc_B1B187: FLdRfVar var_11C
  loc_B1B18A: CStrVarTmp
  loc_B1B18B: FMemStStr arg_8(20)
  loc_B1B191: FFreeVar var_CC = "": var_DC = "": var_EC = "": var_10C = ""
  loc_B1B19E: LitI2_Byte &HFF
  loc_B1B1A0: FStI2 var_86
  loc_B1B1A3: ExitProcI2
  loc_B1B1A4: FLdRfVar var_120
  loc_B1B1A7: ImpAdCallI2 Err 'rtcErrObj
  loc_B1B1AC: FStAdFunc var_94
  loc_B1B1AF: FLdPr var_94
  loc_B1B1B2:  = Err.Number
  loc_B1B1B7: ILdRf var_120
  loc_B1B1BA: LitI4 &H7FF3
  loc_B1B1BF: EqI4
  loc_B1B1C0: FFree1Ad var_94
  loc_B1B1C3: BranchF loc_B1B1C7
  loc_B1B1C6: ExitProcI2
  loc_B1B1C7: LitVar_Missing var_FC
  loc_B1B1CA: LitVar_Missing var_EC
  loc_B1B1CD: LitVar_Missing var_DC
  loc_B1B1D0: LitI4 0
  loc_B1B1D5: LitStr "Error "
  loc_B1B1D8: FLdRfVar var_120
  loc_B1B1DB: ImpAdCallI2 Err 'rtcErrObj
  loc_B1B1E0: FStAdFunc var_94
  loc_B1B1E3: FLdPr var_94
  loc_B1B1E6:  = Err.Number
  loc_B1B1EB: ILdRf var_120
  loc_B1B1EE: CStrI4
  loc_B1B1F0: FStStrNoPop var_98
  loc_B1B1F3: ConcatStr
  loc_B1B1F4: FStStrNoPop var_9C
  loc_B1B1F7: LitStr ": "
  loc_B1B1FA: ConcatStr
  loc_B1B1FB: FStStrNoPop var_12C
  loc_B1B1FE: FLdRfVar var_128
  loc_B1B201: ImpAdCallI2 Err 'rtcErrObj
  loc_B1B206: FStAdFunc var_124
  loc_B1B209: FLdPr var_124
  loc_B1B20C:  = Err.Description
  loc_B1B211: ILdRf var_128
  loc_B1B214: ConcatStr
  loc_B1B215: CVarStr var_CC
  loc_B1B218: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B1B21D: FFreeStr var_98 = "": var_9C = "": var_12C = ""
  loc_B1B228: FFreeAd var_94 = ""
  loc_B1B22F: FFreeVar var_CC = "": var_DC = "": var_EC = ""
  loc_B1B23A: ExitProcI2
End Function

Private Function Proc_272_22_AE2660(arg_C) 'AE2660
  'Data Table: 43C408
  loc_AE250C: FDupVar
  loc_AE2512: FLdRfVar var_94
  loc_AE2515: ImpAdCallI2 IsNull()
  loc_AE251A: BranchF loc_AE252A
  loc_AE251D: LitStr vbNullString
  loc_AE2520: ILdI4 arg_C
  loc_AE2523: StFixedStrR
  loc_AE2527: Branch loc_AE265D
  loc_AE252A: FLdRfVar arg_20
  loc_AE252D: CVarRef
  loc_AE2532: ImpAdCallI2 IsMissing()
  loc_AE2537: BranchF loc_AE2546
  loc_AE253A: FLdRfVar var_94
  loc_AE253D: CStrVar
  loc_AE253F: IStStr
  loc_AE2543: Branch loc_AE25B1
  loc_AE2546: FLdI2 arg_20
  loc_AE2549: BranchF loc_AE25A8
  loc_AE254C: FLdRfVar var_94
  loc_AE254F: LitVarStr var_B4, vbNullString
  loc_AE2554: HardType
  loc_AE2555: EqVarBool
  loc_AE2557: BranchF loc_AE2563
  loc_AE255A: LitVarI2 var_B4, 0
  loc_AE255F: FStVar var_94
  loc_AE2563: FLdRfVar arg_28
  loc_AE2566: CVarRef
  loc_AE256B: ImpAdCallI2 IsMissing()
  loc_AE2570: FLdUI1
  loc_AE2574: CI2UI1
  loc_AE2576: LitI2_Byte 0
  loc_AE2578: EqI2
  loc_AE2579: OrI4
  loc_AE257A: BranchF loc_AE2585
  loc_AE257D: LitI2_Byte 2
  loc_AE257F: CUI1I2
  loc_AE2581: FStUI1 arg_28
  loc_AE2585: LitI4 -1
  loc_AE258A: LitI4 0
  loc_AE258F: LitI4 -1
  loc_AE2594: FLdUI1
  loc_AE2598: CI4UI1
  loc_AE2599: FLdRfVar var_94
  loc_AE259C: ImpAdCallI2 FormatNumber(, , , , )
  loc_AE25A1: IStStr
  loc_AE25A5: Branch loc_AE25B1
  loc_AE25A8: FLdRfVar var_94
  loc_AE25AB: CStrVar
  loc_AE25AD: IStStr
  loc_AE25B1: ILdRf arg_24
  loc_AE25B4: ImpAdCallI2 IsMissing()
  loc_AE25B9: NotI4
  loc_AE25BA: BranchF loc_AE265D
  loc_AE25BD: FLdRfVar arg_28
  loc_AE25C0: CVarRef
  loc_AE25C5: ImpAdCallI2 IsMissing()
  loc_AE25CA: FLdUI1
  loc_AE25CE: CI2UI1
  loc_AE25D0: LitI2_Byte 0
  loc_AE25D2: EqI2
  loc_AE25D3: OrI4
  loc_AE25D4: BranchF loc_AE25DF
  loc_AE25D7: LitI2_Byte 2
  loc_AE25D9: CUI1I2
  loc_AE25DB: FStUI1 arg_28
  loc_AE25DF: ILdRfDarg arg_24
  loc_AE25E5: LitVarStr var_B4, vbNullString
  loc_AE25EA: HardType
  loc_AE25EB: EqVarBool
  loc_AE25ED: BranchF loc_AE25F8
  loc_AE25F0: LitVarI2 var_B4, 0
  loc_AE25F5: IStDarg arg_24
  loc_AE25F8: FLdUI1
  loc_AE25FC: CI4UI1
  loc_AE25FD: ILdRfDarg arg_24
  loc_AE2603: FnCDblVar
  loc_AE2605: CVarR8
  loc_AE2609: FLdRfVar var_E4
  loc_AE260C: ImpAdCallFPR4  = Round(, )
  loc_AE2611: FLdUI1
  loc_AE2615: CI4UI1
  loc_AE2616: FLdRfVar var_94
  loc_AE2619: FnCDblVar
  loc_AE261B: CVarR8
  loc_AE261F: FLdRfVar var_114
  loc_AE2622: ImpAdCallFPR4  = Round(, )
  loc_AE2627: LitI4 -1
  loc_AE262C: LitI4 0
  loc_AE2631: LitI4 -1
  loc_AE2636: FLdUI1
  loc_AE263A: CI4UI1
  loc_AE263B: FLdRfVar var_E4
  loc_AE263E: FLdRfVar var_114
  loc_AE2641: AddVar var_124
  loc_AE2645: ImpAdCallI2 FormatNumber(, , , , )
  loc_AE264A: CVarStr var_134
  loc_AE264D: IStDarg arg_24
  loc_AE2650: FFreeVar var_C4 = "": var_104 = "": var_E4 = "": var_114 = ""
  loc_AE265D: ExitProc
  loc_AE265E: FnLBound
End Function

Private Function Proc_272_23_B17298(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) 'B17298
  'Data Table: 43C408
  loc_B1705C: ILdRf arg_C
  loc_B1705F: FStStrCopy var_8C
  loc_B17062: ILdRf arg_10
  loc_B17065: FStStrCopy var_90
  loc_B17068: ILdRf arg_20
  loc_B1706B: FStStrCopy var_94
  loc_B1706E: FLdRfVar var_8C
  loc_B17071: CVarRef
  loc_B17076: FLdRfVar var_B4
  loc_B17079: ImpAdCallFPR4  = Trim()
  loc_B1707E: FLdRfVar var_B4
  loc_B17081: LitVarStr var_C4, vbNullString
  loc_B17086: HardType
  loc_B17087: EqVarBool
  loc_B17089: FFree1Var var_B4 = ""
  loc_B1708C: BranchF loc_B17095
  loc_B1708F: LitStr "&nbsp;"
  loc_B17092: FStStrCopy var_8C
  loc_B17095: FLdRfVar arg_14
  loc_B17098: CVarRef
  loc_B1709D: ImpAdCallI2 IsMissing()
  loc_B170A2: NotI4
  loc_B170A3: BranchF loc_B170BB
  loc_B170A6: FLdI2 arg_14
  loc_B170A9: BranchF loc_B170BB
  loc_B170AC: ILdRf var_8C
  loc_B170AF: CVarStr var_A4
  loc_B170B2: PopAdLdVar
  loc_B170B3: ImpAdCallI2 Proc_272_24_A7DB2C(, , , )
  loc_B170B8: FStStr var_8C
  loc_B170BB: FLdI2 arg_18
  loc_B170BE: LitI2_Byte 0
  loc_B170C0: NeI2
  loc_B170C1: BranchF loc_B170E1
  loc_B170C4: LitStr " rowspan="""
  loc_B170C7: FLdI2 arg_18
  loc_B170CA: CStrUI1
  loc_B170CC: FStStrNoPop var_E4
  loc_B170CF: ConcatStr
  loc_B170D0: FStStrNoPop var_E8
  loc_B170D3: LitStr """"
  loc_B170D6: ConcatStr
  loc_B170D7: FStStr var_D8
  loc_B170DA: FFreeStr var_E4 = ""
  loc_B170E1: FLdI2 arg_1C
  loc_B170E4: LitI2_Byte 0
  loc_B170E6: NeI2
  loc_B170E7: BranchF loc_B17107
  loc_B170EA: LitStr " colspan="""
  loc_B170ED: FLdI2 arg_1C
  loc_B170F0: CStrUI1
  loc_B170F2: FStStrNoPop var_E4
  loc_B170F5: ConcatStr
  loc_B170F6: FStStrNoPop var_E8
  loc_B170F9: LitStr """"
  loc_B170FC: ConcatStr
  loc_B170FD: FStStr var_DC
  loc_B17100: FFreeStr var_E4 = ""
  loc_B17107: ILdRf var_94
  loc_B1710A: LitStr vbNullString
  loc_B1710D: NeStr
  loc_B1710F: BranchF loc_B17126
  loc_B17112: LitStr " class="""
  loc_B17115: ILdRf var_94
  loc_B17118: ConcatStr
  loc_B17119: FStStrNoPop var_E4
  loc_B1711C: LitStr """"
  loc_B1711F: ConcatStr
  loc_B17120: FStStr var_E0
  loc_B17123: FFree1Str var_E4
  loc_B17126: ILdRf var_90
  loc_B17129: LitStr vbNullString
  loc_B1712C: EqStr
  loc_B1712E: BranchF loc_B17208
  loc_B17131: FLdRfVar var_8C
  loc_B17134: CVarRef
  loc_B17139: ImpAdCallI2 IsNumeric()
  loc_B1713E: BranchF loc_B1717E
  loc_B17141: LitStr "       <td "
  loc_B17144: ILdRf var_E0
  loc_B17147: ConcatStr
  loc_B17148: FStStrNoPop var_E4
  loc_B1714B: ILdRf var_D8
  loc_B1714E: ConcatStr
  loc_B1714F: FStStrNoPop var_E8
  loc_B17152: ILdRf var_DC
  loc_B17155: ConcatStr
  loc_B17156: FStStrNoPop var_EC
  loc_B17159: LitStr " align=""right"">"
  loc_B1715C: ConcatStr
  loc_B1715D: FStStrNoPop var_F0
  loc_B17160: ILdRf var_8C
  loc_B17163: ConcatStr
  loc_B17164: FStStrNoPop var_F4
  loc_B17167: LitStr "</td>"
  loc_B1716A: ConcatStr
  loc_B1716B: FStStr var_88
  loc_B1716E: FFreeStr var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_B1717B: Branch loc_B17205
  loc_B1717E: FLdRfVar var_8C
  loc_B17181: CVarRef
  loc_B17186: ImpAdCallI2 IsDate()
  loc_B1718B: BranchF loc_B171CB
  loc_B1718E: LitStr "       <td "
  loc_B17191: ILdRf var_E0
  loc_B17194: ConcatStr
  loc_B17195: FStStrNoPop var_E4
  loc_B17198: ILdRf var_D8
  loc_B1719B: ConcatStr
  loc_B1719C: FStStrNoPop var_E8
  loc_B1719F: ILdRf var_DC
  loc_B171A2: ConcatStr
  loc_B171A3: FStStrNoPop var_EC
  loc_B171A6: LitStr " align=""right"">"
  loc_B171A9: ConcatStr
  loc_B171AA: FStStrNoPop var_F0
  loc_B171AD: ILdRf var_8C
  loc_B171B0: ConcatStr
  loc_B171B1: FStStrNoPop var_F4
  loc_B171B4: LitStr "</td>"
  loc_B171B7: ConcatStr
  loc_B171B8: FStStr var_88
  loc_B171BB: FFreeStr var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_B171C8: Branch loc_B17205
  loc_B171CB: LitStr "       <td "
  loc_B171CE: ILdRf var_E0
  loc_B171D1: ConcatStr
  loc_B171D2: FStStrNoPop var_E4
  loc_B171D5: ILdRf var_D8
  loc_B171D8: ConcatStr
  loc_B171D9: FStStrNoPop var_E8
  loc_B171DC: ILdRf var_DC
  loc_B171DF: ConcatStr
  loc_B171E0: FStStrNoPop var_EC
  loc_B171E3: LitStr " align=""left"">"
  loc_B171E6: ConcatStr
  loc_B171E7: FStStrNoPop var_F0
  loc_B171EA: ILdRf var_8C
  loc_B171ED: ConcatStr
  loc_B171EE: FStStrNoPop var_F4
  loc_B171F1: LitStr "</td>"
  loc_B171F4: ConcatStr
  loc_B171F5: FStStr var_88
  loc_B171F8: FFreeStr var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_B17205: Branch loc_B17297
  loc_B17208: LitStr "       <td "
  loc_B1720B: ILdRf var_E0
  loc_B1720E: ConcatStr
  loc_B1720F: FStStrNoPop var_E4
  loc_B17212: ILdRf var_D8
  loc_B17215: ConcatStr
  loc_B17216: FStStrNoPop var_E8
  loc_B17219: ILdRf var_DC
  loc_B1721C: ConcatStr
  loc_B1721D: FStStrNoPop var_EC
  loc_B17220: LitStr " align="
  loc_B17223: ConcatStr
  loc_B17224: CVarStr var_D4
  loc_B17227: LitI4 &H22
  loc_B1722C: FLdRfVar var_B4
  loc_B1722F: ImpAdCallFPR4  = Chr()
  loc_B17234: FLdRfVar var_B4
  loc_B17237: ConcatVar var_104
  loc_B1723B: ILdRf var_90
  loc_B1723E: CVarStr var_A4
  loc_B17241: ConcatVar var_114
  loc_B17245: LitI4 &H22
  loc_B1724A: FLdRfVar var_124
  loc_B1724D: ImpAdCallFPR4  = Chr()
  loc_B17252: FLdRfVar var_124
  loc_B17255: ConcatVar var_134
  loc_B17259: LitVarStr var_C4, ">"
  loc_B1725E: ConcatVar var_144
  loc_B17262: ILdRf var_8C
  loc_B17265: CVarStr var_154
  loc_B17268: ConcatVar var_164
  loc_B1726C: LitVarStr var_174, "</td>"
  loc_B17271: ConcatVar var_184
  loc_B17275: CStrVarTmp
  loc_B17276: FStStr var_88
  loc_B17279: FFreeStr var_E4 = "": var_E8 = ""
  loc_B17282: FFreeVar var_D4 = "": var_B4 = "": var_104 = "": var_114 = "": var_124 = "": var_134 = "": var_144 = "": var_164 = ""
  loc_B17297: ExitProc
End Function

Private Function Proc_272_24_A7DB2C() 'A7DB2C
  'Data Table: 43C408
  loc_A7DAB8: FDupVar
  loc_A7DABE: FLdRfVar var_98
  loc_A7DAC1: ImpAdCallI2 IsNumeric()
  loc_A7DAC6: BranchF loc_A7DB22
  loc_A7DAC9: FLdRfVar var_98
  loc_A7DACC: CR4Var
  loc_A7DACD: FnSgnR4
  loc_A7DACF: LitI2_Byte 0
  loc_A7DAD1: LtI2
  loc_A7DAD2: BranchF loc_A7DB17
  loc_A7DAD5: LitVarStr var_E8, "("
  loc_A7DADA: FLdRfVar var_98
  loc_A7DADD: FnLenVar var_A8
  loc_A7DAE1: LitVarI2 var_B8, 1
  loc_A7DAE6: SubVar var_C8
  loc_A7DAEA: CI4Var
  loc_A7DAEC: FLdRfVar var_98
  loc_A7DAEF: FLdRfVar var_D8
  loc_A7DAF2: ImpAdCallFPR4  = Right(, )
  loc_A7DAF7: FLdRfVar var_D8
  loc_A7DAFA: ConcatVar var_F8
  loc_A7DAFE: LitVarStr var_108, ")"
  loc_A7DB03: ConcatVar var_118
  loc_A7DB07: CStrVarTmp
  loc_A7DB08: FStStr var_88
  loc_A7DB0B: FFreeVar var_D8 = "": var_F8 = ""
  loc_A7DB14: Branch loc_A7DB1F
  loc_A7DB17: FLdRfVar var_98
  loc_A7DB1A: CStrVar
  loc_A7DB1C: FStStr var_88
  loc_A7DB1F: Branch loc_A7DB2A
  loc_A7DB22: FLdRfVar var_98
  loc_A7DB25: CStrVar
  loc_A7DB27: FStStr var_88
  loc_A7DB2A: ExitProc
End Function

Private Function Proc_272_25_B159D8(arg_C) 'B159D8
  'Data Table: 43C408
  loc_B157E2: ILdRf arg_C
  loc_B157E5: FStStrCopy var_8C
  loc_B157EA: OnErrorGoto loc_B1595E
  loc_B157EF: FLdRfVar var_90
  loc_B157F2: ImpAdLdRf MemVar_D9C5D8
  loc_B157F5: NewIfNullPr Global
  loc_B157F8:  = Global.Printer
  loc_B157FD: FLdPr var_90
  loc_B15800: LateIdLdVar var_A0 DispID_28 1
  loc_B15807: CStrVarTmp
  loc_B15808: FStStrNoPop var_A4
  loc_B1580B: ILdRf var_8C
  loc_B1580E: NeStr
  loc_B15810: FFree1Str var_A4
  loc_B15813: FFree1Ad var_90
  loc_B15816: FFree1Var var_A0 = ""
  loc_B15819: BranchF loc_B1582F
  loc_B1581E: ILdRf var_8C
  loc_B15821: FStStrCopy var_A4
  loc_B15824: FLdRfVar var_A4
  loc_B15827: ImpAdCallFPR4 Proc_17_3_A6FF40()
  loc_B1582C: FFree1Str var_A4
  loc_B15833: LitI4 &H2000
  loc_B15838: FLdRfVar var_A0
  loc_B1583B: ImpAdCallFPR4  = Space()
  loc_B15840: FLdRfVar var_A0
  loc_B15843: CStrVarTmp
  loc_B15844: FStStr var_AC
  loc_B15847: FFree1Var var_A0 = ""
  loc_B1584C: ILdRf var_AC
  loc_B1584F: FnLenStr
  loc_B15850: ILdRf var_AC
  loc_B15853: FLdRfVar var_1CC
  loc_B15856: CStr2Ansi
  loc_B15857: ILdRf var_1CC
  loc_B1585A: LitStr vbNullString
  loc_B1585D: FLdRfVar var_1C8
  loc_B15860: CStr2Ansi
  loc_B15861: ILdRf var_1C8
  loc_B15864: LitI4 0
  loc_B15869: LitStr "PrinterPorts"
  loc_B1586C: FLdRfVar var_A4
  loc_B1586F: CStr2Ansi
  loc_B15870: ILdRf var_A4
  loc_B15873: ImpAdCallI2 GetProfileString(, , , , )
  loc_B15878: FStR4 var_1D0
  loc_B1587B: SetLastSystemError
  loc_B1587C: ILdRf var_1CC
  loc_B1587F: FLdRfVar var_AC
  loc_B15882: CStr2Uni
  loc_B15884: ILdRf var_1D0
  loc_B15887: FStR4 var_A8
  loc_B1588A: FFreeStr var_A4 = "": var_1C8 = ""
  loc_B15895: LitI4 &H94
  loc_B1589A: FStR4 var_1C0
  loc_B1589F: LitI4 &H80
  loc_B158A4: ImpAdCallI2 Space$()
  loc_B158A9: FStStrNoPop var_A4
  loc_B158AC: FLdRfVar var_1AC
  loc_B158AF: StFixedStr
  loc_B158B2: FFree1Str var_A4
  loc_B158B7: FLdRfVar var_1C0
  loc_B158BA: FLdRfVar var_264
  loc_B158BD: CRec2Ansi arg_7B
  loc_B158C0: FLdRfVar var_264
  loc_B158C3: ImpAdCallI2 GetVersionEx()
  loc_B158C8: FStI2 var_266
  loc_B158CB: SetLastSystemError
  loc_B158CC: FLdRfVar var_264
  loc_B158CF: FLdRfVar var_1C0
  loc_B158D2: CRec2Uni arg_7B
  loc_B158D5: FLdI2 var_266
  loc_B158D8: FStI2 var_1C2
  loc_B158DD: ILdRf var_8C
  loc_B158E0: ImpAdStStrCopy MemVar_D93C90
  loc_B158E6: ILdRf var_1B0
  loc_B158E9: LitI4 1
  loc_B158EE: EqI4
  loc_B158EF: BranchF loc_B158FF
  loc_B158F4: ILdRf var_8C
  loc_B158F7: ImpAdCallFPR4 Proc_17_9_B44DBC()
  loc_B158FC: Branch loc_B15959
  loc_B15903: LitI4 &H22
  loc_B15908: FLdRfVar var_A0
  loc_B1590B: ImpAdCallFPR4  = Chr()
  loc_B15910: LitI4 &H22
  loc_B15915: FLdRfVar var_2B8
  loc_B15918: ImpAdCallFPR4  = Chr()
  loc_B1591D: LitI4 0
  loc_B15922: LitVarStr var_278, "RUNDLL32 PRINTUI.DLL,PrintUIEntry /y /n "
  loc_B15927: FLdRfVar var_A0
  loc_B1592A: ConcatVar var_288
  loc_B1592E: ILdRf var_8C
  loc_B15931: CVarStr var_298
  loc_B15934: ConcatVar var_2A8
  loc_B15938: FLdRfVar var_2B8
  loc_B1593B: ConcatVar var_2C8
  loc_B1593F: ImpAdCallFPR4 push Shell(, )
  loc_B15944: CVarR8
  loc_B15948: FStVar var_2D8
  loc_B1594C: FFreeVar var_A0 = "": var_288 = "": var_2A8 = "": var_2B8 = ""
  loc_B1595D: ExitProc
  loc_B15960: LitStr "Error al acceder a la impresora."
  loc_B15963: LitStr vbCrLf
  loc_B15966: ConcatStr
  loc_B15967: FStStrNoPop var_A4
  loc_B1596A: LitStr "Cod. "
  loc_B1596D: ConcatStr
  loc_B1596E: FStStrNoPop var_1C8
  loc_B15971: FLdRfVar var_1D0
  loc_B15974: ImpAdCallI2 Err 'rtcErrObj
  loc_B15979: FStAdFunc var_90
  loc_B1597C: FLdPr var_90
  loc_B1597F:  = Err.Number
  loc_B15984: ILdRf var_1D0
  loc_B15987: CStrI4
  loc_B15989: FStStrNoPop var_1CC
  loc_B1598C: ConcatStr
  loc_B1598D: FStStrNoPop var_2EC
  loc_B15990: LitStr ": "
  loc_B15993: ConcatStr
  loc_B15994: FStStrNoPop var_2F8
  loc_B15997: FLdRfVar var_2F4
  loc_B1599A: ImpAdCallI2 Err 'rtcErrObj
  loc_B1599F: FStAdFunc var_2F0
  loc_B159A2: FLdPr var_2F0
  loc_B159A5:  = Err.Description
  loc_B159AA: ILdRf var_2F4
  loc_B159AD: ConcatStr
  loc_B159AE: FStStrNoPop var_2FC
  loc_B159B1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B159B6: FFreeStr var_A4 = "": var_1C8 = "": var_1CC = "": var_2EC = "": var_2F8 = "": var_2F4 = ""
  loc_B159C7: FFreeAd var_90 = ""
  loc_B159D0: Resume
  loc_B159D6: ExitProc
End Function

Private Function Proc_272_26_AC2364() 'AC2364
  'Data Table: 43C408
  loc_AC22AC: LitI4 &H2000
  loc_AC22B1: FLdRfVar var_1B8
  loc_AC22B4: ImpAdCallFPR4  = Space()
  loc_AC22B9: FLdRfVar var_1B8
  loc_AC22BC: CStrVarTmp
  loc_AC22BD: FStStr var_90
  loc_AC22C0: FFree1Var var_1B8 = ""
  loc_AC22C3: ILdRf var_90
  loc_AC22C6: FnLenStr
  loc_AC22C7: ILdRf var_90
  loc_AC22CA: FLdRfVar var_1C4
  loc_AC22CD: CStr2Ansi
  loc_AC22CE: ILdRf var_1C4
  loc_AC22D1: LitStr vbNullString
  loc_AC22D4: FLdRfVar var_1C0
  loc_AC22D7: CStr2Ansi
  loc_AC22D8: ILdRf var_1C0
  loc_AC22DB: LitI4 0
  loc_AC22E0: LitStr "PrinterPorts"
  loc_AC22E3: FLdRfVar var_1BC
  loc_AC22E6: CStr2Ansi
  loc_AC22E7: ILdRf var_1BC
  loc_AC22EA: ImpAdCallI2 GetProfileString(, , , , )
  loc_AC22EF: FStR4 var_1C8
  loc_AC22F2: SetLastSystemError
  loc_AC22F3: ILdRf var_1C4
  loc_AC22F6: FLdRfVar var_90
  loc_AC22F9: CStr2Uni
  loc_AC22FB: ILdRf var_1C8
  loc_AC22FE: FStR4 var_8C
  loc_AC2301: FFreeStr var_1BC = "": var_1C0 = ""
  loc_AC230A: LitI4 &H94
  loc_AC230F: FStR4 var_1A4
  loc_AC2312: LitI4 &H80
  loc_AC2317: ImpAdCallI2 Space$()
  loc_AC231C: FStStrNoPop var_1BC
  loc_AC231F: FLdRfVar var_190
  loc_AC2322: StFixedStr
  loc_AC2325: FFree1Str var_1BC
  loc_AC2328: FLdRfVar var_1A4
  loc_AC232B: FLdRfVar var_25C
  loc_AC232E: CRec2Ansi arg_7B
  loc_AC2331: FLdRfVar var_25C
  loc_AC2334: ImpAdCallI2 GetVersionEx()
  loc_AC2339: FStI2 var_25E
  loc_AC233C: SetLastSystemError
  loc_AC233D: FLdRfVar var_25C
  loc_AC2340: FLdRfVar var_1A4
  loc_AC2343: CRec2Uni arg_7B
  loc_AC2346: FLdI2 var_25E
  loc_AC2349: FStI2 var_1A6
  loc_AC234C: FLdRfVar var_270
  loc_AC234F: CStrVar
  loc_AC2351: ImpAdStStr MemVar_D93C90
  loc_AC2355: ILdRf var_194
  loc_AC2358: LitI4 1
  loc_AC235D: EqI4
  loc_AC235E: FStI2 var_86
  loc_AC2361: ExitProcI2
End Function

Private Function Proc_272_27_AA0C4C(arg_C) 'AA0C4C
  'Data Table: 43C408
  loc_AA0BA4: ILdRf arg_C
  loc_AA0BA7: FStStrCopy var_88
  loc_AA0BAA: FLdRfVar var_AC
  loc_AA0BAD: FLdRfVar var_A8
  loc_AA0BB0: LitI4 2
  loc_AA0BB5: FLdRfVar var_8C
  loc_AA0BB8: NewIfNullPr IFileSystem3
  loc_AA0BBB: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_AA0BC0: FLdPr var_A8
  loc_AA0BC3:  = Me.Path
  loc_AA0BC8: FLdRfVar var_B0
  loc_AA0BCB: LitStr "exe.bat"
  loc_AA0BCE: ILdRf var_AC
  loc_AA0BD1: FLdRfVar var_8C
  loc_AA0BD4: NewIfNullPr IFileSystem3
  loc_AA0BD7: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_AA0BDC: FLdZeroAd var_B0
  loc_AA0BDF: FStStr var_A0
  loc_AA0BE2: FFree1Str var_AC
  loc_AA0BE5: FFree1Ad var_A8
  loc_AA0BE8: FLdRfVar var_A8
  loc_AA0BEB: LitI2_Byte 0
  loc_AA0BED: LitI2_Byte &HFF
  loc_AA0BEF: ILdRf var_A0
  loc_AA0BF2: FLdRfVar var_8C
  loc_AA0BF5: NewIfNullPr IFileSystem3
  loc_AA0BF8: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AA0BFD: FLdZeroAd var_A8
  loc_AA0C00: FStVarAdFunc
  loc_AA0C04: FLdRfVar var_88
  loc_AA0C07: CDargRef
  loc_AA0C0B: FLdRfVar var_9C
  loc_AA0C0E: LdPrVar
  loc_AA0C10: LateMemCall
  loc_AA0C16: LitVarStr var_C0, "del exe.bat"
  loc_AA0C1B: PopAdLdVar
  loc_AA0C1C: FLdRfVar var_9C
  loc_AA0C1F: LdPrVar
  loc_AA0C21: LateMemCall
  loc_AA0C27: FLdRfVar var_9C
  loc_AA0C2A: LdPrVar
  loc_AA0C2C: LateMemCall
  loc_AA0C32: LitI4 0
  loc_AA0C37: FLdRfVar var_A0
  loc_AA0C3A: CVarRef
  loc_AA0C3F: ImpAdCallFPR4 push Shell(, )
  loc_AA0C44: CI4R8
  loc_AA0C45: FStR4 var_A4
  loc_AA0C48: ExitProc
End Function

Private Function Proc_272_28_AB2798(arg_C) 'AB2798
  'Data Table: 43C408
  loc_AB26DC: LitI4 2
  loc_AB26E1: FLdFPR8 arg_C
  loc_AB26E4: FLdFPR8 arg_C
  loc_AB26E7: FnIntR8
  loc_AB26E9: SubR4
  loc_AB26EA: LitI2_Byte &H64
  loc_AB26EC: CR8I2
  loc_AB26ED: MulR8
  loc_AB26EE: CVarR8
  loc_AB26F2: FLdRfVar var_158
  loc_AB26F5: ImpAdCallFPR4  = Round(, )
  loc_AB26FA: LitVarStr var_C8, vbNullString
  loc_AB26FF: FStVarCopyObj var_D8
  loc_AB2702: FLdRfVar var_D8
  loc_AB2705: LitVarStr var_A8, "menos "
  loc_AB270A: FStVarCopyObj var_B8
  loc_AB270D: FLdRfVar var_B8
  loc_AB2710: FLdFPR8 arg_C
  loc_AB2713: FnSgnR4
  loc_AB2715: LitI2_Byte 0
  loc_AB2717: LtI2
  loc_AB2718: CVarBoolI2 var_98
  loc_AB271C: FLdRfVar var_E8
  loc_AB271F: ImpAdCallFPR4  = IIf(, , )
  loc_AB2724: FLdRfVar var_E8
  loc_AB2727: FLdFPR8 arg_C
  loc_AB272A: FnAbsR4
  loc_AB272B: FnIntR8
  loc_AB272D: PopFPR8
  loc_AB272E: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_AB2733: CVarStr var_F8
  loc_AB2736: ConcatVar var_108
  loc_AB273A: LitVarStr var_118, " con "
  loc_AB273F: ConcatVar var_128
  loc_AB2743: LitI4 1
  loc_AB2748: LitI4 1
  loc_AB274D: LitVarStr var_168, "00"
  loc_AB2752: FStVarCopyObj var_178
  loc_AB2755: FLdRfVar var_178
  loc_AB2758: FLdRfVar var_158
  loc_AB275B: FLdRfVar var_188
  loc_AB275E: ImpAdCallFPR4  = Format(, )
  loc_AB2763: FLdRfVar var_188
  loc_AB2766: ConcatVar var_198
  loc_AB276A: LitVarStr var_1A8, "/100 centavos"
  loc_AB276F: ConcatVar var_1B8
  loc_AB2773: CStrVarTmp
  loc_AB2774: FStStr var_88
  loc_AB2777: FFreeVar var_98 = "": var_B8 = "": var_D8 = "": var_E8 = "": var_F8 = "": var_108 = "": var_148 = "": var_158 = "": var_178 = "": var_128 = "": var_188 = "": var_198 = ""
  loc_AB2794: ExitProc
End Function

Private Function Proc_272_29_BD3D04(arg_C) 'BD3D04
  'Data Table: 43C408
  loc_BD35CC: LitI4 0
  loc_BD35D1: FLdRfVar arg_C
  loc_BD35D4: CVarRef
  loc_BD35D9: FLdRfVar var_A8
  loc_BD35DC: ImpAdCallFPR4  = Round(, )
  loc_BD35E1: FLdRfVar var_A8
  loc_BD35E4: FStVar var_B8
  loc_BD35E8: FLdRfVar var_B8
  loc_BD35EB: LitVarI2 var_98, 0
  loc_BD35F0: HardType
  loc_BD35F1: EqVarBool
  loc_BD35F3: BranchF loc_BD35FF
  loc_BD35F6: LitStr "CERO"
  loc_BD35F9: FStStrCopy var_88
  loc_BD35FC: Branch loc_BD3C91
  loc_BD35FF: FLdRfVar var_B8
  loc_BD3602: LitVarI2 var_98, 1
  loc_BD3607: HardType
  loc_BD3608: EqVarBool
  loc_BD360A: BranchF loc_BD3616
  loc_BD360D: LitStr "UN"
  loc_BD3610: FStStrCopy var_88
  loc_BD3613: Branch loc_BD3C91
  loc_BD3616: FLdRfVar var_B8
  loc_BD3619: LitVarI2 var_98, 2
  loc_BD361E: HardType
  loc_BD361F: EqVarBool
  loc_BD3621: BranchF loc_BD362D
  loc_BD3624: LitStr "DOS"
  loc_BD3627: FStStrCopy var_88
  loc_BD362A: Branch loc_BD3C91
  loc_BD362D: FLdRfVar var_B8
  loc_BD3630: LitVarI2 var_98, 3
  loc_BD3635: HardType
  loc_BD3636: EqVarBool
  loc_BD3638: BranchF loc_BD3644
  loc_BD363B: LitStr "TRES"
  loc_BD363E: FStStrCopy var_88
  loc_BD3641: Branch loc_BD3C91
  loc_BD3644: FLdRfVar var_B8
  loc_BD3647: LitVarI2 var_98, 4
  loc_BD364C: HardType
  loc_BD364D: EqVarBool
  loc_BD364F: BranchF loc_BD365B
  loc_BD3652: LitStr "CUATRO"
  loc_BD3655: FStStrCopy var_88
  loc_BD3658: Branch loc_BD3C91
  loc_BD365B: FLdRfVar var_B8
  loc_BD365E: LitVarI2 var_98, 5
  loc_BD3663: HardType
  loc_BD3664: EqVarBool
  loc_BD3666: BranchF loc_BD3672
  loc_BD3669: LitStr "CINCO"
  loc_BD366C: FStStrCopy var_88
  loc_BD366F: Branch loc_BD3C91
  loc_BD3672: FLdRfVar var_B8
  loc_BD3675: LitVarI2 var_98, 6
  loc_BD367A: HardType
  loc_BD367B: EqVarBool
  loc_BD367D: BranchF loc_BD3689
  loc_BD3680: LitStr "SEIS"
  loc_BD3683: FStStrCopy var_88
  loc_BD3686: Branch loc_BD3C91
  loc_BD3689: FLdRfVar var_B8
  loc_BD368C: LitVarI2 var_98, 7
  loc_BD3691: HardType
  loc_BD3692: EqVarBool
  loc_BD3694: BranchF loc_BD36A0
  loc_BD3697: LitStr "SIETE"
  loc_BD369A: FStStrCopy var_88
  loc_BD369D: Branch loc_BD3C91
  loc_BD36A0: FLdRfVar var_B8
  loc_BD36A3: LitVarI2 var_98, 8
  loc_BD36A8: HardType
  loc_BD36A9: EqVarBool
  loc_BD36AB: BranchF loc_BD36B7
  loc_BD36AE: LitStr "OCHO"
  loc_BD36B1: FStStrCopy var_88
  loc_BD36B4: Branch loc_BD3C91
  loc_BD36B7: FLdRfVar var_B8
  loc_BD36BA: LitVarI2 var_98, 9
  loc_BD36BF: HardType
  loc_BD36C0: EqVarBool
  loc_BD36C2: BranchF loc_BD36CE
  loc_BD36C5: LitStr "NUEVE"
  loc_BD36C8: FStStrCopy var_88
  loc_BD36CB: Branch loc_BD3C91
  loc_BD36CE: FLdRfVar var_B8
  loc_BD36D1: LitVarI2 var_98, 10
  loc_BD36D6: HardType
  loc_BD36D7: EqVarBool
  loc_BD36D9: BranchF loc_BD36E5
  loc_BD36DC: LitStr "DIEZ"
  loc_BD36DF: FStStrCopy var_88
  loc_BD36E2: Branch loc_BD3C91
  loc_BD36E5: FLdRfVar var_B8
  loc_BD36E8: LitVarI2 var_98, 11
  loc_BD36ED: HardType
  loc_BD36EE: EqVarBool
  loc_BD36F0: BranchF loc_BD36FC
  loc_BD36F3: LitStr "ONCE"
  loc_BD36F6: FStStrCopy var_88
  loc_BD36F9: Branch loc_BD3C91
  loc_BD36FC: FLdRfVar var_B8
  loc_BD36FF: LitVarI2 var_98, 12
  loc_BD3704: HardType
  loc_BD3705: EqVarBool
  loc_BD3707: BranchF loc_BD3713
  loc_BD370A: LitStr "DOCE"
  loc_BD370D: FStStrCopy var_88
  loc_BD3710: Branch loc_BD3C91
  loc_BD3713: FLdRfVar var_B8
  loc_BD3716: LitVarI2 var_98, 13
  loc_BD371B: HardType
  loc_BD371C: EqVarBool
  loc_BD371E: BranchF loc_BD372A
  loc_BD3721: LitStr "TRECE"
  loc_BD3724: FStStrCopy var_88
  loc_BD3727: Branch loc_BD3C91
  loc_BD372A: FLdRfVar var_B8
  loc_BD372D: LitVarI2 var_98, 14
  loc_BD3732: HardType
  loc_BD3733: EqVarBool
  loc_BD3735: BranchF loc_BD3741
  loc_BD3738: LitStr "CATORCE"
  loc_BD373B: FStStrCopy var_88
  loc_BD373E: Branch loc_BD3C91
  loc_BD3741: FLdRfVar var_B8
  loc_BD3744: LitVarI2 var_98, 15
  loc_BD3749: HardType
  loc_BD374A: EqVarBool
  loc_BD374C: BranchF loc_BD3758
  loc_BD374F: LitStr "QUINCE"
  loc_BD3752: FStStrCopy var_88
  loc_BD3755: Branch loc_BD3C91
  loc_BD3758: FLdRfVar var_B8
  loc_BD375B: LitVarI2 var_98, 16
  loc_BD3760: HardType
  loc_BD3761: EqVarBool
  loc_BD3763: BranchF loc_BD376F
  loc_BD3766: LitStr "DIECISÉIS"
  loc_BD3769: FStStrCopy var_88
  loc_BD376C: Branch loc_BD3C91
  loc_BD376F: FLdRfVar var_B8
  loc_BD3772: LitVarI2 var_98, 20
  loc_BD3777: HardType
  loc_BD3778: LtVarBool
  loc_BD377A: BranchF loc_BD379A
  loc_BD377D: LitStr "DIECI"
  loc_BD3780: FLdFPR8 arg_C
  loc_BD3783: LitI2_Byte &HA
  loc_BD3785: CR8I2
  loc_BD3786: SubR4
  loc_BD3787: PopFPR8
  loc_BD3788: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD378D: FStStrNoPop var_BC
  loc_BD3790: ConcatStr
  loc_BD3791: FStStr var_88
  loc_BD3794: FFree1Str var_BC
  loc_BD3797: Branch loc_BD3C91
  loc_BD379A: FLdRfVar var_B8
  loc_BD379D: LitVarI2 var_98, 20
  loc_BD37A2: HardType
  loc_BD37A3: EqVarBool
  loc_BD37A5: BranchF loc_BD37B1
  loc_BD37A8: LitStr "VEINTE"
  loc_BD37AB: FStStrCopy var_88
  loc_BD37AE: Branch loc_BD3C91
  loc_BD37B1: FLdRfVar var_B8
  loc_BD37B4: LitVarI2 var_98, 26
  loc_BD37B9: HardType
  loc_BD37BA: EqVarBool
  loc_BD37BC: BranchF loc_BD37C8
  loc_BD37BF: LitStr "VEINTISÉIS"
  loc_BD37C2: FStStrCopy var_88
  loc_BD37C5: Branch loc_BD3C91
  loc_BD37C8: FLdRfVar var_B8
  loc_BD37CB: LitVarI2 var_98, 30
  loc_BD37D0: HardType
  loc_BD37D1: LtVarBool
  loc_BD37D3: BranchF loc_BD37F3
  loc_BD37D6: LitStr "VEINTI"
  loc_BD37D9: FLdFPR8 arg_C
  loc_BD37DC: LitI2_Byte &H14
  loc_BD37DE: CR8I2
  loc_BD37DF: SubR4
  loc_BD37E0: PopFPR8
  loc_BD37E1: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD37E6: FStStrNoPop var_BC
  loc_BD37E9: ConcatStr
  loc_BD37EA: FStStr var_88
  loc_BD37ED: FFree1Str var_BC
  loc_BD37F0: Branch loc_BD3C91
  loc_BD37F3: FLdRfVar var_B8
  loc_BD37F6: LitVarI2 var_98, 30
  loc_BD37FB: HardType
  loc_BD37FC: EqVarBool
  loc_BD37FE: BranchF loc_BD380A
  loc_BD3801: LitStr "TREINTA"
  loc_BD3804: FStStrCopy var_88
  loc_BD3807: Branch loc_BD3C91
  loc_BD380A: FLdRfVar var_B8
  loc_BD380D: LitVarI2 var_98, 40
  loc_BD3812: HardType
  loc_BD3813: EqVarBool
  loc_BD3815: BranchF loc_BD3821
  loc_BD3818: LitStr "CUARENTA"
  loc_BD381B: FStStrCopy var_88
  loc_BD381E: Branch loc_BD3C91
  loc_BD3821: FLdRfVar var_B8
  loc_BD3824: LitVarI2 var_98, 50
  loc_BD3829: HardType
  loc_BD382A: EqVarBool
  loc_BD382C: BranchF loc_BD3838
  loc_BD382F: LitStr "CINCUENTA"
  loc_BD3832: FStStrCopy var_88
  loc_BD3835: Branch loc_BD3C91
  loc_BD3838: FLdRfVar var_B8
  loc_BD383B: LitVarI2 var_98, 60
  loc_BD3840: HardType
  loc_BD3841: EqVarBool
  loc_BD3843: BranchF loc_BD384F
  loc_BD3846: LitStr "SESENTA"
  loc_BD3849: FStStrCopy var_88
  loc_BD384C: Branch loc_BD3C91
  loc_BD384F: FLdRfVar var_B8
  loc_BD3852: LitVarI2 var_98, 70
  loc_BD3857: HardType
  loc_BD3858: EqVarBool
  loc_BD385A: BranchF loc_BD3866
  loc_BD385D: LitStr "SETENTA"
  loc_BD3860: FStStrCopy var_88
  loc_BD3863: Branch loc_BD3C91
  loc_BD3866: FLdRfVar var_B8
  loc_BD3869: LitVarI2 var_98, 80
  loc_BD386E: HardType
  loc_BD386F: EqVarBool
  loc_BD3871: BranchF loc_BD387D
  loc_BD3874: LitStr "OCHENTA"
  loc_BD3877: FStStrCopy var_88
  loc_BD387A: Branch loc_BD3C91
  loc_BD387D: FLdRfVar var_B8
  loc_BD3880: LitVarI2 var_98, 90
  loc_BD3885: HardType
  loc_BD3886: EqVarBool
  loc_BD3888: BranchF loc_BD3894
  loc_BD388B: LitStr "NOVENTA"
  loc_BD388E: FStStrCopy var_88
  loc_BD3891: Branch loc_BD3C91
  loc_BD3894: FLdRfVar var_B8
  loc_BD3897: LitVarI2 var_98, 100
  loc_BD389C: HardType
  loc_BD389D: LtVarBool
  loc_BD389F: BranchF loc_BD38E7
  loc_BD38A2: FLdFPR8 arg_C
  loc_BD38A5: CI4R8
  loc_BD38A6: LitI4 &HA
  loc_BD38AB: IDvI4
  loc_BD38AC: LitI4 &HA
  loc_BD38B1: MulI4
  loc_BD38B2: CR8I4
  loc_BD38B3: PopFPR8
  loc_BD38B4: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD38B9: FStStrNoPop var_BC
  loc_BD38BC: LitStr " Y "
  loc_BD38BF: ConcatStr
  loc_BD38C0: FStStrNoPop var_C0
  loc_BD38C3: FLdFPR8 arg_C
  loc_BD38C6: CI4R8
  loc_BD38C7: LitI4 &HA
  loc_BD38CC: ModI4
  loc_BD38CD: CR8I4
  loc_BD38CE: PopFPR8
  loc_BD38CF: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD38D4: FStStrNoPop var_C4
  loc_BD38D7: ConcatStr
  loc_BD38D8: FStStr var_88
  loc_BD38DB: FFreeStr var_BC = "": var_C0 = ""
  loc_BD38E4: Branch loc_BD3C91
  loc_BD38E7: FLdRfVar var_B8
  loc_BD38EA: LitVarI2 var_98, 100
  loc_BD38EF: HardType
  loc_BD38F0: EqVarBool
  loc_BD38F2: BranchF loc_BD38FE
  loc_BD38F5: LitStr "CIEN"
  loc_BD38F8: FStStrCopy var_88
  loc_BD38FB: Branch loc_BD3C91
  loc_BD38FE: FLdRfVar var_B8
  loc_BD3901: LitVarI2 var_98, 200
  loc_BD3906: HardType
  loc_BD3907: LtVarBool
  loc_BD3909: BranchF loc_BD3929
  loc_BD390C: LitStr "CIENTO "
  loc_BD390F: FLdFPR8 arg_C
  loc_BD3912: LitI2_Byte &H64
  loc_BD3914: CR8I2
  loc_BD3915: SubR4
  loc_BD3916: PopFPR8
  loc_BD3917: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD391C: FStStrNoPop var_BC
  loc_BD391F: ConcatStr
  loc_BD3920: FStStr var_88
  loc_BD3923: FFree1Str var_BC
  loc_BD3926: Branch loc_BD3C91
  loc_BD3929: FLdRfVar var_B8
  loc_BD392C: LitVarI2 var_98, 200
  loc_BD3931: HardType
  loc_BD3932: EqVarBool
  loc_BD3934: BranchT loc_BD396F
  loc_BD3937: FLdRfVar var_B8
  loc_BD393A: LitVarI2 var_D4, 300
  loc_BD393F: HardType
  loc_BD3940: EqVarBool
  loc_BD3942: BranchT loc_BD396F
  loc_BD3945: FLdRfVar var_B8
  loc_BD3948: LitVarI2 var_E4, 400
  loc_BD394D: HardType
  loc_BD394E: EqVarBool
  loc_BD3950: BranchT loc_BD396F
  loc_BD3953: FLdRfVar var_B8
  loc_BD3956: LitVarI2 var_F4, 600
  loc_BD395B: HardType
  loc_BD395C: EqVarBool
  loc_BD395E: BranchT loc_BD396F
  loc_BD3961: FLdRfVar var_B8
  loc_BD3964: LitVarI2 var_104, 800
  loc_BD3969: HardType
  loc_BD396A: EqVarBool
  loc_BD396C: BranchF loc_BD3990
  loc_BD396F: FLdFPR8 arg_C
  loc_BD3972: CI4R8
  loc_BD3973: LitI4 &H64
  loc_BD3978: IDvI4
  loc_BD3979: CR8I4
  loc_BD397A: PopFPR8
  loc_BD397B: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD3980: FStStrNoPop var_BC
  loc_BD3983: LitStr "CIENTOS"
  loc_BD3986: ConcatStr
  loc_BD3987: FStStr var_88
  loc_BD398A: FFree1Str var_BC
  loc_BD398D: Branch loc_BD3C91
  loc_BD3990: FLdRfVar var_B8
  loc_BD3993: LitVarI2 var_98, 500
  loc_BD3998: HardType
  loc_BD3999: EqVarBool
  loc_BD399B: BranchF loc_BD39A7
  loc_BD399E: LitStr "QUINIENTOS"
  loc_BD39A1: FStStrCopy var_88
  loc_BD39A4: Branch loc_BD3C91
  loc_BD39A7: FLdRfVar var_B8
  loc_BD39AA: LitVarI2 var_98, 700
  loc_BD39AF: HardType
  loc_BD39B0: EqVarBool
  loc_BD39B2: BranchF loc_BD39BE
  loc_BD39B5: LitStr "SETECIENTOS"
  loc_BD39B8: FStStrCopy var_88
  loc_BD39BB: Branch loc_BD3C91
  loc_BD39BE: FLdRfVar var_B8
  loc_BD39C1: LitVarI2 var_98, 900
  loc_BD39C6: HardType
  loc_BD39C7: EqVarBool
  loc_BD39C9: BranchF loc_BD39D5
  loc_BD39CC: LitStr "NOVECIENTOS"
  loc_BD39CF: FStStrCopy var_88
  loc_BD39D2: Branch loc_BD3C91
  loc_BD39D5: FLdRfVar var_B8
  loc_BD39D8: LitVarI2 var_98, 1000
  loc_BD39DD: HardType
  loc_BD39DE: LtVarBool
  loc_BD39E0: BranchF loc_BD3A28
  loc_BD39E3: FLdFPR8 arg_C
  loc_BD39E6: CI4R8
  loc_BD39E7: LitI4 &H64
  loc_BD39EC: IDvI4
  loc_BD39ED: LitI4 &H64
  loc_BD39F2: MulI4
  loc_BD39F3: CR8I4
  loc_BD39F4: PopFPR8
  loc_BD39F5: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD39FA: FStStrNoPop var_BC
  loc_BD39FD: LitStr " "
  loc_BD3A00: ConcatStr
  loc_BD3A01: FStStrNoPop var_C0
  loc_BD3A04: FLdFPR8 arg_C
  loc_BD3A07: CI4R8
  loc_BD3A08: LitI4 &H64
  loc_BD3A0D: ModI4
  loc_BD3A0E: CR8I4
  loc_BD3A0F: PopFPR8
  loc_BD3A10: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD3A15: FStStrNoPop var_C4
  loc_BD3A18: ConcatStr
  loc_BD3A19: FStStr var_88
  loc_BD3A1C: FFreeStr var_BC = "": var_C0 = ""
  loc_BD3A25: Branch loc_BD3C91
  loc_BD3A28: FLdRfVar var_B8
  loc_BD3A2B: LitVarI2 var_98, 1000
  loc_BD3A30: HardType
  loc_BD3A31: EqVarBool
  loc_BD3A33: BranchF loc_BD3A3F
  loc_BD3A36: LitStr "MIL"
  loc_BD3A39: FStStrCopy var_88
  loc_BD3A3C: Branch loc_BD3C91
  loc_BD3A3F: FLdRfVar var_B8
  loc_BD3A42: LitVarI2 var_98, 2000
  loc_BD3A47: HardType
  loc_BD3A48: LtVarBool
  loc_BD3A4A: BranchF loc_BD3A6E
  loc_BD3A4D: LitStr "MIL "
  loc_BD3A50: FLdFPR8 arg_C
  loc_BD3A53: CI4R8
  loc_BD3A54: LitI4 &H3E8
  loc_BD3A59: ModI4
  loc_BD3A5A: CR8I4
  loc_BD3A5B: PopFPR8
  loc_BD3A5C: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD3A61: FStStrNoPop var_BC
  loc_BD3A64: ConcatStr
  loc_BD3A65: FStStr var_88
  loc_BD3A68: FFree1Str var_BC
  loc_BD3A6B: Branch loc_BD3C91
  loc_BD3A6E: FLdRfVar var_B8
  loc_BD3A71: LitVarI4
  loc_BD3A79: HardType
  loc_BD3A7A: LtVarBool
  loc_BD3A7C: BranchF loc_BD3AD8
  loc_BD3A7F: FLdFPR8 arg_C
  loc_BD3A82: CI4R8
  loc_BD3A83: LitI4 &H3E8
  loc_BD3A88: IDvI4
  loc_BD3A89: CR8I4
  loc_BD3A8A: PopFPR8
  loc_BD3A8B: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD3A90: FStStrNoPop var_BC
  loc_BD3A93: LitStr " MIL"
  loc_BD3A96: ConcatStr
  loc_BD3A97: FStStr var_88
  loc_BD3A9A: FFree1Str var_BC
  loc_BD3A9D: FLdFPR8 arg_C
  loc_BD3AA0: CI4R8
  loc_BD3AA1: LitI4 &H3E8
  loc_BD3AA6: ModI4
  loc_BD3AA7: CBoolI4
  loc_BD3AA9: BranchF loc_BD3AD5
  loc_BD3AAC: ILdRf var_88
  loc_BD3AAF: LitStr " "
  loc_BD3AB2: ConcatStr
  loc_BD3AB3: FStStrNoPop var_BC
  loc_BD3AB6: FLdFPR8 arg_C
  loc_BD3AB9: CI4R8
  loc_BD3ABA: LitI4 &H3E8
  loc_BD3ABF: ModI4
  loc_BD3AC0: CR8I4
  loc_BD3AC1: PopFPR8
  loc_BD3AC2: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD3AC7: FStStrNoPop var_C0
  loc_BD3ACA: ConcatStr
  loc_BD3ACB: FStStr var_88
  loc_BD3ACE: FFreeStr var_BC = ""
  loc_BD3AD5: Branch loc_BD3C91
  loc_BD3AD8: FLdRfVar var_B8
  loc_BD3ADB: LitVarI4
  loc_BD3AE3: HardType
  loc_BD3AE4: EqVarBool
  loc_BD3AE6: BranchF loc_BD3AF2
  loc_BD3AE9: LitStr "UN MILLÓN"
  loc_BD3AEC: FStStrCopy var_88
  loc_BD3AEF: Branch loc_BD3C91
  loc_BD3AF2: FLdRfVar var_B8
  loc_BD3AF5: LitVarI4
  loc_BD3AFD: HardType
  loc_BD3AFE: LtVarBool
  loc_BD3B00: BranchF loc_BD3B24
  loc_BD3B03: LitStr "UN MILLÓN "
  loc_BD3B06: FLdFPR8 arg_C
  loc_BD3B09: CI4R8
  loc_BD3B0A: LitI4 &HF4240
  loc_BD3B0F: ModI4
  loc_BD3B10: CR8I4
  loc_BD3B11: PopFPR8
  loc_BD3B12: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD3B17: FStStrNoPop var_BC
  loc_BD3B1A: ConcatStr
  loc_BD3B1B: FStStr var_88
  loc_BD3B1E: FFree1Str var_BC
  loc_BD3B21: Branch loc_BD3C91
  loc_BD3B24: FLdRfVar var_B8
  loc_BD3B27: LitVarR8
  loc_BD3B33: HardType
  loc_BD3B34: LtVarBool
  loc_BD3B36: BranchF loc_BD3BAC
  loc_BD3B39: FLdFPR8 arg_C
  loc_BD3B3C: LitI4 &HF4240
  loc_BD3B41: CR8I4
  loc_BD3B42: DivR8
  loc_BD3B43: FnIntR8
  loc_BD3B45: PopFPR8
  loc_BD3B46: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD3B4B: FStStrNoPop var_BC
  loc_BD3B4E: LitStr " MILLONES"
  loc_BD3B51: ConcatStr
  loc_BD3B52: FStStr var_88
  loc_BD3B55: FFree1Str var_BC
  loc_BD3B58: FLdFPR8 arg_C
  loc_BD3B5B: FLdFPR8 arg_C
  loc_BD3B5E: LitI4 &HF4240
  loc_BD3B63: CR8I4
  loc_BD3B64: DivR8
  loc_BD3B65: FnIntR8
  loc_BD3B67: LitI4 &HF4240
  loc_BD3B6C: CR8I4
  loc_BD3B6D: MulR8
  loc_BD3B6E: SubR4
  loc_BD3B6F: CBoolR4
  loc_BD3B71: BranchF loc_BD3BA9
  loc_BD3B74: ILdRf var_88
  loc_BD3B77: LitStr " "
  loc_BD3B7A: ConcatStr
  loc_BD3B7B: FStStrNoPop var_BC
  loc_BD3B7E: FLdFPR8 arg_C
  loc_BD3B81: FLdFPR8 arg_C
  loc_BD3B84: LitI4 &HF4240
  loc_BD3B89: CR8I4
  loc_BD3B8A: DivR8
  loc_BD3B8B: FnIntR8
  loc_BD3B8D: LitI4 &HF4240
  loc_BD3B92: CR8I4
  loc_BD3B93: MulR8
  loc_BD3B94: SubR4
  loc_BD3B95: PopFPR8
  loc_BD3B96: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD3B9B: FStStrNoPop var_C0
  loc_BD3B9E: ConcatStr
  loc_BD3B9F: FStStr var_88
  loc_BD3BA2: FFreeStr var_BC = ""
  loc_BD3BA9: Branch loc_BD3C91
  loc_BD3BAC: FLdRfVar var_B8
  loc_BD3BAF: LitVarR8
  loc_BD3BBB: HardType
  loc_BD3BBC: EqVarBool
  loc_BD3BBE: BranchF loc_BD3BCA
  loc_BD3BC1: LitStr "UN BILLÓN"
  loc_BD3BC4: FStStrCopy var_88
  loc_BD3BC7: Branch loc_BD3C91
  loc_BD3BCA: FLdRfVar var_B8
  loc_BD3BCD: LitVarR8
  loc_BD3BD9: HardType
  loc_BD3BDA: LtVarBool
  loc_BD3BDC: BranchF loc_BD3C12
  loc_BD3BDF: LitStr "UN BILLÓN "
  loc_BD3BE2: FLdFPR8 arg_C
  loc_BD3BE5: FLdFPR8 arg_C
  loc_BD3BE8: LitDate &HE8D4A51000
  loc_BD3BF1: DivR8
  loc_BD3BF2: FnIntR8
  loc_BD3BF4: LitDate &HE8D4A51000
  loc_BD3BFD: MulR8
  loc_BD3BFE: SubR4
  loc_BD3BFF: PopFPR8
  loc_BD3C00: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD3C05: FStStrNoPop var_BC
  loc_BD3C08: ConcatStr
  loc_BD3C09: FStStr var_88
  loc_BD3C0C: FFree1Str var_BC
  loc_BD3C0F: Branch loc_BD3C91
  loc_BD3C12: FLdFPR8 arg_C
  loc_BD3C15: LitDate &HE8D4A51000
  loc_BD3C1E: DivR8
  loc_BD3C1F: FnIntR8
  loc_BD3C21: PopFPR8
  loc_BD3C22: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD3C27: FStStrNoPop var_BC
  loc_BD3C2A: LitStr " BILLONES"
  loc_BD3C2D: ConcatStr
  loc_BD3C2E: FStStr var_88
  loc_BD3C31: FFree1Str var_BC
  loc_BD3C34: FLdFPR8 arg_C
  loc_BD3C37: FLdFPR8 arg_C
  loc_BD3C3A: LitDate &HE8D4A51000
  loc_BD3C43: DivR8
  loc_BD3C44: FnIntR8
  loc_BD3C46: LitDate &HE8D4A51000
  loc_BD3C4F: MulR8
  loc_BD3C50: SubR4
  loc_BD3C51: CBoolR4
  loc_BD3C53: BranchF loc_BD3C91
  loc_BD3C56: ILdRf var_88
  loc_BD3C59: LitStr " "
  loc_BD3C5C: ConcatStr
  loc_BD3C5D: FStStrNoPop var_BC
  loc_BD3C60: FLdFPR8 arg_C
  loc_BD3C63: FLdFPR8 arg_C
  loc_BD3C66: LitDate &HE8D4A51000
  loc_BD3C6F: DivR8
  loc_BD3C70: FnIntR8
  loc_BD3C72: LitDate &HE8D4A51000
  loc_BD3C7B: MulR8
  loc_BD3C7C: SubR4
  loc_BD3C7D: PopFPR8
  loc_BD3C7E: ImpAdCallI2 Proc_272_29_BD3D04(, )
  loc_BD3C83: FStStrNoPop var_C0
  loc_BD3C86: ConcatStr
  loc_BD3C87: FStStr var_88
  loc_BD3C8A: FFreeStr var_BC = ""
  loc_BD3C91: LitVarI2 var_A8, 1
  loc_BD3C96: LitI4 1
  loc_BD3C9B: FLdRfVar var_88
  loc_BD3C9E: CVarRef
  loc_BD3CA3: FLdRfVar var_114
  loc_BD3CA6: ImpAdCallFPR4  = Mid(, , )
  loc_BD3CAB: FLdRfVar var_114
  loc_BD3CAE: FLdRfVar var_124
  loc_BD3CB1: ImpAdCallFPR4  = Ucase()
  loc_BD3CB6: FLdRfVar var_124
  loc_BD3CB9: ILdRf var_88
  loc_BD3CBC: FnLenStr
  loc_BD3CBD: LitI4 1
  loc_BD3CC2: SubI4
  loc_BD3CC3: CVarI4
  loc_BD3CC7: LitI4 2
  loc_BD3CCC: FLdRfVar var_88
  loc_BD3CCF: CVarRef
  loc_BD3CD4: FLdRfVar var_144
  loc_BD3CD7: ImpAdCallFPR4  = Mid(, , )
  loc_BD3CDC: FLdRfVar var_144
  loc_BD3CDF: FLdRfVar var_154
  loc_BD3CE2: ImpAdCallFPR4  = LCase()
  loc_BD3CE7: FLdRfVar var_154
  loc_BD3CEA: ConcatVar var_164
  loc_BD3CEE: CStrVarTmp
  loc_BD3CEF: FStStr var_88
  loc_BD3CF2: FFreeVar var_A8 = "": var_114 = "": var_134 = "": var_144 = "": var_124 = "": var_154 = ""
  loc_BD3D03: ExitProc
End Function

Private Function Proc_272_30_A10B04(arg_C) 'A10B04
  'Data Table: 43C408
  loc_A10AD0: ILdRf arg_C
  loc_A10AD3: FStStrCopy var_88
  loc_A10AD6: LitVar_Missing var_F8
  loc_A10AD9: LitVar_Missing var_D8
  loc_A10ADC: LitVarStr var_A8, "InfoGov"
  loc_A10AE1: FStVarCopyObj var_B8
  loc_A10AE4: FLdRfVar var_B8
  loc_A10AE7: LitI4 &H40
  loc_A10AEC: FLdRfVar var_88
  loc_A10AEF: CVarRef
  loc_A10AF4: ImpAdCallFPR4 MsgBox(, , , , )
  loc_A10AF9: FFreeVar var_B8 = "": var_D8 = ""
  loc_A10B02: ExitProc
End Function

Private Function Proc_272_31_AB42E0(arg_C, arg_10, arg_14) 'AB42E0
  'Data Table: 43C408
  loc_AB41FC: ILdRf arg_C
  loc_AB41FF: FStStrCopy var_8C
  loc_AB4202: ILdI2 arg_10
  loc_AB4205: BranchF loc_AB4274
  loc_AB4208: ILdI2 arg_14
  loc_AB420B: BranchF loc_AB4241
  loc_AB420E: LitVar_Missing var_FC
  loc_AB4211: LitVar_Missing var_DC
  loc_AB4214: LitVarStr var_AC, "InfoGov - Recaudación y Control"
  loc_AB4219: FStVarCopyObj var_BC
  loc_AB421C: FLdRfVar var_BC
  loc_AB421F: LitI4 &H14
  loc_AB4224: FLdRfVar var_8C
  loc_AB4227: CVarRef
  loc_AB422C: ImpAdCallI2 MsgBox(, , , , )
  loc_AB4231: CI2I4
  loc_AB4232: FStI2 var_86
  loc_AB4235: FFreeVar var_BC = "": var_DC = ""
  loc_AB423E: Branch loc_AB4271
  loc_AB4241: LitVar_Missing var_FC
  loc_AB4244: LitVar_Missing var_DC
  loc_AB4247: LitVarStr var_AC, "InfoGov - Recaudación y Control"
  loc_AB424C: FStVarCopyObj var_BC
  loc_AB424F: FLdRfVar var_BC
  loc_AB4252: LitI4 &H114
  loc_AB4257: FLdRfVar var_8C
  loc_AB425A: CVarRef
  loc_AB425F: ImpAdCallI2 MsgBox(, , , , )
  loc_AB4264: CI2I4
  loc_AB4265: FStI2 var_86
  loc_AB4268: FFreeVar var_BC = "": var_DC = ""
  loc_AB4271: Branch loc_AB42DD
  loc_AB4274: ILdI2 arg_14
  loc_AB4277: BranchF loc_AB42AD
  loc_AB427A: LitVar_Missing var_FC
  loc_AB427D: LitVar_Missing var_DC
  loc_AB4280: LitVarStr var_AC, "InfoGov - Recaudación y Control"
  loc_AB4285: FStVarCopyObj var_BC
  loc_AB4288: FLdRfVar var_BC
  loc_AB428B: LitI4 &H34
  loc_AB4290: FLdRfVar var_8C
  loc_AB4293: CVarRef
  loc_AB4298: ImpAdCallI2 MsgBox(, , , , )
  loc_AB429D: CI2I4
  loc_AB429E: FStI2 var_86
  loc_AB42A1: FFreeVar var_BC = "": var_DC = ""
  loc_AB42AA: Branch loc_AB42DD
  loc_AB42AD: LitVar_Missing var_FC
  loc_AB42B0: LitVar_Missing var_DC
  loc_AB42B3: LitVarStr var_AC, "InfoGov - Recaudación y Control"
  loc_AB42B8: FStVarCopyObj var_BC
  loc_AB42BB: FLdRfVar var_BC
  loc_AB42BE: LitI4 &H134
  loc_AB42C3: FLdRfVar var_8C
  loc_AB42C6: CVarRef
  loc_AB42CB: ImpAdCallI2 MsgBox(, , , , )
  loc_AB42D0: CI2I4
  loc_AB42D1: FStI2 var_86
  loc_AB42D4: FFreeVar var_BC = "": var_DC = ""
  loc_AB42DD: ExitProcI2
End Function

Private Function Proc_272_32_A93014(arg_C) 'A93014
  'Data Table: 43C408
  loc_A92F78: ILdRf arg_C
  loc_A92F7B: FStAd var_88 
  loc_A92F7F: FLdRfVar var_90
  loc_A92F82: ImpAdLdRf MemVar_D9C5D8
  loc_A92F85: NewIfNullPr Global
  loc_A92F88:  = Global.Forms
  loc_A92F8D: FLdZeroAd var_90
  loc_A92F90: FStAdFuncNoPop
  loc_A92F93: FLdRfVar var_8C
  loc_A92F96: ForEachCollObj
  loc_A92F9E: FLdRfVar var_9C
  loc_A92FA1: FLdPr var_8C
  loc_A92FA4:  = Form.Name
  loc_A92FA9: ILdRf var_9C
  loc_A92FAC: FLdRfVar var_A0
  loc_A92FAF: FLdPr var_88
  loc_A92FB2:  = Form.Name
  loc_A92FB7: ILdRf var_A0
  loc_A92FBA: EqStr
  loc_A92FBC: FFreeStr var_9C = ""
  loc_A92FC3: BranchF loc_A92FF1
  loc_A92FC6: ILdRf var_88
  loc_A92FC9: FStAdNoPop
  loc_A92FCD: ImpAdLdRf MemVar_D9C5D8
  loc_A92FD0: NewIfNullPr Global
  loc_A92FD3: Global.Unload from_stack_1
  loc_A92FD8: FFree1Ad var_90
  loc_A92FDB: ILdRf var_88
  loc_A92FDE: FStAdNoPop
  loc_A92FE2: ImpAdLdRf MemVar_D9C5D8
  loc_A92FE5: NewIfNullPr Global
  loc_A92FE8: Global.Load from_stack_1
  loc_A92FED: FFree1Ad var_90
  loc_A92FF0: ExitProc
  loc_A92FF1: FLdRfVar var_8C
  loc_A92FF4: NextEachCollObj
  loc_A92FFC: ILdRf var_88
  loc_A92FFF: FStAdNoPop
  loc_A93003: ImpAdLdRf MemVar_D9C5D8
  loc_A93006: NewIfNullPr Global
  loc_A93009: Global.Load from_stack_1
  loc_A9300E: FFree1Ad var_90
  loc_A93011: ExitProc
End Function

Private Function Proc_272_33_AD6ACC(arg_C) 'AD6ACC
  'Data Table: 43C408
  loc_AD6998: LitI4 -1
  loc_AD699D: LitI4 3
  loc_AD69A2: LitI4 3
  loc_AD69A7: FMemLdR4 arg_8(0)
  loc_AD69AC: CVarAd
  loc_AD69B0: PopAdLdVar
  loc_AD69B1: LitVarStr var_A8, "SELECT now() AS Ahora"
  loc_AD69B6: PopAdLdVar
  loc_AD69B7: FLdRfVar var_98
  loc_AD69BA: NewIfNullPr Recordset
  loc_AD69BD: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_AD69C2: FLdRfVar var_D0
  loc_AD69C5: FLdRfVar var_C0
  loc_AD69C8: LitVarStr var_A8, "Ahora"
  loc_AD69CD: PopAdLdVar
  loc_AD69CE: FLdRfVar var_BC
  loc_AD69D1: FLdRfVar var_98
  loc_AD69D4: NewIfNullPr Recordset
  loc_AD69D7:  = Recordset.Recordset15.Fields
  loc_AD69DC: FLdPr var_BC
  loc_AD69DF: from_stack_2 = Me.Item(from_stack_1)
  loc_AD69E4: FLdPr var_C0
  loc_AD69E7:  = Me.Value
  loc_AD69EC: FLdRfVar var_D0
  loc_AD69EF: FnCDateVar
  loc_AD69F1: FStFPR8 var_94
  loc_AD69F4: FFreeAd var_BC = ""
  loc_AD69FB: FFree1Var var_D0 = ""
  loc_AD69FE: LitI4 -1
  loc_AD6A03: FLdRfVar var_98
  loc_AD6A06: NewIfNullPr Recordset
  loc_AD6A09: Recordset.Recordset15.Requery from_stack_1
  loc_AD6A0E: FLdI2 arg_C
  loc_AD6A11: BranchF loc_AD6A70
  loc_AD6A14: FLdRfVar var_C0
  loc_AD6A17: LitVarStr var_A8, "Ahora"
  loc_AD6A1C: PopAdLdVar
  loc_AD6A1D: FLdRfVar var_BC
  loc_AD6A20: FLdRfVar var_98
  loc_AD6A23: NewIfNullPr Recordset
  loc_AD6A26:  = Recordset.Recordset15.Fields
  loc_AD6A2B: FLdPr var_BC
  loc_AD6A2E: from_stack_2 = Me.Item(from_stack_1)
  loc_AD6A33: LitI4 1
  loc_AD6A38: LitI4 1
  loc_AD6A3D: LitVarStr var_B8, "dd/mm/yyyy hh:mm:ss"
  loc_AD6A42: FStVarCopyObj var_E0
  loc_AD6A45: FLdRfVar var_E0
  loc_AD6A48: FLdZeroAd var_C0
  loc_AD6A4B: CVarAd
  loc_AD6A4F: FLdRfVar var_F0
  loc_AD6A52: ImpAdCallFPR4  = Format(, )
  loc_AD6A57: FLdRfVar var_F0
  loc_AD6A5A: FnCDateVar
  loc_AD6A5C: FStFPR8 var_8C
  loc_AD6A5F: FFree1Ad var_BC
  loc_AD6A62: FFreeVar var_D0 = "": var_E0 = "": var_F0 = ""
  loc_AD6A6D: Branch loc_AD6AC9
  loc_AD6A70: FLdRfVar var_C0
  loc_AD6A73: LitVarStr var_A8, "Ahora"
  loc_AD6A78: PopAdLdVar
  loc_AD6A79: FLdRfVar var_BC
  loc_AD6A7C: FLdRfVar var_98
  loc_AD6A7F: NewIfNullPr Recordset
  loc_AD6A82:  = Recordset.Recordset15.Fields
  loc_AD6A87: FLdPr var_BC
  loc_AD6A8A: from_stack_2 = Me.Item(from_stack_1)
  loc_AD6A8F: LitI4 1
  loc_AD6A94: LitI4 1
  loc_AD6A99: LitVarStr var_B8, "dd/mm/yyyy"
  loc_AD6A9E: FStVarCopyObj var_E0
  loc_AD6AA1: FLdRfVar var_E0
  loc_AD6AA4: FLdZeroAd var_C0
  loc_AD6AA7: CVarAd
  loc_AD6AAB: FLdRfVar var_F0
  loc_AD6AAE: ImpAdCallFPR4  = Format(, )
  loc_AD6AB3: FLdRfVar var_F0
  loc_AD6AB6: FnCDateVar
  loc_AD6AB8: FStFPR8 var_8C
  loc_AD6ABB: FFree1Ad var_BC
  loc_AD6ABE: FFreeVar var_D0 = "": var_E0 = "": var_F0 = ""
  loc_AD6AC9: ExitProcR8
End Function

Private Function Proc_272_34_A205CC(arg_C) 'A205CC
  'Data Table: 43C408
  loc_A20588: ILdRf arg_C
  loc_A2058B: FStStrCopy var_88
  loc_A2058E: LitNothing
  loc_A20590: CastAd
  loc_A20593: FMemStAdFunc arg_8(0)
  loc_A20599: New Connection
  loc_A2059D: FMemStAdFunc arg_8(0)
  loc_A205A3: LitI4 3
  loc_A205A8: FMemLdPr
  loc_A205AD: Connection.Connection15.CursorLocation = from_stack_1
  loc_A205B2: LitI4 -1
  loc_A205B7: LitStr vbNullString
  loc_A205BA: LitStr vbNullString
  loc_A205BD: ILdRf var_88
  loc_A205C0: FMemLdPr
  loc_A205C5: Me.Open from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_A205CA: ExitProc
End Function

Private Function Proc_272_35_A20644(arg_C) 'A20644
  'Data Table: 43C408
  loc_A20600: ILdRf arg_C
  loc_A20603: FStStrCopy var_88
  loc_A20606: LitNothing
  loc_A20608: CastAd
  loc_A2060B: FMemStAdFunc arg_8(4)
  loc_A20611: New Connection
  loc_A20615: FMemStAdFunc arg_8(4)
  loc_A2061B: LitI4 3
  loc_A20620: FMemLdPr
  loc_A20625: Connection.Connection15.CursorLocation = from_stack_1
  loc_A2062A: LitI4 -1
  loc_A2062F: LitStr vbNullString
  loc_A20632: LitStr vbNullString
  loc_A20635: ILdRf var_88
  loc_A20638: FMemLdPr
  loc_A2063D: Me.Open from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_A20642: ExitProc
End Function

Private Function Proc_272_36_9ED1A0(arg_C) '9ED1A0
  'Data Table: 43C408
  loc_9ED17C: LitVarI2 var_94, 0
  loc_9ED181: PopAdLdVar
  loc_9ED182: ILdRf arg_C
  loc_9ED185: VarLateMemSt .SelStart
  loc_9ED189: ILdRf arg_C
  loc_9ED18C: VarLateMemLdVar var_C4, .MaxLength
  loc_9ED192: PopAdLdVar
  loc_9ED193: ILdRf arg_C
  loc_9ED196: VarLateMemSt .SelLength
  loc_9ED19A: FFree1Var var_C4 = ""
  loc_9ED19D: ExitProc
End Function

Private Function Proc_272_37_A53658(arg_10) 'A53658
  'Data Table: 43C408
  loc_A53600: ILdRf arg_10
  loc_A53603: FStStrCopy var_8C
  loc_A53606: LitI2_Byte &HFF
  loc_A53608: FStI2 var_86
  loc_A5360B: LitI2_Byte 0
  loc_A5360D: FLdRfVar var_8E
  loc_A53610: FLdRfVar var_90
  loc_A53613: ILdPr
  loc_A53616:  = Me.ListCount
  loc_A5361B: FLdI2 var_90
  loc_A5361E: LitI2_Byte 1
  loc_A53620: SubI2
  loc_A53621: ForI2 var_94
  loc_A53627: FLdRfVar var_98
  loc_A5362A: FLdI2 var_8E
  loc_A5362D: ILdPr
  loc_A53630: from_stack_2 = Me.List(from_stack_1)
  loc_A53635: ILdRf var_98
  loc_A53638: ILdRf var_8C
  loc_A5363B: EqStr
  loc_A5363D: FFree1Str var_98
  loc_A53640: BranchF loc_A5364C
  loc_A53643: FLdI2 var_8E
  loc_A53646: FStI2 var_86
  loc_A53649: Branch loc_A53654
  loc_A5364C: FLdRfVar var_8E
  loc_A5364F: NextI2 var_94, loc_A53627
  loc_A53654: ExitProcI2
End Function

Private Function Proc_272_38_9FFA08(arg_C) '9FFA08
  'Data Table: 43C408
  loc_9FF9DC: ILdRf arg_C
  loc_9FF9DF: FStStrCopy var_8C
  loc_9FF9E2: LitI4 0
  loc_9FF9E7: LitI4 0
  loc_9FF9EC: LitI4 -1
  loc_9FF9F1: LitI4 2
  loc_9FF9F6: FLdRfVar var_8C
  loc_9FF9F9: CVarRef
  loc_9FF9FE: ImpAdCallI2 FormatNumber(, , , , )
  loc_9FFA03: FStStr var_88
  loc_9FFA06: ExitProc
End Function

Private Function Proc_272_39_9FF87C(arg_C) '9FF87C
  'Data Table: 43C408
  loc_9FF84C: ILdRf arg_C
  loc_9FF84F: FStStrCopy var_90
  loc_9FF852: ILdRf var_90
  loc_9FF855: LitStr vbNullString
  loc_9FF858: EqStr
  loc_9FF85A: BranchF loc_9FF863
  loc_9FF85D: LitI2_Byte 0
  loc_9FF85F: CR8I2
  loc_9FF860: FStFPR8 var_8C
  loc_9FF863: FLdRfVar var_90
  loc_9FF866: CVarRef
  loc_9FF86B: ImpAdCallI2 IsNumeric()
  loc_9FF870: BranchF loc_9FF87B
  loc_9FF873: ILdRf var_90
  loc_9FF876: CR8Str
  loc_9FF878: FStFPR8 var_8C
  loc_9FF87B: ExitProcR8
End Function

Private Function Proc_272_40_B5CC94() 'B5CC94
  'Data Table: 43C408
  loc_B5C8FC: LitStr "Municipalidad de Guaymallén"
  loc_B5C8FF: LitStr "Municipalidad de Guaymallén"
  loc_B5C902: EqStr
  loc_B5C904: BranchF loc_B5C92D
  loc_B5C907: LitStr "192.168.40.54"
  loc_B5C90A: LitStr "192.168.40.5"
  loc_B5C90D: EqStr
  loc_B5C90F: FMemLdR4 arg_8(16)
  loc_B5C914: LitStr vbNullString
  loc_B5C917: NeStr
  loc_B5C919: AndI4
  loc_B5C91A: BranchF loc_B5C92D
  loc_B5C91D: FMemLdR4 arg_8(16)
  loc_B5C922: ImpAdCallI2 Proc_18_135_A5A310()
  loc_B5C927: FStStr var_8C
  loc_B5C92A: FFree1Str var_8C
  loc_B5C92D: FLdRfVar var_88
  loc_B5C930: NewIfNullAd
  loc_B5C933: FStAd var_90 
  loc_B5C937: LitStr "SELECT menu.FormMenu"
  loc_B5C93A: LitStr " FROM infogov.acceso"
  loc_B5C93D: ConcatStr
  loc_B5C93E: FStStrNoPop var_8C
  loc_B5C941: LitStr " INNER JOIN infogov.menu ON menu.CodiMenu = acceso.CodiMenu"
  loc_B5C944: ConcatStr
  loc_B5C945: FStStrNoPop var_94
  loc_B5C948: LitStr " WHERE acceso.CodiUsua = '"
  loc_B5C94B: ConcatStr
  loc_B5C94C: FStStrNoPop var_98
  loc_B5C94F: FMemLdR4 arg_8(16)
  loc_B5C954: ConcatStr
  loc_B5C955: FStStrNoPop var_9C
  loc_B5C958: LitStr "' AND menu.CodiSist = "
  loc_B5C95B: ConcatStr
  loc_B5C95C: FStStrNoPop var_A0
  loc_B5C95F: LitI2_Byte 2
  loc_B5C961: CStrI2
  loc_B5C963: FStStrNoPop var_A4
  loc_B5C966: ConcatStr
  loc_B5C967: FStStrNoPop var_A8
  loc_B5C96A: LitStr " ORDER BY CodiUsua,FormMenu"
  loc_B5C96D: ConcatStr
  loc_B5C96E: FStStrNoPop var_AC
  loc_B5C971: FLdPr var_90
  loc_B5C974: Call clsacceso.RedefineRS(from_stack_1v)
  loc_B5C979: FFreeStr var_8C = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_B5C98C: FLdRfVar var_B0
  loc_B5C98F: FLdPr var_90
  loc_B5C992: from_stack_1 = clsacceso.RecordCount
  loc_B5C997: ILdRf var_B0
  loc_B5C99A: LitI4 0
  loc_B5C99F: GtI4
  loc_B5C9A0: BranchF loc_B5CA9A
  loc_B5C9A3: FLdPr var_90
  loc_B5C9A6: Call clsacceso.MoveFirst()
  loc_B5C9AB: LitVarI2 var_F0, 1
  loc_B5C9B0: FLdRfVar var_C0
  loc_B5C9B3: FLdRfVar var_B0
  loc_B5C9B6: FLdPr var_90
  loc_B5C9B9: from_stack_1 = clsacceso.RecordCount
  loc_B5C9BE: ILdRf var_B0
  loc_B5C9C1: CVarI4
  loc_B5C9C5: ForVar var_110
  loc_B5C9CB: FLdRfVar var_124
  loc_B5C9CE: ImpAdLdRf MemVar_D931D0
  loc_B5C9D1: NewIfNullPr MDIrecaudacion
  loc_B5C9D4:  = MDIrecaudacion.Controls
  loc_B5C9D9: FLdZeroAd var_124
  loc_B5C9DC: FStAdFuncNoPop
  loc_B5C9DF: FLdRfVar var_120
  loc_B5C9E2: ForEachCollVar var_12C
  loc_B5C9E8: FLdRfVar var_120
  loc_B5C9EB: CheckTypeVar
  loc_B5C9EF: BranchF loc_B5CA80
  loc_B5C9F2: FLdRfVar var_120
  loc_B5C9F5: VarLateMemLdVar var_13C, .Enabled
  loc_B5C9FB: NotVar var_14C
  loc_B5C9FF: FLdRfVar var_120
  loc_B5CA02: VarLateMemLdVar var_15C, .Tag
  loc_B5CA08: LitVarStr var_D0, vbNullString
  loc_B5CA0D: HardType
  loc_B5CA0E: NeVar var_16C
  loc_B5CA12: AndVar var_17C
  loc_B5CA16: CBoolVarNull
  loc_B5CA18: FFreeVar var_13C = ""
  loc_B5CA1F: BranchF loc_B5CA80
  loc_B5CA22: FLdRfVar var_120
  loc_B5CA25: VarLateMemLdVar var_14C, .Name
  loc_B5CA2B: FLdRfVar var_13C
  loc_B5CA2E: FLdRfVar var_184
  loc_B5CA31: LitVarStr var_D0, "FormMenu"
  loc_B5CA36: PopAdLdVar
  loc_B5CA37: FLdRfVar var_180
  loc_B5CA3A: FLdRfVar var_124
  loc_B5CA3D: FLdPr var_90
  loc_B5CA40: from_stack_1v = clsacceso.RsFrmGet()
  loc_B5CA45: FLdPr var_124
  loc_B5CA48:  = Me.Fields
  loc_B5CA4D: FLdPr var_180
  loc_B5CA50: from_stack_2 = Me.Item(from_stack_1)
  loc_B5CA55: FLdPr var_184
  loc_B5CA58:  = Me.Value
  loc_B5CA5D: FLdRfVar var_13C
  loc_B5CA60: EqVarBool
  loc_B5CA62: FFreeAd var_124 = "": var_180 = ""
  loc_B5CA6B: FFreeVar var_14C = ""
  loc_B5CA72: BranchF loc_B5CA80
  loc_B5CA75: LitVar_TRUE var_D0
  loc_B5CA78: PopAdLdVar
  loc_B5CA79: FLdRfVar var_120
  loc_B5CA7C: VarLateMemSt .Enabled
  loc_B5CA80: FLdRfVar var_120
  loc_B5CA83: NextEachCollVar var_12C
  loc_B5CA89: FLdPr var_90
  loc_B5CA8C: Call clsacceso.MoveNext()
  loc_B5CA91: FLdRfVar var_C0
  loc_B5CA94: NextStepVar var_110
  loc_B5CA9A: LitNothing
  loc_B5CA9C: FStAd var_90 
  loc_B5CAA0: FMemLdR4 arg_8(16)
  loc_B5CAA5: LitStr "root"
  loc_B5CAA8: EqStr
  loc_B5CAAA: BranchF loc_B5CB11
  loc_B5CAAD: LitI2_Byte &HFF
  loc_B5CAAF: ImpAdLdRf MemVar_D931D0
  loc_B5CAB2: NewIfNullPr MDIrecaudacion
  loc_B5CAB5: VCallAd Control_ID_Ejecutar
  loc_B5CAB8: FStAdFunc var_124
  loc_B5CABB: FLdPr var_124
  loc_B5CABE: MDIrecaudacion.Menu.Enabled = from_stack_1b
  loc_B5CAC3: FFree1Ad var_124
  loc_B5CAC6: LitI2_Byte &HFF
  loc_B5CAC8: ImpAdLdRf MemVar_D931D0
  loc_B5CACB: NewIfNullPr MDIrecaudacion
  loc_B5CACE: VCallAd Control_ID_Ejecutar
  loc_B5CAD1: FStAdFunc var_124
  loc_B5CAD4: FLdPr var_124
  loc_B5CAD7: MDIrecaudacion.Menu.Visible = from_stack_1b
  loc_B5CADC: FFree1Ad var_124
  loc_B5CADF: LitI2_Byte &HFF
  loc_B5CAE1: ImpAdLdRf MemVar_D931D0
  loc_B5CAE4: NewIfNullPr MDIrecaudacion
  loc_B5CAE7: VCallAd Control_ID_Migracion
  loc_B5CAEA: FStAdFunc var_124
  loc_B5CAED: FLdPr var_124
  loc_B5CAF0: MDIrecaudacion.Menu.Enabled = from_stack_1b
  loc_B5CAF5: FFree1Ad var_124
  loc_B5CAF8: LitI2_Byte &HFF
  loc_B5CAFA: ImpAdLdRf MemVar_D931D0
  loc_B5CAFD: NewIfNullPr MDIrecaudacion
  loc_B5CB00: VCallAd Control_ID_Migracion
  loc_B5CB03: FStAdFunc var_124
  loc_B5CB06: FLdPr var_124
  loc_B5CB09: MDIrecaudacion.Menu.Visible = from_stack_1b
  loc_B5CB0E: FFree1Ad var_124
  loc_B5CB11: LitNothing
  loc_B5CB13: CastAd
  loc_B5CB16: FStAdFunc var_88
  loc_B5CB19: LitStr "InfoGov - Recaudación y Control - "
  loc_B5CB1C: LitStr "Municipalidad de Guaymallén"
  loc_B5CB1F: ConcatStr
  loc_B5CB20: FStStrNoPop var_8C
  loc_B5CB23: LitStr " - Versión: "
  loc_B5CB26: ConcatStr
  loc_B5CB27: FStStrNoPop var_94
  loc_B5CB2A: FLdRfVar var_186
  loc_B5CB2D: FLdRfVar var_124
  loc_B5CB30: ImpAdLdRf MemVar_D9C5D8
  loc_B5CB33: NewIfNullPr Global
  loc_B5CB36:  = Global.App
  loc_B5CB3B: FLdPr var_124
  loc_B5CB3E:  = App.Major
  loc_B5CB43: FLdI2 var_186
  loc_B5CB46: CStrUI1
  loc_B5CB48: FStStrNoPop var_98
  loc_B5CB4B: ConcatStr
  loc_B5CB4C: FStStrNoPop var_9C
  loc_B5CB4F: LitStr "."
  loc_B5CB52: ConcatStr
  loc_B5CB53: FStStrNoPop var_A0
  loc_B5CB56: FLdRfVar var_188
  loc_B5CB59: FLdRfVar var_180
  loc_B5CB5C: ImpAdLdRf MemVar_D9C5D8
  loc_B5CB5F: NewIfNullPr Global
  loc_B5CB62:  = Global.App
  loc_B5CB67: FLdPr var_180
  loc_B5CB6A:  = App.Minor
  loc_B5CB6F: FLdI2 var_188
  loc_B5CB72: CStrUI1
  loc_B5CB74: FStStrNoPop var_A4
  loc_B5CB77: ConcatStr
  loc_B5CB78: FStStrNoPop var_A8
  loc_B5CB7B: LitStr "."
  loc_B5CB7E: ConcatStr
  loc_B5CB7F: FStStrNoPop var_AC
  loc_B5CB82: FLdRfVar var_18A
  loc_B5CB85: FLdRfVar var_184
  loc_B5CB88: ImpAdLdRf MemVar_D9C5D8
  loc_B5CB8B: NewIfNullPr Global
  loc_B5CB8E:  = Global.App
  loc_B5CB93: FLdPr var_184
  loc_B5CB96:  = App.Revision
  loc_B5CB9B: FLdI2 var_18A
  loc_B5CB9E: CStrUI1
  loc_B5CBA0: FStStrNoPop var_190
  loc_B5CBA3: ConcatStr
  loc_B5CBA4: FStStrNoPop var_194
  loc_B5CBA7: LitStr " | Usuario: "
  loc_B5CBAA: ConcatStr
  loc_B5CBAB: FStStrNoPop var_198
  loc_B5CBAE: FMemLdR4 arg_8(16)
  loc_B5CBB3: ConcatStr
  loc_B5CBB4: FStStrNoPop var_19C
  loc_B5CBB7: LitStr " | Ejercicio: "
  loc_B5CBBA: ConcatStr
  loc_B5CBBB: FStStrNoPop var_1A0
  loc_B5CBBE: FMemLdI2 arg_8(24)
  loc_B5CBC3: CStrUI1
  loc_B5CBC5: FStStrNoPop var_1A4
  loc_B5CBC8: ConcatStr
  loc_B5CBC9: CVarStr var_16C
  loc_B5CBCC: LitVarStr var_E0, vbNullString
  loc_B5CBD1: FStVarCopyObj var_14C
  loc_B5CBD4: FLdRfVar var_14C
  loc_B5CBD7: LitStr " - "
  loc_B5CBDA: LitStr "192.168.40.54"
  loc_B5CBDD: ConcatStr
  loc_B5CBDE: FStStrNoPop var_1A8
  loc_B5CBE1: LitStr ": "
  loc_B5CBE4: ConcatStr
  loc_B5CBE5: FStStrNoPop var_1AC
  loc_B5CBE8: LitStr "3306"
  loc_B5CBEB: ConcatStr
  loc_B5CBEC: CVarStr var_13C
  loc_B5CBEF: FMemLdR4 arg_8(16)
  loc_B5CBF4: LitStr "root"
  loc_B5CBF7: EqStr
  loc_B5CBF9: CVarBoolI2 var_D0
  loc_B5CBFD: FLdRfVar var_15C
  loc_B5CC00: ImpAdCallFPR4  = IIf(, , )
  loc_B5CC05: FLdRfVar var_15C
  loc_B5CC08: ConcatVar var_17C
  loc_B5CC0C: LitVarStr var_1DC, vbNullString
  loc_B5CC11: FStVarCopyObj var_1EC
  loc_B5CC14: FLdRfVar var_1EC
  loc_B5CC17: LitVarStr var_1BC, " PRUEBA"
  loc_B5CC1C: FStVarCopyObj var_1CC
  loc_B5CC1F: FLdRfVar var_1CC
  loc_B5CC22: LitStr "192.168.40.54"
  loc_B5CC25: LitStr "192.168.40.5"
  loc_B5CC28: EqStr
  loc_B5CC2A: CVarBoolI2 var_F0
  loc_B5CC2E: FLdRfVar var_1FC
  loc_B5CC31: ImpAdCallFPR4  = IIf(, , )
  loc_B5CC36: FLdRfVar var_1FC
  loc_B5CC39: ConcatVar var_20C
  loc_B5CC3D: CStrVarVal var_210
  loc_B5CC41: ImpAdLdRf MemVar_D931D0
  loc_B5CC44: NewIfNullPr MDIrecaudacion
  loc_B5CC47: MDIrecaudacion.Caption = from_stack_1
  loc_B5CC4C: FFreeStr var_8C = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = ""
  loc_B5CC71: FFreeAd var_124 = "": var_180 = ""
  loc_B5CC7A: FFreeVar var_D0 = "": var_13C = "": var_14C = "": var_16C = "": var_15C = "": var_F0 = "": var_1CC = "": var_1EC = "": var_17C = "": var_1FC = ""
  loc_B5CC93: ExitProc
End Function

Private Function Proc_272_41_BB2C08(arg_C, arg_10, arg_14) 'BB2C08
  'Data Table: 43C408
  loc_BB25C0: ILdRf arg_10
  loc_BB25C3: FStStrCopy var_8C
  loc_BB25C6: ILdRf var_8C
  loc_BB25C9: LitStr "Directo"
  loc_BB25CC: EqStr
  loc_BB25CE: BranchF loc_BB27AE
  loc_BB25D1: LitStr "Municipalidad de Guaymallén"
  loc_BB25D4: LitStr "Municipalidad de San Carlos"
  loc_BB25D7: EqStr
  loc_BB25D9: BranchF loc_BB268A
  loc_BB25DC: LitI4 2
  loc_BB25E1: FLdRfVar arg_14
  loc_BB25E4: CVarRef
  loc_BB25E9: FLdRfVar var_F4
  loc_BB25EC: ImpAdCallFPR4  = Round(, )
  loc_BB25F1: FLdRfVar var_F4
  loc_BB25F4: CR4Var
  loc_BB25F5: FStFPR8 var_B0
  loc_BB25F8: FFree1Var var_F4 = ""
  loc_BB25FB: LitI4 2
  loc_BB2600: FLdRfVar arg_1C
  loc_BB2603: CVarRef
  loc_BB2608: FLdRfVar var_F4
  loc_BB260B: ImpAdCallFPR4  = Round(, )
  loc_BB2610: FLdRfVar var_F4
  loc_BB2613: CR4Var
  loc_BB2614: FStFPR8 var_B8
  loc_BB2617: FFree1Var var_F4 = ""
  loc_BB261A: LitI4 2
  loc_BB261F: FLdFPR8 var_B8
  loc_BB2622: FLdI2 arg_C
  loc_BB2625: CR8I2
  loc_BB2626: DivR8
  loc_BB2627: CVarR8
  loc_BB262B: FLdRfVar var_104
  loc_BB262E: ImpAdCallFPR4  = Round(, )
  loc_BB2633: FLdRfVar var_104
  loc_BB2636: CR4Var
  loc_BB2637: LitI4 0
  loc_BB263C: FLdRfVar var_A4
  loc_BB263F: Ary1StFPR8
  loc_BB2640: FFreeVar var_F4 = ""
  loc_BB2647: LitI4 2
  loc_BB264C: FLdFPR8 var_B8
  loc_BB264F: FLdFPR8 var_B0
  loc_BB2652: MulR8
  loc_BB2653: LitI2_Byte &H64
  loc_BB2655: CR8I2
  loc_BB2656: DivR8
  loc_BB2657: FLdI2 arg_C
  loc_BB265A: CR8I2
  loc_BB265B: DivR8
  loc_BB265C: CVarR8
  loc_BB2660: FLdRfVar var_104
  loc_BB2663: ImpAdCallFPR4  = Round(, )
  loc_BB2668: FLdRfVar var_104
  loc_BB266B: CR4Var
  loc_BB266C: LitI4 1
  loc_BB2671: FLdRfVar var_A4
  loc_BB2674: Ary1StFPR8
  loc_BB2675: FFreeVar var_F4 = ""
  loc_BB267C: FLdRfVar var_A4
  loc_BB267F: PopTmpLdAdStr var_108
  loc_BB2682: FLdRfVar var_88
  loc_BB2685: StAryCopy
  loc_BB2687: Branch loc_BB27AE
  loc_BB268A: LitStr "Municipalidad de Guaymallén"
  loc_BB268D: LitStr "Municipalidad de Guaymallén"
  loc_BB2690: EqStr
  loc_BB2692: BranchF loc_BB2710
  loc_BB2695: LitI4 2
  loc_BB269A: FLdFPR8 arg_1C
  loc_BB269D: FLdI2 arg_C
  loc_BB26A0: CR8I2
  loc_BB26A1: DivR8
  loc_BB26A2: CVarR8
  loc_BB26A6: FLdRfVar var_104
  loc_BB26A9: ImpAdCallFPR4  = Round(, )
  loc_BB26AE: FLdRfVar var_104
  loc_BB26B1: CR4Var
  loc_BB26B2: FStFPR8 var_B8
  loc_BB26B5: FFreeVar var_F4 = ""
  loc_BB26BC: LitI4 2
  loc_BB26C1: FLdFPR8 arg_1C
  loc_BB26C4: FLdFPR8 arg_14
  loc_BB26C7: MulR8
  loc_BB26C8: LitI2_Byte &H64
  loc_BB26CA: CR8I2
  loc_BB26CB: DivR8
  loc_BB26CC: CVarR8
  loc_BB26D0: FLdRfVar var_104
  loc_BB26D3: ImpAdCallFPR4  = Round(, )
  loc_BB26D8: FLdRfVar var_104
  loc_BB26DB: CR4Var
  loc_BB26DC: FStFPR8 var_B0
  loc_BB26DF: FFreeVar var_F4 = ""
  loc_BB26E6: FLdFPR8 var_B0
  loc_BB26E9: LitI4 1
  loc_BB26EE: FLdRfVar var_A4
  loc_BB26F1: Ary1StFPR8
  loc_BB26F2: FLdFPR8 var_B8
  loc_BB26F5: FLdFPR8 var_B0
  loc_BB26F8: AddR8
  loc_BB26F9: LitI4 0
  loc_BB26FE: FLdRfVar var_A4
  loc_BB2701: Ary1StFPR8
  loc_BB2702: FLdRfVar var_A4
  loc_BB2705: PopTmpLdAdStr var_108
  loc_BB2708: FLdRfVar var_88
  loc_BB270B: StAryCopy
  loc_BB270D: Branch loc_BB27AE
  loc_BB2710: FLdFPR8 arg_14
  loc_BB2713: LitI2_Byte &H64
  loc_BB2715: CR8I2
  loc_BB2716: DivR8
  loc_BB2717: FStFPR8 var_B0
  loc_BB271A: LitI4 2
  loc_BB271F: FLdFPR8 arg_1C
  loc_BB2722: FLdI2 arg_C
  loc_BB2725: CR8I2
  loc_BB2726: DivR8
  loc_BB2727: CVarR8
  loc_BB272B: FLdRfVar var_104
  loc_BB272E: ImpAdCallFPR4  = Round(, )
  loc_BB2733: FLdRfVar var_104
  loc_BB2736: CR4Var
  loc_BB2737: FStFPR8 var_B8
  loc_BB273A: FFreeVar var_F4 = ""
  loc_BB2741: LitI4 2
  loc_BB2746: FLdFPR8 var_B8
  loc_BB2749: FLdFPR8 var_B0
  loc_BB274C: MulR8
  loc_BB274D: FLdFPR8 var_B8
  loc_BB2750: AddR8
  loc_BB2751: CVarR8
  loc_BB2755: FLdRfVar var_104
  loc_BB2758: ImpAdCallFPR4  = Round(, )
  loc_BB275D: FLdRfVar var_104
  loc_BB2760: CR4Var
  loc_BB2761: LitI4 0
  loc_BB2766: FLdRfVar var_A4
  loc_BB2769: Ary1StFPR8
  loc_BB276A: FFreeVar var_F4 = ""
  loc_BB2771: LitI4 2
  loc_BB2776: LitI4 0
  loc_BB277B: FLdRfVar var_A4
  loc_BB277E: Ary1LdFPR8
  loc_BB277F: FLdFPR8 var_B8
  loc_BB2782: SubR4
  loc_BB2783: CVarR8
  loc_BB2787: FLdRfVar var_104
  loc_BB278A: ImpAdCallFPR4  = Round(, )
  loc_BB278F: FLdRfVar var_104
  loc_BB2792: CR4Var
  loc_BB2793: LitI4 1
  loc_BB2798: FLdRfVar var_A4
  loc_BB279B: Ary1StFPR8
  loc_BB279C: FFreeVar var_F4 = ""
  loc_BB27A3: FLdRfVar var_A4
  loc_BB27A6: PopTmpLdAdStr var_108
  loc_BB27A9: FLdRfVar var_88
  loc_BB27AC: StAryCopy
  loc_BB27AE: ILdRf var_8C
  loc_BB27B1: LitStr "Frances"
  loc_BB27B4: EqStr
  loc_BB27B6: BranchF loc_BB285E
  loc_BB27B9: FLdFPR8 arg_14
  loc_BB27BC: LitI2_Byte &H64
  loc_BB27BE: CR8I2
  loc_BB27BF: DivR8
  loc_BB27C0: FStFPR8 var_B0
  loc_BB27C3: LitI2_Byte 1
  loc_BB27C5: CR8I2
  loc_BB27C6: FLdFPR8 var_B0
  loc_BB27C9: AddR8
  loc_BB27CA: FLdI2 arg_C
  loc_BB27CD: CR8I2
  loc_BB27CE: PwrR8R8
  loc_BB27D0: FStFPR8 var_D0
  loc_BB27D3: LitI4 2
  loc_BB27D8: FLdFPR8 arg_1C
  loc_BB27DB: FLdFPR8 var_B0
  loc_BB27DE: MulR8
  loc_BB27DF: FLdFPR8 var_D0
  loc_BB27E2: MulR8
  loc_BB27E3: FLdFPR8 var_D0
  loc_BB27E6: LitI2_Byte 1
  loc_BB27E8: CR8I2
  loc_BB27E9: SubR4
  loc_BB27EA: DivR8
  loc_BB27EB: CVarR8
  loc_BB27EF: FLdRfVar var_104
  loc_BB27F2: ImpAdCallFPR4  = Round(, )
  loc_BB27F7: FLdRfVar var_104
  loc_BB27FA: CR4Var
  loc_BB27FB: LitI4 0
  loc_BB2800: FLdRfVar var_A4
  loc_BB2803: Ary1StFPR8
  loc_BB2804: FFreeVar var_F4 = ""
  loc_BB280B: LitI4 2
  loc_BB2810: FLdFPR8 arg_1C
  loc_BB2813: FLdFPR8 var_B0
  loc_BB2816: MulR8
  loc_BB2817: CVarR8
  loc_BB281B: FLdRfVar var_104
  loc_BB281E: ImpAdCallFPR4  = Round(, )
  loc_BB2823: FLdRfVar var_104
  loc_BB2826: CR4Var
  loc_BB2827: LitI4 1
  loc_BB282C: FLdRfVar var_A4
  loc_BB282F: Ary1StFPR8
  loc_BB2830: FFreeVar var_F4 = ""
  loc_BB2837: LitI4 0
  loc_BB283C: FLdRfVar var_A4
  loc_BB283F: Ary1LdFPR8
  loc_BB2840: LitI4 1
  loc_BB2845: FLdRfVar var_A4
  loc_BB2848: Ary1LdFPR8
  loc_BB2849: SubR4
  loc_BB284A: LitI4 2
  loc_BB284F: FLdRfVar var_A4
  loc_BB2852: Ary1StFPR8
  loc_BB2853: FLdRfVar var_A4
  loc_BB2856: PopTmpLdAdStr var_108
  loc_BB2859: FLdRfVar var_88
  loc_BB285C: StAryCopy
  loc_BB285E: ILdRf var_8C
  loc_BB2861: LitStr "Especial"
  loc_BB2864: EqStr
  loc_BB2866: BranchF loc_BB2B43
  loc_BB2869: LitStr "Municipalidad de Guaymallén"
  loc_BB286C: LitStr "Municipalidad de Rivadavia"
  loc_BB286F: EqStr
  loc_BB2871: BranchF loc_BB293F
  loc_BB2874: FLdI2 arg_C
  loc_BB2877: LitI2_Byte &H19
  loc_BB2879: GeI2
  loc_BB287A: BranchF loc_BB2889
  loc_BB287D: LitDate 1.5
  loc_BB2886: FStFPR8 arg_14
  loc_BB2889: LitI4 2
  loc_BB288E: FLdFPR8 arg_14
  loc_BB2891: FLdI2 arg_C
  loc_BB2894: CR8I2
  loc_BB2895: MulR8
  loc_BB2896: CVarR8
  loc_BB289A: FLdRfVar var_104
  loc_BB289D: ImpAdCallFPR4  = Round(, )
  loc_BB28A2: FLdRfVar var_104
  loc_BB28A5: CR4Var
  loc_BB28A6: FStFPR8 var_B0
  loc_BB28A9: FFreeVar var_F4 = ""
  loc_BB28B0: LitI4 2
  loc_BB28B5: FLdRfVar arg_1C
  loc_BB28B8: CVarRef
  loc_BB28BD: FLdRfVar var_F4
  loc_BB28C0: ImpAdCallFPR4  = Round(, )
  loc_BB28C5: FLdRfVar var_F4
  loc_BB28C8: CR4Var
  loc_BB28C9: FStFPR8 var_B8
  loc_BB28CC: FFree1Var var_F4 = ""
  loc_BB28CF: LitI4 2
  loc_BB28D4: FLdFPR8 var_B8
  loc_BB28D7: FLdI2 arg_C
  loc_BB28DA: CR8I2
  loc_BB28DB: DivR8
  loc_BB28DC: CVarR8
  loc_BB28E0: FLdRfVar var_104
  loc_BB28E3: ImpAdCallFPR4  = Round(, )
  loc_BB28E8: FLdRfVar var_104
  loc_BB28EB: CR4Var
  loc_BB28EC: LitI4 0
  loc_BB28F1: FLdRfVar var_A4
  loc_BB28F4: Ary1StFPR8
  loc_BB28F5: FFreeVar var_F4 = ""
  loc_BB28FC: LitI4 2
  loc_BB2901: FLdFPR8 var_B8
  loc_BB2904: FLdFPR8 var_B0
  loc_BB2907: MulR8
  loc_BB2908: LitI2_Byte &H64
  loc_BB290A: CR8I2
  loc_BB290B: DivR8
  loc_BB290C: FLdI2 arg_C
  loc_BB290F: CR8I2
  loc_BB2910: DivR8
  loc_BB2911: CVarR8
  loc_BB2915: FLdRfVar var_104
  loc_BB2918: ImpAdCallFPR4  = Round(, )
  loc_BB291D: FLdRfVar var_104
  loc_BB2920: CR4Var
  loc_BB2921: LitI4 1
  loc_BB2926: FLdRfVar var_A4
  loc_BB2929: Ary1StFPR8
  loc_BB292A: FFreeVar var_F4 = ""
  loc_BB2931: FLdRfVar var_A4
  loc_BB2934: PopTmpLdAdStr var_108
  loc_BB2937: FLdRfVar var_88
  loc_BB293A: StAryCopy
  loc_BB293C: Branch loc_BB2B43
  loc_BB293F: LitStr "Municipalidad de Guaymallén"
  loc_BB2942: LitStr "Municipalidad de Tunuyán"
  loc_BB2945: EqStr
  loc_BB2947: BranchF loc_BB29E4
  loc_BB294A: FLdFPR8 arg_14
  loc_BB294D: LitI2_Byte &H64
  loc_BB294F: CR8I2
  loc_BB2950: DivR8
  loc_BB2951: FStFPR8 var_B0
  loc_BB2954: LitI4 2
  loc_BB2959: FLdFPR8 arg_1C
  loc_BB295C: FLdI2 arg_C
  loc_BB295F: CR8I2
  loc_BB2960: DivR8
  loc_BB2961: CVarR8
  loc_BB2965: FLdRfVar var_104
  loc_BB2968: ImpAdCallFPR4  = Round(, )
  loc_BB296D: FLdRfVar var_104
  loc_BB2970: FStVar var_118
  loc_BB2974: FFree1Var var_F4 = ""
  loc_BB2977: LitVarI2 var_148, 1
  loc_BB297C: FLdRfVar var_128
  loc_BB297F: FLdI2 arg_C
  loc_BB2982: CVarI2 var_138
  loc_BB2985: ForVar var_168
  loc_BB298B: LitI4 1
  loc_BB2990: FLdRfVar var_A4
  loc_BB2993: Ary1LdFPR8
  loc_BB2994: FLdFPR8 arg_1C
  loc_BB2997: FLdFPR8 var_B0
  loc_BB299A: MulR8
  loc_BB299B: AddR8
  loc_BB299C: LitI4 1
  loc_BB29A1: FLdRfVar var_A4
  loc_BB29A4: Ary1StFPR8
  loc_BB29A5: FLdFPR8 arg_1C
  loc_BB29A8: LitI4 1
  loc_BB29AD: FLdRfVar var_A4
  loc_BB29B0: Ary1LdFPR8
  loc_BB29B1: AddR8
  loc_BB29B2: LitI4 0
  loc_BB29B7: FLdRfVar var_A4
  loc_BB29BA: Ary1StFPR8
  loc_BB29BB: FLdFPR8 arg_1C
  loc_BB29BE: CVarR8
  loc_BB29C2: FLdRfVar var_118
  loc_BB29C5: SubVar var_F4
  loc_BB29C9: CR4Var
  loc_BB29CA: FStFPR8 arg_1C
  loc_BB29CD: FLdRfVar var_128
  loc_BB29D0: NextStepVar var_168
  loc_BB29D6: FLdRfVar var_A4
  loc_BB29D9: PopTmpLdAdStr var_108
  loc_BB29DC: FLdRfVar var_88
  loc_BB29DF: StAryCopy
  loc_BB29E1: Branch loc_BB2B43
  loc_BB29E4: LitStr "Municipalidad de Guaymallén"
  loc_BB29E7: LitStr "Municipalidad de General Alvear"
  loc_BB29EA: EqStr
  loc_BB29EC: BranchF loc_BB2AD1
  loc_BB29EF: FLdI2 arg_C
  loc_BB29F2: LitI2_Byte 1
  loc_BB29F4: GtI2
  loc_BB29F5: BranchF loc_BB2AAB
  loc_BB29F8: FLdFPR8 arg_14
  loc_BB29FB: LitI2_Byte &H64
  loc_BB29FD: CR8I2
  loc_BB29FE: DivR8
  loc_BB29FF: FStFPR8 var_B0
  loc_BB2A02: FLdFPR8 var_B0
  loc_BB2A05: LitI2_Byte 1
  loc_BB2A07: CR8I2
  loc_BB2A08: AddR8
  loc_BB2A09: FStFPR8 var_C8
  loc_BB2A0C: FLdFPR8 var_C8
  loc_BB2A0F: FStFPR8 var_D0
  loc_BB2A12: LitI2_Byte 1
  loc_BB2A14: FLdRfVar var_D2
  loc_BB2A17: FLdI2 arg_C
  loc_BB2A1A: LitI2_Byte 1
  loc_BB2A1C: SubI2
  loc_BB2A1D: ForI2 var_16C
  loc_BB2A23: FLdFPR8 var_D0
  loc_BB2A26: FLdFPR8 var_C8
  loc_BB2A29: MulR8
  loc_BB2A2A: FStFPR8 var_D0
  loc_BB2A2D: FLdRfVar var_D2
  loc_BB2A30: NextI2 var_16C, loc_BB2A23
  loc_BB2A35: LitI4 2
  loc_BB2A3A: FLdFPR8 arg_1C
  loc_BB2A3D: FLdFPR8 var_D0
  loc_BB2A40: MulR8
  loc_BB2A41: FLdI2 arg_C
  loc_BB2A44: CR8I2
  loc_BB2A45: DivR8
  loc_BB2A46: CVarR8
  loc_BB2A4A: FLdRfVar var_104
  loc_BB2A4D: ImpAdCallFPR4  = Round(, )
  loc_BB2A52: FLdRfVar var_104
  loc_BB2A55: CR4Var
  loc_BB2A56: LitI4 0
  loc_BB2A5B: FLdRfVar var_A4
  loc_BB2A5E: Ary1StFPR8
  loc_BB2A5F: FFreeVar var_F4 = ""
  loc_BB2A66: LitI4 2
  loc_BB2A6B: LitI4 0
  loc_BB2A70: FLdRfVar var_A4
  loc_BB2A73: Ary1LdFPR8
  loc_BB2A74: FLdI2 arg_C
  loc_BB2A77: CR8I2
  loc_BB2A78: MulR8
  loc_BB2A79: FLdFPR8 arg_1C
  loc_BB2A7C: SubR4
  loc_BB2A7D: CVarR8
  loc_BB2A81: FLdRfVar var_104
  loc_BB2A84: ImpAdCallFPR4  = Round(, )
  loc_BB2A89: FLdRfVar var_104
  loc_BB2A8C: CR4Var
  loc_BB2A8D: LitI4 1
  loc_BB2A92: FLdRfVar var_A4
  loc_BB2A95: Ary1StFPR8
  loc_BB2A96: FFreeVar var_F4 = ""
  loc_BB2A9D: FLdRfVar var_A4
  loc_BB2AA0: PopTmpLdAdStr var_108
  loc_BB2AA3: FLdRfVar var_88
  loc_BB2AA6: StAryCopy
  loc_BB2AA8: Branch loc_BB2ACE
  loc_BB2AAB: FLdFPR8 arg_1C
  loc_BB2AAE: LitI4 0
  loc_BB2AB3: FLdRfVar var_A4
  loc_BB2AB6: Ary1StFPR8
  loc_BB2AB7: LitI2_Byte 0
  loc_BB2AB9: CR8I2
  loc_BB2ABA: LitI4 1
  loc_BB2ABF: FLdRfVar var_A4
  loc_BB2AC2: Ary1StFPR8
  loc_BB2AC3: FLdRfVar var_A4
  loc_BB2AC6: PopTmpLdAdStr var_108
  loc_BB2AC9: FLdRfVar var_88
  loc_BB2ACC: StAryCopy
  loc_BB2ACE: Branch loc_BB2B43
  loc_BB2AD1: LitI4 2
  loc_BB2AD6: FLdFPR8 arg_1C
  loc_BB2AD9: FLdFPR8 arg_14
  loc_BB2ADC: MulR8
  loc_BB2ADD: FLdI2 arg_C
  loc_BB2AE0: CR8I2
  loc_BB2AE1: MulR8
  loc_BB2AE2: LitI2_Byte &H64
  loc_BB2AE4: CR8I2
  loc_BB2AE5: DivR8
  loc_BB2AE6: CVarR8
  loc_BB2AEA: FLdRfVar var_104
  loc_BB2AED: ImpAdCallFPR4  = Round(, )
  loc_BB2AF2: FLdRfVar var_104
  loc_BB2AF5: CR4Var
  loc_BB2AF6: LitI4 1
  loc_BB2AFB: FLdRfVar var_A4
  loc_BB2AFE: Ary1StFPR8
  loc_BB2AFF: FFreeVar var_F4 = ""
  loc_BB2B06: LitI4 2
  loc_BB2B0B: FLdFPR8 arg_1C
  loc_BB2B0E: LitI4 1
  loc_BB2B13: FLdRfVar var_A4
  loc_BB2B16: Ary1LdFPR8
  loc_BB2B17: AddR8
  loc_BB2B18: CVarR8
  loc_BB2B1C: FLdRfVar var_104
  loc_BB2B1F: ImpAdCallFPR4  = Round(, )
  loc_BB2B24: FLdRfVar var_104
  loc_BB2B27: CR4Var
  loc_BB2B28: LitI4 0
  loc_BB2B2D: FLdRfVar var_A4
  loc_BB2B30: Ary1StFPR8
  loc_BB2B31: FFreeVar var_F4 = ""
  loc_BB2B38: FLdRfVar var_A4
  loc_BB2B3B: PopTmpLdAdStr var_108
  loc_BB2B3E: FLdRfVar var_88
  loc_BB2B41: StAryCopy
  loc_BB2B43: ILdRf var_8C
  loc_BB2B46: LitStr "Directo Por Año"
  loc_BB2B49: EqStr
  loc_BB2B4B: BranchF loc_BB2C04
  loc_BB2B4E: LitStr "Municipalidad de Guaymallén"
  loc_BB2B51: LitStr "Municipalidad de Lavalle"
  loc_BB2B54: EqStr
  loc_BB2B56: BranchF loc_BB2C04
  loc_BB2B59: LitI4 2
  loc_BB2B5E: FLdRfVar arg_14
  loc_BB2B61: CVarRef
  loc_BB2B66: FLdRfVar var_F4
  loc_BB2B69: ImpAdCallFPR4  = Round(, )
  loc_BB2B6E: FLdRfVar var_F4
  loc_BB2B71: CR4Var
  loc_BB2B72: FStFPR8 var_B0
  loc_BB2B75: FFree1Var var_F4 = ""
  loc_BB2B78: LitI4 2
  loc_BB2B7D: FLdRfVar arg_1C
  loc_BB2B80: CVarRef
  loc_BB2B85: FLdRfVar var_F4
  loc_BB2B88: ImpAdCallFPR4  = Round(, )
  loc_BB2B8D: FLdRfVar var_F4
  loc_BB2B90: CR4Var
  loc_BB2B91: FStFPR8 var_B8
  loc_BB2B94: FFree1Var var_F4 = ""
  loc_BB2B97: LitI4 2
  loc_BB2B9C: FLdFPR8 var_B8
  loc_BB2B9F: FLdI2 arg_C
  loc_BB2BA2: CR8I2
  loc_BB2BA3: DivR8
  loc_BB2BA4: CVarR8
  loc_BB2BA8: FLdRfVar var_104
  loc_BB2BAB: ImpAdCallFPR4  = Round(, )
  loc_BB2BB0: FLdRfVar var_104
  loc_BB2BB3: CR4Var
  loc_BB2BB4: LitI4 0
  loc_BB2BB9: FLdRfVar var_A4
  loc_BB2BBC: Ary1StFPR8
  loc_BB2BBD: FFreeVar var_F4 = ""
  loc_BB2BC4: LitI4 2
  loc_BB2BC9: FLdFPR8 var_B8
  loc_BB2BCC: FLdFPR8 var_B0
  loc_BB2BCF: MulR8
  loc_BB2BD0: LitI2_Byte &H64
  loc_BB2BD2: CR8I2
  loc_BB2BD3: DivR8
  loc_BB2BD4: FLdI2 arg_C
  loc_BB2BD7: CR8I2
  loc_BB2BD8: DivR8
  loc_BB2BD9: CVarR8
  loc_BB2BDD: FLdRfVar var_104
  loc_BB2BE0: ImpAdCallFPR4  = Round(, )
  loc_BB2BE5: FLdRfVar var_104
  loc_BB2BE8: CR4Var
  loc_BB2BE9: LitI4 1
  loc_BB2BEE: FLdRfVar var_A4
  loc_BB2BF1: Ary1StFPR8
  loc_BB2BF2: FFreeVar var_F4 = ""
  loc_BB2BF9: FLdRfVar var_A4
  loc_BB2BFC: PopTmpLdAdStr var_108
  loc_BB2BFF: FLdRfVar var_88
  loc_BB2C02: StAryCopy
  loc_BB2C04: ExitProc
End Function

Private Function Proc_272_42_A95944() 'A95944
  'Data Table: 43C408
  loc_A958A8: FLdRfVar var_8C
  loc_A958AB: ILdPr
  loc_A958AE:  = Form.Controls
  loc_A958B3: FLdZeroAd var_8C
  loc_A958B6: FStAdFuncNoPop
  loc_A958B9: FLdRfVar var_88
  loc_A958BC: ForEachCollAd var_94
  loc_A958C2: ILdRf var_88
  loc_A958C5: CheckType
  loc_A958C9: CVarBoolI2 var_D4
  loc_A958CD: FLdPr var_88
  loc_A958D0: LateMemLdVar
  loc_A958D5: LitVarStr var_A4, "cmdCancelar"
  loc_A958DA: HardType
  loc_A958DB: EqVar var_C4
  loc_A958DF: AndVar var_E4
  loc_A958E3: NotVar var_F4
  loc_A958E7: CBoolVarNull
  loc_A958E9: FFreeVar var_B4 = ""
  loc_A958F0: BranchF loc_A9593A
  loc_A958F3: ILdRf var_88
  loc_A958F6: CheckType
  loc_A958FA: ILdRf var_88
  loc_A958FD: CheckType
  loc_A95901: OrI4
  loc_A95902: ILdRf var_88
  loc_A95905: CheckType
  loc_A95909: OrI4
  loc_A9590A: ILdRf var_88
  loc_A9590D: CheckType
  loc_A95911: OrI4
  loc_A95912: ILdRf var_88
  loc_A95915: CheckType
  loc_A95919: OrI4
  loc_A9591A: ILdRf var_88
  loc_A9591D: CheckType
  loc_A95921: OrI4
  loc_A95922: ILdRf var_88
  loc_A95925: CheckType
  loc_A95929: OrI4
  loc_A9592A: BranchF loc_A9593A
  loc_A9592D: LitVarI2 var_A4, 12
  loc_A95932: PopAdLdVar
  loc_A95933: FLdPr var_88
  loc_A95936: LateMemSt
  loc_A9593A: FLdRfVar var_88
  loc_A9593D: NextEachCollAd var_94
  loc_A95943: ExitProc
End Function

Private Function Proc_272_43_A93498() 'A93498
  'Data Table: 43C408
  loc_A93400: FLdRfVar var_8C
  loc_A93403: ILdPr
  loc_A93406:  = Form.Controls
  loc_A9340B: FLdZeroAd var_8C
  loc_A9340E: FStAdFuncNoPop
  loc_A93411: FLdRfVar var_88
  loc_A93414: ForEachCollAd var_94
  loc_A9341A: ILdRf var_88
  loc_A9341D: CheckType
  loc_A93421: CVarBoolI2 var_D4
  loc_A93425: FLdPr var_88
  loc_A93428: LateMemLdVar
  loc_A9342D: LitVarStr var_A4, "cmdCancelar"
  loc_A93432: HardType
  loc_A93433: EqVar var_C4
  loc_A93437: AndVar var_E4
  loc_A9343B: NotVar var_F4
  loc_A9343F: CBoolVarNull
  loc_A93441: FFreeVar var_B4 = ""
  loc_A93448: BranchF loc_A9348D
  loc_A9344B: ILdRf var_88
  loc_A9344E: CheckType
  loc_A93452: ILdRf var_88
  loc_A93455: CheckType
  loc_A93459: OrI4
  loc_A9345A: ILdRf var_88
  loc_A9345D: CheckType
  loc_A93461: OrI4
  loc_A93462: ILdRf var_88
  loc_A93465: CheckType
  loc_A93469: OrI4
  loc_A9346A: ILdRf var_88
  loc_A9346D: CheckType
  loc_A93471: OrI4
  loc_A93472: ILdRf var_88
  loc_A93475: CheckType
  loc_A93479: OrI4
  loc_A9347A: BranchF loc_A9348D
  loc_A9347D: LitVarI4
  loc_A93485: PopAdLdVar
  loc_A93486: FLdPr var_88
  loc_A93489: LateMemSt
  loc_A9348D: FLdRfVar var_88
  loc_A93490: NextEachCollAd var_94
  loc_A93496: ExitProc
End Function

Private Function Proc_272_44_BEFE94(arg_C) 'BEFE94
  'Data Table: 43C408
  loc_BEF694: ILdRf arg_C
  loc_BEF697: FStStrCopy var_88
  loc_BEF69A: ILdRf var_88
  loc_BEF69D: LitStr vbNullString
  loc_BEF6A0: EqStr
  loc_BEF6A2: BranchF loc_BEF6CF
  loc_BEF6A5: FLdRfVar var_98
  loc_BEF6A8: FLdRfVar var_94
  loc_BEF6AB: LitI4 2
  loc_BEF6B0: FLdRfVar var_8C
  loc_BEF6B3: NewIfNullPr IFileSystem3
  loc_BEF6B6: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_BEF6BB: FLdPr var_94
  loc_BEF6BE:  = Me.Path
  loc_BEF6C3: FLdZeroAd var_98
  loc_BEF6C6: FStStr var_90
  loc_BEF6C9: FFree1Ad var_94
  loc_BEF6CC: Branch loc_BEF6D5
  loc_BEF6CF: ILdRf var_88
  loc_BEF6D2: FStStrCopy var_90
  loc_BEF6D5: FLdRfVar var_98
  loc_BEF6D8: FLdRfVar var_94
  loc_BEF6DB: ImpAdLdRf MemVar_D9C5D8
  loc_BEF6DE: NewIfNullPr Global
  loc_BEF6E1:  = Global.App
  loc_BEF6E6: FLdPr var_94
  loc_BEF6E9:  = App.Path
  loc_BEF6EE: FLdRfVar var_9C
  loc_BEF6F1: LitStr "res0"
  loc_BEF6F4: ILdRf var_98
  loc_BEF6F7: FLdRfVar var_8C
  loc_BEF6FA: NewIfNullPr IFileSystem3
  loc_BEF6FD: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEF702: FLdRfVar var_9E
  loc_BEF705: ILdRf var_9C
  loc_BEF708: FLdRfVar var_8C
  loc_BEF70B: NewIfNullPr IFileSystem3
  loc_BEF70E: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEF713: FLdI2 var_9E
  loc_BEF716: FFreeStr var_98 = ""
  loc_BEF71D: FFree1Ad var_94
  loc_BEF720: BranchF loc_BEF783
  loc_BEF723: FLdRfVar var_98
  loc_BEF726: FLdRfVar var_94
  loc_BEF729: ImpAdLdRf MemVar_D9C5D8
  loc_BEF72C: NewIfNullPr Global
  loc_BEF72F:  = Global.App
  loc_BEF734: FLdPr var_94
  loc_BEF737:  = App.Path
  loc_BEF73C: FLdRfVar var_9C
  loc_BEF73F: LitStr "res0"
  loc_BEF742: ILdRf var_98
  loc_BEF745: FLdRfVar var_8C
  loc_BEF748: NewIfNullPr IFileSystem3
  loc_BEF74B: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEF750: FLdRfVar var_A4
  loc_BEF753: LitStr "l0.gif"
  loc_BEF756: ILdRf var_90
  loc_BEF759: FLdRfVar var_8C
  loc_BEF75C: NewIfNullPr IFileSystem3
  loc_BEF75F: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEF764: LitI2_Byte &HFF
  loc_BEF766: ILdRf var_A4
  loc_BEF769: ILdRf var_9C
  loc_BEF76C: FLdRfVar var_8C
  loc_BEF76F: NewIfNullPr IFileSystem3
  loc_BEF772: from_stack_4 = IFileSystem3.IFileSystem.CopyFile(from_stack_1v, from_stack_2v, from_stack_3b)
  loc_BEF777: FFreeStr var_98 = "": var_9C = ""
  loc_BEF780: FFree1Ad var_94
  loc_BEF783: FLdRfVar var_98
  loc_BEF786: FLdRfVar var_94
  loc_BEF789: ImpAdLdRf MemVar_D9C5D8
  loc_BEF78C: NewIfNullPr Global
  loc_BEF78F:  = Global.App
  loc_BEF794: FLdPr var_94
  loc_BEF797:  = App.Path
  loc_BEF79C: FLdRfVar var_9C
  loc_BEF79F: LitStr "res1"
  loc_BEF7A2: ILdRf var_98
  loc_BEF7A5: FLdRfVar var_8C
  loc_BEF7A8: NewIfNullPr IFileSystem3
  loc_BEF7AB: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEF7B0: FLdRfVar var_9E
  loc_BEF7B3: ILdRf var_9C
  loc_BEF7B6: FLdRfVar var_8C
  loc_BEF7B9: NewIfNullPr IFileSystem3
  loc_BEF7BC: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEF7C1: FLdI2 var_9E
  loc_BEF7C4: FFreeStr var_98 = ""
  loc_BEF7CB: FFree1Ad var_94
  loc_BEF7CE: BranchF loc_BEF831
  loc_BEF7D1: FLdRfVar var_98
  loc_BEF7D4: FLdRfVar var_94
  loc_BEF7D7: ImpAdLdRf MemVar_D9C5D8
  loc_BEF7DA: NewIfNullPr Global
  loc_BEF7DD:  = Global.App
  loc_BEF7E2: FLdPr var_94
  loc_BEF7E5:  = App.Path
  loc_BEF7EA: FLdRfVar var_9C
  loc_BEF7ED: LitStr "res1"
  loc_BEF7F0: ILdRf var_98
  loc_BEF7F3: FLdRfVar var_8C
  loc_BEF7F6: NewIfNullPr IFileSystem3
  loc_BEF7F9: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEF7FE: FLdRfVar var_A4
  loc_BEF801: LitStr "l1.jpg"
  loc_BEF804: ILdRf var_90
  loc_BEF807: FLdRfVar var_8C
  loc_BEF80A: NewIfNullPr IFileSystem3
  loc_BEF80D: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEF812: LitI2_Byte &HFF
  loc_BEF814: ILdRf var_A4
  loc_BEF817: ILdRf var_9C
  loc_BEF81A: FLdRfVar var_8C
  loc_BEF81D: NewIfNullPr IFileSystem3
  loc_BEF820: from_stack_4 = IFileSystem3.IFileSystem.CopyFile(from_stack_1v, from_stack_2v, from_stack_3b)
  loc_BEF825: FFreeStr var_98 = "": var_9C = ""
  loc_BEF82E: FFree1Ad var_94
  loc_BEF831: FLdRfVar var_98
  loc_BEF834: FLdRfVar var_94
  loc_BEF837: ImpAdLdRf MemVar_D9C5D8
  loc_BEF83A: NewIfNullPr Global
  loc_BEF83D:  = Global.App
  loc_BEF842: FLdPr var_94
  loc_BEF845:  = App.Path
  loc_BEF84A: FLdRfVar var_9C
  loc_BEF84D: LitStr "res2"
  loc_BEF850: ILdRf var_98
  loc_BEF853: FLdRfVar var_8C
  loc_BEF856: NewIfNullPr IFileSystem3
  loc_BEF859: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEF85E: FLdRfVar var_9E
  loc_BEF861: ILdRf var_9C
  loc_BEF864: FLdRfVar var_8C
  loc_BEF867: NewIfNullPr IFileSystem3
  loc_BEF86A: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEF86F: FLdI2 var_9E
  loc_BEF872: FFreeStr var_98 = ""
  loc_BEF879: FFree1Ad var_94
  loc_BEF87C: BranchF loc_BEF8DF
  loc_BEF87F: FLdRfVar var_98
  loc_BEF882: FLdRfVar var_94
  loc_BEF885: ImpAdLdRf MemVar_D9C5D8
  loc_BEF888: NewIfNullPr Global
  loc_BEF88B:  = Global.App
  loc_BEF890: FLdPr var_94
  loc_BEF893:  = App.Path
  loc_BEF898: FLdRfVar var_9C
  loc_BEF89B: LitStr "res2"
  loc_BEF89E: ILdRf var_98
  loc_BEF8A1: FLdRfVar var_8C
  loc_BEF8A4: NewIfNullPr IFileSystem3
  loc_BEF8A7: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEF8AC: FLdRfVar var_A4
  loc_BEF8AF: LitStr "l2.jpg"
  loc_BEF8B2: ILdRf var_90
  loc_BEF8B5: FLdRfVar var_8C
  loc_BEF8B8: NewIfNullPr IFileSystem3
  loc_BEF8BB: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEF8C0: LitI2_Byte &HFF
  loc_BEF8C2: ILdRf var_A4
  loc_BEF8C5: ILdRf var_9C
  loc_BEF8C8: FLdRfVar var_8C
  loc_BEF8CB: NewIfNullPr IFileSystem3
  loc_BEF8CE: from_stack_4 = IFileSystem3.IFileSystem.CopyFile(from_stack_1v, from_stack_2v, from_stack_3b)
  loc_BEF8D3: FFreeStr var_98 = "": var_9C = ""
  loc_BEF8DC: FFree1Ad var_94
  loc_BEF8DF: FLdRfVar var_98
  loc_BEF8E2: FLdRfVar var_94
  loc_BEF8E5: ImpAdLdRf MemVar_D9C5D8
  loc_BEF8E8: NewIfNullPr Global
  loc_BEF8EB:  = Global.App
  loc_BEF8F0: FLdPr var_94
  loc_BEF8F3:  = App.Path
  loc_BEF8F8: FLdRfVar var_9C
  loc_BEF8FB: LitStr "res3"
  loc_BEF8FE: ILdRf var_98
  loc_BEF901: FLdRfVar var_8C
  loc_BEF904: NewIfNullPr IFileSystem3
  loc_BEF907: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEF90C: FLdRfVar var_9E
  loc_BEF90F: ILdRf var_9C
  loc_BEF912: FLdRfVar var_8C
  loc_BEF915: NewIfNullPr IFileSystem3
  loc_BEF918: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEF91D: FLdI2 var_9E
  loc_BEF920: FFreeStr var_98 = ""
  loc_BEF927: FFree1Ad var_94
  loc_BEF92A: BranchF loc_BEF98D
  loc_BEF92D: FLdRfVar var_98
  loc_BEF930: FLdRfVar var_94
  loc_BEF933: ImpAdLdRf MemVar_D9C5D8
  loc_BEF936: NewIfNullPr Global
  loc_BEF939:  = Global.App
  loc_BEF93E: FLdPr var_94
  loc_BEF941:  = App.Path
  loc_BEF946: FLdRfVar var_9C
  loc_BEF949: LitStr "res3"
  loc_BEF94C: ILdRf var_98
  loc_BEF94F: FLdRfVar var_8C
  loc_BEF952: NewIfNullPr IFileSystem3
  loc_BEF955: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEF95A: FLdRfVar var_A4
  loc_BEF95D: LitStr "l3.jpg"
  loc_BEF960: ILdRf var_90
  loc_BEF963: FLdRfVar var_8C
  loc_BEF966: NewIfNullPr IFileSystem3
  loc_BEF969: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEF96E: LitI2_Byte &HFF
  loc_BEF970: ILdRf var_A4
  loc_BEF973: ILdRf var_9C
  loc_BEF976: FLdRfVar var_8C
  loc_BEF979: NewIfNullPr IFileSystem3
  loc_BEF97C: from_stack_4 = IFileSystem3.IFileSystem.CopyFile(from_stack_1v, from_stack_2v, from_stack_3b)
  loc_BEF981: FFreeStr var_98 = "": var_9C = ""
  loc_BEF98A: FFree1Ad var_94
  loc_BEF98D: FLdRfVar var_98
  loc_BEF990: FLdRfVar var_94
  loc_BEF993: ImpAdLdRf MemVar_D9C5D8
  loc_BEF996: NewIfNullPr Global
  loc_BEF999:  = Global.App
  loc_BEF99E: FLdPr var_94
  loc_BEF9A1:  = App.Path
  loc_BEF9A6: FLdRfVar var_9C
  loc_BEF9A9: LitStr "res4"
  loc_BEF9AC: ILdRf var_98
  loc_BEF9AF: FLdRfVar var_8C
  loc_BEF9B2: NewIfNullPr IFileSystem3
  loc_BEF9B5: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEF9BA: FLdRfVar var_9E
  loc_BEF9BD: ILdRf var_9C
  loc_BEF9C0: FLdRfVar var_8C
  loc_BEF9C3: NewIfNullPr IFileSystem3
  loc_BEF9C6: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEF9CB: FLdI2 var_9E
  loc_BEF9CE: FFreeStr var_98 = ""
  loc_BEF9D5: FFree1Ad var_94
  loc_BEF9D8: BranchF loc_BEFA3B
  loc_BEF9DB: FLdRfVar var_98
  loc_BEF9DE: FLdRfVar var_94
  loc_BEF9E1: ImpAdLdRf MemVar_D9C5D8
  loc_BEF9E4: NewIfNullPr Global
  loc_BEF9E7:  = Global.App
  loc_BEF9EC: FLdPr var_94
  loc_BEF9EF:  = App.Path
  loc_BEF9F4: FLdRfVar var_9C
  loc_BEF9F7: LitStr "res4"
  loc_BEF9FA: ILdRf var_98
  loc_BEF9FD: FLdRfVar var_8C
  loc_BEFA00: NewIfNullPr IFileSystem3
  loc_BEFA03: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFA08: FLdRfVar var_A4
  loc_BEFA0B: LitStr "l4.jpg"
  loc_BEFA0E: ILdRf var_90
  loc_BEFA11: FLdRfVar var_8C
  loc_BEFA14: NewIfNullPr IFileSystem3
  loc_BEFA17: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFA1C: LitI2_Byte &HFF
  loc_BEFA1E: ILdRf var_A4
  loc_BEFA21: ILdRf var_9C
  loc_BEFA24: FLdRfVar var_8C
  loc_BEFA27: NewIfNullPr IFileSystem3
  loc_BEFA2A: from_stack_4 = IFileSystem3.IFileSystem.CopyFile(from_stack_1v, from_stack_2v, from_stack_3b)
  loc_BEFA2F: FFreeStr var_98 = "": var_9C = ""
  loc_BEFA38: FFree1Ad var_94
  loc_BEFA3B: FLdRfVar var_98
  loc_BEFA3E: FLdRfVar var_94
  loc_BEFA41: ImpAdLdRf MemVar_D9C5D8
  loc_BEFA44: NewIfNullPr Global
  loc_BEFA47:  = Global.App
  loc_BEFA4C: FLdPr var_94
  loc_BEFA4F:  = App.Path
  loc_BEFA54: FLdRfVar var_9C
  loc_BEFA57: LitStr "res5"
  loc_BEFA5A: ILdRf var_98
  loc_BEFA5D: FLdRfVar var_8C
  loc_BEFA60: NewIfNullPr IFileSystem3
  loc_BEFA63: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFA68: FLdRfVar var_9E
  loc_BEFA6B: ILdRf var_9C
  loc_BEFA6E: FLdRfVar var_8C
  loc_BEFA71: NewIfNullPr IFileSystem3
  loc_BEFA74: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEFA79: FLdI2 var_9E
  loc_BEFA7C: FFreeStr var_98 = ""
  loc_BEFA83: FFree1Ad var_94
  loc_BEFA86: BranchF loc_BEFAE9
  loc_BEFA89: FLdRfVar var_98
  loc_BEFA8C: FLdRfVar var_94
  loc_BEFA8F: ImpAdLdRf MemVar_D9C5D8
  loc_BEFA92: NewIfNullPr Global
  loc_BEFA95:  = Global.App
  loc_BEFA9A: FLdPr var_94
  loc_BEFA9D:  = App.Path
  loc_BEFAA2: FLdRfVar var_9C
  loc_BEFAA5: LitStr "res5"
  loc_BEFAA8: ILdRf var_98
  loc_BEFAAB: FLdRfVar var_8C
  loc_BEFAAE: NewIfNullPr IFileSystem3
  loc_BEFAB1: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFAB6: FLdRfVar var_A4
  loc_BEFAB9: LitStr "l5.jpg"
  loc_BEFABC: ILdRf var_90
  loc_BEFABF: FLdRfVar var_8C
  loc_BEFAC2: NewIfNullPr IFileSystem3
  loc_BEFAC5: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFACA: LitI2_Byte &HFF
  loc_BEFACC: ILdRf var_A4
  loc_BEFACF: ILdRf var_9C
  loc_BEFAD2: FLdRfVar var_8C
  loc_BEFAD5: NewIfNullPr IFileSystem3
  loc_BEFAD8: from_stack_4 = IFileSystem3.IFileSystem.CopyFile(from_stack_1v, from_stack_2v, from_stack_3b)
  loc_BEFADD: FFreeStr var_98 = "": var_9C = ""
  loc_BEFAE6: FFree1Ad var_94
  loc_BEFAE9: FLdRfVar var_98
  loc_BEFAEC: FLdRfVar var_94
  loc_BEFAEF: ImpAdLdRf MemVar_D9C5D8
  loc_BEFAF2: NewIfNullPr Global
  loc_BEFAF5:  = Global.App
  loc_BEFAFA: FLdPr var_94
  loc_BEFAFD:  = App.Path
  loc_BEFB02: FLdRfVar var_9C
  loc_BEFB05: LitStr "res6"
  loc_BEFB08: ILdRf var_98
  loc_BEFB0B: FLdRfVar var_8C
  loc_BEFB0E: NewIfNullPr IFileSystem3
  loc_BEFB11: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFB16: FLdRfVar var_9E
  loc_BEFB19: ILdRf var_9C
  loc_BEFB1C: FLdRfVar var_8C
  loc_BEFB1F: NewIfNullPr IFileSystem3
  loc_BEFB22: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEFB27: FLdI2 var_9E
  loc_BEFB2A: FFreeStr var_98 = ""
  loc_BEFB31: FFree1Ad var_94
  loc_BEFB34: BranchF loc_BEFB97
  loc_BEFB37: FLdRfVar var_98
  loc_BEFB3A: FLdRfVar var_94
  loc_BEFB3D: ImpAdLdRf MemVar_D9C5D8
  loc_BEFB40: NewIfNullPr Global
  loc_BEFB43:  = Global.App
  loc_BEFB48: FLdPr var_94
  loc_BEFB4B:  = App.Path
  loc_BEFB50: FLdRfVar var_9C
  loc_BEFB53: LitStr "res6"
  loc_BEFB56: ILdRf var_98
  loc_BEFB59: FLdRfVar var_8C
  loc_BEFB5C: NewIfNullPr IFileSystem3
  loc_BEFB5F: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFB64: FLdRfVar var_A4
  loc_BEFB67: LitStr "l6.jpg"
  loc_BEFB6A: ILdRf var_90
  loc_BEFB6D: FLdRfVar var_8C
  loc_BEFB70: NewIfNullPr IFileSystem3
  loc_BEFB73: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFB78: LitI2_Byte &HFF
  loc_BEFB7A: ILdRf var_A4
  loc_BEFB7D: ILdRf var_9C
  loc_BEFB80: FLdRfVar var_8C
  loc_BEFB83: NewIfNullPr IFileSystem3
  loc_BEFB86: from_stack_4 = IFileSystem3.IFileSystem.CopyFile(from_stack_1v, from_stack_2v, from_stack_3b)
  loc_BEFB8B: FFreeStr var_98 = "": var_9C = ""
  loc_BEFB94: FFree1Ad var_94
  loc_BEFB97: FLdRfVar var_98
  loc_BEFB9A: FLdRfVar var_94
  loc_BEFB9D: ImpAdLdRf MemVar_D9C5D8
  loc_BEFBA0: NewIfNullPr Global
  loc_BEFBA3:  = Global.App
  loc_BEFBA8: FLdPr var_94
  loc_BEFBAB:  = App.Path
  loc_BEFBB0: FLdRfVar var_9C
  loc_BEFBB3: LitStr "res6"
  loc_BEFBB6: ILdRf var_98
  loc_BEFBB9: FLdRfVar var_8C
  loc_BEFBBC: NewIfNullPr IFileSystem3
  loc_BEFBBF: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFBC4: FLdRfVar var_9E
  loc_BEFBC7: ILdRf var_9C
  loc_BEFBCA: FLdRfVar var_8C
  loc_BEFBCD: NewIfNullPr IFileSystem3
  loc_BEFBD0: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEFBD5: FLdI2 var_9E
  loc_BEFBD8: FFreeStr var_98 = ""
  loc_BEFBDF: FFree1Ad var_94
  loc_BEFBE2: BranchF loc_BEFC45
  loc_BEFBE5: FLdRfVar var_98
  loc_BEFBE8: FLdRfVar var_94
  loc_BEFBEB: ImpAdLdRf MemVar_D9C5D8
  loc_BEFBEE: NewIfNullPr Global
  loc_BEFBF1:  = Global.App
  loc_BEFBF6: FLdPr var_94
  loc_BEFBF9:  = App.Path
  loc_BEFBFE: FLdRfVar var_9C
  loc_BEFC01: LitStr "res7"
  loc_BEFC04: ILdRf var_98
  loc_BEFC07: FLdRfVar var_8C
  loc_BEFC0A: NewIfNullPr IFileSystem3
  loc_BEFC0D: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFC12: FLdRfVar var_A4
  loc_BEFC15: LitStr "l7.jpg"
  loc_BEFC18: ILdRf var_90
  loc_BEFC1B: FLdRfVar var_8C
  loc_BEFC1E: NewIfNullPr IFileSystem3
  loc_BEFC21: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFC26: LitI2_Byte &HFF
  loc_BEFC28: ILdRf var_A4
  loc_BEFC2B: ILdRf var_9C
  loc_BEFC2E: FLdRfVar var_8C
  loc_BEFC31: NewIfNullPr IFileSystem3
  loc_BEFC34: from_stack_4 = IFileSystem3.IFileSystem.CopyFile(from_stack_1v, from_stack_2v, from_stack_3b)
  loc_BEFC39: FFreeStr var_98 = "": var_9C = ""
  loc_BEFC42: FFree1Ad var_94
  loc_BEFC45: FLdRfVar var_98
  loc_BEFC48: LitStr "l0.gif"
  loc_BEFC4B: ILdRf var_90
  loc_BEFC4E: FLdRfVar var_8C
  loc_BEFC51: NewIfNullPr IFileSystem3
  loc_BEFC54: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFC59: FLdRfVar var_9C
  loc_BEFC5C: LitStr "l1.jpg"
  loc_BEFC5F: ILdRf var_90
  loc_BEFC62: FLdRfVar var_8C
  loc_BEFC65: NewIfNullPr IFileSystem3
  loc_BEFC68: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFC6D: FLdRfVar var_A4
  loc_BEFC70: LitStr "l2.jpg"
  loc_BEFC73: ILdRf var_90
  loc_BEFC76: FLdRfVar var_8C
  loc_BEFC79: NewIfNullPr IFileSystem3
  loc_BEFC7C: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFC81: FLdRfVar var_AC
  loc_BEFC84: LitStr "l3.jpg"
  loc_BEFC87: ILdRf var_90
  loc_BEFC8A: FLdRfVar var_8C
  loc_BEFC8D: NewIfNullPr IFileSystem3
  loc_BEFC90: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFC95: FLdRfVar var_B4
  loc_BEFC98: LitStr "l4.jpg"
  loc_BEFC9B: ILdRf var_90
  loc_BEFC9E: FLdRfVar var_8C
  loc_BEFCA1: NewIfNullPr IFileSystem3
  loc_BEFCA4: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFCA9: FLdRfVar var_BC
  loc_BEFCAC: LitStr "l5.jpg"
  loc_BEFCAF: ILdRf var_90
  loc_BEFCB2: FLdRfVar var_8C
  loc_BEFCB5: NewIfNullPr IFileSystem3
  loc_BEFCB8: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFCBD: FLdRfVar var_C4
  loc_BEFCC0: FLdRfVar var_94
  loc_BEFCC3: ImpAdLdRf MemVar_D9C5D8
  loc_BEFCC6: NewIfNullPr Global
  loc_BEFCC9:  = Global.App
  loc_BEFCCE: FLdPr var_94
  loc_BEFCD1:  = App.Path
  loc_BEFCD6: FLdRfVar var_C8
  loc_BEFCD9: LitStr "res6"
  loc_BEFCDC: ILdRf var_C4
  loc_BEFCDF: FLdRfVar var_8C
  loc_BEFCE2: NewIfNullPr IFileSystem3
  loc_BEFCE5: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFCEA: FLdRfVar var_CA
  loc_BEFCED: ILdRf var_C8
  loc_BEFCF0: FLdRfVar var_8C
  loc_BEFCF3: NewIfNullPr IFileSystem3
  loc_BEFCF6: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEFCFB: FLdRfVar var_D0
  loc_BEFCFE: LitStr "l6.jpg"
  loc_BEFD01: ILdRf var_90
  loc_BEFD04: FLdRfVar var_8C
  loc_BEFD07: NewIfNullPr IFileSystem3
  loc_BEFD0A: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFD0F: FLdRfVar var_D2
  loc_BEFD12: ILdRf var_D0
  loc_BEFD15: FLdRfVar var_8C
  loc_BEFD18: NewIfNullPr IFileSystem3
  loc_BEFD1B: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEFD20: FLdRfVar var_14C
  loc_BEFD23: FLdRfVar var_148
  loc_BEFD26: ImpAdLdRf MemVar_D9C5D8
  loc_BEFD29: NewIfNullPr Global
  loc_BEFD2C:  = Global.App
  loc_BEFD31: FLdPr var_148
  loc_BEFD34:  = App.Path
  loc_BEFD39: FLdRfVar var_150
  loc_BEFD3C: LitStr "res7"
  loc_BEFD3F: ILdRf var_14C
  loc_BEFD42: FLdRfVar var_8C
  loc_BEFD45: NewIfNullPr IFileSystem3
  loc_BEFD48: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFD4D: FLdRfVar var_152
  loc_BEFD50: ILdRf var_150
  loc_BEFD53: FLdRfVar var_8C
  loc_BEFD56: NewIfNullPr IFileSystem3
  loc_BEFD59: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEFD5E: FLdRfVar var_158
  loc_BEFD61: LitStr "l7.jpg"
  loc_BEFD64: ILdRf var_90
  loc_BEFD67: FLdRfVar var_8C
  loc_BEFD6A: NewIfNullPr IFileSystem3
  loc_BEFD6D: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BEFD72: FLdRfVar var_15A
  loc_BEFD75: ILdRf var_158
  loc_BEFD78: FLdRfVar var_8C
  loc_BEFD7B: NewIfNullPr IFileSystem3
  loc_BEFD7E: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEFD83: FLdRfVar var_9E
  loc_BEFD86: ILdRf var_98
  loc_BEFD89: FLdRfVar var_8C
  loc_BEFD8C: NewIfNullPr IFileSystem3
  loc_BEFD8F: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEFD94: FLdI2 var_9E
  loc_BEFD97: FLdRfVar var_A6
  loc_BEFD9A: ILdRf var_9C
  loc_BEFD9D: FLdRfVar var_8C
  loc_BEFDA0: NewIfNullPr IFileSystem3
  loc_BEFDA3: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEFDA8: FLdI2 var_A6
  loc_BEFDAB: AndI4
  loc_BEFDAC: FLdRfVar var_A8
  loc_BEFDAF: ILdRf var_A4
  loc_BEFDB2: FLdRfVar var_8C
  loc_BEFDB5: NewIfNullPr IFileSystem3
  loc_BEFDB8: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEFDBD: FLdI2 var_A8
  loc_BEFDC0: AndI4
  loc_BEFDC1: FLdRfVar var_AE
  loc_BEFDC4: ILdRf var_AC
  loc_BEFDC7: FLdRfVar var_8C
  loc_BEFDCA: NewIfNullPr IFileSystem3
  loc_BEFDCD: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEFDD2: FLdI2 var_AE
  loc_BEFDD5: AndI4
  loc_BEFDD6: FLdRfVar var_B6
  loc_BEFDD9: ILdRf var_B4
  loc_BEFDDC: FLdRfVar var_8C
  loc_BEFDDF: NewIfNullPr IFileSystem3
  loc_BEFDE2: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEFDE7: FLdI2 var_B6
  loc_BEFDEA: AndI4
  loc_BEFDEB: FLdRfVar var_BE
  loc_BEFDEE: ILdRf var_BC
  loc_BEFDF1: FLdRfVar var_8C
  loc_BEFDF4: NewIfNullPr IFileSystem3
  loc_BEFDF7: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BEFDFC: FLdI2 var_BE
  loc_BEFDFF: AndI4
  loc_BEFE00: CVarBoolI2 var_134
  loc_BEFE04: LitVar_TRUE var_114
  loc_BEFE07: FLdI2 var_D2
  loc_BEFE0A: CVarBoolI2 var_F4
  loc_BEFE0E: FLdI2 var_CA
  loc_BEFE11: CVarBoolI2 var_E4
  loc_BEFE15: FLdRfVar var_124
  loc_BEFE18: ImpAdCallFPR4  = IIf(, , )
  loc_BEFE1D: FLdRfVar var_124
  loc_BEFE20: AndVar var_144
  loc_BEFE24: LitVar_TRUE var_19C
  loc_BEFE27: FLdI2 var_15A
  loc_BEFE2A: CVarBoolI2 var_17C
  loc_BEFE2E: FLdI2 var_152
  loc_BEFE31: CVarBoolI2 var_16C
  loc_BEFE35: FLdRfVar var_1AC
  loc_BEFE38: ImpAdCallFPR4  = IIf(, , )
  loc_BEFE3D: FLdRfVar var_1AC
  loc_BEFE40: AndVar var_1BC
  loc_BEFE44: CBoolVarNull
  loc_BEFE46: NotI4
  loc_BEFE47: FFreeStr var_98 = "": var_9C = "": var_A4 = "": var_AC = "": var_B4 = "": var_BC = "": var_C4 = "": var_C8 = "": var_D0 = "": var_14C = "": var_150 = ""
  loc_BEFE62: FFreeAd var_94 = ""
  loc_BEFE69: FFreeVar var_E4 = "": var_F4 = "": var_114 = "": var_134 = "": var_124 = "": var_16C = "": var_17C = "": var_19C = ""
  loc_BEFE7E: BranchF loc_BEFE89
  loc_BEFE81: ImpAdCallFPR4 DoEvents()
  loc_BEFE86: Branch loc_BEFC45
  loc_BEFE89: LitNothing
  loc_BEFE8B: CastAd
  loc_BEFE8E: FStAdFunc var_8C
  loc_BEFE91: ExitProc
End Function

Private Function Proc_272_45_B529C8() 'B529C8
  'Data Table: 43C408
  loc_B52614: OnErrorGoto loc_B52925
  loc_B52619: FLdRfVar var_94
  loc_B5261C: FLdRfVar var_90
  loc_B5261F: LitI4 2
  loc_B52624: FLdRfVar var_88
  loc_B52627: NewIfNullPr IFileSystem3
  loc_B5262A: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_B5262F: FLdPr var_90
  loc_B52632:  = Me.Path
  loc_B52637: FLdZeroAd var_94
  loc_B5263A: FStStr var_8C
  loc_B5263D: FFree1Ad var_90
  loc_B52642: FLdRfVar var_96
  loc_B52645: ImpAdLdI4 MemVar_D93C84
  loc_B52648: FLdRfVar var_88
  loc_B5264B: NewIfNullPr IFileSystem3
  loc_B5264E: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B52653: FLdI2 var_96
  loc_B52656: BranchF loc_B5266B
  loc_B5265B: LitI2_Byte &HFF
  loc_B5265D: ImpAdLdI4 MemVar_D93C84
  loc_B52660: FLdRfVar var_88
  loc_B52663: NewIfNullPr IFileSystem3
  loc_B52666: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_B5266D: FLdRfVar var_94
  loc_B52670: LitStr "l0.gif"
  loc_B52673: ILdRf var_8C
  loc_B52676: FLdRfVar var_88
  loc_B52679: NewIfNullPr IFileSystem3
  loc_B5267C: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B52681: FLdRfVar var_96
  loc_B52684: ILdRf var_94
  loc_B52687: FLdRfVar var_88
  loc_B5268A: NewIfNullPr IFileSystem3
  loc_B5268D: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B52692: FLdI2 var_96
  loc_B52695: FFree1Str var_94
  loc_B52698: BranchF loc_B526C4
  loc_B5269D: FLdRfVar var_94
  loc_B526A0: LitStr "l0.gif"
  loc_B526A3: ILdRf var_8C
  loc_B526A6: FLdRfVar var_88
  loc_B526A9: NewIfNullPr IFileSystem3
  loc_B526AC: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B526B1: LitI2_Byte &HFF
  loc_B526B3: ILdRf var_94
  loc_B526B6: FLdRfVar var_88
  loc_B526B9: NewIfNullPr IFileSystem3
  loc_B526BC: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_B526C1: FFree1Str var_94
  loc_B526C6: FLdRfVar var_94
  loc_B526C9: LitStr "l1.jpg"
  loc_B526CC: ILdRf var_8C
  loc_B526CF: FLdRfVar var_88
  loc_B526D2: NewIfNullPr IFileSystem3
  loc_B526D5: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B526DA: FLdRfVar var_96
  loc_B526DD: ILdRf var_94
  loc_B526E0: FLdRfVar var_88
  loc_B526E3: NewIfNullPr IFileSystem3
  loc_B526E6: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B526EB: FLdI2 var_96
  loc_B526EE: FFree1Str var_94
  loc_B526F1: BranchF loc_B5271D
  loc_B526F6: FLdRfVar var_94
  loc_B526F9: LitStr "l1.jpg"
  loc_B526FC: ILdRf var_8C
  loc_B526FF: FLdRfVar var_88
  loc_B52702: NewIfNullPr IFileSystem3
  loc_B52705: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B5270A: LitI2_Byte &HFF
  loc_B5270C: ILdRf var_94
  loc_B5270F: FLdRfVar var_88
  loc_B52712: NewIfNullPr IFileSystem3
  loc_B52715: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_B5271A: FFree1Str var_94
  loc_B5271F: FLdRfVar var_94
  loc_B52722: LitStr "l2.jpg"
  loc_B52725: ILdRf var_8C
  loc_B52728: FLdRfVar var_88
  loc_B5272B: NewIfNullPr IFileSystem3
  loc_B5272E: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B52733: FLdRfVar var_96
  loc_B52736: ILdRf var_94
  loc_B52739: FLdRfVar var_88
  loc_B5273C: NewIfNullPr IFileSystem3
  loc_B5273F: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B52744: FLdI2 var_96
  loc_B52747: FFree1Str var_94
  loc_B5274A: BranchF loc_B52776
  loc_B5274F: FLdRfVar var_94
  loc_B52752: LitStr "l2.jpg"
  loc_B52755: ILdRf var_8C
  loc_B52758: FLdRfVar var_88
  loc_B5275B: NewIfNullPr IFileSystem3
  loc_B5275E: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B52763: LitI2_Byte &HFF
  loc_B52765: ILdRf var_94
  loc_B52768: FLdRfVar var_88
  loc_B5276B: NewIfNullPr IFileSystem3
  loc_B5276E: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_B52773: FFree1Str var_94
  loc_B52778: FLdRfVar var_94
  loc_B5277B: LitStr "l3.jpg"
  loc_B5277E: ILdRf var_8C
  loc_B52781: FLdRfVar var_88
  loc_B52784: NewIfNullPr IFileSystem3
  loc_B52787: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B5278C: FLdRfVar var_96
  loc_B5278F: ILdRf var_94
  loc_B52792: FLdRfVar var_88
  loc_B52795: NewIfNullPr IFileSystem3
  loc_B52798: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B5279D: FLdI2 var_96
  loc_B527A0: FFree1Str var_94
  loc_B527A3: BranchF loc_B527CF
  loc_B527A8: FLdRfVar var_94
  loc_B527AB: LitStr "l3.jpg"
  loc_B527AE: ILdRf var_8C
  loc_B527B1: FLdRfVar var_88
  loc_B527B4: NewIfNullPr IFileSystem3
  loc_B527B7: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B527BC: LitI2_Byte &HFF
  loc_B527BE: ILdRf var_94
  loc_B527C1: FLdRfVar var_88
  loc_B527C4: NewIfNullPr IFileSystem3
  loc_B527C7: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_B527CC: FFree1Str var_94
  loc_B527D1: FLdRfVar var_94
  loc_B527D4: LitStr "l4.jpg"
  loc_B527D7: ILdRf var_8C
  loc_B527DA: FLdRfVar var_88
  loc_B527DD: NewIfNullPr IFileSystem3
  loc_B527E0: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B527E5: FLdRfVar var_96
  loc_B527E8: ILdRf var_94
  loc_B527EB: FLdRfVar var_88
  loc_B527EE: NewIfNullPr IFileSystem3
  loc_B527F1: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B527F6: FLdI2 var_96
  loc_B527F9: FFree1Str var_94
  loc_B527FC: BranchF loc_B52828
  loc_B52801: FLdRfVar var_94
  loc_B52804: LitStr "l4.jpg"
  loc_B52807: ILdRf var_8C
  loc_B5280A: FLdRfVar var_88
  loc_B5280D: NewIfNullPr IFileSystem3
  loc_B52810: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B52815: LitI2_Byte &HFF
  loc_B52817: ILdRf var_94
  loc_B5281A: FLdRfVar var_88
  loc_B5281D: NewIfNullPr IFileSystem3
  loc_B52820: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_B52825: FFree1Str var_94
  loc_B5282A: FLdRfVar var_94
  loc_B5282D: LitStr "l5.jpg"
  loc_B52830: ILdRf var_8C
  loc_B52833: FLdRfVar var_88
  loc_B52836: NewIfNullPr IFileSystem3
  loc_B52839: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B5283E: FLdRfVar var_96
  loc_B52841: ILdRf var_94
  loc_B52844: FLdRfVar var_88
  loc_B52847: NewIfNullPr IFileSystem3
  loc_B5284A: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B5284F: FLdI2 var_96
  loc_B52852: FFree1Str var_94
  loc_B52855: BranchF loc_B52881
  loc_B5285A: FLdRfVar var_94
  loc_B5285D: LitStr "l5.jpg"
  loc_B52860: ILdRf var_8C
  loc_B52863: FLdRfVar var_88
  loc_B52866: NewIfNullPr IFileSystem3
  loc_B52869: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B5286E: LitI2_Byte &HFF
  loc_B52870: ILdRf var_94
  loc_B52873: FLdRfVar var_88
  loc_B52876: NewIfNullPr IFileSystem3
  loc_B52879: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_B5287E: FFree1Str var_94
  loc_B52883: FLdRfVar var_94
  loc_B52886: LitStr "l6.jpg"
  loc_B52889: ILdRf var_8C
  loc_B5288C: FLdRfVar var_88
  loc_B5288F: NewIfNullPr IFileSystem3
  loc_B52892: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B52897: FLdRfVar var_96
  loc_B5289A: ILdRf var_94
  loc_B5289D: FLdRfVar var_88
  loc_B528A0: NewIfNullPr IFileSystem3
  loc_B528A3: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B528A8: FLdI2 var_96
  loc_B528AB: FFree1Str var_94
  loc_B528AE: BranchF loc_B528DA
  loc_B528B3: FLdRfVar var_94
  loc_B528B6: LitStr "l6.jpg"
  loc_B528B9: ILdRf var_8C
  loc_B528BC: FLdRfVar var_88
  loc_B528BF: NewIfNullPr IFileSystem3
  loc_B528C2: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B528C7: LitI2_Byte &HFF
  loc_B528C9: ILdRf var_94
  loc_B528CC: FLdRfVar var_88
  loc_B528CF: NewIfNullPr IFileSystem3
  loc_B528D2: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_B528D7: FFree1Str var_94
  loc_B528DC: FLdRfVar var_94
  loc_B528DF: LitStr "CT*.gif"
  loc_B528E2: ILdRf var_8C
  loc_B528E5: FLdRfVar var_88
  loc_B528E8: NewIfNullPr IFileSystem3
  loc_B528EB: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B528F0: FLdZeroAd var_94
  loc_B528F3: CVarStr var_A8
  loc_B528F6: ImpAdCallFPR4 Kill 
  loc_B528FB: FFree1Var var_A8 = ""
  loc_B52900: FLdRfVar var_94
  loc_B52903: LitStr "CB*.gif"
  loc_B52906: ILdRf var_8C
  loc_B52909: FLdRfVar var_88
  loc_B5290C: NewIfNullPr IFileSystem3
  loc_B5290F: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B52914: FLdZeroAd var_94
  loc_B52917: CVarStr var_A8
  loc_B5291A: ImpAdCallFPR4 Kill 
  loc_B5291F: FFree1Var var_A8 = ""
  loc_B52924: ExitProc
  loc_B52927: FLdRfVar var_AC
  loc_B5292A: ImpAdCallI2 Err 'rtcErrObj
  loc_B5292F: FStAdFunc var_90
  loc_B52932: FLdPr var_90
  loc_B52935:  = Err.Number
  loc_B5293A: ILdRf var_AC
  loc_B5293D: LitI4 &H35
  loc_B52942: EqI4
  loc_B52943: FLdRfVar var_B4
  loc_B52946: ImpAdCallI2 Err 'rtcErrObj
  loc_B5294B: FStAdFunc var_B0
  loc_B5294E: FLdPr var_B0
  loc_B52951:  = Err.Number
  loc_B52956: ILdRf var_B4
  loc_B52959: LitI4 &H37
  loc_B5295E: EqI4
  loc_B5295F: OrI4
  loc_B52960: FFreeAd var_90 = ""
  loc_B52967: BranchF loc_B52970
  loc_B5296C: Resume
  loc_B52972: FLdRfVar var_AC
  loc_B52975: ImpAdCallI2 Err 'rtcErrObj
  loc_B5297A: FStAdFunc var_90
  loc_B5297D: FLdPr var_90
  loc_B52980:  = Err.Number
  loc_B52985: ILdRf var_AC
  loc_B52988: CStrI4
  loc_B5298A: FStStrNoPop var_94
  loc_B5298D: LitStr ": "
  loc_B52990: ConcatStr
  loc_B52991: FStStrNoPop var_BC
  loc_B52994: FLdRfVar var_B8
  loc_B52997: ImpAdCallI2 Err 'rtcErrObj
  loc_B5299C: FStAdFunc var_B0
  loc_B5299F: FLdPr var_B0
  loc_B529A2:  = Err.Description
  loc_B529A7: ILdRf var_B8
  loc_B529AA: ConcatStr
  loc_B529AB: FStStrNoPop var_C0
  loc_B529AE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B529B3: FFreeStr var_94 = "": var_BC = "": var_B8 = ""
  loc_B529BE: FFreeAd var_90 = ""
  loc_B529C7: ExitProc
End Function

Private Function Proc_272_46_B065FC(arg_10) 'B065FC
  'Data Table: 43C408
  loc_B06420: FLdRfVar var_94
  loc_B06423: FLdRfVar var_90
  loc_B06426: LitI4 2
  loc_B0642B: FLdRfVar var_88
  loc_B0642E: NewIfNullPr IFileSystem3
  loc_B06431: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_B06436: FLdPr var_90
  loc_B06439:  = Me.Path
  loc_B0643E: FLdZeroAd var_94
  loc_B06441: FStStr var_8C
  loc_B06444: FFree1Ad var_90
  loc_B06447: FLdI2 arg_10
  loc_B0644A: BranchF loc_B06561
  loc_B0644D: LitVarStr var_B4, "del /F "
  loc_B06452: LitI4 &H22
  loc_B06457: FLdRfVar var_A4
  loc_B0645A: ImpAdCallFPR4  = Chr()
  loc_B0645F: FLdRfVar var_A4
  loc_B06462: ConcatVar var_C4
  loc_B06466: ILdRf var_8C
  loc_B06469: CVarStr var_D4
  loc_B0646C: ConcatVar var_E4
  loc_B06470: LitVarStr var_F4, "\*.rep"
  loc_B06475: ConcatVar var_104
  loc_B06479: LitI4 &H22
  loc_B0647E: FLdRfVar var_114
  loc_B06481: ImpAdCallFPR4  = Chr()
  loc_B06486: FLdRfVar var_114
  loc_B06489: ConcatVar var_124
  loc_B0648D: CStrVarVal var_94
  loc_B06491: ImpAdCallFPR4 Proc_272_27_AA0C4C()
  loc_B06496: FFree1Str var_94
  loc_B06499: FFreeVar var_A4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_114 = ""
  loc_B064A8: LitVarStr var_B4, "del /F "
  loc_B064AD: LitI4 &H22
  loc_B064B2: FLdRfVar var_A4
  loc_B064B5: ImpAdCallFPR4  = Chr()
  loc_B064BA: FLdRfVar var_A4
  loc_B064BD: ConcatVar var_C4
  loc_B064C1: ILdRf var_8C
  loc_B064C4: CVarStr var_D4
  loc_B064C7: ConcatVar var_E4
  loc_B064CB: LitVarStr var_F4, "\c*.gif"
  loc_B064D0: ConcatVar var_104
  loc_B064D4: LitI4 &H22
  loc_B064D9: FLdRfVar var_114
  loc_B064DC: ImpAdCallFPR4  = Chr()
  loc_B064E1: FLdRfVar var_114
  loc_B064E4: ConcatVar var_124
  loc_B064E8: CStrVarVal var_94
  loc_B064EC: ImpAdCallFPR4 Proc_272_27_AA0C4C()
  loc_B064F1: FFree1Str var_94
  loc_B064F4: FFreeVar var_A4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_114 = ""
  loc_B06503: LitVarStr var_B4, "del /F "
  loc_B06508: LitI4 &H22
  loc_B0650D: FLdRfVar var_A4
  loc_B06510: ImpAdCallFPR4  = Chr()
  loc_B06515: FLdRfVar var_A4
  loc_B06518: ConcatVar var_C4
  loc_B0651C: ILdRf var_8C
  loc_B0651F: CVarStr var_D4
  loc_B06522: ConcatVar var_E4
  loc_B06526: LitVarStr var_F4, "\*.htm"
  loc_B0652B: ConcatVar var_104
  loc_B0652F: LitI4 &H22
  loc_B06534: FLdRfVar var_114
  loc_B06537: ImpAdCallFPR4  = Chr()
  loc_B0653C: FLdRfVar var_114
  loc_B0653F: ConcatVar var_124
  loc_B06543: CStrVarVal var_94
  loc_B06547: ImpAdCallFPR4 Proc_272_27_AA0C4C()
  loc_B0654C: FFree1Str var_94
  loc_B0654F: FFreeVar var_A4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_114 = ""
  loc_B0655E: Branch loc_B065F9
  loc_B06561: LitVarStr var_B4, "del /F "
  loc_B06566: LitI4 &H22
  loc_B0656B: FLdRfVar var_A4
  loc_B0656E: ImpAdCallFPR4  = Chr()
  loc_B06573: FLdRfVar var_A4
  loc_B06576: ConcatVar var_C4
  loc_B0657A: ILdRf var_8C
  loc_B0657D: CVarStr var_D4
  loc_B06580: ConcatVar var_E4
  loc_B06584: LitVarStr var_F4, "\"
  loc_B06589: ConcatVar var_104
  loc_B0658D: FLdRfVar var_94
  loc_B06590: ILdPr
  loc_B06593:  = Form.Caption
  loc_B06598: FLdZeroAd var_94
  loc_B0659B: CVarStr var_114
  loc_B0659E: ConcatVar var_124
  loc_B065A2: FLdRfVar var_128
  loc_B065A5: ILdPr
  loc_B065A8:  = Form.Tag
  loc_B065AD: FLdZeroAd var_128
  loc_B065B0: CVarStr var_138
  loc_B065B3: ConcatVar var_148
  loc_B065B7: LitVarStr var_158, "\*.rep"
  loc_B065BC: ConcatVar var_168
  loc_B065C0: LitI4 &H22
  loc_B065C5: FLdRfVar var_178
  loc_B065C8: ImpAdCallFPR4  = Chr()
  loc_B065CD: FLdRfVar var_178
  loc_B065D0: ConcatVar var_188
  loc_B065D4: CStrVarVal var_18C
  loc_B065D8: ImpAdCallFPR4 Proc_272_27_AA0C4C()
  loc_B065DD: FFree1Str var_18C
  loc_B065E0: FFreeVar var_A4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_114 = "": var_124 = "": var_138 = "": var_148 = "": var_168 = "": var_178 = ""
  loc_B065F9: ExitProc
End Function

Private Function Proc_272_47_BC7514() 'BC7514
  'Data Table: 43C408
  loc_BC6E34: FLdRfVar var_88
  loc_BC6E37: NewIfNullAd
  loc_BC6E3A: FStAd var_A0 
  loc_BC6E3E: LitI4 -1
  loc_BC6E43: LitI4 3
  loc_BC6E48: LitI4 3
  loc_BC6E4D: FMemLdR4 arg_8(0)
  loc_BC6E52: CVarAd
  loc_BC6E56: PopAdLdVar
  loc_BC6E57: LitVarStr var_B0, "SELECT * FROM version"
  loc_BC6E5C: PopAdLdVar
  loc_BC6E5D: FLdPr var_A0
  loc_BC6E60: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_BC6E65: FLdRfVar var_C4
  loc_BC6E68: FLdPr var_A0
  loc_BC6E6B:  = Me.RecordCount
  loc_BC6E70: ILdRf var_C4
  loc_BC6E73: LitI4 0
  loc_BC6E78: EqI4
  loc_BC6E79: BranchF loc_BC6E89
  loc_BC6E7C: LitStr "Control de versión necesita verificación en la base de datos"
  loc_BC6E7F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BC6E84: End
  loc_BC6E86: Branch loc_BC74FE
  loc_BC6E89: LitVarStr var_C0, "Municipalidad de Guaymallén"
  loc_BC6E8E: HardType
  loc_BC6E8F: FLdRfVar var_9C
  loc_BC6E92: FLdRfVar var_CC
  loc_BC6E95: LitVarStr var_B0, "MuniVers"
  loc_BC6E9A: PopAdLdVar
  loc_BC6E9B: FLdRfVar var_C8
  loc_BC6E9E: FLdPr var_A0
  loc_BC6EA1:  = Me.Fields
  loc_BC6EA6: FLdPr var_C8
  loc_BC6EA9: from_stack_2 = Me.Item(from_stack_1)
  loc_BC6EAE: FLdPr var_CC
  loc_BC6EB1:  = Me.Value
  loc_BC6EB6: FLdRfVar var_9C
  loc_BC6EB9: NeVarBool
  loc_BC6EBB: FFreeAd var_C8 = ""
  loc_BC6EC2: FFree1Var var_9C = ""
  loc_BC6EC5: BranchF loc_BC6ED2
  loc_BC6EC8: LitStr "Control de versión necesita verificación en la base de datos"
  loc_BC6ECB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BC6ED0: End
  loc_BC6ED2: FLdRfVar var_DE
  loc_BC6ED5: FLdRfVar var_C8
  loc_BC6ED8: ImpAdLdRf MemVar_D9C5D8
  loc_BC6EDB: NewIfNullPr Global
  loc_BC6EDE:  = Global.App
  loc_BC6EE3: FLdPr var_C8
  loc_BC6EE6:  = App.Major
  loc_BC6EEB: FLdI2 var_DE
  loc_BC6EEE: FStI2 var_E0
  loc_BC6EF1: FFree1Ad var_C8
  loc_BC6EF4: FLdI2 var_E0
  loc_BC6EF7: FLdRfVar var_9C
  loc_BC6EFA: FLdRfVar var_CC
  loc_BC6EFD: LitVarStr var_B0, "MajoVers"
  loc_BC6F02: PopAdLdVar
  loc_BC6F03: FLdRfVar var_C8
  loc_BC6F06: FLdPr var_A0
  loc_BC6F09:  = Me.Fields
  loc_BC6F0E: FLdPr var_C8
  loc_BC6F11: from_stack_2 = Me.Item(from_stack_1)
  loc_BC6F16: FLdPr var_CC
  loc_BC6F19:  = Me.Value
  loc_BC6F1E: FLdRfVar var_9C
  loc_BC6F21: CI2Var
  loc_BC6F22: GtI2
  loc_BC6F23: FFreeAd var_C8 = ""
  loc_BC6F2A: FFree1Var var_9C = ""
  loc_BC6F2D: BranchF loc_BC6FD6
  loc_BC6F30: FLdRfVar var_DE
  loc_BC6F33: FLdRfVar var_C8
  loc_BC6F36: ImpAdLdRf MemVar_D9C5D8
  loc_BC6F39: NewIfNullPr Global
  loc_BC6F3C:  = Global.App
  loc_BC6F41: FLdPr var_C8
  loc_BC6F44:  = App.Major
  loc_BC6F49: FLdI2 var_DE
  loc_BC6F4C: CVarI2 var_C0
  loc_BC6F4F: PopAdLdVar
  loc_BC6F50: LitVarStr var_B0, "MajoVers"
  loc_BC6F55: PopAdLdVar
  loc_BC6F56: FLdPr var_A0
  loc_BC6F59: Me.Collect = from_stack_1
  loc_BC6F5E: FFree1Ad var_C8
  loc_BC6F61: FLdRfVar var_DE
  loc_BC6F64: FLdRfVar var_C8
  loc_BC6F67: ImpAdLdRf MemVar_D9C5D8
  loc_BC6F6A: NewIfNullPr Global
  loc_BC6F6D:  = Global.App
  loc_BC6F72: FLdPr var_C8
  loc_BC6F75:  = App.Minor
  loc_BC6F7A: FLdI2 var_DE
  loc_BC6F7D: CVarI2 var_C0
  loc_BC6F80: PopAdLdVar
  loc_BC6F81: LitVarStr var_B0, "Minovers"
  loc_BC6F86: PopAdLdVar
  loc_BC6F87: FLdPr var_A0
  loc_BC6F8A: Me.Collect = from_stack_1
  loc_BC6F8F: FFree1Ad var_C8
  loc_BC6F92: FLdRfVar var_DE
  loc_BC6F95: FLdRfVar var_C8
  loc_BC6F98: ImpAdLdRf MemVar_D9C5D8
  loc_BC6F9B: NewIfNullPr Global
  loc_BC6F9E:  = Global.App
  loc_BC6FA3: FLdPr var_C8
  loc_BC6FA6:  = App.Revision
  loc_BC6FAB: FLdI2 var_DE
  loc_BC6FAE: CVarI2 var_C0
  loc_BC6FB1: PopAdLdVar
  loc_BC6FB2: LitVarStr var_B0, "ReviVers"
  loc_BC6FB7: PopAdLdVar
  loc_BC6FB8: FLdPr var_A0
  loc_BC6FBB: Me.Collect = from_stack_1
  loc_BC6FC0: FFree1Ad var_C8
  loc_BC6FC3: LitVar_Missing var_C0
  loc_BC6FC6: PopAdLdVar
  loc_BC6FC7: LitVar_Missing var_B0
  loc_BC6FCA: PopAdLdVar
  loc_BC6FCB: FLdPr var_A0
  loc_BC6FCE: Me.Update from_stack_1, from_stack_2
  loc_BC6FD3: Branch loc_BC7043
  loc_BC6FD6: FLdI2 var_E0
  loc_BC6FD9: FLdRfVar var_9C
  loc_BC6FDC: FLdRfVar var_CC
  loc_BC6FDF: LitVarStr var_B0, "MajoVers"
  loc_BC6FE4: PopAdLdVar
  loc_BC6FE5: FLdRfVar var_C8
  loc_BC6FE8: FLdPr var_A0
  loc_BC6FEB:  = Me.Fields
  loc_BC6FF0: FLdPr var_C8
  loc_BC6FF3: from_stack_2 = Me.Item(from_stack_1)
  loc_BC6FF8: FLdPr var_CC
  loc_BC6FFB:  = Me.Value
  loc_BC7000: FLdRfVar var_9C
  loc_BC7003: CI2Var
  loc_BC7004: LtI2
  loc_BC7005: FFreeAd var_C8 = ""
  loc_BC700C: FFree1Var var_9C = ""
  loc_BC700F: BranchF loc_BC7043
  loc_BC7012: LitStr "Está ejecutando una versión desactualizada."" & vbCrLf & ""Por favor, cierre la aplicación y vuelva a ingresar. Gracias..."
  loc_BC7015: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BC701A: FLdRfVar var_C8
  loc_BC701D: ImpAdLdRf MemVar_D9C5D8
  loc_BC7020: NewIfNullPr Global
  loc_BC7023:  = Global.Forms
  loc_BC7028: FLdPr var_C8
  loc_BC702B: LateMemLdVar
  loc_BC7030: LitVarI2 var_B0, 1
  loc_BC7035: HardType
  loc_BC7036: EqVarBool
  loc_BC7038: FFree1Ad var_C8
  loc_BC703B: FFree1Var var_9C = ""
  loc_BC703E: BranchF loc_BC7043
  loc_BC7041: End
  loc_BC7043: FLdRfVar var_DE
  loc_BC7046: FLdRfVar var_C8
  loc_BC7049: ImpAdLdRf MemVar_D9C5D8
  loc_BC704C: NewIfNullPr Global
  loc_BC704F:  = Global.App
  loc_BC7054: FLdPr var_C8
  loc_BC7057:  = App.Minor
  loc_BC705C: FLdI2 var_DE
  loc_BC705F: CVarI2 var_C0
  loc_BC7062: HardType
  loc_BC7063: FLdRfVar var_9C
  loc_BC7066: FLdRfVar var_E4
  loc_BC7069: LitVarStr var_B0, "Minovers"
  loc_BC706E: PopAdLdVar
  loc_BC706F: FLdRfVar var_CC
  loc_BC7072: FLdPr var_A0
  loc_BC7075:  = Me.Fields
  loc_BC707A: FLdPr var_CC
  loc_BC707D: from_stack_2 = Me.Item(from_stack_1)
  loc_BC7082: FLdPr var_E4
  loc_BC7085:  = Me.Value
  loc_BC708A: FLdRfVar var_9C
  loc_BC708D: EqVarBool
  loc_BC708F: FFreeAd var_C8 = "": var_CC = ""
  loc_BC7098: FFree1Var var_9C = ""
  loc_BC709B: BranchF loc_BC72F0
  loc_BC709E: FLdRfVar var_DE
  loc_BC70A1: FLdRfVar var_C8
  loc_BC70A4: ImpAdLdRf MemVar_D9C5D8
  loc_BC70A7: NewIfNullPr Global
  loc_BC70AA:  = Global.App
  loc_BC70AF: FLdPr var_C8
  loc_BC70B2:  = App.Minor
  loc_BC70B7: FLdI2 var_DE
  loc_BC70BA: FStI2 var_E6
  loc_BC70BD: FFree1Ad var_C8
  loc_BC70C0: FLdI2 var_E6
  loc_BC70C3: FLdRfVar var_9C
  loc_BC70C6: FLdRfVar var_CC
  loc_BC70C9: LitVarStr var_B0, "Minovers"
  loc_BC70CE: PopAdLdVar
  loc_BC70CF: FLdRfVar var_C8
  loc_BC70D2: FLdPr var_A0
  loc_BC70D5:  = Me.Fields
  loc_BC70DA: FLdPr var_C8
  loc_BC70DD: from_stack_2 = Me.Item(from_stack_1)
  loc_BC70E2: FLdPr var_CC
  loc_BC70E5:  = Me.Value
  loc_BC70EA: FLdRfVar var_9C
  loc_BC70ED: CI2Var
  loc_BC70EE: GtI2
  loc_BC70EF: FFreeAd var_C8 = ""
  loc_BC70F6: FFree1Var var_9C = ""
  loc_BC70F9: BranchF loc_BC7171
  loc_BC70FC: FLdRfVar var_DE
  loc_BC70FF: FLdRfVar var_C8
  loc_BC7102: ImpAdLdRf MemVar_D9C5D8
  loc_BC7105: NewIfNullPr Global
  loc_BC7108:  = Global.App
  loc_BC710D: FLdPr var_C8
  loc_BC7110:  = App.Minor
  loc_BC7115: FLdI2 var_DE
  loc_BC7118: CVarI2 var_C0
  loc_BC711B: PopAdLdVar
  loc_BC711C: LitVarStr var_B0, "Minovers"
  loc_BC7121: PopAdLdVar
  loc_BC7122: FLdPr var_A0
  loc_BC7125: Me.Collect = from_stack_1
  loc_BC712A: FFree1Ad var_C8
  loc_BC712D: FLdRfVar var_DE
  loc_BC7130: FLdRfVar var_C8
  loc_BC7133: ImpAdLdRf MemVar_D9C5D8
  loc_BC7136: NewIfNullPr Global
  loc_BC7139:  = Global.App
  loc_BC713E: FLdPr var_C8
  loc_BC7141:  = App.Revision
  loc_BC7146: FLdI2 var_DE
  loc_BC7149: CVarI2 var_C0
  loc_BC714C: PopAdLdVar
  loc_BC714D: LitVarStr var_B0, "ReviVers"
  loc_BC7152: PopAdLdVar
  loc_BC7153: FLdPr var_A0
  loc_BC7156: Me.Collect = from_stack_1
  loc_BC715B: FFree1Ad var_C8
  loc_BC715E: LitVar_Missing var_C0
  loc_BC7161: PopAdLdVar
  loc_BC7162: LitVar_Missing var_B0
  loc_BC7165: PopAdLdVar
  loc_BC7166: FLdPr var_A0
  loc_BC7169: Me.Update from_stack_1, from_stack_2
  loc_BC716E: Branch loc_BC71DE
  loc_BC7171: FLdI2 var_E6
  loc_BC7174: FLdRfVar var_9C
  loc_BC7177: FLdRfVar var_CC
  loc_BC717A: LitVarStr var_B0, "Minovers"
  loc_BC717F: PopAdLdVar
  loc_BC7180: FLdRfVar var_C8
  loc_BC7183: FLdPr var_A0
  loc_BC7186:  = Me.Fields
  loc_BC718B: FLdPr var_C8
  loc_BC718E: from_stack_2 = Me.Item(from_stack_1)
  loc_BC7193: FLdPr var_CC
  loc_BC7196:  = Me.Value
  loc_BC719B: FLdRfVar var_9C
  loc_BC719E: CI2Var
  loc_BC719F: LtI2
  loc_BC71A0: FFreeAd var_C8 = ""
  loc_BC71A7: FFree1Var var_9C = ""
  loc_BC71AA: BranchF loc_BC71DE
  loc_BC71AD: LitStr "Está ejecutando una versión desactualizada."" & vbCrLf & ""Por favor, cierre la aplicación y vuelva a ingresar. Gracias..."
  loc_BC71B0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BC71B5: FLdRfVar var_C8
  loc_BC71B8: ImpAdLdRf MemVar_D9C5D8
  loc_BC71BB: NewIfNullPr Global
  loc_BC71BE:  = Global.Forms
  loc_BC71C3: FLdPr var_C8
  loc_BC71C6: LateMemLdVar
  loc_BC71CB: LitVarI2 var_B0, 1
  loc_BC71D0: HardType
  loc_BC71D1: EqVarBool
  loc_BC71D3: FFree1Ad var_C8
  loc_BC71D6: FFree1Var var_9C = ""
  loc_BC71D9: BranchF loc_BC71DE
  loc_BC71DC: End
  loc_BC71DE: FLdRfVar var_DE
  loc_BC71E1: FLdRfVar var_C8
  loc_BC71E4: ImpAdLdRf MemVar_D9C5D8
  loc_BC71E7: NewIfNullPr Global
  loc_BC71EA:  = Global.App
  loc_BC71EF: FLdPr var_C8
  loc_BC71F2:  = App.Revision
  loc_BC71F7: FLdI2 var_DE
  loc_BC71FA: FStI2 var_E8
  loc_BC71FD: FFree1Ad var_C8
  loc_BC7200: FLdI2 var_E8
  loc_BC7203: FLdRfVar var_9C
  loc_BC7206: FLdRfVar var_CC
  loc_BC7209: LitVarStr var_B0, "ReviVers"
  loc_BC720E: PopAdLdVar
  loc_BC720F: FLdRfVar var_C8
  loc_BC7212: FLdPr var_A0
  loc_BC7215:  = Me.Fields
  loc_BC721A: FLdPr var_C8
  loc_BC721D: from_stack_2 = Me.Item(from_stack_1)
  loc_BC7222: FLdPr var_CC
  loc_BC7225:  = Me.Value
  loc_BC722A: FLdRfVar var_9C
  loc_BC722D: CI2Var
  loc_BC722E: GtI2
  loc_BC722F: FFreeAd var_C8 = ""
  loc_BC7236: FFree1Var var_9C = ""
  loc_BC7239: BranchF loc_BC7280
  loc_BC723C: FLdRfVar var_DE
  loc_BC723F: FLdRfVar var_C8
  loc_BC7242: ImpAdLdRf MemVar_D9C5D8
  loc_BC7245: NewIfNullPr Global
  loc_BC7248:  = Global.App
  loc_BC724D: FLdPr var_C8
  loc_BC7250:  = App.Revision
  loc_BC7255: FLdI2 var_DE
  loc_BC7258: CVarI2 var_C0
  loc_BC725B: PopAdLdVar
  loc_BC725C: LitVarStr var_B0, "ReviVers"
  loc_BC7261: PopAdLdVar
  loc_BC7262: FLdPr var_A0
  loc_BC7265: Me.Collect = from_stack_1
  loc_BC726A: FFree1Ad var_C8
  loc_BC726D: LitVar_Missing var_C0
  loc_BC7270: PopAdLdVar
  loc_BC7271: LitVar_Missing var_B0
  loc_BC7274: PopAdLdVar
  loc_BC7275: FLdPr var_A0
  loc_BC7278: Me.Update from_stack_1, from_stack_2
  loc_BC727D: Branch loc_BC72ED
  loc_BC7280: FLdI2 var_E8
  loc_BC7283: FLdRfVar var_9C
  loc_BC7286: FLdRfVar var_CC
  loc_BC7289: LitVarStr var_B0, "ReviVers"
  loc_BC728E: PopAdLdVar
  loc_BC728F: FLdRfVar var_C8
  loc_BC7292: FLdPr var_A0
  loc_BC7295:  = Me.Fields
  loc_BC729A: FLdPr var_C8
  loc_BC729D: from_stack_2 = Me.Item(from_stack_1)
  loc_BC72A2: FLdPr var_CC
  loc_BC72A5:  = Me.Value
  loc_BC72AA: FLdRfVar var_9C
  loc_BC72AD: CI2Var
  loc_BC72AE: LtI2
  loc_BC72AF: FFreeAd var_C8 = ""
  loc_BC72B6: FFree1Var var_9C = ""
  loc_BC72B9: BranchF loc_BC72ED
  loc_BC72BC: LitStr "Está ejecutando una versión desactualizada."" & vbCrLf & ""Por favor, cierre la aplicación y vuelva a ingresar. Gracias..."
  loc_BC72BF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BC72C4: FLdRfVar var_C8
  loc_BC72C7: ImpAdLdRf MemVar_D9C5D8
  loc_BC72CA: NewIfNullPr Global
  loc_BC72CD:  = Global.Forms
  loc_BC72D2: FLdPr var_C8
  loc_BC72D5: LateMemLdVar
  loc_BC72DA: LitVarI2 var_B0, 1
  loc_BC72DF: HardType
  loc_BC72E0: EqVarBool
  loc_BC72E2: FFree1Ad var_C8
  loc_BC72E5: FFree1Var var_9C = ""
  loc_BC72E8: BranchF loc_BC72ED
  loc_BC72EB: End
  loc_BC72ED: Branch loc_BC74FE
  loc_BC72F0: FLdRfVar var_DE
  loc_BC72F3: FLdRfVar var_C8
  loc_BC72F6: ImpAdLdRf MemVar_D9C5D8
  loc_BC72F9: NewIfNullPr Global
  loc_BC72FC:  = Global.App
  loc_BC7301: FLdPr var_C8
  loc_BC7304:  = App.Minor
  loc_BC7309: FLdI2 var_DE
  loc_BC730C: FStI2 var_EA
  loc_BC730F: FFree1Ad var_C8
  loc_BC7312: FLdI2 var_EA
  loc_BC7315: FLdRfVar var_9C
  loc_BC7318: FLdRfVar var_CC
  loc_BC731B: LitVarStr var_B0, "Minovers"
  loc_BC7320: PopAdLdVar
  loc_BC7321: FLdRfVar var_C8
  loc_BC7324: FLdPr var_A0
  loc_BC7327:  = Me.Fields
  loc_BC732C: FLdPr var_C8
  loc_BC732F: from_stack_2 = Me.Item(from_stack_1)
  loc_BC7334: FLdPr var_CC
  loc_BC7337:  = Me.Value
  loc_BC733C: FLdRfVar var_9C
  loc_BC733F: CI2Var
  loc_BC7340: GtI2
  loc_BC7341: FFreeAd var_C8 = ""
  loc_BC7348: FFree1Var var_9C = ""
  loc_BC734B: BranchF loc_BC73C3
  loc_BC734E: FLdRfVar var_DE
  loc_BC7351: FLdRfVar var_C8
  loc_BC7354: ImpAdLdRf MemVar_D9C5D8
  loc_BC7357: NewIfNullPr Global
  loc_BC735A:  = Global.App
  loc_BC735F: FLdPr var_C8
  loc_BC7362:  = App.Minor
  loc_BC7367: FLdI2 var_DE
  loc_BC736A: CVarI2 var_C0
  loc_BC736D: PopAdLdVar
  loc_BC736E: LitVarStr var_B0, "Minovers"
  loc_BC7373: PopAdLdVar
  loc_BC7374: FLdPr var_A0
  loc_BC7377: Me.Collect = from_stack_1
  loc_BC737C: FFree1Ad var_C8
  loc_BC737F: FLdRfVar var_DE
  loc_BC7382: FLdRfVar var_C8
  loc_BC7385: ImpAdLdRf MemVar_D9C5D8
  loc_BC7388: NewIfNullPr Global
  loc_BC738B:  = Global.App
  loc_BC7390: FLdPr var_C8
  loc_BC7393:  = App.Revision
  loc_BC7398: FLdI2 var_DE
  loc_BC739B: CVarI2 var_C0
  loc_BC739E: PopAdLdVar
  loc_BC739F: LitVarStr var_B0, "ReviVers"
  loc_BC73A4: PopAdLdVar
  loc_BC73A5: FLdPr var_A0
  loc_BC73A8: Me.Collect = from_stack_1
  loc_BC73AD: FFree1Ad var_C8
  loc_BC73B0: LitVar_Missing var_C0
  loc_BC73B3: PopAdLdVar
  loc_BC73B4: LitVar_Missing var_B0
  loc_BC73B7: PopAdLdVar
  loc_BC73B8: FLdPr var_A0
  loc_BC73BB: Me.Update from_stack_1, from_stack_2
  loc_BC73C0: Branch loc_BC7430
  loc_BC73C3: FLdI2 var_EA
  loc_BC73C6: FLdRfVar var_9C
  loc_BC73C9: FLdRfVar var_CC
  loc_BC73CC: LitVarStr var_B0, "Minovers"
  loc_BC73D1: PopAdLdVar
  loc_BC73D2: FLdRfVar var_C8
  loc_BC73D5: FLdPr var_A0
  loc_BC73D8:  = Me.Fields
  loc_BC73DD: FLdPr var_C8
  loc_BC73E0: from_stack_2 = Me.Item(from_stack_1)
  loc_BC73E5: FLdPr var_CC
  loc_BC73E8:  = Me.Value
  loc_BC73ED: FLdRfVar var_9C
  loc_BC73F0: CI2Var
  loc_BC73F1: LtI2
  loc_BC73F2: FFreeAd var_C8 = ""
  loc_BC73F9: FFree1Var var_9C = ""
  loc_BC73FC: BranchF loc_BC7430
  loc_BC73FF: LitStr "Está ejecutando una versión desactualizada."" & vbCrLf & ""Por favor, cierre la aplicación y vuelva a ingresar. Gracias..."
  loc_BC7402: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BC7407: FLdRfVar var_C8
  loc_BC740A: ImpAdLdRf MemVar_D9C5D8
  loc_BC740D: NewIfNullPr Global
  loc_BC7410:  = Global.Forms
  loc_BC7415: FLdPr var_C8
  loc_BC7418: LateMemLdVar
  loc_BC741D: LitVarI2 var_B0, 1
  loc_BC7422: HardType
  loc_BC7423: EqVarBool
  loc_BC7425: FFree1Ad var_C8
  loc_BC7428: FFree1Var var_9C = ""
  loc_BC742B: BranchF loc_BC7430
  loc_BC742E: End
  loc_BC7430: FLdRfVar var_DE
  loc_BC7433: FLdRfVar var_C8
  loc_BC7436: ImpAdLdRf MemVar_D9C5D8
  loc_BC7439: NewIfNullPr Global
  loc_BC743C:  = Global.App
  loc_BC7441: FLdPr var_C8
  loc_BC7444:  = App.Revision
  loc_BC7449: FLdI2 var_DE
  loc_BC744C: FStI2 var_EC
  loc_BC744F: FFree1Ad var_C8
  loc_BC7452: FLdI2 var_EC
  loc_BC7455: FLdRfVar var_9C
  loc_BC7458: FLdRfVar var_CC
  loc_BC745B: LitVarStr var_B0, "ReviVers"
  loc_BC7460: PopAdLdVar
  loc_BC7461: FLdRfVar var_C8
  loc_BC7464: FLdPr var_A0
  loc_BC7467:  = Me.Fields
  loc_BC746C: FLdPr var_C8
  loc_BC746F: from_stack_2 = Me.Item(from_stack_1)
  loc_BC7474: FLdPr var_CC
  loc_BC7477:  = Me.Value
  loc_BC747C: FLdRfVar var_9C
  loc_BC747F: CI2Var
  loc_BC7480: GtI2
  loc_BC7481: FFreeAd var_C8 = ""
  loc_BC7488: FFree1Var var_9C = ""
  loc_BC748B: BranchF loc_BC7491
  loc_BC748E: Branch loc_BC74FE
  loc_BC7491: FLdI2 var_EC
  loc_BC7494: FLdRfVar var_9C
  loc_BC7497: FLdRfVar var_CC
  loc_BC749A: LitVarStr var_B0, "ReviVers"
  loc_BC749F: PopAdLdVar
  loc_BC74A0: FLdRfVar var_C8
  loc_BC74A3: FLdPr var_A0
  loc_BC74A6:  = Me.Fields
  loc_BC74AB: FLdPr var_C8
  loc_BC74AE: from_stack_2 = Me.Item(from_stack_1)
  loc_BC74B3: FLdPr var_CC
  loc_BC74B6:  = Me.Value
  loc_BC74BB: FLdRfVar var_9C
  loc_BC74BE: CI2Var
  loc_BC74BF: LtI2
  loc_BC74C0: FFreeAd var_C8 = ""
  loc_BC74C7: FFree1Var var_9C = ""
  loc_BC74CA: BranchF loc_BC74FE
  loc_BC74CD: LitStr "Está ejecutando una versión desactualizada."" & vbCrLf & ""Por favor, cierre la aplicación y vuelva a ingresar. Gracias..."
  loc_BC74D0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BC74D5: FLdRfVar var_C8
  loc_BC74D8: ImpAdLdRf MemVar_D9C5D8
  loc_BC74DB: NewIfNullPr Global
  loc_BC74DE:  = Global.Forms
  loc_BC74E3: FLdPr var_C8
  loc_BC74E6: LateMemLdVar
  loc_BC74EB: LitVarI2 var_B0, 1
  loc_BC74F0: HardType
  loc_BC74F1: EqVarBool
  loc_BC74F3: FFree1Ad var_C8
  loc_BC74F6: FFree1Var var_9C = ""
  loc_BC74F9: BranchF loc_BC74FE
  loc_BC74FC: End
  loc_BC74FE: FLdPr var_A0
  loc_BC7501: Me.Close
  loc_BC7506: LitNothing
  loc_BC7508: FStAd var_A0 
  loc_BC750C: LitNothing
  loc_BC750E: FStVarAd
  loc_BC7512: ExitProc
End Function

Private Function Proc_272_48_B59D40() 'B59D40
  'Data Table: 43C408
  loc_B599A8: FLdRfVar var_88
  loc_B599AB: NewIfNullRf
  loc_B599AF: LitStr "SET @sUsuario = '"
  loc_B599B2: FMemLdR4 arg_8(16)
  loc_B599B7: ConcatStr
  loc_B599B8: FStStrNoPop var_8C
  loc_B599BB: LitStr "';"
  loc_B599BE: ConcatStr
  loc_B599BF: FStStrNoPop var_A0
  loc_B599C2: ImpAdCallFPR4 Proc_272_58_A794E0(, )
  loc_B599C7: FFreeStr var_8C = ""
  loc_B599CE: FLdRfVar var_A6
  loc_B599D1: FLdRfVar var_A4
  loc_B599D4: ImpAdLdRf MemVar_D9C5D8
  loc_B599D7: NewIfNullPr Global
  loc_B599DA:  = Global.App
  loc_B599DF: FLdPr var_A4
  loc_B599E2:  = App.Major
  loc_B599E7: FLdRfVar var_B2
  loc_B599EA: FLdRfVar var_B0
  loc_B599ED: ImpAdLdRf MemVar_D9C5D8
  loc_B599F0: NewIfNullPr Global
  loc_B599F3:  = Global.App
  loc_B599F8: FLdPr var_B0
  loc_B599FB:  = App.Minor
  loc_B59A00: FLdRfVar var_C6
  loc_B59A03: FLdRfVar var_C4
  loc_B59A06: ImpAdLdRf MemVar_D9C5D8
  loc_B59A09: NewIfNullPr Global
  loc_B59A0C:  = Global.App
  loc_B59A11: FLdPr var_C4
  loc_B59A14:  = App.Revision
  loc_B59A19: FLdRfVar var_DE
  loc_B59A1C: FLdRfVar var_DC
  loc_B59A1F: ImpAdLdRf MemVar_D9C5D8
  loc_B59A22: NewIfNullPr Global
  loc_B59A25:  = Global.App
  loc_B59A2A: FLdPr var_DC
  loc_B59A2D:  = App.Major
  loc_B59A32: FLdRfVar var_F2
  loc_B59A35: FLdRfVar var_F0
  loc_B59A38: ImpAdLdRf MemVar_D9C5D8
  loc_B59A3B: NewIfNullPr Global
  loc_B59A3E:  = Global.App
  loc_B59A43: FLdPr var_F0
  loc_B59A46:  = App.Minor
  loc_B59A4B: FLdRfVar var_106
  loc_B59A4E: FLdRfVar var_104
  loc_B59A51: ImpAdLdRf MemVar_D9C5D8
  loc_B59A54: NewIfNullPr Global
  loc_B59A57:  = Global.App
  loc_B59A5C: FLdPr var_104
  loc_B59A5F:  = App.Revision
  loc_B59A64: FLdRfVar var_88
  loc_B59A67: NewIfNullRf
  loc_B59A6B: LitStr "SELECT MuniVers"
  loc_B59A6E: LitStr ", Concat(Lpad(MajoVers,4,'0'),Lpad(MinoVers,4,'0'),Lpad(ReviVers,4,'0')) > Concat(Lpad("
  loc_B59A71: ConcatStr
  loc_B59A72: FStStrNoPop var_8C
  loc_B59A75: FLdI2 var_A6
  loc_B59A78: CStrUI1
  loc_B59A7A: FStStrNoPop var_A0
  loc_B59A7D: ConcatStr
  loc_B59A7E: FStStrNoPop var_AC
  loc_B59A81: LitStr ",4,'0'),Lpad("
  loc_B59A84: ConcatStr
  loc_B59A85: FStStrNoPop var_B8
  loc_B59A88: FLdI2 var_B2
  loc_B59A8B: CStrUI1
  loc_B59A8D: FStStrNoPop var_BC
  loc_B59A90: ConcatStr
  loc_B59A91: FStStrNoPop var_C0
  loc_B59A94: LitStr ",4,'0'),Lpad("
  loc_B59A97: ConcatStr
  loc_B59A98: FStStrNoPop var_CC
  loc_B59A9B: FLdI2 var_C6
  loc_B59A9E: CStrUI1
  loc_B59AA0: FStStrNoPop var_D0
  loc_B59AA3: ConcatStr
  loc_B59AA4: FStStrNoPop var_D4
  loc_B59AA7: LitStr ",4,'0')) Mayor"
  loc_B59AAA: ConcatStr
  loc_B59AAB: FStStrNoPop var_D8
  loc_B59AAE: LitStr ", Concat(Lpad(MajoVers,4,'0'),Lpad(MinoVers,4,'0'),Lpad(ReviVers,4,'0')) < Concat(Lpad("
  loc_B59AB1: ConcatStr
  loc_B59AB2: FStStrNoPop var_E4
  loc_B59AB5: FLdI2 var_DE
  loc_B59AB8: CStrUI1
  loc_B59ABA: FStStrNoPop var_E8
  loc_B59ABD: ConcatStr
  loc_B59ABE: FStStrNoPop var_EC
  loc_B59AC1: LitStr ",4,'0'),Lpad("
  loc_B59AC4: ConcatStr
  loc_B59AC5: FStStrNoPop var_F8
  loc_B59AC8: FLdI2 var_F2
  loc_B59ACB: CStrUI1
  loc_B59ACD: FStStrNoPop var_FC
  loc_B59AD0: ConcatStr
  loc_B59AD1: FStStrNoPop var_100
  loc_B59AD4: LitStr ",4,'0'),Lpad("
  loc_B59AD7: ConcatStr
  loc_B59AD8: FStStrNoPop var_10C
  loc_B59ADB: FLdI2 var_106
  loc_B59ADE: CStrUI1
  loc_B59AE0: FStStrNoPop var_110
  loc_B59AE3: ConcatStr
  loc_B59AE4: FStStrNoPop var_114
  loc_B59AE7: LitStr ",4,'0')) Menor"
  loc_B59AEA: ConcatStr
  loc_B59AEB: FStStrNoPop var_118
  loc_B59AEE: LitStr " FROM version"
  loc_B59AF1: ConcatStr
  loc_B59AF2: FStStrNoPop var_11C
  loc_B59AF5: ImpAdCallFPR4 Proc_272_58_A794E0(, )
  loc_B59AFA: FFreeStr var_8C = "": var_A0 = "": var_AC = "": var_B8 = "": var_BC = "": var_C0 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F8 = "": var_FC = "": var_100 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_B59B27: FFreeAd var_A4 = "": var_B0 = "": var_C4 = "": var_DC = "": var_F0 = ""
  loc_B59B36: FLdRfVar var_88
  loc_B59B39: NewIfNullAd
  loc_B59B3C: FStAd var_120 
  loc_B59B40: FLdRfVar var_124
  loc_B59B43: FLdPr var_120
  loc_B59B46:  = Me.RecordCount
  loc_B59B4B: ILdRf var_124
  loc_B59B4E: LitI4 0
  loc_B59B53: EqI4
  loc_B59B54: BranchF loc_B59B64
  loc_B59B57: LitStr "Control de versión necesita verificación en la base de datos"
  loc_B59B5A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B59B5F: End
  loc_B59B61: Branch loc_B59D2E
  loc_B59B64: LitVarStr var_144, "Municipalidad de Guaymallén"
  loc_B59B69: HardType
  loc_B59B6A: FLdRfVar var_9C
  loc_B59B6D: FLdRfVar var_B0
  loc_B59B70: LitVarStr var_134, "MuniVers"
  loc_B59B75: PopAdLdVar
  loc_B59B76: FLdRfVar var_A4
  loc_B59B79: FLdPr var_120
  loc_B59B7C:  = Me.Fields
  loc_B59B81: FLdPr var_A4
  loc_B59B84: from_stack_2 = Me.Item(from_stack_1)
  loc_B59B89: FLdPr var_B0
  loc_B59B8C:  = Me.Value
  loc_B59B91: FLdRfVar var_9C
  loc_B59B94: NeVarBool
  loc_B59B96: FFreeAd var_A4 = ""
  loc_B59B9D: FFree1Var var_9C = ""
  loc_B59BA0: BranchF loc_B59BD4
  loc_B59BA3: LitStr "Error de Directorio. Consulte con el Administrador de Sistema..."
  loc_B59BA6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B59BAB: FLdRfVar var_A4
  loc_B59BAE: ImpAdLdRf MemVar_D9C5D8
  loc_B59BB1: NewIfNullPr Global
  loc_B59BB4:  = Global.Forms
  loc_B59BB9: FLdPr var_A4
  loc_B59BBC: LateMemLdVar
  loc_B59BC1: LitVarI2 var_134, 1
  loc_B59BC6: HardType
  loc_B59BC7: EqVarBool
  loc_B59BC9: FFree1Ad var_A4
  loc_B59BCC: FFree1Var var_9C = ""
  loc_B59BCF: BranchF loc_B59BD4
  loc_B59BD2: End
  loc_B59BD4: FLdRfVar var_9C
  loc_B59BD7: FLdRfVar var_B0
  loc_B59BDA: LitVarStr var_134, "Mayor"
  loc_B59BDF: PopAdLdVar
  loc_B59BE0: FLdRfVar var_A4
  loc_B59BE3: FLdPr var_120
  loc_B59BE6:  = Me.Fields
  loc_B59BEB: FLdPr var_A4
  loc_B59BEE: from_stack_2 = Me.Item(from_stack_1)
  loc_B59BF3: FLdPr var_B0
  loc_B59BF6:  = Me.Value
  loc_B59BFB: FLdRfVar var_9C
  loc_B59BFE: LitVarI2 var_144, 0
  loc_B59C03: HardType
  loc_B59C04: GtVarBool
  loc_B59C06: FFreeAd var_A4 = ""
  loc_B59C0D: FFree1Var var_9C = ""
  loc_B59C10: BranchF loc_B59C47
  loc_B59C13: LitStr "Está ejecutando una versión desactualizada."" & vbCrLf & ""Por favor, cierre la aplicación y vuelva a ingresar. Gracias..."
  loc_B59C16: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B59C1B: FLdRfVar var_A4
  loc_B59C1E: ImpAdLdRf MemVar_D9C5D8
  loc_B59C21: NewIfNullPr Global
  loc_B59C24:  = Global.Forms
  loc_B59C29: FLdPr var_A4
  loc_B59C2C: LateMemLdVar
  loc_B59C31: LitVarI2 var_134, 1
  loc_B59C36: HardType
  loc_B59C37: EqVarBool
  loc_B59C39: FFree1Ad var_A4
  loc_B59C3C: FFree1Var var_9C = ""
  loc_B59C3F: BranchF loc_B59C44
  loc_B59C42: End
  loc_B59C44: Branch loc_B59D2E
  loc_B59C47: FLdRfVar var_9C
  loc_B59C4A: FLdRfVar var_B0
  loc_B59C4D: LitVarStr var_134, "Menor"
  loc_B59C52: PopAdLdVar
  loc_B59C53: FLdRfVar var_A4
  loc_B59C56: FLdPr var_120
  loc_B59C59:  = Me.Fields
  loc_B59C5E: FLdPr var_A4
  loc_B59C61: from_stack_2 = Me.Item(from_stack_1)
  loc_B59C66: FLdPr var_B0
  loc_B59C69:  = Me.Value
  loc_B59C6E: FLdRfVar var_9C
  loc_B59C71: LitVarI2 var_144, 0
  loc_B59C76: HardType
  loc_B59C77: GtVarBool
  loc_B59C79: FFreeAd var_A4 = ""
  loc_B59C80: FFree1Var var_9C = ""
  loc_B59C83: BranchF loc_B59D2E
  loc_B59C86: FLdRfVar var_A6
  loc_B59C89: FLdRfVar var_A4
  loc_B59C8C: ImpAdLdRf MemVar_D9C5D8
  loc_B59C8F: NewIfNullPr Global
  loc_B59C92:  = Global.App
  loc_B59C97: FLdPr var_A4
  loc_B59C9A:  = App.Major
  loc_B59C9F: FLdRfVar var_B2
  loc_B59CA2: FLdRfVar var_B0
  loc_B59CA5: ImpAdLdRf MemVar_D9C5D8
  loc_B59CA8: NewIfNullPr Global
  loc_B59CAB:  = Global.App
  loc_B59CB0: FLdPr var_B0
  loc_B59CB3:  = App.Minor
  loc_B59CB8: FLdRfVar var_C6
  loc_B59CBB: FLdRfVar var_C4
  loc_B59CBE: ImpAdLdRf MemVar_D9C5D8
  loc_B59CC1: NewIfNullPr Global
  loc_B59CC4:  = Global.App
  loc_B59CC9: FLdPr var_C4
  loc_B59CCC:  = App.Revision
  loc_B59CD1: FLdRfVar var_88
  loc_B59CD4: NewIfNullRf
  loc_B59CD8: LitStr "UPDATE version SET MajoVers="
  loc_B59CDB: FLdI2 var_A6
  loc_B59CDE: CStrUI1
  loc_B59CE0: FStStrNoPop var_8C
  loc_B59CE3: ConcatStr
  loc_B59CE4: FStStrNoPop var_A0
  loc_B59CE7: LitStr ",MinoVers="
  loc_B59CEA: ConcatStr
  loc_B59CEB: FStStrNoPop var_AC
  loc_B59CEE: FLdI2 var_B2
  loc_B59CF1: CStrUI1
  loc_B59CF3: FStStrNoPop var_B8
  loc_B59CF6: ConcatStr
  loc_B59CF7: FStStrNoPop var_BC
  loc_B59CFA: LitStr ",ReviVers="
  loc_B59CFD: ConcatStr
  loc_B59CFE: FStStrNoPop var_C0
  loc_B59D01: FLdI2 var_C6
  loc_B59D04: CStrUI1
  loc_B59D06: FStStrNoPop var_CC
  loc_B59D09: ConcatStr
  loc_B59D0A: FStStrNoPop var_D0
  loc_B59D0D: ImpAdCallFPR4 Proc_272_58_A794E0(, )
  loc_B59D12: FFreeStr var_8C = "": var_A0 = "": var_AC = "": var_B8 = "": var_BC = "": var_C0 = "": var_CC = ""
  loc_B59D25: FFreeAd var_A4 = "": var_B0 = ""
  loc_B59D2E: FLdPr var_120
  loc_B59D31: Me.Close
  loc_B59D36: LitNothing
  loc_B59D38: FStAd var_120 
  loc_B59D3C: ExitProc
  loc_B59D3D: NotI4
End Function

Private Function Proc_272_49_9E343C() '9E343C
  'Data Table: 43C408
  loc_9E3424: On Error Resume Next
  loc_9E3429: LitVar_TRUE var_A4
  loc_9E342C: LitStr "{Tab}"
  loc_9E342F: ImpAdCallFPR4 SendKeys , 
  loc_9E3434: FFree1Var var_A4 = ""
  loc_9E3439: ExitProc
End Function

Private Function Proc_272_50_A099E8(arg_C) 'A099E8
  'Data Table: 43C408
  loc_A099B0: LitI4 1
  loc_A099B5: ILdRf arg_C
  loc_A099B8: FLdRfVar var_98
  loc_A099BB: ImpAdCallFPR4  = Weekday(, )
  loc_A099C0: FLdRfVar var_98
  loc_A099C3: CI2Var
  loc_A099C4: FStI2 var_86
  loc_A099C7: FFree1Var var_98 = ""
  loc_A099CA: LitI4 1
  loc_A099CF: ILdRf arg_C
  loc_A099D2: FLdRfVar var_98
  loc_A099D5: ImpAdCallFPR4  = Weekday(, )
  loc_A099DA: FLdRfVar var_98
  loc_A099DD: CI2Var
  loc_A099DE: FStI2 var_86
  loc_A099E1: FFree1Var var_98 = ""
  loc_A099E4: ExitProcI2
End Function

Private Function Proc_272_51_9F69E8(arg_C) '9F69E8
  'Data Table: 43C408
  loc_9F69C0: ILdI4 arg_C
  loc_9F69C3: FStAd var_88 
  loc_9F69C7: LitVar_Missing var_A8
  loc_9F69CA: PopAdLdVar
  loc_9F69CB: LitVar_Missing var_98
  loc_9F69CE: PopAdLdVar
  loc_9F69CF: FLdPr var_88
  loc_9F69D2: Form.Show from_stack_1, from_stack_2
  loc_9F69D7: FLdPr var_88
  loc_9F69DA: Form.SetFocus
  loc_9F69DF: LitNothing
  loc_9F69E1: FStAd var_88 
  loc_9F69E5: ExitProc
End Function

Private Function Proc_272_52_AACEC8(arg_14) 'AACEC8
  'Data Table: 43C408
  loc_AACE08: ILdRf arg_14
  loc_AACE0B: FStStrCopy var_88
  loc_AACE0E: FLdRfVar var_9C
  loc_AACE11: ImpAdCallI2 Proc_272_53_AA1C94()
  loc_AACE16: FStI2 var_9E
  loc_AACE19: ILdPr
  loc_AACE1C: LateIdCall
  loc_AACE24: FLdRfVar var_B8
  loc_AACE27: LitVarI4
  loc_AACE2F: PopAdLdVar
  loc_AACE30: FLdRfVar var_A4
  loc_AACE33: ImpAdLdRf MemVar_D9C5D8
  loc_AACE36: NewIfNullPr Global
  loc_AACE39:  = Global.Clipboard
  loc_AACE3E: FLdPr var_A4
  loc_AACE41: Me.GetData from_stack_1
  loc_AACE46: FLdZeroAd var_B8
  loc_AACE49: FStAdFuncNoPop
  loc_AACE4C: ILdPr
  loc_AACE4F: Me.Picture = from_stack_1
  loc_AACE54: FFreeAd var_A4 = ""
  loc_AACE5B: FLdRfVar var_A4
  loc_AACE5E: ILdPr
  loc_AACE61:  = Me.Picture
  loc_AACE66: FLdRfVar var_C0
  loc_AACE69: FLdRfVar var_B8
  loc_AACE6C: LitI4 2
  loc_AACE71: FLdRfVar var_8C
  loc_AACE74: NewIfNullPr IFileSystem3
  loc_AACE77: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_AACE7C: FLdPr var_B8
  loc_AACE7F:  = Me.Path
  loc_AACE84: FLdRfVar var_C4
  loc_AACE87: ILdRf var_88
  loc_AACE8A: ILdRf var_C0
  loc_AACE8D: FLdRfVar var_8C
  loc_AACE90: NewIfNullPr IFileSystem3
  loc_AACE93: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_AACE98: ILdRf var_C4
  loc_AACE9B: FLdZeroAd var_A4
  loc_AACE9E: FStAdFuncNoPop
  loc_AACEA1: ImpAdLdRf MemVar_D9C5D8
  loc_AACEA4: NewIfNullPr Global
  loc_AACEA7: Global.SavePicture from_stack_1
  loc_AACEAC: FFreeStr var_C0 = ""
  loc_AACEB3: FFreeAd var_B8 = ""
  loc_AACEBA: FLdI2 var_9E
  loc_AACEBD: FLdRfVar var_9C
  loc_AACEC0: ImpAdCallFPR4 Proc_272_54_A69ED4(, )
  loc_AACEC5: ExitProc
End Function

Private Function Proc_272_53_AA1C94(arg_C) 'AA1C94
  'Data Table: 43C408
  loc_AA1BDC: FLdRfVar var_8E
  loc_AA1BDF: LitI4 -16640
  loc_AA1BE4: CI2I4
  loc_AA1BE5: FLdRfVar var_8C
  loc_AA1BE8: ImpAdLdRf MemVar_D9C5D8
  loc_AA1BEB: NewIfNullPr Global
  loc_AA1BEE:  = Global.Clipboard
  loc_AA1BF3: FLdPr var_8C
  loc_AA1BF6: Me.GetFormat from_stack_1
  loc_AA1BFB: FLdI2 var_8E
  loc_AA1BFE: FLdRfVar var_96
  loc_AA1C01: LitI4 1
  loc_AA1C06: CI2I4
  loc_AA1C07: FLdRfVar var_94
  loc_AA1C0A: ImpAdLdRf MemVar_D9C5D8
  loc_AA1C0D: NewIfNullPr Global
  loc_AA1C10:  = Global.Clipboard
  loc_AA1C15: FLdPr var_94
  loc_AA1C18: Me.GetFormat from_stack_1
  loc_AA1C1D: FLdI2 var_96
  loc_AA1C20: OrI4
  loc_AA1C21: FFreeAd var_8C = ""
  loc_AA1C28: BranchF loc_AA1C60
  loc_AA1C2B: LitI4 1
  loc_AA1C30: CI2I4
  loc_AA1C31: FStI2 var_86
  loc_AA1C34: FLdRfVar var_AC
  loc_AA1C37: LitVar_Missing var_A8
  loc_AA1C3A: PopAdLdVar
  loc_AA1C3B: FLdRfVar var_8C
  loc_AA1C3E: ImpAdLdRf MemVar_D9C5D8
  loc_AA1C41: NewIfNullPr Global
  loc_AA1C44:  = Global.Clipboard
  loc_AA1C49: FLdPr var_8C
  loc_AA1C4C: Me.GetText from_stack_1
  loc_AA1C51: FLdZeroAd var_AC
  loc_AA1C54: CVarStr var_BC
  loc_AA1C57: IStDarg arg_C
  loc_AA1C5A: FFree1Ad var_8C
  loc_AA1C5D: Branch loc_AA1C93
  loc_AA1C60: LitI4 2
  loc_AA1C65: CI2I4
  loc_AA1C66: FStI2 var_86
  loc_AA1C69: FLdRfVar var_94
  loc_AA1C6C: LitVar_Missing var_A8
  loc_AA1C6F: PopAdLdVar
  loc_AA1C70: FLdRfVar var_8C
  loc_AA1C73: ImpAdLdRf MemVar_D9C5D8
  loc_AA1C76: NewIfNullPr Global
  loc_AA1C79:  = Global.Clipboard
  loc_AA1C7E: FLdPr var_8C
  loc_AA1C81: Me.GetData from_stack_1
  loc_AA1C86: FLdZeroAd var_94
  loc_AA1C89: CVarAd
  loc_AA1C8D: IStDarg arg_C
  loc_AA1C90: FFree1Ad var_8C
  loc_AA1C93: ExitProcI2
End Function

Private Function Proc_272_54_A69ED4(arg_C, arg_10) 'A69ED4
  'Data Table: 43C408
  loc_A69E68: FLdI2 arg_10
  loc_A69E6B: CI4UI1
  loc_A69E6C: LitI4 2
  loc_A69E71: LtI4
  loc_A69E72: BranchF loc_A69EA2
  loc_A69E75: LitVar_Missing var_AC
  loc_A69E78: PopAdLdVar
  loc_A69E79: ILdRfDarg arg_C
  loc_A69E7F: CStrVarVal var_9C
  loc_A69E83: FLdRfVar var_88
  loc_A69E86: ImpAdLdRf MemVar_D9C5D8
  loc_A69E89: NewIfNullPr Global
  loc_A69E8C:  = Global.Clipboard
  loc_A69E91: FLdPr var_88
  loc_A69E94: Me.SetText from_stack_1, from_stack_2
  loc_A69E99: FFree1Str var_9C
  loc_A69E9C: FFree1Ad var_88
  loc_A69E9F: Branch loc_A69ED0
  loc_A69EA2: LitVar_Missing var_AC
  loc_A69EA5: PopAdLdVar
  loc_A69EA6: ILdRfDarg arg_C
  loc_A69EAC: CastAdVar Me
  loc_A69EB0: FStAdFuncNoPop
  loc_A69EB3: FLdRfVar var_88
  loc_A69EB6: ImpAdLdRf MemVar_D9C5D8
  loc_A69EB9: NewIfNullPr Global
  loc_A69EBC:  = Global.Clipboard
  loc_A69EC1: FLdPr var_88
  loc_A69EC4: Me.SetData from_stack_1
  loc_A69EC9: FFreeAd var_B0 = ""
  loc_A69ED0: ExitProc
End Function

Private Function Proc_272_55_A87D4C(arg_C) 'A87D4C
  'Data Table: 43C408
  loc_A87CC8: LitI2_Byte 1
  loc_A87CCA: FLdRfVar var_8A
  loc_A87CCD: ILdI4 arg_C
  loc_A87CD0: LitI2_Byte 1
  loc_A87CD2: FnUBound
  loc_A87CD4: CI2I4
  loc_A87CD5: ForI2 var_94
  loc_A87CDB: ILdRf var_90
  loc_A87CDE: CVarStr var_A4
  loc_A87CE1: FLdI2 var_8A
  loc_A87CE4: CI4UI1
  loc_A87CE5: ILdI4 arg_C
  loc_A87CE8: Ary1LdRfVarg
  loc_A87CEC: ConcatVar var_C4
  loc_A87CF0: LitVarStr var_E8, vbNullString
  loc_A87CF5: FStVarCopyObj var_F8
  loc_A87CF8: FLdRfVar var_F8
  loc_A87CFB: LitI4 0
  loc_A87D00: ILdI4 arg_C
  loc_A87D03: AryLock
  loc_A87D06: Ary1LdRfVargParam
  loc_A87D08: FLdI2 var_8A
  loc_A87D0B: CI4UI1
  loc_A87D0C: ILdI4 arg_C
  loc_A87D0F: LitI2_Byte 1
  loc_A87D11: FnUBound
  loc_A87D13: LtI4
  loc_A87D14: CVarBoolI2 var_D4
  loc_A87D18: FLdRfVar var_108
  loc_A87D1B: ImpAdCallFPR4  = IIf(, , )
  loc_A87D20: AryUnlock
  loc_A87D23: FLdRfVar var_108
  loc_A87D26: ConcatVar var_118
  loc_A87D2A: CStrVarTmp
  loc_A87D2B: FStStr var_90
  loc_A87D2E: FFreeVar var_D4 = "": var_F8 = "": var_C4 = "": var_108 = ""
  loc_A87D3B: FLdRfVar var_8A
  loc_A87D3E: NextI2 var_94, loc_A87CDB
  loc_A87D43: ILdRf var_90
  loc_A87D46: FStStrCopy var_88
  loc_A87D49: ExitProc
End Function

Private Function Proc_272_56_ACCA08(arg_10) 'ACCA08
  'Data Table: 43C408
  loc_ACC914: ILdRf arg_10
  loc_ACC917: FStStrCopy var_88
  loc_ACC91A: OnErrorGoto loc_ACC9D5
  loc_ACC91D: ILdPr
  loc_ACC920: LateIdLdVar var_AC DispID_8 0
  loc_ACC927: PopAd
  loc_ACC929: ILdPr
  loc_ACC92C: LateIdLdVar var_98 DispID_8 0
  loc_ACC933: CI4Var
  loc_ACC935: CStrI4
  loc_ACC937: FStStrNoPop var_9C
  loc_ACC93A: LitStr " registro"
  loc_ACC93D: ConcatStr
  loc_ACC93E: CVarStr var_11C
  loc_ACC941: LitVarStr var_EC, "s"
  loc_ACC946: FStVarCopyObj var_FC
  loc_ACC949: FLdRfVar var_FC
  loc_ACC94C: LitVarStr var_CC, vbNullString
  loc_ACC951: FStVarCopyObj var_DC
  loc_ACC954: FLdRfVar var_DC
  loc_ACC957: FLdRfVar var_AC
  loc_ACC95A: CI4Var
  loc_ACC95C: LitI4 1
  loc_ACC961: EqI4
  loc_ACC962: CVarBoolI2 var_BC
  loc_ACC966: FLdRfVar var_10C
  loc_ACC969: ImpAdCallFPR4  = IIf(, , )
  loc_ACC96E: FLdRfVar var_10C
  loc_ACC971: ConcatVar var_12C
  loc_ACC975: LitVarStr var_15C, vbNullString
  loc_ACC97A: FStVarCopyObj var_16C
  loc_ACC97D: FLdRfVar var_16C
  loc_ACC980: LitStr " - Filtro: "
  loc_ACC983: ILdRf var_88
  loc_ACC986: ConcatStr
  loc_ACC987: CVarStr var_14C
  loc_ACC98A: ILdRf var_88
  loc_ACC98D: LitStr vbNullString
  loc_ACC990: NeStr
  loc_ACC992: CVarBoolI2 var_13C
  loc_ACC996: FLdRfVar var_17C
  loc_ACC999: ImpAdCallFPR4  = IIf(, , )
  loc_ACC99E: FLdRfVar var_17C
  loc_ACC9A1: ConcatVar var_18C
  loc_ACC9A5: CStrVarTmp
  loc_ACC9A6: CVarStr var_19C
  loc_ACC9A9: PopAdLdVar
  loc_ACC9AA: ILdPr
  loc_ACC9AD: LateIdSt
  loc_ACC9B2: FFree1Str var_9C
  loc_ACC9B5: FFreeVar var_98 = "": var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_10C = "": var_13C = "": var_14C = "": var_16C = "": var_12C = "": var_17C = "": var_18C = ""
  loc_ACC9D4: ExitProc
  loc_ACC9D5: FLdRfVar var_1B4
  loc_ACC9D8: ImpAdCallI2 Err 'rtcErrObj
  loc_ACC9DD: FStAdFunc var_1B0
  loc_ACC9E0: FLdPr var_1B0
  loc_ACC9E3:  = Err.Number
  loc_ACC9E8: ILdRf var_1B4
  loc_ACC9EB: LitI4 &H1B5D
  loc_ACC9F0: EqI4
  loc_ACC9F1: FFree1Ad var_1B0
  loc_ACC9F4: BranchF loc_ACCA05
  loc_ACC9F7: LitVarStr var_BC, vbNullString
  loc_ACC9FC: PopAdLdVar
  loc_ACC9FD: ILdPr
  loc_ACCA00: LateIdSt
  loc_ACCA05: ExitProc
End Function

Private Function Proc_272_57_A80E3C(arg_C, arg_10) 'A80E3C
  'Data Table: 43C408
  loc_A80DB8: ILdRf arg_C
  loc_A80DBB: FStStrCopy var_8C
  loc_A80DBE: OnErrorGoto loc_A80E34
  loc_A80DC1: FLdI2 arg_10
  loc_A80DC4: BranchF loc_A80E09
  loc_A80DC7: LitI4 &H20
  loc_A80DCC: FLdRfVar var_8C
  loc_A80DCF: CVarRef
  loc_A80DD4: ImpAdCallI2 push Dir(, )
  loc_A80DD9: FStStrNoPop var_B0
  loc_A80DDC: FnLenStr
  loc_A80DDD: LitI4 0
  loc_A80DE2: NeI4
  loc_A80DE3: FFree1Str var_B0
  loc_A80DE6: BranchF loc_A80E03
  loc_A80DE9: ILdRf var_8C
  loc_A80DEC: ImpAdCallI2 push FileLen()
  loc_A80DF1: LitI4 0
  loc_A80DF6: EqI4
  loc_A80DF7: BranchF loc_A80E00
  loc_A80DFA: LitI2_Byte &HFF
  loc_A80DFC: FStI2 var_86
  loc_A80DFF: ExitProcI2
  loc_A80E00: Branch loc_A80E09
  loc_A80E03: LitI2_Byte &HFF
  loc_A80E05: FStI2 var_86
  loc_A80E08: ExitProcI2
  loc_A80E09: LitVar_Missing var_C0
  loc_A80E0C: ImpAdCallI2 FreeFile()
  loc_A80E11: CVarI2 var_D0
  loc_A80E14: FStVar var_9C
  loc_A80E18: FFree1Var var_C0 = ""
  loc_A80E1B: ILdRf var_8C
  loc_A80E1E: FLdRfVar var_9C
  loc_A80E21: CI2Var
  loc_A80E22: LitI2_Byte &HFF
  loc_A80E24: OpenFile
  loc_A80E28: FLdRfVar var_9C
  loc_A80E2B: CI2Var
  loc_A80E2C: Close
  loc_A80E2E: LitI2_Byte 0
  loc_A80E30: FStI2 var_86
  loc_A80E33: ExitProcI2
  loc_A80E34: LitI2_Byte &HFF
  loc_A80E36: FStI2 var_86
  loc_A80E39: ExitProcI2
End Function

Private Function Proc_272_58_A794E0(arg_C) 'A794E0
  'Data Table: 43C408
  loc_A79460: ILdRf arg_C
  loc_A79463: FStStrCopy var_88
  loc_A79466: OnErrorGoto loc_A794BA
  loc_A79469: LitI2_Byte 0
  loc_A7946B: CUI1I2
  loc_A7946D: FStUI1 var_8A
  loc_A79471: LitNothing
  loc_A79473: CastAd
  loc_A79476: IStAdFunc
  loc_A7947A: New Recordset
  loc_A7947E: IStAdFunc
  loc_A79482: FLdUI1
  loc_A79486: CI2UI1
  loc_A79488: LitI2_Byte 1
  loc_A7948A: AddI2
  loc_A7948B: CUI1I2
  loc_A7948D: FStUI1 var_8A
  loc_A79491: LitI4 -1
  loc_A79496: LitI4 3
  loc_A7949B: LitI4 3
  loc_A794A0: FMemLdR4 arg_8(0)
  loc_A794A5: CVarAd
  loc_A794A9: PopAdLdVar
  loc_A794AA: ILdRf var_88
  loc_A794AD: CVarStr var_9C
  loc_A794B0: PopAdLdVar
  loc_A794B1: ILdPr
  loc_A794B4: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A794B9: ExitProc
  loc_A794BA: FLdUI1
  loc_A794BE: CI2UI1
  loc_A794C0: LitI2_Byte 3
  loc_A794C2: GtI2
  loc_A794C3: BranchF loc_A794D3
  loc_A794C6: LitStr "No hay conexión con el servidor. Verifique..."
  loc_A794C9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A794CE: End
  loc_A794D0: Branch loc_A794DE
  loc_A794D3: LitStr "PROVIDER=MSDASQL;dsn=myrecaudacion-guaymallen;uid=root;pwd=bv3yr0n;database=recaudacion;"
  loc_A794D6: ImpAdCallFPR4 Proc_272_34_A205CC()
  loc_A794DB: Branch loc_A79482
  loc_A794DE: ExitProc
End Function

Private Function Proc_272_59_A789A0(arg_C) 'A789A0
  'Data Table: 43C408
  loc_A78920: ILdRf arg_C
  loc_A78923: FStStrCopy var_88
  loc_A78926: OnErrorGoto loc_A7897A
  loc_A78929: LitI2_Byte 0
  loc_A7892B: CUI1I2
  loc_A7892D: FStUI1 var_8A
  loc_A78931: LitNothing
  loc_A78933: CastAd
  loc_A78936: IStAdFunc
  loc_A7893A: New Recordset
  loc_A7893E: IStAdFunc
  loc_A78942: FLdUI1
  loc_A78946: CI2UI1
  loc_A78948: LitI2_Byte 1
  loc_A7894A: AddI2
  loc_A7894B: CUI1I2
  loc_A7894D: FStUI1 var_8A
  loc_A78951: LitI4 -1
  loc_A78956: LitI4 3
  loc_A7895B: LitI4 3
  loc_A78960: FMemLdR4 arg_8(4)
  loc_A78965: CVarAd
  loc_A78969: PopAdLdVar
  loc_A7896A: ILdRf var_88
  loc_A7896D: CVarStr var_9C
  loc_A78970: PopAdLdVar
  loc_A78971: ILdPr
  loc_A78974: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A78979: ExitProc
  loc_A7897A: FLdUI1
  loc_A7897E: CI2UI1
  loc_A78980: LitI2_Byte 3
  loc_A78982: GtI2
  loc_A78983: BranchF loc_A78993
  loc_A78986: LitStr "No hay conexión con el servidor. Verifique..."
  loc_A78989: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7898E: End
  loc_A78990: Branch loc_A7899E
  loc_A78993: LitStr "PROVIDER=MSDASQL;dsn=myrecaudacion-guaymallen-gis;uid=infogov;pwd=infogov123;database=catastro_guaymallen;"
  loc_A78996: ImpAdCallFPR4 Proc_272_35_A20644()
  loc_A7899B: Branch loc_A78942
  loc_A7899E: ExitProc
End Function

Private Function Proc_272_60_AAEEE0() 'AAEEE0
  'Data Table: 43C408
  loc_AAEE08: OnErrorGoto loc_AAEEA0
  loc_AAEE0B: LitI2_Byte 0
  loc_AAEE0D: CUI1I2
  loc_AAEE0F: FStUI1 var_86
  loc_AAEE13: FLdUI1
  loc_AAEE17: CI2UI1
  loc_AAEE19: LitI2_Byte 1
  loc_AAEE1B: AddI2
  loc_AAEE1C: CUI1I2
  loc_AAEE1E: FStUI1 var_86
  loc_AAEE22: FLdRfVar var_A0
  loc_AAEE25: ILdPr
  loc_AAEE28:  = Me.Source
  loc_AAEE2D: FLdRfVar var_A0
  loc_AAEE30: CStrVarTmp
  loc_AAEE31: FStStr var_8C
  loc_AAEE34: FFree1Var var_A0 = ""
  loc_AAEE37: FLdRfVar var_A0
  loc_AAEE3A: ILdPr
  loc_AAEE3D:  = Me.Filter
  loc_AAEE42: FLdRfVar var_A0
  loc_AAEE45: CStrVarTmp
  loc_AAEE46: FStStr var_90
  loc_AAEE49: FFree1Var var_A0 = ""
  loc_AAEE4C: LitNothing
  loc_AAEE4E: CastAd
  loc_AAEE51: IStAdFunc
  loc_AAEE55: New Recordset
  loc_AAEE59: IStAdFunc
  loc_AAEE5D: LitI4 -1
  loc_AAEE62: LitI4 3
  loc_AAEE67: LitI4 3
  loc_AAEE6C: FMemLdR4 arg_8(0)
  loc_AAEE71: CVarAd
  loc_AAEE75: PopAdLdVar
  loc_AAEE76: ILdRf var_8C
  loc_AAEE79: CVarStr var_B0
  loc_AAEE7C: PopAdLdVar
  loc_AAEE7D: ILdPr
  loc_AAEE80: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_AAEE85: ILdRf var_90
  loc_AAEE88: LitStr "0"
  loc_AAEE8B: NeStr
  loc_AAEE8D: BranchF loc_AAEE9F
  loc_AAEE90: ILdRf var_90
  loc_AAEE93: CVarStr var_B0
  loc_AAEE96: PopAdLdVar
  loc_AAEE97: ILdPr
  loc_AAEE9A: Me.Filter = from_stack_1
  loc_AAEE9F: ExitProc
  loc_AAEEA0: FLdUI1
  loc_AAEEA4: CI2UI1
  loc_AAEEA6: LitI2_Byte 3
  loc_AAEEA8: GtI2
  loc_AAEEA9: BranchF loc_AAEEB9
  loc_AAEEAC: LitStr "No hay conexión con el servidor. Verifique..."
  loc_AAEEAF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAEEB4: End
  loc_AAEEB6: Branch loc_AAEEDE
  loc_AAEEB9: FMemLdPr
  loc_AAEEBE: Me.Close
  loc_AAEEC3: LitI4 -1
  loc_AAEEC8: LitStr vbNullString
  loc_AAEECB: LitStr vbNullString
  loc_AAEECE: LitStr vbNullString
  loc_AAEED1: FMemLdPr
  loc_AAEED6: Me.Open from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_AAEEDB: Branch loc_AAEE13
  loc_AAEEDE: ExitProc
End Function

Private Function Proc_272_61_A5AD44(arg_C) 'A5AD44
  'Data Table: 43C408
  loc_A5ACE0: ILdRf arg_C
  loc_A5ACE3: FStStrCopy var_88
  loc_A5ACE6: OnErrorGoto loc_A5AD39
  loc_A5ACE9: ILdRf var_88
  loc_A5ACEC: LitStr vbNullString
  loc_A5ACEF: NeStr
  loc_A5ACF1: BranchF loc_A5AD30
  loc_A5ACF4: LitNothing
  loc_A5ACF6: CastAd
  loc_A5ACF9: IStAdFunc
  loc_A5ACFD: New Recordset
  loc_A5AD01: IStAdFunc
  loc_A5AD05: LitI4 -1
  loc_A5AD0A: LitI4 3
  loc_A5AD0F: LitI4 3
  loc_A5AD14: FMemLdR4 arg_8(0)
  loc_A5AD19: CVarAd
  loc_A5AD1D: PopAdLdVar
  loc_A5AD1E: ILdRf var_88
  loc_A5AD21: CVarStr var_98
  loc_A5AD24: PopAdLdVar
  loc_A5AD25: ILdPr
  loc_A5AD28: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5AD2D: Branch loc_A5AD38
  loc_A5AD30: LitStr "Consulte con el Proveedor del Sistema..."
  loc_A5AD33: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A5AD38: ExitProc
  loc_A5AD39: LitStr "Error de sintaxis. Consulte con el Proveedor del software..."
  loc_A5AD3C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A5AD41: End
  loc_A5AD43: ExitProc
End Function

Private Function Proc_272_62_A5B9BC(arg_C) 'A5B9BC
  'Data Table: 43C408
  loc_A5B958: ILdRf arg_C
  loc_A5B95B: FStStrCopy var_88
  loc_A5B95E: OnErrorGoto loc_A5B9B1
  loc_A5B961: ILdRf var_88
  loc_A5B964: LitStr vbNullString
  loc_A5B967: NeStr
  loc_A5B969: BranchF loc_A5B9A8
  loc_A5B96C: LitNothing
  loc_A5B96E: CastAd
  loc_A5B971: IStAdFunc
  loc_A5B975: New Recordset
  loc_A5B979: IStAdFunc
  loc_A5B97D: LitI4 -1
  loc_A5B982: LitI4 3
  loc_A5B987: LitI4 3
  loc_A5B98C: FMemLdR4 arg_8(4)
  loc_A5B991: CVarAd
  loc_A5B995: PopAdLdVar
  loc_A5B996: ILdRf var_88
  loc_A5B999: CVarStr var_98
  loc_A5B99C: PopAdLdVar
  loc_A5B99D: ILdPr
  loc_A5B9A0: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5B9A5: Branch loc_A5B9B0
  loc_A5B9A8: LitStr "Consulte con el Proveedor del Sistema..."
  loc_A5B9AB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A5B9B0: ExitProc
  loc_A5B9B1: LitStr "Error de sintaxis. Consulte con el Proveedor del software..."
  loc_A5B9B4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A5B9B9: End
  loc_A5B9BB: ExitProc
End Function

Private Function Proc_272_63_9FCD50(arg_C) '9FCD50
  'Data Table: 43C408
  loc_9FCD28: ILdRf arg_C
  loc_9FCD2B: FStStrCopy var_8C
  loc_9FCD2E: LitI4 0
  loc_9FCD33: LitI4 -1
  loc_9FCD38: LitI4 1
  loc_9FCD3D: LitStr "."
  loc_9FCD40: LitStr ","
  loc_9FCD43: ILdRf var_8C
  loc_9FCD46: ImpAdCallI2 Replace(, , , , , )
  loc_9FCD4B: FStStr var_88
  loc_9FCD4E: ExitProc
End Function

Private Function Proc_272_64_A06738(arg_C) 'A06738
  'Data Table: 43C408
  loc_A0670C: ILdRf arg_C
  loc_A0670F: FStStrCopy var_88
  loc_A06712: LitI4 1
  loc_A06717: LitStr "Explorer.exe /select,"""
  loc_A0671A: ILdRf var_88
  loc_A0671D: ConcatStr
  loc_A0671E: FStStrNoPop var_8C
  loc_A06721: LitStr """"
  loc_A06724: ConcatStr
  loc_A06725: CVarStr var_9C
  loc_A06728: ImpAdCallFPR4 push Shell(, )
  loc_A0672D: FStFPR8 var_A4
  loc_A06730: FFree1Str var_8C
  loc_A06733: FFree1Var var_9C = ""
  loc_A06736: ExitProc
End Function

Private Function Proc_272_65_AB08A8(arg_C, arg_10) 'AB08A8
  'Data Table: 43C408
  loc_AB07F4: ILdRf arg_C
  loc_AB07F7: FStStrCopy var_88
  loc_AB07FA: ILdRf arg_10
  loc_AB07FD: FStStrCopy var_8C
  loc_AB0800: OnErrorGoto loc_AB0836
  loc_AB0803: LitVar_Missing var_BC
  loc_AB0806: ImpAdCallI2 FreeFile()
  loc_AB080B: CVarI2 var_CC
  loc_AB080E: FStVar var_9C
  loc_AB0812: FFree1Var var_BC = ""
  loc_AB0815: ILdRf var_88
  loc_AB0818: FLdRfVar var_9C
  loc_AB081B: CI2Var
  loc_AB081C: LitI2_Byte &HFF
  loc_AB081E: OpenFile
  loc_AB0822: ILdRf var_8C
  loc_AB0825: FLdRfVar var_9C
  loc_AB0828: CI2Var
  loc_AB0829: PrintFile
  loc_AB082F: FLdRfVar var_9C
  loc_AB0832: CI2Var
  loc_AB0833: Close
  loc_AB0835: ExitProc
  loc_AB0836: LitStr "Error guardando archivo de registro."
  loc_AB0839: LitStr vbCrLf
  loc_AB083C: ConcatStr
  loc_AB083D: FStStrNoPop var_D0
  loc_AB0840: LitStr "N° "
  loc_AB0843: ConcatStr
  loc_AB0844: FStStrNoPop var_DC
  loc_AB0847: FLdRfVar var_D8
  loc_AB084A: ImpAdCallI2 Err 'rtcErrObj
  loc_AB084F: FStAdFunc var_D4
  loc_AB0852: FLdPr var_D4
  loc_AB0855:  = Err.Number
  loc_AB085A: ILdRf var_D8
  loc_AB085D: CStrI4
  loc_AB085F: FStStrNoPop var_E0
  loc_AB0862: ConcatStr
  loc_AB0863: FStStrNoPop var_E4
  loc_AB0866: LitStr ": "
  loc_AB0869: ConcatStr
  loc_AB086A: FStStrNoPop var_F0
  loc_AB086D: FLdRfVar var_EC
  loc_AB0870: ImpAdCallI2 Err 'rtcErrObj
  loc_AB0875: FStAdFunc var_E8
  loc_AB0878: FLdPr var_E8
  loc_AB087B:  = Err.Description
  loc_AB0880: ILdRf var_EC
  loc_AB0883: ConcatStr
  loc_AB0884: FStStrNoPop var_F4
  loc_AB0887: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB088C: FFreeStr var_D0 = "": var_DC = "": var_E0 = "": var_E4 = "": var_F0 = "": var_EC = ""
  loc_AB089D: FFreeAd var_D4 = ""
  loc_AB08A4: ExitProc
End Function
