
Private Function Proc_266_0_994BD4(arg_C, arg_10, arg_14) '994BD4
  'Data Table: 41FCDC
  loc_994B80: ILdRf arg_10
  loc_994B83: FStStrCopy var_8C
  loc_994B86: LitI2_Byte 0
  loc_994B88: LitI2_Byte 0
  loc_994B8A: ILdRf var_8C
  loc_994B8D: LitStr "Código de Retención"
  loc_994B90: ImpAdCallI2 Proc_266_29_9CEBC0(, , , )
  loc_994B95: FStStr var_88
  loc_994B98: ILdRf var_88
  loc_994B9B: LitStr vbNullString
  loc_994B9E: NeStr
  loc_994BA0: BranchF loc_994BA4
  loc_994BA3: ExitProc
  loc_994BA4: ILdRf arg_14
  loc_994BA7: ILdRf var_8C
  loc_994BAA: FLdI2 arg_C
  loc_994BAD: CStrUI1
  loc_994BAF: FStStrNoPop var_90
  loc_994BB2: ImpAdCallI2  = Proc_259_27_AB5E38(, )
  loc_994BB7: FFree1Str var_90
  loc_994BBA: BranchF loc_994BC0
  loc_994BBD: Branch loc_994BD1
  loc_994BC0: FLdRfVar var_90
  loc_994BC3: ILdPr
  loc_994BC6: from_stack_1v = tblretenciones.MsgErrorGet()
  loc_994BCB: FLdZeroAd var_90
  loc_994BCE: FStStr var_88
  loc_994BD1: ExitProc
  loc_994BD2: Ary1StI2
End Function

Private Function Proc_266_1_995198(arg_C, arg_10, arg_14, arg_18) '995198
  'Data Table: 41FCDC
  loc_995140: ILdRf arg_10
  loc_995143: FStStrCopy var_8C
  loc_995146: LitI2_Byte 0
  loc_995148: LitI2_Byte 0
  loc_99514A: ILdI4 arg_14
  loc_99514D: LitStr "Categoría de Retención"
  loc_995150: ImpAdCallI2 Proc_266_29_9CEBC0(, , , )
  loc_995155: FStStr var_88
  loc_995158: ILdRf var_88
  loc_99515B: LitStr vbNullString
  loc_99515E: NeStr
  loc_995160: BranchF loc_995164
  loc_995163: ExitProc
  loc_995164: ILdRf arg_18
  loc_995167: ILdI4 arg_14
  loc_99516A: ILdRf var_8C
  loc_99516D: FLdI2 arg_C
  loc_995170: CStrUI1
  loc_995172: FStStrNoPop var_90
  loc_995175: ImpAdCallI2  = Proc_259_10_ACE518(, , )
  loc_99517A: FFree1Str var_90
  loc_99517D: BranchF loc_995183
  loc_995180: Branch loc_995194
  loc_995183: FLdRfVar var_90
  loc_995186: ILdPr
  loc_995189: from_stack_1v = tblderetenciones.MsgErrorGet()
  loc_99518E: FLdZeroAd var_90
  loc_995191: FStStr var_88
  loc_995194: ExitProc
  loc_995195: EqR4
  loc_995196: CI4UI1
End Function

Private Function Proc_266_2_A228D4(arg_C, arg_10, arg_14, arg_18, arg_1C) 'A228D4
  'Data Table: 41FCDC
  loc_A22738: ILdRf arg_C
  loc_A2273B: FStStrCopy var_8C
  loc_A2273E: LitI2_Byte 0
  loc_A22740: PopTmpLdAd2 var_94
  loc_A22743: LitI2_Byte &HFF
  loc_A22745: PopTmpLdAd2 var_92
  loc_A22748: LitI2_Byte &HA
  loc_A2274A: CI2UI1
  loc_A2274C: PopTmpLdAd2 var_90
  loc_A2274F: ILdRf var_8C
  loc_A22752: LitStr "Cuenta Contable"
  loc_A22755: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A2275A: FStStr var_88
  loc_A2275D: ILdRf var_88
  loc_A22760: LitStr vbNullString
  loc_A22763: NeStr
  loc_A22765: BranchF loc_A22769
  loc_A22768: ExitProc
  loc_A22769: LitStr vbNullString
  loc_A2276C: FStStrCopy var_9C
  loc_A2276F: FLdRfVar var_9C
  loc_A22772: ILdRf arg_18
  loc_A22775: ILdRf var_8C
  loc_A22778: FLdI2 arg_14
  loc_A2277B: CStrUI1
  loc_A2277D: FStStrNoPop var_98
  loc_A22780: ImpAdCallI2  = Proc_259_8_ACF238(, )
  loc_A22785: FFreeStr var_98 = ""
  loc_A2278C: BranchF loc_A22845
  loc_A2278F: FLdRfVar var_98
  loc_A22792: ILdPr
  loc_A22795: from_stack_1v = tblcuentacontable.ImpuCucoGet()
  loc_A2279A: ILdRf var_98
  loc_A2279D: LitStr "No"
  loc_A227A0: EqStr
  loc_A227A2: FFree1Str var_98
  loc_A227A5: BranchF loc_A227B1
  loc_A227A8: LitStr "La Cuenta Contable NO es Imputable. Verifique..."
  loc_A227AB: FStStrCopy var_88
  loc_A227AE: Branch loc_A22842
  loc_A227B1: LitI4 0
  loc_A227B6: ILdI4 arg_1C
  loc_A227B9: Ary1LdRfVarg
  loc_A227BD: LitVarStr var_AC, vbNullString
  loc_A227C2: HardType
  loc_A227C3: NeVarBool
  loc_A227C5: BranchF loc_A22842
  loc_A227C8: LitStr "El Tipo de Cuenta Contable NO es válido. Verifique..."
  loc_A227CB: FStStrCopy var_88
  loc_A227CE: LitI2_Byte 0
  loc_A227D0: CUI1I2
  loc_A227D2: FLdRfVar var_8E
  loc_A227D5: ILdI4 arg_1C
  loc_A227D8: LitI2_Byte 1
  loc_A227DA: FnUBound
  loc_A227DC: CUI1I4
  loc_A227DE: ForUI1 var_D0
  loc_A227E4: FLdRfVar var_98
  loc_A227E7: ILdPr
  loc_A227EA: from_stack_1v = tblcuentacontable.CodiTicuGet()
  loc_A227EF: FLdUI1
  loc_A227F3: CI4UI1
  loc_A227F4: ILdI4 arg_1C
  loc_A227F7: Ary1LdRfVarg
  loc_A227FB: FnLenVar var_CC
  loc_A227FF: CI4Var
  loc_A22801: ILdRf var_98
  loc_A22804: ImpAdCallI2 Left$(, )
  loc_A22809: CVarStr var_E0
  loc_A2280C: HardType
  loc_A2280D: FLdUI1
  loc_A22811: CI4UI1
  loc_A22812: ILdI4 arg_1C
  loc_A22815: Ary1LdRfVarg
  loc_A22819: EqVarBool
  loc_A2281B: FFree1Str var_98
  loc_A2281E: FFree1Var var_E0 = ""
  loc_A22821: BranchF loc_A2282D
  loc_A22824: LitStr vbNullString
  loc_A22827: FStStrCopy var_88
  loc_A2282A: Branch loc_A22836
  loc_A2282D: FLdRfVar var_8E
  loc_A22830: NextUI1
  loc_A22836: ILdRf var_88
  loc_A22839: LitStr vbNullString
  loc_A2283C: NeStr
  loc_A2283E: BranchF loc_A22842
  loc_A22841: ExitProc
  loc_A22842: Branch loc_A22856
  loc_A22845: FLdRfVar var_98
  loc_A22848: ILdPr
  loc_A2284B: from_stack_1v = tblcuentacontable.MsgErrorGet()
  loc_A22850: FLdZeroAd var_98
  loc_A22853: FStStr var_88
  loc_A22856: FLdI2 arg_10
  loc_A22859: NotI4
  loc_A2285A: BranchF loc_A228D0
  loc_A2285D: LitStr "SET @codicuco='"
  loc_A22860: ILdRf var_8C
  loc_A22863: ConcatStr
  loc_A22864: FStStrNoPop var_98
  loc_A22867: LitStr "';"
  loc_A2286A: ConcatStr
  loc_A2286B: FStStrNoPop var_9C
  loc_A2286E: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_A22873: FFreeStr var_98 = ""
  loc_A2287A: LitStr "SELECT *"
  loc_A2287D: LitStr " FROM paraconta"
  loc_A22880: ConcatStr
  loc_A22881: FStStrNoPop var_98
  loc_A22884: LitStr " WHERE PeriInfo = "
  loc_A22887: ConcatStr
  loc_A22888: FStStrNoPop var_9C
  loc_A2288B: FLdI2 arg_14
  loc_A2288E: CStrUI1
  loc_A22890: FStStrNoPop var_F4
  loc_A22893: ConcatStr
  loc_A22894: FStStrNoPop var_F8
  loc_A22897: LitStr " AND (CaerPaco = @codicuco OR ProvPaco = @codicuco OR ChsrPaco = @codicuco OR DeexPaco = @codicuco OR CatePaco = @codicuco OR CajaPaco = @codicuco OR CarePaco = @codicuco OR PatrPaco = @codicuco OR ReejPaco = @codicuco OR CcrpPaco = @codicuco)"
  loc_A2289A: ConcatStr
  loc_A2289B: FStStrNoPop var_FC
  loc_A2289E: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_A228A3: FFreeStr var_98 = "": var_9C = "": var_F4 = "": var_F8 = ""
  loc_A228B0: FLdRfVar var_100
  loc_A228B3: FMemLdPr
  loc_A228B8:  = Me.RecordCount
  loc_A228BD: ILdRf var_100
  loc_A228C0: LitI4 0
  loc_A228C5: GtI4
  loc_A228C6: BranchF loc_A228D0
  loc_A228C9: LitStr "La Cuenta Contable es de parámetro. Verifique..."
  loc_A228CC: FStStrCopy var_88
  loc_A228CF: ExitProc
  loc_A228D0: ExitProc
  loc_A228D1: ILdR8 arg_1C
End Function

Private Function Proc_266_3_990F78(arg_C, arg_10) '990F78
  'Data Table: 41FCDC
  loc_990F30: ILdRf arg_C
  loc_990F33: FStStrCopy var_8C
  loc_990F36: LitI2_Byte 0
  loc_990F38: LitI2_Byte 0
  loc_990F3A: ILdRf var_8C
  loc_990F3D: LitStr "Ente Recaudador"
  loc_990F40: ImpAdCallI2 Proc_266_29_9CEBC0(, , , )
  loc_990F45: FStStr var_88
  loc_990F48: ILdRf var_88
  loc_990F4B: LitStr vbNullString
  loc_990F4E: NeStr
  loc_990F50: BranchF loc_990F54
  loc_990F53: ExitProc
  loc_990F54: ILdRf arg_10
  loc_990F57: ILdRf var_8C
  loc_990F5A: ImpAdCallI2  = Proc_259_31_9E6B80()
  loc_990F5F: BranchF loc_990F65
  loc_990F62: Branch loc_990F76
  loc_990F65: FLdRfVar var_90
  loc_990F68: ILdPr
  loc_990F6B: from_stack_1v = tblentereca.MsgErrorGet()
  loc_990F70: FLdZeroAd var_90
  loc_990F73: FStStr var_88
  loc_990F76: ExitProc
End Function

Private Function Proc_266_4_9A2FDC(arg_C, arg_10, arg_14) '9A2FDC
  'Data Table: 41FCDC
  loc_9A2F64: ILdRf arg_10
  loc_9A2F67: FStStrCopy var_8C
  loc_9A2F6A: LitI2_Byte 0
  loc_9A2F6C: PopTmpLdAd2 var_92
  loc_9A2F6F: LitI2_Byte 0
  loc_9A2F71: PopTmpLdAd2 var_90
  loc_9A2F74: LitI2_Byte 6
  loc_9A2F76: CI2UI1
  loc_9A2F78: PopTmpLdAd2 var_8E
  loc_9A2F7B: ILdRf var_8C
  loc_9A2F7E: LitStr "Finalidad"
  loc_9A2F81: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9A2F86: FStStr var_88
  loc_9A2F89: ILdRf var_88
  loc_9A2F8C: LitStr vbNullString
  loc_9A2F8F: NeStr
  loc_9A2F91: BranchF loc_9A2F95
  loc_9A2F94: ExitProc
  loc_9A2F95: ILdRf arg_14
  loc_9A2F98: ILdRf var_8C
  loc_9A2F9B: FLdI2 arg_C
  loc_9A2F9E: ImpAdCallI2  = Proc_259_12_AE1238(, )
  loc_9A2FA3: BranchF loc_9A2FC9
  loc_9A2FA6: FLdRfVar var_98
  loc_9A2FA9: ILdPr
  loc_9A2FAC: from_stack_1v = tblfinalidad.ImpuFifuGet()
  loc_9A2FB1: ILdRf var_98
  loc_9A2FB4: LitStr "No"
  loc_9A2FB7: EqStr
  loc_9A2FB9: FFree1Str var_98
  loc_9A2FBC: BranchF loc_9A2FC6
  loc_9A2FBF: LitStr "La Finalidad-Función NO es Imputable. Verifique..."
  loc_9A2FC2: FStStrCopy var_88
  loc_9A2FC5: ExitProc
  loc_9A2FC6: Branch loc_9A2FDA
  loc_9A2FC9: FLdRfVar var_98
  loc_9A2FCC: ILdPr
  loc_9A2FCF: from_stack_1v = tblfinalidad.MsgErrorGet()
  loc_9A2FD4: FLdZeroAd var_98
  loc_9A2FD7: FStStr var_88
  loc_9A2FDA: ExitProc
End Function

Private Function Proc_266_5_99AB30(arg_C, arg_10) '99AB30
  'Data Table: 41FCDC
  loc_99AAC8: ILdRf arg_C
  loc_99AACB: FStStrCopy var_8C
  loc_99AACE: LitI2_Byte 0
  loc_99AAD0: LitI2_Byte 0
  loc_99AAD2: ILdRf var_8C
  loc_99AAD5: LitStr "Código de Insumo"
  loc_99AAD8: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_99AADD: FStStr var_88
  loc_99AAE0: ILdRf var_88
  loc_99AAE3: LitStr vbNullString
  loc_99AAE6: NeStr
  loc_99AAE8: BranchF loc_99AAEC
  loc_99AAEB: ExitProc
  loc_99AAEC: ILdRf arg_10
  loc_99AAEF: ILdRf var_8C
  loc_99AAF2: ImpAdCallI2  = Proc_259_15_A9A814()
  loc_99AAF7: BranchF loc_99AB1C
  loc_99AAFA: FLdRfVar var_90
  loc_99AAFD: ILdPr
  loc_99AB00: from_stack_1v = tblinsumo.BajaFehoGet()
  loc_99AB05: ILdRf var_90
  loc_99AB08: LitStr vbNullString
  loc_99AB0B: NeStr
  loc_99AB0D: FFree1Str var_90
  loc_99AB10: BranchF loc_99AB19
  loc_99AB13: LitStr "El Insumo está ANULADO. Verifique..."
  loc_99AB16: FStStrCopy var_88
  loc_99AB19: Branch loc_99AB2D
  loc_99AB1C: FLdRfVar var_90
  loc_99AB1F: ILdPr
  loc_99AB22: from_stack_1v = tblinsumo.MsgErrorGet()
  loc_99AB27: FLdZeroAd var_90
  loc_99AB2A: FStStr var_88
  loc_99AB2D: ExitProc
End Function

Private Function Proc_266_6_9A4FDC(arg_C, arg_10) '9A4FDC
  'Data Table: 41FCDC
  loc_9A4F68: ILdRf arg_10
  loc_9A4F6B: FStStrCopy var_8C
  loc_9A4F6E: LitI2_Byte 0
  loc_9A4F70: LitI2_Byte 0
  loc_9A4F72: ILdRf var_8C
  loc_9A4F75: LitStr "Orden de compra"
  loc_9A4F78: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_9A4F7D: FStStr var_88
  loc_9A4F80: ILdRf var_88
  loc_9A4F83: LitStr vbNullString
  loc_9A4F86: NeStr
  loc_9A4F88: BranchF loc_9A4F8C
  loc_9A4F8B: ExitProc
  loc_9A4F8C: LitStr "SELECT * FROM ordencompra WHERE PeriInfo = "
  loc_9A4F8F: FLdI2 arg_C
  loc_9A4F92: CStrUI1
  loc_9A4F94: FStStrNoPop var_90
  loc_9A4F97: ConcatStr
  loc_9A4F98: FStStrNoPop var_94
  loc_9A4F9B: LitStr " AND CodiOrco = "
  loc_9A4F9E: ConcatStr
  loc_9A4F9F: FStStrNoPop var_98
  loc_9A4FA2: ILdRf var_8C
  loc_9A4FA5: ConcatStr
  loc_9A4FA6: FStStrNoPop var_9C
  loc_9A4FA9: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_9A4FAE: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_9A4FB9: FLdRfVar var_A0
  loc_9A4FBC: FMemLdPr
  loc_9A4FC1:  = Me.RecordCount
  loc_9A4FC6: ILdRf var_A0
  loc_9A4FC9: LitI4 0
  loc_9A4FCE: EqI4
  loc_9A4FCF: BranchF loc_9A4FD8
  loc_9A4FD2: LitStr "La Orden de Compra NO EXISTE. Verifique..."
  loc_9A4FD5: FStStrCopy var_88
  loc_9A4FD8: ExitProc
End Function

Private Function Proc_266_7_9E517C(arg_C, arg_10, arg_14, arg_18) '9E517C
  'Data Table: 41FCDC
  loc_9E5064: ILdRf arg_10
  loc_9E5067: FStStrCopy var_8C
  loc_9E506A: ILdRf arg_14
  loc_9E506D: FStStrCopy var_90
  loc_9E5070: LitI2_Byte 0
  loc_9E5072: PopTmpLdAd2 var_96
  loc_9E5075: LitI2_Byte 0
  loc_9E5077: PopTmpLdAd2 var_94
  loc_9E507A: LitI2_Byte 6
  loc_9E507C: PopTmpLdAd2 var_92
  loc_9E507F: ILdRf var_8C
  loc_9E5082: LitStr "Organigrama"
  loc_9E5085: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9E508A: FStStr var_88
  loc_9E508D: ImpAdLdI2 MemVar_C3D064
  loc_9E5090: LitI2 2023
  loc_9E5093: GeI2
  loc_9E5094: BranchF loc_9E509D
  loc_9E5097: LitStr vbNullString
  loc_9E509A: FStStrCopy var_88
  loc_9E509D: ILdRf var_88
  loc_9E50A0: LitStr vbNullString
  loc_9E50A3: NeStr
  loc_9E50A5: BranchF loc_9E50A9
  loc_9E50A8: ExitProc
  loc_9E50A9: ILdRf arg_18
  loc_9E50AC: ILdRf var_8C
  loc_9E50AF: FLdI2 arg_C
  loc_9E50B2: ImpAdCallI2  = Proc_259_20_B23018(, )
  loc_9E50B7: BranchF loc_9E5167
  loc_9E50BA: FLdRfVar var_9C
  loc_9E50BD: ILdPr
  loc_9E50C0: from_stack_1v = tblorganigrama.AutorizadoGet()
  loc_9E50C5: ILdRf var_9C
  loc_9E50C8: LitStr "No"
  loc_9E50CB: EqStr
  loc_9E50CD: FFree1Str var_9C
  loc_9E50D0: BranchF loc_9E50DE
  loc_9E50D3: LitStr "U. Ejec."
  loc_9E50D6: LitStr " NO Autorizado para su Usuario. Verifique..."
  loc_9E50D9: ConcatStr
  loc_9E50DA: FStStr var_88
  loc_9E50DD: ExitProc
  loc_9E50DE: ILdRf var_90
  loc_9E50E1: LitStr "frmAutorizado"
  loc_9E50E4: EqStr
  loc_9E50E6: BranchF loc_9E511A
  loc_9E50E9: FLdRfVar var_9C
  loc_9E50EC: ILdPr
  loc_9E50EF: from_stack_1v = tblorganigrama.EsCredOrgaGet()
  loc_9E50F4: ILdRf var_9C
  loc_9E50F7: LitStr "No"
  loc_9E50FA: EqStr
  loc_9E50FC: FFree1Str var_9C
  loc_9E50FF: BranchF loc_9E5117
  loc_9E5102: LitStr "El "
  loc_9E5105: LitStr "U. Ejec."
  loc_9E5108: ConcatStr
  loc_9E5109: FStStrNoPop var_9C
  loc_9E510C: LitStr " NO es un código de Crédito Presupuestario. Verifique..."
  loc_9E510F: ConcatStr
  loc_9E5110: FStStr var_88
  loc_9E5113: FFree1Str var_9C
  loc_9E5116: ExitProc
  loc_9E5117: Branch loc_9E5164
  loc_9E511A: ILdRf var_90
  loc_9E511D: LitStr "frmProgramadeGestionPartidaOrganigrama"
  loc_9E5120: EqStr
  loc_9E5122: BranchF loc_9E5156
  loc_9E5125: FLdRfVar var_9C
  loc_9E5128: ILdPr
  loc_9E512B: from_stack_1v = tblorganigrama.EsCredOrgaGestionGet()
  loc_9E5130: ILdRf var_9C
  loc_9E5133: LitStr "No"
  loc_9E5136: EqStr
  loc_9E5138: FFree1Str var_9C
  loc_9E513B: BranchF loc_9E5153
  loc_9E513E: LitStr "El "
  loc_9E5141: LitStr "U. Ejec."
  loc_9E5144: ConcatStr
  loc_9E5145: FStStrNoPop var_9C
  loc_9E5148: LitStr " NO es un código de Crédito Presupuestario de Gestión. Verifique..."
  loc_9E514B: ConcatStr
  loc_9E514C: FStStr var_88
  loc_9E514F: FFree1Str var_9C
  loc_9E5152: ExitProc
  loc_9E5153: Branch loc_9E5164
  loc_9E5156: ILdRf var_90
  loc_9E5159: LitStr "frmOrganigrama"
  loc_9E515C: EqStr
  loc_9E515E: BranchF loc_9E5164
  loc_9E5161: Branch loc_9E5164
  loc_9E5164: Branch loc_9E5178
  loc_9E5167: FLdRfVar var_9C
  loc_9E516A: ILdPr
  loc_9E516D: from_stack_1v = tblorganigrama.MsgErrorGet()
  loc_9E5172: FLdZeroAd var_9C
  loc_9E5175: FStStr var_88
  loc_9E5178: ExitProc
End Function

Private Function Proc_266_8_A41318(arg_C, arg_10, arg_14, arg_18, arg_1C) 'A41318
  'Data Table: 41FCDC
  loc_A410C8: ILdRf arg_10
  loc_A410CB: FStStrCopy var_8C
  loc_A410CE: ILdRf arg_18
  loc_A410D1: FStStrCopy var_90
  loc_A410D4: LitI2_Byte 0
  loc_A410D6: PopTmpLdAd2 var_96
  loc_A410D9: LitI2_Byte 0
  loc_A410DB: PopTmpLdAd2 var_94
  loc_A410DE: LitI2_Byte 8
  loc_A410E0: CI2UI1
  loc_A410E2: PopTmpLdAd2 var_92
  loc_A410E5: ILdRf var_8C
  loc_A410E8: LitStr "Partida"
  loc_A410EB: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A410F0: FStStr var_88
  loc_A410F3: ILdRf var_88
  loc_A410F6: LitStr vbNullString
  loc_A410F9: NeStr
  loc_A410FB: BranchF loc_A410FF
  loc_A410FE: ExitProc
  loc_A410FF: ILdRf arg_1C
  loc_A41102: ILdRf var_8C
  loc_A41105: FLdI2 arg_C
  loc_A41108: ImpAdCallI2  = Proc_259_24_B2B61C(, )
  loc_A4110D: BranchF loc_A41303
  loc_A41110: ILdRf var_90
  loc_A41113: FStStrCopy var_9C
  loc_A41116: ILdRf var_9C
  loc_A41119: LitStr "frmPartida"
  loc_A4111C: EqStr
  loc_A4111E: BranchF loc_A41176
  loc_A41121: FLdRfVar var_A0
  loc_A41124: ILdPr
  loc_A41127: from_stack_1v = tblpartida.NivelGet()
  loc_A4112C: ILdRf var_A0
  loc_A4112F: CR8Str
  loc_A41131: LitI2_Byte 3
  loc_A41133: CR8I2
  loc_A41134: LtR8
  loc_A41135: FFree1Str var_A0
  loc_A41138: BranchF loc_A4116D
  loc_A4113B: LitStr "No se permiten TÍTULOS de partida. Verifique..."
  loc_A4113E: FStStrCopy var_88
  loc_A41141: LitStr "Municipalidad de Guaymallén"
  loc_A41144: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_A41147: EqStr
  loc_A41149: FLdRfVar var_A0
  loc_A4114C: ILdPr
  loc_A4114F: from_stack_1v = tblpartida.NivelGet()
  loc_A41154: ILdRf var_A0
  loc_A41157: CR8Str
  loc_A41159: LitI2_Byte 0
  loc_A4115B: CR8I2
  loc_A4115C: EqR4
  loc_A4115D: AndI4
  loc_A4115E: FFree1Str var_A0
  loc_A41161: BranchF loc_A4116A
  loc_A41164: LitStr vbNullString
  loc_A41167: FStStrCopy var_88
  loc_A4116A: Branch loc_A41173
  loc_A4116D: LitStr vbNullString
  loc_A41170: FStStrCopy var_88
  loc_A41173: Branch loc_A4120A
  loc_A41176: ILdRf var_9C
  loc_A41179: LitStr "frmAutorizado"
  loc_A4117C: EqStr
  loc_A4117E: BranchF loc_A411AC
  loc_A41181: FLdRfVar var_A0
  loc_A41184: ILdPr
  loc_A41187: from_stack_1v = tblpartida.EsPartCredGet()
  loc_A4118C: ILdRf var_A0
  loc_A4118F: LitStr "No"
  loc_A41192: EqStr
  loc_A41194: FFree1Str var_A0
  loc_A41197: BranchF loc_A411A3
  loc_A4119A: LitStr "La Partida NO es de Crédito. Verifique..."
  loc_A4119D: FStStrCopy var_88
  loc_A411A0: Branch loc_A411A9
  loc_A411A3: LitStr vbNullString
  loc_A411A6: FStStrCopy var_88
  loc_A411A9: Branch loc_A4120A
  loc_A411AC: ILdRf var_9C
  loc_A411AF: LitStr "frmProgramadeGestionPartidaOrganigrama"
  loc_A411B2: EqStr
  loc_A411B4: BranchF loc_A411E2
  loc_A411B7: FLdRfVar var_A0
  loc_A411BA: ILdPr
  loc_A411BD: from_stack_1v = tblpartida.EsPartCredGestionGet()
  loc_A411C2: ILdRf var_A0
  loc_A411C5: LitStr "No"
  loc_A411C8: EqStr
  loc_A411CA: FFree1Str var_A0
  loc_A411CD: BranchF loc_A411D9
  loc_A411D0: LitStr "La Partida NO es de Crédito de GESTIÓN. Verifique..."
  loc_A411D3: FStStrCopy var_88
  loc_A411D6: Branch loc_A411DF
  loc_A411D9: LitStr vbNullString
  loc_A411DC: FStStrCopy var_88
  loc_A411DF: Branch loc_A4120A
  loc_A411E2: FLdRfVar var_A0
  loc_A411E5: ILdPr
  loc_A411E8: from_stack_1v = tblpartida.ImpuPartGet()
  loc_A411ED: ILdRf var_A0
  loc_A411F0: LitStr "No"
  loc_A411F3: EqStr
  loc_A411F5: FFree1Str var_A0
  loc_A411F8: BranchF loc_A41204
  loc_A411FB: LitStr "La Partida NO es Imputable. Verifique..."
  loc_A411FE: FStStrCopy var_88
  loc_A41201: Branch loc_A4120A
  loc_A41204: LitStr vbNullString
  loc_A41207: FStStrCopy var_88
  loc_A4120A: FLdI2 arg_14
  loc_A4120D: NotI4
  loc_A4120E: BranchF loc_A41300
  loc_A41211: FLdRfVar var_A0
  loc_A41214: ILdPr
  loc_A41217: from_stack_1v = tblpartida.TipoGet()
  loc_A4121C: ILdRf var_A0
  loc_A4121F: LitStr "Residuo Pasivo Presupuestario"
  loc_A41222: EqStr
  loc_A41224: FLdRfVar var_A4
  loc_A41227: ILdPr
  loc_A4122A: from_stack_1v = tblpartida.TipoGet()
  loc_A4122F: ILdRf var_A4
  loc_A41232: LitStr "Residuo Pasivo Extrapresupuestario"
  loc_A41235: EqStr
  loc_A41237: OrI4
  loc_A41238: FFreeStr var_A0 = ""
  loc_A4123F: BranchF loc_A41300
  loc_A41242: LitStr "La Partida está reservada para Residuos Pasivos. Verifique..."
  loc_A41245: FStStrCopy var_88
  loc_A41248: ImpAdLdI4 MemVar_C3D03C
  loc_A4124B: LitStr "root"
  loc_A4124E: EqStr
  loc_A41250: BranchF loc_A41259
  loc_A41253: LitStr vbNullString
  loc_A41256: FStStrCopy var_88
  loc_A41259: LitStr "Municipalidad de Guaymallén"
  loc_A4125C: FStStrCopy var_A8
  loc_A4125F: ILdRf var_A8
  loc_A41262: LitStr "Municipalidad de San Carlos"
  loc_A41265: EqStr
  loc_A41267: BranchF loc_A4127E
  loc_A4126A: ImpAdLdI4 MemVar_C3D03C
  loc_A4126D: LitStr "Natalia"
  loc_A41270: EqStr
  loc_A41272: BranchF loc_A4127B
  loc_A41275: LitStr vbNullString
  loc_A41278: FStStrCopy var_88
  loc_A4127B: Branch loc_A41300
  loc_A4127E: ILdRf var_A8
  loc_A41281: LitStr "Municipalidad de Malargüe"
  loc_A41284: EqStr
  loc_A41286: BranchF loc_A4129D
  loc_A41289: ImpAdLdI4 MemVar_C3D03C
  loc_A4128C: LitStr "gonzalo"
  loc_A4128F: EqStr
  loc_A41291: BranchF loc_A4129A
  loc_A41294: LitStr vbNullString
  loc_A41297: FStStrCopy var_88
  loc_A4129A: Branch loc_A41300
  loc_A4129D: ILdRf var_A8
  loc_A412A0: LitStr "Municipalidad de Maipú"
  loc_A412A3: EqStr
  loc_A412A5: BranchF loc_A412C5
  loc_A412A8: ImpAdLdI4 MemVar_C3D03C
  loc_A412AB: LitStr "Mirtha"
  loc_A412AE: EqStr
  loc_A412B0: ImpAdLdI4 MemVar_C3D03C
  loc_A412B3: LitStr "Juampi"
  loc_A412B6: EqStr
  loc_A412B8: OrI4
  loc_A412B9: BranchF loc_A412C2
  loc_A412BC: LitStr vbNullString
  loc_A412BF: FStStrCopy var_88
  loc_A412C2: Branch loc_A41300
  loc_A412C5: ILdRf var_A8
  loc_A412C8: LitStr "Municipalidad de Lavalle"
  loc_A412CB: EqStr
  loc_A412CD: BranchF loc_A412E4
  loc_A412D0: ImpAdLdI4 MemVar_C3D03C
  loc_A412D3: LitStr "Flucania"
  loc_A412D6: EqStr
  loc_A412D8: BranchF loc_A412E1
  loc_A412DB: LitStr vbNullString
  loc_A412DE: FStStrCopy var_88
  loc_A412E1: Branch loc_A41300
  loc_A412E4: ILdRf var_A8
  loc_A412E7: LitStr "Municipalidad de Rivadavia"
  loc_A412EA: EqStr
  loc_A412EC: BranchF loc_A41300
  loc_A412EF: ImpAdLdI4 MemVar_C3D03C
  loc_A412F2: LitStr "mliberal"
  loc_A412F5: EqStr
  loc_A412F7: BranchF loc_A41300
  loc_A412FA: LitStr vbNullString
  loc_A412FD: FStStrCopy var_88
  loc_A41300: Branch loc_A41314
  loc_A41303: FLdRfVar var_A0
  loc_A41306: ILdPr
  loc_A41309: from_stack_1v = tblpartida.MsgErrorGet()
  loc_A4130E: FLdZeroAd var_A0
  loc_A41311: FStStr var_88
  loc_A41314: ExitProc
End Function

Private Function Proc_266_9_99B050(arg_C, arg_10) '99B050
  'Data Table: 41FCDC
  loc_99AFE8: ILdRf arg_C
  loc_99AFEB: FStStrCopy var_8C
  loc_99AFEE: LitI2_Byte 0
  loc_99AFF0: LitI2_Byte 0
  loc_99AFF2: ILdRf var_8C
  loc_99AFF5: LitStr "Código de Tipo de Asiento"
  loc_99AFF8: ImpAdCallI2 Proc_266_29_9CEBC0(, , , )
  loc_99AFFD: FStStr var_88
  loc_99B000: ILdRf var_88
  loc_99B003: LitStr vbNullString
  loc_99B006: NeStr
  loc_99B008: BranchF loc_99B00C
  loc_99B00B: ExitProc
  loc_99B00C: ILdRf arg_10
  loc_99B00F: ILdRf var_8C
  loc_99B012: ImpAdCallI2  = Proc_259_28_A0F5CC()
  loc_99B017: BranchF loc_99B03C
  loc_99B01A: FLdRfVar var_90
  loc_99B01D: ILdPr
  loc_99B020: from_stack_1v = tbltipoasiento.FijoTiasGet()
  loc_99B025: ILdRf var_90
  loc_99B028: LitStr "Si"
  loc_99B02B: EqStr
  loc_99B02D: FFree1Str var_90
  loc_99B030: BranchF loc_99B039
  loc_99B033: LitStr "El Tipo de Asiento está reservado para Asientos Automáticos. Verifique..."
  loc_99B036: FStStrCopy var_88
  loc_99B039: Branch loc_99B04D
  loc_99B03C: FLdRfVar var_90
  loc_99B03F: ILdPr
  loc_99B042: from_stack_1v = tbltipoasiento.MsgErrorGet()
  loc_99B047: FLdZeroAd var_90
  loc_99B04A: FStStr var_88
  loc_99B04D: ExitProc
End Function

Private Function Proc_266_10_99B6B8(arg_C, arg_10) '99B6B8
  'Data Table: 41FCDC
  loc_99B650: ILdRf arg_C
  loc_99B653: FStStrCopy var_8C
  loc_99B656: LitI2_Byte 0
  loc_99B658: LitI2_Byte 0
  loc_99B65A: ILdRf var_8C
  loc_99B65D: LitStr "Código de Tipo de Compra"
  loc_99B660: ImpAdCallI2 Proc_266_29_9CEBC0(, , , )
  loc_99B665: FStStr var_88
  loc_99B668: ILdRf var_88
  loc_99B66B: LitStr vbNullString
  loc_99B66E: NeStr
  loc_99B670: BranchF loc_99B674
  loc_99B673: ExitProc
  loc_99B674: ILdRf arg_10
  loc_99B677: ILdRf var_8C
  loc_99B67A: ImpAdCallI2  = Proc_259_32_AE0B0C()
  loc_99B67F: BranchF loc_99B6A4
  loc_99B682: FLdRfVar var_90
  loc_99B685: ILdPr
  loc_99B688: from_stack_1v = tbltipocompra.AutorizadoGet()
  loc_99B68D: ILdRf var_90
  loc_99B690: LitStr "No"
  loc_99B693: EqStr
  loc_99B695: FFree1Str var_90
  loc_99B698: BranchF loc_99B6A1
  loc_99B69B: LitStr "Tipo de Compra NO Autorizado para su Usuario. Verifique..."
  loc_99B69E: FStStrCopy var_88
  loc_99B6A1: Branch loc_99B6B5
  loc_99B6A4: FLdRfVar var_90
  loc_99B6A7: ILdPr
  loc_99B6AA: from_stack_1v = tbltipocompra.MsgErrorGet()
  loc_99B6AF: FLdZeroAd var_90
  loc_99B6B2: FStStr var_88
  loc_99B6B5: ExitProc
End Function

Private Function Proc_266_11_9916B0(arg_C, arg_10) '9916B0
  'Data Table: 41FCDC
  loc_991668: ILdRf arg_C
  loc_99166B: FStStrCopy var_8C
  loc_99166E: LitI2_Byte &HFF
  loc_991670: LitI2_Byte 0
  loc_991672: ILdRf var_8C
  loc_991675: LitStr "Rubro"
  loc_991678: ImpAdCallI2 Proc_266_28_9CEA9C(, , , )
  loc_99167D: FStStr var_88
  loc_991680: ILdRf var_88
  loc_991683: LitStr vbNullString
  loc_991686: NeStr
  loc_991688: BranchF loc_99168C
  loc_99168B: ExitProc
  loc_99168C: ILdRf arg_10
  loc_99168F: ILdRf var_8C
  loc_991692: ImpAdCallI2  = Proc_259_29_A82944()
  loc_991697: BranchF loc_99169D
  loc_99169A: Branch loc_9916AE
  loc_99169D: FLdRfVar var_90
  loc_9916A0: ILdPr
  loc_9916A3: from_stack_1v = tblrubro.MsgErrorGet()
  loc_9916A8: FLdZeroAd var_90
  loc_9916AB: FStStr var_88
  loc_9916AE: ExitProc
End Function

Private Function Proc_266_12_9A22BC(arg_C, arg_10) '9A22BC
  'Data Table: 41FCDC
  loc_9A2248: ILdRf arg_C
  loc_9A224B: FStStrCopy var_8C
  loc_9A224E: LitI2_Byte 0
  loc_9A2250: PopTmpLdAd2 var_92
  loc_9A2253: LitI2_Byte 0
  loc_9A2255: PopTmpLdAd2 var_90
  loc_9A2258: LitI2_Byte 0
  loc_9A225A: PopTmpLdAd2 var_8E
  loc_9A225D: ILdRf var_8C
  loc_9A2260: LitStr "Código de Tipo de Cuenta Contable"
  loc_9A2263: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9A2268: FStStr var_88
  loc_9A226B: ILdRf var_88
  loc_9A226E: LitStr vbNullString
  loc_9A2271: NeStr
  loc_9A2273: BranchF loc_9A2277
  loc_9A2276: ExitProc
  loc_9A2277: ILdRf arg_10
  loc_9A227A: ILdRf var_8C
  loc_9A227D: ImpAdCallI2  = Proc_259_33_A1321C()
  loc_9A2282: BranchF loc_9A22A7
  loc_9A2285: FLdRfVar var_98
  loc_9A2288: ILdPr
  loc_9A228B: from_stack_1v = tbltipocuco.ImpuTicuGet()
  loc_9A2290: ILdRf var_98
  loc_9A2293: LitStr "No"
  loc_9A2296: EqStr
  loc_9A2298: FFree1Str var_98
  loc_9A229B: BranchF loc_9A22A4
  loc_9A229E: LitStr "Advertencia: El Tipo de cuenta NO es Imputable. Verifique..."
  loc_9A22A1: FStStrCopy var_88
  loc_9A22A4: Branch loc_9A22B8
  loc_9A22A7: FLdRfVar var_98
  loc_9A22AA: ILdPr
  loc_9A22AD: from_stack_1v = tbltipocuco.MsgErrorGet()
  loc_9A22B2: FLdZeroAd var_98
  loc_9A22B5: FStStr var_88
  loc_9A22B8: ExitProc
End Function

Private Function Proc_266_13_9915A8(arg_C, arg_10) '9915A8
  'Data Table: 41FCDC
  loc_991560: ILdRf arg_C
  loc_991563: FStStrCopy var_8C
  loc_991566: LitI2_Byte 0
  loc_991568: LitI2_Byte 0
  loc_99156A: ILdRf var_8C
  loc_99156D: LitStr "Código de Tipo de Movimiento"
  loc_991570: ImpAdCallI2 Proc_266_29_9CEBC0(, , , )
  loc_991575: FStStr var_88
  loc_991578: ILdRf var_88
  loc_99157B: LitStr vbNullString
  loc_99157E: NeStr
  loc_991580: BranchF loc_991584
  loc_991583: ExitProc
  loc_991584: ILdRf arg_10
  loc_991587: ILdRf var_8C
  loc_99158A: ImpAdCallI2  = Proc_259_35_A70148()
  loc_99158F: BranchF loc_991595
  loc_991592: Branch loc_9915A6
  loc_991595: FLdRfVar var_90
  loc_991598: ILdPr
  loc_99159B: from_stack_1v = tbltipomovibanco.MsgErrorGet()
  loc_9915A0: FLdZeroAd var_90
  loc_9915A3: FStStr var_88
  loc_9915A6: ExitProc
End Function

Private Function Proc_266_14_99BE68(arg_C, arg_10) '99BE68
  'Data Table: 41FCDC
  loc_99BE00: ILdRf arg_C
  loc_99BE03: FStStrCopy var_8C
  loc_99BE06: LitI2_Byte &HFF
  loc_99BE08: LitI2_Byte 0
  loc_99BE0A: ILdRf var_8C
  loc_99BE0D: LitStr "Rubro"
  loc_99BE10: ImpAdCallI2 Proc_266_28_9CEA9C(, , , )
  loc_99BE15: FStStr var_88
  loc_99BE18: ILdRf var_88
  loc_99BE1B: LitStr vbNullString
  loc_99BE1E: NeStr
  loc_99BE20: BranchF loc_99BE24
  loc_99BE23: ExitProc
  loc_99BE24: ILdRf arg_10
  loc_99BE27: ILdRf var_8C
  loc_99BE2A: ImpAdCallI2  = Proc_259_36_ABBCD8()
  loc_99BE2F: BranchF loc_99BE55
  loc_99BE32: FLdRfVar var_90
  loc_99BE35: ILdPr
  loc_99BE38: from_stack_1v = tblubicfisica.BajaUsuaGet()
  loc_99BE3D: ILdRf var_90
  loc_99BE40: LitStr vbNullString
  loc_99BE43: NeStr
  loc_99BE45: FFree1Str var_90
  loc_99BE48: BranchF loc_99BE52
  loc_99BE4B: LitStr "La Ubicación Física está Anulada. Verifique..."
  loc_99BE4E: FStStrCopy var_88
  loc_99BE51: ExitProc
  loc_99BE52: Branch loc_99BE66
  loc_99BE55: FLdRfVar var_90
  loc_99BE58: ILdPr
  loc_99BE5B: from_stack_1v = tblubicfisica.MsgErrorGet()
  loc_99BE60: FLdZeroAd var_90
  loc_99BE63: FStStr var_88
  loc_99BE66: ExitProc
End Function

Private Function Proc_266_15_9A14F8(arg_C, arg_10, arg_14) '9A14F8
  'Data Table: 41FCDC
  loc_9A1488: ILdRf arg_C
  loc_9A148B: FStStrCopy var_8C
  loc_9A148E: ILdRf arg_10
  loc_9A1491: FStStrCopy var_90
  loc_9A1494: LitI2_Byte 0
  loc_9A1496: LitI2_Byte 0
  loc_9A1498: ILdRf var_90
  loc_9A149B: LitStr "Unidad de Gasto"
  loc_9A149E: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_9A14A3: FStStr var_88
  loc_9A14A6: ILdRf var_88
  loc_9A14A9: LitStr vbNullString
  loc_9A14AC: NeStr
  loc_9A14AE: BranchF loc_9A14B2
  loc_9A14B1: ExitProc
  loc_9A14B2: ILdRf arg_14
  loc_9A14B5: ILdRf var_90
  loc_9A14B8: ILdRf var_8C
  loc_9A14BB: ImpAdCallI2  = Proc_259_37_B5F860(, )
  loc_9A14C0: BranchF loc_9A14E6
  loc_9A14C3: FLdRfVar var_94
  loc_9A14C6: ILdPr
  loc_9A14C9: from_stack_1v = tblunidadgasto.BajaFehoGet()
  loc_9A14CE: ILdRf var_94
  loc_9A14D1: LitStr vbNullString
  loc_9A14D4: NeStr
  loc_9A14D6: FFree1Str var_94
  loc_9A14D9: BranchF loc_9A14E3
  loc_9A14DC: LitStr "La Unidad de Gasto esta ANULADA. Verifique..."
  loc_9A14DF: FStStrCopy var_88
  loc_9A14E2: ExitProc
  loc_9A14E3: Branch loc_9A14F7
  loc_9A14E6: FLdRfVar var_94
  loc_9A14E9: ILdPr
  loc_9A14EC: from_stack_1v = tblunidadgasto.MsgErrorGet()
  loc_9A14F1: FLdZeroAd var_94
  loc_9A14F4: FStStr var_88
  loc_9A14F7: ExitProc
End Function

Private Function Proc_266_16_994244(arg_C, arg_10) '994244
  'Data Table: 41FCDC
  loc_9941F0: ILdRf arg_C
  loc_9941F3: FStStrCopy var_8C
  loc_9941F6: LitI2_Byte 0
  loc_9941F8: PopTmpLdAd2 var_92
  loc_9941FB: LitI2_Byte 0
  loc_9941FD: PopTmpLdAd2 var_90
  loc_994200: LitI2_Byte &HB
  loc_994202: PopTmpLdAd2 var_8E
  loc_994205: ILdRf var_8C
  loc_994208: LitStr "CUIT-CUIL de la Persona"
  loc_99420B: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_994210: FStStr var_88
  loc_994213: ILdRf var_88
  loc_994216: LitStr vbNullString
  loc_994219: NeStr
  loc_99421B: BranchF loc_99421F
  loc_99421E: ExitProc
  loc_99421F: ILdRf arg_10
  loc_994222: ILdRf var_8C
  loc_994225: ImpAdCallI2  = Proc_259_25_AF4980()
  loc_99422A: BranchF loc_994230
  loc_99422D: Branch loc_994241
  loc_994230: FLdRfVar var_98
  loc_994233: ILdPr
  loc_994236: from_stack_1v = tblpersona.MsgErrorGet()
  loc_99423B: FLdZeroAd var_98
  loc_99423E: FStStr var_88
  loc_994241: ExitProc
End Function

Private Function Proc_266_17_9A241C(arg_C, arg_10) '9A241C
  'Data Table: 41FCDC
  loc_9A23A8: ILdRf arg_C
  loc_9A23AB: FStStrCopy var_8C
  loc_9A23AE: LitI2_Byte 0
  loc_9A23B0: PopTmpLdAd2 var_92
  loc_9A23B3: LitI2_Byte 0
  loc_9A23B5: PopTmpLdAd2 var_90
  loc_9A23B8: LitI2_Byte &HB
  loc_9A23BA: PopTmpLdAd2 var_8E
  loc_9A23BD: ILdRf var_8C
  loc_9A23C0: LitStr "CUIT-CUIL del Proveedor"
  loc_9A23C3: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9A23C8: FStStr var_88
  loc_9A23CB: ILdRf var_88
  loc_9A23CE: LitStr vbNullString
  loc_9A23D1: NeStr
  loc_9A23D3: BranchF loc_9A23D7
  loc_9A23D6: ExitProc
  loc_9A23D7: ILdRf arg_10
  loc_9A23DA: ILdRf var_8C
  loc_9A23DD: ImpAdCallI2  = Proc_259_26_B6A94C()
  loc_9A23E2: BranchF loc_9A2407
  loc_9A23E5: FLdRfVar var_98
  loc_9A23E8: ILdPr
  loc_9A23EB: from_stack_1v = tblproveedor.BajaFehoGet()
  loc_9A23F0: ILdRf var_98
  loc_9A23F3: LitStr vbNullString
  loc_9A23F6: NeStr
  loc_9A23F8: FFree1Str var_98
  loc_9A23FB: BranchF loc_9A2404
  loc_9A23FE: LitStr "El proveedor está Anulado. Verifique..."
  loc_9A2401: FStStrCopy var_88
  loc_9A2404: Branch loc_9A2418
  loc_9A2407: FLdRfVar var_98
  loc_9A240A: ILdPr
  loc_9A240D: from_stack_1v = tblproveedor.MsgErrorGet()
  loc_9A2412: FLdZeroAd var_98
  loc_9A2415: FStStr var_88
  loc_9A2418: ExitProc
End Function

Private Function Proc_266_18_98AE98(arg_C) '98AE98
  'Data Table: 41FCDC
  loc_98AE54: ILdRf arg_C
  loc_98AE57: FStStrCopy var_88
  loc_98AE5A: LitNothing
  loc_98AE5C: CastAd
  loc_98AE5F: FMemStAdFunc arg_8(0)
  loc_98AE65: New Recordset
  loc_98AE69: FMemStAdFunc arg_8(0)
  loc_98AE6F: LitI4 -1
  loc_98AE74: LitI4 3
  loc_98AE79: LitI4 3
  loc_98AE7E: ImpAdLdI4 MemVar_C3D030
  loc_98AE81: CVarAd
  loc_98AE85: PopAdLdVar
  loc_98AE86: ILdRf var_88
  loc_98AE89: CVarStr var_98
  loc_98AE8C: PopAdLdVar
  loc_98AE8D: FMemLdPr
  loc_98AE92: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_98AE97: ExitProc
End Function

Private Function Proc_266_19_9414E0() '9414E0
  'Data Table: 41FCDC
  loc_9414D4: FMemLdPr
  loc_9414D9: Me.MoveNext
  loc_9414DE: ExitProc
End Function

Private Function Proc_266_20_996550(arg_C, arg_10) '996550
  'Data Table: 41FCDC
  loc_9964F0: ILdRf arg_C
  loc_9964F3: FStStrCopy var_8C
  loc_9964F6: ILdRf arg_10
  loc_9964F9: FStStrCopy var_90
  loc_9964FC: ILdRf var_90
  loc_9964FF: ImpAdCallI2 Proc_266_21_9A2210()
  loc_996504: FStStr var_88
  loc_996507: ILdRf var_88
  loc_99650A: LitStr vbNullString
  loc_99650D: NeStr
  loc_99650F: BranchF loc_996513
  loc_996512: ExitProc
  loc_996513: LitI2_Byte &HFF
  loc_996515: LitI2_Byte 0
  loc_996517: ILdRf var_8C
  loc_99651A: LitStr "Número de Factura"
  loc_99651D: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_996522: FStStr var_88
  loc_996525: ILdRf var_88
  loc_996528: LitStr vbNullString
  loc_99652B: NeStr
  loc_99652D: BranchF loc_996531
  loc_996530: ExitProc
  loc_996531: ILdRf var_90
  loc_996534: LitStr "s/f"
  loc_996537: NeStr
  loc_996539: ILdRf var_8C
  loc_99653C: CI4Str
  loc_99653D: LitI4 0
  loc_996542: LeI4
  loc_996543: AndI4
  loc_996544: BranchF loc_99654E
  loc_996547: LitStr "Ingrese el Número de Factura. Verifique..."
  loc_99654A: FStStrCopy var_88
  loc_99654D: ExitProc
  loc_99654E: ExitProc
End Function

Private Function Proc_266_21_9A2210(arg_C) '9A2210
  'Data Table: 41FCDC
  loc_9A2198: ILdRf arg_C
  loc_9A219B: FStStrCopy var_8C
  loc_9A219E: LitI2_Byte 0
  loc_9A21A0: PopTmpLdAd2 var_92
  loc_9A21A3: LitI2_Byte 0
  loc_9A21A5: PopTmpLdAd2 var_90
  loc_9A21A8: LitI2_Byte 0
  loc_9A21AA: PopTmpLdAd2 var_8E
  loc_9A21AD: ILdRf var_8C
  loc_9A21B0: LitStr "Tipo de Factura"
  loc_9A21B3: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9A21B8: FStStr var_88
  loc_9A21BB: ILdRf var_88
  loc_9A21BE: LitStr vbNullString
  loc_9A21C1: NeStr
  loc_9A21C3: BranchF loc_9A21C7
  loc_9A21C6: ExitProc
  loc_9A21C7: ILdRf var_8C
  loc_9A21CA: LitStr "fca"
  loc_9A21CD: NeStr
  loc_9A21CF: ILdRf var_8C
  loc_9A21D2: LitStr "fcb"
  loc_9A21D5: NeStr
  loc_9A21D7: AndI4
  loc_9A21D8: ILdRf var_8C
  loc_9A21DB: LitStr "fcc"
  loc_9A21DE: NeStr
  loc_9A21E0: AndI4
  loc_9A21E1: ILdRf var_8C
  loc_9A21E4: LitStr "s/f"
  loc_9A21E7: NeStr
  loc_9A21E9: AndI4
  loc_9A21EA: ILdRf var_8C
  loc_9A21ED: LitStr "fcm"
  loc_9A21F0: NeStr
  loc_9A21F2: AndI4
  loc_9A21F3: ILdRf var_8C
  loc_9A21F6: LitStr "rem"
  loc_9A21F9: NeStr
  loc_9A21FB: AndI4
  loc_9A21FC: ILdRf var_8C
  loc_9A21FF: LitStr "val"
  loc_9A2202: NeStr
  loc_9A2204: AndI4
  loc_9A2205: BranchF loc_9A220E
  loc_9A2208: LitStr "El Tipo de Factura es Inválido. Verifique..."
  loc_9A220B: FStStrCopy var_88
  loc_9A220E: ExitProc
End Function

Private Function Proc_266_22_990D68(arg_C, arg_10) '990D68
  'Data Table: 41FCDC
  loc_990D20: ILdRf arg_C
  loc_990D23: FStStrCopy var_8C
  loc_990D26: ILdRf arg_10
  loc_990D29: FStStrCopy var_90
  loc_990D2C: ILdRf var_90
  loc_990D2F: ImpAdCallI2 Proc_266_21_9A2210()
  loc_990D34: FStStr var_88
  loc_990D37: ILdRf var_88
  loc_990D3A: LitStr vbNullString
  loc_990D3D: NeStr
  loc_990D3F: BranchF loc_990D43
  loc_990D42: ExitProc
  loc_990D43: ILdRf var_90
  loc_990D46: LitStr "s/f"
  loc_990D49: EqStr
  loc_990D4B: LitI2_Byte 0
  loc_990D4D: ILdRf var_8C
  loc_990D50: LitStr "Punto de Venta"
  loc_990D53: ImpAdCallI2 Proc_266_28_9CEA9C(, , , )
  loc_990D58: FStStr var_88
  loc_990D5B: ILdRf var_88
  loc_990D5E: LitStr vbNullString
  loc_990D61: NeStr
  loc_990D63: BranchF loc_990D67
  loc_990D66: ExitProc
  loc_990D67: ExitProc
End Function

Private Function Proc_266_23_A2F578(arg_C, arg_10, arg_14, arg_18) 'A2F578
  'Data Table: 41FCDC
  loc_A2F38C: ILdRf arg_C
  loc_A2F38F: FStStrCopy var_8C
  loc_A2F392: ILdRf arg_10
  loc_A2F395: FStStrCopy var_90
  loc_A2F398: ILdRf arg_14
  loc_A2F39B: FStStrCopy var_94
  loc_A2F39E: ILdRf var_8C
  loc_A2F3A1: ImpAdCallI2 Proc_266_21_9A2210()
  loc_A2F3A6: FStStr var_88
  loc_A2F3A9: ILdRf var_88
  loc_A2F3AC: LitStr vbNullString
  loc_A2F3AF: NeStr
  loc_A2F3B1: BranchF loc_A2F3B5
  loc_A2F3B4: ExitProc
  loc_A2F3B5: LitI2_Byte &HFF
  loc_A2F3B7: PopTmpLdAd2 var_9A
  loc_A2F3BA: LitNothing
  loc_A2F3BC: CastAd
  loc_A2F3BF: FStAdFunc var_98
  loc_A2F3C2: FLdRfVar var_98
  loc_A2F3C5: ILdRf var_94
  loc_A2F3C8: LitI2_Byte 0
  loc_A2F3CA: LitI2_Byte &HFF
  loc_A2F3CC: ILdRf var_94
  loc_A2F3CF: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A2F3D4: FStStr var_88
  loc_A2F3D7: FFree1Ad var_98
  loc_A2F3DA: ILdRf var_88
  loc_A2F3DD: LitStr vbNullString
  loc_A2F3E0: NeStr
  loc_A2F3E2: BranchF loc_A2F407
  loc_A2F3E5: LitStr "Municipalidad de Guaymallén"
  loc_A2F3E8: LitStr "Municipalidad de General Alvear"
  loc_A2F3EB: EqStr
  loc_A2F3ED: LitStr "Municipalidad de Guaymallén"
  loc_A2F3F0: LitStr "Municipalidad de Tunuyán"
  loc_A2F3F3: EqStr
  loc_A2F3F5: OrI4
  loc_A2F3F6: BranchF loc_A2F406
  loc_A2F3F9: LitStr "Advertencia: "
  loc_A2F3FC: ILdRf var_88
  loc_A2F3FF: ConcatStr
  loc_A2F400: FStStr var_88
  loc_A2F403: Branch loc_A2F407
  loc_A2F406: ExitProc
  loc_A2F407: ILdRf arg_18
  loc_A2F40A: ILdRf var_90
  loc_A2F40D: ImpAdCallI2  = Proc_259_26_B6A94C()
  loc_A2F412: BranchF loc_A2F474
  loc_A2F415: FLdRfVar var_A0
  loc_A2F418: ILdPr
  loc_A2F41B: from_stack_1v = tblproveedor.BajaFehoGet()
  loc_A2F420: ILdRf var_A0
  loc_A2F423: LitStr vbNullString
  loc_A2F426: NeStr
  loc_A2F428: FFree1Str var_A0
  loc_A2F42B: BranchF loc_A2F435
  loc_A2F42E: LitStr "El proveedor está ANULADO. Verifique..."
  loc_A2F431: FStStrCopy var_88
  loc_A2F434: ExitProc
  loc_A2F435: FLdRfVar var_A0
  loc_A2F438: ILdPr
  loc_A2F43B: from_stack_1v = tblproveedor.FeviProvGet()
  loc_A2F440: ILdRf var_A0
  loc_A2F443: LitStr vbNullString
  loc_A2F446: NeStr
  loc_A2F448: FFree1Str var_A0
  loc_A2F44B: BranchF loc_A2F471
  loc_A2F44E: FLdRfVar var_A0
  loc_A2F451: ILdPr
  loc_A2F454: from_stack_1v = tblproveedor.FeviProvGet()
  loc_A2F459: ILdRf var_A0
  loc_A2F45C: CDateStr
  loc_A2F45E: ILdRf var_94
  loc_A2F461: CDateStr
  loc_A2F463: LtR8
  loc_A2F464: FFree1Str var_A0
  loc_A2F467: BranchF loc_A2F471
  loc_A2F46A: LitStr "La Constancia de Inscripción está vencida. Verifique..."
  loc_A2F46D: FStStrCopy var_88
  loc_A2F470: ExitProc
  loc_A2F471: Branch loc_A2F47B
  loc_A2F474: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_A2F477: FStStrCopy var_88
  loc_A2F47A: ExitProc
  loc_A2F47B: LitStr "Municipalidad de Guaymallén"
  loc_A2F47E: LitStr "Municipalidad de Tupungato"
  loc_A2F481: EqStr
  loc_A2F483: BranchF loc_A2F51B
  loc_A2F486: FLdRfVar var_A0
  loc_A2F489: ILdPr
  loc_A2F48C: from_stack_1v = tblproveedor.FactProvGet()
  loc_A2F491: ILdRf var_A0
  loc_A2F494: LitStr "fcb"
  loc_A2F497: EqStr
  loc_A2F499: FLdRfVar var_A4
  loc_A2F49C: ILdPr
  loc_A2F49F: from_stack_1v = tblproveedor.FactProvGet()
  loc_A2F4A4: ILdRf var_A4
  loc_A2F4A7: LitStr "fca"
  loc_A2F4AA: EqStr
  loc_A2F4AC: OrI4
  loc_A2F4AD: ILdRf var_8C
  loc_A2F4B0: LitStr "fcc"
  loc_A2F4B3: EqStr
  loc_A2F4B5: AndI4
  loc_A2F4B6: FFreeStr var_A0 = ""
  loc_A2F4BD: BranchF loc_A2F4D8
  loc_A2F4C0: LitStr "El Tipo de Factura NO CORRESPONDE al Proveedor."
  loc_A2F4C3: LitStr vbCrLf
  loc_A2F4C6: ConcatStr
  loc_A2F4C7: FStStrNoPop var_A0
  loc_A2F4CA: LitStr "Ingrese el Tipo de Factura correcto en la FICHA DE PROVEEDORES."
  loc_A2F4CD: ConcatStr
  loc_A2F4CE: FStStr var_88
  loc_A2F4D1: FFree1Str var_A0
  loc_A2F4D4: ExitProc
  loc_A2F4D5: Branch loc_A2F518
  loc_A2F4D8: FLdRfVar var_A0
  loc_A2F4DB: ILdPr
  loc_A2F4DE: from_stack_1v = tblproveedor.FactProvGet()
  loc_A2F4E3: ILdRf var_A0
  loc_A2F4E6: LitStr "fcc"
  loc_A2F4E9: EqStr
  loc_A2F4EB: ILdRf var_8C
  loc_A2F4EE: LitStr "fcb"
  loc_A2F4F1: EqStr
  loc_A2F4F3: ILdRf var_8C
  loc_A2F4F6: LitStr "fca"
  loc_A2F4F9: EqStr
  loc_A2F4FB: OrI4
  loc_A2F4FC: AndI4
  loc_A2F4FD: FFree1Str var_A0
  loc_A2F500: BranchF loc_A2F518
  loc_A2F503: LitStr "El Tipo de Factura NO CORRESPONDE al Proveedor."
  loc_A2F506: LitStr vbCrLf
  loc_A2F509: ConcatStr
  loc_A2F50A: FStStrNoPop var_A0
  loc_A2F50D: LitStr "Ingrese el Tipo de Factura correcto en la FICHA DE PROVEEDORES."
  loc_A2F510: ConcatStr
  loc_A2F511: FStStr var_88
  loc_A2F514: FFree1Str var_A0
  loc_A2F517: ExitProc
  loc_A2F518: Branch loc_A2F575
  loc_A2F51B: ILdRf var_8C
  loc_A2F51E: LitStr "s/f"
  loc_A2F521: NeStr
  loc_A2F523: ILdRf var_8C
  loc_A2F526: FLdRfVar var_A0
  loc_A2F529: ILdPr
  loc_A2F52C: from_stack_1v = tblproveedor.FactProvGet()
  loc_A2F531: ILdRf var_A0
  loc_A2F534: NeStr
  loc_A2F536: AndI4
  loc_A2F537: FFree1Str var_A0
  loc_A2F53A: BranchF loc_A2F575
  loc_A2F53D: LitStr "El Tipo de Factura NO CORRESPONDE al Proveedor."
  loc_A2F540: LitStr vbCrLf
  loc_A2F543: ConcatStr
  loc_A2F544: FStStrNoPop var_A0
  loc_A2F547: LitStr "Ingrese el Tipo de Factura correcto en la FICHA DE PROVEEDORES."
  loc_A2F54A: ConcatStr
  loc_A2F54B: FStStr var_88
  loc_A2F54E: FFree1Str var_A0
  loc_A2F551: LitStr "Municipalidad de Guaymallén"
  loc_A2F554: LitStr "Municipalidad de General Alvear"
  loc_A2F557: EqStr
  loc_A2F559: ILdRf var_8C
  loc_A2F55C: LitStr "rem"
  loc_A2F55F: EqStr
  loc_A2F561: ILdRf var_8C
  loc_A2F564: LitStr "val"
  loc_A2F567: EqStr
  loc_A2F569: OrI4
  loc_A2F56A: AndI4
  loc_A2F56B: BranchF loc_A2F574
  loc_A2F56E: LitStr vbNullString
  loc_A2F571: FStStrCopy var_88
  loc_A2F574: ExitProc
  loc_A2F575: ExitProc
End Function

Private Function Proc_266_24_AF5868(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) 'AF5868
  'Data Table: 41FCDC
  loc_AF519C: ILdRf arg_14
  loc_AF519F: FStStrCopy var_8C
  loc_AF51A2: ILdRf arg_18
  loc_AF51A5: FStStrCopy var_90
  loc_AF51A8: ILdRf arg_1C
  loc_AF51AB: FStStrCopy var_94
  loc_AF51AE: OnErrorGoto loc_AF57E8
  loc_AF51B1: LitStr "SELECT ExpeImpu, IFNULL(Sum(DeveImpu),0) DeveImpu"
  loc_AF51B4: LitStr " FROM imputacion"
  loc_AF51B7: ConcatStr
  loc_AF51B8: FStStrNoPop var_98
  loc_AF51BB: LitStr " WHERE PeriInfo IN ("
  loc_AF51BE: ConcatStr
  loc_AF51BF: FStStrNoPop var_9C
  loc_AF51C2: FLdI2 arg_C
  loc_AF51C5: LitI2_Byte 1
  loc_AF51C7: SubI2
  loc_AF51C8: CStrUI1
  loc_AF51CA: FStStrNoPop var_A0
  loc_AF51CD: ConcatStr
  loc_AF51CE: FStStrNoPop var_A4
  loc_AF51D1: LitStr ","
  loc_AF51D4: ConcatStr
  loc_AF51D5: FStStrNoPop var_A8
  loc_AF51D8: FLdI2 arg_C
  loc_AF51DB: CStrUI1
  loc_AF51DD: FStStrNoPop var_AC
  loc_AF51E0: ConcatStr
  loc_AF51E1: FStStrNoPop var_B0
  loc_AF51E4: LitStr ","
  loc_AF51E7: ConcatStr
  loc_AF51E8: FStStrNoPop var_B4
  loc_AF51EB: FLdI2 arg_C
  loc_AF51EE: LitI2_Byte 1
  loc_AF51F0: AddI2
  loc_AF51F1: CStrUI1
  loc_AF51F3: FStStrNoPop var_B8
  loc_AF51F6: ConcatStr
  loc_AF51F7: FStStrNoPop var_BC
  loc_AF51FA: LitStr ")"
  loc_AF51FD: ConcatStr
  loc_AF51FE: FStStrNoPop var_C0
  loc_AF5201: LitStr " AND IdImpu != "
  loc_AF5204: ConcatStr
  loc_AF5205: FStStrNoPop var_C4
  loc_AF5208: ILdRf arg_10
  loc_AF520B: CStrI4
  loc_AF520D: FStStrNoPop var_C8
  loc_AF5210: ConcatStr
  loc_AF5211: FStStrNoPop var_CC
  loc_AF5214: LitStr " AND CucuPers = "
  loc_AF5217: ConcatStr
  loc_AF5218: FStStrNoPop var_D0
  loc_AF521B: ILdRf var_90
  loc_AF521E: ConcatStr
  loc_AF521F: FStStrNoPop var_D4
  loc_AF5222: LitStr " AND Left(NumeFact,3) != 's/f'"
  loc_AF5225: ConcatStr
  loc_AF5226: FStStrNoPop var_D8
  loc_AF5229: LitStr " AND NumeFact = '"
  loc_AF522C: ConcatStr
  loc_AF522D: FStStrNoPop var_DC
  loc_AF5230: ILdRf var_94
  loc_AF5233: ConcatStr
  loc_AF5234: FStStrNoPop var_E0
  loc_AF5237: LitStr "'"
  loc_AF523A: ConcatStr
  loc_AF523B: FStStrNoPop var_E4
  loc_AF523E: LitStr " GROUP BY ExpeImpu;"
  loc_AF5241: ConcatStr
  loc_AF5242: FStStrNoPop var_E8
  loc_AF5245: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_AF524A: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_AF5277: FLdRfVar var_EC
  loc_AF527A: FMemLdPr
  loc_AF527F:  = Me.RecordCount
  loc_AF5284: ILdRf var_EC
  loc_AF5287: LitI4 0
  loc_AF528C: GtI4
  loc_AF528D: BranchF loc_AF55F8
  loc_AF5290: FMemLdPr
  loc_AF5295: Me.MoveFirst
  loc_AF529A: FLdRfVar var_EE
  loc_AF529D: FMemLdPr
  loc_AF52A2:  = Me.EOF
  loc_AF52A7: FLdI2 var_EE
  loc_AF52AA: NotI4
  loc_AF52AB: BranchF loc_AF55F8
  loc_AF52AE: FLdRfVar var_118
  loc_AF52B1: FLdRfVar var_108
  loc_AF52B4: LitVarStr var_104, "ExpeImpu"
  loc_AF52B9: PopAdLdVar
  loc_AF52BA: FLdRfVar var_F4
  loc_AF52BD: FMemLdPr
  loc_AF52C2:  = Me.Fields
  loc_AF52C7: FLdPr var_F4
  loc_AF52CA: from_stack_2 = Me.Item(from_stack_1)
  loc_AF52CF: FLdPr var_108
  loc_AF52D2:  = Me.Value
  loc_AF52D7: FLdRfVar var_118
  loc_AF52DA: ILdRf var_8C
  loc_AF52DD: CVarStr var_128
  loc_AF52E0: HardType
  loc_AF52E1: NeVar var_138
  loc_AF52E5: FLdRfVar var_160
  loc_AF52E8: FLdRfVar var_150
  loc_AF52EB: LitVarStr var_14C, "DeveImpu"
  loc_AF52F0: PopAdLdVar
  loc_AF52F1: FLdRfVar var_13C
  loc_AF52F4: FMemLdPr
  loc_AF52F9:  = Me.Fields
  loc_AF52FE: FLdPr var_13C
  loc_AF5301: from_stack_2 = Me.Item(from_stack_1)
  loc_AF5306: FLdPr var_150
  loc_AF5309:  = Me.Value
  loc_AF530E: FLdRfVar var_160
  loc_AF5311: FnCDblVar
  loc_AF5313: LitI2_Byte 0
  loc_AF5315: CR8I2
  loc_AF5316: GtR4
  loc_AF5317: CVarBoolI2 var_170
  loc_AF531B: AndVar var_180
  loc_AF531F: FLdRfVar var_EC
  loc_AF5322: FMemLdPr
  loc_AF5327:  = Me.RecordCount
  loc_AF532C: ILdRf var_EC
  loc_AF532F: LitI4 1
  loc_AF5334: GtI4
  loc_AF5335: CVarBoolI2 var_190
  loc_AF5339: AndVar var_1A0
  loc_AF533D: CBoolVarNull
  loc_AF533F: FFreeAd var_F4 = "": var_108 = "": var_13C = ""
  loc_AF534A: FFreeVar var_118 = "": var_160 = "": var_170 = ""
  loc_AF5355: BranchF loc_AF543B
  loc_AF5358: FMemLdPr
  loc_AF535D: Me.MoveFirst
  loc_AF5362: FLdRfVar var_EE
  loc_AF5365: FMemLdPr
  loc_AF536A:  = Me.EOF
  loc_AF536F: FLdI2 var_EE
  loc_AF5372: NotI4
  loc_AF5373: BranchF loc_AF540F
  loc_AF5376: ILdRf var_1A4
  loc_AF5379: CVarStr var_170
  loc_AF537C: LitVarStr var_14C, ", "
  loc_AF5381: FStVarCopyObj var_138
  loc_AF5384: FLdRfVar var_138
  loc_AF5387: LitVarStr var_128, vbNullString
  loc_AF538C: FStVarCopyObj var_118
  loc_AF538F: FLdRfVar var_118
  loc_AF5392: ILdRf var_1A4
  loc_AF5395: LitStr vbNullString
  loc_AF5398: EqStr
  loc_AF539A: CVarBoolI2 var_104
  loc_AF539E: FLdRfVar var_160
  loc_AF53A1: ImpAdCallFPR4  = IIf(, , )
  loc_AF53A6: FLdRfVar var_160
  loc_AF53A9: ConcatVar var_180
  loc_AF53AD: FLdRfVar var_1A0
  loc_AF53B0: FLdRfVar var_108
  loc_AF53B3: LitVarStr var_190, "ExpeImpu"
  loc_AF53B8: PopAdLdVar
  loc_AF53B9: FLdRfVar var_F4
  loc_AF53BC: FMemLdPr
  loc_AF53C1:  = Me.Fields
  loc_AF53C6: FLdPr var_F4
  loc_AF53C9: from_stack_2 = Me.Item(from_stack_1)
  loc_AF53CE: FLdPr var_108
  loc_AF53D1:  = Me.Value
  loc_AF53D6: FLdRfVar var_1A0
  loc_AF53D9: ConcatVar var_1B4
  loc_AF53DD: CStrVarTmp
  loc_AF53DE: FStStr var_1A4
  loc_AF53E1: FFreeAd var_F4 = ""
  loc_AF53E8: FFreeVar var_104 = "": var_118 = "": var_138 = "": var_160 = "": var_180 = "": var_1A0 = ""
  loc_AF53F9: LitVar_Missing var_104
  loc_AF53FC: PopAdLdVar
  loc_AF53FD: LitI4 1
  loc_AF5402: FMemLdPr
  loc_AF5407: Me.Move from_stack_1, from_stack_2
  loc_AF540C: Branch loc_AF5362
  loc_AF540F: LitStr "La Factura: "
  loc_AF5412: ILdRf var_94
  loc_AF5415: ConcatStr
  loc_AF5416: FStStrNoPop var_98
  loc_AF5419: LitStr " se encuentra en los Expedientes: "
  loc_AF541C: ConcatStr
  loc_AF541D: FStStrNoPop var_9C
  loc_AF5420: ILdRf var_1A4
  loc_AF5423: ConcatStr
  loc_AF5424: FStStrNoPop var_A0
  loc_AF5427: LitStr " y NO puede volver a Devengarse. Verifique..."
  loc_AF542A: ConcatStr
  loc_AF542B: FStStr var_88
  loc_AF542E: FFreeStr var_98 = "": var_9C = ""
  loc_AF5437: ExitProc
  loc_AF5438: Branch loc_AF55EB
  loc_AF543B: FLdRfVar var_118
  loc_AF543E: FLdRfVar var_108
  loc_AF5441: LitVarStr var_104, "ExpeImpu"
  loc_AF5446: PopAdLdVar
  loc_AF5447: FLdRfVar var_F4
  loc_AF544A: FMemLdPr
  loc_AF544F:  = Me.Fields
  loc_AF5454: FLdPr var_F4
  loc_AF5457: from_stack_2 = Me.Item(from_stack_1)
  loc_AF545C: FLdPr var_108
  loc_AF545F:  = Me.Value
  loc_AF5464: FLdRfVar var_118
  loc_AF5467: ILdRf var_8C
  loc_AF546A: CVarStr var_128
  loc_AF546D: HardType
  loc_AF546E: NeVar var_138
  loc_AF5472: FLdRfVar var_160
  loc_AF5475: FLdRfVar var_150
  loc_AF5478: LitVarStr var_14C, "DeveImpu"
  loc_AF547D: PopAdLdVar
  loc_AF547E: FLdRfVar var_13C
  loc_AF5481: FMemLdPr
  loc_AF5486:  = Me.Fields
  loc_AF548B: FLdPr var_13C
  loc_AF548E: from_stack_2 = Me.Item(from_stack_1)
  loc_AF5493: FLdPr var_150
  loc_AF5496:  = Me.Value
  loc_AF549B: FLdRfVar var_160
  loc_AF549E: FnCDblVar
  loc_AF54A0: LitI2_Byte 0
  loc_AF54A2: CR8I2
  loc_AF54A3: GtR4
  loc_AF54A4: CVarBoolI2 var_170
  loc_AF54A8: AndVar var_180
  loc_AF54AC: FLdRfVar var_EC
  loc_AF54AF: FMemLdPr
  loc_AF54B4:  = Me.RecordCount
  loc_AF54B9: ILdRf var_EC
  loc_AF54BC: LitI4 1
  loc_AF54C1: EqI4
  loc_AF54C2: CVarBoolI2 var_190
  loc_AF54C6: AndVar var_1A0
  loc_AF54CA: CBoolVarNull
  loc_AF54CC: FFreeAd var_F4 = "": var_108 = "": var_13C = ""
  loc_AF54D7: FFreeVar var_118 = "": var_160 = "": var_170 = ""
  loc_AF54E2: BranchF loc_AF554C
  loc_AF54E5: LitStr "La Factura: "
  loc_AF54E8: ILdRf var_94
  loc_AF54EB: ConcatStr
  loc_AF54EC: FStStrNoPop var_98
  loc_AF54EF: LitStr " se encuentra Devengada en el Expediente:"
  loc_AF54F2: ConcatStr
  loc_AF54F3: CVarStr var_138
  loc_AF54F6: FLdRfVar var_118
  loc_AF54F9: FLdRfVar var_108
  loc_AF54FC: LitVarStr var_104, "ExpeImpu"
  loc_AF5501: PopAdLdVar
  loc_AF5502: FLdRfVar var_F4
  loc_AF5505: FMemLdPr
  loc_AF550A:  = Me.Fields
  loc_AF550F: FLdPr var_F4
  loc_AF5512: from_stack_2 = Me.Item(from_stack_1)
  loc_AF5517: FLdPr var_108
  loc_AF551A:  = Me.Value
  loc_AF551F: FLdRfVar var_118
  loc_AF5522: ConcatVar var_160
  loc_AF5526: LitVarStr var_128, ". Verifique el CAI..."
  loc_AF552B: ConcatVar var_180
  loc_AF552F: CStrVarTmp
  loc_AF5530: FStStr var_88
  loc_AF5533: FFree1Str var_98
  loc_AF5536: FFreeAd var_F4 = ""
  loc_AF553D: FFreeVar var_138 = "": var_118 = "": var_160 = ""
  loc_AF5548: ExitProc
  loc_AF5549: Branch loc_AF55EB
  loc_AF554C: FLdRfVar var_118
  loc_AF554F: FLdRfVar var_108
  loc_AF5552: LitVarStr var_104, "ExpeImpu"
  loc_AF5557: PopAdLdVar
  loc_AF5558: FLdRfVar var_F4
  loc_AF555B: FMemLdPr
  loc_AF5560:  = Me.Fields
  loc_AF5565: FLdPr var_F4
  loc_AF5568: from_stack_2 = Me.Item(from_stack_1)
  loc_AF556D: FLdPr var_108
  loc_AF5570:  = Me.Value
  loc_AF5575: FLdRfVar var_118
  loc_AF5578: ILdRf var_8C
  loc_AF557B: CVarStr var_128
  loc_AF557E: HardType
  loc_AF557F: EqVar var_138
  loc_AF5583: FLdRfVar var_160
  loc_AF5586: FLdRfVar var_150
  loc_AF5589: LitVarStr var_14C, "DeveImpu"
  loc_AF558E: PopAdLdVar
  loc_AF558F: FLdRfVar var_13C
  loc_AF5592: FMemLdPr
  loc_AF5597:  = Me.Fields
  loc_AF559C: FLdPr var_13C
  loc_AF559F: from_stack_2 = Me.Item(from_stack_1)
  loc_AF55A4: FLdPr var_150
  loc_AF55A7:  = Me.Value
  loc_AF55AC: FLdRfVar var_160
  loc_AF55AF: FnCDblVar
  loc_AF55B1: LitI2_Byte 0
  loc_AF55B3: CR8I2
  loc_AF55B4: GtR4
  loc_AF55B5: CVarBoolI2 var_170
  loc_AF55B9: AndVar var_180
  loc_AF55BD: CBoolVarNull
  loc_AF55BF: FFreeAd var_F4 = "": var_108 = "": var_13C = ""
  loc_AF55CA: FFreeVar var_118 = "": var_160 = ""
  loc_AF55D3: BranchF loc_AF55EB
  loc_AF55D6: LitStr "Advertencia: La Factura: "
  loc_AF55D9: ILdRf var_94
  loc_AF55DC: ConcatStr
  loc_AF55DD: FStStrNoPop var_98
  loc_AF55E0: LitStr " se encuentra Devengada en el mismo Expediente..."
  loc_AF55E3: ConcatStr
  loc_AF55E4: FStStr var_88
  loc_AF55E7: FFree1Str var_98
  loc_AF55EA: ExitProc
  loc_AF55EB: FMemLdPr
  loc_AF55F0: Me.MoveNext
  loc_AF55F5: Branch loc_AF529A
  loc_AF55F8: FLdI2 arg_20
  loc_AF55FB: LitI2_Byte 0
  loc_AF55FD: GtI2
  loc_AF55FE: BranchF loc_AF57E4
  loc_AF5601: LitStr "SELECT r.*"
  loc_AF5604: LitStr " FROM recepcion r"
  loc_AF5607: ConcatStr
  loc_AF5608: FStStrNoPop var_98
  loc_AF560B: LitStr " INNER JOIN ordencompra oc ON oc.PeriInfo = r.PeriInfo AND oc.CodiOrco = r.CodiOrco"
  loc_AF560E: ConcatStr
  loc_AF560F: FStStrNoPop var_9C
  loc_AF5612: LitStr " WHERE r.PeriInfo IN ("
  loc_AF5615: ConcatStr
  loc_AF5616: FStStrNoPop var_A0
  loc_AF5619: FLdI2 arg_C
  loc_AF561C: LitI2_Byte 1
  loc_AF561E: SubI2
  loc_AF561F: CStrUI1
  loc_AF5621: FStStrNoPop var_A4
  loc_AF5624: ConcatStr
  loc_AF5625: FStStrNoPop var_A8
  loc_AF5628: LitStr ","
  loc_AF562B: ConcatStr
  loc_AF562C: FStStrNoPop var_AC
  loc_AF562F: FLdI2 arg_C
  loc_AF5632: CStrUI1
  loc_AF5634: FStStrNoPop var_B0
  loc_AF5637: ConcatStr
  loc_AF5638: FStStrNoPop var_B4
  loc_AF563B: LitStr ","
  loc_AF563E: ConcatStr
  loc_AF563F: FStStrNoPop var_B8
  loc_AF5642: FLdI2 arg_C
  loc_AF5645: LitI2_Byte 1
  loc_AF5647: AddI2
  loc_AF5648: CStrUI1
  loc_AF564A: FStStrNoPop var_BC
  loc_AF564D: ConcatStr
  loc_AF564E: FStStrNoPop var_C0
  loc_AF5651: LitStr ")"
  loc_AF5654: ConcatStr
  loc_AF5655: FStStrNoPop var_C4
  loc_AF5658: LitStr " AND NOT (r.CodiOrco = "
  loc_AF565B: ConcatStr
  loc_AF565C: FStStrNoPop var_C8
  loc_AF565F: FLdI2 arg_20
  loc_AF5662: CStrUI1
  loc_AF5664: FStStrNoPop var_CC
  loc_AF5667: ConcatStr
  loc_AF5668: FStStrNoPop var_D0
  loc_AF566B: LitStr " AND CodiRece = "
  loc_AF566E: ConcatStr
  loc_AF566F: FStStrNoPop var_D4
  loc_AF5672: FLdI2 arg_24
  loc_AF5675: CStrUI1
  loc_AF5677: FStStrNoPop var_D8
  loc_AF567A: ConcatStr
  loc_AF567B: FStStrNoPop var_DC
  loc_AF567E: LitStr ")"
  loc_AF5681: ConcatStr
  loc_AF5682: FStStrNoPop var_E0
  loc_AF5685: LitStr " AND oc.CucuPers = "
  loc_AF5688: ConcatStr
  loc_AF5689: FStStrNoPop var_E4
  loc_AF568C: ILdRf var_90
  loc_AF568F: ConcatStr
  loc_AF5690: FStStrNoPop var_E8
  loc_AF5693: LitStr " AND Left(NumeFact,3) != 's/f'"
  loc_AF5696: ConcatStr
  loc_AF5697: FStStrNoPop var_1B8
  loc_AF569A: LitStr " AND NumeFact = '"
  loc_AF569D: ConcatStr
  loc_AF569E: FStStrNoPop var_1BC
  loc_AF56A1: ILdRf var_94
  loc_AF56A4: ConcatStr
  loc_AF56A5: FStStrNoPop var_1C0
  loc_AF56A8: LitStr "'"
  loc_AF56AB: ConcatStr
  loc_AF56AC: FStStrNoPop var_1C4
  loc_AF56AF: LitStr " AND FeanRece IS NULL"
  loc_AF56B2: ConcatStr
  loc_AF56B3: FStStrNoPop var_1C8
  loc_AF56B6: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_AF56BB: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = ""
  loc_AF56F2: FLdRfVar var_EC
  loc_AF56F5: FMemLdPr
  loc_AF56FA:  = Me.RecordCount
  loc_AF56FF: ILdRf var_EC
  loc_AF5702: LitI4 0
  loc_AF5707: GtI4
  loc_AF5708: BranchF loc_AF57E4
  loc_AF570B: LitVarStr var_128, "La Orden de Compra: "
  loc_AF5710: FLdRfVar var_118
  loc_AF5713: FLdRfVar var_108
  loc_AF5716: LitVarStr var_104, "CodiOrco"
  loc_AF571B: PopAdLdVar
  loc_AF571C: FLdRfVar var_F4
  loc_AF571F: FMemLdPr
  loc_AF5724:  = Me.Fields
  loc_AF5729: FLdPr var_F4
  loc_AF572C: from_stack_2 = Me.Item(from_stack_1)
  loc_AF5731: FLdPr var_108
  loc_AF5734:  = Me.Value
  loc_AF5739: FLdRfVar var_118
  loc_AF573C: ConcatVar var_138
  loc_AF5740: LitVarStr var_14C, "/"
  loc_AF5745: ConcatVar var_160
  loc_AF5749: FLdRfVar var_180
  loc_AF574C: FLdRfVar var_150
  loc_AF574F: LitVarStr var_170, "PeriInfo"
  loc_AF5754: PopAdLdVar
  loc_AF5755: FLdRfVar var_13C
  loc_AF5758: FMemLdPr
  loc_AF575D:  = Me.Fields
  loc_AF5762: FLdPr var_13C
  loc_AF5765: from_stack_2 = Me.Item(from_stack_1)
  loc_AF576A: FLdPr var_150
  loc_AF576D:  = Me.Value
  loc_AF5772: FLdRfVar var_180
  loc_AF5775: ConcatVar var_1A0
  loc_AF5779: LitVarStr var_190, " - Recepción: "
  loc_AF577E: ConcatVar var_1B4
  loc_AF5782: FLdRfVar var_1F0
  loc_AF5785: FLdRfVar var_1E0
  loc_AF5788: LitVarStr var_1DC, "CodiRece"
  loc_AF578D: PopAdLdVar
  loc_AF578E: FLdRfVar var_1CC
  loc_AF5791: FMemLdPr
  loc_AF5796:  = Me.Fields
  loc_AF579B: FLdPr var_1CC
  loc_AF579E: from_stack_2 = Me.Item(from_stack_1)
  loc_AF57A3: FLdPr var_1E0
  loc_AF57A6:  = Me.Value
  loc_AF57AB: FLdRfVar var_1F0
  loc_AF57AE: ConcatVar var_200
  loc_AF57B2: LitVarStr var_210, " tiene el mismo Número de Factura. Verifique..."
  loc_AF57B7: ConcatVar var_220
  loc_AF57BB: CStrVarTmp
  loc_AF57BC: FStStr var_88
  loc_AF57BF: FFreeAd var_F4 = "": var_108 = "": var_13C = "": var_150 = "": var_1CC = ""
  loc_AF57CE: FFreeVar var_118 = "": var_138 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1B4 = "": var_1F0 = "": var_200 = ""
  loc_AF57E3: ExitProc
  loc_AF57E4: On Error GoTo 0
  loc_AF57E7: ExitProc
  loc_AF57E8: LitVar_Missing var_180
  loc_AF57EB: LitVar_Missing var_160
  loc_AF57EE: LitVar_Missing var_138
  loc_AF57F1: LitI4 0
  loc_AF57F6: LitStr "Error "
  loc_AF57F9: FLdRfVar var_EC
  loc_AF57FC: ImpAdCallI2 Err 'rtcErrObj
  loc_AF5801: FStAdFunc var_F4
  loc_AF5804: FLdPr var_F4
  loc_AF5807:  = Err.Number
  loc_AF580C: ILdRf var_EC
  loc_AF580F: CStrI4
  loc_AF5811: FStStrNoPop var_98
  loc_AF5814: ConcatStr
  loc_AF5815: FStStrNoPop var_9C
  loc_AF5818: LitStr " ("
  loc_AF581B: ConcatStr
  loc_AF581C: FStStrNoPop var_A4
  loc_AF581F: FLdRfVar var_A0
  loc_AF5822: ImpAdCallI2 Err 'rtcErrObj
  loc_AF5827: FStAdFunc var_108
  loc_AF582A: FLdPr var_108
  loc_AF582D:  = Err.Description
  loc_AF5832: ILdRf var_A0
  loc_AF5835: ConcatStr
  loc_AF5836: FStStrNoPop var_A8
  loc_AF5839: LitStr ") in procedure FacturaDuplicada of Módulo Validaciones"
  loc_AF583C: ConcatStr
  loc_AF583D: CVarStr var_118
  loc_AF5840: ImpAdCallFPR4 MsgBox(, , , , )
  loc_AF5845: FFreeStr var_98 = "": var_9C = "": var_A4 = "": var_A0 = ""
  loc_AF5852: FFreeAd var_F4 = ""
  loc_AF5859: FFreeVar var_118 = "": var_138 = "": var_160 = ""
  loc_AF5864: ExitProc
End Function

Private Function Proc_266_25_A07298(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) 'A07298
  'Data Table: 41FCDC
  loc_A07154: ILdRf arg_C
  loc_A07157: FStStrCopy var_8C
  loc_A0715A: ILdRf arg_10
  loc_A0715D: FStStrCopy var_90
  loc_A07160: ILdRf arg_20
  loc_A07163: FStStrCopy var_94
  loc_A07166: FLdI2 arg_18
  loc_A07169: FLdI2 arg_14
  loc_A0716C: ILdRf var_90
  loc_A0716F: ILdRf var_8C
  loc_A07172: ImpAdCallI2 Proc_266_34_A2DB0C(, , , )
  loc_A07177: FStStr var_88
  loc_A0717A: ILdRf var_88
  loc_A0717D: LitStr vbNullString
  loc_A07180: NeStr
  loc_A07182: BranchF loc_A07186
  loc_A07185: ExitProc
  loc_A07186: ILdRf var_94
  loc_A07189: LitStr "0"
  loc_A0718C: NeStr
  loc_A0718E: BranchF loc_A071B1
  loc_A07191: FLdI2 arg_18
  loc_A07194: FLdI2 arg_14
  loc_A07197: ILdRf var_90
  loc_A0719A: LitStr "Importe Máximo"
  loc_A0719D: ImpAdCallI2 Proc_266_34_A2DB0C(, , , )
  loc_A071A2: FStStr var_88
  loc_A071A5: ILdRf var_88
  loc_A071A8: LitStr vbNullString
  loc_A071AB: NeStr
  loc_A071AD: BranchF loc_A071B1
  loc_A071B0: ExitProc
  loc_A071B1: FLdI2 arg_1C
  loc_A071B4: NotI4
  loc_A071B5: BranchF loc_A071ED
  loc_A071B8: ILdRf var_90
  loc_A071BB: CR8Str
  loc_A071BD: LitI2_Byte 0
  loc_A071BF: CR8I2
  loc_A071C0: GtR4
  loc_A071C1: BranchF loc_A071ED
  loc_A071C4: LitStr "El "
  loc_A071C7: ILdRf var_8C
  loc_A071CA: ConcatStr
  loc_A071CB: FStStrNoPop var_98
  loc_A071CE: LitStr " "
  loc_A071D1: ConcatStr
  loc_A071D2: FStStrNoPop var_9C
  loc_A071D5: ILdRf var_90
  loc_A071D8: ConcatStr
  loc_A071D9: FStStrNoPop var_A0
  loc_A071DC: LitStr " No puede ser positivo. Verifique..."
  loc_A071DF: ConcatStr
  loc_A071E0: FStStr var_88
  loc_A071E3: FFreeStr var_98 = "": var_9C = ""
  loc_A071EC: ExitProc
  loc_A071ED: ILdRf var_94
  loc_A071F0: CR8Str
  loc_A071F2: LitI2_Byte 0
  loc_A071F4: CR8I2
  loc_A071F5: NeR8
  loc_A071F6: BranchF loc_A07295
  loc_A071F9: ILdRf var_90
  loc_A071FC: CR8Str
  loc_A071FE: FnAbsR4
  loc_A071FF: CR8R8
  loc_A07200: ILdRf var_94
  loc_A07203: CR8Str
  loc_A07205: FnAbsR4
  loc_A07206: CR8R8
  loc_A07207: GtR4
  loc_A07208: BranchF loc_A07295
  loc_A0720B: LitStr "El "
  loc_A0720E: ILdRf var_8C
  loc_A07211: ConcatStr
  loc_A07212: FStStrNoPop var_98
  loc_A07215: LitStr " "
  loc_A07218: ConcatStr
  loc_A07219: FStStrNoPop var_9C
  loc_A0721C: LitI4 1
  loc_A07221: LitI4 1
  loc_A07226: LitVarStr var_C0, "currency"
  loc_A0722B: FStVarCopyObj var_D0
  loc_A0722E: FLdRfVar var_D0
  loc_A07231: FLdRfVar var_90
  loc_A07234: CVarRef
  loc_A07239: ImpAdCallI2 Format$(, )
  loc_A0723E: FStStrNoPop var_A0
  loc_A07241: ConcatStr
  loc_A07242: FStStrNoPop var_D4
  loc_A07245: LitStr " es MAYOR al Importe Máximo "
  loc_A07248: ConcatStr
  loc_A07249: FStStrNoPop var_108
  loc_A0724C: LitI4 1
  loc_A07251: LitI4 1
  loc_A07256: LitVarStr var_F4, "currency"
  loc_A0725B: FStVarCopyObj var_104
  loc_A0725E: FLdRfVar var_104
  loc_A07261: FLdRfVar var_94
  loc_A07264: CVarRef
  loc_A07269: ImpAdCallI2 Format$(, )
  loc_A0726E: FStStrNoPop var_10C
  loc_A07271: ConcatStr
  loc_A07272: FStStrNoPop var_110
  loc_A07275: LitStr ". Verifique..."
  loc_A07278: ConcatStr
  loc_A07279: FStStr var_88
  loc_A0727C: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_D4 = "": var_108 = "": var_10C = ""
  loc_A0728D: FFreeVar var_D0 = ""
  loc_A07294: ExitProc
  loc_A07295: ExitProc
End Function

Private Function Proc_266_26_A54CD8(arg_C, arg_10, arg_14, arg_18, arg_1C) 'A54CD8
  'Data Table: 41FCDC
  loc_A54A2C: ILdRf arg_C
  loc_A54A2F: FStStrCopy var_8C
  loc_A54A32: ILdRf arg_10
  loc_A54A35: FStStrCopy var_90
  loc_A54A38: ILdRf var_90
  loc_A54A3B: ImpAdCallI2 Trim$()
  loc_A54A40: FStStrNoPop var_94
  loc_A54A43: LitStr vbNullString
  loc_A54A46: EqStr
  loc_A54A48: FFree1Str var_94
  loc_A54A4B: BranchF loc_A54A66
  loc_A54A4E: LitStr "Ingrese un valor Válido para "
  loc_A54A51: ILdRf var_8C
  loc_A54A54: ConcatStr
  loc_A54A55: FStStrNoPop var_94
  loc_A54A58: LitStr " . Verifique..."
  loc_A54A5B: ConcatStr
  loc_A54A5C: FStStr var_88
  loc_A54A5F: FFree1Str var_94
  loc_A54A62: ExitProc
  loc_A54A63: Branch loc_A54B6A
  loc_A54A66: LitI4 1
  loc_A54A6B: ILdRf var_90
  loc_A54A6E: CVarStr var_B4
  loc_A54A71: LitI4 &H22
  loc_A54A76: FLdRfVar var_A4
  loc_A54A79: ImpAdCallFPR4  = Chr()
  loc_A54A7E: FLdRfVar var_A4
  loc_A54A81: LitI4 0
  loc_A54A86: FnInStr4Var
  loc_A54A8A: LitVarI2 var_D4, 0
  loc_A54A8F: HardType
  loc_A54A90: GtVarBool
  loc_A54A92: FFreeVar var_A4 = ""
  loc_A54A99: BranchF loc_A54AAA
  loc_A54A9C: LitStr "No debe utilizar (comilla doble) en el campo "
  loc_A54A9F: ILdRf var_8C
  loc_A54AA2: ConcatStr
  loc_A54AA3: FStStr var_88
  loc_A54AA6: ExitProc
  loc_A54AA7: Branch loc_A54B6A
  loc_A54AAA: LitI4 1
  loc_A54AAF: ILdRf var_90
  loc_A54AB2: LitStr "'"
  loc_A54AB5: LitI4 0
  loc_A54ABA: FnInStr4
  loc_A54ABC: LitI4 0
  loc_A54AC1: GtI4
  loc_A54AC2: BranchF loc_A54AD3
  loc_A54AC5: LitStr "No debe utilizar (comilla simple) en el campo "
  loc_A54AC8: ILdRf var_8C
  loc_A54ACB: ConcatStr
  loc_A54ACC: FStStr var_88
  loc_A54ACF: ExitProc
  loc_A54AD0: Branch loc_A54B6A
  loc_A54AD3: LitI4 1
  loc_A54AD8: ILdRf var_90
  loc_A54ADB: LitStr ";"
  loc_A54ADE: LitI4 0
  loc_A54AE3: FnInStr4
  loc_A54AE5: LitI4 0
  loc_A54AEA: GtI4
  loc_A54AEB: BranchF loc_A54B44
  loc_A54AEE: ILdI2 arg_1C
  loc_A54AF1: BranchF loc_A54B36
  loc_A54AF4: LitI4 1
  loc_A54AF9: FLdRfVar var_90
  loc_A54AFC: CVarRef
  loc_A54B01: FLdRfVar var_A4
  loc_A54B04: ImpAdCallFPR4  = Ucase()
  loc_A54B09: FLdRfVar var_A4
  loc_A54B0C: LitVarStr var_D4, "TABLE"
  loc_A54B11: LitI4 0
  loc_A54B16: FnInStr4Var
  loc_A54B1A: LitVarI2 var_F4, 0
  loc_A54B1F: HardType
  loc_A54B20: GtVarBool
  loc_A54B22: FFreeVar var_A4 = ""
  loc_A54B29: BranchF loc_A54B33
  loc_A54B2C: LitStr "Prohibido usar TABLE o DATABASE. Consulte con el proveedor del Software..."
  loc_A54B2F: FStStrCopy var_88
  loc_A54B32: ExitProc
  loc_A54B33: Branch loc_A54B41
  loc_A54B36: LitStr "No debe utilizar (punto y coma) en el campo "
  loc_A54B39: ILdRf var_8C
  loc_A54B3C: ConcatStr
  loc_A54B3D: FStStr var_88
  loc_A54B40: ExitProc
  loc_A54B41: Branch loc_A54B6A
  loc_A54B44: LitI4 1
  loc_A54B49: ILdRf var_90
  loc_A54B4C: LitStr "|"
  loc_A54B4F: LitI4 0
  loc_A54B54: FnInStr4
  loc_A54B56: LitI4 0
  loc_A54B5B: GtI4
  loc_A54B5C: BranchF loc_A54B6A
  loc_A54B5F: LitStr "No debe utilizar (barra vertical) en el campo "
  loc_A54B62: ILdRf var_8C
  loc_A54B65: ConcatStr
  loc_A54B66: FStStr var_88
  loc_A54B69: ExitProc
  loc_A54B6A: ILdI2 arg_14
  loc_A54B6D: LitI2_Byte 0
  loc_A54B6F: GtI2
  loc_A54B70: BranchF loc_A54BD1
  loc_A54B73: ILdRf var_90
  loc_A54B76: FnLenStr
  loc_A54B77: ILdI2 arg_14
  loc_A54B7A: CI4UI1
  loc_A54B7B: NeI4
  loc_A54B7C: BranchF loc_A54BD1
  loc_A54B7F: ILdRf var_8C
  loc_A54B82: LitStr ". La cantidad de caracteres ingresados: "
  loc_A54B85: ConcatStr
  loc_A54B86: FStStrNoPop var_94
  loc_A54B89: ILdRf var_90
  loc_A54B8C: FnLenStr
  loc_A54B8D: CStrI4
  loc_A54B8F: FStStrNoPop var_F8
  loc_A54B92: ConcatStr
  loc_A54B93: FStStrNoPop var_FC
  loc_A54B96: LitStr " es distinta a la cantidad de caracteres a ingresar: "
  loc_A54B99: ConcatStr
  loc_A54B9A: FStStrNoPop var_100
  loc_A54B9D: ILdI2 arg_14
  loc_A54BA0: CStrUI1
  loc_A54BA2: FStStrNoPop var_104
  loc_A54BA5: ConcatStr
  loc_A54BA6: FStStrNoPop var_108
  loc_A54BA9: LitStr ". Verifique..."
  loc_A54BAC: ConcatStr
  loc_A54BAD: FStStr var_88
  loc_A54BB0: FFreeStr var_94 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_A54BBF: LitStr "Municipalidad de Guaymallén"
  loc_A54BC2: LitStr "Municipalidad de Tupungato"
  loc_A54BC5: EqStr
  loc_A54BC7: BranchF loc_A54BD0
  loc_A54BCA: LitStr vbNullString
  loc_A54BCD: FStStrCopy var_88
  loc_A54BD0: ExitProc
  loc_A54BD1: ILdI2 arg_18
  loc_A54BD4: BranchF loc_A54CD5
  loc_A54BD7: LitI4 1
  loc_A54BDC: FLdRfVar var_10C
  loc_A54BDF: ILdRf var_90
  loc_A54BE2: FnLenStr
  loc_A54BE3: ForI4 var_118
  loc_A54BE9: LitVarI2 var_A4, 1
  loc_A54BEE: ILdRf var_10C
  loc_A54BF1: FLdRfVar var_90
  loc_A54BF4: CVarRef
  loc_A54BF9: FLdRfVar var_C4
  loc_A54BFC: ImpAdCallFPR4  = Mid(, , )
  loc_A54C01: FLdRfVar var_C4
  loc_A54C04: CStrVarTmp
  loc_A54C05: FLdRfVar var_10E
  loc_A54C08: StFixedStrFree
  loc_A54C0C: FFreeVar var_A4 = ""
  loc_A54C13: FLdRfVar var_10E
  loc_A54C16: LdFixedStr
  loc_A54C19: FStStrNoPop var_94
  loc_A54C1C: LitStr "0"
  loc_A54C1F: NeStr
  loc_A54C21: FLdRfVar var_10E
  loc_A54C24: LdFixedStr
  loc_A54C27: FStStrNoPop var_F8
  loc_A54C2A: LitStr "1"
  loc_A54C2D: NeStr
  loc_A54C2F: AndI4
  loc_A54C30: FLdRfVar var_10E
  loc_A54C33: LdFixedStr
  loc_A54C36: FStStrNoPop var_FC
  loc_A54C39: LitStr "2"
  loc_A54C3C: NeStr
  loc_A54C3E: AndI4
  loc_A54C3F: FLdRfVar var_10E
  loc_A54C42: LdFixedStr
  loc_A54C45: FStStrNoPop var_100
  loc_A54C48: LitStr "3"
  loc_A54C4B: NeStr
  loc_A54C4D: AndI4
  loc_A54C4E: FLdRfVar var_10E
  loc_A54C51: LdFixedStr
  loc_A54C54: FStStrNoPop var_104
  loc_A54C57: LitStr "4"
  loc_A54C5A: NeStr
  loc_A54C5C: AndI4
  loc_A54C5D: FLdRfVar var_10E
  loc_A54C60: LdFixedStr
  loc_A54C63: FStStrNoPop var_108
  loc_A54C66: LitStr "5"
  loc_A54C69: NeStr
  loc_A54C6B: AndI4
  loc_A54C6C: FLdRfVar var_10E
  loc_A54C6F: LdFixedStr
  loc_A54C72: FStStrNoPop var_11C
  loc_A54C75: LitStr "6"
  loc_A54C78: NeStr
  loc_A54C7A: AndI4
  loc_A54C7B: FLdRfVar var_10E
  loc_A54C7E: LdFixedStr
  loc_A54C81: FStStrNoPop var_120
  loc_A54C84: LitStr "7"
  loc_A54C87: NeStr
  loc_A54C89: AndI4
  loc_A54C8A: FLdRfVar var_10E
  loc_A54C8D: LdFixedStr
  loc_A54C90: FStStrNoPop var_124
  loc_A54C93: LitStr "8"
  loc_A54C96: NeStr
  loc_A54C98: AndI4
  loc_A54C99: FLdRfVar var_10E
  loc_A54C9C: LdFixedStr
  loc_A54C9F: FStStrNoPop var_128
  loc_A54CA2: LitStr "9"
  loc_A54CA5: NeStr
  loc_A54CA7: AndI4
  loc_A54CA8: FFreeStr var_94 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_A54CBF: BranchF loc_A54CCD
  loc_A54CC2: ILdRf var_8C
  loc_A54CC5: LitStr ". Ingrese solo números..."
  loc_A54CC8: ConcatStr
  loc_A54CC9: FStStr var_88
  loc_A54CCC: ExitProc
  loc_A54CCD: FLdRfVar var_10C
  loc_A54CD0: NextI4 var_118, loc_A54BE9
  loc_A54CD5: ExitProc
End Function

Private Function Proc_266_27_9A5218(arg_C, arg_10, arg_14, arg_18) '9A5218
  'Data Table: 41FCDC
  loc_9A519C: ILdRf arg_C
  loc_9A519F: FStStrCopy var_8C
  loc_9A51A2: ILdRf arg_10
  loc_9A51A5: FStStrCopy var_90
  loc_9A51A8: FLdI2 arg_18
  loc_9A51AB: FLdI2 arg_14
  loc_9A51AE: ILdRf var_90
  loc_9A51B1: ILdRf var_8C
  loc_9A51B4: ImpAdCallI2 Proc_266_34_A2DB0C(, , , )
  loc_9A51B9: FStStr var_88
  loc_9A51BC: ILdRf var_88
  loc_9A51BF: LitStr vbNullString
  loc_9A51C2: NeStr
  loc_9A51C4: BranchF loc_9A51C8
  loc_9A51C7: ExitProc
  loc_9A51C8: LitI4 1
  loc_9A51CD: ILdRf var_90
  loc_9A51D0: LitStr "."
  loc_9A51D3: LitI4 0
  loc_9A51D8: FnInStr4
  loc_9A51DA: CI2I4
  loc_9A51DB: FStI2 var_92
  loc_9A51DE: FLdI2 var_92
  loc_9A51E1: CI4UI1
  loc_9A51E2: LitI4 1
  loc_9A51E7: ILdRf var_90
  loc_9A51EA: LitStr ","
  loc_9A51ED: LitI4 0
  loc_9A51F2: FnInStr4
  loc_9A51F4: AddI4
  loc_9A51F5: CI2I4
  loc_9A51F6: FStI2 var_92
  loc_9A51F9: FLdI2 var_92
  loc_9A51FC: LitI2_Byte 0
  loc_9A51FE: GtI2
  loc_9A51FF: BranchF loc_9A5217
  loc_9A5202: LitStr "Ingrese un Número Entero para "
  loc_9A5205: ILdRf var_8C
  loc_9A5208: ConcatStr
  loc_9A5209: FStStrNoPop var_98
  loc_9A520C: LitStr " . Verifique..."
  loc_9A520F: ConcatStr
  loc_9A5210: FStStr var_88
  loc_9A5213: FFree1Str var_98
  loc_9A5216: ExitProc
  loc_9A5217: ExitProc
End Function

Private Function Proc_266_28_9CEA9C(arg_C, arg_10, arg_14, arg_18) '9CEA9C
  'Data Table: 41FCDC
  loc_9CE9B8: ILdRf arg_C
  loc_9CE9BB: FStStrCopy var_8C
  loc_9CE9BE: ILdRf arg_10
  loc_9CE9C1: FStStrCopy var_90
  loc_9CE9C4: FLdI2 arg_18
  loc_9CE9C7: FLdI2 arg_14
  loc_9CE9CA: ILdRf var_90
  loc_9CE9CD: ILdRf var_8C
  loc_9CE9D0: ImpAdCallI2 Proc_266_34_A2DB0C(, , , )
  loc_9CE9D5: FStStr var_88
  loc_9CE9D8: ILdRf var_88
  loc_9CE9DB: LitStr vbNullString
  loc_9CE9DE: NeStr
  loc_9CE9E0: BranchF loc_9CE9E4
  loc_9CE9E3: ExitProc
  loc_9CE9E4: LitI4 1
  loc_9CE9E9: ILdRf var_90
  loc_9CE9EC: LitStr "."
  loc_9CE9EF: LitI4 0
  loc_9CE9F4: FnInStr4
  loc_9CE9F6: CI2I4
  loc_9CE9F7: FStI2 var_92
  loc_9CE9FA: FLdI2 var_92
  loc_9CE9FD: CI4UI1
  loc_9CE9FE: LitI4 1
  loc_9CEA03: ILdRf var_90
  loc_9CEA06: LitStr ","
  loc_9CEA09: LitI4 0
  loc_9CEA0E: FnInStr4
  loc_9CEA10: AddI4
  loc_9CEA11: CI2I4
  loc_9CEA12: FStI2 var_92
  loc_9CEA15: FLdI2 var_92
  loc_9CEA18: LitI2_Byte 0
  loc_9CEA1A: GtI2
  loc_9CEA1B: BranchF loc_9CEA33
  loc_9CEA1E: LitStr "Ingrese un Número Entero para "
  loc_9CEA21: ILdRf var_8C
  loc_9CEA24: ConcatStr
  loc_9CEA25: FStStrNoPop var_98
  loc_9CEA28: LitStr ". Verifique..."
  loc_9CEA2B: ConcatStr
  loc_9CEA2C: FStStr var_88
  loc_9CEA2F: FFree1Str var_98
  loc_9CEA32: ExitProc
  loc_9CEA33: LitI4 5
  loc_9CEA38: ILdRf var_90
  loc_9CEA3B: ImpAdCallI2 Left$(, )
  loc_9CEA40: FStStrNoPop var_98
  loc_9CEA43: CI4Str
  loc_9CEA44: LitI4 &H270F
  loc_9CEA49: GtI4
  loc_9CEA4A: FFree1Str var_98
  loc_9CEA4D: BranchF loc_9CEA65
  loc_9CEA50: LitStr "El Número es Mayor a 9999 para "
  loc_9CEA53: ILdRf var_8C
  loc_9CEA56: ConcatStr
  loc_9CEA57: FStStrNoPop var_98
  loc_9CEA5A: LitStr " . Verifique..."
  loc_9CEA5D: ConcatStr
  loc_9CEA5E: FStStr var_88
  loc_9CEA61: FFree1Str var_98
  loc_9CEA64: ExitProc
  loc_9CEA65: FLdI2 arg_14
  loc_9CEA68: LitI4 5
  loc_9CEA6D: ILdRf var_90
  loc_9CEA70: ImpAdCallI2 Left$(, )
  loc_9CEA75: FStStrNoPop var_98
  loc_9CEA78: CI4Str
  loc_9CEA79: LitI4 -9999
  loc_9CEA7E: LtI4
  loc_9CEA7F: AndI4
  loc_9CEA80: FFree1Str var_98
  loc_9CEA83: BranchF loc_9CEA9B
  loc_9CEA86: LitStr "El Número es Menor a -9999 para "
  loc_9CEA89: ILdRf var_8C
  loc_9CEA8C: ConcatStr
  loc_9CEA8D: FStStrNoPop var_98
  loc_9CEA90: LitStr " . Verifique..."
  loc_9CEA93: ConcatStr
  loc_9CEA94: FStStr var_88
  loc_9CEA97: FFree1Str var_98
  loc_9CEA9A: ExitProc
  loc_9CEA9B: ExitProc
End Function

Private Function Proc_266_29_9CEBC0(arg_C, arg_10, arg_14, arg_18) '9CEBC0
  'Data Table: 41FCDC
  loc_9CEADC: ILdRf arg_C
  loc_9CEADF: FStStrCopy var_8C
  loc_9CEAE2: ILdRf arg_10
  loc_9CEAE5: FStStrCopy var_90
  loc_9CEAE8: FLdI2 arg_18
  loc_9CEAEB: FLdI2 arg_14
  loc_9CEAEE: ILdRf var_90
  loc_9CEAF1: ILdRf var_8C
  loc_9CEAF4: ImpAdCallI2 Proc_266_34_A2DB0C(, , , )
  loc_9CEAF9: FStStr var_88
  loc_9CEAFC: ILdRf var_88
  loc_9CEAFF: LitStr vbNullString
  loc_9CEB02: NeStr
  loc_9CEB04: BranchF loc_9CEB08
  loc_9CEB07: ExitProc
  loc_9CEB08: LitI4 1
  loc_9CEB0D: ILdRf var_90
  loc_9CEB10: LitStr "."
  loc_9CEB13: LitI4 0
  loc_9CEB18: FnInStr4
  loc_9CEB1A: CI2I4
  loc_9CEB1B: FStI2 var_92
  loc_9CEB1E: FLdI2 var_92
  loc_9CEB21: CI4UI1
  loc_9CEB22: LitI4 1
  loc_9CEB27: ILdRf var_90
  loc_9CEB2A: LitStr ","
  loc_9CEB2D: LitI4 0
  loc_9CEB32: FnInStr4
  loc_9CEB34: AddI4
  loc_9CEB35: CI2I4
  loc_9CEB36: FStI2 var_92
  loc_9CEB39: FLdI2 var_92
  loc_9CEB3C: LitI2_Byte 0
  loc_9CEB3E: GtI2
  loc_9CEB3F: BranchF loc_9CEB57
  loc_9CEB42: LitStr "Ingrese un Número Entero para "
  loc_9CEB45: ILdRf var_8C
  loc_9CEB48: ConcatStr
  loc_9CEB49: FStStrNoPop var_98
  loc_9CEB4C: LitStr " . Verifique..."
  loc_9CEB4F: ConcatStr
  loc_9CEB50: FStStr var_88
  loc_9CEB53: FFree1Str var_98
  loc_9CEB56: ExitProc
  loc_9CEB57: LitI4 2
  loc_9CEB5C: ILdRf var_90
  loc_9CEB5F: ImpAdCallI2 Left$(, )
  loc_9CEB64: FStStrNoPop var_98
  loc_9CEB67: CI4Str
  loc_9CEB68: LitI4 &H63
  loc_9CEB6D: GtI4
  loc_9CEB6E: FFree1Str var_98
  loc_9CEB71: BranchF loc_9CEB89
  loc_9CEB74: LitStr "El Número es Mayor a 99 para "
  loc_9CEB77: ILdRf var_8C
  loc_9CEB7A: ConcatStr
  loc_9CEB7B: FStStrNoPop var_98
  loc_9CEB7E: LitStr " . Verifique..."
  loc_9CEB81: ConcatStr
  loc_9CEB82: FStStr var_88
  loc_9CEB85: FFree1Str var_98
  loc_9CEB88: ExitProc
  loc_9CEB89: FLdI2 arg_14
  loc_9CEB8C: LitI4 3
  loc_9CEB91: ILdRf var_90
  loc_9CEB94: ImpAdCallI2 Left$(, )
  loc_9CEB99: FStStrNoPop var_98
  loc_9CEB9C: CI4Str
  loc_9CEB9D: LitI4 -99
  loc_9CEBA2: LtI4
  loc_9CEBA3: AndI4
  loc_9CEBA4: FFree1Str var_98
  loc_9CEBA7: BranchF loc_9CEBBF
  loc_9CEBAA: LitStr "El Número es Menor a -99 para "
  loc_9CEBAD: ILdRf var_8C
  loc_9CEBB0: ConcatStr
  loc_9CEBB1: FStStrNoPop var_98
  loc_9CEBB4: LitStr " . Verifique..."
  loc_9CEBB7: ConcatStr
  loc_9CEBB8: FStStr var_88
  loc_9CEBBB: FFree1Str var_98
  loc_9CEBBE: ExitProc
  loc_9CEBBF: ExitProc
End Function

Private Function Proc_266_30_AB69EC(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) 'AB69EC
  'Data Table: 41FCDC
  loc_AB6484: ILdRf arg_C
  loc_AB6487: FStStrCopy var_8C
  loc_AB648A: ILdRf arg_18
  loc_AB648D: FStStrCopy var_90
  loc_AB6490: ILdRf var_90
  loc_AB6493: LitStr "01/01/2018"
  loc_AB6496: EqStr
  loc_AB6498: BranchF loc_AB64A3
  loc_AB649B: ImpAdLdFPR8 MemVar_C3D054
  loc_AB649E: CStrDate
  loc_AB64A0: FStStr var_90
  loc_AB64A3: FLdRfVar var_8C
  loc_AB64A6: CVarRef
  loc_AB64AB: ImpAdCallI2 IsDate()
  loc_AB64B0: NotI4
  loc_AB64B1: BranchF loc_AB64BB
  loc_AB64B4: LitStr "Ingrese una fecha Válida. Verifique..."
  loc_AB64B7: FStStrCopy var_88
  loc_AB64BA: ExitProc
  loc_AB64BB: ILdI4 arg_1C
  loc_AB64BE: FStAd var_A4 
  loc_AB64C2: FLdRfVar var_A4
  loc_AB64C5: CVarRef
  loc_AB64CA: ImpAdCallI2 TypeName()
  loc_AB64CF: FStStr var_A8
  loc_AB64D2: ILdRf var_A4
  loc_AB64D5: CastAd
  loc_AB64D8: IStAdFunc
  loc_AB64DC: ILdRf var_A8
  loc_AB64DF: LitStr "MaskEdBox"
  loc_AB64E2: EqStr
  loc_AB64E4: FFree1Str var_A8
  loc_AB64E7: FFree1Ad var_A4
  loc_AB64EA: BranchF loc_AB6581
  loc_AB64ED: ILdPr
  loc_AB64F0: LateIdLdVar var_B8 DispID_15 0
  loc_AB64F7: PopAd
  loc_AB64F9: LitVarI2 var_D8, 5
  loc_AB64FE: LitI4 6
  loc_AB6503: FLdRfVar var_B8
  loc_AB6506: CStrVarTmp
  loc_AB6507: CVarStr var_C8
  loc_AB650A: FLdRfVar var_E8
  loc_AB650D: ImpAdCallFPR4  = Mid(, , )
  loc_AB6512: FLdRfVar var_E8
  loc_AB6515: LitVarStr var_F8, "/    "
  loc_AB651A: HardType
  loc_AB651B: EqVarBool
  loc_AB651D: FFreeVar var_B8 = "": var_C8 = "": var_D8 = ""
  loc_AB6528: BranchF loc_AB6581
  loc_AB652B: ILdPr
  loc_AB652E: LateIdLdVar var_B8 DispID_15 0
  loc_AB6535: PopAd
  loc_AB6537: LitI4 6
  loc_AB653C: FLdRfVar var_B8
  loc_AB653F: CStrVarTmp
  loc_AB6540: FStStrNoPop var_A8
  loc_AB6543: ImpAdCallI2 Left$(, )
  loc_AB6548: FStStrNoPop var_10C
  loc_AB654B: ImpAdLdI2 MemVar_C3D064
  loc_AB654E: CStrUI1
  loc_AB6550: FStStrNoPop var_110
  loc_AB6553: ConcatStr
  loc_AB6554: CVarStr var_C8
  loc_AB6557: PopAdLdVar
  loc_AB6558: ILdPr
  loc_AB655B: LateIdSt
  loc_AB6560: FFreeStr var_A8 = "": var_10C = ""
  loc_AB6569: FFreeVar var_B8 = ""
  loc_AB6570: ILdPr
  loc_AB6573: LateIdLdVar var_B8 DispID_15 0
  loc_AB657A: CStrVarTmp
  loc_AB657B: FStStr var_8C
  loc_AB657E: FFree1Var var_B8 = ""
  loc_AB6581: LitI4 1
  loc_AB6586: ILdRf var_8C
  loc_AB6589: LitStr " "
  loc_AB658C: LitI4 0
  loc_AB6591: FnInStr4
  loc_AB6593: LitI4 1
  loc_AB6598: GeI4
  loc_AB6599: BranchF loc_AB65A3
  loc_AB659C: LitStr "La Fecha NO es Válida. Verifique !!!"
  loc_AB659F: FStStrCopy var_88
  loc_AB65A2: ExitProc
  loc_AB65A3: FLdRfVar var_8C
  loc_AB65A6: CVarRef
  loc_AB65AB: FLdRfVar var_B8
  loc_AB65AE: ImpAdCallFPR4  = Year()
  loc_AB65B3: FLdRfVar var_B8
  loc_AB65B6: FnCIntVar
  loc_AB65B8: LitI2 2000
  loc_AB65BB: LtI2
  loc_AB65BC: FFreeVar var_B8 = ""
  loc_AB65C3: BranchF loc_AB65CD
  loc_AB65C6: LitStr "El Periodo no puede ser menor al 2000. Verifique..."
  loc_AB65C9: FStStrCopy var_88
  loc_AB65CC: ExitProc
  loc_AB65CD: FLdI2 arg_10
  loc_AB65D0: BranchF loc_AB65FD
  loc_AB65D3: FLdRfVar var_8C
  loc_AB65D6: CVarRef
  loc_AB65DB: FLdRfVar var_B8
  loc_AB65DE: ImpAdCallFPR4  = Year()
  loc_AB65E3: FLdRfVar var_B8
  loc_AB65E6: FnCIntVar
  loc_AB65E8: ImpAdLdI2 MemVar_C3D064
  loc_AB65EB: NeI2
  loc_AB65EC: FFreeVar var_B8 = ""
  loc_AB65F3: BranchF loc_AB65FD
  loc_AB65F6: LitStr "El Periodo ingresado es distinto al Periodo de trabajo. Verifique..."
  loc_AB65F9: FStStrCopy var_88
  loc_AB65FC: ExitProc
  loc_AB65FD: FLdI2 arg_14
  loc_AB6600: BranchF loc_AB6730
  loc_AB6603: LitStr "SELECT FeproPaco"
  loc_AB6606: LitStr " FROM contpres.paraconta"
  loc_AB6609: ConcatStr
  loc_AB660A: FStStrNoPop var_A8
  loc_AB660D: LitStr " WHERE PeriInfo = '"
  loc_AB6610: ConcatStr
  loc_AB6611: CVarStr var_C8
  loc_AB6614: FLdRfVar var_8C
  loc_AB6617: CVarRef
  loc_AB661C: FLdRfVar var_B8
  loc_AB661F: ImpAdCallFPR4  = Year()
  loc_AB6624: FLdRfVar var_B8
  loc_AB6627: ConcatVar var_D8
  loc_AB662B: LitVarStr var_F8, "';"
  loc_AB6630: ConcatVar var_E8
  loc_AB6634: CStrVarVal var_10C
  loc_AB6638: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_AB663D: FFreeStr var_A8 = ""
  loc_AB6644: FFreeVar var_C8 = "": var_B8 = "": var_D8 = ""
  loc_AB664F: FLdRfVar var_114
  loc_AB6652: FMemLdPr
  loc_AB6657:  = Me.RecordCount
  loc_AB665C: ILdRf var_114
  loc_AB665F: LitI4 0
  loc_AB6664: GtI4
  loc_AB6665: BranchF loc_AB6730
  loc_AB6668: FLdRfVar var_118
  loc_AB666B: LitVarStr var_A0, "FeproPaco"
  loc_AB6670: PopAdLdVar
  loc_AB6671: FLdRfVar var_A4
  loc_AB6674: FMemLdPr
  loc_AB6679:  = Me.Fields
  loc_AB667E: FLdPr var_A4
  loc_AB6681: from_stack_2 = Me.Item(from_stack_1)
  loc_AB6686: FLdZeroAd var_118
  loc_AB6689: CVarAd
  loc_AB668D: ImpAdCallI2 IsNull()
  loc_AB6692: NotI4
  loc_AB6693: FFree1Ad var_A4
  loc_AB6696: FFree1Var var_B8 = ""
  loc_AB6699: BranchF loc_AB6730
  loc_AB669C: FLdRfVar var_B8
  loc_AB669F: FLdRfVar var_118
  loc_AB66A2: LitVarStr var_A0, "FeproPaco"
  loc_AB66A7: PopAdLdVar
  loc_AB66A8: FLdRfVar var_A4
  loc_AB66AB: FMemLdPr
  loc_AB66B0:  = Me.Fields
  loc_AB66B5: FLdPr var_A4
  loc_AB66B8: from_stack_2 = Me.Item(from_stack_1)
  loc_AB66BD: FLdPr var_118
  loc_AB66C0:  = Me.Value
  loc_AB66C5: ILdRf var_8C
  loc_AB66C8: CDateStr
  loc_AB66CA: FLdRfVar var_B8
  loc_AB66CD: FnCDateVar
  loc_AB66CF: LeR8
  loc_AB66D0: FFreeAd var_A4 = ""
  loc_AB66D7: FFree1Var var_B8 = ""
  loc_AB66DA: BranchF loc_AB6730
  loc_AB66DD: LitVarStr var_F8, "La Contabilidad se encuentra Cerrada hasta el día "
  loc_AB66E2: FLdRfVar var_B8
  loc_AB66E5: FLdRfVar var_118
  loc_AB66E8: LitVarStr var_A0, "FeproPaco"
  loc_AB66ED: PopAdLdVar
  loc_AB66EE: FLdRfVar var_A4
  loc_AB66F1: FMemLdPr
  loc_AB66F6:  = Me.Fields
  loc_AB66FB: FLdPr var_A4
  loc_AB66FE: from_stack_2 = Me.Item(from_stack_1)
  loc_AB6703: FLdPr var_118
  loc_AB6706:  = Me.Value
  loc_AB670B: FLdRfVar var_B8
  loc_AB670E: ConcatVar var_C8
  loc_AB6712: LitVarStr var_128, ". Verifique..."
  loc_AB6717: ConcatVar var_D8
  loc_AB671B: CStrVarTmp
  loc_AB671C: FStStr var_88
  loc_AB671F: FFreeAd var_A4 = ""
  loc_AB6726: FFreeVar var_B8 = "": var_C8 = ""
  loc_AB672F: ExitProc
  loc_AB6730: ILdRf var_90
  loc_AB6733: LitStr vbNullString
  loc_AB6736: NeStr
  loc_AB6738: BranchF loc_AB6753
  loc_AB673B: FLdRfVar var_90
  loc_AB673E: CVarRef
  loc_AB6743: ImpAdCallI2 IsDate()
  loc_AB6748: NotI4
  loc_AB6749: BranchF loc_AB6753
  loc_AB674C: LitStr "La Fecha Inicial NO es Válida. Verifique..."
  loc_AB674F: FStStrCopy var_88
  loc_AB6752: ExitProc
  loc_AB6753: ILdRf var_90
  loc_AB6756: LitStr vbNullString
  loc_AB6759: NeStr
  loc_AB675B: BranchF loc_AB67F0
  loc_AB675E: FLdI2 arg_10
  loc_AB6761: BranchF loc_AB678A
  loc_AB6764: ILdRf var_8C
  loc_AB6767: CDateStr
  loc_AB6769: ILdRf var_90
  loc_AB676C: CDateStr
  loc_AB676E: LtR8
  loc_AB676F: BranchF loc_AB6787
  loc_AB6772: LitStr "La Fecha ingresada NO puede ser menor a: "
  loc_AB6775: ILdRf var_90
  loc_AB6778: ConcatStr
  loc_AB6779: FStStrNoPop var_A8
  loc_AB677C: LitStr ". Verifique..."
  loc_AB677F: ConcatStr
  loc_AB6780: FStStr var_88
  loc_AB6783: FFree1Str var_A8
  loc_AB6786: ExitProc
  loc_AB6787: Branch loc_AB67F0
  loc_AB678A: ILdRf var_8C
  loc_AB678D: CDateStr
  loc_AB678F: CVarDate var_B8
  loc_AB6793: FLdRfVar var_C8
  loc_AB6796: ImpAdCallFPR4  = Year()
  loc_AB679B: FLdRfVar var_C8
  loc_AB679E: ILdRf var_90
  loc_AB67A1: CDateStr
  loc_AB67A3: CVarDate var_D8
  loc_AB67A7: FLdRfVar var_E8
  loc_AB67AA: ImpAdCallFPR4  = Year()
  loc_AB67AF: FLdRfVar var_E8
  loc_AB67B2: EqVar var_108
  loc_AB67B6: ILdRf var_8C
  loc_AB67B9: CDateStr
  loc_AB67BB: ILdRf var_90
  loc_AB67BE: CDateStr
  loc_AB67C0: LtR8
  loc_AB67C1: CVarBoolI2 var_128
  loc_AB67C5: AndVar var_138
  loc_AB67C9: CBoolVarNull
  loc_AB67CB: FFreeVar var_B8 = "": var_D8 = "": var_C8 = "": var_E8 = ""
  loc_AB67D8: BranchF loc_AB67F0
  loc_AB67DB: LitStr "La Fecha ingresada NO puede ser menor a: "
  loc_AB67DE: ILdRf var_90
  loc_AB67E1: ConcatStr
  loc_AB67E2: FStStrNoPop var_A8
  loc_AB67E5: LitStr ". Verifique..."
  loc_AB67E8: ConcatStr
  loc_AB67E9: FStStr var_88
  loc_AB67EC: FFree1Str var_A8
  loc_AB67EF: ExitProc
  loc_AB67F0: ILdI4 arg_1C
  loc_AB67F3: FStAd var_A4 
  loc_AB67F7: FLdRfVar var_A4
  loc_AB67FA: CVarRef
  loc_AB67FF: ImpAdCallI2 TypeName()
  loc_AB6804: FStStr var_A8
  loc_AB6807: ILdRf var_A4
  loc_AB680A: CastAd
  loc_AB680D: IStAdFunc
  loc_AB6811: ILdRf var_A8
  loc_AB6814: LitStr "MaskEdBox"
  loc_AB6817: EqStr
  loc_AB6819: FFree1Str var_A8
  loc_AB681C: FFree1Ad var_A4
  loc_AB681F: BranchF loc_AB68A5
  loc_AB6822: ILdPr
  loc_AB6825: LateIdLdVar var_B8 DispID_11 -32767
  loc_AB682C: CStrVarTmp
  loc_AB682D: FStStrNoPop var_A8
  loc_AB6830: LitStr vbNullString
  loc_AB6833: NeStr
  loc_AB6835: FFree1Str var_A8
  loc_AB6838: FFree1Var var_B8 = ""
  loc_AB683B: BranchF loc_AB68A5
  loc_AB683E: ILdPr
  loc_AB6841: LateIdLdVar var_B8 DispID_11 -32767
  loc_AB6848: CStrVarTmp
  loc_AB6849: CVarStr var_C8
  loc_AB684C: ImpAdCallI2 IsDate()
  loc_AB6851: NotI4
  loc_AB6852: FFreeVar var_B8 = ""
  loc_AB6859: BranchF loc_AB685F
  loc_AB685C: Branch loc_AB68A5
  loc_AB685F: ILdRf var_8C
  loc_AB6862: CDateStr
  loc_AB6864: ILdPr
  loc_AB6867: LateIdLdVar var_B8 DispID_11 -32767
  loc_AB686E: CStrVarTmp
  loc_AB686F: FStStrNoPop var_A8
  loc_AB6872: CDateStr
  loc_AB6874: LtR8
  loc_AB6875: FFree1Str var_A8
  loc_AB6878: FFree1Var var_B8 = ""
  loc_AB687B: BranchF loc_AB68A5
  loc_AB687E: LitStr "La Fecha ingresada NO puede ser menor a: "
  loc_AB6881: ILdPr
  loc_AB6884: LateIdLdVar var_B8 DispID_11 -32767
  loc_AB688B: CStrVarTmp
  loc_AB688C: FStStrNoPop var_A8
  loc_AB688F: ConcatStr
  loc_AB6890: FStStrNoPop var_10C
  loc_AB6893: LitStr ". Verifique..."
  loc_AB6896: ConcatStr
  loc_AB6897: FStStr var_88
  loc_AB689A: FFreeStr var_A8 = ""
  loc_AB68A1: FFree1Var var_B8 = ""
  loc_AB68A4: ExitProc
  loc_AB68A5: ILdI2 arg_20
  loc_AB68A8: BranchF loc_AB696A
  loc_AB68AB: FLdI2 arg_10
  loc_AB68AE: BranchF loc_AB68E5
  loc_AB68B1: ILdRf var_8C
  loc_AB68B4: CDateStr
  loc_AB68B6: ImpAdLdFPR8 MemVar_C3D04C
  loc_AB68B9: GtR4
  loc_AB68BA: BranchF loc_AB68E2
  loc_AB68BD: LitVarStr var_A0, "Fecha futura: la Fecha ingresada NO puede ser mayor a: "
  loc_AB68C2: ImpAdLdFPR8 MemVar_C3D04C
  loc_AB68C5: CVarDate var_F8
  loc_AB68C9: ConcatVar var_B8
  loc_AB68CD: LitVarStr var_128, ". Verifique..."
  loc_AB68D2: ConcatVar var_C8
  loc_AB68D6: CStrVarTmp
  loc_AB68D7: FStStr var_88
  loc_AB68DA: FFreeVar var_B8 = ""
  loc_AB68E1: ExitProc
  loc_AB68E2: Branch loc_AB696A
  loc_AB68E5: FLdRfVar var_13C
  loc_AB68E8: NewIfNullRf
  loc_AB68EC: LitStr "SELECT Now() AS Hoy"
  loc_AB68EF: ImpAdCallFPR4  = Proc_261_44_9A4454()
  loc_AB68F4: LitI4 -1
  loc_AB68F9: FLdRfVar var_13C
  loc_AB68FC: NewIfNullPr Me
  loc_AB68FF: Me.Recordset15.Requery from_stack_1
  loc_AB6904: FLdRfVar var_118
  loc_AB6907: LitVarStr var_A0, "Hoy"
  loc_AB690C: PopAdLdVar
  loc_AB690D: FLdRfVar var_A4
  loc_AB6910: FLdRfVar var_13C
  loc_AB6913: NewIfNullPr Me
  loc_AB6916:  = Me.Recordset15.Fields
  loc_AB691B: FLdPr var_A4
  loc_AB691E: from_stack_2 = Me.Item(from_stack_1)
  loc_AB6923: LitI4 1
  loc_AB6928: LitI4 1
  loc_AB692D: LitVarStr var_F8, "dd/mm/yyyy"
  loc_AB6932: FStVarCopyObj var_C8
  loc_AB6935: FLdRfVar var_C8
  loc_AB6938: FLdZeroAd var_118
  loc_AB693B: CVarAd
  loc_AB693F: FLdRfVar var_D8
  loc_AB6942: ImpAdCallFPR4  = Format(, )
  loc_AB6947: ILdRf var_8C
  loc_AB694A: CDateStr
  loc_AB694C: FLdRfVar var_D8
  loc_AB694F: FnCDateVar
  loc_AB6951: GtR4
  loc_AB6952: FFree1Ad var_A4
  loc_AB6955: FFreeVar var_B8 = "": var_C8 = "": var_D8 = ""
  loc_AB6960: BranchF loc_AB696A
  loc_AB6963: LitStr "La Fecha ingresada NO puede ser mayor a Hoy. Verifique..."
  loc_AB6966: FStStrCopy var_88
  loc_AB6969: ExitProc
  loc_AB696A: ImpAdLdRf MemVar_C3D03C
  loc_AB696D: CVarRef
  loc_AB6972: FLdRfVar var_B8
  loc_AB6975: ImpAdCallFPR4  = Ucase()
  loc_AB697A: LitI4 3
  loc_AB697F: FLdRfVar var_B8
  loc_AB6982: FLdRfVar var_C8
  loc_AB6985: ImpAdCallFPR4  = Left(, )
  loc_AB698A: FLdRfVar var_C8
  loc_AB698D: LitVarStr var_F8, "HTC"
  loc_AB6992: HardType
  loc_AB6993: EqVarBool
  loc_AB6995: FFreeVar var_B8 = ""
  loc_AB699C: BranchF loc_AB69EB
  loc_AB699F: FLdRfVar var_8C
  loc_AB69A2: CVarRef
  loc_AB69A7: FLdRfVar var_B8
  loc_AB69AA: ImpAdCallFPR4  = Year()
  loc_AB69AF: FLdRfVar var_B8
  loc_AB69B2: CI2Var
  loc_AB69B3: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_AB69B8: FStStr var_10C
  loc_AB69BB: ILdRf var_8C
  loc_AB69BE: CDateStr
  loc_AB69C0: FLdZeroAd var_10C
  loc_AB69C3: FStStrNoPop var_A8
  loc_AB69C6: CDateStr
  loc_AB69C8: GtR4
  loc_AB69C9: FFreeStr var_A8 = ""
  loc_AB69D0: FFree1Var var_B8 = ""
  loc_AB69D3: BranchF loc_AB69EB
  loc_AB69D6: LitStr "La Contabilidad NO se encuentra Cerrada para la fecha "
  loc_AB69D9: ILdRf var_8C
  loc_AB69DC: ConcatStr
  loc_AB69DD: FStStrNoPop var_A8
  loc_AB69E0: LitStr ". Verifique..."
  loc_AB69E3: ConcatStr
  loc_AB69E4: FStStr var_88
  loc_AB69E7: FFree1Str var_A8
  loc_AB69EA: ExitProc
  loc_AB69EB: ExitProc
End Function

Private Function Proc_266_31_9BB10C(arg_C) '9BB10C
  'Data Table: 41FCDC
  loc_9BB058: FLdUI1
  loc_9BB05C: CI2UI1
  loc_9BB05E: LitI2_Byte 1
  loc_9BB060: LtI2
  loc_9BB061: FLdUI1
  loc_9BB065: CI2UI1
  loc_9BB067: LitI2_Byte &HC
  loc_9BB069: GtI2
  loc_9BB06A: OrI4
  loc_9BB06B: BranchF loc_9BB075
  loc_9BB06E: LitStr "El Mes NO es Válido. Verifique..."
  loc_9BB071: FStStrCopy var_88
  loc_9BB074: ExitProc
  loc_9BB075: FLdI2 arg_C
  loc_9BB078: LitI2 2000
  loc_9BB07B: LtI2
  loc_9BB07C: BranchF loc_9BB086
  loc_9BB07F: LitStr "El Periodo no puede ser menor al 2000. Verifique..."
  loc_9BB082: FStStrCopy var_88
  loc_9BB085: ExitProc
  loc_9BB086: ImpAdLdRf MemVar_C3D03C
  loc_9BB089: CVarRef
  loc_9BB08E: FLdRfVar var_A8
  loc_9BB091: ImpAdCallFPR4  = Ucase()
  loc_9BB096: LitI4 3
  loc_9BB09B: FLdRfVar var_A8
  loc_9BB09E: FLdRfVar var_B8
  loc_9BB0A1: ImpAdCallFPR4  = Left(, )
  loc_9BB0A6: FLdRfVar var_B8
  loc_9BB0A9: LitVarStr var_C8, "HTC"
  loc_9BB0AE: HardType
  loc_9BB0AF: EqVarBool
  loc_9BB0B1: FFreeVar var_A8 = ""
  loc_9BB0B8: BranchF loc_9BB10B
  loc_9BB0BB: FLdUI1
  loc_9BB0BF: CVarUI1
  loc_9BB0C3: HardType
  loc_9BB0C4: FLdI2 arg_C
  loc_9BB0C7: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_9BB0CC: CVarStr var_A8
  loc_9BB0CF: FLdRfVar var_B8
  loc_9BB0D2: ImpAdCallFPR4  = Month()
  loc_9BB0D7: FLdRfVar var_B8
  loc_9BB0DA: GtVarBool
  loc_9BB0DC: FFreeVar var_A8 = ""
  loc_9BB0E3: BranchF loc_9BB10B
  loc_9BB0E6: LitStr "La Contabilidad NO se encuentra Cerrada para el mes "
  loc_9BB0E9: LitI2_Byte 0
  loc_9BB0EB: FLdUI1
  loc_9BB0EF: CI4UI1
  loc_9BB0F0: ImpAdCallI2 MonthName(, )
  loc_9BB0F5: FStStrNoPop var_DC
  loc_9BB0F8: ConcatStr
  loc_9BB0F9: FStStrNoPop var_E0
  loc_9BB0FC: LitStr ". Verifique..."
  loc_9BB0FF: ConcatStr
  loc_9BB100: FStStr var_88
  loc_9BB103: FFreeStr var_DC = ""
  loc_9BB10A: ExitProc
  loc_9BB10B: ExitProc
End Function

Private Function Proc_266_32_9D4AB4(arg_C, arg_10) '9D4AB4
  'Data Table: 41FCDC
  loc_9D49D4: ILdRf arg_C
  loc_9D49D7: FStStrCopy var_8C
  loc_9D49DA: ILdRf arg_10
  loc_9D49DD: FStStrCopy var_90
  loc_9D49E0: LitI2_Byte &HFF
  loc_9D49E2: PopTmpLdAd2 var_9A
  loc_9D49E5: LitNothing
  loc_9D49E7: CastAd
  loc_9D49EA: FStAdFunc var_98
  loc_9D49ED: FLdRfVar var_98
  loc_9D49F0: LitStr "01/01/2018"
  loc_9D49F3: LitI2_Byte &HFF
  loc_9D49F5: LitI2_Byte &HFF
  loc_9D49F7: ILdRf var_8C
  loc_9D49FA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9D49FF: FStStr var_94
  loc_9D4A02: FFree1Ad var_98
  loc_9D4A05: ILdRf var_94
  loc_9D4A08: LitStr vbNullString
  loc_9D4A0B: NeStr
  loc_9D4A0D: BranchF loc_9D4A2D
  loc_9D4A10: LitI4 0
  loc_9D4A15: LitStr "Fecha 1: "
  loc_9D4A18: ILdRf var_94
  loc_9D4A1B: ConcatStr
  loc_9D4A1C: FStStrNoPop var_A0
  loc_9D4A1F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9D4A24: FFree1Str var_A0
  loc_9D4A27: LitI2_Byte &HFF
  loc_9D4A29: FStI2 var_86
  loc_9D4A2C: ExitProcI2
  loc_9D4A2D: LitI2_Byte &HFF
  loc_9D4A2F: PopTmpLdAd2 var_9A
  loc_9D4A32: LitNothing
  loc_9D4A34: CastAd
  loc_9D4A37: FStAdFunc var_98
  loc_9D4A3A: FLdRfVar var_98
  loc_9D4A3D: LitStr "01/01/2018"
  loc_9D4A40: LitI2_Byte &HFF
  loc_9D4A42: LitI2_Byte &HFF
  loc_9D4A44: ILdRf var_90
  loc_9D4A47: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9D4A4C: FStStr var_94
  loc_9D4A4F: FFree1Ad var_98
  loc_9D4A52: ILdRf var_94
  loc_9D4A55: LitStr vbNullString
  loc_9D4A58: NeStr
  loc_9D4A5A: BranchF loc_9D4A7A
  loc_9D4A5D: LitI4 0
  loc_9D4A62: LitStr "Fecha 2: "
  loc_9D4A65: ILdRf var_94
  loc_9D4A68: ConcatStr
  loc_9D4A69: FStStrNoPop var_A0
  loc_9D4A6C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9D4A71: FFree1Str var_A0
  loc_9D4A74: LitI2_Byte &HFF
  loc_9D4A76: FStI2 var_86
  loc_9D4A79: ExitProcI2
  loc_9D4A7A: FLdRfVar var_8C
  loc_9D4A7D: CVarRef
  loc_9D4A82: FLdRfVar var_C0
  loc_9D4A85: ImpAdCallFPR4  = Month()
  loc_9D4A8A: FLdRfVar var_C0
  loc_9D4A8D: FLdRfVar var_90
  loc_9D4A90: CVarRef
  loc_9D4A95: FLdRfVar var_E0
  loc_9D4A98: ImpAdCallFPR4  = Month()
  loc_9D4A9D: FLdRfVar var_E0
  loc_9D4AA0: NeVarBool
  loc_9D4AA2: FFreeVar var_C0 = ""
  loc_9D4AA9: BranchF loc_9D4AB1
  loc_9D4AAC: LitI2_Byte &HFF
  loc_9D4AAE: FStI2 var_86
  loc_9D4AB1: ExitProcI2
End Function

Private Function Proc_266_33_96E074(arg_C) '96E074
  'Data Table: 41FCDC
  loc_96E054: ILdRf arg_C
  loc_96E057: FStStrCopy var_8C
  loc_96E05A: FLdRfVar var_8C
  loc_96E05D: CVarRef
  loc_96E062: ImpAdCallI2 IsDate()
  loc_96E067: NotI4
  loc_96E068: BranchF loc_96E071
  loc_96E06B: LitStr "La HORA no es válida. Verifique..."
  loc_96E06E: FStStrCopy var_88
  loc_96E071: ExitProc
End Function

Private Function Proc_266_34_A2DB0C(arg_C, arg_10, arg_14, arg_18) 'A2DB0C
  'Data Table: 41FCDC
  loc_A2D924: ILdRf arg_C
  loc_A2D927: FStStrCopy var_8C
  loc_A2D92A: ILdRf arg_10
  loc_A2D92D: FStStrCopy var_90
  loc_A2D930: ILdRf var_90
  loc_A2D933: LitStr vbNullString
  loc_A2D936: EqStr
  loc_A2D938: BranchF loc_A2D950
  loc_A2D93B: LitStr "Ingrese un valor para "
  loc_A2D93E: ILdRf var_8C
  loc_A2D941: ConcatStr
  loc_A2D942: FStStrNoPop var_94
  loc_A2D945: LitStr ". Verifique..."
  loc_A2D948: ConcatStr
  loc_A2D949: FStStr var_88
  loc_A2D94C: FFree1Str var_94
  loc_A2D94F: ExitProc
  loc_A2D950: FLdRfVar var_90
  loc_A2D953: CVarRef
  loc_A2D958: ImpAdCallI2 IsNumeric()
  loc_A2D95D: NotI4
  loc_A2D95E: BranchF loc_A2D976
  loc_A2D961: LitStr "Ingrese un Número para "
  loc_A2D964: ILdRf var_8C
  loc_A2D967: ConcatStr
  loc_A2D968: FStStrNoPop var_94
  loc_A2D96B: LitStr ". Verifique..."
  loc_A2D96E: ConcatStr
  loc_A2D96F: FStStr var_88
  loc_A2D972: FFree1Str var_94
  loc_A2D975: ExitProc
  loc_A2D976: LitI4 1
  loc_A2D97B: ILdRf var_90
  loc_A2D97E: LitStr ","
  loc_A2D981: LitI4 0
  loc_A2D986: FnInStr4
  loc_A2D988: LitI4 0
  loc_A2D98D: EqI4
  loc_A2D98E: BranchF loc_A2D9BB
  loc_A2D991: ILdRf var_90
  loc_A2D994: CR8Str
  loc_A2D996: LitDate &H174876E7FF
  loc_A2D99F: GtR4
  loc_A2D9A0: BranchF loc_A2D9B8
  loc_A2D9A3: LitStr "El Número es Mayor a 99.999.999.999 para "
  loc_A2D9A6: ILdRf var_8C
  loc_A2D9A9: ConcatStr
  loc_A2D9AA: FStStrNoPop var_94
  loc_A2D9AD: LitStr " . Verifique..."
  loc_A2D9B0: ConcatStr
  loc_A2D9B1: FStStr var_88
  loc_A2D9B4: FFree1Str var_94
  loc_A2D9B7: ExitProc
  loc_A2D9B8: Branch loc_A2DA7B
  loc_A2D9BB: LitI4 1
  loc_A2D9C0: FLdRfVar var_90
  loc_A2D9C3: CVarRef
  loc_A2D9C8: FLdRfVar var_B4
  loc_A2D9CB: ImpAdCallFPR4  = Left(, )
  loc_A2D9D0: FLdRfVar var_B4
  loc_A2D9D3: LitVarStr var_C4, ","
  loc_A2D9D8: HardType
  loc_A2D9D9: EqVarBool
  loc_A2D9DB: FFree1Var var_B4 = ""
  loc_A2D9DE: BranchF loc_A2D9EB
  loc_A2D9E1: LitStr "0"
  loc_A2D9E4: ILdRf var_90
  loc_A2D9E7: ConcatStr
  loc_A2D9E8: FStStr var_90
  loc_A2D9EB: LitI4 2
  loc_A2D9F0: FLdRfVar var_90
  loc_A2D9F3: CVarRef
  loc_A2D9F8: FLdRfVar var_B4
  loc_A2D9FB: ImpAdCallFPR4  = Left(, )
  loc_A2DA00: FLdRfVar var_B4
  loc_A2DA03: LitVarStr var_C4, "-,"
  loc_A2DA08: HardType
  loc_A2DA09: EqVarBool
  loc_A2DA0B: FFree1Var var_B4 = ""
  loc_A2DA0E: BranchF loc_A2DA31
  loc_A2DA11: LitI4 0
  loc_A2DA16: LitI4 -1
  loc_A2DA1B: LitI4 1
  loc_A2DA20: LitStr "-0,"
  loc_A2DA23: LitStr "-,"
  loc_A2DA26: ILdRf var_90
  loc_A2DA29: ImpAdCallI2 Replace(, , , , , )
  loc_A2DA2E: FStStr var_90
  loc_A2DA31: LitI4 1
  loc_A2DA36: ILdRf var_90
  loc_A2DA39: LitStr ","
  loc_A2DA3C: LitI4 0
  loc_A2DA41: FnInStr4
  loc_A2DA43: LitI4 1
  loc_A2DA48: SubI4
  loc_A2DA49: ILdRf var_90
  loc_A2DA4C: ImpAdCallI2 Left$(, )
  loc_A2DA51: FStStrNoPop var_94
  loc_A2DA54: CR8Str
  loc_A2DA56: LitDate &H174876E7FF
  loc_A2DA5F: GtR4
  loc_A2DA60: FFree1Str var_94
  loc_A2DA63: BranchF loc_A2DA7B
  loc_A2DA66: LitStr "El Número es Mayor a 99.999.999.999  para "
  loc_A2DA69: ILdRf var_8C
  loc_A2DA6C: ConcatStr
  loc_A2DA6D: FStStrNoPop var_94
  loc_A2DA70: LitStr " . Verifique..."
  loc_A2DA73: ConcatStr
  loc_A2DA74: FStStr var_88
  loc_A2DA77: FFree1Str var_94
  loc_A2DA7A: ExitProc
  loc_A2DA7B: FLdI2 arg_14
  loc_A2DA7E: NotI4
  loc_A2DA7F: BranchF loc_A2DAB7
  loc_A2DA82: LitI4 9
  loc_A2DA87: ILdRf var_90
  loc_A2DA8A: ImpAdCallI2 Left$(, )
  loc_A2DA8F: FStStrNoPop var_94
  loc_A2DA92: CI4Str
  loc_A2DA93: LitI4 0
  loc_A2DA98: LtI4
  loc_A2DA99: FFree1Str var_94
  loc_A2DA9C: BranchF loc_A2DAB4
  loc_A2DA9F: LitStr "Ingrese un Número Positivo para "
  loc_A2DAA2: ILdRf var_8C
  loc_A2DAA5: ConcatStr
  loc_A2DAA6: FStStrNoPop var_94
  loc_A2DAA9: LitStr " . Verifique..."
  loc_A2DAAC: ConcatStr
  loc_A2DAAD: FStStr var_88
  loc_A2DAB0: FFree1Str var_94
  loc_A2DAB3: ExitProc
  loc_A2DAB4: Branch loc_A2DAF0
  loc_A2DAB7: LitI4 &HA
  loc_A2DABC: ILdRf var_90
  loc_A2DABF: ImpAdCallI2 Left$(, )
  loc_A2DAC4: FStStrNoPop var_94
  loc_A2DAC7: CR8Str
  loc_A2DAC9: LitDate &H174876E7FF
  loc_A2DAD2: UMiR8
  loc_A2DAD3: CR8R8
  loc_A2DAD4: LtR8
  loc_A2DAD5: FFree1Str var_94
  loc_A2DAD8: BranchF loc_A2DAF0
  loc_A2DADB: LitStr "El Número es Menor a -99.999.999.999 para "
  loc_A2DADE: ILdRf var_8C
  loc_A2DAE1: ConcatStr
  loc_A2DAE2: FStStrNoPop var_94
  loc_A2DAE5: LitStr " . Verifique..."
  loc_A2DAE8: ConcatStr
  loc_A2DAE9: FStStr var_88
  loc_A2DAEC: FFree1Str var_94
  loc_A2DAEF: ExitProc
  loc_A2DAF0: FLdI2 arg_18
  loc_A2DAF3: NotI4
  loc_A2DAF4: ILdRf var_90
  loc_A2DAF7: CR8Str
  loc_A2DAF9: LitI2_Byte 0
  loc_A2DAFB: CR8I2
  loc_A2DAFC: EqR4
  loc_A2DAFD: AndI4
  loc_A2DAFE: BranchF loc_A2DB08
  loc_A2DB01: LitStr "Ingrese un Número distinto de Cero. Verifique..."
  loc_A2DB04: FStStrCopy var_88
  loc_A2DB07: ExitProc
  loc_A2DB08: ExitProc
  loc_A2DB09: ILdI2 Proc_266_34_A2DB0C2A
End Function

Private Function Proc_266_35_9B67C0(arg_C) '9B67C0
  'Data Table: 41FCDC
  loc_9B670C: ILdRf arg_C
  loc_9B670F: FStStrCopy var_8C
  loc_9B6712: LitI2_Byte 0
  loc_9B6714: LitI2_Byte 0
  loc_9B6716: ILdRf var_8C
  loc_9B6719: LitStr "Periodo"
  loc_9B671C: ImpAdCallI2 Proc_266_34_A2DB0C(, , , )
  loc_9B6721: FStStr var_88
  loc_9B6724: ILdRf var_88
  loc_9B6727: LitStr vbNullString
  loc_9B672A: NeStr
  loc_9B672C: BranchF loc_9B6730
  loc_9B672F: ExitProc
  loc_9B6730: LitI4 1
  loc_9B6735: ILdRf var_8C
  loc_9B6738: LitStr "."
  loc_9B673B: LitI4 0
  loc_9B6740: FnInStr4
  loc_9B6742: CI2I4
  loc_9B6743: FStI2 var_8E
  loc_9B6746: FLdI2 var_8E
  loc_9B6749: CI4UI1
  loc_9B674A: LitI4 1
  loc_9B674F: ILdRf var_8C
  loc_9B6752: LitStr ","
  loc_9B6755: LitI4 0
  loc_9B675A: FnInStr4
  loc_9B675C: AddI4
  loc_9B675D: CI2I4
  loc_9B675E: FStI2 var_8E
  loc_9B6761: FLdI2 var_8E
  loc_9B6764: LitI2_Byte 0
  loc_9B6766: GtI2
  loc_9B6767: BranchF loc_9B6771
  loc_9B676A: LitStr "Ingrese un Número Entero para el Periodo. Verifique..."
  loc_9B676D: FStStrCopy var_88
  loc_9B6770: ExitProc
  loc_9B6771: LitI4 4
  loc_9B6776: ILdRf var_8C
  loc_9B6779: ImpAdCallI2 Left$(, )
  loc_9B677E: FStStrNoPop var_94
  loc_9B6781: CI4Str
  loc_9B6782: LitI4 &H802
  loc_9B6787: GtI4
  loc_9B6788: FFree1Str var_94
  loc_9B678B: BranchF loc_9B6798
  loc_9B678E: LitStr "El Número es Mayor a 2050 para el Periodo. Verifique..."
  loc_9B6791: FStStrCopy var_88
  loc_9B6794: ExitProc
  loc_9B6795: Branch loc_9B67BC
  loc_9B6798: LitI4 4
  loc_9B679D: ILdRf var_8C
  loc_9B67A0: ImpAdCallI2 Left$(, )
  loc_9B67A5: FStStrNoPop var_94
  loc_9B67A8: CI4Str
  loc_9B67A9: LitI4 &H7D0
  loc_9B67AE: LtI4
  loc_9B67AF: FFree1Str var_94
  loc_9B67B2: BranchF loc_9B67BC
  loc_9B67B5: LitStr "El Número es Menor a 2000 para el Periodo. Verifique..."
  loc_9B67B8: FStStrCopy var_88
  loc_9B67BB: ExitProc
  loc_9B67BC: ExitProc
End Function

Private Function Proc_266_36_9A5460(arg_C, arg_10, arg_14) '9A5460
  'Data Table: 41FCDC
  loc_9A53D8: ILdI4 arg_C
  loc_9A53DB: LitStr vbNullString
  loc_9A53DE: NeStr
  loc_9A53E0: BranchF loc_9A5459
  loc_9A53E3: ILdI4 arg_14
  loc_9A53E6: LitNothing
  loc_9A53E8: Is
  loc_9A53EA: NotI4
  loc_9A53EB: BranchF loc_9A53F9
  loc_9A53EE: LitStr vbNullString
  loc_9A53F1: ILdPr
  loc_9A53F4: Me.Caption = from_stack_1
  loc_9A53F9: LitI4 0
  loc_9A53FE: ILdI4 arg_C
  loc_9A5401: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9A5406: ILdI4 arg_10
  loc_9A5409: FStAd var_8C 
  loc_9A540D: FLdRfVar var_8C
  loc_9A5410: CVarRef
  loc_9A5415: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9A541A: ILdRf var_8C
  loc_9A541D: CastAd
  loc_9A5420: IStAdFunc
  loc_9A5424: FFree1Ad var_8C
  loc_9A5427: LitI4 &HB
  loc_9A542C: ILdI4 arg_C
  loc_9A542F: ImpAdCallI2 Left$(, )
  loc_9A5434: FStStrNoPop var_A0
  loc_9A5437: LitStr "Advertencia"
  loc_9A543A: EqStr
  loc_9A543C: FFree1Str var_A0
  loc_9A543F: BranchF loc_9A5451
  loc_9A5442: LitI2_Byte 0
  loc_9A5444: FStI2 var_86
  loc_9A5447: LitStr vbNullString
  loc_9A544A: IStStrCopy arg_C
  loc_9A544E: Branch loc_9A5456
  loc_9A5451: LitI2_Byte &HFF
  loc_9A5453: FStI2 var_86
  loc_9A5456: Branch loc_9A545E
  loc_9A5459: LitI2_Byte 0
  loc_9A545B: FStI2 var_86
  loc_9A545E: ExitProcI2
End Function

Private Function Proc_266_37_9AA1B8(arg_C, arg_10, arg_14) '9AA1B8
  'Data Table: 41FCDC
  loc_9AA148: ILdRf arg_10
  loc_9AA14B: FStStrCopy var_88
  loc_9AA14E: ILdRf arg_14
  loc_9AA151: FStStrCopy var_8C
  loc_9AA154: LitStr "INSERT INTO error (PeriInfo,FormErro,ObseErro,CodiUsua)"
  loc_9AA157: LitStr " VALUES ("
  loc_9AA15A: ConcatStr
  loc_9AA15B: FStStrNoPop var_90
  loc_9AA15E: FLdI2 arg_C
  loc_9AA161: CStrUI1
  loc_9AA163: FStStrNoPop var_94
  loc_9AA166: ConcatStr
  loc_9AA167: FStStrNoPop var_98
  loc_9AA16A: LitStr ",'"
  loc_9AA16D: ConcatStr
  loc_9AA16E: FStStrNoPop var_9C
  loc_9AA171: ILdRf var_88
  loc_9AA174: ConcatStr
  loc_9AA175: FStStrNoPop var_A0
  loc_9AA178: LitStr "','"
  loc_9AA17B: ConcatStr
  loc_9AA17C: FStStrNoPop var_A4
  loc_9AA17F: ILdRf var_8C
  loc_9AA182: ConcatStr
  loc_9AA183: FStStrNoPop var_A8
  loc_9AA186: LitStr "','"
  loc_9AA189: ConcatStr
  loc_9AA18A: FStStrNoPop var_AC
  loc_9AA18D: ImpAdLdI4 MemVar_C3D03C
  loc_9AA190: ConcatStr
  loc_9AA191: FStStrNoPop var_B0
  loc_9AA194: LitStr "')"
  loc_9AA197: ConcatStr
  loc_9AA198: FStStrNoPop var_B4
  loc_9AA19B: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_9AA1A0: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_9AA1B7: ExitProc
End Function

Private Function Proc_266_38_9E9B08(arg_C) '9E9B08
  'Data Table: 41FCDC
  loc_9E9A00: ILdRf arg_C
  loc_9E9A03: FStStrCopy var_8C
  loc_9E9A06: LitI2_Byte &HFF
  loc_9E9A08: FStI2 var_86
  loc_9E9A0B: LitI4 1
  loc_9E9A10: FLdRfVar var_90
  loc_9E9A13: ILdRf var_8C
  loc_9E9A16: FnLenStr
  loc_9E9A17: ForI4 var_9C
  loc_9E9A1D: LitVarI2 var_CC, 1
  loc_9E9A22: ILdRf var_90
  loc_9E9A25: FLdRfVar var_8C
  loc_9E9A28: CVarRef
  loc_9E9A2D: FLdRfVar var_DC
  loc_9E9A30: ImpAdCallFPR4  = Mid(, , )
  loc_9E9A35: FLdRfVar var_DC
  loc_9E9A38: CStrVarTmp
  loc_9E9A39: FLdRfVar var_92
  loc_9E9A3C: StFixedStrFree
  loc_9E9A40: FFreeVar var_CC = ""
  loc_9E9A47: FLdRfVar var_92
  loc_9E9A4A: LdFixedStr
  loc_9E9A4D: FStStrNoPop var_E0
  loc_9E9A50: LitStr "0"
  loc_9E9A53: NeStr
  loc_9E9A55: FLdRfVar var_92
  loc_9E9A58: LdFixedStr
  loc_9E9A5B: FStStrNoPop var_E4
  loc_9E9A5E: LitStr "1"
  loc_9E9A61: NeStr
  loc_9E9A63: AndI4
  loc_9E9A64: FLdRfVar var_92
  loc_9E9A67: LdFixedStr
  loc_9E9A6A: FStStrNoPop var_E8
  loc_9E9A6D: LitStr "2"
  loc_9E9A70: NeStr
  loc_9E9A72: AndI4
  loc_9E9A73: FLdRfVar var_92
  loc_9E9A76: LdFixedStr
  loc_9E9A79: FStStrNoPop var_EC
  loc_9E9A7C: LitStr "3"
  loc_9E9A7F: NeStr
  loc_9E9A81: AndI4
  loc_9E9A82: FLdRfVar var_92
  loc_9E9A85: LdFixedStr
  loc_9E9A88: FStStrNoPop var_F0
  loc_9E9A8B: LitStr "4"
  loc_9E9A8E: NeStr
  loc_9E9A90: AndI4
  loc_9E9A91: FLdRfVar var_92
  loc_9E9A94: LdFixedStr
  loc_9E9A97: FStStrNoPop var_F4
  loc_9E9A9A: LitStr "5"
  loc_9E9A9D: NeStr
  loc_9E9A9F: AndI4
  loc_9E9AA0: FLdRfVar var_92
  loc_9E9AA3: LdFixedStr
  loc_9E9AA6: FStStrNoPop var_F8
  loc_9E9AA9: LitStr "6"
  loc_9E9AAC: NeStr
  loc_9E9AAE: AndI4
  loc_9E9AAF: FLdRfVar var_92
  loc_9E9AB2: LdFixedStr
  loc_9E9AB5: FStStrNoPop var_FC
  loc_9E9AB8: LitStr "7"
  loc_9E9ABB: NeStr
  loc_9E9ABD: AndI4
  loc_9E9ABE: FLdRfVar var_92
  loc_9E9AC1: LdFixedStr
  loc_9E9AC4: FStStrNoPop var_100
  loc_9E9AC7: LitStr "8"
  loc_9E9ACA: NeStr
  loc_9E9ACC: AndI4
  loc_9E9ACD: FLdRfVar var_92
  loc_9E9AD0: LdFixedStr
  loc_9E9AD3: FStStrNoPop var_104
  loc_9E9AD6: LitStr "9"
  loc_9E9AD9: NeStr
  loc_9E9ADB: AndI4
  loc_9E9ADC: FFreeStr var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_9E9AF3: BranchF loc_9E9AFC
  loc_9E9AF6: LitI2_Byte 0
  loc_9E9AF8: FStI2 var_86
  loc_9E9AFB: ExitProcI2
  loc_9E9AFC: FLdRfVar var_90
  loc_9E9AFF: NextI4 var_9C, loc_9E9A1D
  loc_9E9B04: ExitProcI2
End Function

Private Function Proc_266_39_9F3844() '9F3844
  'Data Table: 41FCDC
  loc_9F372C: LitI2_Byte &HFF
  loc_9F372E: FStI2 var_86
  loc_9F3731: LitI4 1
  loc_9F3736: FLdRfVar var_8C
  loc_9F3739: FLdRfVar var_94
  loc_9F373C: ILdPr
  loc_9F373F:  = Me.Text
  loc_9F3744: ILdRf var_94
  loc_9F3747: FnLenStr
  loc_9F3748: FFree1Str var_94
  loc_9F374B: ForI4 var_9C
  loc_9F3751: FLdRfVar var_94
  loc_9F3754: ILdPr
  loc_9F3757:  = Me.Text
  loc_9F375C: LitVarI2 var_CC, 1
  loc_9F3761: ILdRf var_8C
  loc_9F3764: FLdZeroAd var_94
  loc_9F3767: CVarStr var_AC
  loc_9F376A: FLdRfVar var_DC
  loc_9F376D: ImpAdCallFPR4  = Mid(, , )
  loc_9F3772: FLdRfVar var_DC
  loc_9F3775: CStrVarTmp
  loc_9F3776: FLdRfVar var_8E
  loc_9F3779: StFixedStrFree
  loc_9F377D: FFreeVar var_AC = "": var_CC = ""
  loc_9F3786: FLdRfVar var_8E
  loc_9F3789: LdFixedStr
  loc_9F378C: FStStrNoPop var_94
  loc_9F378F: LitStr "0"
  loc_9F3792: NeStr
  loc_9F3794: FLdRfVar var_8E
  loc_9F3797: LdFixedStr
  loc_9F379A: FStStrNoPop var_E0
  loc_9F379D: LitStr "1"
  loc_9F37A0: NeStr
  loc_9F37A2: AndI4
  loc_9F37A3: FLdRfVar var_8E
  loc_9F37A6: LdFixedStr
  loc_9F37A9: FStStrNoPop var_E4
  loc_9F37AC: LitStr "2"
  loc_9F37AF: NeStr
  loc_9F37B1: AndI4
  loc_9F37B2: FLdRfVar var_8E
  loc_9F37B5: LdFixedStr
  loc_9F37B8: FStStrNoPop var_E8
  loc_9F37BB: LitStr "3"
  loc_9F37BE: NeStr
  loc_9F37C0: AndI4
  loc_9F37C1: FLdRfVar var_8E
  loc_9F37C4: LdFixedStr
  loc_9F37C7: FStStrNoPop var_EC
  loc_9F37CA: LitStr "4"
  loc_9F37CD: NeStr
  loc_9F37CF: AndI4
  loc_9F37D0: FLdRfVar var_8E
  loc_9F37D3: LdFixedStr
  loc_9F37D6: FStStrNoPop var_F0
  loc_9F37D9: LitStr "5"
  loc_9F37DC: NeStr
  loc_9F37DE: AndI4
  loc_9F37DF: FLdRfVar var_8E
  loc_9F37E2: LdFixedStr
  loc_9F37E5: FStStrNoPop var_F4
  loc_9F37E8: LitStr "6"
  loc_9F37EB: NeStr
  loc_9F37ED: AndI4
  loc_9F37EE: FLdRfVar var_8E
  loc_9F37F1: LdFixedStr
  loc_9F37F4: FStStrNoPop var_F8
  loc_9F37F7: LitStr "7"
  loc_9F37FA: NeStr
  loc_9F37FC: AndI4
  loc_9F37FD: FLdRfVar var_8E
  loc_9F3800: LdFixedStr
  loc_9F3803: FStStrNoPop var_FC
  loc_9F3806: LitStr "8"
  loc_9F3809: NeStr
  loc_9F380B: AndI4
  loc_9F380C: FLdRfVar var_8E
  loc_9F380F: LdFixedStr
  loc_9F3812: FStStrNoPop var_100
  loc_9F3815: LitStr "9"
  loc_9F3818: NeStr
  loc_9F381A: AndI4
  loc_9F381B: FFreeStr var_94 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_9F3832: BranchF loc_9F383B
  loc_9F3835: LitI2_Byte 0
  loc_9F3837: FStI2 var_86
  loc_9F383A: ExitProcI2
  loc_9F383B: FLdRfVar var_8C
  loc_9F383E: NextI4 var_9C, loc_9F3751
  loc_9F3843: ExitProcI2
End Function

Private Function Proc_266_40_A1E128() 'A1E128
  'Data Table: 41FCDC
  loc_A1DFA8: LitI2_Byte &HFF
  loc_A1DFAA: FStI2 var_86
  loc_A1DFAD: ILdPr
  loc_A1DFB0: LateIdLdVar var_A4 DispID_22 0
  loc_A1DFB7: PopAd
  loc_A1DFB9: LitI4 0
  loc_A1DFBE: LitI4 -1
  loc_A1DFC3: LitI4 1
  loc_A1DFC8: LitStr vbNullString
  loc_A1DFCB: LitStr "."
  loc_A1DFCE: FLdRfVar var_A4
  loc_A1DFD1: CStrVarTmp
  loc_A1DFD2: FStStrNoPop var_A8
  loc_A1DFD5: ImpAdCallI2 Replace(, , , , , )
  loc_A1DFDA: CVarStr var_B8
  loc_A1DFDD: FLdRfVar var_C8
  loc_A1DFE0: ImpAdCallFPR4  = Trim()
  loc_A1DFE5: FLdRfVar var_C8
  loc_A1DFE8: CStrVarTmp
  loc_A1DFE9: FStStr var_94
  loc_A1DFEC: FFree1Str var_A8
  loc_A1DFEF: FFreeVar var_A4 = "": var_B8 = ""
  loc_A1DFF8: LitI4 0
  loc_A1DFFD: LitI4 -1
  loc_A1E002: LitI4 1
  loc_A1E007: LitStr vbNullString
  loc_A1E00A: LitStr "_"
  loc_A1E00D: ILdRf var_94
  loc_A1E010: ImpAdCallI2 Replace(, , , , , )
  loc_A1E015: CVarStr var_A4
  loc_A1E018: FLdRfVar var_B8
  loc_A1E01B: ImpAdCallFPR4  = Trim()
  loc_A1E020: FLdRfVar var_B8
  loc_A1E023: CStrVarTmp
  loc_A1E024: FStStr var_94
  loc_A1E027: FFreeVar var_A4 = ""
  loc_A1E02E: LitI4 1
  loc_A1E033: FLdRfVar var_8C
  loc_A1E036: ILdRf var_94
  loc_A1E039: FnLenStr
  loc_A1E03A: ForI4 var_D0
  loc_A1E040: LitVarI2 var_A4, 1
  loc_A1E045: ILdRf var_8C
  loc_A1E048: FLdRfVar var_94
  loc_A1E04B: CVarRef
  loc_A1E050: FLdRfVar var_B8
  loc_A1E053: ImpAdCallFPR4  = Mid(, , )
  loc_A1E058: FLdRfVar var_B8
  loc_A1E05B: CStrVarTmp
  loc_A1E05C: FLdRfVar var_8E
  loc_A1E05F: StFixedStrFree
  loc_A1E063: FFreeVar var_A4 = ""
  loc_A1E06A: FLdRfVar var_8E
  loc_A1E06D: LdFixedStr
  loc_A1E070: FStStrNoPop var_A8
  loc_A1E073: LitStr "0"
  loc_A1E076: NeStr
  loc_A1E078: FLdRfVar var_8E
  loc_A1E07B: LdFixedStr
  loc_A1E07E: FStStrNoPop var_F4
  loc_A1E081: LitStr "1"
  loc_A1E084: NeStr
  loc_A1E086: AndI4
  loc_A1E087: FLdRfVar var_8E
  loc_A1E08A: LdFixedStr
  loc_A1E08D: FStStrNoPop var_F8
  loc_A1E090: LitStr "2"
  loc_A1E093: NeStr
  loc_A1E095: AndI4
  loc_A1E096: FLdRfVar var_8E
  loc_A1E099: LdFixedStr
  loc_A1E09C: FStStrNoPop var_FC
  loc_A1E09F: LitStr "3"
  loc_A1E0A2: NeStr
  loc_A1E0A4: AndI4
  loc_A1E0A5: FLdRfVar var_8E
  loc_A1E0A8: LdFixedStr
  loc_A1E0AB: FStStrNoPop var_100
  loc_A1E0AE: LitStr "4"
  loc_A1E0B1: NeStr
  loc_A1E0B3: AndI4
  loc_A1E0B4: FLdRfVar var_8E
  loc_A1E0B7: LdFixedStr
  loc_A1E0BA: FStStrNoPop var_104
  loc_A1E0BD: LitStr "5"
  loc_A1E0C0: NeStr
  loc_A1E0C2: AndI4
  loc_A1E0C3: FLdRfVar var_8E
  loc_A1E0C6: LdFixedStr
  loc_A1E0C9: FStStrNoPop var_108
  loc_A1E0CC: LitStr "6"
  loc_A1E0CF: NeStr
  loc_A1E0D1: AndI4
  loc_A1E0D2: FLdRfVar var_8E
  loc_A1E0D5: LdFixedStr
  loc_A1E0D8: FStStrNoPop var_10C
  loc_A1E0DB: LitStr "7"
  loc_A1E0DE: NeStr
  loc_A1E0E0: AndI4
  loc_A1E0E1: FLdRfVar var_8E
  loc_A1E0E4: LdFixedStr
  loc_A1E0E7: FStStrNoPop var_110
  loc_A1E0EA: LitStr "8"
  loc_A1E0ED: NeStr
  loc_A1E0EF: AndI4
  loc_A1E0F0: FLdRfVar var_8E
  loc_A1E0F3: LdFixedStr
  loc_A1E0F6: FStStrNoPop var_114
  loc_A1E0F9: LitStr "9"
  loc_A1E0FC: NeStr
  loc_A1E0FE: AndI4
  loc_A1E0FF: FFreeStr var_A8 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_A1E116: BranchF loc_A1E11F
  loc_A1E119: LitI2_Byte 0
  loc_A1E11B: FStI2 var_86
  loc_A1E11E: ExitProcI2
  loc_A1E11F: FLdRfVar var_8C
  loc_A1E122: NextI4 var_D0, loc_A1E040
  loc_A1E127: ExitProcI2
End Function

Private Function Proc_266_41_9A5518(arg_C, arg_10, arg_14, arg_18) '9A5518
  'Data Table: 41FCDC
  loc_9A5498: ILdRf arg_C
  loc_9A549B: FStStrCopy var_8C
  loc_9A549E: ILdRf arg_14
  loc_9A54A1: FStStrCopy var_90
  loc_9A54A4: LitI2_Byte 0
  loc_9A54A6: PopTmpLdAd2 var_96
  loc_9A54A9: LitI2_Byte 0
  loc_9A54AB: PopTmpLdAd2 var_94
  loc_9A54AE: LitI2_Byte 0
  loc_9A54B0: PopTmpLdAd2 var_92
  loc_9A54B3: ILdRf var_8C
  loc_9A54B6: LitStr "Usuario"
  loc_9A54B9: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9A54BE: FStStr var_88
  loc_9A54C1: ILdRf var_88
  loc_9A54C4: LitStr vbNullString
  loc_9A54C7: NeStr
  loc_9A54C9: BranchF loc_9A54CD
  loc_9A54CC: ExitProc
  loc_9A54CD: ILdRf arg_18
  loc_9A54D0: ILdRf var_8C
  loc_9A54D3: ImpAdCallI2  = Proc_259_38_B44564()
  loc_9A54D8: BranchF loc_9A5505
  loc_9A54DB: FLdI2 arg_10
  loc_9A54DE: NotI4
  loc_9A54DF: BranchF loc_9A5502
  loc_9A54E2: FLdRfVar var_9C
  loc_9A54E5: ILdPr
  loc_9A54E8: from_stack_1v = tblusuario.BajaUsuaGet()
  loc_9A54ED: ILdRf var_9C
  loc_9A54F0: LitStr vbNullString
  loc_9A54F3: NeStr
  loc_9A54F5: FFree1Str var_9C
  loc_9A54F8: BranchF loc_9A5502
  loc_9A54FB: LitStr "El Usuario esta ANULADO. Verifique..."
  loc_9A54FE: FStStrCopy var_88
  loc_9A5501: ExitProc
  loc_9A5502: Branch loc_9A5516
  loc_9A5505: FLdRfVar var_9C
  loc_9A5508: ILdPr
  loc_9A550B: from_stack_1v = tblusuario.MsgErrorGet()
  loc_9A5510: FLdZeroAd var_9C
  loc_9A5513: FStStr var_88
  loc_9A5516: ExitProc
End Function

Private Function Proc_266_42_9CF288(arg_C) '9CF288
  'Data Table: 41FCDC
  loc_9CF1B4: LitStr "SELECT FeproPaco"
  loc_9CF1B7: LitStr " FROM contpres.paraconta"
  loc_9CF1BA: ConcatStr
  loc_9CF1BB: FStStrNoPop var_98
  loc_9CF1BE: LitStr " WHERE PeriInfo = '"
  loc_9CF1C1: ConcatStr
  loc_9CF1C2: FStStrNoPop var_9C
  loc_9CF1C5: FLdI2 arg_C
  loc_9CF1C8: CStrUI1
  loc_9CF1CA: FStStrNoPop var_A0
  loc_9CF1CD: ConcatStr
  loc_9CF1CE: FStStrNoPop var_A4
  loc_9CF1D1: LitStr "';"
  loc_9CF1D4: ConcatStr
  loc_9CF1D5: FStStrNoPop var_A8
  loc_9CF1D8: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_9CF1DD: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9CF1EA: FLdRfVar var_AC
  loc_9CF1ED: FMemLdPr
  loc_9CF1F2:  = Me.RecordCount
  loc_9CF1F7: ILdRf var_AC
  loc_9CF1FA: LitI4 0
  loc_9CF1FF: GtI4
  loc_9CF200: BranchF loc_9CF275
  loc_9CF203: FLdRfVar var_C4
  loc_9CF206: LitVarStr var_C0, "FeproPaco"
  loc_9CF20B: PopAdLdVar
  loc_9CF20C: FLdRfVar var_B0
  loc_9CF20F: FMemLdPr
  loc_9CF214:  = Me.Fields
  loc_9CF219: FLdPr var_B0
  loc_9CF21C: from_stack_2 = Me.Item(from_stack_1)
  loc_9CF221: FLdZeroAd var_C4
  loc_9CF224: CVarAd
  loc_9CF228: ImpAdCallI2 IsNull()
  loc_9CF22D: NotI4
  loc_9CF22E: FFree1Ad var_B0
  loc_9CF231: FFree1Var var_D4 = ""
  loc_9CF234: BranchF loc_9CF272
  loc_9CF237: FLdRfVar var_D4
  loc_9CF23A: FLdRfVar var_C4
  loc_9CF23D: LitVarStr var_C0, "FeproPaco"
  loc_9CF242: PopAdLdVar
  loc_9CF243: FLdRfVar var_B0
  loc_9CF246: FMemLdPr
  loc_9CF24B:  = Me.Fields
  loc_9CF250: FLdPr var_B0
  loc_9CF253: from_stack_2 = Me.Item(from_stack_1)
  loc_9CF258: FLdPr var_C4
  loc_9CF25B:  = Me.Value
  loc_9CF260: FLdRfVar var_D4
  loc_9CF263: FnCDateVar
  loc_9CF265: FStFPR8 var_94
  loc_9CF268: FFreeAd var_B0 = ""
  loc_9CF26F: FFree1Var var_D4 = ""
  loc_9CF272: Branch loc_9CF27E
  loc_9CF275: LitVar_NULL
  loc_9CF279: FnCDateVar
  loc_9CF27B: FStFPR8 var_8C
  loc_9CF27E: FLdFPR8 var_94
  loc_9CF281: FStFPR8 var_8C
  loc_9CF284: ExitProcR8
End Function
