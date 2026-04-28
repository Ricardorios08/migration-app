VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsQRReedSolomon"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Private Function Proc_280_0_94C050() '94C050
  'Data Table: 402FC0
  loc_94C03C: ZeroRetVal
  loc_94C03E: FLdPr Me
  loc_94C041: MemLdStr global_52
  loc_94C044: FStAd var_88 
  loc_94C048: ExitProcCbHresult
End Function

Private Function Proc_280_1_94BE10(arg_C) '94BE10
  'Data Table: 402FC0
  loc_94BDFC: ILdRf arg_C
  loc_94BDFF: FStAd var_88 
  loc_94BE03: ILdRf var_88
  loc_94BE06: FLdPr Me
  loc_94BE09: MemStAd
  loc_94BE0D: ExitProcHresult
End Function

Private Function Proc_280_2_945D84() '945D84
  'Data Table: 402FC0
  loc_945D74: FLdPr Me
  loc_945D77: MemLdStr global_64
  loc_945D7A: FStR4 var_88
  loc_945D7D: ExitProcCbHresult
End Function

Private Function Proc_280_3_9418A0(arg_C) '9418A0
  'Data Table: 402FC0
  loc_941894: ILdRf arg_C
  loc_941897: FLdPr Me
  loc_94189A: MemStI4 global_64
  loc_94189D: ExitProcHresult
End Function

Private Function Proc_280_4_945E04() '945E04
  'Data Table: 402FC0
  loc_945DF4: FLdPr Me
  loc_945DF7: MemLdStr global_56
  loc_945DFA: FStR4 var_88
  loc_945DFD: ExitProcCbHresult
End Function

Private Function Proc_280_5_945E44() '945E44
  'Data Table: 402FC0
  loc_945E34: FLdPr Me
  loc_945E37: MemLdStr global_60
  loc_945E3A: FStR4 var_88
  loc_945E3D: ExitProcCbHresult
End Function

Private Function Proc_280_6_945E84() '945E84
  'Data Table: 402FC0
  loc_945E74: FLdPr Me
  loc_945E77: MemLdStr global_68
  loc_945E7A: FStR4 var_88
  loc_945E7D: ExitProcCbHresult
End Function

Private Function Proc_280_7_949094(arg_C) '949094
  'Data Table: 402FC0
  loc_949080: ILdRf arg_C
  loc_949083: FLdPr Me
  loc_949086: MemLdRfVar from_stack_1.global_76
  loc_949089: Ary1LdI4
  loc_94908A: FStR4 var_88
  loc_94908D: ExitProcCbHresult
End Function

Private Function Proc_280_8_A487CC(arg_C, arg_10, arg_14, arg_18, arg_1C) 'A487CC
  'Data Table: 402FC0
  loc_A48534: ILdRf arg_14
  loc_A48537: FStAd var_8C 
  loc_A4853B: ILdRf arg_C
  loc_A4853E: LitI4 0
  loc_A48543: LeI4
  loc_A48544: ILdRf arg_10
  loc_A48547: LitI4 0
  loc_A4854C: LeI4
  loc_A4854D: OrI4
  loc_A4854E: ILdRf arg_C
  loc_A48551: ILdRf arg_10
  loc_A48554: AddI4
  loc_A48555: LitI4 &H400
  loc_A4855A: GtI4
  loc_A4855B: OrI4
  loc_A4855C: BranchF loc_A48565
  loc_A4855F: ExitProcCbHresult
  loc_A48565: ILdRf arg_1C
  loc_A48568: LitI4 0
  loc_A4856D: LtI4
  loc_A4856E: BranchF loc_A48577
  loc_A48571: ExitProcCbHresult
  loc_A48577: ILdRf var_8C
  loc_A4857A: LitNothing
  loc_A4857C: Is
  loc_A4857E: BranchF loc_A4858E
  loc_A48581: FLdPr Me
  loc_A48584: MemLdStr global_52
  loc_A48587: FStAd var_8C 
  loc_A4858B: Branch loc_A48598
  loc_A4858E: ILdRf var_8C
  loc_A48591: FLdPr Me
  loc_A48594: MemStAd
  loc_A48598: ILdRf var_8C
  loc_A4859B: LitNothing
  loc_A4859D: Is
  loc_A4859F: BranchF loc_A485A8
  loc_A485A2: ExitProcCbHresult
  loc_A485A8: ILdRf arg_18
  loc_A485AB: LitI4 0
  loc_A485B0: EqI4
  loc_A485B1: BranchF loc_A485BD
  loc_A485B4: FLdPr Me
  loc_A485B7: MemLdStr global_64
  loc_A485BA: FStR4 arg_18
  loc_A485BD: ILdRf arg_18
  loc_A485C0: LitI4 0
  loc_A485C5: EqI4
  loc_A485C6: BranchF loc_A485DE
  loc_A485C9: FLdRfVar var_9C
  loc_A485CC: FLdPr Me
  loc_A485CF: MemLdStr global_52
  loc_A485D2: ImpAdCallNonVirt
  loc_A485D8: ILdRf var_9C
  loc_A485DB: FStR4 arg_18
  loc_A485DE: ILdRf arg_18
  loc_A485E1: LitI4 0
  loc_A485E6: EqI4
  loc_A485E7: BranchF loc_A485F0
  loc_A485EA: ExitProcCbHresult
  loc_A485F0: ILdRf arg_C
  loc_A485F3: FLdPr Me
  loc_A485F6: MemStI4 global_56
  loc_A485F9: ILdRf arg_10
  loc_A485FC: FLdPr Me
  loc_A485FF: MemStI4 global_60
  loc_A48602: ILdRf arg_18
  loc_A48605: FLdPr Me
  loc_A48608: MemStI4 global_64
  loc_A4860B: ILdRf arg_1C
  loc_A4860E: FLdPr Me
  loc_A48611: MemStI4 global_68
  loc_A48614: ILdRf arg_1C
  loc_A48617: LitI4 1
  loc_A4861C: AndI4
  loc_A4861D: CBoolI4
  loc_A4861F: BranchF loc_A48638
  loc_A48622: ILdRf arg_18
  loc_A48625: FStR4 var_98
  loc_A48628: ILdRf arg_1C
  loc_A4862B: LitI4 1
  loc_A48630: XorI4
  loc_A48632: FStR4 arg_1C
  loc_A48635: Branch loc_A48640
  loc_A48638: LitI4 1
  loc_A4863D: FStR4 var_98
  loc_A48640: LitI4 1
  loc_A48645: FStR4 var_90
  loc_A48648: ILdRf arg_18
  loc_A4864B: FStR4 var_94
  loc_A4864E: ILdRf arg_1C
  loc_A48651: LitI4 0
  loc_A48656: NeI4
  loc_A48657: BranchF loc_A486AE
  loc_A4865A: ILdRf var_90
  loc_A4865D: ILdRf var_90
  loc_A48660: AddI4
  loc_A48661: FStR4 var_90
  loc_A48664: FLdRfVar var_9C
  loc_A48667: ILdRf var_94
  loc_A4866A: ILdRf var_94
  loc_A4866D: ILdRf var_8C
  loc_A48670: ImpAdCallNonVirt
  loc_A48676: ILdRf var_9C
  loc_A48679: FStR4 var_94
  loc_A4867C: ILdRf arg_1C
  loc_A4867F: ILdRf var_90
  loc_A48682: AndI4
  loc_A48683: CBoolI4
  loc_A48685: BranchF loc_A486AB
  loc_A48688: FLdRfVar var_9C
  loc_A4868B: ILdRf var_94
  loc_A4868E: ILdRf var_98
  loc_A48691: ILdRf var_8C
  loc_A48694: ImpAdCallNonVirt
  loc_A4869A: ILdRf var_9C
  loc_A4869D: FStR4 var_98
  loc_A486A0: ILdRf arg_1C
  loc_A486A3: ILdRf var_90
  loc_A486A6: XorI4
  loc_A486A8: FStR4 arg_1C
  loc_A486AB: Branch loc_A4864E
  loc_A486AE: FLdRfVar var_9C
  loc_A486B1: ILdRf var_98
  loc_A486B4: ILdRf var_8C
  loc_A486B7: ImpAdCallNonVirt
  loc_A486BD: ILdRf var_9C
  loc_A486C0: FStR4 var_98
  loc_A486C3: FLdPr Me
  loc_A486C6: MemLdRfVar from_stack_1.global_76
  loc_A486C9: PopTmpLdAdStr var_9C
  loc_A486CC: Erase
  loc_A486CD: ILdRf var_98
  loc_A486D0: LitI4 0
  loc_A486D5: FLdPr Me
  loc_A486D8: MemLdRfVar from_stack_1.global_76
  loc_A486DB: Ary1StI4
  loc_A486DC: LitI4 1
  loc_A486E1: LitI4 1
  loc_A486E6: FLdPr Me
  loc_A486E9: MemLdRfVar from_stack_1.global_76
  loc_A486EC: Ary1StI4
  loc_A486ED: LitI4 2
  loc_A486F2: FLdRfVar var_90
  loc_A486F5: ILdRf arg_10
  loc_A486F8: ForI4 var_A4
  loc_A486FE: FLdRfVar var_9C
  loc_A48701: ILdRf arg_18
  loc_A48704: ILdRf var_98
  loc_A48707: ILdRf var_8C
  loc_A4870A: ImpAdCallNonVirt
  loc_A48710: ILdRf var_9C
  loc_A48713: FStR4 var_98
  loc_A48716: LitI4 1
  loc_A4871B: ILdRf var_90
  loc_A4871E: FLdPr Me
  loc_A48721: MemLdRfVar from_stack_1.global_76
  loc_A48724: Ary1StI4
  loc_A48725: ILdRf var_90
  loc_A48728: LitI4 1
  loc_A4872D: SubI4
  loc_A4872E: FLdRfVar var_94
  loc_A48731: LitI4 1
  loc_A48736: LitI4 -1
  loc_A4873B: ForStepI4 var_AC
  loc_A48741: FLdRfVar var_9C
  loc_A48744: ILdRf var_98
  loc_A48747: ILdRf var_94
  loc_A4874A: FLdPr Me
  loc_A4874D: MemLdRfVar from_stack_1.global_76
  loc_A48750: Ary1LdI4
  loc_A48751: ILdRf var_8C
  loc_A48754: ImpAdCallNonVirt
  loc_A4875A: FLdRfVar var_B0
  loc_A4875D: ILdRf var_9C
  loc_A48760: ILdRf var_94
  loc_A48763: LitI4 1
  loc_A48768: SubI4
  loc_A48769: FLdPr Me
  loc_A4876C: MemLdRfVar from_stack_1.global_76
  loc_A4876F: Ary1LdI4
  loc_A48770: ILdRf var_8C
  loc_A48773: ImpAdCallNonVirt
  loc_A48779: ILdRf var_B0
  loc_A4877C: ILdRf var_94
  loc_A4877F: FLdPr Me
  loc_A48782: MemLdRfVar from_stack_1.global_76
  loc_A48785: Ary1StI4
  loc_A48786: FLdRfVar var_94
  loc_A48789: NextStepI4 var_AC, loc_A48741
  loc_A4878E: FLdRfVar var_9C
  loc_A48791: ILdRf var_98
  loc_A48794: LitI4 0
  loc_A48799: FLdPr Me
  loc_A4879C: MemLdRfVar from_stack_1.global_76
  loc_A4879F: Ary1LdI4
  loc_A487A0: ILdRf var_8C
  loc_A487A3: ImpAdCallNonVirt
  loc_A487A9: ILdRf var_9C
  loc_A487AC: LitI4 0
  loc_A487B1: FLdPr Me
  loc_A487B4: MemLdRfVar from_stack_1.global_76
  loc_A487B7: Ary1StI4
  loc_A487B8: FLdRfVar var_90
  loc_A487BB: NextI4 var_A4, loc_A486FE
  loc_A487C0: LitI2_Byte &HFF
  loc_A487C2: FStI2 var_86
  loc_A487C5: ExitProcCbHresult
End Function

Private Function Proc_280_9_9EBA88(arg_C) '9EBA88
  'Data Table: 402FC0
  loc_9EB978: FLdPr Me
  loc_9EB97B: MemLdStr global_56
  loc_9EB97E: LitI4 4
  loc_9EB983: MulI4
  loc_9EB984: FLdPr Me
  loc_9EB987: MemLdStr global_60
  loc_9EB98A: ILdI4 arg_C
  loc_9EB98D: AryLock
  loc_9EB990: Ary1LdRf
  loc_9EB991: FLdPr Me
  loc_9EB994: MemLdStr global_60
  loc_9EB997: FLdRfVar var_9C
  loc_9EB99A: Ary1LdRf
  loc_9EB99B: ImpAdCallFPR4 CopyMemory(, , )
  loc_9EB9A0: SetLastSystemError
  loc_9EB9A1: AryUnlock
  loc_9EB9A4: FLdPr Me
  loc_9EB9A7: MemLdStr global_56
  loc_9EB9AA: LitI4 1
  loc_9EB9AF: SubI4
  loc_9EB9B0: FLdRfVar var_A4
  loc_9EB9B3: LitI4 0
  loc_9EB9B8: LitI4 -1
  loc_9EB9BD: ForStepI4 var_B8
  loc_9EB9C3: ILdRf var_A4
  loc_9EB9C6: FLdPr Me
  loc_9EB9C9: MemLdStr global_60
  loc_9EB9CC: AddI4
  loc_9EB9CD: FLdRfVar var_9C
  loc_9EB9D0: Ary1LdI4
  loc_9EB9D1: FStR4 var_AC
  loc_9EB9D4: LitI4 0
  loc_9EB9D9: FLdRfVar var_A8
  loc_9EB9DC: FLdPr Me
  loc_9EB9DF: MemLdStr global_60
  loc_9EB9E2: LitI4 1
  loc_9EB9E7: SubI4
  loc_9EB9E8: ForI4 var_C0
  loc_9EB9EE: FLdRfVar var_C4
  loc_9EB9F1: ILdRf var_A8
  loc_9EB9F4: FLdPr Me
  loc_9EB9F7: MemLdRfVar from_stack_1.global_76
  loc_9EB9FA: Ary1LdI4
  loc_9EB9FB: ILdRf var_AC
  loc_9EB9FE: FLdPr Me
  loc_9EBA01: MemLdStr global_52
  loc_9EBA04: ImpAdCallNonVirt
  loc_9EBA0A: FLdRfVar var_C8
  loc_9EBA0D: ILdRf var_C4
  loc_9EBA10: ILdRf var_A4
  loc_9EBA13: ILdRf var_A8
  loc_9EBA16: AddI4
  loc_9EBA17: FLdRfVar var_9C
  loc_9EBA1A: Ary1LdI4
  loc_9EBA1B: FLdPr Me
  loc_9EBA1E: MemLdStr global_52
  loc_9EBA21: ImpAdCallNonVirt
  loc_9EBA27: ILdRf var_C8
  loc_9EBA2A: ILdRf var_A4
  loc_9EBA2D: ILdRf var_A8
  loc_9EBA30: AddI4
  loc_9EBA31: FLdRfVar var_9C
  loc_9EBA34: Ary1StI4
  loc_9EBA35: FLdRfVar var_A8
  loc_9EBA38: NextI4 var_C0, loc_9EB9EE
  loc_9EBA3D: FLdRfVar var_A4
  loc_9EBA40: NextStepI4 var_B8, loc_9EB9C3
  loc_9EBA45: LitI4 0
  loc_9EBA4A: FLdRfVar var_A4
  loc_9EBA4D: FLdPr Me
  loc_9EBA50: MemLdStr global_60
  loc_9EBA53: LitI4 1
  loc_9EBA58: SubI4
  loc_9EBA59: ForI4 var_D0
  loc_9EBA5F: FLdRfVar var_C4
  loc_9EBA62: ILdRf var_A4
  loc_9EBA65: FLdRfVar var_9C
  loc_9EBA68: Ary1LdI4
  loc_9EBA69: FLdPr Me
  loc_9EBA6C: MemLdStr global_52
  loc_9EBA6F: ImpAdCallNonVirt
  loc_9EBA75: ILdRf var_C4
  loc_9EBA78: ILdRf var_A4
  loc_9EBA7B: ILdI4 arg_C
  loc_9EBA7E: Ary1StI4
  loc_9EBA7F: FLdRfVar var_A4
  loc_9EBA82: NextI4 var_D0, loc_9EBA5F
  loc_9EBA87: ExitProcHresult
End Function
