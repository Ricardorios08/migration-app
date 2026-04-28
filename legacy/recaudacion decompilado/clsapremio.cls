VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsapremio"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '4A074C
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4A075B
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4A076A
  RsFrm = Value
End Sub

Public Sub Move(iValor) '9B9BBC
  'Data Table: 49FFEC
  loc_9B9BA8: LitVar_Missing var_94
  loc_9B9BAB: PopAdLdVar
  loc_9B9BAC: ILdI2 iValor
  loc_9B9BAF: CI4UI1
  loc_9B9BB0: FLdPr Me
  loc_9B9BB3: MemLdPr RsFrm
  loc_9B9BB6: Me.Move from_stack_1, from_stack_2
  loc_9B9BBB: ExitProcHresult
End Sub

Public Sub MoveFirst() '9EC2DC
  'Data Table: 49FFEC
  loc_9EC2B4: FLdRfVar var_88
  loc_9EC2B7: FLdPr Me
  loc_9EC2BA: MemLdPr RsFrm
  loc_9EC2BD:  = Me.RecordCount
  loc_9EC2C2: ILdRf var_88
  loc_9EC2C5: LitI4 0
  loc_9EC2CA: GtI4
  loc_9EC2CB: BranchF loc_9EC2D9
  loc_9EC2CE: FLdPr Me
  loc_9EC2D1: MemLdPr RsFrm
  loc_9EC2D4: Me.MoveFirst
  loc_9EC2D9: ExitProcHresult
End Sub

Public Sub MoveLast() '9EC284
  'Data Table: 49FFEC
  loc_9EC25C: FLdRfVar var_88
  loc_9EC25F: FLdPr Me
  loc_9EC262: MemLdPr RsFrm
  loc_9EC265:  = Me.RecordCount
  loc_9EC26A: ILdRf var_88
  loc_9EC26D: LitI4 0
  loc_9EC272: GtI4
  loc_9EC273: BranchF loc_9EC281
  loc_9EC276: FLdPr Me
  loc_9EC279: MemLdPr RsFrm
  loc_9EC27C: Me.MoveLast
  loc_9EC281: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6ACA8
  'Data Table: 49FFEC
  loc_A6AC30: FLdRfVar var_86
  loc_A6AC33: FLdPr Me
  loc_A6AC36: MemLdPr RsFrm
  loc_A6AC39:  = Me.EOF
  loc_A6AC3E: FLdI2 var_86
  loc_A6AC41: NotI4
  loc_A6AC42: FLdRfVar var_8C
  loc_A6AC45: FLdPr Me
  loc_A6AC48: MemLdPr RsFrm
  loc_A6AC4B:  = Me.RecordCount
  loc_A6AC50: ILdRf var_8C
  loc_A6AC53: LitI4 0
  loc_A6AC58: GtI4
  loc_A6AC59: AndI4
  loc_A6AC5A: BranchF loc_A6AC68
  loc_A6AC5D: FLdPr Me
  loc_A6AC60: MemLdPr RsFrm
  loc_A6AC63: Me.MoveNext
  loc_A6AC68: FLdRfVar var_86
  loc_A6AC6B: FLdPr Me
  loc_A6AC6E: MemLdPr RsFrm
  loc_A6AC71:  = Me.EOF
  loc_A6AC76: FLdI2 var_86
  loc_A6AC79: FLdRfVar var_8C
  loc_A6AC7C: FLdPr Me
  loc_A6AC7F: MemLdPr RsFrm
  loc_A6AC82:  = Me.RecordCount
  loc_A6AC87: ILdRf var_8C
  loc_A6AC8A: LitI4 0
  loc_A6AC8F: GtI4
  loc_A6AC90: AndI4
  loc_A6AC91: BranchF loc_A6ACA4
  loc_A6AC94: ImpAdCallFPR4 Beep()
  loc_A6AC99: FLdPr Me
  loc_A6AC9C: MemLdPr RsFrm
  loc_A6AC9F: Me.MoveLast
  loc_A6ACA4: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B1EC0
  'Data Table: 49FFEC
  loc_9B1EB4: FLdPr Me
  loc_9B1EB7: MemLdPr RsFrm
  loc_9B1EBA: Me.MoveNext
  loc_9B1EBF: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6A030
  'Data Table: 49FFEC
  loc_A69FB8: FLdRfVar var_86
  loc_A69FBB: FLdPr Me
  loc_A69FBE: MemLdPr RsFrm
  loc_A69FC1:  = Me.BOF
  loc_A69FC6: FLdI2 var_86
  loc_A69FC9: NotI4
  loc_A69FCA: FLdRfVar var_8C
  loc_A69FCD: FLdPr Me
  loc_A69FD0: MemLdPr RsFrm
  loc_A69FD3:  = Me.RecordCount
  loc_A69FD8: ILdRf var_8C
  loc_A69FDB: LitI4 0
  loc_A69FE0: GtI4
  loc_A69FE1: AndI4
  loc_A69FE2: BranchF loc_A69FF0
  loc_A69FE5: FLdPr Me
  loc_A69FE8: MemLdPr RsFrm
  loc_A69FEB: Me.MovePrevious
  loc_A69FF0: FLdRfVar var_86
  loc_A69FF3: FLdPr Me
  loc_A69FF6: MemLdPr RsFrm
  loc_A69FF9:  = Me.BOF
  loc_A69FFE: FLdI2 var_86
  loc_A6A001: FLdRfVar var_8C
  loc_A6A004: FLdPr Me
  loc_A6A007: MemLdPr RsFrm
  loc_A6A00A:  = Me.RecordCount
  loc_A6A00F: ILdRf var_8C
  loc_A6A012: LitI4 0
  loc_A6A017: GtI4
  loc_A6A018: AndI4
  loc_A6A019: BranchF loc_A6A02C
  loc_A6A01C: ImpAdCallFPR4 Beep()
  loc_A6A021: FLdPr Me
  loc_A6A024: MemLdPr RsFrm
  loc_A6A027: Me.MoveFirst
  loc_A6A02C: ExitProcHresult
End Sub

Public Property Get EOF() '9D958C
  'Data Table: 49FFEC
  loc_9D9570: FLdRfVar var_88
  loc_9D9573: FLdPr Me
  loc_9D9576: MemLdPr RsFrm
  loc_9D9579:  = Me.EOF
  loc_9D957E: FLdI2 var_88
  loc_9D9581: FStI2 var_86
  loc_9D9584: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D8A44
  'Data Table: 49FFEC
  loc_9D8A28: FLdRfVar var_88
  loc_9D8A2B: FLdPr Me
  loc_9D8A2E: MemLdPr RsFrm
  loc_9D8A31:  = Me.BOF
  loc_9D8A36: FLdI2 var_88
  loc_9D8A39: FStI2 var_86
  loc_9D8A3C: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B2238
  'Data Table: 49FFEC
  loc_9B2228: ILdI4 sOrden
  loc_9B222B: FLdPr Me
  loc_9B222E: MemLdPr RsFrm
  loc_9B2231: Me.Sort = from_stack_1
  loc_9B2236: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E0A10
  'Data Table: 49FFEC
  loc_9E09F0: LitVar_Missing var_94
  loc_9E09F3: PopAdLdVar
  loc_9E09F4: LitI4 1
  loc_9E09F9: LitI4 0
  loc_9E09FE: ILdI4 sFind
  loc_9E0A01: FLdPr Me
  loc_9E0A04: MemLdPr RsFrm
  loc_9E0A07: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E0A0C: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9DC6D4
  'Data Table: 49FFEC
  loc_9DC6B8: FLdRfVar var_8C
  loc_9DC6BB: FLdPr Me
  loc_9DC6BE: MemLdPr RsFrm
  loc_9DC6C1:  = Me.AbsolutePosition
  loc_9DC6C6: ILdRf var_8C
  loc_9DC6C9: FStR4 var_88
  loc_9DC6CC: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D8584
  'Data Table: 49FFEC
  loc_9D8568: FLdRfVar var_8C
  loc_9D856B: FLdPr Me
  loc_9D856E: MemLdPr RsFrm
  loc_9D8571:  = Me.RecordCount
  loc_9D8576: ILdRf var_8C
  loc_9D8579: FStR4 var_88
  loc_9D857C: ExitProcCbHresult
End Sub

Public Sub AddNew(NumeApre, CucuPers, AutoApre, CodiReca, CodiOfju, CodiOfic, CuenCtct, EstaApre, CapiApre, RecaApre, TotaApre) 'B29490
  'Data Table: 49FFEC
  loc_B29270: ILdRf CucuPers
  loc_B29273: FStStrCopy var_88
  loc_B29276: ILdRf CuenCtct
  loc_B29279: FStStrCopy var_8C
  loc_B2927C: ILdRf EstaApre
  loc_B2927F: FStStrCopy var_90
  loc_B29282: LitI2_Byte 0
  loc_B29284: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B29289: FStFPR8 var_1C0
  loc_B2928C: LitI2_Byte 0
  loc_B2928E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B29293: FStFPR8 var_1C8
  loc_B29296: LitStr "INSERT INTO apremio (NumeApre, CucuPers, AutoApre, CodiReca, CodiOfju, CodiOfic, CuenCtct, FealApre, FeemApre, EstaApre, CapiApre, RecaApre, TotaApre, AltaUsua)"
  loc_B29299: LitStr " VALUES ("
  loc_B2929C: ConcatStr
  loc_B2929D: FStStrNoPop var_94
  loc_B292A0: ILdRf NumeApre
  loc_B292A3: CStrI4
  loc_B292A5: FStStrNoPop var_98
  loc_B292A8: ConcatStr
  loc_B292A9: FStStrNoPop var_9C
  loc_B292AC: LitStr ",'"
  loc_B292AF: ConcatStr
  loc_B292B0: FStStrNoPop var_A0
  loc_B292B3: ILdRf var_88
  loc_B292B6: ConcatStr
  loc_B292B7: FStStrNoPop var_A4
  loc_B292BA: LitStr "',"
  loc_B292BD: ConcatStr
  loc_B292BE: FStStrNoPop var_A8
  loc_B292C1: ILdRf AutoApre
  loc_B292C4: CStrI4
  loc_B292C6: FStStrNoPop var_AC
  loc_B292C9: ConcatStr
  loc_B292CA: FStStrNoPop var_B0
  loc_B292CD: LitStr ","
  loc_B292D0: ConcatStr
  loc_B292D1: FStStrNoPop var_B4
  loc_B292D4: FLdI2 CodiReca
  loc_B292D7: CStrUI1
  loc_B292D9: FStStrNoPop var_B8
  loc_B292DC: ConcatStr
  loc_B292DD: FStStrNoPop var_BC
  loc_B292E0: LitStr ","
  loc_B292E3: ConcatStr
  loc_B292E4: FStStrNoPop var_C0
  loc_B292E7: FLdI2 CodiOfju
  loc_B292EA: CStrUI1
  loc_B292EC: FStStrNoPop var_C4
  loc_B292EF: ConcatStr
  loc_B292F0: FStStrNoPop var_C8
  loc_B292F3: LitStr ","
  loc_B292F6: ConcatStr
  loc_B292F7: FStStrNoPop var_CC
  loc_B292FA: FLdUI1
  loc_B292FE: CStrI2
  loc_B29300: FStStrNoPop var_D0
  loc_B29303: ConcatStr
  loc_B29304: FStStrNoPop var_D4
  loc_B29307: LitStr ",'"
  loc_B2930A: ConcatStr
  loc_B2930B: FStStrNoPop var_D8
  loc_B2930E: ILdRf var_8C
  loc_B29311: ConcatStr
  loc_B29312: FStStrNoPop var_DC
  loc_B29315: LitStr "','"
  loc_B29318: ConcatStr
  loc_B29319: FStStrNoPop var_120
  loc_B2931C: LitI4 1
  loc_B29321: LitI4 1
  loc_B29326: LitVarStr var_10C, "yyyy-mm-dd"
  loc_B2932B: FStVarCopyObj var_11C
  loc_B2932E: FLdRfVar var_11C
  loc_B29331: FLdFPR8 var_1C0
  loc_B29334: CVarDate var_FC
  loc_B29338: ImpAdCallI2 Format$(, )
  loc_B2933D: FStStrNoPop var_124
  loc_B29340: ConcatStr
  loc_B29341: FStStrNoPop var_128
  loc_B29344: LitStr "','"
  loc_B29347: ConcatStr
  loc_B29348: FStStrNoPop var_16C
  loc_B2934B: LitI4 1
  loc_B29350: LitI4 1
  loc_B29355: LitVarStr var_158, "yyyy-mm-dd"
  loc_B2935A: FStVarCopyObj var_168
  loc_B2935D: FLdRfVar var_168
  loc_B29360: FLdFPR8 var_1C8
  loc_B29363: CVarDate var_148
  loc_B29367: ImpAdCallI2 Format$(, )
  loc_B2936C: FStStrNoPop var_170
  loc_B2936F: ConcatStr
  loc_B29370: FStStrNoPop var_174
  loc_B29373: LitStr "','"
  loc_B29376: ConcatStr
  loc_B29377: FStStrNoPop var_178
  loc_B2937A: ILdRf var_90
  loc_B2937D: ConcatStr
  loc_B2937E: FStStrNoPop var_17C
  loc_B29381: LitStr "',"
  loc_B29384: ConcatStr
  loc_B29385: FStStrNoPop var_184
  loc_B29388: LitI4 0
  loc_B2938D: LitI4 -1
  loc_B29392: LitI4 1
  loc_B29397: LitStr "."
  loc_B2939A: LitStr ","
  loc_B2939D: FLdFPR8 CapiApre
  loc_B293A0: CStrR8
  loc_B293A2: FStStrNoPop var_180
  loc_B293A5: ImpAdCallI2 Replace(, , , , , )
  loc_B293AA: FStStrNoPop var_188
  loc_B293AD: ConcatStr
  loc_B293AE: FStStrNoPop var_18C
  loc_B293B1: LitStr ","
  loc_B293B4: ConcatStr
  loc_B293B5: FStStrNoPop var_194
  loc_B293B8: LitI4 0
  loc_B293BD: LitI4 -1
  loc_B293C2: LitI4 1
  loc_B293C7: LitStr "."
  loc_B293CA: LitStr ","
  loc_B293CD: FLdFPR8 TotaApre
  loc_B293D0: CStrR8
  loc_B293D2: FStStrNoPop var_190
  loc_B293D5: ImpAdCallI2 Replace(, , , , , )
  loc_B293DA: FStStrNoPop var_198
  loc_B293DD: ConcatStr
  loc_B293DE: FStStrNoPop var_19C
  loc_B293E1: LitStr ","
  loc_B293E4: ConcatStr
  loc_B293E5: FStStrNoPop var_1A4
  loc_B293E8: LitI4 0
  loc_B293ED: LitI4 -1
  loc_B293F2: LitI4 1
  loc_B293F7: LitStr "."
  loc_B293FA: LitStr ","
  loc_B293FD: FLdFPR8 arg_3C
  loc_B29400: CStrR8
  loc_B29402: FStStrNoPop var_1A0
  loc_B29405: ImpAdCallI2 Replace(, , , , , )
  loc_B2940A: FStStrNoPop var_1A8
  loc_B2940D: ConcatStr
  loc_B2940E: FStStrNoPop var_1AC
  loc_B29411: LitStr ",'"
  loc_B29414: ConcatStr
  loc_B29415: FStStrNoPop var_1B0
  loc_B29418: ImpAdLdI4 MemVar_D9302C
  loc_B2941B: ConcatStr
  loc_B2941C: FStStrNoPop var_1B4
  loc_B2941F: LitStr "');"
  loc_B29422: ConcatStr
  loc_B29423: FStStrNoPop var_1B8
  loc_B29426: Call Proc_297_125_A4BEE4()
  loc_B2942B: FFreeStr var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_120 = "": var_124 = "": var_128 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_B29482: FFreeVar var_FC = "": var_11C = "": var_148 = ""
  loc_B2948D: ExitProcHresult
End Sub

Public Sub AddNewMigracion(NumeApre, CucuPers, AutoApre, CodiReca, CodiOfju, CodiOfic, CuenCtct, EstaApre, CodiInju, CapiApre, RecaApre, TotaApre, CodiUsua) 'B30B98
  'Data Table: 49FFEC
  loc_B3095C: ILdRf CucuPers
  loc_B3095F: FStStrCopy var_88
  loc_B30962: ILdRf CuenCtct
  loc_B30965: FStStrCopy var_8C
  loc_B30968: ILdRf EstaApre
  loc_B3096B: FStStrCopy var_90
  loc_B3096E: ILdRf AddNewMigracion8
  loc_B30971: FStStrCopy var_94
  loc_B30974: FLdRfVar var_98
  loc_B30977: ILdRf NumeApre
  loc_B3097A: from_stack_2v = ValidaClave(from_stack_1v)
  loc_B3097F: ILdRf var_98
  loc_B30982: LitStr vbNullString
  loc_B30985: EqStr
  loc_B30987: FFree1Str var_98
  loc_B3098A: BranchF loc_B30B96
  loc_B3098D: LitI2_Byte 0
  loc_B3098F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B30994: FStFPR8 var_1C4
  loc_B30997: LitI2_Byte 0
  loc_B30999: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B3099E: FStFPR8 var_1CC
  loc_B309A1: LitStr "INSERT INTO apremio (NumeApre, CucuPers, AutoApre, CodiReca, CodiOfju, CodiOfic, CuenCtct, FealApre, FeemApre, EstaApre, CodiInju, CapiApre, RecaApre, TotaApre, CodiUsua) VALUES ("
  loc_B309A4: ILdRf NumeApre
  loc_B309A7: CStrI4
  loc_B309A9: FStStrNoPop var_98
  loc_B309AC: ConcatStr
  loc_B309AD: FStStrNoPop var_9C
  loc_B309B0: LitStr ",'"
  loc_B309B3: ConcatStr
  loc_B309B4: FStStrNoPop var_A0
  loc_B309B7: ILdRf var_88
  loc_B309BA: ConcatStr
  loc_B309BB: FStStrNoPop var_A4
  loc_B309BE: LitStr "',"
  loc_B309C1: ConcatStr
  loc_B309C2: FStStrNoPop var_A8
  loc_B309C5: ILdRf AutoApre
  loc_B309C8: CStrI4
  loc_B309CA: FStStrNoPop var_AC
  loc_B309CD: ConcatStr
  loc_B309CE: FStStrNoPop var_B0
  loc_B309D1: LitStr ","
  loc_B309D4: ConcatStr
  loc_B309D5: FStStrNoPop var_B4
  loc_B309D8: FLdI2 CodiReca
  loc_B309DB: CStrUI1
  loc_B309DD: FStStrNoPop var_B8
  loc_B309E0: ConcatStr
  loc_B309E1: FStStrNoPop var_BC
  loc_B309E4: LitStr ","
  loc_B309E7: ConcatStr
  loc_B309E8: FStStrNoPop var_C0
  loc_B309EB: FLdI2 CodiOfju
  loc_B309EE: CStrUI1
  loc_B309F0: FStStrNoPop var_C4
  loc_B309F3: ConcatStr
  loc_B309F4: FStStrNoPop var_C8
  loc_B309F7: LitStr ","
  loc_B309FA: ConcatStr
  loc_B309FB: FStStrNoPop var_CC
  loc_B309FE: FLdUI1
  loc_B30A02: CStrI2
  loc_B30A04: FStStrNoPop var_D0
  loc_B30A07: ConcatStr
  loc_B30A08: FStStrNoPop var_D4
  loc_B30A0B: LitStr ",'"
  loc_B30A0E: ConcatStr
  loc_B30A0F: FStStrNoPop var_D8
  loc_B30A12: ILdRf var_8C
  loc_B30A15: ConcatStr
  loc_B30A16: FStStrNoPop var_DC
  loc_B30A19: LitStr "','"
  loc_B30A1C: ConcatStr
  loc_B30A1D: FStStrNoPop var_120
  loc_B30A20: LitI4 1
  loc_B30A25: LitI4 1
  loc_B30A2A: LitVarStr var_10C, "yyyy-mm-dd"
  loc_B30A2F: FStVarCopyObj var_11C
  loc_B30A32: FLdRfVar var_11C
  loc_B30A35: FLdFPR8 var_1C4
  loc_B30A38: CVarDate var_FC
  loc_B30A3C: ImpAdCallI2 Format$(, )
  loc_B30A41: FStStrNoPop var_124
  loc_B30A44: ConcatStr
  loc_B30A45: FStStrNoPop var_128
  loc_B30A48: LitStr "','"
  loc_B30A4B: ConcatStr
  loc_B30A4C: FStStrNoPop var_16C
  loc_B30A4F: LitI4 1
  loc_B30A54: LitI4 1
  loc_B30A59: LitVarStr var_158, "yyyy-mm-dd"
  loc_B30A5E: FStVarCopyObj var_168
  loc_B30A61: FLdRfVar var_168
  loc_B30A64: FLdFPR8 var_1CC
  loc_B30A67: CVarDate var_148
  loc_B30A6B: ImpAdCallI2 Format$(, )
  loc_B30A70: FStStrNoPop var_170
  loc_B30A73: ConcatStr
  loc_B30A74: FStStrNoPop var_174
  loc_B30A77: LitStr "','"
  loc_B30A7A: ConcatStr
  loc_B30A7B: FStStrNoPop var_178
  loc_B30A7E: ILdRf var_90
  loc_B30A81: ConcatStr
  loc_B30A82: FStStrNoPop var_17C
  loc_B30A85: LitStr "',"
  loc_B30A88: ConcatStr
  loc_B30A89: FStStrNoPop var_180
  loc_B30A8C: FLdI2 CodiInju
  loc_B30A8F: CStrUI1
  loc_B30A91: FStStrNoPop var_184
  loc_B30A94: ConcatStr
  loc_B30A95: FStStrNoPop var_188
  loc_B30A98: LitStr ","
  loc_B30A9B: ConcatStr
  loc_B30A9C: FStStrNoPop var_190
  loc_B30A9F: LitI4 0
  loc_B30AA4: LitI4 -1
  loc_B30AA9: LitI4 1
  loc_B30AAE: LitStr "."
  loc_B30AB1: LitStr ","
  loc_B30AB4: FLdFPR8 CapiApre
  loc_B30AB7: CStrR8
  loc_B30AB9: FStStrNoPop var_18C
  loc_B30ABC: ImpAdCallI2 Replace(, , , , , )
  loc_B30AC1: FStStrNoPop var_194
  loc_B30AC4: ConcatStr
  loc_B30AC5: FStStrNoPop var_198
  loc_B30AC8: LitStr ","
  loc_B30ACB: ConcatStr
  loc_B30ACC: FStStrNoPop var_1A0
  loc_B30ACF: LitI4 0
  loc_B30AD4: LitI4 -1
  loc_B30AD9: LitI4 1
  loc_B30ADE: LitStr "."
  loc_B30AE1: LitStr ","
  loc_B30AE4: FLdFPR8 TotaApre
  loc_B30AE7: CStrR8
  loc_B30AE9: FStStrNoPop var_19C
  loc_B30AEC: ImpAdCallI2 Replace(, , , , , )
  loc_B30AF1: FStStrNoPop var_1A4
  loc_B30AF4: ConcatStr
  loc_B30AF5: FStStrNoPop var_1A8
  loc_B30AF8: LitStr ","
  loc_B30AFB: ConcatStr
  loc_B30AFC: FStStrNoPop var_1B0
  loc_B30AFF: LitI4 0
  loc_B30B04: LitI4 -1
  loc_B30B09: LitI4 1
  loc_B30B0E: LitStr "."
  loc_B30B11: LitStr ","
  loc_B30B14: FLdFPR8 AddNewMigracion0
  loc_B30B17: CStrR8
  loc_B30B19: FStStrNoPop var_1AC
  loc_B30B1C: ImpAdCallI2 Replace(, , , , , )
  loc_B30B21: FStStrNoPop var_1B4
  loc_B30B24: ConcatStr
  loc_B30B25: FStStrNoPop var_1B8
  loc_B30B28: LitStr ",'migra');"
  loc_B30B2B: ConcatStr
  loc_B30B2C: FStStrNoPop var_1BC
  loc_B30B2F: Call Proc_297_125_A4BEE4()
  loc_B30B34: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_120 = "": var_124 = "": var_128 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = ""
  loc_B30B8B: FFreeVar var_FC = "": var_11C = "": var_148 = ""
  loc_B30B96: ExitProcHresult
End Sub

Public Sub Modificar(NumeApre, AutoApre, CodiReca, CodiOfju, EstaApre, byCodiOfic, sCuenCtct, sObseApre, doCapiApre) 'B65C98
  'Data Table: 49FFEC
  loc_B658AC: ILdRf EstaApre
  loc_B658AF: FStStrCopy var_88
  loc_B658B2: ILdRf sCuenCtct
  loc_B658B5: FStStrCopy var_8C
  loc_B658B8: ILdRf sObseApre
  loc_B658BB: FStStrCopy var_90
  loc_B658BE: FLdRfVar var_94
  loc_B658C1: ILdRf NumeApre
  loc_B658C4: from_stack_2v = ValidaClave(from_stack_1v)
  loc_B658C9: ILdRf var_94
  loc_B658CC: LitStr vbNullString
  loc_B658CF: EqStr
  loc_B658D1: FFree1Str var_94
  loc_B658D4: BranchF loc_B658E2
  loc_B658D7: LitStr "El APREMIO NO EXISTE. Verifique..."
  loc_B658DA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B658DF: Branch loc_B65C88
  loc_B658E2: LitStr "Municipalidad de Guaymallén"
  loc_B658E5: LitStr "Municipalidad de San Carlos"
  loc_B658E8: EqStr
  loc_B658EA: BranchF loc_B65AF4
  loc_B658ED: ILdRf var_88
  loc_B658F0: LitStr "Suspendido"
  loc_B658F3: EqStr
  loc_B658F5: BranchF loc_B65A1D
  loc_B658F8: LitStr " UPDATE apremio SET AutoApre = "
  loc_B658FB: ILdRf AutoApre
  loc_B658FE: CStrI4
  loc_B65900: FStStrNoPop var_94
  loc_B65903: ConcatStr
  loc_B65904: FStStrNoPop var_98
  loc_B65907: LitStr ",CodiReca = "
  loc_B6590A: ConcatStr
  loc_B6590B: FStStrNoPop var_9C
  loc_B6590E: FLdI2 CodiReca
  loc_B65911: CStrUI1
  loc_B65913: FStStrNoPop var_A0
  loc_B65916: ConcatStr
  loc_B65917: FStStrNoPop var_A4
  loc_B6591A: LitStr ",CodiOfju = "
  loc_B6591D: ConcatStr
  loc_B6591E: FStStrNoPop var_A8
  loc_B65921: FLdI2 CodiOfju
  loc_B65924: CStrUI1
  loc_B65926: FStStrNoPop var_AC
  loc_B65929: ConcatStr
  loc_B6592A: FStStrNoPop var_B0
  loc_B6592D: LitStr ",EstaApre = '"
  loc_B65930: ConcatStr
  loc_B65931: FStStrNoPop var_B4
  loc_B65934: ILdRf var_88
  loc_B65937: ConcatStr
  loc_B65938: FStStrNoPop var_B8
  loc_B6593B: LitStr "', ObseApre = '"
  loc_B6593E: ConcatStr
  loc_B6593F: FStStrNoPop var_BC
  loc_B65942: ILdRf var_90
  loc_B65945: ConcatStr
  loc_B65946: FStStrNoPop var_C0
  loc_B65949: LitStr "', CapiApre = "
  loc_B6594C: ConcatStr
  loc_B6594D: FStStrNoPop var_C8
  loc_B65950: LitI4 0
  loc_B65955: LitI4 -1
  loc_B6595A: LitI4 1
  loc_B6595F: LitStr "."
  loc_B65962: LitStr ","
  loc_B65965: FLdFPR8 doCapiApre
  loc_B65968: CStrR8
  loc_B6596A: FStStrNoPop var_C4
  loc_B6596D: ImpAdCallI2 Replace(, , , , , )
  loc_B65972: FStStrNoPop var_CC
  loc_B65975: ConcatStr
  loc_B65976: FStStrNoPop var_D0
  loc_B65979: LitStr ", BajaUsua = '"
  loc_B6597C: ConcatStr
  loc_B6597D: FStStrNoPop var_D4
  loc_B65980: ImpAdLdI4 MemVar_D9302C
  loc_B65983: ConcatStr
  loc_B65984: FStStrNoPop var_D8
  loc_B65987: LitStr "', BajaFeho = now() WHERE NumeApre = "
  loc_B6598A: ConcatStr
  loc_B6598B: FStStrNoPop var_DC
  loc_B6598E: ILdRf NumeApre
  loc_B65991: CStrI4
  loc_B65993: FStStrNoPop var_E0
  loc_B65996: ConcatStr
  loc_B65997: FStStrNoPop var_E4
  loc_B6599A: LitStr ";"
  loc_B6599D: ConcatStr
  loc_B6599E: FStStrNoPop var_E8
  loc_B659A1: LitStr " UPDATE ctacte SET NumeApre = 0 WHERE CodiOfic = "
  loc_B659A4: ConcatStr
  loc_B659A5: FStStrNoPop var_EC
  loc_B659A8: FLdUI1
  loc_B659AC: CStrI2
  loc_B659AE: FStStrNoPop var_F0
  loc_B659B1: ConcatStr
  loc_B659B2: FStStrNoPop var_F4
  loc_B659B5: LitStr " AND CuenCtct = '"
  loc_B659B8: ConcatStr
  loc_B659B9: FStStrNoPop var_F8
  loc_B659BC: ILdRf var_8C
  loc_B659BF: ConcatStr
  loc_B659C0: FStStrNoPop var_FC
  loc_B659C3: LitStr "' AND NumeApre = "
  loc_B659C6: ConcatStr
  loc_B659C7: FStStrNoPop var_100
  loc_B659CA: ILdRf NumeApre
  loc_B659CD: CStrI4
  loc_B659CF: FStStrNoPop var_104
  loc_B659D2: ConcatStr
  loc_B659D3: FStStrNoPop var_108
  loc_B659D6: Call Proc_297_125_A4BEE4()
  loc_B659DB: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_B65A1A: Branch loc_B65AF1
  loc_B65A1D: LitStr " UPDATE apremio SET AutoApre = "
  loc_B65A20: ILdRf AutoApre
  loc_B65A23: CStrI4
  loc_B65A25: FStStrNoPop var_94
  loc_B65A28: ConcatStr
  loc_B65A29: FStStrNoPop var_98
  loc_B65A2C: LitStr ",CodiReca = "
  loc_B65A2F: ConcatStr
  loc_B65A30: FStStrNoPop var_9C
  loc_B65A33: FLdI2 CodiReca
  loc_B65A36: CStrUI1
  loc_B65A38: FStStrNoPop var_A0
  loc_B65A3B: ConcatStr
  loc_B65A3C: FStStrNoPop var_A4
  loc_B65A3F: LitStr ",CodiOfju = "
  loc_B65A42: ConcatStr
  loc_B65A43: FStStrNoPop var_A8
  loc_B65A46: FLdI2 CodiOfju
  loc_B65A49: CStrUI1
  loc_B65A4B: FStStrNoPop var_AC
  loc_B65A4E: ConcatStr
  loc_B65A4F: FStStrNoPop var_B0
  loc_B65A52: LitStr ",EstaApre = '"
  loc_B65A55: ConcatStr
  loc_B65A56: FStStrNoPop var_B4
  loc_B65A59: ILdRf var_88
  loc_B65A5C: ConcatStr
  loc_B65A5D: FStStrNoPop var_B8
  loc_B65A60: LitStr "', ObseApre = '"
  loc_B65A63: ConcatStr
  loc_B65A64: FStStrNoPop var_BC
  loc_B65A67: ILdRf var_90
  loc_B65A6A: ConcatStr
  loc_B65A6B: FStStrNoPop var_C0
  loc_B65A6E: LitStr "', CapiApre = "
  loc_B65A71: ConcatStr
  loc_B65A72: FStStrNoPop var_C8
  loc_B65A75: LitI4 0
  loc_B65A7A: LitI4 -1
  loc_B65A7F: LitI4 1
  loc_B65A84: LitStr "."
  loc_B65A87: LitStr ","
  loc_B65A8A: FLdFPR8 doCapiApre
  loc_B65A8D: CStrR8
  loc_B65A8F: FStStrNoPop var_C4
  loc_B65A92: ImpAdCallI2 Replace(, , , , , )
  loc_B65A97: FStStrNoPop var_CC
  loc_B65A9A: ConcatStr
  loc_B65A9B: FStStrNoPop var_D0
  loc_B65A9E: LitStr ", ModiUsua = '"
  loc_B65AA1: ConcatStr
  loc_B65AA2: FStStrNoPop var_D4
  loc_B65AA5: ImpAdLdI4 MemVar_D9302C
  loc_B65AA8: ConcatStr
  loc_B65AA9: FStStrNoPop var_D8
  loc_B65AAC: LitStr "', ModiFeho = now() WHERE NumeApre = "
  loc_B65AAF: ConcatStr
  loc_B65AB0: FStStrNoPop var_DC
  loc_B65AB3: ILdRf NumeApre
  loc_B65AB6: CStrI4
  loc_B65AB8: FStStrNoPop var_E0
  loc_B65ABB: ConcatStr
  loc_B65ABC: FStStrNoPop var_E4
  loc_B65ABF: Call Proc_297_125_A4BEE4()
  loc_B65AC4: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_B65AF1: Branch loc_B65C88
  loc_B65AF4: ILdRf var_88
  loc_B65AF7: LitStr "Suspendido"
  loc_B65AFA: EqStr
  loc_B65AFC: BranchF loc_B65BEC
  loc_B65AFF: LitStr " UPDATE apremio SET AutoApre = "
  loc_B65B02: ILdRf AutoApre
  loc_B65B05: CStrI4
  loc_B65B07: FStStrNoPop var_94
  loc_B65B0A: ConcatStr
  loc_B65B0B: FStStrNoPop var_98
  loc_B65B0E: LitStr ",CodiReca = "
  loc_B65B11: ConcatStr
  loc_B65B12: FStStrNoPop var_9C
  loc_B65B15: FLdI2 CodiReca
  loc_B65B18: CStrUI1
  loc_B65B1A: FStStrNoPop var_A0
  loc_B65B1D: ConcatStr
  loc_B65B1E: FStStrNoPop var_A4
  loc_B65B21: LitStr ",CodiOfju = "
  loc_B65B24: ConcatStr
  loc_B65B25: FStStrNoPop var_A8
  loc_B65B28: FLdI2 CodiOfju
  loc_B65B2B: CStrUI1
  loc_B65B2D: FStStrNoPop var_AC
  loc_B65B30: ConcatStr
  loc_B65B31: FStStrNoPop var_B0
  loc_B65B34: LitStr ",EstaApre = '"
  loc_B65B37: ConcatStr
  loc_B65B38: FStStrNoPop var_B4
  loc_B65B3B: ILdRf var_88
  loc_B65B3E: ConcatStr
  loc_B65B3F: FStStrNoPop var_B8
  loc_B65B42: LitStr "', ObseApre = '"
  loc_B65B45: ConcatStr
  loc_B65B46: FStStrNoPop var_BC
  loc_B65B49: ILdRf var_90
  loc_B65B4C: ConcatStr
  loc_B65B4D: FStStrNoPop var_C0
  loc_B65B50: LitStr "', BajaUsua = '"
  loc_B65B53: ConcatStr
  loc_B65B54: FStStrNoPop var_C4
  loc_B65B57: ImpAdLdI4 MemVar_D9302C
  loc_B65B5A: ConcatStr
  loc_B65B5B: FStStrNoPop var_C8
  loc_B65B5E: LitStr "', BajaFeho = now() WHERE NumeApre = "
  loc_B65B61: ConcatStr
  loc_B65B62: FStStrNoPop var_CC
  loc_B65B65: ILdRf NumeApre
  loc_B65B68: CStrI4
  loc_B65B6A: FStStrNoPop var_D0
  loc_B65B6D: ConcatStr
  loc_B65B6E: FStStrNoPop var_D4
  loc_B65B71: LitStr ";"
  loc_B65B74: ConcatStr
  loc_B65B75: FStStrNoPop var_D8
  loc_B65B78: LitStr " UPDATE ctacte SET NumeApre = 0 WHERE CodiOfic = "
  loc_B65B7B: ConcatStr
  loc_B65B7C: FStStrNoPop var_DC
  loc_B65B7F: FLdUI1
  loc_B65B83: CStrI2
  loc_B65B85: FStStrNoPop var_E0
  loc_B65B88: ConcatStr
  loc_B65B89: FStStrNoPop var_E4
  loc_B65B8C: LitStr " AND CuenCtct = '"
  loc_B65B8F: ConcatStr
  loc_B65B90: FStStrNoPop var_E8
  loc_B65B93: ILdRf var_8C
  loc_B65B96: ConcatStr
  loc_B65B97: FStStrNoPop var_EC
  loc_B65B9A: LitStr "' AND NumeApre = "
  loc_B65B9D: ConcatStr
  loc_B65B9E: FStStrNoPop var_F0
  loc_B65BA1: ILdRf NumeApre
  loc_B65BA4: CStrI4
  loc_B65BA6: FStStrNoPop var_F4
  loc_B65BA9: ConcatStr
  loc_B65BAA: FStStrNoPop var_F8
  loc_B65BAD: Call Proc_297_125_A4BEE4()
  loc_B65BB2: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_B65BE9: Branch loc_B65C88
  loc_B65BEC: LitStr " UPDATE apremio SET AutoApre = "
  loc_B65BEF: ILdRf AutoApre
  loc_B65BF2: CStrI4
  loc_B65BF4: FStStrNoPop var_94
  loc_B65BF7: ConcatStr
  loc_B65BF8: FStStrNoPop var_98
  loc_B65BFB: LitStr ",CodiReca = "
  loc_B65BFE: ConcatStr
  loc_B65BFF: FStStrNoPop var_9C
  loc_B65C02: FLdI2 CodiReca
  loc_B65C05: CStrUI1
  loc_B65C07: FStStrNoPop var_A0
  loc_B65C0A: ConcatStr
  loc_B65C0B: FStStrNoPop var_A4
  loc_B65C0E: LitStr ",CodiOfju = "
  loc_B65C11: ConcatStr
  loc_B65C12: FStStrNoPop var_A8
  loc_B65C15: FLdI2 CodiOfju
  loc_B65C18: CStrUI1
  loc_B65C1A: FStStrNoPop var_AC
  loc_B65C1D: ConcatStr
  loc_B65C1E: FStStrNoPop var_B0
  loc_B65C21: LitStr ",EstaApre = '"
  loc_B65C24: ConcatStr
  loc_B65C25: FStStrNoPop var_B4
  loc_B65C28: ILdRf var_88
  loc_B65C2B: ConcatStr
  loc_B65C2C: FStStrNoPop var_B8
  loc_B65C2F: LitStr "', ObseApre = '"
  loc_B65C32: ConcatStr
  loc_B65C33: FStStrNoPop var_BC
  loc_B65C36: ILdRf var_90
  loc_B65C39: ConcatStr
  loc_B65C3A: FStStrNoPop var_C0
  loc_B65C3D: LitStr "', ModiUsua = '"
  loc_B65C40: ConcatStr
  loc_B65C41: FStStrNoPop var_C4
  loc_B65C44: ImpAdLdI4 MemVar_D9302C
  loc_B65C47: ConcatStr
  loc_B65C48: FStStrNoPop var_C8
  loc_B65C4B: LitStr "', ModiFeho = now() WHERE NumeApre = "
  loc_B65C4E: ConcatStr
  loc_B65C4F: FStStrNoPop var_CC
  loc_B65C52: ILdRf NumeApre
  loc_B65C55: CStrI4
  loc_B65C57: FStStrNoPop var_D0
  loc_B65C5A: ConcatStr
  loc_B65C5B: FStStrNoPop var_D4
  loc_B65C5E: Call Proc_297_125_A4BEE4()
  loc_B65C63: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_B65C88: Call Requery()
  loc_B65C8D: ILdRf NumeApre
  loc_B65C90: Call Encontrar(from_stack_1v)
  loc_B65C95: ExitProcHresult
End Sub

Public Sub Eliminar(byCodiOfic, sCuenCtct, lNumeApre) 'B033C0
  'Data Table: 49FFEC
  loc_B031F8: ILdRf byCodiOfic
  loc_B031FB: FStStrCopy var_88
  loc_B031FE: ILdRf sCuenCtct
  loc_B03201: FStStrCopy var_8C
  loc_B03204: ILdRf lNumeApre
  loc_B03207: FStStrCopy var_90
  loc_B0320A: ILdRf var_88
  loc_B0320D: LitStr vbNullString
  loc_B03210: EqStr
  loc_B03212: ILdRf var_8C
  loc_B03215: LitStr vbNullString
  loc_B03218: EqStr
  loc_B0321A: AndI4
  loc_B0321B: ILdRf var_90
  loc_B0321E: LitStr vbNullString
  loc_B03221: EqStr
  loc_B03223: AndI4
  loc_B03224: BranchF loc_B032D8
  loc_B03227: FLdRfVar var_BC
  loc_B0322A: FLdRfVar var_AC
  loc_B0322D: LitVarStr var_A8, "CodiOfic"
  loc_B03232: PopAdLdVar
  loc_B03233: FLdRfVar var_98
  loc_B03236: FLdPr Me
  loc_B03239: MemLdPr RsFrm
  loc_B0323C:  = Me.Fields
  loc_B03241: FLdPr var_98
  loc_B03244: from_stack_2 = Me.Item(from_stack_1)
  loc_B03249: FLdPr var_AC
  loc_B0324C:  = Me.Value
  loc_B03251: FLdRfVar var_BC
  loc_B03254: CStrVarTmp
  loc_B03255: FStStr var_88
  loc_B03258: FFreeAd var_98 = ""
  loc_B0325F: FFree1Var var_BC = ""
  loc_B03262: FLdRfVar var_BC
  loc_B03265: FLdRfVar var_AC
  loc_B03268: LitVarStr var_A8, "CuenCtct"
  loc_B0326D: PopAdLdVar
  loc_B0326E: FLdRfVar var_98
  loc_B03271: FLdPr Me
  loc_B03274: MemLdPr RsFrm
  loc_B03277:  = Me.Fields
  loc_B0327C: FLdPr var_98
  loc_B0327F: from_stack_2 = Me.Item(from_stack_1)
  loc_B03284: FLdPr var_AC
  loc_B03287:  = Me.Value
  loc_B0328C: FLdRfVar var_BC
  loc_B0328F: CStrVarTmp
  loc_B03290: FStStr var_8C
  loc_B03293: FFreeAd var_98 = ""
  loc_B0329A: FFree1Var var_BC = ""
  loc_B0329D: FLdRfVar var_BC
  loc_B032A0: FLdRfVar var_AC
  loc_B032A3: LitVarStr var_A8, "NumeApre"
  loc_B032A8: PopAdLdVar
  loc_B032A9: FLdRfVar var_98
  loc_B032AC: FLdPr Me
  loc_B032AF: MemLdPr RsFrm
  loc_B032B2:  = Me.Fields
  loc_B032B7: FLdPr var_98
  loc_B032BA: from_stack_2 = Me.Item(from_stack_1)
  loc_B032BF: FLdPr var_AC
  loc_B032C2:  = Me.Value
  loc_B032C7: FLdRfVar var_BC
  loc_B032CA: CStrVarTmp
  loc_B032CB: FStStr var_90
  loc_B032CE: FFreeAd var_98 = ""
  loc_B032D5: FFree1Var var_BC = ""
  loc_B032D8: FLdRfVar var_C4
  loc_B032DB: FLdPr Me
  loc_B032DE: MemLdPr RsFrm
  loc_B032E1:  = Me.AbsolutePosition
  loc_B032E6: ILdRf var_C4
  loc_B032E9: FStR4 var_C0
  loc_B032EC: LitStr " START TRANSACTION; UPDATE ctacte SET NumeApre = 0 WHERE CodiOfic = "
  loc_B032EF: ILdRf var_88
  loc_B032F2: ConcatStr
  loc_B032F3: FStStrNoPop var_C8
  loc_B032F6: LitStr " AND CuenCtct = '"
  loc_B032F9: ConcatStr
  loc_B032FA: FStStrNoPop var_CC
  loc_B032FD: ILdRf var_8C
  loc_B03300: ConcatStr
  loc_B03301: FStStrNoPop var_D0
  loc_B03304: LitStr "' AND NumeApre = "
  loc_B03307: ConcatStr
  loc_B03308: FStStrNoPop var_D4
  loc_B0330B: ILdRf var_90
  loc_B0330E: ConcatStr
  loc_B0330F: FStStrNoPop var_D8
  loc_B03312: LitStr ";"
  loc_B03315: ConcatStr
  loc_B03316: FStStrNoPop var_DC
  loc_B03319: LitStr " DELETE FROM apremio WHERE NumeApre = "
  loc_B0331C: ConcatStr
  loc_B0331D: FStStrNoPop var_E0
  loc_B03320: ILdRf var_90
  loc_B03323: ConcatStr
  loc_B03324: FStStrNoPop var_E4
  loc_B03327: LitStr " ;"
  loc_B0332A: ConcatStr
  loc_B0332B: FStStrNoPop var_E8
  loc_B0332E: LitStr " DELETE FROM apredeta WHERE NumeApre = "
  loc_B03331: ConcatStr
  loc_B03332: FStStrNoPop var_EC
  loc_B03335: ILdRf var_90
  loc_B03338: ConcatStr
  loc_B03339: FStStr var_94
  loc_B0333C: FFreeStr var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_B03353: OnErrorGoto loc_B033AF
  loc_B03356: ILdRf var_94
  loc_B03359: Call Proc_297_125_A4BEE4()
  loc_B0335E: LitStr "COMMIT;"
  loc_B03361: Call Proc_297_125_A4BEE4()
  loc_B03366: Call Requery()
  loc_B0336B: FLdRfVar var_C4
  loc_B0336E: FLdPr Me
  loc_B03371: MemLdPr RsFrm
  loc_B03374:  = Me.RecordCount
  loc_B03379: ILdRf var_C4
  loc_B0337C: LitI4 0
  loc_B03381: GtI4
  loc_B03382: BranchF loc_B033AE
  loc_B03385: Call MoveFirst()
  loc_B0338A: ILdRf var_C0
  loc_B0338D: LitI4 1
  loc_B03392: GtI4
  loc_B03393: BranchF loc_B033AE
  loc_B03396: LitVar_Missing var_A8
  loc_B03399: PopAdLdVar
  loc_B0339A: ILdRf var_C0
  loc_B0339D: LitI4 2
  loc_B033A2: SubI4
  loc_B033A3: FLdPr Me
  loc_B033A6: MemLdPr RsFrm
  loc_B033A9: Me.Move from_stack_1, from_stack_2
  loc_B033AE: ExitProcHresult
  loc_B033AF: LitStr "ROLLBACK;"
  loc_B033B2: Call Proc_297_125_A4BEE4()
  loc_B033B7: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B033BA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B033BF: ExitProcHresult
End Sub

Public Sub Requery() '9E8484
  'Data Table: 49FFEC
  loc_9E8460: LitI4 -1
  loc_9E8465: FLdPr Me
  loc_9E8468: MemLdPr RsFrm
  loc_9E846B: Me.Requery from_stack_1
  loc_9E8470: LitVarStr var_94, "Primary"
  loc_9E8475: PopAdLdVar
  loc_9E8476: FLdPr Me
  loc_9E8479: LateIdCall
  loc_9E8481: ExitProcHresult
End Sub

Public Sub Update() 'A0BD44
  'Data Table: 49FFEC
  loc_A0BD08: FLdPr Me
  loc_A0BD0B: MemLdStr RsFrm
  loc_A0BD0E: FStAd var_88 
  loc_A0BD12: LitI4 3
  loc_A0BD17: FLdPr var_88
  loc_A0BD1A: Me.UpdateBatch
  loc_A0BD1F: FLdRfVar var_8C
  loc_A0BD22: FLdPr var_88
  loc_A0BD25:  = Me.EditMode
  loc_A0BD2A: ILdRf var_8C
  loc_A0BD2D: LitI4 2
  loc_A0BD32: EqI4
  loc_A0BD33: BranchF loc_A0BD3B
  loc_A0BD36: Call MoveLast()
  loc_A0BD3B: LitNothing
  loc_A0BD3D: FStAd var_88 
  loc_A0BD41: ExitProcHresult
End Sub

Public Sub Cancel() 'A30CAC
  'Data Table: 49FFEC
  loc_A30C60: FLdPr Me
  loc_A30C63: MemLdStr RsFrm
  loc_A30C66: FStAd var_88 
  loc_A30C6A: FLdRfVar var_8C
  loc_A30C6D: FLdPr var_88
  loc_A30C70:  = Me.RecordCount
  loc_A30C75: ILdRf var_8C
  loc_A30C78: LitI4 0
  loc_A30C7D: GtI4
  loc_A30C7E: BranchF loc_A30CA5
  loc_A30C81: FLdPr var_88
  loc_A30C84: Me.CancelUpdate
  loc_A30C89: FLdRfVar var_8C
  loc_A30C8C: FLdPr var_88
  loc_A30C8F:  = Me.EditMode
  loc_A30C94: ILdRf var_8C
  loc_A30C97: LitI4 2
  loc_A30C9C: EqI4
  loc_A30C9D: BranchF loc_A30CA5
  loc_A30CA0: Call MoveFirst()
  loc_A30CA5: LitNothing
  loc_A30CA7: FStAd var_88 
  loc_A30CAB: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9E0DD0
  'Data Table: 49FFEC
  loc_9E0DB0: FLdRfVar var_8C
  loc_9E0DB3: FLdPr Me
  loc_9E0DB6: MemLdPr RsFrm
  loc_9E0DB9:  = Me.EditMode
  loc_9E0DBE: ILdRf var_8C
  loc_9E0DC1: LitI4 0
  loc_9E0DC6: NeI4
  loc_9E0DC7: FStI2 var_86
  loc_9E0DCA: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5EA10
  'Data Table: 49FFEC
  loc_A5E9AC: ILdRf sSelect
  loc_A5E9AF: FStStrCopy var_88
  loc_A5E9B2: LitNothing
  loc_A5E9B4: CastAd
  loc_A5E9B7: FStAdFuncNoPop
  loc_A5E9BA: FLdPr Me
  loc_A5E9BD: MemStAd
  loc_A5E9C1: FFree1Ad var_8C
  loc_A5E9C4: New Recordset
  loc_A5E9C8: FStAdFuncNoPop
  loc_A5E9CB: FLdPr Me
  loc_A5E9CE: MemStAd
  loc_A5E9D2: FFree1Ad var_8C
  loc_A5E9D5: LitI4 -1
  loc_A5E9DA: LitI4 3
  loc_A5E9DF: LitI4 3
  loc_A5E9E4: ImpAdLdI4 MemVar_D9301C
  loc_A5E9E7: CVarAd
  loc_A5E9EB: PopAdLdVar
  loc_A5E9EC: ILdRf var_88
  loc_A5E9EF: CVarStr var_9C
  loc_A5E9F2: PopAdLdVar
  loc_A5E9F3: FLdPr Me
  loc_A5E9F6: MemLdPr RsFrm
  loc_A5E9F9: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5E9FE: LitVarStr var_9C, "Primary"
  loc_A5EA03: PopAdLdVar
  loc_A5EA04: FLdPr Me
  loc_A5EA07: LateIdCall
  loc_A5EA0F: ExitProcHresult
End Sub

Public Sub Encontrar(NumeApre) '9EB98C
  'Data Table: 49FFEC
  loc_9EB96C: LitStr "NumeApre = "
  loc_9EB96F: ILdRf NumeApre
  loc_9EB972: CStrI4
  loc_9EB974: FStStrNoPop var_88
  loc_9EB977: ConcatStr
  loc_9EB978: PopTmpLdAdStr
  loc_9EB97C: Call Find(from_stack_1v)
  loc_9EB981: FFreeStr var_88 = ""
  loc_9EB988: ExitProcHresult
End Sub

Public Property Get DataSource() '9F0C74
  'Data Table: 49FFEC
  loc_9F0C50: ZeroRetVal
  loc_9F0C52: FLdRfVar var_8C
  loc_9F0C55: FLdPr Me
  loc_9F0C58: MemLdPr RsFrm
  loc_9F0C5B:  = Me.DataSource
  loc_9F0C60: ILdRf var_8C
  loc_9F0C63: CastAd
  loc_9F0C66: FStAdFunc var_88
  loc_9F0C69: FFree1Ad var_8C
  loc_9F0C6C: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9D8324
  'Data Table: 49FFEC
  loc_9D8308: FLdRfVar var_8C
  loc_9D830B: FLdPr Me
  loc_9D830E: MemLdPr RsFrm
  loc_9D8311:  = Me.EditMode
  loc_9D8316: ILdRf var_8C
  loc_9D8319: FStR4 var_88
  loc_9D831C: ExitProcCbHresult
End Sub

Public Property Get NumeApre() 'A30BA4
  'Data Table: 49FFEC
  loc_A30B60: FLdRfVar var_B0
  loc_A30B63: FLdRfVar var_A0
  loc_A30B66: LitVarStr var_9C, "NumeApre"
  loc_A30B6B: PopAdLdVar
  loc_A30B6C: FLdRfVar var_8C
  loc_A30B6F: FLdPr Me
  loc_A30B72: MemLdPr RsFrm
  loc_A30B75:  = Me.Fields
  loc_A30B7A: FLdPr var_8C
  loc_A30B7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A30B82: FLdPr var_A0
  loc_A30B85:  = Me.Value
  loc_A30B8A: FLdRfVar var_B0
  loc_A30B8D: CI4Var
  loc_A30B8F: FStR4 var_88
  loc_A30B92: FFreeAd var_8C = ""
  loc_A30B99: FFree1Var var_B0 = ""
  loc_A30B9C: ExitProcCbHresult
End Sub

Public Property Let NumeApre(vDato) '9D83BC
  'Data Table: 49FFEC
  loc_9D83A0: ILdRf vDato
  loc_9D83A3: CVarI4
  loc_9D83A7: PopAdLdVar
  loc_9D83A8: LitVarStr var_94, "NumeApre"
  loc_9D83AD: PopAdLdVar
  loc_9D83AE: FLdPr Me
  loc_9D83B1: MemLdPr RsFrm
  loc_9D83B4: Me.Collect = from_stack_1
  loc_9D83B9: ExitProcHresult
End Sub

Public Property Get CucuPers() 'A35C2C
  'Data Table: 49FFEC
  loc_A35BE8: ZeroRetVal
  loc_A35BEA: FLdRfVar var_B0
  loc_A35BED: FLdRfVar var_A0
  loc_A35BF0: LitVarStr var_9C, "CucuPers"
  loc_A35BF5: PopAdLdVar
  loc_A35BF6: FLdRfVar var_8C
  loc_A35BF9: FLdPr Me
  loc_A35BFC: MemLdPr RsFrm
  loc_A35BFF:  = Me.Fields
  loc_A35C04: FLdPr var_8C
  loc_A35C07: from_stack_2 = Me.Item(from_stack_1)
  loc_A35C0C: FLdPr var_A0
  loc_A35C0F:  = Me.Value
  loc_A35C14: FLdRfVar var_B0
  loc_A35C17: CStrVarTmp
  loc_A35C18: FStStr var_88
  loc_A35C1B: FFreeAd var_8C = ""
  loc_A35C22: FFree1Var var_B0 = ""
  loc_A35C25: ExitProcCbHresult
End Sub

Public Property Let CucuPers(vDato) '9E8B64
  'Data Table: 49FFEC
  loc_9E8B44: ILdRf vDato
  loc_9E8B47: FStStrCopy var_88
  loc_9E8B4A: ILdRf var_88
  loc_9E8B4D: CVarStr var_A8
  loc_9E8B50: PopAdLdVar
  loc_9E8B51: LitVarStr var_98, "CucuPers"
  loc_9E8B56: PopAdLdVar
  loc_9E8B57: FLdPr Me
  loc_9E8B5A: MemLdPr RsFrm
  loc_9E8B5D: Me.Collect = from_stack_1
  loc_9E8B62: ExitProcHresult
End Sub

Public Property Get AutoApre() 'A308A4
  'Data Table: 49FFEC
  loc_A30860: FLdRfVar var_B0
  loc_A30863: FLdRfVar var_A0
  loc_A30866: LitVarStr var_9C, "AutoApre"
  loc_A3086B: PopAdLdVar
  loc_A3086C: FLdRfVar var_8C
  loc_A3086F: FLdPr Me
  loc_A30872: MemLdPr RsFrm
  loc_A30875:  = Me.Fields
  loc_A3087A: FLdPr var_8C
  loc_A3087D: from_stack_2 = Me.Item(from_stack_1)
  loc_A30882: FLdPr var_A0
  loc_A30885:  = Me.Value
  loc_A3088A: FLdRfVar var_B0
  loc_A3088D: CI4Var
  loc_A3088F: FStR4 var_88
  loc_A30892: FFreeAd var_8C = ""
  loc_A30899: FFree1Var var_B0 = ""
  loc_A3089C: ExitProcCbHresult
End Sub

Public Property Let AutoApre(vDato) '9D815C
  'Data Table: 49FFEC
  loc_9D8140: ILdRf vDato
  loc_9D8143: CVarI4
  loc_9D8147: PopAdLdVar
  loc_9D8148: LitVarStr var_94, "AutoApre"
  loc_9D814D: PopAdLdVar
  loc_9D814E: FLdPr Me
  loc_9D8151: MemLdPr RsFrm
  loc_9D8154: Me.Collect = from_stack_1
  loc_9D8159: ExitProcHresult
End Sub

Public Property Get CodiReca() 'A307A4
  'Data Table: 49FFEC
  loc_A30760: FLdRfVar var_B0
  loc_A30763: FLdRfVar var_A0
  loc_A30766: LitVarStr var_9C, "CodiReca"
  loc_A3076B: PopAdLdVar
  loc_A3076C: FLdRfVar var_8C
  loc_A3076F: FLdPr Me
  loc_A30772: MemLdPr RsFrm
  loc_A30775:  = Me.Fields
  loc_A3077A: FLdPr var_8C
  loc_A3077D: from_stack_2 = Me.Item(from_stack_1)
  loc_A30782: FLdPr var_A0
  loc_A30785:  = Me.Value
  loc_A3078A: FLdRfVar var_B0
  loc_A3078D: CI2Var
  loc_A3078E: FStI2 var_86
  loc_A30791: FFreeAd var_8C = ""
  loc_A30798: FFree1Var var_B0 = ""
  loc_A3079B: ExitProcCbHresult
End Sub

Public Property Let CodiReca(vDato) '9D828C
  'Data Table: 49FFEC
  loc_9D8270: FLdI2 vDato
  loc_9D8273: CVarI2 var_A4
  loc_9D8276: PopAdLdVar
  loc_9D8277: LitVarStr var_94, "CodiReca"
  loc_9D827C: PopAdLdVar
  loc_9D827D: FLdPr Me
  loc_9D8280: MemLdPr RsFrm
  loc_9D8283: Me.Collect = from_stack_1
  loc_9D8288: ExitProcHresult
End Sub

Public Property Get CodiOfju() 'A30724
  'Data Table: 49FFEC
  loc_A306E0: FLdRfVar var_B0
  loc_A306E3: FLdRfVar var_A0
  loc_A306E6: LitVarStr var_9C, "CodiOfju"
  loc_A306EB: PopAdLdVar
  loc_A306EC: FLdRfVar var_8C
  loc_A306EF: FLdPr Me
  loc_A306F2: MemLdPr RsFrm
  loc_A306F5:  = Me.Fields
  loc_A306FA: FLdPr var_8C
  loc_A306FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A30702: FLdPr var_A0
  loc_A30705:  = Me.Value
  loc_A3070A: FLdRfVar var_B0
  loc_A3070D: CI2Var
  loc_A3070E: FStI2 var_86
  loc_A30711: FFreeAd var_8C = ""
  loc_A30718: FFree1Var var_B0 = ""
  loc_A3071B: ExitProcCbHresult
End Sub

Public Property Let CodiOfju(vDato) '9D7EB0
  'Data Table: 49FFEC
  loc_9D7E94: FLdI2 vDato
  loc_9D7E97: CVarI2 var_A4
  loc_9D7E9A: PopAdLdVar
  loc_9D7E9B: LitVarStr var_94, "CodiOfju"
  loc_9D7EA0: PopAdLdVar
  loc_9D7EA1: FLdPr Me
  loc_9D7EA4: MemLdPr RsFrm
  loc_9D7EA7: Me.Collect = from_stack_1
  loc_9D7EAC: ExitProcHresult
End Sub

Public Property Get CodiOfic() 'A30424
  'Data Table: 49FFEC
  loc_A303E0: FLdRfVar var_B0
  loc_A303E3: FLdRfVar var_A0
  loc_A303E6: LitVarStr var_9C, "CodiOfic"
  loc_A303EB: PopAdLdVar
  loc_A303EC: FLdRfVar var_8C
  loc_A303EF: FLdPr Me
  loc_A303F2: MemLdPr RsFrm
  loc_A303F5:  = Me.Fields
  loc_A303FA: FLdPr var_8C
  loc_A303FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A30402: FLdPr var_A0
  loc_A30405:  = Me.Value
  loc_A3040A: FLdRfVar var_B0
  loc_A3040D: CUI1Var
  loc_A3040F: FStUI1 var_86
  loc_A30413: FFreeAd var_8C = ""
  loc_A3041A: FFree1Var var_B0 = ""
  loc_A3041D: ExitProcCbHresult
End Sub

Public Property Let CodiOfic(vDato) '9D7D80
  'Data Table: 49FFEC
  loc_9D7D64: FLdUI1
  loc_9D7D68: CVarUI1
  loc_9D7D6C: PopAdLdVar
  loc_9D7D6D: LitVarStr var_94, "CodiOfic"
  loc_9D7D72: PopAdLdVar
  loc_9D7D73: FLdPr Me
  loc_9D7D76: MemLdPr RsFrm
  loc_9D7D79: Me.Collect = from_stack_1
  loc_9D7D7E: ExitProcHresult
End Sub

Public Property Get CuenCtct() 'A35DB8
  'Data Table: 49FFEC
  loc_A35D74: ZeroRetVal
  loc_A35D76: FLdRfVar var_B0
  loc_A35D79: FLdRfVar var_A0
  loc_A35D7C: LitVarStr var_9C, "CuenCtct"
  loc_A35D81: PopAdLdVar
  loc_A35D82: FLdRfVar var_8C
  loc_A35D85: FLdPr Me
  loc_A35D88: MemLdPr RsFrm
  loc_A35D8B:  = Me.Fields
  loc_A35D90: FLdPr var_8C
  loc_A35D93: from_stack_2 = Me.Item(from_stack_1)
  loc_A35D98: FLdPr var_A0
  loc_A35D9B:  = Me.Value
  loc_A35DA0: FLdRfVar var_B0
  loc_A35DA3: CStrVarTmp
  loc_A35DA4: FStStr var_88
  loc_A35DA7: FFreeAd var_8C = ""
  loc_A35DAE: FFree1Var var_B0 = ""
  loc_A35DB1: ExitProcCbHresult
End Sub

Public Property Let CuenCtct(vDato) '9E968C
  'Data Table: 49FFEC
  loc_9E966C: ILdRf vDato
  loc_9E966F: FStStrCopy var_88
  loc_9E9672: ILdRf var_88
  loc_9E9675: CVarStr var_A8
  loc_9E9678: PopAdLdVar
  loc_9E9679: LitVarStr var_98, "CuenCtct"
  loc_9E967E: PopAdLdVar
  loc_9E967F: FLdPr Me
  loc_9E9682: MemLdPr RsFrm
  loc_9E9685: Me.Collect = from_stack_1
  loc_9E968A: ExitProcHresult
End Sub

Public Property Get FealApre() 'A12CB8
  'Data Table: 49FFEC
  loc_A12C80: ZeroRetValVar
  loc_A12C82: FLdRfVar var_AC
  loc_A12C85: LitVarStr var_A8, "FealApre"
  loc_A12C8A: PopAdLdVar
  loc_A12C8B: FLdRfVar var_98
  loc_A12C8E: FLdPr Me
  loc_A12C91: MemLdPr RsFrm
  loc_A12C94:  = Me.Fields
  loc_A12C99: FLdPr var_98
  loc_A12C9C: from_stack_2 = Me.Item(from_stack_1)
  loc_A12CA1: FLdZeroAd var_AC
  loc_A12CA4: CVarAd
  loc_A12CA8: FStVar FealApre
  loc_A12CAC: FFree1Ad var_98
  loc_A12CAF: ExitProcCbHresult
End Sub

Public Property Let FealApre(vDato) '9E15EC
  'Data Table: 49FFEC
  loc_9E15D0: FDupVar
  loc_9E15D6: FLdVar var_94
  loc_9E15DA: LitVarStr var_A4, "FealApre"
  loc_9E15DF: PopAdLdVar
  loc_9E15E0: FLdPr Me
  loc_9E15E3: MemLdPr RsFrm
  loc_9E15E6: Me.Collect = from_stack_1
  loc_9E15EB: ExitProcHresult
End Sub

Public Property Get FeemApre() 'A12AD8
  'Data Table: 49FFEC
  loc_A12AA0: ZeroRetValVar
  loc_A12AA2: FLdRfVar var_AC
  loc_A12AA5: LitVarStr var_A8, "FeemApre"
  loc_A12AAA: PopAdLdVar
  loc_A12AAB: FLdRfVar var_98
  loc_A12AAE: FLdPr Me
  loc_A12AB1: MemLdPr RsFrm
  loc_A12AB4:  = Me.Fields
  loc_A12AB9: FLdPr var_98
  loc_A12ABC: from_stack_2 = Me.Item(from_stack_1)
  loc_A12AC1: FLdZeroAd var_AC
  loc_A12AC4: CVarAd
  loc_A12AC8: FStVar FeemApre
  loc_A12ACC: FFree1Ad var_98
  loc_A12ACF: ExitProcCbHresult
End Sub

Public Property Let FeemApre(vDato) '9E168C
  'Data Table: 49FFEC
  loc_9E1670: FDupVar
  loc_9E1676: FLdVar var_94
  loc_9E167A: LitVarStr var_A4, "FeemApre"
  loc_9E167F: PopAdLdVar
  loc_9E1680: FLdPr Me
  loc_9E1683: MemLdPr RsFrm
  loc_9E1686: Me.Collect = from_stack_1
  loc_9E168B: ExitProcHresult
End Sub

Public Property Get EstaApre() 'A365F8
  'Data Table: 49FFEC
  loc_A365B4: ZeroRetVal
  loc_A365B6: FLdRfVar var_B0
  loc_A365B9: FLdRfVar var_A0
  loc_A365BC: LitVarStr var_9C, "EstaApre"
  loc_A365C1: PopAdLdVar
  loc_A365C2: FLdRfVar var_8C
  loc_A365C5: FLdPr Me
  loc_A365C8: MemLdPr RsFrm
  loc_A365CB:  = Me.Fields
  loc_A365D0: FLdPr var_8C
  loc_A365D3: from_stack_2 = Me.Item(from_stack_1)
  loc_A365D8: FLdPr var_A0
  loc_A365DB:  = Me.Value
  loc_A365E0: FLdRfVar var_B0
  loc_A365E3: CStrVarTmp
  loc_A365E4: FStStr var_88
  loc_A365E7: FFreeAd var_8C = ""
  loc_A365EE: FFree1Var var_B0 = ""
  loc_A365F1: ExitProcCbHresult
End Sub

Public Property Get CodiInju() 'A302A4
  'Data Table: 49FFEC
  loc_A30260: FLdRfVar var_B0
  loc_A30263: FLdRfVar var_A0
  loc_A30266: LitVarStr var_9C, "CodiInju"
  loc_A3026B: PopAdLdVar
  loc_A3026C: FLdRfVar var_8C
  loc_A3026F: FLdPr Me
  loc_A30272: MemLdPr RsFrm
  loc_A30275:  = Me.Fields
  loc_A3027A: FLdPr var_8C
  loc_A3027D: from_stack_2 = Me.Item(from_stack_1)
  loc_A30282: FLdPr var_A0
  loc_A30285:  = Me.Value
  loc_A3028A: FLdRfVar var_B0
  loc_A3028D: CI2Var
  loc_A3028E: FStI2 var_86
  loc_A30291: FFreeAd var_8C = ""
  loc_A30298: FFree1Var var_B0 = ""
  loc_A3029B: ExitProcCbHresult
End Sub

Public Property Let CodiInju(vDato) '9D6C48
  'Data Table: 49FFEC
  loc_9D6C2C: FLdI2 vDato
  loc_9D6C2F: CVarI2 var_A4
  loc_9D6C32: PopAdLdVar
  loc_9D6C33: LitVarStr var_94, "CodiInju"
  loc_9D6C38: PopAdLdVar
  loc_9D6C39: FLdPr Me
  loc_9D6C3C: MemLdPr RsFrm
  loc_9D6C3F: Me.Collect = from_stack_1
  loc_9D6C44: ExitProcHresult
End Sub

Public Property Get ImprApre() 'A30224
  'Data Table: 49FFEC
  loc_A301E0: FLdRfVar var_B0
  loc_A301E3: FLdRfVar var_A0
  loc_A301E6: LitVarStr var_9C, "ImprApre"
  loc_A301EB: PopAdLdVar
  loc_A301EC: FLdRfVar var_8C
  loc_A301EF: FLdPr Me
  loc_A301F2: MemLdPr RsFrm
  loc_A301F5:  = Me.Fields
  loc_A301FA: FLdPr var_8C
  loc_A301FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A30202: FLdPr var_A0
  loc_A30205:  = Me.Value
  loc_A3020A: FLdRfVar var_B0
  loc_A3020D: CUI1Var
  loc_A3020F: FStUI1 var_86
  loc_A30213: FFreeAd var_8C = ""
  loc_A3021A: FFree1Var var_B0 = ""
  loc_A3021D: ExitProcCbHresult
End Sub

Public Property Get ImprUsua() 'A36574
  'Data Table: 49FFEC
  loc_A36530: ZeroRetVal
  loc_A36532: FLdRfVar var_B0
  loc_A36535: FLdRfVar var_A0
  loc_A36538: LitVarStr var_9C, "ImprUsua"
  loc_A3653D: PopAdLdVar
  loc_A3653E: FLdRfVar var_8C
  loc_A36541: FLdPr Me
  loc_A36544: MemLdPr RsFrm
  loc_A36547:  = Me.Fields
  loc_A3654C: FLdPr var_8C
  loc_A3654F: from_stack_2 = Me.Item(from_stack_1)
  loc_A36554: FLdPr var_A0
  loc_A36557:  = Me.Value
  loc_A3655C: FLdRfVar var_B0
  loc_A3655F: CStrVarTmp
  loc_A36560: FStStr var_88
  loc_A36563: FFreeAd var_8C = ""
  loc_A3656A: FFree1Var var_B0 = ""
  loc_A3656D: ExitProcCbHresult
End Sub

Public Property Get CapiApre() 'A300A4
  'Data Table: 49FFEC
  loc_A30060: FLdRfVar var_B4
  loc_A30063: FLdRfVar var_A4
  loc_A30066: LitVarStr var_A0, "CapiApre"
  loc_A3006B: PopAdLdVar
  loc_A3006C: FLdRfVar var_90
  loc_A3006F: FLdPr Me
  loc_A30072: MemLdPr RsFrm
  loc_A30075:  = Me.Fields
  loc_A3007A: FLdPr var_90
  loc_A3007D: from_stack_2 = Me.Item(from_stack_1)
  loc_A30082: FLdPr var_A4
  loc_A30085:  = Me.Value
  loc_A3008A: FLdRfVar var_B4
  loc_A3008D: CR4Var
  loc_A3008E: FStFPR8 var_8C
  loc_A30091: FFreeAd var_90 = ""
  loc_A30098: FFree1Var var_B4 = ""
  loc_A3009B: ExitProcCbHresult
End Sub

Public Property Let CapiApre(vDato) '9DBA5C
  'Data Table: 49FFEC
  loc_9DBA40: FLdFPR8 vDato
  loc_9DBA43: CVarR8
  loc_9DBA47: PopAdLdVar
  loc_9DBA48: LitVarStr var_94, "CapiApre"
  loc_9DBA4D: PopAdLdVar
  loc_9DBA4E: FLdPr Me
  loc_9DBA51: MemLdPr RsFrm
  loc_9DBA54: Me.Collect = from_stack_1
  loc_9DBA59: ExitProcHresult
End Sub

Public Property Get RecaApre() 'A30024
  'Data Table: 49FFEC
  loc_A2FFE0: FLdRfVar var_B4
  loc_A2FFE3: FLdRfVar var_A4
  loc_A2FFE6: LitVarStr var_A0, "RecaApre"
  loc_A2FFEB: PopAdLdVar
  loc_A2FFEC: FLdRfVar var_90
  loc_A2FFEF: FLdPr Me
  loc_A2FFF2: MemLdPr RsFrm
  loc_A2FFF5:  = Me.Fields
  loc_A2FFFA: FLdPr var_90
  loc_A2FFFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A30002: FLdPr var_A4
  loc_A30005:  = Me.Value
  loc_A3000A: FLdRfVar var_B4
  loc_A3000D: CR4Var
  loc_A3000E: FStFPR8 var_8C
  loc_A30011: FFreeAd var_90 = ""
  loc_A30018: FFree1Var var_B4 = ""
  loc_A3001B: ExitProcCbHresult
End Sub

Public Property Let RecaApre(vDato) '9D543C
  'Data Table: 49FFEC
  loc_9D5420: FLdFPR8 vDato
  loc_9D5423: CVarR8
  loc_9D5427: PopAdLdVar
  loc_9D5428: LitVarStr var_94, "RecaApre"
  loc_9D542D: PopAdLdVar
  loc_9D542E: FLdPr Me
  loc_9D5431: MemLdPr RsFrm
  loc_9D5434: Me.Collect = from_stack_1
  loc_9D5439: ExitProcHresult
End Sub

Public Property Get TotaApre() 'A2FE24
  'Data Table: 49FFEC
  loc_A2FDE0: FLdRfVar var_B4
  loc_A2FDE3: FLdRfVar var_A4
  loc_A2FDE6: LitVarStr var_A0, "TotaApre"
  loc_A2FDEB: PopAdLdVar
  loc_A2FDEC: FLdRfVar var_90
  loc_A2FDEF: FLdPr Me
  loc_A2FDF2: MemLdPr RsFrm
  loc_A2FDF5:  = Me.Fields
  loc_A2FDFA: FLdPr var_90
  loc_A2FDFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FE02: FLdPr var_A4
  loc_A2FE05:  = Me.Value
  loc_A2FE0A: FLdRfVar var_B4
  loc_A2FE0D: CR4Var
  loc_A2FE0E: FStFPR8 var_8C
  loc_A2FE11: FFreeAd var_90 = ""
  loc_A2FE18: FFree1Var var_B4 = ""
  loc_A2FE1B: ExitProcCbHresult
End Sub

Public Property Let TotaApre(vDato) '9D53A4
  'Data Table: 49FFEC
  loc_9D5388: FLdFPR8 vDato
  loc_9D538B: CVarR8
  loc_9D538F: PopAdLdVar
  loc_9D5390: LitVarStr var_94, "TotaApre"
  loc_9D5395: PopAdLdVar
  loc_9D5396: FLdPr Me
  loc_9D5399: MemLdPr RsFrm
  loc_9D539C: Me.Collect = from_stack_1
  loc_9D53A1: ExitProcHresult
End Sub

Public Property Get CancApre() 'A2F4A4
  'Data Table: 49FFEC
  loc_A2F460: FLdRfVar var_B0
  loc_A2F463: FLdRfVar var_A0
  loc_A2F466: LitVarStr var_9C, "CancApre"
  loc_A2F46B: PopAdLdVar
  loc_A2F46C: FLdRfVar var_8C
  loc_A2F46F: FLdPr Me
  loc_A2F472: MemLdPr RsFrm
  loc_A2F475:  = Me.Fields
  loc_A2F47A: FLdPr var_8C
  loc_A2F47D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F482: FLdPr var_A0
  loc_A2F485:  = Me.Value
  loc_A2F48A: FLdRfVar var_B0
  loc_A2F48D: CUI1Var
  loc_A2F48F: FStUI1 var_86
  loc_A2F493: FFreeAd var_8C = ""
  loc_A2F49A: FFree1Var var_B0 = ""
  loc_A2F49D: ExitProcCbHresult
End Sub

Public Property Get CodiUsua() 'A34D38
  'Data Table: 49FFEC
  loc_A34CF4: ZeroRetVal
  loc_A34CF6: FLdRfVar var_B0
  loc_A34CF9: FLdRfVar var_A0
  loc_A34CFC: LitVarStr var_9C, "CodiUsua"
  loc_A34D01: PopAdLdVar
  loc_A34D02: FLdRfVar var_8C
  loc_A34D05: FLdPr Me
  loc_A34D08: MemLdPr RsFrm
  loc_A34D0B:  = Me.Fields
  loc_A34D10: FLdPr var_8C
  loc_A34D13: from_stack_2 = Me.Item(from_stack_1)
  loc_A34D18: FLdPr var_A0
  loc_A34D1B:  = Me.Value
  loc_A34D20: FLdRfVar var_B0
  loc_A34D23: CStrVarTmp
  loc_A34D24: FStStr var_88
  loc_A34D27: FFreeAd var_8C = ""
  loc_A34D2E: FFree1Var var_B0 = ""
  loc_A34D31: ExitProcCbHresult
End Sub

Public Property Let CodiUsua(vDato) '9E9248
  'Data Table: 49FFEC
  loc_9E9228: ILdRf vDato
  loc_9E922B: FStStrCopy var_88
  loc_9E922E: ILdRf var_88
  loc_9E9231: CVarStr var_A8
  loc_9E9234: PopAdLdVar
  loc_9E9235: LitVarStr var_98, "CodiUsua"
  loc_9E923A: PopAdLdVar
  loc_9E923B: FLdPr Me
  loc_9E923E: MemLdPr RsFrm
  loc_9E9241: Me.Collect = from_stack_1
  loc_9E9246: ExitProcHresult
End Sub

Public Property Get DetaReca() 'A36A9C
  'Data Table: 49FFEC
  loc_A36A58: ZeroRetVal
  loc_A36A5A: FLdRfVar var_B0
  loc_A36A5D: FLdRfVar var_A0
  loc_A36A60: LitVarStr var_9C, "DetaReca"
  loc_A36A65: PopAdLdVar
  loc_A36A66: FLdRfVar var_8C
  loc_A36A69: FLdPr Me
  loc_A36A6C: MemLdPr RsFrm
  loc_A36A6F:  = Me.Fields
  loc_A36A74: FLdPr var_8C
  loc_A36A77: from_stack_2 = Me.Item(from_stack_1)
  loc_A36A7C: FLdPr var_A0
  loc_A36A7F:  = Me.Value
  loc_A36A84: FLdRfVar var_B0
  loc_A36A87: CStrVarTmp
  loc_A36A88: FStStr var_88
  loc_A36A8B: FFreeAd var_8C = ""
  loc_A36A92: FFree1Var var_B0 = ""
  loc_A36A95: ExitProcCbHresult
End Sub

Public Property Get MatrReca() 'A2F124
  'Data Table: 49FFEC
  loc_A2F0E0: FLdRfVar var_B0
  loc_A2F0E3: FLdRfVar var_A0
  loc_A2F0E6: LitVarStr var_9C, "MatrReca"
  loc_A2F0EB: PopAdLdVar
  loc_A2F0EC: FLdRfVar var_8C
  loc_A2F0EF: FLdPr Me
  loc_A2F0F2: MemLdPr RsFrm
  loc_A2F0F5:  = Me.Fields
  loc_A2F0FA: FLdPr var_8C
  loc_A2F0FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F102: FLdPr var_A0
  loc_A2F105:  = Me.Value
  loc_A2F10A: FLdRfVar var_B0
  loc_A2F10D: CI4Var
  loc_A2F10F: FStR4 var_88
  loc_A2F112: FFreeAd var_8C = ""
  loc_A2F119: FFree1Var var_B0 = ""
  loc_A2F11C: ExitProcCbHresult
End Sub

Public Property Get DetaOfju() 'A1BA48
  'Data Table: 49FFEC
  loc_A1BA10: ZeroRetValVar
  loc_A1BA12: FLdRfVar var_AC
  loc_A1BA15: LitVarStr var_A8, "DetaOfju"
  loc_A1BA1A: PopAdLdVar
  loc_A1BA1B: FLdRfVar var_98
  loc_A1BA1E: FLdPr Me
  loc_A1BA21: MemLdPr RsFrm
  loc_A1BA24:  = Me.Fields
  loc_A1BA29: FLdPr var_98
  loc_A1BA2C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1BA31: FLdZeroAd var_AC
  loc_A1BA34: CVarAd
  loc_A1BA38: FStVar DetaOfju
  loc_A1BA3C: FFree1Ad var_98
  loc_A1BA3F: ExitProcCbHresult
End Sub

Public Property Get NomeInmu() 'A1F990
  'Data Table: 49FFEC
  loc_A1F958: ZeroRetValVar
  loc_A1F95A: FLdRfVar var_AC
  loc_A1F95D: LitVarStr var_A8, "NomeInmu"
  loc_A1F962: PopAdLdVar
  loc_A1F963: FLdRfVar var_98
  loc_A1F966: FLdPr Me
  loc_A1F969: MemLdPr RsFrm
  loc_A1F96C:  = Me.Fields
  loc_A1F971: FLdPr var_98
  loc_A1F974: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F979: FLdZeroAd var_AC
  loc_A1F97C: CVarAd
  loc_A1F980: FStVar NomeInmu
  loc_A1F984: FFree1Ad var_98
  loc_A1F987: ExitProcCbHresult
End Sub

Public Property Get DetaPers() 'A1F120
  'Data Table: 49FFEC
  loc_A1F0E8: ZeroRetValVar
  loc_A1F0EA: FLdRfVar var_AC
  loc_A1F0ED: LitVarStr var_A8, "DetaPers"
  loc_A1F0F2: PopAdLdVar
  loc_A1F0F3: FLdRfVar var_98
  loc_A1F0F6: FLdPr Me
  loc_A1F0F9: MemLdPr RsFrm
  loc_A1F0FC:  = Me.Fields
  loc_A1F101: FLdPr var_98
  loc_A1F104: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F109: FLdZeroAd var_AC
  loc_A1F10C: CVarAd
  loc_A1F110: FStVar DetaPers
  loc_A1F114: FFree1Ad var_98
  loc_A1F117: ExitProcCbHresult
End Sub

Public Property Get DepoPers() 'A1E0B8
  'Data Table: 49FFEC
  loc_A1E080: ZeroRetValVar
  loc_A1E082: FLdRfVar var_AC
  loc_A1E085: LitVarStr var_A8, "DepoPers"
  loc_A1E08A: PopAdLdVar
  loc_A1E08B: FLdRfVar var_98
  loc_A1E08E: FLdPr Me
  loc_A1E091: MemLdPr RsFrm
  loc_A1E094:  = Me.Fields
  loc_A1E099: FLdPr var_98
  loc_A1E09C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1E0A1: FLdZeroAd var_AC
  loc_A1E0A4: CVarAd
  loc_A1E0A8: FStVar DepoPers
  loc_A1E0AC: FFree1Ad var_98
  loc_A1E0AF: ExitProcCbHresult
End Sub

Public Property Get DetaCall() 'A1D578
  'Data Table: 49FFEC
  loc_A1D540: ZeroRetValVar
  loc_A1D542: FLdRfVar var_AC
  loc_A1D545: LitVarStr var_A8, "DetaCall"
  loc_A1D54A: PopAdLdVar
  loc_A1D54B: FLdRfVar var_98
  loc_A1D54E: FLdPr Me
  loc_A1D551: MemLdPr RsFrm
  loc_A1D554:  = Me.Fields
  loc_A1D559: FLdPr var_98
  loc_A1D55C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1D561: FLdZeroAd var_AC
  loc_A1D564: CVarAd
  loc_A1D568: FStVar DetaCall
  loc_A1D56C: FFree1Ad var_98
  loc_A1D56F: ExitProcCbHresult
End Sub

Public Property Get DetaBarr() 'A19720
  'Data Table: 49FFEC
  loc_A196E8: ZeroRetValVar
  loc_A196EA: FLdRfVar var_AC
  loc_A196ED: LitVarStr var_A8, "DetaBarr"
  loc_A196F2: PopAdLdVar
  loc_A196F3: FLdRfVar var_98
  loc_A196F6: FLdPr Me
  loc_A196F9: MemLdPr RsFrm
  loc_A196FC:  = Me.Fields
  loc_A19701: FLdPr var_98
  loc_A19704: from_stack_2 = Me.Item(from_stack_1)
  loc_A19709: FLdZeroAd var_AC
  loc_A1970C: CVarAd
  loc_A19710: FStVar DetaBarr
  loc_A19714: FFree1Ad var_98
  loc_A19717: ExitProcCbHresult
End Sub

Public Property Get NucaInmu() 'A36910
  'Data Table: 49FFEC
  loc_A368CC: ZeroRetVal
  loc_A368CE: FLdRfVar var_B0
  loc_A368D1: FLdRfVar var_A0
  loc_A368D4: LitVarStr var_9C, "NucaInmu"
  loc_A368D9: PopAdLdVar
  loc_A368DA: FLdRfVar var_8C
  loc_A368DD: FLdPr Me
  loc_A368E0: MemLdPr RsFrm
  loc_A368E3:  = Me.Fields
  loc_A368E8: FLdPr var_8C
  loc_A368EB: from_stack_2 = Me.Item(from_stack_1)
  loc_A368F0: FLdPr var_A0
  loc_A368F3:  = Me.Value
  loc_A368F8: FLdRfVar var_B0
  loc_A368FB: CStrVarTmp
  loc_A368FC: FStStr var_88
  loc_A368FF: FFreeAd var_8C = ""
  loc_A36906: FFree1Var var_B0 = ""
  loc_A36909: ExitProcCbHresult
End Sub

Public Property Get UbicInmu() 'A3A24C
  'Data Table: 49FFEC
  loc_A3A208: ZeroRetVal
  loc_A3A20A: FLdRfVar var_B0
  loc_A3A20D: FLdRfVar var_A0
  loc_A3A210: LitVarStr var_9C, "UbicInmu"
  loc_A3A215: PopAdLdVar
  loc_A3A216: FLdRfVar var_8C
  loc_A3A219: FLdPr Me
  loc_A3A21C: MemLdPr RsFrm
  loc_A3A21F:  = Me.Fields
  loc_A3A224: FLdPr var_8C
  loc_A3A227: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A22C: FLdPr var_A0
  loc_A3A22F:  = Me.Value
  loc_A3A234: FLdRfVar var_B0
  loc_A3A237: CStrVarTmp
  loc_A3A238: FStStr var_88
  loc_A3A23B: FFreeAd var_8C = ""
  loc_A3A242: FFree1Var var_B0 = ""
  loc_A3A245: ExitProcCbHresult
End Sub

Public Property Get MansInmu() 'A36DB4
  'Data Table: 49FFEC
  loc_A36D70: ZeroRetVal
  loc_A36D72: FLdRfVar var_B0
  loc_A36D75: FLdRfVar var_A0
  loc_A36D78: LitVarStr var_9C, "MansInmu"
  loc_A36D7D: PopAdLdVar
  loc_A36D7E: FLdRfVar var_8C
  loc_A36D81: FLdPr Me
  loc_A36D84: MemLdPr RsFrm
  loc_A36D87:  = Me.Fields
  loc_A36D8C: FLdPr var_8C
  loc_A36D8F: from_stack_2 = Me.Item(from_stack_1)
  loc_A36D94: FLdPr var_A0
  loc_A36D97:  = Me.Value
  loc_A36D9C: FLdRfVar var_B0
  loc_A36D9F: CStrVarTmp
  loc_A36DA0: FStStr var_88
  loc_A36DA3: FFreeAd var_8C = ""
  loc_A36DAA: FFree1Var var_B0 = ""
  loc_A36DAD: ExitProcCbHresult
End Sub

Public Property Get CasaInmu() 'A36B20
  'Data Table: 49FFEC
  loc_A36ADC: ZeroRetVal
  loc_A36ADE: FLdRfVar var_B0
  loc_A36AE1: FLdRfVar var_A0
  loc_A36AE4: LitVarStr var_9C, "CasaInmu"
  loc_A36AE9: PopAdLdVar
  loc_A36AEA: FLdRfVar var_8C
  loc_A36AED: FLdPr Me
  loc_A36AF0: MemLdPr RsFrm
  loc_A36AF3:  = Me.Fields
  loc_A36AF8: FLdPr var_8C
  loc_A36AFB: from_stack_2 = Me.Item(from_stack_1)
  loc_A36B00: FLdPr var_A0
  loc_A36B03:  = Me.Value
  loc_A36B08: FLdRfVar var_B0
  loc_A36B0B: CStrVarTmp
  loc_A36B0C: FStStr var_88
  loc_A36B0F: FFreeAd var_8C = ""
  loc_A36B16: FFree1Var var_B0 = ""
  loc_A36B19: ExitProcCbHresult
End Sub

Public Property Get DetaLoca() 'A159B8
  'Data Table: 49FFEC
  loc_A15980: ZeroRetValVar
  loc_A15982: FLdRfVar var_AC
  loc_A15985: LitVarStr var_A8, "DetaLoca"
  loc_A1598A: PopAdLdVar
  loc_A1598B: FLdRfVar var_98
  loc_A1598E: FLdPr Me
  loc_A15991: MemLdPr RsFrm
  loc_A15994:  = Me.Fields
  loc_A15999: FLdPr var_98
  loc_A1599C: from_stack_2 = Me.Item(from_stack_1)
  loc_A159A1: FLdZeroAd var_AC
  loc_A159A4: CVarAd
  loc_A159A8: FStVar DetaLoca
  loc_A159AC: FFree1Ad var_98
  loc_A159AF: ExitProcCbHresult
End Sub

Public Property Get CodiPost() 'A157D8
  'Data Table: 49FFEC
  loc_A157A0: ZeroRetValVar
  loc_A157A2: FLdRfVar var_AC
  loc_A157A5: LitVarStr var_A8, "CodiPost"
  loc_A157AA: PopAdLdVar
  loc_A157AB: FLdRfVar var_98
  loc_A157AE: FLdPr Me
  loc_A157B1: MemLdPr RsFrm
  loc_A157B4:  = Me.Fields
  loc_A157B9: FLdPr var_98
  loc_A157BC: from_stack_2 = Me.Item(from_stack_1)
  loc_A157C1: FLdZeroAd var_AC
  loc_A157C4: CVarAd
  loc_A157C8: FStVar CodiPost
  loc_A157CC: FFree1Ad var_98
  loc_A157CF: ExitProcCbHresult
End Sub

Public Property Get NucaCome() 'A151C0
  'Data Table: 49FFEC
  loc_A15188: ZeroRetValVar
  loc_A1518A: FLdRfVar var_AC
  loc_A1518D: LitVarStr var_A8, "NucaCome"
  loc_A15192: PopAdLdVar
  loc_A15193: FLdRfVar var_98
  loc_A15196: FLdPr Me
  loc_A15199: MemLdPr RsFrm
  loc_A1519C:  = Me.Fields
  loc_A151A1: FLdPr var_98
  loc_A151A4: from_stack_2 = Me.Item(from_stack_1)
  loc_A151A9: FLdZeroAd var_AC
  loc_A151AC: CVarAd
  loc_A151B0: FStVar NucaCome
  loc_A151B4: FFree1Ad var_98
  loc_A151B7: ExitProcCbHresult
End Sub

Public Property Get UbicCome() 'A16A98
  'Data Table: 49FFEC
  loc_A16A60: ZeroRetValVar
  loc_A16A62: FLdRfVar var_AC
  loc_A16A65: LitVarStr var_A8, "UbicCome"
  loc_A16A6A: PopAdLdVar
  loc_A16A6B: FLdRfVar var_98
  loc_A16A6E: FLdPr Me
  loc_A16A71: MemLdPr RsFrm
  loc_A16A74:  = Me.Fields
  loc_A16A79: FLdPr var_98
  loc_A16A7C: from_stack_2 = Me.Item(from_stack_1)
  loc_A16A81: FLdZeroAd var_AC
  loc_A16A84: CVarAd
  loc_A16A88: FStVar UbicCome
  loc_A16A8C: FFree1Ad var_98
  loc_A16A8F: ExitProcCbHresult
End Sub

Public Property Get MansCome() 'A16CF0
  'Data Table: 49FFEC
  loc_A16CB8: ZeroRetValVar
  loc_A16CBA: FLdRfVar var_AC
  loc_A16CBD: LitVarStr var_A8, "MansCome"
  loc_A16CC2: PopAdLdVar
  loc_A16CC3: FLdRfVar var_98
  loc_A16CC6: FLdPr Me
  loc_A16CC9: MemLdPr RsFrm
  loc_A16CCC:  = Me.Fields
  loc_A16CD1: FLdPr var_98
  loc_A16CD4: from_stack_2 = Me.Item(from_stack_1)
  loc_A16CD9: FLdZeroAd var_AC
  loc_A16CDC: CVarAd
  loc_A16CE0: FStVar MansCome
  loc_A16CE4: FFree1Ad var_98
  loc_A16CE7: ExitProcCbHresult
End Sub

Public Property Get CasaCome() 'A14770
  'Data Table: 49FFEC
  loc_A14738: ZeroRetValVar
  loc_A1473A: FLdRfVar var_AC
  loc_A1473D: LitVarStr var_A8, "CasaCome"
  loc_A14742: PopAdLdVar
  loc_A14743: FLdRfVar var_98
  loc_A14746: FLdPr Me
  loc_A14749: MemLdPr RsFrm
  loc_A1474C:  = Me.Fields
  loc_A14751: FLdPr var_98
  loc_A14754: from_stack_2 = Me.Item(from_stack_1)
  loc_A14759: FLdZeroAd var_AC
  loc_A1475C: CVarAd
  loc_A14760: FStVar CasaCome
  loc_A14764: FFree1Ad var_98
  loc_A14767: ExitProcCbHresult
End Sub

Public Property Get DecrPers() 'A37990
  'Data Table: 49FFEC
  loc_A3794C: ZeroRetVal
  loc_A3794E: FLdRfVar var_B0
  loc_A37951: FLdRfVar var_A0
  loc_A37954: LitVarStr var_9C, "DecrPers"
  loc_A37959: PopAdLdVar
  loc_A3795A: FLdRfVar var_8C
  loc_A3795D: FLdPr Me
  loc_A37960: MemLdPr RsFrm
  loc_A37963:  = Me.Fields
  loc_A37968: FLdPr var_8C
  loc_A3796B: from_stack_2 = Me.Item(from_stack_1)
  loc_A37970: FLdPr var_A0
  loc_A37973:  = Me.Value
  loc_A37978: FLdRfVar var_B0
  loc_A3797B: CStrVarTmp
  loc_A3797C: FStStr var_88
  loc_A3797F: FFreeAd var_8C = ""
  loc_A37986: FFree1Var var_B0 = ""
  loc_A37989: ExitProcCbHresult
End Sub

Public Property Get NurePers() 'A37B1C
  'Data Table: 49FFEC
  loc_A37AD8: ZeroRetVal
  loc_A37ADA: FLdRfVar var_B0
  loc_A37ADD: FLdRfVar var_A0
  loc_A37AE0: LitVarStr var_9C, "NurePers"
  loc_A37AE5: PopAdLdVar
  loc_A37AE6: FLdRfVar var_8C
  loc_A37AE9: FLdPr Me
  loc_A37AEC: MemLdPr RsFrm
  loc_A37AEF:  = Me.Fields
  loc_A37AF4: FLdPr var_8C
  loc_A37AF7: from_stack_2 = Me.Item(from_stack_1)
  loc_A37AFC: FLdPr var_A0
  loc_A37AFF:  = Me.Value
  loc_A37B04: FLdRfVar var_B0
  loc_A37B07: CStrVarTmp
  loc_A37B08: FStStr var_88
  loc_A37B0B: FFreeAd var_8C = ""
  loc_A37B12: FFree1Var var_B0 = ""
  loc_A37B15: ExitProcCbHresult
End Sub

Public Property Get DebrPers() 'A37BA0
  'Data Table: 49FFEC
  loc_A37B5C: ZeroRetVal
  loc_A37B5E: FLdRfVar var_B0
  loc_A37B61: FLdRfVar var_A0
  loc_A37B64: LitVarStr var_9C, "DebrPers"
  loc_A37B69: PopAdLdVar
  loc_A37B6A: FLdRfVar var_8C
  loc_A37B6D: FLdPr Me
  loc_A37B70: MemLdPr RsFrm
  loc_A37B73:  = Me.Fields
  loc_A37B78: FLdPr var_8C
  loc_A37B7B: from_stack_2 = Me.Item(from_stack_1)
  loc_A37B80: FLdPr var_A0
  loc_A37B83:  = Me.Value
  loc_A37B88: FLdRfVar var_B0
  loc_A37B8B: CStrVarTmp
  loc_A37B8C: FStStr var_88
  loc_A37B8F: FFreeAd var_8C = ""
  loc_A37B96: FFree1Var var_B0 = ""
  loc_A37B99: ExitProcCbHresult
End Sub

Public Property Get MarePers() 'A37678
  'Data Table: 49FFEC
  loc_A37634: ZeroRetVal
  loc_A37636: FLdRfVar var_B0
  loc_A37639: FLdRfVar var_A0
  loc_A3763C: LitVarStr var_9C, "MarePers"
  loc_A37641: PopAdLdVar
  loc_A37642: FLdRfVar var_8C
  loc_A37645: FLdPr Me
  loc_A37648: MemLdPr RsFrm
  loc_A3764B:  = Me.Fields
  loc_A37650: FLdPr var_8C
  loc_A37653: from_stack_2 = Me.Item(from_stack_1)
  loc_A37658: FLdPr var_A0
  loc_A3765B:  = Me.Value
  loc_A37660: FLdRfVar var_B0
  loc_A37663: CStrVarTmp
  loc_A37664: FStStr var_88
  loc_A37667: FFreeAd var_8C = ""
  loc_A3766E: FFree1Var var_B0 = ""
  loc_A37671: ExitProcCbHresult
End Sub

Public Property Get CarePers() 'A37DB0
  'Data Table: 49FFEC
  loc_A37D6C: ZeroRetVal
  loc_A37D6E: FLdRfVar var_B0
  loc_A37D71: FLdRfVar var_A0
  loc_A37D74: LitVarStr var_9C, "CarePers"
  loc_A37D79: PopAdLdVar
  loc_A37D7A: FLdRfVar var_8C
  loc_A37D7D: FLdPr Me
  loc_A37D80: MemLdPr RsFrm
  loc_A37D83:  = Me.Fields
  loc_A37D88: FLdPr var_8C
  loc_A37D8B: from_stack_2 = Me.Item(from_stack_1)
  loc_A37D90: FLdPr var_A0
  loc_A37D93:  = Me.Value
  loc_A37D98: FLdRfVar var_B0
  loc_A37D9B: CStrVarTmp
  loc_A37D9C: FStStr var_88
  loc_A37D9F: FFreeAd var_8C = ""
  loc_A37DA6: FFree1Var var_B0 = ""
  loc_A37DA9: ExitProcCbHresult
End Sub

Public Property Get UbrePers() 'A37E34
  'Data Table: 49FFEC
  loc_A37DF0: ZeroRetVal
  loc_A37DF2: FLdRfVar var_B0
  loc_A37DF5: FLdRfVar var_A0
  loc_A37DF8: LitVarStr var_9C, "UbrePers"
  loc_A37DFD: PopAdLdVar
  loc_A37DFE: FLdRfVar var_8C
  loc_A37E01: FLdPr Me
  loc_A37E04: MemLdPr RsFrm
  loc_A37E07:  = Me.Fields
  loc_A37E0C: FLdPr var_8C
  loc_A37E0F: from_stack_2 = Me.Item(from_stack_1)
  loc_A37E14: FLdPr var_A0
  loc_A37E17:  = Me.Value
  loc_A37E1C: FLdRfVar var_B0
  loc_A37E1F: CStrVarTmp
  loc_A37E20: FStStr var_88
  loc_A37E23: FFreeAd var_8C = ""
  loc_A37E2A: FFree1Var var_B0 = ""
  loc_A37E2D: ExitProcCbHresult
End Sub

Public Property Get DelrPers() 'A37F3C
  'Data Table: 49FFEC
  loc_A37EF8: ZeroRetVal
  loc_A37EFA: FLdRfVar var_B0
  loc_A37EFD: FLdRfVar var_A0
  loc_A37F00: LitVarStr var_9C, "DelrPers"
  loc_A37F05: PopAdLdVar
  loc_A37F06: FLdRfVar var_8C
  loc_A37F09: FLdPr Me
  loc_A37F0C: MemLdPr RsFrm
  loc_A37F0F:  = Me.Fields
  loc_A37F14: FLdPr var_8C
  loc_A37F17: from_stack_2 = Me.Item(from_stack_1)
  loc_A37F1C: FLdPr var_A0
  loc_A37F1F:  = Me.Value
  loc_A37F24: FLdRfVar var_B0
  loc_A37F27: CStrVarTmp
  loc_A37F28: FStStr var_88
  loc_A37F2B: FFreeAd var_8C = ""
  loc_A37F32: FFree1Var var_B0 = ""
  loc_A37F35: ExitProcCbHresult
End Sub

Public Property Get CoprPers() 'A37EB8
  'Data Table: 49FFEC
  loc_A37E74: ZeroRetVal
  loc_A37E76: FLdRfVar var_B0
  loc_A37E79: FLdRfVar var_A0
  loc_A37E7C: LitVarStr var_9C, "CoprPers"
  loc_A37E81: PopAdLdVar
  loc_A37E82: FLdRfVar var_8C
  loc_A37E85: FLdPr Me
  loc_A37E88: MemLdPr RsFrm
  loc_A37E8B:  = Me.Fields
  loc_A37E90: FLdPr var_8C
  loc_A37E93: from_stack_2 = Me.Item(from_stack_1)
  loc_A37E98: FLdPr var_A0
  loc_A37E9B:  = Me.Value
  loc_A37EA0: FLdRfVar var_B0
  loc_A37EA3: CStrVarTmp
  loc_A37EA4: FStStr var_88
  loc_A37EA7: FFreeAd var_8C = ""
  loc_A37EAE: FFree1Var var_B0 = ""
  loc_A37EB1: ExitProcCbHresult
End Sub

Public Property Get DetaOfic() 'A37FC0
  'Data Table: 49FFEC
  loc_A37F7C: ZeroRetVal
  loc_A37F7E: FLdRfVar var_B0
  loc_A37F81: FLdRfVar var_A0
  loc_A37F84: LitVarStr var_9C, "DetaOfic"
  loc_A37F89: PopAdLdVar
  loc_A37F8A: FLdRfVar var_8C
  loc_A37F8D: FLdPr Me
  loc_A37F90: MemLdPr RsFrm
  loc_A37F93:  = Me.Fields
  loc_A37F98: FLdPr var_8C
  loc_A37F9B: from_stack_2 = Me.Item(from_stack_1)
  loc_A37FA0: FLdPr var_A0
  loc_A37FA3:  = Me.Value
  loc_A37FA8: FLdRfVar var_B0
  loc_A37FAB: CStrVarTmp
  loc_A37FAC: FStStr var_88
  loc_A37FAF: FFreeAd var_8C = ""
  loc_A37FB6: FFree1Var var_B0 = ""
  loc_A37FB9: ExitProcCbHresult
End Sub

Public Property Get CodiFapa() 'A2DA24
  'Data Table: 49FFEC
  loc_A2D9E0: FLdRfVar var_B0
  loc_A2D9E3: FLdRfVar var_A0
  loc_A2D9E6: LitVarStr var_9C, "CodiFapa"
  loc_A2D9EB: PopAdLdVar
  loc_A2D9EC: FLdRfVar var_8C
  loc_A2D9EF: FLdPr Me
  loc_A2D9F2: MemLdPr RsFrm
  loc_A2D9F5:  = Me.Fields
  loc_A2D9FA: FLdPr var_8C
  loc_A2D9FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2DA02: FLdPr var_A0
  loc_A2DA05:  = Me.Value
  loc_A2DA0A: FLdRfVar var_B0
  loc_A2DA0D: CI4Var
  loc_A2DA0F: FStR4 var_88
  loc_A2DA12: FFreeAd var_8C = ""
  loc_A2DA19: FFree1Var var_B0 = ""
  loc_A2DA1C: ExitProcCbHresult
End Sub

Public Property Get FealFapa() 'A36CAC
  'Data Table: 49FFEC
  loc_A36C68: ZeroRetVal
  loc_A36C6A: FLdRfVar var_B0
  loc_A36C6D: FLdRfVar var_A0
  loc_A36C70: LitVarStr var_9C, "FealFapa"
  loc_A36C75: PopAdLdVar
  loc_A36C76: FLdRfVar var_8C
  loc_A36C79: FLdPr Me
  loc_A36C7C: MemLdPr RsFrm
  loc_A36C7F:  = Me.Fields
  loc_A36C84: FLdPr var_8C
  loc_A36C87: from_stack_2 = Me.Item(from_stack_1)
  loc_A36C8C: FLdPr var_A0
  loc_A36C8F:  = Me.Value
  loc_A36C94: FLdRfVar var_B0
  loc_A36C97: CStrVarTmp
  loc_A36C98: FStStr var_88
  loc_A36C9B: FFreeAd var_8C = ""
  loc_A36CA2: FFree1Var var_B0 = ""
  loc_A36CA5: ExitProcCbHresult
End Sub

Public Property Get CacuFapa() 'A2D4A4
  'Data Table: 49FFEC
  loc_A2D460: FLdRfVar var_B0
  loc_A2D463: FLdRfVar var_A0
  loc_A2D466: LitVarStr var_9C, "CacuFapa"
  loc_A2D46B: PopAdLdVar
  loc_A2D46C: FLdRfVar var_8C
  loc_A2D46F: FLdPr Me
  loc_A2D472: MemLdPr RsFrm
  loc_A2D475:  = Me.Fields
  loc_A2D47A: FLdPr var_8C
  loc_A2D47D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D482: FLdPr var_A0
  loc_A2D485:  = Me.Value
  loc_A2D48A: FLdRfVar var_B0
  loc_A2D48D: CI2Var
  loc_A2D48E: FStI2 var_86
  loc_A2D491: FFreeAd var_8C = ""
  loc_A2D498: FFree1Var var_B0 = ""
  loc_A2D49B: ExitProcCbHresult
End Sub

Public Property Get FepaDefa() 'A36BA4
  'Data Table: 49FFEC
  loc_A36B60: ZeroRetVal
  loc_A36B62: FLdRfVar var_B0
  loc_A36B65: FLdRfVar var_A0
  loc_A36B68: LitVarStr var_9C, "FepaDefa"
  loc_A36B6D: PopAdLdVar
  loc_A36B6E: FLdRfVar var_8C
  loc_A36B71: FLdPr Me
  loc_A36B74: MemLdPr RsFrm
  loc_A36B77:  = Me.Fields
  loc_A36B7C: FLdPr var_8C
  loc_A36B7F: from_stack_2 = Me.Item(from_stack_1)
  loc_A36B84: FLdPr var_A0
  loc_A36B87:  = Me.Value
  loc_A36B8C: FLdRfVar var_B0
  loc_A36B8F: CStrVarTmp
  loc_A36B90: FStStr var_88
  loc_A36B93: FFreeAd var_8C = ""
  loc_A36B9A: FFree1Var var_B0 = ""
  loc_A36B9D: ExitProcCbHresult
End Sub

Public Property Get FeveDefa() 'A3877C
  'Data Table: 49FFEC
  loc_A38738: ZeroRetVal
  loc_A3873A: FLdRfVar var_B0
  loc_A3873D: FLdRfVar var_A0
  loc_A38740: LitVarStr var_9C, "FeveDefa"
  loc_A38745: PopAdLdVar
  loc_A38746: FLdRfVar var_8C
  loc_A38749: FLdPr Me
  loc_A3874C: MemLdPr RsFrm
  loc_A3874F:  = Me.Fields
  loc_A38754: FLdPr var_8C
  loc_A38757: from_stack_2 = Me.Item(from_stack_1)
  loc_A3875C: FLdPr var_A0
  loc_A3875F:  = Me.Value
  loc_A38764: FLdRfVar var_B0
  loc_A38767: CStrVarTmp
  loc_A38768: FStStr var_88
  loc_A3876B: FFreeAd var_8C = ""
  loc_A38772: FFree1Var var_B0 = ""
  loc_A38775: ExitProcCbHresult
End Sub

Public Property Get NotiApre() 'A2D2A4
  'Data Table: 49FFEC
  loc_A2D260: FLdRfVar var_B0
  loc_A2D263: FLdRfVar var_A0
  loc_A2D266: LitVarStr var_9C, "NotiApre"
  loc_A2D26B: PopAdLdVar
  loc_A2D26C: FLdRfVar var_8C
  loc_A2D26F: FLdPr Me
  loc_A2D272: MemLdPr RsFrm
  loc_A2D275:  = Me.Fields
  loc_A2D27A: FLdPr var_8C
  loc_A2D27D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D282: FLdPr var_A0
  loc_A2D285:  = Me.Value
  loc_A2D28A: FLdRfVar var_B0
  loc_A2D28D: CBoolVar
  loc_A2D28F: FStI2 var_86
  loc_A2D292: FFreeAd var_8C = ""
  loc_A2D299: FFree1Var var_B0 = ""
  loc_A2D29C: ExitProcCbHresult
End Sub

Public Property Get Periodo() 'A2D224
  'Data Table: 49FFEC
  loc_A2D1E0: FLdRfVar var_B0
  loc_A2D1E3: FLdRfVar var_A0
  loc_A2D1E6: LitVarStr var_9C, "Periodo"
  loc_A2D1EB: PopAdLdVar
  loc_A2D1EC: FLdRfVar var_8C
  loc_A2D1EF: FLdPr Me
  loc_A2D1F2: MemLdPr RsFrm
  loc_A2D1F5:  = Me.Fields
  loc_A2D1FA: FLdPr var_8C
  loc_A2D1FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D202: FLdPr var_A0
  loc_A2D205:  = Me.Value
  loc_A2D20A: FLdRfVar var_B0
  loc_A2D20D: CI2Var
  loc_A2D20E: FStI2 var_86
  loc_A2D211: FFreeAd var_8C = ""
  loc_A2D218: FFree1Var var_B0 = ""
  loc_A2D21B: ExitProcCbHresult
End Sub

Public Property Get Normal() 'A185C8
  'Data Table: 49FFEC
  loc_A18590: ZeroRetValVar
  loc_A18592: FLdRfVar var_AC
  loc_A18595: LitVarStr var_A8, "Normal"
  loc_A1859A: PopAdLdVar
  loc_A1859B: FLdRfVar var_98
  loc_A1859E: FLdPr Me
  loc_A185A1: MemLdPr RsFrm
  loc_A185A4:  = Me.Fields
  loc_A185A9: FLdPr var_98
  loc_A185AC: from_stack_2 = Me.Item(from_stack_1)
  loc_A185B1: FLdZeroAd var_AC
  loc_A185B4: CVarAd
  loc_A185B8: FStVar Normal
  loc_A185BC: FFree1Ad var_98
  loc_A185BF: ExitProcCbHresult
End Sub

Public Property Get Moroso() 'A18460
  'Data Table: 49FFEC
  loc_A18428: ZeroRetValVar
  loc_A1842A: FLdRfVar var_AC
  loc_A1842D: LitVarStr var_A8, "Moroso"
  loc_A18432: PopAdLdVar
  loc_A18433: FLdRfVar var_98
  loc_A18436: FLdPr Me
  loc_A18439: MemLdPr RsFrm
  loc_A1843C:  = Me.Fields
  loc_A18441: FLdPr var_98
  loc_A18444: from_stack_2 = Me.Item(from_stack_1)
  loc_A18449: FLdZeroAd var_AC
  loc_A1844C: CVarAd
  loc_A18450: FStVar Moroso
  loc_A18454: FFree1Ad var_98
  loc_A18457: ExitProcCbHresult
End Sub

Public Property Get Apre() 'A182F8
  'Data Table: 49FFEC
  loc_A182C0: ZeroRetValVar
  loc_A182C2: FLdRfVar var_AC
  loc_A182C5: LitVarStr var_A8, "Apre"
  loc_A182CA: PopAdLdVar
  loc_A182CB: FLdRfVar var_98
  loc_A182CE: FLdPr Me
  loc_A182D1: MemLdPr RsFrm
  loc_A182D4:  = Me.Fields
  loc_A182D9: FLdPr var_98
  loc_A182DC: from_stack_2 = Me.Item(from_stack_1)
  loc_A182E1: FLdZeroAd var_AC
  loc_A182E4: CVarAd
  loc_A182E8: FStVar Apre
  loc_A182EC: FFree1Ad var_98
  loc_A182EF: ExitProcCbHresult
End Sub

Public Property Get Judi() 'A18028
  'Data Table: 49FFEC
  loc_A17FF0: ZeroRetValVar
  loc_A17FF2: FLdRfVar var_AC
  loc_A17FF5: LitVarStr var_A8, "Judi"
  loc_A17FFA: PopAdLdVar
  loc_A17FFB: FLdRfVar var_98
  loc_A17FFE: FLdPr Me
  loc_A18001: MemLdPr RsFrm
  loc_A18004:  = Me.Fields
  loc_A18009: FLdPr var_98
  loc_A1800C: from_stack_2 = Me.Item(from_stack_1)
  loc_A18011: FLdZeroAd var_AC
  loc_A18014: CVarAd
  loc_A18018: FStVar Judi
  loc_A1801C: FFree1Ad var_98
  loc_A1801F: ExitProcCbHresult
End Sub

Public Property Get Total() 'A17F38
  'Data Table: 49FFEC
  loc_A17F00: ZeroRetValVar
  loc_A17F02: FLdRfVar var_AC
  loc_A17F05: LitVarStr var_A8, "Total"
  loc_A17F0A: PopAdLdVar
  loc_A17F0B: FLdRfVar var_98
  loc_A17F0E: FLdPr Me
  loc_A17F11: MemLdPr RsFrm
  loc_A17F14:  = Me.Fields
  loc_A17F19: FLdPr var_98
  loc_A17F1C: from_stack_2 = Me.Item(from_stack_1)
  loc_A17F21: FLdZeroAd var_AC
  loc_A17F24: CVarAd
  loc_A17F28: FStVar Total
  loc_A17F2C: FFree1Ad var_98
  loc_A17F2F: ExitProcCbHresult
End Sub

Public Property Get DetaInju() 'A17EC0
  'Data Table: 49FFEC
  loc_A17E88: ZeroRetValVar
  loc_A17E8A: FLdRfVar var_AC
  loc_A17E8D: LitVarStr var_A8, "DetaInju"
  loc_A17E92: PopAdLdVar
  loc_A17E93: FLdRfVar var_98
  loc_A17E96: FLdPr Me
  loc_A17E99: MemLdPr RsFrm
  loc_A17E9C:  = Me.Fields
  loc_A17EA1: FLdPr var_98
  loc_A17EA4: from_stack_2 = Me.Item(from_stack_1)
  loc_A17EA9: FLdZeroAd var_AC
  loc_A17EAC: CVarAd
  loc_A17EB0: FStVar DetaInju
  loc_A17EB4: FFree1Ad var_98
  loc_A17EB7: ExitProcCbHresult
End Sub

Public Property Get FechInap() 'A17E48
  'Data Table: 49FFEC
  loc_A17E10: ZeroRetValVar
  loc_A17E12: FLdRfVar var_AC
  loc_A17E15: LitVarStr var_A8, "FechInap"
  loc_A17E1A: PopAdLdVar
  loc_A17E1B: FLdRfVar var_98
  loc_A17E1E: FLdPr Me
  loc_A17E21: MemLdPr RsFrm
  loc_A17E24:  = Me.Fields
  loc_A17E29: FLdPr var_98
  loc_A17E2C: from_stack_2 = Me.Item(from_stack_1)
  loc_A17E31: FLdZeroAd var_AC
  loc_A17E34: CVarAd
  loc_A17E38: FStVar FechInap
  loc_A17E3C: FFree1Ad var_98
  loc_A17E3F: ExitProcCbHresult
End Sub

Public Property Get MoofInap() 'A17B78
  'Data Table: 49FFEC
  loc_A17B40: ZeroRetValVar
  loc_A17B42: FLdRfVar var_AC
  loc_A17B45: LitVarStr var_A8, "MoofInap"
  loc_A17B4A: PopAdLdVar
  loc_A17B4B: FLdRfVar var_98
  loc_A17B4E: FLdPr Me
  loc_A17B51: MemLdPr RsFrm
  loc_A17B54:  = Me.Fields
  loc_A17B59: FLdPr var_98
  loc_A17B5C: from_stack_2 = Me.Item(from_stack_1)
  loc_A17B61: FLdZeroAd var_AC
  loc_A17B64: CVarAd
  loc_A17B68: FStVar MoofInap
  loc_A17B6C: FFree1Ad var_98
  loc_A17B6F: ExitProcCbHresult
End Sub

Public Property Get DecaPost() 'A384E8
  'Data Table: 49FFEC
  loc_A384A4: ZeroRetVal
  loc_A384A6: FLdRfVar var_B0
  loc_A384A9: FLdRfVar var_A0
  loc_A384AC: LitVarStr var_9C, "DecaPost"
  loc_A384B1: PopAdLdVar
  loc_A384B2: FLdRfVar var_8C
  loc_A384B5: FLdPr Me
  loc_A384B8: MemLdPr RsFrm
  loc_A384BB:  = Me.Fields
  loc_A384C0: FLdPr var_8C
  loc_A384C3: from_stack_2 = Me.Item(from_stack_1)
  loc_A384C8: FLdPr var_A0
  loc_A384CB:  = Me.Value
  loc_A384D0: FLdRfVar var_B0
  loc_A384D3: CStrVarTmp
  loc_A384D4: FStStr var_88
  loc_A384D7: FFreeAd var_8C = ""
  loc_A384DE: FFree1Var var_B0 = ""
  loc_A384E1: ExitProcCbHresult
End Sub

Public Property Get NumePost() 'A38674
  'Data Table: 49FFEC
  loc_A38630: ZeroRetVal
  loc_A38632: FLdRfVar var_B0
  loc_A38635: FLdRfVar var_A0
  loc_A38638: LitVarStr var_9C, "NumePost"
  loc_A3863D: PopAdLdVar
  loc_A3863E: FLdRfVar var_8C
  loc_A38641: FLdPr Me
  loc_A38644: MemLdPr RsFrm
  loc_A38647:  = Me.Fields
  loc_A3864C: FLdPr var_8C
  loc_A3864F: from_stack_2 = Me.Item(from_stack_1)
  loc_A38654: FLdPr var_A0
  loc_A38657:  = Me.Value
  loc_A3865C: FLdRfVar var_B0
  loc_A3865F: CStrVarTmp
  loc_A38660: FStStr var_88
  loc_A38663: FFreeAd var_8C = ""
  loc_A3866A: FFree1Var var_B0 = ""
  loc_A3866D: ExitProcCbHresult
End Sub

Public Property Get DebaPost() 'A38908
  'Data Table: 49FFEC
  loc_A388C4: ZeroRetVal
  loc_A388C6: FLdRfVar var_B0
  loc_A388C9: FLdRfVar var_A0
  loc_A388CC: LitVarStr var_9C, "DebaPost"
  loc_A388D1: PopAdLdVar
  loc_A388D2: FLdRfVar var_8C
  loc_A388D5: FLdPr Me
  loc_A388D8: MemLdPr RsFrm
  loc_A388DB:  = Me.Fields
  loc_A388E0: FLdPr var_8C
  loc_A388E3: from_stack_2 = Me.Item(from_stack_1)
  loc_A388E8: FLdPr var_A0
  loc_A388EB:  = Me.Value
  loc_A388F0: FLdRfVar var_B0
  loc_A388F3: CStrVarTmp
  loc_A388F4: FStStr var_88
  loc_A388F7: FFreeAd var_8C = ""
  loc_A388FE: FFree1Var var_B0 = ""
  loc_A38901: ExitProcCbHresult
End Sub

Public Property Get ManzPost() 'A3898C
  'Data Table: 49FFEC
  loc_A38948: ZeroRetVal
  loc_A3894A: FLdRfVar var_B0
  loc_A3894D: FLdRfVar var_A0
  loc_A38950: LitVarStr var_9C, "ManzPost"
  loc_A38955: PopAdLdVar
  loc_A38956: FLdRfVar var_8C
  loc_A38959: FLdPr Me
  loc_A3895C: MemLdPr RsFrm
  loc_A3895F:  = Me.Fields
  loc_A38964: FLdPr var_8C
  loc_A38967: from_stack_2 = Me.Item(from_stack_1)
  loc_A3896C: FLdPr var_A0
  loc_A3896F:  = Me.Value
  loc_A38974: FLdRfVar var_B0
  loc_A38977: CStrVarTmp
  loc_A38978: FStStr var_88
  loc_A3897B: FFreeAd var_8C = ""
  loc_A38982: FFree1Var var_B0 = ""
  loc_A38985: ExitProcCbHresult
End Sub

Public Property Get CasaPost() 'A38A10
  'Data Table: 49FFEC
  loc_A389CC: ZeroRetVal
  loc_A389CE: FLdRfVar var_B0
  loc_A389D1: FLdRfVar var_A0
  loc_A389D4: LitVarStr var_9C, "CasaPost"
  loc_A389D9: PopAdLdVar
  loc_A389DA: FLdRfVar var_8C
  loc_A389DD: FLdPr Me
  loc_A389E0: MemLdPr RsFrm
  loc_A389E3:  = Me.Fields
  loc_A389E8: FLdPr var_8C
  loc_A389EB: from_stack_2 = Me.Item(from_stack_1)
  loc_A389F0: FLdPr var_A0
  loc_A389F3:  = Me.Value
  loc_A389F8: FLdRfVar var_B0
  loc_A389FB: CStrVarTmp
  loc_A389FC: FStStr var_88
  loc_A389FF: FFreeAd var_8C = ""
  loc_A38A06: FFree1Var var_B0 = ""
  loc_A38A09: ExitProcCbHresult
End Sub

Public Property Get UbicPost() 'A38A94
  'Data Table: 49FFEC
  loc_A38A50: ZeroRetVal
  loc_A38A52: FLdRfVar var_B0
  loc_A38A55: FLdRfVar var_A0
  loc_A38A58: LitVarStr var_9C, "UbicPost"
  loc_A38A5D: PopAdLdVar
  loc_A38A5E: FLdRfVar var_8C
  loc_A38A61: FLdPr Me
  loc_A38A64: MemLdPr RsFrm
  loc_A38A67:  = Me.Fields
  loc_A38A6C: FLdPr var_8C
  loc_A38A6F: from_stack_2 = Me.Item(from_stack_1)
  loc_A38A74: FLdPr var_A0
  loc_A38A77:  = Me.Value
  loc_A38A7C: FLdRfVar var_B0
  loc_A38A7F: CStrVarTmp
  loc_A38A80: FStStr var_88
  loc_A38A83: FFreeAd var_8C = ""
  loc_A38A8A: FFree1Var var_B0 = ""
  loc_A38A8D: ExitProcCbHresult
End Sub

Public Property Get DeloPost() 'A38B9C
  'Data Table: 49FFEC
  loc_A38B58: ZeroRetVal
  loc_A38B5A: FLdRfVar var_B0
  loc_A38B5D: FLdRfVar var_A0
  loc_A38B60: LitVarStr var_9C, "DeloPost"
  loc_A38B65: PopAdLdVar
  loc_A38B66: FLdRfVar var_8C
  loc_A38B69: FLdPr Me
  loc_A38B6C: MemLdPr RsFrm
  loc_A38B6F:  = Me.Fields
  loc_A38B74: FLdPr var_8C
  loc_A38B77: from_stack_2 = Me.Item(from_stack_1)
  loc_A38B7C: FLdPr var_A0
  loc_A38B7F:  = Me.Value
  loc_A38B84: FLdRfVar var_B0
  loc_A38B87: CStrVarTmp
  loc_A38B88: FStStr var_88
  loc_A38B8B: FFreeAd var_8C = ""
  loc_A38B92: FFree1Var var_B0 = ""
  loc_A38B95: ExitProcCbHresult
End Sub

Public Property Get CopoPost() 'A38B18
  'Data Table: 49FFEC
  loc_A38AD4: ZeroRetVal
  loc_A38AD6: FLdRfVar var_B0
  loc_A38AD9: FLdRfVar var_A0
  loc_A38ADC: LitVarStr var_9C, "CopoPost"
  loc_A38AE1: PopAdLdVar
  loc_A38AE2: FLdRfVar var_8C
  loc_A38AE5: FLdPr Me
  loc_A38AE8: MemLdPr RsFrm
  loc_A38AEB:  = Me.Fields
  loc_A38AF0: FLdPr var_8C
  loc_A38AF3: from_stack_2 = Me.Item(from_stack_1)
  loc_A38AF8: FLdPr var_A0
  loc_A38AFB:  = Me.Value
  loc_A38B00: FLdRfVar var_B0
  loc_A38B03: CStrVarTmp
  loc_A38B04: FStStr var_88
  loc_A38B07: FFreeAd var_8C = ""
  loc_A38B0E: FFree1Var var_B0 = ""
  loc_A38B11: ExitProcCbHresult
End Sub

Public Function ValidaClave(lNumeApre) 'A2CDA4
  'Data Table: 49FFEC
  loc_A2CD60: ZeroRetVal
  loc_A2CD62: LitStr "SELECT NumeApre FROM apremio WHERE NumeApre = "
  loc_A2CD65: ILdRf lNumeApre
  loc_A2CD68: CStrI4
  loc_A2CD6A: FStStrNoPop var_8C
  loc_A2CD6D: ConcatStr
  loc_A2CD6E: FStStrNoPop var_90
  loc_A2CD71: Call Proc_297_126_A4BDCC()
  loc_A2CD76: FFreeStr var_8C = ""
  loc_A2CD7D: FLdRfVar ValidaClave
  loc_A2CD80: FLdPr Me
  loc_A2CD83: MemLdPr global_68
  loc_A2CD86:  = Me.RecordCount
  loc_A2CD8B: ILdRf ValidaClave
  loc_A2CD8E: LitI4 0
  loc_A2CD93: GtI4
  loc_A2CD94: BranchF loc_A2CD9D
  loc_A2CD97: LitStr "EL NUMERO de APREMIO YA EXISTE, verifique..."
  loc_A2CD9A: FStStrCopy var_88
  loc_A2CD9D: ExitProcCbHresult
End Function

Public Function NumeApreValidate(lNumeApre) 'A465B8
  'Data Table: 49FFEC
  loc_A4656C: ZeroRetVal
  loc_A4656E: LitStr "SELECT NumeApre FROM apremio WHERE NumeApre = "
  loc_A46571: ILdRf lNumeApre
  loc_A46574: CStrI4
  loc_A46576: FStStrNoPop var_8C
  loc_A46579: ConcatStr
  loc_A4657A: FStStrNoPop var_90
  loc_A4657D: LitStr " ORDER BY NumeApre"
  loc_A46580: ConcatStr
  loc_A46581: FStStrNoPop NumeApreValidate
  loc_A46584: Call Proc_297_125_A4BEE4()
  loc_A46589: FFreeStr var_8C = "": var_90 = ""
  loc_A46592: FLdRfVar var_98
  loc_A46595: FLdPr Me
  loc_A46598: MemLdPr global_64
  loc_A4659B:  = Me.RecordCount
  loc_A465A0: ILdRf var_98
  loc_A465A3: LitI4 0
  loc_A465A8: EqI4
  loc_A465A9: BranchF loc_A465B2
  loc_A465AC: LitStr "La BOLETA de APREMIO no existe, verifique..."
  loc_A465AF: FStStrCopy var_88
  loc_A465B2: ExitProcCbHresult
End Function

Public Function CodiOfjuValidate(iCodiOfju) 'A05BAC
  'Data Table: 49FFEC
  loc_A05B84: ZeroRetVal
  loc_A05B86: FLdRfVar var_90
  loc_A05B89: FLdI2 iCodiOfju
  loc_A05B8C: FLdRfVar var_8C
  loc_A05B8F: NewIfNullPr clsoficjust
  loc_A05B92: from_stack_2v = clsoficjust.CodiOfjuValidate(from_stack_1v)
  loc_A05B97: FLdZeroAd var_90
  loc_A05B9A: FStStr var_88
  loc_A05B9D: LitNothing
  loc_A05B9F: CastAd
  loc_A05BA2: FStAdFunc var_8C
  loc_A05BA5: ExitProcCbHresult
End Function

Public Function BuscaUltimoApremio() 'AC40A8
  'Data Table: 49FFEC
  loc_AC3FA0: LitStr "Municipalidad de Guaymallén"
  loc_AC3FA3: LitStr "Municipalidad de Tunuyán"
  loc_AC3FA6: EqStr
  loc_AC3FA8: BranchF loc_AC4028
  loc_AC3FAB: LitStr "SELECT NumeApre FROM apremio WHERE NumeApre < 100000 ORDER BY NumeApre"
  loc_AC3FAE: Call Proc_297_125_A4BEE4()
  loc_AC3FB3: FLdRfVar var_8C
  loc_AC3FB6: FLdPr Me
  loc_AC3FB9: MemLdPr global_64
  loc_AC3FBC:  = Me.RecordCount
  loc_AC3FC1: ILdRf var_8C
  loc_AC3FC4: LitI4 0
  loc_AC3FC9: GtI4
  loc_AC3FCA: BranchF loc_AC401D
  loc_AC3FCD: FLdPr Me
  loc_AC3FD0: MemLdPr global_64
  loc_AC3FD3: Me.MoveLast
  loc_AC3FD8: FLdRfVar var_B4
  loc_AC3FDB: FLdRfVar var_A4
  loc_AC3FDE: LitVarStr var_A0, "NumeApre"
  loc_AC3FE3: PopAdLdVar
  loc_AC3FE4: FLdRfVar var_90
  loc_AC3FE7: FLdPr Me
  loc_AC3FEA: MemLdPr global_64
  loc_AC3FED:  = Me.Fields
  loc_AC3FF2: FLdPr var_90
  loc_AC3FF5: from_stack_2 = Me.Item(from_stack_1)
  loc_AC3FFA: FLdPr var_A4
  loc_AC3FFD:  = Me.Value
  loc_AC4002: FLdRfVar var_B4
  loc_AC4005: FnCLngVar
  loc_AC4007: LitI4 1
  loc_AC400C: AddI4
  loc_AC400D: FStR4 var_88
  loc_AC4010: FFreeAd var_90 = ""
  loc_AC4017: FFree1Var var_B4 = ""
  loc_AC401A: Branch loc_AC4025
  loc_AC401D: LitI4 1
  loc_AC4022: FStR4 var_88
  loc_AC4025: Branch loc_AC40A2
  loc_AC4028: LitStr "SELECT NumeApre FROM apremio ORDER BY NumeApre"
  loc_AC402B: Call Proc_297_125_A4BEE4()
  loc_AC4030: FLdRfVar var_8C
  loc_AC4033: FLdPr Me
  loc_AC4036: MemLdPr global_64
  loc_AC4039:  = Me.RecordCount
  loc_AC403E: ILdRf var_8C
  loc_AC4041: LitI4 0
  loc_AC4046: GtI4
  loc_AC4047: BranchF loc_AC409A
  loc_AC404A: FLdPr Me
  loc_AC404D: MemLdPr global_64
  loc_AC4050: Me.MoveLast
  loc_AC4055: FLdRfVar var_B4
  loc_AC4058: FLdRfVar var_A4
  loc_AC405B: LitVarStr var_A0, "NumeApre"
  loc_AC4060: PopAdLdVar
  loc_AC4061: FLdRfVar var_90
  loc_AC4064: FLdPr Me
  loc_AC4067: MemLdPr global_64
  loc_AC406A:  = Me.Fields
  loc_AC406F: FLdPr var_90
  loc_AC4072: from_stack_2 = Me.Item(from_stack_1)
  loc_AC4077: FLdPr var_A4
  loc_AC407A:  = Me.Value
  loc_AC407F: FLdRfVar var_B4
  loc_AC4082: FnCLngVar
  loc_AC4084: LitI4 1
  loc_AC4089: AddI4
  loc_AC408A: FStR4 var_88
  loc_AC408D: FFreeAd var_90 = ""
  loc_AC4094: FFree1Var var_B4 = ""
  loc_AC4097: Branch loc_AC40A2
  loc_AC409A: LitI4 1
  loc_AC409F: FStR4 var_88
  loc_AC40A2: ExitProcCbHresult
End Function

Public Function BuscaGastosApremio(lNumeApre, doCapital, doRecargo) 'B5315C
  'Data Table: 49FFEC
  loc_B52E28: LitStr "SELECT apremio.NumeApre,  FealApre, apremio.CodiReca, apremio.CodiOfju, CapiApre, RecaApre, "
  loc_B52E2B: LitStr " IFNULL(instapre.CodiInju,0) CodiInju FROM apremio"
  loc_B52E2E: ConcatStr
  loc_B52E2F: FStStrNoPop var_A8
  loc_B52E32: LitStr " LEFT JOIN instapre ON instapre.NumeApre = apremio.NumeApre AND FechInap <= current_date"
  loc_B52E35: ConcatStr
  loc_B52E36: FStStrNoPop var_AC
  loc_B52E39: LitStr " WHERE apremio.NumeApre = "
  loc_B52E3C: ConcatStr
  loc_B52E3D: FStStrNoPop var_B0
  loc_B52E40: ILdRf lNumeApre
  loc_B52E43: CStrI4
  loc_B52E45: FStStrNoPop var_B4
  loc_B52E48: ConcatStr
  loc_B52E49: FStStrNoPop var_B8
  loc_B52E4C: LitStr " AND apremio.EstaApre IN (1,8,11,12)"
  loc_B52E4F: ConcatStr
  loc_B52E50: FStStrNoPop var_BC
  loc_B52E53: LitStr " ORDER BY CodiInju desc LIMIT 1"
  loc_B52E56: ConcatStr
  loc_B52E57: FStStrNoPop var_C0
  loc_B52E5A: Call Proc_297_126_A4BDCC()
  loc_B52E5F: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B52E70: FLdRfVar var_C4
  loc_B52E73: FLdPr Me
  loc_B52E76: MemLdPr global_68
  loc_B52E79:  = Me.RecordCount
  loc_B52E7E: ILdRf var_C4
  loc_B52E81: LitI4 0
  loc_B52E86: GtI4
  loc_B52E87: BranchF loc_B53145
  loc_B52E8A: FLdRfVar var_EC
  loc_B52E8D: FLdRfVar var_DC
  loc_B52E90: LitVarStr var_D8, "CodiInju"
  loc_B52E95: PopAdLdVar
  loc_B52E96: FLdRfVar var_C8
  loc_B52E99: FLdPr Me
  loc_B52E9C: MemLdPr global_68
  loc_B52E9F:  = Me.Fields
  loc_B52EA4: FLdPr var_C8
  loc_B52EA7: from_stack_2 = Me.Item(from_stack_1)
  loc_B52EAC: FLdPr var_DC
  loc_B52EAF:  = Me.Value
  loc_B52EB4: FLdRfVar var_EC
  loc_B52EB7: LitVarI2 var_FC, 0
  loc_B52EBC: HardType
  loc_B52EBD: GtVarBool
  loc_B52EBF: FFreeAd var_C8 = ""
  loc_B52EC6: FFree1Var var_EC = ""
  loc_B52EC9: BranchF loc_B53139
  loc_B52ECC: FLdRfVar var_EC
  loc_B52ECF: FLdRfVar var_DC
  loc_B52ED2: LitVarStr var_D8, "NumeApre"
  loc_B52ED7: PopAdLdVar
  loc_B52ED8: FLdRfVar var_C8
  loc_B52EDB: FLdPr Me
  loc_B52EDE: MemLdPr global_68
  loc_B52EE1:  = Me.Fields
  loc_B52EE6: FLdPr var_C8
  loc_B52EE9: from_stack_2 = Me.Item(from_stack_1)
  loc_B52EEE: FLdPr var_DC
  loc_B52EF1:  = Me.Value
  loc_B52EF6: FLdRfVar var_10C
  loc_B52EF9: FLdRfVar var_114
  loc_B52EFC: LitVarStr var_FC, "CodiInju"
  loc_B52F01: PopAdLdVar
  loc_B52F02: FLdRfVar var_110
  loc_B52F05: FLdPr Me
  loc_B52F08: MemLdPr global_68
  loc_B52F0B:  = Me.Fields
  loc_B52F10: FLdPr var_110
  loc_B52F13: from_stack_2 = Me.Item(from_stack_1)
  loc_B52F18: FLdPr var_114
  loc_B52F1B:  = Me.Value
  loc_B52F20: FLdRfVar var_16C
  loc_B52F23: FLdRfVar var_12C
  loc_B52F26: LitVarStr var_128, "FealApre"
  loc_B52F2B: PopAdLdVar
  loc_B52F2C: FLdRfVar var_118
  loc_B52F2F: FLdPr Me
  loc_B52F32: MemLdPr global_68
  loc_B52F35:  = Me.Fields
  loc_B52F3A: FLdPr var_118
  loc_B52F3D: from_stack_2 = Me.Item(from_stack_1)
  loc_B52F42: FLdPr var_12C
  loc_B52F45:  = Me.Value
  loc_B52F4A: FLdRfVar var_17C
  loc_B52F4D: FLdRfVar var_144
  loc_B52F50: LitVarStr var_140, "CodiReca"
  loc_B52F55: PopAdLdVar
  loc_B52F56: FLdRfVar var_130
  loc_B52F59: FLdPr Me
  loc_B52F5C: MemLdPr global_68
  loc_B52F5F:  = Me.Fields
  loc_B52F64: FLdPr var_130
  loc_B52F67: from_stack_2 = Me.Item(from_stack_1)
  loc_B52F6C: FLdPr var_144
  loc_B52F6F:  = Me.Value
  loc_B52F74: FLdRfVar var_18C
  loc_B52F77: FLdRfVar var_15C
  loc_B52F7A: LitVarStr var_158, "CodiOfju"
  loc_B52F7F: PopAdLdVar
  loc_B52F80: FLdRfVar var_148
  loc_B52F83: FLdPr Me
  loc_B52F86: MemLdPr global_68
  loc_B52F89:  = Me.Fields
  loc_B52F8E: FLdPr var_148
  loc_B52F91: from_stack_2 = Me.Item(from_stack_1)
  loc_B52F96: FLdPr var_15C
  loc_B52F99:  = Me.Value
  loc_B52F9E: FLdRfVar var_194
  loc_B52FA1: LitI2_Byte 0
  loc_B52FA3: FLdR8 arg_18
  loc_B52FA6: FLdR8 doCapital
  loc_B52FA9: FLdRfVar var_18C
  loc_B52FAC: CI2Var
  loc_B52FAD: FLdRfVar var_17C
  loc_B52FB0: CI2Var
  loc_B52FB1: FLdRfVar var_16C
  loc_B52FB4: CStrVarTmp
  loc_B52FB5: FStStrNoPop var_A8
  loc_B52FB8: FLdRfVar var_10C
  loc_B52FBB: CI2Var
  loc_B52FBC: FLdRfVar var_EC
  loc_B52FBF: CI4Var
  loc_B52FC1: FLdRfVar var_90
  loc_B52FC4: NewIfNullPr clsinstjudi
  loc_B52FC7: from_stack_9v = clsinstjudi.BuscaGastosInstancia(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_B52FCC: FLdFPR8 var_194
  loc_B52FCF: FStFPR8 var_8C
  loc_B52FD2: FFree1Str var_A8
  loc_B52FD5: FFreeAd var_C8 = "": var_110 = "": var_118 = "": var_130 = "": var_148 = "": var_DC = "": var_114 = "": var_12C = "": var_144 = ""
  loc_B52FEC: FFreeVar var_EC = "": var_10C = "": var_16C = "": var_17C = ""
  loc_B52FF9: FLdRfVar var_EC
  loc_B52FFC: FLdRfVar var_DC
  loc_B52FFF: LitVarStr var_D8, "NumeApre"
  loc_B53004: PopAdLdVar
  loc_B53005: FLdRfVar var_C8
  loc_B53008: FLdPr Me
  loc_B5300B: MemLdPr global_68
  loc_B5300E:  = Me.Fields
  loc_B53013: FLdPr var_C8
  loc_B53016: from_stack_2 = Me.Item(from_stack_1)
  loc_B5301B: FLdPr var_DC
  loc_B5301E:  = Me.Value
  loc_B53023: FLdRfVar var_EC
  loc_B53026: CI4Var
  loc_B53028: FLdRfVar var_10C
  loc_B5302B: ImpAdCallFPR4  = Proc_270_154_B625BC()
  loc_B53030: FLdRfVar var_10C
  loc_B53033: FStVar var_A4
  loc_B53037: FFreeAd var_C8 = ""
  loc_B5303E: FFree1Var var_EC = ""
  loc_B53041: FLdFPR8 var_8C
  loc_B53044: CVarR8
  loc_B53048: LitVarI2 var_D8, 1
  loc_B5304D: PopAdLdVar
  loc_B5304E: FLdRfVar var_A4
  loc_B53051: VarIndexLdVar
  loc_B53057: SubVar var_10C
  loc_B5305B: LitVarI2 var_140, 2
  loc_B53060: PopAdLdVar
  loc_B53061: FLdRfVar var_A4
  loc_B53064: VarIndexLdVar
  loc_B5306A: SubVar var_17C
  loc_B5306E: LitVarI2 var_1A4, 3
  loc_B53073: PopAdLdVar
  loc_B53074: FLdRfVar var_A4
  loc_B53077: VarIndexLdVar
  loc_B5307D: SubVar var_1C4
  loc_B53081: LitVarI2 var_1D4, 4
  loc_B53086: PopAdLdVar
  loc_B53087: FLdRfVar var_A4
  loc_B5308A: VarIndexLdVar
  loc_B53090: SubVar var_204
  loc_B53094: LitVarI2 var_214, 5
  loc_B53099: PopAdLdVar
  loc_B5309A: FLdRfVar var_A4
  loc_B5309D: VarIndexLdVar
  loc_B530A3: SubVar var_244
  loc_B530A7: LitVarI2 var_254, 6
  loc_B530AC: PopAdLdVar
  loc_B530AD: FLdRfVar var_A4
  loc_B530B0: VarIndexLdVar
  loc_B530B6: SubVar var_284
  loc_B530BA: LitVarI2 var_294, 7
  loc_B530BF: PopAdLdVar
  loc_B530C0: FLdRfVar var_A4
  loc_B530C3: VarIndexLdVar
  loc_B530C9: SubVar var_2C4
  loc_B530CD: LitVarI2 var_2D4, 8
  loc_B530D2: PopAdLdVar
  loc_B530D3: FLdRfVar var_A4
  loc_B530D6: VarIndexLdVar
  loc_B530DC: SubVar var_304
  loc_B530E0: LitVarI2 var_314, 9
  loc_B530E5: PopAdLdVar
  loc_B530E6: FLdRfVar var_A4
  loc_B530E9: VarIndexLdVar
  loc_B530EF: SubVar var_344
  loc_B530F3: LitVarI2 var_354, 10
  loc_B530F8: PopAdLdVar
  loc_B530F9: FLdRfVar var_A4
  loc_B530FC: VarIndexLdVar
  loc_B53102: SubVar var_384
  loc_B53106: LitVarI2 var_394, 11
  loc_B5310B: PopAdLdVar
  loc_B5310C: FLdRfVar var_A4
  loc_B5310F: VarIndexLdVar
  loc_B53115: SubVar var_3C4
  loc_B53119: CR4Var
  loc_B5311A: FStFPR8 var_8C
  loc_B5311D: FFreeVar var_EC = "": var_16C = "": var_18C = "": var_1F4 = "": var_234 = "": var_274 = "": var_2B4 = "": var_2F4 = "": var_334 = "": var_374 = ""
  loc_B53136: Branch loc_B53145
  loc_B53139: LitI2_Byte 0
  loc_B5313B: CR8I2
  loc_B5313C: FStFPR8 var_8C
  loc_B5313F: ExitProcCbHresult
  loc_B53145: LitNothing
  loc_B53147: CastAd
  loc_B5314A: FStAdFunc var_90
  loc_B5314D: LitNothing
  loc_B5314F: CastAd
  loc_B53152: FStAdFunc BuscaGastosApremio
  loc_B53155: ExitProcCbHresult
End Function

Public Function BuscaGastosApremioDetalle(lNumeApre, doCapital, doRecargo) 'B8AB10
  'Data Table: 49FFEC
  loc_B8A63C: ZeroRetValVar
  loc_B8A63E: LitStr "SELECT * FROM apremio WHERE NumeApre = "
  loc_B8A641: ILdRf lNumeApre
  loc_B8A644: CStrI4
  loc_B8A646: FStStrNoPop var_C0
  loc_B8A649: ConcatStr
  loc_B8A64A: FStStrNoPop var_C4
  loc_B8A64D: LitStr " AND apremio.EstaApre IN (1,8,11,12)"
  loc_B8A650: ConcatStr
  loc_B8A651: FStStrNoPop var_C8
  loc_B8A654: Call Proc_297_126_A4BDCC()
  loc_B8A659: FFreeStr var_C0 = "": var_C4 = ""
  loc_B8A662: FLdRfVar var_CC
  loc_B8A665: FLdPr Me
  loc_B8A668: MemLdPr global_68
  loc_B8A66B:  = Me.RecordCount
  loc_B8A670: ILdRf var_CC
  loc_B8A673: LitI4 1
  loc_B8A678: EqI4
  loc_B8A679: BranchF loc_B8A9AC
  loc_B8A67C: FLdRfVar var_F6
  loc_B8A67F: FLdRfVar var_F4
  loc_B8A682: FLdRfVar var_E4
  loc_B8A685: LitVarStr var_E0, "NumeApre"
  loc_B8A68A: PopAdLdVar
  loc_B8A68B: FLdRfVar var_D0
  loc_B8A68E: FLdPr Me
  loc_B8A691: MemLdPr global_68
  loc_B8A694:  = Me.Fields
  loc_B8A699: FLdPr var_D0
  loc_B8A69C: from_stack_2 = Me.Item(from_stack_1)
  loc_B8A6A1: FLdPr var_E4
  loc_B8A6A4:  = Me.Value
  loc_B8A6A9: FLdRfVar var_F4
  loc_B8A6AC: CI4Var
  loc_B8A6AE: FLdRfVar var_B8
  loc_B8A6B1: NewIfNullPr clsinstapre
  loc_B8A6B4: from_stack_2v = clsinstapre.BuscaInstanciaApremio(from_stack_1v)
  loc_B8A6B9: FLdI2 var_F6
  loc_B8A6BC: FStI2 var_BA
  loc_B8A6BF: FFreeAd var_D0 = ""
  loc_B8A6C6: FFree1Var var_F4 = ""
  loc_B8A6C9: FLdI2 var_BA
  loc_B8A6CC: LitI2_Byte 0
  loc_B8A6CE: NeI2
  loc_B8A6CF: BranchF loc_B8A85E
  loc_B8A6D2: FLdFPR8 doCapital
  loc_B8A6D5: LitI2_Byte 0
  loc_B8A6D7: CR8I2
  loc_B8A6D8: EqR4
  loc_B8A6D9: FLdFPR8 arg_18
  loc_B8A6DC: LitI2_Byte 0
  loc_B8A6DE: CR8I2
  loc_B8A6DF: EqR4
  loc_B8A6E0: AndI4
  loc_B8A6E1: BranchF loc_B8A75C
  loc_B8A6E4: FLdRfVar var_F4
  loc_B8A6E7: FLdRfVar var_E4
  loc_B8A6EA: LitVarStr var_E0, "CapiApre"
  loc_B8A6EF: PopAdLdVar
  loc_B8A6F0: FLdRfVar var_D0
  loc_B8A6F3: FLdPr Me
  loc_B8A6F6: MemLdPr global_68
  loc_B8A6F9:  = Me.Fields
  loc_B8A6FE: FLdPr var_D0
  loc_B8A701: from_stack_2 = Me.Item(from_stack_1)
  loc_B8A706: FLdPr var_E4
  loc_B8A709:  = Me.Value
  loc_B8A70E: FLdRfVar var_F4
  loc_B8A711: FnCDblVar
  loc_B8A713: FStFPR8 doCapital
  loc_B8A716: FFreeAd var_D0 = ""
  loc_B8A71D: FFree1Var var_F4 = ""
  loc_B8A720: FLdRfVar var_F4
  loc_B8A723: FLdRfVar var_E4
  loc_B8A726: LitVarStr var_E0, "RecaApre"
  loc_B8A72B: PopAdLdVar
  loc_B8A72C: FLdRfVar var_D0
  loc_B8A72F: FLdPr Me
  loc_B8A732: MemLdPr global_68
  loc_B8A735:  = Me.Fields
  loc_B8A73A: FLdPr var_D0
  loc_B8A73D: from_stack_2 = Me.Item(from_stack_1)
  loc_B8A742: FLdPr var_E4
  loc_B8A745:  = Me.Value
  loc_B8A74A: FLdRfVar var_F4
  loc_B8A74D: FnCDblVar
  loc_B8A74F: FStFPR8 arg_18
  loc_B8A752: FFreeAd var_D0 = ""
  loc_B8A759: FFree1Var var_F4 = ""
  loc_B8A75C: FLdRfVar var_F4
  loc_B8A75F: FLdRfVar var_E4
  loc_B8A762: LitVarStr var_E0, "NumeApre"
  loc_B8A767: PopAdLdVar
  loc_B8A768: FLdRfVar var_D0
  loc_B8A76B: FLdPr Me
  loc_B8A76E: MemLdPr global_68
  loc_B8A771:  = Me.Fields
  loc_B8A776: FLdPr var_D0
  loc_B8A779: from_stack_2 = Me.Item(from_stack_1)
  loc_B8A77E: FLdPr var_E4
  loc_B8A781:  = Me.Value
  loc_B8A786: FLdRfVar var_150
  loc_B8A789: FLdRfVar var_110
  loc_B8A78C: LitVarStr var_10C, "FealApre"
  loc_B8A791: PopAdLdVar
  loc_B8A792: FLdRfVar var_FC
  loc_B8A795: FLdPr Me
  loc_B8A798: MemLdPr global_68
  loc_B8A79B:  = Me.Fields
  loc_B8A7A0: FLdPr var_FC
  loc_B8A7A3: from_stack_2 = Me.Item(from_stack_1)
  loc_B8A7A8: FLdPr var_110
  loc_B8A7AB:  = Me.Value
  loc_B8A7B0: FLdRfVar var_160
  loc_B8A7B3: FLdRfVar var_128
  loc_B8A7B6: LitVarStr var_124, "CodiReca"
  loc_B8A7BB: PopAdLdVar
  loc_B8A7BC: FLdRfVar var_114
  loc_B8A7BF: FLdPr Me
  loc_B8A7C2: MemLdPr global_68
  loc_B8A7C5:  = Me.Fields
  loc_B8A7CA: FLdPr var_114
  loc_B8A7CD: from_stack_2 = Me.Item(from_stack_1)
  loc_B8A7D2: FLdPr var_128
  loc_B8A7D5:  = Me.Value
  loc_B8A7DA: FLdRfVar var_170
  loc_B8A7DD: FLdRfVar var_140
  loc_B8A7E0: LitVarStr var_13C, "CodiOfju"
  loc_B8A7E5: PopAdLdVar
  loc_B8A7E6: FLdRfVar var_12C
  loc_B8A7E9: FLdPr Me
  loc_B8A7EC: MemLdPr global_68
  loc_B8A7EF:  = Me.Fields
  loc_B8A7F4: FLdPr var_12C
  loc_B8A7F7: from_stack_2 = Me.Item(from_stack_1)
  loc_B8A7FC: FLdPr var_140
  loc_B8A7FF:  = Me.Value
  loc_B8A804: FLdRfVar var_180
  loc_B8A807: LitI2_Byte 0
  loc_B8A809: LitI2_Byte 0
  loc_B8A80B: FLdR8 arg_18
  loc_B8A80E: FLdR8 doCapital
  loc_B8A811: FLdRfVar var_170
  loc_B8A814: CI2Var
  loc_B8A815: FLdRfVar var_160
  loc_B8A818: CI2Var
  loc_B8A819: FLdRfVar var_150
  loc_B8A81C: CStrVarTmp
  loc_B8A81D: FStStrNoPop var_C0
  loc_B8A820: FLdI2 var_BA
  loc_B8A823: FLdRfVar var_F4
  loc_B8A826: CI4Var
  loc_B8A828: FLdRfVar var_B4
  loc_B8A82B: NewIfNullPr clsinstjudi
  loc_B8A82E: from_stack_10v = clsinstjudi.BuscaGastosInstanciaDetalle(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_B8A833: FLdRfVar var_180
  loc_B8A836: FStVar BuscaGastosApremioDetalle
  loc_B8A83A: FFree1Str var_C0
  loc_B8A83D: FFreeAd var_D0 = "": var_FC = "": var_114 = "": var_12C = "": var_E4 = "": var_110 = "": var_128 = ""
  loc_B8A850: FFreeVar var_F4 = "": var_150 = "": var_160 = ""
  loc_B8A85B: Branch loc_B8A9A9
  loc_B8A85E: LitI2_Byte 0
  loc_B8A860: CStrUI1
  loc_B8A862: FStStrNoPop var_C0
  loc_B8A865: LitI4 1
  loc_B8A86A: FLdRfVar var_AC
  loc_B8A86D: Ary1StStrCopy
  loc_B8A86E: FFree1Str var_C0
  loc_B8A871: LitI2_Byte 0
  loc_B8A873: CStrUI1
  loc_B8A875: FStStrNoPop var_C0
  loc_B8A878: LitI4 2
  loc_B8A87D: FLdRfVar var_AC
  loc_B8A880: Ary1StStrCopy
  loc_B8A881: FFree1Str var_C0
  loc_B8A884: LitI2_Byte 0
  loc_B8A886: CStrUI1
  loc_B8A888: FStStrNoPop var_C0
  loc_B8A88B: LitI4 3
  loc_B8A890: FLdRfVar var_AC
  loc_B8A893: Ary1StStrCopy
  loc_B8A894: FFree1Str var_C0
  loc_B8A897: LitI2_Byte 0
  loc_B8A899: CStrUI1
  loc_B8A89B: FStStrNoPop var_C0
  loc_B8A89E: LitI4 4
  loc_B8A8A3: FLdRfVar var_AC
  loc_B8A8A6: Ary1StStrCopy
  loc_B8A8A7: FFree1Str var_C0
  loc_B8A8AA: LitI2_Byte 0
  loc_B8A8AC: CStrUI1
  loc_B8A8AE: FStStrNoPop var_C0
  loc_B8A8B1: LitI4 5
  loc_B8A8B6: FLdRfVar var_AC
  loc_B8A8B9: Ary1StStrCopy
  loc_B8A8BA: FFree1Str var_C0
  loc_B8A8BD: LitI2_Byte 0
  loc_B8A8BF: CStrUI1
  loc_B8A8C1: FStStrNoPop var_C0
  loc_B8A8C4: LitI4 6
  loc_B8A8C9: FLdRfVar var_AC
  loc_B8A8CC: Ary1StStrCopy
  loc_B8A8CD: FFree1Str var_C0
  loc_B8A8D0: LitI2_Byte 0
  loc_B8A8D2: CStrUI1
  loc_B8A8D4: FStStrNoPop var_C0
  loc_B8A8D7: LitI4 7
  loc_B8A8DC: FLdRfVar var_AC
  loc_B8A8DF: Ary1StStrCopy
  loc_B8A8E0: FFree1Str var_C0
  loc_B8A8E3: LitI2_Byte 0
  loc_B8A8E5: CStrUI1
  loc_B8A8E7: FStStrNoPop var_C0
  loc_B8A8EA: LitI4 8
  loc_B8A8EF: FLdRfVar var_AC
  loc_B8A8F2: Ary1StStrCopy
  loc_B8A8F3: FFree1Str var_C0
  loc_B8A8F6: LitI2_Byte 0
  loc_B8A8F8: CStrUI1
  loc_B8A8FA: FStStrNoPop var_C0
  loc_B8A8FD: LitI4 9
  loc_B8A902: FLdRfVar var_AC
  loc_B8A905: Ary1StStrCopy
  loc_B8A906: FFree1Str var_C0
  loc_B8A909: LitI2_Byte 0
  loc_B8A90B: CStrUI1
  loc_B8A90D: FStStrNoPop var_C0
  loc_B8A910: LitI4 &HA
  loc_B8A915: FLdRfVar var_AC
  loc_B8A918: Ary1StStrCopy
  loc_B8A919: FFree1Str var_C0
  loc_B8A91C: LitI2_Byte 0
  loc_B8A91E: CStrUI1
  loc_B8A920: FStStrNoPop var_C0
  loc_B8A923: LitI4 &HB
  loc_B8A928: FLdRfVar var_AC
  loc_B8A92B: Ary1StStrCopy
  loc_B8A92C: FFree1Str var_C0
  loc_B8A92F: FLdRfVar var_AC
  loc_B8A932: CVarRef
  loc_B8A937: FStVarCopy
  loc_B8A93B: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_apredeta;"
  loc_B8A93E: LitStr " CREATE TEMPORARY TABLE tmp_apredeta ("
  loc_B8A941: ConcatStr
  loc_B8A942: FStStrNoPop var_C0
  loc_B8A945: LitStr " umeApre` int(8) unsigned NOT NULL DEFAULT '0',"
  loc_B8A948: ConcatStr
  loc_B8A949: FStStrNoPop var_C4
  loc_B8A94C: LitStr " odiInju` tinyint(2) unsigned NOT NULL DEFAULT '0',"
  loc_B8A94F: ConcatStr
  loc_B8A950: FStStrNoPop var_C8
  loc_B8A953: LitStr " odiReca` smallint(3) unsigned NOT NULL DEFAULT '0',"
  loc_B8A956: ConcatStr
  loc_B8A957: FStStrNoPop var_184
  loc_B8A95A: LitStr " mreBade` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_B8A95D: ConcatStr
  loc_B8A95E: FStStrNoPop var_188
  loc_B8A961: LitStr " vreBade` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_B8A964: ConcatStr
  loc_B8A965: FStStrNoPop var_18C
  loc_B8A968: LitStr " odiOfju` smallint(3) unsigned NOT NULL DEFAULT '0',"
  loc_B8A96B: ConcatStr
  loc_B8A96C: FStStrNoPop var_190
  loc_B8A96F: LitStr " mofBade` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_B8A972: ConcatStr
  loc_B8A973: FStStrNoPop var_194
  loc_B8A976: LitStr " vofBade` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_B8A979: ConcatStr
  loc_B8A97A: FStStrNoPop var_198
  loc_B8A97D: LitStr " PRIMARY KEY  (umeApre`,`CodiInju`)"
  loc_B8A980: ConcatStr
  loc_B8A981: FStStrNoPop var_19C
  loc_B8A984: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_B8A987: ConcatStr
  loc_B8A988: FStStrNoPop var_1A0
  loc_B8A98B: Call Proc_297_126_A4BDCC()
  loc_B8A990: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = ""
  loc_B8A9A9: Branch loc_B8AAF7
  loc_B8A9AC: LitI2_Byte 0
  loc_B8A9AE: CStrUI1
  loc_B8A9B0: FStStrNoPop var_C0
  loc_B8A9B3: LitI4 1
  loc_B8A9B8: FLdRfVar var_AC
  loc_B8A9BB: Ary1StStrCopy
  loc_B8A9BC: FFree1Str var_C0
  loc_B8A9BF: LitI2_Byte 0
  loc_B8A9C1: CStrUI1
  loc_B8A9C3: FStStrNoPop var_C0
  loc_B8A9C6: LitI4 2
  loc_B8A9CB: FLdRfVar var_AC
  loc_B8A9CE: Ary1StStrCopy
  loc_B8A9CF: FFree1Str var_C0
  loc_B8A9D2: LitI2_Byte 0
  loc_B8A9D4: CStrUI1
  loc_B8A9D6: FStStrNoPop var_C0
  loc_B8A9D9: LitI4 3
  loc_B8A9DE: FLdRfVar var_AC
  loc_B8A9E1: Ary1StStrCopy
  loc_B8A9E2: FFree1Str var_C0
  loc_B8A9E5: LitI2_Byte 0
  loc_B8A9E7: CStrUI1
  loc_B8A9E9: FStStrNoPop var_C0
  loc_B8A9EC: LitI4 4
  loc_B8A9F1: FLdRfVar var_AC
  loc_B8A9F4: Ary1StStrCopy
  loc_B8A9F5: FFree1Str var_C0
  loc_B8A9F8: LitI2_Byte 0
  loc_B8A9FA: CStrUI1
  loc_B8A9FC: FStStrNoPop var_C0
  loc_B8A9FF: LitI4 5
  loc_B8AA04: FLdRfVar var_AC
  loc_B8AA07: Ary1StStrCopy
  loc_B8AA08: FFree1Str var_C0
  loc_B8AA0B: LitI2_Byte 0
  loc_B8AA0D: CStrUI1
  loc_B8AA0F: FStStrNoPop var_C0
  loc_B8AA12: LitI4 6
  loc_B8AA17: FLdRfVar var_AC
  loc_B8AA1A: Ary1StStrCopy
  loc_B8AA1B: FFree1Str var_C0
  loc_B8AA1E: LitI2_Byte 0
  loc_B8AA20: CStrUI1
  loc_B8AA22: FStStrNoPop var_C0
  loc_B8AA25: LitI4 7
  loc_B8AA2A: FLdRfVar var_AC
  loc_B8AA2D: Ary1StStrCopy
  loc_B8AA2E: FFree1Str var_C0
  loc_B8AA31: LitI2_Byte 0
  loc_B8AA33: CStrUI1
  loc_B8AA35: FStStrNoPop var_C0
  loc_B8AA38: LitI4 8
  loc_B8AA3D: FLdRfVar var_AC
  loc_B8AA40: Ary1StStrCopy
  loc_B8AA41: FFree1Str var_C0
  loc_B8AA44: LitI2_Byte 0
  loc_B8AA46: CStrUI1
  loc_B8AA48: FStStrNoPop var_C0
  loc_B8AA4B: LitI4 9
  loc_B8AA50: FLdRfVar var_AC
  loc_B8AA53: Ary1StStrCopy
  loc_B8AA54: FFree1Str var_C0
  loc_B8AA57: LitI2_Byte 0
  loc_B8AA59: CStrUI1
  loc_B8AA5B: FStStrNoPop var_C0
  loc_B8AA5E: LitI4 &HA
  loc_B8AA63: FLdRfVar var_AC
  loc_B8AA66: Ary1StStrCopy
  loc_B8AA67: FFree1Str var_C0
  loc_B8AA6A: LitI2_Byte 0
  loc_B8AA6C: CStrUI1
  loc_B8AA6E: FStStrNoPop var_C0
  loc_B8AA71: LitI4 &HB
  loc_B8AA76: FLdRfVar var_AC
  loc_B8AA79: Ary1StStrCopy
  loc_B8AA7A: FFree1Str var_C0
  loc_B8AA7D: FLdRfVar var_AC
  loc_B8AA80: CVarRef
  loc_B8AA85: FStVarCopy
  loc_B8AA89: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_apredeta;"
  loc_B8AA8C: LitStr " CREATE TEMPORARY TABLE tmp_apredeta ("
  loc_B8AA8F: ConcatStr
  loc_B8AA90: FStStrNoPop var_C0
  loc_B8AA93: LitStr " umeApre` int(8) unsigned NOT NULL DEFAULT '0',"
  loc_B8AA96: ConcatStr
  loc_B8AA97: FStStrNoPop var_C4
  loc_B8AA9A: LitStr " odiInju` tinyint(2) unsigned NOT NULL DEFAULT '0',"
  loc_B8AA9D: ConcatStr
  loc_B8AA9E: FStStrNoPop var_C8
  loc_B8AAA1: LitStr " odiReca` smallint(3) unsigned NOT NULL DEFAULT '0',"
  loc_B8AAA4: ConcatStr
  loc_B8AAA5: FStStrNoPop var_184
  loc_B8AAA8: LitStr " mreBade` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_B8AAAB: ConcatStr
  loc_B8AAAC: FStStrNoPop var_188
  loc_B8AAAF: LitStr " vreBade` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_B8AAB2: ConcatStr
  loc_B8AAB3: FStStrNoPop var_18C
  loc_B8AAB6: LitStr " odiOfju` smallint(3) unsigned NOT NULL DEFAULT '0',"
  loc_B8AAB9: ConcatStr
  loc_B8AABA: FStStrNoPop var_190
  loc_B8AABD: LitStr " mofBade` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_B8AAC0: ConcatStr
  loc_B8AAC1: FStStrNoPop var_194
  loc_B8AAC4: LitStr " vofBade` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_B8AAC7: ConcatStr
  loc_B8AAC8: FStStrNoPop var_198
  loc_B8AACB: LitStr " PRIMARY KEY  (umeApre`,`CodiInju`)"
  loc_B8AACE: ConcatStr
  loc_B8AACF: FStStrNoPop var_19C
  loc_B8AAD2: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_B8AAD5: ConcatStr
  loc_B8AAD6: FStStrNoPop var_1A0
  loc_B8AAD9: Call Proc_297_126_A4BDCC()
  loc_B8AADE: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = ""
  loc_B8AAF7: LitNothing
  loc_B8AAF9: CastAd
  loc_B8AAFC: FStAdFunc var_B4
  loc_B8AAFF: LitNothing
  loc_B8AB01: CastAd
  loc_B8AB04: FStAdFunc var_B8
  loc_B8AB07: ExitProcCbHresult
End Function

Public Function BuscaInstanciaApremio(lNumeApre) 'AD38DC
  'Data Table: 49FFEC
  loc_AD37B4: LitStr "SELECT EstaApre, CodiInju FROM apremio WHERE NumeApre = "
  loc_AD37B7: ILdRf lNumeApre
  loc_AD37BA: CStrI4
  loc_AD37BC: FStStrNoPop var_8C
  loc_AD37BF: ConcatStr
  loc_AD37C0: FStStrNoPop var_90
  loc_AD37C3: Call Proc_297_126_A4BDCC()
  loc_AD37C8: FFreeStr var_8C = ""
  loc_AD37CF: FLdRfVar BuscaInstanciaApremio
  loc_AD37D2: FLdPr Me
  loc_AD37D5: MemLdPr global_68
  loc_AD37D8:  = Me.RecordCount
  loc_AD37DD: ILdRf BuscaInstanciaApremio
  loc_AD37E0: LitI4 1
  loc_AD37E5: EqI4
  loc_AD37E6: BranchF loc_AD38CF
  loc_AD37E9: LitStr "Municipalidad de Guaymallén"
  loc_AD37EC: LitStr "Municipalidad de Guaymallén"
  loc_AD37EF: NeStr
  loc_AD37F1: BranchF loc_AD3841
  loc_AD37F4: FLdRfVar var_BC
  loc_AD37F7: FLdRfVar var_AC
  loc_AD37FA: LitVarStr var_A8, "EstaApre"
  loc_AD37FF: PopAdLdVar
  loc_AD3800: FLdRfVar var_98
  loc_AD3803: FLdPr Me
  loc_AD3806: MemLdPr global_68
  loc_AD3809:  = Me.Fields
  loc_AD380E: FLdPr var_98
  loc_AD3811: from_stack_2 = Me.Item(from_stack_1)
  loc_AD3816: FLdPr var_AC
  loc_AD3819:  = Me.Value
  loc_AD381E: FLdRfVar var_BC
  loc_AD3821: LitVarStr var_CC, "Suspendido"
  loc_AD3826: HardType
  loc_AD3827: EqVarBool
  loc_AD3829: FFreeAd var_98 = ""
  loc_AD3830: FFree1Var var_BC = ""
  loc_AD3833: BranchF loc_AD3841
  loc_AD3836: LitI2_Byte 0
  loc_AD3838: FStI2 var_86
  loc_AD383B: ExitProcCbHresult
  loc_AD3841: FLdRfVar var_BC
  loc_AD3844: FLdRfVar var_AC
  loc_AD3847: LitVarStr var_A8, "CodiInju"
  loc_AD384C: PopAdLdVar
  loc_AD384D: FLdRfVar var_98
  loc_AD3850: FLdPr Me
  loc_AD3853: MemLdPr global_68
  loc_AD3856:  = Me.Fields
  loc_AD385B: FLdPr var_98
  loc_AD385E: from_stack_2 = Me.Item(from_stack_1)
  loc_AD3863: FLdPr var_AC
  loc_AD3866:  = Me.Value
  loc_AD386B: FLdRfVar var_BC
  loc_AD386E: LitVarI2 var_CC, 0
  loc_AD3873: HardType
  loc_AD3874: NeVarBool
  loc_AD3876: FFreeAd var_98 = ""
  loc_AD387D: FFree1Var var_BC = ""
  loc_AD3880: BranchF loc_AD38C1
  loc_AD3883: FLdRfVar var_BC
  loc_AD3886: FLdRfVar var_AC
  loc_AD3889: LitVarStr var_A8, "CodiInju"
  loc_AD388E: PopAdLdVar
  loc_AD388F: FLdRfVar var_98
  loc_AD3892: FLdPr Me
  loc_AD3895: MemLdPr global_68
  loc_AD3898:  = Me.Fields
  loc_AD389D: FLdPr var_98
  loc_AD38A0: from_stack_2 = Me.Item(from_stack_1)
  loc_AD38A5: FLdPr var_AC
  loc_AD38A8:  = Me.Value
  loc_AD38AD: FLdRfVar var_BC
  loc_AD38B0: CI2Var
  loc_AD38B1: FStI2 var_86
  loc_AD38B4: FFreeAd var_98 = ""
  loc_AD38BB: FFree1Var var_BC = ""
  loc_AD38BE: Branch loc_AD38CC
  loc_AD38C1: LitI2_Byte 0
  loc_AD38C3: FStI2 var_86
  loc_AD38C6: ExitProcCbHresult
  loc_AD38CC: Branch loc_AD38D4
  loc_AD38CF: LitI2_Byte 0
  loc_AD38D1: FStI2 var_86
  loc_AD38D4: ExitProcCbHresult
End Function

Public Function BuscaApremioActivosSuspendidos(lNumeApre) 'A51E24
  'Data Table: 49FFEC
  loc_A51DD0: LitStr "SELECT * FROM apremio WHERE NumeApre = "
  loc_A51DD3: ILdRf lNumeApre
  loc_A51DD6: CStrI4
  loc_A51DD8: FStStrNoPop var_8C
  loc_A51DDB: ConcatStr
  loc_A51DDC: FStStrNoPop var_90
  loc_A51DDF: LitStr " AND EstaApre <> 'Pagado y Actualizado'"
  loc_A51DE2: ConcatStr
  loc_A51DE3: FStStrNoPop BuscaApremioActivosSuspendidos
  loc_A51DE6: Call Proc_297_125_A4BEE4()
  loc_A51DEB: FFreeStr var_8C = "": var_90 = ""
  loc_A51DF4: FLdRfVar var_98
  loc_A51DF7: FLdPr Me
  loc_A51DFA: MemLdPr global_64
  loc_A51DFD:  = Me.RecordCount
  loc_A51E02: ILdRf var_98
  loc_A51E05: LitI4 1
  loc_A51E0A: EqI4
  loc_A51E0B: BranchF loc_A51E16
  loc_A51E0E: LitI2_Byte &HFF
  loc_A51E10: FStI2 var_86
  loc_A51E13: Branch loc_A51E1B
  loc_A51E16: LitI2_Byte 0
  loc_A51E18: FStI2 var_86
  loc_A51E1B: ExitProcCbHresult
End Function

Public Function BuscaApremioFechaEmision(lNumeApre) 'A8A288
  'Data Table: 49FFEC
  loc_A8A1FC: ZeroRetVal
  loc_A8A1FE: LitStr "SELECT FeemApre FROM apremio WHERE NumeApre = "
  loc_A8A201: ILdRf lNumeApre
  loc_A8A204: CStrI4
  loc_A8A206: FStStrNoPop var_8C
  loc_A8A209: ConcatStr
  loc_A8A20A: FStStrNoPop var_90
  loc_A8A20D: LitStr " ORDER BY NumeApre"
  loc_A8A210: ConcatStr
  loc_A8A211: FStStrNoPop BuscaApremioFechaEmision
  loc_A8A214: Call Proc_297_125_A4BEE4()
  loc_A8A219: FFreeStr var_8C = "": var_90 = ""
  loc_A8A222: FLdRfVar var_98
  loc_A8A225: FLdPr Me
  loc_A8A228: MemLdPr global_64
  loc_A8A22B:  = Me.RecordCount
  loc_A8A230: ILdRf var_98
  loc_A8A233: LitI4 1
  loc_A8A238: EqI4
  loc_A8A239: BranchF loc_A8A27A
  loc_A8A23C: FLdRfVar var_C0
  loc_A8A23F: FLdRfVar var_B0
  loc_A8A242: LitVarStr var_AC, "FeemApre"
  loc_A8A247: PopAdLdVar
  loc_A8A248: FLdRfVar var_9C
  loc_A8A24B: FLdPr Me
  loc_A8A24E: MemLdPr global_64
  loc_A8A251:  = Me.Fields
  loc_A8A256: FLdPr var_9C
  loc_A8A259: from_stack_2 = Me.Item(from_stack_1)
  loc_A8A25E: FLdPr var_B0
  loc_A8A261:  = Me.Value
  loc_A8A266: FLdRfVar var_C0
  loc_A8A269: CStrVarTmp
  loc_A8A26A: FStStr var_88
  loc_A8A26D: FFreeAd var_9C = ""
  loc_A8A274: FFree1Var var_C0 = ""
  loc_A8A277: Branch loc_A8A280
  loc_A8A27A: LitStr vbNullString
  loc_A8A27D: FStStrCopy var_88
  loc_A8A280: ExitProcCbHresult
End Function

Public Function BuscaGastosdeApremioPendientesEnCuotadeFacilidaddePagoAnulada(lNumeApre) 'A7EF90
  'Data Table: 49FFEC
  loc_A7EF18: LitStr " SELECT * FROM faciapre"
  loc_A7EF1B: LitStr " INNER JOIN facipago ON facipago.CodiFapa = faciapre.CodiFapa"
  loc_A7EF1E: ConcatStr
  loc_A7EF1F: FStStrNoPop var_8C
  loc_A7EF22: LitStr " INNER JOIN detafapa ON detafapa.CodiFapa = faciapre.CodiFapa"
  loc_A7EF25: ConcatStr
  loc_A7EF26: FStStrNoPop var_90
  loc_A7EF29: LitStr " AND detafapa.CuotDefa = faciapre.CuotDefa"
  loc_A7EF2C: ConcatStr
  loc_A7EF2D: FStStrNoPop BuscaGastosdeApremioPendientesEnCuotadeFacilidaddePagoAnulada
  loc_A7EF30: LitStr " WHERE faciapre.NumeApre = "
  loc_A7EF33: ConcatStr
  loc_A7EF34: FStStrNoPop var_98
  loc_A7EF37: ILdRf lNumeApre
  loc_A7EF3A: CStrI4
  loc_A7EF3C: FStStrNoPop var_9C
  loc_A7EF3F: ConcatStr
  loc_A7EF40: FStStrNoPop var_A0
  loc_A7EF43: LitStr " AND facipago.EstaFapa = 'Anulada' AND detafapa.FepaDefa IS NULL"
  loc_A7EF46: ConcatStr
  loc_A7EF47: FStStrNoPop var_A4
  loc_A7EF4A: Call Proc_297_125_A4BEE4()
  loc_A7EF4F: FFreeStr var_8C = "": var_90 = "": BuscaGastosdeApremioPendientesEnCuotadeFacilidaddePagoAnulada = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A7EF60: FLdRfVar var_A8
  loc_A7EF63: FLdPr Me
  loc_A7EF66: MemLdPr global_64
  loc_A7EF69:  = Me.RecordCount
  loc_A7EF6E: ILdRf var_A8
  loc_A7EF71: LitI4 1
  loc_A7EF76: GeI4
  loc_A7EF77: BranchF loc_A7EF82
  loc_A7EF7A: LitI2_Byte &HFF
  loc_A7EF7C: FStI2 var_86
  loc_A7EF7F: Branch loc_A7EF87
  loc_A7EF82: LitI2_Byte 0
  loc_A7EF84: FStI2 var_86
  loc_A7EF87: ExitProcCbHresult
End Function

Public Function BuscaDetalleOficialJusticia(iCodiOfju) 'A0475C
  'Data Table: 49FFEC
  loc_A04734: ZeroRetVal
  loc_A04736: FLdRfVar var_90
  loc_A04739: FLdI2 iCodiOfju
  loc_A0473C: FLdRfVar var_8C
  loc_A0473F: NewIfNullPr clsoficjust
  loc_A04742: from_stack_2v = clsoficjust.BuscaDetalleOficialdeJusticia(from_stack_1v)
  loc_A04747: FLdZeroAd var_90
  loc_A0474A: FStStr var_88
  loc_A0474D: LitNothing
  loc_A0474F: CastAd
  loc_A04752: FStAdFunc var_8C
  loc_A04755: ExitProcCbHresult
End Function

Public Sub AutorizaciondeImpresion(NumeApre, iImprApre) 'A88A5C
  'Data Table: 49FFEC
  loc_A889DC: LitStr "UPDATE apremio SET ImprApre = "
  loc_A889DF: FLdUI1
  loc_A889E3: CStrI2
  loc_A889E5: FStStrNoPop var_88
  loc_A889E8: ConcatStr
  loc_A889E9: FStStrNoPop var_8C
  loc_A889EC: LitStr ", ImprUsua = '"
  loc_A889EF: ConcatStr
  loc_A889F0: CVarStr var_EC
  loc_A889F3: LitVarStr var_BC, vbNullString
  loc_A889F8: FStVarCopyObj var_CC
  loc_A889FB: FLdRfVar var_CC
  loc_A889FE: ImpAdLdRf MemVar_D9302C
  loc_A88A01: CVarRef
  loc_A88A06: FLdUI1
  loc_A88A0A: CI2UI1
  loc_A88A0C: LitI2_Byte 1
  loc_A88A0E: EqI2
  loc_A88A0F: CVarBoolI2 var_9C
  loc_A88A13: FLdRfVar var_DC
  loc_A88A16: ImpAdCallFPR4  = IIf(, , )
  loc_A88A1B: FLdRfVar var_DC
  loc_A88A1E: ConcatVar var_FC
  loc_A88A22: LitVarStr var_10C, "' WHERE NumeApre = "
  loc_A88A27: ConcatVar var_11C
  loc_A88A2B: ILdRf NumeApre
  loc_A88A2E: CVarI4
  loc_A88A32: ConcatVar var_13C
  loc_A88A36: CStrVarVal var_140
  loc_A88A3A: Call Proc_297_126_A4BDCC()
  loc_A88A3F: FFreeStr var_88 = "": var_8C = ""
  loc_A88A48: FFreeVar var_9C = "": var_CC = "": var_EC = "": var_DC = "": var_FC = "": var_11C = ""
  loc_A88A59: ExitProcHresult
End Sub

Public Sub sSelect(sFiltro, FiltroCbo) 'B0437C
  'Data Table: 49FFEC
  loc_B041B4: ILdRf sFiltro
  loc_B041B7: FStStrCopy var_88
  loc_B041BA: ILdRf FiltroCbo
  loc_B041BD: FStAd var_8C 
  loc_B041C1: ILdRf var_88
  loc_B041C4: LitStr vbNullString
  loc_B041C7: EqStr
  loc_B041C9: BranchF loc_B041D5
  loc_B041CC: LitStr " WHERE apremio.NumeApre = 0"
  loc_B041CF: FStStrCopy var_90
  loc_B041D2: Branch loc_B0430B
  loc_B041D5: FLdRfVar var_92
  loc_B041D8: FLdPr var_8C
  loc_B041DB:  = Me.ListIndex
  loc_B041E0: FLdI2 var_92
  loc_B041E3: FStI2 var_94
  loc_B041E6: FLdI2 var_94
  loc_B041E9: LitI2_Byte 0
  loc_B041EB: EqI2
  loc_B041EC: BranchF loc_B04206
  loc_B041EF: LitStr " WHERE apremio.NumeApre = "
  loc_B041F2: ILdRf var_88
  loc_B041F5: ConcatStr
  loc_B041F6: FStStrNoPop var_98
  loc_B041F9: LitStr " ORDER BY apremio.NumeApre"
  loc_B041FC: ConcatStr
  loc_B041FD: FStStr var_90
  loc_B04200: FFree1Str var_98
  loc_B04203: Branch loc_B0430B
  loc_B04206: FLdI2 var_94
  loc_B04209: LitI2_Byte 1
  loc_B0420B: EqI2
  loc_B0420C: BranchF loc_B04226
  loc_B0420F: LitStr " WHERE apremio.TituApre LIKE '" & Chr(37)
  loc_B04212: ILdRf var_88
  loc_B04215: ConcatStr
  loc_B04216: FStStrNoPop var_98
  loc_B04219: LitStr Chr(37) & "' ORDER BY apremio.TituApre"
  loc_B0421C: ConcatStr
  loc_B0421D: FStStr var_90
  loc_B04220: FFree1Str var_98
  loc_B04223: Branch loc_B0430B
  loc_B04226: FLdI2 var_94
  loc_B04229: LitI2_Byte 2
  loc_B0422B: EqI2
  loc_B0422C: BranchF loc_B04246
  loc_B0422F: LitStr " WHERE apremio.CuenCtct = '"
  loc_B04232: ILdRf var_88
  loc_B04235: ConcatStr
  loc_B04236: FStStrNoPop var_98
  loc_B04239: LitStr "' ORDER BY apremio.CuenCtct"
  loc_B0423C: ConcatStr
  loc_B0423D: FStStr var_90
  loc_B04240: FFree1Str var_98
  loc_B04243: Branch loc_B0430B
  loc_B04246: FLdI2 var_94
  loc_B04249: LitI2_Byte 3
  loc_B0424B: EqI2
  loc_B0424C: BranchF loc_B04266
  loc_B0424F: LitStr " WHERE apremio.AutoApre = "
  loc_B04252: ILdRf var_88
  loc_B04255: ConcatStr
  loc_B04256: FStStrNoPop var_98
  loc_B04259: LitStr " ORDER BY apremio.AutoApre"
  loc_B0425C: ConcatStr
  loc_B0425D: FStStr var_90
  loc_B04260: FFree1Str var_98
  loc_B04263: Branch loc_B0430B
  loc_B04266: FLdI2 var_94
  loc_B04269: LitI2_Byte 4
  loc_B0426B: EqI2
  loc_B0426C: BranchF loc_B042BA
  loc_B0426F: LitStr " WHERE apremio.CucuPers >= '"
  loc_B04272: ILdRf var_88
  loc_B04275: ConcatStr
  loc_B04276: CVarStr var_D8
  loc_B04279: LitVarStr var_A8, "0"
  loc_B0427E: FStVarCopyObj var_B8
  loc_B04281: FLdRfVar var_B8
  loc_B04284: LitI4 &HB
  loc_B04289: ILdRf var_88
  loc_B0428C: FnLenStr
  loc_B0428D: SubI4
  loc_B0428E: FLdRfVar var_C8
  loc_B04291: ImpAdCallFPR4  = String(, )
  loc_B04296: FLdRfVar var_C8
  loc_B04299: ConcatVar var_E8
  loc_B0429D: LitVarStr var_F8, "' ORDER BY apremio.CucuPers"
  loc_B042A2: ConcatVar var_108
  loc_B042A6: CStrVarTmp
  loc_B042A7: FStStr var_90
  loc_B042AA: FFreeVar var_B8 = "": var_D8 = "": var_C8 = "": var_E8 = ""
  loc_B042B7: Branch loc_B0430B
  loc_B042BA: FLdI2 var_94
  loc_B042BD: LitI2_Byte 5
  loc_B042BF: EqI2
  loc_B042C0: BranchF loc_B0430B
  loc_B042C3: LitStr " WHERE MID(apremio.Cucupers,3,8) >= '"
  loc_B042C6: ILdRf var_88
  loc_B042C9: ConcatStr
  loc_B042CA: CVarStr var_D8
  loc_B042CD: LitVarStr var_A8, "0"
  loc_B042D2: FStVarCopyObj var_B8
  loc_B042D5: FLdRfVar var_B8
  loc_B042D8: LitI4 8
  loc_B042DD: ILdRf var_88
  loc_B042E0: FnLenStr
  loc_B042E1: SubI4
  loc_B042E2: FLdRfVar var_C8
  loc_B042E5: ImpAdCallFPR4  = String(, )
  loc_B042EA: FLdRfVar var_C8
  loc_B042ED: ConcatVar var_E8
  loc_B042F1: LitVarStr var_F8, "' ORDER BY MID(apremio.CucuPers,3,8)"
  loc_B042F6: ConcatVar var_108
  loc_B042FA: CStrVarTmp
  loc_B042FB: FStStr var_90
  loc_B042FE: FFreeVar var_B8 = "": var_D8 = "": var_C8 = "": var_E8 = ""
  loc_B0430B: LitStr "SELECT apremio.NumeApre, apremio.CodiOfic, apremio.CuenCtct, apremio.CucuPers, apremio.TituApre, "
  loc_B0430E: LitStr " '' AS calle, 0 AS numepuerta, '' AS barrio, '' AS manzana, '' AS casa, '' AS localidad, 0 AS codipostal,"
  loc_B04311: ConcatStr
  loc_B04312: FStStrNoPop var_98
  loc_B04315: LitStr " apremio.CodiInju, instjudi.DetaInju, apremio.FeemApre, apremio.AutoApre,  estadoapremio.DetaEsap, apremio.CodiReca,"
  loc_B04318: ConcatStr
  loc_B04319: FStStrNoPop var_10C
  loc_B0431C: LitStr " recaudador.DetaReca, apremio.CodiOfju, oficjust.DetaOfju, apremio.CapiApre, apremio.RecaApre, apremio.TotaApre, apremio.ObseApre,"
  loc_B0431F: ConcatStr
  loc_B04320: FStStrNoPop var_110
  loc_B04323: LitStr " apremio.CancApre, '' AS callereal, 0 as  NumePuertaReal, '' AS BarrioReal, '' AS ManzanaReal,"
  loc_B04326: ConcatStr
  loc_B04327: FStStrNoPop var_114
  loc_B0432A: LitStr " '' CasaReal, '' AS LocalidadReal, 0 AS CodigoPostalReal"
  loc_B0432D: ConcatStr
  loc_B0432E: FStStrNoPop var_118
  loc_B04331: LitStr " FROM apremio"
  loc_B04334: ConcatStr
  loc_B04335: FStStrNoPop var_11C
  loc_B04338: LitStr " LEFT JOIN instjudi ON apremio.CodiInju = instjudi.CodiInju"
  loc_B0433B: ConcatStr
  loc_B0433C: FStStrNoPop var_120
  loc_B0433F: LitStr " LEFT JOIN recaudador ON apremio.CodiReca = recaudador.CodiReca"
  loc_B04342: ConcatStr
  loc_B04343: FStStrNoPop var_124
  loc_B04346: LitStr " LEFT JOIN oficjust ON apremio.CodiOfju = oficjust.CodiOfju"
  loc_B04349: ConcatStr
  loc_B0434A: FStStrNoPop var_128
  loc_B0434D: LitStr " LEFT JOIN estadoapremio ON estadoapremio.CodiEsap = apremio.EstaApre"
  loc_B04350: ConcatStr
  loc_B04351: FStStrNoPop var_12C
  loc_B04354: ILdRf var_90
  loc_B04357: ConcatStr
  loc_B04358: FStStrNoPop var_130
  loc_B0435B: Call RedefineRS(from_stack_1v)
  loc_B04360: FFreeStr var_98 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_B04379: ExitProcHresult
End Sub

Private Function Proc_297_122_9E8284(arg_10) '9E8284
  'Data Table: 49FFEC
  loc_9E8268: ILdRf arg_10
  loc_9E826B: FStAd var_88 
  loc_9E826F: ILdRf arg_18
  loc_9E8272: FStAd var_8C 
  loc_9E8276: FLdPr Me
  loc_9E8279: RaiseEvent
  loc_9E8281: ExitProcHresult
End Function

Private Function Proc_297_123_AA1AB0(arg_C) 'AA1AB0
  'Data Table: 49FFEC
  loc_AA19F0: ILdRf arg_18
  loc_AA19F3: FStAd var_88 
  loc_AA19F7: ILdRf arg_C
  loc_AA19FA: FStR4 var_90
  loc_AA19FD: ILdRf var_90
  loc_AA1A00: LitI4 1
  loc_AA1A05: EqI4
  loc_AA1A06: BranchF loc_AA1A0C
  loc_AA1A09: Branch loc_AA1A9F
  loc_AA1A0C: ILdRf var_90
  loc_AA1A0F: LitI4 9
  loc_AA1A14: EqI4
  loc_AA1A15: BranchF loc_AA1A1B
  loc_AA1A18: Branch loc_AA1A9F
  loc_AA1A1B: ILdRf var_90
  loc_AA1A1E: LitI4 2
  loc_AA1A23: EqI4
  loc_AA1A24: BranchF loc_AA1A2A
  loc_AA1A27: Branch loc_AA1A9F
  loc_AA1A2A: ILdRf var_90
  loc_AA1A2D: LitI4 &HB
  loc_AA1A32: EqI4
  loc_AA1A33: BranchF loc_AA1A39
  loc_AA1A36: Branch loc_AA1A9F
  loc_AA1A39: ILdRf var_90
  loc_AA1A3C: LitI4 &HA
  loc_AA1A41: EqI4
  loc_AA1A42: BranchF loc_AA1A48
  loc_AA1A45: Branch loc_AA1A9F
  loc_AA1A48: ILdRf var_90
  loc_AA1A4B: LitI4 7
  loc_AA1A50: EqI4
  loc_AA1A51: BranchF loc_AA1A57
  loc_AA1A54: Branch loc_AA1A9F
  loc_AA1A57: ILdRf var_90
  loc_AA1A5A: LitI4 8
  loc_AA1A5F: EqI4
  loc_AA1A60: BranchF loc_AA1A66
  loc_AA1A63: Branch loc_AA1A9F
  loc_AA1A66: ILdRf var_90
  loc_AA1A69: LitI4 5
  loc_AA1A6E: EqI4
  loc_AA1A6F: BranchF loc_AA1A75
  loc_AA1A72: Branch loc_AA1A9F
  loc_AA1A75: ILdRf var_90
  loc_AA1A78: LitI4 6
  loc_AA1A7D: EqI4
  loc_AA1A7E: BranchF loc_AA1A84
  loc_AA1A81: Branch loc_AA1A9F
  loc_AA1A84: ILdRf var_90
  loc_AA1A87: LitI4 4
  loc_AA1A8C: EqI4
  loc_AA1A8D: BranchF loc_AA1A93
  loc_AA1A90: Branch loc_AA1A9F
  loc_AA1A93: ILdRf var_90
  loc_AA1A96: LitI4 3
  loc_AA1A9B: EqI4
  loc_AA1A9C: BranchF loc_AA1A9F
  loc_AA1A9F: FLdI2 var_8A
  loc_AA1AA2: BranchF loc_AA1AAD
  loc_AA1AA5: LitI4 4
  loc_AA1AAA: IStI4 arg_14
  loc_AA1AAD: ExitProcHresult
End Function

Private Function Proc_297_124_9F0208() '9F0208
  'Data Table: 49FFEC
  loc_9F01E4: LitStr "Primary"
  loc_9F01E7: FLdPr Me
  loc_9F01EA: LateIdLdVar var_94 DispID_4 0
  loc_9F01F1: CastAdVar Me
  loc_9F01F5: FStAdFunc var_98
  loc_9F01F8: FLdPr var_98
  loc_9F0200: FFree1Ad var_98
  loc_9F0203: FFree1Var var_94 = ""
  loc_9F0206: ExitProcHresult
End Function

Private Function Proc_297_125_A4BEE4(arg_C) 'A4BEE4
  'Data Table: 49FFEC
  loc_A4BE90: ILdRf arg_C
  loc_A4BE93: FStStrCopy var_88
  loc_A4BE96: LitNothing
  loc_A4BE98: CastAd
  loc_A4BE9B: FStAdFuncNoPop
  loc_A4BE9E: FLdPr Me
  loc_A4BEA1: MemStAd
  loc_A4BEA5: FFree1Ad var_8C
  loc_A4BEA8: New Recordset
  loc_A4BEAC: FStAdFuncNoPop
  loc_A4BEAF: FLdPr Me
  loc_A4BEB2: MemStAd
  loc_A4BEB6: FFree1Ad var_8C
  loc_A4BEB9: LitI4 -1
  loc_A4BEBE: LitI4 3
  loc_A4BEC3: LitI4 3
  loc_A4BEC8: ImpAdLdI4 MemVar_D9301C
  loc_A4BECB: CVarAd
  loc_A4BECF: PopAdLdVar
  loc_A4BED0: ILdRf var_88
  loc_A4BED3: CVarStr var_9C
  loc_A4BED6: PopAdLdVar
  loc_A4BED7: FLdPr Me
  loc_A4BEDA: MemLdPr global_64
  loc_A4BEDD: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4BEE2: ExitProcHresult
End Function

Private Function Proc_297_126_A4BDCC(arg_C) 'A4BDCC
  'Data Table: 49FFEC
  loc_A4BD78: ILdRf arg_C
  loc_A4BD7B: FStStrCopy var_88
  loc_A4BD7E: LitNothing
  loc_A4BD80: CastAd
  loc_A4BD83: FStAdFuncNoPop
  loc_A4BD86: FLdPr Me
  loc_A4BD89: MemStAd
  loc_A4BD8D: FFree1Ad var_8C
  loc_A4BD90: New Recordset
  loc_A4BD94: FStAdFuncNoPop
  loc_A4BD97: FLdPr Me
  loc_A4BD9A: MemStAd
  loc_A4BD9E: FFree1Ad var_8C
  loc_A4BDA1: LitI4 -1
  loc_A4BDA6: LitI4 3
  loc_A4BDAB: LitI4 3
  loc_A4BDB0: ImpAdLdI4 MemVar_D9301C
  loc_A4BDB3: CVarAd
  loc_A4BDB7: PopAdLdVar
  loc_A4BDB8: ILdRf var_88
  loc_A4BDBB: CVarStr var_9C
  loc_A4BDBE: PopAdLdVar
  loc_A4BDBF: FLdPr Me
  loc_A4BDC2: MemLdPr global_68
  loc_A4BDC5: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4BDCA: ExitProcHresult
End Function

Private Function Proc_297_127_9E0E6C(arg_C) '9E0E6C
  'Data Table: 49FFEC
  loc_9E0E50: ILdI4 arg_C
  loc_9E0E53: FStStrCopy var_88
  loc_9E0E56: ILdRf var_88
  loc_9E0E59: LitStr "Primary"
  loc_9E0E5C: EqStr
  loc_9E0E5E: BranchF loc_9E0E6B
  loc_9E0E61: FLdPr Me
  loc_9E0E64: MemLdStr RsFrm
  loc_9E0E67: IStAd
  loc_9E0E6B: ExitProcHresult
End Function
