
Private Function Proc_277_0_991E20(arg_C, arg_10) '991E20
  'Data Table: 402510
  loc_991DD4: ILdRf arg_C
  loc_991DD7: FStStrCopy var_88
  loc_991DDA: ILdRf var_88
  loc_991DDD: ImpAdCallI2 Proc_277_2_9F20A0()
  loc_991DE2: BranchF loc_991E0F
  loc_991DE5: ILdI4 arg_10
  loc_991DE8: FStAd var_8C 
  loc_991DEC: LitI4 0
  loc_991DF1: FMemLdR4 arg_8(4)
  loc_991DF6: Ary1LdI4
  loc_991DF7: FStAdNoPop
  loc_991DFB: FLdPr var_8C
  loc_991DFE: Me.Picture = from_stack_1
  loc_991E03: FFree1Ad var_90
  loc_991E06: LitNothing
  loc_991E08: FStAd var_8C 
  loc_991E0C: Branch loc_991E1C
  loc_991E0F: LitI4 0
  loc_991E14: LitStr "No se pudo generar el código QR. Consulte con el Administrador del sistema."
  loc_991E17: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_991E1C: ExitProc
End Function

Private Function Proc_277_1_9BB8E0(arg_C, arg_10) '9BB8E0
  'Data Table: 402510
  loc_9BB838: ILdRf arg_C
  loc_9BB83B: FStStrCopy var_8C
  loc_9BB83E: ILdRf arg_10
  loc_9BB841: FStStrCopy var_90
  loc_9BB844: ILdRf var_8C
  loc_9BB847: ImpAdCallI2 Proc_277_2_9F20A0()
  loc_9BB84C: BranchF loc_9BB8D9
  loc_9BB84F: FLdRfVar var_9C
  loc_9BB852: ImpAdLdI4 MemVar_C3D83C
  loc_9BB855: FLdRfVar var_94
  loc_9BB858: NewIfNullPr IFileSystem3
  loc_9BB85B: from_stack_2 = IFileSystem3.IFileSystem.GetParentFolderName(from_stack_1v)
  loc_9BB860: FLdRfVar var_A8
  loc_9BB863: LitStr "QR"
  loc_9BB866: ILdRf var_90
  loc_9BB869: ConcatStr
  loc_9BB86A: FStStrNoPop var_A0
  loc_9BB86D: LitStr ".bmp"
  loc_9BB870: ConcatStr
  loc_9BB871: FStStrNoPop var_A4
  loc_9BB874: ILdRf var_9C
  loc_9BB877: FLdRfVar var_94
  loc_9BB87A: NewIfNullPr IFileSystem3
  loc_9BB87D: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_9BB882: FLdZeroAd var_A8
  loc_9BB885: FStStr var_98
  loc_9BB888: FFreeStr var_A0 = "": var_9C = ""
  loc_9BB891: ILdRf var_98
  loc_9BB894: LitI4 0
  loc_9BB899: FMemLdR4 arg_8(4)
  loc_9BB89E: Ary1LdI4
  loc_9BB89F: FStAdNoPop
  loc_9BB8A3: ImpAdLdRf MemVar_C44F9C
  loc_9BB8A6: NewIfNullPr Me
  loc_9BB8A9: Me.Global.SavePicture from_stack_1
  loc_9BB8AE: FFree1Ad var_AC
  loc_9BB8B1: FLdRfVar var_AE
  loc_9BB8B4: ILdRf var_98
  loc_9BB8B7: FLdRfVar var_94
  loc_9BB8BA: NewIfNullPr IFileSystem3
  loc_9BB8BD: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_9BB8C2: FLdI2 var_AE
  loc_9BB8C5: NotI4
  loc_9BB8C6: BranchF loc_9BB8D1
  loc_9BB8C9: ImpAdCallFPR4 DoEvents()
  loc_9BB8CE: Branch loc_9BB8B1
  loc_9BB8D1: LitI2_Byte &HFF
  loc_9BB8D3: FStI2 var_86
  loc_9BB8D6: Branch loc_9BB8DE
  loc_9BB8D9: LitI2_Byte 0
  loc_9BB8DB: FStI2 var_86
  loc_9BB8DE: ExitProcI2
End Function

Private Function Proc_277_2_9F20A0(arg_C) '9F20A0
  'Data Table: 402510
  loc_9F1F84: ILdRf arg_C
  loc_9F1F87: FStStrCopy var_8C
  loc_9F1F8A: ILdRf var_8C
  loc_9F1F8D: FStStrCopy var_94
  loc_9F1F90: ILdRf var_94
  loc_9F1F93: FnLenStr
  loc_9F1F94: FStR4 var_9C
  loc_9F1F97: ILdRf var_9C
  loc_9F1F9A: LitI4 3
  loc_9F1F9F: MulI4
  loc_9F1FA0: LitI4 &H40
  loc_9F1FA5: AddI4
  loc_9F1FA6: FStR4 var_98
  loc_9F1FA9: LitI4 0
  loc_9F1FAE: ILdRf var_98
  loc_9F1FB1: FLdRfVar var_90
  loc_9F1FB4: Redim
  loc_9F1FBE: ILdRf var_94
  loc_9F1FC1: ImpAdCallI2 VarPtr()
  loc_9F1FC6: FStR4 var_A8
  loc_9F1FC9: LitI2_Byte 0
  loc_9F1FCB: LitI2_Byte 0
  loc_9F1FCD: ILdRf var_98
  loc_9F1FD0: LitI4 0
  loc_9F1FD5: ILdRf var_90
  loc_9F1FD8: AryLock
  loc_9F1FDB: Ary1LdRf
  loc_9F1FDC: ILdRf var_9C
  loc_9F1FDF: ILdRf var_A8
  loc_9F1FE2: LitI4 0
  loc_9F1FE7: LitI4 &HFDE9
  loc_9F1FEC: ImpAdCallI2 WideCharToMultiByte(, , , , , , , )
  loc_9F1FF1: FStR4 var_A4
  loc_9F1FF4: SetLastSystemError
  loc_9F1FF5: AryUnlock
  loc_9F1FF8: ILdRf var_A4
  loc_9F1FFB: FStR4 var_9C
  loc_9F1FFE: LitI4 1
  loc_9F2003: FMemStI4 arg_8(8)
  loc_9F2008: LitI4 0
  loc_9F200D: LitI4 0
  loc_9F2012: FMemLdRf unk_402519
  loc_9F2017: Redim
  loc_9F2021: FLdRfVar var_AC
  loc_9F2024: LitI4 -1
  loc_9F2029: LitI4 2
  loc_9F202E: LitI4 0
  loc_9F2033: ILdRf var_9C
  loc_9F2036: FLdRfVar var_90
  loc_9F2039: FMemLdRf unk_402519
  loc_9F203E: NewIfNullAd
  loc_9F2041: ImpAdCallNonVirt
  loc_9F2047: ILdRf var_AC
  loc_9F204A: LitI4 0
  loc_9F204F: FMemLdR4 arg_8(4)
  loc_9F2054: Ary1StAd
  loc_9F2056: FFree1Ad var_AC
  loc_9F2059: LitI4 0
  loc_9F205E: FMemLdR4 arg_8(4)
  loc_9F2063: Ary1LdI4
  loc_9F2064: LitNothing
  loc_9F2066: Is
  loc_9F2068: BranchF loc_9F209A
  loc_9F206B: LitVar_Missing var_12C
  loc_9F206E: LitVar_Missing var_10C
  loc_9F2071: LitVar_Missing var_EC
  loc_9F2074: LitI4 &H30
  loc_9F2079: LitVarStr var_BC, "Fallo al crear el código"
  loc_9F207E: FStVarCopyObj var_CC
  loc_9F2081: FLdRfVar var_CC
  loc_9F2084: ImpAdCallFPR4 MsgBox(, , , , )
  loc_9F2089: FFreeVar var_CC = "": var_EC = "": var_10C = ""
  loc_9F2094: LitI2_Byte 0
  loc_9F2096: FStI2 var_86
  loc_9F2099: ExitProcI2
  loc_9F209A: LitI2_Byte &HFF
  loc_9F209C: FStI2 var_86
  loc_9F209F: ExitProcI2
End Function

Private Function Proc_277_3_9A8C18(arg_C, arg_10) '9A8C18
  'Data Table: 402510
  loc_9A8B84: ILdRf arg_C
  loc_9A8B87: LitI4 0
  loc_9A8B8C: EqI4
  loc_9A8B8D: BranchF loc_9A8B91
  loc_9A8B90: ExitProc
  loc_9A8B91: FLdRfVar var_A0
  loc_9A8B94: FStR4 var_B4
  loc_9A8B97: LitI4 &H14
  loc_9A8B9C: FMemStI4 var_B4(0)
  loc_9A8BA1: LitI4 1
  loc_9A8BA6: FMemStI4 var_B4(4)
  loc_9A8BAB: ILdRf arg_C
  loc_9A8BAE: FMemStI4 var_B4(8)
  loc_9A8BB3: LitI4 0
  loc_9A8BB8: FStR4 var_B4
  loc_9A8BBB: FLdRfVar var_B0
  loc_9A8BBE: FStR4 var_B8
  loc_9A8BC1: LitI2 192
  loc_9A8BC4: CUI1I2
  loc_9A8BC6: LitI4 0
  loc_9A8BCB: FMemLdRf FindWindowEx(, , , )
  loc_9A8BD0: AryInRecLdPr
  loc_9A8BD6: MemStUI1
  loc_9A8BDA: LitI2_Byte &H46
  loc_9A8BDC: CUI1I2
  loc_9A8BDE: LitI4 7
  loc_9A8BE3: FMemLdRf FindWindowEx(, , , )
  loc_9A8BE8: AryInRecLdPr
  loc_9A8BEE: MemStUI1
  loc_9A8BF2: LitI4 0
  loc_9A8BF7: FStR4 var_B8
  loc_9A8BFA: FLdRfVar var_8C
  loc_9A8BFD: ILdRf arg_10
  loc_9A8C00: FLdRfVar var_B0
  loc_9A8C03: FLdRfVar var_A0
  loc_9A8C06: ImpAdCallFPR4 OleCreatePictureIndirect()
  loc_9A8C0B: SetLastSystemError
  loc_9A8C0C: ILdRf var_8C
  loc_9A8C0F: CastAd
  loc_9A8C12: FStAdFunc var_88
  loc_9A8C15: ExitProc
  loc_9A8C16: MemStFPR8 global_-10235
End Function

Private Function Proc_277_4_A127C0(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) 'A127C0
  'Data Table: 402510
  loc_A12638: FLdRfVar var_4B0
  loc_A1263B: FStR4 var_4D4
  loc_A1263E: LitI4 &H28
  loc_A12643: FMemStI4 var_4D4(0)
  loc_A12648: ILdRf arg_10
  loc_A1264B: FMemStI4 var_4D4(4)
  loc_A12650: ILdRf arg_14
  loc_A12653: UMiI4
  loc_A12654: FMemStI4 var_4D4(8)
  loc_A12659: LitI2_Byte 1
  loc_A1265B: FMemStI2 var_4D4(12)
  loc_A12660: LitI2_Byte 8
  loc_A12662: FMemStI2 var_4D4(14)
  loc_A12667: ILdRf arg_10
  loc_A1266A: ILdRf arg_14
  loc_A1266D: MulI4
  loc_A1266E: FMemStI4 var_4D4(20)
  loc_A12673: LitI4 &H100
  loc_A12678: FMemStI4 var_4D4(32)
  loc_A1267D: LitI4 0
  loc_A12682: FStR4 var_4D4
  loc_A12685: LitI4 &HFFFFFF
  loc_A1268A: LitI4 0
  loc_A1268F: FLdRfVar var_488
  loc_A12692: AryInRecLdPr
  loc_A12698: MemStI4 global_0
  loc_A1269B: LitI4 &H808080
  loc_A126A0: LitI4 2
  loc_A126A5: FLdRfVar var_488
  loc_A126A8: AryInRecLdPr
  loc_A126AE: MemStI4 global_0
  loc_A126B1: LitI4 0
  loc_A126B6: ImpAdCallI2 GetDC()
  loc_A126BB: FStR4 var_4D8
  loc_A126BE: SetLastSystemError
  loc_A126BF: ILdRf var_4D8
  loc_A126C2: FStR4 var_4B4
  loc_A126C5: ILdRf var_4B4
  loc_A126C8: ImpAdCallI2 CreateCompatibleDC()
  loc_A126CD: FStR4 var_4D8
  loc_A126D0: SetLastSystemError
  loc_A126D1: ILdRf var_4D8
  loc_A126D4: FStR4 var_4B8
  loc_A126D7: ILdRf arg_10
  loc_A126DA: ILdRf arg_18
  loc_A126DD: AddI4
  loc_A126DE: ILdRf arg_20
  loc_A126E1: AddI4
  loc_A126E2: FStR4 var_4C8
  loc_A126E5: ILdRf arg_14
  loc_A126E8: ILdRf arg_1C
  loc_A126EB: AddI4
  loc_A126EC: ILdRf arg_24
  loc_A126EF: AddI4
  loc_A126F0: FStR4 var_4C4
  loc_A126F3: ILdRf var_4C4
  loc_A126F6: ILdRf var_4C8
  loc_A126F9: ILdRf var_4B4
  loc_A126FC: ImpAdCallI2 CreateCompatibleBitmap(, , )
  loc_A12701: FStR4 var_4D8
  loc_A12704: SetLastSystemError
  loc_A12705: ILdRf var_4D8
  loc_A12708: FStR4 var_4BC
  loc_A1270B: ILdRf var_4BC
  loc_A1270E: ILdRf var_4B8
  loc_A12711: ImpAdCallI2 SelectObject(, )
  loc_A12716: FStR4 var_4D8
  loc_A12719: SetLastSystemError
  loc_A1271A: ILdRf var_4D8
  loc_A1271D: FStR4 var_4BC
  loc_A12720: LitI4 &HFFFFFF
  loc_A12725: ImpAdCallI2 CreateSolidBrush()
  loc_A1272A: FStR4 var_4D8
  loc_A1272D: SetLastSystemError
  loc_A1272E: ILdRf var_4D8
  loc_A12731: FStR4 var_4C0
  loc_A12734: ILdRf var_4C0
  loc_A12737: FLdRfVar var_4D0
  loc_A1273A: ILdRf var_4B8
  loc_A1273D: ImpAdCallFPR4 FillRect(, , )
  loc_A12742: SetLastSystemError
  loc_A12743: ILdRf var_4C0
  loc_A12746: ImpAdCallFPR4 DeleteObject()
  loc_A1274B: SetLastSystemError
  loc_A1274C: LitI4 &HCC0020
  loc_A12751: LitI4 0
  loc_A12756: FLdRfVar var_4B0
  loc_A12759: ILdRf arg_C
  loc_A1275C: ILdRf arg_14
  loc_A1275F: ILdRf arg_10
  loc_A12762: LitI4 0
  loc_A12767: LitI4 0
  loc_A1276C: ILdRf arg_14
  loc_A1276F: ILdRf arg_10
  loc_A12772: ILdRf arg_1C
  loc_A12775: ILdRf arg_18
  loc_A12778: ILdRf var_4B8
  loc_A1277B: ImpAdCallFPR4 StretchDIBits(, , , , , , , , , , , , )
  loc_A12780: SetLastSystemError
  loc_A12781: ILdRf var_4BC
  loc_A12784: ILdRf var_4B8
  loc_A12787: ImpAdCallI2 SelectObject(, )
  loc_A1278C: FStR4 var_4D8
  loc_A1278F: SetLastSystemError
  loc_A12790: ILdRf var_4D8
  loc_A12793: FStR4 var_4BC
  loc_A12796: ILdRf var_4B8
  loc_A12799: ImpAdCallFPR4 DeleteDC()
  loc_A1279E: SetLastSystemError
  loc_A1279F: ILdRf var_4B4
  loc_A127A2: LitI4 0
  loc_A127A7: ImpAdCallFPR4 ReleaseDC(, )
  loc_A127AC: SetLastSystemError
  loc_A127AD: LitI4 1
  loc_A127B2: ILdRf var_4BC
  loc_A127B5: ImpAdCallI2 Proc_277_3_9A8C18(, )
  loc_A127BA: FStAdFunc var_88
  loc_A127BD: ExitProc
End Function
