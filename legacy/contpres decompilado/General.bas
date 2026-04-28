
Private Function Proc_261_0_9A6E64(arg_C) '9A6E64
  'Data Table: 42C928
  loc_9A6DD4: ILdI4 arg_C
  loc_9A6DD7: FStStrCopy var_8C
  loc_9A6DDA: ILdRf var_8C
  loc_9A6DDD: LitStr "Mayor o Igual que"
  loc_9A6DE0: EqStr
  loc_9A6DE2: BranchF loc_9A6DEE
  loc_9A6DE5: LitStr ">="
  loc_9A6DE8: FStStrCopy var_88
  loc_9A6DEB: Branch loc_9A6E63
  loc_9A6DEE: ILdRf var_8C
  loc_9A6DF1: LitStr "Mayor que"
  loc_9A6DF4: EqStr
  loc_9A6DF6: BranchF loc_9A6E02
  loc_9A6DF9: LitStr ">"
  loc_9A6DFC: FStStrCopy var_88
  loc_9A6DFF: Branch loc_9A6E63
  loc_9A6E02: ILdRf var_8C
  loc_9A6E05: LitStr "Igual a"
  loc_9A6E08: EqStr
  loc_9A6E0A: BranchF loc_9A6E16
  loc_9A6E0D: LitStr "="
  loc_9A6E10: FStStrCopy var_88
  loc_9A6E13: Branch loc_9A6E63
  loc_9A6E16: ILdRf var_8C
  loc_9A6E19: LitStr "Distinto a"
  loc_9A6E1C: EqStr
  loc_9A6E1E: BranchF loc_9A6E2A
  loc_9A6E21: LitStr "<>"
  loc_9A6E24: FStStrCopy var_88
  loc_9A6E27: Branch loc_9A6E63
  loc_9A6E2A: ILdRf var_8C
  loc_9A6E2D: LitStr "Contiene"
  loc_9A6E30: EqStr
  loc_9A6E32: BranchF loc_9A6E3E
  loc_9A6E35: LitStr "LIKE"
  loc_9A6E38: FStStrCopy var_88
  loc_9A6E3B: Branch loc_9A6E63
  loc_9A6E3E: ILdRf var_8C
  loc_9A6E41: LitStr "Menor que"
  loc_9A6E44: EqStr
  loc_9A6E46: BranchF loc_9A6E52
  loc_9A6E49: LitStr "<"
  loc_9A6E4C: FStStrCopy var_88
  loc_9A6E4F: Branch loc_9A6E63
  loc_9A6E52: ILdRf var_8C
  loc_9A6E55: LitStr "Menor o Igual que"
  loc_9A6E58: EqStr
  loc_9A6E5A: BranchF loc_9A6E63
  loc_9A6E5D: LitStr "<="
  loc_9A6E60: FStStrCopy var_88
  loc_9A6E63: ExitProc
End Function

Private Function Proc_261_1_AC96D8() 'AC96D8
  'Data Table: 42C928
  loc_AC90CC: On Error Resume Next
  loc_AC90D1: FLdRfVar var_8C
  loc_AC90D4: ILdPr
  loc_AC90D7:  = Form.Tag
  loc_AC90DC: FLdRfVar var_90
  loc_AC90DF: ILdPr
  loc_AC90E2:  = Form.Tag
  loc_AC90E7: FLdRfVar var_94
  loc_AC90EA: ILdPr
  loc_AC90ED:  = Form.Name
  loc_AC90F2: LitVar_Missing var_B4
  loc_AC90F5: LitI4 4
  loc_AC90FA: ILdRf var_94
  loc_AC90FD: ImpAdCallI2 Mid$(, , )
  loc_AC9102: CVarStr var_E4
  loc_AC9105: FLdZeroAd var_90
  loc_AC9108: CVarStr var_D4
  loc_AC910B: ILdRf var_8C
  loc_AC910E: LitStr vbNullString
  loc_AC9111: NeStr
  loc_AC9113: CVarBoolI2 var_C4
  loc_AC9117: FLdRfVar var_F4
  loc_AC911A: ImpAdCallFPR4  = IIf(, , )
  loc_AC911F: FLdRfVar var_88
  loc_AC9122: NewIfNullRf
  loc_AC9126: FLdRfVar var_F4
  loc_AC9129: CStrVarVal var_F8
  loc_AC912D: LitI2_Byte 1
  loc_AC912F: FMemLdR4 arg_8(12)
  loc_AC9134: ImpAdCallI2  = Proc_259_4_A691B4()
  loc_AC9139: FFreeStr var_8C = "": var_94 = ""
  loc_AC9142: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_E4 = ""
  loc_AC914F: BranchF loc_AC9407
  loc_AC9154: ILdPr
  loc_AC9157: LateMemLdVar
  loc_AC915C: FStVarZero
  loc_AC9160: FLdRfVar var_108
  loc_AC9163: FStR4 var_10C
  loc_AC9168: LitVar_FALSE
  loc_AC916C: PopAdLdVar
  loc_AC916D: LitVarI2 var_A4, 12
  loc_AC9172: PopAdLdVar
  loc_AC9173: ILdRf var_10C
  loc_AC9176: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC917C: VarLateMemCallLdRfVar
  loc_AC9184: VarLateMemSt .Visible
  loc_AC9188: FFreeVar var_B4 = ""
  loc_AC9191: FLdRfVar var_8C
  loc_AC9194: FLdRfVar var_88
  loc_AC9197: NewIfNullPr tblacceso
  loc_AC919A: from_stack_1v = tblacceso.AltaAcceGet()
  loc_AC919F: FLdZeroAd var_8C
  loc_AC91A2: CVarStr var_D4
  loc_AC91A5: PopAdLdVar
  loc_AC91A6: LitVarI2 var_A4, 1
  loc_AC91AB: PopAdLdVar
  loc_AC91AC: ILdRf var_10C
  loc_AC91AF: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC91B5: VarLateMemCallLdRfVar
  loc_AC91BD: VarLateMemSt .Enabled
  loc_AC91C1: FFreeVar var_B4 = "": var_D4 = ""
  loc_AC91CC: FLdRfVar var_8C
  loc_AC91CF: FLdRfVar var_88
  loc_AC91D2: NewIfNullPr tblacceso
  loc_AC91D5: from_stack_1v = tblacceso.ModiAcceGet()
  loc_AC91DA: FLdZeroAd var_8C
  loc_AC91DD: CVarStr var_D4
  loc_AC91E0: PopAdLdVar
  loc_AC91E1: LitVarI2 var_A4, 2
  loc_AC91E6: PopAdLdVar
  loc_AC91E7: ILdRf var_10C
  loc_AC91EA: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC91F0: VarLateMemCallLdRfVar
  loc_AC91F8: VarLateMemSt .Enabled
  loc_AC91FC: FFreeVar var_B4 = "": var_D4 = ""
  loc_AC9207: FLdRfVar var_8C
  loc_AC920A: FLdRfVar var_88
  loc_AC920D: NewIfNullPr tblacceso
  loc_AC9210: from_stack_1v = tblacceso.BajaAcceGet()
  loc_AC9215: FLdZeroAd var_8C
  loc_AC9218: CVarStr var_D4
  loc_AC921B: PopAdLdVar
  loc_AC921C: LitVarI2 var_A4, 3
  loc_AC9221: PopAdLdVar
  loc_AC9222: ILdRf var_10C
  loc_AC9225: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC922B: VarLateMemCallLdRfVar
  loc_AC9233: VarLateMemSt .Enabled
  loc_AC9237: FFreeVar var_B4 = "": var_D4 = ""
  loc_AC9242: LitVar_FALSE
  loc_AC9246: PopAdLdVar
  loc_AC9247: LitVarI2 var_A4, 4
  loc_AC924C: PopAdLdVar
  loc_AC924D: ILdRf var_10C
  loc_AC9250: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC9256: VarLateMemCallLdRfVar
  loc_AC925E: VarLateMemSt .Enabled
  loc_AC9262: FFreeVar var_B4 = ""
  loc_AC926B: LitVar_FALSE
  loc_AC926F: PopAdLdVar
  loc_AC9270: LitVarI2 var_A4, 5
  loc_AC9275: PopAdLdVar
  loc_AC9276: ILdRf var_10C
  loc_AC9279: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC927F: VarLateMemCallLdRfVar
  loc_AC9287: VarLateMemSt .Enabled
  loc_AC928B: FFreeVar var_B4 = ""
  loc_AC9294: LitVar_TRUE var_11C
  loc_AC9297: PopAdLdVar
  loc_AC9298: LitVarI2 var_A4, 7
  loc_AC929D: PopAdLdVar
  loc_AC929E: ILdRf var_10C
  loc_AC92A1: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC92A7: VarLateMemCallLdRfVar
  loc_AC92AF: VarLateMemSt .Enabled
  loc_AC92B3: FFreeVar var_B4 = ""
  loc_AC92BC: LitVar_TRUE var_11C
  loc_AC92BF: PopAdLdVar
  loc_AC92C0: LitVarI2 var_A4, 8
  loc_AC92C5: PopAdLdVar
  loc_AC92C6: ILdRf var_10C
  loc_AC92C9: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC92CF: VarLateMemCallLdRfVar
  loc_AC92D7: VarLateMemSt .Enabled
  loc_AC92DB: FFreeVar var_B4 = ""
  loc_AC92E4: LitVar_TRUE var_11C
  loc_AC92E7: PopAdLdVar
  loc_AC92E8: LitVarI2 var_A4, 9
  loc_AC92ED: PopAdLdVar
  loc_AC92EE: ILdRf var_10C
  loc_AC92F1: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC92F7: VarLateMemCallLdRfVar
  loc_AC92FF: VarLateMemSt .Enabled
  loc_AC9303: FFreeVar var_B4 = ""
  loc_AC930C: LitVar_TRUE var_11C
  loc_AC930F: PopAdLdVar
  loc_AC9310: LitVarI2 var_A4, 10
  loc_AC9315: PopAdLdVar
  loc_AC9316: ILdRf var_10C
  loc_AC9319: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC931F: VarLateMemCallLdRfVar
  loc_AC9327: VarLateMemSt .Enabled
  loc_AC932B: FFreeVar var_B4 = ""
  loc_AC9334: LitVar_TRUE var_11C
  loc_AC9337: PopAdLdVar
  loc_AC9338: LitVarI2 var_A4, 12
  loc_AC933D: PopAdLdVar
  loc_AC933E: ILdRf var_10C
  loc_AC9341: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC9347: VarLateMemCallLdRfVar
  loc_AC934F: VarLateMemSt .Enabled
  loc_AC9353: FFreeVar var_B4 = ""
  loc_AC935C: LitVar_TRUE var_11C
  loc_AC935F: PopAdLdVar
  loc_AC9360: LitVarI2 var_A4, 13
  loc_AC9365: PopAdLdVar
  loc_AC9366: ILdRf var_10C
  loc_AC9369: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC936F: VarLateMemCallLdRfVar
  loc_AC9377: VarLateMemSt .Enabled
  loc_AC937B: FFreeVar var_B4 = ""
  loc_AC9384: LitVar_TRUE var_11C
  loc_AC9387: PopAdLdVar
  loc_AC9388: LitVarI2 var_A4, 14
  loc_AC938D: PopAdLdVar
  loc_AC938E: ILdRf var_10C
  loc_AC9391: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC9397: VarLateMemCallLdRfVar
  loc_AC939F: VarLateMemSt .Enabled
  loc_AC93A3: FFreeVar var_B4 = ""
  loc_AC93AC: LitVar_TRUE var_11C
  loc_AC93AF: PopAdLdVar
  loc_AC93B0: LitVarI2 var_A4, 15
  loc_AC93B5: PopAdLdVar
  loc_AC93B6: ILdRf var_10C
  loc_AC93B9: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC93BF: VarLateMemCallLdRfVar
  loc_AC93C7: VarLateMemSt .Enabled
  loc_AC93CB: FFreeVar var_B4 = ""
  loc_AC93D4: LitVar_TRUE var_11C
  loc_AC93D7: PopAdLdVar
  loc_AC93D8: LitVarI2 var_A4, 17
  loc_AC93DD: PopAdLdVar
  loc_AC93DE: ILdRf var_10C
  loc_AC93E1: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC93E7: VarLateMemCallLdRfVar
  loc_AC93EF: VarLateMemSt .Enabled
  loc_AC93F3: FFreeVar var_B4 = ""
  loc_AC93FC: LitI4 0
  loc_AC9401: FStR4 var_10C
  loc_AC9404: Branch loc_AC967C
  loc_AC940B: LitI4 0
  loc_AC9410: FLdRfVar var_8C
  loc_AC9413: FLdRfVar var_88
  loc_AC9416: NewIfNullPr tblacceso
  loc_AC9419: from_stack_1v = tblacceso.MsgErrorGet()
  loc_AC941E: ILdRf var_8C
  loc_AC9421: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AC9426: FFree1Str var_8C
  loc_AC942B: ILdPr
  loc_AC942E: LateMemLdVar
  loc_AC9433: FStVarZero
  loc_AC9437: FLdRfVar var_13C
  loc_AC943A: FStR4 var_140
  loc_AC943F: LitVar_FALSE
  loc_AC9443: PopAdLdVar
  loc_AC9444: LitVarI2 var_A4, 1
  loc_AC9449: PopAdLdVar
  loc_AC944A: ILdRf var_140
  loc_AC944D: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC9453: VarLateMemCallLdRfVar
  loc_AC945B: VarLateMemSt .Enabled
  loc_AC945F: FFreeVar var_B4 = ""
  loc_AC9468: LitVar_FALSE
  loc_AC946C: PopAdLdVar
  loc_AC946D: LitVarI2 var_A4, 2
  loc_AC9472: PopAdLdVar
  loc_AC9473: ILdRf var_140
  loc_AC9476: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC947C: VarLateMemCallLdRfVar
  loc_AC9484: VarLateMemSt .Enabled
  loc_AC9488: FFreeVar var_B4 = ""
  loc_AC9491: LitVar_FALSE
  loc_AC9495: PopAdLdVar
  loc_AC9496: LitVarI2 var_A4, 3
  loc_AC949B: PopAdLdVar
  loc_AC949C: ILdRf var_140
  loc_AC949F: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC94A5: VarLateMemCallLdRfVar
  loc_AC94AD: VarLateMemSt .Enabled
  loc_AC94B1: FFreeVar var_B4 = ""
  loc_AC94BA: LitVar_FALSE
  loc_AC94BE: PopAdLdVar
  loc_AC94BF: LitVarI2 var_A4, 4
  loc_AC94C4: PopAdLdVar
  loc_AC94C5: ILdRf var_140
  loc_AC94C8: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC94CE: VarLateMemCallLdRfVar
  loc_AC94D6: VarLateMemSt .Enabled
  loc_AC94DA: FFreeVar var_B4 = ""
  loc_AC94E3: LitVar_FALSE
  loc_AC94E7: PopAdLdVar
  loc_AC94E8: LitVarI2 var_A4, 5
  loc_AC94ED: PopAdLdVar
  loc_AC94EE: ILdRf var_140
  loc_AC94F1: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC94F7: VarLateMemCallLdRfVar
  loc_AC94FF: VarLateMemSt .Enabled
  loc_AC9503: FFreeVar var_B4 = ""
  loc_AC950C: LitVar_TRUE var_11C
  loc_AC950F: PopAdLdVar
  loc_AC9510: LitVarI2 var_A4, 7
  loc_AC9515: PopAdLdVar
  loc_AC9516: ILdRf var_140
  loc_AC9519: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC951F: VarLateMemCallLdRfVar
  loc_AC9527: VarLateMemSt .Enabled
  loc_AC952B: FFreeVar var_B4 = ""
  loc_AC9534: LitVar_TRUE var_11C
  loc_AC9537: PopAdLdVar
  loc_AC9538: LitVarI2 var_A4, 8
  loc_AC953D: PopAdLdVar
  loc_AC953E: ILdRf var_140
  loc_AC9541: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC9547: VarLateMemCallLdRfVar
  loc_AC954F: VarLateMemSt .Enabled
  loc_AC9553: FFreeVar var_B4 = ""
  loc_AC955C: LitVar_TRUE var_11C
  loc_AC955F: PopAdLdVar
  loc_AC9560: LitVarI2 var_A4, 9
  loc_AC9565: PopAdLdVar
  loc_AC9566: ILdRf var_140
  loc_AC9569: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC956F: VarLateMemCallLdRfVar
  loc_AC9577: VarLateMemSt .Enabled
  loc_AC957B: FFreeVar var_B4 = ""
  loc_AC9584: LitVar_TRUE var_11C
  loc_AC9587: PopAdLdVar
  loc_AC9588: LitVarI2 var_A4, 10
  loc_AC958D: PopAdLdVar
  loc_AC958E: ILdRf var_140
  loc_AC9591: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC9597: VarLateMemCallLdRfVar
  loc_AC959F: VarLateMemSt .Enabled
  loc_AC95A3: FFreeVar var_B4 = ""
  loc_AC95AC: LitVar_TRUE var_11C
  loc_AC95AF: PopAdLdVar
  loc_AC95B0: LitVarI2 var_A4, 12
  loc_AC95B5: PopAdLdVar
  loc_AC95B6: ILdRf var_140
  loc_AC95B9: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC95BF: VarLateMemCallLdRfVar
  loc_AC95C7: VarLateMemSt .Enabled
  loc_AC95CB: FFreeVar var_B4 = ""
  loc_AC95D4: LitVar_TRUE var_11C
  loc_AC95D7: PopAdLdVar
  loc_AC95D8: LitVarI2 var_A4, 13
  loc_AC95DD: PopAdLdVar
  loc_AC95DE: ILdRf var_140
  loc_AC95E1: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC95E7: VarLateMemCallLdRfVar
  loc_AC95EF: VarLateMemSt .Enabled
  loc_AC95F3: FFreeVar var_B4 = ""
  loc_AC95FC: LitVar_TRUE var_11C
  loc_AC95FF: PopAdLdVar
  loc_AC9600: LitVarI2 var_A4, 14
  loc_AC9605: PopAdLdVar
  loc_AC9606: ILdRf var_140
  loc_AC9609: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC960F: VarLateMemCallLdRfVar
  loc_AC9617: VarLateMemSt .Enabled
  loc_AC961B: FFreeVar var_B4 = ""
  loc_AC9624: LitVar_TRUE var_11C
  loc_AC9627: PopAdLdVar
  loc_AC9628: LitVarI2 var_A4, 15
  loc_AC962D: PopAdLdVar
  loc_AC962E: ILdRf var_140
  loc_AC9631: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC9637: VarLateMemCallLdRfVar
  loc_AC963F: VarLateMemSt .Enabled
  loc_AC9643: FFreeVar var_B4 = ""
  loc_AC964C: LitVar_TRUE var_11C
  loc_AC964F: PopAdLdVar
  loc_AC9650: LitVarI2 var_A4, 17
  loc_AC9655: PopAdLdVar
  loc_AC9656: ILdRf var_140
  loc_AC9659: VarLateMemLdRfVar var_B4, .Buttons
  loc_AC965F: VarLateMemCallLdRfVar
  loc_AC9667: VarLateMemSt .Enabled
  loc_AC966B: FFreeVar var_B4 = ""
  loc_AC9674: LitI4 0
  loc_AC9679: FStR4 var_140
  loc_AC9680: LitVar_FALSE
  loc_AC9684: PopAdLdVar
  loc_AC9685: ILdPr
  loc_AC9688: LateMemLdVar
  loc_AC968D: VarLateMemSt .Enabled
  loc_AC9691: FFree1Var var_B4 = ""
  loc_AC9696: LitVar_TRUE var_A4
  loc_AC9699: PopAdLdVar
  loc_AC969A: ILdPr
  loc_AC969D: LateMemLdVar
  loc_AC96A2: VarLateMemSt .Enabled
  loc_AC96A6: FFree1Var var_B4 = ""
  loc_AC96AB: LitVar_TRUE var_A4
  loc_AC96AE: PopAdLdVar
  loc_AC96AF: ILdPr
  loc_AC96B2: LateMemLdVar
  loc_AC96B7: VarLateMemSt .Enabled
  loc_AC96BB: FFree1Var var_B4 = ""
  loc_AC96C0: LitVar_TRUE var_A4
  loc_AC96C3: PopAdLdVar
  loc_AC96C4: ILdPr
  loc_AC96C7: LateMemLdVar
  loc_AC96CC: VarLateMemSt .Enabled
  loc_AC96D0: FFree1Var var_B4 = ""
  loc_AC96D5: ExitProc
End Function

Private Function Proc_261_2_A55348() 'A55348
  'Data Table: 42C928
  loc_A55068: On Error Resume Next
  loc_A5506D: ILdPr
  loc_A55070: LateMemLdVar
  loc_A55075: FStVarZero
  loc_A55079: FLdRfVar var_A4
  loc_A5507C: FStR4 var_A8
  loc_A55081: LitVar_FALSE
  loc_A55085: PopAdLdVar
  loc_A55086: LitVarI2 var_B8, 12
  loc_A5508B: PopAdLdVar
  loc_A5508C: ILdRf var_A8
  loc_A5508F: VarLateMemLdRfVar var_94, .Buttons
  loc_A55095: VarLateMemCallLdRfVar
  loc_A5509D: VarLateMemSt .Visible
  loc_A550A1: FFreeVar var_94 = ""
  loc_A550AA: LitVar_FALSE
  loc_A550AE: PopAdLdVar
  loc_A550AF: LitVarI2 var_B8, 1
  loc_A550B4: PopAdLdVar
  loc_A550B5: ILdRf var_A8
  loc_A550B8: VarLateMemLdRfVar var_94, .Buttons
  loc_A550BE: VarLateMemCallLdRfVar
  loc_A550C6: VarLateMemSt .Enabled
  loc_A550CA: FFreeVar var_94 = ""
  loc_A550D3: LitVar_FALSE
  loc_A550D7: PopAdLdVar
  loc_A550D8: LitVarI2 var_B8, 2
  loc_A550DD: PopAdLdVar
  loc_A550DE: ILdRf var_A8
  loc_A550E1: VarLateMemLdRfVar var_94, .Buttons
  loc_A550E7: VarLateMemCallLdRfVar
  loc_A550EF: VarLateMemSt .Enabled
  loc_A550F3: FFreeVar var_94 = ""
  loc_A550FC: LitVar_FALSE
  loc_A55100: PopAdLdVar
  loc_A55101: LitVarI2 var_B8, 3
  loc_A55106: PopAdLdVar
  loc_A55107: ILdRf var_A8
  loc_A5510A: VarLateMemLdRfVar var_94, .Buttons
  loc_A55110: VarLateMemCallLdRfVar
  loc_A55118: VarLateMemSt .Enabled
  loc_A5511C: FFreeVar var_94 = ""
  loc_A55125: LitVar_TRUE var_D8
  loc_A55128: PopAdLdVar
  loc_A55129: LitVarI2 var_B8, 4
  loc_A5512E: PopAdLdVar
  loc_A5512F: ILdRf var_A8
  loc_A55132: VarLateMemLdRfVar var_94, .Buttons
  loc_A55138: VarLateMemCallLdRfVar
  loc_A55140: VarLateMemSt .Enabled
  loc_A55144: FFreeVar var_94 = ""
  loc_A5514D: LitVar_TRUE var_D8
  loc_A55150: PopAdLdVar
  loc_A55151: LitVarI2 var_B8, 5
  loc_A55156: PopAdLdVar
  loc_A55157: ILdRf var_A8
  loc_A5515A: VarLateMemLdRfVar var_94, .Buttons
  loc_A55160: VarLateMemCallLdRfVar
  loc_A55168: VarLateMemSt .Enabled
  loc_A5516C: FFreeVar var_94 = ""
  loc_A55175: LitVar_FALSE
  loc_A55179: PopAdLdVar
  loc_A5517A: LitVarI2 var_B8, 7
  loc_A5517F: PopAdLdVar
  loc_A55180: ILdRf var_A8
  loc_A55183: VarLateMemLdRfVar var_94, .Buttons
  loc_A55189: VarLateMemCallLdRfVar
  loc_A55191: VarLateMemSt .Enabled
  loc_A55195: FFreeVar var_94 = ""
  loc_A5519E: LitVar_FALSE
  loc_A551A2: PopAdLdVar
  loc_A551A3: LitVarI2 var_B8, 8
  loc_A551A8: PopAdLdVar
  loc_A551A9: ILdRf var_A8
  loc_A551AC: VarLateMemLdRfVar var_94, .Buttons
  loc_A551B2: VarLateMemCallLdRfVar
  loc_A551BA: VarLateMemSt .Enabled
  loc_A551BE: FFreeVar var_94 = ""
  loc_A551C7: LitVar_FALSE
  loc_A551CB: PopAdLdVar
  loc_A551CC: LitVarI2 var_B8, 9
  loc_A551D1: PopAdLdVar
  loc_A551D2: ILdRf var_A8
  loc_A551D5: VarLateMemLdRfVar var_94, .Buttons
  loc_A551DB: VarLateMemCallLdRfVar
  loc_A551E3: VarLateMemSt .Enabled
  loc_A551E7: FFreeVar var_94 = ""
  loc_A551F0: LitVar_FALSE
  loc_A551F4: PopAdLdVar
  loc_A551F5: LitVarI2 var_B8, 10
  loc_A551FA: PopAdLdVar
  loc_A551FB: ILdRf var_A8
  loc_A551FE: VarLateMemLdRfVar var_94, .Buttons
  loc_A55204: VarLateMemCallLdRfVar
  loc_A5520C: VarLateMemSt .Enabled
  loc_A55210: FFreeVar var_94 = ""
  loc_A55219: LitVar_FALSE
  loc_A5521D: PopAdLdVar
  loc_A5521E: LitVarI2 var_B8, 12
  loc_A55223: PopAdLdVar
  loc_A55224: ILdRf var_A8
  loc_A55227: VarLateMemLdRfVar var_94, .Buttons
  loc_A5522D: VarLateMemCallLdRfVar
  loc_A55235: VarLateMemSt .Enabled
  loc_A55239: FFreeVar var_94 = ""
  loc_A55242: LitVar_FALSE
  loc_A55246: PopAdLdVar
  loc_A55247: LitVarI2 var_B8, 13
  loc_A5524C: PopAdLdVar
  loc_A5524D: ILdRf var_A8
  loc_A55250: VarLateMemLdRfVar var_94, .Buttons
  loc_A55256: VarLateMemCallLdRfVar
  loc_A5525E: VarLateMemSt .Enabled
  loc_A55262: FFreeVar var_94 = ""
  loc_A5526B: LitVar_FALSE
  loc_A5526F: PopAdLdVar
  loc_A55270: LitVarI2 var_B8, 14
  loc_A55275: PopAdLdVar
  loc_A55276: ILdRf var_A8
  loc_A55279: VarLateMemLdRfVar var_94, .Buttons
  loc_A5527F: VarLateMemCallLdRfVar
  loc_A55287: VarLateMemSt .Enabled
  loc_A5528B: FFreeVar var_94 = ""
  loc_A55294: LitVar_TRUE var_D8
  loc_A55297: PopAdLdVar
  loc_A55298: LitVarI2 var_B8, 15
  loc_A5529D: PopAdLdVar
  loc_A5529E: ILdRf var_A8
  loc_A552A1: VarLateMemLdRfVar var_94, .Buttons
  loc_A552A7: VarLateMemCallLdRfVar
  loc_A552AF: VarLateMemSt .Enabled
  loc_A552B3: FFreeVar var_94 = ""
  loc_A552BC: LitVar_FALSE
  loc_A552C0: PopAdLdVar
  loc_A552C1: LitVarI2 var_B8, 17
  loc_A552C6: PopAdLdVar
  loc_A552C7: ILdRf var_A8
  loc_A552CA: VarLateMemLdRfVar var_94, .Buttons
  loc_A552D0: VarLateMemCallLdRfVar
  loc_A552D8: VarLateMemSt .Enabled
  loc_A552DC: FFreeVar var_94 = ""
  loc_A552E5: LitI4 0
  loc_A552EA: FStR4 var_A8
  loc_A552EF: LitVar_TRUE var_B8
  loc_A552F2: PopAdLdVar
  loc_A552F3: ILdPr
  loc_A552F6: LateMemLdVar
  loc_A552FB: VarLateMemSt .Enabled
  loc_A552FF: FFree1Var var_94 = ""
  loc_A55304: LitVar_FALSE
  loc_A55308: PopAdLdVar
  loc_A55309: ILdPr
  loc_A5530C: LateMemLdVar
  loc_A55311: VarLateMemSt .Enabled
  loc_A55315: FFree1Var var_94 = ""
  loc_A5531A: LitVar_FALSE
  loc_A5531E: PopAdLdVar
  loc_A5531F: ILdPr
  loc_A55322: LateMemLdVar
  loc_A55327: VarLateMemSt .Enabled
  loc_A5532B: FFree1Var var_94 = ""
  loc_A55330: LitVar_FALSE
  loc_A55334: PopAdLdVar
  loc_A55335: ILdPr
  loc_A55338: LateMemLdVar
  loc_A5533D: VarLateMemSt .Enabled
  loc_A55341: FFree1Var var_94 = ""
  loc_A55346: ExitProc
End Function

Private Function Proc_261_3_A7CAFC(arg_10) 'A7CAFC
  'Data Table: 42C928
  loc_A7C6FC: FLdI2 arg_10
  loc_A7C6FF: FStI2 var_86
  loc_A7C702: FLdI2 var_86
  loc_A7C705: LitI4 &H70
  loc_A7C70A: CI2I4
  loc_A7C70B: EqI2
  loc_A7C70C: BranchF loc_A7C773
  loc_A7C70F: LitVarI2 var_98, 1
  loc_A7C714: PopAdLdVar
  loc_A7C715: ILdPr
  loc_A7C718: LateMemLdVar
  loc_A7C71D: VarLateMemCallLdRfVar
  loc_A7C725: VarLateMemLdVar var_D8, .Enabled
  loc_A7C72B: CBoolVarNull
  loc_A7C72D: FFreeVar var_B8 = "": var_C8 = ""
  loc_A7C736: BranchF loc_A7C763
  loc_A7C739: LitVarI2 var_98, 1
  loc_A7C73E: PopAdLdVar
  loc_A7C73F: ILdPr
  loc_A7C742: LateMemLdVar
  loc_A7C747: VarLateMemCallLdVar var_C8, .Buttons
  loc_A7C74F: PopAdLdVar
  loc_A7C750: ILdPr
  loc_A7C753: LateMemCall
  loc_A7C759: FFreeVar var_B8 = ""
  loc_A7C760: Branch loc_A7C770
  loc_A7C763: LitI4 0
  loc_A7C768: LitStr "No tiene permiso para AGREGAR un NUEVO registro..."
  loc_A7C76B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A7C770: Branch loc_A7CAF9
  loc_A7C773: FLdI2 var_86
  loc_A7C776: LitI4 &H71
  loc_A7C77B: CI2I4
  loc_A7C77C: EqI2
  loc_A7C77D: BranchF loc_A7C7E4
  loc_A7C780: LitVarI2 var_98, 2
  loc_A7C785: PopAdLdVar
  loc_A7C786: ILdPr
  loc_A7C789: LateMemLdVar
  loc_A7C78E: VarLateMemCallLdRfVar
  loc_A7C796: VarLateMemLdVar var_D8, .Enabled
  loc_A7C79C: CBoolVarNull
  loc_A7C79E: FFreeVar var_B8 = "": var_C8 = ""
  loc_A7C7A7: BranchF loc_A7C7D4
  loc_A7C7AA: LitVarI2 var_98, 2
  loc_A7C7AF: PopAdLdVar
  loc_A7C7B0: ILdPr
  loc_A7C7B3: LateMemLdVar
  loc_A7C7B8: VarLateMemCallLdVar var_C8, .Buttons
  loc_A7C7C0: PopAdLdVar
  loc_A7C7C1: ILdPr
  loc_A7C7C4: LateMemCall
  loc_A7C7CA: FFreeVar var_B8 = ""
  loc_A7C7D1: Branch loc_A7C7E1
  loc_A7C7D4: LitI4 0
  loc_A7C7D9: LitStr "No tiene permiso para MODIFICAR ningún registro..."
  loc_A7C7DC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A7C7E1: Branch loc_A7CAF9
  loc_A7C7E4: FLdI2 var_86
  loc_A7C7E7: LitI4 &H72
  loc_A7C7EC: CI2I4
  loc_A7C7ED: EqI2
  loc_A7C7EE: BranchF loc_A7C855
  loc_A7C7F1: LitVarI2 var_98, 3
  loc_A7C7F6: PopAdLdVar
  loc_A7C7F7: ILdPr
  loc_A7C7FA: LateMemLdVar
  loc_A7C7FF: VarLateMemCallLdRfVar
  loc_A7C807: VarLateMemLdVar var_D8, .Enabled
  loc_A7C80D: CBoolVarNull
  loc_A7C80F: FFreeVar var_B8 = "": var_C8 = ""
  loc_A7C818: BranchF loc_A7C845
  loc_A7C81B: LitVarI2 var_98, 3
  loc_A7C820: PopAdLdVar
  loc_A7C821: ILdPr
  loc_A7C824: LateMemLdVar
  loc_A7C829: VarLateMemCallLdVar var_C8, .Buttons
  loc_A7C831: PopAdLdVar
  loc_A7C832: ILdPr
  loc_A7C835: LateMemCall
  loc_A7C83B: FFreeVar var_B8 = ""
  loc_A7C842: Branch loc_A7C852
  loc_A7C845: LitI4 0
  loc_A7C84A: LitStr "No tiene permiso para ANULAR o ELIMINAR ningún registro..."
  loc_A7C84D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A7C852: Branch loc_A7CAF9
  loc_A7C855: FLdI2 var_86
  loc_A7C858: LitI4 &H73
  loc_A7C85D: CI2I4
  loc_A7C85E: EqI2
  loc_A7C85F: BranchF loc_A7C8B6
  loc_A7C862: LitVarI2 var_98, 4
  loc_A7C867: PopAdLdVar
  loc_A7C868: ILdPr
  loc_A7C86B: LateMemLdVar
  loc_A7C870: VarLateMemCallLdRfVar
  loc_A7C878: VarLateMemLdVar var_D8, .Enabled
  loc_A7C87E: CBoolVarNull
  loc_A7C880: FFreeVar var_B8 = "": var_C8 = ""
  loc_A7C889: BranchF loc_A7C8B3
  loc_A7C88C: LitVarI2 var_98, 4
  loc_A7C891: PopAdLdVar
  loc_A7C892: ILdPr
  loc_A7C895: LateMemLdVar
  loc_A7C89A: VarLateMemCallLdVar var_C8, .Buttons
  loc_A7C8A2: PopAdLdVar
  loc_A7C8A3: ILdPr
  loc_A7C8A6: LateMemCall
  loc_A7C8AC: FFreeVar var_B8 = ""
  loc_A7C8B3: Branch loc_A7CAF9
  loc_A7C8B6: FLdI2 var_86
  loc_A7C8B9: LitI4 &H74
  loc_A7C8BE: CI2I4
  loc_A7C8BF: EqI2
  loc_A7C8C0: BranchF loc_A7C917
  loc_A7C8C3: LitVarI2 var_98, 5
  loc_A7C8C8: PopAdLdVar
  loc_A7C8C9: ILdPr
  loc_A7C8CC: LateMemLdVar
  loc_A7C8D1: VarLateMemCallLdRfVar
  loc_A7C8D9: VarLateMemLdVar var_D8, .Enabled
  loc_A7C8DF: CBoolVarNull
  loc_A7C8E1: FFreeVar var_B8 = "": var_C8 = ""
  loc_A7C8EA: BranchF loc_A7C914
  loc_A7C8ED: LitVarI2 var_98, 5
  loc_A7C8F2: PopAdLdVar
  loc_A7C8F3: ILdPr
  loc_A7C8F6: LateMemLdVar
  loc_A7C8FB: VarLateMemCallLdVar var_C8, .Buttons
  loc_A7C903: PopAdLdVar
  loc_A7C904: ILdPr
  loc_A7C907: LateMemCall
  loc_A7C90D: FFreeVar var_B8 = ""
  loc_A7C914: Branch loc_A7CAF9
  loc_A7C917: FLdI2 var_86
  loc_A7C91A: LitI4 &H75
  loc_A7C91F: CI2I4
  loc_A7C920: EqI2
  loc_A7C921: BranchF loc_A7C978
  loc_A7C924: LitVarI2 var_98, 12
  loc_A7C929: PopAdLdVar
  loc_A7C92A: ILdPr
  loc_A7C92D: LateMemLdVar
  loc_A7C932: VarLateMemCallLdRfVar
  loc_A7C93A: VarLateMemLdVar var_D8, .Enabled
  loc_A7C940: CBoolVarNull
  loc_A7C942: FFreeVar var_B8 = "": var_C8 = ""
  loc_A7C94B: BranchF loc_A7C975
  loc_A7C94E: LitVarI2 var_98, 12
  loc_A7C953: PopAdLdVar
  loc_A7C954: ILdPr
  loc_A7C957: LateMemLdVar
  loc_A7C95C: VarLateMemCallLdVar var_C8, .Buttons
  loc_A7C964: PopAdLdVar
  loc_A7C965: ILdPr
  loc_A7C968: LateMemCall
  loc_A7C96E: FFreeVar var_B8 = ""
  loc_A7C975: Branch loc_A7CAF9
  loc_A7C978: FLdI2 var_86
  loc_A7C97B: LitI4 &H76
  loc_A7C980: CI2I4
  loc_A7C981: EqI2
  loc_A7C982: BranchF loc_A7C9D9
  loc_A7C985: LitVarI2 var_98, 14
  loc_A7C98A: PopAdLdVar
  loc_A7C98B: ILdPr
  loc_A7C98E: LateMemLdVar
  loc_A7C993: VarLateMemCallLdRfVar
  loc_A7C99B: VarLateMemLdVar var_D8, .Enabled
  loc_A7C9A1: CBoolVarNull
  loc_A7C9A3: FFreeVar var_B8 = "": var_C8 = ""
  loc_A7C9AC: BranchF loc_A7C9D6
  loc_A7C9AF: LitVarI2 var_98, 14
  loc_A7C9B4: PopAdLdVar
  loc_A7C9B5: ILdPr
  loc_A7C9B8: LateMemLdVar
  loc_A7C9BD: VarLateMemCallLdVar var_C8, .Buttons
  loc_A7C9C5: PopAdLdVar
  loc_A7C9C6: ILdPr
  loc_A7C9C9: LateMemCall
  loc_A7C9CF: FFreeVar var_B8 = ""
  loc_A7C9D6: Branch loc_A7CAF9
  loc_A7C9D9: FLdI2 var_86
  loc_A7C9DC: LitI4 &H78
  loc_A7C9E1: CI2I4
  loc_A7C9E2: EqI2
  loc_A7C9E3: BranchF loc_A7CA3A
  loc_A7C9E6: LitVarI2 var_98, 17
  loc_A7C9EB: PopAdLdVar
  loc_A7C9EC: ILdPr
  loc_A7C9EF: LateMemLdVar
  loc_A7C9F4: VarLateMemCallLdRfVar
  loc_A7C9FC: VarLateMemLdVar var_D8, .Enabled
  loc_A7CA02: CBoolVarNull
  loc_A7CA04: FFreeVar var_B8 = "": var_C8 = ""
  loc_A7CA0D: BranchF loc_A7CA37
  loc_A7CA10: LitVarI2 var_98, 17
  loc_A7CA15: PopAdLdVar
  loc_A7CA16: ILdPr
  loc_A7CA19: LateMemLdVar
  loc_A7CA1E: VarLateMemCallLdVar var_C8, .Buttons
  loc_A7CA26: PopAdLdVar
  loc_A7CA27: ILdPr
  loc_A7CA2A: LateMemCall
  loc_A7CA30: FFreeVar var_B8 = ""
  loc_A7CA37: Branch loc_A7CAF9
  loc_A7CA3A: FLdI2 var_86
  loc_A7CA3D: LitI4 &H24
  loc_A7CA42: CI2I4
  loc_A7CA43: EqI2
  loc_A7CA44: BranchF loc_A7CA9B
  loc_A7CA47: LitVarI2 var_98, 7
  loc_A7CA4C: PopAdLdVar
  loc_A7CA4D: ILdPr
  loc_A7CA50: LateMemLdVar
  loc_A7CA55: VarLateMemCallLdRfVar
  loc_A7CA5D: VarLateMemLdVar var_D8, .Enabled
  loc_A7CA63: CBoolVarNull
  loc_A7CA65: FFreeVar var_B8 = "": var_C8 = ""
  loc_A7CA6E: BranchF loc_A7CA98
  loc_A7CA71: LitVarI2 var_98, 7
  loc_A7CA76: PopAdLdVar
  loc_A7CA77: ILdPr
  loc_A7CA7A: LateMemLdVar
  loc_A7CA7F: VarLateMemCallLdVar var_C8, .Buttons
  loc_A7CA87: PopAdLdVar
  loc_A7CA88: ILdPr
  loc_A7CA8B: LateMemCall
  loc_A7CA91: FFreeVar var_B8 = ""
  loc_A7CA98: Branch loc_A7CAF9
  loc_A7CA9B: FLdI2 var_86
  loc_A7CA9E: LitI4 &H23
  loc_A7CAA3: CI2I4
  loc_A7CAA4: EqI2
  loc_A7CAA5: BranchF loc_A7CAF9
  loc_A7CAA8: LitVarI2 var_98, 10
  loc_A7CAAD: PopAdLdVar
  loc_A7CAAE: ILdPr
  loc_A7CAB1: LateMemLdVar
  loc_A7CAB6: VarLateMemCallLdRfVar
  loc_A7CABE: VarLateMemLdVar var_D8, .Enabled
  loc_A7CAC4: CBoolVarNull
  loc_A7CAC6: FFreeVar var_B8 = "": var_C8 = ""
  loc_A7CACF: BranchF loc_A7CAF9
  loc_A7CAD2: LitVarI2 var_98, 10
  loc_A7CAD7: PopAdLdVar
  loc_A7CAD8: ILdPr
  loc_A7CADB: LateMemLdVar
  loc_A7CAE0: VarLateMemCallLdVar var_C8, .Buttons
  loc_A7CAE8: PopAdLdVar
  loc_A7CAE9: ILdPr
  loc_A7CAEC: LateMemCall
  loc_A7CAF2: FFreeVar var_B8 = ""
  loc_A7CAF9: ExitProc
End Function

Private Function Proc_261_4_9A47F0(arg_C) '9A47F0
  'Data Table: 42C928
  loc_9A4768: LitI2_Byte 0
  loc_9A476A: FLdRfVar var_86
  loc_9A476D: ILdI4 arg_C
  loc_9A4770: LitI2_Byte 1
  loc_9A4772: FnUBound
  loc_9A4774: CI2I4
  loc_9A4775: ForI2 var_8A
  loc_9A477B: FLdI2 var_86
  loc_9A477E: CI4UI1
  loc_9A477F: ILdI4 arg_C
  loc_9A4782: Ary1LdRfVarg
  loc_9A4786: CheckTypeVar
  loc_9A478A: BranchF loc_9A47A5
  loc_9A478D: LitVarStr var_9C, vbNullString
  loc_9A4792: PopAdLdVar
  loc_9A4793: FLdI2 var_86
  loc_9A4796: CI4UI1
  loc_9A4797: ILdI4 arg_C
  loc_9A479A: Ary1LdRfVarg
  loc_9A479E: VarLateMemSt .Caption
  loc_9A47A2: Branch loc_9A47E4
  loc_9A47A5: FLdI2 var_86
  loc_9A47A8: CI4UI1
  loc_9A47A9: ILdI4 arg_C
  loc_9A47AC: Ary1LdRfVarg
  loc_9A47B0: CheckTypeVar
  loc_9A47B4: BranchF loc_9A47CF
  loc_9A47B7: LitVarStr var_9C, vbNullString
  loc_9A47BC: PopAdLdVar
  loc_9A47BD: FLdI2 var_86
  loc_9A47C0: CI4UI1
  loc_9A47C1: ILdI4 arg_C
  loc_9A47C4: Ary1LdRfVarg
  loc_9A47C8: VarLateMemSt .SelText
  loc_9A47CC: Branch loc_9A47E4
  loc_9A47CF: LitVarStr var_9C, vbNullString
  loc_9A47D4: PopAdLdVar
  loc_9A47D5: FLdI2 var_86
  loc_9A47D8: CI4UI1
  loc_9A47D9: ILdI4 arg_C
  loc_9A47DC: Ary1LdRfVarg
  loc_9A47E0: VarLateMemSt .Text
  loc_9A47E4: FLdRfVar var_86
  loc_9A47E7: NextI2 var_8A, loc_9A477B
  loc_9A47EC: ExitProc
End Function

Private Function Proc_261_5_9BDB84(arg_C) '9BDB84
  'Data Table: 42C928
  loc_9BDAC0: OnErrorGoto loc_9BDB81
  loc_9BDAC3: ILdRf arg_C
  loc_9BDAC6: FStR4 var_88
  loc_9BDAC9: LitVarI2 var_98, 0
  loc_9BDACE: PopAdLdVar
  loc_9BDACF: ILdRf var_88
  loc_9BDAD2: VarLateMemSt .SelStart
  loc_9BDAD6: ILdRfDarg arg_C
  loc_9BDADC: CheckTypeVar
  loc_9BDAE0: BranchF loc_9BDB30
  loc_9BDAE3: ILdRf var_88
  loc_9BDAE6: VarLateMemLdVar var_B8, .Mask
  loc_9BDAEC: LitVarStr var_98, vbNullString
  loc_9BDAF1: HardType
  loc_9BDAF2: EqVarBool
  loc_9BDAF4: FFree1Var var_B8 = ""
  loc_9BDAF7: BranchF loc_9BDB15
  loc_9BDAFA: ILdRf var_88
  loc_9BDAFD: VarLateMemLdVar var_B8, .ClipText
  loc_9BDB03: FnLenVar var_C8
  loc_9BDB07: PopAdLdVar
  loc_9BDB08: ILdRf var_88
  loc_9BDB0B: VarLateMemSt .SelLength
  loc_9BDB0F: FFree1Var var_B8 = ""
  loc_9BDB12: Branch loc_9BDB2D
  loc_9BDB15: ILdRf var_88
  loc_9BDB18: VarLateMemLdVar var_B8, .Mask
  loc_9BDB1E: FnLenVar var_C8
  loc_9BDB22: PopAdLdVar
  loc_9BDB23: ILdRf var_88
  loc_9BDB26: VarLateMemSt .SelLength
  loc_9BDB2A: FFree1Var var_B8 = ""
  loc_9BDB2D: Branch loc_9BDB48
  loc_9BDB30: ILdRf arg_C
  loc_9BDB33: VarLateMemLdVar var_B8, .Text
  loc_9BDB39: FnLenVar var_C8
  loc_9BDB3D: PopAdLdVar
  loc_9BDB3E: ILdRf var_88
  loc_9BDB41: VarLateMemSt .SelLength
  loc_9BDB45: FFree1Var var_B8 = ""
  loc_9BDB48: ILdRf var_88
  loc_9BDB4B: VarLateMemLdVar var_B8, .Enabled
  loc_9BDB51: ILdRf var_88
  loc_9BDB54: VarLateMemLdVar var_C8, .Visible
  loc_9BDB5A: AndVar var_D8
  loc_9BDB5E: CBoolVarNull
  loc_9BDB60: FFreeVar var_B8 = ""
  loc_9BDB67: BranchF loc_9BDB75
  loc_9BDB6A: ILdRf var_88
  loc_9BDB6D: LdPrVar
  loc_9BDB6F: LateMemCall
  loc_9BDB75: LitI4 0
  loc_9BDB7A: FStR4 var_88
  loc_9BDB7D: On Error GoTo 0
  loc_9BDB80: ExitProc
  loc_9BDB81: ExitProc
End Function

Private Function Proc_261_6_9AA2A8(arg_C, arg_10) '9AA2A8
  'Data Table: 42C928
  loc_9AA218: ILdRf arg_10
  loc_9AA21B: CVarRef
  loc_9AA220: FLdRfVar var_B0
  loc_9AA223: ImpAdCallFPR4  = Ucase()
  loc_9AA228: FLdRfVar var_B0
  loc_9AA22B: LitI4 8
  loc_9AA230: FLdRfVar var_C0
  loc_9AA233: ImpAdCallFPR4  = Chr()
  loc_9AA238: FLdRfVar var_C0
  loc_9AA23B: ConcatVar var_D0
  loc_9AA23F: CStrVarTmp
  loc_9AA240: FStStr var_8C
  loc_9AA243: FFreeVar var_B0 = "": var_C0 = ""
  loc_9AA24C: LitI4 1
  loc_9AA251: ILdRf var_8C
  loc_9AA254: CVarStr var_A0
  loc_9AA257: ILdI2 arg_C
  loc_9AA25A: CI4UI1
  loc_9AA25B: FLdRfVar var_B0
  loc_9AA25E: ImpAdCallFPR4  = Chr()
  loc_9AA263: FLdRfVar var_B0
  loc_9AA266: FLdRfVar var_C0
  loc_9AA269: ImpAdCallFPR4  = Ucase()
  loc_9AA26E: FLdRfVar var_C0
  loc_9AA271: LitI4 1
  loc_9AA276: FnInStr4Var
  loc_9AA27A: LitVarI2 var_E0, 0
  loc_9AA27F: HardType
  loc_9AA280: GtVarBool
  loc_9AA282: FFreeVar var_B0 = "": var_C0 = ""
  loc_9AA28B: BranchF loc_9AA297
  loc_9AA28E: ILdI2 arg_C
  loc_9AA291: FStI2 var_8E
  loc_9AA294: Branch loc_9AA2A1
  loc_9AA297: LitI2_Byte 0
  loc_9AA299: FStI2 var_8E
  loc_9AA29C: ImpAdCallFPR4 Beep()
  loc_9AA2A1: FLdI2 var_8E
  loc_9AA2A4: FStI2 var_86
  loc_9AA2A7: ExitProcI2
End Function

Private Function Proc_261_7_98D638(arg_C) '98D638
  'Data Table: 42C928
  loc_98D5E8: LitI2_Byte 1
  loc_98D5EA: FLdRfVar var_86
  loc_98D5ED: ILdI4 arg_C
  loc_98D5F0: LitI2_Byte 1
  loc_98D5F2: FnUBound
  loc_98D5F4: CI2I4
  loc_98D5F5: ForI2 var_8A
  loc_98D5FB: LitVarStr var_9C, "Primary"
  loc_98D600: PopAdLdVar
  loc_98D601: FLdI2 var_86
  loc_98D604: CI4UI1
  loc_98D605: ILdI4 arg_C
  loc_98D608: Ary1LdRfVarg
  loc_98D60C: VarLateMemSt .DataMember
  loc_98D610: LitI4 0
  loc_98D615: ILdI4 arg_C
  loc_98D618: Ary1LdRfVarg
  loc_98D61C: PopAdLdVar
  loc_98D61D: FLdI2 var_86
  loc_98D620: CI4UI1
  loc_98D621: ILdI4 arg_C
  loc_98D624: Ary1LdRfVarg
  loc_98D628: VarLateMemStAd
  loc_98D62E: FLdRfVar var_86
  loc_98D631: NextI2 var_8A, loc_98D5FB
  loc_98D636: ExitProc
End Function

Private Function Proc_261_8_9C2398(arg_10) '9C2398
  'Data Table: 42C928
  loc_9C22D8: ILdRf arg_10
  loc_9C22DB: VarLateMemLdVar var_B8, .RecordCount
  loc_9C22E1: LitVarI2 var_A8, 0
  loc_9C22E6: HardType
  loc_9C22E7: GtVarBool
  loc_9C22E9: FFree1Var var_B8 = ""
  loc_9C22EC: BranchF loc_9C2394
  loc_9C22EF: ILdRf arg_10
  loc_9C22F2: VarLateMemLdVar var_B8, .AbsolutePosition
  loc_9C22F8: LitVarI2 var_A8, -3
  loc_9C22FD: HardType
  loc_9C22FE: EqVarBool
  loc_9C2300: FFree1Var var_B8 = ""
  loc_9C2303: BranchF loc_9C2314
  loc_9C2306: ILdRfDarg arg_10
  loc_9C230C: LdPrVar
  loc_9C230E: LateMemCall
  loc_9C2314: FLdRfVar var_CC
  loc_9C2317: ILdPr
  loc_9C231A:  = Form.Controls
  loc_9C231F: FLdZeroAd var_CC
  loc_9C2322: FStAdFuncNoPop
  loc_9C2325: FLdRfVar var_88
  loc_9C2328: ForEachCollAd var_D4
  loc_9C232E: ILdRf var_88
  loc_9C2331: CheckType
  loc_9C2335: ILdRf var_88
  loc_9C2338: CheckType
  loc_9C233C: OrI4
  loc_9C233D: ILdRf var_88
  loc_9C2340: CheckType
  loc_9C2344: OrI4
  loc_9C2345: ILdRf var_88
  loc_9C2348: CheckType
  loc_9C234C: OrI4
  loc_9C234D: ILdRf var_88
  loc_9C2350: CheckType
  loc_9C2354: OrI4
  loc_9C2355: BranchF loc_9C238B
  loc_9C2358: FLdPr var_88
  loc_9C235B: LateMemLdVar
  loc_9C2360: LitVarStr var_98, vbNullString
  loc_9C2365: HardType
  loc_9C2366: NeVarBool
  loc_9C2368: FFree1Var var_B8 = ""
  loc_9C236B: BranchF loc_9C238B
  loc_9C236E: LitVarStr var_98, "Primary"
  loc_9C2373: PopAdLdVar
  loc_9C2374: FLdPr var_88
  loc_9C2377: LateMemSt
  loc_9C237B: ILdRfDarg arg_10
  loc_9C2381: PopAdLdVar
  loc_9C2382: FLdPr var_88
  loc_9C2385: LateMemStAd
  loc_9C238B: FLdRfVar var_88
  loc_9C238E: NextEachCollAd var_D4
  loc_9C2394: ExitProc
End Function

Private Function Proc_261_9_980B4C(arg_C) '980B4C
  'Data Table: 42C928
  loc_980B14: LitI2_Byte 0
  loc_980B16: FLdRfVar var_86
  loc_980B19: ILdI4 arg_C
  loc_980B1C: LitI2_Byte 1
  loc_980B1E: FnUBound
  loc_980B20: CI2I4
  loc_980B21: ForI2 var_8A
  loc_980B27: LitNothing
  loc_980B29: CVarAd
  loc_980B2D: PopAdLdVar
  loc_980B2E: FLdI2 var_86
  loc_980B31: CI4UI1
  loc_980B32: ILdI4 arg_C
  loc_980B35: Ary1LdRfVarg
  loc_980B39: VarLateMemStAd
  loc_980B3F: FFree1Var var_9C = ""
  loc_980B42: FLdRfVar var_86
  loc_980B45: NextI2 var_8A, loc_980B27
  loc_980B4A: ExitProc
End Function

Private Function Proc_261_10_99CABC() '99CABC
  'Data Table: 42C928
  loc_99CA58: FLdRfVar var_8C
  loc_99CA5B: ILdPr
  loc_99CA5E:  = Form.Controls
  loc_99CA63: FLdZeroAd var_8C
  loc_99CA66: FStAdFuncNoPop
  loc_99CA69: FLdRfVar var_88
  loc_99CA6C: ForEachCollAd var_94
  loc_99CA72: ILdRf var_88
  loc_99CA75: CheckType
  loc_99CA79: ILdRf var_88
  loc_99CA7C: CheckType
  loc_99CA80: OrI4
  loc_99CA81: ILdRf var_88
  loc_99CA84: CheckType
  loc_99CA88: OrI4
  loc_99CA89: ILdRf var_88
  loc_99CA8C: CheckType
  loc_99CA90: OrI4
  loc_99CA91: ILdRf var_88
  loc_99CA94: CheckType
  loc_99CA98: OrI4
  loc_99CA99: BranchF loc_99CAAF
  loc_99CA9C: LitNothing
  loc_99CA9E: CVarAd
  loc_99CAA2: PopAdLdVar
  loc_99CAA3: FLdPr var_88
  loc_99CAA6: LateMemStAd
  loc_99CAAC: FFree1Var var_A4 = ""
  loc_99CAAF: FLdRfVar var_88
  loc_99CAB2: NextEachCollAd var_94
  loc_99CAB8: ExitProc
  loc_99CAB9: LargeBos
End Function

Private Function Proc_261_11_9A3F54(arg_C) '9A3F54
  'Data Table: 42C928
  loc_9A3EDC: LitI2_Byte 0
  loc_9A3EDE: FLdRfVar var_86
  loc_9A3EE1: ILdI4 arg_C
  loc_9A3EE4: LitI2_Byte 1
  loc_9A3EE6: FnUBound
  loc_9A3EE8: CI2I4
  loc_9A3EE9: ForI2 var_8A
  loc_9A3EEF: LitVar_TRUE var_9C
  loc_9A3EF2: PopAdLdVar
  loc_9A3EF3: FLdI2 var_86
  loc_9A3EF6: CI4UI1
  loc_9A3EF7: ILdI4 arg_C
  loc_9A3EFA: Ary1LdRfVarg
  loc_9A3EFE: VarLateMemSt .Enabled
  loc_9A3F02: FLdRfVar var_86
  loc_9A3F05: NextI2 var_8A, loc_9A3EEF
  loc_9A3F0A: LitI4 0
  loc_9A3F0F: ILdI4 arg_C
  loc_9A3F12: Ary1LdRfVarg
  loc_9A3F16: VarLateMemLdVar var_CC, .Enabled
  loc_9A3F1C: LitI4 0
  loc_9A3F21: ILdI4 arg_C
  loc_9A3F24: Ary1LdRfVarg
  loc_9A3F28: VarLateMemLdVar var_DC, .Visible
  loc_9A3F2E: AndVar var_EC
  loc_9A3F32: CBoolVarNull
  loc_9A3F34: FFreeVar var_CC = ""
  loc_9A3F3B: BranchF loc_9A3F52
  loc_9A3F3E: LitI4 0
  loc_9A3F43: ILdI4 arg_C
  loc_9A3F46: Ary1LdRfVarg
  loc_9A3F4A: LdPrVar
  loc_9A3F4C: LateMemCall
  loc_9A3F52: ExitProc
End Function

Private Function Proc_261_12_A04B24() 'A04B24
  'Data Table: 42C928
  loc_A049F0: FLdRfVar var_8C
  loc_A049F3: ILdPr
  loc_A049F6:  = Form.Controls
  loc_A049FB: FLdZeroAd var_8C
  loc_A049FE: FStAdFuncNoPop
  loc_A04A01: FLdRfVar var_88
  loc_A04A04: ForEachCollAd var_94
  loc_A04A0A: FLdPr var_88
  loc_A04A0D: LateMemLdVar
  loc_A04A12: LitVarStr var_A4, "FiltroCbo"
  loc_A04A17: HardType
  loc_A04A18: EqVar var_C4
  loc_A04A1C: FLdPr var_88
  loc_A04A1F: LateMemLdVar
  loc_A04A24: LitVarStr var_D4, "FiltroTxt"
  loc_A04A29: HardType
  loc_A04A2A: EqVar var_F4
  loc_A04A2E: OrVar var_104
  loc_A04A32: FLdPr var_88
  loc_A04A35: LateMemLdVar
  loc_A04A3A: LitVarStr var_114, "FiltroMsk"
  loc_A04A3F: HardType
  loc_A04A40: EqVar var_134
  loc_A04A44: OrVar var_144
  loc_A04A48: FLdPr var_88
  loc_A04A4B: LateMemLdVar
  loc_A04A50: LitVarStr var_154, "cmdCancelar"
  loc_A04A55: HardType
  loc_A04A56: EqVar var_174
  loc_A04A5A: OrVar var_184
  loc_A04A5E: CBoolVarNull
  loc_A04A60: FFreeVar var_B4 = "": var_E4 = "": var_124 = ""
  loc_A04A6B: BranchF loc_A04A71
  loc_A04A6E: Branch loc_A04B17
  loc_A04A71: ILdRf var_88
  loc_A04A74: CheckType
  loc_A04A78: ILdRf var_88
  loc_A04A7B: CheckType
  loc_A04A7F: OrI4
  loc_A04A80: ILdRf var_88
  loc_A04A83: CheckType
  loc_A04A87: OrI4
  loc_A04A88: ILdRf var_88
  loc_A04A8B: CheckType
  loc_A04A8F: OrI4
  loc_A04A90: ILdRf var_88
  loc_A04A93: CheckType
  loc_A04A97: OrI4
  loc_A04A98: ILdRf var_88
  loc_A04A9B: CheckType
  loc_A04A9F: OrI4
  loc_A04AA0: ILdRf var_88
  loc_A04AA3: CheckType
  loc_A04AA7: OrI4
  loc_A04AA8: BranchF loc_A04AB6
  loc_A04AAB: LitVar_TRUE var_A4
  loc_A04AAE: PopAdLdVar
  loc_A04AAF: FLdPr var_88
  loc_A04AB2: LateMemSt
  loc_A04AB6: FLdPr var_88
  loc_A04AB9: LateMemLdVar
  loc_A04ABE: PopAd
  loc_A04AC0: ILdRf var_88
  loc_A04AC3: CheckType
  loc_A04AC7: CVarBoolI2 var_D4
  loc_A04ACB: LitI4 3
  loc_A04AD0: FLdRfVar var_B4
  loc_A04AD3: CStrVarVal var_188
  loc_A04AD7: ImpAdCallI2 Right$(, )
  loc_A04ADC: CVarStr var_C4
  loc_A04ADF: FLdRfVar var_E4
  loc_A04AE2: ImpAdCallFPR4  = LCase()
  loc_A04AE7: FLdRfVar var_E4
  loc_A04AEA: LitVarStr var_A4, "lbl"
  loc_A04AEF: HardType
  loc_A04AF0: EqVar var_F4
  loc_A04AF4: AndVar var_104
  loc_A04AF8: CBoolVarNull
  loc_A04AFA: FFree1Str var_188
  loc_A04AFD: FFreeVar var_B4 = "": var_C4 = "": var_E4 = ""
  loc_A04B08: BranchF loc_A04B17
  loc_A04B0B: LitVar_FALSE
  loc_A04B0F: PopAdLdVar
  loc_A04B10: FLdPr var_88
  loc_A04B13: LateMemSt
  loc_A04B17: FLdRfVar var_88
  loc_A04B1A: NextEachCollAd var_94
  loc_A04B20: ExitProc
  loc_A04B21: ILdFPR8 arg_B26
End Function

Private Function Proc_261_13_9760BC(arg_C) '9760BC
  'Data Table: 42C928
  loc_97608C: LitI2_Byte 0
  loc_97608E: FLdRfVar var_86
  loc_976091: ILdI4 arg_C
  loc_976094: LitI2_Byte 1
  loc_976096: FnUBound
  loc_976098: CI2I4
  loc_976099: ForI2 var_8A
  loc_97609F: LitVar_FALSE
  loc_9760A3: PopAdLdVar
  loc_9760A4: FLdI2 var_86
  loc_9760A7: CI4UI1
  loc_9760A8: ILdI4 arg_C
  loc_9760AB: Ary1LdRfVarg
  loc_9760AF: VarLateMemSt .Enabled
  loc_9760B3: FLdRfVar var_86
  loc_9760B6: NextI2 var_8A, loc_97609F
  loc_9760BB: ExitProc
End Function

Private Function Proc_261_14_9D98D4() '9D98D4
  'Data Table: 42C928
  loc_9D9800: FLdRfVar var_8C
  loc_9D9803: ILdPr
  loc_9D9806:  = Form.Controls
  loc_9D980B: FLdZeroAd var_8C
  loc_9D980E: FStAdFuncNoPop
  loc_9D9811: FLdRfVar var_88
  loc_9D9814: ForEachCollAd var_94
  loc_9D981A: FLdPr var_88
  loc_9D981D: LateMemLdVar
  loc_9D9822: LitVarStr var_A4, "FiltroCbo"
  loc_9D9827: HardType
  loc_9D9828: EqVar var_C4
  loc_9D982C: FLdPr var_88
  loc_9D982F: LateMemLdVar
  loc_9D9834: LitVarStr var_D4, "FiltroTxt"
  loc_9D9839: HardType
  loc_9D983A: EqVar var_F4
  loc_9D983E: OrVar var_104
  loc_9D9842: FLdPr var_88
  loc_9D9845: LateMemLdVar
  loc_9D984A: LitVarStr var_114, "FiltroMsk"
  loc_9D984F: HardType
  loc_9D9850: EqVar var_134
  loc_9D9854: OrVar var_144
  loc_9D9858: FLdPr var_88
  loc_9D985B: LateMemLdVar
  loc_9D9860: LitVarStr var_154, "cmdCancelar"
  loc_9D9865: HardType
  loc_9D9866: EqVar var_174
  loc_9D986A: OrVar var_184
  loc_9D986E: CBoolVarNull
  loc_9D9870: FFreeVar var_B4 = "": var_E4 = "": var_124 = ""
  loc_9D987B: BranchF loc_9D9881
  loc_9D987E: Branch loc_9D98C7
  loc_9D9881: ILdRf var_88
  loc_9D9884: CheckType
  loc_9D9888: ILdRf var_88
  loc_9D988B: CheckType
  loc_9D988F: OrI4
  loc_9D9890: ILdRf var_88
  loc_9D9893: CheckType
  loc_9D9897: OrI4
  loc_9D9898: ILdRf var_88
  loc_9D989B: CheckType
  loc_9D989F: OrI4
  loc_9D98A0: ILdRf var_88
  loc_9D98A3: CheckType
  loc_9D98A7: OrI4
  loc_9D98A8: ILdRf var_88
  loc_9D98AB: CheckType
  loc_9D98AF: OrI4
  loc_9D98B0: ILdRf var_88
  loc_9D98B3: CheckType
  loc_9D98B7: OrI4
  loc_9D98B8: BranchF loc_9D98C7
  loc_9D98BB: LitVar_FALSE
  loc_9D98BF: PopAdLdVar
  loc_9D98C0: FLdPr var_88
  loc_9D98C3: LateMemSt
  loc_9D98C7: FLdRfVar var_88
  loc_9D98CA: NextEachCollAd var_94
  loc_9D98D0: ExitProc
End Function

Private Function Proc_261_15_A16E38() 'A16E38
  'Data Table: 42C928
  loc_A16CD4: FLdRfVar var_90
  loc_A16CD7: ILdPr
  loc_A16CDA:  = Form.Controls
  loc_A16CDF: FLdZeroAd var_90
  loc_A16CE2: FStAdFuncNoPop
  loc_A16CE5: FLdRfVar var_88
  loc_A16CE8: ForEachCollAd var_98
  loc_A16CEE: FLdPr var_88
  loc_A16CF1: LateMemLdVar
  loc_A16CF6: LitVarStr var_A8, "FiltroCbo"
  loc_A16CFB: HardType
  loc_A16CFC: EqVar var_C8
  loc_A16D00: FLdPr var_88
  loc_A16D03: LateMemLdVar
  loc_A16D08: LitVarStr var_D8, "FiltroTxt"
  loc_A16D0D: HardType
  loc_A16D0E: EqVar var_F8
  loc_A16D12: OrVar var_108
  loc_A16D16: FLdPr var_88
  loc_A16D19: LateMemLdVar
  loc_A16D1E: LitVarStr var_118, "FiltroMsk"
  loc_A16D23: HardType
  loc_A16D24: EqVar var_138
  loc_A16D28: OrVar var_148
  loc_A16D2C: CBoolVarNull
  loc_A16D2E: FFreeVar var_B8 = "": var_E8 = ""
  loc_A16D37: BranchF loc_A16D3D
  loc_A16D3A: Branch loc_A16E2E
  loc_A16D3D: ILdRf var_88
  loc_A16D40: CheckType
  loc_A16D44: BranchF loc_A16D63
  loc_A16D47: FLdPr var_88
  loc_A16D4A: LateMemLdVar
  loc_A16D4F: CStrVarTmp
  loc_A16D50: FStStr var_8C
  loc_A16D53: FFree1Var var_B8 = ""
  loc_A16D56: LitVarStr var_A8, vbNullString
  loc_A16D5B: PopAdLdVar
  loc_A16D5C: FLdPr var_88
  loc_A16D5F: LateMemSt
  loc_A16D63: ILdRf var_88
  loc_A16D66: CheckType
  loc_A16D6A: BranchF loc_A16D86
  loc_A16D6D: FLdPr var_88
  loc_A16D70: LateMemLdVar
  loc_A16D75: LitVarI2 var_A8, 2
  loc_A16D7A: HardType
  loc_A16D7B: EqVarBool
  loc_A16D7D: FFree1Var var_B8 = ""
  loc_A16D80: BranchF loc_A16D86
  loc_A16D83: Branch loc_A16E2E
  loc_A16D86: ILdRf var_88
  loc_A16D89: CheckType
  loc_A16D8D: ILdRf var_88
  loc_A16D90: CheckType
  loc_A16D94: OrI4
  loc_A16D95: ILdRf var_88
  loc_A16D98: CheckType
  loc_A16D9C: OrI4
  loc_A16D9D: BranchF loc_A16DAD
  loc_A16DA0: LitVarStr var_A8, vbNullString
  loc_A16DA5: PopAdLdVar
  loc_A16DA6: FLdPr var_88
  loc_A16DA9: LateMemSt
  loc_A16DAD: ILdRf var_88
  loc_A16DB0: CheckType
  loc_A16DB4: BranchF loc_A16DC5
  loc_A16DB7: ILdRf var_8C
  loc_A16DBA: CVarStr var_A8
  loc_A16DBD: PopAdLdVar
  loc_A16DBE: FLdPr var_88
  loc_A16DC1: LateMemSt
  loc_A16DC5: FLdPr var_88
  loc_A16DC8: LateMemLdVar
  loc_A16DCD: PopAd
  loc_A16DCF: ILdRf var_88
  loc_A16DD2: CheckType
  loc_A16DD6: CVarBoolI2 var_118
  loc_A16DDA: LitVarI2 var_C8, 5
  loc_A16DDF: LitI4 1
  loc_A16DE4: FLdRfVar var_B8
  loc_A16DE7: CStrVarVal var_14C
  loc_A16DEB: ImpAdCallI2 Mid$(, , )
  loc_A16DF0: CVarStr var_E8
  loc_A16DF3: FLdRfVar var_F8
  loc_A16DF6: ImpAdCallFPR4  = LCase()
  loc_A16DFB: FLdRfVar var_F8
  loc_A16DFE: LitVarStr var_D8, "label"
  loc_A16E03: HardType
  loc_A16E04: NeVar var_108
  loc_A16E08: AndVar var_128
  loc_A16E0C: CBoolVarNull
  loc_A16E0E: FFree1Str var_14C
  loc_A16E11: FFreeVar var_B8 = "": var_C8 = "": var_E8 = "": var_F8 = ""
  loc_A16E1E: BranchF loc_A16E2E
  loc_A16E21: LitVarStr var_A8, vbNullString
  loc_A16E26: PopAdLdVar
  loc_A16E27: FLdPr var_88
  loc_A16E2A: LateMemSt
  loc_A16E2E: FLdRfVar var_88
  loc_A16E31: NextEachCollAd var_98
  loc_A16E37: ExitProc
End Function

Private Function Proc_261_16_9B9214() '9B9214
  'Data Table: 42C928
  loc_9B9164: LitStr "Municipalidad de Guaymallén"
  loc_9B9167: LitStr "Municipalidad de General Alvear"
  loc_9B916A: EqStr
  loc_9B916C: BranchF loc_9B91C1
  loc_9B916F: LitVarI2 var_9C, 0
  loc_9B9174: PopAdLdVar
  loc_9B9175: FLdRfVar var_8C
  loc_9B9178: ImpAdLdRf MemVar_C44F9C
  loc_9B917B: NewIfNullPr Me
  loc_9B917E:  = Me.Global.Forms
  loc_9B9183: FLdPr var_8C
  loc_9B9186: LateIdCallLdVar
  loc_9B9190: CastAdVar Me
  loc_9B9194: FStAdFunc var_C4
  loc_9B9197: FLdRfVar var_C4
  loc_9B919A: LitI4 5
  loc_9B919F: PopTmpLdAdStr var_B0
  loc_9B91A2: ImpAdCallI2 Proc_265_2_9A95AC(, )
  loc_9B91A7: FStStrNoPop var_C8
  loc_9B91AA: LitStr "\GDE DOCUM"
  loc_9B91AD: ConcatStr
  loc_9B91AE: FStStr var_88
  loc_9B91B1: FFree1Str var_C8
  loc_9B91B4: FFreeAd var_8C = ""
  loc_9B91BB: FFree1Var var_C0 = ""
  loc_9B91BE: Branch loc_9B9210
  loc_9B91C1: LitVarI2 var_9C, 0
  loc_9B91C6: PopAdLdVar
  loc_9B91C7: FLdRfVar var_8C
  loc_9B91CA: ImpAdLdRf MemVar_C44F9C
  loc_9B91CD: NewIfNullPr Me
  loc_9B91D0:  = Me.Global.Forms
  loc_9B91D5: FLdPr var_8C
  loc_9B91D8: LateIdCallLdVar
  loc_9B91E2: CastAdVar Me
  loc_9B91E6: FStAdFunc var_C4
  loc_9B91E9: FLdRfVar var_C4
  loc_9B91EC: LitI4 5
  loc_9B91F1: PopTmpLdAdStr var_B0
  loc_9B91F4: ImpAdCallI2 Proc_265_2_9A95AC(, )
  loc_9B91F9: FStStrNoPop var_C8
  loc_9B91FC: LitStr "\Reportes InfoGov"
  loc_9B91FF: ConcatStr
  loc_9B9200: FStStr var_88
  loc_9B9203: FFree1Str var_C8
  loc_9B9206: FFreeAd var_8C = ""
  loc_9B920D: FFree1Var var_C0 = ""
  loc_9B9210: ExitProc
End Function

Private Function Proc_261_17_9A1230(arg_C) '9A1230
  'Data Table: 42C928
  loc_9A11C8: ILdRf arg_C
  loc_9A11CB: FStStrCopy var_8C
  loc_9A11CE: FLdRfVar var_90
  loc_9A11D1: NewIfNullAd
  loc_9A11D4: FStAd var_98 
  loc_9A11D8: FLdRfVar var_9C
  loc_9A11DB: ILdRf var_8C
  loc_9A11DE: FLdPr var_98
  loc_9A11E1: from_stack_2 = Me.GetParentFolderName(from_stack_1v)
  loc_9A11E6: FLdZeroAd var_9C
  loc_9A11E9: FStStr var_94
  loc_9A11EC: FLdRfVar var_9E
  loc_9A11EF: ILdRf var_94
  loc_9A11F2: FLdPr var_98
  loc_9A11F5: from_stack_2 = Me.FolderExists(from_stack_1v)
  loc_9A11FA: FLdI2 var_9E
  loc_9A11FD: BranchF loc_9A1208
  loc_9A1200: LitI2_Byte &HFF
  loc_9A1202: FStI2 var_86
  loc_9A1205: Branch loc_9A1229
  loc_9A1208: ILdRf var_94
  loc_9A120B: ImpAdCallI2 Proc_261_17_9A1230()
  loc_9A1210: BranchF loc_9A1229
  loc_9A1213: FLdRfVar var_A4
  loc_9A1216: ILdRf var_94
  loc_9A1219: FLdPr var_98
  loc_9A121C: from_stack_2 = Me.CreateFolder(from_stack_1v)
  loc_9A1221: FFree1Ad var_A4
  loc_9A1224: LitI2_Byte &HFF
  loc_9A1226: FStI2 var_86
  loc_9A1229: LitNothing
  loc_9A122B: FStAd var_98 
  loc_9A122F: ExitProcI2
End Function

Private Function Proc_261_18_A59F84(arg_10, arg_14) 'A59F84
  'Data Table: 42C928
  loc_A59CA8: OnErrorGoto loc_A59EEB
  loc_A59CAB: ImpAdCallI2 Proc_261_16_9B9214()
  loc_A59CB0: FMemStStr arg_8(44)
  loc_A59CB6: FLdRfVar var_8E
  loc_A59CB9: FMemLdR4 arg_8(44)
  loc_A59CBE: FLdRfVar var_8C
  loc_A59CC1: NewIfNullPr IFileSystem3
  loc_A59CC4: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_A59CC9: FLdI2 var_8E
  loc_A59CCC: NotI4
  loc_A59CCD: BranchF loc_A59CE6
  loc_A59CD0: FLdRfVar var_94
  loc_A59CD3: FMemLdR4 arg_8(44)
  loc_A59CD8: FLdRfVar var_8C
  loc_A59CDB: NewIfNullPr IFileSystem3
  loc_A59CDE: from_stack_2 = IFileSystem3.IFileSystem.CreateFolder(from_stack_1v)
  loc_A59CE3: FFree1Ad var_94
  loc_A59CE6: FLdRfVar var_98
  loc_A59CE9: ILdPr
  loc_A59CEC:  = Form.Tag
  loc_A59CF1: FLdRfVar var_9C
  loc_A59CF4: ILdPr
  loc_A59CF7:  = Form.Tag
  loc_A59CFC: FLdRfVar var_A0
  loc_A59CFF: ILdPr
  loc_A59D02:  = Form.Caption
  loc_A59D07: FLdZeroAd var_A0
  loc_A59D0A: CVarStr var_D0
  loc_A59D0D: FLdZeroAd var_9C
  loc_A59D10: CVarStr var_C0
  loc_A59D13: ILdRf var_98
  loc_A59D16: LitStr vbNullString
  loc_A59D19: NeStr
  loc_A59D1B: CVarBoolI2 var_B0
  loc_A59D1F: FLdRfVar var_E0
  loc_A59D22: ImpAdCallFPR4  = IIf(, , )
  loc_A59D27: FLdRfVar var_E8
  loc_A59D2A: FLdRfVar var_E0
  loc_A59D2D: CStrVarVal var_E4
  loc_A59D31: FMemLdR4 arg_8(44)
  loc_A59D36: FLdRfVar var_8C
  loc_A59D39: NewIfNullPr IFileSystem3
  loc_A59D3C: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A59D41: FLdZeroAd var_E8
  loc_A59D44: FMemStStr arg_8(44)
  loc_A59D4A: FFreeStr var_98 = ""
  loc_A59D51: FFreeVar var_B0 = "": var_C0 = "": var_D0 = ""
  loc_A59D5C: LitVar_TRUE var_B0
  loc_A59D5F: PopAdLdVar
  loc_A59D60: ILdPr
  loc_A59D63: LateMemLdVar
  loc_A59D68: VarLateMemSt .CancelError
  loc_A59D6C: FFree1Var var_C0 = ""
  loc_A59D6F: LitVarStr var_B0, "Guardar como..."
  loc_A59D74: PopAdLdVar
  loc_A59D75: ILdPr
  loc_A59D78: LateMemLdVar
  loc_A59D7D: VarLateMemSt .DialogTitle
  loc_A59D81: FFree1Var var_C0 = ""
  loc_A59D84: LitVarStr var_B0, "txt"
  loc_A59D89: PopAdLdVar
  loc_A59D8A: ILdPr
  loc_A59D8D: LateMemLdVar
  loc_A59D92: VarLateMemSt .DefaultExt
  loc_A59D96: FFree1Var var_C0 = ""
  loc_A59D99: LitVarI4
  loc_A59DA1: PopAdLdVar
  loc_A59DA2: ILdPr
  loc_A59DA5: LateMemLdVar
  loc_A59DAA: VarLateMemSt .Flags
  loc_A59DAE: FFree1Var var_C0 = ""
  loc_A59DB1: FLdI2 arg_10
  loc_A59DB4: BranchF loc_A59DEF
  loc_A59DB7: LitVarStr var_B0, "(*.pdf)|*.pdf"
  loc_A59DBC: PopAdLdVar
  loc_A59DBD: ILdPr
  loc_A59DC0: LateMemLdVar
  loc_A59DC5: VarLateMemSt .Filter
  loc_A59DC9: FFree1Var var_C0 = ""
  loc_A59DCC: FMemLdR4 arg_8(44)
  loc_A59DD1: LitStr ".pdf"
  loc_A59DD4: ConcatStr
  loc_A59DD5: CVarStr var_C0
  loc_A59DD8: PopAdLdVar
  loc_A59DD9: ILdPr
  loc_A59DDC: LateMemLdVar
  loc_A59DE1: VarLateMemSt .fileName
  loc_A59DE5: FFreeVar var_C0 = ""
  loc_A59DEC: Branch loc_A59E8E
  loc_A59DEF: FLdI2 arg_14
  loc_A59DF2: BranchF loc_A59E2D
  loc_A59DF5: LitVarStr var_B0, "(*.xls)|*.xls"
  loc_A59DFA: PopAdLdVar
  loc_A59DFB: ILdPr
  loc_A59DFE: LateMemLdVar
  loc_A59E03: VarLateMemSt .Filter
  loc_A59E07: FFree1Var var_C0 = ""
  loc_A59E0A: FMemLdR4 arg_8(44)
  loc_A59E0F: LitStr ".xls"
  loc_A59E12: ConcatStr
  loc_A59E13: CVarStr var_C0
  loc_A59E16: PopAdLdVar
  loc_A59E17: ILdPr
  loc_A59E1A: LateMemLdVar
  loc_A59E1F: VarLateMemSt .fileName
  loc_A59E23: FFreeVar var_C0 = ""
  loc_A59E2A: Branch loc_A59E8E
  loc_A59E2D: LitVarStr var_B0, "(*.txt)|*.txt"
  loc_A59E32: PopAdLdVar
  loc_A59E33: ILdPr
  loc_A59E36: LateMemLdVar
  loc_A59E3B: VarLateMemSt .Filter
  loc_A59E3F: FFree1Var var_C0 = ""
  loc_A59E42: FMemLdR4 arg_8(44)
  loc_A59E47: LitStr ".txt"
  loc_A59E4A: ConcatStr
  loc_A59E4B: FMemStStr arg_8(44)
  loc_A59E51: LitI4 0
  loc_A59E56: LitI4 -1
  loc_A59E5B: LitI4 1
  loc_A59E60: LitStr ".txt"
  loc_A59E63: LitStr ".txt.txt"
  loc_A59E66: FMemLdR4 arg_8(44)
  loc_A59E6B: ImpAdCallI2 Replace(, , , , , )
  loc_A59E70: FMemStStr arg_8(44)
  loc_A59E76: FMemLdR4 arg_8(44)
  loc_A59E7B: CVarStr var_B0
  loc_A59E7E: PopAdLdVar
  loc_A59E7F: ILdPr
  loc_A59E82: LateMemLdVar
  loc_A59E87: VarLateMemSt .fileName
  loc_A59E8B: FFree1Var var_C0 = ""
  loc_A59E8E: ILdPr
  loc_A59E91: LateMemLdVar
  loc_A59E96: LdPrVar
  loc_A59E98: LateMemCall
  loc_A59E9E: FFree1Var var_D0 = ""
  loc_A59EA1: ILdPr
  loc_A59EA4: LateMemLdVar
  loc_A59EA9: VarLateMemLdVar var_118, .fileName
  loc_A59EAF: PopAd
  loc_A59EB1: ILdPr
  loc_A59EB4: LateMemLdVar
  loc_A59EB9: VarLateMemLdVar var_E0, .fileName
  loc_A59EBF: FnLenVar var_108
  loc_A59EC3: CI4Var
  loc_A59EC5: FLdRfVar var_118
  loc_A59EC8: CStrVarVal var_98
  loc_A59ECC: ImpAdCallI2 Left$(, )
  loc_A59ED1: FMemStStr arg_8(44)
  loc_A59ED7: FFree1Str var_98
  loc_A59EDA: FFreeVar var_C0 = "": var_D0 = "": var_E0 = ""
  loc_A59EE5: LitI2_Byte &HFF
  loc_A59EE7: FStI2 var_86
  loc_A59EEA: ExitProcI2
  loc_A59EEB: FLdRfVar var_11C
  loc_A59EEE: ImpAdCallI2 Err 'rtcErrObj
  loc_A59EF3: FStAdFunc var_94
  loc_A59EF6: FLdPr var_94
  loc_A59EF9:  = Err.Number
  loc_A59EFE: ILdRf var_11C
  loc_A59F01: LitI4 &H7FF3
  loc_A59F06: EqI4
  loc_A59F07: FFree1Ad var_94
  loc_A59F0A: BranchF loc_A59F0E
  loc_A59F0D: ExitProcI2
  loc_A59F0E: LitVar_Missing var_108
  loc_A59F11: LitVar_Missing var_E0
  loc_A59F14: LitVar_Missing var_D0
  loc_A59F17: LitI4 0
  loc_A59F1C: LitStr "Error "
  loc_A59F1F: FLdRfVar var_11C
  loc_A59F22: ImpAdCallI2 Err 'rtcErrObj
  loc_A59F27: FStAdFunc var_94
  loc_A59F2A: FLdPr var_94
  loc_A59F2D:  = Err.Number
  loc_A59F32: ILdRf var_11C
  loc_A59F35: CStrI4
  loc_A59F37: FStStrNoPop var_98
  loc_A59F3A: ConcatStr
  loc_A59F3B: FStStrNoPop var_9C
  loc_A59F3E: LitStr ": "
  loc_A59F41: ConcatStr
  loc_A59F42: FStStrNoPop var_E4
  loc_A59F45: FLdRfVar var_A0
  loc_A59F48: ImpAdCallI2 Err 'rtcErrObj
  loc_A59F4D: FStAdFunc var_120
  loc_A59F50: FLdPr var_120
  loc_A59F53:  = Err.Description
  loc_A59F58: ILdRf var_A0
  loc_A59F5B: ConcatStr
  loc_A59F5C: CVarStr var_C0
  loc_A59F5F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_A59F64: FFreeStr var_98 = "": var_9C = "": var_E4 = ""
  loc_A59F6F: FFreeAd var_94 = ""
  loc_A59F76: FFreeVar var_C0 = "": var_D0 = "": var_E0 = ""
  loc_A59F81: ExitProcI2
End Function

Private Function Proc_261_19_A15E40(arg_C) 'A15E40
  'Data Table: 42C928
  loc_A15CC4: FDupVar
  loc_A15CCA: FLdRfVar var_94
  loc_A15CCD: ImpAdCallI2 IsNull()
  loc_A15CD2: BranchF loc_A15CE2
  loc_A15CD5: LitStr vbNullString
  loc_A15CD8: ILdI4 arg_C
  loc_A15CDB: StFixedStrR
  loc_A15CDF: Branch loc_A15E3D
  loc_A15CE2: FLdRfVar arg_20
  loc_A15CE5: CVarRef
  loc_A15CEA: ImpAdCallI2 IsMissing()
  loc_A15CEF: BranchF loc_A15CFE
  loc_A15CF2: FLdRfVar var_94
  loc_A15CF5: CStrVar
  loc_A15CF7: IStStr
  loc_A15CFB: Branch loc_A15D91
  loc_A15CFE: FLdI2 arg_20
  loc_A15D01: BranchF loc_A15D88
  loc_A15D04: FLdRfVar arg_28
  loc_A15D07: CVarRef
  loc_A15D0C: ImpAdCallI2 IsMissing()
  loc_A15D11: FLdUI1
  loc_A15D15: CI2UI1
  loc_A15D17: LitI2_Byte 0
  loc_A15D19: EqI2
  loc_A15D1A: OrI4
  loc_A15D1B: BranchF loc_A15D26
  loc_A15D1E: LitI2_Byte 2
  loc_A15D20: CUI1I2
  loc_A15D22: FStUI1 arg_28
  loc_A15D26: FLdRfVar var_94
  loc_A15D29: LitVarStr var_A4, vbNullString
  loc_A15D2E: HardType
  loc_A15D2F: EqVar var_B4
  loc_A15D33: FLdRfVar var_94
  loc_A15D36: LitVarStr var_C4, "0"
  loc_A15D3B: HardType
  loc_A15D3C: EqVar var_D4
  loc_A15D40: OrVar var_E4
  loc_A15D44: FLdRfVar var_94
  loc_A15D47: ImpAdCallI2 IsNull()
  loc_A15D4C: CVarBoolI2 var_F4
  loc_A15D50: OrVar var_104
  loc_A15D54: CBoolVarNull
  loc_A15D56: FFree1Var var_F4 = ""
  loc_A15D59: BranchF loc_A15D65
  loc_A15D5C: LitVarI2 var_A4, 0
  loc_A15D61: FStVar var_94
  loc_A15D65: LitI4 -1
  loc_A15D6A: LitI4 0
  loc_A15D6F: LitI4 -1
  loc_A15D74: FLdUI1
  loc_A15D78: CI4UI1
  loc_A15D79: FLdRfVar var_94
  loc_A15D7C: ImpAdCallI2 FormatNumber(, , , , )
  loc_A15D81: IStStr
  loc_A15D85: Branch loc_A15D91
  loc_A15D88: FLdRfVar var_94
  loc_A15D8B: CStrVar
  loc_A15D8D: IStStr
  loc_A15D91: ILdRf arg_24
  loc_A15D94: ImpAdCallI2 IsMissing()
  loc_A15D99: NotI4
  loc_A15D9A: BranchF loc_A15E3D
  loc_A15D9D: FLdRfVar arg_28
  loc_A15DA0: CVarRef
  loc_A15DA5: ImpAdCallI2 IsMissing()
  loc_A15DAA: FLdUI1
  loc_A15DAE: CI2UI1
  loc_A15DB0: LitI2_Byte 0
  loc_A15DB2: EqI2
  loc_A15DB3: OrI4
  loc_A15DB4: BranchF loc_A15DBF
  loc_A15DB7: LitI2_Byte 2
  loc_A15DB9: CUI1I2
  loc_A15DBB: FStUI1 arg_28
  loc_A15DBF: ILdRfDarg arg_24
  loc_A15DC5: LitVarStr var_A4, vbNullString
  loc_A15DCA: HardType
  loc_A15DCB: EqVarBool
  loc_A15DCD: BranchF loc_A15DD8
  loc_A15DD0: LitVarI2 var_A4, 0
  loc_A15DD5: IStDarg arg_24
  loc_A15DD8: FLdUI1
  loc_A15DDC: CI4UI1
  loc_A15DDD: ILdRfDarg arg_24
  loc_A15DE3: FnCDblVar
  loc_A15DE5: CVarR8
  loc_A15DE9: FLdRfVar var_D4
  loc_A15DEC: ImpAdCallFPR4  = Round(, )
  loc_A15DF1: FLdUI1
  loc_A15DF5: CI4UI1
  loc_A15DF6: FLdRfVar var_94
  loc_A15DF9: FnCDblVar
  loc_A15DFB: CVarR8
  loc_A15DFF: FLdRfVar var_104
  loc_A15E02: ImpAdCallFPR4  = Round(, )
  loc_A15E07: LitI4 -1
  loc_A15E0C: LitI4 0
  loc_A15E11: LitI4 -1
  loc_A15E16: FLdUI1
  loc_A15E1A: CI4UI1
  loc_A15E1B: FLdRfVar var_D4
  loc_A15E1E: FLdRfVar var_104
  loc_A15E21: AddVar var_114
  loc_A15E25: ImpAdCallI2 FormatNumber(, , , , )
  loc_A15E2A: CVarStr var_124
  loc_A15E2D: IStDarg arg_24
  loc_A15E30: FFreeVar var_B4 = "": var_E4 = "": var_D4 = "": var_104 = ""
  loc_A15E3D: ExitProc
End Function

Private Function Proc_261_20_A10BF8(arg_1C, arg_20, arg_24) 'A10BF8
  'Data Table: 42C928
  loc_A10A90: FDupVar
  loc_A10A96: FLdRfVar var_98
  loc_A10A99: ImpAdCallI2 IsNull()
  loc_A10A9E: BranchF loc_A10AAE
  loc_A10AA1: LitStr vbNullString
  loc_A10AA4: ILdRf var_88
  loc_A10AA7: StFixedStrR
  loc_A10AAB: Branch loc_A10BF5
  loc_A10AAE: FLdRfVar arg_1C
  loc_A10AB1: CVarRef
  loc_A10AB6: ImpAdCallI2 IsMissing()
  loc_A10ABB: BranchF loc_A10AC9
  loc_A10ABE: FLdRfVar var_98
  loc_A10AC1: CStrVar
  loc_A10AC3: FStStr var_88
  loc_A10AC6: Branch loc_A10B49
  loc_A10AC9: FLdI2 arg_1C
  loc_A10ACC: BranchF loc_A10B41
  loc_A10ACF: FLdRfVar arg_24
  loc_A10AD2: CVarRef
  loc_A10AD7: ImpAdCallI2 IsMissing()
  loc_A10ADC: FLdUI1
  loc_A10AE0: CI2UI1
  loc_A10AE2: LitI2_Byte 0
  loc_A10AE4: EqI2
  loc_A10AE5: OrI4
  loc_A10AE6: BranchF loc_A10AF1
  loc_A10AE9: LitI2_Byte 2
  loc_A10AEB: CUI1I2
  loc_A10AED: FStUI1 arg_24
  loc_A10AF1: FLdRfVar var_98
  loc_A10AF4: LitVarStr var_A8, vbNullString
  loc_A10AF9: HardType
  loc_A10AFA: EqVar var_B8
  loc_A10AFE: FLdRfVar var_98
  loc_A10B01: ImpAdCallI2 IsNull()
  loc_A10B06: CVarBoolI2 var_C8
  loc_A10B0A: OrVar var_D8
  loc_A10B0E: CBoolVarNull
  loc_A10B10: FFree1Var var_C8 = ""
  loc_A10B13: BranchF loc_A10B1F
  loc_A10B16: LitVarI2 var_A8, 0
  loc_A10B1B: FStVar var_98
  loc_A10B1F: LitI4 -1
  loc_A10B24: LitI4 0
  loc_A10B29: LitI4 -1
  loc_A10B2E: FLdUI1
  loc_A10B32: CI4UI1
  loc_A10B33: FLdRfVar var_98
  loc_A10B36: ImpAdCallI2 FormatNumber(, , , , )
  loc_A10B3B: FStStr var_88
  loc_A10B3E: Branch loc_A10B49
  loc_A10B41: FLdRfVar var_98
  loc_A10B44: CStrVar
  loc_A10B46: FStStr var_88
  loc_A10B49: ILdRf arg_20
  loc_A10B4C: ImpAdCallI2 IsMissing()
  loc_A10B51: NotI4
  loc_A10B52: BranchF loc_A10BF5
  loc_A10B55: FLdRfVar arg_24
  loc_A10B58: CVarRef
  loc_A10B5D: ImpAdCallI2 IsMissing()
  loc_A10B62: FLdUI1
  loc_A10B66: CI2UI1
  loc_A10B68: LitI2_Byte 0
  loc_A10B6A: EqI2
  loc_A10B6B: OrI4
  loc_A10B6C: BranchF loc_A10B77
  loc_A10B6F: LitI2_Byte 2
  loc_A10B71: CUI1I2
  loc_A10B73: FStUI1 arg_24
  loc_A10B77: ILdRfDarg arg_20
  loc_A10B7D: LitVarStr var_A8, vbNullString
  loc_A10B82: HardType
  loc_A10B83: EqVarBool
  loc_A10B85: BranchF loc_A10B90
  loc_A10B88: LitVarI2 var_A8, 0
  loc_A10B8D: IStDarg arg_20
  loc_A10B90: FLdUI1
  loc_A10B94: CI4UI1
  loc_A10B95: ILdRfDarg arg_20
  loc_A10B9B: FnCDblVar
  loc_A10B9D: CVarR8
  loc_A10BA1: FLdRfVar var_D8
  loc_A10BA4: ImpAdCallFPR4  = Round(, )
  loc_A10BA9: FLdUI1
  loc_A10BAD: CI4UI1
  loc_A10BAE: FLdRfVar var_98
  loc_A10BB1: FnCDblVar
  loc_A10BB3: CVarR8
  loc_A10BB7: FLdRfVar var_108
  loc_A10BBA: ImpAdCallFPR4  = Round(, )
  loc_A10BBF: LitI4 -1
  loc_A10BC4: LitI4 0
  loc_A10BC9: LitI4 -1
  loc_A10BCE: FLdUI1
  loc_A10BD2: CI4UI1
  loc_A10BD3: FLdRfVar var_D8
  loc_A10BD6: FLdRfVar var_108
  loc_A10BD9: AddVar var_118
  loc_A10BDD: ImpAdCallI2 FormatNumber(, , , , )
  loc_A10BE2: CVarStr var_128
  loc_A10BE5: IStDarg arg_20
  loc_A10BE8: FFreeVar var_B8 = "": var_F8 = "": var_D8 = "": var_108 = ""
  loc_A10BF5: ExitProc
End Function

Private Function Proc_261_21_A09A9C(arg_C, arg_10, arg_14, arg_18, arg_1C) 'A09A9C
  'Data Table: 42C928
  loc_A09950: ILdRf arg_C
  loc_A09953: FStStrCopy var_8C
  loc_A09956: ILdRf arg_10
  loc_A09959: FStStrCopy var_90
  loc_A0995C: ILdRf arg_18
  loc_A0995F: FStStrCopy var_94
  loc_A09962: ILdRf arg_1C
  loc_A09965: FStStrCopy var_98
  loc_A09968: ILdRf var_8C
  loc_A0996B: LitStr vbNullString
  loc_A0996E: EqStr
  loc_A09970: BranchF loc_A09979
  loc_A09973: LitStr "&nbsp;"
  loc_A09976: FStStrCopy var_8C
  loc_A09979: FLdRfVar arg_14
  loc_A0997C: CVarRef
  loc_A09981: ImpAdCallI2 IsMissing()
  loc_A09986: NotI4
  loc_A09987: BranchF loc_A0999F
  loc_A0998A: FLdI2 arg_14
  loc_A0998D: BranchF loc_A0999F
  loc_A09990: ILdRf var_8C
  loc_A09993: CVarStr var_A8
  loc_A09996: PopAdLdVar
  loc_A09997: ImpAdCallI2 Proc_261_23_9A538C(, , , )
  loc_A0999C: FStStr var_8C
  loc_A0999F: ILdRf var_94
  loc_A099A2: LitStr vbNullString
  loc_A099A5: NeStr
  loc_A099A7: BranchF loc_A099BE
  loc_A099AA: LitStr " class="""
  loc_A099AD: ILdRf var_94
  loc_A099B0: ConcatStr
  loc_A099B1: FStStrNoPop var_AC
  loc_A099B4: LitStr """"
  loc_A099B7: ConcatStr
  loc_A099B8: FStStr var_94
  loc_A099BB: FFree1Str var_AC
  loc_A099BE: ILdRf var_90
  loc_A099C1: LitStr vbNullString
  loc_A099C4: EqStr
  loc_A099C6: BranchF loc_A09A2E
  loc_A099C9: FLdRfVar var_8C
  loc_A099CC: CVarRef
  loc_A099D1: ImpAdCallI2 IsNumeric()
  loc_A099D6: BranchF loc_A099F0
  loc_A099D9: LitStr "       <td nowrap align=""right"">"
  loc_A099DC: ILdRf var_8C
  loc_A099DF: ConcatStr
  loc_A099E0: FStStrNoPop var_AC
  loc_A099E3: LitStr "</td>"
  loc_A099E6: ConcatStr
  loc_A099E7: FStStr var_88
  loc_A099EA: FFree1Str var_AC
  loc_A099ED: Branch loc_A09A2B
  loc_A099F0: FLdRfVar var_8C
  loc_A099F3: CVarRef
  loc_A099F8: ImpAdCallI2 IsDate()
  loc_A099FD: BranchF loc_A09A17
  loc_A09A00: LitStr "       <td nowrap align=""center"">"
  loc_A09A03: ILdRf var_8C
  loc_A09A06: ConcatStr
  loc_A09A07: FStStrNoPop var_AC
  loc_A09A0A: LitStr "</td>"
  loc_A09A0D: ConcatStr
  loc_A09A0E: FStStr var_88
  loc_A09A11: FFree1Str var_AC
  loc_A09A14: Branch loc_A09A2B
  loc_A09A17: LitStr "       <td align=""left"">"
  loc_A09A1A: ILdRf var_8C
  loc_A09A1D: ConcatStr
  loc_A09A1E: FStStrNoPop var_AC
  loc_A09A21: LitStr "</td>"
  loc_A09A24: ConcatStr
  loc_A09A25: FStStr var_88
  loc_A09A28: FFree1Str var_AC
  loc_A09A2B: Branch loc_A09A99
  loc_A09A2E: ILdRf var_98
  loc_A09A31: LitStr vbNullString
  loc_A09A34: NeStr
  loc_A09A36: BranchF loc_A09A4D
  loc_A09A39: LitStr " rowspan="""
  loc_A09A3C: ILdRf var_98
  loc_A09A3F: ConcatStr
  loc_A09A40: FStStrNoPop var_AC
  loc_A09A43: LitStr """ "
  loc_A09A46: ConcatStr
  loc_A09A47: FStStr var_98
  loc_A09A4A: FFree1Str var_AC
  loc_A09A4D: LitStr "       <td "
  loc_A09A50: ILdRf var_98
  loc_A09A53: ConcatStr
  loc_A09A54: FStStrNoPop var_AC
  loc_A09A57: LitStr " align="""
  loc_A09A5A: ConcatStr
  loc_A09A5B: FStStrNoPop var_B0
  loc_A09A5E: ILdRf var_90
  loc_A09A61: ConcatStr
  loc_A09A62: FStStrNoPop var_B4
  loc_A09A65: LitStr """"
  loc_A09A68: ConcatStr
  loc_A09A69: FStStrNoPop var_B8
  loc_A09A6C: ILdRf var_94
  loc_A09A6F: ConcatStr
  loc_A09A70: FStStrNoPop var_BC
  loc_A09A73: LitStr ">"
  loc_A09A76: ConcatStr
  loc_A09A77: FStStrNoPop var_C0
  loc_A09A7A: ILdRf var_8C
  loc_A09A7D: ConcatStr
  loc_A09A7E: FStStrNoPop var_C4
  loc_A09A81: LitStr "</td>"
  loc_A09A84: ConcatStr
  loc_A09A85: FStStr var_88
  loc_A09A88: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_A09A99: ExitProc
End Function

Private Function Proc_261_22_9C4DBC(arg_C, arg_10, arg_14, arg_18) '9C4DBC
  'Data Table: 42C928
  loc_9C4D04: ILdRf arg_C
  loc_9C4D07: FStStrCopy var_8C
  loc_9C4D0A: ILdRf arg_10
  loc_9C4D0D: FStStrCopy var_90
  loc_9C4D10: ILdRf arg_14
  loc_9C4D13: FStStrCopy var_94
  loc_9C4D16: ILdRf arg_18
  loc_9C4D19: FStStrCopy var_98
  loc_9C4D1C: ILdRf var_8C
  loc_9C4D1F: LitStr vbNullString
  loc_9C4D22: EqStr
  loc_9C4D24: BranchF loc_9C4D2D
  loc_9C4D27: LitStr "&nbsp;"
  loc_9C4D2A: FStStrCopy var_8C
  loc_9C4D2D: LitStr " class="""
  loc_9C4D30: ILdRf var_90
  loc_9C4D33: ConcatStr
  loc_9C4D34: FStStrNoPop var_9C
  loc_9C4D37: LitStr """"
  loc_9C4D3A: ConcatStr
  loc_9C4D3B: FStStr var_90
  loc_9C4D3E: FFree1Str var_9C
  loc_9C4D41: ILdRf var_94
  loc_9C4D44: LitStr vbNullString
  loc_9C4D47: NeStr
  loc_9C4D49: BranchF loc_9C4D60
  loc_9C4D4C: LitStr " rowspan="""
  loc_9C4D4F: ILdRf var_94
  loc_9C4D52: ConcatStr
  loc_9C4D53: FStStrNoPop var_9C
  loc_9C4D56: LitStr """ "
  loc_9C4D59: ConcatStr
  loc_9C4D5A: FStStr var_94
  loc_9C4D5D: FFree1Str var_9C
  loc_9C4D60: ILdRf var_98
  loc_9C4D63: LitStr vbNullString
  loc_9C4D66: NeStr
  loc_9C4D68: BranchF loc_9C4D7F
  loc_9C4D6B: LitStr " colspan="""
  loc_9C4D6E: ILdRf var_98
  loc_9C4D71: ConcatStr
  loc_9C4D72: FStStrNoPop var_9C
  loc_9C4D75: LitStr """ "
  loc_9C4D78: ConcatStr
  loc_9C4D79: FStStr var_98
  loc_9C4D7C: FFree1Str var_9C
  loc_9C4D7F: LitStr "       <td"
  loc_9C4D82: ILdRf var_94
  loc_9C4D85: ConcatStr
  loc_9C4D86: FStStrNoPop var_9C
  loc_9C4D89: ILdRf var_98
  loc_9C4D8C: ConcatStr
  loc_9C4D8D: FStStrNoPop var_A0
  loc_9C4D90: ILdRf var_90
  loc_9C4D93: ConcatStr
  loc_9C4D94: FStStrNoPop var_A4
  loc_9C4D97: LitStr ">"
  loc_9C4D9A: ConcatStr
  loc_9C4D9B: FStStrNoPop var_A8
  loc_9C4D9E: ILdRf var_8C
  loc_9C4DA1: ConcatStr
  loc_9C4DA2: FStStrNoPop var_AC
  loc_9C4DA5: LitStr "</td>"
  loc_9C4DA8: ConcatStr
  loc_9C4DA9: FStStr var_88
  loc_9C4DAC: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9C4DB9: ExitProc
End Function

Private Function Proc_261_23_9A538C() '9A538C
  'Data Table: 42C928
  loc_9A5318: FDupVar
  loc_9A531E: FLdRfVar var_98
  loc_9A5321: ImpAdCallI2 IsNumeric()
  loc_9A5326: BranchF loc_9A5382
  loc_9A5329: FLdRfVar var_98
  loc_9A532C: CR4Var
  loc_9A532D: FnSgnR4
  loc_9A532F: LitI2_Byte 0
  loc_9A5331: LtI2
  loc_9A5332: BranchF loc_9A5377
  loc_9A5335: LitVarStr var_E8, "("
  loc_9A533A: FLdRfVar var_98
  loc_9A533D: FnLenVar var_A8
  loc_9A5341: LitVarI2 var_B8, 1
  loc_9A5346: SubVar var_C8
  loc_9A534A: CI4Var
  loc_9A534C: FLdRfVar var_98
  loc_9A534F: FLdRfVar var_D8
  loc_9A5352: ImpAdCallFPR4  = Right(, )
  loc_9A5357: FLdRfVar var_D8
  loc_9A535A: ConcatVar var_F8
  loc_9A535E: LitVarStr var_108, ")"
  loc_9A5363: ConcatVar var_118
  loc_9A5367: CStrVarTmp
  loc_9A5368: FStStr var_88
  loc_9A536B: FFreeVar var_D8 = "": var_F8 = ""
  loc_9A5374: Branch loc_9A537F
  loc_9A5377: FLdRfVar var_98
  loc_9A537A: CStrVar
  loc_9A537C: FStStr var_88
  loc_9A537F: Branch loc_9A538A
  loc_9A5382: FLdRfVar var_98
  loc_9A5385: CStrVar
  loc_9A5387: FStStr var_88
  loc_9A538A: ExitProc
End Function

Private Function Proc_261_24_A3529C(arg_C) 'A3529C
  'Data Table: 42C928
  loc_A350EE: ILdRf arg_C
  loc_A350F1: FStStrCopy var_8C
  loc_A350F6: OnErrorGoto loc_A3521C
  loc_A350FB: FLdRfVar var_90
  loc_A350FE: ImpAdLdRf MemVar_C44F9C
  loc_A35101: NewIfNullPr Me
  loc_A35104:  = Me.Global.Printer
  loc_A35109: FLdPr var_90
  loc_A3510C: LateIdLdVar var_A0 DispID_28 1
  loc_A35113: CStrVarTmp
  loc_A35114: FStStrNoPop var_A4
  loc_A35117: ILdRf var_8C
  loc_A3511A: NeStr
  loc_A3511C: FFree1Str var_A4
  loc_A3511F: FFree1Ad var_90
  loc_A35122: FFree1Var var_A0 = ""
  loc_A35125: BranchF loc_A3513B
  loc_A3512A: ILdRf var_8C
  loc_A3512D: FStStrCopy var_A4
  loc_A35130: FLdRfVar var_A4
  loc_A35133: ImpAdCallFPR4 Proc_265_1_9A06AC()
  loc_A35138: FFree1Str var_A4
  loc_A3513F: LitI4 &H2000
  loc_A35144: FLdRfVar var_A0
  loc_A35147: ImpAdCallFPR4  = Space()
  loc_A3514C: FLdRfVar var_A0
  loc_A3514F: CStrVarTmp
  loc_A35150: FStStr var_AC
  loc_A35153: FFree1Var var_A0 = ""
  loc_A35158: ILdRf var_AC
  loc_A3515B: FnLenStr
  loc_A3515C: ILdRf var_AC
  loc_A3515F: FLdRfVar var_1CC
  loc_A35162: CStr2Ansi
  loc_A35163: ILdRf var_1CC
  loc_A35166: LitStr vbNullString
  loc_A35169: FLdRfVar var_1C8
  loc_A3516C: CStr2Ansi
  loc_A3516D: ILdRf var_1C8
  loc_A35170: LitI4 0
  loc_A35175: LitStr "PrinterPorts"
  loc_A35178: FLdRfVar var_A4
  loc_A3517B: CStr2Ansi
  loc_A3517C: ILdRf var_A4
  loc_A3517F: ImpAdCallI2 GetProfileString(, , , , )
  loc_A35184: FStR4 var_1D0
  loc_A35187: SetLastSystemError
  loc_A35188: ILdRf var_1CC
  loc_A3518B: FLdRfVar var_AC
  loc_A3518E: CStr2Uni
  loc_A35190: ILdRf var_1D0
  loc_A35193: FStR4 var_A8
  loc_A35196: FFreeStr var_A4 = "": var_1C8 = ""
  loc_A351A1: LitI4 &H94
  loc_A351A6: FStR4 var_1C0
  loc_A351AB: LitI4 &H80
  loc_A351B0: ImpAdCallI2 Space$()
  loc_A351B5: FStStrNoPop var_A4
  loc_A351B8: FLdRfVar var_1AC
  loc_A351BB: StFixedStr
  loc_A351BE: FFree1Str var_A4
  loc_A351C3: FLdRfVar var_1C0
  loc_A351C6: FLdRfVar var_264
  loc_A351C9: CRec2Ansi arg_88
  loc_A351CC: FLdRfVar var_264
  loc_A351CF: ImpAdCallI2 GetVersionEx()
  loc_A351D4: FStI2 var_266
  loc_A351D7: SetLastSystemError
  loc_A351D8: FLdRfVar var_264
  loc_A351DB: FLdRfVar var_1C0
  loc_A351DE: CRec2Uni arg_88
  loc_A351E1: FLdI2 var_266
  loc_A351E4: FStI2 var_1C2
  loc_A351E9: ILdRf var_8C
  loc_A351EC: ImpAdStStrCopy MemVar_C3D848
  loc_A351F2: ILdRf var_1B0
  loc_A351F5: LitI4 1
  loc_A351FA: EqI4
  loc_A351FB: BranchF loc_A3520B
  loc_A35200: ILdRf var_8C
  loc_A35203: ImpAdCallFPR4 Proc_265_5_A673E8()
  loc_A35208: Branch loc_A35217
  loc_A3520F: ILdRf var_8C
  loc_A35212: ImpAdCallFPR4 Proc_265_7_9D8014()
  loc_A3521B: ExitProc
  loc_A3521E: LitI4 0
  loc_A35223: LitStr "Error al acceder a la impresora."
  loc_A35226: LitStr vbCrLf
  loc_A35229: ConcatStr
  loc_A3522A: FStStrNoPop var_A4
  loc_A3522D: LitStr "Cod. "
  loc_A35230: ConcatStr
  loc_A35231: FStStrNoPop var_1C8
  loc_A35234: FLdRfVar var_1D0
  loc_A35237: ImpAdCallI2 Err 'rtcErrObj
  loc_A3523C: FStAdFunc var_90
  loc_A3523F: FLdPr var_90
  loc_A35242:  = Err.Number
  loc_A35247: ILdRf var_1D0
  loc_A3524A: CStrI4
  loc_A3524C: FStStrNoPop var_1CC
  loc_A3524F: ConcatStr
  loc_A35250: FStStrNoPop var_26C
  loc_A35253: LitStr ": "
  loc_A35256: ConcatStr
  loc_A35257: FStStrNoPop var_278
  loc_A3525A: FLdRfVar var_274
  loc_A3525D: ImpAdCallI2 Err 'rtcErrObj
  loc_A35262: FStAdFunc var_270
  loc_A35265: FLdPr var_270
  loc_A35268:  = Err.Description
  loc_A3526D: ILdRf var_274
  loc_A35270: ConcatStr
  loc_A35271: FStStrNoPop var_27C
  loc_A35274: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A35279: FFreeStr var_A4 = "": var_1C8 = "": var_1CC = "": var_26C = "": var_278 = "": var_274 = ""
  loc_A3528A: FFreeAd var_90 = ""
  loc_A35293: Resume
  loc_A35299: ExitProc
End Function

Private Function Proc_261_25_9B8B60(arg_C) '9B8B60
  'Data Table: 42C928
  loc_9B8AB8: ILdRf arg_C
  loc_9B8ABB: FStStrCopy var_88
  loc_9B8ABE: FLdRfVar var_AC
  loc_9B8AC1: FLdRfVar var_A8
  loc_9B8AC4: LitI4 2
  loc_9B8AC9: FLdRfVar var_8C
  loc_9B8ACC: NewIfNullPr IFileSystem3
  loc_9B8ACF: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_9B8AD4: FLdPr var_A8
  loc_9B8AD7:  = Me.Path
  loc_9B8ADC: FLdRfVar var_B0
  loc_9B8ADF: LitStr "exe.bat"
  loc_9B8AE2: ILdRf var_AC
  loc_9B8AE5: FLdRfVar var_8C
  loc_9B8AE8: NewIfNullPr IFileSystem3
  loc_9B8AEB: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_9B8AF0: FLdZeroAd var_B0
  loc_9B8AF3: FStStr var_A0
  loc_9B8AF6: FFree1Str var_AC
  loc_9B8AF9: FFree1Ad var_A8
  loc_9B8AFC: FLdRfVar var_A8
  loc_9B8AFF: LitI2_Byte 0
  loc_9B8B01: LitI2_Byte &HFF
  loc_9B8B03: ILdRf var_A0
  loc_9B8B06: FLdRfVar var_8C
  loc_9B8B09: NewIfNullPr IFileSystem3
  loc_9B8B0C: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9B8B11: FLdZeroAd var_A8
  loc_9B8B14: FStVarAdFunc
  loc_9B8B18: FLdRfVar var_88
  loc_9B8B1B: CDargRef
  loc_9B8B1F: FLdRfVar var_9C
  loc_9B8B22: LdPrVar
  loc_9B8B24: LateMemCall
  loc_9B8B2A: LitVarStr var_C0, "del exe.bat"
  loc_9B8B2F: PopAdLdVar
  loc_9B8B30: FLdRfVar var_9C
  loc_9B8B33: LdPrVar
  loc_9B8B35: LateMemCall
  loc_9B8B3B: FLdRfVar var_9C
  loc_9B8B3E: LdPrVar
  loc_9B8B40: LateMemCall
  loc_9B8B46: LitI4 0
  loc_9B8B4B: FLdRfVar var_A0
  loc_9B8B4E: CVarRef
  loc_9B8B53: ImpAdCallFPR4 push Shell(, )
  loc_9B8B58: CI4R8
  loc_9B8B59: FStR4 var_A4
  loc_9B8B5C: ExitProc
End Function

Private Function Proc_261_26_9A5B0C(arg_C) '9A5B0C
  'Data Table: 42C928
  loc_9A5A98: LitI4 2
  loc_9A5A9D: FLdFPR8 arg_C
  loc_9A5AA0: FLdFPR8 arg_C
  loc_9A5AA3: FnIntR8
  loc_9A5AA5: SubR4
  loc_9A5AA6: LitI2_Byte &H64
  loc_9A5AA8: CR8I2
  loc_9A5AA9: MulR8
  loc_9A5AAA: CVarR8
  loc_9A5AAE: FLdRfVar var_BC
  loc_9A5AB1: ImpAdCallFPR4  = Round(, )
  loc_9A5AB6: FLdFPR8 arg_C
  loc_9A5AB9: FnIntR8
  loc_9A5ABB: PopFPR8
  loc_9A5ABC: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_9A5AC1: FStStrNoPop var_8C
  loc_9A5AC4: LitStr " con "
  loc_9A5AC7: ConcatStr
  loc_9A5AC8: FStStrNoPop var_E0
  loc_9A5ACB: LitI4 1
  loc_9A5AD0: LitI4 1
  loc_9A5AD5: LitVarStr var_CC, "00"
  loc_9A5ADA: FStVarCopyObj var_DC
  loc_9A5ADD: FLdRfVar var_DC
  loc_9A5AE0: FLdRfVar var_BC
  loc_9A5AE3: ImpAdCallI2 Format$(, )
  loc_9A5AE8: FStStrNoPop var_E4
  loc_9A5AEB: ConcatStr
  loc_9A5AEC: FStStrNoPop var_E8
  loc_9A5AEF: LitStr "/100 centavos"
  loc_9A5AF2: ConcatStr
  loc_9A5AF3: FStStr var_88
  loc_9A5AF6: FFreeStr var_8C = "": var_E0 = "": var_E4 = ""
  loc_9A5B01: FFreeVar var_AC = "": var_BC = ""
  loc_9A5B0A: ExitProc
End Function

Private Function Proc_261_27_AE8604(arg_C) 'AE8604
  'Data Table: 42C928
  loc_AE7F08: LitI4 0
  loc_AE7F0D: FLdRfVar arg_C
  loc_AE7F10: CVarRef
  loc_AE7F15: FLdRfVar var_A8
  loc_AE7F18: ImpAdCallFPR4  = Round(, )
  loc_AE7F1D: FLdRfVar var_A8
  loc_AE7F20: FStVar var_B8
  loc_AE7F24: FLdRfVar var_B8
  loc_AE7F27: LitVarI2 var_98, 0
  loc_AE7F2C: HardType
  loc_AE7F2D: EqVarBool
  loc_AE7F2F: BranchF loc_AE7F3B
  loc_AE7F32: LitStr "CERO"
  loc_AE7F35: FStStrCopy var_88
  loc_AE7F38: Branch loc_AE859F
  loc_AE7F3B: FLdRfVar var_B8
  loc_AE7F3E: LitVarI2 var_98, 1
  loc_AE7F43: HardType
  loc_AE7F44: EqVarBool
  loc_AE7F46: BranchF loc_AE7F52
  loc_AE7F49: LitStr "UN"
  loc_AE7F4C: FStStrCopy var_88
  loc_AE7F4F: Branch loc_AE859F
  loc_AE7F52: FLdRfVar var_B8
  loc_AE7F55: LitVarI2 var_98, 2
  loc_AE7F5A: HardType
  loc_AE7F5B: EqVarBool
  loc_AE7F5D: BranchF loc_AE7F69
  loc_AE7F60: LitStr "DOS"
  loc_AE7F63: FStStrCopy var_88
  loc_AE7F66: Branch loc_AE859F
  loc_AE7F69: FLdRfVar var_B8
  loc_AE7F6C: LitVarI2 var_98, 3
  loc_AE7F71: HardType
  loc_AE7F72: EqVarBool
  loc_AE7F74: BranchF loc_AE7F80
  loc_AE7F77: LitStr "TRES"
  loc_AE7F7A: FStStrCopy var_88
  loc_AE7F7D: Branch loc_AE859F
  loc_AE7F80: FLdRfVar var_B8
  loc_AE7F83: LitVarI2 var_98, 4
  loc_AE7F88: HardType
  loc_AE7F89: EqVarBool
  loc_AE7F8B: BranchF loc_AE7F97
  loc_AE7F8E: LitStr "CUATRO"
  loc_AE7F91: FStStrCopy var_88
  loc_AE7F94: Branch loc_AE859F
  loc_AE7F97: FLdRfVar var_B8
  loc_AE7F9A: LitVarI2 var_98, 5
  loc_AE7F9F: HardType
  loc_AE7FA0: EqVarBool
  loc_AE7FA2: BranchF loc_AE7FAE
  loc_AE7FA5: LitStr "CINCO"
  loc_AE7FA8: FStStrCopy var_88
  loc_AE7FAB: Branch loc_AE859F
  loc_AE7FAE: FLdRfVar var_B8
  loc_AE7FB1: LitVarI2 var_98, 6
  loc_AE7FB6: HardType
  loc_AE7FB7: EqVarBool
  loc_AE7FB9: BranchF loc_AE7FC5
  loc_AE7FBC: LitStr "SEIS"
  loc_AE7FBF: FStStrCopy var_88
  loc_AE7FC2: Branch loc_AE859F
  loc_AE7FC5: FLdRfVar var_B8
  loc_AE7FC8: LitVarI2 var_98, 7
  loc_AE7FCD: HardType
  loc_AE7FCE: EqVarBool
  loc_AE7FD0: BranchF loc_AE7FDC
  loc_AE7FD3: LitStr "SIETE"
  loc_AE7FD6: FStStrCopy var_88
  loc_AE7FD9: Branch loc_AE859F
  loc_AE7FDC: FLdRfVar var_B8
  loc_AE7FDF: LitVarI2 var_98, 8
  loc_AE7FE4: HardType
  loc_AE7FE5: EqVarBool
  loc_AE7FE7: BranchF loc_AE7FF3
  loc_AE7FEA: LitStr "OCHO"
  loc_AE7FED: FStStrCopy var_88
  loc_AE7FF0: Branch loc_AE859F
  loc_AE7FF3: FLdRfVar var_B8
  loc_AE7FF6: LitVarI2 var_98, 9
  loc_AE7FFB: HardType
  loc_AE7FFC: EqVarBool
  loc_AE7FFE: BranchF loc_AE800A
  loc_AE8001: LitStr "NUEVE"
  loc_AE8004: FStStrCopy var_88
  loc_AE8007: Branch loc_AE859F
  loc_AE800A: FLdRfVar var_B8
  loc_AE800D: LitVarI2 var_98, 10
  loc_AE8012: HardType
  loc_AE8013: EqVarBool
  loc_AE8015: BranchF loc_AE8021
  loc_AE8018: LitStr "DIEZ"
  loc_AE801B: FStStrCopy var_88
  loc_AE801E: Branch loc_AE859F
  loc_AE8021: FLdRfVar var_B8
  loc_AE8024: LitVarI2 var_98, 11
  loc_AE8029: HardType
  loc_AE802A: EqVarBool
  loc_AE802C: BranchF loc_AE8038
  loc_AE802F: LitStr "ONCE"
  loc_AE8032: FStStrCopy var_88
  loc_AE8035: Branch loc_AE859F
  loc_AE8038: FLdRfVar var_B8
  loc_AE803B: LitVarI2 var_98, 12
  loc_AE8040: HardType
  loc_AE8041: EqVarBool
  loc_AE8043: BranchF loc_AE804F
  loc_AE8046: LitStr "DOCE"
  loc_AE8049: FStStrCopy var_88
  loc_AE804C: Branch loc_AE859F
  loc_AE804F: FLdRfVar var_B8
  loc_AE8052: LitVarI2 var_98, 13
  loc_AE8057: HardType
  loc_AE8058: EqVarBool
  loc_AE805A: BranchF loc_AE8066
  loc_AE805D: LitStr "TRECE"
  loc_AE8060: FStStrCopy var_88
  loc_AE8063: Branch loc_AE859F
  loc_AE8066: FLdRfVar var_B8
  loc_AE8069: LitVarI2 var_98, 14
  loc_AE806E: HardType
  loc_AE806F: EqVarBool
  loc_AE8071: BranchF loc_AE807D
  loc_AE8074: LitStr "CATORCE"
  loc_AE8077: FStStrCopy var_88
  loc_AE807A: Branch loc_AE859F
  loc_AE807D: FLdRfVar var_B8
  loc_AE8080: LitVarI2 var_98, 15
  loc_AE8085: HardType
  loc_AE8086: EqVarBool
  loc_AE8088: BranchF loc_AE8094
  loc_AE808B: LitStr "QUINCE"
  loc_AE808E: FStStrCopy var_88
  loc_AE8091: Branch loc_AE859F
  loc_AE8094: FLdRfVar var_B8
  loc_AE8097: LitVarI2 var_98, 20
  loc_AE809C: HardType
  loc_AE809D: LtVarBool
  loc_AE809F: BranchF loc_AE80BF
  loc_AE80A2: LitStr "DIECI"
  loc_AE80A5: FLdFPR8 arg_C
  loc_AE80A8: LitI2_Byte &HA
  loc_AE80AA: CR8I2
  loc_AE80AB: SubR4
  loc_AE80AC: PopFPR8
  loc_AE80AD: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE80B2: FStStrNoPop var_BC
  loc_AE80B5: ConcatStr
  loc_AE80B6: FStStr var_88
  loc_AE80B9: FFree1Str var_BC
  loc_AE80BC: Branch loc_AE859F
  loc_AE80BF: FLdRfVar var_B8
  loc_AE80C2: LitVarI2 var_98, 20
  loc_AE80C7: HardType
  loc_AE80C8: EqVarBool
  loc_AE80CA: BranchF loc_AE80D6
  loc_AE80CD: LitStr "VEINTE"
  loc_AE80D0: FStStrCopy var_88
  loc_AE80D3: Branch loc_AE859F
  loc_AE80D6: FLdRfVar var_B8
  loc_AE80D9: LitVarI2 var_98, 30
  loc_AE80DE: HardType
  loc_AE80DF: LtVarBool
  loc_AE80E1: BranchF loc_AE8101
  loc_AE80E4: LitStr "VEINTI"
  loc_AE80E7: FLdFPR8 arg_C
  loc_AE80EA: LitI2_Byte &H14
  loc_AE80EC: CR8I2
  loc_AE80ED: SubR4
  loc_AE80EE: PopFPR8
  loc_AE80EF: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE80F4: FStStrNoPop var_BC
  loc_AE80F7: ConcatStr
  loc_AE80F8: FStStr var_88
  loc_AE80FB: FFree1Str var_BC
  loc_AE80FE: Branch loc_AE859F
  loc_AE8101: FLdRfVar var_B8
  loc_AE8104: LitVarI2 var_98, 30
  loc_AE8109: HardType
  loc_AE810A: EqVarBool
  loc_AE810C: BranchF loc_AE8118
  loc_AE810F: LitStr "TREINTA"
  loc_AE8112: FStStrCopy var_88
  loc_AE8115: Branch loc_AE859F
  loc_AE8118: FLdRfVar var_B8
  loc_AE811B: LitVarI2 var_98, 40
  loc_AE8120: HardType
  loc_AE8121: EqVarBool
  loc_AE8123: BranchF loc_AE812F
  loc_AE8126: LitStr "CUARENTA"
  loc_AE8129: FStStrCopy var_88
  loc_AE812C: Branch loc_AE859F
  loc_AE812F: FLdRfVar var_B8
  loc_AE8132: LitVarI2 var_98, 50
  loc_AE8137: HardType
  loc_AE8138: EqVarBool
  loc_AE813A: BranchF loc_AE8146
  loc_AE813D: LitStr "CINCUENTA"
  loc_AE8140: FStStrCopy var_88
  loc_AE8143: Branch loc_AE859F
  loc_AE8146: FLdRfVar var_B8
  loc_AE8149: LitVarI2 var_98, 60
  loc_AE814E: HardType
  loc_AE814F: EqVarBool
  loc_AE8151: BranchF loc_AE815D
  loc_AE8154: LitStr "SESENTA"
  loc_AE8157: FStStrCopy var_88
  loc_AE815A: Branch loc_AE859F
  loc_AE815D: FLdRfVar var_B8
  loc_AE8160: LitVarI2 var_98, 70
  loc_AE8165: HardType
  loc_AE8166: EqVarBool
  loc_AE8168: BranchF loc_AE8174
  loc_AE816B: LitStr "SETENTA"
  loc_AE816E: FStStrCopy var_88
  loc_AE8171: Branch loc_AE859F
  loc_AE8174: FLdRfVar var_B8
  loc_AE8177: LitVarI2 var_98, 80
  loc_AE817C: HardType
  loc_AE817D: EqVarBool
  loc_AE817F: BranchF loc_AE818B
  loc_AE8182: LitStr "OCHENTA"
  loc_AE8185: FStStrCopy var_88
  loc_AE8188: Branch loc_AE859F
  loc_AE818B: FLdRfVar var_B8
  loc_AE818E: LitVarI2 var_98, 90
  loc_AE8193: HardType
  loc_AE8194: EqVarBool
  loc_AE8196: BranchF loc_AE81A2
  loc_AE8199: LitStr "NOVENTA"
  loc_AE819C: FStStrCopy var_88
  loc_AE819F: Branch loc_AE859F
  loc_AE81A2: FLdRfVar var_B8
  loc_AE81A5: LitVarI2 var_98, 100
  loc_AE81AA: HardType
  loc_AE81AB: LtVarBool
  loc_AE81AD: BranchF loc_AE81F5
  loc_AE81B0: FLdFPR8 arg_C
  loc_AE81B3: CI4R8
  loc_AE81B4: LitI4 &HA
  loc_AE81B9: IDvI4
  loc_AE81BA: LitI4 &HA
  loc_AE81BF: MulI4
  loc_AE81C0: CR8I4
  loc_AE81C1: PopFPR8
  loc_AE81C2: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE81C7: FStStrNoPop var_BC
  loc_AE81CA: LitStr " Y "
  loc_AE81CD: ConcatStr
  loc_AE81CE: FStStrNoPop var_C0
  loc_AE81D1: FLdFPR8 arg_C
  loc_AE81D4: CI4R8
  loc_AE81D5: LitI4 &HA
  loc_AE81DA: ModI4
  loc_AE81DB: CR8I4
  loc_AE81DC: PopFPR8
  loc_AE81DD: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE81E2: FStStrNoPop var_C4
  loc_AE81E5: ConcatStr
  loc_AE81E6: FStStr var_88
  loc_AE81E9: FFreeStr var_BC = "": var_C0 = ""
  loc_AE81F2: Branch loc_AE859F
  loc_AE81F5: FLdRfVar var_B8
  loc_AE81F8: LitVarI2 var_98, 100
  loc_AE81FD: HardType
  loc_AE81FE: EqVarBool
  loc_AE8200: BranchF loc_AE820C
  loc_AE8203: LitStr "CIEN"
  loc_AE8206: FStStrCopy var_88
  loc_AE8209: Branch loc_AE859F
  loc_AE820C: FLdRfVar var_B8
  loc_AE820F: LitVarI2 var_98, 200
  loc_AE8214: HardType
  loc_AE8215: LtVarBool
  loc_AE8217: BranchF loc_AE8237
  loc_AE821A: LitStr "CIENTO "
  loc_AE821D: FLdFPR8 arg_C
  loc_AE8220: LitI2_Byte &H64
  loc_AE8222: CR8I2
  loc_AE8223: SubR4
  loc_AE8224: PopFPR8
  loc_AE8225: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE822A: FStStrNoPop var_BC
  loc_AE822D: ConcatStr
  loc_AE822E: FStStr var_88
  loc_AE8231: FFree1Str var_BC
  loc_AE8234: Branch loc_AE859F
  loc_AE8237: FLdRfVar var_B8
  loc_AE823A: LitVarI2 var_98, 200
  loc_AE823F: HardType
  loc_AE8240: EqVarBool
  loc_AE8242: BranchT loc_AE827D
  loc_AE8245: FLdRfVar var_B8
  loc_AE8248: LitVarI2 var_D4, 300
  loc_AE824D: HardType
  loc_AE824E: EqVarBool
  loc_AE8250: BranchT loc_AE827D
  loc_AE8253: FLdRfVar var_B8
  loc_AE8256: LitVarI2 var_E4, 400
  loc_AE825B: HardType
  loc_AE825C: EqVarBool
  loc_AE825E: BranchT loc_AE827D
  loc_AE8261: FLdRfVar var_B8
  loc_AE8264: LitVarI2 var_F4, 600
  loc_AE8269: HardType
  loc_AE826A: EqVarBool
  loc_AE826C: BranchT loc_AE827D
  loc_AE826F: FLdRfVar var_B8
  loc_AE8272: LitVarI2 var_104, 800
  loc_AE8277: HardType
  loc_AE8278: EqVarBool
  loc_AE827A: BranchF loc_AE829E
  loc_AE827D: FLdFPR8 arg_C
  loc_AE8280: CI4R8
  loc_AE8281: LitI4 &H64
  loc_AE8286: IDvI4
  loc_AE8287: CR8I4
  loc_AE8288: PopFPR8
  loc_AE8289: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE828E: FStStrNoPop var_BC
  loc_AE8291: LitStr "CIENTOS"
  loc_AE8294: ConcatStr
  loc_AE8295: FStStr var_88
  loc_AE8298: FFree1Str var_BC
  loc_AE829B: Branch loc_AE859F
  loc_AE829E: FLdRfVar var_B8
  loc_AE82A1: LitVarI2 var_98, 500
  loc_AE82A6: HardType
  loc_AE82A7: EqVarBool
  loc_AE82A9: BranchF loc_AE82B5
  loc_AE82AC: LitStr "QUINIENTOS"
  loc_AE82AF: FStStrCopy var_88
  loc_AE82B2: Branch loc_AE859F
  loc_AE82B5: FLdRfVar var_B8
  loc_AE82B8: LitVarI2 var_98, 700
  loc_AE82BD: HardType
  loc_AE82BE: EqVarBool
  loc_AE82C0: BranchF loc_AE82CC
  loc_AE82C3: LitStr "SETECIENTOS"
  loc_AE82C6: FStStrCopy var_88
  loc_AE82C9: Branch loc_AE859F
  loc_AE82CC: FLdRfVar var_B8
  loc_AE82CF: LitVarI2 var_98, 900
  loc_AE82D4: HardType
  loc_AE82D5: EqVarBool
  loc_AE82D7: BranchF loc_AE82E3
  loc_AE82DA: LitStr "NOVECIENTOS"
  loc_AE82DD: FStStrCopy var_88
  loc_AE82E0: Branch loc_AE859F
  loc_AE82E3: FLdRfVar var_B8
  loc_AE82E6: LitVarI2 var_98, 1000
  loc_AE82EB: HardType
  loc_AE82EC: LtVarBool
  loc_AE82EE: BranchF loc_AE8336
  loc_AE82F1: FLdFPR8 arg_C
  loc_AE82F4: CI4R8
  loc_AE82F5: LitI4 &H64
  loc_AE82FA: IDvI4
  loc_AE82FB: LitI4 &H64
  loc_AE8300: MulI4
  loc_AE8301: CR8I4
  loc_AE8302: PopFPR8
  loc_AE8303: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE8308: FStStrNoPop var_BC
  loc_AE830B: LitStr " "
  loc_AE830E: ConcatStr
  loc_AE830F: FStStrNoPop var_C0
  loc_AE8312: FLdFPR8 arg_C
  loc_AE8315: CI4R8
  loc_AE8316: LitI4 &H64
  loc_AE831B: ModI4
  loc_AE831C: CR8I4
  loc_AE831D: PopFPR8
  loc_AE831E: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE8323: FStStrNoPop var_C4
  loc_AE8326: ConcatStr
  loc_AE8327: FStStr var_88
  loc_AE832A: FFreeStr var_BC = "": var_C0 = ""
  loc_AE8333: Branch loc_AE859F
  loc_AE8336: FLdRfVar var_B8
  loc_AE8339: LitVarI2 var_98, 1000
  loc_AE833E: HardType
  loc_AE833F: EqVarBool
  loc_AE8341: BranchF loc_AE834D
  loc_AE8344: LitStr "UN MIL"
  loc_AE8347: FStStrCopy var_88
  loc_AE834A: Branch loc_AE859F
  loc_AE834D: FLdRfVar var_B8
  loc_AE8350: LitVarI2 var_98, 2000
  loc_AE8355: HardType
  loc_AE8356: LtVarBool
  loc_AE8358: BranchF loc_AE837C
  loc_AE835B: LitStr "UN MIL "
  loc_AE835E: FLdFPR8 arg_C
  loc_AE8361: CI4R8
  loc_AE8362: LitI4 &H3E8
  loc_AE8367: ModI4
  loc_AE8368: CR8I4
  loc_AE8369: PopFPR8
  loc_AE836A: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE836F: FStStrNoPop var_BC
  loc_AE8372: ConcatStr
  loc_AE8373: FStStr var_88
  loc_AE8376: FFree1Str var_BC
  loc_AE8379: Branch loc_AE859F
  loc_AE837C: FLdRfVar var_B8
  loc_AE837F: LitVarI4
  loc_AE8387: HardType
  loc_AE8388: LtVarBool
  loc_AE838A: BranchF loc_AE83E6
  loc_AE838D: FLdFPR8 arg_C
  loc_AE8390: CI4R8
  loc_AE8391: LitI4 &H3E8
  loc_AE8396: IDvI4
  loc_AE8397: CR8I4
  loc_AE8398: PopFPR8
  loc_AE8399: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE839E: FStStrNoPop var_BC
  loc_AE83A1: LitStr " MIL"
  loc_AE83A4: ConcatStr
  loc_AE83A5: FStStr var_88
  loc_AE83A8: FFree1Str var_BC
  loc_AE83AB: FLdFPR8 arg_C
  loc_AE83AE: CI4R8
  loc_AE83AF: LitI4 &H3E8
  loc_AE83B4: ModI4
  loc_AE83B5: CBoolI4
  loc_AE83B7: BranchF loc_AE83E3
  loc_AE83BA: ILdRf var_88
  loc_AE83BD: LitStr " "
  loc_AE83C0: ConcatStr
  loc_AE83C1: FStStrNoPop var_BC
  loc_AE83C4: FLdFPR8 arg_C
  loc_AE83C7: CI4R8
  loc_AE83C8: LitI4 &H3E8
  loc_AE83CD: ModI4
  loc_AE83CE: CR8I4
  loc_AE83CF: PopFPR8
  loc_AE83D0: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE83D5: FStStrNoPop var_C0
  loc_AE83D8: ConcatStr
  loc_AE83D9: FStStr var_88
  loc_AE83DC: FFreeStr var_BC = ""
  loc_AE83E3: Branch loc_AE859F
  loc_AE83E6: FLdRfVar var_B8
  loc_AE83E9: LitVarI4
  loc_AE83F1: HardType
  loc_AE83F2: EqVarBool
  loc_AE83F4: BranchF loc_AE8400
  loc_AE83F7: LitStr "UN MILLÓN"
  loc_AE83FA: FStStrCopy var_88
  loc_AE83FD: Branch loc_AE859F
  loc_AE8400: FLdRfVar var_B8
  loc_AE8403: LitVarI4
  loc_AE840B: HardType
  loc_AE840C: LtVarBool
  loc_AE840E: BranchF loc_AE8432
  loc_AE8411: LitStr "UN MILLÓN "
  loc_AE8414: FLdFPR8 arg_C
  loc_AE8417: CI4R8
  loc_AE8418: LitI4 &HF4240
  loc_AE841D: ModI4
  loc_AE841E: CR8I4
  loc_AE841F: PopFPR8
  loc_AE8420: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE8425: FStStrNoPop var_BC
  loc_AE8428: ConcatStr
  loc_AE8429: FStStr var_88
  loc_AE842C: FFree1Str var_BC
  loc_AE842F: Branch loc_AE859F
  loc_AE8432: FLdRfVar var_B8
  loc_AE8435: LitVarR8
  loc_AE8441: HardType
  loc_AE8442: LtVarBool
  loc_AE8444: BranchF loc_AE84BA
  loc_AE8447: FLdFPR8 arg_C
  loc_AE844A: LitI4 &HF4240
  loc_AE844F: CR8I4
  loc_AE8450: DivR8
  loc_AE8451: FnIntR8
  loc_AE8453: PopFPR8
  loc_AE8454: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE8459: FStStrNoPop var_BC
  loc_AE845C: LitStr " MILLONES"
  loc_AE845F: ConcatStr
  loc_AE8460: FStStr var_88
  loc_AE8463: FFree1Str var_BC
  loc_AE8466: FLdFPR8 arg_C
  loc_AE8469: FLdFPR8 arg_C
  loc_AE846C: LitI4 &HF4240
  loc_AE8471: CR8I4
  loc_AE8472: DivR8
  loc_AE8473: FnIntR8
  loc_AE8475: LitI4 &HF4240
  loc_AE847A: CR8I4
  loc_AE847B: MulR8
  loc_AE847C: SubR4
  loc_AE847D: CBoolR4
  loc_AE847F: BranchF loc_AE84B7
  loc_AE8482: ILdRf var_88
  loc_AE8485: LitStr " "
  loc_AE8488: ConcatStr
  loc_AE8489: FStStrNoPop var_BC
  loc_AE848C: FLdFPR8 arg_C
  loc_AE848F: FLdFPR8 arg_C
  loc_AE8492: LitI4 &HF4240
  loc_AE8497: CR8I4
  loc_AE8498: DivR8
  loc_AE8499: FnIntR8
  loc_AE849B: LitI4 &HF4240
  loc_AE84A0: CR8I4
  loc_AE84A1: MulR8
  loc_AE84A2: SubR4
  loc_AE84A3: PopFPR8
  loc_AE84A4: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE84A9: FStStrNoPop var_C0
  loc_AE84AC: ConcatStr
  loc_AE84AD: FStStr var_88
  loc_AE84B0: FFreeStr var_BC = ""
  loc_AE84B7: Branch loc_AE859F
  loc_AE84BA: FLdRfVar var_B8
  loc_AE84BD: LitVarR8
  loc_AE84C9: HardType
  loc_AE84CA: EqVarBool
  loc_AE84CC: BranchF loc_AE84D8
  loc_AE84CF: LitStr "UN BILLÓN"
  loc_AE84D2: FStStrCopy var_88
  loc_AE84D5: Branch loc_AE859F
  loc_AE84D8: FLdRfVar var_B8
  loc_AE84DB: LitVarR8
  loc_AE84E7: HardType
  loc_AE84E8: LtVarBool
  loc_AE84EA: BranchF loc_AE8520
  loc_AE84ED: LitStr "UN BILLÓN "
  loc_AE84F0: FLdFPR8 arg_C
  loc_AE84F3: FLdFPR8 arg_C
  loc_AE84F6: LitDate &HE8D4A51000
  loc_AE84FF: DivR8
  loc_AE8500: FnIntR8
  loc_AE8502: LitDate &HE8D4A51000
  loc_AE850B: MulR8
  loc_AE850C: SubR4
  loc_AE850D: PopFPR8
  loc_AE850E: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE8513: FStStrNoPop var_BC
  loc_AE8516: ConcatStr
  loc_AE8517: FStStr var_88
  loc_AE851A: FFree1Str var_BC
  loc_AE851D: Branch loc_AE859F
  loc_AE8520: FLdFPR8 arg_C
  loc_AE8523: LitDate &HE8D4A51000
  loc_AE852C: DivR8
  loc_AE852D: FnIntR8
  loc_AE852F: PopFPR8
  loc_AE8530: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE8535: FStStrNoPop var_BC
  loc_AE8538: LitStr " BILLONES"
  loc_AE853B: ConcatStr
  loc_AE853C: FStStr var_88
  loc_AE853F: FFree1Str var_BC
  loc_AE8542: FLdFPR8 arg_C
  loc_AE8545: FLdFPR8 arg_C
  loc_AE8548: LitDate &HE8D4A51000
  loc_AE8551: DivR8
  loc_AE8552: FnIntR8
  loc_AE8554: LitDate &HE8D4A51000
  loc_AE855D: MulR8
  loc_AE855E: SubR4
  loc_AE855F: CBoolR4
  loc_AE8561: BranchF loc_AE859F
  loc_AE8564: ILdRf var_88
  loc_AE8567: LitStr " "
  loc_AE856A: ConcatStr
  loc_AE856B: FStStrNoPop var_BC
  loc_AE856E: FLdFPR8 arg_C
  loc_AE8571: FLdFPR8 arg_C
  loc_AE8574: LitDate &HE8D4A51000
  loc_AE857D: DivR8
  loc_AE857E: FnIntR8
  loc_AE8580: LitDate &HE8D4A51000
  loc_AE8589: MulR8
  loc_AE858A: SubR4
  loc_AE858B: PopFPR8
  loc_AE858C: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AE8591: FStStrNoPop var_C0
  loc_AE8594: ConcatStr
  loc_AE8595: FStStr var_88
  loc_AE8598: FFreeStr var_BC = ""
  loc_AE859F: LitVarI2 var_A8, 1
  loc_AE85A4: LitI4 1
  loc_AE85A9: ILdRf var_88
  loc_AE85AC: ImpAdCallI2 Mid$(, , )
  loc_AE85B1: CVarStr var_114
  loc_AE85B4: FLdRfVar var_124
  loc_AE85B7: ImpAdCallFPR4  = Ucase()
  loc_AE85BC: FLdRfVar var_124
  loc_AE85BF: ILdRf var_88
  loc_AE85C2: FnLenStr
  loc_AE85C3: LitI4 1
  loc_AE85C8: SubI4
  loc_AE85C9: CVarI4
  loc_AE85CD: LitI4 2
  loc_AE85D2: ILdRf var_88
  loc_AE85D5: ImpAdCallI2 Mid$(, , )
  loc_AE85DA: CVarStr var_144
  loc_AE85DD: FLdRfVar var_154
  loc_AE85E0: ImpAdCallFPR4  = LCase()
  loc_AE85E5: FLdRfVar var_154
  loc_AE85E8: ConcatVar var_164
  loc_AE85EC: CStrVarTmp
  loc_AE85ED: FStStr var_88
  loc_AE85F0: FFreeVar var_A8 = "": var_114 = "": var_134 = "": var_144 = "": var_124 = "": var_154 = ""
  loc_AE8601: ExitProc
End Function

Private Function Proc_261_28_9D6518(arg_C, arg_10) '9D6518
  'Data Table: 42C928
  loc_9D6438: ILdRf arg_C
  loc_9D643B: FStStrCopy var_88
  loc_9D643E: ILdRf arg_10
  loc_9D6441: FStStrCopy var_8C
  loc_9D6444: LitVar_Missing var_EC
  loc_9D6447: LitVar_Missing var_CC
  loc_9D644A: LitStr "InfoGov "
  loc_9D644D: ILdRf var_8C
  loc_9D6450: ConcatStr
  loc_9D6451: CVarStr var_AC
  loc_9D6454: LitI4 &H40
  loc_9D6459: FLdRfVar var_88
  loc_9D645C: CVarRef
  loc_9D6461: ImpAdCallFPR4 MsgBox(, , , , )
  loc_9D6466: FFreeVar var_AC = "": var_CC = ""
  loc_9D646F: LitVarI2 var_AC, 11
  loc_9D6474: LitI4 1
  loc_9D6479: FLdRfVar var_88
  loc_9D647C: CVarRef
  loc_9D6481: FLdRfVar var_CC
  loc_9D6484: ImpAdCallFPR4  = Mid(, , )
  loc_9D6489: FLdRfVar var_CC
  loc_9D648C: LitVarStr var_DC, "Advertencia"
  loc_9D6491: HardType
  loc_9D6492: EqVar var_EC
  loc_9D6496: LitStr "Municipalidad de Guaymallén"
  loc_9D6499: LitStr "Municipalidad de Malargüe"
  loc_9D649C: EqStr
  loc_9D649E: CVarBoolI2 var_FC
  loc_9D64A2: AndVar var_10C
  loc_9D64A6: CBoolVarNull
  loc_9D64A8: FFreeVar var_AC = "": var_CC = ""
  loc_9D64B1: BranchF loc_9D6515
  loc_9D64B4: LitVarI2 var_AC, 2000
  loc_9D64B9: LitI4 1
  loc_9D64BE: FLdRfVar var_88
  loc_9D64C1: CVarRef
  loc_9D64C6: FLdRfVar var_CC
  loc_9D64C9: ImpAdCallFPR4  = Mid(, , )
  loc_9D64CE: FLdRfVar var_110
  loc_9D64D1: NewIfNullRf
  loc_9D64D5: LitStr "INSERT INTO infogov.advertencia (AltaUsua,SistemaAdvert,TextoAdvert) VALUES ('"
  loc_9D64D8: FMemLdR4 arg_8(12)
  loc_9D64DD: ConcatStr
  loc_9D64DE: FStStrNoPop var_114
  loc_9D64E1: LitStr "', 'InfoGov1 - Presupuesto y Contabilidad', '"
  loc_9D64E4: ConcatStr
  loc_9D64E5: CVarStr var_EC
  loc_9D64E8: FLdRfVar var_CC
  loc_9D64EB: ConcatVar var_10C
  loc_9D64EF: LitVarStr var_DC, "');"
  loc_9D64F4: ConcatVar var_124
  loc_9D64F8: CStrVarVal var_128
  loc_9D64FC: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_9D6501: FFreeStr var_114 = ""
  loc_9D6508: FFreeVar var_AC = "": var_EC = "": var_CC = "": var_10C = ""
  loc_9D6515: ExitProc
End Function

Private Function Proc_261_29_9CDF34(arg_C, arg_10, arg_14) '9CDF34
  'Data Table: 42C928
  loc_9CDE50: ILdRf arg_C
  loc_9CDE53: FStStrCopy var_8C
  loc_9CDE56: ILdI2 arg_10
  loc_9CDE59: BranchF loc_9CDEC8
  loc_9CDE5C: ILdI2 arg_14
  loc_9CDE5F: BranchF loc_9CDE95
  loc_9CDE62: LitVar_Missing var_FC
  loc_9CDE65: LitVar_Missing var_DC
  loc_9CDE68: LitVarStr var_AC, "InfoGov - Contabilidad y Presupuesto"
  loc_9CDE6D: FStVarCopyObj var_BC
  loc_9CDE70: FLdRfVar var_BC
  loc_9CDE73: LitI4 &H14
  loc_9CDE78: FLdRfVar var_8C
  loc_9CDE7B: CVarRef
  loc_9CDE80: ImpAdCallI2 MsgBox(, , , , )
  loc_9CDE85: CI2I4
  loc_9CDE86: FStI2 var_86
  loc_9CDE89: FFreeVar var_BC = "": var_DC = ""
  loc_9CDE92: Branch loc_9CDEC5
  loc_9CDE95: LitVar_Missing var_FC
  loc_9CDE98: LitVar_Missing var_DC
  loc_9CDE9B: LitVarStr var_AC, "InfoGov - Contabilidad y Presupuesto"
  loc_9CDEA0: FStVarCopyObj var_BC
  loc_9CDEA3: FLdRfVar var_BC
  loc_9CDEA6: LitI4 &H114
  loc_9CDEAB: FLdRfVar var_8C
  loc_9CDEAE: CVarRef
  loc_9CDEB3: ImpAdCallI2 MsgBox(, , , , )
  loc_9CDEB8: CI2I4
  loc_9CDEB9: FStI2 var_86
  loc_9CDEBC: FFreeVar var_BC = "": var_DC = ""
  loc_9CDEC5: Branch loc_9CDF31
  loc_9CDEC8: ILdI2 arg_14
  loc_9CDECB: BranchF loc_9CDF01
  loc_9CDECE: LitVar_Missing var_FC
  loc_9CDED1: LitVar_Missing var_DC
  loc_9CDED4: LitVarStr var_AC, "InfoGov - Contabilidad y Presupuesto"
  loc_9CDED9: FStVarCopyObj var_BC
  loc_9CDEDC: FLdRfVar var_BC
  loc_9CDEDF: LitI4 &H34
  loc_9CDEE4: FLdRfVar var_8C
  loc_9CDEE7: CVarRef
  loc_9CDEEC: ImpAdCallI2 MsgBox(, , , , )
  loc_9CDEF1: CI2I4
  loc_9CDEF2: FStI2 var_86
  loc_9CDEF5: FFreeVar var_BC = "": var_DC = ""
  loc_9CDEFE: Branch loc_9CDF31
  loc_9CDF01: LitVar_Missing var_FC
  loc_9CDF04: LitVar_Missing var_DC
  loc_9CDF07: LitVarStr var_AC, "InfoGov - Contabilidad y Presupuesto"
  loc_9CDF0C: FStVarCopyObj var_BC
  loc_9CDF0F: FLdRfVar var_BC
  loc_9CDF12: LitI4 &H134
  loc_9CDF17: FLdRfVar var_8C
  loc_9CDF1A: CVarRef
  loc_9CDF1F: ImpAdCallI2 MsgBox(, , , , )
  loc_9CDF24: CI2I4
  loc_9CDF25: FStI2 var_86
  loc_9CDF28: FFreeVar var_BC = "": var_DC = ""
  loc_9CDF31: ExitProcI2
End Function

Private Function Proc_261_30_9B11C4(arg_C) '9B11C4
  'Data Table: 42C928
  loc_9B1128: ILdRf arg_C
  loc_9B112B: FStAd var_88 
  loc_9B112F: FLdRfVar var_90
  loc_9B1132: ImpAdLdRf MemVar_C44F9C
  loc_9B1135: NewIfNullPr Me
  loc_9B1138:  = Me.Global.Forms
  loc_9B113D: FLdZeroAd var_90
  loc_9B1140: FStAdFuncNoPop
  loc_9B1143: FLdRfVar var_8C
  loc_9B1146: ForEachCollObj
  loc_9B114E: FLdRfVar var_9C
  loc_9B1151: FLdPr var_8C
  loc_9B1154:  = Form.Name
  loc_9B1159: ILdRf var_9C
  loc_9B115C: FLdRfVar var_A0
  loc_9B115F: FLdPr var_88
  loc_9B1162:  = Form.Name
  loc_9B1167: ILdRf var_A0
  loc_9B116A: EqStr
  loc_9B116C: FFreeStr var_9C = ""
  loc_9B1173: BranchF loc_9B11A1
  loc_9B1176: ILdRf var_88
  loc_9B1179: FStAdNoPop
  loc_9B117D: ImpAdLdRf MemVar_C44F9C
  loc_9B1180: NewIfNullPr Me
  loc_9B1183: Me.Global.Unload from_stack_1
  loc_9B1188: FFree1Ad var_90
  loc_9B118B: ILdRf var_88
  loc_9B118E: FStAdNoPop
  loc_9B1192: ImpAdLdRf MemVar_C44F9C
  loc_9B1195: NewIfNullPr Me
  loc_9B1198: Me.Global.Load from_stack_1
  loc_9B119D: FFree1Ad var_90
  loc_9B11A0: ExitProc
  loc_9B11A1: FLdRfVar var_8C
  loc_9B11A4: NextEachCollObj
  loc_9B11AC: ILdRf var_88
  loc_9B11AF: FStAdNoPop
  loc_9B11B3: ImpAdLdRf MemVar_C44F9C
  loc_9B11B6: NewIfNullPr Me
  loc_9B11B9: Me.Global.Load from_stack_1
  loc_9B11BE: FFree1Ad var_90
  loc_9B11C1: ExitProc
End Function

Private Function Proc_261_31_971890(arg_C) '971890
  'Data Table: 42C928
  loc_971868: ILdI4 arg_C
  loc_97186B: FStAd var_88 
  loc_97186F: LitVar_Missing var_A8
  loc_971872: PopAdLdVar
  loc_971873: LitVar_Missing var_98
  loc_971876: PopAdLdVar
  loc_971877: FLdPr var_88
  loc_97187A: Form.Show from_stack_1, from_stack_2
  loc_97187F: FLdPr var_88
  loc_971882: Form.SetFocus
  loc_971887: LitNothing
  loc_971889: FStAd var_88 
  loc_97188D: ExitProc
End Function

Private Function Proc_261_32_A53D7C(arg_C) 'A53D7C
  'Data Table: 42C928
  loc_A53AC0: ILdI2 arg_C
  loc_A53AC3: LitI2_Byte 0
  loc_A53AC5: EqI2
  loc_A53AC6: BranchF loc_A53AD1
  loc_A53AC9: FMemLdI2 arg_8(52)
  loc_A53ACE: IStI2 arg_C
  loc_A53AD1: FLdRfVar var_90
  loc_A53AD4: NewIfNullRf
  loc_A53AD8: LitStr "SELECT Now() AS Ahora"
  loc_A53ADB: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_A53AE0: LitI4 -1
  loc_A53AE5: FLdRfVar var_90
  loc_A53AE8: NewIfNullPr Me
  loc_A53AEB: Me.Recordset15.Requery from_stack_1
  loc_A53AF0: FLdRfVar var_A8
  loc_A53AF3: LitVarStr var_A4, "Ahora"
  loc_A53AF8: PopAdLdVar
  loc_A53AF9: FLdRfVar var_94
  loc_A53AFC: FLdRfVar var_90
  loc_A53AFF: NewIfNullPr Me
  loc_A53B02:  = Me.Recordset15.Fields
  loc_A53B07: FLdPr var_94
  loc_A53B0A: from_stack_2 = Me.Item(from_stack_1)
  loc_A53B0F: LitI4 1
  loc_A53B14: LitI4 1
  loc_A53B19: LitVarStr var_C8, "dd/mm/yyyy"
  loc_A53B1E: FStVarCopyObj var_D8
  loc_A53B21: FLdRfVar var_D8
  loc_A53B24: FLdZeroAd var_A8
  loc_A53B27: CVarAd
  loc_A53B2B: FLdRfVar var_E8
  loc_A53B2E: ImpAdCallFPR4  = Format(, )
  loc_A53B33: FLdRfVar var_E8
  loc_A53B36: FnCDateVar
  loc_A53B38: FStFPR8 var_8C
  loc_A53B3B: FFree1Ad var_94
  loc_A53B3E: FFreeVar var_B8 = "": var_D8 = "": var_E8 = ""
  loc_A53B49: ILdI2 arg_C
  loc_A53B4C: LitI2_Byte 0
  loc_A53B4E: NeI2
  loc_A53B4F: BranchF loc_A53D6E
  loc_A53B52: FLdRfVar var_8C
  loc_A53B55: CVarRef
  loc_A53B5A: FLdRfVar var_B8
  loc_A53B5D: ImpAdCallFPR4  = Year()
  loc_A53B62: FLdRfVar var_B8
  loc_A53B65: FStVar var_F8
  loc_A53B69: FLdRfVar var_F8
  loc_A53B6C: ILdI2 arg_C
  loc_A53B6F: CVarI2 var_A4
  loc_A53B72: HardType
  loc_A53B73: LtVarBool
  loc_A53B75: BranchF loc_A53C64
  loc_A53B78: FLdRfVar var_90
  loc_A53B7B: NewIfNullRf
  loc_A53B7F: LitStr "SELECT FeminPaco FROM contpres.paraconta WHERE PeriInfo = '"
  loc_A53B82: ILdI2 arg_C
  loc_A53B85: CStrUI1
  loc_A53B87: FStStrNoPop var_FC
  loc_A53B8A: ConcatStr
  loc_A53B8B: FStStrNoPop var_100
  loc_A53B8E: LitStr "'"
  loc_A53B91: ConcatStr
  loc_A53B92: FStStrNoPop var_104
  loc_A53B95: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_A53B9A: FFreeStr var_FC = "": var_100 = ""
  loc_A53BA3: LitI4 -1
  loc_A53BA8: FLdRfVar var_90
  loc_A53BAB: NewIfNullPr Me
  loc_A53BAE: Me.Recordset15.Requery from_stack_1
  loc_A53BB3: FLdRfVar var_A8
  loc_A53BB6: LitVarStr var_A4, "feminpaco"
  loc_A53BBB: PopAdLdVar
  loc_A53BBC: FLdRfVar var_94
  loc_A53BBF: FLdRfVar var_90
  loc_A53BC2: NewIfNullPr Me
  loc_A53BC5:  = Me.Recordset15.Fields
  loc_A53BCA: FLdPr var_94
  loc_A53BCD: from_stack_2 = Me.Item(from_stack_1)
  loc_A53BD2: FLdZeroAd var_A8
  loc_A53BD5: CVarAd
  loc_A53BD9: ImpAdCallI2 IsNull()
  loc_A53BDE: FFree1Ad var_94
  loc_A53BE1: FFree1Var var_B8 = ""
  loc_A53BE4: BranchF loc_A53C08
  loc_A53BE7: LitI2_Byte 1
  loc_A53BE9: LitI2_Byte 1
  loc_A53BEB: ILdI2 arg_C
  loc_A53BEE: FLdRfVar var_B8
  loc_A53BF1: ImpAdCallFPR4  = DateSerial(, , )
  loc_A53BF6: FLdRfVar var_B8
  loc_A53BF9: FnCDateVar
  loc_A53BFB: FStFPR8 var_8C
  loc_A53BFE: FFreeVar var_B8 = ""
  loc_A53C05: Branch loc_A53C61
  loc_A53C08: FLdRfVar var_A8
  loc_A53C0B: LitVarStr var_A4, "feminpaco"
  loc_A53C10: PopAdLdVar
  loc_A53C11: FLdRfVar var_94
  loc_A53C14: FLdRfVar var_90
  loc_A53C17: NewIfNullPr Me
  loc_A53C1A:  = Me.Recordset15.Fields
  loc_A53C1F: FLdPr var_94
  loc_A53C22: from_stack_2 = Me.Item(from_stack_1)
  loc_A53C27: LitI4 1
  loc_A53C2C: LitI4 1
  loc_A53C31: LitVarStr var_C8, "dd/mm/yyyy"
  loc_A53C36: FStVarCopyObj var_D8
  loc_A53C39: FLdRfVar var_D8
  loc_A53C3C: FLdZeroAd var_A8
  loc_A53C3F: CVarAd
  loc_A53C43: FLdRfVar var_E8
  loc_A53C46: ImpAdCallFPR4  = Format(, )
  loc_A53C4B: FLdRfVar var_E8
  loc_A53C4E: FnCDateVar
  loc_A53C50: FStFPR8 var_8C
  loc_A53C53: FFree1Ad var_94
  loc_A53C56: FFreeVar var_B8 = "": var_D8 = "": var_E8 = ""
  loc_A53C61: Branch loc_A53D6E
  loc_A53C64: FLdRfVar var_F8
  loc_A53C67: ILdI2 arg_C
  loc_A53C6A: CVarI2 var_A4
  loc_A53C6D: HardType
  loc_A53C6E: GtVarBool
  loc_A53C70: BranchF loc_A53D5F
  loc_A53C73: FLdRfVar var_90
  loc_A53C76: NewIfNullRf
  loc_A53C7A: LitStr "SELECT FemaxPaco FROM contpres.paraconta WHERE PeriInfo = '"
  loc_A53C7D: ILdI2 arg_C
  loc_A53C80: CStrUI1
  loc_A53C82: FStStrNoPop var_FC
  loc_A53C85: ConcatStr
  loc_A53C86: FStStrNoPop var_100
  loc_A53C89: LitStr "'"
  loc_A53C8C: ConcatStr
  loc_A53C8D: FStStrNoPop var_104
  loc_A53C90: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_A53C95: FFreeStr var_FC = "": var_100 = ""
  loc_A53C9E: LitI4 -1
  loc_A53CA3: FLdRfVar var_90
  loc_A53CA6: NewIfNullPr Me
  loc_A53CA9: Me.Recordset15.Requery from_stack_1
  loc_A53CAE: FLdRfVar var_A8
  loc_A53CB1: LitVarStr var_A4, "FemaxPaco"
  loc_A53CB6: PopAdLdVar
  loc_A53CB7: FLdRfVar var_94
  loc_A53CBA: FLdRfVar var_90
  loc_A53CBD: NewIfNullPr Me
  loc_A53CC0:  = Me.Recordset15.Fields
  loc_A53CC5: FLdPr var_94
  loc_A53CC8: from_stack_2 = Me.Item(from_stack_1)
  loc_A53CCD: FLdZeroAd var_A8
  loc_A53CD0: CVarAd
  loc_A53CD4: ImpAdCallI2 IsNull()
  loc_A53CD9: FFree1Ad var_94
  loc_A53CDC: FFree1Var var_B8 = ""
  loc_A53CDF: BranchF loc_A53D03
  loc_A53CE2: LitI2_Byte &H1F
  loc_A53CE4: LitI2_Byte &HC
  loc_A53CE6: ILdI2 arg_C
  loc_A53CE9: FLdRfVar var_B8
  loc_A53CEC: ImpAdCallFPR4  = DateSerial(, , )
  loc_A53CF1: FLdRfVar var_B8
  loc_A53CF4: FnCDateVar
  loc_A53CF6: FStFPR8 var_8C
  loc_A53CF9: FFreeVar var_B8 = ""
  loc_A53D00: Branch loc_A53D5C
  loc_A53D03: FLdRfVar var_A8
  loc_A53D06: LitVarStr var_A4, "FemaxPaco"
  loc_A53D0B: PopAdLdVar
  loc_A53D0C: FLdRfVar var_94
  loc_A53D0F: FLdRfVar var_90
  loc_A53D12: NewIfNullPr Me
  loc_A53D15:  = Me.Recordset15.Fields
  loc_A53D1A: FLdPr var_94
  loc_A53D1D: from_stack_2 = Me.Item(from_stack_1)
  loc_A53D22: LitI4 1
  loc_A53D27: LitI4 1
  loc_A53D2C: LitVarStr var_C8, "dd/mm/yyyy"
  loc_A53D31: FStVarCopyObj var_D8
  loc_A53D34: FLdRfVar var_D8
  loc_A53D37: FLdZeroAd var_A8
  loc_A53D3A: CVarAd
  loc_A53D3E: FLdRfVar var_E8
  loc_A53D41: ImpAdCallFPR4  = Format(, )
  loc_A53D46: FLdRfVar var_E8
  loc_A53D49: FnCDateVar
  loc_A53D4B: FStFPR8 var_8C
  loc_A53D4E: FFree1Ad var_94
  loc_A53D51: FFreeVar var_B8 = "": var_D8 = "": var_E8 = ""
  loc_A53D5C: Branch loc_A53D6E
  loc_A53D5F: FLdRfVar var_F8
  loc_A53D62: ILdI2 arg_C
  loc_A53D65: CVarI2 var_A4
  loc_A53D68: HardType
  loc_A53D69: EqVarBool
  loc_A53D6B: BranchF loc_A53D6E
  loc_A53D6E: FLdRfVar var_90
  loc_A53D71: NewIfNullPr Me
  loc_A53D74: Me.Recordset15.Close
  loc_A53D79: ExitProcR8
End Function

Private Function Proc_261_33_9B603C(arg_C) '9B603C
  'Data Table: 42C928
  loc_9B5F8C: FLdFPR8 arg_C
  loc_9B5F8F: FStFPR8 var_8C
  loc_9B5F92: FLdRfVar arg_C
  loc_9B5F95: CVarRef
  loc_9B5F9A: FLdRfVar var_AC
  loc_9B5F9D: ImpAdCallFPR4  = Month()
  loc_9B5FA2: FLdRfVar var_AC
  loc_9B5FA5: LitVarI2 var_BC, 12
  loc_9B5FAA: HardType
  loc_9B5FAB: LtVarBool
  loc_9B5FAD: FFree1Var var_AC = ""
  loc_9B5FB0: BranchF loc_9B600B
  loc_9B5FB3: FLdRfVar arg_C
  loc_9B5FB6: CVarRef
  loc_9B5FBB: FLdRfVar var_AC
  loc_9B5FBE: ImpAdCallFPR4  = Year()
  loc_9B5FC3: FLdRfVar arg_C
  loc_9B5FC6: CVarRef
  loc_9B5FCB: FLdRfVar var_CC
  loc_9B5FCE: ImpAdCallFPR4  = Month()
  loc_9B5FD3: LitI2_Byte 1
  loc_9B5FD5: FLdRfVar var_CC
  loc_9B5FD8: LitVarI2 var_DC, 1
  loc_9B5FDD: AddVar var_EC
  loc_9B5FE1: CI2Var
  loc_9B5FE2: FLdRfVar var_AC
  loc_9B5FE5: CI2Var
  loc_9B5FE6: FLdRfVar var_FC
  loc_9B5FE9: ImpAdCallFPR4  = DateSerial(, , )
  loc_9B5FEE: FLdRfVar var_FC
  loc_9B5FF1: FnCDateVar
  loc_9B5FF3: LitI2_Byte 1
  loc_9B5FF5: CR8I2
  loc_9B5FF6: SubR4
  loc_9B5FF7: CDateR8
  loc_9B5FF8: FStFPR8 var_8C
  loc_9B5FFB: FFreeVar var_CC = "": var_AC = "": var_EC = "": var_FC = ""
  loc_9B6008: Branch loc_9B603A
  loc_9B600B: FLdRfVar arg_C
  loc_9B600E: CVarRef
  loc_9B6013: FLdRfVar var_AC
  loc_9B6016: ImpAdCallFPR4  = Year()
  loc_9B601B: LitI2_Byte &H1F
  loc_9B601D: LitI2_Byte &HC
  loc_9B601F: FLdRfVar var_AC
  loc_9B6022: CI2Var
  loc_9B6023: FLdRfVar var_CC
  loc_9B6026: ImpAdCallFPR4  = DateSerial(, , )
  loc_9B602B: FLdRfVar var_CC
  loc_9B602E: FnCDateVar
  loc_9B6030: FStFPR8 var_8C
  loc_9B6033: FFreeVar var_AC = ""
  loc_9B603A: ExitProcR8
End Function

Private Function Proc_261_34_995F34() '995F34
  'Data Table: 42C928
  loc_995ED8: FLdRfVar var_90
  loc_995EDB: NewIfNullRf
  loc_995EDF: LitStr "SELECT Now() AS Ahora"
  loc_995EE2: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_995EE7: LitI4 -1
  loc_995EEC: FLdRfVar var_90
  loc_995EEF: NewIfNullPr Me
  loc_995EF2: Me.Recordset15.Requery from_stack_1
  loc_995EF7: FLdRfVar var_B8
  loc_995EFA: FLdRfVar var_A8
  loc_995EFD: LitVarStr var_A4, "Ahora"
  loc_995F02: PopAdLdVar
  loc_995F03: FLdRfVar var_94
  loc_995F06: FLdRfVar var_90
  loc_995F09: NewIfNullPr Me
  loc_995F0C:  = Me.Recordset15.Fields
  loc_995F11: FLdPr var_94
  loc_995F14: from_stack_2 = Me.Item(from_stack_1)
  loc_995F19: FLdPr var_A8
  loc_995F1C:  = Me.Value
  loc_995F21: FLdRfVar var_B8
  loc_995F24: FnCDateVar
  loc_995F26: FStFPR8 var_8C
  loc_995F29: FFreeAd var_94 = ""
  loc_995F30: FFree1Var var_B8 = ""
  loc_995F33: ExitProcR8
End Function

Private Function Proc_261_35_96D6D8(arg_C) '96D6D8
  'Data Table: 42C928
  loc_96D6B4: LitVarI2 var_94, 0
  loc_96D6B9: PopAdLdVar
  loc_96D6BA: ILdRf arg_C
  loc_96D6BD: VarLateMemSt .SelStart
  loc_96D6C1: ILdRf arg_C
  loc_96D6C4: VarLateMemLdVar var_C4, .MaxLength
  loc_96D6CA: PopAdLdVar
  loc_96D6CB: ILdRf arg_C
  loc_96D6CE: VarLateMemSt .SelLength
  loc_96D6D2: FFree1Var var_C4 = ""
  loc_96D6D5: ExitProc
  loc_96D6D6: ImpAdLdPr Method_9996A4
End Function

Private Function Proc_261_36_993B88(arg_10) '993B88
  'Data Table: 42C928
  loc_993B30: ILdRf arg_10
  loc_993B33: FStStrCopy var_8C
  loc_993B36: LitI2_Byte &HFF
  loc_993B38: FStI2 var_86
  loc_993B3B: LitI2_Byte 0
  loc_993B3D: FLdRfVar var_8E
  loc_993B40: FLdRfVar var_90
  loc_993B43: ILdPr
  loc_993B46:  = Me.ListCount
  loc_993B4B: FLdI2 var_90
  loc_993B4E: LitI2_Byte 1
  loc_993B50: SubI2
  loc_993B51: ForI2 var_94
  loc_993B57: FLdRfVar var_98
  loc_993B5A: FLdI2 var_8E
  loc_993B5D: ILdPr
  loc_993B60: from_stack_2 = Me.List(from_stack_1)
  loc_993B65: ILdRf var_98
  loc_993B68: ILdRf var_8C
  loc_993B6B: EqStr
  loc_993B6D: FFree1Str var_98
  loc_993B70: BranchF loc_993B7C
  loc_993B73: FLdI2 var_8E
  loc_993B76: FStI2 var_86
  loc_993B79: Branch loc_993B84
  loc_993B7C: FLdRfVar var_8E
  loc_993B7F: NextI2 var_94, loc_993B57
  loc_993B84: ExitProcI2
  loc_993B85: CR4Var
  loc_993B86: CRec2Uni var_1000
End Function

Private Function Proc_261_37_97BB2C(arg_C) '97BB2C
  'Data Table: 42C928
  loc_97BB00: ILdRf arg_C
  loc_97BB03: FStStrCopy var_8C
  loc_97BB06: LitI4 0
  loc_97BB0B: LitI4 0
  loc_97BB10: LitI4 -1
  loc_97BB15: LitI4 2
  loc_97BB1A: FLdRfVar var_8C
  loc_97BB1D: CVarRef
  loc_97BB22: ImpAdCallI2 FormatNumber(, , , , )
  loc_97BB27: FStStr var_88
  loc_97BB2A: ExitProc
End Function

Private Function Proc_261_38_981198(arg_C) '981198
  'Data Table: 42C928
  loc_981168: ILdRf arg_C
  loc_98116B: FStStrCopy var_8C
  loc_98116E: LitI4 1
  loc_981173: LitI4 1
  loc_981178: LitVarStr var_AC, "yyyymmdd"
  loc_98117D: FStVarCopyObj var_BC
  loc_981180: FLdRfVar var_BC
  loc_981183: FLdRfVar var_8C
  loc_981186: CVarRef
  loc_98118B: ImpAdCallI2 Format$(, )
  loc_981190: FStStr var_88
  loc_981193: FFree1Var var_BC = ""
  loc_981196: ExitProc
End Function

Private Function Proc_261_39_97BBF8(arg_C) '97BBF8
  'Data Table: 42C928
  loc_97BBC8: ILdRf arg_C
  loc_97BBCB: FStStrCopy var_90
  loc_97BBCE: ILdRf var_90
  loc_97BBD1: LitStr vbNullString
  loc_97BBD4: EqStr
  loc_97BBD6: BranchF loc_97BBDF
  loc_97BBD9: LitI2_Byte 0
  loc_97BBDB: CR8I2
  loc_97BBDC: FStFPR8 var_8C
  loc_97BBDF: FLdRfVar var_90
  loc_97BBE2: CVarRef
  loc_97BBE7: ImpAdCallI2 IsNumeric()
  loc_97BBEC: BranchF loc_97BBF7
  loc_97BBEF: ILdRf var_90
  loc_97BBF2: CR8Str
  loc_97BBF4: FStFPR8 var_8C
  loc_97BBF7: ExitProcR8
End Function

Private Function Proc_261_40_B3BA9C() 'B3BA9C
  'Data Table: 42C928
  loc_B3B0E4: FLdRfVar var_A0
  loc_B3B0E7: ImpAdLdRf MemVar_C3DB88
  loc_B3B0EA: NewIfNullPr MdiContPres
  loc_B3B0ED:  = MdiContPres.Controls
  loc_B3B0F2: FLdZeroAd var_A0
  loc_B3B0F5: FStAdFuncNoPop
  loc_B3B0F8: FLdRfVar var_9C
  loc_B3B0FB: ForEachCollVar var_A8
  loc_B3B101: FLdRfVar var_9C
  loc_B3B104: CheckTypeVar
  loc_B3B108: BranchF loc_B3B264
  loc_B3B10B: FLdRfVar var_9C
  loc_B3B10E: VarLateMemLdVar var_B8, .Enabled
  loc_B3B114: NotVar var_C8
  loc_B3B118: FLdRfVar var_9C
  loc_B3B11B: VarLateMemLdVar var_E8, .Tag
  loc_B3B121: LitVarStr var_D8, vbNullString
  loc_B3B126: HardType
  loc_B3B127: NeVar var_F8
  loc_B3B12B: AndVar var_108
  loc_B3B12F: CBoolVarNull
  loc_B3B131: FFreeVar var_B8 = ""
  loc_B3B138: BranchF loc_B3B264
  loc_B3B13B: LitStr "SELECT menu.FormMenu"
  loc_B3B13E: LitStr " FROM infogov.acceso"
  loc_B3B141: ConcatStr
  loc_B3B142: FStStrNoPop var_10C
  loc_B3B145: LitStr " INNER JOIN infogov.menu ON menu.CodiMenu = acceso.CodiMenu"
  loc_B3B148: ConcatStr
  loc_B3B149: FStStrNoPop var_110
  loc_B3B14C: LitStr " AND FormMenu = '"
  loc_B3B14F: ConcatStr
  loc_B3B150: CVarStr var_B8
  loc_B3B153: FLdRfVar var_9C
  loc_B3B156: VarLateMemLdVar var_C8, .Name
  loc_B3B15C: ConcatVar var_E8
  loc_B3B160: LitVarStr var_D8, "'"
  loc_B3B165: ConcatVar var_F8
  loc_B3B169: LitVarStr var_120, " WHERE acceso.CodiUsua = '"
  loc_B3B16E: ConcatVar var_108
  loc_B3B172: FMemLdR4 arg_8(12)
  loc_B3B177: CVarStr var_130
  loc_B3B17A: ConcatVar var_140
  loc_B3B17E: LitVarStr var_150, "' AND menu.CodiSist = "
  loc_B3B183: ConcatVar var_160
  loc_B3B187: LitVarUI1
  loc_B3B18D: ConcatVar var_180
  loc_B3B191: LitVarStr var_190, " ORDER BY CodiUsua, FormMenu;"
  loc_B3B196: ConcatVar var_1A0
  loc_B3B19A: CStrVarVal var_1A4
  loc_B3B19E: FLdRfVar var_88
  loc_B3B1A1: NewIfNullPr clsacceso
  loc_B3B1A4: Call clsacceso.RedefineRS(from_stack_1v)
  loc_B3B1A9: FFreeStr var_10C = "": var_110 = ""
  loc_B3B1B2: FFreeVar var_B8 = "": var_C8 = "": var_E8 = "": var_F8 = "": var_108 = "": var_140 = "": var_160 = "": var_180 = ""
  loc_B3B1C7: FLdRfVar var_1A8
  loc_B3B1CA: FLdRfVar var_88
  loc_B3B1CD: NewIfNullPr clsacceso
  loc_B3B1D0: from_stack_1 = clsacceso.RecordCount
  loc_B3B1D5: ILdRf var_1A8
  loc_B3B1D8: LitI4 0
  loc_B3B1DD: GtI4
  loc_B3B1DE: BranchF loc_B3B264
  loc_B3B1E1: FLdRfVar var_9C
  loc_B3B1E4: VarLateMemLdVar var_C8, .Name
  loc_B3B1EA: FLdRfVar var_B8
  loc_B3B1ED: FLdRfVar var_1B0
  loc_B3B1F0: LitVarStr var_D8, "FormMenu"
  loc_B3B1F5: PopAdLdVar
  loc_B3B1F6: FLdRfVar var_1AC
  loc_B3B1F9: FLdRfVar var_A0
  loc_B3B1FC: FLdRfVar var_88
  loc_B3B1FF: NewIfNullPr clsacceso
  loc_B3B202: from_stack_1v = clsacceso.RsFrmGet()
  loc_B3B207: FLdPr var_A0
  loc_B3B20A:  = Me.Fields
  loc_B3B20F: FLdPr var_1AC
  loc_B3B212: from_stack_2 = Me.Item(from_stack_1)
  loc_B3B217: FLdPr var_1B0
  loc_B3B21A:  = Me.Value
  loc_B3B21F: FLdRfVar var_B8
  loc_B3B222: EqVarBool
  loc_B3B224: FFreeAd var_A0 = "": var_1AC = ""
  loc_B3B22D: FFreeVar var_C8 = ""
  loc_B3B234: BranchF loc_B3B242
  loc_B3B237: LitVar_TRUE var_D8
  loc_B3B23A: PopAdLdVar
  loc_B3B23B: FLdRfVar var_9C
  loc_B3B23E: VarLateMemSt .Enabled
  loc_B3B242: FLdRfVar var_9C
  loc_B3B245: VarLateMemLdVar var_B8, .Name
  loc_B3B24B: LitVarStr var_D8, "OrdenpagoRes"
  loc_B3B250: HardType
  loc_B3B251: EqVarBool
  loc_B3B253: FFree1Var var_B8 = ""
  loc_B3B256: BranchF loc_B3B264
  loc_B3B259: LitVar_TRUE var_D8
  loc_B3B25C: PopAdLdVar
  loc_B3B25D: FLdRfVar var_9C
  loc_B3B260: VarLateMemSt .Visible
  loc_B3B264: FLdRfVar var_9C
  loc_B3B267: NextEachCollVar var_A8
  loc_B3B26D: FMemLdR4 arg_8(12)
  loc_B3B272: LitStr "root"
  loc_B3B275: EqStr
  loc_B3B277: BranchF loc_B3B2B6
  loc_B3B27A: ImpAdLdRf MemVar_C3DB88
  loc_B3B27D: NewIfNullAd
  loc_B3B280: FStAd var_1B4 
  loc_B3B284: LitI2_Byte &HFF
  loc_B3B286: FLdPr var_1B4
  loc_B3B289: VCallAd Control_ID_
  loc_B3B28C: FStAdFunc var_A0
  loc_B3B28F: FLdPr var_A0
  loc_B3B292: Me.Enabled = from_stack_1b
  loc_B3B297: FFree1Ad var_A0
  loc_B3B29A: LitI2_Byte &HFF
  loc_B3B29C: FLdPr var_1B4
  loc_B3B29F: VCallAd Control_ID_
  loc_B3B2A2: FStAdFunc var_A0
  loc_B3B2A5: FLdPr var_A0
  loc_B3B2A8: Me.Visible = from_stack_1b
  loc_B3B2AD: FFree1Ad var_A0
  loc_B3B2B0: LitNothing
  loc_B3B2B2: FStAd var_1B4 
  loc_B3B2B6: LitNothing
  loc_B3B2B8: CastAd
  loc_B3B2BB: FStAdFunc var_88
  loc_B3B2BE: FLdRfVar var_1C0
  loc_B3B2C1: NewIfNullRf
  loc_B3B2C5: LitStr "SELECT Now() AS Ahora"
  loc_B3B2C8: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_B3B2CD: LitI4 -1
  loc_B3B2D2: FLdRfVar var_1C0
  loc_B3B2D5: NewIfNullPr Me
  loc_B3B2D8: Me.Recordset15.Requery from_stack_1
  loc_B3B2DD: FLdRfVar var_1AC
  loc_B3B2E0: LitVarStr var_D8, "Ahora"
  loc_B3B2E5: PopAdLdVar
  loc_B3B2E6: FLdRfVar var_A0
  loc_B3B2E9: FLdRfVar var_1C0
  loc_B3B2EC: NewIfNullPr Me
  loc_B3B2EF:  = Me.Recordset15.Fields
  loc_B3B2F4: FLdPr var_A0
  loc_B3B2F7: from_stack_2 = Me.Item(from_stack_1)
  loc_B3B2FC: LitI4 1
  loc_B3B301: LitI4 1
  loc_B3B306: LitVarStr var_120, "dd/mm/yyyy"
  loc_B3B30B: FStVarCopyObj var_C8
  loc_B3B30E: FLdRfVar var_C8
  loc_B3B311: FLdZeroAd var_1AC
  loc_B3B314: CVarAd
  loc_B3B318: FLdRfVar var_E8
  loc_B3B31B: ImpAdCallFPR4  = Format(, )
  loc_B3B320: FLdRfVar var_E8
  loc_B3B323: FnCDateVar
  loc_B3B325: FMemStFPR8 arg_8(28)
  loc_B3B32A: FFree1Ad var_A0
  loc_B3B32D: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_B3B338: FLdRfVar var_1C0
  loc_B3B33B: NewIfNullPr Me
  loc_B3B33E: Me.Recordset15.Close
  loc_B3B343: FMemLdRf unk_42C931
  loc_B3B348: CVarRef
  loc_B3B34D: FLdRfVar var_B8
  loc_B3B350: ImpAdCallFPR4  = Year()
  loc_B3B355: FLdRfVar var_B8
  loc_B3B358: FMemLdI2 arg_8(52)
  loc_B3B35D: CVarI2 var_120
  loc_B3B360: HardType
  loc_B3B361: EqVarBool
  loc_B3B363: FFree1Var var_B8 = ""
  loc_B3B366: BranchF loc_B3B468
  loc_B3B369: FLdRfVar var_1C0
  loc_B3B36C: NewIfNullRf
  loc_B3B370: LitStr "SELECT FeminPaco FROM contpres.paraconta WHERE PeriInfo = '"
  loc_B3B373: FMemLdI2 arg_8(52)
  loc_B3B378: CStrUI1
  loc_B3B37A: FStStrNoPop var_10C
  loc_B3B37D: ConcatStr
  loc_B3B37E: FStStrNoPop var_110
  loc_B3B381: LitStr "'"
  loc_B3B384: ConcatStr
  loc_B3B385: FStStrNoPop var_1A4
  loc_B3B388: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_B3B38D: FFreeStr var_10C = "": var_110 = ""
  loc_B3B396: LitI4 -1
  loc_B3B39B: FLdRfVar var_1C0
  loc_B3B39E: NewIfNullPr Me
  loc_B3B3A1: Me.Recordset15.Requery from_stack_1
  loc_B3B3A6: FLdRfVar var_1AC
  loc_B3B3A9: LitVarStr var_D8, "feminpaco"
  loc_B3B3AE: PopAdLdVar
  loc_B3B3AF: FLdRfVar var_A0
  loc_B3B3B2: FLdRfVar var_1C0
  loc_B3B3B5: NewIfNullPr Me
  loc_B3B3B8:  = Me.Recordset15.Fields
  loc_B3B3BD: FLdPr var_A0
  loc_B3B3C0: from_stack_2 = Me.Item(from_stack_1)
  loc_B3B3C5: FLdZeroAd var_1AC
  loc_B3B3C8: CVarAd
  loc_B3B3CC: ImpAdCallI2 IsNull()
  loc_B3B3D1: FFree1Ad var_A0
  loc_B3B3D4: FFree1Var var_B8 = ""
  loc_B3B3D7: BranchF loc_B3B3FF
  loc_B3B3DA: LitI2_Byte 1
  loc_B3B3DC: LitI2_Byte 1
  loc_B3B3DE: FMemLdI2 arg_8(52)
  loc_B3B3E3: FLdRfVar var_B8
  loc_B3B3E6: ImpAdCallFPR4  = DateSerial(, , )
  loc_B3B3EB: FLdRfVar var_B8
  loc_B3B3EE: FnCDateVar
  loc_B3B3F0: FMemStFPR8 arg_8(36)
  loc_B3B3F5: FFreeVar var_B8 = ""
  loc_B3B3FC: Branch loc_B3B45A
  loc_B3B3FF: FLdRfVar var_1AC
  loc_B3B402: LitVarStr var_D8, "feminpaco"
  loc_B3B407: PopAdLdVar
  loc_B3B408: FLdRfVar var_A0
  loc_B3B40B: FLdRfVar var_1C0
  loc_B3B40E: NewIfNullPr Me
  loc_B3B411:  = Me.Recordset15.Fields
  loc_B3B416: FLdPr var_A0
  loc_B3B419: from_stack_2 = Me.Item(from_stack_1)
  loc_B3B41E: LitI4 1
  loc_B3B423: LitI4 1
  loc_B3B428: LitVarStr var_120, "dd/mm/yyyy"
  loc_B3B42D: FStVarCopyObj var_C8
  loc_B3B430: FLdRfVar var_C8
  loc_B3B433: FLdZeroAd var_1AC
  loc_B3B436: CVarAd
  loc_B3B43A: FLdRfVar var_E8
  loc_B3B43D: ImpAdCallFPR4  = Format(, )
  loc_B3B442: FLdRfVar var_E8
  loc_B3B445: FnCDateVar
  loc_B3B447: FMemStFPR8 arg_8(36)
  loc_B3B44C: FFree1Ad var_A0
  loc_B3B44F: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_B3B45A: FLdRfVar var_1C0
  loc_B3B45D: NewIfNullPr Me
  loc_B3B460: Me.Recordset15.Close
  loc_B3B465: Branch loc_B3B8A9
  loc_B3B468: FMemLdRf unk_42C931
  loc_B3B46D: CVarRef
  loc_B3B472: FLdRfVar var_B8
  loc_B3B475: ImpAdCallFPR4  = Year()
  loc_B3B47A: FLdRfVar var_B8
  loc_B3B47D: FMemLdI2 arg_8(52)
  loc_B3B482: CVarI2 var_120
  loc_B3B485: HardType
  loc_B3B486: LtVarBool
  loc_B3B488: FFree1Var var_B8 = ""
  loc_B3B48B: BranchF loc_B3B6D3
  loc_B3B48E: FLdRfVar var_1C0
  loc_B3B491: NewIfNullRf
  loc_B3B495: LitStr "SELECT FeminPaco, FemaxPaco FROM contpres.paraconta WHERE PeriInfo = '"
  loc_B3B498: FMemLdI2 arg_8(52)
  loc_B3B49D: CStrUI1
  loc_B3B49F: FStStrNoPop var_10C
  loc_B3B4A2: ConcatStr
  loc_B3B4A3: FStStrNoPop var_110
  loc_B3B4A6: LitStr "'"
  loc_B3B4A9: ConcatStr
  loc_B3B4AA: FStStrNoPop var_1A4
  loc_B3B4AD: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_B3B4B2: FFreeStr var_10C = "": var_110 = ""
  loc_B3B4BB: LitI4 -1
  loc_B3B4C0: FLdRfVar var_1C0
  loc_B3B4C3: NewIfNullPr Me
  loc_B3B4C6: Me.Recordset15.Requery from_stack_1
  loc_B3B4CB: FLdRfVar var_1AC
  loc_B3B4CE: LitVarStr var_D8, "FemaxPaco"
  loc_B3B4D3: PopAdLdVar
  loc_B3B4D4: FLdRfVar var_A0
  loc_B3B4D7: FLdRfVar var_1C0
  loc_B3B4DA: NewIfNullPr Me
  loc_B3B4DD:  = Me.Recordset15.Fields
  loc_B3B4E2: FLdPr var_A0
  loc_B3B4E5: from_stack_2 = Me.Item(from_stack_1)
  loc_B3B4EA: FLdZeroAd var_1AC
  loc_B3B4ED: CVarAd
  loc_B3B4F1: ImpAdCallI2 IsNull()
  loc_B3B4F6: FFree1Ad var_A0
  loc_B3B4F9: FFree1Var var_B8 = ""
  loc_B3B4FC: BranchF loc_B3B5B6
  loc_B3B4FF: FLdRfVar var_1AC
  loc_B3B502: LitVarStr var_D8, "feminpaco"
  loc_B3B507: PopAdLdVar
  loc_B3B508: FLdRfVar var_A0
  loc_B3B50B: FLdRfVar var_1C0
  loc_B3B50E: NewIfNullPr Me
  loc_B3B511:  = Me.Recordset15.Fields
  loc_B3B516: FLdPr var_A0
  loc_B3B519: from_stack_2 = Me.Item(from_stack_1)
  loc_B3B51E: FLdZeroAd var_1AC
  loc_B3B521: CVarAd
  loc_B3B525: ImpAdCallI2 IsNull()
  loc_B3B52A: FFree1Ad var_A0
  loc_B3B52D: FFree1Var var_B8 = ""
  loc_B3B530: BranchF loc_B3B558
  loc_B3B533: LitI2_Byte 1
  loc_B3B535: LitI2_Byte 1
  loc_B3B537: FMemLdI2 arg_8(52)
  loc_B3B53C: FLdRfVar var_B8
  loc_B3B53F: ImpAdCallFPR4  = DateSerial(, , )
  loc_B3B544: FLdRfVar var_B8
  loc_B3B547: FnCDateVar
  loc_B3B549: FMemStFPR8 arg_8(28)
  loc_B3B54E: FFreeVar var_B8 = ""
  loc_B3B555: Branch loc_B3B5B3
  loc_B3B558: FLdRfVar var_1AC
  loc_B3B55B: LitVarStr var_D8, "feminpaco"
  loc_B3B560: PopAdLdVar
  loc_B3B561: FLdRfVar var_A0
  loc_B3B564: FLdRfVar var_1C0
  loc_B3B567: NewIfNullPr Me
  loc_B3B56A:  = Me.Recordset15.Fields
  loc_B3B56F: FLdPr var_A0
  loc_B3B572: from_stack_2 = Me.Item(from_stack_1)
  loc_B3B577: LitI4 1
  loc_B3B57C: LitI4 1
  loc_B3B581: LitVarStr var_120, "dd/mm/yyyy"
  loc_B3B586: FStVarCopyObj var_C8
  loc_B3B589: FLdRfVar var_C8
  loc_B3B58C: FLdZeroAd var_1AC
  loc_B3B58F: CVarAd
  loc_B3B593: FLdRfVar var_E8
  loc_B3B596: ImpAdCallFPR4  = Format(, )
  loc_B3B59B: FLdRfVar var_E8
  loc_B3B59E: FnCDateVar
  loc_B3B5A0: FMemStFPR8 arg_8(28)
  loc_B3B5A5: FFree1Ad var_A0
  loc_B3B5A8: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_B3B5B3: Branch loc_B3B611
  loc_B3B5B6: FLdRfVar var_1AC
  loc_B3B5B9: LitVarStr var_D8, "FemaxPaco"
  loc_B3B5BE: PopAdLdVar
  loc_B3B5BF: FLdRfVar var_A0
  loc_B3B5C2: FLdRfVar var_1C0
  loc_B3B5C5: NewIfNullPr Me
  loc_B3B5C8:  = Me.Recordset15.Fields
  loc_B3B5CD: FLdPr var_A0
  loc_B3B5D0: from_stack_2 = Me.Item(from_stack_1)
  loc_B3B5D5: LitI4 1
  loc_B3B5DA: LitI4 1
  loc_B3B5DF: LitVarStr var_120, "dd/mm/yyyy"
  loc_B3B5E4: FStVarCopyObj var_C8
  loc_B3B5E7: FLdRfVar var_C8
  loc_B3B5EA: FLdZeroAd var_1AC
  loc_B3B5ED: CVarAd
  loc_B3B5F1: FLdRfVar var_E8
  loc_B3B5F4: ImpAdCallFPR4  = Format(, )
  loc_B3B5F9: FLdRfVar var_E8
  loc_B3B5FC: FnCDateVar
  loc_B3B5FE: FMemStFPR8 arg_8(28)
  loc_B3B603: FFree1Ad var_A0
  loc_B3B606: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_B3B611: FLdRfVar var_1AC
  loc_B3B614: LitVarStr var_D8, "feminpaco"
  loc_B3B619: PopAdLdVar
  loc_B3B61A: FLdRfVar var_A0
  loc_B3B61D: FLdRfVar var_1C0
  loc_B3B620: NewIfNullPr Me
  loc_B3B623:  = Me.Recordset15.Fields
  loc_B3B628: FLdPr var_A0
  loc_B3B62B: from_stack_2 = Me.Item(from_stack_1)
  loc_B3B630: FLdZeroAd var_1AC
  loc_B3B633: CVarAd
  loc_B3B637: ImpAdCallI2 IsNull()
  loc_B3B63C: FFree1Ad var_A0
  loc_B3B63F: FFree1Var var_B8 = ""
  loc_B3B642: BranchF loc_B3B66A
  loc_B3B645: LitI2_Byte 1
  loc_B3B647: LitI2_Byte 1
  loc_B3B649: FMemLdI2 arg_8(52)
  loc_B3B64E: FLdRfVar var_B8
  loc_B3B651: ImpAdCallFPR4  = DateSerial(, , )
  loc_B3B656: FLdRfVar var_B8
  loc_B3B659: FnCDateVar
  loc_B3B65B: FMemStFPR8 arg_8(36)
  loc_B3B660: FFreeVar var_B8 = ""
  loc_B3B667: Branch loc_B3B6C5
  loc_B3B66A: FLdRfVar var_1AC
  loc_B3B66D: LitVarStr var_D8, "feminpaco"
  loc_B3B672: PopAdLdVar
  loc_B3B673: FLdRfVar var_A0
  loc_B3B676: FLdRfVar var_1C0
  loc_B3B679: NewIfNullPr Me
  loc_B3B67C:  = Me.Recordset15.Fields
  loc_B3B681: FLdPr var_A0
  loc_B3B684: from_stack_2 = Me.Item(from_stack_1)
  loc_B3B689: LitI4 1
  loc_B3B68E: LitI4 1
  loc_B3B693: LitVarStr var_120, "dd/mm/yyyy"
  loc_B3B698: FStVarCopyObj var_C8
  loc_B3B69B: FLdRfVar var_C8
  loc_B3B69E: FLdZeroAd var_1AC
  loc_B3B6A1: CVarAd
  loc_B3B6A5: FLdRfVar var_E8
  loc_B3B6A8: ImpAdCallFPR4  = Format(, )
  loc_B3B6AD: FLdRfVar var_E8
  loc_B3B6B0: FnCDateVar
  loc_B3B6B2: FMemStFPR8 arg_8(36)
  loc_B3B6B7: FFree1Ad var_A0
  loc_B3B6BA: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_B3B6C5: FLdRfVar var_1C0
  loc_B3B6C8: NewIfNullPr Me
  loc_B3B6CB: Me.Recordset15.Close
  loc_B3B6D0: Branch loc_B3B8A9
  loc_B3B6D3: FMemLdRf unk_42C931
  loc_B3B6D8: CVarRef
  loc_B3B6DD: FLdRfVar var_B8
  loc_B3B6E0: ImpAdCallFPR4  = Year()
  loc_B3B6E5: FLdRfVar var_B8
  loc_B3B6E8: FMemLdI2 arg_8(52)
  loc_B3B6ED: CVarI2 var_120
  loc_B3B6F0: HardType
  loc_B3B6F1: GtVarBool
  loc_B3B6F3: FFree1Var var_B8 = ""
  loc_B3B6F6: BranchF loc_B3B8A9
  loc_B3B6F9: FLdRfVar var_1C0
  loc_B3B6FC: NewIfNullRf
  loc_B3B700: LitStr "SELECT FeminPaco, FemaxPaco FROM contpres.paraconta WHERE PeriInfo = '"
  loc_B3B703: FMemLdI2 arg_8(52)
  loc_B3B708: CStrUI1
  loc_B3B70A: FStStrNoPop var_10C
  loc_B3B70D: ConcatStr
  loc_B3B70E: FStStrNoPop var_110
  loc_B3B711: LitStr "'"
  loc_B3B714: ConcatStr
  loc_B3B715: FStStrNoPop var_1A4
  loc_B3B718: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_B3B71D: FFreeStr var_10C = "": var_110 = ""
  loc_B3B726: LitI4 -1
  loc_B3B72B: FLdRfVar var_1C0
  loc_B3B72E: NewIfNullPr Me
  loc_B3B731: Me.Recordset15.Requery from_stack_1
  loc_B3B736: FLdRfVar var_1AC
  loc_B3B739: LitVarStr var_D8, "FemaxPaco"
  loc_B3B73E: PopAdLdVar
  loc_B3B73F: FLdRfVar var_A0
  loc_B3B742: FLdRfVar var_1C0
  loc_B3B745: NewIfNullPr Me
  loc_B3B748:  = Me.Recordset15.Fields
  loc_B3B74D: FLdPr var_A0
  loc_B3B750: from_stack_2 = Me.Item(from_stack_1)
  loc_B3B755: FLdZeroAd var_1AC
  loc_B3B758: CVarAd
  loc_B3B75C: ImpAdCallI2 IsNull()
  loc_B3B761: FFree1Ad var_A0
  loc_B3B764: FFree1Var var_B8 = ""
  loc_B3B767: BranchF loc_B3B78F
  loc_B3B76A: LitI2_Byte &H1F
  loc_B3B76C: LitI2_Byte &HC
  loc_B3B76E: FMemLdI2 arg_8(52)
  loc_B3B773: FLdRfVar var_B8
  loc_B3B776: ImpAdCallFPR4  = DateSerial(, , )
  loc_B3B77B: FLdRfVar var_B8
  loc_B3B77E: FnCDateVar
  loc_B3B780: FMemStFPR8 arg_8(28)
  loc_B3B785: FFreeVar var_B8 = ""
  loc_B3B78C: Branch loc_B3B7EA
  loc_B3B78F: FLdRfVar var_1AC
  loc_B3B792: LitVarStr var_D8, "FemaxPaco"
  loc_B3B797: PopAdLdVar
  loc_B3B798: FLdRfVar var_A0
  loc_B3B79B: FLdRfVar var_1C0
  loc_B3B79E: NewIfNullPr Me
  loc_B3B7A1:  = Me.Recordset15.Fields
  loc_B3B7A6: FLdPr var_A0
  loc_B3B7A9: from_stack_2 = Me.Item(from_stack_1)
  loc_B3B7AE: LitI4 1
  loc_B3B7B3: LitI4 1
  loc_B3B7B8: LitVarStr var_120, "dd/mm/yyyy"
  loc_B3B7BD: FStVarCopyObj var_C8
  loc_B3B7C0: FLdRfVar var_C8
  loc_B3B7C3: FLdZeroAd var_1AC
  loc_B3B7C6: CVarAd
  loc_B3B7CA: FLdRfVar var_E8
  loc_B3B7CD: ImpAdCallFPR4  = Format(, )
  loc_B3B7D2: FLdRfVar var_E8
  loc_B3B7D5: FnCDateVar
  loc_B3B7D7: FMemStFPR8 arg_8(28)
  loc_B3B7DC: FFree1Ad var_A0
  loc_B3B7DF: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_B3B7EA: FLdRfVar var_1AC
  loc_B3B7ED: LitVarStr var_D8, "feminpaco"
  loc_B3B7F2: PopAdLdVar
  loc_B3B7F3: FLdRfVar var_A0
  loc_B3B7F6: FLdRfVar var_1C0
  loc_B3B7F9: NewIfNullPr Me
  loc_B3B7FC:  = Me.Recordset15.Fields
  loc_B3B801: FLdPr var_A0
  loc_B3B804: from_stack_2 = Me.Item(from_stack_1)
  loc_B3B809: FLdZeroAd var_1AC
  loc_B3B80C: CVarAd
  loc_B3B810: ImpAdCallI2 IsNull()
  loc_B3B815: FFree1Ad var_A0
  loc_B3B818: FFree1Var var_B8 = ""
  loc_B3B81B: BranchF loc_B3B843
  loc_B3B81E: LitI2_Byte 1
  loc_B3B820: LitI2_Byte 1
  loc_B3B822: FMemLdI2 arg_8(52)
  loc_B3B827: FLdRfVar var_B8
  loc_B3B82A: ImpAdCallFPR4  = DateSerial(, , )
  loc_B3B82F: FLdRfVar var_B8
  loc_B3B832: FnCDateVar
  loc_B3B834: FMemStFPR8 arg_8(36)
  loc_B3B839: FFreeVar var_B8 = ""
  loc_B3B840: Branch loc_B3B89E
  loc_B3B843: FLdRfVar var_1AC
  loc_B3B846: LitVarStr var_D8, "feminpaco"
  loc_B3B84B: PopAdLdVar
  loc_B3B84C: FLdRfVar var_A0
  loc_B3B84F: FLdRfVar var_1C0
  loc_B3B852: NewIfNullPr Me
  loc_B3B855:  = Me.Recordset15.Fields
  loc_B3B85A: FLdPr var_A0
  loc_B3B85D: from_stack_2 = Me.Item(from_stack_1)
  loc_B3B862: LitI4 1
  loc_B3B867: LitI4 1
  loc_B3B86C: LitVarStr var_120, "dd/mm/yyyy"
  loc_B3B871: FStVarCopyObj var_C8
  loc_B3B874: FLdRfVar var_C8
  loc_B3B877: FLdZeroAd var_1AC
  loc_B3B87A: CVarAd
  loc_B3B87E: FLdRfVar var_E8
  loc_B3B881: ImpAdCallFPR4  = Format(, )
  loc_B3B886: FLdRfVar var_E8
  loc_B3B889: FnCDateVar
  loc_B3B88B: FMemStFPR8 arg_8(36)
  loc_B3B890: FFree1Ad var_A0
  loc_B3B893: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_B3B89E: FLdRfVar var_1C0
  loc_B3B8A1: NewIfNullPr Me
  loc_B3B8A4: Me.Recordset15.Close
  loc_B3B8A9: FLdRfVar var_1C0
  loc_B3B8AC: NewIfNullRf
  loc_B3B8B0: LitStr "SELECT FeatUsua FROM infogov.usuario WHERE CodiUsua = '"
  loc_B3B8B3: FMemLdR4 arg_8(12)
  loc_B3B8B8: ConcatStr
  loc_B3B8B9: FStStrNoPop var_10C
  loc_B3B8BC: LitStr "'"
  loc_B3B8BF: ConcatStr
  loc_B3B8C0: FStStrNoPop var_110
  loc_B3B8C3: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_B3B8C8: FFreeStr var_10C = ""
  loc_B3B8CF: LitI4 -1
  loc_B3B8D4: FLdRfVar var_1C0
  loc_B3B8D7: NewIfNullPr Me
  loc_B3B8DA: Me.Recordset15.Requery from_stack_1
  loc_B3B8DF: FLdRfVar var_B8
  loc_B3B8E2: FLdRfVar var_1AC
  loc_B3B8E5: LitVarStr var_D8, "FeatUsua"
  loc_B3B8EA: PopAdLdVar
  loc_B3B8EB: FLdRfVar var_A0
  loc_B3B8EE: FLdRfVar var_1C0
  loc_B3B8F1: NewIfNullPr Me
  loc_B3B8F4:  = Me.Recordset15.Fields
  loc_B3B8F9: FLdPr var_A0
  loc_B3B8FC: from_stack_2 = Me.Item(from_stack_1)
  loc_B3B901: FLdPr var_1AC
  loc_B3B904:  = Me.Value
  loc_B3B909: FLdRfVar var_B8
  loc_B3B90C: LitVarI2 var_120, 1
  loc_B3B911: HardType
  loc_B3B912: EqVarBool
  loc_B3B914: FFreeAd var_A0 = ""
  loc_B3B91B: FFree1Var var_B8 = ""
  loc_B3B91E: BranchF loc_B3B924
  loc_B3B921: Branch loc_B3B92E
  loc_B3B924: FMemLdFPR8 arg_8(28)
  loc_B3B929: FMemStFPR8 arg_8(36)
  loc_B3B92E: FLdRfVar var_1C0
  loc_B3B931: NewIfNullPr Me
  loc_B3B934: Me.Recordset15.Close
  loc_B3B939: LitStr "InfoGov "
  loc_B3B93C: LitStr "v"
  loc_B3B93F: ConcatStr
  loc_B3B940: FStStrNoPop var_10C
  loc_B3B943: FLdRfVar var_1C2
  loc_B3B946: FLdRfVar var_A0
  loc_B3B949: ImpAdLdRf MemVar_C44F9C
  loc_B3B94C: NewIfNullPr Me
  loc_B3B94F:  = Me.Global.App
  loc_B3B954: FLdPr var_A0
  loc_B3B957:  = App.Major
  loc_B3B95C: FLdI2 var_1C2
  loc_B3B95F: CStrUI1
  loc_B3B961: FStStrNoPop var_110
  loc_B3B964: ConcatStr
  loc_B3B965: FStStrNoPop var_1A4
  loc_B3B968: LitStr "."
  loc_B3B96B: ConcatStr
  loc_B3B96C: FStStrNoPop var_1C8
  loc_B3B96F: FLdRfVar var_1C4
  loc_B3B972: FLdRfVar var_1AC
  loc_B3B975: ImpAdLdRf MemVar_C44F9C
  loc_B3B978: NewIfNullPr Me
  loc_B3B97B:  = Me.Global.App
  loc_B3B980: FLdPr var_1AC
  loc_B3B983:  = App.Minor
  loc_B3B988: FLdI2 var_1C4
  loc_B3B98B: CStrUI1
  loc_B3B98D: FStStrNoPop var_1CC
  loc_B3B990: ConcatStr
  loc_B3B991: FStStrNoPop var_1D0
  loc_B3B994: LitStr "."
  loc_B3B997: ConcatStr
  loc_B3B998: FStStrNoPop var_1D8
  loc_B3B99B: FLdRfVar var_1D2
  loc_B3B99E: FLdRfVar var_1B0
  loc_B3B9A1: ImpAdLdRf MemVar_C44F9C
  loc_B3B9A4: NewIfNullPr Me
  loc_B3B9A7:  = Me.Global.App
  loc_B3B9AC: FLdPr var_1B0
  loc_B3B9AF:  = App.Revision
  loc_B3B9B4: FLdI2 var_1D2
  loc_B3B9B7: CStrUI1
  loc_B3B9B9: FStStrNoPop var_1DC
  loc_B3B9BC: ConcatStr
  loc_B3B9BD: FStStrNoPop var_1E0
  loc_B3B9C0: LitStr " - Contabilidad y Presupuesto - "
  loc_B3B9C3: ConcatStr
  loc_B3B9C4: FStStrNoPop var_1E4
  loc_B3B9C7: LitStr "Municipalidad de Guaymallén"
  loc_B3B9CA: ConcatStr
  loc_B3B9CB: FStStrNoPop var_1E8
  loc_B3B9CE: LitStr " - Usuario: "
  loc_B3B9D1: ConcatStr
  loc_B3B9D2: FStStrNoPop var_1EC
  loc_B3B9D5: FMemLdR4 arg_8(12)
  loc_B3B9DA: ConcatStr
  loc_B3B9DB: FStStrNoPop var_1F0
  loc_B3B9DE: LitStr " - Periodo: "
  loc_B3B9E1: ConcatStr
  loc_B3B9E2: FStStrNoPop var_1F4
  loc_B3B9E5: FMemLdI2 arg_8(52)
  loc_B3B9EA: CStrUI1
  loc_B3B9EC: FStStrNoPop var_1F8
  loc_B3B9EF: ConcatStr
  loc_B3B9F0: CVarStr var_F8
  loc_B3B9F3: LitVarStr var_120, vbNullString
  loc_B3B9F8: FStVarCopyObj var_C8
  loc_B3B9FB: FLdRfVar var_C8
  loc_B3B9FE: LitStr " - "
  loc_B3BA01: ImpAdLdI4 MemVar_C3D008
  loc_B3BA04: ConcatStr
  loc_B3BA05: FStStrNoPop var_1FC
  loc_B3BA08: LitStr ": "
  loc_B3BA0B: ConcatStr
  loc_B3BA0C: FStStrNoPop var_200
  loc_B3BA0F: ImpAdLdI4 MemVar_C3D00C
  loc_B3BA12: ConcatStr
  loc_B3BA13: CVarStr var_B8
  loc_B3BA16: FMemLdR4 arg_8(12)
  loc_B3BA1B: LitStr "root"
  loc_B3BA1E: EqStr
  loc_B3BA20: CVarBoolI2 var_D8
  loc_B3BA24: FLdRfVar var_E8
  loc_B3BA27: ImpAdCallFPR4  = IIf(, , )
  loc_B3BA2C: FLdRfVar var_E8
  loc_B3BA2F: ConcatVar var_108
  loc_B3BA33: LitVarStr var_130, " - "
  loc_B3BA38: ConcatVar var_140
  loc_B3BA3C: FMemLdFPR8 arg_8(28)
  loc_B3BA41: CVarDate var_150
  loc_B3BA45: ConcatVar var_160
  loc_B3BA49: CStrVarVal var_204
  loc_B3BA4D: ImpAdLdRf MemVar_C3DB88
  loc_B3BA50: NewIfNullPr MdiContPres
  loc_B3BA53: MdiContPres.Caption = from_stack_1
  loc_B3BA58: FFreeStr var_10C = "": var_110 = "": var_1A4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = ""
  loc_B3BA7F: FFreeAd var_A0 = "": var_1AC = ""
  loc_B3BA88: FFreeVar var_D8 = "": var_B8 = "": var_C8 = "": var_F8 = "": var_E8 = "": var_108 = "": var_140 = ""
  loc_B3BA9B: ExitProc
End Function

Private Function Proc_261_41_999BCC() '999BCC
  'Data Table: 42C928
  loc_999B68: FLdRfVar var_8C
  loc_999B6B: ILdPr
  loc_999B6E:  = Form.Controls
  loc_999B73: FLdZeroAd var_8C
  loc_999B76: FStAdFuncNoPop
  loc_999B79: FLdRfVar var_88
  loc_999B7C: ForEachCollAd var_94
  loc_999B82: ILdRf var_88
  loc_999B85: CheckType
  loc_999B89: ILdRf var_88
  loc_999B8C: CheckType
  loc_999B90: OrI4
  loc_999B91: ILdRf var_88
  loc_999B94: CheckType
  loc_999B98: OrI4
  loc_999B99: ILdRf var_88
  loc_999B9C: CheckType
  loc_999BA0: OrI4
  loc_999BA1: ILdRf var_88
  loc_999BA4: CheckType
  loc_999BA8: OrI4
  loc_999BA9: ILdRf var_88
  loc_999BAC: CheckType
  loc_999BB0: OrI4
  loc_999BB1: BranchF loc_999BC1
  loc_999BB4: LitVarI2 var_A4, 12
  loc_999BB9: PopAdLdVar
  loc_999BBA: FLdPr var_88
  loc_999BBD: LateMemSt
  loc_999BC1: FLdRfVar var_88
  loc_999BC4: NextEachCollAd var_94
  loc_999BCA: ExitProc
End Function

Private Function Proc_261_42_9991A0() '9991A0
  'Data Table: 42C928
  loc_999140: FLdRfVar var_8C
  loc_999143: ILdPr
  loc_999146:  = Form.Controls
  loc_99914B: FLdZeroAd var_8C
  loc_99914E: FStAdFuncNoPop
  loc_999151: FLdRfVar var_88
  loc_999154: ForEachCollAd var_94
  loc_99915A: ILdRf var_88
  loc_99915D: CheckType
  loc_999161: ILdRf var_88
  loc_999164: CheckType
  loc_999168: OrI4
  loc_999169: ILdRf var_88
  loc_99916C: CheckType
  loc_999170: OrI4
  loc_999171: ILdRf var_88
  loc_999174: CheckType
  loc_999178: OrI4
  loc_999179: ILdRf var_88
  loc_99917C: CheckType
  loc_999180: OrI4
  loc_999181: BranchF loc_999194
  loc_999184: LitVarI4
  loc_99918C: PopAdLdVar
  loc_99918D: FLdPr var_88
  loc_999190: LateMemSt
  loc_999194: FLdRfVar var_88
  loc_999197: NextEachCollAd var_94
  loc_99919D: ExitProc
End Function

Private Function Proc_261_43_990EFC(arg_C) '990EFC
  'Data Table: 42C928
  loc_990EAC: ILdRf arg_C
  loc_990EAF: FStStrCopy var_88
  loc_990EB2: LitNothing
  loc_990EB4: CastAd
  loc_990EB7: FMemStAdFunc arg_8(0)
  loc_990EBD: New Connection
  loc_990EC1: FMemStAdFunc arg_8(0)
  loc_990EC7: LitI4 3
  loc_990ECC: FMemLdPr
  loc_990ED1: Connection.Connection15.CursorLocation = from_stack_1
  loc_990ED6: ILdRf var_88
  loc_990ED9: FMemLdPr
  loc_990EDE: Me.ConnectionString = from_stack_1
  loc_990EE3: LitI4 -1
  loc_990EE8: LitStr vbNullString
  loc_990EEB: LitStr vbNullString
  loc_990EEE: LitStr vbNullString
  loc_990EF1: FMemLdPr
  loc_990EF6: Me.Open from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_990EFB: ExitProc
End Function

Private Function Proc_261_44_9A4454(arg_C) '9A4454
  'Data Table: 42C928
  loc_9A43D0: ILdRf arg_C
  loc_9A43D3: FStStrCopy var_88
  loc_9A43D6: OnErrorGoto loc_9A442A
  loc_9A43D9: LitI2_Byte 0
  loc_9A43DB: CUI1I2
  loc_9A43DD: FStUI1 var_8A
  loc_9A43E1: LitNothing
  loc_9A43E3: CastAd
  loc_9A43E6: IStAdFunc
  loc_9A43EA: New Recordset
  loc_9A43EE: IStAdFunc
  loc_9A43F2: FLdUI1
  loc_9A43F6: CI2UI1
  loc_9A43F8: LitI2_Byte 1
  loc_9A43FA: AddI2
  loc_9A43FB: CUI1I2
  loc_9A43FD: FStUI1 var_8A
  loc_9A4401: LitI4 -1
  loc_9A4406: LitI4 3
  loc_9A440B: LitI4 3
  loc_9A4410: FMemLdR4 arg_8(0)
  loc_9A4415: CVarAd
  loc_9A4419: PopAdLdVar
  loc_9A441A: ILdRf var_88
  loc_9A441D: CVarStr var_9C
  loc_9A4420: PopAdLdVar
  loc_9A4421: ILdPr
  loc_9A4424: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_9A4429: ExitProc
  loc_9A442A: FLdUI1
  loc_9A442E: CI2UI1
  loc_9A4430: LitI2_Byte 3
  loc_9A4432: GtI2
  loc_9A4433: BranchF loc_9A4448
  loc_9A4436: LitI4 0
  loc_9A443B: LitStr "No hay conexión con el servidor. Verifique..."
  loc_9A443E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9A4443: End
  loc_9A4445: Branch loc_9A4453
  loc_9A4448: LitStr "dsn=mycontpres-guaymallen;uid=root;pwd=bv3yr0n;database=contpres;"
  loc_9A444B: ImpAdCallFPR4 Proc_261_43_990EFC()
  loc_9A4450: Branch loc_9A43F2
  loc_9A4453: ExitProc
End Function

Private Function Proc_261_45_9C79FC() '9C79FC
  'Data Table: 42C928
  loc_9C7920: OnErrorGoto loc_9C79B8
  loc_9C7923: LitI2_Byte 0
  loc_9C7925: CUI1I2
  loc_9C7927: FStUI1 var_86
  loc_9C792B: FLdUI1
  loc_9C792F: CI2UI1
  loc_9C7931: LitI2_Byte 1
  loc_9C7933: AddI2
  loc_9C7934: CUI1I2
  loc_9C7936: FStUI1 var_86
  loc_9C793A: FLdRfVar var_A0
  loc_9C793D: ILdPr
  loc_9C7940:  = Me.Source
  loc_9C7945: FLdRfVar var_A0
  loc_9C7948: CStrVarTmp
  loc_9C7949: FStStr var_8C
  loc_9C794C: FFree1Var var_A0 = ""
  loc_9C794F: FLdRfVar var_A0
  loc_9C7952: ILdPr
  loc_9C7955:  = Me.Filter
  loc_9C795A: FLdRfVar var_A0
  loc_9C795D: CStrVarTmp
  loc_9C795E: FStStr var_90
  loc_9C7961: FFree1Var var_A0 = ""
  loc_9C7964: LitNothing
  loc_9C7966: CastAd
  loc_9C7969: IStAdFunc
  loc_9C796D: New Recordset
  loc_9C7971: IStAdFunc
  loc_9C7975: LitI4 -1
  loc_9C797A: LitI4 3
  loc_9C797F: LitI4 3
  loc_9C7984: FMemLdR4 arg_8(0)
  loc_9C7989: CVarAd
  loc_9C798D: PopAdLdVar
  loc_9C798E: ILdRf var_8C
  loc_9C7991: CVarStr var_B0
  loc_9C7994: PopAdLdVar
  loc_9C7995: ILdPr
  loc_9C7998: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_9C799D: ILdRf var_90
  loc_9C79A0: LitStr "0"
  loc_9C79A3: NeStr
  loc_9C79A5: BranchF loc_9C79B7
  loc_9C79A8: ILdRf var_90
  loc_9C79AB: CVarStr var_B0
  loc_9C79AE: PopAdLdVar
  loc_9C79AF: ILdPr
  loc_9C79B2: Me.Filter = from_stack_1
  loc_9C79B7: ExitProc
  loc_9C79B8: FLdUI1
  loc_9C79BC: CI2UI1
  loc_9C79BE: LitI2_Byte 3
  loc_9C79C0: GtI2
  loc_9C79C1: BranchF loc_9C79D6
  loc_9C79C4: LitI4 0
  loc_9C79C9: LitStr "No hay conexión con el servidor. Verifique..."
  loc_9C79CC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9C79D1: End
  loc_9C79D3: Branch loc_9C79FB
  loc_9C79D6: FMemLdPr
  loc_9C79DB: Me.Close
  loc_9C79E0: LitI4 -1
  loc_9C79E5: LitStr vbNullString
  loc_9C79E8: LitStr vbNullString
  loc_9C79EB: LitStr vbNullString
  loc_9C79EE: FMemLdPr
  loc_9C79F3: Me.Open from_stack_1, from_stack_2, from_stack_3, from_stack_4
  loc_9C79F8: Branch loc_9C792B
  loc_9C79FB: ExitProc
End Function

Private Function Proc_261_46_9AA7A0(arg_C) '9AA7A0
  'Data Table: 42C928
  loc_9AA710: ILdRf arg_C
  loc_9AA713: FStStrCopy var_88
  loc_9AA716: OnErrorGoto loc_9AA761
  loc_9AA719: ILdRf var_88
  loc_9AA71C: LitStr vbNullString
  loc_9AA71F: NeStr
  loc_9AA721: BranchF loc_9AA760
  loc_9AA724: LitNothing
  loc_9AA726: CastAd
  loc_9AA729: IStAdFunc
  loc_9AA72D: New Recordset
  loc_9AA731: IStAdFunc
  loc_9AA735: LitI4 -1
  loc_9AA73A: LitI4 3
  loc_9AA73F: LitI4 3
  loc_9AA744: FMemLdR4 arg_8(0)
  loc_9AA749: CVarAd
  loc_9AA74D: PopAdLdVar
  loc_9AA74E: ILdRf var_88
  loc_9AA751: CVarStr var_98
  loc_9AA754: PopAdLdVar
  loc_9AA755: ILdPr
  loc_9AA758: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_9AA75D: Branch loc_9AA760
  loc_9AA760: ExitProc
  loc_9AA761: LitI4 0
  loc_9AA766: LitStr "Error de sintaxis. Envíe, por favor, un Requerimiento adjuntando una CAPTURA DE PANTALLA..."
  loc_9AA769: LitStr vbCrLf
  loc_9AA76C: ConcatStr
  loc_9AA76D: FStStrNoPop var_B4
  loc_9AA770: FLdRfVar var_B0
  loc_9AA773: ImpAdCallI2 Err 'rtcErrObj
  loc_9AA778: FStAdFunc var_AC
  loc_9AA77B: FLdPr var_AC
  loc_9AA77E:  = Err.Description
  loc_9AA783: ILdRf var_B0
  loc_9AA786: ConcatStr
  loc_9AA787: FStStrNoPop var_B8
  loc_9AA78A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9AA78F: FFreeStr var_B4 = "": var_B0 = ""
  loc_9AA798: FFree1Ad var_AC
  loc_9AA79B: End
  loc_9AA79D: ExitProc
End Function

Private Function Proc_261_47_A94EA0() 'A94EA0
  'Data Table: 42C928
  loc_A94A1C: FLdRfVar var_90
  loc_A94A1F: FLdRfVar var_8C
  loc_A94A22: ImpAdLdRf MemVar_C44F9C
  loc_A94A25: NewIfNullPr Me
  loc_A94A28:  = Me.Global.App
  loc_A94A2D: FLdPr var_8C
  loc_A94A30:  = App.Path
  loc_A94A35: FLdRfVar var_94
  loc_A94A38: LitStr "res1"
  loc_A94A3B: ILdRf var_90
  loc_A94A3E: FLdRfVar var_88
  loc_A94A41: NewIfNullPr IFileSystem3
  loc_A94A44: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A94A49: FLdRfVar var_96
  loc_A94A4C: ILdRf var_94
  loc_A94A4F: FLdRfVar var_88
  loc_A94A52: NewIfNullPr IFileSystem3
  loc_A94A55: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A94A5A: FLdI2 var_96
  loc_A94A5D: FFreeStr var_90 = ""
  loc_A94A64: FFree1Ad var_8C
  loc_A94A67: BranchF loc_A94AEE
  loc_A94A6A: FLdRfVar var_90
  loc_A94A6D: FLdRfVar var_8C
  loc_A94A70: ImpAdLdRf MemVar_C44F9C
  loc_A94A73: NewIfNullPr Me
  loc_A94A76:  = Me.Global.App
  loc_A94A7B: FLdPr var_8C
  loc_A94A7E:  = App.Path
  loc_A94A83: FLdRfVar var_94
  loc_A94A86: LitStr "res1"
  loc_A94A89: ILdRf var_90
  loc_A94A8C: FLdRfVar var_88
  loc_A94A8F: NewIfNullPr IFileSystem3
  loc_A94A92: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A94A97: FLdRfVar var_A0
  loc_A94A9A: FLdRfVar var_9C
  loc_A94A9D: LitI4 2
  loc_A94AA2: FLdRfVar var_88
  loc_A94AA5: NewIfNullPr IFileSystem3
  loc_A94AA8: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_A94AAD: FLdPr var_9C
  loc_A94AB0:  = Me.Path
  loc_A94AB5: FLdRfVar var_A4
  loc_A94AB8: LitStr "l1.jpg"
  loc_A94ABB: ILdRf var_A0
  loc_A94ABE: FLdRfVar var_88
  loc_A94AC1: NewIfNullPr IFileSystem3
  loc_A94AC4: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A94AC9: LitI2_Byte &HFF
  loc_A94ACB: ILdRf var_A4
  loc_A94ACE: ILdRf var_94
  loc_A94AD1: FLdRfVar var_88
  loc_A94AD4: NewIfNullPr IFileSystem3
  loc_A94AD7: from_stack_4 = IFileSystem3.IFileSystem.CopyFile(from_stack_1v, from_stack_2v, from_stack_3b)
  loc_A94ADC: FFreeStr var_90 = "": var_A0 = "": var_94 = ""
  loc_A94AE7: FFreeAd var_8C = ""
  loc_A94AEE: FLdRfVar var_90
  loc_A94AF1: FLdRfVar var_8C
  loc_A94AF4: ImpAdLdRf MemVar_C44F9C
  loc_A94AF7: NewIfNullPr Me
  loc_A94AFA:  = Me.Global.App
  loc_A94AFF: FLdPr var_8C
  loc_A94B02:  = App.Path
  loc_A94B07: FLdRfVar var_94
  loc_A94B0A: LitStr "res2"
  loc_A94B0D: ILdRf var_90
  loc_A94B10: FLdRfVar var_88
  loc_A94B13: NewIfNullPr IFileSystem3
  loc_A94B16: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A94B1B: FLdRfVar var_96
  loc_A94B1E: ILdRf var_94
  loc_A94B21: FLdRfVar var_88
  loc_A94B24: NewIfNullPr IFileSystem3
  loc_A94B27: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A94B2C: FLdI2 var_96
  loc_A94B2F: FFreeStr var_90 = ""
  loc_A94B36: FFree1Ad var_8C
  loc_A94B39: BranchF loc_A94BC0
  loc_A94B3C: FLdRfVar var_90
  loc_A94B3F: FLdRfVar var_8C
  loc_A94B42: ImpAdLdRf MemVar_C44F9C
  loc_A94B45: NewIfNullPr Me
  loc_A94B48:  = Me.Global.App
  loc_A94B4D: FLdPr var_8C
  loc_A94B50:  = App.Path
  loc_A94B55: FLdRfVar var_94
  loc_A94B58: LitStr "res2"
  loc_A94B5B: ILdRf var_90
  loc_A94B5E: FLdRfVar var_88
  loc_A94B61: NewIfNullPr IFileSystem3
  loc_A94B64: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A94B69: FLdRfVar var_A0
  loc_A94B6C: FLdRfVar var_9C
  loc_A94B6F: LitI4 2
  loc_A94B74: FLdRfVar var_88
  loc_A94B77: NewIfNullPr IFileSystem3
  loc_A94B7A: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_A94B7F: FLdPr var_9C
  loc_A94B82:  = Me.Path
  loc_A94B87: FLdRfVar var_A4
  loc_A94B8A: LitStr "l2.jpg"
  loc_A94B8D: ILdRf var_A0
  loc_A94B90: FLdRfVar var_88
  loc_A94B93: NewIfNullPr IFileSystem3
  loc_A94B96: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A94B9B: LitI2_Byte &HFF
  loc_A94B9D: ILdRf var_A4
  loc_A94BA0: ILdRf var_94
  loc_A94BA3: FLdRfVar var_88
  loc_A94BA6: NewIfNullPr IFileSystem3
  loc_A94BA9: from_stack_4 = IFileSystem3.IFileSystem.CopyFile(from_stack_1v, from_stack_2v, from_stack_3b)
  loc_A94BAE: FFreeStr var_90 = "": var_A0 = "": var_94 = ""
  loc_A94BB9: FFreeAd var_8C = ""
  loc_A94BC0: FLdRfVar var_90
  loc_A94BC3: FLdRfVar var_8C
  loc_A94BC6: ImpAdLdRf MemVar_C44F9C
  loc_A94BC9: NewIfNullPr Me
  loc_A94BCC:  = Me.Global.App
  loc_A94BD1: FLdPr var_8C
  loc_A94BD4:  = App.Path
  loc_A94BD9: FLdRfVar var_94
  loc_A94BDC: LitStr "res3"
  loc_A94BDF: ILdRf var_90
  loc_A94BE2: FLdRfVar var_88
  loc_A94BE5: NewIfNullPr IFileSystem3
  loc_A94BE8: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A94BED: FLdRfVar var_96
  loc_A94BF0: ILdRf var_94
  loc_A94BF3: FLdRfVar var_88
  loc_A94BF6: NewIfNullPr IFileSystem3
  loc_A94BF9: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A94BFE: FLdI2 var_96
  loc_A94C01: FFreeStr var_90 = ""
  loc_A94C08: FFree1Ad var_8C
  loc_A94C0B: BranchF loc_A94C92
  loc_A94C0E: FLdRfVar var_90
  loc_A94C11: FLdRfVar var_8C
  loc_A94C14: ImpAdLdRf MemVar_C44F9C
  loc_A94C17: NewIfNullPr Me
  loc_A94C1A:  = Me.Global.App
  loc_A94C1F: FLdPr var_8C
  loc_A94C22:  = App.Path
  loc_A94C27: FLdRfVar var_94
  loc_A94C2A: LitStr "res3"
  loc_A94C2D: ILdRf var_90
  loc_A94C30: FLdRfVar var_88
  loc_A94C33: NewIfNullPr IFileSystem3
  loc_A94C36: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A94C3B: FLdRfVar var_A0
  loc_A94C3E: FLdRfVar var_9C
  loc_A94C41: LitI4 2
  loc_A94C46: FLdRfVar var_88
  loc_A94C49: NewIfNullPr IFileSystem3
  loc_A94C4C: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_A94C51: FLdPr var_9C
  loc_A94C54:  = Me.Path
  loc_A94C59: FLdRfVar var_A4
  loc_A94C5C: LitStr "l3.jpg"
  loc_A94C5F: ILdRf var_A0
  loc_A94C62: FLdRfVar var_88
  loc_A94C65: NewIfNullPr IFileSystem3
  loc_A94C68: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A94C6D: LitI2_Byte &HFF
  loc_A94C6F: ILdRf var_A4
  loc_A94C72: ILdRf var_94
  loc_A94C75: FLdRfVar var_88
  loc_A94C78: NewIfNullPr IFileSystem3
  loc_A94C7B: from_stack_4 = IFileSystem3.IFileSystem.CopyFile(from_stack_1v, from_stack_2v, from_stack_3b)
  loc_A94C80: FFreeStr var_90 = "": var_A0 = "": var_94 = ""
  loc_A94C8B: FFreeAd var_8C = ""
  loc_A94C92: FLdRfVar var_90
  loc_A94C95: FLdRfVar var_8C
  loc_A94C98: ImpAdLdRf MemVar_C44F9C
  loc_A94C9B: NewIfNullPr Me
  loc_A94C9E:  = Me.Global.App
  loc_A94CA3: FLdPr var_8C
  loc_A94CA6:  = App.Path
  loc_A94CAB: FLdRfVar var_94
  loc_A94CAE: LitStr "res4"
  loc_A94CB1: ILdRf var_90
  loc_A94CB4: FLdRfVar var_88
  loc_A94CB7: NewIfNullPr IFileSystem3
  loc_A94CBA: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A94CBF: FLdRfVar var_96
  loc_A94CC2: ILdRf var_94
  loc_A94CC5: FLdRfVar var_88
  loc_A94CC8: NewIfNullPr IFileSystem3
  loc_A94CCB: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A94CD0: FLdI2 var_96
  loc_A94CD3: FFreeStr var_90 = ""
  loc_A94CDA: FFree1Ad var_8C
  loc_A94CDD: BranchF loc_A94D64
  loc_A94CE0: FLdRfVar var_90
  loc_A94CE3: FLdRfVar var_8C
  loc_A94CE6: ImpAdLdRf MemVar_C44F9C
  loc_A94CE9: NewIfNullPr Me
  loc_A94CEC:  = Me.Global.App
  loc_A94CF1: FLdPr var_8C
  loc_A94CF4:  = App.Path
  loc_A94CF9: FLdRfVar var_94
  loc_A94CFC: LitStr "res4"
  loc_A94CFF: ILdRf var_90
  loc_A94D02: FLdRfVar var_88
  loc_A94D05: NewIfNullPr IFileSystem3
  loc_A94D08: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A94D0D: FLdRfVar var_A0
  loc_A94D10: FLdRfVar var_9C
  loc_A94D13: LitI4 2
  loc_A94D18: FLdRfVar var_88
  loc_A94D1B: NewIfNullPr IFileSystem3
  loc_A94D1E: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_A94D23: FLdPr var_9C
  loc_A94D26:  = Me.Path
  loc_A94D2B: FLdRfVar var_A4
  loc_A94D2E: LitStr "l4.jpg"
  loc_A94D31: ILdRf var_A0
  loc_A94D34: FLdRfVar var_88
  loc_A94D37: NewIfNullPr IFileSystem3
  loc_A94D3A: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A94D3F: LitI2_Byte &HFF
  loc_A94D41: ILdRf var_A4
  loc_A94D44: ILdRf var_94
  loc_A94D47: FLdRfVar var_88
  loc_A94D4A: NewIfNullPr IFileSystem3
  loc_A94D4D: from_stack_4 = IFileSystem3.IFileSystem.CopyFile(from_stack_1v, from_stack_2v, from_stack_3b)
  loc_A94D52: FFreeStr var_90 = "": var_A0 = "": var_94 = ""
  loc_A94D5D: FFreeAd var_8C = ""
  loc_A94D64: FLdRfVar var_90
  loc_A94D67: FLdRfVar var_8C
  loc_A94D6A: ImpAdLdRf MemVar_C44F9C
  loc_A94D6D: NewIfNullPr Me
  loc_A94D70:  = Me.Global.App
  loc_A94D75: FLdPr var_8C
  loc_A94D78:  = App.Path
  loc_A94D7D: FLdRfVar var_94
  loc_A94D80: LitStr "res1"
  loc_A94D83: ILdRf var_90
  loc_A94D86: FLdRfVar var_88
  loc_A94D89: NewIfNullPr IFileSystem3
  loc_A94D8C: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A94D91: FLdRfVar var_A0
  loc_A94D94: FLdRfVar var_9C
  loc_A94D97: ImpAdLdRf MemVar_C44F9C
  loc_A94D9A: NewIfNullPr Me
  loc_A94D9D:  = Me.Global.App
  loc_A94DA2: FLdPr var_9C
  loc_A94DA5:  = App.Path
  loc_A94DAA: FLdRfVar var_A4
  loc_A94DAD: LitStr "res2"
  loc_A94DB0: ILdRf var_A0
  loc_A94DB3: FLdRfVar var_88
  loc_A94DB6: NewIfNullPr IFileSystem3
  loc_A94DB9: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A94DBE: FLdRfVar var_B0
  loc_A94DC1: FLdRfVar var_AC
  loc_A94DC4: ImpAdLdRf MemVar_C44F9C
  loc_A94DC7: NewIfNullPr Me
  loc_A94DCA:  = Me.Global.App
  loc_A94DCF: FLdPr var_AC
  loc_A94DD2:  = App.Path
  loc_A94DD7: FLdRfVar var_B4
  loc_A94DDA: LitStr "res3"
  loc_A94DDD: ILdRf var_B0
  loc_A94DE0: FLdRfVar var_88
  loc_A94DE3: NewIfNullPr IFileSystem3
  loc_A94DE6: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A94DEB: FLdRfVar var_C0
  loc_A94DEE: FLdRfVar var_BC
  loc_A94DF1: ImpAdLdRf MemVar_C44F9C
  loc_A94DF4: NewIfNullPr Me
  loc_A94DF7:  = Me.Global.App
  loc_A94DFC: FLdPr var_BC
  loc_A94DFF:  = App.Path
  loc_A94E04: FLdRfVar var_C4
  loc_A94E07: LitStr "res4"
  loc_A94E0A: ILdRf var_C0
  loc_A94E0D: FLdRfVar var_88
  loc_A94E10: NewIfNullPr IFileSystem3
  loc_A94E13: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A94E18: FLdRfVar var_96
  loc_A94E1B: ILdRf var_94
  loc_A94E1E: FLdRfVar var_88
  loc_A94E21: NewIfNullPr IFileSystem3
  loc_A94E24: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A94E29: FLdI2 var_96
  loc_A94E2C: FLdRfVar var_A6
  loc_A94E2F: ILdRf var_A4
  loc_A94E32: FLdRfVar var_88
  loc_A94E35: NewIfNullPr IFileSystem3
  loc_A94E38: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A94E3D: FLdI2 var_A6
  loc_A94E40: AndI4
  loc_A94E41: FLdRfVar var_B6
  loc_A94E44: ILdRf var_B4
  loc_A94E47: FLdRfVar var_88
  loc_A94E4A: NewIfNullPr IFileSystem3
  loc_A94E4D: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A94E52: FLdI2 var_B6
  loc_A94E55: AndI4
  loc_A94E56: FLdRfVar var_C6
  loc_A94E59: ILdRf var_C4
  loc_A94E5C: FLdRfVar var_88
  loc_A94E5F: NewIfNullPr IFileSystem3
  loc_A94E62: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A94E67: FLdI2 var_C6
  loc_A94E6A: AndI4
  loc_A94E6B: NotI4
  loc_A94E6C: FFreeStr var_90 = "": var_94 = "": var_A0 = "": var_A4 = "": var_B0 = "": var_B4 = "": var_C0 = ""
  loc_A94E7F: FFreeAd var_8C = "": var_9C = "": var_AC = ""
  loc_A94E8A: BranchF loc_A94E95
  loc_A94E8D: ImpAdCallFPR4 DoEvents()
  loc_A94E92: Branch loc_A94D64
  loc_A94E95: LitNothing
  loc_A94E97: CastAd
  loc_A94E9A: FStAdFunc var_88
  loc_A94E9D: ExitProc
  loc_A94E9E: FnStrComp3
End Function

Private Function Proc_261_48_A1F66C() 'A1F66C
  'Data Table: 42C928
  loc_A1F4C4: LitStr "Falta el archivo: "
  loc_A1F4C7: FStStrCopy var_8C
  loc_A1F4CA: FLdRfVar var_94
  loc_A1F4CD: FLdRfVar var_90
  loc_A1F4D0: ImpAdLdRf MemVar_C44F9C
  loc_A1F4D3: NewIfNullPr Me
  loc_A1F4D6:  = Me.Global.App
  loc_A1F4DB: FLdPr var_90
  loc_A1F4DE:  = App.Path
  loc_A1F4E3: FLdRfVar var_98
  loc_A1F4E6: LitStr "res1"
  loc_A1F4E9: ILdRf var_94
  loc_A1F4EC: FLdRfVar var_88
  loc_A1F4EF: NewIfNullPr IFileSystem3
  loc_A1F4F2: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A1F4F7: FLdRfVar var_9A
  loc_A1F4FA: ILdRf var_98
  loc_A1F4FD: FLdRfVar var_88
  loc_A1F500: NewIfNullPr IFileSystem3
  loc_A1F503: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A1F508: FLdI2 var_9A
  loc_A1F50B: NotI4
  loc_A1F50C: FFreeStr var_94 = ""
  loc_A1F513: FFree1Ad var_90
  loc_A1F516: BranchF loc_A1F532
  loc_A1F519: LitI4 0
  loc_A1F51E: ILdRf var_8C
  loc_A1F521: LitStr "'res1'"
  loc_A1F524: ConcatStr
  loc_A1F525: FStStrNoPop var_94
  loc_A1F528: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A1F52D: FFree1Str var_94
  loc_A1F530: End
  loc_A1F532: FLdRfVar var_94
  loc_A1F535: FLdRfVar var_90
  loc_A1F538: ImpAdLdRf MemVar_C44F9C
  loc_A1F53B: NewIfNullPr Me
  loc_A1F53E:  = Me.Global.App
  loc_A1F543: FLdPr var_90
  loc_A1F546:  = App.Path
  loc_A1F54B: FLdRfVar var_98
  loc_A1F54E: LitStr "res2"
  loc_A1F551: ILdRf var_94
  loc_A1F554: FLdRfVar var_88
  loc_A1F557: NewIfNullPr IFileSystem3
  loc_A1F55A: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A1F55F: FLdRfVar var_9A
  loc_A1F562: ILdRf var_98
  loc_A1F565: FLdRfVar var_88
  loc_A1F568: NewIfNullPr IFileSystem3
  loc_A1F56B: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A1F570: FLdI2 var_9A
  loc_A1F573: NotI4
  loc_A1F574: FFreeStr var_94 = ""
  loc_A1F57B: FFree1Ad var_90
  loc_A1F57E: BranchF loc_A1F59A
  loc_A1F581: LitI4 0
  loc_A1F586: ILdRf var_8C
  loc_A1F589: LitStr "'res2'"
  loc_A1F58C: ConcatStr
  loc_A1F58D: FStStrNoPop var_94
  loc_A1F590: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A1F595: FFree1Str var_94
  loc_A1F598: End
  loc_A1F59A: FLdRfVar var_94
  loc_A1F59D: FLdRfVar var_90
  loc_A1F5A0: ImpAdLdRf MemVar_C44F9C
  loc_A1F5A3: NewIfNullPr Me
  loc_A1F5A6:  = Me.Global.App
  loc_A1F5AB: FLdPr var_90
  loc_A1F5AE:  = App.Path
  loc_A1F5B3: FLdRfVar var_98
  loc_A1F5B6: LitStr "res3"
  loc_A1F5B9: ILdRf var_94
  loc_A1F5BC: FLdRfVar var_88
  loc_A1F5BF: NewIfNullPr IFileSystem3
  loc_A1F5C2: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A1F5C7: FLdRfVar var_9A
  loc_A1F5CA: ILdRf var_98
  loc_A1F5CD: FLdRfVar var_88
  loc_A1F5D0: NewIfNullPr IFileSystem3
  loc_A1F5D3: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A1F5D8: FLdI2 var_9A
  loc_A1F5DB: NotI4
  loc_A1F5DC: FFreeStr var_94 = ""
  loc_A1F5E3: FFree1Ad var_90
  loc_A1F5E6: BranchF loc_A1F602
  loc_A1F5E9: LitI4 0
  loc_A1F5EE: ILdRf var_8C
  loc_A1F5F1: LitStr "'res3'"
  loc_A1F5F4: ConcatStr
  loc_A1F5F5: FStStrNoPop var_94
  loc_A1F5F8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A1F5FD: FFree1Str var_94
  loc_A1F600: End
  loc_A1F602: FLdRfVar var_94
  loc_A1F605: FLdRfVar var_90
  loc_A1F608: ImpAdLdRf MemVar_C44F9C
  loc_A1F60B: NewIfNullPr Me
  loc_A1F60E:  = Me.Global.App
  loc_A1F613: FLdPr var_90
  loc_A1F616:  = App.Path
  loc_A1F61B: FLdRfVar var_98
  loc_A1F61E: LitStr "res4"
  loc_A1F621: ILdRf var_94
  loc_A1F624: FLdRfVar var_88
  loc_A1F627: NewIfNullPr IFileSystem3
  loc_A1F62A: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A1F62F: FLdRfVar var_9A
  loc_A1F632: ILdRf var_98
  loc_A1F635: FLdRfVar var_88
  loc_A1F638: NewIfNullPr IFileSystem3
  loc_A1F63B: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A1F640: FLdI2 var_9A
  loc_A1F643: NotI4
  loc_A1F644: FFreeStr var_94 = ""
  loc_A1F64B: FFree1Ad var_90
  loc_A1F64E: BranchF loc_A1F66A
  loc_A1F651: LitI4 0
  loc_A1F656: ILdRf var_8C
  loc_A1F659: LitStr "'res4'"
  loc_A1F65C: ConcatStr
  loc_A1F65D: FStStrNoPop var_94
  loc_A1F660: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A1F665: FFree1Str var_94
  loc_A1F668: End
  loc_A1F66A: ExitProc
End Function

Private Function Proc_261_49_A125F8() 'A125F8
  'Data Table: 42C928
  loc_A1247C: FLdRfVar var_94
  loc_A1247F: FLdRfVar var_90
  loc_A12482: LitI4 2
  loc_A12487: FLdRfVar var_88
  loc_A1248A: NewIfNullPr IFileSystem3
  loc_A1248D: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_A12492: FLdPr var_90
  loc_A12495:  = Me.Path
  loc_A1249A: FLdZeroAd var_94
  loc_A1249D: FStStr var_8C
  loc_A124A0: FFree1Ad var_90
  loc_A124A3: FLdRfVar var_94
  loc_A124A6: LitStr "l1.jpg"
  loc_A124A9: ILdRf var_8C
  loc_A124AC: FLdRfVar var_88
  loc_A124AF: NewIfNullPr IFileSystem3
  loc_A124B2: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A124B7: FLdRfVar var_96
  loc_A124BA: ILdRf var_94
  loc_A124BD: FLdRfVar var_88
  loc_A124C0: NewIfNullPr IFileSystem3
  loc_A124C3: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A124C8: FLdI2 var_96
  loc_A124CB: FFree1Str var_94
  loc_A124CE: BranchF loc_A124F8
  loc_A124D1: FLdRfVar var_94
  loc_A124D4: LitStr "l1.jpg"
  loc_A124D7: ILdRf var_8C
  loc_A124DA: FLdRfVar var_88
  loc_A124DD: NewIfNullPr IFileSystem3
  loc_A124E0: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A124E5: LitI2_Byte &HFF
  loc_A124E7: ILdRf var_94
  loc_A124EA: FLdRfVar var_88
  loc_A124ED: NewIfNullPr IFileSystem3
  loc_A124F0: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_A124F5: FFree1Str var_94
  loc_A124F8: FLdRfVar var_94
  loc_A124FB: LitStr "l2.jpg"
  loc_A124FE: ILdRf var_8C
  loc_A12501: FLdRfVar var_88
  loc_A12504: NewIfNullPr IFileSystem3
  loc_A12507: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A1250C: FLdRfVar var_96
  loc_A1250F: ILdRf var_94
  loc_A12512: FLdRfVar var_88
  loc_A12515: NewIfNullPr IFileSystem3
  loc_A12518: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A1251D: FLdI2 var_96
  loc_A12520: FFree1Str var_94
  loc_A12523: BranchF loc_A1254D
  loc_A12526: FLdRfVar var_94
  loc_A12529: LitStr "l2.jpg"
  loc_A1252C: ILdRf var_8C
  loc_A1252F: FLdRfVar var_88
  loc_A12532: NewIfNullPr IFileSystem3
  loc_A12535: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A1253A: LitI2_Byte &HFF
  loc_A1253C: ILdRf var_94
  loc_A1253F: FLdRfVar var_88
  loc_A12542: NewIfNullPr IFileSystem3
  loc_A12545: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_A1254A: FFree1Str var_94
  loc_A1254D: FLdRfVar var_94
  loc_A12550: LitStr "l3.jpg"
  loc_A12553: ILdRf var_8C
  loc_A12556: FLdRfVar var_88
  loc_A12559: NewIfNullPr IFileSystem3
  loc_A1255C: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A12561: FLdRfVar var_96
  loc_A12564: ILdRf var_94
  loc_A12567: FLdRfVar var_88
  loc_A1256A: NewIfNullPr IFileSystem3
  loc_A1256D: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A12572: FLdI2 var_96
  loc_A12575: FFree1Str var_94
  loc_A12578: BranchF loc_A125A2
  loc_A1257B: FLdRfVar var_94
  loc_A1257E: LitStr "l3.jpg"
  loc_A12581: ILdRf var_8C
  loc_A12584: FLdRfVar var_88
  loc_A12587: NewIfNullPr IFileSystem3
  loc_A1258A: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A1258F: LitI2_Byte &HFF
  loc_A12591: ILdRf var_94
  loc_A12594: FLdRfVar var_88
  loc_A12597: NewIfNullPr IFileSystem3
  loc_A1259A: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_A1259F: FFree1Str var_94
  loc_A125A2: FLdRfVar var_94
  loc_A125A5: LitStr "graf1.bmp"
  loc_A125A8: ILdRf var_8C
  loc_A125AB: FLdRfVar var_88
  loc_A125AE: NewIfNullPr IFileSystem3
  loc_A125B1: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A125B6: FLdRfVar var_96
  loc_A125B9: ILdRf var_94
  loc_A125BC: FLdRfVar var_88
  loc_A125BF: NewIfNullPr IFileSystem3
  loc_A125C2: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A125C7: FLdI2 var_96
  loc_A125CA: FFree1Str var_94
  loc_A125CD: BranchF loc_A125F7
  loc_A125D0: FLdRfVar var_94
  loc_A125D3: LitStr "graf1.bmp"
  loc_A125D6: ILdRf var_8C
  loc_A125D9: FLdRfVar var_88
  loc_A125DC: NewIfNullPr IFileSystem3
  loc_A125DF: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A125E4: LitI2_Byte &HFF
  loc_A125E6: ILdRf var_94
  loc_A125E9: FLdRfVar var_88
  loc_A125EC: NewIfNullPr IFileSystem3
  loc_A125EF: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_A125F4: FFree1Str var_94
  loc_A125F7: ExitProc
End Function

Private Function Proc_261_50_9B5324() '9B5324
  'Data Table: 42C928
  loc_9B5294: FLdRfVar var_94
  loc_9B5297: FLdRfVar var_90
  loc_9B529A: LitI4 2
  loc_9B529F: FLdRfVar var_88
  loc_9B52A2: NewIfNullPr IFileSystem3
  loc_9B52A5: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_9B52AA: FLdPr var_90
  loc_9B52AD:  = Me.Path
  loc_9B52B2: FLdZeroAd var_94
  loc_9B52B5: FStStr var_8C
  loc_9B52B8: FFree1Ad var_90
  loc_9B52BB: LitVarStr var_B4, "del /F "
  loc_9B52C0: LitI4 &H22
  loc_9B52C5: FLdRfVar var_A4
  loc_9B52C8: ImpAdCallFPR4  = Chr()
  loc_9B52CD: FLdRfVar var_A4
  loc_9B52D0: ConcatVar var_C4
  loc_9B52D4: FLdRfVar var_94
  loc_9B52D7: LitStr "*.rep"
  loc_9B52DA: ILdRf var_8C
  loc_9B52DD: FLdRfVar var_88
  loc_9B52E0: NewIfNullPr IFileSystem3
  loc_9B52E3: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_9B52E8: FLdZeroAd var_94
  loc_9B52EB: CVarStr var_D4
  loc_9B52EE: ConcatVar var_E4
  loc_9B52F2: LitI4 &H22
  loc_9B52F7: FLdRfVar var_F4
  loc_9B52FA: ImpAdCallFPR4  = Chr()
  loc_9B52FF: FLdRfVar var_F4
  loc_9B5302: ConcatVar var_104
  loc_9B5306: CStrVarVal var_108
  loc_9B530A: ImpAdCallFPR4 Proc_261_25_9B8B60()
  loc_9B530F: FFree1Str var_108
  loc_9B5312: FFreeVar var_A4 = "": var_C4 = "": var_D4 = "": var_E4 = "": var_F4 = ""
  loc_9B5321: ExitProc
End Function

Private Function Proc_261_51_A831CC() 'A831CC
  'Data Table: 42C928
  loc_A82E14: FLdRfVar var_88
  loc_A82E17: NewIfNullRf
  loc_A82E1B: LitStr "SET @sUsuario = '"
  loc_A82E1E: FMemLdR4 arg_8(12)
  loc_A82E23: ConcatStr
  loc_A82E24: FStStrNoPop var_8C
  loc_A82E27: LitStr "';"
  loc_A82E2A: ConcatStr
  loc_A82E2B: FStStrNoPop var_A0
  loc_A82E2E: ImpAdCallFPR4  = Proc_261_44_9A4454()
  loc_A82E33: FFreeStr var_8C = ""
  loc_A82E3A: FLdRfVar var_A6
  loc_A82E3D: FLdRfVar var_A4
  loc_A82E40: ImpAdLdRf MemVar_C44F9C
  loc_A82E43: NewIfNullPr Me
  loc_A82E46:  = Me.Global.App
  loc_A82E4B: FLdPr var_A4
  loc_A82E4E:  = App.Major
  loc_A82E53: FLdRfVar var_B2
  loc_A82E56: FLdRfVar var_B0
  loc_A82E59: ImpAdLdRf MemVar_C44F9C
  loc_A82E5C: NewIfNullPr Me
  loc_A82E5F:  = Me.Global.App
  loc_A82E64: FLdPr var_B0
  loc_A82E67:  = App.Minor
  loc_A82E6C: FLdRfVar var_C6
  loc_A82E6F: FLdRfVar var_C4
  loc_A82E72: ImpAdLdRf MemVar_C44F9C
  loc_A82E75: NewIfNullPr Me
  loc_A82E78:  = Me.Global.App
  loc_A82E7D: FLdPr var_C4
  loc_A82E80:  = App.Revision
  loc_A82E85: FLdRfVar var_DE
  loc_A82E88: FLdRfVar var_DC
  loc_A82E8B: ImpAdLdRf MemVar_C44F9C
  loc_A82E8E: NewIfNullPr Me
  loc_A82E91:  = Me.Global.App
  loc_A82E96: FLdPr var_DC
  loc_A82E99:  = App.Major
  loc_A82E9E: FLdRfVar var_F2
  loc_A82EA1: FLdRfVar var_F0
  loc_A82EA4: ImpAdLdRf MemVar_C44F9C
  loc_A82EA7: NewIfNullPr Me
  loc_A82EAA:  = Me.Global.App
  loc_A82EAF: FLdPr var_F0
  loc_A82EB2:  = App.Minor
  loc_A82EB7: FLdRfVar var_106
  loc_A82EBA: FLdRfVar var_104
  loc_A82EBD: ImpAdLdRf MemVar_C44F9C
  loc_A82EC0: NewIfNullPr Me
  loc_A82EC3:  = Me.Global.App
  loc_A82EC8: FLdPr var_104
  loc_A82ECB:  = App.Revision
  loc_A82ED0: FLdRfVar var_88
  loc_A82ED3: NewIfNullRf
  loc_A82ED7: LitStr "SELECT MuniVers"
  loc_A82EDA: LitStr ", Concat(Lpad(MajoVers,4,'0'),Lpad(MinoVers,4,'0'),Lpad(ReviVers,4,'0')) > Concat(Lpad("
  loc_A82EDD: ConcatStr
  loc_A82EDE: FStStrNoPop var_8C
  loc_A82EE1: FLdI2 var_A6
  loc_A82EE4: CStrUI1
  loc_A82EE6: FStStrNoPop var_A0
  loc_A82EE9: ConcatStr
  loc_A82EEA: FStStrNoPop var_AC
  loc_A82EED: LitStr ",4,'0'),Lpad("
  loc_A82EF0: ConcatStr
  loc_A82EF1: FStStrNoPop var_B8
  loc_A82EF4: FLdI2 var_B2
  loc_A82EF7: CStrUI1
  loc_A82EF9: FStStrNoPop var_BC
  loc_A82EFC: ConcatStr
  loc_A82EFD: FStStrNoPop var_C0
  loc_A82F00: LitStr ",4,'0'),Lpad("
  loc_A82F03: ConcatStr
  loc_A82F04: FStStrNoPop var_CC
  loc_A82F07: FLdI2 var_C6
  loc_A82F0A: CStrUI1
  loc_A82F0C: FStStrNoPop var_D0
  loc_A82F0F: ConcatStr
  loc_A82F10: FStStrNoPop var_D4
  loc_A82F13: LitStr ",4,'0')) Mayor"
  loc_A82F16: ConcatStr
  loc_A82F17: FStStrNoPop var_D8
  loc_A82F1A: LitStr ", Concat(Lpad(MajoVers,4,'0'),Lpad(MinoVers,4,'0'),Lpad(ReviVers,4,'0')) < Concat(Lpad("
  loc_A82F1D: ConcatStr
  loc_A82F1E: FStStrNoPop var_E4
  loc_A82F21: FLdI2 var_DE
  loc_A82F24: CStrUI1
  loc_A82F26: FStStrNoPop var_E8
  loc_A82F29: ConcatStr
  loc_A82F2A: FStStrNoPop var_EC
  loc_A82F2D: LitStr ",4,'0'),Lpad("
  loc_A82F30: ConcatStr
  loc_A82F31: FStStrNoPop var_F8
  loc_A82F34: FLdI2 var_F2
  loc_A82F37: CStrUI1
  loc_A82F39: FStStrNoPop var_FC
  loc_A82F3C: ConcatStr
  loc_A82F3D: FStStrNoPop var_100
  loc_A82F40: LitStr ",4,'0'),Lpad("
  loc_A82F43: ConcatStr
  loc_A82F44: FStStrNoPop var_10C
  loc_A82F47: FLdI2 var_106
  loc_A82F4A: CStrUI1
  loc_A82F4C: FStStrNoPop var_110
  loc_A82F4F: ConcatStr
  loc_A82F50: FStStrNoPop var_114
  loc_A82F53: LitStr ",4,'0')) Menor"
  loc_A82F56: ConcatStr
  loc_A82F57: FStStrNoPop var_118
  loc_A82F5A: LitStr " FROM version"
  loc_A82F5D: ConcatStr
  loc_A82F5E: FStStrNoPop var_11C
  loc_A82F61: ImpAdCallFPR4  = Proc_261_44_9A4454()
  loc_A82F66: FFreeStr var_8C = "": var_A0 = "": var_AC = "": var_B8 = "": var_BC = "": var_C0 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F8 = "": var_FC = "": var_100 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_A82F93: FFreeAd var_A4 = "": var_B0 = "": var_C4 = "": var_DC = "": var_F0 = ""
  loc_A82FA2: FLdRfVar var_88
  loc_A82FA5: NewIfNullAd
  loc_A82FA8: FStAd var_120 
  loc_A82FAC: FLdRfVar var_124
  loc_A82FAF: FLdPr var_120
  loc_A82FB2:  = Me.RecordCount
  loc_A82FB7: ILdRf var_124
  loc_A82FBA: LitI4 0
  loc_A82FBF: EqI4
  loc_A82FC0: BranchF loc_A82FD5
  loc_A82FC3: LitI4 0
  loc_A82FC8: LitStr "Control de versión necesita verificación en la base de datos"
  loc_A82FCB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A82FD0: End
  loc_A82FD2: Branch loc_A831BB
  loc_A82FD5: LitVarStr var_144, "Municipalidad de Guaymallén"
  loc_A82FDA: HardType
  loc_A82FDB: FLdRfVar var_9C
  loc_A82FDE: FLdRfVar var_B0
  loc_A82FE1: LitVarStr var_134, "MuniVers"
  loc_A82FE6: PopAdLdVar
  loc_A82FE7: FLdRfVar var_A4
  loc_A82FEA: FLdPr var_120
  loc_A82FED:  = Me.Fields
  loc_A82FF2: FLdPr var_A4
  loc_A82FF5: from_stack_2 = Me.Item(from_stack_1)
  loc_A82FFA: FLdPr var_B0
  loc_A82FFD:  = Me.Value
  loc_A83002: FLdRfVar var_9C
  loc_A83005: NeVarBool
  loc_A83007: FFreeAd var_A4 = ""
  loc_A8300E: FFree1Var var_9C = ""
  loc_A83011: BranchF loc_A8304A
  loc_A83014: LitI4 0
  loc_A83019: LitStr "Error de Directorio. Consulte con el Administrador de Sistema..."
  loc_A8301C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A83021: FLdRfVar var_A4
  loc_A83024: ImpAdLdRf MemVar_C44F9C
  loc_A83027: NewIfNullPr Me
  loc_A8302A:  = Me.Global.Forms
  loc_A8302F: FLdPr var_A4
  loc_A83032: LateMemLdVar
  loc_A83037: LitVarI2 var_134, 1
  loc_A8303C: HardType
  loc_A8303D: EqVarBool
  loc_A8303F: FFree1Ad var_A4
  loc_A83042: FFree1Var var_9C = ""
  loc_A83045: BranchF loc_A8304A
  loc_A83048: End
  loc_A8304A: FLdRfVar var_9C
  loc_A8304D: FLdRfVar var_B0
  loc_A83050: LitVarStr var_134, "Mayor"
  loc_A83055: PopAdLdVar
  loc_A83056: FLdRfVar var_A4
  loc_A83059: FLdPr var_120
  loc_A8305C:  = Me.Fields
  loc_A83061: FLdPr var_A4
  loc_A83064: from_stack_2 = Me.Item(from_stack_1)
  loc_A83069: FLdPr var_B0
  loc_A8306C:  = Me.Value
  loc_A83071: FLdRfVar var_9C
  loc_A83074: LitVarI2 var_144, 0
  loc_A83079: HardType
  loc_A8307A: GtVarBool
  loc_A8307C: FFreeAd var_A4 = ""
  loc_A83083: FFree1Var var_9C = ""
  loc_A83086: BranchF loc_A830C2
  loc_A83089: LitI4 0
  loc_A8308E: LitStr "Está ejecutando una versión desactualizada."" & vbCrLf & ""Por favor, cierre la aplicación y vuelva a ingresar. Gracias..."
  loc_A83091: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A83096: FLdRfVar var_A4
  loc_A83099: ImpAdLdRf MemVar_C44F9C
  loc_A8309C: NewIfNullPr Me
  loc_A8309F:  = Me.Global.Forms
  loc_A830A4: FLdPr var_A4
  loc_A830A7: LateMemLdVar
  loc_A830AC: LitVarI2 var_134, 1
  loc_A830B1: HardType
  loc_A830B2: EqVarBool
  loc_A830B4: FFree1Ad var_A4
  loc_A830B7: FFree1Var var_9C = ""
  loc_A830BA: BranchF loc_A830BF
  loc_A830BD: End
  loc_A830BF: Branch loc_A831BB
  loc_A830C2: FLdRfVar var_9C
  loc_A830C5: FLdRfVar var_B0
  loc_A830C8: LitVarStr var_134, "Menor"
  loc_A830CD: PopAdLdVar
  loc_A830CE: FLdRfVar var_A4
  loc_A830D1: FLdPr var_120
  loc_A830D4:  = Me.Fields
  loc_A830D9: FLdPr var_A4
  loc_A830DC: from_stack_2 = Me.Item(from_stack_1)
  loc_A830E1: FLdPr var_B0
  loc_A830E4:  = Me.Value
  loc_A830E9: FLdRfVar var_9C
  loc_A830EC: LitVarI2 var_144, 0
  loc_A830F1: HardType
  loc_A830F2: GtVarBool
  loc_A830F4: FFreeAd var_A4 = ""
  loc_A830FB: FFree1Var var_9C = ""
  loc_A830FE: BranchF loc_A831BB
  loc_A83101: FLdRfVar var_A6
  loc_A83104: FLdRfVar var_A4
  loc_A83107: ImpAdLdRf MemVar_C44F9C
  loc_A8310A: NewIfNullPr Me
  loc_A8310D:  = Me.Global.App
  loc_A83112: FLdPr var_A4
  loc_A83115:  = App.Major
  loc_A8311A: FLdRfVar var_B2
  loc_A8311D: FLdRfVar var_B0
  loc_A83120: ImpAdLdRf MemVar_C44F9C
  loc_A83123: NewIfNullPr Me
  loc_A83126:  = Me.Global.App
  loc_A8312B: FLdPr var_B0
  loc_A8312E:  = App.Minor
  loc_A83133: FLdRfVar var_C6
  loc_A83136: FLdRfVar var_C4
  loc_A83139: ImpAdLdRf MemVar_C44F9C
  loc_A8313C: NewIfNullPr Me
  loc_A8313F:  = Me.Global.App
  loc_A83144: FLdPr var_C4
  loc_A83147:  = App.Revision
  loc_A8314C: FLdRfVar var_88
  loc_A8314F: NewIfNullRf
  loc_A83153: LitStr "UPDATE version"
  loc_A83156: LitStr " SET MajoVers="
  loc_A83159: ConcatStr
  loc_A8315A: FStStrNoPop var_8C
  loc_A8315D: FLdI2 var_A6
  loc_A83160: CStrUI1
  loc_A83162: FStStrNoPop var_A0
  loc_A83165: ConcatStr
  loc_A83166: FStStrNoPop var_AC
  loc_A83169: LitStr ", MinoVers="
  loc_A8316C: ConcatStr
  loc_A8316D: FStStrNoPop var_B8
  loc_A83170: FLdI2 var_B2
  loc_A83173: CStrUI1
  loc_A83175: FStStrNoPop var_BC
  loc_A83178: ConcatStr
  loc_A83179: FStStrNoPop var_C0
  loc_A8317C: LitStr ", ReviVers="
  loc_A8317F: ConcatStr
  loc_A83180: FStStrNoPop var_CC
  loc_A83183: FLdI2 var_C6
  loc_A83186: CStrUI1
  loc_A83188: FStStrNoPop var_D0
  loc_A8318B: ConcatStr
  loc_A8318C: FStStrNoPop var_D4
  loc_A8318F: LitStr ";"
  loc_A83192: ConcatStr
  loc_A83193: FStStrNoPop var_D8
  loc_A83196: ImpAdCallFPR4  = Proc_261_44_9A4454()
  loc_A8319B: FFreeStr var_8C = "": var_A0 = "": var_AC = "": var_B8 = "": var_BC = "": var_C0 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_A831B2: FFreeAd var_A4 = "": var_B0 = ""
  loc_A831BB: FLdPr var_120
  loc_A831BE: Me.Close
  loc_A831C3: LitNothing
  loc_A831C5: FStAd var_120 
  loc_A831C9: ExitProc
  loc_A831CA: Erase
End Function

Private Function Proc_261_52_966EEC() '966EEC
  'Data Table: 42C928
  loc_966ED4: On Error Resume Next
  loc_966ED9: LitVar_TRUE var_A4
  loc_966EDC: LitStr "{tab}"
  loc_966EDF: ImpAdCallFPR4 SendKeys , 
  loc_966EE4: FFree1Var var_A4 = ""
  loc_966EE9: ExitProc
End Function

Private Function Proc_261_53_9C4984(arg_14) '9C4984
  'Data Table: 42C928
  loc_9C48C4: ILdRf arg_14
  loc_9C48C7: FStStrCopy var_88
  loc_9C48CA: FLdRfVar var_9C
  loc_9C48CD: ImpAdCallI2 Proc_261_54_9BAE24()
  loc_9C48D2: FStI2 var_9E
  loc_9C48D5: ILdPr
  loc_9C48D8: LateIdCall
  loc_9C48E0: FLdRfVar var_B8
  loc_9C48E3: LitVarI4
  loc_9C48EB: PopAdLdVar
  loc_9C48EC: FLdRfVar var_A4
  loc_9C48EF: ImpAdLdRf MemVar_C44F9C
  loc_9C48F2: NewIfNullPr Me
  loc_9C48F5:  = Me.Global.Clipboard
  loc_9C48FA: FLdPr var_A4
  loc_9C48FD: Me.GetData from_stack_1
  loc_9C4902: FLdZeroAd var_B8
  loc_9C4905: FStAdFuncNoPop
  loc_9C4908: ILdPr
  loc_9C490B: Me.Picture = from_stack_1
  loc_9C4910: FFreeAd var_A4 = ""
  loc_9C4917: FLdRfVar var_A4
  loc_9C491A: ILdPr
  loc_9C491D:  = Me.Picture
  loc_9C4922: FLdRfVar var_C0
  loc_9C4925: FLdRfVar var_B8
  loc_9C4928: LitI4 2
  loc_9C492D: FLdRfVar var_8C
  loc_9C4930: NewIfNullPr IFileSystem3
  loc_9C4933: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_9C4938: FLdPr var_B8
  loc_9C493B:  = Me.Path
  loc_9C4940: FLdRfVar var_C4
  loc_9C4943: ILdRf var_88
  loc_9C4946: ILdRf var_C0
  loc_9C4949: FLdRfVar var_8C
  loc_9C494C: NewIfNullPr IFileSystem3
  loc_9C494F: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_9C4954: ILdRf var_C4
  loc_9C4957: FLdZeroAd var_A4
  loc_9C495A: FStAdFuncNoPop
  loc_9C495D: ImpAdLdRf MemVar_C44F9C
  loc_9C4960: NewIfNullPr Me
  loc_9C4963: Me.Global.SavePicture from_stack_1
  loc_9C4968: FFreeStr var_C0 = ""
  loc_9C496F: FFreeAd var_B8 = ""
  loc_9C4976: FLdI2 var_9E
  loc_9C4979: FLdRfVar var_9C
  loc_9C497C: ImpAdCallFPR4 Proc_261_55_99D7E4(, )
  loc_9C4981: ExitProc
End Function

Private Function Proc_261_54_9BAE24(arg_C) '9BAE24
  'Data Table: 42C928
  loc_9BAD6C: FLdRfVar var_8E
  loc_9BAD6F: LitI4 -16640
  loc_9BAD74: CI2I4
  loc_9BAD75: FLdRfVar var_8C
  loc_9BAD78: ImpAdLdRf MemVar_C44F9C
  loc_9BAD7B: NewIfNullPr Me
  loc_9BAD7E:  = Me.Global.Clipboard
  loc_9BAD83: FLdPr var_8C
  loc_9BAD86: Me.GetFormat from_stack_1
  loc_9BAD8B: FLdI2 var_8E
  loc_9BAD8E: FLdRfVar var_96
  loc_9BAD91: LitI4 1
  loc_9BAD96: CI2I4
  loc_9BAD97: FLdRfVar var_94
  loc_9BAD9A: ImpAdLdRf MemVar_C44F9C
  loc_9BAD9D: NewIfNullPr Me
  loc_9BADA0:  = Me.Global.Clipboard
  loc_9BADA5: FLdPr var_94
  loc_9BADA8: Me.GetFormat from_stack_1
  loc_9BADAD: FLdI2 var_96
  loc_9BADB0: OrI4
  loc_9BADB1: FFreeAd var_8C = ""
  loc_9BADB8: BranchF loc_9BADF0
  loc_9BADBB: LitI4 1
  loc_9BADC0: CI2I4
  loc_9BADC1: FStI2 var_86
  loc_9BADC4: FLdRfVar var_AC
  loc_9BADC7: LitVar_Missing var_A8
  loc_9BADCA: PopAdLdVar
  loc_9BADCB: FLdRfVar var_8C
  loc_9BADCE: ImpAdLdRf MemVar_C44F9C
  loc_9BADD1: NewIfNullPr Me
  loc_9BADD4:  = Me.Global.Clipboard
  loc_9BADD9: FLdPr var_8C
  loc_9BADDC: Me.GetText from_stack_1
  loc_9BADE1: FLdZeroAd var_AC
  loc_9BADE4: CVarStr var_BC
  loc_9BADE7: IStDarg arg_C
  loc_9BADEA: FFree1Ad var_8C
  loc_9BADED: Branch loc_9BAE23
  loc_9BADF0: LitI4 2
  loc_9BADF5: CI2I4
  loc_9BADF6: FStI2 var_86
  loc_9BADF9: FLdRfVar var_94
  loc_9BADFC: LitVar_Missing var_A8
  loc_9BADFF: PopAdLdVar
  loc_9BAE00: FLdRfVar var_8C
  loc_9BAE03: ImpAdLdRf MemVar_C44F9C
  loc_9BAE06: NewIfNullPr Me
  loc_9BAE09:  = Me.Global.Clipboard
  loc_9BAE0E: FLdPr var_8C
  loc_9BAE11: Me.GetData from_stack_1
  loc_9BAE16: FLdZeroAd var_94
  loc_9BAE19: CVarAd
  loc_9BAE1D: IStDarg arg_C
  loc_9BAE20: FFree1Ad var_8C
  loc_9BAE23: ExitProcI2
End Function

Private Function Proc_261_55_99D7E4(arg_C, arg_10) '99D7E4
  'Data Table: 42C928
  loc_99D778: FLdI2 arg_10
  loc_99D77B: CI4UI1
  loc_99D77C: LitI4 2
  loc_99D781: LtI4
  loc_99D782: BranchF loc_99D7B2
  loc_99D785: LitVar_Missing var_AC
  loc_99D788: PopAdLdVar
  loc_99D789: ILdRfDarg arg_C
  loc_99D78F: CStrVarVal var_9C
  loc_99D793: FLdRfVar var_88
  loc_99D796: ImpAdLdRf MemVar_C44F9C
  loc_99D799: NewIfNullPr Me
  loc_99D79C:  = Me.Global.Clipboard
  loc_99D7A1: FLdPr var_88
  loc_99D7A4: Me.SetText from_stack_1, from_stack_2
  loc_99D7A9: FFree1Str var_9C
  loc_99D7AC: FFree1Ad var_88
  loc_99D7AF: Branch loc_99D7E0
  loc_99D7B2: LitVar_Missing var_AC
  loc_99D7B5: PopAdLdVar
  loc_99D7B6: ILdRfDarg arg_C
  loc_99D7BC: CastAdVar Me
  loc_99D7C0: FStAdFuncNoPop
  loc_99D7C3: FLdRfVar var_88
  loc_99D7C6: ImpAdLdRf MemVar_C44F9C
  loc_99D7C9: NewIfNullPr Me
  loc_99D7CC:  = Me.Global.Clipboard
  loc_99D7D1: FLdPr var_88
  loc_99D7D4: Me.SetData from_stack_1
  loc_99D7D9: FFreeAd var_B0 = ""
  loc_99D7E0: ExitProc
End Function

Private Function Proc_261_56_9A8F4C(arg_C, arg_10) '9A8F4C
  'Data Table: 42C928
  loc_9A8EB4: ILdI4 arg_C
  loc_9A8EB7: FStAd var_88 
  loc_9A8EBB: LitVar_Missing var_98
  loc_9A8EBE: PopAdLdVar
  loc_9A8EBF: LitStr "fcc"
  loc_9A8EC2: FLdPr var_88
  loc_9A8EC5: Me.AddItem from_stack_1, from_stack_2
  loc_9A8ECA: LitVar_Missing var_98
  loc_9A8ECD: PopAdLdVar
  loc_9A8ECE: LitStr "fcb"
  loc_9A8ED1: FLdPr var_88
  loc_9A8ED4: Me.AddItem from_stack_1, from_stack_2
  loc_9A8ED9: LitVar_Missing var_98
  loc_9A8EDC: PopAdLdVar
  loc_9A8EDD: LitStr "fca"
  loc_9A8EE0: FLdPr var_88
  loc_9A8EE3: Me.AddItem from_stack_1, from_stack_2
  loc_9A8EE8: LitVar_Missing var_98
  loc_9A8EEB: PopAdLdVar
  loc_9A8EEC: LitStr "fcm"
  loc_9A8EEF: FLdPr var_88
  loc_9A8EF2: Me.AddItem from_stack_1, from_stack_2
  loc_9A8EF7: FLdI2 arg_10
  loc_9A8EFA: BranchF loc_9A8F0C
  loc_9A8EFD: LitVar_Missing var_98
  loc_9A8F00: PopAdLdVar
  loc_9A8F01: LitStr "s/f"
  loc_9A8F04: FLdPr var_88
  loc_9A8F07: Me.AddItem from_stack_1, from_stack_2
  loc_9A8F0C: LitStr "Municipalidad de Guaymallén"
  loc_9A8F0F: LitStr "Municipalidad de General Alvear"
  loc_9A8F12: EqStr
  loc_9A8F14: BranchF loc_9A8F35
  loc_9A8F17: LitVar_Missing var_98
  loc_9A8F1A: PopAdLdVar
  loc_9A8F1B: LitStr "rem"
  loc_9A8F1E: FLdPr var_88
  loc_9A8F21: Me.AddItem from_stack_1, from_stack_2
  loc_9A8F26: LitVar_Missing var_98
  loc_9A8F29: PopAdLdVar
  loc_9A8F2A: LitStr "val"
  loc_9A8F2D: FLdPr var_88
  loc_9A8F30: Me.AddItem from_stack_1, from_stack_2
  loc_9A8F35: LitVar_Missing var_98
  loc_9A8F38: PopAdLdVar
  loc_9A8F39: LitStr vbNullString
  loc_9A8F3C: FLdPr var_88
  loc_9A8F3F: Me.AddItem from_stack_1, from_stack_2
  loc_9A8F44: LitNothing
  loc_9A8F46: FStAd var_88 
  loc_9A8F4A: ExitProc
End Function

Private Function Proc_261_57_A2BA40(arg_C) 'A2BA40
  'Data Table: 42C928
  loc_A2B884: LitI2_Byte 0
  loc_A2B886: FLdRfVar var_86
  loc_A2B889: ILdI4 arg_C
  loc_A2B88C: LitI2_Byte 1
  loc_A2B88E: FnUBound
  loc_A2B890: CI2I4
  loc_A2B891: ForI2 var_8A
  loc_A2B897: FLdI2 var_86
  loc_A2B89A: CI4UI1
  loc_A2B89B: ILdI4 arg_C
  loc_A2B89E: Ary1LdRfVarg
  loc_A2B8A2: FnLenVar var_AC
  loc_A2B8A6: LitVarI2 var_BC, 10
  loc_A2B8AB: HardType
  loc_A2B8AC: EqVar var_CC
  loc_A2B8B0: LitVarI2 var_100, 1
  loc_A2B8B5: LitI4 3
  loc_A2B8BA: FLdI2 var_86
  loc_A2B8BD: CI4UI1
  loc_A2B8BE: ILdI4 arg_C
  loc_A2B8C1: Ary1LdRfVarg
  loc_A2B8C5: CStrVarVal var_E0
  loc_A2B8C9: ImpAdCallI2 Mid$(, , )
  loc_A2B8CE: FStStrNoPop var_104
  loc_A2B8D1: LitStr "/"
  loc_A2B8D4: EqStr
  loc_A2B8D6: CVarBoolI2 var_114
  loc_A2B8DA: AndVar var_124
  loc_A2B8DE: LitVarI2 var_158, 1
  loc_A2B8E3: LitI4 6
  loc_A2B8E8: FLdI2 var_86
  loc_A2B8EB: CI4UI1
  loc_A2B8EC: ILdI4 arg_C
  loc_A2B8EF: Ary1LdRfVarg
  loc_A2B8F3: CStrVarVal var_138
  loc_A2B8F7: ImpAdCallI2 Mid$(, , )
  loc_A2B8FC: FStStrNoPop var_15C
  loc_A2B8FF: LitStr "/"
  loc_A2B902: EqStr
  loc_A2B904: CVarBoolI2 var_16C
  loc_A2B908: AndVar var_17C
  loc_A2B90C: CBoolVarNull
  loc_A2B90E: FFreeStr var_E0 = "": var_104 = "": var_138 = ""
  loc_A2B919: FFreeVar var_100 = "": var_114 = "": var_158 = ""
  loc_A2B924: BranchF loc_A2B9E1
  loc_A2B927: FLdI2 var_86
  loc_A2B92A: CI4UI1
  loc_A2B92B: ILdI4 arg_C
  loc_A2B92E: AryLock
  loc_A2B931: Ary1LdRfVargParam
  loc_A2B933: ImpAdCallI2 IsNull()
  loc_A2B938: FStI2 var_182
  loc_A2B93B: AryUnlock
  loc_A2B93E: LitI4 1
  loc_A2B943: LitI4 1
  loc_A2B948: LitVarStr var_134, "'yyyy-mm-dd'"
  loc_A2B94D: FStVarCopyObj var_158
  loc_A2B950: FLdRfVar var_158
  loc_A2B953: FLdI2 var_86
  loc_A2B956: CI4UI1
  loc_A2B957: ILdI4 arg_C
  loc_A2B95A: AryLock
  loc_A2B95D: Ary1LdRfVargParam
  loc_A2B95F: ImpAdCallI2 Format$(, )
  loc_A2B964: FStStr var_E0
  loc_A2B967: AryUnlock
  loc_A2B96A: FLdZeroAd var_E0
  loc_A2B96D: CVarStr var_1A8
  loc_A2B970: LitVarStr var_148, "null"
  loc_A2B975: FStVarCopyObj var_198
  loc_A2B978: FLdRfVar var_198
  loc_A2B97B: FLdI2 var_86
  loc_A2B97E: CI4UI1
  loc_A2B97F: ILdI4 arg_C
  loc_A2B982: Ary1LdRfVarg
  loc_A2B986: LitVarStr var_9C, vbNullString
  loc_A2B98B: HardType
  loc_A2B98C: EqVar var_AC
  loc_A2B990: FLdI2 var_182
  loc_A2B993: CVarBoolI2 var_DC
  loc_A2B997: OrVar var_CC
  loc_A2B99B: FLdI2 var_86
  loc_A2B99E: CI4UI1
  loc_A2B99F: ILdI4 arg_C
  loc_A2B9A2: Ary1LdRfVarg
  loc_A2B9A6: LitVarStr var_F0, "  /  /    "
  loc_A2B9AB: HardType
  loc_A2B9AC: EqVar var_100
  loc_A2B9B0: OrVar var_124
  loc_A2B9B4: FStVar var_17C
  loc_A2B9B8: FLdRfVar var_17C
  loc_A2B9BB: FLdRfVar var_1B8
  loc_A2B9BE: ImpAdCallFPR4  = IIf(, , )
  loc_A2B9C3: FLdRfVar var_1B8
  loc_A2B9C6: FLdI2 var_86
  loc_A2B9C9: CI4UI1
  loc_A2B9CA: ILdI4 arg_C
  loc_A2B9CD: Ary1StVarg
  loc_A2B9CF: FFreeVar var_DC = "": var_158 = "": var_17C = "": var_198 = "": var_1A8 = ""
  loc_A2B9DE: Branch loc_A2BA35
  loc_A2B9E1: FLdI2 var_86
  loc_A2B9E4: CI4UI1
  loc_A2B9E5: ILdI4 arg_C
  loc_A2B9E8: Ary1LdRfVarg
  loc_A2B9EC: LitVarStr var_9C, vbNullString
  loc_A2B9F1: HardType
  loc_A2B9F2: EqVarBool
  loc_A2B9F4: BranchF loc_A2BA08
  loc_A2B9F7: LitVarStr var_9C, "Null"
  loc_A2B9FC: FLdI2 var_86
  loc_A2B9FF: CI4UI1
  loc_A2BA00: ILdI4 arg_C
  loc_A2BA03: Ary1StVargCopy
  loc_A2BA05: Branch loc_A2BA35
  loc_A2BA08: LitVarStr var_9C, "'"
  loc_A2BA0D: FLdI2 var_86
  loc_A2BA10: CI4UI1
  loc_A2BA11: ILdI4 arg_C
  loc_A2BA14: Ary1LdRfVarg
  loc_A2BA18: ConcatVar var_AC
  loc_A2BA1C: LitVarStr var_DC, "'"
  loc_A2BA21: ConcatVar var_CC
  loc_A2BA25: FLdI2 var_86
  loc_A2BA28: CI4UI1
  loc_A2BA29: ILdI4 arg_C
  loc_A2BA2C: Ary1StVarg
  loc_A2BA2E: FFreeVar var_AC = ""
  loc_A2BA35: FLdRfVar var_86
  loc_A2BA38: NextI2 var_8A, loc_A2B897
  loc_A2BA3D: ExitProc
End Function

Private Function Proc_261_58_9952BC(arg_C) '9952BC
  'Data Table: 42C928
  loc_995268: ILdRf arg_C
  loc_99526B: FStStrCopy var_8C
  loc_99526E: LitI4 0
  loc_995273: LitI4 -1
  loc_995278: LitI4 1
  loc_99527D: LitStr vbNullString
  loc_995280: LitStr "$"
  loc_995283: ILdRf var_8C
  loc_995286: ImpAdCallI2 Replace(, , , , , )
  loc_99528B: FStStr var_94
  loc_99528E: LitI4 0
  loc_995293: LitI4 -1
  loc_995298: LitI4 1
  loc_99529D: LitStr "."
  loc_9952A0: LitStr ","
  loc_9952A3: FLdZeroAd var_94
  loc_9952A6: FStStrNoPop var_90
  loc_9952A9: ImpAdCallI2 Replace(, , , , , )
  loc_9952AE: FStStr var_88
  loc_9952B1: FFreeStr var_90 = ""
  loc_9952B8: ExitProc
End Function

Private Function Proc_261_59_995350(arg_C) '995350
  'Data Table: 42C928
  loc_9952FC: ILdRf arg_C
  loc_9952FF: FStStrCopy var_8C
  loc_995302: LitI4 0
  loc_995307: LitI4 -1
  loc_99530C: LitI4 1
  loc_995311: LitStr vbNullString
  loc_995314: LitStr "$"
  loc_995317: ILdRf var_8C
  loc_99531A: ImpAdCallI2 Replace(, , , , , )
  loc_99531F: FStStr var_94
  loc_995322: LitI4 0
  loc_995327: LitI4 -1
  loc_99532C: LitI4 1
  loc_995331: LitStr ","
  loc_995334: LitStr "."
  loc_995337: FLdZeroAd var_94
  loc_99533A: FStStrNoPop var_90
  loc_99533D: ImpAdCallI2 Replace(, , , , , )
  loc_995342: FStStr var_88
  loc_995345: FFreeStr var_90 = ""
  loc_99534C: ExitProc
End Function

Private Function Proc_261_60_9953E4(arg_C) '9953E4
  'Data Table: 42C928
  loc_995390: ILdRf arg_C
  loc_995393: FStStrCopy var_8C
  loc_995396: LitI4 0
  loc_99539B: LitI4 -1
  loc_9953A0: LitI4 1
  loc_9953A5: LitStr vbNullString
  loc_9953A8: LitStr "$"
  loc_9953AB: ILdRf var_8C
  loc_9953AE: ImpAdCallI2 Replace(, , , , , )
  loc_9953B3: FStStr var_94
  loc_9953B6: LitI4 0
  loc_9953BB: LitI4 -1
  loc_9953C0: LitI4 1
  loc_9953C5: LitStr vbNullString
  loc_9953C8: LitStr "."
  loc_9953CB: FLdZeroAd var_94
  loc_9953CE: FStStrNoPop var_90
  loc_9953D1: ImpAdCallI2 Replace(, , , , , )
  loc_9953D6: FStStr var_88
  loc_9953D9: FFreeStr var_90 = ""
  loc_9953E0: ExitProc
  loc_9953E1: FStStr arg_1E
End Function

Private Function Proc_261_61_97BCB8(arg_C) '97BCB8
  'Data Table: 42C928
  loc_97BC90: ILdRf arg_C
  loc_97BC93: FStStrCopy var_8C
  loc_97BC96: LitI4 2
  loc_97BC9B: FLdRfVar var_8C
  loc_97BC9E: CVarRef
  loc_97BCA3: FLdRfVar var_AC
  loc_97BCA6: ImpAdCallFPR4  = Round(, )
  loc_97BCAB: FLdRfVar var_AC
  loc_97BCAE: CStrVarTmp
  loc_97BCAF: FStStr var_88
  loc_97BCB2: FFree1Var var_AC = ""
  loc_97BCB5: ExitProc
  loc_97BCB6: CRec2Ansi var_1000
End Function

Private Function Proc_261_62_9D9F1C(arg_10, arg_14) '9D9F1C
  'Data Table: 42C928
  loc_9D9E40: ILdRf arg_10
  loc_9D9E43: FStStrCopy var_88
  loc_9D9E46: OnErrorGoto loc_9D9EEB
  loc_9D9E49: ILdPr
  loc_9D9E4C: LateIdLdVar var_98 DispID_8 0
  loc_9D9E53: CI4Var
  loc_9D9E55: CStrI4
  loc_9D9E57: FStStrNoPop var_9C
  loc_9D9E5A: LitStr " "
  loc_9D9E5D: ConcatStr
  loc_9D9E5E: CVarStr var_FC
  loc_9D9E61: LitVarStr var_CC, "registro/s"
  loc_9D9E66: FStVarCopyObj var_DC
  loc_9D9E69: FLdRfVar var_DC
  loc_9D9E6C: ILdRf arg_14
  loc_9D9E6F: CVarRef
  loc_9D9E74: ILdI4 arg_14
  loc_9D9E77: LitStr vbNullString
  loc_9D9E7A: NeStr
  loc_9D9E7C: CVarBoolI2 var_AC
  loc_9D9E80: FLdRfVar var_EC
  loc_9D9E83: ImpAdCallFPR4  = IIf(, , )
  loc_9D9E88: FLdRfVar var_EC
  loc_9D9E8B: ConcatVar var_10C
  loc_9D9E8F: LitVarStr var_13C, vbNullString
  loc_9D9E94: FStVarCopyObj var_14C
  loc_9D9E97: FLdRfVar var_14C
  loc_9D9E9A: LitStr " - Filtro: "
  loc_9D9E9D: ILdRf var_88
  loc_9D9EA0: ConcatStr
  loc_9D9EA1: CVarStr var_12C
  loc_9D9EA4: ILdRf var_88
  loc_9D9EA7: LitStr vbNullString
  loc_9D9EAA: NeStr
  loc_9D9EAC: CVarBoolI2 var_11C
  loc_9D9EB0: FLdRfVar var_15C
  loc_9D9EB3: ImpAdCallFPR4  = IIf(, , )
  loc_9D9EB8: FLdRfVar var_15C
  loc_9D9EBB: ConcatVar var_16C
  loc_9D9EBF: CStrVarTmp
  loc_9D9EC0: CVarStr var_17C
  loc_9D9EC3: PopAdLdVar
  loc_9D9EC4: ILdPr
  loc_9D9EC7: LateIdSt
  loc_9D9ECC: FFree1Str var_9C
  loc_9D9ECF: FFreeVar var_98 = "": var_AC = "": var_DC = "": var_FC = "": var_EC = "": var_11C = "": var_12C = "": var_14C = "": var_10C = "": var_15C = "": var_16C = ""
  loc_9D9EEA: ExitProc
  loc_9D9EEB: FLdRfVar var_194
  loc_9D9EEE: ImpAdCallI2 Err 'rtcErrObj
  loc_9D9EF3: FStAdFunc var_190
  loc_9D9EF6: FLdPr var_190
  loc_9D9EF9:  = Err.Number
  loc_9D9EFE: ILdRf var_194
  loc_9D9F01: LitI4 &H1B5D
  loc_9D9F06: EqI4
  loc_9D9F07: FFree1Ad var_190
  loc_9D9F0A: BranchF loc_9D9F1B
  loc_9D9F0D: LitVarStr var_AC, vbNullString
  loc_9D9F12: PopAdLdVar
  loc_9D9F13: ILdPr
  loc_9D9F16: LateIdSt
  loc_9D9F1B: ExitProc
End Function

Private Function Proc_261_63_98C7F0(arg_C, arg_10) '98C7F0
  'Data Table: 42C928
  loc_98C7AC: ILdRf arg_10
  loc_98C7AF: FStStrCopy var_88
  loc_98C7B2: ImpAdCallI2 GetUserDefaultLCID()
  loc_98C7B7: FStI2 var_92
  loc_98C7BA: SetLastSystemError
  loc_98C7BB: FLdI2 var_92
  loc_98C7BE: CI4UI1
  loc_98C7BF: FStR4 var_90
  loc_98C7C2: ILdRf var_88
  loc_98C7C5: FLdRfVar var_98
  loc_98C7C8: CStr2Ansi
  loc_98C7C9: ILdRf var_98
  loc_98C7CC: ILdRf arg_C
  loc_98C7CF: ILdRf var_90
  loc_98C7D2: ImpAdCallI2 SetLocaleInfo(, , )
  loc_98C7D7: FStI2 var_92
  loc_98C7DA: SetLastSystemError
  loc_98C7DB: ILdRf var_98
  loc_98C7DE: FLdRfVar var_88
  loc_98C7E1: CStr2Uni
  loc_98C7E3: FLdI2 var_92
  loc_98C7E6: CI4UI1
  loc_98C7E7: FStR4 var_8C
  loc_98C7EA: FFree1Str var_98
  loc_98C7ED: ExitProc
  loc_98C7EE: NewIfNullPr Me
End Function

Private Function Proc_261_64_A0AEDC() 'A0AEDC
  'Data Table: 42C928
  loc_A0AD60: LitStr "54"
  loc_A0AD63: LitI4 5
  loc_A0AD68: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AD6D: LitStr "2"
  loc_A0AD70: LitI4 &H19
  loc_A0AD75: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AD7A: LitStr "2"
  loc_A0AD7D: LitI4 &H1B
  loc_A0AD82: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AD87: LitStr "1"
  loc_A0AD8A: LitI4 &H21
  loc_A0AD8F: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AD94: LitStr "2"
  loc_A0AD97: LitI4 &H11
  loc_A0AD9C: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0ADA1: LitStr "1"
  loc_A0ADA4: LitI4 &H12
  loc_A0ADA9: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0ADAE: LitStr "0"
  loc_A0ADB1: LitI4 &HD
  loc_A0ADB6: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0ADBB: LitStr "2"
  loc_A0ADBE: LitI4 &H1C
  loc_A0ADC3: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0ADC8: LitStr "1"
  loc_A0ADCB: LitI4 &H23
  loc_A0ADD0: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0ADD5: LitStr "1"
  loc_A0ADD8: LitI4 &H25
  loc_A0ADDD: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0ADE2: LitStr "a.m."
  loc_A0ADE5: LitI4 &H28
  loc_A0ADEA: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0ADEF: LitStr "p.m."
  loc_A0ADF2: LitI4 &H29
  loc_A0ADF7: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0ADFC: LitStr "Argentina"
  loc_A0ADFF: LitI4 6
  loc_A0AE04: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AE09: LitStr "$"
  loc_A0AE0C: LitI4 &H14
  loc_A0AE11: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AE16: LitStr "/"
  loc_A0AE19: LitI4 &H1D
  loc_A0AE1E: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AE23: LitStr ","
  loc_A0AE26: LitI4 &HE
  loc_A0AE2B: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AE30: LitStr "ESS"
  loc_A0AE33: LitI4 2
  loc_A0AE38: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AE3D: LitStr ","
  loc_A0AE40: LitI4 &HC
  loc_A0AE45: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AE4A: LitStr "dddd, dd' de 'MMMM' de 'yyyy"
  loc_A0AE4D: LitI4 &H20
  loc_A0AE52: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AE57: LitStr "dd/MM/yyyy"
  loc_A0AE5A: LitI4 &H1F
  loc_A0AE5F: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AE64: LitStr "."
  loc_A0AE67: LitI4 &HF
  loc_A0AE6C: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AE71: LitStr ":"
  loc_A0AE74: LitI4 &H1E
  loc_A0AE79: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AE7E: LitStr ","
  loc_A0AE81: LitI4 &H16
  loc_A0AE86: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AE8B: LitStr "."
  loc_A0AE8E: LitI4 &H17
  loc_A0AE93: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AE98: LitStr "0123456789"
  loc_A0AE9B: LitI4 &H13
  loc_A0AEA0: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AEA5: LitStr "3;0"
  loc_A0AEA8: LitI4 &H10
  loc_A0AEAD: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AEB2: LitStr "3;0"
  loc_A0AEB5: LitI4 &H18
  loc_A0AEBA: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AEBF: LitStr vbNullString
  loc_A0AEC2: LitI4 &H50
  loc_A0AEC7: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AECC: LitStr "-"
  loc_A0AECF: LitI4 &H51
  loc_A0AED4: ImpAdCallFPR4 Proc_261_63_98C7F0(, )
  loc_A0AED9: ExitProc
  loc_A0AEDA: PopTmpLdAdStr var_FFD
End Function

Private Function Proc_261_65_9A9668() '9A9668
  'Data Table: 42C928
  loc_9A95E8: ILdPr
  loc_9A95EB: LateIdLdVar var_94 DispID_22 0
  loc_9A95F2: CStrVarTmp
  loc_9A95F3: FStStrNoPop var_98
  loc_9A95F6: LitStr vbNullString
  loc_9A95F9: NeStr
  loc_9A95FB: FFree1Str var_98
  loc_9A95FE: FFree1Var var_94 = ""
  loc_9A9601: BranchF loc_9A9665
  loc_9A9604: ILdPr
  loc_9A9607: LateIdLdVar var_A8 DispID_22 0
  loc_9A960E: PopAd
  loc_9A9610: ILdPr
  loc_9A9613: LateIdLdVar var_94 DispID_22 0
  loc_9A961A: CStrVarTmp
  loc_9A961B: CVarStr var_E8
  loc_9A961E: LitVarStr var_B8, "0"
  loc_9A9623: FStVarCopyObj var_C8
  loc_9A9626: FLdRfVar var_C8
  loc_9A9629: LitI2_Byte 8
  loc_9A962B: CI4UI1
  loc_9A962C: FLdRfVar var_A8
  loc_9A962F: CStrVarTmp
  loc_9A9630: FStStrNoPop var_98
  loc_9A9633: FnLenStr
  loc_9A9634: SubI4
  loc_9A9635: FLdRfVar var_D8
  loc_9A9638: ImpAdCallFPR4  = String(, )
  loc_9A963D: FLdRfVar var_D8
  loc_9A9640: ConcatVar var_F8
  loc_9A9644: CStrVarTmp
  loc_9A9645: CVarStr var_108
  loc_9A9648: PopAdLdVar
  loc_9A9649: ILdPr
  loc_9A964C: LateIdSt
  loc_9A9651: FFree1Str var_98
  loc_9A9654: FFreeVar var_94 = "": var_A8 = "": var_C8 = "": var_E8 = "": var_D8 = "": var_F8 = ""
  loc_9A9665: ExitProc
  loc_9A9666: CStrVarTmp
End Function

Private Function Proc_261_66_9A99A8() '9A99A8
  'Data Table: 42C928
  loc_9A9928: ILdPr
  loc_9A992B: LateIdLdVar var_94 DispID_22 0
  loc_9A9932: CStrVarTmp
  loc_9A9933: FStStrNoPop var_98
  loc_9A9936: LitStr vbNullString
  loc_9A9939: NeStr
  loc_9A993B: FFree1Str var_98
  loc_9A993E: FFree1Var var_94 = ""
  loc_9A9941: BranchF loc_9A99A7
  loc_9A9944: ILdPr
  loc_9A9947: LateIdLdVar var_A8 DispID_22 0
  loc_9A994E: PopAd
  loc_9A9950: ILdPr
  loc_9A9953: LateIdLdVar var_94 DispID_22 0
  loc_9A995A: CStrVarTmp
  loc_9A995B: CVarStr var_E8
  loc_9A995E: LitVarStr var_B8, "0"
  loc_9A9963: FStVarCopyObj var_C8
  loc_9A9966: FLdRfVar var_C8
  loc_9A9969: LitI4 6
  loc_9A996E: FLdRfVar var_A8
  loc_9A9971: CStrVarTmp
  loc_9A9972: FStStrNoPop var_98
  loc_9A9975: FnLenStr
  loc_9A9976: SubI4
  loc_9A9977: FLdRfVar var_D8
  loc_9A997A: ImpAdCallFPR4  = String(, )
  loc_9A997F: FLdRfVar var_D8
  loc_9A9982: ConcatVar var_F8
  loc_9A9986: CStrVarTmp
  loc_9A9987: CVarStr var_108
  loc_9A998A: PopAdLdVar
  loc_9A998B: ILdPr
  loc_9A998E: LateIdSt
  loc_9A9993: FFree1Str var_98
  loc_9A9996: FFreeVar var_94 = "": var_A8 = "": var_C8 = "": var_E8 = "": var_D8 = "": var_F8 = ""
  loc_9A99A7: ExitProc
End Function

Private Function Proc_261_67_9A9E88() '9A9E88
  'Data Table: 42C928
  loc_9A9E08: ILdPr
  loc_9A9E0B: LateIdLdVar var_94 DispID_22 0
  loc_9A9E12: CStrVarTmp
  loc_9A9E13: FStStrNoPop var_98
  loc_9A9E16: LitStr vbNullString
  loc_9A9E19: NeStr
  loc_9A9E1B: FFree1Str var_98
  loc_9A9E1E: FFree1Var var_94 = ""
  loc_9A9E21: BranchF loc_9A9E85
  loc_9A9E24: ILdPr
  loc_9A9E27: LateIdLdVar var_A8 DispID_0 0
  loc_9A9E2E: PopAd
  loc_9A9E30: ILdPr
  loc_9A9E33: LateIdLdVar var_94 DispID_22 0
  loc_9A9E3A: CStrVarTmp
  loc_9A9E3B: CVarStr var_E8
  loc_9A9E3E: LitVarStr var_B8, "0"
  loc_9A9E43: FStVarCopyObj var_C8
  loc_9A9E46: FLdRfVar var_C8
  loc_9A9E49: LitI2_Byte 6
  loc_9A9E4B: CI4UI1
  loc_9A9E4C: FLdRfVar var_A8
  loc_9A9E4F: CStrVarTmp
  loc_9A9E50: FStStrNoPop var_98
  loc_9A9E53: FnLenStr
  loc_9A9E54: SubI4
  loc_9A9E55: FLdRfVar var_D8
  loc_9A9E58: ImpAdCallFPR4  = String(, )
  loc_9A9E5D: FLdRfVar var_D8
  loc_9A9E60: ConcatVar var_F8
  loc_9A9E64: CStrVarTmp
  loc_9A9E65: CVarStr var_108
  loc_9A9E68: PopAdLdVar
  loc_9A9E69: ILdPr
  loc_9A9E6C: LateIdSt
  loc_9A9E71: FFree1Str var_98
  loc_9A9E74: FFreeVar var_94 = "": var_A8 = "": var_C8 = "": var_E8 = "": var_D8 = "": var_F8 = ""
  loc_9A9E85: ExitProc
End Function

Private Function Proc_261_68_9A9C18() '9A9C18
  'Data Table: 42C928
  loc_9A9B98: ILdPr
  loc_9A9B9B: LateIdLdVar var_94 DispID_22 0
  loc_9A9BA2: CStrVarTmp
  loc_9A9BA3: FStStrNoPop var_98
  loc_9A9BA6: LitStr vbNullString
  loc_9A9BA9: NeStr
  loc_9A9BAB: FFree1Str var_98
  loc_9A9BAE: FFree1Var var_94 = ""
  loc_9A9BB1: BranchF loc_9A9C15
  loc_9A9BB4: ILdPr
  loc_9A9BB7: LateIdLdVar var_A8 DispID_0 0
  loc_9A9BBE: PopAd
  loc_9A9BC0: ILdPr
  loc_9A9BC3: LateIdLdVar var_94 DispID_22 0
  loc_9A9BCA: CStrVarTmp
  loc_9A9BCB: CVarStr var_E8
  loc_9A9BCE: LitVarStr var_B8, "0"
  loc_9A9BD3: FStVarCopyObj var_C8
  loc_9A9BD6: FLdRfVar var_C8
  loc_9A9BD9: LitI2_Byte &HA
  loc_9A9BDB: CI4UI1
  loc_9A9BDC: FLdRfVar var_A8
  loc_9A9BDF: CStrVarTmp
  loc_9A9BE0: FStStrNoPop var_98
  loc_9A9BE3: FnLenStr
  loc_9A9BE4: SubI4
  loc_9A9BE5: FLdRfVar var_D8
  loc_9A9BE8: ImpAdCallFPR4  = String(, )
  loc_9A9BED: FLdRfVar var_D8
  loc_9A9BF0: ConcatVar var_F8
  loc_9A9BF4: CStrVarTmp
  loc_9A9BF5: CVarStr var_108
  loc_9A9BF8: PopAdLdVar
  loc_9A9BF9: ILdPr
  loc_9A9BFC: LateIdSt
  loc_9A9C01: FFree1Str var_98
  loc_9A9C04: FFreeVar var_94 = "": var_A8 = "": var_C8 = "": var_E8 = "": var_D8 = "": var_F8 = ""
  loc_9A9C15: ExitProc
  loc_9A9C16: Ary1LdFPR8
End Function

Private Function Proc_261_69_9A6820(arg_C, arg_10) '9A6820
  'Data Table: 42C928
  loc_9A679C: ILdRf arg_C
  loc_9A679F: FStStrCopy var_8C
  loc_9A67A2: OnErrorGoto loc_9A6818
  loc_9A67A5: FLdI2 arg_10
  loc_9A67A8: BranchF loc_9A67ED
  loc_9A67AB: LitI4 &H20
  loc_9A67B0: FLdRfVar var_8C
  loc_9A67B3: CVarRef
  loc_9A67B8: ImpAdCallI2 push Dir(, )
  loc_9A67BD: FStStrNoPop var_B0
  loc_9A67C0: FnLenStr
  loc_9A67C1: LitI4 0
  loc_9A67C6: NeI4
  loc_9A67C7: FFree1Str var_B0
  loc_9A67CA: BranchF loc_9A67E7
  loc_9A67CD: ILdRf var_8C
  loc_9A67D0: ImpAdCallI2 push FileLen()
  loc_9A67D5: LitI4 0
  loc_9A67DA: EqI4
  loc_9A67DB: BranchF loc_9A67E4
  loc_9A67DE: LitI2_Byte &HFF
  loc_9A67E0: FStI2 var_86
  loc_9A67E3: ExitProcI2
  loc_9A67E4: Branch loc_9A67ED
  loc_9A67E7: LitI2_Byte &HFF
  loc_9A67E9: FStI2 var_86
  loc_9A67EC: ExitProcI2
  loc_9A67ED: LitVar_Missing var_C0
  loc_9A67F0: ImpAdCallI2 FreeFile()
  loc_9A67F5: CVarI2 var_D0
  loc_9A67F8: FStVar var_9C
  loc_9A67FC: FFree1Var var_C0 = ""
  loc_9A67FF: ILdRf var_8C
  loc_9A6802: FLdRfVar var_9C
  loc_9A6805: CI2Var
  loc_9A6806: LitI2_Byte &HFF
  loc_9A6808: OpenFile
  loc_9A680C: FLdRfVar var_9C
  loc_9A680F: CI2Var
  loc_9A6810: Close
  loc_9A6812: LitI2_Byte 0
  loc_9A6814: FStI2 var_86
  loc_9A6817: ExitProcI2
  loc_9A6818: LitI2_Byte &HFF
  loc_9A681A: FStI2 var_86
  loc_9A681D: ExitProcI2
  loc_9A681E: Ary1StCy
End Function

Private Function Proc_261_70_A02748(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) 'A02748
  'Data Table: 42C928
  loc_A02604: ILdRf arg_C
  loc_A02607: FStStrCopy var_88
  loc_A0260A: ILdRf arg_10
  loc_A0260D: FStStrCopy var_8C
  loc_A02610: ILdRf arg_1C
  loc_A02613: FStStrCopy var_90
  loc_A02616: ILdRf arg_20
  loc_A02619: FStStrCopy var_94
  loc_A0261C: ImpAdLdRf MemVar_C3D828
  loc_A0261F: NewIfNullAd
  loc_A02622: CastAd
  loc_A02625: FStAdFuncNoPop
  loc_A02628: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_A0262D: FFree1Ad var_98
  loc_A02630: ImpAdLdRf MemVar_C3D828
  loc_A02633: NewIfNullAd
  loc_A02636: FStAd var_9C 
  loc_A0263A: LitI2_Byte 0
  loc_A0263C: FLdPr var_9C
  loc_A0263F: Call dlgEnvioEmailPagado.bGeneradoPut(from_stack_1v)
  loc_A02644: ILdRf var_88
  loc_A02647: ImpAdCallI2 Trim$()
  loc_A0264C: FStStrNoPop var_A0
  loc_A0264F: FLdPr var_9C
  loc_A02652: VCallAd Control_ID_
  loc_A02655: FStAdFunc var_98
  loc_A02658: FLdPr var_98
  loc_A0265B: Me.Text = from_stack_1
  loc_A02660: FFree1Str var_A0
  loc_A02663: FFree1Ad var_98
  loc_A02666: ILdRf var_8C
  loc_A02669: ImpAdCallI2 Trim$()
  loc_A0266E: FStStr var_EC
  loc_A02671: FLdRfVar var_8C
  loc_A02674: CVarRef
  loc_A02679: FLdRfVar var_88
  loc_A0267C: CVarRef
  loc_A02681: FLdZeroAd var_EC
  loc_A02684: FStStrNoPop var_A0
  loc_A02687: LitStr vbNullString
  loc_A0268A: EqStr
  loc_A0268C: CVarBoolI2 var_B0
  loc_A02690: FLdRfVar var_E0
  loc_A02693: ImpAdCallFPR4  = IIf(, , )
  loc_A02698: FLdRfVar var_E0
  loc_A0269B: CStrVarVal var_E4
  loc_A0269F: ImpAdCallI2 Trim$()
  loc_A026A4: FStStrNoPop var_E8
  loc_A026A7: FLdPr var_9C
  loc_A026AA: VCallAd Control_ID_
  loc_A026AD: FStAdFunc var_98
  loc_A026B0: FLdPr var_98
  loc_A026B3: Me.Text = from_stack_1
  loc_A026B8: FFreeStr var_A0 = "": var_E4 = "": var_E8 = ""
  loc_A026C3: FFree1Ad var_98
  loc_A026C6: FFreeVar var_B0 = ""
  loc_A026CD: LitStr "Aviso de Pago - "
  loc_A026D0: ILdRf var_8C
  loc_A026D3: ConcatStr
  loc_A026D4: FStStrNoPop var_A0
  loc_A026D7: ImpAdCallI2 Trim$()
  loc_A026DC: FStStrNoPop var_E4
  loc_A026DF: FLdPr var_9C
  loc_A026E2: VCallAd Control_ID_
  loc_A026E5: FStAdFunc var_98
  loc_A026E8: FLdPr var_98
  loc_A026EB: Me.Text = from_stack_1
  loc_A026F0: FFreeStr var_A0 = ""
  loc_A026F7: FFree1Ad var_98
  loc_A026FA: FLdI2 arg_14
  loc_A026FD: FLdPr var_9C
  loc_A02700: Call dlgEnvioEmailPagado.PeriInfoPut(from_stack_1v)
  loc_A02705: ILdRf arg_18
  loc_A02708: FLdPr var_9C
  loc_A0270B: Call dlgEnvioEmailPagado.NumeOrpaPut(from_stack_1v)
  loc_A02710: ILdRf var_90
  loc_A02713: FLdPr var_9C
  loc_A02716: Call dlgEnvioEmailPagado.CucuPersPut(from_stack_1v)
  loc_A0271B: ILdRf var_94
  loc_A0271E: FLdPr var_9C
  loc_A02721: Call dlgEnvioEmailPagado.FechaPagoPut(from_stack_1v)
  loc_A02726: LitVar_Missing var_C0
  loc_A02729: PopAdLdVar
  loc_A0272A: LitVarI4
  loc_A02732: PopAdLdVar
  loc_A02733: ImpAdLdRf MemVar_C3D828
  loc_A02736: NewIfNullPr dlgEnvioEmailPagado
  loc_A02739: dlgEnvioEmailPagado.Show from_stack_1, from_stack_2
  loc_A0273E: LitNothing
  loc_A02740: FStAd var_9C 
  loc_A02744: ExitProc
End Function

Private Function Proc_261_71_A02C28(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) 'A02C28
  'Data Table: 42C928
  loc_A02AE4: ILdRf arg_C
  loc_A02AE7: FStStrCopy var_88
  loc_A02AEA: ILdRf arg_10
  loc_A02AED: FStStrCopy var_8C
  loc_A02AF0: ILdRf arg_1C
  loc_A02AF3: FStStrCopy var_90
  loc_A02AF6: ILdRf arg_20
  loc_A02AF9: FStStrCopy var_94
  loc_A02AFC: ImpAdLdRf MemVar_C3D870
  loc_A02AFF: NewIfNullAd
  loc_A02B02: CastAd
  loc_A02B05: FStAdFuncNoPop
  loc_A02B08: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_A02B0D: FFree1Ad var_98
  loc_A02B10: ImpAdLdRf MemVar_C3D870
  loc_A02B13: NewIfNullAd
  loc_A02B16: FStAd var_9C 
  loc_A02B1A: LitI2_Byte 0
  loc_A02B1C: FLdPr var_9C
  loc_A02B1F: Call dlgEnvioEmailRemision.bGeneradoPut(from_stack_1v)
  loc_A02B24: ILdRf var_88
  loc_A02B27: ImpAdCallI2 Trim$()
  loc_A02B2C: FStStrNoPop var_A0
  loc_A02B2F: FLdPr var_9C
  loc_A02B32: VCallAd Control_ID_
  loc_A02B35: FStAdFunc var_98
  loc_A02B38: FLdPr var_98
  loc_A02B3B: Me.Text = from_stack_1
  loc_A02B40: FFree1Str var_A0
  loc_A02B43: FFree1Ad var_98
  loc_A02B46: ILdRf var_8C
  loc_A02B49: ImpAdCallI2 Trim$()
  loc_A02B4E: FStStr var_EC
  loc_A02B51: FLdRfVar var_8C
  loc_A02B54: CVarRef
  loc_A02B59: FLdRfVar var_88
  loc_A02B5C: CVarRef
  loc_A02B61: FLdZeroAd var_EC
  loc_A02B64: FStStrNoPop var_A0
  loc_A02B67: LitStr vbNullString
  loc_A02B6A: EqStr
  loc_A02B6C: CVarBoolI2 var_B0
  loc_A02B70: FLdRfVar var_E0
  loc_A02B73: ImpAdCallFPR4  = IIf(, , )
  loc_A02B78: FLdRfVar var_E0
  loc_A02B7B: CStrVarVal var_E4
  loc_A02B7F: ImpAdCallI2 Trim$()
  loc_A02B84: FStStrNoPop var_E8
  loc_A02B87: FLdPr var_9C
  loc_A02B8A: VCallAd Control_ID_
  loc_A02B8D: FStAdFunc var_98
  loc_A02B90: FLdPr var_98
  loc_A02B93: Me.Text = from_stack_1
  loc_A02B98: FFreeStr var_A0 = "": var_E4 = "": var_E8 = ""
  loc_A02BA3: FFree1Ad var_98
  loc_A02BA6: FFreeVar var_B0 = ""
  loc_A02BAD: LitStr "Aviso de Pago - "
  loc_A02BB0: ILdRf var_8C
  loc_A02BB3: ConcatStr
  loc_A02BB4: FStStrNoPop var_A0
  loc_A02BB7: ImpAdCallI2 Trim$()
  loc_A02BBC: FStStrNoPop var_E4
  loc_A02BBF: FLdPr var_9C
  loc_A02BC2: VCallAd Control_ID_
  loc_A02BC5: FStAdFunc var_98
  loc_A02BC8: FLdPr var_98
  loc_A02BCB: Me.Text = from_stack_1
  loc_A02BD0: FFreeStr var_A0 = ""
  loc_A02BD7: FFree1Ad var_98
  loc_A02BDA: FLdI2 arg_14
  loc_A02BDD: FLdPr var_9C
  loc_A02BE0: Call dlgEnvioEmailRemision.PeriInfoPut(from_stack_1v)
  loc_A02BE5: ILdRf arg_18
  loc_A02BE8: FLdPr var_9C
  loc_A02BEB: Call dlgEnvioEmailRemision.NumeOrpaPut(from_stack_1v)
  loc_A02BF0: ILdRf var_90
  loc_A02BF3: FLdPr var_9C
  loc_A02BF6: Call dlgEnvioEmailRemision.CucuPersPut(from_stack_1v)
  loc_A02BFB: ILdRf var_94
  loc_A02BFE: FLdPr var_9C
  loc_A02C01: Call dlgEnvioEmailRemision.FechaPagoPut(from_stack_1v)
  loc_A02C06: LitVar_Missing var_C0
  loc_A02C09: PopAdLdVar
  loc_A02C0A: LitVarI4
  loc_A02C12: PopAdLdVar
  loc_A02C13: ImpAdLdRf MemVar_C3D870
  loc_A02C16: NewIfNullPr dlgEnvioEmailRemision
  loc_A02C19: dlgEnvioEmailRemision.Show from_stack_1, from_stack_2
  loc_A02C1E: LitNothing
  loc_A02C20: FStAd var_9C 
  loc_A02C24: ExitProc
  loc_A02C25: MemLdStr global_29
End Function

Private Function Proc_261_72_A07AE8(arg_C, arg_10, arg_14, arg_18) 'A07AE8
  'Data Table: 42C928
  loc_A0799C: ILdRf arg_C
  loc_A0799F: FStStrCopy var_88
  loc_A079A2: ILdRf arg_10
  loc_A079A5: FStStrCopy var_8C
  loc_A079A8: ILdRf arg_14
  loc_A079AB: FStStrCopy var_90
  loc_A079AE: ILdRf arg_18
  loc_A079B1: FStStrCopy var_94
  loc_A079B4: ImpAdLdRf MemVar_C3D884
  loc_A079B7: NewIfNullAd
  loc_A079BA: CastAd
  loc_A079BD: FStAdFuncNoPop
  loc_A079C0: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_A079C5: FFree1Ad var_98
  loc_A079C8: ImpAdLdRf MemVar_C3D884
  loc_A079CB: NewIfNullAd
  loc_A079CE: FStAd var_9C 
  loc_A079D2: ILdRf var_88
  loc_A079D5: ImpAdCallI2 Trim$()
  loc_A079DA: FStStrNoPop var_A0
  loc_A079DD: FLdPr var_9C
  loc_A079E0: VCallAd Control_ID_
  loc_A079E3: FStAdFunc var_98
  loc_A079E6: FLdPr var_98
  loc_A079E9: Me.Text = from_stack_1
  loc_A079EE: FFree1Str var_A0
  loc_A079F1: FFree1Ad var_98
  loc_A079F4: ILdRf var_8C
  loc_A079F7: ImpAdCallI2 Trim$()
  loc_A079FC: FStStr var_EC
  loc_A079FF: FLdRfVar var_8C
  loc_A07A02: CVarRef
  loc_A07A07: FLdRfVar var_88
  loc_A07A0A: CVarRef
  loc_A07A0F: FLdZeroAd var_EC
  loc_A07A12: FStStrNoPop var_A0
  loc_A07A15: LitStr vbNullString
  loc_A07A18: EqStr
  loc_A07A1A: CVarBoolI2 var_B0
  loc_A07A1E: FLdRfVar var_E0
  loc_A07A21: ImpAdCallFPR4  = IIf(, , )
  loc_A07A26: FLdRfVar var_E0
  loc_A07A29: CStrVarVal var_E4
  loc_A07A2D: ImpAdCallI2 Trim$()
  loc_A07A32: FStStrNoPop var_E8
  loc_A07A35: FLdPr var_9C
  loc_A07A38: VCallAd Control_ID_
  loc_A07A3B: FStAdFunc var_98
  loc_A07A3E: FLdPr var_98
  loc_A07A41: Me.Text = from_stack_1
  loc_A07A46: FFreeStr var_A0 = "": var_E4 = "": var_E8 = ""
  loc_A07A51: FFree1Ad var_98
  loc_A07A54: FFreeVar var_B0 = ""
  loc_A07A5B: ILdRf var_90
  loc_A07A5E: ImpAdCallI2 Trim$()
  loc_A07A63: FStStrNoPop var_A0
  loc_A07A66: FLdPr var_9C
  loc_A07A69: VCallAd Control_ID_
  loc_A07A6C: FStAdFunc var_98
  loc_A07A6F: FLdPr var_98
  loc_A07A72: Me.Text = from_stack_1
  loc_A07A77: FFree1Str var_A0
  loc_A07A7A: FFree1Ad var_98
  loc_A07A7D: ILdRf var_94
  loc_A07A80: ImpAdCallI2 Trim$()
  loc_A07A85: FStStrNoPop var_A0
  loc_A07A88: FLdPr var_9C
  loc_A07A8B: Call dlgEnvioEmailUsuario.MensajePut(from_stack_1v)
  loc_A07A90: FFree1Str var_A0
  loc_A07A93: FLdRfVar var_A0
  loc_A07A96: ILdPr
  loc_A07A99: from_stack_1v = tblnotapedido.PeriInfoGet()
  loc_A07A9E: ILdRf var_A0
  loc_A07AA1: CI2Str
  loc_A07AA3: FLdPr var_9C
  loc_A07AA6: Call dlgEnvioEmailUsuario.iPeriInfoPut(from_stack_1v)
  loc_A07AAB: FFree1Str var_A0
  loc_A07AAE: FLdRfVar var_A0
  loc_A07AB1: ILdPr
  loc_A07AB4: from_stack_1v = tblnotapedido.CodiNopeGet()
  loc_A07AB9: ILdRf var_A0
  loc_A07ABC: CI2Str
  loc_A07ABE: FLdPr var_9C
  loc_A07AC1: Call dlgEnvioEmailUsuario.iCodiNopePut(from_stack_1v)
  loc_A07AC6: FFree1Str var_A0
  loc_A07AC9: LitVar_Missing var_C0
  loc_A07ACC: PopAdLdVar
  loc_A07ACD: LitVarI4
  loc_A07AD5: PopAdLdVar
  loc_A07AD6: FLdPr var_9C
  loc_A07AD9: Me.Show from_stack_1, from_stack_2
  loc_A07ADE: LitNothing
  loc_A07AE0: FStAd var_9C 
  loc_A07AE4: ExitProc
End Function
