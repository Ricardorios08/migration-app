VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsservcome"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0C284
  'Data Table: 45F22C
  loc_A0C248: FLdRfVar var_8C
  loc_A0C24B: FLdRfVar var_88
  loc_A0C24E: FLdPr Me
  loc_A0C251: from_stack_1v = clsservcome.global_4583860Get()
  loc_A0C256: FLdPr var_88
  loc_A0C259:  = Me.RecordCount
  loc_A0C25E: ILdRf var_8C
  loc_A0C261: LitI4 0
  loc_A0C266: GtI4
  loc_A0C267: FFree1Ad var_88
  loc_A0C26A: BranchF loc_A0C283
  loc_A0C26D: FLdRfVar var_88
  loc_A0C270: FLdPr Me
  loc_A0C273: from_stack_1v = clsservcome.global_4583860Get()
  loc_A0C278: FLdPr var_88
  loc_A0C27B: Me.MoveFirst
  loc_A0C280: FFree1Ad var_88
  loc_A0C283: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0C134
  'Data Table: 45F22C
  loc_A0C0F8: FLdRfVar var_8C
  loc_A0C0FB: FLdRfVar var_88
  loc_A0C0FE: FLdPr Me
  loc_A0C101: from_stack_1v = clsservcome.global_4583860Get()
  loc_A0C106: FLdPr var_88
  loc_A0C109:  = Me.RecordCount
  loc_A0C10E: ILdRf var_8C
  loc_A0C111: LitI4 0
  loc_A0C116: GtI4
  loc_A0C117: FFree1Ad var_88
  loc_A0C11A: BranchF loc_A0C133
  loc_A0C11D: FLdRfVar var_88
  loc_A0C120: FLdPr Me
  loc_A0C123: from_stack_1v = clsservcome.global_4583860Get()
  loc_A0C128: FLdPr var_88
  loc_A0C12B: Me.MoveLast
  loc_A0C130: FFree1Ad var_88
  loc_A0C133: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9A0AC
  'Data Table: 45F22C
  loc_A99FF0: FLdRfVar var_8A
  loc_A99FF3: FLdRfVar var_88
  loc_A99FF6: FLdPr Me
  loc_A99FF9: from_stack_1v = clsservcome.global_4583860Get()
  loc_A99FFE: FLdPr var_88
  loc_A9A001:  = Me.EOF
  loc_A9A006: FLdI2 var_8A
  loc_A9A009: NotI4
  loc_A9A00A: FLdRfVar var_94
  loc_A9A00D: FLdRfVar var_90
  loc_A9A010: FLdPr Me
  loc_A9A013: from_stack_1v = clsservcome.global_4583860Get()
  loc_A9A018: FLdPr var_90
  loc_A9A01B:  = Me.RecordCount
  loc_A9A020: ILdRf var_94
  loc_A9A023: LitI4 0
  loc_A9A028: GtI4
  loc_A9A029: AndI4
  loc_A9A02A: FFreeAd var_88 = ""
  loc_A9A031: BranchF loc_A9A04A
  loc_A9A034: FLdRfVar var_88
  loc_A9A037: FLdPr Me
  loc_A9A03A: from_stack_1v = clsservcome.global_4583860Get()
  loc_A9A03F: FLdPr var_88
  loc_A9A042: Me.MoveNext
  loc_A9A047: FFree1Ad var_88
  loc_A9A04A: FLdRfVar var_8A
  loc_A9A04D: FLdRfVar var_88
  loc_A9A050: FLdPr Me
  loc_A9A053: from_stack_1v = clsservcome.global_4583860Get()
  loc_A9A058: FLdPr var_88
  loc_A9A05B:  = Me.EOF
  loc_A9A060: FLdI2 var_8A
  loc_A9A063: FLdRfVar var_94
  loc_A9A066: FLdRfVar var_90
  loc_A9A069: FLdPr Me
  loc_A9A06C: from_stack_1v = clsservcome.global_4583860Get()
  loc_A9A071: FLdPr var_90
  loc_A9A074:  = Me.RecordCount
  loc_A9A079: ILdRf var_94
  loc_A9A07C: LitI4 0
  loc_A9A081: GtI4
  loc_A9A082: AndI4
  loc_A9A083: FFreeAd var_88 = ""
  loc_A9A08A: BranchF loc_A9A0A8
  loc_A9A08D: ImpAdCallFPR4 Beep()
  loc_A9A092: FLdRfVar var_88
  loc_A9A095: FLdPr Me
  loc_A9A098: from_stack_1v = clsservcome.global_4583860Get()
  loc_A9A09D: FLdPr var_88
  loc_A9A0A0: Me.MoveLast
  loc_A9A0A5: FFree1Ad var_88
  loc_A9A0A8: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9D7B68
  'Data Table: 45F22C
  loc_9D7B50: FLdRfVar var_88
  loc_9D7B53: FLdPr Me
  loc_9D7B56: from_stack_1v = clsservcome.global_4583860Get()
  loc_9D7B5B: FLdPr var_88
  loc_9D7B5E: Me.MoveNext
  loc_9D7B63: FFree1Ad var_88
  loc_9D7B66: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E5DC8
  'Data Table: 45F22C
  loc_9E5DA8: LitVar_Missing var_98
  loc_9E5DAB: PopAdLdVar
  loc_9E5DAC: ILdI2 iValor
  loc_9E5DAF: CI4UI1
  loc_9E5DB0: FLdRfVar var_88
  loc_9E5DB3: FLdPr Me
  loc_9E5DB6: from_stack_1v = clsservcome.global_4583860Get()
  loc_9E5DBB: FLdPr var_88
  loc_9E5DBE: Me.Move from_stack_1, from_stack_2
  loc_9E5DC3: FFree1Ad var_88
  loc_9E5DC6: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9AEF8
  'Data Table: 45F22C
  loc_A9AE3C: FLdRfVar var_8A
  loc_A9AE3F: FLdRfVar var_88
  loc_A9AE42: FLdPr Me
  loc_A9AE45: from_stack_1v = clsservcome.global_4583860Get()
  loc_A9AE4A: FLdPr var_88
  loc_A9AE4D:  = Me.BOF
  loc_A9AE52: FLdI2 var_8A
  loc_A9AE55: NotI4
  loc_A9AE56: FLdRfVar var_94
  loc_A9AE59: FLdRfVar var_90
  loc_A9AE5C: FLdPr Me
  loc_A9AE5F: from_stack_1v = clsservcome.global_4583860Get()
  loc_A9AE64: FLdPr var_90
  loc_A9AE67:  = Me.RecordCount
  loc_A9AE6C: ILdRf var_94
  loc_A9AE6F: LitI4 0
  loc_A9AE74: GtI4
  loc_A9AE75: AndI4
  loc_A9AE76: FFreeAd var_88 = ""
  loc_A9AE7D: BranchF loc_A9AE96
  loc_A9AE80: FLdRfVar var_88
  loc_A9AE83: FLdPr Me
  loc_A9AE86: from_stack_1v = clsservcome.global_4583860Get()
  loc_A9AE8B: FLdPr var_88
  loc_A9AE8E: Me.MovePrevious
  loc_A9AE93: FFree1Ad var_88
  loc_A9AE96: FLdRfVar var_8A
  loc_A9AE99: FLdRfVar var_88
  loc_A9AE9C: FLdPr Me
  loc_A9AE9F: from_stack_1v = clsservcome.global_4583860Get()
  loc_A9AEA4: FLdPr var_88
  loc_A9AEA7:  = Me.BOF
  loc_A9AEAC: FLdI2 var_8A
  loc_A9AEAF: FLdRfVar var_94
  loc_A9AEB2: FLdRfVar var_90
  loc_A9AEB5: FLdPr Me
  loc_A9AEB8: from_stack_1v = clsservcome.global_4583860Get()
  loc_A9AEBD: FLdPr var_90
  loc_A9AEC0:  = Me.RecordCount
  loc_A9AEC5: ILdRf var_94
  loc_A9AEC8: LitI4 0
  loc_A9AECD: GtI4
  loc_A9AECE: AndI4
  loc_A9AECF: FFreeAd var_88 = ""
  loc_A9AED6: BranchF loc_A9AEF4
  loc_A9AED9: ImpAdCallFPR4 Beep()
  loc_A9AEDE: FLdRfVar var_88
  loc_A9AEE1: FLdPr Me
  loc_A9AEE4: from_stack_1v = clsservcome.global_4583860Get()
  loc_A9AEE9: FLdPr var_88
  loc_A9AEEC: Me.MoveFirst
  loc_A9AEF1: FFree1Ad var_88
  loc_A9AEF4: ExitProcHresult
End Sub

Public Property Get EOF() '9F10C8
  'Data Table: 45F22C
  loc_9F10A0: FLdRfVar var_8E
  loc_9F10A3: FLdRfVar var_8C
  loc_9F10A6: FLdPr Me
  loc_9F10A9: from_stack_1v = clsservcome.global_4583860Get()
  loc_9F10AE: FLdPr var_8C
  loc_9F10B1:  = Me.EOF
  loc_9F10B6: FLdI2 var_8E
  loc_9F10B9: FStI2 var_86
  loc_9F10BC: FFree1Ad var_8C
  loc_9F10BF: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F0EFC
  'Data Table: 45F22C
  loc_9F0ED4: FLdRfVar var_8E
  loc_9F0ED7: FLdRfVar var_8C
  loc_9F0EDA: FLdPr Me
  loc_9F0EDD: from_stack_1v = clsservcome.global_4583860Get()
  loc_9F0EE2: FLdPr var_8C
  loc_9F0EE5:  = Me.BOF
  loc_9F0EEA: FLdI2 var_8E
  loc_9F0EED: FStI2 var_86
  loc_9F0EF0: FFree1Ad var_8C
  loc_9F0EF3: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9E154C
  'Data Table: 45F22C
  loc_9E1530: ILdI4 sOrden
  loc_9E1533: FLdRfVar var_88
  loc_9E1536: FLdPr Me
  loc_9E1539: from_stack_1v = clsservcome.global_4583860Get()
  loc_9E153E: FLdPr var_88
  loc_9E1541: Me.Sort = from_stack_1
  loc_9E1546: FFree1Ad var_88
  loc_9E1549: ExitProcHresult
End Sub

Public Sub Find(sFind) '9F4990
  'Data Table: 45F22C
  loc_9F4968: LitVar_Missing var_98
  loc_9F496B: PopAdLdVar
  loc_9F496C: LitI4 1
  loc_9F4971: LitI4 0
  loc_9F4976: ILdI4 sFind
  loc_9F4979: FLdRfVar var_88
  loc_9F497C: FLdPr Me
  loc_9F497F: from_stack_1v = clsservcome.global_4583860Get()
  loc_9F4984: FLdPr var_88
  loc_9F4987: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F498C: FFree1Ad var_88
  loc_9F498F: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F3120
  'Data Table: 45F22C
  loc_9F30F8: FLdRfVar var_90
  loc_9F30FB: FLdRfVar var_8C
  loc_9F30FE: FLdPr Me
  loc_9F3101: from_stack_1v = clsservcome.global_4583860Get()
  loc_9F3106: FLdPr var_8C
  loc_9F3109:  = Me.AbsolutePosition
  loc_9F310E: ILdRf var_90
  loc_9F3111: FStR4 var_88
  loc_9F3114: FFree1Ad var_8C
  loc_9F3117: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F0714
  'Data Table: 45F22C
  loc_9F06EC: FLdRfVar var_90
  loc_9F06EF: FLdRfVar var_8C
  loc_9F06F2: FLdPr Me
  loc_9F06F5: from_stack_1v = clsservcome.global_4583860Get()
  loc_9F06FA: FLdPr var_8C
  loc_9F06FD:  = Me.RecordCount
  loc_9F0702: ILdRf var_90
  loc_9F0705: FStR4 var_88
  loc_9F0708: FFree1Ad var_8C
  loc_9F070B: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiCome, CodiRamo, CodiRubr, CodiSubr, FechSeco, ExalSeco, AcprSeco, LiquSeco, CantSeco) 'B3DFDC
  'Data Table: 45F22C
  loc_B3DD50: ILdRf CodiSubr
  loc_B3DD53: FStStrCopy var_88
  loc_B3DD56: ILdRf FechSeco
  loc_B3DD59: FStStrCopy var_8C
  loc_B3DD5C: ILdRf ExalSeco
  loc_B3DD5F: FStStrCopy var_90
  loc_B3DD62: ILdRf AcprSeco
  loc_B3DD65: FStStrCopy var_94
  loc_B3DD68: ILdRf LiquSeco
  loc_B3DD6B: FStStrCopy var_98
  loc_B3DD6E: FLdRfVar var_A0
  loc_B3DD71: ILdRf var_88
  loc_B3DD74: ILdRf CodiRubr
  loc_B3DD77: FLdI2 CodiRamo
  loc_B3DD7A: ILdRf CodiCome
  loc_B3DD7D: from_stack_5v = NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B3DD82: FLdI2 var_A0
  loc_B3DD85: FStI2 var_9E
  loc_B3DD88: FLdRfVar var_A4
  loc_B3DD8B: FLdI2 var_9E
  loc_B3DD8E: ILdRf var_88
  loc_B3DD91: ILdRf CodiRubr
  loc_B3DD94: FLdI2 CodiRamo
  loc_B3DD97: ILdRf CodiCome
  loc_B3DD9A: from_stack_6v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_B3DD9F: ILdRf var_A4
  loc_B3DDA2: LitStr vbNullString
  loc_B3DDA5: NeStr
  loc_B3DDA7: FFree1Str var_A4
  loc_B3DDAA: BranchF loc_B3DDB8
  loc_B3DDAD: LitStr "El RUBRO Y SUBRUBRO YA EXISTE. Reintente..."
  loc_B3DDB0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B3DDB5: Branch loc_B3DFD8
  loc_B3DDB8: LitI2_Byte 0
  loc_B3DDBA: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B3DDBF: FStFPR8 var_344
  loc_B3DDC2: FLdRfVar var_8C
  loc_B3DDC5: CVarRef
  loc_B3DDCA: ImpAdCallI2 IsDate()
  loc_B3DDCF: FStI2 var_A0
  loc_B3DDD2: LitI4 1
  loc_B3DDD7: LitI4 1
  loc_B3DDDC: LitVarStr var_150, "yyyy-mm-dd"
  loc_B3DDE1: FStVarCopyObj var_160
  loc_B3DDE4: FLdRfVar var_160
  loc_B3DDE7: FLdRfVar var_8C
  loc_B3DDEA: CVarRef
  loc_B3DDEF: ImpAdCallI2 Format$(, )
  loc_B3DDF4: FStStr var_348
  loc_B3DDF7: LitStr "START TRANSACTION; INSERT INTO servcome (CodiCome,CodiRamo,CodiRubr,CodiSubr,PrioSeco,FealSeco,FechSeco,ExalSeco,AcprSeco,LiquSeco,CantSeco,CodiUsua) VALUES ("
  loc_B3DDFA: ILdRf CodiCome
  loc_B3DDFD: CStrI4
  loc_B3DDFF: FStStrNoPop var_A4
  loc_B3DE02: ConcatStr
  loc_B3DE03: FStStrNoPop var_A8
  loc_B3DE06: LitStr ","
  loc_B3DE09: ConcatStr
  loc_B3DE0A: FStStrNoPop var_AC
  loc_B3DE0D: FLdI2 CodiRamo
  loc_B3DE10: CStrUI1
  loc_B3DE12: FStStrNoPop var_B0
  loc_B3DE15: ConcatStr
  loc_B3DE16: FStStrNoPop var_B4
  loc_B3DE19: LitStr ","
  loc_B3DE1C: ConcatStr
  loc_B3DE1D: FStStrNoPop var_B8
  loc_B3DE20: ILdRf CodiRubr
  loc_B3DE23: CStrI4
  loc_B3DE25: FStStrNoPop var_BC
  loc_B3DE28: ConcatStr
  loc_B3DE29: FStStrNoPop var_C0
  loc_B3DE2C: LitStr ","
  loc_B3DE2F: ConcatStr
  loc_B3DE30: FStStrNoPop var_C4
  loc_B3DE33: ILdRf var_88
  loc_B3DE36: ConcatStr
  loc_B3DE37: FStStrNoPop var_C8
  loc_B3DE3A: LitStr ","
  loc_B3DE3D: ConcatStr
  loc_B3DE3E: FStStrNoPop var_CC
  loc_B3DE41: FLdI2 var_9E
  loc_B3DE44: CStrUI1
  loc_B3DE46: FStStrNoPop var_D0
  loc_B3DE49: ConcatStr
  loc_B3DE4A: FStStrNoPop var_D4
  loc_B3DE4D: LitStr ",'"
  loc_B3DE50: ConcatStr
  loc_B3DE51: FStStrNoPop var_118
  loc_B3DE54: LitI4 1
  loc_B3DE59: LitI4 1
  loc_B3DE5E: LitVarStr var_104, "yyyy-mm-dd"
  loc_B3DE63: FStVarCopyObj var_114
  loc_B3DE66: FLdRfVar var_114
  loc_B3DE69: FLdFPR8 var_344
  loc_B3DE6C: CVarDate var_F4
  loc_B3DE70: ImpAdCallI2 Format$(, )
  loc_B3DE75: FStStrNoPop var_11C
  loc_B3DE78: ConcatStr
  loc_B3DE79: FStStrNoPop var_120
  loc_B3DE7C: LitStr "',"
  loc_B3DE7F: ConcatStr
  loc_B3DE80: CVarStr var_1C8
  loc_B3DE83: LitVarStr var_198, "Null"
  loc_B3DE88: FStVarCopyObj var_1A8
  loc_B3DE8B: FLdRfVar var_1A8
  loc_B3DE8E: LitStr "'"
  loc_B3DE91: FLdZeroAd var_348
  loc_B3DE94: FStStrNoPop var_164
  loc_B3DE97: ConcatStr
  loc_B3DE98: FStStrNoPop var_168
  loc_B3DE9B: LitStr "'"
  loc_B3DE9E: ConcatStr
  loc_B3DE9F: CVarStr var_188
  loc_B3DEA2: FLdI2 var_A0
  loc_B3DEA5: CVarBoolI2 var_178
  loc_B3DEA9: FLdRfVar var_1B8
  loc_B3DEAC: ImpAdCallFPR4  = IIf(, , )
  loc_B3DEB1: FLdRfVar var_1B8
  loc_B3DEB4: ConcatVar var_1D8
  loc_B3DEB8: LitVarStr var_1E8, ",'"
  loc_B3DEBD: ConcatVar var_1F8
  loc_B3DEC1: ILdRf var_90
  loc_B3DEC4: CVarStr var_208
  loc_B3DEC7: ConcatVar var_218
  loc_B3DECB: LitVarStr var_228, "','"
  loc_B3DED0: ConcatVar var_238
  loc_B3DED4: ILdRf var_94
  loc_B3DED7: CVarStr var_248
  loc_B3DEDA: ConcatVar var_258
  loc_B3DEDE: LitVarStr var_268, "','"
  loc_B3DEE3: ConcatVar var_278
  loc_B3DEE7: ILdRf var_98
  loc_B3DEEA: CVarStr var_288
  loc_B3DEED: ConcatVar var_298
  loc_B3DEF1: LitVarStr var_2A8, "',"
  loc_B3DEF6: ConcatVar var_2B8
  loc_B3DEFA: LitI4 0
  loc_B3DEFF: LitI4 -1
  loc_B3DF04: LitI4 1
  loc_B3DF09: LitStr "."
  loc_B3DF0C: LitStr ","
  loc_B3DF0F: FLdFPR8 CantSeco
  loc_B3DF12: CStrR8
  loc_B3DF14: FStStrNoPop var_2BC
  loc_B3DF17: ImpAdCallI2 Replace(, , , , , )
  loc_B3DF1C: CVarStr var_2CC
  loc_B3DF1F: ConcatVar var_2DC
  loc_B3DF23: LitVarStr var_2EC, ",'"
  loc_B3DF28: ConcatVar var_2FC
  loc_B3DF2C: ImpAdLdI4 MemVar_D9302C
  loc_B3DF2F: CVarStr var_30C
  loc_B3DF32: ConcatVar var_31C
  loc_B3DF36: LitVarStr var_32C, "')"
  loc_B3DF3B: ConcatVar var_33C
  loc_B3DF3F: CStrVarTmp
  loc_B3DF40: FStStr var_9C
  loc_B3DF43: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_118 = "": var_11C = "": var_120 = "": var_164 = "": var_168 = "": var_2BC = ""
  loc_B3DF6E: FFreeVar var_F4 = "": var_114 = "": var_160 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1B8 = "": var_1D8 = "": var_1F8 = "": var_218 = "": var_238 = "": var_258 = "": var_278 = "": var_298 = "": var_2B8 = "": var_2CC = "": var_2DC = "": var_2FC = "": var_31C = ""
  loc_B3DF9B: OnErrorGoto loc_B3DFC8
  loc_B3DF9E: ILdRf var_9C
  loc_B3DFA1: Call EjecutarRs2(from_stack_1v)
  loc_B3DFA6: LitStr "COMMIT;"
  loc_B3DFA9: Call EjecutarRs2(from_stack_1v)
  loc_B3DFAE: Call Requery()
  loc_B3DFB3: FLdI2 var_9E
  loc_B3DFB6: ILdRf var_88
  loc_B3DFB9: ILdRf CodiRubr
  loc_B3DFBC: FLdI2 CodiRamo
  loc_B3DFBF: ILdRf CodiCome
  loc_B3DFC2: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_B3DFC7: ExitProcHresult
  loc_B3DFC8: LitStr "ROLLBACK;"
  loc_B3DFCB: Call EjecutarRs2(from_stack_1v)
  loc_B3DFD0: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B3DFD3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B3DFD8: ExitProcHresult
End Sub

Public Sub Modificar(CodiCome, CodiRamo, CodiRubr, CodiSubr, PrioSeco, FechSeco, ExalSeco, AcprSeco, LiquSeco, CantSeco) 'B1446C
  'Data Table: 45F22C
  loc_B1427C: ILdRf CodiSubr
  loc_B1427F: FStStrCopy var_88
  loc_B14282: ILdRf FechSeco
  loc_B14285: FStStrCopy var_8C
  loc_B14288: ILdRf ExalSeco
  loc_B1428B: FStStrCopy var_90
  loc_B1428E: ILdRf AcprSeco
  loc_B14291: FStStrCopy var_94
  loc_B14294: ILdRf LiquSeco
  loc_B14297: FStStrCopy var_98
  loc_B1429A: FLdRfVar var_9C
  loc_B1429D: FLdI2 PrioSeco
  loc_B142A0: ILdRf var_88
  loc_B142A3: ILdRf CodiRubr
  loc_B142A6: FLdI2 CodiRamo
  loc_B142A9: ILdRf CodiCome
  loc_B142AC: from_stack_6v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_B142B1: ILdRf var_9C
  loc_B142B4: LitStr vbNullString
  loc_B142B7: EqStr
  loc_B142B9: FFree1Str var_9C
  loc_B142BC: BranchF loc_B142CA
  loc_B142BF: LitStr "El RUBRO y SUBRUBRO NO EXISTE. Reintente..."
  loc_B142C2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B142C7: Branch loc_B14450
  loc_B142CA: FLdRfVar var_8C
  loc_B142CD: CVarRef
  loc_B142D2: ImpAdCallI2 IsDate()
  loc_B142D7: FStI2 var_39A
  loc_B142DA: LitI4 1
  loc_B142DF: LitI4 1
  loc_B142E4: LitVarStr var_CC, "yyyy-mm-dd"
  loc_B142E9: FStVarCopyObj var_DC
  loc_B142EC: FLdRfVar var_DC
  loc_B142EF: FLdRfVar var_8C
  loc_B142F2: CVarRef
  loc_B142F7: ImpAdCallI2 Format$(, )
  loc_B142FC: FStStr var_3A0
  loc_B142FF: LitVarStr var_140, "UPDATE servcome SET FechSeco = "
  loc_B14304: LitVarStr var_110, "Null"
  loc_B14309: FStVarCopyObj var_120
  loc_B1430C: FLdRfVar var_120
  loc_B1430F: LitStr "'"
  loc_B14312: FLdZeroAd var_3A0
  loc_B14315: FStStrNoPop var_9C
  loc_B14318: ConcatStr
  loc_B14319: FStStrNoPop var_E0
  loc_B1431C: LitStr "'"
  loc_B1431F: ConcatStr
  loc_B14320: CVarStr var_100
  loc_B14323: FLdI2 var_39A
  loc_B14326: CVarBoolI2 var_F0
  loc_B1432A: FLdRfVar var_130
  loc_B1432D: ImpAdCallFPR4  = IIf(, , )
  loc_B14332: FLdRfVar var_130
  loc_B14335: ConcatVar var_150
  loc_B14339: LitVarStr var_160, ", ExalSeco = '"
  loc_B1433E: ConcatVar var_170
  loc_B14342: ILdRf var_90
  loc_B14345: CVarStr var_180
  loc_B14348: ConcatVar var_190
  loc_B1434C: LitVarStr var_1A0, "', AcprSeco = '"
  loc_B14351: ConcatVar var_1B0
  loc_B14355: ILdRf var_94
  loc_B14358: CVarStr var_1C0
  loc_B1435B: ConcatVar var_1D0
  loc_B1435F: LitVarStr var_1E0, "', LiquSeco = '"
  loc_B14364: ConcatVar var_1F0
  loc_B14368: ILdRf var_98
  loc_B1436B: CVarStr var_200
  loc_B1436E: ConcatVar var_210
  loc_B14372: LitVarStr var_220, "', CantSeco = "
  loc_B14377: ConcatVar var_230
  loc_B1437B: LitI4 0
  loc_B14380: LitI4 -1
  loc_B14385: LitI4 1
  loc_B1438A: LitStr "."
  loc_B1438D: LitStr ","
  loc_B14390: FLdFPR8 CantSeco
  loc_B14393: CStrR8
  loc_B14395: FStStrNoPop var_234
  loc_B14398: ImpAdCallI2 Replace(, , , , , )
  loc_B1439D: CVarStr var_244
  loc_B143A0: ConcatVar var_254
  loc_B143A4: LitVarStr var_264, " WHERE  CodiCome = "
  loc_B143A9: ConcatVar var_274
  loc_B143AD: ILdRf CodiCome
  loc_B143B0: CVarI4
  loc_B143B4: ConcatVar var_294
  loc_B143B8: LitVarStr var_2A4, " AND CodiRamo = "
  loc_B143BD: ConcatVar var_2B4
  loc_B143C1: FLdI2 CodiRamo
  loc_B143C4: CVarI2 var_2C4
  loc_B143C7: ConcatVar var_2D4
  loc_B143CB: LitVarStr var_2E4, " AND CodiRubr = "
  loc_B143D0: ConcatVar var_2F4
  loc_B143D4: ILdRf CodiRubr
  loc_B143D7: CVarI4
  loc_B143DB: ConcatVar var_314
  loc_B143DF: LitVarStr var_324, " AND CodiSubr = "
  loc_B143E4: ConcatVar var_334
  loc_B143E8: ILdRf var_88
  loc_B143EB: CVarStr var_344
  loc_B143EE: ConcatVar var_354
  loc_B143F2: LitVarStr var_364, " AND PrioSeco = "
  loc_B143F7: ConcatVar var_374
  loc_B143FB: FLdI2 PrioSeco
  loc_B143FE: CVarI2 var_384
  loc_B14401: ConcatVar var_394
  loc_B14405: CStrVarVal var_398
  loc_B14409: Call EjecutarRs2(from_stack_1v)
  loc_B1440E: FFreeStr var_9C = "": var_E0 = "": var_234 = "": var_398 = ""
  loc_B1441B: FFreeVar var_DC = "": var_F0 = "": var_100 = "": var_120 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = "": var_210 = "": var_230 = "": var_244 = "": var_254 = "": var_274 = "": var_294 = "": var_2B4 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_354 = "": var_374 = ""
  loc_B14450: Call Requery()
  loc_B14455: FLdI2 PrioSeco
  loc_B14458: ILdRf var_88
  loc_B1445B: ILdRf CodiRubr
  loc_B1445E: FLdI2 CodiRamo
  loc_B14461: ILdRf CodiCome
  loc_B14464: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_B14469: ExitProcHresult
End Sub

Public Sub Delete(CodiCome, CodiRamo, CodiRubr, CodiSubr, PrioSeco) 'ACAD50
  'Data Table: 45F22C
  loc_ACAC60: ILdRf CodiSubr
  loc_ACAC63: FStStrCopy var_88
  loc_ACAC66: FLdRfVar var_8C
  loc_ACAC69: FLdI2 PrioSeco
  loc_ACAC6C: ILdRf var_88
  loc_ACAC6F: ILdRf CodiRubr
  loc_ACAC72: FLdI2 CodiRamo
  loc_ACAC75: ILdRf CodiCome
  loc_ACAC78: from_stack_6v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_ACAC7D: ILdRf var_8C
  loc_ACAC80: LitStr vbNullString
  loc_ACAC83: EqStr
  loc_ACAC85: FFree1Str var_8C
  loc_ACAC88: BranchF loc_ACAC96
  loc_ACAC8B: LitStr "El RUBRO y SUBRUBRO NO EXISTE. Reintente..."
  loc_ACAC8E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACAC93: Branch loc_ACAD0E
  loc_ACAC96: LitStr "DELETE FROM servcome WHERE  CodiCome = "
  loc_ACAC99: ILdRf CodiCome
  loc_ACAC9C: CStrI4
  loc_ACAC9E: FStStrNoPop var_8C
  loc_ACACA1: ConcatStr
  loc_ACACA2: FStStrNoPop var_90
  loc_ACACA5: LitStr " AND CodiRamo = "
  loc_ACACA8: ConcatStr
  loc_ACACA9: FStStrNoPop var_94
  loc_ACACAC: FLdI2 CodiRamo
  loc_ACACAF: CStrUI1
  loc_ACACB1: FStStrNoPop var_98
  loc_ACACB4: ConcatStr
  loc_ACACB5: FStStrNoPop var_9C
  loc_ACACB8: LitStr " AND CodiRubr = "
  loc_ACACBB: ConcatStr
  loc_ACACBC: FStStrNoPop var_A0
  loc_ACACBF: ILdRf CodiRubr
  loc_ACACC2: CStrI4
  loc_ACACC4: FStStrNoPop var_A4
  loc_ACACC7: ConcatStr
  loc_ACACC8: FStStrNoPop var_A8
  loc_ACACCB: LitStr " AND CodiSubr = "
  loc_ACACCE: ConcatStr
  loc_ACACCF: FStStrNoPop var_AC
  loc_ACACD2: ILdRf var_88
  loc_ACACD5: ConcatStr
  loc_ACACD6: FStStrNoPop var_B0
  loc_ACACD9: LitStr " AND PrioSeco = "
  loc_ACACDC: ConcatStr
  loc_ACACDD: FStStrNoPop var_B4
  loc_ACACE0: FLdI2 PrioSeco
  loc_ACACE3: CStrUI1
  loc_ACACE5: FStStrNoPop var_B8
  loc_ACACE8: ConcatStr
  loc_ACACE9: FStStrNoPop var_BC
  loc_ACACEC: Call EjecutarRs2(from_stack_1v)
  loc_ACACF1: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_ACAD0E: Call Requery()
  loc_ACAD13: FLdRfVar var_C4
  loc_ACAD16: FLdRfVar var_C0
  loc_ACAD19: FLdPr Me
  loc_ACAD1C: from_stack_1v = clsservcome.global_4583860Get()
  loc_ACAD21: FLdPr var_C0
  loc_ACAD24:  = Me.RecordCount
  loc_ACAD29: ILdRf var_C4
  loc_ACAD2C: LitI4 0
  loc_ACAD31: GtI4
  loc_ACAD32: FFree1Ad var_C0
  loc_ACAD35: BranchF loc_ACAD4E
  loc_ACAD38: FLdRfVar var_C0
  loc_ACAD3B: FLdPr Me
  loc_ACAD3E: from_stack_1v = clsservcome.global_4583860Get()
  loc_ACAD43: FLdPr var_C0
  loc_ACAD46: Me.MoveNext
  loc_ACAD4B: FFree1Ad var_C0
  loc_ACAD4E: ExitProcHresult
End Sub

Public Sub Baja(CodiCome, CodiRamo, CodiRubr, CodiSubr, PrioSeco, FebaSeco, ExbaSeco) 'AF7EA0
  'Data Table: 45F22C
  loc_AF7D24: ILdRf CodiSubr
  loc_AF7D27: FStStrCopy var_88
  loc_AF7D2A: ILdRf FebaSeco
  loc_AF7D2D: FStStrCopy var_8C
  loc_AF7D30: ILdRf ExbaSeco
  loc_AF7D33: FStStrCopy var_90
  loc_AF7D36: FLdRfVar var_94
  loc_AF7D39: FLdI2 PrioSeco
  loc_AF7D3C: ILdRf var_88
  loc_AF7D3F: ILdRf CodiRubr
  loc_AF7D42: FLdI2 CodiRamo
  loc_AF7D45: ILdRf CodiCome
  loc_AF7D48: from_stack_6v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_AF7D4D: ILdRf var_94
  loc_AF7D50: LitStr vbNullString
  loc_AF7D53: EqStr
  loc_AF7D55: FFree1Str var_94
  loc_AF7D58: BranchF loc_AF7D66
  loc_AF7D5B: LitStr "El RUBRO y SUBRUBRO NO EXISTE. Reintente..."
  loc_AF7D5E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF7D63: Branch loc_AF7E84
  loc_AF7D66: FLdRfVar var_8C
  loc_AF7D69: CVarRef
  loc_AF7D6E: ImpAdCallI2 IsDate()
  loc_AF7D73: FStI2 var_2CE
  loc_AF7D76: LitI4 1
  loc_AF7D7B: LitI4 1
  loc_AF7D80: LitVarStr var_C4, "yyyy-mm-dd"
  loc_AF7D85: FStVarCopyObj var_D4
  loc_AF7D88: FLdRfVar var_D4
  loc_AF7D8B: FLdRfVar var_8C
  loc_AF7D8E: CVarRef
  loc_AF7D93: ImpAdCallI2 Format$(, )
  loc_AF7D98: FStStr var_2D4
  loc_AF7D9B: LitVarStr var_138, "UPDATE servcome SET FebaSeco = "
  loc_AF7DA0: LitVarStr var_108, "Null"
  loc_AF7DA5: FStVarCopyObj var_118
  loc_AF7DA8: FLdRfVar var_118
  loc_AF7DAB: LitStr "'"
  loc_AF7DAE: FLdZeroAd var_2D4
  loc_AF7DB1: FStStrNoPop var_94
  loc_AF7DB4: ConcatStr
  loc_AF7DB5: FStStrNoPop var_D8
  loc_AF7DB8: LitStr "'"
  loc_AF7DBB: ConcatStr
  loc_AF7DBC: CVarStr var_F8
  loc_AF7DBF: FLdI2 var_2CE
  loc_AF7DC2: CVarBoolI2 var_E8
  loc_AF7DC6: FLdRfVar var_128
  loc_AF7DC9: ImpAdCallFPR4  = IIf(, , )
  loc_AF7DCE: FLdRfVar var_128
  loc_AF7DD1: ConcatVar var_148
  loc_AF7DD5: LitVarStr var_158, ", ExbaSeco = '"
  loc_AF7DDA: ConcatVar var_168
  loc_AF7DDE: ILdRf var_90
  loc_AF7DE1: CVarStr var_178
  loc_AF7DE4: ConcatVar var_188
  loc_AF7DE8: LitVarStr var_198, "' WHERE  CodiCome = "
  loc_AF7DED: ConcatVar var_1A8
  loc_AF7DF1: ILdRf CodiCome
  loc_AF7DF4: CVarI4
  loc_AF7DF8: ConcatVar var_1C8
  loc_AF7DFC: LitVarStr var_1D8, " AND CodiRamo = "
  loc_AF7E01: ConcatVar var_1E8
  loc_AF7E05: FLdI2 CodiRamo
  loc_AF7E08: CVarI2 var_1F8
  loc_AF7E0B: ConcatVar var_208
  loc_AF7E0F: LitVarStr var_218, " AND CodiRubr = "
  loc_AF7E14: ConcatVar var_228
  loc_AF7E18: ILdRf CodiRubr
  loc_AF7E1B: CVarI4
  loc_AF7E1F: ConcatVar var_248
  loc_AF7E23: LitVarStr var_258, " AND CodiSubr = "
  loc_AF7E28: ConcatVar var_268
  loc_AF7E2C: ILdRf var_88
  loc_AF7E2F: CVarStr var_278
  loc_AF7E32: ConcatVar var_288
  loc_AF7E36: LitVarStr var_298, " AND PrioSeco = "
  loc_AF7E3B: ConcatVar var_2A8
  loc_AF7E3F: FLdI2 PrioSeco
  loc_AF7E42: CVarI2 var_2B8
  loc_AF7E45: ConcatVar var_2C8
  loc_AF7E49: CStrVarVal var_2CC
  loc_AF7E4D: Call EjecutarRs2(from_stack_1v)
  loc_AF7E52: FFreeStr var_94 = "": var_D8 = "": var_2CC = ""
  loc_AF7E5D: FFreeVar var_D4 = "": var_E8 = "": var_F8 = "": var_118 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_288 = "": var_2A8 = ""
  loc_AF7E84: Call Requery()
  loc_AF7E89: FLdI2 PrioSeco
  loc_AF7E8C: ILdRf var_88
  loc_AF7E8F: ILdRf CodiRubr
  loc_AF7E92: FLdI2 CodiRamo
  loc_AF7E95: ILdRf CodiCome
  loc_AF7E98: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_AF7E9D: ExitProcHresult
End Sub

Public Sub Requery() 'A026F8
  'Data Table: 45F22C
  loc_A026C8: LitI4 -1
  loc_A026CD: FLdRfVar var_88
  loc_A026D0: FLdPr Me
  loc_A026D3: from_stack_1v = clsservcome.global_4583860Get()
  loc_A026D8: FLdPr var_88
  loc_A026DB: Me.Requery from_stack_1
  loc_A026E0: FFree1Ad var_88
  loc_A026E3: LitVarStr var_98, "Primary"
  loc_A026E8: PopAdLdVar
  loc_A026E9: FLdPr Me
  loc_A026EC: LateIdCall
  loc_A026F4: ExitProcHresult
  loc_A026F5: IDvI4
End Sub

Public Sub Update() 'A25210
  'Data Table: 45F22C
  loc_A251CC: FLdRfVar var_88
  loc_A251CF: FLdPr Me
  loc_A251D2: from_stack_1v = clsservcome.global_4583860Get()
  loc_A251D7: FLdZeroAd var_88
  loc_A251DA: FStAdFunc var_8C
  loc_A251DD: LitI4 3
  loc_A251E2: FLdPr var_8C
  loc_A251E5: Me.UpdateBatch
  loc_A251EA: FLdRfVar var_90
  loc_A251ED: FLdPr var_8C
  loc_A251F0:  = Me.EditMode
  loc_A251F5: ILdRf var_90
  loc_A251F8: LitI4 2
  loc_A251FD: EqI4
  loc_A251FE: BranchF loc_A25206
  loc_A25201: Call MoveLast()
  loc_A25206: LitNothing
  loc_A25208: FStAd var_8C 
  loc_A2520C: ExitProcHresult
  loc_A2520D: FStStrNoPop var_108
End Sub

Public Sub Cancel() 'A4DBE0
  'Data Table: 45F22C
  loc_A4DB8C: FLdRfVar var_88
  loc_A4DB8F: FLdPr Me
  loc_A4DB92: from_stack_1v = clsservcome.global_4583860Get()
  loc_A4DB97: FLdZeroAd var_88
  loc_A4DB9A: FStAdFunc var_8C
  loc_A4DB9D: FLdRfVar var_90
  loc_A4DBA0: FLdPr var_8C
  loc_A4DBA3:  = Me.RecordCount
  loc_A4DBA8: ILdRf var_90
  loc_A4DBAB: LitI4 0
  loc_A4DBB0: GtI4
  loc_A4DBB1: BranchF loc_A4DBD8
  loc_A4DBB4: FLdPr var_8C
  loc_A4DBB7: Me.CancelUpdate
  loc_A4DBBC: FLdRfVar var_90
  loc_A4DBBF: FLdPr var_8C
  loc_A4DBC2:  = Me.EditMode
  loc_A4DBC7: ILdRf var_90
  loc_A4DBCA: LitI4 2
  loc_A4DBCF: EqI4
  loc_A4DBD0: BranchF loc_A4DBD8
  loc_A4DBD3: Call MoveFirst()
  loc_A4DBD8: LitNothing
  loc_A4DBDA: FStAd var_8C 
  loc_A4DBDE: ExitProcHresult
  loc_A4DBDF: PopAdLdVar
End Sub

Public Property Get EditingRecord() '9FD474
  'Data Table: 45F22C
  loc_9FD448: FLdRfVar var_90
  loc_9FD44B: FLdRfVar var_8C
  loc_9FD44E: FLdPr Me
  loc_9FD451: from_stack_1v = clsservcome.global_4583860Get()
  loc_9FD456: FLdPr var_8C
  loc_9FD459:  = Me.EditMode
  loc_9FD45E: ILdRf var_90
  loc_9FD461: LitI4 0
  loc_9FD466: NeI4
  loc_9FD467: FStI2 var_86
  loc_9FD46A: FFree1Ad var_8C
  loc_9FD46D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A6E7CC
  'Data Table: 45F22C
  loc_A6E758: ILdRf sSelect
  loc_A6E75B: FStStrCopy var_88
  loc_A6E75E: LitNothing
  loc_A6E760: CastAd
  loc_A6E763: FStAdFuncNoPop
  loc_A6E766: FLdPr Me
  loc_A6E769: Call clsservcome.global_4583860Set(from_stack_1v)
  loc_A6E76E: FFree1Ad var_8C
  loc_A6E771: New Recordset
  loc_A6E775: FStAdFuncNoPop
  loc_A6E778: FLdPr Me
  loc_A6E77B: Call clsservcome.global_4583860Set(from_stack_1v)
  loc_A6E780: FFree1Ad var_8C
  loc_A6E783: LitI4 -1
  loc_A6E788: LitI4 3
  loc_A6E78D: LitI4 3
  loc_A6E792: ImpAdLdI4 MemVar_D9301C
  loc_A6E795: CVarAd
  loc_A6E799: PopAdLdVar
  loc_A6E79A: ILdRf var_88
  loc_A6E79D: CVarStr var_9C
  loc_A6E7A0: PopAdLdVar
  loc_A6E7A1: FLdRfVar var_8C
  loc_A6E7A4: FLdPr Me
  loc_A6E7A7: from_stack_1v = clsservcome.global_4583860Get()
  loc_A6E7AC: FLdPr var_8C
  loc_A6E7AF: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6E7B4: FFree1Ad var_8C
  loc_A6E7B7: LitVarStr var_9C, "Primary"
  loc_A6E7BC: PopAdLdVar
  loc_A6E7BD: FLdPr Me
  loc_A6E7C0: LateIdCall
  loc_A6E7C8: ExitProcHresult
  loc_A6E7C9: DOC
End Sub

Public Sub EjecutarRs2(sSelect) 'A59F00
  'Data Table: 45F22C
  loc_A59EA0: ILdRf sSelect
  loc_A59EA3: FStStrCopy var_88
  loc_A59EA6: LitNothing
  loc_A59EA8: CastAd
  loc_A59EAB: FStAdFuncNoPop
  loc_A59EAE: FLdPr Me
  loc_A59EB1: Call clsservcome.global_4583860Set(from_stack_1v)
  loc_A59EB6: FFree1Ad var_8C
  loc_A59EB9: New Recordset
  loc_A59EBD: FStAdFuncNoPop
  loc_A59EC0: FLdPr Me
  loc_A59EC3: Call clsservcome.global_4583860Set(from_stack_1v)
  loc_A59EC8: FFree1Ad var_8C
  loc_A59ECB: LitI4 -1
  loc_A59ED0: LitI4 3
  loc_A59ED5: LitI4 3
  loc_A59EDA: ImpAdLdI4 MemVar_D9301C
  loc_A59EDD: CVarAd
  loc_A59EE1: PopAdLdVar
  loc_A59EE2: ILdRf var_88
  loc_A59EE5: CVarStr var_9C
  loc_A59EE8: PopAdLdVar
  loc_A59EE9: FLdRfVar var_8C
  loc_A59EEC: FLdPr Me
  loc_A59EEF: from_stack_1v = clsservcome.global_4583860Get()
  loc_A59EF4: FLdPr var_8C
  loc_A59EF7: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A59EFC: FFree1Ad var_8C
  loc_A59EFF: ExitProcHresult
End Sub

Public Sub Encontrar(CodiCome, CodiRamo, CodiRubr, CodiSubr, PrioSeco) 'A81AB8
  'Data Table: 45F22C
  loc_A81A2C: ILdRf CodiSubr
  loc_A81A2F: FStStrCopy var_88
  loc_A81A32: LitStr "CodiCome = "
  loc_A81A35: ILdRf CodiCome
  loc_A81A38: CStrI4
  loc_A81A3A: FStStrNoPop var_8C
  loc_A81A3D: ConcatStr
  loc_A81A3E: PopTmpLdAdStr
  loc_A81A42: Call Find(from_stack_1v)
  loc_A81A47: FFreeStr var_8C = ""
  loc_A81A4E: LitStr "CodiRamo = "
  loc_A81A51: FLdI2 CodiRamo
  loc_A81A54: CStrUI1
  loc_A81A56: FStStrNoPop var_8C
  loc_A81A59: ConcatStr
  loc_A81A5A: PopTmpLdAdStr
  loc_A81A5E: Call Find(from_stack_1v)
  loc_A81A63: FFreeStr var_8C = ""
  loc_A81A6A: LitStr "CodiRubr = "
  loc_A81A6D: ILdRf CodiRubr
  loc_A81A70: CStrI4
  loc_A81A72: FStStrNoPop var_8C
  loc_A81A75: ConcatStr
  loc_A81A76: PopTmpLdAdStr
  loc_A81A7A: Call Find(from_stack_1v)
  loc_A81A7F: FFreeStr var_8C = ""
  loc_A81A86: LitStr "CodiSubr = "
  loc_A81A89: ILdRf var_88
  loc_A81A8C: ConcatStr
  loc_A81A8D: PopTmpLdAdStr
  loc_A81A91: Call Find(from_stack_1v)
  loc_A81A96: FFree1Str var_8C
  loc_A81A99: LitStr "PrioSeco = "
  loc_A81A9C: FLdI2 PrioSeco
  loc_A81A9F: CStrUI1
  loc_A81AA1: FStStrNoPop var_8C
  loc_A81AA4: ConcatStr
  loc_A81AA5: PopTmpLdAdStr
  loc_A81AA9: Call Find(from_stack_1v)
  loc_A81AAE: FFreeStr var_8C = ""
  loc_A81AB5: ExitProcHresult
End Sub

Public Property Get DataSource() 'A09974
  'Data Table: 45F22C
  loc_A09944: ZeroRetVal
  loc_A09946: FLdRfVar var_90
  loc_A09949: FLdRfVar var_8C
  loc_A0994C: FLdPr Me
  loc_A0994F: from_stack_1v = clsservcome.global_4583860Get()
  loc_A09954: FLdPr var_8C
  loc_A09957:  = Me.DataSource
  loc_A0995C: ILdRf var_90
  loc_A0995F: CastAd
  loc_A09962: FStAdFunc var_88
  loc_A09965: FFreeAd var_8C = ""
  loc_A0996C: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9EFCA8
  'Data Table: 45F22C
  loc_9EFC80: FLdRfVar var_90
  loc_9EFC83: FLdRfVar var_8C
  loc_9EFC86: FLdPr Me
  loc_9EFC89: from_stack_1v = clsservcome.global_4583860Get()
  loc_9EFC8E: FLdPr var_8C
  loc_9EFC91:  = Me.EditMode
  loc_9EFC96: ILdRf var_90
  loc_9EFC99: FStR4 var_88
  loc_9EFC9C: FFree1Ad var_8C
  loc_9EFC9F: ExitProcCbHresult
  loc_9EFCA5: FStStrCopy Me00
End Sub

Public Property Get CodiCome() 'A4DD7C
  'Data Table: 45F22C
  loc_A4DD30: FLdRfVar var_B4
  loc_A4DD33: FLdRfVar var_A4
  loc_A4DD36: LitVarStr var_A0, "CodiCome"
  loc_A4DD3B: PopAdLdVar
  loc_A4DD3C: FLdRfVar var_90
  loc_A4DD3F: FLdRfVar var_8C
  loc_A4DD42: FLdPr Me
  loc_A4DD45: from_stack_1v = clsservcome.global_4583860Get()
  loc_A4DD4A: FLdPr var_8C
  loc_A4DD4D:  = Me.Fields
  loc_A4DD52: FLdPr var_90
  loc_A4DD55: from_stack_2 = Me.Item(from_stack_1)
  loc_A4DD5A: FLdPr var_A4
  loc_A4DD5D:  = Me.Value
  loc_A4DD62: FLdRfVar var_B4
  loc_A4DD65: CI4Var
  loc_A4DD67: FStR4 var_88
  loc_A4DD6A: FFreeAd var_8C = "": var_90 = ""
  loc_A4DD73: FFree1Var var_B4 = ""
  loc_A4DD76: ExitProcCbHresult
End Sub

Public Property Let CodiCome(vDato) '9EFF88
  'Data Table: 45F22C
  loc_9EFF60: ILdRf vDato
  loc_9EFF63: CVarI4
  loc_9EFF67: PopAdLdVar
  loc_9EFF68: LitVarStr var_98, "CodiCome"
  loc_9EFF6D: PopAdLdVar
  loc_9EFF6E: FLdRfVar var_88
  loc_9EFF71: FLdPr Me
  loc_9EFF74: from_stack_1v = clsservcome.global_4583860Get()
  loc_9EFF79: FLdPr var_88
  loc_9EFF7C: Me.Collect = from_stack_1
  loc_9EFF81: FFree1Ad var_88
  loc_9EFF84: ExitProcHresult
End Sub

Public Property Get CodiRamo() 'A4DE08
  'Data Table: 45F22C
  loc_A4DDBC: FLdRfVar var_B4
  loc_A4DDBF: FLdRfVar var_A4
  loc_A4DDC2: LitVarStr var_A0, "CodiRamo"
  loc_A4DDC7: PopAdLdVar
  loc_A4DDC8: FLdRfVar var_90
  loc_A4DDCB: FLdRfVar var_8C
  loc_A4DDCE: FLdPr Me
  loc_A4DDD1: from_stack_1v = clsservcome.global_4583860Get()
  loc_A4DDD6: FLdPr var_8C
  loc_A4DDD9:  = Me.Fields
  loc_A4DDDE: FLdPr var_90
  loc_A4DDE1: from_stack_2 = Me.Item(from_stack_1)
  loc_A4DDE6: FLdPr var_A4
  loc_A4DDE9:  = Me.Value
  loc_A4DDEE: FLdRfVar var_B4
  loc_A4DDF1: CI2Var
  loc_A4DDF2: FStI2 var_86
  loc_A4DDF5: FFreeAd var_8C = "": var_90 = ""
  loc_A4DDFE: FFree1Var var_B4 = ""
  loc_A4DE01: ExitProcCbHresult
  loc_A4DE07: Ary1StVar
End Sub

Public Property Let CodiRamo(vDato) '9EBBF8
  'Data Table: 45F22C
  loc_9EBBD4: FLdI2 vDato
  loc_9EBBD7: CVarI2 var_A8
  loc_9EBBDA: PopAdLdVar
  loc_9EBBDB: LitVarStr var_98, "CodiRamo"
  loc_9EBBE0: PopAdLdVar
  loc_9EBBE1: FLdRfVar var_88
  loc_9EBBE4: FLdPr Me
  loc_9EBBE7: from_stack_1v = clsservcome.global_4583860Get()
  loc_9EBBEC: FLdPr var_88
  loc_9EBBEF: Me.Collect = from_stack_1
  loc_9EBBF4: FFree1Ad var_88
  loc_9EBBF7: ExitProcHresult
End Sub

Public Property Get CodiRubr() 'A436E8
  'Data Table: 45F22C
  loc_A436A4: ZeroRetValVar
  loc_A436A6: FLdRfVar var_B0
  loc_A436A9: LitVarStr var_AC, "CodiRubr"
  loc_A436AE: PopAdLdVar
  loc_A436AF: FLdRfVar var_9C
  loc_A436B2: FLdRfVar var_98
  loc_A436B5: FLdPr Me
  loc_A436B8: from_stack_1v = clsservcome.global_4583860Get()
  loc_A436BD: FLdPr var_98
  loc_A436C0:  = Me.Fields
  loc_A436C5: FLdPr var_9C
  loc_A436C8: from_stack_2 = Me.Item(from_stack_1)
  loc_A436CD: FLdZeroAd var_B0
  loc_A436D0: CVarAd
  loc_A436D4: FStVar CodiRubr
  loc_A436D8: FFreeAd var_98 = ""
  loc_A436DF: ExitProcCbHresult
  loc_A436E5: MemStR8 global_1693
End Sub

Public Property Let CodiRubr(vDato) '9FC090
  'Data Table: 45F22C
  loc_9FC068: FDupVar
  loc_9FC06E: FLdVar var_94
  loc_9FC072: LitVarStr var_A8, "CodiRubr"
  loc_9FC077: PopAdLdVar
  loc_9FC078: FLdRfVar var_98
  loc_9FC07B: FLdPr Me
  loc_9FC07E: from_stack_1v = clsservcome.global_4583860Get()
  loc_9FC083: FLdPr var_98
  loc_9FC086: Me.Collect = from_stack_1
  loc_9FC08B: FFree1Ad var_98
  loc_9FC08E: ExitProcHresult
End Sub

Public Property Get CodiSubr() 'A575B0
  'Data Table: 45F22C
  loc_A57560: ZeroRetVal
  loc_A57562: FLdRfVar var_B4
  loc_A57565: FLdRfVar var_A4
  loc_A57568: LitVarStr var_A0, "CodiSubr"
  loc_A5756D: PopAdLdVar
  loc_A5756E: FLdRfVar var_90
  loc_A57571: FLdRfVar var_8C
  loc_A57574: FLdPr Me
  loc_A57577: from_stack_1v = clsservcome.global_4583860Get()
  loc_A5757C: FLdPr var_8C
  loc_A5757F:  = Me.Fields
  loc_A57584: FLdPr var_90
  loc_A57587: from_stack_2 = Me.Item(from_stack_1)
  loc_A5758C: FLdPr var_A4
  loc_A5758F:  = Me.Value
  loc_A57594: FLdRfVar var_B4
  loc_A57597: CStrVarTmp
  loc_A57598: FStStr var_88
  loc_A5759B: FFreeAd var_8C = "": var_90 = ""
  loc_A575A4: FFree1Var var_B4 = ""
  loc_A575A7: ExitProcCbHresult
  loc_A575AF: FnLBound
End Sub

Public Property Let CodiSubr(vDato) 'A033D8
  'Data Table: 45F22C
  loc_A033AC: ILdRf vDato
  loc_A033AF: FStStrCopy var_88
  loc_A033B2: ILdRf var_88
  loc_A033B5: CVarStr var_AC
  loc_A033B8: PopAdLdVar
  loc_A033B9: LitVarStr var_9C, "CodiSubr"
  loc_A033BE: PopAdLdVar
  loc_A033BF: FLdRfVar var_8C
  loc_A033C2: FLdPr Me
  loc_A033C5: from_stack_1v = clsservcome.global_4583860Get()
  loc_A033CA: FLdPr var_8C
  loc_A033CD: Me.Collect = from_stack_1
  loc_A033D2: FFree1Ad var_8C
  loc_A033D5: ExitProcHresult
End Sub

Public Property Get PrioSeco() 'A4DF20
  'Data Table: 45F22C
  loc_A4DED4: FLdRfVar var_B4
  loc_A4DED7: FLdRfVar var_A4
  loc_A4DEDA: LitVarStr var_A0, "PrioSeco"
  loc_A4DEDF: PopAdLdVar
  loc_A4DEE0: FLdRfVar var_90
  loc_A4DEE3: FLdRfVar var_8C
  loc_A4DEE6: FLdPr Me
  loc_A4DEE9: from_stack_1v = clsservcome.global_4583860Get()
  loc_A4DEEE: FLdPr var_8C
  loc_A4DEF1:  = Me.Fields
  loc_A4DEF6: FLdPr var_90
  loc_A4DEF9: from_stack_2 = Me.Item(from_stack_1)
  loc_A4DEFE: FLdPr var_A4
  loc_A4DF01:  = Me.Value
  loc_A4DF06: FLdRfVar var_B4
  loc_A4DF09: CI2Var
  loc_A4DF0A: FStI2 var_86
  loc_A4DF0D: FFreeAd var_8C = "": var_90 = ""
  loc_A4DF16: FFree1Var var_B4 = ""
  loc_A4DF19: ExitProcCbHresult
End Sub

Public Property Let PrioSeco(vDato) '9EBF10
  'Data Table: 45F22C
  loc_9EBEEC: FLdI2 vDato
  loc_9EBEEF: CVarI2 var_A8
  loc_9EBEF2: PopAdLdVar
  loc_9EBEF3: LitVarStr var_98, "PrioSeco"
  loc_9EBEF8: PopAdLdVar
  loc_9EBEF9: FLdRfVar var_88
  loc_9EBEFC: FLdPr Me
  loc_9EBEFF: from_stack_1v = clsservcome.global_4583860Get()
  loc_9EBF04: FLdPr var_88
  loc_9EBF07: Me.Collect = from_stack_1
  loc_9EBF0C: FFree1Ad var_88
  loc_9EBF0F: ExitProcHresult
End Sub

Public Property Get FealSeco() 'A57644
  'Data Table: 45F22C
  loc_A575F4: ZeroRetVal
  loc_A575F6: FLdRfVar var_B4
  loc_A575F9: FLdRfVar var_A4
  loc_A575FC: LitVarStr var_A0, "FealSeco"
  loc_A57601: PopAdLdVar
  loc_A57602: FLdRfVar var_90
  loc_A57605: FLdRfVar var_8C
  loc_A57608: FLdPr Me
  loc_A5760B: from_stack_1v = clsservcome.global_4583860Get()
  loc_A57610: FLdPr var_8C
  loc_A57613:  = Me.Fields
  loc_A57618: FLdPr var_90
  loc_A5761B: from_stack_2 = Me.Item(from_stack_1)
  loc_A57620: FLdPr var_A4
  loc_A57623:  = Me.Value
  loc_A57628: FLdRfVar var_B4
  loc_A5762B: CStrVarTmp
  loc_A5762C: FStStr var_88
  loc_A5762F: FFreeAd var_8C = "": var_90 = ""
  loc_A57638: FFree1Var var_B4 = ""
  loc_A5763B: ExitProcCbHresult
End Sub

Public Property Let FealSeco(vDato) 'A03504
  'Data Table: 45F22C
  loc_A034D8: ILdRf vDato
  loc_A034DB: FStStrCopy var_88
  loc_A034DE: ILdRf var_88
  loc_A034E1: CVarStr var_AC
  loc_A034E4: PopAdLdVar
  loc_A034E5: LitVarStr var_9C, "FealSeco"
  loc_A034EA: PopAdLdVar
  loc_A034EB: FLdRfVar var_8C
  loc_A034EE: FLdPr Me
  loc_A034F1: from_stack_1v = clsservcome.global_4583860Get()
  loc_A034F6: FLdPr var_8C
  loc_A034F9: Me.Collect = from_stack_1
  loc_A034FE: FFree1Ad var_8C
  loc_A03501: ExitProcHresult
End Sub

Public Property Get FechSeco() 'A5776C
  'Data Table: 45F22C
  loc_A5771C: ZeroRetVal
  loc_A5771E: FLdRfVar var_B4
  loc_A57721: FLdRfVar var_A4
  loc_A57724: LitVarStr var_A0, "FechSeco"
  loc_A57729: PopAdLdVar
  loc_A5772A: FLdRfVar var_90
  loc_A5772D: FLdRfVar var_8C
  loc_A57730: FLdPr Me
  loc_A57733: from_stack_1v = clsservcome.global_4583860Get()
  loc_A57738: FLdPr var_8C
  loc_A5773B:  = Me.Fields
  loc_A57740: FLdPr var_90
  loc_A57743: from_stack_2 = Me.Item(from_stack_1)
  loc_A57748: FLdPr var_A4
  loc_A5774B:  = Me.Value
  loc_A57750: FLdRfVar var_B4
  loc_A57753: CStrVarTmp
  loc_A57754: FStStr var_88
  loc_A57757: FFreeAd var_8C = "": var_90 = ""
  loc_A57760: FFree1Var var_B4 = ""
  loc_A57763: ExitProcCbHresult
  loc_A57769: GtR4
  loc_A5776A: FnCDblR8
End Sub

Public Property Let FechSeco(vDato) 'A035CC
  'Data Table: 45F22C
  loc_A035A0: ILdRf vDato
  loc_A035A3: FStStrCopy var_88
  loc_A035A6: ILdRf var_88
  loc_A035A9: CVarStr var_AC
  loc_A035AC: PopAdLdVar
  loc_A035AD: LitVarStr var_9C, "FechSeco"
  loc_A035B2: PopAdLdVar
  loc_A035B3: FLdRfVar var_8C
  loc_A035B6: FLdPr Me
  loc_A035B9: from_stack_1v = clsservcome.global_4583860Get()
  loc_A035BE: FLdPr var_8C
  loc_A035C1: Me.Collect = from_stack_1
  loc_A035C6: FFree1Ad var_8C
  loc_A035C9: ExitProcHresult
End Sub

Public Property Get ExalSeco() 'A57800
  'Data Table: 45F22C
  loc_A577B0: ZeroRetVal
  loc_A577B2: FLdRfVar var_B4
  loc_A577B5: FLdRfVar var_A4
  loc_A577B8: LitVarStr var_A0, "ExalSeco"
  loc_A577BD: PopAdLdVar
  loc_A577BE: FLdRfVar var_90
  loc_A577C1: FLdRfVar var_8C
  loc_A577C4: FLdPr Me
  loc_A577C7: from_stack_1v = clsservcome.global_4583860Get()
  loc_A577CC: FLdPr var_8C
  loc_A577CF:  = Me.Fields
  loc_A577D4: FLdPr var_90
  loc_A577D7: from_stack_2 = Me.Item(from_stack_1)
  loc_A577DC: FLdPr var_A4
  loc_A577DF:  = Me.Value
  loc_A577E4: FLdRfVar var_B4
  loc_A577E7: CStrVarTmp
  loc_A577E8: FStStr var_88
  loc_A577EB: FFreeAd var_8C = "": var_90 = ""
  loc_A577F4: FFree1Var var_B4 = ""
  loc_A577F7: ExitProcCbHresult
  loc_A577FD: FStStrCopy Me00
End Sub

Public Property Let ExalSeco(vDato) 'A03630
  'Data Table: 45F22C
  loc_A03604: ILdRf vDato
  loc_A03607: FStStrCopy var_88
  loc_A0360A: ILdRf var_88
  loc_A0360D: CVarStr var_AC
  loc_A03610: PopAdLdVar
  loc_A03611: LitVarStr var_9C, "ExalSeco"
  loc_A03616: PopAdLdVar
  loc_A03617: FLdRfVar var_8C
  loc_A0361A: FLdPr Me
  loc_A0361D: from_stack_1v = clsservcome.global_4583860Get()
  loc_A03622: FLdPr var_8C
  loc_A03625: Me.Collect = from_stack_1
  loc_A0362A: FFree1Ad var_8C
  loc_A0362D: ExitProcHresult
End Sub

Public Property Get FebaSeco() 'A42780
  'Data Table: 45F22C
  loc_A4273C: ZeroRetValVar
  loc_A4273E: FLdRfVar var_B0
  loc_A42741: LitVarStr var_AC, "FebaSeco"
  loc_A42746: PopAdLdVar
  loc_A42747: FLdRfVar var_9C
  loc_A4274A: FLdRfVar var_98
  loc_A4274D: FLdPr Me
  loc_A42750: from_stack_1v = clsservcome.global_4583860Get()
  loc_A42755: FLdPr var_98
  loc_A42758:  = Me.Fields
  loc_A4275D: FLdPr var_9C
  loc_A42760: from_stack_2 = Me.Item(from_stack_1)
  loc_A42765: FLdZeroAd var_B0
  loc_A42768: CVarAd
  loc_A4276C: FStVar FebaSeco
  loc_A42770: FFreeAd var_98 = ""
  loc_A42777: ExitProcCbHresult
End Sub

Public Property Let FebaSeco(vDato) '9FCB10
  'Data Table: 45F22C
  loc_9FCAE8: FDupVar
  loc_9FCAEE: FLdVar var_94
  loc_9FCAF2: LitVarStr var_A8, "FebaSeco"
  loc_9FCAF7: PopAdLdVar
  loc_9FCAF8: FLdRfVar var_98
  loc_9FCAFB: FLdPr Me
  loc_9FCAFE: from_stack_1v = clsservcome.global_4583860Get()
  loc_9FCB03: FLdPr var_98
  loc_9FCB06: Me.Collect = from_stack_1
  loc_9FCB0B: FFree1Ad var_98
  loc_9FCB0E: ExitProcHresult
End Sub

Public Property Get ExbaSeco() 'A57B78
  'Data Table: 45F22C
  loc_A57B28: ZeroRetVal
  loc_A57B2A: FLdRfVar var_B4
  loc_A57B2D: FLdRfVar var_A4
  loc_A57B30: LitVarStr var_A0, "ExbaSeco"
  loc_A57B35: PopAdLdVar
  loc_A57B36: FLdRfVar var_90
  loc_A57B39: FLdRfVar var_8C
  loc_A57B3C: FLdPr Me
  loc_A57B3F: from_stack_1v = clsservcome.global_4583860Get()
  loc_A57B44: FLdPr var_8C
  loc_A57B47:  = Me.Fields
  loc_A57B4C: FLdPr var_90
  loc_A57B4F: from_stack_2 = Me.Item(from_stack_1)
  loc_A57B54: FLdPr var_A4
  loc_A57B57:  = Me.Value
  loc_A57B5C: FLdRfVar var_B4
  loc_A57B5F: CStrVarTmp
  loc_A57B60: FStStr var_88
  loc_A57B63: FFreeAd var_8C = "": var_90 = ""
  loc_A57B6C: FFree1Var var_B4 = ""
  loc_A57B6F: ExitProcCbHresult
End Sub

Public Property Let ExbaSeco(vDato) 'A036F8
  'Data Table: 45F22C
  loc_A036CC: ILdRf vDato
  loc_A036CF: FStStrCopy var_88
  loc_A036D2: ILdRf var_88
  loc_A036D5: CVarStr var_AC
  loc_A036D8: PopAdLdVar
  loc_A036D9: LitVarStr var_9C, "ExbaSeco"
  loc_A036DE: PopAdLdVar
  loc_A036DF: FLdRfVar var_8C
  loc_A036E2: FLdPr Me
  loc_A036E5: from_stack_1v = clsservcome.global_4583860Get()
  loc_A036EA: FLdPr var_8C
  loc_A036ED: Me.Collect = from_stack_1
  loc_A036F2: FFree1Ad var_8C
  loc_A036F5: ExitProcHresult
  loc_A036F6: Ary1LdI4
End Sub

Public Property Get MobaSeco() 'A57CA0
  'Data Table: 45F22C
  loc_A57C50: ZeroRetVal
  loc_A57C52: FLdRfVar var_B4
  loc_A57C55: FLdRfVar var_A4
  loc_A57C58: LitVarStr var_A0, "MobaSeco"
  loc_A57C5D: PopAdLdVar
  loc_A57C5E: FLdRfVar var_90
  loc_A57C61: FLdRfVar var_8C
  loc_A57C64: FLdPr Me
  loc_A57C67: from_stack_1v = clsservcome.global_4583860Get()
  loc_A57C6C: FLdPr var_8C
  loc_A57C6F:  = Me.Fields
  loc_A57C74: FLdPr var_90
  loc_A57C77: from_stack_2 = Me.Item(from_stack_1)
  loc_A57C7C: FLdPr var_A4
  loc_A57C7F:  = Me.Value
  loc_A57C84: FLdRfVar var_B4
  loc_A57C87: CStrVarTmp
  loc_A57C88: FStStr var_88
  loc_A57C8B: FFreeAd var_8C = "": var_90 = ""
  loc_A57C94: FFree1Var var_B4 = ""
  loc_A57C97: ExitProcCbHresult
  loc_A57C9D: ILdPr
End Sub

Public Property Let MobaSeco(vDato) 'A0375C
  'Data Table: 45F22C
  loc_A03730: ILdRf vDato
  loc_A03733: FStStrCopy var_88
  loc_A03736: ILdRf var_88
  loc_A03739: CVarStr var_AC
  loc_A0373C: PopAdLdVar
  loc_A0373D: LitVarStr var_9C, "MobaSeco"
  loc_A03742: PopAdLdVar
  loc_A03743: FLdRfVar var_8C
  loc_A03746: FLdPr Me
  loc_A03749: from_stack_1v = clsservcome.global_4583860Get()
  loc_A0374E: FLdPr var_8C
  loc_A03751: Me.Collect = from_stack_1
  loc_A03756: FFree1Ad var_8C
  loc_A03759: ExitProcHresult
End Sub

Public Property Get AcprSeco() 'A57D34
  'Data Table: 45F22C
  loc_A57CE4: ZeroRetVal
  loc_A57CE6: FLdRfVar var_B4
  loc_A57CE9: FLdRfVar var_A4
  loc_A57CEC: LitVarStr var_A0, "AcprSeco"
  loc_A57CF1: PopAdLdVar
  loc_A57CF2: FLdRfVar var_90
  loc_A57CF5: FLdRfVar var_8C
  loc_A57CF8: FLdPr Me
  loc_A57CFB: from_stack_1v = clsservcome.global_4583860Get()
  loc_A57D00: FLdPr var_8C
  loc_A57D03:  = Me.Fields
  loc_A57D08: FLdPr var_90
  loc_A57D0B: from_stack_2 = Me.Item(from_stack_1)
  loc_A57D10: FLdPr var_A4
  loc_A57D13:  = Me.Value
  loc_A57D18: FLdRfVar var_B4
  loc_A57D1B: CStrVarTmp
  loc_A57D1C: FStStr var_88
  loc_A57D1F: FFreeAd var_8C = "": var_90 = ""
  loc_A57D28: FFree1Var var_B4 = ""
  loc_A57D2B: ExitProcCbHresult
End Sub

Public Property Let AcprSeco(vDato) 'A03824
  'Data Table: 45F22C
  loc_A037F8: ILdRf vDato
  loc_A037FB: FStStrCopy var_88
  loc_A037FE: ILdRf var_88
  loc_A03801: CVarStr var_AC
  loc_A03804: PopAdLdVar
  loc_A03805: LitVarStr var_9C, "AcprSeco"
  loc_A0380A: PopAdLdVar
  loc_A0380B: FLdRfVar var_8C
  loc_A0380E: FLdPr Me
  loc_A03811: from_stack_1v = clsservcome.global_4583860Get()
  loc_A03816: FLdPr var_8C
  loc_A03819: Me.Collect = from_stack_1
  loc_A0381E: FFree1Ad var_8C
  loc_A03821: ExitProcHresult
End Sub

Public Property Get LiquSeco() 'A57DC8
  'Data Table: 45F22C
  loc_A57D78: ZeroRetVal
  loc_A57D7A: FLdRfVar var_B4
  loc_A57D7D: FLdRfVar var_A4
  loc_A57D80: LitVarStr var_A0, "LiquSeco"
  loc_A57D85: PopAdLdVar
  loc_A57D86: FLdRfVar var_90
  loc_A57D89: FLdRfVar var_8C
  loc_A57D8C: FLdPr Me
  loc_A57D8F: from_stack_1v = clsservcome.global_4583860Get()
  loc_A57D94: FLdPr var_8C
  loc_A57D97:  = Me.Fields
  loc_A57D9C: FLdPr var_90
  loc_A57D9F: from_stack_2 = Me.Item(from_stack_1)
  loc_A57DA4: FLdPr var_A4
  loc_A57DA7:  = Me.Value
  loc_A57DAC: FLdRfVar var_B4
  loc_A57DAF: CStrVarTmp
  loc_A57DB0: FStStr var_88
  loc_A57DB3: FFreeAd var_8C = "": var_90 = ""
  loc_A57DBC: FFree1Var var_B4 = ""
  loc_A57DBF: ExitProcCbHresult
  loc_A57DC5: LtR8
End Sub

Public Property Let LiquSeco(vDato) 'A03888
  'Data Table: 45F22C
  loc_A0385C: ILdRf vDato
  loc_A0385F: FStStrCopy var_88
  loc_A03862: ILdRf var_88
  loc_A03865: CVarStr var_AC
  loc_A03868: PopAdLdVar
  loc_A03869: LitVarStr var_9C, "LiquSeco"
  loc_A0386E: PopAdLdVar
  loc_A0386F: FLdRfVar var_8C
  loc_A03872: FLdPr Me
  loc_A03875: from_stack_1v = clsservcome.global_4583860Get()
  loc_A0387A: FLdPr var_8C
  loc_A0387D: Me.Collect = from_stack_1
  loc_A03882: FFree1Ad var_8C
  loc_A03885: ExitProcHresult
  loc_A03886: ILdPr
End Sub

Public Property Get CantSeco() 'A4E40C
  'Data Table: 45F22C
  loc_A4E3C0: FLdRfVar var_B8
  loc_A4E3C3: FLdRfVar var_A8
  loc_A4E3C6: LitVarStr var_A4, "CantSeco"
  loc_A4E3CB: PopAdLdVar
  loc_A4E3CC: FLdRfVar CantSeco
  loc_A4E3CF: FLdRfVar var_90
  loc_A4E3D2: FLdPr Me
  loc_A4E3D5: from_stack_1v = clsservcome.global_4583860Get()
  loc_A4E3DA: FLdPr var_90
  loc_A4E3DD:  = Me.Fields
  loc_A4E3E2: FLdPr CantSeco
  loc_A4E3E5: from_stack_2 = Me.Item(from_stack_1)
  loc_A4E3EA: FLdPr var_A8
  loc_A4E3ED:  = Me.Value
  loc_A4E3F2: FLdRfVar var_B8
  loc_A4E3F5: CR4Var
  loc_A4E3F6: FStFPR8 var_8C
  loc_A4E3F9: FFreeAd var_90 = "": CantSeco = ""
  loc_A4E402: FFree1Var var_B8 = ""
  loc_A4E405: ExitProcCbHresult
  loc_A4E40B: ConcatStr
End Sub

Public Property Let CantSeco(vDato) '9F0828
  'Data Table: 45F22C
  loc_9F0800: FLdFPR8 vDato
  loc_9F0803: CVarR8
  loc_9F0807: PopAdLdVar
  loc_9F0808: LitVarStr var_98, "CantSeco"
  loc_9F080D: PopAdLdVar
  loc_9F080E: FLdRfVar var_88
  loc_9F0811: FLdPr Me
  loc_9F0814: from_stack_1v = clsservcome.global_4583860Get()
  loc_9F0819: FLdPr var_88
  loc_9F081C: Me.Collect = from_stack_1
  loc_9F0821: FFree1Ad var_88
  loc_9F0824: ExitProcHresult
End Sub

Public Property Get CodiUsua() 'A580AC
  'Data Table: 45F22C
  loc_A5805C: ZeroRetVal
  loc_A5805E: FLdRfVar var_B4
  loc_A58061: FLdRfVar var_A4
  loc_A58064: LitVarStr var_A0, "CodiUsua"
  loc_A58069: PopAdLdVar
  loc_A5806A: FLdRfVar var_90
  loc_A5806D: FLdRfVar var_8C
  loc_A58070: FLdPr Me
  loc_A58073: from_stack_1v = clsservcome.global_4583860Get()
  loc_A58078: FLdPr var_8C
  loc_A5807B:  = Me.Fields
  loc_A58080: FLdPr var_90
  loc_A58083: from_stack_2 = Me.Item(from_stack_1)
  loc_A58088: FLdPr var_A4
  loc_A5808B:  = Me.Value
  loc_A58090: FLdRfVar var_B4
  loc_A58093: CStrVarTmp
  loc_A58094: FStStr var_88
  loc_A58097: FFreeAd var_8C = "": var_90 = ""
  loc_A580A0: FFree1Var var_B4 = ""
  loc_A580A3: ExitProcCbHresult
End Sub

Public Property Let CodiUsua(vDato) 'A03950
  'Data Table: 45F22C
  loc_A03924: ILdRf vDato
  loc_A03927: FStStrCopy var_88
  loc_A0392A: ILdRf var_88
  loc_A0392D: CVarStr var_AC
  loc_A03930: PopAdLdVar
  loc_A03931: LitVarStr var_9C, "CodiUsua"
  loc_A03936: PopAdLdVar
  loc_A03937: FLdRfVar var_8C
  loc_A0393A: FLdPr Me
  loc_A0393D: from_stack_1v = clsservcome.global_4583860Get()
  loc_A03942: FLdPr var_8C
  loc_A03945: Me.Collect = from_stack_1
  loc_A0394A: FFree1Ad var_8C
  loc_A0394D: ExitProcHresult
End Sub

Public Property Get DetaPers() 'A581D4
  'Data Table: 45F22C
  loc_A58184: ZeroRetVal
  loc_A58186: FLdRfVar var_B4
  loc_A58189: FLdRfVar var_A4
  loc_A5818C: LitVarStr var_A0, "DetaPers"
  loc_A58191: PopAdLdVar
  loc_A58192: FLdRfVar var_90
  loc_A58195: FLdRfVar var_8C
  loc_A58198: FLdPr Me
  loc_A5819B: from_stack_1v = clsservcome.global_4583860Get()
  loc_A581A0: FLdPr var_8C
  loc_A581A3:  = Me.Fields
  loc_A581A8: FLdPr var_90
  loc_A581AB: from_stack_2 = Me.Item(from_stack_1)
  loc_A581B0: FLdPr var_A4
  loc_A581B3:  = Me.Value
  loc_A581B8: FLdRfVar var_B4
  loc_A581BB: CStrVarTmp
  loc_A581BC: FStStr var_88
  loc_A581BF: FFreeAd var_8C = "": var_90 = ""
  loc_A581C8: FFree1Var var_B4 = ""
  loc_A581CB: ExitProcCbHresult
End Sub

Public Property Get FrecRubr() 'A58268
  'Data Table: 45F22C
  loc_A58218: ZeroRetVal
  loc_A5821A: FLdRfVar var_B4
  loc_A5821D: FLdRfVar var_A4
  loc_A58220: LitVarStr var_A0, "FrecRubr"
  loc_A58225: PopAdLdVar
  loc_A58226: FLdRfVar var_90
  loc_A58229: FLdRfVar var_8C
  loc_A5822C: FLdPr Me
  loc_A5822F: from_stack_1v = clsservcome.global_4583860Get()
  loc_A58234: FLdPr var_8C
  loc_A58237:  = Me.Fields
  loc_A5823C: FLdPr var_90
  loc_A5823F: from_stack_2 = Me.Item(from_stack_1)
  loc_A58244: FLdPr var_A4
  loc_A58247:  = Me.Value
  loc_A5824C: FLdRfVar var_B4
  loc_A5824F: CStrVarTmp
  loc_A58250: FStStr var_88
  loc_A58253: FFreeAd var_8C = "": var_90 = ""
  loc_A5825C: FFree1Var var_B4 = ""
  loc_A5825F: ExitProcCbHresult
End Sub

Public Property Get ImpoTaco() 'A42670
  'Data Table: 45F22C
  loc_A4262C: ZeroRetValVar
  loc_A4262E: FLdRfVar var_B0
  loc_A42631: LitVarStr var_AC, "ImpoTaco"
  loc_A42636: PopAdLdVar
  loc_A42637: FLdRfVar var_9C
  loc_A4263A: FLdRfVar var_98
  loc_A4263D: FLdPr Me
  loc_A42640: from_stack_1v = clsservcome.global_4583860Get()
  loc_A42645: FLdPr var_98
  loc_A42648:  = Me.Fields
  loc_A4264D: FLdPr var_9C
  loc_A42650: from_stack_2 = Me.Item(from_stack_1)
  loc_A42655: FLdZeroAd var_B0
  loc_A42658: CVarAd
  loc_A4265C: FStVar ImpoTaco
  loc_A42660: FFreeAd var_98 = ""
  loc_A42667: ExitProcCbHresult
  loc_A4266D: ConcatVar var_4B04
End Sub

Public Property Get SubTotal() 'A424D8
  'Data Table: 45F22C
  loc_A42494: ZeroRetValVar
  loc_A42496: FLdRfVar var_B0
  loc_A42499: LitVarStr var_AC, "SubTotal"
  loc_A4249E: PopAdLdVar
  loc_A4249F: FLdRfVar var_9C
  loc_A424A2: FLdRfVar var_98
  loc_A424A5: FLdPr Me
  loc_A424A8: from_stack_1v = clsservcome.global_4583860Get()
  loc_A424AD: FLdPr var_98
  loc_A424B0:  = Me.Fields
  loc_A424B5: FLdPr var_9C
  loc_A424B8: from_stack_2 = Me.Item(from_stack_1)
  loc_A424BD: FLdZeroAd var_B0
  loc_A424C0: CVarAd
  loc_A424C4: FStVar SubTotal
  loc_A424C8: FFreeAd var_98 = ""
  loc_A424CF: ExitProcCbHresult
  loc_A424D5: FStStrCopy Me00
End Sub

Public Property Get PoimSubr() 'A584B8
  'Data Table: 45F22C
  loc_A58468: ZeroRetVal
  loc_A5846A: FLdRfVar var_B4
  loc_A5846D: FLdRfVar var_A4
  loc_A58470: LitVarStr var_A0, "PoimSubr"
  loc_A58475: PopAdLdVar
  loc_A58476: FLdRfVar var_90
  loc_A58479: FLdRfVar var_8C
  loc_A5847C: FLdPr Me
  loc_A5847F: from_stack_1v = clsservcome.global_4583860Get()
  loc_A58484: FLdPr var_8C
  loc_A58487:  = Me.Fields
  loc_A5848C: FLdPr var_90
  loc_A5848F: from_stack_2 = Me.Item(from_stack_1)
  loc_A58494: FLdPr var_A4
  loc_A58497:  = Me.Value
  loc_A5849C: FLdRfVar var_B4
  loc_A5849F: CStrVarTmp
  loc_A584A0: FStStr var_88
  loc_A584A3: FFreeAd var_8C = "": var_90 = ""
  loc_A584AC: FFree1Var var_B4 = ""
  loc_A584AF: ExitProcCbHresult
End Sub

Public Property Get GastTili() 'A4E984
  'Data Table: 45F22C
  loc_A4E938: FLdRfVar var_B8
  loc_A4E93B: FLdRfVar var_A8
  loc_A4E93E: LitVarStr var_A4, "GastTili"
  loc_A4E943: PopAdLdVar
  loc_A4E944: FLdRfVar GastTili
  loc_A4E947: FLdRfVar var_90
  loc_A4E94A: FLdPr Me
  loc_A4E94D: from_stack_1v = clsservcome.global_4583860Get()
  loc_A4E952: FLdPr var_90
  loc_A4E955:  = Me.Fields
  loc_A4E95A: FLdPr GastTili
  loc_A4E95D: from_stack_2 = Me.Item(from_stack_1)
  loc_A4E962: FLdPr var_A8
  loc_A4E965:  = Me.Value
  loc_A4E96A: FLdRfVar var_B8
  loc_A4E96D: CR4Var
  loc_A4E96E: FStFPR8 var_8C
  loc_A4E971: FFreeAd var_90 = "": GastTili = ""
  loc_A4E97A: FFree1Var var_B8 = ""
  loc_A4E97D: ExitProcCbHresult
End Sub

Public Property Get ImpoSeco() 'A4EA10
  'Data Table: 45F22C
  loc_A4E9C4: FLdRfVar var_B8
  loc_A4E9C7: FLdRfVar var_A8
  loc_A4E9CA: LitVarStr var_A4, "ImpoSeco"
  loc_A4E9CF: PopAdLdVar
  loc_A4E9D0: FLdRfVar ImpoSeco
  loc_A4E9D3: FLdRfVar var_90
  loc_A4E9D6: FLdPr Me
  loc_A4E9D9: from_stack_1v = clsservcome.global_4583860Get()
  loc_A4E9DE: FLdPr var_90
  loc_A4E9E1:  = Me.Fields
  loc_A4E9E6: FLdPr ImpoSeco
  loc_A4E9E9: from_stack_2 = Me.Item(from_stack_1)
  loc_A4E9EE: FLdPr var_A8
  loc_A4E9F1:  = Me.Value
  loc_A4E9F6: FLdRfVar var_B8
  loc_A4E9F9: CR4Var
  loc_A4E9FA: FStFPR8 var_8C
  loc_A4E9FD: FFreeAd var_90 = "": ImpoSeco = ""
  loc_A4EA06: FFree1Var var_B8 = ""
  loc_A4EA09: ExitProcCbHresult
End Sub

Public Property Get ImpoSubr() 'A4EB28
  'Data Table: 45F22C
  loc_A4EADC: FLdRfVar var_B8
  loc_A4EADF: FLdRfVar var_A8
  loc_A4EAE2: LitVarStr var_A4, "ImpoSubr"
  loc_A4EAE7: PopAdLdVar
  loc_A4EAE8: FLdRfVar ImpoSubr
  loc_A4EAEB: FLdRfVar var_90
  loc_A4EAEE: FLdPr Me
  loc_A4EAF1: from_stack_1v = clsservcome.global_4583860Get()
  loc_A4EAF6: FLdPr var_90
  loc_A4EAF9:  = Me.Fields
  loc_A4EAFE: FLdPr ImpoSubr
  loc_A4EB01: from_stack_2 = Me.Item(from_stack_1)
  loc_A4EB06: FLdPr var_A8
  loc_A4EB09:  = Me.Value
  loc_A4EB0E: FLdRfVar var_B8
  loc_A4EB11: CR4Var
  loc_A4EB12: FStFPR8 var_8C
  loc_A4EB15: FFreeAd var_90 = "": ImpoSubr = ""
  loc_A4EB1E: FFree1Var var_B8 = ""
  loc_A4EB21: ExitProcCbHresult
End Sub

Public Property Get CogaTili() 'A4F12C
  'Data Table: 45F22C
  loc_A4F0E0: FLdRfVar var_B4
  loc_A4F0E3: FLdRfVar var_A4
  loc_A4F0E6: LitVarStr var_A0, "CogaTili"
  loc_A4F0EB: PopAdLdVar
  loc_A4F0EC: FLdRfVar var_90
  loc_A4F0EF: FLdRfVar var_8C
  loc_A4F0F2: FLdPr Me
  loc_A4F0F5: from_stack_1v = clsservcome.global_4583860Get()
  loc_A4F0FA: FLdPr var_8C
  loc_A4F0FD:  = Me.Fields
  loc_A4F102: FLdPr var_90
  loc_A4F105: from_stack_2 = Me.Item(from_stack_1)
  loc_A4F10A: FLdPr var_A4
  loc_A4F10D:  = Me.Value
  loc_A4F112: FLdRfVar var_B4
  loc_A4F115: CI4Var
  loc_A4F117: FStR4 var_88
  loc_A4F11A: FFreeAd var_8C = "": var_90 = ""
  loc_A4F123: FFree1Var var_B4 = ""
  loc_A4F126: ExitProcCbHresult
End Sub

Public Property Get PeriOrde() 'A4F244
  'Data Table: 45F22C
  loc_A4F1F8: FLdRfVar var_B4
  loc_A4F1FB: FLdRfVar var_A4
  loc_A4F1FE: LitVarStr var_A0, "PeriOrde"
  loc_A4F203: PopAdLdVar
  loc_A4F204: FLdRfVar var_90
  loc_A4F207: FLdRfVar var_8C
  loc_A4F20A: FLdPr Me
  loc_A4F20D: from_stack_1v = clsservcome.global_4583860Get()
  loc_A4F212: FLdPr var_8C
  loc_A4F215:  = Me.Fields
  loc_A4F21A: FLdPr var_90
  loc_A4F21D: from_stack_2 = Me.Item(from_stack_1)
  loc_A4F222: FLdPr var_A4
  loc_A4F225:  = Me.Value
  loc_A4F22A: FLdRfVar var_B4
  loc_A4F22D: CI2Var
  loc_A4F22E: FStI2 var_86
  loc_A4F231: FFreeAd var_8C = "": var_90 = ""
  loc_A4F23A: FFree1Var var_B4 = ""
  loc_A4F23D: ExitProcCbHresult
End Sub

Public Property Get CodiConc() 'A5854C
  'Data Table: 45F22C
  loc_A584FC: ZeroRetVal
  loc_A584FE: FLdRfVar var_B4
  loc_A58501: FLdRfVar var_A4
  loc_A58504: LitVarStr var_A0, "CodiConc"
  loc_A58509: PopAdLdVar
  loc_A5850A: FLdRfVar var_90
  loc_A5850D: FLdRfVar var_8C
  loc_A58510: FLdPr Me
  loc_A58513: from_stack_1v = clsservcome.global_4583860Get()
  loc_A58518: FLdPr var_8C
  loc_A5851B:  = Me.Fields
  loc_A58520: FLdPr var_90
  loc_A58523: from_stack_2 = Me.Item(from_stack_1)
  loc_A58528: FLdPr var_A4
  loc_A5852B:  = Me.Value
  loc_A58530: FLdRfVar var_B4
  loc_A58533: CStrVarTmp
  loc_A58534: FStStr var_88
  loc_A58537: FFreeAd var_8C = "": var_90 = ""
  loc_A58540: FFree1Var var_B4 = ""
  loc_A58543: ExitProcCbHresult
End Sub

Public Property Get DetaSubr() 'A42120
  'Data Table: 45F22C
  loc_A420DC: ZeroRetValVar
  loc_A420DE: FLdRfVar var_B0
  loc_A420E1: LitVarStr var_AC, "DetaSubr"
  loc_A420E6: PopAdLdVar
  loc_A420E7: FLdRfVar var_9C
  loc_A420EA: FLdRfVar var_98
  loc_A420ED: FLdPr Me
  loc_A420F0: from_stack_1v = clsservcome.global_4583860Get()
  loc_A420F5: FLdPr var_98
  loc_A420F8:  = Me.Fields
  loc_A420FD: FLdPr var_9C
  loc_A42100: from_stack_2 = Me.Item(from_stack_1)
  loc_A42105: FLdZeroAd var_B0
  loc_A42108: CVarAd
  loc_A4210C: FStVar DetaSubr
  loc_A42110: FFreeAd var_98 = ""
  loc_A42117: ExitProcCbHresult
End Sub

Public Property Get FeapCome() 'A42098
  'Data Table: 45F22C
  loc_A42054: ZeroRetValVar
  loc_A42056: FLdRfVar var_B0
  loc_A42059: LitVarStr var_AC, "FeapCome"
  loc_A4205E: PopAdLdVar
  loc_A4205F: FLdRfVar var_9C
  loc_A42062: FLdRfVar var_98
  loc_A42065: FLdPr Me
  loc_A42068: from_stack_1v = clsservcome.global_4583860Get()
  loc_A4206D: FLdPr var_98
  loc_A42070:  = Me.Fields
  loc_A42075: FLdPr var_9C
  loc_A42078: from_stack_2 = Me.Item(from_stack_1)
  loc_A4207D: FLdZeroAd var_B0
  loc_A42080: CVarAd
  loc_A42084: FStVar FeapCome
  loc_A42088: FFreeAd var_98 = ""
  loc_A4208F: ExitProcCbHresult
  loc_A42095: PrintObj
End Sub

Public Property Get DetaRubr() 'A42010
  'Data Table: 45F22C
  loc_A41FCC: ZeroRetValVar
  loc_A41FCE: FLdRfVar var_B0
  loc_A41FD1: LitVarStr var_AC, "DetaRubr"
  loc_A41FD6: PopAdLdVar
  loc_A41FD7: FLdRfVar var_9C
  loc_A41FDA: FLdRfVar var_98
  loc_A41FDD: FLdPr Me
  loc_A41FE0: from_stack_1v = clsservcome.global_4583860Get()
  loc_A41FE5: FLdPr var_98
  loc_A41FE8:  = Me.Fields
  loc_A41FED: FLdPr var_9C
  loc_A41FF0: from_stack_2 = Me.Item(from_stack_1)
  loc_A41FF5: FLdZeroAd var_B0
  loc_A41FF8: CVarAd
  loc_A41FFC: FStVar DetaRubr
  loc_A42000: FFreeAd var_98 = ""
  loc_A42007: ExitProcCbHresult
End Sub

Public Function ValidaClave(CodiCome, CodiRamo, CodiRubr, CodiSubr, PrioSeco) 'AB3BD8
  'Data Table: 45F22C
  loc_AB3B24: ILdRf CodiSubr
  loc_AB3B27: FStStrCopy var_8C
  loc_AB3B2A: ZeroRetVal
  loc_AB3B2C: LitStr "SELECT CodiCome FROM servcome WHERE CodiCome = "
  loc_AB3B2F: ILdRf CodiCome
  loc_AB3B32: CStrI4
  loc_AB3B34: FStStrNoPop var_90
  loc_AB3B37: ConcatStr
  loc_AB3B38: FStStrNoPop ValidaClave
  loc_AB3B3B: LitStr " AND CodiRamo = "
  loc_AB3B3E: ConcatStr
  loc_AB3B3F: FStStrNoPop var_98
  loc_AB3B42: FLdI2 CodiRamo
  loc_AB3B45: CStrUI1
  loc_AB3B47: FStStrNoPop var_9C
  loc_AB3B4A: ConcatStr
  loc_AB3B4B: FStStrNoPop var_A0
  loc_AB3B4E: LitStr " AND CodiRubr = "
  loc_AB3B51: ConcatStr
  loc_AB3B52: FStStrNoPop var_A4
  loc_AB3B55: ILdRf CodiRubr
  loc_AB3B58: CStrI4
  loc_AB3B5A: FStStrNoPop var_A8
  loc_AB3B5D: ConcatStr
  loc_AB3B5E: FStStrNoPop var_AC
  loc_AB3B61: LitStr " AND CodiSubr = "
  loc_AB3B64: ConcatStr
  loc_AB3B65: FStStrNoPop var_B0
  loc_AB3B68: ILdRf var_8C
  loc_AB3B6B: ConcatStr
  loc_AB3B6C: FStStrNoPop var_B4
  loc_AB3B6F: LitStr " AND PrioSeco = "
  loc_AB3B72: ConcatStr
  loc_AB3B73: FStStrNoPop var_B8
  loc_AB3B76: FLdI2 PrioSeco
  loc_AB3B79: CStrUI1
  loc_AB3B7B: FStStrNoPop var_BC
  loc_AB3B7E: ConcatStr
  loc_AB3B7F: FStStrNoPop var_C0
  loc_AB3B82: Call EjecutarRs2(from_stack_1v)
  loc_AB3B87: FFreeStr var_90 = "": ValidaClave = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AB3BA4: FLdRfVar var_C8
  loc_AB3BA7: FLdRfVar var_C4
  loc_AB3BAA: FLdPr Me
  loc_AB3BAD: from_stack_1v = clsservcome.global_4583860Get()
  loc_AB3BB2: FLdPr var_C4
  loc_AB3BB5:  = Me.RecordCount
  loc_AB3BBA: ILdRf var_C8
  loc_AB3BBD: LitI4 0
  loc_AB3BC2: GtI4
  loc_AB3BC3: FFree1Ad var_C4
  loc_AB3BC6: BranchF loc_AB3BCF
  loc_AB3BC9: LitStr "El RUBRO Y SUBRUBRO YA EXISTE. Reintente..."
  loc_AB3BCC: FStStrCopy var_88
  loc_AB3BCF: ExitProcCbHresult
  loc_AB3BD5: FStStrCopy Me00
End Function

Public Function ValidaEliminarRubro(CodiRamo, CodiRubr) 'A77740
  'Data Table: 45F22C
  loc_A776D8: ZeroRetVal
  loc_A776DA: LitStr "SELECT CodiRamo, CodiRubr FROM servcome WHERE CodiRamo = "
  loc_A776DD: FLdI2 CodiRamo
  loc_A776E0: CStrUI1
  loc_A776E2: FStStrNoPop var_8C
  loc_A776E5: ConcatStr
  loc_A776E6: FStStrNoPop var_90
  loc_A776E9: LitStr " AND CodiRubr = "
  loc_A776EC: ConcatStr
  loc_A776ED: FStStrNoPop ValidaEliminarRubro
  loc_A776F0: ILdRf CodiRubr
  loc_A776F3: CStrI4
  loc_A776F5: FStStrNoPop var_98
  loc_A776F8: ConcatStr
  loc_A776F9: FStStrNoPop var_9C
  loc_A776FC: Call EjecutarRs2(from_stack_1v)
  loc_A77701: FFreeStr var_8C = "": var_90 = "": ValidaEliminarRubro = "": var_98 = ""
  loc_A7770E: FLdRfVar var_A4
  loc_A77711: FLdRfVar var_A0
  loc_A77714: FLdPr Me
  loc_A77717: from_stack_1v = clsservcome.global_4583860Get()
  loc_A7771C: FLdPr var_A0
  loc_A7771F:  = Me.RecordCount
  loc_A77724: ILdRf var_A4
  loc_A77727: LitI4 0
  loc_A7772C: GtI4
  loc_A7772D: FFree1Ad var_A0
  loc_A77730: BranchF loc_A77739
  loc_A77733: LitStr "El Rubro Existe en Servicio de Comercio. Reintente..."
  loc_A77736: FStStrCopy var_88
  loc_A77739: ExitProcCbHresult
End Function

Public Function ValidaEliminarSubRubro(CodiRamo, CodiRubr, CodiSubr) 'A8B0D4
  'Data Table: 45F22C
  loc_A8B054: ILdRf CodiSubr
  loc_A8B057: FStStrCopy var_8C
  loc_A8B05A: ZeroRetVal
  loc_A8B05C: LitStr "SELECT CodiRamo, CodiRubr FROM servcome WHERE CodiRamo = "
  loc_A8B05F: FLdI2 CodiRamo
  loc_A8B062: CStrUI1
  loc_A8B064: FStStrNoPop var_90
  loc_A8B067: ConcatStr
  loc_A8B068: FStStrNoPop ValidaEliminarSubRubro
  loc_A8B06B: LitStr " AND CodiRubr = "
  loc_A8B06E: ConcatStr
  loc_A8B06F: FStStrNoPop var_98
  loc_A8B072: ILdRf CodiRubr
  loc_A8B075: CStrI4
  loc_A8B077: FStStrNoPop var_9C
  loc_A8B07A: ConcatStr
  loc_A8B07B: FStStrNoPop var_A0
  loc_A8B07E: LitStr " AND CodiSubr = "
  loc_A8B081: ConcatStr
  loc_A8B082: FStStrNoPop var_A4
  loc_A8B085: ILdRf var_8C
  loc_A8B088: ConcatStr
  loc_A8B089: FStStrNoPop var_A8
  loc_A8B08C: Call EjecutarRs2(from_stack_1v)
  loc_A8B091: FFreeStr var_90 = "": ValidaEliminarSubRubro = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A8B0A2: FLdRfVar var_B0
  loc_A8B0A5: FLdRfVar var_AC
  loc_A8B0A8: FLdPr Me
  loc_A8B0AB: from_stack_1v = clsservcome.global_4583860Get()
  loc_A8B0B0: FLdPr var_AC
  loc_A8B0B3:  = Me.RecordCount
  loc_A8B0B8: ILdRf var_B0
  loc_A8B0BB: LitI4 0
  loc_A8B0C0: GtI4
  loc_A8B0C1: FFree1Ad var_AC
  loc_A8B0C4: BranchF loc_A8B0CD
  loc_A8B0C7: LitStr "El Subrubro Existe en Servicio de Comercio. Reintente..."
  loc_A8B0CA: FStStrCopy var_88
  loc_A8B0CD: ExitProcCbHresult
End Function

Public Function NuevoRegistro(CodiCome, CodiRamo, CodiRubr, CodiSubr) 'ACB988
  'Data Table: 45F22C
  loc_ACB89C: ILdRf CodiSubr
  loc_ACB89F: FStStrCopy var_8C
  loc_ACB8A2: LitStr "SELECT PrioSeco FROM servcome WHERE CodiCome = "
  loc_ACB8A5: ILdRf CodiCome
  loc_ACB8A8: CStrI4
  loc_ACB8AA: FStStrNoPop var_90
  loc_ACB8AD: ConcatStr
  loc_ACB8AE: FStStrNoPop NuevoRegistro
  loc_ACB8B1: LitStr " AND CodiRamo = "
  loc_ACB8B4: ConcatStr
  loc_ACB8B5: FStStrNoPop var_98
  loc_ACB8B8: FLdI2 CodiRamo
  loc_ACB8BB: CStrUI1
  loc_ACB8BD: FStStrNoPop var_9C
  loc_ACB8C0: ConcatStr
  loc_ACB8C1: FStStrNoPop var_A0
  loc_ACB8C4: LitStr " AND CodiRubr = "
  loc_ACB8C7: ConcatStr
  loc_ACB8C8: FStStrNoPop var_A4
  loc_ACB8CB: ILdRf CodiRubr
  loc_ACB8CE: CStrI4
  loc_ACB8D0: FStStrNoPop var_A8
  loc_ACB8D3: ConcatStr
  loc_ACB8D4: FStStrNoPop var_AC
  loc_ACB8D7: LitStr " AND CodiSubr = "
  loc_ACB8DA: ConcatStr
  loc_ACB8DB: FStStrNoPop var_B0
  loc_ACB8DE: ILdRf var_8C
  loc_ACB8E1: ConcatStr
  loc_ACB8E2: FStStrNoPop var_B4
  loc_ACB8E5: LitStr " ORDER BY CodiCome, CodiRamo, CodiRubr, CodiSubr, PrioSeco DESC "
  loc_ACB8E8: ConcatStr
  loc_ACB8E9: FStStrNoPop var_B8
  loc_ACB8EC: Call EjecutarRs2(from_stack_1v)
  loc_ACB8F1: FFreeStr var_90 = "": NuevoRegistro = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_ACB90A: FLdRfVar var_C0
  loc_ACB90D: FLdRfVar var_BC
  loc_ACB910: FLdPr Me
  loc_ACB913: from_stack_1v = clsservcome.global_4583860Get()
  loc_ACB918: FLdPr var_BC
  loc_ACB91B:  = Me.RecordCount
  loc_ACB920: ILdRf var_C0
  loc_ACB923: LitI4 0
  loc_ACB928: GtI4
  loc_ACB929: FFree1Ad var_BC
  loc_ACB92C: BranchF loc_ACB97B
  loc_ACB92F: FLdRfVar var_E8
  loc_ACB932: FLdRfVar var_D8
  loc_ACB935: LitVarStr var_D4, "PrioSeco"
  loc_ACB93A: PopAdLdVar
  loc_ACB93B: FLdRfVar var_C4
  loc_ACB93E: FLdRfVar var_BC
  loc_ACB941: FLdPr Me
  loc_ACB944: from_stack_1v = clsservcome.global_4583860Get()
  loc_ACB949: FLdPr var_BC
  loc_ACB94C:  = Me.Fields
  loc_ACB951: FLdPr var_C4
  loc_ACB954: from_stack_2 = Me.Item(from_stack_1)
  loc_ACB959: FLdPr var_D8
  loc_ACB95C:  = Me.Value
  loc_ACB961: FLdRfVar var_E8
  loc_ACB964: FnCIntVar
  loc_ACB966: LitI2_Byte 1
  loc_ACB968: AddI2
  loc_ACB969: FStI2 var_86
  loc_ACB96C: FFreeAd var_BC = "": var_C4 = ""
  loc_ACB975: FFree1Var var_E8 = ""
  loc_ACB978: Branch loc_ACB980
  loc_ACB97B: LitI2_Byte 1
  loc_ACB97D: FStI2 var_86
  loc_ACB980: ExitProcCbHresult
  loc_ACB986: Ary1LdFPR4
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E51A0
  'Data Table: 45F22C
  loc_9E5184: ILdRf pError
  loc_9E5187: FStAd var_88 
  loc_9E518B: ILdRf pRecordset
  loc_9E518E: FStAd var_8C 
  loc_9E5192: FLdPr Me
  loc_9E5195: RaiseEvent
  loc_9E519D: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9981C
  'Data Table: 45F22C
  loc_A9975C: ILdRf pRecordset
  loc_A9975F: FStAd var_88 
  loc_A99763: ILdRf adReason
  loc_A99766: FStR4 var_90
  loc_A99769: ILdRf var_90
  loc_A9976C: LitI4 1
  loc_A99771: EqI4
  loc_A99772: BranchF loc_A99778
  loc_A99775: Branch loc_A9980B
  loc_A99778: ILdRf var_90
  loc_A9977B: LitI4 9
  loc_A99780: EqI4
  loc_A99781: BranchF loc_A99787
  loc_A99784: Branch loc_A9980B
  loc_A99787: ILdRf var_90
  loc_A9978A: LitI4 2
  loc_A9978F: EqI4
  loc_A99790: BranchF loc_A99796
  loc_A99793: Branch loc_A9980B
  loc_A99796: ILdRf var_90
  loc_A99799: LitI4 &HB
  loc_A9979E: EqI4
  loc_A9979F: BranchF loc_A997A5
  loc_A997A2: Branch loc_A9980B
  loc_A997A5: ILdRf var_90
  loc_A997A8: LitI4 &HA
  loc_A997AD: EqI4
  loc_A997AE: BranchF loc_A997B4
  loc_A997B1: Branch loc_A9980B
  loc_A997B4: ILdRf var_90
  loc_A997B7: LitI4 7
  loc_A997BC: EqI4
  loc_A997BD: BranchF loc_A997C3
  loc_A997C0: Branch loc_A9980B
  loc_A997C3: ILdRf var_90
  loc_A997C6: LitI4 8
  loc_A997CB: EqI4
  loc_A997CC: BranchF loc_A997D2
  loc_A997CF: Branch loc_A9980B
  loc_A997D2: ILdRf var_90
  loc_A997D5: LitI4 5
  loc_A997DA: EqI4
  loc_A997DB: BranchF loc_A997E1
  loc_A997DE: Branch loc_A9980B
  loc_A997E1: ILdRf var_90
  loc_A997E4: LitI4 6
  loc_A997E9: EqI4
  loc_A997EA: BranchF loc_A997F0
  loc_A997ED: Branch loc_A9980B
  loc_A997F0: ILdRf var_90
  loc_A997F3: LitI4 4
  loc_A997F8: EqI4
  loc_A997F9: BranchF loc_A997FF
  loc_A997FC: Branch loc_A9980B
  loc_A997FF: ILdRf var_90
  loc_A99802: LitI4 3
  loc_A99807: EqI4
  loc_A99808: BranchF loc_A9980B
  loc_A9980B: FLdI2 var_8A
  loc_A9980E: BranchF loc_A99819
  loc_A99811: LitI4 4
  loc_A99816: IStI4 adStatus
  loc_A99819: ExitProcHresult
End Sub

Private Function Proc_264_75_9F1C44() '9F1C44
  'Data Table: 45F22C
  loc_9F1C20: LitStr "Primary"
  loc_9F1C23: FLdPr Me
  loc_9F1C26: LateIdLdVar var_94 DispID_4 0
  loc_9F1C2D: CastAdVar Me
  loc_9F1C31: FStAdFunc var_98
  loc_9F1C34: FLdPr var_98
  loc_9F1C3C: FFree1Ad var_98
  loc_9F1C3F: FFree1Var var_94 = ""
  loc_9F1C42: ExitProcHresult
End Function

Private Function Proc_264_76_9F0D2C(arg_C) '9F0D2C
  'Data Table: 45F22C
  loc_9F0D08: ILdI4 arg_C
  loc_9F0D0B: FStStrCopy var_88
  loc_9F0D0E: ILdRf var_88
  loc_9F0D11: LitStr "Primary"
  loc_9F0D14: EqStr
  loc_9F0D16: BranchF loc_9F0D2B
  loc_9F0D19: FLdRfVar var_8C
  loc_9F0D1C: FLdPr Me
  loc_9F0D1F: from_stack_1v = clsservcome.global_4583860Get()
  loc_9F0D24: FLdZeroAd var_8C
  loc_9F0D27: IStAdFunc
  loc_9F0D2B: ExitProcHresult
End Function

Public Function global_4583860Get() '45F7F8
  global_4583860Get = global_4583860
End Function

Public Sub global_4583860Put(Value) '45F812
  global_4583860 = Value
End Sub

Public Sub global_4583860Set(Value) '45F82C
  global_4583860 = Value
End Sub

Public Function global_4583860Get() '45F846
  global_4583860Get = global_4583860
End Function

Public Sub global_4583860Put(Value) '45F860
  global_4583860 = Value
End Sub

Public Sub global_4583860Set(Value) '45F87A
  global_4583860 = Value
End Sub

Public Function global_4583860Get() '45F894
  global_4583860Get = global_4583860
End Function

Public Sub global_4583860Put(Value) '45F8AE
  global_4583860 = Value
End Sub

Public Sub global_4583860Set(Value) '45F8C8
  global_4583860 = Value
End Sub
