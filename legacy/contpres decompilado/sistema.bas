
Private Sub Proc_265_0_BD1BFF() 'BD1BFF
This procedure is incorrect
End Sub

Private Function Proc_265_1_9A06AC(arg_C) '9A06AC
  'Data Table: 402BF8
  loc_9A0648: FLdRfVar var_8C
  loc_9A064B: ImpAdLdRf MemVar_C44F9C
  loc_9A064E: NewIfNullPr Me
  loc_9A0651:  = Me.Global.Printers
  loc_9A0656: FLdZeroAd var_8C
  loc_9A0659: FStAdFuncNoPop
  loc_9A065C: FLdRfVar var_88
  loc_9A065F: ForEachCollObj
  loc_9A0667: FLdPr var_88
  loc_9A066A: LateIdLdVar var_A4 DispID_28 1
  loc_9A0671: CStrVarTmp
  loc_9A0672: FStStrNoPop var_A8
  loc_9A0675: ILdI4 arg_C
  loc_9A0678: EqStr
  loc_9A067A: FFree1Str var_A8
  loc_9A067D: FFree1Var var_A4 = ""
  loc_9A0680: BranchF loc_9A069E
  loc_9A0683: ILdRf var_88
  loc_9A0686: FStAdNoPop
  loc_9A068A: ImpAdLdRf MemVar_C44F9C
  loc_9A068D: NewIfNullPr Me
  loc_9A0690: Me.Global.Printer = from_stack_1
  loc_9A0695: FFree1Ad var_8C
  loc_9A0698: ExitForCollObj
  loc_9A069E: FLdRfVar var_88
  loc_9A06A1: NextEachCollObj
  loc_9A06A9: ExitProc
End Function

Private Function Proc_265_2_9A95AC(arg_C) '9A95AC
  'Data Table: 402BF8
  loc_9A9518: LitStr vbNullString
  loc_9A951B: FStStrCopy var_88
  loc_9A951E: FLdRfVar var_98
  loc_9A9521: ILdPr
  loc_9A9524:  = Form.hWnd
  loc_9A9529: FLdRfVar var_94
  loc_9A952C: ILdI4 arg_C
  loc_9A952F: ILdRf var_98
  loc_9A9532: ImpAdCallI2 SHGetSpecialFolderLocation(, , )
  loc_9A9537: FStR4 var_9C
  loc_9A953A: SetLastSystemError
  loc_9A953B: ILdRf var_9C
  loc_9A953E: LitI4 0
  loc_9A9543: EqI4
  loc_9A9544: BranchF loc_9A95AA
  loc_9A9547: LitI4 &H104
  loc_9A954C: ImpAdCallI2 Space$()
  loc_9A9551: FStStr var_8C
  loc_9A9554: ILdRf var_8C
  loc_9A9557: FLdRfVar var_A0
  loc_9A955A: CStr2Ansi
  loc_9A955B: ILdRf var_A0
  loc_9A955E: ILdRf var_94
  loc_9A9561: ImpAdCallI2 SHGetPathFromIDListA()
  loc_9A9566: FStR4 var_98
  loc_9A9569: SetLastSystemError
  loc_9A956A: ILdRf var_A0
  loc_9A956D: FLdRfVar var_8C
  loc_9A9570: CStr2Uni
  loc_9A9572: ILdRf var_98
  loc_9A9575: CBoolI4
  loc_9A9577: FFree1Str var_A0
  loc_9A957A: BranchF loc_9A95AA
  loc_9A957D: LitI4 1
  loc_9A9582: ILdRf var_8C
  loc_9A9585: LitStr vbNullString
  loc_9A9588: LitI4 0
  loc_9A958D: FnInStr4
  loc_9A958F: LitI4 1
  loc_9A9594: SubI4
  loc_9A9595: ILdRf var_8C
  loc_9A9598: ImpAdCallI2 Left$(, )
  loc_9A959D: FStStrNoPop var_A0
  loc_9A95A0: LitStr vbNullString
  loc_9A95A3: ConcatStr
  loc_9A95A4: FStStr var_88
  loc_9A95A7: FFree1Str var_A0
  loc_9A95AA: ExitProc
End Function

Private Function Proc_265_3_9CCBBC(arg_C) '9CCBBC
  'Data Table: 402BF8
  loc_9CCAEC: ILdI4 arg_C
  loc_9CCAEF: ILdRf var_8C
  loc_9CCAF2: FLdRfVar var_94
  loc_9CCAF5: CStr2Ansi
  loc_9CCAF6: ILdRf var_94
  loc_9CCAF9: ImpAdCallI2 lstrcpy(, )
  loc_9CCAFE: FStR4 var_9C
  loc_9CCB01: SetLastSystemError
  loc_9CCB02: ILdRf var_94
  loc_9CCB05: FLdRfVar var_98
  loc_9CCB08: CStr2Uni
  loc_9CCB0A: ILdRf var_98
  loc_9CCB0D: ILdRf var_8C
  loc_9CCB10: StFixedStr
  loc_9CCB13: ILdRf var_9C
  loc_9CCB16: FStR4 var_90
  loc_9CCB19: FFreeStr var_94 = ""
  loc_9CCB20: LitI4 1
  loc_9CCB25: ILdRf var_8C
  loc_9CCB28: CVarStr var_BC
  loc_9CCB2B: LitI4 0
  loc_9CCB30: FLdRfVar var_AC
  loc_9CCB33: ImpAdCallFPR4  = Chr()
  loc_9CCB38: FLdRfVar var_AC
  loc_9CCB3B: LitI4 0
  loc_9CCB40: FnInStr4Var
  loc_9CCB44: LitVarI2 var_DC, 0
  loc_9CCB49: HardType
  loc_9CCB4A: EqVarBool
  loc_9CCB4C: FFreeVar var_AC = ""
  loc_9CCB53: BranchF loc_9CCB5F
  loc_9CCB56: LitStr vbNullString
  loc_9CCB59: FStStrCopy var_88
  loc_9CCB5C: Branch loc_9CCBB8
  loc_9CCB5F: LitI4 1
  loc_9CCB64: ILdRf var_8C
  loc_9CCB67: CVarStr var_BC
  loc_9CCB6A: LitI4 0
  loc_9CCB6F: FLdRfVar var_AC
  loc_9CCB72: ImpAdCallFPR4  = Chr()
  loc_9CCB77: FLdRfVar var_AC
  loc_9CCB7A: LitI4 0
  loc_9CCB7F: FnInStr4Var
  loc_9CCB83: LitVarI2 var_DC, 1
  loc_9CCB88: SubVar var_EC
  loc_9CCB8C: CI4Var
  loc_9CCB8E: ILdRf var_8C
  loc_9CCB91: FStStrCopy var_94
  loc_9CCB94: ILdRf var_94
  loc_9CCB97: ImpAdCallI2 Left$(, )
  loc_9CCB9C: FStStr var_98
  loc_9CCB9F: ILdRf var_94
  loc_9CCBA2: ILdRf var_8C
  loc_9CCBA5: StFixedStr
  loc_9CCBA8: FLdZeroAd var_98
  loc_9CCBAB: FStStr var_88
  loc_9CCBAE: FFree1Str var_94
  loc_9CCBB1: FFreeVar var_AC = ""
  loc_9CCBB8: ExitProc
End Function

Private Function Proc_265_4_9A6F18(arg_C, arg_10, arg_14) '9A6F18
  'Data Table: 402BF8
  loc_9A6E9C: ILdRf arg_C
  loc_9A6E9F: FStStrCopy var_88
  loc_9A6EA2: ILdRf arg_10
  loc_9A6EA5: FStStrCopy var_8C
  loc_9A6EA8: ILdRf arg_14
  loc_9A6EAB: FStStrCopy var_90
  loc_9A6EAE: ILdRf var_88
  loc_9A6EB1: LitStr ","
  loc_9A6EB4: ConcatStr
  loc_9A6EB5: FStStrNoPop var_9C
  loc_9A6EB8: ILdRf var_8C
  loc_9A6EBB: ConcatStr
  loc_9A6EBC: FStStrNoPop var_A0
  loc_9A6EBF: LitStr ","
  loc_9A6EC2: ConcatStr
  loc_9A6EC3: FStStrNoPop var_A4
  loc_9A6EC6: ILdRf var_90
  loc_9A6EC9: ConcatStr
  loc_9A6ECA: FStStr var_94
  loc_9A6ECD: FFreeStr var_9C = "": var_A0 = ""
  loc_9A6ED6: ILdRf var_94
  loc_9A6ED9: FLdRfVar var_A4
  loc_9A6EDC: CStr2Ansi
  loc_9A6EDD: ILdRf var_A4
  loc_9A6EE0: LitStr "Device"
  loc_9A6EE3: FLdRfVar var_A0
  loc_9A6EE6: CStr2Ansi
  loc_9A6EE7: ILdRf var_A0
  loc_9A6EEA: LitStr "windows"
  loc_9A6EED: FLdRfVar var_9C
  loc_9A6EF0: CStr2Ansi
  loc_9A6EF1: ILdRf var_9C
  loc_9A6EF4: ImpAdCallI2 WriteProfileString(, , )
  loc_9A6EF9: FStR4 var_A8
  loc_9A6EFC: SetLastSystemError
  loc_9A6EFD: ILdRf var_A4
  loc_9A6F00: FLdRfVar var_94
  loc_9A6F03: CStr2Uni
  loc_9A6F05: ILdRf var_A8
  loc_9A6F08: FStR4 var_98
  loc_9A6F0B: FFreeStr var_9C = "": var_A0 = ""
  loc_9A6F14: ExitProc
End Function

Private Function Proc_265_5_A673E8(arg_C) 'A673E8
  'Data Table: 402BF8
  loc_A67112: ILdRf arg_C
  loc_A67115: FStStrCopy var_88
  loc_A6711A: OnErrorGoto loc_A67367
  loc_A6711F: ILdRf var_88
  loc_A67122: LitStr vbNullString
  loc_A67125: EqStr
  loc_A67127: BranchF loc_A6712D
  loc_A6712C: ExitProc
  loc_A67131: LitI4 0
  loc_A67136: FStR4 var_98
  loc_A6713B: LitI4 &HF000C
  loc_A67140: ILdRf var_90
  loc_A67143: OrI4
  loc_A67144: FStR4 var_90
  loc_A67149: FLdRfVar var_98
  loc_A6714C: FLdRfVar var_8C
  loc_A6714F: ILdRf var_88
  loc_A67152: FLdRfVar var_B8
  loc_A67155: CStr2Ansi
  loc_A67156: ILdRf var_B8
  loc_A67159: ImpAdCallI2 OpenPrinter(, , )
  loc_A6715E: FStR4 var_BC
  loc_A67161: SetLastSystemError
  loc_A67162: ILdRf var_B8
  loc_A67165: FLdRfVar var_88
  loc_A67168: CStr2Uni
  loc_A6716A: ILdRf var_BC
  loc_A6716D: FStR4 var_9C
  loc_A67170: FFree1Str var_B8
  loc_A67175: ILdRf var_9C
  loc_A67178: LitI2_Byte 0
  loc_A6717A: CI4UI1
  loc_A6717B: EqI4
  loc_A6717C: BranchF loc_A67182
  loc_A67181: ExitProc
  loc_A67186: FLdRfVar var_A0
  loc_A67189: LitI4 0
  loc_A6718E: LitI4 0
  loc_A67193: LitI4 5
  loc_A67198: ILdRf var_8C
  loc_A6719B: ImpAdCallI2 GetPrinter(, , , , )
  loc_A671A0: FStR4 var_BC
  loc_A671A3: SetLastSystemError
  loc_A671A4: ILdRf var_BC
  loc_A671A7: FStR4 var_9C
  loc_A671AC: LitI4 0
  loc_A671B1: ILdRf var_A0
  loc_A671B4: LitI4 4
  loc_A671B9: IDvI4
  loc_A671BA: FLdRfVar var_C0
  loc_A671BD: Redim
  loc_A671C9: FLdRfVar var_A0
  loc_A671CC: ILdRf var_A0
  loc_A671CF: LitI4 0
  loc_A671D4: ILdRf var_C0
  loc_A671D7: AryLock
  loc_A671DA: Ary1LdRf
  loc_A671DB: LitI4 5
  loc_A671E0: ILdRf var_8C
  loc_A671E3: ImpAdCallI2 GetPrinter(, , , , )
  loc_A671E8: FStR4 var_BC
  loc_A671EB: SetLastSystemError
  loc_A671EC: AryUnlock
  loc_A671EF: ILdRf var_BC
  loc_A671F2: FStR4 var_9C
  loc_A671F7: ILdRf var_9C
  loc_A671FA: LitI2_Byte 0
  loc_A671FC: CI4UI1
  loc_A671FD: EqI4
  loc_A671FE: BranchF loc_A67204
  loc_A67203: ExitProc
  loc_A67208: LitI4 0
  loc_A6720D: ILdRf var_C0
  loc_A67210: AryLock
  loc_A67213: Ary1LdRf
  loc_A67214: ImpAdCallI2 Proc_265_3_9CCBBC()
  loc_A67219: FStStr var_B8
  loc_A6721C: AryUnlock
  loc_A6721F: ILdRf var_B8
  loc_A67222: FStStrCopy var_B4
  loc_A67225: FFree1Str var_B8
  loc_A6722A: LitI4 1
  loc_A6722F: ILdRf var_C0
  loc_A67232: AryLock
  loc_A67235: Ary1LdRf
  loc_A67236: ImpAdCallI2 Proc_265_3_9CCBBC()
  loc_A6723B: FStStr var_B8
  loc_A6723E: AryUnlock
  loc_A67241: ILdRf var_B8
  loc_A67244: FStStrCopy var_B0
  loc_A67247: FFree1Str var_B8
  loc_A6724C: LitI4 2
  loc_A67251: ILdRf var_C0
  loc_A67254: Ary1LdI4
  loc_A67255: FStR4 var_AC
  loc_A6725A: LitI4 3
  loc_A6725F: ILdRf var_C0
  loc_A67262: Ary1LdI4
  loc_A67263: FStR4 var_A8
  loc_A67268: LitI4 4
  loc_A6726D: ILdRf var_C0
  loc_A67270: Ary1LdI4
  loc_A67271: FStR4 var_A4
  loc_A67276: LitI4 4
  loc_A6727B: FStR4 var_AC
  loc_A67280: LitI4 0
  loc_A67285: FLdRfVar var_B4
  loc_A67288: FLdRfVar var_D8
  loc_A6728B: CRec2Ansi arg_14
  loc_A6728E: FLdRfVar var_D8
  loc_A67291: LitI4 5
  loc_A67296: ILdRf var_8C
  loc_A67299: ImpAdCallI2 SetPrinter(, , , )
  loc_A6729E: FStR4 var_BC
  loc_A672A1: SetLastSystemError
  loc_A672A2: FLdRfVar var_D8
  loc_A672A5: FLdRfVar var_B4
  loc_A672A8: CRec2Uni arg_14
  loc_A672AB: ILdRf var_BC
  loc_A672AE: FStR4 var_9C
  loc_A672B1: DestructAnsiOFrame
  loc_A672B9: ILdRf var_9C
  loc_A672BC: LitI2_Byte 0
  loc_A672BE: CI4UI1
  loc_A672BF: EqI4
  loc_A672C0: BranchF loc_A67311
  loc_A672C5: LitVar_Missing var_14C
  loc_A672C8: LitVar_Missing var_12C
  loc_A672CB: LitVar_Missing var_10C
  loc_A672CE: LitI4 0
  loc_A672D3: LitStr "SetPrinter Failed. Error code: "
  loc_A672D6: FLdRfVar var_BC
  loc_A672D9: ImpAdCallI2 Err 'rtcErrObj
  loc_A672DE: FStAdFunc var_DC
  loc_A672E1: FLdPr var_DC
  loc_A672E4:  = Err.LastDllError
  loc_A672E9: ILdRf var_BC
  loc_A672EC: CStrI4
  loc_A672EE: FStStrNoPop var_B8
  loc_A672F1: ConcatStr
  loc_A672F2: CVarStr var_EC
  loc_A672F5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_A672FA: FFree1Str var_B8
  loc_A672FD: FFree1Ad var_DC
  loc_A67300: FFreeVar var_EC = "": var_10C = "": var_12C = ""
  loc_A6730D: ExitProc
  loc_A6730E: Branch loc_A67357
  loc_A67315: FLdRfVar var_DC
  loc_A67318: ImpAdLdRf MemVar_C44F9C
  loc_A6731B: NewIfNullPr Me
  loc_A6731E:  = Me.Global.Printer
  loc_A67323: FLdPr var_DC
  loc_A67326: LateIdLdVar var_EC DispID_28 1
  loc_A6732D: CStrVarTmp
  loc_A6732E: FStStrNoPop var_B8
  loc_A67331: ILdRf var_88
  loc_A67334: NeStr
  loc_A67336: FFree1Str var_B8
  loc_A67339: FFree1Ad var_DC
  loc_A6733C: FFree1Var var_EC = ""
  loc_A6733F: BranchF loc_A67355
  loc_A67344: ILdRf var_88
  loc_A67347: FStStrCopy var_B8
  loc_A6734A: FLdRfVar var_B8
  loc_A6734D: ImpAdCallFPR4 Proc_265_1_9A06AC()
  loc_A67352: FFree1Str var_B8
  loc_A6735B: ILdRf var_8C
  loc_A6735E: ImpAdCallFPR4 ClosePrinter()
  loc_A67363: SetLastSystemError
  loc_A67366: ExitProc
  loc_A67369: LitI4 0
  loc_A6736E: LitStr "Error al acceder a la impresora."
  loc_A67371: LitStr vbCrLf
  loc_A67374: ConcatStr
  loc_A67375: FStStrNoPop var_B8
  loc_A67378: LitStr "Cod. "
  loc_A6737B: ConcatStr
  loc_A6737C: FStStrNoPop var_150
  loc_A6737F: FLdRfVar var_BC
  loc_A67382: ImpAdCallI2 Err 'rtcErrObj
  loc_A67387: FStAdFunc var_DC
  loc_A6738A: FLdPr var_DC
  loc_A6738D:  = Err.Number
  loc_A67392: ILdRf var_BC
  loc_A67395: CStrI4
  loc_A67397: FStStrNoPop var_154
  loc_A6739A: ConcatStr
  loc_A6739B: FStStrNoPop var_158
  loc_A6739E: LitStr ": "
  loc_A673A1: ConcatStr
  loc_A673A2: FStStrNoPop var_164
  loc_A673A5: FLdRfVar var_160
  loc_A673A8: ImpAdCallI2 Err 'rtcErrObj
  loc_A673AD: FStAdFunc var_15C
  loc_A673B0: FLdPr var_15C
  loc_A673B3:  = Err.Description
  loc_A673B8: ILdRf var_160
  loc_A673BB: ConcatStr
  loc_A673BC: FStStrNoPop var_168
  loc_A673BF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A673C4: FFreeStr var_B8 = "": var_150 = "": var_154 = "": var_158 = "": var_164 = "": var_160 = ""
  loc_A673D5: FFreeAd var_DC = ""
  loc_A673DE: Resume
  loc_A673E4: ExitProc
  loc_A673E5: MemLdFPR4 global_854
End Function

Private Function Proc_265_6_9A6390(arg_C, arg_10, arg_14) '9A6390
  'Data Table: 402BF8
  loc_9A6304: ILdRf arg_C
  loc_9A6307: FStStrCopy var_88
  loc_9A630A: LitStr vbNullString
  loc_9A630D: IStStrCopy arg_10
  loc_9A6311: LitStr vbNullString
  loc_9A6314: IStStrCopy arg_14
  loc_9A6318: LitI4 1
  loc_9A631D: ILdRf var_88
  loc_9A6320: LitStr ","
  loc_9A6323: LitI4 0
  loc_9A6328: FnInStr4
  loc_9A632A: CI2I4
  loc_9A632B: FStI2 var_8A
  loc_9A632E: FLdI2 var_8A
  loc_9A6331: LitI2_Byte 0
  loc_9A6333: GtI2
  loc_9A6334: BranchF loc_9A638E
  loc_9A6337: FLdI2 var_8A
  loc_9A633A: LitI2_Byte 1
  loc_9A633C: SubI2
  loc_9A633D: CI4UI1
  loc_9A633E: ILdRf var_88
  loc_9A6341: ImpAdCallI2 Left$(, )
  loc_9A6346: IStStr
  loc_9A634A: FLdI2 var_8A
  loc_9A634D: LitI2_Byte 1
  loc_9A634F: AddI2
  loc_9A6350: CI4UI1
  loc_9A6351: ILdRf var_88
  loc_9A6354: LitStr ","
  loc_9A6357: LitI4 0
  loc_9A635C: FnInStr4
  loc_9A635E: CI2I4
  loc_9A635F: FStI2 var_8C
  loc_9A6362: FLdI2 var_8C
  loc_9A6365: LitI2_Byte 0
  loc_9A6367: GtI2
  loc_9A6368: BranchF loc_9A638E
  loc_9A636B: FLdI2 var_8C
  loc_9A636E: FLdI2 var_8A
  loc_9A6371: SubI2
  loc_9A6372: LitI2_Byte 1
  loc_9A6374: SubI2
  loc_9A6375: CVarI2 var_AC
  loc_9A6378: FLdI2 var_8A
  loc_9A637B: LitI2_Byte 1
  loc_9A637D: AddI2
  loc_9A637E: CI4UI1
  loc_9A637F: ILdRf var_88
  loc_9A6382: ImpAdCallI2 Mid$(, , )
  loc_9A6387: IStStr
  loc_9A638B: FFree1Var var_AC = ""
  loc_9A638E: ExitProc
End Function

Private Function Proc_265_7_9D8014(arg_C) '9D8014
  'Data Table: 402BF8
  loc_9D7F30: ILdRf arg_C
  loc_9D7F33: FStStrCopy var_88
  loc_9D7F36: LitI4 &H400
  loc_9D7F3B: FLdRfVar var_A8
  loc_9D7F3E: ImpAdCallFPR4  = Space()
  loc_9D7F43: FLdRfVar var_A8
  loc_9D7F46: CStrVarTmp
  loc_9D7F47: FStStr var_8C
  loc_9D7F4A: FFree1Var var_A8 = ""
  loc_9D7F4D: ILdRf var_8C
  loc_9D7F50: FnLenStr
  loc_9D7F51: ILdRf var_8C
  loc_9D7F54: FLdRfVar var_B8
  loc_9D7F57: CStr2Ansi
  loc_9D7F58: ILdRf var_B8
  loc_9D7F5B: LitStr vbNullString
  loc_9D7F5E: FLdRfVar var_B4
  loc_9D7F61: CStr2Ansi
  loc_9D7F62: ILdRf var_B4
  loc_9D7F65: ILdRf var_88
  loc_9D7F68: FLdRfVar var_B0
  loc_9D7F6B: CStr2Ansi
  loc_9D7F6C: ILdRf var_B0
  loc_9D7F6F: LitStr "PrinterPorts"
  loc_9D7F72: FLdRfVar var_AC
  loc_9D7F75: CStr2Ansi
  loc_9D7F76: ILdRf var_AC
  loc_9D7F79: ImpAdCallI2 GetProfileString(, , , , )
  loc_9D7F7E: FStR4 var_BC
  loc_9D7F81: SetLastSystemError
  loc_9D7F82: ILdRf var_B0
  loc_9D7F85: FLdRfVar var_88
  loc_9D7F88: CStr2Uni
  loc_9D7F8A: ILdRf var_B8
  loc_9D7F8D: FLdRfVar var_8C
  loc_9D7F90: CStr2Uni
  loc_9D7F92: ILdRf var_BC
  loc_9D7F95: FStR4 var_98
  loc_9D7F98: FFreeStr var_AC = "": var_B0 = "": var_B4 = ""
  loc_9D7FA3: FLdRfVar var_94
  loc_9D7FA6: FLdRfVar var_90
  loc_9D7FA9: ILdRf var_8C
  loc_9D7FAC: ImpAdCallFPR4 Proc_265_6_9A6390(, , )
  loc_9D7FB1: ILdRf var_90
  loc_9D7FB4: LitStr vbNullString
  loc_9D7FB7: NeStr
  loc_9D7FB9: ILdRf var_94
  loc_9D7FBC: LitStr vbNullString
  loc_9D7FBF: NeStr
  loc_9D7FC1: AndI4
  loc_9D7FC2: BranchF loc_9D8011
  loc_9D7FC5: ILdRf var_94
  loc_9D7FC8: ILdRf var_90
  loc_9D7FCB: ILdRf var_88
  loc_9D7FCE: ImpAdCallFPR4 Proc_265_4_9A6F18(, , )
  loc_9D7FD3: FLdRfVar var_C0
  loc_9D7FD6: ImpAdLdRf MemVar_C44F9C
  loc_9D7FD9: NewIfNullPr Me
  loc_9D7FDC:  = Me.Global.Printer
  loc_9D7FE1: FLdPr var_C0
  loc_9D7FE4: LateIdLdVar var_A8 DispID_28 1
  loc_9D7FEB: CStrVarTmp
  loc_9D7FEC: FStStrNoPop var_AC
  loc_9D7FEF: ILdRf var_88
  loc_9D7FF2: NeStr
  loc_9D7FF4: FFree1Str var_AC
  loc_9D7FF7: FFree1Ad var_C0
  loc_9D7FFA: FFree1Var var_A8 = ""
  loc_9D7FFD: BranchF loc_9D8011
  loc_9D8000: ILdRf var_88
  loc_9D8003: FStStrCopy var_AC
  loc_9D8006: FLdRfVar var_AC
  loc_9D8009: ImpAdCallFPR4 Proc_265_1_9A06AC()
  loc_9D800E: FFree1Str var_AC
  loc_9D8011: ExitProc
End Function

Private Function Proc_265_8_A56F7C(arg_C, arg_10) 'A56F7C
  'Data Table: 402BF8
  loc_A56CA4: LitI2_Byte 0
  loc_A56CA6: FStI2 var_86
  loc_A56CA9: LitI2_Byte &HFF
  loc_A56CAB: FStI2 var_8E
  loc_A56CAE: FLdRfVar var_A0
  loc_A56CB1: ILdPr
  loc_A56CB4:  = Me.SelStart
  loc_A56CB9: ILdRf var_A0
  loc_A56CBC: FStR4 var_98
  loc_A56CBF: FLdRfVar var_A0
  loc_A56CC2: ILdPr
  loc_A56CC5:  = Me.SelLength
  loc_A56CCA: ILdRf var_A0
  loc_A56CCD: FStR4 var_9C
  loc_A56CD0: OnErrorGoto loc_A56F54
  loc_A56CD3: FLdI2 arg_10
  loc_A56CD6: LitI2_Byte &H20
  loc_A56CD8: LtI2
  loc_A56CD9: BranchF loc_A56E14
  loc_A56CDC: LitI2_Byte 0
  loc_A56CDE: FStI2 var_8E
  loc_A56CE1: LitI4 0
  loc_A56CE6: ILdPr
  loc_A56CE9: Me.SelLength = from_stack_1
  loc_A56CEE: FLdI2 arg_10
  loc_A56CF1: LitStr ""
  loc_A56CF4: ImpAdCallI2 Asc()
  loc_A56CF9: EqI2
  loc_A56CFA: BranchF loc_A56DA8
  loc_A56CFD: ILdRf var_9C
  loc_A56D00: LitI4 0
  loc_A56D05: EqI4
  loc_A56D06: BranchF loc_A56D63
  loc_A56D09: FLdRfVar var_A4
  loc_A56D0C: ILdPr
  loc_A56D0F:  = Me.Text
  loc_A56D14: ILdRf var_A4
  loc_A56D17: FnLenStr
  loc_A56D18: LitI4 0
  loc_A56D1D: GtI4
  loc_A56D1E: FFree1Str var_A4
  loc_A56D21: BranchF loc_A56D60
  loc_A56D24: FLdRfVar var_A4
  loc_A56D27: ILdPr
  loc_A56D2A:  = Me.Text
  loc_A56D2F: FLdRfVar var_A8
  loc_A56D32: ILdPr
  loc_A56D35:  = Me.Text
  loc_A56D3A: ILdRf var_A8
  loc_A56D3D: FnLenStr
  loc_A56D3E: LitI4 1
  loc_A56D43: SubI4
  loc_A56D44: ILdRf var_A4
  loc_A56D47: ImpAdCallI2 Left$(, )
  loc_A56D4C: FStStrNoPop var_AC
  loc_A56D4F: ILdPr
  loc_A56D52: Me.Text = from_stack_1
  loc_A56D57: FFreeStr var_A8 = "": var_A4 = ""
  loc_A56D60: Branch loc_A56D8B
  loc_A56D63: FLdRfVar var_A4
  loc_A56D66: ILdPr
  loc_A56D69:  = Me.Text
  loc_A56D6E: ILdRf var_98
  loc_A56D71: ILdRf var_A4
  loc_A56D74: ImpAdCallI2 Left$(, )
  loc_A56D79: FStStrNoPop var_A8
  loc_A56D7C: ILdPr
  loc_A56D7F: Me.Text = from_stack_1
  loc_A56D84: FFreeStr var_A4 = ""
  loc_A56D8B: FLdRfVar var_A4
  loc_A56D8E: ILdPr
  loc_A56D91:  = Me.Text
  loc_A56D96: ILdRf var_A4
  loc_A56D99: FnLenStr
  loc_A56D9A: ILdPr
  loc_A56D9D: Me.SelStart = from_stack_1
  loc_A56DA2: FFree1Str var_A4
  loc_A56DA5: Branch loc_A56E11
  loc_A56DA8: FLdI2 arg_10
  loc_A56DAB: CI4UI1
  loc_A56DAC: LitI4 &HD
  loc_A56DB1: EqI4
  loc_A56DB2: BranchF loc_A56E11
  loc_A56DB5: FLdRfVar var_A4
  loc_A56DB8: ILdPr
  loc_A56DBB:  = Me.Text
  loc_A56DC0: ILdRf var_A4
  loc_A56DC3: FnLenStr
  loc_A56DC4: ILdPr
  loc_A56DC7: Me.SelStart = from_stack_1
  loc_A56DCC: FFree1Str var_A4
  loc_A56DCF: FLdRfVar var_A0
  loc_A56DD2: ILdPr
  loc_A56DD5:  = Me.hWnd
  loc_A56DDA: LitI2_Byte 0
  loc_A56DDC: CStrUI1
  loc_A56DDE: FStStrNoPop var_A4
  loc_A56DE1: FLdRfVar var_A8
  loc_A56DE4: CStr2Ansi
  loc_A56DE5: FLdRfVar var_A8
  loc_A56DE8: LitI4 0
  loc_A56DED: LitI4 9
  loc_A56DF2: ILdRf var_A0
  loc_A56DF5: ImpAdCallI2 SendMessage(, , , )
  loc_A56DFA: FStR4 var_B0
  loc_A56DFD: SetLastSystemError
  loc_A56DFE: ILdRf var_B0
  loc_A56E01: FStR4 var_94
  loc_A56E04: FFreeStr var_A4 = ""
  loc_A56E0B: FLdI2 arg_10
  loc_A56E0E: FStI2 var_86
  loc_A56E11: Branch loc_A56E90
  loc_A56E14: ILdRf var_9C
  loc_A56E17: LitI4 0
  loc_A56E1C: EqI4
  loc_A56E1D: BranchF loc_A56E54
  loc_A56E20: FLdRfVar var_A4
  loc_A56E23: ILdPr
  loc_A56E26:  = Me.Text
  loc_A56E2B: FLdZeroAd var_A4
  loc_A56E2E: CVarStr var_D0
  loc_A56E31: FLdI2 arg_10
  loc_A56E34: CI4UI1
  loc_A56E35: FLdRfVar var_C0
  loc_A56E38: ImpAdCallFPR4  = Chr()
  loc_A56E3D: FLdRfVar var_C0
  loc_A56E40: ConcatVar var_E0
  loc_A56E44: CStrVarTmp
  loc_A56E45: FStStr var_8C
  loc_A56E48: FFreeVar var_D0 = "": var_C0 = ""
  loc_A56E51: Branch loc_A56E90
  loc_A56E54: FLdRfVar var_A4
  loc_A56E57: ILdPr
  loc_A56E5A:  = Me.Text
  loc_A56E5F: ILdRf var_98
  loc_A56E62: ILdRf var_A4
  loc_A56E65: ImpAdCallI2 Left$(, )
  loc_A56E6A: CVarStr var_D0
  loc_A56E6D: FLdI2 arg_10
  loc_A56E70: CI4UI1
  loc_A56E71: FLdRfVar var_C0
  loc_A56E74: ImpAdCallFPR4  = Chr()
  loc_A56E79: FLdRfVar var_C0
  loc_A56E7C: ConcatVar var_E0
  loc_A56E80: CStrVarTmp
  loc_A56E81: FStStr var_8C
  loc_A56E84: FFree1Str var_A4
  loc_A56E87: FFreeVar var_D0 = "": var_C0 = ""
  loc_A56E90: FLdI2 var_8E
  loc_A56E93: BranchF loc_A56F50
  loc_A56E96: ILdRf arg_C
  loc_A56E99: ImpAdCallFPR4 Proc_265_9_9813B8()
  loc_A56E9E: FLdRfVar var_A0
  loc_A56EA1: ILdPr
  loc_A56EA4:  = Me.hWnd
  loc_A56EA9: ILdRf var_8C
  loc_A56EAC: FLdRfVar var_A4
  loc_A56EAF: CStr2Ansi
  loc_A56EB0: ILdRf var_A4
  loc_A56EB3: LitI4 -1
  loc_A56EB8: LitI4 &H14D
  loc_A56EBD: ILdRf var_A0
  loc_A56EC0: ImpAdCallI2 SendMessage(, , , )
  loc_A56EC5: FStR4 var_B0
  loc_A56EC8: SetLastSystemError
  loc_A56EC9: ILdRf var_A4
  loc_A56ECC: FLdRfVar var_8C
  loc_A56ECF: CStr2Uni
  loc_A56ED1: ILdRf var_B0
  loc_A56ED4: FStR4 var_94
  loc_A56ED7: FFree1Str var_A4
  loc_A56EDA: ILdRf var_94
  loc_A56EDD: LitI4 -1
  loc_A56EE2: EqI4
  loc_A56EE3: BranchF loc_A56F1B
  loc_A56EE6: ILdRf var_8C
  loc_A56EE9: ILdPr
  loc_A56EEC: Me.Text = from_stack_1
  loc_A56EF1: LitI4 0
  loc_A56EF6: ILdPr
  loc_A56EF9: Me.SelLength = from_stack_1
  loc_A56EFE: FLdRfVar var_A4
  loc_A56F01: ILdPr
  loc_A56F04:  = Me.Text
  loc_A56F09: ILdRf var_A4
  loc_A56F0C: FnLenStr
  loc_A56F0D: ILdPr
  loc_A56F10: Me.SelStart = from_stack_1
  loc_A56F15: FFree1Str var_A4
  loc_A56F18: Branch loc_A56F50
  loc_A56F1B: ILdRf var_8C
  loc_A56F1E: FnLenStr
  loc_A56F1F: ILdPr
  loc_A56F22: Me.SelStart = from_stack_1
  loc_A56F27: FLdRfVar var_A4
  loc_A56F2A: ILdPr
  loc_A56F2D:  = Me.Text
  loc_A56F32: ILdRf var_A4
  loc_A56F35: FnLenStr
  loc_A56F36: FLdRfVar var_A0
  loc_A56F39: ILdPr
  loc_A56F3C:  = Me.SelStart
  loc_A56F41: ILdRf var_A0
  loc_A56F44: SubI4
  loc_A56F45: ILdPr
  loc_A56F48: Me.SelLength = from_stack_1
  loc_A56F4D: FFree1Str var_A4
  loc_A56F50: On Error GoTo 0
  loc_A56F53: ExitProcI2
  loc_A56F54: FLdRfVar var_A4
  loc_A56F57: ImpAdCallI2 Err 'rtcErrObj
  loc_A56F5C: FStAdFunc var_E4
  loc_A56F5F: FLdPr var_E4
  loc_A56F62:  = Err.Description
  loc_A56F67: FFreeStr var_A4 = ""
  loc_A56F6E: FFree1Ad var_E4
  loc_A56F71: FLdI2 arg_10
  loc_A56F74: FStI2 var_86
  loc_A56F77: On Error GoTo 0
  loc_A56F7A: ExitProcI2
End Function

Private Function Proc_265_9_9813B8() '9813B8
  'Data Table: 402BF8
  loc_981384: FLdRfVar var_88
  loc_981387: ILdPr
  loc_98138A:  = Me.hWnd
  loc_98138F: LitI2_Byte 0
  loc_981391: CStrUI1
  loc_981393: FStStrNoPop var_8C
  loc_981396: FLdRfVar var_90
  loc_981399: CStr2Ansi
  loc_98139A: FLdRfVar var_90
  loc_98139D: LitI4 1
  loc_9813A2: LitI4 &H14F
  loc_9813A7: ILdRf var_88
  loc_9813AA: ImpAdCallFPR4 SendMessage(, , , )
  loc_9813AF: SetLastSystemError
  loc_9813B0: FFreeStr var_8C = ""
  loc_9813B7: ExitProc
End Function
