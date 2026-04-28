
Private Function Proc_260_0_A989C8(arg_10, arg_14, arg_18) 'A989C8
  'Data Table: 40317C
  loc_A9855C: LitStr "SELECT cheque.*"
  loc_A9855F: LitStr " FROM cheque"
  loc_A98562: ConcatStr
  loc_A98563: FStStrNoPop var_88
  loc_A98566: LitStr " INNER JOIN ordenpago ON ordenpago.PeriInfo = cheque.PeriInfo AND ordenpago.NumeOrpa = cheque.NumeOrpa"
  loc_A98569: ConcatStr
  loc_A9856A: FStStrNoPop var_8C
  loc_A9856D: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = cheque.CucuPers"
  loc_A98570: ConcatStr
  loc_A98571: FStStrNoPop var_90
  loc_A98574: LitStr " WHERE cheque.PeriInfo = "
  loc_A98577: ConcatStr
  loc_A98578: FStStrNoPop var_94
  loc_A9857B: FLdI2 arg_10
  loc_A9857E: CStrUI1
  loc_A98580: FStStrNoPop var_98
  loc_A98583: ConcatStr
  loc_A98584: FStStrNoPop var_9C
  loc_A98587: LitStr " AND NumeMoba = 0 AND AutoCheq = 2 AND FeanCheq IS NULL AND FeanOrpa IS NULL"
  loc_A9858A: ConcatStr
  loc_A9858B: FStStrNoPop var_A0
  loc_A9858E: LitStr " AND CodiBanc = "
  loc_A98591: ConcatStr
  loc_A98592: FStStrNoPop var_A4
  loc_A98595: FLdUI1
  loc_A98599: CStrI2
  loc_A9859B: FStStrNoPop var_A8
  loc_A9859E: ConcatStr
  loc_A9859F: FStStrNoPop var_AC
  loc_A985A2: LitStr " AND cheque.NumeOrpa BETWEEN "
  loc_A985A5: ConcatStr
  loc_A985A6: FStStrNoPop var_B0
  loc_A985A9: FLdI2 arg_14
  loc_A985AC: CStrUI1
  loc_A985AE: FStStrNoPop var_B4
  loc_A985B1: ConcatStr
  loc_A985B2: FStStrNoPop var_B8
  loc_A985B5: LitStr " AND "
  loc_A985B8: ConcatStr
  loc_A985B9: FStStrNoPop var_BC
  loc_A985BC: FLdI2 arg_18
  loc_A985BF: CStrUI1
  loc_A985C1: FStStrNoPop var_C0
  loc_A985C4: ConcatStr
  loc_A985C5: FStStrNoPop var_C4
  loc_A985C8: LitStr " ORDER BY cheque.NumeOrpa, OrdeCheq;"
  loc_A985CB: ConcatStr
  loc_A985CC: FStStrNoPop var_C8
  loc_A985CF: FMemLdRf unk_403185
  loc_A985D4: NewIfNullPr clscheque
  loc_A985D7: Call clscheque.RedefineRS(from_stack_1v)
  loc_A985DC: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_A98601: FLdRfVar var_CC
  loc_A98604: FMemLdRf unk_403185
  loc_A98609: NewIfNullPr clscheque
  loc_A9860C: from_stack_1 = clscheque.RecordCount
  loc_A98611: ILdRf var_CC
  loc_A98614: LitI4 0
  loc_A98619: EqI4
  loc_A9861A: BranchF loc_A98632
  loc_A9861D: LitI4 0
  loc_A98622: LitStr "No existen cheques disponibles para imprimir según los datos ingresados"
  loc_A98625: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A9862A: LitI2_Byte 0
  loc_A9862C: FMemStI2 arg_8(56)
  loc_A98631: ExitProc
  loc_A98632: FLdRfVar var_CC
  loc_A98635: FMemLdRf unk_403185
  loc_A9863A: NewIfNullPr clscheque
  loc_A9863D: from_stack_1 = clscheque.RecordCount
  loc_A98642: ILdRf var_CC
  loc_A98645: CI2I4
  loc_A98646: FMemStI2 arg_8(44)
  loc_A9864B: FMemLdRf unk_403185
  loc_A98650: NewIfNullPr clscheque
  loc_A98653: Call clscheque.MoveFirst()
  loc_A98658: LitI2_Byte 0
  loc_A9865A: CR8I2
  loc_A9865B: FMemStFPR8 arg_8(12)
  loc_A98660: LitI2_Byte 1
  loc_A98662: FMemLdRf unk_403185
  loc_A98667: FLdRfVar var_CC
  loc_A9866A: FMemLdRf unk_403185
  loc_A9866F: NewIfNullPr clscheque
  loc_A98672: from_stack_1 = clscheque.RecordCount
  loc_A98677: ILdRf var_CC
  loc_A9867A: CI2I4
  loc_A9867B: ForI2 var_D0
  loc_A98681: FLdRfVar var_11C
  loc_A98684: FLdRfVar var_EC
  loc_A98687: LitVarStr var_E8, "PeriInfo"
  loc_A9868C: PopAdLdVar
  loc_A9868D: FLdRfVar var_D8
  loc_A98690: FLdRfVar var_D4
  loc_A98693: FMemLdRf unk_403185
  loc_A98698: NewIfNullPr clscheque
  loc_A9869B: from_stack_1v = clscheque.RsFrmGet()
  loc_A986A0: FLdPr var_D4
  loc_A986A3:  = Me.Fields
  loc_A986A8: FLdPr var_D8
  loc_A986AB: from_stack_2 = Me.Item(from_stack_1)
  loc_A986B0: FLdPr var_EC
  loc_A986B3:  = Me.Value
  loc_A986B8: FLdRfVar var_12C
  loc_A986BB: FLdRfVar var_108
  loc_A986BE: LitVarStr var_104, "CodiBanc"
  loc_A986C3: PopAdLdVar
  loc_A986C4: FLdRfVar var_F4
  loc_A986C7: FLdRfVar var_F0
  loc_A986CA: FMemLdRf unk_403185
  loc_A986CF: NewIfNullPr clscheque
  loc_A986D2: from_stack_1v = clscheque.RsFrmGet()
  loc_A986D7: FLdPr var_F0
  loc_A986DA:  = Me.Fields
  loc_A986DF: FLdPr var_F4
  loc_A986E2: from_stack_2 = Me.Item(from_stack_1)
  loc_A986E7: FLdPr var_108
  loc_A986EA:  = Me.Value
  loc_A986EF: FLdRfVar var_88
  loc_A986F2: ImpAdLdRf MemVar_C3D898
  loc_A986F5: NewIfNullPr dlgImpresionAutomaticadeCheques
  loc_A986F8: VCallAd Control_ID_UlchBancTxt
  loc_A986FB: FStAdFunc var_10C
  loc_A986FE: FLdPr var_10C
  loc_A98701:  = dlgImpresionAutomaticadeCheques.TextBox.Text
  loc_A98706: FLdRfVar var_12E
  loc_A98709: ILdRf var_88
  loc_A9870C: CR8Str
  loc_A9870E: FMemLdI2 arg_8(4)
  loc_A98713: CR8I2
  loc_A98714: AddR8
  loc_A98715: LitI2_Byte 1
  loc_A98717: CR8I2
  loc_A98718: SubR4
  loc_A98719: CI4R8
  loc_A9871A: FLdRfVar var_12C
  loc_A9871D: CI4Var
  loc_A9871F: FLdRfVar var_11C
  loc_A98722: CI2Var
  loc_A98723: FMemLdRf unk_403185
  loc_A98728: NewIfNullPr clscheque
  loc_A9872B: from_stack_4v = clscheque.ExisteNumeCheq(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A98730: FLdI2 var_12E
  loc_A98733: FFree1Str var_88
  loc_A98736: FFreeAd var_D4 = "": var_D8 = "": var_F0 = "": var_F4 = "": var_10C = "": var_EC = ""
  loc_A98747: FFreeVar var_11C = ""
  loc_A9874E: BranchF loc_A987B6
  loc_A98751: FLdRfVar var_88
  loc_A98754: ImpAdLdRf MemVar_C3D898
  loc_A98757: NewIfNullPr dlgImpresionAutomaticadeCheques
  loc_A9875A: VCallAd Control_ID_UlchBancTxt
  loc_A9875D: FStAdFunc var_D4
  loc_A98760: FLdPr var_D4
  loc_A98763:  = dlgImpresionAutomaticadeCheques.TextBox.Text
  loc_A98768: LitI4 0
  loc_A9876D: LitStr "El cheque N° "
  loc_A98770: ILdRf var_88
  loc_A98773: CR8Str
  loc_A98775: FMemLdI2 arg_8(4)
  loc_A9877A: CR8I2
  loc_A9877B: AddR8
  loc_A9877C: LitI2_Byte 1
  loc_A9877E: CR8I2
  loc_A9877F: SubR4
  loc_A98780: CStrR8
  loc_A98782: FStStrNoPop var_8C
  loc_A98785: ConcatStr
  loc_A98786: FStStrNoPop var_90
  loc_A98789: LitStr " ya existe. Verifique."
  loc_A9878C: ConcatStr
  loc_A9878D: FStStrNoPop var_94
  loc_A98790: LitStr vbCrLf
  loc_A98793: ConcatStr
  loc_A98794: FStStrNoPop var_98
  loc_A98797: LitStr "Impresión cancelada."
  loc_A9879A: ConcatStr
  loc_A9879B: FStStrNoPop var_9C
  loc_A9879E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A987A3: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A987B2: FFree1Ad var_D4
  loc_A987B5: ExitProc
  loc_A987B6: FLdRfVar var_11C
  loc_A987B9: FLdRfVar var_EC
  loc_A987BC: LitVarStr var_E8, "ImpoCheq"
  loc_A987C1: PopAdLdVar
  loc_A987C2: FLdRfVar var_D8
  loc_A987C5: FLdRfVar var_D4
  loc_A987C8: FMemLdRf unk_403185
  loc_A987CD: NewIfNullPr clscheque
  loc_A987D0: from_stack_1v = clscheque.RsFrmGet()
  loc_A987D5: FLdPr var_D4
  loc_A987D8:  = Me.Fields
  loc_A987DD: FLdPr var_D8
  loc_A987E0: from_stack_2 = Me.Item(from_stack_1)
  loc_A987E5: FLdPr var_EC
  loc_A987E8:  = Me.Value
  loc_A987ED: FMemLdFPR8 arg_8(12)
  loc_A987F2: FLdRfVar var_11C
  loc_A987F5: FnCDblVar
  loc_A987F7: AddR8
  loc_A987F8: FMemStFPR8 arg_8(12)
  loc_A987FD: FFreeAd var_D4 = "": var_D8 = ""
  loc_A98806: FFree1Var var_11C = ""
  loc_A98809: FLdRfVar var_11C
  loc_A9880C: FLdRfVar var_EC
  loc_A9880F: LitVarStr var_E8, "FechCheq"
  loc_A98814: PopAdLdVar
  loc_A98815: FLdRfVar var_D8
  loc_A98818: FLdRfVar var_D4
  loc_A9881B: FMemLdRf unk_403185
  loc_A98820: NewIfNullPr clscheque
  loc_A98823: from_stack_1v = clscheque.RsFrmGet()
  loc_A98828: FLdPr var_D4
  loc_A9882B:  = Me.Fields
  loc_A98830: FLdPr var_D8
  loc_A98833: from_stack_2 = Me.Item(from_stack_1)
  loc_A98838: FLdPr var_EC
  loc_A9883B:  = Me.Value
  loc_A98840: FLdRfVar var_8C
  loc_A98843: FMemLdCy arg_8(12)
  loc_A98848: FLdRfVar var_11C
  loc_A9884B: CStrVarTmp
  loc_A9884C: FStStrNoPop var_88
  loc_A9884F: FLdUI1
  loc_A98853: CI4UI1
  loc_A98854: FMemLdRf unk_403185
  loc_A98859: NewIfNullPr clscheque
  loc_A9885C: from_stack_4v = clscheque.ValidaSaldoLibroBanco(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A98861: ImpAdLdRf MemVar_C3D138
  loc_A98864: NewIfNullPr frmEmisionCheque
  loc_A98867: VCallAd Control_ID_FlexCheque
  loc_A9886A: FStAdFunc var_10C
  loc_A9886D: LitNothing
  loc_A9886F: CastAd
  loc_A98872: FStAdFunc var_108
  loc_A98875: FLdRfVar var_108
  loc_A98878: FLdZeroAd var_10C
  loc_A9887B: FStAdFuncNoPop
  loc_A9887E: CastAd
  loc_A98881: FStAdFunc var_F4
  loc_A98884: FLdRfVar var_F4
  loc_A98887: FLdZeroAd var_8C
  loc_A9888A: PopTmpLdAdStr
  loc_A9888E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A98893: FMemStI2 arg_8(56)
  loc_A98898: FFreeStr var_88 = ""
  loc_A9889F: FFreeAd var_D4 = "": var_D8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_108 = ""
  loc_A988B0: FFree1Var var_11C = ""
  loc_A988B3: FMemLdI2 arg_8(56)
  loc_A988B8: BranchF loc_A988BC
  loc_A988BB: ExitProc
  loc_A988BC: FMemLdRf unk_403185
  loc_A988C1: NewIfNullPr clscheque
  loc_A988C4: Call clscheque.MoveSiguiente()
  loc_A988C9: FMemLdRf unk_403185
  loc_A988CE: NextI2 var_D0, loc_A98681
  loc_A988D3: FLdRfVar var_D4
  loc_A988D6: ImpAdLdRf MemVar_C44F9C
  loc_A988D9: NewIfNullPr Me
  loc_A988DC:  = Me.Global.Printer
  loc_A988E1: FLdPr var_D4
  loc_A988E4: LateIdLdVar var_11C DispID_28 1
  loc_A988EB: CStrVarTmp
  loc_A988EC: FMemStStr arg_8(0)
  loc_A988F2: FFree1Ad var_D4
  loc_A988F5: FFree1Var var_11C = ""
  loc_A988F8: LitStr "HASAR cheque"
  loc_A988FB: FStStrCopy var_88
  loc_A988FE: FLdRfVar var_88
  loc_A98901: ImpAdCallFPR4 Proc_265_1_9A06AC()
  loc_A98906: FFree1Str var_88
  loc_A98909: LitStr "HASAR cheque"
  loc_A9890C: LitStr "PDFCreator"
  loc_A9890F: NeStr
  loc_A98911: LitStr "HASAR cheque"
  loc_A98914: LitStr "HASAR cheque"
  loc_A98917: NeStr
  loc_A98919: AndI4
  loc_A9891A: BranchF loc_A98940
  loc_A9891D: LitI4 &H28
  loc_A98922: CI2I4
  loc_A98923: CVarI2 var_E8
  loc_A98926: PopAdLdVar
  loc_A98927: FLdRfVar var_D4
  loc_A9892A: ImpAdLdRf MemVar_C44F9C
  loc_A9892D: NewIfNullPr Me
  loc_A98930:  = Me.Global.Printer
  loc_A98935: FLdPr var_D4
  loc_A98938: LateIdSt
  loc_A9893D: FFree1Ad var_D4
  loc_A98940: LitI4 -2
  loc_A98945: CI2I4
  loc_A98946: CVarI2 var_E8
  loc_A98949: PopAdLdVar
  loc_A9894A: FLdRfVar var_D4
  loc_A9894D: ImpAdLdRf MemVar_C44F9C
  loc_A98950: NewIfNullPr Me
  loc_A98953:  = Me.Global.Printer
  loc_A98958: FLdPr var_D4
  loc_A9895B: LateIdSt
  loc_A98960: FFree1Ad var_D4
  loc_A98963: LitVar_TRUE var_E8
  loc_A98966: PopAdLdVar
  loc_A98967: FLdRfVar var_D4
  loc_A9896A: ImpAdLdRf MemVar_C44F9C
  loc_A9896D: NewIfNullPr Me
  loc_A98970:  = Me.Global.Printer
  loc_A98975: FLdPr var_D4
  loc_A98978: LateIdSt
  loc_A9897D: FFree1Ad var_D4
  loc_A98980: LitI4 6
  loc_A98985: CI2I4
  loc_A98986: CVarI2 var_E8
  loc_A98989: PopAdLdVar
  loc_A9898A: FLdRfVar var_D4
  loc_A9898D: ImpAdLdRf MemVar_C44F9C
  loc_A98990: NewIfNullPr Me
  loc_A98993:  = Me.Global.Printer
  loc_A98998: FLdPr var_D4
  loc_A9899B: LateIdSt
  loc_A989A0: FFree1Ad var_D4
  loc_A989A3: LitI2_Byte 0
  loc_A989A5: CR8I2
  loc_A989A6: CVarR4
  loc_A989AA: PopAdLdVar
  loc_A989AB: FLdRfVar var_D4
  loc_A989AE: ImpAdLdRf MemVar_C44F9C
  loc_A989B1: NewIfNullPr Me
  loc_A989B4:  = Me.Global.Printer
  loc_A989B9: FLdPr var_D4
  loc_A989BC: LateIdSt
  loc_A989C1: FFree1Ad var_D4
  loc_A989C4: ExitProc
End Function

Private Function Proc_260_1_AFCDAC(arg_C, arg_10, arg_14, arg_18) 'AFCDAC
  'Data Table: 40317C
  loc_AFC634: OnErrorGoto loc_AFCD62
  loc_AFC637: ILdRf arg_18
  loc_AFC63A: CI2I4
  loc_AFC63B: ILdRf arg_14
  loc_AFC63E: CI2I4
  loc_AFC63F: FLdI2 arg_10
  loc_AFC642: ILdRf arg_C
  loc_AFC645: CUI1I4
  loc_AFC647: ImpAdCallFPR4  = Proc_260_0_A989C8(, , )
  loc_AFC64C: FMemLdI2 arg_8(56)
  loc_AFC651: BranchF loc_AFC657
  loc_AFC654: Branch loc_AFCD62
  loc_AFC657: FMemLdRf unk_403185
  loc_AFC65C: NewIfNullPr clscheque
  loc_AFC65F: Call clscheque.MoveFirst()
  loc_AFC664: LitI2_Byte 1
  loc_AFC666: FMemLdRf unk_403185
  loc_AFC66B: FLdRfVar var_88
  loc_AFC66E: FMemLdRf unk_403185
  loc_AFC673: NewIfNullPr clscheque
  loc_AFC676: from_stack_1 = clscheque.RecordCount
  loc_AFC67B: ILdRf var_88
  loc_AFC67E: CI2I4
  loc_AFC67F: ForI2 var_8C
  loc_AFC685: LitVarStr var_A0, "Times New Roman"
  loc_AFC68A: PopAdLdVar
  loc_AFC68B: FLdRfVar var_90
  loc_AFC68E: ImpAdLdRf MemVar_C44F9C
  loc_AFC691: NewIfNullPr Me
  loc_AFC694:  = Me.Global.Printer
  loc_AFC699: FLdPr var_90
  loc_AFC69C: LateIdSt
  loc_AFC6A1: FFree1Ad var_90
  loc_AFC6A4: LitI2_Byte &HE
  loc_AFC6A6: CR8I2
  loc_AFC6A7: CVarR4
  loc_AFC6AB: PopAdLdVar
  loc_AFC6AC: FLdRfVar var_90
  loc_AFC6AF: ImpAdLdRf MemVar_C44F9C
  loc_AFC6B2: NewIfNullPr Me
  loc_AFC6B5:  = Me.Global.Printer
  loc_AFC6BA: FLdPr var_90
  loc_AFC6BD: LateIdSt
  loc_AFC6C2: FFree1Ad var_90
  loc_AFC6C5: FLdRfVar var_B8
  loc_AFC6C8: LitVarStr var_A0, "ImpoCheq"
  loc_AFC6CD: PopAdLdVar
  loc_AFC6CE: FLdRfVar var_B4
  loc_AFC6D1: FLdRfVar var_90
  loc_AFC6D4: FMemLdRf unk_403185
  loc_AFC6D9: NewIfNullPr clscheque
  loc_AFC6DC: from_stack_1v = clscheque.RsFrmGet()
  loc_AFC6E1: FLdPr var_90
  loc_AFC6E4:  = Me.Fields
  loc_AFC6E9: FLdPr var_B4
  loc_AFC6EC: from_stack_2 = Me.Item(from_stack_1)
  loc_AFC6F1: LitI4 -1
  loc_AFC6F6: LitI4 0
  loc_AFC6FB: LitI4 -1
  loc_AFC700: LitI4 2
  loc_AFC705: FLdZeroAd var_B8
  loc_AFC708: CVarAd
  loc_AFC70C: ImpAdCallI2 FormatNumber(, , , , )
  loc_AFC711: FMemStStr arg_8(20)
  loc_AFC717: FFreeAd var_90 = ""
  loc_AFC71E: FFree1Var var_C8 = ""
  loc_AFC721: LitVarStr var_A0, "000000000000"
  loc_AFC726: PopAdLdVar
  loc_AFC727: FLdRfVar var_90
  loc_AFC72A: ImpAdLdRf MemVar_C44F9C
  loc_AFC72D: NewIfNullPr Me
  loc_AFC730:  = Me.Global.Printer
  loc_AFC735: FLdPr var_90
  loc_AFC738: LateIdCallLdVar
  loc_AFC742: PopAd
  loc_AFC744: LitI2 150
  loc_AFC747: CR8I2
  loc_AFC748: FLdRfVar var_C8
  loc_AFC74B: CR8Var
  loc_AFC74D: SubR4
  loc_AFC74E: CVarR4
  loc_AFC752: PopAdLdVar
  loc_AFC753: FLdRfVar var_B4
  loc_AFC756: ImpAdLdRf MemVar_C44F9C
  loc_AFC759: NewIfNullPr Me
  loc_AFC75C:  = Me.Global.Printer
  loc_AFC761: FLdPr var_B4
  loc_AFC764: LateIdSt
  loc_AFC769: FFreeAd var_90 = ""
  loc_AFC770: FFree1Var var_C8 = ""
  loc_AFC773: FLdRfVar var_90
  loc_AFC776: ImpAdLdRf MemVar_C44F9C
  loc_AFC779: NewIfNullPr Me
  loc_AFC77C:  = Me.Global.Printer
  loc_AFC781: FMemLdR4 arg_8(20)
  loc_AFC786: ILdRf var_90
  loc_AFC789: PrintObject
  loc_AFC78F: FFree1Ad var_90
  loc_AFC792: LitVarStr var_A0, "Times New Roman"
  loc_AFC797: PopAdLdVar
  loc_AFC798: FLdRfVar var_90
  loc_AFC79B: ImpAdLdRf MemVar_C44F9C
  loc_AFC79E: NewIfNullPr Me
  loc_AFC7A1:  = Me.Global.Printer
  loc_AFC7A6: FLdPr var_90
  loc_AFC7A9: LateIdSt
  loc_AFC7AE: FFree1Ad var_90
  loc_AFC7B1: LitI2_Byte 9
  loc_AFC7B3: CR8I2
  loc_AFC7B4: CVarR4
  loc_AFC7B8: PopAdLdVar
  loc_AFC7B9: FLdRfVar var_90
  loc_AFC7BC: ImpAdLdRf MemVar_C44F9C
  loc_AFC7BF: NewIfNullPr Me
  loc_AFC7C2:  = Me.Global.Printer
  loc_AFC7C7: FLdPr var_90
  loc_AFC7CA: LateIdSt
  loc_AFC7CF: FFree1Ad var_90
  loc_AFC7D2: FLdRfVar var_90
  loc_AFC7D5: ImpAdLdRf MemVar_C44F9C
  loc_AFC7D8: NewIfNullPr Me
  loc_AFC7DB:  = Me.Global.Printer
  loc_AFC7E0: FLdPr var_90
  loc_AFC7E3: LateIdLdVar var_C8 DispID_11 1
  loc_AFC7EA: CR8Var
  loc_AFC7EC: LitI2_Byte 1
  loc_AFC7EE: CR8I2
  loc_AFC7EF: AddR8
  loc_AFC7F0: CVarR4
  loc_AFC7F4: PopAdLdVar
  loc_AFC7F5: FLdRfVar var_B4
  loc_AFC7F8: ImpAdLdRf MemVar_C44F9C
  loc_AFC7FB: NewIfNullPr Me
  loc_AFC7FE:  = Me.Global.Printer
  loc_AFC803: FLdPr var_B4
  loc_AFC806: LateIdSt
  loc_AFC80B: FFreeAd var_90 = ""
  loc_AFC812: FFree1Var var_C8 = ""
  loc_AFC815: FLdRfVar var_B8
  loc_AFC818: LitVarStr var_A0, "FechCheq"
  loc_AFC81D: PopAdLdVar
  loc_AFC81E: FLdRfVar var_B4
  loc_AFC821: FLdRfVar var_90
  loc_AFC824: FMemLdRf unk_403185
  loc_AFC829: NewIfNullPr clscheque
  loc_AFC82C: from_stack_1v = clscheque.RsFrmGet()
  loc_AFC831: FLdPr var_90
  loc_AFC834:  = Me.Fields
  loc_AFC839: FLdPr var_B4
  loc_AFC83C: from_stack_2 = Me.Item(from_stack_1)
  loc_AFC841: LitI4 1
  loc_AFC846: LitI4 1
  loc_AFC84B: LitVarStr var_B0, "dd \de mmmm       yyyy"
  loc_AFC850: FStVarCopyObj var_F8
  loc_AFC853: FLdRfVar var_F8
  loc_AFC856: FLdZeroAd var_B8
  loc_AFC859: CVarAd
  loc_AFC85D: ImpAdCallI2 Format$(, )
  loc_AFC862: CVarStr var_10C
  loc_AFC865: PopAdLdVar
  loc_AFC866: FLdRfVar var_FC
  loc_AFC869: ImpAdLdRf MemVar_C44F9C
  loc_AFC86C: NewIfNullPr Me
  loc_AFC86F:  = Me.Global.Printer
  loc_AFC874: FLdPr var_FC
  loc_AFC877: LateIdCallLdVar
  loc_AFC881: PopAd
  loc_AFC883: LitI2_Byte &H4B
  loc_AFC885: CR8I2
  loc_AFC886: FLdRfVar var_11C
  loc_AFC889: CR8Var
  loc_AFC88B: SubR4
  loc_AFC88C: CVarR4
  loc_AFC890: PopAdLdVar
  loc_AFC891: FLdRfVar var_120
  loc_AFC894: ImpAdLdRf MemVar_C44F9C
  loc_AFC897: NewIfNullPr Me
  loc_AFC89A:  = Me.Global.Printer
  loc_AFC89F: FLdPr var_120
  loc_AFC8A2: LateIdSt
  loc_AFC8A7: FFreeAd var_90 = "": var_B4 = "": var_FC = ""
  loc_AFC8B2: FFreeVar var_C8 = "": var_F8 = "": var_10C = ""
  loc_AFC8BD: FLdRfVar var_90
  loc_AFC8C0: ImpAdLdRf MemVar_C44F9C
  loc_AFC8C3: NewIfNullPr Me
  loc_AFC8C6:  = Me.Global.Printer
  loc_AFC8CB: FLdRfVar var_FC
  loc_AFC8CE: LitVarStr var_A0, "FechCheq"
  loc_AFC8D3: PopAdLdVar
  loc_AFC8D4: FLdRfVar var_B8
  loc_AFC8D7: FLdRfVar var_B4
  loc_AFC8DA: FMemLdRf unk_403185
  loc_AFC8DF: NewIfNullPr clscheque
  loc_AFC8E2: from_stack_1v = clscheque.RsFrmGet()
  loc_AFC8E7: FLdPr var_B4
  loc_AFC8EA:  = Me.Fields
  loc_AFC8EF: FLdPr var_B8
  loc_AFC8F2: from_stack_2 = Me.Item(from_stack_1)
  loc_AFC8F7: LitI4 1
  loc_AFC8FC: LitI4 1
  loc_AFC901: LitVarStr var_B0, "dd \de  mmmm                                          yyyy"
  loc_AFC906: FStVarCopyObj var_F8
  loc_AFC909: FLdRfVar var_F8
  loc_AFC90C: FLdZeroAd var_FC
  loc_AFC90F: CVarAd
  loc_AFC913: ImpAdCallI2 Format$(, )
  loc_AFC918: FStStr var_138
  loc_AFC91B: FLdZeroAd var_138
  loc_AFC91E: FStStrNoPop var_134
  loc_AFC921: ILdRf var_90
  loc_AFC924: PrintObject
  loc_AFC92A: FFreeStr var_134 = ""
  loc_AFC931: FFreeAd var_90 = "": var_B4 = ""
  loc_AFC93A: FFreeVar var_C8 = ""
  loc_AFC941: LitI2_Byte &HA
  loc_AFC943: CR8I2
  loc_AFC944: CVarR4
  loc_AFC948: PopAdLdVar
  loc_AFC949: FLdRfVar var_90
  loc_AFC94C: ImpAdLdRf MemVar_C44F9C
  loc_AFC94F: NewIfNullPr Me
  loc_AFC952:  = Me.Global.Printer
  loc_AFC957: FLdPr var_90
  loc_AFC95A: LateIdSt
  loc_AFC95F: FFree1Ad var_90
  loc_AFC962: FLdRfVar var_90
  loc_AFC965: ImpAdLdRf MemVar_C44F9C
  loc_AFC968: NewIfNullPr Me
  loc_AFC96B:  = Me.Global.Printer
  loc_AFC970: FLdPr var_90
  loc_AFC973: LateIdLdVar var_C8 DispID_11 1
  loc_AFC97A: CR8Var
  loc_AFC97C: LitI2_Byte 2
  loc_AFC97E: CR8I2
  loc_AFC97F: AddR8
  loc_AFC980: CVarR4
  loc_AFC984: PopAdLdVar
  loc_AFC985: FLdRfVar var_B4
  loc_AFC988: ImpAdLdRf MemVar_C44F9C
  loc_AFC98B: NewIfNullPr Me
  loc_AFC98E:  = Me.Global.Printer
  loc_AFC993: FLdPr var_B4
  loc_AFC996: LateIdSt
  loc_AFC99B: FFreeAd var_90 = ""
  loc_AFC9A2: FFree1Var var_C8 = ""
  loc_AFC9A5: LitI2_Byte &H24
  loc_AFC9A7: CR8I2
  loc_AFC9A8: CVarR4
  loc_AFC9AC: PopAdLdVar
  loc_AFC9AD: FLdRfVar var_90
  loc_AFC9B0: ImpAdLdRf MemVar_C44F9C
  loc_AFC9B3: NewIfNullPr Me
  loc_AFC9B6:  = Me.Global.Printer
  loc_AFC9BB: FLdPr var_90
  loc_AFC9BE: LateIdSt
  loc_AFC9C3: FFree1Ad var_90
  loc_AFC9C6: FLdRfVar var_C8
  loc_AFC9C9: FLdRfVar var_B8
  loc_AFC9CC: LitVarStr var_A0, "OrdeCheq"
  loc_AFC9D1: PopAdLdVar
  loc_AFC9D2: FLdRfVar var_B4
  loc_AFC9D5: FLdRfVar var_90
  loc_AFC9D8: FMemLdRf unk_403185
  loc_AFC9DD: NewIfNullPr clscheque
  loc_AFC9E0: from_stack_1v = clscheque.RsFrmGet()
  loc_AFC9E5: FLdPr var_90
  loc_AFC9E8:  = Me.Fields
  loc_AFC9ED: FLdPr var_B4
  loc_AFC9F0: from_stack_2 = Me.Item(from_stack_1)
  loc_AFC9F5: FLdPr var_B8
  loc_AFC9F8:  = Me.Value
  loc_AFC9FD: LitDate 110.49
  loc_AFCA06: PopFPR4
  loc_AFCA07: LitDate 98.49
  loc_AFCA10: PopFPR4
  loc_AFCA11: FMemLdRf unk_403185
  loc_AFCA16: FMemLdRf unk_403185
  loc_AFCA1B: FLdRfVar var_C8
  loc_AFCA1E: CStrVarTmp
  loc_AFCA1F: FStStrNoPop var_134
  loc_AFCA22: ImpAdCallFPR4 Proc_260_7_A344F4(, , , , )
  loc_AFCA27: FFree1Str var_134
  loc_AFCA2A: FFreeAd var_90 = "": var_B4 = ""
  loc_AFCA33: FFree1Var var_C8 = ""
  loc_AFCA36: FLdRfVar var_90
  loc_AFCA39: ImpAdLdRf MemVar_C44F9C
  loc_AFCA3C: NewIfNullPr Me
  loc_AFCA3F:  = Me.Global.Printer
  loc_AFCA44: FMemLdR4 arg_8(24)
  loc_AFCA49: ILdRf var_90
  loc_AFCA4C: PrintObject
  loc_AFCA52: FFree1Ad var_90
  loc_AFCA55: LitI2_Byte &H13
  loc_AFCA57: CR8I2
  loc_AFCA58: CVarR4
  loc_AFCA5C: PopAdLdVar
  loc_AFCA5D: FLdRfVar var_90
  loc_AFCA60: ImpAdLdRf MemVar_C44F9C
  loc_AFCA63: NewIfNullPr Me
  loc_AFCA66:  = Me.Global.Printer
  loc_AFCA6B: FLdPr var_90
  loc_AFCA6E: LateIdSt
  loc_AFCA73: FFree1Ad var_90
  loc_AFCA76: FLdRfVar var_90
  loc_AFCA79: ImpAdLdRf MemVar_C44F9C
  loc_AFCA7C: NewIfNullPr Me
  loc_AFCA7F:  = Me.Global.Printer
  loc_AFCA84: FMemLdR4 arg_8(28)
  loc_AFCA89: ILdRf var_90
  loc_AFCA8C: PrintObject
  loc_AFCA92: FFree1Ad var_90
  loc_AFCA95: FLdRfVar var_90
  loc_AFCA98: ImpAdLdRf MemVar_C44F9C
  loc_AFCA9B: NewIfNullPr Me
  loc_AFCA9E:  = Me.Global.Printer
  loc_AFCAA3: FLdPr var_90
  loc_AFCAA6: LateIdLdVar var_C8 DispID_11 1
  loc_AFCAAD: CR8Var
  loc_AFCAAF: LitI2_Byte 1
  loc_AFCAB1: CR8I2
  loc_AFCAB2: AddR8
  loc_AFCAB3: CVarR4
  loc_AFCAB7: PopAdLdVar
  loc_AFCAB8: FLdRfVar var_B4
  loc_AFCABB: ImpAdLdRf MemVar_C44F9C
  loc_AFCABE: NewIfNullPr Me
  loc_AFCAC1:  = Me.Global.Printer
  loc_AFCAC6: FLdPr var_B4
  loc_AFCAC9: LateIdSt
  loc_AFCACE: FFreeAd var_90 = ""
  loc_AFCAD5: FFree1Var var_C8 = ""
  loc_AFCAD8: LitI2_Byte &H2F
  loc_AFCADA: CR8I2
  loc_AFCADB: CVarR4
  loc_AFCADF: PopAdLdVar
  loc_AFCAE0: FLdRfVar var_90
  loc_AFCAE3: ImpAdLdRf MemVar_C44F9C
  loc_AFCAE6: NewIfNullPr Me
  loc_AFCAE9:  = Me.Global.Printer
  loc_AFCAEE: FLdPr var_90
  loc_AFCAF1: LateIdSt
  loc_AFCAF6: FFree1Ad var_90
  loc_AFCAF9: FLdRfVar var_C8
  loc_AFCAFC: FLdRfVar var_B8
  loc_AFCAFF: LitVarStr var_A0, "ImpoCheq"
  loc_AFCB04: PopAdLdVar
  loc_AFCB05: FLdRfVar var_B4
  loc_AFCB08: FLdRfVar var_90
  loc_AFCB0B: FMemLdRf unk_403185
  loc_AFCB10: NewIfNullPr clscheque
  loc_AFCB13: from_stack_1v = clscheque.RsFrmGet()
  loc_AFCB18: FLdPr var_90
  loc_AFCB1B:  = Me.Fields
  loc_AFCB20: FLdPr var_B4
  loc_AFCB23: from_stack_2 = Me.Item(from_stack_1)
  loc_AFCB28: FLdPr var_B8
  loc_AFCB2B:  = Me.Value
  loc_AFCB30: FLdRfVar var_C8
  loc_AFCB33: CR4Var
  loc_AFCB34: PopFPR8
  loc_AFCB35: ImpAdCallI2 Proc_261_26_9A5B0C(, )
  loc_AFCB3A: FStStr var_138
  loc_AFCB3D: LitDate 110.49
  loc_AFCB46: PopFPR4
  loc_AFCB47: LitDate 85.72
  loc_AFCB50: PopFPR4
  loc_AFCB51: FMemLdRf unk_403185
  loc_AFCB56: FMemLdRf unk_403185
  loc_AFCB5B: FLdZeroAd var_138
  loc_AFCB5E: FStStrNoPop var_134
  loc_AFCB61: ImpAdCallFPR4 Proc_260_7_A344F4(, , , , )
  loc_AFCB66: FFreeStr var_134 = ""
  loc_AFCB6D: FFreeAd var_90 = "": var_B4 = ""
  loc_AFCB76: FFree1Var var_C8 = ""
  loc_AFCB79: FLdRfVar var_90
  loc_AFCB7C: ImpAdLdRf MemVar_C44F9C
  loc_AFCB7F: NewIfNullPr Me
  loc_AFCB82:  = Me.Global.Printer
  loc_AFCB87: FMemLdR4 arg_8(32)
  loc_AFCB8C: ILdRf var_90
  loc_AFCB8F: PrintObject
  loc_AFCB95: FFree1Ad var_90
  loc_AFCB98: LitI2_Byte &H14
  loc_AFCB9A: CR8I2
  loc_AFCB9B: CVarR4
  loc_AFCB9F: PopAdLdVar
  loc_AFCBA0: FLdRfVar var_90
  loc_AFCBA3: ImpAdLdRf MemVar_C44F9C
  loc_AFCBA6: NewIfNullPr Me
  loc_AFCBA9:  = Me.Global.Printer
  loc_AFCBAE: FLdPr var_90
  loc_AFCBB1: LateIdSt
  loc_AFCBB6: FFree1Ad var_90
  loc_AFCBB9: FLdRfVar var_90
  loc_AFCBBC: ImpAdLdRf MemVar_C44F9C
  loc_AFCBBF: NewIfNullPr Me
  loc_AFCBC2:  = Me.Global.Printer
  loc_AFCBC7: FMemLdR4 arg_8(36)
  loc_AFCBCC: ILdRf var_90
  loc_AFCBCF: PrintObject
  loc_AFCBD5: FFree1Ad var_90
  loc_AFCBD8: FMemLdI2 arg_8(4)
  loc_AFCBDD: LitI2_Byte 4
  loc_AFCBDF: ModI2
  loc_AFCBE0: LitI2_Byte 0
  loc_AFCBE2: EqI2
  loc_AFCBE3: BranchF loc_AFCC43
  loc_AFCBE6: FMemLdI2 arg_8(4)
  loc_AFCBEB: CI4UI1
  loc_AFCBEC: FLdRfVar var_88
  loc_AFCBEF: FMemLdRf unk_403185
  loc_AFCBF4: NewIfNullPr clscheque
  loc_AFCBF7: from_stack_1 = clscheque.RecordCount
  loc_AFCBFC: ILdRf var_88
  loc_AFCBFF: NeI4
  loc_AFCC00: BranchF loc_AFCC40
  loc_AFCC03: FLdRfVar var_90
  loc_AFCC06: ImpAdLdRf MemVar_C44F9C
  loc_AFCC09: NewIfNullPr Me
  loc_AFCC0C:  = Me.Global.Printer
  loc_AFCC11: FLdPr var_90
  loc_AFCC14: LateIdCall
  loc_AFCC1C: FFree1Ad var_90
  loc_AFCC1F: LitI2_Byte 0
  loc_AFCC21: CR8I2
  loc_AFCC22: CVarR4
  loc_AFCC26: PopAdLdVar
  loc_AFCC27: FLdRfVar var_90
  loc_AFCC2A: ImpAdLdRf MemVar_C44F9C
  loc_AFCC2D: NewIfNullPr Me
  loc_AFCC30:  = Me.Global.Printer
  loc_AFCC35: FLdPr var_90
  loc_AFCC38: LateIdSt
  loc_AFCC3D: FFree1Ad var_90
  loc_AFCC40: Branch loc_AFCC8C
  loc_AFCC43: FLdRfVar var_90
  loc_AFCC46: ImpAdLdRf MemVar_C44F9C
  loc_AFCC49: NewIfNullPr Me
  loc_AFCC4C:  = Me.Global.Printer
  loc_AFCC51: FLdPr var_90
  loc_AFCC54: LateIdLdVar var_C8 DispID_11 1
  loc_AFCC5B: CR8Var
  loc_AFCC5D: LitDate 46.5
  loc_AFCC66: AddR8
  loc_AFCC67: CVarR4
  loc_AFCC6B: PopAdLdVar
  loc_AFCC6C: FLdRfVar var_B4
  loc_AFCC6F: ImpAdLdRf MemVar_C44F9C
  loc_AFCC72: NewIfNullPr Me
  loc_AFCC75:  = Me.Global.Printer
  loc_AFCC7A: FLdPr var_B4
  loc_AFCC7D: LateIdSt
  loc_AFCC82: FFreeAd var_90 = ""
  loc_AFCC89: FFree1Var var_C8 = ""
  loc_AFCC8C: ImpAdCallFPR4 Proc_260_9_A58BBC()
  loc_AFCC91: FMemLdRf unk_403185
  loc_AFCC96: NewIfNullPr clscheque
  loc_AFCC99: Call clscheque.MoveSiguiente()
  loc_AFCC9E: FMemLdRf unk_403185
  loc_AFCCA3: NextI2 var_8C, loc_AFC685
  loc_AFCCA8: FLdRfVar var_90
  loc_AFCCAB: ImpAdLdRf MemVar_C44F9C
  loc_AFCCAE: NewIfNullPr Me
  loc_AFCCB1:  = Me.Global.Printer
  loc_AFCCB6: FLdPr var_90
  loc_AFCCB9: LateIdCall
  loc_AFCCC1: FFree1Ad var_90
  loc_AFCCC4: FMemLdR4 arg_8(0)
  loc_AFCCC9: LitStr vbNullString
  loc_AFCCCC: NeStr
  loc_AFCCCE: BranchF loc_AFCCDB
  loc_AFCCD1: FMemLdRf unk_403185
  loc_AFCCD6: ImpAdCallFPR4 Proc_265_1_9A06AC()
  loc_AFCCDB: LitVarStr var_A0, "Se enviaron "
  loc_AFCCE0: FMemLdI2 arg_8(44)
  loc_AFCCE5: CR8I2
  loc_AFCCE6: PopFPR8
  loc_AFCCE7: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AFCCEC: CVarStr var_C8
  loc_AFCCEF: FLdRfVar var_F8
  loc_AFCCF2: ImpAdCallFPR4  = LCase()
  loc_AFCCF7: FLdRfVar var_F8
  loc_AFCCFA: ConcatVar var_10C
  loc_AFCCFE: LitVarStr var_B0, " cheques"
  loc_AFCD03: ConcatVar var_11C
  loc_AFCD07: LitVarStr var_E8, "Se envió un cheque"
  loc_AFCD0C: FStVarCopyObj var_148
  loc_AFCD0F: FLdRfVar var_148
  loc_AFCD12: FMemLdI2 arg_8(44)
  loc_AFCD17: LitI2_Byte 1
  loc_AFCD19: EqI2
  loc_AFCD1A: CVarBoolI2 var_D8
  loc_AFCD1E: FLdRfVar var_158
  loc_AFCD21: ImpAdCallFPR4  = IIf(, , )
  loc_AFCD26: LitI4 0
  loc_AFCD2B: FLdRfVar var_158
  loc_AFCD2E: LitVarStr var_130, " a la impresora."
  loc_AFCD33: ConcatVar var_168
  loc_AFCD37: CStrVarVal var_134
  loc_AFCD3B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AFCD40: FFree1Str var_134
  loc_AFCD43: FFreeVar var_C8 = "": var_F8 = "": var_10C = "": var_D8 = "": var_148 = "": var_11C = "": var_158 = ""
  loc_AFCD56: LitNothing
  loc_AFCD58: CastAd
  loc_AFCD5B: FMemStAdFunc arg_8(8)
  loc_AFCD61: ExitProc
  loc_AFCD62: FMemLdR4 arg_8(0)
  loc_AFCD67: LitStr vbNullString
  loc_AFCD6A: NeStr
  loc_AFCD6C: BranchF loc_AFCD79
  loc_AFCD6F: FMemLdRf unk_403185
  loc_AFCD74: ImpAdCallFPR4 Proc_265_1_9A06AC()
  loc_AFCD79: FLdRfVar var_88
  loc_AFCD7C: ImpAdCallI2 Err 'rtcErrObj
  loc_AFCD81: FStAdFunc var_90
  loc_AFCD84: FLdPr var_90
  loc_AFCD87:  = Err.Number
  loc_AFCD8C: ILdRf var_88
  loc_AFCD8F: LitI4 &H17C
  loc_AFCD94: EqI4
  loc_AFCD95: FFree1Ad var_90
  loc_AFCD98: BranchF loc_AFCDA9
  loc_AFCD9B: LitI4 0
  loc_AFCDA0: LitStr "Error de impresora"
  loc_AFCDA3: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AFCDA8: ExitProc
  loc_AFCDA9: ExitProc
End Function

Private Function Proc_260_2_AEAAF8(arg_C, arg_10, arg_14, arg_18) 'AEAAF8
  'Data Table: 40317C
  loc_AEA3EC: OnErrorGoto loc_AEAAB0
  loc_AEA3EF: ILdRf arg_18
  loc_AEA3F2: CI2I4
  loc_AEA3F3: ILdRf arg_14
  loc_AEA3F6: CI2I4
  loc_AEA3F7: FLdI2 arg_10
  loc_AEA3FA: ILdRf arg_C
  loc_AEA3FD: CUI1I4
  loc_AEA3FF: ImpAdCallFPR4  = Proc_260_0_A989C8(, , )
  loc_AEA404: FMemLdI2 arg_8(56)
  loc_AEA409: BranchF loc_AEA40F
  loc_AEA40C: Branch loc_AEAAB0
  loc_AEA40F: FMemLdRf unk_403185
  loc_AEA414: NewIfNullPr clscheque
  loc_AEA417: Call clscheque.MoveFirst()
  loc_AEA41C: LitI2_Byte 1
  loc_AEA41E: FMemLdRf unk_403185
  loc_AEA423: FLdRfVar var_88
  loc_AEA426: FMemLdRf unk_403185
  loc_AEA42B: NewIfNullPr clscheque
  loc_AEA42E: from_stack_1 = clscheque.RecordCount
  loc_AEA433: ILdRf var_88
  loc_AEA436: CI2I4
  loc_AEA437: ForI2 var_8C
  loc_AEA43D: LitVarStr var_A0, "Arial"
  loc_AEA442: PopAdLdVar
  loc_AEA443: FLdRfVar var_90
  loc_AEA446: ImpAdLdRf MemVar_C44F9C
  loc_AEA449: NewIfNullPr Me
  loc_AEA44C:  = Me.Global.Printer
  loc_AEA451: FLdPr var_90
  loc_AEA454: LateIdSt
  loc_AEA459: FFree1Ad var_90
  loc_AEA45C: LitI2_Byte &HE
  loc_AEA45E: CR8I2
  loc_AEA45F: CVarR4
  loc_AEA463: PopAdLdVar
  loc_AEA464: FLdRfVar var_90
  loc_AEA467: ImpAdLdRf MemVar_C44F9C
  loc_AEA46A: NewIfNullPr Me
  loc_AEA46D:  = Me.Global.Printer
  loc_AEA472: FLdPr var_90
  loc_AEA475: LateIdSt
  loc_AEA47A: FFree1Ad var_90
  loc_AEA47D: LitVar_TRUE var_A0
  loc_AEA480: PopAdLdVar
  loc_AEA481: FLdRfVar var_90
  loc_AEA484: ImpAdLdRf MemVar_C44F9C
  loc_AEA487: NewIfNullPr Me
  loc_AEA48A:  = Me.Global.Printer
  loc_AEA48F: FLdPr var_90
  loc_AEA492: LateIdSt
  loc_AEA497: FFree1Ad var_90
  loc_AEA49A: FLdRfVar var_B8
  loc_AEA49D: LitVarStr var_A0, "ImpoCheq"
  loc_AEA4A2: PopAdLdVar
  loc_AEA4A3: FLdRfVar var_B4
  loc_AEA4A6: FLdRfVar var_90
  loc_AEA4A9: FMemLdRf unk_403185
  loc_AEA4AE: NewIfNullPr clscheque
  loc_AEA4B1: from_stack_1v = clscheque.RsFrmGet()
  loc_AEA4B6: FLdPr var_90
  loc_AEA4B9:  = Me.Fields
  loc_AEA4BE: FLdPr var_B4
  loc_AEA4C1: from_stack_2 = Me.Item(from_stack_1)
  loc_AEA4C6: LitI4 -1
  loc_AEA4CB: LitI4 0
  loc_AEA4D0: LitI4 -1
  loc_AEA4D5: LitI4 2
  loc_AEA4DA: FLdZeroAd var_B8
  loc_AEA4DD: CVarAd
  loc_AEA4E1: ImpAdCallI2 FormatNumber(, , , , )
  loc_AEA4E6: FMemStStr arg_8(20)
  loc_AEA4EC: FFreeAd var_90 = ""
  loc_AEA4F3: FFree1Var var_C8 = ""
  loc_AEA4F6: LitVarStr var_A0, "000000000"
  loc_AEA4FB: PopAdLdVar
  loc_AEA4FC: FLdRfVar var_90
  loc_AEA4FF: ImpAdLdRf MemVar_C44F9C
  loc_AEA502: NewIfNullPr Me
  loc_AEA505:  = Me.Global.Printer
  loc_AEA50A: FLdPr var_90
  loc_AEA50D: LateIdCallLdVar
  loc_AEA517: PopAd
  loc_AEA519: LitI2 146
  loc_AEA51C: CR8I2
  loc_AEA51D: FLdRfVar var_C8
  loc_AEA520: CR8Var
  loc_AEA522: SubR4
  loc_AEA523: CVarR4
  loc_AEA527: PopAdLdVar
  loc_AEA528: FLdRfVar var_B4
  loc_AEA52B: ImpAdLdRf MemVar_C44F9C
  loc_AEA52E: NewIfNullPr Me
  loc_AEA531:  = Me.Global.Printer
  loc_AEA536: FLdPr var_B4
  loc_AEA539: LateIdSt
  loc_AEA53E: FFreeAd var_90 = ""
  loc_AEA545: FFree1Var var_C8 = ""
  loc_AEA548: FLdRfVar var_90
  loc_AEA54B: ImpAdLdRf MemVar_C44F9C
  loc_AEA54E: NewIfNullPr Me
  loc_AEA551:  = Me.Global.Printer
  loc_AEA556: FMemLdR4 arg_8(20)
  loc_AEA55B: ILdRf var_90
  loc_AEA55E: PrintObject
  loc_AEA564: FFree1Ad var_90
  loc_AEA567: LitVarStr var_A0, "Times New Roman"
  loc_AEA56C: PopAdLdVar
  loc_AEA56D: FLdRfVar var_90
  loc_AEA570: ImpAdLdRf MemVar_C44F9C
  loc_AEA573: NewIfNullPr Me
  loc_AEA576:  = Me.Global.Printer
  loc_AEA57B: FLdPr var_90
  loc_AEA57E: LateIdSt
  loc_AEA583: FFree1Ad var_90
  loc_AEA586: LitI2_Byte 9
  loc_AEA588: CR8I2
  loc_AEA589: CVarR4
  loc_AEA58D: PopAdLdVar
  loc_AEA58E: FLdRfVar var_90
  loc_AEA591: ImpAdLdRf MemVar_C44F9C
  loc_AEA594: NewIfNullPr Me
  loc_AEA597:  = Me.Global.Printer
  loc_AEA59C: FLdPr var_90
  loc_AEA59F: LateIdSt
  loc_AEA5A4: FFree1Ad var_90
  loc_AEA5A7: FLdRfVar var_90
  loc_AEA5AA: ImpAdLdRf MemVar_C44F9C
  loc_AEA5AD: NewIfNullPr Me
  loc_AEA5B0:  = Me.Global.Printer
  loc_AEA5B5: FLdPr var_90
  loc_AEA5B8: LateIdLdVar var_C8 DispID_11 1
  loc_AEA5BF: CR8Var
  loc_AEA5C1: LitI2_Byte 1
  loc_AEA5C3: CR8I2
  loc_AEA5C4: AddR8
  loc_AEA5C5: CVarR4
  loc_AEA5C9: PopAdLdVar
  loc_AEA5CA: FLdRfVar var_B4
  loc_AEA5CD: ImpAdLdRf MemVar_C44F9C
  loc_AEA5D0: NewIfNullPr Me
  loc_AEA5D3:  = Me.Global.Printer
  loc_AEA5D8: FLdPr var_B4
  loc_AEA5DB: LateIdSt
  loc_AEA5E0: FFreeAd var_90 = ""
  loc_AEA5E7: FFree1Var var_C8 = ""
  loc_AEA5EA: LitI2_Byte &H32
  loc_AEA5EC: CR8I2
  loc_AEA5ED: CVarR4
  loc_AEA5F1: PopAdLdVar
  loc_AEA5F2: FLdRfVar var_90
  loc_AEA5F5: ImpAdLdRf MemVar_C44F9C
  loc_AEA5F8: NewIfNullPr Me
  loc_AEA5FB:  = Me.Global.Printer
  loc_AEA600: FLdPr var_90
  loc_AEA603: LateIdSt
  loc_AEA608: FFree1Ad var_90
  loc_AEA60B: FLdRfVar var_90
  loc_AEA60E: ImpAdLdRf MemVar_C44F9C
  loc_AEA611: NewIfNullPr Me
  loc_AEA614:  = Me.Global.Printer
  loc_AEA619: FLdRfVar var_EC
  loc_AEA61C: LitVarStr var_A0, "FechCheq"
  loc_AEA621: PopAdLdVar
  loc_AEA622: FLdRfVar var_B8
  loc_AEA625: FLdRfVar var_B4
  loc_AEA628: FMemLdRf unk_403185
  loc_AEA62D: NewIfNullPr clscheque
  loc_AEA630: from_stack_1v = clscheque.RsFrmGet()
  loc_AEA635: FLdPr var_B4
  loc_AEA638:  = Me.Fields
  loc_AEA63D: FLdPr var_B8
  loc_AEA640: from_stack_2 = Me.Item(from_stack_1)
  loc_AEA645: LitI4 1
  loc_AEA64A: LitI4 1
  loc_AEA64F: LitVarStr var_B0, "dd       mmmm                yyyy"
  loc_AEA654: FStVarCopyObj var_FC
  loc_AEA657: FLdRfVar var_FC
  loc_AEA65A: FLdZeroAd var_EC
  loc_AEA65D: CVarAd
  loc_AEA661: ImpAdCallI2 Format$(, )
  loc_AEA666: FStStr var_104
  loc_AEA669: FLdZeroAd var_104
  loc_AEA66C: FStStrNoPop var_100
  loc_AEA66F: ILdRf var_90
  loc_AEA672: PrintObject
  loc_AEA678: FFreeStr var_100 = ""
  loc_AEA67F: FFreeAd var_90 = "": var_B4 = ""
  loc_AEA688: FFreeVar var_C8 = ""
  loc_AEA68F: LitI2_Byte &HA
  loc_AEA691: CR8I2
  loc_AEA692: CVarR4
  loc_AEA696: PopAdLdVar
  loc_AEA697: FLdRfVar var_90
  loc_AEA69A: ImpAdLdRf MemVar_C44F9C
  loc_AEA69D: NewIfNullPr Me
  loc_AEA6A0:  = Me.Global.Printer
  loc_AEA6A5: FLdPr var_90
  loc_AEA6A8: LateIdSt
  loc_AEA6AD: FFree1Ad var_90
  loc_AEA6B0: FLdRfVar var_90
  loc_AEA6B3: ImpAdLdRf MemVar_C44F9C
  loc_AEA6B6: NewIfNullPr Me
  loc_AEA6B9:  = Me.Global.Printer
  loc_AEA6BE: FLdPr var_90
  loc_AEA6C1: LateIdLdVar var_C8 DispID_11 1
  loc_AEA6C8: CR8Var
  loc_AEA6CA: LitDate 1.5
  loc_AEA6D3: AddR8
  loc_AEA6D4: CVarR4
  loc_AEA6D8: PopAdLdVar
  loc_AEA6D9: FLdRfVar var_B4
  loc_AEA6DC: ImpAdLdRf MemVar_C44F9C
  loc_AEA6DF: NewIfNullPr Me
  loc_AEA6E2:  = Me.Global.Printer
  loc_AEA6E7: FLdPr var_B4
  loc_AEA6EA: LateIdSt
  loc_AEA6EF: FFreeAd var_90 = ""
  loc_AEA6F6: FFree1Var var_C8 = ""
  loc_AEA6F9: LitI2_Byte &H28
  loc_AEA6FB: CR8I2
  loc_AEA6FC: CVarR4
  loc_AEA700: PopAdLdVar
  loc_AEA701: FLdRfVar var_90
  loc_AEA704: ImpAdLdRf MemVar_C44F9C
  loc_AEA707: NewIfNullPr Me
  loc_AEA70A:  = Me.Global.Printer
  loc_AEA70F: FLdPr var_90
  loc_AEA712: LateIdSt
  loc_AEA717: FFree1Ad var_90
  loc_AEA71A: FLdRfVar var_C8
  loc_AEA71D: FLdRfVar var_B8
  loc_AEA720: LitVarStr var_A0, "OrdeCheq"
  loc_AEA725: PopAdLdVar
  loc_AEA726: FLdRfVar var_B4
  loc_AEA729: FLdRfVar var_90
  loc_AEA72C: FMemLdRf unk_403185
  loc_AEA731: NewIfNullPr clscheque
  loc_AEA734: from_stack_1v = clscheque.RsFrmGet()
  loc_AEA739: FLdPr var_90
  loc_AEA73C:  = Me.Fields
  loc_AEA741: FLdPr var_B4
  loc_AEA744: from_stack_2 = Me.Item(from_stack_1)
  loc_AEA749: FLdPr var_B8
  loc_AEA74C:  = Me.Value
  loc_AEA751: LitDate 110.49
  loc_AEA75A: PopFPR4
  loc_AEA75B: LitDate 98.49
  loc_AEA764: PopFPR4
  loc_AEA765: FMemLdRf unk_403185
  loc_AEA76A: FMemLdRf unk_403185
  loc_AEA76F: FLdRfVar var_C8
  loc_AEA772: CStrVarTmp
  loc_AEA773: FStStrNoPop var_100
  loc_AEA776: ImpAdCallFPR4 Proc_260_7_A344F4(, , , , )
  loc_AEA77B: FFree1Str var_100
  loc_AEA77E: FFreeAd var_90 = "": var_B4 = ""
  loc_AEA787: FFree1Var var_C8 = ""
  loc_AEA78A: FLdRfVar var_90
  loc_AEA78D: ImpAdLdRf MemVar_C44F9C
  loc_AEA790: NewIfNullPr Me
  loc_AEA793:  = Me.Global.Printer
  loc_AEA798: FMemLdR4 arg_8(24)
  loc_AEA79D: ILdRf var_90
  loc_AEA7A0: PrintObject
  loc_AEA7A6: FFree1Ad var_90
  loc_AEA7A9: LitI2_Byte &H16
  loc_AEA7AB: CR8I2
  loc_AEA7AC: CVarR4
  loc_AEA7B0: PopAdLdVar
  loc_AEA7B1: FLdRfVar var_90
  loc_AEA7B4: ImpAdLdRf MemVar_C44F9C
  loc_AEA7B7: NewIfNullPr Me
  loc_AEA7BA:  = Me.Global.Printer
  loc_AEA7BF: FLdPr var_90
  loc_AEA7C2: LateIdSt
  loc_AEA7C7: FFree1Ad var_90
  loc_AEA7CA: FLdRfVar var_90
  loc_AEA7CD: ImpAdLdRf MemVar_C44F9C
  loc_AEA7D0: NewIfNullPr Me
  loc_AEA7D3:  = Me.Global.Printer
  loc_AEA7D8: FMemLdR4 arg_8(28)
  loc_AEA7DD: ILdRf var_90
  loc_AEA7E0: PrintObject
  loc_AEA7E6: FFree1Ad var_90
  loc_AEA7E9: FLdRfVar var_90
  loc_AEA7EC: ImpAdLdRf MemVar_C44F9C
  loc_AEA7EF: NewIfNullPr Me
  loc_AEA7F2:  = Me.Global.Printer
  loc_AEA7F7: FLdPr var_90
  loc_AEA7FA: LateIdLdVar var_C8 DispID_11 1
  loc_AEA801: CR8Var
  loc_AEA803: LitI2_Byte 1
  loc_AEA805: CR8I2
  loc_AEA806: AddR8
  loc_AEA807: CVarR4
  loc_AEA80B: PopAdLdVar
  loc_AEA80C: FLdRfVar var_B4
  loc_AEA80F: ImpAdLdRf MemVar_C44F9C
  loc_AEA812: NewIfNullPr Me
  loc_AEA815:  = Me.Global.Printer
  loc_AEA81A: FLdPr var_B4
  loc_AEA81D: LateIdSt
  loc_AEA822: FFreeAd var_90 = ""
  loc_AEA829: FFree1Var var_C8 = ""
  loc_AEA82C: LitI2_Byte &H37
  loc_AEA82E: CR8I2
  loc_AEA82F: CVarR4
  loc_AEA833: PopAdLdVar
  loc_AEA834: FLdRfVar var_90
  loc_AEA837: ImpAdLdRf MemVar_C44F9C
  loc_AEA83A: NewIfNullPr Me
  loc_AEA83D:  = Me.Global.Printer
  loc_AEA842: FLdPr var_90
  loc_AEA845: LateIdSt
  loc_AEA84A: FFree1Ad var_90
  loc_AEA84D: FLdRfVar var_C8
  loc_AEA850: FLdRfVar var_B8
  loc_AEA853: LitVarStr var_A0, "ImpoCheq"
  loc_AEA858: PopAdLdVar
  loc_AEA859: FLdRfVar var_B4
  loc_AEA85C: FLdRfVar var_90
  loc_AEA85F: FMemLdRf unk_403185
  loc_AEA864: NewIfNullPr clscheque
  loc_AEA867: from_stack_1v = clscheque.RsFrmGet()
  loc_AEA86C: FLdPr var_90
  loc_AEA86F:  = Me.Fields
  loc_AEA874: FLdPr var_B4
  loc_AEA877: from_stack_2 = Me.Item(from_stack_1)
  loc_AEA87C: FLdPr var_B8
  loc_AEA87F:  = Me.Value
  loc_AEA884: FLdRfVar var_C8
  loc_AEA887: CR4Var
  loc_AEA888: PopFPR8
  loc_AEA889: ImpAdCallI2 Proc_261_26_9A5B0C(, )
  loc_AEA88E: FStStr var_104
  loc_AEA891: LitDate 110.49
  loc_AEA89A: PopFPR4
  loc_AEA89B: LitDate 85.72
  loc_AEA8A4: PopFPR4
  loc_AEA8A5: FMemLdRf unk_403185
  loc_AEA8AA: FMemLdRf unk_403185
  loc_AEA8AF: FLdZeroAd var_104
  loc_AEA8B2: FStStrNoPop var_100
  loc_AEA8B5: ImpAdCallFPR4 Proc_260_7_A344F4(, , , , )
  loc_AEA8BA: FFreeStr var_100 = ""
  loc_AEA8C1: FFreeAd var_90 = "": var_B4 = ""
  loc_AEA8CA: FFree1Var var_C8 = ""
  loc_AEA8CD: FLdRfVar var_90
  loc_AEA8D0: ImpAdLdRf MemVar_C44F9C
  loc_AEA8D3: NewIfNullPr Me
  loc_AEA8D6:  = Me.Global.Printer
  loc_AEA8DB: FMemLdR4 arg_8(32)
  loc_AEA8E0: ILdRf var_90
  loc_AEA8E3: PrintObject
  loc_AEA8E9: FFree1Ad var_90
  loc_AEA8EC: LitI2_Byte &H17
  loc_AEA8EE: CR8I2
  loc_AEA8EF: CVarR4
  loc_AEA8F3: PopAdLdVar
  loc_AEA8F4: FLdRfVar var_90
  loc_AEA8F7: ImpAdLdRf MemVar_C44F9C
  loc_AEA8FA: NewIfNullPr Me
  loc_AEA8FD:  = Me.Global.Printer
  loc_AEA902: FLdPr var_90
  loc_AEA905: LateIdSt
  loc_AEA90A: FFree1Ad var_90
  loc_AEA90D: FLdRfVar var_90
  loc_AEA910: ImpAdLdRf MemVar_C44F9C
  loc_AEA913: NewIfNullPr Me
  loc_AEA916:  = Me.Global.Printer
  loc_AEA91B: FMemLdR4 arg_8(36)
  loc_AEA920: ILdRf var_90
  loc_AEA923: PrintObject
  loc_AEA929: FFree1Ad var_90
  loc_AEA92C: FMemLdI2 arg_8(4)
  loc_AEA931: LitI2_Byte 4
  loc_AEA933: ModI2
  loc_AEA934: LitI2_Byte 0
  loc_AEA936: EqI2
  loc_AEA937: BranchF loc_AEA997
  loc_AEA93A: FMemLdI2 arg_8(4)
  loc_AEA93F: CI4UI1
  loc_AEA940: FLdRfVar var_88
  loc_AEA943: FMemLdRf unk_403185
  loc_AEA948: NewIfNullPr clscheque
  loc_AEA94B: from_stack_1 = clscheque.RecordCount
  loc_AEA950: ILdRf var_88
  loc_AEA953: NeI4
  loc_AEA954: BranchF loc_AEA994
  loc_AEA957: FLdRfVar var_90
  loc_AEA95A: ImpAdLdRf MemVar_C44F9C
  loc_AEA95D: NewIfNullPr Me
  loc_AEA960:  = Me.Global.Printer
  loc_AEA965: FLdPr var_90
  loc_AEA968: LateIdCall
  loc_AEA970: FFree1Ad var_90
  loc_AEA973: LitI2_Byte 0
  loc_AEA975: CR8I2
  loc_AEA976: CVarR4
  loc_AEA97A: PopAdLdVar
  loc_AEA97B: FLdRfVar var_90
  loc_AEA97E: ImpAdLdRf MemVar_C44F9C
  loc_AEA981: NewIfNullPr Me
  loc_AEA984:  = Me.Global.Printer
  loc_AEA989: FLdPr var_90
  loc_AEA98C: LateIdSt
  loc_AEA991: FFree1Ad var_90
  loc_AEA994: Branch loc_AEA9DA
  loc_AEA997: FLdRfVar var_90
  loc_AEA99A: ImpAdLdRf MemVar_C44F9C
  loc_AEA99D: NewIfNullPr Me
  loc_AEA9A0:  = Me.Global.Printer
  loc_AEA9A5: FLdPr var_90
  loc_AEA9A8: LateIdLdVar var_C8 DispID_11 1
  loc_AEA9AF: CR8Var
  loc_AEA9B1: LitI2_Byte &H30
  loc_AEA9B3: CR8I2
  loc_AEA9B4: AddR8
  loc_AEA9B5: CVarR4
  loc_AEA9B9: PopAdLdVar
  loc_AEA9BA: FLdRfVar var_B4
  loc_AEA9BD: ImpAdLdRf MemVar_C44F9C
  loc_AEA9C0: NewIfNullPr Me
  loc_AEA9C3:  = Me.Global.Printer
  loc_AEA9C8: FLdPr var_B4
  loc_AEA9CB: LateIdSt
  loc_AEA9D0: FFreeAd var_90 = ""
  loc_AEA9D7: FFree1Var var_C8 = ""
  loc_AEA9DA: ImpAdCallFPR4 Proc_260_9_A58BBC()
  loc_AEA9DF: FMemLdRf unk_403185
  loc_AEA9E4: NewIfNullPr clscheque
  loc_AEA9E7: Call clscheque.MoveSiguiente()
  loc_AEA9EC: FMemLdRf unk_403185
  loc_AEA9F1: NextI2 var_8C, loc_AEA43D
  loc_AEA9F6: FLdRfVar var_90
  loc_AEA9F9: ImpAdLdRf MemVar_C44F9C
  loc_AEA9FC: NewIfNullPr Me
  loc_AEA9FF:  = Me.Global.Printer
  loc_AEAA04: FLdPr var_90
  loc_AEAA07: LateIdCall
  loc_AEAA0F: FFree1Ad var_90
  loc_AEAA12: FMemLdR4 arg_8(0)
  loc_AEAA17: LitStr vbNullString
  loc_AEAA1A: NeStr
  loc_AEAA1C: BranchF loc_AEAA29
  loc_AEAA1F: FMemLdRf unk_403185
  loc_AEAA24: ImpAdCallFPR4 Proc_265_1_9A06AC()
  loc_AEAA29: LitVarStr var_A0, "Se enviaron "
  loc_AEAA2E: FMemLdI2 arg_8(44)
  loc_AEAA33: CR8I2
  loc_AEAA34: PopFPR8
  loc_AEAA35: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AEAA3A: CVarStr var_C8
  loc_AEAA3D: FLdRfVar var_FC
  loc_AEAA40: ImpAdCallFPR4  = LCase()
  loc_AEAA45: FLdRfVar var_FC
  loc_AEAA48: ConcatVar var_114
  loc_AEAA4C: LitVarStr var_B0, " cheques"
  loc_AEAA51: ConcatVar var_124
  loc_AEAA55: LitVarStr var_E8, "Se envió un cheque"
  loc_AEAA5A: FStVarCopyObj var_134
  loc_AEAA5D: FLdRfVar var_134
  loc_AEAA60: FMemLdI2 arg_8(44)
  loc_AEAA65: LitI2_Byte 1
  loc_AEAA67: EqI2
  loc_AEAA68: CVarBoolI2 var_D8
  loc_AEAA6C: FLdRfVar var_144
  loc_AEAA6F: ImpAdCallFPR4  = IIf(, , )
  loc_AEAA74: LitI4 0
  loc_AEAA79: FLdRfVar var_144
  loc_AEAA7C: LitVarStr var_154, " a la impresora."
  loc_AEAA81: ConcatVar var_164
  loc_AEAA85: CStrVarVal var_100
  loc_AEAA89: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AEAA8E: FFree1Str var_100
  loc_AEAA91: FFreeVar var_C8 = "": var_FC = "": var_114 = "": var_D8 = "": var_134 = "": var_124 = "": var_144 = ""
  loc_AEAAA4: LitNothing
  loc_AEAAA6: CastAd
  loc_AEAAA9: FMemStAdFunc arg_8(8)
  loc_AEAAAF: ExitProc
  loc_AEAAB0: FMemLdR4 arg_8(0)
  loc_AEAAB5: LitStr vbNullString
  loc_AEAAB8: NeStr
  loc_AEAABA: BranchF loc_AEAAC7
  loc_AEAABD: FMemLdRf unk_403185
  loc_AEAAC2: ImpAdCallFPR4 Proc_265_1_9A06AC()
  loc_AEAAC7: FLdRfVar var_88
  loc_AEAACA: ImpAdCallI2 Err 'rtcErrObj
  loc_AEAACF: FStAdFunc var_90
  loc_AEAAD2: FLdPr var_90
  loc_AEAAD5:  = Err.Number
  loc_AEAADA: ILdRf var_88
  loc_AEAADD: LitI4 &H17C
  loc_AEAAE2: EqI4
  loc_AEAAE3: FFree1Ad var_90
  loc_AEAAE6: BranchF loc_AEAAF7
  loc_AEAAE9: LitI4 0
  loc_AEAAEE: LitStr "Error de impresora"
  loc_AEAAF1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AEAAF6: ExitProc
  loc_AEAAF7: ExitProc
End Function

Private Function Proc_260_3_93F914() '93F914
  'Data Table: 40317C
  loc_93F910: ExitProc
End Function

Private Function Proc_260_4_AFDD78(arg_C, arg_10, arg_14, arg_18) 'AFDD78
  'Data Table: 40317C
  loc_AFD5F8: OnErrorGoto loc_AFDD2F
  loc_AFD5FB: ILdRf arg_18
  loc_AFD5FE: CI2I4
  loc_AFD5FF: ILdRf arg_14
  loc_AFD602: CI2I4
  loc_AFD603: FLdI2 arg_10
  loc_AFD606: ILdRf arg_C
  loc_AFD609: CUI1I4
  loc_AFD60B: ImpAdCallFPR4  = Proc_260_0_A989C8(, , )
  loc_AFD610: FMemLdI2 arg_8(56)
  loc_AFD615: BranchF loc_AFD61B
  loc_AFD618: Branch loc_AFDD2F
  loc_AFD61B: FMemLdRf unk_403185
  loc_AFD620: NewIfNullPr clscheque
  loc_AFD623: Call clscheque.MoveFirst()
  loc_AFD628: LitI2_Byte 1
  loc_AFD62A: FMemLdRf unk_403185
  loc_AFD62F: FLdRfVar var_88
  loc_AFD632: FMemLdRf unk_403185
  loc_AFD637: NewIfNullPr clscheque
  loc_AFD63A: from_stack_1 = clscheque.RecordCount
  loc_AFD63F: ILdRf var_88
  loc_AFD642: CI2I4
  loc_AFD643: ForI2 var_8C
  loc_AFD649: LitVarStr var_A0, "Times New Roman"
  loc_AFD64E: PopAdLdVar
  loc_AFD64F: FLdRfVar var_90
  loc_AFD652: ImpAdLdRf MemVar_C44F9C
  loc_AFD655: NewIfNullPr Me
  loc_AFD658:  = Me.Global.Printer
  loc_AFD65D: FLdPr var_90
  loc_AFD660: LateIdSt
  loc_AFD665: FFree1Ad var_90
  loc_AFD668: LitI2_Byte &HE
  loc_AFD66A: CR8I2
  loc_AFD66B: CVarR4
  loc_AFD66F: PopAdLdVar
  loc_AFD670: FLdRfVar var_90
  loc_AFD673: ImpAdLdRf MemVar_C44F9C
  loc_AFD676: NewIfNullPr Me
  loc_AFD679:  = Me.Global.Printer
  loc_AFD67E: FLdPr var_90
  loc_AFD681: LateIdSt
  loc_AFD686: FFree1Ad var_90
  loc_AFD689: FLdRfVar var_B8
  loc_AFD68C: LitVarStr var_A0, "ImpoCheq"
  loc_AFD691: PopAdLdVar
  loc_AFD692: FLdRfVar var_B4
  loc_AFD695: FLdRfVar var_90
  loc_AFD698: FMemLdRf unk_403185
  loc_AFD69D: NewIfNullPr clscheque
  loc_AFD6A0: from_stack_1v = clscheque.RsFrmGet()
  loc_AFD6A5: FLdPr var_90
  loc_AFD6A8:  = Me.Fields
  loc_AFD6AD: FLdPr var_B4
  loc_AFD6B0: from_stack_2 = Me.Item(from_stack_1)
  loc_AFD6B5: LitI4 -1
  loc_AFD6BA: LitI4 0
  loc_AFD6BF: LitI4 -1
  loc_AFD6C4: LitI4 2
  loc_AFD6C9: FLdZeroAd var_B8
  loc_AFD6CC: CVarAd
  loc_AFD6D0: ImpAdCallI2 FormatNumber(, , , , )
  loc_AFD6D5: FMemStStr arg_8(20)
  loc_AFD6DB: FFreeAd var_90 = ""
  loc_AFD6E2: FFree1Var var_C8 = ""
  loc_AFD6E5: LitVarStr var_A0, "000000000"
  loc_AFD6EA: PopAdLdVar
  loc_AFD6EB: FLdRfVar var_90
  loc_AFD6EE: ImpAdLdRf MemVar_C44F9C
  loc_AFD6F1: NewIfNullPr Me
  loc_AFD6F4:  = Me.Global.Printer
  loc_AFD6F9: FLdPr var_90
  loc_AFD6FC: LateIdCallLdVar
  loc_AFD706: PopAd
  loc_AFD708: LitI2 170
  loc_AFD70B: CR8I2
  loc_AFD70C: FLdRfVar var_C8
  loc_AFD70F: CR8Var
  loc_AFD711: SubR4
  loc_AFD712: CVarR4
  loc_AFD716: PopAdLdVar
  loc_AFD717: FLdRfVar var_B4
  loc_AFD71A: ImpAdLdRf MemVar_C44F9C
  loc_AFD71D: NewIfNullPr Me
  loc_AFD720:  = Me.Global.Printer
  loc_AFD725: FLdPr var_B4
  loc_AFD728: LateIdSt
  loc_AFD72D: FFreeAd var_90 = ""
  loc_AFD734: FFree1Var var_C8 = ""
  loc_AFD737: FLdRfVar var_90
  loc_AFD73A: ImpAdLdRf MemVar_C44F9C
  loc_AFD73D: NewIfNullPr Me
  loc_AFD740:  = Me.Global.Printer
  loc_AFD745: FMemLdR4 arg_8(20)
  loc_AFD74A: ILdRf var_90
  loc_AFD74D: PrintObject
  loc_AFD753: FFree1Ad var_90
  loc_AFD756: LitVarStr var_A0, "Times New Roman"
  loc_AFD75B: PopAdLdVar
  loc_AFD75C: FLdRfVar var_90
  loc_AFD75F: ImpAdLdRf MemVar_C44F9C
  loc_AFD762: NewIfNullPr Me
  loc_AFD765:  = Me.Global.Printer
  loc_AFD76A: FLdPr var_90
  loc_AFD76D: LateIdSt
  loc_AFD772: FFree1Ad var_90
  loc_AFD775: LitI2_Byte 8
  loc_AFD777: CR8I2
  loc_AFD778: CVarR4
  loc_AFD77C: PopAdLdVar
  loc_AFD77D: FLdRfVar var_90
  loc_AFD780: ImpAdLdRf MemVar_C44F9C
  loc_AFD783: NewIfNullPr Me
  loc_AFD786:  = Me.Global.Printer
  loc_AFD78B: FLdPr var_90
  loc_AFD78E: LateIdSt
  loc_AFD793: FFree1Ad var_90
  loc_AFD796: FLdRfVar var_90
  loc_AFD799: ImpAdLdRf MemVar_C44F9C
  loc_AFD79C: NewIfNullPr Me
  loc_AFD79F:  = Me.Global.Printer
  loc_AFD7A4: FLdPr var_90
  loc_AFD7A7: LateIdLdVar var_C8 DispID_11 1
  loc_AFD7AE: CR8Var
  loc_AFD7B0: LitDate 8.5
  loc_AFD7B9: AddR8
  loc_AFD7BA: FMemStFPR8 arg_8(48)
  loc_AFD7BF: FFree1Ad var_90
  loc_AFD7C2: FFree1Var var_C8 = ""
  loc_AFD7C5: FMemLdFPR8 arg_8(48)
  loc_AFD7CA: CVarR4
  loc_AFD7CE: PopAdLdVar
  loc_AFD7CF: FLdRfVar var_90
  loc_AFD7D2: ImpAdLdRf MemVar_C44F9C
  loc_AFD7D5: NewIfNullPr Me
  loc_AFD7D8:  = Me.Global.Printer
  loc_AFD7DD: FLdPr var_90
  loc_AFD7E0: LateIdSt
  loc_AFD7E5: FFree1Ad var_90
  loc_AFD7E8: FLdRfVar var_B8
  loc_AFD7EB: LitVarStr var_A0, "FechCheq"
  loc_AFD7F0: PopAdLdVar
  loc_AFD7F1: FLdRfVar var_B4
  loc_AFD7F4: FLdRfVar var_90
  loc_AFD7F7: FMemLdRf unk_403185
  loc_AFD7FC: NewIfNullPr clscheque
  loc_AFD7FF: from_stack_1v = clscheque.RsFrmGet()
  loc_AFD804: FLdPr var_90
  loc_AFD807:  = Me.Fields
  loc_AFD80C: FLdPr var_B4
  loc_AFD80F: from_stack_2 = Me.Item(from_stack_1)
  loc_AFD814: LitI4 1
  loc_AFD819: LitI4 1
  loc_AFD81E: LitVarStr var_B0, "dd \de mmmm       yyyy"
  loc_AFD823: FStVarCopyObj var_F8
  loc_AFD826: FLdRfVar var_F8
  loc_AFD829: FLdZeroAd var_B8
  loc_AFD82C: CVarAd
  loc_AFD830: ImpAdCallI2 Format$(, )
  loc_AFD835: CVarStr var_10C
  loc_AFD838: PopAdLdVar
  loc_AFD839: FLdRfVar var_FC
  loc_AFD83C: ImpAdLdRf MemVar_C44F9C
  loc_AFD83F: NewIfNullPr Me
  loc_AFD842:  = Me.Global.Printer
  loc_AFD847: FLdPr var_FC
  loc_AFD84A: LateIdCallLdVar
  loc_AFD854: PopAd
  loc_AFD856: LitI2_Byte &H48
  loc_AFD858: CR8I2
  loc_AFD859: FLdRfVar var_11C
  loc_AFD85C: CR8Var
  loc_AFD85E: SubR4
  loc_AFD85F: CVarR4
  loc_AFD863: PopAdLdVar
  loc_AFD864: FLdRfVar var_120
  loc_AFD867: ImpAdLdRf MemVar_C44F9C
  loc_AFD86A: NewIfNullPr Me
  loc_AFD86D:  = Me.Global.Printer
  loc_AFD872: FLdPr var_120
  loc_AFD875: LateIdSt
  loc_AFD87A: FFreeAd var_90 = "": var_B4 = "": var_FC = ""
  loc_AFD885: FFreeVar var_C8 = "": var_F8 = "": var_10C = ""
  loc_AFD890: FLdRfVar var_90
  loc_AFD893: ImpAdLdRf MemVar_C44F9C
  loc_AFD896: NewIfNullPr Me
  loc_AFD899:  = Me.Global.Printer
  loc_AFD89E: FLdRfVar var_FC
  loc_AFD8A1: LitVarStr var_A0, "FechCheq"
  loc_AFD8A6: PopAdLdVar
  loc_AFD8A7: FLdRfVar var_B8
  loc_AFD8AA: FLdRfVar var_B4
  loc_AFD8AD: FMemLdRf unk_403185
  loc_AFD8B2: NewIfNullPr clscheque
  loc_AFD8B5: from_stack_1v = clscheque.RsFrmGet()
  loc_AFD8BA: FLdPr var_B4
  loc_AFD8BD:  = Me.Fields
  loc_AFD8C2: FLdPr var_B8
  loc_AFD8C5: from_stack_2 = Me.Item(from_stack_1)
  loc_AFD8CA: LitI4 1
  loc_AFD8CF: LitI4 1
  loc_AFD8D4: LitVarStr var_B0, "dd \de mmmm                     yyyy"
  loc_AFD8D9: FStVarCopyObj var_F8
  loc_AFD8DC: FLdRfVar var_F8
  loc_AFD8DF: FLdZeroAd var_FC
  loc_AFD8E2: CVarAd
  loc_AFD8E6: ImpAdCallI2 Format$(, )
  loc_AFD8EB: FStStr var_138
  loc_AFD8EE: FLdZeroAd var_138
  loc_AFD8F1: FStStrNoPop var_134
  loc_AFD8F4: ILdRf var_90
  loc_AFD8F7: PrintObject
  loc_AFD8FD: FFreeStr var_134 = ""
  loc_AFD904: FFreeAd var_90 = "": var_B4 = ""
  loc_AFD90D: FFreeVar var_C8 = ""
  loc_AFD914: LitI2_Byte &HA
  loc_AFD916: CR8I2
  loc_AFD917: CVarR4
  loc_AFD91B: PopAdLdVar
  loc_AFD91C: FLdRfVar var_90
  loc_AFD91F: ImpAdLdRf MemVar_C44F9C
  loc_AFD922: NewIfNullPr Me
  loc_AFD925:  = Me.Global.Printer
  loc_AFD92A: FLdPr var_90
  loc_AFD92D: LateIdSt
  loc_AFD932: FFree1Ad var_90
  loc_AFD935: FLdRfVar var_90
  loc_AFD938: ImpAdLdRf MemVar_C44F9C
  loc_AFD93B: NewIfNullPr Me
  loc_AFD93E:  = Me.Global.Printer
  loc_AFD943: FLdPr var_90
  loc_AFD946: LateIdLdVar var_C8 DispID_11 1
  loc_AFD94D: CR8Var
  loc_AFD94F: LitI2_Byte 1
  loc_AFD951: CR8I2
  loc_AFD952: AddR8
  loc_AFD953: CVarR4
  loc_AFD957: PopAdLdVar
  loc_AFD958: FLdRfVar var_B4
  loc_AFD95B: ImpAdLdRf MemVar_C44F9C
  loc_AFD95E: NewIfNullPr Me
  loc_AFD961:  = Me.Global.Printer
  loc_AFD966: FLdPr var_B4
  loc_AFD969: LateIdSt
  loc_AFD96E: FFreeAd var_90 = ""
  loc_AFD975: FFree1Var var_C8 = ""
  loc_AFD978: LitI2_Byte &H32
  loc_AFD97A: CR8I2
  loc_AFD97B: CVarR4
  loc_AFD97F: PopAdLdVar
  loc_AFD980: FLdRfVar var_90
  loc_AFD983: ImpAdLdRf MemVar_C44F9C
  loc_AFD986: NewIfNullPr Me
  loc_AFD989:  = Me.Global.Printer
  loc_AFD98E: FLdPr var_90
  loc_AFD991: LateIdSt
  loc_AFD996: FFree1Ad var_90
  loc_AFD999: FLdRfVar var_C8
  loc_AFD99C: FLdRfVar var_B8
  loc_AFD99F: LitVarStr var_A0, "OrdeCheq"
  loc_AFD9A4: PopAdLdVar
  loc_AFD9A5: FLdRfVar var_B4
  loc_AFD9A8: FLdRfVar var_90
  loc_AFD9AB: FMemLdRf unk_403185
  loc_AFD9B0: NewIfNullPr clscheque
  loc_AFD9B3: from_stack_1v = clscheque.RsFrmGet()
  loc_AFD9B8: FLdPr var_90
  loc_AFD9BB:  = Me.Fields
  loc_AFD9C0: FLdPr var_B4
  loc_AFD9C3: from_stack_2 = Me.Item(from_stack_1)
  loc_AFD9C8: FLdPr var_B8
  loc_AFD9CB:  = Me.Value
  loc_AFD9D0: LitDate 110.49
  loc_AFD9D9: PopFPR4
  loc_AFD9DA: LitDate 98.49
  loc_AFD9E3: PopFPR4
  loc_AFD9E4: FMemLdRf unk_403185
  loc_AFD9E9: FMemLdRf unk_403185
  loc_AFD9EE: FLdRfVar var_C8
  loc_AFD9F1: CStrVarTmp
  loc_AFD9F2: FStStrNoPop var_134
  loc_AFD9F5: ImpAdCallFPR4 Proc_260_7_A344F4(, , , , )
  loc_AFD9FA: FFree1Str var_134
  loc_AFD9FD: FFreeAd var_90 = "": var_B4 = ""
  loc_AFDA06: FFree1Var var_C8 = ""
  loc_AFDA09: FLdRfVar var_90
  loc_AFDA0C: ImpAdLdRf MemVar_C44F9C
  loc_AFDA0F: NewIfNullPr Me
  loc_AFDA12:  = Me.Global.Printer
  loc_AFDA17: FMemLdR4 arg_8(24)
  loc_AFDA1C: ILdRf var_90
  loc_AFDA1F: PrintObject
  loc_AFDA25: FFree1Ad var_90
  loc_AFDA28: LitI2_Byte &H13
  loc_AFDA2A: CR8I2
  loc_AFDA2B: CVarR4
  loc_AFDA2F: PopAdLdVar
  loc_AFDA30: FLdRfVar var_90
  loc_AFDA33: ImpAdLdRf MemVar_C44F9C
  loc_AFDA36: NewIfNullPr Me
  loc_AFDA39:  = Me.Global.Printer
  loc_AFDA3E: FLdPr var_90
  loc_AFDA41: LateIdSt
  loc_AFDA46: FFree1Ad var_90
  loc_AFDA49: FLdRfVar var_90
  loc_AFDA4C: ImpAdLdRf MemVar_C44F9C
  loc_AFDA4F: NewIfNullPr Me
  loc_AFDA52:  = Me.Global.Printer
  loc_AFDA57: FMemLdR4 arg_8(28)
  loc_AFDA5C: ILdRf var_90
  loc_AFDA5F: PrintObject
  loc_AFDA65: FFree1Ad var_90
  loc_AFDA68: FLdRfVar var_90
  loc_AFDA6B: ImpAdLdRf MemVar_C44F9C
  loc_AFDA6E: NewIfNullPr Me
  loc_AFDA71:  = Me.Global.Printer
  loc_AFDA76: FLdPr var_90
  loc_AFDA79: LateIdLdVar var_C8 DispID_11 1
  loc_AFDA80: CR8Var
  loc_AFDA82: LitI2_Byte 1
  loc_AFDA84: CR8I2
  loc_AFDA85: AddR8
  loc_AFDA86: CVarR4
  loc_AFDA8A: PopAdLdVar
  loc_AFDA8B: FLdRfVar var_B4
  loc_AFDA8E: ImpAdLdRf MemVar_C44F9C
  loc_AFDA91: NewIfNullPr Me
  loc_AFDA94:  = Me.Global.Printer
  loc_AFDA99: FLdPr var_B4
  loc_AFDA9C: LateIdSt
  loc_AFDAA1: FFreeAd var_90 = ""
  loc_AFDAA8: FFree1Var var_C8 = ""
  loc_AFDAAB: LitI2_Byte &H32
  loc_AFDAAD: CR8I2
  loc_AFDAAE: CVarR4
  loc_AFDAB2: PopAdLdVar
  loc_AFDAB3: FLdRfVar var_90
  loc_AFDAB6: ImpAdLdRf MemVar_C44F9C
  loc_AFDAB9: NewIfNullPr Me
  loc_AFDABC:  = Me.Global.Printer
  loc_AFDAC1: FLdPr var_90
  loc_AFDAC4: LateIdSt
  loc_AFDAC9: FFree1Ad var_90
  loc_AFDACC: FLdRfVar var_C8
  loc_AFDACF: FLdRfVar var_B8
  loc_AFDAD2: LitVarStr var_A0, "ImpoCheq"
  loc_AFDAD7: PopAdLdVar
  loc_AFDAD8: FLdRfVar var_B4
  loc_AFDADB: FLdRfVar var_90
  loc_AFDADE: FMemLdRf unk_403185
  loc_AFDAE3: NewIfNullPr clscheque
  loc_AFDAE6: from_stack_1v = clscheque.RsFrmGet()
  loc_AFDAEB: FLdPr var_90
  loc_AFDAEE:  = Me.Fields
  loc_AFDAF3: FLdPr var_B4
  loc_AFDAF6: from_stack_2 = Me.Item(from_stack_1)
  loc_AFDAFB: FLdPr var_B8
  loc_AFDAFE:  = Me.Value
  loc_AFDB03: FLdRfVar var_C8
  loc_AFDB06: CR4Var
  loc_AFDB07: PopFPR8
  loc_AFDB08: ImpAdCallI2 Proc_261_26_9A5B0C(, )
  loc_AFDB0D: FStStr var_138
  loc_AFDB10: LitDate 110.49
  loc_AFDB19: PopFPR4
  loc_AFDB1A: LitDate 85.72
  loc_AFDB23: PopFPR4
  loc_AFDB24: FMemLdRf unk_403185
  loc_AFDB29: FMemLdRf unk_403185
  loc_AFDB2E: FLdZeroAd var_138
  loc_AFDB31: FStStrNoPop var_134
  loc_AFDB34: ImpAdCallFPR4 Proc_260_7_A344F4(, , , , )
  loc_AFDB39: FFreeStr var_134 = ""
  loc_AFDB40: FFreeAd var_90 = "": var_B4 = ""
  loc_AFDB49: FFree1Var var_C8 = ""
  loc_AFDB4C: FLdRfVar var_90
  loc_AFDB4F: ImpAdLdRf MemVar_C44F9C
  loc_AFDB52: NewIfNullPr Me
  loc_AFDB55:  = Me.Global.Printer
  loc_AFDB5A: FMemLdR4 arg_8(32)
  loc_AFDB5F: ILdRf var_90
  loc_AFDB62: PrintObject
  loc_AFDB68: FFree1Ad var_90
  loc_AFDB6B: LitI2_Byte &H13
  loc_AFDB6D: CR8I2
  loc_AFDB6E: CVarR4
  loc_AFDB72: PopAdLdVar
  loc_AFDB73: FLdRfVar var_90
  loc_AFDB76: ImpAdLdRf MemVar_C44F9C
  loc_AFDB79: NewIfNullPr Me
  loc_AFDB7C:  = Me.Global.Printer
  loc_AFDB81: FLdPr var_90
  loc_AFDB84: LateIdSt
  loc_AFDB89: FFree1Ad var_90
  loc_AFDB8C: FLdRfVar var_90
  loc_AFDB8F: ImpAdLdRf MemVar_C44F9C
  loc_AFDB92: NewIfNullPr Me
  loc_AFDB95:  = Me.Global.Printer
  loc_AFDB9A: FMemLdR4 arg_8(36)
  loc_AFDB9F: ILdRf var_90
  loc_AFDBA2: PrintObject
  loc_AFDBA8: FFree1Ad var_90
  loc_AFDBAB: FMemLdI2 arg_8(4)
  loc_AFDBB0: LitI2_Byte 4
  loc_AFDBB2: ModI2
  loc_AFDBB3: LitI2_Byte 0
  loc_AFDBB5: EqI2
  loc_AFDBB6: BranchF loc_AFDC16
  loc_AFDBB9: FMemLdI2 arg_8(4)
  loc_AFDBBE: CI4UI1
  loc_AFDBBF: FLdRfVar var_88
  loc_AFDBC2: FMemLdRf unk_403185
  loc_AFDBC7: NewIfNullPr clscheque
  loc_AFDBCA: from_stack_1 = clscheque.RecordCount
  loc_AFDBCF: ILdRf var_88
  loc_AFDBD2: NeI4
  loc_AFDBD3: BranchF loc_AFDC13
  loc_AFDBD6: FLdRfVar var_90
  loc_AFDBD9: ImpAdLdRf MemVar_C44F9C
  loc_AFDBDC: NewIfNullPr Me
  loc_AFDBDF:  = Me.Global.Printer
  loc_AFDBE4: FLdPr var_90
  loc_AFDBE7: LateIdCall
  loc_AFDBEF: FFree1Ad var_90
  loc_AFDBF2: LitI2_Byte 1
  loc_AFDBF4: CR8I2
  loc_AFDBF5: CVarR4
  loc_AFDBF9: PopAdLdVar
  loc_AFDBFA: FLdRfVar var_90
  loc_AFDBFD: ImpAdLdRf MemVar_C44F9C
  loc_AFDC00: NewIfNullPr Me
  loc_AFDC03:  = Me.Global.Printer
  loc_AFDC08: FLdPr var_90
  loc_AFDC0B: LateIdSt
  loc_AFDC10: FFree1Ad var_90
  loc_AFDC13: Branch loc_AFDC59
  loc_AFDC16: FLdRfVar var_90
  loc_AFDC19: ImpAdLdRf MemVar_C44F9C
  loc_AFDC1C: NewIfNullPr Me
  loc_AFDC1F:  = Me.Global.Printer
  loc_AFDC24: FLdPr var_90
  loc_AFDC27: LateIdLdVar var_C8 DispID_11 1
  loc_AFDC2E: CR8Var
  loc_AFDC30: LitI2_Byte &H26
  loc_AFDC32: CR8I2
  loc_AFDC33: AddR8
  loc_AFDC34: CVarR4
  loc_AFDC38: PopAdLdVar
  loc_AFDC39: FLdRfVar var_B4
  loc_AFDC3C: ImpAdLdRf MemVar_C44F9C
  loc_AFDC3F: NewIfNullPr Me
  loc_AFDC42:  = Me.Global.Printer
  loc_AFDC47: FLdPr var_B4
  loc_AFDC4A: LateIdSt
  loc_AFDC4F: FFreeAd var_90 = ""
  loc_AFDC56: FFree1Var var_C8 = ""
  loc_AFDC59: ImpAdCallFPR4 Proc_260_9_A58BBC()
  loc_AFDC5E: FMemLdRf unk_403185
  loc_AFDC63: NewIfNullPr clscheque
  loc_AFDC66: Call clscheque.MoveSiguiente()
  loc_AFDC6B: FMemLdRf unk_403185
  loc_AFDC70: NextI2 var_8C, loc_AFD649
  loc_AFDC75: FLdRfVar var_90
  loc_AFDC78: ImpAdLdRf MemVar_C44F9C
  loc_AFDC7B: NewIfNullPr Me
  loc_AFDC7E:  = Me.Global.Printer
  loc_AFDC83: FLdPr var_90
  loc_AFDC86: LateIdCall
  loc_AFDC8E: FFree1Ad var_90
  loc_AFDC91: FMemLdR4 arg_8(0)
  loc_AFDC96: LitStr vbNullString
  loc_AFDC99: NeStr
  loc_AFDC9B: BranchF loc_AFDCA8
  loc_AFDC9E: FMemLdRf unk_403185
  loc_AFDCA3: ImpAdCallFPR4 Proc_265_1_9A06AC()
  loc_AFDCA8: LitVarStr var_A0, "Se enviaron "
  loc_AFDCAD: FMemLdI2 arg_8(44)
  loc_AFDCB2: CR8I2
  loc_AFDCB3: PopFPR8
  loc_AFDCB4: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_AFDCB9: CVarStr var_C8
  loc_AFDCBC: FLdRfVar var_F8
  loc_AFDCBF: ImpAdCallFPR4  = LCase()
  loc_AFDCC4: FLdRfVar var_F8
  loc_AFDCC7: ConcatVar var_10C
  loc_AFDCCB: LitVarStr var_B0, " cheques"
  loc_AFDCD0: ConcatVar var_11C
  loc_AFDCD4: LitVarStr var_E8, "Se envió un cheque"
  loc_AFDCD9: FStVarCopyObj var_148
  loc_AFDCDC: FLdRfVar var_148
  loc_AFDCDF: FMemLdI2 arg_8(44)
  loc_AFDCE4: LitI2_Byte 1
  loc_AFDCE6: EqI2
  loc_AFDCE7: CVarBoolI2 var_D8
  loc_AFDCEB: FLdRfVar var_158
  loc_AFDCEE: ImpAdCallFPR4  = IIf(, , )
  loc_AFDCF3: LitI4 0
  loc_AFDCF8: FLdRfVar var_158
  loc_AFDCFB: LitVarStr var_130, " a la impresora."
  loc_AFDD00: ConcatVar var_168
  loc_AFDD04: CStrVarVal var_134
  loc_AFDD08: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AFDD0D: FFree1Str var_134
  loc_AFDD10: FFreeVar var_C8 = "": var_F8 = "": var_10C = "": var_D8 = "": var_148 = "": var_11C = "": var_158 = ""
  loc_AFDD23: LitNothing
  loc_AFDD25: CastAd
  loc_AFDD28: FMemStAdFunc arg_8(8)
  loc_AFDD2E: ExitProc
  loc_AFDD2F: FMemLdR4 arg_8(0)
  loc_AFDD34: LitStr vbNullString
  loc_AFDD37: NeStr
  loc_AFDD39: BranchF loc_AFDD46
  loc_AFDD3C: FMemLdRf unk_403185
  loc_AFDD41: ImpAdCallFPR4 Proc_265_1_9A06AC()
  loc_AFDD46: FLdRfVar var_88
  loc_AFDD49: ImpAdCallI2 Err 'rtcErrObj
  loc_AFDD4E: FStAdFunc var_90
  loc_AFDD51: FLdPr var_90
  loc_AFDD54:  = Err.Number
  loc_AFDD59: ILdRf var_88
  loc_AFDD5C: LitI4 &H17C
  loc_AFDD61: EqI4
  loc_AFDD62: FFree1Ad var_90
  loc_AFDD65: BranchF loc_AFDD76
  loc_AFDD68: LitI4 0
  loc_AFDD6D: LitStr "Error de impresora"
  loc_AFDD70: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AFDD75: ExitProc
  loc_AFDD76: ExitProc
End Function

Private Function Proc_260_5_B2A2F0(arg_C, arg_10, arg_14, arg_18) 'B2A2F0
  'Data Table: 40317C
  loc_B299A8: OnErrorGoto loc_B2A2A7
  loc_B299AB: ILdRf arg_18
  loc_B299AE: CI2I4
  loc_B299AF: ILdRf arg_14
  loc_B299B2: CI2I4
  loc_B299B3: FLdI2 arg_10
  loc_B299B6: ILdRf arg_C
  loc_B299B9: CUI1I4
  loc_B299BB: ImpAdCallFPR4  = Proc_260_0_A989C8(, , )
  loc_B299C0: FMemLdI2 arg_8(56)
  loc_B299C5: BranchF loc_B299CB
  loc_B299C8: Branch loc_B2A2A7
  loc_B299CB: FMemLdRf unk_403185
  loc_B299D0: NewIfNullPr clscheque
  loc_B299D3: Call clscheque.MoveFirst()
  loc_B299D8: LitI2_Byte 1
  loc_B299DA: FMemLdRf unk_403185
  loc_B299DF: FLdRfVar var_88
  loc_B299E2: FMemLdRf unk_403185
  loc_B299E7: NewIfNullPr clscheque
  loc_B299EA: from_stack_1 = clscheque.RecordCount
  loc_B299EF: ILdRf var_88
  loc_B299F2: CI2I4
  loc_B299F3: ForI2 var_8C
  loc_B299F9: LitVarStr var_A0, "Times New Roman"
  loc_B299FE: PopAdLdVar
  loc_B299FF: FLdRfVar var_90
  loc_B29A02: ImpAdLdRf MemVar_C44F9C
  loc_B29A05: NewIfNullPr Me
  loc_B29A08:  = Me.Global.Printer
  loc_B29A0D: FLdPr var_90
  loc_B29A10: LateIdSt
  loc_B29A15: FFree1Ad var_90
  loc_B29A18: LitI2_Byte &HE
  loc_B29A1A: CR8I2
  loc_B29A1B: CVarR4
  loc_B29A1F: PopAdLdVar
  loc_B29A20: FLdRfVar var_90
  loc_B29A23: ImpAdLdRf MemVar_C44F9C
  loc_B29A26: NewIfNullPr Me
  loc_B29A29:  = Me.Global.Printer
  loc_B29A2E: FLdPr var_90
  loc_B29A31: LateIdSt
  loc_B29A36: FFree1Ad var_90
  loc_B29A39: FLdRfVar var_B8
  loc_B29A3C: LitVarStr var_A0, "ImpoCheq"
  loc_B29A41: PopAdLdVar
  loc_B29A42: FLdRfVar var_B4
  loc_B29A45: FLdRfVar var_90
  loc_B29A48: FMemLdRf unk_403185
  loc_B29A4D: NewIfNullPr clscheque
  loc_B29A50: from_stack_1v = clscheque.RsFrmGet()
  loc_B29A55: FLdPr var_90
  loc_B29A58:  = Me.Fields
  loc_B29A5D: FLdPr var_B4
  loc_B29A60: from_stack_2 = Me.Item(from_stack_1)
  loc_B29A65: LitI4 -1
  loc_B29A6A: LitI4 0
  loc_B29A6F: LitI4 -1
  loc_B29A74: LitI4 2
  loc_B29A79: FLdZeroAd var_B8
  loc_B29A7C: CVarAd
  loc_B29A80: ImpAdCallI2 FormatNumber(, , , , )
  loc_B29A85: FMemStStr arg_8(20)
  loc_B29A8B: FFreeAd var_90 = ""
  loc_B29A92: FFree1Var var_C8 = ""
  loc_B29A95: LitVarStr var_A0, "000000000"
  loc_B29A9A: PopAdLdVar
  loc_B29A9B: FLdRfVar var_90
  loc_B29A9E: ImpAdLdRf MemVar_C44F9C
  loc_B29AA1: NewIfNullPr Me
  loc_B29AA4:  = Me.Global.Printer
  loc_B29AA9: FLdPr var_90
  loc_B29AAC: LateIdCallLdVar
  loc_B29AB6: PopAd
  loc_B29AB8: LitI2 170
  loc_B29ABB: CR8I2
  loc_B29ABC: FLdRfVar var_C8
  loc_B29ABF: CR8Var
  loc_B29AC1: SubR4
  loc_B29AC2: CVarR4
  loc_B29AC6: PopAdLdVar
  loc_B29AC7: FLdRfVar var_B4
  loc_B29ACA: ImpAdLdRf MemVar_C44F9C
  loc_B29ACD: NewIfNullPr Me
  loc_B29AD0:  = Me.Global.Printer
  loc_B29AD5: FLdPr var_B4
  loc_B29AD8: LateIdSt
  loc_B29ADD: FFreeAd var_90 = ""
  loc_B29AE4: FFree1Var var_C8 = ""
  loc_B29AE7: FLdRfVar var_90
  loc_B29AEA: ImpAdLdRf MemVar_C44F9C
  loc_B29AED: NewIfNullPr Me
  loc_B29AF0:  = Me.Global.Printer
  loc_B29AF5: FMemLdR4 arg_8(20)
  loc_B29AFA: ILdRf var_90
  loc_B29AFD: PrintObject
  loc_B29B03: FFree1Ad var_90
  loc_B29B06: LitVarStr var_A0, "Times New Roman"
  loc_B29B0B: PopAdLdVar
  loc_B29B0C: FLdRfVar var_90
  loc_B29B0F: ImpAdLdRf MemVar_C44F9C
  loc_B29B12: NewIfNullPr Me
  loc_B29B15:  = Me.Global.Printer
  loc_B29B1A: FLdPr var_90
  loc_B29B1D: LateIdSt
  loc_B29B22: FFree1Ad var_90
  loc_B29B25: LitI2_Byte 8
  loc_B29B27: CR8I2
  loc_B29B28: CVarR4
  loc_B29B2C: PopAdLdVar
  loc_B29B2D: FLdRfVar var_90
  loc_B29B30: ImpAdLdRf MemVar_C44F9C
  loc_B29B33: NewIfNullPr Me
  loc_B29B36:  = Me.Global.Printer
  loc_B29B3B: FLdPr var_90
  loc_B29B3E: LateIdSt
  loc_B29B43: FFree1Ad var_90
  loc_B29B46: FLdRfVar var_90
  loc_B29B49: ImpAdLdRf MemVar_C44F9C
  loc_B29B4C: NewIfNullPr Me
  loc_B29B4F:  = Me.Global.Printer
  loc_B29B54: FLdPr var_90
  loc_B29B57: LateIdLdVar var_C8 DispID_11 1
  loc_B29B5E: CR8Var
  loc_B29B60: LitI2_Byte 2
  loc_B29B62: CR8I2
  loc_B29B63: AddR8
  loc_B29B64: FMemStFPR8 arg_8(48)
  loc_B29B69: FFree1Ad var_90
  loc_B29B6C: FFree1Var var_C8 = ""
  loc_B29B6F: FMemLdFPR8 arg_8(48)
  loc_B29B74: CVarR4
  loc_B29B78: PopAdLdVar
  loc_B29B79: FLdRfVar var_90
  loc_B29B7C: ImpAdLdRf MemVar_C44F9C
  loc_B29B7F: NewIfNullPr Me
  loc_B29B82:  = Me.Global.Printer
  loc_B29B87: FLdPr var_90
  loc_B29B8A: LateIdSt
  loc_B29B8F: FFree1Ad var_90
  loc_B29B92: FLdRfVar var_B8
  loc_B29B95: LitVarStr var_A0, "FechCheq"
  loc_B29B9A: PopAdLdVar
  loc_B29B9B: FLdRfVar var_B4
  loc_B29B9E: FLdRfVar var_90
  loc_B29BA1: FMemLdRf unk_403185
  loc_B29BA6: NewIfNullPr clscheque
  loc_B29BA9: from_stack_1v = clscheque.RsFrmGet()
  loc_B29BAE: FLdPr var_90
  loc_B29BB1:  = Me.Fields
  loc_B29BB6: FLdPr var_B4
  loc_B29BB9: from_stack_2 = Me.Item(from_stack_1)
  loc_B29BBE: LitI4 1
  loc_B29BC3: LitI4 1
  loc_B29BC8: LitVarStr var_B0, "dd \de mmmm       yyyy"
  loc_B29BCD: FStVarCopyObj var_F8
  loc_B29BD0: FLdRfVar var_F8
  loc_B29BD3: FLdZeroAd var_B8
  loc_B29BD6: CVarAd
  loc_B29BDA: ImpAdCallI2 Format$(, )
  loc_B29BDF: CVarStr var_10C
  loc_B29BE2: PopAdLdVar
  loc_B29BE3: FLdRfVar var_FC
  loc_B29BE6: ImpAdLdRf MemVar_C44F9C
  loc_B29BE9: NewIfNullPr Me
  loc_B29BEC:  = Me.Global.Printer
  loc_B29BF1: FLdPr var_FC
  loc_B29BF4: LateIdCallLdVar
  loc_B29BFE: PopAd
  loc_B29C00: LitI2_Byte &H41
  loc_B29C02: CR8I2
  loc_B29C03: FLdRfVar var_11C
  loc_B29C06: CR8Var
  loc_B29C08: SubR4
  loc_B29C09: CVarR4
  loc_B29C0D: PopAdLdVar
  loc_B29C0E: FLdRfVar var_120
  loc_B29C11: ImpAdLdRf MemVar_C44F9C
  loc_B29C14: NewIfNullPr Me
  loc_B29C17:  = Me.Global.Printer
  loc_B29C1C: FLdPr var_120
  loc_B29C1F: LateIdSt
  loc_B29C24: FFreeAd var_90 = "": var_B4 = "": var_FC = ""
  loc_B29C2F: FFreeVar var_C8 = "": var_F8 = "": var_10C = ""
  loc_B29C3A: FLdRfVar var_90
  loc_B29C3D: ImpAdLdRf MemVar_C44F9C
  loc_B29C40: NewIfNullPr Me
  loc_B29C43:  = Me.Global.Printer
  loc_B29C48: FLdRfVar var_FC
  loc_B29C4B: LitVarStr var_A0, "FechCheq"
  loc_B29C50: PopAdLdVar
  loc_B29C51: FLdRfVar var_B8
  loc_B29C54: FLdRfVar var_B4
  loc_B29C57: FMemLdRf unk_403185
  loc_B29C5C: NewIfNullPr clscheque
  loc_B29C5F: from_stack_1v = clscheque.RsFrmGet()
  loc_B29C64: FLdPr var_B4
  loc_B29C67:  = Me.Fields
  loc_B29C6C: FLdPr var_B8
  loc_B29C6F: from_stack_2 = Me.Item(from_stack_1)
  loc_B29C74: LitI4 1
  loc_B29C79: LitI4 1
  loc_B29C7E: LitVarStr var_B0, "dd      mmmm                        yyyy"
  loc_B29C83: FStVarCopyObj var_F8
  loc_B29C86: FLdRfVar var_F8
  loc_B29C89: FLdZeroAd var_FC
  loc_B29C8C: CVarAd
  loc_B29C90: ImpAdCallI2 Format$(, )
  loc_B29C95: FStStr var_138
  loc_B29C98: FLdZeroAd var_138
  loc_B29C9B: FStStrNoPop var_134
  loc_B29C9E: ILdRf var_90
  loc_B29CA1: PrintObject
  loc_B29CA7: FFreeStr var_134 = ""
  loc_B29CAE: FFreeAd var_90 = "": var_B4 = ""
  loc_B29CB7: FFreeVar var_C8 = ""
  loc_B29CBE: LitVarStr var_A0, "Times New Roman"
  loc_B29CC3: PopAdLdVar
  loc_B29CC4: FLdRfVar var_90
  loc_B29CC7: ImpAdLdRf MemVar_C44F9C
  loc_B29CCA: NewIfNullPr Me
  loc_B29CCD:  = Me.Global.Printer
  loc_B29CD2: FLdPr var_90
  loc_B29CD5: LateIdSt
  loc_B29CDA: FFree1Ad var_90
  loc_B29CDD: LitI2_Byte 8
  loc_B29CDF: CR8I2
  loc_B29CE0: CVarR4
  loc_B29CE4: PopAdLdVar
  loc_B29CE5: FLdRfVar var_90
  loc_B29CE8: ImpAdLdRf MemVar_C44F9C
  loc_B29CEB: NewIfNullPr Me
  loc_B29CEE:  = Me.Global.Printer
  loc_B29CF3: FLdPr var_90
  loc_B29CF6: LateIdSt
  loc_B29CFB: FFree1Ad var_90
  loc_B29CFE: FLdRfVar var_90
  loc_B29D01: ImpAdLdRf MemVar_C44F9C
  loc_B29D04: NewIfNullPr Me
  loc_B29D07:  = Me.Global.Printer
  loc_B29D0C: FLdPr var_90
  loc_B29D0F: LateIdLdVar var_C8 DispID_11 1
  loc_B29D16: CR8Var
  loc_B29D18: LitI2_Byte 1
  loc_B29D1A: CR8I2
  loc_B29D1B: AddR8
  loc_B29D1C: FMemStFPR8 arg_8(48)
  loc_B29D21: FFree1Ad var_90
  loc_B29D24: FFree1Var var_C8 = ""
  loc_B29D27: FMemLdFPR8 arg_8(48)
  loc_B29D2C: CVarR4
  loc_B29D30: PopAdLdVar
  loc_B29D31: FLdRfVar var_90
  loc_B29D34: ImpAdLdRf MemVar_C44F9C
  loc_B29D37: NewIfNullPr Me
  loc_B29D3A:  = Me.Global.Printer
  loc_B29D3F: FLdPr var_90
  loc_B29D42: LateIdSt
  loc_B29D47: FFree1Ad var_90
  loc_B29D4A: FLdRfVar var_B8
  loc_B29D4D: LitVarStr var_A0, "FechCheq"
  loc_B29D52: PopAdLdVar
  loc_B29D53: FLdRfVar var_B4
  loc_B29D56: FLdRfVar var_90
  loc_B29D59: FMemLdRf unk_403185
  loc_B29D5E: NewIfNullPr clscheque
  loc_B29D61: from_stack_1v = clscheque.RsFrmGet()
  loc_B29D66: FLdPr var_90
  loc_B29D69:  = Me.Fields
  loc_B29D6E: FLdPr var_B4
  loc_B29D71: from_stack_2 = Me.Item(from_stack_1)
  loc_B29D76: LitI4 1
  loc_B29D7B: LitI4 1
  loc_B29D80: LitVarStr var_B0, "dd \de mmmm       yyyy"
  loc_B29D85: FStVarCopyObj var_F8
  loc_B29D88: FLdRfVar var_F8
  loc_B29D8B: FLdZeroAd var_B8
  loc_B29D8E: CVarAd
  loc_B29D92: ImpAdCallI2 Format$(, )
  loc_B29D97: CVarStr var_10C
  loc_B29D9A: PopAdLdVar
  loc_B29D9B: FLdRfVar var_FC
  loc_B29D9E: ImpAdLdRf MemVar_C44F9C
  loc_B29DA1: NewIfNullPr Me
  loc_B29DA4:  = Me.Global.Printer
  loc_B29DA9: FLdPr var_FC
  loc_B29DAC: LateIdCallLdVar
  loc_B29DB6: PopAd
  loc_B29DB8: LitI2_Byte &H48
  loc_B29DBA: CR8I2
  loc_B29DBB: FLdRfVar var_11C
  loc_B29DBE: CR8Var
  loc_B29DC0: SubR4
  loc_B29DC1: CVarR4
  loc_B29DC5: PopAdLdVar
  loc_B29DC6: FLdRfVar var_120
  loc_B29DC9: ImpAdLdRf MemVar_C44F9C
  loc_B29DCC: NewIfNullPr Me
  loc_B29DCF:  = Me.Global.Printer
  loc_B29DD4: FLdPr var_120
  loc_B29DD7: LateIdSt
  loc_B29DDC: FFreeAd var_90 = "": var_B4 = "": var_FC = ""
  loc_B29DE7: FFreeVar var_C8 = "": var_F8 = "": var_10C = ""
  loc_B29DF2: FLdRfVar var_90
  loc_B29DF5: ImpAdLdRf MemVar_C44F9C
  loc_B29DF8: NewIfNullPr Me
  loc_B29DFB:  = Me.Global.Printer
  loc_B29E00: FLdRfVar var_C8
  loc_B29E03: FLdRfVar var_FC
  loc_B29E06: LitVarStr var_A0, "FechCheq"
  loc_B29E0B: PopAdLdVar
  loc_B29E0C: FLdRfVar var_B8
  loc_B29E0F: FLdRfVar var_B4
  loc_B29E12: FMemLdRf unk_403185
  loc_B29E17: NewIfNullPr clscheque
  loc_B29E1A: from_stack_1v = clscheque.RsFrmGet()
  loc_B29E1F: FLdPr var_B4
  loc_B29E22:  = Me.Fields
  loc_B29E27: FLdPr var_B8
  loc_B29E2A: from_stack_2 = Me.Item(from_stack_1)
  loc_B29E2F: FLdPr var_FC
  loc_B29E32:  = Me.Value
  loc_B29E37: LitI4 1
  loc_B29E3C: LitI4 1
  loc_B29E41: LitVarStr var_D8, "dd \de mmmm                     yyyy"
  loc_B29E46: FStVarCopyObj var_10C
  loc_B29E49: FLdRfVar var_10C
  loc_B29E4C: FLdRfVar var_C8
  loc_B29E4F: FnCDateVar
  loc_B29E51: LitI2_Byte 1
  loc_B29E53: CR8I2
  loc_B29E54: AddR8
  loc_B29E55: CDateR8
  loc_B29E56: CVarDate var_F8
  loc_B29E5A: ImpAdCallI2 Format$(, )
  loc_B29E5F: FStStr var_138
  loc_B29E62: FLdZeroAd var_138
  loc_B29E65: FStStrNoPop var_134
  loc_B29E68: ILdRf var_90
  loc_B29E6B: PrintObject
  loc_B29E71: FFreeStr var_134 = ""
  loc_B29E78: FFreeAd var_90 = "": var_B4 = "": var_B8 = ""
  loc_B29E83: FFreeVar var_C8 = "": var_F8 = ""
  loc_B29E8C: LitI2_Byte &HA
  loc_B29E8E: CR8I2
  loc_B29E8F: CVarR4
  loc_B29E93: PopAdLdVar
  loc_B29E94: FLdRfVar var_90
  loc_B29E97: ImpAdLdRf MemVar_C44F9C
  loc_B29E9A: NewIfNullPr Me
  loc_B29E9D:  = Me.Global.Printer
  loc_B29EA2: FLdPr var_90
  loc_B29EA5: LateIdSt
  loc_B29EAA: FFree1Ad var_90
  loc_B29EAD: FLdRfVar var_90
  loc_B29EB0: ImpAdLdRf MemVar_C44F9C
  loc_B29EB3: NewIfNullPr Me
  loc_B29EB6:  = Me.Global.Printer
  loc_B29EBB: FLdPr var_90
  loc_B29EBE: LateIdLdVar var_C8 DispID_11 1
  loc_B29EC5: CR8Var
  loc_B29EC7: LitI2_Byte 1
  loc_B29EC9: CR8I2
  loc_B29ECA: AddR8
  loc_B29ECB: CVarR4
  loc_B29ECF: PopAdLdVar
  loc_B29ED0: FLdRfVar var_B4
  loc_B29ED3: ImpAdLdRf MemVar_C44F9C
  loc_B29ED6: NewIfNullPr Me
  loc_B29ED9:  = Me.Global.Printer
  loc_B29EDE: FLdPr var_B4
  loc_B29EE1: LateIdSt
  loc_B29EE6: FFreeAd var_90 = ""
  loc_B29EED: FFree1Var var_C8 = ""
  loc_B29EF0: LitI2_Byte &H32
  loc_B29EF2: CR8I2
  loc_B29EF3: CVarR4
  loc_B29EF7: PopAdLdVar
  loc_B29EF8: FLdRfVar var_90
  loc_B29EFB: ImpAdLdRf MemVar_C44F9C
  loc_B29EFE: NewIfNullPr Me
  loc_B29F01:  = Me.Global.Printer
  loc_B29F06: FLdPr var_90
  loc_B29F09: LateIdSt
  loc_B29F0E: FFree1Ad var_90
  loc_B29F11: FLdRfVar var_C8
  loc_B29F14: FLdRfVar var_B8
  loc_B29F17: LitVarStr var_A0, "OrdeCheq"
  loc_B29F1C: PopAdLdVar
  loc_B29F1D: FLdRfVar var_B4
  loc_B29F20: FLdRfVar var_90
  loc_B29F23: FMemLdRf unk_403185
  loc_B29F28: NewIfNullPr clscheque
  loc_B29F2B: from_stack_1v = clscheque.RsFrmGet()
  loc_B29F30: FLdPr var_90
  loc_B29F33:  = Me.Fields
  loc_B29F38: FLdPr var_B4
  loc_B29F3B: from_stack_2 = Me.Item(from_stack_1)
  loc_B29F40: FLdPr var_B8
  loc_B29F43:  = Me.Value
  loc_B29F48: LitDate 110.49
  loc_B29F51: PopFPR4
  loc_B29F52: LitDate 98.49
  loc_B29F5B: PopFPR4
  loc_B29F5C: FMemLdRf unk_403185
  loc_B29F61: FMemLdRf unk_403185
  loc_B29F66: FLdRfVar var_C8
  loc_B29F69: CStrVarTmp
  loc_B29F6A: FStStrNoPop var_134
  loc_B29F6D: ImpAdCallFPR4 Proc_260_7_A344F4(, , , , )
  loc_B29F72: FFree1Str var_134
  loc_B29F75: FFreeAd var_90 = "": var_B4 = ""
  loc_B29F7E: FFree1Var var_C8 = ""
  loc_B29F81: FLdRfVar var_90
  loc_B29F84: ImpAdLdRf MemVar_C44F9C
  loc_B29F87: NewIfNullPr Me
  loc_B29F8A:  = Me.Global.Printer
  loc_B29F8F: FMemLdR4 arg_8(24)
  loc_B29F94: ILdRf var_90
  loc_B29F97: PrintObject
  loc_B29F9D: FFree1Ad var_90
  loc_B29FA0: LitI2_Byte &H13
  loc_B29FA2: CR8I2
  loc_B29FA3: CVarR4
  loc_B29FA7: PopAdLdVar
  loc_B29FA8: FLdRfVar var_90
  loc_B29FAB: ImpAdLdRf MemVar_C44F9C
  loc_B29FAE: NewIfNullPr Me
  loc_B29FB1:  = Me.Global.Printer
  loc_B29FB6: FLdPr var_90
  loc_B29FB9: LateIdSt
  loc_B29FBE: FFree1Ad var_90
  loc_B29FC1: FLdRfVar var_90
  loc_B29FC4: ImpAdLdRf MemVar_C44F9C
  loc_B29FC7: NewIfNullPr Me
  loc_B29FCA:  = Me.Global.Printer
  loc_B29FCF: FMemLdR4 arg_8(28)
  loc_B29FD4: ILdRf var_90
  loc_B29FD7: PrintObject
  loc_B29FDD: FFree1Ad var_90
  loc_B29FE0: FLdRfVar var_90
  loc_B29FE3: ImpAdLdRf MemVar_C44F9C
  loc_B29FE6: NewIfNullPr Me
  loc_B29FE9:  = Me.Global.Printer
  loc_B29FEE: FLdPr var_90
  loc_B29FF1: LateIdLdVar var_C8 DispID_11 1
  loc_B29FF8: CR8Var
  loc_B29FFA: LitI2_Byte 1
  loc_B29FFC: CR8I2
  loc_B29FFD: AddR8
  loc_B29FFE: CVarR4
  loc_B2A002: PopAdLdVar
  loc_B2A003: FLdRfVar var_B4
  loc_B2A006: ImpAdLdRf MemVar_C44F9C
  loc_B2A009: NewIfNullPr Me
  loc_B2A00C:  = Me.Global.Printer
  loc_B2A011: FLdPr var_B4
  loc_B2A014: LateIdSt
  loc_B2A019: FFreeAd var_90 = ""
  loc_B2A020: FFree1Var var_C8 = ""
  loc_B2A023: LitI2_Byte &H37
  loc_B2A025: CR8I2
  loc_B2A026: CVarR4
  loc_B2A02A: PopAdLdVar
  loc_B2A02B: FLdRfVar var_90
  loc_B2A02E: ImpAdLdRf MemVar_C44F9C
  loc_B2A031: NewIfNullPr Me
  loc_B2A034:  = Me.Global.Printer
  loc_B2A039: FLdPr var_90
  loc_B2A03C: LateIdSt
  loc_B2A041: FFree1Ad var_90
  loc_B2A044: FLdRfVar var_C8
  loc_B2A047: FLdRfVar var_B8
  loc_B2A04A: LitVarStr var_A0, "ImpoCheq"
  loc_B2A04F: PopAdLdVar
  loc_B2A050: FLdRfVar var_B4
  loc_B2A053: FLdRfVar var_90
  loc_B2A056: FMemLdRf unk_403185
  loc_B2A05B: NewIfNullPr clscheque
  loc_B2A05E: from_stack_1v = clscheque.RsFrmGet()
  loc_B2A063: FLdPr var_90
  loc_B2A066:  = Me.Fields
  loc_B2A06B: FLdPr var_B4
  loc_B2A06E: from_stack_2 = Me.Item(from_stack_1)
  loc_B2A073: FLdPr var_B8
  loc_B2A076:  = Me.Value
  loc_B2A07B: FLdRfVar var_C8
  loc_B2A07E: CR4Var
  loc_B2A07F: PopFPR8
  loc_B2A080: ImpAdCallI2 Proc_261_26_9A5B0C(, )
  loc_B2A085: FStStr var_138
  loc_B2A088: LitDate 110.49
  loc_B2A091: PopFPR4
  loc_B2A092: LitDate 85.72
  loc_B2A09B: PopFPR4
  loc_B2A09C: FMemLdRf unk_403185
  loc_B2A0A1: FMemLdRf unk_403185
  loc_B2A0A6: FLdZeroAd var_138
  loc_B2A0A9: FStStrNoPop var_134
  loc_B2A0AC: ImpAdCallFPR4 Proc_260_7_A344F4(, , , , )
  loc_B2A0B1: FFreeStr var_134 = ""
  loc_B2A0B8: FFreeAd var_90 = "": var_B4 = ""
  loc_B2A0C1: FFree1Var var_C8 = ""
  loc_B2A0C4: FLdRfVar var_90
  loc_B2A0C7: ImpAdLdRf MemVar_C44F9C
  loc_B2A0CA: NewIfNullPr Me
  loc_B2A0CD:  = Me.Global.Printer
  loc_B2A0D2: FMemLdR4 arg_8(32)
  loc_B2A0D7: ILdRf var_90
  loc_B2A0DA: PrintObject
  loc_B2A0E0: FFree1Ad var_90
  loc_B2A0E3: LitI2_Byte &H13
  loc_B2A0E5: CR8I2
  loc_B2A0E6: CVarR4
  loc_B2A0EA: PopAdLdVar
  loc_B2A0EB: FLdRfVar var_90
  loc_B2A0EE: ImpAdLdRf MemVar_C44F9C
  loc_B2A0F1: NewIfNullPr Me
  loc_B2A0F4:  = Me.Global.Printer
  loc_B2A0F9: FLdPr var_90
  loc_B2A0FC: LateIdSt
  loc_B2A101: FFree1Ad var_90
  loc_B2A104: FLdRfVar var_90
  loc_B2A107: ImpAdLdRf MemVar_C44F9C
  loc_B2A10A: NewIfNullPr Me
  loc_B2A10D:  = Me.Global.Printer
  loc_B2A112: FMemLdR4 arg_8(36)
  loc_B2A117: ILdRf var_90
  loc_B2A11A: PrintObject
  loc_B2A120: FFree1Ad var_90
  loc_B2A123: FMemLdI2 arg_8(4)
  loc_B2A128: LitI2_Byte 4
  loc_B2A12A: ModI2
  loc_B2A12B: LitI2_Byte 0
  loc_B2A12D: EqI2
  loc_B2A12E: BranchF loc_B2A18E
  loc_B2A131: FMemLdI2 arg_8(4)
  loc_B2A136: CI4UI1
  loc_B2A137: FLdRfVar var_88
  loc_B2A13A: FMemLdRf unk_403185
  loc_B2A13F: NewIfNullPr clscheque
  loc_B2A142: from_stack_1 = clscheque.RecordCount
  loc_B2A147: ILdRf var_88
  loc_B2A14A: NeI4
  loc_B2A14B: BranchF loc_B2A18B
  loc_B2A14E: FLdRfVar var_90
  loc_B2A151: ImpAdLdRf MemVar_C44F9C
  loc_B2A154: NewIfNullPr Me
  loc_B2A157:  = Me.Global.Printer
  loc_B2A15C: FLdPr var_90
  loc_B2A15F: LateIdCall
  loc_B2A167: FFree1Ad var_90
  loc_B2A16A: LitI2_Byte 1
  loc_B2A16C: CR8I2
  loc_B2A16D: CVarR4
  loc_B2A171: PopAdLdVar
  loc_B2A172: FLdRfVar var_90
  loc_B2A175: ImpAdLdRf MemVar_C44F9C
  loc_B2A178: NewIfNullPr Me
  loc_B2A17B:  = Me.Global.Printer
  loc_B2A180: FLdPr var_90
  loc_B2A183: LateIdSt
  loc_B2A188: FFree1Ad var_90
  loc_B2A18B: Branch loc_B2A1D1
  loc_B2A18E: FLdRfVar var_90
  loc_B2A191: ImpAdLdRf MemVar_C44F9C
  loc_B2A194: NewIfNullPr Me
  loc_B2A197:  = Me.Global.Printer
  loc_B2A19C: FLdPr var_90
  loc_B2A19F: LateIdLdVar var_C8 DispID_11 1
  loc_B2A1A6: CR8Var
  loc_B2A1A8: LitI2_Byte &H26
  loc_B2A1AA: CR8I2
  loc_B2A1AB: AddR8
  loc_B2A1AC: CVarR4
  loc_B2A1B0: PopAdLdVar
  loc_B2A1B1: FLdRfVar var_B4
  loc_B2A1B4: ImpAdLdRf MemVar_C44F9C
  loc_B2A1B7: NewIfNullPr Me
  loc_B2A1BA:  = Me.Global.Printer
  loc_B2A1BF: FLdPr var_B4
  loc_B2A1C2: LateIdSt
  loc_B2A1C7: FFreeAd var_90 = ""
  loc_B2A1CE: FFree1Var var_C8 = ""
  loc_B2A1D1: ImpAdCallFPR4 Proc_260_9_A58BBC()
  loc_B2A1D6: FMemLdRf unk_403185
  loc_B2A1DB: NewIfNullPr clscheque
  loc_B2A1DE: Call clscheque.MoveSiguiente()
  loc_B2A1E3: FMemLdRf unk_403185
  loc_B2A1E8: NextI2 var_8C, loc_B299F9
  loc_B2A1ED: FLdRfVar var_90
  loc_B2A1F0: ImpAdLdRf MemVar_C44F9C
  loc_B2A1F3: NewIfNullPr Me
  loc_B2A1F6:  = Me.Global.Printer
  loc_B2A1FB: FLdPr var_90
  loc_B2A1FE: LateIdCall
  loc_B2A206: FFree1Ad var_90
  loc_B2A209: FMemLdR4 arg_8(0)
  loc_B2A20E: LitStr vbNullString
  loc_B2A211: NeStr
  loc_B2A213: BranchF loc_B2A220
  loc_B2A216: FMemLdRf unk_403185
  loc_B2A21B: ImpAdCallFPR4 Proc_265_1_9A06AC()
  loc_B2A220: LitVarStr var_A0, "Se enviaron "
  loc_B2A225: FMemLdI2 arg_8(44)
  loc_B2A22A: CR8I2
  loc_B2A22B: PopFPR8
  loc_B2A22C: ImpAdCallI2 Proc_261_27_AE8604(, )
  loc_B2A231: CVarStr var_C8
  loc_B2A234: FLdRfVar var_F8
  loc_B2A237: ImpAdCallFPR4  = LCase()
  loc_B2A23C: FLdRfVar var_F8
  loc_B2A23F: ConcatVar var_10C
  loc_B2A243: LitVarStr var_B0, " cheques"
  loc_B2A248: ConcatVar var_11C
  loc_B2A24C: LitVarStr var_E8, "Se envió un cheque"
  loc_B2A251: FStVarCopyObj var_148
  loc_B2A254: FLdRfVar var_148
  loc_B2A257: FMemLdI2 arg_8(44)
  loc_B2A25C: LitI2_Byte 1
  loc_B2A25E: EqI2
  loc_B2A25F: CVarBoolI2 var_D8
  loc_B2A263: FLdRfVar var_158
  loc_B2A266: ImpAdCallFPR4  = IIf(, , )
  loc_B2A26B: LitI4 0
  loc_B2A270: FLdRfVar var_158
  loc_B2A273: LitVarStr var_130, " a la impresora."
  loc_B2A278: ConcatVar var_168
  loc_B2A27C: CStrVarVal var_134
  loc_B2A280: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B2A285: FFree1Str var_134
  loc_B2A288: FFreeVar var_C8 = "": var_F8 = "": var_10C = "": var_D8 = "": var_148 = "": var_11C = "": var_158 = ""
  loc_B2A29B: LitNothing
  loc_B2A29D: CastAd
  loc_B2A2A0: FMemStAdFunc arg_8(8)
  loc_B2A2A6: ExitProc
  loc_B2A2A7: FMemLdR4 arg_8(0)
  loc_B2A2AC: LitStr vbNullString
  loc_B2A2AF: NeStr
  loc_B2A2B1: BranchF loc_B2A2BE
  loc_B2A2B4: FMemLdRf unk_403185
  loc_B2A2B9: ImpAdCallFPR4 Proc_265_1_9A06AC()
  loc_B2A2BE: FLdRfVar var_88
  loc_B2A2C1: ImpAdCallI2 Err 'rtcErrObj
  loc_B2A2C6: FStAdFunc var_90
  loc_B2A2C9: FLdPr var_90
  loc_B2A2CC:  = Err.Number
  loc_B2A2D1: ILdRf var_88
  loc_B2A2D4: LitI4 &H17C
  loc_B2A2D9: EqI4
  loc_B2A2DA: FFree1Ad var_90
  loc_B2A2DD: BranchF loc_B2A2EE
  loc_B2A2E0: LitI4 0
  loc_B2A2E5: LitStr "Error de impresora"
  loc_B2A2E8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B2A2ED: ExitProc
  loc_B2A2EE: ExitProc
End Function

Private Function Proc_260_6_93F810() '93F810
  'Data Table: 40317C
  loc_93F80C: ExitProc
End Function

Private Function Proc_260_7_A344F4(arg_C, arg_10, arg_14, arg_18, arg_1C) 'A344F4
  'Data Table: 40317C
  loc_A342F4: ILdRf arg_C
  loc_A342F7: FStStrCopy var_88
  loc_A342FA: FLdRfVar var_88
  loc_A342FD: CDargRef
  loc_A34301: FLdRfVar var_8C
  loc_A34304: ImpAdLdRf MemVar_C44F9C
  loc_A34307: NewIfNullPr Me
  loc_A3430A:  = Me.Global.Printer
  loc_A3430F: FLdPr var_8C
  loc_A34312: LateIdCallLdVar
  loc_A3431C: CR8Var
  loc_A3431E: FLdFPR4 arg_18
  loc_A34321: LtR8
  loc_A34322: FFree1Ad var_8C
  loc_A34325: FFree1Var var_AC = ""
  loc_A34328: BranchF loc_A343BE
  loc_A3432B: ILdRf var_88
  loc_A3432E: LitStr " "
  loc_A34331: ConcatStr
  loc_A34332: IStStr
  loc_A34336: ILdRf arg_10
  loc_A34339: CDargRef
  loc_A3433D: FLdRfVar var_8C
  loc_A34340: ImpAdLdRf MemVar_C44F9C
  loc_A34343: NewIfNullPr Me
  loc_A34346:  = Me.Global.Printer
  loc_A3434B: FLdPr var_8C
  loc_A3434E: LateIdCallLdVar
  loc_A34358: CR8Var
  loc_A3435A: FLdFPR4 arg_18
  loc_A3435D: LtR8
  loc_A3435E: FFree1Ad var_8C
  loc_A34361: FFree1Var var_AC = ""
  loc_A34364: BranchF loc_A34375
  loc_A34367: ILdI4 arg_10
  loc_A3436A: LitStr "-"
  loc_A3436D: ConcatStr
  loc_A3436E: IStStr
  loc_A34372: Branch loc_A34336
  loc_A34375: LitStr "-"
  loc_A34378: IStStrCopy arg_14
  loc_A3437C: ILdRf arg_14
  loc_A3437F: CDargRef
  loc_A34383: FLdRfVar var_8C
  loc_A34386: ImpAdLdRf MemVar_C44F9C
  loc_A34389: NewIfNullPr Me
  loc_A3438C:  = Me.Global.Printer
  loc_A34391: FLdPr var_8C
  loc_A34394: LateIdCallLdVar
  loc_A3439E: CR8Var
  loc_A343A0: FLdFPR4 arg_1C
  loc_A343A3: LtR8
  loc_A343A4: FFree1Ad var_8C
  loc_A343A7: FFree1Var var_AC = ""
  loc_A343AA: BranchF loc_A343BB
  loc_A343AD: ILdI4 arg_14
  loc_A343B0: LitStr "-"
  loc_A343B3: ConcatStr
  loc_A343B4: IStStr
  loc_A343B8: Branch loc_A3437C
  loc_A343BB: Branch loc_A344F3
  loc_A343BE: ILdRf var_88
  loc_A343C1: IStStrCopy arg_10
  loc_A343C5: LitStr vbNullString
  loc_A343C8: IStStrCopy arg_14
  loc_A343CC: ILdRf arg_10
  loc_A343CF: CDargRef
  loc_A343D3: FLdRfVar var_8C
  loc_A343D6: ImpAdLdRf MemVar_C44F9C
  loc_A343D9: NewIfNullPr Me
  loc_A343DC:  = Me.Global.Printer
  loc_A343E1: FLdPr var_8C
  loc_A343E4: LateIdCallLdVar
  loc_A343EE: CR8Var
  loc_A343F0: FLdFPR4 arg_18
  loc_A343F3: GeR8
  loc_A343F4: FFree1Ad var_8C
  loc_A343F7: FFree1Var var_AC = ""
  loc_A343FA: BranchF loc_A344A9
  loc_A343FD: LitI4 0
  loc_A34402: LitI4 -1
  loc_A34407: LitStr " "
  loc_A3440A: ILdI4 arg_10
  loc_A3440D: ImpAdCallI2 InStrRev(, , , )
  loc_A34412: FStR4 var_150
  loc_A34415: LitVar_Missing var_AC
  loc_A34418: ILdRf var_150
  loc_A3441B: LitI4 1
  loc_A34420: AddI4
  loc_A34421: ILdI4 arg_10
  loc_A34424: ImpAdCallI2 Mid$(, , )
  loc_A34429: CVarStr var_11C
  loc_A3442C: LitVarStr var_EC, vbNullString
  loc_A34431: FStVarCopyObj var_FC
  loc_A34434: FLdRfVar var_FC
  loc_A34437: LitVarStr var_CC, " "
  loc_A3443C: FStVarCopyObj var_DC
  loc_A3443F: FLdRfVar var_DC
  loc_A34442: ILdI4 arg_14
  loc_A34445: LitStr vbNullString
  loc_A34448: NeStr
  loc_A3444A: CVarBoolI2 var_BC
  loc_A3444E: FLdRfVar var_10C
  loc_A34451: ImpAdCallFPR4  = IIf(, , )
  loc_A34456: FLdRfVar var_10C
  loc_A34459: ConcatVar var_12C
  loc_A3445D: ILdI4 arg_14
  loc_A34460: CVarStr var_13C
  loc_A34463: ConcatVar var_14C
  loc_A34467: CStrVarTmp
  loc_A34468: IStStr
  loc_A3446C: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_10C = "": var_12C = ""
  loc_A3447F: LitI4 0
  loc_A34484: LitI4 -1
  loc_A34489: LitStr " "
  loc_A3448C: ILdI4 arg_10
  loc_A3448F: ImpAdCallI2 InStrRev(, , , )
  loc_A34494: LitI4 1
  loc_A34499: SubI4
  loc_A3449A: ILdI4 arg_10
  loc_A3449D: ImpAdCallI2 Left$(, )
  loc_A344A2: IStStr
  loc_A344A6: Branch loc_A343CC
  loc_A344A9: ILdI4 arg_14
  loc_A344AC: LitStr " "
  loc_A344AF: ConcatStr
  loc_A344B0: IStStr
  loc_A344B4: ILdRf arg_14
  loc_A344B7: CDargRef
  loc_A344BB: FLdRfVar var_8C
  loc_A344BE: ImpAdLdRf MemVar_C44F9C
  loc_A344C1: NewIfNullPr Me
  loc_A344C4:  = Me.Global.Printer
  loc_A344C9: FLdPr var_8C
  loc_A344CC: LateIdCallLdVar
  loc_A344D6: CR8Var
  loc_A344D8: FLdFPR4 arg_1C
  loc_A344DB: LtR8
  loc_A344DC: FFree1Ad var_8C
  loc_A344DF: FFree1Var var_AC = ""
  loc_A344E2: BranchF loc_A344F3
  loc_A344E5: ILdI4 arg_14
  loc_A344E8: LitStr "-"
  loc_A344EB: ConcatStr
  loc_A344EC: IStStr
  loc_A344F0: Branch loc_A344B4
  loc_A344F3: ExitProc
End Function

Private Function Proc_260_8_97A28C(arg_C, arg_10) '97A28C
  'Data Table: 40317C
  loc_97A264: ILdRf arg_C
  loc_97A267: FStStrCopy var_8C
  loc_97A26A: ILdRf arg_10
  loc_97A26D: FStStrCopy var_90
  loc_97A270: ILdRf var_8C
  loc_97A273: FnLenStr
  loc_97A274: ILdRf var_90
  loc_97A277: FnLenStr
  loc_97A278: GtI4
  loc_97A279: BranchF loc_97A285
  loc_97A27C: ILdRf var_8C
  loc_97A27F: FStStrCopy var_88
  loc_97A282: Branch loc_97A28B
  loc_97A285: ILdRf var_90
  loc_97A288: FStStrCopy var_88
  loc_97A28B: ExitProc
End Function

Private Function Proc_260_9_A58BBC() 'A58BBC
  'Data Table: 40317C
  loc_A58948: FLdRfVar var_17C
  loc_A5894B: FLdRfVar var_A0
  loc_A5894E: LitVarStr var_9C, "IdCheq"
  loc_A58953: PopAdLdVar
  loc_A58954: FLdRfVar var_8C
  loc_A58957: FLdRfVar var_88
  loc_A5895A: FMemLdRf unk_403185
  loc_A5895F: NewIfNullPr clscheque
  loc_A58962: from_stack_1v = clscheque.RsFrmGet()
  loc_A58967: FLdPr var_88
  loc_A5896A:  = Me.Fields
  loc_A5896F: FLdPr var_8C
  loc_A58972: from_stack_2 = Me.Item(from_stack_1)
  loc_A58977: FLdPr var_A0
  loc_A5897A:  = Me.Value
  loc_A5897F: FLdRfVar var_18C
  loc_A58982: FLdRfVar var_BC
  loc_A58985: LitVarStr var_B8, "CucuPers"
  loc_A5898A: PopAdLdVar
  loc_A5898B: FLdRfVar var_A8
  loc_A5898E: FLdRfVar var_A4
  loc_A58991: FMemLdRf unk_403185
  loc_A58996: NewIfNullPr clscheque
  loc_A58999: from_stack_1v = clscheque.RsFrmGet()
  loc_A5899E: FLdPr var_A4
  loc_A589A1:  = Me.Fields
  loc_A589A6: FLdPr var_A8
  loc_A589A9: from_stack_2 = Me.Item(from_stack_1)
  loc_A589AE: FLdPr var_BC
  loc_A589B1:  = Me.Value
  loc_A589B6: FLdRfVar var_1A0
  loc_A589B9: FLdRfVar var_D8
  loc_A589BC: LitVarStr var_D4, "CodiBanc"
  loc_A589C1: PopAdLdVar
  loc_A589C2: FLdRfVar var_C4
  loc_A589C5: FLdRfVar var_C0
  loc_A589C8: FMemLdRf unk_403185
  loc_A589CD: NewIfNullPr clscheque
  loc_A589D0: from_stack_1v = clscheque.RsFrmGet()
  loc_A589D5: FLdPr var_C0
  loc_A589D8:  = Me.Fields
  loc_A589DD: FLdPr var_C4
  loc_A589E0: from_stack_2 = Me.Item(from_stack_1)
  loc_A589E5: FLdPr var_D8
  loc_A589E8:  = Me.Value
  loc_A589ED: FLdRfVar var_E0
  loc_A589F0: ImpAdLdRf MemVar_C3D898
  loc_A589F3: NewIfNullPr dlgImpresionAutomaticadeCheques
  loc_A589F6: VCallAd Control_ID_UlchBancTxt
  loc_A589F9: FStAdFunc var_DC
  loc_A589FC: FLdPr var_DC
  loc_A589FF:  = dlgImpresionAutomaticadeCheques.TextBox.Text
  loc_A58A04: FLdRfVar var_1B0
  loc_A58A07: FLdRfVar var_FC
  loc_A58A0A: LitVarStr var_F8, "ImpoCheq"
  loc_A58A0F: PopAdLdVar
  loc_A58A10: FLdRfVar var_E8
  loc_A58A13: FLdRfVar var_E4
  loc_A58A16: FMemLdRf unk_403185
  loc_A58A1B: NewIfNullPr clscheque
  loc_A58A1E: from_stack_1v = clscheque.RsFrmGet()
  loc_A58A23: FLdPr var_E4
  loc_A58A26:  = Me.Fields
  loc_A58A2B: FLdPr var_E8
  loc_A58A2E: from_stack_2 = Me.Item(from_stack_1)
  loc_A58A33: FLdPr var_FC
  loc_A58A36:  = Me.Value
  loc_A58A3B: FLdRfVar var_1C0
  loc_A58A3E: FLdRfVar var_118
  loc_A58A41: LitVarStr var_114, "FechCheq"
  loc_A58A46: PopAdLdVar
  loc_A58A47: FLdRfVar var_104
  loc_A58A4A: FLdRfVar var_100
  loc_A58A4D: FMemLdRf unk_403185
  loc_A58A52: NewIfNullPr clscheque
  loc_A58A55: from_stack_1v = clscheque.RsFrmGet()
  loc_A58A5A: FLdPr var_100
  loc_A58A5D:  = Me.Fields
  loc_A58A62: FLdPr var_104
  loc_A58A65: from_stack_2 = Me.Item(from_stack_1)
  loc_A58A6A: FLdPr var_118
  loc_A58A6D:  = Me.Value
  loc_A58A72: FLdRfVar var_1D4
  loc_A58A75: FLdRfVar var_134
  loc_A58A78: LitVarStr var_130, "NumeOrpa"
  loc_A58A7D: PopAdLdVar
  loc_A58A7E: FLdRfVar var_120
  loc_A58A81: FLdRfVar var_11C
  loc_A58A84: FMemLdRf unk_403185
  loc_A58A89: NewIfNullPr clscheque
  loc_A58A8C: from_stack_1v = clscheque.RsFrmGet()
  loc_A58A91: FLdPr var_11C
  loc_A58A94:  = Me.Fields
  loc_A58A99: FLdPr var_120
  loc_A58A9C: from_stack_2 = Me.Item(from_stack_1)
  loc_A58AA1: FLdPr var_134
  loc_A58AA4:  = Me.Value
  loc_A58AA9: FLdRfVar var_1E4
  loc_A58AAC: FLdRfVar var_150
  loc_A58AAF: LitVarStr var_14C, "OrdeCheq"
  loc_A58AB4: PopAdLdVar
  loc_A58AB5: FLdRfVar var_13C
  loc_A58AB8: FLdRfVar var_138
  loc_A58ABB: FMemLdRf unk_403185
  loc_A58AC0: NewIfNullPr clscheque
  loc_A58AC3: from_stack_1v = clscheque.RsFrmGet()
  loc_A58AC8: FLdPr var_138
  loc_A58ACB:  = Me.Fields
  loc_A58AD0: FLdPr var_13C
  loc_A58AD3: from_stack_2 = Me.Item(from_stack_1)
  loc_A58AD8: FLdPr var_150
  loc_A58ADB:  = Me.Value
  loc_A58AE0: FLdRfVar var_1F8
  loc_A58AE3: FLdRfVar var_16C
  loc_A58AE6: LitVarStr var_168, "AutoCheq"
  loc_A58AEB: PopAdLdVar
  loc_A58AEC: FLdRfVar var_158
  loc_A58AEF: FLdRfVar var_154
  loc_A58AF2: FMemLdRf unk_403185
  loc_A58AF7: NewIfNullPr clscheque
  loc_A58AFA: from_stack_1v = clscheque.RsFrmGet()
  loc_A58AFF: FLdPr var_154
  loc_A58B02:  = Me.Fields
  loc_A58B07: FLdPr var_158
  loc_A58B0A: from_stack_2 = Me.Item(from_stack_1)
  loc_A58B0F: FLdPr var_16C
  loc_A58B12:  = Me.Value
  loc_A58B17: FLdRfVar var_1FA
  loc_A58B1A: FLdRfVar var_1F8
  loc_A58B1D: CUI1Var
  loc_A58B1F: FLdRfVar var_1E4
  loc_A58B22: CStrVarTmp
  loc_A58B23: FStStrNoPop var_1E8
  loc_A58B26: FLdRfVar var_1D4
  loc_A58B29: CI4Var
  loc_A58B2B: FLdRfVar var_1C0
  loc_A58B2E: CStrVarTmp
  loc_A58B2F: FStStrNoPop var_1C4
  loc_A58B32: FLdRfVar var_1B0
  loc_A58B35: CR4Var
  loc_A58B36: PopFPR8
  loc_A58B37: ILdRf var_E0
  loc_A58B3A: CR8Str
  loc_A58B3C: FMemLdI2 arg_8(4)
  loc_A58B41: CR8I2
  loc_A58B42: AddR8
  loc_A58B43: LitI2_Byte 1
  loc_A58B45: CR8I2
  loc_A58B46: SubR4
  loc_A58B47: CI4R8
  loc_A58B48: FLdRfVar var_1A0
  loc_A58B4B: CI4Var
  loc_A58B4D: FLdRfVar var_18C
  loc_A58B50: CStrVarTmp
  loc_A58B51: FStStrNoPop var_190
  loc_A58B54: FLdRfVar var_17C
  loc_A58B57: CI4Var
  loc_A58B59: FMemLdRf unk_403185
  loc_A58B5E: NewIfNullPr clscheque
  loc_A58B61: from_stack_10v = clscheque.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_A58B66: FFreeStr var_E0 = "": var_190 = "": var_1C4 = ""
  loc_A58B71: FFreeAd var_88 = "": var_8C = "": var_A4 = "": var_A8 = "": var_C0 = "": var_C4 = "": var_DC = "": var_E4 = "": var_E8 = "": var_100 = "": var_104 = "": var_11C = "": var_120 = "": var_138 = "": var_13C = "": var_154 = "": var_158 = "": var_A0 = "": var_BC = "": var_D8 = "": var_FC = "": var_118 = "": var_134 = "": var_150 = ""
  loc_A58BA6: FFreeVar var_17C = "": var_18C = "": var_1A0 = "": var_1B0 = "": var_1C0 = "": var_1D4 = "": var_1E4 = ""
  loc_A58BB9: ExitProc
  loc_A58BBA: CCyI4
End Function
