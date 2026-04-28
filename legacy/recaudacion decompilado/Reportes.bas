
Private Function Proc_57_0_AB1718(arg_C) 'AB1718
  'Data Table: 437A14
  loc_AB1634: ILdRf arg_C
  loc_AB1637: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AB163C: ILdI4 arg_C
  loc_AB163F: FStAd var_88 
  loc_AB1643: ILdRf arg_C
  loc_AB1646: ImpAdCallFPR4 Proc_57_16_A91D2C()
  loc_AB164B: FLdPr var_88
  loc_AB164E: LateMemCall
  loc_AB1654: FLdPr var_88
  loc_AB1657: LateMemLdVar
  loc_AB165C: CBoolVarNull
  loc_AB165E: FFree1Var var_98 = ""
  loc_AB1661: BranchF loc_AB16EB
  loc_AB1664: LitVarStr var_A8, "Generando vista previa..."
  loc_AB1669: PopAdLdVar
  loc_AB166A: FLdPr var_88
  loc_AB166D: LateMemLdVar
  loc_AB1672: VarLateMemSt .SimpleText
  loc_AB1676: FFree1Var var_98 = ""
  loc_AB1679: FLdPr var_88
  loc_AB167C: LateMemCall
  loc_AB1682: ILdRf arg_C
  loc_AB1685: ImpAdCallFPR4 Proc_57_8_A3B3D8()
  loc_AB168A: LitI4 2
  loc_AB168F: CI2I4
  loc_AB1690: FLdPr var_88
  loc_AB1693: Form.WindowState = from_stack_1
  loc_AB1698: FLdPr var_88
  loc_AB169B: Form.Hide
  loc_AB16A0: ILdRf arg_C
  loc_AB16A3: ImpAdCallFPR4 Proc_57_10_A06C84()
  loc_AB16A8: LitI4 0
  loc_AB16AD: CI2I4
  loc_AB16AE: FLdPr var_88
  loc_AB16B1: Form.WindowState = from_stack_1
  loc_AB16B6: ILdRf arg_C
  loc_AB16B9: ImpAdCallFPR4 Proc_57_15_AB7DC4()
  loc_AB16BE: LitVarStr var_A8, vbNullString
  loc_AB16C3: PopAdLdVar
  loc_AB16C4: FLdPr var_88
  loc_AB16C7: LateMemLdVar
  loc_AB16CC: VarLateMemSt .SimpleText
  loc_AB16D0: FFree1Var var_98 = ""
  loc_AB16D3: LitVar_Missing var_B8
  loc_AB16D6: PopAdLdVar
  loc_AB16D7: LitVarI4
  loc_AB16DF: PopAdLdVar
  loc_AB16E0: FLdPr var_88
  loc_AB16E3: Form.Show from_stack_1, from_stack_2
  loc_AB16E8: Branch loc_AB1711
  loc_AB16EB: FLdPr var_88
  loc_AB16EE: LateMemCall
  loc_AB16F4: ILdRf arg_C
  loc_AB16F7: ImpAdCallFPR4 Proc_57_15_AB7DC4()
  loc_AB16FC: LitVarStr var_A8, vbNullString
  loc_AB1701: PopAdLdVar
  loc_AB1702: FLdPr var_88
  loc_AB1705: LateMemLdVar
  loc_AB170A: VarLateMemSt .SimpleText
  loc_AB170E: FFree1Var var_98 = ""
  loc_AB1711: LitNothing
  loc_AB1713: FStAd var_88 
  loc_AB1717: ExitProc
End Function

Private Function Proc_57_1_AA9124(arg_C, arg_10) 'AA9124
  'Data Table: 437A14
  loc_AA9054: ILdRf arg_C
  loc_AA9057: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AA905C: ILdI4 arg_C
  loc_AA905F: FStAd var_88 
  loc_AA9063: ILdRf arg_C
  loc_AA9066: ImpAdCallFPR4 Proc_57_16_A91D2C()
  loc_AA906B: FLdPr var_88
  loc_AA906E: LateMemCall
  loc_AA9074: FLdPr var_88
  loc_AA9077: LateMemLdVar
  loc_AA907C: CBoolVarNull
  loc_AA907E: FFree1Var var_98 = ""
  loc_AA9081: BranchF loc_AA90F4
  loc_AA9084: LitVarStr var_A8, "Enviando a impresora predeterminada..."
  loc_AA9089: PopAdLdVar
  loc_AA908A: FLdPr var_88
  loc_AA908D: LateMemLdVar
  loc_AA9092: VarLateMemSt .SimpleText
  loc_AA9096: FFree1Var var_98 = ""
  loc_AA9099: FLdPr var_88
  loc_AA909C: LateMemCall
  loc_AA90A2: FLdI2 arg_10
  loc_AA90A5: BranchF loc_AA90B3
  loc_AA90A8: ILdRf arg_C
  loc_AA90AB: ImpAdCallFPR4 Proc_57_9_A3E138()
  loc_AA90B0: Branch loc_AA90BB
  loc_AA90B3: ILdRf arg_C
  loc_AA90B6: ImpAdCallFPR4 Proc_57_8_A3B3D8()
  loc_AA90BB: FLdI2 arg_10
  loc_AA90BE: BranchF loc_AA90CC
  loc_AA90C1: ILdRf arg_C
  loc_AA90C4: ImpAdCallFPR4 Proc_57_13_A09618()
  loc_AA90C9: Branch loc_AA90D4
  loc_AA90CC: ILdRf arg_C
  loc_AA90CF: ImpAdCallFPR4 Proc_57_12_A095AC()
  loc_AA90D4: ILdRf arg_C
  loc_AA90D7: ImpAdCallFPR4 Proc_57_15_AB7DC4()
  loc_AA90DC: LitVarStr var_A8, vbNullString
  loc_AA90E1: PopAdLdVar
  loc_AA90E2: FLdPr var_88
  loc_AA90E5: LateMemLdVar
  loc_AA90EA: VarLateMemSt .SimpleText
  loc_AA90EE: FFree1Var var_98 = ""
  loc_AA90F1: Branch loc_AA911A
  loc_AA90F4: FLdPr var_88
  loc_AA90F7: LateMemCall
  loc_AA90FD: ILdRf arg_C
  loc_AA9100: ImpAdCallFPR4 Proc_57_15_AB7DC4()
  loc_AA9105: LitVarStr var_A8, vbNullString
  loc_AA910A: PopAdLdVar
  loc_AA910B: FLdPr var_88
  loc_AA910E: LateMemLdVar
  loc_AA9113: VarLateMemSt .SimpleText
  loc_AA9117: FFree1Var var_98 = ""
  loc_AA911A: LitNothing
  loc_AA911C: FStAd var_88 
  loc_AA9120: ExitProc
  loc_AA9121: CExtInstUnk
End Function

Private Function Proc_57_2_B14778(arg_C, arg_10) 'B14778
  'Data Table: 437A14
  loc_B14524: LitI2_Byte 0
  loc_B14526: LitI2_Byte &HFF
  loc_B14528: ILdRf arg_C
  loc_B1452B: ImpAdCallI2 Proc_272_21_B1B23C(, , )
  loc_B14530: NotI4
  loc_B14531: BranchF loc_B14535
  loc_B14534: ExitProc
  loc_B14535: ILdRf arg_C
  loc_B14538: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_B1453D: ILdI4 arg_C
  loc_B14540: FStAd var_8C 
  loc_B14544: FLdPr var_8C
  loc_B14547: LateMemCall
  loc_B1454D: FLdPr var_8C
  loc_B14550: LateMemLdVar
  loc_B14555: CBoolVarNull
  loc_B14557: FFree1Var var_9C = ""
  loc_B1455A: BranchF loc_B1472C
  loc_B1455D: ILdI2 arg_10
  loc_B14560: BranchF loc_B1466E
  loc_B14563: ILdRf arg_C
  loc_B14566: ImpAdCallFPR4 Proc_57_16_A91D2C()
  loc_B1456B: FMemLdR4 arg_8(0)
  loc_B14570: LitStr ".html"
  loc_B14573: ConcatStr
  loc_B14574: FMemStStr arg_8(0)
  loc_B1457A: LitVarStr var_AC, "Generando PDF..."
  loc_B1457F: PopAdLdVar
  loc_B14580: FLdPr var_8C
  loc_B14583: LateMemLdVar
  loc_B14588: VarLateMemSt .SimpleText
  loc_B1458C: FFree1Var var_9C = ""
  loc_B1458F: FLdPr var_8C
  loc_B14592: LateMemCall
  loc_B14598: FLdRfVar var_BE
  loc_B1459B: ImpAdLdI4 MemVar_D93030
  loc_B1459E: FLdRfVar var_88
  loc_B145A1: NewIfNullPr IFileSystem3
  loc_B145A4: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B145A9: FLdI2 var_BE
  loc_B145AC: BranchF loc_B145CD
  loc_B145AF: LitStr "del "
  loc_B145B2: ImpAdLdI4 MemVar_D93030
  loc_B145B5: ImpAdCallI2 Proc_57_58_A33198()
  loc_B145BA: FStStrNoPop var_C4
  loc_B145BD: ConcatStr
  loc_B145BE: FStStrNoPop var_C8
  loc_B145C1: ImpAdCallFPR4 Proc_272_27_AA0C4C()
  loc_B145C6: FFreeStr var_C4 = ""
  loc_B145CD: LitStr vbNullString
  loc_B145D0: ImpAdLdI4 MemVar_D93030
  loc_B145D3: FMemLdR4 arg_8(0)
  loc_B145D8: ImpAdCallFPR4 Proc_57_55_AE2160(, , )
  loc_B145DD: FLdRfVar var_BE
  loc_B145E0: ImpAdLdI4 MemVar_D93030
  loc_B145E3: FLdRfVar var_88
  loc_B145E6: NewIfNullPr IFileSystem3
  loc_B145E9: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B145EE: FLdI2 var_BE
  loc_B145F1: NotI4
  loc_B145F2: BranchF loc_B145FD
  loc_B145F5: ImpAdCallFPR4 DoEvents()
  loc_B145FA: Branch loc_B145DD
  loc_B145FD: LitI4 &H22
  loc_B14602: FLdRfVar var_9C
  loc_B14605: ImpAdCallFPR4  = Chr()
  loc_B1460A: LitI4 &H22
  loc_B1460F: FLdRfVar var_F8
  loc_B14612: ImpAdCallFPR4  = Chr()
  loc_B14617: LitI4 1
  loc_B1461C: LitVarStr var_AC, "explorer /select,"
  loc_B14621: FLdRfVar var_9C
  loc_B14624: ConcatVar var_D8
  loc_B14628: ImpAdLdI4 MemVar_D93030
  loc_B1462B: CVarStr var_BC
  loc_B1462E: ConcatVar var_E8
  loc_B14632: FLdRfVar var_F8
  loc_B14635: ConcatVar var_108
  loc_B14639: ImpAdCallFPR4 push Shell(, )
  loc_B1463E: FStFPR8 var_110
  loc_B14641: FFreeVar var_9C = "": var_D8 = "": var_E8 = "": var_F8 = ""
  loc_B1464E: ILdRf arg_C
  loc_B14651: ImpAdCallFPR4 Proc_57_15_AB7DC4()
  loc_B14656: LitVarStr var_AC, vbNullString
  loc_B1465B: PopAdLdVar
  loc_B1465C: FLdPr var_8C
  loc_B1465F: LateMemLdVar
  loc_B14664: VarLateMemSt .SimpleText
  loc_B14668: FFree1Var var_9C = ""
  loc_B1466B: Branch loc_B14729
  loc_B1466E: ILdRf arg_C
  loc_B14671: ImpAdCallFPR4 Proc_57_16_A91D2C()
  loc_B14676: FLdRfVar var_114
  loc_B14679: ImpAdLdRf MemVar_D9C5D8
  loc_B1467C: NewIfNullPr Global
  loc_B1467F:  = Global.Printer
  loc_B14684: FLdPr var_114
  loc_B14687: LateIdLdVar var_9C DispID_28 1
  loc_B1468E: CStrVarTmp
  loc_B1468F: FMemStStr arg_8(16)
  loc_B14695: FFree1Ad var_114
  loc_B14698: FFree1Var var_9C = ""
  loc_B1469B: LitStr "PDFCreator"
  loc_B1469E: ImpAdCallI2 Proc_272_25_B159D8()
  loc_B146A3: FStStr var_C4
  loc_B146A6: FFree1Str var_C4
  loc_B146A9: LitVarStr var_AC, "Generando PDF..."
  loc_B146AE: PopAdLdVar
  loc_B146AF: FLdPr var_8C
  loc_B146B2: LateMemLdVar
  loc_B146B7: VarLateMemSt .SimpleText
  loc_B146BB: FFree1Var var_9C = ""
  loc_B146BE: FLdPr var_8C
  loc_B146C1: LateMemCall
  loc_B146C7: ILdRf arg_C
  loc_B146CA: ImpAdCallFPR4 Proc_57_8_A3B3D8()
  loc_B146CF: FLdRfVar var_BE
  loc_B146D2: ImpAdLdI4 MemVar_D93030
  loc_B146D5: FLdRfVar var_88
  loc_B146D8: NewIfNullPr IFileSystem3
  loc_B146DB: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B146E0: FLdI2 var_BE
  loc_B146E3: BranchF loc_B14704
  loc_B146E6: LitStr "del "
  loc_B146E9: ImpAdLdI4 MemVar_D93030
  loc_B146EC: ImpAdCallI2 Proc_57_58_A33198()
  loc_B146F1: FStStrNoPop var_C4
  loc_B146F4: ConcatStr
  loc_B146F5: FStStrNoPop var_C8
  loc_B146F8: ImpAdCallFPR4 Proc_272_27_AA0C4C()
  loc_B146FD: FFreeStr var_C4 = ""
  loc_B14704: ILdRf arg_C
  loc_B14707: ImpAdCallFPR4 Proc_57_14_A5411C()
  loc_B1470C: ILdRf arg_C
  loc_B1470F: ImpAdCallFPR4 Proc_57_15_AB7DC4()
  loc_B14714: LitVarStr var_AC, vbNullString
  loc_B14719: PopAdLdVar
  loc_B1471A: FLdPr var_8C
  loc_B1471D: LateMemLdVar
  loc_B14722: VarLateMemSt .SimpleText
  loc_B14726: FFree1Var var_9C = ""
  loc_B14729: Branch loc_B14752
  loc_B1472C: FLdPr var_8C
  loc_B1472F: LateMemCall
  loc_B14735: ILdRf arg_C
  loc_B14738: ImpAdCallFPR4 Proc_57_15_AB7DC4()
  loc_B1473D: LitVarStr var_AC, vbNullString
  loc_B14742: PopAdLdVar
  loc_B14743: FLdPr var_8C
  loc_B14746: LateMemLdVar
  loc_B1474B: VarLateMemSt .SimpleText
  loc_B1474F: FFree1Var var_9C = ""
  loc_B14752: LitNothing
  loc_B14754: FStAd var_8C 
  loc_B14758: ExitProc
  loc_B14759: ILdRf arg_C
  loc_B1475C: ImpAdCallFPR4 Proc_57_15_AB7DC4()
  loc_B14761: LitVarStr var_AC, vbNullString
  loc_B14766: PopAdLdVar
  loc_B14767: ILdPr
  loc_B1476A: LateMemLdVar
  loc_B1476F: VarLateMemSt .SimpleText
  loc_B14773: FFree1Var var_9C = ""
  loc_B14776: ExitProc
End Function

Private Function Proc_57_3_ADD774(arg_C, arg_10) 'ADD774
  'Data Table: 437A14
  loc_ADD63C: FLdI2 arg_10
  loc_ADD63F: NotI4
  loc_ADD640: BranchF loc_ADD654
  loc_ADD643: LitI2_Byte 0
  loc_ADD645: LitI2_Byte 0
  loc_ADD647: ILdRf arg_C
  loc_ADD64A: ImpAdCallI2 Proc_272_21_B1B23C(, , )
  loc_ADD64F: NotI4
  loc_ADD650: BranchF loc_ADD654
  loc_ADD653: ExitProc
  loc_ADD654: ILdRf arg_C
  loc_ADD657: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_ADD65C: ILdI4 arg_C
  loc_ADD65F: FStAd var_9C 
  loc_ADD663: FLdPr var_9C
  loc_ADD666: LateMemCall
  loc_ADD66C: FLdPr var_9C
  loc_ADD66F: LateMemLdVar
  loc_ADD674: CBoolVarNull
  loc_ADD676: FFree1Var var_AC = ""
  loc_ADD679: BranchF loc_ADD727
  loc_ADD67C: LitVarStr var_BC, "Generando archivo de texto..."
  loc_ADD681: PopAdLdVar
  loc_ADD682: FLdPr var_9C
  loc_ADD685: LateMemLdVar
  loc_ADD68A: VarLateMemSt .SimpleText
  loc_ADD68E: FFree1Var var_AC = ""
  loc_ADD691: FLdPr var_9C
  loc_ADD694: LateMemCall
  loc_ADD69A: FLdRfVar var_D0
  loc_ADD69D: ImpAdLdI4 MemVar_D93030
  loc_ADD6A0: FLdRfVar var_98
  loc_ADD6A3: NewIfNullPr IFileSystem3
  loc_ADD6A6: from_stack_2 = IFileSystem3.IFileSystem.GetFile(from_stack_1v)
  loc_ADD6AB: FLdZeroAd var_D0
  loc_ADD6AE: FStVarAdFunc
  loc_ADD6B2: LitVarStr var_BC, "explorer /select,"
  loc_ADD6B7: LitI4 &H22
  loc_ADD6BC: FLdRfVar var_AC
  loc_ADD6BF: ImpAdCallFPR4  = Chr()
  loc_ADD6C4: FLdRfVar var_AC
  loc_ADD6C7: ConcatVar var_E0
  loc_ADD6CB: FLdRfVar var_94
  loc_ADD6CE: VarLateMemLdVar var_F0, .ShortPath
  loc_ADD6D4: ConcatVar var_100
  loc_ADD6D8: LitI4 &H22
  loc_ADD6DD: FLdRfVar var_110
  loc_ADD6E0: ImpAdCallFPR4  = Chr()
  loc_ADD6E5: FLdRfVar var_110
  loc_ADD6E8: ConcatVar var_120
  loc_ADD6EC: CStrVarVal var_124
  loc_ADD6F0: ImpAdCallFPR4 Proc_272_27_AA0C4C()
  loc_ADD6F5: FFree1Str var_124
  loc_ADD6F8: FFreeVar var_AC = "": var_E0 = "": var_F0 = "": var_100 = "": var_110 = ""
  loc_ADD707: ILdRf arg_C
  loc_ADD70A: ImpAdCallFPR4 Proc_57_15_AB7DC4()
  loc_ADD70F: LitVarStr var_BC, vbNullString
  loc_ADD714: PopAdLdVar
  loc_ADD715: FLdPr var_9C
  loc_ADD718: LateMemLdVar
  loc_ADD71D: VarLateMemSt .SimpleText
  loc_ADD721: FFree1Var var_AC = ""
  loc_ADD724: Branch loc_ADD74D
  loc_ADD727: FLdPr var_9C
  loc_ADD72A: LateMemCall
  loc_ADD730: ILdRf arg_C
  loc_ADD733: ImpAdCallFPR4 Proc_57_15_AB7DC4()
  loc_ADD738: LitVarStr var_BC, vbNullString
  loc_ADD73D: PopAdLdVar
  loc_ADD73E: FLdPr var_9C
  loc_ADD741: LateMemLdVar
  loc_ADD746: VarLateMemSt .SimpleText
  loc_ADD74A: FFree1Var var_AC = ""
  loc_ADD74D: LitNothing
  loc_ADD74F: FStAd var_9C 
  loc_ADD753: ExitProc
  loc_ADD754: ILdRf arg_C
  loc_ADD757: ImpAdCallFPR4 Proc_57_15_AB7DC4()
  loc_ADD75C: LitVarStr var_BC, vbNullString
  loc_ADD761: PopAdLdVar
  loc_ADD762: ILdPr
  loc_ADD765: LateMemLdVar
  loc_ADD76A: VarLateMemSt .SimpleText
  loc_ADD76E: FFree1Var var_AC = ""
  loc_ADD771: ExitProc
  loc_ADD772: ImpAdLdFPR4 MemVar_0
End Function

Private Function Proc_57_4_AFAAC0(arg_C, arg_10, arg_14) 'AFAAC0
  'Data Table: 437A14
  loc_AFA900: FLdI2 arg_10
  loc_AFA903: NotI4
  loc_AFA904: BranchF loc_AFA918
  loc_AFA907: LitI2_Byte &HFF
  loc_AFA909: LitI2_Byte 0
  loc_AFA90B: ILdRf arg_C
  loc_AFA90E: ImpAdCallI2 Proc_272_21_B1B23C(, , )
  loc_AFA913: NotI4
  loc_AFA914: BranchF loc_AFA918
  loc_AFA917: ExitProc
  loc_AFA918: ILdRf arg_C
  loc_AFA91B: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AFA920: ILdI4 arg_C
  loc_AFA923: FStAd var_9C 
  loc_AFA927: ILdRf arg_C
  loc_AFA92A: ImpAdCallFPR4 Proc_57_16_A91D2C()
  loc_AFA92F: FLdPr var_9C
  loc_AFA932: LateMemCall
  loc_AFA938: FLdPr var_9C
  loc_AFA93B: LateMemLdVar
  loc_AFA940: CBoolVarNull
  loc_AFA942: FFree1Var var_AC = ""
  loc_AFA945: BranchF loc_AFAA75
  loc_AFA948: LitVarStr var_BC, "Generando archivo xls..."
  loc_AFA94D: PopAdLdVar
  loc_AFA94E: FLdPr var_9C
  loc_AFA951: LateMemLdVar
  loc_AFA956: VarLateMemSt .SimpleText
  loc_AFA95A: FFree1Var var_AC = ""
  loc_AFA95D: FLdRfVar var_CE
  loc_AFA960: ImpAdLdI4 MemVar_D93030
  loc_AFA963: FLdRfVar var_98
  loc_AFA966: NewIfNullPr IFileSystem3
  loc_AFA969: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_AFA96E: FLdI2 var_CE
  loc_AFA971: BranchF loc_AFA9E1
  loc_AFA974: FLdRfVar var_D4
  loc_AFA977: ImpAdLdI4 MemVar_D93030
  loc_AFA97A: FLdRfVar var_98
  loc_AFA97D: NewIfNullPr IFileSystem3
  loc_AFA980: from_stack_2 = IFileSystem3.IFileSystem.GetFile(from_stack_1v)
  loc_AFA985: FLdZeroAd var_D4
  loc_AFA988: FStVarAdFunc
  loc_AFA98C: LitVarStr var_BC, "del "
  loc_AFA991: LitI4 &H22
  loc_AFA996: FLdRfVar var_AC
  loc_AFA999: ImpAdCallFPR4  = Chr()
  loc_AFA99E: FLdRfVar var_AC
  loc_AFA9A1: ConcatVar var_E4
  loc_AFA9A5: FLdRfVar var_94
  loc_AFA9A8: VarLateMemLdVar var_F4, .ShortPath
  loc_AFA9AE: ConcatVar var_104
  loc_AFA9B2: LitI4 &H22
  loc_AFA9B7: FLdRfVar var_114
  loc_AFA9BA: ImpAdCallFPR4  = Chr()
  loc_AFA9BF: FLdRfVar var_114
  loc_AFA9C2: ConcatVar var_124
  loc_AFA9C6: CStrVarVal var_128
  loc_AFA9CA: ImpAdCallFPR4 Proc_272_27_AA0C4C()
  loc_AFA9CF: FFree1Str var_128
  loc_AFA9D2: FFreeVar var_AC = "": var_E4 = "": var_F4 = "": var_104 = "": var_114 = ""
  loc_AFA9E1: FLdPr var_9C
  loc_AFA9E4: LateMemCall
  loc_AFA9EA: FLdI2 arg_14
  loc_AFA9ED: BranchF loc_AFAA05
  loc_AFA9F0: LitI2_Byte &HFF
  loc_AFA9F2: ImpAdLdI4 MemVar_D93030
  loc_AFA9F5: FMemLdR4 arg_8(0)
  loc_AFA9FA: FLdRfVar var_98
  loc_AFA9FD: NewIfNullPr IFileSystem3
  loc_AFAA00: from_stack_4 = IFileSystem3.IFileSystem.CopyFile(from_stack_1v, from_stack_2v, from_stack_3b)
  loc_AFAA05: FLdRfVar var_D4
  loc_AFAA08: ImpAdLdI4 MemVar_D93030
  loc_AFAA0B: FLdRfVar var_98
  loc_AFAA0E: NewIfNullPr IFileSystem3
  loc_AFAA11: from_stack_2 = IFileSystem3.IFileSystem.GetFile(from_stack_1v)
  loc_AFAA16: FLdZeroAd var_D4
  loc_AFAA19: FStVarAdFunc
  loc_AFAA1D: LitVarStr var_BC, "explorer /select,"
  loc_AFAA22: LitI4 &H22
  loc_AFAA27: FLdRfVar var_AC
  loc_AFAA2A: ImpAdCallFPR4  = Chr()
  loc_AFAA2F: FLdRfVar var_AC
  loc_AFAA32: ConcatVar var_E4
  loc_AFAA36: FLdRfVar var_94
  loc_AFAA39: VarLateMemLdVar var_F4, .ShortPath
  loc_AFAA3F: ConcatVar var_104
  loc_AFAA43: LitI4 &H22
  loc_AFAA48: FLdRfVar var_114
  loc_AFAA4B: ImpAdCallFPR4  = Chr()
  loc_AFAA50: FLdRfVar var_114
  loc_AFAA53: ConcatVar var_124
  loc_AFAA57: CStrVarVal var_128
  loc_AFAA5B: ImpAdCallFPR4 Proc_272_27_AA0C4C()
  loc_AFAA60: FFree1Str var_128
  loc_AFAA63: FFreeVar var_AC = "": var_E4 = "": var_F4 = "": var_104 = "": var_114 = ""
  loc_AFAA72: Branch loc_AFAA7E
  loc_AFAA75: FLdPr var_9C
  loc_AFAA78: LateMemCall
  loc_AFAA7E: ILdRf arg_C
  loc_AFAA81: ImpAdCallFPR4 Proc_57_15_AB7DC4()
  loc_AFAA86: LitVarStr var_BC, vbNullString
  loc_AFAA8B: PopAdLdVar
  loc_AFAA8C: FLdPr var_9C
  loc_AFAA8F: LateMemLdVar
  loc_AFAA94: VarLateMemSt .SimpleText
  loc_AFAA98: FFree1Var var_AC = ""
  loc_AFAA9B: LitNothing
  loc_AFAA9D: FStAd var_9C 
  loc_AFAAA1: ExitProc
  loc_AFAAA2: ILdRf arg_C
  loc_AFAAA5: ImpAdCallFPR4 Proc_57_15_AB7DC4()
  loc_AFAAAA: LitVarStr var_BC, vbNullString
  loc_AFAAAF: PopAdLdVar
  loc_AFAAB0: ILdPr
  loc_AFAAB3: LateMemLdVar
  loc_AFAAB8: VarLateMemSt .SimpleText
  loc_AFAABC: FFree1Var var_AC = ""
  loc_AFAABF: ExitProc
End Function

Private Function Proc_57_5_AB2114(arg_C) 'AB2114
  'Data Table: 437A14
  loc_AB2030: ILdRf arg_C
  loc_AB2033: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AB2038: ILdI4 arg_C
  loc_AB203B: FStAd var_88 
  loc_AB203F: ILdRf arg_C
  loc_AB2042: ImpAdCallFPR4 Proc_57_16_A91D2C()
  loc_AB2047: FLdPr var_88
  loc_AB204A: LateMemCall
  loc_AB2050: FLdPr var_88
  loc_AB2053: LateMemLdVar
  loc_AB2058: CBoolVarNull
  loc_AB205A: FFree1Var var_98 = ""
  loc_AB205D: BranchF loc_AB20E7
  loc_AB2060: LitVarStr var_A8, "Generando vista previa..."
  loc_AB2065: PopAdLdVar
  loc_AB2066: FLdPr var_88
  loc_AB2069: LateMemLdVar
  loc_AB206E: VarLateMemSt .SimpleText
  loc_AB2072: FFree1Var var_98 = ""
  loc_AB2075: FLdPr var_88
  loc_AB2078: LateMemCall
  loc_AB207E: ILdRf arg_C
  loc_AB2081: ImpAdCallFPR4 Proc_57_8_A3B3D8()
  loc_AB2086: LitI4 2
  loc_AB208B: CI2I4
  loc_AB208C: FLdPr var_88
  loc_AB208F: Form.WindowState = from_stack_1
  loc_AB2094: FLdPr var_88
  loc_AB2097: Form.Hide
  loc_AB209C: ILdRf arg_C
  loc_AB209F: ImpAdCallFPR4 Proc_57_11_A06A7C()
  loc_AB20A4: LitI4 0
  loc_AB20A9: CI2I4
  loc_AB20AA: FLdPr var_88
  loc_AB20AD: Form.WindowState = from_stack_1
  loc_AB20B2: ILdRf arg_C
  loc_AB20B5: ImpAdCallFPR4 Proc_57_15_AB7DC4()
  loc_AB20BA: LitVarStr var_A8, vbNullString
  loc_AB20BF: PopAdLdVar
  loc_AB20C0: FLdPr var_88
  loc_AB20C3: LateMemLdVar
  loc_AB20C8: VarLateMemSt .SimpleText
  loc_AB20CC: FFree1Var var_98 = ""
  loc_AB20CF: LitVar_Missing var_B8
  loc_AB20D2: PopAdLdVar
  loc_AB20D3: LitVarI4
  loc_AB20DB: PopAdLdVar
  loc_AB20DC: FLdPr var_88
  loc_AB20DF: Form.Show from_stack_1, from_stack_2
  loc_AB20E4: Branch loc_AB210D
  loc_AB20E7: FLdPr var_88
  loc_AB20EA: LateMemCall
  loc_AB20F0: ILdRf arg_C
  loc_AB20F3: ImpAdCallFPR4 Proc_57_15_AB7DC4()
  loc_AB20F8: LitVarStr var_A8, vbNullString
  loc_AB20FD: PopAdLdVar
  loc_AB20FE: FLdPr var_88
  loc_AB2101: LateMemLdVar
  loc_AB2106: VarLateMemSt .SimpleText
  loc_AB210A: FFree1Var var_98 = ""
  loc_AB210D: LitNothing
  loc_AB210F: FStAd var_88 
  loc_AB2113: ExitProc
End Function

Private Function Proc_57_6_B93510() 'B93510
  'Data Table: 437A14
  loc_B92F7C: LitVarStr var_94, "<style type=""text/css"">"
  loc_B92F81: PopAdLdVar
  loc_B92F82: ILdPr
  loc_B92F85: LateMemLdVar
  loc_B92F8A: LdPrVar
  loc_B92F8C: LateMemCall
  loc_B92F92: FFree1Var var_C4 = ""
  loc_B92F95: LitVarStr var_94, ".Titulo1 {"
  loc_B92F9A: PopAdLdVar
  loc_B92F9B: ILdPr
  loc_B92F9E: LateMemLdVar
  loc_B92FA3: LdPrVar
  loc_B92FA5: LateMemCall
  loc_B92FAB: FFree1Var var_C4 = ""
  loc_B92FAE: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B92FB3: PopAdLdVar
  loc_B92FB4: ILdPr
  loc_B92FB7: LateMemLdVar
  loc_B92FBC: LdPrVar
  loc_B92FBE: LateMemCall
  loc_B92FC4: FFree1Var var_C4 = ""
  loc_B92FC7: LitVarStr var_94, " font-size: 18px;"
  loc_B92FCC: PopAdLdVar
  loc_B92FCD: ILdPr
  loc_B92FD0: LateMemLdVar
  loc_B92FD5: LdPrVar
  loc_B92FD7: LateMemCall
  loc_B92FDD: FFree1Var var_C4 = ""
  loc_B92FE0: LitVarStr var_94, " font-weight: bold;"
  loc_B92FE5: PopAdLdVar
  loc_B92FE6: ILdPr
  loc_B92FE9: LateMemLdVar
  loc_B92FEE: LdPrVar
  loc_B92FF0: LateMemCall
  loc_B92FF6: FFree1Var var_C4 = ""
  loc_B92FF9: LitVarStr var_94, "}"
  loc_B92FFE: PopAdLdVar
  loc_B92FFF: ILdPr
  loc_B93002: LateMemLdVar
  loc_B93007: LdPrVar
  loc_B93009: LateMemCall
  loc_B9300F: FFree1Var var_C4 = ""
  loc_B93012: LitVarStr var_94, ".Titulo2 {"
  loc_B93017: PopAdLdVar
  loc_B93018: ILdPr
  loc_B9301B: LateMemLdVar
  loc_B93020: LdPrVar
  loc_B93022: LateMemCall
  loc_B93028: FFree1Var var_C4 = ""
  loc_B9302B: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B93030: PopAdLdVar
  loc_B93031: ILdPr
  loc_B93034: LateMemLdVar
  loc_B93039: LdPrVar
  loc_B9303B: LateMemCall
  loc_B93041: FFree1Var var_C4 = ""
  loc_B93044: LitVarStr var_94, " font-size: 14px;"
  loc_B93049: PopAdLdVar
  loc_B9304A: ILdPr
  loc_B9304D: LateMemLdVar
  loc_B93052: LdPrVar
  loc_B93054: LateMemCall
  loc_B9305A: FFree1Var var_C4 = ""
  loc_B9305D: LitVarStr var_94, " font-weight: bold;"
  loc_B93062: PopAdLdVar
  loc_B93063: ILdPr
  loc_B93066: LateMemLdVar
  loc_B9306B: LdPrVar
  loc_B9306D: LateMemCall
  loc_B93073: FFree1Var var_C4 = ""
  loc_B93076: LitVarStr var_94, "}"
  loc_B9307B: PopAdLdVar
  loc_B9307C: ILdPr
  loc_B9307F: LateMemLdVar
  loc_B93084: LdPrVar
  loc_B93086: LateMemCall
  loc_B9308C: FFree1Var var_C4 = ""
  loc_B9308F: LitVarStr var_94, ".Normal {"
  loc_B93094: PopAdLdVar
  loc_B93095: ILdPr
  loc_B93098: LateMemLdVar
  loc_B9309D: LdPrVar
  loc_B9309F: LateMemCall
  loc_B930A5: FFree1Var var_C4 = ""
  loc_B930A8: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B930AD: PopAdLdVar
  loc_B930AE: ILdPr
  loc_B930B1: LateMemLdVar
  loc_B930B6: LdPrVar
  loc_B930B8: LateMemCall
  loc_B930BE: FFree1Var var_C4 = ""
  loc_B930C1: LitVarStr var_94, " font-size: 12px;"
  loc_B930C6: PopAdLdVar
  loc_B930C7: ILdPr
  loc_B930CA: LateMemLdVar
  loc_B930CF: LdPrVar
  loc_B930D1: LateMemCall
  loc_B930D7: FFree1Var var_C4 = ""
  loc_B930DA: LitVarStr var_94, " font-style: normal;"
  loc_B930DF: PopAdLdVar
  loc_B930E0: ILdPr
  loc_B930E3: LateMemLdVar
  loc_B930E8: LdPrVar
  loc_B930EA: LateMemCall
  loc_B930F0: FFree1Var var_C4 = ""
  loc_B930F3: LitVarStr var_94, " font-weight: normal;"
  loc_B930F8: PopAdLdVar
  loc_B930F9: ILdPr
  loc_B930FC: LateMemLdVar
  loc_B93101: LdPrVar
  loc_B93103: LateMemCall
  loc_B93109: FFree1Var var_C4 = ""
  loc_B9310C: LitVarStr var_94, " font-variant: normal;"
  loc_B93111: PopAdLdVar
  loc_B93112: ILdPr
  loc_B93115: LateMemLdVar
  loc_B9311A: LdPrVar
  loc_B9311C: LateMemCall
  loc_B93122: FFree1Var var_C4 = ""
  loc_B93125: LitVarStr var_94, "}"
  loc_B9312A: PopAdLdVar
  loc_B9312B: ILdPr
  loc_B9312E: LateMemLdVar
  loc_B93133: LdPrVar
  loc_B93135: LateMemCall
  loc_B9313B: FFree1Var var_C4 = ""
  loc_B9313E: LitVarStr var_94, ".Encabezado {"
  loc_B93143: PopAdLdVar
  loc_B93144: ILdPr
  loc_B93147: LateMemLdVar
  loc_B9314C: LdPrVar
  loc_B9314E: LateMemCall
  loc_B93154: FFree1Var var_C4 = ""
  loc_B93157: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_B9315C: PopAdLdVar
  loc_B9315D: ILdPr
  loc_B93160: LateMemLdVar
  loc_B93165: LdPrVar
  loc_B93167: LateMemCall
  loc_B9316D: FFree1Var var_C4 = ""
  loc_B93170: LitVarStr var_94, " font-size: 11px;"
  loc_B93175: PopAdLdVar
  loc_B93176: ILdPr
  loc_B93179: LateMemLdVar
  loc_B9317E: LdPrVar
  loc_B93180: LateMemCall
  loc_B93186: FFree1Var var_C4 = ""
  loc_B93189: LitVarStr var_94, " font-weight: bold;"
  loc_B9318E: PopAdLdVar
  loc_B9318F: ILdPr
  loc_B93192: LateMemLdVar
  loc_B93197: LdPrVar
  loc_B93199: LateMemCall
  loc_B9319F: FFree1Var var_C4 = ""
  loc_B931A2: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_B931A7: PopAdLdVar
  loc_B931A8: ILdPr
  loc_B931AB: LateMemLdVar
  loc_B931B0: LdPrVar
  loc_B931B2: LateMemCall
  loc_B931B8: FFree1Var var_C4 = ""
  loc_B931BB: LitVarStr var_94, "}"
  loc_B931C0: PopAdLdVar
  loc_B931C1: ILdPr
  loc_B931C4: LateMemLdVar
  loc_B931C9: LdPrVar
  loc_B931CB: LateMemCall
  loc_B931D1: FFree1Var var_C4 = ""
  loc_B931D4: LitVarStr var_94, ".Encabezado1 {font-family: ""Times New Roman"", Times, serif;"
  loc_B931D9: PopAdLdVar
  loc_B931DA: ILdPr
  loc_B931DD: LateMemLdVar
  loc_B931E2: LdPrVar
  loc_B931E4: LateMemCall
  loc_B931EA: FFree1Var var_C4 = ""
  loc_B931ED: LitVarStr var_94, " font-size: 13px;"
  loc_B931F2: PopAdLdVar
  loc_B931F3: ILdPr
  loc_B931F6: LateMemLdVar
  loc_B931FB: LdPrVar
  loc_B931FD: LateMemCall
  loc_B93203: FFree1Var var_C4 = ""
  loc_B93206: LitVarStr var_94, " font-weight: bold;"
  loc_B9320B: PopAdLdVar
  loc_B9320C: ILdPr
  loc_B9320F: LateMemLdVar
  loc_B93214: LdPrVar
  loc_B93216: LateMemCall
  loc_B9321C: FFree1Var var_C4 = ""
  loc_B9321F: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_B93224: PopAdLdVar
  loc_B93225: ILdPr
  loc_B93228: LateMemLdVar
  loc_B9322D: LdPrVar
  loc_B9322F: LateMemCall
  loc_B93235: FFree1Var var_C4 = ""
  loc_B93238: LitVarStr var_94, "}"
  loc_B9323D: PopAdLdVar
  loc_B9323E: ILdPr
  loc_B93241: LateMemLdVar
  loc_B93246: LdPrVar
  loc_B93248: LateMemCall
  loc_B9324E: FFree1Var var_C4 = ""
  loc_B93251: LitVarStr var_94, ".LineaDato {"
  loc_B93256: PopAdLdVar
  loc_B93257: ILdPr
  loc_B9325A: LateMemLdVar
  loc_B9325F: LdPrVar
  loc_B93261: LateMemCall
  loc_B93267: FFree1Var var_C4 = ""
  loc_B9326A: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B9326F: PopAdLdVar
  loc_B93270: ILdPr
  loc_B93273: LateMemLdVar
  loc_B93278: LdPrVar
  loc_B9327A: LateMemCall
  loc_B93280: FFree1Var var_C4 = ""
  loc_B93283: LitVarStr var_94, " font-size: 10px;"
  loc_B93288: PopAdLdVar
  loc_B93289: ILdPr
  loc_B9328C: LateMemLdVar
  loc_B93291: LdPrVar
  loc_B93293: LateMemCall
  loc_B93299: FFree1Var var_C4 = ""
  loc_B9329C: LitVarStr var_94, "}"
  loc_B932A1: PopAdLdVar
  loc_B932A2: ILdPr
  loc_B932A5: LateMemLdVar
  loc_B932AA: LdPrVar
  loc_B932AC: LateMemCall
  loc_B932B2: FFree1Var var_C4 = ""
  loc_B932B5: LitVarStr var_94, ".Totales {"
  loc_B932BA: PopAdLdVar
  loc_B932BB: ILdPr
  loc_B932BE: LateMemLdVar
  loc_B932C3: LdPrVar
  loc_B932C5: LateMemCall
  loc_B932CB: FFree1Var var_C4 = ""
  loc_B932CE: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B932D3: PopAdLdVar
  loc_B932D4: ILdPr
  loc_B932D7: LateMemLdVar
  loc_B932DC: LdPrVar
  loc_B932DE: LateMemCall
  loc_B932E4: FFree1Var var_C4 = ""
  loc_B932E7: LitVarStr var_94, " font-size: 12px;"
  loc_B932EC: PopAdLdVar
  loc_B932ED: ILdPr
  loc_B932F0: LateMemLdVar
  loc_B932F5: LdPrVar
  loc_B932F7: LateMemCall
  loc_B932FD: FFree1Var var_C4 = ""
  loc_B93300: LitVarStr var_94, " font-weight: bold;"
  loc_B93305: PopAdLdVar
  loc_B93306: ILdPr
  loc_B93309: LateMemLdVar
  loc_B9330E: LdPrVar
  loc_B93310: LateMemCall
  loc_B93316: FFree1Var var_C4 = ""
  loc_B93319: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B9331E: PopAdLdVar
  loc_B9331F: ILdPr
  loc_B93322: LateMemLdVar
  loc_B93327: LdPrVar
  loc_B93329: LateMemCall
  loc_B9332F: FFree1Var var_C4 = ""
  loc_B93332: LitVarStr var_94, "}"
  loc_B93337: PopAdLdVar
  loc_B93338: ILdPr
  loc_B9333B: LateMemLdVar
  loc_B93340: LdPrVar
  loc_B93342: LateMemCall
  loc_B93348: FFree1Var var_C4 = ""
  loc_B9334B: LitVarStr var_94, ".SubTotales {"
  loc_B93350: PopAdLdVar
  loc_B93351: ILdPr
  loc_B93354: LateMemLdVar
  loc_B93359: LdPrVar
  loc_B9335B: LateMemCall
  loc_B93361: FFree1Var var_C4 = ""
  loc_B93364: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B93369: PopAdLdVar
  loc_B9336A: ILdPr
  loc_B9336D: LateMemLdVar
  loc_B93372: LdPrVar
  loc_B93374: LateMemCall
  loc_B9337A: FFree1Var var_C4 = ""
  loc_B9337D: LitVarStr var_94, " font-size: 10px;"
  loc_B93382: PopAdLdVar
  loc_B93383: ILdPr
  loc_B93386: LateMemLdVar
  loc_B9338B: LdPrVar
  loc_B9338D: LateMemCall
  loc_B93393: FFree1Var var_C4 = ""
  loc_B93396: LitVarStr var_94, " font-weight: bold;"
  loc_B9339B: PopAdLdVar
  loc_B9339C: ILdPr
  loc_B9339F: LateMemLdVar
  loc_B933A4: LdPrVar
  loc_B933A6: LateMemCall
  loc_B933AC: FFree1Var var_C4 = ""
  loc_B933AF: LitVarStr var_94, " background-color: #7DC3E1;"
  loc_B933B4: PopAdLdVar
  loc_B933B5: ILdPr
  loc_B933B8: LateMemLdVar
  loc_B933BD: LdPrVar
  loc_B933BF: LateMemCall
  loc_B933C5: FFree1Var var_C4 = ""
  loc_B933C8: LitVarStr var_94, "}"
  loc_B933CD: PopAdLdVar
  loc_B933CE: ILdPr
  loc_B933D1: LateMemLdVar
  loc_B933D6: LdPrVar
  loc_B933D8: LateMemCall
  loc_B933DE: FFree1Var var_C4 = ""
  loc_B933E1: LitVarStr var_94, ".SubTotales {"
  loc_B933E6: PopAdLdVar
  loc_B933E7: ILdPr
  loc_B933EA: LateMemLdVar
  loc_B933EF: LdPrVar
  loc_B933F1: LateMemCall
  loc_B933F7: FFree1Var var_C4 = ""
  loc_B933FA: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B933FF: PopAdLdVar
  loc_B93400: ILdPr
  loc_B93403: LateMemLdVar
  loc_B93408: LdPrVar
  loc_B9340A: LateMemCall
  loc_B93410: FFree1Var var_C4 = ""
  loc_B93413: LitVarStr var_94, " font-size: 10px;"
  loc_B93418: PopAdLdVar
  loc_B93419: ILdPr
  loc_B9341C: LateMemLdVar
  loc_B93421: LdPrVar
  loc_B93423: LateMemCall
  loc_B93429: FFree1Var var_C4 = ""
  loc_B9342C: LitVarStr var_94, " font-weight: bold;"
  loc_B93431: PopAdLdVar
  loc_B93432: ILdPr
  loc_B93435: LateMemLdVar
  loc_B9343A: LdPrVar
  loc_B9343C: LateMemCall
  loc_B93442: FFree1Var var_C4 = ""
  loc_B93445: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B9344A: PopAdLdVar
  loc_B9344B: ILdPr
  loc_B9344E: LateMemLdVar
  loc_B93453: LdPrVar
  loc_B93455: LateMemCall
  loc_B9345B: FFree1Var var_C4 = ""
  loc_B9345E: LitVarStr var_94, "}"
  loc_B93463: PopAdLdVar
  loc_B93464: ILdPr
  loc_B93467: LateMemLdVar
  loc_B9346C: LdPrVar
  loc_B9346E: LateMemCall
  loc_B93474: FFree1Var var_C4 = ""
  loc_B93477: LitVarStr var_94, ".Tilde {"
  loc_B9347C: PopAdLdVar
  loc_B9347D: ILdPr
  loc_B93480: LateMemLdVar
  loc_B93485: LdPrVar
  loc_B93487: LateMemCall
  loc_B9348D: FFree1Var var_C4 = ""
  loc_B93490: LitVarStr var_94, " font-family: Wingdings;"
  loc_B93495: PopAdLdVar
  loc_B93496: ILdPr
  loc_B93499: LateMemLdVar
  loc_B9349E: LdPrVar
  loc_B934A0: LateMemCall
  loc_B934A6: FFree1Var var_C4 = ""
  loc_B934A9: LitVarStr var_94, " font-size: 16px;"
  loc_B934AE: PopAdLdVar
  loc_B934AF: ILdPr
  loc_B934B2: LateMemLdVar
  loc_B934B7: LdPrVar
  loc_B934B9: LateMemCall
  loc_B934BF: FFree1Var var_C4 = ""
  loc_B934C2: LitVarStr var_94, "}"
  loc_B934C7: PopAdLdVar
  loc_B934C8: ILdPr
  loc_B934CB: LateMemLdVar
  loc_B934D0: LdPrVar
  loc_B934D2: LateMemCall
  loc_B934D8: FFree1Var var_C4 = ""
  loc_B934DB: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_B934E0: PopAdLdVar
  loc_B934E1: ILdPr
  loc_B934E4: LateMemLdVar
  loc_B934E9: LdPrVar
  loc_B934EB: LateMemCall
  loc_B934F1: FFree1Var var_C4 = ""
  loc_B934F4: LitVarStr var_94, "</style>"
  loc_B934F9: PopAdLdVar
  loc_B934FA: ILdPr
  loc_B934FD: LateMemLdVar
  loc_B93502: LdPrVar
  loc_B93504: LateMemCall
  loc_B9350A: FFree1Var var_C4 = ""
  loc_B9350D: ExitProc
End Function

Private Function Proc_57_7_B5E738(arg_C, arg_10) 'B5E738
  'Data Table: 437A14
  loc_B5E334: LitStr "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\PageSetup\"
  loc_B5E337: FStStrCopy var_88
  loc_B5E33A: ILdI2 arg_10
  loc_B5E33D: BranchF loc_B5E5C5
  loc_B5E340: LitVarStr var_98, "<SCRIPT LANGUAGE=""JavaScript"">"
  loc_B5E345: PopAdLdVar
  loc_B5E346: ILdRfDarg arg_C
  loc_B5E34C: LdPrVar
  loc_B5E34E: LateMemCall
  loc_B5E354: LitVarStr var_98, "<!--"
  loc_B5E359: PopAdLdVar
  loc_B5E35A: ILdRfDarg arg_C
  loc_B5E360: LdPrVar
  loc_B5E362: LateMemCall
  loc_B5E368: LitVarStr var_98, "function stopError() {"
  loc_B5E36D: PopAdLdVar
  loc_B5E36E: ILdRfDarg arg_C
  loc_B5E374: LdPrVar
  loc_B5E376: LateMemCall
  loc_B5E37C: LitVarStr var_98, "  return true;"
  loc_B5E381: PopAdLdVar
  loc_B5E382: ILdRfDarg arg_C
  loc_B5E388: LdPrVar
  loc_B5E38A: LateMemCall
  loc_B5E390: LitVarStr var_98, "}"
  loc_B5E395: PopAdLdVar
  loc_B5E396: ILdRfDarg arg_C
  loc_B5E39C: LdPrVar
  loc_B5E39E: LateMemCall
  loc_B5E3A4: LitVarStr var_98, "window.onerror = stopError;"
  loc_B5E3A9: PopAdLdVar
  loc_B5E3AA: ILdRfDarg arg_C
  loc_B5E3B0: LdPrVar
  loc_B5E3B2: LateMemCall
  loc_B5E3B8: LitVarStr var_98, "// -->"
  loc_B5E3BD: PopAdLdVar
  loc_B5E3BE: ILdRfDarg arg_C
  loc_B5E3C4: LdPrVar
  loc_B5E3C6: LateMemCall
  loc_B5E3CC: LitVarStr var_98, "</SCRIPT>"
  loc_B5E3D1: PopAdLdVar
  loc_B5E3D2: ILdRfDarg arg_C
  loc_B5E3D8: LdPrVar
  loc_B5E3DA: LateMemCall
  loc_B5E3E0: LitVarStr var_98, "<script defer>"
  loc_B5E3E5: PopAdLdVar
  loc_B5E3E6: ILdRfDarg arg_C
  loc_B5E3EC: LdPrVar
  loc_B5E3EE: LateMemCall
  loc_B5E3F4: LitVarStr var_98, "function ini() {"
  loc_B5E3F9: PopAdLdVar
  loc_B5E3FA: ILdRfDarg arg_C
  loc_B5E400: LdPrVar
  loc_B5E402: LateMemCall
  loc_B5E408: LitStr vbNullString
  loc_B5E40B: LitStr "header"
  loc_B5E40E: ILdRf var_88
  loc_B5E411: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B5E416: LitI2_Byte &HFF
  loc_B5E418: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B5E41D: FStFPR8 var_1B8
  loc_B5E420: LitVarStr var_C8, vbNullString
  loc_B5E425: FStVarCopyObj var_EC
  loc_B5E428: FLdRfVar var_EC
  loc_B5E42B: LitVarStr var_98, "Impresión: "
  loc_B5E430: FLdFPR8 var_1B8
  loc_B5E433: CVarDate var_A8
  loc_B5E437: ConcatVar var_DC
  loc_B5E43B: FMemLdRf Proc_57_8_A3B3D8(, )
  loc_B5E440: CVarRef
  loc_B5E445: FLdRfVar var_FC
  loc_B5E448: ImpAdCallFPR4  = IIf(, , )
  loc_B5E44D: LitVarStr var_16C, vbNullString
  loc_B5E452: FStVarCopyObj var_17C
  loc_B5E455: FLdRfVar var_17C
  loc_B5E458: LitStr "Usuario: "
  loc_B5E45B: ImpAdLdI4 MemVar_D9302C
  loc_B5E45E: ConcatStr
  loc_B5E45F: CVarStr var_15C
  loc_B5E462: FMemLdRf Proc_57_8_A3B3D8(, )
  loc_B5E467: CVarRef
  loc_B5E46C: FLdRfVar var_18C
  loc_B5E46F: ImpAdCallFPR4  = IIf(, , )
  loc_B5E474: FLdRfVar var_18C
  loc_B5E477: LitStr "Usuario: "
  loc_B5E47A: ImpAdLdI4 MemVar_D9302C
  loc_B5E47D: ConcatStr
  loc_B5E47E: FStStrNoPop var_CC
  loc_B5E481: LitStr "&b"
  loc_B5E484: ConcatStr
  loc_B5E485: CVarStr var_10C
  loc_B5E488: FLdRfVar var_FC
  loc_B5E48B: ConcatVar var_11C
  loc_B5E48F: LitVarStr var_12C, "&b&p/&P"
  loc_B5E494: ConcatVar var_13C
  loc_B5E498: FMemLdRf Proc_57_8_A3B3D8()
  loc_B5E49D: CVarRef
  loc_B5E4A2: FLdRfVar var_1AC
  loc_B5E4A5: ImpAdCallFPR4  = IIf(, , )
  loc_B5E4AA: FLdRfVar var_1AC
  loc_B5E4AD: CStrVarVal var_1B0
  loc_B5E4B1: LitStr "footer"
  loc_B5E4B4: ILdRf var_88
  loc_B5E4B7: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B5E4BC: FFreeStr var_CC = ""
  loc_B5E4C3: FFreeVar var_DC = "": var_EC = "": var_10C = "": var_FC = "": var_11C = "": var_15C = "": var_17C = "": var_13C = "": var_18C = ""
  loc_B5E4DA: LitStr "0.25000"
  loc_B5E4DD: LitStr "margin_bottom"
  loc_B5E4E0: ILdRf var_88
  loc_B5E4E3: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B5E4E8: LitStr "0.20000"
  loc_B5E4EB: LitStr "margin_left"
  loc_B5E4EE: ILdRf var_88
  loc_B5E4F1: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B5E4F6: LitStr "0.20000"
  loc_B5E4F9: LitStr "margin_right"
  loc_B5E4FC: ILdRf var_88
  loc_B5E4FF: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B5E504: LitStr "0.25000"
  loc_B5E507: LitStr "margin_top"
  loc_B5E50A: ILdRf var_88
  loc_B5E50D: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B5E512: LitVarStr var_C8, "  factory.printing.portrait = "
  loc_B5E517: LitVarStr var_B8, "true"
  loc_B5E51C: FStVarCopyObj var_EC
  loc_B5E51F: FLdRfVar var_EC
  loc_B5E522: LitVarStr var_A8, "false"
  loc_B5E527: FStVarCopyObj var_DC
  loc_B5E52A: FLdRfVar var_DC
  loc_B5E52D: ILdRf arg_10
  loc_B5E530: CVarRef
  loc_B5E535: FLdRfVar var_FC
  loc_B5E538: ImpAdCallFPR4  = IIf(, , )
  loc_B5E53D: FLdRfVar var_FC
  loc_B5E540: ConcatVar var_10C
  loc_B5E544: PopAdLdVar
  loc_B5E545: ILdRfDarg arg_C
  loc_B5E54B: LdPrVar
  loc_B5E54D: LateMemCall
  loc_B5E553: FFreeVar var_DC = "": var_EC = "": var_FC = ""
  loc_B5E55E: LitVarStr var_98, "}"
  loc_B5E563: PopAdLdVar
  loc_B5E564: ILdRfDarg arg_C
  loc_B5E56A: LdPrVar
  loc_B5E56C: LateMemCall
  loc_B5E572: LitVarStr var_98, "</script>"
  loc_B5E577: PopAdLdVar
  loc_B5E578: ILdRfDarg arg_C
  loc_B5E57E: LdPrVar
  loc_B5E580: LateMemCall
  loc_B5E586: LitVarStr var_98, "</head>"
  loc_B5E58B: PopAdLdVar
  loc_B5E58C: ILdRfDarg arg_C
  loc_B5E592: LdPrVar
  loc_B5E594: LateMemCall
  loc_B5E59A: LitVarStr var_98, "<body onload=""ini()"">"
  loc_B5E59F: PopAdLdVar
  loc_B5E5A0: ILdRfDarg arg_C
  loc_B5E5A6: LdPrVar
  loc_B5E5A8: LateMemCall
  loc_B5E5AE: LitVarStr var_98, "  <object id=""factory"" style=""display:none"" viewastext classid=""clsid:1663ED61-23EB-11D2-B92F-008048FDD814""></object>"
  loc_B5E5B3: PopAdLdVar
  loc_B5E5B4: ILdRfDarg arg_C
  loc_B5E5BA: LdPrVar
  loc_B5E5BC: LateMemCall
  loc_B5E5C2: Branch loc_B5E737
  loc_B5E5C5: LitStr vbNullString
  loc_B5E5C8: LitStr "header"
  loc_B5E5CB: ILdRf var_88
  loc_B5E5CE: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B5E5D3: LitI2_Byte &HFF
  loc_B5E5D5: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B5E5DA: FStFPR8 var_1B8
  loc_B5E5DD: LitVarStr var_C8, vbNullString
  loc_B5E5E2: FStVarCopyObj var_EC
  loc_B5E5E5: FLdRfVar var_EC
  loc_B5E5E8: LitVarStr var_98, "Impresión: "
  loc_B5E5ED: FLdFPR8 var_1B8
  loc_B5E5F0: CVarDate var_A8
  loc_B5E5F4: ConcatVar var_DC
  loc_B5E5F8: FMemLdRf Proc_57_8_A3B3D8(, )
  loc_B5E5FD: CVarRef
  loc_B5E602: FLdRfVar var_FC
  loc_B5E605: ImpAdCallFPR4  = IIf(, , )
  loc_B5E60A: LitVarStr var_16C, vbNullString
  loc_B5E60F: FStVarCopyObj var_17C
  loc_B5E612: FLdRfVar var_17C
  loc_B5E615: LitStr "Usuario: "
  loc_B5E618: ImpAdLdI4 MemVar_D9302C
  loc_B5E61B: ConcatStr
  loc_B5E61C: CVarStr var_15C
  loc_B5E61F: FMemLdRf Proc_57_8_A3B3D8(, )
  loc_B5E624: CVarRef
  loc_B5E629: FLdRfVar var_18C
  loc_B5E62C: ImpAdCallFPR4  = IIf(, , )
  loc_B5E631: FLdRfVar var_18C
  loc_B5E634: LitStr "Usuario: "
  loc_B5E637: ImpAdLdI4 MemVar_D9302C
  loc_B5E63A: ConcatStr
  loc_B5E63B: FStStrNoPop var_CC
  loc_B5E63E: LitStr "&b"
  loc_B5E641: ConcatStr
  loc_B5E642: CVarStr var_10C
  loc_B5E645: FLdRfVar var_FC
  loc_B5E648: ConcatVar var_11C
  loc_B5E64C: LitVarStr var_12C, "&b&p/&P"
  loc_B5E651: ConcatVar var_13C
  loc_B5E655: FMemLdRf Proc_57_8_A3B3D8()
  loc_B5E65A: CVarRef
  loc_B5E65F: FLdRfVar var_1AC
  loc_B5E662: ImpAdCallFPR4  = IIf(, , )
  loc_B5E667: FLdRfVar var_1AC
  loc_B5E66A: CStrVarVal var_1B0
  loc_B5E66E: LitStr "footer"
  loc_B5E671: ILdRf var_88
  loc_B5E674: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B5E679: FFreeStr var_CC = ""
  loc_B5E680: FFreeVar var_DC = "": var_EC = "": var_10C = "": var_FC = "": var_11C = "": var_15C = "": var_17C = "": var_13C = "": var_18C = ""
  loc_B5E697: LitStr "0.25000"
  loc_B5E69A: LitStr "margin_bottom"
  loc_B5E69D: ILdRf var_88
  loc_B5E6A0: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B5E6A5: LitStr "0.25000"
  loc_B5E6A8: LitStr "margin_left"
  loc_B5E6AB: ILdRf var_88
  loc_B5E6AE: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B5E6B3: LitStr "0.25000"
  loc_B5E6B6: LitStr "margin_right"
  loc_B5E6B9: ILdRf var_88
  loc_B5E6BC: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B5E6C1: LitStr "0.25000"
  loc_B5E6C4: LitStr "margin_top"
  loc_B5E6C7: ILdRf var_88
  loc_B5E6CA: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B5E6CF: FMemLdR4 arg_8(12)
  loc_B5E6D4: LitStr "printer"
  loc_B5E6D7: ILdRf var_88
  loc_B5E6DA: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B5E6DF: LitStr "9"
  loc_B5E6E2: LitStr "paper_size"
  loc_B5E6E5: ILdRf var_88
  loc_B5E6E8: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B5E6ED: LitStr "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\"
  loc_B5E6F0: FStStrCopy var_88
  loc_B5E6F3: LitStr "yes"
  loc_B5E6F6: LitStr "Print_Background"
  loc_B5E6F9: ILdRf var_88
  loc_B5E6FC: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B5E701: LitStr "no"
  loc_B5E704: LitStr "AlwaysUseDefaultPrinter"
  loc_B5E707: ILdRf var_88
  loc_B5E70A: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B5E70F: LitVarStr var_98, "</head>"
  loc_B5E714: PopAdLdVar
  loc_B5E715: ILdRfDarg arg_C
  loc_B5E71B: LdPrVar
  loc_B5E71D: LateMemCall
  loc_B5E723: LitVarStr var_98, "<body>"
  loc_B5E728: PopAdLdVar
  loc_B5E729: ILdRfDarg arg_C
  loc_B5E72F: LdPrVar
  loc_B5E731: LateMemCall
  loc_B5E737: ExitProc
End Function

Private Function Proc_57_8_A3B3D8() 'A3B3D8
  'Data Table: 437A14
  loc_A3B390: FMemLdRf Proc_57_8_A3B3D8()
  loc_A3B395: CDargRef
  loc_A3B399: ILdPr
  loc_A3B39C: LateMemLdVar
  loc_A3B3A1: LdPrVar
  loc_A3B3A3: LateMemCall
  loc_A3B3A9: FFree1Var var_B4 = ""
  loc_A3B3AC: ImpAdCallFPR4 DoEvents()
  loc_A3B3B1: ILdPr
  loc_A3B3B4: LateMemLdVar
  loc_A3B3B9: VarLateMemLdVar var_B4, .ReadyState
  loc_A3B3BF: LitVarI4
  loc_A3B3C7: HardType
  loc_A3B3C8: EqVarBool
  loc_A3B3CA: NotI4
  loc_A3B3CB: FFreeVar var_A4 = ""
  loc_A3B3D2: BranchT loc_A3B3AC
  loc_A3B3D5: ExitProc
End Function

Private Function Proc_57_9_A3E138() 'A3E138
  'Data Table: 437A14
  loc_A3E0F0: FMemLdRf Proc_57_8_A3B3D8()
  loc_A3E0F5: CDargRef
  loc_A3E0F9: ILdPr
  loc_A3E0FC: LateMemLdVar
  loc_A3E101: LdPrVar
  loc_A3E103: LateMemCall
  loc_A3E109: FFree1Var var_B4 = ""
  loc_A3E10C: ImpAdCallFPR4 DoEvents()
  loc_A3E111: ILdPr
  loc_A3E114: LateMemLdVar
  loc_A3E119: VarLateMemLdVar var_B4, .ReadyState
  loc_A3E11F: LitVarI4
  loc_A3E127: HardType
  loc_A3E128: EqVarBool
  loc_A3E12A: NotI4
  loc_A3E12B: FFreeVar var_A4 = ""
  loc_A3E132: BranchT loc_A3E10C
  loc_A3E135: ExitProc
End Function

Private Function Proc_57_10_A06C84() 'A06C84
  'Data Table: 437A14
  loc_A06C54: LitVarI4
  loc_A06C5C: PopAdLdVar
  loc_A06C5D: LitVarI4
  loc_A06C65: PopAdLdVar
  loc_A06C66: LitVar_NULL
  loc_A06C6A: PopAdLdVar
  loc_A06C6B: LitVar_NULL
  loc_A06C6F: PopAdLdVar
  loc_A06C70: ILdPr
  loc_A06C73: LateMemLdVar
  loc_A06C78: LdPrVar
  loc_A06C7A: LateMemCall
  loc_A06C80: FFree1Var var_124 = ""
  loc_A06C83: ExitProc
End Function

Private Function Proc_57_11_A06A7C() 'A06A7C
  'Data Table: 437A14
  loc_A06A4C: LitVarI4
  loc_A06A54: PopAdLdVar
  loc_A06A55: LitVarI4
  loc_A06A5D: PopAdLdVar
  loc_A06A5E: LitVar_NULL
  loc_A06A62: PopAdLdVar
  loc_A06A63: LitVar_NULL
  loc_A06A67: PopAdLdVar
  loc_A06A68: ILdPr
  loc_A06A6B: LateMemLdVar
  loc_A06A70: LdPrVar
  loc_A06A72: LateMemCall
  loc_A06A78: FFree1Var var_124 = ""
  loc_A06A7B: ExitProc
End Function

Private Function Proc_57_12_A095AC() 'A095AC
  'Data Table: 437A14
  loc_A09578: LitVarI4
  loc_A09580: PopAdLdVar
  loc_A09581: LitVarI4
  loc_A09589: PopAdLdVar
  loc_A0958A: LitVarI2 var_E4, 2
  loc_A0958F: PopAdLdVar
  loc_A09590: LitVar_NULL
  loc_A09594: PopAdLdVar
  loc_A09595: ILdPr
  loc_A09598: LateMemLdVar
  loc_A0959D: LdPrVar
  loc_A0959F: LateMemCall
  loc_A095A5: FFree1Var var_124 = ""
  loc_A095A8: ExitProc
End Function

Private Function Proc_57_13_A09618() 'A09618
  'Data Table: 437A14
  loc_A095E4: LitVarI4
  loc_A095EC: PopAdLdVar
  loc_A095ED: LitVarI4
  loc_A095F5: PopAdLdVar
  loc_A095F6: LitVarI2 var_E4, 2
  loc_A095FB: PopAdLdVar
  loc_A095FC: LitVar_NULL
  loc_A09600: PopAdLdVar
  loc_A09601: ILdPr
  loc_A09604: LateMemLdVar
  loc_A09609: LdPrVar
  loc_A0960B: LateMemCall
  loc_A09611: FFree1Var var_124 = ""
  loc_A09614: ExitProc
  loc_A09615: ExitProcR4
End Function

Private Function Proc_57_14_A5411C() 'A5411C
  'Data Table: 437A14
  loc_A540C4: ImpAdCallFPR4 Proc_57_18_ADBCE8()
  loc_A540C9: LitVarI4
  loc_A540D1: PopAdLdVar
  loc_A540D2: LitVarI4
  loc_A540DA: PopAdLdVar
  loc_A540DB: LitVarI2 var_E4, 2
  loc_A540E0: PopAdLdVar
  loc_A540E1: LitVar_NULL
  loc_A540E5: PopAdLdVar
  loc_A540E6: ILdPr
  loc_A540E9: LateMemLdVar
  loc_A540EE: LdPrVar
  loc_A540F0: LateMemCall
  loc_A540F6: FFree1Var var_124 = ""
  loc_A540F9: ImpAdCallFPR4 DoEvents()
  loc_A540FE: LitI2_Byte 0
  loc_A54100: ImpAdLdI4 MemVar_D93030
  loc_A54103: ImpAdCallI2 Proc_272_57_A80E3C(, )
  loc_A54108: BranchT loc_A540F9
  loc_A5410B: FMemLdR4 arg_8(16)
  loc_A54110: ImpAdCallI2 Proc_272_25_B159D8()
  loc_A54115: FStStr var_128
  loc_A54118: FFree1Str var_128
  loc_A5411B: ExitProc
End Function

Private Function Proc_57_15_AB7DC4() 'AB7DC4
  'Data Table: 437A14
  loc_AB7CE4: FLdRfVar var_8C
  loc_AB7CE7: ILdPr
  loc_AB7CEA:  = Form.Controls
  loc_AB7CEF: FLdZeroAd var_8C
  loc_AB7CF2: FStAdFuncNoPop
  loc_AB7CF5: FLdRfVar var_88
  loc_AB7CF8: ForEachCollAd var_94
  loc_AB7CFE: FLdPr var_88
  loc_AB7D01: LateMemLdVar
  loc_AB7D06: FLdRfVar var_B4
  loc_AB7D09: ImpAdCallFPR4  = LCase()
  loc_AB7D0E: FLdRfVar var_B4
  loc_AB7D11: FStVar var_C4
  loc_AB7D15: FFree1Var var_A4 = ""
  loc_AB7D18: FLdRfVar var_C4
  loc_AB7D1B: LitVarStr var_D4, "cmdprevia"
  loc_AB7D20: HardType
  loc_AB7D21: EqVarBool
  loc_AB7D23: BranchT loc_AB7D88
  loc_AB7D26: FLdRfVar var_C4
  loc_AB7D29: LitVarStr var_E4, "cmdpredeterminada"
  loc_AB7D2E: HardType
  loc_AB7D2F: EqVarBool
  loc_AB7D31: BranchT loc_AB7D88
  loc_AB7D34: FLdRfVar var_C4
  loc_AB7D37: LitVarStr var_F4, "cmdhtml"
  loc_AB7D3C: HardType
  loc_AB7D3D: EqVarBool
  loc_AB7D3F: BranchT loc_AB7D88
  loc_AB7D42: FLdRfVar var_C4
  loc_AB7D45: LitVarStr var_104, "cmdpdf"
  loc_AB7D4A: HardType
  loc_AB7D4B: EqVarBool
  loc_AB7D4D: BranchT loc_AB7D88
  loc_AB7D50: FLdRfVar var_C4
  loc_AB7D53: LitVarStr var_114, "cmdtxt"
  loc_AB7D58: HardType
  loc_AB7D59: EqVarBool
  loc_AB7D5B: BranchT loc_AB7D88
  loc_AB7D5E: FLdRfVar var_C4
  loc_AB7D61: LitVarStr var_124, "cmdxls"
  loc_AB7D66: HardType
  loc_AB7D67: EqVarBool
  loc_AB7D69: BranchT loc_AB7D88
  loc_AB7D6C: FLdRfVar var_C4
  loc_AB7D6F: LitVarStr var_134, "cmdsalir"
  loc_AB7D74: HardType
  loc_AB7D75: EqVarBool
  loc_AB7D77: BranchT loc_AB7D88
  loc_AB7D7A: FLdRfVar var_C4
  loc_AB7D7D: LitVarStr var_144, "cmdpdfweb"
  loc_AB7D82: HardType
  loc_AB7D83: EqVarBool
  loc_AB7D85: BranchF loc_AB7D96
  loc_AB7D88: LitVar_TRUE var_D4
  loc_AB7D8B: PopAdLdVar
  loc_AB7D8C: FLdPr var_88
  loc_AB7D8F: LateMemSt
  loc_AB7D93: Branch loc_AB7DB7
  loc_AB7D96: FLdRfVar var_C4
  loc_AB7D99: LitVarStr var_D4, "cmdnueva"
  loc_AB7D9E: HardType
  loc_AB7D9F: EqVarBool
  loc_AB7DA1: BranchF loc_AB7DB7
  loc_AB7DA4: ILdPr
  loc_AB7DA7: LateMemLdVar
  loc_AB7DAC: PopAdLdVar
  loc_AB7DAD: FLdPr var_88
  loc_AB7DB0: LateMemSt
  loc_AB7DB4: FFree1Var var_A4 = ""
  loc_AB7DB7: FLdRfVar var_88
  loc_AB7DBA: NextEachCollAd var_94
  loc_AB7DC0: ExitProc
End Function

Private Function Proc_57_16_A91D2C() 'A91D2C
  'Data Table: 437A14
  loc_A91CA0: FLdRfVar var_90
  loc_A91CA3: FLdRfVar var_8C
  loc_A91CA6: LitI4 2
  loc_A91CAB: FLdRfVar var_88
  loc_A91CAE: NewIfNullPr IFileSystem3
  loc_A91CB1: from_stack_2 = IFileSystem3.IFileSystem.GetSpecialFolder(from_stack_1v)
  loc_A91CB6: FLdPr var_8C
  loc_A91CB9:  = Me.Path
  loc_A91CBE: ILdRf var_90
  loc_A91CC1: ImpAdCallI2 Proc_57_17_AB3534()
  loc_A91CC6: FStStr var_AC
  loc_A91CC9: FLdRfVar var_94
  loc_A91CCC: ILdPr
  loc_A91CCF:  = Form.Caption
  loc_A91CD4: FLdRfVar var_98
  loc_A91CD7: ILdPr
  loc_A91CDA:  = Form.Tag
  loc_A91CDF: FLdRfVar var_A8
  loc_A91CE2: ILdRf var_94
  loc_A91CE5: ILdRf var_98
  loc_A91CE8: ConcatStr
  loc_A91CE9: FStStrNoPop var_9C
  loc_A91CEC: LitStr ".rep"
  loc_A91CEF: ConcatStr
  loc_A91CF0: FStStrNoPop var_A4
  loc_A91CF3: FLdZeroAd var_AC
  loc_A91CF6: FStStrNoPop var_A0
  loc_A91CF9: FLdRfVar var_88
  loc_A91CFC: NewIfNullPr IFileSystem3
  loc_A91CFF: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_A91D04: FLdZeroAd var_A8
  loc_A91D07: FMemStStr arg_8(0)
  loc_A91D0D: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A91D1E: FFree1Ad var_8C
  loc_A91D21: LitNothing
  loc_A91D23: CastAd
  loc_A91D26: FStAdFunc var_88
  loc_A91D29: ExitProc
End Function

Private Function Proc_57_17_AB3534(arg_C) 'AB3534
  'Data Table: 437A14
  loc_AB345C: ILdRf arg_C
  loc_AB345F: FStStrCopy var_8C
  loc_AB3462: LitVarI2 var_B8, 1
  loc_AB3467: LitI4 2
  loc_AB346C: ILdRf var_8C
  loc_AB346F: ImpAdCallI2 Mid$(, , )
  loc_AB3474: FStStrNoPop var_BC
  loc_AB3477: LitStr ":"
  loc_AB347A: EqStr
  loc_AB347C: FFree1Str var_BC
  loc_AB347F: FFree1Var var_B8 = ""
  loc_AB3482: BranchF loc_AB349D
  loc_AB3485: LitI4 2
  loc_AB348A: ILdRf var_8C
  loc_AB348D: ImpAdCallI2 Left$(, )
  loc_AB3492: FStStr var_94
  loc_AB3495: LitI2_Byte 3
  loc_AB3497: FStI2 var_8E
  loc_AB349A: Branch loc_AB34A8
  loc_AB349D: LitStr vbNullString
  loc_AB34A0: FStStrCopy var_94
  loc_AB34A3: LitI2_Byte 1
  loc_AB34A5: FStI2 var_8E
  loc_AB34A8: FLdI2 var_8E
  loc_AB34AB: LitI2_Byte 0
  loc_AB34AD: GtI2
  loc_AB34AE: BranchF loc_AB352C
  loc_AB34B1: FLdI2 var_8E
  loc_AB34B4: LitI2_Byte 1
  loc_AB34B6: AddI2
  loc_AB34B7: CI4UI1
  loc_AB34B8: ILdRf var_8C
  loc_AB34BB: LitStr "\"
  loc_AB34BE: LitI4 0
  loc_AB34C3: FnInStr4
  loc_AB34C5: CI2I4
  loc_AB34C6: FStI2 var_8E
  loc_AB34C9: FLdI2 var_8E
  loc_AB34CC: LitI2_Byte 0
  loc_AB34CE: EqI2
  loc_AB34CF: BranchF loc_AB34EA
  loc_AB34D2: LitI4 &H16
  loc_AB34D7: FLdRfVar var_8C
  loc_AB34DA: CVarRef
  loc_AB34DF: ImpAdCallI2 push Dir(, )
  loc_AB34E4: FStStr var_98
  loc_AB34E7: Branch loc_AB3515
  loc_AB34EA: FLdI2 var_8E
  loc_AB34ED: LitI2_Byte 1
  loc_AB34EF: SubI2
  loc_AB34F0: CI4UI1
  loc_AB34F1: ILdRf var_8C
  loc_AB34F4: ImpAdCallI2 Left$(, )
  loc_AB34F9: FStStr var_BC
  loc_AB34FC: LitI4 &H16
  loc_AB3501: FLdZeroAd var_BC
  loc_AB3504: CVarStr var_B8
  loc_AB3507: ImpAdCallI2 push Dir(, )
  loc_AB350C: FStStr var_98
  loc_AB350F: FFree1Str var_BC
  loc_AB3512: FFree1Var var_B8 = ""
  loc_AB3515: ILdRf var_94
  loc_AB3518: LitStr "\"
  loc_AB351B: ConcatStr
  loc_AB351C: FStStrNoPop var_BC
  loc_AB351F: ILdRf var_98
  loc_AB3522: ConcatStr
  loc_AB3523: FStStr var_94
  loc_AB3526: FFree1Str var_BC
  loc_AB3529: Branch loc_AB34A8
  loc_AB352C: ILdRf var_94
  loc_AB352F: FStStrCopy var_88
  loc_AB3532: ExitProc
End Function

Private Function Proc_57_18_ADBCE8() 'ADBCE8
  'Data Table: 437A14
  loc_ADBB98: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Printing\"
  loc_ADBB9B: FStStrCopy var_8C
  loc_ADBB9E: LitStr "InfoGov"
  loc_ADBBA1: LitStr "StandardAuthor"
  loc_ADBBA4: ILdRf var_8C
  loc_ADBBA7: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBBAC: LitStr "1"
  loc_ADBBAF: LitStr "UseStandardAuthor"
  loc_ADBBB2: ILdRf var_8C
  loc_ADBBB5: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBBBA: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Printing\Formats\PDF\Security\"
  loc_ADBBBD: FStStrCopy var_8C
  loc_ADBBC0: LitStr "1"
  loc_ADBBC3: LitStr "PDFAllowDegradedPrinting"
  loc_ADBBC6: ILdRf var_8C
  loc_ADBBC9: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBBCE: LitStr "1"
  loc_ADBBD1: LitStr "PDFAllowScreenReaders"
  loc_ADBBD4: ILdRf var_8C
  loc_ADBBD7: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBBDC: LitStr "1"
  loc_ADBBDF: LitStr "PDFDisallowModifyAnnotations"
  loc_ADBBE2: ILdRf var_8C
  loc_ADBBE5: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBBEA: LitStr "1"
  loc_ADBBED: LitStr "PDFDisallowModifyContents"
  loc_ADBBF0: ILdRf var_8C
  loc_ADBBF3: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBBF8: LitStr "0"
  loc_ADBBFB: LitStr "PDFDisallowPrinting"
  loc_ADBBFE: ILdRf var_8C
  loc_ADBC01: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBC06: LitStr "1"
  loc_ADBC09: LitStr "PDFHighEncryption"
  loc_ADBC0C: ILdRf var_8C
  loc_ADBC0F: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBC14: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Program\"
  loc_ADBC17: FStStrCopy var_8C
  loc_ADBC1A: FLdRfVar var_90
  loc_ADBC1D: ImpAdLdI4 MemVar_D93030
  loc_ADBC20: FLdRfVar var_88
  loc_ADBC23: NewIfNullPr IFileSystem3
  loc_ADBC26: from_stack_2 = IFileSystem3.IFileSystem.GetParentFolderName(from_stack_1v)
  loc_ADBC2B: ILdRf var_90
  loc_ADBC2E: LitStr "AutosaveDirectory"
  loc_ADBC31: ILdRf var_8C
  loc_ADBC34: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBC39: FFree1Str var_90
  loc_ADBC3C: FLdRfVar var_90
  loc_ADBC3F: ImpAdLdI4 MemVar_D93030
  loc_ADBC42: FLdRfVar var_88
  loc_ADBC45: NewIfNullPr IFileSystem3
  loc_ADBC48: from_stack_2 = IFileSystem3.IFileSystem.GetFileName(from_stack_1v)
  loc_ADBC4D: ILdRf var_90
  loc_ADBC50: LitStr "AutosaveFilename"
  loc_ADBC53: ILdRf var_8C
  loc_ADBC56: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBC5B: FFree1Str var_90
  loc_ADBC5E: LitStr "1"
  loc_ADBC61: LitStr "AutosaveStartStandardProgram"
  loc_ADBC64: ILdRf var_8C
  loc_ADBC67: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBC6C: LitStr "0"
  loc_ADBC6F: LitStr "PrintAfterSaving"
  loc_ADBC72: ILdRf var_8C
  loc_ADBC75: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBC7A: LitStr "0"
  loc_ADBC7D: LitStr "PrintAfterSavingDuplex"
  loc_ADBC80: ILdRf var_8C
  loc_ADBC83: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBC88: LitStr "0"
  loc_ADBC8B: LitStr "PrintAfterSavingNoCancel"
  loc_ADBC8E: ILdRf var_8C
  loc_ADBC91: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBC96: LitStr "0"
  loc_ADBC99: LitStr "PrintAfterSavingQueryUser"
  loc_ADBC9C: ILdRf var_8C
  loc_ADBC9F: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBCA4: LitStr "0"
  loc_ADBCA7: LitStr "PrintAfterSavingTumble"
  loc_ADBCAA: ILdRf var_8C
  loc_ADBCAD: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBCB2: LitStr "1"
  loc_ADBCB5: LitStr "ShowAnimation"
  loc_ADBCB8: ILdRf var_8C
  loc_ADBCBB: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBCC0: LitStr "1"
  loc_ADBCC3: LitStr "UseAutosave"
  loc_ADBCC6: ILdRf var_8C
  loc_ADBCC9: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBCCE: LitStr "1"
  loc_ADBCD1: LitStr "UseAutosaveDirectory"
  loc_ADBCD4: ILdRf var_8C
  loc_ADBCD7: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_ADBCDC: LitNothing
  loc_ADBCDE: CastAd
  loc_ADBCE1: FStAdFunc var_88
  loc_ADBCE4: ExitProc
End Function

Private Function Proc_57_19_B53E24(arg_C) 'B53E24
  'Data Table: 437A14
  loc_B53A50: FLdI2 arg_C
  loc_B53A53: BranchF loc_B53A64
  loc_B53A56: LitStr "PDFCreator"
  loc_B53A59: ImpAdCallI2 Proc_272_25_B159D8()
  loc_B53A5E: FStStr var_88
  loc_B53A61: FFree1Str var_88
  loc_B53A64: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Printing\"
  loc_B53A67: FStStrCopy var_90
  loc_B53A6A: LitStr "InfoGov"
  loc_B53A6D: LitStr "StandardAuthor"
  loc_B53A70: ILdRf var_90
  loc_B53A73: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53A78: LitStr "1"
  loc_B53A7B: LitStr "UseStandardAuthor"
  loc_B53A7E: ILdRf var_90
  loc_B53A81: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53A86: LitStr "a4"
  loc_B53A89: LitStr "Papersize"
  loc_B53A8C: ILdRf var_90
  loc_B53A8F: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53A94: LitStr "0"
  loc_B53A97: LitStr "UseFixPapersize"
  loc_B53A9A: ILdRf var_90
  loc_B53A9D: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53AA2: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Printing\Formats\PDF\Security\"
  loc_B53AA5: FStStrCopy var_90
  loc_B53AA8: LitStr "1"
  loc_B53AAB: LitStr "PDFAllowDegradedPrinting"
  loc_B53AAE: ILdRf var_90
  loc_B53AB1: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53AB6: LitStr "1"
  loc_B53AB9: LitStr "PDFAllowScreenReaders"
  loc_B53ABC: ILdRf var_90
  loc_B53ABF: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53AC4: LitStr "1"
  loc_B53AC7: LitStr "PDFDisallowModifyAnnotations"
  loc_B53ACA: ILdRf var_90
  loc_B53ACD: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53AD2: LitStr "1"
  loc_B53AD5: LitStr "PDFDisallowModifyContents"
  loc_B53AD8: ILdRf var_90
  loc_B53ADB: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53AE0: LitStr "0"
  loc_B53AE3: LitStr "PDFDisallowPrinting"
  loc_B53AE6: ILdRf var_90
  loc_B53AE9: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53AEE: LitStr "1"
  loc_B53AF1: LitStr "PDFHighEncryption"
  loc_B53AF4: ILdRf var_90
  loc_B53AF7: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53AFC: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Printing\Formats\PDF\General\"
  loc_B53AFF: FStStrCopy var_90
  loc_B53B02: LitStr "2"
  loc_B53B05: LitStr "PDFGeneralCompatibility"
  loc_B53B08: ILdRf var_90
  loc_B53B0B: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53B10: LitStr "0"
  loc_B53B13: LitStr "PDFGeneralOverprint"
  loc_B53B16: ILdRf var_90
  loc_B53B19: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53B1E: LitStr "1"
  loc_B53B21: LitStr "PDFGeneralAutorotate"
  loc_B53B24: ILdRf var_90
  loc_B53B27: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53B2C: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Program\"
  loc_B53B2F: FStStrCopy var_90
  loc_B53B32: LitStr "<temp>"
  loc_B53B35: LitStr "AutosaveDirectory"
  loc_B53B38: ILdRf var_90
  loc_B53B3B: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53B40: LitStr "<MyFiles>\"
  loc_B53B43: LitStr "LastsaveDirectory"
  loc_B53B46: ILdRf var_90
  loc_B53B49: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53B4E: LitStr "spanish"
  loc_B53B51: LitStr "Language"
  loc_B53B54: ILdRf var_90
  loc_B53B57: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53B5C: LitStr "<Temp>PDFCreator\"
  loc_B53B5F: LitStr "PrinterTemppath"
  loc_B53B62: ILdRf var_90
  loc_B53B65: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53B6A: LitStr vbNullString
  loc_B53B6D: LitStr "AdditionalGhostscriptParameters"
  loc_B53B70: ILdRf var_90
  loc_B53B73: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53B78: LitStr vbNullString
  loc_B53B7B: LitStr "AdditionalGhostscriptSearchpath"
  loc_B53B7E: ILdRf var_90
  loc_B53B81: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53B86: LitStr "1"
  loc_B53B89: LitStr "AddWindowsFontpath"
  loc_B53B8C: ILdRf var_90
  loc_B53B8F: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53B94: LitStr "print"
  loc_B53B97: LitStr "AutosaveFilename"
  loc_B53B9A: ILdRf var_90
  loc_B53B9D: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53BA2: LitStr "0"
  loc_B53BA5: LitStr "AutosaveFormat"
  loc_B53BA8: ILdRf var_90
  loc_B53BAB: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53BB0: LitStr "0"
  loc_B53BB3: LitStr "AutosaveStartStandardProgram"
  loc_B53BB6: ILdRf var_90
  loc_B53BB9: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53BBE: LitStr "0"
  loc_B53BC1: LitStr "ClientComputerResolveIPAddress"
  loc_B53BC4: ILdRf var_90
  loc_B53BC7: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53BCC: LitStr "0"
  loc_B53BCF: LitStr "DisableEmail"
  loc_B53BD2: ILdRf var_90
  loc_B53BD5: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53BDA: LitStr "0"
  loc_B53BDD: LitStr "DontUseDocumentSettings"
  loc_B53BE0: ILdRf var_90
  loc_B53BE3: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53BE8: LitStr "Microsoft Word - |\.doc|\Microsoft Excel - |\.xls|\Microsoft PowerPoint - |\.ppt|"
  loc_B53BEB: LitStr "FilenameSubstitutions"
  loc_B53BEE: ILdRf var_90
  loc_B53BF1: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53BF6: LitStr "1"
  loc_B53BF9: LitStr "FilenameSubstitutionsOnlyInTitle"
  loc_B53BFC: ILdRf var_90
  loc_B53BFF: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53C04: LitStr "0"
  loc_B53C07: LitStr "Logging"
  loc_B53C0A: ILdRf var_90
  loc_B53C0D: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53C12: LitStr "100"
  loc_B53C15: LitStr "LogLines"
  loc_B53C18: ILdRf var_90
  loc_B53C1B: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53C20: LitStr "1"
  loc_B53C23: LitStr "NoConfirmMessageSwitchingDefaultprinter"
  loc_B53C26: ILdRf var_90
  loc_B53C29: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53C2E: LitStr "0"
  loc_B53C31: LitStr "NoProcessingAtStartup"
  loc_B53C34: ILdRf var_90
  loc_B53C37: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53C3C: LitStr "0"
  loc_B53C3F: LitStr "NoPSCheck"
  loc_B53C42: ILdRf var_90
  loc_B53C45: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53C4A: LitStr "0"
  loc_B53C4D: LitStr "OptionsDesign"
  loc_B53C50: ILdRf var_90
  loc_B53C53: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53C58: LitStr "1"
  loc_B53C5B: LitStr "OptionsEnabled"
  loc_B53C5E: ILdRf var_90
  loc_B53C61: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53C66: LitStr "1"
  loc_B53C69: LitStr "OptionsVisible"
  loc_B53C6C: ILdRf var_90
  loc_B53C6F: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53C74: LitStr "1"
  loc_B53C77: LitStr "PrintAfterSaving"
  loc_B53C7A: ILdRf var_90
  loc_B53C7D: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53C82: LitStr "0"
  loc_B53C85: LitStr "PrintAfterSavingDuplex"
  loc_B53C88: ILdRf var_90
  loc_B53C8B: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53C90: LitStr "0"
  loc_B53C93: LitStr "PrintAfterSavingNoCancel"
  loc_B53C96: ILdRf var_90
  loc_B53C99: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53C9E: FMemLdR4 arg_8(12)
  loc_B53CA3: LitStr "PrintAfterSavingPrinter"
  loc_B53CA6: ILdRf var_90
  loc_B53CA9: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53CAE: LitStr "0"
  loc_B53CB1: LitStr "PrintAfterSavingQueryUser"
  loc_B53CB4: ILdRf var_90
  loc_B53CB7: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53CBC: LitStr "0"
  loc_B53CBF: LitStr "PrintAfterSavingTumble"
  loc_B53CC2: ILdRf var_90
  loc_B53CC5: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53CCA: LitStr "0"
  loc_B53CCD: LitStr "PrinterStop"
  loc_B53CD0: ILdRf var_90
  loc_B53CD3: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53CD8: LitStr "3"
  loc_B53CDB: LitStr "ProcessPriority"
  loc_B53CDE: ILdRf var_90
  loc_B53CE1: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53CE6: LitStr "MS Sans Serif"
  loc_B53CE9: LitStr "ProgramFont"
  loc_B53CEC: ILdRf var_90
  loc_B53CEF: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53CF4: LitStr "0"
  loc_B53CF7: LitStr "ProgramFontCharset"
  loc_B53CFA: ILdRf var_90
  loc_B53CFD: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53D02: LitStr "8"
  loc_B53D05: LitStr "ProgramFontSize"
  loc_B53D08: ILdRf var_90
  loc_B53D0B: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53D10: LitStr "1"
  loc_B53D13: LitStr "RemoveAllKnownFileExtensions"
  loc_B53D16: ILdRf var_90
  loc_B53D19: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53D1E: LitStr "1"
  loc_B53D21: LitStr "RemoveSpaces"
  loc_B53D24: ILdRf var_90
  loc_B53D27: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53D2C: LitStr "0"
  loc_B53D2F: LitStr "RunProgramAfterSaving"
  loc_B53D32: ILdRf var_90
  loc_B53D35: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53D3A: LitStr "del"
  loc_B53D3D: LitStr "RunProgramAfterSavingProgramname"
  loc_B53D40: ILdRf var_90
  loc_B53D43: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53D48: LitStr """<OutputFilename>"""
  loc_B53D4B: LitStr "RunProgramAfterSavingProgramParameters"
  loc_B53D4E: ILdRf var_90
  loc_B53D51: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53D56: LitStr "1"
  loc_B53D59: LitStr "RunProgramAfterSavingWaitUntilReady"
  loc_B53D5C: ILdRf var_90
  loc_B53D5F: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53D64: LitStr "1"
  loc_B53D67: LitStr "RunProgramAfterSavingWindowstyle"
  loc_B53D6A: ILdRf var_90
  loc_B53D6D: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53D72: LitStr "0"
  loc_B53D75: LitStr "RunProgramBeforeSaving"
  loc_B53D78: ILdRf var_90
  loc_B53D7B: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53D80: LitStr vbNullString
  loc_B53D83: LitStr "RunProgramBeforeSavingProgramname"
  loc_B53D86: ILdRf var_90
  loc_B53D89: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53D8E: LitStr """<TempFilename>"""
  loc_B53D91: LitStr "RunProgramBeforeSavingProgramParameters"
  loc_B53D94: ILdRf var_90
  loc_B53D97: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53D9C: LitStr "1"
  loc_B53D9F: LitStr "RunProgramBeforeSavingWindowstyle"
  loc_B53DA2: ILdRf var_90
  loc_B53DA5: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53DAA: LitStr "print"
  loc_B53DAD: LitStr "SaveFilename"
  loc_B53DB0: ILdRf var_90
  loc_B53DB3: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53DB8: LitStr "0"
  loc_B53DBB: LitStr "SendEmailAfterAutoSaving"
  loc_B53DBE: ILdRf var_90
  loc_B53DC1: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53DC6: LitStr "0"
  loc_B53DC9: LitStr "SendMailMethod"
  loc_B53DCC: ILdRf var_90
  loc_B53DCF: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53DD4: LitStr "1"
  loc_B53DD7: LitStr "ShowAnimation"
  loc_B53DDA: ILdRf var_90
  loc_B53DDD: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53DE2: LitStr "1"
  loc_B53DE5: LitStr "StartStandardProgram"
  loc_B53DE8: ILdRf var_90
  loc_B53DEB: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53DF0: LitStr "1"
  loc_B53DF3: LitStr "Toolbars"
  loc_B53DF6: ILdRf var_90
  loc_B53DF9: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53DFE: LitStr "1"
  loc_B53E01: LitStr "UseAutosave"
  loc_B53E04: ILdRf var_90
  loc_B53E07: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53E0C: LitStr "1"
  loc_B53E0F: LitStr "UseAutosaveDirectory"
  loc_B53E12: ILdRf var_90
  loc_B53E15: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B53E1A: LitNothing
  loc_B53E1C: CastAd
  loc_B53E1F: FStAdFunc var_8C
  loc_B53E22: ExitProc
End Function

Private Function Proc_57_20_B45944() 'B45944
  'Data Table: 437A14
  loc_B455D0: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Printing\"
  loc_B455D3: FStStrCopy var_8C
  loc_B455D6: LitStr vbNullString
  loc_B455D9: LitStr "StandardAuthor"
  loc_B455DC: ILdRf var_8C
  loc_B455DF: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B455E4: LitStr "0"
  loc_B455E7: LitStr "UseStandardAuthor"
  loc_B455EA: ILdRf var_8C
  loc_B455ED: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B455F2: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Printing\Formats\PDF\Security\"
  loc_B455F5: FStStrCopy var_8C
  loc_B455F8: LitStr "0"
  loc_B455FB: LitStr "PDFAllowDegradedPrinting"
  loc_B455FE: ILdRf var_8C
  loc_B45601: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45606: LitStr "0"
  loc_B45609: LitStr "PDFAllowScreenReaders"
  loc_B4560C: ILdRf var_8C
  loc_B4560F: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45614: LitStr "0"
  loc_B45617: LitStr "PDFDisallowModifyAnnotations"
  loc_B4561A: ILdRf var_8C
  loc_B4561D: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45622: LitStr "0"
  loc_B45625: LitStr "PDFDisallowModifyContents"
  loc_B45628: ILdRf var_8C
  loc_B4562B: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45630: LitStr "0"
  loc_B45633: LitStr "PDFDisallowPrinting"
  loc_B45636: ILdRf var_8C
  loc_B45639: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B4563E: LitStr "0"
  loc_B45641: LitStr "PDFHighEncryption"
  loc_B45644: ILdRf var_8C
  loc_B45647: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B4564C: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Program\"
  loc_B4564F: FStStrCopy var_8C
  loc_B45652: LitStr "<MyFiles>\"
  loc_B45655: LitStr "AutosaveDirectory"
  loc_B45658: ILdRf var_8C
  loc_B4565B: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45660: LitStr "<MyFiles>\"
  loc_B45663: LitStr "LastsaveDirectory"
  loc_B45666: ILdRf var_8C
  loc_B45669: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B4566E: LitStr "spanish"
  loc_B45671: LitStr "Language"
  loc_B45674: ILdRf var_8C
  loc_B45677: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B4567C: LitStr "<Temp>PDFCreator\"
  loc_B4567F: LitStr "PrinterTemppath"
  loc_B45682: ILdRf var_8C
  loc_B45685: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B4568A: LitStr vbNullString
  loc_B4568D: LitStr "AdditionalGhostscriptParameters"
  loc_B45690: ILdRf var_8C
  loc_B45693: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45698: LitStr vbNullString
  loc_B4569B: LitStr "AdditionalGhostscriptSearchpath"
  loc_B4569E: ILdRf var_8C
  loc_B456A1: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B456A6: LitStr "1"
  loc_B456A9: LitStr "AddWindowsFontpath"
  loc_B456AC: ILdRf var_8C
  loc_B456AF: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B456B4: LitStr "<DateTime>"
  loc_B456B7: LitStr "AutosaveFilename"
  loc_B456BA: ILdRf var_8C
  loc_B456BD: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B456C2: LitStr "0"
  loc_B456C5: LitStr "AutosaveFormat"
  loc_B456C8: ILdRf var_8C
  loc_B456CB: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B456D0: LitStr "0"
  loc_B456D3: LitStr "AutosaveStartStandardProgram"
  loc_B456D6: ILdRf var_8C
  loc_B456D9: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B456DE: LitStr "0"
  loc_B456E1: LitStr "ClientComputerResolveIPAddress"
  loc_B456E4: ILdRf var_8C
  loc_B456E7: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B456EC: LitStr "0"
  loc_B456EF: LitStr "DisableEmail"
  loc_B456F2: ILdRf var_8C
  loc_B456F5: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B456FA: LitStr "0"
  loc_B456FD: LitStr "DontUseDocumentSettings"
  loc_B45700: ILdRf var_8C
  loc_B45703: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45708: LitStr "Microsoft Word - |\.doc|\Microsoft Excel - |\.xls|\Microsoft PowerPoint - |\.ppt|"
  loc_B4570B: LitStr "FilenameSubstitutions"
  loc_B4570E: ILdRf var_8C
  loc_B45711: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45716: LitStr "1"
  loc_B45719: LitStr "FilenameSubstitutionsOnlyInTitle"
  loc_B4571C: ILdRf var_8C
  loc_B4571F: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45724: LitStr "0"
  loc_B45727: LitStr "Logging"
  loc_B4572A: ILdRf var_8C
  loc_B4572D: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45732: LitStr "100"
  loc_B45735: LitStr "LogLines"
  loc_B45738: ILdRf var_8C
  loc_B4573B: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45740: LitStr "0"
  loc_B45743: LitStr "NoConfirmMessageSwitchingDefaultprinter"
  loc_B45746: ILdRf var_8C
  loc_B45749: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B4574E: LitStr "0"
  loc_B45751: LitStr "NoProcessingAtStartup"
  loc_B45754: ILdRf var_8C
  loc_B45757: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B4575C: LitStr "0"
  loc_B4575F: LitStr "NoPSCheck"
  loc_B45762: ILdRf var_8C
  loc_B45765: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B4576A: LitStr "0"
  loc_B4576D: LitStr "OptionsDesign"
  loc_B45770: ILdRf var_8C
  loc_B45773: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45778: LitStr "1"
  loc_B4577B: LitStr "OptionsEnabled"
  loc_B4577E: ILdRf var_8C
  loc_B45781: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45786: LitStr "1"
  loc_B45789: LitStr "OptionsVisible"
  loc_B4578C: ILdRf var_8C
  loc_B4578F: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45794: LitStr "0"
  loc_B45797: LitStr "PrintAfterSaving"
  loc_B4579A: ILdRf var_8C
  loc_B4579D: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B457A2: LitStr "0"
  loc_B457A5: LitStr "PrintAfterSavingDuplex"
  loc_B457A8: ILdRf var_8C
  loc_B457AB: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B457B0: LitStr "0"
  loc_B457B3: LitStr "PrintAfterSavingNoCancel"
  loc_B457B6: ILdRf var_8C
  loc_B457B9: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B457BE: LitStr vbNullString
  loc_B457C1: LitStr "PrintAfterSavingPrinter"
  loc_B457C4: ILdRf var_8C
  loc_B457C7: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B457CC: LitStr "0"
  loc_B457CF: LitStr "PrintAfterSavingQueryUser"
  loc_B457D2: ILdRf var_8C
  loc_B457D5: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B457DA: LitStr "0"
  loc_B457DD: LitStr "PrintAfterSavingTumble"
  loc_B457E0: ILdRf var_8C
  loc_B457E3: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B457E8: LitStr "0"
  loc_B457EB: LitStr "PrinterStop"
  loc_B457EE: ILdRf var_8C
  loc_B457F1: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B457F6: LitStr "1"
  loc_B457F9: LitStr "ProcessPriority"
  loc_B457FC: ILdRf var_8C
  loc_B457FF: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45804: LitStr "MS Sans Serif"
  loc_B45807: LitStr "ProgramFont"
  loc_B4580A: ILdRf var_8C
  loc_B4580D: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45812: LitStr "0"
  loc_B45815: LitStr "ProgramFontCharset"
  loc_B45818: ILdRf var_8C
  loc_B4581B: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45820: LitStr "8"
  loc_B45823: LitStr "ProgramFontSize"
  loc_B45826: ILdRf var_8C
  loc_B45829: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B4582E: LitStr "1"
  loc_B45831: LitStr "RemoveAllKnownFileExtensions"
  loc_B45834: ILdRf var_8C
  loc_B45837: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B4583C: LitStr "1"
  loc_B4583F: LitStr "RemoveSpaces"
  loc_B45842: ILdRf var_8C
  loc_B45845: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B4584A: LitStr "0"
  loc_B4584D: LitStr "RunProgramAfterSaving"
  loc_B45850: ILdRf var_8C
  loc_B45853: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45858: LitStr vbNullString
  loc_B4585B: LitStr "RunProgramAfterSavingProgramname"
  loc_B4585E: ILdRf var_8C
  loc_B45861: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45866: LitStr """<OutputFilename>"""
  loc_B45869: LitStr "RunProgramAfterSavingProgramParameters"
  loc_B4586C: ILdRf var_8C
  loc_B4586F: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45874: LitStr "1"
  loc_B45877: LitStr "RunProgramAfterSavingWaitUntilReady"
  loc_B4587A: ILdRf var_8C
  loc_B4587D: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45882: LitStr "1"
  loc_B45885: LitStr "RunProgramAfterSavingWindowstyle"
  loc_B45888: ILdRf var_8C
  loc_B4588B: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45890: LitStr "0"
  loc_B45893: LitStr "RunProgramBeforeSaving"
  loc_B45896: ILdRf var_8C
  loc_B45899: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B4589E: LitStr vbNullString
  loc_B458A1: LitStr "RunProgramBeforeSavingProgramname"
  loc_B458A4: ILdRf var_8C
  loc_B458A7: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B458AC: LitStr """<TempFilename>"""
  loc_B458AF: LitStr "RunProgramBeforeSavingProgramParameters"
  loc_B458B2: ILdRf var_8C
  loc_B458B5: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B458BA: LitStr "1"
  loc_B458BD: LitStr "RunProgramBeforeSavingWindowstyle"
  loc_B458C0: ILdRf var_8C
  loc_B458C3: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B458C8: LitStr "<Title>"
  loc_B458CB: LitStr "SaveFilename"
  loc_B458CE: ILdRf var_8C
  loc_B458D1: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B458D6: LitStr "0"
  loc_B458D9: LitStr "SendEmailAfterAutoSaving"
  loc_B458DC: ILdRf var_8C
  loc_B458DF: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B458E4: LitStr "0"
  loc_B458E7: LitStr "SendMailMethod"
  loc_B458EA: ILdRf var_8C
  loc_B458ED: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B458F2: LitStr "1"
  loc_B458F5: LitStr "ShowAnimation"
  loc_B458F8: ILdRf var_8C
  loc_B458FB: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45900: LitStr "1"
  loc_B45903: LitStr "StartStandardProgram"
  loc_B45906: ILdRf var_8C
  loc_B45909: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B4590E: LitStr "1"
  loc_B45911: LitStr "Toolbars"
  loc_B45914: ILdRf var_8C
  loc_B45917: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B4591C: LitStr "0"
  loc_B4591F: LitStr "UseAutosave"
  loc_B45922: ILdRf var_8C
  loc_B45925: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B4592A: LitStr "1"
  loc_B4592D: LitStr "UseAutosaveDirectory"
  loc_B45930: ILdRf var_8C
  loc_B45933: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_B45938: LitNothing
  loc_B4593A: CastAd
  loc_B4593D: FStAdFunc var_88
  loc_B45940: ExitProc
End Function

Private Function Proc_57_21_AB0AF4() 'AB0AF4
  'Data Table: 437A14
  loc_AB0A24: LitStr "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\PageSetup\"
  loc_AB0A27: FStStrCopy var_88
  loc_AB0A2A: LitStr vbNullString
  loc_AB0A2D: LitStr "header"
  loc_AB0A30: ILdRf var_88
  loc_AB0A33: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_AB0A38: LitVarStr var_BC, vbNullString
  loc_AB0A3D: FStVarCopyObj var_CC
  loc_AB0A40: FLdRfVar var_CC
  loc_AB0A43: LitStr "Usuario: "
  loc_AB0A46: ImpAdLdI4 MemVar_D9302C
  loc_AB0A49: ConcatStr
  loc_AB0A4A: FStStrNoPop var_8C
  loc_AB0A4D: LitStr "&b&d   &t&b&p/&P"
  loc_AB0A50: ConcatStr
  loc_AB0A51: CVarStr var_AC
  loc_AB0A54: FMemLdRf  = Proc_57_8_A3B3D8()
  loc_AB0A59: CVarRef
  loc_AB0A5E: FLdRfVar var_DC
  loc_AB0A61: ImpAdCallFPR4  = IIf(, , )
  loc_AB0A66: FLdRfVar var_DC
  loc_AB0A69: CStrVarVal var_E0
  loc_AB0A6D: LitStr "footer"
  loc_AB0A70: ILdRf var_88
  loc_AB0A73: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_AB0A78: FFreeStr var_8C = ""
  loc_AB0A7F: FFreeVar var_AC = "": var_CC = ""
  loc_AB0A88: LitStr "0.25000"
  loc_AB0A8B: LitStr "margin_bottom"
  loc_AB0A8E: ILdRf var_88
  loc_AB0A91: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_AB0A96: LitStr "0.25000"
  loc_AB0A99: LitStr "margin_left"
  loc_AB0A9C: ILdRf var_88
  loc_AB0A9F: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_AB0AA4: LitStr "0.39370"
  loc_AB0AA7: LitStr "margin_right"
  loc_AB0AAA: ILdRf var_88
  loc_AB0AAD: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_AB0AB2: LitStr "0.25000"
  loc_AB0AB5: LitStr "margin_top"
  loc_AB0AB8: ILdRf var_88
  loc_AB0ABB: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_AB0AC0: LitStr "9"
  loc_AB0AC3: LitStr "paper_size"
  loc_AB0AC6: ILdRf var_88
  loc_AB0AC9: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_AB0ACE: LitStr "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\"
  loc_AB0AD1: FStStrCopy var_88
  loc_AB0AD4: LitStr "yes"
  loc_AB0AD7: LitStr "Print_Background"
  loc_AB0ADA: ILdRf var_88
  loc_AB0ADD: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_AB0AE2: LitStr "no"
  loc_AB0AE5: LitStr "AlwaysUseDefaultPrinter"
  loc_AB0AE8: ILdRf var_88
  loc_AB0AEB: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_AB0AF0: ExitProc
  loc_AB0AF1: ImpAdLdFPR4 MemVar_0
End Function

Private Function Proc_57_22_A883E4() 'A883E4
  'Data Table: 437A14
  loc_A88348: LitStr "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\PageSetup\"
  loc_A8834B: FStStrCopy var_88
  loc_A8834E: LitStr "&w&bPágina &p de &P"
  loc_A88351: LitStr "header"
  loc_A88354: ILdRf var_88
  loc_A88357: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A8835C: LitStr "&u&b&d"
  loc_A8835F: LitStr "footer"
  loc_A88362: ILdRf var_88
  loc_A88365: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A8836A: LitStr "0.59055"
  loc_A8836D: LitStr "margin_bottom"
  loc_A88370: ILdRf var_88
  loc_A88373: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A88378: LitStr "0.59055"
  loc_A8837B: LitStr "margin_left"
  loc_A8837E: ILdRf var_88
  loc_A88381: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A88386: LitStr "0.59055"
  loc_A88389: LitStr "margin_right"
  loc_A8838C: ILdRf var_88
  loc_A8838F: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A88394: LitStr "0.59055"
  loc_A88397: LitStr "margin_top"
  loc_A8839A: ILdRf var_88
  loc_A8839D: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A883A2: FMemLdR4 arg_8(12)
  loc_A883A7: LitStr "printer"
  loc_A883AA: ILdRf var_88
  loc_A883AD: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A883B2: LitStr "9"
  loc_A883B5: LitStr "paper_size"
  loc_A883B8: ILdRf var_88
  loc_A883BB: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A883C0: LitStr "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\"
  loc_A883C3: FStStrCopy var_88
  loc_A883C6: LitStr "yes"
  loc_A883C9: LitStr "Print_Background"
  loc_A883CC: ILdRf var_88
  loc_A883CF: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A883D4: LitStr "yes"
  loc_A883D7: LitStr "AlwaysUseDefaultPrinter"
  loc_A883DA: ILdRf var_88
  loc_A883DD: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A883E2: ExitProc
End Function

Private Function Proc_57_23_A88228(arg_C, arg_10, arg_14) 'A88228
  'Data Table: 437A14
  loc_A881A8: ILdRf arg_C
  loc_A881AB: FStStrCopy var_88
  loc_A881AE: ILdRf arg_10
  loc_A881B1: FStStrCopy var_8C
  loc_A881B4: ILdRf arg_14
  loc_A881B7: FStStrCopy var_90
  loc_A881BA: LitI4 0
  loc_A881BF: LitStr "wscript.shell"
  loc_A881C2: FLdRfVar var_A8
  loc_A881C5: ImpAdCallFPR4  = CreateObject(, )
  loc_A881CA: FLdRfVar var_A8
  loc_A881CD: CAdVar
  loc_A881CF: FStAd var_94 
  loc_A881D3: FFree1Var var_A8 = ""
  loc_A881D6: ILdRf var_88
  loc_A881D9: ILdRf var_8C
  loc_A881DC: ConcatStr
  loc_A881DD: CVarStr var_A8
  loc_A881E0: PopAdLdVar
  loc_A881E1: FLdRfVar var_90
  loc_A881E4: CDargRef
  loc_A881E8: FLdPr var_94
  loc_A881EB: LateMemCall
  loc_A881F1: FFree1Var var_A8 = ""
  loc_A881F4: ILdRf var_88
  loc_A881F7: ILdRf var_8C
  loc_A881FA: ConcatStr
  loc_A881FB: CVarStr var_A8
  loc_A881FE: PopAdLdVar
  loc_A881FF: FLdPr var_94
  loc_A88202: LateMemCallLdVar var_D8, .RegRead
  loc_A8820A: ILdRf var_90
  loc_A8820D: CVarStr var_C8
  loc_A88210: HardType
  loc_A88211: NeVarBool
  loc_A88213: FFreeVar var_A8 = ""
  loc_A8821A: BranchF loc_A88225
  loc_A8821D: ImpAdCallFPR4 DoEvents()
  loc_A88222: Branch loc_A881F4
  loc_A88225: ExitProc
End Function

Private Function Proc_57_24_A3BDA0(arg_10) 'A3BDA0
  'Data Table: 437A14
  loc_A3BD5E: ILdRf arg_10
  loc_A3BD61: FStStrCopy var_98
  loc_A3BD66: On Error Resume Next
  loc_A3BD6B: LitI4 0
  loc_A3BD70: LitStr "wscript.shell"
  loc_A3BD73: FLdRfVar var_AC
  loc_A3BD76: ImpAdCallFPR4  = CreateObject(, )
  loc_A3BD7B: FLdRfVar var_AC
  loc_A3BD7E: CAdVar
  loc_A3BD80: FStAd var_9C 
  loc_A3BD84: FFree1Var var_AC = ""
  loc_A3BD89: FLdRfVar var_98
  loc_A3BD8C: CDargRef
  loc_A3BD90: FLdPr var_9C
  loc_A3BD93: LateMemCall
  loc_A3BD9B: ExitProcCb
End Function

Private Function Proc_57_25_A824CC(arg_C, arg_10) 'A824CC
  'Data Table: 437A14
  loc_A82454: ILdRf arg_C
  loc_A82457: FStStrCopy var_8C
  loc_A8245A: ILdRf arg_10
  loc_A8245D: FStStrCopy var_90
  loc_A82460: OnErrorGoto loc_A824A1
  loc_A82463: LitI4 0
  loc_A82468: LitStr "wscript.shell"
  loc_A8246B: FLdRfVar var_A8
  loc_A8246E: ImpAdCallFPR4  = CreateObject(, )
  loc_A82473: FLdRfVar var_A8
  loc_A82476: CAdVar
  loc_A82478: FStAd var_94 
  loc_A8247C: FFree1Var var_A8 = ""
  loc_A8247F: ILdRf var_8C
  loc_A82482: ILdRf var_90
  loc_A82485: ConcatStr
  loc_A82486: CVarStr var_A8
  loc_A82489: PopAdLdVar
  loc_A8248A: FLdPr var_94
  loc_A8248D: LateMemCallLdVar var_C8, .RegRead
  loc_A82495: CStrVarTmp
  loc_A82496: FStStr var_88
  loc_A82499: FFreeVar var_A8 = ""
  loc_A824A0: ExitProc
  loc_A824A1: FLdRfVar var_D0
  loc_A824A4: ImpAdCallI2 Err 'rtcErrObj
  loc_A824A9: FStAdFunc var_CC
  loc_A824AC: FLdPr var_CC
  loc_A824AF:  = Err.Number
  loc_A824B4: ILdRf var_D0
  loc_A824B7: LitI4 -2147024894
  loc_A824BC: EqI4
  loc_A824BD: FFree1Ad var_CC
  loc_A824C0: BranchF loc_A824C9
  loc_A824C3: LitStr vbNullString
  loc_A824C6: FStStrCopy var_88
  loc_A824C9: ExitProc
End Function

Private Function Proc_57_26_AF6048(arg_C, arg_10, arg_14, arg_18) 'AF6048
  'Data Table: 437A14
  loc_AF5EA4: ILdRf arg_C
  loc_AF5EA7: FStAd var_8C 
  loc_AF5EAB: ILdRf arg_10
  loc_AF5EAE: FStStrCopy var_90
  loc_AF5EB1: ILdRf arg_14
  loc_AF5EB4: FStStrCopy var_94
  loc_AF5EB7: LitI4 1
  loc_AF5EBC: LitI4 1
  loc_AF5EC1: LitVarStr var_B4, "00000000"
  loc_AF5EC6: FStVarCopyObj var_C4
  loc_AF5EC9: FLdRfVar var_C4
  loc_AF5ECC: FLdRfVar var_90
  loc_AF5ECF: CVarRef
  loc_AF5ED4: ImpAdCallI2 Format$(, )
  loc_AF5ED9: FStStrNoPop var_C8
  loc_AF5EDC: ILdRf var_94
  loc_AF5EDF: ConcatStr
  loc_AF5EE0: FStStr var_88
  loc_AF5EE3: FFree1Str var_C8
  loc_AF5EE6: FFree1Var var_C4 = ""
  loc_AF5EE9: FLdI2 arg_18
  loc_AF5EEC: BranchF loc_AF6045
  loc_AF5EEF: FLdRfVar var_C8
  loc_AF5EF2: FMemLdR4 arg_8(0)
  loc_AF5EF7: FLdRfVar var_D4
  loc_AF5EFA: NewIfNullPr IFileSystem3
  loc_AF5EFD: from_stack_2 = IFileSystem3.IFileSystem.GetParentFolderName(from_stack_1v)
  loc_AF5F02: FLdRfVar var_E0
  loc_AF5F05: LitStr "CT"
  loc_AF5F08: ILdRf var_88
  loc_AF5F0B: ConcatStr
  loc_AF5F0C: FStStrNoPop var_D8
  loc_AF5F0F: LitStr ".gif"
  loc_AF5F12: ConcatStr
  loc_AF5F13: FStStrNoPop var_DC
  loc_AF5F16: ILdRf var_C8
  loc_AF5F19: FLdRfVar var_D4
  loc_AF5F1C: NewIfNullPr IFileSystem3
  loc_AF5F1F: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_AF5F24: FLdZeroAd var_E0
  loc_AF5F27: FStStr var_D0
  loc_AF5F2A: FFreeStr var_D8 = "": var_C8 = ""
  loc_AF5F33: ILdRf var_8C
  loc_AF5F36: FStAd var_E4 
  loc_AF5F3A: LitVar_FALSE
  loc_AF5F3E: PopAdLdVar
  loc_AF5F3F: FLdPr var_E4
  loc_AF5F42: LateIdSt
  loc_AF5F47: ILdRf var_88
  loc_AF5F4A: CVarStr var_A4
  loc_AF5F4D: PopAdLdVar
  loc_AF5F4E: FLdPr var_E4
  loc_AF5F51: LateIdSt
  loc_AF5F56: LitVarI4
  loc_AF5F5E: PopAdLdVar
  loc_AF5F5F: FLdPr var_E4
  loc_AF5F62: LateIdSt
  loc_AF5F67: LitVarI2 var_A4, 6
  loc_AF5F6C: PopAdLdVar
  loc_AF5F6D: FLdPr var_E4
  loc_AF5F70: LateIdSt
  loc_AF5F75: LitVarI4
  loc_AF5F7D: PopAdLdVar
  loc_AF5F7E: FLdPr var_E4
  loc_AF5F81: LateIdSt
  loc_AF5F86: LitVarI2 var_A4, 7
  loc_AF5F8B: PopAdLdVar
  loc_AF5F8C: FLdPr var_E4
  loc_AF5F8F: LateIdSt
  loc_AF5F94: LitVarI2 var_A4, 20
  loc_AF5F99: PopAdLdVar
  loc_AF5F9A: FLdPr var_E4
  loc_AF5F9D: LateIdSt
  loc_AF5FA2: LitVarI2 var_A4, 7
  loc_AF5FA7: PopAdLdVar
  loc_AF5FA8: FLdPr var_E4
  loc_AF5FAB: LateIdSt
  loc_AF5FB0: LitVarI2 var_A4, 20
  loc_AF5FB5: PopAdLdVar
  loc_AF5FB6: FLdPr var_E4
  loc_AF5FB9: LateIdSt
  loc_AF5FBE: FLdRfVar var_E6
  loc_AF5FC1: ILdRf var_D0
  loc_AF5FC4: FLdRfVar var_D4
  loc_AF5FC7: NewIfNullPr IFileSystem3
  loc_AF5FCA: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_AF5FCF: FLdI2 var_E6
  loc_AF5FD2: BranchF loc_AF6004
  loc_AF5FD5: LitI2_Byte &HFF
  loc_AF5FD7: ILdRf var_D0
  loc_AF5FDA: FLdRfVar var_D4
  loc_AF5FDD: NewIfNullPr IFileSystem3
  loc_AF5FE0: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_AF5FE5: FLdRfVar var_E6
  loc_AF5FE8: ILdRf var_D0
  loc_AF5FEB: FLdRfVar var_D4
  loc_AF5FEE: NewIfNullPr IFileSystem3
  loc_AF5FF1: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_AF5FF6: FLdI2 var_E6
  loc_AF5FF9: BranchF loc_AF6004
  loc_AF5FFC: ImpAdCallFPR4 DoEvents()
  loc_AF6001: Branch loc_AF5FE5
  loc_AF6004: FLdRfVar var_D0
  loc_AF6007: CDargRef
  loc_AF600B: FLdPr var_E4
  loc_AF600E: LateIdCallLdVar
  loc_AF6018: CI2Var
  loc_AF6019: FStI2 var_CA
  loc_AF601C: FFree1Var var_C4 = ""
  loc_AF601F: FLdRfVar var_E6
  loc_AF6022: ILdRf var_D0
  loc_AF6025: FLdRfVar var_D4
  loc_AF6028: NewIfNullPr IFileSystem3
  loc_AF602B: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_AF6030: FLdI2 var_E6
  loc_AF6033: NotI4
  loc_AF6034: BranchF loc_AF603F
  loc_AF6037: ImpAdCallFPR4 DoEvents()
  loc_AF603C: Branch loc_AF601F
  loc_AF603F: LitNothing
  loc_AF6041: FStAd var_E4 
  loc_AF6045: ExitProc
  loc_AF6046: FLdFPR8 var_2400
End Function

Private Function Proc_57_27_A96F6C(arg_C, arg_10) 'A96F6C
  'Data Table: 437A14
  loc_A96EF8: ILdRf arg_C
  loc_A96EFB: FStStrCopy var_8C
  loc_A96EFE: ILdRf arg_10
  loc_A96F01: FStStrCopy var_90
  loc_A96F04: LitI4 1
  loc_A96F09: LitI4 1
  loc_A96F0E: LitVarStr var_CC, "00000000"
  loc_A96F13: FStVarCopyObj var_DC
  loc_A96F16: FLdRfVar var_DC
  loc_A96F19: FLdRfVar var_8C
  loc_A96F1C: CVarRef
  loc_A96F21: ImpAdCallI2 Format$(, )
  loc_A96F26: FStStrNoPop var_E0
  loc_A96F29: ILdRf var_90
  loc_A96F2C: ConcatStr
  loc_A96F2D: FStStrNoPop var_E4
  loc_A96F30: LitI4 0
  loc_A96F35: FLdRfVar var_A8
  loc_A96F38: Ary1StStrCopy
  loc_A96F39: FFreeStr var_E0 = ""
  loc_A96F40: FFree1Var var_DC = ""
  loc_A96F43: LitI4 0
  loc_A96F48: FLdRfVar var_A8
  loc_A96F4B: Ary1LdI4
  loc_A96F4C: ImpAdCallI2 Proc_57_51_B5F020()
  loc_A96F51: FStStrNoPop var_E0
  loc_A96F54: LitI4 1
  loc_A96F59: FLdRfVar var_A8
  loc_A96F5C: Ary1StStrCopy
  loc_A96F5D: FFree1Str var_E0
  loc_A96F60: FLdRfVar var_A8
  loc_A96F63: PopTmpLdAdStr var_E8
  loc_A96F66: FLdRfVar var_88
  loc_A96F69: StAryCopy
  loc_A96F6B: ExitProc
End Function

Private Function Proc_57_28_A0A168(arg_C, arg_10) 'A0A168
  'Data Table: 437A14
  loc_A0A148: ILdRf arg_C
  loc_A0A14B: FStStrCopy var_8C
  loc_A0A14E: ILdRf arg_10
  loc_A0A151: FStStrCopy var_90
  loc_A0A154: ILdRf var_90
  loc_A0A157: ILdRf var_8C
  loc_A0A15A: ImpAdCallI2 Proc_57_27_A96F6C(, )
  loc_A0A15F: PopTmpLdAdStr var_98
  loc_A0A162: FLdRfVar var_88
  loc_A0A165: StAryMove
  loc_A0A167: ExitProc
End Function

Private Function Proc_57_29_AF8500(arg_C, arg_10, arg_14, arg_18) 'AF8500
  'Data Table: 437A14
  loc_AF8350: ILdRf arg_C
  loc_AF8353: FStAd var_8C 
  loc_AF8357: ILdRf arg_10
  loc_AF835A: FStStrCopy var_90
  loc_AF835D: ILdRf arg_14
  loc_AF8360: FStStrCopy var_94
  loc_AF8363: LitI4 1
  loc_AF8368: LitI4 1
  loc_AF836D: LitVarStr var_B4, "00000000"
  loc_AF8372: FStVarCopyObj var_C4
  loc_AF8375: FLdRfVar var_C4
  loc_AF8378: FLdRfVar var_90
  loc_AF837B: CVarRef
  loc_AF8380: ImpAdCallI2 Format$(, )
  loc_AF8385: FStStrNoPop var_C8
  loc_AF8388: ILdRf var_94
  loc_AF838B: ConcatStr
  loc_AF838C: PopTmpLdAdStr
  loc_AF8390: ImpAdCallI2 Proc_211_0_B64A8C()
  loc_AF8395: FStStr var_88
  loc_AF8398: FFreeStr var_C8 = ""
  loc_AF839F: FFree1Var var_C4 = ""
  loc_AF83A2: FLdI2 arg_18
  loc_AF83A5: BranchF loc_AF84FE
  loc_AF83A8: FLdRfVar var_C8
  loc_AF83AB: FMemLdR4 arg_8(0)
  loc_AF83B0: FLdRfVar var_D8
  loc_AF83B3: NewIfNullPr IFileSystem3
  loc_AF83B6: from_stack_2 = IFileSystem3.IFileSystem.GetParentFolderName(from_stack_1v)
  loc_AF83BB: FLdRfVar var_E0
  loc_AF83BE: LitStr "CT"
  loc_AF83C1: ILdRf var_88
  loc_AF83C4: ConcatStr
  loc_AF83C5: FStStrNoPop var_CC
  loc_AF83C8: LitStr ".gif"
  loc_AF83CB: ConcatStr
  loc_AF83CC: FStStrNoPop var_DC
  loc_AF83CF: ILdRf var_C8
  loc_AF83D2: FLdRfVar var_D8
  loc_AF83D5: NewIfNullPr IFileSystem3
  loc_AF83D8: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_AF83DD: FLdZeroAd var_E0
  loc_AF83E0: FStStr var_D4
  loc_AF83E3: FFreeStr var_CC = "": var_C8 = ""
  loc_AF83EC: ILdRf var_8C
  loc_AF83EF: FStAd var_E4 
  loc_AF83F3: LitVar_FALSE
  loc_AF83F7: PopAdLdVar
  loc_AF83F8: FLdPr var_E4
  loc_AF83FB: LateIdSt
  loc_AF8400: ILdRf var_88
  loc_AF8403: CVarStr var_A4
  loc_AF8406: PopAdLdVar
  loc_AF8407: FLdPr var_E4
  loc_AF840A: LateIdSt
  loc_AF840F: LitVarI4
  loc_AF8417: PopAdLdVar
  loc_AF8418: FLdPr var_E4
  loc_AF841B: LateIdSt
  loc_AF8420: LitVarI2 var_A4, 6
  loc_AF8425: PopAdLdVar
  loc_AF8426: FLdPr var_E4
  loc_AF8429: LateIdSt
  loc_AF842E: LitVarI4
  loc_AF8436: PopAdLdVar
  loc_AF8437: FLdPr var_E4
  loc_AF843A: LateIdSt
  loc_AF843F: LitVarI2 var_A4, 7
  loc_AF8444: PopAdLdVar
  loc_AF8445: FLdPr var_E4
  loc_AF8448: LateIdSt
  loc_AF844D: LitVarI2 var_A4, 20
  loc_AF8452: PopAdLdVar
  loc_AF8453: FLdPr var_E4
  loc_AF8456: LateIdSt
  loc_AF845B: LitVarI2 var_A4, 7
  loc_AF8460: PopAdLdVar
  loc_AF8461: FLdPr var_E4
  loc_AF8464: LateIdSt
  loc_AF8469: LitVarI2 var_A4, 20
  loc_AF846E: PopAdLdVar
  loc_AF846F: FLdPr var_E4
  loc_AF8472: LateIdSt
  loc_AF8477: FLdRfVar var_E6
  loc_AF847A: ILdRf var_D4
  loc_AF847D: FLdRfVar var_D8
  loc_AF8480: NewIfNullPr IFileSystem3
  loc_AF8483: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_AF8488: FLdI2 var_E6
  loc_AF848B: BranchF loc_AF84BD
  loc_AF848E: LitI2_Byte &HFF
  loc_AF8490: ILdRf var_D4
  loc_AF8493: FLdRfVar var_D8
  loc_AF8496: NewIfNullPr IFileSystem3
  loc_AF8499: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_AF849E: FLdRfVar var_E6
  loc_AF84A1: ILdRf var_D4
  loc_AF84A4: FLdRfVar var_D8
  loc_AF84A7: NewIfNullPr IFileSystem3
  loc_AF84AA: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_AF84AF: FLdI2 var_E6
  loc_AF84B2: BranchF loc_AF84BD
  loc_AF84B5: ImpAdCallFPR4 DoEvents()
  loc_AF84BA: Branch loc_AF849E
  loc_AF84BD: FLdRfVar var_D4
  loc_AF84C0: CDargRef
  loc_AF84C4: FLdPr var_E4
  loc_AF84C7: LateIdCallLdVar
  loc_AF84D1: CI2Var
  loc_AF84D2: FStI2 var_CE
  loc_AF84D5: FFree1Var var_C4 = ""
  loc_AF84D8: FLdRfVar var_E6
  loc_AF84DB: ILdRf var_D4
  loc_AF84DE: FLdRfVar var_D8
  loc_AF84E1: NewIfNullPr IFileSystem3
  loc_AF84E4: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_AF84E9: FLdI2 var_E6
  loc_AF84EC: NotI4
  loc_AF84ED: BranchF loc_AF84F8
  loc_AF84F0: ImpAdCallFPR4 DoEvents()
  loc_AF84F5: Branch loc_AF84D8
  loc_AF84F8: LitNothing
  loc_AF84FA: FStAd var_E4 
  loc_AF84FE: ExitProc
End Function

Private Function Proc_57_30_AD8BC4(arg_C, arg_10, arg_14) 'AD8BC4
  'Data Table: 437A14
  loc_AD8AA8: ILdRf arg_C
  loc_AD8AAB: FStStrCopy var_8C
  loc_AD8AAE: ILdRf arg_10
  loc_AD8AB1: FStStrCopy var_90
  loc_AD8AB4: ILdRf arg_14
  loc_AD8AB7: FStStrCopy var_94
  loc_AD8ABA: LitI4 7
  loc_AD8ABF: FLdRfVar var_8C
  loc_AD8AC2: CVarRef
  loc_AD8AC7: FLdRfVar var_CC
  loc_AD8ACA: ImpAdCallFPR4  = Right(, )
  loc_AD8ACF: LitI4 1
  loc_AD8AD4: LitI4 1
  loc_AD8AD9: LitVarStr var_DC, "0000000"
  loc_AD8ADE: FStVarCopyObj var_EC
  loc_AD8AE1: FLdRfVar var_EC
  loc_AD8AE4: FLdRfVar var_CC
  loc_AD8AE7: FLdRfVar var_FC
  loc_AD8AEA: ImpAdCallFPR4  = Format(, )
  loc_AD8AEF: FLdRfVar var_FC
  loc_AD8AF2: CStrVarTmp
  loc_AD8AF3: FLdRfVar var_A2
  loc_AD8AF6: StFixedStrFree
  loc_AD8AFA: FFreeVar var_CC = "": var_EC = ""
  loc_AD8B03: LitI4 2
  loc_AD8B08: FLdRfVar var_90
  loc_AD8B0B: CVarRef
  loc_AD8B10: FLdRfVar var_CC
  loc_AD8B13: ImpAdCallFPR4  = Right(, )
  loc_AD8B18: FLdRfVar var_CC
  loc_AD8B1B: CStrVarTmp
  loc_AD8B1C: FLdRfVar var_A6
  loc_AD8B1F: StFixedStrFree
  loc_AD8B23: FFree1Var var_CC = ""
  loc_AD8B26: FLdRfVar var_94
  loc_AD8B29: CVarRef
  loc_AD8B2E: LitVarI2 var_CC, 0
  loc_AD8B33: ILdRf var_94
  loc_AD8B36: LitStr "7"
  loc_AD8B39: EqStr
  loc_AD8B3B: CVarBoolI2 var_BC
  loc_AD8B3F: FLdRfVar var_EC
  loc_AD8B42: ImpAdCallFPR4  = IIf(, , )
  loc_AD8B47: LitI4 1
  loc_AD8B4C: LitI4 1
  loc_AD8B51: LitVarStr var_11C, "00"
  loc_AD8B56: FStVarCopyObj var_FC
  loc_AD8B59: FLdRfVar var_FC
  loc_AD8B5C: FLdRfVar var_EC
  loc_AD8B5F: FLdRfVar var_12C
  loc_AD8B62: ImpAdCallFPR4  = Format(, )
  loc_AD8B67: FLdRfVar var_12C
  loc_AD8B6A: CStrVarTmp
  loc_AD8B6B: FLdRfVar var_AA
  loc_AD8B6E: StFixedStrFree
  loc_AD8B72: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_FC = ""
  loc_AD8B7F: FLdRfVar var_A2
  loc_AD8B82: LdFixedStr
  loc_AD8B85: FStStrNoPop var_130
  loc_AD8B88: LitStr "01"
  loc_AD8B8B: ConcatStr
  loc_AD8B8C: FStStrNoPop var_134
  loc_AD8B8F: FLdRfVar var_A6
  loc_AD8B92: LdFixedStr
  loc_AD8B95: FStStrNoPop var_138
  loc_AD8B98: ConcatStr
  loc_AD8B99: FStStrNoPop var_13C
  loc_AD8B9C: FLdRfVar var_AA
  loc_AD8B9F: LdFixedStr
  loc_AD8BA2: FStStrNoPop var_140
  loc_AD8BA5: ConcatStr
  loc_AD8BA6: PopTmpLdAdStr
  loc_AD8BAA: ImpAdCallI2 Proc_211_0_B64A8C()
  loc_AD8BAF: FStStr var_88
  loc_AD8BB2: FFreeStr var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_AD8BC1: ExitProc
End Function

Private Function Proc_57_31_AD91D4(arg_C, arg_10, arg_14) 'AD91D4
  'Data Table: 437A14
  loc_AD90B8: ILdRf arg_C
  loc_AD90BB: FStStrCopy var_8C
  loc_AD90BE: ILdRf arg_10
  loc_AD90C1: FStStrCopy var_90
  loc_AD90C4: ILdRf arg_14
  loc_AD90C7: FStStrCopy var_94
  loc_AD90CA: LitI4 7
  loc_AD90CF: FLdRfVar var_8C
  loc_AD90D2: CVarRef
  loc_AD90D7: FLdRfVar var_CC
  loc_AD90DA: ImpAdCallFPR4  = Right(, )
  loc_AD90DF: LitI4 1
  loc_AD90E4: LitI4 1
  loc_AD90E9: LitVarStr var_DC, "0000000"
  loc_AD90EE: FStVarCopyObj var_EC
  loc_AD90F1: FLdRfVar var_EC
  loc_AD90F4: FLdRfVar var_CC
  loc_AD90F7: FLdRfVar var_FC
  loc_AD90FA: ImpAdCallFPR4  = Format(, )
  loc_AD90FF: FLdRfVar var_FC
  loc_AD9102: CStrVarTmp
  loc_AD9103: FLdRfVar var_A2
  loc_AD9106: StFixedStrFree
  loc_AD910A: FFreeVar var_CC = "": var_EC = ""
  loc_AD9113: LitI4 2
  loc_AD9118: FLdRfVar var_90
  loc_AD911B: CVarRef
  loc_AD9120: FLdRfVar var_CC
  loc_AD9123: ImpAdCallFPR4  = Right(, )
  loc_AD9128: FLdRfVar var_CC
  loc_AD912B: CStrVarTmp
  loc_AD912C: FLdRfVar var_A6
  loc_AD912F: StFixedStrFree
  loc_AD9133: FFree1Var var_CC = ""
  loc_AD9136: FLdRfVar var_94
  loc_AD9139: CVarRef
  loc_AD913E: LitVarI2 var_CC, 0
  loc_AD9143: ILdRf var_94
  loc_AD9146: LitStr "7"
  loc_AD9149: EqStr
  loc_AD914B: CVarBoolI2 var_BC
  loc_AD914F: FLdRfVar var_EC
  loc_AD9152: ImpAdCallFPR4  = IIf(, , )
  loc_AD9157: LitI4 1
  loc_AD915C: LitI4 1
  loc_AD9161: LitVarStr var_11C, "00"
  loc_AD9166: FStVarCopyObj var_FC
  loc_AD9169: FLdRfVar var_FC
  loc_AD916C: FLdRfVar var_EC
  loc_AD916F: FLdRfVar var_12C
  loc_AD9172: ImpAdCallFPR4  = Format(, )
  loc_AD9177: FLdRfVar var_12C
  loc_AD917A: CStrVarTmp
  loc_AD917B: FLdRfVar var_AA
  loc_AD917E: StFixedStrFree
  loc_AD9182: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_FC = ""
  loc_AD918F: FLdRfVar var_A2
  loc_AD9192: LdFixedStr
  loc_AD9195: FStStrNoPop var_130
  loc_AD9198: LitStr "02"
  loc_AD919B: ConcatStr
  loc_AD919C: FStStrNoPop var_134
  loc_AD919F: FLdRfVar var_A6
  loc_AD91A2: LdFixedStr
  loc_AD91A5: FStStrNoPop var_138
  loc_AD91A8: ConcatStr
  loc_AD91A9: FStStrNoPop var_13C
  loc_AD91AC: FLdRfVar var_AA
  loc_AD91AF: LdFixedStr
  loc_AD91B2: FStStrNoPop var_140
  loc_AD91B5: ConcatStr
  loc_AD91B6: PopTmpLdAdStr
  loc_AD91BA: ImpAdCallI2 Proc_211_0_B64A8C()
  loc_AD91BF: FStStr var_88
  loc_AD91C2: FFreeStr var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_AD91D1: ExitProc
  loc_AD91D2: FLdRfVar var_23B8
End Function

Private Function Proc_57_32_AF0298(arg_C, arg_10, arg_14, arg_18) 'AF0298
  'Data Table: 437A14
  loc_AF012C: ILdRf arg_C
  loc_AF012F: FStStrCopy var_8C
  loc_AF0132: ILdRf arg_10
  loc_AF0135: FStStrCopy var_90
  loc_AF0138: ILdRf arg_14
  loc_AF013B: FStStrCopy var_94
  loc_AF013E: ILdRf arg_18
  loc_AF0141: FStStrCopy var_98
  loc_AF0144: LitI4 2
  loc_AF0149: FLdRfVar var_8C
  loc_AF014C: CVarRef
  loc_AF0151: FLdRfVar var_DC
  loc_AF0154: ImpAdCallFPR4  = Right(, )
  loc_AF0159: FLdRfVar var_DC
  loc_AF015C: CStrVarTmp
  loc_AF015D: FLdRfVar var_9C
  loc_AF0160: StFixedStrFree
  loc_AF0164: FFree1Var var_DC = ""
  loc_AF0167: FLdRfVar var_90
  loc_AF016A: CVarRef
  loc_AF016F: LitVarI2 var_DC, 0
  loc_AF0174: ILdRf var_90
  loc_AF0177: LitStr "7"
  loc_AF017A: EqStr
  loc_AF017C: CVarBoolI2 var_CC
  loc_AF0180: FLdRfVar var_10C
  loc_AF0183: ImpAdCallFPR4  = IIf(, , )
  loc_AF0188: LitI4 1
  loc_AF018D: LitI4 1
  loc_AF0192: LitVarStr var_11C, "00"
  loc_AF0197: FStVarCopyObj var_12C
  loc_AF019A: FLdRfVar var_12C
  loc_AF019D: FLdRfVar var_10C
  loc_AF01A0: FLdRfVar var_13C
  loc_AF01A3: ImpAdCallFPR4  = Format(, )
  loc_AF01A8: FLdRfVar var_13C
  loc_AF01AB: CStrVarTmp
  loc_AF01AC: FLdRfVar var_A0
  loc_AF01AF: StFixedStrFree
  loc_AF01B3: FFreeVar var_CC = "": var_DC = "": var_10C = "": var_12C = ""
  loc_AF01C0: LitI4 1
  loc_AF01C5: LitI4 1
  loc_AF01CA: LitVarStr var_EC, "000000"
  loc_AF01CF: FStVarCopyObj var_DC
  loc_AF01D2: FLdRfVar var_DC
  loc_AF01D5: FLdRfVar var_94
  loc_AF01D8: CVarRef
  loc_AF01DD: FLdRfVar var_10C
  loc_AF01E0: ImpAdCallFPR4  = Format(, )
  loc_AF01E5: FLdRfVar var_10C
  loc_AF01E8: CStrVarTmp
  loc_AF01E9: FLdRfVar var_AC
  loc_AF01EC: StFixedStrFree
  loc_AF01F0: FFreeVar var_DC = ""
  loc_AF01F7: FLdRfVar var_DC
  loc_AF01FA: FLdRfVar var_98
  loc_AF01FD: CVarRef
  loc_AF0202: ImpAdCallHresult  = CDec()
  loc_AF0207: LitI4 1
  loc_AF020C: LitI4 1
  loc_AF0211: LitVarStr var_FC, "00000000"
  loc_AF0216: FStVarCopyObj var_13C
  loc_AF0219: FLdRfVar var_13C
  loc_AF021C: FLdRfVar var_DC
  loc_AF021F: LitVarI2 var_EC, 100
  loc_AF0224: MulVar var_10C
  loc_AF0228: FStVar var_12C
  loc_AF022C: FLdRfVar var_12C
  loc_AF022F: FLdRfVar var_14C
  loc_AF0232: ImpAdCallFPR4  = Format(, )
  loc_AF0237: FLdRfVar var_14C
  loc_AF023A: CStrVarTmp
  loc_AF023B: FLdRfVar var_BC
  loc_AF023E: StFixedStrFree
  loc_AF0242: FFreeVar var_DC = "": var_12C = "": var_13C = ""
  loc_AF024D: FLdRfVar var_9C
  loc_AF0250: LdFixedStr
  loc_AF0253: FStStrNoPop var_150
  loc_AF0256: FLdRfVar var_A0
  loc_AF0259: LdFixedStr
  loc_AF025C: FStStrNoPop var_154
  loc_AF025F: ConcatStr
  loc_AF0260: FStStrNoPop var_158
  loc_AF0263: FLdRfVar var_AC
  loc_AF0266: LdFixedStr
  loc_AF0269: FStStrNoPop var_15C
  loc_AF026C: ConcatStr
  loc_AF026D: FStStrNoPop var_160
  loc_AF0270: FLdRfVar var_BC
  loc_AF0273: LdFixedStr
  loc_AF0276: FStStrNoPop var_164
  loc_AF0279: ConcatStr
  loc_AF027A: PopTmpLdAdStr
  loc_AF027E: ImpAdCallI2 Proc_211_0_B64A8C()
  loc_AF0283: FStStr var_88
  loc_AF0286: FFreeStr var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_AF0297: ExitProc
End Function

Private Function Proc_57_33_B22AC4(arg_C, arg_10, arg_14, arg_18) 'B22AC4
  'Data Table: 437A14
  loc_B22888: ILdRf arg_C
  loc_B2288B: FStStrCopy var_8C
  loc_B2288E: ILdRf arg_10
  loc_B22891: FStStrCopy var_90
  loc_B22894: FDupVar
  loc_B2289A: ILdRf arg_2C
  loc_B2289D: FStStrCopy var_A4
  loc_B228A0: LitI4 1
  loc_B228A5: LitI4 1
  loc_B228AA: LitVarStr var_130, "0000"
  loc_B228AF: FStVarCopyObj var_140
  loc_B228B2: FLdRfVar var_140
  loc_B228B5: FLdRfVar var_8C
  loc_B228B8: CVarRef
  loc_B228BD: FLdRfVar var_150
  loc_B228C0: ImpAdCallFPR4  = Format(, )
  loc_B228C5: FLdRfVar var_150
  loc_B228C8: CStrVarTmp
  loc_B228C9: FLdRfVar var_CC
  loc_B228CC: StFixedStrFree
  loc_B228D0: FFreeVar var_140 = ""
  loc_B228D7: LitI4 1
  loc_B228DC: LitI4 1
  loc_B228E1: LitVarStr var_130, "00000000"
  loc_B228E6: FStVarCopyObj var_140
  loc_B228E9: FLdRfVar var_140
  loc_B228EC: FLdRfVar var_90
  loc_B228EF: CVarRef
  loc_B228F4: FLdRfVar var_150
  loc_B228F7: ImpAdCallFPR4  = Format(, )
  loc_B228FC: FLdRfVar var_150
  loc_B228FF: CStrVarTmp
  loc_B22900: FLdRfVar var_DC
  loc_B22903: StFixedStrFree
  loc_B22907: FFreeVar var_140 = ""
  loc_B2290E: LitI4 1
  loc_B22913: LitI4 1
  loc_B22918: LitVarStr var_130, "00"
  loc_B2291D: FStVarCopyObj var_140
  loc_B22920: FLdRfVar var_140
  loc_B22923: FLdRfVar arg_14
  loc_B22926: CVarRef
  loc_B2292B: FLdRfVar var_150
  loc_B2292E: ImpAdCallFPR4  = Format(, )
  loc_B22933: FLdRfVar var_150
  loc_B22936: CStrVarTmp
  loc_B22937: FLdRfVar var_E0
  loc_B2293A: StFixedStrFree
  loc_B2293E: FFreeVar var_140 = ""
  loc_B22945: LitI4 1
  loc_B2294A: LitI4 1
  loc_B2294F: LitVarStr var_130, "000"
  loc_B22954: FStVarCopyObj var_140
  loc_B22957: FLdRfVar var_140
  loc_B2295A: FLdRfVar arg_18
  loc_B2295D: CVarRef
  loc_B22962: FLdRfVar var_150
  loc_B22965: ImpAdCallFPR4  = Format(, )
  loc_B2296A: FLdRfVar var_150
  loc_B2296D: CStrVarTmp
  loc_B2296E: FLdRfVar var_E6
  loc_B22971: StFixedStrFree
  loc_B22975: FFreeVar var_140 = ""
  loc_B2297C: LitI4 1
  loc_B22981: LitI4 1
  loc_B22986: LitVarStr var_130, "yyyymmdd"
  loc_B2298B: FStVarCopyObj var_150
  loc_B2298E: FLdRfVar var_150
  loc_B22991: FLdRfVar var_A0
  loc_B22994: FnCDateVar
  loc_B22996: CVarDate var_140
  loc_B2299A: FLdRfVar var_160
  loc_B2299D: ImpAdCallFPR4  = Format(, )
  loc_B229A2: FLdRfVar var_160
  loc_B229A5: CStrVarTmp
  loc_B229A6: FLdRfVar var_F6
  loc_B229A9: StFixedStrFree
  loc_B229AD: FFreeVar var_140 = "": var_150 = ""
  loc_B229B6: FLdRfVar var_140
  loc_B229B9: FLdRfVar var_A4
  loc_B229BC: CVarRef
  loc_B229C1: ImpAdCallHresult  = CDec()
  loc_B229C6: LitI4 1
  loc_B229CB: LitI4 1
  loc_B229D0: LitVarStr var_170, "000000000000"
  loc_B229D5: FStVarCopyObj var_180
  loc_B229D8: FLdRfVar var_180
  loc_B229DB: FLdRfVar var_140
  loc_B229DE: LitVarI2 var_130, 100
  loc_B229E3: MulVar var_150
  loc_B229E7: FStVar var_160
  loc_B229EB: FLdRfVar var_160
  loc_B229EE: FLdRfVar var_190
  loc_B229F1: ImpAdCallFPR4  = Format(, )
  loc_B229F6: FLdRfVar var_190
  loc_B229F9: CStrVarTmp
  loc_B229FA: FLdRfVar var_10E
  loc_B229FD: StFixedStrFree
  loc_B22A01: FFreeVar var_140 = "": var_160 = "": var_180 = ""
  loc_B22A0C: LitStr "568"
  loc_B22A0F: FLdRfVar var_CC
  loc_B22A12: LdFixedStr
  loc_B22A15: FStStrNoPop var_194
  loc_B22A18: ConcatStr
  loc_B22A19: FStStrNoPop var_198
  loc_B22A1C: FLdRfVar var_DC
  loc_B22A1F: LdFixedStr
  loc_B22A22: FStStrNoPop var_19C
  loc_B22A25: ConcatStr
  loc_B22A26: FStStrNoPop var_1A0
  loc_B22A29: FLdRfVar var_E0
  loc_B22A2C: LdFixedStr
  loc_B22A2F: FStStrNoPop var_1A4
  loc_B22A32: ConcatStr
  loc_B22A33: FStStrNoPop var_1A8
  loc_B22A36: FLdRfVar var_E6
  loc_B22A39: LdFixedStr
  loc_B22A3C: FStStrNoPop var_1AC
  loc_B22A3F: ConcatStr
  loc_B22A40: FStStrNoPop var_1B0
  loc_B22A43: FLdRfVar var_F6
  loc_B22A46: LdFixedStr
  loc_B22A49: FStStrNoPop var_1B4
  loc_B22A4C: ConcatStr
  loc_B22A4D: FStStrNoPop var_1B8
  loc_B22A50: FLdRfVar var_10E
  loc_B22A53: LdFixedStr
  loc_B22A56: FStStrNoPop var_1BC
  loc_B22A59: ConcatStr
  loc_B22A5A: FStStr var_A8
  loc_B22A5D: FFreeStr var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = ""
  loc_B22A76: ILdRf var_A8
  loc_B22A79: ILdRf var_A8
  loc_B22A7C: ImpAdCallI2 Proc_57_50_B0FBF8()
  loc_B22A81: FStStrNoPop var_194
  loc_B22A84: ConcatStr
  loc_B22A85: FStStrNoPop var_198
  loc_B22A88: LitI4 0
  loc_B22A8D: FLdRfVar var_C0
  loc_B22A90: Ary1StStrCopy
  loc_B22A91: FFreeStr var_194 = ""
  loc_B22A98: LitI4 0
  loc_B22A9D: FLdRfVar var_C0
  loc_B22AA0: Ary1LdI4
  loc_B22AA1: ImpAdCallI2 Proc_57_51_B5F020()
  loc_B22AA6: FStStrNoPop var_194
  loc_B22AA9: LitI4 1
  loc_B22AAE: FLdRfVar var_C0
  loc_B22AB1: Ary1StStrCopy
  loc_B22AB2: FFree1Str var_194
  loc_B22AB5: FLdRfVar var_C0
  loc_B22AB8: PopTmpLdAdStr var_1C0
  loc_B22ABB: FLdRfVar var_88
  loc_B22ABE: StAryCopy
  loc_B22AC0: ExitProc
End Function

Private Function Proc_57_34_B75524(arg_C, arg_10, arg_14, arg_18, arg_1C) 'B75524
  'Data Table: 437A14
  loc_B750F0: ILdRf arg_C
  loc_B750F3: FStStrCopy var_8C
  loc_B750F6: ILdRf arg_18
  loc_B750F9: FStStrCopy var_90
  loc_B750FC: FDupVar
  loc_B75102: ILdRf arg_30
  loc_B75105: FStStrCopy var_A4
  loc_B75108: ILdRf arg_38
  loc_B7510B: FStStrCopy var_A8
  loc_B7510E: LitI4 1
  loc_B75113: LitI4 1
  loc_B75118: LitVarStr var_13C, "0000000"
  loc_B7511D: FStVarCopyObj var_14C
  loc_B75120: FLdRfVar var_14C
  loc_B75123: FLdRfVar var_90
  loc_B75126: CVarRef
  loc_B7512B: FLdRfVar var_15C
  loc_B7512E: ImpAdCallFPR4  = Format(, )
  loc_B75133: FLdRfVar var_15C
  loc_B75136: CStrVarTmp
  loc_B75137: FLdRfVar var_BA
  loc_B7513A: StFixedStrFree
  loc_B7513E: FFreeVar var_14C = ""
  loc_B75145: FLdUI1
  loc_B75149: FStUI1 var_15E
  loc_B7514D: FLdUI1
  loc_B75151: LitI2_Byte 0
  loc_B75153: CUI1I2
  loc_B75155: EqI2
  loc_B75156: BranchF loc_B751B4
  loc_B75159: FLdUI1
  loc_B7515D: CI2UI1
  loc_B7515F: LitI2_Byte 7
  loc_B75161: EqI2
  loc_B75162: BranchF loc_B75171
  loc_B75165: LitStr "00"
  loc_B75168: FLdRfVar var_D2
  loc_B7516B: StFixedStr
  loc_B7516E: Branch loc_B7517A
  loc_B75171: LitStr "02"
  loc_B75174: FLdRfVar var_D2
  loc_B75177: StFixedStr
  loc_B7517A: LitI4 1
  loc_B7517F: LitI4 1
  loc_B75184: LitVarStr var_13C, "00"
  loc_B75189: FStVarCopyObj var_14C
  loc_B7518C: FLdRfVar var_14C
  loc_B7518F: FLdRfVar arg_1C
  loc_B75192: CVarRef
  loc_B75197: FLdRfVar var_15C
  loc_B7519A: ImpAdCallFPR4  = Format(, )
  loc_B7519F: FLdRfVar var_15C
  loc_B751A2: CStrVarTmp
  loc_B751A3: FLdRfVar var_100
  loc_B751A6: StFixedStrFree
  loc_B751AA: FFreeVar var_14C = ""
  loc_B751B1: Branch loc_B752C1
  loc_B751B4: FLdUI1
  loc_B751B8: LitI2_Byte 1
  loc_B751BA: CUI1I2
  loc_B751BC: LitI2_Byte 2
  loc_B751BE: CUI1I2
  loc_B751C0: BetweenUI1
  loc_B751C2: BranchF loc_B75275
  loc_B751C5: LitI4 1
  loc_B751CA: LitI4 1
  loc_B751CF: LitVarStr var_13C, "000"
  loc_B751D4: FStVarCopyObj var_15C
  loc_B751D7: FLdRfVar var_15C
  loc_B751DA: FLdI2 arg_14
  loc_B751DD: LitI2_Byte &H64
  loc_B751DF: AddI2
  loc_B751E0: CVarI2 var_14C
  loc_B751E3: FLdRfVar var_174
  loc_B751E6: ImpAdCallFPR4  = Format(, )
  loc_B751EB: FLdRfVar var_174
  loc_B751EE: CStrVarTmp
  loc_B751EF: FLdRfVar var_164
  loc_B751F2: StFixedStrFree
  loc_B751F6: FFreeVar var_14C = "": var_15C = ""
  loc_B751FF: LitI4 1
  loc_B75204: FLdRfVar var_164
  loc_B75207: LdFixedStr
  loc_B7520A: PopTmpLdAdStr
  loc_B7520E: CVarRef
  loc_B75213: FLdRfVar var_14C
  loc_B75216: ImpAdCallFPR4  = Left(, )
  loc_B7521B: ILdRf var_178
  loc_B7521E: FLdRfVar var_164
  loc_B75221: StFixedStr
  loc_B75224: FLdRfVar var_14C
  loc_B75227: CUI1Var
  loc_B75229: FStUI1 arg_34
  loc_B7522D: FFree1Str var_178
  loc_B75230: FFree1Var var_14C = ""
  loc_B75233: LitI4 2
  loc_B75238: FLdRfVar var_164
  loc_B7523B: LdFixedStr
  loc_B7523E: PopTmpLdAdStr
  loc_B75242: CVarRef
  loc_B75247: FLdRfVar var_14C
  loc_B7524A: ImpAdCallFPR4  = Right(, )
  loc_B7524F: ILdRf var_178
  loc_B75252: FLdRfVar var_164
  loc_B75255: StFixedStr
  loc_B75258: FLdRfVar var_14C
  loc_B7525B: CStrVarTmp
  loc_B7525C: FLdRfVar var_D2
  loc_B7525F: StFixedStrFree
  loc_B75263: FFree1Str var_178
  loc_B75266: FFree1Var var_14C = ""
  loc_B75269: LitStr "05"
  loc_B7526C: FLdRfVar var_100
  loc_B7526F: StFixedStr
  loc_B75272: Branch loc_B752C1
  loc_B75275: FLdUI1
  loc_B75279: LitI2_Byte 8
  loc_B7527B: CUI1I2
  loc_B7527D: EqI2
  loc_B7527E: BranchF loc_B752C1
  loc_B75281: LitStr "00"
  loc_B75284: FLdRfVar var_D2
  loc_B75287: StFixedStr
  loc_B7528A: LitI4 1
  loc_B7528F: LitI4 1
  loc_B75294: LitVarStr var_13C, "00"
  loc_B75299: FStVarCopyObj var_14C
  loc_B7529C: FLdRfVar var_14C
  loc_B7529F: FLdRfVar arg_1C
  loc_B752A2: CVarRef
  loc_B752A7: FLdRfVar var_15C
  loc_B752AA: ImpAdCallFPR4  = Format(, )
  loc_B752AF: FLdRfVar var_15C
  loc_B752B2: CStrVarTmp
  loc_B752B3: FLdRfVar var_100
  loc_B752B6: StFixedStrFree
  loc_B752BA: FFreeVar var_14C = ""
  loc_B752C1: LitI4 1
  loc_B752C6: LitI4 1
  loc_B752CB: LitVarStr var_13C, "000"
  loc_B752D0: FStVarCopyObj var_14C
  loc_B752D3: FLdRfVar var_14C
  loc_B752D6: FLdRfVar arg_10
  loc_B752D9: CVarRef
  loc_B752DE: FLdRfVar var_15C
  loc_B752E1: ImpAdCallFPR4  = Format(, )
  loc_B752E6: FLdRfVar var_15C
  loc_B752E9: CStrVarTmp
  loc_B752EA: FLdRfVar var_C0
  loc_B752ED: StFixedStrFree
  loc_B752F1: FFreeVar var_14C = ""
  loc_B752F8: LitVarStr var_188, "9"
  loc_B752FD: LitI4 1
  loc_B75302: LitI4 1
  loc_B75307: LitVarStr var_13C, "000000"
  loc_B7530C: FStVarCopyObj var_14C
  loc_B7530F: FLdRfVar var_14C
  loc_B75312: FLdRfVar var_8C
  loc_B75315: CVarRef
  loc_B7531A: FLdRfVar var_15C
  loc_B7531D: ImpAdCallFPR4  = Format(, )
  loc_B75322: FLdRfVar var_15C
  loc_B75325: ConcatVar var_174
  loc_B75329: CStrVarTmp
  loc_B7532A: FLdRfVar var_CE
  loc_B7532D: StFixedStrFree
  loc_B75331: FFreeVar var_14C = "": var_15C = ""
  loc_B7533A: FLdRfVar var_14C
  loc_B7533D: FLdRfVar var_A4
  loc_B75340: CVarRef
  loc_B75345: ImpAdCallHresult  = CDec()
  loc_B7534A: LitI4 1
  loc_B7534F: LitI4 1
  loc_B75354: LitVarStr var_188, "000000000"
  loc_B75359: FStVarCopyObj var_198
  loc_B7535C: FLdRfVar var_198
  loc_B7535F: FLdRfVar var_14C
  loc_B75362: LitVarI2 var_13C, 100
  loc_B75367: MulVar var_15C
  loc_B7536B: FStVar var_174
  loc_B7536F: FLdRfVar var_174
  loc_B75372: FLdRfVar var_1A8
  loc_B75375: ImpAdCallFPR4  = Format(, )
  loc_B7537A: FLdRfVar var_1A8
  loc_B7537D: CStrVarTmp
  loc_B7537E: FLdRfVar var_E4
  loc_B75381: StFixedStrFree
  loc_B75385: FFreeVar var_14C = "": var_174 = "": var_198 = ""
  loc_B75390: LitI4 1
  loc_B75395: LitI4 1
  loc_B7539A: LitVarStr var_13C, "yymmdd"
  loc_B7539F: FStVarCopyObj var_15C
  loc_B753A2: FLdRfVar var_15C
  loc_B753A5: FLdRfVar var_A0
  loc_B753A8: FnCDateVar
  loc_B753AA: CVarDate var_14C
  loc_B753AE: FLdRfVar var_174
  loc_B753B1: ImpAdCallFPR4  = Format(, )
  loc_B753B6: FLdRfVar var_174
  loc_B753B9: CStrVarTmp
  loc_B753BA: FLdRfVar var_F0
  loc_B753BD: StFixedStrFree
  loc_B753C1: FFreeVar var_14C = "": var_15C = ""
  loc_B753CA: FLdRfVar var_14C
  loc_B753CD: FLdRfVar var_A8
  loc_B753D0: CVarRef
  loc_B753D5: ImpAdCallHresult  = CDec()
  loc_B753DA: LitI4 1
  loc_B753DF: LitI4 1
  loc_B753E4: LitVarStr var_188, "000000"
  loc_B753E9: FStVarCopyObj var_198
  loc_B753EC: FLdRfVar var_198
  loc_B753EF: FLdRfVar var_14C
  loc_B753F2: LitVarI2 var_13C, 100
  loc_B753F7: MulVar var_15C
  loc_B753FB: FStVar var_174
  loc_B753FF: FLdRfVar var_174
  loc_B75402: FLdRfVar var_1A8
  loc_B75405: ImpAdCallFPR4  = Format(, )
  loc_B7540A: FLdRfVar var_1A8
  loc_B7540D: CStrVarTmp
  loc_B7540E: FLdRfVar var_FC
  loc_B75411: StFixedStrFree
  loc_B75415: FFreeVar var_14C = "": var_174 = "": var_198 = ""
  loc_B75420: LitStr "568"
  loc_B75423: LitStr "00"
  loc_B75426: ConcatStr
  loc_B75427: FStStrNoPop var_178
  loc_B7542A: FLdRfVar var_BA
  loc_B7542D: LdFixedStr
  loc_B75430: FStStrNoPop var_1AC
  loc_B75433: ConcatStr
  loc_B75434: FStStrNoPop var_1B0
  loc_B75437: FLdRfVar var_C0
  loc_B7543A: LdFixedStr
  loc_B7543D: FStStrNoPop var_1B4
  loc_B75440: ConcatStr
  loc_B75441: FStStrNoPop var_1B8
  loc_B75444: FLdUI1
  loc_B75448: CStrI2
  loc_B7544A: FStStrNoPop var_1BC
  loc_B7544D: ConcatStr
  loc_B7544E: FStStrNoPop var_1C0
  loc_B75451: FLdRfVar var_CE
  loc_B75454: LdFixedStr
  loc_B75457: FStStrNoPop var_1C4
  loc_B7545A: ConcatStr
  loc_B7545B: FStStrNoPop var_1C8
  loc_B7545E: FLdUI1
  loc_B75462: CStrI2
  loc_B75464: FStStrNoPop var_1CC
  loc_B75467: ConcatStr
  loc_B75468: FStStrNoPop var_1D0
  loc_B7546B: FLdRfVar var_D2
  loc_B7546E: LdFixedStr
  loc_B75471: FStStrNoPop var_1D4
  loc_B75474: ConcatStr
  loc_B75475: FStStrNoPop var_1D8
  loc_B75478: FLdRfVar var_100
  loc_B7547B: LdFixedStr
  loc_B7547E: FStStrNoPop var_1DC
  loc_B75481: ConcatStr
  loc_B75482: FStStrNoPop var_1E0
  loc_B75485: FLdRfVar var_E4
  loc_B75488: LdFixedStr
  loc_B7548B: FStStrNoPop var_1E4
  loc_B7548E: ConcatStr
  loc_B7548F: FStStrNoPop var_1E8
  loc_B75492: FLdRfVar var_F0
  loc_B75495: LdFixedStr
  loc_B75498: FStStrNoPop var_1EC
  loc_B7549B: ConcatStr
  loc_B7549C: FStStrNoPop var_1F0
  loc_B7549F: FLdRfVar var_FC
  loc_B754A2: LdFixedStr
  loc_B754A5: FStStrNoPop var_1F4
  loc_B754A8: ConcatStr
  loc_B754A9: FStStr var_AC
  loc_B754AC: FFreeStr var_178 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = ""
  loc_B754D7: ILdRf var_AC
  loc_B754DA: ILdRf var_AC
  loc_B754DD: ImpAdCallI2 Proc_57_50_B0FBF8()
  loc_B754E2: FStStrNoPop var_178
  loc_B754E5: ConcatStr
  loc_B754E6: FStStrNoPop var_1AC
  loc_B754E9: LitI4 0
  loc_B754EE: FLdRfVar var_118
  loc_B754F1: Ary1StStrCopy
  loc_B754F2: FFreeStr var_178 = ""
  loc_B754F9: LitI4 0
  loc_B754FE: FLdRfVar var_118
  loc_B75501: Ary1LdI4
  loc_B75502: ImpAdCallI2 Proc_57_51_B5F020()
  loc_B75507: FStStrNoPop var_178
  loc_B7550A: LitI4 1
  loc_B7550F: FLdRfVar var_118
  loc_B75512: Ary1StStrCopy
  loc_B75513: FFree1Str var_178
  loc_B75516: FLdRfVar var_118
  loc_B75519: PopTmpLdAdStr var_1F8
  loc_B7551C: FLdRfVar var_88
  loc_B7551F: StAryCopy
  loc_B75521: ExitProc
End Function

Private Function Proc_57_35_B545A0(arg_C, arg_10, arg_14, arg_18) 'B545A0
  'Data Table: 437A14
  loc_B54270: ILdRf arg_C
  loc_B54273: FStStrCopy var_8C
  loc_B54276: ILdRf arg_10
  loc_B54279: FStStrCopy var_90
  loc_B5427C: FDupVar
  loc_B54282: ILdRf arg_2C
  loc_B54285: FStStrCopy var_A4
  loc_B54288: ILdRf arg_34
  loc_B5428B: FStStrCopy var_A8
  loc_B5428E: LitI4 1
  loc_B54293: FLdRfVar arg_30
  loc_B54296: CVarRef
  loc_B5429B: FLdRfVar var_138
  loc_B5429E: ImpAdCallFPR4  = Right(, )
  loc_B542A3: LitI4 1
  loc_B542A8: LitI4 1
  loc_B542AD: LitVarStr var_148, "0"
  loc_B542B2: FStVarCopyObj var_158
  loc_B542B5: FLdRfVar var_158
  loc_B542B8: FLdRfVar var_138
  loc_B542BB: FLdRfVar var_168
  loc_B542BE: ImpAdCallFPR4  = Format(, )
  loc_B542C3: FLdRfVar var_168
  loc_B542C6: CStrVarTmp
  loc_B542C7: FLdRfVar var_AE
  loc_B542CA: StFixedStrFree
  loc_B542CE: FFreeVar var_138 = "": var_158 = ""
  loc_B542D7: LitI2_Byte 1
  loc_B542D9: CStrUI1
  loc_B542DB: FLdRfVar var_B0
  loc_B542DE: StFixedStrFree
  loc_B542E2: LitI4 1
  loc_B542E7: LitI4 1
  loc_B542EC: LitVarStr var_148, "000000"
  loc_B542F1: FStVarCopyObj var_138
  loc_B542F4: FLdRfVar var_138
  loc_B542F7: FLdRfVar var_8C
  loc_B542FA: CVarRef
  loc_B542FF: FLdRfVar var_158
  loc_B54302: ImpAdCallFPR4  = Format(, )
  loc_B54307: FLdRfVar var_158
  loc_B5430A: CStrVarTmp
  loc_B5430B: FLdRfVar var_BC
  loc_B5430E: StFixedStrFree
  loc_B54312: FFreeVar var_138 = ""
  loc_B54319: LitI4 1
  loc_B5431E: LitI4 1
  loc_B54323: LitVarStr var_148, "yymmdd"
  loc_B54328: FStVarCopyObj var_158
  loc_B5432B: FLdRfVar var_158
  loc_B5432E: FLdRfVar var_A0
  loc_B54331: FnCDateVar
  loc_B54333: CVarDate var_138
  loc_B54337: FLdRfVar var_168
  loc_B5433A: ImpAdCallFPR4  = Format(, )
  loc_B5433F: FLdRfVar var_168
  loc_B54342: CStrVarTmp
  loc_B54343: FLdRfVar var_C8
  loc_B54346: StFixedStrFree
  loc_B5434A: FFreeVar var_138 = "": var_158 = ""
  loc_B54353: LitI4 1
  loc_B54358: LitI4 1
  loc_B5435D: LitVarStr var_148, "00"
  loc_B54362: FStVarCopyObj var_138
  loc_B54365: FLdRfVar var_138
  loc_B54368: FLdRfVar arg_18
  loc_B5436B: CVarRef
  loc_B54370: FLdRfVar var_158
  loc_B54373: ImpAdCallFPR4  = Format(, )
  loc_B54378: FLdRfVar var_158
  loc_B5437B: CStrVarTmp
  loc_B5437C: FLdRfVar var_CC
  loc_B5437F: StFixedStrFree
  loc_B54383: FFreeVar var_138 = ""
  loc_B5438A: FLdRfVar var_138
  loc_B5438D: FLdRfVar var_A4
  loc_B54390: CVarRef
  loc_B54395: ImpAdCallHresult  = CDec()
  loc_B5439A: LitI4 1
  loc_B5439F: LitI4 1
  loc_B543A4: LitVarStr var_178, "0000000000"
  loc_B543A9: FStVarCopyObj var_188
  loc_B543AC: FLdRfVar var_188
  loc_B543AF: FLdRfVar var_138
  loc_B543B2: LitVarI2 var_148, 100
  loc_B543B7: MulVar var_158
  loc_B543BB: FStVar var_168
  loc_B543BF: FLdRfVar var_168
  loc_B543C2: FLdRfVar var_198
  loc_B543C5: ImpAdCallFPR4  = Format(, )
  loc_B543CA: FLdRfVar var_198
  loc_B543CD: CStrVarTmp
  loc_B543CE: FLdRfVar var_E0
  loc_B543D1: StFixedStrFree
  loc_B543D5: FFreeVar var_138 = "": var_168 = "": var_188 = ""
  loc_B543E0: LitI4 2
  loc_B543E5: FLdRfVar var_90
  loc_B543E8: CVarRef
  loc_B543ED: FLdRfVar var_138
  loc_B543F0: ImpAdCallFPR4  = Right(, )
  loc_B543F5: LitI4 1
  loc_B543FA: LitI4 1
  loc_B543FF: LitVarStr var_148, "00"
  loc_B54404: FStVarCopyObj var_158
  loc_B54407: FLdRfVar var_158
  loc_B5440A: FLdRfVar var_138
  loc_B5440D: FLdRfVar var_168
  loc_B54410: ImpAdCallFPR4  = Format(, )
  loc_B54415: FLdRfVar var_168
  loc_B54418: CStrVarTmp
  loc_B54419: FLdRfVar var_E4
  loc_B5441C: StFixedStrFree
  loc_B54420: FFreeVar var_138 = "": var_158 = ""
  loc_B54429: LitI4 6
  loc_B5442E: FLdRfVar var_A8
  loc_B54431: CVarRef
  loc_B54436: FLdRfVar var_138
  loc_B54439: ImpAdCallFPR4  = Right(, )
  loc_B5443E: LitI4 1
  loc_B54443: LitI4 1
  loc_B54448: LitVarStr var_148, "000000"
  loc_B5444D: FStVarCopyObj var_158
  loc_B54450: FLdRfVar var_158
  loc_B54453: FLdRfVar var_138
  loc_B54456: FLdRfVar var_168
  loc_B54459: ImpAdCallFPR4  = Format(, )
  loc_B5445E: FLdRfVar var_168
  loc_B54461: CStrVarTmp
  loc_B54462: FLdRfVar var_F0
  loc_B54465: StFixedStrFree
  loc_B54469: FFreeVar var_138 = "": var_158 = ""
  loc_B54472: LitI4 1
  loc_B54477: LitI4 1
  loc_B5447C: LitVarStr var_148, "000"
  loc_B54481: FStVarCopyObj var_138
  loc_B54484: FLdRfVar var_138
  loc_B54487: FLdRfVar arg_14
  loc_B5448A: CVarRef
  loc_B5448F: FLdRfVar var_158
  loc_B54492: ImpAdCallFPR4  = Format(, )
  loc_B54497: FLdRfVar var_158
  loc_B5449A: CStrVarTmp
  loc_B5449B: FLdRfVar var_F6
  loc_B5449E: StFixedStrFree
  loc_B544A2: FFreeVar var_138 = ""
  loc_B544A9: LitStr "000"
  loc_B544AC: FLdRfVar var_FC
  loc_B544AF: StFixedStr
  loc_B544B2: LitStr "568"
  loc_B544B5: FLdRfVar var_AE
  loc_B544B8: LdFixedStr
  loc_B544BB: FStStrNoPop var_19C
  loc_B544BE: ConcatStr
  loc_B544BF: FStStrNoPop var_1A0
  loc_B544C2: FLdRfVar var_B0
  loc_B544C5: LdFixedStr
  loc_B544C8: FStStrNoPop var_1A4
  loc_B544CB: ConcatStr
  loc_B544CC: FStStrNoPop var_1A8
  loc_B544CF: FLdRfVar var_BC
  loc_B544D2: LdFixedStr
  loc_B544D5: FStStrNoPop var_1AC
  loc_B544D8: ConcatStr
  loc_B544D9: FStStrNoPop var_1B0
  loc_B544DC: FLdRfVar var_C8
  loc_B544DF: LdFixedStr
  loc_B544E2: FStStrNoPop var_1B4
  loc_B544E5: ConcatStr
  loc_B544E6: FStStrNoPop var_1B8
  loc_B544E9: FLdRfVar var_CC
  loc_B544EC: LdFixedStr
  loc_B544EF: FStStrNoPop var_1BC
  loc_B544F2: ConcatStr
  loc_B544F3: FStStrNoPop var_1C0
  loc_B544F6: FLdRfVar var_E0
  loc_B544F9: LdFixedStr
  loc_B544FC: FStStrNoPop var_1C4
  loc_B544FF: ConcatStr
  loc_B54500: FStStrNoPop var_1C8
  loc_B54503: FLdRfVar var_E4
  loc_B54506: LdFixedStr
  loc_B54509: FStStrNoPop var_1CC
  loc_B5450C: ConcatStr
  loc_B5450D: FStStrNoPop var_1D0
  loc_B54510: FLdRfVar var_F0
  loc_B54513: LdFixedStr
  loc_B54516: FStStrNoPop var_1D4
  loc_B54519: ConcatStr
  loc_B5451A: FStStrNoPop var_1D8
  loc_B5451D: FLdRfVar var_F6
  loc_B54520: LdFixedStr
  loc_B54523: FStStrNoPop var_1DC
  loc_B54526: ConcatStr
  loc_B54527: FStStrNoPop var_1E0
  loc_B5452A: FLdRfVar var_FC
  loc_B5452D: LdFixedStr
  loc_B54530: FStStrNoPop var_1E4
  loc_B54533: ConcatStr
  loc_B54534: FStStr var_AC
  loc_B54537: FFreeStr var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = ""
  loc_B54560: ILdRf var_AC
  loc_B54563: ImpAdCallI2 Proc_57_48_ADF5D4()
  loc_B54568: FStStrNoPop var_19C
  loc_B5456B: LitI4 0
  loc_B54570: FLdRfVar var_114
  loc_B54573: Ary1StStrCopy
  loc_B54574: FFree1Str var_19C
  loc_B54577: LitI4 0
  loc_B5457C: FLdRfVar var_114
  loc_B5457F: Ary1LdI4
  loc_B54580: ImpAdCallI2 Proc_57_51_B5F020()
  loc_B54585: FStStrNoPop var_19C
  loc_B54588: LitI4 1
  loc_B5458D: FLdRfVar var_114
  loc_B54590: Ary1StStrCopy
  loc_B54591: FFree1Str var_19C
  loc_B54594: FLdRfVar var_114
  loc_B54597: PopTmpLdAdStr var_1E8
  loc_B5459A: FLdRfVar var_88
  loc_B5459D: StAryCopy
  loc_B5459F: ExitProc
End Function

Private Function Proc_57_36_B16CE8(arg_C, arg_10, arg_14) 'B16CE8
  'Data Table: 437A14
  loc_B16AE4: ILdRf arg_C
  loc_B16AE7: FStStrCopy var_8C
  loc_B16AEA: ILdRf arg_10
  loc_B16AED: FStStrCopy var_90
  loc_B16AF0: FDupVar
  loc_B16AF6: ILdRf arg_28
  loc_B16AF9: FStStrCopy var_A4
  loc_B16AFC: LitI4 1
  loc_B16B01: LitI4 1
  loc_B16B06: LitVarStr var_120, "00000000"
  loc_B16B0B: FStVarCopyObj var_130
  loc_B16B0E: FLdRfVar var_130
  loc_B16B11: FLdRfVar var_8C
  loc_B16B14: CVarRef
  loc_B16B19: FLdRfVar var_140
  loc_B16B1C: ImpAdCallFPR4  = Format(, )
  loc_B16B21: FLdRfVar var_140
  loc_B16B24: CStrVarTmp
  loc_B16B25: FLdRfVar var_B8
  loc_B16B28: StFixedStrFree
  loc_B16B2C: FFreeVar var_130 = ""
  loc_B16B33: LitI4 1
  loc_B16B38: LitI4 1
  loc_B16B3D: LitVarStr var_120, "ddmmyy"
  loc_B16B42: FStVarCopyObj var_140
  loc_B16B45: FLdRfVar var_140
  loc_B16B48: FLdRfVar var_A0
  loc_B16B4B: FnCDateVar
  loc_B16B4D: CVarDate var_130
  loc_B16B51: FLdRfVar var_150
  loc_B16B54: ImpAdCallFPR4  = Format(, )
  loc_B16B59: FLdRfVar var_150
  loc_B16B5C: CStrVarTmp
  loc_B16B5D: FLdRfVar var_C4
  loc_B16B60: StFixedStrFree
  loc_B16B64: FFreeVar var_130 = "": var_140 = ""
  loc_B16B6D: LitI4 1
  loc_B16B72: LitI4 1
  loc_B16B77: LitVarStr var_120, "00"
  loc_B16B7C: FStVarCopyObj var_130
  loc_B16B7F: FLdRfVar var_130
  loc_B16B82: FLdRfVar arg_14
  loc_B16B85: CVarRef
  loc_B16B8A: FLdRfVar var_140
  loc_B16B8D: ImpAdCallFPR4  = Format(, )
  loc_B16B92: FLdRfVar var_140
  loc_B16B95: CStrVarTmp
  loc_B16B96: FLdRfVar var_C8
  loc_B16B99: StFixedStrFree
  loc_B16B9D: FFreeVar var_130 = ""
  loc_B16BA4: FLdRfVar var_130
  loc_B16BA7: FLdRfVar var_A4
  loc_B16BAA: CVarRef
  loc_B16BAF: ImpAdCallHresult  = CDec()
  loc_B16BB4: LitI4 1
  loc_B16BB9: LitI4 1
  loc_B16BBE: LitVarStr var_160, "0000000000"
  loc_B16BC3: FStVarCopyObj var_170
  loc_B16BC6: FLdRfVar var_170
  loc_B16BC9: FLdRfVar var_130
  loc_B16BCC: LitVarI2 var_120, 100
  loc_B16BD1: MulVar var_140
  loc_B16BD5: FStVar var_150
  loc_B16BD9: FLdRfVar var_150
  loc_B16BDC: FLdRfVar var_180
  loc_B16BDF: ImpAdCallFPR4  = Format(, )
  loc_B16BE4: FLdRfVar var_180
  loc_B16BE7: CStrVarTmp
  loc_B16BE8: FLdRfVar var_DC
  loc_B16BEB: StFixedStrFree
  loc_B16BEF: FFreeVar var_130 = "": var_150 = "": var_170 = ""
  loc_B16BFA: LitI4 2
  loc_B16BFF: FLdRfVar var_90
  loc_B16C02: CVarRef
  loc_B16C07: FLdRfVar var_130
  loc_B16C0A: ImpAdCallFPR4  = Right(, )
  loc_B16C0F: LitI4 1
  loc_B16C14: LitI4 1
  loc_B16C19: LitVarStr var_120, "000"
  loc_B16C1E: FStVarCopyObj var_140
  loc_B16C21: FLdRfVar var_140
  loc_B16C24: FLdRfVar var_130
  loc_B16C27: FLdRfVar var_150
  loc_B16C2A: ImpAdCallFPR4  = Format(, )
  loc_B16C2F: FLdRfVar var_150
  loc_B16C32: CStrVarTmp
  loc_B16C33: FLdRfVar var_E2
  loc_B16C36: StFixedStrFree
  loc_B16C3A: FFreeVar var_130 = "": var_140 = ""
  loc_B16C43: LitStr "568"
  loc_B16C46: FLdRfVar var_C8
  loc_B16C49: LdFixedStr
  loc_B16C4C: FStStrNoPop var_184
  loc_B16C4F: ConcatStr
  loc_B16C50: FStStrNoPop var_188
  loc_B16C53: FLdRfVar var_B8
  loc_B16C56: LdFixedStr
  loc_B16C59: FStStrNoPop var_18C
  loc_B16C5C: ConcatStr
  loc_B16C5D: FStStrNoPop var_190
  loc_B16C60: FLdRfVar var_C4
  loc_B16C63: LdFixedStr
  loc_B16C66: FStStrNoPop var_194
  loc_B16C69: ConcatStr
  loc_B16C6A: FStStrNoPop var_198
  loc_B16C6D: FLdRfVar var_E2
  loc_B16C70: LdFixedStr
  loc_B16C73: FStStrNoPop var_19C
  loc_B16C76: ConcatStr
  loc_B16C77: FStStrNoPop var_1A0
  loc_B16C7A: FLdRfVar var_DC
  loc_B16C7D: LdFixedStr
  loc_B16C80: FStStrNoPop var_1A4
  loc_B16C83: ConcatStr
  loc_B16C84: FStStr var_A8
  loc_B16C87: FFreeStr var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = ""
  loc_B16C9C: ILdRf var_A8
  loc_B16C9F: ILdRf var_A8
  loc_B16CA2: ImpAdCallI2 Proc_57_49_B21654()
  loc_B16CA7: FStStrNoPop var_184
  loc_B16CAA: ConcatStr
  loc_B16CAB: FStStrNoPop var_188
  loc_B16CAE: LitI4 0
  loc_B16CB3: FLdRfVar var_FC
  loc_B16CB6: Ary1StStrCopy
  loc_B16CB7: FFreeStr var_184 = ""
  loc_B16CBE: LitI4 0
  loc_B16CC3: FLdRfVar var_FC
  loc_B16CC6: Ary1LdI4
  loc_B16CC7: ImpAdCallI2 Proc_57_51_B5F020()
  loc_B16CCC: FStStrNoPop var_184
  loc_B16CCF: LitI4 1
  loc_B16CD4: FLdRfVar var_FC
  loc_B16CD7: Ary1StStrCopy
  loc_B16CD8: FFree1Str var_184
  loc_B16CDB: FLdRfVar var_FC
  loc_B16CDE: PopTmpLdAdStr var_1A8
  loc_B16CE1: FLdRfVar var_88
  loc_B16CE4: StAryCopy
  loc_B16CE6: ExitProc
End Function

Private Function Proc_57_37_B7ACD8(arg_C, arg_10, arg_14, arg_18, arg_1C) 'B7ACD8
  'Data Table: 437A14
  loc_B7A888: ILdRf arg_C
  loc_B7A88B: FStStrCopy var_8C
  loc_B7A88E: ILdRf arg_18
  loc_B7A891: FStStrCopy var_90
  loc_B7A894: FDupVar
  loc_B7A89A: ILdRf arg_30
  loc_B7A89D: FStStrCopy var_A4
  loc_B7A8A0: ILdRf arg_38
  loc_B7A8A3: FStStrCopy var_A8
  loc_B7A8A6: LitI4 1
  loc_B7A8AB: LitI4 1
  loc_B7A8B0: LitVarStr var_13C, "0000000"
  loc_B7A8B5: FStVarCopyObj var_14C
  loc_B7A8B8: FLdRfVar var_14C
  loc_B7A8BB: FLdRfVar var_90
  loc_B7A8BE: CVarRef
  loc_B7A8C3: FLdRfVar var_15C
  loc_B7A8C6: ImpAdCallFPR4  = Format(, )
  loc_B7A8CB: FLdRfVar var_15C
  loc_B7A8CE: CStrVarTmp
  loc_B7A8CF: FLdRfVar var_BA
  loc_B7A8D2: StFixedStrFree
  loc_B7A8D6: FFreeVar var_14C = ""
  loc_B7A8DD: FLdUI1
  loc_B7A8E1: FStUI1 var_15E
  loc_B7A8E5: FLdUI1
  loc_B7A8E9: LitI2_Byte 0
  loc_B7A8EB: CUI1I2
  loc_B7A8ED: EqI2
  loc_B7A8EE: BranchF loc_B7A94C
  loc_B7A8F1: FLdUI1
  loc_B7A8F5: CI2UI1
  loc_B7A8F7: LitI2_Byte 7
  loc_B7A8F9: EqI2
  loc_B7A8FA: BranchF loc_B7A909
  loc_B7A8FD: LitStr "00"
  loc_B7A900: FLdRfVar var_D2
  loc_B7A903: StFixedStr
  loc_B7A906: Branch loc_B7A912
  loc_B7A909: LitStr "02"
  loc_B7A90C: FLdRfVar var_D2
  loc_B7A90F: StFixedStr
  loc_B7A912: LitI4 1
  loc_B7A917: LitI4 1
  loc_B7A91C: LitVarStr var_13C, "00"
  loc_B7A921: FStVarCopyObj var_14C
  loc_B7A924: FLdRfVar var_14C
  loc_B7A927: FLdRfVar arg_1C
  loc_B7A92A: CVarRef
  loc_B7A92F: FLdRfVar var_15C
  loc_B7A932: ImpAdCallFPR4  = Format(, )
  loc_B7A937: FLdRfVar var_15C
  loc_B7A93A: CStrVarTmp
  loc_B7A93B: FLdRfVar var_100
  loc_B7A93E: StFixedStrFree
  loc_B7A942: FFreeVar var_14C = ""
  loc_B7A949: Branch loc_B7AA59
  loc_B7A94C: FLdUI1
  loc_B7A950: LitI2_Byte 1
  loc_B7A952: CUI1I2
  loc_B7A954: LitI2_Byte 2
  loc_B7A956: CUI1I2
  loc_B7A958: BetweenUI1
  loc_B7A95A: BranchF loc_B7AA0D
  loc_B7A95D: LitI4 1
  loc_B7A962: LitI4 1
  loc_B7A967: LitVarStr var_13C, "000"
  loc_B7A96C: FStVarCopyObj var_15C
  loc_B7A96F: FLdRfVar var_15C
  loc_B7A972: FLdI2 arg_14
  loc_B7A975: LitI2_Byte &H64
  loc_B7A977: AddI2
  loc_B7A978: CVarI2 var_14C
  loc_B7A97B: FLdRfVar var_174
  loc_B7A97E: ImpAdCallFPR4  = Format(, )
  loc_B7A983: FLdRfVar var_174
  loc_B7A986: CStrVarTmp
  loc_B7A987: FLdRfVar var_164
  loc_B7A98A: StFixedStrFree
  loc_B7A98E: FFreeVar var_14C = "": var_15C = ""
  loc_B7A997: LitI4 1
  loc_B7A99C: FLdRfVar var_164
  loc_B7A99F: LdFixedStr
  loc_B7A9A2: PopTmpLdAdStr
  loc_B7A9A6: CVarRef
  loc_B7A9AB: FLdRfVar var_14C
  loc_B7A9AE: ImpAdCallFPR4  = Left(, )
  loc_B7A9B3: ILdRf var_178
  loc_B7A9B6: FLdRfVar var_164
  loc_B7A9B9: StFixedStr
  loc_B7A9BC: FLdRfVar var_14C
  loc_B7A9BF: CUI1Var
  loc_B7A9C1: FStUI1 arg_34
  loc_B7A9C5: FFree1Str var_178
  loc_B7A9C8: FFree1Var var_14C = ""
  loc_B7A9CB: LitI4 2
  loc_B7A9D0: FLdRfVar var_164
  loc_B7A9D3: LdFixedStr
  loc_B7A9D6: PopTmpLdAdStr
  loc_B7A9DA: CVarRef
  loc_B7A9DF: FLdRfVar var_14C
  loc_B7A9E2: ImpAdCallFPR4  = Right(, )
  loc_B7A9E7: ILdRf var_178
  loc_B7A9EA: FLdRfVar var_164
  loc_B7A9ED: StFixedStr
  loc_B7A9F0: FLdRfVar var_14C
  loc_B7A9F3: CStrVarTmp
  loc_B7A9F4: FLdRfVar var_D2
  loc_B7A9F7: StFixedStrFree
  loc_B7A9FB: FFree1Str var_178
  loc_B7A9FE: FFree1Var var_14C = ""
  loc_B7AA01: LitStr "05"
  loc_B7AA04: FLdRfVar var_100
  loc_B7AA07: StFixedStr
  loc_B7AA0A: Branch loc_B7AA59
  loc_B7AA0D: FLdUI1
  loc_B7AA11: LitI2_Byte 8
  loc_B7AA13: CUI1I2
  loc_B7AA15: EqI2
  loc_B7AA16: BranchF loc_B7AA59
  loc_B7AA19: LitStr "00"
  loc_B7AA1C: FLdRfVar var_D2
  loc_B7AA1F: StFixedStr
  loc_B7AA22: LitI4 1
  loc_B7AA27: LitI4 1
  loc_B7AA2C: LitVarStr var_13C, "00"
  loc_B7AA31: FStVarCopyObj var_14C
  loc_B7AA34: FLdRfVar var_14C
  loc_B7AA37: FLdRfVar arg_1C
  loc_B7AA3A: CVarRef
  loc_B7AA3F: FLdRfVar var_15C
  loc_B7AA42: ImpAdCallFPR4  = Format(, )
  loc_B7AA47: FLdRfVar var_15C
  loc_B7AA4A: CStrVarTmp
  loc_B7AA4B: FLdRfVar var_100
  loc_B7AA4E: StFixedStrFree
  loc_B7AA52: FFreeVar var_14C = ""
  loc_B7AA59: LitI4 1
  loc_B7AA5E: LitI4 1
  loc_B7AA63: LitVarStr var_13C, "000"
  loc_B7AA68: FStVarCopyObj var_14C
  loc_B7AA6B: FLdRfVar var_14C
  loc_B7AA6E: FLdRfVar arg_10
  loc_B7AA71: CVarRef
  loc_B7AA76: FLdRfVar var_15C
  loc_B7AA79: ImpAdCallFPR4  = Format(, )
  loc_B7AA7E: FLdRfVar var_15C
  loc_B7AA81: CStrVarTmp
  loc_B7AA82: FLdRfVar var_C0
  loc_B7AA85: StFixedStrFree
  loc_B7AA89: FFreeVar var_14C = ""
  loc_B7AA90: LitI4 0
  loc_B7AA95: LitI4 -1
  loc_B7AA9A: LitI4 1
  loc_B7AA9F: LitStr "Z"
  loc_B7AAA2: LitStr " "
  loc_B7AAA5: ILdRf var_8C
  loc_B7AAA8: ImpAdCallI2 Replace(, , , , , )
  loc_B7AAAD: FLdRfVar var_CE
  loc_B7AAB0: StFixedStrRFree
  loc_B7AAB4: LitI4 0
  loc_B7AAB9: LitI4 -1
  loc_B7AABE: LitI4 1
  loc_B7AAC3: LitStr "0"
  loc_B7AAC6: LitStr " "
  loc_B7AAC9: FLdRfVar var_CE
  loc_B7AACC: LdFixedStr
  loc_B7AACF: FStStrNoPop var_178
  loc_B7AAD2: ImpAdCallI2 Replace(, , , , , )
  loc_B7AAD7: FStStr var_17C
  loc_B7AADA: ILdRf var_178
  loc_B7AADD: FLdRfVar var_CE
  loc_B7AAE0: StFixedStr
  loc_B7AAE3: FLdZeroAd var_17C
  loc_B7AAE6: FLdRfVar var_CE
  loc_B7AAE9: StFixedStrFree
  loc_B7AAED: FFree1Str var_178
  loc_B7AAF0: FLdRfVar var_14C
  loc_B7AAF3: FLdRfVar var_A4
  loc_B7AAF6: CVarRef
  loc_B7AAFB: ImpAdCallHresult  = CDec()
  loc_B7AB00: LitI4 1
  loc_B7AB05: LitI4 1
  loc_B7AB0A: LitVarStr var_18C, "000000000"
  loc_B7AB0F: FStVarCopyObj var_19C
  loc_B7AB12: FLdRfVar var_19C
  loc_B7AB15: FLdRfVar var_14C
  loc_B7AB18: LitVarI2 var_13C, 100
  loc_B7AB1D: MulVar var_15C
  loc_B7AB21: FStVar var_174
  loc_B7AB25: FLdRfVar var_174
  loc_B7AB28: FLdRfVar var_1AC
  loc_B7AB2B: ImpAdCallFPR4  = Format(, )
  loc_B7AB30: FLdRfVar var_1AC
  loc_B7AB33: CStrVarTmp
  loc_B7AB34: FLdRfVar var_E4
  loc_B7AB37: StFixedStrFree
  loc_B7AB3B: FFreeVar var_14C = "": var_174 = "": var_19C = ""
  loc_B7AB46: LitI4 1
  loc_B7AB4B: LitI4 1
  loc_B7AB50: LitVarStr var_13C, "yymmdd"
  loc_B7AB55: FStVarCopyObj var_15C
  loc_B7AB58: FLdRfVar var_15C
  loc_B7AB5B: FLdRfVar var_A0
  loc_B7AB5E: FnCDateVar
  loc_B7AB60: CVarDate var_14C
  loc_B7AB64: FLdRfVar var_174
  loc_B7AB67: ImpAdCallFPR4  = Format(, )
  loc_B7AB6C: FLdRfVar var_174
  loc_B7AB6F: CStrVarTmp
  loc_B7AB70: FLdRfVar var_F0
  loc_B7AB73: StFixedStrFree
  loc_B7AB77: FFreeVar var_14C = "": var_15C = ""
  loc_B7AB80: FLdRfVar var_14C
  loc_B7AB83: FLdRfVar var_A8
  loc_B7AB86: CVarRef
  loc_B7AB8B: ImpAdCallHresult  = CDec()
  loc_B7AB90: LitI4 1
  loc_B7AB95: LitI4 1
  loc_B7AB9A: LitVarStr var_18C, "000000"
  loc_B7AB9F: FStVarCopyObj var_19C
  loc_B7ABA2: FLdRfVar var_19C
  loc_B7ABA5: FLdRfVar var_14C
  loc_B7ABA8: LitVarI2 var_13C, 100
  loc_B7ABAD: MulVar var_15C
  loc_B7ABB1: FStVar var_174
  loc_B7ABB5: FLdRfVar var_174
  loc_B7ABB8: FLdRfVar var_1AC
  loc_B7ABBB: ImpAdCallFPR4  = Format(, )
  loc_B7ABC0: FLdRfVar var_1AC
  loc_B7ABC3: CStrVarTmp
  loc_B7ABC4: FLdRfVar var_FC
  loc_B7ABC7: StFixedStrFree
  loc_B7ABCB: FFreeVar var_14C = "": var_174 = "": var_19C = ""
  loc_B7ABD6: LitStr "568"
  loc_B7ABD9: LitStr "00"
  loc_B7ABDC: ConcatStr
  loc_B7ABDD: FStStrNoPop var_178
  loc_B7ABE0: FLdRfVar var_BA
  loc_B7ABE3: LdFixedStr
  loc_B7ABE6: FStStrNoPop var_17C
  loc_B7ABE9: ConcatStr
  loc_B7ABEA: FStStrNoPop var_1B0
  loc_B7ABED: FLdRfVar var_C0
  loc_B7ABF0: LdFixedStr
  loc_B7ABF3: FStStrNoPop var_1B4
  loc_B7ABF6: ConcatStr
  loc_B7ABF7: FStStrNoPop var_1B8
  loc_B7ABFA: FLdUI1
  loc_B7ABFE: CStrI2
  loc_B7AC00: FStStrNoPop var_1BC
  loc_B7AC03: ConcatStr
  loc_B7AC04: FStStrNoPop var_1C0
  loc_B7AC07: FLdRfVar var_CE
  loc_B7AC0A: LdFixedStr
  loc_B7AC0D: FStStrNoPop var_1C4
  loc_B7AC10: ConcatStr
  loc_B7AC11: FStStrNoPop var_1C8
  loc_B7AC14: FLdUI1
  loc_B7AC18: CStrI2
  loc_B7AC1A: FStStrNoPop var_1CC
  loc_B7AC1D: ConcatStr
  loc_B7AC1E: FStStrNoPop var_1D0
  loc_B7AC21: FLdRfVar var_D2
  loc_B7AC24: LdFixedStr
  loc_B7AC27: FStStrNoPop var_1D4
  loc_B7AC2A: ConcatStr
  loc_B7AC2B: FStStrNoPop var_1D8
  loc_B7AC2E: FLdRfVar var_100
  loc_B7AC31: LdFixedStr
  loc_B7AC34: FStStrNoPop var_1DC
  loc_B7AC37: ConcatStr
  loc_B7AC38: FStStrNoPop var_1E0
  loc_B7AC3B: FLdRfVar var_E4
  loc_B7AC3E: LdFixedStr
  loc_B7AC41: FStStrNoPop var_1E4
  loc_B7AC44: ConcatStr
  loc_B7AC45: FStStrNoPop var_1E8
  loc_B7AC48: FLdRfVar var_F0
  loc_B7AC4B: LdFixedStr
  loc_B7AC4E: FStStrNoPop var_1EC
  loc_B7AC51: ConcatStr
  loc_B7AC52: FStStrNoPop var_1F0
  loc_B7AC55: FLdRfVar var_FC
  loc_B7AC58: LdFixedStr
  loc_B7AC5B: FStStrNoPop var_1F4
  loc_B7AC5E: ConcatStr
  loc_B7AC5F: FStStr var_AC
  loc_B7AC62: FFreeStr var_178 = "": var_17C = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = ""
  loc_B7AC8D: ILdRf var_AC
  loc_B7AC90: ILdRf var_AC
  loc_B7AC93: ImpAdCallI2 Proc_57_50_B0FBF8()
  loc_B7AC98: FStStrNoPop var_178
  loc_B7AC9B: ConcatStr
  loc_B7AC9C: FStStrNoPop var_17C
  loc_B7AC9F: LitI4 0
  loc_B7ACA4: FLdRfVar var_118
  loc_B7ACA7: Ary1StStrCopy
  loc_B7ACA8: FFreeStr var_178 = ""
  loc_B7ACAF: LitI4 0
  loc_B7ACB4: FLdRfVar var_118
  loc_B7ACB7: Ary1LdI4
  loc_B7ACB8: ImpAdCallI2 Proc_57_51_B5F020()
  loc_B7ACBD: FStStrNoPop var_178
  loc_B7ACC0: LitI4 1
  loc_B7ACC5: FLdRfVar var_118
  loc_B7ACC8: Ary1StStrCopy
  loc_B7ACC9: FFree1Str var_178
  loc_B7ACCC: FLdRfVar var_118
  loc_B7ACCF: PopTmpLdAdStr var_1F8
  loc_B7ACD2: FLdRfVar var_88
  loc_B7ACD5: StAryCopy
  loc_B7ACD7: ExitProc
End Function

Private Function Proc_57_38_B11280(arg_C, arg_10, arg_14, arg_18, arg_1C) 'B11280
  'Data Table: 437A14
  loc_B110AC: ILdRf arg_C
  loc_B110AF: FStStrCopy var_8C
  loc_B110B2: ILdRf arg_10
  loc_B110B5: FStStrCopy var_90
  loc_B110B8: ILdRf arg_14
  loc_B110BB: FStStrCopy var_94
  loc_B110BE: ILdRf arg_18
  loc_B110C1: FStStrCopy var_98
  loc_B110C4: ILdRf arg_1C
  loc_B110C7: FStStrCopy var_9C
  loc_B110CA: LitI4 1
  loc_B110CF: LitI4 1
  loc_B110D4: LitVarStr var_130, "000000000"
  loc_B110D9: FStVarCopyObj var_140
  loc_B110DC: FLdRfVar var_140
  loc_B110DF: FLdRfVar var_90
  loc_B110E2: CVarRef
  loc_B110E7: FLdRfVar var_150
  loc_B110EA: ImpAdCallFPR4  = Format(, )
  loc_B110EF: FLdRfVar var_150
  loc_B110F2: CStrVarTmp
  loc_B110F3: FLdRfVar var_CE
  loc_B110F6: StFixedStrFree
  loc_B110FA: FFreeVar var_140 = ""
  loc_B11101: ILdRf var_8C
  loc_B11104: FLdRfVar var_D6
  loc_B11107: StFixedStr
  loc_B1110A: LitI4 1
  loc_B1110F: LitI4 1
  loc_B11114: LitVarStr var_130, "00"
  loc_B11119: FStVarCopyObj var_140
  loc_B1111C: FLdRfVar var_140
  loc_B1111F: FLdRfVar var_94
  loc_B11122: CVarRef
  loc_B11127: FLdRfVar var_150
  loc_B1112A: ImpAdCallFPR4  = Format(, )
  loc_B1112F: FLdRfVar var_150
  loc_B11132: CStrVarTmp
  loc_B11133: FLdRfVar var_DA
  loc_B11136: StFixedStrFree
  loc_B1113A: FFreeVar var_140 = ""
  loc_B11141: LitI4 1
  loc_B11146: LitI4 1
  loc_B1114B: LitVarStr var_130, "0000000000000"
  loc_B11150: FStVarCopyObj var_140
  loc_B11153: FLdRfVar var_140
  loc_B11156: FLdRfVar var_98
  loc_B11159: CVarRef
  loc_B1115E: FLdRfVar var_150
  loc_B11161: ImpAdCallFPR4  = Format(, )
  loc_B11166: FLdRfVar var_150
  loc_B11169: CStrVarTmp
  loc_B1116A: FLdRfVar var_F4
  loc_B1116D: StFixedStrFree
  loc_B11171: FFreeVar var_140 = ""
  loc_B11178: LitStr "00000"
  loc_B1117B: FLdRfVar var_FE
  loc_B1117E: StFixedStr
  loc_B11181: FLdRfVar var_140
  loc_B11184: FLdRfVar var_9C
  loc_B11187: CVarRef
  loc_B1118C: ImpAdCallHresult  = CDec()
  loc_B11191: LitI4 1
  loc_B11196: LitI4 1
  loc_B1119B: LitVarStr var_170, "00000000"
  loc_B111A0: FStVarCopyObj var_180
  loc_B111A3: FLdRfVar var_180
  loc_B111A6: FLdRfVar var_140
  loc_B111A9: LitVarI2 var_130, 100
  loc_B111AE: MulVar var_150
  loc_B111B2: FStVar var_160
  loc_B111B6: FLdRfVar var_160
  loc_B111B9: FLdRfVar var_190
  loc_B111BC: ImpAdCallFPR4  = Format(, )
  loc_B111C1: FLdRfVar var_190
  loc_B111C4: CStrVarTmp
  loc_B111C5: FLdRfVar var_10E
  loc_B111C8: StFixedStrFree
  loc_B111CC: FFreeVar var_140 = "": var_160 = "": var_180 = ""
  loc_B111D7: LitStr "568"
  loc_B111DA: FLdRfVar var_D6
  loc_B111DD: LdFixedStr
  loc_B111E0: FStStrNoPop var_194
  loc_B111E3: ConcatStr
  loc_B111E4: FStStrNoPop var_198
  loc_B111E7: FLdRfVar var_CE
  loc_B111EA: LdFixedStr
  loc_B111ED: FStStrNoPop var_19C
  loc_B111F0: ConcatStr
  loc_B111F1: FStStrNoPop var_1A0
  loc_B111F4: FLdRfVar var_DA
  loc_B111F7: LdFixedStr
  loc_B111FA: FStStrNoPop var_1A4
  loc_B111FD: ConcatStr
  loc_B111FE: FStStrNoPop var_1A8
  loc_B11201: FLdRfVar var_F4
  loc_B11204: LdFixedStr
  loc_B11207: FStStrNoPop var_1AC
  loc_B1120A: ConcatStr
  loc_B1120B: FStStrNoPop var_1B0
  loc_B1120E: FLdRfVar var_FE
  loc_B11211: LdFixedStr
  loc_B11214: FStStrNoPop var_1B4
  loc_B11217: ConcatStr
  loc_B11218: FStStrNoPop var_1B8
  loc_B1121B: FLdRfVar var_10E
  loc_B1121E: LdFixedStr
  loc_B11221: FStStrNoPop var_1BC
  loc_B11224: ConcatStr
  loc_B11225: FStStr var_A0
  loc_B11228: FFreeStr var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = ""
  loc_B11241: ILdRf var_A0
  loc_B11244: LitStr "0"
  loc_B11247: ConcatStr
  loc_B11248: FStStrNoPop var_194
  loc_B1124B: LitI4 0
  loc_B11250: FLdRfVar var_B8
  loc_B11253: Ary1StStrCopy
  loc_B11254: FFree1Str var_194
  loc_B11257: LitI4 0
  loc_B1125C: FLdRfVar var_B8
  loc_B1125F: Ary1LdI4
  loc_B11260: ImpAdCallI2 Proc_57_51_B5F020()
  loc_B11265: FStStrNoPop var_194
  loc_B11268: LitI4 1
  loc_B1126D: FLdRfVar var_B8
  loc_B11270: Ary1StStrCopy
  loc_B11271: FFree1Str var_194
  loc_B11274: FLdRfVar var_B8
  loc_B11277: PopTmpLdAdStr var_1C0
  loc_B1127A: FLdRfVar var_88
  loc_B1127D: StAryCopy
  loc_B1127F: ExitProc
End Function

Private Function Proc_57_39_B45150(arg_C, arg_10, arg_14, arg_18) 'B45150
  'Data Table: 437A14
  loc_B44E8C: ILdRf arg_C
  loc_B44E8F: FStStrCopy var_8C
  loc_B44E92: ILdRf arg_10
  loc_B44E95: FStStrCopy var_90
  loc_B44E98: ILdRf arg_14
  loc_B44E9B: FStStrCopy var_94
  loc_B44E9E: ILdRf arg_18
  loc_B44EA1: FStStrCopy var_98
  loc_B44EA4: ILdRf arg_20
  loc_B44EA7: FStStrCopy var_9C
  loc_B44EAA: ILdRf arg_24
  loc_B44EAD: FStStrCopy var_A0
  loc_B44EB0: LitStr "1117"
  loc_B44EB3: FLdRfVar var_A8
  loc_B44EB6: StFixedStr
  loc_B44EB9: ILdRf var_8C
  loc_B44EBC: CVarStr var_15C
  loc_B44EBF: LitI4 1
  loc_B44EC4: LitI4 1
  loc_B44EC9: LitVarStr var_12C, "000000000"
  loc_B44ECE: FStVarCopyObj var_13C
  loc_B44ED1: FLdRfVar var_13C
  loc_B44ED4: FLdRfVar var_90
  loc_B44ED7: CVarRef
  loc_B44EDC: FLdRfVar var_14C
  loc_B44EDF: ImpAdCallFPR4  = Format(, )
  loc_B44EE4: FLdRfVar var_14C
  loc_B44EE7: ConcatVar var_16C
  loc_B44EEB: CStrVarTmp
  loc_B44EEC: FLdRfVar var_C6
  loc_B44EEF: StFixedStrFree
  loc_B44EF3: FFreeVar var_13C = "": var_14C = ""
  loc_B44EFC: LitI4 1
  loc_B44F01: LitI4 1
  loc_B44F06: LitVarStr var_12C, "00"
  loc_B44F0B: FStVarCopyObj var_13C
  loc_B44F0E: FLdRfVar var_13C
  loc_B44F11: FLdRfVar var_94
  loc_B44F14: CVarRef
  loc_B44F19: FLdRfVar var_14C
  loc_B44F1C: ImpAdCallFPR4  = Format(, )
  loc_B44F21: FLdRfVar var_14C
  loc_B44F24: CStrVarTmp
  loc_B44F25: FLdRfVar var_CA
  loc_B44F28: StFixedStrFree
  loc_B44F2C: FFreeVar var_13C = ""
  loc_B44F33: LitI4 1
  loc_B44F38: LitI4 1
  loc_B44F3D: LitVarStr var_12C, "0000000000000"
  loc_B44F42: FStVarCopyObj var_13C
  loc_B44F45: FLdRfVar var_13C
  loc_B44F48: FLdRfVar var_98
  loc_B44F4B: CVarRef
  loc_B44F50: FLdRfVar var_14C
  loc_B44F53: ImpAdCallFPR4  = Format(, )
  loc_B44F58: FLdRfVar var_14C
  loc_B44F5B: CStrVarTmp
  loc_B44F5C: FLdRfVar var_E4
  loc_B44F5F: StFixedStrFree
  loc_B44F63: FFreeVar var_13C = ""
  loc_B44F6A: FLdRfVar var_13C
  loc_B44F6D: FLdRfVar var_9C
  loc_B44F70: CVarRef
  loc_B44F75: ImpAdCallHresult  = CDec()
  loc_B44F7A: LitI4 1
  loc_B44F7F: LitI4 1
  loc_B44F84: LitVarStr var_15C, "0000000000"
  loc_B44F89: FStVarCopyObj var_17C
  loc_B44F8C: FLdRfVar var_17C
  loc_B44F8F: FLdRfVar var_13C
  loc_B44F92: LitVarI2 var_12C, 100
  loc_B44F97: MulVar var_14C
  loc_B44F9B: FStVar var_16C
  loc_B44F9F: FLdRfVar var_16C
  loc_B44FA2: FLdRfVar var_18C
  loc_B44FA5: ImpAdCallFPR4  = Format(, )
  loc_B44FAA: FLdRfVar var_18C
  loc_B44FAD: CStrVarTmp
  loc_B44FAE: FLdRfVar var_F8
  loc_B44FB1: StFixedStrFree
  loc_B44FB5: FFreeVar var_13C = "": var_16C = "": var_17C = ""
  loc_B44FC0: FLdRfVar var_A0
  loc_B44FC3: CVarRef
  loc_B44FC8: ImpAdCallI2 IsDate()
  loc_B44FCD: BranchF loc_B44FD8
  loc_B44FD0: ILdRf var_A0
  loc_B44FD3: CDateStr
  loc_B44FD5: FStFPR8 var_10C
  loc_B44FD8: FLdRfVar var_10C
  loc_B44FDB: CVarRef
  loc_B44FE0: FLdRfVar var_13C
  loc_B44FE3: ImpAdCallFPR4  = Year()
  loc_B44FE8: FLdRfVar var_10C
  loc_B44FEB: CVarRef
  loc_B44FF0: FLdRfVar var_16C
  loc_B44FF3: ImpAdCallFPR4  = Year()
  loc_B44FF8: LitI2_Byte 1
  loc_B44FFA: LitI2_Byte 1
  loc_B44FFC: FLdRfVar var_16C
  loc_B44FFF: CI2Var
  loc_B45000: FLdRfVar var_17C
  loc_B45003: ImpAdCallFPR4  = DateSerial(, , )
  loc_B45008: LitI4 1
  loc_B4500D: LitI4 1
  loc_B45012: FLdRfVar var_10C
  loc_B45015: CVarRef
  loc_B4501A: FLdRfVar var_17C
  loc_B4501D: LitStr "d"
  loc_B45020: FLdRfVar var_18C
  loc_B45023: ImpAdCallFPR4  = DateDiff(, , , , )
  loc_B45028: LitI4 2
  loc_B4502D: FLdRfVar var_13C
  loc_B45030: FLdRfVar var_14C
  loc_B45033: ImpAdCallFPR4  = Right(, )
  loc_B45038: FLdRfVar var_14C
  loc_B4503B: LitI4 1
  loc_B45040: LitI4 1
  loc_B45045: LitVarStr var_1BC, "000"
  loc_B4504A: FStVarCopyObj var_1CC
  loc_B4504D: FLdRfVar var_1CC
  loc_B45050: FLdRfVar var_18C
  loc_B45053: LitVarI2 var_19C, 1
  loc_B45058: AddVar var_1AC
  loc_B4505C: FLdRfVar var_1DC
  loc_B4505F: ImpAdCallFPR4  = Format(, )
  loc_B45064: FLdRfVar var_1DC
  loc_B45067: ConcatVar var_1EC
  loc_B4506B: CStrVarTmp
  loc_B4506C: FLdRfVar var_102
  loc_B4506F: StFixedStrFree
  loc_B45073: FFreeVar var_13C = "": var_16C = "": var_17C = "": var_18C = "": var_1AC = "": var_1CC = "": var_14C = "": var_1DC = ""
  loc_B45088: LitStr "568"
  loc_B4508B: FLdRfVar var_C6
  loc_B4508E: LdFixedStr
  loc_B45091: FStStrNoPop var_1F0
  loc_B45094: ConcatStr
  loc_B45095: FStStrNoPop var_1F4
  loc_B45098: FLdRfVar var_CA
  loc_B4509B: LdFixedStr
  loc_B4509E: FStStrNoPop var_1F8
  loc_B450A1: ConcatStr
  loc_B450A2: FStStrNoPop var_1FC
  loc_B450A5: FLdRfVar var_E4
  loc_B450A8: LdFixedStr
  loc_B450AB: FStStrNoPop var_200
  loc_B450AE: ConcatStr
  loc_B450AF: FStStrNoPop var_204
  loc_B450B2: FLdRfVar var_A8
  loc_B450B5: LdFixedStr
  loc_B450B8: FStStrNoPop var_208
  loc_B450BB: ConcatStr
  loc_B450BC: FStStrNoPop var_20C
  loc_B450BF: FLdUI1
  loc_B450C3: CStrI2
  loc_B450C5: FStStrNoPop var_210
  loc_B450C8: ConcatStr
  loc_B450C9: FStStrNoPop var_214
  loc_B450CC: FLdRfVar var_F8
  loc_B450CF: LdFixedStr
  loc_B450D2: FStStrNoPop var_218
  loc_B450D5: ConcatStr
  loc_B450D6: FStStrNoPop var_21C
  loc_B450D9: FLdRfVar var_102
  loc_B450DC: LdFixedStr
  loc_B450DF: FStStrNoPop var_220
  loc_B450E2: ConcatStr
  loc_B450E3: FStStr var_AC
  loc_B450E6: FFreeStr var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = "": var_218 = "": var_21C = ""
  loc_B45103: ILdRf var_AC
  loc_B45106: ILdRf var_AC
  loc_B45109: ImpAdCallI2 Proc_57_42_ADCABC()
  loc_B4510E: FStStrNoPop var_1F0
  loc_B45111: ConcatStr
  loc_B45112: FStStrNoPop var_1F4
  loc_B45115: LitI4 0
  loc_B4511A: FLdRfVar var_238
  loc_B4511D: Ary1StStrCopy
  loc_B4511E: FFreeStr var_1F0 = ""
  loc_B45125: LitI4 0
  loc_B4512A: FLdRfVar var_238
  loc_B4512D: Ary1LdI4
  loc_B4512E: ImpAdCallI2 Proc_57_51_B5F020()
  loc_B45133: FStStrNoPop var_1F0
  loc_B45136: LitI4 1
  loc_B4513B: FLdRfVar var_238
  loc_B4513E: Ary1StStrCopy
  loc_B4513F: FFree1Str var_1F0
  loc_B45142: FLdRfVar var_238
  loc_B45145: PopTmpLdAdStr var_240
  loc_B45148: FLdRfVar var_88
  loc_B4514B: StAryCopy
  loc_B4514D: ExitProc
End Function

Private Function Proc_57_40_AD4A10(arg_10, arg_14) 'AD4A10
  'Data Table: 437A14
  loc_AD4924: ILdRf arg_10
  loc_AD4927: FStStrCopy var_8C
  loc_AD492A: ILdRf arg_14
  loc_AD492D: FStStrCopy var_90
  loc_AD4930: FLdUI1
  loc_AD4934: CStrI2
  loc_AD4936: FLdRfVar var_92
  loc_AD4939: StFixedStrFree
  loc_AD493D: LitI4 1
  loc_AD4942: LitI4 1
  loc_AD4947: LitVarStr var_D0, "000000000"
  loc_AD494C: FStVarCopyObj var_E0
  loc_AD494F: FLdRfVar var_E0
  loc_AD4952: FLdRfVar var_8C
  loc_AD4955: CVarRef
  loc_AD495A: FLdRfVar var_F0
  loc_AD495D: ImpAdCallFPR4  = Format(, )
  loc_AD4962: FLdRfVar var_F0
  loc_AD4965: CStrVarTmp
  loc_AD4966: FLdRfVar var_A4
  loc_AD4969: StFixedStrFree
  loc_AD496D: FFreeVar var_E0 = ""
  loc_AD4974: LitI4 1
  loc_AD4979: LitI4 1
  loc_AD497E: LitVarStr var_D0, "000000"
  loc_AD4983: FStVarCopyObj var_E0
  loc_AD4986: FLdRfVar var_E0
  loc_AD4989: FLdRfVar var_90
  loc_AD498C: CVarRef
  loc_AD4991: FLdRfVar var_F0
  loc_AD4994: ImpAdCallFPR4  = Format(, )
  loc_AD4999: FLdRfVar var_F0
  loc_AD499C: CStrVarTmp
  loc_AD499D: FLdRfVar var_B0
  loc_AD49A0: StFixedStrFree
  loc_AD49A4: FFreeVar var_E0 = ""
  loc_AD49AB: FLdRfVar var_92
  loc_AD49AE: LdFixedStr
  loc_AD49B1: FStStrNoPop var_110
  loc_AD49B4: FLdRfVar var_A4
  loc_AD49B7: LdFixedStr
  loc_AD49BA: FStStrNoPop var_114
  loc_AD49BD: ConcatStr
  loc_AD49BE: FStStrNoPop var_118
  loc_AD49C1: FLdRfVar var_B0
  loc_AD49C4: LdFixedStr
  loc_AD49C7: FStStrNoPop var_11C
  loc_AD49CA: ConcatStr
  loc_AD49CB: FStStrNoPop var_120
  loc_AD49CE: LitI4 0
  loc_AD49D3: FLdRfVar var_108
  loc_AD49D6: Ary1StStrCopy
  loc_AD49D7: FFreeStr var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_AD49E4: LitI4 0
  loc_AD49E9: FLdRfVar var_108
  loc_AD49EC: Ary1LdI4
  loc_AD49ED: ImpAdCallI2 Proc_57_51_B5F020()
  loc_AD49F2: FStStrNoPop var_110
  loc_AD49F5: LitI4 1
  loc_AD49FA: FLdRfVar var_108
  loc_AD49FD: Ary1StStrCopy
  loc_AD49FE: FFree1Str var_110
  loc_AD4A01: FLdRfVar var_108
  loc_AD4A04: PopTmpLdAdStr var_124
  loc_AD4A07: FLdRfVar var_88
  loc_AD4A0A: StAryCopy
  loc_AD4A0C: ExitProc
  loc_AD4A0D: EqCyR8
End Function

Private Function Proc_57_41_B4AF30(arg_C, arg_10, arg_14) 'B4AF30
  'Data Table: 437A14
  loc_B4AC20: ILdRf arg_C
  loc_B4AC23: FStStrCopy var_8C
  loc_B4AC26: ILdRf arg_10
  loc_B4AC29: FStStrCopy var_90
  loc_B4AC2C: ILdRf arg_14
  loc_B4AC2F: FStStrCopy var_94
  loc_B4AC32: ILdRf arg_1C
  loc_B4AC35: FStStrCopy var_98
  loc_B4AC38: ILdRf arg_24
  loc_B4AC3B: FStStrCopy var_9C
  loc_B4AC3E: ILdRf arg_28
  loc_B4AC41: FStStrCopy var_A0
  loc_B4AC44: FLdRfVar var_F4
  loc_B4AC47: FLdRfVar var_98
  loc_B4AC4A: CVarRef
  loc_B4AC4F: ImpAdCallHresult  = CDec()
  loc_B4AC54: LitI4 1
  loc_B4AC59: LitI4 1
  loc_B4AC5E: LitVarStr var_134, "00000000"
  loc_B4AC63: FStVarCopyObj var_144
  loc_B4AC66: FLdRfVar var_144
  loc_B4AC69: FLdRfVar var_F4
  loc_B4AC6C: LitVarI2 var_104, 100
  loc_B4AC71: MulVar var_114
  loc_B4AC75: FStVar var_124
  loc_B4AC79: FLdRfVar var_124
  loc_B4AC7C: FLdRfVar var_154
  loc_B4AC7F: ImpAdCallFPR4  = Format(, )
  loc_B4AC84: FLdRfVar var_154
  loc_B4AC87: CStrVarTmp
  loc_B4AC88: FLdRfVar var_B0
  loc_B4AC8B: StFixedStrFree
  loc_B4AC8F: FFreeVar var_F4 = "": var_124 = "": var_144 = ""
  loc_B4AC9A: LitI4 2
  loc_B4AC9F: FLdRfVar var_A0
  loc_B4ACA2: CVarRef
  loc_B4ACA7: FLdRfVar var_F4
  loc_B4ACAA: ImpAdCallFPR4  = Right(, )
  loc_B4ACAF: FLdRfVar var_F4
  loc_B4ACB2: CStrVarTmp
  loc_B4ACB3: FLdRfVar var_B4
  loc_B4ACB6: StFixedStrFree
  loc_B4ACBA: FFree1Var var_F4 = ""
  loc_B4ACBD: LitI4 2
  loc_B4ACC2: FLdRfVar var_94
  loc_B4ACC5: CVarRef
  loc_B4ACCA: FLdRfVar var_F4
  loc_B4ACCD: ImpAdCallFPR4  = Right(, )
  loc_B4ACD2: FLdRfVar var_F4
  loc_B4ACD5: CStrVarTmp
  loc_B4ACD6: FLdRfVar var_D4
  loc_B4ACD9: StFixedStrFree
  loc_B4ACDD: FFree1Var var_F4 = ""
  loc_B4ACE0: FLdUI1
  loc_B4ACE4: FStUI1 var_156
  loc_B4ACE8: FLdUI1
  loc_B4ACEC: LitI2_Byte 1
  loc_B4ACEE: CUI1I2
  loc_B4ACF0: EqI2
  loc_B4ACF1: BranchF loc_B4AD16
  loc_B4ACF4: FLdI2 arg_20
  loc_B4ACF7: BranchF loc_B4AD08
  loc_B4ACFA: LitI2_Byte 3
  loc_B4ACFC: CStrUI1
  loc_B4ACFE: FLdRfVar var_B6
  loc_B4AD01: StFixedStrFree
  loc_B4AD05: Branch loc_B4AD13
  loc_B4AD08: LitI2_Byte 1
  loc_B4AD0A: CStrUI1
  loc_B4AD0C: FLdRfVar var_B6
  loc_B4AD0F: StFixedStrFree
  loc_B4AD13: Branch loc_B4ADA9
  loc_B4AD16: FLdUI1
  loc_B4AD1A: LitI2_Byte 2
  loc_B4AD1C: CUI1I2
  loc_B4AD1E: EqI2
  loc_B4AD1F: BranchF loc_B4AD44
  loc_B4AD22: FLdI2 arg_20
  loc_B4AD25: BranchF loc_B4AD36
  loc_B4AD28: LitI2_Byte 4
  loc_B4AD2A: CStrUI1
  loc_B4AD2C: FLdRfVar var_B6
  loc_B4AD2F: StFixedStrFree
  loc_B4AD33: Branch loc_B4AD41
  loc_B4AD36: LitI2_Byte 2
  loc_B4AD38: CStrUI1
  loc_B4AD3A: FLdRfVar var_B6
  loc_B4AD3D: StFixedStrFree
  loc_B4AD41: Branch loc_B4ADA9
  loc_B4AD44: FLdUI1
  loc_B4AD48: LitI2_Byte 3
  loc_B4AD4A: CUI1I2
  loc_B4AD4C: EqI2
  loc_B4AD4D: BranchF loc_B4AD5E
  loc_B4AD50: LitI2_Byte 6
  loc_B4AD52: CStrUI1
  loc_B4AD54: FLdRfVar var_B6
  loc_B4AD57: StFixedStrFree
  loc_B4AD5B: Branch loc_B4ADA9
  loc_B4AD5E: FLdUI1
  loc_B4AD62: LitI2_Byte 4
  loc_B4AD64: CUI1I2
  loc_B4AD66: EqI2
  loc_B4AD67: BranchF loc_B4AD78
  loc_B4AD6A: LitI2_Byte 5
  loc_B4AD6C: CStrUI1
  loc_B4AD6E: FLdRfVar var_B6
  loc_B4AD71: StFixedStrFree
  loc_B4AD75: Branch loc_B4ADA9
  loc_B4AD78: FLdUI1
  loc_B4AD7C: LitI2_Byte 5
  loc_B4AD7E: CUI1I2
  loc_B4AD80: EqI2
  loc_B4AD81: BranchF loc_B4AD92
  loc_B4AD84: LitI2_Byte 7
  loc_B4AD86: CStrUI1
  loc_B4AD88: FLdRfVar var_B6
  loc_B4AD8B: StFixedStrFree
  loc_B4AD8F: Branch loc_B4ADA9
  loc_B4AD92: FLdUI1
  loc_B4AD96: LitI2_Byte 6
  loc_B4AD98: CUI1I2
  loc_B4AD9A: EqI2
  loc_B4AD9B: BranchF loc_B4ADA9
  loc_B4AD9E: LitI2_Byte 8
  loc_B4ADA0: CStrUI1
  loc_B4ADA2: FLdRfVar var_B6
  loc_B4ADA5: StFixedStrFree
  loc_B4ADA9: LitI4 1
  loc_B4ADAE: LitI4 1
  loc_B4ADB3: LitVarStr var_104, "000000"
  loc_B4ADB8: FStVarCopyObj var_F4
  loc_B4ADBB: FLdRfVar var_F4
  loc_B4ADBE: FLdRfVar var_90
  loc_B4ADC1: CVarRef
  loc_B4ADC6: FLdRfVar var_114
  loc_B4ADC9: ImpAdCallFPR4  = Format(, )
  loc_B4ADCE: FLdRfVar var_114
  loc_B4ADD1: CStrVarTmp
  loc_B4ADD2: FLdRfVar var_C2
  loc_B4ADD5: StFixedStrFree
  loc_B4ADD9: FFreeVar var_F4 = ""
  loc_B4ADE0: LitI4 1
  loc_B4ADE5: LitI4 1
  loc_B4ADEA: LitVarStr var_E4, "000000"
  loc_B4ADEF: FStVarCopyObj var_114
  loc_B4ADF2: FLdRfVar var_114
  loc_B4ADF5: LitStr "90000"
  loc_B4ADF8: FLdRfVar var_D4
  loc_B4ADFB: LdFixedStr
  loc_B4ADFE: FStStrNoPop var_15C
  loc_B4AE01: ConcatStr
  loc_B4AE02: CVarStr var_F4
  loc_B4AE05: FLdRfVar var_124
  loc_B4AE08: ImpAdCallFPR4  = Format(, )
  loc_B4AE0D: FLdRfVar var_124
  loc_B4AE10: CStrVarTmp
  loc_B4AE11: FLdRfVar var_D0
  loc_B4AE14: StFixedStrFree
  loc_B4AE18: FFree1Str var_15C
  loc_B4AE1B: FFreeVar var_F4 = "": var_114 = ""
  loc_B4AE24: LitI4 1
  loc_B4AE29: LitI4 1
  loc_B4AE2E: LitVarStr var_104, "000"
  loc_B4AE33: FStVarCopyObj var_F4
  loc_B4AE36: FLdRfVar var_F4
  loc_B4AE39: FLdRfVar var_9C
  loc_B4AE3C: CVarRef
  loc_B4AE41: FLdRfVar var_114
  loc_B4AE44: ImpAdCallFPR4  = Format(, )
  loc_B4AE49: FLdRfVar var_114
  loc_B4AE4C: CStrVarTmp
  loc_B4AE4D: FStStr var_9C
  loc_B4AE50: FFreeVar var_F4 = ""
  loc_B4AE57: LitStr "568"
  loc_B4AE5A: FLdRfVar var_B0
  loc_B4AE5D: LdFixedStr
  loc_B4AE60: FStStrNoPop var_15C
  loc_B4AE63: ConcatStr
  loc_B4AE64: FStStrNoPop var_17C
  loc_B4AE67: FLdRfVar var_B4
  loc_B4AE6A: LdFixedStr
  loc_B4AE6D: FStStrNoPop var_180
  loc_B4AE70: ConcatStr
  loc_B4AE71: FStStrNoPop var_184
  loc_B4AE74: ILdRf var_9C
  loc_B4AE77: ConcatStr
  loc_B4AE78: FStStrNoPop var_188
  loc_B4AE7B: FLdRfVar var_B6
  loc_B4AE7E: LdFixedStr
  loc_B4AE81: FStStrNoPop var_18C
  loc_B4AE84: ConcatStr
  loc_B4AE85: FStStrNoPop var_190
  loc_B4AE88: FLdRfVar var_C2
  loc_B4AE8B: LdFixedStr
  loc_B4AE8E: FStStrNoPop var_194
  loc_B4AE91: ConcatStr
  loc_B4AE92: FStStrNoPop var_198
  loc_B4AE95: FLdRfVar var_D0
  loc_B4AE98: LdFixedStr
  loc_B4AE9B: FStStrNoPop var_19C
  loc_B4AE9E: ConcatStr
  loc_B4AE9F: FStStrNoPop var_1A0
  loc_B4AEA2: LitStr "000000000"
  loc_B4AEA5: ConcatStr
  loc_B4AEA6: FStStrNoPop var_1A4
  loc_B4AEA9: LitI4 0
  loc_B4AEAE: FLdRfVar var_174
  loc_B4AEB1: Ary1StStrCopy
  loc_B4AEB2: FFreeStr var_15C = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = ""
  loc_B4AECD: LitI4 0
  loc_B4AED2: FLdRfVar var_174
  loc_B4AED5: Ary1LdI4
  loc_B4AED6: ImpAdCallI2 Proc_57_48_ADF5D4()
  loc_B4AEDB: FStStrNoPop var_15C
  loc_B4AEDE: LitI4 0
  loc_B4AEE3: FLdRfVar var_174
  loc_B4AEE6: Ary1StStrCopy
  loc_B4AEE7: FFree1Str var_15C
  loc_B4AEEA: LitI4 0
  loc_B4AEEF: FLdRfVar var_174
  loc_B4AEF2: Ary1LdI4
  loc_B4AEF3: ImpAdCallI2 Proc_57_48_ADF5D4()
  loc_B4AEF8: FStStrNoPop var_15C
  loc_B4AEFB: LitI4 0
  loc_B4AF00: FLdRfVar var_174
  loc_B4AF03: Ary1StStrCopy
  loc_B4AF04: FFree1Str var_15C
  loc_B4AF07: LitI4 0
  loc_B4AF0C: FLdRfVar var_174
  loc_B4AF0F: Ary1LdI4
  loc_B4AF10: ImpAdCallI2 Proc_57_51_B5F020()
  loc_B4AF15: FStStrNoPop var_15C
  loc_B4AF18: LitI4 1
  loc_B4AF1D: FLdRfVar var_174
  loc_B4AF20: Ary1StStrCopy
  loc_B4AF21: FFree1Str var_15C
  loc_B4AF24: FLdRfVar var_174
  loc_B4AF27: PopTmpLdAdStr var_1A8
  loc_B4AF2A: FLdRfVar var_88
  loc_B4AF2D: StAryCopy
  loc_B4AF2F: ExitProc
End Function

Private Function Proc_57_42_ADCABC(arg_C) 'ADCABC
  'Data Table: 437A14
  loc_ADC9A0: ILdRf arg_C
  loc_ADC9A3: FStStrCopy var_8C
  loc_ADC9A6: LitI2_Byte &HB
  loc_ADC9A8: CUI1I2
  loc_ADC9AA: LitI4 0
  loc_ADC9AF: FLdRfVar var_B0
  loc_ADC9B2: Ary1StUI1
  loc_ADC9B4: LitI2_Byte &HD
  loc_ADC9B6: CUI1I2
  loc_ADC9B8: LitI4 1
  loc_ADC9BD: FLdRfVar var_B0
  loc_ADC9C0: Ary1StUI1
  loc_ADC9C2: LitI2_Byte &H11
  loc_ADC9C4: CUI1I2
  loc_ADC9C6: LitI4 2
  loc_ADC9CB: FLdRfVar var_B0
  loc_ADC9CE: Ary1StUI1
  loc_ADC9D0: LitI2_Byte &H13
  loc_ADC9D2: CUI1I2
  loc_ADC9D4: LitI4 3
  loc_ADC9D9: FLdRfVar var_B0
  loc_ADC9DC: Ary1StUI1
  loc_ADC9DE: LitI2_Byte &H17
  loc_ADC9E0: CUI1I2
  loc_ADC9E2: LitI4 4
  loc_ADC9E7: FLdRfVar var_B0
  loc_ADC9EA: Ary1StUI1
  loc_ADC9EC: LitI4 0
  loc_ADC9F1: FStR4 var_90
  loc_ADC9F4: LitI4 0
  loc_ADC9F9: FStR4 var_94
  loc_ADC9FC: ILdRf var_8C
  loc_ADC9FF: FnLenStr
  loc_ADCA00: CI2I4
  loc_ADCA01: FLdRfVar var_96
  loc_ADCA04: LitI2_Byte 1
  loc_ADCA06: LitI2_Byte &HFF
  loc_ADCA08: ForStepI2 var_B8
  loc_ADCA0E: ILdRf var_90
  loc_ADCA11: CVarI4
  loc_ADCA15: LitVarI2 var_E8, 1
  loc_ADCA1A: FLdI2 var_96
  loc_ADCA1D: CI4UI1
  loc_ADCA1E: FLdRfVar var_8C
  loc_ADCA21: CVarRef
  loc_ADCA26: FLdRfVar var_F8
  loc_ADCA29: ImpAdCallFPR4  = Mid(, , )
  loc_ADCA2E: FLdRfVar var_F8
  loc_ADCA31: LitI2_Byte &H33
  loc_ADCA33: FLdI2 var_96
  loc_ADCA36: SubI2
  loc_ADCA37: LitI2_Byte 5
  loc_ADCA39: ModI2
  loc_ADCA3A: CI4UI1
  loc_ADCA3B: FLdRfVar var_B0
  loc_ADCA3E: Ary1LdUI1
  loc_ADCA40: CVarUI1
  loc_ADCA44: MulVar var_118
  loc_ADCA48: AddVar var_138
  loc_ADCA4C: CI4Var
  loc_ADCA4E: FStR4 var_90
  loc_ADCA51: FFreeVar var_E8 = "": var_F8 = ""
  loc_ADCA5A: FLdRfVar var_96
  loc_ADCA5D: NextStepI2 var_B8, loc_ADCA0E
  loc_ADCA62: ILdRf var_90
  loc_ADCA65: CR8I4
  loc_ADCA66: ILdRf var_90
  loc_ADCA69: CR8I4
  loc_ADCA6A: LitI2_Byte &H64
  loc_ADCA6C: CR8I2
  loc_ADCA6D: DivR8
  loc_ADCA6E: FnIntR8
  loc_ADCA70: LitI2_Byte &H64
  loc_ADCA72: CR8I2
  loc_ADCA73: MulR8
  loc_ADCA74: SubR4
  loc_ADCA75: ILdRf var_90
  loc_ADCA78: CR8I4
  loc_ADCA79: LitI2_Byte &H64
  loc_ADCA7B: CR8I2
  loc_ADCA7C: DivR8
  loc_ADCA7D: FnIntR8
  loc_ADCA7F: SubR4
  loc_ADCA80: FnAbsR4
  loc_ADCA81: CI4R8
  loc_ADCA82: FStR4 var_94
  loc_ADCA85: LitI4 1
  loc_ADCA8A: LitI4 1
  loc_ADCA8F: LitVarStr var_D8, "000"
  loc_ADCA94: FStVarCopyObj var_E8
  loc_ADCA97: FLdRfVar var_E8
  loc_ADCA9A: FLdRfVar var_94
  loc_ADCA9D: CVarRef
  loc_ADCAA2: FLdRfVar var_F8
  loc_ADCAA5: ImpAdCallFPR4  = Format(, )
  loc_ADCAAA: FLdRfVar var_F8
  loc_ADCAAD: CStrVarTmp
  loc_ADCAAE: FStStr var_88
  loc_ADCAB1: FFreeVar var_E8 = ""
  loc_ADCAB8: ExitProc
End Function

Private Function Proc_57_43_9FB330(arg_C) '9FB330
  'Data Table: 437A14
  loc_9FB310: ILdRf arg_C
  loc_9FB313: FStStrCopy var_8C
  loc_9FB316: ILdRf var_8C
  loc_9FB319: ImpAdCallI2 Proc_57_48_ADF5D4()
  loc_9FB31E: FStStrNoPop var_90
  loc_9FB321: ImpAdCallI2 Proc_57_48_ADF5D4()
  loc_9FB326: FStStr var_88
  loc_9FB329: FFree1Str var_90
  loc_9FB32C: ExitProc
End Function

Private Function Proc_57_44_B002CC(arg_C, arg_10) 'B002CC
  'Data Table: 437A14
  loc_B00150: ILdRf arg_C
  loc_B00153: FStStrCopy var_8C
  loc_B00156: ILdRf arg_10
  loc_B00159: FStStrCopy var_90
  loc_B0015C: FDupVar
  loc_B00162: ILdRf arg_24
  loc_B00165: FStStrCopy var_A4
  loc_B00168: FLdRfVar var_A0
  loc_B0016B: ImpAdCallI2 IsNull()
  loc_B00170: FStI2 var_1F2
  loc_B00173: LitI4 1
  loc_B00178: LitI4 1
  loc_B0017D: LitVarStr var_1B8, "000000.00"
  loc_B00182: FStVarCopyObj var_1C8
  loc_B00185: FLdRfVar var_1C8
  loc_B00188: ILdRf var_A4
  loc_B0018B: CR8Str
  loc_B0018D: CVarR8
  loc_B00191: ImpAdCallI2 Format$(, )
  loc_B00196: FStStr var_1F8
  loc_B00199: LitStr "568"
  loc_B0019C: ILdRf var_90
  loc_B0019F: ConcatStr
  loc_B001A0: FStStrNoPop var_F4
  loc_B001A3: LitI4 1
  loc_B001A8: LitI4 1
  loc_B001AD: LitVarStr var_E0, "00000000"
  loc_B001B2: FStVarCopyObj var_F0
  loc_B001B5: FLdRfVar var_F0
  loc_B001B8: FLdRfVar var_8C
  loc_B001BB: CVarRef
  loc_B001C0: ImpAdCallI2 Format$(, )
  loc_B001C5: FStStrNoPop var_F8
  loc_B001C8: ConcatStr
  loc_B001C9: CVarStr var_178
  loc_B001CC: LitI4 1
  loc_B001D1: LitI4 1
  loc_B001D6: LitVarStr var_108, "yyyymmdd"
  loc_B001DB: FStVarCopyObj var_118
  loc_B001DE: FLdRfVar var_118
  loc_B001E1: FLdRfVar var_A0
  loc_B001E4: ImpAdCallI2 Format$(, )
  loc_B001E9: CVarStr var_158
  loc_B001EC: LitVarStr var_138, "00000000"
  loc_B001F1: FStVarCopyObj var_148
  loc_B001F4: FLdRfVar var_148
  loc_B001F7: FLdI2 var_1F2
  loc_B001FA: CVarBoolI2 var_128
  loc_B001FE: FLdRfVar var_168
  loc_B00201: ImpAdCallFPR4  = IIf(, , )
  loc_B00206: FLdRfVar var_168
  loc_B00209: ConcatVar var_188
  loc_B0020D: LitI4 0
  loc_B00212: LitI4 -1
  loc_B00217: LitI4 1
  loc_B0021C: LitStr vbNullString
  loc_B0021F: LitStr ","
  loc_B00222: FLdZeroAd var_1F8
  loc_B00225: FStStrNoPop var_1CC
  loc_B00228: ImpAdCallI2 Replace(, , , , , )
  loc_B0022D: CVarStr var_1DC
  loc_B00230: ConcatVar var_1EC
  loc_B00234: CStrVarTmp
  loc_B00235: FStStrNoPop var_1F0
  loc_B00238: LitI4 0
  loc_B0023D: FLdRfVar var_BC
  loc_B00240: Ary1StStrCopy
  loc_B00241: FFreeStr var_F4 = "": var_F8 = "": var_1CC = "": var_1F0 = ""
  loc_B0024E: FFreeVar var_F0 = "": var_118 = "": var_128 = "": var_148 = "": var_158 = "": var_178 = "": var_168 = "": var_1A8 = "": var_1C8 = "": var_188 = "": var_1DC = ""
  loc_B00269: LitI4 0
  loc_B0026E: FLdRfVar var_BC
  loc_B00271: Ary1LdI4
  loc_B00272: ImpAdCallI2 Proc_57_48_ADF5D4()
  loc_B00277: FStStrNoPop var_F4
  loc_B0027A: LitI4 0
  loc_B0027F: FLdRfVar var_BC
  loc_B00282: Ary1StStrCopy
  loc_B00283: FFree1Str var_F4
  loc_B00286: LitI4 0
  loc_B0028B: FLdRfVar var_BC
  loc_B0028E: Ary1LdI4
  loc_B0028F: ImpAdCallI2 Proc_57_48_ADF5D4()
  loc_B00294: FStStrNoPop var_F4
  loc_B00297: LitI4 0
  loc_B0029C: FLdRfVar var_BC
  loc_B0029F: Ary1StStrCopy
  loc_B002A0: FFree1Str var_F4
  loc_B002A3: LitI4 0
  loc_B002A8: FLdRfVar var_BC
  loc_B002AB: Ary1LdI4
  loc_B002AC: ImpAdCallI2 Proc_57_51_B5F020()
  loc_B002B1: FStStrNoPop var_F4
  loc_B002B4: LitI4 1
  loc_B002B9: FLdRfVar var_BC
  loc_B002BC: Ary1StStrCopy
  loc_B002BD: FFree1Str var_F4
  loc_B002C0: FLdRfVar var_BC
  loc_B002C3: PopTmpLdAdStr var_1FC
  loc_B002C6: FLdRfVar var_88
  loc_B002C9: StAryCopy
  loc_B002CB: ExitProc
End Function

Private Function Proc_57_45_B2C364(arg_C, arg_10, arg_14) 'B2C364
  'Data Table: 437A14
  loc_B2C0D8: ILdRf arg_C
  loc_B2C0DB: FStAd var_8C 
  loc_B2C0DF: ILdRf arg_10
  loc_B2C0E2: FStStrCopy var_90
  loc_B2C0E5: ILdRf arg_14
  loc_B2C0E8: FStStrCopy var_94
  loc_B2C0EB: FDupVar
  loc_B2C0F1: ILdRf arg_28
  loc_B2C0F4: FStStrCopy var_A8
  loc_B2C0F7: FLdRfVar var_A4
  loc_B2C0FA: ImpAdCallI2 IsNull()
  loc_B2C0FF: FStI2 var_1D6
  loc_B2C102: LitI4 1
  loc_B2C107: LitI4 1
  loc_B2C10C: LitVarStr var_1A0, "000000.00"
  loc_B2C111: FStVarCopyObj var_1B0
  loc_B2C114: FLdRfVar var_1B0
  loc_B2C117: ILdRf var_A8
  loc_B2C11A: CR8Str
  loc_B2C11C: CVarR8
  loc_B2C120: ImpAdCallI2 Format$(, )
  loc_B2C125: FStStr var_1DC
  loc_B2C128: LitStr "568"
  loc_B2C12B: ILdRf var_94
  loc_B2C12E: ConcatStr
  loc_B2C12F: FStStrNoPop var_DC
  loc_B2C132: LitI4 1
  loc_B2C137: LitI4 1
  loc_B2C13C: LitVarStr var_C8, "00000000"
  loc_B2C141: FStVarCopyObj var_D8
  loc_B2C144: FLdRfVar var_D8
  loc_B2C147: FLdRfVar var_90
  loc_B2C14A: CVarRef
  loc_B2C14F: ImpAdCallI2 Format$(, )
  loc_B2C154: FStStrNoPop var_E0
  loc_B2C157: ConcatStr
  loc_B2C158: CVarStr var_160
  loc_B2C15B: LitI4 1
  loc_B2C160: LitI4 1
  loc_B2C165: LitVarStr var_F0, "yyyymmdd"
  loc_B2C16A: FStVarCopyObj var_100
  loc_B2C16D: FLdRfVar var_100
  loc_B2C170: FLdRfVar var_A4
  loc_B2C173: ImpAdCallI2 Format$(, )
  loc_B2C178: CVarStr var_140
  loc_B2C17B: LitVarStr var_120, "00000000"
  loc_B2C180: FStVarCopyObj var_130
  loc_B2C183: FLdRfVar var_130
  loc_B2C186: FLdI2 var_1D6
  loc_B2C189: CVarBoolI2 var_110
  loc_B2C18D: FLdRfVar var_150
  loc_B2C190: ImpAdCallFPR4  = IIf(, , )
  loc_B2C195: FLdRfVar var_150
  loc_B2C198: ConcatVar var_170
  loc_B2C19C: LitI4 0
  loc_B2C1A1: LitI4 -1
  loc_B2C1A6: LitI4 1
  loc_B2C1AB: LitStr vbNullString
  loc_B2C1AE: LitStr ","
  loc_B2C1B1: FLdZeroAd var_1DC
  loc_B2C1B4: FStStrNoPop var_1B4
  loc_B2C1B7: ImpAdCallI2 Replace(, , , , , )
  loc_B2C1BC: CVarStr var_1C4
  loc_B2C1BF: ConcatVar var_1D4
  loc_B2C1C3: CStrVarTmp
  loc_B2C1C4: FStStr var_88
  loc_B2C1C7: FFreeStr var_DC = "": var_E0 = "": var_1B4 = ""
  loc_B2C1D2: FFreeVar var_D8 = "": var_100 = "": var_110 = "": var_130 = "": var_140 = "": var_160 = "": var_150 = "": var_190 = "": var_1B0 = "": var_170 = "": var_1C4 = ""
  loc_B2C1ED: LitStr "Municipalidad de Guaymallén"
  loc_B2C1F0: LitStr "Municipalidad de Lavalle"
  loc_B2C1F3: EqStr
  loc_B2C1F5: LitStr "Municipalidad de Guaymallén"
  loc_B2C1F8: LitStr "Municipalidad de San Carlos"
  loc_B2C1FB: EqStr
  loc_B2C1FD: OrI4
  loc_B2C1FE: BranchF loc_B2C217
  loc_B2C201: ILdRf var_88
  loc_B2C204: ImpAdCallI2 Proc_57_48_ADF5D4()
  loc_B2C209: FStStr var_88
  loc_B2C20C: ILdRf var_88
  loc_B2C20F: ImpAdCallI2 Proc_57_48_ADF5D4()
  loc_B2C214: FStStr var_88
  loc_B2C217: FLdI2 arg_2C
  loc_B2C21A: BranchF loc_B2C362
  loc_B2C21D: FLdRfVar var_DC
  loc_B2C220: FMemLdR4 arg_8(0)
  loc_B2C225: FLdRfVar var_1E8
  loc_B2C228: NewIfNullPr IFileSystem3
  loc_B2C22B: from_stack_2 = IFileSystem3.IFileSystem.GetParentFolderName(from_stack_1v)
  loc_B2C230: FLdRfVar var_1DC
  loc_B2C233: LitStr "CB"
  loc_B2C236: ILdRf var_88
  loc_B2C239: ConcatStr
  loc_B2C23A: FStStrNoPop var_E0
  loc_B2C23D: LitStr ".gif"
  loc_B2C240: ConcatStr
  loc_B2C241: FStStrNoPop var_1B4
  loc_B2C244: ILdRf var_DC
  loc_B2C247: FLdRfVar var_1E8
  loc_B2C24A: NewIfNullPr IFileSystem3
  loc_B2C24D: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B2C252: FLdZeroAd var_1DC
  loc_B2C255: FStStr var_1E4
  loc_B2C258: FFreeStr var_E0 = "": var_DC = ""
  loc_B2C261: ILdRf var_8C
  loc_B2C264: FStAd var_1EC 
  loc_B2C268: LitVar_FALSE
  loc_B2C26C: PopAdLdVar
  loc_B2C26D: FLdPr var_1EC
  loc_B2C270: LateIdSt
  loc_B2C275: ILdRf var_88
  loc_B2C278: CVarStr var_B8
  loc_B2C27B: PopAdLdVar
  loc_B2C27C: FLdPr var_1EC
  loc_B2C27F: LateIdSt
  loc_B2C284: LitVarI4
  loc_B2C28C: PopAdLdVar
  loc_B2C28D: FLdPr var_1EC
  loc_B2C290: LateIdSt
  loc_B2C295: LitVarI2 var_B8, 6
  loc_B2C29A: PopAdLdVar
  loc_B2C29B: FLdPr var_1EC
  loc_B2C29E: LateIdSt
  loc_B2C2A3: LitVarI2 var_B8, 7
  loc_B2C2A8: PopAdLdVar
  loc_B2C2A9: FLdPr var_1EC
  loc_B2C2AC: LateIdSt
  loc_B2C2B1: LitVarI2 var_B8, 30
  loc_B2C2B6: PopAdLdVar
  loc_B2C2B7: FLdPr var_1EC
  loc_B2C2BA: LateIdSt
  loc_B2C2BF: LitVarI2 var_B8, 7
  loc_B2C2C4: PopAdLdVar
  loc_B2C2C5: FLdPr var_1EC
  loc_B2C2C8: LateIdSt
  loc_B2C2CD: LitVarI2 var_B8, 30
  loc_B2C2D2: PopAdLdVar
  loc_B2C2D3: FLdPr var_1EC
  loc_B2C2D6: LateIdSt
  loc_B2C2DB: FLdRfVar var_1D6
  loc_B2C2DE: ILdRf var_1E4
  loc_B2C2E1: FLdRfVar var_1E8
  loc_B2C2E4: NewIfNullPr IFileSystem3
  loc_B2C2E7: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B2C2EC: FLdI2 var_1D6
  loc_B2C2EF: BranchF loc_B2C321
  loc_B2C2F2: LitI2_Byte &HFF
  loc_B2C2F4: ILdRf var_1E4
  loc_B2C2F7: FLdRfVar var_1E8
  loc_B2C2FA: NewIfNullPr IFileSystem3
  loc_B2C2FD: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_B2C302: FLdRfVar var_1D6
  loc_B2C305: ILdRf var_1E4
  loc_B2C308: FLdRfVar var_1E8
  loc_B2C30B: NewIfNullPr IFileSystem3
  loc_B2C30E: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B2C313: FLdI2 var_1D6
  loc_B2C316: BranchF loc_B2C321
  loc_B2C319: ImpAdCallFPR4 DoEvents()
  loc_B2C31E: Branch loc_B2C302
  loc_B2C321: FLdRfVar var_1E4
  loc_B2C324: CDargRef
  loc_B2C328: FLdPr var_1EC
  loc_B2C32B: LateIdCallLdVar
  loc_B2C335: CI2Var
  loc_B2C336: FStI2 var_1DE
  loc_B2C339: FFree1Var var_D8 = ""
  loc_B2C33C: FLdRfVar var_1D6
  loc_B2C33F: ILdRf var_1E4
  loc_B2C342: FLdRfVar var_1E8
  loc_B2C345: NewIfNullPr IFileSystem3
  loc_B2C348: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B2C34D: FLdI2 var_1D6
  loc_B2C350: NotI4
  loc_B2C351: BranchF loc_B2C35C
  loc_B2C354: ImpAdCallFPR4 DoEvents()
  loc_B2C359: Branch loc_B2C33C
  loc_B2C35C: LitNothing
  loc_B2C35E: FStAd var_1EC 
  loc_B2C362: ExitProc
  loc_B2C363: SetLastSystemError
End Function

Private Function Proc_57_46_AF4DF4(arg_C, arg_10) 'AF4DF4
  'Data Table: 437A14
  loc_AF4CB0: ILdRf arg_C
  loc_AF4CB3: FStStrCopy var_8C
  loc_AF4CB6: ILdRf arg_10
  loc_AF4CB9: FStStrCopy var_90
  loc_AF4CBC: FDupVar
  loc_AF4CC2: ILdRf arg_24
  loc_AF4CC5: FStStrCopy var_A4
  loc_AF4CC8: FLdRfVar var_A0
  loc_AF4CCB: ImpAdCallI2 IsNull()
  loc_AF4CD0: FStI2 var_1F2
  loc_AF4CD3: LitI4 1
  loc_AF4CD8: LitI4 1
  loc_AF4CDD: LitVarStr var_1B8, "000000.00"
  loc_AF4CE2: FStVarCopyObj var_1C8
  loc_AF4CE5: FLdRfVar var_1C8
  loc_AF4CE8: ILdRf var_A4
  loc_AF4CEB: CR8Str
  loc_AF4CED: CVarR8
  loc_AF4CF1: ImpAdCallI2 Format$(, )
  loc_AF4CF6: FStStr var_1F8
  loc_AF4CF9: LitStr "568"
  loc_AF4CFC: ILdRf var_90
  loc_AF4CFF: ConcatStr
  loc_AF4D00: FStStrNoPop var_F4
  loc_AF4D03: LitI4 1
  loc_AF4D08: LitI4 1
  loc_AF4D0D: LitVarStr var_E0, "00000000"
  loc_AF4D12: FStVarCopyObj var_F0
  loc_AF4D15: FLdRfVar var_F0
  loc_AF4D18: FLdRfVar var_8C
  loc_AF4D1B: CVarRef
  loc_AF4D20: ImpAdCallI2 Format$(, )
  loc_AF4D25: FStStrNoPop var_F8
  loc_AF4D28: ConcatStr
  loc_AF4D29: CVarStr var_178
  loc_AF4D2C: LitI4 1
  loc_AF4D31: LitI4 1
  loc_AF4D36: LitVarStr var_108, "yyyymmdd"
  loc_AF4D3B: FStVarCopyObj var_118
  loc_AF4D3E: FLdRfVar var_118
  loc_AF4D41: FLdRfVar var_A0
  loc_AF4D44: ImpAdCallI2 Format$(, )
  loc_AF4D49: CVarStr var_158
  loc_AF4D4C: LitVarStr var_138, "00000000"
  loc_AF4D51: FStVarCopyObj var_148
  loc_AF4D54: FLdRfVar var_148
  loc_AF4D57: FLdI2 var_1F2
  loc_AF4D5A: CVarBoolI2 var_128
  loc_AF4D5E: FLdRfVar var_168
  loc_AF4D61: ImpAdCallFPR4  = IIf(, , )
  loc_AF4D66: FLdRfVar var_168
  loc_AF4D69: ConcatVar var_188
  loc_AF4D6D: LitI4 0
  loc_AF4D72: LitI4 -1
  loc_AF4D77: LitI4 1
  loc_AF4D7C: LitStr vbNullString
  loc_AF4D7F: LitStr ","
  loc_AF4D82: FLdZeroAd var_1F8
  loc_AF4D85: FStStrNoPop var_1CC
  loc_AF4D88: ImpAdCallI2 Replace(, , , , , )
  loc_AF4D8D: CVarStr var_1DC
  loc_AF4D90: ConcatVar var_1EC
  loc_AF4D94: CStrVarTmp
  loc_AF4D95: FStStrNoPop var_1F0
  loc_AF4D98: LitI4 0
  loc_AF4D9D: FLdRfVar var_BC
  loc_AF4DA0: Ary1StStrCopy
  loc_AF4DA1: FFreeStr var_F4 = "": var_F8 = "": var_1CC = "": var_1F0 = ""
  loc_AF4DAE: FFreeVar var_F0 = "": var_118 = "": var_128 = "": var_148 = "": var_158 = "": var_178 = "": var_168 = "": var_1A8 = "": var_1C8 = "": var_188 = "": var_1DC = ""
  loc_AF4DC9: LitI4 0
  loc_AF4DCE: FLdRfVar var_BC
  loc_AF4DD1: Ary1LdI4
  loc_AF4DD2: ImpAdCallI2 Proc_57_51_B5F020()
  loc_AF4DD7: FStStrNoPop var_F4
  loc_AF4DDA: LitI4 1
  loc_AF4DDF: FLdRfVar var_BC
  loc_AF4DE2: Ary1StStrCopy
  loc_AF4DE3: FFree1Str var_F4
  loc_AF4DE6: FLdRfVar var_BC
  loc_AF4DE9: PopTmpLdAdStr var_1FC
  loc_AF4DEC: FLdRfVar var_88
  loc_AF4DEF: StAryCopy
  loc_AF4DF1: ExitProc
  loc_AF4DF2: ExitProc
End Function

Private Function Proc_57_47_AF51EC(arg_C, arg_10) 'AF51EC
  'Data Table: 437A14
  loc_AF50A8: ILdRf arg_C
  loc_AF50AB: FStStrCopy var_8C
  loc_AF50AE: ILdRf arg_10
  loc_AF50B1: FStStrCopy var_90
  loc_AF50B4: FDupVar
  loc_AF50BA: ILdRf arg_24
  loc_AF50BD: FStStrCopy var_A4
  loc_AF50C0: FLdRfVar var_A0
  loc_AF50C3: ImpAdCallI2 IsNull()
  loc_AF50C8: FStI2 var_1F2
  loc_AF50CB: LitI4 1
  loc_AF50D0: LitI4 1
  loc_AF50D5: LitVarStr var_1B8, "000000.00"
  loc_AF50DA: FStVarCopyObj var_1C8
  loc_AF50DD: FLdRfVar var_1C8
  loc_AF50E0: ILdRf var_A4
  loc_AF50E3: CR8Str
  loc_AF50E5: CVarR8
  loc_AF50E9: ImpAdCallI2 Format$(, )
  loc_AF50EE: FStStr var_1F8
  loc_AF50F1: LitStr "568"
  loc_AF50F4: ILdRf var_90
  loc_AF50F7: ConcatStr
  loc_AF50F8: FStStrNoPop var_F4
  loc_AF50FB: LitI4 1
  loc_AF5100: LitI4 1
  loc_AF5105: LitVarStr var_E0, "00000000"
  loc_AF510A: FStVarCopyObj var_F0
  loc_AF510D: FLdRfVar var_F0
  loc_AF5110: FLdRfVar var_8C
  loc_AF5113: CVarRef
  loc_AF5118: ImpAdCallI2 Format$(, )
  loc_AF511D: FStStrNoPop var_F8
  loc_AF5120: ConcatStr
  loc_AF5121: CVarStr var_178
  loc_AF5124: LitI4 1
  loc_AF5129: LitI4 1
  loc_AF512E: LitVarStr var_108, "yyyymmdd"
  loc_AF5133: FStVarCopyObj var_118
  loc_AF5136: FLdRfVar var_118
  loc_AF5139: FLdRfVar var_A0
  loc_AF513C: ImpAdCallI2 Format$(, )
  loc_AF5141: CVarStr var_158
  loc_AF5144: LitVarStr var_138, "00000000"
  loc_AF5149: FStVarCopyObj var_148
  loc_AF514C: FLdRfVar var_148
  loc_AF514F: FLdI2 var_1F2
  loc_AF5152: CVarBoolI2 var_128
  loc_AF5156: FLdRfVar var_168
  loc_AF5159: ImpAdCallFPR4  = IIf(, , )
  loc_AF515E: FLdRfVar var_168
  loc_AF5161: ConcatVar var_188
  loc_AF5165: LitI4 0
  loc_AF516A: LitI4 -1
  loc_AF516F: LitI4 1
  loc_AF5174: LitStr vbNullString
  loc_AF5177: LitStr ","
  loc_AF517A: FLdZeroAd var_1F8
  loc_AF517D: FStStrNoPop var_1CC
  loc_AF5180: ImpAdCallI2 Replace(, , , , , )
  loc_AF5185: CVarStr var_1DC
  loc_AF5188: ConcatVar var_1EC
  loc_AF518C: CStrVarTmp
  loc_AF518D: FStStrNoPop var_1F0
  loc_AF5190: LitI4 0
  loc_AF5195: FLdRfVar var_BC
  loc_AF5198: Ary1StStrCopy
  loc_AF5199: FFreeStr var_F4 = "": var_F8 = "": var_1CC = "": var_1F0 = ""
  loc_AF51A6: FFreeVar var_F0 = "": var_118 = "": var_128 = "": var_148 = "": var_158 = "": var_178 = "": var_168 = "": var_1A8 = "": var_1C8 = "": var_188 = "": var_1DC = ""
  loc_AF51C1: LitI4 0
  loc_AF51C6: FLdRfVar var_BC
  loc_AF51C9: Ary1LdI4
  loc_AF51CA: ImpAdCallI2 Proc_57_51_B5F020()
  loc_AF51CF: FStStrNoPop var_F4
  loc_AF51D2: LitI4 1
  loc_AF51D7: FLdRfVar var_BC
  loc_AF51DA: Ary1StStrCopy
  loc_AF51DB: FFree1Str var_F4
  loc_AF51DE: FLdRfVar var_BC
  loc_AF51E1: PopTmpLdAdStr var_1FC
  loc_AF51E4: FLdRfVar var_88
  loc_AF51E7: StAryCopy
  loc_AF51E9: ExitProc
  loc_AF51EA: ILdRf var_2301
End Function

Private Function Proc_57_48_ADF5D4(arg_C) 'ADF5D4
  'Data Table: 437A14
  loc_ADF48C: ILdRf arg_C
  loc_ADF48F: FStStrCopy var_8C
  loc_ADF492: LitI4 1
  loc_ADF497: LitI4 3
  loc_ADF49C: LitI4 1
  loc_ADF4A1: ILdRf var_8C
  loc_ADF4A4: FnLenStr
  loc_ADF4A5: FLdRfVar var_90
  loc_ADF4A8: Redim
  loc_ADF4B2: LitStr "1357935793579357935793579357935793579357935793579357935793579357935793579357935793579"
  loc_ADF4B5: FStStrCopy var_94
  loc_ADF4B8: LitI2_Byte 1
  loc_ADF4BA: FLdRfVar var_96
  loc_ADF4BD: ILdRf var_8C
  loc_ADF4C0: FnLenStr
  loc_ADF4C1: CI2I4
  loc_ADF4C2: ForI2 var_9E
  loc_ADF4C8: LitVarI2 var_D0, 1
  loc_ADF4CD: FLdI2 var_96
  loc_ADF4D0: CI4UI1
  loc_ADF4D1: FLdRfVar var_8C
  loc_ADF4D4: CVarRef
  loc_ADF4D9: FLdRfVar var_E0
  loc_ADF4DC: ImpAdCallFPR4  = Mid(, , )
  loc_ADF4E1: FLdRfVar var_E0
  loc_ADF4E4: CStrVarTmp
  loc_ADF4E5: FStStrNoPop var_E4
  loc_ADF4E8: LitI4 1
  loc_ADF4ED: FLdI2 var_96
  loc_ADF4F0: CI4UI1
  loc_ADF4F1: ILdRf var_90
  loc_ADF4F4: AryLdPr
  loc_ADF4F7: MemStStrCopy
  loc_ADF4FB: FFree1Str var_E4
  loc_ADF4FE: FFreeVar var_D0 = ""
  loc_ADF505: LitVarI2 var_D0, 1
  loc_ADF50A: FLdI2 var_96
  loc_ADF50D: CI4UI1
  loc_ADF50E: FLdRfVar var_94
  loc_ADF511: CVarRef
  loc_ADF516: FLdRfVar var_E0
  loc_ADF519: ImpAdCallFPR4  = Mid(, , )
  loc_ADF51E: FLdRfVar var_E0
  loc_ADF521: CStrVarTmp
  loc_ADF522: FStStrNoPop var_E4
  loc_ADF525: LitI4 2
  loc_ADF52A: FLdI2 var_96
  loc_ADF52D: CI4UI1
  loc_ADF52E: ILdRf var_90
  loc_ADF531: AryLdPr
  loc_ADF534: MemStStrCopy
  loc_ADF538: FFree1Str var_E4
  loc_ADF53B: FFreeVar var_D0 = ""
  loc_ADF542: LitI4 1
  loc_ADF547: FLdI2 var_96
  loc_ADF54A: CI4UI1
  loc_ADF54B: ILdRf var_90
  loc_ADF54E: AryLdPr
  loc_ADF551: MemLdStr global_0
  loc_ADF554: CI2Str
  loc_ADF556: LitI4 2
  loc_ADF55B: FLdI2 var_96
  loc_ADF55E: CI4UI1
  loc_ADF55F: ILdRf var_90
  loc_ADF562: AryLdPr
  loc_ADF565: MemLdStr global_0
  loc_ADF568: CI2Str
  loc_ADF56A: MulI2
  loc_ADF56B: CStrUI1
  loc_ADF56D: FStStrNoPop var_E4
  loc_ADF570: LitI4 3
  loc_ADF575: FLdI2 var_96
  loc_ADF578: CI4UI1
  loc_ADF579: ILdRf var_90
  loc_ADF57C: AryLdPr
  loc_ADF57F: MemStStrCopy
  loc_ADF583: FFree1Str var_E4
  loc_ADF586: FLdI2 var_98
  loc_ADF589: LitI4 3
  loc_ADF58E: FLdI2 var_96
  loc_ADF591: CI4UI1
  loc_ADF592: ILdRf var_90
  loc_ADF595: AryLdPr
  loc_ADF598: MemLdStr global_0
  loc_ADF59B: CI2Str
  loc_ADF59D: AddI2
  loc_ADF59E: FStI2 var_98
  loc_ADF5A1: FLdRfVar var_96
  loc_ADF5A4: NextI2 var_9E, loc_ADF4C8
  loc_ADF5A9: FLdI2 var_98
  loc_ADF5AC: CR8I2
  loc_ADF5AD: LitI2_Byte 2
  loc_ADF5AF: CR8I2
  loc_ADF5B0: DivR8
  loc_ADF5B1: FnIntR8
  loc_ADF5B3: CI4R8
  loc_ADF5B4: LitI4 &HA
  loc_ADF5B9: ModI4
  loc_ADF5BA: CI2I4
  loc_ADF5BB: FStI2 var_9A
  loc_ADF5BE: ILdRf var_8C
  loc_ADF5C1: FLdI2 var_9A
  loc_ADF5C4: CStrUI1
  loc_ADF5C6: FStStrNoPop var_E4
  loc_ADF5C9: ConcatStr
  loc_ADF5CA: FStStr var_88
  loc_ADF5CD: FFree1Str var_E4
  loc_ADF5D0: ExitProc
  loc_ADF5D1: FLdFPR8 var_C4
End Function

Private Function Proc_57_49_B21654(arg_C) 'B21654
  'Data Table: 437A14
  loc_B213F4: ILdRf arg_C
  loc_B213F7: FStStrCopy var_8C
  loc_B213FA: LitVarI2 var_C4, 11
  loc_B213FF: LitI4 0
  loc_B21404: FLdRfVar var_A8
  loc_B21407: Ary1StVar
  loc_B21408: LitVarI2 var_C4, 13
  loc_B2140D: LitI4 1
  loc_B21412: FLdRfVar var_A8
  loc_B21415: Ary1StVar
  loc_B21416: LitVarI2 var_C4, 17
  loc_B2141B: LitI4 2
  loc_B21420: FLdRfVar var_A8
  loc_B21423: Ary1StVar
  loc_B21424: LitVarI2 var_C4, 19
  loc_B21429: LitI4 3
  loc_B2142E: FLdRfVar var_A8
  loc_B21431: Ary1StVar
  loc_B21432: LitVarI2 var_C4, 23
  loc_B21437: LitI4 4
  loc_B2143C: FLdRfVar var_A8
  loc_B2143F: Ary1StVar
  loc_B21440: LitI4 0
  loc_B21445: FStR4 var_B0
  loc_B21448: FLdRfVar var_8C
  loc_B2144B: CVarRef
  loc_B21450: FLdRfVar var_D4
  loc_B21453: ImpAdCallFPR4  = Ucase()
  loc_B21458: FLdRfVar var_D4
  loc_B2145B: CStrVarTmp
  loc_B2145C: FStStr var_8C
  loc_B2145F: FFree1Var var_D4 = ""
  loc_B21462: ILdRf var_8C
  loc_B21465: FnLenStr
  loc_B21466: CI2I4
  loc_B21467: FLdRfVar var_8E
  loc_B2146A: LitI2_Byte 1
  loc_B2146C: LitI2_Byte &HFF
  loc_B2146E: ForStepI2 var_D8
  loc_B21474: LitVarI2 var_D4, 1
  loc_B21479: FLdI2 var_8E
  loc_B2147C: CI4UI1
  loc_B2147D: ILdRf var_8C
  loc_B21480: ImpAdCallI2 Mid$(, , )
  loc_B21485: FStStrNoPop var_DC
  loc_B21488: CUI1Str
  loc_B2148A: FStUI1 var_B2
  loc_B2148E: FFree1Str var_DC
  loc_B21491: FFree1Var var_D4 = ""
  loc_B21494: FLdUI1
  loc_B21498: CVarUI1
  loc_B2149C: ILdRf var_8C
  loc_B2149F: FnLenStr
  loc_B214A0: FLdI2 var_8E
  loc_B214A3: CI4UI1
  loc_B214A4: SubI4
  loc_B214A5: LitI4 5
  loc_B214AA: ModI4
  loc_B214AB: FLdRfVar var_A8
  loc_B214AE: Ary1LdRfVar
  loc_B214B0: MulVar var_D4
  loc_B214B4: CUI1Var
  loc_B214B6: FStUI1 var_B4
  loc_B214BA: ILdRf var_B0
  loc_B214BD: FLdUI1
  loc_B214C1: CI4UI1
  loc_B214C2: AddI4
  loc_B214C3: FStR4 var_B0
  loc_B214C6: FLdRfVar var_8E
  loc_B214C9: NextStepI2 var_D8, loc_B21474
  loc_B214CE: ILdRf var_B0
  loc_B214D1: CStrI4
  loc_B214D3: FStStrNoPop var_DC
  loc_B214D6: FnLenStr
  loc_B214D7: FStR4 var_E0
  loc_B214DA: FFree1Str var_DC
  loc_B214DD: ILdRf var_E0
  loc_B214E0: LitI4 4
  loc_B214E5: EqI4
  loc_B214E6: BranchF loc_B21575
  loc_B214E9: LitVarI2 var_D4, 2
  loc_B214EE: LitI4 1
  loc_B214F3: ILdRf var_B0
  loc_B214F6: CStrI4
  loc_B214F8: FStStrNoPop var_DC
  loc_B214FB: ImpAdCallI2 Mid$(, , )
  loc_B21500: FStStr var_160
  loc_B21503: LitVarI2 var_108, 2
  loc_B21508: LitI4 3
  loc_B2150D: ILdRf var_B0
  loc_B21510: CStrI4
  loc_B21512: FStStrNoPop var_E8
  loc_B21515: ImpAdCallI2 Mid$(, , )
  loc_B2151A: FStStr var_164
  loc_B2151D: LitI4 1
  loc_B21522: LitI4 1
  loc_B21527: LitVarStr var_13C, "00"
  loc_B2152C: FStVarCopyObj var_14C
  loc_B2152F: FLdRfVar var_14C
  loc_B21532: FLdZeroAd var_160
  loc_B21535: FStStrNoPop var_E4
  loc_B21538: CI2Str
  loc_B2153A: FLdZeroAd var_164
  loc_B2153D: FStStrNoPop var_10C
  loc_B21540: CI2Str
  loc_B21542: SubI2
  loc_B21543: FnAbsI2
  loc_B21544: CVarI2 var_12C
  loc_B21547: FLdRfVar var_15C
  loc_B2154A: ImpAdCallFPR4  = Format(, )
  loc_B2154F: FLdRfVar var_15C
  loc_B21552: CStrVarTmp
  loc_B21553: FStStr var_88
  loc_B21556: FFreeStr var_DC = "": var_E4 = "": var_E8 = "": var_10C = "": var_160 = ""
  loc_B21565: FFreeVar var_D4 = "": var_108 = "": var_12C = "": var_14C = ""
  loc_B21572: Branch loc_B21650
  loc_B21575: ILdRf var_E0
  loc_B21578: LitI4 3
  loc_B2157D: EqI4
  loc_B2157E: BranchF loc_B2160D
  loc_B21581: LitVarI2 var_D4, 1
  loc_B21586: LitI4 1
  loc_B2158B: ILdRf var_B0
  loc_B2158E: CStrI4
  loc_B21590: FStStrNoPop var_DC
  loc_B21593: ImpAdCallI2 Mid$(, , )
  loc_B21598: FStStr var_160
  loc_B2159B: LitVarI2 var_108, 2
  loc_B215A0: LitI4 2
  loc_B215A5: ILdRf var_B0
  loc_B215A8: CStrI4
  loc_B215AA: FStStrNoPop var_E8
  loc_B215AD: ImpAdCallI2 Mid$(, , )
  loc_B215B2: FStStr var_164
  loc_B215B5: LitI4 1
  loc_B215BA: LitI4 1
  loc_B215BF: LitVarStr var_13C, "00"
  loc_B215C4: FStVarCopyObj var_14C
  loc_B215C7: FLdRfVar var_14C
  loc_B215CA: FLdZeroAd var_160
  loc_B215CD: FStStrNoPop var_E4
  loc_B215D0: CI2Str
  loc_B215D2: FLdZeroAd var_164
  loc_B215D5: FStStrNoPop var_10C
  loc_B215D8: CI2Str
  loc_B215DA: SubI2
  loc_B215DB: FnAbsI2
  loc_B215DC: CVarI2 var_12C
  loc_B215DF: FLdRfVar var_15C
  loc_B215E2: ImpAdCallFPR4  = Format(, )
  loc_B215E7: FLdRfVar var_15C
  loc_B215EA: CStrVarTmp
  loc_B215EB: FStStr var_88
  loc_B215EE: FFreeStr var_DC = "": var_E4 = "": var_E8 = "": var_10C = "": var_160 = ""
  loc_B215FD: FFreeVar var_D4 = "": var_108 = "": var_12C = "": var_14C = ""
  loc_B2160A: Branch loc_B21650
  loc_B2160D: ILdRf var_E0
  loc_B21610: LitI4 1
  loc_B21615: EqI4
  loc_B21616: BranchT loc_B21625
  loc_B21619: ILdRf var_E0
  loc_B2161C: LitI4 2
  loc_B21621: EqI4
  loc_B21622: BranchF loc_B21650
  loc_B21625: LitStr "0"
  loc_B21628: LitVarI2 var_D4, 1
  loc_B2162D: LitI4 1
  loc_B21632: ILdRf var_B0
  loc_B21635: CStrI4
  loc_B21637: FStStrNoPop var_DC
  loc_B2163A: ImpAdCallI2 Mid$(, , )
  loc_B2163F: FStStrNoPop var_E4
  loc_B21642: ConcatStr
  loc_B21643: FStStr var_88
  loc_B21646: FFreeStr var_DC = ""
  loc_B2164D: FFree1Var var_D4 = ""
  loc_B21650: ExitProc
End Function

Private Function Proc_57_50_B0FBF8(arg_C) 'B0FBF8
  'Data Table: 437A14
  loc_B0F9F0: ILdRf arg_C
  loc_B0F9F3: FStStrCopy var_8C
  loc_B0F9F6: LitVarI2 var_D0, 11
  loc_B0F9FB: LitI4 0
  loc_B0FA00: FLdRfVar var_A4
  loc_B0FA03: Ary1StVar
  loc_B0FA04: LitVarI2 var_D0, 13
  loc_B0FA09: LitI4 1
  loc_B0FA0E: FLdRfVar var_A4
  loc_B0FA11: Ary1StVar
  loc_B0FA12: LitVarI2 var_D0, 17
  loc_B0FA17: LitI4 2
  loc_B0FA1C: FLdRfVar var_A4
  loc_B0FA1F: Ary1StVar
  loc_B0FA20: LitVarI2 var_D0, 19
  loc_B0FA25: LitI4 3
  loc_B0FA2A: FLdRfVar var_A4
  loc_B0FA2D: Ary1StVar
  loc_B0FA2E: LitVarI2 var_D0, 23
  loc_B0FA33: LitI4 4
  loc_B0FA38: FLdRfVar var_A4
  loc_B0FA3B: Ary1StVar
  loc_B0FA3C: LitI4 0
  loc_B0FA41: FStR4 var_AC
  loc_B0FA44: LitI2_Byte 0
  loc_B0FA46: FStI2 var_AE
  loc_B0FA49: FLdRfVar var_8C
  loc_B0FA4C: CVarRef
  loc_B0FA51: FLdRfVar var_E0
  loc_B0FA54: ImpAdCallFPR4  = Ucase()
  loc_B0FA59: FLdRfVar var_E0
  loc_B0FA5C: CStrVarTmp
  loc_B0FA5D: FStStr var_8C
  loc_B0FA60: FFree1Var var_E0 = ""
  loc_B0FA63: ILdRf var_8C
  loc_B0FA66: FnLenStr
  loc_B0FA67: CI2I4
  loc_B0FA68: FLdRfVar var_B0
  loc_B0FA6B: LitI2_Byte 1
  loc_B0FA6D: LitI2_Byte &HFF
  loc_B0FA6F: ForStepI2 var_E4
  loc_B0FA75: LitVarI2 var_E0, 1
  loc_B0FA7A: FLdI2 var_B0
  loc_B0FA7D: CI4UI1
  loc_B0FA7E: ILdRf var_8C
  loc_B0FA81: ImpAdCallI2 Mid$(, , )
  loc_B0FA86: FStStr var_B4
  loc_B0FA89: FFree1Var var_E0 = ""
  loc_B0FA8C: ILdRf var_B4
  loc_B0FA8F: LitStr "9"
  loc_B0FA92: GtStr
  loc_B0FA94: ILdRf var_B4
  loc_B0FA97: LitStr "0"
  loc_B0FA9A: LtStr
  loc_B0FA9C: OrI4
  loc_B0FA9D: BranchF loc_B0FAB4
  loc_B0FAA0: ILdRf var_B4
  loc_B0FAA3: ImpAdCallI2 Asc()
  loc_B0FAA8: CI4UI1
  loc_B0FAA9: ImpAdCallI2 Chr$()
  loc_B0FAAE: FStStr var_B4
  loc_B0FAB1: Branch loc_B0FACE
  loc_B0FAB4: ILdRf var_B4
  loc_B0FAB7: ImpAdCallI2 Asc()
  loc_B0FABC: LitStr "0"
  loc_B0FABF: ImpAdCallI2 Asc()
  loc_B0FAC4: SubI2
  loc_B0FAC5: CI4UI1
  loc_B0FAC6: ImpAdCallI2 Chr$()
  loc_B0FACB: FStStr var_B4
  loc_B0FACE: ILdRf var_B4
  loc_B0FAD1: LitStr "P"
  loc_B0FAD4: EqStr
  loc_B0FAD6: BranchF loc_B0FADF
  loc_B0FAD9: LitStr "F"
  loc_B0FADC: FStStrCopy var_B4
  loc_B0FADF: ILdRf var_AC
  loc_B0FAE2: CVarI4
  loc_B0FAE6: FLdI2 var_AE
  loc_B0FAE9: CI4UI1
  loc_B0FAEA: FLdRfVar var_A4
  loc_B0FAED: Ary1LdRfVar
  loc_B0FAEF: ILdRf var_B4
  loc_B0FAF2: ImpAdCallI2 Asc()
  loc_B0FAF7: CVarI2 var_D0
  loc_B0FAFA: MulVar var_E0
  loc_B0FAFE: AddVar var_104
  loc_B0FB02: CI4Var
  loc_B0FB04: FStR4 var_AC
  loc_B0FB07: FFree1Var var_104 = ""
  loc_B0FB0A: FLdI2 var_AE
  loc_B0FB0D: LitI2_Byte 4
  loc_B0FB0F: EqI2
  loc_B0FB10: BranchF loc_B0FB1B
  loc_B0FB13: LitI2_Byte 0
  loc_B0FB15: FStI2 var_AE
  loc_B0FB18: Branch loc_B0FB24
  loc_B0FB1B: FLdI2 var_AE
  loc_B0FB1E: LitI2_Byte 1
  loc_B0FB20: AddI2
  loc_B0FB21: FStI2 var_AE
  loc_B0FB24: FLdRfVar var_B0
  loc_B0FB27: NextStepI2 var_E4, loc_B0FA75
  loc_B0FB2C: LitI4 1
  loc_B0FB31: LitI4 1
  loc_B0FB36: LitVarStr var_F4, "000000"
  loc_B0FB3B: FStVarCopyObj var_E0
  loc_B0FB3E: FLdRfVar var_E0
  loc_B0FB41: FLdRfVar var_AC
  loc_B0FB44: CVarRef
  loc_B0FB49: ImpAdCallI2 Format$(, )
  loc_B0FB4E: FStStr var_8C
  loc_B0FB51: FFree1Var var_E0 = ""
  loc_B0FB54: LitVar_Missing var_E0
  loc_B0FB57: LitI4 5
  loc_B0FB5C: ILdRf var_8C
  loc_B0FB5F: ImpAdCallI2 Mid$(, , )
  loc_B0FB64: FStStrNoPop var_108
  loc_B0FB67: ImpAdCallFPR4 push push Val()
  loc_B0FB6C: CI4R8
  loc_B0FB6D: FStR4 var_B8
  loc_B0FB70: FFree1Str var_108
  loc_B0FB73: FFree1Var var_E0 = ""
  loc_B0FB76: LitVarI2 var_E0, 2
  loc_B0FB7B: LitI4 3
  loc_B0FB80: ILdRf var_8C
  loc_B0FB83: ImpAdCallI2 Mid$(, , )
  loc_B0FB88: FStStrNoPop var_108
  loc_B0FB8B: ImpAdCallFPR4 push push Val()
  loc_B0FB90: CI4R8
  loc_B0FB91: FStR4 var_BC
  loc_B0FB94: FFree1Str var_108
  loc_B0FB97: FFree1Var var_E0 = ""
  loc_B0FB9A: LitDate 1
  loc_B0FBA3: ILdRf var_B8
  loc_B0FBA6: CR8I4
  loc_B0FBA7: MulR8
  loc_B0FBA8: ILdRf var_BC
  loc_B0FBAB: CR8I4
  loc_B0FBAC: SubR4
  loc_B0FBAD: FnAbsR4
  loc_B0FBAE: FnIntR8
  loc_B0FBB0: CI4R8
  loc_B0FBB1: FStR4 var_B8
  loc_B0FBB4: LitI4 1
  loc_B0FBB9: LitI4 1
  loc_B0FBBE: LitVarStr var_F4, "0000"
  loc_B0FBC3: FStVarCopyObj var_E0
  loc_B0FBC6: FLdRfVar var_E0
  loc_B0FBC9: FLdRfVar var_B8
  loc_B0FBCC: CVarRef
  loc_B0FBD1: ImpAdCallI2 Format$(, )
  loc_B0FBD6: FStStr var_C0
  loc_B0FBD9: FFree1Var var_E0 = ""
  loc_B0FBDC: LitVarI2 var_E0, 2
  loc_B0FBE1: LitI4 3
  loc_B0FBE6: ILdRf var_C0
  loc_B0FBE9: ImpAdCallI2 Mid$(, , )
  loc_B0FBEE: FStStr var_88
  loc_B0FBF1: FFree1Var var_E0 = ""
  loc_B0FBF4: ExitProc
End Function

Private Function Proc_57_51_B5F020(arg_C) 'B5F020
  'Data Table: 437A14
  loc_B5EC08: ILdRf arg_C
  loc_B5EC0B: FStStrCopy var_8C
  loc_B5EC0E: LitStr vbNullString
  loc_B5EC11: FStStrCopy var_88
  loc_B5EC14: ILdRf var_8C
  loc_B5EC17: FnLenStr
  loc_B5EC18: LitI4 0
  loc_B5EC1D: GtI4
  loc_B5EC1E: BranchF loc_B5EF97
  loc_B5EC21: LitI2_Byte 1
  loc_B5EC23: FLdRfVar var_8E
  loc_B5EC26: ILdRf var_8C
  loc_B5EC29: FnLenStr
  loc_B5EC2A: CI2I4
  loc_B5EC2B: ForI2 var_9E
  loc_B5EC31: LitVarI2 var_C0, 1
  loc_B5EC36: FLdI2 var_8E
  loc_B5EC39: CI4UI1
  loc_B5EC3A: ILdRf var_8C
  loc_B5EC3D: ImpAdCallI2 Mid$(, , )
  loc_B5EC42: FStStrNoPop var_C4
  loc_B5EC45: ImpAdCallI2 Asc()
  loc_B5EC4A: FStI2 var_C6
  loc_B5EC4D: FFree1Str var_C4
  loc_B5EC50: FFree1Var var_C0 = ""
  loc_B5EC53: FLdI2 var_C6
  loc_B5EC56: LitI2_Byte &H20
  loc_B5EC58: LitI2_Byte &H7E
  loc_B5EC5A: BetweenI2
  loc_B5EC5C: BranchT loc_B5EC69
  loc_B5EC5F: FLdI2 var_C6
  loc_B5EC62: LitI2 203
  loc_B5EC65: EqI2
  loc_B5EC66: BranchF loc_B5EC6C
  loc_B5EC69: Branch loc_B5EC74
  loc_B5EC6C: LitI2_Byte 0
  loc_B5EC6E: FStI2 var_8E
  loc_B5EC71: Branch loc_B5EC7C
  loc_B5EC74: FLdRfVar var_8E
  loc_B5EC77: NextI2 var_9E, loc_B5EC31
  loc_B5EC7C: LitStr vbNullString
  loc_B5EC7F: FStStrCopy var_88
  loc_B5EC82: LitI2_Byte &HFF
  loc_B5EC84: FStI2 var_9A
  loc_B5EC87: FLdI2 var_8E
  loc_B5EC8A: LitI2_Byte 0
  loc_B5EC8C: GtI2
  loc_B5EC8D: BranchF loc_B5EF97
  loc_B5EC90: LitI2_Byte 1
  loc_B5EC92: FStI2 var_8E
  loc_B5EC95: FLdI2 var_8E
  loc_B5EC98: CI4UI1
  loc_B5EC99: ILdRf var_8C
  loc_B5EC9C: FnLenStr
  loc_B5EC9D: LeI4
  loc_B5EC9E: BranchF loc_B5EE20
  loc_B5ECA1: FLdI2 var_9A
  loc_B5ECA4: BranchF loc_B5ED3D
  loc_B5ECA7: LitVarI2 var_F8, 6
  loc_B5ECAC: LitVarI2 var_C0, 4
  loc_B5ECB1: FLdI2 var_8E
  loc_B5ECB4: LitI2_Byte 1
  loc_B5ECB6: EqI2
  loc_B5ECB7: FLdI2 var_8E
  loc_B5ECBA: LitI2_Byte 3
  loc_B5ECBC: AddI2
  loc_B5ECBD: CI4UI1
  loc_B5ECBE: ILdRf var_8C
  loc_B5ECC1: FnLenStr
  loc_B5ECC2: EqI4
  loc_B5ECC3: OrI4
  loc_B5ECC4: CVarBoolI2 var_B0
  loc_B5ECC8: FLdRfVar var_108
  loc_B5ECCB: ImpAdCallFPR4  = IIf(, , )
  loc_B5ECD0: FLdRfVar var_108
  loc_B5ECD3: CI2Var
  loc_B5ECD4: FStI2 var_96
  loc_B5ECD7: FFreeVar var_B0 = "": var_C0 = "": var_F8 = ""
  loc_B5ECE2: Gosub
  loc_B5ECE6: FLdI2 var_96
  loc_B5ECE9: LitI2_Byte 0
  loc_B5ECEB: LtI2
  loc_B5ECEC: BranchF loc_B5ED27
  loc_B5ECEF: FLdI2 var_8E
  loc_B5ECF2: LitI2_Byte 1
  loc_B5ECF4: EqI2
  loc_B5ECF5: BranchF loc_B5ED08
  loc_B5ECF8: LitI4 &HD2
  loc_B5ECFD: ImpAdCallI2 Chr$()
  loc_B5ED02: FStStr var_88
  loc_B5ED05: Branch loc_B5ED1F
  loc_B5ED08: ILdRf var_88
  loc_B5ED0B: LitI4 &HCC
  loc_B5ED10: ImpAdCallI2 Chr$()
  loc_B5ED15: FStStrNoPop var_C4
  loc_B5ED18: ConcatStr
  loc_B5ED19: FStStr var_88
  loc_B5ED1C: FFree1Str var_C4
  loc_B5ED1F: LitI2_Byte 0
  loc_B5ED21: FStI2 var_9A
  loc_B5ED24: Branch loc_B5ED3D
  loc_B5ED27: FLdI2 var_8E
  loc_B5ED2A: LitI2_Byte 1
  loc_B5ED2C: EqI2
  loc_B5ED2D: BranchF loc_B5ED3D
  loc_B5ED30: LitI4 &HD1
  loc_B5ED35: ImpAdCallI2 Chr$()
  loc_B5ED3A: FStStr var_88
  loc_B5ED3D: FLdI2 var_9A
  loc_B5ED40: NotI4
  loc_B5ED41: BranchF loc_B5EDED
  loc_B5ED44: LitI2_Byte 2
  loc_B5ED46: FStI2 var_96
  loc_B5ED49: Gosub
  loc_B5ED4D: FLdI2 var_96
  loc_B5ED50: LitI2_Byte 0
  loc_B5ED52: LtI2
  loc_B5ED53: BranchF loc_B5EDD1
  loc_B5ED56: LitVarI2 var_C0, 2
  loc_B5ED5B: FLdI2 var_8E
  loc_B5ED5E: CI4UI1
  loc_B5ED5F: ILdRf var_8C
  loc_B5ED62: ImpAdCallI2 Mid$(, , )
  loc_B5ED67: FStStrNoPop var_C4
  loc_B5ED6A: ImpAdCallFPR4 push push Val()
  loc_B5ED6F: CI2R8
  loc_B5ED70: FStI2 var_98
  loc_B5ED73: FFree1Str var_C4
  loc_B5ED76: FFree1Var var_C0 = ""
  loc_B5ED79: FLdI2 var_98
  loc_B5ED7C: LitI2_Byte &H69
  loc_B5ED7E: AddI2
  loc_B5ED7F: CVarI2 var_F8
  loc_B5ED82: FLdI2 var_98
  loc_B5ED85: LitI2_Byte &H20
  loc_B5ED87: AddI2
  loc_B5ED88: CVarI2 var_C0
  loc_B5ED8B: FLdI2 var_98
  loc_B5ED8E: LitI2_Byte &H5F
  loc_B5ED90: LtI2
  loc_B5ED91: CVarBoolI2 var_B0
  loc_B5ED95: FLdRfVar var_108
  loc_B5ED98: ImpAdCallFPR4  = IIf(, , )
  loc_B5ED9D: FLdRfVar var_108
  loc_B5EDA0: CI2Var
  loc_B5EDA1: FStI2 var_98
  loc_B5EDA4: FFreeVar var_B0 = "": var_C0 = "": var_F8 = ""
  loc_B5EDAF: ILdRf var_88
  loc_B5EDB2: FLdI2 var_98
  loc_B5EDB5: CI4UI1
  loc_B5EDB6: ImpAdCallI2 Chr$()
  loc_B5EDBB: FStStrNoPop var_C4
  loc_B5EDBE: ConcatStr
  loc_B5EDBF: FStStr var_88
  loc_B5EDC2: FFree1Str var_C4
  loc_B5EDC5: FLdI2 var_8E
  loc_B5EDC8: LitI2_Byte 2
  loc_B5EDCA: AddI2
  loc_B5EDCB: FStI2 var_8E
  loc_B5EDCE: Branch loc_B5EDED
  loc_B5EDD1: ILdRf var_88
  loc_B5EDD4: LitI4 &HCD
  loc_B5EDD9: ImpAdCallI2 Chr$()
  loc_B5EDDE: FStStrNoPop var_C4
  loc_B5EDE1: ConcatStr
  loc_B5EDE2: FStStr var_88
  loc_B5EDE5: FFree1Str var_C4
  loc_B5EDE8: LitI2_Byte &HFF
  loc_B5EDEA: FStI2 var_9A
  loc_B5EDED: FLdI2 var_9A
  loc_B5EDF0: BranchF loc_B5EE1D
  loc_B5EDF3: ILdRf var_88
  loc_B5EDF6: LitVarI2 var_C0, 1
  loc_B5EDFB: FLdI2 var_8E
  loc_B5EDFE: CI4UI1
  loc_B5EDFF: ILdRf var_8C
  loc_B5EE02: ImpAdCallI2 Mid$(, , )
  loc_B5EE07: FStStrNoPop var_C4
  loc_B5EE0A: ConcatStr
  loc_B5EE0B: FStStr var_88
  loc_B5EE0E: FFree1Str var_C4
  loc_B5EE11: FFree1Var var_C0 = ""
  loc_B5EE14: FLdI2 var_8E
  loc_B5EE17: LitI2_Byte 1
  loc_B5EE19: AddI2
  loc_B5EE1A: FStI2 var_8E
  loc_B5EE1D: Branch loc_B5EC95
  loc_B5EE20: LitI2_Byte 1
  loc_B5EE22: FLdRfVar var_8E
  loc_B5EE25: ILdRf var_88
  loc_B5EE28: FnLenStr
  loc_B5EE29: CI2I4
  loc_B5EE2A: ForI2 var_110
  loc_B5EE30: LitVarI2 var_C0, 1
  loc_B5EE35: FLdI2 var_8E
  loc_B5EE38: CI4UI1
  loc_B5EE39: ILdRf var_88
  loc_B5EE3C: ImpAdCallI2 Mid$(, , )
  loc_B5EE41: FStStrNoPop var_C4
  loc_B5EE44: ImpAdCallI2 Asc()
  loc_B5EE49: FStI2 var_98
  loc_B5EE4C: FFree1Str var_C4
  loc_B5EE4F: FFree1Var var_C0 = ""
  loc_B5EE52: FLdI2 var_98
  loc_B5EE55: LitI2_Byte &H69
  loc_B5EE57: SubI2
  loc_B5EE58: CVarI2 var_F8
  loc_B5EE5B: FLdI2 var_98
  loc_B5EE5E: LitI2_Byte &H20
  loc_B5EE60: SubI2
  loc_B5EE61: CVarI2 var_C0
  loc_B5EE64: FLdI2 var_98
  loc_B5EE67: LitI2_Byte &H7F
  loc_B5EE69: LtI2
  loc_B5EE6A: CVarBoolI2 var_B0
  loc_B5EE6E: FLdRfVar var_108
  loc_B5EE71: ImpAdCallFPR4  = IIf(, , )
  loc_B5EE76: FLdRfVar var_108
  loc_B5EE79: CI2Var
  loc_B5EE7A: FStI2 var_98
  loc_B5EE7D: FFreeVar var_B0 = "": var_C0 = "": var_F8 = ""
  loc_B5EE88: FLdI2 var_8E
  loc_B5EE8B: LitI2_Byte 1
  loc_B5EE8D: EqI2
  loc_B5EE8E: BranchF loc_B5EE98
  loc_B5EE91: FLdI2 var_98
  loc_B5EE94: CI4UI1
  loc_B5EE95: FStR4 var_94
  loc_B5EE98: ILdRf var_94
  loc_B5EE9B: FLdI2 var_8E
  loc_B5EE9E: LitI2_Byte 1
  loc_B5EEA0: SubI2
  loc_B5EEA1: FLdI2 var_98
  loc_B5EEA4: MulI2
  loc_B5EEA5: CI4UI1
  loc_B5EEA6: AddI4
  loc_B5EEA7: LitI4 &H67
  loc_B5EEAC: ModI4
  loc_B5EEAD: FStR4 var_94
  loc_B5EEB0: FLdRfVar var_8E
  loc_B5EEB3: NextI2 var_110, loc_B5EE30
  loc_B5EEB8: ILdRf var_94
  loc_B5EEBB: LitI4 &H69
  loc_B5EEC0: AddI4
  loc_B5EEC1: CVarI4
  loc_B5EEC5: ILdRf var_94
  loc_B5EEC8: LitI4 &H20
  loc_B5EECD: AddI4
  loc_B5EECE: CVarI4
  loc_B5EED2: ILdRf var_94
  loc_B5EED5: LitI4 &H5F
  loc_B5EEDA: LtI4
  loc_B5EEDB: CVarBoolI2 var_B0
  loc_B5EEDF: FLdRfVar var_108
  loc_B5EEE2: ImpAdCallFPR4  = IIf(, , )
  loc_B5EEE7: FLdRfVar var_108
  loc_B5EEEA: CI4Var
  loc_B5EEEC: FStR4 var_94
  loc_B5EEEF: FFreeVar var_B0 = "": var_C0 = "": var_F8 = ""
  loc_B5EEFA: ILdRf var_88
  loc_B5EEFD: ILdRf var_94
  loc_B5EF00: ImpAdCallI2 Chr$()
  loc_B5EF05: FStStrNoPop var_C4
  loc_B5EF08: ConcatStr
  loc_B5EF09: FStStrNoPop var_114
  loc_B5EF0C: LitI4 &HD3
  loc_B5EF11: ImpAdCallI2 Chr$()
  loc_B5EF16: FStStrNoPop var_118
  loc_B5EF19: ConcatStr
  loc_B5EF1A: FStStr var_88
  loc_B5EF1D: FFreeStr var_C4 = "": var_114 = ""
  loc_B5EF26: LitI4 0
  loc_B5EF2B: LitI4 -1
  loc_B5EF30: LitI4 1
  loc_B5EF35: LitStr "&nbsp;"
  loc_B5EF38: LitStr " "
  loc_B5EF3B: ILdRf var_88
  loc_B5EF3E: ImpAdCallI2 Replace(, , , , , )
  loc_B5EF43: FStStr var_118
  loc_B5EF46: LitI4 0
  loc_B5EF4B: LitI4 -1
  loc_B5EF50: LitI4 1
  loc_B5EF55: LitStr "&lt;"
  loc_B5EF58: LitStr "<"
  loc_B5EF5B: FLdZeroAd var_118
  loc_B5EF5E: FStStrNoPop var_C4
  loc_B5EF61: ImpAdCallI2 Replace(, , , , , )
  loc_B5EF66: FStStr var_11C
  loc_B5EF69: LitI4 0
  loc_B5EF6E: LitI4 -1
  loc_B5EF73: LitI4 1
  loc_B5EF78: LitStr "&gt;"
  loc_B5EF7B: LitStr ">"
  loc_B5EF7E: FLdZeroAd var_11C
  loc_B5EF81: FStStrNoPop var_114
  loc_B5EF84: ImpAdCallI2 Replace(, , , , , )
  loc_B5EF89: FStStr var_88
  loc_B5EF8C: FFreeStr var_C4 = "": var_114 = "": var_118 = ""
  loc_B5EF97: ExitProc
  loc_B5EF98: FLdI2 var_96
  loc_B5EF9B: LitI2_Byte 1
  loc_B5EF9D: SubI2
  loc_B5EF9E: FStI2 var_96
  loc_B5EFA1: FLdI2 var_8E
  loc_B5EFA4: FLdI2 var_96
  loc_B5EFA7: AddI2
  loc_B5EFA8: CI4UI1
  loc_B5EFA9: ILdRf var_8C
  loc_B5EFAC: FnLenStr
  loc_B5EFAD: LeI4
  loc_B5EFAE: BranchF loc_B5F01B
  loc_B5EFB1: FLdI2 var_96
  loc_B5EFB4: LitI2_Byte 0
  loc_B5EFB6: GeI2
  loc_B5EFB7: BranchF loc_B5F01B
  loc_B5EFBA: LitVarI2 var_C0, 1
  loc_B5EFBF: FLdI2 var_8E
  loc_B5EFC2: FLdI2 var_96
  loc_B5EFC5: AddI2
  loc_B5EFC6: CI4UI1
  loc_B5EFC7: ILdRf var_8C
  loc_B5EFCA: ImpAdCallI2 Mid$(, , )
  loc_B5EFCF: FStStrNoPop var_C4
  loc_B5EFD2: ImpAdCallI2 Asc()
  loc_B5EFD7: LitI2_Byte &H30
  loc_B5EFD9: LtI2
  loc_B5EFDA: LitVarI2 var_F8, 1
  loc_B5EFDF: FLdI2 var_8E
  loc_B5EFE2: FLdI2 var_96
  loc_B5EFE5: AddI2
  loc_B5EFE6: CI4UI1
  loc_B5EFE7: ILdRf var_8C
  loc_B5EFEA: ImpAdCallI2 Mid$(, , )
  loc_B5EFEF: FStStrNoPop var_114
  loc_B5EFF2: ImpAdCallI2 Asc()
  loc_B5EFF7: LitI2_Byte &H39
  loc_B5EFF9: GtI2
  loc_B5EFFA: OrI4
  loc_B5EFFB: FFreeStr var_C4 = ""
  loc_B5F002: FFreeVar var_C0 = ""
  loc_B5F009: BranchF loc_B5F00F
  loc_B5F00C: Branch loc_B5F01B
  loc_B5F00F: FLdI2 var_96
  loc_B5F012: LitI2_Byte 1
  loc_B5F014: SubI2
  loc_B5F015: FStI2 var_96
  loc_B5F018: Branch loc_B5EFB1
  loc_B5F01B: Return
  loc_B5F01D: ExitProc
End Function

Private Function Proc_57_52_A24864() 'A24864
  'Data Table: 437A14
  loc_A2481C: LitVarI4
  loc_A24824: PopAdLdVar
  loc_A24825: ILdPr
  loc_A24828: LateIdCallLdVar
  loc_A24832: CI4Var
  loc_A24834: LitI4 0
  loc_A24839: NeI4
  loc_A2483A: FFree1Var var_B4 = ""
  loc_A2483D: BranchF loc_A2485D
  loc_A24840: LitVarI4
  loc_A24848: PopAdLdVar
  loc_A24849: LitVarI4
  loc_A24851: PopAdLdVar
  loc_A24852: ILdPr
  loc_A24855: LateIdCall
  loc_A2485D: ImpAdCallFPR4 Proc_57_20_B45944()
  loc_A24862: ExitProc
End Function

Private Function Proc_57_53_A950F8(arg_C) 'A950F8
  'Data Table: 437A14
  loc_A9505C: ILdRf arg_C
  loc_A9505F: FStStrCopy var_88
  loc_A95062: LitI4 0
  loc_A95067: LitI4 -1
  loc_A9506C: LitVarStr var_A4, "\"
  loc_A95071: FStVarCopyObj var_B4
  loc_A95074: FLdRfVar var_B4
  loc_A95077: ILdRf var_88
  loc_A9507A: FLdRfVar var_C4
  loc_A9507D: ImpAdCallFPR4  = Split(, , , )
  loc_A95082: FLdRfVar var_C4
  loc_A95085: StAryVar
  loc_A95089: PopTmpLdAdStr var_C8
  loc_A9508C: FLdRfVar var_8C
  loc_A9508F: StAryCopy
  loc_A95091: FFreeVar var_B4 = ""
  loc_A95098: ILdRf var_8C
  loc_A9509B: LitI2_Byte 1
  loc_A9509D: FnLBound
  loc_A9509E: FLdRfVar var_94
  loc_A950A1: ILdRf var_8C
  loc_A950A4: LitI2_Byte 1
  loc_A950A6: FnUBound
  loc_A950A8: ForI4 var_D0
  loc_A950AE: ILdRf var_90
  loc_A950B1: ILdRf var_94
  loc_A950B4: ILdRf var_8C
  loc_A950B7: Ary1LdI4
  loc_A950B8: ConcatStr
  loc_A950B9: FStStrNoPop var_D4
  loc_A950BC: LitStr "\"
  loc_A950BF: ConcatStr
  loc_A950C0: FStStr var_90
  loc_A950C3: FFree1Str var_D4
  loc_A950C6: LitI4 &H10
  loc_A950CB: FLdRfVar var_90
  loc_A950CE: CVarRef
  loc_A950D3: ImpAdCallI2 push Dir(, )
  loc_A950D8: FStStrNoPop var_D4
  loc_A950DB: LitStr vbNullString
  loc_A950DE: EqStr
  loc_A950E0: FFree1Str var_D4
  loc_A950E3: BranchF loc_A950EE
  loc_A950E6: ILdRf var_90
  loc_A950E9: ImpAdCallFPR4 MkDir 
  loc_A950EE: FLdRfVar var_94
  loc_A950F1: NextI4 var_D0, loc_A950AE
  loc_A950F6: ExitProc
End Function

Private Function Proc_57_54_AD00F0(arg_C, arg_10) 'AD00F0
  'Data Table: 437A14
  loc_ACFFE8: ILdRf arg_C
  loc_ACFFEB: FStStrCopy var_88
  loc_ACFFEE: ILdRf arg_10
  loc_ACFFF1: FStStrCopy var_8C
  loc_ACFFF4: OnErrorGoto loc_AD007A
  loc_ACFFF7: LitI4 1
  loc_ACFFFC: FLdRfVar var_88
  loc_ACFFFF: CVarRef
  loc_AD0004: FLdRfVar var_B0
  loc_AD0007: ImpAdCallFPR4  = Right(, )
  loc_AD000C: FLdRfVar var_B0
  loc_AD000F: LitVarStr var_C0, "\"
  loc_AD0014: HardType
  loc_AD0015: NeVarBool
  loc_AD0017: FFree1Var var_B0 = ""
  loc_AD001A: BranchF loc_AD0027
  loc_AD001D: ILdRf var_88
  loc_AD0020: LitStr "\"
  loc_AD0023: ConcatStr
  loc_AD0024: FStStr var_88
  loc_AD0027: LitI4 &H20
  loc_AD002C: ILdRf var_88
  loc_AD002F: ILdRf var_8C
  loc_AD0032: ConcatStr
  loc_AD0033: CVarStr var_B0
  loc_AD0036: ImpAdCallI2 push Dir(, )
  loc_AD003B: FStStr var_90
  loc_AD003E: FFree1Var var_B0 = ""
  loc_AD0041: ILdRf var_90
  loc_AD0044: LitStr vbNullString
  loc_AD0047: NeStr
  loc_AD0049: BranchF loc_AD0079
  loc_AD004C: ILdRf var_88
  loc_AD004F: ILdRf var_90
  loc_AD0052: ConcatStr
  loc_AD0053: CVarStr var_B0
  loc_AD0056: ImpAdCallFPR4 Kill 
  loc_AD005B: FFree1Var var_B0 = ""
  loc_AD005E: ImpAdCallFPR4 DoEvents()
  loc_AD0063: LitI4 0
  loc_AD0068: LitVar_Missing var_B0
  loc_AD006B: ImpAdCallI2 push Dir(, )
  loc_AD0070: FStStr var_90
  loc_AD0073: FFree1Var var_B0 = ""
  loc_AD0076: Branch loc_AD0041
  loc_AD0079: ExitProc
  loc_AD007A: LitVar_Missing var_11C
  loc_AD007D: LitVar_Missing var_FC
  loc_AD0080: LitVar_Missing var_D0
  loc_AD0083: LitI4 0
  loc_AD0088: LitStr "Error: "
  loc_AD008B: FLdRfVar var_D8
  loc_AD008E: ImpAdCallI2 Err 'rtcErrObj
  loc_AD0093: FStAdFunc var_D4
  loc_AD0096: FLdPr var_D4
  loc_AD0099:  = Err.Number
  loc_AD009E: ILdRf var_D8
  loc_AD00A1: CStrI4
  loc_AD00A3: FStStrNoPop var_DC
  loc_AD00A6: ConcatStr
  loc_AD00A7: FStStrNoPop var_E0
  loc_AD00AA: LitStr ". "
  loc_AD00AD: ConcatStr
  loc_AD00AE: FStStrNoPop var_EC
  loc_AD00B1: FLdRfVar var_E8
  loc_AD00B4: ImpAdCallI2 Err 'rtcErrObj
  loc_AD00B9: FStAdFunc var_E4
  loc_AD00BC: FLdPr var_E4
  loc_AD00BF:  = Err.Description
  loc_AD00C4: ILdRf var_E8
  loc_AD00C7: ConcatStr
  loc_AD00C8: CVarStr var_B0
  loc_AD00CB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_AD00D0: FFreeStr var_DC = "": var_E0 = "": var_EC = ""
  loc_AD00DB: FFreeAd var_D4 = ""
  loc_AD00E2: FFreeVar var_B0 = "": var_D0 = "": var_FC = ""
  loc_AD00ED: Stop
  loc_AD00EF: ExitProc
End Function

Private Function Proc_57_55_AE2160(arg_C, arg_10, arg_14) 'AE2160
  'Data Table: 437A14
  loc_AE2020: ILdRf arg_C
  loc_AE2023: FStStrCopy var_88
  loc_AE2026: ILdRf arg_10
  loc_AE2029: FStStrCopy var_8C
  loc_AE202C: ILdRf arg_14
  loc_AE202F: FStStrCopy var_90
  loc_AE2032: ILdRf var_90
  loc_AE2035: LitStr vbNullString
  loc_AE2038: EqStr
  loc_AE203A: BranchF loc_AE208F
  loc_AE203D: FLdRfVar var_B4
  loc_AE2040: FLdRfVar var_B0
  loc_AE2043: ImpAdLdRf MemVar_D9C5D8
  loc_AE2046: NewIfNullPr Global
  loc_AE2049:  = Global.App
  loc_AE204E: FLdPr var_B0
  loc_AE2051:  = App.Path
  loc_AE2056: ILdRf var_B4
  loc_AE2059: LitStr "\pdf\wkhtmltopdf.exe -l --disable-smart-shrinking -B 1 -T 1 -L 1 -R 1 -q """
  loc_AE205C: ConcatStr
  loc_AE205D: FStStrNoPop var_B8
  loc_AE2060: ILdRf var_88
  loc_AE2063: ConcatStr
  loc_AE2064: FStStrNoPop var_BC
  loc_AE2067: LitStr """ """
  loc_AE206A: ConcatStr
  loc_AE206B: FStStrNoPop var_C0
  loc_AE206E: ILdRf var_8C
  loc_AE2071: ConcatStr
  loc_AE2072: FStStrNoPop var_C4
  loc_AE2075: LitStr """"
  loc_AE2078: ConcatStr
  loc_AE2079: FStStr var_94
  loc_AE207C: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AE2089: FFree1Ad var_B0
  loc_AE208C: Branch loc_AE2149
  loc_AE208F: FLdRfVar var_B0
  loc_AE2092: LitI2_Byte 0
  loc_AE2094: LitI2_Byte &HFF
  loc_AE2096: ILdRf var_90
  loc_AE2099: FLdRfVar var_98
  loc_AE209C: NewIfNullPr IFileSystem3
  loc_AE209F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AE20A4: FLdZeroAd var_B0
  loc_AE20A7: FStVarAdFunc
  loc_AE20AB: LitI4 0
  loc_AE20B0: LitI4 -1
  loc_AE20B5: LitI4 1
  loc_AE20BA: LitStr "\\"
  loc_AE20BD: LitStr "\"
  loc_AE20C0: LitStr vbNullString
  loc_AE20C3: ILdRf var_88
  loc_AE20C6: ConcatStr
  loc_AE20C7: FStStrNoPop var_B4
  loc_AE20CA: LitStr " """
  loc_AE20CD: ConcatStr
  loc_AE20CE: FStStrNoPop var_B8
  loc_AE20D1: ILdRf var_8C
  loc_AE20D4: ConcatStr
  loc_AE20D5: FStStrNoPop var_BC
  loc_AE20D8: LitStr """"
  loc_AE20DB: ConcatStr
  loc_AE20DC: FStStrNoPop var_C0
  loc_AE20DF: ImpAdCallI2 Replace(, , , , , )
  loc_AE20E4: CVarStr var_D4
  loc_AE20E7: PopAdLdVar
  loc_AE20E8: FLdRfVar var_A8
  loc_AE20EB: LdPrVar
  loc_AE20ED: LateMemCall
  loc_AE20F3: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_AE20FE: FFree1Var var_D4 = ""
  loc_AE2101: FLdRfVar var_A8
  loc_AE2104: LdPrVar
  loc_AE2106: LateMemCall
  loc_AE210C: FLdRfVar var_B4
  loc_AE210F: FLdRfVar var_B0
  loc_AE2112: ImpAdLdRf MemVar_D9C5D8
  loc_AE2115: NewIfNullPr Global
  loc_AE2118:  = Global.App
  loc_AE211D: FLdPr var_B0
  loc_AE2120:  = App.Path
  loc_AE2125: ILdRf var_B4
  loc_AE2128: LitStr "\pdf\wkhtmltopdf.exe -l --disable-smart-shrinking -B 1 -T 1 -L 1 -R 1 -q --read-args-from-stdin < """
  loc_AE212B: ConcatStr
  loc_AE212C: FStStrNoPop var_B8
  loc_AE212F: ILdRf var_90
  loc_AE2132: ConcatStr
  loc_AE2133: FStStrNoPop var_BC
  loc_AE2136: LitStr """"
  loc_AE2139: ConcatStr
  loc_AE213A: FStStr var_94
  loc_AE213D: FFreeStr var_B4 = "": var_B8 = ""
  loc_AE2146: FFree1Ad var_B0
  loc_AE2149: LitI4 0
  loc_AE214E: FLdRfVar var_94
  loc_AE2151: CVarRef
  loc_AE2156: ImpAdCallFPR4 push Shell(, )
  loc_AE215B: CI4R8
  loc_AE215C: FStR4 var_AC
  loc_AE215F: ExitProc
End Function

Private Function Proc_57_56_A868F0(arg_C, arg_10) 'A868F0
  'Data Table: 437A14
  loc_A86878: ILdRf arg_C
  loc_A8687B: FStStrCopy var_88
  loc_A8687E: ILdRf arg_10
  loc_A86881: FStStrCopy var_8C
  loc_A86884: FLdRfVar var_A0
  loc_A86887: FLdRfVar var_9C
  loc_A8688A: ImpAdLdRf MemVar_D9C5D8
  loc_A8688D: NewIfNullPr Global
  loc_A86890:  = Global.App
  loc_A86895: FLdPr var_9C
  loc_A86898:  = App.Path
  loc_A8689D: ILdRf var_A0
  loc_A868A0: LitStr "\pdf\pdf.bat """
  loc_A868A3: ConcatStr
  loc_A868A4: FStStrNoPop var_A4
  loc_A868A7: ILdRf var_88
  loc_A868AA: ConcatStr
  loc_A868AB: FStStrNoPop var_A8
  loc_A868AE: LitStr """ """
  loc_A868B1: ConcatStr
  loc_A868B2: FStStrNoPop var_AC
  loc_A868B5: ILdRf var_8C
  loc_A868B8: ConcatStr
  loc_A868B9: FStStrNoPop var_B0
  loc_A868BC: LitStr """"
  loc_A868BF: ConcatStr
  loc_A868C0: FStStr var_90
  loc_A868C3: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A868D0: FFree1Ad var_9C
  loc_A868D3: LitI4 1
  loc_A868D8: LitStr "CMD /C "
  loc_A868DB: ILdRf var_90
  loc_A868DE: ConcatStr
  loc_A868DF: CVarStr var_C0
  loc_A868E2: ImpAdCallFPR4 push Shell(, )
  loc_A868E7: FStFPR8 var_98
  loc_A868EA: FFree1Var var_C0 = ""
  loc_A868ED: ExitProc
End Function

Private Function Proc_57_57_9EEB10(arg_C) '9EEB10
  'Data Table: 437A14
  loc_9EEAEC: ILdRf arg_C
  loc_9EEAEF: FStStrCopy var_8C
  loc_9EEAF2: OnErrorGoto loc_9EEB0A
  loc_9EEAF5: LitI2_Byte 0
  loc_9EEAF7: FStI2 var_86
  loc_9EEAFA: ILdRf var_8C
  loc_9EEAFD: LitI2_Byte 1
  loc_9EEAFF: LitI2_Byte &HFF
  loc_9EEB01: OpenFile
  loc_9EEB05: LitI2_Byte 1
  loc_9EEB07: Close
  loc_9EEB09: ExitProcI2
  loc_9EEB0A: LitI2_Byte &HFF
  loc_9EEB0C: FStI2 var_86
  loc_9EEB0F: ExitProcI2
End Function

Private Function Proc_57_58_A33198(arg_C) 'A33198
  'Data Table: 437A14
  loc_A33160: ILdRf arg_C
  loc_A33163: FStStrCopy var_8C
  loc_A33166: FLdRfVar var_A4
  loc_A33169: ILdRf var_8C
  loc_A3316C: FLdRfVar var_A0
  loc_A3316F: NewIfNullPr IFileSystem3
  loc_A33172: from_stack_2 = IFileSystem3.IFileSystem.GetFile(from_stack_1v)
  loc_A33177: FLdZeroAd var_A4
  loc_A3317A: FStVarAdFunc
  loc_A3317E: FLdRfVar var_9C
  loc_A33181: VarLateMemLdVar var_B4, .ShortPath
  loc_A33187: CStrVarTmp
  loc_A33188: FStStr var_88
  loc_A3318B: FFree1Var var_B4 = ""
  loc_A3318E: LitNothing
  loc_A33190: FStVarAd
  loc_A33194: ExitProc
End Function
