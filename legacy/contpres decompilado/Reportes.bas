
Private Function Proc_263_0_9C6454(arg_C) '9C6454
  'Data Table: 41447C
  loc_9C6378: ILdRf arg_C
  loc_9C637B: ImpAdCallFPR4  = Proc_261_14_9D98D4()
  loc_9C6380: ILdI4 arg_C
  loc_9C6383: FStAd var_88 
  loc_9C6387: FLdPr var_88
  loc_9C638A: LateMemCall
  loc_9C6390: FLdPr var_88
  loc_9C6393: LateMemLdVar
  loc_9C6398: CBoolVarNull
  loc_9C639A: FFree1Var var_98 = ""
  loc_9C639D: BranchF loc_9C6427
  loc_9C63A0: LitVarStr var_A8, "Generando vista previa..."
  loc_9C63A5: PopAdLdVar
  loc_9C63A6: FLdPr var_88
  loc_9C63A9: LateMemLdVar
  loc_9C63AE: VarLateMemSt .SimpleText
  loc_9C63B2: FFree1Var var_98 = ""
  loc_9C63B5: FLdPr var_88
  loc_9C63B8: LateMemCall
  loc_9C63BE: ILdRf arg_C
  loc_9C63C1: ImpAdCallFPR4 Proc_263_7_990DEC()
  loc_9C63C6: LitI4 2
  loc_9C63CB: CI2I4
  loc_9C63CC: FLdPr var_88
  loc_9C63CF: Form.WindowState = from_stack_1
  loc_9C63D4: FLdPr var_88
  loc_9C63D7: Form.Hide
  loc_9C63DC: ILdRf arg_C
  loc_9C63DF: ImpAdCallFPR4 Proc_263_8_97C89C()
  loc_9C63E4: LitI4 0
  loc_9C63E9: CI2I4
  loc_9C63EA: FLdPr var_88
  loc_9C63ED: Form.WindowState = from_stack_1
  loc_9C63F2: ILdRf arg_C
  loc_9C63F5: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9C63FA: LitVarStr var_A8, vbNullString
  loc_9C63FF: PopAdLdVar
  loc_9C6400: FLdPr var_88
  loc_9C6403: LateMemLdVar
  loc_9C6408: VarLateMemSt .SimpleText
  loc_9C640C: FFree1Var var_98 = ""
  loc_9C640F: LitVar_Missing var_B8
  loc_9C6412: PopAdLdVar
  loc_9C6413: LitVarI4
  loc_9C641B: PopAdLdVar
  loc_9C641C: FLdPr var_88
  loc_9C641F: Form.Show from_stack_1, from_stack_2
  loc_9C6424: Branch loc_9C644D
  loc_9C6427: FLdPr var_88
  loc_9C642A: LateMemCall
  loc_9C6430: ILdRf arg_C
  loc_9C6433: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9C6438: LitVarStr var_A8, vbNullString
  loc_9C643D: PopAdLdVar
  loc_9C643E: FLdPr var_88
  loc_9C6441: LateMemLdVar
  loc_9C6446: VarLateMemSt .SimpleText
  loc_9C644A: FFree1Var var_98 = ""
  loc_9C644D: LitNothing
  loc_9C644F: FStAd var_88 
  loc_9C6453: ExitProc
End Function

Private Function Proc_263_1_9AD9D4(arg_C) '9AD9D4
  'Data Table: 41447C
  loc_9AD930: ILdRf arg_C
  loc_9AD933: ImpAdCallFPR4  = Proc_261_14_9D98D4()
  loc_9AD938: ILdI4 arg_C
  loc_9AD93B: FStAd var_88 
  loc_9AD93F: FLdPr var_88
  loc_9AD942: LateMemCall
  loc_9AD948: FLdPr var_88
  loc_9AD94B: LateMemLdVar
  loc_9AD950: CBoolVarNull
  loc_9AD952: FFree1Var var_98 = ""
  loc_9AD955: BranchF loc_9AD9A6
  loc_9AD958: LitVarStr var_A8, "Enviando a impresora predeterminada..."
  loc_9AD95D: PopAdLdVar
  loc_9AD95E: FLdPr var_88
  loc_9AD961: LateMemLdVar
  loc_9AD966: VarLateMemSt .SimpleText
  loc_9AD96A: FFree1Var var_98 = ""
  loc_9AD96D: FLdPr var_88
  loc_9AD970: LateMemCall
  loc_9AD976: ILdRf arg_C
  loc_9AD979: ImpAdCallFPR4 Proc_263_7_990DEC()
  loc_9AD97E: ILdRf arg_C
  loc_9AD981: ImpAdCallFPR4 Proc_263_10_980BB4()
  loc_9AD986: ILdRf arg_C
  loc_9AD989: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9AD98E: LitVarStr var_A8, vbNullString
  loc_9AD993: PopAdLdVar
  loc_9AD994: FLdPr var_88
  loc_9AD997: LateMemLdVar
  loc_9AD99C: VarLateMemSt .SimpleText
  loc_9AD9A0: FFree1Var var_98 = ""
  loc_9AD9A3: Branch loc_9AD9CC
  loc_9AD9A6: FLdPr var_88
  loc_9AD9A9: LateMemCall
  loc_9AD9AF: ILdRf arg_C
  loc_9AD9B2: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9AD9B7: LitVarStr var_A8, vbNullString
  loc_9AD9BC: PopAdLdVar
  loc_9AD9BD: FLdPr var_88
  loc_9AD9C0: LateMemLdVar
  loc_9AD9C5: VarLateMemSt .SimpleText
  loc_9AD9C9: FFree1Var var_98 = ""
  loc_9AD9CC: LitNothing
  loc_9AD9CE: FStAd var_88 
  loc_9AD9D2: ExitProc
End Function

Private Function Proc_263_2_A3B50C(arg_C, arg_10) 'A3B50C
  'Data Table: 41447C
  loc_A3B2FC: FLdI2 arg_10
  loc_A3B2FF: BranchF loc_A3B3A6
  loc_A3B302: FLdRfVar var_DC
  loc_A3B305: FLdRfVar var_8C
  loc_A3B308: LitI4 2
  loc_A3B30D: FLdRfVar var_88
  loc_A3B310: NewIfNullPr IFileSystem3
  loc_A3B313: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_A3B318: FLdPr var_8C
  loc_A3B31B:  = Me.Path
  loc_A3B320: FLdRfVar var_90
  loc_A3B323: ILdPr
  loc_A3B326:  = Form.Tag
  loc_A3B32B: FLdRfVar var_94
  loc_A3B32E: ILdPr
  loc_A3B331:  = Form.Tag
  loc_A3B336: FLdRfVar var_98
  loc_A3B339: ILdPr
  loc_A3B33C:  = Form.Caption
  loc_A3B341: ILdRf var_98
  loc_A3B344: LitStr ".pdf"
  loc_A3B347: ConcatStr
  loc_A3B348: CVarStr var_C8
  loc_A3B34B: ILdRf var_94
  loc_A3B34E: LitStr ".pdf"
  loc_A3B351: ConcatStr
  loc_A3B352: CVarStr var_B8
  loc_A3B355: ILdRf var_90
  loc_A3B358: LitStr vbNullString
  loc_A3B35B: NeStr
  loc_A3B35D: CVarBoolI2 var_A8
  loc_A3B361: FLdRfVar var_D8
  loc_A3B364: ImpAdCallFPR4  = IIf(, , )
  loc_A3B369: FLdRfVar var_E4
  loc_A3B36C: FLdRfVar var_D8
  loc_A3B36F: CStrVarVal var_E0
  loc_A3B373: ILdRf var_DC
  loc_A3B376: FLdRfVar var_88
  loc_A3B379: NewIfNullPr IFileSystem3
  loc_A3B37C: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A3B381: FLdZeroAd var_E4
  loc_A3B384: ImpAdStStr MemVar_C3D05C
  loc_A3B388: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_DC = ""
  loc_A3B395: FFree1Ad var_8C
  loc_A3B398: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_A3B3A3: Branch loc_A3B3B7
  loc_A3B3A6: LitI2_Byte 0
  loc_A3B3A8: LitI2_Byte &HFF
  loc_A3B3AA: ILdRf arg_C
  loc_A3B3AD: ImpAdCallI2  = Proc_261_18_A59F84(, )
  loc_A3B3B2: NotI4
  loc_A3B3B3: BranchF loc_A3B3B7
  loc_A3B3B6: ExitProc
  loc_A3B3B7: ILdRf arg_C
  loc_A3B3BA: ImpAdCallFPR4  = Proc_261_14_9D98D4()
  loc_A3B3BF: ILdI4 arg_C
  loc_A3B3C2: FStAd var_E8 
  loc_A3B3C6: FLdPr var_E8
  loc_A3B3C9: LateMemCall
  loc_A3B3CF: FLdPr var_E8
  loc_A3B3D2: LateMemLdVar
  loc_A3B3D7: CBoolVarNull
  loc_A3B3D9: FFree1Var var_B8 = ""
  loc_A3B3DC: BranchF loc_A3B4BE
  loc_A3B3DF: FLdRfVar var_8C
  loc_A3B3E2: ImpAdLdRf MemVar_C44F9C
  loc_A3B3E5: NewIfNullPr Me
  loc_A3B3E8:  = Me.Global.Printer
  loc_A3B3ED: FLdPr var_8C
  loc_A3B3F0: LateIdLdVar var_B8 DispID_28 1
  loc_A3B3F7: CStrVarTmp
  loc_A3B3F8: FMemStStr arg_8(16)
  loc_A3B3FE: FFree1Ad var_8C
  loc_A3B401: FFree1Var var_B8 = ""
  loc_A3B404: LitStr "PDFCreator"
  loc_A3B407: ImpAdCallI2 Proc_261_24_A3529C()
  loc_A3B40C: FStStr var_90
  loc_A3B40F: FFree1Str var_90
  loc_A3B412: LitVarStr var_A8, "Generando PDF..."
  loc_A3B417: PopAdLdVar
  loc_A3B418: FLdPr var_E8
  loc_A3B41B: LateMemLdVar
  loc_A3B420: VarLateMemSt .SimpleText
  loc_A3B424: FFree1Var var_B8 = ""
  loc_A3B427: FLdPr var_E8
  loc_A3B42A: LateMemCall
  loc_A3B430: ILdRf arg_C
  loc_A3B433: ImpAdCallFPR4 Proc_263_7_990DEC()
  loc_A3B438: FLdRfVar var_FA
  loc_A3B43B: ImpAdLdI4 MemVar_C3D05C
  loc_A3B43E: FLdRfVar var_88
  loc_A3B441: NewIfNullPr IFileSystem3
  loc_A3B444: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A3B449: FLdI2 var_FA
  loc_A3B44C: BranchF loc_A3B492
  loc_A3B44F: FLdRfVar var_8C
  loc_A3B452: ImpAdLdI4 MemVar_C3D05C
  loc_A3B455: FLdRfVar var_88
  loc_A3B458: NewIfNullPr IFileSystem3
  loc_A3B45B: from_stack_2 = IFileSystem3.IFileSystem.GetFile(from_stack_1v)
  loc_A3B460: FLdZeroAd var_8C
  loc_A3B463: FStVarAdFunc
  loc_A3B467: LitVarStr var_A8, "del "
  loc_A3B46C: FLdRfVar var_10C
  loc_A3B46F: VarLateMemLdVar var_B8, .ShortPath
  loc_A3B475: ConcatVar var_C8
  loc_A3B479: CStrVarVal var_90
  loc_A3B47D: ImpAdCallFPR4 Proc_261_25_9B8B60()
  loc_A3B482: FFree1Str var_90
  loc_A3B485: FFreeVar var_B8 = ""
  loc_A3B48C: LitNothing
  loc_A3B48E: FStVarAd
  loc_A3B492: FLdI2 arg_10
  loc_A3B495: NotI4
  loc_A3B496: ILdRf arg_C
  loc_A3B499: ImpAdCallFPR4 Proc_263_11_9959CC(, )
  loc_A3B49E: ILdRf arg_C
  loc_A3B4A1: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A3B4A6: LitVarStr var_A8, vbNullString
  loc_A3B4AB: PopAdLdVar
  loc_A3B4AC: FLdPr var_E8
  loc_A3B4AF: LateMemLdVar
  loc_A3B4B4: VarLateMemSt .SimpleText
  loc_A3B4B8: FFree1Var var_B8 = ""
  loc_A3B4BB: Branch loc_A3B4E4
  loc_A3B4BE: FLdPr var_E8
  loc_A3B4C1: LateMemCall
  loc_A3B4C7: ILdRf arg_C
  loc_A3B4CA: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A3B4CF: LitVarStr var_A8, vbNullString
  loc_A3B4D4: PopAdLdVar
  loc_A3B4D5: FLdPr var_E8
  loc_A3B4D8: LateMemLdVar
  loc_A3B4DD: VarLateMemSt .SimpleText
  loc_A3B4E1: FFree1Var var_B8 = ""
  loc_A3B4E4: LitNothing
  loc_A3B4E6: FStAd var_E8 
  loc_A3B4EA: ExitProc
  loc_A3B4EB: ILdRf arg_C
  loc_A3B4EE: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A3B4F3: LitVarStr var_A8, vbNullString
  loc_A3B4F8: PopAdLdVar
  loc_A3B4F9: ILdPr
  loc_A3B4FC: LateMemLdVar
  loc_A3B501: VarLateMemSt .SimpleText
  loc_A3B505: FFree1Var var_B8 = ""
  loc_A3B508: ExitProc
End Function

Private Function Proc_263_3_9FD750(arg_C, arg_10) '9FD750
  'Data Table: 41447C
  loc_9FD618: FLdI2 arg_10
  loc_9FD61B: NotI4
  loc_9FD61C: BranchF loc_9FD630
  loc_9FD61F: LitI2_Byte 0
  loc_9FD621: LitI2_Byte 0
  loc_9FD623: ILdRf arg_C
  loc_9FD626: ImpAdCallI2  = Proc_261_18_A59F84(, )
  loc_9FD62B: NotI4
  loc_9FD62C: BranchF loc_9FD630
  loc_9FD62F: ExitProc
  loc_9FD630: ILdRf arg_C
  loc_9FD633: ImpAdCallFPR4  = Proc_261_14_9D98D4()
  loc_9FD638: ILdI4 arg_C
  loc_9FD63B: FStAd var_9C 
  loc_9FD63F: FLdPr var_9C
  loc_9FD642: LateMemCall
  loc_9FD648: FLdPr var_9C
  loc_9FD64B: LateMemLdVar
  loc_9FD650: CBoolVarNull
  loc_9FD652: FFree1Var var_AC = ""
  loc_9FD655: BranchF loc_9FD703
  loc_9FD658: LitVarStr var_BC, "Generando archivo de texto..."
  loc_9FD65D: PopAdLdVar
  loc_9FD65E: FLdPr var_9C
  loc_9FD661: LateMemLdVar
  loc_9FD666: VarLateMemSt .SimpleText
  loc_9FD66A: FFree1Var var_AC = ""
  loc_9FD66D: FLdPr var_9C
  loc_9FD670: LateMemCall
  loc_9FD676: FLdRfVar var_D0
  loc_9FD679: ImpAdLdI4 MemVar_C3D05C
  loc_9FD67C: FLdRfVar var_98
  loc_9FD67F: NewIfNullPr IFileSystem3
  loc_9FD682: from_stack_2 = IFileSystem3.IFileSystem.GetFile(from_stack_1v)
  loc_9FD687: FLdZeroAd var_D0
  loc_9FD68A: FStVarAdFunc
  loc_9FD68E: LitVarStr var_BC, "explorer /select,"
  loc_9FD693: LitI4 &H22
  loc_9FD698: FLdRfVar var_AC
  loc_9FD69B: ImpAdCallFPR4  = Chr()
  loc_9FD6A0: FLdRfVar var_AC
  loc_9FD6A3: ConcatVar var_E0
  loc_9FD6A7: FLdRfVar var_94
  loc_9FD6AA: VarLateMemLdVar var_F0, .ShortPath
  loc_9FD6B0: ConcatVar var_100
  loc_9FD6B4: LitI4 &H22
  loc_9FD6B9: FLdRfVar var_110
  loc_9FD6BC: ImpAdCallFPR4  = Chr()
  loc_9FD6C1: FLdRfVar var_110
  loc_9FD6C4: ConcatVar var_120
  loc_9FD6C8: CStrVarVal var_124
  loc_9FD6CC: ImpAdCallFPR4 Proc_261_25_9B8B60()
  loc_9FD6D1: FFree1Str var_124
  loc_9FD6D4: FFreeVar var_AC = "": var_E0 = "": var_F0 = "": var_100 = "": var_110 = ""
  loc_9FD6E3: ILdRf arg_C
  loc_9FD6E6: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9FD6EB: LitVarStr var_BC, vbNullString
  loc_9FD6F0: PopAdLdVar
  loc_9FD6F1: FLdPr var_9C
  loc_9FD6F4: LateMemLdVar
  loc_9FD6F9: VarLateMemSt .SimpleText
  loc_9FD6FD: FFree1Var var_AC = ""
  loc_9FD700: Branch loc_9FD729
  loc_9FD703: FLdPr var_9C
  loc_9FD706: LateMemCall
  loc_9FD70C: ILdRf arg_C
  loc_9FD70F: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9FD714: LitVarStr var_BC, vbNullString
  loc_9FD719: PopAdLdVar
  loc_9FD71A: FLdPr var_9C
  loc_9FD71D: LateMemLdVar
  loc_9FD722: VarLateMemSt .SimpleText
  loc_9FD726: FFree1Var var_AC = ""
  loc_9FD729: LitNothing
  loc_9FD72B: FStAd var_9C 
  loc_9FD72F: ExitProc
  loc_9FD730: ILdRf arg_C
  loc_9FD733: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9FD738: LitVarStr var_BC, vbNullString
  loc_9FD73D: PopAdLdVar
  loc_9FD73E: ILdPr
  loc_9FD741: LateMemLdVar
  loc_9FD746: VarLateMemSt .SimpleText
  loc_9FD74A: FFree1Var var_AC = ""
  loc_9FD74D: ExitProc
End Function

Private Function Proc_263_4_A28DF0(arg_C, arg_10, arg_14) 'A28DF0
  'Data Table: 41447C
  loc_A28C38: FLdI2 arg_10
  loc_A28C3B: NotI4
  loc_A28C3C: BranchF loc_A28C50
  loc_A28C3F: LitI2_Byte &HFF
  loc_A28C41: LitI2_Byte 0
  loc_A28C43: ILdRf arg_C
  loc_A28C46: ImpAdCallI2  = Proc_261_18_A59F84(, )
  loc_A28C4B: NotI4
  loc_A28C4C: BranchF loc_A28C50
  loc_A28C4F: ExitProc
  loc_A28C50: ILdRf arg_C
  loc_A28C53: ImpAdCallFPR4  = Proc_261_14_9D98D4()
  loc_A28C58: ILdI4 arg_C
  loc_A28C5B: FStAd var_9C 
  loc_A28C5F: FLdPr var_9C
  loc_A28C62: LateMemCall
  loc_A28C68: FLdPr var_9C
  loc_A28C6B: LateMemLdVar
  loc_A28C70: CBoolVarNull
  loc_A28C72: FFree1Var var_AC = ""
  loc_A28C75: BranchF loc_A28DA5
  loc_A28C78: LitVarStr var_BC, "Generando archivo xls..."
  loc_A28C7D: PopAdLdVar
  loc_A28C7E: FLdPr var_9C
  loc_A28C81: LateMemLdVar
  loc_A28C86: VarLateMemSt .SimpleText
  loc_A28C8A: FFree1Var var_AC = ""
  loc_A28C8D: FLdRfVar var_CE
  loc_A28C90: ImpAdLdI4 MemVar_C3D05C
  loc_A28C93: FLdRfVar var_98
  loc_A28C96: NewIfNullPr IFileSystem3
  loc_A28C99: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A28C9E: FLdI2 var_CE
  loc_A28CA1: BranchF loc_A28D11
  loc_A28CA4: FLdRfVar var_D4
  loc_A28CA7: ImpAdLdI4 MemVar_C3D05C
  loc_A28CAA: FLdRfVar var_98
  loc_A28CAD: NewIfNullPr IFileSystem3
  loc_A28CB0: from_stack_2 = IFileSystem3.IFileSystem.GetFile(from_stack_1v)
  loc_A28CB5: FLdZeroAd var_D4
  loc_A28CB8: FStVarAdFunc
  loc_A28CBC: LitVarStr var_BC, "del "
  loc_A28CC1: LitI4 &H22
  loc_A28CC6: FLdRfVar var_AC
  loc_A28CC9: ImpAdCallFPR4  = Chr()
  loc_A28CCE: FLdRfVar var_AC
  loc_A28CD1: ConcatVar var_E4
  loc_A28CD5: FLdRfVar var_94
  loc_A28CD8: VarLateMemLdVar var_F4, .ShortPath
  loc_A28CDE: ConcatVar var_104
  loc_A28CE2: LitI4 &H22
  loc_A28CE7: FLdRfVar var_114
  loc_A28CEA: ImpAdCallFPR4  = Chr()
  loc_A28CEF: FLdRfVar var_114
  loc_A28CF2: ConcatVar var_124
  loc_A28CF6: CStrVarVal var_128
  loc_A28CFA: ImpAdCallFPR4 Proc_261_25_9B8B60()
  loc_A28CFF: FFree1Str var_128
  loc_A28D02: FFreeVar var_AC = "": var_E4 = "": var_F4 = "": var_104 = "": var_114 = ""
  loc_A28D11: FLdPr var_9C
  loc_A28D14: LateMemCall
  loc_A28D1A: FLdI2 arg_14
  loc_A28D1D: BranchF loc_A28D35
  loc_A28D20: LitI2_Byte &HFF
  loc_A28D22: ImpAdLdI4 MemVar_C3D05C
  loc_A28D25: FMemLdR4 arg_8(0)
  loc_A28D2A: FLdRfVar var_98
  loc_A28D2D: NewIfNullPr IFileSystem3
  loc_A28D30: from_stack_4 = IFileSystem3.IFileSystem.CopyFile(from_stack_1v, from_stack_2v, from_stack_3b)
  loc_A28D35: FLdRfVar var_D4
  loc_A28D38: ImpAdLdI4 MemVar_C3D05C
  loc_A28D3B: FLdRfVar var_98
  loc_A28D3E: NewIfNullPr IFileSystem3
  loc_A28D41: from_stack_2 = IFileSystem3.IFileSystem.GetFile(from_stack_1v)
  loc_A28D46: FLdZeroAd var_D4
  loc_A28D49: FStVarAdFunc
  loc_A28D4D: LitVarStr var_BC, "explorer /select,"
  loc_A28D52: LitI4 &H22
  loc_A28D57: FLdRfVar var_AC
  loc_A28D5A: ImpAdCallFPR4  = Chr()
  loc_A28D5F: FLdRfVar var_AC
  loc_A28D62: ConcatVar var_E4
  loc_A28D66: FLdRfVar var_94
  loc_A28D69: VarLateMemLdVar var_F4, .ShortPath
  loc_A28D6F: ConcatVar var_104
  loc_A28D73: LitI4 &H22
  loc_A28D78: FLdRfVar var_114
  loc_A28D7B: ImpAdCallFPR4  = Chr()
  loc_A28D80: FLdRfVar var_114
  loc_A28D83: ConcatVar var_124
  loc_A28D87: CStrVarVal var_128
  loc_A28D8B: ImpAdCallFPR4 Proc_261_25_9B8B60()
  loc_A28D90: FFree1Str var_128
  loc_A28D93: FFreeVar var_AC = "": var_E4 = "": var_F4 = "": var_104 = "": var_114 = ""
  loc_A28DA2: Branch loc_A28DAE
  loc_A28DA5: FLdPr var_9C
  loc_A28DA8: LateMemCall
  loc_A28DAE: ILdRf arg_C
  loc_A28DB1: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A28DB6: LitVarStr var_BC, vbNullString
  loc_A28DBB: PopAdLdVar
  loc_A28DBC: FLdPr var_9C
  loc_A28DBF: LateMemLdVar
  loc_A28DC4: VarLateMemSt .SimpleText
  loc_A28DC8: FFree1Var var_AC = ""
  loc_A28DCB: LitNothing
  loc_A28DCD: FStAd var_9C 
  loc_A28DD1: ExitProc
  loc_A28DD2: ILdRf arg_C
  loc_A28DD5: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A28DDA: LitVarStr var_BC, vbNullString
  loc_A28DDF: PopAdLdVar
  loc_A28DE0: ILdPr
  loc_A28DE3: LateMemLdVar
  loc_A28DE8: VarLateMemSt .SimpleText
  loc_A28DEC: FFree1Var var_AC = ""
  loc_A28DEF: ExitProc
End Function

Private Function Proc_263_5_9C6568(arg_C) '9C6568
  'Data Table: 41447C
  loc_9C648C: ILdRf arg_C
  loc_9C648F: ImpAdCallFPR4  = Proc_261_14_9D98D4()
  loc_9C6494: ILdI4 arg_C
  loc_9C6497: FStAd var_88 
  loc_9C649B: FLdPr var_88
  loc_9C649E: LateMemCall
  loc_9C64A4: FLdPr var_88
  loc_9C64A7: LateMemLdVar
  loc_9C64AC: CBoolVarNull
  loc_9C64AE: FFree1Var var_98 = ""
  loc_9C64B1: BranchF loc_9C653B
  loc_9C64B4: LitVarStr var_A8, "Generando vista previa..."
  loc_9C64B9: PopAdLdVar
  loc_9C64BA: FLdPr var_88
  loc_9C64BD: LateMemLdVar
  loc_9C64C2: VarLateMemSt .SimpleText
  loc_9C64C6: FFree1Var var_98 = ""
  loc_9C64C9: FLdPr var_88
  loc_9C64CC: LateMemCall
  loc_9C64D2: ILdRf arg_C
  loc_9C64D5: ImpAdCallFPR4 Proc_263_7_990DEC()
  loc_9C64DA: LitI4 2
  loc_9C64DF: CI2I4
  loc_9C64E0: FLdPr var_88
  loc_9C64E3: Form.WindowState = from_stack_1
  loc_9C64E8: FLdPr var_88
  loc_9C64EB: Form.Hide
  loc_9C64F0: ILdRf arg_C
  loc_9C64F3: ImpAdCallFPR4 Proc_263_9_97C904()
  loc_9C64F8: LitI4 0
  loc_9C64FD: CI2I4
  loc_9C64FE: FLdPr var_88
  loc_9C6501: Form.WindowState = from_stack_1
  loc_9C6506: ILdRf arg_C
  loc_9C6509: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9C650E: LitVarStr var_A8, vbNullString
  loc_9C6513: PopAdLdVar
  loc_9C6514: FLdPr var_88
  loc_9C6517: LateMemLdVar
  loc_9C651C: VarLateMemSt .SimpleText
  loc_9C6520: FFree1Var var_98 = ""
  loc_9C6523: LitVar_Missing var_B8
  loc_9C6526: PopAdLdVar
  loc_9C6527: LitVarI4
  loc_9C652F: PopAdLdVar
  loc_9C6530: FLdPr var_88
  loc_9C6533: Form.Show from_stack_1, from_stack_2
  loc_9C6538: Branch loc_9C6561
  loc_9C653B: FLdPr var_88
  loc_9C653E: LateMemCall
  loc_9C6544: ILdRf arg_C
  loc_9C6547: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9C654C: LitVarStr var_A8, vbNullString
  loc_9C6551: PopAdLdVar
  loc_9C6552: FLdPr var_88
  loc_9C6555: LateMemLdVar
  loc_9C655A: VarLateMemSt .SimpleText
  loc_9C655E: FFree1Var var_98 = ""
  loc_9C6561: LitNothing
  loc_9C6563: FStAd var_88 
  loc_9C6567: ExitProc
End Function

Private Function Proc_263_6_A92790(arg_C, arg_10) 'A92790
  'Data Table: 41447C
  loc_A92324: LitStr "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\PageSetup\"
  loc_A92327: FStStrCopy var_88
  loc_A9232A: ILdI2 arg_10
  loc_A9232D: BranchF loc_A925E9
  loc_A92330: LitVarStr var_98, "<SCRIPT LANGUAGE=""JavaScript"">"
  loc_A92335: PopAdLdVar
  loc_A92336: ILdRfDarg arg_C
  loc_A9233C: LdPrVar
  loc_A9233E: LateMemCall
  loc_A92344: LitVarStr var_98, "<!--"
  loc_A92349: PopAdLdVar
  loc_A9234A: ILdRfDarg arg_C
  loc_A92350: LdPrVar
  loc_A92352: LateMemCall
  loc_A92358: LitVarStr var_98, "function stopError() {"
  loc_A9235D: PopAdLdVar
  loc_A9235E: ILdRfDarg arg_C
  loc_A92364: LdPrVar
  loc_A92366: LateMemCall
  loc_A9236C: LitVarStr var_98, "  return true;"
  loc_A92371: PopAdLdVar
  loc_A92372: ILdRfDarg arg_C
  loc_A92378: LdPrVar
  loc_A9237A: LateMemCall
  loc_A92380: LitVarStr var_98, "}"
  loc_A92385: PopAdLdVar
  loc_A92386: ILdRfDarg arg_C
  loc_A9238C: LdPrVar
  loc_A9238E: LateMemCall
  loc_A92394: LitVarStr var_98, "window.onerror = stopError;"
  loc_A92399: PopAdLdVar
  loc_A9239A: ILdRfDarg arg_C
  loc_A923A0: LdPrVar
  loc_A923A2: LateMemCall
  loc_A923A8: LitVarStr var_98, "// -->"
  loc_A923AD: PopAdLdVar
  loc_A923AE: ILdRfDarg arg_C
  loc_A923B4: LdPrVar
  loc_A923B6: LateMemCall
  loc_A923BC: LitVarStr var_98, "</SCRIPT>"
  loc_A923C1: PopAdLdVar
  loc_A923C2: ILdRfDarg arg_C
  loc_A923C8: LdPrVar
  loc_A923CA: LateMemCall
  loc_A923D0: LitVarStr var_98, "<script defer>"
  loc_A923D5: PopAdLdVar
  loc_A923D6: ILdRfDarg arg_C
  loc_A923DC: LdPrVar
  loc_A923DE: LateMemCall
  loc_A923E4: LitVarStr var_98, "function ini() {"
  loc_A923E9: PopAdLdVar
  loc_A923EA: ILdRfDarg arg_C
  loc_A923F0: LdPrVar
  loc_A923F2: LateMemCall
  loc_A923F8: LitStr vbNullString
  loc_A923FB: LitStr "header"
  loc_A923FE: ILdRf var_88
  loc_A92401: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A92406: LitStr "Municipalidad de Guaymallén"
  loc_A92409: LitStr "Municipalidad de Guaymallén"
  loc_A9240C: EqStr
  loc_A9240E: BranchF loc_A92449
  loc_A92411: LitStr "Usuario: "
  loc_A92414: ImpAdLdI4 MemVar_C3D03C
  loc_A92417: ConcatStr
  loc_A92418: FStStrNoPop var_CC
  loc_A9241B: LitStr "&b"
  loc_A9241E: ConcatStr
  loc_A9241F: FStStrNoPop var_D0
  loc_A92422: LitStr "&d   &t"
  loc_A92425: ConcatStr
  loc_A92426: FStStrNoPop var_D4
  loc_A92429: LitStr "&b&p/&P"
  loc_A9242C: ConcatStr
  loc_A9242D: FStStrNoPop var_D8
  loc_A92430: LitStr "footer"
  loc_A92433: ILdRf var_88
  loc_A92436: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A9243B: FFreeStr var_CC = "": var_D0 = "": var_D4 = ""
  loc_A92446: Branch loc_A924FE
  loc_A92449: LitVarStr var_B8, vbNullString
  loc_A9244E: FStVarCopyObj var_F8
  loc_A92451: FLdRfVar var_F8
  loc_A92454: LitVarStr var_A8, "&d   &t"
  loc_A92459: FStVarCopyObj var_E8
  loc_A9245C: FLdRfVar var_E8
  loc_A9245F: FMemLdRf unk_414485
  loc_A92464: CVarRef
  loc_A92469: FLdRfVar var_108
  loc_A9246C: ImpAdCallFPR4  = IIf(, , )
  loc_A92471: LitVarStr var_168, vbNullString
  loc_A92476: FStVarCopyObj var_178
  loc_A92479: FLdRfVar var_178
  loc_A9247C: LitStr "Usuario: "
  loc_A9247F: ImpAdLdI4 MemVar_C3D03C
  loc_A92482: ConcatStr
  loc_A92483: CVarStr var_158
  loc_A92486: FMemLdRf unk_414485
  loc_A9248B: CVarRef
  loc_A92490: FLdRfVar var_188
  loc_A92493: ImpAdCallFPR4  = IIf(, , )
  loc_A92498: FLdRfVar var_188
  loc_A9249B: LitStr "Usuario: "
  loc_A9249E: ImpAdLdI4 MemVar_C3D03C
  loc_A924A1: ConcatStr
  loc_A924A2: FStStrNoPop var_CC
  loc_A924A5: LitStr "&b"
  loc_A924A8: ConcatStr
  loc_A924A9: CVarStr var_118
  loc_A924AC: FLdRfVar var_108
  loc_A924AF: ConcatVar var_128
  loc_A924B3: LitVarStr var_C8, "&b&p/&P"
  loc_A924B8: ConcatVar var_138
  loc_A924BC: FMemLdRf unk_414485
  loc_A924C1: CVarRef
  loc_A924C6: FLdRfVar var_1A8
  loc_A924C9: ImpAdCallFPR4  = IIf(, , )
  loc_A924CE: FLdRfVar var_1A8
  loc_A924D1: CStrVarVal var_D0
  loc_A924D5: LitStr "footer"
  loc_A924D8: ILdRf var_88
  loc_A924DB: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A924E0: FFreeStr var_CC = ""
  loc_A924E7: FFreeVar var_E8 = "": var_F8 = "": var_118 = "": var_108 = "": var_128 = "": var_158 = "": var_178 = "": var_138 = "": var_188 = ""
  loc_A924FE: LitStr "0.25000"
  loc_A92501: LitStr "margin_bottom"
  loc_A92504: ILdRf var_88
  loc_A92507: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A9250C: LitStr "0.20000"
  loc_A9250F: LitStr "margin_left"
  loc_A92512: ILdRf var_88
  loc_A92515: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A9251A: LitStr "0.20000"
  loc_A9251D: LitStr "margin_right"
  loc_A92520: ILdRf var_88
  loc_A92523: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A92528: LitStr "0.25000"
  loc_A9252B: LitStr "margin_top"
  loc_A9252E: ILdRf var_88
  loc_A92531: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A92536: LitVarStr var_C8, "  factory.printing.portrait = "
  loc_A9253B: LitVarStr var_B8, "true"
  loc_A92540: FStVarCopyObj var_F8
  loc_A92543: FLdRfVar var_F8
  loc_A92546: LitVarStr var_A8, "false"
  loc_A9254B: FStVarCopyObj var_E8
  loc_A9254E: FLdRfVar var_E8
  loc_A92551: ILdRf arg_10
  loc_A92554: CVarRef
  loc_A92559: FLdRfVar var_108
  loc_A9255C: ImpAdCallFPR4  = IIf(, , )
  loc_A92561: FLdRfVar var_108
  loc_A92564: ConcatVar var_118
  loc_A92568: PopAdLdVar
  loc_A92569: ILdRfDarg arg_C
  loc_A9256F: LdPrVar
  loc_A92571: LateMemCall
  loc_A92577: FFreeVar var_E8 = "": var_F8 = "": var_108 = ""
  loc_A92582: LitVarStr var_98, "}"
  loc_A92587: PopAdLdVar
  loc_A92588: ILdRfDarg arg_C
  loc_A9258E: LdPrVar
  loc_A92590: LateMemCall
  loc_A92596: LitVarStr var_98, "</script>"
  loc_A9259B: PopAdLdVar
  loc_A9259C: ILdRfDarg arg_C
  loc_A925A2: LdPrVar
  loc_A925A4: LateMemCall
  loc_A925AA: LitVarStr var_98, "</head>"
  loc_A925AF: PopAdLdVar
  loc_A925B0: ILdRfDarg arg_C
  loc_A925B6: LdPrVar
  loc_A925B8: LateMemCall
  loc_A925BE: LitVarStr var_98, "<body onload=""ini()"">"
  loc_A925C3: PopAdLdVar
  loc_A925C4: ILdRfDarg arg_C
  loc_A925CA: LdPrVar
  loc_A925CC: LateMemCall
  loc_A925D2: LitVarStr var_98, "  <object id=""factory"" style=""display:none"" viewastext classid=""clsid:1663ED61-23EB-11D2-B92F-008048FDD814""></object>"
  loc_A925D7: PopAdLdVar
  loc_A925D8: ILdRfDarg arg_C
  loc_A925DE: LdPrVar
  loc_A925E0: LateMemCall
  loc_A925E6: Branch loc_A9278F
  loc_A925E9: LitStr vbNullString
  loc_A925EC: LitStr "header"
  loc_A925EF: ILdRf var_88
  loc_A925F2: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A925F7: LitStr "Municipalidad de Guaymallén"
  loc_A925FA: LitStr "Municipalidad de Guaymallén"
  loc_A925FD: EqStr
  loc_A925FF: BranchF loc_A9263A
  loc_A92602: LitStr "Usuario: "
  loc_A92605: ImpAdLdI4 MemVar_C3D03C
  loc_A92608: ConcatStr
  loc_A92609: FStStrNoPop var_CC
  loc_A9260C: LitStr "&b"
  loc_A9260F: ConcatStr
  loc_A92610: FStStrNoPop var_D0
  loc_A92613: LitStr "&d   &t"
  loc_A92616: ConcatStr
  loc_A92617: FStStrNoPop var_D4
  loc_A9261A: LitStr "&b&p/&P"
  loc_A9261D: ConcatStr
  loc_A9261E: FStStrNoPop var_D8
  loc_A92621: LitStr "footer"
  loc_A92624: ILdRf var_88
  loc_A92627: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A9262C: FFreeStr var_CC = "": var_D0 = "": var_D4 = ""
  loc_A92637: Branch loc_A926EF
  loc_A9263A: LitVarStr var_B8, vbNullString
  loc_A9263F: FStVarCopyObj var_F8
  loc_A92642: FLdRfVar var_F8
  loc_A92645: LitVarStr var_A8, "&d   &t"
  loc_A9264A: FStVarCopyObj var_E8
  loc_A9264D: FLdRfVar var_E8
  loc_A92650: FMemLdRf unk_414485
  loc_A92655: CVarRef
  loc_A9265A: FLdRfVar var_108
  loc_A9265D: ImpAdCallFPR4  = IIf(, , )
  loc_A92662: LitVarStr var_168, vbNullString
  loc_A92667: FStVarCopyObj var_178
  loc_A9266A: FLdRfVar var_178
  loc_A9266D: LitStr "Usuario: "
  loc_A92670: ImpAdLdI4 MemVar_C3D03C
  loc_A92673: ConcatStr
  loc_A92674: CVarStr var_158
  loc_A92677: FMemLdRf unk_414485
  loc_A9267C: CVarRef
  loc_A92681: FLdRfVar var_188
  loc_A92684: ImpAdCallFPR4  = IIf(, , )
  loc_A92689: FLdRfVar var_188
  loc_A9268C: LitStr "Usuario: "
  loc_A9268F: ImpAdLdI4 MemVar_C3D03C
  loc_A92692: ConcatStr
  loc_A92693: FStStrNoPop var_CC
  loc_A92696: LitStr "&b"
  loc_A92699: ConcatStr
  loc_A9269A: CVarStr var_118
  loc_A9269D: FLdRfVar var_108
  loc_A926A0: ConcatVar var_128
  loc_A926A4: LitVarStr var_C8, "&b&p/&P"
  loc_A926A9: ConcatVar var_138
  loc_A926AD: FMemLdRf unk_414485
  loc_A926B2: CVarRef
  loc_A926B7: FLdRfVar var_1A8
  loc_A926BA: ImpAdCallFPR4  = IIf(, , )
  loc_A926BF: FLdRfVar var_1A8
  loc_A926C2: CStrVarVal var_D0
  loc_A926C6: LitStr "footer"
  loc_A926C9: ILdRf var_88
  loc_A926CC: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A926D1: FFreeStr var_CC = ""
  loc_A926D8: FFreeVar var_E8 = "": var_F8 = "": var_118 = "": var_108 = "": var_128 = "": var_158 = "": var_178 = "": var_138 = "": var_188 = ""
  loc_A926EF: LitStr "0.25000"
  loc_A926F2: LitStr "margin_bottom"
  loc_A926F5: ILdRf var_88
  loc_A926F8: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A926FD: LitStr "0.25000"
  loc_A92700: LitStr "margin_left"
  loc_A92703: ILdRf var_88
  loc_A92706: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A9270B: LitStr "0.25000"
  loc_A9270E: LitStr "margin_right"
  loc_A92711: ILdRf var_88
  loc_A92714: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A92719: LitStr "0.25000"
  loc_A9271C: LitStr "margin_top"
  loc_A9271F: ILdRf var_88
  loc_A92722: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A92727: FMemLdR4 arg_8(12)
  loc_A9272C: LitStr "printer"
  loc_A9272F: ILdRf var_88
  loc_A92732: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A92737: LitStr "9"
  loc_A9273A: LitStr "paper_size"
  loc_A9273D: ILdRf var_88
  loc_A92740: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A92745: LitStr "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\"
  loc_A92748: FStStrCopy var_88
  loc_A9274B: LitStr "yes"
  loc_A9274E: LitStr "Print_Background"
  loc_A92751: ILdRf var_88
  loc_A92754: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A92759: LitStr "no"
  loc_A9275C: LitStr "AlwaysUseDefaultPrinter"
  loc_A9275F: ILdRf var_88
  loc_A92762: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A92767: LitVarStr var_98, "</head>"
  loc_A9276C: PopAdLdVar
  loc_A9276D: ILdRfDarg arg_C
  loc_A92773: LdPrVar
  loc_A92775: LateMemCall
  loc_A9277B: LitVarStr var_98, "<body>"
  loc_A92780: PopAdLdVar
  loc_A92781: ILdRfDarg arg_C
  loc_A92787: LdPrVar
  loc_A92789: LateMemCall
  loc_A9278F: ExitProc
End Function

Private Function Proc_263_7_990DEC() '990DEC
  'Data Table: 41447C
  loc_990DA4: FMemLdRf unk_414485
  loc_990DA9: CDargRef
  loc_990DAD: ILdPr
  loc_990DB0: LateMemLdVar
  loc_990DB5: LdPrVar
  loc_990DB7: LateMemCall
  loc_990DBD: FFree1Var var_B4 = ""
  loc_990DC0: ImpAdCallFPR4 DoEvents()
  loc_990DC5: ILdPr
  loc_990DC8: LateMemLdVar
  loc_990DCD: VarLateMemLdVar var_B4, .readyState
  loc_990DD3: LitVarI4
  loc_990DDB: HardType
  loc_990DDC: EqVarBool
  loc_990DDE: NotI4
  loc_990DDF: FFreeVar var_A4 = ""
  loc_990DE6: BranchT loc_990DC0
  loc_990DE9: ExitProc
End Function

Private Function Proc_263_8_97C89C() '97C89C
  'Data Table: 41447C
  loc_97C86C: LitVarI4
  loc_97C874: PopAdLdVar
  loc_97C875: LitVarI4
  loc_97C87D: PopAdLdVar
  loc_97C87E: LitVar_NULL
  loc_97C882: PopAdLdVar
  loc_97C883: LitVar_NULL
  loc_97C887: PopAdLdVar
  loc_97C888: ILdPr
  loc_97C88B: LateMemLdVar
  loc_97C890: LdPrVar
  loc_97C892: LateMemCall
  loc_97C898: FFree1Var var_124 = ""
  loc_97C89B: ExitProc
End Function

Private Function Proc_263_9_97C904() '97C904
  'Data Table: 41447C
  loc_97C8D4: LitVarI4
  loc_97C8DC: PopAdLdVar
  loc_97C8DD: LitVarI4
  loc_97C8E5: PopAdLdVar
  loc_97C8E6: LitVar_NULL
  loc_97C8EA: PopAdLdVar
  loc_97C8EB: LitVar_NULL
  loc_97C8EF: PopAdLdVar
  loc_97C8F0: ILdPr
  loc_97C8F3: LateMemLdVar
  loc_97C8F8: LdPrVar
  loc_97C8FA: LateMemCall
  loc_97C900: FFree1Var var_124 = ""
  loc_97C903: ExitProc
End Function

Private Function Proc_263_10_980BB4() '980BB4
  'Data Table: 41447C
  loc_980B80: LitVarI4
  loc_980B88: PopAdLdVar
  loc_980B89: LitVarI4
  loc_980B91: PopAdLdVar
  loc_980B92: LitVarI2 var_E4, 2
  loc_980B97: PopAdLdVar
  loc_980B98: LitVar_NULL
  loc_980B9C: PopAdLdVar
  loc_980B9D: ILdPr
  loc_980BA0: LateMemLdVar
  loc_980BA5: LdPrVar
  loc_980BA7: LateMemCall
  loc_980BAD: FFree1Var var_124 = ""
  loc_980BB0: ExitProc
End Function

Private Function Proc_263_11_9959CC(arg_10) '9959CC
  'Data Table: 41447C
  loc_995970: FLdI2 arg_10
  loc_995973: ImpAdCallFPR4 Proc_263_14_A22CCC()
  loc_995978: LitVarI4
  loc_995980: PopAdLdVar
  loc_995981: LitVarI4
  loc_995989: PopAdLdVar
  loc_99598A: LitVarI2 var_E4, 2
  loc_99598F: PopAdLdVar
  loc_995990: LitVar_NULL
  loc_995994: PopAdLdVar
  loc_995995: ILdPr
  loc_995998: LateMemLdVar
  loc_99599D: LdPrVar
  loc_99599F: LateMemCall
  loc_9959A5: FFree1Var var_124 = ""
  loc_9959A8: ImpAdCallFPR4 DoEvents()
  loc_9959AD: LitI2_Byte 0
  loc_9959AF: ImpAdLdI4 MemVar_C3D05C
  loc_9959B2: ImpAdCallI2 Proc_261_69_9A6820(, )
  loc_9959B7: BranchT loc_9959A8
  loc_9959BA: FMemLdR4 arg_8(16)
  loc_9959BF: ImpAdCallI2 Proc_261_24_A3529C()
  loc_9959C4: FStStr var_128
  loc_9959C7: FFree1Str var_128
  loc_9959CA: ExitProc
End Function

Private Function Proc_263_12_9C9114() '9C9114
  'Data Table: 41447C
  loc_9C9044: FLdRfVar var_8C
  loc_9C9047: ILdPr
  loc_9C904A:  = Form.Controls
  loc_9C904F: FLdZeroAd var_8C
  loc_9C9052: FStAdFuncNoPop
  loc_9C9055: FLdRfVar var_88
  loc_9C9058: ForEachCollAd var_94
  loc_9C905E: FLdPr var_88
  loc_9C9061: LateMemLdVar
  loc_9C9066: FLdRfVar var_B4
  loc_9C9069: ImpAdCallFPR4  = LCase()
  loc_9C906E: FLdRfVar var_B4
  loc_9C9071: FStVar var_C4
  loc_9C9075: FFree1Var var_A4 = ""
  loc_9C9078: FLdRfVar var_C4
  loc_9C907B: LitVarStr var_D4, "cmdprevia"
  loc_9C9080: HardType
  loc_9C9081: EqVarBool
  loc_9C9083: BranchT loc_9C90DA
  loc_9C9086: FLdRfVar var_C4
  loc_9C9089: LitVarStr var_E4, "cmdpredeterminada"
  loc_9C908E: HardType
  loc_9C908F: EqVarBool
  loc_9C9091: BranchT loc_9C90DA
  loc_9C9094: FLdRfVar var_C4
  loc_9C9097: LitVarStr var_F4, "cmdhtml"
  loc_9C909C: HardType
  loc_9C909D: EqVarBool
  loc_9C909F: BranchT loc_9C90DA
  loc_9C90A2: FLdRfVar var_C4
  loc_9C90A5: LitVarStr var_104, "cmdpdf"
  loc_9C90AA: HardType
  loc_9C90AB: EqVarBool
  loc_9C90AD: BranchT loc_9C90DA
  loc_9C90B0: FLdRfVar var_C4
  loc_9C90B3: LitVarStr var_114, "cmdtxt"
  loc_9C90B8: HardType
  loc_9C90B9: EqVarBool
  loc_9C90BB: BranchT loc_9C90DA
  loc_9C90BE: FLdRfVar var_C4
  loc_9C90C1: LitVarStr var_124, "cmdxls"
  loc_9C90C6: HardType
  loc_9C90C7: EqVarBool
  loc_9C90C9: BranchT loc_9C90DA
  loc_9C90CC: FLdRfVar var_C4
  loc_9C90CF: LitVarStr var_134, "cmdsalir"
  loc_9C90D4: HardType
  loc_9C90D5: EqVarBool
  loc_9C90D7: BranchF loc_9C90E8
  loc_9C90DA: LitVar_TRUE var_D4
  loc_9C90DD: PopAdLdVar
  loc_9C90DE: FLdPr var_88
  loc_9C90E1: LateMemSt
  loc_9C90E5: Branch loc_9C9109
  loc_9C90E8: FLdRfVar var_C4
  loc_9C90EB: LitVarStr var_D4, "cmdnueva"
  loc_9C90F0: HardType
  loc_9C90F1: EqVarBool
  loc_9C90F3: BranchF loc_9C9109
  loc_9C90F6: ILdPr
  loc_9C90F9: LateMemLdVar
  loc_9C90FE: PopAdLdVar
  loc_9C90FF: FLdPr var_88
  loc_9C9102: LateMemSt
  loc_9C9106: FFree1Var var_A4 = ""
  loc_9C9109: FLdRfVar var_88
  loc_9C910C: NextEachCollAd var_94
  loc_9C9112: ExitProc
End Function

Private Function Proc_263_13_99E450(arg_C) '99E450
  'Data Table: 41447C
  loc_99E3F0: FLdRfVar var_94
  loc_99E3F3: FLdRfVar var_8C
  loc_99E3F6: LitI4 2
  loc_99E3FB: FLdRfVar var_88
  loc_99E3FE: NewIfNullPr IFileSystem3
  loc_99E401: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_99E406: FLdPr var_8C
  loc_99E409:  = Me.Path
  loc_99E40E: FLdRfVar var_9C
  loc_99E411: LitStr "contpres"
  loc_99E414: ILdI4 arg_C
  loc_99E417: ConcatStr
  loc_99E418: FStStrNoPop var_90
  loc_99E41B: LitStr ".rep"
  loc_99E41E: ConcatStr
  loc_99E41F: FStStrNoPop var_98
  loc_99E422: ILdRf var_94
  loc_99E425: FLdRfVar var_88
  loc_99E428: NewIfNullPr IFileSystem3
  loc_99E42B: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_99E430: FLdZeroAd var_9C
  loc_99E433: FMemStStr arg_8(0)
  loc_99E439: FFreeStr var_90 = "": var_94 = ""
  loc_99E442: FFree1Ad var_8C
  loc_99E445: LitNothing
  loc_99E447: CastAd
  loc_99E44A: FStAdFunc var_88
  loc_99E44D: ExitProc
End Function

Private Function Proc_263_14_A22CCC(arg_C) 'A22CCC
  'Data Table: 41447C
  loc_A22B20: FLdRfVar var_90
  loc_A22B23: ImpAdLdI4 MemVar_C3D05C
  loc_A22B26: FLdRfVar var_88
  loc_A22B29: NewIfNullPr IFileSystem3
  loc_A22B2C: from_stack_2 = IFileSystem3.IFileSystem.GetFileName(from_stack_1v)
  loc_A22B31: FLdZeroAd var_90
  loc_A22B34: FStStr var_8C
  loc_A22B37: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Printing\"
  loc_A22B3A: FStStrCopy var_94
  loc_A22B3D: LitStr "InfoGov"
  loc_A22B40: LitStr "StandardAuthor"
  loc_A22B43: ILdRf var_94
  loc_A22B46: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22B4B: LitStr "1"
  loc_A22B4E: LitStr "UseStandardAuthor"
  loc_A22B51: ILdRf var_94
  loc_A22B54: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22B59: ILdRf var_8C
  loc_A22B5C: FnLenStr
  loc_A22B5D: LitI4 4
  loc_A22B62: SubI4
  loc_A22B63: ILdRf var_8C
  loc_A22B66: ImpAdCallI2 Left$(, )
  loc_A22B6B: FStStrNoPop var_90
  loc_A22B6E: LitStr "StandardTitle"
  loc_A22B71: ILdRf var_94
  loc_A22B74: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22B79: FFree1Str var_90
  loc_A22B7C: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Printing\Formats\PDF\Security\"
  loc_A22B7F: FStStrCopy var_94
  loc_A22B82: LitStr "1"
  loc_A22B85: LitStr "PDFAllowDegradedPrinting"
  loc_A22B88: ILdRf var_94
  loc_A22B8B: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22B90: LitStr "1"
  loc_A22B93: LitStr "PDFAllowScreenReaders"
  loc_A22B96: ILdRf var_94
  loc_A22B99: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22B9E: LitStr "1"
  loc_A22BA1: LitStr "PDFDisallowModifyAnnotations"
  loc_A22BA4: ILdRf var_94
  loc_A22BA7: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22BAC: LitStr "1"
  loc_A22BAF: LitStr "PDFDisallowModifyContents"
  loc_A22BB2: ILdRf var_94
  loc_A22BB5: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22BBA: LitStr "0"
  loc_A22BBD: LitStr "PDFDisallowPrinting"
  loc_A22BC0: ILdRf var_94
  loc_A22BC3: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22BC8: LitStr "1"
  loc_A22BCB: LitStr "PDFHighEncryption"
  loc_A22BCE: ILdRf var_94
  loc_A22BD1: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22BD6: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Program\"
  loc_A22BD9: FStStrCopy var_94
  loc_A22BDC: FLdRfVar var_90
  loc_A22BDF: ImpAdLdI4 MemVar_C3D05C
  loc_A22BE2: FLdRfVar var_88
  loc_A22BE5: NewIfNullPr IFileSystem3
  loc_A22BE8: from_stack_2 = IFileSystem3.IFileSystem.GetParentFolderName(from_stack_1v)
  loc_A22BED: ILdRf var_90
  loc_A22BF0: LitStr "AutosaveDirectory"
  loc_A22BF3: ILdRf var_94
  loc_A22BF6: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22BFB: FFree1Str var_90
  loc_A22BFE: ILdRf var_8C
  loc_A22C01: LitStr "AutosaveFilename"
  loc_A22C04: ILdRf var_94
  loc_A22C07: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22C0C: LitVarStr var_D4, "0"
  loc_A22C11: FStVarCopyObj var_E4
  loc_A22C14: FLdRfVar var_E4
  loc_A22C17: LitVarStr var_B4, "1"
  loc_A22C1C: FStVarCopyObj var_C4
  loc_A22C1F: FLdRfVar var_C4
  loc_A22C22: FLdRfVar arg_C
  loc_A22C25: CVarRef
  loc_A22C2A: FLdRfVar var_F4
  loc_A22C2D: ImpAdCallFPR4  = IIf(, , )
  loc_A22C32: FLdRfVar var_F4
  loc_A22C35: CStrVarVal var_90
  loc_A22C39: LitStr "AutosaveStartStandardProgram"
  loc_A22C3C: ILdRf var_94
  loc_A22C3F: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22C44: FFree1Str var_90
  loc_A22C47: FFreeVar var_C4 = "": var_E4 = ""
  loc_A22C50: LitStr "0"
  loc_A22C53: LitStr "PrintAfterSaving"
  loc_A22C56: ILdRf var_94
  loc_A22C59: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22C5E: LitStr "0"
  loc_A22C61: LitStr "PrintAfterSavingDuplex"
  loc_A22C64: ILdRf var_94
  loc_A22C67: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22C6C: LitStr "0"
  loc_A22C6F: LitStr "PrintAfterSavingNoCancel"
  loc_A22C72: ILdRf var_94
  loc_A22C75: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22C7A: LitStr "0"
  loc_A22C7D: LitStr "PrintAfterSavingQueryUser"
  loc_A22C80: ILdRf var_94
  loc_A22C83: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22C88: LitStr "0"
  loc_A22C8B: LitStr "PrintAfterSavingTumble"
  loc_A22C8E: ILdRf var_94
  loc_A22C91: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22C96: LitStr "1"
  loc_A22C99: LitStr "ShowAnimation"
  loc_A22C9C: ILdRf var_94
  loc_A22C9F: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22CA4: LitStr "1"
  loc_A22CA7: LitStr "UseAutosave"
  loc_A22CAA: ILdRf var_94
  loc_A22CAD: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22CB2: LitStr "1"
  loc_A22CB5: LitStr "UseAutosaveDirectory"
  loc_A22CB8: ILdRf var_94
  loc_A22CBB: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A22CC0: LitNothing
  loc_A22CC2: CastAd
  loc_A22CC5: FStAdFunc var_88
  loc_A22CC8: ExitProc
  loc_A22CC9: ImpAdStFPR4 MemVar_40131AB9
End Function

Private Function Proc_263_15_A80B00(arg_C) 'A80B00
  'Data Table: 41447C
  loc_A806F0: FLdI2 arg_C
  loc_A806F3: BranchF loc_A80704
  loc_A806F6: LitStr "PDFCreator"
  loc_A806F9: ImpAdCallI2 Proc_261_24_A3529C()
  loc_A806FE: FStStr var_88
  loc_A80701: FFree1Str var_88
  loc_A80704: FLdRfVar var_88
  loc_A80707: ImpAdLdI4 MemVar_C3D05C
  loc_A8070A: FLdRfVar var_8C
  loc_A8070D: NewIfNullPr IFileSystem3
  loc_A80710: from_stack_2 = IFileSystem3.IFileSystem.GetFileName(from_stack_1v)
  loc_A80715: FLdZeroAd var_88
  loc_A80718: FStStr var_90
  loc_A8071B: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Printing\"
  loc_A8071E: FStStrCopy var_94
  loc_A80721: LitStr "InfoGov"
  loc_A80724: LitStr "StandardAuthor"
  loc_A80727: ILdRf var_94
  loc_A8072A: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A8072F: LitStr "1"
  loc_A80732: LitStr "UseStandardAuthor"
  loc_A80735: ILdRf var_94
  loc_A80738: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A8073D: LitStr "a4"
  loc_A80740: LitStr "Papersize"
  loc_A80743: ILdRf var_94
  loc_A80746: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A8074B: LitStr "0"
  loc_A8074E: LitStr "UseFixPapersize"
  loc_A80751: ILdRf var_94
  loc_A80754: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80759: ILdRf var_90
  loc_A8075C: FnLenStr
  loc_A8075D: LitI4 4
  loc_A80762: SubI4
  loc_A80763: ILdRf var_90
  loc_A80766: ImpAdCallI2 Left$(, )
  loc_A8076B: FStStrNoPop var_88
  loc_A8076E: LitStr "StandardTitle"
  loc_A80771: ILdRf var_94
  loc_A80774: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80779: FFree1Str var_88
  loc_A8077C: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Printing\Formats\PDF\Security\"
  loc_A8077F: FStStrCopy var_94
  loc_A80782: LitStr "1"
  loc_A80785: LitStr "PDFAllowDegradedPrinting"
  loc_A80788: ILdRf var_94
  loc_A8078B: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80790: LitStr "1"
  loc_A80793: LitStr "PDFAllowScreenReaders"
  loc_A80796: ILdRf var_94
  loc_A80799: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A8079E: LitStr "1"
  loc_A807A1: LitStr "PDFDisallowModifyAnnotations"
  loc_A807A4: ILdRf var_94
  loc_A807A7: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A807AC: LitStr "1"
  loc_A807AF: LitStr "PDFDisallowModifyContents"
  loc_A807B2: ILdRf var_94
  loc_A807B5: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A807BA: LitStr "0"
  loc_A807BD: LitStr "PDFDisallowPrinting"
  loc_A807C0: ILdRf var_94
  loc_A807C3: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A807C8: LitStr "1"
  loc_A807CB: LitStr "PDFHighEncryption"
  loc_A807CE: ILdRf var_94
  loc_A807D1: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A807D6: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Printing\Formats\PDF\General\"
  loc_A807D9: FStStrCopy var_94
  loc_A807DC: LitStr "2"
  loc_A807DF: LitStr "PDFGeneralCompatibility"
  loc_A807E2: ILdRf var_94
  loc_A807E5: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A807EA: LitStr "0"
  loc_A807ED: LitStr "PDFGeneralOverprint"
  loc_A807F0: ILdRf var_94
  loc_A807F3: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A807F8: LitStr "1"
  loc_A807FB: LitStr "PDFGeneralAutorotate"
  loc_A807FE: ILdRf var_94
  loc_A80801: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80806: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Program\"
  loc_A80809: FStStrCopy var_94
  loc_A8080C: LitStr "<temp>"
  loc_A8080F: LitStr "AutosaveDirectory"
  loc_A80812: ILdRf var_94
  loc_A80815: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A8081A: LitStr "<MyFiles>\"
  loc_A8081D: LitStr "LastsaveDirectory"
  loc_A80820: ILdRf var_94
  loc_A80823: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80828: LitStr "spanish"
  loc_A8082B: LitStr "Language"
  loc_A8082E: ILdRf var_94
  loc_A80831: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80836: LitStr "<Temp>PDFCreator\"
  loc_A80839: LitStr "PrinterTemppath"
  loc_A8083C: ILdRf var_94
  loc_A8083F: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80844: LitStr vbNullString
  loc_A80847: LitStr "AdditionalGhostscriptParameters"
  loc_A8084A: ILdRf var_94
  loc_A8084D: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80852: LitStr vbNullString
  loc_A80855: LitStr "AdditionalGhostscriptSearchpath"
  loc_A80858: ILdRf var_94
  loc_A8085B: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80860: LitStr "1"
  loc_A80863: LitStr "AddWindowsFontpath"
  loc_A80866: ILdRf var_94
  loc_A80869: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A8086E: LitStr "print"
  loc_A80871: LitStr "AutosaveFilename"
  loc_A80874: ILdRf var_94
  loc_A80877: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A8087C: LitStr "0"
  loc_A8087F: LitStr "AutosaveFormat"
  loc_A80882: ILdRf var_94
  loc_A80885: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A8088A: LitStr "0"
  loc_A8088D: LitStr "AutosaveStartStandardProgram"
  loc_A80890: ILdRf var_94
  loc_A80893: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80898: LitStr "0"
  loc_A8089B: LitStr "ClientComputerResolveIPAddress"
  loc_A8089E: ILdRf var_94
  loc_A808A1: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A808A6: LitStr "0"
  loc_A808A9: LitStr "DisableEmail"
  loc_A808AC: ILdRf var_94
  loc_A808AF: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A808B4: LitStr "0"
  loc_A808B7: LitStr "DontUseDocumentSettings"
  loc_A808BA: ILdRf var_94
  loc_A808BD: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A808C2: LitStr "Microsoft Word - |\.doc|\Microsoft Excel - |\.xls|\Microsoft PowerPoint - |\.ppt|"
  loc_A808C5: LitStr "FilenameSubstitutions"
  loc_A808C8: ILdRf var_94
  loc_A808CB: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A808D0: LitStr "1"
  loc_A808D3: LitStr "FilenameSubstitutionsOnlyInTitle"
  loc_A808D6: ILdRf var_94
  loc_A808D9: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A808DE: LitStr "0"
  loc_A808E1: LitStr "Logging"
  loc_A808E4: ILdRf var_94
  loc_A808E7: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A808EC: LitStr "100"
  loc_A808EF: LitStr "LogLines"
  loc_A808F2: ILdRf var_94
  loc_A808F5: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A808FA: LitStr "1"
  loc_A808FD: LitStr "NoConfirmMessageSwitchingDefaultprinter"
  loc_A80900: ILdRf var_94
  loc_A80903: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80908: LitStr "0"
  loc_A8090B: LitStr "NoProcessingAtStartup"
  loc_A8090E: ILdRf var_94
  loc_A80911: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80916: LitStr "0"
  loc_A80919: LitStr "NoPSCheck"
  loc_A8091C: ILdRf var_94
  loc_A8091F: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80924: LitStr "0"
  loc_A80927: LitStr "OptionsDesign"
  loc_A8092A: ILdRf var_94
  loc_A8092D: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80932: LitStr "1"
  loc_A80935: LitStr "OptionsEnabled"
  loc_A80938: ILdRf var_94
  loc_A8093B: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80940: LitStr "1"
  loc_A80943: LitStr "OptionsVisible"
  loc_A80946: ILdRf var_94
  loc_A80949: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A8094E: LitStr "1"
  loc_A80951: LitStr "PrintAfterSaving"
  loc_A80954: ILdRf var_94
  loc_A80957: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A8095C: LitStr "0"
  loc_A8095F: LitStr "PrintAfterSavingDuplex"
  loc_A80962: ILdRf var_94
  loc_A80965: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A8096A: LitStr "0"
  loc_A8096D: LitStr "PrintAfterSavingNoCancel"
  loc_A80970: ILdRf var_94
  loc_A80973: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80978: FMemLdR4 arg_8(12)
  loc_A8097D: LitStr "PrintAfterSavingPrinter"
  loc_A80980: ILdRf var_94
  loc_A80983: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80988: LitStr "0"
  loc_A8098B: LitStr "PrintAfterSavingQueryUser"
  loc_A8098E: ILdRf var_94
  loc_A80991: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80996: LitStr "0"
  loc_A80999: LitStr "PrintAfterSavingTumble"
  loc_A8099C: ILdRf var_94
  loc_A8099F: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A809A4: LitStr "0"
  loc_A809A7: LitStr "PrinterStop"
  loc_A809AA: ILdRf var_94
  loc_A809AD: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A809B2: LitStr "3"
  loc_A809B5: LitStr "ProcessPriority"
  loc_A809B8: ILdRf var_94
  loc_A809BB: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A809C0: LitStr "MS Sans Serif"
  loc_A809C3: LitStr "ProgramFont"
  loc_A809C6: ILdRf var_94
  loc_A809C9: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A809CE: LitStr "0"
  loc_A809D1: LitStr "ProgramFontCharset"
  loc_A809D4: ILdRf var_94
  loc_A809D7: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A809DC: LitStr "8"
  loc_A809DF: LitStr "ProgramFontSize"
  loc_A809E2: ILdRf var_94
  loc_A809E5: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A809EA: LitStr "1"
  loc_A809ED: LitStr "RemoveAllKnownFileExtensions"
  loc_A809F0: ILdRf var_94
  loc_A809F3: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A809F8: LitStr "1"
  loc_A809FB: LitStr "RemoveSpaces"
  loc_A809FE: ILdRf var_94
  loc_A80A01: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80A06: LitStr "0"
  loc_A80A09: LitStr "RunProgramAfterSaving"
  loc_A80A0C: ILdRf var_94
  loc_A80A0F: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80A14: LitStr "del"
  loc_A80A17: LitStr "RunProgramAfterSavingProgramname"
  loc_A80A1A: ILdRf var_94
  loc_A80A1D: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80A22: LitStr """<OutputFilename>"""
  loc_A80A25: LitStr "RunProgramAfterSavingProgramParameters"
  loc_A80A28: ILdRf var_94
  loc_A80A2B: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80A30: LitStr "1"
  loc_A80A33: LitStr "RunProgramAfterSavingWaitUntilReady"
  loc_A80A36: ILdRf var_94
  loc_A80A39: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80A3E: LitStr "1"
  loc_A80A41: LitStr "RunProgramAfterSavingWindowstyle"
  loc_A80A44: ILdRf var_94
  loc_A80A47: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80A4C: LitStr "0"
  loc_A80A4F: LitStr "RunProgramBeforeSaving"
  loc_A80A52: ILdRf var_94
  loc_A80A55: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80A5A: LitStr vbNullString
  loc_A80A5D: LitStr "RunProgramBeforeSavingProgramname"
  loc_A80A60: ILdRf var_94
  loc_A80A63: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80A68: LitStr """<TempFilename>"""
  loc_A80A6B: LitStr "RunProgramBeforeSavingProgramParameters"
  loc_A80A6E: ILdRf var_94
  loc_A80A71: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80A76: LitStr "1"
  loc_A80A79: LitStr "RunProgramBeforeSavingWindowstyle"
  loc_A80A7C: ILdRf var_94
  loc_A80A7F: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80A84: LitStr "print"
  loc_A80A87: LitStr "SaveFilename"
  loc_A80A8A: ILdRf var_94
  loc_A80A8D: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80A92: LitStr "0"
  loc_A80A95: LitStr "SendEmailAfterAutoSaving"
  loc_A80A98: ILdRf var_94
  loc_A80A9B: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80AA0: LitStr "0"
  loc_A80AA3: LitStr "SendMailMethod"
  loc_A80AA6: ILdRf var_94
  loc_A80AA9: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80AAE: LitStr "1"
  loc_A80AB1: LitStr "ShowAnimation"
  loc_A80AB4: ILdRf var_94
  loc_A80AB7: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80ABC: LitStr "1"
  loc_A80ABF: LitStr "StartStandardProgram"
  loc_A80AC2: ILdRf var_94
  loc_A80AC5: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80ACA: LitStr "1"
  loc_A80ACD: LitStr "Toolbars"
  loc_A80AD0: ILdRf var_94
  loc_A80AD3: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80AD8: LitStr "1"
  loc_A80ADB: LitStr "UseAutosave"
  loc_A80ADE: ILdRf var_94
  loc_A80AE1: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80AE6: LitStr "1"
  loc_A80AE9: LitStr "UseAutosaveDirectory"
  loc_A80AEC: ILdRf var_94
  loc_A80AEF: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A80AF4: LitNothing
  loc_A80AF6: CastAd
  loc_A80AF9: FStAdFunc var_8C
  loc_A80AFC: ExitProc
  loc_A80AFD: Ary1LdFPR8
  loc_A80AFE: FLdPrThis
End Function

Private Function Proc_263_16_A69960() 'A69960
  'Data Table: 41447C
  loc_A695E0: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Printing\"
  loc_A695E3: FStStrCopy var_8C
  loc_A695E6: LitStr vbNullString
  loc_A695E9: LitStr "StandardTitle"
  loc_A695EC: ILdRf var_8C
  loc_A695EF: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A695F4: LitStr vbNullString
  loc_A695F7: LitStr "StandardAuthor"
  loc_A695FA: ILdRf var_8C
  loc_A695FD: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69602: LitStr "0"
  loc_A69605: LitStr "UseStandardAuthor"
  loc_A69608: ILdRf var_8C
  loc_A6960B: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69610: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Printing\Formats\PDF\Security\"
  loc_A69613: FStStrCopy var_8C
  loc_A69616: LitStr "0"
  loc_A69619: LitStr "PDFAllowDegradedPrinting"
  loc_A6961C: ILdRf var_8C
  loc_A6961F: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69624: LitStr "0"
  loc_A69627: LitStr "PDFAllowScreenReaders"
  loc_A6962A: ILdRf var_8C
  loc_A6962D: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69632: LitStr "0"
  loc_A69635: LitStr "PDFDisallowModifyAnnotations"
  loc_A69638: ILdRf var_8C
  loc_A6963B: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69640: LitStr "0"
  loc_A69643: LitStr "PDFDisallowModifyContents"
  loc_A69646: ILdRf var_8C
  loc_A69649: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A6964E: LitStr "0"
  loc_A69651: LitStr "PDFDisallowPrinting"
  loc_A69654: ILdRf var_8C
  loc_A69657: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A6965C: LitStr "0"
  loc_A6965F: LitStr "PDFHighEncryption"
  loc_A69662: ILdRf var_8C
  loc_A69665: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A6966A: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Program\"
  loc_A6966D: FStStrCopy var_8C
  loc_A69670: LitStr "<MyFiles>\"
  loc_A69673: LitStr "AutosaveDirectory"
  loc_A69676: ILdRf var_8C
  loc_A69679: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A6967E: LitStr "<MyFiles>\"
  loc_A69681: LitStr "LastsaveDirectory"
  loc_A69684: ILdRf var_8C
  loc_A69687: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A6968C: LitStr "spanish"
  loc_A6968F: LitStr "Language"
  loc_A69692: ILdRf var_8C
  loc_A69695: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A6969A: LitStr "<Temp>PDFCreator\"
  loc_A6969D: LitStr "PrinterTemppath"
  loc_A696A0: ILdRf var_8C
  loc_A696A3: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A696A8: LitStr vbNullString
  loc_A696AB: LitStr "AdditionalGhostscriptParameters"
  loc_A696AE: ILdRf var_8C
  loc_A696B1: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A696B6: LitStr vbNullString
  loc_A696B9: LitStr "AdditionalGhostscriptSearchpath"
  loc_A696BC: ILdRf var_8C
  loc_A696BF: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A696C4: LitStr "1"
  loc_A696C7: LitStr "AddWindowsFontpath"
  loc_A696CA: ILdRf var_8C
  loc_A696CD: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A696D2: LitStr "<DateTime>"
  loc_A696D5: LitStr "AutosaveFilename"
  loc_A696D8: ILdRf var_8C
  loc_A696DB: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A696E0: LitStr "0"
  loc_A696E3: LitStr "AutosaveFormat"
  loc_A696E6: ILdRf var_8C
  loc_A696E9: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A696EE: LitStr "0"
  loc_A696F1: LitStr "AutosaveStartStandardProgram"
  loc_A696F4: ILdRf var_8C
  loc_A696F7: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A696FC: LitStr "0"
  loc_A696FF: LitStr "ClientComputerResolveIPAddress"
  loc_A69702: ILdRf var_8C
  loc_A69705: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A6970A: LitStr "0"
  loc_A6970D: LitStr "DisableEmail"
  loc_A69710: ILdRf var_8C
  loc_A69713: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69718: LitStr "0"
  loc_A6971B: LitStr "DontUseDocumentSettings"
  loc_A6971E: ILdRf var_8C
  loc_A69721: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69726: LitStr "Microsoft Word - |\.doc|\Microsoft Excel - |\.xls|\Microsoft PowerPoint - |\.ppt|"
  loc_A69729: LitStr "FilenameSubstitutions"
  loc_A6972C: ILdRf var_8C
  loc_A6972F: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69734: LitStr "1"
  loc_A69737: LitStr "FilenameSubstitutionsOnlyInTitle"
  loc_A6973A: ILdRf var_8C
  loc_A6973D: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69742: LitStr "0"
  loc_A69745: LitStr "Logging"
  loc_A69748: ILdRf var_8C
  loc_A6974B: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69750: LitStr "100"
  loc_A69753: LitStr "LogLines"
  loc_A69756: ILdRf var_8C
  loc_A69759: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A6975E: LitStr "0"
  loc_A69761: LitStr "NoConfirmMessageSwitchingDefaultprinter"
  loc_A69764: ILdRf var_8C
  loc_A69767: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A6976C: LitStr "0"
  loc_A6976F: LitStr "NoProcessingAtStartup"
  loc_A69772: ILdRf var_8C
  loc_A69775: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A6977A: LitStr "0"
  loc_A6977D: LitStr "NoPSCheck"
  loc_A69780: ILdRf var_8C
  loc_A69783: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69788: LitStr "0"
  loc_A6978B: LitStr "OptionsDesign"
  loc_A6978E: ILdRf var_8C
  loc_A69791: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69796: LitStr "1"
  loc_A69799: LitStr "OptionsEnabled"
  loc_A6979C: ILdRf var_8C
  loc_A6979F: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A697A4: LitStr "1"
  loc_A697A7: LitStr "OptionsVisible"
  loc_A697AA: ILdRf var_8C
  loc_A697AD: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A697B2: LitStr "0"
  loc_A697B5: LitStr "PrintAfterSaving"
  loc_A697B8: ILdRf var_8C
  loc_A697BB: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A697C0: LitStr "0"
  loc_A697C3: LitStr "PrintAfterSavingDuplex"
  loc_A697C6: ILdRf var_8C
  loc_A697C9: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A697CE: LitStr "0"
  loc_A697D1: LitStr "PrintAfterSavingNoCancel"
  loc_A697D4: ILdRf var_8C
  loc_A697D7: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A697DC: LitStr vbNullString
  loc_A697DF: LitStr "PrintAfterSavingPrinter"
  loc_A697E2: ILdRf var_8C
  loc_A697E5: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A697EA: LitStr "0"
  loc_A697ED: LitStr "PrintAfterSavingQueryUser"
  loc_A697F0: ILdRf var_8C
  loc_A697F3: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A697F8: LitStr "0"
  loc_A697FB: LitStr "PrintAfterSavingTumble"
  loc_A697FE: ILdRf var_8C
  loc_A69801: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69806: LitStr "0"
  loc_A69809: LitStr "PrinterStop"
  loc_A6980C: ILdRf var_8C
  loc_A6980F: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69814: LitStr "1"
  loc_A69817: LitStr "ProcessPriority"
  loc_A6981A: ILdRf var_8C
  loc_A6981D: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69822: LitStr "MS Sans Serif"
  loc_A69825: LitStr "ProgramFont"
  loc_A69828: ILdRf var_8C
  loc_A6982B: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69830: LitStr "0"
  loc_A69833: LitStr "ProgramFontCharset"
  loc_A69836: ILdRf var_8C
  loc_A69839: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A6983E: LitStr "8"
  loc_A69841: LitStr "ProgramFontSize"
  loc_A69844: ILdRf var_8C
  loc_A69847: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A6984C: LitStr "1"
  loc_A6984F: LitStr "RemoveAllKnownFileExtensions"
  loc_A69852: ILdRf var_8C
  loc_A69855: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A6985A: LitStr "1"
  loc_A6985D: LitStr "RemoveSpaces"
  loc_A69860: ILdRf var_8C
  loc_A69863: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69868: LitStr "0"
  loc_A6986B: LitStr "RunProgramAfterSaving"
  loc_A6986E: ILdRf var_8C
  loc_A69871: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69876: LitStr vbNullString
  loc_A69879: LitStr "RunProgramAfterSavingProgramname"
  loc_A6987C: ILdRf var_8C
  loc_A6987F: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69884: LitStr """<OutputFilename>"""
  loc_A69887: LitStr "RunProgramAfterSavingProgramParameters"
  loc_A6988A: ILdRf var_8C
  loc_A6988D: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69892: LitStr "1"
  loc_A69895: LitStr "RunProgramAfterSavingWaitUntilReady"
  loc_A69898: ILdRf var_8C
  loc_A6989B: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A698A0: LitStr "1"
  loc_A698A3: LitStr "RunProgramAfterSavingWindowstyle"
  loc_A698A6: ILdRf var_8C
  loc_A698A9: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A698AE: LitStr "0"
  loc_A698B1: LitStr "RunProgramBeforeSaving"
  loc_A698B4: ILdRf var_8C
  loc_A698B7: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A698BC: LitStr vbNullString
  loc_A698BF: LitStr "RunProgramBeforeSavingProgramname"
  loc_A698C2: ILdRf var_8C
  loc_A698C5: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A698CA: LitStr """<TempFilename>"""
  loc_A698CD: LitStr "RunProgramBeforeSavingProgramParameters"
  loc_A698D0: ILdRf var_8C
  loc_A698D3: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A698D8: LitStr "1"
  loc_A698DB: LitStr "RunProgramBeforeSavingWindowstyle"
  loc_A698DE: ILdRf var_8C
  loc_A698E1: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A698E6: LitStr "<Title>"
  loc_A698E9: LitStr "SaveFilename"
  loc_A698EC: ILdRf var_8C
  loc_A698EF: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A698F4: LitStr "0"
  loc_A698F7: LitStr "SendEmailAfterAutoSaving"
  loc_A698FA: ILdRf var_8C
  loc_A698FD: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69902: LitStr "0"
  loc_A69905: LitStr "SendMailMethod"
  loc_A69908: ILdRf var_8C
  loc_A6990B: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69910: LitStr "1"
  loc_A69913: LitStr "ShowAnimation"
  loc_A69916: ILdRf var_8C
  loc_A69919: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A6991E: LitStr "1"
  loc_A69921: LitStr "StartStandardProgram"
  loc_A69924: ILdRf var_8C
  loc_A69927: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A6992C: LitStr "1"
  loc_A6992F: LitStr "Toolbars"
  loc_A69932: ILdRf var_8C
  loc_A69935: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A6993A: LitStr "0"
  loc_A6993D: LitStr "UseAutosave"
  loc_A69940: ILdRf var_8C
  loc_A69943: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69948: LitStr "1"
  loc_A6994B: LitStr "UseAutosaveDirectory"
  loc_A6994E: ILdRf var_8C
  loc_A69951: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A69956: LitNothing
  loc_A69958: CastAd
  loc_A6995B: FStAdFunc var_88
  loc_A6995E: ExitProc
End Function

Private Function Proc_263_17_93F5A0() '93F5A0
  'Data Table: 41447C
  loc_93F59C: ExitProc
End Function

Private Function Proc_263_18_9A94E4() '9A94E4
  'Data Table: 41447C
  loc_9A9448: LitStr "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\PageSetup\"
  loc_9A944B: FStStrCopy var_88
  loc_9A944E: LitStr "&w&bPágina &p de &P"
  loc_9A9451: LitStr "header"
  loc_9A9454: ILdRf var_88
  loc_9A9457: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_9A945C: LitStr "&u&b&d"
  loc_9A945F: LitStr "footer"
  loc_9A9462: ILdRf var_88
  loc_9A9465: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_9A946A: LitStr "0.59055"
  loc_9A946D: LitStr "margin_bottom"
  loc_9A9470: ILdRf var_88
  loc_9A9473: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_9A9478: LitStr "0.59055"
  loc_9A947B: LitStr "margin_left"
  loc_9A947E: ILdRf var_88
  loc_9A9481: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_9A9486: LitStr "0.59055"
  loc_9A9489: LitStr "margin_right"
  loc_9A948C: ILdRf var_88
  loc_9A948F: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_9A9494: LitStr "0.59055"
  loc_9A9497: LitStr "margin_top"
  loc_9A949A: ILdRf var_88
  loc_9A949D: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_9A94A2: FMemLdR4 arg_8(12)
  loc_9A94A7: LitStr "printer"
  loc_9A94AA: ILdRf var_88
  loc_9A94AD: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_9A94B2: LitStr "9"
  loc_9A94B5: LitStr "paper_size"
  loc_9A94B8: ILdRf var_88
  loc_9A94BB: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_9A94C0: LitStr "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\"
  loc_9A94C3: FStStrCopy var_88
  loc_9A94C6: LitStr "yes"
  loc_9A94C9: LitStr "Print_Background"
  loc_9A94CC: ILdRf var_88
  loc_9A94CF: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_9A94D4: LitStr "yes"
  loc_9A94D7: LitStr "AlwaysUseDefaultPrinter"
  loc_9A94DA: ILdRf var_88
  loc_9A94DD: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_9A94E2: ExitProc
End Function

Private Function Proc_263_19_9AA028(arg_C, arg_10, arg_14) '9AA028
  'Data Table: 41447C
  loc_9A9FA8: ILdRf arg_C
  loc_9A9FAB: FStStrCopy var_88
  loc_9A9FAE: ILdRf arg_10
  loc_9A9FB1: FStStrCopy var_8C
  loc_9A9FB4: ILdRf arg_14
  loc_9A9FB7: FStStrCopy var_90
  loc_9A9FBA: LitI4 0
  loc_9A9FBF: LitStr "wscript.shell"
  loc_9A9FC2: FLdRfVar var_A8
  loc_9A9FC5: ImpAdCallFPR4  = CreateObject(, )
  loc_9A9FCA: FLdRfVar var_A8
  loc_9A9FCD: CAdVar
  loc_9A9FCF: FStAd var_94 
  loc_9A9FD3: FFree1Var var_A8 = ""
  loc_9A9FD6: ILdRf var_88
  loc_9A9FD9: ILdRf var_8C
  loc_9A9FDC: ConcatStr
  loc_9A9FDD: CVarStr var_A8
  loc_9A9FE0: PopAdLdVar
  loc_9A9FE1: FLdRfVar var_90
  loc_9A9FE4: CDargRef
  loc_9A9FE8: FLdPr var_94
  loc_9A9FEB: LateMemCall
  loc_9A9FF1: FFree1Var var_A8 = ""
  loc_9A9FF4: ILdRf var_88
  loc_9A9FF7: ILdRf var_8C
  loc_9A9FFA: ConcatStr
  loc_9A9FFB: CVarStr var_A8
  loc_9A9FFE: PopAdLdVar
  loc_9A9FFF: FLdPr var_94
  loc_9AA002: LateMemCallLdVar var_D8, .RegRead
  loc_9AA00A: ILdRf var_90
  loc_9AA00D: CVarStr var_C8
  loc_9AA010: HardType
  loc_9AA011: NeVarBool
  loc_9AA013: FFreeVar var_A8 = ""
  loc_9AA01A: BranchF loc_9AA025
  loc_9AA01D: ImpAdCallFPR4 DoEvents()
  loc_9AA022: Branch loc_9A9FF4
  loc_9AA025: ExitProc
End Function

Private Function Proc_263_20_9A699C(arg_C, arg_10) '9A699C
  'Data Table: 41447C
  loc_9A6924: ILdRf arg_C
  loc_9A6927: FStStrCopy var_8C
  loc_9A692A: ILdRf arg_10
  loc_9A692D: FStStrCopy var_90
  loc_9A6930: OnErrorGoto loc_9A6971
  loc_9A6933: LitI4 0
  loc_9A6938: LitStr "wscript.shell"
  loc_9A693B: FLdRfVar var_A8
  loc_9A693E: ImpAdCallFPR4  = CreateObject(, )
  loc_9A6943: FLdRfVar var_A8
  loc_9A6946: CAdVar
  loc_9A6948: FStAd var_94 
  loc_9A694C: FFree1Var var_A8 = ""
  loc_9A694F: ILdRf var_8C
  loc_9A6952: ILdRf var_90
  loc_9A6955: ConcatStr
  loc_9A6956: CVarStr var_A8
  loc_9A6959: PopAdLdVar
  loc_9A695A: FLdPr var_94
  loc_9A695D: LateMemCallLdVar var_C8, .RegRead
  loc_9A6965: CStrVarTmp
  loc_9A6966: FStStr var_88
  loc_9A6969: FFreeVar var_A8 = ""
  loc_9A6970: ExitProc
  loc_9A6971: FLdRfVar var_D0
  loc_9A6974: ImpAdCallI2 Err 'rtcErrObj
  loc_9A6979: FStAdFunc var_CC
  loc_9A697C: FLdPr var_CC
  loc_9A697F:  = Err.Number
  loc_9A6984: ILdRf var_D0
  loc_9A6987: LitI4 -2147024894
  loc_9A698C: EqI4
  loc_9A698D: FFree1Ad var_CC
  loc_9A6990: BranchF loc_9A6999
  loc_9A6993: LitStr vbNullString
  loc_9A6996: FStStrCopy var_88
  loc_9A6999: ExitProc
End Function

Private Function Proc_263_21_990A4C(arg_10) '990A4C
  'Data Table: 41447C
  loc_990A0A: ILdRf arg_10
  loc_990A0D: FStStrCopy var_98
  loc_990A12: On Error Resume Next
  loc_990A17: LitI4 0
  loc_990A1C: LitStr "wscript.shell"
  loc_990A1F: FLdRfVar var_AC
  loc_990A22: ImpAdCallFPR4  = CreateObject(, )
  loc_990A27: FLdRfVar var_AC
  loc_990A2A: CAdVar
  loc_990A2C: FStAd var_9C 
  loc_990A30: FFree1Var var_AC = ""
  loc_990A35: FLdRfVar var_98
  loc_990A38: CDargRef
  loc_990A3C: FLdPr var_9C
  loc_990A3F: LateMemCall
  loc_990A47: ExitProcCb
End Function

Private Function Proc_263_22_98CC50() '98CC50
  'Data Table: 41447C
  loc_98CC08: LitVarI4
  loc_98CC10: PopAdLdVar
  loc_98CC11: ILdPr
  loc_98CC14: LateIdCallLdVar
  loc_98CC1E: CI4Var
  loc_98CC20: LitI4 0
  loc_98CC25: NeI4
  loc_98CC26: FFree1Var var_B4 = ""
  loc_98CC29: BranchF loc_98CC49
  loc_98CC2C: LitVarI4
  loc_98CC34: PopAdLdVar
  loc_98CC35: LitVarI4
  loc_98CC3D: PopAdLdVar
  loc_98CC3E: ILdPr
  loc_98CC41: LateIdCall
  loc_98CC49: ImpAdCallFPR4 Proc_263_16_A69960()
  loc_98CC4E: ExitProc
End Function

Private Function Proc_263_23_B3DAB8(arg_10) 'B3DAB8
  'Data Table: 41447C
  loc_B3D064: ILdRf arg_10
  loc_B3D067: FStStrCopy var_88
  loc_B3D06A: LitVarStr var_98, "<style type=""text/css"">"
  loc_B3D06F: PopAdLdVar
  loc_B3D070: ILdPr
  loc_B3D073: LateMemLdVar
  loc_B3D078: LdPrVar
  loc_B3D07A: LateMemCall
  loc_B3D080: FFree1Var var_C8 = ""
  loc_B3D083: LitVarStr var_98, ".Titulo1 {"
  loc_B3D088: PopAdLdVar
  loc_B3D089: ILdPr
  loc_B3D08C: LateMemLdVar
  loc_B3D091: LdPrVar
  loc_B3D093: LateMemCall
  loc_B3D099: FFree1Var var_C8 = ""
  loc_B3D09C: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B3D0A1: PopAdLdVar
  loc_B3D0A2: ILdPr
  loc_B3D0A5: LateMemLdVar
  loc_B3D0AA: LdPrVar
  loc_B3D0AC: LateMemCall
  loc_B3D0B2: FFree1Var var_C8 = ""
  loc_B3D0B5: LitVarStr var_98, " font-size: 16px;"
  loc_B3D0BA: PopAdLdVar
  loc_B3D0BB: ILdPr
  loc_B3D0BE: LateMemLdVar
  loc_B3D0C3: LdPrVar
  loc_B3D0C5: LateMemCall
  loc_B3D0CB: FFree1Var var_C8 = ""
  loc_B3D0CE: LitVarStr var_98, " font-weight: bold;"
  loc_B3D0D3: PopAdLdVar
  loc_B3D0D4: ILdPr
  loc_B3D0D7: LateMemLdVar
  loc_B3D0DC: LdPrVar
  loc_B3D0DE: LateMemCall
  loc_B3D0E4: FFree1Var var_C8 = ""
  loc_B3D0E7: LitVarStr var_98, "}"
  loc_B3D0EC: PopAdLdVar
  loc_B3D0ED: ILdPr
  loc_B3D0F0: LateMemLdVar
  loc_B3D0F5: LdPrVar
  loc_B3D0F7: LateMemCall
  loc_B3D0FD: FFree1Var var_C8 = ""
  loc_B3D100: LitVarStr var_98, ".Titulo2 {"
  loc_B3D105: PopAdLdVar
  loc_B3D106: ILdPr
  loc_B3D109: LateMemLdVar
  loc_B3D10E: LdPrVar
  loc_B3D110: LateMemCall
  loc_B3D116: FFree1Var var_C8 = ""
  loc_B3D119: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B3D11E: PopAdLdVar
  loc_B3D11F: ILdPr
  loc_B3D122: LateMemLdVar
  loc_B3D127: LdPrVar
  loc_B3D129: LateMemCall
  loc_B3D12F: FFree1Var var_C8 = ""
  loc_B3D132: LitVarStr var_98, " font-size: 14px;"
  loc_B3D137: PopAdLdVar
  loc_B3D138: ILdPr
  loc_B3D13B: LateMemLdVar
  loc_B3D140: LdPrVar
  loc_B3D142: LateMemCall
  loc_B3D148: FFree1Var var_C8 = ""
  loc_B3D14B: LitVarStr var_98, " font-weight: bold;"
  loc_B3D150: PopAdLdVar
  loc_B3D151: ILdPr
  loc_B3D154: LateMemLdVar
  loc_B3D159: LdPrVar
  loc_B3D15B: LateMemCall
  loc_B3D161: FFree1Var var_C8 = ""
  loc_B3D164: LitVarStr var_98, "}"
  loc_B3D169: PopAdLdVar
  loc_B3D16A: ILdPr
  loc_B3D16D: LateMemLdVar
  loc_B3D172: LdPrVar
  loc_B3D174: LateMemCall
  loc_B3D17A: FFree1Var var_C8 = ""
  loc_B3D17D: LitVarStr var_98, ".Normal {"
  loc_B3D182: PopAdLdVar
  loc_B3D183: ILdPr
  loc_B3D186: LateMemLdVar
  loc_B3D18B: LdPrVar
  loc_B3D18D: LateMemCall
  loc_B3D193: FFree1Var var_C8 = ""
  loc_B3D196: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B3D19B: PopAdLdVar
  loc_B3D19C: ILdPr
  loc_B3D19F: LateMemLdVar
  loc_B3D1A4: LdPrVar
  loc_B3D1A6: LateMemCall
  loc_B3D1AC: FFree1Var var_C8 = ""
  loc_B3D1AF: LitVarStr var_98, " font-size: 12px;"
  loc_B3D1B4: PopAdLdVar
  loc_B3D1B5: ILdPr
  loc_B3D1B8: LateMemLdVar
  loc_B3D1BD: LdPrVar
  loc_B3D1BF: LateMemCall
  loc_B3D1C5: FFree1Var var_C8 = ""
  loc_B3D1C8: LitVarStr var_98, " font-style: normal;"
  loc_B3D1CD: PopAdLdVar
  loc_B3D1CE: ILdPr
  loc_B3D1D1: LateMemLdVar
  loc_B3D1D6: LdPrVar
  loc_B3D1D8: LateMemCall
  loc_B3D1DE: FFree1Var var_C8 = ""
  loc_B3D1E1: LitVarStr var_98, " font-weight: normal;"
  loc_B3D1E6: PopAdLdVar
  loc_B3D1E7: ILdPr
  loc_B3D1EA: LateMemLdVar
  loc_B3D1EF: LdPrVar
  loc_B3D1F1: LateMemCall
  loc_B3D1F7: FFree1Var var_C8 = ""
  loc_B3D1FA: LitVarStr var_98, " font-variant: normal;"
  loc_B3D1FF: PopAdLdVar
  loc_B3D200: ILdPr
  loc_B3D203: LateMemLdVar
  loc_B3D208: LdPrVar
  loc_B3D20A: LateMemCall
  loc_B3D210: FFree1Var var_C8 = ""
  loc_B3D213: LitVarStr var_98, "}"
  loc_B3D218: PopAdLdVar
  loc_B3D219: ILdPr
  loc_B3D21C: LateMemLdVar
  loc_B3D221: LdPrVar
  loc_B3D223: LateMemCall
  loc_B3D229: FFree1Var var_C8 = ""
  loc_B3D22C: LitVarStr var_98, ".Encabezado {"
  loc_B3D231: PopAdLdVar
  loc_B3D232: ILdPr
  loc_B3D235: LateMemLdVar
  loc_B3D23A: LdPrVar
  loc_B3D23C: LateMemCall
  loc_B3D242: FFree1Var var_C8 = ""
  loc_B3D245: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_B3D24A: PopAdLdVar
  loc_B3D24B: ILdPr
  loc_B3D24E: LateMemLdVar
  loc_B3D253: LdPrVar
  loc_B3D255: LateMemCall
  loc_B3D25B: FFree1Var var_C8 = ""
  loc_B3D25E: LitVarStr var_98, " font-size: 11px;"
  loc_B3D263: PopAdLdVar
  loc_B3D264: ILdPr
  loc_B3D267: LateMemLdVar
  loc_B3D26C: LdPrVar
  loc_B3D26E: LateMemCall
  loc_B3D274: FFree1Var var_C8 = ""
  loc_B3D277: LitVarStr var_98, " font-weight: bold;"
  loc_B3D27C: PopAdLdVar
  loc_B3D27D: ILdPr
  loc_B3D280: LateMemLdVar
  loc_B3D285: LdPrVar
  loc_B3D287: LateMemCall
  loc_B3D28D: FFree1Var var_C8 = ""
  loc_B3D290: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_B3D295: PopAdLdVar
  loc_B3D296: ILdPr
  loc_B3D299: LateMemLdVar
  loc_B3D29E: LdPrVar
  loc_B3D2A0: LateMemCall
  loc_B3D2A6: FFree1Var var_C8 = ""
  loc_B3D2A9: LitVarStr var_98, " vertical-align: middle;"
  loc_B3D2AE: PopAdLdVar
  loc_B3D2AF: ILdPr
  loc_B3D2B2: LateMemLdVar
  loc_B3D2B7: LdPrVar
  loc_B3D2B9: LateMemCall
  loc_B3D2BF: FFree1Var var_C8 = ""
  loc_B3D2C2: LitVarStr var_98, " text-align:center;"
  loc_B3D2C7: PopAdLdVar
  loc_B3D2C8: ILdPr
  loc_B3D2CB: LateMemLdVar
  loc_B3D2D0: LdPrVar
  loc_B3D2D2: LateMemCall
  loc_B3D2D8: FFree1Var var_C8 = ""
  loc_B3D2DB: LitVarStr var_98, "}"
  loc_B3D2E0: PopAdLdVar
  loc_B3D2E1: ILdPr
  loc_B3D2E4: LateMemLdVar
  loc_B3D2E9: LdPrVar
  loc_B3D2EB: LateMemCall
  loc_B3D2F1: FFree1Var var_C8 = ""
  loc_B3D2F4: LitVarStr var_98, ".EncabezadoLeft {"
  loc_B3D2F9: PopAdLdVar
  loc_B3D2FA: ILdPr
  loc_B3D2FD: LateMemLdVar
  loc_B3D302: LdPrVar
  loc_B3D304: LateMemCall
  loc_B3D30A: FFree1Var var_C8 = ""
  loc_B3D30D: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_B3D312: PopAdLdVar
  loc_B3D313: ILdPr
  loc_B3D316: LateMemLdVar
  loc_B3D31B: LdPrVar
  loc_B3D31D: LateMemCall
  loc_B3D323: FFree1Var var_C8 = ""
  loc_B3D326: LitVarStr var_98, " font-size: 11px;"
  loc_B3D32B: PopAdLdVar
  loc_B3D32C: ILdPr
  loc_B3D32F: LateMemLdVar
  loc_B3D334: LdPrVar
  loc_B3D336: LateMemCall
  loc_B3D33C: FFree1Var var_C8 = ""
  loc_B3D33F: LitVarStr var_98, " font-weight: bold;"
  loc_B3D344: PopAdLdVar
  loc_B3D345: ILdPr
  loc_B3D348: LateMemLdVar
  loc_B3D34D: LdPrVar
  loc_B3D34F: LateMemCall
  loc_B3D355: FFree1Var var_C8 = ""
  loc_B3D358: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_B3D35D: PopAdLdVar
  loc_B3D35E: ILdPr
  loc_B3D361: LateMemLdVar
  loc_B3D366: LdPrVar
  loc_B3D368: LateMemCall
  loc_B3D36E: FFree1Var var_C8 = ""
  loc_B3D371: LitVarStr var_98, " vertical-align: middle;"
  loc_B3D376: PopAdLdVar
  loc_B3D377: ILdPr
  loc_B3D37A: LateMemLdVar
  loc_B3D37F: LdPrVar
  loc_B3D381: LateMemCall
  loc_B3D387: FFree1Var var_C8 = ""
  loc_B3D38A: LitVarStr var_98, " text-align:left;"
  loc_B3D38F: PopAdLdVar
  loc_B3D390: ILdPr
  loc_B3D393: LateMemLdVar
  loc_B3D398: LdPrVar
  loc_B3D39A: LateMemCall
  loc_B3D3A0: FFree1Var var_C8 = ""
  loc_B3D3A3: LitVarStr var_98, "}"
  loc_B3D3A8: PopAdLdVar
  loc_B3D3A9: ILdPr
  loc_B3D3AC: LateMemLdVar
  loc_B3D3B1: LdPrVar
  loc_B3D3B3: LateMemCall
  loc_B3D3B9: FFree1Var var_C8 = ""
  loc_B3D3BC: LitVarStr var_98, ".LineaDato {"
  loc_B3D3C1: PopAdLdVar
  loc_B3D3C2: ILdPr
  loc_B3D3C5: LateMemLdVar
  loc_B3D3CA: LdPrVar
  loc_B3D3CC: LateMemCall
  loc_B3D3D2: FFree1Var var_C8 = ""
  loc_B3D3D5: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_B3D3DA: PopAdLdVar
  loc_B3D3DB: ILdPr
  loc_B3D3DE: LateMemLdVar
  loc_B3D3E3: LdPrVar
  loc_B3D3E5: LateMemCall
  loc_B3D3EB: FFree1Var var_C8 = ""
  loc_B3D3EE: LitVarStr var_98, " font-size: 11px;"
  loc_B3D3F3: PopAdLdVar
  loc_B3D3F4: ILdPr
  loc_B3D3F7: LateMemLdVar
  loc_B3D3FC: LdPrVar
  loc_B3D3FE: LateMemCall
  loc_B3D404: FFree1Var var_C8 = ""
  loc_B3D407: LitVarStr var_98, " vertical-align: top;"
  loc_B3D40C: PopAdLdVar
  loc_B3D40D: ILdPr
  loc_B3D410: LateMemLdVar
  loc_B3D415: LdPrVar
  loc_B3D417: LateMemCall
  loc_B3D41D: FFree1Var var_C8 = ""
  loc_B3D420: LitVarStr var_98, "}"
  loc_B3D425: PopAdLdVar
  loc_B3D426: ILdPr
  loc_B3D429: LateMemLdVar
  loc_B3D42E: LdPrVar
  loc_B3D430: LateMemCall
  loc_B3D436: FFree1Var var_C8 = ""
  loc_B3D439: LitVarStr var_98, ".LDCen {"
  loc_B3D43E: PopAdLdVar
  loc_B3D43F: ILdPr
  loc_B3D442: LateMemLdVar
  loc_B3D447: LdPrVar
  loc_B3D449: LateMemCall
  loc_B3D44F: FFree1Var var_C8 = ""
  loc_B3D452: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_B3D457: PopAdLdVar
  loc_B3D458: ILdPr
  loc_B3D45B: LateMemLdVar
  loc_B3D460: LdPrVar
  loc_B3D462: LateMemCall
  loc_B3D468: FFree1Var var_C8 = ""
  loc_B3D46B: LitVarStr var_98, " font-size: 10px;"
  loc_B3D470: PopAdLdVar
  loc_B3D471: ILdPr
  loc_B3D474: LateMemLdVar
  loc_B3D479: LdPrVar
  loc_B3D47B: LateMemCall
  loc_B3D481: FFree1Var var_C8 = ""
  loc_B3D484: LitVarStr var_98, " vertical-align: top;"
  loc_B3D489: PopAdLdVar
  loc_B3D48A: ILdPr
  loc_B3D48D: LateMemLdVar
  loc_B3D492: LdPrVar
  loc_B3D494: LateMemCall
  loc_B3D49A: FFree1Var var_C8 = ""
  loc_B3D49D: LitVarStr var_98, " text-align:center;"
  loc_B3D4A2: PopAdLdVar
  loc_B3D4A3: ILdPr
  loc_B3D4A6: LateMemLdVar
  loc_B3D4AB: LdPrVar
  loc_B3D4AD: LateMemCall
  loc_B3D4B3: FFree1Var var_C8 = ""
  loc_B3D4B6: LitVarStr var_98, "}"
  loc_B3D4BB: PopAdLdVar
  loc_B3D4BC: ILdPr
  loc_B3D4BF: LateMemLdVar
  loc_B3D4C4: LdPrVar
  loc_B3D4C6: LateMemCall
  loc_B3D4CC: FFree1Var var_C8 = ""
  loc_B3D4CF: LitVarStr var_98, ".LDIzq {"
  loc_B3D4D4: PopAdLdVar
  loc_B3D4D5: ILdPr
  loc_B3D4D8: LateMemLdVar
  loc_B3D4DD: LdPrVar
  loc_B3D4DF: LateMemCall
  loc_B3D4E5: FFree1Var var_C8 = ""
  loc_B3D4E8: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_B3D4ED: PopAdLdVar
  loc_B3D4EE: ILdPr
  loc_B3D4F1: LateMemLdVar
  loc_B3D4F6: LdPrVar
  loc_B3D4F8: LateMemCall
  loc_B3D4FE: FFree1Var var_C8 = ""
  loc_B3D501: LitVarStr var_98, " font-size: 10px;"
  loc_B3D506: PopAdLdVar
  loc_B3D507: ILdPr
  loc_B3D50A: LateMemLdVar
  loc_B3D50F: LdPrVar
  loc_B3D511: LateMemCall
  loc_B3D517: FFree1Var var_C8 = ""
  loc_B3D51A: LitVarStr var_98, " vertical-align: top;"
  loc_B3D51F: PopAdLdVar
  loc_B3D520: ILdPr
  loc_B3D523: LateMemLdVar
  loc_B3D528: LdPrVar
  loc_B3D52A: LateMemCall
  loc_B3D530: FFree1Var var_C8 = ""
  loc_B3D533: LitVarStr var_98, " text-align:left;"
  loc_B3D538: PopAdLdVar
  loc_B3D539: ILdPr
  loc_B3D53C: LateMemLdVar
  loc_B3D541: LdPrVar
  loc_B3D543: LateMemCall
  loc_B3D549: FFree1Var var_C8 = ""
  loc_B3D54C: LitVarStr var_98, "}"
  loc_B3D551: PopAdLdVar
  loc_B3D552: ILdPr
  loc_B3D555: LateMemLdVar
  loc_B3D55A: LdPrVar
  loc_B3D55C: LateMemCall
  loc_B3D562: FFree1Var var_C8 = ""
  loc_B3D565: LitVarStr var_98, ".LDDer {"
  loc_B3D56A: PopAdLdVar
  loc_B3D56B: ILdPr
  loc_B3D56E: LateMemLdVar
  loc_B3D573: LdPrVar
  loc_B3D575: LateMemCall
  loc_B3D57B: FFree1Var var_C8 = ""
  loc_B3D57E: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_B3D583: PopAdLdVar
  loc_B3D584: ILdPr
  loc_B3D587: LateMemLdVar
  loc_B3D58C: LdPrVar
  loc_B3D58E: LateMemCall
  loc_B3D594: FFree1Var var_C8 = ""
  loc_B3D597: LitVarStr var_98, " font-size: 10px;"
  loc_B3D59C: PopAdLdVar
  loc_B3D59D: ILdPr
  loc_B3D5A0: LateMemLdVar
  loc_B3D5A5: LdPrVar
  loc_B3D5A7: LateMemCall
  loc_B3D5AD: FFree1Var var_C8 = ""
  loc_B3D5B0: LitVarStr var_98, " vertical-align: top;"
  loc_B3D5B5: PopAdLdVar
  loc_B3D5B6: ILdPr
  loc_B3D5B9: LateMemLdVar
  loc_B3D5BE: LdPrVar
  loc_B3D5C0: LateMemCall
  loc_B3D5C6: FFree1Var var_C8 = ""
  loc_B3D5C9: LitVarStr var_98, " text-align:right;"
  loc_B3D5CE: PopAdLdVar
  loc_B3D5CF: ILdPr
  loc_B3D5D2: LateMemLdVar
  loc_B3D5D7: LdPrVar
  loc_B3D5D9: LateMemCall
  loc_B3D5DF: FFree1Var var_C8 = ""
  loc_B3D5E2: LitVarStr var_98, "}"
  loc_B3D5E7: PopAdLdVar
  loc_B3D5E8: ILdPr
  loc_B3D5EB: LateMemLdVar
  loc_B3D5F0: LdPrVar
  loc_B3D5F2: LateMemCall
  loc_B3D5F8: FFree1Var var_C8 = ""
  loc_B3D5FB: LitVarStr var_98, ".SubTotales {"
  loc_B3D600: PopAdLdVar
  loc_B3D601: ILdPr
  loc_B3D604: LateMemLdVar
  loc_B3D609: LdPrVar
  loc_B3D60B: LateMemCall
  loc_B3D611: FFree1Var var_C8 = ""
  loc_B3D614: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_B3D619: PopAdLdVar
  loc_B3D61A: ILdPr
  loc_B3D61D: LateMemLdVar
  loc_B3D622: LdPrVar
  loc_B3D624: LateMemCall
  loc_B3D62A: FFree1Var var_C8 = ""
  loc_B3D62D: LitVarStr var_98, " font-size: 10px;"
  loc_B3D632: PopAdLdVar
  loc_B3D633: ILdPr
  loc_B3D636: LateMemLdVar
  loc_B3D63B: LdPrVar
  loc_B3D63D: LateMemCall
  loc_B3D643: FFree1Var var_C8 = ""
  loc_B3D646: LitVarStr var_98, " font-weight: bold;"
  loc_B3D64B: PopAdLdVar
  loc_B3D64C: ILdPr
  loc_B3D64F: LateMemLdVar
  loc_B3D654: LdPrVar
  loc_B3D656: LateMemCall
  loc_B3D65C: FFree1Var var_C8 = ""
  loc_B3D65F: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_B3D664: PopAdLdVar
  loc_B3D665: ILdPr
  loc_B3D668: LateMemLdVar
  loc_B3D66D: LdPrVar
  loc_B3D66F: LateMemCall
  loc_B3D675: FFree1Var var_C8 = ""
  loc_B3D678: LitVarStr var_98, "}"
  loc_B3D67D: PopAdLdVar
  loc_B3D67E: ILdPr
  loc_B3D681: LateMemLdVar
  loc_B3D686: LdPrVar
  loc_B3D688: LateMemCall
  loc_B3D68E: FFree1Var var_C8 = ""
  loc_B3D691: LitVarStr var_98, ".Totales {"
  loc_B3D696: PopAdLdVar
  loc_B3D697: ILdPr
  loc_B3D69A: LateMemLdVar
  loc_B3D69F: LdPrVar
  loc_B3D6A1: LateMemCall
  loc_B3D6A7: FFree1Var var_C8 = ""
  loc_B3D6AA: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_B3D6AF: PopAdLdVar
  loc_B3D6B0: ILdPr
  loc_B3D6B3: LateMemLdVar
  loc_B3D6B8: LdPrVar
  loc_B3D6BA: LateMemCall
  loc_B3D6C0: FFree1Var var_C8 = ""
  loc_B3D6C3: LitVarStr var_98, " font-size: 11px;"
  loc_B3D6C8: PopAdLdVar
  loc_B3D6C9: ILdPr
  loc_B3D6CC: LateMemLdVar
  loc_B3D6D1: LdPrVar
  loc_B3D6D3: LateMemCall
  loc_B3D6D9: FFree1Var var_C8 = ""
  loc_B3D6DC: LitVarStr var_98, " font-weight: bold;"
  loc_B3D6E1: PopAdLdVar
  loc_B3D6E2: ILdPr
  loc_B3D6E5: LateMemLdVar
  loc_B3D6EA: LdPrVar
  loc_B3D6EC: LateMemCall
  loc_B3D6F2: FFree1Var var_C8 = ""
  loc_B3D6F5: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_B3D6FA: PopAdLdVar
  loc_B3D6FB: ILdPr
  loc_B3D6FE: LateMemLdVar
  loc_B3D703: LdPrVar
  loc_B3D705: LateMemCall
  loc_B3D70B: FFree1Var var_C8 = ""
  loc_B3D70E: LitVarStr var_98, "}"
  loc_B3D713: PopAdLdVar
  loc_B3D714: ILdPr
  loc_B3D717: LateMemLdVar
  loc_B3D71C: LdPrVar
  loc_B3D71E: LateMemCall
  loc_B3D724: FFree1Var var_C8 = ""
  loc_B3D727: LitVarStr var_98, ".Totales2 {"
  loc_B3D72C: PopAdLdVar
  loc_B3D72D: ILdPr
  loc_B3D730: LateMemLdVar
  loc_B3D735: LdPrVar
  loc_B3D737: LateMemCall
  loc_B3D73D: FFree1Var var_C8 = ""
  loc_B3D740: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_B3D745: PopAdLdVar
  loc_B3D746: ILdPr
  loc_B3D749: LateMemLdVar
  loc_B3D74E: LdPrVar
  loc_B3D750: LateMemCall
  loc_B3D756: FFree1Var var_C8 = ""
  loc_B3D759: LitVarStr var_98, " font-size: 10px;"
  loc_B3D75E: PopAdLdVar
  loc_B3D75F: ILdPr
  loc_B3D762: LateMemLdVar
  loc_B3D767: LdPrVar
  loc_B3D769: LateMemCall
  loc_B3D76F: FFree1Var var_C8 = ""
  loc_B3D772: LitVarStr var_98, " font-weight: bold;"
  loc_B3D777: PopAdLdVar
  loc_B3D778: ILdPr
  loc_B3D77B: LateMemLdVar
  loc_B3D780: LdPrVar
  loc_B3D782: LateMemCall
  loc_B3D788: FFree1Var var_C8 = ""
  loc_B3D78B: LitVarStr var_98, " background-color: #9BCFEC;"
  loc_B3D790: PopAdLdVar
  loc_B3D791: ILdPr
  loc_B3D794: LateMemLdVar
  loc_B3D799: LdPrVar
  loc_B3D79B: LateMemCall
  loc_B3D7A1: FFree1Var var_C8 = ""
  loc_B3D7A4: LitVarStr var_98, "}"
  loc_B3D7A9: PopAdLdVar
  loc_B3D7AA: ILdPr
  loc_B3D7AD: LateMemLdVar
  loc_B3D7B2: LdPrVar
  loc_B3D7B4: LateMemCall
  loc_B3D7BA: FFree1Var var_C8 = ""
  loc_B3D7BD: LitVarStr var_98, ".Totales3 {"
  loc_B3D7C2: PopAdLdVar
  loc_B3D7C3: ILdPr
  loc_B3D7C6: LateMemLdVar
  loc_B3D7CB: LdPrVar
  loc_B3D7CD: LateMemCall
  loc_B3D7D3: FFree1Var var_C8 = ""
  loc_B3D7D6: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_B3D7DB: PopAdLdVar
  loc_B3D7DC: ILdPr
  loc_B3D7DF: LateMemLdVar
  loc_B3D7E4: LdPrVar
  loc_B3D7E6: LateMemCall
  loc_B3D7EC: FFree1Var var_C8 = ""
  loc_B3D7EF: LitVarStr var_98, " font-size: 10px;"
  loc_B3D7F4: PopAdLdVar
  loc_B3D7F5: ILdPr
  loc_B3D7F8: LateMemLdVar
  loc_B3D7FD: LdPrVar
  loc_B3D7FF: LateMemCall
  loc_B3D805: FFree1Var var_C8 = ""
  loc_B3D808: LitVarStr var_98, " font-weight: bold;"
  loc_B3D80D: PopAdLdVar
  loc_B3D80E: ILdPr
  loc_B3D811: LateMemLdVar
  loc_B3D816: LdPrVar
  loc_B3D818: LateMemCall
  loc_B3D81E: FFree1Var var_C8 = ""
  loc_B3D821: LitVarStr var_98, " background-color: #C1E2F4;"
  loc_B3D826: PopAdLdVar
  loc_B3D827: ILdPr
  loc_B3D82A: LateMemLdVar
  loc_B3D82F: LdPrVar
  loc_B3D831: LateMemCall
  loc_B3D837: FFree1Var var_C8 = ""
  loc_B3D83A: LitVarStr var_98, "}"
  loc_B3D83F: PopAdLdVar
  loc_B3D840: ILdPr
  loc_B3D843: LateMemLdVar
  loc_B3D848: LdPrVar
  loc_B3D84A: LateMemCall
  loc_B3D850: FFree1Var var_C8 = ""
  loc_B3D853: LitVarStr var_98, ".Totales4 {"
  loc_B3D858: PopAdLdVar
  loc_B3D859: ILdPr
  loc_B3D85C: LateMemLdVar
  loc_B3D861: LdPrVar
  loc_B3D863: LateMemCall
  loc_B3D869: FFree1Var var_C8 = ""
  loc_B3D86C: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_B3D871: PopAdLdVar
  loc_B3D872: ILdPr
  loc_B3D875: LateMemLdVar
  loc_B3D87A: LdPrVar
  loc_B3D87C: LateMemCall
  loc_B3D882: FFree1Var var_C8 = ""
  loc_B3D885: LitVarStr var_98, " font-size: 10px;"
  loc_B3D88A: PopAdLdVar
  loc_B3D88B: ILdPr
  loc_B3D88E: LateMemLdVar
  loc_B3D893: LdPrVar
  loc_B3D895: LateMemCall
  loc_B3D89B: FFree1Var var_C8 = ""
  loc_B3D89E: LitVarStr var_98, " font-weight: bold;"
  loc_B3D8A3: PopAdLdVar
  loc_B3D8A4: ILdPr
  loc_B3D8A7: LateMemLdVar
  loc_B3D8AC: LdPrVar
  loc_B3D8AE: LateMemCall
  loc_B3D8B4: FFree1Var var_C8 = ""
  loc_B3D8B7: LitVarStr var_98, " background-color: #DEEFFA;"
  loc_B3D8BC: PopAdLdVar
  loc_B3D8BD: ILdPr
  loc_B3D8C0: LateMemLdVar
  loc_B3D8C5: LdPrVar
  loc_B3D8C7: LateMemCall
  loc_B3D8CD: FFree1Var var_C8 = ""
  loc_B3D8D0: LitVarStr var_98, "}"
  loc_B3D8D5: PopAdLdVar
  loc_B3D8D6: ILdPr
  loc_B3D8D9: LateMemLdVar
  loc_B3D8DE: LdPrVar
  loc_B3D8E0: LateMemCall
  loc_B3D8E6: FFree1Var var_C8 = ""
  loc_B3D8E9: LitVarStr var_98, ".Totales5 {"
  loc_B3D8EE: PopAdLdVar
  loc_B3D8EF: ILdPr
  loc_B3D8F2: LateMemLdVar
  loc_B3D8F7: LdPrVar
  loc_B3D8F9: LateMemCall
  loc_B3D8FF: FFree1Var var_C8 = ""
  loc_B3D902: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_B3D907: PopAdLdVar
  loc_B3D908: ILdPr
  loc_B3D90B: LateMemLdVar
  loc_B3D910: LdPrVar
  loc_B3D912: LateMemCall
  loc_B3D918: FFree1Var var_C8 = ""
  loc_B3D91B: LitVarStr var_98, " font-size: 10px;"
  loc_B3D920: PopAdLdVar
  loc_B3D921: ILdPr
  loc_B3D924: LateMemLdVar
  loc_B3D929: LdPrVar
  loc_B3D92B: LateMemCall
  loc_B3D931: FFree1Var var_C8 = ""
  loc_B3D934: LitVarStr var_98, " font-weight: bold;"
  loc_B3D939: PopAdLdVar
  loc_B3D93A: ILdPr
  loc_B3D93D: LateMemLdVar
  loc_B3D942: LdPrVar
  loc_B3D944: LateMemCall
  loc_B3D94A: FFree1Var var_C8 = ""
  loc_B3D94D: LitVarStr var_98, " background-color: #EDF5FC;"
  loc_B3D952: PopAdLdVar
  loc_B3D953: ILdPr
  loc_B3D956: LateMemLdVar
  loc_B3D95B: LdPrVar
  loc_B3D95D: LateMemCall
  loc_B3D963: FFree1Var var_C8 = ""
  loc_B3D966: LitVarStr var_98, "}"
  loc_B3D96B: PopAdLdVar
  loc_B3D96C: ILdPr
  loc_B3D96F: LateMemLdVar
  loc_B3D974: LdPrVar
  loc_B3D976: LateMemCall
  loc_B3D97C: FFree1Var var_C8 = ""
  loc_B3D97F: LitVarStr var_98, ".Firmas {"
  loc_B3D984: PopAdLdVar
  loc_B3D985: ILdPr
  loc_B3D988: LateMemLdVar
  loc_B3D98D: LdPrVar
  loc_B3D98F: LateMemCall
  loc_B3D995: FFree1Var var_C8 = ""
  loc_B3D998: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_B3D99D: PopAdLdVar
  loc_B3D99E: ILdPr
  loc_B3D9A1: LateMemLdVar
  loc_B3D9A6: LdPrVar
  loc_B3D9A8: LateMemCall
  loc_B3D9AE: FFree1Var var_C8 = ""
  loc_B3D9B1: LitVarStr var_98, " font-size: 10px;"
  loc_B3D9B6: PopAdLdVar
  loc_B3D9B7: ILdPr
  loc_B3D9BA: LateMemLdVar
  loc_B3D9BF: LdPrVar
  loc_B3D9C1: LateMemCall
  loc_B3D9C7: FFree1Var var_C8 = ""
  loc_B3D9CA: LitVarStr var_98, " font-weight: normal;"
  loc_B3D9CF: PopAdLdVar
  loc_B3D9D0: ILdPr
  loc_B3D9D3: LateMemLdVar
  loc_B3D9D8: LdPrVar
  loc_B3D9DA: LateMemCall
  loc_B3D9E0: FFree1Var var_C8 = ""
  loc_B3D9E3: LitVarStr var_98, "}"
  loc_B3D9E8: PopAdLdVar
  loc_B3D9E9: ILdPr
  loc_B3D9EC: LateMemLdVar
  loc_B3D9F1: LdPrVar
  loc_B3D9F3: LateMemCall
  loc_B3D9F9: FFree1Var var_C8 = ""
  loc_B3D9FC: LitVarStr var_98, ".Proveedor {"
  loc_B3DA01: PopAdLdVar
  loc_B3DA02: ILdPr
  loc_B3DA05: LateMemLdVar
  loc_B3DA0A: LdPrVar
  loc_B3DA0C: LateMemCall
  loc_B3DA12: FFree1Var var_C8 = ""
  loc_B3DA15: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_B3DA1A: PopAdLdVar
  loc_B3DA1B: ILdPr
  loc_B3DA1E: LateMemLdVar
  loc_B3DA23: LdPrVar
  loc_B3DA25: LateMemCall
  loc_B3DA2B: FFree1Var var_C8 = ""
  loc_B3DA2E: LitVarStr var_98, " font-size: 14px;"
  loc_B3DA33: PopAdLdVar
  loc_B3DA34: ILdPr
  loc_B3DA37: LateMemLdVar
  loc_B3DA3C: LdPrVar
  loc_B3DA3E: LateMemCall
  loc_B3DA44: FFree1Var var_C8 = ""
  loc_B3DA47: LitVarStr var_98, "}"
  loc_B3DA4C: PopAdLdVar
  loc_B3DA4D: ILdPr
  loc_B3DA50: LateMemLdVar
  loc_B3DA55: LdPrVar
  loc_B3DA57: LateMemCall
  loc_B3DA5D: FFree1Var var_C8 = ""
  loc_B3DA60: ILdRf var_88
  loc_B3DA63: LitStr vbNullString
  loc_B3DA66: NeStr
  loc_B3DA68: BranchF loc_B3DA85
  loc_B3DA6B: FLdRfVar var_88
  loc_B3DA6E: CDargRef
  loc_B3DA72: ILdPr
  loc_B3DA75: LateMemLdVar
  loc_B3DA7A: LdPrVar
  loc_B3DA7C: LateMemCall
  loc_B3DA82: FFree1Var var_C8 = ""
  loc_B3DA85: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_B3DA8A: PopAdLdVar
  loc_B3DA8B: ILdPr
  loc_B3DA8E: LateMemLdVar
  loc_B3DA93: LdPrVar
  loc_B3DA95: LateMemCall
  loc_B3DA9B: FFree1Var var_C8 = ""
  loc_B3DA9E: LitVarStr var_98, "</style>"
  loc_B3DAA3: PopAdLdVar
  loc_B3DAA4: ILdPr
  loc_B3DAA7: LateMemLdVar
  loc_B3DAAC: LdPrVar
  loc_B3DAAE: LateMemCall
  loc_B3DAB4: FFree1Var var_C8 = ""
  loc_B3DAB7: ExitProc
End Function
