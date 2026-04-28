
Private Function Proc_270_0_A1A53C(arg_C) 'A1A53C
  'Data Table: 4C25A4
  loc_A1A4F8: ILdRf arg_C
  loc_A1A4FB: FStStrCopy var_88
  loc_A1A4FE: LitNothing
  loc_A1A500: CastAd
  loc_A1A503: FMemStAdFunc arg_8(0)
  loc_A1A509: New Recordset
  loc_A1A50D: FMemStAdFunc arg_8(0)
  loc_A1A513: LitI4 -1
  loc_A1A518: LitI4 3
  loc_A1A51D: LitI4 3
  loc_A1A522: ImpAdLdI4 MemVar_D9301C
  loc_A1A525: CVarAd
  loc_A1A529: PopAdLdVar
  loc_A1A52A: ILdRf var_88
  loc_A1A52D: CVarStr var_98
  loc_A1A530: PopAdLdVar
  loc_A1A531: FMemLdPr
  loc_A1A536: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A1A53B: ExitProc
End Function

Private Function Proc_270_1_A1A44C(arg_C) 'A1A44C
  'Data Table: 4C25A4
  loc_A1A408: ILdRf arg_C
  loc_A1A40B: FStStrCopy var_88
  loc_A1A40E: LitNothing
  loc_A1A410: CastAd
  loc_A1A413: FMemStAdFunc arg_8(4)
  loc_A1A419: New Recordset
  loc_A1A41D: FMemStAdFunc arg_8(4)
  loc_A1A423: LitI4 -1
  loc_A1A428: LitI4 3
  loc_A1A42D: LitI4 3
  loc_A1A432: ImpAdLdI4 MemVar_D9301C
  loc_A1A435: CVarAd
  loc_A1A439: PopAdLdVar
  loc_A1A43A: ILdRf var_88
  loc_A1A43D: CVarStr var_98
  loc_A1A440: PopAdLdVar
  loc_A1A441: FMemLdPr
  loc_A1A446: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A1A44B: ExitProc
End Function

Private Function Proc_270_2_A1A17C(arg_C) 'A1A17C
  'Data Table: 4C25A4
  loc_A1A138: ILdRf arg_C
  loc_A1A13B: FStStrCopy var_88
  loc_A1A13E: LitNothing
  loc_A1A140: CastAd
  loc_A1A143: FMemStAdFunc arg_8(8)
  loc_A1A149: New Recordset
  loc_A1A14D: FMemStAdFunc arg_8(8)
  loc_A1A153: LitI4 -1
  loc_A1A158: LitI4 3
  loc_A1A15D: LitI4 3
  loc_A1A162: ImpAdLdI4 MemVar_D93020
  loc_A1A165: CVarAd
  loc_A1A169: PopAdLdVar
  loc_A1A16A: ILdRf var_88
  loc_A1A16D: CVarStr var_98
  loc_A1A170: PopAdLdVar
  loc_A1A171: FMemLdPr
  loc_A1A176: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A1A17B: ExitProc
End Function

Private Function Proc_270_3_C29F5C(arg_C) 'C29F5C
  'Data Table: 4C25A4
  loc_C29464: ILdRf arg_C
  loc_C29467: FStStrCopy var_8C
  loc_C2946A: LitStr "SELECT usuario.*"
  loc_C2946D: LitStr ", IF(usuario.CucuPers=0 OR DetaPers IS NULL, '', DetaPers) DetaPers"
  loc_C29470: ConcatStr
  loc_C29471: FStStrNoPop var_90
  loc_C29474: LitStr " FROM infogov.usuario"
  loc_C29477: ConcatStr
  loc_C29478: FStStrNoPop var_94
  loc_C2947B: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = usuario.CucuPers"
  loc_C2947E: ConcatStr
  loc_C2947F: FStStrNoPop var_98
  loc_C29482: LitStr " WHERE usuario.CodiUsua = '"
  loc_C29485: ConcatStr
  loc_C29486: FStStrNoPop var_9C
  loc_C29489: ILdRf var_8C
  loc_C2948C: ConcatStr
  loc_C2948D: FStStrNoPop var_A0
  loc_C29490: LitStr "';"
  loc_C29493: ConcatStr
  loc_C29494: FStStrNoPop var_A4
  loc_C29497: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_C2949C: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_C294AB: FLdRfVar var_A8
  loc_C294AE: FMemLdPr
  loc_C294B3:  = Me.RecordCount
  loc_C294B8: ILdRf var_A8
  loc_C294BB: LitI4 0
  loc_C294C0: GtI4
  loc_C294C1: BranchF loc_C29DF5
  loc_C294C4: LitStr vbNullString
  loc_C294C7: ILdPr
  loc_C294CA: Call tblusuario.MsgErrorPut(from_stack_1v)
  loc_C294CF: FLdRfVar var_D0
  loc_C294D2: FLdRfVar var_C0
  loc_C294D5: LitVarStr var_BC, "CodiUsua"
  loc_C294DA: PopAdLdVar
  loc_C294DB: FLdRfVar var_AC
  loc_C294DE: FMemLdPr
  loc_C294E3:  = Me.Fields
  loc_C294E8: FLdPr var_AC
  loc_C294EB: from_stack_2 = Me.Item(from_stack_1)
  loc_C294F0: FLdPr var_C0
  loc_C294F3:  = Me.Value
  loc_C294F8: FLdRfVar var_D0
  loc_C294FB: CStrVarTmp
  loc_C294FC: FStStrNoPop var_90
  loc_C294FF: ILdPr
  loc_C29502: Call tblusuario.CodiUsuaPut(from_stack_1v)
  loc_C29507: FFree1Str var_90
  loc_C2950A: FFreeAd var_AC = ""
  loc_C29511: FFree1Var var_D0 = ""
  loc_C29514: FLdRfVar var_D0
  loc_C29517: FLdRfVar var_C0
  loc_C2951A: LitVarStr var_BC, "CucuPers"
  loc_C2951F: PopAdLdVar
  loc_C29520: FLdRfVar var_AC
  loc_C29523: FMemLdPr
  loc_C29528:  = Me.Fields
  loc_C2952D: FLdPr var_AC
  loc_C29530: from_stack_2 = Me.Item(from_stack_1)
  loc_C29535: FLdPr var_C0
  loc_C29538:  = Me.Value
  loc_C2953D: FLdRfVar var_D0
  loc_C29540: CStrVarTmp
  loc_C29541: FStStrNoPop var_90
  loc_C29544: ILdPr
  loc_C29547: Call tblusuario.CucuPersPut(from_stack_1v)
  loc_C2954C: FFree1Str var_90
  loc_C2954F: FFreeAd var_AC = ""
  loc_C29556: FFree1Var var_D0 = ""
  loc_C29559: FLdRfVar var_D0
  loc_C2955C: FLdRfVar var_C0
  loc_C2955F: LitVarStr var_BC, "DetaPers"
  loc_C29564: PopAdLdVar
  loc_C29565: FLdRfVar var_AC
  loc_C29568: FMemLdPr
  loc_C2956D:  = Me.Fields
  loc_C29572: FLdPr var_AC
  loc_C29575: from_stack_2 = Me.Item(from_stack_1)
  loc_C2957A: FLdPr var_C0
  loc_C2957D:  = Me.Value
  loc_C29582: FLdRfVar var_D0
  loc_C29585: CStrVarTmp
  loc_C29586: FStStrNoPop var_90
  loc_C29589: ILdPr
  loc_C2958C: Call tblusuario.DetaPersPut(from_stack_1v)
  loc_C29591: FFree1Str var_90
  loc_C29594: FFreeAd var_AC = ""
  loc_C2959B: FFree1Var var_D0 = ""
  loc_C2959E: FLdRfVar var_D0
  loc_C295A1: FLdRfVar var_C0
  loc_C295A4: LitVarStr var_BC, "ClavUsua"
  loc_C295A9: PopAdLdVar
  loc_C295AA: FLdRfVar var_AC
  loc_C295AD: FMemLdPr
  loc_C295B2:  = Me.Fields
  loc_C295B7: FLdPr var_AC
  loc_C295BA: from_stack_2 = Me.Item(from_stack_1)
  loc_C295BF: FLdPr var_C0
  loc_C295C2:  = Me.Value
  loc_C295C7: FLdRfVar var_D0
  loc_C295CA: CStrVarTmp
  loc_C295CB: FStStrNoPop var_90
  loc_C295CE: ILdPr
  loc_C295D1: Call tblusuario.ClavUsuaPut(from_stack_1v)
  loc_C295D6: FFree1Str var_90
  loc_C295D9: FFreeAd var_AC = ""
  loc_C295E0: FFree1Var var_D0 = ""
  loc_C295E3: FLdRfVar var_D0
  loc_C295E6: FLdRfVar var_C0
  loc_C295E9: LitVarStr var_BC, "FeveUsua"
  loc_C295EE: PopAdLdVar
  loc_C295EF: FLdRfVar var_AC
  loc_C295F2: FMemLdPr
  loc_C295F7:  = Me.Fields
  loc_C295FC: FLdPr var_AC
  loc_C295FF: from_stack_2 = Me.Item(from_stack_1)
  loc_C29604: FLdPr var_C0
  loc_C29607:  = Me.Value
  loc_C2960C: FLdRfVar var_108
  loc_C2960F: LitVarStr var_104, "FeveUsua"
  loc_C29614: PopAdLdVar
  loc_C29615: FLdRfVar var_F4
  loc_C29618: FMemLdPr
  loc_C2961D:  = Me.Fields
  loc_C29622: FLdPr var_F4
  loc_C29625: from_stack_2 = Me.Item(from_stack_1)
  loc_C2962A: LitVarStr var_138, vbNullString
  loc_C2962F: FStVarCopyObj var_148
  loc_C29632: FLdRfVar var_148
  loc_C29635: FLdZeroAd var_108
  loc_C29638: CVarAd
  loc_C2963C: FLdRfVar var_D0
  loc_C2963F: LitVarStr var_E0, vbNullString
  loc_C29644: HardType
  loc_C29645: NeVar var_F0
  loc_C29649: FStVar var_118
  loc_C2964D: FLdRfVar var_118
  loc_C29650: FLdRfVar var_158
  loc_C29653: ImpAdCallFPR4  = IIf(, , )
  loc_C29658: FLdRfVar var_158
  loc_C2965B: CStrVarVal var_90
  loc_C2965F: ILdPr
  loc_C29662: Call tblusuario.FeveUsuaPut(from_stack_1v)
  loc_C29667: FFree1Str var_90
  loc_C2966A: FFreeAd var_AC = "": var_C0 = ""
  loc_C29673: FFreeVar var_D0 = "": var_118 = "": var_128 = "": var_148 = ""
  loc_C29680: FLdRfVar var_D0
  loc_C29683: FLdRfVar var_C0
  loc_C29686: LitVarStr var_BC, "InhaUsua"
  loc_C2968B: PopAdLdVar
  loc_C2968C: FLdRfVar var_AC
  loc_C2968F: FMemLdPr
  loc_C29694:  = Me.Fields
  loc_C29699: FLdPr var_AC
  loc_C2969C: from_stack_2 = Me.Item(from_stack_1)
  loc_C296A1: FLdPr var_C0
  loc_C296A4:  = Me.Value
  loc_C296A9: FLdRfVar var_D0
  loc_C296AC: CStrVarTmp
  loc_C296AD: FStStrNoPop var_90
  loc_C296B0: ILdPr
  loc_C296B3: Call tblusuario.InhaUsuaPut(from_stack_1v)
  loc_C296B8: FFree1Str var_90
  loc_C296BB: FFreeAd var_AC = ""
  loc_C296C2: FFree1Var var_D0 = ""
  loc_C296C5: FLdRfVar var_D0
  loc_C296C8: FLdRfVar var_C0
  loc_C296CB: LitVarStr var_BC, "CodiEnre"
  loc_C296D0: PopAdLdVar
  loc_C296D1: FLdRfVar var_AC
  loc_C296D4: FMemLdPr
  loc_C296D9:  = Me.Fields
  loc_C296DE: FLdPr var_AC
  loc_C296E1: from_stack_2 = Me.Item(from_stack_1)
  loc_C296E6: FLdPr var_C0
  loc_C296E9:  = Me.Value
  loc_C296EE: FLdRfVar var_D0
  loc_C296F1: CStrVarTmp
  loc_C296F2: FStStrNoPop var_90
  loc_C296F5: ILdPr
  loc_C296F8: Call tblusuario.CodiEnrePut(from_stack_1v)
  loc_C296FD: FFree1Str var_90
  loc_C29700: FFreeAd var_AC = ""
  loc_C29707: FFree1Var var_D0 = ""
  loc_C2970A: FLdRfVar var_D0
  loc_C2970D: FLdRfVar var_C0
  loc_C29710: LitVarStr var_BC, "CodiOrga"
  loc_C29715: PopAdLdVar
  loc_C29716: FLdRfVar var_AC
  loc_C29719: FMemLdPr
  loc_C2971E:  = Me.Fields
  loc_C29723: FLdPr var_AC
  loc_C29726: from_stack_2 = Me.Item(from_stack_1)
  loc_C2972B: FLdPr var_C0
  loc_C2972E:  = Me.Value
  loc_C29733: FLdRfVar var_D0
  loc_C29736: CStrVarTmp
  loc_C29737: FStStrNoPop var_90
  loc_C2973A: ILdPr
  loc_C2973D: Call tblusuario.CodiOrgaPut(from_stack_1v)
  loc_C29742: FFree1Str var_90
  loc_C29745: FFreeAd var_AC = ""
  loc_C2974C: FFree1Var var_D0 = ""
  loc_C2974F: FLdRfVar var_D0
  loc_C29752: FLdRfVar var_C0
  loc_C29755: LitVarStr var_BC, "AcreUsua"
  loc_C2975A: PopAdLdVar
  loc_C2975B: FLdRfVar var_AC
  loc_C2975E: FMemLdPr
  loc_C29763:  = Me.Fields
  loc_C29768: FLdPr var_AC
  loc_C2976B: from_stack_2 = Me.Item(from_stack_1)
  loc_C29770: FLdPr var_C0
  loc_C29773:  = Me.Value
  loc_C29778: FLdRfVar var_D0
  loc_C2977B: CStrVarTmp
  loc_C2977C: FStStrNoPop var_90
  loc_C2977F: ILdPr
  loc_C29782: Call tblusuario.AcreUsuaPut(from_stack_1v)
  loc_C29787: FFree1Str var_90
  loc_C2978A: FFreeAd var_AC = ""
  loc_C29791: FFree1Var var_D0 = ""
  loc_C29794: FLdRfVar var_D0
  loc_C29797: FLdRfVar var_C0
  loc_C2979A: LitVarStr var_BC, "CargUsua"
  loc_C2979F: PopAdLdVar
  loc_C297A0: FLdRfVar var_AC
  loc_C297A3: FMemLdPr
  loc_C297A8:  = Me.Fields
  loc_C297AD: FLdPr var_AC
  loc_C297B0: from_stack_2 = Me.Item(from_stack_1)
  loc_C297B5: FLdPr var_C0
  loc_C297B8:  = Me.Value
  loc_C297BD: FLdRfVar var_D0
  loc_C297C0: CStrVarTmp
  loc_C297C1: FStStrNoPop var_90
  loc_C297C4: ILdPr
  loc_C297C7: Call tblusuario.CargUsuaPut(from_stack_1v)
  loc_C297CC: FFree1Str var_90
  loc_C297CF: FFreeAd var_AC = ""
  loc_C297D6: FFree1Var var_D0 = ""
  loc_C297D9: FLdRfVar var_D0
  loc_C297DC: FLdRfVar var_C0
  loc_C297DF: LitVarStr var_BC, "CoenUsua"
  loc_C297E4: PopAdLdVar
  loc_C297E5: FLdRfVar var_AC
  loc_C297E8: FMemLdPr
  loc_C297ED:  = Me.Fields
  loc_C297F2: FLdPr var_AC
  loc_C297F5: from_stack_2 = Me.Item(from_stack_1)
  loc_C297FA: FLdPr var_C0
  loc_C297FD:  = Me.Value
  loc_C29802: FLdRfVar var_D0
  loc_C29805: CStrVarTmp
  loc_C29806: FStStrNoPop var_90
  loc_C29809: ILdPr
  loc_C2980C: Call tblusuario.CoenUsuaPut(from_stack_1v)
  loc_C29811: FFree1Str var_90
  loc_C29814: FFreeAd var_AC = ""
  loc_C2981B: FFree1Var var_D0 = ""
  loc_C2981E: FLdRfVar var_D0
  loc_C29821: FLdRfVar var_C0
  loc_C29824: LitVarStr var_BC, "CosaUsua"
  loc_C29829: PopAdLdVar
  loc_C2982A: FLdRfVar var_AC
  loc_C2982D: FMemLdPr
  loc_C29832:  = Me.Fields
  loc_C29837: FLdPr var_AC
  loc_C2983A: from_stack_2 = Me.Item(from_stack_1)
  loc_C2983F: FLdPr var_C0
  loc_C29842:  = Me.Value
  loc_C29847: FLdRfVar var_D0
  loc_C2984A: CStrVarTmp
  loc_C2984B: FStStrNoPop var_90
  loc_C2984E: ILdPr
  loc_C29851: Call tblusuario.CosaUsuaPut(from_stack_1v)
  loc_C29856: FFree1Str var_90
  loc_C29859: FFreeAd var_AC = ""
  loc_C29860: FFree1Var var_D0 = ""
  loc_C29863: FLdRfVar var_D0
  loc_C29866: FLdRfVar var_C0
  loc_C29869: LitVarStr var_BC, "SemaUsua"
  loc_C2986E: PopAdLdVar
  loc_C2986F: FLdRfVar var_AC
  loc_C29872: FMemLdPr
  loc_C29877:  = Me.Fields
  loc_C2987C: FLdPr var_AC
  loc_C2987F: from_stack_2 = Me.Item(from_stack_1)
  loc_C29884: FLdPr var_C0
  loc_C29887:  = Me.Value
  loc_C2988C: FLdRfVar var_D0
  loc_C2988F: CStrVarTmp
  loc_C29890: FStStrNoPop var_90
  loc_C29893: ILdPr
  loc_C29896: Call tblusuario.SemaUsuaPut(from_stack_1v)
  loc_C2989B: FFree1Str var_90
  loc_C2989E: FFreeAd var_AC = ""
  loc_C298A5: FFree1Var var_D0 = ""
  loc_C298A8: FLdRfVar var_D0
  loc_C298AB: FLdRfVar var_C0
  loc_C298AE: LitVarStr var_BC, "PumaUsua"
  loc_C298B3: PopAdLdVar
  loc_C298B4: FLdRfVar var_AC
  loc_C298B7: FMemLdPr
  loc_C298BC:  = Me.Fields
  loc_C298C1: FLdPr var_AC
  loc_C298C4: from_stack_2 = Me.Item(from_stack_1)
  loc_C298C9: FLdPr var_C0
  loc_C298CC:  = Me.Value
  loc_C298D1: FLdRfVar var_D0
  loc_C298D4: CStrVarTmp
  loc_C298D5: FStStrNoPop var_90
  loc_C298D8: ILdPr
  loc_C298DB: Call tblusuario.PumaUsuaPut(from_stack_1v)
  loc_C298E0: FFree1Str var_90
  loc_C298E3: FFreeAd var_AC = ""
  loc_C298EA: FFree1Var var_D0 = ""
  loc_C298ED: FLdRfVar var_D0
  loc_C298F0: FLdRfVar var_C0
  loc_C298F3: LitVarStr var_BC, "UsmaUsua"
  loc_C298F8: PopAdLdVar
  loc_C298F9: FLdRfVar var_AC
  loc_C298FC: FMemLdPr
  loc_C29901:  = Me.Fields
  loc_C29906: FLdPr var_AC
  loc_C29909: from_stack_2 = Me.Item(from_stack_1)
  loc_C2990E: FLdPr var_C0
  loc_C29911:  = Me.Value
  loc_C29916: FLdRfVar var_D0
  loc_C29919: CStrVarTmp
  loc_C2991A: FStStrNoPop var_90
  loc_C2991D: ILdPr
  loc_C29920: Call tblusuario.UsmaUsuaPut(from_stack_1v)
  loc_C29925: FFree1Str var_90
  loc_C29928: FFreeAd var_AC = ""
  loc_C2992F: FFree1Var var_D0 = ""
  loc_C29932: FLdRfVar var_D0
  loc_C29935: FLdRfVar var_C0
  loc_C29938: LitVarStr var_BC, "ComaUsua"
  loc_C2993D: PopAdLdVar
  loc_C2993E: FLdRfVar var_AC
  loc_C29941: FMemLdPr
  loc_C29946:  = Me.Fields
  loc_C2994B: FLdPr var_AC
  loc_C2994E: from_stack_2 = Me.Item(from_stack_1)
  loc_C29953: FLdPr var_C0
  loc_C29956:  = Me.Value
  loc_C2995B: FLdRfVar var_D0
  loc_C2995E: CStrVarTmp
  loc_C2995F: FStStrNoPop var_90
  loc_C29962: ILdPr
  loc_C29965: Call tblusuario.ComaUsuaPut(from_stack_1v)
  loc_C2996A: FFree1Str var_90
  loc_C2996D: FFreeAd var_AC = ""
  loc_C29974: FFree1Var var_D0 = ""
  loc_C29977: FLdRfVar var_D0
  loc_C2997A: FLdRfVar var_C0
  loc_C2997D: LitVarStr var_BC, "UsslUsua"
  loc_C29982: PopAdLdVar
  loc_C29983: FLdRfVar var_AC
  loc_C29986: FMemLdPr
  loc_C2998B:  = Me.Fields
  loc_C29990: FLdPr var_AC
  loc_C29993: from_stack_2 = Me.Item(from_stack_1)
  loc_C29998: FLdPr var_C0
  loc_C2999B:  = Me.Value
  loc_C299A0: FLdRfVar var_D0
  loc_C299A3: CStrVarTmp
  loc_C299A4: FStStrNoPop var_90
  loc_C299A7: ILdPr
  loc_C299AA: Call tblusuario.UsslUsuaPut(from_stack_1v)
  loc_C299AF: FFree1Str var_90
  loc_C299B2: FFreeAd var_AC = ""
  loc_C299B9: FFree1Var var_D0 = ""
  loc_C299BC: FLdRfVar var_D0
  loc_C299BF: FLdRfVar var_C0
  loc_C299C2: LitVarStr var_BC, "UtlsUsua"
  loc_C299C7: PopAdLdVar
  loc_C299C8: FLdRfVar var_AC
  loc_C299CB: FMemLdPr
  loc_C299D0:  = Me.Fields
  loc_C299D5: FLdPr var_AC
  loc_C299D8: from_stack_2 = Me.Item(from_stack_1)
  loc_C299DD: FLdPr var_C0
  loc_C299E0:  = Me.Value
  loc_C299E5: FLdRfVar var_D0
  loc_C299E8: CStrVarTmp
  loc_C299E9: FStStrNoPop var_90
  loc_C299EC: ILdPr
  loc_C299EF: Call tblusuario.UtlsUsuaPut(from_stack_1v)
  loc_C299F4: FFree1Str var_90
  loc_C299F7: FFreeAd var_AC = ""
  loc_C299FE: FFree1Var var_D0 = ""
  loc_C29A01: FLdRfVar var_D0
  loc_C29A04: FLdRfVar var_C0
  loc_C29A07: LitVarStr var_BC, "AnfaUsua"
  loc_C29A0C: PopAdLdVar
  loc_C29A0D: FLdRfVar var_AC
  loc_C29A10: FMemLdPr
  loc_C29A15:  = Me.Fields
  loc_C29A1A: FLdPr var_AC
  loc_C29A1D: from_stack_2 = Me.Item(from_stack_1)
  loc_C29A22: FLdPr var_C0
  loc_C29A25:  = Me.Value
  loc_C29A2A: FLdRfVar var_D0
  loc_C29A2D: CStrVarTmp
  loc_C29A2E: FStStrNoPop var_90
  loc_C29A31: ILdPr
  loc_C29A34: Call tblusuario.AnfaUsuaPut(from_stack_1v)
  loc_C29A39: FFree1Str var_90
  loc_C29A3C: FFreeAd var_AC = ""
  loc_C29A43: FFree1Var var_D0 = ""
  loc_C29A46: FLdRfVar var_D0
  loc_C29A49: FLdRfVar var_C0
  loc_C29A4C: LitVarStr var_BC, "SedeUsua"
  loc_C29A51: PopAdLdVar
  loc_C29A52: FLdRfVar var_AC
  loc_C29A55: FMemLdPr
  loc_C29A5A:  = Me.Fields
  loc_C29A5F: FLdPr var_AC
  loc_C29A62: from_stack_2 = Me.Item(from_stack_1)
  loc_C29A67: FLdPr var_C0
  loc_C29A6A:  = Me.Value
  loc_C29A6F: FLdRfVar var_D0
  loc_C29A72: CStrVarTmp
  loc_C29A73: FStStrNoPop var_90
  loc_C29A76: ILdPr
  loc_C29A79: Call tblusuario.SedeUsuaPut(from_stack_1v)
  loc_C29A7E: FFree1Str var_90
  loc_C29A81: FFreeAd var_AC = ""
  loc_C29A88: FFree1Var var_D0 = ""
  loc_C29A8B: FLdRfVar var_D0
  loc_C29A8E: FLdRfVar var_C0
  loc_C29A91: LitVarStr var_BC, "FaesUsua"
  loc_C29A96: PopAdLdVar
  loc_C29A97: FLdRfVar var_AC
  loc_C29A9A: FMemLdPr
  loc_C29A9F:  = Me.Fields
  loc_C29AA4: FLdPr var_AC
  loc_C29AA7: from_stack_2 = Me.Item(from_stack_1)
  loc_C29AAC: FLdPr var_C0
  loc_C29AAF:  = Me.Value
  loc_C29AB4: FLdRfVar var_D0
  loc_C29AB7: CStrVarTmp
  loc_C29AB8: FStStrNoPop var_90
  loc_C29ABB: ILdPr
  loc_C29ABE: Call tblusuario.FaesUsuaPut(from_stack_1v)
  loc_C29AC3: FFree1Str var_90
  loc_C29AC6: FFreeAd var_AC = ""
  loc_C29ACD: FFree1Var var_D0 = ""
  loc_C29AD0: FLdRfVar var_D0
  loc_C29AD3: FLdRfVar var_C0
  loc_C29AD6: LitVarStr var_BC, "SellUsua"
  loc_C29ADB: PopAdLdVar
  loc_C29ADC: FLdRfVar var_AC
  loc_C29ADF: FMemLdPr
  loc_C29AE4:  = Me.Fields
  loc_C29AE9: FLdPr var_AC
  loc_C29AEC: from_stack_2 = Me.Item(from_stack_1)
  loc_C29AF1: FLdPr var_C0
  loc_C29AF4:  = Me.Value
  loc_C29AF9: FLdRfVar var_D0
  loc_C29AFC: CStrVarTmp
  loc_C29AFD: FStStrNoPop var_90
  loc_C29B00: ILdPr
  loc_C29B03: Call tblusuario.SellUsuaPut(from_stack_1v)
  loc_C29B08: FFree1Str var_90
  loc_C29B0B: FFreeAd var_AC = ""
  loc_C29B12: FFree1Var var_D0 = ""
  loc_C29B15: FLdRfVar var_D0
  loc_C29B18: FLdRfVar var_C0
  loc_C29B1B: LitVarStr var_BC, "ModiApre"
  loc_C29B20: PopAdLdVar
  loc_C29B21: FLdRfVar var_AC
  loc_C29B24: FMemLdPr
  loc_C29B29:  = Me.Fields
  loc_C29B2E: FLdPr var_AC
  loc_C29B31: from_stack_2 = Me.Item(from_stack_1)
  loc_C29B36: FLdPr var_C0
  loc_C29B39:  = Me.Value
  loc_C29B3E: FLdRfVar var_D0
  loc_C29B41: CStrVarTmp
  loc_C29B42: FStStrNoPop var_90
  loc_C29B45: ILdPr
  loc_C29B48: Call tblusuario.ModiAprePut(from_stack_1v)
  loc_C29B4D: FFree1Str var_90
  loc_C29B50: FFreeAd var_AC = ""
  loc_C29B57: FFree1Var var_D0 = ""
  loc_C29B5A: FLdRfVar var_D0
  loc_C29B5D: FLdRfVar var_C0
  loc_C29B60: LitVarStr var_BC, "AltaUsua"
  loc_C29B65: PopAdLdVar
  loc_C29B66: FLdRfVar var_AC
  loc_C29B69: FMemLdPr
  loc_C29B6E:  = Me.Fields
  loc_C29B73: FLdPr var_AC
  loc_C29B76: from_stack_2 = Me.Item(from_stack_1)
  loc_C29B7B: FLdPr var_C0
  loc_C29B7E:  = Me.Value
  loc_C29B83: FLdRfVar var_D0
  loc_C29B86: CStrVarTmp
  loc_C29B87: FStStrNoPop var_90
  loc_C29B8A: ILdPr
  loc_C29B8D: Call tblusuario.AltaUsuaPut(from_stack_1v)
  loc_C29B92: FFree1Str var_90
  loc_C29B95: FFreeAd var_AC = ""
  loc_C29B9C: FFree1Var var_D0 = ""
  loc_C29B9F: FLdRfVar var_D0
  loc_C29BA2: FLdRfVar var_C0
  loc_C29BA5: LitVarStr var_BC, "AltaFeho"
  loc_C29BAA: PopAdLdVar
  loc_C29BAB: FLdRfVar var_AC
  loc_C29BAE: FMemLdPr
  loc_C29BB3:  = Me.Fields
  loc_C29BB8: FLdPr var_AC
  loc_C29BBB: from_stack_2 = Me.Item(from_stack_1)
  loc_C29BC0: FLdPr var_C0
  loc_C29BC3:  = Me.Value
  loc_C29BC8: FLdRfVar var_D0
  loc_C29BCB: CStrVarTmp
  loc_C29BCC: FStStrNoPop var_90
  loc_C29BCF: ILdPr
  loc_C29BD2: Call tblusuario.AltaFehoPut(from_stack_1v)
  loc_C29BD7: FFree1Str var_90
  loc_C29BDA: FFreeAd var_AC = ""
  loc_C29BE1: FFree1Var var_D0 = ""
  loc_C29BE4: FLdRfVar var_D0
  loc_C29BE7: FLdRfVar var_C0
  loc_C29BEA: LitVarStr var_BC, "ModiUsua"
  loc_C29BEF: PopAdLdVar
  loc_C29BF0: FLdRfVar var_AC
  loc_C29BF3: FMemLdPr
  loc_C29BF8:  = Me.Fields
  loc_C29BFD: FLdPr var_AC
  loc_C29C00: from_stack_2 = Me.Item(from_stack_1)
  loc_C29C05: FLdPr var_C0
  loc_C29C08:  = Me.Value
  loc_C29C0D: FLdRfVar var_D0
  loc_C29C10: CStrVarTmp
  loc_C29C11: FStStrNoPop var_90
  loc_C29C14: ILdPr
  loc_C29C17: Call tblusuario.ModiUsuaPut(from_stack_1v)
  loc_C29C1C: FFree1Str var_90
  loc_C29C1F: FFreeAd var_AC = ""
  loc_C29C26: FFree1Var var_D0 = ""
  loc_C29C29: FLdRfVar var_D0
  loc_C29C2C: FLdRfVar var_C0
  loc_C29C2F: LitVarStr var_BC, "ModiFeho"
  loc_C29C34: PopAdLdVar
  loc_C29C35: FLdRfVar var_AC
  loc_C29C38: FMemLdPr
  loc_C29C3D:  = Me.Fields
  loc_C29C42: FLdPr var_AC
  loc_C29C45: from_stack_2 = Me.Item(from_stack_1)
  loc_C29C4A: FLdPr var_C0
  loc_C29C4D:  = Me.Value
  loc_C29C52: FLdRfVar var_108
  loc_C29C55: LitVarStr var_104, "ModiFeho"
  loc_C29C5A: PopAdLdVar
  loc_C29C5B: FLdRfVar var_F4
  loc_C29C5E: FMemLdPr
  loc_C29C63:  = Me.Fields
  loc_C29C68: FLdPr var_F4
  loc_C29C6B: from_stack_2 = Me.Item(from_stack_1)
  loc_C29C70: LitVarStr var_138, vbNullString
  loc_C29C75: FStVarCopyObj var_148
  loc_C29C78: FLdRfVar var_148
  loc_C29C7B: FLdZeroAd var_108
  loc_C29C7E: CVarAd
  loc_C29C82: FLdRfVar var_D0
  loc_C29C85: LitVarStr var_E0, vbNullString
  loc_C29C8A: HardType
  loc_C29C8B: NeVar var_F0
  loc_C29C8F: FStVar var_118
  loc_C29C93: FLdRfVar var_118
  loc_C29C96: FLdRfVar var_158
  loc_C29C99: ImpAdCallFPR4  = IIf(, , )
  loc_C29C9E: FLdRfVar var_158
  loc_C29CA1: CStrVarVal var_90
  loc_C29CA5: ILdPr
  loc_C29CA8: Call tblusuario.ModiFehoPut(from_stack_1v)
  loc_C29CAD: FFree1Str var_90
  loc_C29CB0: FFreeAd var_AC = "": var_C0 = ""
  loc_C29CB9: FFreeVar var_D0 = "": var_118 = "": var_128 = "": var_148 = ""
  loc_C29CC6: FLdRfVar var_D0
  loc_C29CC9: FLdRfVar var_C0
  loc_C29CCC: LitVarStr var_BC, "BajaUsua"
  loc_C29CD1: PopAdLdVar
  loc_C29CD2: FLdRfVar var_AC
  loc_C29CD5: FMemLdPr
  loc_C29CDA:  = Me.Fields
  loc_C29CDF: FLdPr var_AC
  loc_C29CE2: from_stack_2 = Me.Item(from_stack_1)
  loc_C29CE7: FLdPr var_C0
  loc_C29CEA:  = Me.Value
  loc_C29CEF: FLdRfVar var_D0
  loc_C29CF2: CStrVarTmp
  loc_C29CF3: FStStrNoPop var_90
  loc_C29CF6: ILdPr
  loc_C29CF9: Call tblusuario.BajaUsuaPut(from_stack_1v)
  loc_C29CFE: FFree1Str var_90
  loc_C29D01: FFreeAd var_AC = ""
  loc_C29D08: FFree1Var var_D0 = ""
  loc_C29D0B: FLdRfVar var_D0
  loc_C29D0E: FLdRfVar var_C0
  loc_C29D11: LitVarStr var_BC, "BajaFeho"
  loc_C29D16: PopAdLdVar
  loc_C29D17: FLdRfVar var_AC
  loc_C29D1A: FMemLdPr
  loc_C29D1F:  = Me.Fields
  loc_C29D24: FLdPr var_AC
  loc_C29D27: from_stack_2 = Me.Item(from_stack_1)
  loc_C29D2C: FLdPr var_C0
  loc_C29D2F:  = Me.Value
  loc_C29D34: FLdRfVar var_108
  loc_C29D37: LitVarStr var_104, "BajaFeho"
  loc_C29D3C: PopAdLdVar
  loc_C29D3D: FLdRfVar var_F4
  loc_C29D40: FMemLdPr
  loc_C29D45:  = Me.Fields
  loc_C29D4A: FLdPr var_F4
  loc_C29D4D: from_stack_2 = Me.Item(from_stack_1)
  loc_C29D52: LitVarStr var_138, vbNullString
  loc_C29D57: FStVarCopyObj var_148
  loc_C29D5A: FLdRfVar var_148
  loc_C29D5D: FLdZeroAd var_108
  loc_C29D60: CVarAd
  loc_C29D64: FLdRfVar var_D0
  loc_C29D67: LitVarStr var_E0, vbNullString
  loc_C29D6C: HardType
  loc_C29D6D: NeVar var_F0
  loc_C29D71: FStVar var_118
  loc_C29D75: FLdRfVar var_118
  loc_C29D78: FLdRfVar var_158
  loc_C29D7B: ImpAdCallFPR4  = IIf(, , )
  loc_C29D80: FLdRfVar var_158
  loc_C29D83: CStrVarVal var_90
  loc_C29D87: ILdPr
  loc_C29D8A: Call tblusuario.BajaFehoPut(from_stack_1v)
  loc_C29D8F: FFree1Str var_90
  loc_C29D92: FFreeAd var_AC = "": var_C0 = ""
  loc_C29D9B: FFreeVar var_D0 = "": var_118 = "": var_128 = "": var_148 = ""
  loc_C29DA8: FLdRfVar var_D0
  loc_C29DAB: FLdRfVar var_C0
  loc_C29DAE: LitVarStr var_BC, "BajaMoti"
  loc_C29DB3: PopAdLdVar
  loc_C29DB4: FLdRfVar var_AC
  loc_C29DB7: FMemLdPr
  loc_C29DBC:  = Me.Fields
  loc_C29DC1: FLdPr var_AC
  loc_C29DC4: from_stack_2 = Me.Item(from_stack_1)
  loc_C29DC9: FLdPr var_C0
  loc_C29DCC:  = Me.Value
  loc_C29DD1: FLdRfVar var_D0
  loc_C29DD4: CStrVarTmp
  loc_C29DD5: FStStrNoPop var_90
  loc_C29DD8: ILdPr
  loc_C29DDB: Call tblusuario.BajaMotiPut(from_stack_1v)
  loc_C29DE0: FFree1Str var_90
  loc_C29DE3: FFreeAd var_AC = ""
  loc_C29DEA: FFree1Var var_D0 = ""
  loc_C29DED: LitI2_Byte &HFF
  loc_C29DEF: FStI2 var_86
  loc_C29DF2: Branch loc_C29F5A
  loc_C29DF5: LitStr "El Usuario NO EXISTE. Verifique..."
  loc_C29DF8: ILdPr
  loc_C29DFB: Call tblusuario.MsgErrorPut(from_stack_1v)
  loc_C29E00: LitStr vbNullString
  loc_C29E03: ILdPr
  loc_C29E06: Call tblusuario.CodiUsuaPut(from_stack_1v)
  loc_C29E0B: LitStr vbNullString
  loc_C29E0E: ILdPr
  loc_C29E11: Call tblusuario.CucuPersPut(from_stack_1v)
  loc_C29E16: LitStr vbNullString
  loc_C29E19: ILdPr
  loc_C29E1C: Call tblusuario.DetaPersPut(from_stack_1v)
  loc_C29E21: LitStr vbNullString
  loc_C29E24: ILdPr
  loc_C29E27: Call tblusuario.ClavUsuaPut(from_stack_1v)
  loc_C29E2C: LitStr vbNullString
  loc_C29E2F: ILdPr
  loc_C29E32: Call tblusuario.FeveUsuaPut(from_stack_1v)
  loc_C29E37: LitStr vbNullString
  loc_C29E3A: ILdPr
  loc_C29E3D: Call tblusuario.InhaUsuaPut(from_stack_1v)
  loc_C29E42: LitStr vbNullString
  loc_C29E45: ILdPr
  loc_C29E48: Call tblusuario.CodiEnrePut(from_stack_1v)
  loc_C29E4D: LitStr vbNullString
  loc_C29E50: ILdPr
  loc_C29E53: Call tblusuario.CodiOrgaPut(from_stack_1v)
  loc_C29E58: LitStr vbNullString
  loc_C29E5B: ILdPr
  loc_C29E5E: Call tblusuario.AcreUsuaPut(from_stack_1v)
  loc_C29E63: LitStr vbNullString
  loc_C29E66: ILdPr
  loc_C29E69: Call tblusuario.FirmUsuaPut(from_stack_1v)
  loc_C29E6E: LitStr vbNullString
  loc_C29E71: ILdPr
  loc_C29E74: Call tblusuario.CargUsuaPut(from_stack_1v)
  loc_C29E79: LitStr vbNullString
  loc_C29E7C: ILdPr
  loc_C29E7F: Call tblusuario.CoenUsuaPut(from_stack_1v)
  loc_C29E84: LitStr vbNullString
  loc_C29E87: ILdPr
  loc_C29E8A: Call tblusuario.CosaUsuaPut(from_stack_1v)
  loc_C29E8F: LitStr vbNullString
  loc_C29E92: ILdPr
  loc_C29E95: Call tblusuario.SemaUsuaPut(from_stack_1v)
  loc_C29E9A: LitStr vbNullString
  loc_C29E9D: ILdPr
  loc_C29EA0: Call tblusuario.PumaUsuaPut(from_stack_1v)
  loc_C29EA5: LitStr vbNullString
  loc_C29EA8: ILdPr
  loc_C29EAB: Call tblusuario.UsmaUsuaPut(from_stack_1v)
  loc_C29EB0: LitStr vbNullString
  loc_C29EB3: ILdPr
  loc_C29EB6: Call tblusuario.ComaUsuaPut(from_stack_1v)
  loc_C29EBB: LitStr vbNullString
  loc_C29EBE: ILdPr
  loc_C29EC1: Call tblusuario.UsslUsuaPut(from_stack_1v)
  loc_C29EC6: LitStr vbNullString
  loc_C29EC9: ILdPr
  loc_C29ECC: Call tblusuario.UtlsUsuaPut(from_stack_1v)
  loc_C29ED1: LitStr vbNullString
  loc_C29ED4: ILdPr
  loc_C29ED7: Call tblusuario.AnfaUsuaPut(from_stack_1v)
  loc_C29EDC: LitStr vbNullString
  loc_C29EDF: ILdPr
  loc_C29EE2: Call tblusuario.SedeUsuaPut(from_stack_1v)
  loc_C29EE7: LitStr vbNullString
  loc_C29EEA: ILdPr
  loc_C29EED: Call tblusuario.FaesUsuaPut(from_stack_1v)
  loc_C29EF2: LitStr vbNullString
  loc_C29EF5: ILdPr
  loc_C29EF8: Call tblusuario.SellUsuaPut(from_stack_1v)
  loc_C29EFD: LitStr vbNullString
  loc_C29F00: ILdPr
  loc_C29F03: Call tblusuario.ModiAprePut(from_stack_1v)
  loc_C29F08: LitStr vbNullString
  loc_C29F0B: ILdPr
  loc_C29F0E: Call tblusuario.AltaUsuaPut(from_stack_1v)
  loc_C29F13: LitStr vbNullString
  loc_C29F16: ILdPr
  loc_C29F19: Call tblusuario.AltaFehoPut(from_stack_1v)
  loc_C29F1E: LitStr vbNullString
  loc_C29F21: ILdPr
  loc_C29F24: Call tblusuario.ModiUsuaPut(from_stack_1v)
  loc_C29F29: LitStr vbNullString
  loc_C29F2C: ILdPr
  loc_C29F2F: Call tblusuario.ModiFehoPut(from_stack_1v)
  loc_C29F34: LitStr vbNullString
  loc_C29F37: ILdPr
  loc_C29F3A: Call tblusuario.BajaUsuaPut(from_stack_1v)
  loc_C29F3F: LitStr vbNullString
  loc_C29F42: ILdPr
  loc_C29F45: Call tblusuario.BajaFehoPut(from_stack_1v)
  loc_C29F4A: LitStr vbNullString
  loc_C29F4D: ILdPr
  loc_C29F50: Call tblusuario.BajaMotiPut(from_stack_1v)
  loc_C29F55: LitI2_Byte 0
  loc_C29F57: FStI2 var_86
  loc_C29F5A: ExitProcI2
End Function

Private Function Proc_270_4_B3D5F8(arg_C) 'B3D5F8
  'Data Table: 4C25A4
  loc_B3D2F8: ILdRf arg_C
  loc_B3D2FB: FStStrCopy var_8C
  loc_B3D2FE: ILdRf arg_14
  loc_B3D301: FStStrCopy var_90
  loc_B3D304: LitStr "SELECT *"
  loc_B3D307: LitStr " FROM infogov.acceso"
  loc_B3D30A: ConcatStr
  loc_B3D30B: FStStrNoPop var_94
  loc_B3D30E: LitStr " INNER JOIN infogov.menu ON menu.CodiMenu = acceso.CodiMenu"
  loc_B3D311: ConcatStr
  loc_B3D312: FStStrNoPop var_98
  loc_B3D315: LitStr " WHERE acceso.CodiUsua = '"
  loc_B3D318: ConcatStr
  loc_B3D319: FStStrNoPop var_9C
  loc_B3D31C: ILdRf var_8C
  loc_B3D31F: ConcatStr
  loc_B3D320: FStStrNoPop var_A0
  loc_B3D323: LitStr "'"
  loc_B3D326: ConcatStr
  loc_B3D327: FStStrNoPop var_A4
  loc_B3D32A: LitStr " AND menu.CodiSist = "
  loc_B3D32D: ConcatStr
  loc_B3D32E: FStStrNoPop var_A8
  loc_B3D331: FLdUI1
  loc_B3D335: CStrI2
  loc_B3D337: FStStrNoPop var_AC
  loc_B3D33A: ConcatStr
  loc_B3D33B: FStStrNoPop var_B0
  loc_B3D33E: LitStr " AND menu.FormMenu = '"
  loc_B3D341: ConcatStr
  loc_B3D342: FStStrNoPop var_B4
  loc_B3D345: ILdRf var_90
  loc_B3D348: ConcatStr
  loc_B3D349: FStStrNoPop var_B8
  loc_B3D34C: LitStr "'"
  loc_B3D34F: ConcatStr
  loc_B3D350: FStStrNoPop var_BC
  loc_B3D353: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B3D358: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_B3D371: FLdRfVar var_C0
  loc_B3D374: FMemLdPr
  loc_B3D379:  = Me.RecordCount
  loc_B3D37E: ILdRf var_C0
  loc_B3D381: LitI4 0
  loc_B3D386: GtI4
  loc_B3D387: BranchF loc_B3D5AA
  loc_B3D38A: LitStr vbNullString
  loc_B3D38D: FMemStStrCopy
  loc_B3D392: FLdRfVar var_E8
  loc_B3D395: FLdRfVar var_D8
  loc_B3D398: LitVarStr var_D4, "CodiUsua"
  loc_B3D39D: PopAdLdVar
  loc_B3D39E: FLdRfVar var_C4
  loc_B3D3A1: FMemLdPr
  loc_B3D3A6:  = Me.Fields
  loc_B3D3AB: FLdPr var_C4
  loc_B3D3AE: from_stack_2 = Me.Item(from_stack_1)
  loc_B3D3B3: FLdPr var_D8
  loc_B3D3B6:  = Me.Value
  loc_B3D3BB: FLdRfVar var_E8
  loc_B3D3BE: CStrVarTmp
  loc_B3D3BF: FStStrNoPop var_94
  loc_B3D3C2: FMemStStrCopy
  loc_B3D3C7: FFree1Str var_94
  loc_B3D3CA: FFreeAd var_C4 = ""
  loc_B3D3D1: FFree1Var var_E8 = ""
  loc_B3D3D4: FLdRfVar var_E8
  loc_B3D3D7: FLdRfVar var_D8
  loc_B3D3DA: LitVarStr var_D4, "CodiMenu"
  loc_B3D3DF: PopAdLdVar
  loc_B3D3E0: FLdRfVar var_C4
  loc_B3D3E3: FMemLdPr
  loc_B3D3E8:  = Me.Fields
  loc_B3D3ED: FLdPr var_C4
  loc_B3D3F0: from_stack_2 = Me.Item(from_stack_1)
  loc_B3D3F5: FLdPr var_D8
  loc_B3D3F8:  = Me.Value
  loc_B3D3FD: FLdRfVar var_E8
  loc_B3D400: CStrVarTmp
  loc_B3D401: FStStrNoPop var_94
  loc_B3D404: FMemStStrCopy
  loc_B3D409: FFree1Str var_94
  loc_B3D40C: FFreeAd var_C4 = ""
  loc_B3D413: FFree1Var var_E8 = ""
  loc_B3D416: FLdRfVar var_E8
  loc_B3D419: FLdRfVar var_D8
  loc_B3D41C: LitVarStr var_D4, "AltaAcce"
  loc_B3D421: PopAdLdVar
  loc_B3D422: FLdRfVar var_C4
  loc_B3D425: FMemLdPr
  loc_B3D42A:  = Me.Fields
  loc_B3D42F: FLdPr var_C4
  loc_B3D432: from_stack_2 = Me.Item(from_stack_1)
  loc_B3D437: FLdPr var_D8
  loc_B3D43A:  = Me.Value
  loc_B3D43F: FLdRfVar var_E8
  loc_B3D442: CStrVarTmp
  loc_B3D443: FStStrNoPop var_94
  loc_B3D446: FMemStStrCopy
  loc_B3D44B: FFree1Str var_94
  loc_B3D44E: FFreeAd var_C4 = ""
  loc_B3D455: FFree1Var var_E8 = ""
  loc_B3D458: FLdRfVar var_E8
  loc_B3D45B: FLdRfVar var_D8
  loc_B3D45E: LitVarStr var_D4, "BajaAcce"
  loc_B3D463: PopAdLdVar
  loc_B3D464: FLdRfVar var_C4
  loc_B3D467: FMemLdPr
  loc_B3D46C:  = Me.Fields
  loc_B3D471: FLdPr var_C4
  loc_B3D474: from_stack_2 = Me.Item(from_stack_1)
  loc_B3D479: FLdPr var_D8
  loc_B3D47C:  = Me.Value
  loc_B3D481: FLdRfVar var_E8
  loc_B3D484: CStrVarTmp
  loc_B3D485: FStStrNoPop var_94
  loc_B3D488: FMemStStrCopy
  loc_B3D48D: FFree1Str var_94
  loc_B3D490: FFreeAd var_C4 = ""
  loc_B3D497: FFree1Var var_E8 = ""
  loc_B3D49A: FLdRfVar var_E8
  loc_B3D49D: FLdRfVar var_D8
  loc_B3D4A0: LitVarStr var_D4, "ModiAcce"
  loc_B3D4A5: PopAdLdVar
  loc_B3D4A6: FLdRfVar var_C4
  loc_B3D4A9: FMemLdPr
  loc_B3D4AE:  = Me.Fields
  loc_B3D4B3: FLdPr var_C4
  loc_B3D4B6: from_stack_2 = Me.Item(from_stack_1)
  loc_B3D4BB: FLdPr var_D8
  loc_B3D4BE:  = Me.Value
  loc_B3D4C3: FLdRfVar var_E8
  loc_B3D4C6: CStrVarTmp
  loc_B3D4C7: FStStrNoPop var_94
  loc_B3D4CA: FMemStStrCopy
  loc_B3D4CF: FFree1Str var_94
  loc_B3D4D2: FFreeAd var_C4 = ""
  loc_B3D4D9: FFree1Var var_E8 = ""
  loc_B3D4DC: FLdRfVar var_E8
  loc_B3D4DF: FLdRfVar var_D8
  loc_B3D4E2: LitVarStr var_D4, "AudiAcce"
  loc_B3D4E7: PopAdLdVar
  loc_B3D4E8: FLdRfVar var_C4
  loc_B3D4EB: FMemLdPr
  loc_B3D4F0:  = Me.Fields
  loc_B3D4F5: FLdPr var_C4
  loc_B3D4F8: from_stack_2 = Me.Item(from_stack_1)
  loc_B3D4FD: FLdPr var_D8
  loc_B3D500:  = Me.Value
  loc_B3D505: FLdRfVar var_E8
  loc_B3D508: CStrVarTmp
  loc_B3D509: FStStrNoPop var_94
  loc_B3D50C: FMemStStrCopy
  loc_B3D511: FFree1Str var_94
  loc_B3D514: FFreeAd var_C4 = ""
  loc_B3D51B: FFree1Var var_E8 = ""
  loc_B3D51E: FLdRfVar var_E8
  loc_B3D521: FLdRfVar var_D8
  loc_B3D524: LitVarStr var_D4, "ImprAcce"
  loc_B3D529: PopAdLdVar
  loc_B3D52A: FLdRfVar var_C4
  loc_B3D52D: FMemLdPr
  loc_B3D532:  = Me.Fields
  loc_B3D537: FLdPr var_C4
  loc_B3D53A: from_stack_2 = Me.Item(from_stack_1)
  loc_B3D53F: FLdPr var_D8
  loc_B3D542:  = Me.Value
  loc_B3D547: FLdRfVar var_E8
  loc_B3D54A: CStrVarTmp
  loc_B3D54B: FStStrNoPop var_94
  loc_B3D54E: FMemStStrCopy
  loc_B3D553: FFree1Str var_94
  loc_B3D556: FFreeAd var_C4 = ""
  loc_B3D55D: FFree1Var var_E8 = ""
  loc_B3D560: FLdRfVar var_E8
  loc_B3D563: FLdRfVar var_D8
  loc_B3D566: LitVarStr var_D4, "AltaUsua"
  loc_B3D56B: PopAdLdVar
  loc_B3D56C: FLdRfVar var_C4
  loc_B3D56F: FMemLdPr
  loc_B3D574:  = Me.Fields
  loc_B3D579: FLdPr var_C4
  loc_B3D57C: from_stack_2 = Me.Item(from_stack_1)
  loc_B3D581: FLdPr var_D8
  loc_B3D584:  = Me.Value
  loc_B3D589: FLdRfVar var_E8
  loc_B3D58C: CStrVarTmp
  loc_B3D58D: FStStrNoPop var_94
  loc_B3D590: FMemStStrCopy
  loc_B3D595: FFree1Str var_94
  loc_B3D598: FFreeAd var_C4 = ""
  loc_B3D59F: FFree1Var var_E8 = ""
  loc_B3D5A2: LitI2_Byte &HFF
  loc_B3D5A4: FStI2 var_86
  loc_B3D5A7: Branch loc_B3D5F7
  loc_B3D5AA: LitStr "El Acceso NO EXISTE. Verifique..."
  loc_B3D5AD: FMemStStrCopy
  loc_B3D5B2: LitStr vbNullString
  loc_B3D5B5: FMemStStrCopy
  loc_B3D5BA: LitStr vbNullString
  loc_B3D5BD: FMemStStrCopy
  loc_B3D5C2: LitStr vbNullString
  loc_B3D5C5: FMemStStrCopy
  loc_B3D5CA: LitStr vbNullString
  loc_B3D5CD: FMemStStrCopy
  loc_B3D5D2: LitStr vbNullString
  loc_B3D5D5: FMemStStrCopy
  loc_B3D5DA: LitStr vbNullString
  loc_B3D5DD: FMemStStrCopy
  loc_B3D5E2: LitStr vbNullString
  loc_B3D5E5: FMemStStrCopy
  loc_B3D5EA: LitStr vbNullString
  loc_B3D5ED: FMemStStrCopy
  loc_B3D5F2: LitI2_Byte 0
  loc_B3D5F4: FStI2 var_86
  loc_B3D5F7: ExitProcI2
End Function

Private Function Proc_270_5_B14CC8(arg_C) 'B14CC8
  'Data Table: 4C25A4
  loc_B14A7C: ILdRf arg_C
  loc_B14A7F: FStStrCopy var_8C
  loc_B14A82: LitStr "SELECT *"
  loc_B14A85: LitStr " FROM infogov.menu"
  loc_B14A88: ConcatStr
  loc_B14A89: FStStrNoPop var_90
  loc_B14A8C: LitStr " WHERE menu.CodiSist = "
  loc_B14A8F: ConcatStr
  loc_B14A90: FStStrNoPop var_94
  loc_B14A93: LitI2_Byte 2
  loc_B14A95: CStrI2
  loc_B14A97: FStStrNoPop var_98
  loc_B14A9A: ConcatStr
  loc_B14A9B: FStStrNoPop var_9C
  loc_B14A9E: LitStr " AND menu.FormMenu = '"
  loc_B14AA1: ConcatStr
  loc_B14AA2: FStStrNoPop var_A0
  loc_B14AA5: ILdRf var_8C
  loc_B14AA8: ConcatStr
  loc_B14AA9: FStStrNoPop var_A4
  loc_B14AAC: LitStr "'"
  loc_B14AAF: ConcatStr
  loc_B14AB0: FStStrNoPop var_A8
  loc_B14AB3: LitStr " AND menu.WforMenu = 0"
  loc_B14AB6: ConcatStr
  loc_B14AB7: FStStrNoPop var_AC
  loc_B14ABA: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B14ABF: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_B14AD2: FLdRfVar var_B0
  loc_B14AD5: FMemLdPr
  loc_B14ADA:  = Me.RecordCount
  loc_B14ADF: ILdRf var_B0
  loc_B14AE2: LitI4 0
  loc_B14AE7: GtI4
  loc_B14AE8: BranchF loc_B14C87
  loc_B14AEB: LitStr vbNullString
  loc_B14AEE: FMemStStrCopy
  loc_B14AF3: FLdRfVar var_D8
  loc_B14AF6: FLdRfVar var_C8
  loc_B14AF9: LitVarStr var_C4, "CodiSist"
  loc_B14AFE: PopAdLdVar
  loc_B14AFF: FLdRfVar var_B4
  loc_B14B02: FMemLdPr
  loc_B14B07:  = Me.Fields
  loc_B14B0C: FLdPr var_B4
  loc_B14B0F: from_stack_2 = Me.Item(from_stack_1)
  loc_B14B14: FLdPr var_C8
  loc_B14B17:  = Me.Value
  loc_B14B1C: FLdRfVar var_D8
  loc_B14B1F: CStrVarTmp
  loc_B14B20: FStStrNoPop var_90
  loc_B14B23: FMemStStrCopy
  loc_B14B28: FFree1Str var_90
  loc_B14B2B: FFreeAd var_B4 = ""
  loc_B14B32: FFree1Var var_D8 = ""
  loc_B14B35: FLdRfVar var_D8
  loc_B14B38: FLdRfVar var_C8
  loc_B14B3B: LitVarStr var_C4, "CodiMenu"
  loc_B14B40: PopAdLdVar
  loc_B14B41: FLdRfVar var_B4
  loc_B14B44: FMemLdPr
  loc_B14B49:  = Me.Fields
  loc_B14B4E: FLdPr var_B4
  loc_B14B51: from_stack_2 = Me.Item(from_stack_1)
  loc_B14B56: FLdPr var_C8
  loc_B14B59:  = Me.Value
  loc_B14B5E: FLdRfVar var_D8
  loc_B14B61: CStrVarTmp
  loc_B14B62: FStStrNoPop var_90
  loc_B14B65: FMemStStrCopy
  loc_B14B6A: FFree1Str var_90
  loc_B14B6D: FFreeAd var_B4 = ""
  loc_B14B74: FFree1Var var_D8 = ""
  loc_B14B77: FLdRfVar var_D8
  loc_B14B7A: FLdRfVar var_C8
  loc_B14B7D: LitVarStr var_C4, "DetaMenu"
  loc_B14B82: PopAdLdVar
  loc_B14B83: FLdRfVar var_B4
  loc_B14B86: FMemLdPr
  loc_B14B8B:  = Me.Fields
  loc_B14B90: FLdPr var_B4
  loc_B14B93: from_stack_2 = Me.Item(from_stack_1)
  loc_B14B98: FLdPr var_C8
  loc_B14B9B:  = Me.Value
  loc_B14BA0: FLdRfVar var_D8
  loc_B14BA3: CStrVarTmp
  loc_B14BA4: FStStrNoPop var_90
  loc_B14BA7: FMemStStrCopy
  loc_B14BAC: FFree1Str var_90
  loc_B14BAF: FFreeAd var_B4 = ""
  loc_B14BB6: FFree1Var var_D8 = ""
  loc_B14BB9: FLdRfVar var_D8
  loc_B14BBC: FLdRfVar var_C8
  loc_B14BBF: LitVarStr var_C4, "FormMenu"
  loc_B14BC4: PopAdLdVar
  loc_B14BC5: FLdRfVar var_B4
  loc_B14BC8: FMemLdPr
  loc_B14BCD:  = Me.Fields
  loc_B14BD2: FLdPr var_B4
  loc_B14BD5: from_stack_2 = Me.Item(from_stack_1)
  loc_B14BDA: FLdPr var_C8
  loc_B14BDD:  = Me.Value
  loc_B14BE2: FLdRfVar var_D8
  loc_B14BE5: CStrVarTmp
  loc_B14BE6: FStStrNoPop var_90
  loc_B14BE9: FMemStStrCopy
  loc_B14BEE: FFree1Str var_90
  loc_B14BF1: FFreeAd var_B4 = ""
  loc_B14BF8: FFree1Var var_D8 = ""
  loc_B14BFB: FLdRfVar var_D8
  loc_B14BFE: FLdRfVar var_C8
  loc_B14C01: LitVarStr var_C4, "WforMenu"
  loc_B14C06: PopAdLdVar
  loc_B14C07: FLdRfVar var_B4
  loc_B14C0A: FMemLdPr
  loc_B14C0F:  = Me.Fields
  loc_B14C14: FLdPr var_B4
  loc_B14C17: from_stack_2 = Me.Item(from_stack_1)
  loc_B14C1C: FLdPr var_C8
  loc_B14C1F:  = Me.Value
  loc_B14C24: FLdRfVar var_D8
  loc_B14C27: CStrVarTmp
  loc_B14C28: FStStrNoPop var_90
  loc_B14C2B: FMemStStrCopy
  loc_B14C30: FFree1Str var_90
  loc_B14C33: FFreeAd var_B4 = ""
  loc_B14C3A: FFree1Var var_D8 = ""
  loc_B14C3D: FLdRfVar var_D8
  loc_B14C40: FLdRfVar var_C8
  loc_B14C43: LitVarStr var_C4, "RepoMenu"
  loc_B14C48: PopAdLdVar
  loc_B14C49: FLdRfVar var_B4
  loc_B14C4C: FMemLdPr
  loc_B14C51:  = Me.Fields
  loc_B14C56: FLdPr var_B4
  loc_B14C59: from_stack_2 = Me.Item(from_stack_1)
  loc_B14C5E: FLdPr var_C8
  loc_B14C61:  = Me.Value
  loc_B14C66: FLdRfVar var_D8
  loc_B14C69: CStrVarTmp
  loc_B14C6A: FStStrNoPop var_90
  loc_B14C6D: FMemStStrCopy
  loc_B14C72: FFree1Str var_90
  loc_B14C75: FFreeAd var_B4 = ""
  loc_B14C7C: FFree1Var var_D8 = ""
  loc_B14C7F: LitI2_Byte &HFF
  loc_B14C81: FStI2 var_86
  loc_B14C84: Branch loc_B14CC4
  loc_B14C87: LitStr "El Menu NO EXISTE. Verifique..."
  loc_B14C8A: FMemStStrCopy
  loc_B14C8F: LitStr vbNullString
  loc_B14C92: FMemStStrCopy
  loc_B14C97: LitStr vbNullString
  loc_B14C9A: FMemStStrCopy
  loc_B14C9F: LitStr vbNullString
  loc_B14CA2: FMemStStrCopy
  loc_B14CA7: LitStr vbNullString
  loc_B14CAA: FMemStStrCopy
  loc_B14CAF: LitStr vbNullString
  loc_B14CB2: FMemStStrCopy
  loc_B14CB7: LitStr vbNullString
  loc_B14CBA: FMemStStrCopy
  loc_B14CBF: LitI2_Byte 0
  loc_B14CC1: FStI2 var_86
  loc_B14CC4: ExitProcI2
  loc_B14CC5: FnLBound
  loc_B14CC6: FStVarCopyObj arg_6C03
End Function

Private Function Proc_270_6_B02218(arg_C) 'B02218
  'Data Table: 4C25A4
  loc_B02028: ILdRf arg_C
  loc_B0202B: FStStrCopy var_8C
  loc_B0202E: LitStr "SELECT * FROM infogov.persona"
  loc_B02031: LitStr " WHERE persona.CucuPers = "
  loc_B02034: ConcatStr
  loc_B02035: FStStrNoPop var_90
  loc_B02038: ILdRf var_8C
  loc_B0203B: ConcatStr
  loc_B0203C: FStStrNoPop var_94
  loc_B0203F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B02044: FFreeStr var_90 = ""
  loc_B0204B: FLdRfVar var_98
  loc_B0204E: FMemLdPr
  loc_B02053:  = Me.RecordCount
  loc_B02058: ILdRf var_98
  loc_B0205B: LitI4 0
  loc_B02060: GtI4
  loc_B02061: BranchF loc_B021D0
  loc_B02064: LitStr vbNullString
  loc_B02067: ILdPr
  loc_B0206A: Call tblPersona.MsgErrorPut(from_stack_1v)
  loc_B0206F: FLdRfVar var_C0
  loc_B02072: FLdRfVar var_B0
  loc_B02075: LitVarStr var_AC, "CucuPers"
  loc_B0207A: PopAdLdVar
  loc_B0207B: FLdRfVar var_9C
  loc_B0207E: FMemLdPr
  loc_B02083:  = Me.Fields
  loc_B02088: FLdPr var_9C
  loc_B0208B: from_stack_2 = Me.Item(from_stack_1)
  loc_B02090: FLdPr var_B0
  loc_B02093:  = Me.Value
  loc_B02098: FLdRfVar var_C0
  loc_B0209B: CStrVarTmp
  loc_B0209C: FStStrNoPop var_90
  loc_B0209F: ILdPr
  loc_B020A2: Call tblPersona.CucuPersPut(from_stack_1v)
  loc_B020A7: FFree1Str var_90
  loc_B020AA: FFreeAd var_9C = ""
  loc_B020B1: FFree1Var var_C0 = ""
  loc_B020B4: FLdRfVar var_C0
  loc_B020B7: FLdRfVar var_B0
  loc_B020BA: LitVarStr var_AC, "DetaPers"
  loc_B020BF: PopAdLdVar
  loc_B020C0: FLdRfVar var_9C
  loc_B020C3: FMemLdPr
  loc_B020C8:  = Me.Fields
  loc_B020CD: FLdPr var_9C
  loc_B020D0: from_stack_2 = Me.Item(from_stack_1)
  loc_B020D5: FLdPr var_B0
  loc_B020D8:  = Me.Value
  loc_B020DD: FLdRfVar var_C0
  loc_B020E0: CStrVarTmp
  loc_B020E1: FStStrNoPop var_90
  loc_B020E4: ILdPr
  loc_B020E7: Call tblPersona.DetaPersPut(from_stack_1v)
  loc_B020EC: FFree1Str var_90
  loc_B020EF: FFreeAd var_9C = ""
  loc_B020F6: FFree1Var var_C0 = ""
  loc_B020F9: FLdRfVar var_C0
  loc_B020FC: FLdRfVar var_B0
  loc_B020FF: LitVarStr var_AC, "DecrPers"
  loc_B02104: PopAdLdVar
  loc_B02105: FLdRfVar var_9C
  loc_B02108: FMemLdPr
  loc_B0210D:  = Me.Fields
  loc_B02112: FLdPr var_9C
  loc_B02115: from_stack_2 = Me.Item(from_stack_1)
  loc_B0211A: FLdPr var_B0
  loc_B0211D:  = Me.Value
  loc_B02122: FLdRfVar var_C0
  loc_B02125: CStrVarTmp
  loc_B02126: FStStrNoPop var_90
  loc_B02129: ILdPr
  loc_B0212C: Call tblPersona.DetaCallPut(from_stack_1v)
  loc_B02131: FFree1Str var_90
  loc_B02134: FFreeAd var_9C = ""
  loc_B0213B: FFree1Var var_C0 = ""
  loc_B0213E: FLdRfVar var_C0
  loc_B02141: FLdRfVar var_B0
  loc_B02144: LitVarStr var_AC, "NurePers"
  loc_B02149: PopAdLdVar
  loc_B0214A: FLdRfVar var_9C
  loc_B0214D: FMemLdPr
  loc_B02152:  = Me.Fields
  loc_B02157: FLdPr var_9C
  loc_B0215A: from_stack_2 = Me.Item(from_stack_1)
  loc_B0215F: FLdPr var_B0
  loc_B02162:  = Me.Value
  loc_B02167: FLdRfVar var_C0
  loc_B0216A: CStrVarTmp
  loc_B0216B: FStStrNoPop var_90
  loc_B0216E: ILdPr
  loc_B02171: Call tblPersona.NumeCasaPut(from_stack_1v)
  loc_B02176: FFree1Str var_90
  loc_B02179: FFreeAd var_9C = ""
  loc_B02180: FFree1Var var_C0 = ""
  loc_B02183: FLdRfVar var_C0
  loc_B02186: FLdRfVar var_B0
  loc_B02189: LitVarStr var_AC, "DelrPers"
  loc_B0218E: PopAdLdVar
  loc_B0218F: FLdRfVar var_9C
  loc_B02192: FMemLdPr
  loc_B02197:  = Me.Fields
  loc_B0219C: FLdPr var_9C
  loc_B0219F: from_stack_2 = Me.Item(from_stack_1)
  loc_B021A4: FLdPr var_B0
  loc_B021A7:  = Me.Value
  loc_B021AC: FLdRfVar var_C0
  loc_B021AF: CStrVarTmp
  loc_B021B0: FStStrNoPop var_90
  loc_B021B3: ILdPr
  loc_B021B6: Call tblPersona.DetaLocaPut(from_stack_1v)
  loc_B021BB: FFree1Str var_90
  loc_B021BE: FFreeAd var_9C = ""
  loc_B021C5: FFree1Var var_C0 = ""
  loc_B021C8: LitI2_Byte &HFF
  loc_B021CA: FStI2 var_86
  loc_B021CD: Branch loc_B02217
  loc_B021D0: LitStr "La persona NO EXISTE. Verifique..."
  loc_B021D3: ILdPr
  loc_B021D6: Call tblPersona.MsgErrorPut(from_stack_1v)
  loc_B021DB: LitStr vbNullString
  loc_B021DE: ILdPr
  loc_B021E1: Call tblPersona.CucuPersPut(from_stack_1v)
  loc_B021E6: LitStr vbNullString
  loc_B021E9: ILdPr
  loc_B021EC: Call tblPersona.DetaPersPut(from_stack_1v)
  loc_B021F1: LitStr vbNullString
  loc_B021F4: ILdPr
  loc_B021F7: Call tblPersona.DetaCallPut(from_stack_1v)
  loc_B021FC: LitStr vbNullString
  loc_B021FF: ILdPr
  loc_B02202: Call tblPersona.NumeCasaPut(from_stack_1v)
  loc_B02207: LitStr vbNullString
  loc_B0220A: ILdPr
  loc_B0220D: Call tblPersona.DetaLocaPut(from_stack_1v)
  loc_B02212: LitI2_Byte 0
  loc_B02214: FStI2 var_86
  loc_B02217: ExitProcI2
End Function

Private Function Proc_270_7_B3292C(arg_C) 'B3292C
  'Data Table: 4C25A4
  loc_B3264C: LitStr "SELECT * FROM difunto"
  loc_B3264F: LitStr " WHERE CodiDifu = "
  loc_B32652: ConcatStr
  loc_B32653: FStStrNoPop var_8C
  loc_B32656: ILdRf arg_C
  loc_B32659: CStrI4
  loc_B3265B: FStStrNoPop var_90
  loc_B3265E: ConcatStr
  loc_B3265F: FStStrNoPop var_94
  loc_B32662: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B32667: FFreeStr var_8C = "": var_90 = ""
  loc_B32670: FLdRfVar var_98
  loc_B32673: FMemLdPr
  loc_B32678:  = Me.RecordCount
  loc_B3267D: ILdRf var_98
  loc_B32680: LitI4 0
  loc_B32685: GtI4
  loc_B32686: BranchF loc_B328CC
  loc_B32689: LitStr vbNullString
  loc_B3268C: ILdPr
  loc_B3268F: Call tblDifunto.MsgErrorPut(from_stack_1v)
  loc_B32694: FLdRfVar var_C0
  loc_B32697: FLdRfVar var_B0
  loc_B3269A: LitVarStr var_AC, "CodiDifu"
  loc_B3269F: PopAdLdVar
  loc_B326A0: FLdRfVar var_9C
  loc_B326A3: FMemLdPr
  loc_B326A8:  = Me.Fields
  loc_B326AD: FLdPr var_9C
  loc_B326B0: from_stack_2 = Me.Item(from_stack_1)
  loc_B326B5: FLdPr var_B0
  loc_B326B8:  = Me.Value
  loc_B326BD: FLdRfVar var_C0
  loc_B326C0: CStrVarTmp
  loc_B326C1: FStStrNoPop var_8C
  loc_B326C4: ILdPr
  loc_B326C7: Call tblDifunto.CodiDifuPut(from_stack_1v)
  loc_B326CC: FFree1Str var_8C
  loc_B326CF: FFreeAd var_9C = ""
  loc_B326D6: FFree1Var var_C0 = ""
  loc_B326D9: FLdRfVar var_C0
  loc_B326DC: FLdRfVar var_B0
  loc_B326DF: LitVarStr var_AC, "CodiTise"
  loc_B326E4: PopAdLdVar
  loc_B326E5: FLdRfVar var_9C
  loc_B326E8: FMemLdPr
  loc_B326ED:  = Me.Fields
  loc_B326F2: FLdPr var_9C
  loc_B326F5: from_stack_2 = Me.Item(from_stack_1)
  loc_B326FA: FLdPr var_B0
  loc_B326FD:  = Me.Value
  loc_B32702: FLdRfVar var_C0
  loc_B32705: CStrVarTmp
  loc_B32706: FStStrNoPop var_8C
  loc_B32709: ILdPr
  loc_B3270C: Call tblDifunto.CodiTisePut(from_stack_1v)
  loc_B32711: FFree1Str var_8C
  loc_B32714: FFreeAd var_9C = ""
  loc_B3271B: FFree1Var var_C0 = ""
  loc_B3271E: FLdRfVar var_C0
  loc_B32721: FLdRfVar var_B0
  loc_B32724: LitVarStr var_AC, "SeccDifu"
  loc_B32729: PopAdLdVar
  loc_B3272A: FLdRfVar var_9C
  loc_B3272D: FMemLdPr
  loc_B32732:  = Me.Fields
  loc_B32737: FLdPr var_9C
  loc_B3273A: from_stack_2 = Me.Item(from_stack_1)
  loc_B3273F: FLdPr var_B0
  loc_B32742:  = Me.Value
  loc_B32747: FLdRfVar var_C0
  loc_B3274A: CStrVarTmp
  loc_B3274B: FStStrNoPop var_8C
  loc_B3274E: ILdPr
  loc_B32751: Call tblDifunto.SeccDifuPut(from_stack_1v)
  loc_B32756: FFree1Str var_8C
  loc_B32759: FFreeAd var_9C = ""
  loc_B32760: FFree1Var var_C0 = ""
  loc_B32763: FLdRfVar var_C0
  loc_B32766: FLdRfVar var_B0
  loc_B32769: LitVarStr var_AC, "FilaDifu"
  loc_B3276E: PopAdLdVar
  loc_B3276F: FLdRfVar var_9C
  loc_B32772: FMemLdPr
  loc_B32777:  = Me.Fields
  loc_B3277C: FLdPr var_9C
  loc_B3277F: from_stack_2 = Me.Item(from_stack_1)
  loc_B32784: FLdPr var_B0
  loc_B32787:  = Me.Value
  loc_B3278C: FLdRfVar var_C0
  loc_B3278F: CStrVarTmp
  loc_B32790: FStStrNoPop var_8C
  loc_B32793: ILdPr
  loc_B32796: Call tblDifunto.FilaDifuPut(from_stack_1v)
  loc_B3279B: FFree1Str var_8C
  loc_B3279E: FFreeAd var_9C = ""
  loc_B327A5: FFree1Var var_C0 = ""
  loc_B327A8: FLdRfVar var_C0
  loc_B327AB: FLdRfVar var_B0
  loc_B327AE: LitVarStr var_AC, "NumeDifu"
  loc_B327B3: PopAdLdVar
  loc_B327B4: FLdRfVar var_9C
  loc_B327B7: FMemLdPr
  loc_B327BC:  = Me.Fields
  loc_B327C1: FLdPr var_9C
  loc_B327C4: from_stack_2 = Me.Item(from_stack_1)
  loc_B327C9: FLdPr var_B0
  loc_B327CC:  = Me.Value
  loc_B327D1: FLdRfVar var_C0
  loc_B327D4: CStrVarTmp
  loc_B327D5: FStStrNoPop var_8C
  loc_B327D8: ILdPr
  loc_B327DB: Call tblDifunto.NumeDifuPut(from_stack_1v)
  loc_B327E0: FFree1Str var_8C
  loc_B327E3: FFreeAd var_9C = ""
  loc_B327EA: FFree1Var var_C0 = ""
  loc_B327ED: FLdRfVar var_C0
  loc_B327F0: FLdRfVar var_B0
  loc_B327F3: LitVarStr var_AC, "PerpDifu"
  loc_B327F8: PopAdLdVar
  loc_B327F9: FLdRfVar var_9C
  loc_B327FC: FMemLdPr
  loc_B32801:  = Me.Fields
  loc_B32806: FLdPr var_9C
  loc_B32809: from_stack_2 = Me.Item(from_stack_1)
  loc_B3280E: FLdPr var_B0
  loc_B32811:  = Me.Value
  loc_B32816: FLdRfVar var_C0
  loc_B32819: CStrVarTmp
  loc_B3281A: FStStrNoPop var_8C
  loc_B3281D: ILdPr
  loc_B32820: Call tblDifunto.PerpDifuPut(from_stack_1v)
  loc_B32825: FFree1Str var_8C
  loc_B32828: FFreeAd var_9C = ""
  loc_B3282F: FFree1Var var_C0 = ""
  loc_B32832: FLdRfVar var_B0
  loc_B32835: LitVarStr var_AC, "FeveDifu"
  loc_B3283A: PopAdLdVar
  loc_B3283B: FLdRfVar var_9C
  loc_B3283E: FMemLdPr
  loc_B32843:  = Me.Fields
  loc_B32848: FLdPr var_9C
  loc_B3284B: from_stack_2 = Me.Item(from_stack_1)
  loc_B32850: FLdZeroAd var_B0
  loc_B32853: CVarAd
  loc_B32857: ImpAdCallI2 IsNull()
  loc_B3285C: FStI2 var_12A
  loc_B3285F: FLdRfVar var_D8
  loc_B32862: LitVarStr var_D4, "FeveDifu"
  loc_B32867: PopAdLdVar
  loc_B32868: FLdRfVar var_C4
  loc_B3286B: FMemLdPr
  loc_B32870:  = Me.Fields
  loc_B32875: FLdPr var_C4
  loc_B32878: from_stack_2 = Me.Item(from_stack_1)
  loc_B3287D: FLdZeroAd var_D8
  loc_B32880: CVarAd
  loc_B32884: LitVarStr var_F8, vbNullString
  loc_B32889: FStVarCopyObj var_108
  loc_B3288C: FLdRfVar var_108
  loc_B3288F: FLdI2 var_12A
  loc_B32892: CVarBoolI2 var_E8
  loc_B32896: FLdRfVar var_128
  loc_B32899: ImpAdCallFPR4  = IIf(, , )
  loc_B3289E: FLdRfVar var_128
  loc_B328A1: CStrVarVal var_8C
  loc_B328A5: ILdPr
  loc_B328A8: Call tblDifunto.FeveDifuPut(from_stack_1v)
  loc_B328AD: FFree1Str var_8C
  loc_B328B0: FFreeAd var_9C = ""
  loc_B328B7: FFreeVar var_C0 = "": var_E8 = "": var_108 = "": var_118 = ""
  loc_B328C4: LitI2_Byte &HFF
  loc_B328C6: FStI2 var_86
  loc_B328C9: Branch loc_B32929
  loc_B328CC: LitStr "El registro de difunto NO EXISTE. Verifique..."
  loc_B328CF: ILdPr
  loc_B328D2: Call tblDifunto.MsgErrorPut(from_stack_1v)
  loc_B328D7: LitStr vbNullString
  loc_B328DA: ILdPr
  loc_B328DD: Call tblDifunto.CodiDifuPut(from_stack_1v)
  loc_B328E2: LitStr vbNullString
  loc_B328E5: ILdPr
  loc_B328E8: Call tblDifunto.CodiTisePut(from_stack_1v)
  loc_B328ED: LitStr vbNullString
  loc_B328F0: ILdPr
  loc_B328F3: Call tblDifunto.SeccDifuPut(from_stack_1v)
  loc_B328F8: LitStr vbNullString
  loc_B328FB: ILdPr
  loc_B328FE: Call tblDifunto.FilaDifuPut(from_stack_1v)
  loc_B32903: LitStr vbNullString
  loc_B32906: ILdPr
  loc_B32909: Call tblDifunto.NumeDifuPut(from_stack_1v)
  loc_B3290E: LitStr vbNullString
  loc_B32911: ILdPr
  loc_B32914: Call tblDifunto.PerpDifuPut(from_stack_1v)
  loc_B32919: LitStr vbNullString
  loc_B3291C: ILdPr
  loc_B3291F: Call tblDifunto.FeveDifuPut(from_stack_1v)
  loc_B32924: LitI2_Byte 0
  loc_B32926: FStI2 var_86
  loc_B32929: ExitProcI2
  loc_B3292A: VCallAd Control_ID_
End Function

Private Function Proc_270_8_B4BB24(arg_C) 'B4BB24
  'Data Table: 4C25A4
  loc_B4B7A8: ILdRf arg_C
  loc_B4B7AB: FStStrCopy var_8C
  loc_B4B7AE: LitStr "SELECT * FROM difunto"
  loc_B4B7B1: LitStr " WHERE CodiDifu = '"
  loc_B4B7B4: ConcatStr
  loc_B4B7B5: FStStrNoPop var_90
  loc_B4B7B8: ILdRf var_8C
  loc_B4B7BB: ConcatStr
  loc_B4B7BC: FStStrNoPop var_94
  loc_B4B7BF: LitStr "'"
  loc_B4B7C2: ConcatStr
  loc_B4B7C3: FStStrNoPop var_98
  loc_B4B7C6: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B4B7CB: FFreeStr var_90 = "": var_94 = ""
  loc_B4B7D4: FLdRfVar var_9C
  loc_B4B7D7: FMemLdPr
  loc_B4B7DC:  = Me.RecordCount
  loc_B4B7E1: ILdRf var_9C
  loc_B4B7E4: LitI4 0
  loc_B4B7E9: GtI4
  loc_B4B7EA: BranchF loc_B4BABA
  loc_B4B7ED: LitStr vbNullString
  loc_B4B7F0: ILdPr
  loc_B4B7F3: Call tblDifunto.MsgErrorPut(from_stack_1v)
  loc_B4B7F8: FLdRfVar var_C4
  loc_B4B7FB: FLdRfVar var_B4
  loc_B4B7FE: LitVarStr var_B0, "CodiDifu"
  loc_B4B803: PopAdLdVar
  loc_B4B804: FLdRfVar var_A0
  loc_B4B807: FMemLdPr
  loc_B4B80C:  = Me.Fields
  loc_B4B811: FLdPr var_A0
  loc_B4B814: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B819: FLdPr var_B4
  loc_B4B81C:  = Me.Value
  loc_B4B821: FLdRfVar var_C4
  loc_B4B824: CStrVarTmp
  loc_B4B825: FStStrNoPop var_90
  loc_B4B828: ILdPr
  loc_B4B82B: Call tblDifunto.CodiDifuPut(from_stack_1v)
  loc_B4B830: FFree1Str var_90
  loc_B4B833: FFreeAd var_A0 = ""
  loc_B4B83A: FFree1Var var_C4 = ""
  loc_B4B83D: FLdRfVar var_C4
  loc_B4B840: FLdRfVar var_B4
  loc_B4B843: LitVarStr var_B0, "CodiCeme"
  loc_B4B848: PopAdLdVar
  loc_B4B849: FLdRfVar var_A0
  loc_B4B84C: FMemLdPr
  loc_B4B851:  = Me.Fields
  loc_B4B856: FLdPr var_A0
  loc_B4B859: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B85E: FLdPr var_B4
  loc_B4B861:  = Me.Value
  loc_B4B866: FLdRfVar var_C4
  loc_B4B869: CStrVarTmp
  loc_B4B86A: FStStrNoPop var_90
  loc_B4B86D: ILdPr
  loc_B4B870: Call tblDifunto.CodiCemePut(from_stack_1v)
  loc_B4B875: FFree1Str var_90
  loc_B4B878: FFreeAd var_A0 = ""
  loc_B4B87F: FFree1Var var_C4 = ""
  loc_B4B882: FLdRfVar var_C4
  loc_B4B885: FLdRfVar var_B4
  loc_B4B888: LitVarStr var_B0, "CodiTise"
  loc_B4B88D: PopAdLdVar
  loc_B4B88E: FLdRfVar var_A0
  loc_B4B891: FMemLdPr
  loc_B4B896:  = Me.Fields
  loc_B4B89B: FLdPr var_A0
  loc_B4B89E: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B8A3: FLdPr var_B4
  loc_B4B8A6:  = Me.Value
  loc_B4B8AB: FLdRfVar var_C4
  loc_B4B8AE: CStrVarTmp
  loc_B4B8AF: FStStrNoPop var_90
  loc_B4B8B2: ILdPr
  loc_B4B8B5: Call tblDifunto.CodiTisePut(from_stack_1v)
  loc_B4B8BA: FFree1Str var_90
  loc_B4B8BD: FFreeAd var_A0 = ""
  loc_B4B8C4: FFree1Var var_C4 = ""
  loc_B4B8C7: FLdRfVar var_C4
  loc_B4B8CA: FLdRfVar var_B4
  loc_B4B8CD: LitVarStr var_B0, "SeccDifu"
  loc_B4B8D2: PopAdLdVar
  loc_B4B8D3: FLdRfVar var_A0
  loc_B4B8D6: FMemLdPr
  loc_B4B8DB:  = Me.Fields
  loc_B4B8E0: FLdPr var_A0
  loc_B4B8E3: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B8E8: FLdPr var_B4
  loc_B4B8EB:  = Me.Value
  loc_B4B8F0: FLdRfVar var_C4
  loc_B4B8F3: CStrVarTmp
  loc_B4B8F4: FStStrNoPop var_90
  loc_B4B8F7: ILdPr
  loc_B4B8FA: Call tblDifunto.SeccDifuPut(from_stack_1v)
  loc_B4B8FF: FFree1Str var_90
  loc_B4B902: FFreeAd var_A0 = ""
  loc_B4B909: FFree1Var var_C4 = ""
  loc_B4B90C: FLdRfVar var_C4
  loc_B4B90F: FLdRfVar var_B4
  loc_B4B912: LitVarStr var_B0, "FilaDifu"
  loc_B4B917: PopAdLdVar
  loc_B4B918: FLdRfVar var_A0
  loc_B4B91B: FMemLdPr
  loc_B4B920:  = Me.Fields
  loc_B4B925: FLdPr var_A0
  loc_B4B928: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B92D: FLdPr var_B4
  loc_B4B930:  = Me.Value
  loc_B4B935: FLdRfVar var_C4
  loc_B4B938: CStrVarTmp
  loc_B4B939: FStStrNoPop var_90
  loc_B4B93C: ILdPr
  loc_B4B93F: Call tblDifunto.FilaDifuPut(from_stack_1v)
  loc_B4B944: FFree1Str var_90
  loc_B4B947: FFreeAd var_A0 = ""
  loc_B4B94E: FFree1Var var_C4 = ""
  loc_B4B951: FLdRfVar var_C4
  loc_B4B954: FLdRfVar var_B4
  loc_B4B957: LitVarStr var_B0, "NumeDifu"
  loc_B4B95C: PopAdLdVar
  loc_B4B95D: FLdRfVar var_A0
  loc_B4B960: FMemLdPr
  loc_B4B965:  = Me.Fields
  loc_B4B96A: FLdPr var_A0
  loc_B4B96D: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B972: FLdPr var_B4
  loc_B4B975:  = Me.Value
  loc_B4B97A: FLdRfVar var_C4
  loc_B4B97D: CStrVarTmp
  loc_B4B97E: FStStrNoPop var_90
  loc_B4B981: ILdPr
  loc_B4B984: Call tblDifunto.NumeDifuPut(from_stack_1v)
  loc_B4B989: FFree1Str var_90
  loc_B4B98C: FFreeAd var_A0 = ""
  loc_B4B993: FFree1Var var_C4 = ""
  loc_B4B996: FLdRfVar var_C4
  loc_B4B999: FLdRfVar var_B4
  loc_B4B99C: LitVarStr var_B0, "PerpDifu"
  loc_B4B9A1: PopAdLdVar
  loc_B4B9A2: FLdRfVar var_A0
  loc_B4B9A5: FMemLdPr
  loc_B4B9AA:  = Me.Fields
  loc_B4B9AF: FLdPr var_A0
  loc_B4B9B2: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B9B7: FLdPr var_B4
  loc_B4B9BA:  = Me.Value
  loc_B4B9BF: FLdRfVar var_C4
  loc_B4B9C2: CStrVarTmp
  loc_B4B9C3: FStStrNoPop var_90
  loc_B4B9C6: ILdPr
  loc_B4B9C9: Call tblDifunto.PerpDifuPut(from_stack_1v)
  loc_B4B9CE: FFree1Str var_90
  loc_B4B9D1: FFreeAd var_A0 = ""
  loc_B4B9D8: FFree1Var var_C4 = ""
  loc_B4B9DB: FLdRfVar var_C4
  loc_B4B9DE: FLdRfVar var_B4
  loc_B4B9E1: LitVarStr var_B0, "ParvDifu"
  loc_B4B9E6: PopAdLdVar
  loc_B4B9E7: FLdRfVar var_A0
  loc_B4B9EA: FMemLdPr
  loc_B4B9EF:  = Me.Fields
  loc_B4B9F4: FLdPr var_A0
  loc_B4B9F7: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B9FC: FLdPr var_B4
  loc_B4B9FF:  = Me.Value
  loc_B4BA04: FLdRfVar var_C4
  loc_B4BA07: CStrVarTmp
  loc_B4BA08: FStStrNoPop var_90
  loc_B4BA0B: ILdPr
  loc_B4BA0E: Call tblDifunto.ParvDifuPut(from_stack_1v)
  loc_B4BA13: FFree1Str var_90
  loc_B4BA16: FFreeAd var_A0 = ""
  loc_B4BA1D: FFree1Var var_C4 = ""
  loc_B4BA20: FLdRfVar var_B4
  loc_B4BA23: LitVarStr var_B0, "FeveDifu"
  loc_B4BA28: PopAdLdVar
  loc_B4BA29: FLdRfVar var_A0
  loc_B4BA2C: FMemLdPr
  loc_B4BA31:  = Me.Fields
  loc_B4BA36: FLdPr var_A0
  loc_B4BA39: from_stack_2 = Me.Item(from_stack_1)
  loc_B4BA3E: FLdZeroAd var_B4
  loc_B4BA41: CVarAd
  loc_B4BA45: ImpAdCallI2 IsNull()
  loc_B4BA4A: FStI2 var_12E
  loc_B4BA4D: FLdRfVar var_DC
  loc_B4BA50: LitVarStr var_D8, "FeveDifu"
  loc_B4BA55: PopAdLdVar
  loc_B4BA56: FLdRfVar var_C8
  loc_B4BA59: FMemLdPr
  loc_B4BA5E:  = Me.Fields
  loc_B4BA63: FLdPr var_C8
  loc_B4BA66: from_stack_2 = Me.Item(from_stack_1)
  loc_B4BA6B: FLdZeroAd var_DC
  loc_B4BA6E: CVarAd
  loc_B4BA72: LitVarStr var_FC, vbNullString
  loc_B4BA77: FStVarCopyObj var_10C
  loc_B4BA7A: FLdRfVar var_10C
  loc_B4BA7D: FLdI2 var_12E
  loc_B4BA80: CVarBoolI2 var_EC
  loc_B4BA84: FLdRfVar var_12C
  loc_B4BA87: ImpAdCallFPR4  = IIf(, , )
  loc_B4BA8C: FLdRfVar var_12C
  loc_B4BA8F: CStrVarVal var_90
  loc_B4BA93: ILdPr
  loc_B4BA96: Call tblDifunto.FeveDifuPut(from_stack_1v)
  loc_B4BA9B: FFree1Str var_90
  loc_B4BA9E: FFreeAd var_A0 = ""
  loc_B4BAA5: FFreeVar var_C4 = "": var_EC = "": var_10C = "": var_11C = ""
  loc_B4BAB2: LitI2_Byte &HFF
  loc_B4BAB4: FStI2 var_86
  loc_B4BAB7: Branch loc_B4BB22
  loc_B4BABA: LitStr "El registro de difunto NO EXISTE. Verifique..."
  loc_B4BABD: ILdPr
  loc_B4BAC0: Call tblDifunto.MsgErrorPut(from_stack_1v)
  loc_B4BAC5: LitStr vbNullString
  loc_B4BAC8: ILdPr
  loc_B4BACB: Call tblDifunto.CodiDifuPut(from_stack_1v)
  loc_B4BAD0: LitStr vbNullString
  loc_B4BAD3: ILdPr
  loc_B4BAD6: Call tblDifunto.CodiCemePut(from_stack_1v)
  loc_B4BADB: LitStr vbNullString
  loc_B4BADE: ILdPr
  loc_B4BAE1: Call tblDifunto.CodiTisePut(from_stack_1v)
  loc_B4BAE6: LitStr vbNullString
  loc_B4BAE9: ILdPr
  loc_B4BAEC: Call tblDifunto.SeccDifuPut(from_stack_1v)
  loc_B4BAF1: LitStr vbNullString
  loc_B4BAF4: ILdPr
  loc_B4BAF7: Call tblDifunto.FilaDifuPut(from_stack_1v)
  loc_B4BAFC: LitStr vbNullString
  loc_B4BAFF: ILdPr
  loc_B4BB02: Call tblDifunto.NumeDifuPut(from_stack_1v)
  loc_B4BB07: LitStr vbNullString
  loc_B4BB0A: ILdPr
  loc_B4BB0D: Call tblDifunto.PerpDifuPut(from_stack_1v)
  loc_B4BB12: LitStr vbNullString
  loc_B4BB15: ILdPr
  loc_B4BB18: Call tblDifunto.FeveDifuPut(from_stack_1v)
  loc_B4BB1D: LitI2_Byte 0
  loc_B4BB1F: FStI2 var_86
  loc_B4BB22: ExitProcI2
End Function

Private Function Proc_270_9_B4BF04(arg_C) 'B4BF04
  'Data Table: 4C25A4
  loc_B4BB84: LitStr "SELECT * FROM difunto"
  loc_B4BB87: LitStr " WHERE CodiDifu = "
  loc_B4BB8A: ConcatStr
  loc_B4BB8B: FStStrNoPop var_8C
  loc_B4BB8E: ILdRf arg_C
  loc_B4BB91: CStrI4
  loc_B4BB93: FStStrNoPop var_90
  loc_B4BB96: ConcatStr
  loc_B4BB97: FStStrNoPop var_94
  loc_B4BB9A: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B4BB9F: FFreeStr var_8C = "": var_90 = ""
  loc_B4BBA8: FLdRfVar var_98
  loc_B4BBAB: FMemLdPr
  loc_B4BBB0:  = Me.RecordCount
  loc_B4BBB5: ILdRf var_98
  loc_B4BBB8: LitI4 0
  loc_B4BBBD: GtI4
  loc_B4BBBE: BranchF loc_B4BE8E
  loc_B4BBC1: LitStr vbNullString
  loc_B4BBC4: ILdPr
  loc_B4BBC7: Call tblDifunto.MsgErrorPut(from_stack_1v)
  loc_B4BBCC: FLdRfVar var_C0
  loc_B4BBCF: FLdRfVar var_B0
  loc_B4BBD2: LitVarStr var_AC, "CodiDifu"
  loc_B4BBD7: PopAdLdVar
  loc_B4BBD8: FLdRfVar var_9C
  loc_B4BBDB: FMemLdPr
  loc_B4BBE0:  = Me.Fields
  loc_B4BBE5: FLdPr var_9C
  loc_B4BBE8: from_stack_2 = Me.Item(from_stack_1)
  loc_B4BBED: FLdPr var_B0
  loc_B4BBF0:  = Me.Value
  loc_B4BBF5: FLdRfVar var_C0
  loc_B4BBF8: CStrVarTmp
  loc_B4BBF9: FStStrNoPop var_8C
  loc_B4BBFC: ILdPr
  loc_B4BBFF: Call tblDifunto.CodiDifuPut(from_stack_1v)
  loc_B4BC04: FFree1Str var_8C
  loc_B4BC07: FFreeAd var_9C = ""
  loc_B4BC0E: FFree1Var var_C0 = ""
  loc_B4BC11: FLdRfVar var_C0
  loc_B4BC14: FLdRfVar var_B0
  loc_B4BC17: LitVarStr var_AC, "CodiCeme"
  loc_B4BC1C: PopAdLdVar
  loc_B4BC1D: FLdRfVar var_9C
  loc_B4BC20: FMemLdPr
  loc_B4BC25:  = Me.Fields
  loc_B4BC2A: FLdPr var_9C
  loc_B4BC2D: from_stack_2 = Me.Item(from_stack_1)
  loc_B4BC32: FLdPr var_B0
  loc_B4BC35:  = Me.Value
  loc_B4BC3A: FLdRfVar var_C0
  loc_B4BC3D: CStrVarTmp
  loc_B4BC3E: FStStrNoPop var_8C
  loc_B4BC41: ILdPr
  loc_B4BC44: Call tblDifunto.CodiCemePut(from_stack_1v)
  loc_B4BC49: FFree1Str var_8C
  loc_B4BC4C: FFreeAd var_9C = ""
  loc_B4BC53: FFree1Var var_C0 = ""
  loc_B4BC56: FLdRfVar var_C0
  loc_B4BC59: FLdRfVar var_B0
  loc_B4BC5C: LitVarStr var_AC, "CodiTise"
  loc_B4BC61: PopAdLdVar
  loc_B4BC62: FLdRfVar var_9C
  loc_B4BC65: FMemLdPr
  loc_B4BC6A:  = Me.Fields
  loc_B4BC6F: FLdPr var_9C
  loc_B4BC72: from_stack_2 = Me.Item(from_stack_1)
  loc_B4BC77: FLdPr var_B0
  loc_B4BC7A:  = Me.Value
  loc_B4BC7F: FLdRfVar var_C0
  loc_B4BC82: CStrVarTmp
  loc_B4BC83: FStStrNoPop var_8C
  loc_B4BC86: ILdPr
  loc_B4BC89: Call tblDifunto.CodiTisePut(from_stack_1v)
  loc_B4BC8E: FFree1Str var_8C
  loc_B4BC91: FFreeAd var_9C = ""
  loc_B4BC98: FFree1Var var_C0 = ""
  loc_B4BC9B: FLdRfVar var_C0
  loc_B4BC9E: FLdRfVar var_B0
  loc_B4BCA1: LitVarStr var_AC, "NumeDifu"
  loc_B4BCA6: PopAdLdVar
  loc_B4BCA7: FLdRfVar var_9C
  loc_B4BCAA: FMemLdPr
  loc_B4BCAF:  = Me.Fields
  loc_B4BCB4: FLdPr var_9C
  loc_B4BCB7: from_stack_2 = Me.Item(from_stack_1)
  loc_B4BCBC: FLdPr var_B0
  loc_B4BCBF:  = Me.Value
  loc_B4BCC4: FLdRfVar var_C0
  loc_B4BCC7: CStrVarTmp
  loc_B4BCC8: FStStrNoPop var_8C
  loc_B4BCCB: ILdPr
  loc_B4BCCE: Call tblDifunto.NumeDifuPut(from_stack_1v)
  loc_B4BCD3: FFree1Str var_8C
  loc_B4BCD6: FFreeAd var_9C = ""
  loc_B4BCDD: FFree1Var var_C0 = ""
  loc_B4BCE0: FLdRfVar var_C0
  loc_B4BCE3: FLdRfVar var_B0
  loc_B4BCE6: LitVarStr var_AC, "LetrDifu"
  loc_B4BCEB: PopAdLdVar
  loc_B4BCEC: FLdRfVar var_9C
  loc_B4BCEF: FMemLdPr
  loc_B4BCF4:  = Me.Fields
  loc_B4BCF9: FLdPr var_9C
  loc_B4BCFC: from_stack_2 = Me.Item(from_stack_1)
  loc_B4BD01: FLdPr var_B0
  loc_B4BD04:  = Me.Value
  loc_B4BD09: FLdRfVar var_C0
  loc_B4BD0C: CStrVarTmp
  loc_B4BD0D: FStStrNoPop var_8C
  loc_B4BD10: ILdPr
  loc_B4BD13: Call tblDifunto.LetrDifuPut(from_stack_1v)
  loc_B4BD18: FFree1Str var_8C
  loc_B4BD1B: FFreeAd var_9C = ""
  loc_B4BD22: FFree1Var var_C0 = ""
  loc_B4BD25: FLdRfVar var_C0
  loc_B4BD28: FLdRfVar var_B0
  loc_B4BD2B: LitVarStr var_AC, "SeccDifu"
  loc_B4BD30: PopAdLdVar
  loc_B4BD31: FLdRfVar var_9C
  loc_B4BD34: FMemLdPr
  loc_B4BD39:  = Me.Fields
  loc_B4BD3E: FLdPr var_9C
  loc_B4BD41: from_stack_2 = Me.Item(from_stack_1)
  loc_B4BD46: FLdPr var_B0
  loc_B4BD49:  = Me.Value
  loc_B4BD4E: FLdRfVar var_C0
  loc_B4BD51: CStrVarTmp
  loc_B4BD52: FStStrNoPop var_8C
  loc_B4BD55: ILdPr
  loc_B4BD58: Call tblDifunto.SeccDifuPut(from_stack_1v)
  loc_B4BD5D: FFree1Str var_8C
  loc_B4BD60: FFreeAd var_9C = ""
  loc_B4BD67: FFree1Var var_C0 = ""
  loc_B4BD6A: FLdRfVar var_C0
  loc_B4BD6D: FLdRfVar var_B0
  loc_B4BD70: LitVarStr var_AC, "CampDifu"
  loc_B4BD75: PopAdLdVar
  loc_B4BD76: FLdRfVar var_9C
  loc_B4BD79: FMemLdPr
  loc_B4BD7E:  = Me.Fields
  loc_B4BD83: FLdPr var_9C
  loc_B4BD86: from_stack_2 = Me.Item(from_stack_1)
  loc_B4BD8B: FLdPr var_B0
  loc_B4BD8E:  = Me.Value
  loc_B4BD93: FLdRfVar var_C0
  loc_B4BD96: CStrVarTmp
  loc_B4BD97: FStStrNoPop var_8C
  loc_B4BD9A: ILdPr
  loc_B4BD9D: Call tblDifunto.CampDifuPut(from_stack_1v)
  loc_B4BDA2: FFree1Str var_8C
  loc_B4BDA5: FFreeAd var_9C = ""
  loc_B4BDAC: FFree1Var var_C0 = ""
  loc_B4BDAF: FLdRfVar var_C0
  loc_B4BDB2: FLdRfVar var_B0
  loc_B4BDB5: LitVarStr var_AC, "PerpDifu"
  loc_B4BDBA: PopAdLdVar
  loc_B4BDBB: FLdRfVar var_9C
  loc_B4BDBE: FMemLdPr
  loc_B4BDC3:  = Me.Fields
  loc_B4BDC8: FLdPr var_9C
  loc_B4BDCB: from_stack_2 = Me.Item(from_stack_1)
  loc_B4BDD0: FLdPr var_B0
  loc_B4BDD3:  = Me.Value
  loc_B4BDD8: FLdRfVar var_C0
  loc_B4BDDB: CStrVarTmp
  loc_B4BDDC: FStStrNoPop var_8C
  loc_B4BDDF: ILdPr
  loc_B4BDE2: Call tblDifunto.PerpDifuPut(from_stack_1v)
  loc_B4BDE7: FFree1Str var_8C
  loc_B4BDEA: FFreeAd var_9C = ""
  loc_B4BDF1: FFree1Var var_C0 = ""
  loc_B4BDF4: FLdRfVar var_B0
  loc_B4BDF7: LitVarStr var_AC, "FeveDifu"
  loc_B4BDFC: PopAdLdVar
  loc_B4BDFD: FLdRfVar var_9C
  loc_B4BE00: FMemLdPr
  loc_B4BE05:  = Me.Fields
  loc_B4BE0A: FLdPr var_9C
  loc_B4BE0D: from_stack_2 = Me.Item(from_stack_1)
  loc_B4BE12: FLdZeroAd var_B0
  loc_B4BE15: CVarAd
  loc_B4BE19: ImpAdCallI2 IsNull()
  loc_B4BE1E: FStI2 var_12A
  loc_B4BE21: FLdRfVar var_D8
  loc_B4BE24: LitVarStr var_D4, "FeveDifu"
  loc_B4BE29: PopAdLdVar
  loc_B4BE2A: FLdRfVar var_C4
  loc_B4BE2D: FMemLdPr
  loc_B4BE32:  = Me.Fields
  loc_B4BE37: FLdPr var_C4
  loc_B4BE3A: from_stack_2 = Me.Item(from_stack_1)
  loc_B4BE3F: FLdZeroAd var_D8
  loc_B4BE42: CVarAd
  loc_B4BE46: LitVarStr var_F8, vbNullString
  loc_B4BE4B: FStVarCopyObj var_108
  loc_B4BE4E: FLdRfVar var_108
  loc_B4BE51: FLdI2 var_12A
  loc_B4BE54: CVarBoolI2 var_E8
  loc_B4BE58: FLdRfVar var_128
  loc_B4BE5B: ImpAdCallFPR4  = IIf(, , )
  loc_B4BE60: FLdRfVar var_128
  loc_B4BE63: CStrVarVal var_8C
  loc_B4BE67: ILdPr
  loc_B4BE6A: Call tblDifunto.FeveDifuPut(from_stack_1v)
  loc_B4BE6F: FFree1Str var_8C
  loc_B4BE72: FFreeAd var_9C = ""
  loc_B4BE79: FFreeVar var_C0 = "": var_E8 = "": var_108 = "": var_118 = ""
  loc_B4BE86: LitI2_Byte &HFF
  loc_B4BE88: FStI2 var_86
  loc_B4BE8B: Branch loc_B4BF01
  loc_B4BE8E: LitStr "El registro de difunto NO EXISTE. Verifique..."
  loc_B4BE91: ILdPr
  loc_B4BE94: Call tblDifunto.MsgErrorPut(from_stack_1v)
  loc_B4BE99: LitStr vbNullString
  loc_B4BE9C: ILdPr
  loc_B4BE9F: Call tblDifunto.CodiDifuPut(from_stack_1v)
  loc_B4BEA4: LitStr vbNullString
  loc_B4BEA7: ILdPr
  loc_B4BEAA: Call tblDifunto.CodiCemePut(from_stack_1v)
  loc_B4BEAF: LitStr vbNullString
  loc_B4BEB2: ILdPr
  loc_B4BEB5: Call tblDifunto.CodiTisePut(from_stack_1v)
  loc_B4BEBA: LitStr vbNullString
  loc_B4BEBD: ILdPr
  loc_B4BEC0: Call tblDifunto.NumeDifuPut(from_stack_1v)
  loc_B4BEC5: LitStr vbNullString
  loc_B4BEC8: ILdPr
  loc_B4BECB: Call tblDifunto.LetrDifuPut(from_stack_1v)
  loc_B4BED0: LitStr vbNullString
  loc_B4BED3: ILdPr
  loc_B4BED6: Call tblDifunto.SeccDifuPut(from_stack_1v)
  loc_B4BEDB: LitStr vbNullString
  loc_B4BEDE: ILdPr
  loc_B4BEE1: Call tblDifunto.CampDifuPut(from_stack_1v)
  loc_B4BEE6: LitStr vbNullString
  loc_B4BEE9: ILdPr
  loc_B4BEEC: Call tblDifunto.PerpDifuPut(from_stack_1v)
  loc_B4BEF1: LitStr vbNullString
  loc_B4BEF4: ILdPr
  loc_B4BEF7: Call tblDifunto.FeveDifuPut(from_stack_1v)
  loc_B4BEFC: LitI2_Byte 0
  loc_B4BEFE: FStI2 var_86
  loc_B4BF01: ExitProcI2
End Function

Private Function Proc_270_10_AFACE0(arg_C, arg_10) 'AFACE0
  'Data Table: 4C25A4
  loc_AFAB1C: ILdRf arg_10
  loc_AFAB1F: FStStrCopy var_8C
  loc_AFAB22: LitStr "SELECT CodiConc, DetaConc, ConcViej, SacuConc FROM concepto "
  loc_AFAB25: LitStr " WHERE PeriInfo = "
  loc_AFAB28: ConcatStr
  loc_AFAB29: FStStrNoPop var_90
  loc_AFAB2C: FLdI2 arg_C
  loc_AFAB2F: CStrUI1
  loc_AFAB31: FStStrNoPop var_94
  loc_AFAB34: ConcatStr
  loc_AFAB35: FStStrNoPop var_98
  loc_AFAB38: LitStr " AND CodiConc = '"
  loc_AFAB3B: ConcatStr
  loc_AFAB3C: FStStrNoPop var_9C
  loc_AFAB3F: ILdRf var_8C
  loc_AFAB42: ConcatStr
  loc_AFAB43: FStStrNoPop var_A0
  loc_AFAB46: LitStr "'"
  loc_AFAB49: ConcatStr
  loc_AFAB4A: FStStrNoPop var_A4
  loc_AFAB4D: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AFAB52: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_AFAB61: FLdRfVar var_A8
  loc_AFAB64: FMemLdPr
  loc_AFAB69:  = Me.RecordCount
  loc_AFAB6E: ILdRf var_A8
  loc_AFAB71: LitI4 0
  loc_AFAB76: GtI4
  loc_AFAB77: BranchF loc_AFACA1
  loc_AFAB7A: LitStr vbNullString
  loc_AFAB7D: ILdPr
  loc_AFAB80: Call tblConcepto.MsgErrorPut(from_stack_1v)
  loc_AFAB85: FLdRfVar var_D0
  loc_AFAB88: FLdRfVar var_C0
  loc_AFAB8B: LitVarStr var_BC, "CodiConc"
  loc_AFAB90: PopAdLdVar
  loc_AFAB91: FLdRfVar var_AC
  loc_AFAB94: FMemLdPr
  loc_AFAB99:  = Me.Fields
  loc_AFAB9E: FLdPr var_AC
  loc_AFABA1: from_stack_2 = Me.Item(from_stack_1)
  loc_AFABA6: FLdPr var_C0
  loc_AFABA9:  = Me.Value
  loc_AFABAE: FLdRfVar var_D0
  loc_AFABB1: CStrVarTmp
  loc_AFABB2: FStStrNoPop var_90
  loc_AFABB5: ILdPr
  loc_AFABB8: Call tblConcepto.CodiConcPut(from_stack_1v)
  loc_AFABBD: FFree1Str var_90
  loc_AFABC0: FFreeAd var_AC = ""
  loc_AFABC7: FFree1Var var_D0 = ""
  loc_AFABCA: FLdRfVar var_D0
  loc_AFABCD: FLdRfVar var_C0
  loc_AFABD0: LitVarStr var_BC, "DetaConc"
  loc_AFABD5: PopAdLdVar
  loc_AFABD6: FLdRfVar var_AC
  loc_AFABD9: FMemLdPr
  loc_AFABDE:  = Me.Fields
  loc_AFABE3: FLdPr var_AC
  loc_AFABE6: from_stack_2 = Me.Item(from_stack_1)
  loc_AFABEB: FLdPr var_C0
  loc_AFABEE:  = Me.Value
  loc_AFABF3: FLdRfVar var_D0
  loc_AFABF6: CStrVarTmp
  loc_AFABF7: FStStrNoPop var_90
  loc_AFABFA: ILdPr
  loc_AFABFD: Call tblConcepto.DetaConcPut(from_stack_1v)
  loc_AFAC02: FFree1Str var_90
  loc_AFAC05: FFreeAd var_AC = ""
  loc_AFAC0C: FFree1Var var_D0 = ""
  loc_AFAC0F: FLdRfVar var_D0
  loc_AFAC12: FLdRfVar var_C0
  loc_AFAC15: LitVarStr var_BC, "ConcViej"
  loc_AFAC1A: PopAdLdVar
  loc_AFAC1B: FLdRfVar var_AC
  loc_AFAC1E: FMemLdPr
  loc_AFAC23:  = Me.Fields
  loc_AFAC28: FLdPr var_AC
  loc_AFAC2B: from_stack_2 = Me.Item(from_stack_1)
  loc_AFAC30: FLdPr var_C0
  loc_AFAC33:  = Me.Value
  loc_AFAC38: FLdRfVar var_D0
  loc_AFAC3B: CStrVarTmp
  loc_AFAC3C: FStStrNoPop var_90
  loc_AFAC3F: ILdPr
  loc_AFAC42: Call tblConcepto.ConcViejPut(from_stack_1v)
  loc_AFAC47: FFree1Str var_90
  loc_AFAC4A: FFreeAd var_AC = ""
  loc_AFAC51: FFree1Var var_D0 = ""
  loc_AFAC54: FLdRfVar var_D0
  loc_AFAC57: FLdRfVar var_C0
  loc_AFAC5A: LitVarStr var_BC, "SacuConc"
  loc_AFAC5F: PopAdLdVar
  loc_AFAC60: FLdRfVar var_AC
  loc_AFAC63: FMemLdPr
  loc_AFAC68:  = Me.Fields
  loc_AFAC6D: FLdPr var_AC
  loc_AFAC70: from_stack_2 = Me.Item(from_stack_1)
  loc_AFAC75: FLdPr var_C0
  loc_AFAC78:  = Me.Value
  loc_AFAC7D: FLdRfVar var_D0
  loc_AFAC80: CStrVarTmp
  loc_AFAC81: FStStrNoPop var_90
  loc_AFAC84: ILdPr
  loc_AFAC87: Call tblConcepto.SacuConcPut(from_stack_1v)
  loc_AFAC8C: FFree1Str var_90
  loc_AFAC8F: FFreeAd var_AC = ""
  loc_AFAC96: FFree1Var var_D0 = ""
  loc_AFAC99: LitI2_Byte &HFF
  loc_AFAC9B: FStI2 var_86
  loc_AFAC9E: Branch loc_AFACDD
  loc_AFACA1: LitStr "El concepto NO EXISTE"
  loc_AFACA4: ILdPr
  loc_AFACA7: Call tblConcepto.MsgErrorPut(from_stack_1v)
  loc_AFACAC: LitStr vbNullString
  loc_AFACAF: ILdPr
  loc_AFACB2: Call tblConcepto.CodiConcPut(from_stack_1v)
  loc_AFACB7: LitStr vbNullString
  loc_AFACBA: ILdPr
  loc_AFACBD: Call tblConcepto.DetaConcPut(from_stack_1v)
  loc_AFACC2: LitStr vbNullString
  loc_AFACC5: ILdPr
  loc_AFACC8: Call tblConcepto.ConcViejPut(from_stack_1v)
  loc_AFACCD: LitStr vbNullString
  loc_AFACD0: ILdPr
  loc_AFACD3: Call tblConcepto.SacuConcPut(from_stack_1v)
  loc_AFACD8: LitI2_Byte 0
  loc_AFACDA: FStI2 var_86
  loc_AFACDD: ExitProcI2
End Function

Private Function Proc_270_11_AFA68C(arg_C, arg_10) 'AFA68C
  'Data Table: 4C25A4
  loc_AFA4C8: ILdRf arg_10
  loc_AFA4CB: FStStrCopy var_8C
  loc_AFA4CE: LitStr "SELECT CodiConc, DetaConc, ConcViej, SacuConc FROM concepto "
  loc_AFA4D1: LitStr " WHERE PeriInfo = "
  loc_AFA4D4: ConcatStr
  loc_AFA4D5: FStStrNoPop var_90
  loc_AFA4D8: FLdI2 arg_C
  loc_AFA4DB: CStrUI1
  loc_AFA4DD: FStStrNoPop var_94
  loc_AFA4E0: ConcatStr
  loc_AFA4E1: FStStrNoPop var_98
  loc_AFA4E4: LitStr " AND CodiConc = '"
  loc_AFA4E7: ConcatStr
  loc_AFA4E8: FStStrNoPop var_9C
  loc_AFA4EB: ILdRf var_8C
  loc_AFA4EE: ConcatStr
  loc_AFA4EF: FStStrNoPop var_A0
  loc_AFA4F2: LitStr "'"
  loc_AFA4F5: ConcatStr
  loc_AFA4F6: FStStrNoPop var_A4
  loc_AFA4F9: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AFA4FE: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_AFA50D: FLdRfVar var_A8
  loc_AFA510: FMemLdPr
  loc_AFA515:  = Me.RecordCount
  loc_AFA51A: ILdRf var_A8
  loc_AFA51D: LitI4 0
  loc_AFA522: GtI4
  loc_AFA523: BranchF loc_AFA64D
  loc_AFA526: LitStr vbNullString
  loc_AFA529: ILdPr
  loc_AFA52C: Call tblConcepto.MsgErrorPut(from_stack_1v)
  loc_AFA531: FLdRfVar var_D0
  loc_AFA534: FLdRfVar var_C0
  loc_AFA537: LitVarStr var_BC, "CodiConc"
  loc_AFA53C: PopAdLdVar
  loc_AFA53D: FLdRfVar var_AC
  loc_AFA540: FMemLdPr
  loc_AFA545:  = Me.Fields
  loc_AFA54A: FLdPr var_AC
  loc_AFA54D: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA552: FLdPr var_C0
  loc_AFA555:  = Me.Value
  loc_AFA55A: FLdRfVar var_D0
  loc_AFA55D: CStrVarTmp
  loc_AFA55E: FStStrNoPop var_90
  loc_AFA561: ILdPr
  loc_AFA564: Call tblConcepto.CodiConcPut(from_stack_1v)
  loc_AFA569: FFree1Str var_90
  loc_AFA56C: FFreeAd var_AC = ""
  loc_AFA573: FFree1Var var_D0 = ""
  loc_AFA576: FLdRfVar var_D0
  loc_AFA579: FLdRfVar var_C0
  loc_AFA57C: LitVarStr var_BC, "DetaConc"
  loc_AFA581: PopAdLdVar
  loc_AFA582: FLdRfVar var_AC
  loc_AFA585: FMemLdPr
  loc_AFA58A:  = Me.Fields
  loc_AFA58F: FLdPr var_AC
  loc_AFA592: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA597: FLdPr var_C0
  loc_AFA59A:  = Me.Value
  loc_AFA59F: FLdRfVar var_D0
  loc_AFA5A2: CStrVarTmp
  loc_AFA5A3: FStStrNoPop var_90
  loc_AFA5A6: ILdPr
  loc_AFA5A9: Call tblConcepto.DetaConcPut(from_stack_1v)
  loc_AFA5AE: FFree1Str var_90
  loc_AFA5B1: FFreeAd var_AC = ""
  loc_AFA5B8: FFree1Var var_D0 = ""
  loc_AFA5BB: FLdRfVar var_D0
  loc_AFA5BE: FLdRfVar var_C0
  loc_AFA5C1: LitVarStr var_BC, "ConcViej"
  loc_AFA5C6: PopAdLdVar
  loc_AFA5C7: FLdRfVar var_AC
  loc_AFA5CA: FMemLdPr
  loc_AFA5CF:  = Me.Fields
  loc_AFA5D4: FLdPr var_AC
  loc_AFA5D7: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA5DC: FLdPr var_C0
  loc_AFA5DF:  = Me.Value
  loc_AFA5E4: FLdRfVar var_D0
  loc_AFA5E7: CStrVarTmp
  loc_AFA5E8: FStStrNoPop var_90
  loc_AFA5EB: ILdPr
  loc_AFA5EE: Call tblConcepto.ConcViejPut(from_stack_1v)
  loc_AFA5F3: FFree1Str var_90
  loc_AFA5F6: FFreeAd var_AC = ""
  loc_AFA5FD: FFree1Var var_D0 = ""
  loc_AFA600: FLdRfVar var_D0
  loc_AFA603: FLdRfVar var_C0
  loc_AFA606: LitVarStr var_BC, "SacuConc"
  loc_AFA60B: PopAdLdVar
  loc_AFA60C: FLdRfVar var_AC
  loc_AFA60F: FMemLdPr
  loc_AFA614:  = Me.Fields
  loc_AFA619: FLdPr var_AC
  loc_AFA61C: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA621: FLdPr var_C0
  loc_AFA624:  = Me.Value
  loc_AFA629: FLdRfVar var_D0
  loc_AFA62C: CStrVarTmp
  loc_AFA62D: FStStrNoPop var_90
  loc_AFA630: ILdPr
  loc_AFA633: Call tblConcepto.SacuConcPut(from_stack_1v)
  loc_AFA638: FFree1Str var_90
  loc_AFA63B: FFreeAd var_AC = ""
  loc_AFA642: FFree1Var var_D0 = ""
  loc_AFA645: LitI2_Byte &HFF
  loc_AFA647: FStI2 var_86
  loc_AFA64A: Branch loc_AFA689
  loc_AFA64D: LitStr "El concepto NO EXISTE"
  loc_AFA650: ILdPr
  loc_AFA653: Call tblConcepto.MsgErrorPut(from_stack_1v)
  loc_AFA658: LitStr vbNullString
  loc_AFA65B: ILdPr
  loc_AFA65E: Call tblConcepto.CodiConcPut(from_stack_1v)
  loc_AFA663: LitStr vbNullString
  loc_AFA666: ILdPr
  loc_AFA669: Call tblConcepto.DetaConcPut(from_stack_1v)
  loc_AFA66E: LitStr vbNullString
  loc_AFA671: ILdPr
  loc_AFA674: Call tblConcepto.ConcViejPut(from_stack_1v)
  loc_AFA679: LitStr vbNullString
  loc_AFA67C: ILdPr
  loc_AFA67F: Call tblConcepto.SacuConcPut(from_stack_1v)
  loc_AFA684: LitI2_Byte 0
  loc_AFA686: FStI2 var_86
  loc_AFA689: ExitProcI2
End Function

Private Function Proc_270_12_C7FB3C(arg_C, arg_10, arg_14) 'C7FB3C
  'Data Table: 4C25A4
  loc_C7E714: ILdRf arg_C
  loc_C7E717: FStStrCopy var_8C
  loc_C7E71A: ILdRf arg_10
  loc_C7E71D: FStStrCopy var_90
  loc_C7E720: ILdRf arg_14
  loc_C7E723: FStStrCopy var_94
  loc_C7E726: ILdRf var_8C
  loc_C7E729: CR8Str
  loc_C7E72B: LitI2_Byte 1
  loc_C7E72D: CR8I2
  loc_C7E72E: EqR4
  loc_C7E72F: BranchF loc_C7ED7C
  loc_C7E732: LitStr "SELECT IFNULL(CUIT,'') cuit, CONCAT('00-',lpad(vpadrones_persona.nro_doc,8,'00000000'),'-0') nro_doc, denominacion, "
  loc_C7E735: LitStr " IFNULL(domicilio.Calle,'') calle_real_nombre, IFNULL(domicilio.NumeCalle,'') calle_real_numero, IFNULL(domicilio.Barrio,'') barrio_real_nombre, "
  loc_C7E738: ConcatStr
  loc_C7E739: FStStrNoPop var_98
  loc_C7E73C: LitStr "  IFNULL(domicilio.Manzana,'') barrio_real_manzana, IFNULL(domicilio.Casa,'') barrio_real_casa, IFNULL(domicilio.Localidad,'') direccion_real_localidad"
  loc_C7E73F: ConcatStr
  loc_C7E740: FStStrNoPop var_9C
  loc_C7E743: LitStr " FROM vpadrones_parcela "
  loc_C7E746: ConcatStr
  loc_C7E747: FStStrNoPop var_A0
  loc_C7E74A: LitStr " INNER JOIN vpadrones_persona ON vpadrones_persona.nro_padron =  vpadrones_parcela.nro_padron"
  loc_C7E74D: ConcatStr
  loc_C7E74E: FStStrNoPop var_A4
  loc_C7E751: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = 1"
  loc_C7E754: ConcatStr
  loc_C7E755: FStStrNoPop var_A8
  loc_C7E758: LitStr " AND domicilio.CodiCome = vpadrones_parcela.nro_padron"
  loc_C7E75B: ConcatStr
  loc_C7E75C: FStStrNoPop var_AC
  loc_C7E75F: LitStr " AND domicilio.Tipo = 'Real'"
  loc_C7E762: ConcatStr
  loc_C7E763: FStStrNoPop var_B0
  loc_C7E766: LitStr " WHERE vpadrones_parcela.nro_padron = '"
  loc_C7E769: ConcatStr
  loc_C7E76A: FStStrNoPop var_B4
  loc_C7E76D: ILdRf var_90
  loc_C7E770: ConcatStr
  loc_C7E771: FStStrNoPop var_B8
  loc_C7E774: LitStr "'"
  loc_C7E777: ConcatStr
  loc_C7E778: FStStrNoPop var_BC
  loc_C7E77B: LitStr " AND principal = 'Si'"
  loc_C7E77E: ConcatStr
  loc_C7E77F: FStStrNoPop var_C0
  loc_C7E782: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_C7E787: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_C7E7A0: FLdRfVar var_C4
  loc_C7E7A3: FMemLdPr
  loc_C7E7A8:  = Me.RecordCount
  loc_C7E7AD: ILdRf var_C4
  loc_C7E7B0: LitI4 0
  loc_C7E7B5: GtI4
  loc_C7E7B6: BranchF loc_C7EA66
  loc_C7E7B9: LitStr vbNullString
  loc_C7E7BC: ILdPr
  loc_C7E7BF: Call tblPersona.MsgErrorPut(from_stack_1v)
  loc_C7E7C4: FLdRfVar var_EC
  loc_C7E7C7: FLdRfVar var_DC
  loc_C7E7CA: LitVarStr var_D8, "cuit"
  loc_C7E7CF: PopAdLdVar
  loc_C7E7D0: FLdRfVar var_C8
  loc_C7E7D3: FMemLdPr
  loc_C7E7D8:  = Me.Fields
  loc_C7E7DD: FLdPr var_C8
  loc_C7E7E0: from_stack_2 = Me.Item(from_stack_1)
  loc_C7E7E5: FLdPr var_DC
  loc_C7E7E8:  = Me.Value
  loc_C7E7ED: FLdRfVar var_124
  loc_C7E7F0: LitVarStr var_120, "nro_doc"
  loc_C7E7F5: PopAdLdVar
  loc_C7E7F6: FLdRfVar var_110
  loc_C7E7F9: FMemLdPr
  loc_C7E7FE:  = Me.Fields
  loc_C7E803: FLdPr var_110
  loc_C7E806: from_stack_2 = Me.Item(from_stack_1)
  loc_C7E80B: FLdRfVar var_13C
  loc_C7E80E: LitVarStr var_138, "cuit"
  loc_C7E813: PopAdLdVar
  loc_C7E814: FLdRfVar var_128
  loc_C7E817: FMemLdPr
  loc_C7E81C:  = Me.Fields
  loc_C7E821: FLdPr var_128
  loc_C7E824: from_stack_2 = Me.Item(from_stack_1)
  loc_C7E829: FLdZeroAd var_13C
  loc_C7E82C: CVarAd
  loc_C7E830: FLdZeroAd var_124
  loc_C7E833: CVarAd
  loc_C7E837: FLdRfVar var_EC
  loc_C7E83A: LitVarStr var_FC, vbNullString
  loc_C7E83F: HardType
  loc_C7E840: EqVar var_10C
  loc_C7E844: FStVar var_14C
  loc_C7E848: FLdRfVar var_14C
  loc_C7E84B: FLdRfVar var_17C
  loc_C7E84E: ImpAdCallFPR4  = IIf(, , )
  loc_C7E853: FLdRfVar var_17C
  loc_C7E856: CStrVarVal var_98
  loc_C7E85A: ILdPr
  loc_C7E85D: Call tblPersona.CucuPersPut(from_stack_1v)
  loc_C7E862: FFree1Str var_98
  loc_C7E865: FFreeAd var_C8 = "": var_DC = "": var_110 = ""
  loc_C7E870: FFreeVar var_EC = "": var_14C = "": var_15C = "": var_16C = ""
  loc_C7E87D: FLdRfVar var_EC
  loc_C7E880: FLdRfVar var_DC
  loc_C7E883: LitVarStr var_D8, "denominacion"
  loc_C7E888: PopAdLdVar
  loc_C7E889: FLdRfVar var_C8
  loc_C7E88C: FMemLdPr
  loc_C7E891:  = Me.Fields
  loc_C7E896: FLdPr var_C8
  loc_C7E899: from_stack_2 = Me.Item(from_stack_1)
  loc_C7E89E: FLdPr var_DC
  loc_C7E8A1:  = Me.Value
  loc_C7E8A6: FLdRfVar var_EC
  loc_C7E8A9: CStrVarTmp
  loc_C7E8AA: FStStrNoPop var_98
  loc_C7E8AD: ILdPr
  loc_C7E8B0: Call tblPersona.DetaPersPut(from_stack_1v)
  loc_C7E8B5: FFree1Str var_98
  loc_C7E8B8: FFreeAd var_C8 = ""
  loc_C7E8BF: FFree1Var var_EC = ""
  loc_C7E8C2: FLdRfVar var_EC
  loc_C7E8C5: FLdRfVar var_DC
  loc_C7E8C8: LitVarStr var_D8, "calle_real_nombre"
  loc_C7E8CD: PopAdLdVar
  loc_C7E8CE: FLdRfVar var_C8
  loc_C7E8D1: FMemLdPr
  loc_C7E8D6:  = Me.Fields
  loc_C7E8DB: FLdPr var_C8
  loc_C7E8DE: from_stack_2 = Me.Item(from_stack_1)
  loc_C7E8E3: FLdPr var_DC
  loc_C7E8E6:  = Me.Value
  loc_C7E8EB: FLdRfVar var_EC
  loc_C7E8EE: CStrVarTmp
  loc_C7E8EF: FStStrNoPop var_98
  loc_C7E8F2: ILdPr
  loc_C7E8F5: Call tblPersona.DetaCallPut(from_stack_1v)
  loc_C7E8FA: FFree1Str var_98
  loc_C7E8FD: FFreeAd var_C8 = ""
  loc_C7E904: FFree1Var var_EC = ""
  loc_C7E907: FLdRfVar var_EC
  loc_C7E90A: FLdRfVar var_DC
  loc_C7E90D: LitVarStr var_D8, "calle_real_numero"
  loc_C7E912: PopAdLdVar
  loc_C7E913: FLdRfVar var_C8
  loc_C7E916: FMemLdPr
  loc_C7E91B:  = Me.Fields
  loc_C7E920: FLdPr var_C8
  loc_C7E923: from_stack_2 = Me.Item(from_stack_1)
  loc_C7E928: FLdPr var_DC
  loc_C7E92B:  = Me.Value
  loc_C7E930: FLdRfVar var_EC
  loc_C7E933: CStrVarTmp
  loc_C7E934: FStStrNoPop var_98
  loc_C7E937: ILdPr
  loc_C7E93A: Call tblPersona.NumeCasaPut(from_stack_1v)
  loc_C7E93F: FFree1Str var_98
  loc_C7E942: FFreeAd var_C8 = ""
  loc_C7E949: FFree1Var var_EC = ""
  loc_C7E94C: FLdRfVar var_EC
  loc_C7E94F: FLdRfVar var_DC
  loc_C7E952: LitVarStr var_D8, "barrio_real_nombre"
  loc_C7E957: PopAdLdVar
  loc_C7E958: FLdRfVar var_C8
  loc_C7E95B: FMemLdPr
  loc_C7E960:  = Me.Fields
  loc_C7E965: FLdPr var_C8
  loc_C7E968: from_stack_2 = Me.Item(from_stack_1)
  loc_C7E96D: FLdPr var_DC
  loc_C7E970:  = Me.Value
  loc_C7E975: FLdRfVar var_EC
  loc_C7E978: LitVarStr var_FC, " "
  loc_C7E97D: ConcatVar var_10C
  loc_C7E981: FLdRfVar var_14C
  loc_C7E984: FLdRfVar var_124
  loc_C7E987: LitVarStr var_120, "barrio_real_manzana"
  loc_C7E98C: PopAdLdVar
  loc_C7E98D: FLdRfVar var_110
  loc_C7E990: FMemLdPr
  loc_C7E995:  = Me.Fields
  loc_C7E99A: FLdPr var_110
  loc_C7E99D: from_stack_2 = Me.Item(from_stack_1)
  loc_C7E9A2: FLdPr var_124
  loc_C7E9A5:  = Me.Value
  loc_C7E9AA: FLdRfVar var_14C
  loc_C7E9AD: ConcatVar var_15C
  loc_C7E9B1: LitVarStr var_138, " "
  loc_C7E9B6: ConcatVar var_16C
  loc_C7E9BA: FLdRfVar var_17C
  loc_C7E9BD: FLdRfVar var_13C
  loc_C7E9C0: LitVarStr var_18C, "barrio_real_casa"
  loc_C7E9C5: PopAdLdVar
  loc_C7E9C6: FLdRfVar var_128
  loc_C7E9C9: FMemLdPr
  loc_C7E9CE:  = Me.Fields
  loc_C7E9D3: FLdPr var_128
  loc_C7E9D6: from_stack_2 = Me.Item(from_stack_1)
  loc_C7E9DB: FLdPr var_13C
  loc_C7E9DE:  = Me.Value
  loc_C7E9E3: FLdRfVar var_17C
  loc_C7E9E6: ConcatVar var_19C
  loc_C7E9EA: CStrVarVal var_98
  loc_C7E9EE: ILdPr
  loc_C7E9F1: Call tblPersona.UbicPersPut(from_stack_1v)
  loc_C7E9F6: FFree1Str var_98
  loc_C7E9F9: FFreeAd var_C8 = "": var_DC = "": var_110 = "": var_124 = "": var_128 = ""
  loc_C7EA08: FFreeVar var_EC = "": var_10C = "": var_14C = "": var_15C = "": var_16C = "": var_17C = ""
  loc_C7EA19: FLdRfVar var_EC
  loc_C7EA1C: FLdRfVar var_DC
  loc_C7EA1F: LitVarStr var_D8, "direccion_real_localidad"
  loc_C7EA24: PopAdLdVar
  loc_C7EA25: FLdRfVar var_C8
  loc_C7EA28: FMemLdPr
  loc_C7EA2D:  = Me.Fields
  loc_C7EA32: FLdPr var_C8
  loc_C7EA35: from_stack_2 = Me.Item(from_stack_1)
  loc_C7EA3A: FLdPr var_DC
  loc_C7EA3D:  = Me.Value
  loc_C7EA42: FLdRfVar var_EC
  loc_C7EA45: CStrVarTmp
  loc_C7EA46: FStStrNoPop var_98
  loc_C7EA49: ILdPr
  loc_C7EA4C: Call tblPersona.DetaLocaPut(from_stack_1v)
  loc_C7EA51: FFree1Str var_98
  loc_C7EA54: FFreeAd var_C8 = ""
  loc_C7EA5B: FFree1Var var_EC = ""
  loc_C7EA5E: LitI2_Byte &HFF
  loc_C7EA60: FStI2 var_86
  loc_C7EA63: Branch loc_C7ED79
  loc_C7EA66: LitStr "SELECT IFNULL(CUIT,'') cuit, denominacion, "
  loc_C7EA69: LitStr " IFNULL(domicilio.Calle,'') calle_real_nombre, IFNULL(domicilio.NumeCalle,'') calle_real_numero, IFNULL(domicilio.Barrio,'') barrio_real_nombre, "
  loc_C7EA6C: ConcatStr
  loc_C7EA6D: FStStrNoPop var_98
  loc_C7EA70: LitStr " IFNULL(domicilio.Manzana,'') barrio_real_manzana, IFNULL(domicilio.Casa,'') barrio_real_casa, IFNULL(domicilio.Localidad,'') direccion_real_localidad"
  loc_C7EA73: ConcatStr
  loc_C7EA74: FStStrNoPop var_9C
  loc_C7EA77: LitStr " FROM vpadrones_parcela "
  loc_C7EA7A: ConcatStr
  loc_C7EA7B: FStStrNoPop var_A0
  loc_C7EA7E: LitStr " INNER JOIN vpadrones_persona ON vpadrones_persona.nro_padron =  vpadrones_parcela.nro_padron"
  loc_C7EA81: ConcatStr
  loc_C7EA82: FStStrNoPop var_A4
  loc_C7EA85: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = 1"
  loc_C7EA88: ConcatStr
  loc_C7EA89: FStStrNoPop var_A8
  loc_C7EA8C: LitStr " AND domicilio.CodiCome = vpadrones_parcela.nro_padron"
  loc_C7EA8F: ConcatStr
  loc_C7EA90: FStStrNoPop var_AC
  loc_C7EA93: LitStr " AND domicilio.Tipo = 'Real'"
  loc_C7EA96: ConcatStr
  loc_C7EA97: FStStrNoPop var_B0
  loc_C7EA9A: LitStr " WHERE vpadrones_parcela.nro_padron = '"
  loc_C7EA9D: ConcatStr
  loc_C7EA9E: FStStrNoPop var_B4
  loc_C7EAA1: ILdRf var_90
  loc_C7EAA4: ConcatStr
  loc_C7EAA5: FStStrNoPop var_B8
  loc_C7EAA8: LitStr "'"
  loc_C7EAAB: ConcatStr
  loc_C7EAAC: FStStrNoPop var_BC
  loc_C7EAAF: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_C7EAB4: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_C7EACB: FLdRfVar var_C4
  loc_C7EACE: FMemLdPr
  loc_C7EAD3:  = Me.RecordCount
  loc_C7EAD8: ILdRf var_C4
  loc_C7EADB: LitI4 0
  loc_C7EAE0: GtI4
  loc_C7EAE1: BranchF loc_C7ED27
  loc_C7EAE4: FMemLdPr
  loc_C7EAE9: Me.MoveLast
  loc_C7EAEE: LitStr vbNullString
  loc_C7EAF1: ILdPr
  loc_C7EAF4: Call tblPersona.MsgErrorPut(from_stack_1v)
  loc_C7EAF9: FLdRfVar var_EC
  loc_C7EAFC: FLdRfVar var_DC
  loc_C7EAFF: LitVarStr var_D8, "cuit"
  loc_C7EB04: PopAdLdVar
  loc_C7EB05: FLdRfVar var_C8
  loc_C7EB08: FMemLdPr
  loc_C7EB0D:  = Me.Fields
  loc_C7EB12: FLdPr var_C8
  loc_C7EB15: from_stack_2 = Me.Item(from_stack_1)
  loc_C7EB1A: FLdPr var_DC
  loc_C7EB1D:  = Me.Value
  loc_C7EB22: FLdRfVar var_EC
  loc_C7EB25: CStrVarTmp
  loc_C7EB26: FStStrNoPop var_98
  loc_C7EB29: ILdPr
  loc_C7EB2C: Call tblPersona.CucuPersPut(from_stack_1v)
  loc_C7EB31: FFree1Str var_98
  loc_C7EB34: FFreeAd var_C8 = ""
  loc_C7EB3B: FFree1Var var_EC = ""
  loc_C7EB3E: FLdRfVar var_EC
  loc_C7EB41: FLdRfVar var_DC
  loc_C7EB44: LitVarStr var_D8, "denominacion"
  loc_C7EB49: PopAdLdVar
  loc_C7EB4A: FLdRfVar var_C8
  loc_C7EB4D: FMemLdPr
  loc_C7EB52:  = Me.Fields
  loc_C7EB57: FLdPr var_C8
  loc_C7EB5A: from_stack_2 = Me.Item(from_stack_1)
  loc_C7EB5F: FLdPr var_DC
  loc_C7EB62:  = Me.Value
  loc_C7EB67: FLdRfVar var_EC
  loc_C7EB6A: CStrVarTmp
  loc_C7EB6B: FStStrNoPop var_98
  loc_C7EB6E: ILdPr
  loc_C7EB71: Call tblPersona.DetaPersPut(from_stack_1v)
  loc_C7EB76: FFree1Str var_98
  loc_C7EB79: FFreeAd var_C8 = ""
  loc_C7EB80: FFree1Var var_EC = ""
  loc_C7EB83: FLdRfVar var_EC
  loc_C7EB86: FLdRfVar var_DC
  loc_C7EB89: LitVarStr var_D8, "calle_real_nombre"
  loc_C7EB8E: PopAdLdVar
  loc_C7EB8F: FLdRfVar var_C8
  loc_C7EB92: FMemLdPr
  loc_C7EB97:  = Me.Fields
  loc_C7EB9C: FLdPr var_C8
  loc_C7EB9F: from_stack_2 = Me.Item(from_stack_1)
  loc_C7EBA4: FLdPr var_DC
  loc_C7EBA7:  = Me.Value
  loc_C7EBAC: FLdRfVar var_EC
  loc_C7EBAF: CStrVarTmp
  loc_C7EBB0: FStStrNoPop var_98
  loc_C7EBB3: ILdPr
  loc_C7EBB6: Call tblPersona.DetaCallPut(from_stack_1v)
  loc_C7EBBB: FFree1Str var_98
  loc_C7EBBE: FFreeAd var_C8 = ""
  loc_C7EBC5: FFree1Var var_EC = ""
  loc_C7EBC8: FLdRfVar var_EC
  loc_C7EBCB: FLdRfVar var_DC
  loc_C7EBCE: LitVarStr var_D8, "calle_real_numero"
  loc_C7EBD3: PopAdLdVar
  loc_C7EBD4: FLdRfVar var_C8
  loc_C7EBD7: FMemLdPr
  loc_C7EBDC:  = Me.Fields
  loc_C7EBE1: FLdPr var_C8
  loc_C7EBE4: from_stack_2 = Me.Item(from_stack_1)
  loc_C7EBE9: FLdPr var_DC
  loc_C7EBEC:  = Me.Value
  loc_C7EBF1: FLdRfVar var_EC
  loc_C7EBF4: CStrVarTmp
  loc_C7EBF5: FStStrNoPop var_98
  loc_C7EBF8: ILdPr
  loc_C7EBFB: Call tblPersona.NumeCasaPut(from_stack_1v)
  loc_C7EC00: FFree1Str var_98
  loc_C7EC03: FFreeAd var_C8 = ""
  loc_C7EC0A: FFree1Var var_EC = ""
  loc_C7EC0D: FLdRfVar var_EC
  loc_C7EC10: FLdRfVar var_DC
  loc_C7EC13: LitVarStr var_D8, "barrio_real_nombre"
  loc_C7EC18: PopAdLdVar
  loc_C7EC19: FLdRfVar var_C8
  loc_C7EC1C: FMemLdPr
  loc_C7EC21:  = Me.Fields
  loc_C7EC26: FLdPr var_C8
  loc_C7EC29: from_stack_2 = Me.Item(from_stack_1)
  loc_C7EC2E: FLdPr var_DC
  loc_C7EC31:  = Me.Value
  loc_C7EC36: FLdRfVar var_EC
  loc_C7EC39: LitVarStr var_FC, " "
  loc_C7EC3E: ConcatVar var_10C
  loc_C7EC42: FLdRfVar var_14C
  loc_C7EC45: FLdRfVar var_124
  loc_C7EC48: LitVarStr var_120, "barrio_real_manzana"
  loc_C7EC4D: PopAdLdVar
  loc_C7EC4E: FLdRfVar var_110
  loc_C7EC51: FMemLdPr
  loc_C7EC56:  = Me.Fields
  loc_C7EC5B: FLdPr var_110
  loc_C7EC5E: from_stack_2 = Me.Item(from_stack_1)
  loc_C7EC63: FLdPr var_124
  loc_C7EC66:  = Me.Value
  loc_C7EC6B: FLdRfVar var_14C
  loc_C7EC6E: ConcatVar var_15C
  loc_C7EC72: LitVarStr var_138, " "
  loc_C7EC77: ConcatVar var_16C
  loc_C7EC7B: FLdRfVar var_17C
  loc_C7EC7E: FLdRfVar var_13C
  loc_C7EC81: LitVarStr var_18C, "barrio_real_casa"
  loc_C7EC86: PopAdLdVar
  loc_C7EC87: FLdRfVar var_128
  loc_C7EC8A: FMemLdPr
  loc_C7EC8F:  = Me.Fields
  loc_C7EC94: FLdPr var_128
  loc_C7EC97: from_stack_2 = Me.Item(from_stack_1)
  loc_C7EC9C: FLdPr var_13C
  loc_C7EC9F:  = Me.Value
  loc_C7ECA4: FLdRfVar var_17C
  loc_C7ECA7: ConcatVar var_19C
  loc_C7ECAB: CStrVarVal var_98
  loc_C7ECAF: ILdPr
  loc_C7ECB2: Call tblPersona.UbicPersPut(from_stack_1v)
  loc_C7ECB7: FFree1Str var_98
  loc_C7ECBA: FFreeAd var_C8 = "": var_DC = "": var_110 = "": var_124 = "": var_128 = ""
  loc_C7ECC9: FFreeVar var_EC = "": var_10C = "": var_14C = "": var_15C = "": var_16C = "": var_17C = ""
  loc_C7ECDA: FLdRfVar var_EC
  loc_C7ECDD: FLdRfVar var_DC
  loc_C7ECE0: LitVarStr var_D8, "direccion_real_localidad"
  loc_C7ECE5: PopAdLdVar
  loc_C7ECE6: FLdRfVar var_C8
  loc_C7ECE9: FMemLdPr
  loc_C7ECEE:  = Me.Fields
  loc_C7ECF3: FLdPr var_C8
  loc_C7ECF6: from_stack_2 = Me.Item(from_stack_1)
  loc_C7ECFB: FLdPr var_DC
  loc_C7ECFE:  = Me.Value
  loc_C7ED03: FLdRfVar var_EC
  loc_C7ED06: CStrVarTmp
  loc_C7ED07: FStStrNoPop var_98
  loc_C7ED0A: ILdPr
  loc_C7ED0D: Call tblPersona.DetaLocaPut(from_stack_1v)
  loc_C7ED12: FFree1Str var_98
  loc_C7ED15: FFreeAd var_C8 = ""
  loc_C7ED1C: FFree1Var var_EC = ""
  loc_C7ED1F: LitI2_Byte &HFF
  loc_C7ED21: FStI2 var_86
  loc_C7ED24: Branch loc_C7ED79
  loc_C7ED27: LitStr "No existe Contribuyente para la OFICINA y CUENTA seleccionada. Verifique..."
  loc_C7ED2A: ILdPr
  loc_C7ED2D: Call tblPersona.MsgErrorPut(from_stack_1v)
  loc_C7ED32: LitStr vbNullString
  loc_C7ED35: ILdPr
  loc_C7ED38: Call tblPersona.CucuPersPut(from_stack_1v)
  loc_C7ED3D: LitStr vbNullString
  loc_C7ED40: ILdPr
  loc_C7ED43: Call tblPersona.DetaPersPut(from_stack_1v)
  loc_C7ED48: LitStr vbNullString
  loc_C7ED4B: ILdPr
  loc_C7ED4E: Call tblPersona.DetaCallPut(from_stack_1v)
  loc_C7ED53: LitStr vbNullString
  loc_C7ED56: ILdPr
  loc_C7ED59: Call tblPersona.NumeCasaPut(from_stack_1v)
  loc_C7ED5E: LitStr vbNullString
  loc_C7ED61: ILdPr
  loc_C7ED64: Call tblPersona.UbicPersPut(from_stack_1v)
  loc_C7ED69: LitStr vbNullString
  loc_C7ED6C: ILdPr
  loc_C7ED6F: Call tblPersona.DetaLocaPut(from_stack_1v)
  loc_C7ED74: LitI2_Byte 0
  loc_C7ED76: FStI2 var_86
  loc_C7ED79: Branch loc_C7FB3A
  loc_C7ED7C: LitStr "SELECT relacion.CucuPers, persona.DetaPers, persona.DecrPers, persona.NurePers, persona.DebrPers, persona.MarePers, persona.CarePers, persona.UbrePers, persona.DelrPers, persona.TelePers FROM relacion "
  loc_C7ED7F: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = relacion.CucuPers"
  loc_C7ED82: ConcatStr
  loc_C7ED83: FStStrNoPop var_98
  loc_C7ED86: LitStr " WHERE CodiOfic = "
  loc_C7ED89: ConcatStr
  loc_C7ED8A: FStStrNoPop var_9C
  loc_C7ED8D: ILdRf var_8C
  loc_C7ED90: ConcatStr
  loc_C7ED91: FStStrNoPop var_A0
  loc_C7ED94: LitStr " AND CuenCtct = '"
  loc_C7ED97: ConcatStr
  loc_C7ED98: FStStrNoPop var_A4
  loc_C7ED9B: ILdRf var_90
  loc_C7ED9E: ConcatStr
  loc_C7ED9F: FStStrNoPop var_A8
  loc_C7EDA2: LitStr "' AND TipoRela = '"
  loc_C7EDA5: ConcatStr
  loc_C7EDA6: FStStrNoPop var_AC
  loc_C7EDA9: ILdRf var_94
  loc_C7EDAC: ConcatStr
  loc_C7EDAD: FStStrNoPop var_B0
  loc_C7EDB0: LitStr "'"
  loc_C7EDB3: ConcatStr
  loc_C7EDB4: FStStrNoPop var_B4
  loc_C7EDB7: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_C7EDBC: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_C7EDCF: FLdRfVar var_C4
  loc_C7EDD2: FMemLdPr
  loc_C7EDD7:  = Me.RecordCount
  loc_C7EDDC: ILdRf var_C4
  loc_C7EDDF: LitI4 0
  loc_C7EDE4: GtI4
  loc_C7EDE5: BranchF loc_C7FAC7
  loc_C7EDE8: LitStr vbNullString
  loc_C7EDEB: ILdPr
  loc_C7EDEE: Call tblPersona.MsgErrorPut(from_stack_1v)
  loc_C7EDF3: FLdRfVar var_EC
  loc_C7EDF6: FLdRfVar var_DC
  loc_C7EDF9: LitVarStr var_D8, "CucuPers"
  loc_C7EDFE: PopAdLdVar
  loc_C7EDFF: FLdRfVar var_C8
  loc_C7EE02: FMemLdPr
  loc_C7EE07:  = Me.Fields
  loc_C7EE0C: FLdPr var_C8
  loc_C7EE0F: from_stack_2 = Me.Item(from_stack_1)
  loc_C7EE14: FLdPr var_DC
  loc_C7EE17:  = Me.Value
  loc_C7EE1C: FLdRfVar var_EC
  loc_C7EE1F: CStrVarTmp
  loc_C7EE20: FStStrNoPop var_98
  loc_C7EE23: ILdPr
  loc_C7EE26: Call tblPersona.CucuPersPut(from_stack_1v)
  loc_C7EE2B: FFree1Str var_98
  loc_C7EE2E: FFreeAd var_C8 = ""
  loc_C7EE35: FFree1Var var_EC = ""
  loc_C7EE38: FLdRfVar var_EC
  loc_C7EE3B: FLdRfVar var_DC
  loc_C7EE3E: LitVarStr var_D8, "DetaPers"
  loc_C7EE43: PopAdLdVar
  loc_C7EE44: FLdRfVar var_C8
  loc_C7EE47: FMemLdPr
  loc_C7EE4C:  = Me.Fields
  loc_C7EE51: FLdPr var_C8
  loc_C7EE54: from_stack_2 = Me.Item(from_stack_1)
  loc_C7EE59: FLdPr var_DC
  loc_C7EE5C:  = Me.Value
  loc_C7EE61: FLdRfVar var_EC
  loc_C7EE64: CStrVarTmp
  loc_C7EE65: FStStrNoPop var_98
  loc_C7EE68: ILdPr
  loc_C7EE6B: Call tblPersona.DetaPersPut(from_stack_1v)
  loc_C7EE70: FFree1Str var_98
  loc_C7EE73: FFreeAd var_C8 = ""
  loc_C7EE7A: FFree1Var var_EC = ""
  loc_C7EE7D: FLdRfVar var_EC
  loc_C7EE80: FLdRfVar var_DC
  loc_C7EE83: LitVarStr var_D8, "TelePers"
  loc_C7EE88: PopAdLdVar
  loc_C7EE89: FLdRfVar var_C8
  loc_C7EE8C: FMemLdPr
  loc_C7EE91:  = Me.Fields
  loc_C7EE96: FLdPr var_C8
  loc_C7EE99: from_stack_2 = Me.Item(from_stack_1)
  loc_C7EE9E: FLdPr var_DC
  loc_C7EEA1:  = Me.Value
  loc_C7EEA6: FLdRfVar var_EC
  loc_C7EEA9: CStrVarTmp
  loc_C7EEAA: FStStrNoPop var_98
  loc_C7EEAD: ILdPr
  loc_C7EEB0: Call tblPersona.TelePersPut(from_stack_1v)
  loc_C7EEB5: FFree1Str var_98
  loc_C7EEB8: FFreeAd var_C8 = ""
  loc_C7EEBF: FFree1Var var_EC = ""
  loc_C7EEC2: ILdRf var_8C
  loc_C7EEC5: FStStrCopy var_1A0
  loc_C7EEC8: ILdRf var_1A0
  loc_C7EECB: LitI2_Byte 3
  loc_C7EECD: CStrUI1
  loc_C7EECF: FStStrNoPop var_98
  loc_C7EED2: EqStr
  loc_C7EED4: FFree1Str var_98
  loc_C7EED7: BranchF loc_C7F0C0
  loc_C7EEDA: FLdRfVar var_EC
  loc_C7EEDD: FLdRfVar var_DC
  loc_C7EEE0: LitVarStr var_D8, "DecrPers"
  loc_C7EEE5: PopAdLdVar
  loc_C7EEE6: FLdRfVar var_C8
  loc_C7EEE9: FMemLdPr
  loc_C7EEEE:  = Me.Fields
  loc_C7EEF3: FLdPr var_C8
  loc_C7EEF6: from_stack_2 = Me.Item(from_stack_1)
  loc_C7EEFB: FLdPr var_DC
  loc_C7EEFE:  = Me.Value
  loc_C7EF03: FLdRfVar var_EC
  loc_C7EF06: CStrVarTmp
  loc_C7EF07: FStStrNoPop var_98
  loc_C7EF0A: ILdPr
  loc_C7EF0D: Call tblPersona.DetaCallPut(from_stack_1v)
  loc_C7EF12: FFree1Str var_98
  loc_C7EF15: FFreeAd var_C8 = ""
  loc_C7EF1C: FFree1Var var_EC = ""
  loc_C7EF1F: FLdRfVar var_EC
  loc_C7EF22: FLdRfVar var_DC
  loc_C7EF25: LitVarStr var_D8, "NurePers"
  loc_C7EF2A: PopAdLdVar
  loc_C7EF2B: FLdRfVar var_C8
  loc_C7EF2E: FMemLdPr
  loc_C7EF33:  = Me.Fields
  loc_C7EF38: FLdPr var_C8
  loc_C7EF3B: from_stack_2 = Me.Item(from_stack_1)
  loc_C7EF40: FLdPr var_DC
  loc_C7EF43:  = Me.Value
  loc_C7EF48: FLdRfVar var_EC
  loc_C7EF4B: CStrVarTmp
  loc_C7EF4C: FStStrNoPop var_98
  loc_C7EF4F: ILdPr
  loc_C7EF52: Call tblPersona.NumeCasaPut(from_stack_1v)
  loc_C7EF57: FFree1Str var_98
  loc_C7EF5A: FFreeAd var_C8 = ""
  loc_C7EF61: FFree1Var var_EC = ""
  loc_C7EF64: FLdRfVar var_EC
  loc_C7EF67: FLdRfVar var_DC
  loc_C7EF6A: LitVarStr var_D8, "DebrPers"
  loc_C7EF6F: PopAdLdVar
  loc_C7EF70: FLdRfVar var_C8
  loc_C7EF73: FMemLdPr
  loc_C7EF78:  = Me.Fields
  loc_C7EF7D: FLdPr var_C8
  loc_C7EF80: from_stack_2 = Me.Item(from_stack_1)
  loc_C7EF85: FLdPr var_DC
  loc_C7EF88:  = Me.Value
  loc_C7EF8D: FLdRfVar var_EC
  loc_C7EF90: CStrVarTmp
  loc_C7EF91: FStStrNoPop var_98
  loc_C7EF94: ILdPr
  loc_C7EF97: Call tblPersona.DetaBarrPut(from_stack_1v)
  loc_C7EF9C: FFree1Str var_98
  loc_C7EF9F: FFreeAd var_C8 = ""
  loc_C7EFA6: FFree1Var var_EC = ""
  loc_C7EFA9: FLdRfVar var_EC
  loc_C7EFAC: FLdRfVar var_DC
  loc_C7EFAF: LitVarStr var_D8, "MarePers"
  loc_C7EFB4: PopAdLdVar
  loc_C7EFB5: FLdRfVar var_C8
  loc_C7EFB8: FMemLdPr
  loc_C7EFBD:  = Me.Fields
  loc_C7EFC2: FLdPr var_C8
  loc_C7EFC5: from_stack_2 = Me.Item(from_stack_1)
  loc_C7EFCA: FLdPr var_DC
  loc_C7EFCD:  = Me.Value
  loc_C7EFD2: FLdRfVar var_EC
  loc_C7EFD5: CStrVarTmp
  loc_C7EFD6: FStStrNoPop var_98
  loc_C7EFD9: ILdPr
  loc_C7EFDC: Call tblPersona.ManzPersPut(from_stack_1v)
  loc_C7EFE1: FFree1Str var_98
  loc_C7EFE4: FFreeAd var_C8 = ""
  loc_C7EFEB: FFree1Var var_EC = ""
  loc_C7EFEE: FLdRfVar var_EC
  loc_C7EFF1: FLdRfVar var_DC
  loc_C7EFF4: LitVarStr var_D8, "CarePers"
  loc_C7EFF9: PopAdLdVar
  loc_C7EFFA: FLdRfVar var_C8
  loc_C7EFFD: FMemLdPr
  loc_C7F002:  = Me.Fields
  loc_C7F007: FLdPr var_C8
  loc_C7F00A: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F00F: FLdPr var_DC
  loc_C7F012:  = Me.Value
  loc_C7F017: FLdRfVar var_EC
  loc_C7F01A: CStrVarTmp
  loc_C7F01B: FStStrNoPop var_98
  loc_C7F01E: ILdPr
  loc_C7F021: Call tblPersona.CasaPersPut(from_stack_1v)
  loc_C7F026: FFree1Str var_98
  loc_C7F029: FFreeAd var_C8 = ""
  loc_C7F030: FFree1Var var_EC = ""
  loc_C7F033: FLdRfVar var_EC
  loc_C7F036: FLdRfVar var_DC
  loc_C7F039: LitVarStr var_D8, "UbrePers"
  loc_C7F03E: PopAdLdVar
  loc_C7F03F: FLdRfVar var_C8
  loc_C7F042: FMemLdPr
  loc_C7F047:  = Me.Fields
  loc_C7F04C: FLdPr var_C8
  loc_C7F04F: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F054: FLdPr var_DC
  loc_C7F057:  = Me.Value
  loc_C7F05C: FLdRfVar var_EC
  loc_C7F05F: CStrVarTmp
  loc_C7F060: FStStrNoPop var_98
  loc_C7F063: ILdPr
  loc_C7F066: Call tblPersona.UbicPersPut(from_stack_1v)
  loc_C7F06B: FFree1Str var_98
  loc_C7F06E: FFreeAd var_C8 = ""
  loc_C7F075: FFree1Var var_EC = ""
  loc_C7F078: FLdRfVar var_EC
  loc_C7F07B: FLdRfVar var_DC
  loc_C7F07E: LitVarStr var_D8, "DelrPers"
  loc_C7F083: PopAdLdVar
  loc_C7F084: FLdRfVar var_C8
  loc_C7F087: FMemLdPr
  loc_C7F08C:  = Me.Fields
  loc_C7F091: FLdPr var_C8
  loc_C7F094: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F099: FLdPr var_DC
  loc_C7F09C:  = Me.Value
  loc_C7F0A1: FLdRfVar var_EC
  loc_C7F0A4: CStrVarTmp
  loc_C7F0A5: FStStrNoPop var_98
  loc_C7F0A8: ILdPr
  loc_C7F0AB: Call tblPersona.DetaLocaPut(from_stack_1v)
  loc_C7F0B0: FFree1Str var_98
  loc_C7F0B3: FFreeAd var_C8 = ""
  loc_C7F0BA: FFree1Var var_EC = ""
  loc_C7F0BD: Branch loc_C7FABF
  loc_C7F0C0: ILdRf var_1A0
  loc_C7F0C3: LitI2_Byte 4
  loc_C7F0C5: CStrUI1
  loc_C7F0C7: FStStrNoPop var_98
  loc_C7F0CA: EqStr
  loc_C7F0CC: FFree1Str var_98
  loc_C7F0CF: BranchF loc_C7F374
  loc_C7F0D2: LitStr " SELECT IFNULL(domicilio.calle,'') as DecrPers, IFNULL(domicilio.NumeCalle,'0') as NurePers, IFNULL(domicilio.barrio,'') as DebrPers, IFNULL(domicilio.Manzana,'') as MarePers, IFNULL(domicilio.Casa,'') as CarePers, "
  loc_C7F0D5: LitStr " concat(ifnull(domicilio.Monoblock,''),IF(ifnull(domicilio.Dpto,'')<>'',' - ',''),ifnull(domicilio.Dpto,''),IF(ifnull(domicilio.Planta,'')<>'',' - ',''),ifnull(domicilio.Planta,''),IF(ifnull(domicilio.NroLocal,'')<>'',' - ',''), ifnull(domicilio.NroLocal,''))  as UbrePers, "
  loc_C7F0D8: ConcatStr
  loc_C7F0D9: FStStrNoPop var_98
  loc_C7F0DC: LitStr " IFNULL(domicilio.Localidad,'') as DelrPers"
  loc_C7F0DF: ConcatStr
  loc_C7F0E0: FStStrNoPop var_9C
  loc_C7F0E3: LitStr " FROM domicilio"
  loc_C7F0E6: ConcatStr
  loc_C7F0E7: FStStrNoPop var_A0
  loc_C7F0EA: LitStr " WHERE CodiOfic = "
  loc_C7F0ED: ConcatStr
  loc_C7F0EE: FStStrNoPop var_A4
  loc_C7F0F1: ILdRf var_8C
  loc_C7F0F4: ConcatStr
  loc_C7F0F5: FStStrNoPop var_A8
  loc_C7F0F8: LitStr " AND CodiCome = "
  loc_C7F0FB: ConcatStr
  loc_C7F0FC: FStStrNoPop var_AC
  loc_C7F0FF: ILdRf var_90
  loc_C7F102: ConcatStr
  loc_C7F103: FStStrNoPop var_B0
  loc_C7F106: LitStr " AND Tipo = 'Real'"
  loc_C7F109: ConcatStr
  loc_C7F10A: FStStrNoPop var_B4
  loc_C7F10D: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_C7F112: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_C7F125: FLdRfVar var_C4
  loc_C7F128: FMemLdPr
  loc_C7F12D:  = Me.RecordCount
  loc_C7F132: ILdRf var_C4
  loc_C7F135: LitI4 0
  loc_C7F13A: GtI4
  loc_C7F13B: BranchF loc_C7F324
  loc_C7F13E: FLdRfVar var_EC
  loc_C7F141: FLdRfVar var_DC
  loc_C7F144: LitVarStr var_D8, "DecrPers"
  loc_C7F149: PopAdLdVar
  loc_C7F14A: FLdRfVar var_C8
  loc_C7F14D: FMemLdPr
  loc_C7F152:  = Me.Fields
  loc_C7F157: FLdPr var_C8
  loc_C7F15A: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F15F: FLdPr var_DC
  loc_C7F162:  = Me.Value
  loc_C7F167: FLdRfVar var_EC
  loc_C7F16A: CStrVarTmp
  loc_C7F16B: FStStrNoPop var_98
  loc_C7F16E: ILdPr
  loc_C7F171: Call tblPersona.DetaCallPut(from_stack_1v)
  loc_C7F176: FFree1Str var_98
  loc_C7F179: FFreeAd var_C8 = ""
  loc_C7F180: FFree1Var var_EC = ""
  loc_C7F183: FLdRfVar var_EC
  loc_C7F186: FLdRfVar var_DC
  loc_C7F189: LitVarStr var_D8, "NurePers"
  loc_C7F18E: PopAdLdVar
  loc_C7F18F: FLdRfVar var_C8
  loc_C7F192: FMemLdPr
  loc_C7F197:  = Me.Fields
  loc_C7F19C: FLdPr var_C8
  loc_C7F19F: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F1A4: FLdPr var_DC
  loc_C7F1A7:  = Me.Value
  loc_C7F1AC: FLdRfVar var_EC
  loc_C7F1AF: CStrVarTmp
  loc_C7F1B0: FStStrNoPop var_98
  loc_C7F1B3: ILdPr
  loc_C7F1B6: Call tblPersona.NumeCasaPut(from_stack_1v)
  loc_C7F1BB: FFree1Str var_98
  loc_C7F1BE: FFreeAd var_C8 = ""
  loc_C7F1C5: FFree1Var var_EC = ""
  loc_C7F1C8: FLdRfVar var_EC
  loc_C7F1CB: FLdRfVar var_DC
  loc_C7F1CE: LitVarStr var_D8, "DebrPers"
  loc_C7F1D3: PopAdLdVar
  loc_C7F1D4: FLdRfVar var_C8
  loc_C7F1D7: FMemLdPr
  loc_C7F1DC:  = Me.Fields
  loc_C7F1E1: FLdPr var_C8
  loc_C7F1E4: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F1E9: FLdPr var_DC
  loc_C7F1EC:  = Me.Value
  loc_C7F1F1: FLdRfVar var_EC
  loc_C7F1F4: CStrVarTmp
  loc_C7F1F5: FStStrNoPop var_98
  loc_C7F1F8: ILdPr
  loc_C7F1FB: Call tblPersona.DetaBarrPut(from_stack_1v)
  loc_C7F200: FFree1Str var_98
  loc_C7F203: FFreeAd var_C8 = ""
  loc_C7F20A: FFree1Var var_EC = ""
  loc_C7F20D: FLdRfVar var_EC
  loc_C7F210: FLdRfVar var_DC
  loc_C7F213: LitVarStr var_D8, "MarePers"
  loc_C7F218: PopAdLdVar
  loc_C7F219: FLdRfVar var_C8
  loc_C7F21C: FMemLdPr
  loc_C7F221:  = Me.Fields
  loc_C7F226: FLdPr var_C8
  loc_C7F229: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F22E: FLdPr var_DC
  loc_C7F231:  = Me.Value
  loc_C7F236: FLdRfVar var_EC
  loc_C7F239: CStrVarTmp
  loc_C7F23A: FStStrNoPop var_98
  loc_C7F23D: ILdPr
  loc_C7F240: Call tblPersona.ManzPersPut(from_stack_1v)
  loc_C7F245: FFree1Str var_98
  loc_C7F248: FFreeAd var_C8 = ""
  loc_C7F24F: FFree1Var var_EC = ""
  loc_C7F252: FLdRfVar var_EC
  loc_C7F255: FLdRfVar var_DC
  loc_C7F258: LitVarStr var_D8, "CarePers"
  loc_C7F25D: PopAdLdVar
  loc_C7F25E: FLdRfVar var_C8
  loc_C7F261: FMemLdPr
  loc_C7F266:  = Me.Fields
  loc_C7F26B: FLdPr var_C8
  loc_C7F26E: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F273: FLdPr var_DC
  loc_C7F276:  = Me.Value
  loc_C7F27B: FLdRfVar var_EC
  loc_C7F27E: CStrVarTmp
  loc_C7F27F: FStStrNoPop var_98
  loc_C7F282: ILdPr
  loc_C7F285: Call tblPersona.CasaPersPut(from_stack_1v)
  loc_C7F28A: FFree1Str var_98
  loc_C7F28D: FFreeAd var_C8 = ""
  loc_C7F294: FFree1Var var_EC = ""
  loc_C7F297: FLdRfVar var_EC
  loc_C7F29A: FLdRfVar var_DC
  loc_C7F29D: LitVarStr var_D8, "UbrePers"
  loc_C7F2A2: PopAdLdVar
  loc_C7F2A3: FLdRfVar var_C8
  loc_C7F2A6: FMemLdPr
  loc_C7F2AB:  = Me.Fields
  loc_C7F2B0: FLdPr var_C8
  loc_C7F2B3: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F2B8: FLdPr var_DC
  loc_C7F2BB:  = Me.Value
  loc_C7F2C0: FLdRfVar var_EC
  loc_C7F2C3: CStrVarTmp
  loc_C7F2C4: FStStrNoPop var_98
  loc_C7F2C7: ILdPr
  loc_C7F2CA: Call tblPersona.UbicPersPut(from_stack_1v)
  loc_C7F2CF: FFree1Str var_98
  loc_C7F2D2: FFreeAd var_C8 = ""
  loc_C7F2D9: FFree1Var var_EC = ""
  loc_C7F2DC: FLdRfVar var_EC
  loc_C7F2DF: FLdRfVar var_DC
  loc_C7F2E2: LitVarStr var_D8, "DelrPers"
  loc_C7F2E7: PopAdLdVar
  loc_C7F2E8: FLdRfVar var_C8
  loc_C7F2EB: FMemLdPr
  loc_C7F2F0:  = Me.Fields
  loc_C7F2F5: FLdPr var_C8
  loc_C7F2F8: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F2FD: FLdPr var_DC
  loc_C7F300:  = Me.Value
  loc_C7F305: FLdRfVar var_EC
  loc_C7F308: CStrVarTmp
  loc_C7F309: FStStrNoPop var_98
  loc_C7F30C: ILdPr
  loc_C7F30F: Call tblPersona.DetaLocaPut(from_stack_1v)
  loc_C7F314: FFree1Str var_98
  loc_C7F317: FFreeAd var_C8 = ""
  loc_C7F31E: FFree1Var var_EC = ""
  loc_C7F321: Branch loc_C7F371
  loc_C7F324: LitStr vbNullString
  loc_C7F327: ILdPr
  loc_C7F32A: Call tblPersona.DetaCallPut(from_stack_1v)
  loc_C7F32F: LitStr vbNullString
  loc_C7F332: ILdPr
  loc_C7F335: Call tblPersona.NumeCasaPut(from_stack_1v)
  loc_C7F33A: LitStr vbNullString
  loc_C7F33D: ILdPr
  loc_C7F340: Call tblPersona.DetaBarrPut(from_stack_1v)
  loc_C7F345: LitStr vbNullString
  loc_C7F348: ILdPr
  loc_C7F34B: Call tblPersona.ManzPersPut(from_stack_1v)
  loc_C7F350: LitStr vbNullString
  loc_C7F353: ILdPr
  loc_C7F356: Call tblPersona.CasaPersPut(from_stack_1v)
  loc_C7F35B: LitStr vbNullString
  loc_C7F35E: ILdPr
  loc_C7F361: Call tblPersona.UbicPersPut(from_stack_1v)
  loc_C7F366: LitStr vbNullString
  loc_C7F369: ILdPr
  loc_C7F36C: Call tblPersona.DetaLocaPut(from_stack_1v)
  loc_C7F371: Branch loc_C7FABF
  loc_C7F374: ILdRf var_1A0
  loc_C7F377: LitI2_Byte 5
  loc_C7F379: CStrUI1
  loc_C7F37B: FStStrNoPop var_98
  loc_C7F37E: EqStr
  loc_C7F380: FFree1Str var_98
  loc_C7F383: BranchF loc_C7F56C
  loc_C7F386: FLdRfVar var_EC
  loc_C7F389: FLdRfVar var_DC
  loc_C7F38C: LitVarStr var_D8, "DecrPers"
  loc_C7F391: PopAdLdVar
  loc_C7F392: FLdRfVar var_C8
  loc_C7F395: FMemLdPr
  loc_C7F39A:  = Me.Fields
  loc_C7F39F: FLdPr var_C8
  loc_C7F3A2: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F3A7: FLdPr var_DC
  loc_C7F3AA:  = Me.Value
  loc_C7F3AF: FLdRfVar var_EC
  loc_C7F3B2: CStrVarTmp
  loc_C7F3B3: FStStrNoPop var_98
  loc_C7F3B6: ILdPr
  loc_C7F3B9: Call tblPersona.DetaCallPut(from_stack_1v)
  loc_C7F3BE: FFree1Str var_98
  loc_C7F3C1: FFreeAd var_C8 = ""
  loc_C7F3C8: FFree1Var var_EC = ""
  loc_C7F3CB: FLdRfVar var_EC
  loc_C7F3CE: FLdRfVar var_DC
  loc_C7F3D1: LitVarStr var_D8, "NurePers"
  loc_C7F3D6: PopAdLdVar
  loc_C7F3D7: FLdRfVar var_C8
  loc_C7F3DA: FMemLdPr
  loc_C7F3DF:  = Me.Fields
  loc_C7F3E4: FLdPr var_C8
  loc_C7F3E7: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F3EC: FLdPr var_DC
  loc_C7F3EF:  = Me.Value
  loc_C7F3F4: FLdRfVar var_EC
  loc_C7F3F7: CStrVarTmp
  loc_C7F3F8: FStStrNoPop var_98
  loc_C7F3FB: ILdPr
  loc_C7F3FE: Call tblPersona.NumeCasaPut(from_stack_1v)
  loc_C7F403: FFree1Str var_98
  loc_C7F406: FFreeAd var_C8 = ""
  loc_C7F40D: FFree1Var var_EC = ""
  loc_C7F410: FLdRfVar var_EC
  loc_C7F413: FLdRfVar var_DC
  loc_C7F416: LitVarStr var_D8, "DebrPers"
  loc_C7F41B: PopAdLdVar
  loc_C7F41C: FLdRfVar var_C8
  loc_C7F41F: FMemLdPr
  loc_C7F424:  = Me.Fields
  loc_C7F429: FLdPr var_C8
  loc_C7F42C: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F431: FLdPr var_DC
  loc_C7F434:  = Me.Value
  loc_C7F439: FLdRfVar var_EC
  loc_C7F43C: CStrVarTmp
  loc_C7F43D: FStStrNoPop var_98
  loc_C7F440: ILdPr
  loc_C7F443: Call tblPersona.DetaBarrPut(from_stack_1v)
  loc_C7F448: FFree1Str var_98
  loc_C7F44B: FFreeAd var_C8 = ""
  loc_C7F452: FFree1Var var_EC = ""
  loc_C7F455: FLdRfVar var_EC
  loc_C7F458: FLdRfVar var_DC
  loc_C7F45B: LitVarStr var_D8, "MarePers"
  loc_C7F460: PopAdLdVar
  loc_C7F461: FLdRfVar var_C8
  loc_C7F464: FMemLdPr
  loc_C7F469:  = Me.Fields
  loc_C7F46E: FLdPr var_C8
  loc_C7F471: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F476: FLdPr var_DC
  loc_C7F479:  = Me.Value
  loc_C7F47E: FLdRfVar var_EC
  loc_C7F481: CStrVarTmp
  loc_C7F482: FStStrNoPop var_98
  loc_C7F485: ILdPr
  loc_C7F488: Call tblPersona.ManzPersPut(from_stack_1v)
  loc_C7F48D: FFree1Str var_98
  loc_C7F490: FFreeAd var_C8 = ""
  loc_C7F497: FFree1Var var_EC = ""
  loc_C7F49A: FLdRfVar var_EC
  loc_C7F49D: FLdRfVar var_DC
  loc_C7F4A0: LitVarStr var_D8, "CarePers"
  loc_C7F4A5: PopAdLdVar
  loc_C7F4A6: FLdRfVar var_C8
  loc_C7F4A9: FMemLdPr
  loc_C7F4AE:  = Me.Fields
  loc_C7F4B3: FLdPr var_C8
  loc_C7F4B6: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F4BB: FLdPr var_DC
  loc_C7F4BE:  = Me.Value
  loc_C7F4C3: FLdRfVar var_EC
  loc_C7F4C6: CStrVarTmp
  loc_C7F4C7: FStStrNoPop var_98
  loc_C7F4CA: ILdPr
  loc_C7F4CD: Call tblPersona.CasaPersPut(from_stack_1v)
  loc_C7F4D2: FFree1Str var_98
  loc_C7F4D5: FFreeAd var_C8 = ""
  loc_C7F4DC: FFree1Var var_EC = ""
  loc_C7F4DF: FLdRfVar var_EC
  loc_C7F4E2: FLdRfVar var_DC
  loc_C7F4E5: LitVarStr var_D8, "UbrePers"
  loc_C7F4EA: PopAdLdVar
  loc_C7F4EB: FLdRfVar var_C8
  loc_C7F4EE: FMemLdPr
  loc_C7F4F3:  = Me.Fields
  loc_C7F4F8: FLdPr var_C8
  loc_C7F4FB: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F500: FLdPr var_DC
  loc_C7F503:  = Me.Value
  loc_C7F508: FLdRfVar var_EC
  loc_C7F50B: CStrVarTmp
  loc_C7F50C: FStStrNoPop var_98
  loc_C7F50F: ILdPr
  loc_C7F512: Call tblPersona.UbicPersPut(from_stack_1v)
  loc_C7F517: FFree1Str var_98
  loc_C7F51A: FFreeAd var_C8 = ""
  loc_C7F521: FFree1Var var_EC = ""
  loc_C7F524: FLdRfVar var_EC
  loc_C7F527: FLdRfVar var_DC
  loc_C7F52A: LitVarStr var_D8, "DelrPers"
  loc_C7F52F: PopAdLdVar
  loc_C7F530: FLdRfVar var_C8
  loc_C7F533: FMemLdPr
  loc_C7F538:  = Me.Fields
  loc_C7F53D: FLdPr var_C8
  loc_C7F540: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F545: FLdPr var_DC
  loc_C7F548:  = Me.Value
  loc_C7F54D: FLdRfVar var_EC
  loc_C7F550: CStrVarTmp
  loc_C7F551: FStStrNoPop var_98
  loc_C7F554: ILdPr
  loc_C7F557: Call tblPersona.DetaLocaPut(from_stack_1v)
  loc_C7F55C: FFree1Str var_98
  loc_C7F55F: FFreeAd var_C8 = ""
  loc_C7F566: FFree1Var var_EC = ""
  loc_C7F569: Branch loc_C7FABF
  loc_C7F56C: ILdRf var_1A0
  loc_C7F56F: LitI2_Byte 6
  loc_C7F571: CStrUI1
  loc_C7F573: FStStrNoPop var_98
  loc_C7F576: EqStr
  loc_C7F578: FFree1Str var_98
  loc_C7F57B: BranchF loc_C7F820
  loc_C7F57E: LitStr " SELECT IFNULL(domicilio.calle,'') as DecrPers, IFNULL(domicilio.NumeCalle,'0') as NurePers, IFNULL(domicilio.barrio,'') as DebrPers, IFNULL(domicilio.Manzana,'') as MarePers, IFNULL(domicilio.Casa,'') as CarePers, "
  loc_C7F581: LitStr " concat(ifnull(domicilio.Monoblock,''),IF(ifnull(domicilio.Dpto,'')<>'',' - ',''),ifnull(domicilio.Dpto,''),IF(ifnull(domicilio.Planta,'')<>'',' - ',''),ifnull(domicilio.Planta,''),IF(ifnull(domicilio.NroLocal,'')<>'',' - ',''), ifnull(domicilio.NroLocal,''))  as UbrePers, "
  loc_C7F584: ConcatStr
  loc_C7F585: FStStrNoPop var_98
  loc_C7F588: LitStr " IFNULL(domicilio.Localidad,'') as DelrPers"
  loc_C7F58B: ConcatStr
  loc_C7F58C: FStStrNoPop var_9C
  loc_C7F58F: LitStr " FROM domicilio"
  loc_C7F592: ConcatStr
  loc_C7F593: FStStrNoPop var_A0
  loc_C7F596: LitStr " WHERE CodiOfic = "
  loc_C7F599: ConcatStr
  loc_C7F59A: FStStrNoPop var_A4
  loc_C7F59D: ILdRf var_8C
  loc_C7F5A0: ConcatStr
  loc_C7F5A1: FStStrNoPop var_A8
  loc_C7F5A4: LitStr " AND CodiCome = "
  loc_C7F5A7: ConcatStr
  loc_C7F5A8: FStStrNoPop var_AC
  loc_C7F5AB: ILdRf var_90
  loc_C7F5AE: ConcatStr
  loc_C7F5AF: FStStrNoPop var_B0
  loc_C7F5B2: LitStr " AND Tipo = 'POSTAL'"
  loc_C7F5B5: ConcatStr
  loc_C7F5B6: FStStrNoPop var_B4
  loc_C7F5B9: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_C7F5BE: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_C7F5D1: FLdRfVar var_C4
  loc_C7F5D4: FMemLdPr
  loc_C7F5D9:  = Me.RecordCount
  loc_C7F5DE: ILdRf var_C4
  loc_C7F5E1: LitI4 0
  loc_C7F5E6: GtI4
  loc_C7F5E7: BranchF loc_C7F7D0
  loc_C7F5EA: FLdRfVar var_EC
  loc_C7F5ED: FLdRfVar var_DC
  loc_C7F5F0: LitVarStr var_D8, "DecrPers"
  loc_C7F5F5: PopAdLdVar
  loc_C7F5F6: FLdRfVar var_C8
  loc_C7F5F9: FMemLdPr
  loc_C7F5FE:  = Me.Fields
  loc_C7F603: FLdPr var_C8
  loc_C7F606: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F60B: FLdPr var_DC
  loc_C7F60E:  = Me.Value
  loc_C7F613: FLdRfVar var_EC
  loc_C7F616: CStrVarTmp
  loc_C7F617: FStStrNoPop var_98
  loc_C7F61A: ILdPr
  loc_C7F61D: Call tblPersona.DetaCallPut(from_stack_1v)
  loc_C7F622: FFree1Str var_98
  loc_C7F625: FFreeAd var_C8 = ""
  loc_C7F62C: FFree1Var var_EC = ""
  loc_C7F62F: FLdRfVar var_EC
  loc_C7F632: FLdRfVar var_DC
  loc_C7F635: LitVarStr var_D8, "NurePers"
  loc_C7F63A: PopAdLdVar
  loc_C7F63B: FLdRfVar var_C8
  loc_C7F63E: FMemLdPr
  loc_C7F643:  = Me.Fields
  loc_C7F648: FLdPr var_C8
  loc_C7F64B: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F650: FLdPr var_DC
  loc_C7F653:  = Me.Value
  loc_C7F658: FLdRfVar var_EC
  loc_C7F65B: CStrVarTmp
  loc_C7F65C: FStStrNoPop var_98
  loc_C7F65F: ILdPr
  loc_C7F662: Call tblPersona.NumeCasaPut(from_stack_1v)
  loc_C7F667: FFree1Str var_98
  loc_C7F66A: FFreeAd var_C8 = ""
  loc_C7F671: FFree1Var var_EC = ""
  loc_C7F674: FLdRfVar var_EC
  loc_C7F677: FLdRfVar var_DC
  loc_C7F67A: LitVarStr var_D8, "DebrPers"
  loc_C7F67F: PopAdLdVar
  loc_C7F680: FLdRfVar var_C8
  loc_C7F683: FMemLdPr
  loc_C7F688:  = Me.Fields
  loc_C7F68D: FLdPr var_C8
  loc_C7F690: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F695: FLdPr var_DC
  loc_C7F698:  = Me.Value
  loc_C7F69D: FLdRfVar var_EC
  loc_C7F6A0: CStrVarTmp
  loc_C7F6A1: FStStrNoPop var_98
  loc_C7F6A4: ILdPr
  loc_C7F6A7: Call tblPersona.DetaBarrPut(from_stack_1v)
  loc_C7F6AC: FFree1Str var_98
  loc_C7F6AF: FFreeAd var_C8 = ""
  loc_C7F6B6: FFree1Var var_EC = ""
  loc_C7F6B9: FLdRfVar var_EC
  loc_C7F6BC: FLdRfVar var_DC
  loc_C7F6BF: LitVarStr var_D8, "MarePers"
  loc_C7F6C4: PopAdLdVar
  loc_C7F6C5: FLdRfVar var_C8
  loc_C7F6C8: FMemLdPr
  loc_C7F6CD:  = Me.Fields
  loc_C7F6D2: FLdPr var_C8
  loc_C7F6D5: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F6DA: FLdPr var_DC
  loc_C7F6DD:  = Me.Value
  loc_C7F6E2: FLdRfVar var_EC
  loc_C7F6E5: CStrVarTmp
  loc_C7F6E6: FStStrNoPop var_98
  loc_C7F6E9: ILdPr
  loc_C7F6EC: Call tblPersona.ManzPersPut(from_stack_1v)
  loc_C7F6F1: FFree1Str var_98
  loc_C7F6F4: FFreeAd var_C8 = ""
  loc_C7F6FB: FFree1Var var_EC = ""
  loc_C7F6FE: FLdRfVar var_EC
  loc_C7F701: FLdRfVar var_DC
  loc_C7F704: LitVarStr var_D8, "CarePers"
  loc_C7F709: PopAdLdVar
  loc_C7F70A: FLdRfVar var_C8
  loc_C7F70D: FMemLdPr
  loc_C7F712:  = Me.Fields
  loc_C7F717: FLdPr var_C8
  loc_C7F71A: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F71F: FLdPr var_DC
  loc_C7F722:  = Me.Value
  loc_C7F727: FLdRfVar var_EC
  loc_C7F72A: CStrVarTmp
  loc_C7F72B: FStStrNoPop var_98
  loc_C7F72E: ILdPr
  loc_C7F731: Call tblPersona.CasaPersPut(from_stack_1v)
  loc_C7F736: FFree1Str var_98
  loc_C7F739: FFreeAd var_C8 = ""
  loc_C7F740: FFree1Var var_EC = ""
  loc_C7F743: FLdRfVar var_EC
  loc_C7F746: FLdRfVar var_DC
  loc_C7F749: LitVarStr var_D8, "UbrePers"
  loc_C7F74E: PopAdLdVar
  loc_C7F74F: FLdRfVar var_C8
  loc_C7F752: FMemLdPr
  loc_C7F757:  = Me.Fields
  loc_C7F75C: FLdPr var_C8
  loc_C7F75F: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F764: FLdPr var_DC
  loc_C7F767:  = Me.Value
  loc_C7F76C: FLdRfVar var_EC
  loc_C7F76F: CStrVarTmp
  loc_C7F770: FStStrNoPop var_98
  loc_C7F773: ILdPr
  loc_C7F776: Call tblPersona.UbicPersPut(from_stack_1v)
  loc_C7F77B: FFree1Str var_98
  loc_C7F77E: FFreeAd var_C8 = ""
  loc_C7F785: FFree1Var var_EC = ""
  loc_C7F788: FLdRfVar var_EC
  loc_C7F78B: FLdRfVar var_DC
  loc_C7F78E: LitVarStr var_D8, "DelrPers"
  loc_C7F793: PopAdLdVar
  loc_C7F794: FLdRfVar var_C8
  loc_C7F797: FMemLdPr
  loc_C7F79C:  = Me.Fields
  loc_C7F7A1: FLdPr var_C8
  loc_C7F7A4: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F7A9: FLdPr var_DC
  loc_C7F7AC:  = Me.Value
  loc_C7F7B1: FLdRfVar var_EC
  loc_C7F7B4: CStrVarTmp
  loc_C7F7B5: FStStrNoPop var_98
  loc_C7F7B8: ILdPr
  loc_C7F7BB: Call tblPersona.DetaLocaPut(from_stack_1v)
  loc_C7F7C0: FFree1Str var_98
  loc_C7F7C3: FFreeAd var_C8 = ""
  loc_C7F7CA: FFree1Var var_EC = ""
  loc_C7F7CD: Branch loc_C7F81D
  loc_C7F7D0: LitStr vbNullString
  loc_C7F7D3: ILdPr
  loc_C7F7D6: Call tblPersona.DetaCallPut(from_stack_1v)
  loc_C7F7DB: LitStr vbNullString
  loc_C7F7DE: ILdPr
  loc_C7F7E1: Call tblPersona.NumeCasaPut(from_stack_1v)
  loc_C7F7E6: LitStr vbNullString
  loc_C7F7E9: ILdPr
  loc_C7F7EC: Call tblPersona.DetaBarrPut(from_stack_1v)
  loc_C7F7F1: LitStr vbNullString
  loc_C7F7F4: ILdPr
  loc_C7F7F7: Call tblPersona.ManzPersPut(from_stack_1v)
  loc_C7F7FC: LitStr vbNullString
  loc_C7F7FF: ILdPr
  loc_C7F802: Call tblPersona.CasaPersPut(from_stack_1v)
  loc_C7F807: LitStr vbNullString
  loc_C7F80A: ILdPr
  loc_C7F80D: Call tblPersona.UbicPersPut(from_stack_1v)
  loc_C7F812: LitStr vbNullString
  loc_C7F815: ILdPr
  loc_C7F818: Call tblPersona.DetaLocaPut(from_stack_1v)
  loc_C7F81D: Branch loc_C7FABF
  loc_C7F820: LitStr " SELECT IFNULL(domicilio.calle,'') as DecrPers, IFNULL(domicilio.NumeCalle,'0') as NurePers, IFNULL(domicilio.barrio,'') as DebrPers, IFNULL(domicilio.Manzana,'') as MarePers, IFNULL(domicilio.Casa,'') as CarePers, "
  loc_C7F823: LitStr " concat(ifnull(domicilio.Monoblock,''),IF(ifnull(domicilio.Dpto,'')<>'',' - ',''),ifnull(domicilio.Dpto,''),IF(ifnull(domicilio.Planta,'')<>'',' - ',''),ifnull(domicilio.Planta,''),IF(ifnull(domicilio.NroLocal,'')<>'',' - ',''), ifnull(domicilio.NroLocal,''))  as UbrePers, "
  loc_C7F826: ConcatStr
  loc_C7F827: FStStrNoPop var_98
  loc_C7F82A: LitStr " IFNULL(domicilio.Localidad,'') as DelrPers"
  loc_C7F82D: ConcatStr
  loc_C7F82E: FStStrNoPop var_9C
  loc_C7F831: LitStr " FROM domicilio"
  loc_C7F834: ConcatStr
  loc_C7F835: FStStrNoPop var_A0
  loc_C7F838: LitStr " WHERE CodiOfic = "
  loc_C7F83B: ConcatStr
  loc_C7F83C: FStStrNoPop var_A4
  loc_C7F83F: ILdRf var_8C
  loc_C7F842: ConcatStr
  loc_C7F843: FStStrNoPop var_A8
  loc_C7F846: LitStr " AND CodiCome = "
  loc_C7F849: ConcatStr
  loc_C7F84A: FStStrNoPop var_AC
  loc_C7F84D: ILdRf var_90
  loc_C7F850: ConcatStr
  loc_C7F851: FStStrNoPop var_B0
  loc_C7F854: LitStr " AND Tipo = 'COMERCIAL'"
  loc_C7F857: ConcatStr
  loc_C7F858: FStStrNoPop var_B4
  loc_C7F85B: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_C7F860: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_C7F873: FLdRfVar var_C4
  loc_C7F876: FMemLdPr
  loc_C7F87B:  = Me.RecordCount
  loc_C7F880: ILdRf var_C4
  loc_C7F883: LitI4 0
  loc_C7F888: GtI4
  loc_C7F889: BranchF loc_C7FA72
  loc_C7F88C: FLdRfVar var_EC
  loc_C7F88F: FLdRfVar var_DC
  loc_C7F892: LitVarStr var_D8, "DecrPers"
  loc_C7F897: PopAdLdVar
  loc_C7F898: FLdRfVar var_C8
  loc_C7F89B: FMemLdPr
  loc_C7F8A0:  = Me.Fields
  loc_C7F8A5: FLdPr var_C8
  loc_C7F8A8: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F8AD: FLdPr var_DC
  loc_C7F8B0:  = Me.Value
  loc_C7F8B5: FLdRfVar var_EC
  loc_C7F8B8: CStrVarTmp
  loc_C7F8B9: FStStrNoPop var_98
  loc_C7F8BC: ILdPr
  loc_C7F8BF: Call tblPersona.DetaCallPut(from_stack_1v)
  loc_C7F8C4: FFree1Str var_98
  loc_C7F8C7: FFreeAd var_C8 = ""
  loc_C7F8CE: FFree1Var var_EC = ""
  loc_C7F8D1: FLdRfVar var_EC
  loc_C7F8D4: FLdRfVar var_DC
  loc_C7F8D7: LitVarStr var_D8, "NurePers"
  loc_C7F8DC: PopAdLdVar
  loc_C7F8DD: FLdRfVar var_C8
  loc_C7F8E0: FMemLdPr
  loc_C7F8E5:  = Me.Fields
  loc_C7F8EA: FLdPr var_C8
  loc_C7F8ED: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F8F2: FLdPr var_DC
  loc_C7F8F5:  = Me.Value
  loc_C7F8FA: FLdRfVar var_EC
  loc_C7F8FD: CStrVarTmp
  loc_C7F8FE: FStStrNoPop var_98
  loc_C7F901: ILdPr
  loc_C7F904: Call tblPersona.NumeCasaPut(from_stack_1v)
  loc_C7F909: FFree1Str var_98
  loc_C7F90C: FFreeAd var_C8 = ""
  loc_C7F913: FFree1Var var_EC = ""
  loc_C7F916: FLdRfVar var_EC
  loc_C7F919: FLdRfVar var_DC
  loc_C7F91C: LitVarStr var_D8, "DebrPers"
  loc_C7F921: PopAdLdVar
  loc_C7F922: FLdRfVar var_C8
  loc_C7F925: FMemLdPr
  loc_C7F92A:  = Me.Fields
  loc_C7F92F: FLdPr var_C8
  loc_C7F932: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F937: FLdPr var_DC
  loc_C7F93A:  = Me.Value
  loc_C7F93F: FLdRfVar var_EC
  loc_C7F942: CStrVarTmp
  loc_C7F943: FStStrNoPop var_98
  loc_C7F946: ILdPr
  loc_C7F949: Call tblPersona.DetaBarrPut(from_stack_1v)
  loc_C7F94E: FFree1Str var_98
  loc_C7F951: FFreeAd var_C8 = ""
  loc_C7F958: FFree1Var var_EC = ""
  loc_C7F95B: FLdRfVar var_EC
  loc_C7F95E: FLdRfVar var_DC
  loc_C7F961: LitVarStr var_D8, "MarePers"
  loc_C7F966: PopAdLdVar
  loc_C7F967: FLdRfVar var_C8
  loc_C7F96A: FMemLdPr
  loc_C7F96F:  = Me.Fields
  loc_C7F974: FLdPr var_C8
  loc_C7F977: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F97C: FLdPr var_DC
  loc_C7F97F:  = Me.Value
  loc_C7F984: FLdRfVar var_EC
  loc_C7F987: CStrVarTmp
  loc_C7F988: FStStrNoPop var_98
  loc_C7F98B: ILdPr
  loc_C7F98E: Call tblPersona.ManzPersPut(from_stack_1v)
  loc_C7F993: FFree1Str var_98
  loc_C7F996: FFreeAd var_C8 = ""
  loc_C7F99D: FFree1Var var_EC = ""
  loc_C7F9A0: FLdRfVar var_EC
  loc_C7F9A3: FLdRfVar var_DC
  loc_C7F9A6: LitVarStr var_D8, "CarePers"
  loc_C7F9AB: PopAdLdVar
  loc_C7F9AC: FLdRfVar var_C8
  loc_C7F9AF: FMemLdPr
  loc_C7F9B4:  = Me.Fields
  loc_C7F9B9: FLdPr var_C8
  loc_C7F9BC: from_stack_2 = Me.Item(from_stack_1)
  loc_C7F9C1: FLdPr var_DC
  loc_C7F9C4:  = Me.Value
  loc_C7F9C9: FLdRfVar var_EC
  loc_C7F9CC: CStrVarTmp
  loc_C7F9CD: FStStrNoPop var_98
  loc_C7F9D0: ILdPr
  loc_C7F9D3: Call tblPersona.CasaPersPut(from_stack_1v)
  loc_C7F9D8: FFree1Str var_98
  loc_C7F9DB: FFreeAd var_C8 = ""
  loc_C7F9E2: FFree1Var var_EC = ""
  loc_C7F9E5: FLdRfVar var_EC
  loc_C7F9E8: FLdRfVar var_DC
  loc_C7F9EB: LitVarStr var_D8, "UbrePers"
  loc_C7F9F0: PopAdLdVar
  loc_C7F9F1: FLdRfVar var_C8
  loc_C7F9F4: FMemLdPr
  loc_C7F9F9:  = Me.Fields
  loc_C7F9FE: FLdPr var_C8
  loc_C7FA01: from_stack_2 = Me.Item(from_stack_1)
  loc_C7FA06: FLdPr var_DC
  loc_C7FA09:  = Me.Value
  loc_C7FA0E: FLdRfVar var_EC
  loc_C7FA11: CStrVarTmp
  loc_C7FA12: FStStrNoPop var_98
  loc_C7FA15: ILdPr
  loc_C7FA18: Call tblPersona.UbicPersPut(from_stack_1v)
  loc_C7FA1D: FFree1Str var_98
  loc_C7FA20: FFreeAd var_C8 = ""
  loc_C7FA27: FFree1Var var_EC = ""
  loc_C7FA2A: FLdRfVar var_EC
  loc_C7FA2D: FLdRfVar var_DC
  loc_C7FA30: LitVarStr var_D8, "DelrPers"
  loc_C7FA35: PopAdLdVar
  loc_C7FA36: FLdRfVar var_C8
  loc_C7FA39: FMemLdPr
  loc_C7FA3E:  = Me.Fields
  loc_C7FA43: FLdPr var_C8
  loc_C7FA46: from_stack_2 = Me.Item(from_stack_1)
  loc_C7FA4B: FLdPr var_DC
  loc_C7FA4E:  = Me.Value
  loc_C7FA53: FLdRfVar var_EC
  loc_C7FA56: CStrVarTmp
  loc_C7FA57: FStStrNoPop var_98
  loc_C7FA5A: ILdPr
  loc_C7FA5D: Call tblPersona.DetaLocaPut(from_stack_1v)
  loc_C7FA62: FFree1Str var_98
  loc_C7FA65: FFreeAd var_C8 = ""
  loc_C7FA6C: FFree1Var var_EC = ""
  loc_C7FA6F: Branch loc_C7FABF
  loc_C7FA72: LitStr vbNullString
  loc_C7FA75: ILdPr
  loc_C7FA78: Call tblPersona.DetaCallPut(from_stack_1v)
  loc_C7FA7D: LitStr vbNullString
  loc_C7FA80: ILdPr
  loc_C7FA83: Call tblPersona.NumeCasaPut(from_stack_1v)
  loc_C7FA88: LitStr vbNullString
  loc_C7FA8B: ILdPr
  loc_C7FA8E: Call tblPersona.DetaBarrPut(from_stack_1v)
  loc_C7FA93: LitStr vbNullString
  loc_C7FA96: ILdPr
  loc_C7FA99: Call tblPersona.ManzPersPut(from_stack_1v)
  loc_C7FA9E: LitStr vbNullString
  loc_C7FAA1: ILdPr
  loc_C7FAA4: Call tblPersona.CasaPersPut(from_stack_1v)
  loc_C7FAA9: LitStr vbNullString
  loc_C7FAAC: ILdPr
  loc_C7FAAF: Call tblPersona.UbicPersPut(from_stack_1v)
  loc_C7FAB4: LitStr vbNullString
  loc_C7FAB7: ILdPr
  loc_C7FABA: Call tblPersona.DetaLocaPut(from_stack_1v)
  loc_C7FABF: LitI2_Byte &HFF
  loc_C7FAC1: FStI2 var_86
  loc_C7FAC4: Branch loc_C7FB3A
  loc_C7FAC7: LitStr "No existe Contribuyente para la OFICINA y CUENTA seleccionada. Verifique..."
  loc_C7FACA: ILdPr
  loc_C7FACD: Call tblPersona.MsgErrorPut(from_stack_1v)
  loc_C7FAD2: LitStr vbNullString
  loc_C7FAD5: ILdPr
  loc_C7FAD8: Call tblPersona.CucuPersPut(from_stack_1v)
  loc_C7FADD: LitStr vbNullString
  loc_C7FAE0: ILdPr
  loc_C7FAE3: Call tblPersona.DetaPersPut(from_stack_1v)
  loc_C7FAE8: LitStr vbNullString
  loc_C7FAEB: ILdPr
  loc_C7FAEE: Call tblPersona.DetaCallPut(from_stack_1v)
  loc_C7FAF3: LitStr vbNullString
  loc_C7FAF6: ILdPr
  loc_C7FAF9: Call tblPersona.NumeCasaPut(from_stack_1v)
  loc_C7FAFE: LitStr vbNullString
  loc_C7FB01: ILdPr
  loc_C7FB04: Call tblPersona.DetaBarrPut(from_stack_1v)
  loc_C7FB09: LitStr vbNullString
  loc_C7FB0C: ILdPr
  loc_C7FB0F: Call tblPersona.ManzPersPut(from_stack_1v)
  loc_C7FB14: LitStr vbNullString
  loc_C7FB17: ILdPr
  loc_C7FB1A: Call tblPersona.CasaPersPut(from_stack_1v)
  loc_C7FB1F: LitStr vbNullString
  loc_C7FB22: ILdPr
  loc_C7FB25: Call tblPersona.UbicPersPut(from_stack_1v)
  loc_C7FB2A: LitStr vbNullString
  loc_C7FB2D: ILdPr
  loc_C7FB30: Call tblPersona.DetaLocaPut(from_stack_1v)
  loc_C7FB35: LitI2_Byte 0
  loc_C7FB37: FStI2 var_86
  loc_C7FB3A: ExitProcI2
End Function

Private Function Proc_270_13_C86920(arg_C) 'C86920
  'Data Table: 4C25A4
  loc_C85308: ILdRf arg_C
  loc_C8530B: FStStrCopy var_8C
  loc_C8530E: LitStr "SELECT IFNULL(CUIT,'') cuit, denominacion DetaPers, '' Vinculo, IFNULL(dependencia,'0') dependencia, IFNULL(distrito,'0') distrito, IFNULL(seccion,'') seccion, IFNULL(vpadrones_parcela.manzana,'') manzana, IFNULL(parcela,0) parcela, IFNULL(subparcela,0) subparcela, IFNULL(dig_veri,'0') DigiVeri, "
  loc_C85311: LitStr " IFNULL(domipostal.Calle,'') DecaPost, IFNULL(domipostal.NumeCalle,'') NumePost, IFNULL(domipostal.Barrio,'') DebaPost, IFNULL(domipostal.Manzana,'') ManzPost, IFNULL(domipostal.casa,'') CasaPost, IFNULL(domipostal.ubicacion,'') UbicPost, IFNULL(domipostal.Localidad,'') DeloPost, IFNULL(domipostal.CodPostal,'') CopoPost,"
  loc_C85314: ConcatStr
  loc_C85315: FStStrNoPop var_90
  loc_C85318: LitStr " IFNULL(domireal.Calle,'') DetaCall, IFNULL(domireal.NumeCalle,'') NucaInmu, IFNULL(domireal.Barrio,'') DetaBarr, IFNULL(domireal.Manzana,'') ManzInmu, IFNULL(domireal.casa,'') CasaInmu, IFNULL(domireal.ubicacion,'') UbicInmu, IFNULL(domireal.Localidad,'') DetaLoca, IFNULL(domireal.CodPostal,'') CodiPost,"
  loc_C8531B: ConcatStr
  loc_C8531C: FStStrNoPop var_94
  loc_C8531F: LitStr " parcela_superficie SupeInmu, IFNULL(parcela_avaluo,0) AvalInmu, IFNULL(parcela_ryb_cod,0) CodiRyB, IFNULL(parcela_ryb_descrip,'') DetaRyB, parcela_estado_codigo CodiEsta, parcela_estado_descrip DetaEsta, parcela_estado_fecha FechEsta, parcela_fecha_alta FechAlta, parcela_fecha_modificacion FechModi "
  loc_C85322: ConcatStr
  loc_C85323: FStStrNoPop var_98
  loc_C85326: LitStr " FROM vpadrones_parcela "
  loc_C85329: ConcatStr
  loc_C8532A: FStStrNoPop var_9C
  loc_C8532D: LitStr " INNER JOIN vpadrones_persona ON vpadrones_persona.nro_padron =  vpadrones_parcela.nro_padron"
  loc_C85330: ConcatStr
  loc_C85331: FStStrNoPop var_A0
  loc_C85334: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 1"
  loc_C85337: ConcatStr
  loc_C85338: FStStrNoPop var_A4
  loc_C8533B: LitStr " AND  domireal.CodiCome = vpadrones_parcela.nro_padron"
  loc_C8533E: ConcatStr
  loc_C8533F: FStStrNoPop var_A8
  loc_C85342: LitStr " AND domireal.Tipo = 'Real'"
  loc_C85345: ConcatStr
  loc_C85346: FStStrNoPop var_AC
  loc_C85349: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 1"
  loc_C8534C: ConcatStr
  loc_C8534D: FStStrNoPop var_B0
  loc_C85350: LitStr " AND  domipostal.CodiCome = vpadrones_parcela.nro_padron"
  loc_C85353: ConcatStr
  loc_C85354: FStStrNoPop var_B4
  loc_C85357: LitStr " AND domipostal.Tipo = 'Rentas'"
  loc_C8535A: ConcatStr
  loc_C8535B: FStStrNoPop var_B8
  loc_C8535E: LitStr " WHERE vpadrones_parcela.nro_padron = "
  loc_C85361: ConcatStr
  loc_C85362: FStStrNoPop var_BC
  loc_C85365: ILdRf var_8C
  loc_C85368: ConcatStr
  loc_C85369: FStStrNoPop var_C0
  loc_C8536C: LitStr " AND principal = 'Si'"
  loc_C8536F: ConcatStr
  loc_C85370: FStStrNoPop var_C4
  loc_C85373: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_C85378: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_C85397: FLdRfVar var_C8
  loc_C8539A: FMemLdPr
  loc_C8539F:  = Me.RecordCount
  loc_C853A4: ILdRf var_C8
  loc_C853A7: LitI4 0
  loc_C853AC: GtI4
  loc_C853AD: BranchF loc_C85D68
  loc_C853B0: LitStr vbNullString
  loc_C853B3: ILdPr
  loc_C853B6: Call tblPersonaGIS.MsgErrorPut(from_stack_1v)
  loc_C853BB: FLdRfVar var_F0
  loc_C853BE: FLdRfVar var_E0
  loc_C853C1: LitVarStr var_DC, "cuit"
  loc_C853C6: PopAdLdVar
  loc_C853C7: FLdRfVar var_CC
  loc_C853CA: FMemLdPr
  loc_C853CF:  = Me.Fields
  loc_C853D4: FLdPr var_CC
  loc_C853D7: from_stack_2 = Me.Item(from_stack_1)
  loc_C853DC: FLdPr var_E0
  loc_C853DF:  = Me.Value
  loc_C853E4: FLdRfVar var_F0
  loc_C853E7: CStrVarTmp
  loc_C853E8: FStStrNoPop var_90
  loc_C853EB: ILdPr
  loc_C853EE: Call tblPersonaGIS.CucuPersPut(from_stack_1v)
  loc_C853F3: FFree1Str var_90
  loc_C853F6: FFreeAd var_CC = ""
  loc_C853FD: FFree1Var var_F0 = ""
  loc_C85400: FLdRfVar var_F0
  loc_C85403: FLdRfVar var_E0
  loc_C85406: LitVarStr var_DC, "DetaPers"
  loc_C8540B: PopAdLdVar
  loc_C8540C: FLdRfVar var_CC
  loc_C8540F: FMemLdPr
  loc_C85414:  = Me.Fields
  loc_C85419: FLdPr var_CC
  loc_C8541C: from_stack_2 = Me.Item(from_stack_1)
  loc_C85421: FLdPr var_E0
  loc_C85424:  = Me.Value
  loc_C85429: FLdRfVar var_F0
  loc_C8542C: CStrVarTmp
  loc_C8542D: FStStrNoPop var_90
  loc_C85430: ILdPr
  loc_C85433: Call tblPersonaGIS.DetaPersPut(from_stack_1v)
  loc_C85438: FFree1Str var_90
  loc_C8543B: FFreeAd var_CC = ""
  loc_C85442: FFree1Var var_F0 = ""
  loc_C85445: FLdRfVar var_F0
  loc_C85448: FLdRfVar var_E0
  loc_C8544B: LitVarStr var_DC, "Dependencia"
  loc_C85450: PopAdLdVar
  loc_C85451: FLdRfVar var_CC
  loc_C85454: FMemLdPr
  loc_C85459:  = Me.Fields
  loc_C8545E: FLdPr var_CC
  loc_C85461: from_stack_2 = Me.Item(from_stack_1)
  loc_C85466: FLdPr var_E0
  loc_C85469:  = Me.Value
  loc_C8546E: FLdRfVar var_F0
  loc_C85471: CStrVarTmp
  loc_C85472: FStStrNoPop var_90
  loc_C85475: ILdPr
  loc_C85478: Call tblPersonaGIS.DependenciaPut(from_stack_1v)
  loc_C8547D: FFree1Str var_90
  loc_C85480: FFreeAd var_CC = ""
  loc_C85487: FFree1Var var_F0 = ""
  loc_C8548A: FLdRfVar var_F0
  loc_C8548D: FLdRfVar var_E0
  loc_C85490: LitVarStr var_DC, "Distrito"
  loc_C85495: PopAdLdVar
  loc_C85496: FLdRfVar var_CC
  loc_C85499: FMemLdPr
  loc_C8549E:  = Me.Fields
  loc_C854A3: FLdPr var_CC
  loc_C854A6: from_stack_2 = Me.Item(from_stack_1)
  loc_C854AB: FLdPr var_E0
  loc_C854AE:  = Me.Value
  loc_C854B3: FLdRfVar var_F0
  loc_C854B6: CStrVarTmp
  loc_C854B7: FStStrNoPop var_90
  loc_C854BA: ILdPr
  loc_C854BD: Call tblPersonaGIS.DistritoPut(from_stack_1v)
  loc_C854C2: FFree1Str var_90
  loc_C854C5: FFreeAd var_CC = ""
  loc_C854CC: FFree1Var var_F0 = ""
  loc_C854CF: FLdRfVar var_F0
  loc_C854D2: FLdRfVar var_E0
  loc_C854D5: LitVarStr var_DC, "Seccion"
  loc_C854DA: PopAdLdVar
  loc_C854DB: FLdRfVar var_CC
  loc_C854DE: FMemLdPr
  loc_C854E3:  = Me.Fields
  loc_C854E8: FLdPr var_CC
  loc_C854EB: from_stack_2 = Me.Item(from_stack_1)
  loc_C854F0: FLdPr var_E0
  loc_C854F3:  = Me.Value
  loc_C854F8: FLdRfVar var_F0
  loc_C854FB: CStrVarTmp
  loc_C854FC: FStStrNoPop var_90
  loc_C854FF: ILdPr
  loc_C85502: Call tblPersonaGIS.SeccionPut(from_stack_1v)
  loc_C85507: FFree1Str var_90
  loc_C8550A: FFreeAd var_CC = ""
  loc_C85511: FFree1Var var_F0 = ""
  loc_C85514: FLdRfVar var_F0
  loc_C85517: FLdRfVar var_E0
  loc_C8551A: LitVarStr var_DC, "Manzana"
  loc_C8551F: PopAdLdVar
  loc_C85520: FLdRfVar var_CC
  loc_C85523: FMemLdPr
  loc_C85528:  = Me.Fields
  loc_C8552D: FLdPr var_CC
  loc_C85530: from_stack_2 = Me.Item(from_stack_1)
  loc_C85535: FLdPr var_E0
  loc_C85538:  = Me.Value
  loc_C8553D: FLdRfVar var_F0
  loc_C85540: CStrVarTmp
  loc_C85541: FStStrNoPop var_90
  loc_C85544: ILdPr
  loc_C85547: Call tblPersonaGIS.ManzanaPut(from_stack_1v)
  loc_C8554C: FFree1Str var_90
  loc_C8554F: FFreeAd var_CC = ""
  loc_C85556: FFree1Var var_F0 = ""
  loc_C85559: FLdRfVar var_F0
  loc_C8555C: FLdRfVar var_E0
  loc_C8555F: LitVarStr var_DC, "Parcela"
  loc_C85564: PopAdLdVar
  loc_C85565: FLdRfVar var_CC
  loc_C85568: FMemLdPr
  loc_C8556D:  = Me.Fields
  loc_C85572: FLdPr var_CC
  loc_C85575: from_stack_2 = Me.Item(from_stack_1)
  loc_C8557A: FLdPr var_E0
  loc_C8557D:  = Me.Value
  loc_C85582: FLdRfVar var_F0
  loc_C85585: CStrVarTmp
  loc_C85586: FStStrNoPop var_90
  loc_C85589: ILdPr
  loc_C8558C: Call tblPersonaGIS.ParcelaPut(from_stack_1v)
  loc_C85591: FFree1Str var_90
  loc_C85594: FFreeAd var_CC = ""
  loc_C8559B: FFree1Var var_F0 = ""
  loc_C8559E: FLdRfVar var_F0
  loc_C855A1: FLdRfVar var_E0
  loc_C855A4: LitVarStr var_DC, "Subparcela"
  loc_C855A9: PopAdLdVar
  loc_C855AA: FLdRfVar var_CC
  loc_C855AD: FMemLdPr
  loc_C855B2:  = Me.Fields
  loc_C855B7: FLdPr var_CC
  loc_C855BA: from_stack_2 = Me.Item(from_stack_1)
  loc_C855BF: FLdPr var_E0
  loc_C855C2:  = Me.Value
  loc_C855C7: FLdRfVar var_F0
  loc_C855CA: CStrVarTmp
  loc_C855CB: FStStrNoPop var_90
  loc_C855CE: ILdPr
  loc_C855D1: Call tblPersonaGIS.SubparcelaPut(from_stack_1v)
  loc_C855D6: FFree1Str var_90
  loc_C855D9: FFreeAd var_CC = ""
  loc_C855E0: FFree1Var var_F0 = ""
  loc_C855E3: FLdRfVar var_F0
  loc_C855E6: FLdRfVar var_E0
  loc_C855E9: LitVarStr var_DC, "DigiVeri"
  loc_C855EE: PopAdLdVar
  loc_C855EF: FLdRfVar var_CC
  loc_C855F2: FMemLdPr
  loc_C855F7:  = Me.Fields
  loc_C855FC: FLdPr var_CC
  loc_C855FF: from_stack_2 = Me.Item(from_stack_1)
  loc_C85604: FLdPr var_E0
  loc_C85607:  = Me.Value
  loc_C8560C: FLdRfVar var_F0
  loc_C8560F: CStrVarTmp
  loc_C85610: FStStrNoPop var_90
  loc_C85613: ILdPr
  loc_C85616: Call tblPersonaGIS.DigiVeriPut(from_stack_1v)
  loc_C8561B: FFree1Str var_90
  loc_C8561E: FFreeAd var_CC = ""
  loc_C85625: FFree1Var var_F0 = ""
  loc_C85628: FLdRfVar var_F0
  loc_C8562B: FLdRfVar var_E0
  loc_C8562E: LitVarStr var_DC, "DecaPost"
  loc_C85633: PopAdLdVar
  loc_C85634: FLdRfVar var_CC
  loc_C85637: FMemLdPr
  loc_C8563C:  = Me.Fields
  loc_C85641: FLdPr var_CC
  loc_C85644: from_stack_2 = Me.Item(from_stack_1)
  loc_C85649: FLdPr var_E0
  loc_C8564C:  = Me.Value
  loc_C85651: FLdRfVar var_F0
  loc_C85654: CStrVarTmp
  loc_C85655: FStStrNoPop var_90
  loc_C85658: ILdPr
  loc_C8565B: Call tblPersonaGIS.DecaPostPut(from_stack_1v)
  loc_C85660: FFree1Str var_90
  loc_C85663: FFreeAd var_CC = ""
  loc_C8566A: FFree1Var var_F0 = ""
  loc_C8566D: FLdRfVar var_F0
  loc_C85670: FLdRfVar var_E0
  loc_C85673: LitVarStr var_DC, "NumePost"
  loc_C85678: PopAdLdVar
  loc_C85679: FLdRfVar var_CC
  loc_C8567C: FMemLdPr
  loc_C85681:  = Me.Fields
  loc_C85686: FLdPr var_CC
  loc_C85689: from_stack_2 = Me.Item(from_stack_1)
  loc_C8568E: FLdPr var_E0
  loc_C85691:  = Me.Value
  loc_C85696: FLdRfVar var_F0
  loc_C85699: CStrVarTmp
  loc_C8569A: FStStrNoPop var_90
  loc_C8569D: ILdPr
  loc_C856A0: Call tblPersonaGIS.NumePostPut(from_stack_1v)
  loc_C856A5: FFree1Str var_90
  loc_C856A8: FFreeAd var_CC = ""
  loc_C856AF: FFree1Var var_F0 = ""
  loc_C856B2: FLdRfVar var_F0
  loc_C856B5: FLdRfVar var_E0
  loc_C856B8: LitVarStr var_DC, "DebaPost"
  loc_C856BD: PopAdLdVar
  loc_C856BE: FLdRfVar var_CC
  loc_C856C1: FMemLdPr
  loc_C856C6:  = Me.Fields
  loc_C856CB: FLdPr var_CC
  loc_C856CE: from_stack_2 = Me.Item(from_stack_1)
  loc_C856D3: FLdPr var_E0
  loc_C856D6:  = Me.Value
  loc_C856DB: FLdRfVar var_F0
  loc_C856DE: CStrVarTmp
  loc_C856DF: FStStrNoPop var_90
  loc_C856E2: ILdPr
  loc_C856E5: Call tblPersonaGIS.DebaPostPut(from_stack_1v)
  loc_C856EA: FFree1Str var_90
  loc_C856ED: FFreeAd var_CC = ""
  loc_C856F4: FFree1Var var_F0 = ""
  loc_C856F7: FLdRfVar var_F0
  loc_C856FA: FLdRfVar var_E0
  loc_C856FD: LitVarStr var_DC, "ManzPost"
  loc_C85702: PopAdLdVar
  loc_C85703: FLdRfVar var_CC
  loc_C85706: FMemLdPr
  loc_C8570B:  = Me.Fields
  loc_C85710: FLdPr var_CC
  loc_C85713: from_stack_2 = Me.Item(from_stack_1)
  loc_C85718: FLdPr var_E0
  loc_C8571B:  = Me.Value
  loc_C85720: FLdRfVar var_F0
  loc_C85723: CStrVarTmp
  loc_C85724: FStStrNoPop var_90
  loc_C85727: ILdPr
  loc_C8572A: Call tblPersonaGIS.ManzPostPut(from_stack_1v)
  loc_C8572F: FFree1Str var_90
  loc_C85732: FFreeAd var_CC = ""
  loc_C85739: FFree1Var var_F0 = ""
  loc_C8573C: FLdRfVar var_F0
  loc_C8573F: FLdRfVar var_E0
  loc_C85742: LitVarStr var_DC, "CasaPost"
  loc_C85747: PopAdLdVar
  loc_C85748: FLdRfVar var_CC
  loc_C8574B: FMemLdPr
  loc_C85750:  = Me.Fields
  loc_C85755: FLdPr var_CC
  loc_C85758: from_stack_2 = Me.Item(from_stack_1)
  loc_C8575D: FLdPr var_E0
  loc_C85760:  = Me.Value
  loc_C85765: FLdRfVar var_F0
  loc_C85768: CStrVarTmp
  loc_C85769: FStStrNoPop var_90
  loc_C8576C: ILdPr
  loc_C8576F: Call tblPersonaGIS.CasaPostPut(from_stack_1v)
  loc_C85774: FFree1Str var_90
  loc_C85777: FFreeAd var_CC = ""
  loc_C8577E: FFree1Var var_F0 = ""
  loc_C85781: FLdRfVar var_F0
  loc_C85784: FLdRfVar var_E0
  loc_C85787: LitVarStr var_DC, "DeloPost"
  loc_C8578C: PopAdLdVar
  loc_C8578D: FLdRfVar var_CC
  loc_C85790: FMemLdPr
  loc_C85795:  = Me.Fields
  loc_C8579A: FLdPr var_CC
  loc_C8579D: from_stack_2 = Me.Item(from_stack_1)
  loc_C857A2: FLdPr var_E0
  loc_C857A5:  = Me.Value
  loc_C857AA: FLdRfVar var_F0
  loc_C857AD: CStrVarTmp
  loc_C857AE: FStStrNoPop var_90
  loc_C857B1: ILdPr
  loc_C857B4: Call tblPersonaGIS.DeloPostPut(from_stack_1v)
  loc_C857B9: FFree1Str var_90
  loc_C857BC: FFreeAd var_CC = ""
  loc_C857C3: FFree1Var var_F0 = ""
  loc_C857C6: FLdRfVar var_F0
  loc_C857C9: FLdRfVar var_E0
  loc_C857CC: LitVarStr var_DC, "DetaCall"
  loc_C857D1: PopAdLdVar
  loc_C857D2: FLdRfVar var_CC
  loc_C857D5: FMemLdPr
  loc_C857DA:  = Me.Fields
  loc_C857DF: FLdPr var_CC
  loc_C857E2: from_stack_2 = Me.Item(from_stack_1)
  loc_C857E7: FLdPr var_E0
  loc_C857EA:  = Me.Value
  loc_C857EF: FLdRfVar var_F0
  loc_C857F2: CStrVarTmp
  loc_C857F3: FStStrNoPop var_90
  loc_C857F6: ILdPr
  loc_C857F9: Call tblPersonaGIS.DetaCallPut(from_stack_1v)
  loc_C857FE: FFree1Str var_90
  loc_C85801: FFreeAd var_CC = ""
  loc_C85808: FFree1Var var_F0 = ""
  loc_C8580B: FLdRfVar var_F0
  loc_C8580E: FLdRfVar var_E0
  loc_C85811: LitVarStr var_DC, "NucaInmu"
  loc_C85816: PopAdLdVar
  loc_C85817: FLdRfVar var_CC
  loc_C8581A: FMemLdPr
  loc_C8581F:  = Me.Fields
  loc_C85824: FLdPr var_CC
  loc_C85827: from_stack_2 = Me.Item(from_stack_1)
  loc_C8582C: FLdPr var_E0
  loc_C8582F:  = Me.Value
  loc_C85834: FLdRfVar var_F0
  loc_C85837: CStrVarTmp
  loc_C85838: FStStrNoPop var_90
  loc_C8583B: ILdPr
  loc_C8583E: Call tblPersonaGIS.NucaInmuPut(from_stack_1v)
  loc_C85843: FFree1Str var_90
  loc_C85846: FFreeAd var_CC = ""
  loc_C8584D: FFree1Var var_F0 = ""
  loc_C85850: FLdRfVar var_F0
  loc_C85853: FLdRfVar var_E0
  loc_C85856: LitVarStr var_DC, "DetaBarr"
  loc_C8585B: PopAdLdVar
  loc_C8585C: FLdRfVar var_CC
  loc_C8585F: FMemLdPr
  loc_C85864:  = Me.Fields
  loc_C85869: FLdPr var_CC
  loc_C8586C: from_stack_2 = Me.Item(from_stack_1)
  loc_C85871: FLdPr var_E0
  loc_C85874:  = Me.Value
  loc_C85879: FLdRfVar var_F0
  loc_C8587C: CStrVarTmp
  loc_C8587D: FStStrNoPop var_90
  loc_C85880: ILdPr
  loc_C85883: Call tblPersonaGIS.DetaBarrPut(from_stack_1v)
  loc_C85888: FFree1Str var_90
  loc_C8588B: FFreeAd var_CC = ""
  loc_C85892: FFree1Var var_F0 = ""
  loc_C85895: FLdRfVar var_F0
  loc_C85898: FLdRfVar var_E0
  loc_C8589B: LitVarStr var_DC, "ManzInmu"
  loc_C858A0: PopAdLdVar
  loc_C858A1: FLdRfVar var_CC
  loc_C858A4: FMemLdPr
  loc_C858A9:  = Me.Fields
  loc_C858AE: FLdPr var_CC
  loc_C858B1: from_stack_2 = Me.Item(from_stack_1)
  loc_C858B6: FLdPr var_E0
  loc_C858B9:  = Me.Value
  loc_C858BE: FLdRfVar var_F0
  loc_C858C1: CStrVarTmp
  loc_C858C2: FStStrNoPop var_90
  loc_C858C5: ILdPr
  loc_C858C8: Call tblPersonaGIS.ManzInmuPut(from_stack_1v)
  loc_C858CD: FFree1Str var_90
  loc_C858D0: FFreeAd var_CC = ""
  loc_C858D7: FFree1Var var_F0 = ""
  loc_C858DA: FLdRfVar var_F0
  loc_C858DD: FLdRfVar var_E0
  loc_C858E0: LitVarStr var_DC, "CasaInmu"
  loc_C858E5: PopAdLdVar
  loc_C858E6: FLdRfVar var_CC
  loc_C858E9: FMemLdPr
  loc_C858EE:  = Me.Fields
  loc_C858F3: FLdPr var_CC
  loc_C858F6: from_stack_2 = Me.Item(from_stack_1)
  loc_C858FB: FLdPr var_E0
  loc_C858FE:  = Me.Value
  loc_C85903: FLdRfVar var_F0
  loc_C85906: CStrVarTmp
  loc_C85907: FStStrNoPop var_90
  loc_C8590A: ILdPr
  loc_C8590D: Call tblPersonaGIS.CasaInmuPut(from_stack_1v)
  loc_C85912: FFree1Str var_90
  loc_C85915: FFreeAd var_CC = ""
  loc_C8591C: FFree1Var var_F0 = ""
  loc_C8591F: FLdRfVar var_F0
  loc_C85922: FLdRfVar var_E0
  loc_C85925: LitVarStr var_DC, "DetaLoca"
  loc_C8592A: PopAdLdVar
  loc_C8592B: FLdRfVar var_CC
  loc_C8592E: FMemLdPr
  loc_C85933:  = Me.Fields
  loc_C85938: FLdPr var_CC
  loc_C8593B: from_stack_2 = Me.Item(from_stack_1)
  loc_C85940: FLdPr var_E0
  loc_C85943:  = Me.Value
  loc_C85948: FLdRfVar var_F0
  loc_C8594B: CStrVarTmp
  loc_C8594C: FStStrNoPop var_90
  loc_C8594F: ILdPr
  loc_C85952: Call tblPersonaGIS.DetaLocaPut(from_stack_1v)
  loc_C85957: FFree1Str var_90
  loc_C8595A: FFreeAd var_CC = ""
  loc_C85961: FFree1Var var_F0 = ""
  loc_C85964: FLdRfVar var_E0
  loc_C85967: LitVarStr var_DC, "SupeInmu"
  loc_C8596C: PopAdLdVar
  loc_C8596D: FLdRfVar var_CC
  loc_C85970: FMemLdPr
  loc_C85975:  = Me.Fields
  loc_C8597A: FLdPr var_CC
  loc_C8597D: from_stack_2 = Me.Item(from_stack_1)
  loc_C85982: LitI4 1
  loc_C85987: LitI4 1
  loc_C8598C: LitVarStr var_100, "0.00"
  loc_C85991: FStVarCopyObj var_110
  loc_C85994: FLdRfVar var_110
  loc_C85997: FLdZeroAd var_E0
  loc_C8599A: CVarAd
  loc_C8599E: FLdRfVar var_120
  loc_C859A1: ImpAdCallFPR4  = Format(, )
  loc_C859A6: FLdRfVar var_120
  loc_C859A9: CStrVarVal var_90
  loc_C859AD: ILdPr
  loc_C859B0: Call tblPersonaGIS.SupeInmuPut(from_stack_1v)
  loc_C859B5: FFree1Str var_90
  loc_C859B8: FFree1Ad var_CC
  loc_C859BB: FFreeVar var_F0 = "": var_110 = ""
  loc_C859C4: FLdRfVar var_F0
  loc_C859C7: FLdRfVar var_E0
  loc_C859CA: LitVarStr var_DC, "AvalInmu"
  loc_C859CF: PopAdLdVar
  loc_C859D0: FLdRfVar var_CC
  loc_C859D3: FMemLdPr
  loc_C859D8:  = Me.Fields
  loc_C859DD: FLdPr var_CC
  loc_C859E0: from_stack_2 = Me.Item(from_stack_1)
  loc_C859E5: FLdPr var_E0
  loc_C859E8:  = Me.Value
  loc_C859ED: FLdRfVar var_F0
  loc_C859F0: CStrVarTmp
  loc_C859F1: FStStrNoPop var_90
  loc_C859F4: ILdPr
  loc_C859F7: Call tblPersonaGIS.AvalInmuPut(from_stack_1v)
  loc_C859FC: FFree1Str var_90
  loc_C859FF: FFreeAd var_CC = ""
  loc_C85A06: FFree1Var var_F0 = ""
  loc_C85A09: FLdRfVar var_F0
  loc_C85A0C: FLdRfVar var_E0
  loc_C85A0F: LitVarStr var_DC, "CodiRyB"
  loc_C85A14: PopAdLdVar
  loc_C85A15: FLdRfVar var_CC
  loc_C85A18: FMemLdPr
  loc_C85A1D:  = Me.Fields
  loc_C85A22: FLdPr var_CC
  loc_C85A25: from_stack_2 = Me.Item(from_stack_1)
  loc_C85A2A: FLdPr var_E0
  loc_C85A2D:  = Me.Value
  loc_C85A32: FLdRfVar var_F0
  loc_C85A35: CStrVarTmp
  loc_C85A36: FStStrNoPop var_90
  loc_C85A39: ILdPr
  loc_C85A3C: Call tblPersonaGIS.CodiRyBPut(from_stack_1v)
  loc_C85A41: FFree1Str var_90
  loc_C85A44: FFreeAd var_CC = ""
  loc_C85A4B: FFree1Var var_F0 = ""
  loc_C85A4E: FLdRfVar var_F0
  loc_C85A51: FLdRfVar var_E0
  loc_C85A54: LitVarStr var_DC, "DetaRyB"
  loc_C85A59: PopAdLdVar
  loc_C85A5A: FLdRfVar var_CC
  loc_C85A5D: FMemLdPr
  loc_C85A62:  = Me.Fields
  loc_C85A67: FLdPr var_CC
  loc_C85A6A: from_stack_2 = Me.Item(from_stack_1)
  loc_C85A6F: FLdPr var_E0
  loc_C85A72:  = Me.Value
  loc_C85A77: FLdRfVar var_F0
  loc_C85A7A: CStrVarTmp
  loc_C85A7B: FStStrNoPop var_90
  loc_C85A7E: ILdPr
  loc_C85A81: Call tblPersonaGIS.DetaRyBPut(from_stack_1v)
  loc_C85A86: FFree1Str var_90
  loc_C85A89: FFreeAd var_CC = ""
  loc_C85A90: FFree1Var var_F0 = ""
  loc_C85A93: FLdRfVar var_F0
  loc_C85A96: FLdRfVar var_E0
  loc_C85A99: LitVarStr var_DC, "CodiEsta"
  loc_C85A9E: PopAdLdVar
  loc_C85A9F: FLdRfVar var_CC
  loc_C85AA2: FMemLdPr
  loc_C85AA7:  = Me.Fields
  loc_C85AAC: FLdPr var_CC
  loc_C85AAF: from_stack_2 = Me.Item(from_stack_1)
  loc_C85AB4: FLdPr var_E0
  loc_C85AB7:  = Me.Value
  loc_C85ABC: FLdRfVar var_F0
  loc_C85ABF: CStrVarTmp
  loc_C85AC0: FStStrNoPop var_90
  loc_C85AC3: ILdPr
  loc_C85AC6: Call tblPersonaGIS.CodiEstaPut(from_stack_1v)
  loc_C85ACB: FFree1Str var_90
  loc_C85ACE: FFreeAd var_CC = ""
  loc_C85AD5: FFree1Var var_F0 = ""
  loc_C85AD8: FLdRfVar var_F0
  loc_C85ADB: FLdRfVar var_E0
  loc_C85ADE: LitVarStr var_DC, "DetaEsta"
  loc_C85AE3: PopAdLdVar
  loc_C85AE4: FLdRfVar var_CC
  loc_C85AE7: FMemLdPr
  loc_C85AEC:  = Me.Fields
  loc_C85AF1: FLdPr var_CC
  loc_C85AF4: from_stack_2 = Me.Item(from_stack_1)
  loc_C85AF9: FLdPr var_E0
  loc_C85AFC:  = Me.Value
  loc_C85B01: FLdRfVar var_F0
  loc_C85B04: CStrVarTmp
  loc_C85B05: FStStrNoPop var_90
  loc_C85B08: ILdPr
  loc_C85B0B: Call tblPersonaGIS.DetaEstaPut(from_stack_1v)
  loc_C85B10: FFree1Str var_90
  loc_C85B13: FFreeAd var_CC = ""
  loc_C85B1A: FFree1Var var_F0 = ""
  loc_C85B1D: FLdRfVar var_F0
  loc_C85B20: FLdRfVar var_E0
  loc_C85B23: LitVarStr var_DC, "FechEsta"
  loc_C85B28: PopAdLdVar
  loc_C85B29: FLdRfVar var_CC
  loc_C85B2C: FMemLdPr
  loc_C85B31:  = Me.Fields
  loc_C85B36: FLdPr var_CC
  loc_C85B39: from_stack_2 = Me.Item(from_stack_1)
  loc_C85B3E: FLdPr var_E0
  loc_C85B41:  = Me.Value
  loc_C85B46: FLdRfVar var_138
  loc_C85B49: LitVarStr var_134, "FechEsta"
  loc_C85B4E: PopAdLdVar
  loc_C85B4F: FLdRfVar var_124
  loc_C85B52: FMemLdPr
  loc_C85B57:  = Me.Fields
  loc_C85B5C: FLdPr var_124
  loc_C85B5F: from_stack_2 = Me.Item(from_stack_1)
  loc_C85B64: LitI4 1
  loc_C85B69: LitI4 1
  loc_C85B6E: LitVarStr var_148, "dd/mm/yyyy"
  loc_C85B73: FStVarCopyObj var_158
  loc_C85B76: FLdRfVar var_158
  loc_C85B79: FLdZeroAd var_138
  loc_C85B7C: CVarAd
  loc_C85B80: FLdRfVar var_168
  loc_C85B83: ImpAdCallFPR4  = Format(, )
  loc_C85B88: FLdRfVar var_168
  loc_C85B8B: LitVarStr var_188, vbNullString
  loc_C85B90: FStVarCopyObj var_198
  loc_C85B93: FLdRfVar var_198
  loc_C85B96: FLdRfVar var_F0
  loc_C85B99: LitVarStr var_100, "0000-00-00"
  loc_C85B9E: HardType
  loc_C85B9F: EqVar var_110
  loc_C85BA3: FStVar var_178
  loc_C85BA7: FLdRfVar var_178
  loc_C85BAA: FLdRfVar var_1A8
  loc_C85BAD: ImpAdCallFPR4  = IIf(, , )
  loc_C85BB2: FLdRfVar var_1A8
  loc_C85BB5: CStrVarVal var_90
  loc_C85BB9: ILdPr
  loc_C85BBC: Call tblPersonaGIS.FechEstaPut(from_stack_1v)
  loc_C85BC1: FFree1Str var_90
  loc_C85BC4: FFreeAd var_CC = "": var_E0 = ""
  loc_C85BCD: FFreeVar var_F0 = "": var_120 = "": var_158 = "": var_178 = "": var_198 = "": var_168 = ""
  loc_C85BDE: FLdRfVar var_F0
  loc_C85BE1: FLdRfVar var_E0
  loc_C85BE4: LitVarStr var_DC, "FechAlta"
  loc_C85BE9: PopAdLdVar
  loc_C85BEA: FLdRfVar var_CC
  loc_C85BED: FMemLdPr
  loc_C85BF2:  = Me.Fields
  loc_C85BF7: FLdPr var_CC
  loc_C85BFA: from_stack_2 = Me.Item(from_stack_1)
  loc_C85BFF: FLdPr var_E0
  loc_C85C02:  = Me.Value
  loc_C85C07: FLdRfVar var_138
  loc_C85C0A: LitVarStr var_134, "FechAlta"
  loc_C85C0F: PopAdLdVar
  loc_C85C10: FLdRfVar var_124
  loc_C85C13: FMemLdPr
  loc_C85C18:  = Me.Fields
  loc_C85C1D: FLdPr var_124
  loc_C85C20: from_stack_2 = Me.Item(from_stack_1)
  loc_C85C25: LitI4 1
  loc_C85C2A: LitI4 1
  loc_C85C2F: LitVarStr var_148, "dd/mm/yyyy"
  loc_C85C34: FStVarCopyObj var_158
  loc_C85C37: FLdRfVar var_158
  loc_C85C3A: FLdZeroAd var_138
  loc_C85C3D: CVarAd
  loc_C85C41: FLdRfVar var_168
  loc_C85C44: ImpAdCallFPR4  = Format(, )
  loc_C85C49: FLdRfVar var_168
  loc_C85C4C: LitVarStr var_188, vbNullString
  loc_C85C51: FStVarCopyObj var_198
  loc_C85C54: FLdRfVar var_198
  loc_C85C57: FLdRfVar var_F0
  loc_C85C5A: LitVarStr var_100, "0000-00-00"
  loc_C85C5F: HardType
  loc_C85C60: EqVar var_110
  loc_C85C64: FStVar var_178
  loc_C85C68: FLdRfVar var_178
  loc_C85C6B: FLdRfVar var_1A8
  loc_C85C6E: ImpAdCallFPR4  = IIf(, , )
  loc_C85C73: FLdRfVar var_1A8
  loc_C85C76: CStrVarVal var_90
  loc_C85C7A: ILdPr
  loc_C85C7D: Call tblPersonaGIS.FechAltaPut(from_stack_1v)
  loc_C85C82: FFree1Str var_90
  loc_C85C85: FFreeAd var_CC = "": var_E0 = ""
  loc_C85C8E: FFreeVar var_F0 = "": var_120 = "": var_158 = "": var_178 = "": var_198 = "": var_168 = ""
  loc_C85C9F: FLdRfVar var_F0
  loc_C85CA2: FLdRfVar var_E0
  loc_C85CA5: LitVarStr var_DC, "FechModi"
  loc_C85CAA: PopAdLdVar
  loc_C85CAB: FLdRfVar var_CC
  loc_C85CAE: FMemLdPr
  loc_C85CB3:  = Me.Fields
  loc_C85CB8: FLdPr var_CC
  loc_C85CBB: from_stack_2 = Me.Item(from_stack_1)
  loc_C85CC0: FLdPr var_E0
  loc_C85CC3:  = Me.Value
  loc_C85CC8: FLdRfVar var_138
  loc_C85CCB: LitVarStr var_134, "FechModi"
  loc_C85CD0: PopAdLdVar
  loc_C85CD1: FLdRfVar var_124
  loc_C85CD4: FMemLdPr
  loc_C85CD9:  = Me.Fields
  loc_C85CDE: FLdPr var_124
  loc_C85CE1: from_stack_2 = Me.Item(from_stack_1)
  loc_C85CE6: LitI4 1
  loc_C85CEB: LitI4 1
  loc_C85CF0: LitVarStr var_148, "dd/mm/yyyy"
  loc_C85CF5: FStVarCopyObj var_158
  loc_C85CF8: FLdRfVar var_158
  loc_C85CFB: FLdZeroAd var_138
  loc_C85CFE: CVarAd
  loc_C85D02: FLdRfVar var_168
  loc_C85D05: ImpAdCallFPR4  = Format(, )
  loc_C85D0A: FLdRfVar var_168
  loc_C85D0D: LitVarStr var_188, vbNullString
  loc_C85D12: FStVarCopyObj var_198
  loc_C85D15: FLdRfVar var_198
  loc_C85D18: FLdRfVar var_F0
  loc_C85D1B: LitVarStr var_100, "0000-00-00"
  loc_C85D20: HardType
  loc_C85D21: EqVar var_110
  loc_C85D25: FStVar var_178
  loc_C85D29: FLdRfVar var_178
  loc_C85D2C: FLdRfVar var_1A8
  loc_C85D2F: ImpAdCallFPR4  = IIf(, , )
  loc_C85D34: FLdRfVar var_1A8
  loc_C85D37: CStrVarVal var_90
  loc_C85D3B: ILdPr
  loc_C85D3E: Call tblPersonaGIS.FechModiPut(from_stack_1v)
  loc_C85D43: FFree1Str var_90
  loc_C85D46: FFreeAd var_CC = "": var_E0 = ""
  loc_C85D4F: FFreeVar var_F0 = "": var_120 = "": var_158 = "": var_178 = "": var_198 = "": var_168 = ""
  loc_C85D60: LitI2_Byte &HFF
  loc_C85D62: FStI2 var_86
  loc_C85D65: Branch loc_C8691D
  loc_C85D68: LitStr "SELECT IFNULL(CUIT,'') cuit, denominacion DetaPers, '' Vinculo, IFNULL(dependencia,'0') dependencia, IFNULL(distrito,'0') distrito, IFNULL(seccion,'') seccion, IFNULL(vpadrones_parcela.manzana,'') manzana, IFNULL(parcela,0) parcela, IFNULL(subparcela,0) subparcela, IFNULL(dig_veri,'0') DigiVeri, "
  loc_C85D6B: LitStr " IFNULL(domipostal.Calle,'') DecaPost, IFNULL(domipostal.NumeCalle,'') NumePost, IFNULL(domipostal.Barrio,'') DebaPost, IFNULL(domipostal.Manzana,'') ManzPost, IFNULL(domipostal.casa,'') CasaPost, IFNULL(domipostal.ubicacion,'') UbicPost, IFNULL(domipostal.Localidad,'') DeloPost, IFNULL(domipostal.CodPostal,'') CopoPost,"
  loc_C85D6E: ConcatStr
  loc_C85D6F: FStStrNoPop var_90
  loc_C85D72: LitStr " IFNULL(domireal.Calle,'') DetaCall, IFNULL(domireal.NumeCalle,'') NucaInmu, IFNULL(domireal.Barrio,'') DetaBarr, IFNULL(domireal.Manzana,'') ManzInmu, IFNULL(domireal.casa,'') CasaInmu, IFNULL(domireal.ubicacion,'') UbicInmu, IFNULL(domireal.Localidad,'') DetaLoca, IFNULL(domireal.CodPostal,'') CodiPost,"
  loc_C85D75: ConcatStr
  loc_C85D76: FStStrNoPop var_94
  loc_C85D79: LitStr " parcela_superficie SupeInmu, IFNULL(parcela_avaluo,0) AvalInmu, IFNULL(parcela_ryb_cod,0) CodiRyB, IFNULL(parcela_ryb_descrip,'') DetaRyB, parcela_estado_codigo CodiEsta, parcela_estado_descrip DetaEsta, parcela_estado_fecha FechEsta, parcela_fecha_alta FechAlta, parcela_fecha_modificacion FechModi "
  loc_C85D7C: ConcatStr
  loc_C85D7D: FStStrNoPop var_98
  loc_C85D80: LitStr " FROM vpadrones_parcela "
  loc_C85D83: ConcatStr
  loc_C85D84: FStStrNoPop var_9C
  loc_C85D87: LitStr " INNER JOIN vpadrones_persona ON vpadrones_persona.nro_padron =  vpadrones_parcela.nro_padron"
  loc_C85D8A: ConcatStr
  loc_C85D8B: FStStrNoPop var_A0
  loc_C85D8E: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 1"
  loc_C85D91: ConcatStr
  loc_C85D92: FStStrNoPop var_A4
  loc_C85D95: LitStr " AND  domireal.CodiCome = vpadrones_parcela.nro_padron"
  loc_C85D98: ConcatStr
  loc_C85D99: FStStrNoPop var_A8
  loc_C85D9C: LitStr " AND domireal.Tipo = 'Real'"
  loc_C85D9F: ConcatStr
  loc_C85DA0: FStStrNoPop var_AC
  loc_C85DA3: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 1"
  loc_C85DA6: ConcatStr
  loc_C85DA7: FStStrNoPop var_B0
  loc_C85DAA: LitStr " AND  domipostal.CodiCome = vpadrones_parcela.nro_padron"
  loc_C85DAD: ConcatStr
  loc_C85DAE: FStStrNoPop var_B4
  loc_C85DB1: LitStr " AND domipostal.Tipo = 'Rentas'"
  loc_C85DB4: ConcatStr
  loc_C85DB5: FStStrNoPop var_B8
  loc_C85DB8: LitStr " WHERE vpadrones_parcela.nro_padron = "
  loc_C85DBB: ConcatStr
  loc_C85DBC: FStStrNoPop var_BC
  loc_C85DBF: ILdRf var_8C
  loc_C85DC2: ConcatStr
  loc_C85DC3: FStStrNoPop var_C0
  loc_C85DC6: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_C85DCB: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_C85DE8: FLdRfVar var_C8
  loc_C85DEB: FMemLdPr
  loc_C85DF0:  = Me.RecordCount
  loc_C85DF5: ILdRf var_C8
  loc_C85DF8: LitI4 0
  loc_C85DFD: GtI4
  loc_C85DFE: BranchF loc_C867C3
  loc_C85E01: FMemLdPr
  loc_C85E06: Me.MoveLast
  loc_C85E0B: LitStr vbNullString
  loc_C85E0E: ILdPr
  loc_C85E11: Call tblPersonaGIS.MsgErrorPut(from_stack_1v)
  loc_C85E16: FLdRfVar var_F0
  loc_C85E19: FLdRfVar var_E0
  loc_C85E1C: LitVarStr var_DC, "cuit"
  loc_C85E21: PopAdLdVar
  loc_C85E22: FLdRfVar var_CC
  loc_C85E25: FMemLdPr
  loc_C85E2A:  = Me.Fields
  loc_C85E2F: FLdPr var_CC
  loc_C85E32: from_stack_2 = Me.Item(from_stack_1)
  loc_C85E37: FLdPr var_E0
  loc_C85E3A:  = Me.Value
  loc_C85E3F: FLdRfVar var_F0
  loc_C85E42: CStrVarTmp
  loc_C85E43: FStStrNoPop var_90
  loc_C85E46: ILdPr
  loc_C85E49: Call tblPersonaGIS.CucuPersPut(from_stack_1v)
  loc_C85E4E: FFree1Str var_90
  loc_C85E51: FFreeAd var_CC = ""
  loc_C85E58: FFree1Var var_F0 = ""
  loc_C85E5B: FLdRfVar var_F0
  loc_C85E5E: FLdRfVar var_E0
  loc_C85E61: LitVarStr var_DC, "DetaPers"
  loc_C85E66: PopAdLdVar
  loc_C85E67: FLdRfVar var_CC
  loc_C85E6A: FMemLdPr
  loc_C85E6F:  = Me.Fields
  loc_C85E74: FLdPr var_CC
  loc_C85E77: from_stack_2 = Me.Item(from_stack_1)
  loc_C85E7C: FLdPr var_E0
  loc_C85E7F:  = Me.Value
  loc_C85E84: FLdRfVar var_F0
  loc_C85E87: CStrVarTmp
  loc_C85E88: FStStrNoPop var_90
  loc_C85E8B: ILdPr
  loc_C85E8E: Call tblPersonaGIS.DetaPersPut(from_stack_1v)
  loc_C85E93: FFree1Str var_90
  loc_C85E96: FFreeAd var_CC = ""
  loc_C85E9D: FFree1Var var_F0 = ""
  loc_C85EA0: FLdRfVar var_F0
  loc_C85EA3: FLdRfVar var_E0
  loc_C85EA6: LitVarStr var_DC, "Dependencia"
  loc_C85EAB: PopAdLdVar
  loc_C85EAC: FLdRfVar var_CC
  loc_C85EAF: FMemLdPr
  loc_C85EB4:  = Me.Fields
  loc_C85EB9: FLdPr var_CC
  loc_C85EBC: from_stack_2 = Me.Item(from_stack_1)
  loc_C85EC1: FLdPr var_E0
  loc_C85EC4:  = Me.Value
  loc_C85EC9: FLdRfVar var_F0
  loc_C85ECC: CStrVarTmp
  loc_C85ECD: FStStrNoPop var_90
  loc_C85ED0: ILdPr
  loc_C85ED3: Call tblPersonaGIS.DependenciaPut(from_stack_1v)
  loc_C85ED8: FFree1Str var_90
  loc_C85EDB: FFreeAd var_CC = ""
  loc_C85EE2: FFree1Var var_F0 = ""
  loc_C85EE5: FLdRfVar var_F0
  loc_C85EE8: FLdRfVar var_E0
  loc_C85EEB: LitVarStr var_DC, "Distrito"
  loc_C85EF0: PopAdLdVar
  loc_C85EF1: FLdRfVar var_CC
  loc_C85EF4: FMemLdPr
  loc_C85EF9:  = Me.Fields
  loc_C85EFE: FLdPr var_CC
  loc_C85F01: from_stack_2 = Me.Item(from_stack_1)
  loc_C85F06: FLdPr var_E0
  loc_C85F09:  = Me.Value
  loc_C85F0E: FLdRfVar var_F0
  loc_C85F11: CStrVarTmp
  loc_C85F12: FStStrNoPop var_90
  loc_C85F15: ILdPr
  loc_C85F18: Call tblPersonaGIS.DistritoPut(from_stack_1v)
  loc_C85F1D: FFree1Str var_90
  loc_C85F20: FFreeAd var_CC = ""
  loc_C85F27: FFree1Var var_F0 = ""
  loc_C85F2A: FLdRfVar var_F0
  loc_C85F2D: FLdRfVar var_E0
  loc_C85F30: LitVarStr var_DC, "Seccion"
  loc_C85F35: PopAdLdVar
  loc_C85F36: FLdRfVar var_CC
  loc_C85F39: FMemLdPr
  loc_C85F3E:  = Me.Fields
  loc_C85F43: FLdPr var_CC
  loc_C85F46: from_stack_2 = Me.Item(from_stack_1)
  loc_C85F4B: FLdPr var_E0
  loc_C85F4E:  = Me.Value
  loc_C85F53: FLdRfVar var_F0
  loc_C85F56: CStrVarTmp
  loc_C85F57: FStStrNoPop var_90
  loc_C85F5A: ILdPr
  loc_C85F5D: Call tblPersonaGIS.SeccionPut(from_stack_1v)
  loc_C85F62: FFree1Str var_90
  loc_C85F65: FFreeAd var_CC = ""
  loc_C85F6C: FFree1Var var_F0 = ""
  loc_C85F6F: FLdRfVar var_F0
  loc_C85F72: FLdRfVar var_E0
  loc_C85F75: LitVarStr var_DC, "Manzana"
  loc_C85F7A: PopAdLdVar
  loc_C85F7B: FLdRfVar var_CC
  loc_C85F7E: FMemLdPr
  loc_C85F83:  = Me.Fields
  loc_C85F88: FLdPr var_CC
  loc_C85F8B: from_stack_2 = Me.Item(from_stack_1)
  loc_C85F90: FLdPr var_E0
  loc_C85F93:  = Me.Value
  loc_C85F98: FLdRfVar var_F0
  loc_C85F9B: CStrVarTmp
  loc_C85F9C: FStStrNoPop var_90
  loc_C85F9F: ILdPr
  loc_C85FA2: Call tblPersonaGIS.ManzanaPut(from_stack_1v)
  loc_C85FA7: FFree1Str var_90
  loc_C85FAA: FFreeAd var_CC = ""
  loc_C85FB1: FFree1Var var_F0 = ""
  loc_C85FB4: FLdRfVar var_F0
  loc_C85FB7: FLdRfVar var_E0
  loc_C85FBA: LitVarStr var_DC, "Parcela"
  loc_C85FBF: PopAdLdVar
  loc_C85FC0: FLdRfVar var_CC
  loc_C85FC3: FMemLdPr
  loc_C85FC8:  = Me.Fields
  loc_C85FCD: FLdPr var_CC
  loc_C85FD0: from_stack_2 = Me.Item(from_stack_1)
  loc_C85FD5: FLdPr var_E0
  loc_C85FD8:  = Me.Value
  loc_C85FDD: FLdRfVar var_F0
  loc_C85FE0: CStrVarTmp
  loc_C85FE1: FStStrNoPop var_90
  loc_C85FE4: ILdPr
  loc_C85FE7: Call tblPersonaGIS.ParcelaPut(from_stack_1v)
  loc_C85FEC: FFree1Str var_90
  loc_C85FEF: FFreeAd var_CC = ""
  loc_C85FF6: FFree1Var var_F0 = ""
  loc_C85FF9: FLdRfVar var_F0
  loc_C85FFC: FLdRfVar var_E0
  loc_C85FFF: LitVarStr var_DC, "Subparcela"
  loc_C86004: PopAdLdVar
  loc_C86005: FLdRfVar var_CC
  loc_C86008: FMemLdPr
  loc_C8600D:  = Me.Fields
  loc_C86012: FLdPr var_CC
  loc_C86015: from_stack_2 = Me.Item(from_stack_1)
  loc_C8601A: FLdPr var_E0
  loc_C8601D:  = Me.Value
  loc_C86022: FLdRfVar var_F0
  loc_C86025: CStrVarTmp
  loc_C86026: FStStrNoPop var_90
  loc_C86029: ILdPr
  loc_C8602C: Call tblPersonaGIS.SubparcelaPut(from_stack_1v)
  loc_C86031: FFree1Str var_90
  loc_C86034: FFreeAd var_CC = ""
  loc_C8603B: FFree1Var var_F0 = ""
  loc_C8603E: FLdRfVar var_F0
  loc_C86041: FLdRfVar var_E0
  loc_C86044: LitVarStr var_DC, "DigiVeri"
  loc_C86049: PopAdLdVar
  loc_C8604A: FLdRfVar var_CC
  loc_C8604D: FMemLdPr
  loc_C86052:  = Me.Fields
  loc_C86057: FLdPr var_CC
  loc_C8605A: from_stack_2 = Me.Item(from_stack_1)
  loc_C8605F: FLdPr var_E0
  loc_C86062:  = Me.Value
  loc_C86067: FLdRfVar var_F0
  loc_C8606A: CStrVarTmp
  loc_C8606B: FStStrNoPop var_90
  loc_C8606E: ILdPr
  loc_C86071: Call tblPersonaGIS.DigiVeriPut(from_stack_1v)
  loc_C86076: FFree1Str var_90
  loc_C86079: FFreeAd var_CC = ""
  loc_C86080: FFree1Var var_F0 = ""
  loc_C86083: FLdRfVar var_F0
  loc_C86086: FLdRfVar var_E0
  loc_C86089: LitVarStr var_DC, "DecaPost"
  loc_C8608E: PopAdLdVar
  loc_C8608F: FLdRfVar var_CC
  loc_C86092: FMemLdPr
  loc_C86097:  = Me.Fields
  loc_C8609C: FLdPr var_CC
  loc_C8609F: from_stack_2 = Me.Item(from_stack_1)
  loc_C860A4: FLdPr var_E0
  loc_C860A7:  = Me.Value
  loc_C860AC: FLdRfVar var_F0
  loc_C860AF: CStrVarTmp
  loc_C860B0: FStStrNoPop var_90
  loc_C860B3: ILdPr
  loc_C860B6: Call tblPersonaGIS.DecaPostPut(from_stack_1v)
  loc_C860BB: FFree1Str var_90
  loc_C860BE: FFreeAd var_CC = ""
  loc_C860C5: FFree1Var var_F0 = ""
  loc_C860C8: FLdRfVar var_F0
  loc_C860CB: FLdRfVar var_E0
  loc_C860CE: LitVarStr var_DC, "NumePost"
  loc_C860D3: PopAdLdVar
  loc_C860D4: FLdRfVar var_CC
  loc_C860D7: FMemLdPr
  loc_C860DC:  = Me.Fields
  loc_C860E1: FLdPr var_CC
  loc_C860E4: from_stack_2 = Me.Item(from_stack_1)
  loc_C860E9: FLdPr var_E0
  loc_C860EC:  = Me.Value
  loc_C860F1: FLdRfVar var_F0
  loc_C860F4: CStrVarTmp
  loc_C860F5: FStStrNoPop var_90
  loc_C860F8: ILdPr
  loc_C860FB: Call tblPersonaGIS.NumePostPut(from_stack_1v)
  loc_C86100: FFree1Str var_90
  loc_C86103: FFreeAd var_CC = ""
  loc_C8610A: FFree1Var var_F0 = ""
  loc_C8610D: FLdRfVar var_F0
  loc_C86110: FLdRfVar var_E0
  loc_C86113: LitVarStr var_DC, "DebaPost"
  loc_C86118: PopAdLdVar
  loc_C86119: FLdRfVar var_CC
  loc_C8611C: FMemLdPr
  loc_C86121:  = Me.Fields
  loc_C86126: FLdPr var_CC
  loc_C86129: from_stack_2 = Me.Item(from_stack_1)
  loc_C8612E: FLdPr var_E0
  loc_C86131:  = Me.Value
  loc_C86136: FLdRfVar var_F0
  loc_C86139: CStrVarTmp
  loc_C8613A: FStStrNoPop var_90
  loc_C8613D: ILdPr
  loc_C86140: Call tblPersonaGIS.DebaPostPut(from_stack_1v)
  loc_C86145: FFree1Str var_90
  loc_C86148: FFreeAd var_CC = ""
  loc_C8614F: FFree1Var var_F0 = ""
  loc_C86152: FLdRfVar var_F0
  loc_C86155: FLdRfVar var_E0
  loc_C86158: LitVarStr var_DC, "ManzPost"
  loc_C8615D: PopAdLdVar
  loc_C8615E: FLdRfVar var_CC
  loc_C86161: FMemLdPr
  loc_C86166:  = Me.Fields
  loc_C8616B: FLdPr var_CC
  loc_C8616E: from_stack_2 = Me.Item(from_stack_1)
  loc_C86173: FLdPr var_E0
  loc_C86176:  = Me.Value
  loc_C8617B: FLdRfVar var_F0
  loc_C8617E: CStrVarTmp
  loc_C8617F: FStStrNoPop var_90
  loc_C86182: ILdPr
  loc_C86185: Call tblPersonaGIS.ManzPostPut(from_stack_1v)
  loc_C8618A: FFree1Str var_90
  loc_C8618D: FFreeAd var_CC = ""
  loc_C86194: FFree1Var var_F0 = ""
  loc_C86197: FLdRfVar var_F0
  loc_C8619A: FLdRfVar var_E0
  loc_C8619D: LitVarStr var_DC, "CasaPost"
  loc_C861A2: PopAdLdVar
  loc_C861A3: FLdRfVar var_CC
  loc_C861A6: FMemLdPr
  loc_C861AB:  = Me.Fields
  loc_C861B0: FLdPr var_CC
  loc_C861B3: from_stack_2 = Me.Item(from_stack_1)
  loc_C861B8: FLdPr var_E0
  loc_C861BB:  = Me.Value
  loc_C861C0: FLdRfVar var_F0
  loc_C861C3: CStrVarTmp
  loc_C861C4: FStStrNoPop var_90
  loc_C861C7: ILdPr
  loc_C861CA: Call tblPersonaGIS.CasaPostPut(from_stack_1v)
  loc_C861CF: FFree1Str var_90
  loc_C861D2: FFreeAd var_CC = ""
  loc_C861D9: FFree1Var var_F0 = ""
  loc_C861DC: FLdRfVar var_F0
  loc_C861DF: FLdRfVar var_E0
  loc_C861E2: LitVarStr var_DC, "DeloPost"
  loc_C861E7: PopAdLdVar
  loc_C861E8: FLdRfVar var_CC
  loc_C861EB: FMemLdPr
  loc_C861F0:  = Me.Fields
  loc_C861F5: FLdPr var_CC
  loc_C861F8: from_stack_2 = Me.Item(from_stack_1)
  loc_C861FD: FLdPr var_E0
  loc_C86200:  = Me.Value
  loc_C86205: FLdRfVar var_F0
  loc_C86208: CStrVarTmp
  loc_C86209: FStStrNoPop var_90
  loc_C8620C: ILdPr
  loc_C8620F: Call tblPersonaGIS.DeloPostPut(from_stack_1v)
  loc_C86214: FFree1Str var_90
  loc_C86217: FFreeAd var_CC = ""
  loc_C8621E: FFree1Var var_F0 = ""
  loc_C86221: FLdRfVar var_F0
  loc_C86224: FLdRfVar var_E0
  loc_C86227: LitVarStr var_DC, "DetaCall"
  loc_C8622C: PopAdLdVar
  loc_C8622D: FLdRfVar var_CC
  loc_C86230: FMemLdPr
  loc_C86235:  = Me.Fields
  loc_C8623A: FLdPr var_CC
  loc_C8623D: from_stack_2 = Me.Item(from_stack_1)
  loc_C86242: FLdPr var_E0
  loc_C86245:  = Me.Value
  loc_C8624A: FLdRfVar var_F0
  loc_C8624D: CStrVarTmp
  loc_C8624E: FStStrNoPop var_90
  loc_C86251: ILdPr
  loc_C86254: Call tblPersonaGIS.DetaCallPut(from_stack_1v)
  loc_C86259: FFree1Str var_90
  loc_C8625C: FFreeAd var_CC = ""
  loc_C86263: FFree1Var var_F0 = ""
  loc_C86266: FLdRfVar var_F0
  loc_C86269: FLdRfVar var_E0
  loc_C8626C: LitVarStr var_DC, "NucaInmu"
  loc_C86271: PopAdLdVar
  loc_C86272: FLdRfVar var_CC
  loc_C86275: FMemLdPr
  loc_C8627A:  = Me.Fields
  loc_C8627F: FLdPr var_CC
  loc_C86282: from_stack_2 = Me.Item(from_stack_1)
  loc_C86287: FLdPr var_E0
  loc_C8628A:  = Me.Value
  loc_C8628F: FLdRfVar var_F0
  loc_C86292: CStrVarTmp
  loc_C86293: FStStrNoPop var_90
  loc_C86296: ILdPr
  loc_C86299: Call tblPersonaGIS.NucaInmuPut(from_stack_1v)
  loc_C8629E: FFree1Str var_90
  loc_C862A1: FFreeAd var_CC = ""
  loc_C862A8: FFree1Var var_F0 = ""
  loc_C862AB: FLdRfVar var_F0
  loc_C862AE: FLdRfVar var_E0
  loc_C862B1: LitVarStr var_DC, "DetaBarr"
  loc_C862B6: PopAdLdVar
  loc_C862B7: FLdRfVar var_CC
  loc_C862BA: FMemLdPr
  loc_C862BF:  = Me.Fields
  loc_C862C4: FLdPr var_CC
  loc_C862C7: from_stack_2 = Me.Item(from_stack_1)
  loc_C862CC: FLdPr var_E0
  loc_C862CF:  = Me.Value
  loc_C862D4: FLdRfVar var_F0
  loc_C862D7: CStrVarTmp
  loc_C862D8: FStStrNoPop var_90
  loc_C862DB: ILdPr
  loc_C862DE: Call tblPersonaGIS.DetaBarrPut(from_stack_1v)
  loc_C862E3: FFree1Str var_90
  loc_C862E6: FFreeAd var_CC = ""
  loc_C862ED: FFree1Var var_F0 = ""
  loc_C862F0: FLdRfVar var_F0
  loc_C862F3: FLdRfVar var_E0
  loc_C862F6: LitVarStr var_DC, "ManzInmu"
  loc_C862FB: PopAdLdVar
  loc_C862FC: FLdRfVar var_CC
  loc_C862FF: FMemLdPr
  loc_C86304:  = Me.Fields
  loc_C86309: FLdPr var_CC
  loc_C8630C: from_stack_2 = Me.Item(from_stack_1)
  loc_C86311: FLdPr var_E0
  loc_C86314:  = Me.Value
  loc_C86319: FLdRfVar var_F0
  loc_C8631C: CStrVarTmp
  loc_C8631D: FStStrNoPop var_90
  loc_C86320: ILdPr
  loc_C86323: Call tblPersonaGIS.ManzInmuPut(from_stack_1v)
  loc_C86328: FFree1Str var_90
  loc_C8632B: FFreeAd var_CC = ""
  loc_C86332: FFree1Var var_F0 = ""
  loc_C86335: FLdRfVar var_F0
  loc_C86338: FLdRfVar var_E0
  loc_C8633B: LitVarStr var_DC, "CasaInmu"
  loc_C86340: PopAdLdVar
  loc_C86341: FLdRfVar var_CC
  loc_C86344: FMemLdPr
  loc_C86349:  = Me.Fields
  loc_C8634E: FLdPr var_CC
  loc_C86351: from_stack_2 = Me.Item(from_stack_1)
  loc_C86356: FLdPr var_E0
  loc_C86359:  = Me.Value
  loc_C8635E: FLdRfVar var_F0
  loc_C86361: CStrVarTmp
  loc_C86362: FStStrNoPop var_90
  loc_C86365: ILdPr
  loc_C86368: Call tblPersonaGIS.CasaInmuPut(from_stack_1v)
  loc_C8636D: FFree1Str var_90
  loc_C86370: FFreeAd var_CC = ""
  loc_C86377: FFree1Var var_F0 = ""
  loc_C8637A: FLdRfVar var_F0
  loc_C8637D: FLdRfVar var_E0
  loc_C86380: LitVarStr var_DC, "DetaLoca"
  loc_C86385: PopAdLdVar
  loc_C86386: FLdRfVar var_CC
  loc_C86389: FMemLdPr
  loc_C8638E:  = Me.Fields
  loc_C86393: FLdPr var_CC
  loc_C86396: from_stack_2 = Me.Item(from_stack_1)
  loc_C8639B: FLdPr var_E0
  loc_C8639E:  = Me.Value
  loc_C863A3: FLdRfVar var_F0
  loc_C863A6: CStrVarTmp
  loc_C863A7: FStStrNoPop var_90
  loc_C863AA: ILdPr
  loc_C863AD: Call tblPersonaGIS.DetaLocaPut(from_stack_1v)
  loc_C863B2: FFree1Str var_90
  loc_C863B5: FFreeAd var_CC = ""
  loc_C863BC: FFree1Var var_F0 = ""
  loc_C863BF: FLdRfVar var_E0
  loc_C863C2: LitVarStr var_DC, "SupeInmu"
  loc_C863C7: PopAdLdVar
  loc_C863C8: FLdRfVar var_CC
  loc_C863CB: FMemLdPr
  loc_C863D0:  = Me.Fields
  loc_C863D5: FLdPr var_CC
  loc_C863D8: from_stack_2 = Me.Item(from_stack_1)
  loc_C863DD: LitI4 1
  loc_C863E2: LitI4 1
  loc_C863E7: LitVarStr var_100, "0.00"
  loc_C863EC: FStVarCopyObj var_110
  loc_C863EF: FLdRfVar var_110
  loc_C863F2: FLdZeroAd var_E0
  loc_C863F5: CVarAd
  loc_C863F9: FLdRfVar var_120
  loc_C863FC: ImpAdCallFPR4  = Format(, )
  loc_C86401: FLdRfVar var_120
  loc_C86404: CStrVarVal var_90
  loc_C86408: ILdPr
  loc_C8640B: Call tblPersonaGIS.SupeInmuPut(from_stack_1v)
  loc_C86410: FFree1Str var_90
  loc_C86413: FFree1Ad var_CC
  loc_C86416: FFreeVar var_F0 = "": var_110 = ""
  loc_C8641F: FLdRfVar var_F0
  loc_C86422: FLdRfVar var_E0
  loc_C86425: LitVarStr var_DC, "AvalInmu"
  loc_C8642A: PopAdLdVar
  loc_C8642B: FLdRfVar var_CC
  loc_C8642E: FMemLdPr
  loc_C86433:  = Me.Fields
  loc_C86438: FLdPr var_CC
  loc_C8643B: from_stack_2 = Me.Item(from_stack_1)
  loc_C86440: FLdPr var_E0
  loc_C86443:  = Me.Value
  loc_C86448: FLdRfVar var_F0
  loc_C8644B: CStrVarTmp
  loc_C8644C: FStStrNoPop var_90
  loc_C8644F: ILdPr
  loc_C86452: Call tblPersonaGIS.AvalInmuPut(from_stack_1v)
  loc_C86457: FFree1Str var_90
  loc_C8645A: FFreeAd var_CC = ""
  loc_C86461: FFree1Var var_F0 = ""
  loc_C86464: FLdRfVar var_F0
  loc_C86467: FLdRfVar var_E0
  loc_C8646A: LitVarStr var_DC, "CodiRyB"
  loc_C8646F: PopAdLdVar
  loc_C86470: FLdRfVar var_CC
  loc_C86473: FMemLdPr
  loc_C86478:  = Me.Fields
  loc_C8647D: FLdPr var_CC
  loc_C86480: from_stack_2 = Me.Item(from_stack_1)
  loc_C86485: FLdPr var_E0
  loc_C86488:  = Me.Value
  loc_C8648D: FLdRfVar var_F0
  loc_C86490: CStrVarTmp
  loc_C86491: FStStrNoPop var_90
  loc_C86494: ILdPr
  loc_C86497: Call tblPersonaGIS.CodiRyBPut(from_stack_1v)
  loc_C8649C: FFree1Str var_90
  loc_C8649F: FFreeAd var_CC = ""
  loc_C864A6: FFree1Var var_F0 = ""
  loc_C864A9: FLdRfVar var_F0
  loc_C864AC: FLdRfVar var_E0
  loc_C864AF: LitVarStr var_DC, "DetaRyB"
  loc_C864B4: PopAdLdVar
  loc_C864B5: FLdRfVar var_CC
  loc_C864B8: FMemLdPr
  loc_C864BD:  = Me.Fields
  loc_C864C2: FLdPr var_CC
  loc_C864C5: from_stack_2 = Me.Item(from_stack_1)
  loc_C864CA: FLdPr var_E0
  loc_C864CD:  = Me.Value
  loc_C864D2: FLdRfVar var_F0
  loc_C864D5: CStrVarTmp
  loc_C864D6: FStStrNoPop var_90
  loc_C864D9: ILdPr
  loc_C864DC: Call tblPersonaGIS.DetaRyBPut(from_stack_1v)
  loc_C864E1: FFree1Str var_90
  loc_C864E4: FFreeAd var_CC = ""
  loc_C864EB: FFree1Var var_F0 = ""
  loc_C864EE: FLdRfVar var_F0
  loc_C864F1: FLdRfVar var_E0
  loc_C864F4: LitVarStr var_DC, "CodiEsta"
  loc_C864F9: PopAdLdVar
  loc_C864FA: FLdRfVar var_CC
  loc_C864FD: FMemLdPr
  loc_C86502:  = Me.Fields
  loc_C86507: FLdPr var_CC
  loc_C8650A: from_stack_2 = Me.Item(from_stack_1)
  loc_C8650F: FLdPr var_E0
  loc_C86512:  = Me.Value
  loc_C86517: FLdRfVar var_F0
  loc_C8651A: CStrVarTmp
  loc_C8651B: FStStrNoPop var_90
  loc_C8651E: ILdPr
  loc_C86521: Call tblPersonaGIS.CodiEstaPut(from_stack_1v)
  loc_C86526: FFree1Str var_90
  loc_C86529: FFreeAd var_CC = ""
  loc_C86530: FFree1Var var_F0 = ""
  loc_C86533: FLdRfVar var_F0
  loc_C86536: FLdRfVar var_E0
  loc_C86539: LitVarStr var_DC, "DetaEsta"
  loc_C8653E: PopAdLdVar
  loc_C8653F: FLdRfVar var_CC
  loc_C86542: FMemLdPr
  loc_C86547:  = Me.Fields
  loc_C8654C: FLdPr var_CC
  loc_C8654F: from_stack_2 = Me.Item(from_stack_1)
  loc_C86554: FLdPr var_E0
  loc_C86557:  = Me.Value
  loc_C8655C: FLdRfVar var_F0
  loc_C8655F: CStrVarTmp
  loc_C86560: FStStrNoPop var_90
  loc_C86563: ILdPr
  loc_C86566: Call tblPersonaGIS.DetaEstaPut(from_stack_1v)
  loc_C8656B: FFree1Str var_90
  loc_C8656E: FFreeAd var_CC = ""
  loc_C86575: FFree1Var var_F0 = ""
  loc_C86578: FLdRfVar var_F0
  loc_C8657B: FLdRfVar var_E0
  loc_C8657E: LitVarStr var_DC, "FechEsta"
  loc_C86583: PopAdLdVar
  loc_C86584: FLdRfVar var_CC
  loc_C86587: FMemLdPr
  loc_C8658C:  = Me.Fields
  loc_C86591: FLdPr var_CC
  loc_C86594: from_stack_2 = Me.Item(from_stack_1)
  loc_C86599: FLdPr var_E0
  loc_C8659C:  = Me.Value
  loc_C865A1: FLdRfVar var_138
  loc_C865A4: LitVarStr var_134, "FechEsta"
  loc_C865A9: PopAdLdVar
  loc_C865AA: FLdRfVar var_124
  loc_C865AD: FMemLdPr
  loc_C865B2:  = Me.Fields
  loc_C865B7: FLdPr var_124
  loc_C865BA: from_stack_2 = Me.Item(from_stack_1)
  loc_C865BF: LitI4 1
  loc_C865C4: LitI4 1
  loc_C865C9: LitVarStr var_148, "dd/mm/yyyy"
  loc_C865CE: FStVarCopyObj var_158
  loc_C865D1: FLdRfVar var_158
  loc_C865D4: FLdZeroAd var_138
  loc_C865D7: CVarAd
  loc_C865DB: FLdRfVar var_168
  loc_C865DE: ImpAdCallFPR4  = Format(, )
  loc_C865E3: FLdRfVar var_168
  loc_C865E6: LitVarStr var_188, vbNullString
  loc_C865EB: FStVarCopyObj var_198
  loc_C865EE: FLdRfVar var_198
  loc_C865F1: FLdRfVar var_F0
  loc_C865F4: LitVarStr var_100, "0000-00-00"
  loc_C865F9: HardType
  loc_C865FA: EqVar var_110
  loc_C865FE: FStVar var_178
  loc_C86602: FLdRfVar var_178
  loc_C86605: FLdRfVar var_1A8
  loc_C86608: ImpAdCallFPR4  = IIf(, , )
  loc_C8660D: FLdRfVar var_1A8
  loc_C86610: CStrVarVal var_90
  loc_C86614: ILdPr
  loc_C86617: Call tblPersonaGIS.FechEstaPut(from_stack_1v)
  loc_C8661C: FFree1Str var_90
  loc_C8661F: FFreeAd var_CC = "": var_E0 = ""
  loc_C86628: FFreeVar var_F0 = "": var_120 = "": var_158 = "": var_178 = "": var_198 = "": var_168 = ""
  loc_C86639: FLdRfVar var_F0
  loc_C8663C: FLdRfVar var_E0
  loc_C8663F: LitVarStr var_DC, "FechAlta"
  loc_C86644: PopAdLdVar
  loc_C86645: FLdRfVar var_CC
  loc_C86648: FMemLdPr
  loc_C8664D:  = Me.Fields
  loc_C86652: FLdPr var_CC
  loc_C86655: from_stack_2 = Me.Item(from_stack_1)
  loc_C8665A: FLdPr var_E0
  loc_C8665D:  = Me.Value
  loc_C86662: FLdRfVar var_138
  loc_C86665: LitVarStr var_134, "FechAlta"
  loc_C8666A: PopAdLdVar
  loc_C8666B: FLdRfVar var_124
  loc_C8666E: FMemLdPr
  loc_C86673:  = Me.Fields
  loc_C86678: FLdPr var_124
  loc_C8667B: from_stack_2 = Me.Item(from_stack_1)
  loc_C86680: LitI4 1
  loc_C86685: LitI4 1
  loc_C8668A: LitVarStr var_148, "dd/mm/yyyy"
  loc_C8668F: FStVarCopyObj var_158
  loc_C86692: FLdRfVar var_158
  loc_C86695: FLdZeroAd var_138
  loc_C86698: CVarAd
  loc_C8669C: FLdRfVar var_168
  loc_C8669F: ImpAdCallFPR4  = Format(, )
  loc_C866A4: FLdRfVar var_168
  loc_C866A7: LitVarStr var_188, vbNullString
  loc_C866AC: FStVarCopyObj var_198
  loc_C866AF: FLdRfVar var_198
  loc_C866B2: FLdRfVar var_F0
  loc_C866B5: LitVarStr var_100, "0000-00-00"
  loc_C866BA: HardType
  loc_C866BB: EqVar var_110
  loc_C866BF: FStVar var_178
  loc_C866C3: FLdRfVar var_178
  loc_C866C6: FLdRfVar var_1A8
  loc_C866C9: ImpAdCallFPR4  = IIf(, , )
  loc_C866CE: FLdRfVar var_1A8
  loc_C866D1: CStrVarVal var_90
  loc_C866D5: ILdPr
  loc_C866D8: Call tblPersonaGIS.FechAltaPut(from_stack_1v)
  loc_C866DD: FFree1Str var_90
  loc_C866E0: FFreeAd var_CC = "": var_E0 = ""
  loc_C866E9: FFreeVar var_F0 = "": var_120 = "": var_158 = "": var_178 = "": var_198 = "": var_168 = ""
  loc_C866FA: FLdRfVar var_F0
  loc_C866FD: FLdRfVar var_E0
  loc_C86700: LitVarStr var_DC, "FechModi"
  loc_C86705: PopAdLdVar
  loc_C86706: FLdRfVar var_CC
  loc_C86709: FMemLdPr
  loc_C8670E:  = Me.Fields
  loc_C86713: FLdPr var_CC
  loc_C86716: from_stack_2 = Me.Item(from_stack_1)
  loc_C8671B: FLdPr var_E0
  loc_C8671E:  = Me.Value
  loc_C86723: FLdRfVar var_138
  loc_C86726: LitVarStr var_134, "FechModi"
  loc_C8672B: PopAdLdVar
  loc_C8672C: FLdRfVar var_124
  loc_C8672F: FMemLdPr
  loc_C86734:  = Me.Fields
  loc_C86739: FLdPr var_124
  loc_C8673C: from_stack_2 = Me.Item(from_stack_1)
  loc_C86741: LitI4 1
  loc_C86746: LitI4 1
  loc_C8674B: LitVarStr var_148, "dd/mm/yyyy"
  loc_C86750: FStVarCopyObj var_158
  loc_C86753: FLdRfVar var_158
  loc_C86756: FLdZeroAd var_138
  loc_C86759: CVarAd
  loc_C8675D: FLdRfVar var_168
  loc_C86760: ImpAdCallFPR4  = Format(, )
  loc_C86765: FLdRfVar var_168
  loc_C86768: LitVarStr var_188, vbNullString
  loc_C8676D: FStVarCopyObj var_198
  loc_C86770: FLdRfVar var_198
  loc_C86773: FLdRfVar var_F0
  loc_C86776: LitVarStr var_100, "0000-00-00"
  loc_C8677B: HardType
  loc_C8677C: EqVar var_110
  loc_C86780: FStVar var_178
  loc_C86784: FLdRfVar var_178
  loc_C86787: FLdRfVar var_1A8
  loc_C8678A: ImpAdCallFPR4  = IIf(, , )
  loc_C8678F: FLdRfVar var_1A8
  loc_C86792: CStrVarVal var_90
  loc_C86796: ILdPr
  loc_C86799: Call tblPersonaGIS.FechModiPut(from_stack_1v)
  loc_C8679E: FFree1Str var_90
  loc_C867A1: FFreeAd var_CC = "": var_E0 = ""
  loc_C867AA: FFreeVar var_F0 = "": var_120 = "": var_158 = "": var_178 = "": var_198 = "": var_168 = ""
  loc_C867BB: LitI2_Byte &HFF
  loc_C867BD: FStI2 var_86
  loc_C867C0: Branch loc_C8691D
  loc_C867C3: LitStr "No existe el Contribuyente en la base de CATASTRO. Verifique..."
  loc_C867C6: ILdPr
  loc_C867C9: Call tblPersonaGIS.MsgErrorPut(from_stack_1v)
  loc_C867CE: LitStr vbNullString
  loc_C867D1: ILdPr
  loc_C867D4: Call tblPersonaGIS.CucuPersPut(from_stack_1v)
  loc_C867D9: LitStr vbNullString
  loc_C867DC: ILdPr
  loc_C867DF: Call tblPersonaGIS.DetaPersPut(from_stack_1v)
  loc_C867E4: LitStr vbNullString
  loc_C867E7: ILdPr
  loc_C867EA: Call tblPersonaGIS.DependenciaPut(from_stack_1v)
  loc_C867EF: LitStr vbNullString
  loc_C867F2: ILdPr
  loc_C867F5: Call tblPersonaGIS.DistritoPut(from_stack_1v)
  loc_C867FA: LitStr vbNullString
  loc_C867FD: ILdPr
  loc_C86800: Call tblPersonaGIS.SeccionPut(from_stack_1v)
  loc_C86805: LitStr vbNullString
  loc_C86808: ILdPr
  loc_C8680B: Call tblPersonaGIS.ManzanaPut(from_stack_1v)
  loc_C86810: LitStr vbNullString
  loc_C86813: ILdPr
  loc_C86816: Call tblPersonaGIS.ParcelaPut(from_stack_1v)
  loc_C8681B: LitStr vbNullString
  loc_C8681E: ILdPr
  loc_C86821: Call tblPersonaGIS.SubparcelaPut(from_stack_1v)
  loc_C86826: LitStr vbNullString
  loc_C86829: ILdPr
  loc_C8682C: Call tblPersonaGIS.DigiVeriPut(from_stack_1v)
  loc_C86831: LitStr vbNullString
  loc_C86834: ILdPr
  loc_C86837: Call tblPersonaGIS.DecaPostPut(from_stack_1v)
  loc_C8683C: LitStr vbNullString
  loc_C8683F: ILdPr
  loc_C86842: Call tblPersonaGIS.NumePostPut(from_stack_1v)
  loc_C86847: LitStr vbNullString
  loc_C8684A: ILdPr
  loc_C8684D: Call tblPersonaGIS.DebaPostPut(from_stack_1v)
  loc_C86852: LitStr vbNullString
  loc_C86855: ILdPr
  loc_C86858: Call tblPersonaGIS.ManzPostPut(from_stack_1v)
  loc_C8685D: LitStr vbNullString
  loc_C86860: ILdPr
  loc_C86863: Call tblPersonaGIS.CasaPostPut(from_stack_1v)
  loc_C86868: LitStr vbNullString
  loc_C8686B: ILdPr
  loc_C8686E: Call tblPersonaGIS.DeloPostPut(from_stack_1v)
  loc_C86873: LitStr vbNullString
  loc_C86876: ILdPr
  loc_C86879: Call tblPersonaGIS.DetaCallPut(from_stack_1v)
  loc_C8687E: LitStr vbNullString
  loc_C86881: ILdPr
  loc_C86884: Call tblPersonaGIS.NucaInmuPut(from_stack_1v)
  loc_C86889: LitStr vbNullString
  loc_C8688C: ILdPr
  loc_C8688F: Call tblPersonaGIS.DetaBarrPut(from_stack_1v)
  loc_C86894: LitStr vbNullString
  loc_C86897: ILdPr
  loc_C8689A: Call tblPersonaGIS.ManzInmuPut(from_stack_1v)
  loc_C8689F: LitStr vbNullString
  loc_C868A2: ILdPr
  loc_C868A5: Call tblPersonaGIS.CasaInmuPut(from_stack_1v)
  loc_C868AA: LitStr vbNullString
  loc_C868AD: ILdPr
  loc_C868B0: Call tblPersonaGIS.DetaLocaPut(from_stack_1v)
  loc_C868B5: LitStr vbNullString
  loc_C868B8: ILdPr
  loc_C868BB: Call tblPersonaGIS.SupeInmuPut(from_stack_1v)
  loc_C868C0: LitStr vbNullString
  loc_C868C3: ILdPr
  loc_C868C6: Call tblPersonaGIS.AvalInmuPut(from_stack_1v)
  loc_C868CB: LitStr vbNullString
  loc_C868CE: ILdPr
  loc_C868D1: Call tblPersonaGIS.CodiRyBPut(from_stack_1v)
  loc_C868D6: LitStr vbNullString
  loc_C868D9: ILdPr
  loc_C868DC: Call tblPersonaGIS.DetaRyBPut(from_stack_1v)
  loc_C868E1: LitStr vbNullString
  loc_C868E4: ILdPr
  loc_C868E7: Call tblPersonaGIS.CodiEstaPut(from_stack_1v)
  loc_C868EC: LitStr vbNullString
  loc_C868EF: ILdPr
  loc_C868F2: Call tblPersonaGIS.DetaEstaPut(from_stack_1v)
  loc_C868F7: LitStr vbNullString
  loc_C868FA: ILdPr
  loc_C868FD: Call tblPersonaGIS.FechEstaPut(from_stack_1v)
  loc_C86902: LitStr vbNullString
  loc_C86905: ILdPr
  loc_C86908: Call tblPersonaGIS.FechAltaPut(from_stack_1v)
  loc_C8690D: LitStr vbNullString
  loc_C86910: ILdPr
  loc_C86913: Call tblPersonaGIS.FechModiPut(from_stack_1v)
  loc_C86918: LitI2_Byte 0
  loc_C8691A: FStI2 var_86
  loc_C8691D: ExitProcI2
End Function

Private Function Proc_270_14_BF20CC(arg_C, arg_10) 'BF20CC
  'Data Table: 4C25A4
  loc_BF18D8: ILdRf arg_C
  loc_BF18DB: FStStrCopy var_8C
  loc_BF18DE: ILdRf arg_10
  loc_BF18E1: FStStrCopy var_90
  loc_BF18E4: LitStr "SELECT IFNULL(CUIT,'') cuit, denominacion DetaPers, '' Vinculo, IFNULL(dependencia,'0') dependencia, IFNULL(distrito,'0') distrito, IFNULL(seccion,'0') seccion, IFNULL(vpadrones_parcela.manzana,'0') manzana, IFNULL(parcela,'0') parcela, IFNULL(subparcela,'0') subparcela, IFNULL(dig_veri,'0') DigiVeri, "
  loc_BF18E7: LitStr " IFNULL(domipostal.Calle,'') DecaPost, IFNULL(domipostal.NumeCalle,'') NumePost, IFNULL(domipostal.Barrio,'') DebaPost, IFNULL(domipostal.Manzana, '') ManzPost, IFNULL(domipostal.casa,'') CasaPost, IFNULL(domipostal.ubicacion,'') UbicPost, IFNULL(domipostal.Localidad,'') DeloPost, IFNULL(domipostal.CodPostal,'') CopoPost,"
  loc_BF18EA: ConcatStr
  loc_BF18EB: FStStrNoPop var_94
  loc_BF18EE: LitStr " IFNULL(domireal.Calle,'') DetaCall, IFNULL(domireal.NumeCalle,'') NucaInmu, IFNULL(domireal.Barrio,'') DetaBarr, IFNULL(domireal.Manzana,'') ManzInmu, IFNULL(domireal.casa,'') CasaInmu, IFNULL(domireal.ubicacion,'') UbicInmu, IFNULL(domireal.Localidad, '') DetaLoca, IFNULL(domireal.CodPostal,'') CodiPost"
  loc_BF18F1: ConcatStr
  loc_BF18F2: FStStrNoPop var_98
  loc_BF18F5: LitStr " FROM vpadrones_persona"
  loc_BF18F8: ConcatStr
  loc_BF18F9: FStStrNoPop var_9C
  loc_BF18FC: LitStr " INNER JOIN vpadrones_parcela ON vpadrones_parcela.nro_padron = vpadrones_persona.nro_padron"
  loc_BF18FF: ConcatStr
  loc_BF1900: FStStrNoPop var_A0
  loc_BF1903: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 1"
  loc_BF1906: ConcatStr
  loc_BF1907: FStStrNoPop var_A4
  loc_BF190A: LitStr " AND  domireal.CodiCome = vpadrones_parcela.nro_padron"
  loc_BF190D: ConcatStr
  loc_BF190E: FStStrNoPop var_A8
  loc_BF1911: LitStr " AND domireal.Tipo = 'Real'"
  loc_BF1914: ConcatStr
  loc_BF1915: FStStrNoPop var_AC
  loc_BF1918: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 1"
  loc_BF191B: ConcatStr
  loc_BF191C: FStStrNoPop var_B0
  loc_BF191F: LitStr " AND  domipostal.CodiCome = vpadrones_parcela.nro_padron"
  loc_BF1922: ConcatStr
  loc_BF1923: FStStrNoPop var_B4
  loc_BF1926: LitStr " AND domipostal.Tipo = 'Rentas'"
  loc_BF1929: ConcatStr
  loc_BF192A: FStStrNoPop var_B8
  loc_BF192D: LitStr " WHERE vpadrones_persona.CUIT = '"
  loc_BF1930: ConcatStr
  loc_BF1931: CVarStr var_108
  loc_BF1934: LitVarI2 var_E8, 2
  loc_BF1939: LitI4 1
  loc_BF193E: FLdRfVar var_8C
  loc_BF1941: CVarRef
  loc_BF1946: FLdRfVar var_F8
  loc_BF1949: ImpAdCallFPR4  = Mid(, , )
  loc_BF194E: FLdRfVar var_F8
  loc_BF1951: ConcatVar var_118
  loc_BF1955: LitVarStr var_128, "-"
  loc_BF195A: ConcatVar var_138
  loc_BF195E: LitVarI2 var_168, 8
  loc_BF1963: LitI4 3
  loc_BF1968: FLdRfVar var_8C
  loc_BF196B: CVarRef
  loc_BF1970: FLdRfVar var_178
  loc_BF1973: ImpAdCallFPR4  = Mid(, , )
  loc_BF1978: FLdRfVar var_178
  loc_BF197B: ConcatVar var_188
  loc_BF197F: LitVarStr var_198, "-"
  loc_BF1984: ConcatVar var_1A8
  loc_BF1988: LitVarI2 var_1D8, 1
  loc_BF198D: LitI4 &HB
  loc_BF1992: FLdRfVar var_8C
  loc_BF1995: CVarRef
  loc_BF199A: FLdRfVar var_1E8
  loc_BF199D: ImpAdCallFPR4  = Mid(, , )
  loc_BF19A2: FLdRfVar var_1E8
  loc_BF19A5: ConcatVar var_1F8
  loc_BF19A9: LitVarStr var_208, "' AND vpadrones_persona.nro_padron = "
  loc_BF19AE: ConcatVar var_218
  loc_BF19B2: ILdRf var_90
  loc_BF19B5: CVarStr var_228
  loc_BF19B8: ConcatVar var_238
  loc_BF19BC: CStrVarVal var_23C
  loc_BF19C0: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_BF19C5: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_BF19DE: FFreeVar var_E8 = "": var_108 = "": var_F8 = "": var_118 = "": var_168 = "": var_138 = "": var_178 = "": var_188 = "": var_1D8 = "": var_1A8 = "": var_1E8 = "": var_1F8 = "": var_218 = ""
  loc_BF19FD: FLdRfVar var_240
  loc_BF1A00: FMemLdPr
  loc_BF1A05:  = Me.RecordCount
  loc_BF1A0A: ILdRf var_240
  loc_BF1A0D: LitI4 0
  loc_BF1A12: GtI4
  loc_BF1A13: BranchF loc_BF1FD2
  loc_BF1A16: LitStr vbNullString
  loc_BF1A19: ILdPr
  loc_BF1A1C: Call tblPersonaGIS.MsgErrorPut(from_stack_1v)
  loc_BF1A21: FLdRfVar var_E8
  loc_BF1A24: FLdRfVar var_248
  loc_BF1A27: LitVarStr var_C8, "cuit"
  loc_BF1A2C: PopAdLdVar
  loc_BF1A2D: FLdRfVar var_244
  loc_BF1A30: FMemLdPr
  loc_BF1A35:  = Me.Fields
  loc_BF1A3A: FLdPr var_244
  loc_BF1A3D: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1A42: FLdPr var_248
  loc_BF1A45:  = Me.Value
  loc_BF1A4A: FLdRfVar var_E8
  loc_BF1A4D: CStrVarTmp
  loc_BF1A4E: FStStrNoPop var_94
  loc_BF1A51: ILdPr
  loc_BF1A54: Call tblPersonaGIS.CucuPersPut(from_stack_1v)
  loc_BF1A59: FFree1Str var_94
  loc_BF1A5C: FFreeAd var_244 = ""
  loc_BF1A63: FFree1Var var_E8 = ""
  loc_BF1A66: FLdRfVar var_E8
  loc_BF1A69: FLdRfVar var_248
  loc_BF1A6C: LitVarStr var_C8, "DetaPers"
  loc_BF1A71: PopAdLdVar
  loc_BF1A72: FLdRfVar var_244
  loc_BF1A75: FMemLdPr
  loc_BF1A7A:  = Me.Fields
  loc_BF1A7F: FLdPr var_244
  loc_BF1A82: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1A87: FLdPr var_248
  loc_BF1A8A:  = Me.Value
  loc_BF1A8F: FLdRfVar var_E8
  loc_BF1A92: CStrVarTmp
  loc_BF1A93: FStStrNoPop var_94
  loc_BF1A96: ILdPr
  loc_BF1A99: Call tblPersonaGIS.DetaPersPut(from_stack_1v)
  loc_BF1A9E: FFree1Str var_94
  loc_BF1AA1: FFreeAd var_244 = ""
  loc_BF1AA8: FFree1Var var_E8 = ""
  loc_BF1AAB: FLdRfVar var_E8
  loc_BF1AAE: FLdRfVar var_248
  loc_BF1AB1: LitVarStr var_C8, "Dependencia"
  loc_BF1AB6: PopAdLdVar
  loc_BF1AB7: FLdRfVar var_244
  loc_BF1ABA: FMemLdPr
  loc_BF1ABF:  = Me.Fields
  loc_BF1AC4: FLdPr var_244
  loc_BF1AC7: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1ACC: FLdPr var_248
  loc_BF1ACF:  = Me.Value
  loc_BF1AD4: FLdRfVar var_E8
  loc_BF1AD7: CStrVarTmp
  loc_BF1AD8: FStStrNoPop var_94
  loc_BF1ADB: ILdPr
  loc_BF1ADE: Call tblPersonaGIS.DependenciaPut(from_stack_1v)
  loc_BF1AE3: FFree1Str var_94
  loc_BF1AE6: FFreeAd var_244 = ""
  loc_BF1AED: FFree1Var var_E8 = ""
  loc_BF1AF0: FLdRfVar var_E8
  loc_BF1AF3: FLdRfVar var_248
  loc_BF1AF6: LitVarStr var_C8, "Distrito"
  loc_BF1AFB: PopAdLdVar
  loc_BF1AFC: FLdRfVar var_244
  loc_BF1AFF: FMemLdPr
  loc_BF1B04:  = Me.Fields
  loc_BF1B09: FLdPr var_244
  loc_BF1B0C: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1B11: FLdPr var_248
  loc_BF1B14:  = Me.Value
  loc_BF1B19: FLdRfVar var_E8
  loc_BF1B1C: CStrVarTmp
  loc_BF1B1D: FStStrNoPop var_94
  loc_BF1B20: ILdPr
  loc_BF1B23: Call tblPersonaGIS.DistritoPut(from_stack_1v)
  loc_BF1B28: FFree1Str var_94
  loc_BF1B2B: FFreeAd var_244 = ""
  loc_BF1B32: FFree1Var var_E8 = ""
  loc_BF1B35: FLdRfVar var_E8
  loc_BF1B38: FLdRfVar var_248
  loc_BF1B3B: LitVarStr var_C8, "Seccion"
  loc_BF1B40: PopAdLdVar
  loc_BF1B41: FLdRfVar var_244
  loc_BF1B44: FMemLdPr
  loc_BF1B49:  = Me.Fields
  loc_BF1B4E: FLdPr var_244
  loc_BF1B51: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1B56: FLdPr var_248
  loc_BF1B59:  = Me.Value
  loc_BF1B5E: FLdRfVar var_E8
  loc_BF1B61: CStrVarTmp
  loc_BF1B62: FStStrNoPop var_94
  loc_BF1B65: ILdPr
  loc_BF1B68: Call tblPersonaGIS.SeccionPut(from_stack_1v)
  loc_BF1B6D: FFree1Str var_94
  loc_BF1B70: FFreeAd var_244 = ""
  loc_BF1B77: FFree1Var var_E8 = ""
  loc_BF1B7A: FLdRfVar var_E8
  loc_BF1B7D: FLdRfVar var_248
  loc_BF1B80: LitVarStr var_C8, "Manzana"
  loc_BF1B85: PopAdLdVar
  loc_BF1B86: FLdRfVar var_244
  loc_BF1B89: FMemLdPr
  loc_BF1B8E:  = Me.Fields
  loc_BF1B93: FLdPr var_244
  loc_BF1B96: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1B9B: FLdPr var_248
  loc_BF1B9E:  = Me.Value
  loc_BF1BA3: FLdRfVar var_E8
  loc_BF1BA6: CStrVarTmp
  loc_BF1BA7: FStStrNoPop var_94
  loc_BF1BAA: ILdPr
  loc_BF1BAD: Call tblPersonaGIS.ManzanaPut(from_stack_1v)
  loc_BF1BB2: FFree1Str var_94
  loc_BF1BB5: FFreeAd var_244 = ""
  loc_BF1BBC: FFree1Var var_E8 = ""
  loc_BF1BBF: FLdRfVar var_E8
  loc_BF1BC2: FLdRfVar var_248
  loc_BF1BC5: LitVarStr var_C8, "Parcela"
  loc_BF1BCA: PopAdLdVar
  loc_BF1BCB: FLdRfVar var_244
  loc_BF1BCE: FMemLdPr
  loc_BF1BD3:  = Me.Fields
  loc_BF1BD8: FLdPr var_244
  loc_BF1BDB: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1BE0: FLdPr var_248
  loc_BF1BE3:  = Me.Value
  loc_BF1BE8: FLdRfVar var_E8
  loc_BF1BEB: CStrVarTmp
  loc_BF1BEC: FStStrNoPop var_94
  loc_BF1BEF: ILdPr
  loc_BF1BF2: Call tblPersonaGIS.ParcelaPut(from_stack_1v)
  loc_BF1BF7: FFree1Str var_94
  loc_BF1BFA: FFreeAd var_244 = ""
  loc_BF1C01: FFree1Var var_E8 = ""
  loc_BF1C04: FLdRfVar var_E8
  loc_BF1C07: FLdRfVar var_248
  loc_BF1C0A: LitVarStr var_C8, "Subparcela"
  loc_BF1C0F: PopAdLdVar
  loc_BF1C10: FLdRfVar var_244
  loc_BF1C13: FMemLdPr
  loc_BF1C18:  = Me.Fields
  loc_BF1C1D: FLdPr var_244
  loc_BF1C20: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1C25: FLdPr var_248
  loc_BF1C28:  = Me.Value
  loc_BF1C2D: FLdRfVar var_E8
  loc_BF1C30: CStrVarTmp
  loc_BF1C31: FStStrNoPop var_94
  loc_BF1C34: ILdPr
  loc_BF1C37: Call tblPersonaGIS.SubparcelaPut(from_stack_1v)
  loc_BF1C3C: FFree1Str var_94
  loc_BF1C3F: FFreeAd var_244 = ""
  loc_BF1C46: FFree1Var var_E8 = ""
  loc_BF1C49: FLdRfVar var_E8
  loc_BF1C4C: FLdRfVar var_248
  loc_BF1C4F: LitVarStr var_C8, "DigiVeri"
  loc_BF1C54: PopAdLdVar
  loc_BF1C55: FLdRfVar var_244
  loc_BF1C58: FMemLdPr
  loc_BF1C5D:  = Me.Fields
  loc_BF1C62: FLdPr var_244
  loc_BF1C65: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1C6A: FLdPr var_248
  loc_BF1C6D:  = Me.Value
  loc_BF1C72: FLdRfVar var_E8
  loc_BF1C75: CStrVarTmp
  loc_BF1C76: FStStrNoPop var_94
  loc_BF1C79: ILdPr
  loc_BF1C7C: Call tblPersonaGIS.DigiVeriPut(from_stack_1v)
  loc_BF1C81: FFree1Str var_94
  loc_BF1C84: FFreeAd var_244 = ""
  loc_BF1C8B: FFree1Var var_E8 = ""
  loc_BF1C8E: FLdRfVar var_E8
  loc_BF1C91: FLdRfVar var_248
  loc_BF1C94: LitVarStr var_C8, "DecaPost"
  loc_BF1C99: PopAdLdVar
  loc_BF1C9A: FLdRfVar var_244
  loc_BF1C9D: FMemLdPr
  loc_BF1CA2:  = Me.Fields
  loc_BF1CA7: FLdPr var_244
  loc_BF1CAA: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1CAF: FLdPr var_248
  loc_BF1CB2:  = Me.Value
  loc_BF1CB7: FLdRfVar var_E8
  loc_BF1CBA: CStrVarTmp
  loc_BF1CBB: FStStrNoPop var_94
  loc_BF1CBE: ILdPr
  loc_BF1CC1: Call tblPersonaGIS.DecaPostPut(from_stack_1v)
  loc_BF1CC6: FFree1Str var_94
  loc_BF1CC9: FFreeAd var_244 = ""
  loc_BF1CD0: FFree1Var var_E8 = ""
  loc_BF1CD3: FLdRfVar var_E8
  loc_BF1CD6: FLdRfVar var_248
  loc_BF1CD9: LitVarStr var_C8, "NumePost"
  loc_BF1CDE: PopAdLdVar
  loc_BF1CDF: FLdRfVar var_244
  loc_BF1CE2: FMemLdPr
  loc_BF1CE7:  = Me.Fields
  loc_BF1CEC: FLdPr var_244
  loc_BF1CEF: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1CF4: FLdPr var_248
  loc_BF1CF7:  = Me.Value
  loc_BF1CFC: FLdRfVar var_E8
  loc_BF1CFF: CStrVarTmp
  loc_BF1D00: FStStrNoPop var_94
  loc_BF1D03: ILdPr
  loc_BF1D06: Call tblPersonaGIS.NumePostPut(from_stack_1v)
  loc_BF1D0B: FFree1Str var_94
  loc_BF1D0E: FFreeAd var_244 = ""
  loc_BF1D15: FFree1Var var_E8 = ""
  loc_BF1D18: FLdRfVar var_E8
  loc_BF1D1B: FLdRfVar var_248
  loc_BF1D1E: LitVarStr var_C8, "DebaPost"
  loc_BF1D23: PopAdLdVar
  loc_BF1D24: FLdRfVar var_244
  loc_BF1D27: FMemLdPr
  loc_BF1D2C:  = Me.Fields
  loc_BF1D31: FLdPr var_244
  loc_BF1D34: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1D39: FLdPr var_248
  loc_BF1D3C:  = Me.Value
  loc_BF1D41: FLdRfVar var_E8
  loc_BF1D44: CStrVarTmp
  loc_BF1D45: FStStrNoPop var_94
  loc_BF1D48: ILdPr
  loc_BF1D4B: Call tblPersonaGIS.DebaPostPut(from_stack_1v)
  loc_BF1D50: FFree1Str var_94
  loc_BF1D53: FFreeAd var_244 = ""
  loc_BF1D5A: FFree1Var var_E8 = ""
  loc_BF1D5D: FLdRfVar var_E8
  loc_BF1D60: FLdRfVar var_248
  loc_BF1D63: LitVarStr var_C8, "ManzPost"
  loc_BF1D68: PopAdLdVar
  loc_BF1D69: FLdRfVar var_244
  loc_BF1D6C: FMemLdPr
  loc_BF1D71:  = Me.Fields
  loc_BF1D76: FLdPr var_244
  loc_BF1D79: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1D7E: FLdPr var_248
  loc_BF1D81:  = Me.Value
  loc_BF1D86: FLdRfVar var_E8
  loc_BF1D89: CStrVarTmp
  loc_BF1D8A: FStStrNoPop var_94
  loc_BF1D8D: ILdPr
  loc_BF1D90: Call tblPersonaGIS.ManzPostPut(from_stack_1v)
  loc_BF1D95: FFree1Str var_94
  loc_BF1D98: FFreeAd var_244 = ""
  loc_BF1D9F: FFree1Var var_E8 = ""
  loc_BF1DA2: FLdRfVar var_E8
  loc_BF1DA5: FLdRfVar var_248
  loc_BF1DA8: LitVarStr var_C8, "CasaPost"
  loc_BF1DAD: PopAdLdVar
  loc_BF1DAE: FLdRfVar var_244
  loc_BF1DB1: FMemLdPr
  loc_BF1DB6:  = Me.Fields
  loc_BF1DBB: FLdPr var_244
  loc_BF1DBE: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1DC3: FLdPr var_248
  loc_BF1DC6:  = Me.Value
  loc_BF1DCB: FLdRfVar var_E8
  loc_BF1DCE: CStrVarTmp
  loc_BF1DCF: FStStrNoPop var_94
  loc_BF1DD2: ILdPr
  loc_BF1DD5: Call tblPersonaGIS.CasaPostPut(from_stack_1v)
  loc_BF1DDA: FFree1Str var_94
  loc_BF1DDD: FFreeAd var_244 = ""
  loc_BF1DE4: FFree1Var var_E8 = ""
  loc_BF1DE7: FLdRfVar var_E8
  loc_BF1DEA: FLdRfVar var_248
  loc_BF1DED: LitVarStr var_C8, "DeloPost"
  loc_BF1DF2: PopAdLdVar
  loc_BF1DF3: FLdRfVar var_244
  loc_BF1DF6: FMemLdPr
  loc_BF1DFB:  = Me.Fields
  loc_BF1E00: FLdPr var_244
  loc_BF1E03: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1E08: FLdPr var_248
  loc_BF1E0B:  = Me.Value
  loc_BF1E10: FLdRfVar var_E8
  loc_BF1E13: CStrVarTmp
  loc_BF1E14: FStStrNoPop var_94
  loc_BF1E17: ILdPr
  loc_BF1E1A: Call tblPersonaGIS.DeloPostPut(from_stack_1v)
  loc_BF1E1F: FFree1Str var_94
  loc_BF1E22: FFreeAd var_244 = ""
  loc_BF1E29: FFree1Var var_E8 = ""
  loc_BF1E2C: FLdRfVar var_E8
  loc_BF1E2F: FLdRfVar var_248
  loc_BF1E32: LitVarStr var_C8, "DetaCall"
  loc_BF1E37: PopAdLdVar
  loc_BF1E38: FLdRfVar var_244
  loc_BF1E3B: FMemLdPr
  loc_BF1E40:  = Me.Fields
  loc_BF1E45: FLdPr var_244
  loc_BF1E48: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1E4D: FLdPr var_248
  loc_BF1E50:  = Me.Value
  loc_BF1E55: FLdRfVar var_E8
  loc_BF1E58: CStrVarTmp
  loc_BF1E59: FStStrNoPop var_94
  loc_BF1E5C: ILdPr
  loc_BF1E5F: Call tblPersonaGIS.DetaCallPut(from_stack_1v)
  loc_BF1E64: FFree1Str var_94
  loc_BF1E67: FFreeAd var_244 = ""
  loc_BF1E6E: FFree1Var var_E8 = ""
  loc_BF1E71: FLdRfVar var_E8
  loc_BF1E74: FLdRfVar var_248
  loc_BF1E77: LitVarStr var_C8, "NucaInmu"
  loc_BF1E7C: PopAdLdVar
  loc_BF1E7D: FLdRfVar var_244
  loc_BF1E80: FMemLdPr
  loc_BF1E85:  = Me.Fields
  loc_BF1E8A: FLdPr var_244
  loc_BF1E8D: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1E92: FLdPr var_248
  loc_BF1E95:  = Me.Value
  loc_BF1E9A: FLdRfVar var_E8
  loc_BF1E9D: CStrVarTmp
  loc_BF1E9E: FStStrNoPop var_94
  loc_BF1EA1: ILdPr
  loc_BF1EA4: Call tblPersonaGIS.NucaInmuPut(from_stack_1v)
  loc_BF1EA9: FFree1Str var_94
  loc_BF1EAC: FFreeAd var_244 = ""
  loc_BF1EB3: FFree1Var var_E8 = ""
  loc_BF1EB6: FLdRfVar var_E8
  loc_BF1EB9: FLdRfVar var_248
  loc_BF1EBC: LitVarStr var_C8, "DetaBarr"
  loc_BF1EC1: PopAdLdVar
  loc_BF1EC2: FLdRfVar var_244
  loc_BF1EC5: FMemLdPr
  loc_BF1ECA:  = Me.Fields
  loc_BF1ECF: FLdPr var_244
  loc_BF1ED2: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1ED7: FLdPr var_248
  loc_BF1EDA:  = Me.Value
  loc_BF1EDF: FLdRfVar var_E8
  loc_BF1EE2: CStrVarTmp
  loc_BF1EE3: FStStrNoPop var_94
  loc_BF1EE6: ILdPr
  loc_BF1EE9: Call tblPersonaGIS.DetaBarrPut(from_stack_1v)
  loc_BF1EEE: FFree1Str var_94
  loc_BF1EF1: FFreeAd var_244 = ""
  loc_BF1EF8: FFree1Var var_E8 = ""
  loc_BF1EFB: FLdRfVar var_E8
  loc_BF1EFE: FLdRfVar var_248
  loc_BF1F01: LitVarStr var_C8, "ManzInmu"
  loc_BF1F06: PopAdLdVar
  loc_BF1F07: FLdRfVar var_244
  loc_BF1F0A: FMemLdPr
  loc_BF1F0F:  = Me.Fields
  loc_BF1F14: FLdPr var_244
  loc_BF1F17: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1F1C: FLdPr var_248
  loc_BF1F1F:  = Me.Value
  loc_BF1F24: FLdRfVar var_E8
  loc_BF1F27: CStrVarTmp
  loc_BF1F28: FStStrNoPop var_94
  loc_BF1F2B: ILdPr
  loc_BF1F2E: Call tblPersonaGIS.ManzInmuPut(from_stack_1v)
  loc_BF1F33: FFree1Str var_94
  loc_BF1F36: FFreeAd var_244 = ""
  loc_BF1F3D: FFree1Var var_E8 = ""
  loc_BF1F40: FLdRfVar var_E8
  loc_BF1F43: FLdRfVar var_248
  loc_BF1F46: LitVarStr var_C8, "CasaInmu"
  loc_BF1F4B: PopAdLdVar
  loc_BF1F4C: FLdRfVar var_244
  loc_BF1F4F: FMemLdPr
  loc_BF1F54:  = Me.Fields
  loc_BF1F59: FLdPr var_244
  loc_BF1F5C: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1F61: FLdPr var_248
  loc_BF1F64:  = Me.Value
  loc_BF1F69: FLdRfVar var_E8
  loc_BF1F6C: CStrVarTmp
  loc_BF1F6D: FStStrNoPop var_94
  loc_BF1F70: ILdPr
  loc_BF1F73: Call tblPersonaGIS.CasaInmuPut(from_stack_1v)
  loc_BF1F78: FFree1Str var_94
  loc_BF1F7B: FFreeAd var_244 = ""
  loc_BF1F82: FFree1Var var_E8 = ""
  loc_BF1F85: FLdRfVar var_E8
  loc_BF1F88: FLdRfVar var_248
  loc_BF1F8B: LitVarStr var_C8, "DetaLoca"
  loc_BF1F90: PopAdLdVar
  loc_BF1F91: FLdRfVar var_244
  loc_BF1F94: FMemLdPr
  loc_BF1F99:  = Me.Fields
  loc_BF1F9E: FLdPr var_244
  loc_BF1FA1: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1FA6: FLdPr var_248
  loc_BF1FA9:  = Me.Value
  loc_BF1FAE: FLdRfVar var_E8
  loc_BF1FB1: CStrVarTmp
  loc_BF1FB2: FStStrNoPop var_94
  loc_BF1FB5: ILdPr
  loc_BF1FB8: Call tblPersonaGIS.DetaLocaPut(from_stack_1v)
  loc_BF1FBD: FFree1Str var_94
  loc_BF1FC0: FFreeAd var_244 = ""
  loc_BF1FC7: FFree1Var var_E8 = ""
  loc_BF1FCA: LitI2_Byte &HFF
  loc_BF1FCC: FStI2 var_86
  loc_BF1FCF: Branch loc_BF20C9
  loc_BF1FD2: LitStr "No existe el Contribuyente en la base de CATASTRO. Verifique..."
  loc_BF1FD5: ILdPr
  loc_BF1FD8: Call tblPersonaGIS.MsgErrorPut(from_stack_1v)
  loc_BF1FDD: LitStr vbNullString
  loc_BF1FE0: ILdPr
  loc_BF1FE3: Call tblPersonaGIS.CucuPersPut(from_stack_1v)
  loc_BF1FE8: LitStr vbNullString
  loc_BF1FEB: ILdPr
  loc_BF1FEE: Call tblPersonaGIS.DetaPersPut(from_stack_1v)
  loc_BF1FF3: LitStr vbNullString
  loc_BF1FF6: ILdPr
  loc_BF1FF9: Call tblPersonaGIS.DependenciaPut(from_stack_1v)
  loc_BF1FFE: LitStr vbNullString
  loc_BF2001: ILdPr
  loc_BF2004: Call tblPersonaGIS.DistritoPut(from_stack_1v)
  loc_BF2009: LitStr vbNullString
  loc_BF200C: ILdPr
  loc_BF200F: Call tblPersonaGIS.SeccionPut(from_stack_1v)
  loc_BF2014: LitStr vbNullString
  loc_BF2017: ILdPr
  loc_BF201A: Call tblPersonaGIS.ManzanaPut(from_stack_1v)
  loc_BF201F: LitStr vbNullString
  loc_BF2022: ILdPr
  loc_BF2025: Call tblPersonaGIS.ParcelaPut(from_stack_1v)
  loc_BF202A: LitStr vbNullString
  loc_BF202D: ILdPr
  loc_BF2030: Call tblPersonaGIS.SubparcelaPut(from_stack_1v)
  loc_BF2035: LitStr vbNullString
  loc_BF2038: ILdPr
  loc_BF203B: Call tblPersonaGIS.DigiVeriPut(from_stack_1v)
  loc_BF2040: LitStr vbNullString
  loc_BF2043: ILdPr
  loc_BF2046: Call tblPersonaGIS.DecaPostPut(from_stack_1v)
  loc_BF204B: LitStr vbNullString
  loc_BF204E: ILdPr
  loc_BF2051: Call tblPersonaGIS.NumePostPut(from_stack_1v)
  loc_BF2056: LitStr vbNullString
  loc_BF2059: ILdPr
  loc_BF205C: Call tblPersonaGIS.DebaPostPut(from_stack_1v)
  loc_BF2061: LitStr vbNullString
  loc_BF2064: ILdPr
  loc_BF2067: Call tblPersonaGIS.ManzPostPut(from_stack_1v)
  loc_BF206C: LitStr vbNullString
  loc_BF206F: ILdPr
  loc_BF2072: Call tblPersonaGIS.CasaPostPut(from_stack_1v)
  loc_BF2077: LitStr vbNullString
  loc_BF207A: ILdPr
  loc_BF207D: Call tblPersonaGIS.DeloPostPut(from_stack_1v)
  loc_BF2082: LitStr vbNullString
  loc_BF2085: ILdPr
  loc_BF2088: Call tblPersonaGIS.DetaCallPut(from_stack_1v)
  loc_BF208D: LitStr vbNullString
  loc_BF2090: ILdPr
  loc_BF2093: Call tblPersonaGIS.NucaInmuPut(from_stack_1v)
  loc_BF2098: LitStr vbNullString
  loc_BF209B: ILdPr
  loc_BF209E: Call tblPersonaGIS.DetaBarrPut(from_stack_1v)
  loc_BF20A3: LitStr vbNullString
  loc_BF20A6: ILdPr
  loc_BF20A9: Call tblPersonaGIS.ManzInmuPut(from_stack_1v)
  loc_BF20AE: LitStr vbNullString
  loc_BF20B1: ILdPr
  loc_BF20B4: Call tblPersonaGIS.CasaInmuPut(from_stack_1v)
  loc_BF20B9: LitStr vbNullString
  loc_BF20BC: ILdPr
  loc_BF20BF: Call tblPersonaGIS.DetaLocaPut(from_stack_1v)
  loc_BF20C4: LitI2_Byte 0
  loc_BF20C6: FStI2 var_86
  loc_BF20C9: ExitProcI2
  loc_BF20CA: CRec2Uni arg_6CFF
End Function

Private Function Proc_270_15_B24618(arg_C, arg_10) 'B24618
  'Data Table: 4C25A4
  loc_B2436C: LitStr "SELECT * FROM  personaweb"
  loc_B2436F: LitStr " WHERE PeriInfo = "
  loc_B24372: ConcatStr
  loc_B24373: FStStrNoPop var_8C
  loc_B24376: FLdI2 arg_C
  loc_B24379: CStrUI1
  loc_B2437B: FStStrNoPop var_90
  loc_B2437E: ConcatStr
  loc_B2437F: FStStrNoPop var_94
  loc_B24382: LitStr " AND NumeBole = "
  loc_B24385: ConcatStr
  loc_B24386: FStStrNoPop var_98
  loc_B24389: ILdRf arg_10
  loc_B2438C: CStrI4
  loc_B2438E: FStStrNoPop var_9C
  loc_B24391: ConcatStr
  loc_B24392: FStStrNoPop var_A0
  loc_B24395: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B2439A: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_B243A9: FLdRfVar var_A4
  loc_B243AC: FMemLdPr
  loc_B243B1:  = Me.RecordCount
  loc_B243B6: ILdRf var_A4
  loc_B243B9: LitI4 0
  loc_B243BE: GtI4
  loc_B243BF: BranchF loc_B245B8
  loc_B243C2: LitStr vbNullString
  loc_B243C5: ILdPr
  loc_B243C8: Call tblPersonaWEB.MsgErrorPut(from_stack_1v)
  loc_B243CD: FLdRfVar var_CC
  loc_B243D0: FLdRfVar var_BC
  loc_B243D3: LitVarStr var_B8, "CucuPewe"
  loc_B243D8: PopAdLdVar
  loc_B243D9: FLdRfVar var_A8
  loc_B243DC: FMemLdPr
  loc_B243E1:  = Me.Fields
  loc_B243E6: FLdPr var_A8
  loc_B243E9: from_stack_2 = Me.Item(from_stack_1)
  loc_B243EE: FLdPr var_BC
  loc_B243F1:  = Me.Value
  loc_B243F6: FLdRfVar var_CC
  loc_B243F9: CStrVarTmp
  loc_B243FA: FStStrNoPop var_8C
  loc_B243FD: ILdPr
  loc_B24400: Call tblPersonaWEB.CucuPewePut(from_stack_1v)
  loc_B24405: FFree1Str var_8C
  loc_B24408: FFreeAd var_A8 = ""
  loc_B2440F: FFree1Var var_CC = ""
  loc_B24412: FLdRfVar var_CC
  loc_B24415: FLdRfVar var_BC
  loc_B24418: LitVarStr var_B8, "DetaPewe"
  loc_B2441D: PopAdLdVar
  loc_B2441E: FLdRfVar var_A8
  loc_B24421: FMemLdPr
  loc_B24426:  = Me.Fields
  loc_B2442B: FLdPr var_A8
  loc_B2442E: from_stack_2 = Me.Item(from_stack_1)
  loc_B24433: FLdPr var_BC
  loc_B24436:  = Me.Value
  loc_B2443B: FLdRfVar var_CC
  loc_B2443E: CStrVarTmp
  loc_B2443F: FStStrNoPop var_8C
  loc_B24442: ILdPr
  loc_B24445: Call tblPersonaWEB.DetaPewePut(from_stack_1v)
  loc_B2444A: FFree1Str var_8C
  loc_B2444D: FFreeAd var_A8 = ""
  loc_B24454: FFree1Var var_CC = ""
  loc_B24457: FLdRfVar var_CC
  loc_B2445A: FLdRfVar var_BC
  loc_B2445D: LitVarStr var_B8, "SexoPewe"
  loc_B24462: PopAdLdVar
  loc_B24463: FLdRfVar var_A8
  loc_B24466: FMemLdPr
  loc_B2446B:  = Me.Fields
  loc_B24470: FLdPr var_A8
  loc_B24473: from_stack_2 = Me.Item(from_stack_1)
  loc_B24478: FLdPr var_BC
  loc_B2447B:  = Me.Value
  loc_B24480: FLdRfVar var_CC
  loc_B24483: CStrVarTmp
  loc_B24484: FStStrNoPop var_8C
  loc_B24487: ILdPr
  loc_B2448A: Call tblPersonaWEB.SexoPewePut(from_stack_1v)
  loc_B2448F: FFree1Str var_8C
  loc_B24492: FFreeAd var_A8 = ""
  loc_B24499: FFree1Var var_CC = ""
  loc_B2449C: FLdRfVar var_CC
  loc_B2449F: FLdRfVar var_BC
  loc_B244A2: LitVarStr var_B8, "TipePewe"
  loc_B244A7: PopAdLdVar
  loc_B244A8: FLdRfVar var_A8
  loc_B244AB: FMemLdPr
  loc_B244B0:  = Me.Fields
  loc_B244B5: FLdPr var_A8
  loc_B244B8: from_stack_2 = Me.Item(from_stack_1)
  loc_B244BD: FLdPr var_BC
  loc_B244C0:  = Me.Value
  loc_B244C5: FLdRfVar var_CC
  loc_B244C8: CStrVarTmp
  loc_B244C9: FStStrNoPop var_8C
  loc_B244CC: ILdPr
  loc_B244CF: Call tblPersonaWEB.TipePewePut(from_stack_1v)
  loc_B244D4: FFree1Str var_8C
  loc_B244D7: FFreeAd var_A8 = ""
  loc_B244DE: FFree1Var var_CC = ""
  loc_B244E1: FLdRfVar var_CC
  loc_B244E4: FLdRfVar var_BC
  loc_B244E7: LitVarStr var_B8, "DirecPewe"
  loc_B244EC: PopAdLdVar
  loc_B244ED: FLdRfVar var_A8
  loc_B244F0: FMemLdPr
  loc_B244F5:  = Me.Fields
  loc_B244FA: FLdPr var_A8
  loc_B244FD: from_stack_2 = Me.Item(from_stack_1)
  loc_B24502: FLdPr var_BC
  loc_B24505:  = Me.Value
  loc_B2450A: FLdRfVar var_CC
  loc_B2450D: CStrVarTmp
  loc_B2450E: FStStrNoPop var_8C
  loc_B24511: ILdPr
  loc_B24514: Call tblPersonaWEB.DirecPewePut(from_stack_1v)
  loc_B24519: FFree1Str var_8C
  loc_B2451C: FFreeAd var_A8 = ""
  loc_B24523: FFree1Var var_CC = ""
  loc_B24526: FLdRfVar var_CC
  loc_B24529: FLdRfVar var_BC
  loc_B2452C: LitVarStr var_B8, "MailPewe"
  loc_B24531: PopAdLdVar
  loc_B24532: FLdRfVar var_A8
  loc_B24535: FMemLdPr
  loc_B2453A:  = Me.Fields
  loc_B2453F: FLdPr var_A8
  loc_B24542: from_stack_2 = Me.Item(from_stack_1)
  loc_B24547: FLdPr var_BC
  loc_B2454A:  = Me.Value
  loc_B2454F: FLdRfVar var_CC
  loc_B24552: CStrVarTmp
  loc_B24553: FStStrNoPop var_8C
  loc_B24556: ILdPr
  loc_B24559: Call tblPersonaWEB.MailPewePut(from_stack_1v)
  loc_B2455E: FFree1Str var_8C
  loc_B24561: FFreeAd var_A8 = ""
  loc_B24568: FFree1Var var_CC = ""
  loc_B2456B: FLdRfVar var_CC
  loc_B2456E: FLdRfVar var_BC
  loc_B24571: LitVarStr var_B8, "TelePewe"
  loc_B24576: PopAdLdVar
  loc_B24577: FLdRfVar var_A8
  loc_B2457A: FMemLdPr
  loc_B2457F:  = Me.Fields
  loc_B24584: FLdPr var_A8
  loc_B24587: from_stack_2 = Me.Item(from_stack_1)
  loc_B2458C: FLdPr var_BC
  loc_B2458F:  = Me.Value
  loc_B24594: FLdRfVar var_CC
  loc_B24597: CStrVarTmp
  loc_B24598: FStStrNoPop var_8C
  loc_B2459B: ILdPr
  loc_B2459E: Call tblPersonaWEB.TelePewePut(from_stack_1v)
  loc_B245A3: FFree1Str var_8C
  loc_B245A6: FFreeAd var_A8 = ""
  loc_B245AD: FFree1Var var_CC = ""
  loc_B245B0: LitI2_Byte &HFF
  loc_B245B2: FStI2 var_86
  loc_B245B5: Branch loc_B24615
  loc_B245B8: LitStr "No existe el Contribuyente en la base de CATASTRO. Verifique..."
  loc_B245BB: ILdPr
  loc_B245BE: Call tblPersonaWEB.MsgErrorPut(from_stack_1v)
  loc_B245C3: LitStr vbNullString
  loc_B245C6: ILdPr
  loc_B245C9: Call tblPersonaWEB.CucuPewePut(from_stack_1v)
  loc_B245CE: LitStr vbNullString
  loc_B245D1: ILdPr
  loc_B245D4: Call tblPersonaWEB.DetaPewePut(from_stack_1v)
  loc_B245D9: LitStr vbNullString
  loc_B245DC: ILdPr
  loc_B245DF: Call tblPersonaWEB.SexoPewePut(from_stack_1v)
  loc_B245E4: LitStr vbNullString
  loc_B245E7: ILdPr
  loc_B245EA: Call tblPersonaWEB.TipePewePut(from_stack_1v)
  loc_B245EF: LitStr vbNullString
  loc_B245F2: ILdPr
  loc_B245F5: Call tblPersonaWEB.DirecPewePut(from_stack_1v)
  loc_B245FA: LitStr vbNullString
  loc_B245FD: ILdPr
  loc_B24600: Call tblPersonaWEB.MailPewePut(from_stack_1v)
  loc_B24605: LitStr vbNullString
  loc_B24608: ILdPr
  loc_B2460B: Call tblPersonaWEB.TelePewePut(from_stack_1v)
  loc_B24610: LitI2_Byte 0
  loc_B24612: FStI2 var_86
  loc_B24615: ExitProcI2
End Function

Private Function Proc_270_16_A5A584() 'A5A584
  'Data Table: 4C25A4
  loc_A5A528: LitStr "SELECT PeriOrde FROM paragene"
  loc_A5A52B: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A5A530: FLdRfVar var_8C
  loc_A5A533: FMemLdPr
  loc_A5A538:  = Me.RecordCount
  loc_A5A53D: ILdRf var_8C
  loc_A5A540: LitI4 0
  loc_A5A545: GtI4
  loc_A5A546: BranchF loc_A5A583
  loc_A5A549: FLdRfVar var_B4
  loc_A5A54C: FLdRfVar var_A4
  loc_A5A54F: LitVarStr var_A0, "PeriOrde"
  loc_A5A554: PopAdLdVar
  loc_A5A555: FLdRfVar var_90
  loc_A5A558: FMemLdPr
  loc_A5A55D:  = Me.Fields
  loc_A5A562: FLdPr var_90
  loc_A5A565: from_stack_2 = Me.Item(from_stack_1)
  loc_A5A56A: FLdPr var_A4
  loc_A5A56D:  = Me.Value
  loc_A5A572: FLdRfVar var_B4
  loc_A5A575: CI2Var
  loc_A5A576: FStI2 var_86
  loc_A5A579: FFreeAd var_90 = ""
  loc_A5A580: FFree1Var var_B4 = ""
  loc_A5A583: ExitProcI2
End Function

Private Function Proc_270_17_A5A74C() 'A5A74C
  'Data Table: 4C25A4
  loc_A5A6F0: LitStr "SELECT UntrPage FROM paragene"
  loc_A5A6F3: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A5A6F8: FLdRfVar var_90
  loc_A5A6FB: FMemLdPr
  loc_A5A700:  = Me.RecordCount
  loc_A5A705: ILdRf var_90
  loc_A5A708: LitI4 0
  loc_A5A70D: GtI4
  loc_A5A70E: BranchF loc_A5A74B
  loc_A5A711: FLdRfVar var_B8
  loc_A5A714: FLdRfVar var_A8
  loc_A5A717: LitVarStr var_A4, "UntrPage"
  loc_A5A71C: PopAdLdVar
  loc_A5A71D: FLdRfVar var_94
  loc_A5A720: FMemLdPr
  loc_A5A725:  = Me.Fields
  loc_A5A72A: FLdPr var_94
  loc_A5A72D: from_stack_2 = Me.Item(from_stack_1)
  loc_A5A732: FLdPr var_A8
  loc_A5A735:  = Me.Value
  loc_A5A73A: FLdRfVar var_B8
  loc_A5A73D: CR4Var
  loc_A5A73E: FStFPR8 var_8C
  loc_A5A741: FFreeAd var_94 = ""
  loc_A5A748: FFree1Var var_B8 = ""
  loc_A5A74B: ExitProcR8
End Function

Private Function Proc_270_18_A5AADC() 'A5AADC
  'Data Table: 4C25A4
  loc_A5AA80: LitStr "SELECT CodiInte FROM paragene"
  loc_A5AA83: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A5AA88: FLdRfVar var_8C
  loc_A5AA8B: FMemLdPr
  loc_A5AA90:  = Me.RecordCount
  loc_A5AA95: ILdRf var_8C
  loc_A5AA98: LitI4 0
  loc_A5AA9D: GtI4
  loc_A5AA9E: BranchF loc_A5AADB
  loc_A5AAA1: FLdRfVar var_B4
  loc_A5AAA4: FLdRfVar var_A4
  loc_A5AAA7: LitVarStr var_A0, "CodiInte"
  loc_A5AAAC: PopAdLdVar
  loc_A5AAAD: FLdRfVar var_90
  loc_A5AAB0: FMemLdPr
  loc_A5AAB5:  = Me.Fields
  loc_A5AABA: FLdPr var_90
  loc_A5AABD: from_stack_2 = Me.Item(from_stack_1)
  loc_A5AAC2: FLdPr var_A4
  loc_A5AAC5:  = Me.Value
  loc_A5AACA: FLdRfVar var_B4
  loc_A5AACD: CI2Var
  loc_A5AACE: FStI2 var_86
  loc_A5AAD1: FFreeAd var_90 = ""
  loc_A5AAD8: FFree1Var var_B4 = ""
  loc_A5AADB: ExitProcI2
End Function

Private Function Proc_270_19_A5AB74() 'A5AB74
  'Data Table: 4C25A4
  loc_A5AB18: LitStr "SELECT UntrPage FROM paragene"
  loc_A5AB1B: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A5AB20: FLdRfVar var_90
  loc_A5AB23: FMemLdPr
  loc_A5AB28:  = Me.RecordCount
  loc_A5AB2D: ILdRf var_90
  loc_A5AB30: LitI4 0
  loc_A5AB35: GtI4
  loc_A5AB36: BranchF loc_A5AB73
  loc_A5AB39: FLdRfVar var_B8
  loc_A5AB3C: FLdRfVar var_A8
  loc_A5AB3F: LitVarStr var_A4, "UntrPage"
  loc_A5AB44: PopAdLdVar
  loc_A5AB45: FLdRfVar var_94
  loc_A5AB48: FMemLdPr
  loc_A5AB4D:  = Me.Fields
  loc_A5AB52: FLdPr var_94
  loc_A5AB55: from_stack_2 = Me.Item(from_stack_1)
  loc_A5AB5A: FLdPr var_A8
  loc_A5AB5D:  = Me.Value
  loc_A5AB62: FLdRfVar var_B8
  loc_A5AB65: CR4Var
  loc_A5AB66: FStFPR8 var_8C
  loc_A5AB69: FFreeAd var_94 = ""
  loc_A5AB70: FFree1Var var_B8 = ""
  loc_A5AB73: ExitProcR8
End Function

Private Function Proc_270_20_A7A6C0(arg_C) 'A7A6C0
  'Data Table: 4C25A4
  loc_A7A650: LitStr "SELECT DetaOfic FROM oficina WHERE CodiOfic = "
  loc_A7A653: FLdI2 arg_C
  loc_A7A656: CStrUI1
  loc_A7A658: FStStrNoPop var_8C
  loc_A7A65B: ConcatStr
  loc_A7A65C: FStStrNoPop var_90
  loc_A7A65F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7A664: FFreeStr var_8C = ""
  loc_A7A66B: FLdRfVar var_94
  loc_A7A66E: FMemLdPr
  loc_A7A673:  = Me.RecordCount
  loc_A7A678: ILdRf var_94
  loc_A7A67B: LitI4 0
  loc_A7A680: GtI4
  loc_A7A681: BranchF loc_A7A6BE
  loc_A7A684: FLdRfVar var_BC
  loc_A7A687: FLdRfVar var_AC
  loc_A7A68A: LitVarStr var_A8, "DetaOfic"
  loc_A7A68F: PopAdLdVar
  loc_A7A690: FLdRfVar var_98
  loc_A7A693: FMemLdPr
  loc_A7A698:  = Me.Fields
  loc_A7A69D: FLdPr var_98
  loc_A7A6A0: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A6A5: FLdPr var_AC
  loc_A7A6A8:  = Me.Value
  loc_A7A6AD: FLdRfVar var_BC
  loc_A7A6B0: CStrVarTmp
  loc_A7A6B1: FStStr var_88
  loc_A7A6B4: FFreeAd var_98 = ""
  loc_A7A6BB: FFree1Var var_BC = ""
  loc_A7A6BE: ExitProc
End Function

Private Function Proc_270_21_A7C0A0(arg_C) 'A7C0A0
  'Data Table: 4C25A4
  loc_A7C030: LitStr "SELECT DetaCall FROM infogov.calle WHERE CodiCall = "
  loc_A7C033: ILdRf arg_C
  loc_A7C036: CStrI4
  loc_A7C038: FStStrNoPop var_8C
  loc_A7C03B: ConcatStr
  loc_A7C03C: FStStrNoPop var_90
  loc_A7C03F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7C044: FFreeStr var_8C = ""
  loc_A7C04B: FLdRfVar var_94
  loc_A7C04E: FMemLdPr
  loc_A7C053:  = Me.RecordCount
  loc_A7C058: ILdRf var_94
  loc_A7C05B: LitI4 0
  loc_A7C060: GtI4
  loc_A7C061: BranchF loc_A7C09E
  loc_A7C064: FLdRfVar var_BC
  loc_A7C067: FLdRfVar var_AC
  loc_A7C06A: LitVarStr var_A8, "DetaCall"
  loc_A7C06F: PopAdLdVar
  loc_A7C070: FLdRfVar var_98
  loc_A7C073: FMemLdPr
  loc_A7C078:  = Me.Fields
  loc_A7C07D: FLdPr var_98
  loc_A7C080: from_stack_2 = Me.Item(from_stack_1)
  loc_A7C085: FLdPr var_AC
  loc_A7C088:  = Me.Value
  loc_A7C08D: FLdRfVar var_BC
  loc_A7C090: CStrVarTmp
  loc_A7C091: FStStr var_88
  loc_A7C094: FFreeAd var_98 = ""
  loc_A7C09B: FFree1Var var_BC = ""
  loc_A7C09E: ExitProc
End Function

Private Function Proc_270_22_A7BF30(arg_C) 'A7BF30
  'Data Table: 4C25A4
  loc_A7BEC0: LitStr "SELECT DetaActi FROM actividad WHERE CodiActi = "
  loc_A7BEC3: ILdRf arg_C
  loc_A7BEC6: CStrI4
  loc_A7BEC8: FStStrNoPop var_8C
  loc_A7BECB: ConcatStr
  loc_A7BECC: FStStrNoPop var_90
  loc_A7BECF: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7BED4: FFreeStr var_8C = ""
  loc_A7BEDB: FLdRfVar var_94
  loc_A7BEDE: FMemLdPr
  loc_A7BEE3:  = Me.RecordCount
  loc_A7BEE8: ILdRf var_94
  loc_A7BEEB: LitI4 0
  loc_A7BEF0: GtI4
  loc_A7BEF1: BranchF loc_A7BF2E
  loc_A7BEF4: FLdRfVar var_BC
  loc_A7BEF7: FLdRfVar var_AC
  loc_A7BEFA: LitVarStr var_A8, "DetaActi"
  loc_A7BEFF: PopAdLdVar
  loc_A7BF00: FLdRfVar var_98
  loc_A7BF03: FMemLdPr
  loc_A7BF08:  = Me.Fields
  loc_A7BF0D: FLdPr var_98
  loc_A7BF10: from_stack_2 = Me.Item(from_stack_1)
  loc_A7BF15: FLdPr var_AC
  loc_A7BF18:  = Me.Value
  loc_A7BF1D: FLdRfVar var_BC
  loc_A7BF20: CStrVarTmp
  loc_A7BF21: FStStr var_88
  loc_A7BF24: FFreeAd var_98 = ""
  loc_A7BF2B: FFree1Var var_BC = ""
  loc_A7BF2E: ExitProc
End Function

Private Function Proc_270_23_A7AD38(arg_C) 'A7AD38
  'Data Table: 4C25A4
  loc_A7ACC8: LitStr "SELECT infogov.barrio.DetaBarr FROM infogov.barrio WHERE infogov.barrio.CodiBarr = "
  loc_A7ACCB: FLdI2 arg_C
  loc_A7ACCE: CStrUI1
  loc_A7ACD0: FStStrNoPop var_8C
  loc_A7ACD3: ConcatStr
  loc_A7ACD4: FStStrNoPop var_90
  loc_A7ACD7: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7ACDC: FFreeStr var_8C = ""
  loc_A7ACE3: FLdRfVar var_94
  loc_A7ACE6: FMemLdPr
  loc_A7ACEB:  = Me.RecordCount
  loc_A7ACF0: ILdRf var_94
  loc_A7ACF3: LitI4 0
  loc_A7ACF8: GtI4
  loc_A7ACF9: BranchF loc_A7AD36
  loc_A7ACFC: FLdRfVar var_BC
  loc_A7ACFF: FLdRfVar var_AC
  loc_A7AD02: LitVarStr var_A8, "DetaBarr"
  loc_A7AD07: PopAdLdVar
  loc_A7AD08: FLdRfVar var_98
  loc_A7AD0B: FMemLdPr
  loc_A7AD10:  = Me.Fields
  loc_A7AD15: FLdPr var_98
  loc_A7AD18: from_stack_2 = Me.Item(from_stack_1)
  loc_A7AD1D: FLdPr var_AC
  loc_A7AD20:  = Me.Value
  loc_A7AD25: FLdRfVar var_BC
  loc_A7AD28: CStrVarTmp
  loc_A7AD29: FStStr var_88
  loc_A7AD2C: FFreeAd var_98 = ""
  loc_A7AD33: FFree1Var var_BC = ""
  loc_A7AD36: ExitProc
End Function

Private Function Proc_270_24_A92D50(arg_C, arg_10) 'A92D50
  'Data Table: 4C25A4
  loc_A92CC0: ILdRf arg_10
  loc_A92CC3: FStStrCopy var_8C
  loc_A92CC6: LitStr "SELECT DetaConc FROM concepto WHERE PeriInfo = "
  loc_A92CC9: FLdI2 arg_C
  loc_A92CCC: CStrUI1
  loc_A92CCE: FStStrNoPop var_90
  loc_A92CD1: ConcatStr
  loc_A92CD2: FStStrNoPop var_94
  loc_A92CD5: LitStr " AND CodiConc = '"
  loc_A92CD8: ConcatStr
  loc_A92CD9: FStStrNoPop var_98
  loc_A92CDC: ILdRf var_8C
  loc_A92CDF: ConcatStr
  loc_A92CE0: FStStrNoPop var_9C
  loc_A92CE3: LitStr "'"
  loc_A92CE6: ConcatStr
  loc_A92CE7: FStStrNoPop var_A0
  loc_A92CEA: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A92CEF: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A92CFC: FLdRfVar var_A4
  loc_A92CFF: FMemLdPr
  loc_A92D04:  = Me.RecordCount
  loc_A92D09: ILdRf var_A4
  loc_A92D0C: LitI4 0
  loc_A92D11: GtI4
  loc_A92D12: BranchF loc_A92D4F
  loc_A92D15: FLdRfVar var_CC
  loc_A92D18: FLdRfVar var_BC
  loc_A92D1B: LitVarStr var_B8, "DetaConc"
  loc_A92D20: PopAdLdVar
  loc_A92D21: FLdRfVar var_A8
  loc_A92D24: FMemLdPr
  loc_A92D29:  = Me.Fields
  loc_A92D2E: FLdPr var_A8
  loc_A92D31: from_stack_2 = Me.Item(from_stack_1)
  loc_A92D36: FLdPr var_BC
  loc_A92D39:  = Me.Value
  loc_A92D3E: FLdRfVar var_CC
  loc_A92D41: CStrVarTmp
  loc_A92D42: FStStr var_88
  loc_A92D45: FFreeAd var_A8 = ""
  loc_A92D4C: FFree1Var var_CC = ""
  loc_A92D4F: ExitProc
End Function

Private Function Proc_270_25_A92B84(arg_C, arg_10) 'A92B84
  'Data Table: 4C25A4
  loc_A92AF0: ILdRf arg_10
  loc_A92AF3: FStStrCopy var_8C
  loc_A92AF6: LitStr "SELECT SacuConc FROM concepto WHERE PeriInfo = "
  loc_A92AF9: FLdI2 arg_C
  loc_A92AFC: CStrUI1
  loc_A92AFE: FStStrNoPop var_90
  loc_A92B01: ConcatStr
  loc_A92B02: FStStrNoPop var_94
  loc_A92B05: LitStr " AND CodiConc = '"
  loc_A92B08: ConcatStr
  loc_A92B09: FStStrNoPop var_98
  loc_A92B0C: ILdRf var_8C
  loc_A92B0F: ConcatStr
  loc_A92B10: FStStrNoPop var_9C
  loc_A92B13: LitStr "'"
  loc_A92B16: ConcatStr
  loc_A92B17: FStStrNoPop var_A0
  loc_A92B1A: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A92B1F: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A92B2C: FLdRfVar var_A4
  loc_A92B2F: FMemLdPr
  loc_A92B34:  = Me.RecordCount
  loc_A92B39: ILdRf var_A4
  loc_A92B3C: LitI4 0
  loc_A92B41: GtI4
  loc_A92B42: BranchF loc_A92B81
  loc_A92B45: FLdRfVar var_CC
  loc_A92B48: FLdRfVar var_BC
  loc_A92B4B: LitVarStr var_B8, "SacuConc"
  loc_A92B50: PopAdLdVar
  loc_A92B51: FLdRfVar var_A8
  loc_A92B54: FMemLdPr
  loc_A92B59:  = Me.Fields
  loc_A92B5E: FLdPr var_A8
  loc_A92B61: from_stack_2 = Me.Item(from_stack_1)
  loc_A92B66: FLdPr var_BC
  loc_A92B69:  = Me.Value
  loc_A92B6E: FLdRfVar var_CC
  loc_A92B71: CUI1Var
  loc_A92B73: FStUI1 var_86
  loc_A92B77: FFreeAd var_A8 = ""
  loc_A92B7E: FFree1Var var_CC = ""
  loc_A92B81: ExitProcUI1
End Function

Private Function Proc_270_26_A93BD0(arg_C, arg_10) 'A93BD0
  'Data Table: 4C25A4
  loc_A93B40: ILdRf arg_10
  loc_A93B43: FStStrCopy var_8C
  loc_A93B46: LitStr "SELECT TiafConc FROM concepto WHERE PeriInfo = "
  loc_A93B49: FLdI2 arg_C
  loc_A93B4C: CStrUI1
  loc_A93B4E: FStStrNoPop var_90
  loc_A93B51: ConcatStr
  loc_A93B52: FStStrNoPop var_94
  loc_A93B55: LitStr " AND CodiConc = '"
  loc_A93B58: ConcatStr
  loc_A93B59: FStStrNoPop var_98
  loc_A93B5C: ILdRf var_8C
  loc_A93B5F: ConcatStr
  loc_A93B60: FStStrNoPop var_9C
  loc_A93B63: LitStr "'"
  loc_A93B66: ConcatStr
  loc_A93B67: FStStrNoPop var_A0
  loc_A93B6A: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A93B6F: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A93B7C: FLdRfVar var_A4
  loc_A93B7F: FMemLdPr
  loc_A93B84:  = Me.RecordCount
  loc_A93B89: ILdRf var_A4
  loc_A93B8C: LitI4 0
  loc_A93B91: GtI4
  loc_A93B92: BranchF loc_A93BCF
  loc_A93B95: FLdRfVar var_CC
  loc_A93B98: FLdRfVar var_BC
  loc_A93B9B: LitVarStr var_B8, "TiafConc"
  loc_A93BA0: PopAdLdVar
  loc_A93BA1: FLdRfVar var_A8
  loc_A93BA4: FMemLdPr
  loc_A93BA9:  = Me.Fields
  loc_A93BAE: FLdPr var_A8
  loc_A93BB1: from_stack_2 = Me.Item(from_stack_1)
  loc_A93BB6: FLdPr var_BC
  loc_A93BB9:  = Me.Value
  loc_A93BBE: FLdRfVar var_CC
  loc_A93BC1: CStrVarTmp
  loc_A93BC2: FStStr var_88
  loc_A93BC5: FFreeAd var_A8 = ""
  loc_A93BCC: FFree1Var var_CC = ""
  loc_A93BCF: ExitProc
End Function

Private Function Proc_270_27_A7AEA8(arg_C) 'A7AEA8
  'Data Table: 4C25A4
  loc_A7AE38: LitStr "SELECT DetaSece FROM servceme WHERE CodiSece = "
  loc_A7AE3B: FLdI2 arg_C
  loc_A7AE3E: CStrUI1
  loc_A7AE40: FStStrNoPop var_8C
  loc_A7AE43: ConcatStr
  loc_A7AE44: FStStrNoPop var_90
  loc_A7AE47: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7AE4C: FFreeStr var_8C = ""
  loc_A7AE53: FLdRfVar var_94
  loc_A7AE56: FMemLdPr
  loc_A7AE5B:  = Me.RecordCount
  loc_A7AE60: ILdRf var_94
  loc_A7AE63: LitI4 0
  loc_A7AE68: GtI4
  loc_A7AE69: BranchF loc_A7AEA6
  loc_A7AE6C: FLdRfVar var_BC
  loc_A7AE6F: FLdRfVar var_AC
  loc_A7AE72: LitVarStr var_A8, "DetaSece"
  loc_A7AE77: PopAdLdVar
  loc_A7AE78: FLdRfVar var_98
  loc_A7AE7B: FMemLdPr
  loc_A7AE80:  = Me.Fields
  loc_A7AE85: FLdPr var_98
  loc_A7AE88: from_stack_2 = Me.Item(from_stack_1)
  loc_A7AE8D: FLdPr var_AC
  loc_A7AE90:  = Me.Value
  loc_A7AE95: FLdRfVar var_BC
  loc_A7AE98: CStrVarTmp
  loc_A7AE99: FStStr var_88
  loc_A7AE9C: FFreeAd var_98 = ""
  loc_A7AEA3: FFree1Var var_BC = ""
  loc_A7AEA6: ExitProc
End Function

Private Function Proc_270_28_A79F90(arg_C) 'A79F90
  'Data Table: 4C25A4
  loc_A79F20: LitStr "SELECT DetaTise FROM tiposepu WHERE CodiTise = "
  loc_A79F23: FLdI2 arg_C
  loc_A79F26: CStrUI1
  loc_A79F28: FStStrNoPop var_8C
  loc_A79F2B: ConcatStr
  loc_A79F2C: FStStrNoPop var_90
  loc_A79F2F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A79F34: FFreeStr var_8C = ""
  loc_A79F3B: FLdRfVar var_94
  loc_A79F3E: FMemLdPr
  loc_A79F43:  = Me.RecordCount
  loc_A79F48: ILdRf var_94
  loc_A79F4B: LitI4 0
  loc_A79F50: GtI4
  loc_A79F51: BranchF loc_A79F8E
  loc_A79F54: FLdRfVar var_BC
  loc_A79F57: FLdRfVar var_AC
  loc_A79F5A: LitVarStr var_A8, "DetaTise"
  loc_A79F5F: PopAdLdVar
  loc_A79F60: FLdRfVar var_98
  loc_A79F63: FMemLdPr
  loc_A79F68:  = Me.Fields
  loc_A79F6D: FLdPr var_98
  loc_A79F70: from_stack_2 = Me.Item(from_stack_1)
  loc_A79F75: FLdPr var_AC
  loc_A79F78:  = Me.Value
  loc_A79F7D: FLdRfVar var_BC
  loc_A79F80: CStrVarTmp
  loc_A79F81: FStStr var_88
  loc_A79F84: FFreeAd var_98 = ""
  loc_A79F8B: FFree1Var var_BC = ""
  loc_A79F8E: ExitProc
End Function

Private Function Proc_270_29_A7A498(arg_C) 'A7A498
  'Data Table: 4C25A4
  loc_A7A428: LitStr "SELECT DetaCeme FROM cementerio WHERE CodiCeme = "
  loc_A7A42B: FLdI2 arg_C
  loc_A7A42E: CStrUI1
  loc_A7A430: FStStrNoPop var_8C
  loc_A7A433: ConcatStr
  loc_A7A434: FStStrNoPop var_90
  loc_A7A437: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7A43C: FFreeStr var_8C = ""
  loc_A7A443: FLdRfVar var_94
  loc_A7A446: FMemLdPr
  loc_A7A44B:  = Me.RecordCount
  loc_A7A450: ILdRf var_94
  loc_A7A453: LitI4 0
  loc_A7A458: GtI4
  loc_A7A459: BranchF loc_A7A496
  loc_A7A45C: FLdRfVar var_BC
  loc_A7A45F: FLdRfVar var_AC
  loc_A7A462: LitVarStr var_A8, "DetaCeme"
  loc_A7A467: PopAdLdVar
  loc_A7A468: FLdRfVar var_98
  loc_A7A46B: FMemLdPr
  loc_A7A470:  = Me.Fields
  loc_A7A475: FLdPr var_98
  loc_A7A478: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A47D: FLdPr var_AC
  loc_A7A480:  = Me.Value
  loc_A7A485: FLdRfVar var_BC
  loc_A7A488: CStrVarTmp
  loc_A7A489: FStStr var_88
  loc_A7A48C: FFreeAd var_98 = ""
  loc_A7A493: FFree1Var var_BC = ""
  loc_A7A496: ExitProc
End Function

Private Function Proc_270_30_A7AC80(arg_C) 'A7AC80
  'Data Table: 4C25A4
  loc_A7AC10: LitStr "SELECT infogov.localidad.DetaLoca FROM infogov.localidad WHERE infogov.localidad.CodiLoca = "
  loc_A7AC13: FLdI2 arg_C
  loc_A7AC16: CStrUI1
  loc_A7AC18: FStStrNoPop var_8C
  loc_A7AC1B: ConcatStr
  loc_A7AC1C: FStStrNoPop var_90
  loc_A7AC1F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7AC24: FFreeStr var_8C = ""
  loc_A7AC2B: FLdRfVar var_94
  loc_A7AC2E: FMemLdPr
  loc_A7AC33:  = Me.RecordCount
  loc_A7AC38: ILdRf var_94
  loc_A7AC3B: LitI4 0
  loc_A7AC40: GtI4
  loc_A7AC41: BranchF loc_A7AC7E
  loc_A7AC44: FLdRfVar var_BC
  loc_A7AC47: FLdRfVar var_AC
  loc_A7AC4A: LitVarStr var_A8, "DetaLoca"
  loc_A7AC4F: PopAdLdVar
  loc_A7AC50: FLdRfVar var_98
  loc_A7AC53: FMemLdPr
  loc_A7AC58:  = Me.Fields
  loc_A7AC5D: FLdPr var_98
  loc_A7AC60: from_stack_2 = Me.Item(from_stack_1)
  loc_A7AC65: FLdPr var_AC
  loc_A7AC68:  = Me.Value
  loc_A7AC6D: FLdRfVar var_BC
  loc_A7AC70: CStrVarTmp
  loc_A7AC71: FStStr var_88
  loc_A7AC74: FFreeAd var_98 = ""
  loc_A7AC7B: FFree1Var var_BC = ""
  loc_A7AC7E: ExitProc
End Function

Private Function Proc_270_31_A7B3B0(arg_C) 'A7B3B0
  'Data Table: 4C25A4
  loc_A7B340: LitStr "SELECT infogov.tipodocu.DetaTido FROM infogov.tipodocu WHERE CodiTido = "
  loc_A7B343: FLdI2 arg_C
  loc_A7B346: CStrUI1
  loc_A7B348: FStStrNoPop var_8C
  loc_A7B34B: ConcatStr
  loc_A7B34C: FStStrNoPop var_90
  loc_A7B34F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7B354: FFreeStr var_8C = ""
  loc_A7B35B: FLdRfVar var_94
  loc_A7B35E: FMemLdPr
  loc_A7B363:  = Me.RecordCount
  loc_A7B368: ILdRf var_94
  loc_A7B36B: LitI4 0
  loc_A7B370: GtI4
  loc_A7B371: BranchF loc_A7B3AE
  loc_A7B374: FLdRfVar var_BC
  loc_A7B377: FLdRfVar var_AC
  loc_A7B37A: LitVarStr var_A8, "DetaTido"
  loc_A7B37F: PopAdLdVar
  loc_A7B380: FLdRfVar var_98
  loc_A7B383: FMemLdPr
  loc_A7B388:  = Me.Fields
  loc_A7B38D: FLdPr var_98
  loc_A7B390: from_stack_2 = Me.Item(from_stack_1)
  loc_A7B395: FLdPr var_AC
  loc_A7B398:  = Me.Value
  loc_A7B39D: FLdRfVar var_BC
  loc_A7B3A0: CStrVarTmp
  loc_A7B3A1: FStStr var_88
  loc_A7B3A4: FFreeAd var_98 = ""
  loc_A7B3AB: FFree1Var var_BC = ""
  loc_A7B3AE: ExitProc
End Function

Private Function Proc_270_32_A7ADF0(arg_C) 'A7ADF0
  'Data Table: 4C25A4
  loc_A7AD80: LitStr "SELECT DetaTifa FROM tipofapa WHERE CodiTifa = "
  loc_A7AD83: FLdI2 arg_C
  loc_A7AD86: CStrUI1
  loc_A7AD88: FStStrNoPop var_8C
  loc_A7AD8B: ConcatStr
  loc_A7AD8C: FStStrNoPop var_90
  loc_A7AD8F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7AD94: FFreeStr var_8C = ""
  loc_A7AD9B: FLdRfVar var_94
  loc_A7AD9E: FMemLdPr
  loc_A7ADA3:  = Me.RecordCount
  loc_A7ADA8: ILdRf var_94
  loc_A7ADAB: LitI4 0
  loc_A7ADB0: GtI4
  loc_A7ADB1: BranchF loc_A7ADEE
  loc_A7ADB4: FLdRfVar var_BC
  loc_A7ADB7: FLdRfVar var_AC
  loc_A7ADBA: LitVarStr var_A8, "DetaTifa"
  loc_A7ADBF: PopAdLdVar
  loc_A7ADC0: FLdRfVar var_98
  loc_A7ADC3: FMemLdPr
  loc_A7ADC8:  = Me.Fields
  loc_A7ADCD: FLdPr var_98
  loc_A7ADD0: from_stack_2 = Me.Item(from_stack_1)
  loc_A7ADD5: FLdPr var_AC
  loc_A7ADD8:  = Me.Value
  loc_A7ADDD: FLdRfVar var_BC
  loc_A7ADE0: CStrVarTmp
  loc_A7ADE1: FStStr var_88
  loc_A7ADE4: FFreeAd var_98 = ""
  loc_A7ADEB: FFree1Var var_BC = ""
  loc_A7ADEE: ExitProc
  loc_A7ADEF: FnLBound
End Function

Private Function Proc_270_33_A79860(arg_C) 'A79860
  'Data Table: 4C25A4
  loc_A797F0: LitStr "SELECT DetaRamo FROM ramo WHERE CodiRamo = "
  loc_A797F3: FLdI2 arg_C
  loc_A797F6: CStrUI1
  loc_A797F8: FStStrNoPop var_8C
  loc_A797FB: ConcatStr
  loc_A797FC: FStStrNoPop var_90
  loc_A797FF: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A79804: FFreeStr var_8C = ""
  loc_A7980B: FLdRfVar var_94
  loc_A7980E: FMemLdPr
  loc_A79813:  = Me.RecordCount
  loc_A79818: ILdRf var_94
  loc_A7981B: LitI4 0
  loc_A79820: GtI4
  loc_A79821: BranchF loc_A7985E
  loc_A79824: FLdRfVar var_BC
  loc_A79827: FLdRfVar var_AC
  loc_A7982A: LitVarStr var_A8, "DetaRamo"
  loc_A7982F: PopAdLdVar
  loc_A79830: FLdRfVar var_98
  loc_A79833: FMemLdPr
  loc_A79838:  = Me.Fields
  loc_A7983D: FLdPr var_98
  loc_A79840: from_stack_2 = Me.Item(from_stack_1)
  loc_A79845: FLdPr var_AC
  loc_A79848:  = Me.Value
  loc_A7984D: FLdRfVar var_BC
  loc_A79850: CStrVarTmp
  loc_A79851: FStStr var_88
  loc_A79854: FFreeAd var_98 = ""
  loc_A7985B: FFree1Var var_BC = ""
  loc_A7985E: ExitProc
End Function

Private Function Proc_270_34_A8B6D8(arg_C, arg_10) 'A8B6D8
  'Data Table: 4C25A4
  loc_A8B650: LitStr "SELECT DetaRubr FROM rubro WHERE CodiRamo = "
  loc_A8B653: FLdI2 arg_C
  loc_A8B656: CStrUI1
  loc_A8B658: FStStrNoPop var_8C
  loc_A8B65B: ConcatStr
  loc_A8B65C: FStStrNoPop var_90
  loc_A8B65F: LitStr " And CodiRubr = "
  loc_A8B662: ConcatStr
  loc_A8B663: FStStrNoPop var_94
  loc_A8B666: ILdRf arg_10
  loc_A8B669: CStrI4
  loc_A8B66B: FStStrNoPop var_98
  loc_A8B66E: ConcatStr
  loc_A8B66F: FStStrNoPop var_9C
  loc_A8B672: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A8B677: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A8B684: FLdRfVar var_A0
  loc_A8B687: FMemLdPr
  loc_A8B68C:  = Me.RecordCount
  loc_A8B691: ILdRf var_A0
  loc_A8B694: LitI4 0
  loc_A8B699: GtI4
  loc_A8B69A: BranchF loc_A8B6D7
  loc_A8B69D: FLdRfVar var_C8
  loc_A8B6A0: FLdRfVar var_B8
  loc_A8B6A3: LitVarStr var_B4, "DetaRubr"
  loc_A8B6A8: PopAdLdVar
  loc_A8B6A9: FLdRfVar var_A4
  loc_A8B6AC: FMemLdPr
  loc_A8B6B1:  = Me.Fields
  loc_A8B6B6: FLdPr var_A4
  loc_A8B6B9: from_stack_2 = Me.Item(from_stack_1)
  loc_A8B6BE: FLdPr var_B8
  loc_A8B6C1:  = Me.Value
  loc_A8B6C6: FLdRfVar var_C8
  loc_A8B6C9: CStrVarTmp
  loc_A8B6CA: FStStr var_88
  loc_A8B6CD: FFreeAd var_A4 = ""
  loc_A8B6D4: FFree1Var var_C8 = ""
  loc_A8B6D7: ExitProc
End Function

Private Function Proc_270_35_AEBAE8(arg_C, arg_10, arg_14) 'AEBAE8
  'Data Table: 4C25A4
  loc_AEB988: ILdRf arg_14
  loc_AEB98B: FStStrCopy var_8C
  loc_AEB98E: LitStr "Municipalidad de Guaymallén"
  loc_AEB991: LitStr "Municipalidad de Malargüe"
  loc_AEB994: EqStr
  loc_AEB996: BranchF loc_AEBA35
  loc_AEB999: LitStr "SELECT DetaSubr FROM subrubro WHERE CodiRamo = "
  loc_AEB99C: FLdI2 arg_C
  loc_AEB99F: CStrUI1
  loc_AEB9A1: FStStrNoPop var_90
  loc_AEB9A4: ConcatStr
  loc_AEB9A5: FStStrNoPop var_94
  loc_AEB9A8: LitStr " AND CodiRubr = "
  loc_AEB9AB: ConcatStr
  loc_AEB9AC: FStStrNoPop var_98
  loc_AEB9AF: ILdRf arg_10
  loc_AEB9B2: CStrI4
  loc_AEB9B4: FStStrNoPop var_9C
  loc_AEB9B7: ConcatStr
  loc_AEB9B8: FStStrNoPop var_A0
  loc_AEB9BB: LitStr " AND CodiSubr = "
  loc_AEB9BE: ConcatStr
  loc_AEB9BF: FStStrNoPop var_A4
  loc_AEB9C2: ILdRf var_8C
  loc_AEB9C5: ConcatStr
  loc_AEB9C6: FStStrNoPop var_A8
  loc_AEB9C9: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AEB9CE: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_AEB9DF: FLdRfVar var_AC
  loc_AEB9E2: FMemLdPr
  loc_AEB9E7:  = Me.RecordCount
  loc_AEB9EC: ILdRf var_AC
  loc_AEB9EF: LitI4 0
  loc_AEB9F4: GtI4
  loc_AEB9F5: BranchF loc_AEBA32
  loc_AEB9F8: FLdRfVar var_D4
  loc_AEB9FB: FLdRfVar var_C4
  loc_AEB9FE: LitVarStr var_C0, "DetaSubr"
  loc_AEBA03: PopAdLdVar
  loc_AEBA04: FLdRfVar var_B0
  loc_AEBA07: FMemLdPr
  loc_AEBA0C:  = Me.Fields
  loc_AEBA11: FLdPr var_B0
  loc_AEBA14: from_stack_2 = Me.Item(from_stack_1)
  loc_AEBA19: FLdPr var_C4
  loc_AEBA1C:  = Me.Value
  loc_AEBA21: FLdRfVar var_D4
  loc_AEBA24: CStrVarTmp
  loc_AEBA25: FStStr var_88
  loc_AEBA28: FFreeAd var_B0 = ""
  loc_AEBA2F: FFree1Var var_D4 = ""
  loc_AEBA32: Branch loc_AEBAE7
  loc_AEBA35: LitStr "SELECT DetaSubr FROM subrubro WHERE CodiRamo = "
  loc_AEBA38: FLdI2 arg_C
  loc_AEBA3B: CStrUI1
  loc_AEBA3D: FStStrNoPop var_90
  loc_AEBA40: ConcatStr
  loc_AEBA41: FStStrNoPop var_94
  loc_AEBA44: LitStr " AND CodiRubr = "
  loc_AEBA47: ConcatStr
  loc_AEBA48: FStStrNoPop var_98
  loc_AEBA4B: ILdRf arg_10
  loc_AEBA4E: CStrI4
  loc_AEBA50: FStStrNoPop var_9C
  loc_AEBA53: ConcatStr
  loc_AEBA54: FStStrNoPop var_A0
  loc_AEBA57: LitStr " AND PeriOrde = "
  loc_AEBA5A: ConcatStr
  loc_AEBA5B: FStStrNoPop var_A4
  loc_AEBA5E: ImpAdLdI2 MemVar_D93036
  loc_AEBA61: CStrUI1
  loc_AEBA63: FStStrNoPop var_A8
  loc_AEBA66: ConcatStr
  loc_AEBA67: FStStrNoPop var_D8
  loc_AEBA6A: LitStr " AND CodiSubr = "
  loc_AEBA6D: ConcatStr
  loc_AEBA6E: FStStrNoPop var_DC
  loc_AEBA71: ILdRf var_8C
  loc_AEBA74: ConcatStr
  loc_AEBA75: FStStrNoPop var_E0
  loc_AEBA78: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AEBA7D: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_D8 = "": var_DC = ""
  loc_AEBA94: FLdRfVar var_AC
  loc_AEBA97: FMemLdPr
  loc_AEBA9C:  = Me.RecordCount
  loc_AEBAA1: ILdRf var_AC
  loc_AEBAA4: LitI4 0
  loc_AEBAA9: GtI4
  loc_AEBAAA: BranchF loc_AEBAE7
  loc_AEBAAD: FLdRfVar var_D4
  loc_AEBAB0: FLdRfVar var_C4
  loc_AEBAB3: LitVarStr var_C0, "DetaSubr"
  loc_AEBAB8: PopAdLdVar
  loc_AEBAB9: FLdRfVar var_B0
  loc_AEBABC: FMemLdPr
  loc_AEBAC1:  = Me.Fields
  loc_AEBAC6: FLdPr var_B0
  loc_AEBAC9: from_stack_2 = Me.Item(from_stack_1)
  loc_AEBACE: FLdPr var_C4
  loc_AEBAD1:  = Me.Value
  loc_AEBAD6: FLdRfVar var_D4
  loc_AEBAD9: CStrVarTmp
  loc_AEBADA: FStStr var_88
  loc_AEBADD: FFreeAd var_B0 = ""
  loc_AEBAE4: FFree1Var var_D4 = ""
  loc_AEBAE7: ExitProc
End Function

Private Function Proc_270_36_AD3B84(arg_C, arg_10, arg_14, arg_18) 'AD3B84
  'Data Table: 4C25A4
  loc_AD3A94: ILdRf arg_14
  loc_AD3A97: FStStrCopy var_8C
  loc_AD3A9A: LitStr " SELECT if(subrubro.PoimSubr = 'Importe', Round(ImpoSubr * UntrPage * "
  loc_AD3A9D: FLdFPR8 arg_18
  loc_AD3AA0: CStrR8
  loc_AD3AA2: FStStrNoPop var_90
  loc_AD3AA5: ConcatStr
  loc_AD3AA6: FStStrNoPop var_94
  loc_AD3AA9: LitStr ",2),0) as ImpoSubr"
  loc_AD3AAC: ConcatStr
  loc_AD3AAD: FStStrNoPop var_98
  loc_AD3AB0: LitStr " FROM subrubro "
  loc_AD3AB3: ConcatStr
  loc_AD3AB4: FStStrNoPop var_9C
  loc_AD3AB7: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_AD3ABA: ConcatStr
  loc_AD3ABB: FStStrNoPop var_A0
  loc_AD3ABE: LitStr " WHERE subrubro.CodiRamo = "
  loc_AD3AC1: ConcatStr
  loc_AD3AC2: FStStrNoPop var_A4
  loc_AD3AC5: FLdI2 arg_C
  loc_AD3AC8: CStrUI1
  loc_AD3ACA: FStStrNoPop var_A8
  loc_AD3ACD: ConcatStr
  loc_AD3ACE: FStStrNoPop var_AC
  loc_AD3AD1: LitStr " AND subrubro.CodiRubr = "
  loc_AD3AD4: ConcatStr
  loc_AD3AD5: FStStrNoPop var_B0
  loc_AD3AD8: ILdRf arg_10
  loc_AD3ADB: CStrI4
  loc_AD3ADD: FStStrNoPop var_B4
  loc_AD3AE0: ConcatStr
  loc_AD3AE1: FStStrNoPop var_B8
  loc_AD3AE4: LitStr " AND subrubro.PeriOrde = "
  loc_AD3AE7: ConcatStr
  loc_AD3AE8: FStStrNoPop var_BC
  loc_AD3AEB: ImpAdLdI2 MemVar_D93036
  loc_AD3AEE: CStrUI1
  loc_AD3AF0: FStStrNoPop var_C0
  loc_AD3AF3: ConcatStr
  loc_AD3AF4: FStStrNoPop var_C4
  loc_AD3AF7: LitStr " AND subrubro.CodiSubr = "
  loc_AD3AFA: ConcatStr
  loc_AD3AFB: FStStrNoPop var_C8
  loc_AD3AFE: ILdRf var_8C
  loc_AD3B01: ConcatStr
  loc_AD3B02: FStStrNoPop var_CC
  loc_AD3B05: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AD3B0A: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_AD3B2D: FLdRfVar var_D0
  loc_AD3B30: FMemLdPr
  loc_AD3B35:  = Me.RecordCount
  loc_AD3B3A: ILdRf var_D0
  loc_AD3B3D: LitI4 0
  loc_AD3B42: GtI4
  loc_AD3B43: BranchF loc_AD3B80
  loc_AD3B46: FLdRfVar var_F8
  loc_AD3B49: FLdRfVar var_E8
  loc_AD3B4C: LitVarStr var_E4, "ImpoSubr"
  loc_AD3B51: PopAdLdVar
  loc_AD3B52: FLdRfVar var_D4
  loc_AD3B55: FMemLdPr
  loc_AD3B5A:  = Me.Fields
  loc_AD3B5F: FLdPr var_D4
  loc_AD3B62: from_stack_2 = Me.Item(from_stack_1)
  loc_AD3B67: FLdPr var_E8
  loc_AD3B6A:  = Me.Value
  loc_AD3B6F: FLdRfVar var_F8
  loc_AD3B72: CStrVarTmp
  loc_AD3B73: FStStr var_88
  loc_AD3B76: FFreeAd var_D4 = ""
  loc_AD3B7D: FFree1Var var_F8 = ""
  loc_AD3B80: ExitProc
End Function

Private Function Proc_270_37_A7EE08(arg_C) 'A7EE08
  'Data Table: 4C25A4
  loc_A7ED90: LitStr "SELECT DetaSubr FROM subrubro WHERE CodiSubr = "
  loc_A7ED93: ILdRf arg_C
  loc_A7ED96: CStrI4
  loc_A7ED98: FStStrNoPop var_8C
  loc_A7ED9B: ConcatStr
  loc_A7ED9C: FStStrNoPop var_90
  loc_A7ED9F: LitStr " LIMIT 1"
  loc_A7EDA2: ConcatStr
  loc_A7EDA3: FStStrNoPop var_94
  loc_A7EDA6: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7EDAB: FFreeStr var_8C = "": var_90 = ""
  loc_A7EDB4: FLdRfVar var_98
  loc_A7EDB7: FMemLdPr
  loc_A7EDBC:  = Me.RecordCount
  loc_A7EDC1: ILdRf var_98
  loc_A7EDC4: LitI4 0
  loc_A7EDC9: GtI4
  loc_A7EDCA: BranchF loc_A7EE07
  loc_A7EDCD: FLdRfVar var_C0
  loc_A7EDD0: FLdRfVar var_B0
  loc_A7EDD3: LitVarStr var_AC, "DetaSubr"
  loc_A7EDD8: PopAdLdVar
  loc_A7EDD9: FLdRfVar var_9C
  loc_A7EDDC: FMemLdPr
  loc_A7EDE1:  = Me.Fields
  loc_A7EDE6: FLdPr var_9C
  loc_A7EDE9: from_stack_2 = Me.Item(from_stack_1)
  loc_A7EDEE: FLdPr var_B0
  loc_A7EDF1:  = Me.Value
  loc_A7EDF6: FLdRfVar var_C0
  loc_A7EDF9: CStrVarTmp
  loc_A7EDFA: FStStr var_88
  loc_A7EDFD: FFreeAd var_9C = ""
  loc_A7EE04: FFree1Var var_C0 = ""
  loc_A7EE07: ExitProc
End Function

Private Function Proc_270_38_A7BAE0(arg_C) 'A7BAE0
  'Data Table: 4C25A4
  loc_A7BA70: LitStr "SELECT DetaEsin FROM estainmu WHERE CodiEsin = "
  loc_A7BA73: FLdI2 arg_C
  loc_A7BA76: CStrUI1
  loc_A7BA78: FStStrNoPop var_8C
  loc_A7BA7B: ConcatStr
  loc_A7BA7C: FStStrNoPop var_90
  loc_A7BA7F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7BA84: FFreeStr var_8C = ""
  loc_A7BA8B: FLdRfVar var_94
  loc_A7BA8E: FMemLdPr
  loc_A7BA93:  = Me.RecordCount
  loc_A7BA98: ILdRf var_94
  loc_A7BA9B: LitI4 0
  loc_A7BAA0: GtI4
  loc_A7BAA1: BranchF loc_A7BADE
  loc_A7BAA4: FLdRfVar var_BC
  loc_A7BAA7: FLdRfVar var_AC
  loc_A7BAAA: LitVarStr var_A8, "DetaEsin"
  loc_A7BAAF: PopAdLdVar
  loc_A7BAB0: FLdRfVar var_98
  loc_A7BAB3: FMemLdPr
  loc_A7BAB8:  = Me.Fields
  loc_A7BABD: FLdPr var_98
  loc_A7BAC0: from_stack_2 = Me.Item(from_stack_1)
  loc_A7BAC5: FLdPr var_AC
  loc_A7BAC8:  = Me.Value
  loc_A7BACD: FLdRfVar var_BC
  loc_A7BAD0: CStrVarTmp
  loc_A7BAD1: FStStr var_88
  loc_A7BAD4: FFreeAd var_98 = ""
  loc_A7BADB: FFree1Var var_BC = ""
  loc_A7BADE: ExitProc
End Function

Private Function Proc_270_39_A79638(arg_C) 'A79638
  'Data Table: 4C25A4
  loc_A795C8: LitStr "SELECT DetaUbic FROM tipoubic WHERE CodiUbic = "
  loc_A795CB: FLdI2 arg_C
  loc_A795CE: CStrUI1
  loc_A795D0: FStStrNoPop var_8C
  loc_A795D3: ConcatStr
  loc_A795D4: FStStrNoPop var_90
  loc_A795D7: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A795DC: FFreeStr var_8C = ""
  loc_A795E3: FLdRfVar var_94
  loc_A795E6: FMemLdPr
  loc_A795EB:  = Me.RecordCount
  loc_A795F0: ILdRf var_94
  loc_A795F3: LitI4 0
  loc_A795F8: GtI4
  loc_A795F9: BranchF loc_A79636
  loc_A795FC: FLdRfVar var_BC
  loc_A795FF: FLdRfVar var_AC
  loc_A79602: LitVarStr var_A8, "DetaUbic"
  loc_A79607: PopAdLdVar
  loc_A79608: FLdRfVar var_98
  loc_A7960B: FMemLdPr
  loc_A79610:  = Me.Fields
  loc_A79615: FLdPr var_98
  loc_A79618: from_stack_2 = Me.Item(from_stack_1)
  loc_A7961D: FLdPr var_AC
  loc_A79620:  = Me.Value
  loc_A79625: FLdRfVar var_BC
  loc_A79628: CStrVarTmp
  loc_A79629: FStStr var_88
  loc_A7962C: FFreeAd var_98 = ""
  loc_A79633: FFree1Var var_BC = ""
  loc_A79636: ExitProc
End Function

Private Function Proc_270_40_A7A8E8(arg_C) 'A7A8E8
  'Data Table: 4C25A4
  loc_A7A878: LitStr "SELECT DetaZoin FROM zonainmu WHERE CodiZoin = "
  loc_A7A87B: FLdI2 arg_C
  loc_A7A87E: CStrUI1
  loc_A7A880: FStStrNoPop var_8C
  loc_A7A883: ConcatStr
  loc_A7A884: FStStrNoPop var_90
  loc_A7A887: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7A88C: FFreeStr var_8C = ""
  loc_A7A893: FLdRfVar var_94
  loc_A7A896: FMemLdPr
  loc_A7A89B:  = Me.RecordCount
  loc_A7A8A0: ILdRf var_94
  loc_A7A8A3: LitI4 0
  loc_A7A8A8: GtI4
  loc_A7A8A9: BranchF loc_A7A8E6
  loc_A7A8AC: FLdRfVar var_BC
  loc_A7A8AF: FLdRfVar var_AC
  loc_A7A8B2: LitVarStr var_A8, "DetaZoin"
  loc_A7A8B7: PopAdLdVar
  loc_A7A8B8: FLdRfVar var_98
  loc_A7A8BB: FMemLdPr
  loc_A7A8C0:  = Me.Fields
  loc_A7A8C5: FLdPr var_98
  loc_A7A8C8: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A8CD: FLdPr var_AC
  loc_A7A8D0:  = Me.Value
  loc_A7A8D5: FLdRfVar var_BC
  loc_A7A8D8: CStrVarTmp
  loc_A7A8D9: FStStr var_88
  loc_A7A8DC: FFreeAd var_98 = ""
  loc_A7A8E3: FFree1Var var_BC = ""
  loc_A7A8E6: ExitProc
End Function

Private Function Proc_270_41_A7B468(arg_C) 'A7B468
  'Data Table: 4C25A4
  loc_A7B3F8: LitStr "SELECT DetaGrin FROM grupinmu WHERE CodiGrin = "
  loc_A7B3FB: FLdI2 arg_C
  loc_A7B3FE: CStrUI1
  loc_A7B400: FStStrNoPop var_8C
  loc_A7B403: ConcatStr
  loc_A7B404: FStStrNoPop var_90
  loc_A7B407: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7B40C: FFreeStr var_8C = ""
  loc_A7B413: FLdRfVar var_94
  loc_A7B416: FMemLdPr
  loc_A7B41B:  = Me.RecordCount
  loc_A7B420: ILdRf var_94
  loc_A7B423: LitI4 0
  loc_A7B428: GtI4
  loc_A7B429: BranchF loc_A7B466
  loc_A7B42C: FLdRfVar var_BC
  loc_A7B42F: FLdRfVar var_AC
  loc_A7B432: LitVarStr var_A8, "DetaGrin"
  loc_A7B437: PopAdLdVar
  loc_A7B438: FLdRfVar var_98
  loc_A7B43B: FMemLdPr
  loc_A7B440:  = Me.Fields
  loc_A7B445: FLdPr var_98
  loc_A7B448: from_stack_2 = Me.Item(from_stack_1)
  loc_A7B44D: FLdPr var_AC
  loc_A7B450:  = Me.Value
  loc_A7B455: FLdRfVar var_BC
  loc_A7B458: CStrVarTmp
  loc_A7B459: FStStr var_88
  loc_A7B45C: FFreeAd var_98 = ""
  loc_A7B463: FFree1Var var_BC = ""
  loc_A7B466: ExitProc
End Function

Private Function Proc_270_42_A7BB98(arg_C) 'A7BB98
  'Data Table: 4C25A4
  loc_A7BB28: LitStr "SELECT DetaEnre FROM  infogov.entereca WHERE CodiEnre = "
  loc_A7BB2B: FLdI2 arg_C
  loc_A7BB2E: CStrUI1
  loc_A7BB30: FStStrNoPop var_8C
  loc_A7BB33: ConcatStr
  loc_A7BB34: FStStrNoPop var_90
  loc_A7BB37: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7BB3C: FFreeStr var_8C = ""
  loc_A7BB43: FLdRfVar var_94
  loc_A7BB46: FMemLdPr
  loc_A7BB4B:  = Me.RecordCount
  loc_A7BB50: ILdRf var_94
  loc_A7BB53: LitI4 0
  loc_A7BB58: GtI4
  loc_A7BB59: BranchF loc_A7BB96
  loc_A7BB5C: FLdRfVar var_BC
  loc_A7BB5F: FLdRfVar var_AC
  loc_A7BB62: LitVarStr var_A8, "DetaEnre"
  loc_A7BB67: PopAdLdVar
  loc_A7BB68: FLdRfVar var_98
  loc_A7BB6B: FMemLdPr
  loc_A7BB70:  = Me.Fields
  loc_A7BB75: FLdPr var_98
  loc_A7BB78: from_stack_2 = Me.Item(from_stack_1)
  loc_A7BB7D: FLdPr var_AC
  loc_A7BB80:  = Me.Value
  loc_A7BB85: FLdRfVar var_BC
  loc_A7BB88: CStrVarTmp
  loc_A7BB89: FStStr var_88
  loc_A7BB8C: FFreeAd var_98 = ""
  loc_A7BB93: FFree1Var var_BC = ""
  loc_A7BB96: ExitProc
End Function

Private Function Proc_270_43_A79584(arg_C) 'A79584
  'Data Table: 4C25A4
  loc_A79514: LitStr "SELECT NumeAcpa FROM  infogov.entereca WHERE CodiEnre = "
  loc_A79517: FLdI2 arg_C
  loc_A7951A: CStrUI1
  loc_A7951C: FStStrNoPop var_8C
  loc_A7951F: ConcatStr
  loc_A79520: FStStrNoPop var_90
  loc_A79523: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A79528: FFreeStr var_8C = ""
  loc_A7952F: FLdRfVar var_94
  loc_A79532: FMemLdPr
  loc_A79537:  = Me.RecordCount
  loc_A7953C: ILdRf var_94
  loc_A7953F: LitI4 0
  loc_A79544: GtI4
  loc_A79545: BranchF loc_A79582
  loc_A79548: FLdRfVar var_BC
  loc_A7954B: FLdRfVar var_AC
  loc_A7954E: LitVarStr var_A8, "NumeAcpa"
  loc_A79553: PopAdLdVar
  loc_A79554: FLdRfVar var_98
  loc_A79557: FMemLdPr
  loc_A7955C:  = Me.Fields
  loc_A79561: FLdPr var_98
  loc_A79564: from_stack_2 = Me.Item(from_stack_1)
  loc_A79569: FLdPr var_AC
  loc_A7956C:  = Me.Value
  loc_A79571: FLdRfVar var_BC
  loc_A79574: CI2Var
  loc_A79575: FStI2 var_86
  loc_A79578: FFreeAd var_98 = ""
  loc_A7957F: FFree1Var var_BC = ""
  loc_A79582: ExitProcI2
End Function

Private Function Proc_270_44_AC9930(arg_C) 'AC9930
  'Data Table: 4C25A4
  loc_AC982C: LitStr "Municipalidad de Guaymallén"
  loc_AC982F: LitStr "Municipalidad de Malargüe"
  loc_AC9832: EqStr
  loc_AC9834: BranchF loc_AC98A8
  loc_AC9837: LitStr "SELECT DetaSeca FROM servcata WHERE CodiSeca = "
  loc_AC983A: FLdI2 arg_C
  loc_AC983D: CStrUI1
  loc_AC983F: FStStrNoPop var_8C
  loc_AC9842: ConcatStr
  loc_AC9843: FStStrNoPop var_90
  loc_AC9846: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AC984B: FFreeStr var_8C = ""
  loc_AC9852: FLdRfVar var_94
  loc_AC9855: FMemLdPr
  loc_AC985A:  = Me.RecordCount
  loc_AC985F: ILdRf var_94
  loc_AC9862: LitI4 0
  loc_AC9867: GtI4
  loc_AC9868: BranchF loc_AC98A5
  loc_AC986B: FLdRfVar var_BC
  loc_AC986E: FLdRfVar var_AC
  loc_AC9871: LitVarStr var_A8, "DetaSeca"
  loc_AC9876: PopAdLdVar
  loc_AC9877: FLdRfVar var_98
  loc_AC987A: FMemLdPr
  loc_AC987F:  = Me.Fields
  loc_AC9884: FLdPr var_98
  loc_AC9887: from_stack_2 = Me.Item(from_stack_1)
  loc_AC988C: FLdPr var_AC
  loc_AC988F:  = Me.Value
  loc_AC9894: FLdRfVar var_BC
  loc_AC9897: CStrVarTmp
  loc_AC9898: FStStr var_88
  loc_AC989B: FFreeAd var_98 = ""
  loc_AC98A2: FFree1Var var_BC = ""
  loc_AC98A5: Branch loc_AC992F
  loc_AC98A8: LitStr "SELECT DetaSeca FROM servcata WHERE PeriOrde = "
  loc_AC98AB: ImpAdLdI2 MemVar_D93036
  loc_AC98AE: CStrUI1
  loc_AC98B0: FStStrNoPop var_8C
  loc_AC98B3: ConcatStr
  loc_AC98B4: FStStrNoPop var_90
  loc_AC98B7: LitStr " AND CodiSeca = "
  loc_AC98BA: ConcatStr
  loc_AC98BB: FStStrNoPop var_C0
  loc_AC98BE: FLdI2 arg_C
  loc_AC98C1: CStrUI1
  loc_AC98C3: FStStrNoPop var_C4
  loc_AC98C6: ConcatStr
  loc_AC98C7: FStStrNoPop var_C8
  loc_AC98CA: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AC98CF: FFreeStr var_8C = "": var_90 = "": var_C0 = "": var_C4 = ""
  loc_AC98DC: FLdRfVar var_94
  loc_AC98DF: FMemLdPr
  loc_AC98E4:  = Me.RecordCount
  loc_AC98E9: ILdRf var_94
  loc_AC98EC: LitI4 0
  loc_AC98F1: GtI4
  loc_AC98F2: BranchF loc_AC992F
  loc_AC98F5: FLdRfVar var_BC
  loc_AC98F8: FLdRfVar var_AC
  loc_AC98FB: LitVarStr var_A8, "DetaSeca"
  loc_AC9900: PopAdLdVar
  loc_AC9901: FLdRfVar var_98
  loc_AC9904: FMemLdPr
  loc_AC9909:  = Me.Fields
  loc_AC990E: FLdPr var_98
  loc_AC9911: from_stack_2 = Me.Item(from_stack_1)
  loc_AC9916: FLdPr var_AC
  loc_AC9919:  = Me.Value
  loc_AC991E: FLdRfVar var_BC
  loc_AC9921: CStrVarTmp
  loc_AC9922: FStStr var_88
  loc_AC9925: FFreeAd var_98 = ""
  loc_AC992C: FFree1Var var_BC = ""
  loc_AC992F: ExitProc
End Function

Private Function Proc_270_45_A7B690() 'A7B690
  'Data Table: 4C25A4
  loc_A7B620: LitStr "SELECT DetaEsci FROM infogov.estacivi WHERE CodiEsci = "
  loc_A7B623: FLdUI1
  loc_A7B627: CStrI2
  loc_A7B629: FStStrNoPop var_8C
  loc_A7B62C: ConcatStr
  loc_A7B62D: FStStrNoPop var_90
  loc_A7B630: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7B635: FFreeStr var_8C = ""
  loc_A7B63C: FLdRfVar var_94
  loc_A7B63F: FMemLdPr
  loc_A7B644:  = Me.RecordCount
  loc_A7B649: ILdRf var_94
  loc_A7B64C: LitI4 0
  loc_A7B651: GtI4
  loc_A7B652: BranchF loc_A7B68F
  loc_A7B655: FLdRfVar var_BC
  loc_A7B658: FLdRfVar var_AC
  loc_A7B65B: LitVarStr var_A8, "DetaEsci"
  loc_A7B660: PopAdLdVar
  loc_A7B661: FLdRfVar var_98
  loc_A7B664: FMemLdPr
  loc_A7B669:  = Me.Fields
  loc_A7B66E: FLdPr var_98
  loc_A7B671: from_stack_2 = Me.Item(from_stack_1)
  loc_A7B676: FLdPr var_AC
  loc_A7B679:  = Me.Value
  loc_A7B67E: FLdRfVar var_BC
  loc_A7B681: CStrVarTmp
  loc_A7B682: FStStr var_88
  loc_A7B685: FFreeAd var_98 = ""
  loc_A7B68C: FFree1Var var_BC = ""
  loc_A7B68F: ExitProc
End Function

Private Function Proc_270_46_A7A9A0() 'A7A9A0
  'Data Table: 4C25A4
  loc_A7A930: LitStr "SELECT DetaReca FROM recaudador WHERE CodiReca = "
  loc_A7A933: FLdUI1
  loc_A7A937: CStrI2
  loc_A7A939: FStStrNoPop var_8C
  loc_A7A93C: ConcatStr
  loc_A7A93D: FStStrNoPop var_90
  loc_A7A940: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7A945: FFreeStr var_8C = ""
  loc_A7A94C: FLdRfVar var_94
  loc_A7A94F: FMemLdPr
  loc_A7A954:  = Me.RecordCount
  loc_A7A959: ILdRf var_94
  loc_A7A95C: LitI4 0
  loc_A7A961: GtI4
  loc_A7A962: BranchF loc_A7A99F
  loc_A7A965: FLdRfVar var_BC
  loc_A7A968: FLdRfVar var_AC
  loc_A7A96B: LitVarStr var_A8, "DetaReca"
  loc_A7A970: PopAdLdVar
  loc_A7A971: FLdRfVar var_98
  loc_A7A974: FMemLdPr
  loc_A7A979:  = Me.Fields
  loc_A7A97E: FLdPr var_98
  loc_A7A981: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A986: FLdPr var_AC
  loc_A7A989:  = Me.Value
  loc_A7A98E: FLdRfVar var_BC
  loc_A7A991: CStrVarTmp
  loc_A7A992: FStStr var_88
  loc_A7A995: FFreeAd var_98 = ""
  loc_A7A99C: FFree1Var var_BC = ""
  loc_A7A99F: ExitProc
End Function

Private Function Proc_270_47_A79CB0() 'A79CB0
  'Data Table: 4C25A4
  loc_A79C40: LitStr "SELECT CodiPofi FROM recaudador WHERE CodiReca = "
  loc_A79C43: FLdUI1
  loc_A79C47: CStrI2
  loc_A79C49: FStStrNoPop var_8C
  loc_A79C4C: ConcatStr
  loc_A79C4D: FStStrNoPop var_90
  loc_A79C50: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A79C55: FFreeStr var_8C = ""
  loc_A79C5C: FLdRfVar var_94
  loc_A79C5F: FMemLdPr
  loc_A79C64:  = Me.RecordCount
  loc_A79C69: ILdRf var_94
  loc_A79C6C: LitI4 0
  loc_A79C71: GtI4
  loc_A79C72: BranchF loc_A79CAF
  loc_A79C75: FLdRfVar var_BC
  loc_A79C78: FLdRfVar var_AC
  loc_A79C7B: LitVarStr var_A8, "CodiPofi"
  loc_A79C80: PopAdLdVar
  loc_A79C81: FLdRfVar var_98
  loc_A79C84: FMemLdPr
  loc_A79C89:  = Me.Fields
  loc_A79C8E: FLdPr var_98
  loc_A79C91: from_stack_2 = Me.Item(from_stack_1)
  loc_A79C96: FLdPr var_AC
  loc_A79C99:  = Me.Value
  loc_A79C9E: FLdRfVar var_BC
  loc_A79CA1: CStrVarTmp
  loc_A79CA2: FStStr var_88
  loc_A79CA5: FFreeAd var_98 = ""
  loc_A79CAC: FFree1Var var_BC = ""
  loc_A79CAF: ExitProc
End Function

Private Function Proc_270_48_A7A328() 'A7A328
  'Data Table: 4C25A4
  loc_A7A2B8: LitStr "SELECT DetaOfju FROM oficjust WHERE CodiOfju = "
  loc_A7A2BB: FLdUI1
  loc_A7A2BF: CStrI2
  loc_A7A2C1: FStStrNoPop var_8C
  loc_A7A2C4: ConcatStr
  loc_A7A2C5: FStStrNoPop var_90
  loc_A7A2C8: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7A2CD: FFreeStr var_8C = ""
  loc_A7A2D4: FLdRfVar var_94
  loc_A7A2D7: FMemLdPr
  loc_A7A2DC:  = Me.RecordCount
  loc_A7A2E1: ILdRf var_94
  loc_A7A2E4: LitI4 0
  loc_A7A2E9: GtI4
  loc_A7A2EA: BranchF loc_A7A327
  loc_A7A2ED: FLdRfVar var_BC
  loc_A7A2F0: FLdRfVar var_AC
  loc_A7A2F3: LitVarStr var_A8, "DetaOfju"
  loc_A7A2F8: PopAdLdVar
  loc_A7A2F9: FLdRfVar var_98
  loc_A7A2FC: FMemLdPr
  loc_A7A301:  = Me.Fields
  loc_A7A306: FLdPr var_98
  loc_A7A309: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A30E: FLdPr var_AC
  loc_A7A311:  = Me.Value
  loc_A7A316: FLdRfVar var_BC
  loc_A7A319: CStrVarTmp
  loc_A7A31A: FStStr var_88
  loc_A7A31D: FFreeAd var_98 = ""
  loc_A7A324: FFree1Var var_BC = ""
  loc_A7A327: ExitProc
End Function

Private Function Proc_270_49_A8F1B0() 'A8F1B0
  'Data Table: 4C25A4
  loc_A8F124: LitStr "SELECT DetaTili FROM tipoliqu WHERE CodiOfic = "
  loc_A8F127: FLdUI1
  loc_A8F12B: CStrI2
  loc_A8F12D: FStStrNoPop var_8C
  loc_A8F130: ConcatStr
  loc_A8F131: FStStrNoPop var_90
  loc_A8F134: LitStr " AND CodiTili = "
  loc_A8F137: ConcatStr
  loc_A8F138: FStStrNoPop var_94
  loc_A8F13B: FLdUI1
  loc_A8F13F: CStrI2
  loc_A8F141: FStStrNoPop var_98
  loc_A8F144: ConcatStr
  loc_A8F145: FStStrNoPop var_9C
  loc_A8F148: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A8F14D: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A8F15A: FLdRfVar var_A0
  loc_A8F15D: FMemLdPr
  loc_A8F162:  = Me.RecordCount
  loc_A8F167: ILdRf var_A0
  loc_A8F16A: LitI4 0
  loc_A8F16F: GtI4
  loc_A8F170: BranchF loc_A8F1AD
  loc_A8F173: FLdRfVar var_C8
  loc_A8F176: FLdRfVar var_B8
  loc_A8F179: LitVarStr var_B4, "DetaTili"
  loc_A8F17E: PopAdLdVar
  loc_A8F17F: FLdRfVar var_A4
  loc_A8F182: FMemLdPr
  loc_A8F187:  = Me.Fields
  loc_A8F18C: FLdPr var_A4
  loc_A8F18F: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F194: FLdPr var_B8
  loc_A8F197:  = Me.Value
  loc_A8F19C: FLdRfVar var_C8
  loc_A8F19F: CStrVarTmp
  loc_A8F1A0: FStStr var_88
  loc_A8F1A3: FFreeAd var_A4 = ""
  loc_A8F1AA: FFree1Var var_C8 = ""
  loc_A8F1AD: ExitProc
End Function

Private Function Proc_270_50_A7ABC8(arg_C) 'A7ABC8
  'Data Table: 4C25A4
  loc_A7AB58: LitStr "SELECT DetaEsca FROM escala WHERE CodiEsca = "
  loc_A7AB5B: FLdI2 arg_C
  loc_A7AB5E: CStrUI1
  loc_A7AB60: FStStrNoPop var_8C
  loc_A7AB63: ConcatStr
  loc_A7AB64: FStStrNoPop var_90
  loc_A7AB67: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7AB6C: FFreeStr var_8C = ""
  loc_A7AB73: FLdRfVar var_94
  loc_A7AB76: FMemLdPr
  loc_A7AB7B:  = Me.RecordCount
  loc_A7AB80: ILdRf var_94
  loc_A7AB83: LitI4 0
  loc_A7AB88: GtI4
  loc_A7AB89: BranchF loc_A7ABC6
  loc_A7AB8C: FLdRfVar var_BC
  loc_A7AB8F: FLdRfVar var_AC
  loc_A7AB92: LitVarStr var_A8, "DetaEsca"
  loc_A7AB97: PopAdLdVar
  loc_A7AB98: FLdRfVar var_98
  loc_A7AB9B: FMemLdPr
  loc_A7ABA0:  = Me.Fields
  loc_A7ABA5: FLdPr var_98
  loc_A7ABA8: from_stack_2 = Me.Item(from_stack_1)
  loc_A7ABAD: FLdPr var_AC
  loc_A7ABB0:  = Me.Value
  loc_A7ABB5: FLdRfVar var_BC
  loc_A7ABB8: CStrVarTmp
  loc_A7ABB9: FStStr var_88
  loc_A7ABBC: FFreeAd var_98 = ""
  loc_A7ABC3: FFree1Var var_BC = ""
  loc_A7ABC6: ExitProc
End Function

Private Function Proc_270_51_A7B800(arg_C) 'A7B800
  'Data Table: 4C25A4
  loc_A7B790: LitStr "SELECT DetaExce FROM excepcion WHERE CodiExce = "
  loc_A7B793: FLdI2 arg_C
  loc_A7B796: CStrUI1
  loc_A7B798: FStStrNoPop var_8C
  loc_A7B79B: ConcatStr
  loc_A7B79C: FStStrNoPop var_90
  loc_A7B79F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7B7A4: FFreeStr var_8C = ""
  loc_A7B7AB: FLdRfVar var_94
  loc_A7B7AE: FMemLdPr
  loc_A7B7B3:  = Me.RecordCount
  loc_A7B7B8: ILdRf var_94
  loc_A7B7BB: LitI4 0
  loc_A7B7C0: GtI4
  loc_A7B7C1: BranchF loc_A7B7FE
  loc_A7B7C4: FLdRfVar var_BC
  loc_A7B7C7: FLdRfVar var_AC
  loc_A7B7CA: LitVarStr var_A8, "DetaExce"
  loc_A7B7CF: PopAdLdVar
  loc_A7B7D0: FLdRfVar var_98
  loc_A7B7D3: FMemLdPr
  loc_A7B7D8:  = Me.Fields
  loc_A7B7DD: FLdPr var_98
  loc_A7B7E0: from_stack_2 = Me.Item(from_stack_1)
  loc_A7B7E5: FLdPr var_AC
  loc_A7B7E8:  = Me.Value
  loc_A7B7ED: FLdRfVar var_BC
  loc_A7B7F0: CStrVarTmp
  loc_A7B7F1: FStStr var_88
  loc_A7B7F4: FFreeAd var_98 = ""
  loc_A7B7FB: FFree1Var var_BC = ""
  loc_A7B7FE: ExitProc
End Function

Private Function Proc_270_52_A7914C(arg_C) 'A7914C
  'Data Table: 4C25A4
  loc_A790DC: LitStr "SELECT PorcExce FROM eximicion WHERE CodiExce = "
  loc_A790DF: FLdI2 arg_C
  loc_A790E2: CStrUI1
  loc_A790E4: FStStrNoPop var_90
  loc_A790E7: ConcatStr
  loc_A790E8: FStStrNoPop var_94
  loc_A790EB: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A790F0: FFreeStr var_90 = ""
  loc_A790F7: FLdRfVar var_98
  loc_A790FA: FMemLdPr
  loc_A790FF:  = Me.RecordCount
  loc_A79104: ILdRf var_98
  loc_A79107: LitI4 0
  loc_A7910C: GtI4
  loc_A7910D: BranchF loc_A7914A
  loc_A79110: FLdRfVar var_C0
  loc_A79113: FLdRfVar var_B0
  loc_A79116: LitVarStr var_AC, "PorcExce"
  loc_A7911B: PopAdLdVar
  loc_A7911C: FLdRfVar var_9C
  loc_A7911F: FMemLdPr
  loc_A79124:  = Me.Fields
  loc_A79129: FLdPr var_9C
  loc_A7912C: from_stack_2 = Me.Item(from_stack_1)
  loc_A79131: FLdPr var_B0
  loc_A79134:  = Me.Value
  loc_A79139: FLdRfVar var_C0
  loc_A7913C: CR4Var
  loc_A7913D: FStFPR8 var_8C
  loc_A79140: FFreeAd var_9C = ""
  loc_A79147: FFree1Var var_C0 = ""
  loc_A7914A: ExitProcR8
End Function

Private Function Proc_270_53_A7BDC0(arg_C) 'A7BDC0
  'Data Table: 4C25A4
  loc_A7BD50: LitStr "SELECT CorePare FROM pararenta WHERE PeriInfo = "
  loc_A7BD53: FLdI2 arg_C
  loc_A7BD56: CStrUI1
  loc_A7BD58: FStStrNoPop var_8C
  loc_A7BD5B: ConcatStr
  loc_A7BD5C: FStStrNoPop var_90
  loc_A7BD5F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7BD64: FFreeStr var_8C = ""
  loc_A7BD6B: FLdRfVar var_94
  loc_A7BD6E: FMemLdPr
  loc_A7BD73:  = Me.RecordCount
  loc_A7BD78: ILdRf var_94
  loc_A7BD7B: LitI4 0
  loc_A7BD80: GtI4
  loc_A7BD81: BranchF loc_A7BDBE
  loc_A7BD84: FLdRfVar var_BC
  loc_A7BD87: FLdRfVar var_AC
  loc_A7BD8A: LitVarStr var_A8, "CorePare"
  loc_A7BD8F: PopAdLdVar
  loc_A7BD90: FLdRfVar var_98
  loc_A7BD93: FMemLdPr
  loc_A7BD98:  = Me.Fields
  loc_A7BD9D: FLdPr var_98
  loc_A7BDA0: from_stack_2 = Me.Item(from_stack_1)
  loc_A7BDA5: FLdPr var_AC
  loc_A7BDA8:  = Me.Value
  loc_A7BDAD: FLdRfVar var_BC
  loc_A7BDB0: CStrVarTmp
  loc_A7BDB1: FStStr var_88
  loc_A7BDB4: FFreeAd var_98 = ""
  loc_A7BDBB: FFree1Var var_BC = ""
  loc_A7BDBE: ExitProc
End Function

Private Function Proc_270_54_A799D0(arg_C) 'A799D0
  'Data Table: 4C25A4
  loc_A79960: LitStr "SELECT CoinPare FROM pararenta WHERE PeriInfo = "
  loc_A79963: FLdI2 arg_C
  loc_A79966: CStrUI1
  loc_A79968: FStStrNoPop var_8C
  loc_A7996B: ConcatStr
  loc_A7996C: FStStrNoPop var_90
  loc_A7996F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A79974: FFreeStr var_8C = ""
  loc_A7997B: FLdRfVar var_94
  loc_A7997E: FMemLdPr
  loc_A79983:  = Me.RecordCount
  loc_A79988: ILdRf var_94
  loc_A7998B: LitI4 0
  loc_A79990: GtI4
  loc_A79991: BranchF loc_A799CE
  loc_A79994: FLdRfVar var_BC
  loc_A79997: FLdRfVar var_AC
  loc_A7999A: LitVarStr var_A8, "CoinPare"
  loc_A7999F: PopAdLdVar
  loc_A799A0: FLdRfVar var_98
  loc_A799A3: FMemLdPr
  loc_A799A8:  = Me.Fields
  loc_A799AD: FLdPr var_98
  loc_A799B0: from_stack_2 = Me.Item(from_stack_1)
  loc_A799B5: FLdPr var_AC
  loc_A799B8:  = Me.Value
  loc_A799BD: FLdRfVar var_BC
  loc_A799C0: CStrVarTmp
  loc_A799C1: FStStr var_88
  loc_A799C4: FFreeAd var_98 = ""
  loc_A799CB: FFree1Var var_BC = ""
  loc_A799CE: ExitProc
End Function

Private Function Proc_270_55_A79A88(arg_C) 'A79A88
  'Data Table: 4C25A4
  loc_A79A18: LitStr "SELECT CoadPare FROM pararenta WHERE PeriInfo = "
  loc_A79A1B: FLdI2 arg_C
  loc_A79A1E: CStrUI1
  loc_A79A20: FStStrNoPop var_8C
  loc_A79A23: ConcatStr
  loc_A79A24: FStStrNoPop var_90
  loc_A79A27: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A79A2C: FFreeStr var_8C = ""
  loc_A79A33: FLdRfVar var_94
  loc_A79A36: FMemLdPr
  loc_A79A3B:  = Me.RecordCount
  loc_A79A40: ILdRf var_94
  loc_A79A43: LitI4 0
  loc_A79A48: GtI4
  loc_A79A49: BranchF loc_A79A86
  loc_A79A4C: FLdRfVar var_BC
  loc_A79A4F: FLdRfVar var_AC
  loc_A79A52: LitVarStr var_A8, "CoadPare"
  loc_A79A57: PopAdLdVar
  loc_A79A58: FLdRfVar var_98
  loc_A79A5B: FMemLdPr
  loc_A79A60:  = Me.Fields
  loc_A79A65: FLdPr var_98
  loc_A79A68: from_stack_2 = Me.Item(from_stack_1)
  loc_A79A6D: FLdPr var_AC
  loc_A79A70:  = Me.Value
  loc_A79A75: FLdRfVar var_BC
  loc_A79A78: CStrVarTmp
  loc_A79A79: FStStr var_88
  loc_A79A7C: FFreeAd var_98 = ""
  loc_A79A83: FFree1Var var_BC = ""
  loc_A79A86: ExitProc
End Function

Private Function Proc_270_56_A7A778(arg_C) 'A7A778
  'Data Table: 4C25A4
  loc_A7A708: LitStr "SELECT CoapPare FROM pararenta WHERE PeriInfo = "
  loc_A7A70B: FLdI2 arg_C
  loc_A7A70E: CStrUI1
  loc_A7A710: FStStrNoPop var_8C
  loc_A7A713: ConcatStr
  loc_A7A714: FStStrNoPop var_90
  loc_A7A717: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7A71C: FFreeStr var_8C = ""
  loc_A7A723: FLdRfVar var_94
  loc_A7A726: FMemLdPr
  loc_A7A72B:  = Me.RecordCount
  loc_A7A730: ILdRf var_94
  loc_A7A733: LitI4 0
  loc_A7A738: GtI4
  loc_A7A739: BranchF loc_A7A776
  loc_A7A73C: FLdRfVar var_BC
  loc_A7A73F: FLdRfVar var_AC
  loc_A7A742: LitVarStr var_A8, "CoapPare"
  loc_A7A747: PopAdLdVar
  loc_A7A748: FLdRfVar var_98
  loc_A7A74B: FMemLdPr
  loc_A7A750:  = Me.Fields
  loc_A7A755: FLdPr var_98
  loc_A7A758: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A75D: FLdPr var_AC
  loc_A7A760:  = Me.Value
  loc_A7A765: FLdRfVar var_BC
  loc_A7A768: CStrVarTmp
  loc_A7A769: FStStr var_88
  loc_A7A76C: FFreeAd var_98 = ""
  loc_A7A773: FFree1Var var_BC = ""
  loc_A7A776: ExitProc
End Function

Private Function Proc_270_57_A7A100(arg_C) 'A7A100
  'Data Table: 4C25A4
  loc_A7A090: LitStr "SELECT CoimPare FROM pararenta WHERE PeriInfo = "
  loc_A7A093: FLdI2 arg_C
  loc_A7A096: CStrUI1
  loc_A7A098: FStStrNoPop var_8C
  loc_A7A09B: ConcatStr
  loc_A7A09C: FStStrNoPop var_90
  loc_A7A09F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7A0A4: FFreeStr var_8C = ""
  loc_A7A0AB: FLdRfVar var_94
  loc_A7A0AE: FMemLdPr
  loc_A7A0B3:  = Me.RecordCount
  loc_A7A0B8: ILdRf var_94
  loc_A7A0BB: LitI4 0
  loc_A7A0C0: GtI4
  loc_A7A0C1: BranchF loc_A7A0FE
  loc_A7A0C4: FLdRfVar var_BC
  loc_A7A0C7: FLdRfVar var_AC
  loc_A7A0CA: LitVarStr var_A8, "CoimPare"
  loc_A7A0CF: PopAdLdVar
  loc_A7A0D0: FLdRfVar var_98
  loc_A7A0D3: FMemLdPr
  loc_A7A0D8:  = Me.Fields
  loc_A7A0DD: FLdPr var_98
  loc_A7A0E0: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A0E5: FLdPr var_AC
  loc_A7A0E8:  = Me.Value
  loc_A7A0ED: FLdRfVar var_BC
  loc_A7A0F0: CStrVarTmp
  loc_A7A0F1: FStStr var_88
  loc_A7A0F4: FFreeAd var_98 = ""
  loc_A7A0FB: FFree1Var var_BC = ""
  loc_A7A0FE: ExitProc
End Function

Private Function Proc_270_58_A92A98(arg_C, arg_10) 'A92A98
  'Data Table: 4C25A4
  loc_A92A08: ILdRf arg_10
  loc_A92A0B: FStStrCopy var_8C
  loc_A92A0E: LitStr "SELECT IngrConc FROM concepto WHERE PeriInfo = "
  loc_A92A11: FLdI2 arg_C
  loc_A92A14: CStrUI1
  loc_A92A16: FStStrNoPop var_90
  loc_A92A19: ConcatStr
  loc_A92A1A: FStStrNoPop var_94
  loc_A92A1D: LitStr " AND CodiConc = '"
  loc_A92A20: ConcatStr
  loc_A92A21: FStStrNoPop var_98
  loc_A92A24: ILdRf var_8C
  loc_A92A27: ConcatStr
  loc_A92A28: FStStrNoPop var_9C
  loc_A92A2B: LitStr "'"
  loc_A92A2E: ConcatStr
  loc_A92A2F: FStStrNoPop var_A0
  loc_A92A32: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A92A37: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A92A44: FLdRfVar var_A4
  loc_A92A47: FMemLdPr
  loc_A92A4C:  = Me.RecordCount
  loc_A92A51: ILdRf var_A4
  loc_A92A54: LitI4 0
  loc_A92A59: GtI4
  loc_A92A5A: BranchF loc_A92A97
  loc_A92A5D: FLdRfVar var_CC
  loc_A92A60: FLdRfVar var_BC
  loc_A92A63: LitVarStr var_B8, "IngrConc"
  loc_A92A68: PopAdLdVar
  loc_A92A69: FLdRfVar var_A8
  loc_A92A6C: FMemLdPr
  loc_A92A71:  = Me.Fields
  loc_A92A76: FLdPr var_A8
  loc_A92A79: from_stack_2 = Me.Item(from_stack_1)
  loc_A92A7E: FLdPr var_BC
  loc_A92A81:  = Me.Value
  loc_A92A86: FLdRfVar var_CC
  loc_A92A89: CStrVarTmp
  loc_A92A8A: FStStr var_88
  loc_A92A8D: FFreeAd var_A8 = ""
  loc_A92A94: FFree1Var var_CC = ""
  loc_A92A97: ExitProc
End Function

Private Function Proc_270_59_A929B0(arg_C, arg_10) 'A929B0
  'Data Table: 4C25A4
  loc_A92920: ILdRf arg_10
  loc_A92923: FStStrCopy var_8C
  loc_A92926: LitStr "SELECT ActiConc FROM concepto WHERE PeriInfo = "
  loc_A92929: FLdI2 arg_C
  loc_A9292C: CStrUI1
  loc_A9292E: FStStrNoPop var_90
  loc_A92931: ConcatStr
  loc_A92932: FStStrNoPop var_94
  loc_A92935: LitStr " AND CodiConc = '"
  loc_A92938: ConcatStr
  loc_A92939: FStStrNoPop var_98
  loc_A9293C: ILdRf var_8C
  loc_A9293F: ConcatStr
  loc_A92940: FStStrNoPop var_9C
  loc_A92943: LitStr "'"
  loc_A92946: ConcatStr
  loc_A92947: FStStrNoPop var_A0
  loc_A9294A: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A9294F: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A9295C: FLdRfVar var_A4
  loc_A9295F: FMemLdPr
  loc_A92964:  = Me.RecordCount
  loc_A92969: ILdRf var_A4
  loc_A9296C: LitI4 0
  loc_A92971: GtI4
  loc_A92972: BranchF loc_A929AF
  loc_A92975: FLdRfVar var_CC
  loc_A92978: FLdRfVar var_BC
  loc_A9297B: LitVarStr var_B8, "ActiConc"
  loc_A92980: PopAdLdVar
  loc_A92981: FLdRfVar var_A8
  loc_A92984: FMemLdPr
  loc_A92989:  = Me.Fields
  loc_A9298E: FLdPr var_A8
  loc_A92991: from_stack_2 = Me.Item(from_stack_1)
  loc_A92996: FLdPr var_BC
  loc_A92999:  = Me.Value
  loc_A9299E: FLdRfVar var_CC
  loc_A929A1: CStrVarTmp
  loc_A929A2: FStStr var_88
  loc_A929A5: FFreeAd var_A8 = ""
  loc_A929AC: FFree1Var var_CC = ""
  loc_A929AF: ExitProc
End Function

Private Function Proc_270_60_ABE49C(arg_C) 'ABE49C
  'Data Table: 4C25A4
  loc_ABE3D4: LitStr "SELECT FeveVenc FROM vencimiento WHERE PeriLiqu = "
  loc_ABE3D7: FLdI2 arg_C
  loc_ABE3DA: CStrUI1
  loc_ABE3DC: FStStrNoPop var_8C
  loc_ABE3DF: ConcatStr
  loc_ABE3E0: FStStrNoPop var_90
  loc_ABE3E3: LitStr " AND BimeLiqu = "
  loc_ABE3E6: ConcatStr
  loc_ABE3E7: FStStrNoPop var_94
  loc_ABE3EA: FLdUI1
  loc_ABE3EE: CStrI2
  loc_ABE3F0: FStStrNoPop var_98
  loc_ABE3F3: ConcatStr
  loc_ABE3F4: FStStrNoPop var_9C
  loc_ABE3F7: LitStr " AND CodiOfic = "
  loc_ABE3FA: ConcatStr
  loc_ABE3FB: FStStrNoPop var_A0
  loc_ABE3FE: FLdUI1
  loc_ABE402: CStrI2
  loc_ABE404: FStStrNoPop var_A4
  loc_ABE407: ConcatStr
  loc_ABE408: FStStrNoPop var_A8
  loc_ABE40B: LitStr " AND CodiTili = "
  loc_ABE40E: ConcatStr
  loc_ABE40F: FStStrNoPop var_AC
  loc_ABE412: FLdUI1
  loc_ABE416: CStrI2
  loc_ABE418: FStStrNoPop var_B0
  loc_ABE41B: ConcatStr
  loc_ABE41C: FStStrNoPop var_B4
  loc_ABE41F: LitStr " AND TipoVenc = 'Mensual'"
  loc_ABE422: ConcatStr
  loc_ABE423: FStStrNoPop var_B8
  loc_ABE426: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_ABE42B: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_ABE446: FLdRfVar var_BC
  loc_ABE449: FMemLdPr
  loc_ABE44E:  = Me.RecordCount
  loc_ABE453: ILdRf var_BC
  loc_ABE456: LitI4 0
  loc_ABE45B: GtI4
  loc_ABE45C: BranchF loc_ABE499
  loc_ABE45F: FLdRfVar var_E4
  loc_ABE462: FLdRfVar var_D4
  loc_ABE465: LitVarStr var_D0, "FeveVenc"
  loc_ABE46A: PopAdLdVar
  loc_ABE46B: FLdRfVar var_C0
  loc_ABE46E: FMemLdPr
  loc_ABE473:  = Me.Fields
  loc_ABE478: FLdPr var_C0
  loc_ABE47B: from_stack_2 = Me.Item(from_stack_1)
  loc_ABE480: FLdPr var_D4
  loc_ABE483:  = Me.Value
  loc_ABE488: FLdRfVar var_E4
  loc_ABE48B: CStrVarTmp
  loc_ABE48C: FStStr var_88
  loc_ABE48F: FFreeAd var_C0 = ""
  loc_ABE496: FFree1Var var_E4 = ""
  loc_ABE499: ExitProc
End Function

Private Function Proc_270_61_ABC3B4(arg_C) 'ABC3B4
  'Data Table: 4C25A4
  loc_ABC2EC: LitStr "SELECT FeveVenc FROM vencimiento WHERE PeriLiqu = "
  loc_ABC2EF: FLdI2 arg_C
  loc_ABC2F2: CStrUI1
  loc_ABC2F4: FStStrNoPop var_8C
  loc_ABC2F7: ConcatStr
  loc_ABC2F8: FStStrNoPop var_90
  loc_ABC2FB: LitStr " AND BimeLiqu = "
  loc_ABC2FE: ConcatStr
  loc_ABC2FF: FStStrNoPop var_94
  loc_ABC302: FLdUI1
  loc_ABC306: CStrI2
  loc_ABC308: FStStrNoPop var_98
  loc_ABC30B: ConcatStr
  loc_ABC30C: FStStrNoPop var_9C
  loc_ABC30F: LitStr " AND CodiOfic = "
  loc_ABC312: ConcatStr
  loc_ABC313: FStStrNoPop var_A0
  loc_ABC316: FLdUI1
  loc_ABC31A: CStrI2
  loc_ABC31C: FStStrNoPop var_A4
  loc_ABC31F: ConcatStr
  loc_ABC320: FStStrNoPop var_A8
  loc_ABC323: LitStr " AND CodiTili = "
  loc_ABC326: ConcatStr
  loc_ABC327: FStStrNoPop var_AC
  loc_ABC32A: FLdUI1
  loc_ABC32E: CStrI2
  loc_ABC330: FStStrNoPop var_B0
  loc_ABC333: ConcatStr
  loc_ABC334: FStStrNoPop var_B4
  loc_ABC337: LitStr " AND TipoVenc = 'Bimestral'"
  loc_ABC33A: ConcatStr
  loc_ABC33B: FStStrNoPop var_B8
  loc_ABC33E: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_ABC343: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_ABC35E: FLdRfVar var_BC
  loc_ABC361: FMemLdPr
  loc_ABC366:  = Me.RecordCount
  loc_ABC36B: ILdRf var_BC
  loc_ABC36E: LitI4 0
  loc_ABC373: GtI4
  loc_ABC374: BranchF loc_ABC3B1
  loc_ABC377: FLdRfVar var_E4
  loc_ABC37A: FLdRfVar var_D4
  loc_ABC37D: LitVarStr var_D0, "FeveVenc"
  loc_ABC382: PopAdLdVar
  loc_ABC383: FLdRfVar var_C0
  loc_ABC386: FMemLdPr
  loc_ABC38B:  = Me.Fields
  loc_ABC390: FLdPr var_C0
  loc_ABC393: from_stack_2 = Me.Item(from_stack_1)
  loc_ABC398: FLdPr var_D4
  loc_ABC39B:  = Me.Value
  loc_ABC3A0: FLdRfVar var_E4
  loc_ABC3A3: CStrVarTmp
  loc_ABC3A4: FStStr var_88
  loc_ABC3A7: FFreeAd var_C0 = ""
  loc_ABC3AE: FFree1Var var_E4 = ""
  loc_ABC3B1: ExitProc
End Function

Private Function Proc_270_62_ABCC3C(arg_C) 'ABCC3C
  'Data Table: 4C25A4
  loc_ABCB74: LitStr "SELECT FeveVenc FROM vencimiento WHERE PeriLiqu = "
  loc_ABCB77: FLdI2 arg_C
  loc_ABCB7A: CStrUI1
  loc_ABCB7C: FStStrNoPop var_8C
  loc_ABCB7F: ConcatStr
  loc_ABCB80: FStStrNoPop var_90
  loc_ABCB83: LitStr " AND BimeLiqu = "
  loc_ABCB86: ConcatStr
  loc_ABCB87: FStStrNoPop var_94
  loc_ABCB8A: FLdUI1
  loc_ABCB8E: CStrI2
  loc_ABCB90: FStStrNoPop var_98
  loc_ABCB93: ConcatStr
  loc_ABCB94: FStStrNoPop var_9C
  loc_ABCB97: LitStr " AND CodiOfic = "
  loc_ABCB9A: ConcatStr
  loc_ABCB9B: FStStrNoPop var_A0
  loc_ABCB9E: FLdUI1
  loc_ABCBA2: CStrI2
  loc_ABCBA4: FStStrNoPop var_A4
  loc_ABCBA7: ConcatStr
  loc_ABCBA8: FStStrNoPop var_A8
  loc_ABCBAB: LitStr " AND CodiTili = "
  loc_ABCBAE: ConcatStr
  loc_ABCBAF: FStStrNoPop var_AC
  loc_ABCBB2: FLdUI1
  loc_ABCBB6: CStrI2
  loc_ABCBB8: FStStrNoPop var_B0
  loc_ABCBBB: ConcatStr
  loc_ABCBBC: FStStrNoPop var_B4
  loc_ABCBBF: LitStr " AND TipoVenc = 'Anual'"
  loc_ABCBC2: ConcatStr
  loc_ABCBC3: FStStrNoPop var_B8
  loc_ABCBC6: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_ABCBCB: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_ABCBE6: FLdRfVar var_BC
  loc_ABCBE9: FMemLdPr
  loc_ABCBEE:  = Me.RecordCount
  loc_ABCBF3: ILdRf var_BC
  loc_ABCBF6: LitI4 0
  loc_ABCBFB: GtI4
  loc_ABCBFC: BranchF loc_ABCC39
  loc_ABCBFF: FLdRfVar var_E4
  loc_ABCC02: FLdRfVar var_D4
  loc_ABCC05: LitVarStr var_D0, "FeveVenc"
  loc_ABCC0A: PopAdLdVar
  loc_ABCC0B: FLdRfVar var_C0
  loc_ABCC0E: FMemLdPr
  loc_ABCC13:  = Me.Fields
  loc_ABCC18: FLdPr var_C0
  loc_ABCC1B: from_stack_2 = Me.Item(from_stack_1)
  loc_ABCC20: FLdPr var_D4
  loc_ABCC23:  = Me.Value
  loc_ABCC28: FLdRfVar var_E4
  loc_ABCC2B: CStrVarTmp
  loc_ABCC2C: FStStr var_88
  loc_ABCC2F: FFreeAd var_C0 = ""
  loc_ABCC36: FFree1Var var_E4 = ""
  loc_ABCC39: ExitProc
End Function

Private Function Proc_270_63_ABD38C(arg_C) 'ABD38C
  'Data Table: 4C25A4
  loc_ABD2C4: LitStr "SELECT FeveVenc FROM vencimiento WHERE PeriLiqu = "
  loc_ABD2C7: FLdI2 arg_C
  loc_ABD2CA: CStrUI1
  loc_ABD2CC: FStStrNoPop var_8C
  loc_ABD2CF: ConcatStr
  loc_ABD2D0: FStStrNoPop var_90
  loc_ABD2D3: LitStr " AND BimeLiqu = "
  loc_ABD2D6: ConcatStr
  loc_ABD2D7: FStStrNoPop var_94
  loc_ABD2DA: FLdUI1
  loc_ABD2DE: CStrI2
  loc_ABD2E0: FStStrNoPop var_98
  loc_ABD2E3: ConcatStr
  loc_ABD2E4: FStStrNoPop var_9C
  loc_ABD2E7: LitStr " AND CodiOfic = "
  loc_ABD2EA: ConcatStr
  loc_ABD2EB: FStStrNoPop var_A0
  loc_ABD2EE: FLdUI1
  loc_ABD2F2: CStrI2
  loc_ABD2F4: FStStrNoPop var_A4
  loc_ABD2F7: ConcatStr
  loc_ABD2F8: FStStrNoPop var_A8
  loc_ABD2FB: LitStr " AND CodiTili = "
  loc_ABD2FE: ConcatStr
  loc_ABD2FF: FStStrNoPop var_AC
  loc_ABD302: FLdUI1
  loc_ABD306: CStrI2
  loc_ABD308: FStStrNoPop var_B0
  loc_ABD30B: ConcatStr
  loc_ABD30C: FStStrNoPop var_B4
  loc_ABD30F: LitStr " AND TipoVenc = 'Semestral'"
  loc_ABD312: ConcatStr
  loc_ABD313: FStStrNoPop var_B8
  loc_ABD316: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_ABD31B: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_ABD336: FLdRfVar var_BC
  loc_ABD339: FMemLdPr
  loc_ABD33E:  = Me.RecordCount
  loc_ABD343: ILdRf var_BC
  loc_ABD346: LitI4 0
  loc_ABD34B: GtI4
  loc_ABD34C: BranchF loc_ABD389
  loc_ABD34F: FLdRfVar var_E4
  loc_ABD352: FLdRfVar var_D4
  loc_ABD355: LitVarStr var_D0, "FeveVenc"
  loc_ABD35A: PopAdLdVar
  loc_ABD35B: FLdRfVar var_C0
  loc_ABD35E: FMemLdPr
  loc_ABD363:  = Me.Fields
  loc_ABD368: FLdPr var_C0
  loc_ABD36B: from_stack_2 = Me.Item(from_stack_1)
  loc_ABD370: FLdPr var_D4
  loc_ABD373:  = Me.Value
  loc_ABD378: FLdRfVar var_E4
  loc_ABD37B: CStrVarTmp
  loc_ABD37C: FStStr var_88
  loc_ABD37F: FFreeAd var_C0 = ""
  loc_ABD386: FFree1Var var_E4 = ""
  loc_ABD389: ExitProc
End Function

Private Function Proc_270_64_ABD254(arg_C) 'ABD254
  'Data Table: 4C25A4
  loc_ABD18C: LitStr "SELECT FeveVenc FROM vencimiento WHERE PeriLiqu = "
  loc_ABD18F: FLdI2 arg_C
  loc_ABD192: CStrUI1
  loc_ABD194: FStStrNoPop var_8C
  loc_ABD197: ConcatStr
  loc_ABD198: FStStrNoPop var_90
  loc_ABD19B: LitStr " AND BimeLiqu = "
  loc_ABD19E: ConcatStr
  loc_ABD19F: FStStrNoPop var_94
  loc_ABD1A2: FLdUI1
  loc_ABD1A6: CStrI2
  loc_ABD1A8: FStStrNoPop var_98
  loc_ABD1AB: ConcatStr
  loc_ABD1AC: FStStrNoPop var_9C
  loc_ABD1AF: LitStr " AND CodiOfic = "
  loc_ABD1B2: ConcatStr
  loc_ABD1B3: FStStrNoPop var_A0
  loc_ABD1B6: FLdUI1
  loc_ABD1BA: CStrI2
  loc_ABD1BC: FStStrNoPop var_A4
  loc_ABD1BF: ConcatStr
  loc_ABD1C0: FStStrNoPop var_A8
  loc_ABD1C3: LitStr " AND CodiTili = "
  loc_ABD1C6: ConcatStr
  loc_ABD1C7: FStStrNoPop var_AC
  loc_ABD1CA: FLdUI1
  loc_ABD1CE: CStrI2
  loc_ABD1D0: FStStrNoPop var_B0
  loc_ABD1D3: ConcatStr
  loc_ABD1D4: FStStrNoPop var_B4
  loc_ABD1D7: LitStr " AND TipoVenc = 'Semestral'"
  loc_ABD1DA: ConcatStr
  loc_ABD1DB: FStStrNoPop var_B8
  loc_ABD1DE: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_ABD1E3: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_ABD1FE: FLdRfVar var_BC
  loc_ABD201: FMemLdPr
  loc_ABD206:  = Me.RecordCount
  loc_ABD20B: ILdRf var_BC
  loc_ABD20E: LitI4 0
  loc_ABD213: GtI4
  loc_ABD214: BranchF loc_ABD251
  loc_ABD217: FLdRfVar var_E4
  loc_ABD21A: FLdRfVar var_D4
  loc_ABD21D: LitVarStr var_D0, "FeveVenc"
  loc_ABD222: PopAdLdVar
  loc_ABD223: FLdRfVar var_C0
  loc_ABD226: FMemLdPr
  loc_ABD22B:  = Me.Fields
  loc_ABD230: FLdPr var_C0
  loc_ABD233: from_stack_2 = Me.Item(from_stack_1)
  loc_ABD238: FLdPr var_D4
  loc_ABD23B:  = Me.Value
  loc_ABD240: FLdRfVar var_E4
  loc_ABD243: CStrVarTmp
  loc_ABD244: FStStr var_88
  loc_ABD247: FFreeAd var_C0 = ""
  loc_ABD24E: FFree1Var var_E4 = ""
  loc_ABD251: ExitProc
End Function

Private Function Proc_270_65_B4B338(arg_10) 'B4B338
  'Data Table: 4C25A4
  loc_B4AFF4: LitStr "SELECT infogov.calle.DetaCall, infogov.calle.CodiBarr, infogov.barrio.DetaBarr, infogov.calle.CodiLoca, infogov.localidad.DetaLoca, infogov.localidad.CodiPost FROM infogov.calle "
  loc_B4AFF7: LitStr " LEFT JOIN infogov.barrio ON infogov.calle.CodiBarr = infogov.barrio.CodiBarr "
  loc_B4AFFA: ConcatStr
  loc_B4AFFB: FStStrNoPop var_B4
  loc_B4AFFE: LitStr " LEFT JOIN infogov.localidad ON infogov.calle.CodiLoca = infogov.localidad.CodiLoca "
  loc_B4B001: ConcatStr
  loc_B4B002: FStStrNoPop var_B8
  loc_B4B005: LitStr " WHERE infogov.calle.CodiCall = "
  loc_B4B008: ConcatStr
  loc_B4B009: FStStrNoPop var_BC
  loc_B4B00C: ILdRf arg_10
  loc_B4B00F: CStrI4
  loc_B4B011: FStStrNoPop var_C0
  loc_B4B014: ConcatStr
  loc_B4B015: FStStrNoPop var_C4
  loc_B4B018: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B4B01D: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B4B02A: FLdRfVar var_C8
  loc_B4B02D: FMemLdPr
  loc_B4B032:  = Me.RecordCount
  loc_B4B037: ILdRf var_C8
  loc_B4B03A: LitI4 1
  loc_B4B03F: EqI4
  loc_B4B040: BranchF loc_B4B2DD
  loc_B4B043: FLdRfVar var_F0
  loc_B4B046: FLdRfVar var_E0
  loc_B4B049: LitVarStr var_DC, "DetaCall"
  loc_B4B04E: PopAdLdVar
  loc_B4B04F: FLdRfVar var_CC
  loc_B4B052: FMemLdPr
  loc_B4B057:  = Me.Fields
  loc_B4B05C: FLdPr var_CC
  loc_B4B05F: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B064: FLdPr var_E0
  loc_B4B067:  = Me.Value
  loc_B4B06C: FLdRfVar var_F0
  loc_B4B06F: CStrVarTmp
  loc_B4B070: FStStrNoPop var_B4
  loc_B4B073: LitI4 1
  loc_B4B078: FLdRfVar var_AC
  loc_B4B07B: Ary1StStrCopy
  loc_B4B07C: FFree1Str var_B4
  loc_B4B07F: FFreeAd var_CC = ""
  loc_B4B086: FFree1Var var_F0 = ""
  loc_B4B089: FLdRfVar var_F0
  loc_B4B08C: FLdRfVar var_E0
  loc_B4B08F: LitVarStr var_DC, "CodiBarr"
  loc_B4B094: PopAdLdVar
  loc_B4B095: FLdRfVar var_CC
  loc_B4B098: FMemLdPr
  loc_B4B09D:  = Me.Fields
  loc_B4B0A2: FLdPr var_CC
  loc_B4B0A5: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B0AA: FLdPr var_E0
  loc_B4B0AD:  = Me.Value
  loc_B4B0B2: FLdRfVar var_F0
  loc_B4B0B5: CStrVarTmp
  loc_B4B0B6: FStStrNoPop var_B4
  loc_B4B0B9: LitI4 2
  loc_B4B0BE: FLdRfVar var_AC
  loc_B4B0C1: Ary1StStrCopy
  loc_B4B0C2: FFree1Str var_B4
  loc_B4B0C5: FFreeAd var_CC = ""
  loc_B4B0CC: FFree1Var var_F0 = ""
  loc_B4B0CF: FLdRfVar var_E0
  loc_B4B0D2: LitVarStr var_DC, "DetaBarr"
  loc_B4B0D7: PopAdLdVar
  loc_B4B0D8: FLdRfVar var_CC
  loc_B4B0DB: FMemLdPr
  loc_B4B0E0:  = Me.Fields
  loc_B4B0E5: FLdPr var_CC
  loc_B4B0E8: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B0ED: FLdZeroAd var_E0
  loc_B4B0F0: CVarAd
  loc_B4B0F4: ImpAdCallI2 IsNull()
  loc_B4B0F9: FStI2 var_15A
  loc_B4B0FC: FLdRfVar var_108
  loc_B4B0FF: LitVarStr var_104, "DetaBarr"
  loc_B4B104: PopAdLdVar
  loc_B4B105: FLdRfVar var_F4
  loc_B4B108: FMemLdPr
  loc_B4B10D:  = Me.Fields
  loc_B4B112: FLdPr var_F4
  loc_B4B115: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B11A: FLdZeroAd var_108
  loc_B4B11D: CVarAd
  loc_B4B121: LitVarStr var_128, vbNullString
  loc_B4B126: FStVarCopyObj var_138
  loc_B4B129: FLdRfVar var_138
  loc_B4B12C: FLdI2 var_15A
  loc_B4B12F: CVarBoolI2 var_118
  loc_B4B133: FLdRfVar var_158
  loc_B4B136: ImpAdCallFPR4  = IIf(, , )
  loc_B4B13B: FLdRfVar var_158
  loc_B4B13E: CStrVarTmp
  loc_B4B13F: FStStrNoPop var_B4
  loc_B4B142: LitI4 3
  loc_B4B147: FLdRfVar var_AC
  loc_B4B14A: Ary1StStrCopy
  loc_B4B14B: FFree1Str var_B4
  loc_B4B14E: FFreeAd var_CC = ""
  loc_B4B155: FFreeVar var_F0 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_B4B162: FLdRfVar var_F0
  loc_B4B165: FLdRfVar var_E0
  loc_B4B168: LitVarStr var_DC, "CodiLoca"
  loc_B4B16D: PopAdLdVar
  loc_B4B16E: FLdRfVar var_CC
  loc_B4B171: FMemLdPr
  loc_B4B176:  = Me.Fields
  loc_B4B17B: FLdPr var_CC
  loc_B4B17E: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B183: FLdPr var_E0
  loc_B4B186:  = Me.Value
  loc_B4B18B: FLdRfVar var_F0
  loc_B4B18E: CStrVarTmp
  loc_B4B18F: FStStrNoPop var_B4
  loc_B4B192: LitI4 4
  loc_B4B197: FLdRfVar var_AC
  loc_B4B19A: Ary1StStrCopy
  loc_B4B19B: FFree1Str var_B4
  loc_B4B19E: FFreeAd var_CC = ""
  loc_B4B1A5: FFree1Var var_F0 = ""
  loc_B4B1A8: FLdRfVar var_E0
  loc_B4B1AB: LitVarStr var_DC, "DetaLoca"
  loc_B4B1B0: PopAdLdVar
  loc_B4B1B1: FLdRfVar var_CC
  loc_B4B1B4: FMemLdPr
  loc_B4B1B9:  = Me.Fields
  loc_B4B1BE: FLdPr var_CC
  loc_B4B1C1: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B1C6: FLdZeroAd var_E0
  loc_B4B1C9: CVarAd
  loc_B4B1CD: ImpAdCallI2 IsNull()
  loc_B4B1D2: FStI2 var_15A
  loc_B4B1D5: FLdRfVar var_108
  loc_B4B1D8: LitVarStr var_104, "DetaLoca"
  loc_B4B1DD: PopAdLdVar
  loc_B4B1DE: FLdRfVar var_F4
  loc_B4B1E1: FMemLdPr
  loc_B4B1E6:  = Me.Fields
  loc_B4B1EB: FLdPr var_F4
  loc_B4B1EE: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B1F3: FLdZeroAd var_108
  loc_B4B1F6: CVarAd
  loc_B4B1FA: LitVarStr var_128, vbNullString
  loc_B4B1FF: FStVarCopyObj var_138
  loc_B4B202: FLdRfVar var_138
  loc_B4B205: FLdI2 var_15A
  loc_B4B208: CVarBoolI2 var_118
  loc_B4B20C: FLdRfVar var_158
  loc_B4B20F: ImpAdCallFPR4  = IIf(, , )
  loc_B4B214: FLdRfVar var_158
  loc_B4B217: CStrVarTmp
  loc_B4B218: FStStrNoPop var_B4
  loc_B4B21B: LitI4 5
  loc_B4B220: FLdRfVar var_AC
  loc_B4B223: Ary1StStrCopy
  loc_B4B224: FFree1Str var_B4
  loc_B4B227: FFreeAd var_CC = ""
  loc_B4B22E: FFreeVar var_F0 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_B4B23B: FLdRfVar var_E0
  loc_B4B23E: LitVarStr var_DC, "CodiPost"
  loc_B4B243: PopAdLdVar
  loc_B4B244: FLdRfVar var_CC
  loc_B4B247: FMemLdPr
  loc_B4B24C:  = Me.Fields
  loc_B4B251: FLdPr var_CC
  loc_B4B254: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B259: FLdZeroAd var_E0
  loc_B4B25C: CVarAd
  loc_B4B260: ImpAdCallI2 IsNull()
  loc_B4B265: FStI2 var_15A
  loc_B4B268: FLdRfVar var_108
  loc_B4B26B: LitVarStr var_104, "CodiPost"
  loc_B4B270: PopAdLdVar
  loc_B4B271: FLdRfVar var_F4
  loc_B4B274: FMemLdPr
  loc_B4B279:  = Me.Fields
  loc_B4B27E: FLdPr var_F4
  loc_B4B281: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B286: FLdZeroAd var_108
  loc_B4B289: CVarAd
  loc_B4B28D: LitVarStr var_128, vbNullString
  loc_B4B292: FStVarCopyObj var_138
  loc_B4B295: FLdRfVar var_138
  loc_B4B298: FLdI2 var_15A
  loc_B4B29B: CVarBoolI2 var_118
  loc_B4B29F: FLdRfVar var_158
  loc_B4B2A2: ImpAdCallFPR4  = IIf(, , )
  loc_B4B2A7: FLdRfVar var_158
  loc_B4B2AA: CStrVarTmp
  loc_B4B2AB: FStStrNoPop var_B4
  loc_B4B2AE: LitI4 6
  loc_B4B2B3: FLdRfVar var_AC
  loc_B4B2B6: Ary1StStrCopy
  loc_B4B2B7: FFree1Str var_B4
  loc_B4B2BA: FFreeAd var_CC = ""
  loc_B4B2C1: FFreeVar var_F0 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_B4B2CE: FLdRfVar var_AC
  loc_B4B2D1: CVarRef
  loc_B4B2D6: FStVarCopy
  loc_B4B2DA: Branch loc_B4B331
  loc_B4B2DD: LitStr vbNullString
  loc_B4B2E0: LitI4 1
  loc_B4B2E5: FLdRfVar var_AC
  loc_B4B2E8: Ary1StStrCopy
  loc_B4B2E9: LitStr "0"
  loc_B4B2EC: LitI4 2
  loc_B4B2F1: FLdRfVar var_AC
  loc_B4B2F4: Ary1StStrCopy
  loc_B4B2F5: LitStr vbNullString
  loc_B4B2F8: LitI4 3
  loc_B4B2FD: FLdRfVar var_AC
  loc_B4B300: Ary1StStrCopy
  loc_B4B301: LitStr "0"
  loc_B4B304: LitI4 4
  loc_B4B309: FLdRfVar var_AC
  loc_B4B30C: Ary1StStrCopy
  loc_B4B30D: LitStr vbNullString
  loc_B4B310: LitI4 5
  loc_B4B315: FLdRfVar var_AC
  loc_B4B318: Ary1StStrCopy
  loc_B4B319: LitStr "0"
  loc_B4B31C: LitI4 6
  loc_B4B321: FLdRfVar var_AC
  loc_B4B324: Ary1StStrCopy
  loc_B4B325: FLdRfVar var_AC
  loc_B4B328: CVarRef
  loc_B4B32D: FStVarCopy
  loc_B4B331: ExitProcCb
End Function

Private Function Proc_270_66_B1D9B8(arg_10) 'B1D9B8
  'Data Table: 4C25A4
  loc_B1D770: LitStr "SELECT infogov.barrio.DetaBarr, infogov.barrio.CodiBarr, infogov.barrio.DetaBarr, infogov.barrio.CodiLoca, infogov.localidad.DetaLoca, infogov.localidad.CodiPost FROM infogov.barrio "
  loc_B1D773: LitStr " LEFT JOIN infogov.localidad ON infogov.barrio.CodiLoca = infogov.localidad.CodiLoca "
  loc_B1D776: ConcatStr
  loc_B1D777: FStStrNoPop var_B4
  loc_B1D77A: LitStr " WHERE infogov.barrio.CodiBarr = "
  loc_B1D77D: ConcatStr
  loc_B1D77E: FStStrNoPop var_B8
  loc_B1D781: ILdRf arg_10
  loc_B1D784: CStrI4
  loc_B1D786: FStStrNoPop var_BC
  loc_B1D789: ConcatStr
  loc_B1D78A: FStStrNoPop var_C0
  loc_B1D78D: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B1D792: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_B1D79D: FLdRfVar var_C4
  loc_B1D7A0: FMemLdPr
  loc_B1D7A5:  = Me.RecordCount
  loc_B1D7AA: ILdRf var_C4
  loc_B1D7AD: LitI4 1
  loc_B1D7B2: EqI4
  loc_B1D7B3: BranchF loc_B1D977
  loc_B1D7B6: FLdRfVar var_EC
  loc_B1D7B9: FLdRfVar var_DC
  loc_B1D7BC: LitVarStr var_D8, "DetaBarr"
  loc_B1D7C1: PopAdLdVar
  loc_B1D7C2: FLdRfVar var_C8
  loc_B1D7C5: FMemLdPr
  loc_B1D7CA:  = Me.Fields
  loc_B1D7CF: FLdPr var_C8
  loc_B1D7D2: from_stack_2 = Me.Item(from_stack_1)
  loc_B1D7D7: FLdPr var_DC
  loc_B1D7DA:  = Me.Value
  loc_B1D7DF: FLdRfVar var_EC
  loc_B1D7E2: CStrVarTmp
  loc_B1D7E3: FStStrNoPop var_B4
  loc_B1D7E6: LitI4 1
  loc_B1D7EB: FLdRfVar var_AC
  loc_B1D7EE: Ary1StStrCopy
  loc_B1D7EF: FFree1Str var_B4
  loc_B1D7F2: FFreeAd var_C8 = ""
  loc_B1D7F9: FFree1Var var_EC = ""
  loc_B1D7FC: FLdRfVar var_EC
  loc_B1D7FF: FLdRfVar var_DC
  loc_B1D802: LitVarStr var_D8, "CodiLoca"
  loc_B1D807: PopAdLdVar
  loc_B1D808: FLdRfVar var_C8
  loc_B1D80B: FMemLdPr
  loc_B1D810:  = Me.Fields
  loc_B1D815: FLdPr var_C8
  loc_B1D818: from_stack_2 = Me.Item(from_stack_1)
  loc_B1D81D: FLdPr var_DC
  loc_B1D820:  = Me.Value
  loc_B1D825: FLdRfVar var_EC
  loc_B1D828: CStrVarTmp
  loc_B1D829: FStStrNoPop var_B4
  loc_B1D82C: LitI4 2
  loc_B1D831: FLdRfVar var_AC
  loc_B1D834: Ary1StStrCopy
  loc_B1D835: FFree1Str var_B4
  loc_B1D838: FFreeAd var_C8 = ""
  loc_B1D83F: FFree1Var var_EC = ""
  loc_B1D842: FLdRfVar var_DC
  loc_B1D845: LitVarStr var_D8, "DetaLoca"
  loc_B1D84A: PopAdLdVar
  loc_B1D84B: FLdRfVar var_C8
  loc_B1D84E: FMemLdPr
  loc_B1D853:  = Me.Fields
  loc_B1D858: FLdPr var_C8
  loc_B1D85B: from_stack_2 = Me.Item(from_stack_1)
  loc_B1D860: FLdZeroAd var_DC
  loc_B1D863: CVarAd
  loc_B1D867: ImpAdCallI2 IsNull()
  loc_B1D86C: FStI2 var_156
  loc_B1D86F: FLdRfVar var_104
  loc_B1D872: LitVarStr var_100, "DetaLoca"
  loc_B1D877: PopAdLdVar
  loc_B1D878: FLdRfVar var_F0
  loc_B1D87B: FMemLdPr
  loc_B1D880:  = Me.Fields
  loc_B1D885: FLdPr var_F0
  loc_B1D888: from_stack_2 = Me.Item(from_stack_1)
  loc_B1D88D: FLdZeroAd var_104
  loc_B1D890: CVarAd
  loc_B1D894: LitVarStr var_124, vbNullString
  loc_B1D899: FStVarCopyObj var_134
  loc_B1D89C: FLdRfVar var_134
  loc_B1D89F: FLdI2 var_156
  loc_B1D8A2: CVarBoolI2 var_114
  loc_B1D8A6: FLdRfVar var_154
  loc_B1D8A9: ImpAdCallFPR4  = IIf(, , )
  loc_B1D8AE: FLdRfVar var_154
  loc_B1D8B1: CStrVarTmp
  loc_B1D8B2: FStStrNoPop var_B4
  loc_B1D8B5: LitI4 3
  loc_B1D8BA: FLdRfVar var_AC
  loc_B1D8BD: Ary1StStrCopy
  loc_B1D8BE: FFree1Str var_B4
  loc_B1D8C1: FFreeAd var_C8 = ""
  loc_B1D8C8: FFreeVar var_EC = "": var_114 = "": var_134 = "": var_144 = ""
  loc_B1D8D5: FLdRfVar var_DC
  loc_B1D8D8: LitVarStr var_D8, "CodiPost"
  loc_B1D8DD: PopAdLdVar
  loc_B1D8DE: FLdRfVar var_C8
  loc_B1D8E1: FMemLdPr
  loc_B1D8E6:  = Me.Fields
  loc_B1D8EB: FLdPr var_C8
  loc_B1D8EE: from_stack_2 = Me.Item(from_stack_1)
  loc_B1D8F3: FLdZeroAd var_DC
  loc_B1D8F6: CVarAd
  loc_B1D8FA: ImpAdCallI2 IsNull()
  loc_B1D8FF: FStI2 var_156
  loc_B1D902: FLdRfVar var_104
  loc_B1D905: LitVarStr var_100, "CodiPost"
  loc_B1D90A: PopAdLdVar
  loc_B1D90B: FLdRfVar var_F0
  loc_B1D90E: FMemLdPr
  loc_B1D913:  = Me.Fields
  loc_B1D918: FLdPr var_F0
  loc_B1D91B: from_stack_2 = Me.Item(from_stack_1)
  loc_B1D920: FLdZeroAd var_104
  loc_B1D923: CVarAd
  loc_B1D927: LitVarStr var_124, vbNullString
  loc_B1D92C: FStVarCopyObj var_134
  loc_B1D92F: FLdRfVar var_134
  loc_B1D932: FLdI2 var_156
  loc_B1D935: CVarBoolI2 var_114
  loc_B1D939: FLdRfVar var_154
  loc_B1D93C: ImpAdCallFPR4  = IIf(, , )
  loc_B1D941: FLdRfVar var_154
  loc_B1D944: CStrVarTmp
  loc_B1D945: FStStrNoPop var_B4
  loc_B1D948: LitI4 4
  loc_B1D94D: FLdRfVar var_AC
  loc_B1D950: Ary1StStrCopy
  loc_B1D951: FFree1Str var_B4
  loc_B1D954: FFreeAd var_C8 = ""
  loc_B1D95B: FFreeVar var_EC = "": var_114 = "": var_134 = "": var_144 = ""
  loc_B1D968: FLdRfVar var_AC
  loc_B1D96B: CVarRef
  loc_B1D970: FStVarCopy
  loc_B1D974: Branch loc_B1D9B3
  loc_B1D977: LitStr vbNullString
  loc_B1D97A: LitI4 1
  loc_B1D97F: FLdRfVar var_AC
  loc_B1D982: Ary1StStrCopy
  loc_B1D983: LitStr "0"
  loc_B1D986: LitI4 2
  loc_B1D98B: FLdRfVar var_AC
  loc_B1D98E: Ary1StStrCopy
  loc_B1D98F: LitStr vbNullString
  loc_B1D992: LitI4 3
  loc_B1D997: FLdRfVar var_AC
  loc_B1D99A: Ary1StStrCopy
  loc_B1D99B: LitStr "0"
  loc_B1D99E: LitI4 4
  loc_B1D9A3: FLdRfVar var_AC
  loc_B1D9A6: Ary1StStrCopy
  loc_B1D9A7: FLdRfVar var_AC
  loc_B1D9AA: CVarRef
  loc_B1D9AF: FStVarCopy
  loc_B1D9B3: ExitProcCb
End Function

Private Function Proc_270_67_AD14C8(arg_10) 'AD14C8
  'Data Table: 4C25A4
  loc_AD13D0: LitStr "SELECT * FROM infogov.localidad WHERE CodiLoca = "
  loc_AD13D3: FLdI2 arg_10
  loc_AD13D6: CStrUI1
  loc_AD13D8: FStStrNoPop var_B4
  loc_AD13DB: ConcatStr
  loc_AD13DC: FStStrNoPop var_B8
  loc_AD13DF: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AD13E4: FFreeStr var_B4 = ""
  loc_AD13EB: FLdRfVar var_BC
  loc_AD13EE: FMemLdPr
  loc_AD13F3:  = Me.RecordCount
  loc_AD13F8: ILdRf var_BC
  loc_AD13FB: LitI4 1
  loc_AD1400: EqI4
  loc_AD1401: BranchF loc_AD149F
  loc_AD1404: FLdRfVar var_E4
  loc_AD1407: FLdRfVar var_D4
  loc_AD140A: LitVarStr var_D0, "DetaLoca"
  loc_AD140F: PopAdLdVar
  loc_AD1410: FLdRfVar var_C0
  loc_AD1413: FMemLdPr
  loc_AD1418:  = Me.Fields
  loc_AD141D: FLdPr var_C0
  loc_AD1420: from_stack_2 = Me.Item(from_stack_1)
  loc_AD1425: FLdPr var_D4
  loc_AD1428:  = Me.Value
  loc_AD142D: FLdRfVar var_E4
  loc_AD1430: CStrVarTmp
  loc_AD1431: FStStrNoPop var_B4
  loc_AD1434: LitI4 1
  loc_AD1439: FLdRfVar var_AC
  loc_AD143C: Ary1StStrCopy
  loc_AD143D: FFree1Str var_B4
  loc_AD1440: FFreeAd var_C0 = ""
  loc_AD1447: FFree1Var var_E4 = ""
  loc_AD144A: FLdRfVar var_E4
  loc_AD144D: FLdRfVar var_D4
  loc_AD1450: LitVarStr var_D0, "CodiPost"
  loc_AD1455: PopAdLdVar
  loc_AD1456: FLdRfVar var_C0
  loc_AD1459: FMemLdPr
  loc_AD145E:  = Me.Fields
  loc_AD1463: FLdPr var_C0
  loc_AD1466: from_stack_2 = Me.Item(from_stack_1)
  loc_AD146B: FLdPr var_D4
  loc_AD146E:  = Me.Value
  loc_AD1473: FLdRfVar var_E4
  loc_AD1476: CStrVarTmp
  loc_AD1477: FStStrNoPop var_B4
  loc_AD147A: LitI4 2
  loc_AD147F: FLdRfVar var_AC
  loc_AD1482: Ary1StStrCopy
  loc_AD1483: FFree1Str var_B4
  loc_AD1486: FFreeAd var_C0 = ""
  loc_AD148D: FFree1Var var_E4 = ""
  loc_AD1490: FLdRfVar var_AC
  loc_AD1493: CVarRef
  loc_AD1498: FStVarCopy
  loc_AD149C: Branch loc_AD14C3
  loc_AD149F: LitStr vbNullString
  loc_AD14A2: LitI4 1
  loc_AD14A7: FLdRfVar var_AC
  loc_AD14AA: Ary1StStrCopy
  loc_AD14AB: LitStr vbNullString
  loc_AD14AE: LitI4 2
  loc_AD14B3: FLdRfVar var_AC
  loc_AD14B6: Ary1StStrCopy
  loc_AD14B7: FLdRfVar var_AC
  loc_AD14BA: CVarRef
  loc_AD14BF: FStVarCopy
  loc_AD14C3: ExitProcCb
End Function

Private Function Proc_270_68_B4E1F8(arg_10) 'B4E1F8
  'Data Table: 4C25A4
  loc_B4DE94: LitStr "SELECT inmueble.CodiCall, NucaInmu, UbicInmu, inmueble.CodiBarr, MansInmu, CasaInmu, inmueble.CodiLoca,"
  loc_B4DE97: LitStr " IFNULL(DetaCall,'') DetaCall, IFNULL(DetaLoca,'') DetaLoca"
  loc_B4DE9A: ConcatStr
  loc_B4DE9B: FStStrNoPop var_B4
  loc_B4DE9E: LitStr " FROM inmueble "
  loc_B4DEA1: ConcatStr
  loc_B4DEA2: FStStrNoPop var_B8
  loc_B4DEA5: LitStr " LEFT JOIN infogov.calle ON calle.CodiCall = inmueble.CodiCall"
  loc_B4DEA8: ConcatStr
  loc_B4DEA9: FStStrNoPop var_BC
  loc_B4DEAC: LitStr " LEFT JOIN infogov.localidad ON localidad.CodiLoca = inmueble.CodiLoca"
  loc_B4DEAF: ConcatStr
  loc_B4DEB0: FStStrNoPop var_C0
  loc_B4DEB3: LitStr "  WHERE CodiInmu = "
  loc_B4DEB6: ConcatStr
  loc_B4DEB7: FStStrNoPop var_C4
  loc_B4DEBA: ILdRf arg_10
  loc_B4DEBD: CStrI4
  loc_B4DEBF: FStStrNoPop var_C8
  loc_B4DEC2: ConcatStr
  loc_B4DEC3: FStStrNoPop var_CC
  loc_B4DEC6: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B4DECB: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B4DEDC: FLdRfVar var_D0
  loc_B4DEDF: FMemLdPr
  loc_B4DEE4:  = Me.RecordCount
  loc_B4DEE9: ILdRf var_D0
  loc_B4DEEC: LitI4 1
  loc_B4DEF1: EqI4
  loc_B4DEF2: BranchF loc_B4E17A
  loc_B4DEF5: FLdRfVar var_F8
  loc_B4DEF8: FLdRfVar var_E8
  loc_B4DEFB: LitVarStr var_E4, "CodiCall"
  loc_B4DF00: PopAdLdVar
  loc_B4DF01: FLdRfVar var_D4
  loc_B4DF04: FMemLdPr
  loc_B4DF09:  = Me.Fields
  loc_B4DF0E: FLdPr var_D4
  loc_B4DF11: from_stack_2 = Me.Item(from_stack_1)
  loc_B4DF16: FLdPr var_E8
  loc_B4DF19:  = Me.Value
  loc_B4DF1E: FLdRfVar var_F8
  loc_B4DF21: CStrVarTmp
  loc_B4DF22: FStStrNoPop var_B4
  loc_B4DF25: LitI4 1
  loc_B4DF2A: FLdRfVar var_AC
  loc_B4DF2D: Ary1StStrCopy
  loc_B4DF2E: FFree1Str var_B4
  loc_B4DF31: FFreeAd var_D4 = ""
  loc_B4DF38: FFree1Var var_F8 = ""
  loc_B4DF3B: FLdRfVar var_F8
  loc_B4DF3E: FLdRfVar var_E8
  loc_B4DF41: LitVarStr var_E4, "NucaInmu"
  loc_B4DF46: PopAdLdVar
  loc_B4DF47: FLdRfVar var_D4
  loc_B4DF4A: FMemLdPr
  loc_B4DF4F:  = Me.Fields
  loc_B4DF54: FLdPr var_D4
  loc_B4DF57: from_stack_2 = Me.Item(from_stack_1)
  loc_B4DF5C: FLdPr var_E8
  loc_B4DF5F:  = Me.Value
  loc_B4DF64: FLdRfVar var_F8
  loc_B4DF67: CStrVarTmp
  loc_B4DF68: FStStrNoPop var_B4
  loc_B4DF6B: LitI4 2
  loc_B4DF70: FLdRfVar var_AC
  loc_B4DF73: Ary1StStrCopy
  loc_B4DF74: FFree1Str var_B4
  loc_B4DF77: FFreeAd var_D4 = ""
  loc_B4DF7E: FFree1Var var_F8 = ""
  loc_B4DF81: FLdRfVar var_F8
  loc_B4DF84: FLdRfVar var_E8
  loc_B4DF87: LitVarStr var_E4, "UbicInmu"
  loc_B4DF8C: PopAdLdVar
  loc_B4DF8D: FLdRfVar var_D4
  loc_B4DF90: FMemLdPr
  loc_B4DF95:  = Me.Fields
  loc_B4DF9A: FLdPr var_D4
  loc_B4DF9D: from_stack_2 = Me.Item(from_stack_1)
  loc_B4DFA2: FLdPr var_E8
  loc_B4DFA5:  = Me.Value
  loc_B4DFAA: FLdRfVar var_F8
  loc_B4DFAD: CStrVarTmp
  loc_B4DFAE: FStStrNoPop var_B4
  loc_B4DFB1: LitI4 3
  loc_B4DFB6: FLdRfVar var_AC
  loc_B4DFB9: Ary1StStrCopy
  loc_B4DFBA: FFree1Str var_B4
  loc_B4DFBD: FFreeAd var_D4 = ""
  loc_B4DFC4: FFree1Var var_F8 = ""
  loc_B4DFC7: FLdRfVar var_F8
  loc_B4DFCA: FLdRfVar var_E8
  loc_B4DFCD: LitVarStr var_E4, "CodiBarr"
  loc_B4DFD2: PopAdLdVar
  loc_B4DFD3: FLdRfVar var_D4
  loc_B4DFD6: FMemLdPr
  loc_B4DFDB:  = Me.Fields
  loc_B4DFE0: FLdPr var_D4
  loc_B4DFE3: from_stack_2 = Me.Item(from_stack_1)
  loc_B4DFE8: FLdPr var_E8
  loc_B4DFEB:  = Me.Value
  loc_B4DFF0: FLdRfVar var_F8
  loc_B4DFF3: CStrVarTmp
  loc_B4DFF4: FStStrNoPop var_B4
  loc_B4DFF7: LitI4 4
  loc_B4DFFC: FLdRfVar var_AC
  loc_B4DFFF: Ary1StStrCopy
  loc_B4E000: FFree1Str var_B4
  loc_B4E003: FFreeAd var_D4 = ""
  loc_B4E00A: FFree1Var var_F8 = ""
  loc_B4E00D: FLdRfVar var_F8
  loc_B4E010: FLdRfVar var_E8
  loc_B4E013: LitVarStr var_E4, "MansInmu"
  loc_B4E018: PopAdLdVar
  loc_B4E019: FLdRfVar var_D4
  loc_B4E01C: FMemLdPr
  loc_B4E021:  = Me.Fields
  loc_B4E026: FLdPr var_D4
  loc_B4E029: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E02E: FLdPr var_E8
  loc_B4E031:  = Me.Value
  loc_B4E036: FLdRfVar var_F8
  loc_B4E039: CStrVarTmp
  loc_B4E03A: FStStrNoPop var_B4
  loc_B4E03D: LitI4 5
  loc_B4E042: FLdRfVar var_AC
  loc_B4E045: Ary1StStrCopy
  loc_B4E046: FFree1Str var_B4
  loc_B4E049: FFreeAd var_D4 = ""
  loc_B4E050: FFree1Var var_F8 = ""
  loc_B4E053: FLdRfVar var_F8
  loc_B4E056: FLdRfVar var_E8
  loc_B4E059: LitVarStr var_E4, "CasaInmu"
  loc_B4E05E: PopAdLdVar
  loc_B4E05F: FLdRfVar var_D4
  loc_B4E062: FMemLdPr
  loc_B4E067:  = Me.Fields
  loc_B4E06C: FLdPr var_D4
  loc_B4E06F: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E074: FLdPr var_E8
  loc_B4E077:  = Me.Value
  loc_B4E07C: FLdRfVar var_F8
  loc_B4E07F: CStrVarTmp
  loc_B4E080: FStStrNoPop var_B4
  loc_B4E083: LitI4 6
  loc_B4E088: FLdRfVar var_AC
  loc_B4E08B: Ary1StStrCopy
  loc_B4E08C: FFree1Str var_B4
  loc_B4E08F: FFreeAd var_D4 = ""
  loc_B4E096: FFree1Var var_F8 = ""
  loc_B4E099: FLdRfVar var_F8
  loc_B4E09C: FLdRfVar var_E8
  loc_B4E09F: LitVarStr var_E4, "CodiLoca"
  loc_B4E0A4: PopAdLdVar
  loc_B4E0A5: FLdRfVar var_D4
  loc_B4E0A8: FMemLdPr
  loc_B4E0AD:  = Me.Fields
  loc_B4E0B2: FLdPr var_D4
  loc_B4E0B5: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E0BA: FLdPr var_E8
  loc_B4E0BD:  = Me.Value
  loc_B4E0C2: FLdRfVar var_F8
  loc_B4E0C5: CStrVarTmp
  loc_B4E0C6: FStStrNoPop var_B4
  loc_B4E0C9: LitI4 7
  loc_B4E0CE: FLdRfVar var_AC
  loc_B4E0D1: Ary1StStrCopy
  loc_B4E0D2: FFree1Str var_B4
  loc_B4E0D5: FFreeAd var_D4 = ""
  loc_B4E0DC: FFree1Var var_F8 = ""
  loc_B4E0DF: FLdRfVar var_F8
  loc_B4E0E2: FLdRfVar var_E8
  loc_B4E0E5: LitVarStr var_E4, "DetaCall"
  loc_B4E0EA: PopAdLdVar
  loc_B4E0EB: FLdRfVar var_D4
  loc_B4E0EE: FMemLdPr
  loc_B4E0F3:  = Me.Fields
  loc_B4E0F8: FLdPr var_D4
  loc_B4E0FB: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E100: FLdPr var_E8
  loc_B4E103:  = Me.Value
  loc_B4E108: FLdRfVar var_F8
  loc_B4E10B: CStrVarTmp
  loc_B4E10C: FStStrNoPop var_B4
  loc_B4E10F: LitI4 8
  loc_B4E114: FLdRfVar var_AC
  loc_B4E117: Ary1StStrCopy
  loc_B4E118: FFree1Str var_B4
  loc_B4E11B: FFreeAd var_D4 = ""
  loc_B4E122: FFree1Var var_F8 = ""
  loc_B4E125: FLdRfVar var_F8
  loc_B4E128: FLdRfVar var_E8
  loc_B4E12B: LitVarStr var_E4, "DetaLoca"
  loc_B4E130: PopAdLdVar
  loc_B4E131: FLdRfVar var_D4
  loc_B4E134: FMemLdPr
  loc_B4E139:  = Me.Fields
  loc_B4E13E: FLdPr var_D4
  loc_B4E141: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E146: FLdPr var_E8
  loc_B4E149:  = Me.Value
  loc_B4E14E: FLdRfVar var_F8
  loc_B4E151: CStrVarTmp
  loc_B4E152: FStStrNoPop var_B4
  loc_B4E155: LitI4 9
  loc_B4E15A: FLdRfVar var_AC
  loc_B4E15D: Ary1StStrCopy
  loc_B4E15E: FFree1Str var_B4
  loc_B4E161: FFreeAd var_D4 = ""
  loc_B4E168: FFree1Var var_F8 = ""
  loc_B4E16B: FLdRfVar var_AC
  loc_B4E16E: CVarRef
  loc_B4E173: FStVarCopy
  loc_B4E177: Branch loc_B4E1F2
  loc_B4E17A: LitStr vbNullString
  loc_B4E17D: LitI4 1
  loc_B4E182: FLdRfVar var_AC
  loc_B4E185: Ary1StStrCopy
  loc_B4E186: LitStr vbNullString
  loc_B4E189: LitI4 2
  loc_B4E18E: FLdRfVar var_AC
  loc_B4E191: Ary1StStrCopy
  loc_B4E192: LitStr vbNullString
  loc_B4E195: LitI4 3
  loc_B4E19A: FLdRfVar var_AC
  loc_B4E19D: Ary1StStrCopy
  loc_B4E19E: LitStr vbNullString
  loc_B4E1A1: LitI4 4
  loc_B4E1A6: FLdRfVar var_AC
  loc_B4E1A9: Ary1StStrCopy
  loc_B4E1AA: LitStr vbNullString
  loc_B4E1AD: LitI4 5
  loc_B4E1B2: FLdRfVar var_AC
  loc_B4E1B5: Ary1StStrCopy
  loc_B4E1B6: LitStr vbNullString
  loc_B4E1B9: LitI4 6
  loc_B4E1BE: FLdRfVar var_AC
  loc_B4E1C1: Ary1StStrCopy
  loc_B4E1C2: LitStr vbNullString
  loc_B4E1C5: LitI4 7
  loc_B4E1CA: FLdRfVar var_AC
  loc_B4E1CD: Ary1StStrCopy
  loc_B4E1CE: LitStr vbNullString
  loc_B4E1D1: LitI4 8
  loc_B4E1D6: FLdRfVar var_AC
  loc_B4E1D9: Ary1StStrCopy
  loc_B4E1DA: LitStr vbNullString
  loc_B4E1DD: LitI4 9
  loc_B4E1E2: FLdRfVar var_AC
  loc_B4E1E5: Ary1StStrCopy
  loc_B4E1E6: FLdRfVar var_AC
  loc_B4E1E9: CVarRef
  loc_B4E1EE: FStVarCopy
  loc_B4E1F2: ExitProcCb
End Function

Private Function Proc_270_69_A92C68(arg_C, arg_10) 'A92C68
  'Data Table: 4C25A4
  loc_A92BD8: ILdRf arg_10
  loc_A92BDB: FStStrCopy var_8C
  loc_A92BDE: LitStr "SELECT DetaCuco FROM infogov.cuentacontable WHERE infogov.cuentacontable.PeriInfo = "
  loc_A92BE1: FLdI2 arg_C
  loc_A92BE4: CStrUI1
  loc_A92BE6: FStStrNoPop var_90
  loc_A92BE9: ConcatStr
  loc_A92BEA: FStStrNoPop var_94
  loc_A92BED: LitStr " AND infogov.cuentacontable.CodiCuco = '"
  loc_A92BF0: ConcatStr
  loc_A92BF1: FStStrNoPop var_98
  loc_A92BF4: ILdRf var_8C
  loc_A92BF7: ConcatStr
  loc_A92BF8: FStStrNoPop var_9C
  loc_A92BFB: LitStr "'"
  loc_A92BFE: ConcatStr
  loc_A92BFF: FStStrNoPop var_A0
  loc_A92C02: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A92C07: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A92C14: FLdRfVar var_A4
  loc_A92C17: FMemLdPr
  loc_A92C1C:  = Me.RecordCount
  loc_A92C21: ILdRf var_A4
  loc_A92C24: LitI4 0
  loc_A92C29: GtI4
  loc_A92C2A: BranchF loc_A92C67
  loc_A92C2D: FLdRfVar var_CC
  loc_A92C30: FLdRfVar var_BC
  loc_A92C33: LitVarStr var_B8, "DetaCuco"
  loc_A92C38: PopAdLdVar
  loc_A92C39: FLdRfVar var_A8
  loc_A92C3C: FMemLdPr
  loc_A92C41:  = Me.Fields
  loc_A92C46: FLdPr var_A8
  loc_A92C49: from_stack_2 = Me.Item(from_stack_1)
  loc_A92C4E: FLdPr var_BC
  loc_A92C51:  = Me.Value
  loc_A92C56: FLdRfVar var_CC
  loc_A92C59: CStrVarTmp
  loc_A92C5A: FStStr var_88
  loc_A92C5D: FFreeAd var_A8 = ""
  loc_A92C64: FFree1Var var_CC = ""
  loc_A92C67: ExitProc
End Function

Private Function Proc_270_70_A8ED50() 'A8ED50
  'Data Table: 4C25A4
  loc_A8ECC4: LitStr "SELECT ConcTili FROM tipoliqu WHERE CodiOfic = "
  loc_A8ECC7: FLdUI1
  loc_A8ECCB: CStrI2
  loc_A8ECCD: FStStrNoPop var_8C
  loc_A8ECD0: ConcatStr
  loc_A8ECD1: FStStrNoPop var_90
  loc_A8ECD4: LitStr " AND CodiTili = "
  loc_A8ECD7: ConcatStr
  loc_A8ECD8: FStStrNoPop var_94
  loc_A8ECDB: FLdUI1
  loc_A8ECDF: CStrI2
  loc_A8ECE1: FStStrNoPop var_98
  loc_A8ECE4: ConcatStr
  loc_A8ECE5: FStStrNoPop var_9C
  loc_A8ECE8: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A8ECED: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A8ECFA: FLdRfVar var_A0
  loc_A8ECFD: FMemLdPr
  loc_A8ED02:  = Me.RecordCount
  loc_A8ED07: ILdRf var_A0
  loc_A8ED0A: LitI4 0
  loc_A8ED0F: GtI4
  loc_A8ED10: BranchF loc_A8ED4D
  loc_A8ED13: FLdRfVar var_C8
  loc_A8ED16: FLdRfVar var_B8
  loc_A8ED19: LitVarStr var_B4, "ConcTili"
  loc_A8ED1E: PopAdLdVar
  loc_A8ED1F: FLdRfVar var_A4
  loc_A8ED22: FMemLdPr
  loc_A8ED27:  = Me.Fields
  loc_A8ED2C: FLdPr var_A4
  loc_A8ED2F: from_stack_2 = Me.Item(from_stack_1)
  loc_A8ED34: FLdPr var_B8
  loc_A8ED37:  = Me.Value
  loc_A8ED3C: FLdRfVar var_C8
  loc_A8ED3F: CStrVarTmp
  loc_A8ED40: FStStr var_88
  loc_A8ED43: FFreeAd var_A4 = ""
  loc_A8ED4A: FFree1Var var_C8 = ""
  loc_A8ED4D: ExitProc
End Function

Private Function Proc_270_71_A8F7D0() 'A8F7D0
  'Data Table: 4C25A4
  loc_A8F744: LitStr "SELECT CoreTili FROM tipoliqu WHERE CodiOfic = "
  loc_A8F747: FLdUI1
  loc_A8F74B: CStrI2
  loc_A8F74D: FStStrNoPop var_8C
  loc_A8F750: ConcatStr
  loc_A8F751: FStStrNoPop var_90
  loc_A8F754: LitStr " AND CodiTili = "
  loc_A8F757: ConcatStr
  loc_A8F758: FStStrNoPop var_94
  loc_A8F75B: FLdUI1
  loc_A8F75F: CStrI2
  loc_A8F761: FStStrNoPop var_98
  loc_A8F764: ConcatStr
  loc_A8F765: FStStrNoPop var_9C
  loc_A8F768: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A8F76D: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A8F77A: FLdRfVar var_A0
  loc_A8F77D: FMemLdPr
  loc_A8F782:  = Me.RecordCount
  loc_A8F787: ILdRf var_A0
  loc_A8F78A: LitI4 0
  loc_A8F78F: GtI4
  loc_A8F790: BranchF loc_A8F7CD
  loc_A8F793: FLdRfVar var_C8
  loc_A8F796: FLdRfVar var_B8
  loc_A8F799: LitVarStr var_B4, "CoreTili"
  loc_A8F79E: PopAdLdVar
  loc_A8F79F: FLdRfVar var_A4
  loc_A8F7A2: FMemLdPr
  loc_A8F7A7:  = Me.Fields
  loc_A8F7AC: FLdPr var_A4
  loc_A8F7AF: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F7B4: FLdPr var_B8
  loc_A8F7B7:  = Me.Value
  loc_A8F7BC: FLdRfVar var_C8
  loc_A8F7BF: CStrVarTmp
  loc_A8F7C0: FStStr var_88
  loc_A8F7C3: FFreeAd var_A4 = ""
  loc_A8F7CA: FFree1Var var_C8 = ""
  loc_A8F7CD: ExitProc
End Function

Private Function Proc_270_72_A8BDBC() 'A8BDBC
  'Data Table: 4C25A4
  loc_A8BD30: LitStr "SELECT DeanTili FROM tipoliqu WHERE CodiOfic = "
  loc_A8BD33: FLdUI1
  loc_A8BD37: CStrI2
  loc_A8BD39: FStStrNoPop var_90
  loc_A8BD3C: ConcatStr
  loc_A8BD3D: FStStrNoPop var_94
  loc_A8BD40: LitStr " AND CodiTili = "
  loc_A8BD43: ConcatStr
  loc_A8BD44: FStStrNoPop var_98
  loc_A8BD47: FLdUI1
  loc_A8BD4B: CStrI2
  loc_A8BD4D: FStStrNoPop var_9C
  loc_A8BD50: ConcatStr
  loc_A8BD51: FStStrNoPop var_A0
  loc_A8BD54: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A8BD59: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A8BD66: FLdRfVar var_A4
  loc_A8BD69: FMemLdPr
  loc_A8BD6E:  = Me.RecordCount
  loc_A8BD73: ILdRf var_A4
  loc_A8BD76: LitI4 0
  loc_A8BD7B: GtI4
  loc_A8BD7C: BranchF loc_A8BDB9
  loc_A8BD7F: FLdRfVar var_CC
  loc_A8BD82: FLdRfVar var_BC
  loc_A8BD85: LitVarStr var_B8, "DeanTili"
  loc_A8BD8A: PopAdLdVar
  loc_A8BD8B: FLdRfVar var_A8
  loc_A8BD8E: FMemLdPr
  loc_A8BD93:  = Me.Fields
  loc_A8BD98: FLdPr var_A8
  loc_A8BD9B: from_stack_2 = Me.Item(from_stack_1)
  loc_A8BDA0: FLdPr var_BC
  loc_A8BDA3:  = Me.Value
  loc_A8BDA8: FLdRfVar var_CC
  loc_A8BDAB: CR4Var
  loc_A8BDAC: FStFPR8 var_8C
  loc_A8BDAF: FFreeAd var_A8 = ""
  loc_A8BDB6: FFree1Var var_CC = ""
  loc_A8BDB9: ExitProcR8
End Function

Private Function Proc_270_73_A8B7B8() 'A8B7B8
  'Data Table: 4C25A4
  loc_A8B72C: LitStr "SELECT GastTili FROM tipoliqu WHERE CodiOfic = "
  loc_A8B72F: FLdUI1
  loc_A8B733: CStrI2
  loc_A8B735: FStStrNoPop var_90
  loc_A8B738: ConcatStr
  loc_A8B739: FStStrNoPop var_94
  loc_A8B73C: LitStr " AND CodiTili = "
  loc_A8B73F: ConcatStr
  loc_A8B740: FStStrNoPop var_98
  loc_A8B743: FLdUI1
  loc_A8B747: CStrI2
  loc_A8B749: FStStrNoPop var_9C
  loc_A8B74C: ConcatStr
  loc_A8B74D: FStStrNoPop var_A0
  loc_A8B750: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A8B755: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A8B762: FLdRfVar var_A4
  loc_A8B765: FMemLdPr
  loc_A8B76A:  = Me.RecordCount
  loc_A8B76F: ILdRf var_A4
  loc_A8B772: LitI4 0
  loc_A8B777: GtI4
  loc_A8B778: BranchF loc_A8B7B5
  loc_A8B77B: FLdRfVar var_CC
  loc_A8B77E: FLdRfVar var_BC
  loc_A8B781: LitVarStr var_B8, "GastTili"
  loc_A8B786: PopAdLdVar
  loc_A8B787: FLdRfVar var_A8
  loc_A8B78A: FMemLdPr
  loc_A8B78F:  = Me.Fields
  loc_A8B794: FLdPr var_A8
  loc_A8B797: from_stack_2 = Me.Item(from_stack_1)
  loc_A8B79C: FLdPr var_BC
  loc_A8B79F:  = Me.Value
  loc_A8B7A4: FLdRfVar var_CC
  loc_A8B7A7: CR4Var
  loc_A8B7A8: FStFPR8 var_8C
  loc_A8B7AB: FFreeAd var_A8 = ""
  loc_A8B7B2: FFree1Var var_CC = ""
  loc_A8B7B5: ExitProcR8
End Function

Private Function Proc_270_74_A7B188(arg_C) 'A7B188
  'Data Table: 4C25A4
  loc_A7B118: LitStr "SELECT DetaPofi FROM infogov.posifisc WHERE CodiPofi = "
  loc_A7B11B: FLdI2 arg_C
  loc_A7B11E: CStrUI1
  loc_A7B120: FStStrNoPop var_8C
  loc_A7B123: ConcatStr
  loc_A7B124: FStStrNoPop var_90
  loc_A7B127: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7B12C: FFreeStr var_8C = ""
  loc_A7B133: FLdRfVar var_94
  loc_A7B136: FMemLdPr
  loc_A7B13B:  = Me.RecordCount
  loc_A7B140: ILdRf var_94
  loc_A7B143: LitI4 0
  loc_A7B148: GtI4
  loc_A7B149: BranchF loc_A7B186
  loc_A7B14C: FLdRfVar var_BC
  loc_A7B14F: FLdRfVar var_AC
  loc_A7B152: LitVarStr var_A8, "DetaPofi"
  loc_A7B157: PopAdLdVar
  loc_A7B158: FLdRfVar var_98
  loc_A7B15B: FMemLdPr
  loc_A7B160:  = Me.Fields
  loc_A7B165: FLdPr var_98
  loc_A7B168: from_stack_2 = Me.Item(from_stack_1)
  loc_A7B16D: FLdPr var_AC
  loc_A7B170:  = Me.Value
  loc_A7B175: FLdRfVar var_BC
  loc_A7B178: CStrVarTmp
  loc_A7B179: FStStr var_88
  loc_A7B17C: FFreeAd var_98 = ""
  loc_A7B183: FFree1Var var_BC = ""
  loc_A7B186: ExitProc
End Function

Private Function Proc_270_75_A80810(arg_C) 'A80810
  'Data Table: 4C25A4
  loc_A80798: ILdRf arg_C
  loc_A8079B: FStStrCopy var_8C
  loc_A8079E: LitStr "SELECT DetaPers FROM infogov.persona WHERE CucuPers = '"
  loc_A807A1: ILdRf var_8C
  loc_A807A4: ConcatStr
  loc_A807A5: FStStrNoPop var_90
  loc_A807A8: LitStr "'"
  loc_A807AB: ConcatStr
  loc_A807AC: FStStrNoPop var_94
  loc_A807AF: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A807B4: FFreeStr var_90 = ""
  loc_A807BB: FLdRfVar var_98
  loc_A807BE: FMemLdPr
  loc_A807C3:  = Me.RecordCount
  loc_A807C8: ILdRf var_98
  loc_A807CB: LitI4 0
  loc_A807D0: GtI4
  loc_A807D1: BranchF loc_A8080E
  loc_A807D4: FLdRfVar var_C0
  loc_A807D7: FLdRfVar var_B0
  loc_A807DA: LitVarStr var_AC, "DetaPers"
  loc_A807DF: PopAdLdVar
  loc_A807E0: FLdRfVar var_9C
  loc_A807E3: FMemLdPr
  loc_A807E8:  = Me.Fields
  loc_A807ED: FLdPr var_9C
  loc_A807F0: from_stack_2 = Me.Item(from_stack_1)
  loc_A807F5: FLdPr var_B0
  loc_A807F8:  = Me.Value
  loc_A807FD: FLdRfVar var_C0
  loc_A80800: CStrVarTmp
  loc_A80801: FStStr var_88
  loc_A80804: FFreeAd var_9C = ""
  loc_A8080B: FFree1Var var_C0 = ""
  loc_A8080E: ExitProc
End Function

Private Function Proc_270_76_A77528(arg_C) 'A77528
  'Data Table: 4C25A4
  loc_A774BC: ILdRf arg_C
  loc_A774BF: FStStrCopy var_8C
  loc_A774C2: LitStr "SELECT DetaPers FROM infogov.persona WHERE NudoPers = "
  loc_A774C5: ILdRf var_8C
  loc_A774C8: ConcatStr
  loc_A774C9: FStStrNoPop var_90
  loc_A774CC: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A774D1: FFree1Str var_90
  loc_A774D4: FLdRfVar var_94
  loc_A774D7: FMemLdPr
  loc_A774DC:  = Me.RecordCount
  loc_A774E1: ILdRf var_94
  loc_A774E4: LitI4 0
  loc_A774E9: GtI4
  loc_A774EA: BranchF loc_A77527
  loc_A774ED: FLdRfVar var_BC
  loc_A774F0: FLdRfVar var_AC
  loc_A774F3: LitVarStr var_A8, "DetaPers"
  loc_A774F8: PopAdLdVar
  loc_A774F9: FLdRfVar var_98
  loc_A774FC: FMemLdPr
  loc_A77501:  = Me.Fields
  loc_A77506: FLdPr var_98
  loc_A77509: from_stack_2 = Me.Item(from_stack_1)
  loc_A7750E: FLdPr var_AC
  loc_A77511:  = Me.Value
  loc_A77516: FLdRfVar var_BC
  loc_A77519: CStrVarTmp
  loc_A7751A: FStStr var_88
  loc_A7751D: FFreeAd var_98 = ""
  loc_A77524: FFree1Var var_BC = ""
  loc_A77527: ExitProc
End Function

Private Function Proc_270_77_A77690(arg_C) 'A77690
  'Data Table: 4C25A4
  loc_A77624: ILdRf arg_C
  loc_A77627: FStStrCopy var_8C
  loc_A7762A: LitStr "SELECT DetaTiic FROM tipoinco WHERE CodiTiic = "
  loc_A7762D: ILdRf var_8C
  loc_A77630: ConcatStr
  loc_A77631: FStStrNoPop var_90
  loc_A77634: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A77639: FFree1Str var_90
  loc_A7763C: FLdRfVar var_94
  loc_A7763F: FMemLdPr
  loc_A77644:  = Me.RecordCount
  loc_A77649: ILdRf var_94
  loc_A7764C: LitI4 0
  loc_A77651: GtI4
  loc_A77652: BranchF loc_A7768F
  loc_A77655: FLdRfVar var_BC
  loc_A77658: FLdRfVar var_AC
  loc_A7765B: LitVarStr var_A8, "DetaTiic"
  loc_A77660: PopAdLdVar
  loc_A77661: FLdRfVar var_98
  loc_A77664: FMemLdPr
  loc_A77669:  = Me.Fields
  loc_A7766E: FLdPr var_98
  loc_A77671: from_stack_2 = Me.Item(from_stack_1)
  loc_A77676: FLdPr var_AC
  loc_A77679:  = Me.Value
  loc_A7767E: FLdRfVar var_BC
  loc_A77681: CStrVarTmp
  loc_A77682: FStStr var_88
  loc_A77685: FFreeAd var_98 = ""
  loc_A7768C: FFree1Var var_BC = ""
  loc_A7768F: ExitProc
End Function

Private Function Proc_270_78_A77C30(arg_C) 'A77C30
  'Data Table: 4C25A4
  loc_A77BC4: ILdRf arg_C
  loc_A77BC7: FStStrCopy var_8C
  loc_A77BCA: LitStr "SELECT DetaTimo FROM tipomovi WHERE CodiTimo = "
  loc_A77BCD: ILdRf var_8C
  loc_A77BD0: ConcatStr
  loc_A77BD1: FStStrNoPop var_90
  loc_A77BD4: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A77BD9: FFree1Str var_90
  loc_A77BDC: FLdRfVar var_94
  loc_A77BDF: FMemLdPr
  loc_A77BE4:  = Me.RecordCount
  loc_A77BE9: ILdRf var_94
  loc_A77BEC: LitI4 0
  loc_A77BF1: GtI4
  loc_A77BF2: BranchF loc_A77C2F
  loc_A77BF5: FLdRfVar var_BC
  loc_A77BF8: FLdRfVar var_AC
  loc_A77BFB: LitVarStr var_A8, "DetaTimo"
  loc_A77C00: PopAdLdVar
  loc_A77C01: FLdRfVar var_98
  loc_A77C04: FMemLdPr
  loc_A77C09:  = Me.Fields
  loc_A77C0E: FLdPr var_98
  loc_A77C11: from_stack_2 = Me.Item(from_stack_1)
  loc_A77C16: FLdPr var_AC
  loc_A77C19:  = Me.Value
  loc_A77C1E: FLdRfVar var_BC
  loc_A77C21: CStrVarTmp
  loc_A77C22: FStStr var_88
  loc_A77C25: FFreeAd var_98 = ""
  loc_A77C2C: FFree1Var var_BC = ""
  loc_A77C2F: ExitProc
End Function

Private Function Proc_270_79_A8B520(arg_C) 'A8B520
  'Data Table: 4C25A4
  loc_A8B498: LitStr "SELECT DetaSede FROM servdeva WHERE PeriOrde = "
  loc_A8B49B: ImpAdLdI2 MemVar_D93036
  loc_A8B49E: CStrUI1
  loc_A8B4A0: FStStrNoPop var_8C
  loc_A8B4A3: ConcatStr
  loc_A8B4A4: FStStrNoPop var_90
  loc_A8B4A7: LitStr " AND CodiSede = "
  loc_A8B4AA: ConcatStr
  loc_A8B4AB: FStStrNoPop var_94
  loc_A8B4AE: FLdI2 arg_C
  loc_A8B4B1: CStrUI1
  loc_A8B4B3: FStStrNoPop var_98
  loc_A8B4B6: ConcatStr
  loc_A8B4B7: FStStrNoPop var_9C
  loc_A8B4BA: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A8B4BF: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A8B4CC: FLdRfVar var_A0
  loc_A8B4CF: FMemLdPr
  loc_A8B4D4:  = Me.RecordCount
  loc_A8B4D9: ILdRf var_A0
  loc_A8B4DC: LitI4 0
  loc_A8B4E1: GtI4
  loc_A8B4E2: BranchF loc_A8B51F
  loc_A8B4E5: FLdRfVar var_C8
  loc_A8B4E8: FLdRfVar var_B8
  loc_A8B4EB: LitVarStr var_B4, "DetaSede"
  loc_A8B4F0: PopAdLdVar
  loc_A8B4F1: FLdRfVar var_A4
  loc_A8B4F4: FMemLdPr
  loc_A8B4F9:  = Me.Fields
  loc_A8B4FE: FLdPr var_A4
  loc_A8B501: from_stack_2 = Me.Item(from_stack_1)
  loc_A8B506: FLdPr var_B8
  loc_A8B509:  = Me.Value
  loc_A8B50E: FLdRfVar var_C8
  loc_A8B511: CStrVarTmp
  loc_A8B512: FStStr var_88
  loc_A8B515: FFreeAd var_A4 = ""
  loc_A8B51C: FFree1Var var_C8 = ""
  loc_A8B51F: ExitProc
End Function

Private Function Proc_270_80_A8CD30(arg_C) 'A8CD30
  'Data Table: 4C25A4
  loc_A8CCA8: LitStr "SELECT CodiConc FROM servdeva WHERE PeriOrde = "
  loc_A8CCAB: ImpAdLdI2 MemVar_D93036
  loc_A8CCAE: CStrUI1
  loc_A8CCB0: FStStrNoPop var_8C
  loc_A8CCB3: ConcatStr
  loc_A8CCB4: FStStrNoPop var_90
  loc_A8CCB7: LitStr " AND CodiSede = "
  loc_A8CCBA: ConcatStr
  loc_A8CCBB: FStStrNoPop var_94
  loc_A8CCBE: FLdI2 arg_C
  loc_A8CCC1: CStrUI1
  loc_A8CCC3: FStStrNoPop var_98
  loc_A8CCC6: ConcatStr
  loc_A8CCC7: FStStrNoPop var_9C
  loc_A8CCCA: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A8CCCF: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A8CCDC: FLdRfVar var_A0
  loc_A8CCDF: FMemLdPr
  loc_A8CCE4:  = Me.RecordCount
  loc_A8CCE9: ILdRf var_A0
  loc_A8CCEC: LitI4 0
  loc_A8CCF1: GtI4
  loc_A8CCF2: BranchF loc_A8CD2F
  loc_A8CCF5: FLdRfVar var_C8
  loc_A8CCF8: FLdRfVar var_B8
  loc_A8CCFB: LitVarStr var_B4, "CodiConc"
  loc_A8CD00: PopAdLdVar
  loc_A8CD01: FLdRfVar var_A4
  loc_A8CD04: FMemLdPr
  loc_A8CD09:  = Me.Fields
  loc_A8CD0E: FLdPr var_A4
  loc_A8CD11: from_stack_2 = Me.Item(from_stack_1)
  loc_A8CD16: FLdPr var_B8
  loc_A8CD19:  = Me.Value
  loc_A8CD1E: FLdRfVar var_C8
  loc_A8CD21: CStrVarTmp
  loc_A8CD22: FStStr var_88
  loc_A8CD25: FFreeAd var_A4 = ""
  loc_A8CD2C: FFree1Var var_C8 = ""
  loc_A8CD2F: ExitProc
End Function

Private Function Proc_270_81_A94408(arg_10) 'A94408
  'Data Table: 4C25A4
  loc_A94374: ILdRf arg_10
  loc_A94377: FStStrCopy var_8C
  loc_A9437A: LitStr "SELECT CucuPers FROM relacion WHERE CodiOfic = "
  loc_A9437D: FLdUI1
  loc_A94381: CStrI2
  loc_A94383: FStStrNoPop var_90
  loc_A94386: ConcatStr
  loc_A94387: FStStrNoPop var_94
  loc_A9438A: LitStr " AND CuenCtct = '"
  loc_A9438D: ConcatStr
  loc_A9438E: FStStrNoPop var_98
  loc_A94391: ILdRf var_8C
  loc_A94394: ConcatStr
  loc_A94395: FStStrNoPop var_9C
  loc_A94398: LitStr "'"
  loc_A9439B: ConcatStr
  loc_A9439C: FStStrNoPop var_A0
  loc_A9439F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A943A4: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A943B1: FLdRfVar var_A4
  loc_A943B4: FMemLdPr
  loc_A943B9:  = Me.RecordCount
  loc_A943BE: ILdRf var_A4
  loc_A943C1: LitI4 0
  loc_A943C6: GtI4
  loc_A943C7: BranchF loc_A94404
  loc_A943CA: FLdRfVar var_CC
  loc_A943CD: FLdRfVar var_BC
  loc_A943D0: LitVarStr var_B8, "CucuPers"
  loc_A943D5: PopAdLdVar
  loc_A943D6: FLdRfVar var_A8
  loc_A943D9: FMemLdPr
  loc_A943DE:  = Me.Fields
  loc_A943E3: FLdPr var_A8
  loc_A943E6: from_stack_2 = Me.Item(from_stack_1)
  loc_A943EB: FLdPr var_BC
  loc_A943EE:  = Me.Value
  loc_A943F3: FLdRfVar var_CC
  loc_A943F6: CStrVarTmp
  loc_A943F7: FStStr var_88
  loc_A943FA: FFreeAd var_A8 = ""
  loc_A94401: FFree1Var var_CC = ""
  loc_A94404: ExitProc
End Function

Private Function Proc_270_82_A7324C(arg_10) 'A7324C
  'Data Table: 4C25A4
  loc_A731EC: ILdRf arg_10
  loc_A731EF: FStStrCopy var_8C
  loc_A731F2: LitStr "SELECT * FROM relacion WHERE CodiOfic = "
  loc_A731F5: FLdUI1
  loc_A731F9: CStrI2
  loc_A731FB: FStStrNoPop var_90
  loc_A731FE: ConcatStr
  loc_A731FF: FStStrNoPop var_94
  loc_A73202: LitStr " AND CuenCtct = '"
  loc_A73205: ConcatStr
  loc_A73206: FStStrNoPop var_98
  loc_A73209: ILdRf var_8C
  loc_A7320C: ConcatStr
  loc_A7320D: FStStrNoPop var_9C
  loc_A73210: LitStr "' AND TipoRela = 'Propietario' AND FebaRela IS NULL"
  loc_A73213: ConcatStr
  loc_A73214: FStStrNoPop var_A0
  loc_A73217: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7321C: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A73229: FLdRfVar var_A4
  loc_A7322C: FMemLdPr
  loc_A73231:  = Me.RecordCount
  loc_A73236: ILdRf var_A4
  loc_A73239: LitI4 0
  loc_A7323E: GtI4
  loc_A7323F: BranchF loc_A73248
  loc_A73242: LitStr "Tiene propietarios"
  loc_A73245: FStStrCopy var_88
  loc_A73248: ExitProc
End Function

Private Function Proc_270_83_A9D6E0(arg_10) 'A9D6E0
  'Data Table: 4C25A4
  loc_A9D644: ILdRf arg_10
  loc_A9D647: FStStrCopy var_8C
  loc_A9D64A: LitStr "SELECT CucuPers FROM relacion WHERE CodiOfic = "
  loc_A9D64D: FLdUI1
  loc_A9D651: CStrI2
  loc_A9D653: FStStrNoPop var_90
  loc_A9D656: ConcatStr
  loc_A9D657: FStStrNoPop var_94
  loc_A9D65A: LitStr " AND CuenCtct = '"
  loc_A9D65D: ConcatStr
  loc_A9D65E: FStStrNoPop var_98
  loc_A9D661: ILdRf var_8C
  loc_A9D664: ConcatStr
  loc_A9D665: FStStrNoPop var_9C
  loc_A9D668: LitStr "' AND TipoRela = 'Titular'"
  loc_A9D66B: ConcatStr
  loc_A9D66C: FStStrNoPop var_A0
  loc_A9D66F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A9D674: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A9D681: FLdRfVar var_A4
  loc_A9D684: FMemLdPr
  loc_A9D689:  = Me.RecordCount
  loc_A9D68E: ILdRf var_A4
  loc_A9D691: LitI4 0
  loc_A9D696: GtI4
  loc_A9D697: BranchF loc_A9D6D7
  loc_A9D69A: FLdRfVar var_CC
  loc_A9D69D: FLdRfVar var_BC
  loc_A9D6A0: LitVarStr var_B8, "CucuPers"
  loc_A9D6A5: PopAdLdVar
  loc_A9D6A6: FLdRfVar var_A8
  loc_A9D6A9: FMemLdPr
  loc_A9D6AE:  = Me.Fields
  loc_A9D6B3: FLdPr var_A8
  loc_A9D6B6: from_stack_2 = Me.Item(from_stack_1)
  loc_A9D6BB: FLdPr var_BC
  loc_A9D6BE:  = Me.Value
  loc_A9D6C3: FLdRfVar var_CC
  loc_A9D6C6: CStrVarTmp
  loc_A9D6C7: FStStr var_88
  loc_A9D6CA: FFreeAd var_A8 = ""
  loc_A9D6D1: FFree1Var var_CC = ""
  loc_A9D6D4: Branch loc_A9D6DD
  loc_A9D6D7: LitStr vbNullString
  loc_A9D6DA: FStStrCopy var_88
  loc_A9D6DD: ExitProc
End Function

Private Function Proc_270_84_B08474(arg_10) 'B08474
  'Data Table: 4C25A4
  loc_B08274: ILdRf arg_10
  loc_B08277: FStStrCopy var_8C
  loc_B0827A: FLdUI1
  loc_B0827E: FStUI1 var_8E
  loc_B08282: FLdUI1
  loc_B08286: LitI2_Byte 1
  loc_B08288: CUI1I2
  loc_B0828A: EqI2
  loc_B0828B: BranchF loc_B082F6
  loc_B0828E: LitStr "SELECT CodiLoca FROM inmueble WHERE CodiInmu = "
  loc_B08291: ILdRf var_8C
  loc_B08294: ConcatStr
  loc_B08295: FStStrNoPop var_94
  loc_B08298: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B0829D: FFree1Str var_94
  loc_B082A0: FLdRfVar var_98
  loc_B082A3: FMemLdPr
  loc_B082A8:  = Me.RecordCount
  loc_B082AD: ILdRf var_98
  loc_B082B0: LitI4 0
  loc_B082B5: GtI4
  loc_B082B6: BranchF loc_B082F3
  loc_B082B9: FLdRfVar var_C0
  loc_B082BC: FLdRfVar var_B0
  loc_B082BF: LitVarStr var_AC, "CodiLoca"
  loc_B082C4: PopAdLdVar
  loc_B082C5: FLdRfVar var_9C
  loc_B082C8: FMemLdPr
  loc_B082CD:  = Me.Fields
  loc_B082D2: FLdPr var_9C
  loc_B082D5: from_stack_2 = Me.Item(from_stack_1)
  loc_B082DA: FLdPr var_B0
  loc_B082DD:  = Me.Value
  loc_B082E2: FLdRfVar var_C0
  loc_B082E5: CI2Var
  loc_B082E6: FStI2 var_86
  loc_B082E9: FFreeAd var_9C = ""
  loc_B082F0: FFree1Var var_C0 = ""
  loc_B082F3: Branch loc_B08471
  loc_B082F6: FLdUI1
  loc_B082FA: LitI2_Byte 2
  loc_B082FC: CUI1I2
  loc_B082FE: EqI2
  loc_B082FF: BranchF loc_B0836A
  loc_B08302: LitStr "SELECT CodiLoca FROM comercio WHERE CodiCome = "
  loc_B08305: ILdRf var_8C
  loc_B08308: ConcatStr
  loc_B08309: FStStrNoPop var_94
  loc_B0830C: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B08311: FFree1Str var_94
  loc_B08314: FLdRfVar var_98
  loc_B08317: FMemLdPr
  loc_B0831C:  = Me.RecordCount
  loc_B08321: ILdRf var_98
  loc_B08324: LitI4 0
  loc_B08329: GtI4
  loc_B0832A: BranchF loc_B08367
  loc_B0832D: FLdRfVar var_C0
  loc_B08330: FLdRfVar var_B0
  loc_B08333: LitVarStr var_AC, "CodiLoca"
  loc_B08338: PopAdLdVar
  loc_B08339: FLdRfVar var_9C
  loc_B0833C: FMemLdPr
  loc_B08341:  = Me.Fields
  loc_B08346: FLdPr var_9C
  loc_B08349: from_stack_2 = Me.Item(from_stack_1)
  loc_B0834E: FLdPr var_B0
  loc_B08351:  = Me.Value
  loc_B08356: FLdRfVar var_C0
  loc_B08359: CI2Var
  loc_B0835A: FStI2 var_86
  loc_B0835D: FFreeAd var_9C = ""
  loc_B08364: FFree1Var var_C0 = ""
  loc_B08367: Branch loc_B08471
  loc_B0836A: LitStr "SELECT CucuPers FROM relacion WHERE CodiOfic = "
  loc_B0836D: FLdUI1
  loc_B08371: CStrI2
  loc_B08373: FStStrNoPop var_94
  loc_B08376: ConcatStr
  loc_B08377: FStStrNoPop var_C4
  loc_B0837A: LitStr " AND CuenCtct = '"
  loc_B0837D: ConcatStr
  loc_B0837E: FStStrNoPop var_C8
  loc_B08381: ILdRf var_8C
  loc_B08384: ConcatStr
  loc_B08385: FStStrNoPop var_CC
  loc_B08388: LitStr "' AND TipoRela = 'Titular'"
  loc_B0838B: ConcatStr
  loc_B0838C: FStStrNoPop var_D0
  loc_B0838F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B08394: FFreeStr var_94 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_B083A1: FLdRfVar var_98
  loc_B083A4: FMemLdPr
  loc_B083A9:  = Me.RecordCount
  loc_B083AE: ILdRf var_98
  loc_B083B1: LitI4 0
  loc_B083B6: GtI4
  loc_B083B7: BranchF loc_B08471
  loc_B083BA: FMemLdPr
  loc_B083BF: Me.MoveFirst
  loc_B083C4: LitVarStr var_E0, "SELECT ColrPers FROM infogov.persona WHERE CucuPers = '"
  loc_B083C9: FLdRfVar var_C0
  loc_B083CC: FLdRfVar var_B0
  loc_B083CF: LitVarStr var_AC, "CucuPers"
  loc_B083D4: PopAdLdVar
  loc_B083D5: FLdRfVar var_9C
  loc_B083D8: FMemLdPr
  loc_B083DD:  = Me.Fields
  loc_B083E2: FLdPr var_9C
  loc_B083E5: from_stack_2 = Me.Item(from_stack_1)
  loc_B083EA: FLdPr var_B0
  loc_B083ED:  = Me.Value
  loc_B083F2: FLdRfVar var_C0
  loc_B083F5: ConcatVar var_F0
  loc_B083F9: LitVarStr var_100, "'"
  loc_B083FE: ConcatVar var_110
  loc_B08402: CStrVarVal var_94
  loc_B08406: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B0840B: FFree1Str var_94
  loc_B0840E: FFreeAd var_9C = ""
  loc_B08415: FFreeVar var_C0 = "": var_F0 = ""
  loc_B0841E: FLdRfVar var_98
  loc_B08421: FMemLdPr
  loc_B08426:  = Me.RecordCount
  loc_B0842B: ILdRf var_98
  loc_B0842E: LitI4 0
  loc_B08433: GtI4
  loc_B08434: BranchF loc_B08471
  loc_B08437: FLdRfVar var_C0
  loc_B0843A: FLdRfVar var_B0
  loc_B0843D: LitVarStr var_AC, "ColrPers"
  loc_B08442: PopAdLdVar
  loc_B08443: FLdRfVar var_9C
  loc_B08446: FMemLdPr
  loc_B0844B:  = Me.Fields
  loc_B08450: FLdPr var_9C
  loc_B08453: from_stack_2 = Me.Item(from_stack_1)
  loc_B08458: FLdPr var_B0
  loc_B0845B:  = Me.Value
  loc_B08460: FLdRfVar var_C0
  loc_B08463: CI2Var
  loc_B08464: FStI2 var_86
  loc_B08467: FFreeAd var_9C = ""
  loc_B0846E: FFree1Var var_C0 = ""
  loc_B08471: ExitProcI2
End Function

Private Function Proc_270_85_A78E7C(arg_C) 'A78E7C
  'Data Table: 4C25A4
  loc_A78E0C: LitStr "SELECT KiloLoca FROM infogov.localidad WHERE CodiLoca = "
  loc_A78E0F: FLdI2 arg_C
  loc_A78E12: CStrUI1
  loc_A78E14: FStStrNoPop var_8C
  loc_A78E17: ConcatStr
  loc_A78E18: FStStrNoPop var_90
  loc_A78E1B: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A78E20: FFreeStr var_8C = ""
  loc_A78E27: FLdRfVar var_94
  loc_A78E2A: FMemLdPr
  loc_A78E2F:  = Me.RecordCount
  loc_A78E34: ILdRf var_94
  loc_A78E37: LitI4 0
  loc_A78E3C: GtI4
  loc_A78E3D: BranchF loc_A78E7A
  loc_A78E40: FLdRfVar var_BC
  loc_A78E43: FLdRfVar var_AC
  loc_A78E46: LitVarStr var_A8, "KiloLoca"
  loc_A78E4B: PopAdLdVar
  loc_A78E4C: FLdRfVar var_98
  loc_A78E4F: FMemLdPr
  loc_A78E54:  = Me.Fields
  loc_A78E59: FLdPr var_98
  loc_A78E5C: from_stack_2 = Me.Item(from_stack_1)
  loc_A78E61: FLdPr var_AC
  loc_A78E64:  = Me.Value
  loc_A78E69: FLdRfVar var_BC
  loc_A78E6C: CI2Var
  loc_A78E6D: FStI2 var_86
  loc_A78E70: FFreeAd var_98 = ""
  loc_A78E77: FFree1Var var_BC = ""
  loc_A78E7A: ExitProcI2
End Function

Private Function Proc_270_86_A78D14(arg_C) 'A78D14
  'Data Table: 4C25A4
  loc_A78CA4: LitStr "SELECT AutoApre FROM apremio WHERE NumeApre = "
  loc_A78CA7: ILdRf arg_C
  loc_A78CAA: CStrI4
  loc_A78CAC: FStStrNoPop var_8C
  loc_A78CAF: ConcatStr
  loc_A78CB0: FStStrNoPop var_90
  loc_A78CB3: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A78CB8: FFreeStr var_8C = ""
  loc_A78CBF: FLdRfVar var_94
  loc_A78CC2: FMemLdPr
  loc_A78CC7:  = Me.RecordCount
  loc_A78CCC: ILdRf var_94
  loc_A78CCF: LitI4 0
  loc_A78CD4: GtI4
  loc_A78CD5: BranchF loc_A78D13
  loc_A78CD8: FLdRfVar var_BC
  loc_A78CDB: FLdRfVar var_AC
  loc_A78CDE: LitVarStr var_A8, "AutoApre"
  loc_A78CE3: PopAdLdVar
  loc_A78CE4: FLdRfVar var_98
  loc_A78CE7: FMemLdPr
  loc_A78CEC:  = Me.Fields
  loc_A78CF1: FLdPr var_98
  loc_A78CF4: from_stack_2 = Me.Item(from_stack_1)
  loc_A78CF9: FLdPr var_AC
  loc_A78CFC:  = Me.Value
  loc_A78D01: FLdRfVar var_BC
  loc_A78D04: CI4Var
  loc_A78D06: FStR4 var_88
  loc_A78D09: FFreeAd var_98 = ""
  loc_A78D10: FFree1Var var_BC = ""
  loc_A78D13: ExitProc
End Function

Private Function Proc_270_87_AD28D4(arg_C, arg_10, arg_14, arg_18, arg_1C) 'AD28D4
  'Data Table: 4C25A4
  loc_AD27E4: ILdRf arg_C
  loc_AD27E7: FStStrCopy var_90
  loc_AD27EA: ILdRf arg_10
  loc_AD27ED: FStStrCopy var_94
  loc_AD27F0: LitStr "SELECT FechActr FROM actatran WHERE NumeActr = '"
  loc_AD27F3: ILdRf var_90
  loc_AD27F6: ConcatStr
  loc_AD27F7: FStStrNoPop var_98
  loc_AD27FA: LitStr "'"
  loc_AD27FD: ConcatStr
  loc_AD27FE: FStStrNoPop var_9C
  loc_AD2801: LitStr " AND CucuPers = '"
  loc_AD2804: ConcatStr
  loc_AD2805: FStStrNoPop var_A0
  loc_AD2808: ILdRf var_94
  loc_AD280B: ConcatStr
  loc_AD280C: FStStrNoPop var_A4
  loc_AD280F: LitStr "'"
  loc_AD2812: ConcatStr
  loc_AD2813: FStStrNoPop var_A8
  loc_AD2816: LitStr " AND PeriCtct = "
  loc_AD2819: ConcatStr
  loc_AD281A: FStStrNoPop var_AC
  loc_AD281D: FLdI2 arg_14
  loc_AD2820: CStrUI1
  loc_AD2822: FStStrNoPop var_B0
  loc_AD2825: ConcatStr
  loc_AD2826: FStStrNoPop var_B4
  loc_AD2829: LitStr " AND BimeCtct = "
  loc_AD282C: ConcatStr
  loc_AD282D: FStStrNoPop var_B8
  loc_AD2830: FLdI2 arg_18
  loc_AD2833: CStrUI1
  loc_AD2835: FStStrNoPop var_BC
  loc_AD2838: ConcatStr
  loc_AD2839: FStStrNoPop var_C0
  loc_AD283C: LitStr " AND NumeCtct = "
  loc_AD283F: ConcatStr
  loc_AD2840: FStStrNoPop var_C4
  loc_AD2843: ILdRf arg_1C
  loc_AD2846: CStrI4
  loc_AD2848: FStStrNoPop var_C8
  loc_AD284B: ConcatStr
  loc_AD284C: FStStrNoPop var_CC
  loc_AD284F: LitStr " AND MoviCtct = 1"
  loc_AD2852: ConcatStr
  loc_AD2853: FStStrNoPop var_D0
  loc_AD2856: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AD285B: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_AD287C: FLdRfVar var_D4
  loc_AD287F: FMemLdPr
  loc_AD2884:  = Me.RecordCount
  loc_AD2889: ILdRf var_D4
  loc_AD288C: LitI4 0
  loc_AD2891: GtI4
  loc_AD2892: BranchF loc_AD28D0
  loc_AD2895: FLdRfVar var_FC
  loc_AD2898: FLdRfVar var_EC
  loc_AD289B: LitVarStr var_E8, "FechActr"
  loc_AD28A0: PopAdLdVar
  loc_AD28A1: FLdRfVar var_D8
  loc_AD28A4: FMemLdPr
  loc_AD28A9:  = Me.Fields
  loc_AD28AE: FLdPr var_D8
  loc_AD28B1: from_stack_2 = Me.Item(from_stack_1)
  loc_AD28B6: FLdPr var_EC
  loc_AD28B9:  = Me.Value
  loc_AD28BE: FLdRfVar var_FC
  loc_AD28C1: FnCDateVar
  loc_AD28C3: FStFPR8 var_8C
  loc_AD28C6: FFreeAd var_D8 = ""
  loc_AD28CD: FFree1Var var_FC = ""
  loc_AD28D0: ExitProcR8
End Function

Private Function Proc_270_88_A7B018(arg_C) 'A7B018
  'Data Table: 4C25A4
  loc_A7AFA8: LitStr "SELECT CucuPers FROM apremio WHERE NumeApre = "
  loc_A7AFAB: ILdRf arg_C
  loc_A7AFAE: CStrI4
  loc_A7AFB0: FStStrNoPop var_8C
  loc_A7AFB3: ConcatStr
  loc_A7AFB4: FStStrNoPop var_90
  loc_A7AFB7: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7AFBC: FFreeStr var_8C = ""
  loc_A7AFC3: FLdRfVar var_94
  loc_A7AFC6: FMemLdPr
  loc_A7AFCB:  = Me.RecordCount
  loc_A7AFD0: ILdRf var_94
  loc_A7AFD3: LitI4 0
  loc_A7AFD8: GtI4
  loc_A7AFD9: BranchF loc_A7B016
  loc_A7AFDC: FLdRfVar var_BC
  loc_A7AFDF: FLdRfVar var_AC
  loc_A7AFE2: LitVarStr var_A8, "CucuPers"
  loc_A7AFE7: PopAdLdVar
  loc_A7AFE8: FLdRfVar var_98
  loc_A7AFEB: FMemLdPr
  loc_A7AFF0:  = Me.Fields
  loc_A7AFF5: FLdPr var_98
  loc_A7AFF8: from_stack_2 = Me.Item(from_stack_1)
  loc_A7AFFD: FLdPr var_AC
  loc_A7B000:  = Me.Value
  loc_A7B005: FLdRfVar var_BC
  loc_A7B008: CStrVarTmp
  loc_A7B009: FStStr var_88
  loc_A7B00C: FFreeAd var_98 = ""
  loc_A7B013: FFree1Var var_BC = ""
  loc_A7B016: ExitProc
End Function

Private Function Proc_270_89_A79368(arg_C) 'A79368
  'Data Table: 4C25A4
  loc_A792F8: LitStr "SELECT CodiInju FROM apremio WHERE NumeApre = "
  loc_A792FB: ILdRf arg_C
  loc_A792FE: CStrI4
  loc_A79300: FStStrNoPop var_8C
  loc_A79303: ConcatStr
  loc_A79304: FStStrNoPop var_90
  loc_A79307: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7930C: FFreeStr var_8C = ""
  loc_A79313: FLdRfVar var_94
  loc_A79316: FMemLdPr
  loc_A7931B:  = Me.RecordCount
  loc_A79320: ILdRf var_94
  loc_A79323: LitI4 0
  loc_A79328: GtI4
  loc_A79329: BranchF loc_A79367
  loc_A7932C: FLdRfVar var_BC
  loc_A7932F: FLdRfVar var_AC
  loc_A79332: LitVarStr var_A8, "CodiInju"
  loc_A79337: PopAdLdVar
  loc_A79338: FLdRfVar var_98
  loc_A7933B: FMemLdPr
  loc_A79340:  = Me.Fields
  loc_A79345: FLdPr var_98
  loc_A79348: from_stack_2 = Me.Item(from_stack_1)
  loc_A7934D: FLdPr var_AC
  loc_A79350:  = Me.Value
  loc_A79355: FLdRfVar var_BC
  loc_A79358: CI4Var
  loc_A7935A: FStR4 var_88
  loc_A7935D: FFreeAd var_98 = ""
  loc_A79364: FFree1Var var_BC = ""
  loc_A79367: ExitProc
End Function

Private Function Proc_270_90_A7E070(arg_C) 'A7E070
  'Data Table: 4C25A4
  loc_A7DFF8: ILdRf arg_C
  loc_A7DFFB: FStStrCopy var_8C
  loc_A7DFFE: LitStr "SELECT CodiEnre FROM infogov.usuario WHERE CodiUsua = '"
  loc_A7E001: ILdRf var_8C
  loc_A7E004: ConcatStr
  loc_A7E005: FStStrNoPop var_90
  loc_A7E008: LitStr "'"
  loc_A7E00B: ConcatStr
  loc_A7E00C: FStStrNoPop var_94
  loc_A7E00F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7E014: FFreeStr var_90 = ""
  loc_A7E01B: FLdRfVar var_98
  loc_A7E01E: FMemLdPr
  loc_A7E023:  = Me.RecordCount
  loc_A7E028: ILdRf var_98
  loc_A7E02B: LitI4 0
  loc_A7E030: GtI4
  loc_A7E031: BranchF loc_A7E06E
  loc_A7E034: FLdRfVar var_C0
  loc_A7E037: FLdRfVar var_B0
  loc_A7E03A: LitVarStr var_AC, "CodiEnre"
  loc_A7E03F: PopAdLdVar
  loc_A7E040: FLdRfVar var_9C
  loc_A7E043: FMemLdPr
  loc_A7E048:  = Me.Fields
  loc_A7E04D: FLdPr var_9C
  loc_A7E050: from_stack_2 = Me.Item(from_stack_1)
  loc_A7E055: FLdPr var_B0
  loc_A7E058:  = Me.Value
  loc_A7E05D: FLdRfVar var_C0
  loc_A7E060: CI2Var
  loc_A7E061: FStI2 var_86
  loc_A7E064: FFreeAd var_9C = ""
  loc_A7E06B: FFree1Var var_C0 = ""
  loc_A7E06E: ExitProcI2
End Function

Private Function Proc_270_91_A792B4(arg_C) 'A792B4
  'Data Table: 4C25A4
  loc_A79244: LitStr "SELECT CodiTise FROM difunto WHERE CodiDifu = "
  loc_A79247: ILdRf arg_C
  loc_A7924A: CStrI4
  loc_A7924C: FStStrNoPop var_8C
  loc_A7924F: ConcatStr
  loc_A79250: FStStrNoPop var_90
  loc_A79253: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A79258: FFreeStr var_8C = ""
  loc_A7925F: FLdRfVar var_94
  loc_A79262: FMemLdPr
  loc_A79267:  = Me.RecordCount
  loc_A7926C: ILdRf var_94
  loc_A7926F: LitI4 0
  loc_A79274: GtI4
  loc_A79275: BranchF loc_A792B3
  loc_A79278: FLdRfVar var_BC
  loc_A7927B: FLdRfVar var_AC
  loc_A7927E: LitVarStr var_A8, "CodiTise"
  loc_A79283: PopAdLdVar
  loc_A79284: FLdRfVar var_98
  loc_A79287: FMemLdPr
  loc_A7928C:  = Me.Fields
  loc_A79291: FLdPr var_98
  loc_A79294: from_stack_2 = Me.Item(from_stack_1)
  loc_A79299: FLdPr var_AC
  loc_A7929C:  = Me.Value
  loc_A792A1: FLdRfVar var_BC
  loc_A792A4: CI4Var
  loc_A792A6: FStR4 var_88
  loc_A792A9: FFreeAd var_98 = ""
  loc_A792B0: FFree1Var var_BC = ""
  loc_A792B3: ExitProc
End Function

Private Function Proc_270_92_ADBFCC(arg_C, arg_10, arg_14, arg_18) 'ADBFCC
  'Data Table: 4C25A4
  loc_ADBEB0: ILdRf arg_C
  loc_ADBEB3: FStStrCopy var_8C
  loc_ADBEB6: ILdRf arg_10
  loc_ADBEB9: FStStrCopy var_90
  loc_ADBEBC: ILdRf var_8C
  loc_ADBEBF: FStStrCopy var_98
  loc_ADBEC2: ILdRf var_98
  loc_ADBEC5: LitStr "N"
  loc_ADBEC8: EqStr
  loc_ADBECA: BranchF loc_ADBED8
  loc_ADBECD: LitI2_Byte 1
  loc_ADBECF: CUI1I2
  loc_ADBED1: FStUI1 var_92
  loc_ADBED5: Branch loc_ADBF17
  loc_ADBED8: ILdRf var_98
  loc_ADBEDB: LitStr "F"
  loc_ADBEDE: EqStr
  loc_ADBEE0: BranchF loc_ADBEEE
  loc_ADBEE3: LitI2_Byte 2
  loc_ADBEE5: CUI1I2
  loc_ADBEE7: FStUI1 var_92
  loc_ADBEEB: Branch loc_ADBF17
  loc_ADBEEE: ILdRf var_98
  loc_ADBEF1: LitStr "M"
  loc_ADBEF4: EqStr
  loc_ADBEF6: BranchF loc_ADBF04
  loc_ADBEF9: LitI2_Byte 3
  loc_ADBEFB: CUI1I2
  loc_ADBEFD: FStUI1 var_92
  loc_ADBF01: Branch loc_ADBF17
  loc_ADBF04: ILdRf var_98
  loc_ADBF07: LitStr "U"
  loc_ADBF0A: EqStr
  loc_ADBF0C: BranchF loc_ADBF17
  loc_ADBF0F: LitI2_Byte 4
  loc_ADBF11: CUI1I2
  loc_ADBF13: FStUI1 var_92
  loc_ADBF17: LitStr "SELECT CodiDifu FROM difunto WHERE CodiTise = "
  loc_ADBF1A: FLdUI1
  loc_ADBF1E: CStrI2
  loc_ADBF20: FStStrNoPop var_9C
  loc_ADBF23: ConcatStr
  loc_ADBF24: FStStrNoPop var_A0
  loc_ADBF27: LitStr " AND SeccDifu = '"
  loc_ADBF2A: ConcatStr
  loc_ADBF2B: FStStrNoPop var_A4
  loc_ADBF2E: ILdRf var_90
  loc_ADBF31: ConcatStr
  loc_ADBF32: FStStrNoPop var_A8
  loc_ADBF35: LitStr "' AND FilaDifu = "
  loc_ADBF38: ConcatStr
  loc_ADBF39: FStStrNoPop var_AC
  loc_ADBF3C: FLdI2 arg_14
  loc_ADBF3F: CStrUI1
  loc_ADBF41: FStStrNoPop var_B0
  loc_ADBF44: ConcatStr
  loc_ADBF45: FStStrNoPop var_B4
  loc_ADBF48: LitStr " AND NumeDifu = "
  loc_ADBF4B: ConcatStr
  loc_ADBF4C: FStStrNoPop var_B8
  loc_ADBF4F: FLdI2 arg_18
  loc_ADBF52: CStrUI1
  loc_ADBF54: FStStrNoPop var_BC
  loc_ADBF57: ConcatStr
  loc_ADBF58: FStStrNoPop var_C0
  loc_ADBF5B: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_ADBF60: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_ADBF77: FLdRfVar var_C4
  loc_ADBF7A: FMemLdPr
  loc_ADBF7F:  = Me.RecordCount
  loc_ADBF84: ILdRf var_C4
  loc_ADBF87: LitI4 0
  loc_ADBF8C: GtI4
  loc_ADBF8D: BranchF loc_ADBFCA
  loc_ADBF90: FLdRfVar var_EC
  loc_ADBF93: FLdRfVar var_DC
  loc_ADBF96: LitVarStr var_D8, "CodiDifu"
  loc_ADBF9B: PopAdLdVar
  loc_ADBF9C: FLdRfVar var_C8
  loc_ADBF9F: FMemLdPr
  loc_ADBFA4:  = Me.Fields
  loc_ADBFA9: FLdPr var_C8
  loc_ADBFAC: from_stack_2 = Me.Item(from_stack_1)
  loc_ADBFB1: FLdPr var_DC
  loc_ADBFB4:  = Me.Value
  loc_ADBFB9: FLdRfVar var_EC
  loc_ADBFBC: CStrVarTmp
  loc_ADBFBD: FStStr var_88
  loc_ADBFC0: FFreeAd var_C8 = ""
  loc_ADBFC7: FFree1Var var_EC = ""
  loc_ADBFCA: ExitProc
End Function

Private Function Proc_270_93_A79E20(arg_C) 'A79E20
  'Data Table: 4C25A4
  loc_A79DB0: LitStr "SELECT DetaInju FROM instjudi WHERE CodiInju = "
  loc_A79DB3: FLdI2 arg_C
  loc_A79DB6: CStrUI1
  loc_A79DB8: FStStrNoPop var_8C
  loc_A79DBB: ConcatStr
  loc_A79DBC: FStStrNoPop var_90
  loc_A79DBF: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A79DC4: FFreeStr var_8C = ""
  loc_A79DCB: FLdRfVar var_94
  loc_A79DCE: FMemLdPr
  loc_A79DD3:  = Me.RecordCount
  loc_A79DD8: ILdRf var_94
  loc_A79DDB: LitI4 0
  loc_A79DE0: GtI4
  loc_A79DE1: BranchF loc_A79E1E
  loc_A79DE4: FLdRfVar var_BC
  loc_A79DE7: FLdRfVar var_AC
  loc_A79DEA: LitVarStr var_A8, "DetaInju"
  loc_A79DEF: PopAdLdVar
  loc_A79DF0: FLdRfVar var_98
  loc_A79DF3: FMemLdPr
  loc_A79DF8:  = Me.Fields
  loc_A79DFD: FLdPr var_98
  loc_A79E00: from_stack_2 = Me.Item(from_stack_1)
  loc_A79E05: FLdPr var_AC
  loc_A79E08:  = Me.Value
  loc_A79E0D: FLdRfVar var_BC
  loc_A79E10: CStrVarTmp
  loc_A79E11: FStStr var_88
  loc_A79E14: FFreeAd var_98 = ""
  loc_A79E1B: FFree1Var var_BC = ""
  loc_A79E1E: ExitProc
End Function

Private Function Proc_270_94_A79B40(arg_C) 'A79B40
  'Data Table: 4C25A4
  loc_A79AD0: LitStr "SELECT DetaTram FROM tramite WHERE CodiTram = "
  loc_A79AD3: FLdI2 arg_C
  loc_A79AD6: CStrUI1
  loc_A79AD8: FStStrNoPop var_8C
  loc_A79ADB: ConcatStr
  loc_A79ADC: FStStrNoPop var_90
  loc_A79ADF: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A79AE4: FFreeStr var_8C = ""
  loc_A79AEB: FLdRfVar var_94
  loc_A79AEE: FMemLdPr
  loc_A79AF3:  = Me.RecordCount
  loc_A79AF8: ILdRf var_94
  loc_A79AFB: LitI4 0
  loc_A79B00: GtI4
  loc_A79B01: BranchF loc_A79B3E
  loc_A79B04: FLdRfVar var_BC
  loc_A79B07: FLdRfVar var_AC
  loc_A79B0A: LitVarStr var_A8, "DetaTram"
  loc_A79B0F: PopAdLdVar
  loc_A79B10: FLdRfVar var_98
  loc_A79B13: FMemLdPr
  loc_A79B18:  = Me.Fields
  loc_A79B1D: FLdPr var_98
  loc_A79B20: from_stack_2 = Me.Item(from_stack_1)
  loc_A79B25: FLdPr var_AC
  loc_A79B28:  = Me.Value
  loc_A79B2D: FLdRfVar var_BC
  loc_A79B30: CStrVarTmp
  loc_A79B31: FStStr var_88
  loc_A79B34: FFreeAd var_98 = ""
  loc_A79B3B: FFree1Var var_BC = ""
  loc_A79B3E: ExitProc
End Function

Private Function Proc_270_95_AA3D98(arg_C, arg_10) 'AA3D98
  'Data Table: 4C25A4
  loc_AA3CF8: LitStr "SELECT CodiCome FROM comercio WHERE CodiCome <> "
  loc_AA3CFB: ILdRf arg_10
  loc_AA3CFE: CStrI4
  loc_AA3D00: FStStrNoPop var_8C
  loc_AA3D03: ConcatStr
  loc_AA3D04: FStStrNoPop var_90
  loc_AA3D07: LitStr " AND  CodiInmu = "
  loc_AA3D0A: ConcatStr
  loc_AA3D0B: FStStrNoPop var_94
  loc_AA3D0E: ILdRf arg_C
  loc_AA3D11: CStrI4
  loc_AA3D13: FStStrNoPop var_98
  loc_AA3D16: ConcatStr
  loc_AA3D17: FStStrNoPop var_9C
  loc_AA3D1A: LitStr " AND comercio.FebaCome IS NULL"
  loc_AA3D1D: ConcatStr
  loc_AA3D1E: FStStrNoPop var_A0
  loc_AA3D21: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AA3D26: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_AA3D35: FLdRfVar var_A4
  loc_AA3D38: FMemLdPr
  loc_AA3D3D:  = Me.RecordCount
  loc_AA3D42: ILdRf var_A4
  loc_AA3D45: LitI4 0
  loc_AA3D4A: GtI4
  loc_AA3D4B: BranchF loc_AA3D95
  loc_AA3D4E: LitVarStr var_DC, "En el inmueble seleccionado se encuentra el comercio numero: "
  loc_AA3D53: FLdRfVar var_CC
  loc_AA3D56: FLdRfVar var_BC
  loc_AA3D59: LitVarStr var_B8, "CodiCome"
  loc_AA3D5E: PopAdLdVar
  loc_AA3D5F: FLdRfVar var_A8
  loc_AA3D62: FMemLdPr
  loc_AA3D67:  = Me.Fields
  loc_AA3D6C: FLdPr var_A8
  loc_AA3D6F: from_stack_2 = Me.Item(from_stack_1)
  loc_AA3D74: FLdPr var_BC
  loc_AA3D77:  = Me.Value
  loc_AA3D7C: FLdRfVar var_CC
  loc_AA3D7F: ConcatVar var_EC
  loc_AA3D83: CStrVarTmp
  loc_AA3D84: FStStr var_88
  loc_AA3D87: FFreeAd var_A8 = ""
  loc_AA3D8E: FFreeVar var_CC = ""
  loc_AA3D95: ExitProc
End Function

Private Function Proc_270_96_A7F120(arg_C) 'A7F120
  'Data Table: 4C25A4
  loc_A7F0A0: LitI2_Byte 0
  loc_A7F0A2: FStI2 var_86
  loc_A7F0A5: LitStr "SELECT CodiTifa FROM facipago WHERE CodiFapa = "
  loc_A7F0A8: ILdRf arg_C
  loc_A7F0AB: CStrI4
  loc_A7F0AD: FStStrNoPop var_8C
  loc_A7F0B0: ConcatStr
  loc_A7F0B1: FStStrNoPop var_90
  loc_A7F0B4: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7F0B9: FFreeStr var_8C = ""
  loc_A7F0C0: FLdRfVar var_94
  loc_A7F0C3: FMemLdPr
  loc_A7F0C8:  = Me.RecordCount
  loc_A7F0CD: ILdRf var_94
  loc_A7F0D0: LitI4 0
  loc_A7F0D5: GtI4
  loc_A7F0D6: BranchF loc_A7F11C
  loc_A7F0D9: FLdRfVar var_BC
  loc_A7F0DC: FLdRfVar var_AC
  loc_A7F0DF: LitVarStr var_A8, "CodiTifa"
  loc_A7F0E4: PopAdLdVar
  loc_A7F0E5: FLdRfVar var_98
  loc_A7F0E8: FMemLdPr
  loc_A7F0ED:  = Me.Fields
  loc_A7F0F2: FLdPr var_98
  loc_A7F0F5: from_stack_2 = Me.Item(from_stack_1)
  loc_A7F0FA: FLdPr var_AC
  loc_A7F0FD:  = Me.Value
  loc_A7F102: FLdRfVar var_BC
  loc_A7F105: FnCIntVar
  loc_A7F107: LitI2_Byte &H15
  loc_A7F109: EqI2
  loc_A7F10A: FFreeAd var_98 = ""
  loc_A7F111: FFree1Var var_BC = ""
  loc_A7F114: BranchF loc_A7F11C
  loc_A7F117: LitI2_Byte &HFF
  loc_A7F119: FStI2 var_86
  loc_A7F11C: ExitProcI2
End Function

Private Function Proc_270_97_A8D410(arg_C, arg_10) 'A8D410
  'Data Table: 4C25A4
  loc_A8D388: LitStr "SELECT ExpeBole FROM boleto WHERE PeriBole = "
  loc_A8D38B: FLdI2 arg_C
  loc_A8D38E: CStrUI1
  loc_A8D390: FStStrNoPop var_8C
  loc_A8D393: ConcatStr
  loc_A8D394: FStStrNoPop var_90
  loc_A8D397: LitStr " AND NumeBole = "
  loc_A8D39A: ConcatStr
  loc_A8D39B: FStStrNoPop var_94
  loc_A8D39E: ILdRf arg_10
  loc_A8D3A1: CStrI4
  loc_A8D3A3: FStStrNoPop var_98
  loc_A8D3A6: ConcatStr
  loc_A8D3A7: FStStrNoPop var_9C
  loc_A8D3AA: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A8D3AF: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A8D3BC: FLdRfVar var_A0
  loc_A8D3BF: FMemLdPr
  loc_A8D3C4:  = Me.RecordCount
  loc_A8D3C9: ILdRf var_A0
  loc_A8D3CC: LitI4 0
  loc_A8D3D1: GtI4
  loc_A8D3D2: BranchF loc_A8D40F
  loc_A8D3D5: FLdRfVar var_C8
  loc_A8D3D8: FLdRfVar var_B8
  loc_A8D3DB: LitVarStr var_B4, "ExpeBole"
  loc_A8D3E0: PopAdLdVar
  loc_A8D3E1: FLdRfVar var_A4
  loc_A8D3E4: FMemLdPr
  loc_A8D3E9:  = Me.Fields
  loc_A8D3EE: FLdPr var_A4
  loc_A8D3F1: from_stack_2 = Me.Item(from_stack_1)
  loc_A8D3F6: FLdPr var_B8
  loc_A8D3F9:  = Me.Value
  loc_A8D3FE: FLdRfVar var_C8
  loc_A8D401: CStrVarTmp
  loc_A8D402: FStStr var_88
  loc_A8D405: FFreeAd var_A4 = ""
  loc_A8D40C: FFree1Var var_C8 = ""
  loc_A8D40F: ExitProc
End Function

Private Function Proc_270_98_AD3FF0(arg_C) 'AD3FF0
  'Data Table: 4C25A4
  loc_AD3EF0: ILdRf arg_C
  loc_AD3EF3: FStStrCopy var_8C
  loc_AD3EF6: LitStr "SELECT ObseDeva, CodiOfic, CuenCtct FROM deudvari WHERE CodiDeva = '"
  loc_AD3EF9: ILdRf var_8C
  loc_AD3EFC: ConcatStr
  loc_AD3EFD: FStStrNoPop var_90
  loc_AD3F00: LitStr "'"
  loc_AD3F03: ConcatStr
  loc_AD3F04: FStStrNoPop var_94
  loc_AD3F07: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AD3F0C: FFreeStr var_90 = ""
  loc_AD3F13: FLdRfVar var_98
  loc_AD3F16: FMemLdPr
  loc_AD3F1B:  = Me.RecordCount
  loc_AD3F20: ILdRf var_98
  loc_AD3F23: LitI4 0
  loc_AD3F28: GtI4
  loc_AD3F29: BranchF loc_AD3FEE
  loc_AD3F2C: FLdRfVar var_C0
  loc_AD3F2F: FLdRfVar var_B0
  loc_AD3F32: LitVarStr var_AC, "ObseDeva"
  loc_AD3F37: PopAdLdVar
  loc_AD3F38: FLdRfVar var_9C
  loc_AD3F3B: FMemLdPr
  loc_AD3F40:  = Me.Fields
  loc_AD3F45: FLdPr var_9C
  loc_AD3F48: from_stack_2 = Me.Item(from_stack_1)
  loc_AD3F4D: FLdPr var_B0
  loc_AD3F50:  = Me.Value
  loc_AD3F55: FLdRfVar var_C0
  loc_AD3F58: LitVarStr var_D0, "- OF.: "
  loc_AD3F5D: ConcatVar var_E0
  loc_AD3F61: FLdRfVar var_108
  loc_AD3F64: FLdRfVar var_F8
  loc_AD3F67: LitVarStr var_F4, "CodiOfic"
  loc_AD3F6C: PopAdLdVar
  loc_AD3F6D: FLdRfVar var_E4
  loc_AD3F70: FMemLdPr
  loc_AD3F75:  = Me.Fields
  loc_AD3F7A: FLdPr var_E4
  loc_AD3F7D: from_stack_2 = Me.Item(from_stack_1)
  loc_AD3F82: FLdPr var_F8
  loc_AD3F85:  = Me.Value
  loc_AD3F8A: FLdRfVar var_108
  loc_AD3F8D: ConcatVar var_118
  loc_AD3F91: LitVarStr var_128, " - Cta: "
  loc_AD3F96: ConcatVar var_138
  loc_AD3F9A: FLdRfVar var_160
  loc_AD3F9D: FLdRfVar var_150
  loc_AD3FA0: LitVarStr var_14C, "CuenCtct"
  loc_AD3FA5: PopAdLdVar
  loc_AD3FA6: FLdRfVar var_13C
  loc_AD3FA9: FMemLdPr
  loc_AD3FAE:  = Me.Fields
  loc_AD3FB3: FLdPr var_13C
  loc_AD3FB6: from_stack_2 = Me.Item(from_stack_1)
  loc_AD3FBB: FLdPr var_150
  loc_AD3FBE:  = Me.Value
  loc_AD3FC3: FLdRfVar var_160
  loc_AD3FC6: ConcatVar var_170
  loc_AD3FCA: CStrVarTmp
  loc_AD3FCB: FStStr var_88
  loc_AD3FCE: FFreeAd var_9C = "": var_B0 = "": var_E4 = "": var_F8 = "": var_13C = ""
  loc_AD3FDD: FFreeVar var_C0 = "": var_E0 = "": var_108 = "": var_118 = "": var_138 = "": var_160 = ""
  loc_AD3FEE: ExitProc
End Function

Private Function Proc_270_99_A7F364(arg_C) 'A7F364
  'Data Table: 4C25A4
  loc_A7F2EC: ILdRf arg_C
  loc_A7F2EF: FStStrCopy var_8C
  loc_A7F2F2: LitStr "SELECT ExpeDeva FROM deudvari WHERE CodiDeva = '"
  loc_A7F2F5: ILdRf var_8C
  loc_A7F2F8: ConcatStr
  loc_A7F2F9: FStStrNoPop var_90
  loc_A7F2FC: LitStr "'"
  loc_A7F2FF: ConcatStr
  loc_A7F300: FStStrNoPop var_94
  loc_A7F303: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7F308: FFreeStr var_90 = ""
  loc_A7F30F: FLdRfVar var_98
  loc_A7F312: FMemLdPr
  loc_A7F317:  = Me.RecordCount
  loc_A7F31C: ILdRf var_98
  loc_A7F31F: LitI4 0
  loc_A7F324: GtI4
  loc_A7F325: BranchF loc_A7F362
  loc_A7F328: FLdRfVar var_C0
  loc_A7F32B: FLdRfVar var_B0
  loc_A7F32E: LitVarStr var_AC, "ExpeDeva"
  loc_A7F333: PopAdLdVar
  loc_A7F334: FLdRfVar var_9C
  loc_A7F337: FMemLdPr
  loc_A7F33C:  = Me.Fields
  loc_A7F341: FLdPr var_9C
  loc_A7F344: from_stack_2 = Me.Item(from_stack_1)
  loc_A7F349: FLdPr var_B0
  loc_A7F34C:  = Me.Value
  loc_A7F351: FLdRfVar var_C0
  loc_A7F354: CStrVarTmp
  loc_A7F355: FStStr var_88
  loc_A7F358: FFreeAd var_9C = ""
  loc_A7F35F: FFree1Var var_C0 = ""
  loc_A7F362: ExitProc
End Function

Private Function Proc_270_100_A7F428(arg_C) 'A7F428
  'Data Table: 4C25A4
  loc_A7F3B0: ILdRf arg_C
  loc_A7F3B3: FStStrCopy var_8C
  loc_A7F3B6: LitStr "SELECT CucuPers FROM deudvari WHERE CodiDeva = '"
  loc_A7F3B9: ILdRf var_8C
  loc_A7F3BC: ConcatStr
  loc_A7F3BD: FStStrNoPop var_90
  loc_A7F3C0: LitStr "'"
  loc_A7F3C3: ConcatStr
  loc_A7F3C4: FStStrNoPop var_94
  loc_A7F3C7: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7F3CC: FFreeStr var_90 = ""
  loc_A7F3D3: FLdRfVar var_98
  loc_A7F3D6: FMemLdPr
  loc_A7F3DB:  = Me.RecordCount
  loc_A7F3E0: ILdRf var_98
  loc_A7F3E3: LitI4 0
  loc_A7F3E8: GtI4
  loc_A7F3E9: BranchF loc_A7F426
  loc_A7F3EC: FLdRfVar var_C0
  loc_A7F3EF: FLdRfVar var_B0
  loc_A7F3F2: LitVarStr var_AC, "CucuPers"
  loc_A7F3F7: PopAdLdVar
  loc_A7F3F8: FLdRfVar var_9C
  loc_A7F3FB: FMemLdPr
  loc_A7F400:  = Me.Fields
  loc_A7F405: FLdPr var_9C
  loc_A7F408: from_stack_2 = Me.Item(from_stack_1)
  loc_A7F40D: FLdPr var_B0
  loc_A7F410:  = Me.Value
  loc_A7F415: FLdRfVar var_C0
  loc_A7F418: CStrVarTmp
  loc_A7F419: FStStr var_88
  loc_A7F41C: FFreeAd var_9C = ""
  loc_A7F423: FFree1Var var_C0 = ""
  loc_A7F426: ExitProc
End Function

Private Function Proc_270_101_AD5D38(arg_10, arg_14) 'AD5D38
  'Data Table: 4C25A4
  loc_AD5C3C: ILdRf arg_10
  loc_AD5C3F: FStStrCopy var_8C
  loc_AD5C42: ILdRf arg_14
  loc_AD5C45: FStStrCopy var_90
  loc_AD5C48: LitStr "SELECT SUM(CredCtct) as Saldo FROM ctacte "
  loc_AD5C4B: LitStr " USE INDEX (idxctct06)"
  loc_AD5C4E: ConcatStr
  loc_AD5C4F: FStStrNoPop var_94
  loc_AD5C52: LitStr " WHERE CodiOfic = "
  loc_AD5C55: ConcatStr
  loc_AD5C56: FStStrNoPop var_98
  loc_AD5C59: FLdUI1
  loc_AD5C5D: CStrI2
  loc_AD5C5F: FStStrNoPop var_9C
  loc_AD5C62: ConcatStr
  loc_AD5C63: FStStrNoPop var_A0
  loc_AD5C66: LitStr " AND CuenCtct = '"
  loc_AD5C69: ConcatStr
  loc_AD5C6A: FStStrNoPop var_A4
  loc_AD5C6D: ILdRf var_8C
  loc_AD5C70: ConcatStr
  loc_AD5C71: FStStrNoPop var_A8
  loc_AD5C74: LitStr "'"
  loc_AD5C77: ConcatStr
  loc_AD5C78: FStStrNoPop var_AC
  loc_AD5C7B: LitStr " AND CodiTimo IN (11,12,14,15)"
  loc_AD5C7E: ConcatStr
  loc_AD5C7F: FStStrNoPop var_B0
  loc_AD5C82: LitStr " AND ExpeCtct = '"
  loc_AD5C85: ConcatStr
  loc_AD5C86: FStStrNoPop var_B4
  loc_AD5C89: ILdRf var_90
  loc_AD5C8C: ConcatStr
  loc_AD5C8D: FStStrNoPop var_B8
  loc_AD5C90: LitStr "'"
  loc_AD5C93: ConcatStr
  loc_AD5C94: FStStrNoPop var_BC
  loc_AD5C97: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AD5C9C: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_AD5CB5: FLdRfVar var_C0
  loc_AD5CB8: FMemLdPr
  loc_AD5CBD:  = Me.RecordCount
  loc_AD5CC2: ILdRf var_C0
  loc_AD5CC5: LitI4 0
  loc_AD5CCA: GtI4
  loc_AD5CCB: BranchF loc_AD5D31
  loc_AD5CCE: FLdRfVar var_D8
  loc_AD5CD1: LitVarStr var_D4, "Saldo"
  loc_AD5CD6: PopAdLdVar
  loc_AD5CD7: FLdRfVar var_C4
  loc_AD5CDA: FMemLdPr
  loc_AD5CDF:  = Me.Fields
  loc_AD5CE4: FLdPr var_C4
  loc_AD5CE7: from_stack_2 = Me.Item(from_stack_1)
  loc_AD5CEC: LitVarStr var_128, " Total del Crédito por Expe: "
  loc_AD5CF1: LitI4 1
  loc_AD5CF6: LitI4 1
  loc_AD5CFB: LitVarStr var_F8, "0.00"
  loc_AD5D00: FStVarCopyObj var_108
  loc_AD5D03: FLdRfVar var_108
  loc_AD5D06: FLdZeroAd var_D8
  loc_AD5D09: CVarAd
  loc_AD5D0D: FLdRfVar var_118
  loc_AD5D10: ImpAdCallFPR4  = Format(, )
  loc_AD5D15: FLdRfVar var_118
  loc_AD5D18: ConcatVar var_138
  loc_AD5D1C: CStrVarTmp
  loc_AD5D1D: FStStr var_88
  loc_AD5D20: FFree1Ad var_C4
  loc_AD5D23: FFreeVar var_E8 = "": var_108 = "": var_118 = ""
  loc_AD5D2E: Branch loc_AD5D37
  loc_AD5D31: LitStr vbNullString
  loc_AD5D34: FStStrCopy var_88
  loc_AD5D37: ExitProc
End Function

Private Function Proc_270_102_AB7ED4(arg_10, arg_14) 'AB7ED4
  'Data Table: 4C25A4
  loc_AB7E10: ILdRf arg_10
  loc_AB7E13: FStStrCopy var_90
  loc_AB7E16: ILdRf arg_14
  loc_AB7E19: FStStrCopy var_94
  loc_AB7E1C: LitStr "SELECT IFNULL(SUM(DebeCtct),0)-IFNULL(SUM(CredCtct),0) as Saldo FROM ctacte "
  loc_AB7E1F: LitStr " WHERE CodiOfic = "
  loc_AB7E22: ConcatStr
  loc_AB7E23: FStStrNoPop var_98
  loc_AB7E26: FLdUI1
  loc_AB7E2A: CStrI2
  loc_AB7E2C: FStStrNoPop var_9C
  loc_AB7E2F: ConcatStr
  loc_AB7E30: FStStrNoPop var_A0
  loc_AB7E33: LitStr " AND CuenCtct = '"
  loc_AB7E36: ConcatStr
  loc_AB7E37: FStStrNoPop var_A4
  loc_AB7E3A: ILdRf var_90
  loc_AB7E3D: ConcatStr
  loc_AB7E3E: FStStrNoPop var_A8
  loc_AB7E41: LitStr "'"
  loc_AB7E44: ConcatStr
  loc_AB7E45: FStStrNoPop var_AC
  loc_AB7E48: LitStr " AND NOT (PeriCtct = 2013 AND BimeCtct = 7 AND CodiConc = '"
  loc_AB7E4B: ConcatStr
  loc_AB7E4C: FStStrNoPop var_B0
  loc_AB7E4F: ILdRf var_94
  loc_AB7E52: ConcatStr
  loc_AB7E53: FStStrNoPop var_B4
  loc_AB7E56: LitStr "' AND DetaCtct = 'AFORO AUTOMATICO POR DESCUENTO DUPLICADO')"
  loc_AB7E59: ConcatStr
  loc_AB7E5A: FStStrNoPop var_B8
  loc_AB7E5D: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AB7E62: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_AB7E77: FLdRfVar var_BC
  loc_AB7E7A: FMemLdPr
  loc_AB7E7F:  = Me.RecordCount
  loc_AB7E84: ILdRf var_BC
  loc_AB7E87: LitI4 0
  loc_AB7E8C: GtI4
  loc_AB7E8D: BranchF loc_AB7ECD
  loc_AB7E90: FLdRfVar var_E4
  loc_AB7E93: FLdRfVar var_D4
  loc_AB7E96: LitVarStr var_D0, "Saldo"
  loc_AB7E9B: PopAdLdVar
  loc_AB7E9C: FLdRfVar var_C0
  loc_AB7E9F: FMemLdPr
  loc_AB7EA4:  = Me.Fields
  loc_AB7EA9: FLdPr var_C0
  loc_AB7EAC: from_stack_2 = Me.Item(from_stack_1)
  loc_AB7EB1: FLdPr var_D4
  loc_AB7EB4:  = Me.Value
  loc_AB7EB9: FLdRfVar var_E4
  loc_AB7EBC: CR4Var
  loc_AB7EBD: FStFPR8 var_8C
  loc_AB7EC0: FFreeAd var_C0 = ""
  loc_AB7EC7: FFree1Var var_E4 = ""
  loc_AB7ECA: Branch loc_AB7ED3
  loc_AB7ECD: LitI2_Byte 0
  loc_AB7ECF: CR8I2
  loc_AB7ED0: FStFPR8 var_8C
  loc_AB7ED3: ExitProcR8
End Function

Private Function Proc_270_103_AA3AA8(arg_10) 'AA3AA8
  'Data Table: 4C25A4
  loc_AA3A04: ILdRf arg_10
  loc_AA3A07: FStStrCopy var_90
  loc_AA3A0A: LitStr "SELECT IFNULL(SUM(DebeCtct),0)-IFNULL(SUM(CredCtct),0) as Saldo FROM ctacte "
  loc_AA3A0D: LitStr " WHERE CodiOfic = "
  loc_AA3A10: ConcatStr
  loc_AA3A11: FStStrNoPop var_94
  loc_AA3A14: FLdUI1
  loc_AA3A18: CStrI2
  loc_AA3A1A: FStStrNoPop var_98
  loc_AA3A1D: ConcatStr
  loc_AA3A1E: FStStrNoPop var_9C
  loc_AA3A21: LitStr " AND CuenCtct = '"
  loc_AA3A24: ConcatStr
  loc_AA3A25: FStStrNoPop var_A0
  loc_AA3A28: ILdRf var_90
  loc_AA3A2B: ConcatStr
  loc_AA3A2C: FStStrNoPop var_A4
  loc_AA3A2F: LitStr "'"
  loc_AA3A32: ConcatStr
  loc_AA3A33: FStStrNoPop var_A8
  loc_AA3A36: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AA3A3B: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_AA3A4A: FLdRfVar var_AC
  loc_AA3A4D: FMemLdPr
  loc_AA3A52:  = Me.RecordCount
  loc_AA3A57: ILdRf var_AC
  loc_AA3A5A: LitI4 0
  loc_AA3A5F: GtI4
  loc_AA3A60: BranchF loc_AA3AA0
  loc_AA3A63: FLdRfVar var_D4
  loc_AA3A66: FLdRfVar var_C4
  loc_AA3A69: LitVarStr var_C0, "Saldo"
  loc_AA3A6E: PopAdLdVar
  loc_AA3A6F: FLdRfVar var_B0
  loc_AA3A72: FMemLdPr
  loc_AA3A77:  = Me.Fields
  loc_AA3A7C: FLdPr var_B0
  loc_AA3A7F: from_stack_2 = Me.Item(from_stack_1)
  loc_AA3A84: FLdPr var_C4
  loc_AA3A87:  = Me.Value
  loc_AA3A8C: FLdRfVar var_D4
  loc_AA3A8F: CR4Var
  loc_AA3A90: FStFPR8 var_8C
  loc_AA3A93: FFreeAd var_B0 = ""
  loc_AA3A9A: FFree1Var var_D4 = ""
  loc_AA3A9D: Branch loc_AA3AA6
  loc_AA3AA0: LitI2_Byte 0
  loc_AA3AA2: CR8I2
  loc_AA3AA3: FStFPR8 var_8C
  loc_AA3AA6: ExitProcR8
End Function

Private Function Proc_270_104_B20D90(arg_10, arg_14) 'B20D90
  'Data Table: 4C25A4
  loc_B20B28: ILdRf arg_10
  loc_B20B2B: FStStrCopy var_90
  loc_B20B2E: ILdRf arg_14
  loc_B20B31: FStStrCopy var_94
  loc_B20B34: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_ctacte; CREATE TEMPORARY TABLE tmp_ctacte"
  loc_B20B37: LitStr " SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, DebeCtct, CredCtct FROM ctacte "
  loc_B20B3A: ConcatStr
  loc_B20B3B: FStStrNoPop var_98
  loc_B20B3E: LitStr " USE INDEX (idxctacte08)"
  loc_B20B41: ConcatStr
  loc_B20B42: FStStrNoPop var_9C
  loc_B20B45: LitStr " WHERE CodiOfic = "
  loc_B20B48: ConcatStr
  loc_B20B49: FStStrNoPop var_A0
  loc_B20B4C: FLdUI1
  loc_B20B50: CStrI2
  loc_B20B52: FStStrNoPop var_A4
  loc_B20B55: ConcatStr
  loc_B20B56: FStStrNoPop var_A8
  loc_B20B59: LitStr " AND CuenCtct = '"
  loc_B20B5C: ConcatStr
  loc_B20B5D: FStStrNoPop var_AC
  loc_B20B60: ILdRf var_90
  loc_B20B63: ConcatStr
  loc_B20B64: FStStrNoPop var_B0
  loc_B20B67: LitStr "'"
  loc_B20B6A: ConcatStr
  loc_B20B6B: FStStrNoPop var_B4
  loc_B20B6E: LitStr " AND MoviCtct = 1 "
  loc_B20B71: ConcatStr
  loc_B20B72: FStStrNoPop var_B8
  loc_B20B75: LitStr " AND FeveCtct < '"
  loc_B20B78: ConcatStr
  loc_B20B79: FStStrNoPop var_EC
  loc_B20B7C: LitI4 1
  loc_B20B81: LitI4 1
  loc_B20B86: LitVarStr var_D8, "yyyy-mm-dd"
  loc_B20B8B: FStVarCopyObj var_E8
  loc_B20B8E: FLdRfVar var_E8
  loc_B20B91: FLdRfVar var_94
  loc_B20B94: CVarRef
  loc_B20B99: ImpAdCallI2 Format$(, )
  loc_B20B9E: FStStrNoPop var_F0
  loc_B20BA1: ConcatStr
  loc_B20BA2: FStStrNoPop var_F4
  loc_B20BA5: LitStr "'"
  loc_B20BA8: ConcatStr
  loc_B20BA9: FStStrNoPop var_F8
  loc_B20BAC: LitStr " ORDER BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_B20BAF: ConcatStr
  loc_B20BB0: FStStrNoPop var_FC
  loc_B20BB3: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B20BB8: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B20BD7: FFree1Var var_E8 = ""
  loc_B20BDA: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_ctacte1; CREATE TEMPORARY TABLE tmp_ctacte1"
  loc_B20BDD: LitStr " SELECT SUM(ctacte.DebeCtct)-SUM(ctacte.CredCtct) as Saldo FROM ctacte"
  loc_B20BE0: ConcatStr
  loc_B20BE1: FStStrNoPop var_98
  loc_B20BE4: LitStr " INNER JOIN tmp_ctacte ON tmp_ctacte.CodiOfic = ctacte.CodiOfic AND tmp_ctacte.CuenCtct = ctacte.CuenCtct"
  loc_B20BE7: ConcatStr
  loc_B20BE8: FStStrNoPop var_9C
  loc_B20BEB: LitStr " AND tmp_ctacte.PeriCtct = ctacte.PeriCtct and tmp_ctacte.BimeCtct = ctacte.BimeCtct"
  loc_B20BEE: ConcatStr
  loc_B20BEF: FStStrNoPop var_A0
  loc_B20BF2: LitStr " AND tmp_ctacte.NumeCtct = ctacte.NumeCtct"
  loc_B20BF5: ConcatStr
  loc_B20BF6: FStStrNoPop var_A4
  loc_B20BF9: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.NumeCtct"
  loc_B20BFC: ConcatStr
  loc_B20BFD: FStStrNoPop var_A8
  loc_B20C00: LitStr " having saldo <> 0;"
  loc_B20C03: ConcatStr
  loc_B20C04: FStStrNoPop var_AC
  loc_B20C07: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B20C0C: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_B20C1B: LitStr "SELECT IFNULL(SUM(saldo),0) as Saldo FROM tmp_ctacte1"
  loc_B20C1E: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B20C23: FLdRfVar var_100
  loc_B20C26: FMemLdPr
  loc_B20C2B:  = Me.RecordCount
  loc_B20C30: ILdRf var_100
  loc_B20C33: LitI4 0
  loc_B20C38: GtI4
  loc_B20C39: BranchF loc_B20C7A
  loc_B20C3C: FLdRfVar var_E8
  loc_B20C3F: FLdRfVar var_108
  loc_B20C42: LitVarStr var_C8, "Saldo"
  loc_B20C47: PopAdLdVar
  loc_B20C48: FLdRfVar var_104
  loc_B20C4B: FMemLdPr
  loc_B20C50:  = Me.Fields
  loc_B20C55: FLdPr var_104
  loc_B20C58: from_stack_2 = Me.Item(from_stack_1)
  loc_B20C5D: FLdPr var_108
  loc_B20C60:  = Me.Value
  loc_B20C65: FLdRfVar var_E8
  loc_B20C68: FnCDblVar
  loc_B20C6A: FStFPR8 var_8C
  loc_B20C6D: FFreeAd var_104 = ""
  loc_B20C74: FFree1Var var_E8 = ""
  loc_B20C77: Branch loc_B20C80
  loc_B20C7A: LitI2_Byte 0
  loc_B20C7C: CR8I2
  loc_B20C7D: FStFPR8 var_8C
  loc_B20C80: FLdFPR8 var_8C
  loc_B20C83: LitI2_Byte 0
  loc_B20C85: CR8I2
  loc_B20C86: EqR4
  loc_B20C87: BranchF loc_B20D8C
  loc_B20C8A: LitStr "SELECT * FROM facipago WHERE CodiOfic = "
  loc_B20C8D: FLdUI1
  loc_B20C91: CStrI2
  loc_B20C93: FStStrNoPop var_98
  loc_B20C96: ConcatStr
  loc_B20C97: FStStrNoPop var_9C
  loc_B20C9A: LitStr " AND CuenCtct = '"
  loc_B20C9D: ConcatStr
  loc_B20C9E: FStStrNoPop var_A0
  loc_B20CA1: ILdRf var_90
  loc_B20CA4: ConcatStr
  loc_B20CA5: FStStrNoPop var_A4
  loc_B20CA8: LitStr "' AND NovaFapa = 1 AND EstaFapa = 'Activa'"
  loc_B20CAB: ConcatStr
  loc_B20CAC: FStStrNoPop var_A8
  loc_B20CAF: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B20CB4: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_B20CC1: FLdRfVar var_100
  loc_B20CC4: FMemLdPr
  loc_B20CC9:  = Me.RecordCount
  loc_B20CCE: ILdRf var_100
  loc_B20CD1: LitI4 0
  loc_B20CD6: GtI4
  loc_B20CD7: BranchF loc_B20D8C
  loc_B20CDA: LitVarStr var_D8, "SELECT IFNULL(SUM(TotaDefa),0) TotaDefa FROM detafapa WHERE CodiFapa = "
  loc_B20CDF: FLdRfVar var_E8
  loc_B20CE2: FLdRfVar var_108
  loc_B20CE5: LitVarStr var_C8, "CodiFapa"
  loc_B20CEA: PopAdLdVar
  loc_B20CEB: FLdRfVar var_104
  loc_B20CEE: FMemLdPr
  loc_B20CF3:  = Me.Fields
  loc_B20CF8: FLdPr var_104
  loc_B20CFB: from_stack_2 = Me.Item(from_stack_1)
  loc_B20D00: FLdPr var_108
  loc_B20D03:  = Me.Value
  loc_B20D08: FLdRfVar var_E8
  loc_B20D0B: ConcatVar var_118
  loc_B20D0F: LitVarStr var_128, " AND FepaDefa IS NULL"
  loc_B20D14: ConcatVar var_138
  loc_B20D18: CStrVarVal var_98
  loc_B20D1C: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B20D21: FFree1Str var_98
  loc_B20D24: FFreeAd var_104 = ""
  loc_B20D2B: FFreeVar var_E8 = "": var_118 = ""
  loc_B20D34: FLdRfVar var_100
  loc_B20D37: FMemLdPr
  loc_B20D3C:  = Me.RecordCount
  loc_B20D41: ILdRf var_100
  loc_B20D44: LitI4 0
  loc_B20D49: GtI4
  loc_B20D4A: BranchF loc_B20D8C
  loc_B20D4D: FLdRfVar var_E8
  loc_B20D50: FLdRfVar var_108
  loc_B20D53: LitVarStr var_C8, "TotaDefa"
  loc_B20D58: PopAdLdVar
  loc_B20D59: FLdRfVar var_104
  loc_B20D5C: FMemLdPr
  loc_B20D61:  = Me.Fields
  loc_B20D66: FLdPr var_104
  loc_B20D69: from_stack_2 = Me.Item(from_stack_1)
  loc_B20D6E: FLdPr var_108
  loc_B20D71:  = Me.Value
  loc_B20D76: FLdFPR8 var_8C
  loc_B20D79: FLdRfVar var_E8
  loc_B20D7C: FnCDblVar
  loc_B20D7E: AddR8
  loc_B20D7F: FStFPR8 var_8C
  loc_B20D82: FFreeAd var_104 = ""
  loc_B20D89: FFree1Var var_E8 = ""
  loc_B20D8C: ExitProcR8
End Function

Private Function Proc_270_105_A8FD20(arg_10) 'A8FD20
  'Data Table: 4C25A4
  loc_A8FC90: ILdRf arg_10
  loc_A8FC93: FStStrCopy var_8C
  loc_A8FC96: LitStr "SELECT NumeNode FROM notideud "
  loc_A8FC99: LitStr " WHERE CodiOfic = "
  loc_A8FC9C: ConcatStr
  loc_A8FC9D: FStStrNoPop var_90
  loc_A8FCA0: FLdUI1
  loc_A8FCA4: CStrI2
  loc_A8FCA6: FStStrNoPop var_94
  loc_A8FCA9: ConcatStr
  loc_A8FCAA: FStStrNoPop var_98
  loc_A8FCAD: LitStr " AND CuenCtct = '"
  loc_A8FCB0: ConcatStr
  loc_A8FCB1: FStStrNoPop var_9C
  loc_A8FCB4: ILdRf var_8C
  loc_A8FCB7: ConcatStr
  loc_A8FCB8: FStStrNoPop var_A0
  loc_A8FCBB: LitStr "'"
  loc_A8FCBE: ConcatStr
  loc_A8FCBF: FStStrNoPop var_A4
  loc_A8FCC2: LitStr " AND BajaFeho IS NULL"
  loc_A8FCC5: ConcatStr
  loc_A8FCC6: FStStrNoPop var_A8
  loc_A8FCC9: LitStr " ORDER BY CodiOfic, CuenCtct, NumeNode"
  loc_A8FCCC: ConcatStr
  loc_A8FCCD: FStStrNoPop var_AC
  loc_A8FCD0: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A8FCD5: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A8FCE8: FLdRfVar var_B0
  loc_A8FCEB: FMemLdPr
  loc_A8FCF0:  = Me.RecordCount
  loc_A8FCF5: ILdRf var_B0
  loc_A8FCF8: LitI4 0
  loc_A8FCFD: GtI4
  loc_A8FCFE: BranchF loc_A8FD18
  loc_A8FD01: FLdRfVar var_B0
  loc_A8FD04: FMemLdPr
  loc_A8FD09:  = Me.RecordCount
  loc_A8FD0E: ILdRf var_B0
  loc_A8FD11: CI2I4
  loc_A8FD12: FStI2 var_86
  loc_A8FD15: Branch loc_A8FD1D
  loc_A8FD18: LitI2_Byte 0
  loc_A8FD1A: FStI2 var_86
  loc_A8FD1D: ExitProcI2
End Function

Private Function Proc_270_106_AE9C8C(arg_C) 'AE9C8C
  'Data Table: 4C25A4
  loc_AE9B24: ILdRf arg_C
  loc_AE9B27: FStStrCopy var_8C
  loc_AE9B2A: LitStr "SELECT NumeAcpa FROM acrepago WHERE FeenAcpa = "
  loc_AE9B2D: LitI4 1
  loc_AE9B32: LitI4 1
  loc_AE9B37: LitVarStr var_AC, "'yyyy-mm-dd'"
  loc_AE9B3C: FStVarCopyObj var_BC
  loc_AE9B3F: FLdRfVar var_BC
  loc_AE9B42: FLdRfVar var_8C
  loc_AE9B45: CVarRef
  loc_AE9B4A: ImpAdCallI2 Format$(, )
  loc_AE9B4F: FStStrNoPop var_C0
  loc_AE9B52: ConcatStr
  loc_AE9B53: FStStrNoPop var_C4
  loc_AE9B56: LitStr " ORDER BY FeenAcpa, NumeAcpa DESC "
  loc_AE9B59: ConcatStr
  loc_AE9B5A: FStStrNoPop var_C8
  loc_AE9B5D: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AE9B62: FFreeStr var_C0 = "": var_C4 = ""
  loc_AE9B6B: FFree1Var var_BC = ""
  loc_AE9B6E: FLdRfVar var_CC
  loc_AE9B71: FMemLdPr
  loc_AE9B76:  = Me.RecordCount
  loc_AE9B7B: ILdRf var_CC
  loc_AE9B7E: LitI4 0
  loc_AE9B83: GtI4
  loc_AE9B84: BranchF loc_AE9BCC
  loc_AE9B87: FLdRfVar var_BC
  loc_AE9B8A: FLdRfVar var_D4
  loc_AE9B8D: LitVarStr var_9C, "NumeAcpa"
  loc_AE9B92: PopAdLdVar
  loc_AE9B93: FLdRfVar var_D0
  loc_AE9B96: FMemLdPr
  loc_AE9B9B:  = Me.Fields
  loc_AE9BA0: FLdPr var_D0
  loc_AE9BA3: from_stack_2 = Me.Item(from_stack_1)
  loc_AE9BA8: FLdPr var_D4
  loc_AE9BAB:  = Me.Value
  loc_AE9BB0: FLdRfVar var_BC
  loc_AE9BB3: FnCLngVar
  loc_AE9BB5: LitI4 1
  loc_AE9BBA: AddI4
  loc_AE9BBB: CI2I4
  loc_AE9BBC: FStI2 var_86
  loc_AE9BBF: FFreeAd var_D0 = ""
  loc_AE9BC6: FFree1Var var_BC = ""
  loc_AE9BC9: Branch loc_AE9BD1
  loc_AE9BCC: LitI2_Byte 1
  loc_AE9BCE: FStI2 var_86
  loc_AE9BD1: LitStr "SELECT MAX(NumeAcpa) as NumeAcpa FROM infogov.entereca "
  loc_AE9BD4: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AE9BD9: FLdRfVar var_CC
  loc_AE9BDC: FMemLdPr
  loc_AE9BE1:  = Me.RecordCount
  loc_AE9BE6: ILdRf var_CC
  loc_AE9BE9: LitI4 0
  loc_AE9BEE: GtI4
  loc_AE9BEF: BranchF loc_AE9C8B
  loc_AE9BF2: FLdRfVar var_BC
  loc_AE9BF5: FLdRfVar var_D4
  loc_AE9BF8: LitVarStr var_9C, "NumeAcpa"
  loc_AE9BFD: PopAdLdVar
  loc_AE9BFE: FLdRfVar var_D0
  loc_AE9C01: FMemLdPr
  loc_AE9C06:  = Me.Fields
  loc_AE9C0B: FLdPr var_D0
  loc_AE9C0E: from_stack_2 = Me.Item(from_stack_1)
  loc_AE9C13: FLdPr var_D4
  loc_AE9C16:  = Me.Value
  loc_AE9C1B: FLdRfVar var_EC
  loc_AE9C1E: FLdRfVar var_DC
  loc_AE9C21: LitVarStr var_AC, "NumeAcpa"
  loc_AE9C26: PopAdLdVar
  loc_AE9C27: FLdRfVar var_D8
  loc_AE9C2A: FMemLdPr
  loc_AE9C2F:  = Me.Fields
  loc_AE9C34: FLdPr var_D8
  loc_AE9C37: from_stack_2 = Me.Item(from_stack_1)
  loc_AE9C3C: FLdPr var_DC
  loc_AE9C3F:  = Me.Value
  loc_AE9C44: FLdRfVar var_86
  loc_AE9C47: CVarRef
  loc_AE9C4C: FLdRfVar var_EC
  loc_AE9C4F: FnCIntVar
  loc_AE9C51: LitI2_Byte 1
  loc_AE9C53: AddI2
  loc_AE9C54: CVarI2 var_11C
  loc_AE9C57: FLdRfVar var_BC
  loc_AE9C5A: FnCIntVar
  loc_AE9C5C: FLdI2 var_86
  loc_AE9C5F: GeI2
  loc_AE9C60: CVarBoolI2 var_FC
  loc_AE9C64: FLdRfVar var_13C
  loc_AE9C67: ImpAdCallFPR4  = IIf(, , )
  loc_AE9C6C: FLdRfVar var_13C
  loc_AE9C6F: CI2Var
  loc_AE9C70: FStI2 var_86
  loc_AE9C73: FFreeAd var_D0 = "": var_D4 = "": var_D8 = ""
  loc_AE9C7E: FFreeVar var_BC = "": var_EC = "": var_FC = "": var_11C = ""
  loc_AE9C8B: ExitProcI2
End Function

Private Function Proc_270_107_AA35C8(arg_C) 'AA35C8
  'Data Table: 4C25A4
  loc_AA3518: ILdRf arg_C
  loc_AA351B: FStStrCopy var_8C
  loc_AA351E: LitStr "SELECT NumeAcpa FROM acrepago WHERE FeenAcpa = "
  loc_AA3521: LitI4 1
  loc_AA3526: LitI4 1
  loc_AA352B: LitVarStr var_AC, "'yyyy-mm-dd'"
  loc_AA3530: FStVarCopyObj var_BC
  loc_AA3533: FLdRfVar var_BC
  loc_AA3536: FLdRfVar var_8C
  loc_AA3539: CVarRef
  loc_AA353E: ImpAdCallI2 Format$(, )
  loc_AA3543: FStStrNoPop var_C0
  loc_AA3546: ConcatStr
  loc_AA3547: FStStrNoPop var_C4
  loc_AA354A: LitStr " ANd NumeAcpa < 190 ORDER BY FeenAcpa, NumeAcpa DESC "
  loc_AA354D: ConcatStr
  loc_AA354E: FStStrNoPop var_C8
  loc_AA3551: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AA3556: FFreeStr var_C0 = "": var_C4 = ""
  loc_AA355F: FFree1Var var_BC = ""
  loc_AA3562: FLdRfVar var_CC
  loc_AA3565: FMemLdPr
  loc_AA356A:  = Me.RecordCount
  loc_AA356F: ILdRf var_CC
  loc_AA3572: LitI4 0
  loc_AA3577: GtI4
  loc_AA3578: BranchF loc_AA35C0
  loc_AA357B: FLdRfVar var_BC
  loc_AA357E: FLdRfVar var_D4
  loc_AA3581: LitVarStr var_9C, "NumeAcpa"
  loc_AA3586: PopAdLdVar
  loc_AA3587: FLdRfVar var_D0
  loc_AA358A: FMemLdPr
  loc_AA358F:  = Me.Fields
  loc_AA3594: FLdPr var_D0
  loc_AA3597: from_stack_2 = Me.Item(from_stack_1)
  loc_AA359C: FLdPr var_D4
  loc_AA359F:  = Me.Value
  loc_AA35A4: FLdRfVar var_BC
  loc_AA35A7: FnCLngVar
  loc_AA35A9: LitI4 1
  loc_AA35AE: AddI4
  loc_AA35AF: CI2I4
  loc_AA35B0: FStI2 var_86
  loc_AA35B3: FFreeAd var_D0 = ""
  loc_AA35BA: FFree1Var var_BC = ""
  loc_AA35BD: Branch loc_AA35C5
  loc_AA35C0: LitI2_Byte 1
  loc_AA35C2: FStI2 var_86
  loc_AA35C5: ExitProcI2
End Function

Private Function Proc_270_108_B13214() 'B13214
  'Data Table: 4C25A4
  loc_B12FFC: LitStr "SELECT DetaEtga, AntiEtga, CuotEtga, ImpoEtga, CodiSede FROM etapagas WHERE CodiEtga = "
  loc_B12FFF: FLdUI1
  loc_B13003: CStrI2
  loc_B13005: FStStrNoPop var_B4
  loc_B13008: ConcatStr
  loc_B13009: FStStrNoPop var_B8
  loc_B1300C: LitStr " AND CateEtga = "
  loc_B1300F: ConcatStr
  loc_B13010: FStStrNoPop var_BC
  loc_B13013: FLdUI1
  loc_B13017: CStrI2
  loc_B13019: FStStrNoPop var_C0
  loc_B1301C: ConcatStr
  loc_B1301D: FStStrNoPop var_C4
  loc_B13020: LitStr " AND NumeEtga = "
  loc_B13023: ConcatStr
  loc_B13024: FStStrNoPop var_C8
  loc_B13027: FLdUI1
  loc_B1302B: CStrI2
  loc_B1302D: FStStrNoPop var_CC
  loc_B13030: ConcatStr
  loc_B13031: FStStrNoPop var_D0
  loc_B13034: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B13039: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_B1304C: FLdRfVar var_D4
  loc_B1304F: FMemLdPr
  loc_B13054:  = Me.RecordCount
  loc_B13059: ILdRf var_D4
  loc_B1305C: LitI4 0
  loc_B13061: GtI4
  loc_B13062: BranchF loc_B131C6
  loc_B13065: FLdRfVar var_FC
  loc_B13068: FLdRfVar var_EC
  loc_B1306B: LitVarStr var_E8, "DetaEtga"
  loc_B13070: PopAdLdVar
  loc_B13071: FLdRfVar var_D8
  loc_B13074: FMemLdPr
  loc_B13079:  = Me.Fields
  loc_B1307E: FLdPr var_D8
  loc_B13081: from_stack_2 = Me.Item(from_stack_1)
  loc_B13086: FLdPr var_EC
  loc_B13089:  = Me.Value
  loc_B1308E: FLdRfVar var_FC
  loc_B13091: CStrVarTmp
  loc_B13092: FStStrNoPop var_B4
  loc_B13095: LitI4 1
  loc_B1309A: FLdRfVar var_AC
  loc_B1309D: Ary1StStrCopy
  loc_B1309E: FFree1Str var_B4
  loc_B130A1: FFreeAd var_D8 = ""
  loc_B130A8: FFree1Var var_FC = ""
  loc_B130AB: FLdRfVar var_FC
  loc_B130AE: FLdRfVar var_EC
  loc_B130B1: LitVarStr var_E8, "AntiEtga"
  loc_B130B6: PopAdLdVar
  loc_B130B7: FLdRfVar var_D8
  loc_B130BA: FMemLdPr
  loc_B130BF:  = Me.Fields
  loc_B130C4: FLdPr var_D8
  loc_B130C7: from_stack_2 = Me.Item(from_stack_1)
  loc_B130CC: FLdPr var_EC
  loc_B130CF:  = Me.Value
  loc_B130D4: FLdRfVar var_FC
  loc_B130D7: CStrVarTmp
  loc_B130D8: FStStrNoPop var_B4
  loc_B130DB: LitI4 2
  loc_B130E0: FLdRfVar var_AC
  loc_B130E3: Ary1StStrCopy
  loc_B130E4: FFree1Str var_B4
  loc_B130E7: FFreeAd var_D8 = ""
  loc_B130EE: FFree1Var var_FC = ""
  loc_B130F1: FLdRfVar var_FC
  loc_B130F4: FLdRfVar var_EC
  loc_B130F7: LitVarStr var_E8, "CuotEtga"
  loc_B130FC: PopAdLdVar
  loc_B130FD: FLdRfVar var_D8
  loc_B13100: FMemLdPr
  loc_B13105:  = Me.Fields
  loc_B1310A: FLdPr var_D8
  loc_B1310D: from_stack_2 = Me.Item(from_stack_1)
  loc_B13112: FLdPr var_EC
  loc_B13115:  = Me.Value
  loc_B1311A: FLdRfVar var_FC
  loc_B1311D: CStrVarTmp
  loc_B1311E: FStStrNoPop var_B4
  loc_B13121: LitI4 3
  loc_B13126: FLdRfVar var_AC
  loc_B13129: Ary1StStrCopy
  loc_B1312A: FFree1Str var_B4
  loc_B1312D: FFreeAd var_D8 = ""
  loc_B13134: FFree1Var var_FC = ""
  loc_B13137: FLdRfVar var_FC
  loc_B1313A: FLdRfVar var_EC
  loc_B1313D: LitVarStr var_E8, "ImpoEtga"
  loc_B13142: PopAdLdVar
  loc_B13143: FLdRfVar var_D8
  loc_B13146: FMemLdPr
  loc_B1314B:  = Me.Fields
  loc_B13150: FLdPr var_D8
  loc_B13153: from_stack_2 = Me.Item(from_stack_1)
  loc_B13158: FLdPr var_EC
  loc_B1315B:  = Me.Value
  loc_B13160: FLdRfVar var_FC
  loc_B13163: CStrVarTmp
  loc_B13164: FStStrNoPop var_B4
  loc_B13167: LitI4 4
  loc_B1316C: FLdRfVar var_AC
  loc_B1316F: Ary1StStrCopy
  loc_B13170: FFree1Str var_B4
  loc_B13173: FFreeAd var_D8 = ""
  loc_B1317A: FFree1Var var_FC = ""
  loc_B1317D: FLdRfVar var_FC
  loc_B13180: FLdRfVar var_EC
  loc_B13183: LitVarStr var_E8, "CodiSede"
  loc_B13188: PopAdLdVar
  loc_B13189: FLdRfVar var_D8
  loc_B1318C: FMemLdPr
  loc_B13191:  = Me.Fields
  loc_B13196: FLdPr var_D8
  loc_B13199: from_stack_2 = Me.Item(from_stack_1)
  loc_B1319E: FLdPr var_EC
  loc_B131A1:  = Me.Value
  loc_B131A6: FLdRfVar var_FC
  loc_B131A9: CStrVarTmp
  loc_B131AA: FStStrNoPop var_B4
  loc_B131AD: LitI4 5
  loc_B131B2: FLdRfVar var_AC
  loc_B131B5: Ary1StStrCopy
  loc_B131B6: FFree1Str var_B4
  loc_B131B9: FFreeAd var_D8 = ""
  loc_B131C0: FFree1Var var_FC = ""
  loc_B131C3: Branch loc_B13202
  loc_B131C6: LitStr vbNullString
  loc_B131C9: LitI4 1
  loc_B131CE: FLdRfVar var_AC
  loc_B131D1: Ary1StStrCopy
  loc_B131D2: LitStr vbNullString
  loc_B131D5: LitI4 2
  loc_B131DA: FLdRfVar var_AC
  loc_B131DD: Ary1StStrCopy
  loc_B131DE: LitStr vbNullString
  loc_B131E1: LitI4 3
  loc_B131E6: FLdRfVar var_AC
  loc_B131E9: Ary1StStrCopy
  loc_B131EA: LitStr vbNullString
  loc_B131ED: LitI4 4
  loc_B131F2: FLdRfVar var_AC
  loc_B131F5: Ary1StStrCopy
  loc_B131F6: LitStr vbNullString
  loc_B131F9: LitI4 5
  loc_B131FE: FLdRfVar var_AC
  loc_B13201: Ary1StStrCopy
  loc_B13202: FLdRfVar var_AC
  loc_B13205: CVarRef
  loc_B1320A: FStVarCopy
  loc_B1320E: ExitProcCb
End Function

Private Function Proc_270_109_AE7944(arg_10) 'AE7944
  'Data Table: 4C25A4
  loc_AE77FC: ILdRf arg_10
  loc_AE77FF: FStStrCopy var_98
  loc_AE7802: LitStr "SELECT CodiEtga, CateEtga, NumeEtga FROM deudvari WHERE CodiDeva = '"
  loc_AE7805: ILdRf var_98
  loc_AE7808: ConcatStr
  loc_AE7809: FStStrNoPop var_B8
  loc_AE780C: LitStr "'"
  loc_AE780F: ConcatStr
  loc_AE7810: FStStrNoPop var_BC
  loc_AE7813: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AE7818: FFreeStr var_B8 = ""
  loc_AE781F: FLdRfVar var_C0
  loc_AE7822: FMemLdPr
  loc_AE7827:  = Me.RecordCount
  loc_AE782C: ILdRf var_C0
  loc_AE782F: LitI4 0
  loc_AE7834: GtI4
  loc_AE7835: BranchF loc_AE790D
  loc_AE7838: FLdRfVar var_E8
  loc_AE783B: FLdRfVar var_D8
  loc_AE783E: LitVarStr var_D4, "CodiEtga"
  loc_AE7843: PopAdLdVar
  loc_AE7844: FLdRfVar var_C4
  loc_AE7847: FMemLdPr
  loc_AE784C:  = Me.Fields
  loc_AE7851: FLdPr var_C4
  loc_AE7854: from_stack_2 = Me.Item(from_stack_1)
  loc_AE7859: FLdPr var_D8
  loc_AE785C:  = Me.Value
  loc_AE7861: FLdRfVar var_E8
  loc_AE7864: CStrVarTmp
  loc_AE7865: FStStrNoPop var_B8
  loc_AE7868: LitI4 1
  loc_AE786D: FLdRfVar var_B0
  loc_AE7870: Ary1StStrCopy
  loc_AE7871: FFree1Str var_B8
  loc_AE7874: FFreeAd var_C4 = ""
  loc_AE787B: FFree1Var var_E8 = ""
  loc_AE787E: FLdRfVar var_E8
  loc_AE7881: FLdRfVar var_D8
  loc_AE7884: LitVarStr var_D4, "CateEtga"
  loc_AE7889: PopAdLdVar
  loc_AE788A: FLdRfVar var_C4
  loc_AE788D: FMemLdPr
  loc_AE7892:  = Me.Fields
  loc_AE7897: FLdPr var_C4
  loc_AE789A: from_stack_2 = Me.Item(from_stack_1)
  loc_AE789F: FLdPr var_D8
  loc_AE78A2:  = Me.Value
  loc_AE78A7: FLdRfVar var_E8
  loc_AE78AA: CStrVarTmp
  loc_AE78AB: FStStrNoPop var_B8
  loc_AE78AE: LitI4 2
  loc_AE78B3: FLdRfVar var_B0
  loc_AE78B6: Ary1StStrCopy
  loc_AE78B7: FFree1Str var_B8
  loc_AE78BA: FFreeAd var_C4 = ""
  loc_AE78C1: FFree1Var var_E8 = ""
  loc_AE78C4: FLdRfVar var_E8
  loc_AE78C7: FLdRfVar var_D8
  loc_AE78CA: LitVarStr var_D4, "NumeEtga"
  loc_AE78CF: PopAdLdVar
  loc_AE78D0: FLdRfVar var_C4
  loc_AE78D3: FMemLdPr
  loc_AE78D8:  = Me.Fields
  loc_AE78DD: FLdPr var_C4
  loc_AE78E0: from_stack_2 = Me.Item(from_stack_1)
  loc_AE78E5: FLdPr var_D8
  loc_AE78E8:  = Me.Value
  loc_AE78ED: FLdRfVar var_E8
  loc_AE78F0: CStrVarTmp
  loc_AE78F1: FStStrNoPop var_B8
  loc_AE78F4: LitI4 3
  loc_AE78F9: FLdRfVar var_B0
  loc_AE78FC: Ary1StStrCopy
  loc_AE78FD: FFree1Str var_B8
  loc_AE7900: FFreeAd var_C4 = ""
  loc_AE7907: FFree1Var var_E8 = ""
  loc_AE790A: Branch loc_AE7931
  loc_AE790D: LitStr vbNullString
  loc_AE7910: LitI4 1
  loc_AE7915: FLdRfVar var_B0
  loc_AE7918: Ary1StStrCopy
  loc_AE7919: LitStr vbNullString
  loc_AE791C: LitI4 2
  loc_AE7921: FLdRfVar var_B0
  loc_AE7924: Ary1StStrCopy
  loc_AE7925: LitStr vbNullString
  loc_AE7928: LitI4 3
  loc_AE792D: FLdRfVar var_B0
  loc_AE7930: Ary1StStrCopy
  loc_AE7931: FLdRfVar var_B0
  loc_AE7934: CVarRef
  loc_AE7939: FStVarCopy
  loc_AE793D: ExitProcCb
End Function

Private Function Proc_270_110_B467AC(arg_14) 'B467AC
  'Data Table: 4C25A4
  loc_B46484: FLdUI1
  loc_B46488: CI2UI1
  loc_B4648A: LitI2_Byte 1
  loc_B4648C: EqI2
  loc_B4648D: BranchF loc_B46616
  loc_B46490: LitStr "SELECT ExexInmu, MoexInmu, FfexInmu FROM inmueble WHERE CodiInmu = "
  loc_B46493: ILdRf arg_14
  loc_B46496: CStrI4
  loc_B46498: FStStrNoPop var_B4
  loc_B4649B: ConcatStr
  loc_B4649C: FStStrNoPop var_B8
  loc_B4649F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B464A4: FFreeStr var_B4 = ""
  loc_B464AB: FLdRfVar var_BC
  loc_B464AE: FMemLdPr
  loc_B464B3:  = Me.RecordCount
  loc_B464B8: ILdRf var_BC
  loc_B464BB: LitI4 0
  loc_B464C0: GtI4
  loc_B464C1: BranchF loc_B465E6
  loc_B464C4: FLdRfVar var_E4
  loc_B464C7: FLdRfVar var_D4
  loc_B464CA: LitVarStr var_D0, "ExexInmu"
  loc_B464CF: PopAdLdVar
  loc_B464D0: FLdRfVar var_C0
  loc_B464D3: FMemLdPr
  loc_B464D8:  = Me.Fields
  loc_B464DD: FLdPr var_C0
  loc_B464E0: from_stack_2 = Me.Item(from_stack_1)
  loc_B464E5: FLdPr var_D4
  loc_B464E8:  = Me.Value
  loc_B464ED: FLdRfVar var_E4
  loc_B464F0: CStrVarTmp
  loc_B464F1: FStStrNoPop var_B4
  loc_B464F4: LitI4 1
  loc_B464F9: FLdRfVar var_AC
  loc_B464FC: Ary1StStrCopy
  loc_B464FD: FFree1Str var_B4
  loc_B46500: FFreeAd var_C0 = ""
  loc_B46507: FFree1Var var_E4 = ""
  loc_B4650A: FLdRfVar var_E4
  loc_B4650D: FLdRfVar var_D4
  loc_B46510: LitVarStr var_D0, "MoexInmu"
  loc_B46515: PopAdLdVar
  loc_B46516: FLdRfVar var_C0
  loc_B46519: FMemLdPr
  loc_B4651E:  = Me.Fields
  loc_B46523: FLdPr var_C0
  loc_B46526: from_stack_2 = Me.Item(from_stack_1)
  loc_B4652B: FLdPr var_D4
  loc_B4652E:  = Me.Value
  loc_B46533: FLdRfVar var_E4
  loc_B46536: CStrVarTmp
  loc_B46537: FStStrNoPop var_B4
  loc_B4653A: LitI4 2
  loc_B4653F: FLdRfVar var_AC
  loc_B46542: Ary1StStrCopy
  loc_B46543: FFree1Str var_B4
  loc_B46546: FFreeAd var_C0 = ""
  loc_B4654D: FFree1Var var_E4 = ""
  loc_B46550: FLdRfVar var_D4
  loc_B46553: LitVarStr var_D0, "FfexInmu"
  loc_B46558: PopAdLdVar
  loc_B46559: FLdRfVar var_C0
  loc_B4655C: FMemLdPr
  loc_B46561:  = Me.Fields
  loc_B46566: FLdPr var_C0
  loc_B46569: from_stack_2 = Me.Item(from_stack_1)
  loc_B4656E: FLdZeroAd var_D4
  loc_B46571: CVarAd
  loc_B46575: ImpAdCallI2 IsNull()
  loc_B4657A: FStI2 var_14E
  loc_B4657D: FLdRfVar var_FC
  loc_B46580: LitVarStr var_F8, "FfexInmu"
  loc_B46585: PopAdLdVar
  loc_B46586: FLdRfVar var_E8
  loc_B46589: FMemLdPr
  loc_B4658E:  = Me.Fields
  loc_B46593: FLdPr var_E8
  loc_B46596: from_stack_2 = Me.Item(from_stack_1)
  loc_B4659B: FLdZeroAd var_FC
  loc_B4659E: CVarAd
  loc_B465A2: LitVarStr var_11C, vbNullString
  loc_B465A7: FStVarCopyObj var_12C
  loc_B465AA: FLdRfVar var_12C
  loc_B465AD: FLdI2 var_14E
  loc_B465B0: CVarBoolI2 var_10C
  loc_B465B4: FLdRfVar var_14C
  loc_B465B7: ImpAdCallFPR4  = IIf(, , )
  loc_B465BC: FLdRfVar var_14C
  loc_B465BF: CStrVarTmp
  loc_B465C0: FStStrNoPop var_B4
  loc_B465C3: LitI4 3
  loc_B465C8: FLdRfVar var_AC
  loc_B465CB: Ary1StStrCopy
  loc_B465CC: FFree1Str var_B4
  loc_B465CF: FFreeAd var_C0 = ""
  loc_B465D6: FFreeVar var_E4 = "": var_10C = "": var_12C = "": var_13C = ""
  loc_B465E3: Branch loc_B4660A
  loc_B465E6: LitStr vbNullString
  loc_B465E9: LitI4 1
  loc_B465EE: FLdRfVar var_AC
  loc_B465F1: Ary1StStrCopy
  loc_B465F2: LitStr vbNullString
  loc_B465F5: LitI4 2
  loc_B465FA: FLdRfVar var_AC
  loc_B465FD: Ary1StStrCopy
  loc_B465FE: LitStr vbNullString
  loc_B46601: LitI4 3
  loc_B46606: FLdRfVar var_AC
  loc_B46609: Ary1StStrCopy
  loc_B4660A: FLdRfVar var_AC
  loc_B4660D: CVarRef
  loc_B46612: FStVarCopy
  loc_B46616: FLdUI1
  loc_B4661A: CI2UI1
  loc_B4661C: LitI2_Byte 2
  loc_B4661E: EqI2
  loc_B4661F: BranchF loc_B467A8
  loc_B46622: LitStr "SELECT ExexCome, MoexCome, FfexCome FROM comercio WHERE CodiCome = "
  loc_B46625: ILdRf arg_14
  loc_B46628: CStrI4
  loc_B4662A: FStStrNoPop var_B4
  loc_B4662D: ConcatStr
  loc_B4662E: FStStrNoPop var_B8
  loc_B46631: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B46636: FFreeStr var_B4 = ""
  loc_B4663D: FLdRfVar var_BC
  loc_B46640: FMemLdPr
  loc_B46645:  = Me.RecordCount
  loc_B4664A: ILdRf var_BC
  loc_B4664D: LitI4 0
  loc_B46652: GtI4
  loc_B46653: BranchF loc_B46778
  loc_B46656: FLdRfVar var_E4
  loc_B46659: FLdRfVar var_D4
  loc_B4665C: LitVarStr var_D0, "ExexCome"
  loc_B46661: PopAdLdVar
  loc_B46662: FLdRfVar var_C0
  loc_B46665: FMemLdPr
  loc_B4666A:  = Me.Fields
  loc_B4666F: FLdPr var_C0
  loc_B46672: from_stack_2 = Me.Item(from_stack_1)
  loc_B46677: FLdPr var_D4
  loc_B4667A:  = Me.Value
  loc_B4667F: FLdRfVar var_E4
  loc_B46682: CStrVarTmp
  loc_B46683: FStStrNoPop var_B4
  loc_B46686: LitI4 1
  loc_B4668B: FLdRfVar var_AC
  loc_B4668E: Ary1StStrCopy
  loc_B4668F: FFree1Str var_B4
  loc_B46692: FFreeAd var_C0 = ""
  loc_B46699: FFree1Var var_E4 = ""
  loc_B4669C: FLdRfVar var_E4
  loc_B4669F: FLdRfVar var_D4
  loc_B466A2: LitVarStr var_D0, "MoexCome"
  loc_B466A7: PopAdLdVar
  loc_B466A8: FLdRfVar var_C0
  loc_B466AB: FMemLdPr
  loc_B466B0:  = Me.Fields
  loc_B466B5: FLdPr var_C0
  loc_B466B8: from_stack_2 = Me.Item(from_stack_1)
  loc_B466BD: FLdPr var_D4
  loc_B466C0:  = Me.Value
  loc_B466C5: FLdRfVar var_E4
  loc_B466C8: CStrVarTmp
  loc_B466C9: FStStrNoPop var_B4
  loc_B466CC: LitI4 2
  loc_B466D1: FLdRfVar var_AC
  loc_B466D4: Ary1StStrCopy
  loc_B466D5: FFree1Str var_B4
  loc_B466D8: FFreeAd var_C0 = ""
  loc_B466DF: FFree1Var var_E4 = ""
  loc_B466E2: FLdRfVar var_D4
  loc_B466E5: LitVarStr var_D0, "FfexCome"
  loc_B466EA: PopAdLdVar
  loc_B466EB: FLdRfVar var_C0
  loc_B466EE: FMemLdPr
  loc_B466F3:  = Me.Fields
  loc_B466F8: FLdPr var_C0
  loc_B466FB: from_stack_2 = Me.Item(from_stack_1)
  loc_B46700: FLdZeroAd var_D4
  loc_B46703: CVarAd
  loc_B46707: ImpAdCallI2 IsNull()
  loc_B4670C: FStI2 var_14E
  loc_B4670F: FLdRfVar var_FC
  loc_B46712: LitVarStr var_F8, "FfexCome"
  loc_B46717: PopAdLdVar
  loc_B46718: FLdRfVar var_E8
  loc_B4671B: FMemLdPr
  loc_B46720:  = Me.Fields
  loc_B46725: FLdPr var_E8
  loc_B46728: from_stack_2 = Me.Item(from_stack_1)
  loc_B4672D: FLdZeroAd var_FC
  loc_B46730: CVarAd
  loc_B46734: LitVarStr var_11C, vbNullString
  loc_B46739: FStVarCopyObj var_12C
  loc_B4673C: FLdRfVar var_12C
  loc_B4673F: FLdI2 var_14E
  loc_B46742: CVarBoolI2 var_10C
  loc_B46746: FLdRfVar var_14C
  loc_B46749: ImpAdCallFPR4  = IIf(, , )
  loc_B4674E: FLdRfVar var_14C
  loc_B46751: CStrVarTmp
  loc_B46752: FStStrNoPop var_B4
  loc_B46755: LitI4 3
  loc_B4675A: FLdRfVar var_AC
  loc_B4675D: Ary1StStrCopy
  loc_B4675E: FFree1Str var_B4
  loc_B46761: FFreeAd var_C0 = ""
  loc_B46768: FFreeVar var_E4 = "": var_10C = "": var_12C = "": var_13C = ""
  loc_B46775: Branch loc_B4679C
  loc_B46778: LitStr vbNullString
  loc_B4677B: LitI4 1
  loc_B46780: FLdRfVar var_AC
  loc_B46783: Ary1StStrCopy
  loc_B46784: LitStr vbNullString
  loc_B46787: LitI4 2
  loc_B4678C: FLdRfVar var_AC
  loc_B4678F: Ary1StStrCopy
  loc_B46790: LitStr vbNullString
  loc_B46793: LitI4 3
  loc_B46798: FLdRfVar var_AC
  loc_B4679B: Ary1StStrCopy
  loc_B4679C: FLdRfVar var_AC
  loc_B4679F: CVarRef
  loc_B467A4: FStVarCopy
  loc_B467A8: ExitProcCb
End Function

Private Function Proc_270_111_B11FC0(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) 'B11FC0
  'Data Table: 4C25A4
  loc_B11DA8: ILdRf arg_20
  loc_B11DAB: FStStrCopy var_8C
  loc_B11DAE: LitStr "Municipalidad de Guaymallén"
  loc_B11DB1: LitStr "Municipalidad de Rivadavia"
  loc_B11DB4: EqStr
  loc_B11DB6: LitStr "Municipalidad de Guaymallén"
  loc_B11DB9: LitStr "Municipalidad de Tunuyán"
  loc_B11DBC: EqStr
  loc_B11DBE: OrI4
  loc_B11DBF: LitStr "Municipalidad de Guaymallén"
  loc_B11DC2: LitStr "Municipalidad de Lavalle"
  loc_B11DC5: EqStr
  loc_B11DC7: OrI4
  loc_B11DC8: LitStr "Municipalidad de Guaymallén"
  loc_B11DCB: LitStr "Municipalidad de General Alvear"
  loc_B11DCE: EqStr
  loc_B11DD0: OrI4
  loc_B11DD1: LitStr "Municipalidad de Guaymallén"
  loc_B11DD4: LitStr "Municipalidad de Guaymallén"
  loc_B11DD7: EqStr
  loc_B11DD9: OrI4
  loc_B11DDA: BranchF loc_B11ECE
  loc_B11DDD: LitStr "SELECT OrdeLita FROM liqutasa WHERE PeriLiqu = "
  loc_B11DE0: FLdI2 arg_C
  loc_B11DE3: CStrUI1
  loc_B11DE5: FStStrNoPop var_90
  loc_B11DE8: ConcatStr
  loc_B11DE9: FStStrNoPop var_94
  loc_B11DEC: LitStr " AND BimeLiqu = "
  loc_B11DEF: ConcatStr
  loc_B11DF0: FStStrNoPop var_98
  loc_B11DF3: FLdI2 arg_10
  loc_B11DF6: CStrUI1
  loc_B11DF8: FStStrNoPop var_9C
  loc_B11DFB: ConcatStr
  loc_B11DFC: FStStrNoPop var_A0
  loc_B11DFF: LitStr " AND CodiTili = "
  loc_B11E02: ConcatStr
  loc_B11E03: FStStrNoPop var_A4
  loc_B11E06: FLdI2 arg_14
  loc_B11E09: CStrUI1
  loc_B11E0B: FStStrNoPop var_A8
  loc_B11E0E: ConcatStr
  loc_B11E0F: FStStrNoPop var_AC
  loc_B11E12: LitStr " AND NumeLiqu = "
  loc_B11E15: ConcatStr
  loc_B11E16: FStStrNoPop var_B0
  loc_B11E19: FLdI2 arg_18
  loc_B11E1C: CStrUI1
  loc_B11E1E: FStStrNoPop var_B4
  loc_B11E21: ConcatStr
  loc_B11E22: FStStrNoPop var_B8
  loc_B11E25: LitStr " AND CodiInmu = "
  loc_B11E28: ConcatStr
  loc_B11E29: FStStrNoPop var_BC
  loc_B11E2C: ILdRf arg_1C
  loc_B11E2F: CStrI4
  loc_B11E31: FStStrNoPop var_C0
  loc_B11E34: ConcatStr
  loc_B11E35: FStStrNoPop var_C4
  loc_B11E38: LitStr " AND CodiConc = '"
  loc_B11E3B: ConcatStr
  loc_B11E3C: FStStrNoPop var_C8
  loc_B11E3F: ILdRf var_8C
  loc_B11E42: ConcatStr
  loc_B11E43: FStStrNoPop var_CC
  loc_B11E46: LitStr "' AND TipoVenc = 1"
  loc_B11E49: ConcatStr
  loc_B11E4A: FStStrNoPop var_D0
  loc_B11E4D: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B11E52: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_B11E77: FLdRfVar var_D4
  loc_B11E7A: FMemLdPr
  loc_B11E7F:  = Me.RecordCount
  loc_B11E84: ILdRf var_D4
  loc_B11E87: LitI4 0
  loc_B11E8C: GtI4
  loc_B11E8D: BranchF loc_B11ECB
  loc_B11E90: FLdRfVar var_FC
  loc_B11E93: FLdRfVar var_EC
  loc_B11E96: LitVarStr var_E8, "OrdeLita"
  loc_B11E9B: PopAdLdVar
  loc_B11E9C: FLdRfVar var_D8
  loc_B11E9F: FMemLdPr
  loc_B11EA4:  = Me.Fields
  loc_B11EA9: FLdPr var_D8
  loc_B11EAC: from_stack_2 = Me.Item(from_stack_1)
  loc_B11EB1: FLdPr var_EC
  loc_B11EB4:  = Me.Value
  loc_B11EB9: FLdRfVar var_FC
  loc_B11EBC: CI4Var
  loc_B11EBE: FStR4 var_88
  loc_B11EC1: FFreeAd var_D8 = ""
  loc_B11EC8: FFree1Var var_FC = ""
  loc_B11ECB: Branch loc_B11FBC
  loc_B11ECE: LitStr "SELECT OrdeLita FROM liqutasa WHERE PeriLiqu = "
  loc_B11ED1: FLdI2 arg_C
  loc_B11ED4: CStrUI1
  loc_B11ED6: FStStrNoPop var_90
  loc_B11ED9: ConcatStr
  loc_B11EDA: FStStrNoPop var_94
  loc_B11EDD: LitStr " AND BimeLiqu = "
  loc_B11EE0: ConcatStr
  loc_B11EE1: FStStrNoPop var_98
  loc_B11EE4: FLdI2 arg_10
  loc_B11EE7: CStrUI1
  loc_B11EE9: FStStrNoPop var_9C
  loc_B11EEC: ConcatStr
  loc_B11EED: FStStrNoPop var_A0
  loc_B11EF0: LitStr " AND CodiTili = "
  loc_B11EF3: ConcatStr
  loc_B11EF4: FStStrNoPop var_A4
  loc_B11EF7: FLdI2 arg_14
  loc_B11EFA: CStrUI1
  loc_B11EFC: FStStrNoPop var_A8
  loc_B11EFF: ConcatStr
  loc_B11F00: FStStrNoPop var_AC
  loc_B11F03: LitStr " AND NumeLiqu = "
  loc_B11F06: ConcatStr
  loc_B11F07: FStStrNoPop var_B0
  loc_B11F0A: FLdI2 arg_18
  loc_B11F0D: CStrUI1
  loc_B11F0F: FStStrNoPop var_B4
  loc_B11F12: ConcatStr
  loc_B11F13: FStStrNoPop var_B8
  loc_B11F16: LitStr " AND CodiInmu = "
  loc_B11F19: ConcatStr
  loc_B11F1A: FStStrNoPop var_BC
  loc_B11F1D: ILdRf arg_1C
  loc_B11F20: CStrI4
  loc_B11F22: FStStrNoPop var_C0
  loc_B11F25: ConcatStr
  loc_B11F26: FStStrNoPop var_C4
  loc_B11F29: LitStr " AND CodiConc = '"
  loc_B11F2C: ConcatStr
  loc_B11F2D: FStStrNoPop var_C8
  loc_B11F30: ILdRf var_8C
  loc_B11F33: ConcatStr
  loc_B11F34: FStStrNoPop var_CC
  loc_B11F37: LitStr "' AND TipoVenc = 'Bimestral'"
  loc_B11F3A: ConcatStr
  loc_B11F3B: FStStrNoPop var_D0
  loc_B11F3E: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B11F43: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_B11F68: FLdRfVar var_D4
  loc_B11F6B: FMemLdPr
  loc_B11F70:  = Me.RecordCount
  loc_B11F75: ILdRf var_D4
  loc_B11F78: LitI4 0
  loc_B11F7D: GtI4
  loc_B11F7E: BranchF loc_B11FBC
  loc_B11F81: FLdRfVar var_FC
  loc_B11F84: FLdRfVar var_EC
  loc_B11F87: LitVarStr var_E8, "OrdeLita"
  loc_B11F8C: PopAdLdVar
  loc_B11F8D: FLdRfVar var_D8
  loc_B11F90: FMemLdPr
  loc_B11F95:  = Me.Fields
  loc_B11F9A: FLdPr var_D8
  loc_B11F9D: from_stack_2 = Me.Item(from_stack_1)
  loc_B11FA2: FLdPr var_EC
  loc_B11FA5:  = Me.Value
  loc_B11FAA: FLdRfVar var_FC
  loc_B11FAD: CI4Var
  loc_B11FAF: FStR4 var_88
  loc_B11FB2: FFreeAd var_D8 = ""
  loc_B11FB9: FFree1Var var_FC = ""
  loc_B11FBC: ExitProc
End Function

Private Function Proc_270_112_AD6798(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) 'AD6798
  'Data Table: 4C25A4
  loc_AD66A0: ILdRf arg_20
  loc_AD66A3: FStStrCopy var_8C
  loc_AD66A6: LitStr "SELECT OrdeLico FROM liqucome WHERE PeriLiqu = "
  loc_AD66A9: FLdI2 arg_C
  loc_AD66AC: CStrUI1
  loc_AD66AE: FStStrNoPop var_90
  loc_AD66B1: ConcatStr
  loc_AD66B2: FStStrNoPop var_94
  loc_AD66B5: LitStr " AND BimeLiqu = "
  loc_AD66B8: ConcatStr
  loc_AD66B9: FStStrNoPop var_98
  loc_AD66BC: FLdI2 arg_10
  loc_AD66BF: CStrUI1
  loc_AD66C1: FStStrNoPop var_9C
  loc_AD66C4: ConcatStr
  loc_AD66C5: FStStrNoPop var_A0
  loc_AD66C8: LitStr " AND CodiTili = "
  loc_AD66CB: ConcatStr
  loc_AD66CC: FStStrNoPop var_A4
  loc_AD66CF: FLdI2 arg_14
  loc_AD66D2: CStrUI1
  loc_AD66D4: FStStrNoPop var_A8
  loc_AD66D7: ConcatStr
  loc_AD66D8: FStStrNoPop var_AC
  loc_AD66DB: LitStr " AND NumeLiqu = "
  loc_AD66DE: ConcatStr
  loc_AD66DF: FStStrNoPop var_B0
  loc_AD66E2: FLdI2 arg_18
  loc_AD66E5: CStrUI1
  loc_AD66E7: FStStrNoPop var_B4
  loc_AD66EA: ConcatStr
  loc_AD66EB: FStStrNoPop var_B8
  loc_AD66EE: LitStr " AND CodiCome = "
  loc_AD66F1: ConcatStr
  loc_AD66F2: FStStrNoPop var_BC
  loc_AD66F5: ILdRf arg_1C
  loc_AD66F8: CStrI4
  loc_AD66FA: FStStrNoPop var_C0
  loc_AD66FD: ConcatStr
  loc_AD66FE: FStStrNoPop var_C4
  loc_AD6701: LitStr " AND CodiConc = '"
  loc_AD6704: ConcatStr
  loc_AD6705: FStStrNoPop var_C8
  loc_AD6708: ILdRf var_8C
  loc_AD670B: ConcatStr
  loc_AD670C: FStStrNoPop var_CC
  loc_AD670F: LitStr "' AND TipoVenc = 1"
  loc_AD6712: ConcatStr
  loc_AD6713: FStStrNoPop var_D0
  loc_AD6716: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AD671B: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_AD6740: FLdRfVar var_D4
  loc_AD6743: FMemLdPr
  loc_AD6748:  = Me.RecordCount
  loc_AD674D: ILdRf var_D4
  loc_AD6750: LitI4 0
  loc_AD6755: GtI4
  loc_AD6756: BranchF loc_AD6794
  loc_AD6759: FLdRfVar var_FC
  loc_AD675C: FLdRfVar var_EC
  loc_AD675F: LitVarStr var_E8, "OrdeLico"
  loc_AD6764: PopAdLdVar
  loc_AD6765: FLdRfVar var_D8
  loc_AD6768: FMemLdPr
  loc_AD676D:  = Me.Fields
  loc_AD6772: FLdPr var_D8
  loc_AD6775: from_stack_2 = Me.Item(from_stack_1)
  loc_AD677A: FLdPr var_EC
  loc_AD677D:  = Me.Value
  loc_AD6782: FLdRfVar var_FC
  loc_AD6785: CI4Var
  loc_AD6787: FStR4 var_88
  loc_AD678A: FFreeAd var_D8 = ""
  loc_AD6791: FFree1Var var_FC = ""
  loc_AD6794: ExitProc
End Function

Private Function Proc_270_113_AD6914(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) 'AD6914
  'Data Table: 4C25A4
  loc_AD681C: ILdRf arg_20
  loc_AD681F: FStStrCopy var_8C
  loc_AD6822: LitStr "SELECT OrdeLian FROM liquante WHERE PeriLiqu = "
  loc_AD6825: FLdI2 arg_C
  loc_AD6828: CStrUI1
  loc_AD682A: FStStrNoPop var_90
  loc_AD682D: ConcatStr
  loc_AD682E: FStStrNoPop var_94
  loc_AD6831: LitStr " AND BimeLiqu = "
  loc_AD6834: ConcatStr
  loc_AD6835: FStStrNoPop var_98
  loc_AD6838: FLdI2 arg_10
  loc_AD683B: CStrUI1
  loc_AD683D: FStStrNoPop var_9C
  loc_AD6840: ConcatStr
  loc_AD6841: FStStrNoPop var_A0
  loc_AD6844: LitStr " AND CodiTili = "
  loc_AD6847: ConcatStr
  loc_AD6848: FStStrNoPop var_A4
  loc_AD684B: FLdI2 arg_14
  loc_AD684E: CStrUI1
  loc_AD6850: FStStrNoPop var_A8
  loc_AD6853: ConcatStr
  loc_AD6854: FStStrNoPop var_AC
  loc_AD6857: LitStr " AND NumeLiqu = "
  loc_AD685A: ConcatStr
  loc_AD685B: FStStrNoPop var_B0
  loc_AD685E: FLdI2 arg_18
  loc_AD6861: CStrUI1
  loc_AD6863: FStStrNoPop var_B4
  loc_AD6866: ConcatStr
  loc_AD6867: FStStrNoPop var_B8
  loc_AD686A: LitStr " AND CodiCome = "
  loc_AD686D: ConcatStr
  loc_AD686E: FStStrNoPop var_BC
  loc_AD6871: ILdRf arg_1C
  loc_AD6874: CStrI4
  loc_AD6876: FStStrNoPop var_C0
  loc_AD6879: ConcatStr
  loc_AD687A: FStStrNoPop var_C4
  loc_AD687D: LitStr " AND CodiConc = '"
  loc_AD6880: ConcatStr
  loc_AD6881: FStStrNoPop var_C8
  loc_AD6884: ILdRf var_8C
  loc_AD6887: ConcatStr
  loc_AD6888: FStStrNoPop var_CC
  loc_AD688B: LitStr "' AND TipoVenc = 1"
  loc_AD688E: ConcatStr
  loc_AD688F: FStStrNoPop var_D0
  loc_AD6892: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AD6897: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_AD68BC: FLdRfVar var_D4
  loc_AD68BF: FMemLdPr
  loc_AD68C4:  = Me.RecordCount
  loc_AD68C9: ILdRf var_D4
  loc_AD68CC: LitI4 0
  loc_AD68D1: GtI4
  loc_AD68D2: BranchF loc_AD6910
  loc_AD68D5: FLdRfVar var_FC
  loc_AD68D8: FLdRfVar var_EC
  loc_AD68DB: LitVarStr var_E8, "OrdeLian"
  loc_AD68E0: PopAdLdVar
  loc_AD68E1: FLdRfVar var_D8
  loc_AD68E4: FMemLdPr
  loc_AD68E9:  = Me.Fields
  loc_AD68EE: FLdPr var_D8
  loc_AD68F1: from_stack_2 = Me.Item(from_stack_1)
  loc_AD68F6: FLdPr var_EC
  loc_AD68F9:  = Me.Value
  loc_AD68FE: FLdRfVar var_FC
  loc_AD6901: CI4Var
  loc_AD6903: FStR4 var_88
  loc_AD6906: FFreeAd var_D8 = ""
  loc_AD690D: FFree1Var var_FC = ""
  loc_AD6910: ExitProc
End Function

Private Function Proc_270_114_AD6324(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) 'AD6324
  'Data Table: 4C25A4
  loc_AD622C: ILdRf arg_20
  loc_AD622F: FStStrCopy var_8C
  loc_AD6232: LitStr "SELECT OrdeLipu FROM liqupubl WHERE PeriLiqu = "
  loc_AD6235: FLdI2 arg_C
  loc_AD6238: CStrUI1
  loc_AD623A: FStStrNoPop var_90
  loc_AD623D: ConcatStr
  loc_AD623E: FStStrNoPop var_94
  loc_AD6241: LitStr " AND BimeLiqu = "
  loc_AD6244: ConcatStr
  loc_AD6245: FStStrNoPop var_98
  loc_AD6248: FLdI2 arg_10
  loc_AD624B: CStrUI1
  loc_AD624D: FStStrNoPop var_9C
  loc_AD6250: ConcatStr
  loc_AD6251: FStStrNoPop var_A0
  loc_AD6254: LitStr " AND CodiTili = "
  loc_AD6257: ConcatStr
  loc_AD6258: FStStrNoPop var_A4
  loc_AD625B: FLdI2 arg_14
  loc_AD625E: CStrUI1
  loc_AD6260: FStStrNoPop var_A8
  loc_AD6263: ConcatStr
  loc_AD6264: FStStrNoPop var_AC
  loc_AD6267: LitStr " AND NumeLiqu = "
  loc_AD626A: ConcatStr
  loc_AD626B: FStStrNoPop var_B0
  loc_AD626E: FLdI2 arg_18
  loc_AD6271: CStrUI1
  loc_AD6273: FStStrNoPop var_B4
  loc_AD6276: ConcatStr
  loc_AD6277: FStStrNoPop var_B8
  loc_AD627A: LitStr " AND CodiCome = "
  loc_AD627D: ConcatStr
  loc_AD627E: FStStrNoPop var_BC
  loc_AD6281: ILdRf arg_1C
  loc_AD6284: CStrI4
  loc_AD6286: FStStrNoPop var_C0
  loc_AD6289: ConcatStr
  loc_AD628A: FStStrNoPop var_C4
  loc_AD628D: LitStr " AND CodiConc = '"
  loc_AD6290: ConcatStr
  loc_AD6291: FStStrNoPop var_C8
  loc_AD6294: ILdRf var_8C
  loc_AD6297: ConcatStr
  loc_AD6298: FStStrNoPop var_CC
  loc_AD629B: LitStr "' AND TipoVenc = 1"
  loc_AD629E: ConcatStr
  loc_AD629F: FStStrNoPop var_D0
  loc_AD62A2: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AD62A7: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_AD62CC: FLdRfVar var_D4
  loc_AD62CF: FMemLdPr
  loc_AD62D4:  = Me.RecordCount
  loc_AD62D9: ILdRf var_D4
  loc_AD62DC: LitI4 0
  loc_AD62E1: GtI4
  loc_AD62E2: BranchF loc_AD6320
  loc_AD62E5: FLdRfVar var_FC
  loc_AD62E8: FLdRfVar var_EC
  loc_AD62EB: LitVarStr var_E8, "OrdeLipu"
  loc_AD62F0: PopAdLdVar
  loc_AD62F1: FLdRfVar var_D8
  loc_AD62F4: FMemLdPr
  loc_AD62F9:  = Me.Fields
  loc_AD62FE: FLdPr var_D8
  loc_AD6301: from_stack_2 = Me.Item(from_stack_1)
  loc_AD6306: FLdPr var_EC
  loc_AD6309:  = Me.Value
  loc_AD630E: FLdRfVar var_FC
  loc_AD6311: CI4Var
  loc_AD6313: FStR4 var_88
  loc_AD6316: FFreeAd var_D8 = ""
  loc_AD631D: FFree1Var var_FC = ""
  loc_AD6320: ExitProc
End Function

Private Function Proc_270_115_AD64A0(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) 'AD64A0
  'Data Table: 4C25A4
  loc_AD63A8: ILdRf arg_20
  loc_AD63AB: FStStrCopy var_8C
  loc_AD63AE: LitStr "SELECT OrdeLice FROM liquceme WHERE PeriLiqu = "
  loc_AD63B1: FLdI2 arg_C
  loc_AD63B4: CStrUI1
  loc_AD63B6: FStStrNoPop var_90
  loc_AD63B9: ConcatStr
  loc_AD63BA: FStStrNoPop var_94
  loc_AD63BD: LitStr " AND BimeLiqu = "
  loc_AD63C0: ConcatStr
  loc_AD63C1: FStStrNoPop var_98
  loc_AD63C4: FLdI2 arg_10
  loc_AD63C7: CStrUI1
  loc_AD63C9: FStStrNoPop var_9C
  loc_AD63CC: ConcatStr
  loc_AD63CD: FStStrNoPop var_A0
  loc_AD63D0: LitStr " AND CodiTili = "
  loc_AD63D3: ConcatStr
  loc_AD63D4: FStStrNoPop var_A4
  loc_AD63D7: FLdI2 arg_14
  loc_AD63DA: CStrUI1
  loc_AD63DC: FStStrNoPop var_A8
  loc_AD63DF: ConcatStr
  loc_AD63E0: FStStrNoPop var_AC
  loc_AD63E3: LitStr " AND NumeLiqu = "
  loc_AD63E6: ConcatStr
  loc_AD63E7: FStStrNoPop var_B0
  loc_AD63EA: FLdI2 arg_18
  loc_AD63ED: CStrUI1
  loc_AD63EF: FStStrNoPop var_B4
  loc_AD63F2: ConcatStr
  loc_AD63F3: FStStrNoPop var_B8
  loc_AD63F6: LitStr " AND CodiDifu = "
  loc_AD63F9: ConcatStr
  loc_AD63FA: FStStrNoPop var_BC
  loc_AD63FD: ILdRf arg_1C
  loc_AD6400: CStrI4
  loc_AD6402: FStStrNoPop var_C0
  loc_AD6405: ConcatStr
  loc_AD6406: FStStrNoPop var_C4
  loc_AD6409: LitStr " AND CodiConc = '"
  loc_AD640C: ConcatStr
  loc_AD640D: FStStrNoPop var_C8
  loc_AD6410: ILdRf var_8C
  loc_AD6413: ConcatStr
  loc_AD6414: FStStrNoPop var_CC
  loc_AD6417: LitStr "' AND TipoVenc = 'Bimestral'"
  loc_AD641A: ConcatStr
  loc_AD641B: FStStrNoPop var_D0
  loc_AD641E: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AD6423: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_AD6448: FLdRfVar var_D4
  loc_AD644B: FMemLdPr
  loc_AD6450:  = Me.RecordCount
  loc_AD6455: ILdRf var_D4
  loc_AD6458: LitI4 0
  loc_AD645D: GtI4
  loc_AD645E: BranchF loc_AD649C
  loc_AD6461: FLdRfVar var_FC
  loc_AD6464: FLdRfVar var_EC
  loc_AD6467: LitVarStr var_E8, "OrdeLice"
  loc_AD646C: PopAdLdVar
  loc_AD646D: FLdRfVar var_D8
  loc_AD6470: FMemLdPr
  loc_AD6475:  = Me.Fields
  loc_AD647A: FLdPr var_D8
  loc_AD647D: from_stack_2 = Me.Item(from_stack_1)
  loc_AD6482: FLdPr var_EC
  loc_AD6485:  = Me.Value
  loc_AD648A: FLdRfVar var_FC
  loc_AD648D: CI4Var
  loc_AD648F: FStR4 var_88
  loc_AD6492: FFreeAd var_D8 = ""
  loc_AD6499: FFree1Var var_FC = ""
  loc_AD649C: ExitProc
End Function

Private Function Proc_270_116_A7F5AC(arg_10) 'A7F5AC
  'Data Table: 4C25A4
  loc_A7F538: ILdRf arg_10
  loc_A7F53B: FStStrCopy var_8C
  loc_A7F53E: LitStr "SELECT * FROM ctactedeta "
  loc_A7F541: LitStr " WHERE CodiOfic = "
  loc_A7F544: ConcatStr
  loc_A7F545: FStStrNoPop var_90
  loc_A7F548: LitI2_Byte 2
  loc_A7F54A: CStrUI1
  loc_A7F54C: FStStrNoPop var_94
  loc_A7F54F: ConcatStr
  loc_A7F550: FStStrNoPop var_98
  loc_A7F553: LitStr " AND CuenCtct = '"
  loc_A7F556: ConcatStr
  loc_A7F557: FStStrNoPop var_9C
  loc_A7F55A: ILdRf var_8C
  loc_A7F55D: ConcatStr
  loc_A7F55E: FStStrNoPop var_A0
  loc_A7F561: LitStr "'"
  loc_A7F564: ConcatStr
  loc_A7F565: FStStrNoPop var_A4
  loc_A7F568: LitStr " AND (CodiCtde = 30 or CodiCtde = 86001000000 or CodiCtde = 86002000000 or CodiCtde = 86003000000 or CodiCtde = 86004000000)"
  loc_A7F56B: ConcatStr
  loc_A7F56C: FStStrNoPop var_A8
  loc_A7F56F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7F574: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A7F585: FLdRfVar var_AC
  loc_A7F588: FMemLdPr
  loc_A7F58D:  = Me.RecordCount
  loc_A7F592: ILdRf var_AC
  loc_A7F595: LitI4 0
  loc_A7F59A: GtI4
  loc_A7F59B: BranchF loc_A7F5A6
  loc_A7F59E: LitI2_Byte &HFF
  loc_A7F5A0: FStI2 var_86
  loc_A7F5A3: Branch loc_A7F5AB
  loc_A7F5A6: LitI2_Byte 0
  loc_A7F5A8: FStI2 var_86
  loc_A7F5AB: ExitProcI2
End Function

Private Function Proc_270_117_A96544(arg_10) 'A96544
  'Data Table: 4C25A4
  loc_A964A8: ILdRf arg_10
  loc_A964AB: FStStrCopy var_90
  loc_A964AE: LitStr "SELECT ifnull(SUM(DebeCred)-SUM(CredCred),0) as SaldCred FROM creditos WHERE CodiOfic = "
  loc_A964B1: FLdUI1
  loc_A964B5: CStrI2
  loc_A964B7: FStStrNoPop var_94
  loc_A964BA: ConcatStr
  loc_A964BB: FStStrNoPop var_98
  loc_A964BE: LitStr " AND CuenCtct = '"
  loc_A964C1: ConcatStr
  loc_A964C2: FStStrNoPop var_9C
  loc_A964C5: ILdRf var_90
  loc_A964C8: ConcatStr
  loc_A964C9: FStStrNoPop var_A0
  loc_A964CC: LitStr "'"
  loc_A964CF: ConcatStr
  loc_A964D0: FStStrNoPop var_A4
  loc_A964D3: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A964D8: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A964E5: FLdRfVar var_A8
  loc_A964E8: FMemLdPr
  loc_A964ED:  = Me.RecordCount
  loc_A964F2: ILdRf var_A8
  loc_A964F5: LitI4 0
  loc_A964FA: GtI4
  loc_A964FB: BranchF loc_A9653C
  loc_A964FE: FLdRfVar var_D0
  loc_A96501: FLdRfVar var_C0
  loc_A96504: LitVarStr var_BC, "SaldCred"
  loc_A96509: PopAdLdVar
  loc_A9650A: FLdRfVar var_AC
  loc_A9650D: FMemLdPr
  loc_A96512:  = Me.Fields
  loc_A96517: FLdPr var_AC
  loc_A9651A: from_stack_2 = Me.Item(from_stack_1)
  loc_A9651F: FLdPr var_C0
  loc_A96522:  = Me.Value
  loc_A96527: FLdRfVar var_D0
  loc_A9652A: FnCDblVar
  loc_A9652C: FStFPR8 var_8C
  loc_A9652F: FFreeAd var_AC = ""
  loc_A96536: FFree1Var var_D0 = ""
  loc_A96539: Branch loc_A96542
  loc_A9653C: LitI2_Byte 0
  loc_A9653E: CR8I2
  loc_A9653F: FStFPR8 var_8C
  loc_A96542: ExitProcR8
End Function

Private Function Proc_270_118_AAD1F8(arg_C) 'AAD1F8
  'Data Table: 4C25A4
  loc_AAD138: ILdRf arg_C
  loc_AAD13B: FStStrCopy var_8C
  loc_AAD13E: LitVarStr var_DC, "SELECT NumeAcpa FROM ingrrent WHERE FechInre = "
  loc_AAD143: LitI4 1
  loc_AAD148: LitI4 1
  loc_AAD14D: LitVarStr var_AC, "'yyyy-mm-dd'"
  loc_AAD152: FStVarCopyObj var_BC
  loc_AAD155: FLdRfVar var_BC
  loc_AAD158: FLdRfVar var_8C
  loc_AAD15B: CVarRef
  loc_AAD160: FLdRfVar var_CC
  loc_AAD163: ImpAdCallFPR4  = Format(, )
  loc_AAD168: FLdRfVar var_CC
  loc_AAD16B: ConcatVar var_EC
  loc_AAD16F: LitVarStr var_FC, " AND ActuInre = 'No' ORDER BY FechInre, NumeAcpa"
  loc_AAD174: ConcatVar var_10C
  loc_AAD178: CStrVarVal var_110
  loc_AAD17C: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AAD181: FFree1Str var_110
  loc_AAD184: FFreeVar var_BC = "": var_CC = "": var_EC = ""
  loc_AAD18F: FLdRfVar var_114
  loc_AAD192: FMemLdPr
  loc_AAD197:  = Me.RecordCount
  loc_AAD19C: ILdRf var_114
  loc_AAD19F: LitI4 0
  loc_AAD1A4: GtI4
  loc_AAD1A5: BranchF loc_AAD1F1
  loc_AAD1A8: FMemLdPr
  loc_AAD1AD: Me.MoveFirst
  loc_AAD1B2: FLdRfVar var_BC
  loc_AAD1B5: FLdRfVar var_11C
  loc_AAD1B8: LitVarStr var_9C, "NumeAcpa"
  loc_AAD1BD: PopAdLdVar
  loc_AAD1BE: FLdRfVar var_118
  loc_AAD1C1: FMemLdPr
  loc_AAD1C6:  = Me.Fields
  loc_AAD1CB: FLdPr var_118
  loc_AAD1CE: from_stack_2 = Me.Item(from_stack_1)
  loc_AAD1D3: FLdPr var_11C
  loc_AAD1D6:  = Me.Value
  loc_AAD1DB: FLdRfVar var_BC
  loc_AAD1DE: FnCDblVar
  loc_AAD1E0: CI2R8
  loc_AAD1E1: FStI2 var_86
  loc_AAD1E4: FFreeAd var_118 = ""
  loc_AAD1EB: FFree1Var var_BC = ""
  loc_AAD1EE: Branch loc_AAD1F6
  loc_AAD1F1: LitI2_Byte 0
  loc_AAD1F3: FStI2 var_86
  loc_AAD1F6: ExitProcI2
End Function

Private Function Proc_270_119_AAD638(arg_C) 'AAD638
  'Data Table: 4C25A4
  loc_AAD578: ILdRf arg_C
  loc_AAD57B: FStStrCopy var_8C
  loc_AAD57E: LitVarStr var_DC, "SELECT NumeAcpa FROM ingrrent WHERE FechInre = "
  loc_AAD583: LitI4 1
  loc_AAD588: LitI4 1
  loc_AAD58D: LitVarStr var_AC, "'yyyy-mm-dd'"
  loc_AAD592: FStVarCopyObj var_BC
  loc_AAD595: FLdRfVar var_BC
  loc_AAD598: FLdRfVar var_8C
  loc_AAD59B: CVarRef
  loc_AAD5A0: FLdRfVar var_CC
  loc_AAD5A3: ImpAdCallFPR4  = Format(, )
  loc_AAD5A8: FLdRfVar var_CC
  loc_AAD5AB: ConcatVar var_EC
  loc_AAD5AF: LitVarStr var_FC, " AND ActuInre = 'No' ORDER BY FechInre, NumeAcpa"
  loc_AAD5B4: ConcatVar var_10C
  loc_AAD5B8: CStrVarVal var_110
  loc_AAD5BC: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AAD5C1: FFree1Str var_110
  loc_AAD5C4: FFreeVar var_BC = "": var_CC = "": var_EC = ""
  loc_AAD5CF: FLdRfVar var_114
  loc_AAD5D2: FMemLdPr
  loc_AAD5D7:  = Me.RecordCount
  loc_AAD5DC: ILdRf var_114
  loc_AAD5DF: LitI4 0
  loc_AAD5E4: GtI4
  loc_AAD5E5: BranchF loc_AAD631
  loc_AAD5E8: FMemLdPr
  loc_AAD5ED: Me.MoveLast
  loc_AAD5F2: FLdRfVar var_BC
  loc_AAD5F5: FLdRfVar var_11C
  loc_AAD5F8: LitVarStr var_9C, "NumeAcpa"
  loc_AAD5FD: PopAdLdVar
  loc_AAD5FE: FLdRfVar var_118
  loc_AAD601: FMemLdPr
  loc_AAD606:  = Me.Fields
  loc_AAD60B: FLdPr var_118
  loc_AAD60E: from_stack_2 = Me.Item(from_stack_1)
  loc_AAD613: FLdPr var_11C
  loc_AAD616:  = Me.Value
  loc_AAD61B: FLdRfVar var_BC
  loc_AAD61E: FnCDblVar
  loc_AAD620: CI2R8
  loc_AAD621: FStI2 var_86
  loc_AAD624: FFreeAd var_118 = ""
  loc_AAD62B: FFree1Var var_BC = ""
  loc_AAD62E: Branch loc_AAD636
  loc_AAD631: LitI2_Byte 0
  loc_AAD633: FStI2 var_86
  loc_AAD636: ExitProcI2
End Function

Private Function Proc_270_120_B207C4(arg_C, arg_10) 'B207C4
  'Data Table: 4C25A4
  loc_B20554: ILdRf arg_C
  loc_B20557: FStStrCopy var_8C
  loc_B2055A: ILdRf arg_10
  loc_B2055D: FStStrCopy var_90
  loc_B20560: OnErrorGoto loc_B20713
  loc_B20563: ILdRf var_90
  loc_B20566: FStStrCopy var_94
  loc_B20569: LitStr "SELECT FirmUsua"
  loc_B2056C: LitStr " FROM infogov.usuario"
  loc_B2056F: ConcatStr
  loc_B20570: FStStrNoPop var_9C
  loc_B20573: LitStr " WHERE CodiUsua = '"
  loc_B20576: ConcatStr
  loc_B20577: FStStrNoPop var_A0
  loc_B2057A: ILdRf var_8C
  loc_B2057D: ConcatStr
  loc_B2057E: FStStrNoPop var_A4
  loc_B20581: LitStr "'"
  loc_B20584: ConcatStr
  loc_B20585: FStStrNoPop var_A8
  loc_B20588: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B2058D: FFreeStr var_9C = "": var_A0 = "": var_A4 = ""
  loc_B20598: FLdRfVar var_AC
  loc_B2059B: FMemLdPr
  loc_B205A0:  = Me.RecordCount
  loc_B205A5: ILdRf var_AC
  loc_B205A8: LitI4 0
  loc_B205AD: EqI4
  loc_B205AE: BranchF loc_B205BA
  loc_B205B1: LitNothing
  loc_B205B3: CastAd
  loc_B205B6: FStAdFunc var_88
  loc_B205B9: ExitProc
  loc_B205BA: New Stream
  loc_B205BE: FStAdFunc var_98
  loc_B205C1: LitI4 1
  loc_B205C6: FLdPr var_98
  loc_B205C9: Stream.Type = from_stack_1
  loc_B205CE: LitStr vbNullString
  loc_B205D1: LitStr vbNullString
  loc_B205D4: LitI4 -1
  loc_B205D9: LitI4 0
  loc_B205DE: LitVar_Missing var_BC
  loc_B205E1: PopAdLdVar
  loc_B205E2: FLdPr var_98
  loc_B205E5: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_B205EA: FLdRfVar var_D4
  loc_B205ED: FLdRfVar var_C4
  loc_B205F0: LitVarStr var_BC, "FirmUsua"
  loc_B205F5: PopAdLdVar
  loc_B205F6: FLdRfVar var_C0
  loc_B205F9: FMemLdPr
  loc_B205FE:  = Me.Fields
  loc_B20603: FLdPr var_C0
  loc_B20606: from_stack_2 = Me.Item(from_stack_1)
  loc_B2060B: FLdPr var_C4
  loc_B2060E:  = Me.Value
  loc_B20613: FLdRfVar var_D4
  loc_B20616: ImpAdCallI2 IsNull()
  loc_B2061B: FFreeAd var_C0 = ""
  loc_B20622: FFree1Var var_D4 = ""
  loc_B20625: BranchF loc_B2062B
  loc_B20628: Branch loc_B20713
  loc_B2062B: FLdRfVar var_D4
  loc_B2062E: FLdRfVar var_C4
  loc_B20631: LitVarStr var_BC, "FirmUsua"
  loc_B20636: PopAdLdVar
  loc_B20637: FLdRfVar var_C0
  loc_B2063A: FMemLdPr
  loc_B2063F:  = Me.Fields
  loc_B20644: FLdPr var_C0
  loc_B20647: from_stack_2 = Me.Item(from_stack_1)
  loc_B2064C: FLdPr var_C4
  loc_B2064F:  = Me.Value
  loc_B20654: FLdVar var_D4
  loc_B20658: FLdPr var_98
  loc_B2065B: Me.Write from_stack_1
  loc_B20660: FFreeAd var_C0 = ""
  loc_B20667: FFree1Var var_D4 = ""
  loc_B2066A: LitI4 2
  loc_B2066F: ILdRf var_94
  loc_B20672: FLdPr var_98
  loc_B20675: Me.SaveToFile from_stack_1
  loc_B2067A: FLdRfVar var_C0
  loc_B2067D: LitVar_Missing var_114
  loc_B20680: PopAdLdVar
  loc_B20681: LitVar_Missing var_104
  loc_B20684: PopAdLdVar
  loc_B20685: LitVar_Missing var_F4
  loc_B20688: PopAdLdVar
  loc_B20689: LitVar_Missing var_E4
  loc_B2068C: PopAdLdVar
  loc_B2068D: ILdRf var_94
  loc_B20690: CVarStr var_BC
  loc_B20693: PopAdLdVar
  loc_B20694: ImpAdLdRf MemVar_D9C5D8
  loc_B20697: NewIfNullPr Global
  loc_B2069A: Global.LoadPicture from_stack_1, from_stack_2, from_stack_3, from_stack_4, from_stack_5
  loc_B2069F: FLdZeroAd var_C0
  loc_B206A2: FStAdFunc var_88
  loc_B206A5: FLdRfVar var_AC
  loc_B206A8: FMemLdPr
  loc_B206AD:  = Me.State
  loc_B206B2: ILdRf var_AC
  loc_B206B5: LitI4 1
  loc_B206BA: EqI4
  loc_B206BB: BranchF loc_B206C8
  loc_B206BE: FMemLdPr
  loc_B206C3: Me.Close
  loc_B206C8: FMemLdR4 arg_8(0)
  loc_B206CD: LitNothing
  loc_B206CF: Is
  loc_B206D1: NotI4
  loc_B206D2: BranchF loc_B206E0
  loc_B206D5: LitNothing
  loc_B206D7: CastAd
  loc_B206DA: FMemStAdFunc arg_8(0)
  loc_B206E0: FLdRfVar var_AC
  loc_B206E3: FLdPr var_98
  loc_B206E6:  = Me.State
  loc_B206EB: ILdRf var_AC
  loc_B206EE: LitI4 1
  loc_B206F3: EqI4
  loc_B206F4: BranchF loc_B206FF
  loc_B206F7: FLdPr var_98
  loc_B206FA: Me.Close
  loc_B206FF: ILdRf var_98
  loc_B20702: LitNothing
  loc_B20704: Is
  loc_B20706: NotI4
  loc_B20707: BranchF loc_B20712
  loc_B2070A: LitNothing
  loc_B2070C: CastAd
  loc_B2070F: FStAdFunc var_98
  loc_B20712: ExitProc
  loc_B20713: FLdRfVar var_AC
  loc_B20716: ImpAdCallI2 Err 'rtcErrObj
  loc_B2071B: FStAdFunc var_C0
  loc_B2071E: FLdPr var_C0
  loc_B20721:  = Err.Number
  loc_B20726: ILdRf var_AC
  loc_B20729: LitI4 0
  loc_B2072E: NeI4
  loc_B2072F: FFree1Ad var_C0
  loc_B20732: BranchF loc_B207C1
  loc_B20735: FLdRfVar var_AC
  loc_B20738: ImpAdCallI2 Err 'rtcErrObj
  loc_B2073D: FStAdFunc var_C0
  loc_B20740: FLdPr var_C0
  loc_B20743:  = Err.Number
  loc_B20748: LitVar_Missing var_D4
  loc_B2074B: FLdRfVar var_124
  loc_B2074E: ImpAdCallFPR4  = Error()
  loc_B20753: LitVar_Missing var_174
  loc_B20756: LitVar_Missing var_164
  loc_B20759: LitVar_Missing var_154
  loc_B2075C: LitI4 &H30
  loc_B20761: ILdRf var_AC
  loc_B20764: CStrI4
  loc_B20766: FStStrNoPop var_9C
  loc_B20769: LitStr "  "
  loc_B2076C: ConcatStr
  loc_B2076D: CVarStr var_134
  loc_B20770: FLdRfVar var_124
  loc_B20773: ConcatVar var_144
  loc_B20777: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B2077C: FFree1Str var_9C
  loc_B2077F: FFree1Ad var_C0
  loc_B20782: FFreeVar var_D4 = "": var_134 = "": var_124 = "": var_144 = "": var_154 = "": var_164 = ""
  loc_B20793: LitI4 0
  loc_B20798: FLdRfVar var_94
  loc_B2079B: CVarRef
  loc_B207A0: ImpAdCallI2 push Dir(, )
  loc_B207A5: FStStrNoPop var_9C
  loc_B207A8: FnLenStr
  loc_B207A9: CBoolI4
  loc_B207AB: FFree1Str var_9C
  loc_B207AE: BranchF loc_B207B9
  loc_B207B1: FLdRfVar var_94
  loc_B207B4: ImpAdCallFPR4 Proc_270_121_9BB184()
  loc_B207B9: LitNothing
  loc_B207BB: CastAd
  loc_B207BE: FStAdFunc var_88
  loc_B207C1: ExitProc
End Function

Private Function Proc_270_121_9BB184(arg_C) '9BB184
  'Data Table: 4C25A4
  loc_9BB170: OnErrorGoto loc_9BB180
  loc_9BB173: ILdRf arg_C
  loc_9BB176: CVarRef
  loc_9BB17B: ImpAdCallFPR4 Kill 
  loc_9BB180: ExitProc
End Function

Private Function Proc_270_122_A95FB0(arg_C) 'A95FB0
  'Data Table: 4C25A4
  loc_A95F1C: ILdRf arg_C
  loc_A95F1F: FStStrCopy var_8C
  loc_A95F22: LitStr "SELECT IFNULL(DetaPers,DetaUsua) DetaUsua"
  loc_A95F25: LitStr " FROM infogov.usuario"
  loc_A95F28: ConcatStr
  loc_A95F29: FStStrNoPop var_90
  loc_A95F2C: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = usuario.CucuPers AND usuario.CucuPers > 0"
  loc_A95F2F: ConcatStr
  loc_A95F30: FStStrNoPop var_94
  loc_A95F33: LitStr " WHERE usuario.CodiUsua = '"
  loc_A95F36: ConcatStr
  loc_A95F37: FStStrNoPop var_98
  loc_A95F3A: ILdRf var_8C
  loc_A95F3D: ConcatStr
  loc_A95F3E: FStStrNoPop var_9C
  loc_A95F41: LitStr "'"
  loc_A95F44: ConcatStr
  loc_A95F45: FStStrNoPop var_A0
  loc_A95F48: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A95F4D: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A95F5A: FLdRfVar var_A4
  loc_A95F5D: FMemLdPr
  loc_A95F62:  = Me.RecordCount
  loc_A95F67: ILdRf var_A4
  loc_A95F6A: LitI4 0
  loc_A95F6F: GtI4
  loc_A95F70: BranchF loc_A95FAD
  loc_A95F73: FLdRfVar var_CC
  loc_A95F76: FLdRfVar var_BC
  loc_A95F79: LitVarStr var_B8, "DetaUsua"
  loc_A95F7E: PopAdLdVar
  loc_A95F7F: FLdRfVar var_A8
  loc_A95F82: FMemLdPr
  loc_A95F87:  = Me.Fields
  loc_A95F8C: FLdPr var_A8
  loc_A95F8F: from_stack_2 = Me.Item(from_stack_1)
  loc_A95F94: FLdPr var_BC
  loc_A95F97:  = Me.Value
  loc_A95F9C: FLdRfVar var_CC
  loc_A95F9F: CStrVarTmp
  loc_A95FA0: FStStr var_88
  loc_A95FA3: FFreeAd var_A8 = ""
  loc_A95FAA: FFree1Var var_CC = ""
  loc_A95FAD: ExitProc
End Function

Private Function Proc_270_123_A8DE70(arg_C) 'A8DE70
  'Data Table: 4C25A4
  loc_A8DDE4: ILdRf arg_C
  loc_A8DDE7: FStStrCopy var_8C
  loc_A8DDEA: LitStr "SELECT CargUsua"
  loc_A8DDED: LitStr " FROM infogov.usuario"
  loc_A8DDF0: ConcatStr
  loc_A8DDF1: FStStrNoPop var_90
  loc_A8DDF4: LitStr " WHERE CodiUsua = '"
  loc_A8DDF7: ConcatStr
  loc_A8DDF8: FStStrNoPop var_94
  loc_A8DDFB: ILdRf var_8C
  loc_A8DDFE: ConcatStr
  loc_A8DDFF: FStStrNoPop var_98
  loc_A8DE02: LitStr "'"
  loc_A8DE05: ConcatStr
  loc_A8DE06: FStStrNoPop var_9C
  loc_A8DE09: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A8DE0E: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_A8DE19: FLdRfVar var_A0
  loc_A8DE1C: FMemLdPr
  loc_A8DE21:  = Me.RecordCount
  loc_A8DE26: ILdRf var_A0
  loc_A8DE29: LitI4 0
  loc_A8DE2E: GtI4
  loc_A8DE2F: BranchF loc_A8DE6C
  loc_A8DE32: FLdRfVar var_C8
  loc_A8DE35: FLdRfVar var_B8
  loc_A8DE38: LitVarStr var_B4, "CargUsua"
  loc_A8DE3D: PopAdLdVar
  loc_A8DE3E: FLdRfVar var_A4
  loc_A8DE41: FMemLdPr
  loc_A8DE46:  = Me.Fields
  loc_A8DE4B: FLdPr var_A4
  loc_A8DE4E: from_stack_2 = Me.Item(from_stack_1)
  loc_A8DE53: FLdPr var_B8
  loc_A8DE56:  = Me.Value
  loc_A8DE5B: FLdRfVar var_C8
  loc_A8DE5E: CStrVarTmp
  loc_A8DE5F: FStStr var_88
  loc_A8DE62: FFreeAd var_A4 = ""
  loc_A8DE69: FFree1Var var_C8 = ""
  loc_A8DE6C: ExitProc
End Function

Private Function Proc_270_124_9EE114() '9EE114
  'Data Table: 4C25A4
  loc_9EE0F4: LitStr "INSERT IGNORE INTO servinmu"
  loc_9EE0F7: LitStr " SELECT CodiInmu, NumeFrin, 2 as CodiSeca, CodiSein, FealSein, FedeSein, FehaSein, ExpeSein, EstaSein, CantSein, 'root' as CodiUsua, 1 as borra"
  loc_9EE0FA: ConcatStr
  loc_9EE0FB: FStStrNoPop var_88
  loc_9EE0FE: LitStr " FROM servinmu WHERE CodiSeca = 1 ANd NumeFrin > 1 AND FehaSein IS NULL"
  loc_9EE101: ConcatStr
  loc_9EE102: FStStrNoPop var_8C
  loc_9EE105: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_9EE10A: FFreeStr var_88 = ""
  loc_9EE111: ExitProc
End Function

Private Function Proc_270_125_AFE48C(arg_10) 'AFE48C
  'Data Table: 4C25A4
  loc_AFE2A8: ILdRf arg_10
  loc_AFE2AB: FStStrCopy var_8C
  loc_AFE2AE: FLdUI1
  loc_AFE2B2: CI2UI1
  loc_AFE2B4: LitI2_Byte 1
  loc_AFE2B6: EqI2
  loc_AFE2B7: BranchF loc_AFE321
  loc_AFE2BA: LitStr "SELECT BonoInmu FROM inmueble WHERE CodiInmu = "
  loc_AFE2BD: ILdRf var_8C
  loc_AFE2C0: ConcatStr
  loc_AFE2C1: FStStrNoPop var_90
  loc_AFE2C4: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AFE2C9: FFree1Str var_90
  loc_AFE2CC: FLdRfVar var_94
  loc_AFE2CF: FMemLdPr
  loc_AFE2D4:  = Me.RecordCount
  loc_AFE2D9: ILdRf var_94
  loc_AFE2DC: LitI4 0
  loc_AFE2E1: GtI4
  loc_AFE2E2: BranchF loc_AFE321
  loc_AFE2E5: FLdRfVar var_BC
  loc_AFE2E8: FLdRfVar var_AC
  loc_AFE2EB: LitVarStr var_A8, "BonoInmu"
  loc_AFE2F0: PopAdLdVar
  loc_AFE2F1: FLdRfVar var_98
  loc_AFE2F4: FMemLdPr
  loc_AFE2F9:  = Me.Fields
  loc_AFE2FE: FLdPr var_98
  loc_AFE301: from_stack_2 = Me.Item(from_stack_1)
  loc_AFE306: FLdPr var_AC
  loc_AFE309:  = Me.Value
  loc_AFE30E: FLdRfVar var_BC
  loc_AFE311: CUI1Var
  loc_AFE313: FStUI1 var_86
  loc_AFE317: FFreeAd var_98 = ""
  loc_AFE31E: FFree1Var var_BC = ""
  loc_AFE321: FLdUI1
  loc_AFE325: CI2UI1
  loc_AFE327: LitI2_Byte 2
  loc_AFE329: EqI2
  loc_AFE32A: BranchF loc_AFE394
  loc_AFE32D: LitStr "SELECT BonoCome FROM comercio WHERE CodiCome = "
  loc_AFE330: ILdRf var_8C
  loc_AFE333: ConcatStr
  loc_AFE334: FStStrNoPop var_90
  loc_AFE337: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AFE33C: FFree1Str var_90
  loc_AFE33F: FLdRfVar var_94
  loc_AFE342: FMemLdPr
  loc_AFE347:  = Me.RecordCount
  loc_AFE34C: ILdRf var_94
  loc_AFE34F: LitI4 0
  loc_AFE354: GtI4
  loc_AFE355: BranchF loc_AFE394
  loc_AFE358: FLdRfVar var_BC
  loc_AFE35B: FLdRfVar var_AC
  loc_AFE35E: LitVarStr var_A8, "BonoCome"
  loc_AFE363: PopAdLdVar
  loc_AFE364: FLdRfVar var_98
  loc_AFE367: FMemLdPr
  loc_AFE36C:  = Me.Fields
  loc_AFE371: FLdPr var_98
  loc_AFE374: from_stack_2 = Me.Item(from_stack_1)
  loc_AFE379: FLdPr var_AC
  loc_AFE37C:  = Me.Value
  loc_AFE381: FLdRfVar var_BC
  loc_AFE384: CUI1Var
  loc_AFE386: FStUI1 var_86
  loc_AFE38A: FFreeAd var_98 = ""
  loc_AFE391: FFree1Var var_BC = ""
  loc_AFE394: FLdUI1
  loc_AFE398: CI2UI1
  loc_AFE39A: LitI2_Byte 4
  loc_AFE39C: EqI2
  loc_AFE39D: BranchF loc_AFE487
  loc_AFE3A0: LitStr "Municipalidad de Guaymallén"
  loc_AFE3A3: LitStr "Municipalidad de Tunuyán"
  loc_AFE3A6: EqStr
  loc_AFE3A8: BranchF loc_AFE420
  loc_AFE3AB: LitStr "SELECT BonoDifu FROM difunto WHERE CodiDifu = '"
  loc_AFE3AE: ILdRf var_8C
  loc_AFE3B1: ConcatStr
  loc_AFE3B2: FStStrNoPop var_90
  loc_AFE3B5: LitStr "'"
  loc_AFE3B8: ConcatStr
  loc_AFE3B9: FStStrNoPop var_C0
  loc_AFE3BC: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AFE3C1: FFreeStr var_90 = ""
  loc_AFE3C8: FLdRfVar var_94
  loc_AFE3CB: FMemLdPr
  loc_AFE3D0:  = Me.RecordCount
  loc_AFE3D5: ILdRf var_94
  loc_AFE3D8: LitI4 0
  loc_AFE3DD: GtI4
  loc_AFE3DE: BranchF loc_AFE41D
  loc_AFE3E1: FLdRfVar var_BC
  loc_AFE3E4: FLdRfVar var_AC
  loc_AFE3E7: LitVarStr var_A8, "BonoDifu"
  loc_AFE3EC: PopAdLdVar
  loc_AFE3ED: FLdRfVar var_98
  loc_AFE3F0: FMemLdPr
  loc_AFE3F5:  = Me.Fields
  loc_AFE3FA: FLdPr var_98
  loc_AFE3FD: from_stack_2 = Me.Item(from_stack_1)
  loc_AFE402: FLdPr var_AC
  loc_AFE405:  = Me.Value
  loc_AFE40A: FLdRfVar var_BC
  loc_AFE40D: CUI1Var
  loc_AFE40F: FStUI1 var_86
  loc_AFE413: FFreeAd var_98 = ""
  loc_AFE41A: FFree1Var var_BC = ""
  loc_AFE41D: Branch loc_AFE487
  loc_AFE420: LitStr "SELECT BonoDifu FROM difunto WHERE CodiDifu = "
  loc_AFE423: ILdRf var_8C
  loc_AFE426: ConcatStr
  loc_AFE427: FStStrNoPop var_90
  loc_AFE42A: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AFE42F: FFree1Str var_90
  loc_AFE432: FLdRfVar var_94
  loc_AFE435: FMemLdPr
  loc_AFE43A:  = Me.RecordCount
  loc_AFE43F: ILdRf var_94
  loc_AFE442: LitI4 0
  loc_AFE447: GtI4
  loc_AFE448: BranchF loc_AFE487
  loc_AFE44B: FLdRfVar var_BC
  loc_AFE44E: FLdRfVar var_AC
  loc_AFE451: LitVarStr var_A8, "BonoDifu"
  loc_AFE456: PopAdLdVar
  loc_AFE457: FLdRfVar var_98
  loc_AFE45A: FMemLdPr
  loc_AFE45F:  = Me.Fields
  loc_AFE464: FLdPr var_98
  loc_AFE467: from_stack_2 = Me.Item(from_stack_1)
  loc_AFE46C: FLdPr var_AC
  loc_AFE46F:  = Me.Value
  loc_AFE474: FLdRfVar var_BC
  loc_AFE477: CUI1Var
  loc_AFE479: FStUI1 var_86
  loc_AFE47D: FFreeAd var_98 = ""
  loc_AFE484: FFree1Var var_BC = ""
  loc_AFE487: ExitProcUI1
End Function

Private Function Proc_270_126_A9405C(arg_C, arg_10) 'A9405C
  'Data Table: 4C25A4
  loc_A93FC8: LitStr "SELECT IFNULL(SUM(SaldFacc),0) as SaldFacc FROM facictacte USE INDEX (idxfacictacte01)"
  loc_A93FCB: LitStr " WHERE CodiFapa = "
  loc_A93FCE: ConcatStr
  loc_A93FCF: FStStrNoPop var_90
  loc_A93FD2: ILdRf arg_C
  loc_A93FD5: CStrI4
  loc_A93FD7: FStStrNoPop var_94
  loc_A93FDA: ConcatStr
  loc_A93FDB: FStStrNoPop var_98
  loc_A93FDE: LitStr " AND CuotDefa = "
  loc_A93FE1: ConcatStr
  loc_A93FE2: FStStrNoPop var_9C
  loc_A93FE5: FLdI2 arg_10
  loc_A93FE8: CStrUI1
  loc_A93FEA: FStStrNoPop var_A0
  loc_A93FED: ConcatStr
  loc_A93FEE: FStStrNoPop var_A4
  loc_A93FF1: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A93FF6: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A94005: FLdRfVar var_A8
  loc_A94008: FMemLdPr
  loc_A9400D:  = Me.RecordCount
  loc_A94012: ILdRf var_A8
  loc_A94015: LitI4 0
  loc_A9401A: GtI4
  loc_A9401B: BranchF loc_A94059
  loc_A9401E: FLdRfVar var_D0
  loc_A94021: FLdRfVar var_C0
  loc_A94024: LitVarStr var_BC, "SaldFacc"
  loc_A94029: PopAdLdVar
  loc_A9402A: FLdRfVar var_AC
  loc_A9402D: FMemLdPr
  loc_A94032:  = Me.Fields
  loc_A94037: FLdPr var_AC
  loc_A9403A: from_stack_2 = Me.Item(from_stack_1)
  loc_A9403F: FLdPr var_C0
  loc_A94042:  = Me.Value
  loc_A94047: FLdRfVar var_D0
  loc_A9404A: FnCDblVar
  loc_A9404C: FStFPR8 var_8C
  loc_A9404F: FFreeAd var_AC = ""
  loc_A94056: FFree1Var var_D0 = ""
  loc_A94059: ExitProcR8
End Function

Private Function Proc_270_127_ACCCB4(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) 'ACCCB4
  'Data Table: 4C25A4
  loc_ACCBD4: LitStr "SELECT IFNULL(MAX(MoviDebo),0) + 1 as MoviDebo FROM tmp_detabole "
  loc_ACCBD7: LitStr " WHERE PeriBole = "
  loc_ACCBDA: ConcatStr
  loc_ACCBDB: FStStrNoPop var_8C
  loc_ACCBDE: FLdI2 arg_C
  loc_ACCBE1: CStrUI1
  loc_ACCBE3: FStStrNoPop var_90
  loc_ACCBE6: ConcatStr
  loc_ACCBE7: FStStrNoPop var_94
  loc_ACCBEA: LitStr " AND NumeBole = "
  loc_ACCBED: ConcatStr
  loc_ACCBEE: FStStrNoPop var_98
  loc_ACCBF1: ILdRf arg_10
  loc_ACCBF4: CStrI4
  loc_ACCBF6: FStStrNoPop var_9C
  loc_ACCBF9: ConcatStr
  loc_ACCBFA: FStStrNoPop var_A0
  loc_ACCBFD: LitStr " AND PeriCtct = "
  loc_ACCC00: ConcatStr
  loc_ACCC01: FStStrNoPop var_A4
  loc_ACCC04: FLdI2 arg_14
  loc_ACCC07: CStrUI1
  loc_ACCC09: FStStrNoPop var_A8
  loc_ACCC0C: ConcatStr
  loc_ACCC0D: FStStrNoPop var_AC
  loc_ACCC10: LitStr " AND BimeCtct = "
  loc_ACCC13: ConcatStr
  loc_ACCC14: FStStrNoPop var_B0
  loc_ACCC17: FLdI2 arg_18
  loc_ACCC1A: CStrUI1
  loc_ACCC1C: FStStrNoPop var_B4
  loc_ACCC1F: ConcatStr
  loc_ACCC20: FStStrNoPop var_B8
  loc_ACCC23: LitStr " AND NumeCtct = "
  loc_ACCC26: ConcatStr
  loc_ACCC27: FStStrNoPop var_BC
  loc_ACCC2A: ILdRf arg_1C
  loc_ACCC2D: CStrI4
  loc_ACCC2F: FStStrNoPop var_C0
  loc_ACCC32: ConcatStr
  loc_ACCC33: FStStrNoPop var_C4
  loc_ACCC36: LitStr " AND MoviCtct = "
  loc_ACCC39: ConcatStr
  loc_ACCC3A: FStStrNoPop var_C8
  loc_ACCC3D: FLdI2 arg_20
  loc_ACCC40: CStrUI1
  loc_ACCC42: FStStrNoPop var_CC
  loc_ACCC45: ConcatStr
  loc_ACCC46: FStStrNoPop var_D0
  loc_ACCC49: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_ACCC4E: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_ACCC75: FLdRfVar var_F8
  loc_ACCC78: FLdRfVar var_E8
  loc_ACCC7B: LitVarStr var_E4, "MoviDebo"
  loc_ACCC80: PopAdLdVar
  loc_ACCC81: FLdRfVar var_D4
  loc_ACCC84: FMemLdPr
  loc_ACCC89:  = Me.Fields
  loc_ACCC8E: FLdPr var_D4
  loc_ACCC91: from_stack_2 = Me.Item(from_stack_1)
  loc_ACCC96: FLdPr var_E8
  loc_ACCC99:  = Me.Value
  loc_ACCC9E: FLdRfVar var_F8
  loc_ACCCA1: FnCDblVar
  loc_ACCCA3: CI2R8
  loc_ACCCA4: FStI2 var_86
  loc_ACCCA7: FFreeAd var_D4 = ""
  loc_ACCCAE: FFree1Var var_F8 = ""
  loc_ACCCB1: ExitProcI2
End Function

Private Function Proc_270_128_AD344C(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) 'AD344C
  'Data Table: 4C25A4
  loc_AD3364: LitStr "SELECT IFNULL(MAX(MoviDebo),0) + 1 as MoviDebo FROM detabole "
  loc_AD3367: LitStr " USE INDEX (idxdetabole01)"
  loc_AD336A: ConcatStr
  loc_AD336B: FStStrNoPop var_8C
  loc_AD336E: LitStr " WHERE PeriBole = "
  loc_AD3371: ConcatStr
  loc_AD3372: FStStrNoPop var_90
  loc_AD3375: FLdI2 arg_C
  loc_AD3378: CStrUI1
  loc_AD337A: FStStrNoPop var_94
  loc_AD337D: ConcatStr
  loc_AD337E: FStStrNoPop var_98
  loc_AD3381: LitStr " AND NumeBole = "
  loc_AD3384: ConcatStr
  loc_AD3385: FStStrNoPop var_9C
  loc_AD3388: ILdRf arg_10
  loc_AD338B: CStrI4
  loc_AD338D: FStStrNoPop var_A0
  loc_AD3390: ConcatStr
  loc_AD3391: FStStrNoPop var_A4
  loc_AD3394: LitStr " AND PeriCtct = "
  loc_AD3397: ConcatStr
  loc_AD3398: FStStrNoPop var_A8
  loc_AD339B: FLdI2 arg_14
  loc_AD339E: CStrUI1
  loc_AD33A0: FStStrNoPop var_AC
  loc_AD33A3: ConcatStr
  loc_AD33A4: FStStrNoPop var_B0
  loc_AD33A7: LitStr " AND BimeCtct = "
  loc_AD33AA: ConcatStr
  loc_AD33AB: FStStrNoPop var_B4
  loc_AD33AE: FLdI2 arg_18
  loc_AD33B1: CStrUI1
  loc_AD33B3: FStStrNoPop var_B8
  loc_AD33B6: ConcatStr
  loc_AD33B7: FStStrNoPop var_BC
  loc_AD33BA: LitStr " AND NumeCtct = "
  loc_AD33BD: ConcatStr
  loc_AD33BE: FStStrNoPop var_C0
  loc_AD33C1: ILdRf arg_1C
  loc_AD33C4: CStrI4
  loc_AD33C6: FStStrNoPop var_C4
  loc_AD33C9: ConcatStr
  loc_AD33CA: FStStrNoPop var_C8
  loc_AD33CD: LitStr " AND MoviCtct = "
  loc_AD33D0: ConcatStr
  loc_AD33D1: FStStrNoPop var_CC
  loc_AD33D4: FLdI2 arg_20
  loc_AD33D7: CStrUI1
  loc_AD33D9: FStStrNoPop var_D0
  loc_AD33DC: ConcatStr
  loc_AD33DD: FStStrNoPop var_D4
  loc_AD33E0: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AD33E5: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_AD340E: FLdRfVar var_FC
  loc_AD3411: FLdRfVar var_EC
  loc_AD3414: LitVarStr var_E8, "MoviDebo"
  loc_AD3419: PopAdLdVar
  loc_AD341A: FLdRfVar var_D8
  loc_AD341D: FMemLdPr
  loc_AD3422:  = Me.Fields
  loc_AD3427: FLdPr var_D8
  loc_AD342A: from_stack_2 = Me.Item(from_stack_1)
  loc_AD342F: FLdPr var_EC
  loc_AD3432:  = Me.Value
  loc_AD3437: FLdRfVar var_FC
  loc_AD343A: FnCDblVar
  loc_AD343C: CI2R8
  loc_AD343D: FStI2 var_86
  loc_AD3440: FFreeAd var_D8 = ""
  loc_AD3447: FFree1Var var_FC = ""
  loc_AD344A: ExitProcI2
End Function

Private Function Proc_270_129_A7E1E0() 'A7E1E0
  'Data Table: 4C25A4
  loc_A7E178: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_detabole;"
  loc_A7E17B: LitStr " CREATE TEMPORARY TABLE tmp_detabole ("
  loc_A7E17E: ConcatStr
  loc_A7E17F: FStStrNoPop var_88
  loc_A7E182: LitStr " eriBole` year(4) NOT NULL default '0000',"
  loc_A7E185: ConcatStr
  loc_A7E186: FStStrNoPop var_8C
  loc_A7E189: LitStr " umeBole` int(8) unsigned NOT NULL default '0',"
  loc_A7E18C: ConcatStr
  loc_A7E18D: FStStrNoPop var_90
  loc_A7E190: LitStr " eriCtct` year(4) NOT NULL default '0000',"
  loc_A7E193: ConcatStr
  loc_A7E194: FStStrNoPop var_94
  loc_A7E197: LitStr " imeCtct` smallint(3) unsigned NOT NULL default '0',"
  loc_A7E19A: ConcatStr
  loc_A7E19B: FStStrNoPop var_98
  loc_A7E19E: LitStr " umeCtct` int(10) unsigned NOT NULL default '0',"
  loc_A7E1A1: ConcatStr
  loc_A7E1A2: FStStrNoPop var_9C
  loc_A7E1A5: LitStr " oviCtct` smallint(3) unsigned NOT NULL default '0',"
  loc_A7E1A8: ConcatStr
  loc_A7E1A9: FStStrNoPop var_A0
  loc_A7E1AC: LitStr " oviDebo` smallint(3) unsigned NOT NULL default '0',"
  loc_A7E1AF: ConcatStr
  loc_A7E1B0: FStStrNoPop var_A4
  loc_A7E1B3: LitStr " PRIMARY KEY  (eriBole`,`NumeBole`,`PeriCtct`,`BimeCtct`,`NumeCtct`,`MoviCtct`,`MoviDebo`)"
  loc_A7E1B6: ConcatStr
  loc_A7E1B7: FStStrNoPop var_A8
  loc_A7E1BA: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_A7E1BD: ConcatStr
  loc_A7E1BE: FStStrNoPop var_AC
  loc_A7E1C1: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7E1C6: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A7E1DD: ExitProc
End Function

Private Function Proc_270_130_AC5C58(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) 'AC5C58
  'Data Table: 4C25A4
  loc_AC5B94: LitStr " INSERT INTO tmp_detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo) "
  loc_AC5B97: LitStr " VALUES ("
  loc_AC5B9A: ConcatStr
  loc_AC5B9B: FStStrNoPop var_88
  loc_AC5B9E: FLdI2 arg_C
  loc_AC5BA1: CStrUI1
  loc_AC5BA3: FStStrNoPop var_8C
  loc_AC5BA6: ConcatStr
  loc_AC5BA7: FStStrNoPop var_90
  loc_AC5BAA: LitStr ","
  loc_AC5BAD: ConcatStr
  loc_AC5BAE: FStStrNoPop var_94
  loc_AC5BB1: ILdRf arg_10
  loc_AC5BB4: CStrI4
  loc_AC5BB6: FStStrNoPop var_98
  loc_AC5BB9: ConcatStr
  loc_AC5BBA: FStStrNoPop var_9C
  loc_AC5BBD: LitStr ","
  loc_AC5BC0: ConcatStr
  loc_AC5BC1: FStStrNoPop var_A0
  loc_AC5BC4: FLdI2 arg_14
  loc_AC5BC7: CStrUI1
  loc_AC5BC9: FStStrNoPop var_A4
  loc_AC5BCC: ConcatStr
  loc_AC5BCD: FStStrNoPop var_A8
  loc_AC5BD0: LitStr ","
  loc_AC5BD3: ConcatStr
  loc_AC5BD4: FStStrNoPop var_AC
  loc_AC5BD7: FLdI2 arg_18
  loc_AC5BDA: CStrUI1
  loc_AC5BDC: FStStrNoPop var_B0
  loc_AC5BDF: ConcatStr
  loc_AC5BE0: FStStrNoPop var_B4
  loc_AC5BE3: LitStr ","
  loc_AC5BE6: ConcatStr
  loc_AC5BE7: FStStrNoPop var_B8
  loc_AC5BEA: ILdRf arg_1C
  loc_AC5BED: CStrI4
  loc_AC5BEF: FStStrNoPop var_BC
  loc_AC5BF2: ConcatStr
  loc_AC5BF3: FStStrNoPop var_C0
  loc_AC5BF6: LitStr ","
  loc_AC5BF9: ConcatStr
  loc_AC5BFA: FStStrNoPop var_C4
  loc_AC5BFD: FLdI2 arg_20
  loc_AC5C00: CStrUI1
  loc_AC5C02: FStStrNoPop var_C8
  loc_AC5C05: ConcatStr
  loc_AC5C06: FStStrNoPop var_CC
  loc_AC5C09: LitStr ","
  loc_AC5C0C: ConcatStr
  loc_AC5C0D: FStStrNoPop var_D0
  loc_AC5C10: FLdI2 arg_24
  loc_AC5C13: CStrUI1
  loc_AC5C15: FStStrNoPop var_D4
  loc_AC5C18: ConcatStr
  loc_AC5C19: FStStrNoPop var_D8
  loc_AC5C1C: LitStr ");"
  loc_AC5C1F: ConcatStr
  loc_AC5C20: FStStrNoPop var_DC
  loc_AC5C23: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AC5C28: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_AC5C57: ExitProc
End Function

Private Function Proc_270_131_A7E130(arg_C) 'A7E130
  'Data Table: 4C25A4
  loc_A7E0B8: LitStr "SELECT PadrInmu FROM inmueble WHERE CodiInmu = "
  loc_A7E0BB: ILdRf arg_C
  loc_A7E0BE: CStrI4
  loc_A7E0C0: FStStrNoPop var_8C
  loc_A7E0C3: ConcatStr
  loc_A7E0C4: FStStrNoPop var_90
  loc_A7E0C7: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7E0CC: FFreeStr var_8C = ""
  loc_A7E0D3: FLdRfVar var_94
  loc_A7E0D6: FMemLdPr
  loc_A7E0DB:  = Me.RecordCount
  loc_A7E0E0: ILdRf var_94
  loc_A7E0E3: LitI4 0
  loc_A7E0E8: GtI4
  loc_A7E0E9: BranchF loc_A7E129
  loc_A7E0EC: FLdRfVar var_BC
  loc_A7E0EF: FLdRfVar var_AC
  loc_A7E0F2: LitVarStr var_A8, "PadrInmu"
  loc_A7E0F7: PopAdLdVar
  loc_A7E0F8: FLdRfVar var_98
  loc_A7E0FB: FMemLdPr
  loc_A7E100:  = Me.Fields
  loc_A7E105: FLdPr var_98
  loc_A7E108: from_stack_2 = Me.Item(from_stack_1)
  loc_A7E10D: FLdPr var_AC
  loc_A7E110:  = Me.Value
  loc_A7E115: FLdRfVar var_BC
  loc_A7E118: CStrVarTmp
  loc_A7E119: FStStr var_88
  loc_A7E11C: FFreeAd var_98 = ""
  loc_A7E123: FFree1Var var_BC = ""
  loc_A7E126: Branch loc_A7E12F
  loc_A7E129: LitStr vbNullString
  loc_A7E12C: FStStrCopy var_88
  loc_A7E12F: ExitProc
End Function

Private Function Proc_270_132_A753EC(arg_C) 'A753EC
  'Data Table: 4C25A4
  loc_A75384: LitStr "SELECT * FROM faciapre "
  loc_A75387: LitStr " INNER JOIN facipago ON facipago.CodiFapa = faciapre.CodiFapa"
  loc_A7538A: ConcatStr
  loc_A7538B: FStStrNoPop var_8C
  loc_A7538E: LitStr " WHERE NumeApre = "
  loc_A75391: ConcatStr
  loc_A75392: FStStrNoPop var_90
  loc_A75395: ILdRf arg_C
  loc_A75398: CStrI4
  loc_A7539A: FStStrNoPop var_94
  loc_A7539D: ConcatStr
  loc_A7539E: FStStrNoPop var_98
  loc_A753A1: LitStr " AND facipago.EstaFapa = 'Activa'"
  loc_A753A4: ConcatStr
  loc_A753A5: FStStrNoPop var_9C
  loc_A753A8: LitStr " GROUP BY NumeApre"
  loc_A753AB: ConcatStr
  loc_A753AC: FStStrNoPop var_A0
  loc_A753AF: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A753B4: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A753C3: FLdRfVar var_A4
  loc_A753C6: FMemLdPr
  loc_A753CB:  = Me.RecordCount
  loc_A753D0: ILdRf var_A4
  loc_A753D3: LitI4 0
  loc_A753D8: GtI4
  loc_A753D9: BranchF loc_A753E4
  loc_A753DC: LitI2_Byte &HFF
  loc_A753DE: FStI2 var_86
  loc_A753E1: Branch loc_A753E9
  loc_A753E4: LitI2_Byte 0
  loc_A753E6: FStI2 var_86
  loc_A753E9: ExitProcI2
End Function

Private Function Proc_270_133_AEB914(arg_10, arg_14) 'AEB914
  'Data Table: 4C25A4
  loc_AEB7BC: ILdRf arg_10
  loc_AEB7BF: FStStrCopy var_8C
  loc_AEB7C2: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_saldo;"
  loc_AEB7C5: LitStr " CREATE TEMPORARY TABLE tmp_saldo"
  loc_AEB7C8: ConcatStr
  loc_AEB7C9: FStStrNoPop var_90
  loc_AEB7CC: LitStr " SELECT Codiofic, CuenCtct, PeriCtct, BimeCtct, NumeCtct"
  loc_AEB7CF: ConcatStr
  loc_AEB7D0: FStStrNoPop var_94
  loc_AEB7D3: LitStr " FROM ctacte USE INDEX (idxctacte07)"
  loc_AEB7D6: ConcatStr
  loc_AEB7D7: FStStrNoPop var_98
  loc_AEB7DA: LitStr " WHERE CodiOfic = "
  loc_AEB7DD: ConcatStr
  loc_AEB7DE: FStStrNoPop var_9C
  loc_AEB7E1: FLdUI1
  loc_AEB7E5: CStrI2
  loc_AEB7E7: FStStrNoPop var_A0
  loc_AEB7EA: ConcatStr
  loc_AEB7EB: FStStrNoPop var_A4
  loc_AEB7EE: LitStr " AND CuenCtct = '"
  loc_AEB7F1: ConcatStr
  loc_AEB7F2: FStStrNoPop var_A8
  loc_AEB7F5: ILdRf var_8C
  loc_AEB7F8: ConcatStr
  loc_AEB7F9: FStStrNoPop var_AC
  loc_AEB7FC: LitStr "'"
  loc_AEB7FF: ConcatStr
  loc_AEB800: FStStrNoPop var_B0
  loc_AEB803: LitStr " AND NumeApre = "
  loc_AEB806: ConcatStr
  loc_AEB807: FStStrNoPop var_B4
  loc_AEB80A: ILdRf arg_14
  loc_AEB80D: CStrI4
  loc_AEB80F: FStStrNoPop var_B8
  loc_AEB812: ConcatStr
  loc_AEB813: FStStrNoPop var_BC
  loc_AEB816: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct"
  loc_AEB819: ConcatStr
  loc_AEB81A: FStStrNoPop var_C0
  loc_AEB81D: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AEB822: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AEB83F: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_saldo1;"
  loc_AEB842: LitStr " CREATE TEMPORARY TABLE tmp_saldo1"
  loc_AEB845: ConcatStr
  loc_AEB846: FStStrNoPop var_90
  loc_AEB849: LitStr " SELECT SUM(ctacte.DebeCtct)- SUM(ctacte.CredCtct) AS SaldCtct"
  loc_AEB84C: ConcatStr
  loc_AEB84D: FStStrNoPop var_94
  loc_AEB850: LitStr " FROM tmp_saldo"
  loc_AEB853: ConcatStr
  loc_AEB854: FStStrNoPop var_98
  loc_AEB857: LitStr " INNER JOIN ctacte ON ctacte.CodiOfic = tmp_saldo.CodiOfic"
  loc_AEB85A: ConcatStr
  loc_AEB85B: FStStrNoPop var_9C
  loc_AEB85E: LitStr " AND ctacte.CuenCtct = tmp_saldo.CuenCtct"
  loc_AEB861: ConcatStr
  loc_AEB862: FStStrNoPop var_A0
  loc_AEB865: LitStr " AND ctacte.PeriCtct = tmp_saldo.PeriCtct"
  loc_AEB868: ConcatStr
  loc_AEB869: FStStrNoPop var_A4
  loc_AEB86C: LitStr " AND ctacte.BimeCtct = tmp_saldo.BimeCtct"
  loc_AEB86F: ConcatStr
  loc_AEB870: FStStrNoPop var_A8
  loc_AEB873: LitStr " AND ctacte.NumeCtct = tmp_saldo.NumeCtct"
  loc_AEB876: ConcatStr
  loc_AEB877: FStStrNoPop var_AC
  loc_AEB87A: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct;"
  loc_AEB87D: ConcatStr
  loc_AEB87E: FStStrNoPop var_B0
  loc_AEB881: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AEB886: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AEB89B: LitStr "SELECT SUM(SaldCtct) Saldo FROM tmp_saldo1"
  loc_AEB89E: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AEB8A3: FLdRfVar var_C4
  loc_AEB8A6: FMemLdPr
  loc_AEB8AB:  = Me.RecordCount
  loc_AEB8B0: ILdRf var_C4
  loc_AEB8B3: LitI4 0
  loc_AEB8B8: GtI4
  loc_AEB8B9: BranchF loc_AEB90B
  loc_AEB8BC: FLdRfVar var_EC
  loc_AEB8BF: FLdRfVar var_DC
  loc_AEB8C2: LitVarStr var_D8, "Saldo"
  loc_AEB8C7: PopAdLdVar
  loc_AEB8C8: FLdRfVar var_C8
  loc_AEB8CB: FMemLdPr
  loc_AEB8D0:  = Me.Fields
  loc_AEB8D5: FLdPr var_C8
  loc_AEB8D8: from_stack_2 = Me.Item(from_stack_1)
  loc_AEB8DD: FLdPr var_DC
  loc_AEB8E0:  = Me.Value
  loc_AEB8E5: FLdRfVar var_EC
  loc_AEB8E8: FnCDblVar
  loc_AEB8EA: LitI2_Byte 0
  loc_AEB8EC: CR8I2
  loc_AEB8ED: LeR8
  loc_AEB8EE: FFreeAd var_C8 = ""
  loc_AEB8F5: FFree1Var var_EC = ""
  loc_AEB8F8: BranchF loc_AEB903
  loc_AEB8FB: LitI2_Byte 0
  loc_AEB8FD: FStI2 var_86
  loc_AEB900: Branch loc_AEB908
  loc_AEB903: LitI2_Byte &HFF
  loc_AEB905: FStI2 var_86
  loc_AEB908: Branch loc_AEB910
  loc_AEB90B: LitI2_Byte 0
  loc_AEB90D: FStI2 var_86
  loc_AEB910: ExitProcI2
  loc_AEB911: ImpAdLdPr unk_4C28D3
End Function

Private Function Proc_270_134_A40038(arg_C) 'A40038
  'Data Table: 4C25A4
  loc_A3FFEC: LitStr "SELECT * FROM apremio WHERE apremio.NumeApre = "
  loc_A3FFEF: ILdRf arg_C
  loc_A3FFF2: CStrI4
  loc_A3FFF4: FStStrNoPop var_8C
  loc_A3FFF7: ConcatStr
  loc_A3FFF8: FStStrNoPop var_90
  loc_A3FFFB: LitStr " AND EstaApre = 'Activo'"
  loc_A3FFFE: ConcatStr
  loc_A3FFFF: FStStrNoPop var_94
  loc_A40002: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A40007: FFreeStr var_8C = "": var_90 = ""
  loc_A40010: FLdRfVar var_98
  loc_A40013: FMemLdPr
  loc_A40018:  = Me.RecordCount
  loc_A4001D: ILdRf var_98
  loc_A40020: LitI4 0
  loc_A40025: GtI4
  loc_A40026: BranchF loc_A40031
  loc_A40029: LitI2_Byte &HFF
  loc_A4002B: FStI2 var_86
  loc_A4002E: Branch loc_A40036
  loc_A40031: LitI2_Byte 0
  loc_A40033: FStI2 var_86
  loc_A40036: ExitProcI2
End Function

Private Function Proc_270_135_A7DFB0(arg_C) 'A7DFB0
  'Data Table: 4C25A4
  loc_A7DF38: LitStr "SELECT EstaApre FROM apremio WHERE apremio.NumeApre = "
  loc_A7DF3B: ILdRf arg_C
  loc_A7DF3E: CStrI4
  loc_A7DF40: FStStrNoPop var_8C
  loc_A7DF43: ConcatStr
  loc_A7DF44: FStStrNoPop var_90
  loc_A7DF47: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7DF4C: FFreeStr var_8C = ""
  loc_A7DF53: FLdRfVar var_94
  loc_A7DF56: FMemLdPr
  loc_A7DF5B:  = Me.RecordCount
  loc_A7DF60: ILdRf var_94
  loc_A7DF63: LitI4 0
  loc_A7DF68: GtI4
  loc_A7DF69: BranchF loc_A7DFA9
  loc_A7DF6C: FLdRfVar var_BC
  loc_A7DF6F: FLdRfVar var_AC
  loc_A7DF72: LitVarStr var_A8, "EstaApre"
  loc_A7DF77: PopAdLdVar
  loc_A7DF78: FLdRfVar var_98
  loc_A7DF7B: FMemLdPr
  loc_A7DF80:  = Me.Fields
  loc_A7DF85: FLdPr var_98
  loc_A7DF88: from_stack_2 = Me.Item(from_stack_1)
  loc_A7DF8D: FLdPr var_AC
  loc_A7DF90:  = Me.Value
  loc_A7DF95: FLdRfVar var_BC
  loc_A7DF98: CStrVarTmp
  loc_A7DF99: FStStr var_88
  loc_A7DF9C: FFreeAd var_98 = ""
  loc_A7DFA3: FFree1Var var_BC = ""
  loc_A7DFA6: Branch loc_A7DFAF
  loc_A7DFA9: LitStr vbNullString
  loc_A7DFAC: FStStrCopy var_88
  loc_A7DFAF: ExitProc
End Function

Private Function Proc_270_136_B3CF04(arg_C, arg_10, arg_14) 'B3CF04
  'Data Table: 4C25A4
  loc_B3CC18: LitVarI2 var_F8, 3
  loc_B3CC1D: LitVarI2 var_D8, 2
  loc_B3CC22: ILdRf arg_C
  loc_B3CC25: CVarRef
  loc_B3CC2A: FLdRfVar var_108
  loc_B3CC2D: ImpAdCallFPR4  = IIf(, , )
  loc_B3CC32: FLdRfVar var_108
  loc_B3CC35: CI2Var
  loc_B3CC36: LitI4 1
  loc_B3CC3B: FLdRfVar var_A4
  loc_B3CC3E: Ary1StI2
  loc_B3CC3F: FFreeVar var_D8 = "": var_F8 = ""
  loc_B3CC48: LitVarI2 var_F8, 7
  loc_B3CC4D: LitVarI2 var_D8, 0
  loc_B3CC52: ILdRf arg_10
  loc_B3CC55: CVarRef
  loc_B3CC5A: FLdRfVar var_108
  loc_B3CC5D: ImpAdCallFPR4  = IIf(, , )
  loc_B3CC62: LitVarI2 var_138, 0
  loc_B3CC67: FLdRfVar var_108
  loc_B3CC6A: ILdRf arg_C
  loc_B3CC6D: CVarRef
  loc_B3CC72: FLdRfVar var_148
  loc_B3CC75: ImpAdCallFPR4  = IIf(, , )
  loc_B3CC7A: FLdRfVar var_148
  loc_B3CC7D: CI2Var
  loc_B3CC7E: LitI4 2
  loc_B3CC83: FLdRfVar var_A4
  loc_B3CC86: Ary1StI2
  loc_B3CC87: FFreeVar var_D8 = "": var_F8 = "": var_108 = "": var_138 = ""
  loc_B3CC94: LitI2_Byte 1
  loc_B3CC96: FLdRfVar var_8A
  loc_B3CC99: LitI2_Byte 8
  loc_B3CC9B: LitI2_Byte 1
  loc_B3CC9D: ForStepI2 var_14C
  loc_B3CCA3: LitVarI2 var_D8, 1
  loc_B3CCA8: FLdI2 var_8A
  loc_B3CCAB: CI4UI1
  loc_B3CCAC: ILdRf arg_14
  loc_B3CCAF: CVarRef
  loc_B3CCB4: FLdRfVar var_F8
  loc_B3CCB7: ImpAdCallFPR4  = Mid(, , )
  loc_B3CCBC: FLdRfVar var_F8
  loc_B3CCBF: FnCIntVar
  loc_B3CCC1: FLdI2 var_8A
  loc_B3CCC4: LitI2_Byte 2
  loc_B3CCC6: AddI2
  loc_B3CCC7: CI4UI1
  loc_B3CCC8: FLdRfVar var_A4
  loc_B3CCCB: Ary1StI2
  loc_B3CCCC: FFreeVar var_D8 = "": var_F8 = ""
  loc_B3CCD5: FLdRfVar var_8A
  loc_B3CCD8: NextStepI2 var_14C, loc_B3CCA3
  loc_B3CCDD: LitI2_Byte 6
  loc_B3CCDF: LitI4 1
  loc_B3CCE4: FLdRfVar var_A4
  loc_B3CCE7: Ary1LdI2
  loc_B3CCE8: MulI2
  loc_B3CCE9: LitI2_Byte 7
  loc_B3CCEB: LitI4 2
  loc_B3CCF0: FLdRfVar var_A4
  loc_B3CCF3: Ary1LdI2
  loc_B3CCF4: MulI2
  loc_B3CCF5: AddI2
  loc_B3CCF6: LitI2_Byte 8
  loc_B3CCF8: LitI4 3
  loc_B3CCFD: FLdRfVar var_A4
  loc_B3CD00: Ary1LdI2
  loc_B3CD01: MulI2
  loc_B3CD02: AddI2
  loc_B3CD03: LitI2_Byte 9
  loc_B3CD05: LitI4 4
  loc_B3CD0A: FLdRfVar var_A4
  loc_B3CD0D: Ary1LdI2
  loc_B3CD0E: MulI2
  loc_B3CD0F: AddI2
  loc_B3CD10: LitI2_Byte 4
  loc_B3CD12: LitI4 5
  loc_B3CD17: FLdRfVar var_A4
  loc_B3CD1A: Ary1LdI2
  loc_B3CD1B: MulI2
  loc_B3CD1C: AddI2
  loc_B3CD1D: LitI2_Byte 5
  loc_B3CD1F: LitI4 6
  loc_B3CD24: FLdRfVar var_A4
  loc_B3CD27: Ary1LdI2
  loc_B3CD28: MulI2
  loc_B3CD29: AddI2
  loc_B3CD2A: LitI2_Byte 6
  loc_B3CD2C: LitI4 7
  loc_B3CD31: FLdRfVar var_A4
  loc_B3CD34: Ary1LdI2
  loc_B3CD35: MulI2
  loc_B3CD36: AddI2
  loc_B3CD37: LitI2_Byte 7
  loc_B3CD39: LitI4 8
  loc_B3CD3E: FLdRfVar var_A4
  loc_B3CD41: Ary1LdI2
  loc_B3CD42: MulI2
  loc_B3CD43: AddI2
  loc_B3CD44: LitI2_Byte 8
  loc_B3CD46: LitI4 9
  loc_B3CD4B: FLdRfVar var_A4
  loc_B3CD4E: Ary1LdI2
  loc_B3CD4F: MulI2
  loc_B3CD50: AddI2
  loc_B3CD51: LitI2_Byte 9
  loc_B3CD53: LitI4 &HA
  loc_B3CD58: FLdRfVar var_A4
  loc_B3CD5B: Ary1LdI2
  loc_B3CD5C: MulI2
  loc_B3CD5D: AddI2
  loc_B3CD5E: FStI2 var_14E
  loc_B3CD61: FLdI2 var_14E
  loc_B3CD64: CR8I2
  loc_B3CD65: LitI2_Byte &HB
  loc_B3CD67: CR8I2
  loc_B3CD68: DivR8
  loc_B3CD69: FStFPR8 var_158
  loc_B3CD6C: FLdI2 var_14E
  loc_B3CD6F: CR8I2
  loc_B3CD70: FLdFPR8 var_158
  loc_B3CD73: FnFixR8
  loc_B3CD75: LitI2_Byte &HB
  loc_B3CD77: CR8I2
  loc_B3CD78: MulR8
  loc_B3CD79: SubR4
  loc_B3CD7A: CI2R8
  loc_B3CD7B: FStI2 var_15A
  loc_B3CD7E: FLdI2 var_15A
  loc_B3CD81: LitI2_Byte &HA
  loc_B3CD83: LtI2
  loc_B3CD84: BranchF loc_B3CD96
  loc_B3CD87: FLdI2 var_15A
  loc_B3CD8A: LitI4 &HB
  loc_B3CD8F: FLdRfVar var_A4
  loc_B3CD92: Ary1StI2
  loc_B3CD93: Branch loc_B3CE78
  loc_B3CD96: LitVarI2 var_D8, 3
  loc_B3CD9B: FLdRfVar var_15A
  loc_B3CD9E: CVarRef
  loc_B3CDA3: FLdI2 var_15A
  loc_B3CDA6: LitI2_Byte &HA
  loc_B3CDA8: LtI2
  loc_B3CDA9: CVarBoolI2 var_B8
  loc_B3CDAD: FLdRfVar var_F8
  loc_B3CDB0: ImpAdCallFPR4  = IIf(, , )
  loc_B3CDB5: FLdRfVar var_F8
  loc_B3CDB8: CI2Var
  loc_B3CDB9: LitI4 2
  loc_B3CDBE: FLdRfVar var_A4
  loc_B3CDC1: Ary1StI2
  loc_B3CDC2: FFreeVar var_B8 = "": var_D8 = ""
  loc_B3CDCB: LitI2_Byte 6
  loc_B3CDCD: LitI4 1
  loc_B3CDD2: FLdRfVar var_A4
  loc_B3CDD5: Ary1LdI2
  loc_B3CDD6: MulI2
  loc_B3CDD7: LitI2_Byte 7
  loc_B3CDD9: LitI4 2
  loc_B3CDDE: FLdRfVar var_A4
  loc_B3CDE1: Ary1LdI2
  loc_B3CDE2: MulI2
  loc_B3CDE3: AddI2
  loc_B3CDE4: LitI2_Byte 8
  loc_B3CDE6: LitI4 3
  loc_B3CDEB: FLdRfVar var_A4
  loc_B3CDEE: Ary1LdI2
  loc_B3CDEF: MulI2
  loc_B3CDF0: AddI2
  loc_B3CDF1: LitI2_Byte 9
  loc_B3CDF3: LitI4 4
  loc_B3CDF8: FLdRfVar var_A4
  loc_B3CDFB: Ary1LdI2
  loc_B3CDFC: MulI2
  loc_B3CDFD: AddI2
  loc_B3CDFE: LitI2_Byte 4
  loc_B3CE00: LitI4 5
  loc_B3CE05: FLdRfVar var_A4
  loc_B3CE08: Ary1LdI2
  loc_B3CE09: MulI2
  loc_B3CE0A: AddI2
  loc_B3CE0B: LitI2_Byte 5
  loc_B3CE0D: LitI4 6
  loc_B3CE12: FLdRfVar var_A4
  loc_B3CE15: Ary1LdI2
  loc_B3CE16: MulI2
  loc_B3CE17: AddI2
  loc_B3CE18: LitI2_Byte 6
  loc_B3CE1A: LitI4 7
  loc_B3CE1F: FLdRfVar var_A4
  loc_B3CE22: Ary1LdI2
  loc_B3CE23: MulI2
  loc_B3CE24: AddI2
  loc_B3CE25: LitI2_Byte 7
  loc_B3CE27: LitI4 8
  loc_B3CE2C: FLdRfVar var_A4
  loc_B3CE2F: Ary1LdI2
  loc_B3CE30: MulI2
  loc_B3CE31: AddI2
  loc_B3CE32: LitI2_Byte 8
  loc_B3CE34: LitI4 9
  loc_B3CE39: FLdRfVar var_A4
  loc_B3CE3C: Ary1LdI2
  loc_B3CE3D: MulI2
  loc_B3CE3E: AddI2
  loc_B3CE3F: LitI2_Byte 9
  loc_B3CE41: LitI4 &HA
  loc_B3CE46: FLdRfVar var_A4
  loc_B3CE49: Ary1LdI2
  loc_B3CE4A: MulI2
  loc_B3CE4B: AddI2
  loc_B3CE4C: FStI2 var_14E
  loc_B3CE4F: FLdI2 var_14E
  loc_B3CE52: CR8I2
  loc_B3CE53: LitI2_Byte &HB
  loc_B3CE55: CR8I2
  loc_B3CE56: DivR8
  loc_B3CE57: FStFPR8 var_158
  loc_B3CE5A: FLdI2 var_14E
  loc_B3CE5D: CR8I2
  loc_B3CE5E: FLdFPR8 var_158
  loc_B3CE61: FnFixR8
  loc_B3CE63: LitI2_Byte &HB
  loc_B3CE65: CR8I2
  loc_B3CE66: MulR8
  loc_B3CE67: SubR4
  loc_B3CE68: CI2R8
  loc_B3CE69: FStI2 var_15A
  loc_B3CE6C: FLdI2 var_15A
  loc_B3CE6F: LitI4 &HB
  loc_B3CE74: FLdRfVar var_A4
  loc_B3CE77: Ary1StI2
  loc_B3CE78: ILdRf var_88
  loc_B3CE7B: LitI4 1
  loc_B3CE80: FLdRfVar var_A4
  loc_B3CE83: Ary1LdI2
  loc_B3CE84: CStrUI1
  loc_B3CE86: FStStrNoPop var_160
  loc_B3CE89: ConcatStr
  loc_B3CE8A: FStStrNoPop var_164
  loc_B3CE8D: LitI4 2
  loc_B3CE92: FLdRfVar var_A4
  loc_B3CE95: Ary1LdI2
  loc_B3CE96: CStrUI1
  loc_B3CE98: FStStrNoPop var_168
  loc_B3CE9B: ConcatStr
  loc_B3CE9C: FStStrNoPop var_16C
  loc_B3CE9F: LitStr "-"
  loc_B3CEA2: ConcatStr
  loc_B3CEA3: FStStr var_88
  loc_B3CEA6: FFreeStr var_160 = "": var_164 = "": var_168 = ""
  loc_B3CEB1: LitI2_Byte 3
  loc_B3CEB3: FLdRfVar var_8C
  loc_B3CEB6: LitI2_Byte &HA
  loc_B3CEB8: LitI2_Byte 1
  loc_B3CEBA: ForStepI2 var_170
  loc_B3CEC0: ILdRf var_88
  loc_B3CEC3: FLdI2 var_8C
  loc_B3CEC6: CI4UI1
  loc_B3CEC7: FLdRfVar var_A4
  loc_B3CECA: Ary1LdI2
  loc_B3CECB: CStrUI1
  loc_B3CECD: FStStrNoPop var_160
  loc_B3CED0: ConcatStr
  loc_B3CED1: FStStr var_88
  loc_B3CED4: FFree1Str var_160
  loc_B3CED7: FLdRfVar var_8C
  loc_B3CEDA: NextStepI2 var_170, loc_B3CEC0
  loc_B3CEDF: ILdRf var_88
  loc_B3CEE2: LitStr "-"
  loc_B3CEE5: ConcatStr
  loc_B3CEE6: FStStrNoPop var_160
  loc_B3CEE9: LitI4 &HB
  loc_B3CEEE: FLdRfVar var_A4
  loc_B3CEF1: Ary1LdI2
  loc_B3CEF2: CStrUI1
  loc_B3CEF4: FStStrNoPop var_164
  loc_B3CEF7: ConcatStr
  loc_B3CEF8: FStStr var_88
  loc_B3CEFB: FFreeStr var_160 = ""
  loc_B3CF02: ExitProc
End Function

Private Function Proc_270_137_AC2610(arg_C, arg_10) 'AC2610
  'Data Table: 4C25A4
  loc_AC252C: ILdRf arg_10
  loc_AC252F: FStStrCopy var_8C
  loc_AC2532: LitStr "SELECT ifnull(GROUP_CONCAT(DetaPers SEPARATOR ' - '),'') as Propietarios FROM (SELECT CucuPers FROM relacion WHERE CodiOfic = "
  loc_AC2535: FLdI2 arg_C
  loc_AC2538: CStrUI1
  loc_AC253A: FStStrNoPop var_90
  loc_AC253D: ConcatStr
  loc_AC253E: FStStrNoPop var_94
  loc_AC2541: LitStr " AND CuenCtct = '"
  loc_AC2544: ConcatStr
  loc_AC2545: FStStrNoPop var_98
  loc_AC2548: ILdRf var_8C
  loc_AC254B: ConcatStr
  loc_AC254C: FStStrNoPop var_9C
  loc_AC254F: LitStr "' AND relacion.TipoRela = 'Propietario' AND FebaRela IS NULL) AS r LEFT JOIN infogov.persona as p ON p.CucuPers = r.CucuPers"
  loc_AC2552: ConcatStr
  loc_AC2553: FStStrNoPop var_A0
  loc_AC2556: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AC255B: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_AC2568: FLdRfVar var_A4
  loc_AC256B: FMemLdPr
  loc_AC2570:  = Me.RecordCount
  loc_AC2575: ILdRf var_A4
  loc_AC2578: LitI4 0
  loc_AC257D: GtI4
  loc_AC257E: BranchF loc_AC2608
  loc_AC2581: FLdRfVar var_CC
  loc_AC2584: FLdRfVar var_BC
  loc_AC2587: LitVarStr var_B8, "Propietarios"
  loc_AC258C: PopAdLdVar
  loc_AC258D: FLdRfVar var_A8
  loc_AC2590: FMemLdPr
  loc_AC2595:  = Me.Fields
  loc_AC259A: FLdPr var_A8
  loc_AC259D: from_stack_2 = Me.Item(from_stack_1)
  loc_AC25A2: FLdPr var_BC
  loc_AC25A5:  = Me.Value
  loc_AC25AA: FLdRfVar var_CC
  loc_AC25AD: LitVarStr var_DC, vbNullString
  loc_AC25B2: HardType
  loc_AC25B3: NeVarBool
  loc_AC25B5: FFreeAd var_A8 = ""
  loc_AC25BC: FFree1Var var_CC = ""
  loc_AC25BF: BranchF loc_AC25FF
  loc_AC25C2: FLdRfVar var_CC
  loc_AC25C5: FLdRfVar var_BC
  loc_AC25C8: LitVarStr var_B8, "Propietarios"
  loc_AC25CD: PopAdLdVar
  loc_AC25CE: FLdRfVar var_A8
  loc_AC25D1: FMemLdPr
  loc_AC25D6:  = Me.Fields
  loc_AC25DB: FLdPr var_A8
  loc_AC25DE: from_stack_2 = Me.Item(from_stack_1)
  loc_AC25E3: FLdPr var_BC
  loc_AC25E6:  = Me.Value
  loc_AC25EB: FLdRfVar var_CC
  loc_AC25EE: CStrVarTmp
  loc_AC25EF: FStStr var_88
  loc_AC25F2: FFreeAd var_A8 = ""
  loc_AC25F9: FFree1Var var_CC = ""
  loc_AC25FC: Branch loc_AC2605
  loc_AC25FF: LitStr vbNullString
  loc_AC2602: FStStrCopy var_88
  loc_AC2605: Branch loc_AC260E
  loc_AC2608: LitStr vbNullString
  loc_AC260B: FStStrCopy var_88
  loc_AC260E: ExitProc
End Function

Private Function Proc_270_138_AC2750(arg_C, arg_10) 'AC2750
  'Data Table: 4C25A4
  loc_AC266C: ILdRf arg_10
  loc_AC266F: FStStrCopy var_8C
  loc_AC2672: LitStr "SELECT ifnull(GROUP_CONCAT(DetaPers SEPARATOR ' - '),'') as Poseedor FROM (SELECT CucuPers FROM relacion WHERE CodiOfic = "
  loc_AC2675: FLdI2 arg_C
  loc_AC2678: CStrUI1
  loc_AC267A: FStStrNoPop var_90
  loc_AC267D: ConcatStr
  loc_AC267E: FStStrNoPop var_94
  loc_AC2681: LitStr " AND CuenCtct = '"
  loc_AC2684: ConcatStr
  loc_AC2685: FStStrNoPop var_98
  loc_AC2688: ILdRf var_8C
  loc_AC268B: ConcatStr
  loc_AC268C: FStStrNoPop var_9C
  loc_AC268F: LitStr "' AND relacion.TipoRela = 'Poseedor' AND FebaRela IS NULL) AS r LEFT JOIN infogov.persona as p ON p.CucuPers = r.CucuPers"
  loc_AC2692: ConcatStr
  loc_AC2693: FStStrNoPop var_A0
  loc_AC2696: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AC269B: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_AC26A8: FLdRfVar var_A4
  loc_AC26AB: FMemLdPr
  loc_AC26B0:  = Me.RecordCount
  loc_AC26B5: ILdRf var_A4
  loc_AC26B8: LitI4 0
  loc_AC26BD: GtI4
  loc_AC26BE: BranchF loc_AC2748
  loc_AC26C1: FLdRfVar var_CC
  loc_AC26C4: FLdRfVar var_BC
  loc_AC26C7: LitVarStr var_B8, "Poseedor"
  loc_AC26CC: PopAdLdVar
  loc_AC26CD: FLdRfVar var_A8
  loc_AC26D0: FMemLdPr
  loc_AC26D5:  = Me.Fields
  loc_AC26DA: FLdPr var_A8
  loc_AC26DD: from_stack_2 = Me.Item(from_stack_1)
  loc_AC26E2: FLdPr var_BC
  loc_AC26E5:  = Me.Value
  loc_AC26EA: FLdRfVar var_CC
  loc_AC26ED: LitVarStr var_DC, vbNullString
  loc_AC26F2: HardType
  loc_AC26F3: NeVarBool
  loc_AC26F5: FFreeAd var_A8 = ""
  loc_AC26FC: FFree1Var var_CC = ""
  loc_AC26FF: BranchF loc_AC273F
  loc_AC2702: FLdRfVar var_CC
  loc_AC2705: FLdRfVar var_BC
  loc_AC2708: LitVarStr var_B8, "Poseedor"
  loc_AC270D: PopAdLdVar
  loc_AC270E: FLdRfVar var_A8
  loc_AC2711: FMemLdPr
  loc_AC2716:  = Me.Fields
  loc_AC271B: FLdPr var_A8
  loc_AC271E: from_stack_2 = Me.Item(from_stack_1)
  loc_AC2723: FLdPr var_BC
  loc_AC2726:  = Me.Value
  loc_AC272B: FLdRfVar var_CC
  loc_AC272E: CStrVarTmp
  loc_AC272F: FStStr var_88
  loc_AC2732: FFreeAd var_A8 = ""
  loc_AC2739: FFree1Var var_CC = ""
  loc_AC273C: Branch loc_AC2745
  loc_AC273F: LitStr vbNullString
  loc_AC2742: FStStrCopy var_88
  loc_AC2745: Branch loc_AC274E
  loc_AC2748: LitStr vbNullString
  loc_AC274B: FStStrCopy var_88
  loc_AC274E: ExitProc
End Function

Private Function Proc_270_139_A8BB28(arg_C) 'A8BB28
  'Data Table: 4C25A4
  loc_A8BA9C: ILdRf arg_C
  loc_A8BA9F: FStStrCopy var_8C
  loc_A8BAA2: LitStr "SELECT CONCAT_WS(' ', denominacion, CUIT) as fiduciario FROM vpadrones_persona"
  loc_A8BAA5: LitStr " WHERE tipo_relacion_persona = 'Fiduciario' AND Estado = 'Activo' AND nro_padron = '"
  loc_A8BAA8: ConcatStr
  loc_A8BAA9: FStStrNoPop var_90
  loc_A8BAAC: ILdRf var_8C
  loc_A8BAAF: ConcatStr
  loc_A8BAB0: FStStrNoPop var_94
  loc_A8BAB3: LitStr "' LIMIT 1"
  loc_A8BAB6: ConcatStr
  loc_A8BAB7: FStStrNoPop var_98
  loc_A8BABA: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A8BABF: FFreeStr var_90 = "": var_94 = ""
  loc_A8BAC8: FLdRfVar var_9C
  loc_A8BACB: FMemLdPr
  loc_A8BAD0:  = Me.RecordCount
  loc_A8BAD5: ILdRf var_9C
  loc_A8BAD8: LitI4 0
  loc_A8BADD: GtI4
  loc_A8BADE: BranchF loc_A8BB1E
  loc_A8BAE1: FLdRfVar var_C4
  loc_A8BAE4: FLdRfVar var_B4
  loc_A8BAE7: LitVarStr var_B0, "Fiduciario"
  loc_A8BAEC: PopAdLdVar
  loc_A8BAED: FLdRfVar var_A0
  loc_A8BAF0: FMemLdPr
  loc_A8BAF5:  = Me.Fields
  loc_A8BAFA: FLdPr var_A0
  loc_A8BAFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A8BB02: FLdPr var_B4
  loc_A8BB05:  = Me.Value
  loc_A8BB0A: FLdRfVar var_C4
  loc_A8BB0D: CStrVarTmp
  loc_A8BB0E: FStStr var_88
  loc_A8BB11: FFreeAd var_A0 = ""
  loc_A8BB18: FFree1Var var_C4 = ""
  loc_A8BB1B: Branch loc_A8BB24
  loc_A8BB1E: LitStr vbNullString
  loc_A8BB21: FStStrCopy var_88
  loc_A8BB24: ExitProc
  loc_A8BB25: FLdFPR8 arg_37C
End Function

Private Function Proc_270_140_A88DAC(arg_C, arg_10) 'A88DAC
  'Data Table: 4C25A4
  loc_A88D2C: LitStr " SELECT detafapa.CodiFapa FROM detafapa "
  loc_A88D2F: LitStr " INNER JOIN faciapre ON faciapre.CodiFapa = detafapa.CodiFapa"
  loc_A88D32: ConcatStr
  loc_A88D33: FStStrNoPop var_8C
  loc_A88D36: LitStr " AND faciapre.CuotDefa = detafapa.CuotDefa"
  loc_A88D39: ConcatStr
  loc_A88D3A: FStStrNoPop var_90
  loc_A88D3D: LitStr " AND faciapre.NumeApre = "
  loc_A88D40: ConcatStr
  loc_A88D41: FStStrNoPop var_94
  loc_A88D44: ILdRf arg_10
  loc_A88D47: CStrI4
  loc_A88D49: FStStrNoPop var_98
  loc_A88D4C: ConcatStr
  loc_A88D4D: FStStrNoPop var_9C
  loc_A88D50: LitStr " WHERE detafapa.CodiFapa = "
  loc_A88D53: ConcatStr
  loc_A88D54: FStStrNoPop var_A0
  loc_A88D57: ILdRf arg_C
  loc_A88D5A: CStrI4
  loc_A88D5C: FStStrNoPop var_A4
  loc_A88D5F: ConcatStr
  loc_A88D60: FStStrNoPop var_A8
  loc_A88D63: LitStr " AND FepaDefa IS NULL ORDER BY detafapa.CodiFapa, detafapa.CuotDefa"
  loc_A88D66: ConcatStr
  loc_A88D67: FStStrNoPop var_AC
  loc_A88D6A: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A88D6F: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A88D84: FLdRfVar var_B0
  loc_A88D87: FMemLdPr
  loc_A88D8C:  = Me.RecordCount
  loc_A88D91: ILdRf var_B0
  loc_A88D94: LitI4 0
  loc_A88D99: EqI4
  loc_A88D9A: BranchF loc_A88DA5
  loc_A88D9D: LitI2_Byte &HFF
  loc_A88D9F: FStI2 var_86
  loc_A88DA2: Branch loc_A88DAA
  loc_A88DA5: LitI2_Byte 0
  loc_A88DA7: FStI2 var_86
  loc_A88DAA: ExitProcI2
End Function

Private Function Proc_270_141_AF82C8(arg_C, arg_10, arg_14, arg_18) 'AF82C8
  'Data Table: 4C25A4
  loc_AF8140: ILdRf arg_C
  loc_AF8143: FStStrCopy var_90
  loc_AF8146: ILdRf arg_10
  loc_AF8149: FStStrCopy var_94
  loc_AF814C: ILdRf arg_14
  loc_AF814F: FStStrCopy var_98
  loc_AF8152: ILdRf arg_18
  loc_AF8155: FStStrCopy var_9C
  loc_AF8158: ILdRf var_98
  loc_AF815B: LitStr vbNullString
  loc_AF815E: NeStr
  loc_AF8160: BranchF loc_AF8177
  loc_AF8163: LitStr " AND ctacte.CodiConc = '"
  loc_AF8166: ILdRf var_98
  loc_AF8169: ConcatStr
  loc_AF816A: FStStrNoPop var_A4
  loc_AF816D: LitStr "'"
  loc_AF8170: ConcatStr
  loc_AF8171: FStStr var_A0
  loc_AF8174: FFree1Str var_A4
  loc_AF8177: ILdRf var_9C
  loc_AF817A: LitStr vbNullString
  loc_AF817D: NeStr
  loc_AF817F: BranchF loc_AF8196
  loc_AF8182: LitStr " AND concepto.ActiConc = '"
  loc_AF8185: ILdRf var_9C
  loc_AF8188: ConcatStr
  loc_AF8189: FStStrNoPop var_A4
  loc_AF818C: LitStr "'"
  loc_AF818F: ConcatStr
  loc_AF8190: FStStr var_A0
  loc_AF8193: FFree1Str var_A4
  loc_AF8196: LitStr " SELECT count(*) as Cant FROM ctacte "
  loc_AF8199: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_AF819C: ConcatStr
  loc_AF819D: CVarStr var_D4
  loc_AF81A0: FLdRfVar var_90
  loc_AF81A3: CVarRef
  loc_AF81A8: FLdRfVar var_C4
  loc_AF81AB: ImpAdCallFPR4  = Year()
  loc_AF81B0: FLdRfVar var_C4
  loc_AF81B3: ConcatVar var_E4
  loc_AF81B7: LitVarStr var_F4, " AND concepto.CodiConc = ctacte.CodiConc"
  loc_AF81BC: ConcatVar var_104
  loc_AF81C0: LitVarStr var_114, " WHERE FealCtct >= "
  loc_AF81C5: ConcatVar var_124
  loc_AF81C9: LitI4 1
  loc_AF81CE: LitI4 1
  loc_AF81D3: LitVarStr var_144, "'yyyy-mm-dd'"
  loc_AF81D8: FStVarCopyObj var_154
  loc_AF81DB: FLdRfVar var_154
  loc_AF81DE: FLdRfVar var_90
  loc_AF81E1: CVarRef
  loc_AF81E6: FLdRfVar var_164
  loc_AF81E9: ImpAdCallFPR4  = Format(, )
  loc_AF81EE: FLdRfVar var_164
  loc_AF81F1: ConcatVar var_174
  loc_AF81F5: LitVarStr var_184, " AND FealCtct <= "
  loc_AF81FA: ConcatVar var_194
  loc_AF81FE: LitI4 1
  loc_AF8203: LitI4 1
  loc_AF8208: LitVarStr var_1B4, "'yyyy-mm-dd'"
  loc_AF820D: FStVarCopyObj var_1C4
  loc_AF8210: FLdRfVar var_1C4
  loc_AF8213: FLdRfVar var_94
  loc_AF8216: CVarRef
  loc_AF821B: FLdRfVar var_1D4
  loc_AF821E: ImpAdCallFPR4  = Format(, )
  loc_AF8223: FLdRfVar var_1D4
  loc_AF8226: ConcatVar var_1E4
  loc_AF822A: LitVarStr var_1F4, " AND CodiTimo = 1"
  loc_AF822F: ConcatVar var_204
  loc_AF8233: ILdRf var_A0
  loc_AF8236: CVarStr var_214
  loc_AF8239: ConcatVar var_224
  loc_AF823D: CStrVarVal var_A4
  loc_AF8241: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AF8246: FFree1Str var_A4
  loc_AF8249: FFreeVar var_D4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_154 = "": var_124 = "": var_164 = "": var_174 = "": var_1C4 = "": var_194 = "": var_1D4 = "": var_1E4 = "": var_204 = ""
  loc_AF8268: FLdRfVar var_228
  loc_AF826B: FMemLdPr
  loc_AF8270:  = Me.RecordCount
  loc_AF8275: ILdRf var_228
  loc_AF8278: LitI4 0
  loc_AF827D: GeI4
  loc_AF827E: BranchF loc_AF82BE
  loc_AF8281: FLdRfVar var_C4
  loc_AF8284: FLdRfVar var_230
  loc_AF8287: LitVarStr var_B4, "Cant"
  loc_AF828C: PopAdLdVar
  loc_AF828D: FLdRfVar var_22C
  loc_AF8290: FMemLdPr
  loc_AF8295:  = Me.Fields
  loc_AF829A: FLdPr var_22C
  loc_AF829D: from_stack_2 = Me.Item(from_stack_1)
  loc_AF82A2: FLdPr var_230
  loc_AF82A5:  = Me.Value
  loc_AF82AA: FLdRfVar var_C4
  loc_AF82AD: CR4Var
  loc_AF82AE: FStFPR8 var_8C
  loc_AF82B1: FFreeAd var_22C = ""
  loc_AF82B8: FFree1Var var_C4 = ""
  loc_AF82BB: Branch loc_AF82C4
  loc_AF82BE: LitI2_Byte 0
  loc_AF82C0: CR8I2
  loc_AF82C1: FStFPR8 var_8C
  loc_AF82C4: ExitProcR8
  loc_AF82C5: FLdFPR4 arg_373
End Function

Private Function Proc_270_142_A4F9EC() 'A4F9EC
  'Data Table: 4C25A4
  loc_A4F9A0: LitStr "SELECT IFNULL(MAX(CodiFapa),0) + 1 CodiFapa  FROM facipago"
  loc_A4F9A3: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A4F9A8: FLdRfVar var_BC
  loc_A4F9AB: FLdRfVar var_AC
  loc_A4F9AE: LitVarStr var_A8, "CodiFapa"
  loc_A4F9B3: PopAdLdVar
  loc_A4F9B4: FLdRfVar var_98
  loc_A4F9B7: FMemLdPr
  loc_A4F9BC:  = Me.Fields
  loc_A4F9C1: FLdPr var_98
  loc_A4F9C4: from_stack_2 = Me.Item(from_stack_1)
  loc_A4F9C9: FLdPr var_AC
  loc_A4F9CC:  = Me.Value
  loc_A4F9D1: FLdRfVar var_BC
  loc_A4F9D4: FnCLngVar
  loc_A4F9D6: CVarI4
  loc_A4F9DA: FStVar var_94
  loc_A4F9DE: FFreeAd var_98 = ""
  loc_A4F9E5: FFree1Var var_BC = ""
  loc_A4F9E8: ExitProcCb
End Function

Private Function Proc_270_143_A7C218(arg_C) 'A7C218
  'Data Table: 4C25A4
  loc_A7C1A0: LitStr " SELECT CodiTifa FROM facipago WHERE CodiFapa = "
  loc_A7C1A3: ILdRf arg_C
  loc_A7C1A6: CStrI4
  loc_A7C1A8: FStStrNoPop var_8C
  loc_A7C1AB: ConcatStr
  loc_A7C1AC: FStStrNoPop var_90
  loc_A7C1AF: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7C1B4: FFreeStr var_8C = ""
  loc_A7C1BB: FLdRfVar var_94
  loc_A7C1BE: FMemLdPr
  loc_A7C1C3:  = Me.RecordCount
  loc_A7C1C8: ILdRf var_94
  loc_A7C1CB: LitI4 0
  loc_A7C1D0: GtI4
  loc_A7C1D1: BranchF loc_A7C211
  loc_A7C1D4: FLdRfVar var_BC
  loc_A7C1D7: FLdRfVar var_AC
  loc_A7C1DA: LitVarStr var_A8, "CodiTifa"
  loc_A7C1DF: PopAdLdVar
  loc_A7C1E0: FLdRfVar var_98
  loc_A7C1E3: FMemLdPr
  loc_A7C1E8:  = Me.Fields
  loc_A7C1ED: FLdPr var_98
  loc_A7C1F0: from_stack_2 = Me.Item(from_stack_1)
  loc_A7C1F5: FLdPr var_AC
  loc_A7C1F8:  = Me.Value
  loc_A7C1FD: FLdRfVar var_BC
  loc_A7C200: CI2Var
  loc_A7C201: FStI2 var_86
  loc_A7C204: FFreeAd var_98 = ""
  loc_A7C20B: FFree1Var var_BC = ""
  loc_A7C20E: Branch loc_A7C216
  loc_A7C211: LitI2_Byte 0
  loc_A7C213: FStI2 var_86
  loc_A7C216: ExitProcI2
End Function

Private Function Proc_270_144_A7CAE8(arg_C) 'A7CAE8
  'Data Table: 4C25A4
  loc_A7CA70: LitStr " SELECT CacuFapa FROM facipago WHERE CodiFapa = "
  loc_A7CA73: ILdRf arg_C
  loc_A7CA76: CStrI4
  loc_A7CA78: FStStrNoPop var_8C
  loc_A7CA7B: ConcatStr
  loc_A7CA7C: FStStrNoPop var_90
  loc_A7CA7F: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7CA84: FFreeStr var_8C = ""
  loc_A7CA8B: FLdRfVar var_94
  loc_A7CA8E: FMemLdPr
  loc_A7CA93:  = Me.RecordCount
  loc_A7CA98: ILdRf var_94
  loc_A7CA9B: LitI4 0
  loc_A7CAA0: GtI4
  loc_A7CAA1: BranchF loc_A7CAE1
  loc_A7CAA4: FLdRfVar var_BC
  loc_A7CAA7: FLdRfVar var_AC
  loc_A7CAAA: LitVarStr var_A8, "CacuFapa"
  loc_A7CAAF: PopAdLdVar
  loc_A7CAB0: FLdRfVar var_98
  loc_A7CAB3: FMemLdPr
  loc_A7CAB8:  = Me.Fields
  loc_A7CABD: FLdPr var_98
  loc_A7CAC0: from_stack_2 = Me.Item(from_stack_1)
  loc_A7CAC5: FLdPr var_AC
  loc_A7CAC8:  = Me.Value
  loc_A7CACD: FLdRfVar var_BC
  loc_A7CAD0: CI2Var
  loc_A7CAD1: FStI2 var_86
  loc_A7CAD4: FFreeAd var_98 = ""
  loc_A7CADB: FFree1Var var_BC = ""
  loc_A7CADE: Branch loc_A7CAE6
  loc_A7CAE1: LitI2_Byte 0
  loc_A7CAE3: FStI2 var_86
  loc_A7CAE6: ExitProcI2
End Function

Private Function Proc_270_145_A7D830(arg_C) 'A7D830
  'Data Table: 4C25A4
  loc_A7D7B8: LitStr " SELECT EstaFapa FROM facipago WHERE CodiFapa = "
  loc_A7D7BB: ILdRf arg_C
  loc_A7D7BE: CStrI4
  loc_A7D7C0: FStStrNoPop var_8C
  loc_A7D7C3: ConcatStr
  loc_A7D7C4: FStStrNoPop var_90
  loc_A7D7C7: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7D7CC: FFreeStr var_8C = ""
  loc_A7D7D3: FLdRfVar var_94
  loc_A7D7D6: FMemLdPr
  loc_A7D7DB:  = Me.RecordCount
  loc_A7D7E0: ILdRf var_94
  loc_A7D7E3: LitI4 0
  loc_A7D7E8: GtI4
  loc_A7D7E9: BranchF loc_A7D829
  loc_A7D7EC: FLdRfVar var_BC
  loc_A7D7EF: FLdRfVar var_AC
  loc_A7D7F2: LitVarStr var_A8, "EstaFapa"
  loc_A7D7F7: PopAdLdVar
  loc_A7D7F8: FLdRfVar var_98
  loc_A7D7FB: FMemLdPr
  loc_A7D800:  = Me.Fields
  loc_A7D805: FLdPr var_98
  loc_A7D808: from_stack_2 = Me.Item(from_stack_1)
  loc_A7D80D: FLdPr var_AC
  loc_A7D810:  = Me.Value
  loc_A7D815: FLdRfVar var_BC
  loc_A7D818: CStrVarTmp
  loc_A7D819: FStStr var_88
  loc_A7D81C: FFreeAd var_98 = ""
  loc_A7D823: FFree1Var var_BC = ""
  loc_A7D826: Branch loc_A7D82F
  loc_A7D829: LitStr vbNullString
  loc_A7D82C: FStStrCopy var_88
  loc_A7D82F: ExitProc
End Function

Private Function Proc_270_146_A802BC(arg_C) 'A802BC
  'Data Table: 4C25A4
  loc_A8023C: LitStr " SELECT NovaFapa FROM facipago WHERE CodiFapa = "
  loc_A8023F: ILdRf arg_C
  loc_A80242: CStrI4
  loc_A80244: FStStrNoPop var_8C
  loc_A80247: ConcatStr
  loc_A80248: FStStrNoPop var_90
  loc_A8024B: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A80250: FFreeStr var_8C = ""
  loc_A80257: FLdRfVar var_94
  loc_A8025A: FMemLdPr
  loc_A8025F:  = Me.RecordCount
  loc_A80264: ILdRf var_94
  loc_A80267: LitI4 0
  loc_A8026C: GtI4
  loc_A8026D: BranchF loc_A802AF
  loc_A80270: FLdRfVar var_BC
  loc_A80273: FLdRfVar var_AC
  loc_A80276: LitVarStr var_A8, "NovaFapa"
  loc_A8027B: PopAdLdVar
  loc_A8027C: FLdRfVar var_98
  loc_A8027F: FMemLdPr
  loc_A80284:  = Me.Fields
  loc_A80289: FLdPr var_98
  loc_A8028C: from_stack_2 = Me.Item(from_stack_1)
  loc_A80291: FLdPr var_AC
  loc_A80294:  = Me.Value
  loc_A80299: FLdRfVar var_BC
  loc_A8029C: CUI1Var
  loc_A8029E: FStUI1 var_86
  loc_A802A2: FFreeAd var_98 = ""
  loc_A802A9: FFree1Var var_BC = ""
  loc_A802AC: Branch loc_A802B7
  loc_A802AF: LitI2_Byte 0
  loc_A802B1: CUI1I2
  loc_A802B3: FStUI1 var_86
  loc_A802B7: ExitProcUI1
End Function

Private Function Proc_270_147_A7D530(arg_C) 'A7D530
  'Data Table: 4C25A4
  loc_A7D4B8: LitStr " SELECT ConcPago FROM facipago WHERE CodiFapa = "
  loc_A7D4BB: ILdRf arg_C
  loc_A7D4BE: CStrI4
  loc_A7D4C0: FStStrNoPop var_8C
  loc_A7D4C3: ConcatStr
  loc_A7D4C4: FStStrNoPop var_90
  loc_A7D4C7: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7D4CC: FFreeStr var_8C = ""
  loc_A7D4D3: FLdRfVar var_94
  loc_A7D4D6: FMemLdPr
  loc_A7D4DB:  = Me.RecordCount
  loc_A7D4E0: ILdRf var_94
  loc_A7D4E3: LitI4 0
  loc_A7D4E8: GtI4
  loc_A7D4E9: BranchF loc_A7D529
  loc_A7D4EC: FLdRfVar var_BC
  loc_A7D4EF: FLdRfVar var_AC
  loc_A7D4F2: LitVarStr var_A8, "ConcPago"
  loc_A7D4F7: PopAdLdVar
  loc_A7D4F8: FLdRfVar var_98
  loc_A7D4FB: FMemLdPr
  loc_A7D500:  = Me.Fields
  loc_A7D505: FLdPr var_98
  loc_A7D508: from_stack_2 = Me.Item(from_stack_1)
  loc_A7D50D: FLdPr var_AC
  loc_A7D510:  = Me.Value
  loc_A7D515: FLdRfVar var_BC
  loc_A7D518: CStrVarTmp
  loc_A7D519: FStStr var_88
  loc_A7D51C: FFreeAd var_98 = ""
  loc_A7D523: FFree1Var var_BC = ""
  loc_A7D526: Branch loc_A7D52F
  loc_A7D529: LitStr vbNullString
  loc_A7D52C: FStStrCopy var_88
  loc_A7D52F: ExitProc
End Function

Private Function Proc_270_148_A7CF50(arg_C) 'A7CF50
  'Data Table: 4C25A4
  loc_A7CED8: LitStr " SELECT CodiExce FROM inmueble WHERE CodiInmu = "
  loc_A7CEDB: ILdRf arg_C
  loc_A7CEDE: CStrI4
  loc_A7CEE0: FStStrNoPop var_8C
  loc_A7CEE3: ConcatStr
  loc_A7CEE4: FStStrNoPop var_90
  loc_A7CEE7: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7CEEC: FFreeStr var_8C = ""
  loc_A7CEF3: FLdRfVar var_94
  loc_A7CEF6: FMemLdPr
  loc_A7CEFB:  = Me.RecordCount
  loc_A7CF00: ILdRf var_94
  loc_A7CF03: LitI4 0
  loc_A7CF08: GtI4
  loc_A7CF09: BranchF loc_A7CF49
  loc_A7CF0C: FLdRfVar var_BC
  loc_A7CF0F: FLdRfVar var_AC
  loc_A7CF12: LitVarStr var_A8, "CodiExce"
  loc_A7CF17: PopAdLdVar
  loc_A7CF18: FLdRfVar var_98
  loc_A7CF1B: FMemLdPr
  loc_A7CF20:  = Me.Fields
  loc_A7CF25: FLdPr var_98
  loc_A7CF28: from_stack_2 = Me.Item(from_stack_1)
  loc_A7CF2D: FLdPr var_AC
  loc_A7CF30:  = Me.Value
  loc_A7CF35: FLdRfVar var_BC
  loc_A7CF38: CI2Var
  loc_A7CF39: FStI2 var_86
  loc_A7CF3C: FFreeAd var_98 = ""
  loc_A7CF43: FFree1Var var_BC = ""
  loc_A7CF46: Branch loc_A7CF4E
  loc_A7CF49: LitI2_Byte 0
  loc_A7CF4B: FStI2 var_86
  loc_A7CF4E: ExitProcI2
End Function

Private Function Proc_270_149_A7C680(arg_C) 'A7C680
  'Data Table: 4C25A4
  loc_A7C608: LitStr " SELECT CodiExce FROM comercio WHERE CodiCome = "
  loc_A7C60B: ILdRf arg_C
  loc_A7C60E: CStrI4
  loc_A7C610: FStStrNoPop var_8C
  loc_A7C613: ConcatStr
  loc_A7C614: FStStrNoPop var_90
  loc_A7C617: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7C61C: FFreeStr var_8C = ""
  loc_A7C623: FLdRfVar var_94
  loc_A7C626: FMemLdPr
  loc_A7C62B:  = Me.RecordCount
  loc_A7C630: ILdRf var_94
  loc_A7C633: LitI4 0
  loc_A7C638: GtI4
  loc_A7C639: BranchF loc_A7C679
  loc_A7C63C: FLdRfVar var_BC
  loc_A7C63F: FLdRfVar var_AC
  loc_A7C642: LitVarStr var_A8, "CodiExce"
  loc_A7C647: PopAdLdVar
  loc_A7C648: FLdRfVar var_98
  loc_A7C64B: FMemLdPr
  loc_A7C650:  = Me.Fields
  loc_A7C655: FLdPr var_98
  loc_A7C658: from_stack_2 = Me.Item(from_stack_1)
  loc_A7C65D: FLdPr var_AC
  loc_A7C660:  = Me.Value
  loc_A7C665: FLdRfVar var_BC
  loc_A7C668: CI2Var
  loc_A7C669: FStI2 var_86
  loc_A7C66C: FFreeAd var_98 = ""
  loc_A7C673: FFree1Var var_BC = ""
  loc_A7C676: Branch loc_A7C67E
  loc_A7C679: LitI2_Byte 0
  loc_A7C67B: FStI2 var_86
  loc_A7C67E: ExitProcI2
End Function

Private Function Proc_270_150_AD42D8(arg_C, arg_10) 'AD42D8
  'Data Table: 4C25A4
  loc_AD41D8: ILdRf arg_10
  loc_AD41DB: FStStrCopy var_8C
  loc_AD41DE: LitStr " SELECT * FROM freninmu "
  loc_AD41E1: LitStr " INNER JOIN servinmu ON servinmu.CodiInmu = freninmu.CodiInmu AND servinmu.NumeFrin = freninmu.NumeFrin"
  loc_AD41E4: ConcatStr
  loc_AD41E5: FStStrNoPop var_90
  loc_AD41E8: LitStr " AND FedeSein <= '"
  loc_AD41EB: ConcatStr
  loc_AD41EC: FStStrNoPop var_C4
  loc_AD41EF: LitI4 1
  loc_AD41F4: LitI4 1
  loc_AD41F9: LitVarStr var_B0, "yyyy-mm-dd"
  loc_AD41FE: FStVarCopyObj var_C0
  loc_AD4201: FLdRfVar var_C0
  loc_AD4204: FLdRfVar var_8C
  loc_AD4207: CVarRef
  loc_AD420C: ImpAdCallI2 Format$(, )
  loc_AD4211: FStStrNoPop var_C8
  loc_AD4214: ConcatStr
  loc_AD4215: FStStrNoPop var_CC
  loc_AD4218: LitStr "'"
  loc_AD421B: ConcatStr
  loc_AD421C: FStStrNoPop var_D0
  loc_AD421F: LitStr " AND (FehaSein > '"
  loc_AD4222: ConcatStr
  loc_AD4223: FStStrNoPop var_104
  loc_AD4226: LitI4 1
  loc_AD422B: LitI4 1
  loc_AD4230: LitVarStr var_F0, "yyyy-mm-dd"
  loc_AD4235: FStVarCopyObj var_100
  loc_AD4238: FLdRfVar var_100
  loc_AD423B: FLdRfVar var_8C
  loc_AD423E: CVarRef
  loc_AD4243: ImpAdCallI2 Format$(, )
  loc_AD4248: FStStrNoPop var_108
  loc_AD424B: ConcatStr
  loc_AD424C: FStStrNoPop var_10C
  loc_AD424F: LitStr "'"
  loc_AD4252: ConcatStr
  loc_AD4253: FStStrNoPop var_110
  loc_AD4256: LitStr " OR FehaSein IS NULL) "
  loc_AD4259: ConcatStr
  loc_AD425A: FStStrNoPop var_114
  loc_AD425D: LitStr " WHERE freninmu.CodiInmu = "
  loc_AD4260: ConcatStr
  loc_AD4261: FStStrNoPop var_118
  loc_AD4264: ILdRf arg_C
  loc_AD4267: CStrI4
  loc_AD4269: FStStrNoPop var_11C
  loc_AD426C: ConcatStr
  loc_AD426D: FStStrNoPop var_120
  loc_AD4270: LitStr " GROUP BY freninmu.CodiInmu, freninmu.NumeFrin"
  loc_AD4273: ConcatStr
  loc_AD4274: FStStrNoPop var_124
  loc_AD4277: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AD427C: FFreeStr var_90 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_AD429B: FFreeVar var_C0 = ""
  loc_AD42A2: FLdRfVar var_128
  loc_AD42A5: FMemLdPr
  loc_AD42AA:  = Me.RecordCount
  loc_AD42AF: ILdRf var_128
  loc_AD42B2: LitI4 0
  loc_AD42B7: GtI4
  loc_AD42B8: BranchF loc_AD42D2
  loc_AD42BB: FLdRfVar var_128
  loc_AD42BE: FMemLdPr
  loc_AD42C3:  = Me.RecordCount
  loc_AD42C8: ILdRf var_128
  loc_AD42CB: CI2I4
  loc_AD42CC: FStI2 var_86
  loc_AD42CF: Branch loc_AD42D7
  loc_AD42D2: LitI2_Byte 0
  loc_AD42D4: FStI2 var_86
  loc_AD42D7: ExitProcI2
End Function

Private Function Proc_270_151_A7C5C4(arg_C) 'A7C5C4
  'Data Table: 4C25A4
  loc_A7C54C: LitStr " SELECT IFNULL(SUM(MetrFrin),0) MetrFrin FROM freninmu WHERE CodiInmu = "
  loc_A7C54F: ILdRf arg_C
  loc_A7C552: CStrI4
  loc_A7C554: FStStrNoPop var_8C
  loc_A7C557: ConcatStr
  loc_A7C558: FStStrNoPop var_90
  loc_A7C55B: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_A7C560: FFreeStr var_8C = ""
  loc_A7C567: FLdRfVar var_94
  loc_A7C56A: FMemLdPr
  loc_A7C56F:  = Me.RecordCount
  loc_A7C574: ILdRf var_94
  loc_A7C577: LitI4 0
  loc_A7C57C: GtI4
  loc_A7C57D: BranchF loc_A7C5BD
  loc_A7C580: FLdRfVar var_BC
  loc_A7C583: FLdRfVar var_AC
  loc_A7C586: LitVarStr var_A8, "MetrFrin"
  loc_A7C58B: PopAdLdVar
  loc_A7C58C: FLdRfVar var_98
  loc_A7C58F: FMemLdPr
  loc_A7C594:  = Me.Fields
  loc_A7C599: FLdPr var_98
  loc_A7C59C: from_stack_2 = Me.Item(from_stack_1)
  loc_A7C5A1: FLdPr var_AC
  loc_A7C5A4:  = Me.Value
  loc_A7C5A9: FLdRfVar var_BC
  loc_A7C5AC: CI2Var
  loc_A7C5AD: FStI2 var_86
  loc_A7C5B0: FFreeAd var_98 = ""
  loc_A7C5B7: FFree1Var var_BC = ""
  loc_A7C5BA: Branch loc_A7C5C2
  loc_A7C5BD: LitI2_Byte 0
  loc_A7C5BF: FStI2 var_86
  loc_A7C5C2: ExitProcI2
End Function

Private Function Proc_270_152_AA2FF8(arg_C) 'AA2FF8
  'Data Table: 4C25A4
  loc_AA2F3C: ILdRf arg_C
  loc_AA2F3F: FStStrCopy var_8C
  loc_AA2F42: LitStr "Municipalidad de Guaymallén"
  loc_AA2F45: LitStr "Municipalidad de Tunuyán"
  loc_AA2F48: EqStr
  loc_AA2F4A: BranchF loc_AA2FA2
  loc_AA2F4D: LitStr " SELECT CodiDifu FROM detadifu WHERE CodiDifu = '"
  loc_AA2F50: ILdRf var_8C
  loc_AA2F53: ConcatStr
  loc_AA2F54: FStStrNoPop var_90
  loc_AA2F57: LitStr "' AND BajaFeho IS NULL"
  loc_AA2F5A: ConcatStr
  loc_AA2F5B: FStStrNoPop var_94
  loc_AA2F5E: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AA2F63: FFreeStr var_90 = ""
  loc_AA2F6A: FLdRfVar var_98
  loc_AA2F6D: FMemLdPr
  loc_AA2F72:  = Me.RecordCount
  loc_AA2F77: ILdRf var_98
  loc_AA2F7A: LitI4 0
  loc_AA2F7F: GtI4
  loc_AA2F80: BranchF loc_AA2F9A
  loc_AA2F83: FLdRfVar var_98
  loc_AA2F86: FMemLdPr
  loc_AA2F8B:  = Me.RecordCount
  loc_AA2F90: ILdRf var_98
  loc_AA2F93: CI2I4
  loc_AA2F94: FStI2 var_86
  loc_AA2F97: Branch loc_AA2F9F
  loc_AA2F9A: LitI2_Byte 0
  loc_AA2F9C: FStI2 var_86
  loc_AA2F9F: Branch loc_AA2FF4
  loc_AA2FA2: LitStr " SELECT CodiDifu FROM detadifu WHERE CodiDifu = "
  loc_AA2FA5: ILdRf var_8C
  loc_AA2FA8: ConcatStr
  loc_AA2FA9: FStStrNoPop var_90
  loc_AA2FAC: LitStr " AND FebaDedi IS NULL"
  loc_AA2FAF: ConcatStr
  loc_AA2FB0: FStStrNoPop var_94
  loc_AA2FB3: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_AA2FB8: FFreeStr var_90 = ""
  loc_AA2FBF: FLdRfVar var_98
  loc_AA2FC2: FMemLdPr
  loc_AA2FC7:  = Me.RecordCount
  loc_AA2FCC: ILdRf var_98
  loc_AA2FCF: LitI4 0
  loc_AA2FD4: GtI4
  loc_AA2FD5: BranchF loc_AA2FEF
  loc_AA2FD8: FLdRfVar var_98
  loc_AA2FDB: FMemLdPr
  loc_AA2FE0:  = Me.RecordCount
  loc_AA2FE5: ILdRf var_98
  loc_AA2FE8: CI2I4
  loc_AA2FE9: FStI2 var_86
  loc_AA2FEC: Branch loc_AA2FF4
  loc_AA2FEF: LitI2_Byte 0
  loc_AA2FF1: FStI2 var_86
  loc_AA2FF4: ExitProcI2
End Function

Private Function Proc_270_153_A8B2A4(arg_C) 'A8B2A4
  'Data Table: 4C25A4
  loc_A8B204: ILdRf arg_C
  loc_A8B207: FStStrCopy var_8C
  loc_A8B20A: ILdRf var_8C
  loc_A8B20D: FStStrCopy var_90
  loc_A8B210: ILdRf var_90
  loc_A8B213: LitStr "13020101"
  loc_A8B216: EqStr
  loc_A8B218: BranchF loc_A8B224
  loc_A8B21B: LitStr "Deuda Bim"
  loc_A8B21E: FStStrCopy var_88
  loc_A8B221: Branch loc_A8B2A2
  loc_A8B224: ILdRf var_90
  loc_A8B227: LitStr "13031500"
  loc_A8B22A: EqStr
  loc_A8B22C: BranchF loc_A8B238
  loc_A8B22F: LitStr "Deuda Bim"
  loc_A8B232: FStStrCopy var_88
  loc_A8B235: Branch loc_A8B2A2
  loc_A8B238: ILdRf var_90
  loc_A8B23B: LitStr "13020102"
  loc_A8B23E: EqStr
  loc_A8B240: BranchF loc_A8B24C
  loc_A8B243: LitStr "Saldo Facil"
  loc_A8B246: FStStrCopy var_88
  loc_A8B249: Branch loc_A8B2A2
  loc_A8B24C: ILdRf var_90
  loc_A8B24F: LitStr "13020103"
  loc_A8B252: EqStr
  loc_A8B254: BranchF loc_A8B260
  loc_A8B257: LitStr "Facilidad"
  loc_A8B25A: FStStrCopy var_88
  loc_A8B25D: Branch loc_A8B2A2
  loc_A8B260: ILdRf var_90
  loc_A8B263: LitStr "13020201"
  loc_A8B266: EqStr
  loc_A8B268: BranchF loc_A8B274
  loc_A8B26B: LitStr "Deuda Bim"
  loc_A8B26E: FStStrCopy var_88
  loc_A8B271: Branch loc_A8B2A2
  loc_A8B274: ILdRf var_90
  loc_A8B277: LitStr "13020202"
  loc_A8B27A: EqStr
  loc_A8B27C: BranchF loc_A8B288
  loc_A8B27F: LitStr "Saldo Facil"
  loc_A8B282: FStStrCopy var_88
  loc_A8B285: Branch loc_A8B2A2
  loc_A8B288: ILdRf var_90
  loc_A8B28B: LitStr "13020203"
  loc_A8B28E: EqStr
  loc_A8B290: BranchF loc_A8B29C
  loc_A8B293: LitStr "Facilidad"
  loc_A8B296: FStStrCopy var_88
  loc_A8B299: Branch loc_A8B2A2
  loc_A8B29C: LitStr vbNullString
  loc_A8B29F: FStStrCopy var_88
  loc_A8B2A2: ExitProc
End Function

Private Function Proc_270_154_B625BC(arg_10) 'B625BC
  'Data Table: 4C25A4
  loc_B621BC: LitStr " SELECT IFNULL(SUM(CoadBoap),0) CoadBoap, IFNULL(SUM(ApleBoap),0) ApleBoap, IFNULL(SUM(DefiBoap),0) DefiBoap, IFNULL(SUM(ReseBoap),0) ReseBoap,"
  loc_B621BF: LitStr " IFNULL(SUM(HoreBoap),0) HoreBoap, IFNULL(SUM(HoofBoap),0) HoofBoap, IFNULL(SUM(MoreBoap),0) MoreBoap, IFNULL(SUM(MoofBoap),0) MoofBoap,"
  loc_B621C2: ConcatStr
  loc_B621C3: FStStrNoPop var_B4
  loc_B621C6: LitStr " IFNULL(SUM(IcomBoap),0) IcomBoap, IFNULL(SUM(IrecBoap),0) IrecBoap, IFNULL(SUM(IofiBoap),0) IofiBoap"
  loc_B621C9: ConcatStr
  loc_B621CA: FStStrNoPop var_B8
  loc_B621CD: LitStr " FROM boleapre WHERE NumeApre = "
  loc_B621D0: ConcatStr
  loc_B621D1: FStStrNoPop var_BC
  loc_B621D4: ILdRf arg_10
  loc_B621D7: CStrI4
  loc_B621D9: FStStrNoPop var_C0
  loc_B621DC: ConcatStr
  loc_B621DD: FStStrNoPop var_C4
  loc_B621E0: LitStr " AND EstaBoap = 'Actualizado'"
  loc_B621E3: ConcatStr
  loc_B621E4: FStStrNoPop var_C8
  loc_B621E7: ImpAdCallFPR4 Proc_270_0_A1A53C()
  loc_B621EC: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B621FB: FLdRfVar var_CC
  loc_B621FE: FMemLdPr
  loc_B62203:  = Me.RecordCount
  loc_B62208: ILdRf var_CC
  loc_B6220B: LitI4 1
  loc_B62210: EqI4
  loc_B62211: BranchF loc_B62525
  loc_B62214: FLdRfVar var_F4
  loc_B62217: FLdRfVar var_E4
  loc_B6221A: LitVarStr var_E0, "CoadBoap"
  loc_B6221F: PopAdLdVar
  loc_B62220: FLdRfVar var_D0
  loc_B62223: FMemLdPr
  loc_B62228:  = Me.Fields
  loc_B6222D: FLdPr var_D0
  loc_B62230: from_stack_2 = Me.Item(from_stack_1)
  loc_B62235: FLdPr var_E4
  loc_B62238:  = Me.Value
  loc_B6223D: FLdRfVar var_F4
  loc_B62240: CStrVarTmp
  loc_B62241: FStStrNoPop var_B4
  loc_B62244: LitI4 1
  loc_B62249: FLdRfVar var_AC
  loc_B6224C: Ary1StStrCopy
  loc_B6224D: FFree1Str var_B4
  loc_B62250: FFreeAd var_D0 = ""
  loc_B62257: FFree1Var var_F4 = ""
  loc_B6225A: FLdRfVar var_F4
  loc_B6225D: FLdRfVar var_E4
  loc_B62260: LitVarStr var_E0, "ReseBoap"
  loc_B62265: PopAdLdVar
  loc_B62266: FLdRfVar var_D0
  loc_B62269: FMemLdPr
  loc_B6226E:  = Me.Fields
  loc_B62273: FLdPr var_D0
  loc_B62276: from_stack_2 = Me.Item(from_stack_1)
  loc_B6227B: FLdPr var_E4
  loc_B6227E:  = Me.Value
  loc_B62283: FLdRfVar var_F4
  loc_B62286: CStrVarTmp
  loc_B62287: FStStrNoPop var_B4
  loc_B6228A: LitI4 2
  loc_B6228F: FLdRfVar var_AC
  loc_B62292: Ary1StStrCopy
  loc_B62293: FFree1Str var_B4
  loc_B62296: FFreeAd var_D0 = ""
  loc_B6229D: FFree1Var var_F4 = ""
  loc_B622A0: FLdRfVar var_F4
  loc_B622A3: FLdRfVar var_E4
  loc_B622A6: LitVarStr var_E0, "ApleBoap"
  loc_B622AB: PopAdLdVar
  loc_B622AC: FLdRfVar var_D0
  loc_B622AF: FMemLdPr
  loc_B622B4:  = Me.Fields
  loc_B622B9: FLdPr var_D0
  loc_B622BC: from_stack_2 = Me.Item(from_stack_1)
  loc_B622C1: FLdPr var_E4
  loc_B622C4:  = Me.Value
  loc_B622C9: FLdRfVar var_F4
  loc_B622CC: CStrVarTmp
  loc_B622CD: FStStrNoPop var_B4
  loc_B622D0: LitI4 3
  loc_B622D5: FLdRfVar var_AC
  loc_B622D8: Ary1StStrCopy
  loc_B622D9: FFree1Str var_B4
  loc_B622DC: FFreeAd var_D0 = ""
  loc_B622E3: FFree1Var var_F4 = ""
  loc_B622E6: FLdRfVar var_F4
  loc_B622E9: FLdRfVar var_E4
  loc_B622EC: LitVarStr var_E0, "DefiBoap"
  loc_B622F1: PopAdLdVar
  loc_B622F2: FLdRfVar var_D0
  loc_B622F5: FMemLdPr
  loc_B622FA:  = Me.Fields
  loc_B622FF: FLdPr var_D0
  loc_B62302: from_stack_2 = Me.Item(from_stack_1)
  loc_B62307: FLdPr var_E4
  loc_B6230A:  = Me.Value
  loc_B6230F: FLdRfVar var_F4
  loc_B62312: CStrVarTmp
  loc_B62313: FStStrNoPop var_B4
  loc_B62316: LitI4 4
  loc_B6231B: FLdRfVar var_AC
  loc_B6231E: Ary1StStrCopy
  loc_B6231F: FFree1Str var_B4
  loc_B62322: FFreeAd var_D0 = ""
  loc_B62329: FFree1Var var_F4 = ""
  loc_B6232C: FLdRfVar var_F4
  loc_B6232F: FLdRfVar var_E4
  loc_B62332: LitVarStr var_E0, "HoreBoap"
  loc_B62337: PopAdLdVar
  loc_B62338: FLdRfVar var_D0
  loc_B6233B: FMemLdPr
  loc_B62340:  = Me.Fields
  loc_B62345: FLdPr var_D0
  loc_B62348: from_stack_2 = Me.Item(from_stack_1)
  loc_B6234D: FLdPr var_E4
  loc_B62350:  = Me.Value
  loc_B62355: FLdRfVar var_F4
  loc_B62358: CStrVarTmp
  loc_B62359: FStStrNoPop var_B4
  loc_B6235C: LitI4 5
  loc_B62361: FLdRfVar var_AC
  loc_B62364: Ary1StStrCopy
  loc_B62365: FFree1Str var_B4
  loc_B62368: FFreeAd var_D0 = ""
  loc_B6236F: FFree1Var var_F4 = ""
  loc_B62372: FLdRfVar var_F4
  loc_B62375: FLdRfVar var_E4
  loc_B62378: LitVarStr var_E0, "HoofBoap"
  loc_B6237D: PopAdLdVar
  loc_B6237E: FLdRfVar var_D0
  loc_B62381: FMemLdPr
  loc_B62386:  = Me.Fields
  loc_B6238B: FLdPr var_D0
  loc_B6238E: from_stack_2 = Me.Item(from_stack_1)
  loc_B62393: FLdPr var_E4
  loc_B62396:  = Me.Value
  loc_B6239B: FLdRfVar var_F4
  loc_B6239E: CStrVarTmp
  loc_B6239F: FStStrNoPop var_B4
  loc_B623A2: LitI4 6
  loc_B623A7: FLdRfVar var_AC
  loc_B623AA: Ary1StStrCopy
  loc_B623AB: FFree1Str var_B4
  loc_B623AE: FFreeAd var_D0 = ""
  loc_B623B5: FFree1Var var_F4 = ""
  loc_B623B8: FLdRfVar var_F4
  loc_B623BB: FLdRfVar var_E4
  loc_B623BE: LitVarStr var_E0, "MoreBoap"
  loc_B623C3: PopAdLdVar
  loc_B623C4: FLdRfVar var_D0
  loc_B623C7: FMemLdPr
  loc_B623CC:  = Me.Fields
  loc_B623D1: FLdPr var_D0
  loc_B623D4: from_stack_2 = Me.Item(from_stack_1)
  loc_B623D9: FLdPr var_E4
  loc_B623DC:  = Me.Value
  loc_B623E1: FLdRfVar var_F4
  loc_B623E4: CStrVarTmp
  loc_B623E5: FStStrNoPop var_B4
  loc_B623E8: LitI4 7
  loc_B623ED: FLdRfVar var_AC
  loc_B623F0: Ary1StStrCopy
  loc_B623F1: FFree1Str var_B4
  loc_B623F4: FFreeAd var_D0 = ""
  loc_B623FB: FFree1Var var_F4 = ""
  loc_B623FE: FLdRfVar var_F4
  loc_B62401: FLdRfVar var_E4
  loc_B62404: LitVarStr var_E0, "MoofBoap"
  loc_B62409: PopAdLdVar
  loc_B6240A: FLdRfVar var_D0
  loc_B6240D: FMemLdPr
  loc_B62412:  = Me.Fields
  loc_B62417: FLdPr var_D0
  loc_B6241A: from_stack_2 = Me.Item(from_stack_1)
  loc_B6241F: FLdPr var_E4
  loc_B62422:  = Me.Value
  loc_B62427: FLdRfVar var_F4
  loc_B6242A: CStrVarTmp
  loc_B6242B: FStStrNoPop var_B4
  loc_B6242E: LitI4 8
  loc_B62433: FLdRfVar var_AC
  loc_B62436: Ary1StStrCopy
  loc_B62437: FFree1Str var_B4
  loc_B6243A: FFreeAd var_D0 = ""
  loc_B62441: FFree1Var var_F4 = ""
  loc_B62444: FLdRfVar var_F4
  loc_B62447: FLdRfVar var_E4
  loc_B6244A: LitVarStr var_E0, "IcomBoap"
  loc_B6244F: PopAdLdVar
  loc_B62450: FLdRfVar var_D0
  loc_B62453: FMemLdPr
  loc_B62458:  = Me.Fields
  loc_B6245D: FLdPr var_D0
  loc_B62460: from_stack_2 = Me.Item(from_stack_1)
  loc_B62465: FLdPr var_E4
  loc_B62468:  = Me.Value
  loc_B6246D: FLdRfVar var_F4
  loc_B62470: CStrVarTmp
  loc_B62471: FStStrNoPop var_B4
  loc_B62474: LitI4 9
  loc_B62479: FLdRfVar var_AC
  loc_B6247C: Ary1StStrCopy
  loc_B6247D: FFree1Str var_B4
  loc_B62480: FFreeAd var_D0 = ""
  loc_B62487: FFree1Var var_F4 = ""
  loc_B6248A: FLdRfVar var_F4
  loc_B6248D: FLdRfVar var_E4
  loc_B62490: LitVarStr var_E0, "IrecBoap"
  loc_B62495: PopAdLdVar
  loc_B62496: FLdRfVar var_D0
  loc_B62499: FMemLdPr
  loc_B6249E:  = Me.Fields
  loc_B624A3: FLdPr var_D0
  loc_B624A6: from_stack_2 = Me.Item(from_stack_1)
  loc_B624AB: FLdPr var_E4
  loc_B624AE:  = Me.Value
  loc_B624B3: FLdRfVar var_F4
  loc_B624B6: CStrVarTmp
  loc_B624B7: FStStrNoPop var_B4
  loc_B624BA: LitI4 &HA
  loc_B624BF: FLdRfVar var_AC
  loc_B624C2: Ary1StStrCopy
  loc_B624C3: FFree1Str var_B4
  loc_B624C6: FFreeAd var_D0 = ""
  loc_B624CD: FFree1Var var_F4 = ""
  loc_B624D0: FLdRfVar var_F4
  loc_B624D3: FLdRfVar var_E4
  loc_B624D6: LitVarStr var_E0, "IofiBoap"
  loc_B624DB: PopAdLdVar
  loc_B624DC: FLdRfVar var_D0
  loc_B624DF: FMemLdPr
  loc_B624E4:  = Me.Fields
  loc_B624E9: FLdPr var_D0
  loc_B624EC: from_stack_2 = Me.Item(from_stack_1)
  loc_B624F1: FLdPr var_E4
  loc_B624F4:  = Me.Value
  loc_B624F9: FLdRfVar var_F4
  loc_B624FC: CStrVarTmp
  loc_B624FD: FStStrNoPop var_B4
  loc_B62500: LitI4 &HB
  loc_B62505: FLdRfVar var_AC
  loc_B62508: Ary1StStrCopy
  loc_B62509: FFree1Str var_B4
  loc_B6250C: FFreeAd var_D0 = ""
  loc_B62513: FFree1Var var_F4 = ""
  loc_B62516: FLdRfVar var_AC
  loc_B62519: CVarRef
  loc_B6251E: FStVarCopy
  loc_B62522: Branch loc_B625B5
  loc_B62525: LitStr vbNullString
  loc_B62528: LitI4 1
  loc_B6252D: FLdRfVar var_AC
  loc_B62530: Ary1StStrCopy
  loc_B62531: LitStr vbNullString
  loc_B62534: LitI4 2
  loc_B62539: FLdRfVar var_AC
  loc_B6253C: Ary1StStrCopy
  loc_B6253D: LitStr vbNullString
  loc_B62540: LitI4 3
  loc_B62545: FLdRfVar var_AC
  loc_B62548: Ary1StStrCopy
  loc_B62549: LitStr vbNullString
  loc_B6254C: LitI4 4
  loc_B62551: FLdRfVar var_AC
  loc_B62554: Ary1StStrCopy
  loc_B62555: LitStr vbNullString
  loc_B62558: LitI4 5
  loc_B6255D: FLdRfVar var_AC
  loc_B62560: Ary1StStrCopy
  loc_B62561: LitStr vbNullString
  loc_B62564: LitI4 6
  loc_B62569: FLdRfVar var_AC
  loc_B6256C: Ary1StStrCopy
  loc_B6256D: LitStr vbNullString
  loc_B62570: LitI4 7
  loc_B62575: FLdRfVar var_AC
  loc_B62578: Ary1StStrCopy
  loc_B62579: LitStr vbNullString
  loc_B6257C: LitI4 8
  loc_B62581: FLdRfVar var_AC
  loc_B62584: Ary1StStrCopy
  loc_B62585: LitStr vbNullString
  loc_B62588: LitI4 9
  loc_B6258D: FLdRfVar var_AC
  loc_B62590: Ary1StStrCopy
  loc_B62591: LitStr vbNullString
  loc_B62594: LitI4 &HA
  loc_B62599: FLdRfVar var_AC
  loc_B6259C: Ary1StStrCopy
  loc_B6259D: LitStr vbNullString
  loc_B625A0: LitI4 &HB
  loc_B625A5: FLdRfVar var_AC
  loc_B625A8: Ary1StStrCopy
  loc_B625A9: FLdRfVar var_AC
  loc_B625AC: CVarRef
  loc_B625B1: FStVarCopy
  loc_B625B5: ExitProcCb
End Function
