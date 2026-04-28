VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsQRBase"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Private Type UDT_1_005E4164
  bStruc(12) As Byte ' String fields: 0
End Type


Private Function Proc_278_0_A9F484() 'A9F484
  'Data Table: 404C60
  loc_A9EFB4: FLdRfVar var_AA
  loc_A9EFB7: LitI4 2
  loc_A9EFBC: LitI4 &H11D
  loc_A9EFC1: LitI4 &H100
  loc_A9EFC6: FLdPr Me
  loc_A9EFC9: MemLdRfVar from_stack_1.global_52
  loc_A9EFCC: NewIfNullAd
  loc_A9EFCF: ImpAdCallNonVirt
  loc_A9EFD5: LitI4 1
  loc_A9EFDA: FLdRfVar var_88
  loc_A9EFDD: LitI4 6
  loc_A9EFE2: ForI4 var_B4
  loc_A9EFE8: LitI2 255
  loc_A9EFEB: CUI1I2
  loc_A9EFED: ILdRf var_88
  loc_A9EFF0: FLdPr Me
  loc_A9EFF3: MemLdRfVar from_stack_1.global_64
  loc_A9EFF6: Ary1StUI1
  loc_A9EFF8: FLdRfVar var_88
  loc_A9EFFB: NextI4 var_B4, loc_A9EFE8
  loc_A9F000: LitI4 7
  loc_A9F005: FLdRfVar var_88
  loc_A9F008: LitI4 &HD
  loc_A9F00D: ForI4 var_BC
  loc_A9F013: ILdRf var_88
  loc_A9F016: LitI4 2
  loc_A9F01B: MulI4
  loc_A9F01C: LitI4 2
  loc_A9F021: AddI4
  loc_A9F022: CUI1I4
  loc_A9F024: ILdRf var_88
  loc_A9F027: FLdPr Me
  loc_A9F02A: MemLdRfVar from_stack_1.global_64
  loc_A9F02D: Ary1StUI1
  loc_A9F02F: FLdRfVar var_88
  loc_A9F032: NextI4 var_BC, loc_A9F013
  loc_A9F037: LitI4 &HE
  loc_A9F03C: FLdRfVar var_88
  loc_A9F03F: LitI4 &H14
  loc_A9F044: ForI4 var_C4
  loc_A9F04A: ILdRf var_88
  loc_A9F04D: LitI4 2
  loc_A9F052: MulI4
  loc_A9F053: LitI4 4
  loc_A9F058: AddI4
  loc_A9F059: LitI4 3
  loc_A9F05E: IDvI4
  loc_A9F05F: LitI4 2
  loc_A9F064: MulI4
  loc_A9F065: CUI1I4
  loc_A9F067: ILdRf var_88
  loc_A9F06A: FLdPr Me
  loc_A9F06D: MemLdRfVar from_stack_1.global_64
  loc_A9F070: Ary1StUI1
  loc_A9F072: FLdRfVar var_88
  loc_A9F075: NextI4 var_C4, loc_A9F04A
  loc_A9F07A: LitI4 &H15
  loc_A9F07F: FLdRfVar var_88
  loc_A9F082: LitI4 &H1B
  loc_A9F087: ForI4 var_CC
  loc_A9F08D: ILdRf var_88
  loc_A9F090: LitI4 2
  loc_A9F095: AddI4
  loc_A9F096: LitI4 -2
  loc_A9F09B: AndI4
  loc_A9F09C: CUI1I4
  loc_A9F09E: ILdRf var_88
  loc_A9F0A1: FLdPr Me
  loc_A9F0A4: MemLdRfVar from_stack_1.global_64
  loc_A9F0A7: Ary1StUI1
  loc_A9F0A9: FLdRfVar var_88
  loc_A9F0AC: NextI4 var_CC, loc_A9F08D
  loc_A9F0B1: LitI4 &H1C
  loc_A9F0B6: FLdRfVar var_88
  loc_A9F0B9: LitI4 &H22
  loc_A9F0BE: ForI4 var_D4
  loc_A9F0C4: ILdRf var_88
  loc_A9F0C7: LitI4 3
  loc_A9F0CC: IDvI4
  loc_A9F0CD: LitI4 2
  loc_A9F0D2: MulI4
  loc_A9F0D3: LitI4 6
  loc_A9F0D8: AddI4
  loc_A9F0D9: CUI1I4
  loc_A9F0DB: ILdRf var_88
  loc_A9F0DE: FLdPr Me
  loc_A9F0E1: MemLdRfVar from_stack_1.global_64
  loc_A9F0E4: Ary1StUI1
  loc_A9F0E6: FLdRfVar var_88
  loc_A9F0E9: NextI4 var_D4, loc_A9F0C4
  loc_A9F0EE: LitI4 &H23
  loc_A9F0F3: FLdRfVar var_88
  loc_A9F0F6: LitI4 &H28
  loc_A9F0FB: ForI4 var_DC
  loc_A9F101: ILdRf var_88
  loc_A9F104: LitI4 3
  loc_A9F109: IDvI4
  loc_A9F10A: LitI4 2
  loc_A9F10F: MulI4
  loc_A9F110: LitI4 2
  loc_A9F115: AddI4
  loc_A9F116: CUI1I4
  loc_A9F118: ILdRf var_88
  loc_A9F11B: FLdPr Me
  loc_A9F11E: MemLdRfVar from_stack_1.global_64
  loc_A9F121: Ary1StUI1
  loc_A9F123: FLdRfVar var_88
  loc_A9F126: NextI4 var_DC, loc_A9F101
  loc_A9F12B: LitCy 7.74860418548935E-304
  loc_A9F134: LitI4 0
  loc_A9F139: FLdRfVar var_A4
  loc_A9F13C: Ary1StCy
  loc_A9F13D: LitCy 2.30980600745644E-289
  loc_A9F146: LitI4 1
  loc_A9F14B: FLdRfVar var_A4
  loc_A9F14E: Ary1StCy
  loc_A9F14F: LitCy 2.5673436142637E-289
  loc_A9F158: LitI4 2
  loc_A9F15D: FLdRfVar var_A4
  loc_A9F160: Ary1StCy
  loc_A9F161: LitCy 1.21284601018762E-279
  loc_A9F16A: LitI4 3
  loc_A9F16F: FLdRfVar var_A4
  loc_A9F172: Ary1StCy
  loc_A9F173: LitCy 5.68328634602419E-270
  loc_A9F17C: LitI4 4
  loc_A9F181: FLdRfVar var_A4
  loc_A9F184: Ary1StCy
  loc_A9F185: LitCy 1.73368320619663E-255
  loc_A9F18E: LitI4 5
  loc_A9F193: FLdRfVar var_A4
  loc_A9F196: Ary1StCy
  loc_A9F197: LitCy 2.58213065618285E-231
  loc_A9F1A0: LitI4 6
  loc_A9F1A5: FLdRfVar var_A4
  loc_A9F1A8: Ary1StCy
  loc_A9F1A9: LitCy 2.7437933272601E-231
  loc_A9F1B2: LitI4 7
  loc_A9F1B7: FLdRfVar var_A4
  loc_A9F1BA: Ary1StCy
  loc_A9F1BB: LitCy 3.51399569506407E-207
  loc_A9F1C4: LitI4 8
  loc_A9F1C9: FLdRfVar var_A4
  loc_A9F1CC: Ary1StCy
  loc_A9F1CD: LitCy 7.20460937562168E-188
  loc_A9F1D6: LitI4 9
  loc_A9F1DB: FLdRfVar var_A4
  loc_A9F1DE: Ary1StCy
  loc_A9F1DF: LitCy 1.84724559832449E-144
  loc_A9F1E8: LitI4 &HA
  loc_A9F1ED: FLdRfVar var_A4
  loc_A9F1F0: Ary1StCy
  loc_A9F1F1: LitCy 5.04897585111496E-154
  loc_A9F1FA: LitI4 &HB
  loc_A9F1FF: FLdRfVar var_A4
  loc_A9F202: Ary1StCy
  loc_A9F203: LitCy 8.15551027713504E-130
  loc_A9F20C: LitI4 &HC
  loc_A9F211: FLdRfVar var_A4
  loc_A9F214: Ary1StCy
  loc_A9F215: LitCy 1.04108212248346E-105
  loc_A9F21E: LitI4 &HD
  loc_A9F223: FLdRfVar var_A4
  loc_A9F226: Ary1StCy
  loc_A9F227: LitCy 1.04124180597076E-76
  loc_A9F230: LitI4 &HE
  loc_A9F235: FLdRfVar var_A4
  loc_A9F238: Ary1StCy
  loc_A9F239: LitCy 9.96549300912473E-48
  loc_A9F242: LitI4 &HF
  loc_A9F247: FLdRfVar var_A4
  loc_A9F24A: Ary1StCy
  loc_A9F24B: LitCy 1.03784301983948E-18
  loc_A9F254: LitI4 &H10
  loc_A9F259: FLdRfVar var_A4
  loc_A9F25C: Ary1StCy
  loc_A9F25D: LitCy 103751630645.149
  loc_A9F266: LitI4 &H11
  loc_A9F26B: FLdRfVar var_A4
  loc_A9F26E: Ary1StCy
  loc_A9F26F: LitCy 4.41024504390025E49
  loc_A9F278: LitI4 &H12
  loc_A9F27D: FLdRfVar var_A4
  loc_A9F280: Ary1StCy
  loc_A9F281: LitCy 3.06452865836037E83
  loc_A9F28A: LitI4 &H13
  loc_A9F28F: FLdRfVar var_A4
  loc_A9F292: Ary1StCy
  loc_A9F293: LitI4 &HA0
  loc_A9F298: LitI4 0
  loc_A9F29D: FLdRfVar var_A4
  loc_A9F2A0: Ary1LdRf
  loc_A9F2A1: LitI4 1
  loc_A9F2A6: LitI4 1
  loc_A9F2AB: FLdPr Me
  loc_A9F2AE: MemLdRfVar from_stack_1.global_92
  loc_A9F2B1: AryLdRf
  loc_A9F2B4: ImpAdCallFPR4 CopyMemory(, , )
  loc_A9F2B9: SetLastSystemError
  loc_A9F2BA: LitCy 2.23007902312048E-173
  loc_A9F2C3: LitI4 0
  loc_A9F2C8: FLdRfVar var_A4
  loc_A9F2CB: Ary1StCy
  loc_A9F2CC: LitCy 4.19811838596088E-231
  loc_A9F2D5: LitI4 1
  loc_A9F2DA: FLdRfVar var_A4
  loc_A9F2DD: Ary1StCy
  loc_A9F2DE: LitCy 2.43225012275077E-173
  loc_A9F2E7: LitI4 2
  loc_A9F2EC: FLdRfVar var_A4
  loc_A9F2EF: Ary1StCy
  loc_A9F2F0: LitCy 5.19787361372326E-183
  loc_A9F2F9: LitI4 3
  loc_A9F2FE: FLdRfVar var_A4
  loc_A9F301: Ary1StCy
  loc_A9F302: LitCy 2.43619854755424E-173
  loc_A9F30B: LitI4 4
  loc_A9F310: FLdRfVar var_A4
  loc_A9F313: Ary1StCy
  loc_A9F314: LitCy 2.63678716735034E-173
  loc_A9F31D: LitI4 5
  loc_A9F322: FLdRfVar var_A4
  loc_A9F325: Ary1StCy
  loc_A9F326: LitCy 1.10106688309373E-192
  loc_A9F32F: LitI4 6
  loc_A9F334: FLdRfVar var_A4
  loc_A9F337: Ary1StCy
  loc_A9F338: LitCy 1.04668244960329E-163
  loc_A9F341: LitI4 7
  loc_A9F346: FLdRfVar var_A4
  loc_A9F349: Ary1StCy
  loc_A9F34A: LitCy 2.84053454122204E-173
  loc_A9F353: LitI4 8
  loc_A9F358: FLdRfVar var_A4
  loc_A9F35B: Ary1StCy
  loc_A9F35C: LitCy 3.04269017502537E-173
  loc_A9F365: LitI4 9
  loc_A9F36A: FLdRfVar var_A4
  loc_A9F36D: Ary1StCy
  loc_A9F36E: LitCy 1.6498737498346E-192
  loc_A9F377: LitI4 &HA
  loc_A9F37C: FLdRfVar var_A4
  loc_A9F37F: Ary1StCy
  loc_A9F380: LitCy 1.3071659806869E-163
  loc_A9F389: LitI4 &HB
  loc_A9F38E: FLdRfVar var_A4
  loc_A9F391: Ary1StCy
  loc_A9F392: LitCy 1.22033814216768E-163
  loc_A9F39B: LitI4 &HC
  loc_A9F3A0: FLdRfVar var_A4
  loc_A9F3A3: Ary1StCy
  loc_A9F3A4: LitCy 1.3071659806869E-163
  loc_A9F3AD: LitI4 &HD
  loc_A9F3B2: FLdRfVar var_A4
  loc_A9F3B5: Ary1StCy
  loc_A9F3B6: LitCy 1.3071659806869E-163
  loc_A9F3BF: LitI4 &HE
  loc_A9F3C4: FLdRfVar var_A4
  loc_A9F3C7: Ary1StCy
  loc_A9F3C8: LitCy 1.3071659806869E-163
  loc_A9F3D1: LitI4 &HF
  loc_A9F3D6: FLdRfVar var_A4
  loc_A9F3D9: Ary1StCy
  loc_A9F3DA: LitCy 1.3071659806869E-163
  loc_A9F3E3: LitI4 &H10
  loc_A9F3E8: FLdRfVar var_A4
  loc_A9F3EB: Ary1StCy
  loc_A9F3EC: LitCy 1.3071659806869E-163
  loc_A9F3F5: LitI4 &H11
  loc_A9F3FA: FLdRfVar var_A4
  loc_A9F3FD: Ary1StCy
  loc_A9F3FE: LitCy 1.3071659806869E-163
  loc_A9F407: LitI4 &H12
  loc_A9F40C: FLdRfVar var_A4
  loc_A9F40F: Ary1StCy
  loc_A9F410: LitCy 1.3071659806869E-163
  loc_A9F419: LitI4 &H13
  loc_A9F41E: FLdRfVar var_A4
  loc_A9F421: Ary1StCy
  loc_A9F422: LitI4 &HA0
  loc_A9F427: LitI4 0
  loc_A9F42C: FLdRfVar var_A4
  loc_A9F42F: Ary1LdRf
  loc_A9F430: LitI4 1
  loc_A9F435: LitI4 1
  loc_A9F43A: FLdPr Me
  loc_A9F43D: MemLdRfVar from_stack_1.global_128
  loc_A9F440: AryLdRf
  loc_A9F443: ImpAdCallFPR4 CopyMemory(, , )
  loc_A9F448: SetLastSystemError
  loc_A9F449: LitI4 1
  loc_A9F44E: FStR4 var_8C
  loc_A9F451: LitI4 0
  loc_A9F456: FLdRfVar var_88
  loc_A9F459: LitI4 &H11
  loc_A9F45E: ForI4 var_E4
  loc_A9F464: ILdRf var_8C
  loc_A9F467: ILdRf var_88
  loc_A9F46A: FLdPr Me
  loc_A9F46D: MemLdRfVar from_stack_1.global_164
  loc_A9F470: Ary1StI4
  loc_A9F471: ILdRf var_8C
  loc_A9F474: ILdRf var_8C
  loc_A9F477: AddI4
  loc_A9F478: FStR4 var_8C
  loc_A9F47B: FLdRfVar var_88
  loc_A9F47E: NextI4 var_E4, loc_A9F464
  loc_A9F483: ExitProcHresult
End Function

Private Function Proc_278_1_9C1D80(arg_C) '9C1D80
  'Data Table: 404C60
  loc_9C1CA8: FLdRfVar var_94
  loc_9C1CAB: ILdRf arg_C
  loc_9C1CAE: ILdRf Me
  loc_9C1CB1: ImpAdCallNonVirt
  loc_9C1CB7: ILdRf var_94
  loc_9C1CBA: FStR4 var_8C
  loc_9C1CBD: ILdRf arg_C
  loc_9C1CC0: FStR4 var_98
  loc_9C1CC3: ILdRf var_98
  loc_9C1CC6: LitI4 -4
  loc_9C1CCB: LitI4 -1
  loc_9C1CD0: BetweenI4
  loc_9C1CD2: BranchF loc_9C1CF2
  loc_9C1CD5: ILdRf var_8C
  loc_9C1CD8: ILdRf var_8C
  loc_9C1CDB: MulI4
  loc_9C1CDC: LitI4 &H51
  loc_9C1CE1: SubI4
  loc_9C1CE2: LitI4 4
  loc_9C1CE7: ILdRf arg_C
  loc_9C1CEA: MulI4
  loc_9C1CEB: AddI4
  loc_9C1CEC: FStR4 var_88
  loc_9C1CEF: Branch loc_9C1D79
  loc_9C1CF2: ILdRf var_98
  loc_9C1CF5: LitI4 1
  loc_9C1CFA: LitI4 &H28
  loc_9C1CFF: BetweenI4
  loc_9C1D01: BranchF loc_9C1D79
  loc_9C1D04: ILdRf var_8C
  loc_9C1D07: ILdRf var_8C
  loc_9C1D0A: LitI4 2
  loc_9C1D0F: SubI4
  loc_9C1D10: MulI4
  loc_9C1D11: LitI4 &HBF
  loc_9C1D16: SubI4
  loc_9C1D17: FStR4 var_8C
  loc_9C1D1A: FLdRfVar var_94
  loc_9C1D1D: ILdRf arg_C
  loc_9C1D20: ILdRf Me
  loc_9C1D23: ImpAdCallNonVirt
  loc_9C1D29: ILdRf var_94
  loc_9C1D2C: FStR4 var_90
  loc_9C1D2F: ILdRf var_90
  loc_9C1D32: LitI4 2
  loc_9C1D37: GeI4
  loc_9C1D38: BranchF loc_9C1D73
  loc_9C1D3B: ILdRf var_8C
  loc_9C1D3E: ILdRf var_90
  loc_9C1D41: LitI4 &HA
  loc_9C1D46: ILdRf var_90
  loc_9C1D49: LitI4 &H19
  loc_9C1D4E: MulI4
  loc_9C1D4F: SubI4
  loc_9C1D50: MulI4
  loc_9C1D51: AddI4
  loc_9C1D52: LitI4 &H37
  loc_9C1D57: AddI4
  loc_9C1D58: FStR4 var_8C
  loc_9C1D5B: ILdRf var_90
  loc_9C1D5E: LitI4 2
  loc_9C1D63: GtI4
  loc_9C1D64: BranchF loc_9C1D73
  loc_9C1D67: ILdRf var_8C
  loc_9C1D6A: LitI4 &H24
  loc_9C1D6F: SubI4
  loc_9C1D70: FStR4 var_8C
  loc_9C1D73: ILdRf var_8C
  loc_9C1D76: FStR4 var_88
  loc_9C1D79: ExitProcCbHresult
End Function

Private Function Proc_278_2_999430(arg_C) '999430
  'Data Table: 404C60
  loc_9993C0: ILdRf arg_C
  loc_9993C3: FStR4 var_8C
  loc_9993C6: ILdRf var_8C
  loc_9993C9: LitI4 -4
  loc_9993CE: LitI4 -1
  loc_9993D3: BetweenI4
  loc_9993D5: BranchF loc_9993FC
  loc_9993D8: FLdRfVar var_90
  loc_9993DB: ILdRf arg_C
  loc_9993DE: ILdRf Me
  loc_9993E1: ImpAdCallNonVirt
  loc_9993E7: ILdRf var_90
  loc_9993EA: LitI4 4
  loc_9993EF: AddI4
  loc_9993F0: LitI4 8
  loc_9993F5: IDvI4
  loc_9993F6: FStR4 var_88
  loc_9993F9: Branch loc_999429
  loc_9993FC: ILdRf var_8C
  loc_9993FF: LitI4 1
  loc_999404: LitI4 &H28
  loc_999409: BetweenI4
  loc_99940B: BranchF loc_999429
  loc_99940E: FLdRfVar var_90
  loc_999411: ILdRf arg_C
  loc_999414: ILdRf Me
  loc_999417: ImpAdCallNonVirt
  loc_99941D: ILdRf var_90
  loc_999420: LitI4 8
  loc_999425: IDvI4
  loc_999426: FStR4 var_88
  loc_999429: ExitProcCbHresult
End Function

Private Function Proc_278_3_991EB4(arg_C) '991EB4
  'Data Table: 404C60
  loc_991E5C: ILdRf arg_C
  loc_991E5F: FStR4 var_8C
  loc_991E62: ILdRf var_8C
  loc_991E65: LitI4 -4
  loc_991E6A: LitI4 -1
  loc_991E6F: BetweenI4
  loc_991E71: BranchF loc_991E89
  loc_991E74: LitI4 9
  loc_991E79: LitI4 2
  loc_991E7E: ILdRf arg_C
  loc_991E81: MulI4
  loc_991E82: SubI4
  loc_991E83: FStR4 var_88
  loc_991E86: Branch loc_991EAD
  loc_991E89: ILdRf var_8C
  loc_991E8C: LitI4 1
  loc_991E91: LitI4 &H28
  loc_991E96: BetweenI4
  loc_991E98: BranchF loc_991EAD
  loc_991E9B: LitI4 &H11
  loc_991EA0: LitI4 4
  loc_991EA5: ILdRf arg_C
  loc_991EA8: MulI4
  loc_991EA9: AddI4
  loc_991EAA: FStR4 var_88
  loc_991EAD: ExitProcCbHresult
End Function

Private Function Proc_278_4_9751BC(arg_C) '9751BC
  'Data Table: 404C60
  loc_97518C: ILdRf arg_C
  loc_97518F: LitI4 2
  loc_975194: LtI4
  loc_975195: BranchF loc_9751A3
  loc_975198: LitI4 1
  loc_97519D: FStR4 var_88
  loc_9751A0: Branch loc_9751B5
  loc_9751A3: LitI4 2
  loc_9751A8: ILdRf arg_C
  loc_9751AB: LitI4 7
  loc_9751B0: IDvI4
  loc_9751B1: AddI4
  loc_9751B2: FStR4 var_88
  loc_9751B5: ExitProcCbHresult
End Function

Private Function Proc_278_5_9850E8(arg_C) '9850E8
  'Data Table: 404C60
  loc_9850A4: FLdRfVar var_90
  loc_9850A7: ILdRf arg_C
  loc_9850AA: ILdRf Me
  loc_9850AD: ImpAdCallNonVirt
  loc_9850B3: ILdRf var_90
  loc_9850B6: FStR4 var_8C
  loc_9850B9: ILdRf var_8C
  loc_9850BC: LitI4 2
  loc_9850C1: LtI4
  loc_9850C2: BranchF loc_9850D0
  loc_9850C5: LitI4 0
  loc_9850CA: FStR4 var_88
  loc_9850CD: Branch loc_9850E0
  loc_9850D0: ILdRf var_8C
  loc_9850D3: ILdRf var_8C
  loc_9850D6: MulI4
  loc_9850D7: LitI4 3
  loc_9850DC: SubI4
  loc_9850DD: FStR4 var_88
  loc_9850E0: ExitProcCbHresult
  loc_9850E6: BranchF loc_9938A4
End Function

Private Function Proc_278_6_AEDF84(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) 'AEDF84
  'Data Table: 404C60
  loc_AED840: ILdRf arg_1C
  loc_AED843: LitI4 0
  loc_AED848: LeI4
  loc_AED849: ILdRf arg_1C
  loc_AED84C: LitI4 4
  loc_AED851: GtI4
  loc_AED852: OrI4
  loc_AED853: BranchF loc_AED85E
  loc_AED856: LitI4 2
  loc_AED85B: FStR4 arg_1C
  loc_AED85E: LitI4 0
  loc_AED863: LitI4 &H7FFF
  loc_AED868: FLdRfVar var_8C
  loc_AED86B: Redim
  loc_AED875: ILdRf arg_18
  loc_AED878: LitI4 0
  loc_AED87D: LeI4
  loc_AED87E: ILdRf arg_18
  loc_AED881: LitI4 &H28
  loc_AED886: GtI4
  loc_AED887: OrI4
  loc_AED888: BranchF loc_AEDBBF
  loc_AED88B: ILdRf arg_24
  loc_AED88E: LitI4 0
  loc_AED893: LeI4
  loc_AED894: ILdRf arg_24
  loc_AED897: LitI4 &H10
  loc_AED89C: GtI4
  loc_AED89D: OrI4
  loc_AED89E: BranchF loc_AED8A7
  loc_AED8A1: ExitProcCbHresult
  loc_AED8A7: FLdRfVar var_AC
  loc_AED8AA: LitI4 0
  loc_AED8AF: LitI4 0
  loc_AED8B4: PopTmpLdAdStr var_A8
  loc_AED8B7: LitI4 0
  loc_AED8BC: LitI4 0
  loc_AED8C1: LitI2_Byte &HFF
  loc_AED8C3: LitI4 1
  loc_AED8C8: ILdRf arg_10
  loc_AED8CB: ILdRf arg_C
  loc_AED8CE: FLdRfVar var_8C
  loc_AED8D1: ILdRf Me
  loc_AED8D4: ImpAdCallNonVirt
  loc_AED8DA: ILdRf var_AC
  loc_AED8DD: LitI4 4
  loc_AED8E2: SubI4
  loc_AED8E3: ILdRf arg_24
  loc_AED8E6: IDvI4
  loc_AED8E7: FStR4 var_90
  loc_AED8EA: LitI4 1
  loc_AED8EF: FLdRfVar arg_18
  loc_AED8F2: LitI4 9
  loc_AED8F7: ForI4 var_B4
  loc_AED8FD: FLdRfVar var_A8
  loc_AED900: ILdRf arg_18
  loc_AED903: ILdRf Me
  loc_AED906: ImpAdCallNonVirt
  loc_AED90C: ILdRf var_A8
  loc_AED90F: ILdRf arg_1C
  loc_AED912: ILdRf arg_18
  loc_AED915: FLdPr Me
  loc_AED918: MemLdRfVar from_stack_1.global_92
  loc_AED91B: AryLdPr
  loc_AED91E: MemLdUI1 global_0
  loc_AED922: CI4UI1
  loc_AED923: ILdRf arg_1C
  loc_AED926: ILdRf arg_18
  loc_AED929: FLdPr Me
  loc_AED92C: MemLdRfVar from_stack_1.global_128
  loc_AED92F: AryLdPr
  loc_AED932: MemLdUI1 global_0
  loc_AED936: CI4UI1
  loc_AED937: MulI4
  loc_AED938: SubI4
  loc_AED939: FStR4 var_94
  loc_AED93C: ILdRf var_90
  loc_AED93F: LitI4 &H14
  loc_AED944: AddI4
  loc_AED945: ILdRf var_94
  loc_AED948: LitI4 8
  loc_AED94D: MulI4
  loc_AED94E: LeI4
  loc_AED94F: BranchF loc_AED955
  loc_AED952: Branch loc_AEDAD2
  loc_AED955: FLdRfVar arg_18
  loc_AED958: NextI4 var_B4, loc_AED8FD
  loc_AED95D: FLdRfVar var_AC
  loc_AED960: LitI4 0
  loc_AED965: LitI4 0
  loc_AED96A: PopTmpLdAdStr var_A8
  loc_AED96D: LitI4 0
  loc_AED972: LitI4 0
  loc_AED977: LitI2_Byte &HFF
  loc_AED979: LitI4 &HA
  loc_AED97E: ILdRf arg_10
  loc_AED981: ILdRf arg_C
  loc_AED984: FLdRfVar var_8C
  loc_AED987: ILdRf Me
  loc_AED98A: ImpAdCallNonVirt
  loc_AED990: ILdRf var_AC
  loc_AED993: LitI4 4
  loc_AED998: SubI4
  loc_AED999: ILdRf arg_24
  loc_AED99C: IDvI4
  loc_AED99D: FStR4 var_90
  loc_AED9A0: LitI4 &HA
  loc_AED9A5: FLdRfVar arg_18
  loc_AED9A8: LitI4 &H1A
  loc_AED9AD: ForI4 var_BC
  loc_AED9B3: FLdRfVar var_A8
  loc_AED9B6: ILdRf arg_18
  loc_AED9B9: ILdRf Me
  loc_AED9BC: ImpAdCallNonVirt
  loc_AED9C2: ILdRf var_A8
  loc_AED9C5: ILdRf arg_1C
  loc_AED9C8: ILdRf arg_18
  loc_AED9CB: FLdPr Me
  loc_AED9CE: MemLdRfVar from_stack_1.global_92
  loc_AED9D1: AryLdPr
  loc_AED9D4: MemLdUI1 global_0
  loc_AED9D8: CI4UI1
  loc_AED9D9: ILdRf arg_1C
  loc_AED9DC: ILdRf arg_18
  loc_AED9DF: FLdPr Me
  loc_AED9E2: MemLdRfVar from_stack_1.global_128
  loc_AED9E5: AryLdPr
  loc_AED9E8: MemLdUI1 global_0
  loc_AED9EC: CI4UI1
  loc_AED9ED: MulI4
  loc_AED9EE: SubI4
  loc_AED9EF: FStR4 var_94
  loc_AED9F2: ILdRf var_90
  loc_AED9F5: LitI4 &H14
  loc_AED9FA: AddI4
  loc_AED9FB: ILdRf var_94
  loc_AED9FE: LitI4 8
  loc_AEDA03: MulI4
  loc_AEDA04: LeI4
  loc_AEDA05: BranchF loc_AEDA0B
  loc_AEDA08: Branch loc_AEDAD2
  loc_AEDA0B: FLdRfVar arg_18
  loc_AEDA0E: NextI4 var_BC, loc_AED9B3
  loc_AEDA13: FLdRfVar var_AC
  loc_AEDA16: LitI4 0
  loc_AEDA1B: LitI4 0
  loc_AEDA20: PopTmpLdAdStr var_A8
  loc_AEDA23: LitI4 0
  loc_AEDA28: LitI4 0
  loc_AEDA2D: LitI2_Byte &HFF
  loc_AEDA2F: LitI4 &H1B
  loc_AEDA34: ILdRf arg_10
  loc_AEDA37: ILdRf arg_C
  loc_AEDA3A: FLdRfVar var_8C
  loc_AEDA3D: ILdRf Me
  loc_AEDA40: ImpAdCallNonVirt
  loc_AEDA46: ILdRf var_AC
  loc_AEDA49: LitI4 4
  loc_AEDA4E: SubI4
  loc_AEDA4F: ILdRf arg_24
  loc_AEDA52: IDvI4
  loc_AEDA53: FStR4 var_90
  loc_AEDA56: LitI4 &H1B
  loc_AEDA5B: FLdRfVar arg_18
  loc_AEDA5E: LitI4 &H28
  loc_AEDA63: ForI4 var_C4
  loc_AEDA69: FLdRfVar var_A8
  loc_AEDA6C: ILdRf arg_18
  loc_AEDA6F: ILdRf Me
  loc_AEDA72: ImpAdCallNonVirt
  loc_AEDA78: ILdRf var_A8
  loc_AEDA7B: ILdRf arg_1C
  loc_AEDA7E: ILdRf arg_18
  loc_AEDA81: FLdPr Me
  loc_AEDA84: MemLdRfVar from_stack_1.global_92
  loc_AEDA87: AryLdPr
  loc_AEDA8A: MemLdUI1 global_0
  loc_AEDA8E: CI4UI1
  loc_AEDA8F: ILdRf arg_1C
  loc_AEDA92: ILdRf arg_18
  loc_AEDA95: FLdPr Me
  loc_AEDA98: MemLdRfVar from_stack_1.global_128
  loc_AEDA9B: AryLdPr
  loc_AEDA9E: MemLdUI1 global_0
  loc_AEDAA2: CI4UI1
  loc_AEDAA3: MulI4
  loc_AEDAA4: SubI4
  loc_AEDAA5: FStR4 var_94
  loc_AEDAA8: ILdRf var_90
  loc_AEDAAB: LitI4 &H14
  loc_AEDAB0: AddI4
  loc_AEDAB1: ILdRf var_94
  loc_AEDAB4: LitI4 8
  loc_AEDAB9: MulI4
  loc_AEDABA: LeI4
  loc_AEDABB: BranchF loc_AEDAC1
  loc_AEDABE: Branch loc_AEDAD2
  loc_AEDAC1: FLdRfVar arg_18
  loc_AEDAC4: NextI4 var_C4, loc_AEDA69
  loc_AEDAC9: ExitProcCbHresult
  loc_AEDACF: Branch loc_AED8A7
  loc_AEDAD2: FLdRfVar var_A8
  loc_AEDAD5: ILdRf arg_18
  loc_AEDAD8: ILdRf Me
  loc_AEDADB: ImpAdCallNonVirt
  loc_AEDAE1: ILdRf var_A8
  loc_AEDAE4: ILdRf arg_1C
  loc_AEDAE7: ILdRf arg_18
  loc_AEDAEA: FLdPr Me
  loc_AEDAED: MemLdRfVar from_stack_1.global_92
  loc_AEDAF0: AryLdPr
  loc_AEDAF3: MemLdUI1 global_0
  loc_AEDAF7: CI4UI1
  loc_AEDAF8: ILdRf arg_1C
  loc_AEDAFB: ILdRf arg_18
  loc_AEDAFE: FLdPr Me
  loc_AEDB01: MemLdRfVar from_stack_1.global_128
  loc_AEDB04: AryLdPr
  loc_AEDB07: MemLdUI1 global_0
  loc_AEDB0B: CI4UI1
  loc_AEDB0C: MulI4
  loc_AEDB0D: SubI4
  loc_AEDB0E: FStR4 var_94
  loc_AEDB11: LitI4 0
  loc_AEDB16: FStR4 var_A0
  loc_AEDB19: LitI4 0
  loc_AEDB1E: FLdRfVar var_98
  loc_AEDB21: ILdRf arg_24
  loc_AEDB24: LitI4 1
  loc_AEDB29: SubI4
  loc_AEDB2A: ForI4 var_CC
  loc_AEDB30: LitI4 0
  loc_AEDB35: FStR4 var_9C
  loc_AEDB38: FLdRfVar var_A8
  loc_AEDB3B: LitI4 0
  loc_AEDB40: FLdRfVar var_9C
  loc_AEDB43: ILdRf var_94
  loc_AEDB46: LitI4 8
  loc_AEDB4B: MulI4
  loc_AEDB4C: LitI4 &H14
  loc_AEDB51: SubI4
  loc_AEDB52: ILdRf var_A0
  loc_AEDB55: LitI2_Byte &HFF
  loc_AEDB57: ILdRf arg_18
  loc_AEDB5A: ILdRf arg_10
  loc_AEDB5D: ILdRf var_A0
  loc_AEDB60: SubI4
  loc_AEDB61: ILdRf arg_C
  loc_AEDB64: FLdRfVar var_8C
  loc_AEDB67: ILdRf Me
  loc_AEDB6A: ImpAdCallNonVirt
  loc_AEDB70: ILdRf var_A0
  loc_AEDB73: ILdRf var_9C
  loc_AEDB76: AddI4
  loc_AEDB77: FStR4 var_A0
  loc_AEDB7A: ILdRf var_A0
  loc_AEDB7D: ILdRf arg_10
  loc_AEDB80: GeI4
  loc_AEDB81: BranchF loc_AEDB93
  loc_AEDB84: ILdRf var_98
  loc_AEDB87: LitI4 1
  loc_AEDB8C: AddI4
  loc_AEDB8D: FStR4 arg_24
  loc_AEDB90: Branch loc_AEDBBC
  loc_AEDB93: FLdRfVar var_98
  loc_AEDB96: NextI4 var_CC, loc_AEDB30
  loc_AEDB9B: ILdRf arg_18
  loc_AEDB9E: LitI4 1
  loc_AEDBA3: AddI4
  loc_AEDBA4: FStR4 arg_18
  loc_AEDBA7: ILdRf arg_18
  loc_AEDBAA: LitI4 &H28
  loc_AEDBAF: GtI4
  loc_AEDBB0: BranchF loc_AEDBB9
  loc_AEDBB3: ExitProcCbHresult
  loc_AEDBB9: Branch loc_AEDAD2
  loc_AEDBBC: Branch loc_AEDC82
  loc_AEDBBF: FLdRfVar var_A8
  loc_AEDBC2: ILdRf arg_18
  loc_AEDBC5: ILdRf Me
  loc_AEDBC8: ImpAdCallNonVirt
  loc_AEDBCE: ILdRf var_A8
  loc_AEDBD1: ILdRf arg_1C
  loc_AEDBD4: ILdRf arg_18
  loc_AEDBD7: FLdPr Me
  loc_AEDBDA: MemLdRfVar from_stack_1.global_92
  loc_AEDBDD: AryLdPr
  loc_AEDBE0: MemLdUI1 global_0
  loc_AEDBE4: CI4UI1
  loc_AEDBE5: ILdRf arg_1C
  loc_AEDBE8: ILdRf arg_18
  loc_AEDBEB: FLdPr Me
  loc_AEDBEE: MemLdRfVar from_stack_1.global_128
  loc_AEDBF1: AryLdPr
  loc_AEDBF4: MemLdUI1 global_0
  loc_AEDBF8: CI4UI1
  loc_AEDBF9: MulI4
  loc_AEDBFA: SubI4
  loc_AEDBFB: FStR4 var_94
  loc_AEDBFE: LitI4 1
  loc_AEDC03: FLdRfVar arg_24
  loc_AEDC06: LitI4 &H10
  loc_AEDC0B: ForI4 var_D4
  loc_AEDC11: LitI4 0
  loc_AEDC16: FStR4 var_9C
  loc_AEDC19: FLdRfVar var_A8
  loc_AEDC1C: LitI4 0
  loc_AEDC21: FLdRfVar var_9C
  loc_AEDC24: ILdRf var_94
  loc_AEDC27: LitI4 8
  loc_AEDC2C: MulI4
  loc_AEDC2D: LitI4 &H14
  loc_AEDC32: SubI4
  loc_AEDC33: ILdRf var_A0
  loc_AEDC36: LitI2_Byte &HFF
  loc_AEDC38: ILdRf arg_18
  loc_AEDC3B: ILdRf arg_10
  loc_AEDC3E: ILdRf var_A0
  loc_AEDC41: SubI4
  loc_AEDC42: ILdRf arg_C
  loc_AEDC45: FLdRfVar var_8C
  loc_AEDC48: ILdRf Me
  loc_AEDC4B: ImpAdCallNonVirt
  loc_AEDC51: ILdRf var_A0
  loc_AEDC54: ILdRf var_9C
  loc_AEDC57: AddI4
  loc_AEDC58: FStR4 var_A0
  loc_AEDC5B: ILdRf var_A0
  loc_AEDC5E: ILdRf arg_10
  loc_AEDC61: GeI4
  loc_AEDC62: BranchF loc_AEDC68
  loc_AEDC65: Branch loc_AEDC70
  loc_AEDC68: FLdRfVar arg_24
  loc_AEDC6B: NextI4 var_D4, loc_AEDC11
  loc_AEDC70: ILdRf arg_24
  loc_AEDC73: LitI4 &H10
  loc_AEDC78: GtI4
  loc_AEDC79: BranchF loc_AEDC82
  loc_AEDC7C: ExitProcCbHresult
  loc_AEDC82: LitI4 0
  loc_AEDC87: FLdRfVar var_98
  loc_AEDC8A: ILdRf arg_10
  loc_AEDC8D: LitI4 1
  loc_AEDC92: SubI4
  loc_AEDC93: ForI4 var_DC
  loc_AEDC99: FLdUI1
  loc_AEDC9D: ILdRf var_98
  loc_AEDCA0: ILdI4 arg_C
  loc_AEDCA3: Ary1LdUI1
  loc_AEDCA5: XorI4
  loc_AEDCA7: FStUI1 var_A2
  loc_AEDCAB: FLdRfVar var_98
  loc_AEDCAE: NextI4 var_DC, loc_AEDC99
  loc_AEDCB3: LitI4 0
  loc_AEDCB8: ILdRf arg_24
  loc_AEDCBB: LitI4 1
  loc_AEDCC0: SubI4
  loc_AEDCC1: ILdRf arg_14
  loc_AEDCC4: Redim
  loc_AEDCCE: LitI4 0
  loc_AEDCD3: FStR4 var_A0
  loc_AEDCD6: LitI4 0
  loc_AEDCDB: FLdRfVar var_98
  loc_AEDCDE: ILdRf arg_24
  loc_AEDCE1: LitI4 1
  loc_AEDCE6: SubI4
  loc_AEDCE7: ForI4 var_E4
  loc_AEDCED: LitI2_Byte 0
  loc_AEDCEF: CUI1I2
  loc_AEDCF1: LitI4 0
  loc_AEDCF6: ILdRf var_8C
  loc_AEDCF9: Ary1StUI1
  loc_AEDCFB: LitI2_Byte 0
  loc_AEDCFD: CUI1I2
  loc_AEDCFF: LitI4 1
  loc_AEDD04: ILdRf var_8C
  loc_AEDD07: Ary1StUI1
  loc_AEDD09: LitI2_Byte 1
  loc_AEDD0B: CUI1I2
  loc_AEDD0D: LitI4 2
  loc_AEDD12: ILdRf var_8C
  loc_AEDD15: Ary1StUI1
  loc_AEDD17: LitI2_Byte 1
  loc_AEDD19: CUI1I2
  loc_AEDD1B: LitI4 3
  loc_AEDD20: ILdRf var_8C
  loc_AEDD23: Ary1StUI1
  loc_AEDD25: ILdRf var_98
  loc_AEDD28: LitI4 8
  loc_AEDD2D: AndI4
  loc_AEDD2E: LitI4 0
  loc_AEDD33: NeI4
  loc_AEDD34: LitI2_Byte 1
  loc_AEDD36: AndI4
  loc_AEDD37: CUI1I2
  loc_AEDD39: LitI4 4
  loc_AEDD3E: ILdRf var_8C
  loc_AEDD41: Ary1StUI1
  loc_AEDD43: ILdRf var_98
  loc_AEDD46: LitI4 4
  loc_AEDD4B: AndI4
  loc_AEDD4C: LitI4 0
  loc_AEDD51: NeI4
  loc_AEDD52: LitI2_Byte 1
  loc_AEDD54: AndI4
  loc_AEDD55: CUI1I2
  loc_AEDD57: LitI4 5
  loc_AEDD5C: ILdRf var_8C
  loc_AEDD5F: Ary1StUI1
  loc_AEDD61: ILdRf var_98
  loc_AEDD64: LitI4 2
  loc_AEDD69: AndI4
  loc_AEDD6A: LitI4 0
  loc_AEDD6F: NeI4
  loc_AEDD70: LitI2_Byte 1
  loc_AEDD72: AndI4
  loc_AEDD73: CUI1I2
  loc_AEDD75: LitI4 6
  loc_AEDD7A: ILdRf var_8C
  loc_AEDD7D: Ary1StUI1
  loc_AEDD7F: ILdRf var_98
  loc_AEDD82: LitI4 1
  loc_AEDD87: AndI4
  loc_AEDD88: CUI1I4
  loc_AEDD8A: LitI4 7
  loc_AEDD8F: ILdRf var_8C
  loc_AEDD92: Ary1StUI1
  loc_AEDD94: ILdRf arg_24
  loc_AEDD97: LitI4 1
  loc_AEDD9C: SubI4
  loc_AEDD9D: LitI4 8
  loc_AEDDA2: AndI4
  loc_AEDDA3: LitI4 0
  loc_AEDDA8: NeI4
  loc_AEDDA9: LitI2_Byte 1
  loc_AEDDAB: AndI4
  loc_AEDDAC: CUI1I2
  loc_AEDDAE: LitI4 8
  loc_AEDDB3: ILdRf var_8C
  loc_AEDDB6: Ary1StUI1
  loc_AEDDB8: ILdRf arg_24
  loc_AEDDBB: LitI4 1
  loc_AEDDC0: SubI4
  loc_AEDDC1: LitI4 4
  loc_AEDDC6: AndI4
  loc_AEDDC7: LitI4 0
  loc_AEDDCC: NeI4
  loc_AEDDCD: LitI2_Byte 1
  loc_AEDDCF: AndI4
  loc_AEDDD0: CUI1I2
  loc_AEDDD2: LitI4 9
  loc_AEDDD7: ILdRf var_8C
  loc_AEDDDA: Ary1StUI1
  loc_AEDDDC: ILdRf arg_24
  loc_AEDDDF: LitI4 1
  loc_AEDDE4: SubI4
  loc_AEDDE5: LitI4 2
  loc_AEDDEA: AndI4
  loc_AEDDEB: LitI4 0
  loc_AEDDF0: NeI4
  loc_AEDDF1: LitI2_Byte 1
  loc_AEDDF3: AndI4
  loc_AEDDF4: CUI1I2
  loc_AEDDF6: LitI4 &HA
  loc_AEDDFB: ILdRf var_8C
  loc_AEDDFE: Ary1StUI1
  loc_AEDE00: ILdRf arg_24
  loc_AEDE03: LitI4 1
  loc_AEDE08: SubI4
  loc_AEDE09: LitI4 1
  loc_AEDE0E: AndI4
  loc_AEDE0F: CUI1I4
  loc_AEDE11: LitI4 &HB
  loc_AEDE16: ILdRf var_8C
  loc_AEDE19: Ary1StUI1
  loc_AEDE1B: FLdUI1
  loc_AEDE1F: CI2UI1
  loc_AEDE21: LitI2 128
  loc_AEDE24: AndI4
  loc_AEDE25: LitI2_Byte 0
  loc_AEDE27: NeI2
  loc_AEDE28: LitI2_Byte 1
  loc_AEDE2A: AndI4
  loc_AEDE2B: CUI1I2
  loc_AEDE2D: LitI4 &HC
  loc_AEDE32: ILdRf var_8C
  loc_AEDE35: Ary1StUI1
  loc_AEDE37: FLdUI1
  loc_AEDE3B: CI2UI1
  loc_AEDE3D: LitI2_Byte &H40
  loc_AEDE3F: AndI4
  loc_AEDE40: LitI2_Byte 0
  loc_AEDE42: NeI2
  loc_AEDE43: LitI2_Byte 1
  loc_AEDE45: AndI4
  loc_AEDE46: CUI1I2
  loc_AEDE48: LitI4 &HD
  loc_AEDE4D: ILdRf var_8C
  loc_AEDE50: Ary1StUI1
  loc_AEDE52: FLdUI1
  loc_AEDE56: CI2UI1
  loc_AEDE58: LitI2_Byte &H20
  loc_AEDE5A: AndI4
  loc_AEDE5B: LitI2_Byte 0
  loc_AEDE5D: NeI2
  loc_AEDE5E: LitI2_Byte 1
  loc_AEDE60: AndI4
  loc_AEDE61: CUI1I2
  loc_AEDE63: LitI4 &HE
  loc_AEDE68: ILdRf var_8C
  loc_AEDE6B: Ary1StUI1
  loc_AEDE6D: FLdUI1
  loc_AEDE71: CI2UI1
  loc_AEDE73: LitI2_Byte &H10
  loc_AEDE75: AndI4
  loc_AEDE76: LitI2_Byte 0
  loc_AEDE78: NeI2
  loc_AEDE79: LitI2_Byte 1
  loc_AEDE7B: AndI4
  loc_AEDE7C: CUI1I2
  loc_AEDE7E: LitI4 &HF
  loc_AEDE83: ILdRf var_8C
  loc_AEDE86: Ary1StUI1
  loc_AEDE88: FLdUI1
  loc_AEDE8C: CI2UI1
  loc_AEDE8E: LitI2_Byte 8
  loc_AEDE90: AndI4
  loc_AEDE91: LitI2_Byte 0
  loc_AEDE93: NeI2
  loc_AEDE94: LitI2_Byte 1
  loc_AEDE96: AndI4
  loc_AEDE97: CUI1I2
  loc_AEDE99: LitI4 &H10
  loc_AEDE9E: ILdRf var_8C
  loc_AEDEA1: Ary1StUI1
  loc_AEDEA3: FLdUI1
  loc_AEDEA7: CI2UI1
  loc_AEDEA9: LitI2_Byte 4
  loc_AEDEAB: AndI4
  loc_AEDEAC: LitI2_Byte 0
  loc_AEDEAE: NeI2
  loc_AEDEAF: LitI2_Byte 1
  loc_AEDEB1: AndI4
  loc_AEDEB2: CUI1I2
  loc_AEDEB4: LitI4 &H11
  loc_AEDEB9: ILdRf var_8C
  loc_AEDEBC: Ary1StUI1
  loc_AEDEBE: FLdUI1
  loc_AEDEC2: CI2UI1
  loc_AEDEC4: LitI2_Byte 2
  loc_AEDEC6: AndI4
  loc_AEDEC7: LitI2_Byte 0
  loc_AEDEC9: NeI2
  loc_AEDECA: LitI2_Byte 1
  loc_AEDECC: AndI4
  loc_AEDECD: CUI1I2
  loc_AEDECF: LitI4 &H12
  loc_AEDED4: ILdRf var_8C
  loc_AEDED7: Ary1StUI1
  loc_AEDED9: FLdUI1
  loc_AEDEDD: CI2UI1
  loc_AEDEDF: LitI2_Byte 1
  loc_AEDEE1: AndI4
  loc_AEDEE2: CUI1I2
  loc_AEDEE4: LitI4 &H13
  loc_AEDEE9: ILdRf var_8C
  loc_AEDEEC: Ary1StUI1
  loc_AEDEEE: LitI4 0
  loc_AEDEF3: FStR4 var_9C
  loc_AEDEF6: LitI4 &H14
  loc_AEDEFB: FLdRfVar var_A8
  loc_AEDEFE: LitI4 &H14
  loc_AEDF03: FLdRfVar var_9C
  loc_AEDF06: ILdRf var_94
  loc_AEDF09: LitI4 8
  loc_AEDF0E: MulI4
  loc_AEDF0F: LitI4 &H14
  loc_AEDF14: SubI4
  loc_AEDF15: ILdRf var_A0
  loc_AEDF18: LitI2_Byte 0
  loc_AEDF1A: ILdRf arg_18
  loc_AEDF1D: ILdRf arg_10
  loc_AEDF20: ILdRf var_A0
  loc_AEDF23: SubI4
  loc_AEDF24: ILdRf arg_C
  loc_AEDF27: FLdRfVar var_8C
  loc_AEDF2A: ILdRf Me
  loc_AEDF2D: ImpAdCallNonVirt
  loc_AEDF33: ILdRf var_A8
  loc_AEDF36: AddI4
  loc_AEDF37: FStR4 var_90
  loc_AEDF3A: ILdRf var_A0
  loc_AEDF3D: ILdRf var_9C
  loc_AEDF40: AddI4
  loc_AEDF41: FStR4 var_A0
  loc_AEDF44: FLdRfVar var_E8
  loc_AEDF47: ILdRf arg_20
  loc_AEDF4A: ILdRf arg_1C
  loc_AEDF4D: ILdRf arg_18
  loc_AEDF50: ILdRf var_90
  loc_AEDF53: FLdRfVar var_8C
  loc_AEDF56: ILdRf Me
  loc_AEDF59: ImpAdCallNonVirt
  loc_AEDF5F: ILdRf var_E8
  loc_AEDF62: ILdRf var_98
  loc_AEDF65: ILdI4 arg_14
  loc_AEDF68: Ary1StAd
  loc_AEDF6A: FFree1Ad var_E8
  loc_AEDF6D: FLdRfVar var_98
  loc_AEDF70: NextI4 var_E4, loc_AEDCED
  loc_AEDF75: ILdRf arg_24
  loc_AEDF78: FStR4 var_88
  loc_AEDF7B: ExitProcCbHresult
  loc_AEDF81: EqI2
End Function

Private Function Proc_278_7_A60A00(arg_C, arg_10, arg_14, arg_18, arg_1C) 'A60A00
  'Data Table: 404C60
  loc_A606DC: ZeroRetVal
  loc_A606DE: ILdRf arg_18
  loc_A606E1: LitI4 0
  loc_A606E6: LeI4
  loc_A606E7: ILdRf arg_18
  loc_A606EA: LitI4 4
  loc_A606EF: GtI4
  loc_A606F0: OrI4
  loc_A606F1: BranchF loc_A606FC
  loc_A606F4: LitI4 2
  loc_A606F9: FStR4 arg_18
  loc_A606FC: ILdRf arg_14
  loc_A606FF: LitI4 0
  loc_A60704: LtI4
  loc_A60705: BranchF loc_A6070B
  loc_A60708: Branch loc_A609F8
  loc_A6070B: LitI4 0
  loc_A60710: LitI4 &H7FFF
  loc_A60715: FLdRfVar var_8C
  loc_A60718: Redim
  loc_A60722: ILdRf arg_14
  loc_A60725: LitI4 0
  loc_A6072A: EqI4
  loc_A6072B: ILdRf arg_14
  loc_A6072E: LitI4 &H28
  loc_A60733: GtI4
  loc_A60734: OrI4
  loc_A60735: BranchF loc_A60945
  loc_A60738: FLdRfVar var_A0
  loc_A6073B: LitI4 0
  loc_A60740: LitI4 0
  loc_A60745: PopTmpLdAdStr var_9C
  loc_A60748: LitI4 0
  loc_A6074D: LitI4 0
  loc_A60752: LitI2_Byte &HFF
  loc_A60754: LitI4 1
  loc_A60759: ILdRf arg_10
  loc_A6075C: ILdRf arg_C
  loc_A6075F: FLdRfVar var_8C
  loc_A60762: ILdRf Me
  loc_A60765: ImpAdCallNonVirt
  loc_A6076B: ILdRf var_A0
  loc_A6076E: FStR4 var_90
  loc_A60771: LitI4 1
  loc_A60776: FLdRfVar arg_14
  loc_A60779: LitI4 9
  loc_A6077E: ForI4 var_A8
  loc_A60784: FLdRfVar var_9C
  loc_A60787: ILdRf arg_14
  loc_A6078A: ILdRf Me
  loc_A6078D: ImpAdCallNonVirt
  loc_A60793: ILdRf var_9C
  loc_A60796: ILdRf arg_18
  loc_A60799: ILdRf arg_14
  loc_A6079C: FLdPr Me
  loc_A6079F: MemLdRfVar from_stack_1.global_92
  loc_A607A2: AryLdPr
  loc_A607A5: MemLdUI1 global_0
  loc_A607A9: CI4UI1
  loc_A607AA: ILdRf arg_18
  loc_A607AD: ILdRf arg_14
  loc_A607B0: FLdPr Me
  loc_A607B3: MemLdRfVar from_stack_1.global_128
  loc_A607B6: AryLdPr
  loc_A607B9: MemLdUI1 global_0
  loc_A607BD: CI4UI1
  loc_A607BE: MulI4
  loc_A607BF: SubI4
  loc_A607C0: FStR4 var_94
  loc_A607C3: ILdRf var_90
  loc_A607C6: LitI4 4
  loc_A607CB: SubI4
  loc_A607CC: ILdRf var_94
  loc_A607CF: LitI4 8
  loc_A607D4: MulI4
  loc_A607D5: LeI4
  loc_A607D6: BranchF loc_A607DC
  loc_A607D9: Branch loc_A60945
  loc_A607DC: FLdRfVar arg_14
  loc_A607DF: NextI4 var_A8, loc_A60784
  loc_A607E4: FLdRfVar var_A0
  loc_A607E7: LitI4 0
  loc_A607EC: LitI4 0
  loc_A607F1: PopTmpLdAdStr var_9C
  loc_A607F4: LitI4 0
  loc_A607F9: LitI4 0
  loc_A607FE: LitI2_Byte &HFF
  loc_A60800: LitI4 &HA
  loc_A60805: ILdRf arg_10
  loc_A60808: ILdRf arg_C
  loc_A6080B: FLdRfVar var_8C
  loc_A6080E: ILdRf Me
  loc_A60811: ImpAdCallNonVirt
  loc_A60817: ILdRf var_A0
  loc_A6081A: FStR4 var_90
  loc_A6081D: LitI4 &HA
  loc_A60822: FLdRfVar arg_14
  loc_A60825: LitI4 &H1A
  loc_A6082A: ForI4 var_B0
  loc_A60830: FLdRfVar var_9C
  loc_A60833: ILdRf arg_14
  loc_A60836: ILdRf Me
  loc_A60839: ImpAdCallNonVirt
  loc_A6083F: ILdRf var_9C
  loc_A60842: ILdRf arg_18
  loc_A60845: ILdRf arg_14
  loc_A60848: FLdPr Me
  loc_A6084B: MemLdRfVar from_stack_1.global_92
  loc_A6084E: AryLdPr
  loc_A60851: MemLdUI1 global_0
  loc_A60855: CI4UI1
  loc_A60856: ILdRf arg_18
  loc_A60859: ILdRf arg_14
  loc_A6085C: FLdPr Me
  loc_A6085F: MemLdRfVar from_stack_1.global_128
  loc_A60862: AryLdPr
  loc_A60865: MemLdUI1 global_0
  loc_A60869: CI4UI1
  loc_A6086A: MulI4
  loc_A6086B: SubI4
  loc_A6086C: FStR4 var_94
  loc_A6086F: ILdRf var_90
  loc_A60872: LitI4 4
  loc_A60877: SubI4
  loc_A60878: ILdRf var_94
  loc_A6087B: LitI4 8
  loc_A60880: MulI4
  loc_A60881: LeI4
  loc_A60882: BranchF loc_A60888
  loc_A60885: Branch loc_A60945
  loc_A60888: FLdRfVar arg_14
  loc_A6088B: NextI4 var_B0, loc_A60830
  loc_A60890: FLdRfVar var_A0
  loc_A60893: LitI4 0
  loc_A60898: LitI4 0
  loc_A6089D: PopTmpLdAdStr var_9C
  loc_A608A0: LitI4 0
  loc_A608A5: LitI4 0
  loc_A608AA: LitI2_Byte &HFF
  loc_A608AC: LitI4 &H1B
  loc_A608B1: ILdRf arg_10
  loc_A608B4: ILdRf arg_C
  loc_A608B7: FLdRfVar var_8C
  loc_A608BA: ILdRf Me
  loc_A608BD: ImpAdCallNonVirt
  loc_A608C3: ILdRf var_A0
  loc_A608C6: FStR4 var_90
  loc_A608C9: LitI4 &H1B
  loc_A608CE: FLdRfVar arg_14
  loc_A608D1: LitI4 &H28
  loc_A608D6: ForI4 var_B8
  loc_A608DC: FLdRfVar var_9C
  loc_A608DF: ILdRf arg_14
  loc_A608E2: ILdRf Me
  loc_A608E5: ImpAdCallNonVirt
  loc_A608EB: ILdRf var_9C
  loc_A608EE: ILdRf arg_18
  loc_A608F1: ILdRf arg_14
  loc_A608F4: FLdPr Me
  loc_A608F7: MemLdRfVar from_stack_1.global_92
  loc_A608FA: AryLdPr
  loc_A608FD: MemLdUI1 global_0
  loc_A60901: CI4UI1
  loc_A60902: ILdRf arg_18
  loc_A60905: ILdRf arg_14
  loc_A60908: FLdPr Me
  loc_A6090B: MemLdRfVar from_stack_1.global_128
  loc_A6090E: AryLdPr
  loc_A60911: MemLdUI1 global_0
  loc_A60915: CI4UI1
  loc_A60916: MulI4
  loc_A60917: SubI4
  loc_A60918: FStR4 var_94
  loc_A6091B: ILdRf var_90
  loc_A6091E: LitI4 4
  loc_A60923: SubI4
  loc_A60924: ILdRf var_94
  loc_A60927: LitI4 8
  loc_A6092C: MulI4
  loc_A6092D: LeI4
  loc_A6092E: BranchF loc_A60934
  loc_A60931: Branch loc_A60945
  loc_A60934: FLdRfVar arg_14
  loc_A60937: NextI4 var_B8, loc_A608DC
  loc_A6093C: ExitProcCbHresult
  loc_A60942: Branch loc_A60738
  loc_A60945: FLdRfVar var_A0
  loc_A60948: LitI4 0
  loc_A6094D: LitI4 0
  loc_A60952: PopTmpLdAdStr var_9C
  loc_A60955: LitI4 0
  loc_A6095A: LitI4 0
  loc_A6095F: LitI2_Byte 0
  loc_A60961: ILdRf arg_14
  loc_A60964: ILdRf arg_10
  loc_A60967: ILdRf arg_C
  loc_A6096A: FLdRfVar var_8C
  loc_A6096D: ILdRf Me
  loc_A60970: ImpAdCallNonVirt
  loc_A60976: ILdRf var_A0
  loc_A60979: FStR4 var_90
  loc_A6097C: FLdRfVar var_9C
  loc_A6097F: ILdRf arg_14
  loc_A60982: ILdRf Me
  loc_A60985: ImpAdCallNonVirt
  loc_A6098B: ILdRf var_9C
  loc_A6098E: ILdRf arg_18
  loc_A60991: ILdRf arg_14
  loc_A60994: FLdPr Me
  loc_A60997: MemLdRfVar from_stack_1.global_92
  loc_A6099A: AryLdPr
  loc_A6099D: MemLdUI1 global_0
  loc_A609A1: CI4UI1
  loc_A609A2: ILdRf arg_18
  loc_A609A5: ILdRf arg_14
  loc_A609A8: FLdPr Me
  loc_A609AB: MemLdRfVar from_stack_1.global_128
  loc_A609AE: AryLdPr
  loc_A609B1: MemLdUI1 global_0
  loc_A609B5: CI4UI1
  loc_A609B6: MulI4
  loc_A609B7: SubI4
  loc_A609B8: FStR4 var_94
  loc_A609BB: ILdRf var_90
  loc_A609BE: LitI4 4
  loc_A609C3: SubI4
  loc_A609C4: ILdRf var_94
  loc_A609C7: LitI4 8
  loc_A609CC: MulI4
  loc_A609CD: GtI4
  loc_A609CE: BranchF loc_A609D7
  loc_A609D1: ExitProcCbHresult
  loc_A609D7: FLdRfVar var_BC
  loc_A609DA: ILdRf arg_1C
  loc_A609DD: ILdRf arg_18
  loc_A609E0: ILdRf arg_14
  loc_A609E3: ILdRf var_90
  loc_A609E6: FLdRfVar var_8C
  loc_A609E9: ILdRf Me
  loc_A609EC: ImpAdCallNonVirt
  loc_A609F2: FLdZeroAd var_BC
  loc_A609F5: FStAdFunc var_88
  loc_A609F8: ExitProcCbHresult
  loc_A609FE: AddI2
End Function

Private Function Proc_278_8_B7CFB4(arg_C, arg_10, arg_14, arg_18, arg_1C) 'B7CFB4
  'Data Table: 404C60
  loc_B7C2CC: ZeroRetVal
  loc_B7C2CE: ILdRf arg_14
  loc_B7C2D1: LitI4 0
  loc_B7C2D6: LtI4
  loc_B7C2D7: BranchF loc_B7C2DD
  loc_B7C2DA: Branch loc_B7CFAE
  loc_B7C2DD: ILdRf arg_18
  loc_B7C2E0: ILdRf arg_14
  loc_B7C2E3: FLdPr Me
  loc_B7C2E6: MemLdRfVar from_stack_1.global_92
  loc_B7C2E9: AryLdPr
  loc_B7C2EC: MemLdUI1 global_0
  loc_B7C2F0: CI4UI1
  loc_B7C2F1: FStR4 var_BC
  loc_B7C2F4: ILdRf arg_18
  loc_B7C2F7: ILdRf arg_14
  loc_B7C2FA: FLdPr Me
  loc_B7C2FD: MemLdRfVar from_stack_1.global_128
  loc_B7C300: AryLdPr
  loc_B7C303: MemLdUI1 global_0
  loc_B7C307: CI4UI1
  loc_B7C308: FStR4 var_C8
  loc_B7C30B: FLdRfVar var_F0
  loc_B7C30E: ILdRf arg_14
  loc_B7C311: ILdRf Me
  loc_B7C314: ImpAdCallNonVirt
  loc_B7C31A: ILdRf var_F0
  loc_B7C31D: FStR4 var_B4
  loc_B7C320: ILdRf var_B4
  loc_B7C323: ILdRf var_BC
  loc_B7C326: ILdRf var_C8
  loc_B7C329: MulI4
  loc_B7C32A: SubI4
  loc_B7C32B: FStR4 var_B8
  loc_B7C32E: ILdRf arg_10
  loc_B7C331: LitI4 4
  loc_B7C336: SubI4
  loc_B7C337: ILdRf var_B8
  loc_B7C33A: LitI4 8
  loc_B7C33F: MulI4
  loc_B7C340: GtI4
  loc_B7C341: BranchF loc_B7C34A
  loc_B7C344: ExitProcCbHresult
  loc_B7C34A: ILdRf var_B8
  loc_B7C34D: ILdRf var_BC
  loc_B7C350: AddI4
  loc_B7C351: LitI4 1
  loc_B7C356: SubI4
  loc_B7C357: ILdRf var_BC
  loc_B7C35A: IDvI4
  loc_B7C35B: FStR4 var_C4
  loc_B7C35E: ILdRf var_B8
  loc_B7C361: ILdRf var_BC
  loc_B7C364: ModI4
  loc_B7C365: FStR4 var_C0
  loc_B7C368: ILdRf var_C0
  loc_B7C36B: LitI4 0
  loc_B7C370: GtI4
  loc_B7C371: BranchF loc_B7C37E
  loc_B7C374: ILdRf var_BC
  loc_B7C377: ILdRf var_C0
  loc_B7C37A: SubI4
  loc_B7C37B: FStR4 var_C0
  loc_B7C37E: ILdRf arg_10
  loc_B7C381: LitI4 7
  loc_B7C386: AddI4
  loc_B7C387: LitI4 -8
  loc_B7C38C: AndI4
  loc_B7C38D: FStR4 var_D8
  loc_B7C390: ILdRf var_D8
  loc_B7C393: ILdRf var_B8
  loc_B7C396: LitI4 8
  loc_B7C39B: MulI4
  loc_B7C39C: GtI4
  loc_B7C39D: BranchF loc_B7C3AC
  loc_B7C3A0: ILdRf var_B8
  loc_B7C3A3: LitI4 8
  loc_B7C3A8: MulI4
  loc_B7C3A9: FStR4 var_D8
  loc_B7C3AC: ILdRf arg_10
  loc_B7C3AF: FLdRfVar var_D0
  loc_B7C3B2: ILdRf var_D8
  loc_B7C3B5: LitI4 1
  loc_B7C3BA: SubI4
  loc_B7C3BB: ForI4 var_F8
  loc_B7C3C1: LitI2_Byte 0
  loc_B7C3C3: CUI1I2
  loc_B7C3C5: ILdRf var_D0
  loc_B7C3C8: ILdI4 arg_C
  loc_B7C3CB: Ary1StUI1
  loc_B7C3CD: FLdRfVar var_D0
  loc_B7C3D0: NextI4 var_F8, loc_B7C3C1
  loc_B7C3D5: ILdRf var_D8
  loc_B7C3D8: FStR4 arg_10
  loc_B7C3DB: LitI4 0
  loc_B7C3E0: FLdRfVar var_D0
  loc_B7C3E3: ILdRf var_B8
  loc_B7C3E6: LitI4 8
  loc_B7C3EB: MulI4
  loc_B7C3EC: ILdRf arg_10
  loc_B7C3EF: SubI4
  loc_B7C3F0: ForI4 var_100
  loc_B7C3F6: ILdRf var_D0
  loc_B7C3F9: LitI4 &HF
  loc_B7C3FE: AndI4
  loc_B7C3FF: FStR4 var_D8
  loc_B7C402: ILdRf var_D8
  loc_B7C405: LitI4 2
  loc_B7C40A: LeI4
  loc_B7C40B: ILdRf var_D8
  loc_B7C40E: LitI4 4
  loc_B7C413: EqI4
  loc_B7C414: OrI4
  loc_B7C415: ILdRf var_D8
  loc_B7C418: LitI4 5
  loc_B7C41D: EqI4
  loc_B7C41E: OrI4
  loc_B7C41F: ILdRf var_D8
  loc_B7C422: LitI4 &HB
  loc_B7C427: EqI4
  loc_B7C428: OrI4
  loc_B7C429: ILdRf var_D8
  loc_B7C42C: LitI4 &HF
  loc_B7C431: EqI4
  loc_B7C432: OrI4
  loc_B7C433: CI4UI1
  loc_B7C434: LitI4 1
  loc_B7C439: AndI4
  loc_B7C43A: CUI1I4
  loc_B7C43C: ILdRf arg_10
  loc_B7C43F: ILdRf var_D0
  loc_B7C442: AddI4
  loc_B7C443: ILdI4 arg_C
  loc_B7C446: Ary1StUI1
  loc_B7C448: FLdRfVar var_D0
  loc_B7C44B: NextI4 var_100, loc_B7C3F6
  loc_B7C450: LitI4 0
  loc_B7C455: LitI4 &H7FFF
  loc_B7C45A: FLdRfVar var_94
  loc_B7C45D: Redim
  loc_B7C467: FLdRfVar var_106
  loc_B7C46A: LitI4 0
  loc_B7C46F: LitI4 0
  loc_B7C474: FLdPr Me
  loc_B7C477: MemLdRfVar from_stack_1.global_52
  loc_B7C47A: NewIfNullAd
  loc_B7C47D: FStAdNoPop
  loc_B7C481: ILdRf var_C8
  loc_B7C484: ILdRf var_C4
  loc_B7C487: FLdPr Me
  loc_B7C48A: MemLdRfVar from_stack_1.global_56
  loc_B7C48D: NewIfNullAd
  loc_B7C490: ImpAdCallNonVirt
  loc_B7C496: FFree1Ad var_104
  loc_B7C499: LitI4 0
  loc_B7C49E: FStR4 var_E4
  loc_B7C4A1: LitI4 0
  loc_B7C4A6: FLdRfVar var_D0
  loc_B7C4A9: ILdRf var_BC
  loc_B7C4AC: LitI4 1
  loc_B7C4B1: SubI4
  loc_B7C4B2: ForI4 var_110
  loc_B7C4B8: LitI4 0
  loc_B7C4BD: ILdRf var_C4
  loc_B7C4C0: ILdRf var_C8
  loc_B7C4C3: AddI4
  loc_B7C4C4: LitI4 1
  loc_B7C4C9: SubI4
  loc_B7C4CA: FLdRfVar var_AC
  loc_B7C4CD: Ary1StI4
  loc_B7C4CE: ILdRf var_D0
  loc_B7C4D1: FStR4 var_E8
  loc_B7C4D4: LitI4 0
  loc_B7C4D9: FLdRfVar var_D8
  loc_B7C4DC: ILdRf var_C4
  loc_B7C4DF: LitI4 1
  loc_B7C4E4: SubI4
  loc_B7C4E5: ForI4 var_118
  loc_B7C4EB: ILdRf var_D0
  loc_B7C4EE: ILdRf var_C0
  loc_B7C4F1: LtI4
  loc_B7C4F2: ILdRf var_D8
  loc_B7C4F5: ILdRf var_C4
  loc_B7C4F8: LitI4 1
  loc_B7C4FD: SubI4
  loc_B7C4FE: EqI4
  loc_B7C4FF: AndI4
  loc_B7C500: BranchF loc_B7C506
  loc_B7C503: Branch loc_B7C5D8
  loc_B7C506: LitI4 0
  loc_B7C50B: FStR4 var_E0
  loc_B7C50E: LitI4 0
  loc_B7C513: FLdRfVar var_DC
  loc_B7C516: LitI4 7
  loc_B7C51B: ForI4 var_120
  loc_B7C521: ILdRf var_E4
  loc_B7C524: LitI4 8
  loc_B7C529: MulI4
  loc_B7C52A: ILdRf var_DC
  loc_B7C52D: AddI4
  loc_B7C52E: ILdI4 arg_C
  loc_B7C531: Ary1LdUI1
  loc_B7C533: FStUI1 var_EA
  loc_B7C537: FLdUI1
  loc_B7C53B: ILdRf var_E8
  loc_B7C53E: LitI4 8
  loc_B7C543: MulI4
  loc_B7C544: ILdRf var_DC
  loc_B7C547: AddI4
  loc_B7C548: ILdRf var_94
  loc_B7C54B: Ary1StUI1
  loc_B7C54D: ILdRf var_E0
  loc_B7C550: LitI4 7
  loc_B7C555: ILdRf var_DC
  loc_B7C558: SubI4
  loc_B7C559: FLdPr Me
  loc_B7C55C: MemLdRfVar from_stack_1.global_164
  loc_B7C55F: Ary1LdI4
  loc_B7C560: FLdUI1
  loc_B7C564: CI2UI1
  loc_B7C566: LitI2_Byte 0
  loc_B7C568: NeI2
  loc_B7C569: CI4UI1
  loc_B7C56A: AndI4
  loc_B7C56B: OrI4
  loc_B7C56C: FStR4 var_E0
  loc_B7C56F: FLdRfVar var_DC
  loc_B7C572: NextI4 var_120, loc_B7C521
  loc_B7C577: ILdRf var_E0
  loc_B7C57A: ILdRf var_C4
  loc_B7C57D: ILdRf var_C8
  loc_B7C580: AddI4
  loc_B7C581: ILdRf var_D0
  loc_B7C584: ILdRf var_C0
  loc_B7C587: LtI4
  loc_B7C588: CI4UI1
  loc_B7C589: AddI4
  loc_B7C58A: ILdRf var_D8
  loc_B7C58D: SubI4
  loc_B7C58E: LitI4 1
  loc_B7C593: SubI4
  loc_B7C594: FLdRfVar var_AC
  loc_B7C597: Ary1StI4
  loc_B7C598: ILdRf var_E4
  loc_B7C59B: LitI4 1
  loc_B7C5A0: AddI4
  loc_B7C5A1: FStR4 var_E4
  loc_B7C5A4: ILdRf var_E8
  loc_B7C5A7: ILdRf var_BC
  loc_B7C5AA: AddI4
  loc_B7C5AB: FStR4 var_E8
  loc_B7C5AE: ILdRf var_D0
  loc_B7C5B1: ILdRf var_C0
  loc_B7C5B4: GeI4
  loc_B7C5B5: ILdRf var_D8
  loc_B7C5B8: ILdRf var_C4
  loc_B7C5BB: LitI4 2
  loc_B7C5C0: SubI4
  loc_B7C5C1: EqI4
  loc_B7C5C2: AndI4
  loc_B7C5C3: BranchF loc_B7C5D0
  loc_B7C5C6: ILdRf var_E8
  loc_B7C5C9: ILdRf var_C0
  loc_B7C5CC: SubI4
  loc_B7C5CD: FStR4 var_E8
  loc_B7C5D0: FLdRfVar var_D8
  loc_B7C5D3: NextI4 var_118, loc_B7C4EB
  loc_B7C5D8: FLdRfVar var_AC
  loc_B7C5DB: PopTmpLdAdStr var_F0
  loc_B7C5DE: FLdPr Me
  loc_B7C5E1: MemLdRfVar from_stack_1.global_56
  loc_B7C5E4: NewIfNullAd
  loc_B7C5E7: ImpAdCallNonVirt
  loc_B7C5ED: ILdRf var_B8
  loc_B7C5F0: ILdRf var_D0
  loc_B7C5F3: AddI4
  loc_B7C5F4: FStR4 var_E8
  loc_B7C5F7: LitI4 0
  loc_B7C5FC: FLdRfVar var_D8
  loc_B7C5FF: ILdRf var_C8
  loc_B7C602: LitI4 1
  loc_B7C607: SubI4
  loc_B7C608: ForI4 var_128
  loc_B7C60E: ILdRf var_C8
  loc_B7C611: LitI4 1
  loc_B7C616: SubI4
  loc_B7C617: ILdRf var_D8
  loc_B7C61A: SubI4
  loc_B7C61B: FLdRfVar var_AC
  loc_B7C61E: Ary1LdI4
  loc_B7C61F: FStR4 var_E0
  loc_B7C622: LitI4 0
  loc_B7C627: FLdRfVar var_DC
  loc_B7C62A: LitI4 7
  loc_B7C62F: ForI4 var_130
  loc_B7C635: ILdRf var_E0
  loc_B7C638: LitI4 7
  loc_B7C63D: ILdRf var_DC
  loc_B7C640: SubI4
  loc_B7C641: FLdPr Me
  loc_B7C644: MemLdRfVar from_stack_1.global_164
  loc_B7C647: Ary1LdI4
  loc_B7C648: AndI4
  loc_B7C649: LitI4 0
  loc_B7C64E: NeI4
  loc_B7C64F: CI4UI1
  loc_B7C650: LitI4 1
  loc_B7C655: AndI4
  loc_B7C656: CUI1I4
  loc_B7C658: ILdRf var_E8
  loc_B7C65B: LitI4 8
  loc_B7C660: MulI4
  loc_B7C661: ILdRf var_DC
  loc_B7C664: AddI4
  loc_B7C665: ILdRf var_94
  loc_B7C668: Ary1StUI1
  loc_B7C66A: FLdRfVar var_DC
  loc_B7C66D: NextI4 var_130, loc_B7C635
  loc_B7C672: ILdRf var_E8
  loc_B7C675: ILdRf var_BC
  loc_B7C678: AddI4
  loc_B7C679: FStR4 var_E8
  loc_B7C67C: FLdRfVar var_D8
  loc_B7C67F: NextI4 var_128, loc_B7C60E
  loc_B7C684: FLdRfVar var_D0
  loc_B7C687: NextI4 var_110, loc_B7C4B8
  loc_B7C68C: FLdRfVar var_F0
  loc_B7C68F: ILdRf arg_14
  loc_B7C692: ILdRf Me
  loc_B7C695: ImpAdCallNonVirt
  loc_B7C69B: ILdRf var_F0
  loc_B7C69E: FStR4 var_CC
  loc_B7C6A1: LitI4 0
  loc_B7C6A6: ILdRf var_CC
  loc_B7C6A9: LitI4 2
  loc_B7C6AE: AddI4
  loc_B7C6AF: LitI4 0
  loc_B7C6B4: ILdRf var_CC
  loc_B7C6B7: LitI4 2
  loc_B7C6BC: AddI4
  loc_B7C6BD: FLdRfVar var_8C
  loc_B7C6C0: Redim
  loc_B7C6CA: ILdRf arg_14
  loc_B7C6CD: FLdRfVar var_8C
  loc_B7C6D0: ILdRf Me
  loc_B7C6D3: ImpAdCallNonVirt
  loc_B7C6D9: LitI4 0
  loc_B7C6DE: ILdRf var_CC
  loc_B7C6E1: LitI4 1
  loc_B7C6E6: SubI4
  loc_B7C6E7: LitI4 0
  loc_B7C6EC: ILdRf var_CC
  loc_B7C6EF: LitI4 1
  loc_B7C6F4: SubI4
  loc_B7C6F5: FLdRfVar var_90
  loc_B7C6F8: Redim
  loc_B7C702: LitI4 0
  loc_B7C707: FStR4 var_E4
  loc_B7C70A: ILdRf var_CC
  loc_B7C70D: FStR4 var_D0
  loc_B7C710: ILdRf var_D0
  loc_B7C713: LitI4 2
  loc_B7C718: SubI4
  loc_B7C719: FStR4 var_D4
  loc_B7C71C: ILdRf var_D4
  loc_B7C71F: LitI4 6
  loc_B7C724: LtI4
  loc_B7C725: BranchF loc_B7C734
  loc_B7C728: ILdRf var_D4
  loc_B7C72B: LitI4 1
  loc_B7C730: SubI4
  loc_B7C731: FStR4 var_D4
  loc_B7C734: ILdRf var_CC
  loc_B7C737: LitI4 1
  loc_B7C73C: SubI4
  loc_B7C73D: FLdRfVar var_D8
  loc_B7C740: LitI4 0
  loc_B7C745: LitI4 -1
  loc_B7C74A: ForStepI4 var_138
  loc_B7C750: ILdRf var_D4
  loc_B7C753: LitI4 1
  loc_B7C758: AddI4
  loc_B7C759: ILdRf var_D8
  loc_B7C75C: ILdRf var_8C
  loc_B7C75F: AryLdPr
  loc_B7C762: MemLdUI1 global_0
  loc_B7C766: CI2UI1
  loc_B7C768: LitI2_Byte 0
  loc_B7C76A: EqI2
  loc_B7C76B: BranchF loc_B7C7AB
  loc_B7C76E: ILdRf var_E4
  loc_B7C771: ILdRf var_94
  loc_B7C774: Ary1LdUI1
  loc_B7C776: ILdRf var_D4
  loc_B7C779: LitI4 1
  loc_B7C77E: AddI4
  loc_B7C77F: ILdRf var_D8
  loc_B7C782: ILdRf var_90
  loc_B7C785: AryLdPr
  loc_B7C788: MemStUI1
  loc_B7C78C: ILdRf var_E4
  loc_B7C78F: LitI4 1
  loc_B7C794: AddI4
  loc_B7C795: FStR4 var_E4
  loc_B7C798: ILdRf var_E4
  loc_B7C79B: ILdRf var_B4
  loc_B7C79E: LitI4 8
  loc_B7C7A3: MulI4
  loc_B7C7A4: GeI4
  loc_B7C7A5: BranchF loc_B7C7AB
  loc_B7C7A8: Branch loc_B7C901
  loc_B7C7AB: ILdRf var_D4
  loc_B7C7AE: ILdRf var_D8
  loc_B7C7B1: ILdRf var_8C
  loc_B7C7B4: AryLdPr
  loc_B7C7B7: MemLdUI1 global_0
  loc_B7C7BB: CI2UI1
  loc_B7C7BD: LitI2_Byte 0
  loc_B7C7BF: EqI2
  loc_B7C7C0: BranchF loc_B7C7FA
  loc_B7C7C3: ILdRf var_E4
  loc_B7C7C6: ILdRf var_94
  loc_B7C7C9: Ary1LdUI1
  loc_B7C7CB: ILdRf var_D4
  loc_B7C7CE: ILdRf var_D8
  loc_B7C7D1: ILdRf var_90
  loc_B7C7D4: AryLdPr
  loc_B7C7D7: MemStUI1
  loc_B7C7DB: ILdRf var_E4
  loc_B7C7DE: LitI4 1
  loc_B7C7E3: AddI4
  loc_B7C7E4: FStR4 var_E4
  loc_B7C7E7: ILdRf var_E4
  loc_B7C7EA: ILdRf var_B4
  loc_B7C7ED: LitI4 8
  loc_B7C7F2: MulI4
  loc_B7C7F3: GeI4
  loc_B7C7F4: BranchF loc_B7C7FA
  loc_B7C7F7: Branch loc_B7C901
  loc_B7C7FA: FLdRfVar var_D8
  loc_B7C7FD: NextStepI4 var_138, loc_B7C750
  loc_B7C802: ILdRf var_D0
  loc_B7C805: LitI4 4
  loc_B7C80A: SubI4
  loc_B7C80B: FStR4 var_D0
  loc_B7C80E: ILdRf var_D0
  loc_B7C811: FStR4 var_D4
  loc_B7C814: ILdRf var_D4
  loc_B7C817: LitI4 6
  loc_B7C81C: LtI4
  loc_B7C81D: BranchF loc_B7C82C
  loc_B7C820: ILdRf var_D4
  loc_B7C823: LitI4 1
  loc_B7C828: SubI4
  loc_B7C829: FStR4 var_D4
  loc_B7C82C: LitI4 0
  loc_B7C831: FLdRfVar var_D8
  loc_B7C834: ILdRf var_CC
  loc_B7C837: LitI4 1
  loc_B7C83C: SubI4
  loc_B7C83D: ForI4 var_140
  loc_B7C843: ILdRf var_D4
  loc_B7C846: LitI4 1
  loc_B7C84B: AddI4
  loc_B7C84C: ILdRf var_D8
  loc_B7C84F: ILdRf var_8C
  loc_B7C852: AryLdPr
  loc_B7C855: MemLdUI1 global_0
  loc_B7C859: CI2UI1
  loc_B7C85B: LitI2_Byte 0
  loc_B7C85D: EqI2
  loc_B7C85E: BranchF loc_B7C89E
  loc_B7C861: ILdRf var_E4
  loc_B7C864: ILdRf var_94
  loc_B7C867: Ary1LdUI1
  loc_B7C869: ILdRf var_D4
  loc_B7C86C: LitI4 1
  loc_B7C871: AddI4
  loc_B7C872: ILdRf var_D8
  loc_B7C875: ILdRf var_90
  loc_B7C878: AryLdPr
  loc_B7C87B: MemStUI1
  loc_B7C87F: ILdRf var_E4
  loc_B7C882: LitI4 1
  loc_B7C887: AddI4
  loc_B7C888: FStR4 var_E4
  loc_B7C88B: ILdRf var_E4
  loc_B7C88E: ILdRf var_B4
  loc_B7C891: LitI4 8
  loc_B7C896: MulI4
  loc_B7C897: GeI4
  loc_B7C898: BranchF loc_B7C89E
  loc_B7C89B: Branch loc_B7C901
  loc_B7C89E: ILdRf var_D4
  loc_B7C8A1: ILdRf var_D8
  loc_B7C8A4: ILdRf var_8C
  loc_B7C8A7: AryLdPr
  loc_B7C8AA: MemLdUI1 global_0
  loc_B7C8AE: CI2UI1
  loc_B7C8B0: LitI2_Byte 0
  loc_B7C8B2: EqI2
  loc_B7C8B3: BranchF loc_B7C8ED
  loc_B7C8B6: ILdRf var_E4
  loc_B7C8B9: ILdRf var_94
  loc_B7C8BC: Ary1LdUI1
  loc_B7C8BE: ILdRf var_D4
  loc_B7C8C1: ILdRf var_D8
  loc_B7C8C4: ILdRf var_90
  loc_B7C8C7: AryLdPr
  loc_B7C8CA: MemStUI1
  loc_B7C8CE: ILdRf var_E4
  loc_B7C8D1: LitI4 1
  loc_B7C8D6: AddI4
  loc_B7C8D7: FStR4 var_E4
  loc_B7C8DA: ILdRf var_E4
  loc_B7C8DD: ILdRf var_B4
  loc_B7C8E0: LitI4 8
  loc_B7C8E5: MulI4
  loc_B7C8E6: GeI4
  loc_B7C8E7: BranchF loc_B7C8ED
  loc_B7C8EA: Branch loc_B7C901
  loc_B7C8ED: FLdRfVar var_D8
  loc_B7C8F0: NextI4 var_140, loc_B7C843
  loc_B7C8F5: ILdRf var_D0
  loc_B7C8F8: LitI4 5
  loc_B7C8FD: GeI4
  loc_B7C8FE: BranchT loc_B7C710
  loc_B7C901: FLdRfVar var_F0
  loc_B7C904: ILdRf arg_1C
  loc_B7C907: ILdRf var_CC
  loc_B7C90A: FLdRfVar var_90
  loc_B7C90D: ILdRf Me
  loc_B7C910: ImpAdCallNonVirt
  loc_B7C916: ILdRf var_F0
  loc_B7C919: FStR4 arg_1C
  loc_B7C91C: LitI4 0
  loc_B7C921: FLdRfVar var_D8
  loc_B7C924: ILdRf var_CC
  loc_B7C927: LitI4 1
  loc_B7C92C: SubI4
  loc_B7C92D: ForI4 var_148
  loc_B7C933: LitI4 0
  loc_B7C938: FLdRfVar var_D0
  loc_B7C93B: ILdRf var_CC
  loc_B7C93E: LitI4 1
  loc_B7C943: SubI4
  loc_B7C944: ForI4 var_150
  loc_B7C94A: ILdRf var_D0
  loc_B7C94D: ILdRf var_D8
  loc_B7C950: ILdRf var_8C
  loc_B7C953: AryLdPr
  loc_B7C956: MemLdUI1 global_0
  loc_B7C95A: FStUI1 var_EA
  loc_B7C95E: FLdUI1
  loc_B7C962: CI2UI1
  loc_B7C964: LitI2_Byte 0
  loc_B7C966: EqI2
  loc_B7C967: BranchF loc_B7C97E
  loc_B7C96A: ILdRf var_D0
  loc_B7C96D: ILdRf var_D8
  loc_B7C970: ILdRf var_90
  loc_B7C973: AryLdPr
  loc_B7C976: MemLdUI1 global_0
  loc_B7C97A: FStUI1 var_EA
  loc_B7C97E: FLdUI1
  loc_B7C982: CI4UI1
  loc_B7C983: LitI4 1
  loc_B7C988: AndI4
  loc_B7C989: CUI1I4
  loc_B7C98B: ILdRf var_D0
  loc_B7C98E: ILdRf var_D8
  loc_B7C991: ILdRf var_8C
  loc_B7C994: AryLdPr
  loc_B7C997: MemStUI1
  loc_B7C99B: FLdRfVar var_D0
  loc_B7C99E: NextI4 var_150, loc_B7C94A
  loc_B7C9A3: FLdRfVar var_D8
  loc_B7C9A6: NextI4 var_148, loc_B7C933
  loc_B7C9AB: ILdRf arg_14
  loc_B7C9AE: LitI4 7
  loc_B7C9B3: GeI4
  loc_B7C9B4: BranchF loc_B7CA82
  loc_B7C9B7: ILdRf arg_14
  loc_B7C9BA: LitI4 &H1000
  loc_B7C9BF: MulI4
  loc_B7C9C0: FLdRfVar var_F0
  loc_B7C9C3: LitI4 &HC
  loc_B7C9C8: LitI4 &H1000
  loc_B7C9CD: LitI4 &H1F25
  loc_B7C9D2: ILdRf arg_14
  loc_B7C9D5: ILdRf Me
  loc_B7C9D8: ImpAdCallNonVirt
  loc_B7C9DE: ILdRf var_F0
  loc_B7C9E1: OrI4
  loc_B7C9E2: FStR4 var_E0
  loc_B7C9E5: LitI4 0
  loc_B7C9EA: FLdRfVar var_D0
  loc_B7C9ED: LitI4 5
  loc_B7C9F2: ForI4 var_158
  loc_B7C9F8: LitI4 0
  loc_B7C9FD: FLdRfVar var_D8
  loc_B7CA00: LitI4 2
  loc_B7CA05: ForI4 var_160
  loc_B7CA0B: ILdRf var_E0
  loc_B7CA0E: ILdRf var_D0
  loc_B7CA11: LitI4 3
  loc_B7CA16: MulI4
  loc_B7CA17: ILdRf var_D8
  loc_B7CA1A: AddI4
  loc_B7CA1B: FLdPr Me
  loc_B7CA1E: MemLdRfVar from_stack_1.global_164
  loc_B7CA21: Ary1LdI4
  loc_B7CA22: AndI4
  loc_B7CA23: LitI4 0
  loc_B7CA28: NeI4
  loc_B7CA29: CI4UI1
  loc_B7CA2A: LitI4 1
  loc_B7CA2F: AndI4
  loc_B7CA30: CUI1I4
  loc_B7CA32: FStUI1 var_EA
  loc_B7CA36: FLdUI1
  loc_B7CA3A: ILdRf var_D0
  loc_B7CA3D: ILdRf var_CC
  loc_B7CA40: LitI4 &HB
  loc_B7CA45: SubI4
  loc_B7CA46: ILdRf var_D8
  loc_B7CA49: AddI4
  loc_B7CA4A: ILdRf var_8C
  loc_B7CA4D: AryLdPr
  loc_B7CA50: MemStUI1
  loc_B7CA54: FLdUI1
  loc_B7CA58: ILdRf var_CC
  loc_B7CA5B: LitI4 &HB
  loc_B7CA60: SubI4
  loc_B7CA61: ILdRf var_D8
  loc_B7CA64: AddI4
  loc_B7CA65: ILdRf var_D0
  loc_B7CA68: ILdRf var_8C
  loc_B7CA6B: AryLdPr
  loc_B7CA6E: MemStUI1
  loc_B7CA72: FLdRfVar var_D8
  loc_B7CA75: NextI4 var_160, loc_B7CA0B
  loc_B7CA7A: FLdRfVar var_D0
  loc_B7CA7D: NextI4 var_158, loc_B7C9F8
  loc_B7CA82: ILdRf arg_18
  loc_B7CA85: LitI4 1
  loc_B7CA8A: SubI4
  loc_B7CA8B: LitI4 1
  loc_B7CA90: XorI4
  loc_B7CA92: FStR4 arg_18
  loc_B7CA95: ILdRf arg_18
  loc_B7CA98: LitI4 8
  loc_B7CA9D: MulI4
  loc_B7CA9E: ILdRf arg_1C
  loc_B7CAA1: OrI4
  loc_B7CAA2: FStR4 var_DC
  loc_B7CAA5: FLdRfVar var_F0
  loc_B7CAA8: LitI4 &HA
  loc_B7CAAD: LitI4 &H400
  loc_B7CAB2: LitI4 &H537
  loc_B7CAB7: ILdRf var_DC
  loc_B7CABA: ILdRf Me
  loc_B7CABD: ImpAdCallNonVirt
  loc_B7CAC3: ILdRf var_F0
  loc_B7CAC6: FStR4 var_E0
  loc_B7CAC9: ILdRf arg_18
  loc_B7CACC: LitI4 2
  loc_B7CAD1: AndI4
  loc_B7CAD2: LitI4 0
  loc_B7CAD7: EqI4
  loc_B7CAD8: CI4UI1
  loc_B7CAD9: LitI4 1
  loc_B7CADE: AndI4
  loc_B7CADF: CUI1I4
  loc_B7CAE1: FStUI1 var_EA
  loc_B7CAE5: FLdUI1
  loc_B7CAE9: LitI4 0
  loc_B7CAEE: LitI4 8
  loc_B7CAF3: ILdRf var_8C
  loc_B7CAF6: AryLdPr
  loc_B7CAF9: MemStUI1
  loc_B7CAFD: FLdUI1
  loc_B7CB01: LitI4 8
  loc_B7CB06: ILdRf var_CC
  loc_B7CB09: LitI4 1
  loc_B7CB0E: SubI4
  loc_B7CB0F: ILdRf var_8C
  loc_B7CB12: AryLdPr
  loc_B7CB15: MemStUI1
  loc_B7CB19: ILdRf arg_18
  loc_B7CB1C: LitI4 1
  loc_B7CB21: AndI4
  loc_B7CB22: CUI1I4
  loc_B7CB24: FStUI1 var_EA
  loc_B7CB28: FLdUI1
  loc_B7CB2C: LitI4 1
  loc_B7CB31: LitI4 8
  loc_B7CB36: ILdRf var_8C
  loc_B7CB39: AryLdPr
  loc_B7CB3C: MemStUI1
  loc_B7CB40: FLdUI1
  loc_B7CB44: LitI4 8
  loc_B7CB49: ILdRf var_CC
  loc_B7CB4C: LitI4 2
  loc_B7CB51: SubI4
  loc_B7CB52: ILdRf var_8C
  loc_B7CB55: AryLdPr
  loc_B7CB58: MemStUI1
  loc_B7CB5C: ILdRf arg_1C
  loc_B7CB5F: LitI4 4
  loc_B7CB64: AndI4
  loc_B7CB65: LitI4 0
  loc_B7CB6A: EqI4
  loc_B7CB6B: CI4UI1
  loc_B7CB6C: LitI4 1
  loc_B7CB71: AndI4
  loc_B7CB72: CUI1I4
  loc_B7CB74: FStUI1 var_EA
  loc_B7CB78: FLdUI1
  loc_B7CB7C: LitI4 2
  loc_B7CB81: LitI4 8
  loc_B7CB86: ILdRf var_8C
  loc_B7CB89: AryLdPr
  loc_B7CB8C: MemStUI1
  loc_B7CB90: FLdUI1
  loc_B7CB94: LitI4 8
  loc_B7CB99: ILdRf var_CC
  loc_B7CB9C: LitI4 3
  loc_B7CBA1: SubI4
  loc_B7CBA2: ILdRf var_8C
  loc_B7CBA5: AryLdPr
  loc_B7CBA8: MemStUI1
  loc_B7CBAC: ILdRf arg_1C
  loc_B7CBAF: LitI4 2
  loc_B7CBB4: AndI4
  loc_B7CBB5: LitI4 0
  loc_B7CBBA: NeI4
  loc_B7CBBB: CI4UI1
  loc_B7CBBC: LitI4 1
  loc_B7CBC1: AndI4
  loc_B7CBC2: CUI1I4
  loc_B7CBC4: FStUI1 var_EA
  loc_B7CBC8: FLdUI1
  loc_B7CBCC: LitI4 3
  loc_B7CBD1: LitI4 8
  loc_B7CBD6: ILdRf var_8C
  loc_B7CBD9: AryLdPr
  loc_B7CBDC: MemStUI1
  loc_B7CBE0: FLdUI1
  loc_B7CBE4: LitI4 8
  loc_B7CBE9: ILdRf var_CC
  loc_B7CBEC: LitI4 4
  loc_B7CBF1: SubI4
  loc_B7CBF2: ILdRf var_8C
  loc_B7CBF5: AryLdPr
  loc_B7CBF8: MemStUI1
  loc_B7CBFC: ILdRf arg_1C
  loc_B7CBFF: LitI4 1
  loc_B7CC04: AndI4
  loc_B7CC05: LitI4 0
  loc_B7CC0A: EqI4
  loc_B7CC0B: CI4UI1
  loc_B7CC0C: LitI4 1
  loc_B7CC11: AndI4
  loc_B7CC12: CUI1I4
  loc_B7CC14: FStUI1 var_EA
  loc_B7CC18: FLdUI1
  loc_B7CC1C: LitI4 4
  loc_B7CC21: LitI4 8
  loc_B7CC26: ILdRf var_8C
  loc_B7CC29: AryLdPr
  loc_B7CC2C: MemStUI1
  loc_B7CC30: FLdUI1
  loc_B7CC34: LitI4 8
  loc_B7CC39: ILdRf var_CC
  loc_B7CC3C: LitI4 5
  loc_B7CC41: SubI4
  loc_B7CC42: ILdRf var_8C
  loc_B7CC45: AryLdPr
  loc_B7CC48: MemStUI1
  loc_B7CC4C: ILdRf var_E0
  loc_B7CC4F: LitI4 &H200
  loc_B7CC54: AndI4
  loc_B7CC55: LitI4 0
  loc_B7CC5A: NeI4
  loc_B7CC5B: CI4UI1
  loc_B7CC5C: LitI4 1
  loc_B7CC61: AndI4
  loc_B7CC62: CUI1I4
  loc_B7CC64: FStUI1 var_EA
  loc_B7CC68: FLdUI1
  loc_B7CC6C: LitI4 5
  loc_B7CC71: LitI4 8
  loc_B7CC76: ILdRf var_8C
  loc_B7CC79: AryLdPr
  loc_B7CC7C: MemStUI1
  loc_B7CC80: FLdUI1
  loc_B7CC84: LitI4 8
  loc_B7CC89: ILdRf var_CC
  loc_B7CC8C: LitI4 6
  loc_B7CC91: SubI4
  loc_B7CC92: ILdRf var_8C
  loc_B7CC95: AryLdPr
  loc_B7CC98: MemStUI1
  loc_B7CC9C: ILdRf var_E0
  loc_B7CC9F: LitI4 &H100
  loc_B7CCA4: AndI4
  loc_B7CCA5: LitI4 0
  loc_B7CCAA: NeI4
  loc_B7CCAB: CI4UI1
  loc_B7CCAC: LitI4 1
  loc_B7CCB1: AndI4
  loc_B7CCB2: CUI1I4
  loc_B7CCB4: FStUI1 var_EA
  loc_B7CCB8: FLdUI1
  loc_B7CCBC: LitI4 7
  loc_B7CCC1: LitI4 8
  loc_B7CCC6: ILdRf var_8C
  loc_B7CCC9: AryLdPr
  loc_B7CCCC: MemStUI1
  loc_B7CCD0: FLdUI1
  loc_B7CCD4: LitI4 8
  loc_B7CCD9: ILdRf var_CC
  loc_B7CCDC: LitI4 7
  loc_B7CCE1: SubI4
  loc_B7CCE2: ILdRf var_8C
  loc_B7CCE5: AryLdPr
  loc_B7CCE8: MemStUI1
  loc_B7CCEC: ILdRf var_E0
  loc_B7CCEF: LitI4 &H80
  loc_B7CCF4: AndI4
  loc_B7CCF5: LitI4 0
  loc_B7CCFA: NeI4
  loc_B7CCFB: CI4UI1
  loc_B7CCFC: LitI4 1
  loc_B7CD01: AndI4
  loc_B7CD02: CUI1I4
  loc_B7CD04: FStUI1 var_EA
  loc_B7CD08: FLdUI1
  loc_B7CD0C: LitI4 8
  loc_B7CD11: LitI4 8
  loc_B7CD16: ILdRf var_8C
  loc_B7CD19: AryLdPr
  loc_B7CD1C: MemStUI1
  loc_B7CD20: FLdUI1
  loc_B7CD24: LitI4 8
  loc_B7CD29: ILdRf var_CC
  loc_B7CD2C: LitI4 8
  loc_B7CD31: SubI4
  loc_B7CD32: ILdRf var_8C
  loc_B7CD35: AryLdPr
  loc_B7CD38: MemStUI1
  loc_B7CD3C: ILdRf var_E0
  loc_B7CD3F: LitI4 &H40
  loc_B7CD44: AndI4
  loc_B7CD45: LitI4 0
  loc_B7CD4A: NeI4
  loc_B7CD4B: CI4UI1
  loc_B7CD4C: LitI4 1
  loc_B7CD51: AndI4
  loc_B7CD52: CUI1I4
  loc_B7CD54: FStUI1 var_EA
  loc_B7CD58: FLdUI1
  loc_B7CD5C: LitI4 8
  loc_B7CD61: LitI4 7
  loc_B7CD66: ILdRf var_8C
  loc_B7CD69: AryLdPr
  loc_B7CD6C: MemStUI1
  loc_B7CD70: FLdUI1
  loc_B7CD74: ILdRf var_CC
  loc_B7CD77: LitI4 7
  loc_B7CD7C: SubI4
  loc_B7CD7D: LitI4 8
  loc_B7CD82: ILdRf var_8C
  loc_B7CD85: AryLdPr
  loc_B7CD88: MemStUI1
  loc_B7CD8C: ILdRf var_E0
  loc_B7CD8F: LitI4 &H20
  loc_B7CD94: AndI4
  loc_B7CD95: LitI4 0
  loc_B7CD9A: NeI4
  loc_B7CD9B: CI4UI1
  loc_B7CD9C: LitI4 1
  loc_B7CDA1: AndI4
  loc_B7CDA2: CUI1I4
  loc_B7CDA4: FStUI1 var_EA
  loc_B7CDA8: FLdUI1
  loc_B7CDAC: LitI4 8
  loc_B7CDB1: LitI4 5
  loc_B7CDB6: ILdRf var_8C
  loc_B7CDB9: AryLdPr
  loc_B7CDBC: MemStUI1
  loc_B7CDC0: FLdUI1
  loc_B7CDC4: ILdRf var_CC
  loc_B7CDC7: LitI4 6
  loc_B7CDCC: SubI4
  loc_B7CDCD: LitI4 8
  loc_B7CDD2: ILdRf var_8C
  loc_B7CDD5: AryLdPr
  loc_B7CDD8: MemStUI1
  loc_B7CDDC: ILdRf var_E0
  loc_B7CDDF: LitI4 &H10
  loc_B7CDE4: AndI4
  loc_B7CDE5: LitI4 0
  loc_B7CDEA: EqI4
  loc_B7CDEB: CI4UI1
  loc_B7CDEC: LitI4 1
  loc_B7CDF1: AndI4
  loc_B7CDF2: CUI1I4
  loc_B7CDF4: FStUI1 var_EA
  loc_B7CDF8: FLdUI1
  loc_B7CDFC: LitI4 8
  loc_B7CE01: LitI4 4
  loc_B7CE06: ILdRf var_8C
  loc_B7CE09: AryLdPr
  loc_B7CE0C: MemStUI1
  loc_B7CE10: FLdUI1
  loc_B7CE14: ILdRf var_CC
  loc_B7CE17: LitI4 5
  loc_B7CE1C: SubI4
  loc_B7CE1D: LitI4 8
  loc_B7CE22: ILdRf var_8C
  loc_B7CE25: AryLdPr
  loc_B7CE28: MemStUI1
  loc_B7CE2C: ILdRf var_E0
  loc_B7CE2F: LitI4 8
  loc_B7CE34: AndI4
  loc_B7CE35: LitI4 0
  loc_B7CE3A: NeI4
  loc_B7CE3B: CI4UI1
  loc_B7CE3C: LitI4 1
  loc_B7CE41: AndI4
  loc_B7CE42: CUI1I4
  loc_B7CE44: FStUI1 var_EA
  loc_B7CE48: FLdUI1
  loc_B7CE4C: LitI4 8
  loc_B7CE51: LitI4 3
  loc_B7CE56: ILdRf var_8C
  loc_B7CE59: AryLdPr
  loc_B7CE5C: MemStUI1
  loc_B7CE60: FLdUI1
  loc_B7CE64: ILdRf var_CC
  loc_B7CE67: LitI4 4
  loc_B7CE6C: SubI4
  loc_B7CE6D: LitI4 8
  loc_B7CE72: ILdRf var_8C
  loc_B7CE75: AryLdPr
  loc_B7CE78: MemStUI1
  loc_B7CE7C: ILdRf var_E0
  loc_B7CE7F: LitI4 4
  loc_B7CE84: AndI4
  loc_B7CE85: LitI4 0
  loc_B7CE8A: NeI4
  loc_B7CE8B: CI4UI1
  loc_B7CE8C: LitI4 1
  loc_B7CE91: AndI4
  loc_B7CE92: CUI1I4
  loc_B7CE94: FStUI1 var_EA
  loc_B7CE98: FLdUI1
  loc_B7CE9C: LitI4 8
  loc_B7CEA1: LitI4 2
  loc_B7CEA6: ILdRf var_8C
  loc_B7CEA9: AryLdPr
  loc_B7CEAC: MemStUI1
  loc_B7CEB0: FLdUI1
  loc_B7CEB4: ILdRf var_CC
  loc_B7CEB7: LitI4 3
  loc_B7CEBC: SubI4
  loc_B7CEBD: LitI4 8
  loc_B7CEC2: ILdRf var_8C
  loc_B7CEC5: AryLdPr
  loc_B7CEC8: MemStUI1
  loc_B7CECC: ILdRf var_E0
  loc_B7CECF: LitI4 2
  loc_B7CED4: AndI4
  loc_B7CED5: LitI4 0
  loc_B7CEDA: EqI4
  loc_B7CEDB: CI4UI1
  loc_B7CEDC: LitI4 1
  loc_B7CEE1: AndI4
  loc_B7CEE2: CUI1I4
  loc_B7CEE4: FStUI1 var_EA
  loc_B7CEE8: FLdUI1
  loc_B7CEEC: LitI4 8
  loc_B7CEF1: LitI4 1
  loc_B7CEF6: ILdRf var_8C
  loc_B7CEF9: AryLdPr
  loc_B7CEFC: MemStUI1
  loc_B7CF00: FLdUI1
  loc_B7CF04: ILdRf var_CC
  loc_B7CF07: LitI4 2
  loc_B7CF0C: SubI4
  loc_B7CF0D: LitI4 8
  loc_B7CF12: ILdRf var_8C
  loc_B7CF15: AryLdPr
  loc_B7CF18: MemStUI1
  loc_B7CF1C: ILdRf var_E0
  loc_B7CF1F: LitI4 1
  loc_B7CF24: AndI4
  loc_B7CF25: CUI1I4
  loc_B7CF27: FStUI1 var_EA
  loc_B7CF2B: FLdUI1
  loc_B7CF2F: LitI4 8
  loc_B7CF34: LitI4 0
  loc_B7CF39: ILdRf var_8C
  loc_B7CF3C: AryLdPr
  loc_B7CF3F: MemStUI1
  loc_B7CF43: FLdUI1
  loc_B7CF47: ILdRf var_CC
  loc_B7CF4A: LitI4 1
  loc_B7CF4F: SubI4
  loc_B7CF50: LitI4 8
  loc_B7CF55: ILdRf var_8C
  loc_B7CF58: AryLdPr
  loc_B7CF5B: MemStUI1
  loc_B7CF5F: LitI4 0
  loc_B7CF64: LitI4 0
  loc_B7CF69: ILdRf var_8C
  loc_B7CF6C: AryLock
  loc_B7CF6F: AryLdRf
  loc_B7CF72: ImpAdCallI2 VarPtr()
  loc_B7CF77: FStR4 var_F0
  loc_B7CF7A: AryUnlock
  loc_B7CF7D: LitI4 1
  loc_B7CF82: LitI4 1
  loc_B7CF87: LitI4 4
  loc_B7CF8C: LitI4 4
  loc_B7CF91: ILdRf var_CC
  loc_B7CF94: LitI4 3
  loc_B7CF99: AddI4
  loc_B7CF9A: ILdRf var_CC
  loc_B7CF9D: LitI4 3
  loc_B7CFA2: AddI4
  loc_B7CFA3: ILdRf var_F0
  loc_B7CFA6: ImpAdCallI2 Proc_277_4_A127C0(, , , , , , )
  loc_B7CFAB: FStAdFunc var_88
  loc_B7CFAE: ExitProcCbHresult
End Function

Private Function Proc_278_9_991194(arg_C, arg_10, arg_14, arg_18) '991194
  'Data Table: 404C60
  loc_991140: ILdRf arg_18
  loc_991143: LitI4 0
  loc_991148: GtI4
  loc_991149: BranchF loc_991186
  loc_99114C: ILdRf arg_C
  loc_99114F: ILdRf arg_C
  loc_991152: AddI4
  loc_991153: FStR4 arg_C
  loc_991156: ILdRf arg_C
  loc_991159: ILdRf arg_14
  loc_99115C: AndI4
  loc_99115D: CBoolI4
  loc_99115F: BranchF loc_991177
  loc_991162: ILdRf arg_C
  loc_991165: ILdRf arg_10
  loc_991168: XorI4
  loc_99116A: ILdRf arg_14
  loc_99116D: LitI4 1
  loc_991172: SubI4
  loc_991173: AndI4
  loc_991174: FStR4 arg_C
  loc_991177: ILdRf arg_18
  loc_99117A: LitI4 1
  loc_99117F: SubI4
  loc_991180: FStR4 arg_18
  loc_991183: Branch loc_991140
  loc_991186: ILdRf arg_C
  loc_991189: FStR4 var_88
  loc_99118C: ExitProcCbHresult
End Function

Private Function Proc_278_10_A92CA8(arg_C, arg_10, arg_14) 'A92CA8
  'Data Table: 404C60
  loc_A927FC: ILdRf arg_14
  loc_A927FF: LitI4 0
  loc_A92804: LtI4
  loc_A92805: ILdRf arg_14
  loc_A92808: LitI4 7
  loc_A9280D: GtI4
  loc_A9280E: OrI4
  loc_A9280F: BranchF loc_A9281A
  loc_A92812: LitI4 0
  loc_A92817: FStR4 arg_14
  loc_A9281A: ILdRf arg_14
  loc_A9281D: FStR4 var_94
  loc_A92820: ILdRf var_94
  loc_A92823: LitI4 0
  loc_A92828: EqI4
  loc_A92829: BranchF loc_A928A7
  loc_A9282C: LitI4 0
  loc_A92831: FLdRfVar var_90
  loc_A92834: ILdRf arg_10
  loc_A92837: LitI4 1
  loc_A9283C: SubI4
  loc_A9283D: ForI4 var_9C
  loc_A92843: LitI4 0
  loc_A92848: FLdRfVar var_8C
  loc_A9284B: ILdRf arg_10
  loc_A9284E: LitI4 1
  loc_A92853: SubI4
  loc_A92854: ForI4 var_A4
  loc_A9285A: ILdRf var_8C
  loc_A9285D: ILdRf var_90
  loc_A92860: ILdI4 arg_C
  loc_A92863: AryLdPr
  loc_A92866: MemLdUI1 global_0
  loc_A9286A: CI4UI1
  loc_A9286B: ILdRf var_8C
  loc_A9286E: ILdRf var_90
  loc_A92871: XorI4
  loc_A92873: LitI4 1
  loc_A92878: XorI4
  loc_A9287A: LitI4 1
  loc_A9287F: AndI4
  loc_A92880: XorI4
  loc_A92882: CUI1I4
  loc_A92884: ILdRf var_8C
  loc_A92887: ILdRf var_90
  loc_A9288A: ILdI4 arg_C
  loc_A9288D: AryLdPr
  loc_A92890: MemStUI1
  loc_A92894: FLdRfVar var_8C
  loc_A92897: NextI4 var_A4, loc_A9285A
  loc_A9289C: FLdRfVar var_90
  loc_A9289F: NextI4 var_9C, loc_A92843
  loc_A928A4: Branch loc_A92C99
  loc_A928A7: ILdRf var_94
  loc_A928AA: LitI4 1
  loc_A928AF: EqI4
  loc_A928B0: BranchF loc_A92929
  loc_A928B3: LitI4 0
  loc_A928B8: FLdRfVar var_90
  loc_A928BB: ILdRf arg_10
  loc_A928BE: LitI4 1
  loc_A928C3: SubI4
  loc_A928C4: ForI4 var_AC
  loc_A928CA: LitI4 0
  loc_A928CF: FLdRfVar var_8C
  loc_A928D2: ILdRf arg_10
  loc_A928D5: LitI4 1
  loc_A928DA: SubI4
  loc_A928DB: ForI4 var_B4
  loc_A928E1: ILdRf var_8C
  loc_A928E4: ILdRf var_90
  loc_A928E7: ILdI4 arg_C
  loc_A928EA: AryLdPr
  loc_A928ED: MemLdUI1 global_0
  loc_A928F1: CI4UI1
  loc_A928F2: ILdRf var_90
  loc_A928F5: LitI4 1
  loc_A928FA: XorI4
  loc_A928FC: LitI4 1
  loc_A92901: AndI4
  loc_A92902: XorI4
  loc_A92904: CUI1I4
  loc_A92906: ILdRf var_8C
  loc_A92909: ILdRf var_90
  loc_A9290C: ILdI4 arg_C
  loc_A9290F: AryLdPr
  loc_A92912: MemStUI1
  loc_A92916: FLdRfVar var_8C
  loc_A92919: NextI4 var_B4, loc_A928E1
  loc_A9291E: FLdRfVar var_90
  loc_A92921: NextI4 var_AC, loc_A928CA
  loc_A92926: Branch loc_A92C99
  loc_A92929: ILdRf var_94
  loc_A9292C: LitI4 2
  loc_A92931: EqI4
  loc_A92932: BranchF loc_A929B1
  loc_A92935: LitI4 0
  loc_A9293A: FLdRfVar var_90
  loc_A9293D: ILdRf arg_10
  loc_A92940: LitI4 1
  loc_A92945: SubI4
  loc_A92946: ForI4 var_BC
  loc_A9294C: LitI4 0
  loc_A92951: FLdRfVar var_8C
  loc_A92954: ILdRf arg_10
  loc_A92957: LitI4 1
  loc_A9295C: SubI4
  loc_A9295D: ForI4 var_C4
  loc_A92963: ILdRf var_8C
  loc_A92966: ILdRf var_90
  loc_A92969: ILdI4 arg_C
  loc_A9296C: AryLdPr
  loc_A9296F: MemLdUI1 global_0
  loc_A92973: CI4UI1
  loc_A92974: ILdRf var_8C
  loc_A92977: LitI4 3
  loc_A9297C: ModI4
  loc_A9297D: LitI4 0
  loc_A92982: EqI4
  loc_A92983: CI4UI1
  loc_A92984: LitI4 1
  loc_A92989: AndI4
  loc_A9298A: XorI4
  loc_A9298C: CUI1I4
  loc_A9298E: ILdRf var_8C
  loc_A92991: ILdRf var_90
  loc_A92994: ILdI4 arg_C
  loc_A92997: AryLdPr
  loc_A9299A: MemStUI1
  loc_A9299E: FLdRfVar var_8C
  loc_A929A1: NextI4 var_C4, loc_A92963
  loc_A929A6: FLdRfVar var_90
  loc_A929A9: NextI4 var_BC, loc_A9294C
  loc_A929AE: Branch loc_A92C99
  loc_A929B1: ILdRf var_94
  loc_A929B4: LitI4 3
  loc_A929B9: EqI4
  loc_A929BA: BranchF loc_A92A3D
  loc_A929BD: LitI4 0
  loc_A929C2: FLdRfVar var_90
  loc_A929C5: ILdRf arg_10
  loc_A929C8: LitI4 1
  loc_A929CD: SubI4
  loc_A929CE: ForI4 var_CC
  loc_A929D4: LitI4 0
  loc_A929D9: FLdRfVar var_8C
  loc_A929DC: ILdRf arg_10
  loc_A929DF: LitI4 1
  loc_A929E4: SubI4
  loc_A929E5: ForI4 var_D4
  loc_A929EB: ILdRf var_8C
  loc_A929EE: ILdRf var_90
  loc_A929F1: ILdI4 arg_C
  loc_A929F4: AryLdPr
  loc_A929F7: MemLdUI1 global_0
  loc_A929FB: CI4UI1
  loc_A929FC: ILdRf var_8C
  loc_A929FF: ILdRf var_90
  loc_A92A02: AddI4
  loc_A92A03: LitI4 3
  loc_A92A08: ModI4
  loc_A92A09: LitI4 0
  loc_A92A0E: EqI4
  loc_A92A0F: CI4UI1
  loc_A92A10: LitI4 1
  loc_A92A15: AndI4
  loc_A92A16: XorI4
  loc_A92A18: CUI1I4
  loc_A92A1A: ILdRf var_8C
  loc_A92A1D: ILdRf var_90
  loc_A92A20: ILdI4 arg_C
  loc_A92A23: AryLdPr
  loc_A92A26: MemStUI1
  loc_A92A2A: FLdRfVar var_8C
  loc_A92A2D: NextI4 var_D4, loc_A929EB
  loc_A92A32: FLdRfVar var_90
  loc_A92A35: NextI4 var_CC, loc_A929D4
  loc_A92A3A: Branch loc_A92C99
  loc_A92A3D: ILdRf var_94
  loc_A92A40: LitI4 4
  loc_A92A45: EqI4
  loc_A92A46: BranchF loc_A92ACF
  loc_A92A49: LitI4 0
  loc_A92A4E: FLdRfVar var_90
  loc_A92A51: ILdRf arg_10
  loc_A92A54: LitI4 1
  loc_A92A59: SubI4
  loc_A92A5A: ForI4 var_DC
  loc_A92A60: LitI4 0
  loc_A92A65: FLdRfVar var_8C
  loc_A92A68: ILdRf arg_10
  loc_A92A6B: LitI4 1
  loc_A92A70: SubI4
  loc_A92A71: ForI4 var_E4
  loc_A92A77: ILdRf var_8C
  loc_A92A7A: ILdRf var_90
  loc_A92A7D: ILdI4 arg_C
  loc_A92A80: AryLdPr
  loc_A92A83: MemLdUI1 global_0
  loc_A92A87: CI4UI1
  loc_A92A88: ILdRf var_90
  loc_A92A8B: LitI4 2
  loc_A92A90: IDvI4
  loc_A92A91: ILdRf var_8C
  loc_A92A94: LitI4 3
  loc_A92A99: IDvI4
  loc_A92A9A: AddI4
  loc_A92A9B: LitI4 1
  loc_A92AA0: XorI4
  loc_A92AA2: LitI4 1
  loc_A92AA7: AndI4
  loc_A92AA8: XorI4
  loc_A92AAA: CUI1I4
  loc_A92AAC: ILdRf var_8C
  loc_A92AAF: ILdRf var_90
  loc_A92AB2: ILdI4 arg_C
  loc_A92AB5: AryLdPr
  loc_A92AB8: MemStUI1
  loc_A92ABC: FLdRfVar var_8C
  loc_A92ABF: NextI4 var_E4, loc_A92A77
  loc_A92AC4: FLdRfVar var_90
  loc_A92AC7: NextI4 var_DC, loc_A92A60
  loc_A92ACC: Branch loc_A92C99
  loc_A92ACF: ILdRf var_94
  loc_A92AD2: LitI4 5
  loc_A92AD7: EqI4
  loc_A92AD8: BranchF loc_A92B69
  loc_A92ADB: LitI4 0
  loc_A92AE0: FLdRfVar var_90
  loc_A92AE3: ILdRf arg_10
  loc_A92AE6: LitI4 1
  loc_A92AEB: SubI4
  loc_A92AEC: ForI4 var_EC
  loc_A92AF2: LitI4 0
  loc_A92AF7: FLdRfVar var_8C
  loc_A92AFA: ILdRf arg_10
  loc_A92AFD: LitI4 1
  loc_A92B02: SubI4
  loc_A92B03: ForI4 var_F4
  loc_A92B09: ILdRf var_8C
  loc_A92B0C: ILdRf var_90
  loc_A92B0F: ILdI4 arg_C
  loc_A92B12: AryLdPr
  loc_A92B15: MemLdUI1 global_0
  loc_A92B19: CI4UI1
  loc_A92B1A: ILdRf var_8C
  loc_A92B1D: ILdRf var_90
  loc_A92B20: AndI4
  loc_A92B21: LitI4 1
  loc_A92B26: AndI4
  loc_A92B27: ILdRf var_8C
  loc_A92B2A: ILdRf var_90
  loc_A92B2D: MulI4
  loc_A92B2E: LitI4 3
  loc_A92B33: ModI4
  loc_A92B34: AddI4
  loc_A92B35: LitI4 0
  loc_A92B3A: EqI4
  loc_A92B3B: CI4UI1
  loc_A92B3C: LitI4 1
  loc_A92B41: AndI4
  loc_A92B42: XorI4
  loc_A92B44: CUI1I4
  loc_A92B46: ILdRf var_8C
  loc_A92B49: ILdRf var_90
  loc_A92B4C: ILdI4 arg_C
  loc_A92B4F: AryLdPr
  loc_A92B52: MemStUI1
  loc_A92B56: FLdRfVar var_8C
  loc_A92B59: NextI4 var_F4, loc_A92B09
  loc_A92B5E: FLdRfVar var_90
  loc_A92B61: NextI4 var_EC, loc_A92AF2
  loc_A92B66: Branch loc_A92C99
  loc_A92B69: ILdRf var_94
  loc_A92B6C: LitI4 6
  loc_A92B71: EqI4
  loc_A92B72: BranchF loc_A92C02
  loc_A92B75: LitI4 0
  loc_A92B7A: FLdRfVar var_90
  loc_A92B7D: ILdRf arg_10
  loc_A92B80: LitI4 1
  loc_A92B85: SubI4
  loc_A92B86: ForI4 var_FC
  loc_A92B8C: LitI4 0
  loc_A92B91: FLdRfVar var_8C
  loc_A92B94: ILdRf arg_10
  loc_A92B97: LitI4 1
  loc_A92B9C: SubI4
  loc_A92B9D: ForI4 var_104
  loc_A92BA3: ILdRf var_8C
  loc_A92BA6: ILdRf var_90
  loc_A92BA9: ILdI4 arg_C
  loc_A92BAC: AryLdPr
  loc_A92BAF: MemLdUI1 global_0
  loc_A92BB3: CI4UI1
  loc_A92BB4: ILdRf var_8C
  loc_A92BB7: ILdRf var_90
  loc_A92BBA: AndI4
  loc_A92BBB: LitI4 1
  loc_A92BC0: AndI4
  loc_A92BC1: ILdRf var_8C
  loc_A92BC4: ILdRf var_90
  loc_A92BC7: MulI4
  loc_A92BC8: LitI4 3
  loc_A92BCD: ModI4
  loc_A92BCE: AddI4
  loc_A92BCF: LitI4 1
  loc_A92BD4: AddI4
  loc_A92BD5: LitI4 1
  loc_A92BDA: AndI4
  loc_A92BDB: XorI4
  loc_A92BDD: CUI1I4
  loc_A92BDF: ILdRf var_8C
  loc_A92BE2: ILdRf var_90
  loc_A92BE5: ILdI4 arg_C
  loc_A92BE8: AryLdPr
  loc_A92BEB: MemStUI1
  loc_A92BEF: FLdRfVar var_8C
  loc_A92BF2: NextI4 var_104, loc_A92BA3
  loc_A92BF7: FLdRfVar var_90
  loc_A92BFA: NextI4 var_FC, loc_A92B8C
  loc_A92BFF: Branch loc_A92C99
  loc_A92C02: ILdRf var_94
  loc_A92C05: LitI4 7
  loc_A92C0A: EqI4
  loc_A92C0B: BranchF loc_A92C99
  loc_A92C0E: LitI4 0
  loc_A92C13: FLdRfVar var_90
  loc_A92C16: ILdRf arg_10
  loc_A92C19: LitI4 1
  loc_A92C1E: SubI4
  loc_A92C1F: ForI4 var_10C
  loc_A92C25: LitI4 0
  loc_A92C2A: FLdRfVar var_8C
  loc_A92C2D: ILdRf arg_10
  loc_A92C30: LitI4 1
  loc_A92C35: SubI4
  loc_A92C36: ForI4 var_114
  loc_A92C3C: ILdRf var_8C
  loc_A92C3F: ILdRf var_90
  loc_A92C42: ILdI4 arg_C
  loc_A92C45: AryLdPr
  loc_A92C48: MemLdUI1 global_0
  loc_A92C4C: CI4UI1
  loc_A92C4D: ILdRf var_8C
  loc_A92C50: ILdRf var_90
  loc_A92C53: XorI4
  loc_A92C55: LitI4 1
  loc_A92C5A: AndI4
  loc_A92C5B: ILdRf var_8C
  loc_A92C5E: ILdRf var_90
  loc_A92C61: MulI4
  loc_A92C62: LitI4 3
  loc_A92C67: ModI4
  loc_A92C68: AddI4
  loc_A92C69: LitI4 1
  loc_A92C6E: AddI4
  loc_A92C6F: LitI4 1
  loc_A92C74: AndI4
  loc_A92C75: XorI4
  loc_A92C77: CUI1I4
  loc_A92C79: ILdRf var_8C
  loc_A92C7C: ILdRf var_90
  loc_A92C7F: ILdI4 arg_C
  loc_A92C82: AryLdPr
  loc_A92C85: MemStUI1
  loc_A92C89: FLdRfVar var_8C
  loc_A92C8C: NextI4 var_114, loc_A92C3C
  loc_A92C91: FLdRfVar var_90
  loc_A92C94: NextI4 var_10C, loc_A92C25
  loc_A92C99: ILdRf arg_14
  loc_A92C9C: FStR4 var_88
  loc_A92C9F: ExitProcCbHresult
End Function

Private Function Proc_278_11_A9993C(arg_C, arg_10) 'A9993C
  'Data Table: 404C60
  loc_A99468: ILdRf arg_10
  loc_A9946B: FStR4 var_A0
  loc_A9946E: ILdRf var_A0
  loc_A99471: LitI4 -4
  loc_A99476: LitI4 -1
  loc_A9947B: BetweenI4
  loc_A9947D: BranchF loc_A99483
  loc_A99480: Branch loc_A9993B
  loc_A99483: ILdRf var_A0
  loc_A99486: LitI4 1
  loc_A9948B: LitI4 &H28
  loc_A99490: BetweenI4
  loc_A99492: BranchF loc_A9993B
  loc_A99495: FLdRfVar var_A4
  loc_A99498: ILdRf arg_10
  loc_A9949B: ILdRf Me
  loc_A9949E: ImpAdCallNonVirt
  loc_A994A4: ILdRf var_A4
  loc_A994A7: FStR4 var_88
  loc_A994AA: LitI4 0
  loc_A994AF: FLdRfVar var_90
  loc_A994B2: LitI4 7
  loc_A994B7: ForI4 var_AC
  loc_A994BD: LitI4 0
  loc_A994C2: FLdRfVar var_8C
  loc_A994C5: LitI4 7
  loc_A994CA: ForI4 var_B4
  loc_A994D0: ILdRf var_8C
  loc_A994D3: LitI4 1
  loc_A994D8: EqI4
  loc_A994D9: ILdRf var_8C
  loc_A994DC: LitI4 5
  loc_A994E1: EqI4
  loc_A994E2: OrI4
  loc_A994E3: ILdRf var_90
  loc_A994E6: LitI4 1
  loc_A994EB: GeI4
  loc_A994EC: AndI4
  loc_A994ED: ILdRf var_90
  loc_A994F0: LitI4 5
  loc_A994F5: LeI4
  loc_A994F6: AndI4
  loc_A994F7: ILdRf var_90
  loc_A994FA: LitI4 1
  loc_A994FF: EqI4
  loc_A99500: ILdRf var_90
  loc_A99503: LitI4 5
  loc_A99508: EqI4
  loc_A99509: OrI4
  loc_A9950A: ILdRf var_8C
  loc_A9950D: LitI4 1
  loc_A99512: GeI4
  loc_A99513: AndI4
  loc_A99514: ILdRf var_8C
  loc_A99517: LitI4 5
  loc_A9951C: LeI4
  loc_A9951D: AndI4
  loc_A9951E: OrI4
  loc_A9951F: ILdRf var_8C
  loc_A99522: LitI4 7
  loc_A99527: EqI4
  loc_A99528: OrI4
  loc_A99529: ILdRf var_90
  loc_A9952C: LitI4 7
  loc_A99531: EqI4
  loc_A99532: OrI4
  loc_A99533: BranchF loc_A99589
  loc_A99536: LitI2_Byte 2
  loc_A99538: CUI1I2
  loc_A9953A: ILdRf var_8C
  loc_A9953D: ILdRf var_90
  loc_A99540: ILdI4 arg_C
  loc_A99543: AryLdPr
  loc_A99546: MemStUI1
  loc_A9954A: LitI2_Byte 2
  loc_A9954C: CUI1I2
  loc_A9954E: ILdRf var_88
  loc_A99551: LitI4 1
  loc_A99556: SubI4
  loc_A99557: ILdRf var_8C
  loc_A9955A: SubI4
  loc_A9955B: ILdRf var_90
  loc_A9955E: ILdI4 arg_C
  loc_A99561: AryLdPr
  loc_A99564: MemStUI1
  loc_A99568: LitI2_Byte 2
  loc_A9956A: CUI1I2
  loc_A9956C: ILdRf var_8C
  loc_A9956F: ILdRf var_88
  loc_A99572: LitI4 1
  loc_A99577: SubI4
  loc_A99578: ILdRf var_90
  loc_A9957B: SubI4
  loc_A9957C: ILdI4 arg_C
  loc_A9957F: AryLdPr
  loc_A99582: MemStUI1
  loc_A99586: Branch loc_A995D9
  loc_A99589: LitI2_Byte 1
  loc_A9958B: CUI1I2
  loc_A9958D: ILdRf var_8C
  loc_A99590: ILdRf var_90
  loc_A99593: ILdI4 arg_C
  loc_A99596: AryLdPr
  loc_A99599: MemStUI1
  loc_A9959D: LitI2_Byte 1
  loc_A9959F: CUI1I2
  loc_A995A1: ILdRf var_88
  loc_A995A4: LitI4 1
  loc_A995A9: SubI4
  loc_A995AA: ILdRf var_8C
  loc_A995AD: SubI4
  loc_A995AE: ILdRf var_90
  loc_A995B1: ILdI4 arg_C
  loc_A995B4: AryLdPr
  loc_A995B7: MemStUI1
  loc_A995BB: LitI2_Byte 1
  loc_A995BD: CUI1I2
  loc_A995BF: ILdRf var_8C
  loc_A995C2: ILdRf var_88
  loc_A995C5: LitI4 1
  loc_A995CA: SubI4
  loc_A995CB: ILdRf var_90
  loc_A995CE: SubI4
  loc_A995CF: ILdI4 arg_C
  loc_A995D2: AryLdPr
  loc_A995D5: MemStUI1
  loc_A995D9: FLdRfVar var_8C
  loc_A995DC: NextI4 var_B4, loc_A994D0
  loc_A995E1: FLdRfVar var_90
  loc_A995E4: NextI4 var_AC, loc_A994BD
  loc_A995E9: LitI4 0
  loc_A995EE: FLdRfVar var_8C
  loc_A995F1: LitI4 7
  loc_A995F6: ForI4 var_BC
  loc_A995FC: LitI2_Byte 2
  loc_A995FE: CUI1I2
  loc_A99600: ILdRf var_8C
  loc_A99603: LitI4 8
  loc_A99608: ILdI4 arg_C
  loc_A9960B: AryLdPr
  loc_A9960E: MemStUI1
  loc_A99612: LitI2_Byte 2
  loc_A99614: CUI1I2
  loc_A99616: LitI4 8
  loc_A9961B: ILdRf var_8C
  loc_A9961E: ILdI4 arg_C
  loc_A99621: AryLdPr
  loc_A99624: MemStUI1
  loc_A99628: LitI2_Byte 2
  loc_A9962A: CUI1I2
  loc_A9962C: ILdRf var_88
  loc_A9962F: LitI4 1
  loc_A99634: SubI4
  loc_A99635: ILdRf var_8C
  loc_A99638: SubI4
  loc_A99639: LitI4 8
  loc_A9963E: ILdI4 arg_C
  loc_A99641: AryLdPr
  loc_A99644: MemStUI1
  loc_A99648: LitI2_Byte 2
  loc_A9964A: CUI1I2
  loc_A9964C: LitI4 8
  loc_A99651: ILdRf var_88
  loc_A99654: LitI4 1
  loc_A99659: SubI4
  loc_A9965A: ILdRf var_8C
  loc_A9965D: SubI4
  loc_A9965E: ILdI4 arg_C
  loc_A99661: AryLdPr
  loc_A99664: MemStUI1
  loc_A99668: FLdRfVar var_8C
  loc_A9966B: NextI4 var_BC, loc_A995FC
  loc_A99670: LitI2_Byte 2
  loc_A99672: CUI1I2
  loc_A99674: LitI4 8
  loc_A99679: LitI4 8
  loc_A9967E: ILdI4 arg_C
  loc_A99681: AryLdPr
  loc_A99684: MemStUI1
  loc_A99688: LitI2_Byte 1
  loc_A9968A: CUI1I2
  loc_A9968C: LitI4 8
  loc_A99691: ILdRf var_88
  loc_A99694: LitI4 8
  loc_A99699: SubI4
  loc_A9969A: ILdI4 arg_C
  loc_A9969D: AryLdPr
  loc_A996A0: MemStUI1
  loc_A996A4: ILdRf arg_10
  loc_A996A7: LitI4 7
  loc_A996AC: GeI4
  loc_A996AD: BranchF loc_A99716
  loc_A996B0: ILdRf var_88
  loc_A996B3: LitI4 &HB
  loc_A996B8: SubI4
  loc_A996B9: FLdRfVar var_90
  loc_A996BC: ILdRf var_88
  loc_A996BF: LitI4 9
  loc_A996C4: SubI4
  loc_A996C5: ForI4 var_C4
  loc_A996CB: LitI4 0
  loc_A996D0: FLdRfVar var_8C
  loc_A996D3: LitI4 6
  loc_A996D8: ForI4 var_CC
  loc_A996DE: LitI2_Byte 2
  loc_A996E0: CUI1I2
  loc_A996E2: ILdRf var_8C
  loc_A996E5: ILdRf var_90
  loc_A996E8: ILdI4 arg_C
  loc_A996EB: AryLdPr
  loc_A996EE: MemStUI1
  loc_A996F2: LitI2_Byte 2
  loc_A996F4: CUI1I2
  loc_A996F6: ILdRf var_90
  loc_A996F9: ILdRf var_8C
  loc_A996FC: ILdI4 arg_C
  loc_A996FF: AryLdPr
  loc_A99702: MemStUI1
  loc_A99706: FLdRfVar var_8C
  loc_A99709: NextI4 var_CC, loc_A996DE
  loc_A9970E: FLdRfVar var_90
  loc_A99711: NextI4 var_C4, loc_A996CB
  loc_A99716: LitI4 8
  loc_A9971B: FLdRfVar var_8C
  loc_A9971E: ILdRf var_88
  loc_A99721: LitI4 9
  loc_A99726: SubI4
  loc_A99727: ForI4 var_D4
  loc_A9972D: LitI4 1
  loc_A99732: ILdRf var_8C
  loc_A99735: LitI4 1
  loc_A9973A: AndI4
  loc_A9973B: AddI4
  loc_A9973C: CUI1I4
  loc_A9973E: ILdRf var_8C
  loc_A99741: LitI4 6
  loc_A99746: ILdI4 arg_C
  loc_A99749: AryLdPr
  loc_A9974C: MemStUI1
  loc_A99750: LitI4 1
  loc_A99755: ILdRf var_8C
  loc_A99758: LitI4 1
  loc_A9975D: AndI4
  loc_A9975E: AddI4
  loc_A9975F: CUI1I4
  loc_A99761: LitI4 6
  loc_A99766: ILdRf var_8C
  loc_A99769: ILdI4 arg_C
  loc_A9976C: AryLdPr
  loc_A9976F: MemStUI1
  loc_A99773: FLdRfVar var_8C
  loc_A99776: NextI4 var_D4, loc_A9972D
  loc_A9977B: ILdRf arg_10
  loc_A9977E: LitI4 1
  loc_A99783: GtI4
  loc_A99784: BranchF loc_A9993B
  loc_A99787: ILdRf arg_10
  loc_A9978A: FLdPr Me
  loc_A9978D: MemLdRfVar from_stack_1.global_64
  loc_A99790: Ary1LdUI1
  loc_A99792: CI4UI1
  loc_A99793: FStR4 var_9C
  loc_A99796: ILdRf var_88
  loc_A99799: LitI4 7
  loc_A9979E: SubI4
  loc_A9979F: FLdRfVar var_90
  loc_A997A2: LitI4 &H12
  loc_A997A7: ILdRf var_9C
  loc_A997AA: UMiI4
  loc_A997AB: ForStepI4 var_DC
  loc_A997B1: ILdRf var_88
  loc_A997B4: LitI4 7
  loc_A997B9: SubI4
  loc_A997BA: FLdRfVar var_8C
  loc_A997BD: LitI4 &H12
  loc_A997C2: ILdRf var_9C
  loc_A997C5: UMiI4
  loc_A997C6: ForStepI4 var_E4
  loc_A997CC: LitI4 -2
  loc_A997D1: FLdRfVar var_98
  loc_A997D4: LitI4 2
  loc_A997D9: ForI4 var_EC
  loc_A997DF: LitI4 -2
  loc_A997E4: FLdRfVar var_94
  loc_A997E7: LitI4 2
  loc_A997EC: ForI4 var_F4
  loc_A997F2: LitI2_Byte 2
  loc_A997F4: ILdRf var_94
  loc_A997F7: LitI4 2
  loc_A997FC: EqI4
  loc_A997FD: ILdRf var_94
  loc_A99800: LitI4 -2
  loc_A99805: EqI4
  loc_A99806: OrI4
  loc_A99807: ILdRf var_98
  loc_A9980A: LitI4 2
  loc_A9980F: EqI4
  loc_A99810: OrI4
  loc_A99811: ILdRf var_98
  loc_A99814: LitI4 -2
  loc_A99819: EqI4
  loc_A9981A: OrI4
  loc_A9981B: ILdRf var_94
  loc_A9981E: ILdRf var_98
  loc_A99821: OrI4
  loc_A99822: LitI4 0
  loc_A99827: EqI4
  loc_A99828: OrI4
  loc_A99829: AddI2
  loc_A9982A: CUI1I2
  loc_A9982C: ILdRf var_8C
  loc_A9982F: ILdRf var_94
  loc_A99832: AddI4
  loc_A99833: ILdRf var_90
  loc_A99836: ILdRf var_98
  loc_A99839: AddI4
  loc_A9983A: ILdI4 arg_C
  loc_A9983D: AryLdPr
  loc_A99840: MemStUI1
  loc_A99844: FLdRfVar var_94
  loc_A99847: NextI4 var_F4, loc_A997F2
  loc_A9984C: FLdRfVar var_98
  loc_A9984F: NextI4 var_EC, loc_A997DF
  loc_A99854: FLdRfVar var_8C
  loc_A99857: NextStepI4 var_E4, loc_A997CC
  loc_A9985C: FLdRfVar var_90
  loc_A9985F: NextStepI4 var_DC, loc_A997B1
  loc_A99864: ILdRf var_88
  loc_A99867: LitI4 7
  loc_A9986C: SubI4
  loc_A9986D: ILdRf var_9C
  loc_A99870: SubI4
  loc_A99871: FLdRfVar var_8C
  loc_A99874: LitI4 &H12
  loc_A99879: ILdRf var_9C
  loc_A9987C: UMiI4
  loc_A9987D: ForStepI4 var_FC
  loc_A99883: LitI4 -2
  loc_A99888: FLdRfVar var_98
  loc_A9988B: LitI4 2
  loc_A99890: ForI4 var_104
  loc_A99896: LitI4 -2
  loc_A9989B: FLdRfVar var_94
  loc_A9989E: LitI4 2
  loc_A998A3: ForI4 var_10C
  loc_A998A9: LitI2_Byte 2
  loc_A998AB: ILdRf var_94
  loc_A998AE: LitI4 2
  loc_A998B3: EqI4
  loc_A998B4: ILdRf var_94
  loc_A998B7: LitI4 -2
  loc_A998BC: EqI4
  loc_A998BD: OrI4
  loc_A998BE: ILdRf var_98
  loc_A998C1: LitI4 2
  loc_A998C6: EqI4
  loc_A998C7: OrI4
  loc_A998C8: ILdRf var_98
  loc_A998CB: LitI4 -2
  loc_A998D0: EqI4
  loc_A998D1: OrI4
  loc_A998D2: ILdRf var_94
  loc_A998D5: ILdRf var_98
  loc_A998D8: OrI4
  loc_A998D9: LitI4 0
  loc_A998DE: EqI4
  loc_A998DF: OrI4
  loc_A998E0: AddI2
  loc_A998E1: CI4UI1
  loc_A998E2: FStR4 var_90
  loc_A998E5: ILdRf var_90
  loc_A998E8: CUI1I4
  loc_A998EA: ILdRf var_8C
  loc_A998ED: ILdRf var_94
  loc_A998F0: AddI4
  loc_A998F1: LitI4 6
  loc_A998F6: ILdRf var_98
  loc_A998F9: AddI4
  loc_A998FA: ILdI4 arg_C
  loc_A998FD: AryLdPr
  loc_A99900: MemStUI1
  loc_A99904: ILdRf var_90
  loc_A99907: CUI1I4
  loc_A99909: LitI4 6
  loc_A9990E: ILdRf var_98
  loc_A99911: AddI4
  loc_A99912: ILdRf var_8C
  loc_A99915: ILdRf var_94
  loc_A99918: AddI4
  loc_A99919: ILdI4 arg_C
  loc_A9991C: AryLdPr
  loc_A9991F: MemStUI1
  loc_A99923: FLdRfVar var_94
  loc_A99926: NextI4 var_10C, loc_A998A9
  loc_A9992B: FLdRfVar var_98
  loc_A9992E: NextI4 var_104, loc_A99896
  loc_A99933: FLdRfVar var_8C
  loc_A99936: NextStepI4 var_FC, loc_A99883
  loc_A9993B: ExitProcHresult
End Function

Private Function Proc_278_12_9E3554() '9E3554
  'Data Table: 404C60
  loc_9E342C: FLdUI1
  loc_9E3430: FStUI1 var_8A
  loc_9E3434: FLdUI1
  loc_9E3438: LitI4 &H30
  loc_9E343D: CUI1I4
  loc_9E343F: LitI4 &H39
  loc_9E3444: CUI1I4
  loc_9E3446: BetweenUI1
  loc_9E3448: BranchF loc_9E345B
  loc_9E344B: FLdUI1
  loc_9E344F: CI2UI1
  loc_9E3451: LitI2_Byte &H30
  loc_9E3453: SubI2
  loc_9E3454: CI4UI1
  loc_9E3455: FStR4 var_88
  loc_9E3458: Branch loc_9E354E
  loc_9E345B: FLdUI1
  loc_9E345F: LitI4 &H41
  loc_9E3464: CUI1I4
  loc_9E3466: LitI4 &H5A
  loc_9E346B: CUI1I4
  loc_9E346D: BetweenUI1
  loc_9E346F: BranchF loc_9E3482
  loc_9E3472: FLdUI1
  loc_9E3476: CI2UI1
  loc_9E3478: LitI2_Byte &H37
  loc_9E347A: SubI2
  loc_9E347B: CI4UI1
  loc_9E347C: FStR4 var_88
  loc_9E347F: Branch loc_9E354E
  loc_9E3482: FLdUI1
  loc_9E3486: LitI2_Byte &H20
  loc_9E3488: CUI1I2
  loc_9E348A: EqI2
  loc_9E348B: BranchF loc_9E3499
  loc_9E348E: LitI4 &H24
  loc_9E3493: FStR4 var_88
  loc_9E3496: Branch loc_9E354E
  loc_9E3499: FLdUI1
  loc_9E349D: LitI2_Byte &H24
  loc_9E349F: CUI1I2
  loc_9E34A1: EqI2
  loc_9E34A2: BranchF loc_9E34B0
  loc_9E34A5: LitI4 &H25
  loc_9E34AA: FStR4 var_88
  loc_9E34AD: Branch loc_9E354E
  loc_9E34B0: FLdUI1
  loc_9E34B4: LitI2_Byte &H25
  loc_9E34B6: CUI1I2
  loc_9E34B8: EqI2
  loc_9E34B9: BranchF loc_9E34C7
  loc_9E34BC: LitI4 &H26
  loc_9E34C1: FStR4 var_88
  loc_9E34C4: Branch loc_9E354E
  loc_9E34C7: FLdUI1
  loc_9E34CB: LitI2_Byte &H2A
  loc_9E34CD: CUI1I2
  loc_9E34CF: EqI2
  loc_9E34D0: BranchF loc_9E34DE
  loc_9E34D3: LitI4 &H27
  loc_9E34D8: FStR4 var_88
  loc_9E34DB: Branch loc_9E354E
  loc_9E34DE: FLdUI1
  loc_9E34E2: LitI2_Byte &H2B
  loc_9E34E4: CUI1I2
  loc_9E34E6: EqI2
  loc_9E34E7: BranchF loc_9E34F5
  loc_9E34EA: LitI4 &H28
  loc_9E34EF: FStR4 var_88
  loc_9E34F2: Branch loc_9E354E
  loc_9E34F5: FLdUI1
  loc_9E34F9: LitI2_Byte &H2D
  loc_9E34FB: CUI1I2
  loc_9E34FD: EqI2
  loc_9E34FE: BranchF loc_9E350C
  loc_9E3501: LitI4 &H29
  loc_9E3506: FStR4 var_88
  loc_9E3509: Branch loc_9E354E
  loc_9E350C: FLdUI1
  loc_9E3510: LitI2_Byte &H2E
  loc_9E3512: CUI1I2
  loc_9E3514: EqI2
  loc_9E3515: BranchF loc_9E3523
  loc_9E3518: LitI4 &H2A
  loc_9E351D: FStR4 var_88
  loc_9E3520: Branch loc_9E354E
  loc_9E3523: FLdUI1
  loc_9E3527: LitI2_Byte &H2F
  loc_9E3529: CUI1I2
  loc_9E352B: EqI2
  loc_9E352C: BranchF loc_9E353A
  loc_9E352F: LitI4 &H2B
  loc_9E3534: FStR4 var_88
  loc_9E3537: Branch loc_9E354E
  loc_9E353A: FLdUI1
  loc_9E353E: LitI2_Byte &H3A
  loc_9E3540: CUI1I2
  loc_9E3542: EqI2
  loc_9E3543: BranchF loc_9E354E
  loc_9E3546: LitI4 &H2C
  loc_9E354B: FStR4 var_88
  loc_9E354E: ExitProcCbHresult
End Function

Private Function Proc_278_13_9B613C() '9B613C
  'Data Table: 404C60
  loc_9B607C: FLdUI1
  loc_9B6080: FStUI1 var_8A
  loc_9B6084: FLdUI1
  loc_9B6088: LitI4 &H30
  loc_9B608D: CUI1I4
  loc_9B608F: LitI4 &H39
  loc_9B6094: CUI1I4
  loc_9B6096: BetweenUI1
  loc_9B6098: BranchF loc_9B60A6
  loc_9B609B: LitI4 1
  loc_9B60A0: FStR4 var_88
  loc_9B60A3: Branch loc_9B6134
  loc_9B60A6: FLdUI1
  loc_9B60AA: LitI4 &H41
  loc_9B60AF: CUI1I4
  loc_9B60B1: LitI4 &H5A
  loc_9B60B6: CUI1I4
  loc_9B60B8: BetweenUI1
  loc_9B60BA: BranchT loc_9B612C
  loc_9B60BD: FLdUI1
  loc_9B60C1: LitI2_Byte &H20
  loc_9B60C3: CUI1I2
  loc_9B60C5: EqI2
  loc_9B60C6: BranchT loc_9B612C
  loc_9B60C9: FLdUI1
  loc_9B60CD: LitI2_Byte &H24
  loc_9B60CF: CUI1I2
  loc_9B60D1: EqI2
  loc_9B60D2: BranchT loc_9B612C
  loc_9B60D5: FLdUI1
  loc_9B60D9: LitI2_Byte &H25
  loc_9B60DB: CUI1I2
  loc_9B60DD: EqI2
  loc_9B60DE: BranchT loc_9B612C
  loc_9B60E1: FLdUI1
  loc_9B60E5: LitI2_Byte &H2A
  loc_9B60E7: CUI1I2
  loc_9B60E9: EqI2
  loc_9B60EA: BranchT loc_9B612C
  loc_9B60ED: FLdUI1
  loc_9B60F1: LitI2_Byte &H2B
  loc_9B60F3: CUI1I2
  loc_9B60F5: EqI2
  loc_9B60F6: BranchT loc_9B612C
  loc_9B60F9: FLdUI1
  loc_9B60FD: LitI2_Byte &H2D
  loc_9B60FF: CUI1I2
  loc_9B6101: EqI2
  loc_9B6102: BranchT loc_9B612C
  loc_9B6105: FLdUI1
  loc_9B6109: LitI4 &H2E
  loc_9B610E: CUI1I4
  loc_9B6110: EqI2
  loc_9B6111: BranchT loc_9B612C
  loc_9B6114: FLdUI1
  loc_9B6118: LitI2_Byte &H2F
  loc_9B611A: CUI1I2
  loc_9B611C: EqI2
  loc_9B611D: BranchT loc_9B612C
  loc_9B6120: FLdUI1
  loc_9B6124: LitI2_Byte &H3A
  loc_9B6126: CUI1I2
  loc_9B6128: EqI2
  loc_9B6129: BranchF loc_9B6134
  loc_9B612C: LitI4 2
  loc_9B6131: FStR4 var_88
  loc_9B6134: ExitProcCbHresult
End Function

Private Function Proc_278_14_998DF0() '998DF0
  'Data Table: 404C60
  loc_998D80: FLdUI1
  loc_998D84: CI4UI1
  loc_998D85: LitI4 &H40
  loc_998D8A: GeI4
  loc_998D8B: BranchF loc_998DE9
  loc_998D8E: FLdUI1
  loc_998D92: FStUI1 var_88
  loc_998D96: FLdUI1
  loc_998D9A: LitI4 &H81
  loc_998D9F: CUI1I4
  loc_998DA1: LitI4 &H9F
  loc_998DA6: CUI1I4
  loc_998DA8: BetweenUI1
  loc_998DAA: BranchT loc_998DC4
  loc_998DAD: FLdUI1
  loc_998DB1: LitI4 &HE0
  loc_998DB6: CUI1I4
  loc_998DB8: LitI4 &HEA
  loc_998DBD: CUI1I4
  loc_998DBF: BetweenUI1
  loc_998DC1: BranchF loc_998DCC
  loc_998DC4: LitI2_Byte &HFF
  loc_998DC6: FStI2 var_86
  loc_998DC9: Branch loc_998DE9
  loc_998DCC: FLdUI1
  loc_998DD0: LitI4 &HEB
  loc_998DD5: CUI1I4
  loc_998DD7: EqI2
  loc_998DD8: BranchF loc_998DE9
  loc_998DDB: FLdUI1
  loc_998DDF: CI4UI1
  loc_998DE0: LitI4 &HBF
  loc_998DE5: LeI4
  loc_998DE6: FStI2 var_86
  loc_998DE9: ExitProcCbHresult
End Function

Private Function Proc_278_15_BC69FC(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C) 'BC69FC
  'Data Table: 404C60
  loc_BC573C: ILdRf arg_14
  loc_BC573F: LitI4 0
  loc_BC5744: LeI4
  loc_BC5745: BranchF loc_BC57A7
  loc_BC5748: FLdI2 arg_1C
  loc_BC574B: NotI4
  loc_BC574C: BranchF loc_BC5791
  loc_BC574F: LitI4 0
  loc_BC5754: FLdRfVar var_B0
  loc_BC5757: LitI4 3
  loc_BC575C: ForI4 var_D4
  loc_BC5762: ILdRf arg_24
  loc_BC5765: LitI4 0
  loc_BC576A: GtI4
  loc_BC576B: ILdRf var_B0
  loc_BC576E: ILdRf arg_24
  loc_BC5771: GeI4
  loc_BC5772: AndI4
  loc_BC5773: BranchF loc_BC5779
  loc_BC5776: Branch loc_BC5791
  loc_BC5779: LitI2_Byte 0
  loc_BC577B: CUI1I2
  loc_BC577D: ILdRf arg_2C
  loc_BC5780: ILdRf var_B0
  loc_BC5783: AddI4
  loc_BC5784: ILdI4 arg_C
  loc_BC5787: Ary1StUI1
  loc_BC5789: FLdRfVar var_B0
  loc_BC578C: NextI4 var_D4, loc_BC5762
  loc_BC5791: LitI4 0
  loc_BC5796: IStI4 arg_28
  loc_BC5799: LitI4 4
  loc_BC579E: FStR4 var_88
  loc_BC57A1: ExitProcCbHresult
  loc_BC57A7: ILdRf arg_18
  loc_BC57AA: FStR4 var_D8
  loc_BC57AD: ILdRf var_D8
  loc_BC57B0: LitI4 &HA
  loc_BC57B5: LtI4
  loc_BC57B6: BranchF loc_BC57FC
  loc_BC57B9: LitI4 2
  loc_BC57BE: FStR4 arg_18
  loc_BC57C1: LitI4 &HFF
  loc_BC57C6: LitI4 0
  loc_BC57CB: FLdRfVar var_A8
  loc_BC57CE: Ary1StI4
  loc_BC57CF: LitI4 &H3FF
  loc_BC57D4: LitI4 1
  loc_BC57D9: FLdRfVar var_A8
  loc_BC57DC: Ary1StI4
  loc_BC57DD: LitI4 &H1FF
  loc_BC57E2: LitI4 2
  loc_BC57E7: FLdRfVar var_A8
  loc_BC57EA: Ary1StI4
  loc_BC57EB: LitI4 &HFF
  loc_BC57F0: LitI4 3
  loc_BC57F5: FLdRfVar var_A8
  loc_BC57F8: Ary1StI4
  loc_BC57F9: Branch loc_BC588B
  loc_BC57FC: ILdRf var_D8
  loc_BC57FF: LitI4 &H1B
  loc_BC5804: LtI4
  loc_BC5805: BranchF loc_BC584B
  loc_BC5808: LitI4 4
  loc_BC580D: FStR4 arg_18
  loc_BC5810: LitI4 &HFFFF
  loc_BC5815: LitI4 0
  loc_BC581A: FLdRfVar var_A8
  loc_BC581D: Ary1StI4
  loc_BC581E: LitI4 &HFFF
  loc_BC5823: LitI4 1
  loc_BC5828: FLdRfVar var_A8
  loc_BC582B: Ary1StI4
  loc_BC582C: LitI4 &H7FF
  loc_BC5831: LitI4 2
  loc_BC5836: FLdRfVar var_A8
  loc_BC5839: Ary1StI4
  loc_BC583A: LitI4 &H3FF
  loc_BC583F: LitI4 3
  loc_BC5844: FLdRfVar var_A8
  loc_BC5847: Ary1StI4
  loc_BC5848: Branch loc_BC588B
  loc_BC584B: LitI4 6
  loc_BC5850: FStR4 arg_18
  loc_BC5853: LitI4 &HFFFF
  loc_BC5858: LitI4 0
  loc_BC585D: FLdRfVar var_A8
  loc_BC5860: Ary1StI4
  loc_BC5861: LitI4 &H3FFF
  loc_BC5866: LitI4 1
  loc_BC586B: FLdRfVar var_A8
  loc_BC586E: Ary1StI4
  loc_BC586F: LitI4 &H1FFF
  loc_BC5874: LitI4 2
  loc_BC5879: FLdRfVar var_A8
  loc_BC587C: Ary1StI4
  loc_BC587D: LitI4 &HFFF
  loc_BC5882: LitI4 3
  loc_BC5887: FLdRfVar var_A8
  loc_BC588A: Ary1StI4
  loc_BC588B: LitI4 0
  loc_BC5890: LitI4 3
  loc_BC5895: LitI4 0
  loc_BC589A: ILdRf arg_14
  loc_BC589D: LitI4 1
  loc_BC58A2: SubI4
  loc_BC58A3: FLdRfVar var_90
  loc_BC58A6: Redim
  loc_BC58B0: LitI4 0
  loc_BC58B5: FLdRfVar var_C8
  loc_BC58B8: ILdRf arg_14
  loc_BC58BB: LitI4 1
  loc_BC58C0: SubI4
  loc_BC58C1: ForI4 var_E0
  loc_BC58C7: ILdRf var_C8
  loc_BC58CA: LitI4 0
  loc_BC58CF: GtI4
  loc_BC58D0: BranchF loc_BC59B9
  loc_BC58D3: LitI4 &H7FFFFFFF
  loc_BC58D8: FStR4 var_C0
  loc_BC58DB: LitI4 0
  loc_BC58E0: FLdRfVar var_B0
  loc_BC58E3: LitI4 3
  loc_BC58E8: ForI4 var_E8
  loc_BC58EE: ILdRf var_B0
  loc_BC58F1: ILdRf var_C8
  loc_BC58F4: LitI4 1
  loc_BC58F9: SubI4
  loc_BC58FA: ILdRf var_90
  loc_BC58FD: AryLdPr
  loc_BC5900: MemLdStr global_4
  loc_BC5903: LitI4 8
  loc_BC5908: AddI4
  loc_BC5909: FStR4 var_B8
  loc_BC590C: ILdRf var_B0
  loc_BC590F: LitI4 0
  loc_BC5914: NeI4
  loc_BC5915: ILdRf var_B0
  loc_BC5918: ILdRf var_C8
  loc_BC591B: LitI4 1
  loc_BC5920: SubI4
  loc_BC5921: ILdRf var_90
  loc_BC5924: AryLdPr
  loc_BC5927: MemLdStr global_8
  loc_BC592A: LitI4 0
  loc_BC592F: FLdRfVar var_A8
  loc_BC5932: Ary1LdI4
  loc_BC5933: GeI4
  loc_BC5934: OrI4
  loc_BC5935: BranchF loc_BC5954
  loc_BC5938: ILdRf var_B8
  loc_BC593B: LitI4 &HC
  loc_BC5940: AddI4
  loc_BC5941: ILdRf arg_18
  loc_BC5944: LitI4 4
  loc_BC5949: AndI4
  loc_BC594A: LitI4 2
  loc_BC594F: MulI4
  loc_BC5950: AddI4
  loc_BC5951: FStR4 var_B8
  loc_BC5954: ILdRf var_B8
  loc_BC5957: ILdRf var_C0
  loc_BC595A: LtI4
  loc_BC595B: BranchF loc_BC59AE
  loc_BC595E: ILdRf var_B0
  loc_BC5961: FStR4 var_B4
  loc_BC5964: ILdRf var_B8
  loc_BC5967: FStR4 var_C0
  loc_BC596A: ILdRf var_B0
  loc_BC596D: ILdRf var_C8
  loc_BC5970: LitI4 1
  loc_BC5975: SubI4
  loc_BC5976: ILdRf var_90
  loc_BC5979: AryLdPr
  loc_BC597C: MemLdStr global_8
  loc_BC597F: ILdRf var_B0
  loc_BC5982: LitI4 0
  loc_BC5987: EqI4
  loc_BC5988: CI4UI1
  loc_BC5989: AndI4
  loc_BC598A: ILdRf var_B0
  loc_BC598D: ILdRf var_C8
  loc_BC5990: LitI4 1
  loc_BC5995: SubI4
  loc_BC5996: ILdRf var_90
  loc_BC5999: AryLdPr
  loc_BC599C: MemLdStr global_8
  loc_BC599F: LitI4 0
  loc_BC59A4: FLdRfVar var_A8
  loc_BC59A7: Ary1LdI4
  loc_BC59A8: LtI4
  loc_BC59A9: CI4UI1
  loc_BC59AA: AndI4
  loc_BC59AB: FStR4 var_C4
  loc_BC59AE: FLdRfVar var_B0
  loc_BC59B1: NextI4 var_E8, loc_BC58EE
  loc_BC59B6: Branch loc_BC59E1
  loc_BC59B9: LitI4 -1
  loc_BC59BE: FStR4 var_B4
  loc_BC59C1: LitI4 &H14
  loc_BC59C6: ILdRf arg_18
  loc_BC59C9: LitI4 4
  loc_BC59CE: AndI4
  loc_BC59CF: LitI4 2
  loc_BC59D4: MulI4
  loc_BC59D5: AddI4
  loc_BC59D6: FStR4 var_C0
  loc_BC59D9: LitI4 0
  loc_BC59DE: FStR4 var_C4
  loc_BC59E1: ILdRf var_B4
  loc_BC59E4: LitI4 0
  loc_BC59E9: ILdRf var_C8
  loc_BC59EC: ILdRf var_90
  loc_BC59EF: AryLdPr
  loc_BC59F2: MemStI4 global_0
  loc_BC59F5: ILdRf var_C0
  loc_BC59F8: LitI4 0
  loc_BC59FD: ILdRf var_C8
  loc_BC5A00: ILdRf var_90
  loc_BC5A03: AryLdPr
  loc_BC5A06: MemStI4 global_4
  loc_BC5A09: ILdRf var_C4
  loc_BC5A0C: LitI4 1
  loc_BC5A11: AddI4
  loc_BC5A12: LitI4 0
  loc_BC5A17: ILdRf var_C8
  loc_BC5A1A: ILdRf var_90
  loc_BC5A1D: AryLdPr
  loc_BC5A20: MemStI4 global_8
  loc_BC5A23: FLdRfVar var_EC
  loc_BC5A26: ILdRf arg_20
  loc_BC5A29: ILdRf var_C8
  loc_BC5A2C: AddI4
  loc_BC5A2D: ILdI4 arg_10
  loc_BC5A30: Ary1LdUI1
  loc_BC5A32: ILdRf Me
  loc_BC5A35: ImpAdCallNonVirt
  loc_BC5A3B: ILdRf var_EC
  loc_BC5A3E: FStR4 var_CC
  loc_BC5A41: ILdRf var_CC
  loc_BC5A44: LitI4 1
  loc_BC5A49: EqI4
  loc_BC5A4A: BranchF loc_BC5BCD
  loc_BC5A4D: ILdRf var_C8
  loc_BC5A50: LitI4 0
  loc_BC5A55: GtI4
  loc_BC5A56: BranchF loc_BC5B6C
  loc_BC5A59: LitI4 &H7FFFFFFF
  loc_BC5A5E: FStR4 var_C0
  loc_BC5A61: LitI4 0
  loc_BC5A66: FLdRfVar var_B0
  loc_BC5A69: LitI4 3
  loc_BC5A6E: ForI4 var_F4
  loc_BC5A74: ILdRf var_B0
  loc_BC5A77: ILdRf var_C8
  loc_BC5A7A: LitI4 1
  loc_BC5A7F: SubI4
  loc_BC5A80: ILdRf var_90
  loc_BC5A83: AryLdPr
  loc_BC5A86: MemLdStr global_4
  loc_BC5A89: FStR4 var_B8
  loc_BC5A8C: ILdRf var_B0
  loc_BC5A8F: LitI4 1
  loc_BC5A94: NeI4
  loc_BC5A95: ILdRf var_B0
  loc_BC5A98: ILdRf var_C8
  loc_BC5A9B: LitI4 1
  loc_BC5AA0: SubI4
  loc_BC5AA1: ILdRf var_90
  loc_BC5AA4: AryLdPr
  loc_BC5AA7: MemLdStr global_8
  loc_BC5AAA: LitI4 1
  loc_BC5AAF: FLdRfVar var_A8
  loc_BC5AB2: Ary1LdI4
  loc_BC5AB3: GeI4
  loc_BC5AB4: OrI4
  loc_BC5AB5: BranchF loc_BC5ACB
  loc_BC5AB8: ILdRf var_B8
  loc_BC5ABB: LitI4 &H10
  loc_BC5AC0: AddI4
  loc_BC5AC1: ILdRf arg_18
  loc_BC5AC4: AddI4
  loc_BC5AC5: FStR4 var_B8
  loc_BC5AC8: Branch loc_BC5B07
  loc_BC5ACB: ILdRf var_B8
  loc_BC5ACE: LitI4 3
  loc_BC5AD3: AddI4
  loc_BC5AD4: FStR4 var_B8
  loc_BC5AD7: ILdRf var_B0
  loc_BC5ADA: ILdRf var_C8
  loc_BC5ADD: LitI4 1
  loc_BC5AE2: SubI4
  loc_BC5AE3: ILdRf var_90
  loc_BC5AE6: AryLdPr
  loc_BC5AE9: MemLdStr global_8
  loc_BC5AEC: LitI4 3
  loc_BC5AF1: ModI4
  loc_BC5AF2: LitI4 0
  loc_BC5AF7: EqI4
  loc_BC5AF8: BranchF loc_BC5B07
  loc_BC5AFB: ILdRf var_B8
  loc_BC5AFE: LitI4 1
  loc_BC5B03: AddI4
  loc_BC5B04: FStR4 var_B8
  loc_BC5B07: ILdRf var_B8
  loc_BC5B0A: ILdRf var_C0
  loc_BC5B0D: LtI4
  loc_BC5B0E: BranchF loc_BC5B61
  loc_BC5B11: ILdRf var_B0
  loc_BC5B14: FStR4 var_B4
  loc_BC5B17: ILdRf var_B8
  loc_BC5B1A: FStR4 var_C0
  loc_BC5B1D: ILdRf var_B0
  loc_BC5B20: ILdRf var_C8
  loc_BC5B23: LitI4 1
  loc_BC5B28: SubI4
  loc_BC5B29: ILdRf var_90
  loc_BC5B2C: AryLdPr
  loc_BC5B2F: MemLdStr global_8
  loc_BC5B32: ILdRf var_B0
  loc_BC5B35: LitI4 1
  loc_BC5B3A: EqI4
  loc_BC5B3B: CI4UI1
  loc_BC5B3C: AndI4
  loc_BC5B3D: ILdRf var_B0
  loc_BC5B40: ILdRf var_C8
  loc_BC5B43: LitI4 1
  loc_BC5B48: SubI4
  loc_BC5B49: ILdRf var_90
  loc_BC5B4C: AryLdPr
  loc_BC5B4F: MemLdStr global_8
  loc_BC5B52: LitI4 1
  loc_BC5B57: FLdRfVar var_A8
  loc_BC5B5A: Ary1LdI4
  loc_BC5B5B: LtI4
  loc_BC5B5C: CI4UI1
  loc_BC5B5D: AndI4
  loc_BC5B5E: FStR4 var_C4
  loc_BC5B61: FLdRfVar var_B0
  loc_BC5B64: NextI4 var_F4, loc_BC5A74
  loc_BC5B69: Branch loc_BC5B88
  loc_BC5B6C: LitI4 -1
  loc_BC5B71: FStR4 var_B4
  loc_BC5B74: LitI4 &H10
  loc_BC5B79: ILdRf arg_18
  loc_BC5B7C: AddI4
  loc_BC5B7D: FStR4 var_C0
  loc_BC5B80: LitI4 0
  loc_BC5B85: FStR4 var_C4
  loc_BC5B88: ILdRf var_B4
  loc_BC5B8B: LitI4 1
  loc_BC5B90: ILdRf var_C8
  loc_BC5B93: ILdRf var_90
  loc_BC5B96: AryLdPr
  loc_BC5B99: MemStI4 global_0
  loc_BC5B9C: ILdRf var_C0
  loc_BC5B9F: LitI4 1
  loc_BC5BA4: ILdRf var_C8
  loc_BC5BA7: ILdRf var_90
  loc_BC5BAA: AryLdPr
  loc_BC5BAD: MemStI4 global_4
  loc_BC5BB0: ILdRf var_C4
  loc_BC5BB3: LitI4 1
  loc_BC5BB8: AddI4
  loc_BC5BB9: LitI4 1
  loc_BC5BBE: ILdRf var_C8
  loc_BC5BC1: ILdRf var_90
  loc_BC5BC4: AryLdPr
  loc_BC5BC7: MemStI4 global_8
  loc_BC5BCA: Branch loc_BC5BE3
  loc_BC5BCD: LitI4 &H70000000
  loc_BC5BD2: LitI4 1
  loc_BC5BD7: ILdRf var_C8
  loc_BC5BDA: ILdRf var_90
  loc_BC5BDD: AryLdPr
  loc_BC5BE0: MemStI4 global_4
  loc_BC5BE3: ILdRf var_CC
  loc_BC5BE6: LitI4 0
  loc_BC5BEB: GtI4
  loc_BC5BEC: BranchF loc_BC5D6F
  loc_BC5BEF: ILdRf var_C8
  loc_BC5BF2: LitI4 0
  loc_BC5BF7: GtI4
  loc_BC5BF8: BranchF loc_BC5D0E
  loc_BC5BFB: LitI4 &H7FFFFFFF
  loc_BC5C00: FStR4 var_C0
  loc_BC5C03: LitI4 0
  loc_BC5C08: FLdRfVar var_B0
  loc_BC5C0B: LitI4 3
  loc_BC5C10: ForI4 var_FC
  loc_BC5C16: ILdRf var_B0
  loc_BC5C19: ILdRf var_C8
  loc_BC5C1C: LitI4 1
  loc_BC5C21: SubI4
  loc_BC5C22: ILdRf var_90
  loc_BC5C25: AryLdPr
  loc_BC5C28: MemLdStr global_4
  loc_BC5C2B: FStR4 var_B8
  loc_BC5C2E: ILdRf var_B0
  loc_BC5C31: LitI4 2
  loc_BC5C36: NeI4
  loc_BC5C37: ILdRf var_B0
  loc_BC5C3A: ILdRf var_C8
  loc_BC5C3D: LitI4 1
  loc_BC5C42: SubI4
  loc_BC5C43: ILdRf var_90
  loc_BC5C46: AryLdPr
  loc_BC5C49: MemLdStr global_8
  loc_BC5C4C: LitI4 2
  loc_BC5C51: FLdRfVar var_A8
  loc_BC5C54: Ary1LdI4
  loc_BC5C55: GeI4
  loc_BC5C56: OrI4
  loc_BC5C57: BranchF loc_BC5C6D
  loc_BC5C5A: ILdRf var_B8
  loc_BC5C5D: LitI4 &H11
  loc_BC5C62: AddI4
  loc_BC5C63: ILdRf arg_18
  loc_BC5C66: AddI4
  loc_BC5C67: FStR4 var_B8
  loc_BC5C6A: Branch loc_BC5CA9
  loc_BC5C6D: ILdRf var_B8
  loc_BC5C70: LitI4 5
  loc_BC5C75: AddI4
  loc_BC5C76: FStR4 var_B8
  loc_BC5C79: ILdRf var_B0
  loc_BC5C7C: ILdRf var_C8
  loc_BC5C7F: LitI4 1
  loc_BC5C84: SubI4
  loc_BC5C85: ILdRf var_90
  loc_BC5C88: AryLdPr
  loc_BC5C8B: MemLdStr global_8
  loc_BC5C8E: LitI4 1
  loc_BC5C93: AndI4
  loc_BC5C94: LitI4 0
  loc_BC5C99: EqI4
  loc_BC5C9A: BranchF loc_BC5CA9
  loc_BC5C9D: ILdRf var_B8
  loc_BC5CA0: LitI4 1
  loc_BC5CA5: AddI4
  loc_BC5CA6: FStR4 var_B8
  loc_BC5CA9: ILdRf var_B8
  loc_BC5CAC: ILdRf var_C0
  loc_BC5CAF: LtI4
  loc_BC5CB0: BranchF loc_BC5D03
  loc_BC5CB3: ILdRf var_B0
  loc_BC5CB6: FStR4 var_B4
  loc_BC5CB9: ILdRf var_B8
  loc_BC5CBC: FStR4 var_C0
  loc_BC5CBF: ILdRf var_B0
  loc_BC5CC2: ILdRf var_C8
  loc_BC5CC5: LitI4 1
  loc_BC5CCA: SubI4
  loc_BC5CCB: ILdRf var_90
  loc_BC5CCE: AryLdPr
  loc_BC5CD1: MemLdStr global_8
  loc_BC5CD4: ILdRf var_B0
  loc_BC5CD7: LitI4 2
  loc_BC5CDC: EqI4
  loc_BC5CDD: CI4UI1
  loc_BC5CDE: AndI4
  loc_BC5CDF: ILdRf var_B0
  loc_BC5CE2: ILdRf var_C8
  loc_BC5CE5: LitI4 1
  loc_BC5CEA: SubI4
  loc_BC5CEB: ILdRf var_90
  loc_BC5CEE: AryLdPr
  loc_BC5CF1: MemLdStr global_8
  loc_BC5CF4: LitI4 2
  loc_BC5CF9: FLdRfVar var_A8
  loc_BC5CFC: Ary1LdI4
  loc_BC5CFD: LtI4
  loc_BC5CFE: CI4UI1
  loc_BC5CFF: AndI4
  loc_BC5D00: FStR4 var_C4
  loc_BC5D03: FLdRfVar var_B0
  loc_BC5D06: NextI4 var_FC, loc_BC5C16
  loc_BC5D0B: Branch loc_BC5D2A
  loc_BC5D0E: LitI4 -1
  loc_BC5D13: FStR4 var_B4
  loc_BC5D16: LitI4 &H11
  loc_BC5D1B: ILdRf arg_18
  loc_BC5D1E: AddI4
  loc_BC5D1F: FStR4 var_C0
  loc_BC5D22: LitI4 0
  loc_BC5D27: FStR4 var_C4
  loc_BC5D2A: ILdRf var_B4
  loc_BC5D2D: LitI4 2
  loc_BC5D32: ILdRf var_C8
  loc_BC5D35: ILdRf var_90
  loc_BC5D38: AryLdPr
  loc_BC5D3B: MemStI4 global_0
  loc_BC5D3E: ILdRf var_C0
  loc_BC5D41: LitI4 2
  loc_BC5D46: ILdRf var_C8
  loc_BC5D49: ILdRf var_90
  loc_BC5D4C: AryLdPr
  loc_BC5D4F: MemStI4 global_4
  loc_BC5D52: ILdRf var_C4
  loc_BC5D55: LitI4 1
  loc_BC5D5A: AddI4
  loc_BC5D5B: LitI4 2
  loc_BC5D60: ILdRf var_C8
  loc_BC5D63: ILdRf var_90
  loc_BC5D66: AryLdPr
  loc_BC5D69: MemStI4 global_8
  loc_BC5D6C: Branch loc_BC5D85
  loc_BC5D6F: LitI4 &H70000000
  loc_BC5D74: LitI4 2
  loc_BC5D79: ILdRf var_C8
  loc_BC5D7C: ILdRf var_90
  loc_BC5D7F: AryLdPr
  loc_BC5D82: MemStI4 global_4
  loc_BC5D85: ILdRf var_C8
  loc_BC5D88: LitI4 0
  loc_BC5D8D: EqI4
  loc_BC5D8E: BranchF loc_BC5DAA
  loc_BC5D91: LitI4 &H70000000
  loc_BC5D96: LitI4 3
  loc_BC5D9B: ILdRf var_C8
  loc_BC5D9E: ILdRf var_90
  loc_BC5DA1: AryLdPr
  loc_BC5DA4: MemStI4 global_4
  loc_BC5DA7: Branch loc_BC5F38
  loc_BC5DAA: FLdRfVar var_FE
  loc_BC5DAD: ILdRf arg_20
  loc_BC5DB0: ILdRf var_C8
  loc_BC5DB3: AddI4
  loc_BC5DB4: ILdI4 arg_10
  loc_BC5DB7: Ary1LdUI1
  loc_BC5DB9: ILdRf arg_20
  loc_BC5DBC: ILdRf var_C8
  loc_BC5DBF: AddI4
  loc_BC5DC0: LitI4 1
  loc_BC5DC5: SubI4
  loc_BC5DC6: ILdI4 arg_10
  loc_BC5DC9: Ary1LdUI1
  loc_BC5DCB: ILdRf Me
  loc_BC5DCE: ImpAdCallNonVirt
  loc_BC5DD4: FLdI2 var_FE
  loc_BC5DD7: NotI4
  loc_BC5DD8: BranchF loc_BC5DF4
  loc_BC5DDB: LitI4 &H70000000
  loc_BC5DE0: LitI4 3
  loc_BC5DE5: ILdRf var_C8
  loc_BC5DE8: ILdRf var_90
  loc_BC5DEB: AryLdPr
  loc_BC5DEE: MemStI4 global_4
  loc_BC5DF1: Branch loc_BC5F38
  loc_BC5DF4: ILdRf var_C8
  loc_BC5DF7: LitI4 1
  loc_BC5DFC: GtI4
  loc_BC5DFD: BranchF loc_BC5EDA
  loc_BC5E00: LitI4 &H7FFFFFFF
  loc_BC5E05: FStR4 var_C0
  loc_BC5E08: LitI4 0
  loc_BC5E0D: FLdRfVar var_B0
  loc_BC5E10: LitI4 3
  loc_BC5E15: ForI4 var_108
  loc_BC5E1B: ILdRf var_B0
  loc_BC5E1E: ILdRf var_C8
  loc_BC5E21: LitI4 2
  loc_BC5E26: SubI4
  loc_BC5E27: ILdRf var_90
  loc_BC5E2A: AryLdPr
  loc_BC5E2D: MemLdStr global_4
  loc_BC5E30: LitI4 &HD
  loc_BC5E35: AddI4
  loc_BC5E36: FStR4 var_B8
  loc_BC5E39: ILdRf var_B0
  loc_BC5E3C: LitI4 3
  loc_BC5E41: NeI4
  loc_BC5E42: ILdRf var_B0
  loc_BC5E45: ILdRf var_C8
  loc_BC5E48: LitI4 2
  loc_BC5E4D: SubI4
  loc_BC5E4E: ILdRf var_90
  loc_BC5E51: AryLdPr
  loc_BC5E54: MemLdStr global_8
  loc_BC5E57: LitI4 3
  loc_BC5E5C: FLdRfVar var_A8
  loc_BC5E5F: Ary1LdI4
  loc_BC5E60: GeI4
  loc_BC5E61: OrI4
  loc_BC5E62: BranchF loc_BC5E75
  loc_BC5E65: ILdRf var_B8
  loc_BC5E68: LitI4 &HA
  loc_BC5E6D: AddI4
  loc_BC5E6E: ILdRf arg_18
  loc_BC5E71: AddI4
  loc_BC5E72: FStR4 var_B8
  loc_BC5E75: ILdRf var_B8
  loc_BC5E78: ILdRf var_C0
  loc_BC5E7B: LtI4
  loc_BC5E7C: BranchF loc_BC5ECF
  loc_BC5E7F: ILdRf var_B0
  loc_BC5E82: FStR4 var_B4
  loc_BC5E85: ILdRf var_B8
  loc_BC5E88: FStR4 var_C0
  loc_BC5E8B: ILdRf var_B0
  loc_BC5E8E: ILdRf var_C8
  loc_BC5E91: LitI4 2
  loc_BC5E96: SubI4
  loc_BC5E97: ILdRf var_90
  loc_BC5E9A: AryLdPr
  loc_BC5E9D: MemLdStr global_8
  loc_BC5EA0: ILdRf var_B0
  loc_BC5EA3: LitI4 3
  loc_BC5EA8: EqI4
  loc_BC5EA9: CI4UI1
  loc_BC5EAA: AndI4
  loc_BC5EAB: ILdRf var_B0
  loc_BC5EAE: ILdRf var_C8
  loc_BC5EB1: LitI4 2
  loc_BC5EB6: SubI4
  loc_BC5EB7: ILdRf var_90
  loc_BC5EBA: AryLdPr
  loc_BC5EBD: MemLdStr global_8
  loc_BC5EC0: LitI4 3
  loc_BC5EC5: FLdRfVar var_A8
  loc_BC5EC8: Ary1LdI4
  loc_BC5EC9: LtI4
  loc_BC5ECA: CI4UI1
  loc_BC5ECB: AndI4
  loc_BC5ECC: FStR4 var_C4
  loc_BC5ECF: FLdRfVar var_B0
  loc_BC5ED2: NextI4 var_108, loc_BC5E1B
  loc_BC5ED7: Branch loc_BC5EF6
  loc_BC5EDA: LitI4 -1
  loc_BC5EDF: FStR4 var_B4
  loc_BC5EE2: LitI4 &H17
  loc_BC5EE7: ILdRf arg_18
  loc_BC5EEA: AddI4
  loc_BC5EEB: FStR4 var_C0
  loc_BC5EEE: LitI4 0
  loc_BC5EF3: FStR4 var_C4
  loc_BC5EF6: ILdRf var_B4
  loc_BC5EF9: LitI4 3
  loc_BC5EFE: ILdRf var_C8
  loc_BC5F01: ILdRf var_90
  loc_BC5F04: AryLdPr
  loc_BC5F07: MemStI4 global_0
  loc_BC5F0A: ILdRf var_C0
  loc_BC5F0D: LitI4 3
  loc_BC5F12: ILdRf var_C8
  loc_BC5F15: ILdRf var_90
  loc_BC5F18: AryLdPr
  loc_BC5F1B: MemStI4 global_4
  loc_BC5F1E: ILdRf var_C4
  loc_BC5F21: LitI4 1
  loc_BC5F26: AddI4
  loc_BC5F27: LitI4 3
  loc_BC5F2C: ILdRf var_C8
  loc_BC5F2F: ILdRf var_90
  loc_BC5F32: AryLdPr
  loc_BC5F35: MemStI4 global_8
  loc_BC5F38: ILdRf arg_24
  loc_BC5F3B: LitI4 0
  loc_BC5F40: GtI4
  loc_BC5F41: BranchF loc_BC5F9C
  loc_BC5F44: LitI4 &H7FFFFFFF
  loc_BC5F49: FStR4 var_C0
  loc_BC5F4C: LitI4 0
  loc_BC5F51: FLdRfVar var_B0
  loc_BC5F54: LitI4 3
  loc_BC5F59: ForI4 var_110
  loc_BC5F5F: ILdRf var_B0
  loc_BC5F62: ILdRf var_C8
  loc_BC5F65: ILdRf var_90
  loc_BC5F68: AryLdPr
  loc_BC5F6B: MemLdStr global_4
  loc_BC5F6E: FStR4 var_B8
  loc_BC5F71: ILdRf var_B8
  loc_BC5F74: ILdRf var_C0
  loc_BC5F77: LtI4
  loc_BC5F78: BranchF loc_BC5F81
  loc_BC5F7B: ILdRf var_B8
  loc_BC5F7E: FStR4 var_C0
  loc_BC5F81: FLdRfVar var_B0
  loc_BC5F84: NextI4 var_110, loc_BC5F5F
  loc_BC5F89: ILdRf var_C0
  loc_BC5F8C: ILdRf arg_24
  loc_BC5F8F: GtI4
  loc_BC5F90: BranchF loc_BC5F9C
  loc_BC5F93: ILdRf var_C8
  loc_BC5F96: FStR4 arg_14
  loc_BC5F99: Branch loc_BC5FA4
  loc_BC5F9C: FLdRfVar var_C8
  loc_BC5F9F: NextI4 var_E0, loc_BC58C7
  loc_BC5FA4: LitI4 &H7FFFFFFF
  loc_BC5FA9: FStR4 var_C0
  loc_BC5FAC: LitI4 0
  loc_BC5FB1: FLdRfVar var_B0
  loc_BC5FB4: LitI4 3
  loc_BC5FB9: ForI4 var_118
  loc_BC5FBF: ILdRf var_B0
  loc_BC5FC2: ILdRf arg_14
  loc_BC5FC5: LitI4 1
  loc_BC5FCA: SubI4
  loc_BC5FCB: ILdRf var_90
  loc_BC5FCE: AryLdPr
  loc_BC5FD1: MemLdStr global_4
  loc_BC5FD4: FStR4 var_B8
  loc_BC5FD7: ILdRf var_B8
  loc_BC5FDA: ILdRf var_C0
  loc_BC5FDD: LtI4
  loc_BC5FDE: BranchF loc_BC5FED
  loc_BC5FE1: ILdRf var_B0
  loc_BC5FE4: FStR4 var_B4
  loc_BC5FE7: ILdRf var_B8
  loc_BC5FEA: FStR4 var_C0
  loc_BC5FED: FLdRfVar var_B0
  loc_BC5FF0: NextI4 var_118, loc_BC5FBF
  loc_BC5FF5: FLdI2 arg_1C
  loc_BC5FF8: BranchF loc_BC6013
  loc_BC5FFB: ILdRf arg_14
  loc_BC5FFE: IStI4 arg_28
  loc_BC6001: ILdRf var_C0
  loc_BC6004: LitI4 4
  loc_BC6009: AddI4
  loc_BC600A: FStR4 var_88
  loc_BC600D: ExitProcCbHresult
  loc_BC6013: LitI4 0
  loc_BC6018: ILdRf arg_14
  loc_BC601B: LitI4 1
  loc_BC6020: SubI4
  loc_BC6021: FLdRfVar var_8C
  loc_BC6024: Redim
  loc_BC602E: ILdRf arg_14
  loc_BC6031: LitI4 1
  loc_BC6036: SubI4
  loc_BC6037: FStR4 var_C8
  loc_BC603A: ILdRf var_B4
  loc_BC603D: ILdRf var_C8
  loc_BC6040: ILdRf var_90
  loc_BC6043: AryLdPr
  loc_BC6046: MemLdStr global_0
  loc_BC6049: FStR4 var_B8
  loc_BC604C: ILdRf var_B4
  loc_BC604F: CUI1I4
  loc_BC6051: ILdRf var_C8
  loc_BC6054: ILdRf var_8C
  loc_BC6057: Ary1StUI1
  loc_BC6059: ILdRf var_C8
  loc_BC605C: LitI4 1
  loc_BC6061: SubI4
  loc_BC6062: FStR4 var_C8
  loc_BC6065: ILdRf var_B4
  loc_BC6068: LitI4 3
  loc_BC606D: EqI4
  loc_BC606E: BranchF loc_BC609C
  loc_BC6071: ILdRf var_C8
  loc_BC6074: LitI4 0
  loc_BC6079: LtI4
  loc_BC607A: BranchF loc_BC6083
  loc_BC607D: ExitProcCbHresult
  loc_BC6083: ILdRf var_B4
  loc_BC6086: CUI1I4
  loc_BC6088: ILdRf var_C8
  loc_BC608B: ILdRf var_8C
  loc_BC608E: Ary1StUI1
  loc_BC6090: ILdRf var_C8
  loc_BC6093: LitI4 1
  loc_BC6098: SubI4
  loc_BC6099: FStR4 var_C8
  loc_BC609C: ILdRf var_B8
  loc_BC609F: FStR4 var_B4
  loc_BC60A2: ILdRf var_C8
  loc_BC60A5: LitI4 0
  loc_BC60AA: GeI4
  loc_BC60AB: BranchT loc_BC603A
  loc_BC60AE: FLdRfVar var_90
  loc_BC60B1: Erase
  loc_BC60B2: LitI4 3
  loc_BC60B7: FLdRfVar var_A8
  loc_BC60BA: Ary1LdI4
  loc_BC60BB: LitI4 2
  loc_BC60C0: MulI4
  loc_BC60C1: LitI4 3
  loc_BC60C6: FLdRfVar var_A8
  loc_BC60C9: Ary1StI4
  loc_BC60CA: LitI4 0
  loc_BC60CF: FStR4 var_C8
  loc_BC60D2: LitI4 0
  loc_BC60D7: FStR4 var_CC
  loc_BC60DA: ILdRf var_C8
  loc_BC60DD: ILdRf var_8C
  loc_BC60E0: Ary1LdUI1
  loc_BC60E2: CI4UI1
  loc_BC60E3: FStR4 var_B4
  loc_BC60E6: LitI4 1
  loc_BC60EB: FLdRfVar var_C4
  loc_BC60EE: ILdRf arg_14
  loc_BC60F1: LitI4 1
  loc_BC60F6: SubI4
  loc_BC60F7: ILdRf var_C8
  loc_BC60FA: SubI4
  loc_BC60FB: ForI4 var_120
  loc_BC6101: ILdRf var_C8
  loc_BC6104: ILdRf var_C4
  loc_BC6107: AddI4
  loc_BC6108: ILdRf var_8C
  loc_BC610B: Ary1LdUI1
  loc_BC610D: CI4UI1
  loc_BC610E: ILdRf var_B4
  loc_BC6111: NeI4
  loc_BC6112: BranchF loc_BC6118
  loc_BC6115: Branch loc_BC6131
  loc_BC6118: ILdRf var_C4
  loc_BC611B: ILdRf var_B4
  loc_BC611E: FLdRfVar var_A8
  loc_BC6121: Ary1LdI4
  loc_BC6122: GeI4
  loc_BC6123: BranchF loc_BC6129
  loc_BC6126: Branch loc_BC6131
  loc_BC6129: FLdRfVar var_C4
  loc_BC612C: NextI4 var_120, loc_BC6101
  loc_BC6131: ILdRf var_B4
  loc_BC6134: FStR4 var_124
  loc_BC6137: ILdRf var_124
  loc_BC613A: LitI4 0
  loc_BC613F: EqI4
  loc_BC6140: BranchF loc_BC62A1
  loc_BC6143: LitI2_Byte 0
  loc_BC6145: CUI1I2
  loc_BC6147: ILdRf arg_2C
  loc_BC614A: ILdRf var_CC
  loc_BC614D: AddI4
  loc_BC614E: ILdI4 arg_C
  loc_BC6151: Ary1StUI1
  loc_BC6153: LitI2_Byte 1
  loc_BC6155: CUI1I2
  loc_BC6157: ILdRf arg_2C
  loc_BC615A: ILdRf var_CC
  loc_BC615D: AddI4
  loc_BC615E: LitI4 1
  loc_BC6163: AddI4
  loc_BC6164: ILdI4 arg_C
  loc_BC6167: Ary1StUI1
  loc_BC6169: LitI2_Byte 0
  loc_BC616B: CUI1I2
  loc_BC616D: ILdRf arg_2C
  loc_BC6170: ILdRf var_CC
  loc_BC6173: AddI4
  loc_BC6174: LitI4 2
  loc_BC6179: AddI4
  loc_BC617A: ILdI4 arg_C
  loc_BC617D: Ary1StUI1
  loc_BC617F: LitI2_Byte 0
  loc_BC6181: CUI1I2
  loc_BC6183: ILdRf arg_2C
  loc_BC6186: ILdRf var_CC
  loc_BC6189: AddI4
  loc_BC618A: LitI4 3
  loc_BC618F: AddI4
  loc_BC6190: ILdI4 arg_C
  loc_BC6193: Ary1StUI1
  loc_BC6195: ILdRf var_CC
  loc_BC6198: LitI4 4
  loc_BC619D: AddI4
  loc_BC619E: FStR4 var_CC
  loc_BC61A1: LitI4 8
  loc_BC61A6: ILdRf arg_18
  loc_BC61A9: LitI4 4
  loc_BC61AE: AndI4
  loc_BC61AF: LitI4 2
  loc_BC61B4: MulI4
  loc_BC61B5: AddI4
  loc_BC61B6: FStR4 var_BC
  loc_BC61B9: LitI4 0
  loc_BC61BE: FLdRfVar var_B0
  loc_BC61C1: ILdRf var_BC
  loc_BC61C4: LitI4 1
  loc_BC61C9: SubI4
  loc_BC61CA: ForI4 var_12C
  loc_BC61D0: ILdRf var_C4
  loc_BC61D3: ILdRf var_BC
  loc_BC61D6: LitI4 1
  loc_BC61DB: SubI4
  loc_BC61DC: ILdRf var_B0
  loc_BC61DF: SubI4
  loc_BC61E0: FLdPr Me
  loc_BC61E3: MemLdRfVar from_stack_1.global_164
  loc_BC61E6: Ary1LdI4
  loc_BC61E7: AndI4
  loc_BC61E8: LitI4 0
  loc_BC61ED: NeI4
  loc_BC61EE: LitI2_Byte 1
  loc_BC61F0: AndI4
  loc_BC61F1: CUI1I2
  loc_BC61F3: ILdRf arg_2C
  loc_BC61F6: ILdRf var_CC
  loc_BC61F9: AddI4
  loc_BC61FA: ILdRf var_B0
  loc_BC61FD: AddI4
  loc_BC61FE: ILdI4 arg_C
  loc_BC6201: Ary1StUI1
  loc_BC6203: FLdRfVar var_B0
  loc_BC6206: NextI4 var_12C, loc_BC61D0
  loc_BC620B: ILdRf var_CC
  loc_BC620E: ILdRf var_BC
  loc_BC6211: AddI4
  loc_BC6212: FStR4 var_CC
  loc_BC6215: LitI4 0
  loc_BC621A: FLdRfVar var_B4
  loc_BC621D: ILdRf var_C4
  loc_BC6220: LitI4 1
  loc_BC6225: SubI4
  loc_BC6226: ForI4 var_134
  loc_BC622C: ILdRf arg_20
  loc_BC622F: ILdRf var_C8
  loc_BC6232: AddI4
  loc_BC6233: ILdRf var_B4
  loc_BC6236: AddI4
  loc_BC6237: ILdI4 arg_10
  loc_BC623A: Ary1LdUI1
  loc_BC623C: CI4UI1
  loc_BC623D: FStR4 var_B8
  loc_BC6240: LitI4 0
  loc_BC6245: FLdRfVar var_B0
  loc_BC6248: LitI4 7
  loc_BC624D: ForI4 var_13C
  loc_BC6253: ILdRf var_B8
  loc_BC6256: LitI4 7
  loc_BC625B: ILdRf var_B0
  loc_BC625E: SubI4
  loc_BC625F: FLdPr Me
  loc_BC6262: MemLdRfVar from_stack_1.global_164
  loc_BC6265: Ary1LdI4
  loc_BC6266: AndI4
  loc_BC6267: LitI4 0
  loc_BC626C: NeI4
  loc_BC626D: LitI2_Byte 1
  loc_BC626F: AndI4
  loc_BC6270: CUI1I2
  loc_BC6272: ILdRf arg_2C
  loc_BC6275: ILdRf var_CC
  loc_BC6278: AddI4
  loc_BC6279: ILdRf var_B0
  loc_BC627C: AddI4
  loc_BC627D: ILdI4 arg_C
  loc_BC6280: Ary1StUI1
  loc_BC6282: FLdRfVar var_B0
  loc_BC6285: NextI4 var_13C, loc_BC6253
  loc_BC628A: ILdRf var_CC
  loc_BC628D: LitI4 8
  loc_BC6292: AddI4
  loc_BC6293: FStR4 var_CC
  loc_BC6296: FLdRfVar var_B4
  loc_BC6299: NextI4 var_134, loc_BC622C
  loc_BC629E: Branch loc_BC698A
  loc_BC62A1: ILdRf var_124
  loc_BC62A4: LitI4 1
  loc_BC62A9: EqI4
  loc_BC62AA: BranchF loc_BC6589
  loc_BC62AD: LitI2_Byte 0
  loc_BC62AF: CUI1I2
  loc_BC62B1: ILdRf arg_2C
  loc_BC62B4: ILdRf var_CC
  loc_BC62B7: AddI4
  loc_BC62B8: ILdI4 arg_C
  loc_BC62BB: Ary1StUI1
  loc_BC62BD: LitI2_Byte 0
  loc_BC62BF: CUI1I2
  loc_BC62C1: ILdRf arg_2C
  loc_BC62C4: ILdRf var_CC
  loc_BC62C7: AddI4
  loc_BC62C8: LitI4 1
  loc_BC62CD: AddI4
  loc_BC62CE: ILdI4 arg_C
  loc_BC62D1: Ary1StUI1
  loc_BC62D3: LitI2_Byte 0
  loc_BC62D5: CUI1I2
  loc_BC62D7: ILdRf arg_2C
  loc_BC62DA: ILdRf var_CC
  loc_BC62DD: AddI4
  loc_BC62DE: LitI4 2
  loc_BC62E3: AddI4
  loc_BC62E4: ILdI4 arg_C
  loc_BC62E7: Ary1StUI1
  loc_BC62E9: LitI2_Byte 1
  loc_BC62EB: CUI1I2
  loc_BC62ED: ILdRf arg_2C
  loc_BC62F0: ILdRf var_CC
  loc_BC62F3: AddI4
  loc_BC62F4: LitI4 3
  loc_BC62F9: AddI4
  loc_BC62FA: ILdI4 arg_C
  loc_BC62FD: Ary1StUI1
  loc_BC62FF: ILdRf var_CC
  loc_BC6302: LitI4 4
  loc_BC6307: AddI4
  loc_BC6308: FStR4 var_CC
  loc_BC630B: LitI4 8
  loc_BC6310: ILdRf arg_18
  loc_BC6313: AddI4
  loc_BC6314: FStR4 var_BC
  loc_BC6317: LitI4 0
  loc_BC631C: FLdRfVar var_B0
  loc_BC631F: ILdRf var_BC
  loc_BC6322: LitI4 1
  loc_BC6327: SubI4
  loc_BC6328: ForI4 var_144
  loc_BC632E: ILdRf var_C4
  loc_BC6331: ILdRf var_BC
  loc_BC6334: LitI4 1
  loc_BC6339: SubI4
  loc_BC633A: ILdRf var_B0
  loc_BC633D: SubI4
  loc_BC633E: FLdPr Me
  loc_BC6341: MemLdRfVar from_stack_1.global_164
  loc_BC6344: Ary1LdI4
  loc_BC6345: AndI4
  loc_BC6346: LitI4 0
  loc_BC634B: NeI4
  loc_BC634C: LitI2_Byte 1
  loc_BC634E: AndI4
  loc_BC634F: CUI1I2
  loc_BC6351: ILdRf arg_2C
  loc_BC6354: ILdRf var_CC
  loc_BC6357: AddI4
  loc_BC6358: ILdRf var_B0
  loc_BC635B: AddI4
  loc_BC635C: ILdI4 arg_C
  loc_BC635F: Ary1StUI1
  loc_BC6361: FLdRfVar var_B0
  loc_BC6364: NextI4 var_144, loc_BC632E
  loc_BC6369: ILdRf var_CC
  loc_BC636C: ILdRf var_BC
  loc_BC636F: AddI4
  loc_BC6370: FStR4 var_CC
  loc_BC6373: LitI4 0
  loc_BC6378: FLdRfVar var_B4
  loc_BC637B: ILdRf var_C4
  loc_BC637E: LitI4 3
  loc_BC6383: SubI4
  loc_BC6384: LitI4 3
  loc_BC6389: ForStepI4 var_14C
  loc_BC638F: ILdRf arg_20
  loc_BC6392: ILdRf var_C8
  loc_BC6395: AddI4
  loc_BC6396: ILdRf var_B4
  loc_BC6399: AddI4
  loc_BC639A: ILdI4 arg_10
  loc_BC639D: Ary1LdUI1
  loc_BC639F: CI4UI1
  loc_BC63A0: LitI4 &HF
  loc_BC63A5: AndI4
  loc_BC63A6: LitI4 &H64
  loc_BC63AB: MulI4
  loc_BC63AC: ILdRf arg_20
  loc_BC63AF: ILdRf var_C8
  loc_BC63B2: AddI4
  loc_BC63B3: ILdRf var_B4
  loc_BC63B6: AddI4
  loc_BC63B7: LitI4 1
  loc_BC63BC: AddI4
  loc_BC63BD: ILdI4 arg_10
  loc_BC63C0: Ary1LdUI1
  loc_BC63C2: CI4UI1
  loc_BC63C3: LitI4 &HF
  loc_BC63C8: AndI4
  loc_BC63C9: LitI4 &HA
  loc_BC63CE: MulI4
  loc_BC63CF: AddI4
  loc_BC63D0: ILdRf arg_20
  loc_BC63D3: ILdRf var_C8
  loc_BC63D6: AddI4
  loc_BC63D7: ILdRf var_B4
  loc_BC63DA: AddI4
  loc_BC63DB: LitI4 2
  loc_BC63E0: AddI4
  loc_BC63E1: ILdI4 arg_10
  loc_BC63E4: Ary1LdUI1
  loc_BC63E6: CI4UI1
  loc_BC63E7: LitI4 &HF
  loc_BC63EC: AndI4
  loc_BC63ED: AddI4
  loc_BC63EE: FStR4 var_B8
  loc_BC63F1: LitI4 0
  loc_BC63F6: FLdRfVar var_B0
  loc_BC63F9: LitI4 9
  loc_BC63FE: ForI4 var_154
  loc_BC6404: ILdRf var_B8
  loc_BC6407: LitI4 9
  loc_BC640C: ILdRf var_B0
  loc_BC640F: SubI4
  loc_BC6410: FLdPr Me
  loc_BC6413: MemLdRfVar from_stack_1.global_164
  loc_BC6416: Ary1LdI4
  loc_BC6417: AndI4
  loc_BC6418: LitI4 0
  loc_BC641D: NeI4
  loc_BC641E: LitI2_Byte 1
  loc_BC6420: AndI4
  loc_BC6421: CUI1I2
  loc_BC6423: ILdRf arg_2C
  loc_BC6426: ILdRf var_CC
  loc_BC6429: AddI4
  loc_BC642A: ILdRf var_B0
  loc_BC642D: AddI4
  loc_BC642E: ILdI4 arg_C
  loc_BC6431: Ary1StUI1
  loc_BC6433: FLdRfVar var_B0
  loc_BC6436: NextI4 var_154, loc_BC6404
  loc_BC643B: ILdRf var_CC
  loc_BC643E: LitI4 &HA
  loc_BC6443: AddI4
  loc_BC6444: FStR4 var_CC
  loc_BC6447: FLdRfVar var_B4
  loc_BC644A: NextStepI4 var_14C, loc_BC638F
  loc_BC644F: ILdRf var_C4
  loc_BC6452: LitI4 3
  loc_BC6457: ModI4
  loc_BC6458: FStR4 var_158
  loc_BC645B: ILdRf var_158
  loc_BC645E: LitI4 1
  loc_BC6463: EqI4
  loc_BC6464: BranchF loc_BC64E0
  loc_BC6467: ILdRf arg_20
  loc_BC646A: ILdRf var_C8
  loc_BC646D: AddI4
  loc_BC646E: ILdRf var_C4
  loc_BC6471: AddI4
  loc_BC6472: LitI4 1
  loc_BC6477: SubI4
  loc_BC6478: ILdI4 arg_10
  loc_BC647B: Ary1LdUI1
  loc_BC647D: CI4UI1
  loc_BC647E: LitI4 &HF
  loc_BC6483: AndI4
  loc_BC6484: FStR4 var_B8
  loc_BC6487: LitI4 0
  loc_BC648C: FLdRfVar var_B0
  loc_BC648F: LitI4 3
  loc_BC6494: ForI4 var_160
  loc_BC649A: ILdRf var_B8
  loc_BC649D: LitI4 3
  loc_BC64A2: ILdRf var_B0
  loc_BC64A5: SubI4
  loc_BC64A6: FLdPr Me
  loc_BC64A9: MemLdRfVar from_stack_1.global_164
  loc_BC64AC: Ary1LdI4
  loc_BC64AD: AndI4
  loc_BC64AE: LitI4 0
  loc_BC64B3: NeI4
  loc_BC64B4: LitI2_Byte 1
  loc_BC64B6: AndI4
  loc_BC64B7: CUI1I2
  loc_BC64B9: ILdRf arg_2C
  loc_BC64BC: ILdRf var_CC
  loc_BC64BF: AddI4
  loc_BC64C0: ILdRf var_B0
  loc_BC64C3: AddI4
  loc_BC64C4: ILdI4 arg_C
  loc_BC64C7: Ary1StUI1
  loc_BC64C9: FLdRfVar var_B0
  loc_BC64CC: NextI4 var_160, loc_BC649A
  loc_BC64D1: ILdRf var_CC
  loc_BC64D4: LitI4 4
  loc_BC64D9: AddI4
  loc_BC64DA: FStR4 var_CC
  loc_BC64DD: Branch loc_BC6586
  loc_BC64E0: ILdRf var_158
  loc_BC64E3: LitI4 2
  loc_BC64E8: EqI4
  loc_BC64E9: BranchF loc_BC6586
  loc_BC64EC: ILdRf arg_20
  loc_BC64EF: ILdRf var_C8
  loc_BC64F2: AddI4
  loc_BC64F3: ILdRf var_C4
  loc_BC64F6: AddI4
  loc_BC64F7: LitI4 2
  loc_BC64FC: SubI4
  loc_BC64FD: ILdI4 arg_10
  loc_BC6500: Ary1LdUI1
  loc_BC6502: CI4UI1
  loc_BC6503: LitI4 &HF
  loc_BC6508: AndI4
  loc_BC6509: LitI4 &HA
  loc_BC650E: MulI4
  loc_BC650F: ILdRf arg_20
  loc_BC6512: ILdRf var_C8
  loc_BC6515: AddI4
  loc_BC6516: ILdRf var_C4
  loc_BC6519: AddI4
  loc_BC651A: LitI4 1
  loc_BC651F: SubI4
  loc_BC6520: ILdI4 arg_10
  loc_BC6523: Ary1LdUI1
  loc_BC6525: CI4UI1
  loc_BC6526: LitI4 &HF
  loc_BC652B: AndI4
  loc_BC652C: AddI4
  loc_BC652D: FStR4 var_B8
  loc_BC6530: LitI4 0
  loc_BC6535: FLdRfVar var_B0
  loc_BC6538: LitI4 6
  loc_BC653D: ForI4 var_168
  loc_BC6543: ILdRf var_B8
  loc_BC6546: LitI4 6
  loc_BC654B: ILdRf var_B0
  loc_BC654E: SubI4
  loc_BC654F: FLdPr Me
  loc_BC6552: MemLdRfVar from_stack_1.global_164
  loc_BC6555: Ary1LdI4
  loc_BC6556: AndI4
  loc_BC6557: LitI4 0
  loc_BC655C: NeI4
  loc_BC655D: LitI2_Byte 1
  loc_BC655F: AndI4
  loc_BC6560: CUI1I2
  loc_BC6562: ILdRf arg_2C
  loc_BC6565: ILdRf var_CC
  loc_BC6568: AddI4
  loc_BC6569: ILdRf var_B0
  loc_BC656C: AddI4
  loc_BC656D: ILdI4 arg_C
  loc_BC6570: Ary1StUI1
  loc_BC6572: FLdRfVar var_B0
  loc_BC6575: NextI4 var_168, loc_BC6543
  loc_BC657A: ILdRf var_CC
  loc_BC657D: LitI4 7
  loc_BC6582: AddI4
  loc_BC6583: FStR4 var_CC
  loc_BC6586: Branch loc_BC698A
  loc_BC6589: ILdRf var_124
  loc_BC658C: LitI4 2
  loc_BC6591: EqI4
  loc_BC6592: BranchF loc_BC67B2
  loc_BC6595: LitI2_Byte 0
  loc_BC6597: CUI1I2
  loc_BC6599: ILdRf arg_2C
  loc_BC659C: ILdRf var_CC
  loc_BC659F: AddI4
  loc_BC65A0: ILdI4 arg_C
  loc_BC65A3: Ary1StUI1
  loc_BC65A5: LitI2_Byte 0
  loc_BC65A7: CUI1I2
  loc_BC65A9: ILdRf arg_2C
  loc_BC65AC: ILdRf var_CC
  loc_BC65AF: AddI4
  loc_BC65B0: LitI4 1
  loc_BC65B5: AddI4
  loc_BC65B6: ILdI4 arg_C
  loc_BC65B9: Ary1StUI1
  loc_BC65BB: LitI2_Byte 1
  loc_BC65BD: CUI1I2
  loc_BC65BF: ILdRf arg_2C
  loc_BC65C2: ILdRf var_CC
  loc_BC65C5: AddI4
  loc_BC65C6: LitI4 2
  loc_BC65CB: AddI4
  loc_BC65CC: ILdI4 arg_C
  loc_BC65CF: Ary1StUI1
  loc_BC65D1: LitI2_Byte 0
  loc_BC65D3: CUI1I2
  loc_BC65D5: ILdRf arg_2C
  loc_BC65D8: ILdRf var_CC
  loc_BC65DB: AddI4
  loc_BC65DC: LitI4 3
  loc_BC65E1: AddI4
  loc_BC65E2: ILdI4 arg_C
  loc_BC65E5: Ary1StUI1
  loc_BC65E7: ILdRf var_CC
  loc_BC65EA: LitI4 4
  loc_BC65EF: AddI4
  loc_BC65F0: FStR4 var_CC
  loc_BC65F3: LitI4 7
  loc_BC65F8: ILdRf arg_18
  loc_BC65FB: AddI4
  loc_BC65FC: FStR4 var_BC
  loc_BC65FF: LitI4 0
  loc_BC6604: FLdRfVar var_B0
  loc_BC6607: ILdRf var_BC
  loc_BC660A: LitI4 1
  loc_BC660F: SubI4
  loc_BC6610: ForI4 var_170
  loc_BC6616: ILdRf var_C4
  loc_BC6619: ILdRf var_BC
  loc_BC661C: LitI4 1
  loc_BC6621: SubI4
  loc_BC6622: ILdRf var_B0
  loc_BC6625: SubI4
  loc_BC6626: FLdPr Me
  loc_BC6629: MemLdRfVar from_stack_1.global_164
  loc_BC662C: Ary1LdI4
  loc_BC662D: AndI4
  loc_BC662E: LitI4 0
  loc_BC6633: NeI4
  loc_BC6634: LitI2_Byte 1
  loc_BC6636: AndI4
  loc_BC6637: CUI1I2
  loc_BC6639: ILdRf arg_2C
  loc_BC663C: ILdRf var_CC
  loc_BC663F: AddI4
  loc_BC6640: ILdRf var_B0
  loc_BC6643: AddI4
  loc_BC6644: ILdI4 arg_C
  loc_BC6647: Ary1StUI1
  loc_BC6649: FLdRfVar var_B0
  loc_BC664C: NextI4 var_170, loc_BC6616
  loc_BC6651: ILdRf var_CC
  loc_BC6654: ILdRf var_BC
  loc_BC6657: AddI4
  loc_BC6658: FStR4 var_CC
  loc_BC665B: LitI4 0
  loc_BC6660: FLdRfVar var_B4
  loc_BC6663: ILdRf var_C4
  loc_BC6666: LitI4 2
  loc_BC666B: SubI4
  loc_BC666C: LitI4 2
  loc_BC6671: ForStepI4 var_178
  loc_BC6677: FLdRfVar var_EC
  loc_BC667A: ILdRf arg_20
  loc_BC667D: ILdRf var_C8
  loc_BC6680: AddI4
  loc_BC6681: ILdRf var_B4
  loc_BC6684: AddI4
  loc_BC6685: ILdI4 arg_10
  loc_BC6688: Ary1LdUI1
  loc_BC668A: ILdRf Me
  loc_BC668D: ImpAdCallNonVirt
  loc_BC6693: ILdRf var_EC
  loc_BC6696: LitI4 &H2D
  loc_BC669B: MulI4
  loc_BC669C: FLdRfVar var_17C
  loc_BC669F: ILdRf arg_20
  loc_BC66A2: ILdRf var_C8
  loc_BC66A5: AddI4
  loc_BC66A6: ILdRf var_B4
  loc_BC66A9: AddI4
  loc_BC66AA: LitI4 1
  loc_BC66AF: AddI4
  loc_BC66B0: ILdI4 arg_10
  loc_BC66B3: Ary1LdUI1
  loc_BC66B5: ILdRf Me
  loc_BC66B8: ImpAdCallNonVirt
  loc_BC66BE: ILdRf var_17C
  loc_BC66C1: AddI4
  loc_BC66C2: FStR4 var_B8
  loc_BC66C5: LitI4 0
  loc_BC66CA: FLdRfVar var_B0
  loc_BC66CD: LitI4 &HA
  loc_BC66D2: ForI4 var_184
  loc_BC66D8: ILdRf var_B8
  loc_BC66DB: LitI4 &HA
  loc_BC66E0: ILdRf var_B0
  loc_BC66E3: SubI4
  loc_BC66E4: FLdPr Me
  loc_BC66E7: MemLdRfVar from_stack_1.global_164
  loc_BC66EA: Ary1LdI4
  loc_BC66EB: AndI4
  loc_BC66EC: LitI4 0
  loc_BC66F1: NeI4
  loc_BC66F2: LitI2_Byte 1
  loc_BC66F4: AndI4
  loc_BC66F5: CUI1I2
  loc_BC66F7: ILdRf arg_2C
  loc_BC66FA: ILdRf var_CC
  loc_BC66FD: AddI4
  loc_BC66FE: ILdRf var_B0
  loc_BC6701: AddI4
  loc_BC6702: ILdI4 arg_C
  loc_BC6705: Ary1StUI1
  loc_BC6707: FLdRfVar var_B0
  loc_BC670A: NextI4 var_184, loc_BC66D8
  loc_BC670F: ILdRf var_CC
  loc_BC6712: LitI4 &HB
  loc_BC6717: AddI4
  loc_BC6718: FStR4 var_CC
  loc_BC671B: FLdRfVar var_B4
  loc_BC671E: NextStepI4 var_178, loc_BC6677
  loc_BC6723: ILdRf var_C4
  loc_BC6726: LitI4 1
  loc_BC672B: AndI4
  loc_BC672C: CBoolI4
  loc_BC672E: BranchF loc_BC67AF
  loc_BC6731: FLdRfVar var_EC
  loc_BC6734: ILdRf arg_20
  loc_BC6737: ILdRf var_C8
  loc_BC673A: AddI4
  loc_BC673B: ILdRf var_C4
  loc_BC673E: AddI4
  loc_BC673F: LitI4 1
  loc_BC6744: SubI4
  loc_BC6745: ILdI4 arg_10
  loc_BC6748: Ary1LdUI1
  loc_BC674A: ILdRf Me
  loc_BC674D: ImpAdCallNonVirt
  loc_BC6753: ILdRf var_EC
  loc_BC6756: FStR4 var_B8
  loc_BC6759: LitI4 0
  loc_BC675E: FLdRfVar var_B0
  loc_BC6761: LitI4 5
  loc_BC6766: ForI4 var_18C
  loc_BC676C: ILdRf var_B8
  loc_BC676F: LitI4 5
  loc_BC6774: ILdRf var_B0
  loc_BC6777: SubI4
  loc_BC6778: FLdPr Me
  loc_BC677B: MemLdRfVar from_stack_1.global_164
  loc_BC677E: Ary1LdI4
  loc_BC677F: AndI4
  loc_BC6780: LitI4 0
  loc_BC6785: NeI4
  loc_BC6786: LitI2_Byte 1
  loc_BC6788: AndI4
  loc_BC6789: CUI1I2
  loc_BC678B: ILdRf arg_2C
  loc_BC678E: ILdRf var_CC
  loc_BC6791: AddI4
  loc_BC6792: ILdRf var_B0
  loc_BC6795: AddI4
  loc_BC6796: ILdI4 arg_C
  loc_BC6799: Ary1StUI1
  loc_BC679B: FLdRfVar var_B0
  loc_BC679E: NextI4 var_18C, loc_BC676C
  loc_BC67A3: ILdRf var_CC
  loc_BC67A6: LitI4 6
  loc_BC67AB: AddI4
  loc_BC67AC: FStR4 var_CC
  loc_BC67AF: Branch loc_BC698A
  loc_BC67B2: ILdRf var_124
  loc_BC67B5: LitI4 3
  loc_BC67BA: EqI4
  loc_BC67BB: BranchF loc_BC698A
  loc_BC67BE: LitI2_Byte 1
  loc_BC67C0: CUI1I2
  loc_BC67C2: ILdRf arg_2C
  loc_BC67C5: ILdRf var_CC
  loc_BC67C8: AddI4
  loc_BC67C9: ILdI4 arg_C
  loc_BC67CC: Ary1StUI1
  loc_BC67CE: LitI2_Byte 0
  loc_BC67D0: CUI1I2
  loc_BC67D2: ILdRf arg_2C
  loc_BC67D5: ILdRf var_CC
  loc_BC67D8: AddI4
  loc_BC67D9: LitI4 1
  loc_BC67DE: AddI4
  loc_BC67DF: ILdI4 arg_C
  loc_BC67E2: Ary1StUI1
  loc_BC67E4: LitI2_Byte 0
  loc_BC67E6: CUI1I2
  loc_BC67E8: ILdRf arg_2C
  loc_BC67EB: ILdRf var_CC
  loc_BC67EE: AddI4
  loc_BC67EF: LitI4 2
  loc_BC67F4: AddI4
  loc_BC67F5: ILdI4 arg_C
  loc_BC67F8: Ary1StUI1
  loc_BC67FA: LitI2_Byte 0
  loc_BC67FC: CUI1I2
  loc_BC67FE: ILdRf arg_2C
  loc_BC6801: ILdRf var_CC
  loc_BC6804: AddI4
  loc_BC6805: LitI4 3
  loc_BC680A: AddI4
  loc_BC680B: ILdI4 arg_C
  loc_BC680E: Ary1StUI1
  loc_BC6810: ILdRf var_CC
  loc_BC6813: LitI4 4
  loc_BC6818: AddI4
  loc_BC6819: FStR4 var_CC
  loc_BC681C: LitI4 6
  loc_BC6821: ILdRf arg_18
  loc_BC6824: AddI4
  loc_BC6825: FStR4 var_BC
  loc_BC6828: LitI4 0
  loc_BC682D: FLdRfVar var_B0
  loc_BC6830: ILdRf var_BC
  loc_BC6833: LitI4 1
  loc_BC6838: SubI4
  loc_BC6839: ForI4 var_194
  loc_BC683F: ILdRf var_C4
  loc_BC6842: ILdRf var_BC
  loc_BC6845: ILdRf var_B0
  loc_BC6848: SubI4
  loc_BC6849: FLdPr Me
  loc_BC684C: MemLdRfVar from_stack_1.global_164
  loc_BC684F: Ary1LdI4
  loc_BC6850: AndI4
  loc_BC6851: LitI4 0
  loc_BC6856: NeI4
  loc_BC6857: LitI2_Byte 1
  loc_BC6859: AndI4
  loc_BC685A: CUI1I2
  loc_BC685C: ILdRf arg_2C
  loc_BC685F: ILdRf var_CC
  loc_BC6862: AddI4
  loc_BC6863: ILdRf var_B0
  loc_BC6866: AddI4
  loc_BC6867: ILdI4 arg_C
  loc_BC686A: Ary1StUI1
  loc_BC686C: FLdRfVar var_B0
  loc_BC686F: NextI4 var_194, loc_BC683F
  loc_BC6874: ILdRf var_CC
  loc_BC6877: ILdRf var_BC
  loc_BC687A: AddI4
  loc_BC687B: FStR4 var_CC
  loc_BC687E: LitI4 0
  loc_BC6883: FLdRfVar var_B4
  loc_BC6886: ILdRf var_C4
  loc_BC6889: LitI4 2
  loc_BC688E: SubI4
  loc_BC688F: LitI4 2
  loc_BC6894: ForStepI4 var_19C
  loc_BC689A: ILdRf arg_20
  loc_BC689D: ILdRf var_C8
  loc_BC68A0: AddI4
  loc_BC68A1: ILdRf var_B4
  loc_BC68A4: AddI4
  loc_BC68A5: ILdI4 arg_10
  loc_BC68A8: Ary1LdUI1
  loc_BC68AA: CI4UI1
  loc_BC68AB: FStR4 var_B0
  loc_BC68AE: ILdRf var_B0
  loc_BC68B1: FStR4 var_1A0
  loc_BC68B4: ILdRf var_1A0
  loc_BC68B7: LitI4 &H81
  loc_BC68BC: LitI4 &H9F
  loc_BC68C1: BetweenI4
  loc_BC68C3: BranchF loc_BC68D5
  loc_BC68C6: ILdRf var_B0
  loc_BC68C9: LitI4 &H81
  loc_BC68CE: SubI4
  loc_BC68CF: FStR4 var_B0
  loc_BC68D2: Branch loc_BC68FC
  loc_BC68D5: ILdRf var_1A0
  loc_BC68D8: LitI4 &HE0
  loc_BC68DD: LitI4 &HEB
  loc_BC68E2: BetweenI4
  loc_BC68E4: BranchF loc_BC68F6
  loc_BC68E7: ILdRf var_B0
  loc_BC68EA: LitI4 &HC1
  loc_BC68EF: SubI4
  loc_BC68F0: FStR4 var_B0
  loc_BC68F3: Branch loc_BC68FC
  loc_BC68F6: ExitProcCbHresult
  loc_BC68FC: ILdRf arg_20
  loc_BC68FF: ILdRf var_C8
  loc_BC6902: AddI4
  loc_BC6903: ILdRf var_B4
  loc_BC6906: AddI4
  loc_BC6907: LitI4 1
  loc_BC690C: AddI4
  loc_BC690D: ILdI4 arg_10
  loc_BC6910: Ary1LdUI1
  loc_BC6912: CI4UI1
  loc_BC6913: LitI4 &H40
  loc_BC6918: SubI4
  loc_BC6919: FStR4 var_B8
  loc_BC691C: ILdRf var_B8
  loc_BC691F: ILdRf var_B0
  loc_BC6922: LitI4 &HC0
  loc_BC6927: MulI4
  loc_BC6928: AddI4
  loc_BC6929: FStR4 var_B8
  loc_BC692C: LitI4 0
  loc_BC6931: FLdRfVar var_B0
  loc_BC6934: LitI4 &HC
  loc_BC6939: ForI4 var_1A8
  loc_BC693F: ILdRf var_B8
  loc_BC6942: LitI4 &HC
  loc_BC6947: ILdRf var_B0
  loc_BC694A: SubI4
  loc_BC694B: FLdPr Me
  loc_BC694E: MemLdRfVar from_stack_1.global_164
  loc_BC6951: Ary1LdI4
  loc_BC6952: AndI4
  loc_BC6953: LitI4 0
  loc_BC6958: NeI4
  loc_BC6959: LitI2_Byte 1
  loc_BC695B: AndI4
  loc_BC695C: CUI1I2
  loc_BC695E: ILdRf arg_2C
  loc_BC6961: ILdRf var_CC
  loc_BC6964: AddI4
  loc_BC6965: ILdRf var_B0
  loc_BC6968: AddI4
  loc_BC6969: ILdI4 arg_C
  loc_BC696C: Ary1StUI1
  loc_BC696E: FLdRfVar var_B0
  loc_BC6971: NextI4 var_1A8, loc_BC693F
  loc_BC6976: ILdRf var_CC
  loc_BC6979: LitI4 &HD
  loc_BC697E: AddI4
  loc_BC697F: FStR4 var_CC
  loc_BC6982: FLdRfVar var_B4
  loc_BC6985: NextStepI4 var_19C, loc_BC689A
  loc_BC698A: ILdRf var_C8
  loc_BC698D: ILdRf var_C4
  loc_BC6990: AddI4
  loc_BC6991: FStR4 var_C8
  loc_BC6994: ILdRf var_C8
  loc_BC6997: ILdRf arg_14
  loc_BC699A: LtI4
  loc_BC699B: BranchT loc_BC60DA
  loc_BC699E: ILdRf var_CC
  loc_BC69A1: FLdRfVar var_B0
  loc_BC69A4: ILdRf var_CC
  loc_BC69A7: LitI4 3
  loc_BC69AC: AddI4
  loc_BC69AD: ForI4 var_1B0
  loc_BC69B3: ILdRf arg_24
  loc_BC69B6: LitI4 0
  loc_BC69BB: GtI4
  loc_BC69BC: ILdRf var_B0
  loc_BC69BF: ILdRf arg_24
  loc_BC69C2: GeI4
  loc_BC69C3: AndI4
  loc_BC69C4: BranchF loc_BC69CA
  loc_BC69C7: Branch loc_BC69E2
  loc_BC69CA: LitI2_Byte 0
  loc_BC69CC: CUI1I2
  loc_BC69CE: ILdRf arg_2C
  loc_BC69D1: ILdRf var_B0
  loc_BC69D4: AddI4
  loc_BC69D5: ILdI4 arg_C
  loc_BC69D8: Ary1StUI1
  loc_BC69DA: FLdRfVar var_B0
  loc_BC69DD: NextI4 var_1B0, loc_BC69B3
  loc_BC69E2: ILdRf arg_14
  loc_BC69E5: IStI4 arg_28
  loc_BC69E8: ILdRf var_CC
  loc_BC69EB: LitI4 4
  loc_BC69F0: AddI4
  loc_BC69F1: FStR4 var_88
  loc_BC69F4: ExitProcCbHresult
  loc_BC69FA: CI4UI1
End Function
