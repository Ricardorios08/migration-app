
Private Function Proc_259_0_9B97D0(arg_C) '9B97D0
  'Data Table: 4569C4
  loc_9B9724: LitStr "SELECT FedePaco FROM contpres.paraconta WHERE PeriInfo = "
  loc_9B9727: FLdI2 arg_C
  loc_9B972A: CStrUI1
  loc_9B972C: FStStrNoPop var_8C
  loc_9B972F: ConcatStr
  loc_9B9730: FStStrNoPop var_90
  loc_9B9733: LitStr ";"
  loc_9B9736: ConcatStr
  loc_9B9737: FStStrNoPop var_94
  loc_9B973A: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9B973F: FFreeStr var_8C = "": var_90 = ""
  loc_9B9748: FLdRfVar var_AC
  loc_9B974B: LitVarStr var_A8, "FedePaco"
  loc_9B9750: PopAdLdVar
  loc_9B9751: FLdRfVar var_98
  loc_9B9754: FMemLdPr
  loc_9B9759:  = Me.Fields
  loc_9B975E: FLdPr var_98
  loc_9B9761: from_stack_2 = Me.Item(from_stack_1)
  loc_9B9766: FLdZeroAd var_AC
  loc_9B9769: CVarAd
  loc_9B976D: ImpAdCallI2 IsDate()
  loc_9B9772: FFree1Ad var_98
  loc_9B9775: FFree1Var var_BC = ""
  loc_9B9778: BranchF loc_9B97B8
  loc_9B977B: FLdRfVar var_BC
  loc_9B977E: FLdRfVar var_AC
  loc_9B9781: LitVarStr var_A8, "FedePaco"
  loc_9B9786: PopAdLdVar
  loc_9B9787: FLdRfVar var_98
  loc_9B978A: FMemLdPr
  loc_9B978F:  = Me.Fields
  loc_9B9794: FLdPr var_98
  loc_9B9797: from_stack_2 = Me.Item(from_stack_1)
  loc_9B979C: FLdPr var_AC
  loc_9B979F:  = Me.Value
  loc_9B97A4: FLdRfVar var_BC
  loc_9B97A7: CStrVarTmp
  loc_9B97A8: FStStr var_88
  loc_9B97AB: FFreeAd var_98 = ""
  loc_9B97B2: FFree1Var var_BC = ""
  loc_9B97B5: Branch loc_9B97CD
  loc_9B97B8: FLdI2 arg_C
  loc_9B97BB: LitI2_Byte 1
  loc_9B97BD: SubI2
  loc_9B97BE: CStrUI1
  loc_9B97C0: FStStrNoPop var_8C
  loc_9B97C3: LitStr "-12-31"
  loc_9B97C6: ConcatStr
  loc_9B97C7: FStStr var_88
  loc_9B97CA: FFree1Str var_8C
  loc_9B97CD: ExitProc
End Function

Private Function Proc_259_1_9FCF7C(arg_C, arg_10) '9FCF7C
  'Data Table: 4569C4
  loc_9FCE44: LitStr "SELECT FedePaco FROM contpres.paraconta WHERE PeriInfo = "
  loc_9FCE47: FLdI2 arg_C
  loc_9FCE4A: CStrUI1
  loc_9FCE4C: FStStrNoPop var_8C
  loc_9FCE4F: ConcatStr
  loc_9FCE50: FStStrNoPop var_90
  loc_9FCE53: LitStr " AND MONTH(FedePaco) = "
  loc_9FCE56: ConcatStr
  loc_9FCE57: FStStrNoPop var_94
  loc_9FCE5A: FLdI2 arg_10
  loc_9FCE5D: CStrUI1
  loc_9FCE5F: FStStrNoPop var_98
  loc_9FCE62: ConcatStr
  loc_9FCE63: FStStrNoPop var_9C
  loc_9FCE66: LitStr ";"
  loc_9FCE69: ConcatStr
  loc_9FCE6A: FStStrNoPop var_A0
  loc_9FCE6D: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9FCE72: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_9FCE81: FLdRfVar var_B8
  loc_9FCE84: LitVarStr var_B4, "FedePaco"
  loc_9FCE89: PopAdLdVar
  loc_9FCE8A: FLdRfVar var_A4
  loc_9FCE8D: FMemLdPr
  loc_9FCE92:  = Me.Fields
  loc_9FCE97: FLdPr var_A4
  loc_9FCE9A: from_stack_2 = Me.Item(from_stack_1)
  loc_9FCE9F: FLdZeroAd var_B8
  loc_9FCEA2: CVarAd
  loc_9FCEA6: ImpAdCallI2 IsDate()
  loc_9FCEAB: FFree1Ad var_A4
  loc_9FCEAE: FFree1Var var_C8 = ""
  loc_9FCEB1: BranchF loc_9FCEF1
  loc_9FCEB4: FLdRfVar var_C8
  loc_9FCEB7: FLdRfVar var_B8
  loc_9FCEBA: LitVarStr var_B4, "FedePaco"
  loc_9FCEBF: PopAdLdVar
  loc_9FCEC0: FLdRfVar var_A4
  loc_9FCEC3: FMemLdPr
  loc_9FCEC8:  = Me.Fields
  loc_9FCECD: FLdPr var_A4
  loc_9FCED0: from_stack_2 = Me.Item(from_stack_1)
  loc_9FCED5: FLdPr var_B8
  loc_9FCED8:  = Me.Value
  loc_9FCEDD: FLdRfVar var_C8
  loc_9FCEE0: CStrVarTmp
  loc_9FCEE1: FStStr var_88
  loc_9FCEE4: FFreeAd var_A4 = ""
  loc_9FCEEB: FFree1Var var_C8 = ""
  loc_9FCEEE: Branch loc_9FCF79
  loc_9FCEF1: FLdI2 arg_10
  loc_9FCEF4: LitI2_Byte 1
  loc_9FCEF6: AddI2
  loc_9FCEF7: LitI2_Byte &HD
  loc_9FCEF9: EqI2
  loc_9FCEFA: BranchF loc_9FCF3B
  loc_9FCEFD: FLdI2 arg_C
  loc_9FCF00: CStrUI1
  loc_9FCF02: FStStrNoPop var_8C
  loc_9FCF05: LitStr "-"
  loc_9FCF08: ConcatStr
  loc_9FCF09: FStStrNoPop var_90
  loc_9FCF0C: FLdI2 arg_10
  loc_9FCF0F: CStrUI1
  loc_9FCF11: FStStrNoPop var_94
  loc_9FCF14: ConcatStr
  loc_9FCF15: FStStrNoPop var_98
  loc_9FCF18: LitStr "-01"
  loc_9FCF1B: ConcatStr
  loc_9FCF1C: FStStrNoPop var_9C
  loc_9FCF1F: CDateStr
  loc_9FCF21: LitI2_Byte 1
  loc_9FCF23: CR8I2
  loc_9FCF24: SubR4
  loc_9FCF25: CDateR8
  loc_9FCF26: CStrDate
  loc_9FCF28: FStStr var_88
  loc_9FCF2B: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9FCF38: Branch loc_9FCF79
  loc_9FCF3B: FLdI2 arg_C
  loc_9FCF3E: CStrUI1
  loc_9FCF40: FStStrNoPop var_8C
  loc_9FCF43: LitStr "-"
  loc_9FCF46: ConcatStr
  loc_9FCF47: FStStrNoPop var_90
  loc_9FCF4A: FLdI2 arg_10
  loc_9FCF4D: LitI2_Byte 1
  loc_9FCF4F: AddI2
  loc_9FCF50: CStrUI1
  loc_9FCF52: FStStrNoPop var_94
  loc_9FCF55: ConcatStr
  loc_9FCF56: FStStrNoPop var_98
  loc_9FCF59: LitStr "-01"
  loc_9FCF5C: ConcatStr
  loc_9FCF5D: FStStrNoPop var_9C
  loc_9FCF60: CDateStr
  loc_9FCF62: LitI2_Byte 1
  loc_9FCF64: CR8I2
  loc_9FCF65: SubR4
  loc_9FCF66: CDateR8
  loc_9FCF67: CStrDate
  loc_9FCF69: FStStr var_88
  loc_9FCF6C: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9FCF79: ExitProc
End Function

Private Function Proc_259_2_9BA468(arg_C) '9BA468
  'Data Table: 4569C4
  loc_9BA3BC: LitStr "SELECT FeproPaco FROM contpres.paraconta WHERE PeriInfo = "
  loc_9BA3BF: FLdI2 arg_C
  loc_9BA3C2: CStrUI1
  loc_9BA3C4: FStStrNoPop var_8C
  loc_9BA3C7: ConcatStr
  loc_9BA3C8: FStStrNoPop var_90
  loc_9BA3CB: LitStr ";"
  loc_9BA3CE: ConcatStr
  loc_9BA3CF: FStStrNoPop var_94
  loc_9BA3D2: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9BA3D7: FFreeStr var_8C = "": var_90 = ""
  loc_9BA3E0: FLdRfVar var_AC
  loc_9BA3E3: LitVarStr var_A8, "FeproPaco"
  loc_9BA3E8: PopAdLdVar
  loc_9BA3E9: FLdRfVar var_98
  loc_9BA3EC: FMemLdPr
  loc_9BA3F1:  = Me.Fields
  loc_9BA3F6: FLdPr var_98
  loc_9BA3F9: from_stack_2 = Me.Item(from_stack_1)
  loc_9BA3FE: FLdZeroAd var_AC
  loc_9BA401: CVarAd
  loc_9BA405: ImpAdCallI2 IsDate()
  loc_9BA40A: FFree1Ad var_98
  loc_9BA40D: FFree1Var var_BC = ""
  loc_9BA410: BranchF loc_9BA450
  loc_9BA413: FLdRfVar var_BC
  loc_9BA416: FLdRfVar var_AC
  loc_9BA419: LitVarStr var_A8, "FeproPaco"
  loc_9BA41E: PopAdLdVar
  loc_9BA41F: FLdRfVar var_98
  loc_9BA422: FMemLdPr
  loc_9BA427:  = Me.Fields
  loc_9BA42C: FLdPr var_98
  loc_9BA42F: from_stack_2 = Me.Item(from_stack_1)
  loc_9BA434: FLdPr var_AC
  loc_9BA437:  = Me.Value
  loc_9BA43C: FLdRfVar var_BC
  loc_9BA43F: CStrVarTmp
  loc_9BA440: FStStr var_88
  loc_9BA443: FFreeAd var_98 = ""
  loc_9BA44A: FFree1Var var_BC = ""
  loc_9BA44D: Branch loc_9BA465
  loc_9BA450: FLdI2 arg_C
  loc_9BA453: LitI2_Byte 1
  loc_9BA455: SubI2
  loc_9BA456: CStrUI1
  loc_9BA458: FStStrNoPop var_8C
  loc_9BA45B: LitStr "-12-31"
  loc_9BA45E: ConcatStr
  loc_9BA45F: FStStr var_88
  loc_9BA462: FFree1Str var_8C
  loc_9BA465: ExitProc
End Function

Private Function Proc_259_3_9FD10C(arg_C, arg_10) '9FD10C
  'Data Table: 4569C4
  loc_9FCFD4: LitStr "SELECT FeproPaco FROM contpres.paraconta WHERE PeriInfo = "
  loc_9FCFD7: FLdI2 arg_C
  loc_9FCFDA: CStrUI1
  loc_9FCFDC: FStStrNoPop var_8C
  loc_9FCFDF: ConcatStr
  loc_9FCFE0: FStStrNoPop var_90
  loc_9FCFE3: LitStr " AND MONTH(FeproPaco) = "
  loc_9FCFE6: ConcatStr
  loc_9FCFE7: FStStrNoPop var_94
  loc_9FCFEA: FLdI2 arg_10
  loc_9FCFED: CStrUI1
  loc_9FCFEF: FStStrNoPop var_98
  loc_9FCFF2: ConcatStr
  loc_9FCFF3: FStStrNoPop var_9C
  loc_9FCFF6: LitStr ";"
  loc_9FCFF9: ConcatStr
  loc_9FCFFA: FStStrNoPop var_A0
  loc_9FCFFD: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9FD002: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_9FD011: FLdRfVar var_B8
  loc_9FD014: LitVarStr var_B4, "FeproPaco"
  loc_9FD019: PopAdLdVar
  loc_9FD01A: FLdRfVar var_A4
  loc_9FD01D: FMemLdPr
  loc_9FD022:  = Me.Fields
  loc_9FD027: FLdPr var_A4
  loc_9FD02A: from_stack_2 = Me.Item(from_stack_1)
  loc_9FD02F: FLdZeroAd var_B8
  loc_9FD032: CVarAd
  loc_9FD036: ImpAdCallI2 IsDate()
  loc_9FD03B: FFree1Ad var_A4
  loc_9FD03E: FFree1Var var_C8 = ""
  loc_9FD041: BranchF loc_9FD081
  loc_9FD044: FLdRfVar var_C8
  loc_9FD047: FLdRfVar var_B8
  loc_9FD04A: LitVarStr var_B4, "FeproPaco"
  loc_9FD04F: PopAdLdVar
  loc_9FD050: FLdRfVar var_A4
  loc_9FD053: FMemLdPr
  loc_9FD058:  = Me.Fields
  loc_9FD05D: FLdPr var_A4
  loc_9FD060: from_stack_2 = Me.Item(from_stack_1)
  loc_9FD065: FLdPr var_B8
  loc_9FD068:  = Me.Value
  loc_9FD06D: FLdRfVar var_C8
  loc_9FD070: CStrVarTmp
  loc_9FD071: FStStr var_88
  loc_9FD074: FFreeAd var_A4 = ""
  loc_9FD07B: FFree1Var var_C8 = ""
  loc_9FD07E: Branch loc_9FD109
  loc_9FD081: FLdI2 arg_10
  loc_9FD084: LitI2_Byte 1
  loc_9FD086: AddI2
  loc_9FD087: LitI2_Byte &HD
  loc_9FD089: EqI2
  loc_9FD08A: BranchF loc_9FD0CB
  loc_9FD08D: FLdI2 arg_C
  loc_9FD090: CStrUI1
  loc_9FD092: FStStrNoPop var_8C
  loc_9FD095: LitStr "-"
  loc_9FD098: ConcatStr
  loc_9FD099: FStStrNoPop var_90
  loc_9FD09C: FLdI2 arg_10
  loc_9FD09F: CStrUI1
  loc_9FD0A1: FStStrNoPop var_94
  loc_9FD0A4: ConcatStr
  loc_9FD0A5: FStStrNoPop var_98
  loc_9FD0A8: LitStr "-01"
  loc_9FD0AB: ConcatStr
  loc_9FD0AC: FStStrNoPop var_9C
  loc_9FD0AF: CDateStr
  loc_9FD0B1: LitI2_Byte 1
  loc_9FD0B3: CR8I2
  loc_9FD0B4: SubR4
  loc_9FD0B5: CDateR8
  loc_9FD0B6: CStrDate
  loc_9FD0B8: FStStr var_88
  loc_9FD0BB: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9FD0C8: Branch loc_9FD109
  loc_9FD0CB: FLdI2 arg_C
  loc_9FD0CE: CStrUI1
  loc_9FD0D0: FStStrNoPop var_8C
  loc_9FD0D3: LitStr "-"
  loc_9FD0D6: ConcatStr
  loc_9FD0D7: FStStrNoPop var_90
  loc_9FD0DA: FLdI2 arg_10
  loc_9FD0DD: LitI2_Byte 1
  loc_9FD0DF: AddI2
  loc_9FD0E0: CStrUI1
  loc_9FD0E2: FStStrNoPop var_94
  loc_9FD0E5: ConcatStr
  loc_9FD0E6: FStStrNoPop var_98
  loc_9FD0E9: LitStr "-01"
  loc_9FD0EC: ConcatStr
  loc_9FD0ED: FStStrNoPop var_9C
  loc_9FD0F0: CDateStr
  loc_9FD0F2: LitI2_Byte 1
  loc_9FD0F4: CR8I2
  loc_9FD0F5: SubR4
  loc_9FD0F6: CDateR8
  loc_9FD0F7: CStrDate
  loc_9FD0F9: FStStr var_88
  loc_9FD0FC: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9FD109: ExitProc
End Function

Private Function Proc_259_4_A691B4(arg_C) 'A691B4
  'Data Table: 4569C4
  loc_A68E74: ILdRf arg_C
  loc_A68E77: FStStrCopy var_8C
  loc_A68E7A: ILdRf arg_14
  loc_A68E7D: FStStrCopy var_90
  loc_A68E80: LitStr "SELECT *"
  loc_A68E83: LitStr " FROM infogov.acceso"
  loc_A68E86: ConcatStr
  loc_A68E87: FStStrNoPop var_94
  loc_A68E8A: LitStr " INNER JOIN infogov.menu ON menu.CodiMenu = acceso.CodiMenu"
  loc_A68E8D: ConcatStr
  loc_A68E8E: FStStrNoPop var_98
  loc_A68E91: LitStr " WHERE acceso.CodiUsua = '"
  loc_A68E94: ConcatStr
  loc_A68E95: FStStrNoPop var_9C
  loc_A68E98: ILdRf var_8C
  loc_A68E9B: ConcatStr
  loc_A68E9C: FStStrNoPop var_A0
  loc_A68E9F: LitStr "'"
  loc_A68EA2: ConcatStr
  loc_A68EA3: FStStrNoPop var_A4
  loc_A68EA6: LitStr " AND menu.CodiSist = "
  loc_A68EA9: ConcatStr
  loc_A68EAA: FStStrNoPop var_A8
  loc_A68EAD: FLdUI1
  loc_A68EB1: CStrI2
  loc_A68EB3: FStStrNoPop var_AC
  loc_A68EB6: ConcatStr
  loc_A68EB7: FStStrNoPop var_B0
  loc_A68EBA: LitStr " AND menu.FormMenu = '"
  loc_A68EBD: ConcatStr
  loc_A68EBE: FStStrNoPop var_B4
  loc_A68EC1: ILdRf var_90
  loc_A68EC4: ConcatStr
  loc_A68EC5: FStStrNoPop var_B8
  loc_A68EC8: LitStr "'"
  loc_A68ECB: ConcatStr
  loc_A68ECC: FStStrNoPop var_BC
  loc_A68ECF: LitStr " LIMIT 1;"
  loc_A68ED2: ConcatStr
  loc_A68ED3: FStStrNoPop var_C0
  loc_A68ED6: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_A68EDB: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A68EF6: FLdRfVar var_C4
  loc_A68EF9: FMemLdPr
  loc_A68EFE:  = Me.RecordCount
  loc_A68F03: ILdRf var_C4
  loc_A68F06: LitI4 0
  loc_A68F0B: GtI4
  loc_A68F0C: BranchF loc_A6914A
  loc_A68F0F: LitStr vbNullString
  loc_A68F12: ILdPr
  loc_A68F15: Call tblacceso.MsgErrorPut(from_stack_1v)
  loc_A68F1A: FLdRfVar var_EC
  loc_A68F1D: FLdRfVar var_DC
  loc_A68F20: LitVarStr var_D8, "CodiUsua"
  loc_A68F25: PopAdLdVar
  loc_A68F26: FLdRfVar var_C8
  loc_A68F29: FMemLdPr
  loc_A68F2E:  = Me.Fields
  loc_A68F33: FLdPr var_C8
  loc_A68F36: from_stack_2 = Me.Item(from_stack_1)
  loc_A68F3B: FLdPr var_DC
  loc_A68F3E:  = Me.Value
  loc_A68F43: FLdRfVar var_EC
  loc_A68F46: CStrVarTmp
  loc_A68F47: FStStrNoPop var_94
  loc_A68F4A: ILdPr
  loc_A68F4D: Call tblacceso.CodiUsuaPut(from_stack_1v)
  loc_A68F52: FFree1Str var_94
  loc_A68F55: FFreeAd var_C8 = ""
  loc_A68F5C: FFree1Var var_EC = ""
  loc_A68F5F: FLdRfVar var_EC
  loc_A68F62: FLdRfVar var_DC
  loc_A68F65: LitVarStr var_D8, "CodiMenu"
  loc_A68F6A: PopAdLdVar
  loc_A68F6B: FLdRfVar var_C8
  loc_A68F6E: FMemLdPr
  loc_A68F73:  = Me.Fields
  loc_A68F78: FLdPr var_C8
  loc_A68F7B: from_stack_2 = Me.Item(from_stack_1)
  loc_A68F80: FLdPr var_DC
  loc_A68F83:  = Me.Value
  loc_A68F88: FLdRfVar var_EC
  loc_A68F8B: CStrVarTmp
  loc_A68F8C: FStStrNoPop var_94
  loc_A68F8F: ILdPr
  loc_A68F92: Call tblacceso.CodiMenuPut(from_stack_1v)
  loc_A68F97: FFree1Str var_94
  loc_A68F9A: FFreeAd var_C8 = ""
  loc_A68FA1: FFree1Var var_EC = ""
  loc_A68FA4: FLdRfVar var_EC
  loc_A68FA7: FLdRfVar var_DC
  loc_A68FAA: LitVarStr var_D8, "AltaAcce"
  loc_A68FAF: PopAdLdVar
  loc_A68FB0: FLdRfVar var_C8
  loc_A68FB3: FMemLdPr
  loc_A68FB8:  = Me.Fields
  loc_A68FBD: FLdPr var_C8
  loc_A68FC0: from_stack_2 = Me.Item(from_stack_1)
  loc_A68FC5: FLdPr var_DC
  loc_A68FC8:  = Me.Value
  loc_A68FCD: FLdRfVar var_EC
  loc_A68FD0: CStrVarTmp
  loc_A68FD1: FStStrNoPop var_94
  loc_A68FD4: ILdPr
  loc_A68FD7: Call tblacceso.AltaAccePut(from_stack_1v)
  loc_A68FDC: FFree1Str var_94
  loc_A68FDF: FFreeAd var_C8 = ""
  loc_A68FE6: FFree1Var var_EC = ""
  loc_A68FE9: FLdRfVar var_EC
  loc_A68FEC: FLdRfVar var_DC
  loc_A68FEF: LitVarStr var_D8, "BajaAcce"
  loc_A68FF4: PopAdLdVar
  loc_A68FF5: FLdRfVar var_C8
  loc_A68FF8: FMemLdPr
  loc_A68FFD:  = Me.Fields
  loc_A69002: FLdPr var_C8
  loc_A69005: from_stack_2 = Me.Item(from_stack_1)
  loc_A6900A: FLdPr var_DC
  loc_A6900D:  = Me.Value
  loc_A69012: FLdRfVar var_EC
  loc_A69015: CStrVarTmp
  loc_A69016: FStStrNoPop var_94
  loc_A69019: ILdPr
  loc_A6901C: Call tblacceso.BajaAccePut(from_stack_1v)
  loc_A69021: FFree1Str var_94
  loc_A69024: FFreeAd var_C8 = ""
  loc_A6902B: FFree1Var var_EC = ""
  loc_A6902E: FLdRfVar var_EC
  loc_A69031: FLdRfVar var_DC
  loc_A69034: LitVarStr var_D8, "ModiAcce"
  loc_A69039: PopAdLdVar
  loc_A6903A: FLdRfVar var_C8
  loc_A6903D: FMemLdPr
  loc_A69042:  = Me.Fields
  loc_A69047: FLdPr var_C8
  loc_A6904A: from_stack_2 = Me.Item(from_stack_1)
  loc_A6904F: FLdPr var_DC
  loc_A69052:  = Me.Value
  loc_A69057: FLdRfVar var_EC
  loc_A6905A: CStrVarTmp
  loc_A6905B: FStStrNoPop var_94
  loc_A6905E: ILdPr
  loc_A69061: Call tblacceso.ModiAccePut(from_stack_1v)
  loc_A69066: FFree1Str var_94
  loc_A69069: FFreeAd var_C8 = ""
  loc_A69070: FFree1Var var_EC = ""
  loc_A69073: FLdRfVar var_EC
  loc_A69076: FLdRfVar var_DC
  loc_A69079: LitVarStr var_D8, "AudiAcce"
  loc_A6907E: PopAdLdVar
  loc_A6907F: FLdRfVar var_C8
  loc_A69082: FMemLdPr
  loc_A69087:  = Me.Fields
  loc_A6908C: FLdPr var_C8
  loc_A6908F: from_stack_2 = Me.Item(from_stack_1)
  loc_A69094: FLdPr var_DC
  loc_A69097:  = Me.Value
  loc_A6909C: FLdRfVar var_EC
  loc_A6909F: CStrVarTmp
  loc_A690A0: FStStrNoPop var_94
  loc_A690A3: ILdPr
  loc_A690A6: Call tblacceso.AudiAccePut(from_stack_1v)
  loc_A690AB: FFree1Str var_94
  loc_A690AE: FFreeAd var_C8 = ""
  loc_A690B5: FFree1Var var_EC = ""
  loc_A690B8: FLdRfVar var_EC
  loc_A690BB: FLdRfVar var_DC
  loc_A690BE: LitVarStr var_D8, "ImprAcce"
  loc_A690C3: PopAdLdVar
  loc_A690C4: FLdRfVar var_C8
  loc_A690C7: FMemLdPr
  loc_A690CC:  = Me.Fields
  loc_A690D1: FLdPr var_C8
  loc_A690D4: from_stack_2 = Me.Item(from_stack_1)
  loc_A690D9: FLdPr var_DC
  loc_A690DC:  = Me.Value
  loc_A690E1: FLdRfVar var_EC
  loc_A690E4: CStrVarTmp
  loc_A690E5: FStStrNoPop var_94
  loc_A690E8: ILdPr
  loc_A690EB: Call tblacceso.ImprAccePut(from_stack_1v)
  loc_A690F0: FFree1Str var_94
  loc_A690F3: FFreeAd var_C8 = ""
  loc_A690FA: FFree1Var var_EC = ""
  loc_A690FD: FLdRfVar var_EC
  loc_A69100: FLdRfVar var_DC
  loc_A69103: LitVarStr var_D8, "AltaUsua"
  loc_A69108: PopAdLdVar
  loc_A69109: FLdRfVar var_C8
  loc_A6910C: FMemLdPr
  loc_A69111:  = Me.Fields
  loc_A69116: FLdPr var_C8
  loc_A69119: from_stack_2 = Me.Item(from_stack_1)
  loc_A6911E: FLdPr var_DC
  loc_A69121:  = Me.Value
  loc_A69126: FLdRfVar var_EC
  loc_A69129: CStrVarTmp
  loc_A6912A: FStStrNoPop var_94
  loc_A6912D: ILdPr
  loc_A69130: Call tblacceso.AltaUsuaPut(from_stack_1v)
  loc_A69135: FFree1Str var_94
  loc_A69138: FFreeAd var_C8 = ""
  loc_A6913F: FFree1Var var_EC = ""
  loc_A69142: LitI2_Byte &HFF
  loc_A69144: FStI2 var_86
  loc_A69147: Branch loc_A691B2
  loc_A6914A: LitStr "El Acceso NO EXISTE. Verifique..."
  loc_A6914D: ILdPr
  loc_A69150: Call tblacceso.MsgErrorPut(from_stack_1v)
  loc_A69155: LitStr vbNullString
  loc_A69158: ILdPr
  loc_A6915B: Call tblacceso.CodiUsuaPut(from_stack_1v)
  loc_A69160: LitStr vbNullString
  loc_A69163: ILdPr
  loc_A69166: Call tblacceso.CodiMenuPut(from_stack_1v)
  loc_A6916B: LitStr vbNullString
  loc_A6916E: ILdPr
  loc_A69171: Call tblacceso.AltaAccePut(from_stack_1v)
  loc_A69176: LitStr vbNullString
  loc_A69179: ILdPr
  loc_A6917C: Call tblacceso.BajaAccePut(from_stack_1v)
  loc_A69181: LitStr vbNullString
  loc_A69184: ILdPr
  loc_A69187: Call tblacceso.ModiAccePut(from_stack_1v)
  loc_A6918C: LitStr vbNullString
  loc_A6918F: ILdPr
  loc_A69192: Call tblacceso.AudiAccePut(from_stack_1v)
  loc_A69197: LitStr vbNullString
  loc_A6919A: ILdPr
  loc_A6919D: Call tblacceso.ImprAccePut(from_stack_1v)
  loc_A691A2: LitStr vbNullString
  loc_A691A5: ILdPr
  loc_A691A8: Call tblacceso.AltaUsuaPut(from_stack_1v)
  loc_A691AD: LitI2_Byte 0
  loc_A691AF: FStI2 var_86
  loc_A691B2: ExitProcI2
End Function

Private Function Proc_259_5_B268F0(arg_C, arg_10) 'B268F0
  'Data Table: 4569C4
  loc_B25FFC: ILdRf arg_C
  loc_B25FFF: FStStrCopy var_8C
  loc_B26002: ILdRf arg_10
  loc_B26005: FStStrCopy var_90
  loc_B26008: LitStr "SELECT *"
  loc_B2600B: LitStr " FROM banco"
  loc_B2600E: ConcatStr
  loc_B2600F: FStStrNoPop var_94
  loc_B26012: LitStr " WHERE PeriInfo = '"
  loc_B26015: ConcatStr
  loc_B26016: FStStrNoPop var_98
  loc_B26019: ILdRf var_8C
  loc_B2601C: ConcatStr
  loc_B2601D: FStStrNoPop var_9C
  loc_B26020: LitStr "'"
  loc_B26023: ConcatStr
  loc_B26024: FStStrNoPop var_A0
  loc_B26027: LitStr " AND CodiBanc = '"
  loc_B2602A: ConcatStr
  loc_B2602B: FStStrNoPop var_A4
  loc_B2602E: ILdRf var_90
  loc_B26031: ConcatStr
  loc_B26032: FStStrNoPop var_A8
  loc_B26035: LitStr "';"
  loc_B26038: ConcatStr
  loc_B26039: FStStrNoPop var_AC
  loc_B2603C: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_B26041: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_B26052: FLdRfVar var_B0
  loc_B26055: FMemLdPr
  loc_B2605A:  = Me.RecordCount
  loc_B2605F: ILdRf var_B0
  loc_B26062: LitI4 0
  loc_B26067: GtI4
  loc_B26068: BranchF loc_B26802
  loc_B2606B: LitStr vbNullString
  loc_B2606E: ILdPr
  loc_B26071: Call tblbanco.MsgErrorPut(from_stack_1v)
  loc_B26076: FLdRfVar var_D8
  loc_B26079: FLdRfVar var_C8
  loc_B2607C: LitVarStr var_C4, "PeriInfo"
  loc_B26081: PopAdLdVar
  loc_B26082: FLdRfVar var_B4
  loc_B26085: FMemLdPr
  loc_B2608A:  = Me.Fields
  loc_B2608F: FLdPr var_B4
  loc_B26092: from_stack_2 = Me.Item(from_stack_1)
  loc_B26097: FLdPr var_C8
  loc_B2609A:  = Me.Value
  loc_B2609F: FLdRfVar var_D8
  loc_B260A2: CStrVarTmp
  loc_B260A3: FStStrNoPop var_94
  loc_B260A6: ILdPr
  loc_B260A9: Call tblbanco.PeriInfoPut(from_stack_1v)
  loc_B260AE: FFree1Str var_94
  loc_B260B1: FFreeAd var_B4 = ""
  loc_B260B8: FFree1Var var_D8 = ""
  loc_B260BB: FLdRfVar var_D8
  loc_B260BE: FLdRfVar var_C8
  loc_B260C1: LitVarStr var_C4, "CodiBanc"
  loc_B260C6: PopAdLdVar
  loc_B260C7: FLdRfVar var_B4
  loc_B260CA: FMemLdPr
  loc_B260CF:  = Me.Fields
  loc_B260D4: FLdPr var_B4
  loc_B260D7: from_stack_2 = Me.Item(from_stack_1)
  loc_B260DC: FLdPr var_C8
  loc_B260DF:  = Me.Value
  loc_B260E4: FLdRfVar var_D8
  loc_B260E7: CStrVarTmp
  loc_B260E8: FStStrNoPop var_94
  loc_B260EB: ILdPr
  loc_B260EE: Call tblbanco.CodiBancPut(from_stack_1v)
  loc_B260F3: FFree1Str var_94
  loc_B260F6: FFreeAd var_B4 = ""
  loc_B260FD: FFree1Var var_D8 = ""
  loc_B26100: FLdRfVar var_D8
  loc_B26103: FLdRfVar var_C8
  loc_B26106: LitVarStr var_C4, "DetaBanc"
  loc_B2610B: PopAdLdVar
  loc_B2610C: FLdRfVar var_B4
  loc_B2610F: FMemLdPr
  loc_B26114:  = Me.Fields
  loc_B26119: FLdPr var_B4
  loc_B2611C: from_stack_2 = Me.Item(from_stack_1)
  loc_B26121: FLdPr var_C8
  loc_B26124:  = Me.Value
  loc_B26129: FLdRfVar var_D8
  loc_B2612C: CStrVarTmp
  loc_B2612D: FStStrNoPop var_94
  loc_B26130: ILdPr
  loc_B26133: Call tblbanco.DetaBancPut(from_stack_1v)
  loc_B26138: FFree1Str var_94
  loc_B2613B: FFreeAd var_B4 = ""
  loc_B26142: FFree1Var var_D8 = ""
  loc_B26145: FLdRfVar var_D8
  loc_B26148: FLdRfVar var_C8
  loc_B2614B: LitVarStr var_C4, "NumeBanc"
  loc_B26150: PopAdLdVar
  loc_B26151: FLdRfVar var_B4
  loc_B26154: FMemLdPr
  loc_B26159:  = Me.Fields
  loc_B2615E: FLdPr var_B4
  loc_B26161: from_stack_2 = Me.Item(from_stack_1)
  loc_B26166: FLdPr var_C8
  loc_B26169:  = Me.Value
  loc_B2616E: FLdRfVar var_D8
  loc_B26171: CStrVarTmp
  loc_B26172: FStStrNoPop var_94
  loc_B26175: ILdPr
  loc_B26178: Call tblbanco.NumeBancPut(from_stack_1v)
  loc_B2617D: FFree1Str var_94
  loc_B26180: FFreeAd var_B4 = ""
  loc_B26187: FFree1Var var_D8 = ""
  loc_B2618A: FLdRfVar var_D8
  loc_B2618D: FLdRfVar var_C8
  loc_B26190: LitVarStr var_C4, "CodiCuco"
  loc_B26195: PopAdLdVar
  loc_B26196: FLdRfVar var_B4
  loc_B26199: FMemLdPr
  loc_B2619E:  = Me.Fields
  loc_B261A3: FLdPr var_B4
  loc_B261A6: from_stack_2 = Me.Item(from_stack_1)
  loc_B261AB: FLdPr var_C8
  loc_B261AE:  = Me.Value
  loc_B261B3: FLdRfVar var_D8
  loc_B261B6: CStrVarTmp
  loc_B261B7: FStStrNoPop var_94
  loc_B261BA: ILdPr
  loc_B261BD: Call tblbanco.CodiCucoPut(from_stack_1v)
  loc_B261C2: FFree1Str var_94
  loc_B261C5: FFreeAd var_B4 = ""
  loc_B261CC: FFree1Var var_D8 = ""
  loc_B261CF: FLdRfVar var_D8
  loc_B261D2: FLdRfVar var_C8
  loc_B261D5: LitVarStr var_C4, "FeanBanc"
  loc_B261DA: PopAdLdVar
  loc_B261DB: FLdRfVar var_B4
  loc_B261DE: FMemLdPr
  loc_B261E3:  = Me.Fields
  loc_B261E8: FLdPr var_B4
  loc_B261EB: from_stack_2 = Me.Item(from_stack_1)
  loc_B261F0: FLdPr var_C8
  loc_B261F3:  = Me.Value
  loc_B261F8: FLdRfVar var_110
  loc_B261FB: LitVarStr var_10C, "FeanBanc"
  loc_B26200: PopAdLdVar
  loc_B26201: FLdRfVar var_FC
  loc_B26204: FMemLdPr
  loc_B26209:  = Me.Fields
  loc_B2620E: FLdPr var_FC
  loc_B26211: from_stack_2 = Me.Item(from_stack_1)
  loc_B26216: LitVarStr var_140, vbNullString
  loc_B2621B: FStVarCopyObj var_150
  loc_B2621E: FLdRfVar var_150
  loc_B26221: FLdZeroAd var_110
  loc_B26224: CVarAd
  loc_B26228: FLdRfVar var_D8
  loc_B2622B: LitVarStr var_E8, vbNullString
  loc_B26230: HardType
  loc_B26231: NeVar var_F8
  loc_B26235: FStVar var_120
  loc_B26239: FLdRfVar var_120
  loc_B2623C: FLdRfVar var_160
  loc_B2623F: ImpAdCallFPR4  = IIf(, , )
  loc_B26244: FLdRfVar var_160
  loc_B26247: CStrVarVal var_94
  loc_B2624B: ILdPr
  loc_B2624E: Call tblbanco.FeanBancPut(from_stack_1v)
  loc_B26253: FFree1Str var_94
  loc_B26256: FFreeAd var_B4 = "": var_C8 = ""
  loc_B2625F: FFreeVar var_D8 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_B2626C: FLdRfVar var_D8
  loc_B2626F: FLdRfVar var_C8
  loc_B26272: LitVarStr var_C4, "EmauCheq"
  loc_B26277: PopAdLdVar
  loc_B26278: FLdRfVar var_B4
  loc_B2627B: FMemLdPr
  loc_B26280:  = Me.Fields
  loc_B26285: FLdPr var_B4
  loc_B26288: from_stack_2 = Me.Item(from_stack_1)
  loc_B2628D: FLdPr var_C8
  loc_B26290:  = Me.Value
  loc_B26295: FLdRfVar var_D8
  loc_B26298: CStrVarTmp
  loc_B26299: FStStrNoPop var_94
  loc_B2629C: ILdPr
  loc_B2629F: Call tblbanco.EmauCheqPut(from_stack_1v)
  loc_B262A4: FFree1Str var_94
  loc_B262A7: FFreeAd var_B4 = ""
  loc_B262AE: FFree1Var var_D8 = ""
  loc_B262B1: FLdRfVar var_D8
  loc_B262B4: FLdRfVar var_C8
  loc_B262B7: LitVarStr var_C4, "ProcBanc"
  loc_B262BC: PopAdLdVar
  loc_B262BD: FLdRfVar var_B4
  loc_B262C0: FMemLdPr
  loc_B262C5:  = Me.Fields
  loc_B262CA: FLdPr var_B4
  loc_B262CD: from_stack_2 = Me.Item(from_stack_1)
  loc_B262D2: FLdPr var_C8
  loc_B262D5:  = Me.Value
  loc_B262DA: FLdRfVar var_D8
  loc_B262DD: CStrVarTmp
  loc_B262DE: FStStrNoPop var_94
  loc_B262E1: ILdPr
  loc_B262E4: Call tblbanco.ProcBancPut(from_stack_1v)
  loc_B262E9: FFree1Str var_94
  loc_B262EC: FFreeAd var_B4 = ""
  loc_B262F3: FFree1Var var_D8 = ""
  loc_B262F6: FLdRfVar var_D8
  loc_B262F9: FLdRfVar var_C8
  loc_B262FC: LitVarStr var_C4, "DescBanc"
  loc_B26301: PopAdLdVar
  loc_B26302: FLdRfVar var_B4
  loc_B26305: FMemLdPr
  loc_B2630A:  = Me.Fields
  loc_B2630F: FLdPr var_B4
  loc_B26312: from_stack_2 = Me.Item(from_stack_1)
  loc_B26317: FLdPr var_C8
  loc_B2631A:  = Me.Value
  loc_B2631F: FLdRfVar var_D8
  loc_B26322: CStrVarTmp
  loc_B26323: FStStrNoPop var_94
  loc_B26326: ILdPr
  loc_B26329: Call tblbanco.DescBancPut(from_stack_1v)
  loc_B2632E: FFree1Str var_94
  loc_B26331: FFreeAd var_B4 = ""
  loc_B26338: FFree1Var var_D8 = ""
  loc_B2633B: FLdRfVar var_D8
  loc_B2633E: FLdRfVar var_C8
  loc_B26341: LitVarStr var_C4, "DescAdvBanc"
  loc_B26346: PopAdLdVar
  loc_B26347: FLdRfVar var_B4
  loc_B2634A: FMemLdPr
  loc_B2634F:  = Me.Fields
  loc_B26354: FLdPr var_B4
  loc_B26357: from_stack_2 = Me.Item(from_stack_1)
  loc_B2635C: FLdPr var_C8
  loc_B2635F:  = Me.Value
  loc_B26364: FLdRfVar var_D8
  loc_B26367: CStrVarTmp
  loc_B26368: FStStrNoPop var_94
  loc_B2636B: ILdPr
  loc_B2636E: Call tblbanco.DescAdvBancPut(from_stack_1v)
  loc_B26373: FFree1Str var_94
  loc_B26376: FFreeAd var_B4 = ""
  loc_B2637D: FFree1Var var_D8 = ""
  loc_B26380: FLdRfVar var_D8
  loc_B26383: FLdRfVar var_C8
  loc_B26386: LitVarStr var_C4, "TxtBanc"
  loc_B2638B: PopAdLdVar
  loc_B2638C: FLdRfVar var_B4
  loc_B2638F: FMemLdPr
  loc_B26394:  = Me.Fields
  loc_B26399: FLdPr var_B4
  loc_B2639C: from_stack_2 = Me.Item(from_stack_1)
  loc_B263A1: FLdPr var_C8
  loc_B263A4:  = Me.Value
  loc_B263A9: FLdRfVar var_D8
  loc_B263AC: CStrVarTmp
  loc_B263AD: FStStrNoPop var_94
  loc_B263B0: ILdPr
  loc_B263B3: Call tblbanco.TxtBancPut(from_stack_1v)
  loc_B263B8: FFree1Str var_94
  loc_B263BB: FFreeAd var_B4 = ""
  loc_B263C2: FFree1Var var_D8 = ""
  loc_B263C5: FLdRfVar var_D8
  loc_B263C8: FLdRfVar var_C8
  loc_B263CB: LitVarStr var_C4, "ConautBanc"
  loc_B263D0: PopAdLdVar
  loc_B263D1: FLdRfVar var_B4
  loc_B263D4: FMemLdPr
  loc_B263D9:  = Me.Fields
  loc_B263DE: FLdPr var_B4
  loc_B263E1: from_stack_2 = Me.Item(from_stack_1)
  loc_B263E6: FLdPr var_C8
  loc_B263E9:  = Me.Value
  loc_B263EE: FLdRfVar var_D8
  loc_B263F1: CStrVarTmp
  loc_B263F2: FStStrNoPop var_94
  loc_B263F5: ILdPr
  loc_B263F8: Call tblbanco.ConautBancPut(from_stack_1v)
  loc_B263FD: FFree1Str var_94
  loc_B26400: FFreeAd var_B4 = ""
  loc_B26407: FFree1Var var_D8 = ""
  loc_B2640A: FLdRfVar var_D8
  loc_B2640D: FLdRfVar var_C8
  loc_B26410: LitVarStr var_C4, "CodiUsua"
  loc_B26415: PopAdLdVar
  loc_B26416: FLdRfVar var_B4
  loc_B26419: FMemLdPr
  loc_B2641E:  = Me.Fields
  loc_B26423: FLdPr var_B4
  loc_B26426: from_stack_2 = Me.Item(from_stack_1)
  loc_B2642B: FLdPr var_C8
  loc_B2642E:  = Me.Value
  loc_B26433: FLdRfVar var_D8
  loc_B26436: CStrVarTmp
  loc_B26437: FStStrNoPop var_94
  loc_B2643A: ILdPr
  loc_B2643D: Call tblbanco.CodiUsuaPut(from_stack_1v)
  loc_B26442: FFree1Str var_94
  loc_B26445: FFreeAd var_B4 = ""
  loc_B2644C: FFree1Var var_D8 = ""
  loc_B2644F: LitI2_Byte &HFF
  loc_B26451: FStI2 var_86
  loc_B26454: ILdI4 arg_18
  loc_B26457: LitStr vbNullString
  loc_B2645A: NeStr
  loc_B2645C: BranchF loc_B267FF
  loc_B2645F: LitStr "SELECT IFNULL(Sum(DebeMoba)-Sum(HabeMoba),0) SaldAlIni"
  loc_B26462: LitStr ", IFNULL(Sum(IF(FecoMoba > "
  loc_B26465: ConcatStr
  loc_B26466: FStStrNoPop var_94
  loc_B26469: LitI4 1
  loc_B2646E: LitI4 1
  loc_B26473: LitVarStr var_E8, "'yyyy-mm-dd'"
  loc_B26478: FStVarCopyObj var_D8
  loc_B2647B: FLdRfVar var_D8
  loc_B2647E: ILdRf arg_18
  loc_B26481: CVarRef
  loc_B26486: ImpAdCallI2 Format$(, )
  loc_B2648B: FStStrNoPop var_98
  loc_B2648E: ConcatStr
  loc_B2648F: FStStrNoPop var_9C
  loc_B26492: LitStr " OR FecoMoba IS NULL,DebeMoba,0)),0) TDebSinConc"
  loc_B26495: ConcatStr
  loc_B26496: FStStrNoPop var_A0
  loc_B26499: LitStr ", IFNULL(Sum(IF(FecoMoba > "
  loc_B2649C: ConcatStr
  loc_B2649D: FStStrNoPop var_A4
  loc_B264A0: LitI4 1
  loc_B264A5: LitI4 1
  loc_B264AA: LitVarStr var_140, "'yyyy-mm-dd'"
  loc_B264AF: FStVarCopyObj var_F8
  loc_B264B2: FLdRfVar var_F8
  loc_B264B5: ILdRf arg_18
  loc_B264B8: CVarRef
  loc_B264BD: ImpAdCallI2 Format$(, )
  loc_B264C2: FStStrNoPop var_A8
  loc_B264C5: ConcatStr
  loc_B264C6: FStStrNoPop var_AC
  loc_B264C9: LitStr " OR FecoMoba IS NULL,HabeMoba,0)),0) TCredSinConc"
  loc_B264CC: ConcatStr
  loc_B264CD: FStStrNoPop var_164
  loc_B264D0: LitStr " FROM movibanco"
  loc_B264D3: ConcatStr
  loc_B264D4: FStStrNoPop var_168
  loc_B264D7: LitStr " WHERE CodiBanc = "
  loc_B264DA: ConcatStr
  loc_B264DB: FStStrNoPop var_170
  loc_B264DE: FLdRfVar var_16C
  loc_B264E1: ILdPr
  loc_B264E4: from_stack_1v = tblbanco.CodiBancGet()
  loc_B264E9: ILdRf var_16C
  loc_B264EC: ConcatStr
  loc_B264ED: FStStrNoPop var_174
  loc_B264F0: LitStr " AND FechMoba <= "
  loc_B264F3: ConcatStr
  loc_B264F4: FStStrNoPop var_198
  loc_B264F7: LitI4 1
  loc_B264FC: LitI4 1
  loc_B26501: LitVarStr var_194, "'yyyy-mm-dd'"
  loc_B26506: FStVarCopyObj var_120
  loc_B26509: FLdRfVar var_120
  loc_B2650C: ILdRf arg_18
  loc_B2650F: CVarRef
  loc_B26514: ImpAdCallI2 Format$(, )
  loc_B26519: FStStrNoPop var_19C
  loc_B2651C: ConcatStr
  loc_B2651D: FStStrNoPop var_1A0
  loc_B26520: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_B26525: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_164 = "": var_168 = "": var_170 = "": var_16C = "": var_174 = "": var_198 = "": var_19C = ""
  loc_B26546: FFreeVar var_D8 = "": var_F8 = ""
  loc_B2654F: FLdRfVar var_D8
  loc_B26552: FLdRfVar var_C8
  loc_B26555: LitVarStr var_C4, "SaldAlIni"
  loc_B2655A: PopAdLdVar
  loc_B2655B: FLdRfVar var_B4
  loc_B2655E: FMemLdPr
  loc_B26563:  = Me.Fields
  loc_B26568: FLdPr var_B4
  loc_B2656B: from_stack_2 = Me.Item(from_stack_1)
  loc_B26570: FLdPr var_C8
  loc_B26573:  = Me.Value
  loc_B26578: FLdRfVar var_D8
  loc_B2657B: CStrVarTmp
  loc_B2657C: FStStrNoPop var_94
  loc_B2657F: ILdPr
  loc_B26582: Call tblbanco.SaldAlIniPut(from_stack_1v)
  loc_B26587: FFree1Str var_94
  loc_B2658A: FFreeAd var_B4 = ""
  loc_B26591: FFree1Var var_D8 = ""
  loc_B26594: FLdRfVar var_D8
  loc_B26597: FLdRfVar var_C8
  loc_B2659A: LitVarStr var_C4, "TDebSinConc"
  loc_B2659F: PopAdLdVar
  loc_B265A0: FLdRfVar var_B4
  loc_B265A3: FMemLdPr
  loc_B265A8:  = Me.Fields
  loc_B265AD: FLdPr var_B4
  loc_B265B0: from_stack_2 = Me.Item(from_stack_1)
  loc_B265B5: FLdPr var_C8
  loc_B265B8:  = Me.Value
  loc_B265BD: FLdRfVar var_D8
  loc_B265C0: CStrVarTmp
  loc_B265C1: FStStrNoPop var_94
  loc_B265C4: ILdPr
  loc_B265C7: Call tblbanco.TDebSinConcPut(from_stack_1v)
  loc_B265CC: FFree1Str var_94
  loc_B265CF: FFreeAd var_B4 = ""
  loc_B265D6: FFree1Var var_D8 = ""
  loc_B265D9: FLdRfVar var_D8
  loc_B265DC: FLdRfVar var_C8
  loc_B265DF: LitVarStr var_C4, "TCredSinConc"
  loc_B265E4: PopAdLdVar
  loc_B265E5: FLdRfVar var_B4
  loc_B265E8: FMemLdPr
  loc_B265ED:  = Me.Fields
  loc_B265F2: FLdPr var_B4
  loc_B265F5: from_stack_2 = Me.Item(from_stack_1)
  loc_B265FA: FLdPr var_C8
  loc_B265FD:  = Me.Value
  loc_B26602: FLdRfVar var_D8
  loc_B26605: CStrVarTmp
  loc_B26606: FStStrNoPop var_94
  loc_B26609: ILdPr
  loc_B2660C: Call tblbanco.TCredSinConcPut(from_stack_1v)
  loc_B26611: FFree1Str var_94
  loc_B26614: FFreeAd var_B4 = ""
  loc_B2661B: FFree1Var var_D8 = ""
  loc_B2661E: LitStr "SELECT IFNULL(Sum(IF(FecoMoba > "
  loc_B26621: LitI4 1
  loc_B26626: LitI4 1
  loc_B2662B: LitVarStr var_E8, "'yyyy-mm-dd'"
  loc_B26630: FStVarCopyObj var_D8
  loc_B26633: FLdRfVar var_D8
  loc_B26636: ILdRf arg_18
  loc_B26639: CVarRef
  loc_B2663E: ImpAdCallI2 Format$(, )
  loc_B26643: FStStrNoPop var_94
  loc_B26646: ConcatStr
  loc_B26647: FStStrNoPop var_98
  loc_B2664A: LitStr " OR FecoMoba IS NULL,DebeMoba,0)),0) TDebSinReg"
  loc_B2664D: ConcatStr
  loc_B2664E: FStStrNoPop var_9C
  loc_B26651: LitStr ", IFNULL(Sum(IF(FecoMoba > "
  loc_B26654: ConcatStr
  loc_B26655: FStStrNoPop var_A0
  loc_B26658: LitI4 1
  loc_B2665D: LitI4 1
  loc_B26662: LitVarStr var_140, "'yyyy-mm-dd'"
  loc_B26667: FStVarCopyObj var_F8
  loc_B2666A: FLdRfVar var_F8
  loc_B2666D: ILdRf arg_18
  loc_B26670: CVarRef
  loc_B26675: ImpAdCallI2 Format$(, )
  loc_B2667A: FStStrNoPop var_A4
  loc_B2667D: ConcatStr
  loc_B2667E: FStStrNoPop var_A8
  loc_B26681: LitStr " OR FecoMoba IS NULL,HabeMoba,0)),0) TCredSinReg"
  loc_B26684: ConcatStr
  loc_B26685: FStStrNoPop var_AC
  loc_B26688: LitStr " FROM moviextracto"
  loc_B2668B: ConcatStr
  loc_B2668C: FStStrNoPop var_164
  loc_B2668F: LitStr " WHERE CodiBanc = "
  loc_B26692: ConcatStr
  loc_B26693: FStStrNoPop var_16C
  loc_B26696: FLdRfVar var_168
  loc_B26699: ILdPr
  loc_B2669C: from_stack_1v = tblbanco.CodiBancGet()
  loc_B266A1: ILdRf var_168
  loc_B266A4: ConcatStr
  loc_B266A5: FStStrNoPop var_170
  loc_B266A8: LitStr " AND FechMoba <= "
  loc_B266AB: ConcatStr
  loc_B266AC: FStStrNoPop var_174
  loc_B266AF: LitI4 1
  loc_B266B4: LitI4 1
  loc_B266B9: LitVarStr var_194, "'yyyy-mm-dd'"
  loc_B266BE: FStVarCopyObj var_120
  loc_B266C1: FLdRfVar var_120
  loc_B266C4: ILdRf arg_18
  loc_B266C7: CVarRef
  loc_B266CC: ImpAdCallI2 Format$(, )
  loc_B266D1: FStStrNoPop var_198
  loc_B266D4: ConcatStr
  loc_B266D5: FStStrNoPop var_19C
  loc_B266D8: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_B266DD: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_164 = "": var_16C = "": var_168 = "": var_170 = "": var_174 = "": var_198 = ""
  loc_B266FC: FFreeVar var_D8 = "": var_F8 = ""
  loc_B26705: FLdRfVar var_D8
  loc_B26708: FLdRfVar var_C8
  loc_B2670B: LitVarStr var_C4, "TDebSinReg"
  loc_B26710: PopAdLdVar
  loc_B26711: FLdRfVar var_B4
  loc_B26714: FMemLdPr
  loc_B26719:  = Me.Fields
  loc_B2671E: FLdPr var_B4
  loc_B26721: from_stack_2 = Me.Item(from_stack_1)
  loc_B26726: FLdPr var_C8
  loc_B26729:  = Me.Value
  loc_B2672E: FLdRfVar var_D8
  loc_B26731: CStrVarTmp
  loc_B26732: FStStrNoPop var_94
  loc_B26735: ILdPr
  loc_B26738: Call tblbanco.TDebSinRegPut(from_stack_1v)
  loc_B2673D: FFree1Str var_94
  loc_B26740: FFreeAd var_B4 = ""
  loc_B26747: FFree1Var var_D8 = ""
  loc_B2674A: FLdRfVar var_D8
  loc_B2674D: FLdRfVar var_C8
  loc_B26750: LitVarStr var_C4, "TCredSinReg"
  loc_B26755: PopAdLdVar
  loc_B26756: FLdRfVar var_B4
  loc_B26759: FMemLdPr
  loc_B2675E:  = Me.Fields
  loc_B26763: FLdPr var_B4
  loc_B26766: from_stack_2 = Me.Item(from_stack_1)
  loc_B2676B: FLdPr var_C8
  loc_B2676E:  = Me.Value
  loc_B26773: FLdRfVar var_D8
  loc_B26776: CStrVarTmp
  loc_B26777: FStStrNoPop var_94
  loc_B2677A: ILdPr
  loc_B2677D: Call tblbanco.TCredSinRegPut(from_stack_1v)
  loc_B26782: FFree1Str var_94
  loc_B26785: FFreeAd var_B4 = ""
  loc_B2678C: FFree1Var var_D8 = ""
  loc_B2678F: FLdRfVar var_98
  loc_B26792: ILdPr
  loc_B26795: from_stack_1v = tblbanco.TDebSinConcGet()
  loc_B2679A: FLdRfVar var_9C
  loc_B2679D: ILdPr
  loc_B267A0: from_stack_1v = tblbanco.TCredSinConcGet()
  loc_B267A5: FLdRfVar var_A0
  loc_B267A8: ILdPr
  loc_B267AB: from_stack_1v = tblbanco.TDebSinRegGet()
  loc_B267B0: FLdRfVar var_A4
  loc_B267B3: ILdPr
  loc_B267B6: from_stack_1v = tblbanco.TCredSinRegGet()
  loc_B267BB: FLdRfVar var_94
  loc_B267BE: ILdPr
  loc_B267C1: from_stack_1v = tblbanco.SaldAlIniGet()
  loc_B267C6: ILdRf var_94
  loc_B267C9: CR8Str
  loc_B267CB: ILdRf var_98
  loc_B267CE: CR8Str
  loc_B267D0: SubR4
  loc_B267D1: ILdRf var_9C
  loc_B267D4: CR8Str
  loc_B267D6: AddR8
  loc_B267D7: ILdRf var_A0
  loc_B267DA: CR8Str
  loc_B267DC: AddR8
  loc_B267DD: ILdRf var_A4
  loc_B267E0: CR8Str
  loc_B267E2: SubR4
  loc_B267E3: CStrR8
  loc_B267E5: FStStrNoPop var_A8
  loc_B267E8: ILdPr
  loc_B267EB: Call tblbanco.TResulConciPut(from_stack_1v)
  loc_B267F0: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_B267FF: Branch loc_B268EE
  loc_B26802: LitStr "El Banco NO EXISTE. Verifique..."
  loc_B26805: ILdPr
  loc_B26808: Call tblbanco.MsgErrorPut(from_stack_1v)
  loc_B2680D: LitStr vbNullString
  loc_B26810: ILdPr
  loc_B26813: Call tblbanco.PeriInfoPut(from_stack_1v)
  loc_B26818: LitStr vbNullString
  loc_B2681B: ILdPr
  loc_B2681E: Call tblbanco.CodiBancPut(from_stack_1v)
  loc_B26823: LitStr vbNullString
  loc_B26826: ILdPr
  loc_B26829: Call tblbanco.DetaBancPut(from_stack_1v)
  loc_B2682E: LitStr vbNullString
  loc_B26831: ILdPr
  loc_B26834: Call tblbanco.NumeBancPut(from_stack_1v)
  loc_B26839: LitStr vbNullString
  loc_B2683C: ILdPr
  loc_B2683F: Call tblbanco.CodiCucoPut(from_stack_1v)
  loc_B26844: LitStr vbNullString
  loc_B26847: ILdPr
  loc_B2684A: Call tblbanco.FeanBancPut(from_stack_1v)
  loc_B2684F: LitStr vbNullString
  loc_B26852: ILdPr
  loc_B26855: Call tblbanco.UlchBancPut(from_stack_1v)
  loc_B2685A: LitStr vbNullString
  loc_B2685D: ILdPr
  loc_B26860: Call tblbanco.EmauCheqPut(from_stack_1v)
  loc_B26865: LitStr vbNullString
  loc_B26868: ILdPr
  loc_B2686B: Call tblbanco.ProcBancPut(from_stack_1v)
  loc_B26870: LitStr vbNullString
  loc_B26873: ILdPr
  loc_B26876: Call tblbanco.DescBancPut(from_stack_1v)
  loc_B2687B: LitStr vbNullString
  loc_B2687E: ILdPr
  loc_B26881: Call tblbanco.DescAdvBancPut(from_stack_1v)
  loc_B26886: LitStr vbNullString
  loc_B26889: ILdPr
  loc_B2688C: Call tblbanco.TxtBancPut(from_stack_1v)
  loc_B26891: LitStr vbNullString
  loc_B26894: ILdPr
  loc_B26897: Call tblbanco.ConautBancPut(from_stack_1v)
  loc_B2689C: LitStr vbNullString
  loc_B2689F: ILdPr
  loc_B268A2: Call tblbanco.CodiUsuaPut(from_stack_1v)
  loc_B268A7: LitStr vbNullString
  loc_B268AA: ILdPr
  loc_B268AD: Call tblbanco.SaldAlIniPut(from_stack_1v)
  loc_B268B2: LitStr vbNullString
  loc_B268B5: ILdPr
  loc_B268B8: Call tblbanco.TDebSinConcPut(from_stack_1v)
  loc_B268BD: LitStr vbNullString
  loc_B268C0: ILdPr
  loc_B268C3: Call tblbanco.TCredSinConcPut(from_stack_1v)
  loc_B268C8: LitStr vbNullString
  loc_B268CB: ILdPr
  loc_B268CE: Call tblbanco.TDebSinRegPut(from_stack_1v)
  loc_B268D3: LitStr vbNullString
  loc_B268D6: ILdPr
  loc_B268D9: Call tblbanco.TCredSinRegPut(from_stack_1v)
  loc_B268DE: LitStr vbNullString
  loc_B268E1: ILdPr
  loc_B268E4: Call tblbanco.TResulConciPut(from_stack_1v)
  loc_B268E9: LitI2_Byte 0
  loc_B268EB: FStI2 var_86
  loc_B268EE: ExitProcI2
End Function

Private Function Proc_259_6_B2DCE0(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28) 'B2DCE0
  'Data Table: 4569C4
  loc_B2D408: ILdRf arg_C
  loc_B2D40B: FStStrCopy var_8C
  loc_B2D40E: ILdRf arg_10
  loc_B2D411: FStStrCopy var_90
  loc_B2D414: ILdRf arg_14
  loc_B2D417: FStStrCopy var_94
  loc_B2D41A: ILdRf arg_18
  loc_B2D41D: FStStrCopy var_98
  loc_B2D420: ILdRf arg_1C
  loc_B2D423: FStStrCopy var_9C
  loc_B2D426: ILdRf arg_20
  loc_B2D429: FStStrCopy var_A0
  loc_B2D42C: ILdRf arg_24
  loc_B2D42F: FStStrCopy var_A4
  loc_B2D432: ILdRf arg_28
  loc_B2D435: FStStrCopy var_A8
  loc_B2D438: LitStr "SELECT cheque.*"
  loc_B2D43B: LitStr ", IF(cheque.CucuPers=0 OR proveedor.CucuPers IS NULL, '', DetaProv) DetaProv"
  loc_B2D43E: ConcatStr
  loc_B2D43F: FStStrNoPop var_AC
  loc_B2D442: LitStr ", IF(cheque.CodiBanc=0 OR banco.CodiBanc IS NULL, '', DetaBanc) DetaBanc"
  loc_B2D445: ConcatStr
  loc_B2D446: FStStrNoPop var_B0
  loc_B2D449: LitStr " FROM cheque"
  loc_B2D44C: ConcatStr
  loc_B2D44D: FStStrNoPop var_B4
  loc_B2D450: LitStr " LEFT JOIN proveedor ON proveedor.CucuPers = cheque.CucuPers"
  loc_B2D453: ConcatStr
  loc_B2D454: FStStrNoPop var_B8
  loc_B2D457: LitStr " LEFT JOIN banco ON banco.PeriInfo = cheque.PeriInfo AND banco.CodiBanc = cheque.CodiBanc"
  loc_B2D45A: ConcatStr
  loc_B2D45B: FStStrNoPop var_BC
  loc_B2D45E: LitStr " WHERE cheque.ExpeImpu = '"
  loc_B2D461: ConcatStr
  loc_B2D462: FStStrNoPop var_C0
  loc_B2D465: ILdRf var_8C
  loc_B2D468: ConcatStr
  loc_B2D469: FStStrNoPop var_C4
  loc_B2D46C: LitStr "'"
  loc_B2D46F: ConcatStr
  loc_B2D470: FStStrNoPop var_C8
  loc_B2D473: LitStr " AND cheque.NumeLiqu = '"
  loc_B2D476: ConcatStr
  loc_B2D477: FStStrNoPop var_CC
  loc_B2D47A: ILdRf var_90
  loc_B2D47D: ConcatStr
  loc_B2D47E: FStStrNoPop var_D0
  loc_B2D481: LitStr "'"
  loc_B2D484: ConcatStr
  loc_B2D485: FStStrNoPop var_D4
  loc_B2D488: LitStr " AND cheque.CucuPers = '"
  loc_B2D48B: ConcatStr
  loc_B2D48C: FStStrNoPop var_D8
  loc_B2D48F: ILdRf var_94
  loc_B2D492: ConcatStr
  loc_B2D493: FStStrNoPop var_DC
  loc_B2D496: LitStr "'"
  loc_B2D499: ConcatStr
  loc_B2D49A: FStStrNoPop var_E0
  loc_B2D49D: LitStr " AND cheque.CodiBanc = '"
  loc_B2D4A0: ConcatStr
  loc_B2D4A1: FStStrNoPop var_E4
  loc_B2D4A4: ILdRf var_98
  loc_B2D4A7: ConcatStr
  loc_B2D4A8: FStStrNoPop var_E8
  loc_B2D4AB: LitStr "'"
  loc_B2D4AE: ConcatStr
  loc_B2D4AF: FStStrNoPop var_EC
  loc_B2D4B2: LitStr " AND cheque.NumeMoba = '"
  loc_B2D4B5: ConcatStr
  loc_B2D4B6: FStStrNoPop var_F0
  loc_B2D4B9: ILdRf var_9C
  loc_B2D4BC: ConcatStr
  loc_B2D4BD: FStStrNoPop var_F4
  loc_B2D4C0: LitStr "'"
  loc_B2D4C3: ConcatStr
  loc_B2D4C4: FStStrNoPop var_F8
  loc_B2D4C7: LitStr " AND cheque.SecuCheq = '"
  loc_B2D4CA: ConcatStr
  loc_B2D4CB: FStStrNoPop var_FC
  loc_B2D4CE: ILdRf var_A0
  loc_B2D4D1: ConcatStr
  loc_B2D4D2: FStStrNoPop var_100
  loc_B2D4D5: LitStr "'"
  loc_B2D4D8: ConcatStr
  loc_B2D4D9: FStStrNoPop var_104
  loc_B2D4DC: LitStr " AND cheque.PeriInfo = '"
  loc_B2D4DF: ConcatStr
  loc_B2D4E0: FStStrNoPop var_108
  loc_B2D4E3: ILdRf var_A4
  loc_B2D4E6: ConcatStr
  loc_B2D4E7: FStStrNoPop var_10C
  loc_B2D4EA: LitStr "'"
  loc_B2D4ED: ConcatStr
  loc_B2D4EE: FStStrNoPop var_110
  loc_B2D4F1: LitStr " AND cheque.NumeOrpa = '"
  loc_B2D4F4: ConcatStr
  loc_B2D4F5: FStStrNoPop var_114
  loc_B2D4F8: ILdRf var_A8
  loc_B2D4FB: ConcatStr
  loc_B2D4FC: FStStrNoPop var_118
  loc_B2D4FF: LitStr "'"
  loc_B2D502: ConcatStr
  loc_B2D503: FStStrNoPop var_11C
  loc_B2D506: LitStr " LIMIT 1;"
  loc_B2D509: ConcatStr
  loc_B2D50A: FStStrNoPop var_120
  loc_B2D50D: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_B2D512: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_B2D551: FLdRfVar var_124
  loc_B2D554: FMemLdPr
  loc_B2D559:  = Me.RecordCount
  loc_B2D55E: ILdRf var_124
  loc_B2D561: LitI4 0
  loc_B2D566: GtI4
  loc_B2D567: BranchF loc_B2DBFC
  loc_B2D56A: LitStr vbNullString
  loc_B2D56D: ILdPr
  loc_B2D570: Call tblcheque.MsgErrorPut(from_stack_1v)
  loc_B2D575: FLdRfVar var_14C
  loc_B2D578: FLdRfVar var_13C
  loc_B2D57B: LitVarStr var_138, "ExpeImpu"
  loc_B2D580: PopAdLdVar
  loc_B2D581: FLdRfVar var_128
  loc_B2D584: FMemLdPr
  loc_B2D589:  = Me.Fields
  loc_B2D58E: FLdPr var_128
  loc_B2D591: from_stack_2 = Me.Item(from_stack_1)
  loc_B2D596: FLdPr var_13C
  loc_B2D599:  = Me.Value
  loc_B2D59E: FLdRfVar var_14C
  loc_B2D5A1: CStrVarTmp
  loc_B2D5A2: FStStrNoPop var_AC
  loc_B2D5A5: ILdPr
  loc_B2D5A8: Call tblcheque.ExpeImpuPut(from_stack_1v)
  loc_B2D5AD: FFree1Str var_AC
  loc_B2D5B0: FFreeAd var_128 = ""
  loc_B2D5B7: FFree1Var var_14C = ""
  loc_B2D5BA: FLdRfVar var_14C
  loc_B2D5BD: FLdRfVar var_13C
  loc_B2D5C0: LitVarStr var_138, "NumeLiqu"
  loc_B2D5C5: PopAdLdVar
  loc_B2D5C6: FLdRfVar var_128
  loc_B2D5C9: FMemLdPr
  loc_B2D5CE:  = Me.Fields
  loc_B2D5D3: FLdPr var_128
  loc_B2D5D6: from_stack_2 = Me.Item(from_stack_1)
  loc_B2D5DB: FLdPr var_13C
  loc_B2D5DE:  = Me.Value
  loc_B2D5E3: FLdRfVar var_14C
  loc_B2D5E6: CStrVarTmp
  loc_B2D5E7: FStStrNoPop var_AC
  loc_B2D5EA: ILdPr
  loc_B2D5ED: Call tblcheque.NumeLiquPut(from_stack_1v)
  loc_B2D5F2: FFree1Str var_AC
  loc_B2D5F5: FFreeAd var_128 = ""
  loc_B2D5FC: FFree1Var var_14C = ""
  loc_B2D5FF: FLdRfVar var_14C
  loc_B2D602: FLdRfVar var_13C
  loc_B2D605: LitVarStr var_138, "CucuPers"
  loc_B2D60A: PopAdLdVar
  loc_B2D60B: FLdRfVar var_128
  loc_B2D60E: FMemLdPr
  loc_B2D613:  = Me.Fields
  loc_B2D618: FLdPr var_128
  loc_B2D61B: from_stack_2 = Me.Item(from_stack_1)
  loc_B2D620: FLdPr var_13C
  loc_B2D623:  = Me.Value
  loc_B2D628: FLdRfVar var_14C
  loc_B2D62B: CStrVarTmp
  loc_B2D62C: FStStrNoPop var_AC
  loc_B2D62F: ILdPr
  loc_B2D632: Call tblcheque.CucuPersPut(from_stack_1v)
  loc_B2D637: FFree1Str var_AC
  loc_B2D63A: FFreeAd var_128 = ""
  loc_B2D641: FFree1Var var_14C = ""
  loc_B2D644: FLdRfVar var_14C
  loc_B2D647: FLdRfVar var_13C
  loc_B2D64A: LitVarStr var_138, "DetaProv"
  loc_B2D64F: PopAdLdVar
  loc_B2D650: FLdRfVar var_128
  loc_B2D653: FMemLdPr
  loc_B2D658:  = Me.Fields
  loc_B2D65D: FLdPr var_128
  loc_B2D660: from_stack_2 = Me.Item(from_stack_1)
  loc_B2D665: FLdPr var_13C
  loc_B2D668:  = Me.Value
  loc_B2D66D: FLdRfVar var_14C
  loc_B2D670: CStrVarTmp
  loc_B2D671: FStStrNoPop var_AC
  loc_B2D674: ILdPr
  loc_B2D677: Call tblcheque.DetaProvPut(from_stack_1v)
  loc_B2D67C: FFree1Str var_AC
  loc_B2D67F: FFreeAd var_128 = ""
  loc_B2D686: FFree1Var var_14C = ""
  loc_B2D689: FLdRfVar var_14C
  loc_B2D68C: FLdRfVar var_13C
  loc_B2D68F: LitVarStr var_138, "CodiBanc"
  loc_B2D694: PopAdLdVar
  loc_B2D695: FLdRfVar var_128
  loc_B2D698: FMemLdPr
  loc_B2D69D:  = Me.Fields
  loc_B2D6A2: FLdPr var_128
  loc_B2D6A5: from_stack_2 = Me.Item(from_stack_1)
  loc_B2D6AA: FLdPr var_13C
  loc_B2D6AD:  = Me.Value
  loc_B2D6B2: FLdRfVar var_14C
  loc_B2D6B5: CStrVarTmp
  loc_B2D6B6: FStStrNoPop var_AC
  loc_B2D6B9: ILdPr
  loc_B2D6BC: Call tblcheque.CodiBancPut(from_stack_1v)
  loc_B2D6C1: FFree1Str var_AC
  loc_B2D6C4: FFreeAd var_128 = ""
  loc_B2D6CB: FFree1Var var_14C = ""
  loc_B2D6CE: FLdRfVar var_14C
  loc_B2D6D1: FLdRfVar var_13C
  loc_B2D6D4: LitVarStr var_138, "DetaBanc"
  loc_B2D6D9: PopAdLdVar
  loc_B2D6DA: FLdRfVar var_128
  loc_B2D6DD: FMemLdPr
  loc_B2D6E2:  = Me.Fields
  loc_B2D6E7: FLdPr var_128
  loc_B2D6EA: from_stack_2 = Me.Item(from_stack_1)
  loc_B2D6EF: FLdPr var_13C
  loc_B2D6F2:  = Me.Value
  loc_B2D6F7: FLdRfVar var_14C
  loc_B2D6FA: CStrVarTmp
  loc_B2D6FB: FStStrNoPop var_AC
  loc_B2D6FE: ILdPr
  loc_B2D701: Call tblcheque.DetaBancPut(from_stack_1v)
  loc_B2D706: FFree1Str var_AC
  loc_B2D709: FFreeAd var_128 = ""
  loc_B2D710: FFree1Var var_14C = ""
  loc_B2D713: FLdRfVar var_14C
  loc_B2D716: FLdRfVar var_13C
  loc_B2D719: LitVarStr var_138, "NumeMoba"
  loc_B2D71E: PopAdLdVar
  loc_B2D71F: FLdRfVar var_128
  loc_B2D722: FMemLdPr
  loc_B2D727:  = Me.Fields
  loc_B2D72C: FLdPr var_128
  loc_B2D72F: from_stack_2 = Me.Item(from_stack_1)
  loc_B2D734: FLdPr var_13C
  loc_B2D737:  = Me.Value
  loc_B2D73C: FLdRfVar var_14C
  loc_B2D73F: CStrVarTmp
  loc_B2D740: FStStrNoPop var_AC
  loc_B2D743: ILdPr
  loc_B2D746: Call tblcheque.NumeMobaPut(from_stack_1v)
  loc_B2D74B: FFree1Str var_AC
  loc_B2D74E: FFreeAd var_128 = ""
  loc_B2D755: FFree1Var var_14C = ""
  loc_B2D758: FLdRfVar var_14C
  loc_B2D75B: FLdRfVar var_13C
  loc_B2D75E: LitVarStr var_138, "InteMoba"
  loc_B2D763: PopAdLdVar
  loc_B2D764: FLdRfVar var_128
  loc_B2D767: FMemLdPr
  loc_B2D76C:  = Me.Fields
  loc_B2D771: FLdPr var_128
  loc_B2D774: from_stack_2 = Me.Item(from_stack_1)
  loc_B2D779: FLdPr var_13C
  loc_B2D77C:  = Me.Value
  loc_B2D781: FLdRfVar var_14C
  loc_B2D784: CStrVarTmp
  loc_B2D785: FStStrNoPop var_AC
  loc_B2D788: ILdPr
  loc_B2D78B: Call tblcheque.InteMobaPut(from_stack_1v)
  loc_B2D790: FFree1Str var_AC
  loc_B2D793: FFreeAd var_128 = ""
  loc_B2D79A: FFree1Var var_14C = ""
  loc_B2D79D: FLdRfVar var_14C
  loc_B2D7A0: FLdRfVar var_13C
  loc_B2D7A3: LitVarStr var_138, "SecuCheq"
  loc_B2D7A8: PopAdLdVar
  loc_B2D7A9: FLdRfVar var_128
  loc_B2D7AC: FMemLdPr
  loc_B2D7B1:  = Me.Fields
  loc_B2D7B6: FLdPr var_128
  loc_B2D7B9: from_stack_2 = Me.Item(from_stack_1)
  loc_B2D7BE: FLdPr var_13C
  loc_B2D7C1:  = Me.Value
  loc_B2D7C6: FLdRfVar var_14C
  loc_B2D7C9: CStrVarTmp
  loc_B2D7CA: FStStrNoPop var_AC
  loc_B2D7CD: ILdPr
  loc_B2D7D0: Call tblcheque.SecuCheqPut(from_stack_1v)
  loc_B2D7D5: FFree1Str var_AC
  loc_B2D7D8: FFreeAd var_128 = ""
  loc_B2D7DF: FFree1Var var_14C = ""
  loc_B2D7E2: FLdRfVar var_14C
  loc_B2D7E5: FLdRfVar var_13C
  loc_B2D7E8: LitVarStr var_138, "ImpoCheq"
  loc_B2D7ED: PopAdLdVar
  loc_B2D7EE: FLdRfVar var_128
  loc_B2D7F1: FMemLdPr
  loc_B2D7F6:  = Me.Fields
  loc_B2D7FB: FLdPr var_128
  loc_B2D7FE: from_stack_2 = Me.Item(from_stack_1)
  loc_B2D803: FLdPr var_13C
  loc_B2D806:  = Me.Value
  loc_B2D80B: FLdRfVar var_14C
  loc_B2D80E: CStrVarTmp
  loc_B2D80F: FStStrNoPop var_AC
  loc_B2D812: ILdPr
  loc_B2D815: Call tblcheque.ImpoCheqPut(from_stack_1v)
  loc_B2D81A: FFree1Str var_AC
  loc_B2D81D: FFreeAd var_128 = ""
  loc_B2D824: FFree1Var var_14C = ""
  loc_B2D827: FLdRfVar var_14C
  loc_B2D82A: FLdRfVar var_13C
  loc_B2D82D: LitVarStr var_138, "PeriInfo"
  loc_B2D832: PopAdLdVar
  loc_B2D833: FLdRfVar var_128
  loc_B2D836: FMemLdPr
  loc_B2D83B:  = Me.Fields
  loc_B2D840: FLdPr var_128
  loc_B2D843: from_stack_2 = Me.Item(from_stack_1)
  loc_B2D848: FLdPr var_13C
  loc_B2D84B:  = Me.Value
  loc_B2D850: FLdRfVar var_14C
  loc_B2D853: CStrVarTmp
  loc_B2D854: FStStrNoPop var_AC
  loc_B2D857: ILdPr
  loc_B2D85A: Call tblcheque.PeriInfoPut(from_stack_1v)
  loc_B2D85F: FFree1Str var_AC
  loc_B2D862: FFreeAd var_128 = ""
  loc_B2D869: FFree1Var var_14C = ""
  loc_B2D86C: FLdRfVar var_14C
  loc_B2D86F: FLdRfVar var_13C
  loc_B2D872: LitVarStr var_138, "NumeOrpa"
  loc_B2D877: PopAdLdVar
  loc_B2D878: FLdRfVar var_128
  loc_B2D87B: FMemLdPr
  loc_B2D880:  = Me.Fields
  loc_B2D885: FLdPr var_128
  loc_B2D888: from_stack_2 = Me.Item(from_stack_1)
  loc_B2D88D: FLdPr var_13C
  loc_B2D890:  = Me.Value
  loc_B2D895: FLdRfVar var_14C
  loc_B2D898: CStrVarTmp
  loc_B2D899: FStStrNoPop var_AC
  loc_B2D89C: ILdPr
  loc_B2D89F: Call tblcheque.NumeOrpaPut(from_stack_1v)
  loc_B2D8A4: FFree1Str var_AC
  loc_B2D8A7: FFreeAd var_128 = ""
  loc_B2D8AE: FFree1Var var_14C = ""
  loc_B2D8B1: FLdRfVar var_14C
  loc_B2D8B4: FLdRfVar var_13C
  loc_B2D8B7: LitVarStr var_138, "FechCheq"
  loc_B2D8BC: PopAdLdVar
  loc_B2D8BD: FLdRfVar var_128
  loc_B2D8C0: FMemLdPr
  loc_B2D8C5:  = Me.Fields
  loc_B2D8CA: FLdPr var_128
  loc_B2D8CD: from_stack_2 = Me.Item(from_stack_1)
  loc_B2D8D2: FLdPr var_13C
  loc_B2D8D5:  = Me.Value
  loc_B2D8DA: FLdRfVar var_184
  loc_B2D8DD: LitVarStr var_180, "FechCheq"
  loc_B2D8E2: PopAdLdVar
  loc_B2D8E3: FLdRfVar var_170
  loc_B2D8E6: FMemLdPr
  loc_B2D8EB:  = Me.Fields
  loc_B2D8F0: FLdPr var_170
  loc_B2D8F3: from_stack_2 = Me.Item(from_stack_1)
  loc_B2D8F8: LitVarStr var_1B4, vbNullString
  loc_B2D8FD: FStVarCopyObj var_1C4
  loc_B2D900: FLdRfVar var_1C4
  loc_B2D903: FLdZeroAd var_184
  loc_B2D906: CVarAd
  loc_B2D90A: FLdRfVar var_14C
  loc_B2D90D: LitVarStr var_15C, vbNullString
  loc_B2D912: HardType
  loc_B2D913: NeVar var_16C
  loc_B2D917: FStVar var_194
  loc_B2D91B: FLdRfVar var_194
  loc_B2D91E: FLdRfVar var_1D4
  loc_B2D921: ImpAdCallFPR4  = IIf(, , )
  loc_B2D926: FLdRfVar var_1D4
  loc_B2D929: CStrVarVal var_AC
  loc_B2D92D: ILdPr
  loc_B2D930: Call tblcheque.FechCheqPut(from_stack_1v)
  loc_B2D935: FFree1Str var_AC
  loc_B2D938: FFreeAd var_128 = "": var_13C = ""
  loc_B2D941: FFreeVar var_14C = "": var_194 = "": var_1A4 = "": var_1C4 = ""
  loc_B2D94E: FLdRfVar var_14C
  loc_B2D951: FLdRfVar var_13C
  loc_B2D954: LitVarStr var_138, "FereCheq"
  loc_B2D959: PopAdLdVar
  loc_B2D95A: FLdRfVar var_128
  loc_B2D95D: FMemLdPr
  loc_B2D962:  = Me.Fields
  loc_B2D967: FLdPr var_128
  loc_B2D96A: from_stack_2 = Me.Item(from_stack_1)
  loc_B2D96F: FLdPr var_13C
  loc_B2D972:  = Me.Value
  loc_B2D977: FLdRfVar var_184
  loc_B2D97A: LitVarStr var_180, "FereCheq"
  loc_B2D97F: PopAdLdVar
  loc_B2D980: FLdRfVar var_170
  loc_B2D983: FMemLdPr
  loc_B2D988:  = Me.Fields
  loc_B2D98D: FLdPr var_170
  loc_B2D990: from_stack_2 = Me.Item(from_stack_1)
  loc_B2D995: LitVarStr var_1B4, vbNullString
  loc_B2D99A: FStVarCopyObj var_1C4
  loc_B2D99D: FLdRfVar var_1C4
  loc_B2D9A0: FLdZeroAd var_184
  loc_B2D9A3: CVarAd
  loc_B2D9A7: FLdRfVar var_14C
  loc_B2D9AA: LitVarStr var_15C, vbNullString
  loc_B2D9AF: HardType
  loc_B2D9B0: NeVar var_16C
  loc_B2D9B4: FStVar var_194
  loc_B2D9B8: FLdRfVar var_194
  loc_B2D9BB: FLdRfVar var_1D4
  loc_B2D9BE: ImpAdCallFPR4  = IIf(, , )
  loc_B2D9C3: FLdRfVar var_1D4
  loc_B2D9C6: CStrVarVal var_AC
  loc_B2D9CA: ILdPr
  loc_B2D9CD: Call tblcheque.FereCheqPut(from_stack_1v)
  loc_B2D9D2: FFree1Str var_AC
  loc_B2D9D5: FFreeAd var_128 = "": var_13C = ""
  loc_B2D9DE: FFreeVar var_14C = "": var_194 = "": var_1A4 = "": var_1C4 = ""
  loc_B2D9EB: FLdRfVar var_14C
  loc_B2D9EE: FLdRfVar var_13C
  loc_B2D9F1: LitVarStr var_138, "FepaCheq"
  loc_B2D9F6: PopAdLdVar
  loc_B2D9F7: FLdRfVar var_128
  loc_B2D9FA: FMemLdPr
  loc_B2D9FF:  = Me.Fields
  loc_B2DA04: FLdPr var_128
  loc_B2DA07: from_stack_2 = Me.Item(from_stack_1)
  loc_B2DA0C: FLdPr var_13C
  loc_B2DA0F:  = Me.Value
  loc_B2DA14: FLdRfVar var_184
  loc_B2DA17: LitVarStr var_180, "FepaCheq"
  loc_B2DA1C: PopAdLdVar
  loc_B2DA1D: FLdRfVar var_170
  loc_B2DA20: FMemLdPr
  loc_B2DA25:  = Me.Fields
  loc_B2DA2A: FLdPr var_170
  loc_B2DA2D: from_stack_2 = Me.Item(from_stack_1)
  loc_B2DA32: LitVarStr var_1B4, vbNullString
  loc_B2DA37: FStVarCopyObj var_1C4
  loc_B2DA3A: FLdRfVar var_1C4
  loc_B2DA3D: FLdZeroAd var_184
  loc_B2DA40: CVarAd
  loc_B2DA44: FLdRfVar var_14C
  loc_B2DA47: LitVarStr var_15C, vbNullString
  loc_B2DA4C: HardType
  loc_B2DA4D: NeVar var_16C
  loc_B2DA51: FStVar var_194
  loc_B2DA55: FLdRfVar var_194
  loc_B2DA58: FLdRfVar var_1D4
  loc_B2DA5B: ImpAdCallFPR4  = IIf(, , )
  loc_B2DA60: FLdRfVar var_1D4
  loc_B2DA63: CStrVarVal var_AC
  loc_B2DA67: ILdPr
  loc_B2DA6A: Call tblcheque.FepaCheqPut(from_stack_1v)
  loc_B2DA6F: FFree1Str var_AC
  loc_B2DA72: FFreeAd var_128 = "": var_13C = ""
  loc_B2DA7B: FFreeVar var_14C = "": var_194 = "": var_1A4 = "": var_1C4 = ""
  loc_B2DA88: FLdRfVar var_14C
  loc_B2DA8B: FLdRfVar var_13C
  loc_B2DA8E: LitVarStr var_138, "FeanCheq"
  loc_B2DA93: PopAdLdVar
  loc_B2DA94: FLdRfVar var_128
  loc_B2DA97: FMemLdPr
  loc_B2DA9C:  = Me.Fields
  loc_B2DAA1: FLdPr var_128
  loc_B2DAA4: from_stack_2 = Me.Item(from_stack_1)
  loc_B2DAA9: FLdPr var_13C
  loc_B2DAAC:  = Me.Value
  loc_B2DAB1: FLdRfVar var_184
  loc_B2DAB4: LitVarStr var_180, "FeanCheq"
  loc_B2DAB9: PopAdLdVar
  loc_B2DABA: FLdRfVar var_170
  loc_B2DABD: FMemLdPr
  loc_B2DAC2:  = Me.Fields
  loc_B2DAC7: FLdPr var_170
  loc_B2DACA: from_stack_2 = Me.Item(from_stack_1)
  loc_B2DACF: LitVarStr var_1B4, vbNullString
  loc_B2DAD4: FStVarCopyObj var_1C4
  loc_B2DAD7: FLdRfVar var_1C4
  loc_B2DADA: FLdZeroAd var_184
  loc_B2DADD: CVarAd
  loc_B2DAE1: FLdRfVar var_14C
  loc_B2DAE4: LitVarStr var_15C, vbNullString
  loc_B2DAE9: HardType
  loc_B2DAEA: NeVar var_16C
  loc_B2DAEE: FStVar var_194
  loc_B2DAF2: FLdRfVar var_194
  loc_B2DAF5: FLdRfVar var_1D4
  loc_B2DAF8: ImpAdCallFPR4  = IIf(, , )
  loc_B2DAFD: FLdRfVar var_1D4
  loc_B2DB00: CStrVarVal var_AC
  loc_B2DB04: ILdPr
  loc_B2DB07: Call tblcheque.FeanCheqPut(from_stack_1v)
  loc_B2DB0C: FFree1Str var_AC
  loc_B2DB0F: FFreeAd var_128 = "": var_13C = ""
  loc_B2DB18: FFreeVar var_14C = "": var_194 = "": var_1A4 = "": var_1C4 = ""
  loc_B2DB25: FLdRfVar var_14C
  loc_B2DB28: FLdRfVar var_13C
  loc_B2DB2B: LitVarStr var_138, "OrdeCheq"
  loc_B2DB30: PopAdLdVar
  loc_B2DB31: FLdRfVar var_128
  loc_B2DB34: FMemLdPr
  loc_B2DB39:  = Me.Fields
  loc_B2DB3E: FLdPr var_128
  loc_B2DB41: from_stack_2 = Me.Item(from_stack_1)
  loc_B2DB46: FLdPr var_13C
  loc_B2DB49:  = Me.Value
  loc_B2DB4E: FLdRfVar var_14C
  loc_B2DB51: CStrVarTmp
  loc_B2DB52: FStStrNoPop var_AC
  loc_B2DB55: ILdPr
  loc_B2DB58: Call tblcheque.OrdeCheqPut(from_stack_1v)
  loc_B2DB5D: FFree1Str var_AC
  loc_B2DB60: FFreeAd var_128 = ""
  loc_B2DB67: FFree1Var var_14C = ""
  loc_B2DB6A: FLdRfVar var_14C
  loc_B2DB6D: FLdRfVar var_13C
  loc_B2DB70: LitVarStr var_138, "DetaCheq"
  loc_B2DB75: PopAdLdVar
  loc_B2DB76: FLdRfVar var_128
  loc_B2DB79: FMemLdPr
  loc_B2DB7E:  = Me.Fields
  loc_B2DB83: FLdPr var_128
  loc_B2DB86: from_stack_2 = Me.Item(from_stack_1)
  loc_B2DB8B: FLdPr var_13C
  loc_B2DB8E:  = Me.Value
  loc_B2DB93: FLdRfVar var_14C
  loc_B2DB96: CStrVarTmp
  loc_B2DB97: FStStrNoPop var_AC
  loc_B2DB9A: ILdPr
  loc_B2DB9D: Call tblcheque.DetaCheqPut(from_stack_1v)
  loc_B2DBA2: FFree1Str var_AC
  loc_B2DBA5: FFreeAd var_128 = ""
  loc_B2DBAC: FFree1Var var_14C = ""
  loc_B2DBAF: FLdRfVar var_14C
  loc_B2DBB2: FLdRfVar var_13C
  loc_B2DBB5: LitVarStr var_138, "AutoCheq"
  loc_B2DBBA: PopAdLdVar
  loc_B2DBBB: FLdRfVar var_128
  loc_B2DBBE: FMemLdPr
  loc_B2DBC3:  = Me.Fields
  loc_B2DBC8: FLdPr var_128
  loc_B2DBCB: from_stack_2 = Me.Item(from_stack_1)
  loc_B2DBD0: FLdPr var_13C
  loc_B2DBD3:  = Me.Value
  loc_B2DBD8: FLdRfVar var_14C
  loc_B2DBDB: CStrVarTmp
  loc_B2DBDC: FStStrNoPop var_AC
  loc_B2DBDF: ILdPr
  loc_B2DBE2: Call tblcheque.AutoCheqPut(from_stack_1v)
  loc_B2DBE7: FFree1Str var_AC
  loc_B2DBEA: FFreeAd var_128 = ""
  loc_B2DBF1: FFree1Var var_14C = ""
  loc_B2DBF4: LitI2_Byte &HFF
  loc_B2DBF6: FStI2 var_86
  loc_B2DBF9: Branch loc_B2DCDD
  loc_B2DBFC: LitStr "El Cheque NO EXISTE. Verifique..."
  loc_B2DBFF: ILdPr
  loc_B2DC02: Call tblcheque.MsgErrorPut(from_stack_1v)
  loc_B2DC07: LitStr vbNullString
  loc_B2DC0A: ILdPr
  loc_B2DC0D: Call tblcheque.ExpeImpuPut(from_stack_1v)
  loc_B2DC12: LitStr vbNullString
  loc_B2DC15: ILdPr
  loc_B2DC18: Call tblcheque.NumeLiquPut(from_stack_1v)
  loc_B2DC1D: LitStr vbNullString
  loc_B2DC20: ILdPr
  loc_B2DC23: Call tblcheque.CucuPersPut(from_stack_1v)
  loc_B2DC28: LitStr vbNullString
  loc_B2DC2B: ILdPr
  loc_B2DC2E: Call tblcheque.DetaProvPut(from_stack_1v)
  loc_B2DC33: LitStr vbNullString
  loc_B2DC36: ILdPr
  loc_B2DC39: Call tblcheque.CodiBancPut(from_stack_1v)
  loc_B2DC3E: LitStr vbNullString
  loc_B2DC41: ILdPr
  loc_B2DC44: Call tblcheque.DetaBancPut(from_stack_1v)
  loc_B2DC49: LitStr vbNullString
  loc_B2DC4C: ILdPr
  loc_B2DC4F: Call tblcheque.NumeMobaPut(from_stack_1v)
  loc_B2DC54: LitStr vbNullString
  loc_B2DC57: ILdPr
  loc_B2DC5A: Call tblcheque.InteMobaPut(from_stack_1v)
  loc_B2DC5F: LitStr vbNullString
  loc_B2DC62: ILdPr
  loc_B2DC65: Call tblcheque.SecuCheqPut(from_stack_1v)
  loc_B2DC6A: LitStr vbNullString
  loc_B2DC6D: ILdPr
  loc_B2DC70: Call tblcheque.ImpoCheqPut(from_stack_1v)
  loc_B2DC75: LitStr vbNullString
  loc_B2DC78: ILdPr
  loc_B2DC7B: Call tblcheque.PeriInfoPut(from_stack_1v)
  loc_B2DC80: LitStr vbNullString
  loc_B2DC83: ILdPr
  loc_B2DC86: Call tblcheque.NumeOrpaPut(from_stack_1v)
  loc_B2DC8B: LitStr vbNullString
  loc_B2DC8E: ILdPr
  loc_B2DC91: Call tblcheque.FechCheqPut(from_stack_1v)
  loc_B2DC96: LitStr vbNullString
  loc_B2DC99: ILdPr
  loc_B2DC9C: Call tblcheque.FereCheqPut(from_stack_1v)
  loc_B2DCA1: LitStr vbNullString
  loc_B2DCA4: ILdPr
  loc_B2DCA7: Call tblcheque.FepaCheqPut(from_stack_1v)
  loc_B2DCAC: LitStr vbNullString
  loc_B2DCAF: ILdPr
  loc_B2DCB2: Call tblcheque.FeanCheqPut(from_stack_1v)
  loc_B2DCB7: LitStr vbNullString
  loc_B2DCBA: ILdPr
  loc_B2DCBD: Call tblcheque.OrdeCheqPut(from_stack_1v)
  loc_B2DCC2: LitStr vbNullString
  loc_B2DCC5: ILdPr
  loc_B2DCC8: Call tblcheque.DetaCheqPut(from_stack_1v)
  loc_B2DCCD: LitStr vbNullString
  loc_B2DCD0: ILdPr
  loc_B2DCD3: Call tblcheque.AutoCheqPut(from_stack_1v)
  loc_B2DCD8: LitI2_Byte 0
  loc_B2DCDA: FStI2 var_86
  loc_B2DCDD: ExitProcI2
End Function

Private Function Proc_259_7_B2FA68(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) 'B2FA68
  'Data Table: 4569C4
  loc_B2F164: ILdRf arg_C
  loc_B2F167: FStStrCopy var_8C
  loc_B2F16A: ILdRf arg_10
  loc_B2F16D: FStStrCopy var_90
  loc_B2F170: ILdRf arg_14
  loc_B2F173: FStStrCopy var_94
  loc_B2F176: ILdRf arg_18
  loc_B2F179: FStStrCopy var_98
  loc_B2F17C: ILdRf arg_1C
  loc_B2F17F: FStStrCopy var_9C
  loc_B2F182: ILdRf arg_20
  loc_B2F185: FStStrCopy var_A0
  loc_B2F188: ILdRf arg_24
  loc_B2F18B: FStStrCopy var_A4
  loc_B2F18E: LitStr "SELECT cheque.*"
  loc_B2F191: LitStr ", IF(cheque.CucuPers=0 OR proveedor.CucuPers IS NULL, '', DetaProv) DetaProv"
  loc_B2F194: ConcatStr
  loc_B2F195: FStStrNoPop var_A8
  loc_B2F198: LitStr ", IF(cheque.CodiBanc=0 OR banco.CodiBanc IS NULL, '', DetaBanc) DetaBanc"
  loc_B2F19B: ConcatStr
  loc_B2F19C: FStStrNoPop var_AC
  loc_B2F19F: LitStr " FROM cheque"
  loc_B2F1A2: ConcatStr
  loc_B2F1A3: FStStrNoPop var_B0
  loc_B2F1A6: LitStr " LEFT JOIN proveedor ON proveedor.CucuPers = cheque.CucuPers"
  loc_B2F1A9: ConcatStr
  loc_B2F1AA: FStStrNoPop var_B4
  loc_B2F1AD: LitStr " LEFT JOIN banco ON banco.PeriInfo = cheque.PeriInfo AND banco.CodiBanc = cheque.CodiBanc"
  loc_B2F1B0: ConcatStr
  loc_B2F1B1: FStStrNoPop var_B8
  loc_B2F1B4: LitStr " WHERE cheque.PeriInfo = '"
  loc_B2F1B7: ConcatStr
  loc_B2F1B8: FStStrNoPop var_BC
  loc_B2F1BB: ILdRf var_8C
  loc_B2F1BE: ConcatStr
  loc_B2F1BF: FStStrNoPop var_C0
  loc_B2F1C2: LitStr "'"
  loc_B2F1C5: ConcatStr
  loc_B2F1C6: FStStrNoPop var_C4
  loc_B2F1C9: LitStr " AND cheque.NumeMoba = '"
  loc_B2F1CC: ConcatStr
  loc_B2F1CD: FStStrNoPop var_C8
  loc_B2F1D0: ILdRf var_94
  loc_B2F1D3: ConcatStr
  loc_B2F1D4: FStStrNoPop var_CC
  loc_B2F1D7: LitStr "'"
  loc_B2F1DA: ConcatStr
  loc_B2F1DB: FStStrNoPop var_D0
  loc_B2F1DE: LitStr " AND cheque.FechCheq = '"
  loc_B2F1E1: ConcatStr
  loc_B2F1E2: CVarStr var_120
  loc_B2F1E5: LitI4 1
  loc_B2F1EA: LitI4 1
  loc_B2F1EF: LitVarStr var_F0, "yyyy-mm-dd"
  loc_B2F1F4: FStVarCopyObj var_100
  loc_B2F1F7: FLdRfVar var_100
  loc_B2F1FA: FLdRfVar var_98
  loc_B2F1FD: CVarRef
  loc_B2F202: FLdRfVar var_110
  loc_B2F205: ImpAdCallFPR4  = Format(, )
  loc_B2F20A: FLdRfVar var_110
  loc_B2F20D: ConcatVar var_130
  loc_B2F211: LitVarStr var_140, "'"
  loc_B2F216: ConcatVar var_150
  loc_B2F21A: LitVarStr var_160, " AND cheque.ImpoCheq = '"
  loc_B2F21F: ConcatVar var_170
  loc_B2F223: LitI4 0
  loc_B2F228: LitI4 -1
  loc_B2F22D: LitI4 1
  loc_B2F232: LitStr "."
  loc_B2F235: LitStr ","
  loc_B2F238: ILdRf var_9C
  loc_B2F23B: ImpAdCallI2 Replace(, , , , , )
  loc_B2F240: CVarStr var_180
  loc_B2F243: ConcatVar var_190
  loc_B2F247: LitVarStr var_1A0, "'"
  loc_B2F24C: ConcatVar var_1B0
  loc_B2F250: LitVarStr var_1C0, " AND cheque.NumeOrpa = '"
  loc_B2F255: ConcatVar var_1D0
  loc_B2F259: ILdRf var_A0
  loc_B2F25C: CVarStr var_1E0
  loc_B2F25F: ConcatVar var_1F0
  loc_B2F263: LitVarStr var_200, "'"
  loc_B2F268: ConcatVar var_210
  loc_B2F26C: LitVarStr var_220, " AND cheque.CodiBanc = '"
  loc_B2F271: ConcatVar var_230
  loc_B2F275: ILdRf var_A4
  loc_B2F278: CVarStr var_240
  loc_B2F27B: ConcatVar var_250
  loc_B2F27F: LitVarStr var_260, "'"
  loc_B2F284: ConcatVar var_270
  loc_B2F288: LitVarStr var_280, " LIMIT 1;"
  loc_B2F28D: ConcatVar var_290
  loc_B2F291: CStrVarVal var_294
  loc_B2F295: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_B2F29A: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_B2F2B5: FFreeVar var_100 = "": var_120 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_180 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = "": var_210 = "": var_230 = "": var_250 = "": var_270 = ""
  loc_B2F2D8: FLdRfVar var_298
  loc_B2F2DB: FMemLdPr
  loc_B2F2E0:  = Me.RecordCount
  loc_B2F2E5: ILdRf var_298
  loc_B2F2E8: LitI4 0
  loc_B2F2ED: GtI4
  loc_B2F2EE: BranchF loc_B2F983
  loc_B2F2F1: LitStr vbNullString
  loc_B2F2F4: ILdPr
  loc_B2F2F7: Call tblcheque.MsgErrorPut(from_stack_1v)
  loc_B2F2FC: FLdRfVar var_100
  loc_B2F2FF: FLdRfVar var_2A0
  loc_B2F302: LitVarStr var_E0, "ExpeImpu"
  loc_B2F307: PopAdLdVar
  loc_B2F308: FLdRfVar var_29C
  loc_B2F30B: FMemLdPr
  loc_B2F310:  = Me.Fields
  loc_B2F315: FLdPr var_29C
  loc_B2F318: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F31D: FLdPr var_2A0
  loc_B2F320:  = Me.Value
  loc_B2F325: FLdRfVar var_100
  loc_B2F328: CStrVarTmp
  loc_B2F329: FStStrNoPop var_A8
  loc_B2F32C: ILdPr
  loc_B2F32F: Call tblcheque.ExpeImpuPut(from_stack_1v)
  loc_B2F334: FFree1Str var_A8
  loc_B2F337: FFreeAd var_29C = ""
  loc_B2F33E: FFree1Var var_100 = ""
  loc_B2F341: FLdRfVar var_100
  loc_B2F344: FLdRfVar var_2A0
  loc_B2F347: LitVarStr var_E0, "NumeLiqu"
  loc_B2F34C: PopAdLdVar
  loc_B2F34D: FLdRfVar var_29C
  loc_B2F350: FMemLdPr
  loc_B2F355:  = Me.Fields
  loc_B2F35A: FLdPr var_29C
  loc_B2F35D: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F362: FLdPr var_2A0
  loc_B2F365:  = Me.Value
  loc_B2F36A: FLdRfVar var_100
  loc_B2F36D: CStrVarTmp
  loc_B2F36E: FStStrNoPop var_A8
  loc_B2F371: ILdPr
  loc_B2F374: Call tblcheque.NumeLiquPut(from_stack_1v)
  loc_B2F379: FFree1Str var_A8
  loc_B2F37C: FFreeAd var_29C = ""
  loc_B2F383: FFree1Var var_100 = ""
  loc_B2F386: FLdRfVar var_100
  loc_B2F389: FLdRfVar var_2A0
  loc_B2F38C: LitVarStr var_E0, "CucuPers"
  loc_B2F391: PopAdLdVar
  loc_B2F392: FLdRfVar var_29C
  loc_B2F395: FMemLdPr
  loc_B2F39A:  = Me.Fields
  loc_B2F39F: FLdPr var_29C
  loc_B2F3A2: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F3A7: FLdPr var_2A0
  loc_B2F3AA:  = Me.Value
  loc_B2F3AF: FLdRfVar var_100
  loc_B2F3B2: CStrVarTmp
  loc_B2F3B3: FStStrNoPop var_A8
  loc_B2F3B6: ILdPr
  loc_B2F3B9: Call tblcheque.CucuPersPut(from_stack_1v)
  loc_B2F3BE: FFree1Str var_A8
  loc_B2F3C1: FFreeAd var_29C = ""
  loc_B2F3C8: FFree1Var var_100 = ""
  loc_B2F3CB: FLdRfVar var_100
  loc_B2F3CE: FLdRfVar var_2A0
  loc_B2F3D1: LitVarStr var_E0, "DetaProv"
  loc_B2F3D6: PopAdLdVar
  loc_B2F3D7: FLdRfVar var_29C
  loc_B2F3DA: FMemLdPr
  loc_B2F3DF:  = Me.Fields
  loc_B2F3E4: FLdPr var_29C
  loc_B2F3E7: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F3EC: FLdPr var_2A0
  loc_B2F3EF:  = Me.Value
  loc_B2F3F4: FLdRfVar var_100
  loc_B2F3F7: CStrVarTmp
  loc_B2F3F8: FStStrNoPop var_A8
  loc_B2F3FB: ILdPr
  loc_B2F3FE: Call tblcheque.DetaProvPut(from_stack_1v)
  loc_B2F403: FFree1Str var_A8
  loc_B2F406: FFreeAd var_29C = ""
  loc_B2F40D: FFree1Var var_100 = ""
  loc_B2F410: FLdRfVar var_100
  loc_B2F413: FLdRfVar var_2A0
  loc_B2F416: LitVarStr var_E0, "CodiBanc"
  loc_B2F41B: PopAdLdVar
  loc_B2F41C: FLdRfVar var_29C
  loc_B2F41F: FMemLdPr
  loc_B2F424:  = Me.Fields
  loc_B2F429: FLdPr var_29C
  loc_B2F42C: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F431: FLdPr var_2A0
  loc_B2F434:  = Me.Value
  loc_B2F439: FLdRfVar var_100
  loc_B2F43C: CStrVarTmp
  loc_B2F43D: FStStrNoPop var_A8
  loc_B2F440: ILdPr
  loc_B2F443: Call tblcheque.CodiBancPut(from_stack_1v)
  loc_B2F448: FFree1Str var_A8
  loc_B2F44B: FFreeAd var_29C = ""
  loc_B2F452: FFree1Var var_100 = ""
  loc_B2F455: FLdRfVar var_100
  loc_B2F458: FLdRfVar var_2A0
  loc_B2F45B: LitVarStr var_E0, "DetaBanc"
  loc_B2F460: PopAdLdVar
  loc_B2F461: FLdRfVar var_29C
  loc_B2F464: FMemLdPr
  loc_B2F469:  = Me.Fields
  loc_B2F46E: FLdPr var_29C
  loc_B2F471: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F476: FLdPr var_2A0
  loc_B2F479:  = Me.Value
  loc_B2F47E: FLdRfVar var_100
  loc_B2F481: CStrVarTmp
  loc_B2F482: FStStrNoPop var_A8
  loc_B2F485: ILdPr
  loc_B2F488: Call tblcheque.DetaBancPut(from_stack_1v)
  loc_B2F48D: FFree1Str var_A8
  loc_B2F490: FFreeAd var_29C = ""
  loc_B2F497: FFree1Var var_100 = ""
  loc_B2F49A: FLdRfVar var_100
  loc_B2F49D: FLdRfVar var_2A0
  loc_B2F4A0: LitVarStr var_E0, "NumeMoba"
  loc_B2F4A5: PopAdLdVar
  loc_B2F4A6: FLdRfVar var_29C
  loc_B2F4A9: FMemLdPr
  loc_B2F4AE:  = Me.Fields
  loc_B2F4B3: FLdPr var_29C
  loc_B2F4B6: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F4BB: FLdPr var_2A0
  loc_B2F4BE:  = Me.Value
  loc_B2F4C3: FLdRfVar var_100
  loc_B2F4C6: CStrVarTmp
  loc_B2F4C7: FStStrNoPop var_A8
  loc_B2F4CA: ILdPr
  loc_B2F4CD: Call tblcheque.NumeMobaPut(from_stack_1v)
  loc_B2F4D2: FFree1Str var_A8
  loc_B2F4D5: FFreeAd var_29C = ""
  loc_B2F4DC: FFree1Var var_100 = ""
  loc_B2F4DF: FLdRfVar var_100
  loc_B2F4E2: FLdRfVar var_2A0
  loc_B2F4E5: LitVarStr var_E0, "InteMoba"
  loc_B2F4EA: PopAdLdVar
  loc_B2F4EB: FLdRfVar var_29C
  loc_B2F4EE: FMemLdPr
  loc_B2F4F3:  = Me.Fields
  loc_B2F4F8: FLdPr var_29C
  loc_B2F4FB: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F500: FLdPr var_2A0
  loc_B2F503:  = Me.Value
  loc_B2F508: FLdRfVar var_100
  loc_B2F50B: CStrVarTmp
  loc_B2F50C: FStStrNoPop var_A8
  loc_B2F50F: ILdPr
  loc_B2F512: Call tblcheque.InteMobaPut(from_stack_1v)
  loc_B2F517: FFree1Str var_A8
  loc_B2F51A: FFreeAd var_29C = ""
  loc_B2F521: FFree1Var var_100 = ""
  loc_B2F524: FLdRfVar var_100
  loc_B2F527: FLdRfVar var_2A0
  loc_B2F52A: LitVarStr var_E0, "SecuCheq"
  loc_B2F52F: PopAdLdVar
  loc_B2F530: FLdRfVar var_29C
  loc_B2F533: FMemLdPr
  loc_B2F538:  = Me.Fields
  loc_B2F53D: FLdPr var_29C
  loc_B2F540: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F545: FLdPr var_2A0
  loc_B2F548:  = Me.Value
  loc_B2F54D: FLdRfVar var_100
  loc_B2F550: CStrVarTmp
  loc_B2F551: FStStrNoPop var_A8
  loc_B2F554: ILdPr
  loc_B2F557: Call tblcheque.SecuCheqPut(from_stack_1v)
  loc_B2F55C: FFree1Str var_A8
  loc_B2F55F: FFreeAd var_29C = ""
  loc_B2F566: FFree1Var var_100 = ""
  loc_B2F569: FLdRfVar var_100
  loc_B2F56C: FLdRfVar var_2A0
  loc_B2F56F: LitVarStr var_E0, "ImpoCheq"
  loc_B2F574: PopAdLdVar
  loc_B2F575: FLdRfVar var_29C
  loc_B2F578: FMemLdPr
  loc_B2F57D:  = Me.Fields
  loc_B2F582: FLdPr var_29C
  loc_B2F585: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F58A: FLdPr var_2A0
  loc_B2F58D:  = Me.Value
  loc_B2F592: FLdRfVar var_100
  loc_B2F595: CStrVarTmp
  loc_B2F596: FStStrNoPop var_A8
  loc_B2F599: ILdPr
  loc_B2F59C: Call tblcheque.ImpoCheqPut(from_stack_1v)
  loc_B2F5A1: FFree1Str var_A8
  loc_B2F5A4: FFreeAd var_29C = ""
  loc_B2F5AB: FFree1Var var_100 = ""
  loc_B2F5AE: FLdRfVar var_100
  loc_B2F5B1: FLdRfVar var_2A0
  loc_B2F5B4: LitVarStr var_E0, "PeriInfo"
  loc_B2F5B9: PopAdLdVar
  loc_B2F5BA: FLdRfVar var_29C
  loc_B2F5BD: FMemLdPr
  loc_B2F5C2:  = Me.Fields
  loc_B2F5C7: FLdPr var_29C
  loc_B2F5CA: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F5CF: FLdPr var_2A0
  loc_B2F5D2:  = Me.Value
  loc_B2F5D7: FLdRfVar var_100
  loc_B2F5DA: CStrVarTmp
  loc_B2F5DB: FStStrNoPop var_A8
  loc_B2F5DE: ILdPr
  loc_B2F5E1: Call tblcheque.PeriInfoPut(from_stack_1v)
  loc_B2F5E6: FFree1Str var_A8
  loc_B2F5E9: FFreeAd var_29C = ""
  loc_B2F5F0: FFree1Var var_100 = ""
  loc_B2F5F3: FLdRfVar var_100
  loc_B2F5F6: FLdRfVar var_2A0
  loc_B2F5F9: LitVarStr var_E0, "NumeOrpa"
  loc_B2F5FE: PopAdLdVar
  loc_B2F5FF: FLdRfVar var_29C
  loc_B2F602: FMemLdPr
  loc_B2F607:  = Me.Fields
  loc_B2F60C: FLdPr var_29C
  loc_B2F60F: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F614: FLdPr var_2A0
  loc_B2F617:  = Me.Value
  loc_B2F61C: FLdRfVar var_100
  loc_B2F61F: CStrVarTmp
  loc_B2F620: FStStrNoPop var_A8
  loc_B2F623: ILdPr
  loc_B2F626: Call tblcheque.NumeOrpaPut(from_stack_1v)
  loc_B2F62B: FFree1Str var_A8
  loc_B2F62E: FFreeAd var_29C = ""
  loc_B2F635: FFree1Var var_100 = ""
  loc_B2F638: FLdRfVar var_100
  loc_B2F63B: FLdRfVar var_2A0
  loc_B2F63E: LitVarStr var_E0, "FechCheq"
  loc_B2F643: PopAdLdVar
  loc_B2F644: FLdRfVar var_29C
  loc_B2F647: FMemLdPr
  loc_B2F64C:  = Me.Fields
  loc_B2F651: FLdPr var_29C
  loc_B2F654: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F659: FLdPr var_2A0
  loc_B2F65C:  = Me.Value
  loc_B2F661: FLdRfVar var_2A8
  loc_B2F664: LitVarStr var_140, "FechCheq"
  loc_B2F669: PopAdLdVar
  loc_B2F66A: FLdRfVar var_2A4
  loc_B2F66D: FMemLdPr
  loc_B2F672:  = Me.Fields
  loc_B2F677: FLdPr var_2A4
  loc_B2F67A: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F67F: LitVarStr var_160, vbNullString
  loc_B2F684: FStVarCopyObj var_150
  loc_B2F687: FLdRfVar var_150
  loc_B2F68A: FLdZeroAd var_2A8
  loc_B2F68D: CVarAd
  loc_B2F691: FLdRfVar var_100
  loc_B2F694: LitVarStr var_F0, vbNullString
  loc_B2F699: HardType
  loc_B2F69A: NeVar var_110
  loc_B2F69E: FStVar var_120
  loc_B2F6A2: FLdRfVar var_120
  loc_B2F6A5: FLdRfVar var_170
  loc_B2F6A8: ImpAdCallFPR4  = IIf(, , )
  loc_B2F6AD: FLdRfVar var_170
  loc_B2F6B0: CStrVarVal var_A8
  loc_B2F6B4: ILdPr
  loc_B2F6B7: Call tblcheque.FechCheqPut(from_stack_1v)
  loc_B2F6BC: FFree1Str var_A8
  loc_B2F6BF: FFreeAd var_29C = "": var_2A0 = ""
  loc_B2F6C8: FFreeVar var_100 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_B2F6D5: FLdRfVar var_100
  loc_B2F6D8: FLdRfVar var_2A0
  loc_B2F6DB: LitVarStr var_E0, "FereCheq"
  loc_B2F6E0: PopAdLdVar
  loc_B2F6E1: FLdRfVar var_29C
  loc_B2F6E4: FMemLdPr
  loc_B2F6E9:  = Me.Fields
  loc_B2F6EE: FLdPr var_29C
  loc_B2F6F1: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F6F6: FLdPr var_2A0
  loc_B2F6F9:  = Me.Value
  loc_B2F6FE: FLdRfVar var_2A8
  loc_B2F701: LitVarStr var_140, "FereCheq"
  loc_B2F706: PopAdLdVar
  loc_B2F707: FLdRfVar var_2A4
  loc_B2F70A: FMemLdPr
  loc_B2F70F:  = Me.Fields
  loc_B2F714: FLdPr var_2A4
  loc_B2F717: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F71C: LitVarStr var_160, vbNullString
  loc_B2F721: FStVarCopyObj var_150
  loc_B2F724: FLdRfVar var_150
  loc_B2F727: FLdZeroAd var_2A8
  loc_B2F72A: CVarAd
  loc_B2F72E: FLdRfVar var_100
  loc_B2F731: LitVarStr var_F0, vbNullString
  loc_B2F736: HardType
  loc_B2F737: NeVar var_110
  loc_B2F73B: FStVar var_120
  loc_B2F73F: FLdRfVar var_120
  loc_B2F742: FLdRfVar var_170
  loc_B2F745: ImpAdCallFPR4  = IIf(, , )
  loc_B2F74A: FLdRfVar var_170
  loc_B2F74D: CStrVarVal var_A8
  loc_B2F751: ILdPr
  loc_B2F754: Call tblcheque.FereCheqPut(from_stack_1v)
  loc_B2F759: FFree1Str var_A8
  loc_B2F75C: FFreeAd var_29C = "": var_2A0 = ""
  loc_B2F765: FFreeVar var_100 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_B2F772: FLdRfVar var_100
  loc_B2F775: FLdRfVar var_2A0
  loc_B2F778: LitVarStr var_E0, "FepaCheq"
  loc_B2F77D: PopAdLdVar
  loc_B2F77E: FLdRfVar var_29C
  loc_B2F781: FMemLdPr
  loc_B2F786:  = Me.Fields
  loc_B2F78B: FLdPr var_29C
  loc_B2F78E: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F793: FLdPr var_2A0
  loc_B2F796:  = Me.Value
  loc_B2F79B: FLdRfVar var_2A8
  loc_B2F79E: LitVarStr var_140, "FepaCheq"
  loc_B2F7A3: PopAdLdVar
  loc_B2F7A4: FLdRfVar var_2A4
  loc_B2F7A7: FMemLdPr
  loc_B2F7AC:  = Me.Fields
  loc_B2F7B1: FLdPr var_2A4
  loc_B2F7B4: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F7B9: LitVarStr var_160, vbNullString
  loc_B2F7BE: FStVarCopyObj var_150
  loc_B2F7C1: FLdRfVar var_150
  loc_B2F7C4: FLdZeroAd var_2A8
  loc_B2F7C7: CVarAd
  loc_B2F7CB: FLdRfVar var_100
  loc_B2F7CE: LitVarStr var_F0, vbNullString
  loc_B2F7D3: HardType
  loc_B2F7D4: NeVar var_110
  loc_B2F7D8: FStVar var_120
  loc_B2F7DC: FLdRfVar var_120
  loc_B2F7DF: FLdRfVar var_170
  loc_B2F7E2: ImpAdCallFPR4  = IIf(, , )
  loc_B2F7E7: FLdRfVar var_170
  loc_B2F7EA: CStrVarVal var_A8
  loc_B2F7EE: ILdPr
  loc_B2F7F1: Call tblcheque.FepaCheqPut(from_stack_1v)
  loc_B2F7F6: FFree1Str var_A8
  loc_B2F7F9: FFreeAd var_29C = "": var_2A0 = ""
  loc_B2F802: FFreeVar var_100 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_B2F80F: FLdRfVar var_100
  loc_B2F812: FLdRfVar var_2A0
  loc_B2F815: LitVarStr var_E0, "FeanCheq"
  loc_B2F81A: PopAdLdVar
  loc_B2F81B: FLdRfVar var_29C
  loc_B2F81E: FMemLdPr
  loc_B2F823:  = Me.Fields
  loc_B2F828: FLdPr var_29C
  loc_B2F82B: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F830: FLdPr var_2A0
  loc_B2F833:  = Me.Value
  loc_B2F838: FLdRfVar var_2A8
  loc_B2F83B: LitVarStr var_140, "FeanCheq"
  loc_B2F840: PopAdLdVar
  loc_B2F841: FLdRfVar var_2A4
  loc_B2F844: FMemLdPr
  loc_B2F849:  = Me.Fields
  loc_B2F84E: FLdPr var_2A4
  loc_B2F851: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F856: LitVarStr var_160, vbNullString
  loc_B2F85B: FStVarCopyObj var_150
  loc_B2F85E: FLdRfVar var_150
  loc_B2F861: FLdZeroAd var_2A8
  loc_B2F864: CVarAd
  loc_B2F868: FLdRfVar var_100
  loc_B2F86B: LitVarStr var_F0, vbNullString
  loc_B2F870: HardType
  loc_B2F871: NeVar var_110
  loc_B2F875: FStVar var_120
  loc_B2F879: FLdRfVar var_120
  loc_B2F87C: FLdRfVar var_170
  loc_B2F87F: ImpAdCallFPR4  = IIf(, , )
  loc_B2F884: FLdRfVar var_170
  loc_B2F887: CStrVarVal var_A8
  loc_B2F88B: ILdPr
  loc_B2F88E: Call tblcheque.FeanCheqPut(from_stack_1v)
  loc_B2F893: FFree1Str var_A8
  loc_B2F896: FFreeAd var_29C = "": var_2A0 = ""
  loc_B2F89F: FFreeVar var_100 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_B2F8AC: FLdRfVar var_100
  loc_B2F8AF: FLdRfVar var_2A0
  loc_B2F8B2: LitVarStr var_E0, "OrdeCheq"
  loc_B2F8B7: PopAdLdVar
  loc_B2F8B8: FLdRfVar var_29C
  loc_B2F8BB: FMemLdPr
  loc_B2F8C0:  = Me.Fields
  loc_B2F8C5: FLdPr var_29C
  loc_B2F8C8: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F8CD: FLdPr var_2A0
  loc_B2F8D0:  = Me.Value
  loc_B2F8D5: FLdRfVar var_100
  loc_B2F8D8: CStrVarTmp
  loc_B2F8D9: FStStrNoPop var_A8
  loc_B2F8DC: ILdPr
  loc_B2F8DF: Call tblcheque.OrdeCheqPut(from_stack_1v)
  loc_B2F8E4: FFree1Str var_A8
  loc_B2F8E7: FFreeAd var_29C = ""
  loc_B2F8EE: FFree1Var var_100 = ""
  loc_B2F8F1: FLdRfVar var_100
  loc_B2F8F4: FLdRfVar var_2A0
  loc_B2F8F7: LitVarStr var_E0, "DetaCheq"
  loc_B2F8FC: PopAdLdVar
  loc_B2F8FD: FLdRfVar var_29C
  loc_B2F900: FMemLdPr
  loc_B2F905:  = Me.Fields
  loc_B2F90A: FLdPr var_29C
  loc_B2F90D: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F912: FLdPr var_2A0
  loc_B2F915:  = Me.Value
  loc_B2F91A: FLdRfVar var_100
  loc_B2F91D: CStrVarTmp
  loc_B2F91E: FStStrNoPop var_A8
  loc_B2F921: ILdPr
  loc_B2F924: Call tblcheque.DetaCheqPut(from_stack_1v)
  loc_B2F929: FFree1Str var_A8
  loc_B2F92C: FFreeAd var_29C = ""
  loc_B2F933: FFree1Var var_100 = ""
  loc_B2F936: FLdRfVar var_100
  loc_B2F939: FLdRfVar var_2A0
  loc_B2F93C: LitVarStr var_E0, "AutoCheq"
  loc_B2F941: PopAdLdVar
  loc_B2F942: FLdRfVar var_29C
  loc_B2F945: FMemLdPr
  loc_B2F94A:  = Me.Fields
  loc_B2F94F: FLdPr var_29C
  loc_B2F952: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F957: FLdPr var_2A0
  loc_B2F95A:  = Me.Value
  loc_B2F95F: FLdRfVar var_100
  loc_B2F962: CStrVarTmp
  loc_B2F963: FStStrNoPop var_A8
  loc_B2F966: ILdPr
  loc_B2F969: Call tblcheque.AutoCheqPut(from_stack_1v)
  loc_B2F96E: FFree1Str var_A8
  loc_B2F971: FFreeAd var_29C = ""
  loc_B2F978: FFree1Var var_100 = ""
  loc_B2F97B: LitI2_Byte &HFF
  loc_B2F97D: FStI2 var_86
  loc_B2F980: Branch loc_B2FA64
  loc_B2F983: LitStr "El Cheque NO EXISTE. Verifique..."
  loc_B2F986: ILdPr
  loc_B2F989: Call tblcheque.MsgErrorPut(from_stack_1v)
  loc_B2F98E: LitStr vbNullString
  loc_B2F991: ILdPr
  loc_B2F994: Call tblcheque.ExpeImpuPut(from_stack_1v)
  loc_B2F999: LitStr vbNullString
  loc_B2F99C: ILdPr
  loc_B2F99F: Call tblcheque.NumeLiquPut(from_stack_1v)
  loc_B2F9A4: LitStr vbNullString
  loc_B2F9A7: ILdPr
  loc_B2F9AA: Call tblcheque.CucuPersPut(from_stack_1v)
  loc_B2F9AF: LitStr vbNullString
  loc_B2F9B2: ILdPr
  loc_B2F9B5: Call tblcheque.DetaProvPut(from_stack_1v)
  loc_B2F9BA: LitStr vbNullString
  loc_B2F9BD: ILdPr
  loc_B2F9C0: Call tblcheque.CodiBancPut(from_stack_1v)
  loc_B2F9C5: LitStr vbNullString
  loc_B2F9C8: ILdPr
  loc_B2F9CB: Call tblcheque.DetaBancPut(from_stack_1v)
  loc_B2F9D0: LitStr vbNullString
  loc_B2F9D3: ILdPr
  loc_B2F9D6: Call tblcheque.NumeMobaPut(from_stack_1v)
  loc_B2F9DB: LitStr vbNullString
  loc_B2F9DE: ILdPr
  loc_B2F9E1: Call tblcheque.InteMobaPut(from_stack_1v)
  loc_B2F9E6: LitStr vbNullString
  loc_B2F9E9: ILdPr
  loc_B2F9EC: Call tblcheque.SecuCheqPut(from_stack_1v)
  loc_B2F9F1: LitStr vbNullString
  loc_B2F9F4: ILdPr
  loc_B2F9F7: Call tblcheque.ImpoCheqPut(from_stack_1v)
  loc_B2F9FC: LitStr vbNullString
  loc_B2F9FF: ILdPr
  loc_B2FA02: Call tblcheque.PeriInfoPut(from_stack_1v)
  loc_B2FA07: LitStr vbNullString
  loc_B2FA0A: ILdPr
  loc_B2FA0D: Call tblcheque.NumeOrpaPut(from_stack_1v)
  loc_B2FA12: LitStr vbNullString
  loc_B2FA15: ILdPr
  loc_B2FA18: Call tblcheque.FechCheqPut(from_stack_1v)
  loc_B2FA1D: LitStr vbNullString
  loc_B2FA20: ILdPr
  loc_B2FA23: Call tblcheque.FereCheqPut(from_stack_1v)
  loc_B2FA28: LitStr vbNullString
  loc_B2FA2B: ILdPr
  loc_B2FA2E: Call tblcheque.FepaCheqPut(from_stack_1v)
  loc_B2FA33: LitStr vbNullString
  loc_B2FA36: ILdPr
  loc_B2FA39: Call tblcheque.FeanCheqPut(from_stack_1v)
  loc_B2FA3E: LitStr vbNullString
  loc_B2FA41: ILdPr
  loc_B2FA44: Call tblcheque.OrdeCheqPut(from_stack_1v)
  loc_B2FA49: LitStr vbNullString
  loc_B2FA4C: ILdPr
  loc_B2FA4F: Call tblcheque.DetaCheqPut(from_stack_1v)
  loc_B2FA54: LitStr vbNullString
  loc_B2FA57: ILdPr
  loc_B2FA5A: Call tblcheque.AutoCheqPut(from_stack_1v)
  loc_B2FA5F: LitI2_Byte 0
  loc_B2FA61: FStI2 var_86
  loc_B2FA64: ExitProcI2
End Function

Private Function Proc_259_8_ACF238(arg_C, arg_10) 'ACF238
  'Data Table: 4569C4
  loc_ACEC34: ILdRf arg_C
  loc_ACEC37: FStStrCopy var_8C
  loc_ACEC3A: ILdRf arg_10
  loc_ACEC3D: FStStrCopy var_90
  loc_ACEC40: LitStr "SELECT PeriInfo,CodiCuco,DetaCuco,IF(ImpuCuco=0,'No','Si') ImpuCuco,CodiTicu,DebeCuco,HabeCuco,SaldCuco,DescCuco,AltaUsua,AltaFeho,ModiUsua,ModiFeho,BajaUsua,BajaMoti"
  loc_ACEC43: LitStr " FROM infogov.cuentacontable"
  loc_ACEC46: ConcatStr
  loc_ACEC47: FStStrNoPop var_94
  loc_ACEC4A: LitStr " WHERE PeriInfo = '"
  loc_ACEC4D: ConcatStr
  loc_ACEC4E: FStStrNoPop var_98
  loc_ACEC51: ILdRf var_8C
  loc_ACEC54: ConcatStr
  loc_ACEC55: FStStrNoPop var_9C
  loc_ACEC58: LitStr "'"
  loc_ACEC5B: ConcatStr
  loc_ACEC5C: FStStrNoPop var_A0
  loc_ACEC5F: LitStr " AND CodiCuco = '"
  loc_ACEC62: ConcatStr
  loc_ACEC63: FStStrNoPop var_A4
  loc_ACEC66: ILdRf var_90
  loc_ACEC69: ConcatStr
  loc_ACEC6A: FStStrNoPop var_A8
  loc_ACEC6D: LitStr "'"
  loc_ACEC70: ConcatStr
  loc_ACEC71: FStStrNoPop var_AC
  loc_ACEC74: LitStr " LIMIT 1;"
  loc_ACEC77: ConcatStr
  loc_ACEC78: FStStrNoPop var_B0
  loc_ACEC7B: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_ACEC80: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_ACEC93: FLdRfVar var_B4
  loc_ACEC96: FMemLdPr
  loc_ACEC9B:  = Me.RecordCount
  loc_ACECA0: ILdRf var_B4
  loc_ACECA3: LitI4 0
  loc_ACECA8: GtI4
  loc_ACECA9: BranchF loc_ACF18C
  loc_ACECAC: LitStr vbNullString
  loc_ACECAF: ILdPr
  loc_ACECB2: Call tblcuentacontable.MsgErrorPut(from_stack_1v)
  loc_ACECB7: FLdRfVar var_DC
  loc_ACECBA: FLdRfVar var_CC
  loc_ACECBD: LitVarStr var_C8, "PeriInfo"
  loc_ACECC2: PopAdLdVar
  loc_ACECC3: FLdRfVar var_B8
  loc_ACECC6: FMemLdPr
  loc_ACECCB:  = Me.Fields
  loc_ACECD0: FLdPr var_B8
  loc_ACECD3: from_stack_2 = Me.Item(from_stack_1)
  loc_ACECD8: FLdPr var_CC
  loc_ACECDB:  = Me.Value
  loc_ACECE0: FLdRfVar var_DC
  loc_ACECE3: CStrVarTmp
  loc_ACECE4: FStStrNoPop var_94
  loc_ACECE7: ILdPr
  loc_ACECEA: Call tblcuentacontable.PeriInfoPut(from_stack_1v)
  loc_ACECEF: FFree1Str var_94
  loc_ACECF2: FFreeAd var_B8 = ""
  loc_ACECF9: FFree1Var var_DC = ""
  loc_ACECFC: FLdRfVar var_DC
  loc_ACECFF: FLdRfVar var_CC
  loc_ACED02: LitVarStr var_C8, "CodiCuco"
  loc_ACED07: PopAdLdVar
  loc_ACED08: FLdRfVar var_B8
  loc_ACED0B: FMemLdPr
  loc_ACED10:  = Me.Fields
  loc_ACED15: FLdPr var_B8
  loc_ACED18: from_stack_2 = Me.Item(from_stack_1)
  loc_ACED1D: FLdPr var_CC
  loc_ACED20:  = Me.Value
  loc_ACED25: FLdRfVar var_DC
  loc_ACED28: CStrVarTmp
  loc_ACED29: FStStrNoPop var_94
  loc_ACED2C: ILdPr
  loc_ACED2F: Call tblcuentacontable.CodiCucoPut(from_stack_1v)
  loc_ACED34: FFree1Str var_94
  loc_ACED37: FFreeAd var_B8 = ""
  loc_ACED3E: FFree1Var var_DC = ""
  loc_ACED41: FLdRfVar var_DC
  loc_ACED44: FLdRfVar var_CC
  loc_ACED47: LitVarStr var_C8, "DetaCuco"
  loc_ACED4C: PopAdLdVar
  loc_ACED4D: FLdRfVar var_B8
  loc_ACED50: FMemLdPr
  loc_ACED55:  = Me.Fields
  loc_ACED5A: FLdPr var_B8
  loc_ACED5D: from_stack_2 = Me.Item(from_stack_1)
  loc_ACED62: FLdPr var_CC
  loc_ACED65:  = Me.Value
  loc_ACED6A: FLdRfVar var_DC
  loc_ACED6D: CStrVarTmp
  loc_ACED6E: FStStrNoPop var_94
  loc_ACED71: ILdPr
  loc_ACED74: Call tblcuentacontable.DetaCucoPut(from_stack_1v)
  loc_ACED79: FFree1Str var_94
  loc_ACED7C: FFreeAd var_B8 = ""
  loc_ACED83: FFree1Var var_DC = ""
  loc_ACED86: FLdRfVar var_DC
  loc_ACED89: FLdRfVar var_CC
  loc_ACED8C: LitVarStr var_C8, "ImpuCuco"
  loc_ACED91: PopAdLdVar
  loc_ACED92: FLdRfVar var_B8
  loc_ACED95: FMemLdPr
  loc_ACED9A:  = Me.Fields
  loc_ACED9F: FLdPr var_B8
  loc_ACEDA2: from_stack_2 = Me.Item(from_stack_1)
  loc_ACEDA7: FLdPr var_CC
  loc_ACEDAA:  = Me.Value
  loc_ACEDAF: FLdRfVar var_DC
  loc_ACEDB2: CStrVarTmp
  loc_ACEDB3: FStStrNoPop var_94
  loc_ACEDB6: ILdPr
  loc_ACEDB9: Call tblcuentacontable.ImpuCucoPut(from_stack_1v)
  loc_ACEDBE: FFree1Str var_94
  loc_ACEDC1: FFreeAd var_B8 = ""
  loc_ACEDC8: FFree1Var var_DC = ""
  loc_ACEDCB: FLdRfVar var_DC
  loc_ACEDCE: FLdRfVar var_CC
  loc_ACEDD1: LitVarStr var_C8, "CodiTicu"
  loc_ACEDD6: PopAdLdVar
  loc_ACEDD7: FLdRfVar var_B8
  loc_ACEDDA: FMemLdPr
  loc_ACEDDF:  = Me.Fields
  loc_ACEDE4: FLdPr var_B8
  loc_ACEDE7: from_stack_2 = Me.Item(from_stack_1)
  loc_ACEDEC: FLdPr var_CC
  loc_ACEDEF:  = Me.Value
  loc_ACEDF4: FLdRfVar var_DC
  loc_ACEDF7: CStrVarTmp
  loc_ACEDF8: FStStrNoPop var_94
  loc_ACEDFB: ILdPr
  loc_ACEDFE: Call tblcuentacontable.CodiTicuPut(from_stack_1v)
  loc_ACEE03: FFree1Str var_94
  loc_ACEE06: FFreeAd var_B8 = ""
  loc_ACEE0D: FFree1Var var_DC = ""
  loc_ACEE10: FLdRfVar var_DC
  loc_ACEE13: FLdRfVar var_CC
  loc_ACEE16: LitVarStr var_C8, "DebeCuco"
  loc_ACEE1B: PopAdLdVar
  loc_ACEE1C: FLdRfVar var_B8
  loc_ACEE1F: FMemLdPr
  loc_ACEE24:  = Me.Fields
  loc_ACEE29: FLdPr var_B8
  loc_ACEE2C: from_stack_2 = Me.Item(from_stack_1)
  loc_ACEE31: FLdPr var_CC
  loc_ACEE34:  = Me.Value
  loc_ACEE39: FLdRfVar var_DC
  loc_ACEE3C: CStrVarTmp
  loc_ACEE3D: FStStrNoPop var_94
  loc_ACEE40: ILdPr
  loc_ACEE43: Call tblcuentacontable.DebeCucoPut(from_stack_1v)
  loc_ACEE48: FFree1Str var_94
  loc_ACEE4B: FFreeAd var_B8 = ""
  loc_ACEE52: FFree1Var var_DC = ""
  loc_ACEE55: FLdRfVar var_DC
  loc_ACEE58: FLdRfVar var_CC
  loc_ACEE5B: LitVarStr var_C8, "HabeCuco"
  loc_ACEE60: PopAdLdVar
  loc_ACEE61: FLdRfVar var_B8
  loc_ACEE64: FMemLdPr
  loc_ACEE69:  = Me.Fields
  loc_ACEE6E: FLdPr var_B8
  loc_ACEE71: from_stack_2 = Me.Item(from_stack_1)
  loc_ACEE76: FLdPr var_CC
  loc_ACEE79:  = Me.Value
  loc_ACEE7E: FLdRfVar var_DC
  loc_ACEE81: CStrVarTmp
  loc_ACEE82: FStStrNoPop var_94
  loc_ACEE85: ILdPr
  loc_ACEE88: Call tblcuentacontable.HabeCucoPut(from_stack_1v)
  loc_ACEE8D: FFree1Str var_94
  loc_ACEE90: FFreeAd var_B8 = ""
  loc_ACEE97: FFree1Var var_DC = ""
  loc_ACEE9A: FLdRfVar var_DC
  loc_ACEE9D: FLdRfVar var_CC
  loc_ACEEA0: LitVarStr var_C8, "SaldCuco"
  loc_ACEEA5: PopAdLdVar
  loc_ACEEA6: FLdRfVar var_B8
  loc_ACEEA9: FMemLdPr
  loc_ACEEAE:  = Me.Fields
  loc_ACEEB3: FLdPr var_B8
  loc_ACEEB6: from_stack_2 = Me.Item(from_stack_1)
  loc_ACEEBB: FLdPr var_CC
  loc_ACEEBE:  = Me.Value
  loc_ACEEC3: FLdRfVar var_DC
  loc_ACEEC6: CStrVarTmp
  loc_ACEEC7: FStStrNoPop var_94
  loc_ACEECA: ILdPr
  loc_ACEECD: Call tblcuentacontable.SaldCucoPut(from_stack_1v)
  loc_ACEED2: FFree1Str var_94
  loc_ACEED5: FFreeAd var_B8 = ""
  loc_ACEEDC: FFree1Var var_DC = ""
  loc_ACEEDF: FLdRfVar var_CC
  loc_ACEEE2: LitVarStr var_C8, "DescCuco"
  loc_ACEEE7: PopAdLdVar
  loc_ACEEE8: FLdRfVar var_B8
  loc_ACEEEB: FMemLdPr
  loc_ACEEF0:  = Me.Fields
  loc_ACEEF5: FLdPr var_B8
  loc_ACEEF8: from_stack_2 = Me.Item(from_stack_1)
  loc_ACEEFD: FLdZeroAd var_CC
  loc_ACEF00: CVarAd
  loc_ACEF04: ImpAdCallI2 IsNull()
  loc_ACEF09: FStI2 var_146
  loc_ACEF0C: FLdRfVar var_F4
  loc_ACEF0F: LitVarStr var_F0, "DescCuco"
  loc_ACEF14: PopAdLdVar
  loc_ACEF15: FLdRfVar var_E0
  loc_ACEF18: FMemLdPr
  loc_ACEF1D:  = Me.Fields
  loc_ACEF22: FLdPr var_E0
  loc_ACEF25: from_stack_2 = Me.Item(from_stack_1)
  loc_ACEF2A: FLdZeroAd var_F4
  loc_ACEF2D: CVarAd
  loc_ACEF31: LitVarStr var_114, vbNullString
  loc_ACEF36: FStVarCopyObj var_124
  loc_ACEF39: FLdRfVar var_124
  loc_ACEF3C: FLdI2 var_146
  loc_ACEF3F: CVarBoolI2 var_104
  loc_ACEF43: FLdRfVar var_144
  loc_ACEF46: ImpAdCallFPR4  = IIf(, , )
  loc_ACEF4B: FLdRfVar var_144
  loc_ACEF4E: CStrVarVal var_94
  loc_ACEF52: ILdPr
  loc_ACEF55: Call tblcuentacontable.DescCucoPut(from_stack_1v)
  loc_ACEF5A: FFree1Str var_94
  loc_ACEF5D: FFreeAd var_B8 = ""
  loc_ACEF64: FFreeVar var_DC = "": var_104 = "": var_124 = "": var_134 = ""
  loc_ACEF71: FLdRfVar var_DC
  loc_ACEF74: FLdRfVar var_CC
  loc_ACEF77: LitVarStr var_C8, "AltaUsua"
  loc_ACEF7C: PopAdLdVar
  loc_ACEF7D: FLdRfVar var_B8
  loc_ACEF80: FMemLdPr
  loc_ACEF85:  = Me.Fields
  loc_ACEF8A: FLdPr var_B8
  loc_ACEF8D: from_stack_2 = Me.Item(from_stack_1)
  loc_ACEF92: FLdPr var_CC
  loc_ACEF95:  = Me.Value
  loc_ACEF9A: FLdRfVar var_DC
  loc_ACEF9D: CStrVarTmp
  loc_ACEF9E: FStStrNoPop var_94
  loc_ACEFA1: ILdPr
  loc_ACEFA4: Call tblcuentacontable.AltaUsuaPut(from_stack_1v)
  loc_ACEFA9: FFree1Str var_94
  loc_ACEFAC: FFreeAd var_B8 = ""
  loc_ACEFB3: FFree1Var var_DC = ""
  loc_ACEFB6: LitI2_Byte &HFF
  loc_ACEFB8: FStI2 var_86
  loc_ACEFBB: ILdI4 arg_18
  loc_ACEFBE: LitStr vbNullString
  loc_ACEFC1: NeStr
  loc_ACEFC3: BranchF loc_ACF189
  loc_ACEFC6: LitStr "SELECT IFNULL(Sum(DebeMoas),0) DebeMoas"
  loc_ACEFC9: LitStr ", IFNULL(Sum(HabeMoas),0) HabeMoas"
  loc_ACEFCC: ConcatStr
  loc_ACEFCD: FStStrNoPop var_94
  loc_ACEFD0: LitStr ", IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0) SaldDeu"
  loc_ACEFD3: ConcatStr
  loc_ACEFD4: FStStrNoPop var_98
  loc_ACEFD7: LitStr ", IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0) SaldAcre"
  loc_ACEFDA: ConcatStr
  loc_ACEFDB: FStStrNoPop var_9C
  loc_ACEFDE: LitStr " FROM asiento"
  loc_ACEFE1: ConcatStr
  loc_ACEFE2: FStStrNoPop var_A0
  loc_ACEFE5: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie AND moviasiento.CodiCuco = '"
  loc_ACEFE8: ConcatStr
  loc_ACEFE9: FStStrNoPop var_A8
  loc_ACEFEC: FLdRfVar var_A4
  loc_ACEFEF: ILdPr
  loc_ACEFF2: from_stack_1v = tblcuentacontable.CodiCucoGet()
  loc_ACEFF7: ILdRf var_A4
  loc_ACEFFA: ConcatStr
  loc_ACEFFB: FStStrNoPop var_AC
  loc_ACEFFE: LitStr "'"
  loc_ACF001: ConcatStr
  loc_ACF002: FStStrNoPop var_B0
  loc_ACF005: LitStr " WHERE asiento.PeriInfo = "
  loc_ACF008: ConcatStr
  loc_ACF009: FStStrNoPop var_150
  loc_ACF00C: FLdRfVar var_14C
  loc_ACF00F: ILdPr
  loc_ACF012: from_stack_1v = tblcuentacontable.PeriInfoGet()
  loc_ACF017: ILdRf var_14C
  loc_ACF01A: ConcatStr
  loc_ACF01B: FStStrNoPop var_154
  loc_ACF01E: LitStr " AND asiento.FechAsie <= "
  loc_ACF021: ConcatStr
  loc_ACF022: FStStrNoPop var_158
  loc_ACF025: LitI4 1
  loc_ACF02A: LitI4 1
  loc_ACF02F: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_ACF034: FStVarCopyObj var_DC
  loc_ACF037: FLdRfVar var_DC
  loc_ACF03A: ILdRf arg_18
  loc_ACF03D: CVarRef
  loc_ACF042: ImpAdCallI2 Format$(, )
  loc_ACF047: FStStrNoPop var_15C
  loc_ACF04A: ConcatStr
  loc_ACF04B: FStStrNoPop var_160
  loc_ACF04E: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_ACF053: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_A4 = "": var_AC = "": var_B0 = "": var_150 = "": var_14C = "": var_154 = "": var_158 = "": var_15C = ""
  loc_ACF072: FFree1Var var_DC = ""
  loc_ACF075: FLdRfVar var_DC
  loc_ACF078: FLdRfVar var_CC
  loc_ACF07B: LitVarStr var_C8, "DebeMoas"
  loc_ACF080: PopAdLdVar
  loc_ACF081: FLdRfVar var_B8
  loc_ACF084: FMemLdPr
  loc_ACF089:  = Me.Fields
  loc_ACF08E: FLdPr var_B8
  loc_ACF091: from_stack_2 = Me.Item(from_stack_1)
  loc_ACF096: FLdPr var_CC
  loc_ACF099:  = Me.Value
  loc_ACF09E: FLdRfVar var_DC
  loc_ACF0A1: CStrVarTmp
  loc_ACF0A2: FStStrNoPop var_94
  loc_ACF0A5: ILdPr
  loc_ACF0A8: Call tblcuentacontable.DebeMoasPut(from_stack_1v)
  loc_ACF0AD: FFree1Str var_94
  loc_ACF0B0: FFreeAd var_B8 = ""
  loc_ACF0B7: FFree1Var var_DC = ""
  loc_ACF0BA: FLdRfVar var_DC
  loc_ACF0BD: FLdRfVar var_CC
  loc_ACF0C0: LitVarStr var_C8, "HabeMoas"
  loc_ACF0C5: PopAdLdVar
  loc_ACF0C6: FLdRfVar var_B8
  loc_ACF0C9: FMemLdPr
  loc_ACF0CE:  = Me.Fields
  loc_ACF0D3: FLdPr var_B8
  loc_ACF0D6: from_stack_2 = Me.Item(from_stack_1)
  loc_ACF0DB: FLdPr var_CC
  loc_ACF0DE:  = Me.Value
  loc_ACF0E3: FLdRfVar var_DC
  loc_ACF0E6: CStrVarTmp
  loc_ACF0E7: FStStrNoPop var_94
  loc_ACF0EA: ILdPr
  loc_ACF0ED: Call tblcuentacontable.HabeMoasPut(from_stack_1v)
  loc_ACF0F2: FFree1Str var_94
  loc_ACF0F5: FFreeAd var_B8 = ""
  loc_ACF0FC: FFree1Var var_DC = ""
  loc_ACF0FF: FLdRfVar var_DC
  loc_ACF102: FLdRfVar var_CC
  loc_ACF105: LitVarStr var_C8, "SaldDeu"
  loc_ACF10A: PopAdLdVar
  loc_ACF10B: FLdRfVar var_B8
  loc_ACF10E: FMemLdPr
  loc_ACF113:  = Me.Fields
  loc_ACF118: FLdPr var_B8
  loc_ACF11B: from_stack_2 = Me.Item(from_stack_1)
  loc_ACF120: FLdPr var_CC
  loc_ACF123:  = Me.Value
  loc_ACF128: FLdRfVar var_DC
  loc_ACF12B: CStrVarTmp
  loc_ACF12C: FStStrNoPop var_94
  loc_ACF12F: ILdPr
  loc_ACF132: Call tblcuentacontable.SaldDeuPut(from_stack_1v)
  loc_ACF137: FFree1Str var_94
  loc_ACF13A: FFreeAd var_B8 = ""
  loc_ACF141: FFree1Var var_DC = ""
  loc_ACF144: FLdRfVar var_DC
  loc_ACF147: FLdRfVar var_CC
  loc_ACF14A: LitVarStr var_C8, "SaldAcre"
  loc_ACF14F: PopAdLdVar
  loc_ACF150: FLdRfVar var_B8
  loc_ACF153: FMemLdPr
  loc_ACF158:  = Me.Fields
  loc_ACF15D: FLdPr var_B8
  loc_ACF160: from_stack_2 = Me.Item(from_stack_1)
  loc_ACF165: FLdPr var_CC
  loc_ACF168:  = Me.Value
  loc_ACF16D: FLdRfVar var_DC
  loc_ACF170: CStrVarTmp
  loc_ACF171: FStStrNoPop var_94
  loc_ACF174: ILdPr
  loc_ACF177: Call tblcuentacontable.SaldAcrePut(from_stack_1v)
  loc_ACF17C: FFree1Str var_94
  loc_ACF17F: FFreeAd var_B8 = ""
  loc_ACF186: FFree1Var var_DC = ""
  loc_ACF189: Branch loc_ACF236
  loc_ACF18C: LitStr "La Cuenta Contable NO EXISTE. Verifique..."
  loc_ACF18F: ILdPr
  loc_ACF192: Call tblcuentacontable.MsgErrorPut(from_stack_1v)
  loc_ACF197: LitStr vbNullString
  loc_ACF19A: ILdPr
  loc_ACF19D: Call tblcuentacontable.PeriInfoPut(from_stack_1v)
  loc_ACF1A2: LitStr vbNullString
  loc_ACF1A5: ILdPr
  loc_ACF1A8: Call tblcuentacontable.CodiCucoPut(from_stack_1v)
  loc_ACF1AD: LitStr vbNullString
  loc_ACF1B0: ILdPr
  loc_ACF1B3: Call tblcuentacontable.DetaCucoPut(from_stack_1v)
  loc_ACF1B8: LitStr vbNullString
  loc_ACF1BB: ILdPr
  loc_ACF1BE: Call tblcuentacontable.ImpuCucoPut(from_stack_1v)
  loc_ACF1C3: LitStr vbNullString
  loc_ACF1C6: ILdPr
  loc_ACF1C9: Call tblcuentacontable.CodiTicuPut(from_stack_1v)
  loc_ACF1CE: LitStr vbNullString
  loc_ACF1D1: ILdPr
  loc_ACF1D4: Call tblcuentacontable.DebeCucoPut(from_stack_1v)
  loc_ACF1D9: LitStr vbNullString
  loc_ACF1DC: ILdPr
  loc_ACF1DF: Call tblcuentacontable.HabeCucoPut(from_stack_1v)
  loc_ACF1E4: LitStr vbNullString
  loc_ACF1E7: ILdPr
  loc_ACF1EA: Call tblcuentacontable.SaldCucoPut(from_stack_1v)
  loc_ACF1EF: LitStr vbNullString
  loc_ACF1F2: ILdPr
  loc_ACF1F5: Call tblcuentacontable.DescCucoPut(from_stack_1v)
  loc_ACF1FA: LitStr vbNullString
  loc_ACF1FD: ILdPr
  loc_ACF200: Call tblcuentacontable.AltaUsuaPut(from_stack_1v)
  loc_ACF205: LitStr vbNullString
  loc_ACF208: ILdPr
  loc_ACF20B: Call tblcuentacontable.DebeMoasPut(from_stack_1v)
  loc_ACF210: LitStr vbNullString
  loc_ACF213: ILdPr
  loc_ACF216: Call tblcuentacontable.HabeMoasPut(from_stack_1v)
  loc_ACF21B: LitStr vbNullString
  loc_ACF21E: ILdPr
  loc_ACF221: Call tblcuentacontable.SaldDeuPut(from_stack_1v)
  loc_ACF226: LitStr vbNullString
  loc_ACF229: ILdPr
  loc_ACF22C: Call tblcuentacontable.SaldAcrePut(from_stack_1v)
  loc_ACF231: LitI2_Byte 0
  loc_ACF233: FStI2 var_86
  loc_ACF236: ExitProcI2
End Function

Private Function Proc_259_9_B226D4(arg_C, arg_10) 'B226D4
  'Data Table: 4569C4
  loc_B21E00: ILdRf arg_C
  loc_B21E03: FStStrCopy var_8C
  loc_B21E06: ILdRf arg_10
  loc_B21E09: FStStrCopy var_90
  loc_B21E0C: LitStr "SELECT d.*"
  loc_B21E0F: LitStr ", Sum(If(ImpoImpu IS NULL OR FeanLiqu IS NOT NULL OR FeanLide IS NOT NULL,0,ImpoImpu)) > 0 TieneLiq"
  loc_B21E12: ConcatStr
  loc_B21E13: FStStrNoPop var_94
  loc_B21E16: LitStr ", IF(FeanLide IS NOT NULL, TRUE, FALSE) TieneLiqAnul"
  loc_B21E19: ConcatStr
  loc_B21E1A: FStStrNoPop var_98
  loc_B21E1D: LitStr " FROM debito d"
  loc_B21E20: ConcatStr
  loc_B21E21: FStStrNoPop var_9C
  loc_B21E24: LitStr " LEFT JOIN liquidadeta ld ON ld.PeriInfo = d.PeriInfo AND ld.NumeDebi = d.NumeDebi"
  loc_B21E27: ConcatStr
  loc_B21E28: FStStrNoPop var_A0
  loc_B21E2B: LitStr " LEFT JOIN liquidacion l ON l.PeriInfo = ld.PeriInfo AND l.ExpeImpu = ld.ExpeImpu AND l.NumeLiqu = ld.NumeLiqu"
  loc_B21E2E: ConcatStr
  loc_B21E2F: FStStrNoPop var_A4
  loc_B21E32: LitStr " WHERE d.PeriInfo = '"
  loc_B21E35: ConcatStr
  loc_B21E36: FStStrNoPop var_A8
  loc_B21E39: ILdRf var_8C
  loc_B21E3C: ConcatStr
  loc_B21E3D: FStStrNoPop var_AC
  loc_B21E40: LitStr "' AND d.NumeDebi = '"
  loc_B21E43: ConcatStr
  loc_B21E44: FStStrNoPop var_B0
  loc_B21E47: ILdRf var_90
  loc_B21E4A: ConcatStr
  loc_B21E4B: FStStrNoPop var_B4
  loc_B21E4E: LitStr "'"
  loc_B21E51: ConcatStr
  loc_B21E52: FStStrNoPop var_B8
  loc_B21E55: LitStr " GROUP BY d.PeriInfo, d.NumeDebi;"
  loc_B21E58: ConcatStr
  loc_B21E59: FStStrNoPop var_BC
  loc_B21E5C: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_B21E61: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_B21E7A: FLdRfVar var_C0
  loc_B21E7D: FMemLdPr
  loc_B21E82:  = Me.RecordCount
  loc_B21E87: ILdRf var_C0
  loc_B21E8A: LitI4 0
  loc_B21E8F: GtI4
  loc_B21E90: BranchF loc_B225FD
  loc_B21E93: LitStr vbNullString
  loc_B21E96: ILdPr
  loc_B21E99: Call tbldebito.MsgErrorPut(from_stack_1v)
  loc_B21E9E: FLdRfVar var_E8
  loc_B21EA1: FLdRfVar var_D8
  loc_B21EA4: LitVarStr var_D4, "PeriInfo"
  loc_B21EA9: PopAdLdVar
  loc_B21EAA: FLdRfVar var_C4
  loc_B21EAD: FMemLdPr
  loc_B21EB2:  = Me.Fields
  loc_B21EB7: FLdPr var_C4
  loc_B21EBA: from_stack_2 = Me.Item(from_stack_1)
  loc_B21EBF: FLdPr var_D8
  loc_B21EC2:  = Me.Value
  loc_B21EC7: FLdRfVar var_E8
  loc_B21ECA: CStrVarTmp
  loc_B21ECB: FStStrNoPop var_94
  loc_B21ECE: ILdPr
  loc_B21ED1: Call tbldebito.PeriInfoPut(from_stack_1v)
  loc_B21ED6: FFree1Str var_94
  loc_B21ED9: FFreeAd var_C4 = ""
  loc_B21EE0: FFree1Var var_E8 = ""
  loc_B21EE3: FLdRfVar var_E8
  loc_B21EE6: FLdRfVar var_D8
  loc_B21EE9: LitVarStr var_D4, "NumeDebi"
  loc_B21EEE: PopAdLdVar
  loc_B21EEF: FLdRfVar var_C4
  loc_B21EF2: FMemLdPr
  loc_B21EF7:  = Me.Fields
  loc_B21EFC: FLdPr var_C4
  loc_B21EFF: from_stack_2 = Me.Item(from_stack_1)
  loc_B21F04: FLdPr var_D8
  loc_B21F07:  = Me.Value
  loc_B21F0C: FLdRfVar var_E8
  loc_B21F0F: CStrVarTmp
  loc_B21F10: FStStrNoPop var_94
  loc_B21F13: ILdPr
  loc_B21F16: Call tbldebito.NumeDebiPut(from_stack_1v)
  loc_B21F1B: FFree1Str var_94
  loc_B21F1E: FFreeAd var_C4 = ""
  loc_B21F25: FFree1Var var_E8 = ""
  loc_B21F28: FLdRfVar var_E8
  loc_B21F2B: FLdRfVar var_D8
  loc_B21F2E: LitVarStr var_D4, "FechDebi"
  loc_B21F33: PopAdLdVar
  loc_B21F34: FLdRfVar var_C4
  loc_B21F37: FMemLdPr
  loc_B21F3C:  = Me.Fields
  loc_B21F41: FLdPr var_C4
  loc_B21F44: from_stack_2 = Me.Item(from_stack_1)
  loc_B21F49: FLdPr var_D8
  loc_B21F4C:  = Me.Value
  loc_B21F51: FLdRfVar var_120
  loc_B21F54: LitVarStr var_11C, "FechDebi"
  loc_B21F59: PopAdLdVar
  loc_B21F5A: FLdRfVar var_10C
  loc_B21F5D: FMemLdPr
  loc_B21F62:  = Me.Fields
  loc_B21F67: FLdPr var_10C
  loc_B21F6A: from_stack_2 = Me.Item(from_stack_1)
  loc_B21F6F: LitVarStr var_150, vbNullString
  loc_B21F74: FStVarCopyObj var_160
  loc_B21F77: FLdRfVar var_160
  loc_B21F7A: FLdZeroAd var_120
  loc_B21F7D: CVarAd
  loc_B21F81: FLdRfVar var_E8
  loc_B21F84: LitVarStr var_F8, vbNullString
  loc_B21F89: HardType
  loc_B21F8A: NeVar var_108
  loc_B21F8E: FStVar var_130
  loc_B21F92: FLdRfVar var_130
  loc_B21F95: FLdRfVar var_170
  loc_B21F98: ImpAdCallFPR4  = IIf(, , )
  loc_B21F9D: FLdRfVar var_170
  loc_B21FA0: CStrVarVal var_94
  loc_B21FA4: ILdPr
  loc_B21FA7: Call tbldebito.FechDebiPut(from_stack_1v)
  loc_B21FAC: FFree1Str var_94
  loc_B21FAF: FFreeAd var_C4 = "": var_D8 = ""
  loc_B21FB8: FFreeVar var_E8 = "": var_130 = "": var_140 = "": var_160 = ""
  loc_B21FC5: FLdRfVar var_E8
  loc_B21FC8: FLdRfVar var_D8
  loc_B21FCB: LitVarStr var_D4, "ExorImpu"
  loc_B21FD0: PopAdLdVar
  loc_B21FD1: FLdRfVar var_C4
  loc_B21FD4: FMemLdPr
  loc_B21FD9:  = Me.Fields
  loc_B21FDE: FLdPr var_C4
  loc_B21FE1: from_stack_2 = Me.Item(from_stack_1)
  loc_B21FE6: FLdPr var_D8
  loc_B21FE9:  = Me.Value
  loc_B21FEE: FLdRfVar var_E8
  loc_B21FF1: CStrVarTmp
  loc_B21FF2: FStStrNoPop var_94
  loc_B21FF5: ILdPr
  loc_B21FF8: Call tbldebito.ExorImpuPut(from_stack_1v)
  loc_B21FFD: FFree1Str var_94
  loc_B22000: FFreeAd var_C4 = ""
  loc_B22007: FFree1Var var_E8 = ""
  loc_B2200A: FLdRfVar var_E8
  loc_B2200D: FLdRfVar var_D8
  loc_B22010: LitVarStr var_D4, "ExpeImpu"
  loc_B22015: PopAdLdVar
  loc_B22016: FLdRfVar var_C4
  loc_B22019: FMemLdPr
  loc_B2201E:  = Me.Fields
  loc_B22023: FLdPr var_C4
  loc_B22026: from_stack_2 = Me.Item(from_stack_1)
  loc_B2202B: FLdPr var_D8
  loc_B2202E:  = Me.Value
  loc_B22033: FLdRfVar var_E8
  loc_B22036: CStrVarTmp
  loc_B22037: FStStrNoPop var_94
  loc_B2203A: ILdPr
  loc_B2203D: Call tbldebito.ExpeImpuPut(from_stack_1v)
  loc_B22042: FFree1Str var_94
  loc_B22045: FFreeAd var_C4 = ""
  loc_B2204C: FFree1Var var_E8 = ""
  loc_B2204F: FLdRfVar var_E8
  loc_B22052: FLdRfVar var_D8
  loc_B22055: LitVarStr var_D4, "CodiCuco"
  loc_B2205A: PopAdLdVar
  loc_B2205B: FLdRfVar var_C4
  loc_B2205E: FMemLdPr
  loc_B22063:  = Me.Fields
  loc_B22068: FLdPr var_C4
  loc_B2206B: from_stack_2 = Me.Item(from_stack_1)
  loc_B22070: FLdPr var_D8
  loc_B22073:  = Me.Value
  loc_B22078: FLdRfVar var_E8
  loc_B2207B: CStrVarTmp
  loc_B2207C: FStStrNoPop var_94
  loc_B2207F: ILdPr
  loc_B22082: Call tbldebito.CodiCucoPut(from_stack_1v)
  loc_B22087: FFree1Str var_94
  loc_B2208A: FFreeAd var_C4 = ""
  loc_B22091: FFree1Var var_E8 = ""
  loc_B22094: FLdRfVar var_E8
  loc_B22097: FLdRfVar var_D8
  loc_B2209A: LitVarStr var_D4, "CucuPers"
  loc_B2209F: PopAdLdVar
  loc_B220A0: FLdRfVar var_C4
  loc_B220A3: FMemLdPr
  loc_B220A8:  = Me.Fields
  loc_B220AD: FLdPr var_C4
  loc_B220B0: from_stack_2 = Me.Item(from_stack_1)
  loc_B220B5: FLdPr var_D8
  loc_B220B8:  = Me.Value
  loc_B220BD: FLdRfVar var_E8
  loc_B220C0: CStrVarTmp
  loc_B220C1: FStStrNoPop var_94
  loc_B220C4: ILdPr
  loc_B220C7: Call tbldebito.CucuPersPut(from_stack_1v)
  loc_B220CC: FFree1Str var_94
  loc_B220CF: FFreeAd var_C4 = ""
  loc_B220D6: FFree1Var var_E8 = ""
  loc_B220D9: FLdRfVar var_E8
  loc_B220DC: FLdRfVar var_D8
  loc_B220DF: LitVarStr var_D4, "ImpoDebi"
  loc_B220E4: PopAdLdVar
  loc_B220E5: FLdRfVar var_C4
  loc_B220E8: FMemLdPr
  loc_B220ED:  = Me.Fields
  loc_B220F2: FLdPr var_C4
  loc_B220F5: from_stack_2 = Me.Item(from_stack_1)
  loc_B220FA: FLdPr var_D8
  loc_B220FD:  = Me.Value
  loc_B22102: FLdRfVar var_E8
  loc_B22105: CStrVarTmp
  loc_B22106: FStStrNoPop var_94
  loc_B22109: ILdPr
  loc_B2210C: Call tbldebito.ImpoDebiPut(from_stack_1v)
  loc_B22111: FFree1Str var_94
  loc_B22114: FFreeAd var_C4 = ""
  loc_B2211B: FFree1Var var_E8 = ""
  loc_B2211E: FLdRfVar var_E8
  loc_B22121: FLdRfVar var_D8
  loc_B22124: LitVarStr var_D4, "NumeFact"
  loc_B22129: PopAdLdVar
  loc_B2212A: FLdRfVar var_C4
  loc_B2212D: FMemLdPr
  loc_B22132:  = Me.Fields
  loc_B22137: FLdPr var_C4
  loc_B2213A: from_stack_2 = Me.Item(from_stack_1)
  loc_B2213F: FLdPr var_D8
  loc_B22142:  = Me.Value
  loc_B22147: FLdRfVar var_E8
  loc_B2214A: CStrVarTmp
  loc_B2214B: FStStrNoPop var_94
  loc_B2214E: ILdPr
  loc_B22151: Call tbldebito.NumeFactPut(from_stack_1v)
  loc_B22156: FFree1Str var_94
  loc_B22159: FFreeAd var_C4 = ""
  loc_B22160: FFree1Var var_E8 = ""
  loc_B22163: FLdRfVar var_E8
  loc_B22166: FLdRfVar var_D8
  loc_B22169: LitVarStr var_D4, "CodiOrga"
  loc_B2216E: PopAdLdVar
  loc_B2216F: FLdRfVar var_C4
  loc_B22172: FMemLdPr
  loc_B22177:  = Me.Fields
  loc_B2217C: FLdPr var_C4
  loc_B2217F: from_stack_2 = Me.Item(from_stack_1)
  loc_B22184: FLdPr var_D8
  loc_B22187:  = Me.Value
  loc_B2218C: FLdRfVar var_E8
  loc_B2218F: CStrVarTmp
  loc_B22190: FStStrNoPop var_94
  loc_B22193: ILdPr
  loc_B22196: Call tbldebito.CodiOrgaPut(from_stack_1v)
  loc_B2219B: FFree1Str var_94
  loc_B2219E: FFreeAd var_C4 = ""
  loc_B221A5: FFree1Var var_E8 = ""
  loc_B221A8: FLdRfVar var_E8
  loc_B221AB: FLdRfVar var_D8
  loc_B221AE: LitVarStr var_D4, "DetaDebi"
  loc_B221B3: PopAdLdVar
  loc_B221B4: FLdRfVar var_C4
  loc_B221B7: FMemLdPr
  loc_B221BC:  = Me.Fields
  loc_B221C1: FLdPr var_C4
  loc_B221C4: from_stack_2 = Me.Item(from_stack_1)
  loc_B221C9: FLdPr var_D8
  loc_B221CC:  = Me.Value
  loc_B221D1: FLdRfVar var_E8
  loc_B221D4: CStrVarTmp
  loc_B221D5: FStStrNoPop var_94
  loc_B221D8: ILdPr
  loc_B221DB: Call tbldebito.DetaDebiPut(from_stack_1v)
  loc_B221E0: FFree1Str var_94
  loc_B221E3: FFreeAd var_C4 = ""
  loc_B221EA: FFree1Var var_E8 = ""
  loc_B221ED: FLdRfVar var_E8
  loc_B221F0: FLdRfVar var_D8
  loc_B221F3: LitVarStr var_D4, "TieneLiq"
  loc_B221F8: PopAdLdVar
  loc_B221F9: FLdRfVar var_C4
  loc_B221FC: FMemLdPr
  loc_B22201:  = Me.Fields
  loc_B22206: FLdPr var_C4
  loc_B22209: from_stack_2 = Me.Item(from_stack_1)
  loc_B2220E: FLdPr var_D8
  loc_B22211:  = Me.Value
  loc_B22216: FLdRfVar var_E8
  loc_B22219: CBoolVar
  loc_B2221B: ILdPr
  loc_B2221E: Call tbldebito.TieneLiqPut(from_stack_1v)
  loc_B22223: FFreeAd var_C4 = ""
  loc_B2222A: FFree1Var var_E8 = ""
  loc_B2222D: FLdRfVar var_E8
  loc_B22230: FLdRfVar var_D8
  loc_B22233: LitVarStr var_D4, "TieneLiqAnul"
  loc_B22238: PopAdLdVar
  loc_B22239: FLdRfVar var_C4
  loc_B2223C: FMemLdPr
  loc_B22241:  = Me.Fields
  loc_B22246: FLdPr var_C4
  loc_B22249: from_stack_2 = Me.Item(from_stack_1)
  loc_B2224E: FLdPr var_D8
  loc_B22251:  = Me.Value
  loc_B22256: FLdRfVar var_E8
  loc_B22259: CBoolVar
  loc_B2225B: ILdPr
  loc_B2225E: Call tbldebito.TieneLiqAnulPut(from_stack_1v)
  loc_B22263: FFreeAd var_C4 = ""
  loc_B2226A: FFree1Var var_E8 = ""
  loc_B2226D: FLdRfVar var_E8
  loc_B22270: FLdRfVar var_D8
  loc_B22273: LitVarStr var_D4, "FeanDebi"
  loc_B22278: PopAdLdVar
  loc_B22279: FLdRfVar var_C4
  loc_B2227C: FMemLdPr
  loc_B22281:  = Me.Fields
  loc_B22286: FLdPr var_C4
  loc_B22289: from_stack_2 = Me.Item(from_stack_1)
  loc_B2228E: FLdPr var_D8
  loc_B22291:  = Me.Value
  loc_B22296: FLdRfVar var_120
  loc_B22299: LitVarStr var_11C, "FeanDebi"
  loc_B2229E: PopAdLdVar
  loc_B2229F: FLdRfVar var_10C
  loc_B222A2: FMemLdPr
  loc_B222A7:  = Me.Fields
  loc_B222AC: FLdPr var_10C
  loc_B222AF: from_stack_2 = Me.Item(from_stack_1)
  loc_B222B4: LitVarStr var_150, vbNullString
  loc_B222B9: FStVarCopyObj var_160
  loc_B222BC: FLdRfVar var_160
  loc_B222BF: FLdZeroAd var_120
  loc_B222C2: CVarAd
  loc_B222C6: FLdRfVar var_E8
  loc_B222C9: LitVarStr var_F8, vbNullString
  loc_B222CE: HardType
  loc_B222CF: NeVar var_108
  loc_B222D3: FStVar var_130
  loc_B222D7: FLdRfVar var_130
  loc_B222DA: FLdRfVar var_170
  loc_B222DD: ImpAdCallFPR4  = IIf(, , )
  loc_B222E2: FLdRfVar var_170
  loc_B222E5: CStrVarVal var_94
  loc_B222E9: ILdPr
  loc_B222EC: Call tbldebito.FeanDebiPut(from_stack_1v)
  loc_B222F1: FFree1Str var_94
  loc_B222F4: FFreeAd var_C4 = "": var_D8 = ""
  loc_B222FD: FFreeVar var_E8 = "": var_130 = "": var_140 = "": var_160 = ""
  loc_B2230A: FLdRfVar var_E8
  loc_B2230D: FLdRfVar var_D8
  loc_B22310: LitVarStr var_D4, "AltaUsua"
  loc_B22315: PopAdLdVar
  loc_B22316: FLdRfVar var_C4
  loc_B22319: FMemLdPr
  loc_B2231E:  = Me.Fields
  loc_B22323: FLdPr var_C4
  loc_B22326: from_stack_2 = Me.Item(from_stack_1)
  loc_B2232B: FLdPr var_D8
  loc_B2232E:  = Me.Value
  loc_B22333: FLdRfVar var_E8
  loc_B22336: CStrVarTmp
  loc_B22337: FStStrNoPop var_94
  loc_B2233A: ILdPr
  loc_B2233D: Call tbldebito.AltaUsuaPut(from_stack_1v)
  loc_B22342: FFree1Str var_94
  loc_B22345: FFreeAd var_C4 = ""
  loc_B2234C: FFree1Var var_E8 = ""
  loc_B2234F: FLdRfVar var_E8
  loc_B22352: FLdRfVar var_D8
  loc_B22355: LitVarStr var_D4, "AltaFeho"
  loc_B2235A: PopAdLdVar
  loc_B2235B: FLdRfVar var_C4
  loc_B2235E: FMemLdPr
  loc_B22363:  = Me.Fields
  loc_B22368: FLdPr var_C4
  loc_B2236B: from_stack_2 = Me.Item(from_stack_1)
  loc_B22370: FLdPr var_D8
  loc_B22373:  = Me.Value
  loc_B22378: FLdRfVar var_120
  loc_B2237B: LitVarStr var_11C, "AltaFeho"
  loc_B22380: PopAdLdVar
  loc_B22381: FLdRfVar var_10C
  loc_B22384: FMemLdPr
  loc_B22389:  = Me.Fields
  loc_B2238E: FLdPr var_10C
  loc_B22391: from_stack_2 = Me.Item(from_stack_1)
  loc_B22396: LitVarStr var_150, vbNullString
  loc_B2239B: FStVarCopyObj var_160
  loc_B2239E: FLdRfVar var_160
  loc_B223A1: FLdZeroAd var_120
  loc_B223A4: CVarAd
  loc_B223A8: FLdRfVar var_E8
  loc_B223AB: LitVarStr var_F8, vbNullString
  loc_B223B0: HardType
  loc_B223B1: NeVar var_108
  loc_B223B5: FStVar var_130
  loc_B223B9: FLdRfVar var_130
  loc_B223BC: FLdRfVar var_170
  loc_B223BF: ImpAdCallFPR4  = IIf(, , )
  loc_B223C4: FLdRfVar var_170
  loc_B223C7: CStrVarVal var_94
  loc_B223CB: ILdPr
  loc_B223CE: Call tbldebito.AltaFehoPut(from_stack_1v)
  loc_B223D3: FFree1Str var_94
  loc_B223D6: FFreeAd var_C4 = "": var_D8 = ""
  loc_B223DF: FFreeVar var_E8 = "": var_130 = "": var_140 = "": var_160 = ""
  loc_B223EC: FLdRfVar var_E8
  loc_B223EF: FLdRfVar var_D8
  loc_B223F2: LitVarStr var_D4, "ModiUsua"
  loc_B223F7: PopAdLdVar
  loc_B223F8: FLdRfVar var_C4
  loc_B223FB: FMemLdPr
  loc_B22400:  = Me.Fields
  loc_B22405: FLdPr var_C4
  loc_B22408: from_stack_2 = Me.Item(from_stack_1)
  loc_B2240D: FLdPr var_D8
  loc_B22410:  = Me.Value
  loc_B22415: FLdRfVar var_E8
  loc_B22418: CStrVarTmp
  loc_B22419: FStStrNoPop var_94
  loc_B2241C: ILdPr
  loc_B2241F: Call tbldebito.ModiUsuaPut(from_stack_1v)
  loc_B22424: FFree1Str var_94
  loc_B22427: FFreeAd var_C4 = ""
  loc_B2242E: FFree1Var var_E8 = ""
  loc_B22431: FLdRfVar var_E8
  loc_B22434: FLdRfVar var_D8
  loc_B22437: LitVarStr var_D4, "ModiFeho"
  loc_B2243C: PopAdLdVar
  loc_B2243D: FLdRfVar var_C4
  loc_B22440: FMemLdPr
  loc_B22445:  = Me.Fields
  loc_B2244A: FLdPr var_C4
  loc_B2244D: from_stack_2 = Me.Item(from_stack_1)
  loc_B22452: FLdPr var_D8
  loc_B22455:  = Me.Value
  loc_B2245A: FLdRfVar var_120
  loc_B2245D: LitVarStr var_11C, "ModiFeho"
  loc_B22462: PopAdLdVar
  loc_B22463: FLdRfVar var_10C
  loc_B22466: FMemLdPr
  loc_B2246B:  = Me.Fields
  loc_B22470: FLdPr var_10C
  loc_B22473: from_stack_2 = Me.Item(from_stack_1)
  loc_B22478: LitVarStr var_150, vbNullString
  loc_B2247D: FStVarCopyObj var_160
  loc_B22480: FLdRfVar var_160
  loc_B22483: FLdZeroAd var_120
  loc_B22486: CVarAd
  loc_B2248A: FLdRfVar var_E8
  loc_B2248D: LitVarStr var_F8, vbNullString
  loc_B22492: HardType
  loc_B22493: NeVar var_108
  loc_B22497: FStVar var_130
  loc_B2249B: FLdRfVar var_130
  loc_B2249E: FLdRfVar var_170
  loc_B224A1: ImpAdCallFPR4  = IIf(, , )
  loc_B224A6: FLdRfVar var_170
  loc_B224A9: CStrVarVal var_94
  loc_B224AD: ILdPr
  loc_B224B0: Call tbldebito.ModiFehoPut(from_stack_1v)
  loc_B224B5: FFree1Str var_94
  loc_B224B8: FFreeAd var_C4 = "": var_D8 = ""
  loc_B224C1: FFreeVar var_E8 = "": var_130 = "": var_140 = "": var_160 = ""
  loc_B224CE: FLdRfVar var_E8
  loc_B224D1: FLdRfVar var_D8
  loc_B224D4: LitVarStr var_D4, "BajaUsua"
  loc_B224D9: PopAdLdVar
  loc_B224DA: FLdRfVar var_C4
  loc_B224DD: FMemLdPr
  loc_B224E2:  = Me.Fields
  loc_B224E7: FLdPr var_C4
  loc_B224EA: from_stack_2 = Me.Item(from_stack_1)
  loc_B224EF: FLdPr var_D8
  loc_B224F2:  = Me.Value
  loc_B224F7: FLdRfVar var_E8
  loc_B224FA: CStrVarTmp
  loc_B224FB: FStStrNoPop var_94
  loc_B224FE: ILdPr
  loc_B22501: Call tbldebito.BajaUsuaPut(from_stack_1v)
  loc_B22506: FFree1Str var_94
  loc_B22509: FFreeAd var_C4 = ""
  loc_B22510: FFree1Var var_E8 = ""
  loc_B22513: FLdRfVar var_E8
  loc_B22516: FLdRfVar var_D8
  loc_B22519: LitVarStr var_D4, "BajaFeho"
  loc_B2251E: PopAdLdVar
  loc_B2251F: FLdRfVar var_C4
  loc_B22522: FMemLdPr
  loc_B22527:  = Me.Fields
  loc_B2252C: FLdPr var_C4
  loc_B2252F: from_stack_2 = Me.Item(from_stack_1)
  loc_B22534: FLdPr var_D8
  loc_B22537:  = Me.Value
  loc_B2253C: FLdRfVar var_120
  loc_B2253F: LitVarStr var_11C, "BajaFeho"
  loc_B22544: PopAdLdVar
  loc_B22545: FLdRfVar var_10C
  loc_B22548: FMemLdPr
  loc_B2254D:  = Me.Fields
  loc_B22552: FLdPr var_10C
  loc_B22555: from_stack_2 = Me.Item(from_stack_1)
  loc_B2255A: LitVarStr var_150, vbNullString
  loc_B2255F: FStVarCopyObj var_160
  loc_B22562: FLdRfVar var_160
  loc_B22565: FLdZeroAd var_120
  loc_B22568: CVarAd
  loc_B2256C: FLdRfVar var_E8
  loc_B2256F: LitVarStr var_F8, vbNullString
  loc_B22574: HardType
  loc_B22575: NeVar var_108
  loc_B22579: FStVar var_130
  loc_B2257D: FLdRfVar var_130
  loc_B22580: FLdRfVar var_170
  loc_B22583: ImpAdCallFPR4  = IIf(, , )
  loc_B22588: FLdRfVar var_170
  loc_B2258B: CStrVarVal var_94
  loc_B2258F: ILdPr
  loc_B22592: Call tbldebito.BajaFehoPut(from_stack_1v)
  loc_B22597: FFree1Str var_94
  loc_B2259A: FFreeAd var_C4 = "": var_D8 = ""
  loc_B225A3: FFreeVar var_E8 = "": var_130 = "": var_140 = "": var_160 = ""
  loc_B225B0: FLdRfVar var_E8
  loc_B225B3: FLdRfVar var_D8
  loc_B225B6: LitVarStr var_D4, "BajaMoti"
  loc_B225BB: PopAdLdVar
  loc_B225BC: FLdRfVar var_C4
  loc_B225BF: FMemLdPr
  loc_B225C4:  = Me.Fields
  loc_B225C9: FLdPr var_C4
  loc_B225CC: from_stack_2 = Me.Item(from_stack_1)
  loc_B225D1: FLdPr var_D8
  loc_B225D4:  = Me.Value
  loc_B225D9: FLdRfVar var_E8
  loc_B225DC: CStrVarTmp
  loc_B225DD: FStStrNoPop var_94
  loc_B225E0: ILdPr
  loc_B225E3: Call tbldebito.BajaMotiPut(from_stack_1v)
  loc_B225E8: FFree1Str var_94
  loc_B225EB: FFreeAd var_C4 = ""
  loc_B225F2: FFree1Var var_E8 = ""
  loc_B225F5: LitI2_Byte &HFF
  loc_B225F7: FStI2 var_86
  loc_B225FA: Branch loc_B226D3
  loc_B225FD: LitStr "El Débito NO EXISTE. Verifique..."
  loc_B22600: ILdPr
  loc_B22603: Call tbldebito.MsgErrorPut(from_stack_1v)
  loc_B22608: LitStr vbNullString
  loc_B2260B: ILdPr
  loc_B2260E: Call tbldebito.PeriInfoPut(from_stack_1v)
  loc_B22613: LitStr vbNullString
  loc_B22616: ILdPr
  loc_B22619: Call tbldebito.NumeDebiPut(from_stack_1v)
  loc_B2261E: LitStr vbNullString
  loc_B22621: ILdPr
  loc_B22624: Call tbldebito.FechDebiPut(from_stack_1v)
  loc_B22629: LitStr vbNullString
  loc_B2262C: ILdPr
  loc_B2262F: Call tbldebito.ExorImpuPut(from_stack_1v)
  loc_B22634: LitStr vbNullString
  loc_B22637: ILdPr
  loc_B2263A: Call tbldebito.ExpeImpuPut(from_stack_1v)
  loc_B2263F: LitStr vbNullString
  loc_B22642: ILdPr
  loc_B22645: Call tbldebito.CodiCucoPut(from_stack_1v)
  loc_B2264A: LitStr vbNullString
  loc_B2264D: ILdPr
  loc_B22650: Call tbldebito.CucuPersPut(from_stack_1v)
  loc_B22655: LitStr vbNullString
  loc_B22658: ILdPr
  loc_B2265B: Call tbldebito.ImpoDebiPut(from_stack_1v)
  loc_B22660: LitStr vbNullString
  loc_B22663: ILdPr
  loc_B22666: Call tbldebito.NumeFactPut(from_stack_1v)
  loc_B2266B: LitStr vbNullString
  loc_B2266E: ILdPr
  loc_B22671: Call tbldebito.CodiOrgaPut(from_stack_1v)
  loc_B22676: LitStr vbNullString
  loc_B22679: ILdPr
  loc_B2267C: Call tbldebito.DetaDebiPut(from_stack_1v)
  loc_B22681: LitStr vbNullString
  loc_B22684: ILdPr
  loc_B22687: Call tbldebito.FeanDebiPut(from_stack_1v)
  loc_B2268C: LitStr vbNullString
  loc_B2268F: ILdPr
  loc_B22692: Call tbldebito.AltaFehoPut(from_stack_1v)
  loc_B22697: LitStr vbNullString
  loc_B2269A: ILdPr
  loc_B2269D: Call tbldebito.ModiUsuaPut(from_stack_1v)
  loc_B226A2: LitStr vbNullString
  loc_B226A5: ILdPr
  loc_B226A8: Call tbldebito.ModiFehoPut(from_stack_1v)
  loc_B226AD: LitStr vbNullString
  loc_B226B0: ILdPr
  loc_B226B3: Call tbldebito.BajaUsuaPut(from_stack_1v)
  loc_B226B8: LitStr vbNullString
  loc_B226BB: ILdPr
  loc_B226BE: Call tbldebito.BajaFehoPut(from_stack_1v)
  loc_B226C3: LitStr vbNullString
  loc_B226C6: ILdPr
  loc_B226C9: Call tbldebito.BajaMotiPut(from_stack_1v)
  loc_B226CE: LitI2_Byte 0
  loc_B226D0: FStI2 var_86
  loc_B226D3: ExitProcI2
End Function

Private Function Proc_259_10_ACE518(arg_C, arg_10, arg_14) 'ACE518
  'Data Table: 4569C4
  loc_ACDF0C: ILdRf arg_C
  loc_ACDF0F: FStStrCopy var_8C
  loc_ACDF12: ILdRf arg_10
  loc_ACDF15: FStStrCopy var_90
  loc_ACDF18: ILdRf arg_14
  loc_ACDF1B: FStStrCopy var_94
  loc_ACDF1E: LitStr "SELECT *"
  loc_ACDF21: LitStr " FROM deretenciones"
  loc_ACDF24: ConcatStr
  loc_ACDF25: FStStrNoPop var_98
  loc_ACDF28: LitStr " WHERE PeriInfo = '"
  loc_ACDF2B: ConcatStr
  loc_ACDF2C: FStStrNoPop var_9C
  loc_ACDF2F: ILdRf var_8C
  loc_ACDF32: ConcatStr
  loc_ACDF33: FStStrNoPop var_A0
  loc_ACDF36: LitStr "' AND CodiRete = '"
  loc_ACDF39: ConcatStr
  loc_ACDF3A: FStStrNoPop var_A4
  loc_ACDF3D: ILdRf var_90
  loc_ACDF40: ConcatStr
  loc_ACDF41: FStStrNoPop var_A8
  loc_ACDF44: LitStr "' AND CodiDere = '"
  loc_ACDF47: ConcatStr
  loc_ACDF48: FStStrNoPop var_AC
  loc_ACDF4B: ILdRf var_94
  loc_ACDF4E: ConcatStr
  loc_ACDF4F: FStStrNoPop var_B0
  loc_ACDF52: LitStr "'"
  loc_ACDF55: ConcatStr
  loc_ACDF56: FStStrNoPop var_B4
  loc_ACDF59: LitStr " LIMIT 1;"
  loc_ACDF5C: ConcatStr
  loc_ACDF5D: FStStrNoPop var_B8
  loc_ACDF60: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_ACDF65: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_ACDF7A: FLdRfVar var_BC
  loc_ACDF7D: FMemLdPr
  loc_ACDF82:  = Me.RecordCount
  loc_ACDF87: ILdRf var_BC
  loc_ACDF8A: LitI4 0
  loc_ACDF8F: GtI4
  loc_ACDF90: BranchF loc_ACE461
  loc_ACDF93: LitStr vbNullString
  loc_ACDF96: ILdPr
  loc_ACDF99: Call tblderetenciones.MsgErrorPut(from_stack_1v)
  loc_ACDF9E: FLdRfVar var_E4
  loc_ACDFA1: FLdRfVar var_D4
  loc_ACDFA4: LitVarStr var_D0, "PeriInfo"
  loc_ACDFA9: PopAdLdVar
  loc_ACDFAA: FLdRfVar var_C0
  loc_ACDFAD: FMemLdPr
  loc_ACDFB2:  = Me.Fields
  loc_ACDFB7: FLdPr var_C0
  loc_ACDFBA: from_stack_2 = Me.Item(from_stack_1)
  loc_ACDFBF: FLdPr var_D4
  loc_ACDFC2:  = Me.Value
  loc_ACDFC7: FLdRfVar var_E4
  loc_ACDFCA: CStrVarTmp
  loc_ACDFCB: FStStrNoPop var_98
  loc_ACDFCE: ILdPr
  loc_ACDFD1: Call tblderetenciones.PeriInfoPut(from_stack_1v)
  loc_ACDFD6: FFree1Str var_98
  loc_ACDFD9: FFreeAd var_C0 = ""
  loc_ACDFE0: FFree1Var var_E4 = ""
  loc_ACDFE3: FLdRfVar var_E4
  loc_ACDFE6: FLdRfVar var_D4
  loc_ACDFE9: LitVarStr var_D0, "CodiRete"
  loc_ACDFEE: PopAdLdVar
  loc_ACDFEF: FLdRfVar var_C0
  loc_ACDFF2: FMemLdPr
  loc_ACDFF7:  = Me.Fields
  loc_ACDFFC: FLdPr var_C0
  loc_ACDFFF: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE004: FLdPr var_D4
  loc_ACE007:  = Me.Value
  loc_ACE00C: FLdRfVar var_E4
  loc_ACE00F: CStrVarTmp
  loc_ACE010: FStStrNoPop var_98
  loc_ACE013: ILdPr
  loc_ACE016: Call tblderetenciones.CodiRetePut(from_stack_1v)
  loc_ACE01B: FFree1Str var_98
  loc_ACE01E: FFreeAd var_C0 = ""
  loc_ACE025: FFree1Var var_E4 = ""
  loc_ACE028: FLdRfVar var_E4
  loc_ACE02B: FLdRfVar var_D4
  loc_ACE02E: LitVarStr var_D0, "CodiDere"
  loc_ACE033: PopAdLdVar
  loc_ACE034: FLdRfVar var_C0
  loc_ACE037: FMemLdPr
  loc_ACE03C:  = Me.Fields
  loc_ACE041: FLdPr var_C0
  loc_ACE044: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE049: FLdPr var_D4
  loc_ACE04C:  = Me.Value
  loc_ACE051: FLdRfVar var_E4
  loc_ACE054: CStrVarTmp
  loc_ACE055: FStStrNoPop var_98
  loc_ACE058: ILdPr
  loc_ACE05B: Call tblderetenciones.CodiDerePut(from_stack_1v)
  loc_ACE060: FFree1Str var_98
  loc_ACE063: FFreeAd var_C0 = ""
  loc_ACE06A: FFree1Var var_E4 = ""
  loc_ACE06D: FLdRfVar var_E4
  loc_ACE070: FLdRfVar var_D4
  loc_ACE073: LitVarStr var_D0, "DetaDere"
  loc_ACE078: PopAdLdVar
  loc_ACE079: FLdRfVar var_C0
  loc_ACE07C: FMemLdPr
  loc_ACE081:  = Me.Fields
  loc_ACE086: FLdPr var_C0
  loc_ACE089: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE08E: FLdPr var_D4
  loc_ACE091:  = Me.Value
  loc_ACE096: FLdRfVar var_E4
  loc_ACE099: CStrVarTmp
  loc_ACE09A: FStStrNoPop var_98
  loc_ACE09D: ILdPr
  loc_ACE0A0: Call tblderetenciones.DetaDerePut(from_stack_1v)
  loc_ACE0A5: FFree1Str var_98
  loc_ACE0A8: FFreeAd var_C0 = ""
  loc_ACE0AF: FFree1Var var_E4 = ""
  loc_ACE0B2: FLdRfVar var_E4
  loc_ACE0B5: FLdRfVar var_D4
  loc_ACE0B8: LitVarStr var_D0, "PregDere"
  loc_ACE0BD: PopAdLdVar
  loc_ACE0BE: FLdRfVar var_C0
  loc_ACE0C1: FMemLdPr
  loc_ACE0C6:  = Me.Fields
  loc_ACE0CB: FLdPr var_C0
  loc_ACE0CE: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE0D3: FLdPr var_D4
  loc_ACE0D6:  = Me.Value
  loc_ACE0DB: FLdRfVar var_E4
  loc_ACE0DE: CStrVarTmp
  loc_ACE0DF: FStStrNoPop var_98
  loc_ACE0E2: ILdPr
  loc_ACE0E5: Call tblderetenciones.PregDerePut(from_stack_1v)
  loc_ACE0EA: FFree1Str var_98
  loc_ACE0ED: FFreeAd var_C0 = ""
  loc_ACE0F4: FFree1Var var_E4 = ""
  loc_ACE0F7: FLdRfVar var_E4
  loc_ACE0FA: FLdRfVar var_D4
  loc_ACE0FD: LitVarStr var_D0, "ImfiDere"
  loc_ACE102: PopAdLdVar
  loc_ACE103: FLdRfVar var_C0
  loc_ACE106: FMemLdPr
  loc_ACE10B:  = Me.Fields
  loc_ACE110: FLdPr var_C0
  loc_ACE113: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE118: FLdPr var_D4
  loc_ACE11B:  = Me.Value
  loc_ACE120: FLdRfVar var_E4
  loc_ACE123: CStrVarTmp
  loc_ACE124: FStStrNoPop var_98
  loc_ACE127: ILdPr
  loc_ACE12A: Call tblderetenciones.ImfiDerePut(from_stack_1v)
  loc_ACE12F: FFree1Str var_98
  loc_ACE132: FFreeAd var_C0 = ""
  loc_ACE139: FFree1Var var_E4 = ""
  loc_ACE13C: FLdRfVar var_E4
  loc_ACE13F: FLdRfVar var_D4
  loc_ACE142: LitVarStr var_D0, "AcumDere"
  loc_ACE147: PopAdLdVar
  loc_ACE148: FLdRfVar var_C0
  loc_ACE14B: FMemLdPr
  loc_ACE150:  = Me.Fields
  loc_ACE155: FLdPr var_C0
  loc_ACE158: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE15D: FLdPr var_D4
  loc_ACE160:  = Me.Value
  loc_ACE165: FLdRfVar var_E4
  loc_ACE168: CStrVarTmp
  loc_ACE169: FStStrNoPop var_98
  loc_ACE16C: ILdPr
  loc_ACE16F: Call tblderetenciones.AcumDerePut(from_stack_1v)
  loc_ACE174: FFree1Str var_98
  loc_ACE177: FFreeAd var_C0 = ""
  loc_ACE17E: FFree1Var var_E4 = ""
  loc_ACE181: FLdRfVar var_E4
  loc_ACE184: FLdRfVar var_D4
  loc_ACE187: LitVarStr var_D0, "AcubDere"
  loc_ACE18C: PopAdLdVar
  loc_ACE18D: FLdRfVar var_C0
  loc_ACE190: FMemLdPr
  loc_ACE195:  = Me.Fields
  loc_ACE19A: FLdPr var_C0
  loc_ACE19D: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE1A2: FLdPr var_D4
  loc_ACE1A5:  = Me.Value
  loc_ACE1AA: FLdRfVar var_E4
  loc_ACE1AD: CStrVarTmp
  loc_ACE1AE: FStStrNoPop var_98
  loc_ACE1B1: ILdPr
  loc_ACE1B4: Call tblderetenciones.AcubDerePut(from_stack_1v)
  loc_ACE1B9: FFree1Str var_98
  loc_ACE1BC: FFreeAd var_C0 = ""
  loc_ACE1C3: FFree1Var var_E4 = ""
  loc_ACE1C6: FLdRfVar var_E4
  loc_ACE1C9: FLdRfVar var_D4
  loc_ACE1CC: LitVarStr var_D0, "AltaUsua"
  loc_ACE1D1: PopAdLdVar
  loc_ACE1D2: FLdRfVar var_C0
  loc_ACE1D5: FMemLdPr
  loc_ACE1DA:  = Me.Fields
  loc_ACE1DF: FLdPr var_C0
  loc_ACE1E2: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE1E7: FLdPr var_D4
  loc_ACE1EA:  = Me.Value
  loc_ACE1EF: FLdRfVar var_E4
  loc_ACE1F2: CStrVarTmp
  loc_ACE1F3: FStStrNoPop var_98
  loc_ACE1F6: ILdPr
  loc_ACE1F9: Call tblderetenciones.AltaUsuaPut(from_stack_1v)
  loc_ACE1FE: FFree1Str var_98
  loc_ACE201: FFreeAd var_C0 = ""
  loc_ACE208: FFree1Var var_E4 = ""
  loc_ACE20B: FLdRfVar var_E4
  loc_ACE20E: FLdRfVar var_D4
  loc_ACE211: LitVarStr var_D0, "AltaFeho"
  loc_ACE216: PopAdLdVar
  loc_ACE217: FLdRfVar var_C0
  loc_ACE21A: FMemLdPr
  loc_ACE21F:  = Me.Fields
  loc_ACE224: FLdPr var_C0
  loc_ACE227: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE22C: FLdPr var_D4
  loc_ACE22F:  = Me.Value
  loc_ACE234: FLdRfVar var_E4
  loc_ACE237: CStrVarTmp
  loc_ACE238: FStStrNoPop var_98
  loc_ACE23B: ILdPr
  loc_ACE23E: Call tblderetenciones.AltaFehoPut(from_stack_1v)
  loc_ACE243: FFree1Str var_98
  loc_ACE246: FFreeAd var_C0 = ""
  loc_ACE24D: FFree1Var var_E4 = ""
  loc_ACE250: FLdRfVar var_E4
  loc_ACE253: FLdRfVar var_D4
  loc_ACE256: LitVarStr var_D0, "ModiUsua"
  loc_ACE25B: PopAdLdVar
  loc_ACE25C: FLdRfVar var_C0
  loc_ACE25F: FMemLdPr
  loc_ACE264:  = Me.Fields
  loc_ACE269: FLdPr var_C0
  loc_ACE26C: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE271: FLdPr var_D4
  loc_ACE274:  = Me.Value
  loc_ACE279: FLdRfVar var_E4
  loc_ACE27C: CStrVarTmp
  loc_ACE27D: FStStrNoPop var_98
  loc_ACE280: ILdPr
  loc_ACE283: Call tblderetenciones.ModiUsuaPut(from_stack_1v)
  loc_ACE288: FFree1Str var_98
  loc_ACE28B: FFreeAd var_C0 = ""
  loc_ACE292: FFree1Var var_E4 = ""
  loc_ACE295: FLdRfVar var_E4
  loc_ACE298: FLdRfVar var_D4
  loc_ACE29B: LitVarStr var_D0, "ModiFeho"
  loc_ACE2A0: PopAdLdVar
  loc_ACE2A1: FLdRfVar var_C0
  loc_ACE2A4: FMemLdPr
  loc_ACE2A9:  = Me.Fields
  loc_ACE2AE: FLdPr var_C0
  loc_ACE2B1: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE2B6: FLdPr var_D4
  loc_ACE2B9:  = Me.Value
  loc_ACE2BE: FLdRfVar var_11C
  loc_ACE2C1: LitVarStr var_118, "ModiFeho"
  loc_ACE2C6: PopAdLdVar
  loc_ACE2C7: FLdRfVar var_108
  loc_ACE2CA: FMemLdPr
  loc_ACE2CF:  = Me.Fields
  loc_ACE2D4: FLdPr var_108
  loc_ACE2D7: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE2DC: LitVarStr var_14C, vbNullString
  loc_ACE2E1: FStVarCopyObj var_15C
  loc_ACE2E4: FLdRfVar var_15C
  loc_ACE2E7: FLdZeroAd var_11C
  loc_ACE2EA: CVarAd
  loc_ACE2EE: FLdRfVar var_E4
  loc_ACE2F1: LitVarStr var_F4, vbNullString
  loc_ACE2F6: HardType
  loc_ACE2F7: NeVar var_104
  loc_ACE2FB: FStVar var_12C
  loc_ACE2FF: FLdRfVar var_12C
  loc_ACE302: FLdRfVar var_16C
  loc_ACE305: ImpAdCallFPR4  = IIf(, , )
  loc_ACE30A: FLdRfVar var_16C
  loc_ACE30D: CStrVarVal var_98
  loc_ACE311: ILdPr
  loc_ACE314: Call tblderetenciones.ModiFehoPut(from_stack_1v)
  loc_ACE319: FFree1Str var_98
  loc_ACE31C: FFreeAd var_C0 = "": var_D4 = ""
  loc_ACE325: FFreeVar var_E4 = "": var_12C = "": var_13C = "": var_15C = ""
  loc_ACE332: FLdRfVar var_E4
  loc_ACE335: FLdRfVar var_D4
  loc_ACE338: LitVarStr var_D0, "BajaUsua"
  loc_ACE33D: PopAdLdVar
  loc_ACE33E: FLdRfVar var_C0
  loc_ACE341: FMemLdPr
  loc_ACE346:  = Me.Fields
  loc_ACE34B: FLdPr var_C0
  loc_ACE34E: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE353: FLdPr var_D4
  loc_ACE356:  = Me.Value
  loc_ACE35B: FLdRfVar var_E4
  loc_ACE35E: CStrVarTmp
  loc_ACE35F: FStStrNoPop var_98
  loc_ACE362: ILdPr
  loc_ACE365: Call tblderetenciones.BajaUsuaPut(from_stack_1v)
  loc_ACE36A: FFree1Str var_98
  loc_ACE36D: FFreeAd var_C0 = ""
  loc_ACE374: FFree1Var var_E4 = ""
  loc_ACE377: FLdRfVar var_E4
  loc_ACE37A: FLdRfVar var_D4
  loc_ACE37D: LitVarStr var_D0, "BajaFeho"
  loc_ACE382: PopAdLdVar
  loc_ACE383: FLdRfVar var_C0
  loc_ACE386: FMemLdPr
  loc_ACE38B:  = Me.Fields
  loc_ACE390: FLdPr var_C0
  loc_ACE393: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE398: FLdPr var_D4
  loc_ACE39B:  = Me.Value
  loc_ACE3A0: FLdRfVar var_11C
  loc_ACE3A3: LitVarStr var_118, "BajaFeho"
  loc_ACE3A8: PopAdLdVar
  loc_ACE3A9: FLdRfVar var_108
  loc_ACE3AC: FMemLdPr
  loc_ACE3B1:  = Me.Fields
  loc_ACE3B6: FLdPr var_108
  loc_ACE3B9: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE3BE: LitVarStr var_14C, vbNullString
  loc_ACE3C3: FStVarCopyObj var_15C
  loc_ACE3C6: FLdRfVar var_15C
  loc_ACE3C9: FLdZeroAd var_11C
  loc_ACE3CC: CVarAd
  loc_ACE3D0: FLdRfVar var_E4
  loc_ACE3D3: LitVarStr var_F4, vbNullString
  loc_ACE3D8: HardType
  loc_ACE3D9: NeVar var_104
  loc_ACE3DD: FStVar var_12C
  loc_ACE3E1: FLdRfVar var_12C
  loc_ACE3E4: FLdRfVar var_16C
  loc_ACE3E7: ImpAdCallFPR4  = IIf(, , )
  loc_ACE3EC: FLdRfVar var_16C
  loc_ACE3EF: CStrVarVal var_98
  loc_ACE3F3: ILdPr
  loc_ACE3F6: Call tblderetenciones.BajaFehoPut(from_stack_1v)
  loc_ACE3FB: FFree1Str var_98
  loc_ACE3FE: FFreeAd var_C0 = "": var_D4 = ""
  loc_ACE407: FFreeVar var_E4 = "": var_12C = "": var_13C = "": var_15C = ""
  loc_ACE414: FLdRfVar var_E4
  loc_ACE417: FLdRfVar var_D4
  loc_ACE41A: LitVarStr var_D0, "BajaMoti"
  loc_ACE41F: PopAdLdVar
  loc_ACE420: FLdRfVar var_C0
  loc_ACE423: FMemLdPr
  loc_ACE428:  = Me.Fields
  loc_ACE42D: FLdPr var_C0
  loc_ACE430: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE435: FLdPr var_D4
  loc_ACE438:  = Me.Value
  loc_ACE43D: FLdRfVar var_E4
  loc_ACE440: CStrVarTmp
  loc_ACE441: FStStrNoPop var_98
  loc_ACE444: ILdPr
  loc_ACE447: Call tblderetenciones.BajaMotiPut(from_stack_1v)
  loc_ACE44C: FFree1Str var_98
  loc_ACE44F: FFreeAd var_C0 = ""
  loc_ACE456: FFree1Var var_E4 = ""
  loc_ACE459: LitI2_Byte &HFF
  loc_ACE45B: FStI2 var_86
  loc_ACE45E: Branch loc_ACE516
  loc_ACE461: LitStr "La Retención NO EXISTE. Verifique..."
  loc_ACE464: ILdPr
  loc_ACE467: Call tblderetenciones.MsgErrorPut(from_stack_1v)
  loc_ACE46C: LitStr vbNullString
  loc_ACE46F: ILdPr
  loc_ACE472: Call tblderetenciones.PeriInfoPut(from_stack_1v)
  loc_ACE477: LitStr vbNullString
  loc_ACE47A: ILdPr
  loc_ACE47D: Call tblderetenciones.CodiRetePut(from_stack_1v)
  loc_ACE482: LitStr vbNullString
  loc_ACE485: ILdPr
  loc_ACE488: Call tblderetenciones.CodiDerePut(from_stack_1v)
  loc_ACE48D: LitStr vbNullString
  loc_ACE490: ILdPr
  loc_ACE493: Call tblderetenciones.DetaDerePut(from_stack_1v)
  loc_ACE498: LitStr vbNullString
  loc_ACE49B: ILdPr
  loc_ACE49E: Call tblderetenciones.PregDerePut(from_stack_1v)
  loc_ACE4A3: LitStr vbNullString
  loc_ACE4A6: ILdPr
  loc_ACE4A9: Call tblderetenciones.ImfiDerePut(from_stack_1v)
  loc_ACE4AE: LitStr vbNullString
  loc_ACE4B1: ILdPr
  loc_ACE4B4: Call tblderetenciones.AcumDerePut(from_stack_1v)
  loc_ACE4B9: LitStr vbNullString
  loc_ACE4BC: ILdPr
  loc_ACE4BF: Call tblderetenciones.AcubDerePut(from_stack_1v)
  loc_ACE4C4: LitStr vbNullString
  loc_ACE4C7: ILdPr
  loc_ACE4CA: Call tblderetenciones.AltaUsuaPut(from_stack_1v)
  loc_ACE4CF: LitStr vbNullString
  loc_ACE4D2: ILdPr
  loc_ACE4D5: Call tblderetenciones.AltaFehoPut(from_stack_1v)
  loc_ACE4DA: LitStr vbNullString
  loc_ACE4DD: ILdPr
  loc_ACE4E0: Call tblderetenciones.ModiUsuaPut(from_stack_1v)
  loc_ACE4E5: LitStr vbNullString
  loc_ACE4E8: ILdPr
  loc_ACE4EB: Call tblderetenciones.ModiFehoPut(from_stack_1v)
  loc_ACE4F0: LitStr vbNullString
  loc_ACE4F3: ILdPr
  loc_ACE4F6: Call tblderetenciones.BajaUsuaPut(from_stack_1v)
  loc_ACE4FB: LitStr vbNullString
  loc_ACE4FE: ILdPr
  loc_ACE501: Call tblderetenciones.BajaFehoPut(from_stack_1v)
  loc_ACE506: LitStr vbNullString
  loc_ACE509: ILdPr
  loc_ACE50C: Call tblderetenciones.BajaMotiPut(from_stack_1v)
  loc_ACE511: LitI2_Byte 0
  loc_ACE513: FStI2 var_86
  loc_ACE516: ExitProcI2
End Function

Private Function Proc_259_11_AB2FEC(arg_C, arg_10, arg_14, arg_18, arg_1C) 'AB2FEC
  'Data Table: 4569C4
  loc_AB2AB0: ILdRf arg_C
  loc_AB2AB3: FStStrCopy var_8C
  loc_AB2AB6: ILdRf arg_10
  loc_AB2AB9: FStStrCopy var_90
  loc_AB2ABC: ILdRf arg_14
  loc_AB2ABF: FStStrCopy var_94
  loc_AB2AC2: ILdRf arg_18
  loc_AB2AC5: FStStrCopy var_98
  loc_AB2AC8: ILdRf arg_1C
  loc_AB2ACB: FStStrCopy var_9C
  loc_AB2ACE: LitStr "SELECT *"
  loc_AB2AD1: LitStr " FROM escalas"
  loc_AB2AD4: ConcatStr
  loc_AB2AD5: FStStrNoPop var_A0
  loc_AB2AD8: LitStr " WHERE PeriInfo = '"
  loc_AB2ADB: ConcatStr
  loc_AB2ADC: FStStrNoPop var_A4
  loc_AB2ADF: ILdRf var_8C
  loc_AB2AE2: ConcatStr
  loc_AB2AE3: FStStrNoPop var_A8
  loc_AB2AE6: LitStr "' AND FechEsca = '"
  loc_AB2AE9: ConcatStr
  loc_AB2AEA: FStStrNoPop var_AC
  loc_AB2AED: ILdRf var_90
  loc_AB2AF0: ConcatStr
  loc_AB2AF1: FStStrNoPop var_B0
  loc_AB2AF4: LitStr "' AND CodiRete = '"
  loc_AB2AF7: ConcatStr
  loc_AB2AF8: FStStrNoPop var_B4
  loc_AB2AFB: ILdRf var_94
  loc_AB2AFE: ConcatStr
  loc_AB2AFF: FStStrNoPop var_B8
  loc_AB2B02: LitStr "' AND CodiDere = '"
  loc_AB2B05: ConcatStr
  loc_AB2B06: FStStrNoPop var_BC
  loc_AB2B09: ILdRf var_98
  loc_AB2B0C: ConcatStr
  loc_AB2B0D: FStStrNoPop var_C0
  loc_AB2B10: LitStr "' AND CodiEsca = '"
  loc_AB2B13: ConcatStr
  loc_AB2B14: FStStrNoPop var_C4
  loc_AB2B17: ILdRf var_9C
  loc_AB2B1A: ConcatStr
  loc_AB2B1B: FStStrNoPop var_C8
  loc_AB2B1E: LitStr "'"
  loc_AB2B21: ConcatStr
  loc_AB2B22: FStStrNoPop var_CC
  loc_AB2B25: LitStr " LIMIT 1;"
  loc_AB2B28: ConcatStr
  loc_AB2B29: FStStrNoPop var_D0
  loc_AB2B2C: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_AB2B31: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_AB2B4E: FLdRfVar var_D4
  loc_AB2B51: FMemLdPr
  loc_AB2B56:  = Me.RecordCount
  loc_AB2B5B: ILdRf var_D4
  loc_AB2B5E: LitI4 0
  loc_AB2B63: GtI4
  loc_AB2B64: BranchF loc_AB2F40
  loc_AB2B67: LitStr vbNullString
  loc_AB2B6A: ILdPr
  loc_AB2B6D: Call tblescalas.MsgErrorPut(from_stack_1v)
  loc_AB2B72: FLdRfVar var_FC
  loc_AB2B75: FLdRfVar var_EC
  loc_AB2B78: LitVarStr var_E8, "PeriInfo"
  loc_AB2B7D: PopAdLdVar
  loc_AB2B7E: FLdRfVar var_D8
  loc_AB2B81: FMemLdPr
  loc_AB2B86:  = Me.Fields
  loc_AB2B8B: FLdPr var_D8
  loc_AB2B8E: from_stack_2 = Me.Item(from_stack_1)
  loc_AB2B93: FLdPr var_EC
  loc_AB2B96:  = Me.Value
  loc_AB2B9B: FLdRfVar var_FC
  loc_AB2B9E: CStrVarTmp
  loc_AB2B9F: FStStrNoPop var_A0
  loc_AB2BA2: ILdPr
  loc_AB2BA5: Call tblescalas.PeriInfoPut(from_stack_1v)
  loc_AB2BAA: FFree1Str var_A0
  loc_AB2BAD: FFreeAd var_D8 = ""
  loc_AB2BB4: FFree1Var var_FC = ""
  loc_AB2BB7: FLdRfVar var_FC
  loc_AB2BBA: FLdRfVar var_EC
  loc_AB2BBD: LitVarStr var_E8, "FechEsca"
  loc_AB2BC2: PopAdLdVar
  loc_AB2BC3: FLdRfVar var_D8
  loc_AB2BC6: FMemLdPr
  loc_AB2BCB:  = Me.Fields
  loc_AB2BD0: FLdPr var_D8
  loc_AB2BD3: from_stack_2 = Me.Item(from_stack_1)
  loc_AB2BD8: FLdPr var_EC
  loc_AB2BDB:  = Me.Value
  loc_AB2BE0: FLdRfVar var_FC
  loc_AB2BE3: CStrVarTmp
  loc_AB2BE4: FStStrNoPop var_A0
  loc_AB2BE7: ILdPr
  loc_AB2BEA: Call tblescalas.FechEscaPut(from_stack_1v)
  loc_AB2BEF: FFree1Str var_A0
  loc_AB2BF2: FFreeAd var_D8 = ""
  loc_AB2BF9: FFree1Var var_FC = ""
  loc_AB2BFC: FLdRfVar var_FC
  loc_AB2BFF: FLdRfVar var_EC
  loc_AB2C02: LitVarStr var_E8, "CodiRete"
  loc_AB2C07: PopAdLdVar
  loc_AB2C08: FLdRfVar var_D8
  loc_AB2C0B: FMemLdPr
  loc_AB2C10:  = Me.Fields
  loc_AB2C15: FLdPr var_D8
  loc_AB2C18: from_stack_2 = Me.Item(from_stack_1)
  loc_AB2C1D: FLdPr var_EC
  loc_AB2C20:  = Me.Value
  loc_AB2C25: FLdRfVar var_FC
  loc_AB2C28: CStrVarTmp
  loc_AB2C29: FStStrNoPop var_A0
  loc_AB2C2C: ILdPr
  loc_AB2C2F: Call tblescalas.CodiRetePut(from_stack_1v)
  loc_AB2C34: FFree1Str var_A0
  loc_AB2C37: FFreeAd var_D8 = ""
  loc_AB2C3E: FFree1Var var_FC = ""
  loc_AB2C41: FLdRfVar var_FC
  loc_AB2C44: FLdRfVar var_EC
  loc_AB2C47: LitVarStr var_E8, "CodiDere"
  loc_AB2C4C: PopAdLdVar
  loc_AB2C4D: FLdRfVar var_D8
  loc_AB2C50: FMemLdPr
  loc_AB2C55:  = Me.Fields
  loc_AB2C5A: FLdPr var_D8
  loc_AB2C5D: from_stack_2 = Me.Item(from_stack_1)
  loc_AB2C62: FLdPr var_EC
  loc_AB2C65:  = Me.Value
  loc_AB2C6A: FLdRfVar var_FC
  loc_AB2C6D: CStrVarTmp
  loc_AB2C6E: FStStrNoPop var_A0
  loc_AB2C71: ILdPr
  loc_AB2C74: Call tblescalas.CodiDerePut(from_stack_1v)
  loc_AB2C79: FFree1Str var_A0
  loc_AB2C7C: FFreeAd var_D8 = ""
  loc_AB2C83: FFree1Var var_FC = ""
  loc_AB2C86: FLdRfVar var_FC
  loc_AB2C89: FLdRfVar var_EC
  loc_AB2C8C: LitVarStr var_E8, "CodiEsca"
  loc_AB2C91: PopAdLdVar
  loc_AB2C92: FLdRfVar var_D8
  loc_AB2C95: FMemLdPr
  loc_AB2C9A:  = Me.Fields
  loc_AB2C9F: FLdPr var_D8
  loc_AB2CA2: from_stack_2 = Me.Item(from_stack_1)
  loc_AB2CA7: FLdPr var_EC
  loc_AB2CAA:  = Me.Value
  loc_AB2CAF: FLdRfVar var_FC
  loc_AB2CB2: CStrVarTmp
  loc_AB2CB3: FStStrNoPop var_A0
  loc_AB2CB6: ILdPr
  loc_AB2CB9: Call tblescalas.CodiEscaPut(from_stack_1v)
  loc_AB2CBE: FFree1Str var_A0
  loc_AB2CC1: FFreeAd var_D8 = ""
  loc_AB2CC8: FFree1Var var_FC = ""
  loc_AB2CCB: FLdRfVar var_FC
  loc_AB2CCE: FLdRfVar var_EC
  loc_AB2CD1: LitVarStr var_E8, "BaseEsca"
  loc_AB2CD6: PopAdLdVar
  loc_AB2CD7: FLdRfVar var_D8
  loc_AB2CDA: FMemLdPr
  loc_AB2CDF:  = Me.Fields
  loc_AB2CE4: FLdPr var_D8
  loc_AB2CE7: from_stack_2 = Me.Item(from_stack_1)
  loc_AB2CEC: FLdPr var_EC
  loc_AB2CEF:  = Me.Value
  loc_AB2CF4: FLdRfVar var_FC
  loc_AB2CF7: CStrVarTmp
  loc_AB2CF8: FStStrNoPop var_A0
  loc_AB2CFB: ILdPr
  loc_AB2CFE: Call tblescalas.BaseEscaPut(from_stack_1v)
  loc_AB2D03: FFree1Str var_A0
  loc_AB2D06: FFreeAd var_D8 = ""
  loc_AB2D0D: FFree1Var var_FC = ""
  loc_AB2D10: FLdRfVar var_FC
  loc_AB2D13: FLdRfVar var_EC
  loc_AB2D16: LitVarStr var_E8, "MiniEsca"
  loc_AB2D1B: PopAdLdVar
  loc_AB2D1C: FLdRfVar var_D8
  loc_AB2D1F: FMemLdPr
  loc_AB2D24:  = Me.Fields
  loc_AB2D29: FLdPr var_D8
  loc_AB2D2C: from_stack_2 = Me.Item(from_stack_1)
  loc_AB2D31: FLdPr var_EC
  loc_AB2D34:  = Me.Value
  loc_AB2D39: FLdRfVar var_FC
  loc_AB2D3C: CStrVarTmp
  loc_AB2D3D: FStStrNoPop var_A0
  loc_AB2D40: ILdPr
  loc_AB2D43: Call tblescalas.MiniEscaPut(from_stack_1v)
  loc_AB2D48: FFree1Str var_A0
  loc_AB2D4B: FFreeAd var_D8 = ""
  loc_AB2D52: FFree1Var var_FC = ""
  loc_AB2D55: FLdRfVar var_FC
  loc_AB2D58: FLdRfVar var_EC
  loc_AB2D5B: LitVarStr var_E8, "MaxiEsca"
  loc_AB2D60: PopAdLdVar
  loc_AB2D61: FLdRfVar var_D8
  loc_AB2D64: FMemLdPr
  loc_AB2D69:  = Me.Fields
  loc_AB2D6E: FLdPr var_D8
  loc_AB2D71: from_stack_2 = Me.Item(from_stack_1)
  loc_AB2D76: FLdPr var_EC
  loc_AB2D79:  = Me.Value
  loc_AB2D7E: FLdRfVar var_FC
  loc_AB2D81: CStrVarTmp
  loc_AB2D82: FStStrNoPop var_A0
  loc_AB2D85: ILdPr
  loc_AB2D88: Call tblescalas.MaxiEscaPut(from_stack_1v)
  loc_AB2D8D: FFree1Str var_A0
  loc_AB2D90: FFreeAd var_D8 = ""
  loc_AB2D97: FFree1Var var_FC = ""
  loc_AB2D9A: FLdRfVar var_FC
  loc_AB2D9D: FLdRfVar var_EC
  loc_AB2DA0: LitVarStr var_E8, "ImfiEsca"
  loc_AB2DA5: PopAdLdVar
  loc_AB2DA6: FLdRfVar var_D8
  loc_AB2DA9: FMemLdPr
  loc_AB2DAE:  = Me.Fields
  loc_AB2DB3: FLdPr var_D8
  loc_AB2DB6: from_stack_2 = Me.Item(from_stack_1)
  loc_AB2DBB: FLdPr var_EC
  loc_AB2DBE:  = Me.Value
  loc_AB2DC3: FLdRfVar var_FC
  loc_AB2DC6: CStrVarTmp
  loc_AB2DC7: FStStrNoPop var_A0
  loc_AB2DCA: ILdPr
  loc_AB2DCD: Call tblescalas.ImfiEscaPut(from_stack_1v)
  loc_AB2DD2: FFree1Str var_A0
  loc_AB2DD5: FFreeAd var_D8 = ""
  loc_AB2DDC: FFree1Var var_FC = ""
  loc_AB2DDF: FLdRfVar var_FC
  loc_AB2DE2: FLdRfVar var_EC
  loc_AB2DE5: LitVarStr var_E8, "AlicEsca"
  loc_AB2DEA: PopAdLdVar
  loc_AB2DEB: FLdRfVar var_D8
  loc_AB2DEE: FMemLdPr
  loc_AB2DF3:  = Me.Fields
  loc_AB2DF8: FLdPr var_D8
  loc_AB2DFB: from_stack_2 = Me.Item(from_stack_1)
  loc_AB2E00: FLdPr var_EC
  loc_AB2E03:  = Me.Value
  loc_AB2E08: FLdRfVar var_FC
  loc_AB2E0B: CStrVarTmp
  loc_AB2E0C: FStStrNoPop var_A0
  loc_AB2E0F: ILdPr
  loc_AB2E12: Call tblescalas.AlicEscaPut(from_stack_1v)
  loc_AB2E17: FFree1Str var_A0
  loc_AB2E1A: FFreeAd var_D8 = ""
  loc_AB2E21: FFree1Var var_FC = ""
  loc_AB2E24: FLdRfVar var_FC
  loc_AB2E27: FLdRfVar var_EC
  loc_AB2E2A: LitVarStr var_E8, "ImnoEsca"
  loc_AB2E2F: PopAdLdVar
  loc_AB2E30: FLdRfVar var_D8
  loc_AB2E33: FMemLdPr
  loc_AB2E38:  = Me.Fields
  loc_AB2E3D: FLdPr var_D8
  loc_AB2E40: from_stack_2 = Me.Item(from_stack_1)
  loc_AB2E45: FLdPr var_EC
  loc_AB2E48:  = Me.Value
  loc_AB2E4D: FLdRfVar var_FC
  loc_AB2E50: CStrVarTmp
  loc_AB2E51: FStStrNoPop var_A0
  loc_AB2E54: ILdPr
  loc_AB2E57: Call tblescalas.ImnoEscaPut(from_stack_1v)
  loc_AB2E5C: FFree1Str var_A0
  loc_AB2E5F: FFreeAd var_D8 = ""
  loc_AB2E66: FFree1Var var_FC = ""
  loc_AB2E69: FLdRfVar var_FC
  loc_AB2E6C: FLdRfVar var_EC
  loc_AB2E6F: LitVarStr var_E8, "RemiEsca"
  loc_AB2E74: PopAdLdVar
  loc_AB2E75: FLdRfVar var_D8
  loc_AB2E78: FMemLdPr
  loc_AB2E7D:  = Me.Fields
  loc_AB2E82: FLdPr var_D8
  loc_AB2E85: from_stack_2 = Me.Item(from_stack_1)
  loc_AB2E8A: FLdPr var_EC
  loc_AB2E8D:  = Me.Value
  loc_AB2E92: FLdRfVar var_FC
  loc_AB2E95: CStrVarTmp
  loc_AB2E96: FStStrNoPop var_A0
  loc_AB2E99: ILdPr
  loc_AB2E9C: Call tblescalas.RemiEscaPut(from_stack_1v)
  loc_AB2EA1: FFree1Str var_A0
  loc_AB2EA4: FFreeAd var_D8 = ""
  loc_AB2EAB: FFree1Var var_FC = ""
  loc_AB2EAE: FLdRfVar var_FC
  loc_AB2EB1: FLdRfVar var_EC
  loc_AB2EB4: LitVarStr var_E8, "PefiEsca"
  loc_AB2EB9: PopAdLdVar
  loc_AB2EBA: FLdRfVar var_D8
  loc_AB2EBD: FMemLdPr
  loc_AB2EC2:  = Me.Fields
  loc_AB2EC7: FLdPr var_D8
  loc_AB2ECA: from_stack_2 = Me.Item(from_stack_1)
  loc_AB2ECF: FLdPr var_EC
  loc_AB2ED2:  = Me.Value
  loc_AB2ED7: FLdRfVar var_FC
  loc_AB2EDA: CStrVarTmp
  loc_AB2EDB: FStStrNoPop var_A0
  loc_AB2EDE: ILdPr
  loc_AB2EE1: Call tblescalas.PefiEscaPut(from_stack_1v)
  loc_AB2EE6: FFree1Str var_A0
  loc_AB2EE9: FFreeAd var_D8 = ""
  loc_AB2EF0: FFree1Var var_FC = ""
  loc_AB2EF3: FLdRfVar var_FC
  loc_AB2EF6: FLdRfVar var_EC
  loc_AB2EF9: LitVarStr var_E8, "PerfEsca"
  loc_AB2EFE: PopAdLdVar
  loc_AB2EFF: FLdRfVar var_D8
  loc_AB2F02: FMemLdPr
  loc_AB2F07:  = Me.Fields
  loc_AB2F0C: FLdPr var_D8
  loc_AB2F0F: from_stack_2 = Me.Item(from_stack_1)
  loc_AB2F14: FLdPr var_EC
  loc_AB2F17:  = Me.Value
  loc_AB2F1C: FLdRfVar var_FC
  loc_AB2F1F: CStrVarTmp
  loc_AB2F20: FStStrNoPop var_A0
  loc_AB2F23: ILdPr
  loc_AB2F26: Call tblescalas.PerfEscaPut(from_stack_1v)
  loc_AB2F2B: FFree1Str var_A0
  loc_AB2F2E: FFreeAd var_D8 = ""
  loc_AB2F35: FFree1Var var_FC = ""
  loc_AB2F38: LitI2_Byte &HFF
  loc_AB2F3A: FStI2 var_86
  loc_AB2F3D: Branch loc_AB2FEA
  loc_AB2F40: LitStr "La Escala NO EXISTE. Verifique..."
  loc_AB2F43: ILdPr
  loc_AB2F46: Call tblescalas.MsgErrorPut(from_stack_1v)
  loc_AB2F4B: LitStr vbNullString
  loc_AB2F4E: ILdPr
  loc_AB2F51: Call tblescalas.PeriInfoPut(from_stack_1v)
  loc_AB2F56: LitStr vbNullString
  loc_AB2F59: ILdPr
  loc_AB2F5C: Call tblescalas.FechEscaPut(from_stack_1v)
  loc_AB2F61: LitStr vbNullString
  loc_AB2F64: ILdPr
  loc_AB2F67: Call tblescalas.CodiRetePut(from_stack_1v)
  loc_AB2F6C: LitStr vbNullString
  loc_AB2F6F: ILdPr
  loc_AB2F72: Call tblescalas.CodiDerePut(from_stack_1v)
  loc_AB2F77: LitStr vbNullString
  loc_AB2F7A: ILdPr
  loc_AB2F7D: Call tblescalas.CodiEscaPut(from_stack_1v)
  loc_AB2F82: LitStr vbNullString
  loc_AB2F85: ILdPr
  loc_AB2F88: Call tblescalas.BaseEscaPut(from_stack_1v)
  loc_AB2F8D: LitStr vbNullString
  loc_AB2F90: ILdPr
  loc_AB2F93: Call tblescalas.MiniEscaPut(from_stack_1v)
  loc_AB2F98: LitStr vbNullString
  loc_AB2F9B: ILdPr
  loc_AB2F9E: Call tblescalas.MaxiEscaPut(from_stack_1v)
  loc_AB2FA3: LitStr vbNullString
  loc_AB2FA6: ILdPr
  loc_AB2FA9: Call tblescalas.ImfiEscaPut(from_stack_1v)
  loc_AB2FAE: LitStr vbNullString
  loc_AB2FB1: ILdPr
  loc_AB2FB4: Call tblescalas.AlicEscaPut(from_stack_1v)
  loc_AB2FB9: LitStr vbNullString
  loc_AB2FBC: ILdPr
  loc_AB2FBF: Call tblescalas.ImnoEscaPut(from_stack_1v)
  loc_AB2FC4: LitStr vbNullString
  loc_AB2FC7: ILdPr
  loc_AB2FCA: Call tblescalas.RemiEscaPut(from_stack_1v)
  loc_AB2FCF: LitStr vbNullString
  loc_AB2FD2: ILdPr
  loc_AB2FD5: Call tblescalas.PefiEscaPut(from_stack_1v)
  loc_AB2FDA: LitStr vbNullString
  loc_AB2FDD: ILdPr
  loc_AB2FE0: Call tblescalas.PerfEscaPut(from_stack_1v)
  loc_AB2FE5: LitI2_Byte 0
  loc_AB2FE7: FStI2 var_86
  loc_AB2FEA: ExitProcI2
End Function

Private Function Proc_259_12_AE1238(arg_C, arg_10) 'AE1238
  'Data Table: 4569C4
  loc_AE0B8C: ILdRf arg_10
  loc_AE0B8F: FStStrCopy var_8C
  loc_AE0B92: LitI2_Byte 0
  loc_AE0B94: BranchF loc_AE0BEB
  loc_AE0B97: LitStr "SELECT fifu.PeriInfo, fifu.CodiFifu, fifu.DetaFifu, IF(fifu.ImpuFifu=0,'No','Si') ImpuFifu, fifu.CoesFifu"
  loc_AE0B9A: LitStr ", fifu.AltaUsua, fifu.AltaFeho, fifu.ModiUsua, fifu.ModiFeho, fifu.BajaUsua, fifu.BajaFeho, fifu.BajaMoti"
  loc_AE0B9D: ConcatStr
  loc_AE0B9E: FStStrNoPop var_90
  loc_AE0BA1: LitStr " FROM finalidad fifu"
  loc_AE0BA4: ConcatStr
  loc_AE0BA5: FStStrNoPop var_94
  loc_AE0BA8: LitStr " WHERE fifu.PeriInfo = "
  loc_AE0BAB: ConcatStr
  loc_AE0BAC: FStStrNoPop var_98
  loc_AE0BAF: FLdI2 arg_C
  loc_AE0BB2: CStrUI1
  loc_AE0BB4: FStStrNoPop var_9C
  loc_AE0BB7: ConcatStr
  loc_AE0BB8: FStStrNoPop var_A0
  loc_AE0BBB: LitStr " AND fifu.CodiFifu = '"
  loc_AE0BBE: ConcatStr
  loc_AE0BBF: FStStrNoPop var_A4
  loc_AE0BC2: ILdRf var_8C
  loc_AE0BC5: ConcatStr
  loc_AE0BC6: FStStrNoPop var_A8
  loc_AE0BC9: LitStr "'"
  loc_AE0BCC: ConcatStr
  loc_AE0BCD: FStStrNoPop var_AC
  loc_AE0BD0: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_AE0BD5: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AE0BE8: Branch loc_AE0C3C
  loc_AE0BEB: LitStr "SELECT fifu.PeriInfo, fifu.CodiFifu, fifu.DetaFifu, IF(fifu.ImpuFifu=0,'No','Si') ImpuFifu, fifu.CoesFifu, fifu.AutoFifu, fifu.ObseFifu, IF(fifu.CoauFifu=0,'No','Si') CoauFifu"
  loc_AE0BEE: LitStr ", fifu.AltaUsua, fifu.AltaFeho, fifu.ModiUsua, fifu.ModiFeho, fifu.BajaUsua, fifu.BajaFeho, fifu.BajaMoti"
  loc_AE0BF1: ConcatStr
  loc_AE0BF2: FStStrNoPop var_90
  loc_AE0BF5: LitStr " FROM finalidad fifu"
  loc_AE0BF8: ConcatStr
  loc_AE0BF9: FStStrNoPop var_94
  loc_AE0BFC: LitStr " WHERE fifu.PeriInfo = "
  loc_AE0BFF: ConcatStr
  loc_AE0C00: FStStrNoPop var_98
  loc_AE0C03: FLdI2 arg_C
  loc_AE0C06: CStrUI1
  loc_AE0C08: FStStrNoPop var_9C
  loc_AE0C0B: ConcatStr
  loc_AE0C0C: FStStrNoPop var_A0
  loc_AE0C0F: LitStr " AND fifu.CodiFifu = '"
  loc_AE0C12: ConcatStr
  loc_AE0C13: FStStrNoPop var_A4
  loc_AE0C16: ILdRf var_8C
  loc_AE0C19: ConcatStr
  loc_AE0C1A: FStStrNoPop var_A8
  loc_AE0C1D: LitStr "'"
  loc_AE0C20: ConcatStr
  loc_AE0C21: FStStrNoPop var_AC
  loc_AE0C24: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_AE0C29: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AE0C3C: FLdRfVar var_B0
  loc_AE0C3F: FMemLdPr
  loc_AE0C44:  = Me.RecordCount
  loc_AE0C49: ILdRf var_B0
  loc_AE0C4C: LitI4 0
  loc_AE0C51: GtI4
  loc_AE0C52: BranchF loc_AE1180
  loc_AE0C55: LitStr vbNullString
  loc_AE0C58: ILdPr
  loc_AE0C5B: Call tblfinalidad.MsgErrorPut(from_stack_1v)
  loc_AE0C60: FLdRfVar var_D8
  loc_AE0C63: FLdRfVar var_C8
  loc_AE0C66: LitVarStr var_C4, "PeriInfo"
  loc_AE0C6B: PopAdLdVar
  loc_AE0C6C: FLdRfVar var_B4
  loc_AE0C6F: FMemLdPr
  loc_AE0C74:  = Me.Fields
  loc_AE0C79: FLdPr var_B4
  loc_AE0C7C: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0C81: FLdPr var_C8
  loc_AE0C84:  = Me.Value
  loc_AE0C89: FLdRfVar var_D8
  loc_AE0C8C: CStrVarTmp
  loc_AE0C8D: FStStrNoPop var_90
  loc_AE0C90: ILdPr
  loc_AE0C93: Call tblfinalidad.PeriInfoPut(from_stack_1v)
  loc_AE0C98: FFree1Str var_90
  loc_AE0C9B: FFreeAd var_B4 = ""
  loc_AE0CA2: FFree1Var var_D8 = ""
  loc_AE0CA5: FLdRfVar var_D8
  loc_AE0CA8: FLdRfVar var_C8
  loc_AE0CAB: LitVarStr var_C4, "CodiFifu"
  loc_AE0CB0: PopAdLdVar
  loc_AE0CB1: FLdRfVar var_B4
  loc_AE0CB4: FMemLdPr
  loc_AE0CB9:  = Me.Fields
  loc_AE0CBE: FLdPr var_B4
  loc_AE0CC1: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0CC6: FLdPr var_C8
  loc_AE0CC9:  = Me.Value
  loc_AE0CCE: FLdRfVar var_D8
  loc_AE0CD1: CStrVarTmp
  loc_AE0CD2: FStStrNoPop var_90
  loc_AE0CD5: ILdPr
  loc_AE0CD8: Call tblfinalidad.CodiFifuPut(from_stack_1v)
  loc_AE0CDD: FFree1Str var_90
  loc_AE0CE0: FFreeAd var_B4 = ""
  loc_AE0CE7: FFree1Var var_D8 = ""
  loc_AE0CEA: FLdRfVar var_D8
  loc_AE0CED: FLdRfVar var_C8
  loc_AE0CF0: LitVarStr var_C4, "DetaFifu"
  loc_AE0CF5: PopAdLdVar
  loc_AE0CF6: FLdRfVar var_B4
  loc_AE0CF9: FMemLdPr
  loc_AE0CFE:  = Me.Fields
  loc_AE0D03: FLdPr var_B4
  loc_AE0D06: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0D0B: FLdPr var_C8
  loc_AE0D0E:  = Me.Value
  loc_AE0D13: FLdRfVar var_D8
  loc_AE0D16: CStrVarTmp
  loc_AE0D17: FStStrNoPop var_90
  loc_AE0D1A: ILdPr
  loc_AE0D1D: Call tblfinalidad.DetaFifuPut(from_stack_1v)
  loc_AE0D22: FFree1Str var_90
  loc_AE0D25: FFreeAd var_B4 = ""
  loc_AE0D2C: FFree1Var var_D8 = ""
  loc_AE0D2F: LitI2_Byte &HFF
  loc_AE0D31: BranchF loc_AE0E03
  loc_AE0D34: FLdRfVar var_D8
  loc_AE0D37: FLdRfVar var_C8
  loc_AE0D3A: LitVarStr var_C4, "AutoFifu"
  loc_AE0D3F: PopAdLdVar
  loc_AE0D40: FLdRfVar var_B4
  loc_AE0D43: FMemLdPr
  loc_AE0D48:  = Me.Fields
  loc_AE0D4D: FLdPr var_B4
  loc_AE0D50: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0D55: FLdPr var_C8
  loc_AE0D58:  = Me.Value
  loc_AE0D5D: FLdRfVar var_D8
  loc_AE0D60: CStrVarTmp
  loc_AE0D61: FStStrNoPop var_90
  loc_AE0D64: ILdPr
  loc_AE0D67: Call tblfinalidad.AutoFifuPut(from_stack_1v)
  loc_AE0D6C: FFree1Str var_90
  loc_AE0D6F: FFreeAd var_B4 = ""
  loc_AE0D76: FFree1Var var_D8 = ""
  loc_AE0D79: FLdRfVar var_D8
  loc_AE0D7C: FLdRfVar var_C8
  loc_AE0D7F: LitVarStr var_C4, "ObseFifu"
  loc_AE0D84: PopAdLdVar
  loc_AE0D85: FLdRfVar var_B4
  loc_AE0D88: FMemLdPr
  loc_AE0D8D:  = Me.Fields
  loc_AE0D92: FLdPr var_B4
  loc_AE0D95: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0D9A: FLdPr var_C8
  loc_AE0D9D:  = Me.Value
  loc_AE0DA2: FLdRfVar var_D8
  loc_AE0DA5: CStrVarTmp
  loc_AE0DA6: FStStrNoPop var_90
  loc_AE0DA9: ILdPr
  loc_AE0DAC: Call tblfinalidad.ObseFifuPut(from_stack_1v)
  loc_AE0DB1: FFree1Str var_90
  loc_AE0DB4: FFreeAd var_B4 = ""
  loc_AE0DBB: FFree1Var var_D8 = ""
  loc_AE0DBE: FLdRfVar var_D8
  loc_AE0DC1: FLdRfVar var_C8
  loc_AE0DC4: LitVarStr var_C4, "CoauFifu"
  loc_AE0DC9: PopAdLdVar
  loc_AE0DCA: FLdRfVar var_B4
  loc_AE0DCD: FMemLdPr
  loc_AE0DD2:  = Me.Fields
  loc_AE0DD7: FLdPr var_B4
  loc_AE0DDA: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0DDF: FLdPr var_C8
  loc_AE0DE2:  = Me.Value
  loc_AE0DE7: FLdRfVar var_D8
  loc_AE0DEA: CStrVarTmp
  loc_AE0DEB: FStStrNoPop var_90
  loc_AE0DEE: ILdPr
  loc_AE0DF1: Call tblfinalidad.CoauFifuPut(from_stack_1v)
  loc_AE0DF6: FFree1Str var_90
  loc_AE0DF9: FFreeAd var_B4 = ""
  loc_AE0E00: FFree1Var var_D8 = ""
  loc_AE0E03: FLdRfVar var_D8
  loc_AE0E06: FLdRfVar var_C8
  loc_AE0E09: LitVarStr var_C4, "ImpuFifu"
  loc_AE0E0E: PopAdLdVar
  loc_AE0E0F: FLdRfVar var_B4
  loc_AE0E12: FMemLdPr
  loc_AE0E17:  = Me.Fields
  loc_AE0E1C: FLdPr var_B4
  loc_AE0E1F: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0E24: FLdPr var_C8
  loc_AE0E27:  = Me.Value
  loc_AE0E2C: FLdRfVar var_D8
  loc_AE0E2F: CStrVarTmp
  loc_AE0E30: FStStrNoPop var_90
  loc_AE0E33: ILdPr
  loc_AE0E36: Call tblfinalidad.ImpuFifuPut(from_stack_1v)
  loc_AE0E3B: FFree1Str var_90
  loc_AE0E3E: FFreeAd var_B4 = ""
  loc_AE0E45: FFree1Var var_D8 = ""
  loc_AE0E48: FLdRfVar var_D8
  loc_AE0E4B: FLdRfVar var_C8
  loc_AE0E4E: LitVarStr var_C4, "CoesFifu"
  loc_AE0E53: PopAdLdVar
  loc_AE0E54: FLdRfVar var_B4
  loc_AE0E57: FMemLdPr
  loc_AE0E5C:  = Me.Fields
  loc_AE0E61: FLdPr var_B4
  loc_AE0E64: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0E69: FLdPr var_C8
  loc_AE0E6C:  = Me.Value
  loc_AE0E71: FLdRfVar var_D8
  loc_AE0E74: CStrVarTmp
  loc_AE0E75: FStStrNoPop var_90
  loc_AE0E78: ILdPr
  loc_AE0E7B: Call tblfinalidad.CoesFifuPut(from_stack_1v)
  loc_AE0E80: FFree1Str var_90
  loc_AE0E83: FFreeAd var_B4 = ""
  loc_AE0E8A: FFree1Var var_D8 = ""
  loc_AE0E8D: FLdRfVar var_D8
  loc_AE0E90: FLdRfVar var_C8
  loc_AE0E93: LitVarStr var_C4, "AltaUsua"
  loc_AE0E98: PopAdLdVar
  loc_AE0E99: FLdRfVar var_B4
  loc_AE0E9C: FMemLdPr
  loc_AE0EA1:  = Me.Fields
  loc_AE0EA6: FLdPr var_B4
  loc_AE0EA9: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0EAE: FLdPr var_C8
  loc_AE0EB1:  = Me.Value
  loc_AE0EB6: FLdRfVar var_D8
  loc_AE0EB9: CStrVarTmp
  loc_AE0EBA: FStStrNoPop var_90
  loc_AE0EBD: ILdPr
  loc_AE0EC0: Call tblfinalidad.AltaUsuaPut(from_stack_1v)
  loc_AE0EC5: FFree1Str var_90
  loc_AE0EC8: FFreeAd var_B4 = ""
  loc_AE0ECF: FFree1Var var_D8 = ""
  loc_AE0ED2: FLdRfVar var_D8
  loc_AE0ED5: FLdRfVar var_C8
  loc_AE0ED8: LitVarStr var_C4, "AltaFeho"
  loc_AE0EDD: PopAdLdVar
  loc_AE0EDE: FLdRfVar var_B4
  loc_AE0EE1: FMemLdPr
  loc_AE0EE6:  = Me.Fields
  loc_AE0EEB: FLdPr var_B4
  loc_AE0EEE: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0EF3: FLdPr var_C8
  loc_AE0EF6:  = Me.Value
  loc_AE0EFB: FLdRfVar var_110
  loc_AE0EFE: LitVarStr var_10C, "AltaFeho"
  loc_AE0F03: PopAdLdVar
  loc_AE0F04: FLdRfVar var_FC
  loc_AE0F07: FMemLdPr
  loc_AE0F0C:  = Me.Fields
  loc_AE0F11: FLdPr var_FC
  loc_AE0F14: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0F19: LitVarStr var_140, vbNullString
  loc_AE0F1E: FStVarCopyObj var_150
  loc_AE0F21: FLdRfVar var_150
  loc_AE0F24: FLdZeroAd var_110
  loc_AE0F27: CVarAd
  loc_AE0F2B: FLdRfVar var_D8
  loc_AE0F2E: LitVarStr var_E8, vbNullString
  loc_AE0F33: HardType
  loc_AE0F34: NeVar var_F8
  loc_AE0F38: FStVar var_120
  loc_AE0F3C: FLdRfVar var_120
  loc_AE0F3F: FLdRfVar var_160
  loc_AE0F42: ImpAdCallFPR4  = IIf(, , )
  loc_AE0F47: FLdRfVar var_160
  loc_AE0F4A: CStrVarVal var_90
  loc_AE0F4E: ILdPr
  loc_AE0F51: Call tblfinalidad.AltaFehoPut(from_stack_1v)
  loc_AE0F56: FFree1Str var_90
  loc_AE0F59: FFreeAd var_B4 = "": var_C8 = ""
  loc_AE0F62: FFreeVar var_D8 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_AE0F6F: FLdRfVar var_D8
  loc_AE0F72: FLdRfVar var_C8
  loc_AE0F75: LitVarStr var_C4, "ModiUsua"
  loc_AE0F7A: PopAdLdVar
  loc_AE0F7B: FLdRfVar var_B4
  loc_AE0F7E: FMemLdPr
  loc_AE0F83:  = Me.Fields
  loc_AE0F88: FLdPr var_B4
  loc_AE0F8B: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0F90: FLdPr var_C8
  loc_AE0F93:  = Me.Value
  loc_AE0F98: FLdRfVar var_D8
  loc_AE0F9B: CStrVarTmp
  loc_AE0F9C: FStStrNoPop var_90
  loc_AE0F9F: ILdPr
  loc_AE0FA2: Call tblfinalidad.ModiUsuaPut(from_stack_1v)
  loc_AE0FA7: FFree1Str var_90
  loc_AE0FAA: FFreeAd var_B4 = ""
  loc_AE0FB1: FFree1Var var_D8 = ""
  loc_AE0FB4: FLdRfVar var_D8
  loc_AE0FB7: FLdRfVar var_C8
  loc_AE0FBA: LitVarStr var_C4, "ModiFeho"
  loc_AE0FBF: PopAdLdVar
  loc_AE0FC0: FLdRfVar var_B4
  loc_AE0FC3: FMemLdPr
  loc_AE0FC8:  = Me.Fields
  loc_AE0FCD: FLdPr var_B4
  loc_AE0FD0: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0FD5: FLdPr var_C8
  loc_AE0FD8:  = Me.Value
  loc_AE0FDD: FLdRfVar var_110
  loc_AE0FE0: LitVarStr var_10C, "ModiFeho"
  loc_AE0FE5: PopAdLdVar
  loc_AE0FE6: FLdRfVar var_FC
  loc_AE0FE9: FMemLdPr
  loc_AE0FEE:  = Me.Fields
  loc_AE0FF3: FLdPr var_FC
  loc_AE0FF6: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0FFB: LitVarStr var_140, vbNullString
  loc_AE1000: FStVarCopyObj var_150
  loc_AE1003: FLdRfVar var_150
  loc_AE1006: FLdZeroAd var_110
  loc_AE1009: CVarAd
  loc_AE100D: FLdRfVar var_D8
  loc_AE1010: LitVarStr var_E8, vbNullString
  loc_AE1015: HardType
  loc_AE1016: NeVar var_F8
  loc_AE101A: FStVar var_120
  loc_AE101E: FLdRfVar var_120
  loc_AE1021: FLdRfVar var_160
  loc_AE1024: ImpAdCallFPR4  = IIf(, , )
  loc_AE1029: FLdRfVar var_160
  loc_AE102C: CStrVarVal var_90
  loc_AE1030: ILdPr
  loc_AE1033: Call tblfinalidad.ModiFehoPut(from_stack_1v)
  loc_AE1038: FFree1Str var_90
  loc_AE103B: FFreeAd var_B4 = "": var_C8 = ""
  loc_AE1044: FFreeVar var_D8 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_AE1051: FLdRfVar var_D8
  loc_AE1054: FLdRfVar var_C8
  loc_AE1057: LitVarStr var_C4, "BajaUsua"
  loc_AE105C: PopAdLdVar
  loc_AE105D: FLdRfVar var_B4
  loc_AE1060: FMemLdPr
  loc_AE1065:  = Me.Fields
  loc_AE106A: FLdPr var_B4
  loc_AE106D: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1072: FLdPr var_C8
  loc_AE1075:  = Me.Value
  loc_AE107A: FLdRfVar var_D8
  loc_AE107D: CStrVarTmp
  loc_AE107E: FStStrNoPop var_90
  loc_AE1081: ILdPr
  loc_AE1084: Call tblfinalidad.BajaUsuaPut(from_stack_1v)
  loc_AE1089: FFree1Str var_90
  loc_AE108C: FFreeAd var_B4 = ""
  loc_AE1093: FFree1Var var_D8 = ""
  loc_AE1096: FLdRfVar var_D8
  loc_AE1099: FLdRfVar var_C8
  loc_AE109C: LitVarStr var_C4, "BajaFeho"
  loc_AE10A1: PopAdLdVar
  loc_AE10A2: FLdRfVar var_B4
  loc_AE10A5: FMemLdPr
  loc_AE10AA:  = Me.Fields
  loc_AE10AF: FLdPr var_B4
  loc_AE10B2: from_stack_2 = Me.Item(from_stack_1)
  loc_AE10B7: FLdPr var_C8
  loc_AE10BA:  = Me.Value
  loc_AE10BF: FLdRfVar var_110
  loc_AE10C2: LitVarStr var_10C, "BajaFeho"
  loc_AE10C7: PopAdLdVar
  loc_AE10C8: FLdRfVar var_FC
  loc_AE10CB: FMemLdPr
  loc_AE10D0:  = Me.Fields
  loc_AE10D5: FLdPr var_FC
  loc_AE10D8: from_stack_2 = Me.Item(from_stack_1)
  loc_AE10DD: LitVarStr var_140, vbNullString
  loc_AE10E2: FStVarCopyObj var_150
  loc_AE10E5: FLdRfVar var_150
  loc_AE10E8: FLdZeroAd var_110
  loc_AE10EB: CVarAd
  loc_AE10EF: FLdRfVar var_D8
  loc_AE10F2: LitVarStr var_E8, vbNullString
  loc_AE10F7: HardType
  loc_AE10F8: NeVar var_F8
  loc_AE10FC: FStVar var_120
  loc_AE1100: FLdRfVar var_120
  loc_AE1103: FLdRfVar var_160
  loc_AE1106: ImpAdCallFPR4  = IIf(, , )
  loc_AE110B: FLdRfVar var_160
  loc_AE110E: CStrVarVal var_90
  loc_AE1112: ILdPr
  loc_AE1115: Call tblfinalidad.BajaFehoPut(from_stack_1v)
  loc_AE111A: FFree1Str var_90
  loc_AE111D: FFreeAd var_B4 = "": var_C8 = ""
  loc_AE1126: FFreeVar var_D8 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_AE1133: FLdRfVar var_D8
  loc_AE1136: FLdRfVar var_C8
  loc_AE1139: LitVarStr var_C4, "BajaMoti"
  loc_AE113E: PopAdLdVar
  loc_AE113F: FLdRfVar var_B4
  loc_AE1142: FMemLdPr
  loc_AE1147:  = Me.Fields
  loc_AE114C: FLdPr var_B4
  loc_AE114F: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1154: FLdPr var_C8
  loc_AE1157:  = Me.Value
  loc_AE115C: FLdRfVar var_D8
  loc_AE115F: CStrVarTmp
  loc_AE1160: FStStrNoPop var_90
  loc_AE1163: ILdPr
  loc_AE1166: Call tblfinalidad.BajaMotiPut(from_stack_1v)
  loc_AE116B: FFree1Str var_90
  loc_AE116E: FFreeAd var_B4 = ""
  loc_AE1175: FFree1Var var_D8 = ""
  loc_AE1178: LitI2_Byte &HFF
  loc_AE117A: FStI2 var_86
  loc_AE117D: Branch loc_AE1235
  loc_AE1180: LitStr "La Finalidad-Función NO EXISTE. Verifique..."
  loc_AE1183: ILdPr
  loc_AE1186: Call tblfinalidad.MsgErrorPut(from_stack_1v)
  loc_AE118B: LitStr vbNullString
  loc_AE118E: ILdPr
  loc_AE1191: Call tblfinalidad.PeriInfoPut(from_stack_1v)
  loc_AE1196: LitStr vbNullString
  loc_AE1199: ILdPr
  loc_AE119C: Call tblfinalidad.CodiFifuPut(from_stack_1v)
  loc_AE11A1: LitStr vbNullString
  loc_AE11A4: ILdPr
  loc_AE11A7: Call tblfinalidad.DetaFifuPut(from_stack_1v)
  loc_AE11AC: LitStr vbNullString
  loc_AE11AF: ILdPr
  loc_AE11B2: Call tblfinalidad.AutoFifuPut(from_stack_1v)
  loc_AE11B7: LitStr vbNullString
  loc_AE11BA: ILdPr
  loc_AE11BD: Call tblfinalidad.ObseFifuPut(from_stack_1v)
  loc_AE11C2: LitStr vbNullString
  loc_AE11C5: ILdPr
  loc_AE11C8: Call tblfinalidad.CoauFifuPut(from_stack_1v)
  loc_AE11CD: LitStr vbNullString
  loc_AE11D0: ILdPr
  loc_AE11D3: Call tblfinalidad.ImpuFifuPut(from_stack_1v)
  loc_AE11D8: LitStr vbNullString
  loc_AE11DB: ILdPr
  loc_AE11DE: Call tblfinalidad.CoesFifuPut(from_stack_1v)
  loc_AE11E3: LitStr vbNullString
  loc_AE11E6: ILdPr
  loc_AE11E9: Call tblfinalidad.AltaUsuaPut(from_stack_1v)
  loc_AE11EE: LitStr vbNullString
  loc_AE11F1: ILdPr
  loc_AE11F4: Call tblfinalidad.AltaFehoPut(from_stack_1v)
  loc_AE11F9: LitStr vbNullString
  loc_AE11FC: ILdPr
  loc_AE11FF: Call tblfinalidad.ModiUsuaPut(from_stack_1v)
  loc_AE1204: LitStr vbNullString
  loc_AE1207: ILdPr
  loc_AE120A: Call tblfinalidad.ModiFehoPut(from_stack_1v)
  loc_AE120F: LitStr vbNullString
  loc_AE1212: ILdPr
  loc_AE1215: Call tblfinalidad.BajaUsuaPut(from_stack_1v)
  loc_AE121A: LitStr vbNullString
  loc_AE121D: ILdPr
  loc_AE1220: Call tblfinalidad.BajaFehoPut(from_stack_1v)
  loc_AE1225: LitStr vbNullString
  loc_AE1228: ILdPr
  loc_AE122B: Call tblfinalidad.BajaMotiPut(from_stack_1v)
  loc_AE1230: LitI2_Byte 0
  loc_AE1232: FStI2 var_86
  loc_AE1235: ExitProcI2
End Function

Private Function Proc_259_13_A88BCC(arg_C, arg_10, arg_14, arg_18) 'A88BCC
  'Data Table: 4569C4
  loc_A887D0: ILdRf arg_10
  loc_A887D3: FStStrCopy var_8C
  loc_A887D6: ILdRf arg_14
  loc_A887D9: FStStrCopy var_90
  loc_A887DC: ILdRf arg_18
  loc_A887DF: FStStrCopy var_94
  loc_A887E2: LitI2_Byte 0
  loc_A887E4: BranchF loc_A88865
  loc_A887E7: LitStr "SELECT *"
  loc_A887EA: LitStr " FROM fifupartorga fpo"
  loc_A887ED: ConcatStr
  loc_A887EE: FStStrNoPop var_98
  loc_A887F1: LitStr " WHERE fpo.PeriInfo = "
  loc_A887F4: ConcatStr
  loc_A887F5: FStStrNoPop var_9C
  loc_A887F8: FLdI2 arg_C
  loc_A887FB: CStrUI1
  loc_A887FD: FStStrNoPop var_A0
  loc_A88800: ConcatStr
  loc_A88801: FStStrNoPop var_A4
  loc_A88804: LitStr " AND fpo.CodiFifu = '"
  loc_A88807: ConcatStr
  loc_A88808: FStStrNoPop var_A8
  loc_A8880B: ILdRf var_8C
  loc_A8880E: ConcatStr
  loc_A8880F: FStStrNoPop var_AC
  loc_A88812: LitStr "'"
  loc_A88815: ConcatStr
  loc_A88816: FStStrNoPop var_B0
  loc_A88819: LitStr " AND fpo.CodiPart = '"
  loc_A8881C: ConcatStr
  loc_A8881D: FStStrNoPop var_B4
  loc_A88820: ILdRf var_90
  loc_A88823: ConcatStr
  loc_A88824: FStStrNoPop var_B8
  loc_A88827: LitStr "'"
  loc_A8882A: ConcatStr
  loc_A8882B: FStStrNoPop var_BC
  loc_A8882E: LitStr " AND fpo.CodiOrga = '"
  loc_A88831: ConcatStr
  loc_A88832: FStStrNoPop var_C0
  loc_A88835: ILdRf var_94
  loc_A88838: ConcatStr
  loc_A88839: FStStrNoPop var_C4
  loc_A8883C: LitStr "'"
  loc_A8883F: ConcatStr
  loc_A88840: FStStrNoPop var_C8
  loc_A88843: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_A88848: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_A88865: FLdRfVar var_CC
  loc_A88868: FMemLdPr
  loc_A8886D:  = Me.RecordCount
  loc_A88872: ILdRf var_CC
  loc_A88875: LitI4 0
  loc_A8887A: GtI4
  loc_A8887B: BranchF loc_A88B56
  loc_A8887E: LitStr vbNullString
  loc_A88881: ILdPr
  loc_A88884: Call tblfifupartorga.MsgErrorPut(from_stack_1v)
  loc_A88889: FLdRfVar var_F4
  loc_A8888C: FLdRfVar var_E4
  loc_A8888F: LitVarStr var_E0, "PeriInfo"
  loc_A88894: PopAdLdVar
  loc_A88895: FLdRfVar var_D0
  loc_A88898: FMemLdPr
  loc_A8889D:  = Me.Fields
  loc_A888A2: FLdPr var_D0
  loc_A888A5: from_stack_2 = Me.Item(from_stack_1)
  loc_A888AA: FLdPr var_E4
  loc_A888AD:  = Me.Value
  loc_A888B2: FLdRfVar var_F4
  loc_A888B5: CStrVarTmp
  loc_A888B6: FStStrNoPop var_98
  loc_A888B9: ILdPr
  loc_A888BC: Call tblfifupartorga.PeriInfoPut(from_stack_1v)
  loc_A888C1: FFree1Str var_98
  loc_A888C4: FFreeAd var_D0 = ""
  loc_A888CB: FFree1Var var_F4 = ""
  loc_A888CE: FLdRfVar var_F4
  loc_A888D1: FLdRfVar var_E4
  loc_A888D4: LitVarStr var_E0, "CodiFifu"
  loc_A888D9: PopAdLdVar
  loc_A888DA: FLdRfVar var_D0
  loc_A888DD: FMemLdPr
  loc_A888E2:  = Me.Fields
  loc_A888E7: FLdPr var_D0
  loc_A888EA: from_stack_2 = Me.Item(from_stack_1)
  loc_A888EF: FLdPr var_E4
  loc_A888F2:  = Me.Value
  loc_A888F7: FLdRfVar var_F4
  loc_A888FA: CStrVarTmp
  loc_A888FB: FStStrNoPop var_98
  loc_A888FE: ILdPr
  loc_A88901: Call tblfifupartorga.CodiFifuPut(from_stack_1v)
  loc_A88906: FFree1Str var_98
  loc_A88909: FFreeAd var_D0 = ""
  loc_A88910: FFree1Var var_F4 = ""
  loc_A88913: FLdRfVar var_F4
  loc_A88916: FLdRfVar var_E4
  loc_A88919: LitVarStr var_E0, "CodiPart"
  loc_A8891E: PopAdLdVar
  loc_A8891F: FLdRfVar var_D0
  loc_A88922: FMemLdPr
  loc_A88927:  = Me.Fields
  loc_A8892C: FLdPr var_D0
  loc_A8892F: from_stack_2 = Me.Item(from_stack_1)
  loc_A88934: FLdPr var_E4
  loc_A88937:  = Me.Value
  loc_A8893C: FLdRfVar var_F4
  loc_A8893F: CStrVarTmp
  loc_A88940: FStStrNoPop var_98
  loc_A88943: ILdPr
  loc_A88946: Call tblfifupartorga.CodiPartPut(from_stack_1v)
  loc_A8894B: FFree1Str var_98
  loc_A8894E: FFreeAd var_D0 = ""
  loc_A88955: FFree1Var var_F4 = ""
  loc_A88958: FLdRfVar var_F4
  loc_A8895B: FLdRfVar var_E4
  loc_A8895E: LitVarStr var_E0, "CodiOrga"
  loc_A88963: PopAdLdVar
  loc_A88964: FLdRfVar var_D0
  loc_A88967: FMemLdPr
  loc_A8896C:  = Me.Fields
  loc_A88971: FLdPr var_D0
  loc_A88974: from_stack_2 = Me.Item(from_stack_1)
  loc_A88979: FLdPr var_E4
  loc_A8897C:  = Me.Value
  loc_A88981: FLdRfVar var_F4
  loc_A88984: CStrVarTmp
  loc_A88985: FStStrNoPop var_98
  loc_A88988: ILdPr
  loc_A8898B: Call tblfifupartorga.CodiOrgaPut(from_stack_1v)
  loc_A88990: FFree1Str var_98
  loc_A88993: FFreeAd var_D0 = ""
  loc_A8899A: FFree1Var var_F4 = ""
  loc_A8899D: FLdRfVar var_F4
  loc_A889A0: FLdRfVar var_E4
  loc_A889A3: LitVarStr var_E0, "DeorFipo"
  loc_A889A8: PopAdLdVar
  loc_A889A9: FLdRfVar var_D0
  loc_A889AC: FMemLdPr
  loc_A889B1:  = Me.Fields
  loc_A889B6: FLdPr var_D0
  loc_A889B9: from_stack_2 = Me.Item(from_stack_1)
  loc_A889BE: FLdPr var_E4
  loc_A889C1:  = Me.Value
  loc_A889C6: FLdRfVar var_F4
  loc_A889C9: CStrVarTmp
  loc_A889CA: FStStrNoPop var_98
  loc_A889CD: ILdPr
  loc_A889D0: Call tblfifupartorga.DeorFipoPut(from_stack_1v)
  loc_A889D5: FFree1Str var_98
  loc_A889D8: FFreeAd var_D0 = ""
  loc_A889DF: FFree1Var var_F4 = ""
  loc_A889E2: FLdRfVar var_F4
  loc_A889E5: FLdRfVar var_E4
  loc_A889E8: LitVarStr var_E0, "FechFipo"
  loc_A889ED: PopAdLdVar
  loc_A889EE: FLdRfVar var_D0
  loc_A889F1: FMemLdPr
  loc_A889F6:  = Me.Fields
  loc_A889FB: FLdPr var_D0
  loc_A889FE: from_stack_2 = Me.Item(from_stack_1)
  loc_A88A03: FLdPr var_E4
  loc_A88A06:  = Me.Value
  loc_A88A0B: FLdRfVar var_12C
  loc_A88A0E: LitVarStr var_128, "FechFipo"
  loc_A88A13: PopAdLdVar
  loc_A88A14: FLdRfVar var_118
  loc_A88A17: FMemLdPr
  loc_A88A1C:  = Me.Fields
  loc_A88A21: FLdPr var_118
  loc_A88A24: from_stack_2 = Me.Item(from_stack_1)
  loc_A88A29: LitVarStr var_15C, vbNullString
  loc_A88A2E: FStVarCopyObj var_16C
  loc_A88A31: FLdRfVar var_16C
  loc_A88A34: FLdZeroAd var_12C
  loc_A88A37: CVarAd
  loc_A88A3B: FLdRfVar var_F4
  loc_A88A3E: LitVarStr var_104, vbNullString
  loc_A88A43: HardType
  loc_A88A44: NeVar var_114
  loc_A88A48: FStVar var_13C
  loc_A88A4C: FLdRfVar var_13C
  loc_A88A4F: FLdRfVar var_17C
  loc_A88A52: ImpAdCallFPR4  = IIf(, , )
  loc_A88A57: FLdRfVar var_17C
  loc_A88A5A: CStrVarVal var_98
  loc_A88A5E: ILdPr
  loc_A88A61: Call tblfifupartorga.FechFipoPut(from_stack_1v)
  loc_A88A66: FFree1Str var_98
  loc_A88A69: FFreeAd var_D0 = "": var_E4 = ""
  loc_A88A72: FFreeVar var_F4 = "": var_13C = "": var_14C = "": var_16C = ""
  loc_A88A7F: FLdRfVar var_F4
  loc_A88A82: FLdRfVar var_E4
  loc_A88A85: LitVarStr var_E0, "AutoFipo"
  loc_A88A8A: PopAdLdVar
  loc_A88A8B: FLdRfVar var_D0
  loc_A88A8E: FMemLdPr
  loc_A88A93:  = Me.Fields
  loc_A88A98: FLdPr var_D0
  loc_A88A9B: from_stack_2 = Me.Item(from_stack_1)
  loc_A88AA0: FLdPr var_E4
  loc_A88AA3:  = Me.Value
  loc_A88AA8: FLdRfVar var_F4
  loc_A88AAB: CStrVarTmp
  loc_A88AAC: FStStrNoPop var_98
  loc_A88AAF: ILdPr
  loc_A88AB2: Call tblfifupartorga.AutoFipoPut(from_stack_1v)
  loc_A88AB7: FFree1Str var_98
  loc_A88ABA: FFreeAd var_D0 = ""
  loc_A88AC1: FFree1Var var_F4 = ""
  loc_A88AC4: FLdRfVar var_F4
  loc_A88AC7: FLdRfVar var_E4
  loc_A88ACA: LitVarStr var_E0, "CoauFipo"
  loc_A88ACF: PopAdLdVar
  loc_A88AD0: FLdRfVar var_D0
  loc_A88AD3: FMemLdPr
  loc_A88AD8:  = Me.Fields
  loc_A88ADD: FLdPr var_D0
  loc_A88AE0: from_stack_2 = Me.Item(from_stack_1)
  loc_A88AE5: FLdPr var_E4
  loc_A88AE8:  = Me.Value
  loc_A88AED: FLdRfVar var_F4
  loc_A88AF0: CStrVarTmp
  loc_A88AF1: FStStrNoPop var_98
  loc_A88AF4: ILdPr
  loc_A88AF7: Call tblfifupartorga.CoauFipoPut(from_stack_1v)
  loc_A88AFC: FFree1Str var_98
  loc_A88AFF: FFreeAd var_D0 = ""
  loc_A88B06: FFree1Var var_F4 = ""
  loc_A88B09: FLdRfVar var_F4
  loc_A88B0C: FLdRfVar var_E4
  loc_A88B0F: LitVarStr var_E0, "AltaUsua"
  loc_A88B14: PopAdLdVar
  loc_A88B15: FLdRfVar var_D0
  loc_A88B18: FMemLdPr
  loc_A88B1D:  = Me.Fields
  loc_A88B22: FLdPr var_D0
  loc_A88B25: from_stack_2 = Me.Item(from_stack_1)
  loc_A88B2A: FLdPr var_E4
  loc_A88B2D:  = Me.Value
  loc_A88B32: FLdRfVar var_F4
  loc_A88B35: CStrVarTmp
  loc_A88B36: FStStrNoPop var_98
  loc_A88B39: ILdPr
  loc_A88B3C: Call tblfifupartorga.CodiUsuaPut(from_stack_1v)
  loc_A88B41: FFree1Str var_98
  loc_A88B44: FFreeAd var_D0 = ""
  loc_A88B4B: FFree1Var var_F4 = ""
  loc_A88B4E: LitI2_Byte &HFF
  loc_A88B50: FStI2 var_86
  loc_A88B53: Branch loc_A88BC9
  loc_A88B56: LitStr "La Finalidad-Función NO EXISTE. Verifique..."
  loc_A88B59: ILdPr
  loc_A88B5C: Call tblfifupartorga.MsgErrorPut(from_stack_1v)
  loc_A88B61: LitStr vbNullString
  loc_A88B64: ILdPr
  loc_A88B67: Call tblfifupartorga.PeriInfoPut(from_stack_1v)
  loc_A88B6C: LitStr vbNullString
  loc_A88B6F: ILdPr
  loc_A88B72: Call tblfifupartorga.CodiFifuPut(from_stack_1v)
  loc_A88B77: LitStr vbNullString
  loc_A88B7A: ILdPr
  loc_A88B7D: Call tblfifupartorga.CodiPartPut(from_stack_1v)
  loc_A88B82: LitStr vbNullString
  loc_A88B85: ILdPr
  loc_A88B88: Call tblfifupartorga.CodiOrgaPut(from_stack_1v)
  loc_A88B8D: LitStr vbNullString
  loc_A88B90: ILdPr
  loc_A88B93: Call tblfifupartorga.DeorFipoPut(from_stack_1v)
  loc_A88B98: LitStr vbNullString
  loc_A88B9B: ILdPr
  loc_A88B9E: Call tblfifupartorga.FechFipoPut(from_stack_1v)
  loc_A88BA3: LitStr vbNullString
  loc_A88BA6: ILdPr
  loc_A88BA9: Call tblfifupartorga.AutoFipoPut(from_stack_1v)
  loc_A88BAE: LitStr vbNullString
  loc_A88BB1: ILdPr
  loc_A88BB4: Call tblfifupartorga.CoauFipoPut(from_stack_1v)
  loc_A88BB9: LitStr vbNullString
  loc_A88BBC: ILdPr
  loc_A88BBF: Call tblfifupartorga.CodiUsuaPut(from_stack_1v)
  loc_A88BC4: LitI2_Byte 0
  loc_A88BC6: FStI2 var_86
  loc_A88BC9: ExitProcI2
End Function

Private Function Proc_259_14_B41A74(arg_C, arg_10) 'B41A74
  'Data Table: 4569C4
  loc_B4101C: ILdRf arg_C
  loc_B4101F: FStStrCopy var_8C
  loc_B41022: LitStr "SELECT i.*, Left(NumeFact,3) AS TifaDeve, Substr(NumeFact,4,4) AS SufaDeve, Right(NumeFact,8) AS NufaDeve"
  loc_B41025: LitStr " FROM imputacion i"
  loc_B41028: ConcatStr
  loc_B41029: FStStrNoPop var_90
  loc_B4102C: LitStr " WHERE i.PeriInfo = '"
  loc_B4102F: ConcatStr
  loc_B41030: FStStrNoPop var_94
  loc_B41033: ILdRf var_8C
  loc_B41036: ConcatStr
  loc_B41037: FStStrNoPop var_98
  loc_B4103A: LitStr "'"
  loc_B4103D: ConcatStr
  loc_B4103E: FStStrNoPop var_9C
  loc_B41041: LitStr " AND i.IdImpu = '"
  loc_B41044: ConcatStr
  loc_B41045: FStStrNoPop var_A0
  loc_B41048: ILdRf arg_10
  loc_B4104B: CStrI4
  loc_B4104D: FStStrNoPop var_A4
  loc_B41050: ConcatStr
  loc_B41051: FStStrNoPop var_A8
  loc_B41054: LitStr "'"
  loc_B41057: ConcatStr
  loc_B41058: FStStrNoPop var_AC
  loc_B4105B: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_B41060: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_B41073: FLdRfVar var_B0
  loc_B41076: FMemLdPr
  loc_B4107B:  = Me.RecordCount
  loc_B41080: ILdRf var_B0
  loc_B41083: LitI4 0
  loc_B41088: GtI4
  loc_B41089: BranchF loc_B418F5
  loc_B4108C: LitStr vbNullString
  loc_B4108F: ILdPr
  loc_B41092: Call tblimputacion.MsgErrorPut(from_stack_1v)
  loc_B41097: FLdRfVar var_D8
  loc_B4109A: FLdRfVar var_C8
  loc_B4109D: LitVarStr var_C4, "PeriInfo"
  loc_B410A2: PopAdLdVar
  loc_B410A3: FLdRfVar var_B4
  loc_B410A6: FMemLdPr
  loc_B410AB:  = Me.Fields
  loc_B410B0: FLdPr var_B4
  loc_B410B3: from_stack_2 = Me.Item(from_stack_1)
  loc_B410B8: FLdPr var_C8
  loc_B410BB:  = Me.Value
  loc_B410C0: FLdRfVar var_D8
  loc_B410C3: CStrVarTmp
  loc_B410C4: FStStrNoPop var_90
  loc_B410C7: ILdPr
  loc_B410CA: Call tblimputacion.PeriInfoPut(from_stack_1v)
  loc_B410CF: FFree1Str var_90
  loc_B410D2: FFreeAd var_B4 = ""
  loc_B410D9: FFree1Var var_D8 = ""
  loc_B410DC: FLdRfVar var_D8
  loc_B410DF: FLdRfVar var_C8
  loc_B410E2: LitVarStr var_C4, "IdImpu"
  loc_B410E7: PopAdLdVar
  loc_B410E8: FLdRfVar var_B4
  loc_B410EB: FMemLdPr
  loc_B410F0:  = Me.Fields
  loc_B410F5: FLdPr var_B4
  loc_B410F8: from_stack_2 = Me.Item(from_stack_1)
  loc_B410FD: FLdPr var_C8
  loc_B41100:  = Me.Value
  loc_B41105: FLdRfVar var_D8
  loc_B41108: CStrVarTmp
  loc_B41109: FStStrNoPop var_90
  loc_B4110C: ILdPr
  loc_B4110F: Call tblimputacion.IdImpuPut(from_stack_1v)
  loc_B41114: FFree1Str var_90
  loc_B41117: FFreeAd var_B4 = ""
  loc_B4111E: FFree1Var var_D8 = ""
  loc_B41121: FLdRfVar var_D8
  loc_B41124: FLdRfVar var_C8
  loc_B41127: LitVarStr var_C4, "CodiPart"
  loc_B4112C: PopAdLdVar
  loc_B4112D: FLdRfVar var_B4
  loc_B41130: FMemLdPr
  loc_B41135:  = Me.Fields
  loc_B4113A: FLdPr var_B4
  loc_B4113D: from_stack_2 = Me.Item(from_stack_1)
  loc_B41142: FLdPr var_C8
  loc_B41145:  = Me.Value
  loc_B4114A: FLdRfVar var_D8
  loc_B4114D: CStrVarTmp
  loc_B4114E: FStStrNoPop var_90
  loc_B41151: ILdPr
  loc_B41154: Call tblimputacion.CodiPartPut(from_stack_1v)
  loc_B41159: FFree1Str var_90
  loc_B4115C: FFreeAd var_B4 = ""
  loc_B41163: FFree1Var var_D8 = ""
  loc_B41166: FLdRfVar var_D8
  loc_B41169: FLdRfVar var_C8
  loc_B4116C: LitVarStr var_C4, "CodiOrga"
  loc_B41171: PopAdLdVar
  loc_B41172: FLdRfVar var_B4
  loc_B41175: FMemLdPr
  loc_B4117A:  = Me.Fields
  loc_B4117F: FLdPr var_B4
  loc_B41182: from_stack_2 = Me.Item(from_stack_1)
  loc_B41187: FLdPr var_C8
  loc_B4118A:  = Me.Value
  loc_B4118F: FLdRfVar var_D8
  loc_B41192: CStrVarTmp
  loc_B41193: FStStrNoPop var_90
  loc_B41196: ILdPr
  loc_B41199: Call tblimputacion.CodiOrgaPut(from_stack_1v)
  loc_B4119E: FFree1Str var_90
  loc_B411A1: FFreeAd var_B4 = ""
  loc_B411A8: FFree1Var var_D8 = ""
  loc_B411AB: FLdRfVar var_D8
  loc_B411AE: FLdRfVar var_C8
  loc_B411B1: LitVarStr var_C4, "CodiUnga"
  loc_B411B6: PopAdLdVar
  loc_B411B7: FLdRfVar var_B4
  loc_B411BA: FMemLdPr
  loc_B411BF:  = Me.Fields
  loc_B411C4: FLdPr var_B4
  loc_B411C7: from_stack_2 = Me.Item(from_stack_1)
  loc_B411CC: FLdPr var_C8
  loc_B411CF:  = Me.Value
  loc_B411D4: FLdRfVar var_D8
  loc_B411D7: CStrVarTmp
  loc_B411D8: FStStrNoPop var_90
  loc_B411DB: ILdPr
  loc_B411DE: Call tblimputacion.CodiUngaPut(from_stack_1v)
  loc_B411E3: FFree1Str var_90
  loc_B411E6: FFreeAd var_B4 = ""
  loc_B411ED: FFree1Var var_D8 = ""
  loc_B411F0: FLdRfVar var_D8
  loc_B411F3: FLdRfVar var_C8
  loc_B411F6: LitVarStr var_C4, "NumeImpu"
  loc_B411FB: PopAdLdVar
  loc_B411FC: FLdRfVar var_B4
  loc_B411FF: FMemLdPr
  loc_B41204:  = Me.Fields
  loc_B41209: FLdPr var_B4
  loc_B4120C: from_stack_2 = Me.Item(from_stack_1)
  loc_B41211: FLdPr var_C8
  loc_B41214:  = Me.Value
  loc_B41219: FLdRfVar var_D8
  loc_B4121C: CStrVarTmp
  loc_B4121D: FStStrNoPop var_90
  loc_B41220: ILdPr
  loc_B41223: Call tblimputacion.NumeImpuPut(from_stack_1v)
  loc_B41228: FFree1Str var_90
  loc_B4122B: FFreeAd var_B4 = ""
  loc_B41232: FFree1Var var_D8 = ""
  loc_B41235: FLdRfVar var_D8
  loc_B41238: FLdRfVar var_C8
  loc_B4123B: LitVarStr var_C4, "CodiInsu"
  loc_B41240: PopAdLdVar
  loc_B41241: FLdRfVar var_B4
  loc_B41244: FMemLdPr
  loc_B41249:  = Me.Fields
  loc_B4124E: FLdPr var_B4
  loc_B41251: from_stack_2 = Me.Item(from_stack_1)
  loc_B41256: FLdPr var_C8
  loc_B41259:  = Me.Value
  loc_B4125E: FLdRfVar var_D8
  loc_B41261: CStrVarTmp
  loc_B41262: FStStrNoPop var_90
  loc_B41265: ILdPr
  loc_B41268: Call tblimputacion.CodiInsuPut(from_stack_1v)
  loc_B4126D: FFree1Str var_90
  loc_B41270: FFreeAd var_B4 = ""
  loc_B41277: FFree1Var var_D8 = ""
  loc_B4127A: FLdRfVar var_D8
  loc_B4127D: FLdRfVar var_C8
  loc_B41280: LitVarStr var_C4, "CodiFifu"
  loc_B41285: PopAdLdVar
  loc_B41286: FLdRfVar var_B4
  loc_B41289: FMemLdPr
  loc_B4128E:  = Me.Fields
  loc_B41293: FLdPr var_B4
  loc_B41296: from_stack_2 = Me.Item(from_stack_1)
  loc_B4129B: FLdPr var_C8
  loc_B4129E:  = Me.Value
  loc_B412A3: FLdRfVar var_D8
  loc_B412A6: CStrVarTmp
  loc_B412A7: FStStrNoPop var_90
  loc_B412AA: ILdPr
  loc_B412AD: Call tblimputacion.CodiFifuPut(from_stack_1v)
  loc_B412B2: FFree1Str var_90
  loc_B412B5: FFreeAd var_B4 = ""
  loc_B412BC: FFree1Var var_D8 = ""
  loc_B412BF: FLdRfVar var_D8
  loc_B412C2: FLdRfVar var_C8
  loc_B412C5: LitVarStr var_C4, "FechImpu"
  loc_B412CA: PopAdLdVar
  loc_B412CB: FLdRfVar var_B4
  loc_B412CE: FMemLdPr
  loc_B412D3:  = Me.Fields
  loc_B412D8: FLdPr var_B4
  loc_B412DB: from_stack_2 = Me.Item(from_stack_1)
  loc_B412E0: FLdPr var_C8
  loc_B412E3:  = Me.Value
  loc_B412E8: FLdRfVar var_D8
  loc_B412EB: CStrVarTmp
  loc_B412EC: FStStrNoPop var_90
  loc_B412EF: ILdPr
  loc_B412F2: Call tblimputacion.FechImpuPut(from_stack_1v)
  loc_B412F7: FFree1Str var_90
  loc_B412FA: FFreeAd var_B4 = ""
  loc_B41301: FFree1Var var_D8 = ""
  loc_B41304: FLdRfVar var_D8
  loc_B41307: FLdRfVar var_C8
  loc_B4130A: LitVarStr var_C4, "ExorImpu"
  loc_B4130F: PopAdLdVar
  loc_B41310: FLdRfVar var_B4
  loc_B41313: FMemLdPr
  loc_B41318:  = Me.Fields
  loc_B4131D: FLdPr var_B4
  loc_B41320: from_stack_2 = Me.Item(from_stack_1)
  loc_B41325: FLdPr var_C8
  loc_B41328:  = Me.Value
  loc_B4132D: FLdRfVar var_D8
  loc_B41330: CStrVarTmp
  loc_B41331: FStStrNoPop var_90
  loc_B41334: ILdPr
  loc_B41337: Call tblimputacion.ExorImpuPut(from_stack_1v)
  loc_B4133C: FFree1Str var_90
  loc_B4133F: FFreeAd var_B4 = ""
  loc_B41346: FFree1Var var_D8 = ""
  loc_B41349: FLdRfVar var_D8
  loc_B4134C: FLdRfVar var_C8
  loc_B4134F: LitVarStr var_C4, "ExpeImpu"
  loc_B41354: PopAdLdVar
  loc_B41355: FLdRfVar var_B4
  loc_B41358: FMemLdPr
  loc_B4135D:  = Me.Fields
  loc_B41362: FLdPr var_B4
  loc_B41365: from_stack_2 = Me.Item(from_stack_1)
  loc_B4136A: FLdPr var_C8
  loc_B4136D:  = Me.Value
  loc_B41372: FLdRfVar var_D8
  loc_B41375: CStrVarTmp
  loc_B41376: FStStrNoPop var_90
  loc_B41379: ILdPr
  loc_B4137C: Call tblimputacion.ExpeImpuPut(from_stack_1v)
  loc_B41381: FFree1Str var_90
  loc_B41384: FFreeAd var_B4 = ""
  loc_B4138B: FFree1Var var_D8 = ""
  loc_B4138E: FLdRfVar var_D8
  loc_B41391: FLdRfVar var_C8
  loc_B41394: LitVarStr var_C4, "CantImpu"
  loc_B41399: PopAdLdVar
  loc_B4139A: FLdRfVar var_B4
  loc_B4139D: FMemLdPr
  loc_B413A2:  = Me.Fields
  loc_B413A7: FLdPr var_B4
  loc_B413AA: from_stack_2 = Me.Item(from_stack_1)
  loc_B413AF: FLdPr var_C8
  loc_B413B2:  = Me.Value
  loc_B413B7: FLdRfVar var_D8
  loc_B413BA: CStrVarTmp
  loc_B413BB: FStStrNoPop var_90
  loc_B413BE: ILdPr
  loc_B413C1: Call tblimputacion.CantImpuPut(from_stack_1v)
  loc_B413C6: FFree1Str var_90
  loc_B413C9: FFreeAd var_B4 = ""
  loc_B413D0: FFree1Var var_D8 = ""
  loc_B413D3: FLdRfVar var_D8
  loc_B413D6: FLdRfVar var_C8
  loc_B413D9: LitVarStr var_C4, "ImunImpu"
  loc_B413DE: PopAdLdVar
  loc_B413DF: FLdRfVar var_B4
  loc_B413E2: FMemLdPr
  loc_B413E7:  = Me.Fields
  loc_B413EC: FLdPr var_B4
  loc_B413EF: from_stack_2 = Me.Item(from_stack_1)
  loc_B413F4: FLdPr var_C8
  loc_B413F7:  = Me.Value
  loc_B413FC: FLdRfVar var_D8
  loc_B413FF: CStrVarTmp
  loc_B41400: FStStrNoPop var_90
  loc_B41403: ILdPr
  loc_B41406: Call tblimputacion.ImunImpuPut(from_stack_1v)
  loc_B4140B: FFree1Str var_90
  loc_B4140E: FFreeAd var_B4 = ""
  loc_B41415: FFree1Var var_D8 = ""
  loc_B41418: FLdRfVar var_D8
  loc_B4141B: FLdRfVar var_C8
  loc_B4141E: LitVarStr var_C4, "PrevImpu"
  loc_B41423: PopAdLdVar
  loc_B41424: FLdRfVar var_B4
  loc_B41427: FMemLdPr
  loc_B4142C:  = Me.Fields
  loc_B41431: FLdPr var_B4
  loc_B41434: from_stack_2 = Me.Item(from_stack_1)
  loc_B41439: FLdPr var_C8
  loc_B4143C:  = Me.Value
  loc_B41441: FLdRfVar var_D8
  loc_B41444: CStrVarTmp
  loc_B41445: FStStrNoPop var_90
  loc_B41448: ILdPr
  loc_B4144B: Call tblimputacion.PrevImpuPut(from_stack_1v)
  loc_B41450: FFree1Str var_90
  loc_B41453: FFreeAd var_B4 = ""
  loc_B4145A: FFree1Var var_D8 = ""
  loc_B4145D: FLdRfVar var_D8
  loc_B41460: FLdRfVar var_C8
  loc_B41463: LitVarStr var_C4, "DefiImpu"
  loc_B41468: PopAdLdVar
  loc_B41469: FLdRfVar var_B4
  loc_B4146C: FMemLdPr
  loc_B41471:  = Me.Fields
  loc_B41476: FLdPr var_B4
  loc_B41479: from_stack_2 = Me.Item(from_stack_1)
  loc_B4147E: FLdPr var_C8
  loc_B41481:  = Me.Value
  loc_B41486: FLdRfVar var_D8
  loc_B41489: CStrVarTmp
  loc_B4148A: FStStrNoPop var_90
  loc_B4148D: ILdPr
  loc_B41490: Call tblimputacion.DefiImpuPut(from_stack_1v)
  loc_B41495: FFree1Str var_90
  loc_B41498: FFreeAd var_B4 = ""
  loc_B4149F: FFree1Var var_D8 = ""
  loc_B414A2: FLdRfVar var_D8
  loc_B414A5: FLdRfVar var_C8
  loc_B414A8: LitVarStr var_C4, "DeveImpu"
  loc_B414AD: PopAdLdVar
  loc_B414AE: FLdRfVar var_B4
  loc_B414B1: FMemLdPr
  loc_B414B6:  = Me.Fields
  loc_B414BB: FLdPr var_B4
  loc_B414BE: from_stack_2 = Me.Item(from_stack_1)
  loc_B414C3: FLdPr var_C8
  loc_B414C6:  = Me.Value
  loc_B414CB: FLdRfVar var_D8
  loc_B414CE: CStrVarTmp
  loc_B414CF: FStStrNoPop var_90
  loc_B414D2: ILdPr
  loc_B414D5: Call tblimputacion.DeveImpuPut(from_stack_1v)
  loc_B414DA: FFree1Str var_90
  loc_B414DD: FFreeAd var_B4 = ""
  loc_B414E4: FFree1Var var_D8 = ""
  loc_B414E7: FLdRfVar var_D8
  loc_B414EA: FLdRfVar var_C8
  loc_B414ED: LitVarStr var_C4, "MapaImpu"
  loc_B414F2: PopAdLdVar
  loc_B414F3: FLdRfVar var_B4
  loc_B414F6: FMemLdPr
  loc_B414FB:  = Me.Fields
  loc_B41500: FLdPr var_B4
  loc_B41503: from_stack_2 = Me.Item(from_stack_1)
  loc_B41508: FLdPr var_C8
  loc_B4150B:  = Me.Value
  loc_B41510: FLdRfVar var_D8
  loc_B41513: CStrVarTmp
  loc_B41514: FStStrNoPop var_90
  loc_B41517: ILdPr
  loc_B4151A: Call tblimputacion.MapaImpuPut(from_stack_1v)
  loc_B4151F: FFree1Str var_90
  loc_B41522: FFreeAd var_B4 = ""
  loc_B41529: FFree1Var var_D8 = ""
  loc_B4152C: FLdRfVar var_D8
  loc_B4152F: FLdRfVar var_C8
  loc_B41532: LitVarStr var_C4, "PagaImpu"
  loc_B41537: PopAdLdVar
  loc_B41538: FLdRfVar var_B4
  loc_B4153B: FMemLdPr
  loc_B41540:  = Me.Fields
  loc_B41545: FLdPr var_B4
  loc_B41548: from_stack_2 = Me.Item(from_stack_1)
  loc_B4154D: FLdPr var_C8
  loc_B41550:  = Me.Value
  loc_B41555: FLdRfVar var_D8
  loc_B41558: CStrVarTmp
  loc_B41559: FStStrNoPop var_90
  loc_B4155C: ILdPr
  loc_B4155F: Call tblimputacion.PagaImpuPut(from_stack_1v)
  loc_B41564: FFree1Str var_90
  loc_B41567: FFreeAd var_B4 = ""
  loc_B4156E: FFree1Var var_D8 = ""
  loc_B41571: FLdRfVar var_D8
  loc_B41574: FLdRfVar var_C8
  loc_B41577: LitVarStr var_C4, "DetaImpu"
  loc_B4157C: PopAdLdVar
  loc_B4157D: FLdRfVar var_B4
  loc_B41580: FMemLdPr
  loc_B41585:  = Me.Fields
  loc_B4158A: FLdPr var_B4
  loc_B4158D: from_stack_2 = Me.Item(from_stack_1)
  loc_B41592: FLdPr var_C8
  loc_B41595:  = Me.Value
  loc_B4159A: FLdRfVar var_D8
  loc_B4159D: CStrVarTmp
  loc_B4159E: FStStrNoPop var_90
  loc_B415A1: ILdPr
  loc_B415A4: Call tblimputacion.DetaImpuPut(from_stack_1v)
  loc_B415A9: FFree1Str var_90
  loc_B415AC: FFreeAd var_B4 = ""
  loc_B415B3: FFree1Var var_D8 = ""
  loc_B415B6: FLdRfVar var_D8
  loc_B415B9: FLdRfVar var_C8
  loc_B415BC: LitVarStr var_C4, "CucuPers"
  loc_B415C1: PopAdLdVar
  loc_B415C2: FLdRfVar var_B4
  loc_B415C5: FMemLdPr
  loc_B415CA:  = Me.Fields
  loc_B415CF: FLdPr var_B4
  loc_B415D2: from_stack_2 = Me.Item(from_stack_1)
  loc_B415D7: FLdPr var_C8
  loc_B415DA:  = Me.Value
  loc_B415DF: FLdRfVar var_D8
  loc_B415E2: CStrVarTmp
  loc_B415E3: FStStrNoPop var_90
  loc_B415E6: ILdPr
  loc_B415E9: Call tblimputacion.CucuPersPut(from_stack_1v)
  loc_B415EE: FFree1Str var_90
  loc_B415F1: FFreeAd var_B4 = ""
  loc_B415F8: FFree1Var var_D8 = ""
  loc_B415FB: FLdRfVar var_D8
  loc_B415FE: FLdRfVar var_C8
  loc_B41601: LitVarStr var_C4, "AltaUsua"
  loc_B41606: PopAdLdVar
  loc_B41607: FLdRfVar var_B4
  loc_B4160A: FMemLdPr
  loc_B4160F:  = Me.Fields
  loc_B41614: FLdPr var_B4
  loc_B41617: from_stack_2 = Me.Item(from_stack_1)
  loc_B4161C: FLdPr var_C8
  loc_B4161F:  = Me.Value
  loc_B41624: FLdRfVar var_D8
  loc_B41627: CStrVarTmp
  loc_B41628: FStStrNoPop var_90
  loc_B4162B: ILdPr
  loc_B4162E: Call tblimputacion.AltaUsuaPut(from_stack_1v)
  loc_B41633: FFree1Str var_90
  loc_B41636: FFreeAd var_B4 = ""
  loc_B4163D: FFree1Var var_D8 = ""
  loc_B41640: FLdRfVar var_D8
  loc_B41643: FLdRfVar var_C8
  loc_B41646: LitVarStr var_C4, "CodiNope"
  loc_B4164B: PopAdLdVar
  loc_B4164C: FLdRfVar var_B4
  loc_B4164F: FMemLdPr
  loc_B41654:  = Me.Fields
  loc_B41659: FLdPr var_B4
  loc_B4165C: from_stack_2 = Me.Item(from_stack_1)
  loc_B41661: FLdPr var_C8
  loc_B41664:  = Me.Value
  loc_B41669: FLdRfVar var_D8
  loc_B4166C: CStrVarTmp
  loc_B4166D: FStStrNoPop var_90
  loc_B41670: ILdPr
  loc_B41673: Call tblimputacion.CodiNopePut(from_stack_1v)
  loc_B41678: FFree1Str var_90
  loc_B4167B: FFreeAd var_B4 = ""
  loc_B41682: FFree1Var var_D8 = ""
  loc_B41685: FLdRfVar var_D8
  loc_B41688: FLdRfVar var_C8
  loc_B4168B: LitVarStr var_C4, "Item"
  loc_B41690: PopAdLdVar
  loc_B41691: FLdRfVar var_B4
  loc_B41694: FMemLdPr
  loc_B41699:  = Me.Fields
  loc_B4169E: FLdPr var_B4
  loc_B416A1: from_stack_2 = Me.Item(from_stack_1)
  loc_B416A6: FLdPr var_C8
  loc_B416A9:  = Me.Value
  loc_B416AE: FLdRfVar var_D8
  loc_B416B1: CStrVarTmp
  loc_B416B2: FStStrNoPop var_90
  loc_B416B5: ILdPr
  loc_B416B8: Call tblimputacion.ItemPut(from_stack_1v)
  loc_B416BD: FFree1Str var_90
  loc_B416C0: FFreeAd var_B4 = ""
  loc_B416C7: FFree1Var var_D8 = ""
  loc_B416CA: FLdRfVar var_D8
  loc_B416CD: FLdRfVar var_C8
  loc_B416D0: LitVarStr var_C4, "Altern"
  loc_B416D5: PopAdLdVar
  loc_B416D6: FLdRfVar var_B4
  loc_B416D9: FMemLdPr
  loc_B416DE:  = Me.Fields
  loc_B416E3: FLdPr var_B4
  loc_B416E6: from_stack_2 = Me.Item(from_stack_1)
  loc_B416EB: FLdPr var_C8
  loc_B416EE:  = Me.Value
  loc_B416F3: FLdRfVar var_D8
  loc_B416F6: CStrVarTmp
  loc_B416F7: FStStrNoPop var_90
  loc_B416FA: ILdPr
  loc_B416FD: Call tblimputacion.AlternPut(from_stack_1v)
  loc_B41702: FFree1Str var_90
  loc_B41705: FFreeAd var_B4 = ""
  loc_B4170C: FFree1Var var_D8 = ""
  loc_B4170F: FLdRfVar var_D8
  loc_B41712: FLdRfVar var_C8
  loc_B41715: LitVarStr var_C4, "CodiOrco"
  loc_B4171A: PopAdLdVar
  loc_B4171B: FLdRfVar var_B4
  loc_B4171E: FMemLdPr
  loc_B41723:  = Me.Fields
  loc_B41728: FLdPr var_B4
  loc_B4172B: from_stack_2 = Me.Item(from_stack_1)
  loc_B41730: FLdPr var_C8
  loc_B41733:  = Me.Value
  loc_B41738: FLdRfVar var_D8
  loc_B4173B: CStrVarTmp
  loc_B4173C: FStStrNoPop var_90
  loc_B4173F: ILdPr
  loc_B41742: Call tblimputacion.CodiOrcoPut(from_stack_1v)
  loc_B41747: FFree1Str var_90
  loc_B4174A: FFreeAd var_B4 = ""
  loc_B41751: FFree1Var var_D8 = ""
  loc_B41754: FLdRfVar var_D8
  loc_B41757: FLdRfVar var_C8
  loc_B4175A: LitVarStr var_C4, "ReapDefi"
  loc_B4175F: PopAdLdVar
  loc_B41760: FLdRfVar var_B4
  loc_B41763: FMemLdPr
  loc_B41768:  = Me.Fields
  loc_B4176D: FLdPr var_B4
  loc_B41770: from_stack_2 = Me.Item(from_stack_1)
  loc_B41775: FLdPr var_C8
  loc_B41778:  = Me.Value
  loc_B4177D: FLdRfVar var_D8
  loc_B41780: CStrVarTmp
  loc_B41781: FStStrNoPop var_90
  loc_B41784: ILdPr
  loc_B41787: Call tblimputacion.ReapDefiPut(from_stack_1v)
  loc_B4178C: FFree1Str var_90
  loc_B4178F: FFreeAd var_B4 = ""
  loc_B41796: FFree1Var var_D8 = ""
  loc_B41799: FLdRfVar var_D8
  loc_B4179C: FLdRfVar var_C8
  loc_B4179F: LitVarStr var_C4, "CodiRece"
  loc_B417A4: PopAdLdVar
  loc_B417A5: FLdRfVar var_B4
  loc_B417A8: FMemLdPr
  loc_B417AD:  = Me.Fields
  loc_B417B2: FLdPr var_B4
  loc_B417B5: from_stack_2 = Me.Item(from_stack_1)
  loc_B417BA: FLdPr var_C8
  loc_B417BD:  = Me.Value
  loc_B417C2: FLdRfVar var_D8
  loc_B417C5: CStrVarTmp
  loc_B417C6: FStStrNoPop var_90
  loc_B417C9: ILdPr
  loc_B417CC: Call tblimputacion.CodiRecePut(from_stack_1v)
  loc_B417D1: FFree1Str var_90
  loc_B417D4: FFreeAd var_B4 = ""
  loc_B417DB: FFree1Var var_D8 = ""
  loc_B417DE: FLdRfVar var_D8
  loc_B417E1: FLdRfVar var_C8
  loc_B417E4: LitVarStr var_C4, "TifaDeve"
  loc_B417E9: PopAdLdVar
  loc_B417EA: FLdRfVar var_B4
  loc_B417ED: FMemLdPr
  loc_B417F2:  = Me.Fields
  loc_B417F7: FLdPr var_B4
  loc_B417FA: from_stack_2 = Me.Item(from_stack_1)
  loc_B417FF: FLdPr var_C8
  loc_B41802:  = Me.Value
  loc_B41807: FLdRfVar var_D8
  loc_B4180A: CStrVarTmp
  loc_B4180B: FStStrNoPop var_90
  loc_B4180E: ILdPr
  loc_B41811: Call tblimputacion.TifaDevePut(from_stack_1v)
  loc_B41816: FFree1Str var_90
  loc_B41819: FFreeAd var_B4 = ""
  loc_B41820: FFree1Var var_D8 = ""
  loc_B41823: FLdRfVar var_D8
  loc_B41826: FLdRfVar var_C8
  loc_B41829: LitVarStr var_C4, "SufaDeve"
  loc_B4182E: PopAdLdVar
  loc_B4182F: FLdRfVar var_B4
  loc_B41832: FMemLdPr
  loc_B41837:  = Me.Fields
  loc_B4183C: FLdPr var_B4
  loc_B4183F: from_stack_2 = Me.Item(from_stack_1)
  loc_B41844: FLdPr var_C8
  loc_B41847:  = Me.Value
  loc_B4184C: FLdRfVar var_D8
  loc_B4184F: CStrVarTmp
  loc_B41850: FStStrNoPop var_90
  loc_B41853: ILdPr
  loc_B41856: Call tblimputacion.SufaDevePut(from_stack_1v)
  loc_B4185B: FFree1Str var_90
  loc_B4185E: FFreeAd var_B4 = ""
  loc_B41865: FFree1Var var_D8 = ""
  loc_B41868: FLdRfVar var_D8
  loc_B4186B: FLdRfVar var_C8
  loc_B4186E: LitVarStr var_C4, "NufaDeve"
  loc_B41873: PopAdLdVar
  loc_B41874: FLdRfVar var_B4
  loc_B41877: FMemLdPr
  loc_B4187C:  = Me.Fields
  loc_B41881: FLdPr var_B4
  loc_B41884: from_stack_2 = Me.Item(from_stack_1)
  loc_B41889: FLdPr var_C8
  loc_B4188C:  = Me.Value
  loc_B41891: FLdRfVar var_D8
  loc_B41894: CStrVarTmp
  loc_B41895: FStStrNoPop var_90
  loc_B41898: ILdPr
  loc_B4189B: Call tblimputacion.NufaDevePut(from_stack_1v)
  loc_B418A0: FFree1Str var_90
  loc_B418A3: FFreeAd var_B4 = ""
  loc_B418AA: FFree1Var var_D8 = ""
  loc_B418AD: FLdRfVar var_D8
  loc_B418B0: FLdRfVar var_C8
  loc_B418B3: LitVarStr var_C4, "NumeFact"
  loc_B418B8: PopAdLdVar
  loc_B418B9: FLdRfVar var_B4
  loc_B418BC: FMemLdPr
  loc_B418C1:  = Me.Fields
  loc_B418C6: FLdPr var_B4
  loc_B418C9: from_stack_2 = Me.Item(from_stack_1)
  loc_B418CE: FLdPr var_C8
  loc_B418D1:  = Me.Value
  loc_B418D6: FLdRfVar var_D8
  loc_B418D9: CStrVarTmp
  loc_B418DA: FStStrNoPop var_90
  loc_B418DD: ILdPr
  loc_B418E0: Call tblimputacion.NumeFactPut(from_stack_1v)
  loc_B418E5: FFree1Str var_90
  loc_B418E8: FFreeAd var_B4 = ""
  loc_B418EF: FFree1Var var_D8 = ""
  loc_B418F2: Branch loc_B41A70
  loc_B418F5: LitStr "La Imputación NO EXISTE. Verifique..."
  loc_B418F8: ILdPr
  loc_B418FB: Call tblimputacion.MsgErrorPut(from_stack_1v)
  loc_B41900: LitStr vbNullString
  loc_B41903: ILdPr
  loc_B41906: Call tblimputacion.PeriInfoPut(from_stack_1v)
  loc_B4190B: LitStr vbNullString
  loc_B4190E: ILdPr
  loc_B41911: Call tblimputacion.IdImpuPut(from_stack_1v)
  loc_B41916: LitStr vbNullString
  loc_B41919: ILdPr
  loc_B4191C: Call tblimputacion.CodiPartPut(from_stack_1v)
  loc_B41921: LitStr vbNullString
  loc_B41924: ILdPr
  loc_B41927: Call tblimputacion.CodiOrgaPut(from_stack_1v)
  loc_B4192C: LitStr vbNullString
  loc_B4192F: ILdPr
  loc_B41932: Call tblimputacion.CodiUngaPut(from_stack_1v)
  loc_B41937: LitStr vbNullString
  loc_B4193A: ILdPr
  loc_B4193D: Call tblimputacion.NumeImpuPut(from_stack_1v)
  loc_B41942: LitStr vbNullString
  loc_B41945: ILdPr
  loc_B41948: Call tblimputacion.CodiInsuPut(from_stack_1v)
  loc_B4194D: LitStr vbNullString
  loc_B41950: ILdPr
  loc_B41953: Call tblimputacion.CodiFifuPut(from_stack_1v)
  loc_B41958: LitStr vbNullString
  loc_B4195B: ILdPr
  loc_B4195E: Call tblimputacion.FechImpuPut(from_stack_1v)
  loc_B41963: LitStr vbNullString
  loc_B41966: ILdPr
  loc_B41969: Call tblimputacion.ExorImpuPut(from_stack_1v)
  loc_B4196E: LitStr vbNullString
  loc_B41971: ILdPr
  loc_B41974: Call tblimputacion.ExpeImpuPut(from_stack_1v)
  loc_B41979: LitStr vbNullString
  loc_B4197C: ILdPr
  loc_B4197F: Call tblimputacion.CantImpuPut(from_stack_1v)
  loc_B41984: LitStr vbNullString
  loc_B41987: ILdPr
  loc_B4198A: Call tblimputacion.ImunImpuPut(from_stack_1v)
  loc_B4198F: LitStr vbNullString
  loc_B41992: ILdPr
  loc_B41995: Call tblimputacion.PrevImpuPut(from_stack_1v)
  loc_B4199A: LitStr vbNullString
  loc_B4199D: ILdPr
  loc_B419A0: Call tblimputacion.DefiImpuPut(from_stack_1v)
  loc_B419A5: LitStr vbNullString
  loc_B419A8: ILdPr
  loc_B419AB: Call tblimputacion.DeveImpuPut(from_stack_1v)
  loc_B419B0: LitStr vbNullString
  loc_B419B3: ILdPr
  loc_B419B6: Call tblimputacion.MapaImpuPut(from_stack_1v)
  loc_B419BB: LitStr vbNullString
  loc_B419BE: ILdPr
  loc_B419C1: Call tblimputacion.PagaImpuPut(from_stack_1v)
  loc_B419C6: LitStr vbNullString
  loc_B419C9: ILdPr
  loc_B419CC: Call tblimputacion.SaldImpuPut(from_stack_1v)
  loc_B419D1: LitStr vbNullString
  loc_B419D4: ILdPr
  loc_B419D7: Call tblimputacion.SaldDevePut(from_stack_1v)
  loc_B419DC: LitStr vbNullString
  loc_B419DF: ILdPr
  loc_B419E2: Call tblimputacion.DetaImpuPut(from_stack_1v)
  loc_B419E7: LitStr vbNullString
  loc_B419EA: ILdPr
  loc_B419ED: Call tblimputacion.CucuPersPut(from_stack_1v)
  loc_B419F2: LitStr vbNullString
  loc_B419F5: ILdPr
  loc_B419F8: Call tblimputacion.AltaUsuaPut(from_stack_1v)
  loc_B419FD: LitStr vbNullString
  loc_B41A00: ILdPr
  loc_B41A03: Call tblimputacion.CodiNopePut(from_stack_1v)
  loc_B41A08: LitStr vbNullString
  loc_B41A0B: ILdPr
  loc_B41A0E: Call tblimputacion.ItemPut(from_stack_1v)
  loc_B41A13: LitStr vbNullString
  loc_B41A16: ILdPr
  loc_B41A19: Call tblimputacion.AlternPut(from_stack_1v)
  loc_B41A1E: LitStr vbNullString
  loc_B41A21: ILdPr
  loc_B41A24: Call tblimputacion.CodiOrcoPut(from_stack_1v)
  loc_B41A29: LitStr vbNullString
  loc_B41A2C: ILdPr
  loc_B41A2F: Call tblimputacion.ReapDefiPut(from_stack_1v)
  loc_B41A34: LitStr vbNullString
  loc_B41A37: ILdPr
  loc_B41A3A: Call tblimputacion.CodiRecePut(from_stack_1v)
  loc_B41A3F: LitStr vbNullString
  loc_B41A42: ILdPr
  loc_B41A45: Call tblimputacion.TifaDevePut(from_stack_1v)
  loc_B41A4A: LitStr vbNullString
  loc_B41A4D: ILdPr
  loc_B41A50: Call tblimputacion.SufaDevePut(from_stack_1v)
  loc_B41A55: LitStr vbNullString
  loc_B41A58: ILdPr
  loc_B41A5B: Call tblimputacion.NufaDevePut(from_stack_1v)
  loc_B41A60: LitStr vbNullString
  loc_B41A63: ILdPr
  loc_B41A66: Call tblimputacion.NumeFactPut(from_stack_1v)
  loc_B41A6B: LitI2_Byte 0
  loc_B41A6D: FStI2 var_86
  loc_B41A70: ExitProcI2
End Function

Private Function Proc_259_15_A9A814(arg_C) 'A9A814
  'Data Table: 4569C4
  loc_A9A378: ILdRf arg_C
  loc_A9A37B: FStStrCopy var_8C
  loc_A9A37E: LitStr "SELECT *"
  loc_A9A381: LitStr " FROM infogov.insumo"
  loc_A9A384: ConcatStr
  loc_A9A385: FStStrNoPop var_90
  loc_A9A388: LitStr " WHERE CodiInsu = '"
  loc_A9A38B: ConcatStr
  loc_A9A38C: FStStrNoPop var_94
  loc_A9A38F: ILdRf var_8C
  loc_A9A392: ConcatStr
  loc_A9A393: FStStrNoPop var_98
  loc_A9A396: LitStr "'"
  loc_A9A399: ConcatStr
  loc_A9A39A: FStStrNoPop var_9C
  loc_A9A39D: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_A9A3A2: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_A9A3AD: FLdRfVar var_A0
  loc_A9A3B0: FMemLdPr
  loc_A9A3B5:  = Me.RecordCount
  loc_A9A3BA: ILdRf var_A0
  loc_A9A3BD: LitI4 0
  loc_A9A3C2: GtI4
  loc_A9A3C3: BranchF loc_A9A793
  loc_A9A3C6: LitStr vbNullString
  loc_A9A3C9: ILdPr
  loc_A9A3CC: Call tblinsumo.MsgErrorPut(from_stack_1v)
  loc_A9A3D1: FLdRfVar var_C8
  loc_A9A3D4: FLdRfVar var_B8
  loc_A9A3D7: LitVarStr var_B4, "CodiInsu"
  loc_A9A3DC: PopAdLdVar
  loc_A9A3DD: FLdRfVar var_A4
  loc_A9A3E0: FMemLdPr
  loc_A9A3E5:  = Me.Fields
  loc_A9A3EA: FLdPr var_A4
  loc_A9A3ED: from_stack_2 = Me.Item(from_stack_1)
  loc_A9A3F2: FLdPr var_B8
  loc_A9A3F5:  = Me.Value
  loc_A9A3FA: FLdRfVar var_C8
  loc_A9A3FD: CStrVarTmp
  loc_A9A3FE: FStStrNoPop var_90
  loc_A9A401: ILdPr
  loc_A9A404: Call tblinsumo.CodiInsuPut(from_stack_1v)
  loc_A9A409: FFree1Str var_90
  loc_A9A40C: FFreeAd var_A4 = ""
  loc_A9A413: FFree1Var var_C8 = ""
  loc_A9A416: FLdRfVar var_C8
  loc_A9A419: FLdRfVar var_B8
  loc_A9A41C: LitVarStr var_B4, "DetaInsu"
  loc_A9A421: PopAdLdVar
  loc_A9A422: FLdRfVar var_A4
  loc_A9A425: FMemLdPr
  loc_A9A42A:  = Me.Fields
  loc_A9A42F: FLdPr var_A4
  loc_A9A432: from_stack_2 = Me.Item(from_stack_1)
  loc_A9A437: FLdPr var_B8
  loc_A9A43A:  = Me.Value
  loc_A9A43F: FLdRfVar var_C8
  loc_A9A442: CStrVarTmp
  loc_A9A443: FStStrNoPop var_90
  loc_A9A446: ILdPr
  loc_A9A449: Call tblinsumo.DetaInsuPut(from_stack_1v)
  loc_A9A44E: FFree1Str var_90
  loc_A9A451: FFreeAd var_A4 = ""
  loc_A9A458: FFree1Var var_C8 = ""
  loc_A9A45B: FLdRfVar var_C8
  loc_A9A45E: FLdRfVar var_B8
  loc_A9A461: LitVarStr var_B4, "UlprInsu"
  loc_A9A466: PopAdLdVar
  loc_A9A467: FLdRfVar var_A4
  loc_A9A46A: FMemLdPr
  loc_A9A46F:  = Me.Fields
  loc_A9A474: FLdPr var_A4
  loc_A9A477: from_stack_2 = Me.Item(from_stack_1)
  loc_A9A47C: FLdPr var_B8
  loc_A9A47F:  = Me.Value
  loc_A9A484: FLdRfVar var_C8
  loc_A9A487: CStrVarTmp
  loc_A9A488: FStStrNoPop var_90
  loc_A9A48B: ILdPr
  loc_A9A48E: Call tblinsumo.UlprInsuPut(from_stack_1v)
  loc_A9A493: FFree1Str var_90
  loc_A9A496: FFreeAd var_A4 = ""
  loc_A9A49D: FFree1Var var_C8 = ""
  loc_A9A4A0: FLdRfVar var_C8
  loc_A9A4A3: FLdRfVar var_B8
  loc_A9A4A6: LitVarStr var_B4, "AltaUsua"
  loc_A9A4AB: PopAdLdVar
  loc_A9A4AC: FLdRfVar var_A4
  loc_A9A4AF: FMemLdPr
  loc_A9A4B4:  = Me.Fields
  loc_A9A4B9: FLdPr var_A4
  loc_A9A4BC: from_stack_2 = Me.Item(from_stack_1)
  loc_A9A4C1: FLdPr var_B8
  loc_A9A4C4:  = Me.Value
  loc_A9A4C9: FLdRfVar var_C8
  loc_A9A4CC: CStrVarTmp
  loc_A9A4CD: FStStrNoPop var_90
  loc_A9A4D0: ILdPr
  loc_A9A4D3: Call tblinsumo.AltaUsuaPut(from_stack_1v)
  loc_A9A4D8: FFree1Str var_90
  loc_A9A4DB: FFreeAd var_A4 = ""
  loc_A9A4E2: FFree1Var var_C8 = ""
  loc_A9A4E5: FLdRfVar var_C8
  loc_A9A4E8: FLdRfVar var_B8
  loc_A9A4EB: LitVarStr var_B4, "AltaFeho"
  loc_A9A4F0: PopAdLdVar
  loc_A9A4F1: FLdRfVar var_A4
  loc_A9A4F4: FMemLdPr
  loc_A9A4F9:  = Me.Fields
  loc_A9A4FE: FLdPr var_A4
  loc_A9A501: from_stack_2 = Me.Item(from_stack_1)
  loc_A9A506: FLdPr var_B8
  loc_A9A509:  = Me.Value
  loc_A9A50E: FLdRfVar var_100
  loc_A9A511: LitVarStr var_FC, "AltaFeho"
  loc_A9A516: PopAdLdVar
  loc_A9A517: FLdRfVar var_EC
  loc_A9A51A: FMemLdPr
  loc_A9A51F:  = Me.Fields
  loc_A9A524: FLdPr var_EC
  loc_A9A527: from_stack_2 = Me.Item(from_stack_1)
  loc_A9A52C: LitVarStr var_130, vbNullString
  loc_A9A531: FStVarCopyObj var_140
  loc_A9A534: FLdRfVar var_140
  loc_A9A537: FLdZeroAd var_100
  loc_A9A53A: CVarAd
  loc_A9A53E: FLdRfVar var_C8
  loc_A9A541: LitVarStr var_D8, vbNullString
  loc_A9A546: HardType
  loc_A9A547: NeVar var_E8
  loc_A9A54B: FStVar var_110
  loc_A9A54F: FLdRfVar var_110
  loc_A9A552: FLdRfVar var_150
  loc_A9A555: ImpAdCallFPR4  = IIf(, , )
  loc_A9A55A: FLdRfVar var_150
  loc_A9A55D: CStrVarVal var_90
  loc_A9A561: ILdPr
  loc_A9A564: Call tblinsumo.AltaFehoPut(from_stack_1v)
  loc_A9A569: FFree1Str var_90
  loc_A9A56C: FFreeAd var_A4 = "": var_B8 = ""
  loc_A9A575: FFreeVar var_C8 = "": var_110 = "": var_120 = "": var_140 = ""
  loc_A9A582: FLdRfVar var_C8
  loc_A9A585: FLdRfVar var_B8
  loc_A9A588: LitVarStr var_B4, "ModiUsua"
  loc_A9A58D: PopAdLdVar
  loc_A9A58E: FLdRfVar var_A4
  loc_A9A591: FMemLdPr
  loc_A9A596:  = Me.Fields
  loc_A9A59B: FLdPr var_A4
  loc_A9A59E: from_stack_2 = Me.Item(from_stack_1)
  loc_A9A5A3: FLdPr var_B8
  loc_A9A5A6:  = Me.Value
  loc_A9A5AB: FLdRfVar var_C8
  loc_A9A5AE: CStrVarTmp
  loc_A9A5AF: FStStrNoPop var_90
  loc_A9A5B2: ILdPr
  loc_A9A5B5: Call tblinsumo.ModiUsuaPut(from_stack_1v)
  loc_A9A5BA: FFree1Str var_90
  loc_A9A5BD: FFreeAd var_A4 = ""
  loc_A9A5C4: FFree1Var var_C8 = ""
  loc_A9A5C7: FLdRfVar var_C8
  loc_A9A5CA: FLdRfVar var_B8
  loc_A9A5CD: LitVarStr var_B4, "ModiFeho"
  loc_A9A5D2: PopAdLdVar
  loc_A9A5D3: FLdRfVar var_A4
  loc_A9A5D6: FMemLdPr
  loc_A9A5DB:  = Me.Fields
  loc_A9A5E0: FLdPr var_A4
  loc_A9A5E3: from_stack_2 = Me.Item(from_stack_1)
  loc_A9A5E8: FLdPr var_B8
  loc_A9A5EB:  = Me.Value
  loc_A9A5F0: FLdRfVar var_100
  loc_A9A5F3: LitVarStr var_FC, "ModiFeho"
  loc_A9A5F8: PopAdLdVar
  loc_A9A5F9: FLdRfVar var_EC
  loc_A9A5FC: FMemLdPr
  loc_A9A601:  = Me.Fields
  loc_A9A606: FLdPr var_EC
  loc_A9A609: from_stack_2 = Me.Item(from_stack_1)
  loc_A9A60E: LitVarStr var_130, vbNullString
  loc_A9A613: FStVarCopyObj var_140
  loc_A9A616: FLdRfVar var_140
  loc_A9A619: FLdZeroAd var_100
  loc_A9A61C: CVarAd
  loc_A9A620: FLdRfVar var_C8
  loc_A9A623: LitVarStr var_D8, vbNullString
  loc_A9A628: HardType
  loc_A9A629: NeVar var_E8
  loc_A9A62D: FStVar var_110
  loc_A9A631: FLdRfVar var_110
  loc_A9A634: FLdRfVar var_150
  loc_A9A637: ImpAdCallFPR4  = IIf(, , )
  loc_A9A63C: FLdRfVar var_150
  loc_A9A63F: CStrVarVal var_90
  loc_A9A643: ILdPr
  loc_A9A646: Call tblinsumo.ModiFehoPut(from_stack_1v)
  loc_A9A64B: FFree1Str var_90
  loc_A9A64E: FFreeAd var_A4 = "": var_B8 = ""
  loc_A9A657: FFreeVar var_C8 = "": var_110 = "": var_120 = "": var_140 = ""
  loc_A9A664: FLdRfVar var_C8
  loc_A9A667: FLdRfVar var_B8
  loc_A9A66A: LitVarStr var_B4, "BajaUsua"
  loc_A9A66F: PopAdLdVar
  loc_A9A670: FLdRfVar var_A4
  loc_A9A673: FMemLdPr
  loc_A9A678:  = Me.Fields
  loc_A9A67D: FLdPr var_A4
  loc_A9A680: from_stack_2 = Me.Item(from_stack_1)
  loc_A9A685: FLdPr var_B8
  loc_A9A688:  = Me.Value
  loc_A9A68D: FLdRfVar var_C8
  loc_A9A690: CStrVarTmp
  loc_A9A691: FStStrNoPop var_90
  loc_A9A694: ILdPr
  loc_A9A697: Call tblinsumo.BajaUsuaPut(from_stack_1v)
  loc_A9A69C: FFree1Str var_90
  loc_A9A69F: FFreeAd var_A4 = ""
  loc_A9A6A6: FFree1Var var_C8 = ""
  loc_A9A6A9: FLdRfVar var_C8
  loc_A9A6AC: FLdRfVar var_B8
  loc_A9A6AF: LitVarStr var_B4, "BajaFeho"
  loc_A9A6B4: PopAdLdVar
  loc_A9A6B5: FLdRfVar var_A4
  loc_A9A6B8: FMemLdPr
  loc_A9A6BD:  = Me.Fields
  loc_A9A6C2: FLdPr var_A4
  loc_A9A6C5: from_stack_2 = Me.Item(from_stack_1)
  loc_A9A6CA: FLdPr var_B8
  loc_A9A6CD:  = Me.Value
  loc_A9A6D2: FLdRfVar var_100
  loc_A9A6D5: LitVarStr var_FC, "BajaFeho"
  loc_A9A6DA: PopAdLdVar
  loc_A9A6DB: FLdRfVar var_EC
  loc_A9A6DE: FMemLdPr
  loc_A9A6E3:  = Me.Fields
  loc_A9A6E8: FLdPr var_EC
  loc_A9A6EB: from_stack_2 = Me.Item(from_stack_1)
  loc_A9A6F0: LitVarStr var_130, vbNullString
  loc_A9A6F5: FStVarCopyObj var_140
  loc_A9A6F8: FLdRfVar var_140
  loc_A9A6FB: FLdZeroAd var_100
  loc_A9A6FE: CVarAd
  loc_A9A702: FLdRfVar var_C8
  loc_A9A705: LitVarStr var_D8, vbNullString
  loc_A9A70A: HardType
  loc_A9A70B: NeVar var_E8
  loc_A9A70F: FStVar var_110
  loc_A9A713: FLdRfVar var_110
  loc_A9A716: FLdRfVar var_150
  loc_A9A719: ImpAdCallFPR4  = IIf(, , )
  loc_A9A71E: FLdRfVar var_150
  loc_A9A721: CStrVarVal var_90
  loc_A9A725: ILdPr
  loc_A9A728: Call tblinsumo.BajaFehoPut(from_stack_1v)
  loc_A9A72D: FFree1Str var_90
  loc_A9A730: FFreeAd var_A4 = "": var_B8 = ""
  loc_A9A739: FFreeVar var_C8 = "": var_110 = "": var_120 = "": var_140 = ""
  loc_A9A746: FLdRfVar var_C8
  loc_A9A749: FLdRfVar var_B8
  loc_A9A74C: LitVarStr var_B4, "BajaMoti"
  loc_A9A751: PopAdLdVar
  loc_A9A752: FLdRfVar var_A4
  loc_A9A755: FMemLdPr
  loc_A9A75A:  = Me.Fields
  loc_A9A75F: FLdPr var_A4
  loc_A9A762: from_stack_2 = Me.Item(from_stack_1)
  loc_A9A767: FLdPr var_B8
  loc_A9A76A:  = Me.Value
  loc_A9A76F: FLdRfVar var_C8
  loc_A9A772: CStrVarTmp
  loc_A9A773: FStStrNoPop var_90
  loc_A9A776: ILdPr
  loc_A9A779: Call tblinsumo.BajaMotiPut(from_stack_1v)
  loc_A9A77E: FFree1Str var_90
  loc_A9A781: FFreeAd var_A4 = ""
  loc_A9A788: FFree1Var var_C8 = ""
  loc_A9A78B: LitI2_Byte &HFF
  loc_A9A78D: FStI2 var_86
  loc_A9A790: Branch loc_A9A811
  loc_A9A793: LitStr "El Insumo NO EXISTE. Verifique..."
  loc_A9A796: ILdPr
  loc_A9A799: Call tblinsumo.MsgErrorPut(from_stack_1v)
  loc_A9A79E: LitStr vbNullString
  loc_A9A7A1: ILdPr
  loc_A9A7A4: Call tblinsumo.CodiInsuPut(from_stack_1v)
  loc_A9A7A9: LitStr vbNullString
  loc_A9A7AC: ILdPr
  loc_A9A7AF: Call tblinsumo.DetaInsuPut(from_stack_1v)
  loc_A9A7B4: LitStr vbNullString
  loc_A9A7B7: ILdPr
  loc_A9A7BA: Call tblinsumo.UlprInsuPut(from_stack_1v)
  loc_A9A7BF: LitStr vbNullString
  loc_A9A7C2: ILdPr
  loc_A9A7C5: Call tblinsumo.AltaUsuaPut(from_stack_1v)
  loc_A9A7CA: LitStr vbNullString
  loc_A9A7CD: ILdPr
  loc_A9A7D0: Call tblinsumo.AltaFehoPut(from_stack_1v)
  loc_A9A7D5: LitStr vbNullString
  loc_A9A7D8: ILdPr
  loc_A9A7DB: Call tblinsumo.ModiUsuaPut(from_stack_1v)
  loc_A9A7E0: LitStr vbNullString
  loc_A9A7E3: ILdPr
  loc_A9A7E6: Call tblinsumo.ModiFehoPut(from_stack_1v)
  loc_A9A7EB: LitStr vbNullString
  loc_A9A7EE: ILdPr
  loc_A9A7F1: Call tblinsumo.BajaUsuaPut(from_stack_1v)
  loc_A9A7F6: LitStr vbNullString
  loc_A9A7F9: ILdPr
  loc_A9A7FC: Call tblinsumo.BajaFehoPut(from_stack_1v)
  loc_A9A801: LitStr vbNullString
  loc_A9A804: ILdPr
  loc_A9A807: Call tblinsumo.BajaMotiPut(from_stack_1v)
  loc_A9A80C: LitI2_Byte 0
  loc_A9A80E: FStI2 var_86
  loc_A9A811: ExitProcI2
End Function

Private Function Proc_259_16_A4B7C4(arg_C) 'A4B7C4
  'Data Table: 4569C4
  loc_A4B548: ILdRf arg_C
  loc_A4B54B: FStStrCopy var_8C
  loc_A4B54E: LitStr "SELECT *"
  loc_A4B551: LitStr " FROM infogov.menu"
  loc_A4B554: ConcatStr
  loc_A4B555: FStStrNoPop var_90
  loc_A4B558: LitStr " WHERE menu.CodiSist = "
  loc_A4B55B: ConcatStr
  loc_A4B55C: FStStrNoPop var_94
  loc_A4B55F: LitI2_Byte 1
  loc_A4B561: CStrI2
  loc_A4B563: FStStrNoPop var_98
  loc_A4B566: ConcatStr
  loc_A4B567: FStStrNoPop var_9C
  loc_A4B56A: LitStr " AND menu.FormMenu = '"
  loc_A4B56D: ConcatStr
  loc_A4B56E: FStStrNoPop var_A0
  loc_A4B571: ILdRf var_8C
  loc_A4B574: ConcatStr
  loc_A4B575: FStStrNoPop var_A4
  loc_A4B578: LitStr "'"
  loc_A4B57B: ConcatStr
  loc_A4B57C: FStStrNoPop var_A8
  loc_A4B57F: LitStr " AND menu.WforMenu = 0"
  loc_A4B582: ConcatStr
  loc_A4B583: FStStrNoPop var_AC
  loc_A4B586: LitStr " LIMIT 1;"
  loc_A4B589: ConcatStr
  loc_A4B58A: FStStrNoPop var_B0
  loc_A4B58D: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_A4B592: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A4B5A7: FLdRfVar var_B4
  loc_A4B5AA: FMemLdPr
  loc_A4B5AF:  = Me.RecordCount
  loc_A4B5B4: ILdRf var_B4
  loc_A4B5B7: LitI4 0
  loc_A4B5BC: GtI4
  loc_A4B5BD: BranchF loc_A4B771
  loc_A4B5C0: LitStr vbNullString
  loc_A4B5C3: ILdPr
  loc_A4B5C6: Call tblmenu.MsgErrorPut(from_stack_1v)
  loc_A4B5CB: FLdRfVar var_DC
  loc_A4B5CE: FLdRfVar var_CC
  loc_A4B5D1: LitVarStr var_C8, "CodiSist"
  loc_A4B5D6: PopAdLdVar
  loc_A4B5D7: FLdRfVar var_B8
  loc_A4B5DA: FMemLdPr
  loc_A4B5DF:  = Me.Fields
  loc_A4B5E4: FLdPr var_B8
  loc_A4B5E7: from_stack_2 = Me.Item(from_stack_1)
  loc_A4B5EC: FLdPr var_CC
  loc_A4B5EF:  = Me.Value
  loc_A4B5F4: FLdRfVar var_DC
  loc_A4B5F7: CStrVarTmp
  loc_A4B5F8: FStStrNoPop var_90
  loc_A4B5FB: ILdPr
  loc_A4B5FE: Call tblmenu.CodiSistPut(from_stack_1v)
  loc_A4B603: FFree1Str var_90
  loc_A4B606: FFreeAd var_B8 = ""
  loc_A4B60D: FFree1Var var_DC = ""
  loc_A4B610: FLdRfVar var_DC
  loc_A4B613: FLdRfVar var_CC
  loc_A4B616: LitVarStr var_C8, "CodiMenu"
  loc_A4B61B: PopAdLdVar
  loc_A4B61C: FLdRfVar var_B8
  loc_A4B61F: FMemLdPr
  loc_A4B624:  = Me.Fields
  loc_A4B629: FLdPr var_B8
  loc_A4B62C: from_stack_2 = Me.Item(from_stack_1)
  loc_A4B631: FLdPr var_CC
  loc_A4B634:  = Me.Value
  loc_A4B639: FLdRfVar var_DC
  loc_A4B63C: CStrVarTmp
  loc_A4B63D: FStStrNoPop var_90
  loc_A4B640: ILdPr
  loc_A4B643: Call tblmenu.CodiMenuPut(from_stack_1v)
  loc_A4B648: FFree1Str var_90
  loc_A4B64B: FFreeAd var_B8 = ""
  loc_A4B652: FFree1Var var_DC = ""
  loc_A4B655: FLdRfVar var_DC
  loc_A4B658: FLdRfVar var_CC
  loc_A4B65B: LitVarStr var_C8, "DetaMenu"
  loc_A4B660: PopAdLdVar
  loc_A4B661: FLdRfVar var_B8
  loc_A4B664: FMemLdPr
  loc_A4B669:  = Me.Fields
  loc_A4B66E: FLdPr var_B8
  loc_A4B671: from_stack_2 = Me.Item(from_stack_1)
  loc_A4B676: FLdPr var_CC
  loc_A4B679:  = Me.Value
  loc_A4B67E: FLdRfVar var_DC
  loc_A4B681: CStrVarTmp
  loc_A4B682: FStStrNoPop var_90
  loc_A4B685: ILdPr
  loc_A4B688: Call tblmenu.DetaMenuPut(from_stack_1v)
  loc_A4B68D: FFree1Str var_90
  loc_A4B690: FFreeAd var_B8 = ""
  loc_A4B697: FFree1Var var_DC = ""
  loc_A4B69A: FLdRfVar var_DC
  loc_A4B69D: FLdRfVar var_CC
  loc_A4B6A0: LitVarStr var_C8, "FormMenu"
  loc_A4B6A5: PopAdLdVar
  loc_A4B6A6: FLdRfVar var_B8
  loc_A4B6A9: FMemLdPr
  loc_A4B6AE:  = Me.Fields
  loc_A4B6B3: FLdPr var_B8
  loc_A4B6B6: from_stack_2 = Me.Item(from_stack_1)
  loc_A4B6BB: FLdPr var_CC
  loc_A4B6BE:  = Me.Value
  loc_A4B6C3: FLdRfVar var_DC
  loc_A4B6C6: CStrVarTmp
  loc_A4B6C7: FStStrNoPop var_90
  loc_A4B6CA: ILdPr
  loc_A4B6CD: Call tblmenu.FormMenuPut(from_stack_1v)
  loc_A4B6D2: FFree1Str var_90
  loc_A4B6D5: FFreeAd var_B8 = ""
  loc_A4B6DC: FFree1Var var_DC = ""
  loc_A4B6DF: FLdRfVar var_DC
  loc_A4B6E2: FLdRfVar var_CC
  loc_A4B6E5: LitVarStr var_C8, "WforMenu"
  loc_A4B6EA: PopAdLdVar
  loc_A4B6EB: FLdRfVar var_B8
  loc_A4B6EE: FMemLdPr
  loc_A4B6F3:  = Me.Fields
  loc_A4B6F8: FLdPr var_B8
  loc_A4B6FB: from_stack_2 = Me.Item(from_stack_1)
  loc_A4B700: FLdPr var_CC
  loc_A4B703:  = Me.Value
  loc_A4B708: FLdRfVar var_DC
  loc_A4B70B: CStrVarTmp
  loc_A4B70C: FStStrNoPop var_90
  loc_A4B70F: ILdPr
  loc_A4B712: Call tblmenu.WforMenuPut(from_stack_1v)
  loc_A4B717: FFree1Str var_90
  loc_A4B71A: FFreeAd var_B8 = ""
  loc_A4B721: FFree1Var var_DC = ""
  loc_A4B724: FLdRfVar var_DC
  loc_A4B727: FLdRfVar var_CC
  loc_A4B72A: LitVarStr var_C8, "RepoMenu"
  loc_A4B72F: PopAdLdVar
  loc_A4B730: FLdRfVar var_B8
  loc_A4B733: FMemLdPr
  loc_A4B738:  = Me.Fields
  loc_A4B73D: FLdPr var_B8
  loc_A4B740: from_stack_2 = Me.Item(from_stack_1)
  loc_A4B745: FLdPr var_CC
  loc_A4B748:  = Me.Value
  loc_A4B74D: FLdRfVar var_DC
  loc_A4B750: CStrVarTmp
  loc_A4B751: FStStrNoPop var_90
  loc_A4B754: ILdPr
  loc_A4B757: Call tblmenu.RepoMenuPut(from_stack_1v)
  loc_A4B75C: FFree1Str var_90
  loc_A4B75F: FFreeAd var_B8 = ""
  loc_A4B766: FFree1Var var_DC = ""
  loc_A4B769: LitI2_Byte &HFF
  loc_A4B76B: FStI2 var_86
  loc_A4B76E: Branch loc_A4B7C3
  loc_A4B771: LitStr "El Menu NO EXISTE. Verifique..."
  loc_A4B774: ILdPr
  loc_A4B777: Call tblmenu.MsgErrorPut(from_stack_1v)
  loc_A4B77C: LitStr vbNullString
  loc_A4B77F: ILdPr
  loc_A4B782: Call tblmenu.CodiSistPut(from_stack_1v)
  loc_A4B787: LitStr vbNullString
  loc_A4B78A: ILdPr
  loc_A4B78D: Call tblmenu.CodiMenuPut(from_stack_1v)
  loc_A4B792: LitStr vbNullString
  loc_A4B795: ILdPr
  loc_A4B798: Call tblmenu.DetaMenuPut(from_stack_1v)
  loc_A4B79D: LitStr vbNullString
  loc_A4B7A0: ILdPr
  loc_A4B7A3: Call tblmenu.FormMenuPut(from_stack_1v)
  loc_A4B7A8: LitStr vbNullString
  loc_A4B7AB: ILdPr
  loc_A4B7AE: Call tblmenu.WforMenuPut(from_stack_1v)
  loc_A4B7B3: LitStr vbNullString
  loc_A4B7B6: ILdPr
  loc_A4B7B9: Call tblmenu.RepoMenuPut(from_stack_1v)
  loc_A4B7BE: LitI2_Byte 0
  loc_A4B7C0: FStI2 var_86
  loc_A4B7C3: ExitProcI2
End Function

Private Function Proc_259_17_B74BCC(arg_C, arg_10) 'B74BCC
  'Data Table: 4569C4
  loc_B73F68: ILdRf arg_10
  loc_B73F6B: FStStrCopy var_8C
  loc_B73F6E: LitStr "SELECT np.*, DetaOrga, IFNULL(DetaPers,'') AltaDeta, Sum(CantItno*ImunItno) TotalNP"
  loc_B73F71: LitStr ", IF(oc.PeriInfo IS NULL,'No','Si') IncludOC"
  loc_B73F74: ConcatStr
  loc_B73F75: FStStrNoPop var_90
  loc_B73F78: LitStr " FROM notapedido np"
  loc_B73F7B: ConcatStr
  loc_B73F7C: FStStrNoPop var_94
  loc_B73F7F: LitStr " INNER JOIN infogov.organigrama orga ON orga.PeriInfo = np.PeriInfo AND orga.CodiOrga = np.CodiOrga"
  loc_B73F82: ConcatStr
  loc_B73F83: FStStrNoPop var_98
  loc_B73F86: LitStr " INNER JOIN infogov.usuario ON usuario.CodiUsua = np.AltaUsua"
  loc_B73F89: ConcatStr
  loc_B73F8A: FStStrNoPop var_9C
  loc_B73F8D: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = usuario.CucuPers"
  loc_B73F90: ConcatStr
  loc_B73F91: FStStrNoPop var_A0
  loc_B73F94: LitStr " INNER JOIN itemnota it ON it.PeriInfo = np.PeriInfo AND it.CodiNope = np.CodiNope"
  loc_B73F97: ConcatStr
  loc_B73F98: FStStrNoPop var_A4
  loc_B73F9B: LitStr " LEFT JOIN ordencompra oc ON oc.PeriInfo = np.PeriInfo AND oc.CodiNope = np.CodiNope AND FeanOrco IS NULL"
  loc_B73F9E: ConcatStr
  loc_B73F9F: FStStrNoPop var_A8
  loc_B73FA2: LitStr " WHERE np.PeriInfo = "
  loc_B73FA5: ConcatStr
  loc_B73FA6: FStStrNoPop var_AC
  loc_B73FA9: FLdI2 arg_C
  loc_B73FAC: CStrUI1
  loc_B73FAE: FStStrNoPop var_B0
  loc_B73FB1: ConcatStr
  loc_B73FB2: FStStrNoPop var_B4
  loc_B73FB5: LitStr " AND np.CodiNope = '"
  loc_B73FB8: ConcatStr
  loc_B73FB9: FStStrNoPop var_B8
  loc_B73FBC: ILdRf var_8C
  loc_B73FBF: ConcatStr
  loc_B73FC0: FStStrNoPop var_BC
  loc_B73FC3: LitStr "'"
  loc_B73FC6: ConcatStr
  loc_B73FC7: FStStrNoPop var_C0
  loc_B73FCA: LitStr " GROUP BY PeriInfo, CodiNope"
  loc_B73FCD: ConcatStr
  loc_B73FCE: FStStrNoPop var_C4
  loc_B73FD1: LitStr " LIMIT 1"
  loc_B73FD4: ConcatStr
  loc_B73FD5: FStStrNoPop var_C8
  loc_B73FD8: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_B73FDD: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B73FFE: FLdRfVar var_CC
  loc_B74001: FMemLdPr
  loc_B74006:  = Me.RecordCount
  loc_B7400B: ILdRf var_CC
  loc_B7400E: LitI4 0
  loc_B74013: GtI4
  loc_B74014: BranchF loc_B74A9C
  loc_B74017: LitStr vbNullString
  loc_B7401A: ILdPr
  loc_B7401D: Call tblnotapedido.MsgErrorPut(from_stack_1v)
  loc_B74022: FLdRfVar var_F4
  loc_B74025: FLdRfVar var_E4
  loc_B74028: LitVarStr var_E0, "PeriInfo"
  loc_B7402D: PopAdLdVar
  loc_B7402E: FLdRfVar var_D0
  loc_B74031: FMemLdPr
  loc_B74036:  = Me.Fields
  loc_B7403B: FLdPr var_D0
  loc_B7403E: from_stack_2 = Me.Item(from_stack_1)
  loc_B74043: FLdPr var_E4
  loc_B74046:  = Me.Value
  loc_B7404B: FLdRfVar var_F4
  loc_B7404E: CStrVarTmp
  loc_B7404F: FStStrNoPop var_90
  loc_B74052: ILdPr
  loc_B74055: Call tblnotapedido.PeriInfoPut(from_stack_1v)
  loc_B7405A: FFree1Str var_90
  loc_B7405D: FFreeAd var_D0 = ""
  loc_B74064: FFree1Var var_F4 = ""
  loc_B74067: FLdRfVar var_F4
  loc_B7406A: FLdRfVar var_E4
  loc_B7406D: LitVarStr var_E0, "CodiNope"
  loc_B74072: PopAdLdVar
  loc_B74073: FLdRfVar var_D0
  loc_B74076: FMemLdPr
  loc_B7407B:  = Me.Fields
  loc_B74080: FLdPr var_D0
  loc_B74083: from_stack_2 = Me.Item(from_stack_1)
  loc_B74088: FLdPr var_E4
  loc_B7408B:  = Me.Value
  loc_B74090: FLdRfVar var_F4
  loc_B74093: CStrVarTmp
  loc_B74094: FStStrNoPop var_90
  loc_B74097: ILdPr
  loc_B7409A: Call tblnotapedido.CodiNopePut(from_stack_1v)
  loc_B7409F: FFree1Str var_90
  loc_B740A2: FFreeAd var_D0 = ""
  loc_B740A9: FFree1Var var_F4 = ""
  loc_B740AC: FLdRfVar var_F4
  loc_B740AF: FLdRfVar var_E4
  loc_B740B2: LitVarStr var_E0, "CoinNope"
  loc_B740B7: PopAdLdVar
  loc_B740B8: FLdRfVar var_D0
  loc_B740BB: FMemLdPr
  loc_B740C0:  = Me.Fields
  loc_B740C5: FLdPr var_D0
  loc_B740C8: from_stack_2 = Me.Item(from_stack_1)
  loc_B740CD: FLdPr var_E4
  loc_B740D0:  = Me.Value
  loc_B740D5: FLdRfVar var_F4
  loc_B740D8: CStrVarTmp
  loc_B740D9: FStStrNoPop var_90
  loc_B740DC: ILdPr
  loc_B740DF: Call tblnotapedido.CoinNopePut(from_stack_1v)
  loc_B740E4: FFree1Str var_90
  loc_B740E7: FFreeAd var_D0 = ""
  loc_B740EE: FFree1Var var_F4 = ""
  loc_B740F1: FLdRfVar var_F4
  loc_B740F4: FLdRfVar var_E4
  loc_B740F7: LitVarStr var_E0, "CodiOrga"
  loc_B740FC: PopAdLdVar
  loc_B740FD: FLdRfVar var_D0
  loc_B74100: FMemLdPr
  loc_B74105:  = Me.Fields
  loc_B7410A: FLdPr var_D0
  loc_B7410D: from_stack_2 = Me.Item(from_stack_1)
  loc_B74112: FLdPr var_E4
  loc_B74115:  = Me.Value
  loc_B7411A: FLdRfVar var_F4
  loc_B7411D: CStrVarTmp
  loc_B7411E: FStStrNoPop var_90
  loc_B74121: ILdPr
  loc_B74124: Call tblnotapedido.CodiOrgaPut(from_stack_1v)
  loc_B74129: FFree1Str var_90
  loc_B7412C: FFreeAd var_D0 = ""
  loc_B74133: FFree1Var var_F4 = ""
  loc_B74136: FLdRfVar var_F4
  loc_B74139: FLdRfVar var_E4
  loc_B7413C: LitVarStr var_E0, "DetaOrga"
  loc_B74141: PopAdLdVar
  loc_B74142: FLdRfVar var_D0
  loc_B74145: FMemLdPr
  loc_B7414A:  = Me.Fields
  loc_B7414F: FLdPr var_D0
  loc_B74152: from_stack_2 = Me.Item(from_stack_1)
  loc_B74157: FLdPr var_E4
  loc_B7415A:  = Me.Value
  loc_B7415F: FLdRfVar var_F4
  loc_B74162: CStrVarTmp
  loc_B74163: FStStrNoPop var_90
  loc_B74166: ILdPr
  loc_B74169: Call tblnotapedido.DetaOrgaPut(from_stack_1v)
  loc_B7416E: FFree1Str var_90
  loc_B74171: FFreeAd var_D0 = ""
  loc_B74178: FFree1Var var_F4 = ""
  loc_B7417B: FLdRfVar var_F4
  loc_B7417E: FLdRfVar var_E4
  loc_B74181: LitVarStr var_E0, "DetaNope"
  loc_B74186: PopAdLdVar
  loc_B74187: FLdRfVar var_D0
  loc_B7418A: FMemLdPr
  loc_B7418F:  = Me.Fields
  loc_B74194: FLdPr var_D0
  loc_B74197: from_stack_2 = Me.Item(from_stack_1)
  loc_B7419C: FLdPr var_E4
  loc_B7419F:  = Me.Value
  loc_B741A4: FLdRfVar var_F4
  loc_B741A7: CStrVarTmp
  loc_B741A8: FStStrNoPop var_90
  loc_B741AB: ILdPr
  loc_B741AE: Call tblnotapedido.DetaNopePut(from_stack_1v)
  loc_B741B3: FFree1Str var_90
  loc_B741B6: FFreeAd var_D0 = ""
  loc_B741BD: FFree1Var var_F4 = ""
  loc_B741C0: FLdRfVar var_F4
  loc_B741C3: FLdRfVar var_E4
  loc_B741C6: LitVarStr var_E0, "CodiTico"
  loc_B741CB: PopAdLdVar
  loc_B741CC: FLdRfVar var_D0
  loc_B741CF: FMemLdPr
  loc_B741D4:  = Me.Fields
  loc_B741D9: FLdPr var_D0
  loc_B741DC: from_stack_2 = Me.Item(from_stack_1)
  loc_B741E1: FLdPr var_E4
  loc_B741E4:  = Me.Value
  loc_B741E9: FLdRfVar var_F4
  loc_B741EC: CStrVarTmp
  loc_B741ED: FStStrNoPop var_90
  loc_B741F0: ILdPr
  loc_B741F3: Call tblnotapedido.CodiTicoPut(from_stack_1v)
  loc_B741F8: FFree1Str var_90
  loc_B741FB: FFreeAd var_D0 = ""
  loc_B74202: FFree1Var var_F4 = ""
  loc_B74205: FLdRfVar var_F4
  loc_B74208: FLdRfVar var_E4
  loc_B7420B: LitVarStr var_E0, "ExpeImpu"
  loc_B74210: PopAdLdVar
  loc_B74211: FLdRfVar var_D0
  loc_B74214: FMemLdPr
  loc_B74219:  = Me.Fields
  loc_B7421E: FLdPr var_D0
  loc_B74221: from_stack_2 = Me.Item(from_stack_1)
  loc_B74226: FLdPr var_E4
  loc_B74229:  = Me.Value
  loc_B7422E: FLdRfVar var_F4
  loc_B74231: CStrVarTmp
  loc_B74232: FStStrNoPop var_90
  loc_B74235: ILdPr
  loc_B74238: Call tblnotapedido.ExpeImpuPut(from_stack_1v)
  loc_B7423D: FFree1Str var_90
  loc_B74240: FFreeAd var_D0 = ""
  loc_B74247: FFree1Var var_F4 = ""
  loc_B7424A: FLdRfVar var_F4
  loc_B7424D: FLdRfVar var_E4
  loc_B74250: LitVarStr var_E0, "FechNope"
  loc_B74255: PopAdLdVar
  loc_B74256: FLdRfVar var_D0
  loc_B74259: FMemLdPr
  loc_B7425E:  = Me.Fields
  loc_B74263: FLdPr var_D0
  loc_B74266: from_stack_2 = Me.Item(from_stack_1)
  loc_B7426B: FLdPr var_E4
  loc_B7426E:  = Me.Value
  loc_B74273: FLdRfVar var_12C
  loc_B74276: LitVarStr var_128, "FechNope"
  loc_B7427B: PopAdLdVar
  loc_B7427C: FLdRfVar var_118
  loc_B7427F: FMemLdPr
  loc_B74284:  = Me.Fields
  loc_B74289: FLdPr var_118
  loc_B7428C: from_stack_2 = Me.Item(from_stack_1)
  loc_B74291: LitVarStr var_15C, vbNullString
  loc_B74296: FStVarCopyObj var_16C
  loc_B74299: FLdRfVar var_16C
  loc_B7429C: FLdZeroAd var_12C
  loc_B7429F: CVarAd
  loc_B742A3: FLdRfVar var_F4
  loc_B742A6: LitVarStr var_104, vbNullString
  loc_B742AB: HardType
  loc_B742AC: NeVar var_114
  loc_B742B0: FStVar var_13C
  loc_B742B4: FLdRfVar var_13C
  loc_B742B7: FLdRfVar var_17C
  loc_B742BA: ImpAdCallFPR4  = IIf(, , )
  loc_B742BF: FLdRfVar var_17C
  loc_B742C2: CStrVarVal var_90
  loc_B742C6: ILdPr
  loc_B742C9: Call tblnotapedido.FechNopePut(from_stack_1v)
  loc_B742CE: FFree1Str var_90
  loc_B742D1: FFreeAd var_D0 = "": var_E4 = ""
  loc_B742DA: FFreeVar var_F4 = "": var_13C = "": var_14C = "": var_16C = ""
  loc_B742E7: FLdRfVar var_F4
  loc_B742EA: FLdRfVar var_E4
  loc_B742ED: LitVarStr var_E0, "FeliNope"
  loc_B742F2: PopAdLdVar
  loc_B742F3: FLdRfVar var_D0
  loc_B742F6: FMemLdPr
  loc_B742FB:  = Me.Fields
  loc_B74300: FLdPr var_D0
  loc_B74303: from_stack_2 = Me.Item(from_stack_1)
  loc_B74308: FLdPr var_E4
  loc_B7430B:  = Me.Value
  loc_B74310: FLdRfVar var_12C
  loc_B74313: LitVarStr var_128, "FeliNope"
  loc_B74318: PopAdLdVar
  loc_B74319: FLdRfVar var_118
  loc_B7431C: FMemLdPr
  loc_B74321:  = Me.Fields
  loc_B74326: FLdPr var_118
  loc_B74329: from_stack_2 = Me.Item(from_stack_1)
  loc_B7432E: LitVarStr var_15C, vbNullString
  loc_B74333: FStVarCopyObj var_16C
  loc_B74336: FLdRfVar var_16C
  loc_B74339: FLdZeroAd var_12C
  loc_B7433C: CVarAd
  loc_B74340: FLdRfVar var_F4
  loc_B74343: LitVarStr var_104, vbNullString
  loc_B74348: HardType
  loc_B74349: NeVar var_114
  loc_B7434D: FStVar var_13C
  loc_B74351: FLdRfVar var_13C
  loc_B74354: FLdRfVar var_17C
  loc_B74357: ImpAdCallFPR4  = IIf(, , )
  loc_B7435C: FLdRfVar var_17C
  loc_B7435F: CStrVarVal var_90
  loc_B74363: ILdPr
  loc_B74366: Call tblnotapedido.FeliNopePut(from_stack_1v)
  loc_B7436B: FFree1Str var_90
  loc_B7436E: FFreeAd var_D0 = "": var_E4 = ""
  loc_B74377: FFreeVar var_F4 = "": var_13C = "": var_14C = "": var_16C = ""
  loc_B74384: FLdRfVar var_F4
  loc_B74387: FLdRfVar var_E4
  loc_B7438A: LitVarStr var_E0, "HoliNope"
  loc_B7438F: PopAdLdVar
  loc_B74390: FLdRfVar var_D0
  loc_B74393: FMemLdPr
  loc_B74398:  = Me.Fields
  loc_B7439D: FLdPr var_D0
  loc_B743A0: from_stack_2 = Me.Item(from_stack_1)
  loc_B743A5: FLdPr var_E4
  loc_B743A8:  = Me.Value
  loc_B743AD: FLdRfVar var_12C
  loc_B743B0: LitVarStr var_128, "HoliNope"
  loc_B743B5: PopAdLdVar
  loc_B743B6: FLdRfVar var_118
  loc_B743B9: FMemLdPr
  loc_B743BE:  = Me.Fields
  loc_B743C3: FLdPr var_118
  loc_B743C6: from_stack_2 = Me.Item(from_stack_1)
  loc_B743CB: LitVarStr var_15C, vbNullString
  loc_B743D0: FStVarCopyObj var_16C
  loc_B743D3: FLdRfVar var_16C
  loc_B743D6: FLdZeroAd var_12C
  loc_B743D9: CVarAd
  loc_B743DD: FLdRfVar var_F4
  loc_B743E0: LitVarStr var_104, vbNullString
  loc_B743E5: HardType
  loc_B743E6: NeVar var_114
  loc_B743EA: FStVar var_13C
  loc_B743EE: FLdRfVar var_13C
  loc_B743F1: FLdRfVar var_17C
  loc_B743F4: ImpAdCallFPR4  = IIf(, , )
  loc_B743F9: FLdRfVar var_17C
  loc_B743FC: CStrVarVal var_90
  loc_B74400: ILdPr
  loc_B74403: Call tblnotapedido.HoliNopePut(from_stack_1v)
  loc_B74408: FFree1Str var_90
  loc_B7440B: FFreeAd var_D0 = "": var_E4 = ""
  loc_B74414: FFreeVar var_F4 = "": var_13C = "": var_14C = "": var_16C = ""
  loc_B74421: FLdRfVar var_F4
  loc_B74424: FLdRfVar var_E4
  loc_B74427: LitVarStr var_E0, "FeleNope"
  loc_B7442C: PopAdLdVar
  loc_B7442D: FLdRfVar var_D0
  loc_B74430: FMemLdPr
  loc_B74435:  = Me.Fields
  loc_B7443A: FLdPr var_D0
  loc_B7443D: from_stack_2 = Me.Item(from_stack_1)
  loc_B74442: FLdPr var_E4
  loc_B74445:  = Me.Value
  loc_B7444A: FLdRfVar var_12C
  loc_B7444D: LitVarStr var_128, "FeleNope"
  loc_B74452: PopAdLdVar
  loc_B74453: FLdRfVar var_118
  loc_B74456: FMemLdPr
  loc_B7445B:  = Me.Fields
  loc_B74460: FLdPr var_118
  loc_B74463: from_stack_2 = Me.Item(from_stack_1)
  loc_B74468: LitVarStr var_15C, vbNullString
  loc_B7446D: FStVarCopyObj var_16C
  loc_B74470: FLdRfVar var_16C
  loc_B74473: FLdZeroAd var_12C
  loc_B74476: CVarAd
  loc_B7447A: FLdRfVar var_F4
  loc_B7447D: LitVarStr var_104, vbNullString
  loc_B74482: HardType
  loc_B74483: NeVar var_114
  loc_B74487: FStVar var_13C
  loc_B7448B: FLdRfVar var_13C
  loc_B7448E: FLdRfVar var_17C
  loc_B74491: ImpAdCallFPR4  = IIf(, , )
  loc_B74496: FLdRfVar var_17C
  loc_B74499: CStrVarVal var_90
  loc_B7449D: ILdPr
  loc_B744A0: Call tblnotapedido.FeleNopePut(from_stack_1v)
  loc_B744A5: FFree1Str var_90
  loc_B744A8: FFreeAd var_D0 = "": var_E4 = ""
  loc_B744B1: FFreeVar var_F4 = "": var_13C = "": var_14C = "": var_16C = ""
  loc_B744BE: FLdRfVar var_F4
  loc_B744C1: FLdRfVar var_E4
  loc_B744C4: LitVarStr var_E0, "HoleNope"
  loc_B744C9: PopAdLdVar
  loc_B744CA: FLdRfVar var_D0
  loc_B744CD: FMemLdPr
  loc_B744D2:  = Me.Fields
  loc_B744D7: FLdPr var_D0
  loc_B744DA: from_stack_2 = Me.Item(from_stack_1)
  loc_B744DF: FLdPr var_E4
  loc_B744E2:  = Me.Value
  loc_B744E7: FLdRfVar var_12C
  loc_B744EA: LitVarStr var_128, "HoleNope"
  loc_B744EF: PopAdLdVar
  loc_B744F0: FLdRfVar var_118
  loc_B744F3: FMemLdPr
  loc_B744F8:  = Me.Fields
  loc_B744FD: FLdPr var_118
  loc_B74500: from_stack_2 = Me.Item(from_stack_1)
  loc_B74505: LitVarStr var_15C, vbNullString
  loc_B7450A: FStVarCopyObj var_16C
  loc_B7450D: FLdRfVar var_16C
  loc_B74510: FLdZeroAd var_12C
  loc_B74513: CVarAd
  loc_B74517: FLdRfVar var_F4
  loc_B7451A: LitVarStr var_104, vbNullString
  loc_B7451F: HardType
  loc_B74520: NeVar var_114
  loc_B74524: FStVar var_13C
  loc_B74528: FLdRfVar var_13C
  loc_B7452B: FLdRfVar var_17C
  loc_B7452E: ImpAdCallFPR4  = IIf(, , )
  loc_B74533: FLdRfVar var_17C
  loc_B74536: CStrVarVal var_90
  loc_B7453A: ILdPr
  loc_B7453D: Call tblnotapedido.HoleNopePut(from_stack_1v)
  loc_B74542: FFree1Str var_90
  loc_B74545: FFreeAd var_D0 = "": var_E4 = ""
  loc_B7454E: FFreeVar var_F4 = "": var_13C = "": var_14C = "": var_16C = ""
  loc_B7455B: FLdRfVar var_F4
  loc_B7455E: FLdRfVar var_E4
  loc_B74561: LitVarStr var_E0, "FeanNope"
  loc_B74566: PopAdLdVar
  loc_B74567: FLdRfVar var_D0
  loc_B7456A: FMemLdPr
  loc_B7456F:  = Me.Fields
  loc_B74574: FLdPr var_D0
  loc_B74577: from_stack_2 = Me.Item(from_stack_1)
  loc_B7457C: FLdPr var_E4
  loc_B7457F:  = Me.Value
  loc_B74584: FLdRfVar var_12C
  loc_B74587: LitVarStr var_128, "FeanNope"
  loc_B7458C: PopAdLdVar
  loc_B7458D: FLdRfVar var_118
  loc_B74590: FMemLdPr
  loc_B74595:  = Me.Fields
  loc_B7459A: FLdPr var_118
  loc_B7459D: from_stack_2 = Me.Item(from_stack_1)
  loc_B745A2: LitVarStr var_15C, vbNullString
  loc_B745A7: FStVarCopyObj var_16C
  loc_B745AA: FLdRfVar var_16C
  loc_B745AD: FLdZeroAd var_12C
  loc_B745B0: CVarAd
  loc_B745B4: FLdRfVar var_F4
  loc_B745B7: LitVarStr var_104, vbNullString
  loc_B745BC: HardType
  loc_B745BD: NeVar var_114
  loc_B745C1: FStVar var_13C
  loc_B745C5: FLdRfVar var_13C
  loc_B745C8: FLdRfVar var_17C
  loc_B745CB: ImpAdCallFPR4  = IIf(, , )
  loc_B745D0: FLdRfVar var_17C
  loc_B745D3: CStrVarVal var_90
  loc_B745D7: ILdPr
  loc_B745DA: Call tblnotapedido.FeanNopePut(from_stack_1v)
  loc_B745DF: FFree1Str var_90
  loc_B745E2: FFreeAd var_D0 = "": var_E4 = ""
  loc_B745EB: FFreeVar var_F4 = "": var_13C = "": var_14C = "": var_16C = ""
  loc_B745F8: FLdRfVar var_F4
  loc_B745FB: FLdRfVar var_E4
  loc_B745FE: LitVarStr var_E0, "FeocNope"
  loc_B74603: PopAdLdVar
  loc_B74604: FLdRfVar var_D0
  loc_B74607: FMemLdPr
  loc_B7460C:  = Me.Fields
  loc_B74611: FLdPr var_D0
  loc_B74614: from_stack_2 = Me.Item(from_stack_1)
  loc_B74619: FLdPr var_E4
  loc_B7461C:  = Me.Value
  loc_B74621: FLdRfVar var_12C
  loc_B74624: LitVarStr var_128, "FeocNope"
  loc_B74629: PopAdLdVar
  loc_B7462A: FLdRfVar var_118
  loc_B7462D: FMemLdPr
  loc_B74632:  = Me.Fields
  loc_B74637: FLdPr var_118
  loc_B7463A: from_stack_2 = Me.Item(from_stack_1)
  loc_B7463F: LitVarStr var_15C, vbNullString
  loc_B74644: FStVarCopyObj var_16C
  loc_B74647: FLdRfVar var_16C
  loc_B7464A: FLdZeroAd var_12C
  loc_B7464D: CVarAd
  loc_B74651: FLdRfVar var_F4
  loc_B74654: LitVarStr var_104, vbNullString
  loc_B74659: HardType
  loc_B7465A: NeVar var_114
  loc_B7465E: FStVar var_13C
  loc_B74662: FLdRfVar var_13C
  loc_B74665: FLdRfVar var_17C
  loc_B74668: ImpAdCallFPR4  = IIf(, , )
  loc_B7466D: FLdRfVar var_17C
  loc_B74670: CStrVarVal var_90
  loc_B74674: ILdPr
  loc_B74677: Call tblnotapedido.FeocNopePut(from_stack_1v)
  loc_B7467C: FFree1Str var_90
  loc_B7467F: FFreeAd var_D0 = "": var_E4 = ""
  loc_B74688: FFreeVar var_F4 = "": var_13C = "": var_14C = "": var_16C = ""
  loc_B74695: FLdRfVar var_F4
  loc_B74698: FLdRfVar var_E4
  loc_B7469B: LitVarStr var_E0, "PaesNope"
  loc_B746A0: PopAdLdVar
  loc_B746A1: FLdRfVar var_D0
  loc_B746A4: FMemLdPr
  loc_B746A9:  = Me.Fields
  loc_B746AE: FLdPr var_D0
  loc_B746B1: from_stack_2 = Me.Item(from_stack_1)
  loc_B746B6: FLdPr var_E4
  loc_B746B9:  = Me.Value
  loc_B746BE: FLdRfVar var_F4
  loc_B746C1: CStrVarTmp
  loc_B746C2: FStStrNoPop var_90
  loc_B746C5: ILdPr
  loc_B746C8: Call tblnotapedido.PaesNopePut(from_stack_1v)
  loc_B746CD: FFree1Str var_90
  loc_B746D0: FFreeAd var_D0 = ""
  loc_B746D7: FFree1Var var_F4 = ""
  loc_B746DA: FLdRfVar var_F4
  loc_B746DD: FLdRfVar var_E4
  loc_B746E0: LitVarStr var_E0, "TotalNP"
  loc_B746E5: PopAdLdVar
  loc_B746E6: FLdRfVar var_D0
  loc_B746E9: FMemLdPr
  loc_B746EE:  = Me.Fields
  loc_B746F3: FLdPr var_D0
  loc_B746F6: from_stack_2 = Me.Item(from_stack_1)
  loc_B746FB: FLdPr var_E4
  loc_B746FE:  = Me.Value
  loc_B74703: FLdRfVar var_F4
  loc_B74706: CStrVarTmp
  loc_B74707: FStStrNoPop var_90
  loc_B7470A: ILdPr
  loc_B7470D: Call tblnotapedido.TotalNPPut(from_stack_1v)
  loc_B74712: FFree1Str var_90
  loc_B74715: FFreeAd var_D0 = ""
  loc_B7471C: FFree1Var var_F4 = ""
  loc_B7471F: FLdRfVar var_F4
  loc_B74722: FLdRfVar var_E4
  loc_B74725: LitVarStr var_E0, "IncludOC"
  loc_B7472A: PopAdLdVar
  loc_B7472B: FLdRfVar var_D0
  loc_B7472E: FMemLdPr
  loc_B74733:  = Me.Fields
  loc_B74738: FLdPr var_D0
  loc_B7473B: from_stack_2 = Me.Item(from_stack_1)
  loc_B74740: FLdPr var_E4
  loc_B74743:  = Me.Value
  loc_B74748: FLdRfVar var_F4
  loc_B7474B: CStrVarTmp
  loc_B7474C: FStStrNoPop var_90
  loc_B7474F: ILdPr
  loc_B74752: Call tblnotapedido.IncludOCPut(from_stack_1v)
  loc_B74757: FFree1Str var_90
  loc_B7475A: FFreeAd var_D0 = ""
  loc_B74761: FFree1Var var_F4 = ""
  loc_B74764: FLdRfVar var_F4
  loc_B74767: FLdRfVar var_E4
  loc_B7476A: LitVarStr var_E0, "AltaUsua"
  loc_B7476F: PopAdLdVar
  loc_B74770: FLdRfVar var_D0
  loc_B74773: FMemLdPr
  loc_B74778:  = Me.Fields
  loc_B7477D: FLdPr var_D0
  loc_B74780: from_stack_2 = Me.Item(from_stack_1)
  loc_B74785: FLdPr var_E4
  loc_B74788:  = Me.Value
  loc_B7478D: FLdRfVar var_F4
  loc_B74790: CStrVarTmp
  loc_B74791: FStStrNoPop var_90
  loc_B74794: ILdPr
  loc_B74797: Call tblnotapedido.AltaUsuaPut(from_stack_1v)
  loc_B7479C: FFree1Str var_90
  loc_B7479F: FFreeAd var_D0 = ""
  loc_B747A6: FFree1Var var_F4 = ""
  loc_B747A9: FLdRfVar var_F4
  loc_B747AC: FLdRfVar var_E4
  loc_B747AF: LitVarStr var_E0, "AltaDeta"
  loc_B747B4: PopAdLdVar
  loc_B747B5: FLdRfVar var_D0
  loc_B747B8: FMemLdPr
  loc_B747BD:  = Me.Fields
  loc_B747C2: FLdPr var_D0
  loc_B747C5: from_stack_2 = Me.Item(from_stack_1)
  loc_B747CA: FLdPr var_E4
  loc_B747CD:  = Me.Value
  loc_B747D2: FLdRfVar var_F4
  loc_B747D5: CStrVarTmp
  loc_B747D6: FStStrNoPop var_90
  loc_B747D9: ILdPr
  loc_B747DC: Call tblnotapedido.AltaDetaPut(from_stack_1v)
  loc_B747E1: FFree1Str var_90
  loc_B747E4: FFreeAd var_D0 = ""
  loc_B747EB: FFree1Var var_F4 = ""
  loc_B747EE: FLdRfVar var_F4
  loc_B747F1: FLdRfVar var_E4
  loc_B747F4: LitVarStr var_E0, "AltaFeho"
  loc_B747F9: PopAdLdVar
  loc_B747FA: FLdRfVar var_D0
  loc_B747FD: FMemLdPr
  loc_B74802:  = Me.Fields
  loc_B74807: FLdPr var_D0
  loc_B7480A: from_stack_2 = Me.Item(from_stack_1)
  loc_B7480F: FLdPr var_E4
  loc_B74812:  = Me.Value
  loc_B74817: FLdRfVar var_12C
  loc_B7481A: LitVarStr var_128, "AltaFeho"
  loc_B7481F: PopAdLdVar
  loc_B74820: FLdRfVar var_118
  loc_B74823: FMemLdPr
  loc_B74828:  = Me.Fields
  loc_B7482D: FLdPr var_118
  loc_B74830: from_stack_2 = Me.Item(from_stack_1)
  loc_B74835: LitVarStr var_15C, vbNullString
  loc_B7483A: FStVarCopyObj var_16C
  loc_B7483D: FLdRfVar var_16C
  loc_B74840: FLdZeroAd var_12C
  loc_B74843: CVarAd
  loc_B74847: FLdRfVar var_F4
  loc_B7484A: LitVarStr var_104, vbNullString
  loc_B7484F: HardType
  loc_B74850: NeVar var_114
  loc_B74854: FStVar var_13C
  loc_B74858: FLdRfVar var_13C
  loc_B7485B: FLdRfVar var_17C
  loc_B7485E: ImpAdCallFPR4  = IIf(, , )
  loc_B74863: FLdRfVar var_17C
  loc_B74866: CStrVarVal var_90
  loc_B7486A: ILdPr
  loc_B7486D: Call tblnotapedido.AltaFehoPut(from_stack_1v)
  loc_B74872: FFree1Str var_90
  loc_B74875: FFreeAd var_D0 = "": var_E4 = ""
  loc_B7487E: FFreeVar var_F4 = "": var_13C = "": var_14C = "": var_16C = ""
  loc_B7488B: FLdRfVar var_F4
  loc_B7488E: FLdRfVar var_E4
  loc_B74891: LitVarStr var_E0, "ModiUsua"
  loc_B74896: PopAdLdVar
  loc_B74897: FLdRfVar var_D0
  loc_B7489A: FMemLdPr
  loc_B7489F:  = Me.Fields
  loc_B748A4: FLdPr var_D0
  loc_B748A7: from_stack_2 = Me.Item(from_stack_1)
  loc_B748AC: FLdPr var_E4
  loc_B748AF:  = Me.Value
  loc_B748B4: FLdRfVar var_F4
  loc_B748B7: CStrVarTmp
  loc_B748B8: FStStrNoPop var_90
  loc_B748BB: ILdPr
  loc_B748BE: Call tblnotapedido.ModiUsuaPut(from_stack_1v)
  loc_B748C3: FFree1Str var_90
  loc_B748C6: FFreeAd var_D0 = ""
  loc_B748CD: FFree1Var var_F4 = ""
  loc_B748D0: FLdRfVar var_F4
  loc_B748D3: FLdRfVar var_E4
  loc_B748D6: LitVarStr var_E0, "ModiFeho"
  loc_B748DB: PopAdLdVar
  loc_B748DC: FLdRfVar var_D0
  loc_B748DF: FMemLdPr
  loc_B748E4:  = Me.Fields
  loc_B748E9: FLdPr var_D0
  loc_B748EC: from_stack_2 = Me.Item(from_stack_1)
  loc_B748F1: FLdPr var_E4
  loc_B748F4:  = Me.Value
  loc_B748F9: FLdRfVar var_12C
  loc_B748FC: LitVarStr var_128, "ModiFeho"
  loc_B74901: PopAdLdVar
  loc_B74902: FLdRfVar var_118
  loc_B74905: FMemLdPr
  loc_B7490A:  = Me.Fields
  loc_B7490F: FLdPr var_118
  loc_B74912: from_stack_2 = Me.Item(from_stack_1)
  loc_B74917: LitVarStr var_15C, vbNullString
  loc_B7491C: FStVarCopyObj var_16C
  loc_B7491F: FLdRfVar var_16C
  loc_B74922: FLdZeroAd var_12C
  loc_B74925: CVarAd
  loc_B74929: FLdRfVar var_F4
  loc_B7492C: LitVarStr var_104, vbNullString
  loc_B74931: HardType
  loc_B74932: NeVar var_114
  loc_B74936: FStVar var_13C
  loc_B7493A: FLdRfVar var_13C
  loc_B7493D: FLdRfVar var_17C
  loc_B74940: ImpAdCallFPR4  = IIf(, , )
  loc_B74945: FLdRfVar var_17C
  loc_B74948: CStrVarVal var_90
  loc_B7494C: ILdPr
  loc_B7494F: Call tblnotapedido.ModiFehoPut(from_stack_1v)
  loc_B74954: FFree1Str var_90
  loc_B74957: FFreeAd var_D0 = "": var_E4 = ""
  loc_B74960: FFreeVar var_F4 = "": var_13C = "": var_14C = "": var_16C = ""
  loc_B7496D: FLdRfVar var_F4
  loc_B74970: FLdRfVar var_E4
  loc_B74973: LitVarStr var_E0, "BajaUsua"
  loc_B74978: PopAdLdVar
  loc_B74979: FLdRfVar var_D0
  loc_B7497C: FMemLdPr
  loc_B74981:  = Me.Fields
  loc_B74986: FLdPr var_D0
  loc_B74989: from_stack_2 = Me.Item(from_stack_1)
  loc_B7498E: FLdPr var_E4
  loc_B74991:  = Me.Value
  loc_B74996: FLdRfVar var_F4
  loc_B74999: CStrVarTmp
  loc_B7499A: FStStrNoPop var_90
  loc_B7499D: ILdPr
  loc_B749A0: Call tblnotapedido.BajaUsuaPut(from_stack_1v)
  loc_B749A5: FFree1Str var_90
  loc_B749A8: FFreeAd var_D0 = ""
  loc_B749AF: FFree1Var var_F4 = ""
  loc_B749B2: FLdRfVar var_F4
  loc_B749B5: FLdRfVar var_E4
  loc_B749B8: LitVarStr var_E0, "BajaFeho"
  loc_B749BD: PopAdLdVar
  loc_B749BE: FLdRfVar var_D0
  loc_B749C1: FMemLdPr
  loc_B749C6:  = Me.Fields
  loc_B749CB: FLdPr var_D0
  loc_B749CE: from_stack_2 = Me.Item(from_stack_1)
  loc_B749D3: FLdPr var_E4
  loc_B749D6:  = Me.Value
  loc_B749DB: FLdRfVar var_12C
  loc_B749DE: LitVarStr var_128, "BajaFeho"
  loc_B749E3: PopAdLdVar
  loc_B749E4: FLdRfVar var_118
  loc_B749E7: FMemLdPr
  loc_B749EC:  = Me.Fields
  loc_B749F1: FLdPr var_118
  loc_B749F4: from_stack_2 = Me.Item(from_stack_1)
  loc_B749F9: LitVarStr var_15C, vbNullString
  loc_B749FE: FStVarCopyObj var_16C
  loc_B74A01: FLdRfVar var_16C
  loc_B74A04: FLdZeroAd var_12C
  loc_B74A07: CVarAd
  loc_B74A0B: FLdRfVar var_F4
  loc_B74A0E: LitVarStr var_104, vbNullString
  loc_B74A13: HardType
  loc_B74A14: NeVar var_114
  loc_B74A18: FStVar var_13C
  loc_B74A1C: FLdRfVar var_13C
  loc_B74A1F: FLdRfVar var_17C
  loc_B74A22: ImpAdCallFPR4  = IIf(, , )
  loc_B74A27: FLdRfVar var_17C
  loc_B74A2A: CStrVarVal var_90
  loc_B74A2E: ILdPr
  loc_B74A31: Call tblnotapedido.BajaFehoPut(from_stack_1v)
  loc_B74A36: FFree1Str var_90
  loc_B74A39: FFreeAd var_D0 = "": var_E4 = ""
  loc_B74A42: FFreeVar var_F4 = "": var_13C = "": var_14C = "": var_16C = ""
  loc_B74A4F: FLdRfVar var_F4
  loc_B74A52: FLdRfVar var_E4
  loc_B74A55: LitVarStr var_E0, "BajaMoti"
  loc_B74A5A: PopAdLdVar
  loc_B74A5B: FLdRfVar var_D0
  loc_B74A5E: FMemLdPr
  loc_B74A63:  = Me.Fields
  loc_B74A68: FLdPr var_D0
  loc_B74A6B: from_stack_2 = Me.Item(from_stack_1)
  loc_B74A70: FLdPr var_E4
  loc_B74A73:  = Me.Value
  loc_B74A78: FLdRfVar var_F4
  loc_B74A7B: CStrVarTmp
  loc_B74A7C: FStStrNoPop var_90
  loc_B74A7F: ILdPr
  loc_B74A82: Call tblnotapedido.BajaMotiPut(from_stack_1v)
  loc_B74A87: FFree1Str var_90
  loc_B74A8A: FFreeAd var_D0 = ""
  loc_B74A91: FFree1Var var_F4 = ""
  loc_B74A94: LitI2_Byte &HFF
  loc_B74A96: FStI2 var_86
  loc_B74A99: Branch loc_B74BCA
  loc_B74A9C: LitStr "La Nota de Pedido NO EXISTE. Verifique..."
  loc_B74A9F: ILdPr
  loc_B74AA2: Call tblnotapedido.MsgErrorPut(from_stack_1v)
  loc_B74AA7: LitStr vbNullString
  loc_B74AAA: ILdPr
  loc_B74AAD: Call tblnotapedido.PeriInfoPut(from_stack_1v)
  loc_B74AB2: LitStr vbNullString
  loc_B74AB5: ILdPr
  loc_B74AB8: Call tblnotapedido.CodiNopePut(from_stack_1v)
  loc_B74ABD: LitStr vbNullString
  loc_B74AC0: ILdPr
  loc_B74AC3: Call tblnotapedido.CoinNopePut(from_stack_1v)
  loc_B74AC8: LitStr vbNullString
  loc_B74ACB: ILdPr
  loc_B74ACE: Call tblnotapedido.CodiOrgaPut(from_stack_1v)
  loc_B74AD3: LitStr vbNullString
  loc_B74AD6: ILdPr
  loc_B74AD9: Call tblnotapedido.DetaOrgaPut(from_stack_1v)
  loc_B74ADE: LitStr vbNullString
  loc_B74AE1: ILdPr
  loc_B74AE4: Call tblnotapedido.DetaNopePut(from_stack_1v)
  loc_B74AE9: LitStr vbNullString
  loc_B74AEC: ILdPr
  loc_B74AEF: Call tblnotapedido.CodiTicoPut(from_stack_1v)
  loc_B74AF4: LitStr vbNullString
  loc_B74AF7: ILdPr
  loc_B74AFA: Call tblnotapedido.ExpeImpuPut(from_stack_1v)
  loc_B74AFF: LitStr vbNullString
  loc_B74B02: ILdPr
  loc_B74B05: Call tblnotapedido.FechNopePut(from_stack_1v)
  loc_B74B0A: LitStr vbNullString
  loc_B74B0D: ILdPr
  loc_B74B10: Call tblnotapedido.FeliNopePut(from_stack_1v)
  loc_B74B15: LitStr vbNullString
  loc_B74B18: ILdPr
  loc_B74B1B: Call tblnotapedido.HoliNopePut(from_stack_1v)
  loc_B74B20: LitStr vbNullString
  loc_B74B23: ILdPr
  loc_B74B26: Call tblnotapedido.FeleNopePut(from_stack_1v)
  loc_B74B2B: LitStr vbNullString
  loc_B74B2E: ILdPr
  loc_B74B31: Call tblnotapedido.HoleNopePut(from_stack_1v)
  loc_B74B36: LitStr vbNullString
  loc_B74B39: ILdPr
  loc_B74B3C: Call tblnotapedido.FeanNopePut(from_stack_1v)
  loc_B74B41: LitStr vbNullString
  loc_B74B44: ILdPr
  loc_B74B47: Call tblnotapedido.FeocNopePut(from_stack_1v)
  loc_B74B4C: LitStr vbNullString
  loc_B74B4F: ILdPr
  loc_B74B52: Call tblnotapedido.PaesNopePut(from_stack_1v)
  loc_B74B57: LitStr vbNullString
  loc_B74B5A: ILdPr
  loc_B74B5D: Call tblnotapedido.TotalNPPut(from_stack_1v)
  loc_B74B62: LitStr vbNullString
  loc_B74B65: ILdPr
  loc_B74B68: Call tblnotapedido.IncludOCPut(from_stack_1v)
  loc_B74B6D: LitStr vbNullString
  loc_B74B70: ILdPr
  loc_B74B73: Call tblnotapedido.AltaUsuaPut(from_stack_1v)
  loc_B74B78: LitStr vbNullString
  loc_B74B7B: ILdPr
  loc_B74B7E: Call tblnotapedido.AltaDetaPut(from_stack_1v)
  loc_B74B83: LitStr vbNullString
  loc_B74B86: ILdPr
  loc_B74B89: Call tblnotapedido.AltaFehoPut(from_stack_1v)
  loc_B74B8E: LitStr vbNullString
  loc_B74B91: ILdPr
  loc_B74B94: Call tblnotapedido.ModiUsuaPut(from_stack_1v)
  loc_B74B99: LitStr vbNullString
  loc_B74B9C: ILdPr
  loc_B74B9F: Call tblnotapedido.ModiFehoPut(from_stack_1v)
  loc_B74BA4: LitStr vbNullString
  loc_B74BA7: ILdPr
  loc_B74BAA: Call tblnotapedido.BajaUsuaPut(from_stack_1v)
  loc_B74BAF: LitStr vbNullString
  loc_B74BB2: ILdPr
  loc_B74BB5: Call tblnotapedido.BajaFehoPut(from_stack_1v)
  loc_B74BBA: LitStr vbNullString
  loc_B74BBD: ILdPr
  loc_B74BC0: Call tblnotapedido.BajaMotiPut(from_stack_1v)
  loc_B74BC5: LitI2_Byte 0
  loc_B74BC7: FStI2 var_86
  loc_B74BCA: ExitProcI2
End Function

Private Function Proc_259_18_B36834(arg_C, arg_10, arg_14) 'B36834
  'Data Table: 4569C4
  loc_B35E94: ILdRf arg_10
  loc_B35E97: FStStrCopy var_8C
  loc_B35E9A: ILdRf arg_14
  loc_B35E9D: FStStrCopy var_90
  loc_B35EA0: LitStr "SELECT npx.*, DetaPart, DetaOrga, IFNULL(DetaPers,'') AltaDeta, Sum(CantItno*ImunItno) TotalNP"
  loc_B35EA3: LitStr " FROM npxpartorga npx"
  loc_B35EA6: ConcatStr
  loc_B35EA7: FStStrNoPop var_94
  loc_B35EAA: LitStr " INNER JOIN partida part ON part.PeriInfo = npx.PeriInfo AND part.CodiPart = npx.CodiPart"
  loc_B35EAD: ConcatStr
  loc_B35EAE: FStStrNoPop var_98
  loc_B35EB1: LitStr " INNER JOIN infogov.organigrama orga ON orga.PeriInfo = npx.PeriInfo AND orga.CodiOrga = npx.CodiOrga"
  loc_B35EB4: ConcatStr
  loc_B35EB5: FStStrNoPop var_9C
  loc_B35EB8: LitStr " INNER JOIN infogov.usuario ON usuario.CodiUsua = npx.AltaUsua"
  loc_B35EBB: ConcatStr
  loc_B35EBC: FStStrNoPop var_A0
  loc_B35EBF: LitStr " WHERE npx.PeriInfo = "
  loc_B35EC2: ConcatStr
  loc_B35EC3: FStStrNoPop var_A4
  loc_B35EC6: FLdI2 arg_C
  loc_B35EC9: CStrUI1
  loc_B35ECB: FStStrNoPop var_A8
  loc_B35ECE: ConcatStr
  loc_B35ECF: FStStrNoPop var_AC
  loc_B35ED2: LitStr " AND npx.CodiPart = '"
  loc_B35ED5: ConcatStr
  loc_B35ED6: FStStrNoPop var_B0
  loc_B35ED9: ILdRf var_8C
  loc_B35EDC: ConcatStr
  loc_B35EDD: FStStrNoPop var_B4
  loc_B35EE0: LitStr "'"
  loc_B35EE3: ConcatStr
  loc_B35EE4: FStStrNoPop var_B8
  loc_B35EE7: LitStr " AND npx.CodiOrga = '"
  loc_B35EEA: ConcatStr
  loc_B35EEB: FStStrNoPop var_BC
  loc_B35EEE: ILdRf var_90
  loc_B35EF1: ConcatStr
  loc_B35EF2: FStStrNoPop var_C0
  loc_B35EF5: LitStr "'"
  loc_B35EF8: ConcatStr
  loc_B35EF9: FStStrNoPop var_C4
  loc_B35EFC: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_B35F01: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B35F1E: FLdRfVar var_C8
  loc_B35F21: FMemLdPr
  loc_B35F26:  = Me.RecordCount
  loc_B35F2B: ILdRf var_C8
  loc_B35F2E: LitI4 0
  loc_B35F33: GtI4
  loc_B35F34: BranchF loc_B3670F
  loc_B35F37: LitStr vbNullString
  loc_B35F3A: ILdPr
  loc_B35F3D: Call tblnpxpartorga.MsgErrorPut(from_stack_1v)
  loc_B35F42: FLdRfVar var_F0
  loc_B35F45: FLdRfVar var_E0
  loc_B35F48: LitVarStr var_DC, "PeriInfo"
  loc_B35F4D: PopAdLdVar
  loc_B35F4E: FLdRfVar var_CC
  loc_B35F51: FMemLdPr
  loc_B35F56:  = Me.Fields
  loc_B35F5B: FLdPr var_CC
  loc_B35F5E: from_stack_2 = Me.Item(from_stack_1)
  loc_B35F63: FLdPr var_E0
  loc_B35F66:  = Me.Value
  loc_B35F6B: FLdRfVar var_F0
  loc_B35F6E: CStrVarTmp
  loc_B35F6F: FStStrNoPop var_94
  loc_B35F72: ILdPr
  loc_B35F75: Call tblnpxpartorga.PeriInfoPut(from_stack_1v)
  loc_B35F7A: FFree1Str var_94
  loc_B35F7D: FFreeAd var_CC = ""
  loc_B35F84: FFree1Var var_F0 = ""
  loc_B35F87: FLdRfVar var_F0
  loc_B35F8A: FLdRfVar var_E0
  loc_B35F8D: LitVarStr var_DC, "CodiPart"
  loc_B35F92: PopAdLdVar
  loc_B35F93: FLdRfVar var_CC
  loc_B35F96: FMemLdPr
  loc_B35F9B:  = Me.Fields
  loc_B35FA0: FLdPr var_CC
  loc_B35FA3: from_stack_2 = Me.Item(from_stack_1)
  loc_B35FA8: FLdPr var_E0
  loc_B35FAB:  = Me.Value
  loc_B35FB0: FLdRfVar var_F0
  loc_B35FB3: CStrVarTmp
  loc_B35FB4: FStStrNoPop var_94
  loc_B35FB7: ILdPr
  loc_B35FBA: Call tblnpxpartorga.CodiPartPut(from_stack_1v)
  loc_B35FBF: FFree1Str var_94
  loc_B35FC2: FFreeAd var_CC = ""
  loc_B35FC9: FFree1Var var_F0 = ""
  loc_B35FCC: FLdRfVar var_F0
  loc_B35FCF: FLdRfVar var_E0
  loc_B35FD2: LitVarStr var_DC, "DetaPart"
  loc_B35FD7: PopAdLdVar
  loc_B35FD8: FLdRfVar var_CC
  loc_B35FDB: FMemLdPr
  loc_B35FE0:  = Me.Fields
  loc_B35FE5: FLdPr var_CC
  loc_B35FE8: from_stack_2 = Me.Item(from_stack_1)
  loc_B35FED: FLdPr var_E0
  loc_B35FF0:  = Me.Value
  loc_B35FF5: FLdRfVar var_F0
  loc_B35FF8: CStrVarTmp
  loc_B35FF9: FStStrNoPop var_94
  loc_B35FFC: ILdPr
  loc_B35FFF: Call tblnpxpartorga.DetaPartPut(from_stack_1v)
  loc_B36004: FFree1Str var_94
  loc_B36007: FFreeAd var_CC = ""
  loc_B3600E: FFree1Var var_F0 = ""
  loc_B36011: FLdRfVar var_F0
  loc_B36014: FLdRfVar var_E0
  loc_B36017: LitVarStr var_DC, "CodiOrga"
  loc_B3601C: PopAdLdVar
  loc_B3601D: FLdRfVar var_CC
  loc_B36020: FMemLdPr
  loc_B36025:  = Me.Fields
  loc_B3602A: FLdPr var_CC
  loc_B3602D: from_stack_2 = Me.Item(from_stack_1)
  loc_B36032: FLdPr var_E0
  loc_B36035:  = Me.Value
  loc_B3603A: FLdRfVar var_F0
  loc_B3603D: CStrVarTmp
  loc_B3603E: FStStrNoPop var_94
  loc_B36041: ILdPr
  loc_B36044: Call tblnpxpartorga.CodiOrgaPut(from_stack_1v)
  loc_B36049: FFree1Str var_94
  loc_B3604C: FFreeAd var_CC = ""
  loc_B36053: FFree1Var var_F0 = ""
  loc_B36056: FLdRfVar var_F0
  loc_B36059: FLdRfVar var_E0
  loc_B3605C: LitVarStr var_DC, "DetaOrga"
  loc_B36061: PopAdLdVar
  loc_B36062: FLdRfVar var_CC
  loc_B36065: FMemLdPr
  loc_B3606A:  = Me.Fields
  loc_B3606F: FLdPr var_CC
  loc_B36072: from_stack_2 = Me.Item(from_stack_1)
  loc_B36077: FLdPr var_E0
  loc_B3607A:  = Me.Value
  loc_B3607F: FLdRfVar var_F0
  loc_B36082: CStrVarTmp
  loc_B36083: FStStrNoPop var_94
  loc_B36086: ILdPr
  loc_B36089: Call tblnpxpartorga.DetaOrgaPut(from_stack_1v)
  loc_B3608E: FFree1Str var_94
  loc_B36091: FFreeAd var_CC = ""
  loc_B36098: FFree1Var var_F0 = ""
  loc_B3609B: FLdRfVar var_F0
  loc_B3609E: FLdRfVar var_E0
  loc_B360A1: LitVarStr var_DC, "Impo01"
  loc_B360A6: PopAdLdVar
  loc_B360A7: FLdRfVar var_CC
  loc_B360AA: FMemLdPr
  loc_B360AF:  = Me.Fields
  loc_B360B4: FLdPr var_CC
  loc_B360B7: from_stack_2 = Me.Item(from_stack_1)
  loc_B360BC: FLdPr var_E0
  loc_B360BF:  = Me.Value
  loc_B360C4: FLdRfVar var_F0
  loc_B360C7: CStrVarTmp
  loc_B360C8: FStStrNoPop var_94
  loc_B360CB: ILdPr
  loc_B360CE: Call tblnpxpartorga.Impo01Put(from_stack_1v)
  loc_B360D3: FFree1Str var_94
  loc_B360D6: FFreeAd var_CC = ""
  loc_B360DD: FFree1Var var_F0 = ""
  loc_B360E0: FLdRfVar var_F0
  loc_B360E3: FLdRfVar var_E0
  loc_B360E6: LitVarStr var_DC, "Impo02"
  loc_B360EB: PopAdLdVar
  loc_B360EC: FLdRfVar var_CC
  loc_B360EF: FMemLdPr
  loc_B360F4:  = Me.Fields
  loc_B360F9: FLdPr var_CC
  loc_B360FC: from_stack_2 = Me.Item(from_stack_1)
  loc_B36101: FLdPr var_E0
  loc_B36104:  = Me.Value
  loc_B36109: FLdRfVar var_F0
  loc_B3610C: CStrVarTmp
  loc_B3610D: FStStrNoPop var_94
  loc_B36110: ILdPr
  loc_B36113: Call tblnpxpartorga.Impo02Put(from_stack_1v)
  loc_B36118: FFree1Str var_94
  loc_B3611B: FFreeAd var_CC = ""
  loc_B36122: FFree1Var var_F0 = ""
  loc_B36125: FLdRfVar var_F0
  loc_B36128: FLdRfVar var_E0
  loc_B3612B: LitVarStr var_DC, "Impo03"
  loc_B36130: PopAdLdVar
  loc_B36131: FLdRfVar var_CC
  loc_B36134: FMemLdPr
  loc_B36139:  = Me.Fields
  loc_B3613E: FLdPr var_CC
  loc_B36141: from_stack_2 = Me.Item(from_stack_1)
  loc_B36146: FLdPr var_E0
  loc_B36149:  = Me.Value
  loc_B3614E: FLdRfVar var_F0
  loc_B36151: CStrVarTmp
  loc_B36152: FStStrNoPop var_94
  loc_B36155: ILdPr
  loc_B36158: Call tblnpxpartorga.Impo03Put(from_stack_1v)
  loc_B3615D: FFree1Str var_94
  loc_B36160: FFreeAd var_CC = ""
  loc_B36167: FFree1Var var_F0 = ""
  loc_B3616A: FLdRfVar var_F0
  loc_B3616D: FLdRfVar var_E0
  loc_B36170: LitVarStr var_DC, "Impo04"
  loc_B36175: PopAdLdVar
  loc_B36176: FLdRfVar var_CC
  loc_B36179: FMemLdPr
  loc_B3617E:  = Me.Fields
  loc_B36183: FLdPr var_CC
  loc_B36186: from_stack_2 = Me.Item(from_stack_1)
  loc_B3618B: FLdPr var_E0
  loc_B3618E:  = Me.Value
  loc_B36193: FLdRfVar var_F0
  loc_B36196: CStrVarTmp
  loc_B36197: FStStrNoPop var_94
  loc_B3619A: ILdPr
  loc_B3619D: Call tblnpxpartorga.Impo04Put(from_stack_1v)
  loc_B361A2: FFree1Str var_94
  loc_B361A5: FFreeAd var_CC = ""
  loc_B361AC: FFree1Var var_F0 = ""
  loc_B361AF: FLdRfVar var_F0
  loc_B361B2: FLdRfVar var_E0
  loc_B361B5: LitVarStr var_DC, "Impo05"
  loc_B361BA: PopAdLdVar
  loc_B361BB: FLdRfVar var_CC
  loc_B361BE: FMemLdPr
  loc_B361C3:  = Me.Fields
  loc_B361C8: FLdPr var_CC
  loc_B361CB: from_stack_2 = Me.Item(from_stack_1)
  loc_B361D0: FLdPr var_E0
  loc_B361D3:  = Me.Value
  loc_B361D8: FLdRfVar var_F0
  loc_B361DB: CStrVarTmp
  loc_B361DC: FStStrNoPop var_94
  loc_B361DF: ILdPr
  loc_B361E2: Call tblnpxpartorga.Impo05Put(from_stack_1v)
  loc_B361E7: FFree1Str var_94
  loc_B361EA: FFreeAd var_CC = ""
  loc_B361F1: FFree1Var var_F0 = ""
  loc_B361F4: FLdRfVar var_F0
  loc_B361F7: FLdRfVar var_E0
  loc_B361FA: LitVarStr var_DC, "Impo06"
  loc_B361FF: PopAdLdVar
  loc_B36200: FLdRfVar var_CC
  loc_B36203: FMemLdPr
  loc_B36208:  = Me.Fields
  loc_B3620D: FLdPr var_CC
  loc_B36210: from_stack_2 = Me.Item(from_stack_1)
  loc_B36215: FLdPr var_E0
  loc_B36218:  = Me.Value
  loc_B3621D: FLdRfVar var_F0
  loc_B36220: CStrVarTmp
  loc_B36221: FStStrNoPop var_94
  loc_B36224: ILdPr
  loc_B36227: Call tblnpxpartorga.Impo06Put(from_stack_1v)
  loc_B3622C: FFree1Str var_94
  loc_B3622F: FFreeAd var_CC = ""
  loc_B36236: FFree1Var var_F0 = ""
  loc_B36239: FLdRfVar var_F0
  loc_B3623C: FLdRfVar var_E0
  loc_B3623F: LitVarStr var_DC, "Impo07"
  loc_B36244: PopAdLdVar
  loc_B36245: FLdRfVar var_CC
  loc_B36248: FMemLdPr
  loc_B3624D:  = Me.Fields
  loc_B36252: FLdPr var_CC
  loc_B36255: from_stack_2 = Me.Item(from_stack_1)
  loc_B3625A: FLdPr var_E0
  loc_B3625D:  = Me.Value
  loc_B36262: FLdRfVar var_F0
  loc_B36265: CStrVarTmp
  loc_B36266: FStStrNoPop var_94
  loc_B36269: ILdPr
  loc_B3626C: Call tblnpxpartorga.Impo07Put(from_stack_1v)
  loc_B36271: FFree1Str var_94
  loc_B36274: FFreeAd var_CC = ""
  loc_B3627B: FFree1Var var_F0 = ""
  loc_B3627E: FLdRfVar var_F0
  loc_B36281: FLdRfVar var_E0
  loc_B36284: LitVarStr var_DC, "Impo08"
  loc_B36289: PopAdLdVar
  loc_B3628A: FLdRfVar var_CC
  loc_B3628D: FMemLdPr
  loc_B36292:  = Me.Fields
  loc_B36297: FLdPr var_CC
  loc_B3629A: from_stack_2 = Me.Item(from_stack_1)
  loc_B3629F: FLdPr var_E0
  loc_B362A2:  = Me.Value
  loc_B362A7: FLdRfVar var_F0
  loc_B362AA: CStrVarTmp
  loc_B362AB: FStStrNoPop var_94
  loc_B362AE: ILdPr
  loc_B362B1: Call tblnpxpartorga.Impo08Put(from_stack_1v)
  loc_B362B6: FFree1Str var_94
  loc_B362B9: FFreeAd var_CC = ""
  loc_B362C0: FFree1Var var_F0 = ""
  loc_B362C3: FLdRfVar var_F0
  loc_B362C6: FLdRfVar var_E0
  loc_B362C9: LitVarStr var_DC, "Impo09"
  loc_B362CE: PopAdLdVar
  loc_B362CF: FLdRfVar var_CC
  loc_B362D2: FMemLdPr
  loc_B362D7:  = Me.Fields
  loc_B362DC: FLdPr var_CC
  loc_B362DF: from_stack_2 = Me.Item(from_stack_1)
  loc_B362E4: FLdPr var_E0
  loc_B362E7:  = Me.Value
  loc_B362EC: FLdRfVar var_F0
  loc_B362EF: CStrVarTmp
  loc_B362F0: FStStrNoPop var_94
  loc_B362F3: ILdPr
  loc_B362F6: Call tblnpxpartorga.Impo09Put(from_stack_1v)
  loc_B362FB: FFree1Str var_94
  loc_B362FE: FFreeAd var_CC = ""
  loc_B36305: FFree1Var var_F0 = ""
  loc_B36308: FLdRfVar var_F0
  loc_B3630B: FLdRfVar var_E0
  loc_B3630E: LitVarStr var_DC, "Impo10"
  loc_B36313: PopAdLdVar
  loc_B36314: FLdRfVar var_CC
  loc_B36317: FMemLdPr
  loc_B3631C:  = Me.Fields
  loc_B36321: FLdPr var_CC
  loc_B36324: from_stack_2 = Me.Item(from_stack_1)
  loc_B36329: FLdPr var_E0
  loc_B3632C:  = Me.Value
  loc_B36331: FLdRfVar var_F0
  loc_B36334: CStrVarTmp
  loc_B36335: FStStrNoPop var_94
  loc_B36338: ILdPr
  loc_B3633B: Call tblnpxpartorga.Impo10Put(from_stack_1v)
  loc_B36340: FFree1Str var_94
  loc_B36343: FFreeAd var_CC = ""
  loc_B3634A: FFree1Var var_F0 = ""
  loc_B3634D: FLdRfVar var_F0
  loc_B36350: FLdRfVar var_E0
  loc_B36353: LitVarStr var_DC, "Impo11"
  loc_B36358: PopAdLdVar
  loc_B36359: FLdRfVar var_CC
  loc_B3635C: FMemLdPr
  loc_B36361:  = Me.Fields
  loc_B36366: FLdPr var_CC
  loc_B36369: from_stack_2 = Me.Item(from_stack_1)
  loc_B3636E: FLdPr var_E0
  loc_B36371:  = Me.Value
  loc_B36376: FLdRfVar var_F0
  loc_B36379: CStrVarTmp
  loc_B3637A: FStStrNoPop var_94
  loc_B3637D: ILdPr
  loc_B36380: Call tblnpxpartorga.Impo11Put(from_stack_1v)
  loc_B36385: FFree1Str var_94
  loc_B36388: FFreeAd var_CC = ""
  loc_B3638F: FFree1Var var_F0 = ""
  loc_B36392: FLdRfVar var_F0
  loc_B36395: FLdRfVar var_E0
  loc_B36398: LitVarStr var_DC, "Impo12"
  loc_B3639D: PopAdLdVar
  loc_B3639E: FLdRfVar var_CC
  loc_B363A1: FMemLdPr
  loc_B363A6:  = Me.Fields
  loc_B363AB: FLdPr var_CC
  loc_B363AE: from_stack_2 = Me.Item(from_stack_1)
  loc_B363B3: FLdPr var_E0
  loc_B363B6:  = Me.Value
  loc_B363BB: FLdRfVar var_F0
  loc_B363BE: CStrVarTmp
  loc_B363BF: FStStrNoPop var_94
  loc_B363C2: ILdPr
  loc_B363C5: Call tblnpxpartorga.Impo12Put(from_stack_1v)
  loc_B363CA: FFree1Str var_94
  loc_B363CD: FFreeAd var_CC = ""
  loc_B363D4: FFree1Var var_F0 = ""
  loc_B363D7: FLdRfVar var_F0
  loc_B363DA: FLdRfVar var_E0
  loc_B363DD: LitVarStr var_DC, "AltaUsua"
  loc_B363E2: PopAdLdVar
  loc_B363E3: FLdRfVar var_CC
  loc_B363E6: FMemLdPr
  loc_B363EB:  = Me.Fields
  loc_B363F0: FLdPr var_CC
  loc_B363F3: from_stack_2 = Me.Item(from_stack_1)
  loc_B363F8: FLdPr var_E0
  loc_B363FB:  = Me.Value
  loc_B36400: FLdRfVar var_F0
  loc_B36403: CStrVarTmp
  loc_B36404: FStStrNoPop var_94
  loc_B36407: ILdPr
  loc_B3640A: Call tblnpxpartorga.AltaUsuaPut(from_stack_1v)
  loc_B3640F: FFree1Str var_94
  loc_B36412: FFreeAd var_CC = ""
  loc_B36419: FFree1Var var_F0 = ""
  loc_B3641C: FLdRfVar var_F0
  loc_B3641F: FLdRfVar var_E0
  loc_B36422: LitVarStr var_DC, "AltaDeta"
  loc_B36427: PopAdLdVar
  loc_B36428: FLdRfVar var_CC
  loc_B3642B: FMemLdPr
  loc_B36430:  = Me.Fields
  loc_B36435: FLdPr var_CC
  loc_B36438: from_stack_2 = Me.Item(from_stack_1)
  loc_B3643D: FLdPr var_E0
  loc_B36440:  = Me.Value
  loc_B36445: FLdRfVar var_F0
  loc_B36448: CStrVarTmp
  loc_B36449: FStStrNoPop var_94
  loc_B3644C: ILdPr
  loc_B3644F: Call tblnpxpartorga.AltaDetaPut(from_stack_1v)
  loc_B36454: FFree1Str var_94
  loc_B36457: FFreeAd var_CC = ""
  loc_B3645E: FFree1Var var_F0 = ""
  loc_B36461: FLdRfVar var_F0
  loc_B36464: FLdRfVar var_E0
  loc_B36467: LitVarStr var_DC, "AltaFeho"
  loc_B3646C: PopAdLdVar
  loc_B3646D: FLdRfVar var_CC
  loc_B36470: FMemLdPr
  loc_B36475:  = Me.Fields
  loc_B3647A: FLdPr var_CC
  loc_B3647D: from_stack_2 = Me.Item(from_stack_1)
  loc_B36482: FLdPr var_E0
  loc_B36485:  = Me.Value
  loc_B3648A: FLdRfVar var_128
  loc_B3648D: LitVarStr var_124, "AltaFeho"
  loc_B36492: PopAdLdVar
  loc_B36493: FLdRfVar var_114
  loc_B36496: FMemLdPr
  loc_B3649B:  = Me.Fields
  loc_B364A0: FLdPr var_114
  loc_B364A3: from_stack_2 = Me.Item(from_stack_1)
  loc_B364A8: LitVarStr var_158, vbNullString
  loc_B364AD: FStVarCopyObj var_168
  loc_B364B0: FLdRfVar var_168
  loc_B364B3: FLdZeroAd var_128
  loc_B364B6: CVarAd
  loc_B364BA: FLdRfVar var_F0
  loc_B364BD: LitVarStr var_100, vbNullString
  loc_B364C2: HardType
  loc_B364C3: NeVar var_110
  loc_B364C7: FStVar var_138
  loc_B364CB: FLdRfVar var_138
  loc_B364CE: FLdRfVar var_178
  loc_B364D1: ImpAdCallFPR4  = IIf(, , )
  loc_B364D6: FLdRfVar var_178
  loc_B364D9: CStrVarVal var_94
  loc_B364DD: ILdPr
  loc_B364E0: Call tblnpxpartorga.AltaFehoPut(from_stack_1v)
  loc_B364E5: FFree1Str var_94
  loc_B364E8: FFreeAd var_CC = "": var_E0 = ""
  loc_B364F1: FFreeVar var_F0 = "": var_138 = "": var_148 = "": var_168 = ""
  loc_B364FE: FLdRfVar var_F0
  loc_B36501: FLdRfVar var_E0
  loc_B36504: LitVarStr var_DC, "ModiUsua"
  loc_B36509: PopAdLdVar
  loc_B3650A: FLdRfVar var_CC
  loc_B3650D: FMemLdPr
  loc_B36512:  = Me.Fields
  loc_B36517: FLdPr var_CC
  loc_B3651A: from_stack_2 = Me.Item(from_stack_1)
  loc_B3651F: FLdPr var_E0
  loc_B36522:  = Me.Value
  loc_B36527: FLdRfVar var_F0
  loc_B3652A: CStrVarTmp
  loc_B3652B: FStStrNoPop var_94
  loc_B3652E: ILdPr
  loc_B36531: Call tblnpxpartorga.ModiUsuaPut(from_stack_1v)
  loc_B36536: FFree1Str var_94
  loc_B36539: FFreeAd var_CC = ""
  loc_B36540: FFree1Var var_F0 = ""
  loc_B36543: FLdRfVar var_F0
  loc_B36546: FLdRfVar var_E0
  loc_B36549: LitVarStr var_DC, "ModiFeho"
  loc_B3654E: PopAdLdVar
  loc_B3654F: FLdRfVar var_CC
  loc_B36552: FMemLdPr
  loc_B36557:  = Me.Fields
  loc_B3655C: FLdPr var_CC
  loc_B3655F: from_stack_2 = Me.Item(from_stack_1)
  loc_B36564: FLdPr var_E0
  loc_B36567:  = Me.Value
  loc_B3656C: FLdRfVar var_128
  loc_B3656F: LitVarStr var_124, "ModiFeho"
  loc_B36574: PopAdLdVar
  loc_B36575: FLdRfVar var_114
  loc_B36578: FMemLdPr
  loc_B3657D:  = Me.Fields
  loc_B36582: FLdPr var_114
  loc_B36585: from_stack_2 = Me.Item(from_stack_1)
  loc_B3658A: LitVarStr var_158, vbNullString
  loc_B3658F: FStVarCopyObj var_168
  loc_B36592: FLdRfVar var_168
  loc_B36595: FLdZeroAd var_128
  loc_B36598: CVarAd
  loc_B3659C: FLdRfVar var_F0
  loc_B3659F: LitVarStr var_100, vbNullString
  loc_B365A4: HardType
  loc_B365A5: NeVar var_110
  loc_B365A9: FStVar var_138
  loc_B365AD: FLdRfVar var_138
  loc_B365B0: FLdRfVar var_178
  loc_B365B3: ImpAdCallFPR4  = IIf(, , )
  loc_B365B8: FLdRfVar var_178
  loc_B365BB: CStrVarVal var_94
  loc_B365BF: ILdPr
  loc_B365C2: Call tblnpxpartorga.ModiFehoPut(from_stack_1v)
  loc_B365C7: FFree1Str var_94
  loc_B365CA: FFreeAd var_CC = "": var_E0 = ""
  loc_B365D3: FFreeVar var_F0 = "": var_138 = "": var_148 = "": var_168 = ""
  loc_B365E0: FLdRfVar var_F0
  loc_B365E3: FLdRfVar var_E0
  loc_B365E6: LitVarStr var_DC, "BajaUsua"
  loc_B365EB: PopAdLdVar
  loc_B365EC: FLdRfVar var_CC
  loc_B365EF: FMemLdPr
  loc_B365F4:  = Me.Fields
  loc_B365F9: FLdPr var_CC
  loc_B365FC: from_stack_2 = Me.Item(from_stack_1)
  loc_B36601: FLdPr var_E0
  loc_B36604:  = Me.Value
  loc_B36609: FLdRfVar var_F0
  loc_B3660C: CStrVarTmp
  loc_B3660D: FStStrNoPop var_94
  loc_B36610: ILdPr
  loc_B36613: Call tblnpxpartorga.BajaUsuaPut(from_stack_1v)
  loc_B36618: FFree1Str var_94
  loc_B3661B: FFreeAd var_CC = ""
  loc_B36622: FFree1Var var_F0 = ""
  loc_B36625: FLdRfVar var_F0
  loc_B36628: FLdRfVar var_E0
  loc_B3662B: LitVarStr var_DC, "BajaFeho"
  loc_B36630: PopAdLdVar
  loc_B36631: FLdRfVar var_CC
  loc_B36634: FMemLdPr
  loc_B36639:  = Me.Fields
  loc_B3663E: FLdPr var_CC
  loc_B36641: from_stack_2 = Me.Item(from_stack_1)
  loc_B36646: FLdPr var_E0
  loc_B36649:  = Me.Value
  loc_B3664E: FLdRfVar var_128
  loc_B36651: LitVarStr var_124, "BajaFeho"
  loc_B36656: PopAdLdVar
  loc_B36657: FLdRfVar var_114
  loc_B3665A: FMemLdPr
  loc_B3665F:  = Me.Fields
  loc_B36664: FLdPr var_114
  loc_B36667: from_stack_2 = Me.Item(from_stack_1)
  loc_B3666C: LitVarStr var_158, vbNullString
  loc_B36671: FStVarCopyObj var_168
  loc_B36674: FLdRfVar var_168
  loc_B36677: FLdZeroAd var_128
  loc_B3667A: CVarAd
  loc_B3667E: FLdRfVar var_F0
  loc_B36681: LitVarStr var_100, vbNullString
  loc_B36686: HardType
  loc_B36687: NeVar var_110
  loc_B3668B: FStVar var_138
  loc_B3668F: FLdRfVar var_138
  loc_B36692: FLdRfVar var_178
  loc_B36695: ImpAdCallFPR4  = IIf(, , )
  loc_B3669A: FLdRfVar var_178
  loc_B3669D: CStrVarVal var_94
  loc_B366A1: ILdPr
  loc_B366A4: Call tblnpxpartorga.BajaFehoPut(from_stack_1v)
  loc_B366A9: FFree1Str var_94
  loc_B366AC: FFreeAd var_CC = "": var_E0 = ""
  loc_B366B5: FFreeVar var_F0 = "": var_138 = "": var_148 = "": var_168 = ""
  loc_B366C2: FLdRfVar var_F0
  loc_B366C5: FLdRfVar var_E0
  loc_B366C8: LitVarStr var_DC, "BajaMoti"
  loc_B366CD: PopAdLdVar
  loc_B366CE: FLdRfVar var_CC
  loc_B366D1: FMemLdPr
  loc_B366D6:  = Me.Fields
  loc_B366DB: FLdPr var_CC
  loc_B366DE: from_stack_2 = Me.Item(from_stack_1)
  loc_B366E3: FLdPr var_E0
  loc_B366E6:  = Me.Value
  loc_B366EB: FLdRfVar var_F0
  loc_B366EE: CStrVarTmp
  loc_B366EF: FStStrNoPop var_94
  loc_B366F2: ILdPr
  loc_B366F5: Call tblnpxpartorga.BajaMotiPut(from_stack_1v)
  loc_B366FA: FFree1Str var_94
  loc_B366FD: FFreeAd var_CC = ""
  loc_B36704: FFree1Var var_F0 = ""
  loc_B36707: LitI2_Byte &HFF
  loc_B36709: FStI2 var_86
  loc_B3670C: Branch loc_B36832
  loc_B3670F: LitStr "El autorizado por Nota de Pedido NO EXISTE. Verifique..."
  loc_B36712: ILdPr
  loc_B36715: Call tblnpxpartorga.MsgErrorPut(from_stack_1v)
  loc_B3671A: LitStr vbNullString
  loc_B3671D: ILdPr
  loc_B36720: Call tblnpxpartorga.PeriInfoPut(from_stack_1v)
  loc_B36725: LitStr vbNullString
  loc_B36728: ILdPr
  loc_B3672B: Call tblnpxpartorga.CodiPartPut(from_stack_1v)
  loc_B36730: LitStr vbNullString
  loc_B36733: ILdPr
  loc_B36736: Call tblnpxpartorga.DetaPartPut(from_stack_1v)
  loc_B3673B: LitStr vbNullString
  loc_B3673E: ILdPr
  loc_B36741: Call tblnpxpartorga.CodiOrgaPut(from_stack_1v)
  loc_B36746: LitStr vbNullString
  loc_B36749: ILdPr
  loc_B3674C: Call tblnpxpartorga.DetaOrgaPut(from_stack_1v)
  loc_B36751: LitStr vbNullString
  loc_B36754: ILdPr
  loc_B36757: Call tblnpxpartorga.Impo01Put(from_stack_1v)
  loc_B3675C: LitStr vbNullString
  loc_B3675F: ILdPr
  loc_B36762: Call tblnpxpartorga.Impo02Put(from_stack_1v)
  loc_B36767: LitStr vbNullString
  loc_B3676A: ILdPr
  loc_B3676D: Call tblnpxpartorga.Impo03Put(from_stack_1v)
  loc_B36772: LitStr vbNullString
  loc_B36775: ILdPr
  loc_B36778: Call tblnpxpartorga.Impo04Put(from_stack_1v)
  loc_B3677D: LitStr vbNullString
  loc_B36780: ILdPr
  loc_B36783: Call tblnpxpartorga.Impo05Put(from_stack_1v)
  loc_B36788: LitStr vbNullString
  loc_B3678B: ILdPr
  loc_B3678E: Call tblnpxpartorga.Impo06Put(from_stack_1v)
  loc_B36793: LitStr vbNullString
  loc_B36796: ILdPr
  loc_B36799: Call tblnpxpartorga.Impo07Put(from_stack_1v)
  loc_B3679E: LitStr vbNullString
  loc_B367A1: ILdPr
  loc_B367A4: Call tblnpxpartorga.Impo08Put(from_stack_1v)
  loc_B367A9: LitStr vbNullString
  loc_B367AC: ILdPr
  loc_B367AF: Call tblnpxpartorga.Impo09Put(from_stack_1v)
  loc_B367B4: LitStr vbNullString
  loc_B367B7: ILdPr
  loc_B367BA: Call tblnpxpartorga.Impo10Put(from_stack_1v)
  loc_B367BF: LitStr vbNullString
  loc_B367C2: ILdPr
  loc_B367C5: Call tblnpxpartorga.Impo11Put(from_stack_1v)
  loc_B367CA: LitStr vbNullString
  loc_B367CD: ILdPr
  loc_B367D0: Call tblnpxpartorga.Impo12Put(from_stack_1v)
  loc_B367D5: LitStr vbNullString
  loc_B367D8: ILdPr
  loc_B367DB: Call tblnpxpartorga.AltaUsuaPut(from_stack_1v)
  loc_B367E0: LitStr vbNullString
  loc_B367E3: ILdPr
  loc_B367E6: Call tblnpxpartorga.AltaDetaPut(from_stack_1v)
  loc_B367EB: LitStr vbNullString
  loc_B367EE: ILdPr
  loc_B367F1: Call tblnpxpartorga.AltaFehoPut(from_stack_1v)
  loc_B367F6: LitStr vbNullString
  loc_B367F9: ILdPr
  loc_B367FC: Call tblnpxpartorga.ModiUsuaPut(from_stack_1v)
  loc_B36801: LitStr vbNullString
  loc_B36804: ILdPr
  loc_B36807: Call tblnpxpartorga.ModiFehoPut(from_stack_1v)
  loc_B3680C: LitStr vbNullString
  loc_B3680F: ILdPr
  loc_B36812: Call tblnpxpartorga.BajaUsuaPut(from_stack_1v)
  loc_B36817: LitStr vbNullString
  loc_B3681A: ILdPr
  loc_B3681D: Call tblnpxpartorga.BajaFehoPut(from_stack_1v)
  loc_B36822: LitStr vbNullString
  loc_B36825: ILdPr
  loc_B36828: Call tblnpxpartorga.BajaMotiPut(from_stack_1v)
  loc_B3682D: LitI2_Byte 0
  loc_B3682F: FStI2 var_86
  loc_B36832: ExitProcI2
End Function

Private Function Proc_259_19_AF8F0C(arg_C, arg_10) 'AF8F0C
  'Data Table: 4569C4
  loc_AF87C0: ILdRf arg_C
  loc_AF87C3: FStStrCopy var_8C
  loc_AF87C6: ILdRf arg_10
  loc_AF87C9: FStStrCopy var_90
  loc_AF87CC: LitStr "SELECT *"
  loc_AF87CF: LitStr " FROM ordenpago"
  loc_AF87D2: ConcatStr
  loc_AF87D3: FStStrNoPop var_94
  loc_AF87D6: LitStr " WHERE PeriInfo = '"
  loc_AF87D9: ConcatStr
  loc_AF87DA: FStStrNoPop var_98
  loc_AF87DD: ILdRf var_8C
  loc_AF87E0: ConcatStr
  loc_AF87E1: FStStrNoPop var_9C
  loc_AF87E4: LitStr "'"
  loc_AF87E7: ConcatStr
  loc_AF87E8: FStStrNoPop var_A0
  loc_AF87EB: LitStr " AND NumeOrpa = '"
  loc_AF87EE: ConcatStr
  loc_AF87EF: FStStrNoPop var_A4
  loc_AF87F2: ILdRf var_90
  loc_AF87F5: ConcatStr
  loc_AF87F6: FStStrNoPop var_A8
  loc_AF87F9: LitStr "';"
  loc_AF87FC: ConcatStr
  loc_AF87FD: FStStrNoPop var_AC
  loc_AF8800: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_AF8805: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AF8816: FLdRfVar var_B0
  loc_AF8819: FMemLdPr
  loc_AF881E:  = Me.RecordCount
  loc_AF8823: ILdRf var_B0
  loc_AF8826: LitI4 0
  loc_AF882B: GtI4
  loc_AF882C: BranchF loc_AF8E4A
  loc_AF882F: LitStr vbNullString
  loc_AF8832: ILdPr
  loc_AF8835: Call tblordenpago.MsgErrorPut(from_stack_1v)
  loc_AF883A: FLdRfVar var_D8
  loc_AF883D: FLdRfVar var_C8
  loc_AF8840: LitVarStr var_C4, "PeriInfo"
  loc_AF8845: PopAdLdVar
  loc_AF8846: FLdRfVar var_B4
  loc_AF8849: FMemLdPr
  loc_AF884E:  = Me.Fields
  loc_AF8853: FLdPr var_B4
  loc_AF8856: from_stack_2 = Me.Item(from_stack_1)
  loc_AF885B: FLdPr var_C8
  loc_AF885E:  = Me.Value
  loc_AF8863: FLdRfVar var_D8
  loc_AF8866: CStrVarTmp
  loc_AF8867: FStStrNoPop var_94
  loc_AF886A: ILdPr
  loc_AF886D: Call tblordenpago.PeriInfoPut(from_stack_1v)
  loc_AF8872: FFree1Str var_94
  loc_AF8875: FFreeAd var_B4 = ""
  loc_AF887C: FFree1Var var_D8 = ""
  loc_AF887F: FLdRfVar var_D8
  loc_AF8882: FLdRfVar var_C8
  loc_AF8885: LitVarStr var_C4, "NumeOrpa"
  loc_AF888A: PopAdLdVar
  loc_AF888B: FLdRfVar var_B4
  loc_AF888E: FMemLdPr
  loc_AF8893:  = Me.Fields
  loc_AF8898: FLdPr var_B4
  loc_AF889B: from_stack_2 = Me.Item(from_stack_1)
  loc_AF88A0: FLdPr var_C8
  loc_AF88A3:  = Me.Value
  loc_AF88A8: FLdRfVar var_D8
  loc_AF88AB: CStrVarTmp
  loc_AF88AC: FStStrNoPop var_94
  loc_AF88AF: ILdPr
  loc_AF88B2: Call tblordenpago.NumeOrpaPut(from_stack_1v)
  loc_AF88B7: FFree1Str var_94
  loc_AF88BA: FFreeAd var_B4 = ""
  loc_AF88C1: FFree1Var var_D8 = ""
  loc_AF88C4: FLdRfVar var_D8
  loc_AF88C7: FLdRfVar var_C8
  loc_AF88CA: LitVarStr var_C4, "ExpeImpu"
  loc_AF88CF: PopAdLdVar
  loc_AF88D0: FLdRfVar var_B4
  loc_AF88D3: FMemLdPr
  loc_AF88D8:  = Me.Fields
  loc_AF88DD: FLdPr var_B4
  loc_AF88E0: from_stack_2 = Me.Item(from_stack_1)
  loc_AF88E5: FLdPr var_C8
  loc_AF88E8:  = Me.Value
  loc_AF88ED: FLdRfVar var_D8
  loc_AF88F0: CStrVarTmp
  loc_AF88F1: FStStrNoPop var_94
  loc_AF88F4: ILdPr
  loc_AF88F7: Call tblordenpago.ExpeImpuPut(from_stack_1v)
  loc_AF88FC: FFree1Str var_94
  loc_AF88FF: FFreeAd var_B4 = ""
  loc_AF8906: FFree1Var var_D8 = ""
  loc_AF8909: FLdRfVar var_D8
  loc_AF890C: FLdRfVar var_C8
  loc_AF890F: LitVarStr var_C4, "NumeLiqu"
  loc_AF8914: PopAdLdVar
  loc_AF8915: FLdRfVar var_B4
  loc_AF8918: FMemLdPr
  loc_AF891D:  = Me.Fields
  loc_AF8922: FLdPr var_B4
  loc_AF8925: from_stack_2 = Me.Item(from_stack_1)
  loc_AF892A: FLdPr var_C8
  loc_AF892D:  = Me.Value
  loc_AF8932: FLdRfVar var_D8
  loc_AF8935: CStrVarTmp
  loc_AF8936: FStStrNoPop var_94
  loc_AF8939: ILdPr
  loc_AF893C: Call tblordenpago.NumeLiquPut(from_stack_1v)
  loc_AF8941: FFree1Str var_94
  loc_AF8944: FFreeAd var_B4 = ""
  loc_AF894B: FFree1Var var_D8 = ""
  loc_AF894E: FLdRfVar var_D8
  loc_AF8951: FLdRfVar var_C8
  loc_AF8954: LitVarStr var_C4, "FechOrpa"
  loc_AF8959: PopAdLdVar
  loc_AF895A: FLdRfVar var_B4
  loc_AF895D: FMemLdPr
  loc_AF8962:  = Me.Fields
  loc_AF8967: FLdPr var_B4
  loc_AF896A: from_stack_2 = Me.Item(from_stack_1)
  loc_AF896F: FLdPr var_C8
  loc_AF8972:  = Me.Value
  loc_AF8977: FLdRfVar var_110
  loc_AF897A: LitVarStr var_10C, "FechOrpa"
  loc_AF897F: PopAdLdVar
  loc_AF8980: FLdRfVar var_FC
  loc_AF8983: FMemLdPr
  loc_AF8988:  = Me.Fields
  loc_AF898D: FLdPr var_FC
  loc_AF8990: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8995: LitVarStr var_140, vbNullString
  loc_AF899A: FStVarCopyObj var_150
  loc_AF899D: FLdRfVar var_150
  loc_AF89A0: FLdZeroAd var_110
  loc_AF89A3: CVarAd
  loc_AF89A7: FLdRfVar var_D8
  loc_AF89AA: LitVarStr var_E8, vbNullString
  loc_AF89AF: HardType
  loc_AF89B0: NeVar var_F8
  loc_AF89B4: FStVar var_120
  loc_AF89B8: FLdRfVar var_120
  loc_AF89BB: FLdRfVar var_160
  loc_AF89BE: ImpAdCallFPR4  = IIf(, , )
  loc_AF89C3: FLdRfVar var_160
  loc_AF89C6: CStrVarVal var_94
  loc_AF89CA: ILdPr
  loc_AF89CD: Call tblordenpago.FechOrpaPut(from_stack_1v)
  loc_AF89D2: FFree1Str var_94
  loc_AF89D5: FFreeAd var_B4 = "": var_C8 = ""
  loc_AF89DE: FFreeVar var_D8 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_AF89EB: FLdRfVar var_D8
  loc_AF89EE: FLdRfVar var_C8
  loc_AF89F1: LitVarStr var_C4, "DetaOrpa"
  loc_AF89F6: PopAdLdVar
  loc_AF89F7: FLdRfVar var_B4
  loc_AF89FA: FMemLdPr
  loc_AF89FF:  = Me.Fields
  loc_AF8A04: FLdPr var_B4
  loc_AF8A07: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8A0C: FLdPr var_C8
  loc_AF8A0F:  = Me.Value
  loc_AF8A14: FLdRfVar var_D8
  loc_AF8A17: CStrVarTmp
  loc_AF8A18: FStStrNoPop var_94
  loc_AF8A1B: ILdPr
  loc_AF8A1E: Call tblordenpago.DetaOrpaPut(from_stack_1v)
  loc_AF8A23: FFree1Str var_94
  loc_AF8A26: FFreeAd var_B4 = ""
  loc_AF8A2D: FFree1Var var_D8 = ""
  loc_AF8A30: FLdRfVar var_D8
  loc_AF8A33: FLdRfVar var_C8
  loc_AF8A36: LitVarStr var_C4, "FereOrpa"
  loc_AF8A3B: PopAdLdVar
  loc_AF8A3C: FLdRfVar var_B4
  loc_AF8A3F: FMemLdPr
  loc_AF8A44:  = Me.Fields
  loc_AF8A49: FLdPr var_B4
  loc_AF8A4C: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8A51: FLdPr var_C8
  loc_AF8A54:  = Me.Value
  loc_AF8A59: FLdRfVar var_110
  loc_AF8A5C: LitVarStr var_10C, "FereOrpa"
  loc_AF8A61: PopAdLdVar
  loc_AF8A62: FLdRfVar var_FC
  loc_AF8A65: FMemLdPr
  loc_AF8A6A:  = Me.Fields
  loc_AF8A6F: FLdPr var_FC
  loc_AF8A72: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8A77: LitVarStr var_140, vbNullString
  loc_AF8A7C: FStVarCopyObj var_150
  loc_AF8A7F: FLdRfVar var_150
  loc_AF8A82: FLdZeroAd var_110
  loc_AF8A85: CVarAd
  loc_AF8A89: FLdRfVar var_D8
  loc_AF8A8C: LitVarStr var_E8, vbNullString
  loc_AF8A91: HardType
  loc_AF8A92: NeVar var_F8
  loc_AF8A96: FStVar var_120
  loc_AF8A9A: FLdRfVar var_120
  loc_AF8A9D: FLdRfVar var_160
  loc_AF8AA0: ImpAdCallFPR4  = IIf(, , )
  loc_AF8AA5: FLdRfVar var_160
  loc_AF8AA8: CStrVarVal var_94
  loc_AF8AAC: ILdPr
  loc_AF8AAF: Call tblordenpago.FereOrpaPut(from_stack_1v)
  loc_AF8AB4: FFree1Str var_94
  loc_AF8AB7: FFreeAd var_B4 = "": var_C8 = ""
  loc_AF8AC0: FFreeVar var_D8 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_AF8ACD: FLdRfVar var_D8
  loc_AF8AD0: FLdRfVar var_C8
  loc_AF8AD3: LitVarStr var_C4, "FearOrpa"
  loc_AF8AD8: PopAdLdVar
  loc_AF8AD9: FLdRfVar var_B4
  loc_AF8ADC: FMemLdPr
  loc_AF8AE1:  = Me.Fields
  loc_AF8AE6: FLdPr var_B4
  loc_AF8AE9: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8AEE: FLdPr var_C8
  loc_AF8AF1:  = Me.Value
  loc_AF8AF6: FLdRfVar var_110
  loc_AF8AF9: LitVarStr var_10C, "FearOrpa"
  loc_AF8AFE: PopAdLdVar
  loc_AF8AFF: FLdRfVar var_FC
  loc_AF8B02: FMemLdPr
  loc_AF8B07:  = Me.Fields
  loc_AF8B0C: FLdPr var_FC
  loc_AF8B0F: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8B14: LitVarStr var_140, vbNullString
  loc_AF8B19: FStVarCopyObj var_150
  loc_AF8B1C: FLdRfVar var_150
  loc_AF8B1F: FLdZeroAd var_110
  loc_AF8B22: CVarAd
  loc_AF8B26: FLdRfVar var_D8
  loc_AF8B29: LitVarStr var_E8, vbNullString
  loc_AF8B2E: HardType
  loc_AF8B2F: NeVar var_F8
  loc_AF8B33: FStVar var_120
  loc_AF8B37: FLdRfVar var_120
  loc_AF8B3A: FLdRfVar var_160
  loc_AF8B3D: ImpAdCallFPR4  = IIf(, , )
  loc_AF8B42: FLdRfVar var_160
  loc_AF8B45: CStrVarVal var_94
  loc_AF8B49: ILdPr
  loc_AF8B4C: Call tblordenpago.FearOrpaPut(from_stack_1v)
  loc_AF8B51: FFree1Str var_94
  loc_AF8B54: FFreeAd var_B4 = "": var_C8 = ""
  loc_AF8B5D: FFreeVar var_D8 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_AF8B6A: FLdRfVar var_D8
  loc_AF8B6D: FLdRfVar var_C8
  loc_AF8B70: LitVarStr var_C4, "ArchOrpa"
  loc_AF8B75: PopAdLdVar
  loc_AF8B76: FLdRfVar var_B4
  loc_AF8B79: FMemLdPr
  loc_AF8B7E:  = Me.Fields
  loc_AF8B83: FLdPr var_B4
  loc_AF8B86: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8B8B: FLdPr var_C8
  loc_AF8B8E:  = Me.Value
  loc_AF8B93: FLdRfVar var_D8
  loc_AF8B96: CStrVarTmp
  loc_AF8B97: FStStrNoPop var_94
  loc_AF8B9A: ILdPr
  loc_AF8B9D: Call tblordenpago.ArchOrpaPut(from_stack_1v)
  loc_AF8BA2: FFree1Str var_94
  loc_AF8BA5: FFreeAd var_B4 = ""
  loc_AF8BAC: FFree1Var var_D8 = ""
  loc_AF8BAF: FLdRfVar var_D8
  loc_AF8BB2: FLdRfVar var_C8
  loc_AF8BB5: LitVarStr var_C4, "FojaOrpa"
  loc_AF8BBA: PopAdLdVar
  loc_AF8BBB: FLdRfVar var_B4
  loc_AF8BBE: FMemLdPr
  loc_AF8BC3:  = Me.Fields
  loc_AF8BC8: FLdPr var_B4
  loc_AF8BCB: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8BD0: FLdPr var_C8
  loc_AF8BD3:  = Me.Value
  loc_AF8BD8: FLdRfVar var_D8
  loc_AF8BDB: CStrVarTmp
  loc_AF8BDC: FStStrNoPop var_94
  loc_AF8BDF: ILdPr
  loc_AF8BE2: Call tblordenpago.FojaOrpaPut(from_stack_1v)
  loc_AF8BE7: FFree1Str var_94
  loc_AF8BEA: FFreeAd var_B4 = ""
  loc_AF8BF1: FFree1Var var_D8 = ""
  loc_AF8BF4: FLdRfVar var_D8
  loc_AF8BF7: FLdRfVar var_C8
  loc_AF8BFA: LitVarStr var_C4, "FeanOrpa"
  loc_AF8BFF: PopAdLdVar
  loc_AF8C00: FLdRfVar var_B4
  loc_AF8C03: FMemLdPr
  loc_AF8C08:  = Me.Fields
  loc_AF8C0D: FLdPr var_B4
  loc_AF8C10: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8C15: FLdPr var_C8
  loc_AF8C18:  = Me.Value
  loc_AF8C1D: FLdRfVar var_110
  loc_AF8C20: LitVarStr var_10C, "FeanOrpa"
  loc_AF8C25: PopAdLdVar
  loc_AF8C26: FLdRfVar var_FC
  loc_AF8C29: FMemLdPr
  loc_AF8C2E:  = Me.Fields
  loc_AF8C33: FLdPr var_FC
  loc_AF8C36: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8C3B: LitVarStr var_140, vbNullString
  loc_AF8C40: FStVarCopyObj var_150
  loc_AF8C43: FLdRfVar var_150
  loc_AF8C46: FLdZeroAd var_110
  loc_AF8C49: CVarAd
  loc_AF8C4D: FLdRfVar var_D8
  loc_AF8C50: LitVarStr var_E8, vbNullString
  loc_AF8C55: HardType
  loc_AF8C56: NeVar var_F8
  loc_AF8C5A: FStVar var_120
  loc_AF8C5E: FLdRfVar var_120
  loc_AF8C61: FLdRfVar var_160
  loc_AF8C64: ImpAdCallFPR4  = IIf(, , )
  loc_AF8C69: FLdRfVar var_160
  loc_AF8C6C: CStrVarVal var_94
  loc_AF8C70: ILdPr
  loc_AF8C73: Call tblordenpago.FeanOrpaPut(from_stack_1v)
  loc_AF8C78: FFree1Str var_94
  loc_AF8C7B: FFreeAd var_B4 = "": var_C8 = ""
  loc_AF8C84: FFreeVar var_D8 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_AF8C91: FLdRfVar var_D8
  loc_AF8C94: FLdRfVar var_C8
  loc_AF8C97: LitVarStr var_C4, "BajaMoti"
  loc_AF8C9C: PopAdLdVar
  loc_AF8C9D: FLdRfVar var_B4
  loc_AF8CA0: FMemLdPr
  loc_AF8CA5:  = Me.Fields
  loc_AF8CAA: FLdPr var_B4
  loc_AF8CAD: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8CB2: FLdPr var_C8
  loc_AF8CB5:  = Me.Value
  loc_AF8CBA: FLdRfVar var_D8
  loc_AF8CBD: CStrVarTmp
  loc_AF8CBE: FStStrNoPop var_94
  loc_AF8CC1: ILdPr
  loc_AF8CC4: Call tblordenpago.BajaMotiPut(from_stack_1v)
  loc_AF8CC9: FFree1Str var_94
  loc_AF8CCC: FFreeAd var_B4 = ""
  loc_AF8CD3: FFree1Var var_D8 = ""
  loc_AF8CD6: FLdRfVar var_D8
  loc_AF8CD9: FLdRfVar var_C8
  loc_AF8CDC: LitVarStr var_C4, "TipoOrpa"
  loc_AF8CE1: PopAdLdVar
  loc_AF8CE2: FLdRfVar var_B4
  loc_AF8CE5: FMemLdPr
  loc_AF8CEA:  = Me.Fields
  loc_AF8CEF: FLdPr var_B4
  loc_AF8CF2: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8CF7: FLdPr var_C8
  loc_AF8CFA:  = Me.Value
  loc_AF8CFF: FLdRfVar var_D8
  loc_AF8D02: CStrVarTmp
  loc_AF8D03: FStStrNoPop var_94
  loc_AF8D06: ILdPr
  loc_AF8D09: Call tblordenpago.TipoOrpaPut(from_stack_1v)
  loc_AF8D0E: FFree1Str var_94
  loc_AF8D11: FFreeAd var_B4 = ""
  loc_AF8D18: FFree1Var var_D8 = ""
  loc_AF8D1B: FLdRfVar var_D8
  loc_AF8D1E: FLdRfVar var_C8
  loc_AF8D21: LitVarStr var_C4, "ChunOrpa"
  loc_AF8D26: PopAdLdVar
  loc_AF8D27: FLdRfVar var_B4
  loc_AF8D2A: FMemLdPr
  loc_AF8D2F:  = Me.Fields
  loc_AF8D34: FLdPr var_B4
  loc_AF8D37: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8D3C: FLdPr var_C8
  loc_AF8D3F:  = Me.Value
  loc_AF8D44: FLdRfVar var_D8
  loc_AF8D47: CStrVarTmp
  loc_AF8D48: FStStrNoPop var_94
  loc_AF8D4B: ILdPr
  loc_AF8D4E: Call tblordenpago.ChunOrpaPut(from_stack_1v)
  loc_AF8D53: FFree1Str var_94
  loc_AF8D56: FFreeAd var_B4 = ""
  loc_AF8D5D: FFree1Var var_D8 = ""
  loc_AF8D60: FLdRfVar var_D8
  loc_AF8D63: FLdRfVar var_C8
  loc_AF8D66: LitVarStr var_C4, "AltaUsua"
  loc_AF8D6B: PopAdLdVar
  loc_AF8D6C: FLdRfVar var_B4
  loc_AF8D6F: FMemLdPr
  loc_AF8D74:  = Me.Fields
  loc_AF8D79: FLdPr var_B4
  loc_AF8D7C: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8D81: FLdPr var_C8
  loc_AF8D84:  = Me.Value
  loc_AF8D89: FLdRfVar var_D8
  loc_AF8D8C: CStrVarTmp
  loc_AF8D8D: FStStrNoPop var_94
  loc_AF8D90: ILdPr
  loc_AF8D93: Call tblordenpago.AltaUsuaPut(from_stack_1v)
  loc_AF8D98: FFree1Str var_94
  loc_AF8D9B: FFreeAd var_B4 = ""
  loc_AF8DA2: FFree1Var var_D8 = ""
  loc_AF8DA5: FLdRfVar var_D8
  loc_AF8DA8: FLdRfVar var_C8
  loc_AF8DAB: LitVarStr var_C4, "AltaFeho"
  loc_AF8DB0: PopAdLdVar
  loc_AF8DB1: FLdRfVar var_B4
  loc_AF8DB4: FMemLdPr
  loc_AF8DB9:  = Me.Fields
  loc_AF8DBE: FLdPr var_B4
  loc_AF8DC1: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8DC6: FLdPr var_C8
  loc_AF8DC9:  = Me.Value
  loc_AF8DCE: FLdRfVar var_110
  loc_AF8DD1: LitVarStr var_10C, "AltaFeho"
  loc_AF8DD6: PopAdLdVar
  loc_AF8DD7: FLdRfVar var_FC
  loc_AF8DDA: FMemLdPr
  loc_AF8DDF:  = Me.Fields
  loc_AF8DE4: FLdPr var_FC
  loc_AF8DE7: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8DEC: LitVarStr var_140, vbNullString
  loc_AF8DF1: FStVarCopyObj var_150
  loc_AF8DF4: FLdRfVar var_150
  loc_AF8DF7: FLdZeroAd var_110
  loc_AF8DFA: CVarAd
  loc_AF8DFE: FLdRfVar var_D8
  loc_AF8E01: LitVarStr var_E8, vbNullString
  loc_AF8E06: HardType
  loc_AF8E07: NeVar var_F8
  loc_AF8E0B: FStVar var_120
  loc_AF8E0F: FLdRfVar var_120
  loc_AF8E12: FLdRfVar var_160
  loc_AF8E15: ImpAdCallFPR4  = IIf(, , )
  loc_AF8E1A: FLdRfVar var_160
  loc_AF8E1D: CStrVarVal var_94
  loc_AF8E21: ILdPr
  loc_AF8E24: Call tblordenpago.AltaFehoPut(from_stack_1v)
  loc_AF8E29: FFree1Str var_94
  loc_AF8E2C: FFreeAd var_B4 = "": var_C8 = ""
  loc_AF8E35: FFreeVar var_D8 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_AF8E42: LitI2_Byte &HFF
  loc_AF8E44: FStI2 var_86
  loc_AF8E47: Branch loc_AF8F0A
  loc_AF8E4A: LitStr "La Orden de Pago NO EXISTE. Verifique..."
  loc_AF8E4D: ILdPr
  loc_AF8E50: Call tblordenpago.MsgErrorPut(from_stack_1v)
  loc_AF8E55: LitStr vbNullString
  loc_AF8E58: ILdPr
  loc_AF8E5B: Call tblordenpago.PeriInfoPut(from_stack_1v)
  loc_AF8E60: LitStr vbNullString
  loc_AF8E63: ILdPr
  loc_AF8E66: Call tblordenpago.NumeOrpaPut(from_stack_1v)
  loc_AF8E6B: LitStr vbNullString
  loc_AF8E6E: ILdPr
  loc_AF8E71: Call tblordenpago.ExpeImpuPut(from_stack_1v)
  loc_AF8E76: LitStr vbNullString
  loc_AF8E79: ILdPr
  loc_AF8E7C: Call tblordenpago.NumeLiquPut(from_stack_1v)
  loc_AF8E81: LitStr vbNullString
  loc_AF8E84: ILdPr
  loc_AF8E87: Call tblordenpago.FechOrpaPut(from_stack_1v)
  loc_AF8E8C: LitStr vbNullString
  loc_AF8E8F: ILdPr
  loc_AF8E92: Call tblordenpago.DetaOrpaPut(from_stack_1v)
  loc_AF8E97: LitStr vbNullString
  loc_AF8E9A: ILdPr
  loc_AF8E9D: Call tblordenpago.FereOrpaPut(from_stack_1v)
  loc_AF8EA2: LitStr vbNullString
  loc_AF8EA5: ILdPr
  loc_AF8EA8: Call tblordenpago.FearOrpaPut(from_stack_1v)
  loc_AF8EAD: LitStr vbNullString
  loc_AF8EB0: ILdPr
  loc_AF8EB3: Call tblordenpago.ArchOrpaPut(from_stack_1v)
  loc_AF8EB8: LitStr vbNullString
  loc_AF8EBB: ILdPr
  loc_AF8EBE: Call tblordenpago.FojaOrpaPut(from_stack_1v)
  loc_AF8EC3: LitStr vbNullString
  loc_AF8EC6: ILdPr
  loc_AF8EC9: Call tblordenpago.FeanOrpaPut(from_stack_1v)
  loc_AF8ECE: LitStr vbNullString
  loc_AF8ED1: ILdPr
  loc_AF8ED4: Call tblordenpago.BajaMotiPut(from_stack_1v)
  loc_AF8ED9: LitStr vbNullString
  loc_AF8EDC: ILdPr
  loc_AF8EDF: Call tblordenpago.TipoOrpaPut(from_stack_1v)
  loc_AF8EE4: LitStr vbNullString
  loc_AF8EE7: ILdPr
  loc_AF8EEA: Call tblordenpago.ChunOrpaPut(from_stack_1v)
  loc_AF8EEF: LitStr vbNullString
  loc_AF8EF2: ILdPr
  loc_AF8EF5: Call tblordenpago.AltaUsuaPut(from_stack_1v)
  loc_AF8EFA: LitStr vbNullString
  loc_AF8EFD: ILdPr
  loc_AF8F00: Call tblordenpago.AltaFehoPut(from_stack_1v)
  loc_AF8F05: LitI2_Byte 0
  loc_AF8F07: FStI2 var_86
  loc_AF8F0A: ExitProcI2
End Function

Private Function Proc_259_20_B23018(arg_C, arg_10) 'B23018
  'Data Table: 4569C4
  loc_B22760: ILdRf arg_10
  loc_B22763: FStStrCopy var_8C
  loc_B22766: LitStr "SET @sUsuario = '"
  loc_B22769: ImpAdLdI4 MemVar_C3D03C
  loc_B2276C: ConcatStr
  loc_B2276D: FStStrNoPop var_90
  loc_B22770: LitStr "';"
  loc_B22773: ConcatStr
  loc_B22774: FStStrNoPop var_94
  loc_B22777: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_B2277C: FFreeStr var_90 = ""
  loc_B22783: LitStr "SELECT orga.PeriInfo, orga.CodiOrga, orga.DetaOrga, orga.CucuPers"
  loc_B22786: LitStr ", orga.CredOrga, orga.CredOrgaG"
  loc_B22789: ConcatStr
  loc_B2278A: FStStrNoPop var_90
  loc_B2278D: LitStr ", IFNULL((SELECT orgacred.DetaOrga FROM infogov.organigrama orgacred WHERE orgacred.PeriInfo = orga.PeriInfo AND orgacred.CodiOrga = orga.CredOrga),'') CredDetaOrga"
  loc_B22790: ConcatStr
  loc_B22791: FStStrNoPop var_94
  loc_B22794: LitStr ", IFNULL((SELECT orgacredg.DetaOrga FROM infogov.organigrama orgacredg WHERE orgacredg.PeriInfo = orga.PeriInfo AND orgacredg.CodiOrga = orga.CredOrgaG),'') CredDetaOrgaGestion"
  loc_B22797: ConcatStr
  loc_B22798: FStStrNoPop var_98
  loc_B2279B: LitStr ", IF((SELECT orga2.DetaOrga FROM infogov.organigrama orga2 WHERE orga2.PeriInfo = orga.PeriInfo AND orga2.CredOrga = orga.CodiOrga GROUP BY orga.CredOrga) IS NULL,'No','Si') EsCredOrga"
  loc_B2279E: ConcatStr
  loc_B2279F: FStStrNoPop var_9C
  loc_B227A2: LitStr ", IF((SELECT orga2g.DetaOrga FROM infogov.organigrama orga2g WHERE orga2g.PeriInfo = orga.PeriInfo AND orga2g.CredOrgaG = orga.CodiOrga GROUP BY orga.CodiOrga) IS NULL,'No','Si') EsCredOrgaGestion"
  loc_B227A5: ConcatStr
  loc_B227A6: FStStrNoPop var_A0
  loc_B227A9: LitStr ", orga.CoesOrga, orga.MailOrga, orga.UGreqOrga"
  loc_B227AC: ConcatStr
  loc_B227AD: FStStrNoPop var_A4
  loc_B227B0: LitStr ", orga.AltaUsua, orga.AltaFeho, orga.ModiUsua, orga.ModiFeho, orga.BajaUsua, orga.BajaFeho, orga.BajaMoti"
  loc_B227B3: ConcatStr
  loc_B227B4: FStStrNoPop var_A8
  loc_B227B7: LitStr ", IF(orgaxusua.CodiOrga IS NULL,'No','Si') Autorizado"
  loc_B227BA: ConcatStr
  loc_B227BB: FStStrNoPop var_AC
  loc_B227BE: LitStr " FROM infogov.organigrama orga"
  loc_B227C1: ConcatStr
  loc_B227C2: FStStrNoPop var_B0
  loc_B227C5: LitStr " /* LEFT JOIN infogov.persona ON persona.CucuPers = orga.CucuPers */"
  loc_B227C8: ConcatStr
  loc_B227C9: FStStrNoPop var_B4
  loc_B227CC: LitStr " LEFT JOIN orgaxusua ON orgaxusua.PeriInfo = orga.PeriInfo AND orgaxusua.CodiOrga = orga.CodiOrga AND orgaxusua.CodiUsua = '"
  loc_B227CF: ConcatStr
  loc_B227D0: FStStrNoPop var_B8
  loc_B227D3: ImpAdLdI4 MemVar_C3D03C
  loc_B227D6: ConcatStr
  loc_B227D7: FStStrNoPop var_BC
  loc_B227DA: LitStr "'"
  loc_B227DD: ConcatStr
  loc_B227DE: FStStrNoPop var_C0
  loc_B227E1: LitStr " WHERE orga.PeriInfo = "
  loc_B227E4: ConcatStr
  loc_B227E5: FStStrNoPop var_C4
  loc_B227E8: FLdI2 arg_C
  loc_B227EB: CStrUI1
  loc_B227ED: FStStrNoPop var_C8
  loc_B227F0: ConcatStr
  loc_B227F1: FStStrNoPop var_CC
  loc_B227F4: LitStr " AND orga.CodiOrga = '"
  loc_B227F7: ConcatStr
  loc_B227F8: FStStrNoPop var_D0
  loc_B227FB: ILdRf var_8C
  loc_B227FE: ConcatStr
  loc_B227FF: FStStrNoPop var_D4
  loc_B22802: LitStr "'"
  loc_B22805: ConcatStr
  loc_B22806: FStStrNoPop var_D8
  loc_B22809: LitStr " LIMIT 1;"
  loc_B2280C: ConcatStr
  loc_B2280D: FStStrNoPop var_DC
  loc_B22810: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_B22815: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B22840: FLdRfVar var_E0
  loc_B22843: FMemLdPr
  loc_B22848:  = Me.RecordCount
  loc_B2284D: ILdRf var_E0
  loc_B22850: LitI4 0
  loc_B22855: GtI4
  loc_B22856: BranchF loc_B22F1D
  loc_B22859: LitStr vbNullString
  loc_B2285C: ILdPr
  loc_B2285F: Call tblorganigrama.MsgErrorPut(from_stack_1v)
  loc_B22864: FLdRfVar var_108
  loc_B22867: FLdRfVar var_F8
  loc_B2286A: LitVarStr var_F4, "PeriInfo"
  loc_B2286F: PopAdLdVar
  loc_B22870: FLdRfVar var_E4
  loc_B22873: FMemLdPr
  loc_B22878:  = Me.Fields
  loc_B2287D: FLdPr var_E4
  loc_B22880: from_stack_2 = Me.Item(from_stack_1)
  loc_B22885: FLdPr var_F8
  loc_B22888:  = Me.Value
  loc_B2288D: FLdRfVar var_108
  loc_B22890: CStrVarTmp
  loc_B22891: FStStrNoPop var_90
  loc_B22894: ILdPr
  loc_B22897: Call tblorganigrama.PeriInfoPut(from_stack_1v)
  loc_B2289C: FFree1Str var_90
  loc_B2289F: FFreeAd var_E4 = ""
  loc_B228A6: FFree1Var var_108 = ""
  loc_B228A9: FLdRfVar var_108
  loc_B228AC: FLdRfVar var_F8
  loc_B228AF: LitVarStr var_F4, "CodiOrga"
  loc_B228B4: PopAdLdVar
  loc_B228B5: FLdRfVar var_E4
  loc_B228B8: FMemLdPr
  loc_B228BD:  = Me.Fields
  loc_B228C2: FLdPr var_E4
  loc_B228C5: from_stack_2 = Me.Item(from_stack_1)
  loc_B228CA: FLdPr var_F8
  loc_B228CD:  = Me.Value
  loc_B228D2: FLdRfVar var_108
  loc_B228D5: CStrVarTmp
  loc_B228D6: FStStrNoPop var_90
  loc_B228D9: ILdPr
  loc_B228DC: Call tblorganigrama.CodiOrgaPut(from_stack_1v)
  loc_B228E1: FFree1Str var_90
  loc_B228E4: FFreeAd var_E4 = ""
  loc_B228EB: FFree1Var var_108 = ""
  loc_B228EE: FLdRfVar var_108
  loc_B228F1: FLdRfVar var_F8
  loc_B228F4: LitVarStr var_F4, "DetaOrga"
  loc_B228F9: PopAdLdVar
  loc_B228FA: FLdRfVar var_E4
  loc_B228FD: FMemLdPr
  loc_B22902:  = Me.Fields
  loc_B22907: FLdPr var_E4
  loc_B2290A: from_stack_2 = Me.Item(from_stack_1)
  loc_B2290F: FLdPr var_F8
  loc_B22912:  = Me.Value
  loc_B22917: FLdRfVar var_108
  loc_B2291A: CStrVarTmp
  loc_B2291B: FStStrNoPop var_90
  loc_B2291E: ILdPr
  loc_B22921: Call tblorganigrama.DetaOrgaPut(from_stack_1v)
  loc_B22926: FFree1Str var_90
  loc_B22929: FFreeAd var_E4 = ""
  loc_B22930: FFree1Var var_108 = ""
  loc_B22933: FLdRfVar var_108
  loc_B22936: FLdRfVar var_F8
  loc_B22939: LitVarStr var_F4, "CucuPers"
  loc_B2293E: PopAdLdVar
  loc_B2293F: FLdRfVar var_E4
  loc_B22942: FMemLdPr
  loc_B22947:  = Me.Fields
  loc_B2294C: FLdPr var_E4
  loc_B2294F: from_stack_2 = Me.Item(from_stack_1)
  loc_B22954: FLdPr var_F8
  loc_B22957:  = Me.Value
  loc_B2295C: FLdRfVar var_108
  loc_B2295F: CStrVarTmp
  loc_B22960: FStStrNoPop var_90
  loc_B22963: ILdPr
  loc_B22966: Call tblorganigrama.CucuPersPut(from_stack_1v)
  loc_B2296B: FFree1Str var_90
  loc_B2296E: FFreeAd var_E4 = ""
  loc_B22975: FFree1Var var_108 = ""
  loc_B22978: FLdRfVar var_108
  loc_B2297B: FLdRfVar var_F8
  loc_B2297E: LitVarStr var_F4, "CredOrga"
  loc_B22983: PopAdLdVar
  loc_B22984: FLdRfVar var_E4
  loc_B22987: FMemLdPr
  loc_B2298C:  = Me.Fields
  loc_B22991: FLdPr var_E4
  loc_B22994: from_stack_2 = Me.Item(from_stack_1)
  loc_B22999: FLdPr var_F8
  loc_B2299C:  = Me.Value
  loc_B229A1: FLdRfVar var_108
  loc_B229A4: CStrVarTmp
  loc_B229A5: FStStrNoPop var_90
  loc_B229A8: ILdPr
  loc_B229AB: Call tblorganigrama.CredOrgaPut(from_stack_1v)
  loc_B229B0: FFree1Str var_90
  loc_B229B3: FFreeAd var_E4 = ""
  loc_B229BA: FFree1Var var_108 = ""
  loc_B229BD: FLdRfVar var_108
  loc_B229C0: FLdRfVar var_F8
  loc_B229C3: LitVarStr var_F4, "CredDetaOrga"
  loc_B229C8: PopAdLdVar
  loc_B229C9: FLdRfVar var_E4
  loc_B229CC: FMemLdPr
  loc_B229D1:  = Me.Fields
  loc_B229D6: FLdPr var_E4
  loc_B229D9: from_stack_2 = Me.Item(from_stack_1)
  loc_B229DE: FLdPr var_F8
  loc_B229E1:  = Me.Value
  loc_B229E6: FLdRfVar var_108
  loc_B229E9: CStrVarTmp
  loc_B229EA: FStStrNoPop var_90
  loc_B229ED: ILdPr
  loc_B229F0: Call tblorganigrama.CredDetaOrgaPut(from_stack_1v)
  loc_B229F5: FFree1Str var_90
  loc_B229F8: FFreeAd var_E4 = ""
  loc_B229FF: FFree1Var var_108 = ""
  loc_B22A02: FLdRfVar var_108
  loc_B22A05: FLdRfVar var_F8
  loc_B22A08: LitVarStr var_F4, "EsCredOrga"
  loc_B22A0D: PopAdLdVar
  loc_B22A0E: FLdRfVar var_E4
  loc_B22A11: FMemLdPr
  loc_B22A16:  = Me.Fields
  loc_B22A1B: FLdPr var_E4
  loc_B22A1E: from_stack_2 = Me.Item(from_stack_1)
  loc_B22A23: FLdPr var_F8
  loc_B22A26:  = Me.Value
  loc_B22A2B: FLdRfVar var_108
  loc_B22A2E: CStrVarTmp
  loc_B22A2F: FStStrNoPop var_90
  loc_B22A32: ILdPr
  loc_B22A35: Call tblorganigrama.EsCredOrgaPut(from_stack_1v)
  loc_B22A3A: FFree1Str var_90
  loc_B22A3D: FFreeAd var_E4 = ""
  loc_B22A44: FFree1Var var_108 = ""
  loc_B22A47: FLdRfVar var_108
  loc_B22A4A: FLdRfVar var_F8
  loc_B22A4D: LitVarStr var_F4, "CredOrgaG"
  loc_B22A52: PopAdLdVar
  loc_B22A53: FLdRfVar var_E4
  loc_B22A56: FMemLdPr
  loc_B22A5B:  = Me.Fields
  loc_B22A60: FLdPr var_E4
  loc_B22A63: from_stack_2 = Me.Item(from_stack_1)
  loc_B22A68: FLdPr var_F8
  loc_B22A6B:  = Me.Value
  loc_B22A70: FLdRfVar var_108
  loc_B22A73: CStrVarTmp
  loc_B22A74: FStStrNoPop var_90
  loc_B22A77: ILdPr
  loc_B22A7A: Call tblorganigrama.CredOrgaGestionPut(from_stack_1v)
  loc_B22A7F: FFree1Str var_90
  loc_B22A82: FFreeAd var_E4 = ""
  loc_B22A89: FFree1Var var_108 = ""
  loc_B22A8C: FLdRfVar var_108
  loc_B22A8F: FLdRfVar var_F8
  loc_B22A92: LitVarStr var_F4, "CredDetaOrgaGestion"
  loc_B22A97: PopAdLdVar
  loc_B22A98: FLdRfVar var_E4
  loc_B22A9B: FMemLdPr
  loc_B22AA0:  = Me.Fields
  loc_B22AA5: FLdPr var_E4
  loc_B22AA8: from_stack_2 = Me.Item(from_stack_1)
  loc_B22AAD: FLdPr var_F8
  loc_B22AB0:  = Me.Value
  loc_B22AB5: FLdRfVar var_108
  loc_B22AB8: CStrVarTmp
  loc_B22AB9: FStStrNoPop var_90
  loc_B22ABC: ILdPr
  loc_B22ABF: Call tblorganigrama.CredDetaOrgaGestionPut(from_stack_1v)
  loc_B22AC4: FFree1Str var_90
  loc_B22AC7: FFreeAd var_E4 = ""
  loc_B22ACE: FFree1Var var_108 = ""
  loc_B22AD1: FLdRfVar var_108
  loc_B22AD4: FLdRfVar var_F8
  loc_B22AD7: LitVarStr var_F4, "EsCredOrgaGestion"
  loc_B22ADC: PopAdLdVar
  loc_B22ADD: FLdRfVar var_E4
  loc_B22AE0: FMemLdPr
  loc_B22AE5:  = Me.Fields
  loc_B22AEA: FLdPr var_E4
  loc_B22AED: from_stack_2 = Me.Item(from_stack_1)
  loc_B22AF2: FLdPr var_F8
  loc_B22AF5:  = Me.Value
  loc_B22AFA: FLdRfVar var_108
  loc_B22AFD: CStrVarTmp
  loc_B22AFE: FStStrNoPop var_90
  loc_B22B01: ILdPr
  loc_B22B04: Call tblorganigrama.EsCredOrgaGestionPut(from_stack_1v)
  loc_B22B09: FFree1Str var_90
  loc_B22B0C: FFreeAd var_E4 = ""
  loc_B22B13: FFree1Var var_108 = ""
  loc_B22B16: FLdRfVar var_108
  loc_B22B19: FLdRfVar var_F8
  loc_B22B1C: LitVarStr var_F4, "CoesOrga"
  loc_B22B21: PopAdLdVar
  loc_B22B22: FLdRfVar var_E4
  loc_B22B25: FMemLdPr
  loc_B22B2A:  = Me.Fields
  loc_B22B2F: FLdPr var_E4
  loc_B22B32: from_stack_2 = Me.Item(from_stack_1)
  loc_B22B37: FLdPr var_F8
  loc_B22B3A:  = Me.Value
  loc_B22B3F: FLdRfVar var_108
  loc_B22B42: CStrVarTmp
  loc_B22B43: FStStrNoPop var_90
  loc_B22B46: ILdPr
  loc_B22B49: Call tblorganigrama.CoesOrgaPut(from_stack_1v)
  loc_B22B4E: FFree1Str var_90
  loc_B22B51: FFreeAd var_E4 = ""
  loc_B22B58: FFree1Var var_108 = ""
  loc_B22B5B: FLdRfVar var_108
  loc_B22B5E: FLdRfVar var_F8
  loc_B22B61: LitVarStr var_F4, "MailOrga"
  loc_B22B66: PopAdLdVar
  loc_B22B67: FLdRfVar var_E4
  loc_B22B6A: FMemLdPr
  loc_B22B6F:  = Me.Fields
  loc_B22B74: FLdPr var_E4
  loc_B22B77: from_stack_2 = Me.Item(from_stack_1)
  loc_B22B7C: FLdPr var_F8
  loc_B22B7F:  = Me.Value
  loc_B22B84: FLdRfVar var_108
  loc_B22B87: CStrVarTmp
  loc_B22B88: FStStrNoPop var_90
  loc_B22B8B: ILdPr
  loc_B22B8E: Call tblorganigrama.MailOrgaPut(from_stack_1v)
  loc_B22B93: FFree1Str var_90
  loc_B22B96: FFreeAd var_E4 = ""
  loc_B22B9D: FFree1Var var_108 = ""
  loc_B22BA0: FLdRfVar var_108
  loc_B22BA3: FLdRfVar var_F8
  loc_B22BA6: LitVarStr var_F4, "UGreqOrga"
  loc_B22BAB: PopAdLdVar
  loc_B22BAC: FLdRfVar var_E4
  loc_B22BAF: FMemLdPr
  loc_B22BB4:  = Me.Fields
  loc_B22BB9: FLdPr var_E4
  loc_B22BBC: from_stack_2 = Me.Item(from_stack_1)
  loc_B22BC1: FLdPr var_F8
  loc_B22BC4:  = Me.Value
  loc_B22BC9: FLdRfVar var_108
  loc_B22BCC: CStrVarTmp
  loc_B22BCD: FStStrNoPop var_90
  loc_B22BD0: ILdPr
  loc_B22BD3: Call tblorganigrama.UGreqOrgaPut(from_stack_1v)
  loc_B22BD8: FFree1Str var_90
  loc_B22BDB: FFreeAd var_E4 = ""
  loc_B22BE2: FFree1Var var_108 = ""
  loc_B22BE5: FLdRfVar var_108
  loc_B22BE8: FLdRfVar var_F8
  loc_B22BEB: LitVarStr var_F4, "AltaUsua"
  loc_B22BF0: PopAdLdVar
  loc_B22BF1: FLdRfVar var_E4
  loc_B22BF4: FMemLdPr
  loc_B22BF9:  = Me.Fields
  loc_B22BFE: FLdPr var_E4
  loc_B22C01: from_stack_2 = Me.Item(from_stack_1)
  loc_B22C06: FLdPr var_F8
  loc_B22C09:  = Me.Value
  loc_B22C0E: FLdRfVar var_108
  loc_B22C11: CStrVarTmp
  loc_B22C12: FStStrNoPop var_90
  loc_B22C15: ILdPr
  loc_B22C18: Call tblorganigrama.AltaUsuaPut(from_stack_1v)
  loc_B22C1D: FFree1Str var_90
  loc_B22C20: FFreeAd var_E4 = ""
  loc_B22C27: FFree1Var var_108 = ""
  loc_B22C2A: FLdRfVar var_108
  loc_B22C2D: FLdRfVar var_F8
  loc_B22C30: LitVarStr var_F4, "AltaFeho"
  loc_B22C35: PopAdLdVar
  loc_B22C36: FLdRfVar var_E4
  loc_B22C39: FMemLdPr
  loc_B22C3E:  = Me.Fields
  loc_B22C43: FLdPr var_E4
  loc_B22C46: from_stack_2 = Me.Item(from_stack_1)
  loc_B22C4B: FLdPr var_F8
  loc_B22C4E:  = Me.Value
  loc_B22C53: FLdRfVar var_140
  loc_B22C56: LitVarStr var_13C, "AltaFeho"
  loc_B22C5B: PopAdLdVar
  loc_B22C5C: FLdRfVar var_12C
  loc_B22C5F: FMemLdPr
  loc_B22C64:  = Me.Fields
  loc_B22C69: FLdPr var_12C
  loc_B22C6C: from_stack_2 = Me.Item(from_stack_1)
  loc_B22C71: LitVarStr var_170, vbNullString
  loc_B22C76: FStVarCopyObj var_180
  loc_B22C79: FLdRfVar var_180
  loc_B22C7C: FLdZeroAd var_140
  loc_B22C7F: CVarAd
  loc_B22C83: FLdRfVar var_108
  loc_B22C86: LitVarStr var_118, vbNullString
  loc_B22C8B: HardType
  loc_B22C8C: NeVar var_128
  loc_B22C90: FStVar var_150
  loc_B22C94: FLdRfVar var_150
  loc_B22C97: FLdRfVar var_190
  loc_B22C9A: ImpAdCallFPR4  = IIf(, , )
  loc_B22C9F: FLdRfVar var_190
  loc_B22CA2: CStrVarVal var_90
  loc_B22CA6: ILdPr
  loc_B22CA9: Call tblorganigrama.AltaFehoPut(from_stack_1v)
  loc_B22CAE: FFree1Str var_90
  loc_B22CB1: FFreeAd var_E4 = "": var_F8 = ""
  loc_B22CBA: FFreeVar var_108 = "": var_150 = "": var_160 = "": var_180 = ""
  loc_B22CC7: FLdRfVar var_108
  loc_B22CCA: FLdRfVar var_F8
  loc_B22CCD: LitVarStr var_F4, "ModiUsua"
  loc_B22CD2: PopAdLdVar
  loc_B22CD3: FLdRfVar var_E4
  loc_B22CD6: FMemLdPr
  loc_B22CDB:  = Me.Fields
  loc_B22CE0: FLdPr var_E4
  loc_B22CE3: from_stack_2 = Me.Item(from_stack_1)
  loc_B22CE8: FLdPr var_F8
  loc_B22CEB:  = Me.Value
  loc_B22CF0: FLdRfVar var_108
  loc_B22CF3: CStrVarTmp
  loc_B22CF4: FStStrNoPop var_90
  loc_B22CF7: ILdPr
  loc_B22CFA: Call tblorganigrama.ModiUsuaPut(from_stack_1v)
  loc_B22CFF: FFree1Str var_90
  loc_B22D02: FFreeAd var_E4 = ""
  loc_B22D09: FFree1Var var_108 = ""
  loc_B22D0C: FLdRfVar var_108
  loc_B22D0F: FLdRfVar var_F8
  loc_B22D12: LitVarStr var_F4, "ModiFeho"
  loc_B22D17: PopAdLdVar
  loc_B22D18: FLdRfVar var_E4
  loc_B22D1B: FMemLdPr
  loc_B22D20:  = Me.Fields
  loc_B22D25: FLdPr var_E4
  loc_B22D28: from_stack_2 = Me.Item(from_stack_1)
  loc_B22D2D: FLdPr var_F8
  loc_B22D30:  = Me.Value
  loc_B22D35: FLdRfVar var_140
  loc_B22D38: LitVarStr var_13C, "ModiFeho"
  loc_B22D3D: PopAdLdVar
  loc_B22D3E: FLdRfVar var_12C
  loc_B22D41: FMemLdPr
  loc_B22D46:  = Me.Fields
  loc_B22D4B: FLdPr var_12C
  loc_B22D4E: from_stack_2 = Me.Item(from_stack_1)
  loc_B22D53: LitVarStr var_170, vbNullString
  loc_B22D58: FStVarCopyObj var_180
  loc_B22D5B: FLdRfVar var_180
  loc_B22D5E: FLdZeroAd var_140
  loc_B22D61: CVarAd
  loc_B22D65: FLdRfVar var_108
  loc_B22D68: LitVarStr var_118, vbNullString
  loc_B22D6D: HardType
  loc_B22D6E: NeVar var_128
  loc_B22D72: FStVar var_150
  loc_B22D76: FLdRfVar var_150
  loc_B22D79: FLdRfVar var_190
  loc_B22D7C: ImpAdCallFPR4  = IIf(, , )
  loc_B22D81: FLdRfVar var_190
  loc_B22D84: CStrVarVal var_90
  loc_B22D88: ILdPr
  loc_B22D8B: Call tblorganigrama.ModiFehoPut(from_stack_1v)
  loc_B22D90: FFree1Str var_90
  loc_B22D93: FFreeAd var_E4 = "": var_F8 = ""
  loc_B22D9C: FFreeVar var_108 = "": var_150 = "": var_160 = "": var_180 = ""
  loc_B22DA9: FLdRfVar var_108
  loc_B22DAC: FLdRfVar var_F8
  loc_B22DAF: LitVarStr var_F4, "BajaUsua"
  loc_B22DB4: PopAdLdVar
  loc_B22DB5: FLdRfVar var_E4
  loc_B22DB8: FMemLdPr
  loc_B22DBD:  = Me.Fields
  loc_B22DC2: FLdPr var_E4
  loc_B22DC5: from_stack_2 = Me.Item(from_stack_1)
  loc_B22DCA: FLdPr var_F8
  loc_B22DCD:  = Me.Value
  loc_B22DD2: FLdRfVar var_108
  loc_B22DD5: CStrVarTmp
  loc_B22DD6: FStStrNoPop var_90
  loc_B22DD9: ILdPr
  loc_B22DDC: Call tblorganigrama.BajaUsuaPut(from_stack_1v)
  loc_B22DE1: FFree1Str var_90
  loc_B22DE4: FFreeAd var_E4 = ""
  loc_B22DEB: FFree1Var var_108 = ""
  loc_B22DEE: FLdRfVar var_108
  loc_B22DF1: FLdRfVar var_F8
  loc_B22DF4: LitVarStr var_F4, "BajaFeho"
  loc_B22DF9: PopAdLdVar
  loc_B22DFA: FLdRfVar var_E4
  loc_B22DFD: FMemLdPr
  loc_B22E02:  = Me.Fields
  loc_B22E07: FLdPr var_E4
  loc_B22E0A: from_stack_2 = Me.Item(from_stack_1)
  loc_B22E0F: FLdPr var_F8
  loc_B22E12:  = Me.Value
  loc_B22E17: FLdRfVar var_140
  loc_B22E1A: LitVarStr var_13C, "BajaFeho"
  loc_B22E1F: PopAdLdVar
  loc_B22E20: FLdRfVar var_12C
  loc_B22E23: FMemLdPr
  loc_B22E28:  = Me.Fields
  loc_B22E2D: FLdPr var_12C
  loc_B22E30: from_stack_2 = Me.Item(from_stack_1)
  loc_B22E35: LitVarStr var_170, vbNullString
  loc_B22E3A: FStVarCopyObj var_180
  loc_B22E3D: FLdRfVar var_180
  loc_B22E40: FLdZeroAd var_140
  loc_B22E43: CVarAd
  loc_B22E47: FLdRfVar var_108
  loc_B22E4A: LitVarStr var_118, vbNullString
  loc_B22E4F: HardType
  loc_B22E50: NeVar var_128
  loc_B22E54: FStVar var_150
  loc_B22E58: FLdRfVar var_150
  loc_B22E5B: FLdRfVar var_190
  loc_B22E5E: ImpAdCallFPR4  = IIf(, , )
  loc_B22E63: FLdRfVar var_190
  loc_B22E66: CStrVarVal var_90
  loc_B22E6A: ILdPr
  loc_B22E6D: Call tblorganigrama.BajaFehoPut(from_stack_1v)
  loc_B22E72: FFree1Str var_90
  loc_B22E75: FFreeAd var_E4 = "": var_F8 = ""
  loc_B22E7E: FFreeVar var_108 = "": var_150 = "": var_160 = "": var_180 = ""
  loc_B22E8B: FLdRfVar var_108
  loc_B22E8E: FLdRfVar var_F8
  loc_B22E91: LitVarStr var_F4, "BajaMoti"
  loc_B22E96: PopAdLdVar
  loc_B22E97: FLdRfVar var_E4
  loc_B22E9A: FMemLdPr
  loc_B22E9F:  = Me.Fields
  loc_B22EA4: FLdPr var_E4
  loc_B22EA7: from_stack_2 = Me.Item(from_stack_1)
  loc_B22EAC: FLdPr var_F8
  loc_B22EAF:  = Me.Value
  loc_B22EB4: FLdRfVar var_108
  loc_B22EB7: CStrVarTmp
  loc_B22EB8: FStStrNoPop var_90
  loc_B22EBB: ILdPr
  loc_B22EBE: Call tblorganigrama.BajaMotiPut(from_stack_1v)
  loc_B22EC3: FFree1Str var_90
  loc_B22EC6: FFreeAd var_E4 = ""
  loc_B22ECD: FFree1Var var_108 = ""
  loc_B22ED0: FLdRfVar var_108
  loc_B22ED3: FLdRfVar var_F8
  loc_B22ED6: LitVarStr var_F4, "Autorizado"
  loc_B22EDB: PopAdLdVar
  loc_B22EDC: FLdRfVar var_E4
  loc_B22EDF: FMemLdPr
  loc_B22EE4:  = Me.Fields
  loc_B22EE9: FLdPr var_E4
  loc_B22EEC: from_stack_2 = Me.Item(from_stack_1)
  loc_B22EF1: FLdPr var_F8
  loc_B22EF4:  = Me.Value
  loc_B22EF9: FLdRfVar var_108
  loc_B22EFC: CStrVarTmp
  loc_B22EFD: FStStrNoPop var_90
  loc_B22F00: ILdPr
  loc_B22F03: Call tblorganigrama.AutorizadoPut(from_stack_1v)
  loc_B22F08: FFree1Str var_90
  loc_B22F0B: FFreeAd var_E4 = ""
  loc_B22F12: FFree1Var var_108 = ""
  loc_B22F15: LitI2_Byte &HFF
  loc_B22F17: FStI2 var_86
  loc_B22F1A: Branch loc_B23014
  loc_B22F1D: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B22F20: ILdPr
  loc_B22F23: Call tblorganigrama.MsgErrorPut(from_stack_1v)
  loc_B22F28: LitStr vbNullString
  loc_B22F2B: ILdPr
  loc_B22F2E: Call tblorganigrama.PeriInfoPut(from_stack_1v)
  loc_B22F33: LitStr vbNullString
  loc_B22F36: ILdPr
  loc_B22F39: Call tblorganigrama.CodiOrgaPut(from_stack_1v)
  loc_B22F3E: LitStr vbNullString
  loc_B22F41: ILdPr
  loc_B22F44: Call tblorganigrama.DetaOrgaPut(from_stack_1v)
  loc_B22F49: LitStr vbNullString
  loc_B22F4C: ILdPr
  loc_B22F4F: Call tblorganigrama.CucuPersPut(from_stack_1v)
  loc_B22F54: LitStr vbNullString
  loc_B22F57: ILdPr
  loc_B22F5A: Call tblorganigrama.CredOrgaPut(from_stack_1v)
  loc_B22F5F: LitStr vbNullString
  loc_B22F62: ILdPr
  loc_B22F65: Call tblorganigrama.CredDetaOrgaPut(from_stack_1v)
  loc_B22F6A: LitStr vbNullString
  loc_B22F6D: ILdPr
  loc_B22F70: Call tblorganigrama.EsCredOrgaPut(from_stack_1v)
  loc_B22F75: LitStr vbNullString
  loc_B22F78: ILdPr
  loc_B22F7B: Call tblorganigrama.CredOrgaGestionPut(from_stack_1v)
  loc_B22F80: LitStr vbNullString
  loc_B22F83: ILdPr
  loc_B22F86: Call tblorganigrama.CredDetaOrgaGestionPut(from_stack_1v)
  loc_B22F8B: LitStr vbNullString
  loc_B22F8E: ILdPr
  loc_B22F91: Call tblorganigrama.EsCredOrgaGestionPut(from_stack_1v)
  loc_B22F96: LitStr vbNullString
  loc_B22F99: ILdPr
  loc_B22F9C: Call tblorganigrama.CoesOrgaPut(from_stack_1v)
  loc_B22FA1: LitStr vbNullString
  loc_B22FA4: ILdPr
  loc_B22FA7: Call tblorganigrama.MailOrgaPut(from_stack_1v)
  loc_B22FAC: LitStr vbNullString
  loc_B22FAF: ILdPr
  loc_B22FB2: Call tblorganigrama.UGreqOrgaPut(from_stack_1v)
  loc_B22FB7: LitStr vbNullString
  loc_B22FBA: ILdPr
  loc_B22FBD: Call tblorganigrama.AltaUsuaPut(from_stack_1v)
  loc_B22FC2: LitStr vbNullString
  loc_B22FC5: ILdPr
  loc_B22FC8: Call tblorganigrama.AltaFehoPut(from_stack_1v)
  loc_B22FCD: LitStr vbNullString
  loc_B22FD0: ILdPr
  loc_B22FD3: Call tblorganigrama.ModiUsuaPut(from_stack_1v)
  loc_B22FD8: LitStr vbNullString
  loc_B22FDB: ILdPr
  loc_B22FDE: Call tblorganigrama.ModiFehoPut(from_stack_1v)
  loc_B22FE3: LitStr vbNullString
  loc_B22FE6: ILdPr
  loc_B22FE9: Call tblorganigrama.BajaUsuaPut(from_stack_1v)
  loc_B22FEE: LitStr vbNullString
  loc_B22FF1: ILdPr
  loc_B22FF4: Call tblorganigrama.BajaFehoPut(from_stack_1v)
  loc_B22FF9: LitStr vbNullString
  loc_B22FFC: ILdPr
  loc_B22FFF: Call tblorganigrama.BajaMotiPut(from_stack_1v)
  loc_B23004: LitStr vbNullString
  loc_B23007: ILdPr
  loc_B2300A: Call tblorganigrama.AutorizadoPut(from_stack_1v)
  loc_B2300F: LitI2_Byte 0
  loc_B23011: FStI2 var_86
  loc_B23014: ExitProcI2
End Function

Private Function Proc_259_21_AAA950(arg_C, arg_10, arg_14) 'AAA950
  'Data Table: 4569C4
  loc_AAA468: ILdRf arg_10
  loc_AAA46B: FStStrCopy var_8C
  loc_AAA46E: ILdRf arg_14
  loc_AAA471: FStStrCopy var_90
  loc_AAA474: LitStr "SELECT oxu.*, DetaOrga"
  loc_AAA477: LitStr " FROM orgaxusua oxu"
  loc_AAA47A: ConcatStr
  loc_AAA47B: FStStrNoPop var_94
  loc_AAA47E: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = oxu.PeriInfo AND o.CodiOrga = oxu.CodiOrga"
  loc_AAA481: ConcatStr
  loc_AAA482: FStStrNoPop var_98
  loc_AAA485: LitStr " WHERE oxu.PeriInfo = "
  loc_AAA488: ConcatStr
  loc_AAA489: FStStrNoPop var_9C
  loc_AAA48C: FLdI2 arg_C
  loc_AAA48F: CStrUI1
  loc_AAA491: FStStrNoPop var_A0
  loc_AAA494: ConcatStr
  loc_AAA495: FStStrNoPop var_A4
  loc_AAA498: LitStr " AND oxu.CodiOrga = '"
  loc_AAA49B: ConcatStr
  loc_AAA49C: FStStrNoPop var_A8
  loc_AAA49F: ILdRf var_8C
  loc_AAA4A2: ConcatStr
  loc_AAA4A3: FStStrNoPop var_AC
  loc_AAA4A6: LitStr "'"
  loc_AAA4A9: ConcatStr
  loc_AAA4AA: FStStrNoPop var_B0
  loc_AAA4AD: LitStr " AND oxu.CodiUsua = '"
  loc_AAA4B0: ConcatStr
  loc_AAA4B1: FStStrNoPop var_B4
  loc_AAA4B4: ILdRf var_90
  loc_AAA4B7: ConcatStr
  loc_AAA4B8: FStStrNoPop var_B8
  loc_AAA4BB: LitStr "'"
  loc_AAA4BE: ConcatStr
  loc_AAA4BF: FStStrNoPop var_BC
  loc_AAA4C2: LitStr " LIMIT 1;"
  loc_AAA4C5: ConcatStr
  loc_AAA4C6: FStStrNoPop var_C0
  loc_AAA4C9: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_AAA4CE: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AAA4E9: FLdRfVar var_C4
  loc_AAA4EC: FMemLdPr
  loc_AAA4F1:  = Me.RecordCount
  loc_AAA4F6: ILdRf var_C4
  loc_AAA4F9: LitI4 0
  loc_AAA4FE: GtI4
  loc_AAA4FF: BranchF loc_AAA8CF
  loc_AAA502: LitStr vbNullString
  loc_AAA505: ILdPr
  loc_AAA508: Call tblorgaxusua.MsgErrorPut(from_stack_1v)
  loc_AAA50D: FLdRfVar var_EC
  loc_AAA510: FLdRfVar var_DC
  loc_AAA513: LitVarStr var_D8, "PeriInfo"
  loc_AAA518: PopAdLdVar
  loc_AAA519: FLdRfVar var_C8
  loc_AAA51C: FMemLdPr
  loc_AAA521:  = Me.Fields
  loc_AAA526: FLdPr var_C8
  loc_AAA529: from_stack_2 = Me.Item(from_stack_1)
  loc_AAA52E: FLdPr var_DC
  loc_AAA531:  = Me.Value
  loc_AAA536: FLdRfVar var_EC
  loc_AAA539: CStrVarTmp
  loc_AAA53A: FStStrNoPop var_94
  loc_AAA53D: ILdPr
  loc_AAA540: Call tblorgaxusua.PeriInfoPut(from_stack_1v)
  loc_AAA545: FFree1Str var_94
  loc_AAA548: FFreeAd var_C8 = ""
  loc_AAA54F: FFree1Var var_EC = ""
  loc_AAA552: FLdRfVar var_EC
  loc_AAA555: FLdRfVar var_DC
  loc_AAA558: LitVarStr var_D8, "CodiOrga"
  loc_AAA55D: PopAdLdVar
  loc_AAA55E: FLdRfVar var_C8
  loc_AAA561: FMemLdPr
  loc_AAA566:  = Me.Fields
  loc_AAA56B: FLdPr var_C8
  loc_AAA56E: from_stack_2 = Me.Item(from_stack_1)
  loc_AAA573: FLdPr var_DC
  loc_AAA576:  = Me.Value
  loc_AAA57B: FLdRfVar var_EC
  loc_AAA57E: CStrVarTmp
  loc_AAA57F: FStStrNoPop var_94
  loc_AAA582: ILdPr
  loc_AAA585: Call tblorgaxusua.CodiOrgaPut(from_stack_1v)
  loc_AAA58A: FFree1Str var_94
  loc_AAA58D: FFreeAd var_C8 = ""
  loc_AAA594: FFree1Var var_EC = ""
  loc_AAA597: FLdRfVar var_EC
  loc_AAA59A: FLdRfVar var_DC
  loc_AAA59D: LitVarStr var_D8, "DetaOrga"
  loc_AAA5A2: PopAdLdVar
  loc_AAA5A3: FLdRfVar var_C8
  loc_AAA5A6: FMemLdPr
  loc_AAA5AB:  = Me.Fields
  loc_AAA5B0: FLdPr var_C8
  loc_AAA5B3: from_stack_2 = Me.Item(from_stack_1)
  loc_AAA5B8: FLdPr var_DC
  loc_AAA5BB:  = Me.Value
  loc_AAA5C0: FLdRfVar var_EC
  loc_AAA5C3: CStrVarTmp
  loc_AAA5C4: FStStrNoPop var_94
  loc_AAA5C7: ILdPr
  loc_AAA5CA: Call tblorgaxusua.DetaOrgaPut(from_stack_1v)
  loc_AAA5CF: FFree1Str var_94
  loc_AAA5D2: FFreeAd var_C8 = ""
  loc_AAA5D9: FFree1Var var_EC = ""
  loc_AAA5DC: FLdRfVar var_EC
  loc_AAA5DF: FLdRfVar var_DC
  loc_AAA5E2: LitVarStr var_D8, "AltaUsua"
  loc_AAA5E7: PopAdLdVar
  loc_AAA5E8: FLdRfVar var_C8
  loc_AAA5EB: FMemLdPr
  loc_AAA5F0:  = Me.Fields
  loc_AAA5F5: FLdPr var_C8
  loc_AAA5F8: from_stack_2 = Me.Item(from_stack_1)
  loc_AAA5FD: FLdPr var_DC
  loc_AAA600:  = Me.Value
  loc_AAA605: FLdRfVar var_EC
  loc_AAA608: CStrVarTmp
  loc_AAA609: FStStrNoPop var_94
  loc_AAA60C: ILdPr
  loc_AAA60F: Call tblorgaxusua.AltaUsuaPut(from_stack_1v)
  loc_AAA614: FFree1Str var_94
  loc_AAA617: FFreeAd var_C8 = ""
  loc_AAA61E: FFree1Var var_EC = ""
  loc_AAA621: FLdRfVar var_EC
  loc_AAA624: FLdRfVar var_DC
  loc_AAA627: LitVarStr var_D8, "AltaFeho"
  loc_AAA62C: PopAdLdVar
  loc_AAA62D: FLdRfVar var_C8
  loc_AAA630: FMemLdPr
  loc_AAA635:  = Me.Fields
  loc_AAA63A: FLdPr var_C8
  loc_AAA63D: from_stack_2 = Me.Item(from_stack_1)
  loc_AAA642: FLdPr var_DC
  loc_AAA645:  = Me.Value
  loc_AAA64A: FLdRfVar var_124
  loc_AAA64D: LitVarStr var_120, "AltaFeho"
  loc_AAA652: PopAdLdVar
  loc_AAA653: FLdRfVar var_110
  loc_AAA656: FMemLdPr
  loc_AAA65B:  = Me.Fields
  loc_AAA660: FLdPr var_110
  loc_AAA663: from_stack_2 = Me.Item(from_stack_1)
  loc_AAA668: LitVarStr var_154, vbNullString
  loc_AAA66D: FStVarCopyObj var_164
  loc_AAA670: FLdRfVar var_164
  loc_AAA673: FLdZeroAd var_124
  loc_AAA676: CVarAd
  loc_AAA67A: FLdRfVar var_EC
  loc_AAA67D: LitVarStr var_FC, vbNullString
  loc_AAA682: HardType
  loc_AAA683: NeVar var_10C
  loc_AAA687: FStVar var_134
  loc_AAA68B: FLdRfVar var_134
  loc_AAA68E: FLdRfVar var_174
  loc_AAA691: ImpAdCallFPR4  = IIf(, , )
  loc_AAA696: FLdRfVar var_174
  loc_AAA699: CStrVarVal var_94
  loc_AAA69D: ILdPr
  loc_AAA6A0: Call tblorgaxusua.AltaFehoPut(from_stack_1v)
  loc_AAA6A5: FFree1Str var_94
  loc_AAA6A8: FFreeAd var_C8 = "": var_DC = ""
  loc_AAA6B1: FFreeVar var_EC = "": var_134 = "": var_144 = "": var_164 = ""
  loc_AAA6BE: FLdRfVar var_EC
  loc_AAA6C1: FLdRfVar var_DC
  loc_AAA6C4: LitVarStr var_D8, "ModiUsua"
  loc_AAA6C9: PopAdLdVar
  loc_AAA6CA: FLdRfVar var_C8
  loc_AAA6CD: FMemLdPr
  loc_AAA6D2:  = Me.Fields
  loc_AAA6D7: FLdPr var_C8
  loc_AAA6DA: from_stack_2 = Me.Item(from_stack_1)
  loc_AAA6DF: FLdPr var_DC
  loc_AAA6E2:  = Me.Value
  loc_AAA6E7: FLdRfVar var_EC
  loc_AAA6EA: CStrVarTmp
  loc_AAA6EB: FStStrNoPop var_94
  loc_AAA6EE: ILdPr
  loc_AAA6F1: Call tblorgaxusua.ModiUsuaPut(from_stack_1v)
  loc_AAA6F6: FFree1Str var_94
  loc_AAA6F9: FFreeAd var_C8 = ""
  loc_AAA700: FFree1Var var_EC = ""
  loc_AAA703: FLdRfVar var_EC
  loc_AAA706: FLdRfVar var_DC
  loc_AAA709: LitVarStr var_D8, "ModiFeho"
  loc_AAA70E: PopAdLdVar
  loc_AAA70F: FLdRfVar var_C8
  loc_AAA712: FMemLdPr
  loc_AAA717:  = Me.Fields
  loc_AAA71C: FLdPr var_C8
  loc_AAA71F: from_stack_2 = Me.Item(from_stack_1)
  loc_AAA724: FLdPr var_DC
  loc_AAA727:  = Me.Value
  loc_AAA72C: FLdRfVar var_124
  loc_AAA72F: LitVarStr var_120, "ModiFeho"
  loc_AAA734: PopAdLdVar
  loc_AAA735: FLdRfVar var_110
  loc_AAA738: FMemLdPr
  loc_AAA73D:  = Me.Fields
  loc_AAA742: FLdPr var_110
  loc_AAA745: from_stack_2 = Me.Item(from_stack_1)
  loc_AAA74A: LitVarStr var_154, vbNullString
  loc_AAA74F: FStVarCopyObj var_164
  loc_AAA752: FLdRfVar var_164
  loc_AAA755: FLdZeroAd var_124
  loc_AAA758: CVarAd
  loc_AAA75C: FLdRfVar var_EC
  loc_AAA75F: LitVarStr var_FC, vbNullString
  loc_AAA764: HardType
  loc_AAA765: NeVar var_10C
  loc_AAA769: FStVar var_134
  loc_AAA76D: FLdRfVar var_134
  loc_AAA770: FLdRfVar var_174
  loc_AAA773: ImpAdCallFPR4  = IIf(, , )
  loc_AAA778: FLdRfVar var_174
  loc_AAA77B: CStrVarVal var_94
  loc_AAA77F: ILdPr
  loc_AAA782: Call tblorgaxusua.ModiFehoPut(from_stack_1v)
  loc_AAA787: FFree1Str var_94
  loc_AAA78A: FFreeAd var_C8 = "": var_DC = ""
  loc_AAA793: FFreeVar var_EC = "": var_134 = "": var_144 = "": var_164 = ""
  loc_AAA7A0: FLdRfVar var_EC
  loc_AAA7A3: FLdRfVar var_DC
  loc_AAA7A6: LitVarStr var_D8, "BajaUsua"
  loc_AAA7AB: PopAdLdVar
  loc_AAA7AC: FLdRfVar var_C8
  loc_AAA7AF: FMemLdPr
  loc_AAA7B4:  = Me.Fields
  loc_AAA7B9: FLdPr var_C8
  loc_AAA7BC: from_stack_2 = Me.Item(from_stack_1)
  loc_AAA7C1: FLdPr var_DC
  loc_AAA7C4:  = Me.Value
  loc_AAA7C9: FLdRfVar var_EC
  loc_AAA7CC: CStrVarTmp
  loc_AAA7CD: FStStrNoPop var_94
  loc_AAA7D0: ILdPr
  loc_AAA7D3: Call tblorgaxusua.BajaUsuaPut(from_stack_1v)
  loc_AAA7D8: FFree1Str var_94
  loc_AAA7DB: FFreeAd var_C8 = ""
  loc_AAA7E2: FFree1Var var_EC = ""
  loc_AAA7E5: FLdRfVar var_EC
  loc_AAA7E8: FLdRfVar var_DC
  loc_AAA7EB: LitVarStr var_D8, "BajaFeho"
  loc_AAA7F0: PopAdLdVar
  loc_AAA7F1: FLdRfVar var_C8
  loc_AAA7F4: FMemLdPr
  loc_AAA7F9:  = Me.Fields
  loc_AAA7FE: FLdPr var_C8
  loc_AAA801: from_stack_2 = Me.Item(from_stack_1)
  loc_AAA806: FLdPr var_DC
  loc_AAA809:  = Me.Value
  loc_AAA80E: FLdRfVar var_124
  loc_AAA811: LitVarStr var_120, "BajaFeho"
  loc_AAA816: PopAdLdVar
  loc_AAA817: FLdRfVar var_110
  loc_AAA81A: FMemLdPr
  loc_AAA81F:  = Me.Fields
  loc_AAA824: FLdPr var_110
  loc_AAA827: from_stack_2 = Me.Item(from_stack_1)
  loc_AAA82C: LitVarStr var_154, vbNullString
  loc_AAA831: FStVarCopyObj var_164
  loc_AAA834: FLdRfVar var_164
  loc_AAA837: FLdZeroAd var_124
  loc_AAA83A: CVarAd
  loc_AAA83E: FLdRfVar var_EC
  loc_AAA841: LitVarStr var_FC, vbNullString
  loc_AAA846: HardType
  loc_AAA847: NeVar var_10C
  loc_AAA84B: FStVar var_134
  loc_AAA84F: FLdRfVar var_134
  loc_AAA852: FLdRfVar var_174
  loc_AAA855: ImpAdCallFPR4  = IIf(, , )
  loc_AAA85A: FLdRfVar var_174
  loc_AAA85D: CStrVarVal var_94
  loc_AAA861: ILdPr
  loc_AAA864: Call tblorgaxusua.BajaFehoPut(from_stack_1v)
  loc_AAA869: FFree1Str var_94
  loc_AAA86C: FFreeAd var_C8 = "": var_DC = ""
  loc_AAA875: FFreeVar var_EC = "": var_134 = "": var_144 = "": var_164 = ""
  loc_AAA882: FLdRfVar var_EC
  loc_AAA885: FLdRfVar var_DC
  loc_AAA888: LitVarStr var_D8, "BajaMoti"
  loc_AAA88D: PopAdLdVar
  loc_AAA88E: FLdRfVar var_C8
  loc_AAA891: FMemLdPr
  loc_AAA896:  = Me.Fields
  loc_AAA89B: FLdPr var_C8
  loc_AAA89E: from_stack_2 = Me.Item(from_stack_1)
  loc_AAA8A3: FLdPr var_DC
  loc_AAA8A6:  = Me.Value
  loc_AAA8AB: FLdRfVar var_EC
  loc_AAA8AE: CStrVarTmp
  loc_AAA8AF: FStStrNoPop var_94
  loc_AAA8B2: ILdPr
  loc_AAA8B5: Call tblorgaxusua.BajaMotiPut(from_stack_1v)
  loc_AAA8BA: FFree1Str var_94
  loc_AAA8BD: FFreeAd var_C8 = ""
  loc_AAA8C4: FFree1Var var_EC = ""
  loc_AAA8C7: LitI2_Byte &HFF
  loc_AAA8C9: FStI2 var_86
  loc_AAA8CC: Branch loc_AAA94D
  loc_AAA8CF: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_AAA8D2: ILdPr
  loc_AAA8D5: Call tblorgaxusua.MsgErrorPut(from_stack_1v)
  loc_AAA8DA: LitStr vbNullString
  loc_AAA8DD: ILdPr
  loc_AAA8E0: Call tblorgaxusua.PeriInfoPut(from_stack_1v)
  loc_AAA8E5: LitStr vbNullString
  loc_AAA8E8: ILdPr
  loc_AAA8EB: Call tblorgaxusua.CodiOrgaPut(from_stack_1v)
  loc_AAA8F0: LitStr vbNullString
  loc_AAA8F3: ILdPr
  loc_AAA8F6: Call tblorgaxusua.DetaOrgaPut(from_stack_1v)
  loc_AAA8FB: LitStr vbNullString
  loc_AAA8FE: ILdPr
  loc_AAA901: Call tblorgaxusua.AltaUsuaPut(from_stack_1v)
  loc_AAA906: LitStr vbNullString
  loc_AAA909: ILdPr
  loc_AAA90C: Call tblorgaxusua.AltaFehoPut(from_stack_1v)
  loc_AAA911: LitStr vbNullString
  loc_AAA914: ILdPr
  loc_AAA917: Call tblorgaxusua.ModiUsuaPut(from_stack_1v)
  loc_AAA91C: LitStr vbNullString
  loc_AAA91F: ILdPr
  loc_AAA922: Call tblorgaxusua.ModiFehoPut(from_stack_1v)
  loc_AAA927: LitStr vbNullString
  loc_AAA92A: ILdPr
  loc_AAA92D: Call tblorgaxusua.BajaUsuaPut(from_stack_1v)
  loc_AAA932: LitStr vbNullString
  loc_AAA935: ILdPr
  loc_AAA938: Call tblorgaxusua.BajaFehoPut(from_stack_1v)
  loc_AAA93D: LitStr vbNullString
  loc_AAA940: ILdPr
  loc_AAA943: Call tblorgaxusua.BajaMotiPut(from_stack_1v)
  loc_AAA948: LitI2_Byte 0
  loc_AAA94A: FStI2 var_86
  loc_AAA94D: ExitProcI2
End Function

Private Function Proc_259_22_A99DEC(arg_C, arg_10) 'A99DEC
  'Data Table: 4569C4
  loc_A9996C: ILdRf arg_C
  loc_A9996F: FStStrCopy var_8C
  loc_A99972: ILdRf arg_10
  loc_A99975: FStStrCopy var_90
  loc_A99978: LitStr "SELECT txu.*, DetaTico"
  loc_A9997B: LitStr " FROM ticoxusua txu"
  loc_A9997E: ConcatStr
  loc_A9997F: FStStrNoPop var_94
  loc_A99982: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = txu.CodiTico"
  loc_A99985: ConcatStr
  loc_A99986: FStStrNoPop var_98
  loc_A99989: LitStr " WHERE txu.CodiTico = '"
  loc_A9998C: ConcatStr
  loc_A9998D: FStStrNoPop var_9C
  loc_A99990: ILdRf var_8C
  loc_A99993: ConcatStr
  loc_A99994: FStStrNoPop var_A0
  loc_A99997: LitStr "'"
  loc_A9999A: ConcatStr
  loc_A9999B: FStStrNoPop var_A4
  loc_A9999E: LitStr " AND txu.CodiUsua = '"
  loc_A999A1: ConcatStr
  loc_A999A2: FStStrNoPop var_A8
  loc_A999A5: ILdRf var_90
  loc_A999A8: ConcatStr
  loc_A999A9: FStStrNoPop var_AC
  loc_A999AC: LitStr "'"
  loc_A999AF: ConcatStr
  loc_A999B0: FStStrNoPop var_B0
  loc_A999B3: LitStr " LIMIT 1;"
  loc_A999B6: ConcatStr
  loc_A999B7: FStStrNoPop var_B4
  loc_A999BA: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_A999BF: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A999D4: FLdRfVar var_B8
  loc_A999D7: FMemLdPr
  loc_A999DC:  = Me.RecordCount
  loc_A999E1: ILdRf var_B8
  loc_A999E4: LitI4 0
  loc_A999E9: GtI4
  loc_A999EA: BranchF loc_A99D75
  loc_A999ED: LitStr vbNullString
  loc_A999F0: ILdPr
  loc_A999F3: Call tblticoxusua.MsgErrorPut(from_stack_1v)
  loc_A999F8: FLdRfVar var_E0
  loc_A999FB: FLdRfVar var_D0
  loc_A999FE: LitVarStr var_CC, "CodiTico"
  loc_A99A03: PopAdLdVar
  loc_A99A04: FLdRfVar var_BC
  loc_A99A07: FMemLdPr
  loc_A99A0C:  = Me.Fields
  loc_A99A11: FLdPr var_BC
  loc_A99A14: from_stack_2 = Me.Item(from_stack_1)
  loc_A99A19: FLdPr var_D0
  loc_A99A1C:  = Me.Value
  loc_A99A21: FLdRfVar var_E0
  loc_A99A24: CStrVarTmp
  loc_A99A25: FStStrNoPop var_94
  loc_A99A28: ILdPr
  loc_A99A2B: Call tblticoxusua.CodiTicoPut(from_stack_1v)
  loc_A99A30: FFree1Str var_94
  loc_A99A33: FFreeAd var_BC = ""
  loc_A99A3A: FFree1Var var_E0 = ""
  loc_A99A3D: FLdRfVar var_E0
  loc_A99A40: FLdRfVar var_D0
  loc_A99A43: LitVarStr var_CC, "DetaTico"
  loc_A99A48: PopAdLdVar
  loc_A99A49: FLdRfVar var_BC
  loc_A99A4C: FMemLdPr
  loc_A99A51:  = Me.Fields
  loc_A99A56: FLdPr var_BC
  loc_A99A59: from_stack_2 = Me.Item(from_stack_1)
  loc_A99A5E: FLdPr var_D0
  loc_A99A61:  = Me.Value
  loc_A99A66: FLdRfVar var_E0
  loc_A99A69: CStrVarTmp
  loc_A99A6A: FStStrNoPop var_94
  loc_A99A6D: ILdPr
  loc_A99A70: Call tblticoxusua.DetaTicoPut(from_stack_1v)
  loc_A99A75: FFree1Str var_94
  loc_A99A78: FFreeAd var_BC = ""
  loc_A99A7F: FFree1Var var_E0 = ""
  loc_A99A82: FLdRfVar var_E0
  loc_A99A85: FLdRfVar var_D0
  loc_A99A88: LitVarStr var_CC, "AltaUsua"
  loc_A99A8D: PopAdLdVar
  loc_A99A8E: FLdRfVar var_BC
  loc_A99A91: FMemLdPr
  loc_A99A96:  = Me.Fields
  loc_A99A9B: FLdPr var_BC
  loc_A99A9E: from_stack_2 = Me.Item(from_stack_1)
  loc_A99AA3: FLdPr var_D0
  loc_A99AA6:  = Me.Value
  loc_A99AAB: FLdRfVar var_E0
  loc_A99AAE: CStrVarTmp
  loc_A99AAF: FStStrNoPop var_94
  loc_A99AB2: ILdPr
  loc_A99AB5: Call tblticoxusua.AltaUsuaPut(from_stack_1v)
  loc_A99ABA: FFree1Str var_94
  loc_A99ABD: FFreeAd var_BC = ""
  loc_A99AC4: FFree1Var var_E0 = ""
  loc_A99AC7: FLdRfVar var_E0
  loc_A99ACA: FLdRfVar var_D0
  loc_A99ACD: LitVarStr var_CC, "AltaFeho"
  loc_A99AD2: PopAdLdVar
  loc_A99AD3: FLdRfVar var_BC
  loc_A99AD6: FMemLdPr
  loc_A99ADB:  = Me.Fields
  loc_A99AE0: FLdPr var_BC
  loc_A99AE3: from_stack_2 = Me.Item(from_stack_1)
  loc_A99AE8: FLdPr var_D0
  loc_A99AEB:  = Me.Value
  loc_A99AF0: FLdRfVar var_118
  loc_A99AF3: LitVarStr var_114, "AltaFeho"
  loc_A99AF8: PopAdLdVar
  loc_A99AF9: FLdRfVar var_104
  loc_A99AFC: FMemLdPr
  loc_A99B01:  = Me.Fields
  loc_A99B06: FLdPr var_104
  loc_A99B09: from_stack_2 = Me.Item(from_stack_1)
  loc_A99B0E: LitVarStr var_148, vbNullString
  loc_A99B13: FStVarCopyObj var_158
  loc_A99B16: FLdRfVar var_158
  loc_A99B19: FLdZeroAd var_118
  loc_A99B1C: CVarAd
  loc_A99B20: FLdRfVar var_E0
  loc_A99B23: LitVarStr var_F0, vbNullString
  loc_A99B28: HardType
  loc_A99B29: NeVar var_100
  loc_A99B2D: FStVar var_128
  loc_A99B31: FLdRfVar var_128
  loc_A99B34: FLdRfVar var_168
  loc_A99B37: ImpAdCallFPR4  = IIf(, , )
  loc_A99B3C: FLdRfVar var_168
  loc_A99B3F: CStrVarVal var_94
  loc_A99B43: ILdPr
  loc_A99B46: Call tblticoxusua.AltaFehoPut(from_stack_1v)
  loc_A99B4B: FFree1Str var_94
  loc_A99B4E: FFreeAd var_BC = "": var_D0 = ""
  loc_A99B57: FFreeVar var_E0 = "": var_128 = "": var_138 = "": var_158 = ""
  loc_A99B64: FLdRfVar var_E0
  loc_A99B67: FLdRfVar var_D0
  loc_A99B6A: LitVarStr var_CC, "ModiUsua"
  loc_A99B6F: PopAdLdVar
  loc_A99B70: FLdRfVar var_BC
  loc_A99B73: FMemLdPr
  loc_A99B78:  = Me.Fields
  loc_A99B7D: FLdPr var_BC
  loc_A99B80: from_stack_2 = Me.Item(from_stack_1)
  loc_A99B85: FLdPr var_D0
  loc_A99B88:  = Me.Value
  loc_A99B8D: FLdRfVar var_E0
  loc_A99B90: CStrVarTmp
  loc_A99B91: FStStrNoPop var_94
  loc_A99B94: ILdPr
  loc_A99B97: Call tblticoxusua.ModiUsuaPut(from_stack_1v)
  loc_A99B9C: FFree1Str var_94
  loc_A99B9F: FFreeAd var_BC = ""
  loc_A99BA6: FFree1Var var_E0 = ""
  loc_A99BA9: FLdRfVar var_E0
  loc_A99BAC: FLdRfVar var_D0
  loc_A99BAF: LitVarStr var_CC, "ModiFeho"
  loc_A99BB4: PopAdLdVar
  loc_A99BB5: FLdRfVar var_BC
  loc_A99BB8: FMemLdPr
  loc_A99BBD:  = Me.Fields
  loc_A99BC2: FLdPr var_BC
  loc_A99BC5: from_stack_2 = Me.Item(from_stack_1)
  loc_A99BCA: FLdPr var_D0
  loc_A99BCD:  = Me.Value
  loc_A99BD2: FLdRfVar var_118
  loc_A99BD5: LitVarStr var_114, "ModiFeho"
  loc_A99BDA: PopAdLdVar
  loc_A99BDB: FLdRfVar var_104
  loc_A99BDE: FMemLdPr
  loc_A99BE3:  = Me.Fields
  loc_A99BE8: FLdPr var_104
  loc_A99BEB: from_stack_2 = Me.Item(from_stack_1)
  loc_A99BF0: LitVarStr var_148, vbNullString
  loc_A99BF5: FStVarCopyObj var_158
  loc_A99BF8: FLdRfVar var_158
  loc_A99BFB: FLdZeroAd var_118
  loc_A99BFE: CVarAd
  loc_A99C02: FLdRfVar var_E0
  loc_A99C05: LitVarStr var_F0, vbNullString
  loc_A99C0A: HardType
  loc_A99C0B: NeVar var_100
  loc_A99C0F: FStVar var_128
  loc_A99C13: FLdRfVar var_128
  loc_A99C16: FLdRfVar var_168
  loc_A99C19: ImpAdCallFPR4  = IIf(, , )
  loc_A99C1E: FLdRfVar var_168
  loc_A99C21: CStrVarVal var_94
  loc_A99C25: ILdPr
  loc_A99C28: Call tblticoxusua.ModiFehoPut(from_stack_1v)
  loc_A99C2D: FFree1Str var_94
  loc_A99C30: FFreeAd var_BC = "": var_D0 = ""
  loc_A99C39: FFreeVar var_E0 = "": var_128 = "": var_138 = "": var_158 = ""
  loc_A99C46: FLdRfVar var_E0
  loc_A99C49: FLdRfVar var_D0
  loc_A99C4C: LitVarStr var_CC, "BajaUsua"
  loc_A99C51: PopAdLdVar
  loc_A99C52: FLdRfVar var_BC
  loc_A99C55: FMemLdPr
  loc_A99C5A:  = Me.Fields
  loc_A99C5F: FLdPr var_BC
  loc_A99C62: from_stack_2 = Me.Item(from_stack_1)
  loc_A99C67: FLdPr var_D0
  loc_A99C6A:  = Me.Value
  loc_A99C6F: FLdRfVar var_E0
  loc_A99C72: CStrVarTmp
  loc_A99C73: FStStrNoPop var_94
  loc_A99C76: ILdPr
  loc_A99C79: Call tblticoxusua.BajaUsuaPut(from_stack_1v)
  loc_A99C7E: FFree1Str var_94
  loc_A99C81: FFreeAd var_BC = ""
  loc_A99C88: FFree1Var var_E0 = ""
  loc_A99C8B: FLdRfVar var_E0
  loc_A99C8E: FLdRfVar var_D0
  loc_A99C91: LitVarStr var_CC, "BajaFeho"
  loc_A99C96: PopAdLdVar
  loc_A99C97: FLdRfVar var_BC
  loc_A99C9A: FMemLdPr
  loc_A99C9F:  = Me.Fields
  loc_A99CA4: FLdPr var_BC
  loc_A99CA7: from_stack_2 = Me.Item(from_stack_1)
  loc_A99CAC: FLdPr var_D0
  loc_A99CAF:  = Me.Value
  loc_A99CB4: FLdRfVar var_118
  loc_A99CB7: LitVarStr var_114, "BajaFeho"
  loc_A99CBC: PopAdLdVar
  loc_A99CBD: FLdRfVar var_104
  loc_A99CC0: FMemLdPr
  loc_A99CC5:  = Me.Fields
  loc_A99CCA: FLdPr var_104
  loc_A99CCD: from_stack_2 = Me.Item(from_stack_1)
  loc_A99CD2: LitVarStr var_148, vbNullString
  loc_A99CD7: FStVarCopyObj var_158
  loc_A99CDA: FLdRfVar var_158
  loc_A99CDD: FLdZeroAd var_118
  loc_A99CE0: CVarAd
  loc_A99CE4: FLdRfVar var_E0
  loc_A99CE7: LitVarStr var_F0, vbNullString
  loc_A99CEC: HardType
  loc_A99CED: NeVar var_100
  loc_A99CF1: FStVar var_128
  loc_A99CF5: FLdRfVar var_128
  loc_A99CF8: FLdRfVar var_168
  loc_A99CFB: ImpAdCallFPR4  = IIf(, , )
  loc_A99D00: FLdRfVar var_168
  loc_A99D03: CStrVarVal var_94
  loc_A99D07: ILdPr
  loc_A99D0A: Call tblticoxusua.BajaFehoPut(from_stack_1v)
  loc_A99D0F: FFree1Str var_94
  loc_A99D12: FFreeAd var_BC = "": var_D0 = ""
  loc_A99D1B: FFreeVar var_E0 = "": var_128 = "": var_138 = "": var_158 = ""
  loc_A99D28: FLdRfVar var_E0
  loc_A99D2B: FLdRfVar var_D0
  loc_A99D2E: LitVarStr var_CC, "BajaMoti"
  loc_A99D33: PopAdLdVar
  loc_A99D34: FLdRfVar var_BC
  loc_A99D37: FMemLdPr
  loc_A99D3C:  = Me.Fields
  loc_A99D41: FLdPr var_BC
  loc_A99D44: from_stack_2 = Me.Item(from_stack_1)
  loc_A99D49: FLdPr var_D0
  loc_A99D4C:  = Me.Value
  loc_A99D51: FLdRfVar var_E0
  loc_A99D54: CStrVarTmp
  loc_A99D55: FStStrNoPop var_94
  loc_A99D58: ILdPr
  loc_A99D5B: Call tblticoxusua.BajaMotiPut(from_stack_1v)
  loc_A99D60: FFree1Str var_94
  loc_A99D63: FFreeAd var_BC = ""
  loc_A99D6A: FFree1Var var_E0 = ""
  loc_A99D6D: LitI2_Byte &HFF
  loc_A99D6F: FStI2 var_86
  loc_A99D72: Branch loc_A99DE8
  loc_A99D75: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_A99D78: ILdPr
  loc_A99D7B: Call tblticoxusua.MsgErrorPut(from_stack_1v)
  loc_A99D80: LitStr vbNullString
  loc_A99D83: ILdPr
  loc_A99D86: Call tblticoxusua.CodiTicoPut(from_stack_1v)
  loc_A99D8B: LitStr vbNullString
  loc_A99D8E: ILdPr
  loc_A99D91: Call tblticoxusua.DetaTicoPut(from_stack_1v)
  loc_A99D96: LitStr vbNullString
  loc_A99D99: ILdPr
  loc_A99D9C: Call tblticoxusua.AltaUsuaPut(from_stack_1v)
  loc_A99DA1: LitStr vbNullString
  loc_A99DA4: ILdPr
  loc_A99DA7: Call tblticoxusua.AltaFehoPut(from_stack_1v)
  loc_A99DAC: LitStr vbNullString
  loc_A99DAF: ILdPr
  loc_A99DB2: Call tblticoxusua.ModiUsuaPut(from_stack_1v)
  loc_A99DB7: LitStr vbNullString
  loc_A99DBA: ILdPr
  loc_A99DBD: Call tblticoxusua.ModiFehoPut(from_stack_1v)
  loc_A99DC2: LitStr vbNullString
  loc_A99DC5: ILdPr
  loc_A99DC8: Call tblticoxusua.BajaUsuaPut(from_stack_1v)
  loc_A99DCD: LitStr vbNullString
  loc_A99DD0: ILdPr
  loc_A99DD3: Call tblticoxusua.BajaFehoPut(from_stack_1v)
  loc_A99DD8: LitStr vbNullString
  loc_A99DDB: ILdPr
  loc_A99DDE: Call tblticoxusua.BajaMotiPut(from_stack_1v)
  loc_A99DE3: LitI2_Byte 0
  loc_A99DE5: FStI2 var_86
  loc_A99DE8: ExitProcI2
  loc_A99DE9: CDateR8
  loc_A99DEA: MemStFPR4 global_-29692
End Function

Private Function Proc_259_23_AE2098(arg_C) 'AE2098
  'Data Table: 4569C4
  loc_AE19DC: LitStr "SELECT *"
  loc_AE19DF: LitStr " FROM paraconta"
  loc_AE19E2: ConcatStr
  loc_AE19E3: FStStrNoPop var_8C
  loc_AE19E6: LitStr " WHERE PeriInfo = '"
  loc_AE19E9: ConcatStr
  loc_AE19EA: FStStrNoPop var_90
  loc_AE19ED: FLdI2 arg_C
  loc_AE19F0: CStrUI1
  loc_AE19F2: FStStrNoPop var_94
  loc_AE19F5: ConcatStr
  loc_AE19F6: FStStrNoPop var_98
  loc_AE19F9: LitStr "'"
  loc_AE19FC: ConcatStr
  loc_AE19FD: FStStrNoPop var_9C
  loc_AE1A00: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_AE1A05: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_AE1A12: FLdRfVar var_A0
  loc_AE1A15: FMemLdPr
  loc_AE1A1A:  = Me.RecordCount
  loc_AE1A1F: ILdRf var_A0
  loc_AE1A22: LitI4 0
  loc_AE1A27: GtI4
  loc_AE1A28: BranchF loc_AE1FB5
  loc_AE1A2B: LitStr vbNullString
  loc_AE1A2E: ILdPr
  loc_AE1A31: Call tblparaconta.MsgErrorPut(from_stack_1v)
  loc_AE1A36: FLdRfVar var_C8
  loc_AE1A39: FLdRfVar var_B8
  loc_AE1A3C: LitVarStr var_B4, "PeriInfo"
  loc_AE1A41: PopAdLdVar
  loc_AE1A42: FLdRfVar var_A4
  loc_AE1A45: FMemLdPr
  loc_AE1A4A:  = Me.Fields
  loc_AE1A4F: FLdPr var_A4
  loc_AE1A52: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1A57: FLdPr var_B8
  loc_AE1A5A:  = Me.Value
  loc_AE1A5F: FLdRfVar var_C8
  loc_AE1A62: CStrVarTmp
  loc_AE1A63: FStStrNoPop var_8C
  loc_AE1A66: ILdPr
  loc_AE1A69: Call tblparaconta.PeriInfoPut(from_stack_1v)
  loc_AE1A6E: FFree1Str var_8C
  loc_AE1A71: FFreeAd var_A4 = ""
  loc_AE1A78: FFree1Var var_C8 = ""
  loc_AE1A7B: FLdRfVar var_C8
  loc_AE1A7E: FLdRfVar var_B8
  loc_AE1A81: LitVarStr var_B4, "CaerPaco"
  loc_AE1A86: PopAdLdVar
  loc_AE1A87: FLdRfVar var_A4
  loc_AE1A8A: FMemLdPr
  loc_AE1A8F:  = Me.Fields
  loc_AE1A94: FLdPr var_A4
  loc_AE1A97: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1A9C: FLdPr var_B8
  loc_AE1A9F:  = Me.Value
  loc_AE1AA4: FLdRfVar var_C8
  loc_AE1AA7: CStrVarTmp
  loc_AE1AA8: FStStrNoPop var_8C
  loc_AE1AAB: ILdPr
  loc_AE1AAE: Call tblparaconta.CaerPacoPut(from_stack_1v)
  loc_AE1AB3: FFree1Str var_8C
  loc_AE1AB6: FFreeAd var_A4 = ""
  loc_AE1ABD: FFree1Var var_C8 = ""
  loc_AE1AC0: FLdRfVar var_C8
  loc_AE1AC3: FLdRfVar var_B8
  loc_AE1AC6: LitVarStr var_B4, "ProvPaco"
  loc_AE1ACB: PopAdLdVar
  loc_AE1ACC: FLdRfVar var_A4
  loc_AE1ACF: FMemLdPr
  loc_AE1AD4:  = Me.Fields
  loc_AE1AD9: FLdPr var_A4
  loc_AE1ADC: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1AE1: FLdPr var_B8
  loc_AE1AE4:  = Me.Value
  loc_AE1AE9: FLdRfVar var_C8
  loc_AE1AEC: CStrVarTmp
  loc_AE1AED: FStStrNoPop var_8C
  loc_AE1AF0: ILdPr
  loc_AE1AF3: Call tblparaconta.ProvPacoPut(from_stack_1v)
  loc_AE1AF8: FFree1Str var_8C
  loc_AE1AFB: FFreeAd var_A4 = ""
  loc_AE1B02: FFree1Var var_C8 = ""
  loc_AE1B05: FLdRfVar var_C8
  loc_AE1B08: FLdRfVar var_B8
  loc_AE1B0B: LitVarStr var_B4, "ChsrPaco"
  loc_AE1B10: PopAdLdVar
  loc_AE1B11: FLdRfVar var_A4
  loc_AE1B14: FMemLdPr
  loc_AE1B19:  = Me.Fields
  loc_AE1B1E: FLdPr var_A4
  loc_AE1B21: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1B26: FLdPr var_B8
  loc_AE1B29:  = Me.Value
  loc_AE1B2E: FLdRfVar var_C8
  loc_AE1B31: CStrVarTmp
  loc_AE1B32: FStStrNoPop var_8C
  loc_AE1B35: ILdPr
  loc_AE1B38: Call tblparaconta.ChsrPacoPut(from_stack_1v)
  loc_AE1B3D: FFree1Str var_8C
  loc_AE1B40: FFreeAd var_A4 = ""
  loc_AE1B47: FFree1Var var_C8 = ""
  loc_AE1B4A: FLdRfVar var_C8
  loc_AE1B4D: FLdRfVar var_B8
  loc_AE1B50: LitVarStr var_B4, "DeexPaco"
  loc_AE1B55: PopAdLdVar
  loc_AE1B56: FLdRfVar var_A4
  loc_AE1B59: FMemLdPr
  loc_AE1B5E:  = Me.Fields
  loc_AE1B63: FLdPr var_A4
  loc_AE1B66: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1B6B: FLdPr var_B8
  loc_AE1B6E:  = Me.Value
  loc_AE1B73: FLdRfVar var_C8
  loc_AE1B76: CStrVarTmp
  loc_AE1B77: FStStrNoPop var_8C
  loc_AE1B7A: ILdPr
  loc_AE1B7D: Call tblparaconta.DeexPacoPut(from_stack_1v)
  loc_AE1B82: FFree1Str var_8C
  loc_AE1B85: FFreeAd var_A4 = ""
  loc_AE1B8C: FFree1Var var_C8 = ""
  loc_AE1B8F: FLdRfVar var_C8
  loc_AE1B92: FLdRfVar var_B8
  loc_AE1B95: LitVarStr var_B4, "PaexPaco"
  loc_AE1B9A: PopAdLdVar
  loc_AE1B9B: FLdRfVar var_A4
  loc_AE1B9E: FMemLdPr
  loc_AE1BA3:  = Me.Fields
  loc_AE1BA8: FLdPr var_A4
  loc_AE1BAB: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1BB0: FLdPr var_B8
  loc_AE1BB3:  = Me.Value
  loc_AE1BB8: FLdRfVar var_C8
  loc_AE1BBB: CStrVarTmp
  loc_AE1BBC: FStStrNoPop var_8C
  loc_AE1BBF: ILdPr
  loc_AE1BC2: Call tblparaconta.PaexPacoPut(from_stack_1v)
  loc_AE1BC7: FFree1Str var_8C
  loc_AE1BCA: FFreeAd var_A4 = ""
  loc_AE1BD1: FFree1Var var_C8 = ""
  loc_AE1BD4: FLdRfVar var_C8
  loc_AE1BD7: FLdRfVar var_B8
  loc_AE1BDA: LitVarStr var_B4, "CatePaco"
  loc_AE1BDF: PopAdLdVar
  loc_AE1BE0: FLdRfVar var_A4
  loc_AE1BE3: FMemLdPr
  loc_AE1BE8:  = Me.Fields
  loc_AE1BED: FLdPr var_A4
  loc_AE1BF0: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1BF5: FLdPr var_B8
  loc_AE1BF8:  = Me.Value
  loc_AE1BFD: FLdRfVar var_C8
  loc_AE1C00: CStrVarTmp
  loc_AE1C01: FStStrNoPop var_8C
  loc_AE1C04: ILdPr
  loc_AE1C07: Call tblparaconta.CatePacoPut(from_stack_1v)
  loc_AE1C0C: FFree1Str var_8C
  loc_AE1C0F: FFreeAd var_A4 = ""
  loc_AE1C16: FFree1Var var_C8 = ""
  loc_AE1C19: FLdRfVar var_C8
  loc_AE1C1C: FLdRfVar var_B8
  loc_AE1C1F: LitVarStr var_B4, "CajaPaco"
  loc_AE1C24: PopAdLdVar
  loc_AE1C25: FLdRfVar var_A4
  loc_AE1C28: FMemLdPr
  loc_AE1C2D:  = Me.Fields
  loc_AE1C32: FLdPr var_A4
  loc_AE1C35: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1C3A: FLdPr var_B8
  loc_AE1C3D:  = Me.Value
  loc_AE1C42: FLdRfVar var_C8
  loc_AE1C45: CStrVarTmp
  loc_AE1C46: FStStrNoPop var_8C
  loc_AE1C49: ILdPr
  loc_AE1C4C: Call tblparaconta.CajaPacoPut(from_stack_1v)
  loc_AE1C51: FFree1Str var_8C
  loc_AE1C54: FFreeAd var_A4 = ""
  loc_AE1C5B: FFree1Var var_C8 = ""
  loc_AE1C5E: FLdRfVar var_C8
  loc_AE1C61: FLdRfVar var_B8
  loc_AE1C64: LitVarStr var_B4, "CarePaco"
  loc_AE1C69: PopAdLdVar
  loc_AE1C6A: FLdRfVar var_A4
  loc_AE1C6D: FMemLdPr
  loc_AE1C72:  = Me.Fields
  loc_AE1C77: FLdPr var_A4
  loc_AE1C7A: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1C7F: FLdPr var_B8
  loc_AE1C82:  = Me.Value
  loc_AE1C87: FLdRfVar var_C8
  loc_AE1C8A: CStrVarTmp
  loc_AE1C8B: FStStrNoPop var_8C
  loc_AE1C8E: ILdPr
  loc_AE1C91: Call tblparaconta.CarePacoPut(from_stack_1v)
  loc_AE1C96: FFree1Str var_8C
  loc_AE1C99: FFreeAd var_A4 = ""
  loc_AE1CA0: FFree1Var var_C8 = ""
  loc_AE1CA3: FLdRfVar var_C8
  loc_AE1CA6: FLdRfVar var_B8
  loc_AE1CA9: LitVarStr var_B4, "PatrPaco"
  loc_AE1CAE: PopAdLdVar
  loc_AE1CAF: FLdRfVar var_A4
  loc_AE1CB2: FMemLdPr
  loc_AE1CB7:  = Me.Fields
  loc_AE1CBC: FLdPr var_A4
  loc_AE1CBF: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1CC4: FLdPr var_B8
  loc_AE1CC7:  = Me.Value
  loc_AE1CCC: FLdRfVar var_C8
  loc_AE1CCF: CStrVarTmp
  loc_AE1CD0: FStStrNoPop var_8C
  loc_AE1CD3: ILdPr
  loc_AE1CD6: Call tblparaconta.PatrPacoPut(from_stack_1v)
  loc_AE1CDB: FFree1Str var_8C
  loc_AE1CDE: FFreeAd var_A4 = ""
  loc_AE1CE5: FFree1Var var_C8 = ""
  loc_AE1CE8: FLdRfVar var_C8
  loc_AE1CEB: FLdRfVar var_B8
  loc_AE1CEE: LitVarStr var_B4, "ReejPaco"
  loc_AE1CF3: PopAdLdVar
  loc_AE1CF4: FLdRfVar var_A4
  loc_AE1CF7: FMemLdPr
  loc_AE1CFC:  = Me.Fields
  loc_AE1D01: FLdPr var_A4
  loc_AE1D04: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1D09: FLdPr var_B8
  loc_AE1D0C:  = Me.Value
  loc_AE1D11: FLdRfVar var_C8
  loc_AE1D14: CStrVarTmp
  loc_AE1D15: FStStrNoPop var_8C
  loc_AE1D18: ILdPr
  loc_AE1D1B: Call tblparaconta.ReejPacoPut(from_stack_1v)
  loc_AE1D20: FFree1Str var_8C
  loc_AE1D23: FFreeAd var_A4 = ""
  loc_AE1D2A: FFree1Var var_C8 = ""
  loc_AE1D2D: FLdRfVar var_C8
  loc_AE1D30: FLdRfVar var_B8
  loc_AE1D33: LitVarStr var_B4, "FedePaco"
  loc_AE1D38: PopAdLdVar
  loc_AE1D39: FLdRfVar var_A4
  loc_AE1D3C: FMemLdPr
  loc_AE1D41:  = Me.Fields
  loc_AE1D46: FLdPr var_A4
  loc_AE1D49: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1D4E: FLdPr var_B8
  loc_AE1D51:  = Me.Value
  loc_AE1D56: FLdRfVar var_100
  loc_AE1D59: LitVarStr var_FC, "FedePaco"
  loc_AE1D5E: PopAdLdVar
  loc_AE1D5F: FLdRfVar var_EC
  loc_AE1D62: FMemLdPr
  loc_AE1D67:  = Me.Fields
  loc_AE1D6C: FLdPr var_EC
  loc_AE1D6F: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1D74: LitVarStr var_130, vbNullString
  loc_AE1D79: FStVarCopyObj var_140
  loc_AE1D7C: FLdRfVar var_140
  loc_AE1D7F: FLdZeroAd var_100
  loc_AE1D82: CVarAd
  loc_AE1D86: FLdRfVar var_C8
  loc_AE1D89: LitVarStr var_D8, vbNullString
  loc_AE1D8E: HardType
  loc_AE1D8F: NeVar var_E8
  loc_AE1D93: FStVar var_110
  loc_AE1D97: FLdRfVar var_110
  loc_AE1D9A: FLdRfVar var_150
  loc_AE1D9D: ImpAdCallFPR4  = IIf(, , )
  loc_AE1DA2: FLdRfVar var_150
  loc_AE1DA5: CStrVarVal var_8C
  loc_AE1DA9: ILdPr
  loc_AE1DAC: Call tblparaconta.FedePacoPut(from_stack_1v)
  loc_AE1DB1: FFree1Str var_8C
  loc_AE1DB4: FFreeAd var_A4 = "": var_B8 = ""
  loc_AE1DBD: FFreeVar var_C8 = "": var_110 = "": var_120 = "": var_140 = ""
  loc_AE1DCA: FLdRfVar var_C8
  loc_AE1DCD: FLdRfVar var_B8
  loc_AE1DD0: LitVarStr var_B4, "MiinPaco"
  loc_AE1DD5: PopAdLdVar
  loc_AE1DD6: FLdRfVar var_A4
  loc_AE1DD9: FMemLdPr
  loc_AE1DDE:  = Me.Fields
  loc_AE1DE3: FLdPr var_A4
  loc_AE1DE6: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1DEB: FLdPr var_B8
  loc_AE1DEE:  = Me.Value
  loc_AE1DF3: FLdRfVar var_C8
  loc_AE1DF6: CStrVarTmp
  loc_AE1DF7: FStStrNoPop var_8C
  loc_AE1DFA: ILdPr
  loc_AE1DFD: Call tblparaconta.MiinPacoPut(from_stack_1v)
  loc_AE1E02: FFree1Str var_8C
  loc_AE1E05: FFreeAd var_A4 = ""
  loc_AE1E0C: FFree1Var var_C8 = ""
  loc_AE1E0F: FLdRfVar var_C8
  loc_AE1E12: FLdRfVar var_B8
  loc_AE1E15: LitVarStr var_B4, "ParpPaco"
  loc_AE1E1A: PopAdLdVar
  loc_AE1E1B: FLdRfVar var_A4
  loc_AE1E1E: FMemLdPr
  loc_AE1E23:  = Me.Fields
  loc_AE1E28: FLdPr var_A4
  loc_AE1E2B: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1E30: FLdPr var_B8
  loc_AE1E33:  = Me.Value
  loc_AE1E38: FLdRfVar var_C8
  loc_AE1E3B: CStrVarTmp
  loc_AE1E3C: FStStrNoPop var_8C
  loc_AE1E3F: ILdPr
  loc_AE1E42: Call tblparaconta.ParpPacoPut(from_stack_1v)
  loc_AE1E47: FFree1Str var_8C
  loc_AE1E4A: FFreeAd var_A4 = ""
  loc_AE1E51: FFree1Var var_C8 = ""
  loc_AE1E54: FLdRfVar var_C8
  loc_AE1E57: FLdRfVar var_B8
  loc_AE1E5A: LitVarStr var_B4, "CcrpPaco"
  loc_AE1E5F: PopAdLdVar
  loc_AE1E60: FLdRfVar var_A4
  loc_AE1E63: FMemLdPr
  loc_AE1E68:  = Me.Fields
  loc_AE1E6D: FLdPr var_A4
  loc_AE1E70: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1E75: FLdPr var_B8
  loc_AE1E78:  = Me.Value
  loc_AE1E7D: FLdRfVar var_C8
  loc_AE1E80: CStrVarTmp
  loc_AE1E81: FStStrNoPop var_8C
  loc_AE1E84: ILdPr
  loc_AE1E87: Call tblparaconta.CcrpPacoPut(from_stack_1v)
  loc_AE1E8C: FFree1Str var_8C
  loc_AE1E8F: FFreeAd var_A4 = ""
  loc_AE1E96: FFree1Var var_C8 = ""
  loc_AE1E99: FLdRfVar var_C8
  loc_AE1E9C: FLdRfVar var_B8
  loc_AE1E9F: LitVarStr var_B4, "SacePaco"
  loc_AE1EA4: PopAdLdVar
  loc_AE1EA5: FLdRfVar var_A4
  loc_AE1EA8: FMemLdPr
  loc_AE1EAD:  = Me.Fields
  loc_AE1EB2: FLdPr var_A4
  loc_AE1EB5: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1EBA: FLdPr var_B8
  loc_AE1EBD:  = Me.Value
  loc_AE1EC2: FLdRfVar var_C8
  loc_AE1EC5: CStrVarTmp
  loc_AE1EC6: FStStrNoPop var_8C
  loc_AE1EC9: ILdPr
  loc_AE1ECC: Call tblparaconta.SacePacoPut(from_stack_1v)
  loc_AE1ED1: FFree1Str var_8C
  loc_AE1ED4: FFreeAd var_A4 = ""
  loc_AE1EDB: FFree1Var var_C8 = ""
  loc_AE1EDE: FLdRfVar var_C8
  loc_AE1EE1: FLdRfVar var_B8
  loc_AE1EE4: LitVarStr var_B4, "DefaPaco"
  loc_AE1EE9: PopAdLdVar
  loc_AE1EEA: FLdRfVar var_A4
  loc_AE1EED: FMemLdPr
  loc_AE1EF2:  = Me.Fields
  loc_AE1EF7: FLdPr var_A4
  loc_AE1EFA: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1EFF: FLdPr var_B8
  loc_AE1F02:  = Me.Value
  loc_AE1F07: FLdRfVar var_C8
  loc_AE1F0A: CStrVarTmp
  loc_AE1F0B: FStStrNoPop var_8C
  loc_AE1F0E: ILdPr
  loc_AE1F11: Call tblparaconta.DefaPacoPut(from_stack_1v)
  loc_AE1F16: FFree1Str var_8C
  loc_AE1F19: FFreeAd var_A4 = ""
  loc_AE1F20: FFree1Var var_C8 = ""
  loc_AE1F23: FLdRfVar var_C8
  loc_AE1F26: FLdRfVar var_B8
  loc_AE1F29: LitVarStr var_B4, "TranPaco"
  loc_AE1F2E: PopAdLdVar
  loc_AE1F2F: FLdRfVar var_A4
  loc_AE1F32: FMemLdPr
  loc_AE1F37:  = Me.Fields
  loc_AE1F3C: FLdPr var_A4
  loc_AE1F3F: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1F44: FLdPr var_B8
  loc_AE1F47:  = Me.Value
  loc_AE1F4C: FLdRfVar var_C8
  loc_AE1F4F: CStrVarTmp
  loc_AE1F50: FStStrNoPop var_8C
  loc_AE1F53: ILdPr
  loc_AE1F56: Call tblparaconta.TranPacoPut(from_stack_1v)
  loc_AE1F5B: FFree1Str var_8C
  loc_AE1F5E: FFreeAd var_A4 = ""
  loc_AE1F65: FFree1Var var_C8 = ""
  loc_AE1F68: FLdRfVar var_C8
  loc_AE1F6B: FLdRfVar var_B8
  loc_AE1F6E: LitVarStr var_B4, "AltaUsua"
  loc_AE1F73: PopAdLdVar
  loc_AE1F74: FLdRfVar var_A4
  loc_AE1F77: FMemLdPr
  loc_AE1F7C:  = Me.Fields
  loc_AE1F81: FLdPr var_A4
  loc_AE1F84: from_stack_2 = Me.Item(from_stack_1)
  loc_AE1F89: FLdPr var_B8
  loc_AE1F8C:  = Me.Value
  loc_AE1F91: FLdRfVar var_C8
  loc_AE1F94: CStrVarTmp
  loc_AE1F95: FStStrNoPop var_8C
  loc_AE1F98: ILdPr
  loc_AE1F9B: Call tblparaconta.AltaUsuaPut(from_stack_1v)
  loc_AE1FA0: FFree1Str var_8C
  loc_AE1FA3: FFreeAd var_A4 = ""
  loc_AE1FAA: FFree1Var var_C8 = ""
  loc_AE1FAD: LitI2_Byte &HFF
  loc_AE1FAF: FStI2 var_86
  loc_AE1FB2: Branch loc_AE2096
  loc_AE1FB5: LitStr "Los parámetros NO EXISTEN. Verifique..."
  loc_AE1FB8: ILdPr
  loc_AE1FBB: Call tblparaconta.MsgErrorPut(from_stack_1v)
  loc_AE1FC0: LitStr vbNullString
  loc_AE1FC3: ILdPr
  loc_AE1FC6: Call tblparaconta.PeriInfoPut(from_stack_1v)
  loc_AE1FCB: LitStr vbNullString
  loc_AE1FCE: ILdPr
  loc_AE1FD1: Call tblparaconta.CaerPacoPut(from_stack_1v)
  loc_AE1FD6: LitStr vbNullString
  loc_AE1FD9: ILdPr
  loc_AE1FDC: Call tblparaconta.ProvPacoPut(from_stack_1v)
  loc_AE1FE1: LitStr vbNullString
  loc_AE1FE4: ILdPr
  loc_AE1FE7: Call tblparaconta.DeexPacoPut(from_stack_1v)
  loc_AE1FEC: LitStr vbNullString
  loc_AE1FEF: ILdPr
  loc_AE1FF2: Call tblparaconta.PaexPacoPut(from_stack_1v)
  loc_AE1FF7: LitStr vbNullString
  loc_AE1FFA: ILdPr
  loc_AE1FFD: Call tblparaconta.ChsrPacoPut(from_stack_1v)
  loc_AE2002: LitStr vbNullString
  loc_AE2005: ILdPr
  loc_AE2008: Call tblparaconta.CatePacoPut(from_stack_1v)
  loc_AE200D: LitStr vbNullString
  loc_AE2010: ILdPr
  loc_AE2013: Call tblparaconta.CajaPacoPut(from_stack_1v)
  loc_AE2018: LitStr vbNullString
  loc_AE201B: ILdPr
  loc_AE201E: Call tblparaconta.CarePacoPut(from_stack_1v)
  loc_AE2023: LitStr vbNullString
  loc_AE2026: ILdPr
  loc_AE2029: Call tblparaconta.PatrPacoPut(from_stack_1v)
  loc_AE202E: LitStr vbNullString
  loc_AE2031: ILdPr
  loc_AE2034: Call tblparaconta.ReejPacoPut(from_stack_1v)
  loc_AE2039: LitStr vbNullString
  loc_AE203C: ILdPr
  loc_AE203F: Call tblparaconta.FedePacoPut(from_stack_1v)
  loc_AE2044: LitStr vbNullString
  loc_AE2047: ILdPr
  loc_AE204A: Call tblparaconta.MiinPacoPut(from_stack_1v)
  loc_AE204F: LitStr vbNullString
  loc_AE2052: ILdPr
  loc_AE2055: Call tblparaconta.ParpPacoPut(from_stack_1v)
  loc_AE205A: LitStr vbNullString
  loc_AE205D: ILdPr
  loc_AE2060: Call tblparaconta.CcrpPacoPut(from_stack_1v)
  loc_AE2065: LitStr vbNullString
  loc_AE2068: ILdPr
  loc_AE206B: Call tblparaconta.SacePacoPut(from_stack_1v)
  loc_AE2070: LitStr vbNullString
  loc_AE2073: ILdPr
  loc_AE2076: Call tblparaconta.DefaPacoPut(from_stack_1v)
  loc_AE207B: LitStr vbNullString
  loc_AE207E: ILdPr
  loc_AE2081: Call tblparaconta.TranPacoPut(from_stack_1v)
  loc_AE2086: LitStr vbNullString
  loc_AE2089: ILdPr
  loc_AE208C: Call tblparaconta.AltaUsuaPut(from_stack_1v)
  loc_AE2091: LitI2_Byte 0
  loc_AE2093: FStI2 var_86
  loc_AE2096: ExitProcI2
End Function

Private Function Proc_259_24_B2B61C(arg_C, arg_10) 'B2B61C
  'Data Table: 4569C4
  loc_B2AD0C: ILdRf arg_10
  loc_B2AD0F: FStStrCopy var_8C
  loc_B2AD12: LitStr "SELECT part.PeriInfo, part.CodiPart, part.DetaPart, IF(part.CoauPart=0,'No','Si') CoauPart, IF(part.ImpuPart=0,'No','Si') ImpuPart"
  loc_B2AD15: LitStr ", IF(part.InvePart=0,'No','Si') InvePart"
  loc_B2AD18: ConcatStr
  loc_B2AD19: FStStrNoPop var_90
  loc_B2AD1C: LitStr ", part.CredPart, part.CredPartG"
  loc_B2AD1F: ConcatStr
  loc_B2AD20: FStStrNoPop var_94
  loc_B2AD23: LitStr ", IFNULL((SELECT partcred.DetaPart FROM partida partcred WHERE partcred.PeriInfo = part.PeriInfo AND partcred.CodiPart = part.CredPart), '') CredDetaPart"
  loc_B2AD26: ConcatStr
  loc_B2AD27: FStStrNoPop var_98
  loc_B2AD2A: LitStr ", IFNULL((SELECT partcredg.DetaPart FROM partida partcredg WHERE partcredg.PeriInfo = part.PeriInfo AND partcredg.CodiPart = part.CredPartG), '') CredDetaPartGestion"
  loc_B2AD2D: ConcatStr
  loc_B2AD2E: FStStrNoPop var_9C
  loc_B2AD31: LitStr ", part.CoesPart, part.CodiCuco, part.PatrCuco"
  loc_B2AD34: ConcatStr
  loc_B2AD35: FStStrNoPop var_A0
  loc_B2AD38: LitStr ", IF(Left(part.CodiPart,1)<>PaexPaco,'Presupuestaria','Extrapresupuestaria') Tipo"
  loc_B2AD3B: ConcatStr
  loc_B2AD3C: FStStrNoPop var_A4
  loc_B2AD3F: LitStr ", IF((SELECT partcred.PeriInfo FROM partida partcred WHERE partcred.PeriInfo = part.PeriInfo AND partcred.CredPart = part.CodiPart GROUP BY part.CredPart) IS NULL,'No','Si') EsPartCred"
  loc_B2AD42: ConcatStr
  loc_B2AD43: FStStrNoPop var_A8
  loc_B2AD46: LitStr ", IF((SELECT partcredg.PeriInfo FROM partida partcredg WHERE partcredg.PeriInfo = part.PeriInfo AND partcredg.CredPartG = part.CodiPart GROUP BY part.CredPartG) IS NULL,'No','Si') EsPartCredGestion"
  loc_B2AD49: ConcatStr
  loc_B2AD4A: FStStrNoPop var_AC
  loc_B2AD4D: LitStr ", part.AltaUsua, part.AltaFeho, part.ModiUsua, part.ModiFeho, part.BajaUsua, part.BajaFeho, part.BajaMoti"
  loc_B2AD50: ConcatStr
  loc_B2AD51: FStStrNoPop var_B0
  loc_B2AD54: LitStr " FROM partida part"
  loc_B2AD57: ConcatStr
  loc_B2AD58: FStStrNoPop var_B4
  loc_B2AD5B: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = part.PeriInfo"
  loc_B2AD5E: ConcatStr
  loc_B2AD5F: FStStrNoPop var_B8
  loc_B2AD62: LitStr " WHERE part.PeriInfo = "
  loc_B2AD65: ConcatStr
  loc_B2AD66: FStStrNoPop var_BC
  loc_B2AD69: FLdI2 arg_C
  loc_B2AD6C: CStrUI1
  loc_B2AD6E: FStStrNoPop var_C0
  loc_B2AD71: ConcatStr
  loc_B2AD72: FStStrNoPop var_C4
  loc_B2AD75: LitStr " AND part.CodiPart = '"
  loc_B2AD78: ConcatStr
  loc_B2AD79: FStStrNoPop var_C8
  loc_B2AD7C: ILdRf var_8C
  loc_B2AD7F: ConcatStr
  loc_B2AD80: FStStrNoPop var_CC
  loc_B2AD83: LitStr "'"
  loc_B2AD86: ConcatStr
  loc_B2AD87: FStStrNoPop var_D0
  loc_B2AD8A: LitStr " LIMIT 1;"
  loc_B2AD8D: ConcatStr
  loc_B2AD8E: FStStrNoPop var_D4
  loc_B2AD91: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_B2AD96: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_B2ADBD: FLdRfVar var_D8
  loc_B2ADC0: FMemLdPr
  loc_B2ADC5:  = Me.RecordCount
  loc_B2ADCA: ILdRf var_D8
  loc_B2ADCD: LitI4 0
  loc_B2ADD2: GtI4
  loc_B2ADD3: BranchF loc_B2B500
  loc_B2ADD6: LitStr vbNullString
  loc_B2ADD9: ILdPr
  loc_B2ADDC: Call tblpartida.MsgErrorPut(from_stack_1v)
  loc_B2ADE1: FLdRfVar var_104
  loc_B2ADE4: FLdRfVar var_F4
  loc_B2ADE7: LitVarStr var_F0, "PeriInfo"
  loc_B2ADEC: PopAdLdVar
  loc_B2ADED: FLdRfVar var_E0
  loc_B2ADF0: FMemLdPr
  loc_B2ADF5:  = Me.Fields
  loc_B2ADFA: FLdPr var_E0
  loc_B2ADFD: from_stack_2 = Me.Item(from_stack_1)
  loc_B2AE02: FLdPr var_F4
  loc_B2AE05:  = Me.Value
  loc_B2AE0A: FLdRfVar var_104
  loc_B2AE0D: CStrVarTmp
  loc_B2AE0E: FStStrNoPop var_90
  loc_B2AE11: ILdPr
  loc_B2AE14: Call tblpartida.PeriInfoPut(from_stack_1v)
  loc_B2AE19: FFree1Str var_90
  loc_B2AE1C: FFreeAd var_E0 = ""
  loc_B2AE23: FFree1Var var_104 = ""
  loc_B2AE26: FLdRfVar var_104
  loc_B2AE29: FLdRfVar var_F4
  loc_B2AE2C: LitVarStr var_F0, "CodiPart"
  loc_B2AE31: PopAdLdVar
  loc_B2AE32: FLdRfVar var_E0
  loc_B2AE35: FMemLdPr
  loc_B2AE3A:  = Me.Fields
  loc_B2AE3F: FLdPr var_E0
  loc_B2AE42: from_stack_2 = Me.Item(from_stack_1)
  loc_B2AE47: FLdPr var_F4
  loc_B2AE4A:  = Me.Value
  loc_B2AE4F: FLdRfVar var_104
  loc_B2AE52: CStrVarTmp
  loc_B2AE53: FStStrNoPop var_90
  loc_B2AE56: ILdPr
  loc_B2AE59: Call tblpartida.CodiPartPut(from_stack_1v)
  loc_B2AE5E: FFree1Str var_90
  loc_B2AE61: FFreeAd var_E0 = ""
  loc_B2AE68: FFree1Var var_104 = ""
  loc_B2AE6B: FLdRfVar var_104
  loc_B2AE6E: FLdRfVar var_F4
  loc_B2AE71: LitVarStr var_F0, "DetaPart"
  loc_B2AE76: PopAdLdVar
  loc_B2AE77: FLdRfVar var_E0
  loc_B2AE7A: FMemLdPr
  loc_B2AE7F:  = Me.Fields
  loc_B2AE84: FLdPr var_E0
  loc_B2AE87: from_stack_2 = Me.Item(from_stack_1)
  loc_B2AE8C: FLdPr var_F4
  loc_B2AE8F:  = Me.Value
  loc_B2AE94: FLdRfVar var_104
  loc_B2AE97: CStrVarTmp
  loc_B2AE98: FStStrNoPop var_90
  loc_B2AE9B: ILdPr
  loc_B2AE9E: Call tblpartida.DetaPartPut(from_stack_1v)
  loc_B2AEA3: FFree1Str var_90
  loc_B2AEA6: FFreeAd var_E0 = ""
  loc_B2AEAD: FFree1Var var_104 = ""
  loc_B2AEB0: FLdRfVar var_106
  loc_B2AEB3: FLdRfVar var_90
  loc_B2AEB6: ILdPr
  loc_B2AEB9: from_stack_1v = tblpartida.CodiPartGet()
  loc_B2AEBE: ILdRf var_90
  loc_B2AEC1: FLdRfVar var_DC
  loc_B2AEC4: NewIfNullPr clspartida
  loc_B2AEC7: from_stack_2v = clspartida.NivelPartida(from_stack_1v)
  loc_B2AECC: FLdUI1
  loc_B2AED0: CStrI2
  loc_B2AED2: FStStrNoPop var_94
  loc_B2AED5: ILdPr
  loc_B2AED8: Call tblpartida.NivelPut(from_stack_1v)
  loc_B2AEDD: FFreeStr var_90 = ""
  loc_B2AEE4: FLdRfVar var_104
  loc_B2AEE7: FLdRfVar var_F4
  loc_B2AEEA: LitVarStr var_F0, "Tipo"
  loc_B2AEEF: PopAdLdVar
  loc_B2AEF0: FLdRfVar var_E0
  loc_B2AEF3: FMemLdPr
  loc_B2AEF8:  = Me.Fields
  loc_B2AEFD: FLdPr var_E0
  loc_B2AF00: from_stack_2 = Me.Item(from_stack_1)
  loc_B2AF05: FLdPr var_F4
  loc_B2AF08:  = Me.Value
  loc_B2AF0D: FLdRfVar var_104
  loc_B2AF10: CStrVarTmp
  loc_B2AF11: FStStrNoPop var_90
  loc_B2AF14: ILdPr
  loc_B2AF17: Call tblpartida.TipoPut(from_stack_1v)
  loc_B2AF1C: FFree1Str var_90
  loc_B2AF1F: FFreeAd var_E0 = ""
  loc_B2AF26: FFree1Var var_104 = ""
  loc_B2AF29: FLdRfVar var_104
  loc_B2AF2C: FLdRfVar var_F4
  loc_B2AF2F: LitVarStr var_F0, "CoauPart"
  loc_B2AF34: PopAdLdVar
  loc_B2AF35: FLdRfVar var_E0
  loc_B2AF38: FMemLdPr
  loc_B2AF3D:  = Me.Fields
  loc_B2AF42: FLdPr var_E0
  loc_B2AF45: from_stack_2 = Me.Item(from_stack_1)
  loc_B2AF4A: FLdPr var_F4
  loc_B2AF4D:  = Me.Value
  loc_B2AF52: FLdRfVar var_104
  loc_B2AF55: CStrVarTmp
  loc_B2AF56: FStStrNoPop var_90
  loc_B2AF59: ILdPr
  loc_B2AF5C: Call tblpartida.CoauPartPut(from_stack_1v)
  loc_B2AF61: FFree1Str var_90
  loc_B2AF64: FFreeAd var_E0 = ""
  loc_B2AF6B: FFree1Var var_104 = ""
  loc_B2AF6E: FLdRfVar var_104
  loc_B2AF71: FLdRfVar var_F4
  loc_B2AF74: LitVarStr var_F0, "ImpuPart"
  loc_B2AF79: PopAdLdVar
  loc_B2AF7A: FLdRfVar var_E0
  loc_B2AF7D: FMemLdPr
  loc_B2AF82:  = Me.Fields
  loc_B2AF87: FLdPr var_E0
  loc_B2AF8A: from_stack_2 = Me.Item(from_stack_1)
  loc_B2AF8F: FLdPr var_F4
  loc_B2AF92:  = Me.Value
  loc_B2AF97: FLdRfVar var_104
  loc_B2AF9A: CStrVarTmp
  loc_B2AF9B: FStStrNoPop var_90
  loc_B2AF9E: ILdPr
  loc_B2AFA1: Call tblpartida.ImpuPartPut(from_stack_1v)
  loc_B2AFA6: FFree1Str var_90
  loc_B2AFA9: FFreeAd var_E0 = ""
  loc_B2AFB0: FFree1Var var_104 = ""
  loc_B2AFB3: FLdRfVar var_104
  loc_B2AFB6: FLdRfVar var_F4
  loc_B2AFB9: LitVarStr var_F0, "InvePart"
  loc_B2AFBE: PopAdLdVar
  loc_B2AFBF: FLdRfVar var_E0
  loc_B2AFC2: FMemLdPr
  loc_B2AFC7:  = Me.Fields
  loc_B2AFCC: FLdPr var_E0
  loc_B2AFCF: from_stack_2 = Me.Item(from_stack_1)
  loc_B2AFD4: FLdPr var_F4
  loc_B2AFD7:  = Me.Value
  loc_B2AFDC: FLdRfVar var_104
  loc_B2AFDF: CStrVarTmp
  loc_B2AFE0: FStStrNoPop var_90
  loc_B2AFE3: ILdPr
  loc_B2AFE6: Call tblpartida.InvePartPut(from_stack_1v)
  loc_B2AFEB: FFree1Str var_90
  loc_B2AFEE: FFreeAd var_E0 = ""
  loc_B2AFF5: FFree1Var var_104 = ""
  loc_B2AFF8: FLdRfVar var_104
  loc_B2AFFB: FLdRfVar var_F4
  loc_B2AFFE: LitVarStr var_F0, "CredPart"
  loc_B2B003: PopAdLdVar
  loc_B2B004: FLdRfVar var_E0
  loc_B2B007: FMemLdPr
  loc_B2B00C:  = Me.Fields
  loc_B2B011: FLdPr var_E0
  loc_B2B014: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B019: FLdPr var_F4
  loc_B2B01C:  = Me.Value
  loc_B2B021: FLdRfVar var_104
  loc_B2B024: CStrVarTmp
  loc_B2B025: FStStrNoPop var_90
  loc_B2B028: ILdPr
  loc_B2B02B: Call tblpartida.CredPartPut(from_stack_1v)
  loc_B2B030: FFree1Str var_90
  loc_B2B033: FFreeAd var_E0 = ""
  loc_B2B03A: FFree1Var var_104 = ""
  loc_B2B03D: FLdRfVar var_104
  loc_B2B040: FLdRfVar var_F4
  loc_B2B043: LitVarStr var_F0, "CredDetaPart"
  loc_B2B048: PopAdLdVar
  loc_B2B049: FLdRfVar var_E0
  loc_B2B04C: FMemLdPr
  loc_B2B051:  = Me.Fields
  loc_B2B056: FLdPr var_E0
  loc_B2B059: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B05E: FLdPr var_F4
  loc_B2B061:  = Me.Value
  loc_B2B066: FLdRfVar var_104
  loc_B2B069: CStrVarTmp
  loc_B2B06A: FStStrNoPop var_90
  loc_B2B06D: ILdPr
  loc_B2B070: Call tblpartida.CredDetaPartPut(from_stack_1v)
  loc_B2B075: FFree1Str var_90
  loc_B2B078: FFreeAd var_E0 = ""
  loc_B2B07F: FFree1Var var_104 = ""
  loc_B2B082: FLdRfVar var_104
  loc_B2B085: FLdRfVar var_F4
  loc_B2B088: LitVarStr var_F0, "EsPartCred"
  loc_B2B08D: PopAdLdVar
  loc_B2B08E: FLdRfVar var_E0
  loc_B2B091: FMemLdPr
  loc_B2B096:  = Me.Fields
  loc_B2B09B: FLdPr var_E0
  loc_B2B09E: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B0A3: FLdPr var_F4
  loc_B2B0A6:  = Me.Value
  loc_B2B0AB: FLdRfVar var_104
  loc_B2B0AE: CStrVarTmp
  loc_B2B0AF: FStStrNoPop var_90
  loc_B2B0B2: ILdPr
  loc_B2B0B5: Call tblpartida.EsPartCredPut(from_stack_1v)
  loc_B2B0BA: FFree1Str var_90
  loc_B2B0BD: FFreeAd var_E0 = ""
  loc_B2B0C4: FFree1Var var_104 = ""
  loc_B2B0C7: FLdRfVar var_104
  loc_B2B0CA: FLdRfVar var_F4
  loc_B2B0CD: LitVarStr var_F0, "CredPartG"
  loc_B2B0D2: PopAdLdVar
  loc_B2B0D3: FLdRfVar var_E0
  loc_B2B0D6: FMemLdPr
  loc_B2B0DB:  = Me.Fields
  loc_B2B0E0: FLdPr var_E0
  loc_B2B0E3: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B0E8: FLdPr var_F4
  loc_B2B0EB:  = Me.Value
  loc_B2B0F0: FLdRfVar var_104
  loc_B2B0F3: CStrVarTmp
  loc_B2B0F4: FStStrNoPop var_90
  loc_B2B0F7: ILdPr
  loc_B2B0FA: Call tblpartida.CredPartGestionPut(from_stack_1v)
  loc_B2B0FF: FFree1Str var_90
  loc_B2B102: FFreeAd var_E0 = ""
  loc_B2B109: FFree1Var var_104 = ""
  loc_B2B10C: FLdRfVar var_104
  loc_B2B10F: FLdRfVar var_F4
  loc_B2B112: LitVarStr var_F0, "CredDetaPartGestion"
  loc_B2B117: PopAdLdVar
  loc_B2B118: FLdRfVar var_E0
  loc_B2B11B: FMemLdPr
  loc_B2B120:  = Me.Fields
  loc_B2B125: FLdPr var_E0
  loc_B2B128: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B12D: FLdPr var_F4
  loc_B2B130:  = Me.Value
  loc_B2B135: FLdRfVar var_104
  loc_B2B138: CStrVarTmp
  loc_B2B139: FStStrNoPop var_90
  loc_B2B13C: ILdPr
  loc_B2B13F: Call tblpartida.CredDetaPartGestionPut(from_stack_1v)
  loc_B2B144: FFree1Str var_90
  loc_B2B147: FFreeAd var_E0 = ""
  loc_B2B14E: FFree1Var var_104 = ""
  loc_B2B151: FLdRfVar var_104
  loc_B2B154: FLdRfVar var_F4
  loc_B2B157: LitVarStr var_F0, "EsPartCredGestion"
  loc_B2B15C: PopAdLdVar
  loc_B2B15D: FLdRfVar var_E0
  loc_B2B160: FMemLdPr
  loc_B2B165:  = Me.Fields
  loc_B2B16A: FLdPr var_E0
  loc_B2B16D: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B172: FLdPr var_F4
  loc_B2B175:  = Me.Value
  loc_B2B17A: FLdRfVar var_104
  loc_B2B17D: CStrVarTmp
  loc_B2B17E: FStStrNoPop var_90
  loc_B2B181: ILdPr
  loc_B2B184: Call tblpartida.EsPartCredGestionPut(from_stack_1v)
  loc_B2B189: FFree1Str var_90
  loc_B2B18C: FFreeAd var_E0 = ""
  loc_B2B193: FFree1Var var_104 = ""
  loc_B2B196: FLdRfVar var_104
  loc_B2B199: FLdRfVar var_F4
  loc_B2B19C: LitVarStr var_F0, "CoesPart"
  loc_B2B1A1: PopAdLdVar
  loc_B2B1A2: FLdRfVar var_E0
  loc_B2B1A5: FMemLdPr
  loc_B2B1AA:  = Me.Fields
  loc_B2B1AF: FLdPr var_E0
  loc_B2B1B2: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B1B7: FLdPr var_F4
  loc_B2B1BA:  = Me.Value
  loc_B2B1BF: FLdRfVar var_104
  loc_B2B1C2: CStrVarTmp
  loc_B2B1C3: FStStrNoPop var_90
  loc_B2B1C6: ILdPr
  loc_B2B1C9: Call tblpartida.CoesPartPut(from_stack_1v)
  loc_B2B1CE: FFree1Str var_90
  loc_B2B1D1: FFreeAd var_E0 = ""
  loc_B2B1D8: FFree1Var var_104 = ""
  loc_B2B1DB: FLdRfVar var_104
  loc_B2B1DE: FLdRfVar var_F4
  loc_B2B1E1: LitVarStr var_F0, "CodiCuco"
  loc_B2B1E6: PopAdLdVar
  loc_B2B1E7: FLdRfVar var_E0
  loc_B2B1EA: FMemLdPr
  loc_B2B1EF:  = Me.Fields
  loc_B2B1F4: FLdPr var_E0
  loc_B2B1F7: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B1FC: FLdPr var_F4
  loc_B2B1FF:  = Me.Value
  loc_B2B204: FLdRfVar var_104
  loc_B2B207: CStrVarTmp
  loc_B2B208: FStStrNoPop var_90
  loc_B2B20B: ILdPr
  loc_B2B20E: Call tblpartida.CodiCucoPut(from_stack_1v)
  loc_B2B213: FFree1Str var_90
  loc_B2B216: FFreeAd var_E0 = ""
  loc_B2B21D: FFree1Var var_104 = ""
  loc_B2B220: FLdRfVar var_104
  loc_B2B223: FLdRfVar var_F4
  loc_B2B226: LitVarStr var_F0, "PatrCuco"
  loc_B2B22B: PopAdLdVar
  loc_B2B22C: FLdRfVar var_E0
  loc_B2B22F: FMemLdPr
  loc_B2B234:  = Me.Fields
  loc_B2B239: FLdPr var_E0
  loc_B2B23C: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B241: FLdPr var_F4
  loc_B2B244:  = Me.Value
  loc_B2B249: FLdRfVar var_104
  loc_B2B24C: CStrVarTmp
  loc_B2B24D: FStStrNoPop var_90
  loc_B2B250: ILdPr
  loc_B2B253: Call tblpartida.PatrCucoPut(from_stack_1v)
  loc_B2B258: FFree1Str var_90
  loc_B2B25B: FFreeAd var_E0 = ""
  loc_B2B262: FFree1Var var_104 = ""
  loc_B2B265: FLdRfVar var_104
  loc_B2B268: FLdRfVar var_F4
  loc_B2B26B: LitVarStr var_F0, "AltaUsua"
  loc_B2B270: PopAdLdVar
  loc_B2B271: FLdRfVar var_E0
  loc_B2B274: FMemLdPr
  loc_B2B279:  = Me.Fields
  loc_B2B27E: FLdPr var_E0
  loc_B2B281: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B286: FLdPr var_F4
  loc_B2B289:  = Me.Value
  loc_B2B28E: FLdRfVar var_104
  loc_B2B291: CStrVarTmp
  loc_B2B292: FStStrNoPop var_90
  loc_B2B295: ILdPr
  loc_B2B298: Call tblpartida.AltaUsuaPut(from_stack_1v)
  loc_B2B29D: FFree1Str var_90
  loc_B2B2A0: FFreeAd var_E0 = ""
  loc_B2B2A7: FFree1Var var_104 = ""
  loc_B2B2AA: FLdRfVar var_104
  loc_B2B2AD: FLdRfVar var_F4
  loc_B2B2B0: LitVarStr var_F0, "AltaFeho"
  loc_B2B2B5: PopAdLdVar
  loc_B2B2B6: FLdRfVar var_E0
  loc_B2B2B9: FMemLdPr
  loc_B2B2BE:  = Me.Fields
  loc_B2B2C3: FLdPr var_E0
  loc_B2B2C6: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B2CB: FLdPr var_F4
  loc_B2B2CE:  = Me.Value
  loc_B2B2D3: FLdRfVar var_104
  loc_B2B2D6: CStrVarTmp
  loc_B2B2D7: FStStrNoPop var_90
  loc_B2B2DA: ILdPr
  loc_B2B2DD: Call tblpartida.AltaFehoPut(from_stack_1v)
  loc_B2B2E2: FFree1Str var_90
  loc_B2B2E5: FFreeAd var_E0 = ""
  loc_B2B2EC: FFree1Var var_104 = ""
  loc_B2B2EF: FLdRfVar var_104
  loc_B2B2F2: FLdRfVar var_F4
  loc_B2B2F5: LitVarStr var_F0, "ModiUsua"
  loc_B2B2FA: PopAdLdVar
  loc_B2B2FB: FLdRfVar var_E0
  loc_B2B2FE: FMemLdPr
  loc_B2B303:  = Me.Fields
  loc_B2B308: FLdPr var_E0
  loc_B2B30B: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B310: FLdPr var_F4
  loc_B2B313:  = Me.Value
  loc_B2B318: FLdRfVar var_104
  loc_B2B31B: CStrVarTmp
  loc_B2B31C: FStStrNoPop var_90
  loc_B2B31F: ILdPr
  loc_B2B322: Call tblpartida.ModiUsuaPut(from_stack_1v)
  loc_B2B327: FFree1Str var_90
  loc_B2B32A: FFreeAd var_E0 = ""
  loc_B2B331: FFree1Var var_104 = ""
  loc_B2B334: FLdRfVar var_104
  loc_B2B337: FLdRfVar var_F4
  loc_B2B33A: LitVarStr var_F0, "ModiFeho"
  loc_B2B33F: PopAdLdVar
  loc_B2B340: FLdRfVar var_E0
  loc_B2B343: FMemLdPr
  loc_B2B348:  = Me.Fields
  loc_B2B34D: FLdPr var_E0
  loc_B2B350: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B355: FLdPr var_F4
  loc_B2B358:  = Me.Value
  loc_B2B35D: FLdRfVar var_140
  loc_B2B360: LitVarStr var_13C, "ModiFeho"
  loc_B2B365: PopAdLdVar
  loc_B2B366: FLdRfVar var_12C
  loc_B2B369: FMemLdPr
  loc_B2B36E:  = Me.Fields
  loc_B2B373: FLdPr var_12C
  loc_B2B376: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B37B: LitVarStr var_170, vbNullString
  loc_B2B380: FStVarCopyObj var_180
  loc_B2B383: FLdRfVar var_180
  loc_B2B386: FLdZeroAd var_140
  loc_B2B389: CVarAd
  loc_B2B38D: FLdRfVar var_104
  loc_B2B390: LitVarStr var_118, vbNullString
  loc_B2B395: HardType
  loc_B2B396: NeVar var_128
  loc_B2B39A: FStVar var_150
  loc_B2B39E: FLdRfVar var_150
  loc_B2B3A1: FLdRfVar var_190
  loc_B2B3A4: ImpAdCallFPR4  = IIf(, , )
  loc_B2B3A9: FLdRfVar var_190
  loc_B2B3AC: CStrVarVal var_90
  loc_B2B3B0: ILdPr
  loc_B2B3B3: Call tblpartida.ModiFehoPut(from_stack_1v)
  loc_B2B3B8: FFree1Str var_90
  loc_B2B3BB: FFreeAd var_E0 = "": var_F4 = ""
  loc_B2B3C4: FFreeVar var_104 = "": var_150 = "": var_160 = "": var_180 = ""
  loc_B2B3D1: FLdRfVar var_104
  loc_B2B3D4: FLdRfVar var_F4
  loc_B2B3D7: LitVarStr var_F0, "BajaUsua"
  loc_B2B3DC: PopAdLdVar
  loc_B2B3DD: FLdRfVar var_E0
  loc_B2B3E0: FMemLdPr
  loc_B2B3E5:  = Me.Fields
  loc_B2B3EA: FLdPr var_E0
  loc_B2B3ED: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B3F2: FLdPr var_F4
  loc_B2B3F5:  = Me.Value
  loc_B2B3FA: FLdRfVar var_104
  loc_B2B3FD: CStrVarTmp
  loc_B2B3FE: FStStrNoPop var_90
  loc_B2B401: ILdPr
  loc_B2B404: Call tblpartida.BajaUsuaPut(from_stack_1v)
  loc_B2B409: FFree1Str var_90
  loc_B2B40C: FFreeAd var_E0 = ""
  loc_B2B413: FFree1Var var_104 = ""
  loc_B2B416: FLdRfVar var_104
  loc_B2B419: FLdRfVar var_F4
  loc_B2B41C: LitVarStr var_F0, "BajaFeho"
  loc_B2B421: PopAdLdVar
  loc_B2B422: FLdRfVar var_E0
  loc_B2B425: FMemLdPr
  loc_B2B42A:  = Me.Fields
  loc_B2B42F: FLdPr var_E0
  loc_B2B432: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B437: FLdPr var_F4
  loc_B2B43A:  = Me.Value
  loc_B2B43F: FLdRfVar var_140
  loc_B2B442: LitVarStr var_13C, "BajaFeho"
  loc_B2B447: PopAdLdVar
  loc_B2B448: FLdRfVar var_12C
  loc_B2B44B: FMemLdPr
  loc_B2B450:  = Me.Fields
  loc_B2B455: FLdPr var_12C
  loc_B2B458: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B45D: LitVarStr var_170, vbNullString
  loc_B2B462: FStVarCopyObj var_180
  loc_B2B465: FLdRfVar var_180
  loc_B2B468: FLdZeroAd var_140
  loc_B2B46B: CVarAd
  loc_B2B46F: FLdRfVar var_104
  loc_B2B472: LitVarStr var_118, vbNullString
  loc_B2B477: HardType
  loc_B2B478: NeVar var_128
  loc_B2B47C: FStVar var_150
  loc_B2B480: FLdRfVar var_150
  loc_B2B483: FLdRfVar var_190
  loc_B2B486: ImpAdCallFPR4  = IIf(, , )
  loc_B2B48B: FLdRfVar var_190
  loc_B2B48E: CStrVarVal var_90
  loc_B2B492: ILdPr
  loc_B2B495: Call tblpartida.BajaFehoPut(from_stack_1v)
  loc_B2B49A: FFree1Str var_90
  loc_B2B49D: FFreeAd var_E0 = "": var_F4 = ""
  loc_B2B4A6: FFreeVar var_104 = "": var_150 = "": var_160 = "": var_180 = ""
  loc_B2B4B3: FLdRfVar var_104
  loc_B2B4B6: FLdRfVar var_F4
  loc_B2B4B9: LitVarStr var_F0, "BajaMoti"
  loc_B2B4BE: PopAdLdVar
  loc_B2B4BF: FLdRfVar var_E0
  loc_B2B4C2: FMemLdPr
  loc_B2B4C7:  = Me.Fields
  loc_B2B4CC: FLdPr var_E0
  loc_B2B4CF: from_stack_2 = Me.Item(from_stack_1)
  loc_B2B4D4: FLdPr var_F4
  loc_B2B4D7:  = Me.Value
  loc_B2B4DC: FLdRfVar var_104
  loc_B2B4DF: CStrVarTmp
  loc_B2B4E0: FStStrNoPop var_90
  loc_B2B4E3: ILdPr
  loc_B2B4E6: Call tblpartida.BajaMotiPut(from_stack_1v)
  loc_B2B4EB: FFree1Str var_90
  loc_B2B4EE: FFreeAd var_E0 = ""
  loc_B2B4F5: FFree1Var var_104 = ""
  loc_B2B4F8: LitI2_Byte &HFF
  loc_B2B4FA: FStI2 var_86
  loc_B2B4FD: Branch loc_B2B618
  loc_B2B500: LitStr "La Partida NO EXISTE. Verifique..."
  loc_B2B503: ILdPr
  loc_B2B506: Call tblpartida.MsgErrorPut(from_stack_1v)
  loc_B2B50B: LitStr vbNullString
  loc_B2B50E: ILdPr
  loc_B2B511: Call tblpartida.PeriInfoPut(from_stack_1v)
  loc_B2B516: LitStr vbNullString
  loc_B2B519: ILdPr
  loc_B2B51C: Call tblpartida.CodiPartPut(from_stack_1v)
  loc_B2B521: LitStr vbNullString
  loc_B2B524: ILdPr
  loc_B2B527: Call tblpartida.DetaPartPut(from_stack_1v)
  loc_B2B52C: LitStr vbNullString
  loc_B2B52F: ILdPr
  loc_B2B532: Call tblpartida.NivelPut(from_stack_1v)
  loc_B2B537: LitStr vbNullString
  loc_B2B53A: ILdPr
  loc_B2B53D: Call tblpartida.TipoPut(from_stack_1v)
  loc_B2B542: LitStr vbNullString
  loc_B2B545: ILdPr
  loc_B2B548: Call tblpartida.CoauPartPut(from_stack_1v)
  loc_B2B54D: LitStr vbNullString
  loc_B2B550: ILdPr
  loc_B2B553: Call tblpartida.ImpuPartPut(from_stack_1v)
  loc_B2B558: LitStr vbNullString
  loc_B2B55B: ILdPr
  loc_B2B55E: Call tblpartida.InvePartPut(from_stack_1v)
  loc_B2B563: LitStr vbNullString
  loc_B2B566: ILdPr
  loc_B2B569: Call tblpartida.CredPartPut(from_stack_1v)
  loc_B2B56E: LitStr vbNullString
  loc_B2B571: ILdPr
  loc_B2B574: Call tblpartida.CredDetaPartPut(from_stack_1v)
  loc_B2B579: LitStr vbNullString
  loc_B2B57C: ILdPr
  loc_B2B57F: Call tblpartida.EsPartCredPut(from_stack_1v)
  loc_B2B584: LitStr vbNullString
  loc_B2B587: ILdPr
  loc_B2B58A: Call tblpartida.CredPartGestionPut(from_stack_1v)
  loc_B2B58F: LitStr vbNullString
  loc_B2B592: ILdPr
  loc_B2B595: Call tblpartida.CredDetaPartGestionPut(from_stack_1v)
  loc_B2B59A: LitStr vbNullString
  loc_B2B59D: ILdPr
  loc_B2B5A0: Call tblpartida.EsPartCredGestionPut(from_stack_1v)
  loc_B2B5A5: LitStr vbNullString
  loc_B2B5A8: ILdPr
  loc_B2B5AB: Call tblpartida.CoesPartPut(from_stack_1v)
  loc_B2B5B0: LitStr vbNullString
  loc_B2B5B3: ILdPr
  loc_B2B5B6: Call tblpartida.CodiCucoPut(from_stack_1v)
  loc_B2B5BB: LitStr vbNullString
  loc_B2B5BE: ILdPr
  loc_B2B5C1: Call tblpartida.PatrCucoPut(from_stack_1v)
  loc_B2B5C6: LitStr vbNullString
  loc_B2B5C9: ILdPr
  loc_B2B5CC: Call tblpartida.AltaUsuaPut(from_stack_1v)
  loc_B2B5D1: LitStr vbNullString
  loc_B2B5D4: ILdPr
  loc_B2B5D7: Call tblpartida.AltaFehoPut(from_stack_1v)
  loc_B2B5DC: LitStr vbNullString
  loc_B2B5DF: ILdPr
  loc_B2B5E2: Call tblpartida.ModiUsuaPut(from_stack_1v)
  loc_B2B5E7: LitStr vbNullString
  loc_B2B5EA: ILdPr
  loc_B2B5ED: Call tblpartida.ModiFehoPut(from_stack_1v)
  loc_B2B5F2: LitStr vbNullString
  loc_B2B5F5: ILdPr
  loc_B2B5F8: Call tblpartida.BajaUsuaPut(from_stack_1v)
  loc_B2B5FD: LitStr vbNullString
  loc_B2B600: ILdPr
  loc_B2B603: Call tblpartida.BajaFehoPut(from_stack_1v)
  loc_B2B608: LitStr vbNullString
  loc_B2B60B: ILdPr
  loc_B2B60E: Call tblpartida.BajaMotiPut(from_stack_1v)
  loc_B2B613: LitI2_Byte 0
  loc_B2B615: FStI2 var_86
  loc_B2B618: ExitProcI2
End Function

Private Function Proc_259_25_AF4980(arg_C) 'AF4980
  'Data Table: 4569C4
  loc_AF4248: ILdRf arg_C
  loc_AF424B: FStStrCopy var_8C
  loc_AF424E: LitStr "SELECT *"
  loc_AF4251: LitStr " FROM infogov.persona"
  loc_AF4254: ConcatStr
  loc_AF4255: FStStrNoPop var_90
  loc_AF4258: LitStr " WHERE CucuPers = '"
  loc_AF425B: ConcatStr
  loc_AF425C: FStStrNoPop var_94
  loc_AF425F: ILdRf var_8C
  loc_AF4262: ConcatStr
  loc_AF4263: FStStrNoPop var_98
  loc_AF4266: LitStr "' AND CcokPers = 1;"
  loc_AF4269: ConcatStr
  loc_AF426A: FStStrNoPop var_9C
  loc_AF426D: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_AF4272: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_AF427D: FLdRfVar var_A0
  loc_AF4280: FMemLdPr
  loc_AF4285:  = Me.RecordCount
  loc_AF428A: ILdRf var_A0
  loc_AF428D: LitI4 0
  loc_AF4292: GtI4
  loc_AF4293: BranchF loc_AF4801
  loc_AF4296: LitStr vbNullString
  loc_AF4299: ILdPr
  loc_AF429C: Call tblpersona.MsgErrorPut(from_stack_1v)
  loc_AF42A1: FLdRfVar var_C8
  loc_AF42A4: FLdRfVar var_B8
  loc_AF42A7: LitVarStr var_B4, "CucuPers"
  loc_AF42AC: PopAdLdVar
  loc_AF42AD: FLdRfVar var_A4
  loc_AF42B0: FMemLdPr
  loc_AF42B5:  = Me.Fields
  loc_AF42BA: FLdPr var_A4
  loc_AF42BD: from_stack_2 = Me.Item(from_stack_1)
  loc_AF42C2: FLdPr var_B8
  loc_AF42C5:  = Me.Value
  loc_AF42CA: FLdRfVar var_C8
  loc_AF42CD: CStrVarTmp
  loc_AF42CE: FStStrNoPop var_90
  loc_AF42D1: ILdPr
  loc_AF42D4: Call tblpersona.CucuPersPut(from_stack_1v)
  loc_AF42D9: FFree1Str var_90
  loc_AF42DC: FFreeAd var_A4 = ""
  loc_AF42E3: FFree1Var var_C8 = ""
  loc_AF42E6: FLdRfVar var_C8
  loc_AF42E9: FLdRfVar var_B8
  loc_AF42EC: LitVarStr var_B4, "CcokPers"
  loc_AF42F1: PopAdLdVar
  loc_AF42F2: FLdRfVar var_A4
  loc_AF42F5: FMemLdPr
  loc_AF42FA:  = Me.Fields
  loc_AF42FF: FLdPr var_A4
  loc_AF4302: from_stack_2 = Me.Item(from_stack_1)
  loc_AF4307: FLdPr var_B8
  loc_AF430A:  = Me.Value
  loc_AF430F: FLdRfVar var_C8
  loc_AF4312: CStrVarTmp
  loc_AF4313: FStStrNoPop var_90
  loc_AF4316: ILdPr
  loc_AF4319: Call tblpersona.CcokPersPut(from_stack_1v)
  loc_AF431E: FFree1Str var_90
  loc_AF4321: FFreeAd var_A4 = ""
  loc_AF4328: FFree1Var var_C8 = ""
  loc_AF432B: FLdRfVar var_C8
  loc_AF432E: FLdRfVar var_B8
  loc_AF4331: LitVarStr var_B4, "DetaPers"
  loc_AF4336: PopAdLdVar
  loc_AF4337: FLdRfVar var_A4
  loc_AF433A: FMemLdPr
  loc_AF433F:  = Me.Fields
  loc_AF4344: FLdPr var_A4
  loc_AF4347: from_stack_2 = Me.Item(from_stack_1)
  loc_AF434C: FLdPr var_B8
  loc_AF434F:  = Me.Value
  loc_AF4354: FLdRfVar var_C8
  loc_AF4357: CStrVarTmp
  loc_AF4358: FStStrNoPop var_90
  loc_AF435B: ILdPr
  loc_AF435E: Call tblpersona.DetaPersPut(from_stack_1v)
  loc_AF4363: FFree1Str var_90
  loc_AF4366: FFreeAd var_A4 = ""
  loc_AF436D: FFree1Var var_C8 = ""
  loc_AF4370: FLdRfVar var_C8
  loc_AF4373: FLdRfVar var_B8
  loc_AF4376: LitVarStr var_B4, "JuriPers"
  loc_AF437B: PopAdLdVar
  loc_AF437C: FLdRfVar var_A4
  loc_AF437F: FMemLdPr
  loc_AF4384:  = Me.Fields
  loc_AF4389: FLdPr var_A4
  loc_AF438C: from_stack_2 = Me.Item(from_stack_1)
  loc_AF4391: FLdPr var_B8
  loc_AF4394:  = Me.Value
  loc_AF4399: FLdRfVar var_C8
  loc_AF439C: CStrVarTmp
  loc_AF439D: FStStrNoPop var_90
  loc_AF43A0: ILdPr
  loc_AF43A3: Call tblpersona.JuriPersPut(from_stack_1v)
  loc_AF43A8: FFree1Str var_90
  loc_AF43AB: FFreeAd var_A4 = ""
  loc_AF43B2: FFree1Var var_C8 = ""
  loc_AF43B5: FLdRfVar var_C8
  loc_AF43B8: FLdRfVar var_B8
  loc_AF43BB: LitVarStr var_B4, "SexoPers"
  loc_AF43C0: PopAdLdVar
  loc_AF43C1: FLdRfVar var_A4
  loc_AF43C4: FMemLdPr
  loc_AF43C9:  = Me.Fields
  loc_AF43CE: FLdPr var_A4
  loc_AF43D1: from_stack_2 = Me.Item(from_stack_1)
  loc_AF43D6: FLdPr var_B8
  loc_AF43D9:  = Me.Value
  loc_AF43DE: FLdRfVar var_C8
  loc_AF43E1: CStrVarTmp
  loc_AF43E2: FStStrNoPop var_90
  loc_AF43E5: ILdPr
  loc_AF43E8: Call tblpersona.SexoPersPut(from_stack_1v)
  loc_AF43ED: FFree1Str var_90
  loc_AF43F0: FFreeAd var_A4 = ""
  loc_AF43F7: FFree1Var var_C8 = ""
  loc_AF43FA: FLdRfVar var_C8
  loc_AF43FD: FLdRfVar var_B8
  loc_AF4400: LitVarStr var_B4, "TelePers"
  loc_AF4405: PopAdLdVar
  loc_AF4406: FLdRfVar var_A4
  loc_AF4409: FMemLdPr
  loc_AF440E:  = Me.Fields
  loc_AF4413: FLdPr var_A4
  loc_AF4416: from_stack_2 = Me.Item(from_stack_1)
  loc_AF441B: FLdPr var_B8
  loc_AF441E:  = Me.Value
  loc_AF4423: FLdRfVar var_C8
  loc_AF4426: CStrVarTmp
  loc_AF4427: FStStrNoPop var_90
  loc_AF442A: ILdPr
  loc_AF442D: Call tblpersona.TelePersPut(from_stack_1v)
  loc_AF4432: FFree1Str var_90
  loc_AF4435: FFreeAd var_A4 = ""
  loc_AF443C: FFree1Var var_C8 = ""
  loc_AF443F: FLdRfVar var_C8
  loc_AF4442: FLdRfVar var_B8
  loc_AF4445: LitVarStr var_B4, "CeluPers"
  loc_AF444A: PopAdLdVar
  loc_AF444B: FLdRfVar var_A4
  loc_AF444E: FMemLdPr
  loc_AF4453:  = Me.Fields
  loc_AF4458: FLdPr var_A4
  loc_AF445B: from_stack_2 = Me.Item(from_stack_1)
  loc_AF4460: FLdPr var_B8
  loc_AF4463:  = Me.Value
  loc_AF4468: FLdRfVar var_C8
  loc_AF446B: CStrVarTmp
  loc_AF446C: FStStrNoPop var_90
  loc_AF446F: ILdPr
  loc_AF4472: Call tblpersona.CeluPersPut(from_stack_1v)
  loc_AF4477: FFree1Str var_90
  loc_AF447A: FFreeAd var_A4 = ""
  loc_AF4481: FFree1Var var_C8 = ""
  loc_AF4484: FLdRfVar var_C8
  loc_AF4487: FLdRfVar var_B8
  loc_AF448A: LitVarStr var_B4, "FaxsPers"
  loc_AF448F: PopAdLdVar
  loc_AF4490: FLdRfVar var_A4
  loc_AF4493: FMemLdPr
  loc_AF4498:  = Me.Fields
  loc_AF449D: FLdPr var_A4
  loc_AF44A0: from_stack_2 = Me.Item(from_stack_1)
  loc_AF44A5: FLdPr var_B8
  loc_AF44A8:  = Me.Value
  loc_AF44AD: FLdRfVar var_C8
  loc_AF44B0: CStrVarTmp
  loc_AF44B1: FStStrNoPop var_90
  loc_AF44B4: ILdPr
  loc_AF44B7: Call tblpersona.FaxsPersPut(from_stack_1v)
  loc_AF44BC: FFree1Str var_90
  loc_AF44BF: FFreeAd var_A4 = ""
  loc_AF44C6: FFree1Var var_C8 = ""
  loc_AF44C9: FLdRfVar var_C8
  loc_AF44CC: FLdRfVar var_B8
  loc_AF44CF: LitVarStr var_B4, "MailPers"
  loc_AF44D4: PopAdLdVar
  loc_AF44D5: FLdRfVar var_A4
  loc_AF44D8: FMemLdPr
  loc_AF44DD:  = Me.Fields
  loc_AF44E2: FLdPr var_A4
  loc_AF44E5: from_stack_2 = Me.Item(from_stack_1)
  loc_AF44EA: FLdPr var_B8
  loc_AF44ED:  = Me.Value
  loc_AF44F2: FLdRfVar var_C8
  loc_AF44F5: CStrVarTmp
  loc_AF44F6: FStStrNoPop var_90
  loc_AF44F9: ILdPr
  loc_AF44FC: Call tblpersona.MailPersPut(from_stack_1v)
  loc_AF4501: FFree1Str var_90
  loc_AF4504: FFreeAd var_A4 = ""
  loc_AF450B: FFree1Var var_C8 = ""
  loc_AF450E: FLdRfVar var_C8
  loc_AF4511: FLdRfVar var_B8
  loc_AF4514: LitVarStr var_B4, "DecrPers"
  loc_AF4519: PopAdLdVar
  loc_AF451A: FLdRfVar var_A4
  loc_AF451D: FMemLdPr
  loc_AF4522:  = Me.Fields
  loc_AF4527: FLdPr var_A4
  loc_AF452A: from_stack_2 = Me.Item(from_stack_1)
  loc_AF452F: FLdPr var_B8
  loc_AF4532:  = Me.Value
  loc_AF4537: FLdRfVar var_C8
  loc_AF453A: CStrVarTmp
  loc_AF453B: FStStrNoPop var_90
  loc_AF453E: ILdPr
  loc_AF4541: Call tblpersona.DecrPersPut(from_stack_1v)
  loc_AF4546: FFree1Str var_90
  loc_AF4549: FFreeAd var_A4 = ""
  loc_AF4550: FFree1Var var_C8 = ""
  loc_AF4553: FLdRfVar var_C8
  loc_AF4556: FLdRfVar var_B8
  loc_AF4559: LitVarStr var_B4, "AltaUsua"
  loc_AF455E: PopAdLdVar
  loc_AF455F: FLdRfVar var_A4
  loc_AF4562: FMemLdPr
  loc_AF4567:  = Me.Fields
  loc_AF456C: FLdPr var_A4
  loc_AF456F: from_stack_2 = Me.Item(from_stack_1)
  loc_AF4574: FLdPr var_B8
  loc_AF4577:  = Me.Value
  loc_AF457C: FLdRfVar var_C8
  loc_AF457F: CStrVarTmp
  loc_AF4580: FStStrNoPop var_90
  loc_AF4583: ILdPr
  loc_AF4586: Call tblpersona.AltaUsuaPut(from_stack_1v)
  loc_AF458B: FFree1Str var_90
  loc_AF458E: FFreeAd var_A4 = ""
  loc_AF4595: FFree1Var var_C8 = ""
  loc_AF4598: FLdRfVar var_C8
  loc_AF459B: FLdRfVar var_B8
  loc_AF459E: LitVarStr var_B4, "AltaFeho"
  loc_AF45A3: PopAdLdVar
  loc_AF45A4: FLdRfVar var_A4
  loc_AF45A7: FMemLdPr
  loc_AF45AC:  = Me.Fields
  loc_AF45B1: FLdPr var_A4
  loc_AF45B4: from_stack_2 = Me.Item(from_stack_1)
  loc_AF45B9: FLdPr var_B8
  loc_AF45BC:  = Me.Value
  loc_AF45C1: FLdRfVar var_100
  loc_AF45C4: LitVarStr var_FC, "AltaFeho"
  loc_AF45C9: PopAdLdVar
  loc_AF45CA: FLdRfVar var_EC
  loc_AF45CD: FMemLdPr
  loc_AF45D2:  = Me.Fields
  loc_AF45D7: FLdPr var_EC
  loc_AF45DA: from_stack_2 = Me.Item(from_stack_1)
  loc_AF45DF: LitVarStr var_130, vbNullString
  loc_AF45E4: FStVarCopyObj var_140
  loc_AF45E7: FLdRfVar var_140
  loc_AF45EA: FLdZeroAd var_100
  loc_AF45ED: CVarAd
  loc_AF45F1: FLdRfVar var_C8
  loc_AF45F4: LitVarStr var_D8, vbNullString
  loc_AF45F9: HardType
  loc_AF45FA: NeVar var_E8
  loc_AF45FE: FStVar var_110
  loc_AF4602: FLdRfVar var_110
  loc_AF4605: FLdRfVar var_150
  loc_AF4608: ImpAdCallFPR4  = IIf(, , )
  loc_AF460D: FLdRfVar var_150
  loc_AF4610: CStrVarVal var_90
  loc_AF4614: ILdPr
  loc_AF4617: Call tblpersona.AltaFehoPut(from_stack_1v)
  loc_AF461C: FFree1Str var_90
  loc_AF461F: FFreeAd var_A4 = "": var_B8 = ""
  loc_AF4628: FFreeVar var_C8 = "": var_110 = "": var_120 = "": var_140 = ""
  loc_AF4635: FLdRfVar var_C8
  loc_AF4638: FLdRfVar var_B8
  loc_AF463B: LitVarStr var_B4, "ModiUsua"
  loc_AF4640: PopAdLdVar
  loc_AF4641: FLdRfVar var_A4
  loc_AF4644: FMemLdPr
  loc_AF4649:  = Me.Fields
  loc_AF464E: FLdPr var_A4
  loc_AF4651: from_stack_2 = Me.Item(from_stack_1)
  loc_AF4656: FLdPr var_B8
  loc_AF4659:  = Me.Value
  loc_AF465E: FLdRfVar var_C8
  loc_AF4661: CStrVarTmp
  loc_AF4662: FStStrNoPop var_90
  loc_AF4665: ILdPr
  loc_AF4668: Call tblpersona.ModiUsuaPut(from_stack_1v)
  loc_AF466D: FFree1Str var_90
  loc_AF4670: FFreeAd var_A4 = ""
  loc_AF4677: FFree1Var var_C8 = ""
  loc_AF467A: FLdRfVar var_C8
  loc_AF467D: FLdRfVar var_B8
  loc_AF4680: LitVarStr var_B4, "ModiFeho"
  loc_AF4685: PopAdLdVar
  loc_AF4686: FLdRfVar var_A4
  loc_AF4689: FMemLdPr
  loc_AF468E:  = Me.Fields
  loc_AF4693: FLdPr var_A4
  loc_AF4696: from_stack_2 = Me.Item(from_stack_1)
  loc_AF469B: FLdPr var_B8
  loc_AF469E:  = Me.Value
  loc_AF46A3: FLdRfVar var_100
  loc_AF46A6: LitVarStr var_FC, "ModiFeho"
  loc_AF46AB: PopAdLdVar
  loc_AF46AC: FLdRfVar var_EC
  loc_AF46AF: FMemLdPr
  loc_AF46B4:  = Me.Fields
  loc_AF46B9: FLdPr var_EC
  loc_AF46BC: from_stack_2 = Me.Item(from_stack_1)
  loc_AF46C1: LitVarStr var_130, vbNullString
  loc_AF46C6: FStVarCopyObj var_140
  loc_AF46C9: FLdRfVar var_140
  loc_AF46CC: FLdZeroAd var_100
  loc_AF46CF: CVarAd
  loc_AF46D3: FLdRfVar var_C8
  loc_AF46D6: LitVarStr var_D8, vbNullString
  loc_AF46DB: HardType
  loc_AF46DC: NeVar var_E8
  loc_AF46E0: FStVar var_110
  loc_AF46E4: FLdRfVar var_110
  loc_AF46E7: FLdRfVar var_150
  loc_AF46EA: ImpAdCallFPR4  = IIf(, , )
  loc_AF46EF: FLdRfVar var_150
  loc_AF46F2: CStrVarVal var_90
  loc_AF46F6: ILdPr
  loc_AF46F9: Call tblpersona.ModiFehoPut(from_stack_1v)
  loc_AF46FE: FFree1Str var_90
  loc_AF4701: FFreeAd var_A4 = "": var_B8 = ""
  loc_AF470A: FFreeVar var_C8 = "": var_110 = "": var_120 = "": var_140 = ""
  loc_AF4717: FLdRfVar var_C8
  loc_AF471A: FLdRfVar var_B8
  loc_AF471D: LitVarStr var_B4, "BajaUsua"
  loc_AF4722: PopAdLdVar
  loc_AF4723: FLdRfVar var_A4
  loc_AF4726: FMemLdPr
  loc_AF472B:  = Me.Fields
  loc_AF4730: FLdPr var_A4
  loc_AF4733: from_stack_2 = Me.Item(from_stack_1)
  loc_AF4738: FLdPr var_B8
  loc_AF473B:  = Me.Value
  loc_AF4740: FLdRfVar var_C8
  loc_AF4743: CStrVarTmp
  loc_AF4744: FStStrNoPop var_90
  loc_AF4747: ILdPr
  loc_AF474A: Call tblpersona.BajaUsuaPut(from_stack_1v)
  loc_AF474F: FFree1Str var_90
  loc_AF4752: FFreeAd var_A4 = ""
  loc_AF4759: FFree1Var var_C8 = ""
  loc_AF475C: FLdRfVar var_C8
  loc_AF475F: FLdRfVar var_B8
  loc_AF4762: LitVarStr var_B4, "BajaFeho"
  loc_AF4767: PopAdLdVar
  loc_AF4768: FLdRfVar var_A4
  loc_AF476B: FMemLdPr
  loc_AF4770:  = Me.Fields
  loc_AF4775: FLdPr var_A4
  loc_AF4778: from_stack_2 = Me.Item(from_stack_1)
  loc_AF477D: FLdPr var_B8
  loc_AF4780:  = Me.Value
  loc_AF4785: FLdRfVar var_100
  loc_AF4788: LitVarStr var_FC, "BajaFeho"
  loc_AF478D: PopAdLdVar
  loc_AF478E: FLdRfVar var_EC
  loc_AF4791: FMemLdPr
  loc_AF4796:  = Me.Fields
  loc_AF479B: FLdPr var_EC
  loc_AF479E: from_stack_2 = Me.Item(from_stack_1)
  loc_AF47A3: LitVarStr var_130, vbNullString
  loc_AF47A8: FStVarCopyObj var_140
  loc_AF47AB: FLdRfVar var_140
  loc_AF47AE: FLdZeroAd var_100
  loc_AF47B1: CVarAd
  loc_AF47B5: FLdRfVar var_C8
  loc_AF47B8: LitVarStr var_D8, vbNullString
  loc_AF47BD: HardType
  loc_AF47BE: NeVar var_E8
  loc_AF47C2: FStVar var_110
  loc_AF47C6: FLdRfVar var_110
  loc_AF47C9: FLdRfVar var_150
  loc_AF47CC: ImpAdCallFPR4  = IIf(, , )
  loc_AF47D1: FLdRfVar var_150
  loc_AF47D4: CStrVarVal var_90
  loc_AF47D8: ILdPr
  loc_AF47DB: Call tblpersona.BajaFehoPut(from_stack_1v)
  loc_AF47E0: FFree1Str var_90
  loc_AF47E3: FFreeAd var_A4 = "": var_B8 = ""
  loc_AF47EC: FFreeVar var_C8 = "": var_110 = "": var_120 = "": var_140 = ""
  loc_AF47F9: LitI2_Byte &HFF
  loc_AF47FB: FStI2 var_86
  loc_AF47FE: Branch loc_AF497C
  loc_AF4801: LitStr "La Persona NO EXISTE. Verifique..."
  loc_AF4804: ILdPr
  loc_AF4807: Call tblpersona.MsgErrorPut(from_stack_1v)
  loc_AF480C: LitStr vbNullString
  loc_AF480F: ILdPr
  loc_AF4812: Call tblpersona.CucuPersPut(from_stack_1v)
  loc_AF4817: LitStr vbNullString
  loc_AF481A: ILdPr
  loc_AF481D: Call tblpersona.CcokPersPut(from_stack_1v)
  loc_AF4822: LitStr vbNullString
  loc_AF4825: ILdPr
  loc_AF4828: Call tblpersona.DetaPersPut(from_stack_1v)
  loc_AF482D: LitStr vbNullString
  loc_AF4830: ILdPr
  loc_AF4833: Call tblpersona.JuriPersPut(from_stack_1v)
  loc_AF4838: LitStr vbNullString
  loc_AF483B: ILdPr
  loc_AF483E: Call tblpersona.SexoPersPut(from_stack_1v)
  loc_AF4843: LitStr vbNullString
  loc_AF4846: ILdPr
  loc_AF4849: Call tblpersona.TelePersPut(from_stack_1v)
  loc_AF484E: LitStr vbNullString
  loc_AF4851: ILdPr
  loc_AF4854: Call tblpersona.CeluPersPut(from_stack_1v)
  loc_AF4859: LitStr vbNullString
  loc_AF485C: ILdPr
  loc_AF485F: Call tblpersona.FaxsPersPut(from_stack_1v)
  loc_AF4864: LitStr vbNullString
  loc_AF4867: ILdPr
  loc_AF486A: Call tblpersona.MailPersPut(from_stack_1v)
  loc_AF486F: LitStr vbNullString
  loc_AF4872: ILdPr
  loc_AF4875: Call tblpersona.CodiTidoPut(from_stack_1v)
  loc_AF487A: LitStr vbNullString
  loc_AF487D: ILdPr
  loc_AF4880: Call tblpersona.NudoPersPut(from_stack_1v)
  loc_AF4885: LitStr vbNullString
  loc_AF4888: ILdPr
  loc_AF488B: Call tblpersona.FealPersPut(from_stack_1v)
  loc_AF4890: LitStr vbNullString
  loc_AF4893: ILdPr
  loc_AF4896: Call tblpersona.FenaPersPut(from_stack_1v)
  loc_AF489B: LitStr vbNullString
  loc_AF489E: ILdPr
  loc_AF48A1: Call tblpersona.CodiEsciPut(from_stack_1v)
  loc_AF48A6: LitStr vbNullString
  loc_AF48A9: ILdPr
  loc_AF48AC: Call tblpersona.CodiPofiPut(from_stack_1v)
  loc_AF48B1: LitStr vbNullString
  loc_AF48B4: ILdPr
  loc_AF48B7: Call tblpersona.CocrPersPut(from_stack_1v)
  loc_AF48BC: LitStr vbNullString
  loc_AF48BF: ILdPr
  loc_AF48C2: Call tblpersona.DecrPersPut(from_stack_1v)
  loc_AF48C7: LitStr vbNullString
  loc_AF48CA: ILdPr
  loc_AF48CD: Call tblpersona.NurePersPut(from_stack_1v)
  loc_AF48D2: LitStr vbNullString
  loc_AF48D5: ILdPr
  loc_AF48D8: Call tblpersona.CobrPersPut(from_stack_1v)
  loc_AF48DD: LitStr vbNullString
  loc_AF48E0: ILdPr
  loc_AF48E3: Call tblpersona.DebrPersPut(from_stack_1v)
  loc_AF48E8: LitStr vbNullString
  loc_AF48EB: ILdPr
  loc_AF48EE: Call tblpersona.MarePersPut(from_stack_1v)
  loc_AF48F3: LitStr vbNullString
  loc_AF48F6: ILdPr
  loc_AF48F9: Call tblpersona.CarePersPut(from_stack_1v)
  loc_AF48FE: LitStr vbNullString
  loc_AF4901: ILdPr
  loc_AF4904: Call tblpersona.UbrePersPut(from_stack_1v)
  loc_AF4909: LitStr vbNullString
  loc_AF490C: ILdPr
  loc_AF490F: Call tblpersona.ColrPersPut(from_stack_1v)
  loc_AF4914: LitStr vbNullString
  loc_AF4917: ILdPr
  loc_AF491A: Call tblpersona.DelrPersPut(from_stack_1v)
  loc_AF491F: LitStr vbNullString
  loc_AF4922: ILdPr
  loc_AF4925: Call tblpersona.CoprPersPut(from_stack_1v)
  loc_AF492A: LitStr vbNullString
  loc_AF492D: ILdPr
  loc_AF4930: Call tblpersona.AltaUsuaPut(from_stack_1v)
  loc_AF4935: LitStr vbNullString
  loc_AF4938: ILdPr
  loc_AF493B: Call tblpersona.AltaFehoPut(from_stack_1v)
  loc_AF4940: LitStr vbNullString
  loc_AF4943: ILdPr
  loc_AF4946: Call tblpersona.ModiUsuaPut(from_stack_1v)
  loc_AF494B: LitStr vbNullString
  loc_AF494E: ILdPr
  loc_AF4951: Call tblpersona.ModiFehoPut(from_stack_1v)
  loc_AF4956: LitStr vbNullString
  loc_AF4959: ILdPr
  loc_AF495C: Call tblpersona.BajaUsuaPut(from_stack_1v)
  loc_AF4961: LitStr vbNullString
  loc_AF4964: ILdPr
  loc_AF4967: Call tblpersona.BajaFehoPut(from_stack_1v)
  loc_AF496C: LitStr vbNullString
  loc_AF496F: ILdPr
  loc_AF4972: Call tblpersona.BajaMotiPut(from_stack_1v)
  loc_AF4977: LitI2_Byte 0
  loc_AF4979: FStI2 var_86
  loc_AF497C: ExitProcI2
End Function

Private Function Proc_259_26_B6A94C(arg_C) 'B6A94C
  'Data Table: 4569C4
  loc_B69DC0: ILdRf arg_C
  loc_B69DC3: FStStrCopy var_8C
  loc_B69DC6: LitI2_Byte 0
  loc_B69DC8: BranchF loc_B69E3C
  loc_B69DCB: LitStr "SELECT pr.*, DetaPers, MailPers, DecrPers, TelePers"
  loc_B69DCE: LitStr ", IFNULL(Group_concat(Distinct upc.IdUspro),'') IdUspros"
  loc_B69DD1: ConcatStr
  loc_B69DD2: FStStrNoPop var_90
  loc_B69DD5: LitStr ", IFNULL(Group_concat(Distinct up.UsuaUspro),'') UsuaUspros"
  loc_B69DD8: ConcatStr
  loc_B69DD9: FStStrNoPop var_94
  loc_B69DDC: LitStr " FROM proveedor pr"
  loc_B69DDF: ConcatStr
  loc_B69DE0: FStStrNoPop var_98
  loc_B69DE3: LitStr " INNER JOIN infogov.persona pe ON pe.CucuPers = pr.CucuPers"
  loc_B69DE6: ConcatStr
  loc_B69DE7: FStStrNoPop var_9C
  loc_B69DEA: LitStr " LEFT JOIN contpres.usuaprovcuit upc ON upc.CucuProv = pr.CucuPers"
  loc_B69DED: ConcatStr
  loc_B69DEE: FStStrNoPop var_A0
  loc_B69DF1: LitStr " LEFT JOIN contpres.usuaprov up ON up.IdUspro = upc.IdUspro"
  loc_B69DF4: ConcatStr
  loc_B69DF5: FStStrNoPop var_A4
  loc_B69DF8: LitStr " WHERE pr.CucuPers = '"
  loc_B69DFB: ConcatStr
  loc_B69DFC: FStStrNoPop var_A8
  loc_B69DFF: ILdRf var_8C
  loc_B69E02: ConcatStr
  loc_B69E03: FStStrNoPop var_AC
  loc_B69E06: LitStr "'"
  loc_B69E09: ConcatStr
  loc_B69E0A: FStStrNoPop var_B0
  loc_B69E0D: LitStr " GROUP BY pr.CucuPers"
  loc_B69E10: ConcatStr
  loc_B69E11: FStStrNoPop var_B4
  loc_B69E14: LitStr ";"
  loc_B69E17: ConcatStr
  loc_B69E18: FStStrNoPop var_B8
  loc_B69E1B: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_B69E20: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_B69E39: Branch loc_B69E74
  loc_B69E3C: LitStr "SELECT pr.*, DetaPers, MailPers, DecrPers, TelePers"
  loc_B69E3F: LitStr " FROM proveedor pr"
  loc_B69E42: ConcatStr
  loc_B69E43: FStStrNoPop var_90
  loc_B69E46: LitStr " INNER JOIN infogov.persona pe ON pe.CucuPers = pr.CucuPers"
  loc_B69E49: ConcatStr
  loc_B69E4A: FStStrNoPop var_94
  loc_B69E4D: LitStr " WHERE pr.CucuPers = '"
  loc_B69E50: ConcatStr
  loc_B69E51: FStStrNoPop var_98
  loc_B69E54: ILdRf var_8C
  loc_B69E57: ConcatStr
  loc_B69E58: FStStrNoPop var_9C
  loc_B69E5B: LitStr "';"
  loc_B69E5E: ConcatStr
  loc_B69E5F: FStStrNoPop var_A0
  loc_B69E62: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_B69E67: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_B69E74: FLdRfVar var_BC
  loc_B69E77: FMemLdPr
  loc_B69E7C:  = Me.RecordCount
  loc_B69E81: ILdRf var_BC
  loc_B69E84: LitI4 0
  loc_B69E89: GtI4
  loc_B69E8A: BranchF loc_B6A812
  loc_B69E8D: LitStr vbNullString
  loc_B69E90: ILdPr
  loc_B69E93: Call tblproveedor.MsgErrorPut(from_stack_1v)
  loc_B69E98: FLdRfVar var_E4
  loc_B69E9B: FLdRfVar var_D4
  loc_B69E9E: LitVarStr var_D0, "CucuPers"
  loc_B69EA3: PopAdLdVar
  loc_B69EA4: FLdRfVar var_C0
  loc_B69EA7: FMemLdPr
  loc_B69EAC:  = Me.Fields
  loc_B69EB1: FLdPr var_C0
  loc_B69EB4: from_stack_2 = Me.Item(from_stack_1)
  loc_B69EB9: FLdPr var_D4
  loc_B69EBC:  = Me.Value
  loc_B69EC1: FLdRfVar var_E4
  loc_B69EC4: CStrVarTmp
  loc_B69EC5: FStStrNoPop var_90
  loc_B69EC8: ILdPr
  loc_B69ECB: Call tblproveedor.CucuPersPut(from_stack_1v)
  loc_B69ED0: FFree1Str var_90
  loc_B69ED3: FFreeAd var_C0 = ""
  loc_B69EDA: FFree1Var var_E4 = ""
  loc_B69EDD: FLdRfVar var_E4
  loc_B69EE0: FLdRfVar var_D4
  loc_B69EE3: LitVarStr var_D0, "DetaProv"
  loc_B69EE8: PopAdLdVar
  loc_B69EE9: FLdRfVar var_C0
  loc_B69EEC: FMemLdPr
  loc_B69EF1:  = Me.Fields
  loc_B69EF6: FLdPr var_C0
  loc_B69EF9: from_stack_2 = Me.Item(from_stack_1)
  loc_B69EFE: FLdPr var_D4
  loc_B69F01:  = Me.Value
  loc_B69F06: FLdRfVar var_E4
  loc_B69F09: CStrVarTmp
  loc_B69F0A: FStStrNoPop var_90
  loc_B69F0D: ILdPr
  loc_B69F10: Call tblproveedor.DetaProvPut(from_stack_1v)
  loc_B69F15: FFree1Str var_90
  loc_B69F18: FFreeAd var_C0 = ""
  loc_B69F1F: FFree1Var var_E4 = ""
  loc_B69F22: FLdRfVar var_E4
  loc_B69F25: FLdRfVar var_D4
  loc_B69F28: LitVarStr var_D0, "DetaPers"
  loc_B69F2D: PopAdLdVar
  loc_B69F2E: FLdRfVar var_C0
  loc_B69F31: FMemLdPr
  loc_B69F36:  = Me.Fields
  loc_B69F3B: FLdPr var_C0
  loc_B69F3E: from_stack_2 = Me.Item(from_stack_1)
  loc_B69F43: FLdPr var_D4
  loc_B69F46:  = Me.Value
  loc_B69F4B: FLdRfVar var_E4
  loc_B69F4E: CStrVarTmp
  loc_B69F4F: FStStrNoPop var_90
  loc_B69F52: ILdPr
  loc_B69F55: Call tblproveedor.DetaPersPut(from_stack_1v)
  loc_B69F5A: FFree1Str var_90
  loc_B69F5D: FFreeAd var_C0 = ""
  loc_B69F64: FFree1Var var_E4 = ""
  loc_B69F67: FLdRfVar var_E4
  loc_B69F6A: FLdRfVar var_D4
  loc_B69F6D: LitVarStr var_D0, "MailPers"
  loc_B69F72: PopAdLdVar
  loc_B69F73: FLdRfVar var_C0
  loc_B69F76: FMemLdPr
  loc_B69F7B:  = Me.Fields
  loc_B69F80: FLdPr var_C0
  loc_B69F83: from_stack_2 = Me.Item(from_stack_1)
  loc_B69F88: FLdPr var_D4
  loc_B69F8B:  = Me.Value
  loc_B69F90: FLdRfVar var_E4
  loc_B69F93: CStrVarTmp
  loc_B69F94: FStStrNoPop var_90
  loc_B69F97: ILdPr
  loc_B69F9A: Call tblproveedor.MailPersPut(from_stack_1v)
  loc_B69F9F: FFree1Str var_90
  loc_B69FA2: FFreeAd var_C0 = ""
  loc_B69FA9: FFree1Var var_E4 = ""
  loc_B69FAC: FLdRfVar var_E4
  loc_B69FAF: FLdRfVar var_D4
  loc_B69FB2: LitVarStr var_D0, "DecrPers"
  loc_B69FB7: PopAdLdVar
  loc_B69FB8: FLdRfVar var_C0
  loc_B69FBB: FMemLdPr
  loc_B69FC0:  = Me.Fields
  loc_B69FC5: FLdPr var_C0
  loc_B69FC8: from_stack_2 = Me.Item(from_stack_1)
  loc_B69FCD: FLdPr var_D4
  loc_B69FD0:  = Me.Value
  loc_B69FD5: FLdRfVar var_E4
  loc_B69FD8: CStrVarTmp
  loc_B69FD9: FStStrNoPop var_90
  loc_B69FDC: ILdPr
  loc_B69FDF: Call tblproveedor.DecrPersPut(from_stack_1v)
  loc_B69FE4: FFree1Str var_90
  loc_B69FE7: FFreeAd var_C0 = ""
  loc_B69FEE: FFree1Var var_E4 = ""
  loc_B69FF1: FLdRfVar var_E4
  loc_B69FF4: FLdRfVar var_D4
  loc_B69FF7: LitVarStr var_D0, "TelePers"
  loc_B69FFC: PopAdLdVar
  loc_B69FFD: FLdRfVar var_C0
  loc_B6A000: FMemLdPr
  loc_B6A005:  = Me.Fields
  loc_B6A00A: FLdPr var_C0
  loc_B6A00D: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A012: FLdPr var_D4
  loc_B6A015:  = Me.Value
  loc_B6A01A: FLdRfVar var_E4
  loc_B6A01D: CStrVarTmp
  loc_B6A01E: FStStrNoPop var_90
  loc_B6A021: ILdPr
  loc_B6A024: Call tblproveedor.TelePersPut(from_stack_1v)
  loc_B6A029: FFree1Str var_90
  loc_B6A02C: FFreeAd var_C0 = ""
  loc_B6A033: FFree1Var var_E4 = ""
  loc_B6A036: FLdRfVar var_E4
  loc_B6A039: FLdRfVar var_D4
  loc_B6A03C: LitVarStr var_D0, "FantProv"
  loc_B6A041: PopAdLdVar
  loc_B6A042: FLdRfVar var_C0
  loc_B6A045: FMemLdPr
  loc_B6A04A:  = Me.Fields
  loc_B6A04F: FLdPr var_C0
  loc_B6A052: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A057: FLdPr var_D4
  loc_B6A05A:  = Me.Value
  loc_B6A05F: FLdRfVar var_E4
  loc_B6A062: CStrVarTmp
  loc_B6A063: FStStrNoPop var_90
  loc_B6A066: ILdPr
  loc_B6A069: Call tblproveedor.FantProvPut(from_stack_1v)
  loc_B6A06E: FFree1Str var_90
  loc_B6A071: FFreeAd var_C0 = ""
  loc_B6A078: FFree1Var var_E4 = ""
  loc_B6A07B: FLdRfVar var_E4
  loc_B6A07E: FLdRfVar var_D4
  loc_B6A081: LitVarStr var_D0, "CccaProv"
  loc_B6A086: PopAdLdVar
  loc_B6A087: FLdRfVar var_C0
  loc_B6A08A: FMemLdPr
  loc_B6A08F:  = Me.Fields
  loc_B6A094: FLdPr var_C0
  loc_B6A097: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A09C: FLdPr var_D4
  loc_B6A09F:  = Me.Value
  loc_B6A0A4: FLdRfVar var_E4
  loc_B6A0A7: CStrVarTmp
  loc_B6A0A8: FStStrNoPop var_90
  loc_B6A0AB: ILdPr
  loc_B6A0AE: Call tblproveedor.CccaProvPut(from_stack_1v)
  loc_B6A0B3: FFree1Str var_90
  loc_B6A0B6: FFreeAd var_C0 = ""
  loc_B6A0BD: FFree1Var var_E4 = ""
  loc_B6A0C0: FLdRfVar var_E4
  loc_B6A0C3: FLdRfVar var_D4
  loc_B6A0C6: LitVarStr var_D0, "CubaProv"
  loc_B6A0CB: PopAdLdVar
  loc_B6A0CC: FLdRfVar var_C0
  loc_B6A0CF: FMemLdPr
  loc_B6A0D4:  = Me.Fields
  loc_B6A0D9: FLdPr var_C0
  loc_B6A0DC: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A0E1: FLdPr var_D4
  loc_B6A0E4:  = Me.Value
  loc_B6A0E9: FLdRfVar var_E4
  loc_B6A0EC: CStrVarTmp
  loc_B6A0ED: FStStrNoPop var_90
  loc_B6A0F0: ILdPr
  loc_B6A0F3: Call tblproveedor.CubaProvPut(from_stack_1v)
  loc_B6A0F8: FFree1Str var_90
  loc_B6A0FB: FFreeAd var_C0 = ""
  loc_B6A102: FFree1Var var_E4 = ""
  loc_B6A105: FLdRfVar var_E4
  loc_B6A108: FLdRfVar var_D4
  loc_B6A10B: LitVarStr var_D0, "PainProv"
  loc_B6A110: PopAdLdVar
  loc_B6A111: FLdRfVar var_C0
  loc_B6A114: FMemLdPr
  loc_B6A119:  = Me.Fields
  loc_B6A11E: FLdPr var_C0
  loc_B6A121: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A126: FLdPr var_D4
  loc_B6A129:  = Me.Value
  loc_B6A12E: FLdRfVar var_E4
  loc_B6A131: CStrVarTmp
  loc_B6A132: FStStrNoPop var_90
  loc_B6A135: ILdPr
  loc_B6A138: Call tblproveedor.PainProvPut(from_stack_1v)
  loc_B6A13D: FFree1Str var_90
  loc_B6A140: FFreeAd var_C0 = ""
  loc_B6A147: FFree1Var var_E4 = ""
  loc_B6A14A: FLdRfVar var_E4
  loc_B6A14D: FLdRfVar var_D4
  loc_B6A150: LitVarStr var_D0, "LocaProv"
  loc_B6A155: PopAdLdVar
  loc_B6A156: FLdRfVar var_C0
  loc_B6A159: FMemLdPr
  loc_B6A15E:  = Me.Fields
  loc_B6A163: FLdPr var_C0
  loc_B6A166: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A16B: FLdPr var_D4
  loc_B6A16E:  = Me.Value
  loc_B6A173: FLdRfVar var_E4
  loc_B6A176: CStrVarTmp
  loc_B6A177: FStStrNoPop var_90
  loc_B6A17A: ILdPr
  loc_B6A17D: Call tblproveedor.LocaProvPut(from_stack_1v)
  loc_B6A182: FFree1Str var_90
  loc_B6A185: FFreeAd var_C0 = ""
  loc_B6A18C: FFree1Var var_E4 = ""
  loc_B6A18F: FLdRfVar var_E4
  loc_B6A192: FLdRfVar var_D4
  loc_B6A195: LitVarStr var_D0, "FedcProv"
  loc_B6A19A: PopAdLdVar
  loc_B6A19B: FLdRfVar var_C0
  loc_B6A19E: FMemLdPr
  loc_B6A1A3:  = Me.Fields
  loc_B6A1A8: FLdPr var_C0
  loc_B6A1AB: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A1B0: FLdPr var_D4
  loc_B6A1B3:  = Me.Value
  loc_B6A1B8: FLdRfVar var_11C
  loc_B6A1BB: LitVarStr var_118, "FedcProv"
  loc_B6A1C0: PopAdLdVar
  loc_B6A1C1: FLdRfVar var_108
  loc_B6A1C4: FMemLdPr
  loc_B6A1C9:  = Me.Fields
  loc_B6A1CE: FLdPr var_108
  loc_B6A1D1: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A1D6: LitVarStr var_14C, vbNullString
  loc_B6A1DB: FStVarCopyObj var_15C
  loc_B6A1DE: FLdRfVar var_15C
  loc_B6A1E1: FLdZeroAd var_11C
  loc_B6A1E4: CVarAd
  loc_B6A1E8: FLdRfVar var_E4
  loc_B6A1EB: LitVarStr var_F4, vbNullString
  loc_B6A1F0: HardType
  loc_B6A1F1: NeVar var_104
  loc_B6A1F5: FStVar var_12C
  loc_B6A1F9: FLdRfVar var_12C
  loc_B6A1FC: FLdRfVar var_16C
  loc_B6A1FF: ImpAdCallFPR4  = IIf(, , )
  loc_B6A204: FLdRfVar var_16C
  loc_B6A207: CStrVarVal var_90
  loc_B6A20B: ILdPr
  loc_B6A20E: Call tblproveedor.FedcProvPut(from_stack_1v)
  loc_B6A213: FFree1Str var_90
  loc_B6A216: FFreeAd var_C0 = "": var_D4 = ""
  loc_B6A21F: FFreeVar var_E4 = "": var_12C = "": var_13C = "": var_15C = ""
  loc_B6A22C: FLdRfVar var_E4
  loc_B6A22F: FLdRfVar var_D4
  loc_B6A232: LitVarStr var_D0, "FehcProv"
  loc_B6A237: PopAdLdVar
  loc_B6A238: FLdRfVar var_C0
  loc_B6A23B: FMemLdPr
  loc_B6A240:  = Me.Fields
  loc_B6A245: FLdPr var_C0
  loc_B6A248: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A24D: FLdPr var_D4
  loc_B6A250:  = Me.Value
  loc_B6A255: FLdRfVar var_11C
  loc_B6A258: LitVarStr var_118, "FehcProv"
  loc_B6A25D: PopAdLdVar
  loc_B6A25E: FLdRfVar var_108
  loc_B6A261: FMemLdPr
  loc_B6A266:  = Me.Fields
  loc_B6A26B: FLdPr var_108
  loc_B6A26E: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A273: LitVarStr var_14C, vbNullString
  loc_B6A278: FStVarCopyObj var_15C
  loc_B6A27B: FLdRfVar var_15C
  loc_B6A27E: FLdZeroAd var_11C
  loc_B6A281: CVarAd
  loc_B6A285: FLdRfVar var_E4
  loc_B6A288: LitVarStr var_F4, vbNullString
  loc_B6A28D: HardType
  loc_B6A28E: NeVar var_104
  loc_B6A292: FStVar var_12C
  loc_B6A296: FLdRfVar var_12C
  loc_B6A299: FLdRfVar var_16C
  loc_B6A29C: ImpAdCallFPR4  = IIf(, , )
  loc_B6A2A1: FLdRfVar var_16C
  loc_B6A2A4: CStrVarVal var_90
  loc_B6A2A8: ILdPr
  loc_B6A2AB: Call tblproveedor.FehcProvPut(from_stack_1v)
  loc_B6A2B0: FFree1Str var_90
  loc_B6A2B3: FFreeAd var_C0 = "": var_D4 = ""
  loc_B6A2BC: FFreeVar var_E4 = "": var_12C = "": var_13C = "": var_15C = ""
  loc_B6A2C9: FLdRfVar var_E4
  loc_B6A2CC: FLdRfVar var_D4
  loc_B6A2CF: LitVarStr var_D0, "TotcProv"
  loc_B6A2D4: PopAdLdVar
  loc_B6A2D5: FLdRfVar var_C0
  loc_B6A2D8: FMemLdPr
  loc_B6A2DD:  = Me.Fields
  loc_B6A2E2: FLdPr var_C0
  loc_B6A2E5: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A2EA: FLdPr var_D4
  loc_B6A2ED:  = Me.Value
  loc_B6A2F2: FLdRfVar var_E4
  loc_B6A2F5: CStrVarTmp
  loc_B6A2F6: FStStrNoPop var_90
  loc_B6A2F9: ILdPr
  loc_B6A2FC: Call tblproveedor.TotcProvPut(from_stack_1v)
  loc_B6A301: FFree1Str var_90
  loc_B6A304: FFreeAd var_C0 = ""
  loc_B6A30B: FFree1Var var_E4 = ""
  loc_B6A30E: FLdRfVar var_E4
  loc_B6A311: FLdRfVar var_D4
  loc_B6A314: LitVarStr var_D0, "FactProv"
  loc_B6A319: PopAdLdVar
  loc_B6A31A: FLdRfVar var_C0
  loc_B6A31D: FMemLdPr
  loc_B6A322:  = Me.Fields
  loc_B6A327: FLdPr var_C0
  loc_B6A32A: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A32F: FLdPr var_D4
  loc_B6A332:  = Me.Value
  loc_B6A337: FLdRfVar var_E4
  loc_B6A33A: CStrVarTmp
  loc_B6A33B: FStStrNoPop var_90
  loc_B6A33E: ILdPr
  loc_B6A341: Call tblproveedor.FactProvPut(from_stack_1v)
  loc_B6A346: FFree1Str var_90
  loc_B6A349: FFreeAd var_C0 = ""
  loc_B6A350: FFree1Var var_E4 = ""
  loc_B6A353: FLdRfVar var_E4
  loc_B6A356: FLdRfVar var_D4
  loc_B6A359: LitVarStr var_D0, "FeviProv"
  loc_B6A35E: PopAdLdVar
  loc_B6A35F: FLdRfVar var_C0
  loc_B6A362: FMemLdPr
  loc_B6A367:  = Me.Fields
  loc_B6A36C: FLdPr var_C0
  loc_B6A36F: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A374: FLdPr var_D4
  loc_B6A377:  = Me.Value
  loc_B6A37C: FLdRfVar var_11C
  loc_B6A37F: LitVarStr var_118, "FeviProv"
  loc_B6A384: PopAdLdVar
  loc_B6A385: FLdRfVar var_108
  loc_B6A388: FMemLdPr
  loc_B6A38D:  = Me.Fields
  loc_B6A392: FLdPr var_108
  loc_B6A395: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A39A: LitVarStr var_14C, vbNullString
  loc_B6A39F: FStVarCopyObj var_15C
  loc_B6A3A2: FLdRfVar var_15C
  loc_B6A3A5: FLdZeroAd var_11C
  loc_B6A3A8: CVarAd
  loc_B6A3AC: FLdRfVar var_E4
  loc_B6A3AF: LitVarStr var_F4, vbNullString
  loc_B6A3B4: HardType
  loc_B6A3B5: NeVar var_104
  loc_B6A3B9: FStVar var_12C
  loc_B6A3BD: FLdRfVar var_12C
  loc_B6A3C0: FLdRfVar var_16C
  loc_B6A3C3: ImpAdCallFPR4  = IIf(, , )
  loc_B6A3C8: FLdRfVar var_16C
  loc_B6A3CB: CStrVarVal var_90
  loc_B6A3CF: ILdPr
  loc_B6A3D2: Call tblproveedor.FeviProvPut(from_stack_1v)
  loc_B6A3D7: FFree1Str var_90
  loc_B6A3DA: FFreeAd var_C0 = "": var_D4 = ""
  loc_B6A3E3: FFreeVar var_E4 = "": var_12C = "": var_13C = "": var_15C = ""
  loc_B6A3F0: FLdRfVar var_E4
  loc_B6A3F3: FLdRfVar var_D4
  loc_B6A3F6: LitVarStr var_D0, "ExpeProv"
  loc_B6A3FB: PopAdLdVar
  loc_B6A3FC: FLdRfVar var_C0
  loc_B6A3FF: FMemLdPr
  loc_B6A404:  = Me.Fields
  loc_B6A409: FLdPr var_C0
  loc_B6A40C: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A411: FLdPr var_D4
  loc_B6A414:  = Me.Value
  loc_B6A419: FLdRfVar var_E4
  loc_B6A41C: CStrVarTmp
  loc_B6A41D: FStStrNoPop var_90
  loc_B6A420: ILdPr
  loc_B6A423: Call tblproveedor.ExpeProvPut(from_stack_1v)
  loc_B6A428: FFree1Str var_90
  loc_B6A42B: FFreeAd var_C0 = ""
  loc_B6A432: FFree1Var var_E4 = ""
  loc_B6A435: FLdRfVar var_E4
  loc_B6A438: FLdRfVar var_D4
  loc_B6A43B: LitVarStr var_D0, "CedeProv"
  loc_B6A440: PopAdLdVar
  loc_B6A441: FLdRfVar var_C0
  loc_B6A444: FMemLdPr
  loc_B6A449:  = Me.Fields
  loc_B6A44E: FLdPr var_C0
  loc_B6A451: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A456: FLdPr var_D4
  loc_B6A459:  = Me.Value
  loc_B6A45E: FLdRfVar var_E4
  loc_B6A461: CStrVarTmp
  loc_B6A462: FStStrNoPop var_90
  loc_B6A465: ILdPr
  loc_B6A468: Call tblproveedor.CedeProvPut(from_stack_1v)
  loc_B6A46D: FFree1Str var_90
  loc_B6A470: FFreeAd var_C0 = ""
  loc_B6A477: FFree1Var var_E4 = ""
  loc_B6A47A: FLdRfVar var_E4
  loc_B6A47D: FLdRfVar var_D4
  loc_B6A480: LitVarStr var_D0, "AltaUsua"
  loc_B6A485: PopAdLdVar
  loc_B6A486: FLdRfVar var_C0
  loc_B6A489: FMemLdPr
  loc_B6A48E:  = Me.Fields
  loc_B6A493: FLdPr var_C0
  loc_B6A496: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A49B: FLdPr var_D4
  loc_B6A49E:  = Me.Value
  loc_B6A4A3: FLdRfVar var_E4
  loc_B6A4A6: CStrVarTmp
  loc_B6A4A7: FStStrNoPop var_90
  loc_B6A4AA: ILdPr
  loc_B6A4AD: Call tblproveedor.AltaUsuaPut(from_stack_1v)
  loc_B6A4B2: FFree1Str var_90
  loc_B6A4B5: FFreeAd var_C0 = ""
  loc_B6A4BC: FFree1Var var_E4 = ""
  loc_B6A4BF: FLdRfVar var_E4
  loc_B6A4C2: FLdRfVar var_D4
  loc_B6A4C5: LitVarStr var_D0, "AltaFeho"
  loc_B6A4CA: PopAdLdVar
  loc_B6A4CB: FLdRfVar var_C0
  loc_B6A4CE: FMemLdPr
  loc_B6A4D3:  = Me.Fields
  loc_B6A4D8: FLdPr var_C0
  loc_B6A4DB: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A4E0: FLdPr var_D4
  loc_B6A4E3:  = Me.Value
  loc_B6A4E8: FLdRfVar var_11C
  loc_B6A4EB: LitVarStr var_118, "AltaFeho"
  loc_B6A4F0: PopAdLdVar
  loc_B6A4F1: FLdRfVar var_108
  loc_B6A4F4: FMemLdPr
  loc_B6A4F9:  = Me.Fields
  loc_B6A4FE: FLdPr var_108
  loc_B6A501: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A506: LitVarStr var_14C, vbNullString
  loc_B6A50B: FStVarCopyObj var_15C
  loc_B6A50E: FLdRfVar var_15C
  loc_B6A511: FLdZeroAd var_11C
  loc_B6A514: CVarAd
  loc_B6A518: FLdRfVar var_E4
  loc_B6A51B: LitVarStr var_F4, vbNullString
  loc_B6A520: HardType
  loc_B6A521: NeVar var_104
  loc_B6A525: FStVar var_12C
  loc_B6A529: FLdRfVar var_12C
  loc_B6A52C: FLdRfVar var_16C
  loc_B6A52F: ImpAdCallFPR4  = IIf(, , )
  loc_B6A534: FLdRfVar var_16C
  loc_B6A537: CStrVarVal var_90
  loc_B6A53B: ILdPr
  loc_B6A53E: Call tblproveedor.AltaFehoPut(from_stack_1v)
  loc_B6A543: FFree1Str var_90
  loc_B6A546: FFreeAd var_C0 = "": var_D4 = ""
  loc_B6A54F: FFreeVar var_E4 = "": var_12C = "": var_13C = "": var_15C = ""
  loc_B6A55C: FLdRfVar var_E4
  loc_B6A55F: FLdRfVar var_D4
  loc_B6A562: LitVarStr var_D0, "ModiUsua"
  loc_B6A567: PopAdLdVar
  loc_B6A568: FLdRfVar var_C0
  loc_B6A56B: FMemLdPr
  loc_B6A570:  = Me.Fields
  loc_B6A575: FLdPr var_C0
  loc_B6A578: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A57D: FLdPr var_D4
  loc_B6A580:  = Me.Value
  loc_B6A585: FLdRfVar var_E4
  loc_B6A588: CStrVarTmp
  loc_B6A589: FStStrNoPop var_90
  loc_B6A58C: ILdPr
  loc_B6A58F: Call tblproveedor.ModiUsuaPut(from_stack_1v)
  loc_B6A594: FFree1Str var_90
  loc_B6A597: FFreeAd var_C0 = ""
  loc_B6A59E: FFree1Var var_E4 = ""
  loc_B6A5A1: FLdRfVar var_E4
  loc_B6A5A4: FLdRfVar var_D4
  loc_B6A5A7: LitVarStr var_D0, "ModiFeho"
  loc_B6A5AC: PopAdLdVar
  loc_B6A5AD: FLdRfVar var_C0
  loc_B6A5B0: FMemLdPr
  loc_B6A5B5:  = Me.Fields
  loc_B6A5BA: FLdPr var_C0
  loc_B6A5BD: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A5C2: FLdPr var_D4
  loc_B6A5C5:  = Me.Value
  loc_B6A5CA: FLdRfVar var_11C
  loc_B6A5CD: LitVarStr var_118, "ModiFeho"
  loc_B6A5D2: PopAdLdVar
  loc_B6A5D3: FLdRfVar var_108
  loc_B6A5D6: FMemLdPr
  loc_B6A5DB:  = Me.Fields
  loc_B6A5E0: FLdPr var_108
  loc_B6A5E3: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A5E8: LitVarStr var_14C, vbNullString
  loc_B6A5ED: FStVarCopyObj var_15C
  loc_B6A5F0: FLdRfVar var_15C
  loc_B6A5F3: FLdZeroAd var_11C
  loc_B6A5F6: CVarAd
  loc_B6A5FA: FLdRfVar var_E4
  loc_B6A5FD: LitVarStr var_F4, vbNullString
  loc_B6A602: HardType
  loc_B6A603: NeVar var_104
  loc_B6A607: FStVar var_12C
  loc_B6A60B: FLdRfVar var_12C
  loc_B6A60E: FLdRfVar var_16C
  loc_B6A611: ImpAdCallFPR4  = IIf(, , )
  loc_B6A616: FLdRfVar var_16C
  loc_B6A619: CStrVarVal var_90
  loc_B6A61D: ILdPr
  loc_B6A620: Call tblproveedor.ModiFehoPut(from_stack_1v)
  loc_B6A625: FFree1Str var_90
  loc_B6A628: FFreeAd var_C0 = "": var_D4 = ""
  loc_B6A631: FFreeVar var_E4 = "": var_12C = "": var_13C = "": var_15C = ""
  loc_B6A63E: FLdRfVar var_E4
  loc_B6A641: FLdRfVar var_D4
  loc_B6A644: LitVarStr var_D0, "BajaUsua"
  loc_B6A649: PopAdLdVar
  loc_B6A64A: FLdRfVar var_C0
  loc_B6A64D: FMemLdPr
  loc_B6A652:  = Me.Fields
  loc_B6A657: FLdPr var_C0
  loc_B6A65A: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A65F: FLdPr var_D4
  loc_B6A662:  = Me.Value
  loc_B6A667: FLdRfVar var_E4
  loc_B6A66A: CStrVarTmp
  loc_B6A66B: FStStrNoPop var_90
  loc_B6A66E: ILdPr
  loc_B6A671: Call tblproveedor.BajaUsuaPut(from_stack_1v)
  loc_B6A676: FFree1Str var_90
  loc_B6A679: FFreeAd var_C0 = ""
  loc_B6A680: FFree1Var var_E4 = ""
  loc_B6A683: FLdRfVar var_E4
  loc_B6A686: FLdRfVar var_D4
  loc_B6A689: LitVarStr var_D0, "BajaFeho"
  loc_B6A68E: PopAdLdVar
  loc_B6A68F: FLdRfVar var_C0
  loc_B6A692: FMemLdPr
  loc_B6A697:  = Me.Fields
  loc_B6A69C: FLdPr var_C0
  loc_B6A69F: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A6A4: FLdPr var_D4
  loc_B6A6A7:  = Me.Value
  loc_B6A6AC: FLdRfVar var_11C
  loc_B6A6AF: LitVarStr var_118, "BajaFeho"
  loc_B6A6B4: PopAdLdVar
  loc_B6A6B5: FLdRfVar var_108
  loc_B6A6B8: FMemLdPr
  loc_B6A6BD:  = Me.Fields
  loc_B6A6C2: FLdPr var_108
  loc_B6A6C5: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A6CA: LitVarStr var_14C, vbNullString
  loc_B6A6CF: FStVarCopyObj var_15C
  loc_B6A6D2: FLdRfVar var_15C
  loc_B6A6D5: FLdZeroAd var_11C
  loc_B6A6D8: CVarAd
  loc_B6A6DC: FLdRfVar var_E4
  loc_B6A6DF: LitVarStr var_F4, vbNullString
  loc_B6A6E4: HardType
  loc_B6A6E5: NeVar var_104
  loc_B6A6E9: FStVar var_12C
  loc_B6A6ED: FLdRfVar var_12C
  loc_B6A6F0: FLdRfVar var_16C
  loc_B6A6F3: ImpAdCallFPR4  = IIf(, , )
  loc_B6A6F8: FLdRfVar var_16C
  loc_B6A6FB: CStrVarVal var_90
  loc_B6A6FF: ILdPr
  loc_B6A702: Call tblproveedor.BajaFehoPut(from_stack_1v)
  loc_B6A707: FFree1Str var_90
  loc_B6A70A: FFreeAd var_C0 = "": var_D4 = ""
  loc_B6A713: FFreeVar var_E4 = "": var_12C = "": var_13C = "": var_15C = ""
  loc_B6A720: FLdRfVar var_E4
  loc_B6A723: FLdRfVar var_D4
  loc_B6A726: LitVarStr var_D0, "BajaMoti"
  loc_B6A72B: PopAdLdVar
  loc_B6A72C: FLdRfVar var_C0
  loc_B6A72F: FMemLdPr
  loc_B6A734:  = Me.Fields
  loc_B6A739: FLdPr var_C0
  loc_B6A73C: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A741: FLdPr var_D4
  loc_B6A744:  = Me.Value
  loc_B6A749: FLdRfVar var_E4
  loc_B6A74C: CStrVarTmp
  loc_B6A74D: FStStrNoPop var_90
  loc_B6A750: ILdPr
  loc_B6A753: Call tblproveedor.BajaMotiPut(from_stack_1v)
  loc_B6A758: FFree1Str var_90
  loc_B6A75B: FFreeAd var_C0 = ""
  loc_B6A762: FFree1Var var_E4 = ""
  loc_B6A765: LitStr vbNullString
  loc_B6A768: ILdPr
  loc_B6A76B: Call tblproveedor.IdUsprosPut(from_stack_1v)
  loc_B6A770: LitStr vbNullString
  loc_B6A773: ILdPr
  loc_B6A776: Call tblproveedor.UsuaUsprosPut(from_stack_1v)
  loc_B6A77B: LitI2_Byte 0
  loc_B6A77D: BranchF loc_B6A80A
  loc_B6A780: FLdRfVar var_E4
  loc_B6A783: FLdRfVar var_D4
  loc_B6A786: LitVarStr var_D0, "IdUspros"
  loc_B6A78B: PopAdLdVar
  loc_B6A78C: FLdRfVar var_C0
  loc_B6A78F: FMemLdPr
  loc_B6A794:  = Me.Fields
  loc_B6A799: FLdPr var_C0
  loc_B6A79C: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A7A1: FLdPr var_D4
  loc_B6A7A4:  = Me.Value
  loc_B6A7A9: FLdRfVar var_E4
  loc_B6A7AC: CStrVarTmp
  loc_B6A7AD: FStStrNoPop var_90
  loc_B6A7B0: ILdPr
  loc_B6A7B3: Call tblproveedor.IdUsprosPut(from_stack_1v)
  loc_B6A7B8: FFree1Str var_90
  loc_B6A7BB: FFreeAd var_C0 = ""
  loc_B6A7C2: FFree1Var var_E4 = ""
  loc_B6A7C5: FLdRfVar var_E4
  loc_B6A7C8: FLdRfVar var_D4
  loc_B6A7CB: LitVarStr var_D0, "UsuaUspros"
  loc_B6A7D0: PopAdLdVar
  loc_B6A7D1: FLdRfVar var_C0
  loc_B6A7D4: FMemLdPr
  loc_B6A7D9:  = Me.Fields
  loc_B6A7DE: FLdPr var_C0
  loc_B6A7E1: from_stack_2 = Me.Item(from_stack_1)
  loc_B6A7E6: FLdPr var_D4
  loc_B6A7E9:  = Me.Value
  loc_B6A7EE: FLdRfVar var_E4
  loc_B6A7F1: CStrVarTmp
  loc_B6A7F2: FStStrNoPop var_90
  loc_B6A7F5: ILdPr
  loc_B6A7F8: Call tblproveedor.UsuaUsprosPut(from_stack_1v)
  loc_B6A7FD: FFree1Str var_90
  loc_B6A800: FFreeAd var_C0 = ""
  loc_B6A807: FFree1Var var_E4 = ""
  loc_B6A80A: LitI2_Byte &HFF
  loc_B6A80C: FStI2 var_86
  loc_B6A80F: Branch loc_B6A94B
  loc_B6A812: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B6A815: ILdPr
  loc_B6A818: Call tblproveedor.MsgErrorPut(from_stack_1v)
  loc_B6A81D: LitStr vbNullString
  loc_B6A820: ILdPr
  loc_B6A823: Call tblproveedor.CucuPersPut(from_stack_1v)
  loc_B6A828: LitStr vbNullString
  loc_B6A82B: ILdPr
  loc_B6A82E: Call tblproveedor.DetaProvPut(from_stack_1v)
  loc_B6A833: LitStr vbNullString
  loc_B6A836: ILdPr
  loc_B6A839: Call tblproveedor.DetaPersPut(from_stack_1v)
  loc_B6A83E: LitStr vbNullString
  loc_B6A841: ILdPr
  loc_B6A844: Call tblproveedor.MailPersPut(from_stack_1v)
  loc_B6A849: LitStr vbNullString
  loc_B6A84C: ILdPr
  loc_B6A84F: Call tblproveedor.DecrPersPut(from_stack_1v)
  loc_B6A854: LitStr vbNullString
  loc_B6A857: ILdPr
  loc_B6A85A: Call tblproveedor.TelePersPut(from_stack_1v)
  loc_B6A85F: LitStr vbNullString
  loc_B6A862: ILdPr
  loc_B6A865: Call tblproveedor.FantProvPut(from_stack_1v)
  loc_B6A86A: LitStr vbNullString
  loc_B6A86D: ILdPr
  loc_B6A870: Call tblproveedor.CccaProvPut(from_stack_1v)
  loc_B6A875: LitStr vbNullString
  loc_B6A878: ILdPr
  loc_B6A87B: Call tblproveedor.CubaProvPut(from_stack_1v)
  loc_B6A880: LitStr vbNullString
  loc_B6A883: ILdPr
  loc_B6A886: Call tblproveedor.PainProvPut(from_stack_1v)
  loc_B6A88B: LitStr vbNullString
  loc_B6A88E: ILdPr
  loc_B6A891: Call tblproveedor.LocaProvPut(from_stack_1v)
  loc_B6A896: LitStr vbNullString
  loc_B6A899: ILdPr
  loc_B6A89C: Call tblproveedor.FedcProvPut(from_stack_1v)
  loc_B6A8A1: LitStr vbNullString
  loc_B6A8A4: ILdPr
  loc_B6A8A7: Call tblproveedor.FehcProvPut(from_stack_1v)
  loc_B6A8AC: LitStr vbNullString
  loc_B6A8AF: ILdPr
  loc_B6A8B2: Call tblproveedor.TotcProvPut(from_stack_1v)
  loc_B6A8B7: LitStr vbNullString
  loc_B6A8BA: ILdPr
  loc_B6A8BD: Call tblproveedor.FactProvPut(from_stack_1v)
  loc_B6A8C2: LitStr vbNullString
  loc_B6A8C5: ILdPr
  loc_B6A8C8: Call tblproveedor.FeviProvPut(from_stack_1v)
  loc_B6A8CD: LitStr vbNullString
  loc_B6A8D0: ILdPr
  loc_B6A8D3: Call tblproveedor.ExpeProvPut(from_stack_1v)
  loc_B6A8D8: LitStr vbNullString
  loc_B6A8DB: ILdPr
  loc_B6A8DE: Call tblproveedor.CedeProvPut(from_stack_1v)
  loc_B6A8E3: LitStr vbNullString
  loc_B6A8E6: ILdPr
  loc_B6A8E9: Call tblproveedor.AltaUsuaPut(from_stack_1v)
  loc_B6A8EE: LitStr vbNullString
  loc_B6A8F1: ILdPr
  loc_B6A8F4: Call tblproveedor.AltaFehoPut(from_stack_1v)
  loc_B6A8F9: LitStr vbNullString
  loc_B6A8FC: ILdPr
  loc_B6A8FF: Call tblproveedor.ModiUsuaPut(from_stack_1v)
  loc_B6A904: LitStr vbNullString
  loc_B6A907: ILdPr
  loc_B6A90A: Call tblproveedor.ModiFehoPut(from_stack_1v)
  loc_B6A90F: LitStr vbNullString
  loc_B6A912: ILdPr
  loc_B6A915: Call tblproveedor.BajaUsuaPut(from_stack_1v)
  loc_B6A91A: LitStr vbNullString
  loc_B6A91D: ILdPr
  loc_B6A920: Call tblproveedor.BajaFehoPut(from_stack_1v)
  loc_B6A925: LitStr vbNullString
  loc_B6A928: ILdPr
  loc_B6A92B: Call tblproveedor.BajaMotiPut(from_stack_1v)
  loc_B6A930: LitStr vbNullString
  loc_B6A933: ILdPr
  loc_B6A936: Call tblproveedor.IdUsprosPut(from_stack_1v)
  loc_B6A93B: LitStr vbNullString
  loc_B6A93E: ILdPr
  loc_B6A941: Call tblproveedor.UsuaUsprosPut(from_stack_1v)
  loc_B6A946: LitI2_Byte 0
  loc_B6A948: FStI2 var_86
  loc_B6A94B: ExitProcI2
End Function

Private Function Proc_259_27_AB5E38(arg_C, arg_10) 'AB5E38
  'Data Table: 4569C4
  loc_AB58E4: ILdRf arg_C
  loc_AB58E7: FStStrCopy var_8C
  loc_AB58EA: ILdRf arg_10
  loc_AB58ED: FStStrCopy var_90
  loc_AB58F0: LitStr "SELECT *"
  loc_AB58F3: LitStr " FROM retenciones"
  loc_AB58F6: ConcatStr
  loc_AB58F7: FStStrNoPop var_94
  loc_AB58FA: LitStr " WHERE PeriInfo = '"
  loc_AB58FD: ConcatStr
  loc_AB58FE: FStStrNoPop var_98
  loc_AB5901: ILdRf var_8C
  loc_AB5904: ConcatStr
  loc_AB5905: FStStrNoPop var_9C
  loc_AB5908: LitStr "' AND CodiRete = '"
  loc_AB590B: ConcatStr
  loc_AB590C: FStStrNoPop var_A0
  loc_AB590F: ILdRf var_90
  loc_AB5912: ConcatStr
  loc_AB5913: FStStrNoPop var_A4
  loc_AB5916: LitStr "'"
  loc_AB5919: ConcatStr
  loc_AB591A: FStStrNoPop var_A8
  loc_AB591D: LitStr " LIMIT 1;"
  loc_AB5920: ConcatStr
  loc_AB5921: FStStrNoPop var_AC
  loc_AB5924: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_AB5929: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AB593A: FLdRfVar var_B0
  loc_AB593D: FMemLdPr
  loc_AB5942:  = Me.RecordCount
  loc_AB5947: ILdRf var_B0
  loc_AB594A: LitI4 0
  loc_AB594F: GtI4
  loc_AB5950: BranchF loc_AB5D97
  loc_AB5953: LitStr vbNullString
  loc_AB5956: ILdPr
  loc_AB5959: Call tblretenciones.MsgErrorPut(from_stack_1v)
  loc_AB595E: FLdRfVar var_D8
  loc_AB5961: FLdRfVar var_C8
  loc_AB5964: LitVarStr var_C4, "PeriInfo"
  loc_AB5969: PopAdLdVar
  loc_AB596A: FLdRfVar var_B4
  loc_AB596D: FMemLdPr
  loc_AB5972:  = Me.Fields
  loc_AB5977: FLdPr var_B4
  loc_AB597A: from_stack_2 = Me.Item(from_stack_1)
  loc_AB597F: FLdPr var_C8
  loc_AB5982:  = Me.Value
  loc_AB5987: FLdRfVar var_D8
  loc_AB598A: CStrVarTmp
  loc_AB598B: FStStrNoPop var_94
  loc_AB598E: ILdPr
  loc_AB5991: Call tblretenciones.PeriInfoPut(from_stack_1v)
  loc_AB5996: FFree1Str var_94
  loc_AB5999: FFreeAd var_B4 = ""
  loc_AB59A0: FFree1Var var_D8 = ""
  loc_AB59A3: FLdRfVar var_D8
  loc_AB59A6: FLdRfVar var_C8
  loc_AB59A9: LitVarStr var_C4, "CodiRete"
  loc_AB59AE: PopAdLdVar
  loc_AB59AF: FLdRfVar var_B4
  loc_AB59B2: FMemLdPr
  loc_AB59B7:  = Me.Fields
  loc_AB59BC: FLdPr var_B4
  loc_AB59BF: from_stack_2 = Me.Item(from_stack_1)
  loc_AB59C4: FLdPr var_C8
  loc_AB59C7:  = Me.Value
  loc_AB59CC: FLdRfVar var_D8
  loc_AB59CF: CStrVarTmp
  loc_AB59D0: FStStrNoPop var_94
  loc_AB59D3: ILdPr
  loc_AB59D6: Call tblretenciones.CodiRetePut(from_stack_1v)
  loc_AB59DB: FFree1Str var_94
  loc_AB59DE: FFreeAd var_B4 = ""
  loc_AB59E5: FFree1Var var_D8 = ""
  loc_AB59E8: FLdRfVar var_D8
  loc_AB59EB: FLdRfVar var_C8
  loc_AB59EE: LitVarStr var_C4, "DetaRete"
  loc_AB59F3: PopAdLdVar
  loc_AB59F4: FLdRfVar var_B4
  loc_AB59F7: FMemLdPr
  loc_AB59FC:  = Me.Fields
  loc_AB5A01: FLdPr var_B4
  loc_AB5A04: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5A09: FLdPr var_C8
  loc_AB5A0C:  = Me.Value
  loc_AB5A11: FLdRfVar var_D8
  loc_AB5A14: CStrVarTmp
  loc_AB5A15: FStStrNoPop var_94
  loc_AB5A18: ILdPr
  loc_AB5A1B: Call tblretenciones.DetaRetePut(from_stack_1v)
  loc_AB5A20: FFree1Str var_94
  loc_AB5A23: FFreeAd var_B4 = ""
  loc_AB5A2A: FFree1Var var_D8 = ""
  loc_AB5A2D: FLdRfVar var_D8
  loc_AB5A30: FLdRfVar var_C8
  loc_AB5A33: LitVarStr var_C4, "CodiCuco"
  loc_AB5A38: PopAdLdVar
  loc_AB5A39: FLdRfVar var_B4
  loc_AB5A3C: FMemLdPr
  loc_AB5A41:  = Me.Fields
  loc_AB5A46: FLdPr var_B4
  loc_AB5A49: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5A4E: FLdPr var_C8
  loc_AB5A51:  = Me.Value
  loc_AB5A56: FLdRfVar var_D8
  loc_AB5A59: CStrVarTmp
  loc_AB5A5A: FStStrNoPop var_94
  loc_AB5A5D: ILdPr
  loc_AB5A60: Call tblretenciones.CodiCucoPut(from_stack_1v)
  loc_AB5A65: FFree1Str var_94
  loc_AB5A68: FFreeAd var_B4 = ""
  loc_AB5A6F: FFree1Var var_D8 = ""
  loc_AB5A72: FLdRfVar var_D8
  loc_AB5A75: FLdRfVar var_C8
  loc_AB5A78: LitVarStr var_C4, "CucuPers"
  loc_AB5A7D: PopAdLdVar
  loc_AB5A7E: FLdRfVar var_B4
  loc_AB5A81: FMemLdPr
  loc_AB5A86:  = Me.Fields
  loc_AB5A8B: FLdPr var_B4
  loc_AB5A8E: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5A93: FLdPr var_C8
  loc_AB5A96:  = Me.Value
  loc_AB5A9B: FLdRfVar var_D8
  loc_AB5A9E: CStrVarTmp
  loc_AB5A9F: FStStrNoPop var_94
  loc_AB5AA2: ILdPr
  loc_AB5AA5: Call tblretenciones.CucuPersPut(from_stack_1v)
  loc_AB5AAA: FFree1Str var_94
  loc_AB5AAD: FFreeAd var_B4 = ""
  loc_AB5AB4: FFree1Var var_D8 = ""
  loc_AB5AB7: FLdRfVar var_D8
  loc_AB5ABA: FLdRfVar var_C8
  loc_AB5ABD: LitVarStr var_C4, "UlceRete"
  loc_AB5AC2: PopAdLdVar
  loc_AB5AC3: FLdRfVar var_B4
  loc_AB5AC6: FMemLdPr
  loc_AB5ACB:  = Me.Fields
  loc_AB5AD0: FLdPr var_B4
  loc_AB5AD3: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5AD8: FLdPr var_C8
  loc_AB5ADB:  = Me.Value
  loc_AB5AE0: FLdRfVar var_D8
  loc_AB5AE3: CStrVarTmp
  loc_AB5AE4: FStStrNoPop var_94
  loc_AB5AE7: ILdPr
  loc_AB5AEA: Call tblretenciones.UlceRetePut(from_stack_1v)
  loc_AB5AEF: FFree1Str var_94
  loc_AB5AF2: FFreeAd var_B4 = ""
  loc_AB5AF9: FFree1Var var_D8 = ""
  loc_AB5AFC: FLdRfVar var_D8
  loc_AB5AFF: FLdRfVar var_C8
  loc_AB5B02: LitVarStr var_C4, "AltaUsua"
  loc_AB5B07: PopAdLdVar
  loc_AB5B08: FLdRfVar var_B4
  loc_AB5B0B: FMemLdPr
  loc_AB5B10:  = Me.Fields
  loc_AB5B15: FLdPr var_B4
  loc_AB5B18: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5B1D: FLdPr var_C8
  loc_AB5B20:  = Me.Value
  loc_AB5B25: FLdRfVar var_D8
  loc_AB5B28: CStrVarTmp
  loc_AB5B29: FStStrNoPop var_94
  loc_AB5B2C: ILdPr
  loc_AB5B2F: Call tblretenciones.AltaUsuaPut(from_stack_1v)
  loc_AB5B34: FFree1Str var_94
  loc_AB5B37: FFreeAd var_B4 = ""
  loc_AB5B3E: FFree1Var var_D8 = ""
  loc_AB5B41: FLdRfVar var_D8
  loc_AB5B44: FLdRfVar var_C8
  loc_AB5B47: LitVarStr var_C4, "AltaFeho"
  loc_AB5B4C: PopAdLdVar
  loc_AB5B4D: FLdRfVar var_B4
  loc_AB5B50: FMemLdPr
  loc_AB5B55:  = Me.Fields
  loc_AB5B5A: FLdPr var_B4
  loc_AB5B5D: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5B62: FLdPr var_C8
  loc_AB5B65:  = Me.Value
  loc_AB5B6A: FLdRfVar var_D8
  loc_AB5B6D: CStrVarTmp
  loc_AB5B6E: FStStrNoPop var_94
  loc_AB5B71: ILdPr
  loc_AB5B74: Call tblretenciones.AltaFehoPut(from_stack_1v)
  loc_AB5B79: FFree1Str var_94
  loc_AB5B7C: FFreeAd var_B4 = ""
  loc_AB5B83: FFree1Var var_D8 = ""
  loc_AB5B86: FLdRfVar var_D8
  loc_AB5B89: FLdRfVar var_C8
  loc_AB5B8C: LitVarStr var_C4, "ModiUsua"
  loc_AB5B91: PopAdLdVar
  loc_AB5B92: FLdRfVar var_B4
  loc_AB5B95: FMemLdPr
  loc_AB5B9A:  = Me.Fields
  loc_AB5B9F: FLdPr var_B4
  loc_AB5BA2: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5BA7: FLdPr var_C8
  loc_AB5BAA:  = Me.Value
  loc_AB5BAF: FLdRfVar var_D8
  loc_AB5BB2: CStrVarTmp
  loc_AB5BB3: FStStrNoPop var_94
  loc_AB5BB6: ILdPr
  loc_AB5BB9: Call tblretenciones.ModiUsuaPut(from_stack_1v)
  loc_AB5BBE: FFree1Str var_94
  loc_AB5BC1: FFreeAd var_B4 = ""
  loc_AB5BC8: FFree1Var var_D8 = ""
  loc_AB5BCB: FLdRfVar var_D8
  loc_AB5BCE: FLdRfVar var_C8
  loc_AB5BD1: LitVarStr var_C4, "ModiFeho"
  loc_AB5BD6: PopAdLdVar
  loc_AB5BD7: FLdRfVar var_B4
  loc_AB5BDA: FMemLdPr
  loc_AB5BDF:  = Me.Fields
  loc_AB5BE4: FLdPr var_B4
  loc_AB5BE7: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5BEC: FLdPr var_C8
  loc_AB5BEF:  = Me.Value
  loc_AB5BF4: FLdRfVar var_110
  loc_AB5BF7: LitVarStr var_10C, "ModiFeho"
  loc_AB5BFC: PopAdLdVar
  loc_AB5BFD: FLdRfVar var_FC
  loc_AB5C00: FMemLdPr
  loc_AB5C05:  = Me.Fields
  loc_AB5C0A: FLdPr var_FC
  loc_AB5C0D: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5C12: LitVarStr var_140, vbNullString
  loc_AB5C17: FStVarCopyObj var_150
  loc_AB5C1A: FLdRfVar var_150
  loc_AB5C1D: FLdZeroAd var_110
  loc_AB5C20: CVarAd
  loc_AB5C24: FLdRfVar var_D8
  loc_AB5C27: LitVarStr var_E8, vbNullString
  loc_AB5C2C: HardType
  loc_AB5C2D: NeVar var_F8
  loc_AB5C31: FStVar var_120
  loc_AB5C35: FLdRfVar var_120
  loc_AB5C38: FLdRfVar var_160
  loc_AB5C3B: ImpAdCallFPR4  = IIf(, , )
  loc_AB5C40: FLdRfVar var_160
  loc_AB5C43: CStrVarVal var_94
  loc_AB5C47: ILdPr
  loc_AB5C4A: Call tblretenciones.ModiFehoPut(from_stack_1v)
  loc_AB5C4F: FFree1Str var_94
  loc_AB5C52: FFreeAd var_B4 = "": var_C8 = ""
  loc_AB5C5B: FFreeVar var_D8 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_AB5C68: FLdRfVar var_D8
  loc_AB5C6B: FLdRfVar var_C8
  loc_AB5C6E: LitVarStr var_C4, "BajaUsua"
  loc_AB5C73: PopAdLdVar
  loc_AB5C74: FLdRfVar var_B4
  loc_AB5C77: FMemLdPr
  loc_AB5C7C:  = Me.Fields
  loc_AB5C81: FLdPr var_B4
  loc_AB5C84: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5C89: FLdPr var_C8
  loc_AB5C8C:  = Me.Value
  loc_AB5C91: FLdRfVar var_D8
  loc_AB5C94: CStrVarTmp
  loc_AB5C95: FStStrNoPop var_94
  loc_AB5C98: ILdPr
  loc_AB5C9B: Call tblretenciones.BajaUsuaPut(from_stack_1v)
  loc_AB5CA0: FFree1Str var_94
  loc_AB5CA3: FFreeAd var_B4 = ""
  loc_AB5CAA: FFree1Var var_D8 = ""
  loc_AB5CAD: FLdRfVar var_D8
  loc_AB5CB0: FLdRfVar var_C8
  loc_AB5CB3: LitVarStr var_C4, "BajaFeho"
  loc_AB5CB8: PopAdLdVar
  loc_AB5CB9: FLdRfVar var_B4
  loc_AB5CBC: FMemLdPr
  loc_AB5CC1:  = Me.Fields
  loc_AB5CC6: FLdPr var_B4
  loc_AB5CC9: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5CCE: FLdPr var_C8
  loc_AB5CD1:  = Me.Value
  loc_AB5CD6: FLdRfVar var_110
  loc_AB5CD9: LitVarStr var_10C, "BajaFeho"
  loc_AB5CDE: PopAdLdVar
  loc_AB5CDF: FLdRfVar var_FC
  loc_AB5CE2: FMemLdPr
  loc_AB5CE7:  = Me.Fields
  loc_AB5CEC: FLdPr var_FC
  loc_AB5CEF: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5CF4: LitVarStr var_140, vbNullString
  loc_AB5CF9: FStVarCopyObj var_150
  loc_AB5CFC: FLdRfVar var_150
  loc_AB5CFF: FLdZeroAd var_110
  loc_AB5D02: CVarAd
  loc_AB5D06: FLdRfVar var_D8
  loc_AB5D09: LitVarStr var_E8, vbNullString
  loc_AB5D0E: HardType
  loc_AB5D0F: NeVar var_F8
  loc_AB5D13: FStVar var_120
  loc_AB5D17: FLdRfVar var_120
  loc_AB5D1A: FLdRfVar var_160
  loc_AB5D1D: ImpAdCallFPR4  = IIf(, , )
  loc_AB5D22: FLdRfVar var_160
  loc_AB5D25: CStrVarVal var_94
  loc_AB5D29: ILdPr
  loc_AB5D2C: Call tblretenciones.BajaFehoPut(from_stack_1v)
  loc_AB5D31: FFree1Str var_94
  loc_AB5D34: FFreeAd var_B4 = "": var_C8 = ""
  loc_AB5D3D: FFreeVar var_D8 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_AB5D4A: FLdRfVar var_D8
  loc_AB5D4D: FLdRfVar var_C8
  loc_AB5D50: LitVarStr var_C4, "BajaMoti"
  loc_AB5D55: PopAdLdVar
  loc_AB5D56: FLdRfVar var_B4
  loc_AB5D59: FMemLdPr
  loc_AB5D5E:  = Me.Fields
  loc_AB5D63: FLdPr var_B4
  loc_AB5D66: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5D6B: FLdPr var_C8
  loc_AB5D6E:  = Me.Value
  loc_AB5D73: FLdRfVar var_D8
  loc_AB5D76: CStrVarTmp
  loc_AB5D77: FStStrNoPop var_94
  loc_AB5D7A: ILdPr
  loc_AB5D7D: Call tblretenciones.BajaMotiPut(from_stack_1v)
  loc_AB5D82: FFree1Str var_94
  loc_AB5D85: FFreeAd var_B4 = ""
  loc_AB5D8C: FFree1Var var_D8 = ""
  loc_AB5D8F: LitI2_Byte &HFF
  loc_AB5D91: FStI2 var_86
  loc_AB5D94: Branch loc_AB5E36
  loc_AB5D97: LitStr "La Retención NO EXISTE. Verifique..."
  loc_AB5D9A: ILdPr
  loc_AB5D9D: Call tblretenciones.MsgErrorPut(from_stack_1v)
  loc_AB5DA2: LitStr vbNullString
  loc_AB5DA5: ILdPr
  loc_AB5DA8: Call tblretenciones.PeriInfoPut(from_stack_1v)
  loc_AB5DAD: LitStr vbNullString
  loc_AB5DB0: ILdPr
  loc_AB5DB3: Call tblretenciones.CodiRetePut(from_stack_1v)
  loc_AB5DB8: LitStr vbNullString
  loc_AB5DBB: ILdPr
  loc_AB5DBE: Call tblretenciones.DetaRetePut(from_stack_1v)
  loc_AB5DC3: LitStr vbNullString
  loc_AB5DC6: ILdPr
  loc_AB5DC9: Call tblretenciones.CodiCucoPut(from_stack_1v)
  loc_AB5DCE: LitStr vbNullString
  loc_AB5DD1: ILdPr
  loc_AB5DD4: Call tblretenciones.CucuPersPut(from_stack_1v)
  loc_AB5DD9: LitStr vbNullString
  loc_AB5DDC: ILdPr
  loc_AB5DDF: Call tblretenciones.UlceRetePut(from_stack_1v)
  loc_AB5DE4: LitStr vbNullString
  loc_AB5DE7: ILdPr
  loc_AB5DEA: Call tblretenciones.AltaUsuaPut(from_stack_1v)
  loc_AB5DEF: LitStr vbNullString
  loc_AB5DF2: ILdPr
  loc_AB5DF5: Call tblretenciones.AltaFehoPut(from_stack_1v)
  loc_AB5DFA: LitStr vbNullString
  loc_AB5DFD: ILdPr
  loc_AB5E00: Call tblretenciones.ModiUsuaPut(from_stack_1v)
  loc_AB5E05: LitStr vbNullString
  loc_AB5E08: ILdPr
  loc_AB5E0B: Call tblretenciones.ModiFehoPut(from_stack_1v)
  loc_AB5E10: LitStr vbNullString
  loc_AB5E13: ILdPr
  loc_AB5E16: Call tblretenciones.BajaUsuaPut(from_stack_1v)
  loc_AB5E1B: LitStr vbNullString
  loc_AB5E1E: ILdPr
  loc_AB5E21: Call tblretenciones.BajaFehoPut(from_stack_1v)
  loc_AB5E26: LitStr vbNullString
  loc_AB5E29: ILdPr
  loc_AB5E2C: Call tblretenciones.BajaMotiPut(from_stack_1v)
  loc_AB5E31: LitI2_Byte 0
  loc_AB5E33: FStI2 var_86
  loc_AB5E36: ExitProcI2
End Function

Private Function Proc_259_28_A0F5CC(arg_C) 'A0F5CC
  'Data Table: 4569C4
  loc_A0F468: ILdRf arg_C
  loc_A0F46B: FStStrCopy var_8C
  loc_A0F46E: LitStr "SELECT CodiTias, DetaTias, IF(FijoTias=0,'No','Si') FijoTias"
  loc_A0F471: LitStr " FROM tipoasiento"
  loc_A0F474: ConcatStr
  loc_A0F475: FStStrNoPop var_90
  loc_A0F478: LitStr " WHERE CodiTias = '"
  loc_A0F47B: ConcatStr
  loc_A0F47C: FStStrNoPop var_94
  loc_A0F47F: ILdRf var_8C
  loc_A0F482: ConcatStr
  loc_A0F483: FStStrNoPop var_98
  loc_A0F486: LitStr "'"
  loc_A0F489: ConcatStr
  loc_A0F48A: FStStrNoPop var_9C
  loc_A0F48D: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_A0F492: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_A0F49D: FLdRfVar var_A0
  loc_A0F4A0: FMemLdPr
  loc_A0F4A5:  = Me.RecordCount
  loc_A0F4AA: ILdRf var_A0
  loc_A0F4AD: LitI4 0
  loc_A0F4B2: GtI4
  loc_A0F4B3: BranchF loc_A0F598
  loc_A0F4B6: LitStr vbNullString
  loc_A0F4B9: ILdPr
  loc_A0F4BC: Call tbltipoasiento.MsgErrorPut(from_stack_1v)
  loc_A0F4C1: FLdRfVar var_C8
  loc_A0F4C4: FLdRfVar var_B8
  loc_A0F4C7: LitVarStr var_B4, "CodiTias"
  loc_A0F4CC: PopAdLdVar
  loc_A0F4CD: FLdRfVar var_A4
  loc_A0F4D0: FMemLdPr
  loc_A0F4D5:  = Me.Fields
  loc_A0F4DA: FLdPr var_A4
  loc_A0F4DD: from_stack_2 = Me.Item(from_stack_1)
  loc_A0F4E2: FLdPr var_B8
  loc_A0F4E5:  = Me.Value
  loc_A0F4EA: FLdRfVar var_C8
  loc_A0F4ED: CStrVarTmp
  loc_A0F4EE: FStStrNoPop var_90
  loc_A0F4F1: ILdPr
  loc_A0F4F4: Call tbltipoasiento.CodiTiasPut(from_stack_1v)
  loc_A0F4F9: FFree1Str var_90
  loc_A0F4FC: FFreeAd var_A4 = ""
  loc_A0F503: FFree1Var var_C8 = ""
  loc_A0F506: FLdRfVar var_C8
  loc_A0F509: FLdRfVar var_B8
  loc_A0F50C: LitVarStr var_B4, "DetaTias"
  loc_A0F511: PopAdLdVar
  loc_A0F512: FLdRfVar var_A4
  loc_A0F515: FMemLdPr
  loc_A0F51A:  = Me.Fields
  loc_A0F51F: FLdPr var_A4
  loc_A0F522: from_stack_2 = Me.Item(from_stack_1)
  loc_A0F527: FLdPr var_B8
  loc_A0F52A:  = Me.Value
  loc_A0F52F: FLdRfVar var_C8
  loc_A0F532: CStrVarTmp
  loc_A0F533: FStStrNoPop var_90
  loc_A0F536: ILdPr
  loc_A0F539: Call tbltipoasiento.DetaTiasPut(from_stack_1v)
  loc_A0F53E: FFree1Str var_90
  loc_A0F541: FFreeAd var_A4 = ""
  loc_A0F548: FFree1Var var_C8 = ""
  loc_A0F54B: FLdRfVar var_C8
  loc_A0F54E: FLdRfVar var_B8
  loc_A0F551: LitVarStr var_B4, "FijoTias"
  loc_A0F556: PopAdLdVar
  loc_A0F557: FLdRfVar var_A4
  loc_A0F55A: FMemLdPr
  loc_A0F55F:  = Me.Fields
  loc_A0F564: FLdPr var_A4
  loc_A0F567: from_stack_2 = Me.Item(from_stack_1)
  loc_A0F56C: FLdPr var_B8
  loc_A0F56F:  = Me.Value
  loc_A0F574: FLdRfVar var_C8
  loc_A0F577: CStrVarTmp
  loc_A0F578: FStStrNoPop var_90
  loc_A0F57B: ILdPr
  loc_A0F57E: Call tbltipoasiento.FijoTiasPut(from_stack_1v)
  loc_A0F583: FFree1Str var_90
  loc_A0F586: FFreeAd var_A4 = ""
  loc_A0F58D: FFree1Var var_C8 = ""
  loc_A0F590: LitI2_Byte &HFF
  loc_A0F592: FStI2 var_86
  loc_A0F595: Branch loc_A0F5C9
  loc_A0F598: LitStr "El Tipo de Asiento NO EXISTE. Verifique..."
  loc_A0F59B: ILdPr
  loc_A0F59E: Call tbltipoasiento.MsgErrorPut(from_stack_1v)
  loc_A0F5A3: LitStr vbNullString
  loc_A0F5A6: ILdPr
  loc_A0F5A9: Call tbltipoasiento.CodiTiasPut(from_stack_1v)
  loc_A0F5AE: LitStr vbNullString
  loc_A0F5B1: ILdPr
  loc_A0F5B4: Call tbltipoasiento.DetaTiasPut(from_stack_1v)
  loc_A0F5B9: LitStr vbNullString
  loc_A0F5BC: ILdPr
  loc_A0F5BF: Call tbltipoasiento.FijoTiasPut(from_stack_1v)
  loc_A0F5C4: LitI2_Byte 0
  loc_A0F5C6: FStI2 var_86
  loc_A0F5C9: ExitProcI2
End Function

Private Function Proc_259_29_A82944(arg_C) 'A82944
  'Data Table: 4569C4
  loc_A82550: ILdRf arg_C
  loc_A82553: FStStrCopy var_8C
  loc_A82556: LitStr "SELECT r.*"
  loc_A82559: LitStr " FROM rubro r"
  loc_A8255C: ConcatStr
  loc_A8255D: FStStrNoPop var_90
  loc_A82560: LitStr " WHERE IdRubro = '"
  loc_A82563: ConcatStr
  loc_A82564: FStStrNoPop var_94
  loc_A82567: ILdRf var_8C
  loc_A8256A: ConcatStr
  loc_A8256B: FStStrNoPop var_98
  loc_A8256E: LitStr "';"
  loc_A82571: ConcatStr
  loc_A82572: FStStrNoPop var_9C
  loc_A82575: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_A8257A: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_A82585: FLdRfVar var_A0
  loc_A82588: FMemLdPr
  loc_A8258D:  = Me.RecordCount
  loc_A82592: ILdRf var_A0
  loc_A82595: LitI4 0
  loc_A8259A: GtI4
  loc_A8259B: BranchF loc_A828CE
  loc_A8259E: LitStr vbNullString
  loc_A825A1: ILdPr
  loc_A825A4: Call tblrubro.MsgErrorPut(from_stack_1v)
  loc_A825A9: FLdRfVar var_C8
  loc_A825AC: FLdRfVar var_B8
  loc_A825AF: LitVarStr var_B4, "IdRubro"
  loc_A825B4: PopAdLdVar
  loc_A825B5: FLdRfVar var_A4
  loc_A825B8: FMemLdPr
  loc_A825BD:  = Me.Fields
  loc_A825C2: FLdPr var_A4
  loc_A825C5: from_stack_2 = Me.Item(from_stack_1)
  loc_A825CA: FLdPr var_B8
  loc_A825CD:  = Me.Value
  loc_A825D2: FLdRfVar var_C8
  loc_A825D5: CStrVarTmp
  loc_A825D6: FStStrNoPop var_90
  loc_A825D9: ILdPr
  loc_A825DC: Call tblrubro.IdRubroPut(from_stack_1v)
  loc_A825E1: FFree1Str var_90
  loc_A825E4: FFreeAd var_A4 = ""
  loc_A825EB: FFree1Var var_C8 = ""
  loc_A825EE: FLdRfVar var_C8
  loc_A825F1: FLdRfVar var_B8
  loc_A825F4: LitVarStr var_B4, "DetaRubro"
  loc_A825F9: PopAdLdVar
  loc_A825FA: FLdRfVar var_A4
  loc_A825FD: FMemLdPr
  loc_A82602:  = Me.Fields
  loc_A82607: FLdPr var_A4
  loc_A8260A: from_stack_2 = Me.Item(from_stack_1)
  loc_A8260F: FLdPr var_B8
  loc_A82612:  = Me.Value
  loc_A82617: FLdRfVar var_C8
  loc_A8261A: CStrVarTmp
  loc_A8261B: FStStrNoPop var_90
  loc_A8261E: ILdPr
  loc_A82621: Call tblrubro.DetaRubroPut(from_stack_1v)
  loc_A82626: FFree1Str var_90
  loc_A82629: FFreeAd var_A4 = ""
  loc_A82630: FFree1Var var_C8 = ""
  loc_A82633: FLdRfVar var_C8
  loc_A82636: FLdRfVar var_B8
  loc_A82639: LitVarStr var_B4, "AltaUsua"
  loc_A8263E: PopAdLdVar
  loc_A8263F: FLdRfVar var_A4
  loc_A82642: FMemLdPr
  loc_A82647:  = Me.Fields
  loc_A8264C: FLdPr var_A4
  loc_A8264F: from_stack_2 = Me.Item(from_stack_1)
  loc_A82654: FLdPr var_B8
  loc_A82657:  = Me.Value
  loc_A8265C: FLdRfVar var_C8
  loc_A8265F: CStrVarTmp
  loc_A82660: FStStrNoPop var_90
  loc_A82663: ILdPr
  loc_A82666: Call tblrubro.AltaUsuaPut(from_stack_1v)
  loc_A8266B: FFree1Str var_90
  loc_A8266E: FFreeAd var_A4 = ""
  loc_A82675: FFree1Var var_C8 = ""
  loc_A82678: FLdRfVar var_C8
  loc_A8267B: FLdRfVar var_B8
  loc_A8267E: LitVarStr var_B4, "AltaFeho"
  loc_A82683: PopAdLdVar
  loc_A82684: FLdRfVar var_A4
  loc_A82687: FMemLdPr
  loc_A8268C:  = Me.Fields
  loc_A82691: FLdPr var_A4
  loc_A82694: from_stack_2 = Me.Item(from_stack_1)
  loc_A82699: FLdPr var_B8
  loc_A8269C:  = Me.Value
  loc_A826A1: FLdRfVar var_C8
  loc_A826A4: CStrVarTmp
  loc_A826A5: FStStrNoPop var_90
  loc_A826A8: ILdPr
  loc_A826AB: Call tblrubro.AltaFehoPut(from_stack_1v)
  loc_A826B0: FFree1Str var_90
  loc_A826B3: FFreeAd var_A4 = ""
  loc_A826BA: FFree1Var var_C8 = ""
  loc_A826BD: FLdRfVar var_C8
  loc_A826C0: FLdRfVar var_B8
  loc_A826C3: LitVarStr var_B4, "ModiUsua"
  loc_A826C8: PopAdLdVar
  loc_A826C9: FLdRfVar var_A4
  loc_A826CC: FMemLdPr
  loc_A826D1:  = Me.Fields
  loc_A826D6: FLdPr var_A4
  loc_A826D9: from_stack_2 = Me.Item(from_stack_1)
  loc_A826DE: FLdPr var_B8
  loc_A826E1:  = Me.Value
  loc_A826E6: FLdRfVar var_C8
  loc_A826E9: CStrVarTmp
  loc_A826EA: FStStrNoPop var_90
  loc_A826ED: ILdPr
  loc_A826F0: Call tblrubro.ModiUsuaPut(from_stack_1v)
  loc_A826F5: FFree1Str var_90
  loc_A826F8: FFreeAd var_A4 = ""
  loc_A826FF: FFree1Var var_C8 = ""
  loc_A82702: FLdRfVar var_C8
  loc_A82705: FLdRfVar var_B8
  loc_A82708: LitVarStr var_B4, "ModiFeho"
  loc_A8270D: PopAdLdVar
  loc_A8270E: FLdRfVar var_A4
  loc_A82711: FMemLdPr
  loc_A82716:  = Me.Fields
  loc_A8271B: FLdPr var_A4
  loc_A8271E: from_stack_2 = Me.Item(from_stack_1)
  loc_A82723: FLdPr var_B8
  loc_A82726:  = Me.Value
  loc_A8272B: FLdRfVar var_100
  loc_A8272E: LitVarStr var_FC, "ModiFeho"
  loc_A82733: PopAdLdVar
  loc_A82734: FLdRfVar var_EC
  loc_A82737: FMemLdPr
  loc_A8273C:  = Me.Fields
  loc_A82741: FLdPr var_EC
  loc_A82744: from_stack_2 = Me.Item(from_stack_1)
  loc_A82749: LitVarStr var_130, vbNullString
  loc_A8274E: FStVarCopyObj var_140
  loc_A82751: FLdRfVar var_140
  loc_A82754: FLdZeroAd var_100
  loc_A82757: CVarAd
  loc_A8275B: FLdRfVar var_C8
  loc_A8275E: LitVarStr var_D8, vbNullString
  loc_A82763: HardType
  loc_A82764: NeVar var_E8
  loc_A82768: FStVar var_110
  loc_A8276C: FLdRfVar var_110
  loc_A8276F: FLdRfVar var_150
  loc_A82772: ImpAdCallFPR4  = IIf(, , )
  loc_A82777: FLdRfVar var_150
  loc_A8277A: CStrVarVal var_90
  loc_A8277E: ILdPr
  loc_A82781: Call tblrubro.ModiFehoPut(from_stack_1v)
  loc_A82786: FFree1Str var_90
  loc_A82789: FFreeAd var_A4 = "": var_B8 = ""
  loc_A82792: FFreeVar var_C8 = "": var_110 = "": var_120 = "": var_140 = ""
  loc_A8279F: FLdRfVar var_C8
  loc_A827A2: FLdRfVar var_B8
  loc_A827A5: LitVarStr var_B4, "BajaUsua"
  loc_A827AA: PopAdLdVar
  loc_A827AB: FLdRfVar var_A4
  loc_A827AE: FMemLdPr
  loc_A827B3:  = Me.Fields
  loc_A827B8: FLdPr var_A4
  loc_A827BB: from_stack_2 = Me.Item(from_stack_1)
  loc_A827C0: FLdPr var_B8
  loc_A827C3:  = Me.Value
  loc_A827C8: FLdRfVar var_C8
  loc_A827CB: CStrVarTmp
  loc_A827CC: FStStrNoPop var_90
  loc_A827CF: ILdPr
  loc_A827D2: Call tblrubro.BajaUsuaPut(from_stack_1v)
  loc_A827D7: FFree1Str var_90
  loc_A827DA: FFreeAd var_A4 = ""
  loc_A827E1: FFree1Var var_C8 = ""
  loc_A827E4: FLdRfVar var_C8
  loc_A827E7: FLdRfVar var_B8
  loc_A827EA: LitVarStr var_B4, "BajaFeho"
  loc_A827EF: PopAdLdVar
  loc_A827F0: FLdRfVar var_A4
  loc_A827F3: FMemLdPr
  loc_A827F8:  = Me.Fields
  loc_A827FD: FLdPr var_A4
  loc_A82800: from_stack_2 = Me.Item(from_stack_1)
  loc_A82805: FLdPr var_B8
  loc_A82808:  = Me.Value
  loc_A8280D: FLdRfVar var_100
  loc_A82810: LitVarStr var_FC, "BajaFeho"
  loc_A82815: PopAdLdVar
  loc_A82816: FLdRfVar var_EC
  loc_A82819: FMemLdPr
  loc_A8281E:  = Me.Fields
  loc_A82823: FLdPr var_EC
  loc_A82826: from_stack_2 = Me.Item(from_stack_1)
  loc_A8282B: LitVarStr var_130, vbNullString
  loc_A82830: FStVarCopyObj var_140
  loc_A82833: FLdRfVar var_140
  loc_A82836: FLdZeroAd var_100
  loc_A82839: CVarAd
  loc_A8283D: FLdRfVar var_C8
  loc_A82840: LitVarStr var_D8, vbNullString
  loc_A82845: HardType
  loc_A82846: NeVar var_E8
  loc_A8284A: FStVar var_110
  loc_A8284E: FLdRfVar var_110
  loc_A82851: FLdRfVar var_150
  loc_A82854: ImpAdCallFPR4  = IIf(, , )
  loc_A82859: FLdRfVar var_150
  loc_A8285C: CStrVarVal var_90
  loc_A82860: ILdPr
  loc_A82863: Call tblrubro.BajaFehoPut(from_stack_1v)
  loc_A82868: FFree1Str var_90
  loc_A8286B: FFreeAd var_A4 = "": var_B8 = ""
  loc_A82874: FFreeVar var_C8 = "": var_110 = "": var_120 = "": var_140 = ""
  loc_A82881: FLdRfVar var_C8
  loc_A82884: FLdRfVar var_B8
  loc_A82887: LitVarStr var_B4, "BajaMoti"
  loc_A8288C: PopAdLdVar
  loc_A8288D: FLdRfVar var_A4
  loc_A82890: FMemLdPr
  loc_A82895:  = Me.Fields
  loc_A8289A: FLdPr var_A4
  loc_A8289D: from_stack_2 = Me.Item(from_stack_1)
  loc_A828A2: FLdPr var_B8
  loc_A828A5:  = Me.Value
  loc_A828AA: FLdRfVar var_C8
  loc_A828AD: CStrVarTmp
  loc_A828AE: FStStrNoPop var_90
  loc_A828B1: ILdPr
  loc_A828B4: Call tblrubro.BajaMotiPut(from_stack_1v)
  loc_A828B9: FFree1Str var_90
  loc_A828BC: FFreeAd var_A4 = ""
  loc_A828C3: FFree1Var var_C8 = ""
  loc_A828C6: LitI2_Byte &HFF
  loc_A828C8: FStI2 var_86
  loc_A828CB: Branch loc_A82941
  loc_A828CE: LitStr "El Rubro NO EXISTE. Verifique..."
  loc_A828D1: ILdPr
  loc_A828D4: Call tblrubro.MsgErrorPut(from_stack_1v)
  loc_A828D9: LitStr vbNullString
  loc_A828DC: ILdPr
  loc_A828DF: Call tblrubro.IdRubroPut(from_stack_1v)
  loc_A828E4: LitStr vbNullString
  loc_A828E7: ILdPr
  loc_A828EA: Call tblrubro.DetaRubroPut(from_stack_1v)
  loc_A828EF: LitStr vbNullString
  loc_A828F2: ILdPr
  loc_A828F5: Call tblrubro.AltaUsuaPut(from_stack_1v)
  loc_A828FA: LitStr vbNullString
  loc_A828FD: ILdPr
  loc_A82900: Call tblrubro.AltaFehoPut(from_stack_1v)
  loc_A82905: LitStr vbNullString
  loc_A82908: ILdPr
  loc_A8290B: Call tblrubro.ModiUsuaPut(from_stack_1v)
  loc_A82910: LitStr vbNullString
  loc_A82913: ILdPr
  loc_A82916: Call tblrubro.ModiFehoPut(from_stack_1v)
  loc_A8291B: LitStr vbNullString
  loc_A8291E: ILdPr
  loc_A82921: Call tblrubro.BajaUsuaPut(from_stack_1v)
  loc_A82926: LitStr vbNullString
  loc_A82929: ILdPr
  loc_A8292C: Call tblrubro.BajaFehoPut(from_stack_1v)
  loc_A82931: LitStr vbNullString
  loc_A82934: ILdPr
  loc_A82937: Call tblrubro.BajaMotiPut(from_stack_1v)
  loc_A8293C: LitI2_Byte 0
  loc_A8293E: FStI2 var_86
  loc_A82941: ExitProcI2
End Function

Private Function Proc_259_30_AE3D34(arg_C, arg_10) 'AE3D34
  'Data Table: 4569C4
  loc_AE3688: ILdRf arg_C
  loc_AE368B: FStStrCopy var_8C
  loc_AE368E: ILdRf arg_10
  loc_AE3691: FStStrCopy var_90
  loc_AE3694: LitStr "SELECT l.*, IFNULL(op.NumeOrpa,0) NumeOrpaLeftJoin"
  loc_AE3697: LitStr " FROM liquidacion l"
  loc_AE369A: ConcatStr
  loc_AE369B: FStStrNoPop var_94
  loc_AE369E: LitStr " LEFT JOIN ordenpago op ON op.PeriInfo = l.PeriInfo AND op.ExpeImpu = l.ExpeImpu AND op.NumeLiqu = l.NumeLiqu AND op.FeanOrpa IS NULL"
  loc_AE36A1: ConcatStr
  loc_AE36A2: FStStrNoPop var_98
  loc_AE36A5: LitStr " WHERE l.ExpeImpu = '"
  loc_AE36A8: ConcatStr
  loc_AE36A9: FStStrNoPop var_9C
  loc_AE36AC: ILdRf var_8C
  loc_AE36AF: ConcatStr
  loc_AE36B0: FStStrNoPop var_A0
  loc_AE36B3: LitStr "' AND l.NumeLiqu = '"
  loc_AE36B6: ConcatStr
  loc_AE36B7: FStStrNoPop var_A4
  loc_AE36BA: ILdRf var_90
  loc_AE36BD: ConcatStr
  loc_AE36BE: FStStrNoPop var_A8
  loc_AE36C1: LitStr "'"
  loc_AE36C4: ConcatStr
  loc_AE36C5: FStStrNoPop var_AC
  loc_AE36C8: LitStr " LIMIT 1;"
  loc_AE36CB: ConcatStr
  loc_AE36CC: FStStrNoPop var_B0
  loc_AE36CF: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_AE36D4: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AE36E7: FLdRfVar var_B4
  loc_AE36EA: FMemLdPr
  loc_AE36EF:  = Me.RecordCount
  loc_AE36F4: ILdRf var_B4
  loc_AE36F7: LitI4 0
  loc_AE36FC: GtI4
  loc_AE36FD: BranchF loc_AE3C7E
  loc_AE3700: LitStr vbNullString
  loc_AE3703: ILdPr
  loc_AE3706: Call tblliquidacion.MsgErrorPut(from_stack_1v)
  loc_AE370B: FLdRfVar var_DC
  loc_AE370E: FLdRfVar var_CC
  loc_AE3711: LitVarStr var_C8, "ExpeImpu"
  loc_AE3716: PopAdLdVar
  loc_AE3717: FLdRfVar var_B8
  loc_AE371A: FMemLdPr
  loc_AE371F:  = Me.Fields
  loc_AE3724: FLdPr var_B8
  loc_AE3727: from_stack_2 = Me.Item(from_stack_1)
  loc_AE372C: FLdPr var_CC
  loc_AE372F:  = Me.Value
  loc_AE3734: FLdRfVar var_DC
  loc_AE3737: CStrVarTmp
  loc_AE3738: FStStrNoPop var_94
  loc_AE373B: ILdPr
  loc_AE373E: Call tblliquidacion.ExpeImpuPut(from_stack_1v)
  loc_AE3743: FFree1Str var_94
  loc_AE3746: FFreeAd var_B8 = ""
  loc_AE374D: FFree1Var var_DC = ""
  loc_AE3750: FLdRfVar var_DC
  loc_AE3753: FLdRfVar var_CC
  loc_AE3756: LitVarStr var_C8, "NumeLiqu"
  loc_AE375B: PopAdLdVar
  loc_AE375C: FLdRfVar var_B8
  loc_AE375F: FMemLdPr
  loc_AE3764:  = Me.Fields
  loc_AE3769: FLdPr var_B8
  loc_AE376C: from_stack_2 = Me.Item(from_stack_1)
  loc_AE3771: FLdPr var_CC
  loc_AE3774:  = Me.Value
  loc_AE3779: FLdRfVar var_DC
  loc_AE377C: CStrVarTmp
  loc_AE377D: FStStrNoPop var_94
  loc_AE3780: ILdPr
  loc_AE3783: Call tblliquidacion.NumeLiquPut(from_stack_1v)
  loc_AE3788: FFree1Str var_94
  loc_AE378B: FFreeAd var_B8 = ""
  loc_AE3792: FFree1Var var_DC = ""
  loc_AE3795: FLdRfVar var_DC
  loc_AE3798: FLdRfVar var_CC
  loc_AE379B: LitVarStr var_C8, "FechLiqu"
  loc_AE37A0: PopAdLdVar
  loc_AE37A1: FLdRfVar var_B8
  loc_AE37A4: FMemLdPr
  loc_AE37A9:  = Me.Fields
  loc_AE37AE: FLdPr var_B8
  loc_AE37B1: from_stack_2 = Me.Item(from_stack_1)
  loc_AE37B6: FLdPr var_CC
  loc_AE37B9:  = Me.Value
  loc_AE37BE: FLdRfVar var_DC
  loc_AE37C1: CStrVarTmp
  loc_AE37C2: FStStrNoPop var_94
  loc_AE37C5: ILdPr
  loc_AE37C8: Call tblliquidacion.FechLiquPut(from_stack_1v)
  loc_AE37CD: FFree1Str var_94
  loc_AE37D0: FFreeAd var_B8 = ""
  loc_AE37D7: FFree1Var var_DC = ""
  loc_AE37DA: FLdRfVar var_DC
  loc_AE37DD: FLdRfVar var_CC
  loc_AE37E0: LitVarStr var_C8, "DetaLiqu"
  loc_AE37E5: PopAdLdVar
  loc_AE37E6: FLdRfVar var_B8
  loc_AE37E9: FMemLdPr
  loc_AE37EE:  = Me.Fields
  loc_AE37F3: FLdPr var_B8
  loc_AE37F6: from_stack_2 = Me.Item(from_stack_1)
  loc_AE37FB: FLdPr var_CC
  loc_AE37FE:  = Me.Value
  loc_AE3803: FLdRfVar var_DC
  loc_AE3806: CStrVarTmp
  loc_AE3807: FStStrNoPop var_94
  loc_AE380A: ILdPr
  loc_AE380D: Call tblliquidacion.DetaLiquPut(from_stack_1v)
  loc_AE3812: FFree1Str var_94
  loc_AE3815: FFreeAd var_B8 = ""
  loc_AE381C: FFree1Var var_DC = ""
  loc_AE381F: FLdRfVar var_DC
  loc_AE3822: FLdRfVar var_CC
  loc_AE3825: LitVarStr var_C8, "FeanLiqu"
  loc_AE382A: PopAdLdVar
  loc_AE382B: FLdRfVar var_B8
  loc_AE382E: FMemLdPr
  loc_AE3833:  = Me.Fields
  loc_AE3838: FLdPr var_B8
  loc_AE383B: from_stack_2 = Me.Item(from_stack_1)
  loc_AE3840: FLdPr var_CC
  loc_AE3843:  = Me.Value
  loc_AE3848: FLdRfVar var_114
  loc_AE384B: LitVarStr var_110, "FeanLiqu"
  loc_AE3850: PopAdLdVar
  loc_AE3851: FLdRfVar var_100
  loc_AE3854: FMemLdPr
  loc_AE3859:  = Me.Fields
  loc_AE385E: FLdPr var_100
  loc_AE3861: from_stack_2 = Me.Item(from_stack_1)
  loc_AE3866: LitVarStr var_144, vbNullString
  loc_AE386B: FStVarCopyObj var_154
  loc_AE386E: FLdRfVar var_154
  loc_AE3871: FLdZeroAd var_114
  loc_AE3874: CVarAd
  loc_AE3878: FLdRfVar var_DC
  loc_AE387B: LitVarStr var_EC, vbNullString
  loc_AE3880: HardType
  loc_AE3881: NeVar var_FC
  loc_AE3885: FStVar var_124
  loc_AE3889: FLdRfVar var_124
  loc_AE388C: FLdRfVar var_164
  loc_AE388F: ImpAdCallFPR4  = IIf(, , )
  loc_AE3894: FLdRfVar var_164
  loc_AE3897: CStrVarVal var_94
  loc_AE389B: ILdPr
  loc_AE389E: Call tblliquidacion.FeanLiquPut(from_stack_1v)
  loc_AE38A3: FFree1Str var_94
  loc_AE38A6: FFreeAd var_B8 = "": var_CC = ""
  loc_AE38AF: FFreeVar var_DC = "": var_124 = "": var_134 = "": var_154 = ""
  loc_AE38BC: FLdRfVar var_DC
  loc_AE38BF: FLdRfVar var_CC
  loc_AE38C2: LitVarStr var_C8, "PeriInfo"
  loc_AE38C7: PopAdLdVar
  loc_AE38C8: FLdRfVar var_B8
  loc_AE38CB: FMemLdPr
  loc_AE38D0:  = Me.Fields
  loc_AE38D5: FLdPr var_B8
  loc_AE38D8: from_stack_2 = Me.Item(from_stack_1)
  loc_AE38DD: FLdPr var_CC
  loc_AE38E0:  = Me.Value
  loc_AE38E5: FLdRfVar var_DC
  loc_AE38E8: CStrVarTmp
  loc_AE38E9: FStStrNoPop var_94
  loc_AE38EC: ILdPr
  loc_AE38EF: Call tblliquidacion.PeriInfoPut(from_stack_1v)
  loc_AE38F4: FFree1Str var_94
  loc_AE38F7: FFreeAd var_B8 = ""
  loc_AE38FE: FFree1Var var_DC = ""
  loc_AE3901: FLdRfVar var_DC
  loc_AE3904: FLdRfVar var_CC
  loc_AE3907: LitVarStr var_C8, "NumeOrpaLeftJoin"
  loc_AE390C: PopAdLdVar
  loc_AE390D: FLdRfVar var_B8
  loc_AE3910: FMemLdPr
  loc_AE3915:  = Me.Fields
  loc_AE391A: FLdPr var_B8
  loc_AE391D: from_stack_2 = Me.Item(from_stack_1)
  loc_AE3922: FLdPr var_CC
  loc_AE3925:  = Me.Value
  loc_AE392A: FLdRfVar var_DC
  loc_AE392D: CStrVarTmp
  loc_AE392E: FStStrNoPop var_94
  loc_AE3931: ILdPr
  loc_AE3934: Call tblliquidacion.NumeOrpaPut(from_stack_1v)
  loc_AE3939: FFree1Str var_94
  loc_AE393C: FFreeAd var_B8 = ""
  loc_AE3943: FFree1Var var_DC = ""
  loc_AE3946: FLdRfVar var_DC
  loc_AE3949: FLdRfVar var_CC
  loc_AE394C: LitVarStr var_C8, "TipoLiqu"
  loc_AE3951: PopAdLdVar
  loc_AE3952: FLdRfVar var_B8
  loc_AE3955: FMemLdPr
  loc_AE395A:  = Me.Fields
  loc_AE395F: FLdPr var_B8
  loc_AE3962: from_stack_2 = Me.Item(from_stack_1)
  loc_AE3967: FLdPr var_CC
  loc_AE396A:  = Me.Value
  loc_AE396F: FLdRfVar var_DC
  loc_AE3972: CStrVarTmp
  loc_AE3973: FStStrNoPop var_94
  loc_AE3976: ILdPr
  loc_AE3979: Call tblliquidacion.TipoLiquPut(from_stack_1v)
  loc_AE397E: FFree1Str var_94
  loc_AE3981: FFreeAd var_B8 = ""
  loc_AE3988: FFree1Var var_DC = ""
  loc_AE398B: FLdRfVar var_DC
  loc_AE398E: FLdRfVar var_CC
  loc_AE3991: LitVarStr var_C8, "AltaUsua"
  loc_AE3996: PopAdLdVar
  loc_AE3997: FLdRfVar var_B8
  loc_AE399A: FMemLdPr
  loc_AE399F:  = Me.Fields
  loc_AE39A4: FLdPr var_B8
  loc_AE39A7: from_stack_2 = Me.Item(from_stack_1)
  loc_AE39AC: FLdPr var_CC
  loc_AE39AF:  = Me.Value
  loc_AE39B4: FLdRfVar var_DC
  loc_AE39B7: CStrVarTmp
  loc_AE39B8: FStStrNoPop var_94
  loc_AE39BB: ILdPr
  loc_AE39BE: Call tblliquidacion.AltaUsuaPut(from_stack_1v)
  loc_AE39C3: FFree1Str var_94
  loc_AE39C6: FFreeAd var_B8 = ""
  loc_AE39CD: FFree1Var var_DC = ""
  loc_AE39D0: FLdRfVar var_DC
  loc_AE39D3: FLdRfVar var_CC
  loc_AE39D6: LitVarStr var_C8, "AltaFeho"
  loc_AE39DB: PopAdLdVar
  loc_AE39DC: FLdRfVar var_B8
  loc_AE39DF: FMemLdPr
  loc_AE39E4:  = Me.Fields
  loc_AE39E9: FLdPr var_B8
  loc_AE39EC: from_stack_2 = Me.Item(from_stack_1)
  loc_AE39F1: FLdPr var_CC
  loc_AE39F4:  = Me.Value
  loc_AE39F9: FLdRfVar var_114
  loc_AE39FC: LitVarStr var_110, "AltaFeho"
  loc_AE3A01: PopAdLdVar
  loc_AE3A02: FLdRfVar var_100
  loc_AE3A05: FMemLdPr
  loc_AE3A0A:  = Me.Fields
  loc_AE3A0F: FLdPr var_100
  loc_AE3A12: from_stack_2 = Me.Item(from_stack_1)
  loc_AE3A17: LitVarStr var_144, vbNullString
  loc_AE3A1C: FStVarCopyObj var_154
  loc_AE3A1F: FLdRfVar var_154
  loc_AE3A22: FLdZeroAd var_114
  loc_AE3A25: CVarAd
  loc_AE3A29: FLdRfVar var_DC
  loc_AE3A2C: LitVarStr var_EC, vbNullString
  loc_AE3A31: HardType
  loc_AE3A32: NeVar var_FC
  loc_AE3A36: FStVar var_124
  loc_AE3A3A: FLdRfVar var_124
  loc_AE3A3D: FLdRfVar var_164
  loc_AE3A40: ImpAdCallFPR4  = IIf(, , )
  loc_AE3A45: FLdRfVar var_164
  loc_AE3A48: CStrVarVal var_94
  loc_AE3A4C: ILdPr
  loc_AE3A4F: Call tblliquidacion.AltaFehoPut(from_stack_1v)
  loc_AE3A54: FFree1Str var_94
  loc_AE3A57: FFreeAd var_B8 = "": var_CC = ""
  loc_AE3A60: FFreeVar var_DC = "": var_124 = "": var_134 = "": var_154 = ""
  loc_AE3A6D: FLdRfVar var_DC
  loc_AE3A70: FLdRfVar var_CC
  loc_AE3A73: LitVarStr var_C8, "ModiUsua"
  loc_AE3A78: PopAdLdVar
  loc_AE3A79: FLdRfVar var_B8
  loc_AE3A7C: FMemLdPr
  loc_AE3A81:  = Me.Fields
  loc_AE3A86: FLdPr var_B8
  loc_AE3A89: from_stack_2 = Me.Item(from_stack_1)
  loc_AE3A8E: FLdPr var_CC
  loc_AE3A91:  = Me.Value
  loc_AE3A96: FLdRfVar var_DC
  loc_AE3A99: CStrVarTmp
  loc_AE3A9A: FStStrNoPop var_94
  loc_AE3A9D: ILdPr
  loc_AE3AA0: Call tblliquidacion.ModiUsuaPut(from_stack_1v)
  loc_AE3AA5: FFree1Str var_94
  loc_AE3AA8: FFreeAd var_B8 = ""
  loc_AE3AAF: FFree1Var var_DC = ""
  loc_AE3AB2: FLdRfVar var_DC
  loc_AE3AB5: FLdRfVar var_CC
  loc_AE3AB8: LitVarStr var_C8, "ModiFeho"
  loc_AE3ABD: PopAdLdVar
  loc_AE3ABE: FLdRfVar var_B8
  loc_AE3AC1: FMemLdPr
  loc_AE3AC6:  = Me.Fields
  loc_AE3ACB: FLdPr var_B8
  loc_AE3ACE: from_stack_2 = Me.Item(from_stack_1)
  loc_AE3AD3: FLdPr var_CC
  loc_AE3AD6:  = Me.Value
  loc_AE3ADB: FLdRfVar var_114
  loc_AE3ADE: LitVarStr var_110, "ModiFeho"
  loc_AE3AE3: PopAdLdVar
  loc_AE3AE4: FLdRfVar var_100
  loc_AE3AE7: FMemLdPr
  loc_AE3AEC:  = Me.Fields
  loc_AE3AF1: FLdPr var_100
  loc_AE3AF4: from_stack_2 = Me.Item(from_stack_1)
  loc_AE3AF9: LitVarStr var_144, vbNullString
  loc_AE3AFE: FStVarCopyObj var_154
  loc_AE3B01: FLdRfVar var_154
  loc_AE3B04: FLdZeroAd var_114
  loc_AE3B07: CVarAd
  loc_AE3B0B: FLdRfVar var_DC
  loc_AE3B0E: LitVarStr var_EC, vbNullString
  loc_AE3B13: HardType
  loc_AE3B14: NeVar var_FC
  loc_AE3B18: FStVar var_124
  loc_AE3B1C: FLdRfVar var_124
  loc_AE3B1F: FLdRfVar var_164
  loc_AE3B22: ImpAdCallFPR4  = IIf(, , )
  loc_AE3B27: FLdRfVar var_164
  loc_AE3B2A: CStrVarVal var_94
  loc_AE3B2E: ILdPr
  loc_AE3B31: Call tblliquidacion.ModiFehoPut(from_stack_1v)
  loc_AE3B36: FFree1Str var_94
  loc_AE3B39: FFreeAd var_B8 = "": var_CC = ""
  loc_AE3B42: FFreeVar var_DC = "": var_124 = "": var_134 = "": var_154 = ""
  loc_AE3B4F: FLdRfVar var_DC
  loc_AE3B52: FLdRfVar var_CC
  loc_AE3B55: LitVarStr var_C8, "BajaUsua"
  loc_AE3B5A: PopAdLdVar
  loc_AE3B5B: FLdRfVar var_B8
  loc_AE3B5E: FMemLdPr
  loc_AE3B63:  = Me.Fields
  loc_AE3B68: FLdPr var_B8
  loc_AE3B6B: from_stack_2 = Me.Item(from_stack_1)
  loc_AE3B70: FLdPr var_CC
  loc_AE3B73:  = Me.Value
  loc_AE3B78: FLdRfVar var_DC
  loc_AE3B7B: CStrVarTmp
  loc_AE3B7C: FStStrNoPop var_94
  loc_AE3B7F: ILdPr
  loc_AE3B82: Call tblliquidacion.BajaUsuaPut(from_stack_1v)
  loc_AE3B87: FFree1Str var_94
  loc_AE3B8A: FFreeAd var_B8 = ""
  loc_AE3B91: FFree1Var var_DC = ""
  loc_AE3B94: FLdRfVar var_DC
  loc_AE3B97: FLdRfVar var_CC
  loc_AE3B9A: LitVarStr var_C8, "BajaFeho"
  loc_AE3B9F: PopAdLdVar
  loc_AE3BA0: FLdRfVar var_B8
  loc_AE3BA3: FMemLdPr
  loc_AE3BA8:  = Me.Fields
  loc_AE3BAD: FLdPr var_B8
  loc_AE3BB0: from_stack_2 = Me.Item(from_stack_1)
  loc_AE3BB5: FLdPr var_CC
  loc_AE3BB8:  = Me.Value
  loc_AE3BBD: FLdRfVar var_114
  loc_AE3BC0: LitVarStr var_110, "BajaFeho"
  loc_AE3BC5: PopAdLdVar
  loc_AE3BC6: FLdRfVar var_100
  loc_AE3BC9: FMemLdPr
  loc_AE3BCE:  = Me.Fields
  loc_AE3BD3: FLdPr var_100
  loc_AE3BD6: from_stack_2 = Me.Item(from_stack_1)
  loc_AE3BDB: LitVarStr var_144, vbNullString
  loc_AE3BE0: FStVarCopyObj var_154
  loc_AE3BE3: FLdRfVar var_154
  loc_AE3BE6: FLdZeroAd var_114
  loc_AE3BE9: CVarAd
  loc_AE3BED: FLdRfVar var_DC
  loc_AE3BF0: LitVarStr var_EC, vbNullString
  loc_AE3BF5: HardType
  loc_AE3BF6: NeVar var_FC
  loc_AE3BFA: FStVar var_124
  loc_AE3BFE: FLdRfVar var_124
  loc_AE3C01: FLdRfVar var_164
  loc_AE3C04: ImpAdCallFPR4  = IIf(, , )
  loc_AE3C09: FLdRfVar var_164
  loc_AE3C0C: CStrVarVal var_94
  loc_AE3C10: ILdPr
  loc_AE3C13: Call tblliquidacion.BajaFehoPut(from_stack_1v)
  loc_AE3C18: FFree1Str var_94
  loc_AE3C1B: FFreeAd var_B8 = "": var_CC = ""
  loc_AE3C24: FFreeVar var_DC = "": var_124 = "": var_134 = "": var_154 = ""
  loc_AE3C31: FLdRfVar var_DC
  loc_AE3C34: FLdRfVar var_CC
  loc_AE3C37: LitVarStr var_C8, "BajaMoti"
  loc_AE3C3C: PopAdLdVar
  loc_AE3C3D: FLdRfVar var_B8
  loc_AE3C40: FMemLdPr
  loc_AE3C45:  = Me.Fields
  loc_AE3C4A: FLdPr var_B8
  loc_AE3C4D: from_stack_2 = Me.Item(from_stack_1)
  loc_AE3C52: FLdPr var_CC
  loc_AE3C55:  = Me.Value
  loc_AE3C5A: FLdRfVar var_DC
  loc_AE3C5D: CStrVarTmp
  loc_AE3C5E: FStStrNoPop var_94
  loc_AE3C61: ILdPr
  loc_AE3C64: Call tblliquidacion.BajaMotiPut(from_stack_1v)
  loc_AE3C69: FFree1Str var_94
  loc_AE3C6C: FFreeAd var_B8 = ""
  loc_AE3C73: FFree1Var var_DC = ""
  loc_AE3C76: LitI2_Byte &HFF
  loc_AE3C78: FStI2 var_86
  loc_AE3C7B: Branch loc_AE3D33
  loc_AE3C7E: LitStr "La Liquidación NO EXISTE. Verifique..."
  loc_AE3C81: ILdPr
  loc_AE3C84: Call tblliquidacion.MsgErrorPut(from_stack_1v)
  loc_AE3C89: LitStr vbNullString
  loc_AE3C8C: ILdPr
  loc_AE3C8F: Call tblliquidacion.ExpeImpuPut(from_stack_1v)
  loc_AE3C94: LitStr vbNullString
  loc_AE3C97: ILdPr
  loc_AE3C9A: Call tblliquidacion.NumeLiquPut(from_stack_1v)
  loc_AE3C9F: LitStr vbNullString
  loc_AE3CA2: ILdPr
  loc_AE3CA5: Call tblliquidacion.FechLiquPut(from_stack_1v)
  loc_AE3CAA: LitStr vbNullString
  loc_AE3CAD: ILdPr
  loc_AE3CB0: Call tblliquidacion.DetaLiquPut(from_stack_1v)
  loc_AE3CB5: LitStr vbNullString
  loc_AE3CB8: ILdPr
  loc_AE3CBB: Call tblliquidacion.FeanLiquPut(from_stack_1v)
  loc_AE3CC0: LitStr vbNullString
  loc_AE3CC3: ILdPr
  loc_AE3CC6: Call tblliquidacion.PeriInfoPut(from_stack_1v)
  loc_AE3CCB: LitStr vbNullString
  loc_AE3CCE: ILdPr
  loc_AE3CD1: Call tblliquidacion.NumeOrpaPut(from_stack_1v)
  loc_AE3CD6: LitStr vbNullString
  loc_AE3CD9: ILdPr
  loc_AE3CDC: Call tblliquidacion.TipoLiquPut(from_stack_1v)
  loc_AE3CE1: LitStr vbNullString
  loc_AE3CE4: ILdPr
  loc_AE3CE7: Call tblliquidacion.AltaUsuaPut(from_stack_1v)
  loc_AE3CEC: LitStr vbNullString
  loc_AE3CEF: ILdPr
  loc_AE3CF2: Call tblliquidacion.AltaFehoPut(from_stack_1v)
  loc_AE3CF7: LitStr vbNullString
  loc_AE3CFA: ILdPr
  loc_AE3CFD: Call tblliquidacion.ModiUsuaPut(from_stack_1v)
  loc_AE3D02: LitStr vbNullString
  loc_AE3D05: ILdPr
  loc_AE3D08: Call tblliquidacion.ModiFehoPut(from_stack_1v)
  loc_AE3D0D: LitStr vbNullString
  loc_AE3D10: ILdPr
  loc_AE3D13: Call tblliquidacion.BajaUsuaPut(from_stack_1v)
  loc_AE3D18: LitStr vbNullString
  loc_AE3D1B: ILdPr
  loc_AE3D1E: Call tblliquidacion.BajaFehoPut(from_stack_1v)
  loc_AE3D23: LitStr vbNullString
  loc_AE3D26: ILdPr
  loc_AE3D29: Call tblliquidacion.BajaMotiPut(from_stack_1v)
  loc_AE3D2E: LitI2_Byte 0
  loc_AE3D30: FStI2 var_86
  loc_AE3D33: ExitProcI2
End Function

Private Function Proc_259_31_9E6B80(arg_C) '9E6B80
  'Data Table: 4569C4
  loc_9E6A6C: ILdRf arg_C
  loc_9E6A6F: FStStrCopy var_8C
  loc_9E6A72: LitStr "SELECT *"
  loc_9E6A75: LitStr " FROM infogov.entereca"
  loc_9E6A78: ConcatStr
  loc_9E6A79: FStStrNoPop var_90
  loc_9E6A7C: LitStr " WHERE CodiEnre = '"
  loc_9E6A7F: ConcatStr
  loc_9E6A80: FStStrNoPop var_94
  loc_9E6A83: ILdRf var_8C
  loc_9E6A86: ConcatStr
  loc_9E6A87: FStStrNoPop var_98
  loc_9E6A8A: LitStr "'"
  loc_9E6A8D: ConcatStr
  loc_9E6A8E: FStStrNoPop var_9C
  loc_9E6A91: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9E6A96: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_9E6AA1: FLdRfVar var_A0
  loc_9E6AA4: FMemLdPr
  loc_9E6AA9:  = Me.RecordCount
  loc_9E6AAE: ILdRf var_A0
  loc_9E6AB1: LitI4 0
  loc_9E6AB6: GtI4
  loc_9E6AB7: BranchF loc_9E6B57
  loc_9E6ABA: LitStr vbNullString
  loc_9E6ABD: ILdPr
  loc_9E6AC0: Call tblentereca.MsgErrorPut(from_stack_1v)
  loc_9E6AC5: FLdRfVar var_C8
  loc_9E6AC8: FLdRfVar var_B8
  loc_9E6ACB: LitVarStr var_B4, "CodiEnre"
  loc_9E6AD0: PopAdLdVar
  loc_9E6AD1: FLdRfVar var_A4
  loc_9E6AD4: FMemLdPr
  loc_9E6AD9:  = Me.Fields
  loc_9E6ADE: FLdPr var_A4
  loc_9E6AE1: from_stack_2 = Me.Item(from_stack_1)
  loc_9E6AE6: FLdPr var_B8
  loc_9E6AE9:  = Me.Value
  loc_9E6AEE: FLdRfVar var_C8
  loc_9E6AF1: CStrVarTmp
  loc_9E6AF2: FStStrNoPop var_90
  loc_9E6AF5: ILdPr
  loc_9E6AF8: Call tblentereca.CodiEnrePut(from_stack_1v)
  loc_9E6AFD: FFree1Str var_90
  loc_9E6B00: FFreeAd var_A4 = ""
  loc_9E6B07: FFree1Var var_C8 = ""
  loc_9E6B0A: FLdRfVar var_C8
  loc_9E6B0D: FLdRfVar var_B8
  loc_9E6B10: LitVarStr var_B4, "DetaEnre"
  loc_9E6B15: PopAdLdVar
  loc_9E6B16: FLdRfVar var_A4
  loc_9E6B19: FMemLdPr
  loc_9E6B1E:  = Me.Fields
  loc_9E6B23: FLdPr var_A4
  loc_9E6B26: from_stack_2 = Me.Item(from_stack_1)
  loc_9E6B2B: FLdPr var_B8
  loc_9E6B2E:  = Me.Value
  loc_9E6B33: FLdRfVar var_C8
  loc_9E6B36: CStrVarTmp
  loc_9E6B37: FStStrNoPop var_90
  loc_9E6B3A: ILdPr
  loc_9E6B3D: Call tblentereca.DetaEnrePut(from_stack_1v)
  loc_9E6B42: FFree1Str var_90
  loc_9E6B45: FFreeAd var_A4 = ""
  loc_9E6B4C: FFree1Var var_C8 = ""
  loc_9E6B4F: LitI2_Byte &HFF
  loc_9E6B51: FStI2 var_86
  loc_9E6B54: Branch loc_9E6B7D
  loc_9E6B57: LitStr "El Ente Recaudador NO EXISTE. Verifique..."
  loc_9E6B5A: ILdPr
  loc_9E6B5D: Call tblentereca.MsgErrorPut(from_stack_1v)
  loc_9E6B62: LitStr vbNullString
  loc_9E6B65: ILdPr
  loc_9E6B68: Call tblentereca.CodiEnrePut(from_stack_1v)
  loc_9E6B6D: LitStr vbNullString
  loc_9E6B70: ILdPr
  loc_9E6B73: Call tblentereca.DetaEnrePut(from_stack_1v)
  loc_9E6B78: LitI2_Byte 0
  loc_9E6B7A: FStI2 var_86
  loc_9E6B7D: ExitProcI2
End Function

Private Function Proc_259_32_AE0B0C(arg_C) 'AE0B0C
  'Data Table: 4569C4
  loc_AE046C: ILdRf arg_C
  loc_AE046F: FStStrCopy var_8C
  loc_AE0472: LitStr "SELECT tc.*, IFNULL(DetaPers,'') DetaPers, IF(ticoxusua.CodiTico IS NULL,'No','Si') Autorizado"
  loc_AE0475: LitStr " FROM tipocompra tc"
  loc_AE0478: ConcatStr
  loc_AE0479: FStStrNoPop var_90
  loc_AE047C: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = tc.CucuPers"
  loc_AE047F: ConcatStr
  loc_AE0480: FStStrNoPop var_94
  loc_AE0483: LitStr " LEFT JOIN ticoxusua ON ticoxusua.CodiTico = tc.CodiTico AND ticoxusua.CodiUsua = '"
  loc_AE0486: ConcatStr
  loc_AE0487: FStStrNoPop var_98
  loc_AE048A: ImpAdLdI4 MemVar_C3D03C
  loc_AE048D: ConcatStr
  loc_AE048E: FStStrNoPop var_9C
  loc_AE0491: LitStr "'"
  loc_AE0494: ConcatStr
  loc_AE0495: FStStrNoPop var_A0
  loc_AE0498: LitStr " WHERE tc.CodiTico = '"
  loc_AE049B: ConcatStr
  loc_AE049C: FStStrNoPop var_A4
  loc_AE049F: ILdRf var_8C
  loc_AE04A2: ConcatStr
  loc_AE04A3: FStStrNoPop var_A8
  loc_AE04A6: LitStr "'"
  loc_AE04A9: ConcatStr
  loc_AE04AA: FStStrNoPop var_AC
  loc_AE04AD: LitStr " LIMIT 1;"
  loc_AE04B0: ConcatStr
  loc_AE04B1: FStStrNoPop var_B0
  loc_AE04B4: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_AE04B9: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AE04CE: FLdRfVar var_B4
  loc_AE04D1: FMemLdPr
  loc_AE04D6:  = Me.RecordCount
  loc_AE04DB: ILdRf var_B4
  loc_AE04DE: LitI4 0
  loc_AE04E3: GtI4
  loc_AE04E4: BranchF loc_AE0A3F
  loc_AE04E7: LitStr vbNullString
  loc_AE04EA: ILdPr
  loc_AE04ED: Call tbltipocompra.MsgErrorPut(from_stack_1v)
  loc_AE04F2: FLdRfVar var_DC
  loc_AE04F5: FLdRfVar var_CC
  loc_AE04F8: LitVarStr var_C8, "CodiTico"
  loc_AE04FD: PopAdLdVar
  loc_AE04FE: FLdRfVar var_B8
  loc_AE0501: FMemLdPr
  loc_AE0506:  = Me.Fields
  loc_AE050B: FLdPr var_B8
  loc_AE050E: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0513: FLdPr var_CC
  loc_AE0516:  = Me.Value
  loc_AE051B: FLdRfVar var_DC
  loc_AE051E: CStrVarTmp
  loc_AE051F: FStStrNoPop var_90
  loc_AE0522: ILdPr
  loc_AE0525: Call tbltipocompra.CodiTicoPut(from_stack_1v)
  loc_AE052A: FFree1Str var_90
  loc_AE052D: FFreeAd var_B8 = ""
  loc_AE0534: FFree1Var var_DC = ""
  loc_AE0537: FLdRfVar var_DC
  loc_AE053A: FLdRfVar var_CC
  loc_AE053D: LitVarStr var_C8, "DetaTico"
  loc_AE0542: PopAdLdVar
  loc_AE0543: FLdRfVar var_B8
  loc_AE0546: FMemLdPr
  loc_AE054B:  = Me.Fields
  loc_AE0550: FLdPr var_B8
  loc_AE0553: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0558: FLdPr var_CC
  loc_AE055B:  = Me.Value
  loc_AE0560: FLdRfVar var_DC
  loc_AE0563: CStrVarTmp
  loc_AE0564: FStStrNoPop var_90
  loc_AE0567: ILdPr
  loc_AE056A: Call tbltipocompra.DetaTicoPut(from_stack_1v)
  loc_AE056F: FFree1Str var_90
  loc_AE0572: FFreeAd var_B8 = ""
  loc_AE0579: FFree1Var var_DC = ""
  loc_AE057C: FLdRfVar var_DC
  loc_AE057F: FLdRfVar var_CC
  loc_AE0582: LitVarStr var_C8, "LimiTico"
  loc_AE0587: PopAdLdVar
  loc_AE0588: FLdRfVar var_B8
  loc_AE058B: FMemLdPr
  loc_AE0590:  = Me.Fields
  loc_AE0595: FLdPr var_B8
  loc_AE0598: from_stack_2 = Me.Item(from_stack_1)
  loc_AE059D: FLdPr var_CC
  loc_AE05A0:  = Me.Value
  loc_AE05A5: FLdRfVar var_DC
  loc_AE05A8: CStrVarTmp
  loc_AE05A9: FStStrNoPop var_90
  loc_AE05AC: ILdPr
  loc_AE05AF: Call tbltipocompra.LimiTicoPut(from_stack_1v)
  loc_AE05B4: FFree1Str var_90
  loc_AE05B7: FFreeAd var_B8 = ""
  loc_AE05BE: FFree1Var var_DC = ""
  loc_AE05C1: FLdRfVar var_DC
  loc_AE05C4: FLdRfVar var_CC
  loc_AE05C7: LitVarStr var_C8, "ColiTico"
  loc_AE05CC: PopAdLdVar
  loc_AE05CD: FLdRfVar var_B8
  loc_AE05D0: FMemLdPr
  loc_AE05D5:  = Me.Fields
  loc_AE05DA: FLdPr var_B8
  loc_AE05DD: from_stack_2 = Me.Item(from_stack_1)
  loc_AE05E2: FLdPr var_CC
  loc_AE05E5:  = Me.Value
  loc_AE05EA: FLdRfVar var_DC
  loc_AE05ED: CStrVarTmp
  loc_AE05EE: FStStrNoPop var_90
  loc_AE05F1: ILdPr
  loc_AE05F4: Call tbltipocompra.ColiTicoPut(from_stack_1v)
  loc_AE05F9: FFree1Str var_90
  loc_AE05FC: FFreeAd var_B8 = ""
  loc_AE0603: FFree1Var var_DC = ""
  loc_AE0606: FLdRfVar var_DC
  loc_AE0609: FLdRfVar var_CC
  loc_AE060C: LitVarStr var_C8, "CucuPers"
  loc_AE0611: PopAdLdVar
  loc_AE0612: FLdRfVar var_B8
  loc_AE0615: FMemLdPr
  loc_AE061A:  = Me.Fields
  loc_AE061F: FLdPr var_B8
  loc_AE0622: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0627: FLdPr var_CC
  loc_AE062A:  = Me.Value
  loc_AE062F: FLdRfVar var_DC
  loc_AE0632: CStrVarTmp
  loc_AE0633: FStStrNoPop var_90
  loc_AE0636: ILdPr
  loc_AE0639: Call tbltipocompra.CucuPersPut(from_stack_1v)
  loc_AE063E: FFree1Str var_90
  loc_AE0641: FFreeAd var_B8 = ""
  loc_AE0648: FFree1Var var_DC = ""
  loc_AE064B: FLdRfVar var_DC
  loc_AE064E: FLdRfVar var_CC
  loc_AE0651: LitVarStr var_C8, "DetaPers"
  loc_AE0656: PopAdLdVar
  loc_AE0657: FLdRfVar var_B8
  loc_AE065A: FMemLdPr
  loc_AE065F:  = Me.Fields
  loc_AE0664: FLdPr var_B8
  loc_AE0667: from_stack_2 = Me.Item(from_stack_1)
  loc_AE066C: FLdPr var_CC
  loc_AE066F:  = Me.Value
  loc_AE0674: FLdRfVar var_DC
  loc_AE0677: CStrVarTmp
  loc_AE0678: FStStrNoPop var_90
  loc_AE067B: ILdPr
  loc_AE067E: Call tbltipocompra.DetaPersPut(from_stack_1v)
  loc_AE0683: FFree1Str var_90
  loc_AE0686: FFreeAd var_B8 = ""
  loc_AE068D: FFree1Var var_DC = ""
  loc_AE0690: FLdRfVar var_DC
  loc_AE0693: FLdRfVar var_CC
  loc_AE0696: LitVarStr var_C8, "MareTico"
  loc_AE069B: PopAdLdVar
  loc_AE069C: FLdRfVar var_B8
  loc_AE069F: FMemLdPr
  loc_AE06A4:  = Me.Fields
  loc_AE06A9: FLdPr var_B8
  loc_AE06AC: from_stack_2 = Me.Item(from_stack_1)
  loc_AE06B1: FLdPr var_CC
  loc_AE06B4:  = Me.Value
  loc_AE06B9: FLdRfVar var_DC
  loc_AE06BC: CStrVarTmp
  loc_AE06BD: FStStrNoPop var_90
  loc_AE06C0: ILdPr
  loc_AE06C3: Call tbltipocompra.MareTicoPut(from_stack_1v)
  loc_AE06C8: FFree1Str var_90
  loc_AE06CB: FFreeAd var_B8 = ""
  loc_AE06D2: FFree1Var var_DC = ""
  loc_AE06D5: FLdRfVar var_DC
  loc_AE06D8: FLdRfVar var_CC
  loc_AE06DB: LitVarStr var_C8, "DipaTico"
  loc_AE06E0: PopAdLdVar
  loc_AE06E1: FLdRfVar var_B8
  loc_AE06E4: FMemLdPr
  loc_AE06E9:  = Me.Fields
  loc_AE06EE: FLdPr var_B8
  loc_AE06F1: from_stack_2 = Me.Item(from_stack_1)
  loc_AE06F6: FLdPr var_CC
  loc_AE06F9:  = Me.Value
  loc_AE06FE: FLdRfVar var_DC
  loc_AE0701: CStrVarTmp
  loc_AE0702: FStStrNoPop var_90
  loc_AE0705: ILdPr
  loc_AE0708: Call tbltipocompra.DipaTicoPut(from_stack_1v)
  loc_AE070D: FFree1Str var_90
  loc_AE0710: FFreeAd var_B8 = ""
  loc_AE0717: FFree1Var var_DC = ""
  loc_AE071A: FLdRfVar var_DC
  loc_AE071D: FLdRfVar var_CC
  loc_AE0720: LitVarStr var_C8, "ExobTico"
  loc_AE0725: PopAdLdVar
  loc_AE0726: FLdRfVar var_B8
  loc_AE0729: FMemLdPr
  loc_AE072E:  = Me.Fields
  loc_AE0733: FLdPr var_B8
  loc_AE0736: from_stack_2 = Me.Item(from_stack_1)
  loc_AE073B: FLdPr var_CC
  loc_AE073E:  = Me.Value
  loc_AE0743: FLdRfVar var_DC
  loc_AE0746: CStrVarTmp
  loc_AE0747: FStStrNoPop var_90
  loc_AE074A: ILdPr
  loc_AE074D: Call tbltipocompra.ExobTicoPut(from_stack_1v)
  loc_AE0752: FFree1Str var_90
  loc_AE0755: FFreeAd var_B8 = ""
  loc_AE075C: FFree1Var var_DC = ""
  loc_AE075F: FLdRfVar var_DC
  loc_AE0762: FLdRfVar var_CC
  loc_AE0765: LitVarStr var_C8, "AltaUsua"
  loc_AE076A: PopAdLdVar
  loc_AE076B: FLdRfVar var_B8
  loc_AE076E: FMemLdPr
  loc_AE0773:  = Me.Fields
  loc_AE0778: FLdPr var_B8
  loc_AE077B: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0780: FLdPr var_CC
  loc_AE0783:  = Me.Value
  loc_AE0788: FLdRfVar var_DC
  loc_AE078B: CStrVarTmp
  loc_AE078C: FStStrNoPop var_90
  loc_AE078F: ILdPr
  loc_AE0792: Call tbltipocompra.AltaUsuaPut(from_stack_1v)
  loc_AE0797: FFree1Str var_90
  loc_AE079A: FFreeAd var_B8 = ""
  loc_AE07A1: FFree1Var var_DC = ""
  loc_AE07A4: FLdRfVar var_DC
  loc_AE07A7: FLdRfVar var_CC
  loc_AE07AA: LitVarStr var_C8, "AltaFeho"
  loc_AE07AF: PopAdLdVar
  loc_AE07B0: FLdRfVar var_B8
  loc_AE07B3: FMemLdPr
  loc_AE07B8:  = Me.Fields
  loc_AE07BD: FLdPr var_B8
  loc_AE07C0: from_stack_2 = Me.Item(from_stack_1)
  loc_AE07C5: FLdPr var_CC
  loc_AE07C8:  = Me.Value
  loc_AE07CD: FLdRfVar var_DC
  loc_AE07D0: CStrVarTmp
  loc_AE07D1: FStStrNoPop var_90
  loc_AE07D4: ILdPr
  loc_AE07D7: Call tbltipocompra.AltaFehoPut(from_stack_1v)
  loc_AE07DC: FFree1Str var_90
  loc_AE07DF: FFreeAd var_B8 = ""
  loc_AE07E6: FFree1Var var_DC = ""
  loc_AE07E9: FLdRfVar var_DC
  loc_AE07EC: FLdRfVar var_CC
  loc_AE07EF: LitVarStr var_C8, "ModiUsua"
  loc_AE07F4: PopAdLdVar
  loc_AE07F5: FLdRfVar var_B8
  loc_AE07F8: FMemLdPr
  loc_AE07FD:  = Me.Fields
  loc_AE0802: FLdPr var_B8
  loc_AE0805: from_stack_2 = Me.Item(from_stack_1)
  loc_AE080A: FLdPr var_CC
  loc_AE080D:  = Me.Value
  loc_AE0812: FLdRfVar var_DC
  loc_AE0815: CStrVarTmp
  loc_AE0816: FStStrNoPop var_90
  loc_AE0819: ILdPr
  loc_AE081C: Call tbltipocompra.ModiUsuaPut(from_stack_1v)
  loc_AE0821: FFree1Str var_90
  loc_AE0824: FFreeAd var_B8 = ""
  loc_AE082B: FFree1Var var_DC = ""
  loc_AE082E: FLdRfVar var_DC
  loc_AE0831: FLdRfVar var_CC
  loc_AE0834: LitVarStr var_C8, "ModiFeho"
  loc_AE0839: PopAdLdVar
  loc_AE083A: FLdRfVar var_B8
  loc_AE083D: FMemLdPr
  loc_AE0842:  = Me.Fields
  loc_AE0847: FLdPr var_B8
  loc_AE084A: from_stack_2 = Me.Item(from_stack_1)
  loc_AE084F: FLdPr var_CC
  loc_AE0852:  = Me.Value
  loc_AE0857: FLdRfVar var_114
  loc_AE085A: LitVarStr var_110, "ModiFeho"
  loc_AE085F: PopAdLdVar
  loc_AE0860: FLdRfVar var_100
  loc_AE0863: FMemLdPr
  loc_AE0868:  = Me.Fields
  loc_AE086D: FLdPr var_100
  loc_AE0870: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0875: LitVarStr var_144, vbNullString
  loc_AE087A: FStVarCopyObj var_154
  loc_AE087D: FLdRfVar var_154
  loc_AE0880: FLdZeroAd var_114
  loc_AE0883: CVarAd
  loc_AE0887: FLdRfVar var_DC
  loc_AE088A: LitVarStr var_EC, vbNullString
  loc_AE088F: HardType
  loc_AE0890: NeVar var_FC
  loc_AE0894: FStVar var_124
  loc_AE0898: FLdRfVar var_124
  loc_AE089B: FLdRfVar var_164
  loc_AE089E: ImpAdCallFPR4  = IIf(, , )
  loc_AE08A3: FLdRfVar var_164
  loc_AE08A6: CStrVarVal var_90
  loc_AE08AA: ILdPr
  loc_AE08AD: Call tbltipocompra.ModiFehoPut(from_stack_1v)
  loc_AE08B2: FFree1Str var_90
  loc_AE08B5: FFreeAd var_B8 = "": var_CC = ""
  loc_AE08BE: FFreeVar var_DC = "": var_124 = "": var_134 = "": var_154 = ""
  loc_AE08CB: FLdRfVar var_DC
  loc_AE08CE: FLdRfVar var_CC
  loc_AE08D1: LitVarStr var_C8, "BajaUsua"
  loc_AE08D6: PopAdLdVar
  loc_AE08D7: FLdRfVar var_B8
  loc_AE08DA: FMemLdPr
  loc_AE08DF:  = Me.Fields
  loc_AE08E4: FLdPr var_B8
  loc_AE08E7: from_stack_2 = Me.Item(from_stack_1)
  loc_AE08EC: FLdPr var_CC
  loc_AE08EF:  = Me.Value
  loc_AE08F4: FLdRfVar var_DC
  loc_AE08F7: CStrVarTmp
  loc_AE08F8: FStStrNoPop var_90
  loc_AE08FB: ILdPr
  loc_AE08FE: Call tbltipocompra.BajaUsuaPut(from_stack_1v)
  loc_AE0903: FFree1Str var_90
  loc_AE0906: FFreeAd var_B8 = ""
  loc_AE090D: FFree1Var var_DC = ""
  loc_AE0910: FLdRfVar var_DC
  loc_AE0913: FLdRfVar var_CC
  loc_AE0916: LitVarStr var_C8, "BajaFeho"
  loc_AE091B: PopAdLdVar
  loc_AE091C: FLdRfVar var_B8
  loc_AE091F: FMemLdPr
  loc_AE0924:  = Me.Fields
  loc_AE0929: FLdPr var_B8
  loc_AE092C: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0931: FLdPr var_CC
  loc_AE0934:  = Me.Value
  loc_AE0939: FLdRfVar var_114
  loc_AE093C: LitVarStr var_110, "BajaFeho"
  loc_AE0941: PopAdLdVar
  loc_AE0942: FLdRfVar var_100
  loc_AE0945: FMemLdPr
  loc_AE094A:  = Me.Fields
  loc_AE094F: FLdPr var_100
  loc_AE0952: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0957: LitVarStr var_144, vbNullString
  loc_AE095C: FStVarCopyObj var_154
  loc_AE095F: FLdRfVar var_154
  loc_AE0962: FLdZeroAd var_114
  loc_AE0965: CVarAd
  loc_AE0969: FLdRfVar var_DC
  loc_AE096C: LitVarStr var_EC, vbNullString
  loc_AE0971: HardType
  loc_AE0972: NeVar var_FC
  loc_AE0976: FStVar var_124
  loc_AE097A: FLdRfVar var_124
  loc_AE097D: FLdRfVar var_164
  loc_AE0980: ImpAdCallFPR4  = IIf(, , )
  loc_AE0985: FLdRfVar var_164
  loc_AE0988: CStrVarVal var_90
  loc_AE098C: ILdPr
  loc_AE098F: Call tbltipocompra.BajaFehoPut(from_stack_1v)
  loc_AE0994: FFree1Str var_90
  loc_AE0997: FFreeAd var_B8 = "": var_CC = ""
  loc_AE09A0: FFreeVar var_DC = "": var_124 = "": var_134 = "": var_154 = ""
  loc_AE09AD: FLdRfVar var_DC
  loc_AE09B0: FLdRfVar var_CC
  loc_AE09B3: LitVarStr var_C8, "BajaMoti"
  loc_AE09B8: PopAdLdVar
  loc_AE09B9: FLdRfVar var_B8
  loc_AE09BC: FMemLdPr
  loc_AE09C1:  = Me.Fields
  loc_AE09C6: FLdPr var_B8
  loc_AE09C9: from_stack_2 = Me.Item(from_stack_1)
  loc_AE09CE: FLdPr var_CC
  loc_AE09D1:  = Me.Value
  loc_AE09D6: FLdRfVar var_DC
  loc_AE09D9: CStrVarTmp
  loc_AE09DA: FStStrNoPop var_90
  loc_AE09DD: ILdPr
  loc_AE09E0: Call tbltipocompra.BajaMotiPut(from_stack_1v)
  loc_AE09E5: FFree1Str var_90
  loc_AE09E8: FFreeAd var_B8 = ""
  loc_AE09EF: FFree1Var var_DC = ""
  loc_AE09F2: FLdRfVar var_DC
  loc_AE09F5: FLdRfVar var_CC
  loc_AE09F8: LitVarStr var_C8, "Autorizado"
  loc_AE09FD: PopAdLdVar
  loc_AE09FE: FLdRfVar var_B8
  loc_AE0A01: FMemLdPr
  loc_AE0A06:  = Me.Fields
  loc_AE0A0B: FLdPr var_B8
  loc_AE0A0E: from_stack_2 = Me.Item(from_stack_1)
  loc_AE0A13: FLdPr var_CC
  loc_AE0A16:  = Me.Value
  loc_AE0A1B: FLdRfVar var_DC
  loc_AE0A1E: CStrVarTmp
  loc_AE0A1F: FStStrNoPop var_90
  loc_AE0A22: ILdPr
  loc_AE0A25: Call tbltipocompra.AutorizadoPut(from_stack_1v)
  loc_AE0A2A: FFree1Str var_90
  loc_AE0A2D: FFreeAd var_B8 = ""
  loc_AE0A34: FFree1Var var_DC = ""
  loc_AE0A37: LitI2_Byte &HFF
  loc_AE0A39: FStI2 var_86
  loc_AE0A3C: Branch loc_AE0B0A
  loc_AE0A3F: LitStr "El Tipo de Compra NO EXISTE. Verifique..."
  loc_AE0A42: ILdPr
  loc_AE0A45: Call tbltipocompra.MsgErrorPut(from_stack_1v)
  loc_AE0A4A: LitStr vbNullString
  loc_AE0A4D: ILdPr
  loc_AE0A50: Call tbltipocompra.CodiTicoPut(from_stack_1v)
  loc_AE0A55: LitStr vbNullString
  loc_AE0A58: ILdPr
  loc_AE0A5B: Call tbltipocompra.DetaTicoPut(from_stack_1v)
  loc_AE0A60: LitStr vbNullString
  loc_AE0A63: ILdPr
  loc_AE0A66: Call tbltipocompra.LimiTicoPut(from_stack_1v)
  loc_AE0A6B: LitStr vbNullString
  loc_AE0A6E: ILdPr
  loc_AE0A71: Call tbltipocompra.ColiTicoPut(from_stack_1v)
  loc_AE0A76: LitStr vbNullString
  loc_AE0A79: ILdPr
  loc_AE0A7C: Call tbltipocompra.CucuPersPut(from_stack_1v)
  loc_AE0A81: LitStr vbNullString
  loc_AE0A84: ILdPr
  loc_AE0A87: Call tbltipocompra.DetaPersPut(from_stack_1v)
  loc_AE0A8C: LitStr vbNullString
  loc_AE0A8F: ILdPr
  loc_AE0A92: Call tbltipocompra.MareTicoPut(from_stack_1v)
  loc_AE0A97: LitStr vbNullString
  loc_AE0A9A: ILdPr
  loc_AE0A9D: Call tbltipocompra.DipaTicoPut(from_stack_1v)
  loc_AE0AA2: LitStr vbNullString
  loc_AE0AA5: ILdPr
  loc_AE0AA8: Call tbltipocompra.ExobTicoPut(from_stack_1v)
  loc_AE0AAD: LitStr vbNullString
  loc_AE0AB0: ILdPr
  loc_AE0AB3: Call tbltipocompra.AltaUsuaPut(from_stack_1v)
  loc_AE0AB8: LitStr vbNullString
  loc_AE0ABB: ILdPr
  loc_AE0ABE: Call tbltipocompra.AltaFehoPut(from_stack_1v)
  loc_AE0AC3: LitStr vbNullString
  loc_AE0AC6: ILdPr
  loc_AE0AC9: Call tbltipocompra.ModiUsuaPut(from_stack_1v)
  loc_AE0ACE: LitStr vbNullString
  loc_AE0AD1: ILdPr
  loc_AE0AD4: Call tbltipocompra.ModiFehoPut(from_stack_1v)
  loc_AE0AD9: LitStr vbNullString
  loc_AE0ADC: ILdPr
  loc_AE0ADF: Call tbltipocompra.BajaUsuaPut(from_stack_1v)
  loc_AE0AE4: LitStr vbNullString
  loc_AE0AE7: ILdPr
  loc_AE0AEA: Call tbltipocompra.BajaFehoPut(from_stack_1v)
  loc_AE0AEF: LitStr vbNullString
  loc_AE0AF2: ILdPr
  loc_AE0AF5: Call tbltipocompra.BajaMotiPut(from_stack_1v)
  loc_AE0AFA: LitStr vbNullString
  loc_AE0AFD: ILdPr
  loc_AE0B00: Call tbltipocompra.AutorizadoPut(from_stack_1v)
  loc_AE0B05: LitI2_Byte 0
  loc_AE0B07: FStI2 var_86
  loc_AE0B0A: ExitProcI2
End Function

Private Function Proc_259_33_A1321C(arg_C) 'A1321C
  'Data Table: 4569C4
  loc_A130B0: ILdRf arg_C
  loc_A130B3: FStStrCopy var_8C
  loc_A130B6: LitStr "SELECT CodiTicu, DetaTicu, IF(ImpuTicu=0,'No','Si') ImpuTicu"
  loc_A130B9: LitStr " FROM tipocuco"
  loc_A130BC: ConcatStr
  loc_A130BD: FStStrNoPop var_90
  loc_A130C0: LitStr " WHERE CodiTicu = '"
  loc_A130C3: ConcatStr
  loc_A130C4: FStStrNoPop var_94
  loc_A130C7: ILdRf var_8C
  loc_A130CA: ConcatStr
  loc_A130CB: FStStrNoPop var_98
  loc_A130CE: LitStr "'"
  loc_A130D1: ConcatStr
  loc_A130D2: FStStrNoPop var_9C
  loc_A130D5: LitStr " LIMIT 1;"
  loc_A130D8: ConcatStr
  loc_A130D9: FStStrNoPop var_A0
  loc_A130DC: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_A130E1: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A130EE: FLdRfVar var_A4
  loc_A130F1: FMemLdPr
  loc_A130F6:  = Me.RecordCount
  loc_A130FB: ILdRf var_A4
  loc_A130FE: LitI4 0
  loc_A13103: GtI4
  loc_A13104: BranchF loc_A131E9
  loc_A13107: LitStr vbNullString
  loc_A1310A: ILdPr
  loc_A1310D: Call tbltipocuco.MsgErrorPut(from_stack_1v)
  loc_A13112: FLdRfVar var_CC
  loc_A13115: FLdRfVar var_BC
  loc_A13118: LitVarStr var_B8, "CodiTicu"
  loc_A1311D: PopAdLdVar
  loc_A1311E: FLdRfVar var_A8
  loc_A13121: FMemLdPr
  loc_A13126:  = Me.Fields
  loc_A1312B: FLdPr var_A8
  loc_A1312E: from_stack_2 = Me.Item(from_stack_1)
  loc_A13133: FLdPr var_BC
  loc_A13136:  = Me.Value
  loc_A1313B: FLdRfVar var_CC
  loc_A1313E: CStrVarTmp
  loc_A1313F: FStStrNoPop var_90
  loc_A13142: ILdPr
  loc_A13145: Call tbltipocuco.CodiTicuPut(from_stack_1v)
  loc_A1314A: FFree1Str var_90
  loc_A1314D: FFreeAd var_A8 = ""
  loc_A13154: FFree1Var var_CC = ""
  loc_A13157: FLdRfVar var_CC
  loc_A1315A: FLdRfVar var_BC
  loc_A1315D: LitVarStr var_B8, "DetaTicu"
  loc_A13162: PopAdLdVar
  loc_A13163: FLdRfVar var_A8
  loc_A13166: FMemLdPr
  loc_A1316B:  = Me.Fields
  loc_A13170: FLdPr var_A8
  loc_A13173: from_stack_2 = Me.Item(from_stack_1)
  loc_A13178: FLdPr var_BC
  loc_A1317B:  = Me.Value
  loc_A13180: FLdRfVar var_CC
  loc_A13183: CStrVarTmp
  loc_A13184: FStStrNoPop var_90
  loc_A13187: ILdPr
  loc_A1318A: Call tbltipocuco.DetaTicuPut(from_stack_1v)
  loc_A1318F: FFree1Str var_90
  loc_A13192: FFreeAd var_A8 = ""
  loc_A13199: FFree1Var var_CC = ""
  loc_A1319C: FLdRfVar var_CC
  loc_A1319F: FLdRfVar var_BC
  loc_A131A2: LitVarStr var_B8, "ImpuTicu"
  loc_A131A7: PopAdLdVar
  loc_A131A8: FLdRfVar var_A8
  loc_A131AB: FMemLdPr
  loc_A131B0:  = Me.Fields
  loc_A131B5: FLdPr var_A8
  loc_A131B8: from_stack_2 = Me.Item(from_stack_1)
  loc_A131BD: FLdPr var_BC
  loc_A131C0:  = Me.Value
  loc_A131C5: FLdRfVar var_CC
  loc_A131C8: CStrVarTmp
  loc_A131C9: FStStrNoPop var_90
  loc_A131CC: ILdPr
  loc_A131CF: Call tbltipocuco.ImpuTicuPut(from_stack_1v)
  loc_A131D4: FFree1Str var_90
  loc_A131D7: FFreeAd var_A8 = ""
  loc_A131DE: FFree1Var var_CC = ""
  loc_A131E1: LitI2_Byte &HFF
  loc_A131E3: FStI2 var_86
  loc_A131E6: Branch loc_A1321A
  loc_A131E9: LitStr "La Partida NO EXISTE. Verifique..."
  loc_A131EC: ILdPr
  loc_A131EF: Call tbltipocuco.MsgErrorPut(from_stack_1v)
  loc_A131F4: LitStr vbNullString
  loc_A131F7: ILdPr
  loc_A131FA: Call tbltipocuco.CodiTicuPut(from_stack_1v)
  loc_A131FF: LitStr vbNullString
  loc_A13202: ILdPr
  loc_A13205: Call tbltipocuco.DetaTicuPut(from_stack_1v)
  loc_A1320A: LitStr vbNullString
  loc_A1320D: ILdPr
  loc_A13210: Call tbltipocuco.ImpuTicuPut(from_stack_1v)
  loc_A13215: LitI2_Byte 0
  loc_A13217: FStI2 var_86
  loc_A1321A: ExitProcI2
End Function

Private Function Proc_259_34_9A668C(arg_C) '9A668C
  'Data Table: 4569C4
  loc_9A6614: ILdRf arg_C
  loc_9A6617: FStStrCopy var_8C
  loc_9A661A: LitStr "SELECT DetaTicu FROM tipocuco WHERE CodiTicu = '"
  loc_9A661D: ILdRf var_8C
  loc_9A6620: ConcatStr
  loc_9A6621: FStStrNoPop var_90
  loc_9A6624: LitStr "'"
  loc_9A6627: ConcatStr
  loc_9A6628: FStStrNoPop var_94
  loc_9A662B: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9A6630: FFreeStr var_90 = ""
  loc_9A6637: FLdRfVar var_98
  loc_9A663A: FMemLdPr
  loc_9A663F:  = Me.RecordCount
  loc_9A6644: ILdRf var_98
  loc_9A6647: LitI4 0
  loc_9A664C: GtI4
  loc_9A664D: BranchF loc_9A668A
  loc_9A6650: FLdRfVar var_C0
  loc_9A6653: FLdRfVar var_B0
  loc_9A6656: LitVarStr var_AC, "DetaTicu"
  loc_9A665B: PopAdLdVar
  loc_9A665C: FLdRfVar var_9C
  loc_9A665F: FMemLdPr
  loc_9A6664:  = Me.Fields
  loc_9A6669: FLdPr var_9C
  loc_9A666C: from_stack_2 = Me.Item(from_stack_1)
  loc_9A6671: FLdPr var_B0
  loc_9A6674:  = Me.Value
  loc_9A6679: FLdRfVar var_C0
  loc_9A667C: CStrVarTmp
  loc_9A667D: FStStr var_88
  loc_9A6680: FFreeAd var_9C = ""
  loc_9A6687: FFree1Var var_C0 = ""
  loc_9A668A: ExitProc
End Function

Private Function Proc_259_35_A70148(arg_C) 'A70148
  'Data Table: 4569C4
  loc_A6FDA0: ILdRf arg_C
  loc_A6FDA3: FStStrCopy var_8C
  loc_A6FDA6: LitStr "SELECT *"
  loc_A6FDA9: LitStr " FROM tipomovibanco"
  loc_A6FDAC: ConcatStr
  loc_A6FDAD: FStStrNoPop var_90
  loc_A6FDB0: LitStr " WHERE CodiTimb = '"
  loc_A6FDB3: ConcatStr
  loc_A6FDB4: FStStrNoPop var_94
  loc_A6FDB7: ILdRf var_8C
  loc_A6FDBA: ConcatStr
  loc_A6FDBB: FStStrNoPop var_98
  loc_A6FDBE: LitStr "';"
  loc_A6FDC1: ConcatStr
  loc_A6FDC2: FStStrNoPop var_9C
  loc_A6FDC5: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_A6FDCA: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_A6FDD5: FLdRfVar var_A0
  loc_A6FDD8: FMemLdPr
  loc_A6FDDD:  = Me.RecordCount
  loc_A6FDE2: ILdRf var_A0
  loc_A6FDE5: LitI4 0
  loc_A6FDEA: GtI4
  loc_A6FDEB: BranchF loc_A700B3
  loc_A6FDEE: LitStr vbNullString
  loc_A6FDF1: ILdPr
  loc_A6FDF4: Call tbltipomovibanco.MsgErrorPut(from_stack_1v)
  loc_A6FDF9: FLdRfVar var_C8
  loc_A6FDFC: FLdRfVar var_B8
  loc_A6FDFF: LitVarStr var_B4, "CodiTimb"
  loc_A6FE04: PopAdLdVar
  loc_A6FE05: FLdRfVar var_A4
  loc_A6FE08: FMemLdPr
  loc_A6FE0D:  = Me.Fields
  loc_A6FE12: FLdPr var_A4
  loc_A6FE15: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FE1A: FLdPr var_B8
  loc_A6FE1D:  = Me.Value
  loc_A6FE22: FLdRfVar var_C8
  loc_A6FE25: CStrVarTmp
  loc_A6FE26: FStStrNoPop var_90
  loc_A6FE29: ILdPr
  loc_A6FE2C: Call tbltipomovibanco.CodiTimbPut(from_stack_1v)
  loc_A6FE31: FFree1Str var_90
  loc_A6FE34: FFreeAd var_A4 = ""
  loc_A6FE3B: FFree1Var var_C8 = ""
  loc_A6FE3E: FLdRfVar var_C8
  loc_A6FE41: FLdRfVar var_B8
  loc_A6FE44: LitVarStr var_B4, "DetaTimb"
  loc_A6FE49: PopAdLdVar
  loc_A6FE4A: FLdRfVar var_A4
  loc_A6FE4D: FMemLdPr
  loc_A6FE52:  = Me.Fields
  loc_A6FE57: FLdPr var_A4
  loc_A6FE5A: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FE5F: FLdPr var_B8
  loc_A6FE62:  = Me.Value
  loc_A6FE67: FLdRfVar var_C8
  loc_A6FE6A: CStrVarTmp
  loc_A6FE6B: FStStrNoPop var_90
  loc_A6FE6E: ILdPr
  loc_A6FE71: Call tbltipomovibanco.DetaTimbPut(from_stack_1v)
  loc_A6FE76: FFree1Str var_90
  loc_A6FE79: FFreeAd var_A4 = ""
  loc_A6FE80: FFree1Var var_C8 = ""
  loc_A6FE83: FLdRfVar var_C8
  loc_A6FE86: FLdRfVar var_B8
  loc_A6FE89: LitVarStr var_B4, "DeCreTimb"
  loc_A6FE8E: PopAdLdVar
  loc_A6FE8F: FLdRfVar var_A4
  loc_A6FE92: FMemLdPr
  loc_A6FE97:  = Me.Fields
  loc_A6FE9C: FLdPr var_A4
  loc_A6FE9F: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FEA4: FLdPr var_B8
  loc_A6FEA7:  = Me.Value
  loc_A6FEAC: FLdRfVar var_C8
  loc_A6FEAF: CStrVarTmp
  loc_A6FEB0: FStStrNoPop var_90
  loc_A6FEB3: ILdPr
  loc_A6FEB6: Call tbltipomovibanco.DeCreTimbPut(from_stack_1v)
  loc_A6FEBB: FFree1Str var_90
  loc_A6FEBE: FFreeAd var_A4 = ""
  loc_A6FEC5: FFree1Var var_C8 = ""
  loc_A6FEC8: FLdRfVar var_C8
  loc_A6FECB: FLdRfVar var_B8
  loc_A6FECE: LitVarStr var_B4, "CodiCuco"
  loc_A6FED3: PopAdLdVar
  loc_A6FED4: FLdRfVar var_A4
  loc_A6FED7: FMemLdPr
  loc_A6FEDC:  = Me.Fields
  loc_A6FEE1: FLdPr var_A4
  loc_A6FEE4: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FEE9: FLdPr var_B8
  loc_A6FEEC:  = Me.Value
  loc_A6FEF1: FLdRfVar var_C8
  loc_A6FEF4: CStrVarTmp
  loc_A6FEF5: FStStrNoPop var_90
  loc_A6FEF8: ILdPr
  loc_A6FEFB: Call tbltipomovibanco.CodiCucoPut(from_stack_1v)
  loc_A6FF00: FFree1Str var_90
  loc_A6FF03: FFreeAd var_A4 = ""
  loc_A6FF0A: FFree1Var var_C8 = ""
  loc_A6FF0D: FLdRfVar var_C8
  loc_A6FF10: FLdRfVar var_B8
  loc_A6FF13: LitVarStr var_B4, "PermCucoTimb"
  loc_A6FF18: PopAdLdVar
  loc_A6FF19: FLdRfVar var_A4
  loc_A6FF1C: FMemLdPr
  loc_A6FF21:  = Me.Fields
  loc_A6FF26: FLdPr var_A4
  loc_A6FF29: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FF2E: FLdPr var_B8
  loc_A6FF31:  = Me.Value
  loc_A6FF36: FLdRfVar var_C8
  loc_A6FF39: CStrVarTmp
  loc_A6FF3A: FStStrNoPop var_90
  loc_A6FF3D: ILdPr
  loc_A6FF40: Call tbltipomovibanco.PermCucoTimbPut(from_stack_1v)
  loc_A6FF45: FFree1Str var_90
  loc_A6FF48: FFreeAd var_A4 = ""
  loc_A6FF4F: FFree1Var var_C8 = ""
  loc_A6FF52: FLdRfVar var_C8
  loc_A6FF55: FLdRfVar var_B8
  loc_A6FF58: LitVarStr var_B4, "AltaUsua"
  loc_A6FF5D: PopAdLdVar
  loc_A6FF5E: FLdRfVar var_A4
  loc_A6FF61: FMemLdPr
  loc_A6FF66:  = Me.Fields
  loc_A6FF6B: FLdPr var_A4
  loc_A6FF6E: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FF73: FLdPr var_B8
  loc_A6FF76:  = Me.Value
  loc_A6FF7B: FLdRfVar var_C8
  loc_A6FF7E: CStrVarTmp
  loc_A6FF7F: FStStrNoPop var_90
  loc_A6FF82: ILdPr
  loc_A6FF85: Call tbltipomovibanco.AltaUsuaPut(from_stack_1v)
  loc_A6FF8A: FFree1Str var_90
  loc_A6FF8D: FFreeAd var_A4 = ""
  loc_A6FF94: FFree1Var var_C8 = ""
  loc_A6FF97: FLdRfVar var_C8
  loc_A6FF9A: FLdRfVar var_B8
  loc_A6FF9D: LitVarStr var_B4, "AltaFeho"
  loc_A6FFA2: PopAdLdVar
  loc_A6FFA3: FLdRfVar var_A4
  loc_A6FFA6: FMemLdPr
  loc_A6FFAB:  = Me.Fields
  loc_A6FFB0: FLdPr var_A4
  loc_A6FFB3: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FFB8: FLdPr var_B8
  loc_A6FFBB:  = Me.Value
  loc_A6FFC0: FLdRfVar var_C8
  loc_A6FFC3: CStrVarTmp
  loc_A6FFC4: FStStrNoPop var_90
  loc_A6FFC7: ILdPr
  loc_A6FFCA: Call tbltipomovibanco.AltaFehoPut(from_stack_1v)
  loc_A6FFCF: FFree1Str var_90
  loc_A6FFD2: FFreeAd var_A4 = ""
  loc_A6FFD9: FFree1Var var_C8 = ""
  loc_A6FFDC: FLdRfVar var_C8
  loc_A6FFDF: FLdRfVar var_B8
  loc_A6FFE2: LitVarStr var_B4, "ModiUsua"
  loc_A6FFE7: PopAdLdVar
  loc_A6FFE8: FLdRfVar var_A4
  loc_A6FFEB: FMemLdPr
  loc_A6FFF0:  = Me.Fields
  loc_A6FFF5: FLdPr var_A4
  loc_A6FFF8: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FFFD: FLdPr var_B8
  loc_A70000:  = Me.Value
  loc_A70005: FLdRfVar var_C8
  loc_A70008: CStrVarTmp
  loc_A70009: FStStrNoPop var_90
  loc_A7000C: ILdPr
  loc_A7000F: Call tbltipomovibanco.ModiUsuaPut(from_stack_1v)
  loc_A70014: FFree1Str var_90
  loc_A70017: FFreeAd var_A4 = ""
  loc_A7001E: FFree1Var var_C8 = ""
  loc_A70021: FLdRfVar var_C8
  loc_A70024: FLdRfVar var_B8
  loc_A70027: LitVarStr var_B4, "BajaUsua"
  loc_A7002C: PopAdLdVar
  loc_A7002D: FLdRfVar var_A4
  loc_A70030: FMemLdPr
  loc_A70035:  = Me.Fields
  loc_A7003A: FLdPr var_A4
  loc_A7003D: from_stack_2 = Me.Item(from_stack_1)
  loc_A70042: FLdPr var_B8
  loc_A70045:  = Me.Value
  loc_A7004A: FLdRfVar var_C8
  loc_A7004D: CStrVarTmp
  loc_A7004E: FStStrNoPop var_90
  loc_A70051: ILdPr
  loc_A70054: Call tbltipomovibanco.BajaUsuaPut(from_stack_1v)
  loc_A70059: FFree1Str var_90
  loc_A7005C: FFreeAd var_A4 = ""
  loc_A70063: FFree1Var var_C8 = ""
  loc_A70066: FLdRfVar var_C8
  loc_A70069: FLdRfVar var_B8
  loc_A7006C: LitVarStr var_B4, "BajaMoti"
  loc_A70071: PopAdLdVar
  loc_A70072: FLdRfVar var_A4
  loc_A70075: FMemLdPr
  loc_A7007A:  = Me.Fields
  loc_A7007F: FLdPr var_A4
  loc_A70082: from_stack_2 = Me.Item(from_stack_1)
  loc_A70087: FLdPr var_B8
  loc_A7008A:  = Me.Value
  loc_A7008F: FLdRfVar var_C8
  loc_A70092: CStrVarTmp
  loc_A70093: FStStrNoPop var_90
  loc_A70096: ILdPr
  loc_A70099: Call tbltipomovibanco.BajaMotiPut(from_stack_1v)
  loc_A7009E: FFree1Str var_90
  loc_A700A1: FFreeAd var_A4 = ""
  loc_A700A8: FFree1Var var_C8 = ""
  loc_A700AB: LitI2_Byte &HFF
  loc_A700AD: FStI2 var_86
  loc_A700B0: Branch loc_A70147
  loc_A700B3: LitStr "El Tipo de Movimiento Bancario NO EXISTE. Verifique..."
  loc_A700B6: ILdPr
  loc_A700B9: Call tbltipomovibanco.MsgErrorPut(from_stack_1v)
  loc_A700BE: LitStr vbNullString
  loc_A700C1: ILdPr
  loc_A700C4: Call tbltipomovibanco.CodiTimbPut(from_stack_1v)
  loc_A700C9: LitStr vbNullString
  loc_A700CC: ILdPr
  loc_A700CF: Call tbltipomovibanco.DetaTimbPut(from_stack_1v)
  loc_A700D4: LitStr vbNullString
  loc_A700D7: ILdPr
  loc_A700DA: Call tbltipomovibanco.DeCreTimbPut(from_stack_1v)
  loc_A700DF: LitStr vbNullString
  loc_A700E2: ILdPr
  loc_A700E5: Call tbltipomovibanco.CodiCucoPut(from_stack_1v)
  loc_A700EA: LitStr vbNullString
  loc_A700ED: ILdPr
  loc_A700F0: Call tbltipomovibanco.PermCucoTimbPut(from_stack_1v)
  loc_A700F5: LitStr vbNullString
  loc_A700F8: ILdPr
  loc_A700FB: Call tbltipomovibanco.AltaUsuaPut(from_stack_1v)
  loc_A70100: LitStr vbNullString
  loc_A70103: ILdPr
  loc_A70106: Call tbltipomovibanco.AltaFehoPut(from_stack_1v)
  loc_A7010B: LitStr vbNullString
  loc_A7010E: ILdPr
  loc_A70111: Call tbltipomovibanco.ModiUsuaPut(from_stack_1v)
  loc_A70116: LitStr vbNullString
  loc_A70119: ILdPr
  loc_A7011C: Call tbltipomovibanco.ModiFehoPut(from_stack_1v)
  loc_A70121: LitStr vbNullString
  loc_A70124: ILdPr
  loc_A70127: Call tbltipomovibanco.BajaUsuaPut(from_stack_1v)
  loc_A7012C: LitStr vbNullString
  loc_A7012F: ILdPr
  loc_A70132: Call tbltipomovibanco.BajaFehoPut(from_stack_1v)
  loc_A70137: LitStr vbNullString
  loc_A7013A: ILdPr
  loc_A7013D: Call tbltipomovibanco.BajaMotiPut(from_stack_1v)
  loc_A70142: LitI2_Byte 0
  loc_A70144: FStI2 var_86
  loc_A70147: ExitProcI2
End Function

Private Function Proc_259_36_ABBCD8(arg_C) 'ABBCD8
  'Data Table: 4569C4
  loc_ABB74C: ILdRf arg_C
  loc_ABB74F: FStStrCopy var_8C
  loc_ABB752: LitStr "SELECT uf.*"
  loc_ABB755: LitStr " FROM ubicfisica uf"
  loc_ABB758: ConcatStr
  loc_ABB759: FStStrNoPop var_90
  loc_ABB75C: LitStr " WHERE IdUbfi = '"
  loc_ABB75F: ConcatStr
  loc_ABB760: FStStrNoPop var_94
  loc_ABB763: ILdRf var_8C
  loc_ABB766: ConcatStr
  loc_ABB767: FStStrNoPop var_98
  loc_ABB76A: LitStr "'"
  loc_ABB76D: ConcatStr
  loc_ABB76E: FStStrNoPop var_9C
  loc_ABB771: LitStr " LIMIT 1;"
  loc_ABB774: ConcatStr
  loc_ABB775: FStStrNoPop var_A0
  loc_ABB778: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_ABB77D: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_ABB78A: FLdRfVar var_A4
  loc_ABB78D: FMemLdPr
  loc_ABB792:  = Me.RecordCount
  loc_ABB797: ILdRf var_A4
  loc_ABB79A: LitI4 0
  loc_ABB79F: GtI4
  loc_ABB7A0: BranchF loc_ABBC2C
  loc_ABB7A3: LitStr vbNullString
  loc_ABB7A6: ILdPr
  loc_ABB7A9: Call tblubicfisica.MsgErrorPut(from_stack_1v)
  loc_ABB7AE: FLdRfVar var_CC
  loc_ABB7B1: FLdRfVar var_BC
  loc_ABB7B4: LitVarStr var_B8, "IdUbfi"
  loc_ABB7B9: PopAdLdVar
  loc_ABB7BA: FLdRfVar var_A8
  loc_ABB7BD: FMemLdPr
  loc_ABB7C2:  = Me.Fields
  loc_ABB7C7: FLdPr var_A8
  loc_ABB7CA: from_stack_2 = Me.Item(from_stack_1)
  loc_ABB7CF: FLdPr var_BC
  loc_ABB7D2:  = Me.Value
  loc_ABB7D7: FLdRfVar var_CC
  loc_ABB7DA: CStrVarTmp
  loc_ABB7DB: FStStrNoPop var_90
  loc_ABB7DE: ILdPr
  loc_ABB7E1: Call tblubicfisica.IdUbfiPut(from_stack_1v)
  loc_ABB7E6: FFree1Str var_90
  loc_ABB7E9: FFreeAd var_A8 = ""
  loc_ABB7F0: FFree1Var var_CC = ""
  loc_ABB7F3: FLdRfVar var_CC
  loc_ABB7F6: FLdRfVar var_BC
  loc_ABB7F9: LitVarStr var_B8, "DetaUbfi"
  loc_ABB7FE: PopAdLdVar
  loc_ABB7FF: FLdRfVar var_A8
  loc_ABB802: FMemLdPr
  loc_ABB807:  = Me.Fields
  loc_ABB80C: FLdPr var_A8
  loc_ABB80F: from_stack_2 = Me.Item(from_stack_1)
  loc_ABB814: FLdPr var_BC
  loc_ABB817:  = Me.Value
  loc_ABB81C: FLdRfVar var_CC
  loc_ABB81F: CStrVarTmp
  loc_ABB820: FStStrNoPop var_90
  loc_ABB823: ILdPr
  loc_ABB826: Call tblubicfisica.DetaUbfiPut(from_stack_1v)
  loc_ABB82B: FFree1Str var_90
  loc_ABB82E: FFreeAd var_A8 = ""
  loc_ABB835: FFree1Var var_CC = ""
  loc_ABB838: FLdRfVar var_CC
  loc_ABB83B: FLdRfVar var_BC
  loc_ABB83E: LitVarStr var_B8, "CucuPers"
  loc_ABB843: PopAdLdVar
  loc_ABB844: FLdRfVar var_A8
  loc_ABB847: FMemLdPr
  loc_ABB84C:  = Me.Fields
  loc_ABB851: FLdPr var_A8
  loc_ABB854: from_stack_2 = Me.Item(from_stack_1)
  loc_ABB859: FLdPr var_BC
  loc_ABB85C:  = Me.Value
  loc_ABB861: FLdRfVar var_CC
  loc_ABB864: CStrVarTmp
  loc_ABB865: FStStrNoPop var_90
  loc_ABB868: ILdPr
  loc_ABB86B: Call tblubicfisica.CucuPersPut(from_stack_1v)
  loc_ABB870: FFree1Str var_90
  loc_ABB873: FFreeAd var_A8 = ""
  loc_ABB87A: FFree1Var var_CC = ""
  loc_ABB87D: FLdRfVar var_CC
  loc_ABB880: FLdRfVar var_BC
  loc_ABB883: LitVarStr var_B8, "CodiTiUbfi"
  loc_ABB888: PopAdLdVar
  loc_ABB889: FLdRfVar var_A8
  loc_ABB88C: FMemLdPr
  loc_ABB891:  = Me.Fields
  loc_ABB896: FLdPr var_A8
  loc_ABB899: from_stack_2 = Me.Item(from_stack_1)
  loc_ABB89E: FLdPr var_BC
  loc_ABB8A1:  = Me.Value
  loc_ABB8A6: FLdRfVar var_CC
  loc_ABB8A9: CStrVarTmp
  loc_ABB8AA: FStStrNoPop var_90
  loc_ABB8AD: ILdPr
  loc_ABB8B0: Call tblubicfisica.CodiTiUbfiPut(from_stack_1v)
  loc_ABB8B5: FFree1Str var_90
  loc_ABB8B8: FFreeAd var_A8 = ""
  loc_ABB8BF: FFree1Var var_CC = ""
  loc_ABB8C2: FLdRfVar var_CC
  loc_ABB8C5: FLdRfVar var_BC
  loc_ABB8C8: LitVarStr var_B8, "TeleUbfi"
  loc_ABB8CD: PopAdLdVar
  loc_ABB8CE: FLdRfVar var_A8
  loc_ABB8D1: FMemLdPr
  loc_ABB8D6:  = Me.Fields
  loc_ABB8DB: FLdPr var_A8
  loc_ABB8DE: from_stack_2 = Me.Item(from_stack_1)
  loc_ABB8E3: FLdPr var_BC
  loc_ABB8E6:  = Me.Value
  loc_ABB8EB: FLdRfVar var_CC
  loc_ABB8EE: CStrVarTmp
  loc_ABB8EF: FStStrNoPop var_90
  loc_ABB8F2: ILdPr
  loc_ABB8F5: Call tblubicfisica.TeleUbfiPut(from_stack_1v)
  loc_ABB8FA: FFree1Str var_90
  loc_ABB8FD: FFreeAd var_A8 = ""
  loc_ABB904: FFree1Var var_CC = ""
  loc_ABB907: FLdRfVar var_CC
  loc_ABB90A: FLdRfVar var_BC
  loc_ABB90D: LitVarStr var_B8, "CeluUbfi"
  loc_ABB912: PopAdLdVar
  loc_ABB913: FLdRfVar var_A8
  loc_ABB916: FMemLdPr
  loc_ABB91B:  = Me.Fields
  loc_ABB920: FLdPr var_A8
  loc_ABB923: from_stack_2 = Me.Item(from_stack_1)
  loc_ABB928: FLdPr var_BC
  loc_ABB92B:  = Me.Value
  loc_ABB930: FLdRfVar var_CC
  loc_ABB933: CStrVarTmp
  loc_ABB934: FStStrNoPop var_90
  loc_ABB937: ILdPr
  loc_ABB93A: Call tblubicfisica.CeluUbfiPut(from_stack_1v)
  loc_ABB93F: FFree1Str var_90
  loc_ABB942: FFreeAd var_A8 = ""
  loc_ABB949: FFree1Var var_CC = ""
  loc_ABB94C: FLdRfVar var_CC
  loc_ABB94F: FLdRfVar var_BC
  loc_ABB952: LitVarStr var_B8, "DireUbfi"
  loc_ABB957: PopAdLdVar
  loc_ABB958: FLdRfVar var_A8
  loc_ABB95B: FMemLdPr
  loc_ABB960:  = Me.Fields
  loc_ABB965: FLdPr var_A8
  loc_ABB968: from_stack_2 = Me.Item(from_stack_1)
  loc_ABB96D: FLdPr var_BC
  loc_ABB970:  = Me.Value
  loc_ABB975: FLdRfVar var_CC
  loc_ABB978: CStrVarTmp
  loc_ABB979: FStStrNoPop var_90
  loc_ABB97C: ILdPr
  loc_ABB97F: Call tblubicfisica.DireUbfiPut(from_stack_1v)
  loc_ABB984: FFree1Str var_90
  loc_ABB987: FFreeAd var_A8 = ""
  loc_ABB98E: FFree1Var var_CC = ""
  loc_ABB991: FLdRfVar var_CC
  loc_ABB994: FLdRfVar var_BC
  loc_ABB997: LitVarStr var_B8, "AltaUsua"
  loc_ABB99C: PopAdLdVar
  loc_ABB99D: FLdRfVar var_A8
  loc_ABB9A0: FMemLdPr
  loc_ABB9A5:  = Me.Fields
  loc_ABB9AA: FLdPr var_A8
  loc_ABB9AD: from_stack_2 = Me.Item(from_stack_1)
  loc_ABB9B2: FLdPr var_BC
  loc_ABB9B5:  = Me.Value
  loc_ABB9BA: FLdRfVar var_CC
  loc_ABB9BD: CStrVarTmp
  loc_ABB9BE: FStStrNoPop var_90
  loc_ABB9C1: ILdPr
  loc_ABB9C4: Call tblubicfisica.AltaUsuaPut(from_stack_1v)
  loc_ABB9C9: FFree1Str var_90
  loc_ABB9CC: FFreeAd var_A8 = ""
  loc_ABB9D3: FFree1Var var_CC = ""
  loc_ABB9D6: FLdRfVar var_CC
  loc_ABB9D9: FLdRfVar var_BC
  loc_ABB9DC: LitVarStr var_B8, "AltaFeho"
  loc_ABB9E1: PopAdLdVar
  loc_ABB9E2: FLdRfVar var_A8
  loc_ABB9E5: FMemLdPr
  loc_ABB9EA:  = Me.Fields
  loc_ABB9EF: FLdPr var_A8
  loc_ABB9F2: from_stack_2 = Me.Item(from_stack_1)
  loc_ABB9F7: FLdPr var_BC
  loc_ABB9FA:  = Me.Value
  loc_ABB9FF: FLdRfVar var_CC
  loc_ABBA02: CStrVarTmp
  loc_ABBA03: FStStrNoPop var_90
  loc_ABBA06: ILdPr
  loc_ABBA09: Call tblubicfisica.AltaFehoPut(from_stack_1v)
  loc_ABBA0E: FFree1Str var_90
  loc_ABBA11: FFreeAd var_A8 = ""
  loc_ABBA18: FFree1Var var_CC = ""
  loc_ABBA1B: FLdRfVar var_CC
  loc_ABBA1E: FLdRfVar var_BC
  loc_ABBA21: LitVarStr var_B8, "ModiUsua"
  loc_ABBA26: PopAdLdVar
  loc_ABBA27: FLdRfVar var_A8
  loc_ABBA2A: FMemLdPr
  loc_ABBA2F:  = Me.Fields
  loc_ABBA34: FLdPr var_A8
  loc_ABBA37: from_stack_2 = Me.Item(from_stack_1)
  loc_ABBA3C: FLdPr var_BC
  loc_ABBA3F:  = Me.Value
  loc_ABBA44: FLdRfVar var_CC
  loc_ABBA47: CStrVarTmp
  loc_ABBA48: FStStrNoPop var_90
  loc_ABBA4B: ILdPr
  loc_ABBA4E: Call tblubicfisica.ModiUsuaPut(from_stack_1v)
  loc_ABBA53: FFree1Str var_90
  loc_ABBA56: FFreeAd var_A8 = ""
  loc_ABBA5D: FFree1Var var_CC = ""
  loc_ABBA60: FLdRfVar var_CC
  loc_ABBA63: FLdRfVar var_BC
  loc_ABBA66: LitVarStr var_B8, "ModiFeho"
  loc_ABBA6B: PopAdLdVar
  loc_ABBA6C: FLdRfVar var_A8
  loc_ABBA6F: FMemLdPr
  loc_ABBA74:  = Me.Fields
  loc_ABBA79: FLdPr var_A8
  loc_ABBA7C: from_stack_2 = Me.Item(from_stack_1)
  loc_ABBA81: FLdPr var_BC
  loc_ABBA84:  = Me.Value
  loc_ABBA89: FLdRfVar var_104
  loc_ABBA8C: LitVarStr var_100, "ModiFeho"
  loc_ABBA91: PopAdLdVar
  loc_ABBA92: FLdRfVar var_F0
  loc_ABBA95: FMemLdPr
  loc_ABBA9A:  = Me.Fields
  loc_ABBA9F: FLdPr var_F0
  loc_ABBAA2: from_stack_2 = Me.Item(from_stack_1)
  loc_ABBAA7: LitVarStr var_134, vbNullString
  loc_ABBAAC: FStVarCopyObj var_144
  loc_ABBAAF: FLdRfVar var_144
  loc_ABBAB2: FLdZeroAd var_104
  loc_ABBAB5: CVarAd
  loc_ABBAB9: FLdRfVar var_CC
  loc_ABBABC: LitVarStr var_DC, vbNullString
  loc_ABBAC1: HardType
  loc_ABBAC2: NeVar var_EC
  loc_ABBAC6: FStVar var_114
  loc_ABBACA: FLdRfVar var_114
  loc_ABBACD: FLdRfVar var_154
  loc_ABBAD0: ImpAdCallFPR4  = IIf(, , )
  loc_ABBAD5: FLdRfVar var_154
  loc_ABBAD8: CStrVarVal var_90
  loc_ABBADC: ILdPr
  loc_ABBADF: Call tblubicfisica.ModiFehoPut(from_stack_1v)
  loc_ABBAE4: FFree1Str var_90
  loc_ABBAE7: FFreeAd var_A8 = "": var_BC = ""
  loc_ABBAF0: FFreeVar var_CC = "": var_114 = "": var_124 = "": var_144 = ""
  loc_ABBAFD: FLdRfVar var_CC
  loc_ABBB00: FLdRfVar var_BC
  loc_ABBB03: LitVarStr var_B8, "BajaUsua"
  loc_ABBB08: PopAdLdVar
  loc_ABBB09: FLdRfVar var_A8
  loc_ABBB0C: FMemLdPr
  loc_ABBB11:  = Me.Fields
  loc_ABBB16: FLdPr var_A8
  loc_ABBB19: from_stack_2 = Me.Item(from_stack_1)
  loc_ABBB1E: FLdPr var_BC
  loc_ABBB21:  = Me.Value
  loc_ABBB26: FLdRfVar var_CC
  loc_ABBB29: CStrVarTmp
  loc_ABBB2A: FStStrNoPop var_90
  loc_ABBB2D: ILdPr
  loc_ABBB30: Call tblubicfisica.BajaUsuaPut(from_stack_1v)
  loc_ABBB35: FFree1Str var_90
  loc_ABBB38: FFreeAd var_A8 = ""
  loc_ABBB3F: FFree1Var var_CC = ""
  loc_ABBB42: FLdRfVar var_CC
  loc_ABBB45: FLdRfVar var_BC
  loc_ABBB48: LitVarStr var_B8, "BajaFeho"
  loc_ABBB4D: PopAdLdVar
  loc_ABBB4E: FLdRfVar var_A8
  loc_ABBB51: FMemLdPr
  loc_ABBB56:  = Me.Fields
  loc_ABBB5B: FLdPr var_A8
  loc_ABBB5E: from_stack_2 = Me.Item(from_stack_1)
  loc_ABBB63: FLdPr var_BC
  loc_ABBB66:  = Me.Value
  loc_ABBB6B: FLdRfVar var_104
  loc_ABBB6E: LitVarStr var_100, "BajaFeho"
  loc_ABBB73: PopAdLdVar
  loc_ABBB74: FLdRfVar var_F0
  loc_ABBB77: FMemLdPr
  loc_ABBB7C:  = Me.Fields
  loc_ABBB81: FLdPr var_F0
  loc_ABBB84: from_stack_2 = Me.Item(from_stack_1)
  loc_ABBB89: LitVarStr var_134, vbNullString
  loc_ABBB8E: FStVarCopyObj var_144
  loc_ABBB91: FLdRfVar var_144
  loc_ABBB94: FLdZeroAd var_104
  loc_ABBB97: CVarAd
  loc_ABBB9B: FLdRfVar var_CC
  loc_ABBB9E: LitVarStr var_DC, vbNullString
  loc_ABBBA3: HardType
  loc_ABBBA4: NeVar var_EC
  loc_ABBBA8: FStVar var_114
  loc_ABBBAC: FLdRfVar var_114
  loc_ABBBAF: FLdRfVar var_154
  loc_ABBBB2: ImpAdCallFPR4  = IIf(, , )
  loc_ABBBB7: FLdRfVar var_154
  loc_ABBBBA: CStrVarVal var_90
  loc_ABBBBE: ILdPr
  loc_ABBBC1: Call tblubicfisica.BajaFehoPut(from_stack_1v)
  loc_ABBBC6: FFree1Str var_90
  loc_ABBBC9: FFreeAd var_A8 = "": var_BC = ""
  loc_ABBBD2: FFreeVar var_CC = "": var_114 = "": var_124 = "": var_144 = ""
  loc_ABBBDF: FLdRfVar var_CC
  loc_ABBBE2: FLdRfVar var_BC
  loc_ABBBE5: LitVarStr var_B8, "BajaMoti"
  loc_ABBBEA: PopAdLdVar
  loc_ABBBEB: FLdRfVar var_A8
  loc_ABBBEE: FMemLdPr
  loc_ABBBF3:  = Me.Fields
  loc_ABBBF8: FLdPr var_A8
  loc_ABBBFB: from_stack_2 = Me.Item(from_stack_1)
  loc_ABBC00: FLdPr var_BC
  loc_ABBC03:  = Me.Value
  loc_ABBC08: FLdRfVar var_CC
  loc_ABBC0B: CStrVarTmp
  loc_ABBC0C: FStStrNoPop var_90
  loc_ABBC0F: ILdPr
  loc_ABBC12: Call tblubicfisica.BajaMotiPut(from_stack_1v)
  loc_ABBC17: FFree1Str var_90
  loc_ABBC1A: FFreeAd var_A8 = ""
  loc_ABBC21: FFree1Var var_CC = ""
  loc_ABBC24: LitI2_Byte &HFF
  loc_ABBC26: FStI2 var_86
  loc_ABBC29: Branch loc_ABBCD6
  loc_ABBC2C: LitStr "La Ubicación Física NO EXISTE. Verifique..."
  loc_ABBC2F: ILdPr
  loc_ABBC32: Call tblubicfisica.MsgErrorPut(from_stack_1v)
  loc_ABBC37: LitStr vbNullString
  loc_ABBC3A: ILdPr
  loc_ABBC3D: Call tblubicfisica.IdUbfiPut(from_stack_1v)
  loc_ABBC42: LitStr vbNullString
  loc_ABBC45: ILdPr
  loc_ABBC48: Call tblubicfisica.DetaUbfiPut(from_stack_1v)
  loc_ABBC4D: LitStr vbNullString
  loc_ABBC50: ILdPr
  loc_ABBC53: Call tblubicfisica.CucuPersPut(from_stack_1v)
  loc_ABBC58: LitStr vbNullString
  loc_ABBC5B: ILdPr
  loc_ABBC5E: Call tblubicfisica.CodiTiUbfiPut(from_stack_1v)
  loc_ABBC63: LitStr vbNullString
  loc_ABBC66: ILdPr
  loc_ABBC69: Call tblubicfisica.TeleUbfiPut(from_stack_1v)
  loc_ABBC6E: LitStr vbNullString
  loc_ABBC71: ILdPr
  loc_ABBC74: Call tblubicfisica.CeluUbfiPut(from_stack_1v)
  loc_ABBC79: LitStr vbNullString
  loc_ABBC7C: ILdPr
  loc_ABBC7F: Call tblubicfisica.DireUbfiPut(from_stack_1v)
  loc_ABBC84: LitStr vbNullString
  loc_ABBC87: ILdPr
  loc_ABBC8A: Call tblubicfisica.AltaUsuaPut(from_stack_1v)
  loc_ABBC8F: LitStr vbNullString
  loc_ABBC92: ILdPr
  loc_ABBC95: Call tblubicfisica.AltaFehoPut(from_stack_1v)
  loc_ABBC9A: LitStr vbNullString
  loc_ABBC9D: ILdPr
  loc_ABBCA0: Call tblubicfisica.ModiUsuaPut(from_stack_1v)
  loc_ABBCA5: LitStr vbNullString
  loc_ABBCA8: ILdPr
  loc_ABBCAB: Call tblubicfisica.ModiFehoPut(from_stack_1v)
  loc_ABBCB0: LitStr vbNullString
  loc_ABBCB3: ILdPr
  loc_ABBCB6: Call tblubicfisica.BajaUsuaPut(from_stack_1v)
  loc_ABBCBB: LitStr vbNullString
  loc_ABBCBE: ILdPr
  loc_ABBCC1: Call tblubicfisica.BajaFehoPut(from_stack_1v)
  loc_ABBCC6: LitStr vbNullString
  loc_ABBCC9: ILdPr
  loc_ABBCCC: Call tblubicfisica.BajaMotiPut(from_stack_1v)
  loc_ABBCD1: LitI2_Byte 0
  loc_ABBCD3: FStI2 var_86
  loc_ABBCD6: ExitProcI2
End Function

Private Function Proc_259_37_B5F860(arg_C, arg_10) 'B5F860
  'Data Table: 4569C4
  loc_B5ED88: ILdRf arg_C
  loc_B5ED8B: FStStrCopy var_8C
  loc_B5ED8E: ILdRf arg_10
  loc_B5ED91: FStStrCopy var_90
  loc_B5ED94: LitStr "SELECT IFNULL(ugp.PeriInfo,0) PeriInfo, ug.CodiUnga, ug.DetaUnga"
  loc_B5ED97: LitStr ", IFNULL(ugp.CodiPart,'') CodiPart, IFNULL(p.DetaPart,'') DetaPart, IFNULL(ugp.PermPart,0) PermPart"
  loc_B5ED9A: ConcatStr
  loc_B5ED9B: FStStrNoPop var_94
  loc_B5ED9E: LitStr ", IFNULL(ugp.CodiInsu,0) CodiInsu, IFNULL(i.DetaInsu,'') DetaInsu, IFNULL(ugp.PermInsu,0) PermInsu"
  loc_B5EDA1: ConcatStr
  loc_B5EDA2: FStStrNoPop var_98
  loc_B5EDA5: LitStr ", IFNULL(ugp.CodiOrga,'') CodiOrga, IFNULL(orga.DetaOrga,'') DetaOrga, IFNULL(ugp.PermOrga,0) PermOrga"
  loc_B5EDA8: ConcatStr
  loc_B5EDA9: FStStrNoPop var_9C
  loc_B5EDAC: LitStr ", IFNULL(ugp.CodiFifu,'') CodiFifu, IFNULL(f.DetaFifu,'') DetaFifu, IFNULL(ugp.PermFifu,0) PermFifu"
  loc_B5EDAF: ConcatStr
  loc_B5EDB0: FStStrNoPop var_A0
  loc_B5EDB3: LitStr ", IFNULL(ugp.CucuProv,0) CucuProv, IFNULL(prov.DetaProv,'') DetaProv, IFNULL(ugp.PermProv,0) PermProv"
  loc_B5EDB6: ConcatStr
  loc_B5EDB7: FStStrNoPop var_A4
  loc_B5EDBA: LitStr ", IFNULL(ugp.ImpoUgpe,0) ImpoUgpe, IFNULL(ugp.AumeUgpe,0) AumeUgpe, IFNULL(ugp.DismUgpe,0) DismUgpe"
  loc_B5EDBD: ConcatStr
  loc_B5EDBE: FStStrNoPop var_A8
  loc_B5EDC1: LitStr ", IFNULL(ugp.CoimUgpe,0) CoimUgpe, IFNULL(ugp.ObseUgpe,'') ObseUgpe"
  loc_B5EDC4: ConcatStr
  loc_B5EDC5: FStStrNoPop var_AC
  loc_B5EDC8: LitStr ", ug.AltaUsua, ug.AltaFeho, ug.ModiUsua, ug.ModiFeho, ug.BajaUsua, ug.BajaFeho, ug.BajaMoti"
  loc_B5EDCB: ConcatStr
  loc_B5EDCC: FStStrNoPop var_B0
  loc_B5EDCF: LitStr " FROM unidadgasto ug"
  loc_B5EDD2: ConcatStr
  loc_B5EDD3: FStStrNoPop var_B4
  loc_B5EDD6: LitStr " LEFT JOIN ugperiodo ugp ON ugp.CodiUnga = ug.CodiUnga AND ugp.PeriInfo= "
  loc_B5EDD9: ConcatStr
  loc_B5EDDA: FStStrNoPop var_B8
  loc_B5EDDD: ILdRf var_8C
  loc_B5EDE0: ConcatStr
  loc_B5EDE1: FStStrNoPop var_BC
  loc_B5EDE4: LitStr " LEFT JOIN partida p ON p.PeriInfo = ugp.PeriInfo AND p.CodiPart = ugp.CodiPart"
  loc_B5EDE7: ConcatStr
  loc_B5EDE8: FStStrNoPop var_C0
  loc_B5EDEB: LitStr " LEFT JOIN infogov.insumo i ON i.CodiInsu = ugp.CodiInsu"
  loc_B5EDEE: ConcatStr
  loc_B5EDEF: FStStrNoPop var_C4
  loc_B5EDF2: LitStr " LEFT JOIN infogov.organigrama orga ON orga.PeriInfo = ugp.PeriInfo AND orga.CodiOrga = ugp.CodiOrga"
  loc_B5EDF5: ConcatStr
  loc_B5EDF6: FStStrNoPop var_C8
  loc_B5EDF9: LitStr " LEFT JOIN finalidad f ON f.PeriInfo = ugp.PeriInfo AND f.CodiFifu=ugp.CodiFifu"
  loc_B5EDFC: ConcatStr
  loc_B5EDFD: FStStrNoPop var_CC
  loc_B5EE00: LitStr " LEFT JOIN proveedor prov ON prov.CucuPers = ugp.CucuProv"
  loc_B5EE03: ConcatStr
  loc_B5EE04: FStStrNoPop var_D0
  loc_B5EE07: LitStr " WHERE ug.CodiUnga = '"
  loc_B5EE0A: ConcatStr
  loc_B5EE0B: FStStrNoPop var_D4
  loc_B5EE0E: ILdRf var_90
  loc_B5EE11: ConcatStr
  loc_B5EE12: FStStrNoPop var_D8
  loc_B5EE15: LitStr "';"
  loc_B5EE18: ConcatStr
  loc_B5EE19: FStStrNoPop var_DC
  loc_B5EE1C: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_B5EE21: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B5EE4A: FLdRfVar var_E0
  loc_B5EE4D: FMemLdPr
  loc_B5EE52:  = Me.RecordCount
  loc_B5EE57: ILdRf var_E0
  loc_B5EE5A: LitI4 0
  loc_B5EE5F: GtI4
  loc_B5EE60: BranchF loc_B5F73C
  loc_B5EE63: LitStr vbNullString
  loc_B5EE66: ILdPr
  loc_B5EE69: Call tblunidadgasto.MsgErrorPut(from_stack_1v)
  loc_B5EE6E: FLdRfVar var_108
  loc_B5EE71: FLdRfVar var_F8
  loc_B5EE74: LitVarStr var_F4, "PeriInfo"
  loc_B5EE79: PopAdLdVar
  loc_B5EE7A: FLdRfVar var_E4
  loc_B5EE7D: FMemLdPr
  loc_B5EE82:  = Me.Fields
  loc_B5EE87: FLdPr var_E4
  loc_B5EE8A: from_stack_2 = Me.Item(from_stack_1)
  loc_B5EE8F: FLdPr var_F8
  loc_B5EE92:  = Me.Value
  loc_B5EE97: FLdRfVar var_108
  loc_B5EE9A: CStrVarTmp
  loc_B5EE9B: FStStrNoPop var_94
  loc_B5EE9E: ILdPr
  loc_B5EEA1: Call tblunidadgasto.PeriInfoPut(from_stack_1v)
  loc_B5EEA6: FFree1Str var_94
  loc_B5EEA9: FFreeAd var_E4 = ""
  loc_B5EEB0: FFree1Var var_108 = ""
  loc_B5EEB3: FLdRfVar var_108
  loc_B5EEB6: FLdRfVar var_F8
  loc_B5EEB9: LitVarStr var_F4, "CodiUnga"
  loc_B5EEBE: PopAdLdVar
  loc_B5EEBF: FLdRfVar var_E4
  loc_B5EEC2: FMemLdPr
  loc_B5EEC7:  = Me.Fields
  loc_B5EECC: FLdPr var_E4
  loc_B5EECF: from_stack_2 = Me.Item(from_stack_1)
  loc_B5EED4: FLdPr var_F8
  loc_B5EED7:  = Me.Value
  loc_B5EEDC: FLdRfVar var_108
  loc_B5EEDF: CStrVarTmp
  loc_B5EEE0: FStStrNoPop var_94
  loc_B5EEE3: ILdPr
  loc_B5EEE6: Call tblunidadgasto.CodiUngaPut(from_stack_1v)
  loc_B5EEEB: FFree1Str var_94
  loc_B5EEEE: FFreeAd var_E4 = ""
  loc_B5EEF5: FFree1Var var_108 = ""
  loc_B5EEF8: FLdRfVar var_108
  loc_B5EEFB: FLdRfVar var_F8
  loc_B5EEFE: LitVarStr var_F4, "DetaUnga"
  loc_B5EF03: PopAdLdVar
  loc_B5EF04: FLdRfVar var_E4
  loc_B5EF07: FMemLdPr
  loc_B5EF0C:  = Me.Fields
  loc_B5EF11: FLdPr var_E4
  loc_B5EF14: from_stack_2 = Me.Item(from_stack_1)
  loc_B5EF19: FLdPr var_F8
  loc_B5EF1C:  = Me.Value
  loc_B5EF21: FLdRfVar var_108
  loc_B5EF24: CStrVarTmp
  loc_B5EF25: FStStrNoPop var_94
  loc_B5EF28: ILdPr
  loc_B5EF2B: Call tblunidadgasto.DetaUngaPut(from_stack_1v)
  loc_B5EF30: FFree1Str var_94
  loc_B5EF33: FFreeAd var_E4 = ""
  loc_B5EF3A: FFree1Var var_108 = ""
  loc_B5EF3D: FLdRfVar var_108
  loc_B5EF40: FLdRfVar var_F8
  loc_B5EF43: LitVarStr var_F4, "CodiOrga"
  loc_B5EF48: PopAdLdVar
  loc_B5EF49: FLdRfVar var_E4
  loc_B5EF4C: FMemLdPr
  loc_B5EF51:  = Me.Fields
  loc_B5EF56: FLdPr var_E4
  loc_B5EF59: from_stack_2 = Me.Item(from_stack_1)
  loc_B5EF5E: FLdPr var_F8
  loc_B5EF61:  = Me.Value
  loc_B5EF66: FLdRfVar var_108
  loc_B5EF69: CStrVarTmp
  loc_B5EF6A: FStStrNoPop var_94
  loc_B5EF6D: ILdPr
  loc_B5EF70: Call tblunidadgasto.CodiOrgaPut(from_stack_1v)
  loc_B5EF75: FFree1Str var_94
  loc_B5EF78: FFreeAd var_E4 = ""
  loc_B5EF7F: FFree1Var var_108 = ""
  loc_B5EF82: FLdRfVar var_108
  loc_B5EF85: FLdRfVar var_F8
  loc_B5EF88: LitVarStr var_F4, "DetaOrga"
  loc_B5EF8D: PopAdLdVar
  loc_B5EF8E: FLdRfVar var_E4
  loc_B5EF91: FMemLdPr
  loc_B5EF96:  = Me.Fields
  loc_B5EF9B: FLdPr var_E4
  loc_B5EF9E: from_stack_2 = Me.Item(from_stack_1)
  loc_B5EFA3: FLdPr var_F8
  loc_B5EFA6:  = Me.Value
  loc_B5EFAB: FLdRfVar var_108
  loc_B5EFAE: CStrVarTmp
  loc_B5EFAF: FStStrNoPop var_94
  loc_B5EFB2: ILdPr
  loc_B5EFB5: Call tblunidadgasto.DetaOrgaPut(from_stack_1v)
  loc_B5EFBA: FFree1Str var_94
  loc_B5EFBD: FFreeAd var_E4 = ""
  loc_B5EFC4: FFree1Var var_108 = ""
  loc_B5EFC7: FLdRfVar var_108
  loc_B5EFCA: FLdRfVar var_F8
  loc_B5EFCD: LitVarStr var_F4, "PermOrga"
  loc_B5EFD2: PopAdLdVar
  loc_B5EFD3: FLdRfVar var_E4
  loc_B5EFD6: FMemLdPr
  loc_B5EFDB:  = Me.Fields
  loc_B5EFE0: FLdPr var_E4
  loc_B5EFE3: from_stack_2 = Me.Item(from_stack_1)
  loc_B5EFE8: FLdPr var_F8
  loc_B5EFEB:  = Me.Value
  loc_B5EFF0: FLdRfVar var_108
  loc_B5EFF3: CStrVarTmp
  loc_B5EFF4: FStStrNoPop var_94
  loc_B5EFF7: ILdPr
  loc_B5EFFA: Call tblunidadgasto.PermOrgaPut(from_stack_1v)
  loc_B5EFFF: FFree1Str var_94
  loc_B5F002: FFreeAd var_E4 = ""
  loc_B5F009: FFree1Var var_108 = ""
  loc_B5F00C: FLdRfVar var_108
  loc_B5F00F: FLdRfVar var_F8
  loc_B5F012: LitVarStr var_F4, "CodiInsu"
  loc_B5F017: PopAdLdVar
  loc_B5F018: FLdRfVar var_E4
  loc_B5F01B: FMemLdPr
  loc_B5F020:  = Me.Fields
  loc_B5F025: FLdPr var_E4
  loc_B5F028: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F02D: FLdPr var_F8
  loc_B5F030:  = Me.Value
  loc_B5F035: FLdRfVar var_108
  loc_B5F038: CStrVarTmp
  loc_B5F039: FStStrNoPop var_94
  loc_B5F03C: ILdPr
  loc_B5F03F: Call tblunidadgasto.CodiInsuPut(from_stack_1v)
  loc_B5F044: FFree1Str var_94
  loc_B5F047: FFreeAd var_E4 = ""
  loc_B5F04E: FFree1Var var_108 = ""
  loc_B5F051: FLdRfVar var_108
  loc_B5F054: FLdRfVar var_F8
  loc_B5F057: LitVarStr var_F4, "DetaInsu"
  loc_B5F05C: PopAdLdVar
  loc_B5F05D: FLdRfVar var_E4
  loc_B5F060: FMemLdPr
  loc_B5F065:  = Me.Fields
  loc_B5F06A: FLdPr var_E4
  loc_B5F06D: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F072: FLdPr var_F8
  loc_B5F075:  = Me.Value
  loc_B5F07A: FLdRfVar var_108
  loc_B5F07D: CStrVarTmp
  loc_B5F07E: FStStrNoPop var_94
  loc_B5F081: ILdPr
  loc_B5F084: Call tblunidadgasto.DetaInsuPut(from_stack_1v)
  loc_B5F089: FFree1Str var_94
  loc_B5F08C: FFreeAd var_E4 = ""
  loc_B5F093: FFree1Var var_108 = ""
  loc_B5F096: FLdRfVar var_108
  loc_B5F099: FLdRfVar var_F8
  loc_B5F09C: LitVarStr var_F4, "PermInsu"
  loc_B5F0A1: PopAdLdVar
  loc_B5F0A2: FLdRfVar var_E4
  loc_B5F0A5: FMemLdPr
  loc_B5F0AA:  = Me.Fields
  loc_B5F0AF: FLdPr var_E4
  loc_B5F0B2: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F0B7: FLdPr var_F8
  loc_B5F0BA:  = Me.Value
  loc_B5F0BF: FLdRfVar var_108
  loc_B5F0C2: CStrVarTmp
  loc_B5F0C3: FStStrNoPop var_94
  loc_B5F0C6: ILdPr
  loc_B5F0C9: Call tblunidadgasto.PermInsuPut(from_stack_1v)
  loc_B5F0CE: FFree1Str var_94
  loc_B5F0D1: FFreeAd var_E4 = ""
  loc_B5F0D8: FFree1Var var_108 = ""
  loc_B5F0DB: FLdRfVar var_108
  loc_B5F0DE: FLdRfVar var_F8
  loc_B5F0E1: LitVarStr var_F4, "CodiPart"
  loc_B5F0E6: PopAdLdVar
  loc_B5F0E7: FLdRfVar var_E4
  loc_B5F0EA: FMemLdPr
  loc_B5F0EF:  = Me.Fields
  loc_B5F0F4: FLdPr var_E4
  loc_B5F0F7: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F0FC: FLdPr var_F8
  loc_B5F0FF:  = Me.Value
  loc_B5F104: FLdRfVar var_108
  loc_B5F107: CStrVarTmp
  loc_B5F108: FStStrNoPop var_94
  loc_B5F10B: ILdPr
  loc_B5F10E: Call tblunidadgasto.CodiPartPut(from_stack_1v)
  loc_B5F113: FFree1Str var_94
  loc_B5F116: FFreeAd var_E4 = ""
  loc_B5F11D: FFree1Var var_108 = ""
  loc_B5F120: FLdRfVar var_108
  loc_B5F123: FLdRfVar var_F8
  loc_B5F126: LitVarStr var_F4, "DetaPart"
  loc_B5F12B: PopAdLdVar
  loc_B5F12C: FLdRfVar var_E4
  loc_B5F12F: FMemLdPr
  loc_B5F134:  = Me.Fields
  loc_B5F139: FLdPr var_E4
  loc_B5F13C: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F141: FLdPr var_F8
  loc_B5F144:  = Me.Value
  loc_B5F149: FLdRfVar var_108
  loc_B5F14C: CStrVarTmp
  loc_B5F14D: FStStrNoPop var_94
  loc_B5F150: ILdPr
  loc_B5F153: Call tblunidadgasto.DetaPartPut(from_stack_1v)
  loc_B5F158: FFree1Str var_94
  loc_B5F15B: FFreeAd var_E4 = ""
  loc_B5F162: FFree1Var var_108 = ""
  loc_B5F165: FLdRfVar var_108
  loc_B5F168: FLdRfVar var_F8
  loc_B5F16B: LitVarStr var_F4, "PermPart"
  loc_B5F170: PopAdLdVar
  loc_B5F171: FLdRfVar var_E4
  loc_B5F174: FMemLdPr
  loc_B5F179:  = Me.Fields
  loc_B5F17E: FLdPr var_E4
  loc_B5F181: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F186: FLdPr var_F8
  loc_B5F189:  = Me.Value
  loc_B5F18E: FLdRfVar var_108
  loc_B5F191: CStrVarTmp
  loc_B5F192: FStStrNoPop var_94
  loc_B5F195: ILdPr
  loc_B5F198: Call tblunidadgasto.PermPartPut(from_stack_1v)
  loc_B5F19D: FFree1Str var_94
  loc_B5F1A0: FFreeAd var_E4 = ""
  loc_B5F1A7: FFree1Var var_108 = ""
  loc_B5F1AA: FLdRfVar var_108
  loc_B5F1AD: FLdRfVar var_F8
  loc_B5F1B0: LitVarStr var_F4, "CodiFifu"
  loc_B5F1B5: PopAdLdVar
  loc_B5F1B6: FLdRfVar var_E4
  loc_B5F1B9: FMemLdPr
  loc_B5F1BE:  = Me.Fields
  loc_B5F1C3: FLdPr var_E4
  loc_B5F1C6: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F1CB: FLdPr var_F8
  loc_B5F1CE:  = Me.Value
  loc_B5F1D3: FLdRfVar var_108
  loc_B5F1D6: CStrVarTmp
  loc_B5F1D7: FStStrNoPop var_94
  loc_B5F1DA: ILdPr
  loc_B5F1DD: Call tblunidadgasto.CodiFifuPut(from_stack_1v)
  loc_B5F1E2: FFree1Str var_94
  loc_B5F1E5: FFreeAd var_E4 = ""
  loc_B5F1EC: FFree1Var var_108 = ""
  loc_B5F1EF: FLdRfVar var_108
  loc_B5F1F2: FLdRfVar var_F8
  loc_B5F1F5: LitVarStr var_F4, "DetaFifu"
  loc_B5F1FA: PopAdLdVar
  loc_B5F1FB: FLdRfVar var_E4
  loc_B5F1FE: FMemLdPr
  loc_B5F203:  = Me.Fields
  loc_B5F208: FLdPr var_E4
  loc_B5F20B: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F210: FLdPr var_F8
  loc_B5F213:  = Me.Value
  loc_B5F218: FLdRfVar var_108
  loc_B5F21B: CStrVarTmp
  loc_B5F21C: FStStrNoPop var_94
  loc_B5F21F: ILdPr
  loc_B5F222: Call tblunidadgasto.DetaFifuPut(from_stack_1v)
  loc_B5F227: FFree1Str var_94
  loc_B5F22A: FFreeAd var_E4 = ""
  loc_B5F231: FFree1Var var_108 = ""
  loc_B5F234: FLdRfVar var_108
  loc_B5F237: FLdRfVar var_F8
  loc_B5F23A: LitVarStr var_F4, "PermFifu"
  loc_B5F23F: PopAdLdVar
  loc_B5F240: FLdRfVar var_E4
  loc_B5F243: FMemLdPr
  loc_B5F248:  = Me.Fields
  loc_B5F24D: FLdPr var_E4
  loc_B5F250: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F255: FLdPr var_F8
  loc_B5F258:  = Me.Value
  loc_B5F25D: FLdRfVar var_108
  loc_B5F260: CStrVarTmp
  loc_B5F261: FStStrNoPop var_94
  loc_B5F264: ILdPr
  loc_B5F267: Call tblunidadgasto.PermFifuPut(from_stack_1v)
  loc_B5F26C: FFree1Str var_94
  loc_B5F26F: FFreeAd var_E4 = ""
  loc_B5F276: FFree1Var var_108 = ""
  loc_B5F279: FLdRfVar var_108
  loc_B5F27C: FLdRfVar var_F8
  loc_B5F27F: LitVarStr var_F4, "CucuProv"
  loc_B5F284: PopAdLdVar
  loc_B5F285: FLdRfVar var_E4
  loc_B5F288: FMemLdPr
  loc_B5F28D:  = Me.Fields
  loc_B5F292: FLdPr var_E4
  loc_B5F295: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F29A: FLdPr var_F8
  loc_B5F29D:  = Me.Value
  loc_B5F2A2: FLdRfVar var_108
  loc_B5F2A5: CStrVarTmp
  loc_B5F2A6: FStStrNoPop var_94
  loc_B5F2A9: ILdPr
  loc_B5F2AC: Call tblunidadgasto.CucuProvPut(from_stack_1v)
  loc_B5F2B1: FFree1Str var_94
  loc_B5F2B4: FFreeAd var_E4 = ""
  loc_B5F2BB: FFree1Var var_108 = ""
  loc_B5F2BE: FLdRfVar var_108
  loc_B5F2C1: FLdRfVar var_F8
  loc_B5F2C4: LitVarStr var_F4, "DetaProv"
  loc_B5F2C9: PopAdLdVar
  loc_B5F2CA: FLdRfVar var_E4
  loc_B5F2CD: FMemLdPr
  loc_B5F2D2:  = Me.Fields
  loc_B5F2D7: FLdPr var_E4
  loc_B5F2DA: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F2DF: FLdPr var_F8
  loc_B5F2E2:  = Me.Value
  loc_B5F2E7: FLdRfVar var_108
  loc_B5F2EA: CStrVarTmp
  loc_B5F2EB: FStStrNoPop var_94
  loc_B5F2EE: ILdPr
  loc_B5F2F1: Call tblunidadgasto.DetaProvPut(from_stack_1v)
  loc_B5F2F6: FFree1Str var_94
  loc_B5F2F9: FFreeAd var_E4 = ""
  loc_B5F300: FFree1Var var_108 = ""
  loc_B5F303: FLdRfVar var_108
  loc_B5F306: FLdRfVar var_F8
  loc_B5F309: LitVarStr var_F4, "PermProv"
  loc_B5F30E: PopAdLdVar
  loc_B5F30F: FLdRfVar var_E4
  loc_B5F312: FMemLdPr
  loc_B5F317:  = Me.Fields
  loc_B5F31C: FLdPr var_E4
  loc_B5F31F: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F324: FLdPr var_F8
  loc_B5F327:  = Me.Value
  loc_B5F32C: FLdRfVar var_108
  loc_B5F32F: CStrVarTmp
  loc_B5F330: FStStrNoPop var_94
  loc_B5F333: ILdPr
  loc_B5F336: Call tblunidadgasto.PermProvPut(from_stack_1v)
  loc_B5F33B: FFree1Str var_94
  loc_B5F33E: FFreeAd var_E4 = ""
  loc_B5F345: FFree1Var var_108 = ""
  loc_B5F348: FLdRfVar var_108
  loc_B5F34B: FLdRfVar var_F8
  loc_B5F34E: LitVarStr var_F4, "ImpoUgpe"
  loc_B5F353: PopAdLdVar
  loc_B5F354: FLdRfVar var_E4
  loc_B5F357: FMemLdPr
  loc_B5F35C:  = Me.Fields
  loc_B5F361: FLdPr var_E4
  loc_B5F364: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F369: FLdPr var_F8
  loc_B5F36C:  = Me.Value
  loc_B5F371: FLdRfVar var_108
  loc_B5F374: CStrVarTmp
  loc_B5F375: FStStrNoPop var_94
  loc_B5F378: ILdPr
  loc_B5F37B: Call tblunidadgasto.ImpoUgpePut(from_stack_1v)
  loc_B5F380: FFree1Str var_94
  loc_B5F383: FFreeAd var_E4 = ""
  loc_B5F38A: FFree1Var var_108 = ""
  loc_B5F38D: FLdRfVar var_108
  loc_B5F390: FLdRfVar var_F8
  loc_B5F393: LitVarStr var_F4, "AumeUgpe"
  loc_B5F398: PopAdLdVar
  loc_B5F399: FLdRfVar var_E4
  loc_B5F39C: FMemLdPr
  loc_B5F3A1:  = Me.Fields
  loc_B5F3A6: FLdPr var_E4
  loc_B5F3A9: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F3AE: FLdPr var_F8
  loc_B5F3B1:  = Me.Value
  loc_B5F3B6: FLdRfVar var_108
  loc_B5F3B9: CStrVarTmp
  loc_B5F3BA: FStStrNoPop var_94
  loc_B5F3BD: ILdPr
  loc_B5F3C0: Call tblunidadgasto.AumeUgpePut(from_stack_1v)
  loc_B5F3C5: FFree1Str var_94
  loc_B5F3C8: FFreeAd var_E4 = ""
  loc_B5F3CF: FFree1Var var_108 = ""
  loc_B5F3D2: FLdRfVar var_108
  loc_B5F3D5: FLdRfVar var_F8
  loc_B5F3D8: LitVarStr var_F4, "DismUgpe"
  loc_B5F3DD: PopAdLdVar
  loc_B5F3DE: FLdRfVar var_E4
  loc_B5F3E1: FMemLdPr
  loc_B5F3E6:  = Me.Fields
  loc_B5F3EB: FLdPr var_E4
  loc_B5F3EE: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F3F3: FLdPr var_F8
  loc_B5F3F6:  = Me.Value
  loc_B5F3FB: FLdRfVar var_108
  loc_B5F3FE: CStrVarTmp
  loc_B5F3FF: FStStrNoPop var_94
  loc_B5F402: ILdPr
  loc_B5F405: Call tblunidadgasto.DismUgpePut(from_stack_1v)
  loc_B5F40A: FFree1Str var_94
  loc_B5F40D: FFreeAd var_E4 = ""
  loc_B5F414: FFree1Var var_108 = ""
  loc_B5F417: FLdRfVar var_108
  loc_B5F41A: FLdRfVar var_F8
  loc_B5F41D: LitVarStr var_F4, "CoimUgpe"
  loc_B5F422: PopAdLdVar
  loc_B5F423: FLdRfVar var_E4
  loc_B5F426: FMemLdPr
  loc_B5F42B:  = Me.Fields
  loc_B5F430: FLdPr var_E4
  loc_B5F433: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F438: FLdPr var_F8
  loc_B5F43B:  = Me.Value
  loc_B5F440: FLdRfVar var_108
  loc_B5F443: CStrVarTmp
  loc_B5F444: FStStrNoPop var_94
  loc_B5F447: ILdPr
  loc_B5F44A: Call tblunidadgasto.CoimUgpePut(from_stack_1v)
  loc_B5F44F: FFree1Str var_94
  loc_B5F452: FFreeAd var_E4 = ""
  loc_B5F459: FFree1Var var_108 = ""
  loc_B5F45C: FLdRfVar var_108
  loc_B5F45F: FLdRfVar var_F8
  loc_B5F462: LitVarStr var_F4, "ObseUgpe"
  loc_B5F467: PopAdLdVar
  loc_B5F468: FLdRfVar var_E4
  loc_B5F46B: FMemLdPr
  loc_B5F470:  = Me.Fields
  loc_B5F475: FLdPr var_E4
  loc_B5F478: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F47D: FLdPr var_F8
  loc_B5F480:  = Me.Value
  loc_B5F485: FLdRfVar var_108
  loc_B5F488: CStrVarTmp
  loc_B5F489: FStStrNoPop var_94
  loc_B5F48C: ILdPr
  loc_B5F48F: Call tblunidadgasto.ObseUgpePut(from_stack_1v)
  loc_B5F494: FFree1Str var_94
  loc_B5F497: FFreeAd var_E4 = ""
  loc_B5F49E: FFree1Var var_108 = ""
  loc_B5F4A1: FLdRfVar var_108
  loc_B5F4A4: FLdRfVar var_F8
  loc_B5F4A7: LitVarStr var_F4, "AltaUsua"
  loc_B5F4AC: PopAdLdVar
  loc_B5F4AD: FLdRfVar var_E4
  loc_B5F4B0: FMemLdPr
  loc_B5F4B5:  = Me.Fields
  loc_B5F4BA: FLdPr var_E4
  loc_B5F4BD: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F4C2: FLdPr var_F8
  loc_B5F4C5:  = Me.Value
  loc_B5F4CA: FLdRfVar var_108
  loc_B5F4CD: CStrVarTmp
  loc_B5F4CE: FStStrNoPop var_94
  loc_B5F4D1: ILdPr
  loc_B5F4D4: Call tblunidadgasto.AltaUsuaPut(from_stack_1v)
  loc_B5F4D9: FFree1Str var_94
  loc_B5F4DC: FFreeAd var_E4 = ""
  loc_B5F4E3: FFree1Var var_108 = ""
  loc_B5F4E6: FLdRfVar var_108
  loc_B5F4E9: FLdRfVar var_F8
  loc_B5F4EC: LitVarStr var_F4, "AltaFeho"
  loc_B5F4F1: PopAdLdVar
  loc_B5F4F2: FLdRfVar var_E4
  loc_B5F4F5: FMemLdPr
  loc_B5F4FA:  = Me.Fields
  loc_B5F4FF: FLdPr var_E4
  loc_B5F502: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F507: FLdPr var_F8
  loc_B5F50A:  = Me.Value
  loc_B5F50F: FLdRfVar var_108
  loc_B5F512: CStrVarTmp
  loc_B5F513: FStStrNoPop var_94
  loc_B5F516: ILdPr
  loc_B5F519: Call tblunidadgasto.AltaFehoPut(from_stack_1v)
  loc_B5F51E: FFree1Str var_94
  loc_B5F521: FFreeAd var_E4 = ""
  loc_B5F528: FFree1Var var_108 = ""
  loc_B5F52B: FLdRfVar var_108
  loc_B5F52E: FLdRfVar var_F8
  loc_B5F531: LitVarStr var_F4, "ModiUsua"
  loc_B5F536: PopAdLdVar
  loc_B5F537: FLdRfVar var_E4
  loc_B5F53A: FMemLdPr
  loc_B5F53F:  = Me.Fields
  loc_B5F544: FLdPr var_E4
  loc_B5F547: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F54C: FLdPr var_F8
  loc_B5F54F:  = Me.Value
  loc_B5F554: FLdRfVar var_108
  loc_B5F557: CStrVarTmp
  loc_B5F558: FStStrNoPop var_94
  loc_B5F55B: ILdPr
  loc_B5F55E: Call tblunidadgasto.ModiUsuaPut(from_stack_1v)
  loc_B5F563: FFree1Str var_94
  loc_B5F566: FFreeAd var_E4 = ""
  loc_B5F56D: FFree1Var var_108 = ""
  loc_B5F570: FLdRfVar var_108
  loc_B5F573: FLdRfVar var_F8
  loc_B5F576: LitVarStr var_F4, "ModiFeho"
  loc_B5F57B: PopAdLdVar
  loc_B5F57C: FLdRfVar var_E4
  loc_B5F57F: FMemLdPr
  loc_B5F584:  = Me.Fields
  loc_B5F589: FLdPr var_E4
  loc_B5F58C: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F591: FLdPr var_F8
  loc_B5F594:  = Me.Value
  loc_B5F599: FLdRfVar var_140
  loc_B5F59C: LitVarStr var_13C, "ModiFeho"
  loc_B5F5A1: PopAdLdVar
  loc_B5F5A2: FLdRfVar var_12C
  loc_B5F5A5: FMemLdPr
  loc_B5F5AA:  = Me.Fields
  loc_B5F5AF: FLdPr var_12C
  loc_B5F5B2: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F5B7: LitVarStr var_170, vbNullString
  loc_B5F5BC: FStVarCopyObj var_180
  loc_B5F5BF: FLdRfVar var_180
  loc_B5F5C2: FLdZeroAd var_140
  loc_B5F5C5: CVarAd
  loc_B5F5C9: FLdRfVar var_108
  loc_B5F5CC: LitVarStr var_118, vbNullString
  loc_B5F5D1: HardType
  loc_B5F5D2: NeVar var_128
  loc_B5F5D6: FStVar var_150
  loc_B5F5DA: FLdRfVar var_150
  loc_B5F5DD: FLdRfVar var_190
  loc_B5F5E0: ImpAdCallFPR4  = IIf(, , )
  loc_B5F5E5: FLdRfVar var_190
  loc_B5F5E8: CStrVarVal var_94
  loc_B5F5EC: ILdPr
  loc_B5F5EF: Call tblunidadgasto.ModiFehoPut(from_stack_1v)
  loc_B5F5F4: FFree1Str var_94
  loc_B5F5F7: FFreeAd var_E4 = "": var_F8 = ""
  loc_B5F600: FFreeVar var_108 = "": var_150 = "": var_160 = "": var_180 = ""
  loc_B5F60D: FLdRfVar var_108
  loc_B5F610: FLdRfVar var_F8
  loc_B5F613: LitVarStr var_F4, "BajaUsua"
  loc_B5F618: PopAdLdVar
  loc_B5F619: FLdRfVar var_E4
  loc_B5F61C: FMemLdPr
  loc_B5F621:  = Me.Fields
  loc_B5F626: FLdPr var_E4
  loc_B5F629: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F62E: FLdPr var_F8
  loc_B5F631:  = Me.Value
  loc_B5F636: FLdRfVar var_108
  loc_B5F639: CStrVarTmp
  loc_B5F63A: FStStrNoPop var_94
  loc_B5F63D: ILdPr
  loc_B5F640: Call tblunidadgasto.BajaUsuaPut(from_stack_1v)
  loc_B5F645: FFree1Str var_94
  loc_B5F648: FFreeAd var_E4 = ""
  loc_B5F64F: FFree1Var var_108 = ""
  loc_B5F652: FLdRfVar var_108
  loc_B5F655: FLdRfVar var_F8
  loc_B5F658: LitVarStr var_F4, "BajaFeho"
  loc_B5F65D: PopAdLdVar
  loc_B5F65E: FLdRfVar var_E4
  loc_B5F661: FMemLdPr
  loc_B5F666:  = Me.Fields
  loc_B5F66B: FLdPr var_E4
  loc_B5F66E: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F673: FLdPr var_F8
  loc_B5F676:  = Me.Value
  loc_B5F67B: FLdRfVar var_140
  loc_B5F67E: LitVarStr var_13C, "BajaFeho"
  loc_B5F683: PopAdLdVar
  loc_B5F684: FLdRfVar var_12C
  loc_B5F687: FMemLdPr
  loc_B5F68C:  = Me.Fields
  loc_B5F691: FLdPr var_12C
  loc_B5F694: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F699: LitVarStr var_170, vbNullString
  loc_B5F69E: FStVarCopyObj var_180
  loc_B5F6A1: FLdRfVar var_180
  loc_B5F6A4: FLdZeroAd var_140
  loc_B5F6A7: CVarAd
  loc_B5F6AB: FLdRfVar var_108
  loc_B5F6AE: LitVarStr var_118, vbNullString
  loc_B5F6B3: HardType
  loc_B5F6B4: NeVar var_128
  loc_B5F6B8: FStVar var_150
  loc_B5F6BC: FLdRfVar var_150
  loc_B5F6BF: FLdRfVar var_190
  loc_B5F6C2: ImpAdCallFPR4  = IIf(, , )
  loc_B5F6C7: FLdRfVar var_190
  loc_B5F6CA: CStrVarVal var_94
  loc_B5F6CE: ILdPr
  loc_B5F6D1: Call tblunidadgasto.BajaFehoPut(from_stack_1v)
  loc_B5F6D6: FFree1Str var_94
  loc_B5F6D9: FFreeAd var_E4 = "": var_F8 = ""
  loc_B5F6E2: FFreeVar var_108 = "": var_150 = "": var_160 = "": var_180 = ""
  loc_B5F6EF: FLdRfVar var_108
  loc_B5F6F2: FLdRfVar var_F8
  loc_B5F6F5: LitVarStr var_F4, "BajaMoti"
  loc_B5F6FA: PopAdLdVar
  loc_B5F6FB: FLdRfVar var_E4
  loc_B5F6FE: FMemLdPr
  loc_B5F703:  = Me.Fields
  loc_B5F708: FLdPr var_E4
  loc_B5F70B: from_stack_2 = Me.Item(from_stack_1)
  loc_B5F710: FLdPr var_F8
  loc_B5F713:  = Me.Value
  loc_B5F718: FLdRfVar var_108
  loc_B5F71B: CStrVarTmp
  loc_B5F71C: FStStrNoPop var_94
  loc_B5F71F: ILdPr
  loc_B5F722: Call tblunidadgasto.BajaMotiPut(from_stack_1v)
  loc_B5F727: FFree1Str var_94
  loc_B5F72A: FFreeAd var_E4 = ""
  loc_B5F731: FFree1Var var_108 = ""
  loc_B5F734: LitI2_Byte &HFF
  loc_B5F736: FStI2 var_86
  loc_B5F739: Branch loc_B5F85F
  loc_B5F73C: LitStr "La Unidad de Gasto NO EXISTE. Verifique..."
  loc_B5F73F: ILdPr
  loc_B5F742: Call tblunidadgasto.MsgErrorPut(from_stack_1v)
  loc_B5F747: LitStr vbNullString
  loc_B5F74A: ILdPr
  loc_B5F74D: Call tblunidadgasto.PeriInfoPut(from_stack_1v)
  loc_B5F752: LitStr vbNullString
  loc_B5F755: ILdPr
  loc_B5F758: Call tblunidadgasto.CodiOrgaPut(from_stack_1v)
  loc_B5F75D: LitStr vbNullString
  loc_B5F760: ILdPr
  loc_B5F763: Call tblunidadgasto.DetaOrgaPut(from_stack_1v)
  loc_B5F768: LitStr vbNullString
  loc_B5F76B: ILdPr
  loc_B5F76E: Call tblunidadgasto.CodiUngaPut(from_stack_1v)
  loc_B5F773: LitStr vbNullString
  loc_B5F776: ILdPr
  loc_B5F779: Call tblunidadgasto.DetaUngaPut(from_stack_1v)
  loc_B5F77E: LitStr vbNullString
  loc_B5F781: ILdPr
  loc_B5F784: Call tblunidadgasto.CodiInsuPut(from_stack_1v)
  loc_B5F789: LitStr vbNullString
  loc_B5F78C: ILdPr
  loc_B5F78F: Call tblunidadgasto.DetaInsuPut(from_stack_1v)
  loc_B5F794: LitStr vbNullString
  loc_B5F797: ILdPr
  loc_B5F79A: Call tblunidadgasto.CodiPartPut(from_stack_1v)
  loc_B5F79F: LitStr vbNullString
  loc_B5F7A2: ILdPr
  loc_B5F7A5: Call tblunidadgasto.DetaPartPut(from_stack_1v)
  loc_B5F7AA: LitStr vbNullString
  loc_B5F7AD: ILdPr
  loc_B5F7B0: Call tblunidadgasto.CodiFifuPut(from_stack_1v)
  loc_B5F7B5: LitStr vbNullString
  loc_B5F7B8: ILdPr
  loc_B5F7BB: Call tblunidadgasto.DetaFifuPut(from_stack_1v)
  loc_B5F7C0: LitStr vbNullString
  loc_B5F7C3: ILdPr
  loc_B5F7C6: Call tblunidadgasto.CucuProvPut(from_stack_1v)
  loc_B5F7CB: LitStr vbNullString
  loc_B5F7CE: ILdPr
  loc_B5F7D1: Call tblunidadgasto.DetaProvPut(from_stack_1v)
  loc_B5F7D6: LitStr vbNullString
  loc_B5F7D9: ILdPr
  loc_B5F7DC: Call tblunidadgasto.ImpoUgpePut(from_stack_1v)
  loc_B5F7E1: LitStr vbNullString
  loc_B5F7E4: ILdPr
  loc_B5F7E7: Call tblunidadgasto.AumeUgpePut(from_stack_1v)
  loc_B5F7EC: LitStr vbNullString
  loc_B5F7EF: ILdPr
  loc_B5F7F2: Call tblunidadgasto.DismUgpePut(from_stack_1v)
  loc_B5F7F7: LitStr vbNullString
  loc_B5F7FA: ILdPr
  loc_B5F7FD: Call tblunidadgasto.CoimUgpePut(from_stack_1v)
  loc_B5F802: LitStr vbNullString
  loc_B5F805: ILdPr
  loc_B5F808: Call tblunidadgasto.ObseUgpePut(from_stack_1v)
  loc_B5F80D: LitStr vbNullString
  loc_B5F810: ILdPr
  loc_B5F813: Call tblunidadgasto.AltaUsuaPut(from_stack_1v)
  loc_B5F818: LitStr vbNullString
  loc_B5F81B: ILdPr
  loc_B5F81E: Call tblunidadgasto.AltaFehoPut(from_stack_1v)
  loc_B5F823: LitStr vbNullString
  loc_B5F826: ILdPr
  loc_B5F829: Call tblunidadgasto.ModiUsuaPut(from_stack_1v)
  loc_B5F82E: LitStr vbNullString
  loc_B5F831: ILdPr
  loc_B5F834: Call tblunidadgasto.ModiFehoPut(from_stack_1v)
  loc_B5F839: LitStr vbNullString
  loc_B5F83C: ILdPr
  loc_B5F83F: Call tblunidadgasto.BajaUsuaPut(from_stack_1v)
  loc_B5F844: LitStr vbNullString
  loc_B5F847: ILdPr
  loc_B5F84A: Call tblunidadgasto.BajaFehoPut(from_stack_1v)
  loc_B5F84F: LitStr vbNullString
  loc_B5F852: ILdPr
  loc_B5F855: Call tblunidadgasto.BajaMotiPut(from_stack_1v)
  loc_B5F85A: LitI2_Byte 0
  loc_B5F85C: FStI2 var_86
  loc_B5F85F: ExitProcI2
End Function

Private Function Proc_259_38_B44564(arg_C) 'B44564
  'Data Table: 4569C4
  loc_B43B0C: ILdRf arg_C
  loc_B43B0F: FStStrCopy var_8C
  loc_B43B12: LitStr "SELECT usuario.*"
  loc_B43B15: LitStr ", IF(usuario.CucuPers=0 OR DetaPers IS NULL, '', DetaPers) DetaPers"
  loc_B43B18: ConcatStr
  loc_B43B19: FStStrNoPop var_90
  loc_B43B1C: LitStr " FROM infogov.usuario"
  loc_B43B1F: ConcatStr
  loc_B43B20: FStStrNoPop var_94
  loc_B43B23: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = usuario.CucuPers"
  loc_B43B26: ConcatStr
  loc_B43B27: FStStrNoPop var_98
  loc_B43B2A: LitStr " WHERE usuario.CodiUsua = '"
  loc_B43B2D: ConcatStr
  loc_B43B2E: FStStrNoPop var_9C
  loc_B43B31: ILdRf var_8C
  loc_B43B34: ConcatStr
  loc_B43B35: FStStrNoPop var_A0
  loc_B43B38: LitStr "';"
  loc_B43B3B: ConcatStr
  loc_B43B3C: FStStrNoPop var_A4
  loc_B43B3F: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_B43B44: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_B43B53: FLdRfVar var_A8
  loc_B43B56: FMemLdPr
  loc_B43B5B:  = Me.RecordCount
  loc_B43B60: ILdRf var_A8
  loc_B43B63: LitI4 0
  loc_B43B68: GtI4
  loc_B43B69: BranchF loc_B44413
  loc_B43B6C: LitStr vbNullString
  loc_B43B6F: ILdPr
  loc_B43B72: Call tblusuario.MsgErrorPut(from_stack_1v)
  loc_B43B77: FLdRfVar var_D0
  loc_B43B7A: FLdRfVar var_C0
  loc_B43B7D: LitVarStr var_BC, "CodiUsua"
  loc_B43B82: PopAdLdVar
  loc_B43B83: FLdRfVar var_AC
  loc_B43B86: FMemLdPr
  loc_B43B8B:  = Me.Fields
  loc_B43B90: FLdPr var_AC
  loc_B43B93: from_stack_2 = Me.Item(from_stack_1)
  loc_B43B98: FLdPr var_C0
  loc_B43B9B:  = Me.Value
  loc_B43BA0: FLdRfVar var_D0
  loc_B43BA3: CStrVarTmp
  loc_B43BA4: FStStrNoPop var_90
  loc_B43BA7: ILdPr
  loc_B43BAA: Call tblusuario.CodiUsuaPut(from_stack_1v)
  loc_B43BAF: FFree1Str var_90
  loc_B43BB2: FFreeAd var_AC = ""
  loc_B43BB9: FFree1Var var_D0 = ""
  loc_B43BBC: FLdRfVar var_D0
  loc_B43BBF: FLdRfVar var_C0
  loc_B43BC2: LitVarStr var_BC, "DetaUsua"
  loc_B43BC7: PopAdLdVar
  loc_B43BC8: FLdRfVar var_AC
  loc_B43BCB: FMemLdPr
  loc_B43BD0:  = Me.Fields
  loc_B43BD5: FLdPr var_AC
  loc_B43BD8: from_stack_2 = Me.Item(from_stack_1)
  loc_B43BDD: FLdPr var_C0
  loc_B43BE0:  = Me.Value
  loc_B43BE5: FLdRfVar var_D0
  loc_B43BE8: CStrVarTmp
  loc_B43BE9: FStStrNoPop var_90
  loc_B43BEC: ILdPr
  loc_B43BEF: Call tblusuario.DetaUsuaPut(from_stack_1v)
  loc_B43BF4: FFree1Str var_90
  loc_B43BF7: FFreeAd var_AC = ""
  loc_B43BFE: FFree1Var var_D0 = ""
  loc_B43C01: FLdRfVar var_D0
  loc_B43C04: FLdRfVar var_C0
  loc_B43C07: LitVarStr var_BC, "GDEUsua"
  loc_B43C0C: PopAdLdVar
  loc_B43C0D: FLdRfVar var_AC
  loc_B43C10: FMemLdPr
  loc_B43C15:  = Me.Fields
  loc_B43C1A: FLdPr var_AC
  loc_B43C1D: from_stack_2 = Me.Item(from_stack_1)
  loc_B43C22: FLdPr var_C0
  loc_B43C25:  = Me.Value
  loc_B43C2A: FLdRfVar var_D0
  loc_B43C2D: CStrVarTmp
  loc_B43C2E: FStStrNoPop var_90
  loc_B43C31: ILdPr
  loc_B43C34: Call tblusuario.GDEUsuaPut(from_stack_1v)
  loc_B43C39: FFree1Str var_90
  loc_B43C3C: FFreeAd var_AC = ""
  loc_B43C43: FFree1Var var_D0 = ""
  loc_B43C46: FLdRfVar var_D0
  loc_B43C49: FLdRfVar var_C0
  loc_B43C4C: LitVarStr var_BC, "CucuPers"
  loc_B43C51: PopAdLdVar
  loc_B43C52: FLdRfVar var_AC
  loc_B43C55: FMemLdPr
  loc_B43C5A:  = Me.Fields
  loc_B43C5F: FLdPr var_AC
  loc_B43C62: from_stack_2 = Me.Item(from_stack_1)
  loc_B43C67: FLdPr var_C0
  loc_B43C6A:  = Me.Value
  loc_B43C6F: FLdRfVar var_D0
  loc_B43C72: CStrVarTmp
  loc_B43C73: FStStrNoPop var_90
  loc_B43C76: ILdPr
  loc_B43C79: Call tblusuario.CucuPersPut(from_stack_1v)
  loc_B43C7E: FFree1Str var_90
  loc_B43C81: FFreeAd var_AC = ""
  loc_B43C88: FFree1Var var_D0 = ""
  loc_B43C8B: FLdRfVar var_D0
  loc_B43C8E: FLdRfVar var_C0
  loc_B43C91: LitVarStr var_BC, "DetaPers"
  loc_B43C96: PopAdLdVar
  loc_B43C97: FLdRfVar var_AC
  loc_B43C9A: FMemLdPr
  loc_B43C9F:  = Me.Fields
  loc_B43CA4: FLdPr var_AC
  loc_B43CA7: from_stack_2 = Me.Item(from_stack_1)
  loc_B43CAC: FLdPr var_C0
  loc_B43CAF:  = Me.Value
  loc_B43CB4: FLdRfVar var_D0
  loc_B43CB7: CStrVarTmp
  loc_B43CB8: FStStrNoPop var_90
  loc_B43CBB: ILdPr
  loc_B43CBE: Call tblusuario.DetaPersPut(from_stack_1v)
  loc_B43CC3: FFree1Str var_90
  loc_B43CC6: FFreeAd var_AC = ""
  loc_B43CCD: FFree1Var var_D0 = ""
  loc_B43CD0: FLdRfVar var_D0
  loc_B43CD3: FLdRfVar var_C0
  loc_B43CD6: LitVarStr var_BC, "ClavUsua"
  loc_B43CDB: PopAdLdVar
  loc_B43CDC: FLdRfVar var_AC
  loc_B43CDF: FMemLdPr
  loc_B43CE4:  = Me.Fields
  loc_B43CE9: FLdPr var_AC
  loc_B43CEC: from_stack_2 = Me.Item(from_stack_1)
  loc_B43CF1: FLdPr var_C0
  loc_B43CF4:  = Me.Value
  loc_B43CF9: FLdRfVar var_D0
  loc_B43CFC: CStrVarTmp
  loc_B43CFD: FStStrNoPop var_90
  loc_B43D00: ILdPr
  loc_B43D03: Call tblusuario.ClavUsuaPut(from_stack_1v)
  loc_B43D08: FFree1Str var_90
  loc_B43D0B: FFreeAd var_AC = ""
  loc_B43D12: FFree1Var var_D0 = ""
  loc_B43D15: FLdRfVar var_D0
  loc_B43D18: FLdRfVar var_C0
  loc_B43D1B: LitVarStr var_BC, "FeveUsua"
  loc_B43D20: PopAdLdVar
  loc_B43D21: FLdRfVar var_AC
  loc_B43D24: FMemLdPr
  loc_B43D29:  = Me.Fields
  loc_B43D2E: FLdPr var_AC
  loc_B43D31: from_stack_2 = Me.Item(from_stack_1)
  loc_B43D36: FLdPr var_C0
  loc_B43D39:  = Me.Value
  loc_B43D3E: FLdRfVar var_108
  loc_B43D41: LitVarStr var_104, "FeveUsua"
  loc_B43D46: PopAdLdVar
  loc_B43D47: FLdRfVar var_F4
  loc_B43D4A: FMemLdPr
  loc_B43D4F:  = Me.Fields
  loc_B43D54: FLdPr var_F4
  loc_B43D57: from_stack_2 = Me.Item(from_stack_1)
  loc_B43D5C: LitVarStr var_138, vbNullString
  loc_B43D61: FStVarCopyObj var_148
  loc_B43D64: FLdRfVar var_148
  loc_B43D67: FLdZeroAd var_108
  loc_B43D6A: CVarAd
  loc_B43D6E: FLdRfVar var_D0
  loc_B43D71: LitVarStr var_E0, vbNullString
  loc_B43D76: HardType
  loc_B43D77: NeVar var_F0
  loc_B43D7B: FStVar var_118
  loc_B43D7F: FLdRfVar var_118
  loc_B43D82: FLdRfVar var_158
  loc_B43D85: ImpAdCallFPR4  = IIf(, , )
  loc_B43D8A: FLdRfVar var_158
  loc_B43D8D: CStrVarVal var_90
  loc_B43D91: ILdPr
  loc_B43D94: Call tblusuario.FeveUsuaPut(from_stack_1v)
  loc_B43D99: FFree1Str var_90
  loc_B43D9C: FFreeAd var_AC = "": var_C0 = ""
  loc_B43DA5: FFreeVar var_D0 = "": var_118 = "": var_128 = "": var_148 = ""
  loc_B43DB2: FLdRfVar var_D0
  loc_B43DB5: FLdRfVar var_C0
  loc_B43DB8: LitVarStr var_BC, "InhaUsua"
  loc_B43DBD: PopAdLdVar
  loc_B43DBE: FLdRfVar var_AC
  loc_B43DC1: FMemLdPr
  loc_B43DC6:  = Me.Fields
  loc_B43DCB: FLdPr var_AC
  loc_B43DCE: from_stack_2 = Me.Item(from_stack_1)
  loc_B43DD3: FLdPr var_C0
  loc_B43DD6:  = Me.Value
  loc_B43DDB: FLdRfVar var_D0
  loc_B43DDE: CStrVarTmp
  loc_B43DDF: FStStrNoPop var_90
  loc_B43DE2: ILdPr
  loc_B43DE5: Call tblusuario.InhaUsuaPut(from_stack_1v)
  loc_B43DEA: FFree1Str var_90
  loc_B43DED: FFreeAd var_AC = ""
  loc_B43DF4: FFree1Var var_D0 = ""
  loc_B43DF7: FLdRfVar var_D0
  loc_B43DFA: FLdRfVar var_C0
  loc_B43DFD: LitVarStr var_BC, "CodiEnre"
  loc_B43E02: PopAdLdVar
  loc_B43E03: FLdRfVar var_AC
  loc_B43E06: FMemLdPr
  loc_B43E0B:  = Me.Fields
  loc_B43E10: FLdPr var_AC
  loc_B43E13: from_stack_2 = Me.Item(from_stack_1)
  loc_B43E18: FLdPr var_C0
  loc_B43E1B:  = Me.Value
  loc_B43E20: FLdRfVar var_D0
  loc_B43E23: CStrVarTmp
  loc_B43E24: FStStrNoPop var_90
  loc_B43E27: ILdPr
  loc_B43E2A: Call tblusuario.CodiEnrePut(from_stack_1v)
  loc_B43E2F: FFree1Str var_90
  loc_B43E32: FFreeAd var_AC = ""
  loc_B43E39: FFree1Var var_D0 = ""
  loc_B43E3C: FLdRfVar var_D0
  loc_B43E3F: FLdRfVar var_C0
  loc_B43E42: LitVarStr var_BC, "CodiOrga"
  loc_B43E47: PopAdLdVar
  loc_B43E48: FLdRfVar var_AC
  loc_B43E4B: FMemLdPr
  loc_B43E50:  = Me.Fields
  loc_B43E55: FLdPr var_AC
  loc_B43E58: from_stack_2 = Me.Item(from_stack_1)
  loc_B43E5D: FLdPr var_C0
  loc_B43E60:  = Me.Value
  loc_B43E65: FLdRfVar var_D0
  loc_B43E68: CStrVarTmp
  loc_B43E69: FStStrNoPop var_90
  loc_B43E6C: ILdPr
  loc_B43E6F: Call tblusuario.CodiOrgaPut(from_stack_1v)
  loc_B43E74: FFree1Str var_90
  loc_B43E77: FFreeAd var_AC = ""
  loc_B43E7E: FFree1Var var_D0 = ""
  loc_B43E81: FLdRfVar var_D0
  loc_B43E84: FLdRfVar var_C0
  loc_B43E87: LitVarStr var_BC, "AcreUsua"
  loc_B43E8C: PopAdLdVar
  loc_B43E8D: FLdRfVar var_AC
  loc_B43E90: FMemLdPr
  loc_B43E95:  = Me.Fields
  loc_B43E9A: FLdPr var_AC
  loc_B43E9D: from_stack_2 = Me.Item(from_stack_1)
  loc_B43EA2: FLdPr var_C0
  loc_B43EA5:  = Me.Value
  loc_B43EAA: FLdRfVar var_D0
  loc_B43EAD: CStrVarTmp
  loc_B43EAE: FStStrNoPop var_90
  loc_B43EB1: ILdPr
  loc_B43EB4: Call tblusuario.AcreUsuaPut(from_stack_1v)
  loc_B43EB9: FFree1Str var_90
  loc_B43EBC: FFreeAd var_AC = ""
  loc_B43EC3: FFree1Var var_D0 = ""
  loc_B43EC6: FLdRfVar var_D0
  loc_B43EC9: FLdRfVar var_C0
  loc_B43ECC: LitVarStr var_BC, "CargUsua"
  loc_B43ED1: PopAdLdVar
  loc_B43ED2: FLdRfVar var_AC
  loc_B43ED5: FMemLdPr
  loc_B43EDA:  = Me.Fields
  loc_B43EDF: FLdPr var_AC
  loc_B43EE2: from_stack_2 = Me.Item(from_stack_1)
  loc_B43EE7: FLdPr var_C0
  loc_B43EEA:  = Me.Value
  loc_B43EEF: FLdRfVar var_D0
  loc_B43EF2: CStrVarTmp
  loc_B43EF3: FStStrNoPop var_90
  loc_B43EF6: ILdPr
  loc_B43EF9: Call tblusuario.CargUsuaPut(from_stack_1v)
  loc_B43EFE: FFree1Str var_90
  loc_B43F01: FFreeAd var_AC = ""
  loc_B43F08: FFree1Var var_D0 = ""
  loc_B43F0B: FLdRfVar var_D0
  loc_B43F0E: FLdRfVar var_C0
  loc_B43F11: LitVarStr var_BC, "CoenUsua"
  loc_B43F16: PopAdLdVar
  loc_B43F17: FLdRfVar var_AC
  loc_B43F1A: FMemLdPr
  loc_B43F1F:  = Me.Fields
  loc_B43F24: FLdPr var_AC
  loc_B43F27: from_stack_2 = Me.Item(from_stack_1)
  loc_B43F2C: FLdPr var_C0
  loc_B43F2F:  = Me.Value
  loc_B43F34: FLdRfVar var_D0
  loc_B43F37: CStrVarTmp
  loc_B43F38: FStStrNoPop var_90
  loc_B43F3B: ILdPr
  loc_B43F3E: Call tblusuario.CoenUsuaPut(from_stack_1v)
  loc_B43F43: FFree1Str var_90
  loc_B43F46: FFreeAd var_AC = ""
  loc_B43F4D: FFree1Var var_D0 = ""
  loc_B43F50: FLdRfVar var_D0
  loc_B43F53: FLdRfVar var_C0
  loc_B43F56: LitVarStr var_BC, "CosaUsua"
  loc_B43F5B: PopAdLdVar
  loc_B43F5C: FLdRfVar var_AC
  loc_B43F5F: FMemLdPr
  loc_B43F64:  = Me.Fields
  loc_B43F69: FLdPr var_AC
  loc_B43F6C: from_stack_2 = Me.Item(from_stack_1)
  loc_B43F71: FLdPr var_C0
  loc_B43F74:  = Me.Value
  loc_B43F79: FLdRfVar var_D0
  loc_B43F7C: CStrVarTmp
  loc_B43F7D: FStStrNoPop var_90
  loc_B43F80: ILdPr
  loc_B43F83: Call tblusuario.CosaUsuaPut(from_stack_1v)
  loc_B43F88: FFree1Str var_90
  loc_B43F8B: FFreeAd var_AC = ""
  loc_B43F92: FFree1Var var_D0 = ""
  loc_B43F95: FLdRfVar var_D0
  loc_B43F98: FLdRfVar var_C0
  loc_B43F9B: LitVarStr var_BC, "SemaUsua"
  loc_B43FA0: PopAdLdVar
  loc_B43FA1: FLdRfVar var_AC
  loc_B43FA4: FMemLdPr
  loc_B43FA9:  = Me.Fields
  loc_B43FAE: FLdPr var_AC
  loc_B43FB1: from_stack_2 = Me.Item(from_stack_1)
  loc_B43FB6: FLdPr var_C0
  loc_B43FB9:  = Me.Value
  loc_B43FBE: FLdRfVar var_D0
  loc_B43FC1: CStrVarTmp
  loc_B43FC2: FStStrNoPop var_90
  loc_B43FC5: ILdPr
  loc_B43FC8: Call tblusuario.SemaUsuaPut(from_stack_1v)
  loc_B43FCD: FFree1Str var_90
  loc_B43FD0: FFreeAd var_AC = ""
  loc_B43FD7: FFree1Var var_D0 = ""
  loc_B43FDA: FLdRfVar var_D0
  loc_B43FDD: FLdRfVar var_C0
  loc_B43FE0: LitVarStr var_BC, "PumaUsua"
  loc_B43FE5: PopAdLdVar
  loc_B43FE6: FLdRfVar var_AC
  loc_B43FE9: FMemLdPr
  loc_B43FEE:  = Me.Fields
  loc_B43FF3: FLdPr var_AC
  loc_B43FF6: from_stack_2 = Me.Item(from_stack_1)
  loc_B43FFB: FLdPr var_C0
  loc_B43FFE:  = Me.Value
  loc_B44003: FLdRfVar var_D0
  loc_B44006: CStrVarTmp
  loc_B44007: FStStrNoPop var_90
  loc_B4400A: ILdPr
  loc_B4400D: Call tblusuario.PumaUsuaPut(from_stack_1v)
  loc_B44012: FFree1Str var_90
  loc_B44015: FFreeAd var_AC = ""
  loc_B4401C: FFree1Var var_D0 = ""
  loc_B4401F: FLdRfVar var_D0
  loc_B44022: FLdRfVar var_C0
  loc_B44025: LitVarStr var_BC, "UsmaUsua"
  loc_B4402A: PopAdLdVar
  loc_B4402B: FLdRfVar var_AC
  loc_B4402E: FMemLdPr
  loc_B44033:  = Me.Fields
  loc_B44038: FLdPr var_AC
  loc_B4403B: from_stack_2 = Me.Item(from_stack_1)
  loc_B44040: FLdPr var_C0
  loc_B44043:  = Me.Value
  loc_B44048: FLdRfVar var_D0
  loc_B4404B: CStrVarTmp
  loc_B4404C: FStStrNoPop var_90
  loc_B4404F: ILdPr
  loc_B44052: Call tblusuario.UsmaUsuaPut(from_stack_1v)
  loc_B44057: FFree1Str var_90
  loc_B4405A: FFreeAd var_AC = ""
  loc_B44061: FFree1Var var_D0 = ""
  loc_B44064: FLdRfVar var_D0
  loc_B44067: FLdRfVar var_C0
  loc_B4406A: LitVarStr var_BC, "ComaUsua"
  loc_B4406F: PopAdLdVar
  loc_B44070: FLdRfVar var_AC
  loc_B44073: FMemLdPr
  loc_B44078:  = Me.Fields
  loc_B4407D: FLdPr var_AC
  loc_B44080: from_stack_2 = Me.Item(from_stack_1)
  loc_B44085: FLdPr var_C0
  loc_B44088:  = Me.Value
  loc_B4408D: FLdRfVar var_D0
  loc_B44090: CStrVarTmp
  loc_B44091: FStStrNoPop var_90
  loc_B44094: ILdPr
  loc_B44097: Call tblusuario.ComaUsuaPut(from_stack_1v)
  loc_B4409C: FFree1Str var_90
  loc_B4409F: FFreeAd var_AC = ""
  loc_B440A6: FFree1Var var_D0 = ""
  loc_B440A9: FLdRfVar var_D0
  loc_B440AC: FLdRfVar var_C0
  loc_B440AF: LitVarStr var_BC, "UsslUsua"
  loc_B440B4: PopAdLdVar
  loc_B440B5: FLdRfVar var_AC
  loc_B440B8: FMemLdPr
  loc_B440BD:  = Me.Fields
  loc_B440C2: FLdPr var_AC
  loc_B440C5: from_stack_2 = Me.Item(from_stack_1)
  loc_B440CA: FLdPr var_C0
  loc_B440CD:  = Me.Value
  loc_B440D2: FLdRfVar var_D0
  loc_B440D5: CStrVarTmp
  loc_B440D6: FStStrNoPop var_90
  loc_B440D9: ILdPr
  loc_B440DC: Call tblusuario.UsslUsuaPut(from_stack_1v)
  loc_B440E1: FFree1Str var_90
  loc_B440E4: FFreeAd var_AC = ""
  loc_B440EB: FFree1Var var_D0 = ""
  loc_B440EE: FLdRfVar var_D0
  loc_B440F1: FLdRfVar var_C0
  loc_B440F4: LitVarStr var_BC, "UtlsUsua"
  loc_B440F9: PopAdLdVar
  loc_B440FA: FLdRfVar var_AC
  loc_B440FD: FMemLdPr
  loc_B44102:  = Me.Fields
  loc_B44107: FLdPr var_AC
  loc_B4410A: from_stack_2 = Me.Item(from_stack_1)
  loc_B4410F: FLdPr var_C0
  loc_B44112:  = Me.Value
  loc_B44117: FLdRfVar var_D0
  loc_B4411A: CStrVarTmp
  loc_B4411B: FStStrNoPop var_90
  loc_B4411E: ILdPr
  loc_B44121: Call tblusuario.UtlsUsuaPut(from_stack_1v)
  loc_B44126: FFree1Str var_90
  loc_B44129: FFreeAd var_AC = ""
  loc_B44130: FFree1Var var_D0 = ""
  loc_B44133: FLdRfVar var_D0
  loc_B44136: FLdRfVar var_C0
  loc_B44139: LitVarStr var_BC, "FeatUsua"
  loc_B4413E: PopAdLdVar
  loc_B4413F: FLdRfVar var_AC
  loc_B44142: FMemLdPr
  loc_B44147:  = Me.Fields
  loc_B4414C: FLdPr var_AC
  loc_B4414F: from_stack_2 = Me.Item(from_stack_1)
  loc_B44154: FLdPr var_C0
  loc_B44157:  = Me.Value
  loc_B4415C: FLdRfVar var_D0
  loc_B4415F: CStrVarTmp
  loc_B44160: FStStrNoPop var_90
  loc_B44163: ILdPr
  loc_B44166: Call tblusuario.FeatUsuaPut(from_stack_1v)
  loc_B4416B: FFree1Str var_90
  loc_B4416E: FFreeAd var_AC = ""
  loc_B44175: FFree1Var var_D0 = ""
  loc_B44178: FLdRfVar var_D0
  loc_B4417B: FLdRfVar var_C0
  loc_B4417E: LitVarStr var_BC, "AltaUsua"
  loc_B44183: PopAdLdVar
  loc_B44184: FLdRfVar var_AC
  loc_B44187: FMemLdPr
  loc_B4418C:  = Me.Fields
  loc_B44191: FLdPr var_AC
  loc_B44194: from_stack_2 = Me.Item(from_stack_1)
  loc_B44199: FLdPr var_C0
  loc_B4419C:  = Me.Value
  loc_B441A1: FLdRfVar var_D0
  loc_B441A4: CStrVarTmp
  loc_B441A5: FStStrNoPop var_90
  loc_B441A8: ILdPr
  loc_B441AB: Call tblusuario.AltaUsuaPut(from_stack_1v)
  loc_B441B0: FFree1Str var_90
  loc_B441B3: FFreeAd var_AC = ""
  loc_B441BA: FFree1Var var_D0 = ""
  loc_B441BD: FLdRfVar var_D0
  loc_B441C0: FLdRfVar var_C0
  loc_B441C3: LitVarStr var_BC, "AltaFeho"
  loc_B441C8: PopAdLdVar
  loc_B441C9: FLdRfVar var_AC
  loc_B441CC: FMemLdPr
  loc_B441D1:  = Me.Fields
  loc_B441D6: FLdPr var_AC
  loc_B441D9: from_stack_2 = Me.Item(from_stack_1)
  loc_B441DE: FLdPr var_C0
  loc_B441E1:  = Me.Value
  loc_B441E6: FLdRfVar var_D0
  loc_B441E9: CStrVarTmp
  loc_B441EA: FStStrNoPop var_90
  loc_B441ED: ILdPr
  loc_B441F0: Call tblusuario.AltaFehoPut(from_stack_1v)
  loc_B441F5: FFree1Str var_90
  loc_B441F8: FFreeAd var_AC = ""
  loc_B441FF: FFree1Var var_D0 = ""
  loc_B44202: FLdRfVar var_D0
  loc_B44205: FLdRfVar var_C0
  loc_B44208: LitVarStr var_BC, "ModiUsua"
  loc_B4420D: PopAdLdVar
  loc_B4420E: FLdRfVar var_AC
  loc_B44211: FMemLdPr
  loc_B44216:  = Me.Fields
  loc_B4421B: FLdPr var_AC
  loc_B4421E: from_stack_2 = Me.Item(from_stack_1)
  loc_B44223: FLdPr var_C0
  loc_B44226:  = Me.Value
  loc_B4422B: FLdRfVar var_D0
  loc_B4422E: CStrVarTmp
  loc_B4422F: FStStrNoPop var_90
  loc_B44232: ILdPr
  loc_B44235: Call tblusuario.ModiUsuaPut(from_stack_1v)
  loc_B4423A: FFree1Str var_90
  loc_B4423D: FFreeAd var_AC = ""
  loc_B44244: FFree1Var var_D0 = ""
  loc_B44247: FLdRfVar var_D0
  loc_B4424A: FLdRfVar var_C0
  loc_B4424D: LitVarStr var_BC, "ModiFeho"
  loc_B44252: PopAdLdVar
  loc_B44253: FLdRfVar var_AC
  loc_B44256: FMemLdPr
  loc_B4425B:  = Me.Fields
  loc_B44260: FLdPr var_AC
  loc_B44263: from_stack_2 = Me.Item(from_stack_1)
  loc_B44268: FLdPr var_C0
  loc_B4426B:  = Me.Value
  loc_B44270: FLdRfVar var_108
  loc_B44273: LitVarStr var_104, "ModiFeho"
  loc_B44278: PopAdLdVar
  loc_B44279: FLdRfVar var_F4
  loc_B4427C: FMemLdPr
  loc_B44281:  = Me.Fields
  loc_B44286: FLdPr var_F4
  loc_B44289: from_stack_2 = Me.Item(from_stack_1)
  loc_B4428E: LitVarStr var_138, vbNullString
  loc_B44293: FStVarCopyObj var_148
  loc_B44296: FLdRfVar var_148
  loc_B44299: FLdZeroAd var_108
  loc_B4429C: CVarAd
  loc_B442A0: FLdRfVar var_D0
  loc_B442A3: LitVarStr var_E0, vbNullString
  loc_B442A8: HardType
  loc_B442A9: NeVar var_F0
  loc_B442AD: FStVar var_118
  loc_B442B1: FLdRfVar var_118
  loc_B442B4: FLdRfVar var_158
  loc_B442B7: ImpAdCallFPR4  = IIf(, , )
  loc_B442BC: FLdRfVar var_158
  loc_B442BF: CStrVarVal var_90
  loc_B442C3: ILdPr
  loc_B442C6: Call tblusuario.ModiFehoPut(from_stack_1v)
  loc_B442CB: FFree1Str var_90
  loc_B442CE: FFreeAd var_AC = "": var_C0 = ""
  loc_B442D7: FFreeVar var_D0 = "": var_118 = "": var_128 = "": var_148 = ""
  loc_B442E4: FLdRfVar var_D0
  loc_B442E7: FLdRfVar var_C0
  loc_B442EA: LitVarStr var_BC, "BajaUsua"
  loc_B442EF: PopAdLdVar
  loc_B442F0: FLdRfVar var_AC
  loc_B442F3: FMemLdPr
  loc_B442F8:  = Me.Fields
  loc_B442FD: FLdPr var_AC
  loc_B44300: from_stack_2 = Me.Item(from_stack_1)
  loc_B44305: FLdPr var_C0
  loc_B44308:  = Me.Value
  loc_B4430D: FLdRfVar var_D0
  loc_B44310: CStrVarTmp
  loc_B44311: FStStrNoPop var_90
  loc_B44314: ILdPr
  loc_B44317: Call tblusuario.BajaUsuaPut(from_stack_1v)
  loc_B4431C: FFree1Str var_90
  loc_B4431F: FFreeAd var_AC = ""
  loc_B44326: FFree1Var var_D0 = ""
  loc_B44329: FLdRfVar var_D0
  loc_B4432C: FLdRfVar var_C0
  loc_B4432F: LitVarStr var_BC, "BajaFeho"
  loc_B44334: PopAdLdVar
  loc_B44335: FLdRfVar var_AC
  loc_B44338: FMemLdPr
  loc_B4433D:  = Me.Fields
  loc_B44342: FLdPr var_AC
  loc_B44345: from_stack_2 = Me.Item(from_stack_1)
  loc_B4434A: FLdPr var_C0
  loc_B4434D:  = Me.Value
  loc_B44352: FLdRfVar var_108
  loc_B44355: LitVarStr var_104, "BajaFeho"
  loc_B4435A: PopAdLdVar
  loc_B4435B: FLdRfVar var_F4
  loc_B4435E: FMemLdPr
  loc_B44363:  = Me.Fields
  loc_B44368: FLdPr var_F4
  loc_B4436B: from_stack_2 = Me.Item(from_stack_1)
  loc_B44370: LitVarStr var_138, vbNullString
  loc_B44375: FStVarCopyObj var_148
  loc_B44378: FLdRfVar var_148
  loc_B4437B: FLdZeroAd var_108
  loc_B4437E: CVarAd
  loc_B44382: FLdRfVar var_D0
  loc_B44385: LitVarStr var_E0, vbNullString
  loc_B4438A: HardType
  loc_B4438B: NeVar var_F0
  loc_B4438F: FStVar var_118
  loc_B44393: FLdRfVar var_118
  loc_B44396: FLdRfVar var_158
  loc_B44399: ImpAdCallFPR4  = IIf(, , )
  loc_B4439E: FLdRfVar var_158
  loc_B443A1: CStrVarVal var_90
  loc_B443A5: ILdPr
  loc_B443A8: Call tblusuario.BajaFehoPut(from_stack_1v)
  loc_B443AD: FFree1Str var_90
  loc_B443B0: FFreeAd var_AC = "": var_C0 = ""
  loc_B443B9: FFreeVar var_D0 = "": var_118 = "": var_128 = "": var_148 = ""
  loc_B443C6: FLdRfVar var_D0
  loc_B443C9: FLdRfVar var_C0
  loc_B443CC: LitVarStr var_BC, "BajaMoti"
  loc_B443D1: PopAdLdVar
  loc_B443D2: FLdRfVar var_AC
  loc_B443D5: FMemLdPr
  loc_B443DA:  = Me.Fields
  loc_B443DF: FLdPr var_AC
  loc_B443E2: from_stack_2 = Me.Item(from_stack_1)
  loc_B443E7: FLdPr var_C0
  loc_B443EA:  = Me.Value
  loc_B443EF: FLdRfVar var_D0
  loc_B443F2: CStrVarTmp
  loc_B443F3: FStStrNoPop var_90
  loc_B443F6: ILdPr
  loc_B443F9: Call tblusuario.BajaMotiPut(from_stack_1v)
  loc_B443FE: FFree1Str var_90
  loc_B44401: FFreeAd var_AC = ""
  loc_B44408: FFree1Var var_D0 = ""
  loc_B4440B: LitI2_Byte &HFF
  loc_B4440D: FStI2 var_86
  loc_B44410: Branch loc_B44562
  loc_B44413: LitStr "El Usuario NO EXISTE. Verifique..."
  loc_B44416: ILdPr
  loc_B44419: Call tblusuario.MsgErrorPut(from_stack_1v)
  loc_B4441E: LitStr vbNullString
  loc_B44421: ILdPr
  loc_B44424: Call tblusuario.CodiUsuaPut(from_stack_1v)
  loc_B44429: LitStr vbNullString
  loc_B4442C: ILdPr
  loc_B4442F: Call tblusuario.DetaUsuaPut(from_stack_1v)
  loc_B44434: LitStr vbNullString
  loc_B44437: ILdPr
  loc_B4443A: Call tblusuario.GDEUsuaPut(from_stack_1v)
  loc_B4443F: LitStr vbNullString
  loc_B44442: ILdPr
  loc_B44445: Call tblusuario.CucuPersPut(from_stack_1v)
  loc_B4444A: LitStr vbNullString
  loc_B4444D: ILdPr
  loc_B44450: Call tblusuario.DetaPersPut(from_stack_1v)
  loc_B44455: LitStr vbNullString
  loc_B44458: ILdPr
  loc_B4445B: Call tblusuario.ClavUsuaPut(from_stack_1v)
  loc_B44460: LitStr vbNullString
  loc_B44463: ILdPr
  loc_B44466: Call tblusuario.FeveUsuaPut(from_stack_1v)
  loc_B4446B: LitStr vbNullString
  loc_B4446E: ILdPr
  loc_B44471: Call tblusuario.InhaUsuaPut(from_stack_1v)
  loc_B44476: LitStr vbNullString
  loc_B44479: ILdPr
  loc_B4447C: Call tblusuario.CodiEnrePut(from_stack_1v)
  loc_B44481: LitStr vbNullString
  loc_B44484: ILdPr
  loc_B44487: Call tblusuario.CodiOrgaPut(from_stack_1v)
  loc_B4448C: LitStr vbNullString
  loc_B4448F: ILdPr
  loc_B44492: Call tblusuario.AcreUsuaPut(from_stack_1v)
  loc_B44497: LitStr vbNullString
  loc_B4449A: ILdPr
  loc_B4449D: Call tblusuario.FirmUsuaPut(from_stack_1v)
  loc_B444A2: LitStr vbNullString
  loc_B444A5: ILdPr
  loc_B444A8: Call tblusuario.CargUsuaPut(from_stack_1v)
  loc_B444AD: LitStr vbNullString
  loc_B444B0: ILdPr
  loc_B444B3: Call tblusuario.CoenUsuaPut(from_stack_1v)
  loc_B444B8: LitStr vbNullString
  loc_B444BB: ILdPr
  loc_B444BE: Call tblusuario.CosaUsuaPut(from_stack_1v)
  loc_B444C3: LitStr vbNullString
  loc_B444C6: ILdPr
  loc_B444C9: Call tblusuario.SemaUsuaPut(from_stack_1v)
  loc_B444CE: LitStr vbNullString
  loc_B444D1: ILdPr
  loc_B444D4: Call tblusuario.PumaUsuaPut(from_stack_1v)
  loc_B444D9: LitStr vbNullString
  loc_B444DC: ILdPr
  loc_B444DF: Call tblusuario.UsmaUsuaPut(from_stack_1v)
  loc_B444E4: LitStr vbNullString
  loc_B444E7: ILdPr
  loc_B444EA: Call tblusuario.ComaUsuaPut(from_stack_1v)
  loc_B444EF: LitStr vbNullString
  loc_B444F2: ILdPr
  loc_B444F5: Call tblusuario.UsslUsuaPut(from_stack_1v)
  loc_B444FA: LitStr vbNullString
  loc_B444FD: ILdPr
  loc_B44500: Call tblusuario.UtlsUsuaPut(from_stack_1v)
  loc_B44505: LitStr vbNullString
  loc_B44508: ILdPr
  loc_B4450B: Call tblusuario.FeatUsuaPut(from_stack_1v)
  loc_B44510: LitStr vbNullString
  loc_B44513: ILdPr
  loc_B44516: Call tblusuario.AltaUsuaPut(from_stack_1v)
  loc_B4451B: LitStr vbNullString
  loc_B4451E: ILdPr
  loc_B44521: Call tblusuario.AltaFehoPut(from_stack_1v)
  loc_B44526: LitStr vbNullString
  loc_B44529: ILdPr
  loc_B4452C: Call tblusuario.ModiUsuaPut(from_stack_1v)
  loc_B44531: LitStr vbNullString
  loc_B44534: ILdPr
  loc_B44537: Call tblusuario.ModiFehoPut(from_stack_1v)
  loc_B4453C: LitStr vbNullString
  loc_B4453F: ILdPr
  loc_B44542: Call tblusuario.BajaUsuaPut(from_stack_1v)
  loc_B44547: LitStr vbNullString
  loc_B4454A: ILdPr
  loc_B4454D: Call tblusuario.BajaFehoPut(from_stack_1v)
  loc_B44552: LitStr vbNullString
  loc_B44555: ILdPr
  loc_B44558: Call tblusuario.BajaMotiPut(from_stack_1v)
  loc_B4455D: LitI2_Byte 0
  loc_B4455F: FStI2 var_86
  loc_B44562: ExitProcI2
End Function

Private Function Proc_259_39_9DC24C(arg_C, arg_10, arg_14, arg_18, arg_1C) '9DC24C
  'Data Table: 4569C4
  loc_9DC17C: ILdRf arg_10
  loc_9DC17F: FStStrCopy var_8C
  loc_9DC182: ILdRf arg_14
  loc_9DC185: FStStrCopy var_90
  loc_9DC188: ILdRf arg_18
  loc_9DC18B: FStStrCopy var_94
  loc_9DC18E: LitStr "SELECT CaraItco FROM itemcotizacion WHERE PeriInfo = "
  loc_9DC191: FLdI2 arg_C
  loc_9DC194: CStrUI1
  loc_9DC196: FStStrNoPop var_98
  loc_9DC199: ConcatStr
  loc_9DC19A: FStStrNoPop var_9C
  loc_9DC19D: LitStr " AND CodiNope = "
  loc_9DC1A0: ConcatStr
  loc_9DC1A1: FStStrNoPop var_A0
  loc_9DC1A4: ILdRf var_8C
  loc_9DC1A7: ConcatStr
  loc_9DC1A8: FStStrNoPop var_A4
  loc_9DC1AB: LitStr " AND CucuPers = "
  loc_9DC1AE: ConcatStr
  loc_9DC1AF: FStStrNoPop var_A8
  loc_9DC1B2: ILdRf var_90
  loc_9DC1B5: ConcatStr
  loc_9DC1B6: FStStrNoPop var_AC
  loc_9DC1B9: LitStr " AND CodiItco = "
  loc_9DC1BC: ConcatStr
  loc_9DC1BD: FStStrNoPop var_B0
  loc_9DC1C0: ILdRf var_94
  loc_9DC1C3: ConcatStr
  loc_9DC1C4: FStStrNoPop var_B4
  loc_9DC1C7: LitStr " AND AlteItco = "
  loc_9DC1CA: ConcatStr
  loc_9DC1CB: FStStrNoPop var_B8
  loc_9DC1CE: FLdI2 arg_1C
  loc_9DC1D1: CStrUI1
  loc_9DC1D3: FStStrNoPop var_BC
  loc_9DC1D6: ConcatStr
  loc_9DC1D7: FStStrNoPop var_C0
  loc_9DC1DA: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9DC1DF: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9DC1F8: FLdRfVar var_C4
  loc_9DC1FB: FMemLdPr
  loc_9DC200:  = Me.RecordCount
  loc_9DC205: ILdRf var_C4
  loc_9DC208: LitI4 0
  loc_9DC20D: GtI4
  loc_9DC20E: BranchF loc_9DC24B
  loc_9DC211: FLdRfVar var_EC
  loc_9DC214: FLdRfVar var_DC
  loc_9DC217: LitVarStr var_D8, "CaraItco"
  loc_9DC21C: PopAdLdVar
  loc_9DC21D: FLdRfVar var_C8
  loc_9DC220: FMemLdPr
  loc_9DC225:  = Me.Fields
  loc_9DC22A: FLdPr var_C8
  loc_9DC22D: from_stack_2 = Me.Item(from_stack_1)
  loc_9DC232: FLdPr var_DC
  loc_9DC235:  = Me.Value
  loc_9DC23A: FLdRfVar var_EC
  loc_9DC23D: CStrVarTmp
  loc_9DC23E: FStStr var_88
  loc_9DC241: FFreeAd var_C8 = ""
  loc_9DC248: FFree1Var var_EC = ""
  loc_9DC24B: ExitProc
End Function

Private Function Proc_259_40_9C269C(arg_C, arg_10, arg_14) '9C269C
  'Data Table: 4569C4
  loc_9C25F4: ILdRf arg_10
  loc_9C25F7: FStStrCopy var_8C
  loc_9C25FA: ILdRf arg_14
  loc_9C25FD: FStStrCopy var_90
  loc_9C2600: LitStr "SELECT CaraItno FROM itemnota WHERE PeriInfo = "
  loc_9C2603: FLdI2 arg_C
  loc_9C2606: CStrUI1
  loc_9C2608: FStStrNoPop var_94
  loc_9C260B: ConcatStr
  loc_9C260C: FStStrNoPop var_98
  loc_9C260F: LitStr " AND CodiNope = '"
  loc_9C2612: ConcatStr
  loc_9C2613: FStStrNoPop var_9C
  loc_9C2616: ILdRf var_8C
  loc_9C2619: ConcatStr
  loc_9C261A: FStStrNoPop var_A0
  loc_9C261D: LitStr "' AND CodiItno = '"
  loc_9C2620: ConcatStr
  loc_9C2621: FStStrNoPop var_A4
  loc_9C2624: ILdRf var_90
  loc_9C2627: ConcatStr
  loc_9C2628: FStStrNoPop var_A8
  loc_9C262B: LitStr "'"
  loc_9C262E: ConcatStr
  loc_9C262F: FStStrNoPop var_AC
  loc_9C2632: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9C2637: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9C2648: FLdRfVar var_B0
  loc_9C264B: FMemLdPr
  loc_9C2650:  = Me.RecordCount
  loc_9C2655: ILdRf var_B0
  loc_9C2658: LitI4 0
  loc_9C265D: GtI4
  loc_9C265E: BranchF loc_9C269B
  loc_9C2661: FLdRfVar var_D8
  loc_9C2664: FLdRfVar var_C8
  loc_9C2667: LitVarStr var_C4, "CaraItno"
  loc_9C266C: PopAdLdVar
  loc_9C266D: FLdRfVar var_B4
  loc_9C2670: FMemLdPr
  loc_9C2675:  = Me.Fields
  loc_9C267A: FLdPr var_B4
  loc_9C267D: from_stack_2 = Me.Item(from_stack_1)
  loc_9C2682: FLdPr var_C8
  loc_9C2685:  = Me.Value
  loc_9C268A: FLdRfVar var_D8
  loc_9C268D: CStrVarTmp
  loc_9C268E: FStStr var_88
  loc_9C2691: FFreeAd var_B4 = ""
  loc_9C2698: FFree1Var var_D8 = ""
  loc_9C269B: ExitProc
End Function

Private Function Proc_259_41_A4C348(arg_C) 'A4C348
  'Data Table: 4569C4
  loc_A4C0D4: ILdRf arg_C
  loc_A4C0D7: FStStrCopy var_8C
  loc_A4C0DA: OnErrorGoto loc_A4C293
  loc_A4C0DD: LitStr "C:\temppic"
  loc_A4C0E0: FMemStStrCopy
  loc_A4C0E5: LitStr "SELECT FirmUsua"
  loc_A4C0E8: LitStr " FROM infogov.usuario"
  loc_A4C0EB: ConcatStr
  loc_A4C0EC: FStStrNoPop var_94
  loc_A4C0EF: LitStr " WHERE CodiUsua = '"
  loc_A4C0F2: ConcatStr
  loc_A4C0F3: FStStrNoPop var_98
  loc_A4C0F6: ILdRf var_8C
  loc_A4C0F9: ConcatStr
  loc_A4C0FA: FStStrNoPop var_9C
  loc_A4C0FD: LitStr "';"
  loc_A4C100: ConcatStr
  loc_A4C101: FStStrNoPop var_A0
  loc_A4C104: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_A4C109: FFreeStr var_94 = "": var_98 = "": var_9C = ""
  loc_A4C114: FLdRfVar var_A4
  loc_A4C117: FMemLdPr
  loc_A4C11C:  = Me.RecordCount
  loc_A4C121: ILdRf var_A4
  loc_A4C124: LitI4 0
  loc_A4C129: EqI4
  loc_A4C12A: BranchF loc_A4C136
  loc_A4C12D: LitNothing
  loc_A4C12F: CastAd
  loc_A4C132: FStAdFunc var_88
  loc_A4C135: ExitProc
  loc_A4C136: New Stream
  loc_A4C13A: FStAdFunc var_90
  loc_A4C13D: LitI4 1
  loc_A4C142: FLdPr var_90
  loc_A4C145: Stream.Type = from_stack_1
  loc_A4C14A: LitStr vbNullString
  loc_A4C14D: LitStr vbNullString
  loc_A4C150: LitI4 -1
  loc_A4C155: LitI4 0
  loc_A4C15A: LitVar_Missing var_B4
  loc_A4C15D: PopAdLdVar
  loc_A4C15E: FLdPr var_90
  loc_A4C161: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4C166: FLdRfVar var_CC
  loc_A4C169: FLdRfVar var_BC
  loc_A4C16C: LitVarStr var_B4, "FirmUsua"
  loc_A4C171: PopAdLdVar
  loc_A4C172: FLdRfVar var_B8
  loc_A4C175: FMemLdPr
  loc_A4C17A:  = Me.Fields
  loc_A4C17F: FLdPr var_B8
  loc_A4C182: from_stack_2 = Me.Item(from_stack_1)
  loc_A4C187: FLdPr var_BC
  loc_A4C18A:  = Me.Value
  loc_A4C18F: FLdRfVar var_CC
  loc_A4C192: ImpAdCallI2 IsNull()
  loc_A4C197: FFreeAd var_B8 = ""
  loc_A4C19E: FFree1Var var_CC = ""
  loc_A4C1A1: BranchF loc_A4C1A7
  loc_A4C1A4: Branch loc_A4C293
  loc_A4C1A7: FLdRfVar var_CC
  loc_A4C1AA: FLdRfVar var_BC
  loc_A4C1AD: LitVarStr var_B4, "FirmUsua"
  loc_A4C1B2: PopAdLdVar
  loc_A4C1B3: FLdRfVar var_B8
  loc_A4C1B6: FMemLdPr
  loc_A4C1BB:  = Me.Fields
  loc_A4C1C0: FLdPr var_B8
  loc_A4C1C3: from_stack_2 = Me.Item(from_stack_1)
  loc_A4C1C8: FLdPr var_BC
  loc_A4C1CB:  = Me.Value
  loc_A4C1D0: FLdVar var_CC
  loc_A4C1D4: FLdPr var_90
  loc_A4C1D7: Me.Write from_stack_1
  loc_A4C1DC: FFreeAd var_B8 = ""
  loc_A4C1E3: FFree1Var var_CC = ""
  loc_A4C1E6: LitI4 2
  loc_A4C1EB: FMemLdR4 arg_8(4)
  loc_A4C1F0: FLdPr var_90
  loc_A4C1F3: Me.SaveToFile from_stack_1
  loc_A4C1F8: FLdRfVar var_B8
  loc_A4C1FB: LitVar_Missing var_10C
  loc_A4C1FE: PopAdLdVar
  loc_A4C1FF: LitVar_Missing var_FC
  loc_A4C202: PopAdLdVar
  loc_A4C203: LitVar_Missing var_EC
  loc_A4C206: PopAdLdVar
  loc_A4C207: LitVar_Missing var_DC
  loc_A4C20A: PopAdLdVar
  loc_A4C20B: FMemLdR4 arg_8(4)
  loc_A4C210: CVarStr var_B4
  loc_A4C213: PopAdLdVar
  loc_A4C214: ImpAdLdRf MemVar_C44F9C
  loc_A4C217: NewIfNullPr Me
  loc_A4C21A: Me.Global.LoadPicture from_stack_1, from_stack_2, from_stack_3, from_stack_4, from_stack_5
  loc_A4C21F: FLdZeroAd var_B8
  loc_A4C222: FStAdFunc var_88
  loc_A4C225: FLdRfVar var_A4
  loc_A4C228: FMemLdPr
  loc_A4C22D:  = Me.State
  loc_A4C232: ILdRf var_A4
  loc_A4C235: LitI4 1
  loc_A4C23A: EqI4
  loc_A4C23B: BranchF loc_A4C248
  loc_A4C23E: FMemLdPr
  loc_A4C243: Me.Close
  loc_A4C248: FMemLdR4 arg_8(0)
  loc_A4C24D: LitNothing
  loc_A4C24F: Is
  loc_A4C251: NotI4
  loc_A4C252: BranchF loc_A4C260
  loc_A4C255: LitNothing
  loc_A4C257: CastAd
  loc_A4C25A: FMemStAdFunc arg_8(0)
  loc_A4C260: FLdRfVar var_A4
  loc_A4C263: FLdPr var_90
  loc_A4C266:  = Me.State
  loc_A4C26B: ILdRf var_A4
  loc_A4C26E: LitI4 1
  loc_A4C273: EqI4
  loc_A4C274: BranchF loc_A4C27F
  loc_A4C277: FLdPr var_90
  loc_A4C27A: Me.Close
  loc_A4C27F: ILdRf var_90
  loc_A4C282: LitNothing
  loc_A4C284: Is
  loc_A4C286: NotI4
  loc_A4C287: BranchF loc_A4C292
  loc_A4C28A: LitNothing
  loc_A4C28C: CastAd
  loc_A4C28F: FStAdFunc var_90
  loc_A4C292: ExitProc
  loc_A4C293: FLdRfVar var_A4
  loc_A4C296: ImpAdCallI2 Err 'rtcErrObj
  loc_A4C29B: FStAdFunc var_B8
  loc_A4C29E: FLdPr var_B8
  loc_A4C2A1:  = Err.Number
  loc_A4C2A6: ILdRf var_A4
  loc_A4C2A9: LitI4 0
  loc_A4C2AE: NeI4
  loc_A4C2AF: FFree1Ad var_B8
  loc_A4C2B2: BranchF loc_A4C345
  loc_A4C2B5: FLdRfVar var_A4
  loc_A4C2B8: ImpAdCallI2 Err 'rtcErrObj
  loc_A4C2BD: FStAdFunc var_B8
  loc_A4C2C0: FLdPr var_B8
  loc_A4C2C3:  = Err.Number
  loc_A4C2C8: LitVar_Missing var_CC
  loc_A4C2CB: FLdRfVar var_11C
  loc_A4C2CE: ImpAdCallFPR4  = Error()
  loc_A4C2D3: LitVar_Missing var_16C
  loc_A4C2D6: LitVar_Missing var_15C
  loc_A4C2D9: LitVar_Missing var_14C
  loc_A4C2DC: LitI4 &H30
  loc_A4C2E1: ILdRf var_A4
  loc_A4C2E4: CStrI4
  loc_A4C2E6: FStStrNoPop var_94
  loc_A4C2E9: LitStr "  "
  loc_A4C2EC: ConcatStr
  loc_A4C2ED: CVarStr var_12C
  loc_A4C2F0: FLdRfVar var_11C
  loc_A4C2F3: ConcatVar var_13C
  loc_A4C2F7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_A4C2FC: FFree1Str var_94
  loc_A4C2FF: FFree1Ad var_B8
  loc_A4C302: FFreeVar var_CC = "": var_12C = "": var_11C = "": var_13C = "": var_14C = "": var_15C = ""
  loc_A4C313: LitI4 0
  loc_A4C318: FMemLdRf unk_4569CD
  loc_A4C31D: CVarRef
  loc_A4C322: ImpAdCallI2 push Dir(, )
  loc_A4C327: FStStrNoPop var_94
  loc_A4C32A: FnLenStr
  loc_A4C32B: CBoolI4
  loc_A4C32D: FFree1Str var_94
  loc_A4C330: BranchF loc_A4C33D
  loc_A4C333: FMemLdRf unk_4569CD
  loc_A4C338: ImpAdCallFPR4 Proc_259_52_948A78()
  loc_A4C33D: LitNothing
  loc_A4C33F: CastAd
  loc_A4C342: FStAdFunc var_88
  loc_A4C345: ExitProc
End Function

Private Function Proc_259_42_A4BD80(arg_C) 'A4BD80
  'Data Table: 4569C4
  loc_A4BB0C: ILdRf arg_C
  loc_A4BB0F: FStStrCopy var_8C
  loc_A4BB12: OnErrorGoto loc_A4BCCB
  loc_A4BB15: LitStr "C:\temppic"
  loc_A4BB18: FMemStStrCopy
  loc_A4BB1D: LitStr "SELECT FirmUsua"
  loc_A4BB20: LitStr " FROM infogov.usuario"
  loc_A4BB23: ConcatStr
  loc_A4BB24: FStStrNoPop var_94
  loc_A4BB27: LitStr " WHERE CodiUsua = '"
  loc_A4BB2A: ConcatStr
  loc_A4BB2B: FStStrNoPop var_98
  loc_A4BB2E: ILdRf var_8C
  loc_A4BB31: ConcatStr
  loc_A4BB32: FStStrNoPop var_9C
  loc_A4BB35: LitStr "';"
  loc_A4BB38: ConcatStr
  loc_A4BB39: FStStrNoPop var_A0
  loc_A4BB3C: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_A4BB41: FFreeStr var_94 = "": var_98 = "": var_9C = ""
  loc_A4BB4C: FLdRfVar var_A4
  loc_A4BB4F: FMemLdPr
  loc_A4BB54:  = Me.RecordCount
  loc_A4BB59: ILdRf var_A4
  loc_A4BB5C: LitI4 0
  loc_A4BB61: EqI4
  loc_A4BB62: BranchF loc_A4BB6E
  loc_A4BB65: LitNothing
  loc_A4BB67: CastAd
  loc_A4BB6A: FStAdFunc var_88
  loc_A4BB6D: ExitProc
  loc_A4BB6E: New Stream
  loc_A4BB72: FStAdFunc var_90
  loc_A4BB75: LitI4 1
  loc_A4BB7A: FLdPr var_90
  loc_A4BB7D: Stream.Type = from_stack_1
  loc_A4BB82: LitStr vbNullString
  loc_A4BB85: LitStr vbNullString
  loc_A4BB88: LitI4 -1
  loc_A4BB8D: LitI4 0
  loc_A4BB92: LitVar_Missing var_B4
  loc_A4BB95: PopAdLdVar
  loc_A4BB96: FLdPr var_90
  loc_A4BB99: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4BB9E: FLdRfVar var_CC
  loc_A4BBA1: FLdRfVar var_BC
  loc_A4BBA4: LitVarStr var_B4, "FirmUsua"
  loc_A4BBA9: PopAdLdVar
  loc_A4BBAA: FLdRfVar var_B8
  loc_A4BBAD: FMemLdPr
  loc_A4BBB2:  = Me.Fields
  loc_A4BBB7: FLdPr var_B8
  loc_A4BBBA: from_stack_2 = Me.Item(from_stack_1)
  loc_A4BBBF: FLdPr var_BC
  loc_A4BBC2:  = Me.Value
  loc_A4BBC7: FLdRfVar var_CC
  loc_A4BBCA: ImpAdCallI2 IsNull()
  loc_A4BBCF: FFreeAd var_B8 = ""
  loc_A4BBD6: FFree1Var var_CC = ""
  loc_A4BBD9: BranchF loc_A4BBDF
  loc_A4BBDC: Branch loc_A4BCCB
  loc_A4BBDF: FLdRfVar var_CC
  loc_A4BBE2: FLdRfVar var_BC
  loc_A4BBE5: LitVarStr var_B4, "FirmUsua"
  loc_A4BBEA: PopAdLdVar
  loc_A4BBEB: FLdRfVar var_B8
  loc_A4BBEE: FMemLdPr
  loc_A4BBF3:  = Me.Fields
  loc_A4BBF8: FLdPr var_B8
  loc_A4BBFB: from_stack_2 = Me.Item(from_stack_1)
  loc_A4BC00: FLdPr var_BC
  loc_A4BC03:  = Me.Value
  loc_A4BC08: FLdVar var_CC
  loc_A4BC0C: FLdPr var_90
  loc_A4BC0F: Me.Write from_stack_1
  loc_A4BC14: FFreeAd var_B8 = ""
  loc_A4BC1B: FFree1Var var_CC = ""
  loc_A4BC1E: LitI4 2
  loc_A4BC23: FMemLdR4 arg_8(4)
  loc_A4BC28: FLdPr var_90
  loc_A4BC2B: Me.SaveToFile from_stack_1
  loc_A4BC30: FLdRfVar var_B8
  loc_A4BC33: LitVar_Missing var_10C
  loc_A4BC36: PopAdLdVar
  loc_A4BC37: LitVar_Missing var_FC
  loc_A4BC3A: PopAdLdVar
  loc_A4BC3B: LitVar_Missing var_EC
  loc_A4BC3E: PopAdLdVar
  loc_A4BC3F: LitVar_Missing var_DC
  loc_A4BC42: PopAdLdVar
  loc_A4BC43: FMemLdR4 arg_8(4)
  loc_A4BC48: CVarStr var_B4
  loc_A4BC4B: PopAdLdVar
  loc_A4BC4C: ImpAdLdRf MemVar_C44F9C
  loc_A4BC4F: NewIfNullPr Me
  loc_A4BC52: Me.Global.LoadPicture from_stack_1, from_stack_2, from_stack_3, from_stack_4, from_stack_5
  loc_A4BC57: FLdZeroAd var_B8
  loc_A4BC5A: FStAdFunc var_88
  loc_A4BC5D: FLdRfVar var_A4
  loc_A4BC60: FMemLdPr
  loc_A4BC65:  = Me.State
  loc_A4BC6A: ILdRf var_A4
  loc_A4BC6D: LitI4 1
  loc_A4BC72: EqI4
  loc_A4BC73: BranchF loc_A4BC80
  loc_A4BC76: FMemLdPr
  loc_A4BC7B: Me.Close
  loc_A4BC80: FMemLdR4 arg_8(0)
  loc_A4BC85: LitNothing
  loc_A4BC87: Is
  loc_A4BC89: NotI4
  loc_A4BC8A: BranchF loc_A4BC98
  loc_A4BC8D: LitNothing
  loc_A4BC8F: CastAd
  loc_A4BC92: FMemStAdFunc arg_8(0)
  loc_A4BC98: FLdRfVar var_A4
  loc_A4BC9B: FLdPr var_90
  loc_A4BC9E:  = Me.State
  loc_A4BCA3: ILdRf var_A4
  loc_A4BCA6: LitI4 1
  loc_A4BCAB: EqI4
  loc_A4BCAC: BranchF loc_A4BCB7
  loc_A4BCAF: FLdPr var_90
  loc_A4BCB2: Me.Close
  loc_A4BCB7: ILdRf var_90
  loc_A4BCBA: LitNothing
  loc_A4BCBC: Is
  loc_A4BCBE: NotI4
  loc_A4BCBF: BranchF loc_A4BCCA
  loc_A4BCC2: LitNothing
  loc_A4BCC4: CastAd
  loc_A4BCC7: FStAdFunc var_90
  loc_A4BCCA: ExitProc
  loc_A4BCCB: FLdRfVar var_A4
  loc_A4BCCE: ImpAdCallI2 Err 'rtcErrObj
  loc_A4BCD3: FStAdFunc var_B8
  loc_A4BCD6: FLdPr var_B8
  loc_A4BCD9:  = Err.Number
  loc_A4BCDE: ILdRf var_A4
  loc_A4BCE1: LitI4 0
  loc_A4BCE6: NeI4
  loc_A4BCE7: FFree1Ad var_B8
  loc_A4BCEA: BranchF loc_A4BD7D
  loc_A4BCED: FLdRfVar var_A4
  loc_A4BCF0: ImpAdCallI2 Err 'rtcErrObj
  loc_A4BCF5: FStAdFunc var_B8
  loc_A4BCF8: FLdPr var_B8
  loc_A4BCFB:  = Err.Number
  loc_A4BD00: LitVar_Missing var_CC
  loc_A4BD03: FLdRfVar var_11C
  loc_A4BD06: ImpAdCallFPR4  = Error()
  loc_A4BD0B: LitVar_Missing var_16C
  loc_A4BD0E: LitVar_Missing var_15C
  loc_A4BD11: LitVar_Missing var_14C
  loc_A4BD14: LitI4 &H30
  loc_A4BD19: ILdRf var_A4
  loc_A4BD1C: CStrI4
  loc_A4BD1E: FStStrNoPop var_94
  loc_A4BD21: LitStr "  "
  loc_A4BD24: ConcatStr
  loc_A4BD25: CVarStr var_12C
  loc_A4BD28: FLdRfVar var_11C
  loc_A4BD2B: ConcatVar var_13C
  loc_A4BD2F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_A4BD34: FFree1Str var_94
  loc_A4BD37: FFree1Ad var_B8
  loc_A4BD3A: FFreeVar var_CC = "": var_12C = "": var_11C = "": var_13C = "": var_14C = "": var_15C = ""
  loc_A4BD4B: LitI4 0
  loc_A4BD50: FMemLdRf unk_4569CD
  loc_A4BD55: CVarRef
  loc_A4BD5A: ImpAdCallI2 push Dir(, )
  loc_A4BD5F: FStStrNoPop var_94
  loc_A4BD62: FnLenStr
  loc_A4BD63: CBoolI4
  loc_A4BD65: FFree1Str var_94
  loc_A4BD68: BranchF loc_A4BD75
  loc_A4BD6B: FMemLdRf unk_4569CD
  loc_A4BD70: ImpAdCallFPR4 Proc_259_52_948A78()
  loc_A4BD75: LitNothing
  loc_A4BD77: CastAd
  loc_A4BD7A: FStAdFunc var_88
  loc_A4BD7D: ExitProc
End Function

Private Function Proc_259_43_9B698C(arg_C) '9B698C
  'Data Table: 4569C4
  loc_9B68EC: ILdRf arg_C
  loc_9B68EF: FStStrCopy var_8C
  loc_9B68F2: LitStr "SELECT IFNULL(CadoFirm,'') AS CadoFirm FROM firma WHERE FormFirm = 'Cheque' AND FechFirm <= '"
  loc_9B68F5: LitI4 1
  loc_9B68FA: LitI4 1
  loc_9B68FF: LitVarStr var_AC, "yyyy-mm-dd"
  loc_9B6904: FStVarCopyObj var_BC
  loc_9B6907: FLdRfVar var_BC
  loc_9B690A: FLdRfVar var_8C
  loc_9B690D: CVarRef
  loc_9B6912: ImpAdCallI2 Format$(, )
  loc_9B6917: FStStrNoPop var_C0
  loc_9B691A: ConcatStr
  loc_9B691B: FStStrNoPop var_C4
  loc_9B691E: LitStr "' ORDER BY FechFirm DESC LIMIT 1"
  loc_9B6921: ConcatStr
  loc_9B6922: FStStrNoPop var_C8
  loc_9B6925: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9B692A: FFreeStr var_C0 = "": var_C4 = ""
  loc_9B6933: FFree1Var var_BC = ""
  loc_9B6936: FLdRfVar var_CC
  loc_9B6939: FMemLdPr
  loc_9B693E:  = Me.RecordCount
  loc_9B6943: ILdRf var_CC
  loc_9B6946: LitI4 0
  loc_9B694B: GtI4
  loc_9B694C: BranchF loc_9B6989
  loc_9B694F: FLdRfVar var_BC
  loc_9B6952: FLdRfVar var_D4
  loc_9B6955: LitVarStr var_9C, "CadoFirm"
  loc_9B695A: PopAdLdVar
  loc_9B695B: FLdRfVar var_D0
  loc_9B695E: FMemLdPr
  loc_9B6963:  = Me.Fields
  loc_9B6968: FLdPr var_D0
  loc_9B696B: from_stack_2 = Me.Item(from_stack_1)
  loc_9B6970: FLdPr var_D4
  loc_9B6973:  = Me.Value
  loc_9B6978: FLdRfVar var_BC
  loc_9B697B: CStrVarTmp
  loc_9B697C: FStStr var_88
  loc_9B697F: FFreeAd var_D0 = ""
  loc_9B6986: FFree1Var var_BC = ""
  loc_9B6989: ExitProc
End Function

Private Function Proc_259_44_9B689C(arg_C) '9B689C
  'Data Table: 4569C4
  loc_9B67FC: ILdRf arg_C
  loc_9B67FF: FStStrCopy var_8C
  loc_9B6802: LitStr "SELECT IFNULL(CatrFirm,'') AS CatrFirm FROM firma WHERE FormFirm = 'Cheque' AND FechFirm <= '"
  loc_9B6805: LitI4 1
  loc_9B680A: LitI4 1
  loc_9B680F: LitVarStr var_AC, "yyyy-mm-dd"
  loc_9B6814: FStVarCopyObj var_BC
  loc_9B6817: FLdRfVar var_BC
  loc_9B681A: FLdRfVar var_8C
  loc_9B681D: CVarRef
  loc_9B6822: ImpAdCallI2 Format$(, )
  loc_9B6827: FStStrNoPop var_C0
  loc_9B682A: ConcatStr
  loc_9B682B: FStStrNoPop var_C4
  loc_9B682E: LitStr "' ORDER BY FechFirm DESC LIMIT 1"
  loc_9B6831: ConcatStr
  loc_9B6832: FStStrNoPop var_C8
  loc_9B6835: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9B683A: FFreeStr var_C0 = "": var_C4 = ""
  loc_9B6843: FFree1Var var_BC = ""
  loc_9B6846: FLdRfVar var_CC
  loc_9B6849: FMemLdPr
  loc_9B684E:  = Me.RecordCount
  loc_9B6853: ILdRf var_CC
  loc_9B6856: LitI4 0
  loc_9B685B: GtI4
  loc_9B685C: BranchF loc_9B6899
  loc_9B685F: FLdRfVar var_BC
  loc_9B6862: FLdRfVar var_D4
  loc_9B6865: LitVarStr var_9C, "CatrFirm"
  loc_9B686A: PopAdLdVar
  loc_9B686B: FLdRfVar var_D0
  loc_9B686E: FMemLdPr
  loc_9B6873:  = Me.Fields
  loc_9B6878: FLdPr var_D0
  loc_9B687B: from_stack_2 = Me.Item(from_stack_1)
  loc_9B6880: FLdPr var_D4
  loc_9B6883:  = Me.Value
  loc_9B6888: FLdRfVar var_BC
  loc_9B688B: CStrVarTmp
  loc_9B688C: FStStr var_88
  loc_9B688F: FFreeAd var_D0 = ""
  loc_9B6896: FFree1Var var_BC = ""
  loc_9B6899: ExitProc
End Function

Private Function Proc_259_45_9B66BC(arg_C) '9B66BC
  'Data Table: 4569C4
  loc_9B661C: ILdRf arg_C
  loc_9B661F: FStStrCopy var_8C
  loc_9B6622: LitStr "SELECT IFNULL(CaunFirm,'') AS CaunFirm FROM firma WHERE FormFirm = 'Cheque' AND FechFirm <= '"
  loc_9B6625: LitI4 1
  loc_9B662A: LitI4 1
  loc_9B662F: LitVarStr var_AC, "yyyy-mm-dd"
  loc_9B6634: FStVarCopyObj var_BC
  loc_9B6637: FLdRfVar var_BC
  loc_9B663A: FLdRfVar var_8C
  loc_9B663D: CVarRef
  loc_9B6642: ImpAdCallI2 Format$(, )
  loc_9B6647: FStStrNoPop var_C0
  loc_9B664A: ConcatStr
  loc_9B664B: FStStrNoPop var_C4
  loc_9B664E: LitStr "' ORDER BY FechFirm DESC LIMIT 1"
  loc_9B6651: ConcatStr
  loc_9B6652: FStStrNoPop var_C8
  loc_9B6655: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9B665A: FFreeStr var_C0 = "": var_C4 = ""
  loc_9B6663: FFree1Var var_BC = ""
  loc_9B6666: FLdRfVar var_CC
  loc_9B6669: FMemLdPr
  loc_9B666E:  = Me.RecordCount
  loc_9B6673: ILdRf var_CC
  loc_9B6676: LitI4 0
  loc_9B667B: GtI4
  loc_9B667C: BranchF loc_9B66B9
  loc_9B667F: FLdRfVar var_BC
  loc_9B6682: FLdRfVar var_D4
  loc_9B6685: LitVarStr var_9C, "CaunFirm"
  loc_9B668A: PopAdLdVar
  loc_9B668B: FLdRfVar var_D0
  loc_9B668E: FMemLdPr
  loc_9B6693:  = Me.Fields
  loc_9B6698: FLdPr var_D0
  loc_9B669B: from_stack_2 = Me.Item(from_stack_1)
  loc_9B66A0: FLdPr var_D4
  loc_9B66A3:  = Me.Value
  loc_9B66A8: FLdRfVar var_BC
  loc_9B66AB: CStrVarTmp
  loc_9B66AC: FStStr var_88
  loc_9B66AF: FFreeAd var_D0 = ""
  loc_9B66B6: FFree1Var var_BC = ""
  loc_9B66B9: ExitProc
End Function

Private Function Proc_259_46_9B65CC(arg_C) '9B65CC
  'Data Table: 4569C4
  loc_9B652C: ILdRf arg_C
  loc_9B652F: FStStrCopy var_8C
  loc_9B6532: LitStr "SELECT IFNULL(DetaPers,'') AS CcdoFirm FROM firma LEFT JOIN infogov.persona ON persona.CucuPers = firma.CcdoFirm WHERE FormFirm = 'Cheque' AND FechFirm <= '"
  loc_9B6535: LitI4 1
  loc_9B653A: LitI4 1
  loc_9B653F: LitVarStr var_AC, "yyyy-mm-dd"
  loc_9B6544: FStVarCopyObj var_BC
  loc_9B6547: FLdRfVar var_BC
  loc_9B654A: FLdRfVar var_8C
  loc_9B654D: CVarRef
  loc_9B6552: ImpAdCallI2 Format$(, )
  loc_9B6557: FStStrNoPop var_C0
  loc_9B655A: ConcatStr
  loc_9B655B: FStStrNoPop var_C4
  loc_9B655E: LitStr "' ORDER BY FechFirm DESC LIMIT 1"
  loc_9B6561: ConcatStr
  loc_9B6562: FStStrNoPop var_C8
  loc_9B6565: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9B656A: FFreeStr var_C0 = "": var_C4 = ""
  loc_9B6573: FFree1Var var_BC = ""
  loc_9B6576: FLdRfVar var_CC
  loc_9B6579: FMemLdPr
  loc_9B657E:  = Me.RecordCount
  loc_9B6583: ILdRf var_CC
  loc_9B6586: LitI4 0
  loc_9B658B: GtI4
  loc_9B658C: BranchF loc_9B65C9
  loc_9B658F: FLdRfVar var_BC
  loc_9B6592: FLdRfVar var_D4
  loc_9B6595: LitVarStr var_9C, "CcdoFirm"
  loc_9B659A: PopAdLdVar
  loc_9B659B: FLdRfVar var_D0
  loc_9B659E: FMemLdPr
  loc_9B65A3:  = Me.Fields
  loc_9B65A8: FLdPr var_D0
  loc_9B65AB: from_stack_2 = Me.Item(from_stack_1)
  loc_9B65B0: FLdPr var_D4
  loc_9B65B3:  = Me.Value
  loc_9B65B8: FLdRfVar var_BC
  loc_9B65BB: CStrVarTmp
  loc_9B65BC: FStStr var_88
  loc_9B65BF: FFreeAd var_D0 = ""
  loc_9B65C6: FFree1Var var_BC = ""
  loc_9B65C9: ExitProc
  loc_9B65CA: CRec2Ansi var_7400
End Function

Private Function Proc_259_47_9B64DC(arg_C) '9B64DC
  'Data Table: 4569C4
  loc_9B643C: ILdRf arg_C
  loc_9B643F: FStStrCopy var_8C
  loc_9B6442: LitStr "SELECT IFNULL(DetaPers,'') AS CctrFirm FROM firma LEFT JOIN infogov.persona ON persona.CucuPers = firma.CctrFirm WHERE FormFirm = 'Cheque' AND FechFirm <= '"
  loc_9B6445: LitI4 1
  loc_9B644A: LitI4 1
  loc_9B644F: LitVarStr var_AC, "yyyy-mm-dd"
  loc_9B6454: FStVarCopyObj var_BC
  loc_9B6457: FLdRfVar var_BC
  loc_9B645A: FLdRfVar var_8C
  loc_9B645D: CVarRef
  loc_9B6462: ImpAdCallI2 Format$(, )
  loc_9B6467: FStStrNoPop var_C0
  loc_9B646A: ConcatStr
  loc_9B646B: FStStrNoPop var_C4
  loc_9B646E: LitStr "' ORDER BY FechFirm DESC LIMIT 1"
  loc_9B6471: ConcatStr
  loc_9B6472: FStStrNoPop var_C8
  loc_9B6475: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9B647A: FFreeStr var_C0 = "": var_C4 = ""
  loc_9B6483: FFree1Var var_BC = ""
  loc_9B6486: FLdRfVar var_CC
  loc_9B6489: FMemLdPr
  loc_9B648E:  = Me.RecordCount
  loc_9B6493: ILdRf var_CC
  loc_9B6496: LitI4 0
  loc_9B649B: GtI4
  loc_9B649C: BranchF loc_9B64D9
  loc_9B649F: FLdRfVar var_BC
  loc_9B64A2: FLdRfVar var_D4
  loc_9B64A5: LitVarStr var_9C, "CctrFirm"
  loc_9B64AA: PopAdLdVar
  loc_9B64AB: FLdRfVar var_D0
  loc_9B64AE: FMemLdPr
  loc_9B64B3:  = Me.Fields
  loc_9B64B8: FLdPr var_D0
  loc_9B64BB: from_stack_2 = Me.Item(from_stack_1)
  loc_9B64C0: FLdPr var_D4
  loc_9B64C3:  = Me.Value
  loc_9B64C8: FLdRfVar var_BC
  loc_9B64CB: CStrVarTmp
  loc_9B64CC: FStStr var_88
  loc_9B64CF: FFreeAd var_D0 = ""
  loc_9B64D6: FFree1Var var_BC = ""
  loc_9B64D9: ExitProc
  loc_9B64DA: FLdPrThis
End Function

Private Function Proc_259_48_9B63EC(arg_C) '9B63EC
  'Data Table: 4569C4
  loc_9B634C: ILdRf arg_C
  loc_9B634F: FStStrCopy var_8C
  loc_9B6352: LitStr "SELECT IFNULL(DetaPers,'') AS CcunFirm FROM firma LEFT JOIN infogov.persona ON persona.CucuPers = firma.CcunFirm WHERE FormFirm = 'Cheque' AND FechFirm <= '"
  loc_9B6355: LitI4 1
  loc_9B635A: LitI4 1
  loc_9B635F: LitVarStr var_AC, "yyyy-mm-dd"
  loc_9B6364: FStVarCopyObj var_BC
  loc_9B6367: FLdRfVar var_BC
  loc_9B636A: FLdRfVar var_8C
  loc_9B636D: CVarRef
  loc_9B6372: ImpAdCallI2 Format$(, )
  loc_9B6377: FStStrNoPop var_C0
  loc_9B637A: ConcatStr
  loc_9B637B: FStStrNoPop var_C4
  loc_9B637E: LitStr "' ORDER BY FechFirm DESC LIMIT 1"
  loc_9B6381: ConcatStr
  loc_9B6382: FStStrNoPop var_C8
  loc_9B6385: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9B638A: FFreeStr var_C0 = "": var_C4 = ""
  loc_9B6393: FFree1Var var_BC = ""
  loc_9B6396: FLdRfVar var_CC
  loc_9B6399: FMemLdPr
  loc_9B639E:  = Me.RecordCount
  loc_9B63A3: ILdRf var_CC
  loc_9B63A6: LitI4 0
  loc_9B63AB: GtI4
  loc_9B63AC: BranchF loc_9B63E9
  loc_9B63AF: FLdRfVar var_BC
  loc_9B63B2: FLdRfVar var_D4
  loc_9B63B5: LitVarStr var_9C, "CcunFirm"
  loc_9B63BA: PopAdLdVar
  loc_9B63BB: FLdRfVar var_D0
  loc_9B63BE: FMemLdPr
  loc_9B63C3:  = Me.Fields
  loc_9B63C8: FLdPr var_D0
  loc_9B63CB: from_stack_2 = Me.Item(from_stack_1)
  loc_9B63D0: FLdPr var_D4
  loc_9B63D3:  = Me.Value
  loc_9B63D8: FLdRfVar var_BC
  loc_9B63DB: CStrVarTmp
  loc_9B63DC: FStStr var_88
  loc_9B63DF: FFreeAd var_D0 = ""
  loc_9B63E6: FFree1Var var_BC = ""
  loc_9B63E9: ExitProc
  loc_9B63EA: NewIfNullPr Me
End Function

Private Function Proc_259_49_9DCF1C(arg_C, arg_10, arg_14, arg_18, arg_1C) '9DCF1C
  'Data Table: 4569C4
  loc_9DCE4C: ILdRf arg_10
  loc_9DCE4F: FStStrCopy var_8C
  loc_9DCE52: ILdRf arg_14
  loc_9DCE55: FStStrCopy var_90
  loc_9DCE58: ILdRf arg_18
  loc_9DCE5B: FStStrCopy var_94
  loc_9DCE5E: LitStr "SELECT DetaItco FROM itemcotizacion WHERE PeriInfo = "
  loc_9DCE61: FLdI2 arg_C
  loc_9DCE64: CStrUI1
  loc_9DCE66: FStStrNoPop var_98
  loc_9DCE69: ConcatStr
  loc_9DCE6A: FStStrNoPop var_9C
  loc_9DCE6D: LitStr " AND CodiNope = "
  loc_9DCE70: ConcatStr
  loc_9DCE71: FStStrNoPop var_A0
  loc_9DCE74: ILdRf var_8C
  loc_9DCE77: ConcatStr
  loc_9DCE78: FStStrNoPop var_A4
  loc_9DCE7B: LitStr " AND CucuPers = "
  loc_9DCE7E: ConcatStr
  loc_9DCE7F: FStStrNoPop var_A8
  loc_9DCE82: ILdRf var_90
  loc_9DCE85: ConcatStr
  loc_9DCE86: FStStrNoPop var_AC
  loc_9DCE89: LitStr " AND CodiItco = "
  loc_9DCE8C: ConcatStr
  loc_9DCE8D: FStStrNoPop var_B0
  loc_9DCE90: ILdRf var_94
  loc_9DCE93: ConcatStr
  loc_9DCE94: FStStrNoPop var_B4
  loc_9DCE97: LitStr " AND AlteItco = "
  loc_9DCE9A: ConcatStr
  loc_9DCE9B: FStStrNoPop var_B8
  loc_9DCE9E: FLdI2 arg_1C
  loc_9DCEA1: CStrUI1
  loc_9DCEA3: FStStrNoPop var_BC
  loc_9DCEA6: ConcatStr
  loc_9DCEA7: FStStrNoPop var_C0
  loc_9DCEAA: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9DCEAF: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9DCEC8: FLdRfVar var_C4
  loc_9DCECB: FMemLdPr
  loc_9DCED0:  = Me.RecordCount
  loc_9DCED5: ILdRf var_C4
  loc_9DCED8: LitI4 0
  loc_9DCEDD: GtI4
  loc_9DCEDE: BranchF loc_9DCF1B
  loc_9DCEE1: FLdRfVar var_EC
  loc_9DCEE4: FLdRfVar var_DC
  loc_9DCEE7: LitVarStr var_D8, "DetaItco"
  loc_9DCEEC: PopAdLdVar
  loc_9DCEED: FLdRfVar var_C8
  loc_9DCEF0: FMemLdPr
  loc_9DCEF5:  = Me.Fields
  loc_9DCEFA: FLdPr var_C8
  loc_9DCEFD: from_stack_2 = Me.Item(from_stack_1)
  loc_9DCF02: FLdPr var_DC
  loc_9DCF05:  = Me.Value
  loc_9DCF0A: FLdRfVar var_EC
  loc_9DCF0D: CStrVarTmp
  loc_9DCF0E: FStStr var_88
  loc_9DCF11: FFreeAd var_C8 = ""
  loc_9DCF18: FFree1Var var_EC = ""
  loc_9DCF1B: ExitProc
End Function

Private Function Proc_259_50_9C332C(arg_C, arg_10, arg_14) '9C332C
  'Data Table: 4569C4
  loc_9C3284: ILdRf arg_10
  loc_9C3287: FStStrCopy var_8C
  loc_9C328A: ILdRf arg_14
  loc_9C328D: FStStrCopy var_90
  loc_9C3290: LitStr "SELECT DetaItno FROM itemnota WHERE PeriInfo = "
  loc_9C3293: FLdI2 arg_C
  loc_9C3296: CStrUI1
  loc_9C3298: FStStrNoPop var_94
  loc_9C329B: ConcatStr
  loc_9C329C: FStStrNoPop var_98
  loc_9C329F: LitStr " AND CodiNope = '"
  loc_9C32A2: ConcatStr
  loc_9C32A3: FStStrNoPop var_9C
  loc_9C32A6: ILdRf var_8C
  loc_9C32A9: ConcatStr
  loc_9C32AA: FStStrNoPop var_A0
  loc_9C32AD: LitStr "' AND CodiItno = '"
  loc_9C32B0: ConcatStr
  loc_9C32B1: FStStrNoPop var_A4
  loc_9C32B4: ILdRf var_90
  loc_9C32B7: ConcatStr
  loc_9C32B8: FStStrNoPop var_A8
  loc_9C32BB: LitStr "'"
  loc_9C32BE: ConcatStr
  loc_9C32BF: FStStrNoPop var_AC
  loc_9C32C2: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9C32C7: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9C32D8: FLdRfVar var_B0
  loc_9C32DB: FMemLdPr
  loc_9C32E0:  = Me.RecordCount
  loc_9C32E5: ILdRf var_B0
  loc_9C32E8: LitI4 0
  loc_9C32ED: GtI4
  loc_9C32EE: BranchF loc_9C332B
  loc_9C32F1: FLdRfVar var_D8
  loc_9C32F4: FLdRfVar var_C8
  loc_9C32F7: LitVarStr var_C4, "DetaItno"
  loc_9C32FC: PopAdLdVar
  loc_9C32FD: FLdRfVar var_B4
  loc_9C3300: FMemLdPr
  loc_9C3305:  = Me.Fields
  loc_9C330A: FLdPr var_B4
  loc_9C330D: from_stack_2 = Me.Item(from_stack_1)
  loc_9C3312: FLdPr var_C8
  loc_9C3315:  = Me.Value
  loc_9C331A: FLdRfVar var_D8
  loc_9C331D: CStrVarTmp
  loc_9C331E: FStStr var_88
  loc_9C3321: FFreeAd var_B4 = ""
  loc_9C3328: FFree1Var var_D8 = ""
  loc_9C332B: ExitProc
End Function

Private Function Proc_259_51_989E30(arg_C) '989E30
  'Data Table: 4569C4
  loc_989DEC: ILdRf arg_C
  loc_989DEF: FStStrCopy var_88
  loc_989DF2: LitNothing
  loc_989DF4: CastAd
  loc_989DF7: FMemStAdFunc arg_8(0)
  loc_989DFD: New Recordset
  loc_989E01: FMemStAdFunc arg_8(0)
  loc_989E07: LitI4 -1
  loc_989E0C: LitI4 3
  loc_989E11: LitI4 3
  loc_989E16: ImpAdLdI4 MemVar_C3D030
  loc_989E19: CVarAd
  loc_989E1D: PopAdLdVar
  loc_989E1E: ILdRf var_88
  loc_989E21: CVarStr var_98
  loc_989E24: PopAdLdVar
  loc_989E25: FMemLdPr
  loc_989E2A: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_989E2F: ExitProc
End Function

Private Function Proc_259_52_948A78(arg_C) '948A78
  'Data Table: 4569C4
  loc_948A64: OnErrorGoto loc_948A74
  loc_948A67: ILdRf arg_C
  loc_948A6A: CVarRef
  loc_948A6F: ImpAdCallFPR4 Kill 
  loc_948A74: ExitProc
  loc_948A75: NeI2
End Function

Private Function Proc_259_53_9C1B48(arg_C) '9C1B48
  'Data Table: 4569C4
  loc_9C1A98: ILdRf arg_C
  loc_9C1A9B: FStStrCopy var_8C
  loc_9C1A9E: LitStr "SELECT IFNULL(CaunFirm,'') AS CaunFirm"
  loc_9C1AA1: LitStr " FROM firma"
  loc_9C1AA4: ConcatStr
  loc_9C1AA5: FStStrNoPop var_90
  loc_9C1AA8: LitStr " WHERE FormFirm = 'Liquidacion' AND FechFirm <= "
  loc_9C1AAB: ConcatStr
  loc_9C1AAC: FStStrNoPop var_C4
  loc_9C1AAF: LitI4 1
  loc_9C1AB4: LitI4 1
  loc_9C1AB9: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_9C1ABE: FStVarCopyObj var_C0
  loc_9C1AC1: FLdRfVar var_C0
  loc_9C1AC4: FLdRfVar var_8C
  loc_9C1AC7: CVarRef
  loc_9C1ACC: ImpAdCallI2 Format$(, )
  loc_9C1AD1: FStStrNoPop var_C8
  loc_9C1AD4: ConcatStr
  loc_9C1AD5: FStStrNoPop var_CC
  loc_9C1AD8: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9C1ADB: ConcatStr
  loc_9C1ADC: FStStrNoPop var_D0
  loc_9C1ADF: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9C1AE4: FFreeStr var_90 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_9C1AF1: FFree1Var var_C0 = ""
  loc_9C1AF4: FLdRfVar var_D4
  loc_9C1AF7: FMemLdPr
  loc_9C1AFC:  = Me.RecordCount
  loc_9C1B01: ILdRf var_D4
  loc_9C1B04: LitI4 0
  loc_9C1B09: GtI4
  loc_9C1B0A: BranchF loc_9C1B47
  loc_9C1B0D: FLdRfVar var_C0
  loc_9C1B10: FLdRfVar var_DC
  loc_9C1B13: LitVarStr var_A0, "CaunFirm"
  loc_9C1B18: PopAdLdVar
  loc_9C1B19: FLdRfVar var_D8
  loc_9C1B1C: FMemLdPr
  loc_9C1B21:  = Me.Fields
  loc_9C1B26: FLdPr var_D8
  loc_9C1B29: from_stack_2 = Me.Item(from_stack_1)
  loc_9C1B2E: FLdPr var_DC
  loc_9C1B31:  = Me.Value
  loc_9C1B36: FLdRfVar var_C0
  loc_9C1B39: CStrVarTmp
  loc_9C1B3A: FStStr var_88
  loc_9C1B3D: FFreeAd var_D8 = ""
  loc_9C1B44: FFree1Var var_C0 = ""
  loc_9C1B47: ExitProc
End Function

Private Function Proc_259_54_9CE3A4(arg_C) '9CE3A4
  'Data Table: 4569C4
  loc_9CE2E0: ILdRf arg_C
  loc_9CE2E3: FStStrCopy var_8C
  loc_9CE2E6: LitStr "SELECT IFNULL(DetaPers,'') DetaPers"
  loc_9CE2E9: LitStr " FROM firma"
  loc_9CE2EC: ConcatStr
  loc_9CE2ED: FStStrNoPop var_90
  loc_9CE2F0: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = firma.CcunFirm"
  loc_9CE2F3: ConcatStr
  loc_9CE2F4: FStStrNoPop var_94
  loc_9CE2F7: LitStr " WHERE FormFirm = 'Liquidacion' AND FechFirm <= "
  loc_9CE2FA: ConcatStr
  loc_9CE2FB: FStStrNoPop var_C8
  loc_9CE2FE: LitI4 1
  loc_9CE303: LitI4 1
  loc_9CE308: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_9CE30D: FStVarCopyObj var_C4
  loc_9CE310: FLdRfVar var_C4
  loc_9CE313: FLdRfVar var_8C
  loc_9CE316: CVarRef
  loc_9CE31B: ImpAdCallI2 Format$(, )
  loc_9CE320: FStStrNoPop var_CC
  loc_9CE323: ConcatStr
  loc_9CE324: FStStrNoPop var_D0
  loc_9CE327: LitStr " /*AND CcunFirm > 0*/"
  loc_9CE32A: ConcatStr
  loc_9CE32B: FStStrNoPop var_D4
  loc_9CE32E: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9CE331: ConcatStr
  loc_9CE332: FStStrNoPop var_D8
  loc_9CE335: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9CE33A: FFreeStr var_90 = "": var_94 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_9CE34B: FFree1Var var_C4 = ""
  loc_9CE34E: FLdRfVar var_DC
  loc_9CE351: FMemLdPr
  loc_9CE356:  = Me.RecordCount
  loc_9CE35B: ILdRf var_DC
  loc_9CE35E: LitI4 0
  loc_9CE363: GtI4
  loc_9CE364: BranchF loc_9CE3A1
  loc_9CE367: FLdRfVar var_C4
  loc_9CE36A: FLdRfVar var_E4
  loc_9CE36D: LitVarStr var_A4, "DetaPers"
  loc_9CE372: PopAdLdVar
  loc_9CE373: FLdRfVar var_E0
  loc_9CE376: FMemLdPr
  loc_9CE37B:  = Me.Fields
  loc_9CE380: FLdPr var_E0
  loc_9CE383: from_stack_2 = Me.Item(from_stack_1)
  loc_9CE388: FLdPr var_E4
  loc_9CE38B:  = Me.Value
  loc_9CE390: FLdRfVar var_C4
  loc_9CE393: CStrVarTmp
  loc_9CE394: FStStr var_88
  loc_9CE397: FFreeAd var_E0 = ""
  loc_9CE39E: FFree1Var var_C4 = ""
  loc_9CE3A1: ExitProc
  loc_9CE3A2: Ary1StI4
End Function

Private Function Proc_259_55_9C77AC(arg_C) '9C77AC
  'Data Table: 4569C4
  loc_9C76F0: ILdRf arg_C
  loc_9C76F3: FStStrCopy var_8C
  loc_9C76F6: LitStr "SELECT IFNULL(CacuFirm,'') AS CacuFirm"
  loc_9C76F9: LitStr " FROM firma"
  loc_9C76FC: ConcatStr
  loc_9C76FD: FStStrNoPop var_90
  loc_9C7700: LitStr " WHERE FormFirm = 'Orden de Pago' AND FechFirm <= '"
  loc_9C7703: ConcatStr
  loc_9C7704: FStStrNoPop var_C4
  loc_9C7707: LitI4 1
  loc_9C770C: LitI4 1
  loc_9C7711: LitVarStr var_B0, "yyyy-mm-dd"
  loc_9C7716: FStVarCopyObj var_C0
  loc_9C7719: FLdRfVar var_C0
  loc_9C771C: FLdRfVar var_8C
  loc_9C771F: CVarRef
  loc_9C7724: ImpAdCallI2 Format$(, )
  loc_9C7729: FStStrNoPop var_C8
  loc_9C772C: ConcatStr
  loc_9C772D: FStStrNoPop var_CC
  loc_9C7730: LitStr "'"
  loc_9C7733: ConcatStr
  loc_9C7734: FStStrNoPop var_D0
  loc_9C7737: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9C773A: ConcatStr
  loc_9C773B: FStStrNoPop var_D4
  loc_9C773E: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9C7743: FFreeStr var_90 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_9C7752: FFree1Var var_C0 = ""
  loc_9C7755: FLdRfVar var_D8
  loc_9C7758: FMemLdPr
  loc_9C775D:  = Me.RecordCount
  loc_9C7762: ILdRf var_D8
  loc_9C7765: LitI4 0
  loc_9C776A: GtI4
  loc_9C776B: BranchF loc_9C77A8
  loc_9C776E: FLdRfVar var_C0
  loc_9C7771: FLdRfVar var_E0
  loc_9C7774: LitVarStr var_A0, "CacuFirm"
  loc_9C7779: PopAdLdVar
  loc_9C777A: FLdRfVar var_DC
  loc_9C777D: FMemLdPr
  loc_9C7782:  = Me.Fields
  loc_9C7787: FLdPr var_DC
  loc_9C778A: from_stack_2 = Me.Item(from_stack_1)
  loc_9C778F: FLdPr var_E0
  loc_9C7792:  = Me.Value
  loc_9C7797: FLdRfVar var_C0
  loc_9C779A: CStrVarTmp
  loc_9C779B: FStStr var_88
  loc_9C779E: FFreeAd var_DC = ""
  loc_9C77A5: FFree1Var var_C0 = ""
  loc_9C77A8: ExitProc
  loc_9C77A9: FnLBound
  loc_9C77AA: AddR8
End Function

Private Function Proc_259_56_9C7694(arg_C) '9C7694
  'Data Table: 4569C4
  loc_9C75D8: ILdRf arg_C
  loc_9C75DB: FStStrCopy var_8C
  loc_9C75DE: LitStr "SELECT IFNULL(CaunFirm,'') AS CaunFirm"
  loc_9C75E1: LitStr " FROM firma"
  loc_9C75E4: ConcatStr
  loc_9C75E5: FStStrNoPop var_90
  loc_9C75E8: LitStr " WHERE FormFirm = 'Orden de Pago' AND FechFirm <= '"
  loc_9C75EB: ConcatStr
  loc_9C75EC: FStStrNoPop var_C4
  loc_9C75EF: LitI4 1
  loc_9C75F4: LitI4 1
  loc_9C75F9: LitVarStr var_B0, "yyyy-mm-dd"
  loc_9C75FE: FStVarCopyObj var_C0
  loc_9C7601: FLdRfVar var_C0
  loc_9C7604: FLdRfVar var_8C
  loc_9C7607: CVarRef
  loc_9C760C: ImpAdCallI2 Format$(, )
  loc_9C7611: FStStrNoPop var_C8
  loc_9C7614: ConcatStr
  loc_9C7615: FStStrNoPop var_CC
  loc_9C7618: LitStr "'"
  loc_9C761B: ConcatStr
  loc_9C761C: FStStrNoPop var_D0
  loc_9C761F: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9C7622: ConcatStr
  loc_9C7623: FStStrNoPop var_D4
  loc_9C7626: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9C762B: FFreeStr var_90 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_9C763A: FFree1Var var_C0 = ""
  loc_9C763D: FLdRfVar var_D8
  loc_9C7640: FMemLdPr
  loc_9C7645:  = Me.RecordCount
  loc_9C764A: ILdRf var_D8
  loc_9C764D: LitI4 0
  loc_9C7652: GtI4
  loc_9C7653: BranchF loc_9C7690
  loc_9C7656: FLdRfVar var_C0
  loc_9C7659: FLdRfVar var_E0
  loc_9C765C: LitVarStr var_A0, "CaunFirm"
  loc_9C7661: PopAdLdVar
  loc_9C7662: FLdRfVar var_DC
  loc_9C7665: FMemLdPr
  loc_9C766A:  = Me.Fields
  loc_9C766F: FLdPr var_DC
  loc_9C7672: from_stack_2 = Me.Item(from_stack_1)
  loc_9C7677: FLdPr var_E0
  loc_9C767A:  = Me.Value
  loc_9C767F: FLdRfVar var_C0
  loc_9C7682: CStrVarTmp
  loc_9C7683: FStStr var_88
  loc_9C7686: FFreeAd var_DC = ""
  loc_9C768D: FFree1Var var_C0 = ""
  loc_9C7690: ExitProc
  loc_9C7691: MulI2
  loc_9C7692: BranchT loc_9D01D8
End Function

Private Function Proc_259_57_9D0CB4(arg_C) '9D0CB4
  'Data Table: 4569C4
  loc_9D0BF0: ILdRf arg_C
  loc_9D0BF3: FStStrCopy var_8C
  loc_9D0BF6: LitStr "SELECT IF(DetaPers IS NULL OR firma.CccuFirm = 0, '', DetaPers) DetaPers"
  loc_9D0BF9: LitStr " FROM firma"
  loc_9D0BFC: ConcatStr
  loc_9D0BFD: FStStrNoPop var_90
  loc_9D0C00: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = firma.CccuFirm"
  loc_9D0C03: ConcatStr
  loc_9D0C04: FStStrNoPop var_94
  loc_9D0C07: LitStr " WHERE FormFirm = 'Orden de Pago' AND FechFirm <= '"
  loc_9D0C0A: ConcatStr
  loc_9D0C0B: FStStrNoPop var_C8
  loc_9D0C0E: LitI4 1
  loc_9D0C13: LitI4 1
  loc_9D0C18: LitVarStr var_B4, "yyyy-mm-dd"
  loc_9D0C1D: FStVarCopyObj var_C4
  loc_9D0C20: FLdRfVar var_C4
  loc_9D0C23: FLdRfVar var_8C
  loc_9D0C26: CVarRef
  loc_9D0C2B: ImpAdCallI2 Format$(, )
  loc_9D0C30: FStStrNoPop var_CC
  loc_9D0C33: ConcatStr
  loc_9D0C34: FStStrNoPop var_D0
  loc_9D0C37: LitStr "'"
  loc_9D0C3A: ConcatStr
  loc_9D0C3B: FStStrNoPop var_D4
  loc_9D0C3E: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9D0C41: ConcatStr
  loc_9D0C42: FStStrNoPop var_D8
  loc_9D0C45: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9D0C4A: FFreeStr var_90 = "": var_94 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_9D0C5B: FFree1Var var_C4 = ""
  loc_9D0C5E: FLdRfVar var_DC
  loc_9D0C61: FMemLdPr
  loc_9D0C66:  = Me.RecordCount
  loc_9D0C6B: ILdRf var_DC
  loc_9D0C6E: LitI4 0
  loc_9D0C73: GtI4
  loc_9D0C74: BranchF loc_9D0CB1
  loc_9D0C77: FLdRfVar var_C4
  loc_9D0C7A: FLdRfVar var_E4
  loc_9D0C7D: LitVarStr var_A4, "DetaPers"
  loc_9D0C82: PopAdLdVar
  loc_9D0C83: FLdRfVar var_E0
  loc_9D0C86: FMemLdPr
  loc_9D0C8B:  = Me.Fields
  loc_9D0C90: FLdPr var_E0
  loc_9D0C93: from_stack_2 = Me.Item(from_stack_1)
  loc_9D0C98: FLdPr var_E4
  loc_9D0C9B:  = Me.Value
  loc_9D0CA0: FLdRfVar var_C4
  loc_9D0CA3: CStrVarTmp
  loc_9D0CA4: FStStr var_88
  loc_9D0CA7: FFreeAd var_E0 = ""
  loc_9D0CAE: FFree1Var var_C4 = ""
  loc_9D0CB1: ExitProc
  loc_9D0CB2: ExitProcCy
End Function

Private Function Proc_259_58_9C734C(arg_C) '9C734C
  'Data Table: 4569C4
  loc_9C7290: ILdRf arg_C
  loc_9C7293: FStStrCopy var_8C
  loc_9C7296: LitStr "SELECT IFNULL(CadoFirm,'') AS CadoFirm"
  loc_9C7299: LitStr " FROM firma"
  loc_9C729C: ConcatStr
  loc_9C729D: FStStrNoPop var_90
  loc_9C72A0: LitStr " WHERE FormFirm = 'Orden de Pago' AND FechFirm <= '"
  loc_9C72A3: ConcatStr
  loc_9C72A4: FStStrNoPop var_C4
  loc_9C72A7: LitI4 1
  loc_9C72AC: LitI4 1
  loc_9C72B1: LitVarStr var_B0, "yyyy-mm-dd"
  loc_9C72B6: FStVarCopyObj var_C0
  loc_9C72B9: FLdRfVar var_C0
  loc_9C72BC: FLdRfVar var_8C
  loc_9C72BF: CVarRef
  loc_9C72C4: ImpAdCallI2 Format$(, )
  loc_9C72C9: FStStrNoPop var_C8
  loc_9C72CC: ConcatStr
  loc_9C72CD: FStStrNoPop var_CC
  loc_9C72D0: LitStr "'"
  loc_9C72D3: ConcatStr
  loc_9C72D4: FStStrNoPop var_D0
  loc_9C72D7: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9C72DA: ConcatStr
  loc_9C72DB: FStStrNoPop var_D4
  loc_9C72DE: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9C72E3: FFreeStr var_90 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_9C72F2: FFree1Var var_C0 = ""
  loc_9C72F5: FLdRfVar var_D8
  loc_9C72F8: FMemLdPr
  loc_9C72FD:  = Me.RecordCount
  loc_9C7302: ILdRf var_D8
  loc_9C7305: LitI4 0
  loc_9C730A: GtI4
  loc_9C730B: BranchF loc_9C7348
  loc_9C730E: FLdRfVar var_C0
  loc_9C7311: FLdRfVar var_E0
  loc_9C7314: LitVarStr var_A0, "CadoFirm"
  loc_9C7319: PopAdLdVar
  loc_9C731A: FLdRfVar var_DC
  loc_9C731D: FMemLdPr
  loc_9C7322:  = Me.Fields
  loc_9C7327: FLdPr var_DC
  loc_9C732A: from_stack_2 = Me.Item(from_stack_1)
  loc_9C732F: FLdPr var_E0
  loc_9C7332:  = Me.Value
  loc_9C7337: FLdRfVar var_C0
  loc_9C733A: CStrVarTmp
  loc_9C733B: FStStr var_88
  loc_9C733E: FFreeAd var_DC = ""
  loc_9C7345: FFree1Var var_C0 = ""
  loc_9C7348: ExitProc
  loc_9C7349: PopTmpLdAdStr arg_345
End Function

Private Function Proc_259_59_9D04B8(arg_C) '9D04B8
  'Data Table: 4569C4
  loc_9D03F4: ILdRf arg_C
  loc_9D03F7: FStStrCopy var_8C
  loc_9D03FA: LitStr "SELECT IF(DetaPers IS NULL OR firma.CcdoFirm = 0, '', DetaPers) DetaPers"
  loc_9D03FD: LitStr " FROM firma"
  loc_9D0400: ConcatStr
  loc_9D0401: FStStrNoPop var_90
  loc_9D0404: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = firma.CcdoFirm"
  loc_9D0407: ConcatStr
  loc_9D0408: FStStrNoPop var_94
  loc_9D040B: LitStr " WHERE FormFirm = 'Orden de Pago' AND FechFirm <= '"
  loc_9D040E: ConcatStr
  loc_9D040F: FStStrNoPop var_C8
  loc_9D0412: LitI4 1
  loc_9D0417: LitI4 1
  loc_9D041C: LitVarStr var_B4, "yyyy-mm-dd"
  loc_9D0421: FStVarCopyObj var_C4
  loc_9D0424: FLdRfVar var_C4
  loc_9D0427: FLdRfVar var_8C
  loc_9D042A: CVarRef
  loc_9D042F: ImpAdCallI2 Format$(, )
  loc_9D0434: FStStrNoPop var_CC
  loc_9D0437: ConcatStr
  loc_9D0438: FStStrNoPop var_D0
  loc_9D043B: LitStr "'"
  loc_9D043E: ConcatStr
  loc_9D043F: FStStrNoPop var_D4
  loc_9D0442: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9D0445: ConcatStr
  loc_9D0446: FStStrNoPop var_D8
  loc_9D0449: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9D044E: FFreeStr var_90 = "": var_94 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_9D045F: FFree1Var var_C4 = ""
  loc_9D0462: FLdRfVar var_DC
  loc_9D0465: FMemLdPr
  loc_9D046A:  = Me.RecordCount
  loc_9D046F: ILdRf var_DC
  loc_9D0472: LitI4 0
  loc_9D0477: GtI4
  loc_9D0478: BranchF loc_9D04B5
  loc_9D047B: FLdRfVar var_C4
  loc_9D047E: FLdRfVar var_E4
  loc_9D0481: LitVarStr var_A4, "DetaPers"
  loc_9D0486: PopAdLdVar
  loc_9D0487: FLdRfVar var_E0
  loc_9D048A: FMemLdPr
  loc_9D048F:  = Me.Fields
  loc_9D0494: FLdPr var_E0
  loc_9D0497: from_stack_2 = Me.Item(from_stack_1)
  loc_9D049C: FLdPr var_E4
  loc_9D049F:  = Me.Value
  loc_9D04A4: FLdRfVar var_C4
  loc_9D04A7: CStrVarTmp
  loc_9D04A8: FStStr var_88
  loc_9D04AB: FFreeAd var_E0 = ""
  loc_9D04B2: FFree1Var var_C4 = ""
  loc_9D04B5: ExitProc
End Function

Private Function Proc_259_60_9C78C4(arg_C) '9C78C4
  'Data Table: 4569C4
  loc_9C7808: ILdRf arg_C
  loc_9C780B: FStStrCopy var_8C
  loc_9C780E: LitStr "SELECT IFNULL(CatrFirm,'') AS CatrFirm"
  loc_9C7811: LitStr " FROM firma"
  loc_9C7814: ConcatStr
  loc_9C7815: FStStrNoPop var_90
  loc_9C7818: LitStr " WHERE FormFirm = 'Orden de Pago' AND FechFirm <= '"
  loc_9C781B: ConcatStr
  loc_9C781C: FStStrNoPop var_C4
  loc_9C781F: LitI4 1
  loc_9C7824: LitI4 1
  loc_9C7829: LitVarStr var_B0, "yyyy-mm-dd"
  loc_9C782E: FStVarCopyObj var_C0
  loc_9C7831: FLdRfVar var_C0
  loc_9C7834: FLdRfVar var_8C
  loc_9C7837: CVarRef
  loc_9C783C: ImpAdCallI2 Format$(, )
  loc_9C7841: FStStrNoPop var_C8
  loc_9C7844: ConcatStr
  loc_9C7845: FStStrNoPop var_CC
  loc_9C7848: LitStr "'"
  loc_9C784B: ConcatStr
  loc_9C784C: FStStrNoPop var_D0
  loc_9C784F: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9C7852: ConcatStr
  loc_9C7853: FStStrNoPop var_D4
  loc_9C7856: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9C785B: FFreeStr var_90 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_9C786A: FFree1Var var_C0 = ""
  loc_9C786D: FLdRfVar var_D8
  loc_9C7870: FMemLdPr
  loc_9C7875:  = Me.RecordCount
  loc_9C787A: ILdRf var_D8
  loc_9C787D: LitI4 0
  loc_9C7882: GtI4
  loc_9C7883: BranchF loc_9C78C0
  loc_9C7886: FLdRfVar var_C0
  loc_9C7889: FLdRfVar var_E0
  loc_9C788C: LitVarStr var_A0, "CatrFirm"
  loc_9C7891: PopAdLdVar
  loc_9C7892: FLdRfVar var_DC
  loc_9C7895: FMemLdPr
  loc_9C789A:  = Me.Fields
  loc_9C789F: FLdPr var_DC
  loc_9C78A2: from_stack_2 = Me.Item(from_stack_1)
  loc_9C78A7: FLdPr var_E0
  loc_9C78AA:  = Me.Value
  loc_9C78AF: FLdRfVar var_C0
  loc_9C78B2: CStrVarTmp
  loc_9C78B3: FStStr var_88
  loc_9C78B6: FFreeAd var_DC = ""
  loc_9C78BD: FFree1Var var_C0 = ""
  loc_9C78C0: ExitProc
  loc_9C78C1: ExitProcHresult
End Function

Private Function Proc_259_61_9CF39C(arg_C) '9CF39C
  'Data Table: 4569C4
  loc_9CF2D8: ILdRf arg_C
  loc_9CF2DB: FStStrCopy var_8C
  loc_9CF2DE: LitStr "SELECT IF(DetaPers IS NULL OR firma.CctrFirm = 0, '', DetaPers) DetaPers"
  loc_9CF2E1: LitStr " FROM firma"
  loc_9CF2E4: ConcatStr
  loc_9CF2E5: FStStrNoPop var_90
  loc_9CF2E8: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = firma.CctrFirm"
  loc_9CF2EB: ConcatStr
  loc_9CF2EC: FStStrNoPop var_94
  loc_9CF2EF: LitStr " WHERE FormFirm = 'Orden de Pago' AND FechFirm <= '"
  loc_9CF2F2: ConcatStr
  loc_9CF2F3: FStStrNoPop var_C8
  loc_9CF2F6: LitI4 1
  loc_9CF2FB: LitI4 1
  loc_9CF300: LitVarStr var_B4, "yyyy-mm-dd"
  loc_9CF305: FStVarCopyObj var_C4
  loc_9CF308: FLdRfVar var_C4
  loc_9CF30B: FLdRfVar var_8C
  loc_9CF30E: CVarRef
  loc_9CF313: ImpAdCallI2 Format$(, )
  loc_9CF318: FStStrNoPop var_CC
  loc_9CF31B: ConcatStr
  loc_9CF31C: FStStrNoPop var_D0
  loc_9CF31F: LitStr "'"
  loc_9CF322: ConcatStr
  loc_9CF323: FStStrNoPop var_D4
  loc_9CF326: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9CF329: ConcatStr
  loc_9CF32A: FStStrNoPop var_D8
  loc_9CF32D: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9CF332: FFreeStr var_90 = "": var_94 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_9CF343: FFree1Var var_C4 = ""
  loc_9CF346: FLdRfVar var_DC
  loc_9CF349: FMemLdPr
  loc_9CF34E:  = Me.RecordCount
  loc_9CF353: ILdRf var_DC
  loc_9CF356: LitI4 0
  loc_9CF35B: GtI4
  loc_9CF35C: BranchF loc_9CF399
  loc_9CF35F: FLdRfVar var_C4
  loc_9CF362: FLdRfVar var_E4
  loc_9CF365: LitVarStr var_A4, "DetaPers"
  loc_9CF36A: PopAdLdVar
  loc_9CF36B: FLdRfVar var_E0
  loc_9CF36E: FMemLdPr
  loc_9CF373:  = Me.Fields
  loc_9CF378: FLdPr var_E0
  loc_9CF37B: from_stack_2 = Me.Item(from_stack_1)
  loc_9CF380: FLdPr var_E4
  loc_9CF383:  = Me.Value
  loc_9CF388: FLdRfVar var_C4
  loc_9CF38B: CStrVarTmp
  loc_9CF38C: FStStr var_88
  loc_9CF38F: FFreeAd var_E0 = ""
  loc_9CF396: FFree1Var var_C4 = ""
  loc_9CF399: ExitProc
  loc_9CF39A: GtCyR8
End Function

Private Function Proc_259_62_9D0028(arg_C) '9D0028
  'Data Table: 4569C4
  loc_9CFF64: ILdRf arg_C
  loc_9CFF67: FStStrCopy var_8C
  loc_9CFF6A: LitStr "SELECT IF(DetaPers IS NULL OR firma.CcunFirm = 0, '', DetaPers) DetaPers"
  loc_9CFF6D: LitStr " FROM firma"
  loc_9CFF70: ConcatStr
  loc_9CFF71: FStStrNoPop var_90
  loc_9CFF74: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = firma.CcunFirm"
  loc_9CFF77: ConcatStr
  loc_9CFF78: FStStrNoPop var_94
  loc_9CFF7B: LitStr " WHERE FormFirm = 'Orden de Pago' AND FechFirm <= '"
  loc_9CFF7E: ConcatStr
  loc_9CFF7F: FStStrNoPop var_C8
  loc_9CFF82: LitI4 1
  loc_9CFF87: LitI4 1
  loc_9CFF8C: LitVarStr var_B4, "yyyy-mm-dd"
  loc_9CFF91: FStVarCopyObj var_C4
  loc_9CFF94: FLdRfVar var_C4
  loc_9CFF97: FLdRfVar var_8C
  loc_9CFF9A: CVarRef
  loc_9CFF9F: ImpAdCallI2 Format$(, )
  loc_9CFFA4: FStStrNoPop var_CC
  loc_9CFFA7: ConcatStr
  loc_9CFFA8: FStStrNoPop var_D0
  loc_9CFFAB: LitStr "'"
  loc_9CFFAE: ConcatStr
  loc_9CFFAF: FStStrNoPop var_D4
  loc_9CFFB2: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9CFFB5: ConcatStr
  loc_9CFFB6: FStStrNoPop var_D8
  loc_9CFFB9: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9CFFBE: FFreeStr var_90 = "": var_94 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_9CFFCF: FFree1Var var_C4 = ""
  loc_9CFFD2: FLdRfVar var_DC
  loc_9CFFD5: FMemLdPr
  loc_9CFFDA:  = Me.RecordCount
  loc_9CFFDF: ILdRf var_DC
  loc_9CFFE2: LitI4 0
  loc_9CFFE7: GtI4
  loc_9CFFE8: BranchF loc_9D0025
  loc_9CFFEB: FLdRfVar var_C4
  loc_9CFFEE: FLdRfVar var_E4
  loc_9CFFF1: LitVarStr var_A4, "DetaPers"
  loc_9CFFF6: PopAdLdVar
  loc_9CFFF7: FLdRfVar var_E0
  loc_9CFFFA: FMemLdPr
  loc_9CFFFF:  = Me.Fields
  loc_9D0004: FLdPr var_E0
  loc_9D0007: from_stack_2 = Me.Item(from_stack_1)
  loc_9D000C: FLdPr var_E4
  loc_9D000F:  = Me.Value
  loc_9D0014: FLdRfVar var_C4
  loc_9D0017: CStrVarTmp
  loc_9D0018: FStStr var_88
  loc_9D001B: FFreeAd var_E0 = ""
  loc_9D0022: FFree1Var var_C4 = ""
  loc_9D0025: ExitProc
End Function

Private Function Proc_259_63_9B5C6C(arg_C) '9B5C6C
  'Data Table: 4569C4
  loc_9B5BCC: ILdRf arg_C
  loc_9B5BCF: FStStrCopy var_8C
  loc_9B5BD2: LitStr "SELECT IFNULL(CaunFirm,'') AS CaunFirm FROM firma WHERE FormFirm = 'Retencion' AND FechFirm <= '"
  loc_9B5BD5: LitI4 1
  loc_9B5BDA: LitI4 1
  loc_9B5BDF: LitVarStr var_AC, "yyyy-mm-dd"
  loc_9B5BE4: FStVarCopyObj var_BC
  loc_9B5BE7: FLdRfVar var_BC
  loc_9B5BEA: FLdRfVar var_8C
  loc_9B5BED: CVarRef
  loc_9B5BF2: ImpAdCallI2 Format$(, )
  loc_9B5BF7: FStStrNoPop var_C0
  loc_9B5BFA: ConcatStr
  loc_9B5BFB: FStStrNoPop var_C4
  loc_9B5BFE: LitStr "' ORDER BY FechFirm DESC LIMIT 1"
  loc_9B5C01: ConcatStr
  loc_9B5C02: FStStrNoPop var_C8
  loc_9B5C05: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9B5C0A: FFreeStr var_C0 = "": var_C4 = ""
  loc_9B5C13: FFree1Var var_BC = ""
  loc_9B5C16: FLdRfVar var_CC
  loc_9B5C19: FMemLdPr
  loc_9B5C1E:  = Me.RecordCount
  loc_9B5C23: ILdRf var_CC
  loc_9B5C26: LitI4 0
  loc_9B5C2B: GtI4
  loc_9B5C2C: BranchF loc_9B5C69
  loc_9B5C2F: FLdRfVar var_BC
  loc_9B5C32: FLdRfVar var_D4
  loc_9B5C35: LitVarStr var_9C, "CaunFirm"
  loc_9B5C3A: PopAdLdVar
  loc_9B5C3B: FLdRfVar var_D0
  loc_9B5C3E: FMemLdPr
  loc_9B5C43:  = Me.Fields
  loc_9B5C48: FLdPr var_D0
  loc_9B5C4B: from_stack_2 = Me.Item(from_stack_1)
  loc_9B5C50: FLdPr var_D4
  loc_9B5C53:  = Me.Value
  loc_9B5C58: FLdRfVar var_BC
  loc_9B5C5B: CStrVarTmp
  loc_9B5C5C: FStStr var_88
  loc_9B5C5F: FFreeAd var_D0 = ""
  loc_9B5C66: FFree1Var var_BC = ""
  loc_9B5C69: ExitProc
End Function

Private Function Proc_259_64_9B5D5C(arg_C) '9B5D5C
  'Data Table: 4569C4
  loc_9B5CBC: ILdRf arg_C
  loc_9B5CBF: FStStrCopy var_8C
  loc_9B5CC2: LitStr "SELECT IFNULL(DetaPers,'') AS CcunFirm FROM firma LEFT JOIN infogov.persona ON persona.CucuPers = firma.CcunFirm WHERE FormFirm = 'Retencion' AND FechFirm <= '"
  loc_9B5CC5: LitI4 1
  loc_9B5CCA: LitI4 1
  loc_9B5CCF: LitVarStr var_AC, "yyyy-mm-dd"
  loc_9B5CD4: FStVarCopyObj var_BC
  loc_9B5CD7: FLdRfVar var_BC
  loc_9B5CDA: FLdRfVar var_8C
  loc_9B5CDD: CVarRef
  loc_9B5CE2: ImpAdCallI2 Format$(, )
  loc_9B5CE7: FStStrNoPop var_C0
  loc_9B5CEA: ConcatStr
  loc_9B5CEB: FStStrNoPop var_C4
  loc_9B5CEE: LitStr "' ORDER BY FechFirm DESC LIMIT 1"
  loc_9B5CF1: ConcatStr
  loc_9B5CF2: FStStrNoPop var_C8
  loc_9B5CF5: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9B5CFA: FFreeStr var_C0 = "": var_C4 = ""
  loc_9B5D03: FFree1Var var_BC = ""
  loc_9B5D06: FLdRfVar var_CC
  loc_9B5D09: FMemLdPr
  loc_9B5D0E:  = Me.RecordCount
  loc_9B5D13: ILdRf var_CC
  loc_9B5D16: LitI4 0
  loc_9B5D1B: GtI4
  loc_9B5D1C: BranchF loc_9B5D59
  loc_9B5D1F: FLdRfVar var_BC
  loc_9B5D22: FLdRfVar var_D4
  loc_9B5D25: LitVarStr var_9C, "CcunFirm"
  loc_9B5D2A: PopAdLdVar
  loc_9B5D2B: FLdRfVar var_D0
  loc_9B5D2E: FMemLdPr
  loc_9B5D33:  = Me.Fields
  loc_9B5D38: FLdPr var_D0
  loc_9B5D3B: from_stack_2 = Me.Item(from_stack_1)
  loc_9B5D40: FLdPr var_D4
  loc_9B5D43:  = Me.Value
  loc_9B5D48: FLdRfVar var_BC
  loc_9B5D4B: CStrVarTmp
  loc_9B5D4C: FStStr var_88
  loc_9B5D4F: FFreeAd var_D0 = ""
  loc_9B5D56: FFree1Var var_BC = ""
  loc_9B5D59: ExitProc
  loc_9B5D5A: NeI2
End Function

Private Function Proc_259_65_9D8140(arg_C, arg_10) '9D8140
  'Data Table: 4569C4
  loc_9D806C: ILdRf arg_C
  loc_9D806F: FStStrCopy var_8C
  loc_9D8072: ILdRf arg_10
  loc_9D8075: FStStrCopy var_90
  loc_9D8078: LitStr "SELECT IFNULL(CaunFirm,'') AS CaunFirm"
  loc_9D807B: LitStr " FROM firma"
  loc_9D807E: ConcatStr
  loc_9D807F: FStStrNoPop var_94
  loc_9D8082: LitStr " WHERE FormFirm = '"
  loc_9D8085: ConcatStr
  loc_9D8086: FStStrNoPop var_98
  loc_9D8089: ILdRf var_8C
  loc_9D808C: ConcatStr
  loc_9D808D: FStStrNoPop var_9C
  loc_9D8090: LitStr "' AND FechFirm <= '"
  loc_9D8093: ConcatStr
  loc_9D8094: FStStrNoPop var_D0
  loc_9D8097: LitI4 1
  loc_9D809C: LitI4 1
  loc_9D80A1: LitVarStr var_BC, "yyyy-mm-dd"
  loc_9D80A6: FStVarCopyObj var_CC
  loc_9D80A9: FLdRfVar var_CC
  loc_9D80AC: FLdRfVar var_90
  loc_9D80AF: CVarRef
  loc_9D80B4: ImpAdCallI2 Format$(, )
  loc_9D80B9: FStStrNoPop var_D4
  loc_9D80BC: ConcatStr
  loc_9D80BD: FStStrNoPop var_D8
  loc_9D80C0: LitStr "'"
  loc_9D80C3: ConcatStr
  loc_9D80C4: FStStrNoPop var_DC
  loc_9D80C7: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9D80CA: ConcatStr
  loc_9D80CB: FStStrNoPop var_E0
  loc_9D80CE: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9D80D3: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_9D80E6: FFree1Var var_CC = ""
  loc_9D80E9: FLdRfVar var_E4
  loc_9D80EC: FMemLdPr
  loc_9D80F1:  = Me.RecordCount
  loc_9D80F6: ILdRf var_E4
  loc_9D80F9: LitI4 0
  loc_9D80FE: GtI4
  loc_9D80FF: BranchF loc_9D813C
  loc_9D8102: FLdRfVar var_CC
  loc_9D8105: FLdRfVar var_EC
  loc_9D8108: LitVarStr var_AC, "CaunFirm"
  loc_9D810D: PopAdLdVar
  loc_9D810E: FLdRfVar var_E8
  loc_9D8111: FMemLdPr
  loc_9D8116:  = Me.Fields
  loc_9D811B: FLdPr var_E8
  loc_9D811E: from_stack_2 = Me.Item(from_stack_1)
  loc_9D8123: FLdPr var_EC
  loc_9D8126:  = Me.Value
  loc_9D812B: FLdRfVar var_CC
  loc_9D812E: CStrVarTmp
  loc_9D812F: FStStr var_88
  loc_9D8132: FFreeAd var_E8 = ""
  loc_9D8139: FFree1Var var_CC = ""
  loc_9D813C: ExitProc
End Function

Private Function Proc_259_66_9DBFC8(arg_C, arg_10) '9DBFC8
  'Data Table: 4569C4
  loc_9DBEEC: ILdRf arg_C
  loc_9DBEEF: FStStrCopy var_8C
  loc_9DBEF2: ILdRf arg_10
  loc_9DBEF5: FStStrCopy var_90
  loc_9DBEF8: LitStr "SELECT IF(DetaPers IS NULL OR firma.CccuFirm = 0, '', DetaPers) DetaPers"
  loc_9DBEFB: LitStr " FROM firma"
  loc_9DBEFE: ConcatStr
  loc_9DBEFF: FStStrNoPop var_94
  loc_9DBF02: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = firma.CccuFirm"
  loc_9DBF05: ConcatStr
  loc_9DBF06: FStStrNoPop var_98
  loc_9DBF09: LitStr " WHERE FormFirm = '"
  loc_9DBF0C: ConcatStr
  loc_9DBF0D: FStStrNoPop var_9C
  loc_9DBF10: ILdRf var_8C
  loc_9DBF13: ConcatStr
  loc_9DBF14: FStStrNoPop var_A0
  loc_9DBF17: LitStr "' AND FechFirm <= '"
  loc_9DBF1A: ConcatStr
  loc_9DBF1B: FStStrNoPop var_D4
  loc_9DBF1E: LitI4 1
  loc_9DBF23: LitI4 1
  loc_9DBF28: LitVarStr var_C0, "yyyy-mm-dd"
  loc_9DBF2D: FStVarCopyObj var_D0
  loc_9DBF30: FLdRfVar var_D0
  loc_9DBF33: FLdRfVar var_90
  loc_9DBF36: CVarRef
  loc_9DBF3B: ImpAdCallI2 Format$(, )
  loc_9DBF40: FStStrNoPop var_D8
  loc_9DBF43: ConcatStr
  loc_9DBF44: FStStrNoPop var_DC
  loc_9DBF47: LitStr "'"
  loc_9DBF4A: ConcatStr
  loc_9DBF4B: FStStrNoPop var_E0
  loc_9DBF4E: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9DBF51: ConcatStr
  loc_9DBF52: FStStrNoPop var_E4
  loc_9DBF55: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9DBF5A: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_9DBF6F: FFree1Var var_D0 = ""
  loc_9DBF72: FLdRfVar var_E8
  loc_9DBF75: FMemLdPr
  loc_9DBF7A:  = Me.RecordCount
  loc_9DBF7F: ILdRf var_E8
  loc_9DBF82: LitI4 0
  loc_9DBF87: GtI4
  loc_9DBF88: BranchF loc_9DBFC5
  loc_9DBF8B: FLdRfVar var_D0
  loc_9DBF8E: FLdRfVar var_F0
  loc_9DBF91: LitVarStr var_B0, "DetaPers"
  loc_9DBF96: PopAdLdVar
  loc_9DBF97: FLdRfVar var_EC
  loc_9DBF9A: FMemLdPr
  loc_9DBF9F:  = Me.Fields
  loc_9DBFA4: FLdPr var_EC
  loc_9DBFA7: from_stack_2 = Me.Item(from_stack_1)
  loc_9DBFAC: FLdPr var_F0
  loc_9DBFAF:  = Me.Value
  loc_9DBFB4: FLdRfVar var_D0
  loc_9DBFB7: CStrVarTmp
  loc_9DBFB8: FStStr var_88
  loc_9DBFBB: FFreeAd var_EC = ""
  loc_9DBFC2: FFree1Var var_D0 = ""
  loc_9DBFC5: ExitProc
End Function

Private Function Proc_259_67_9D84F4(arg_C, arg_10) '9D84F4
  'Data Table: 4569C4
  loc_9D8420: ILdRf arg_C
  loc_9D8423: FStStrCopy var_8C
  loc_9D8426: ILdRf arg_10
  loc_9D8429: FStStrCopy var_90
  loc_9D842C: LitStr "SELECT IFNULL(CadoFirm,'') AS CadoFirm"
  loc_9D842F: LitStr " FROM firma"
  loc_9D8432: ConcatStr
  loc_9D8433: FStStrNoPop var_94
  loc_9D8436: LitStr " WHERE FormFirm = '"
  loc_9D8439: ConcatStr
  loc_9D843A: FStStrNoPop var_98
  loc_9D843D: ILdRf var_8C
  loc_9D8440: ConcatStr
  loc_9D8441: FStStrNoPop var_9C
  loc_9D8444: LitStr "' AND FechFirm <= '"
  loc_9D8447: ConcatStr
  loc_9D8448: FStStrNoPop var_D0
  loc_9D844B: LitI4 1
  loc_9D8450: LitI4 1
  loc_9D8455: LitVarStr var_BC, "yyyy-mm-dd"
  loc_9D845A: FStVarCopyObj var_CC
  loc_9D845D: FLdRfVar var_CC
  loc_9D8460: FLdRfVar var_90
  loc_9D8463: CVarRef
  loc_9D8468: ImpAdCallI2 Format$(, )
  loc_9D846D: FStStrNoPop var_D4
  loc_9D8470: ConcatStr
  loc_9D8471: FStStrNoPop var_D8
  loc_9D8474: LitStr "'"
  loc_9D8477: ConcatStr
  loc_9D8478: FStStrNoPop var_DC
  loc_9D847B: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9D847E: ConcatStr
  loc_9D847F: FStStrNoPop var_E0
  loc_9D8482: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9D8487: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_9D849A: FFree1Var var_CC = ""
  loc_9D849D: FLdRfVar var_E4
  loc_9D84A0: FMemLdPr
  loc_9D84A5:  = Me.RecordCount
  loc_9D84AA: ILdRf var_E4
  loc_9D84AD: LitI4 0
  loc_9D84B2: GtI4
  loc_9D84B3: BranchF loc_9D84F0
  loc_9D84B6: FLdRfVar var_CC
  loc_9D84B9: FLdRfVar var_EC
  loc_9D84BC: LitVarStr var_AC, "CadoFirm"
  loc_9D84C1: PopAdLdVar
  loc_9D84C2: FLdRfVar var_E8
  loc_9D84C5: FMemLdPr
  loc_9D84CA:  = Me.Fields
  loc_9D84CF: FLdPr var_E8
  loc_9D84D2: from_stack_2 = Me.Item(from_stack_1)
  loc_9D84D7: FLdPr var_EC
  loc_9D84DA:  = Me.Value
  loc_9D84DF: FLdRfVar var_CC
  loc_9D84E2: CStrVarTmp
  loc_9D84E3: FStStr var_88
  loc_9D84E6: FFreeAd var_E8 = ""
  loc_9D84ED: FFree1Var var_CC = ""
  loc_9D84F0: ExitProc
End Function

Private Function Proc_259_68_9DD820(arg_C, arg_10) '9DD820
  'Data Table: 4569C4
  loc_9DD744: ILdRf arg_C
  loc_9DD747: FStStrCopy var_8C
  loc_9DD74A: ILdRf arg_10
  loc_9DD74D: FStStrCopy var_90
  loc_9DD750: LitStr "SELECT IF(DetaPers IS NULL OR firma.CcdoFirm = 0, '', DetaPers) DetaPers"
  loc_9DD753: LitStr " FROM firma"
  loc_9DD756: ConcatStr
  loc_9DD757: FStStrNoPop var_94
  loc_9DD75A: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = firma.CcdoFirm"
  loc_9DD75D: ConcatStr
  loc_9DD75E: FStStrNoPop var_98
  loc_9DD761: LitStr " WHERE FormFirm = '"
  loc_9DD764: ConcatStr
  loc_9DD765: FStStrNoPop var_9C
  loc_9DD768: ILdRf var_8C
  loc_9DD76B: ConcatStr
  loc_9DD76C: FStStrNoPop var_A0
  loc_9DD76F: LitStr "' AND FechFirm <= '"
  loc_9DD772: ConcatStr
  loc_9DD773: FStStrNoPop var_D4
  loc_9DD776: LitI4 1
  loc_9DD77B: LitI4 1
  loc_9DD780: LitVarStr var_C0, "yyyy-mm-dd"
  loc_9DD785: FStVarCopyObj var_D0
  loc_9DD788: FLdRfVar var_D0
  loc_9DD78B: FLdRfVar var_90
  loc_9DD78E: CVarRef
  loc_9DD793: ImpAdCallI2 Format$(, )
  loc_9DD798: FStStrNoPop var_D8
  loc_9DD79B: ConcatStr
  loc_9DD79C: FStStrNoPop var_DC
  loc_9DD79F: LitStr "'"
  loc_9DD7A2: ConcatStr
  loc_9DD7A3: FStStrNoPop var_E0
  loc_9DD7A6: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9DD7A9: ConcatStr
  loc_9DD7AA: FStStrNoPop var_E4
  loc_9DD7AD: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9DD7B2: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_9DD7C7: FFree1Var var_D0 = ""
  loc_9DD7CA: FLdRfVar var_E8
  loc_9DD7CD: FMemLdPr
  loc_9DD7D2:  = Me.RecordCount
  loc_9DD7D7: ILdRf var_E8
  loc_9DD7DA: LitI4 0
  loc_9DD7DF: GtI4
  loc_9DD7E0: BranchF loc_9DD81D
  loc_9DD7E3: FLdRfVar var_D0
  loc_9DD7E6: FLdRfVar var_F0
  loc_9DD7E9: LitVarStr var_B0, "DetaPers"
  loc_9DD7EE: PopAdLdVar
  loc_9DD7EF: FLdRfVar var_EC
  loc_9DD7F2: FMemLdPr
  loc_9DD7F7:  = Me.Fields
  loc_9DD7FC: FLdPr var_EC
  loc_9DD7FF: from_stack_2 = Me.Item(from_stack_1)
  loc_9DD804: FLdPr var_F0
  loc_9DD807:  = Me.Value
  loc_9DD80C: FLdRfVar var_D0
  loc_9DD80F: CStrVarTmp
  loc_9DD810: FStStr var_88
  loc_9DD813: FFreeAd var_EC = ""
  loc_9DD81A: FFree1Var var_D0 = ""
  loc_9DD81D: ExitProc
  loc_9DD81E: ExitProcI2
End Function

Private Function Proc_259_69_9D89E4(arg_C, arg_10) '9D89E4
  'Data Table: 4569C4
  loc_9D8910: ILdRf arg_C
  loc_9D8913: FStStrCopy var_8C
  loc_9D8916: ILdRf arg_10
  loc_9D8919: FStStrCopy var_90
  loc_9D891C: LitStr "SELECT IFNULL(CatrFirm,'') AS CatrFirm"
  loc_9D891F: LitStr " FROM firma"
  loc_9D8922: ConcatStr
  loc_9D8923: FStStrNoPop var_94
  loc_9D8926: LitStr " WHERE FormFirm = '"
  loc_9D8929: ConcatStr
  loc_9D892A: FStStrNoPop var_98
  loc_9D892D: ILdRf var_8C
  loc_9D8930: ConcatStr
  loc_9D8931: FStStrNoPop var_9C
  loc_9D8934: LitStr "' AND FechFirm <= '"
  loc_9D8937: ConcatStr
  loc_9D8938: FStStrNoPop var_D0
  loc_9D893B: LitI4 1
  loc_9D8940: LitI4 1
  loc_9D8945: LitVarStr var_BC, "yyyy-mm-dd"
  loc_9D894A: FStVarCopyObj var_CC
  loc_9D894D: FLdRfVar var_CC
  loc_9D8950: FLdRfVar var_90
  loc_9D8953: CVarRef
  loc_9D8958: ImpAdCallI2 Format$(, )
  loc_9D895D: FStStrNoPop var_D4
  loc_9D8960: ConcatStr
  loc_9D8961: FStStrNoPop var_D8
  loc_9D8964: LitStr "'"
  loc_9D8967: ConcatStr
  loc_9D8968: FStStrNoPop var_DC
  loc_9D896B: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9D896E: ConcatStr
  loc_9D896F: FStStrNoPop var_E0
  loc_9D8972: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9D8977: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_9D898A: FFree1Var var_CC = ""
  loc_9D898D: FLdRfVar var_E4
  loc_9D8990: FMemLdPr
  loc_9D8995:  = Me.RecordCount
  loc_9D899A: ILdRf var_E4
  loc_9D899D: LitI4 0
  loc_9D89A2: GtI4
  loc_9D89A3: BranchF loc_9D89E0
  loc_9D89A6: FLdRfVar var_CC
  loc_9D89A9: FLdRfVar var_EC
  loc_9D89AC: LitVarStr var_AC, "CatrFirm"
  loc_9D89B1: PopAdLdVar
  loc_9D89B2: FLdRfVar var_E8
  loc_9D89B5: FMemLdPr
  loc_9D89BA:  = Me.Fields
  loc_9D89BF: FLdPr var_E8
  loc_9D89C2: from_stack_2 = Me.Item(from_stack_1)
  loc_9D89C7: FLdPr var_EC
  loc_9D89CA:  = Me.Value
  loc_9D89CF: FLdRfVar var_CC
  loc_9D89D2: CStrVarTmp
  loc_9D89D3: FStStr var_88
  loc_9D89D6: FFreeAd var_E8 = ""
  loc_9D89DD: FFree1Var var_CC = ""
  loc_9D89E0: ExitProc
  loc_9D89E1: CBoolCy
  loc_9D89E2: GtR4
End Function

Private Function Proc_259_70_9DDAB0(arg_C, arg_10) '9DDAB0
  'Data Table: 4569C4
  loc_9DD9D4: ILdRf arg_C
  loc_9DD9D7: FStStrCopy var_8C
  loc_9DD9DA: ILdRf arg_10
  loc_9DD9DD: FStStrCopy var_90
  loc_9DD9E0: LitStr "SELECT IF(DetaPers IS NULL OR firma.CctrFirm = 0, '', DetaPers) DetaPers"
  loc_9DD9E3: LitStr " FROM firma"
  loc_9DD9E6: ConcatStr
  loc_9DD9E7: FStStrNoPop var_94
  loc_9DD9EA: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = firma.CctrFirm"
  loc_9DD9ED: ConcatStr
  loc_9DD9EE: FStStrNoPop var_98
  loc_9DD9F1: LitStr " WHERE FormFirm = '"
  loc_9DD9F4: ConcatStr
  loc_9DD9F5: FStStrNoPop var_9C
  loc_9DD9F8: ILdRf var_8C
  loc_9DD9FB: ConcatStr
  loc_9DD9FC: FStStrNoPop var_A0
  loc_9DD9FF: LitStr "' AND FechFirm <= '"
  loc_9DDA02: ConcatStr
  loc_9DDA03: FStStrNoPop var_D4
  loc_9DDA06: LitI4 1
  loc_9DDA0B: LitI4 1
  loc_9DDA10: LitVarStr var_C0, "yyyy-mm-dd"
  loc_9DDA15: FStVarCopyObj var_D0
  loc_9DDA18: FLdRfVar var_D0
  loc_9DDA1B: FLdRfVar var_90
  loc_9DDA1E: CVarRef
  loc_9DDA23: ImpAdCallI2 Format$(, )
  loc_9DDA28: FStStrNoPop var_D8
  loc_9DDA2B: ConcatStr
  loc_9DDA2C: FStStrNoPop var_DC
  loc_9DDA2F: LitStr "'"
  loc_9DDA32: ConcatStr
  loc_9DDA33: FStStrNoPop var_E0
  loc_9DDA36: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9DDA39: ConcatStr
  loc_9DDA3A: FStStrNoPop var_E4
  loc_9DDA3D: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9DDA42: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_9DDA57: FFree1Var var_D0 = ""
  loc_9DDA5A: FLdRfVar var_E8
  loc_9DDA5D: FMemLdPr
  loc_9DDA62:  = Me.RecordCount
  loc_9DDA67: ILdRf var_E8
  loc_9DDA6A: LitI4 0
  loc_9DDA6F: GtI4
  loc_9DDA70: BranchF loc_9DDAAD
  loc_9DDA73: FLdRfVar var_D0
  loc_9DDA76: FLdRfVar var_F0
  loc_9DDA79: LitVarStr var_B0, "DetaPers"
  loc_9DDA7E: PopAdLdVar
  loc_9DDA7F: FLdRfVar var_EC
  loc_9DDA82: FMemLdPr
  loc_9DDA87:  = Me.Fields
  loc_9DDA8C: FLdPr var_EC
  loc_9DDA8F: from_stack_2 = Me.Item(from_stack_1)
  loc_9DDA94: FLdPr var_F0
  loc_9DDA97:  = Me.Value
  loc_9DDA9C: FLdRfVar var_D0
  loc_9DDA9F: CStrVarTmp
  loc_9DDAA0: FStStr var_88
  loc_9DDAA3: FFreeAd var_EC = ""
  loc_9DDAAA: FFree1Var var_D0 = ""
  loc_9DDAAD: ExitProc
End Function

Private Function Proc_259_71_9DDD40(arg_C, arg_10) '9DDD40
  'Data Table: 4569C4
  loc_9DDC64: ILdRf arg_C
  loc_9DDC67: FStStrCopy var_8C
  loc_9DDC6A: ILdRf arg_10
  loc_9DDC6D: FStStrCopy var_90
  loc_9DDC70: LitStr "SELECT IF(DetaPers IS NULL OR firma.CcunFirm = 0, '', DetaPers) DetaPers"
  loc_9DDC73: LitStr " FROM firma"
  loc_9DDC76: ConcatStr
  loc_9DDC77: FStStrNoPop var_94
  loc_9DDC7A: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = firma.CcunFirm"
  loc_9DDC7D: ConcatStr
  loc_9DDC7E: FStStrNoPop var_98
  loc_9DDC81: LitStr " WHERE FormFirm = '"
  loc_9DDC84: ConcatStr
  loc_9DDC85: FStStrNoPop var_9C
  loc_9DDC88: ILdRf var_8C
  loc_9DDC8B: ConcatStr
  loc_9DDC8C: FStStrNoPop var_A0
  loc_9DDC8F: LitStr "' AND FechFirm <= '"
  loc_9DDC92: ConcatStr
  loc_9DDC93: FStStrNoPop var_D4
  loc_9DDC96: LitI4 1
  loc_9DDC9B: LitI4 1
  loc_9DDCA0: LitVarStr var_C0, "yyyy-mm-dd"
  loc_9DDCA5: FStVarCopyObj var_D0
  loc_9DDCA8: FLdRfVar var_D0
  loc_9DDCAB: FLdRfVar var_90
  loc_9DDCAE: CVarRef
  loc_9DDCB3: ImpAdCallI2 Format$(, )
  loc_9DDCB8: FStStrNoPop var_D8
  loc_9DDCBB: ConcatStr
  loc_9DDCBC: FStStrNoPop var_DC
  loc_9DDCBF: LitStr "'"
  loc_9DDCC2: ConcatStr
  loc_9DDCC3: FStStrNoPop var_E0
  loc_9DDCC6: LitStr " ORDER BY FechFirm DESC LIMIT 1"
  loc_9DDCC9: ConcatStr
  loc_9DDCCA: FStStrNoPop var_E4
  loc_9DDCCD: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9DDCD2: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_9DDCE7: FFree1Var var_D0 = ""
  loc_9DDCEA: FLdRfVar var_E8
  loc_9DDCED: FMemLdPr
  loc_9DDCF2:  = Me.RecordCount
  loc_9DDCF7: ILdRf var_E8
  loc_9DDCFA: LitI4 0
  loc_9DDCFF: GtI4
  loc_9DDD00: BranchF loc_9DDD3D
  loc_9DDD03: FLdRfVar var_D0
  loc_9DDD06: FLdRfVar var_F0
  loc_9DDD09: LitVarStr var_B0, "DetaPers"
  loc_9DDD0E: PopAdLdVar
  loc_9DDD0F: FLdRfVar var_EC
  loc_9DDD12: FMemLdPr
  loc_9DDD17:  = Me.Fields
  loc_9DDD1C: FLdPr var_EC
  loc_9DDD1F: from_stack_2 = Me.Item(from_stack_1)
  loc_9DDD24: FLdPr var_F0
  loc_9DDD27:  = Me.Value
  loc_9DDD2C: FLdRfVar var_D0
  loc_9DDD2F: CStrVarTmp
  loc_9DDD30: FStStr var_88
  loc_9DDD33: FFreeAd var_EC = ""
  loc_9DDD3A: FFree1Var var_D0 = ""
  loc_9DDD3D: ExitProc
End Function

Private Function Proc_259_72_9C60F4(arg_C, arg_10) '9C60F4
  'Data Table: 4569C4
  loc_9C603C: ILdRf arg_C
  loc_9C603F: FStStrCopy var_8C
  loc_9C6042: ILdRf arg_10
  loc_9C6045: FStStrCopy var_90
  loc_9C6048: LitStr "SELECT IFNULL(CaunFirm,'') AS CaunFirm FROM firma WHERE FormFirm = '"
  loc_9C604B: ILdRf var_8C
  loc_9C604E: ConcatStr
  loc_9C604F: FStStrNoPop var_94
  loc_9C6052: LitStr "' AND FechFirm <= '"
  loc_9C6055: ConcatStr
  loc_9C6056: FStStrNoPop var_C8
  loc_9C6059: LitI4 1
  loc_9C605E: LitI4 1
  loc_9C6063: LitVarStr var_B4, "yyyy-mm-dd"
  loc_9C6068: FStVarCopyObj var_C4
  loc_9C606B: FLdRfVar var_C4
  loc_9C606E: FLdRfVar var_90
  loc_9C6071: CVarRef
  loc_9C6076: ImpAdCallI2 Format$(, )
  loc_9C607B: FStStrNoPop var_CC
  loc_9C607E: ConcatStr
  loc_9C607F: FStStrNoPop var_D0
  loc_9C6082: LitStr "' ORDER BY FechFirm DESC LIMIT 1"
  loc_9C6085: ConcatStr
  loc_9C6086: FStStrNoPop var_D4
  loc_9C6089: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9C608E: FFreeStr var_94 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_9C609B: FFree1Var var_C4 = ""
  loc_9C609E: FLdRfVar var_D8
  loc_9C60A1: FMemLdPr
  loc_9C60A6:  = Me.RecordCount
  loc_9C60AB: ILdRf var_D8
  loc_9C60AE: LitI4 0
  loc_9C60B3: GtI4
  loc_9C60B4: BranchF loc_9C60F1
  loc_9C60B7: FLdRfVar var_C4
  loc_9C60BA: FLdRfVar var_E0
  loc_9C60BD: LitVarStr var_A4, "CaunFirm"
  loc_9C60C2: PopAdLdVar
  loc_9C60C3: FLdRfVar var_DC
  loc_9C60C6: FMemLdPr
  loc_9C60CB:  = Me.Fields
  loc_9C60D0: FLdPr var_DC
  loc_9C60D3: from_stack_2 = Me.Item(from_stack_1)
  loc_9C60D8: FLdPr var_E0
  loc_9C60DB:  = Me.Value
  loc_9C60E0: FLdRfVar var_C4
  loc_9C60E3: CStrVarTmp
  loc_9C60E4: FStStr var_88
  loc_9C60E7: FFreeAd var_DC = ""
  loc_9C60EE: FFree1Var var_C4 = ""
  loc_9C60F1: ExitProc
End Function

Private Function Proc_259_73_9C631C(arg_C, arg_10) '9C631C
  'Data Table: 4569C4
  loc_9C6264: ILdRf arg_C
  loc_9C6267: FStStrCopy var_8C
  loc_9C626A: ILdRf arg_10
  loc_9C626D: FStStrCopy var_90
  loc_9C6270: LitStr "SELECT IFNULL(DetaPers,'') AS CcunFirm FROM firma LEFT JOIN infogov.persona ON persona.CucuPers = firma.CcunFirm WHERE FormFirm = '"
  loc_9C6273: ILdRf var_8C
  loc_9C6276: ConcatStr
  loc_9C6277: FStStrNoPop var_94
  loc_9C627A: LitStr "' AND FechFirm <= '"
  loc_9C627D: ConcatStr
  loc_9C627E: FStStrNoPop var_C8
  loc_9C6281: LitI4 1
  loc_9C6286: LitI4 1
  loc_9C628B: LitVarStr var_B4, "yyyy-mm-dd"
  loc_9C6290: FStVarCopyObj var_C4
  loc_9C6293: FLdRfVar var_C4
  loc_9C6296: FLdRfVar var_90
  loc_9C6299: CVarRef
  loc_9C629E: ImpAdCallI2 Format$(, )
  loc_9C62A3: FStStrNoPop var_CC
  loc_9C62A6: ConcatStr
  loc_9C62A7: FStStrNoPop var_D0
  loc_9C62AA: LitStr "' ORDER BY FechFirm DESC LIMIT 1"
  loc_9C62AD: ConcatStr
  loc_9C62AE: FStStrNoPop var_D4
  loc_9C62B1: ImpAdCallFPR4 Proc_259_51_989E30()
  loc_9C62B6: FFreeStr var_94 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_9C62C3: FFree1Var var_C4 = ""
  loc_9C62C6: FLdRfVar var_D8
  loc_9C62C9: FMemLdPr
  loc_9C62CE:  = Me.RecordCount
  loc_9C62D3: ILdRf var_D8
  loc_9C62D6: LitI4 0
  loc_9C62DB: GtI4
  loc_9C62DC: BranchF loc_9C6319
  loc_9C62DF: FLdRfVar var_C4
  loc_9C62E2: FLdRfVar var_E0
  loc_9C62E5: LitVarStr var_A4, "CcunFirm"
  loc_9C62EA: PopAdLdVar
  loc_9C62EB: FLdRfVar var_DC
  loc_9C62EE: FMemLdPr
  loc_9C62F3:  = Me.Fields
  loc_9C62F8: FLdPr var_DC
  loc_9C62FB: from_stack_2 = Me.Item(from_stack_1)
  loc_9C6300: FLdPr var_E0
  loc_9C6303:  = Me.Value
  loc_9C6308: FLdRfVar var_C4
  loc_9C630B: CStrVarTmp
  loc_9C630C: FStStr var_88
  loc_9C630F: FFreeAd var_DC = ""
  loc_9C6316: FFree1Var var_C4 = ""
  loc_9C6319: ExitProc
End Function
