VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsctacte"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '4E1570
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4E157F
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4E158E
  RsFrm = Value
End Sub

Public Sub Move(iValor) '9480E8
  'Data Table: 4E07A8
  loc_9480D4: LitVar_Missing var_94
  loc_9480D7: PopAdLdVar
  loc_9480D8: ILdI2 iValor
  loc_9480DB: CI4UI1
  loc_9480DC: FLdPr Me
  loc_9480DF: MemLdPr RsFrm
  loc_9480E2: Me.Move from_stack_1, from_stack_2
  loc_9480E7: ExitProcHresult
End Sub

Public Sub MoveFirst() '96F4C4
  'Data Table: 4E07A8
  loc_96F49C: FLdRfVar var_88
  loc_96F49F: FLdPr Me
  loc_96F4A2: MemLdPr RsFrm
  loc_96F4A5:  = Me.RecordCount
  loc_96F4AA: ILdRf var_88
  loc_96F4AD: LitI4 0
  loc_96F4B2: GtI4
  loc_96F4B3: BranchF loc_96F4C1
  loc_96F4B6: FLdPr Me
  loc_96F4B9: MemLdPr RsFrm
  loc_96F4BC: Me.MoveFirst
  loc_96F4C1: ExitProcHresult
End Sub

Public Sub MoveLast() '96EB24
  'Data Table: 4E07A8
  loc_96EAFC: FLdRfVar var_88
  loc_96EAFF: FLdPr Me
  loc_96EB02: MemLdPr RsFrm
  loc_96EB05:  = Me.RecordCount
  loc_96EB0A: ILdRf var_88
  loc_96EB0D: LitI4 0
  loc_96EB12: GtI4
  loc_96EB13: BranchF loc_96EB21
  loc_96EB16: FLdPr Me
  loc_96EB19: MemLdPr RsFrm
  loc_96EB1C: Me.MoveLast
  loc_96EB21: ExitProcHresult
End Sub

Public Sub MoveNext() '99C638
  'Data Table: 4E07A8
  loc_99C5C0: FLdRfVar var_86
  loc_99C5C3: FLdPr Me
  loc_99C5C6: MemLdPr RsFrm
  loc_99C5C9:  = Me.EOF
  loc_99C5CE: FLdI2 var_86
  loc_99C5D1: NotI4
  loc_99C5D2: FLdRfVar var_8C
  loc_99C5D5: FLdPr Me
  loc_99C5D8: MemLdPr RsFrm
  loc_99C5DB:  = Me.RecordCount
  loc_99C5E0: ILdRf var_8C
  loc_99C5E3: LitI4 0
  loc_99C5E8: GtI4
  loc_99C5E9: AndI4
  loc_99C5EA: BranchF loc_99C5F8
  loc_99C5ED: FLdPr Me
  loc_99C5F0: MemLdPr RsFrm
  loc_99C5F3: Me.MoveNext
  loc_99C5F8: FLdRfVar var_86
  loc_99C5FB: FLdPr Me
  loc_99C5FE: MemLdPr RsFrm
  loc_99C601:  = Me.EOF
  loc_99C606: FLdI2 var_86
  loc_99C609: FLdRfVar var_8C
  loc_99C60C: FLdPr Me
  loc_99C60F: MemLdPr RsFrm
  loc_99C612:  = Me.RecordCount
  loc_99C617: ILdRf var_8C
  loc_99C61A: LitI4 0
  loc_99C61F: GtI4
  loc_99C620: AndI4
  loc_99C621: BranchF loc_99C634
  loc_99C624: ImpAdCallFPR4 Beep()
  loc_99C629: FLdPr Me
  loc_99C62C: MemLdPr RsFrm
  loc_99C62F: Me.MoveLast
  loc_99C634: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9412C4
  'Data Table: 4E07A8
  loc_9412B8: FLdPr Me
  loc_9412BB: MemLdPr RsFrm
  loc_9412BE: Me.MoveNext
  loc_9412C3: ExitProcHresult
End Sub

Public Sub MovePrevious() '99CA28
  'Data Table: 4E07A8
  loc_99C9B0: FLdRfVar var_86
  loc_99C9B3: FLdPr Me
  loc_99C9B6: MemLdPr RsFrm
  loc_99C9B9:  = Me.BOF
  loc_99C9BE: FLdI2 var_86
  loc_99C9C1: NotI4
  loc_99C9C2: FLdRfVar var_8C
  loc_99C9C5: FLdPr Me
  loc_99C9C8: MemLdPr RsFrm
  loc_99C9CB:  = Me.RecordCount
  loc_99C9D0: ILdRf var_8C
  loc_99C9D3: LitI4 0
  loc_99C9D8: GtI4
  loc_99C9D9: AndI4
  loc_99C9DA: BranchF loc_99C9E8
  loc_99C9DD: FLdPr Me
  loc_99C9E0: MemLdPr RsFrm
  loc_99C9E3: Me.MovePrevious
  loc_99C9E8: FLdRfVar var_86
  loc_99C9EB: FLdPr Me
  loc_99C9EE: MemLdPr RsFrm
  loc_99C9F1:  = Me.BOF
  loc_99C9F6: FLdI2 var_86
  loc_99C9F9: FLdRfVar var_8C
  loc_99C9FC: FLdPr Me
  loc_99C9FF: MemLdPr RsFrm
  loc_99CA02:  = Me.RecordCount
  loc_99CA07: ILdRf var_8C
  loc_99CA0A: LitI4 0
  loc_99CA0F: GtI4
  loc_99CA10: AndI4
  loc_99CA11: BranchF loc_99CA24
  loc_99CA14: ImpAdCallFPR4 Beep()
  loc_99CA19: FLdPr Me
  loc_99CA1C: MemLdPr RsFrm
  loc_99CA1F: Me.MoveFirst
  loc_99CA24: ExitProcHresult
End Sub

Public Property Get EOF() '95DDC0
  'Data Table: 4E07A8
  loc_95DDA4: FLdRfVar var_88
  loc_95DDA7: FLdPr Me
  loc_95DDAA: MemLdPr RsFrm
  loc_95DDAD:  = Me.EOF
  loc_95DDB2: FLdI2 var_88
  loc_95DDB5: FStI2 var_86
  loc_95DDB8: ExitProcCbHresult
End Sub

Public Property Get BOF() '95DC90
  'Data Table: 4E07A8
  loc_95DC74: FLdRfVar var_88
  loc_95DC77: FLdPr Me
  loc_95DC7A: MemLdPr RsFrm
  loc_95DC7D:  = Me.BOF
  loc_95DC82: FLdI2 var_88
  loc_95DC85: FStI2 var_86
  loc_95DC88: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '946C04
  'Data Table: 4E07A8
  loc_946BF4: ILdI4 sOrden
  loc_946BF7: FLdPr Me
  loc_946BFA: MemLdPr RsFrm
  loc_946BFD: Me.Sort = from_stack_1
  loc_946C02: ExitProcHresult
End Sub

Public Sub Find(sFind) '9680C0
  'Data Table: 4E07A8
  loc_9680A0: LitVar_Missing var_94
  loc_9680A3: PopAdLdVar
  loc_9680A4: LitI4 1
  loc_9680A9: LitI4 0
  loc_9680AE: ILdI4 sFind
  loc_9680B1: FLdPr Me
  loc_9680B4: MemLdPr RsFrm
  loc_9680B7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9680BC: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '95DA30
  'Data Table: 4E07A8
  loc_95DA14: FLdRfVar var_8C
  loc_95DA17: FLdPr Me
  loc_95DA1A: MemLdPr RsFrm
  loc_95DA1D:  = Me.AbsolutePosition
  loc_95DA22: ILdRf var_8C
  loc_95DA25: FStR4 var_88
  loc_95DA28: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '95D4D8
  'Data Table: 4E07A8
  loc_95D4BC: FLdRfVar var_8C
  loc_95D4BF: FLdPr Me
  loc_95D4C2: MemLdPr RsFrm
  loc_95D4C5:  = Me.RecordCount
  loc_95D4CA: ILdRf var_8C
  loc_95D4CD: FStR4 var_88
  loc_95D4D0: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa) 'AAC92C
  'Data Table: 4E07A8
  loc_AAC548: ILdRf CuenCtct
  loc_AAC54B: FStStrCopy var_88
  loc_AAC54E: ILdRf TipoCtct
  loc_AAC551: FStStrCopy var_8C
  loc_AAC554: FDupVar
  loc_AAC55A: FDupVar
  loc_AAC560: ILdRf arg_58
  loc_AAC563: FStStrCopy var_B0
  loc_AAC566: ILdRf arg_64
  loc_AAC569: FStStrCopy var_B4
  loc_AAC56C: ILdRf arg_78
  loc_AAC56F: FStStrCopy var_B8
  loc_AAC572: ILdRf arg_7C
  loc_AAC575: FStStrCopy var_BC
  loc_AAC578: ILdRf Me8
  loc_AAC57B: FStStrCopy var_C0
  loc_AAC57E: FLdRfVar var_B0
  loc_AAC581: CVarRef
  loc_AAC586: ImpAdCallI2 IsDate()
  loc_AAC58B: FStI2 var_636
  loc_AAC58E: LitI4 1
  loc_AAC593: LitI4 1
  loc_AAC598: LitVarStr var_1C0, "yyyy-mm-dd"
  loc_AAC59D: FStVarCopyObj var_1D0
  loc_AAC5A0: FLdRfVar var_1D0
  loc_AAC5A3: FLdRfVar var_B0
  loc_AAC5A6: CVarRef
  loc_AAC5AB: ImpAdCallI2 Format$(, )
  loc_AAC5B0: FStStr var_63C
  loc_AAC5B3: LitStr "INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) VALUES ("
  loc_AAC5B6: FLdUI1
  loc_AAC5BA: CStrI2
  loc_AAC5BC: FStStrNoPop var_C4
  loc_AAC5BF: ConcatStr
  loc_AAC5C0: FStStrNoPop var_C8
  loc_AAC5C3: LitStr ",'"
  loc_AAC5C6: ConcatStr
  loc_AAC5C7: FStStrNoPop var_CC
  loc_AAC5CA: ILdRf var_88
  loc_AAC5CD: ConcatStr
  loc_AAC5CE: FStStrNoPop var_D0
  loc_AAC5D1: LitStr "',"
  loc_AAC5D4: ConcatStr
  loc_AAC5D5: FStStrNoPop var_D4
  loc_AAC5D8: FLdI2 PeriCtct
  loc_AAC5DB: CStrUI1
  loc_AAC5DD: FStStrNoPop var_D8
  loc_AAC5E0: ConcatStr
  loc_AAC5E1: FStStrNoPop var_DC
  loc_AAC5E4: LitStr ","
  loc_AAC5E7: ConcatStr
  loc_AAC5E8: FStStrNoPop var_E0
  loc_AAC5EB: FLdI2 BimeCtct
  loc_AAC5EE: CStrUI1
  loc_AAC5F0: FStStrNoPop var_E4
  loc_AAC5F3: ConcatStr
  loc_AAC5F4: FStStrNoPop var_E8
  loc_AAC5F7: LitStr ","
  loc_AAC5FA: ConcatStr
  loc_AAC5FB: FStStrNoPop var_EC
  loc_AAC5FE: ILdRf NumeCtct
  loc_AAC601: CStrI4
  loc_AAC603: FStStrNoPop var_F0
  loc_AAC606: ConcatStr
  loc_AAC607: FStStrNoPop var_F4
  loc_AAC60A: LitStr ","
  loc_AAC60D: ConcatStr
  loc_AAC60E: FStStrNoPop var_F8
  loc_AAC611: FLdI2 MoviCtct
  loc_AAC614: CStrUI1
  loc_AAC616: FStStrNoPop var_FC
  loc_AAC619: ConcatStr
  loc_AAC61A: FStStrNoPop var_100
  loc_AAC61D: LitStr ","
  loc_AAC620: ConcatStr
  loc_AAC621: FStStrNoPop var_104
  loc_AAC624: FLdUI1
  loc_AAC628: CStrI2
  loc_AAC62A: FStStrNoPop var_108
  loc_AAC62D: ConcatStr
  loc_AAC62E: FStStrNoPop var_10C
  loc_AAC631: LitStr ","
  loc_AAC634: ConcatStr
  loc_AAC635: FStStrNoPop var_110
  loc_AAC638: FLdI2 NumeLiqu
  loc_AAC63B: CStrUI1
  loc_AAC63D: FStStrNoPop var_114
  loc_AAC640: ConcatStr
  loc_AAC641: FStStrNoPop var_118
  loc_AAC644: LitStr ","
  loc_AAC647: ConcatStr
  loc_AAC648: FStStrNoPop var_11C
  loc_AAC64B: FLdI2 PeriBole
  loc_AAC64E: CStrUI1
  loc_AAC650: FStStrNoPop var_120
  loc_AAC653: ConcatStr
  loc_AAC654: FStStrNoPop var_124
  loc_AAC657: LitStr ","
  loc_AAC65A: ConcatStr
  loc_AAC65B: FStStrNoPop var_128
  loc_AAC65E: ILdRf NumeBole
  loc_AAC661: CStrI4
  loc_AAC663: FStStrNoPop var_12C
  loc_AAC666: ConcatStr
  loc_AAC667: FStStrNoPop var_130
  loc_AAC66A: LitStr ",'"
  loc_AAC66D: ConcatStr
  loc_AAC66E: FStStrNoPop var_134
  loc_AAC671: ILdRf var_8C
  loc_AAC674: ConcatStr
  loc_AAC675: FStStrNoPop var_138
  loc_AAC678: LitStr "','"
  loc_AAC67B: ConcatStr
  loc_AAC67C: FStStrNoPop var_15C
  loc_AAC67F: LitI4 1
  loc_AAC684: LitI4 1
  loc_AAC689: LitVarStr var_148, "yyyy-mm-dd"
  loc_AAC68E: FStVarCopyObj var_158
  loc_AAC691: FLdRfVar var_158
  loc_AAC694: FLdRfVar var_9C
  loc_AAC697: ImpAdCallI2 Format$(, )
  loc_AAC69C: FStStrNoPop var_160
  loc_AAC69F: ConcatStr
  loc_AAC6A0: FStStrNoPop var_164
  loc_AAC6A3: LitStr "','"
  loc_AAC6A6: ConcatStr
  loc_AAC6A7: FStStrNoPop var_188
  loc_AAC6AA: LitI4 1
  loc_AAC6AF: LitI4 1
  loc_AAC6B4: LitVarStr var_174, "yyyy-mm-dd"
  loc_AAC6B9: FStVarCopyObj var_184
  loc_AAC6BC: FLdRfVar var_184
  loc_AAC6BF: FLdRfVar var_AC
  loc_AAC6C2: ImpAdCallI2 Format$(, )
  loc_AAC6C7: FStStrNoPop var_18C
  loc_AAC6CA: ConcatStr
  loc_AAC6CB: FStStrNoPop var_190
  loc_AAC6CE: LitStr "',"
  loc_AAC6D1: ConcatStr
  loc_AAC6D2: CVarStr var_238
  loc_AAC6D5: LitVarStr var_208, "Null"
  loc_AAC6DA: FStVarCopyObj var_218
  loc_AAC6DD: FLdRfVar var_218
  loc_AAC6E0: LitStr "'"
  loc_AAC6E3: FLdZeroAd var_63C
  loc_AAC6E6: FStStrNoPop var_1D4
  loc_AAC6E9: ConcatStr
  loc_AAC6EA: FStStrNoPop var_1D8
  loc_AAC6ED: LitStr "'"
  loc_AAC6F0: ConcatStr
  loc_AAC6F1: CVarStr var_1F8
  loc_AAC6F4: FLdI2 var_636
  loc_AAC6F7: CVarBoolI2 var_1E8
  loc_AAC6FB: FLdRfVar var_228
  loc_AAC6FE: ImpAdCallFPR4  = IIf(, , )
  loc_AAC703: FLdRfVar var_228
  loc_AAC706: ConcatVar var_248
  loc_AAC70A: LitVarStr var_258, ","
  loc_AAC70F: ConcatVar var_268
  loc_AAC713: FLdI2 arg_5C
  loc_AAC716: CVarI2 var_278
  loc_AAC719: ConcatVar var_288
  loc_AAC71D: LitVarStr var_298, ","
  loc_AAC722: ConcatVar var_2A8
  loc_AAC726: FLdI2 arg_60
  loc_AAC729: CVarI2 var_2B8
  loc_AAC72C: ConcatVar var_2C8
  loc_AAC730: LitVarStr var_2D8, ",'"
  loc_AAC735: ConcatVar var_2E8
  loc_AAC739: ILdRf var_B4
  loc_AAC73C: CVarStr var_2F8
  loc_AAC73F: ConcatVar var_308
  loc_AAC743: LitVarStr var_318, "',"
  loc_AAC748: ConcatVar var_328
  loc_AAC74C: ILdRf arg_68
  loc_AAC74F: CVarI4
  loc_AAC753: ConcatVar var_348
  loc_AAC757: LitVarStr var_358, ","
  loc_AAC75C: ConcatVar var_368
  loc_AAC760: FLdI2 arg_6C
  loc_AAC763: CVarI2 var_378
  loc_AAC766: ConcatVar var_388
  loc_AAC76A: LitVarStr var_398, ","
  loc_AAC76F: ConcatVar var_3A8
  loc_AAC773: ILdRf arg_70
  loc_AAC776: CVarI4
  loc_AAC77A: ConcatVar var_3C8
  loc_AAC77E: LitVarStr var_3D8, ","
  loc_AAC783: ConcatVar var_3E8
  loc_AAC787: FLdUI1
  loc_AAC78B: CVarUI1
  loc_AAC78F: ConcatVar var_408
  loc_AAC793: LitVarStr var_418, ",'"
  loc_AAC798: ConcatVar var_428
  loc_AAC79C: ILdRf var_B8
  loc_AAC79F: CVarStr var_438
  loc_AAC7A2: ConcatVar var_448
  loc_AAC7A6: LitVarStr var_458, "','"
  loc_AAC7AB: ConcatVar var_468
  loc_AAC7AF: ILdRf var_BC
  loc_AAC7B2: CVarStr var_478
  loc_AAC7B5: ConcatVar var_488
  loc_AAC7B9: LitVarStr var_498, "',"
  loc_AAC7BE: ConcatVar var_4A8
  loc_AAC7C2: FLdI2 Me0
  loc_AAC7C5: CVarI2 var_4B8
  loc_AAC7C8: ConcatVar var_4C8
  loc_AAC7CC: LitVarStr var_4D8, ","
  loc_AAC7D1: ConcatVar var_4E8
  loc_AAC7D5: ILdRf Me4
  loc_AAC7D8: CVarI4
  loc_AAC7DC: ConcatVar var_508
  loc_AAC7E0: LitVarStr var_518, ",'"
  loc_AAC7E5: ConcatVar var_528
  loc_AAC7E9: ILdRf var_C0
  loc_AAC7EC: CVarStr var_538
  loc_AAC7EF: ConcatVar var_548
  loc_AAC7F3: LitVarStr var_558, "',"
  loc_AAC7F8: ConcatVar var_568
  loc_AAC7FC: LitI4 0
  loc_AAC801: LitI4 -1
  loc_AAC806: LitI4 1
  loc_AAC80B: LitStr "."
  loc_AAC80E: LitStr ","
  loc_AAC811: FLdFPR8 MeC
  loc_AAC814: CStrR8
  loc_AAC816: FStStrNoPop var_56C
  loc_AAC819: ImpAdCallI2 Replace(, , , , , )
  loc_AAC81E: CVarStr var_57C
  loc_AAC821: ConcatVar var_58C
  loc_AAC825: LitVarStr var_59C, ","
  loc_AAC82A: ConcatVar var_5AC
  loc_AAC82E: LitI4 0
  loc_AAC833: LitI4 -1
  loc_AAC838: LitI4 1
  loc_AAC83D: LitStr "."
  loc_AAC840: LitStr ","
  loc_AAC843: FLdFPR8 arg_94
  loc_AAC846: CStrR8
  loc_AAC848: FStStrNoPop var_5B0
  loc_AAC84B: ImpAdCallI2 Replace(, , , , , )
  loc_AAC850: CVarStr var_5C0
  loc_AAC853: ConcatVar var_5D0
  loc_AAC857: LitVarStr var_5E0, ",'"
  loc_AAC85C: ConcatVar var_5F0
  loc_AAC860: ImpAdLdI4 MemVar_C3D03C
  loc_AAC863: CVarStr var_600
  loc_AAC866: ConcatVar var_610
  loc_AAC86A: LitVarStr var_620, "');"
  loc_AAC86F: ConcatVar var_630
  loc_AAC873: CStrVarVal var_634
  loc_AAC877: Call EjecutarRsCls(from_stack_1v)
  loc_AAC87C: FFreeStr var_15C = "": var_160 = "": var_164 = "": var_188 = "": var_18C = "": var_190 = "": var_1D4 = "": var_1D8 = "": var_56C = "": var_5B0 = "": var_634 = "": var_63C = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_AAC8D3: FFreeVar var_508 = "": var_528 = "": var_548 = "": var_568 = "": var_57C = "": var_58C = "": var_5AC = "": var_5C0 = "": var_5D0 = "": var_5F0 = "": var_610 = "": var_630 = "": var_158 = "": var_184 = "": var_1D0 = "": var_1E8 = "": var_1F8 = "": var_218 = "": var_238 = "": var_228 = "": var_248 = "": var_268 = "": var_288 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_308 = "": var_328 = "": var_348 = "": var_368 = "": var_388 = "": var_3A8 = "": var_3C8 = "": var_3E8 = "": var_408 = "": var_428 = "": var_448 = "": var_468 = "": var_488 = "": var_4A8 = "": var_4C8 = ""
  loc_AAC92A: ExitProcHresult
End Sub

Public Sub AddNewMigracion(sEjecutar) '948AB8
  'Data Table: 4E07A8
  loc_948AA8: ILdRf sEjecutar
  loc_948AAB: FStStrCopy var_88
  loc_948AAE: ILdRf var_88
  loc_948AB1: Call EjecutarRsCls2(from_stack_1v)
  loc_948AB6: ExitProcHresult
End Sub

Public Sub AddnewTransaction(sEjecutar) '98FBE0
  'Data Table: 4E07A8
  loc_98FB98: ILdRf sEjecutar
  loc_98FB9B: FStStrCopy var_88
  loc_98FB9E: OnErrorGoto loc_98FBB2
  loc_98FBA1: ILdRf var_88
  loc_98FBA4: Call EjecutarRsCls2(from_stack_1v)
  loc_98FBA9: LitStr "COMMIT;"
  loc_98FBAC: Call EjecutarRsCls2(from_stack_1v)
  loc_98FBB1: ExitProcHresult
  loc_98FBB2: LitStr "ROLLBACK;"
  loc_98FBB5: Call EjecutarRsCls2(from_stack_1v)
  loc_98FBBA: LitI4 0
  loc_98FBBF: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_98FBC2: LitStr " "
  loc_98FBC5: ConcatStr
  loc_98FBC6: FStStrNoPop var_8C
  loc_98FBC9: ILdRf var_88
  loc_98FBCC: ConcatStr
  loc_98FBCD: FStStrNoPop var_90
  loc_98FBD0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_98FBD5: FFreeStr var_8C = ""
  loc_98FBDC: ExitProcHresult
End Sub

Public Sub Delete() '948170
  'Data Table: 4E07A8
  loc_94815C: LitI4 1
  loc_948161: FLdPr Me
  loc_948164: MemLdPr RsFrm
  loc_948167: Me.Delete
  loc_94816C: ExitProcHresult
End Sub

Public Sub Requery() '96BF30
  'Data Table: 4E07A8
  loc_96BF0C: LitI4 -1
  loc_96BF11: FLdPr Me
  loc_96BF14: MemLdPr RsFrm
  loc_96BF17: Me.Requery from_stack_1
  loc_96BF1C: LitVarStr var_94, "Primary"
  loc_96BF21: PopAdLdVar
  loc_96BF22: FLdPr Me
  loc_96BF25: LateIdCall
  loc_96BF2D: ExitProcHresult
End Sub

Public Sub UpdateMasivo() '949518
  'Data Table: 4E07A8
  loc_949504: LitVar_Missing var_A4
  loc_949507: PopAdLdVar
  loc_949508: LitVar_Missing var_94
  loc_94950B: PopAdLdVar
  loc_94950C: FLdPr Me
  loc_94950F: MemLdPr RsFrm
  loc_949512: Me.Update from_stack_1, from_stack_2
  loc_949517: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '9965F0
  'Data Table: 4E07A8
  loc_99658C: ILdRf sSelect
  loc_99658F: FStStrCopy var_88
  loc_996592: LitNothing
  loc_996594: CastAd
  loc_996597: FStAdFuncNoPop
  loc_99659A: FLdPr Me
  loc_99659D: MemStAd
  loc_9965A1: FFree1Ad var_8C
  loc_9965A4: New Recordset
  loc_9965A8: FStAdFuncNoPop
  loc_9965AB: FLdPr Me
  loc_9965AE: MemStAd
  loc_9965B2: FFree1Ad var_8C
  loc_9965B5: LitI4 -1
  loc_9965BA: LitI4 3
  loc_9965BF: LitI4 3
  loc_9965C4: ImpAdLdI4 MemVar_C3D030
  loc_9965C7: CVarAd
  loc_9965CB: PopAdLdVar
  loc_9965CC: ILdRf var_88
  loc_9965CF: CVarStr var_9C
  loc_9965D2: PopAdLdVar
  loc_9965D3: FLdPr Me
  loc_9965D6: MemLdPr RsFrm
  loc_9965D9: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_9965DE: LitVarStr var_9C, "Primary"
  loc_9965E3: PopAdLdVar
  loc_9965E4: FLdPr Me
  loc_9965E7: LateIdCall
  loc_9965EF: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '992CA0
  'Data Table: 4E07A8
  loc_992C4C: ILdRf sSelect
  loc_992C4F: FStStrCopy var_88
  loc_992C52: LitNothing
  loc_992C54: CastAd
  loc_992C57: FStAdFuncNoPop
  loc_992C5A: FLdPr Me
  loc_992C5D: MemStAd
  loc_992C61: FFree1Ad var_8C
  loc_992C64: New Recordset
  loc_992C68: FStAdFuncNoPop
  loc_992C6B: FLdPr Me
  loc_992C6E: MemStAd
  loc_992C72: FFree1Ad var_8C
  loc_992C75: LitI4 -1
  loc_992C7A: LitI4 3
  loc_992C7F: LitI4 3
  loc_992C84: ImpAdLdI4 MemVar_C3D030
  loc_992C87: CVarAd
  loc_992C8B: PopAdLdVar
  loc_992C8C: ILdRf var_88
  loc_992C8F: CVarStr var_9C
  loc_992C92: PopAdLdVar
  loc_992C93: FLdPr Me
  loc_992C96: MemLdPr global_56
  loc_992C99: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_992C9E: ExitProcHresult
End Sub

Public Sub EjecutarRsCls1(sSelect) '992840
  'Data Table: 4E07A8
  loc_9927EC: ILdRf sSelect
  loc_9927EF: FStStrCopy var_88
  loc_9927F2: LitNothing
  loc_9927F4: CastAd
  loc_9927F7: FStAdFuncNoPop
  loc_9927FA: FLdPr Me
  loc_9927FD: MemStAd
  loc_992801: FFree1Ad var_8C
  loc_992804: New Recordset
  loc_992808: FStAdFuncNoPop
  loc_99280B: FLdPr Me
  loc_99280E: MemStAd
  loc_992812: FFree1Ad var_8C
  loc_992815: LitI4 -1
  loc_99281A: LitI4 3
  loc_99281F: LitI4 3
  loc_992824: ImpAdLdI4 MemVar_C3D030
  loc_992827: CVarAd
  loc_99282B: PopAdLdVar
  loc_99282C: ILdRf var_88
  loc_99282F: CVarStr var_9C
  loc_992832: PopAdLdVar
  loc_992833: FLdPr Me
  loc_992836: MemLdPr global_60
  loc_992839: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_99283E: ExitProcHresult
End Sub

Public Sub EjecutarRsCls2(sSelect) '992B88
  'Data Table: 4E07A8
  loc_992B34: ILdRf sSelect
  loc_992B37: FStStrCopy var_88
  loc_992B3A: LitNothing
  loc_992B3C: CastAd
  loc_992B3F: FStAdFuncNoPop
  loc_992B42: FLdPr Me
  loc_992B45: MemStAd
  loc_992B49: FFree1Ad var_8C
  loc_992B4C: New Recordset
  loc_992B50: FStAdFuncNoPop
  loc_992B53: FLdPr Me
  loc_992B56: MemStAd
  loc_992B5A: FFree1Ad var_8C
  loc_992B5D: LitI4 -1
  loc_992B62: LitI4 3
  loc_992B67: LitI4 3
  loc_992B6C: ImpAdLdI4 MemVar_C3D030
  loc_992B6F: CVarAd
  loc_992B73: PopAdLdVar
  loc_992B74: ILdRf var_88
  loc_992B77: CVarStr var_9C
  loc_992B7A: PopAdLdVar
  loc_992B7B: FLdPr Me
  loc_992B7E: MemLdPr global_64
  loc_992B81: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_992B86: ExitProcHresult
End Sub

Public Sub EjecutarRsCls3(sSelect) '992C14
  'Data Table: 4E07A8
  loc_992BC0: ILdRf sSelect
  loc_992BC3: FStStrCopy var_88
  loc_992BC6: LitNothing
  loc_992BC8: CastAd
  loc_992BCB: FStAdFuncNoPop
  loc_992BCE: FLdPr Me
  loc_992BD1: MemStAd
  loc_992BD5: FFree1Ad var_8C
  loc_992BD8: New Recordset
  loc_992BDC: FStAdFuncNoPop
  loc_992BDF: FLdPr Me
  loc_992BE2: MemStAd
  loc_992BE6: FFree1Ad var_8C
  loc_992BE9: LitI4 -1
  loc_992BEE: LitI4 3
  loc_992BF3: LitI4 3
  loc_992BF8: ImpAdLdI4 MemVar_C3D030
  loc_992BFB: CVarAd
  loc_992BFF: PopAdLdVar
  loc_992C00: ILdRf var_88
  loc_992C03: CVarStr var_9C
  loc_992C06: PopAdLdVar
  loc_992C07: FLdPr Me
  loc_992C0A: MemLdPr global_68
  loc_992C0D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_992C12: ExitProcHresult
End Sub

Public Sub EjecutarRsCls4(sSelect) '9928CC
  'Data Table: 4E07A8
  loc_992878: ILdRf sSelect
  loc_99287B: FStStrCopy var_88
  loc_99287E: LitNothing
  loc_992880: CastAd
  loc_992883: FStAdFuncNoPop
  loc_992886: FLdPr Me
  loc_992889: MemStAd
  loc_99288D: FFree1Ad var_8C
  loc_992890: New Recordset
  loc_992894: FStAdFuncNoPop
  loc_992897: FLdPr Me
  loc_99289A: MemStAd
  loc_99289E: FFree1Ad var_8C
  loc_9928A1: LitI4 -1
  loc_9928A6: LitI4 3
  loc_9928AB: LitI4 3
  loc_9928B0: ImpAdLdI4 MemVar_C3D030
  loc_9928B3: CVarAd
  loc_9928B7: PopAdLdVar
  loc_9928B8: ILdRf var_88
  loc_9928BB: CVarStr var_9C
  loc_9928BE: PopAdLdVar
  loc_9928BF: FLdPr Me
  loc_9928C2: MemLdPr global_72
  loc_9928C5: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_9928CA: ExitProcHresult
End Sub

Public Sub EjecutarRsCls5(sSelect) '992958
  'Data Table: 4E07A8
  loc_992904: ILdRf sSelect
  loc_992907: FStStrCopy var_88
  loc_99290A: LitNothing
  loc_99290C: CastAd
  loc_99290F: FStAdFuncNoPop
  loc_992912: FLdPr Me
  loc_992915: MemStAd
  loc_992919: FFree1Ad var_8C
  loc_99291C: New Recordset
  loc_992920: FStAdFuncNoPop
  loc_992923: FLdPr Me
  loc_992926: MemStAd
  loc_99292A: FFree1Ad var_8C
  loc_99292D: LitI4 -1
  loc_992932: LitI4 3
  loc_992937: LitI4 3
  loc_99293C: ImpAdLdI4 MemVar_C3D030
  loc_99293F: CVarAd
  loc_992943: PopAdLdVar
  loc_992944: ILdRf var_88
  loc_992947: CVarStr var_9C
  loc_99294A: PopAdLdVar
  loc_99294B: FLdPr Me
  loc_99294E: MemLdPr global_76
  loc_992951: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_992956: ExitProcHresult
End Sub

Public Property Get DataSource() '972BF4
  'Data Table: 4E07A8
  loc_972BD0: ZeroRetVal
  loc_972BD2: FLdRfVar var_8C
  loc_972BD5: FLdPr Me
  loc_972BD8: MemLdPr RsFrm
  loc_972BDB:  = Me.DataSource
  loc_972BE0: ILdRf var_8C
  loc_972BE3: CastAd
  loc_972BE6: FStAdFunc var_88
  loc_972BE9: FFree1Ad var_8C
  loc_972BEC: ExitProcCbHresult
End Sub

Public Property Get EditMode() '95C730
  'Data Table: 4E07A8
  loc_95C714: FLdRfVar var_8C
  loc_95C717: FLdPr Me
  loc_95C71A: MemLdPr RsFrm
  loc_95C71D:  = Me.EditMode
  loc_95C722: ILdRf var_8C
  loc_95C725: FStR4 var_88
  loc_95C728: ExitProcCbHresult
End Sub

Public Property Get CodiOfic() '98D6AC
  'Data Table: 4E07A8
  loc_98D668: FLdRfVar var_B0
  loc_98D66B: FLdRfVar var_A0
  loc_98D66E: LitVarStr var_9C, "CodiOfic"
  loc_98D673: PopAdLdVar
  loc_98D674: FLdRfVar var_8C
  loc_98D677: FLdPr Me
  loc_98D67A: MemLdPr RsFrm
  loc_98D67D:  = Me.Fields
  loc_98D682: FLdPr var_8C
  loc_98D685: from_stack_2 = Me.Item(from_stack_1)
  loc_98D68A: FLdPr var_A0
  loc_98D68D:  = Me.Value
  loc_98D692: FLdRfVar var_B0
  loc_98D695: CI2Var
  loc_98D696: FStI2 var_86
  loc_98D699: FFreeAd var_8C = ""
  loc_98D6A0: FFree1Var var_B0 = ""
  loc_98D6A3: ExitProcCbHresult
End Sub

Public Property Let CodiOfic(vDato) '95C600
  'Data Table: 4E07A8
  loc_95C5E4: FLdI2 vDato
  loc_95C5E7: CVarI2 var_A4
  loc_95C5EA: PopAdLdVar
  loc_95C5EB: LitVarStr var_94, "CodiOfic"
  loc_95C5F0: PopAdLdVar
  loc_95C5F1: FLdPr Me
  loc_95C5F4: MemLdPr RsFrm
  loc_95C5F7: Me.Collect = from_stack_1
  loc_95C5FC: ExitProcHresult
End Sub

Public Property Get CuenCtct() '990AD0
  'Data Table: 4E07A8
  loc_990A8C: ZeroRetVal
  loc_990A8E: FLdRfVar var_B0
  loc_990A91: FLdRfVar var_A0
  loc_990A94: LitVarStr var_9C, "CuenCtct"
  loc_990A99: PopAdLdVar
  loc_990A9A: FLdRfVar var_8C
  loc_990A9D: FLdPr Me
  loc_990AA0: MemLdPr RsFrm
  loc_990AA3:  = Me.Fields
  loc_990AA8: FLdPr var_8C
  loc_990AAB: from_stack_2 = Me.Item(from_stack_1)
  loc_990AB0: FLdPr var_A0
  loc_990AB3:  = Me.Value
  loc_990AB8: FLdRfVar var_B0
  loc_990ABB: CStrVarTmp
  loc_990ABC: FStStr var_88
  loc_990ABF: FFreeAd var_8C = ""
  loc_990AC6: FFree1Var var_B0 = ""
  loc_990AC9: ExitProcCbHresult
End Sub

Public Property Let CuenCtct(vDato) '96BFD4
  'Data Table: 4E07A8
  loc_96BFB4: ILdRf vDato
  loc_96BFB7: FStStrCopy var_88
  loc_96BFBA: ILdRf var_88
  loc_96BFBD: CVarStr var_A8
  loc_96BFC0: PopAdLdVar
  loc_96BFC1: LitVarStr var_98, "CuenCtct"
  loc_96BFC6: PopAdLdVar
  loc_96BFC7: FLdPr Me
  loc_96BFCA: MemLdPr RsFrm
  loc_96BFCD: Me.Collect = from_stack_1
  loc_96BFD2: ExitProcHresult
End Sub

Public Property Get PeriCtct() '98D72C
  'Data Table: 4E07A8
  loc_98D6E8: FLdRfVar var_B0
  loc_98D6EB: FLdRfVar var_A0
  loc_98D6EE: LitVarStr var_9C, "PeriCtct"
  loc_98D6F3: PopAdLdVar
  loc_98D6F4: FLdRfVar var_8C
  loc_98D6F7: FLdPr Me
  loc_98D6FA: MemLdPr RsFrm
  loc_98D6FD:  = Me.Fields
  loc_98D702: FLdPr var_8C
  loc_98D705: from_stack_2 = Me.Item(from_stack_1)
  loc_98D70A: FLdPr var_A0
  loc_98D70D:  = Me.Value
  loc_98D712: FLdRfVar var_B0
  loc_98D715: CI2Var
  loc_98D716: FStI2 var_86
  loc_98D719: FFreeAd var_8C = ""
  loc_98D720: FFree1Var var_B0 = ""
  loc_98D723: ExitProcCbHresult
End Sub

Public Property Let PeriCtct(vDato) '95C05C
  'Data Table: 4E07A8
  loc_95C040: FLdI2 vDato
  loc_95C043: CVarI2 var_A4
  loc_95C046: PopAdLdVar
  loc_95C047: LitVarStr var_94, "PeriCtct"
  loc_95C04C: PopAdLdVar
  loc_95C04D: FLdPr Me
  loc_95C050: MemLdPr RsFrm
  loc_95C053: Me.Collect = from_stack_1
  loc_95C058: ExitProcHresult
End Sub

Public Property Get BimeCtct() '98D7AC
  'Data Table: 4E07A8
  loc_98D768: FLdRfVar var_B0
  loc_98D76B: FLdRfVar var_A0
  loc_98D76E: LitVarStr var_9C, "BimeCtct"
  loc_98D773: PopAdLdVar
  loc_98D774: FLdRfVar var_8C
  loc_98D777: FLdPr Me
  loc_98D77A: MemLdPr RsFrm
  loc_98D77D:  = Me.Fields
  loc_98D782: FLdPr var_8C
  loc_98D785: from_stack_2 = Me.Item(from_stack_1)
  loc_98D78A: FLdPr var_A0
  loc_98D78D:  = Me.Value
  loc_98D792: FLdRfVar var_B0
  loc_98D795: CI2Var
  loc_98D796: FStI2 var_86
  loc_98D799: FFreeAd var_8C = ""
  loc_98D7A0: FFree1Var var_B0 = ""
  loc_98D7A3: ExitProcCbHresult
End Sub

Public Property Let BimeCtct(vDato) '95BE94
  'Data Table: 4E07A8
  loc_95BE78: FLdI2 vDato
  loc_95BE7B: CVarI2 var_A4
  loc_95BE7E: PopAdLdVar
  loc_95BE7F: LitVarStr var_94, "BimeCtct"
  loc_95BE84: PopAdLdVar
  loc_95BE85: FLdPr Me
  loc_95BE88: MemLdPr RsFrm
  loc_95BE8B: Me.Collect = from_stack_1
  loc_95BE90: ExitProcHresult
End Sub

Public Property Get NumeCtct() '98D8AC
  'Data Table: 4E07A8
  loc_98D868: FLdRfVar var_B0
  loc_98D86B: FLdRfVar var_A0
  loc_98D86E: LitVarStr var_9C, "NumeCtct"
  loc_98D873: PopAdLdVar
  loc_98D874: FLdRfVar var_8C
  loc_98D877: FLdPr Me
  loc_98D87A: MemLdPr RsFrm
  loc_98D87D:  = Me.Fields
  loc_98D882: FLdPr var_8C
  loc_98D885: from_stack_2 = Me.Item(from_stack_1)
  loc_98D88A: FLdPr var_A0
  loc_98D88D:  = Me.Value
  loc_98D892: FLdRfVar var_B0
  loc_98D895: CI4Var
  loc_98D897: FStR4 var_88
  loc_98D89A: FFreeAd var_8C = ""
  loc_98D8A1: FFree1Var var_B0 = ""
  loc_98D8A4: ExitProcCbHresult
End Sub

Public Property Let NumeCtct(vDato) '95BB9C
  'Data Table: 4E07A8
  loc_95BB80: ILdRf vDato
  loc_95BB83: CVarI4
  loc_95BB87: PopAdLdVar
  loc_95BB88: LitVarStr var_94, "NumeCtct"
  loc_95BB8D: PopAdLdVar
  loc_95BB8E: FLdPr Me
  loc_95BB91: MemLdPr RsFrm
  loc_95BB94: Me.Collect = from_stack_1
  loc_95BB99: ExitProcHresult
End Sub

Public Property Get MoviCtct() '98DEAC
  'Data Table: 4E07A8
  loc_98DE68: FLdRfVar var_B0
  loc_98DE6B: FLdRfVar var_A0
  loc_98DE6E: LitVarStr var_9C, "MoviCtct"
  loc_98DE73: PopAdLdVar
  loc_98DE74: FLdRfVar var_8C
  loc_98DE77: FLdPr Me
  loc_98DE7A: MemLdPr RsFrm
  loc_98DE7D:  = Me.Fields
  loc_98DE82: FLdPr var_8C
  loc_98DE85: from_stack_2 = Me.Item(from_stack_1)
  loc_98DE8A: FLdPr var_A0
  loc_98DE8D:  = Me.Value
  loc_98DE92: FLdRfVar var_B0
  loc_98DE95: CI2Var
  loc_98DE96: FStI2 var_86
  loc_98DE99: FFreeAd var_8C = ""
  loc_98DEA0: FFree1Var var_B0 = ""
  loc_98DEA3: ExitProcCbHresult
End Sub

Public Property Get CodiTili() '98DA2C
  'Data Table: 4E07A8
  loc_98D9E8: FLdRfVar var_B0
  loc_98D9EB: FLdRfVar var_A0
  loc_98D9EE: LitVarStr var_9C, "CodiTili"
  loc_98D9F3: PopAdLdVar
  loc_98D9F4: FLdRfVar var_8C
  loc_98D9F7: FLdPr Me
  loc_98D9FA: MemLdPr RsFrm
  loc_98D9FD:  = Me.Fields
  loc_98DA02: FLdPr var_8C
  loc_98DA05: from_stack_2 = Me.Item(from_stack_1)
  loc_98DA0A: FLdPr var_A0
  loc_98DA0D:  = Me.Value
  loc_98DA12: FLdRfVar var_B0
  loc_98DA15: CUI1Var
  loc_98DA17: FStUI1 var_86
  loc_98DA1B: FFreeAd var_8C = ""
  loc_98DA22: FFree1Var var_B0 = ""
  loc_98DA25: ExitProcCbHresult
End Sub

Public Property Let CodiTili(vDato) '95BA6C
  'Data Table: 4E07A8
  loc_95BA50: FLdUI1
  loc_95BA54: CVarUI1
  loc_95BA58: PopAdLdVar
  loc_95BA59: LitVarStr var_94, "CodiTili"
  loc_95BA5E: PopAdLdVar
  loc_95BA5F: FLdPr Me
  loc_95BA62: MemLdPr RsFrm
  loc_95BA65: Me.Collect = from_stack_1
  loc_95BA6A: ExitProcHresult
End Sub

Public Property Get NumeLiqu() '98DAAC
  'Data Table: 4E07A8
  loc_98DA68: FLdRfVar var_B0
  loc_98DA6B: FLdRfVar var_A0
  loc_98DA6E: LitVarStr var_9C, "NumeLiqu"
  loc_98DA73: PopAdLdVar
  loc_98DA74: FLdRfVar var_8C
  loc_98DA77: FLdPr Me
  loc_98DA7A: MemLdPr RsFrm
  loc_98DA7D:  = Me.Fields
  loc_98DA82: FLdPr var_8C
  loc_98DA85: from_stack_2 = Me.Item(from_stack_1)
  loc_98DA8A: FLdPr var_A0
  loc_98DA8D:  = Me.Value
  loc_98DA92: FLdRfVar var_B0
  loc_98DA95: CI2Var
  loc_98DA96: FStI2 var_86
  loc_98DA99: FFreeAd var_8C = ""
  loc_98DAA0: FFree1Var var_B0 = ""
  loc_98DAA3: ExitProcCbHresult
End Sub

Public Property Let NumeLiqu(vDato) '95B8A4
  'Data Table: 4E07A8
  loc_95B888: FLdI2 vDato
  loc_95B88B: CVarI2 var_A4
  loc_95B88E: PopAdLdVar
  loc_95B88F: LitVarStr var_94, "NumeLiqu"
  loc_95B894: PopAdLdVar
  loc_95B895: FLdPr Me
  loc_95B898: MemLdPr RsFrm
  loc_95B89B: Me.Collect = from_stack_1
  loc_95B8A0: ExitProcHresult
End Sub

Public Property Get PeriBole() '98DBAC
  'Data Table: 4E07A8
  loc_98DB68: FLdRfVar var_B0
  loc_98DB6B: FLdRfVar var_A0
  loc_98DB6E: LitVarStr var_9C, "PeriBole"
  loc_98DB73: PopAdLdVar
  loc_98DB74: FLdRfVar var_8C
  loc_98DB77: FLdPr Me
  loc_98DB7A: MemLdPr RsFrm
  loc_98DB7D:  = Me.Fields
  loc_98DB82: FLdPr var_8C
  loc_98DB85: from_stack_2 = Me.Item(from_stack_1)
  loc_98DB8A: FLdPr var_A0
  loc_98DB8D:  = Me.Value
  loc_98DB92: FLdRfVar var_B0
  loc_98DB95: CI2Var
  loc_98DB96: FStI2 var_86
  loc_98DB99: FFreeAd var_8C = ""
  loc_98DBA0: FFree1Var var_B0 = ""
  loc_98DBA3: ExitProcCbHresult
End Sub

Public Property Let PeriBole(vDato) '95B5F8
  'Data Table: 4E07A8
  loc_95B5DC: FLdI2 vDato
  loc_95B5DF: CVarI2 var_A4
  loc_95B5E2: PopAdLdVar
  loc_95B5E3: LitVarStr var_94, "PeriBole"
  loc_95B5E8: PopAdLdVar
  loc_95B5E9: FLdPr Me
  loc_95B5EC: MemLdPr RsFrm
  loc_95B5EF: Me.Collect = from_stack_1
  loc_95B5F4: ExitProcHresult
End Sub

Public Property Get NumeBole() '98DC2C
  'Data Table: 4E07A8
  loc_98DBE8: FLdRfVar var_B0
  loc_98DBEB: FLdRfVar var_A0
  loc_98DBEE: LitVarStr var_9C, "NumeBole"
  loc_98DBF3: PopAdLdVar
  loc_98DBF4: FLdRfVar var_8C
  loc_98DBF7: FLdPr Me
  loc_98DBFA: MemLdPr RsFrm
  loc_98DBFD:  = Me.Fields
  loc_98DC02: FLdPr var_8C
  loc_98DC05: from_stack_2 = Me.Item(from_stack_1)
  loc_98DC0A: FLdPr var_A0
  loc_98DC0D:  = Me.Value
  loc_98DC12: FLdRfVar var_B0
  loc_98DC15: CI4Var
  loc_98DC17: FStR4 var_88
  loc_98DC1A: FFreeAd var_8C = ""
  loc_98DC21: FFree1Var var_B0 = ""
  loc_98DC24: ExitProcCbHresult
End Sub

Public Property Let NumeBole(vDato) '95B514
  'Data Table: 4E07A8
  loc_95B4F8: ILdRf vDato
  loc_95B4FB: CVarI4
  loc_95B4FF: PopAdLdVar
  loc_95B500: LitVarStr var_94, "NumeBole"
  loc_95B505: PopAdLdVar
  loc_95B506: FLdPr Me
  loc_95B509: MemLdPr RsFrm
  loc_95B50C: Me.Collect = from_stack_1
  loc_95B511: ExitProcHresult
End Sub

Public Property Get TipoCtct() '990FF8
  'Data Table: 4E07A8
  loc_990FB4: ZeroRetVal
  loc_990FB6: FLdRfVar var_B0
  loc_990FB9: FLdRfVar var_A0
  loc_990FBC: LitVarStr var_9C, "TipoCtct"
  loc_990FC1: PopAdLdVar
  loc_990FC2: FLdRfVar var_8C
  loc_990FC5: FLdPr Me
  loc_990FC8: MemLdPr RsFrm
  loc_990FCB:  = Me.Fields
  loc_990FD0: FLdPr var_8C
  loc_990FD3: from_stack_2 = Me.Item(from_stack_1)
  loc_990FD8: FLdPr var_A0
  loc_990FDB:  = Me.Value
  loc_990FE0: FLdRfVar var_B0
  loc_990FE3: CStrVarTmp
  loc_990FE4: FStStr var_88
  loc_990FE7: FFreeAd var_8C = ""
  loc_990FEE: FFree1Var var_B0 = ""
  loc_990FF1: ExitProcCbHresult
End Sub

Public Property Let TipoCtct(vDato) '96C418
  'Data Table: 4E07A8
  loc_96C3F8: ILdRf vDato
  loc_96C3FB: FStStrCopy var_88
  loc_96C3FE: ILdRf var_88
  loc_96C401: CVarStr var_A8
  loc_96C404: PopAdLdVar
  loc_96C405: LitVarStr var_98, "TipoCtct"
  loc_96C40A: PopAdLdVar
  loc_96C40B: FLdPr Me
  loc_96C40E: MemLdPr RsFrm
  loc_96C411: Me.Collect = from_stack_1
  loc_96C416: ExitProcHresult
End Sub

Public Property Get FealCtct() '991520
  'Data Table: 4E07A8
  loc_9914DC: ZeroRetVal
  loc_9914DE: FLdRfVar var_B0
  loc_9914E1: FLdRfVar var_A0
  loc_9914E4: LitVarStr var_9C, "FealCtct"
  loc_9914E9: PopAdLdVar
  loc_9914EA: FLdRfVar var_8C
  loc_9914ED: FLdPr Me
  loc_9914F0: MemLdPr RsFrm
  loc_9914F3:  = Me.Fields
  loc_9914F8: FLdPr var_8C
  loc_9914FB: from_stack_2 = Me.Item(from_stack_1)
  loc_991500: FLdPr var_A0
  loc_991503:  = Me.Value
  loc_991508: FLdRfVar var_B0
  loc_99150B: CStrVarTmp
  loc_99150C: FStStr var_88
  loc_99150F: FFreeAd var_8C = ""
  loc_991516: FFree1Var var_B0 = ""
  loc_991519: ExitProcCbHresult
End Sub

Public Property Let FealCtct(vDato) '96C370
  'Data Table: 4E07A8
  loc_96C350: ILdRf vDato
  loc_96C353: FStStrCopy var_88
  loc_96C356: ILdRf var_88
  loc_96C359: CVarStr var_A8
  loc_96C35C: PopAdLdVar
  loc_96C35D: LitVarStr var_98, "FealCtct"
  loc_96C362: PopAdLdVar
  loc_96C363: FLdPr Me
  loc_96C366: MemLdPr RsFrm
  loc_96C369: Me.Collect = from_stack_1
  loc_96C36E: ExitProcHresult
End Sub

Public Property Get FeveCtct() '989104
  'Data Table: 4E07A8
  loc_9890CC: ZeroRetValVar
  loc_9890CE: FLdRfVar var_AC
  loc_9890D1: LitVarStr var_A8, "FeveCtct"
  loc_9890D6: PopAdLdVar
  loc_9890D7: FLdRfVar var_98
  loc_9890DA: FLdPr Me
  loc_9890DD: MemLdPr RsFrm
  loc_9890E0:  = Me.Fields
  loc_9890E5: FLdPr var_98
  loc_9890E8: from_stack_2 = Me.Item(from_stack_1)
  loc_9890ED: FLdZeroAd var_AC
  loc_9890F0: CVarAd
  loc_9890F4: FStVar FeveCtct
  loc_9890F8: FFree1Ad var_98
  loc_9890FB: ExitProcCbHresult
End Sub

Public Property Let FeveCtct(vDato) '967D4C
  'Data Table: 4E07A8
  loc_967D30: FDupVar
  loc_967D36: FLdVar var_94
  loc_967D3A: LitVarStr var_A4, "FeveCtct"
  loc_967D3F: PopAdLdVar
  loc_967D40: FLdPr Me
  loc_967D43: MemLdPr RsFrm
  loc_967D46: Me.Collect = from_stack_1
  loc_967D4B: ExitProcHresult
End Sub

Public Property Get FeenAcpa() '991628
  'Data Table: 4E07A8
  loc_9915E4: ZeroRetVal
  loc_9915E6: FLdRfVar var_B0
  loc_9915E9: FLdRfVar var_A0
  loc_9915EC: LitVarStr var_9C, "FeenAcpa"
  loc_9915F1: PopAdLdVar
  loc_9915F2: FLdRfVar var_8C
  loc_9915F5: FLdPr Me
  loc_9915F8: MemLdPr RsFrm
  loc_9915FB:  = Me.Fields
  loc_991600: FLdPr var_8C
  loc_991603: from_stack_2 = Me.Item(from_stack_1)
  loc_991608: FLdPr var_A0
  loc_99160B:  = Me.Value
  loc_991610: FLdRfVar var_B0
  loc_991613: CStrVarTmp
  loc_991614: FStStr var_88
  loc_991617: FFreeAd var_8C = ""
  loc_99161E: FFree1Var var_B0 = ""
  loc_991621: ExitProcCbHresult
End Sub

Public Property Let FeenAcpa(vDato) '96C178
  'Data Table: 4E07A8
  loc_96C158: ILdRf vDato
  loc_96C15B: FStStrCopy var_88
  loc_96C15E: ILdRf var_88
  loc_96C161: CVarStr var_A8
  loc_96C164: PopAdLdVar
  loc_96C165: LitVarStr var_98, "FeenAcpa"
  loc_96C16A: PopAdLdVar
  loc_96C16B: FLdPr Me
  loc_96C16E: MemLdPr RsFrm
  loc_96C171: Me.Collect = from_stack_1
  loc_96C176: ExitProcHresult
End Sub

Public Property Get PeriInfo() '98E82C
  'Data Table: 4E07A8
  loc_98E7E8: FLdRfVar var_B0
  loc_98E7EB: FLdRfVar var_A0
  loc_98E7EE: LitVarStr var_9C, "PeriInfo"
  loc_98E7F3: PopAdLdVar
  loc_98E7F4: FLdRfVar var_8C
  loc_98E7F7: FLdPr Me
  loc_98E7FA: MemLdPr RsFrm
  loc_98E7FD:  = Me.Fields
  loc_98E802: FLdPr var_8C
  loc_98E805: from_stack_2 = Me.Item(from_stack_1)
  loc_98E80A: FLdPr var_A0
  loc_98E80D:  = Me.Value
  loc_98E812: FLdRfVar var_B0
  loc_98E815: CI2Var
  loc_98E816: FStI2 var_86
  loc_98E819: FFreeAd var_8C = ""
  loc_98E820: FFree1Var var_B0 = ""
  loc_98E823: ExitProcCbHresult
End Sub

Public Property Let PeriInfo(vDato) '95B1D0
  'Data Table: 4E07A8
  loc_95B1B4: FLdI2 vDato
  loc_95B1B7: CVarI2 var_A4
  loc_95B1BA: PopAdLdVar
  loc_95B1BB: LitVarStr var_94, "PeriInfo"
  loc_95B1C0: PopAdLdVar
  loc_95B1C1: FLdPr Me
  loc_95B1C4: MemLdPr RsFrm
  loc_95B1C7: Me.Collect = from_stack_1
  loc_95B1CC: ExitProcHresult
End Sub

Public Property Get CodiConc() '990314
  'Data Table: 4E07A8
  loc_9902D0: ZeroRetVal
  loc_9902D2: FLdRfVar var_B0
  loc_9902D5: FLdRfVar var_A0
  loc_9902D8: LitVarStr var_9C, "CodiConc"
  loc_9902DD: PopAdLdVar
  loc_9902DE: FLdRfVar var_8C
  loc_9902E1: FLdPr Me
  loc_9902E4: MemLdPr RsFrm
  loc_9902E7:  = Me.Fields
  loc_9902EC: FLdPr var_8C
  loc_9902EF: from_stack_2 = Me.Item(from_stack_1)
  loc_9902F4: FLdPr var_A0
  loc_9902F7:  = Me.Value
  loc_9902FC: FLdRfVar var_B0
  loc_9902FF: CStrVarTmp
  loc_990300: FStStr var_88
  loc_990303: FFreeAd var_8C = ""
  loc_99030A: FFree1Var var_B0 = ""
  loc_99030D: ExitProcCbHresult
End Sub

Public Property Let CodiConc(vDato) '96C4C0
  'Data Table: 4E07A8
  loc_96C4A0: ILdRf vDato
  loc_96C4A3: FStStrCopy var_88
  loc_96C4A6: ILdRf var_88
  loc_96C4A9: CVarStr var_A8
  loc_96C4AC: PopAdLdVar
  loc_96C4AD: LitVarStr var_98, "CodiConc"
  loc_96C4B2: PopAdLdVar
  loc_96C4B3: FLdPr Me
  loc_96C4B6: MemLdPr RsFrm
  loc_96C4B9: Me.Collect = from_stack_1
  loc_96C4BE: ExitProcHresult
End Sub

Public Property Get CodiFapa() '98DDAC
  'Data Table: 4E07A8
  loc_98DD68: FLdRfVar var_B0
  loc_98DD6B: FLdRfVar var_A0
  loc_98DD6E: LitVarStr var_9C, "CodiFapa"
  loc_98DD73: PopAdLdVar
  loc_98DD74: FLdRfVar var_8C
  loc_98DD77: FLdPr Me
  loc_98DD7A: MemLdPr RsFrm
  loc_98DD7D:  = Me.Fields
  loc_98DD82: FLdPr var_8C
  loc_98DD85: from_stack_2 = Me.Item(from_stack_1)
  loc_98DD8A: FLdPr var_A0
  loc_98DD8D:  = Me.Value
  loc_98DD92: FLdRfVar var_B0
  loc_98DD95: CI4Var
  loc_98DD97: FStR4 var_88
  loc_98DD9A: FFreeAd var_8C = ""
  loc_98DDA1: FFree1Var var_B0 = ""
  loc_98DDA4: ExitProcCbHresult
End Sub

Public Property Let CodiFapa(vDato) '95AB48
  'Data Table: 4E07A8
  loc_95AB2C: ILdRf vDato
  loc_95AB2F: CVarI4
  loc_95AB33: PopAdLdVar
  loc_95AB34: LitVarStr var_94, "CodiFapa"
  loc_95AB39: PopAdLdVar
  loc_95AB3A: FLdPr Me
  loc_95AB3D: MemLdPr RsFrm
  loc_95AB40: Me.Collect = from_stack_1
  loc_95AB45: ExitProcHresult
End Sub

Public Property Get CuotDefa() '98DE2C
  'Data Table: 4E07A8
  loc_98DDE8: FLdRfVar var_B0
  loc_98DDEB: FLdRfVar var_A0
  loc_98DDEE: LitVarStr var_9C, "CuotDefa"
  loc_98DDF3: PopAdLdVar
  loc_98DDF4: FLdRfVar var_8C
  loc_98DDF7: FLdPr Me
  loc_98DDFA: MemLdPr RsFrm
  loc_98DDFD:  = Me.Fields
  loc_98DE02: FLdPr var_8C
  loc_98DE05: from_stack_2 = Me.Item(from_stack_1)
  loc_98DE0A: FLdPr var_A0
  loc_98DE0D:  = Me.Value
  loc_98DE12: FLdRfVar var_B0
  loc_98DE15: CI2Var
  loc_98DE16: FStI2 var_86
  loc_98DE19: FFreeAd var_8C = ""
  loc_98DE20: FFree1Var var_B0 = ""
  loc_98DE23: ExitProcCbHresult
End Sub

Public Property Let CuotDefa(vDato) '95A8E8
  'Data Table: 4E07A8
  loc_95A8CC: FLdI2 vDato
  loc_95A8CF: CVarI2 var_A4
  loc_95A8D2: PopAdLdVar
  loc_95A8D3: LitVarStr var_94, "CuotDefa"
  loc_95A8D8: PopAdLdVar
  loc_95A8D9: FLdPr Me
  loc_95A8DC: MemLdPr RsFrm
  loc_95A8DF: Me.Collect = from_stack_1
  loc_95A8E4: ExitProcHresult
End Sub

Public Property Get NumeApre() '98DF2C
  'Data Table: 4E07A8
  loc_98DEE8: FLdRfVar var_B0
  loc_98DEEB: FLdRfVar var_A0
  loc_98DEEE: LitVarStr var_9C, "NumeApre"
  loc_98DEF3: PopAdLdVar
  loc_98DEF4: FLdRfVar var_8C
  loc_98DEF7: FLdPr Me
  loc_98DEFA: MemLdPr RsFrm
  loc_98DEFD:  = Me.Fields
  loc_98DF02: FLdPr var_8C
  loc_98DF05: from_stack_2 = Me.Item(from_stack_1)
  loc_98DF0A: FLdPr var_A0
  loc_98DF0D:  = Me.Value
  loc_98DF12: FLdRfVar var_B0
  loc_98DF15: CI4Var
  loc_98DF17: FStR4 var_88
  loc_98DF1A: FFreeAd var_8C = ""
  loc_98DF21: FFree1Var var_B0 = ""
  loc_98DF24: ExitProcCbHresult
End Sub

Public Property Let NumeApre(vDato) '95A17C
  'Data Table: 4E07A8
  loc_95A160: ILdRf vDato
  loc_95A163: CVarI4
  loc_95A167: PopAdLdVar
  loc_95A168: LitVarStr var_94, "NumeApre"
  loc_95A16D: PopAdLdVar
  loc_95A16E: FLdPr Me
  loc_95A171: MemLdPr RsFrm
  loc_95A174: Me.Collect = from_stack_1
  loc_95A179: ExitProcHresult
End Sub

Public Property Get CodiTimo() '98DFAC
  'Data Table: 4E07A8
  loc_98DF68: FLdRfVar var_B0
  loc_98DF6B: FLdRfVar var_A0
  loc_98DF6E: LitVarStr var_9C, "CodiTimo"
  loc_98DF73: PopAdLdVar
  loc_98DF74: FLdRfVar var_8C
  loc_98DF77: FLdPr Me
  loc_98DF7A: MemLdPr RsFrm
  loc_98DF7D:  = Me.Fields
  loc_98DF82: FLdPr var_8C
  loc_98DF85: from_stack_2 = Me.Item(from_stack_1)
  loc_98DF8A: FLdPr var_A0
  loc_98DF8D:  = Me.Value
  loc_98DF92: FLdRfVar var_B0
  loc_98DF95: CI2Var
  loc_98DF96: FStI2 var_86
  loc_98DF99: FFreeAd var_8C = ""
  loc_98DFA0: FFree1Var var_B0 = ""
  loc_98DFA3: ExitProcCbHresult
End Sub

Public Property Let CodiTimo(vDato) '959E38
  'Data Table: 4E07A8
  loc_959E1C: FLdI2 vDato
  loc_959E1F: CVarI2 var_A4
  loc_959E22: PopAdLdVar
  loc_959E23: LitVarStr var_94, "CodiTimo"
  loc_959E28: PopAdLdVar
  loc_959E29: FLdPr Me
  loc_959E2C: MemLdPr RsFrm
  loc_959E2F: Me.Collect = from_stack_1
  loc_959E34: ExitProcHresult
End Sub

Public Property Get ExpeCtct() '990080
  'Data Table: 4E07A8
  loc_99003C: ZeroRetVal
  loc_99003E: FLdRfVar var_B0
  loc_990041: FLdRfVar var_A0
  loc_990044: LitVarStr var_9C, "ExpeCtct"
  loc_990049: PopAdLdVar
  loc_99004A: FLdRfVar var_8C
  loc_99004D: FLdPr Me
  loc_990050: MemLdPr RsFrm
  loc_990053:  = Me.Fields
  loc_990058: FLdPr var_8C
  loc_99005B: from_stack_2 = Me.Item(from_stack_1)
  loc_990060: FLdPr var_A0
  loc_990063:  = Me.Value
  loc_990068: FLdRfVar var_B0
  loc_99006B: CStrVarTmp
  loc_99006C: FStStr var_88
  loc_99006F: FFreeAd var_8C = ""
  loc_990076: FFree1Var var_B0 = ""
  loc_990079: ExitProcCbHresult
End Sub

Public Property Let ExpeCtct(vDato) '96C514
  'Data Table: 4E07A8
  loc_96C4F4: ILdRf vDato
  loc_96C4F7: FStStrCopy var_88
  loc_96C4FA: ILdRf var_88
  loc_96C4FD: CVarStr var_A8
  loc_96C500: PopAdLdVar
  loc_96C501: LitVarStr var_98, "ExpeCtct"
  loc_96C506: PopAdLdVar
  loc_96C507: FLdPr Me
  loc_96C50A: MemLdPr RsFrm
  loc_96C50D: Me.Collect = from_stack_1
  loc_96C512: ExitProcHresult
End Sub

Public Property Get TifaCtct() '9909C8
  'Data Table: 4E07A8
  loc_990984: ZeroRetVal
  loc_990986: FLdRfVar var_B0
  loc_990989: FLdRfVar var_A0
  loc_99098C: LitVarStr var_9C, "TifaCtct"
  loc_990991: PopAdLdVar
  loc_990992: FLdRfVar var_8C
  loc_990995: FLdPr Me
  loc_990998: MemLdPr RsFrm
  loc_99099B:  = Me.Fields
  loc_9909A0: FLdPr var_8C
  loc_9909A3: from_stack_2 = Me.Item(from_stack_1)
  loc_9909A8: FLdPr var_A0
  loc_9909AB:  = Me.Value
  loc_9909B0: FLdRfVar var_B0
  loc_9909B3: CStrVarTmp
  loc_9909B4: FStStr var_88
  loc_9909B7: FFreeAd var_8C = ""
  loc_9909BE: FFree1Var var_B0 = ""
  loc_9909C1: ExitProcCbHresult
End Sub

Public Property Let TifaCtct(vDato) '96C46C
  'Data Table: 4E07A8
  loc_96C44C: ILdRf vDato
  loc_96C44F: FStStrCopy var_88
  loc_96C452: ILdRf var_88
  loc_96C455: CVarStr var_A8
  loc_96C458: PopAdLdVar
  loc_96C459: LitVarStr var_98, "TifaCtct"
  loc_96C45E: PopAdLdVar
  loc_96C45F: FLdPr Me
  loc_96C462: MemLdPr RsFrm
  loc_96C465: Me.Collect = from_stack_1
  loc_96C46A: ExitProcHresult
End Sub

Public Property Get SufaCtct() '98E02C
  'Data Table: 4E07A8
  loc_98DFE8: FLdRfVar var_B0
  loc_98DFEB: FLdRfVar var_A0
  loc_98DFEE: LitVarStr var_9C, "SufaCtct"
  loc_98DFF3: PopAdLdVar
  loc_98DFF4: FLdRfVar var_8C
  loc_98DFF7: FLdPr Me
  loc_98DFFA: MemLdPr RsFrm
  loc_98DFFD:  = Me.Fields
  loc_98E002: FLdPr var_8C
  loc_98E005: from_stack_2 = Me.Item(from_stack_1)
  loc_98E00A: FLdPr var_A0
  loc_98E00D:  = Me.Value
  loc_98E012: FLdRfVar var_B0
  loc_98E015: CI2Var
  loc_98E016: FStI2 var_86
  loc_98E019: FFreeAd var_8C = ""
  loc_98E020: FFree1Var var_B0 = ""
  loc_98E023: ExitProcCbHresult
End Sub

Public Property Let SufaCtct(vDato) '966274
  'Data Table: 4E07A8
  loc_966258: FLdI2 vDato
  loc_96625B: CVarI2 var_A4
  loc_96625E: PopAdLdVar
  loc_96625F: LitVarStr var_94, "SufaCtct"
  loc_966264: PopAdLdVar
  loc_966265: FLdPr Me
  loc_966268: MemLdPr RsFrm
  loc_96626B: Me.Collect = from_stack_1
  loc_966270: ExitProcHresult
End Sub

Public Property Get NufaCtct() '98E0AC
  'Data Table: 4E07A8
  loc_98E068: FLdRfVar var_B0
  loc_98E06B: FLdRfVar var_A0
  loc_98E06E: LitVarStr var_9C, "NufaCtct"
  loc_98E073: PopAdLdVar
  loc_98E074: FLdRfVar var_8C
  loc_98E077: FLdPr Me
  loc_98E07A: MemLdPr RsFrm
  loc_98E07D:  = Me.Fields
  loc_98E082: FLdPr var_8C
  loc_98E085: from_stack_2 = Me.Item(from_stack_1)
  loc_98E08A: FLdPr var_A0
  loc_98E08D:  = Me.Value
  loc_98E092: FLdRfVar var_B0
  loc_98E095: CI4Var
  loc_98E097: FStR4 var_88
  loc_98E09A: FFreeAd var_8C = ""
  loc_98E0A1: FFree1Var var_B0 = ""
  loc_98E0A4: ExitProcCbHresult
End Sub

Public Property Let NufaCtct(vDato) '965C38
  'Data Table: 4E07A8
  loc_965C1C: ILdRf vDato
  loc_965C1F: CVarI4
  loc_965C23: PopAdLdVar
  loc_965C24: LitVarStr var_94, "NufaCtct"
  loc_965C29: PopAdLdVar
  loc_965C2A: FLdPr Me
  loc_965C2D: MemLdPr RsFrm
  loc_965C30: Me.Collect = from_stack_1
  loc_965C35: ExitProcHresult
End Sub

Public Property Get DetaCtct() '9907B8
  'Data Table: 4E07A8
  loc_990774: ZeroRetVal
  loc_990776: FLdRfVar var_B0
  loc_990779: FLdRfVar var_A0
  loc_99077C: LitVarStr var_9C, "DetaCtct"
  loc_990781: PopAdLdVar
  loc_990782: FLdRfVar var_8C
  loc_990785: FLdPr Me
  loc_990788: MemLdPr RsFrm
  loc_99078B:  = Me.Fields
  loc_990790: FLdPr var_8C
  loc_990793: from_stack_2 = Me.Item(from_stack_1)
  loc_990798: FLdPr var_A0
  loc_99079B:  = Me.Value
  loc_9907A0: FLdRfVar var_B0
  loc_9907A3: CStrVarTmp
  loc_9907A4: FStStr var_88
  loc_9907A7: FFreeAd var_8C = ""
  loc_9907AE: FFree1Var var_B0 = ""
  loc_9907B1: ExitProcCbHresult
End Sub

Public Property Let DetaCtct(vDato) '96C610
  'Data Table: 4E07A8
  loc_96C5F0: ILdRf vDato
  loc_96C5F3: FStStrCopy var_88
  loc_96C5F6: ILdRf var_88
  loc_96C5F9: CVarStr var_A8
  loc_96C5FC: PopAdLdVar
  loc_96C5FD: LitVarStr var_98, "DetaCtct"
  loc_96C602: PopAdLdVar
  loc_96C603: FLdPr Me
  loc_96C606: MemLdPr RsFrm
  loc_96C609: Me.Collect = from_stack_1
  loc_96C60E: ExitProcHresult
End Sub

Public Property Get DebeCtct() '98E12C
  'Data Table: 4E07A8
  loc_98E0E8: FLdRfVar var_B4
  loc_98E0EB: FLdRfVar var_A4
  loc_98E0EE: LitVarStr var_A0, "DebeCtct"
  loc_98E0F3: PopAdLdVar
  loc_98E0F4: FLdRfVar var_90
  loc_98E0F7: FLdPr Me
  loc_98E0FA: MemLdPr RsFrm
  loc_98E0FD:  = Me.Fields
  loc_98E102: FLdPr var_90
  loc_98E105: from_stack_2 = Me.Item(from_stack_1)
  loc_98E10A: FLdPr var_A4
  loc_98E10D:  = Me.Value
  loc_98E112: FLdRfVar var_B4
  loc_98E115: CR4Var
  loc_98E116: FStFPR8 var_8C
  loc_98E119: FFreeAd var_90 = ""
  loc_98E120: FFree1Var var_B4 = ""
  loc_98E123: ExitProcCbHresult
End Sub

Public Property Let DebeCtct(vDato) '9594B8
  'Data Table: 4E07A8
  loc_95949C: FLdFPR8 vDato
  loc_95949F: CVarR8
  loc_9594A3: PopAdLdVar
  loc_9594A4: LitVarStr var_94, "DebeCtct"
  loc_9594A9: PopAdLdVar
  loc_9594AA: FLdPr Me
  loc_9594AD: MemLdPr RsFrm
  loc_9594B0: Me.Collect = from_stack_1
  loc_9594B5: ExitProcHresult
End Sub

Public Property Get CredCtct() '98E1AC
  'Data Table: 4E07A8
  loc_98E168: FLdRfVar var_B4
  loc_98E16B: FLdRfVar var_A4
  loc_98E16E: LitVarStr var_A0, "CredCtct"
  loc_98E173: PopAdLdVar
  loc_98E174: FLdRfVar var_90
  loc_98E177: FLdPr Me
  loc_98E17A: MemLdPr RsFrm
  loc_98E17D:  = Me.Fields
  loc_98E182: FLdPr var_90
  loc_98E185: from_stack_2 = Me.Item(from_stack_1)
  loc_98E18A: FLdPr var_A4
  loc_98E18D:  = Me.Value
  loc_98E192: FLdRfVar var_B4
  loc_98E195: CR4Var
  loc_98E196: FStFPR8 var_8C
  loc_98E199: FFreeAd var_90 = ""
  loc_98E1A0: FFree1Var var_B4 = ""
  loc_98E1A3: ExitProcCbHresult
End Sub

Public Property Let CredCtct(vDato) '95933C
  'Data Table: 4E07A8
  loc_959320: FLdFPR8 vDato
  loc_959323: CVarR8
  loc_959327: PopAdLdVar
  loc_959328: LitVarStr var_94, "CredCtct"
  loc_95932D: PopAdLdVar
  loc_95932E: FLdPr Me
  loc_959331: MemLdPr RsFrm
  loc_959334: Me.Collect = from_stack_1
  loc_959339: ExitProcHresult
End Sub

Public Property Get CodiUsua() '99149C
  'Data Table: 4E07A8
  loc_991458: ZeroRetVal
  loc_99145A: FLdRfVar var_B0
  loc_99145D: FLdRfVar var_A0
  loc_991460: LitVarStr var_9C, "CodiUsua"
  loc_991465: PopAdLdVar
  loc_991466: FLdRfVar var_8C
  loc_991469: FLdPr Me
  loc_99146C: MemLdPr RsFrm
  loc_99146F:  = Me.Fields
  loc_991474: FLdPr var_8C
  loc_991477: from_stack_2 = Me.Item(from_stack_1)
  loc_99147C: FLdPr var_A0
  loc_99147F:  = Me.Value
  loc_991484: FLdRfVar var_B0
  loc_991487: CStrVarTmp
  loc_991488: FStStr var_88
  loc_99148B: FFreeAd var_8C = ""
  loc_991492: FFree1Var var_B0 = ""
  loc_991495: ExitProcCbHresult
End Sub

Public Property Let CodiUsua(vDato) '96C568
  'Data Table: 4E07A8
  loc_96C548: ILdRf vDato
  loc_96C54B: FStStrCopy var_88
  loc_96C54E: ILdRf var_88
  loc_96C551: CVarStr var_A8
  loc_96C554: PopAdLdVar
  loc_96C555: LitVarStr var_98, "CodiUsua"
  loc_96C55A: PopAdLdVar
  loc_96C55B: FLdPr Me
  loc_96C55E: MemLdPr RsFrm
  loc_96C561: Me.Collect = from_stack_1
  loc_96C566: ExitProcHresult
End Sub

Public Property Get PeriOrde() '98E22C
  'Data Table: 4E07A8
  loc_98E1E8: FLdRfVar var_B0
  loc_98E1EB: FLdRfVar var_A0
  loc_98E1EE: LitVarStr var_9C, "PeriOrde"
  loc_98E1F3: PopAdLdVar
  loc_98E1F4: FLdRfVar var_8C
  loc_98E1F7: FLdPr Me
  loc_98E1FA: MemLdPr RsFrm
  loc_98E1FD:  = Me.Fields
  loc_98E202: FLdPr var_8C
  loc_98E205: from_stack_2 = Me.Item(from_stack_1)
  loc_98E20A: FLdPr var_A0
  loc_98E20D:  = Me.Value
  loc_98E212: FLdRfVar var_B0
  loc_98E215: CI2Var
  loc_98E216: FStI2 var_86
  loc_98E219: FFreeAd var_8C = ""
  loc_98E220: FFree1Var var_B0 = ""
  loc_98E223: ExitProcCbHresult
End Sub

Public Property Get CodiCtde() '99020C
  'Data Table: 4E07A8
  loc_9901C8: ZeroRetVal
  loc_9901CA: FLdRfVar var_B0
  loc_9901CD: FLdRfVar var_A0
  loc_9901D0: LitVarStr var_9C, "CodiCtde"
  loc_9901D5: PopAdLdVar
  loc_9901D6: FLdRfVar var_8C
  loc_9901D9: FLdPr Me
  loc_9901DC: MemLdPr RsFrm
  loc_9901DF:  = Me.Fields
  loc_9901E4: FLdPr var_8C
  loc_9901E7: from_stack_2 = Me.Item(from_stack_1)
  loc_9901EC: FLdPr var_A0
  loc_9901EF:  = Me.Value
  loc_9901F4: FLdRfVar var_B0
  loc_9901F7: CStrVarTmp
  loc_9901F8: FStStr var_88
  loc_9901FB: FFreeAd var_8C = ""
  loc_990202: FFree1Var var_B0 = ""
  loc_990205: ExitProcCbHresult
End Sub

Public Property Get NumeCtde() '98E2AC
  'Data Table: 4E07A8
  loc_98E268: FLdRfVar var_B0
  loc_98E26B: FLdRfVar var_A0
  loc_98E26E: LitVarStr var_9C, "NumeCtde"
  loc_98E273: PopAdLdVar
  loc_98E274: FLdRfVar var_8C
  loc_98E277: FLdPr Me
  loc_98E27A: MemLdPr RsFrm
  loc_98E27D:  = Me.Fields
  loc_98E282: FLdPr var_8C
  loc_98E285: from_stack_2 = Me.Item(from_stack_1)
  loc_98E28A: FLdPr var_A0
  loc_98E28D:  = Me.Value
  loc_98E292: FLdRfVar var_B0
  loc_98E295: CI4Var
  loc_98E297: FStR4 var_88
  loc_98E29A: FFreeAd var_8C = ""
  loc_98E2A1: FFree1Var var_B0 = ""
  loc_98E2A4: ExitProcCbHresult
End Sub

Public Property Get MoviCtde() '98E32C
  'Data Table: 4E07A8
  loc_98E2E8: FLdRfVar var_B0
  loc_98E2EB: FLdRfVar var_A0
  loc_98E2EE: LitVarStr var_9C, "MoviCtde"
  loc_98E2F3: PopAdLdVar
  loc_98E2F4: FLdRfVar var_8C
  loc_98E2F7: FLdPr Me
  loc_98E2FA: MemLdPr RsFrm
  loc_98E2FD:  = Me.Fields
  loc_98E302: FLdPr var_8C
  loc_98E305: from_stack_2 = Me.Item(from_stack_1)
  loc_98E30A: FLdPr var_A0
  loc_98E30D:  = Me.Value
  loc_98E312: FLdRfVar var_B0
  loc_98E315: CI2Var
  loc_98E316: FStI2 var_86
  loc_98E319: FFreeAd var_8C = ""
  loc_98E320: FFree1Var var_B0 = ""
  loc_98E323: ExitProcCbHresult
End Sub

Public Property Get ImpoCtde() '98E3AC
  'Data Table: 4E07A8
  loc_98E368: FLdRfVar var_B4
  loc_98E36B: FLdRfVar var_A4
  loc_98E36E: LitVarStr var_A0, "ImpoCtde"
  loc_98E373: PopAdLdVar
  loc_98E374: FLdRfVar var_90
  loc_98E377: FLdPr Me
  loc_98E37A: MemLdPr RsFrm
  loc_98E37D:  = Me.Fields
  loc_98E382: FLdPr var_90
  loc_98E385: from_stack_2 = Me.Item(from_stack_1)
  loc_98E38A: FLdPr var_A4
  loc_98E38D:  = Me.Value
  loc_98E392: FLdRfVar var_B4
  loc_98E395: CR4Var
  loc_98E396: FStFPR8 var_8C
  loc_98E399: FFreeAd var_90 = ""
  loc_98E3A0: FFree1Var var_B4 = ""
  loc_98E3A3: ExitProcCbHresult
End Sub

Public Property Get SaldCtde() '98E42C
  'Data Table: 4E07A8
  loc_98E3E8: FLdRfVar var_B4
  loc_98E3EB: FLdRfVar var_A4
  loc_98E3EE: LitVarStr var_A0, "SaldCtde"
  loc_98E3F3: PopAdLdVar
  loc_98E3F4: FLdRfVar var_90
  loc_98E3F7: FLdPr Me
  loc_98E3FA: MemLdPr RsFrm
  loc_98E3FD:  = Me.Fields
  loc_98E402: FLdPr var_90
  loc_98E405: from_stack_2 = Me.Item(from_stack_1)
  loc_98E40A: FLdPr var_A4
  loc_98E40D:  = Me.Value
  loc_98E412: FLdRfVar var_B4
  loc_98E415: CR4Var
  loc_98E416: FStFPR8 var_8C
  loc_98E419: FFreeAd var_90 = ""
  loc_98E420: FFree1Var var_B4 = ""
  loc_98E423: ExitProcCbHresult
End Sub

Public Property Get AbreTimo() '99062C
  'Data Table: 4E07A8
  loc_9905E8: ZeroRetVal
  loc_9905EA: FLdRfVar var_B0
  loc_9905ED: FLdRfVar var_A0
  loc_9905F0: LitVarStr var_9C, "AbreTimo"
  loc_9905F5: PopAdLdVar
  loc_9905F6: FLdRfVar var_8C
  loc_9905F9: FLdPr Me
  loc_9905FC: MemLdPr RsFrm
  loc_9905FF:  = Me.Fields
  loc_990604: FLdPr var_8C
  loc_990607: from_stack_2 = Me.Item(from_stack_1)
  loc_99060C: FLdPr var_A0
  loc_99060F:  = Me.Value
  loc_990614: FLdRfVar var_B0
  loc_990617: CStrVarTmp
  loc_990618: FStStr var_88
  loc_99061B: FFreeAd var_8C = ""
  loc_990622: FFree1Var var_B0 = ""
  loc_990625: ExitProcCbHresult
End Sub

Public Property Get RecaCtct() '98E4AC
  'Data Table: 4E07A8
  loc_98E468: FLdRfVar var_B4
  loc_98E46B: FLdRfVar var_A4
  loc_98E46E: LitVarStr var_A0, "RecaCtct"
  loc_98E473: PopAdLdVar
  loc_98E474: FLdRfVar var_90
  loc_98E477: FLdPr Me
  loc_98E47A: MemLdPr RsFrm
  loc_98E47D:  = Me.Fields
  loc_98E482: FLdPr var_90
  loc_98E485: from_stack_2 = Me.Item(from_stack_1)
  loc_98E48A: FLdPr var_A4
  loc_98E48D:  = Me.Value
  loc_98E492: FLdRfVar var_B4
  loc_98E495: CR4Var
  loc_98E496: FStFPR8 var_8C
  loc_98E499: FFreeAd var_90 = ""
  loc_98E4A0: FFree1Var var_B4 = ""
  loc_98E4A3: ExitProcCbHresult
End Sub

Public Property Get SaldCtct() '98E52C
  'Data Table: 4E07A8
  loc_98E4E8: FLdRfVar var_B4
  loc_98E4EB: FLdRfVar var_A4
  loc_98E4EE: LitVarStr var_A0, "SaldCtct"
  loc_98E4F3: PopAdLdVar
  loc_98E4F4: FLdRfVar var_90
  loc_98E4F7: FLdPr Me
  loc_98E4FA: MemLdPr RsFrm
  loc_98E4FD:  = Me.Fields
  loc_98E502: FLdPr var_90
  loc_98E505: from_stack_2 = Me.Item(from_stack_1)
  loc_98E50A: FLdPr var_A4
  loc_98E50D:  = Me.Value
  loc_98E512: FLdRfVar var_B4
  loc_98E515: CR4Var
  loc_98E516: FStFPR8 var_8C
  loc_98E519: FFreeAd var_90 = ""
  loc_98E520: FFree1Var var_B4 = ""
  loc_98E523: ExitProcCbHresult
End Sub

Public Property Let SaldCtct(vDato) '963A60
  'Data Table: 4E07A8
  loc_963A44: FLdFPR8 vDato
  loc_963A47: CVarR8
  loc_963A4B: PopAdLdVar
  loc_963A4C: LitVarStr var_94, "SaldCtct"
  loc_963A51: PopAdLdVar
  loc_963A52: FLdPr Me
  loc_963A55: MemLdPr RsFrm
  loc_963A58: Me.Collect = from_stack_1
  loc_963A5D: ExitProcHresult
End Sub

Public Property Get SeleCtct() '99041C
  'Data Table: 4E07A8
  loc_9903D8: ZeroRetVal
  loc_9903DA: FLdRfVar var_B0
  loc_9903DD: FLdRfVar var_A0
  loc_9903E0: LitVarStr var_9C, "SeleCtct"
  loc_9903E5: PopAdLdVar
  loc_9903E6: FLdRfVar var_8C
  loc_9903E9: FLdPr Me
  loc_9903EC: MemLdPr RsFrm
  loc_9903EF:  = Me.Fields
  loc_9903F4: FLdPr var_8C
  loc_9903F7: from_stack_2 = Me.Item(from_stack_1)
  loc_9903FC: FLdPr var_A0
  loc_9903FF:  = Me.Value
  loc_990404: FLdRfVar var_B0
  loc_990407: CStrVarTmp
  loc_990408: FStStr var_88
  loc_99040B: FFreeAd var_8C = ""
  loc_990412: FFree1Var var_B0 = ""
  loc_990415: ExitProcCbHresult
End Sub

Public Property Let SeleCtct(vDato) '96C124
  'Data Table: 4E07A8
  loc_96C104: ILdRf vDato
  loc_96C107: FStStrCopy var_88
  loc_96C10A: ILdRf var_88
  loc_96C10D: CVarStr var_A8
  loc_96C110: PopAdLdVar
  loc_96C111: LitVarStr var_98, "SeleCtct"
  loc_96C116: PopAdLdVar
  loc_96C117: FLdPr Me
  loc_96C11A: MemLdPr RsFrm
  loc_96C11D: Me.Collect = from_stack_1
  loc_96C122: ExitProcHresult
End Sub

Public Property Get DetaPers() '9884D4
  'Data Table: 4E07A8
  loc_98849C: ZeroRetValVar
  loc_98849E: FLdRfVar var_AC
  loc_9884A1: LitVarStr var_A8, "DetaPers"
  loc_9884A6: PopAdLdVar
  loc_9884A7: FLdRfVar var_98
  loc_9884AA: FLdPr Me
  loc_9884AD: MemLdPr RsFrm
  loc_9884B0:  = Me.Fields
  loc_9884B5: FLdPr var_98
  loc_9884B8: from_stack_2 = Me.Item(from_stack_1)
  loc_9884BD: FLdZeroAd var_AC
  loc_9884C0: CVarAd
  loc_9884C4: FStVar DetaPers
  loc_9884C8: FFree1Ad var_98
  loc_9884CB: ExitProcCbHresult
End Sub

Public Property Get CucuPers() '98845C
  'Data Table: 4E07A8
  loc_988424: ZeroRetValVar
  loc_988426: FLdRfVar var_AC
  loc_988429: LitVarStr var_A8, "CucuPers"
  loc_98842E: PopAdLdVar
  loc_98842F: FLdRfVar var_98
  loc_988432: FLdPr Me
  loc_988435: MemLdPr RsFrm
  loc_988438:  = Me.Fields
  loc_98843D: FLdPr var_98
  loc_988440: from_stack_2 = Me.Item(from_stack_1)
  loc_988445: FLdZeroAd var_AC
  loc_988448: CVarAd
  loc_98844C: FStVar CucuPers
  loc_988450: FFree1Ad var_98
  loc_988453: ExitProcCbHresult
End Sub

Public Property Get DecaPost() '990524
  'Data Table: 4E07A8
  loc_9904E0: ZeroRetVal
  loc_9904E2: FLdRfVar var_B0
  loc_9904E5: FLdRfVar var_A0
  loc_9904E8: LitVarStr var_9C, "DecaPost"
  loc_9904ED: PopAdLdVar
  loc_9904EE: FLdRfVar var_8C
  loc_9904F1: FLdPr Me
  loc_9904F4: MemLdPr RsFrm
  loc_9904F7:  = Me.Fields
  loc_9904FC: FLdPr var_8C
  loc_9904FF: from_stack_2 = Me.Item(from_stack_1)
  loc_990504: FLdPr var_A0
  loc_990507:  = Me.Value
  loc_99050C: FLdRfVar var_B0
  loc_99050F: CStrVarTmp
  loc_990510: FStStr var_88
  loc_990513: FFreeAd var_8C = ""
  loc_99051A: FFree1Var var_B0 = ""
  loc_99051D: ExitProcCbHresult
End Sub

Public Property Get NumePost() '990398
  'Data Table: 4E07A8
  loc_990354: ZeroRetVal
  loc_990356: FLdRfVar var_B0
  loc_990359: FLdRfVar var_A0
  loc_99035C: LitVarStr var_9C, "NumePost"
  loc_990361: PopAdLdVar
  loc_990362: FLdRfVar var_8C
  loc_990365: FLdPr Me
  loc_990368: MemLdPr RsFrm
  loc_99036B:  = Me.Fields
  loc_990370: FLdPr var_8C
  loc_990373: from_stack_2 = Me.Item(from_stack_1)
  loc_990378: FLdPr var_A0
  loc_99037B:  = Me.Value
  loc_990380: FLdRfVar var_B0
  loc_990383: CStrVarTmp
  loc_990384: FStStr var_88
  loc_990387: FFreeAd var_8C = ""
  loc_99038E: FFree1Var var_B0 = ""
  loc_990391: ExitProcCbHresult
End Sub

Public Property Get DebaPost() '991100
  'Data Table: 4E07A8
  loc_9910BC: ZeroRetVal
  loc_9910BE: FLdRfVar var_B0
  loc_9910C1: FLdRfVar var_A0
  loc_9910C4: LitVarStr var_9C, "DebaPost"
  loc_9910C9: PopAdLdVar
  loc_9910CA: FLdRfVar var_8C
  loc_9910CD: FLdPr Me
  loc_9910D0: MemLdPr RsFrm
  loc_9910D3:  = Me.Fields
  loc_9910D8: FLdPr var_8C
  loc_9910DB: from_stack_2 = Me.Item(from_stack_1)
  loc_9910E0: FLdPr var_A0
  loc_9910E3:  = Me.Value
  loc_9910E8: FLdRfVar var_B0
  loc_9910EB: CStrVarTmp
  loc_9910EC: FStStr var_88
  loc_9910EF: FFreeAd var_8C = ""
  loc_9910F6: FFree1Var var_B0 = ""
  loc_9910F9: ExitProcCbHresult
End Sub

Public Property Get ManzPost() '990C5C
  'Data Table: 4E07A8
  loc_990C18: ZeroRetVal
  loc_990C1A: FLdRfVar var_B0
  loc_990C1D: FLdRfVar var_A0
  loc_990C20: LitVarStr var_9C, "ManzPost"
  loc_990C25: PopAdLdVar
  loc_990C26: FLdRfVar var_8C
  loc_990C29: FLdPr Me
  loc_990C2C: MemLdPr RsFrm
  loc_990C2F:  = Me.Fields
  loc_990C34: FLdPr var_8C
  loc_990C37: from_stack_2 = Me.Item(from_stack_1)
  loc_990C3C: FLdPr var_A0
  loc_990C3F:  = Me.Value
  loc_990C44: FLdRfVar var_B0
  loc_990C47: CStrVarTmp
  loc_990C48: FStStr var_88
  loc_990C4B: FFreeAd var_8C = ""
  loc_990C52: FFree1Var var_B0 = ""
  loc_990C55: ExitProcCbHresult
End Sub

Public Property Get CasaPost() '99128C
  'Data Table: 4E07A8
  loc_991248: ZeroRetVal
  loc_99124A: FLdRfVar var_B0
  loc_99124D: FLdRfVar var_A0
  loc_991250: LitVarStr var_9C, "CasaPost"
  loc_991255: PopAdLdVar
  loc_991256: FLdRfVar var_8C
  loc_991259: FLdPr Me
  loc_99125C: MemLdPr RsFrm
  loc_99125F:  = Me.Fields
  loc_991264: FLdPr var_8C
  loc_991267: from_stack_2 = Me.Item(from_stack_1)
  loc_99126C: FLdPr var_A0
  loc_99126F:  = Me.Value
  loc_991274: FLdRfVar var_B0
  loc_991277: CStrVarTmp
  loc_991278: FStStr var_88
  loc_99127B: FFreeAd var_8C = ""
  loc_991282: FFree1Var var_B0 = ""
  loc_991285: ExitProcCbHresult
End Sub

Public Property Get DeloPost() '991394
  'Data Table: 4E07A8
  loc_991350: ZeroRetVal
  loc_991352: FLdRfVar var_B0
  loc_991355: FLdRfVar var_A0
  loc_991358: LitVarStr var_9C, "DeloPost"
  loc_99135D: PopAdLdVar
  loc_99135E: FLdRfVar var_8C
  loc_991361: FLdPr Me
  loc_991364: MemLdPr RsFrm
  loc_991367:  = Me.Fields
  loc_99136C: FLdPr var_8C
  loc_99136F: from_stack_2 = Me.Item(from_stack_1)
  loc_991374: FLdPr var_A0
  loc_991377:  = Me.Value
  loc_99137C: FLdRfVar var_B0
  loc_99137F: CStrVarTmp
  loc_991380: FStStr var_88
  loc_991383: FFreeAd var_8C = ""
  loc_99138A: FFree1Var var_B0 = ""
  loc_99138D: ExitProcCbHresult
End Sub

Public Property Get CopoPost() '991310
  'Data Table: 4E07A8
  loc_9912CC: ZeroRetVal
  loc_9912CE: FLdRfVar var_B0
  loc_9912D1: FLdRfVar var_A0
  loc_9912D4: LitVarStr var_9C, "CopoPost"
  loc_9912D9: PopAdLdVar
  loc_9912DA: FLdRfVar var_8C
  loc_9912DD: FLdPr Me
  loc_9912E0: MemLdPr RsFrm
  loc_9912E3:  = Me.Fields
  loc_9912E8: FLdPr var_8C
  loc_9912EB: from_stack_2 = Me.Item(from_stack_1)
  loc_9912F0: FLdPr var_A0
  loc_9912F3:  = Me.Value
  loc_9912F8: FLdRfVar var_B0
  loc_9912FB: CStrVarTmp
  loc_9912FC: FStStr var_88
  loc_9912FF: FFreeAd var_8C = ""
  loc_991306: FFree1Var var_B0 = ""
  loc_991309: ExitProcCbHresult
End Sub

Public Property Get DetaCall() '98809C
  'Data Table: 4E07A8
  loc_988064: ZeroRetValVar
  loc_988066: FLdRfVar var_AC
  loc_988069: LitVarStr var_A8, "DetaCall"
  loc_98806E: PopAdLdVar
  loc_98806F: FLdRfVar var_98
  loc_988072: FLdPr Me
  loc_988075: MemLdPr RsFrm
  loc_988078:  = Me.Fields
  loc_98807D: FLdPr var_98
  loc_988080: from_stack_2 = Me.Item(from_stack_1)
  loc_988085: FLdZeroAd var_AC
  loc_988088: CVarAd
  loc_98808C: FStVar DetaCall
  loc_988090: FFree1Ad var_98
  loc_988093: ExitProcCbHresult
End Sub

Public Property Get NucaInmu() '991418
  'Data Table: 4E07A8
  loc_9913D4: ZeroRetVal
  loc_9913D6: FLdRfVar var_B0
  loc_9913D9: FLdRfVar var_A0
  loc_9913DC: LitVarStr var_9C, "NucaInmu"
  loc_9913E1: PopAdLdVar
  loc_9913E2: FLdRfVar var_8C
  loc_9913E5: FLdPr Me
  loc_9913E8: MemLdPr RsFrm
  loc_9913EB:  = Me.Fields
  loc_9913F0: FLdPr var_8C
  loc_9913F3: from_stack_2 = Me.Item(from_stack_1)
  loc_9913F8: FLdPr var_A0
  loc_9913FB:  = Me.Value
  loc_991400: FLdRfVar var_B0
  loc_991403: CStrVarTmp
  loc_991404: FStStr var_88
  loc_991407: FFreeAd var_8C = ""
  loc_99140E: FFree1Var var_B0 = ""
  loc_991411: ExitProcCbHresult
End Sub

Public Property Get NucaCome() '990E6C
  'Data Table: 4E07A8
  loc_990E28: ZeroRetVal
  loc_990E2A: FLdRfVar var_B0
  loc_990E2D: FLdRfVar var_A0
  loc_990E30: LitVarStr var_9C, "NucaCome"
  loc_990E35: PopAdLdVar
  loc_990E36: FLdRfVar var_8C
  loc_990E39: FLdPr Me
  loc_990E3C: MemLdPr RsFrm
  loc_990E3F:  = Me.Fields
  loc_990E44: FLdPr var_8C
  loc_990E47: from_stack_2 = Me.Item(from_stack_1)
  loc_990E4C: FLdPr var_A0
  loc_990E4F:  = Me.Value
  loc_990E54: FLdRfVar var_B0
  loc_990E57: CStrVarTmp
  loc_990E58: FStStr var_88
  loc_990E5B: FFreeAd var_8C = ""
  loc_990E62: FFree1Var var_B0 = ""
  loc_990E65: ExitProcCbHresult
End Sub

Public Property Get DetaLoca() '990944
  'Data Table: 4E07A8
  loc_990900: ZeroRetVal
  loc_990902: FLdRfVar var_B0
  loc_990905: FLdRfVar var_A0
  loc_990908: LitVarStr var_9C, "DetaLoca"
  loc_99090D: PopAdLdVar
  loc_99090E: FLdRfVar var_8C
  loc_990911: FLdPr Me
  loc_990914: MemLdPr RsFrm
  loc_990917:  = Me.Fields
  loc_99091C: FLdPr var_8C
  loc_99091F: from_stack_2 = Me.Item(from_stack_1)
  loc_990924: FLdPr var_A0
  loc_990927:  = Me.Value
  loc_99092C: FLdRfVar var_B0
  loc_99092F: CStrVarTmp
  loc_990930: FStStr var_88
  loc_990933: FFreeAd var_8C = ""
  loc_99093A: FFree1Var var_B0 = ""
  loc_99093D: ExitProcCbHresult
End Sub

Public Property Get CodiPost() '98FA50
  'Data Table: 4E07A8
  loc_98FA0C: ZeroRetVal
  loc_98FA0E: FLdRfVar var_B0
  loc_98FA11: FLdRfVar var_A0
  loc_98FA14: LitVarStr var_9C, "CodiPost"
  loc_98FA19: PopAdLdVar
  loc_98FA1A: FLdRfVar var_8C
  loc_98FA1D: FLdPr Me
  loc_98FA20: MemLdPr RsFrm
  loc_98FA23:  = Me.Fields
  loc_98FA28: FLdPr var_8C
  loc_98FA2B: from_stack_2 = Me.Item(from_stack_1)
  loc_98FA30: FLdPr var_A0
  loc_98FA33:  = Me.Value
  loc_98FA38: FLdRfVar var_B0
  loc_98FA3B: CStrVarTmp
  loc_98FA3C: FStStr var_88
  loc_98FA3F: FFreeAd var_8C = ""
  loc_98FA46: FFree1Var var_B0 = ""
  loc_98FA49: ExitProcCbHresult
End Sub

Public Property Get DetaTise() '990CE0
  'Data Table: 4E07A8
  loc_990C9C: ZeroRetVal
  loc_990C9E: FLdRfVar var_B0
  loc_990CA1: FLdRfVar var_A0
  loc_990CA4: LitVarStr var_9C, "DetaTise"
  loc_990CA9: PopAdLdVar
  loc_990CAA: FLdRfVar var_8C
  loc_990CAD: FLdPr Me
  loc_990CB0: MemLdPr RsFrm
  loc_990CB3:  = Me.Fields
  loc_990CB8: FLdPr var_8C
  loc_990CBB: from_stack_2 = Me.Item(from_stack_1)
  loc_990CC0: FLdPr var_A0
  loc_990CC3:  = Me.Value
  loc_990CC8: FLdRfVar var_B0
  loc_990CCB: CStrVarTmp
  loc_990CCC: FStStr var_88
  loc_990CCF: FFreeAd var_8C = ""
  loc_990CD6: FFree1Var var_B0 = ""
  loc_990CD9: ExitProcCbHresult
End Sub

Public Property Get NumeDifu() '990B54
  'Data Table: 4E07A8
  loc_990B10: ZeroRetVal
  loc_990B12: FLdRfVar var_B0
  loc_990B15: FLdRfVar var_A0
  loc_990B18: LitVarStr var_9C, "NumeDifu"
  loc_990B1D: PopAdLdVar
  loc_990B1E: FLdRfVar var_8C
  loc_990B21: FLdPr Me
  loc_990B24: MemLdPr RsFrm
  loc_990B27:  = Me.Fields
  loc_990B2C: FLdPr var_8C
  loc_990B2F: from_stack_2 = Me.Item(from_stack_1)
  loc_990B34: FLdPr var_A0
  loc_990B37:  = Me.Value
  loc_990B3C: FLdRfVar var_B0
  loc_990B3F: CStrVarTmp
  loc_990B40: FStStr var_88
  loc_990B43: FFreeAd var_8C = ""
  loc_990B4A: FFree1Var var_B0 = ""
  loc_990B4D: ExitProcCbHresult
End Sub

Public Property Get FilaDifu() '990734
  'Data Table: 4E07A8
  loc_9906F0: ZeroRetVal
  loc_9906F2: FLdRfVar var_B0
  loc_9906F5: FLdRfVar var_A0
  loc_9906F8: LitVarStr var_9C, "FilaDifu"
  loc_9906FD: PopAdLdVar
  loc_9906FE: FLdRfVar var_8C
  loc_990701: FLdPr Me
  loc_990704: MemLdPr RsFrm
  loc_990707:  = Me.Fields
  loc_99070C: FLdPr var_8C
  loc_99070F: from_stack_2 = Me.Item(from_stack_1)
  loc_990714: FLdPr var_A0
  loc_990717:  = Me.Value
  loc_99071C: FLdRfVar var_B0
  loc_99071F: CStrVarTmp
  loc_990720: FStStr var_88
  loc_990723: FFreeAd var_8C = ""
  loc_99072A: FFree1Var var_B0 = ""
  loc_99072D: ExitProcCbHresult
End Sub

Public Property Get SeccDifu() '9906B0
  'Data Table: 4E07A8
  loc_99066C: ZeroRetVal
  loc_99066E: FLdRfVar var_B0
  loc_990671: FLdRfVar var_A0
  loc_990674: LitVarStr var_9C, "SeccDifu"
  loc_990679: PopAdLdVar
  loc_99067A: FLdRfVar var_8C
  loc_99067D: FLdPr Me
  loc_990680: MemLdPr RsFrm
  loc_990683:  = Me.Fields
  loc_990688: FLdPr var_8C
  loc_99068B: from_stack_2 = Me.Item(from_stack_1)
  loc_990690: FLdPr var_A0
  loc_990693:  = Me.Value
  loc_990698: FLdRfVar var_B0
  loc_99069B: CStrVarTmp
  loc_99069C: FStStr var_88
  loc_99069F: FFreeAd var_8C = ""
  loc_9906A6: FFree1Var var_B0 = ""
  loc_9906A9: ExitProcCbHresult
End Sub

Public Property Get DetaTimo() '9905A8
  'Data Table: 4E07A8
  loc_990564: ZeroRetVal
  loc_990566: FLdRfVar var_B0
  loc_990569: FLdRfVar var_A0
  loc_99056C: LitVarStr var_9C, "DetaTimo"
  loc_990571: PopAdLdVar
  loc_990572: FLdRfVar var_8C
  loc_990575: FLdPr Me
  loc_990578: MemLdPr RsFrm
  loc_99057B:  = Me.Fields
  loc_990580: FLdPr var_8C
  loc_990583: from_stack_2 = Me.Item(from_stack_1)
  loc_990588: FLdPr var_A0
  loc_99058B:  = Me.Value
  loc_990590: FLdRfVar var_B0
  loc_990593: CStrVarTmp
  loc_990594: FStStr var_88
  loc_990597: FFreeAd var_8C = ""
  loc_99059E: FFree1Var var_B0 = ""
  loc_9905A1: ExitProcCbHresult
End Sub

Public Property Get DetaConc() '987BEC
  'Data Table: 4E07A8
  loc_987BB4: ZeroRetValVar
  loc_987BB6: FLdRfVar var_AC
  loc_987BB9: LitVarStr var_A8, "DetaConc"
  loc_987BBE: PopAdLdVar
  loc_987BBF: FLdRfVar var_98
  loc_987BC2: FLdPr Me
  loc_987BC5: MemLdPr RsFrm
  loc_987BC8:  = Me.Fields
  loc_987BCD: FLdPr var_98
  loc_987BD0: from_stack_2 = Me.Item(from_stack_1)
  loc_987BD5: FLdZeroAd var_AC
  loc_987BD8: CVarAd
  loc_987BDC: FStVar DetaConc
  loc_987BE0: FFree1Ad var_98
  loc_987BE3: ExitProcCbHresult
End Sub

Public Property Get TotaCtct() '98E62C
  'Data Table: 4E07A8
  loc_98E5E8: FLdRfVar var_B4
  loc_98E5EB: FLdRfVar var_A4
  loc_98E5EE: LitVarStr var_A0, "TotaCtct"
  loc_98E5F3: PopAdLdVar
  loc_98E5F4: FLdRfVar var_90
  loc_98E5F7: FLdPr Me
  loc_98E5FA: MemLdPr RsFrm
  loc_98E5FD:  = Me.Fields
  loc_98E602: FLdPr var_90
  loc_98E605: from_stack_2 = Me.Item(from_stack_1)
  loc_98E60A: FLdPr var_A4
  loc_98E60D:  = Me.Value
  loc_98E612: FLdRfVar var_B4
  loc_98E615: CR4Var
  loc_98E616: FStFPR8 var_8C
  loc_98E619: FFreeAd var_90 = ""
  loc_98E620: FFree1Var var_B4 = ""
  loc_98E623: ExitProcCbHresult
End Sub

Public Property Get SainCtct() '987AFC
  'Data Table: 4E07A8
  loc_987AC4: ZeroRetValVar
  loc_987AC6: FLdRfVar var_AC
  loc_987AC9: LitVarStr var_A8, "SainCtct"
  loc_987ACE: PopAdLdVar
  loc_987ACF: FLdRfVar var_98
  loc_987AD2: FLdPr Me
  loc_987AD5: MemLdPr RsFrm
  loc_987AD8:  = Me.Fields
  loc_987ADD: FLdPr var_98
  loc_987AE0: from_stack_2 = Me.Item(from_stack_1)
  loc_987AE5: FLdZeroAd var_AC
  loc_987AE8: CVarAd
  loc_987AEC: FStVar SainCtct
  loc_987AF0: FFree1Ad var_98
  loc_987AF3: ExitProcCbHresult
End Sub

Public Property Get SafiCtct() '987A84
  'Data Table: 4E07A8
  loc_987A4C: ZeroRetValVar
  loc_987A4E: FLdRfVar var_AC
  loc_987A51: LitVarStr var_A8, "SafiCtct"
  loc_987A56: PopAdLdVar
  loc_987A57: FLdRfVar var_98
  loc_987A5A: FLdPr Me
  loc_987A5D: MemLdPr RsFrm
  loc_987A60:  = Me.Fields
  loc_987A65: FLdPr var_98
  loc_987A68: from_stack_2 = Me.Item(from_stack_1)
  loc_987A6D: FLdZeroAd var_AC
  loc_987A70: CVarAd
  loc_987A74: FStVar SafiCtct
  loc_987A78: FFree1Ad var_98
  loc_987A7B: ExitProcCbHresult
End Sub

Public Property Get AforCtct() '987A0C
  'Data Table: 4E07A8
  loc_9879D4: ZeroRetValVar
  loc_9879D6: FLdRfVar var_AC
  loc_9879D9: LitVarStr var_A8, "AforCtct"
  loc_9879DE: PopAdLdVar
  loc_9879DF: FLdRfVar var_98
  loc_9879E2: FLdPr Me
  loc_9879E5: MemLdPr RsFrm
  loc_9879E8:  = Me.Fields
  loc_9879ED: FLdPr var_98
  loc_9879F0: from_stack_2 = Me.Item(from_stack_1)
  loc_9879F5: FLdZeroAd var_AC
  loc_9879F8: CVarAd
  loc_9879FC: FStVar AforCtct
  loc_987A00: FFree1Ad var_98
  loc_987A03: ExitProcCbHresult
End Sub

Public Property Get PresCtct() '987994
  'Data Table: 4E07A8
  loc_98795C: ZeroRetValVar
  loc_98795E: FLdRfVar var_AC
  loc_987961: LitVarStr var_A8, "PresCtct"
  loc_987966: PopAdLdVar
  loc_987967: FLdRfVar var_98
  loc_98796A: FLdPr Me
  loc_98796D: MemLdPr RsFrm
  loc_987970:  = Me.Fields
  loc_987975: FLdPr var_98
  loc_987978: from_stack_2 = Me.Item(from_stack_1)
  loc_98797D: FLdZeroAd var_AC
  loc_987980: CVarAd
  loc_987984: FStVar PresCtct
  loc_987988: FFree1Ad var_98
  loc_98798B: ExitProcCbHresult
End Sub

Public Property Get CondCtct() '98791C
  'Data Table: 4E07A8
  loc_9878E4: ZeroRetValVar
  loc_9878E6: FLdRfVar var_AC
  loc_9878E9: LitVarStr var_A8, "CondCtct"
  loc_9878EE: PopAdLdVar
  loc_9878EF: FLdRfVar var_98
  loc_9878F2: FLdPr Me
  loc_9878F5: MemLdPr RsFrm
  loc_9878F8:  = Me.Fields
  loc_9878FD: FLdPr var_98
  loc_987900: from_stack_2 = Me.Item(from_stack_1)
  loc_987905: FLdZeroAd var_AC
  loc_987908: CVarAd
  loc_98790C: FStVar CondCtct
  loc_987910: FFree1Ad var_98
  loc_987913: ExitProcCbHresult
End Sub

Public Property Get ExenCtct() '9878A4
  'Data Table: 4E07A8
  loc_98786C: ZeroRetValVar
  loc_98786E: FLdRfVar var_AC
  loc_987871: LitVarStr var_A8, "ExenCtct"
  loc_987876: PopAdLdVar
  loc_987877: FLdRfVar var_98
  loc_98787A: FLdPr Me
  loc_98787D: MemLdPr RsFrm
  loc_987880:  = Me.Fields
  loc_987885: FLdPr var_98
  loc_987888: from_stack_2 = Me.Item(from_stack_1)
  loc_98788D: FLdZeroAd var_AC
  loc_987890: CVarAd
  loc_987894: FStVar ExenCtct
  loc_987898: FFree1Ad var_98
  loc_98789B: ExitProcCbHresult
End Sub

Public Property Get DescCtct() '98782C
  'Data Table: 4E07A8
  loc_9877F4: ZeroRetValVar
  loc_9877F6: FLdRfVar var_AC
  loc_9877F9: LitVarStr var_A8, "DescCtct"
  loc_9877FE: PopAdLdVar
  loc_9877FF: FLdRfVar var_98
  loc_987802: FLdPr Me
  loc_987805: MemLdPr RsFrm
  loc_987808:  = Me.Fields
  loc_98780D: FLdPr var_98
  loc_987810: from_stack_2 = Me.Item(from_stack_1)
  loc_987815: FLdZeroAd var_AC
  loc_987818: CVarAd
  loc_98781C: FStVar DescCtct
  loc_987820: FFree1Ad var_98
  loc_987823: ExitProcCbHresult
End Sub

Public Property Get CobrCtct() '9877B4
  'Data Table: 4E07A8
  loc_98777C: ZeroRetValVar
  loc_98777E: FLdRfVar var_AC
  loc_987781: LitVarStr var_A8, "CobrCtct"
  loc_987786: PopAdLdVar
  loc_987787: FLdRfVar var_98
  loc_98778A: FLdPr Me
  loc_98778D: MemLdPr RsFrm
  loc_987790:  = Me.Fields
  loc_987795: FLdPr var_98
  loc_987798: from_stack_2 = Me.Item(from_stack_1)
  loc_98779D: FLdZeroAd var_AC
  loc_9877A0: CVarAd
  loc_9877A4: FStVar CobrCtct
  loc_9877A8: FFree1Ad var_98
  loc_9877AB: ExitProcCbHresult
End Sub

Public Property Get ActiConc() '98773C
  'Data Table: 4E07A8
  loc_987704: ZeroRetValVar
  loc_987706: FLdRfVar var_AC
  loc_987709: LitVarStr var_A8, "ActiConc"
  loc_98770E: PopAdLdVar
  loc_98770F: FLdRfVar var_98
  loc_987712: FLdPr Me
  loc_987715: MemLdPr RsFrm
  loc_987718:  = Me.Fields
  loc_98771D: FLdPr var_98
  loc_987720: from_stack_2 = Me.Item(from_stack_1)
  loc_987725: FLdZeroAd var_AC
  loc_987728: CVarAd
  loc_98772C: FStVar ActiConc
  loc_987730: FFree1Ad var_98
  loc_987733: ExitProcCbHresult
End Sub

Public Property Get DetaCuco() '9876C4
  'Data Table: 4E07A8
  loc_98768C: ZeroRetValVar
  loc_98768E: FLdRfVar var_AC
  loc_987691: LitVarStr var_A8, "DetaCuco"
  loc_987696: PopAdLdVar
  loc_987697: FLdRfVar var_98
  loc_98769A: FLdPr Me
  loc_98769D: MemLdPr RsFrm
  loc_9876A0:  = Me.Fields
  loc_9876A5: FLdPr var_98
  loc_9876A8: from_stack_2 = Me.Item(from_stack_1)
  loc_9876AD: FLdZeroAd var_AC
  loc_9876B0: CVarAd
  loc_9876B4: FStVar DetaCuco
  loc_9876B8: FFree1Ad var_98
  loc_9876BB: ExitProcCbHresult
End Sub

Public Property Get ImpoCtct() '98764C
  'Data Table: 4E07A8
  loc_987614: ZeroRetValVar
  loc_987616: FLdRfVar var_AC
  loc_987619: LitVarStr var_A8, "ImpoCtct"
  loc_98761E: PopAdLdVar
  loc_98761F: FLdRfVar var_98
  loc_987622: FLdPr Me
  loc_987625: MemLdPr RsFrm
  loc_987628:  = Me.Fields
  loc_98762D: FLdPr var_98
  loc_987630: from_stack_2 = Me.Item(from_stack_1)
  loc_987635: FLdZeroAd var_AC
  loc_987638: CVarAd
  loc_98763C: FStVar ImpoCtct
  loc_987640: FFree1Ad var_98
  loc_987643: ExitProcCbHresult
End Sub

Public Property Get ApreCtct() '9875D4
  'Data Table: 4E07A8
  loc_98759C: ZeroRetValVar
  loc_98759E: FLdRfVar var_AC
  loc_9875A1: LitVarStr var_A8, "ApreCtct"
  loc_9875A6: PopAdLdVar
  loc_9875A7: FLdRfVar var_98
  loc_9875AA: FLdPr Me
  loc_9875AD: MemLdPr RsFrm
  loc_9875B0:  = Me.Fields
  loc_9875B5: FLdPr var_98
  loc_9875B8: from_stack_2 = Me.Item(from_stack_1)
  loc_9875BD: FLdZeroAd var_AC
  loc_9875C0: CVarAd
  loc_9875C4: FStVar ApreCtct
  loc_9875C8: FFree1Ad var_98
  loc_9875CB: ExitProcCbHresult
End Sub

Public Property Get TipoRela() '990188
  'Data Table: 4E07A8
  loc_990144: ZeroRetVal
  loc_990146: FLdRfVar var_B0
  loc_990149: FLdRfVar var_A0
  loc_99014C: LitVarStr var_9C, "TipoRela"
  loc_990151: PopAdLdVar
  loc_990152: FLdRfVar var_8C
  loc_990155: FLdPr Me
  loc_990158: MemLdPr RsFrm
  loc_99015B:  = Me.Fields
  loc_990160: FLdPr var_8C
  loc_990163: from_stack_2 = Me.Item(from_stack_1)
  loc_990168: FLdPr var_A0
  loc_99016B:  = Me.Value
  loc_990170: FLdRfVar var_B0
  loc_990173: CStrVarTmp
  loc_990174: FStStr var_88
  loc_990177: FFreeAd var_8C = ""
  loc_99017E: FFree1Var var_B0 = ""
  loc_990181: ExitProcCbHresult
End Sub

Public Property Get PagaCtct() '9874E4
  'Data Table: 4E07A8
  loc_9874AC: ZeroRetValVar
  loc_9874AE: FLdRfVar var_AC
  loc_9874B1: LitVarStr var_A8, "PagaCtct"
  loc_9874B6: PopAdLdVar
  loc_9874B7: FLdRfVar var_98
  loc_9874BA: FLdPr Me
  loc_9874BD: MemLdPr RsFrm
  loc_9874C0:  = Me.Fields
  loc_9874C5: FLdPr var_98
  loc_9874C8: from_stack_2 = Me.Item(from_stack_1)
  loc_9874CD: FLdZeroAd var_AC
  loc_9874D0: CVarAd
  loc_9874D4: FStVar PagaCtct
  loc_9874D8: FFree1Ad var_98
  loc_9874DB: ExitProcCbHresult
End Sub

Public Property Get DebeCtct2() '98746C
  'Data Table: 4E07A8
  loc_987434: ZeroRetValVar
  loc_987436: FLdRfVar var_AC
  loc_987439: LitVarStr var_A8, "DebeCtct2"
  loc_98743E: PopAdLdVar
  loc_98743F: FLdRfVar var_98
  loc_987442: FLdPr Me
  loc_987445: MemLdPr RsFrm
  loc_987448:  = Me.Fields
  loc_98744D: FLdPr var_98
  loc_987450: from_stack_2 = Me.Item(from_stack_1)
  loc_987455: FLdZeroAd var_AC
  loc_987458: CVarAd
  loc_98745C: FStVar DebeCtct2
  loc_987460: FFree1Ad var_98
  loc_987463: ExitProcCbHresult
End Sub

Public Property Get CredCtct2() '9873F4
  'Data Table: 4E07A8
  loc_9873BC: ZeroRetValVar
  loc_9873BE: FLdRfVar var_AC
  loc_9873C1: LitVarStr var_A8, "CredCtct2"
  loc_9873C6: PopAdLdVar
  loc_9873C7: FLdRfVar var_98
  loc_9873CA: FLdPr Me
  loc_9873CD: MemLdPr RsFrm
  loc_9873D0:  = Me.Fields
  loc_9873D5: FLdPr var_98
  loc_9873D8: from_stack_2 = Me.Item(from_stack_1)
  loc_9873DD: FLdZeroAd var_AC
  loc_9873E0: CVarAd
  loc_9873E4: FStVar CredCtct2
  loc_9873E8: FFree1Ad var_98
  loc_9873EB: ExitProcCbHresult
End Sub

Public Property Get ExenCtct2() '98737C
  'Data Table: 4E07A8
  loc_987344: ZeroRetValVar
  loc_987346: FLdRfVar var_AC
  loc_987349: LitVarStr var_A8, "ExenCtct2"
  loc_98734E: PopAdLdVar
  loc_98734F: FLdRfVar var_98
  loc_987352: FLdPr Me
  loc_987355: MemLdPr RsFrm
  loc_987358:  = Me.Fields
  loc_98735D: FLdPr var_98
  loc_987360: from_stack_2 = Me.Item(from_stack_1)
  loc_987365: FLdZeroAd var_AC
  loc_987368: CVarAd
  loc_98736C: FStVar ExenCtct2
  loc_987370: FFree1Ad var_98
  loc_987373: ExitProcCbHresult
End Sub

Public Property Get DescCtct2() '987304
  'Data Table: 4E07A8
  loc_9872CC: ZeroRetValVar
  loc_9872CE: FLdRfVar var_AC
  loc_9872D1: LitVarStr var_A8, "DescCtct2"
  loc_9872D6: PopAdLdVar
  loc_9872D7: FLdRfVar var_98
  loc_9872DA: FLdPr Me
  loc_9872DD: MemLdPr RsFrm
  loc_9872E0:  = Me.Fields
  loc_9872E5: FLdPr var_98
  loc_9872E8: from_stack_2 = Me.Item(from_stack_1)
  loc_9872ED: FLdZeroAd var_AC
  loc_9872F0: CVarAd
  loc_9872F4: FStVar DescCtct2
  loc_9872F8: FFree1Ad var_98
  loc_9872FB: ExitProcCbHresult
End Sub

Public Property Get TotaCtct2() '98728C
  'Data Table: 4E07A8
  loc_987254: ZeroRetValVar
  loc_987256: FLdRfVar var_AC
  loc_987259: LitVarStr var_A8, "TotaCtct2"
  loc_98725E: PopAdLdVar
  loc_98725F: FLdRfVar var_98
  loc_987262: FLdPr Me
  loc_987265: MemLdPr RsFrm
  loc_987268:  = Me.Fields
  loc_98726D: FLdPr var_98
  loc_987270: from_stack_2 = Me.Item(from_stack_1)
  loc_987275: FLdZeroAd var_AC
  loc_987278: CVarAd
  loc_98727C: FStVar TotaCtct2
  loc_987280: FFree1Ad var_98
  loc_987283: ExitProcCbHresult
End Sub

Public Property Get PagaCtct2() '987214
  'Data Table: 4E07A8
  loc_9871DC: ZeroRetValVar
  loc_9871DE: FLdRfVar var_AC
  loc_9871E1: LitVarStr var_A8, "PagaCtct2"
  loc_9871E6: PopAdLdVar
  loc_9871E7: FLdRfVar var_98
  loc_9871EA: FLdPr Me
  loc_9871ED: MemLdPr RsFrm
  loc_9871F0:  = Me.Fields
  loc_9871F5: FLdPr var_98
  loc_9871F8: from_stack_2 = Me.Item(from_stack_1)
  loc_9871FD: FLdZeroAd var_AC
  loc_987200: CVarAd
  loc_987204: FStVar PagaCtct2
  loc_987208: FFree1Ad var_98
  loc_98720B: ExitProcCbHresult
End Sub

Public Property Get SaldoInicial() '98719C
  'Data Table: 4E07A8
  loc_987164: ZeroRetValVar
  loc_987166: FLdRfVar var_AC
  loc_987169: LitVarStr var_A8, "SaldoInicial"
  loc_98716E: PopAdLdVar
  loc_98716F: FLdRfVar var_98
  loc_987172: FLdPr Me
  loc_987175: MemLdPr RsFrm
  loc_987178:  = Me.Fields
  loc_98717D: FLdPr var_98
  loc_987180: from_stack_2 = Me.Item(from_stack_1)
  loc_987185: FLdZeroAd var_AC
  loc_987188: CVarAd
  loc_98718C: FStVar SaldoInicial
  loc_987190: FFree1Ad var_98
  loc_987193: ExitProcCbHresult
End Sub

Public Property Get Facturado() '987124
  'Data Table: 4E07A8
  loc_9870EC: ZeroRetValVar
  loc_9870EE: FLdRfVar var_AC
  loc_9870F1: LitVarStr var_A8, "Facturado"
  loc_9870F6: PopAdLdVar
  loc_9870F7: FLdRfVar var_98
  loc_9870FA: FLdPr Me
  loc_9870FD: MemLdPr RsFrm
  loc_987100:  = Me.Fields
  loc_987105: FLdPr var_98
  loc_987108: from_stack_2 = Me.Item(from_stack_1)
  loc_98710D: FLdZeroAd var_AC
  loc_987110: CVarAd
  loc_987114: FStVar Facturado
  loc_987118: FFree1Ad var_98
  loc_98711B: ExitProcCbHresult
End Sub

Public Property Get SaldoFinal() '9870AC
  'Data Table: 4E07A8
  loc_987074: ZeroRetValVar
  loc_987076: FLdRfVar var_AC
  loc_987079: LitVarStr var_A8, "SaldoFinal"
  loc_98707E: PopAdLdVar
  loc_98707F: FLdRfVar var_98
  loc_987082: FLdPr Me
  loc_987085: MemLdPr RsFrm
  loc_987088:  = Me.Fields
  loc_98708D: FLdPr var_98
  loc_987090: from_stack_2 = Me.Item(from_stack_1)
  loc_987095: FLdZeroAd var_AC
  loc_987098: CVarAd
  loc_98709C: FStVar SaldoFinal
  loc_9870A0: FFree1Ad var_98
  loc_9870A3: ExitProcCbHresult
End Sub

Public Property Get Cobrado() '987034
  'Data Table: 4E07A8
  loc_986FFC: ZeroRetValVar
  loc_986FFE: FLdRfVar var_AC
  loc_987001: LitVarStr var_A8, "Cobrado"
  loc_987006: PopAdLdVar
  loc_987007: FLdRfVar var_98
  loc_98700A: FLdPr Me
  loc_98700D: MemLdPr RsFrm
  loc_987010:  = Me.Fields
  loc_987015: FLdPr var_98
  loc_987018: from_stack_2 = Me.Item(from_stack_1)
  loc_98701D: FLdZeroAd var_AC
  loc_987020: CVarAd
  loc_987024: FStVar Cobrado
  loc_987028: FFree1Ad var_98
  loc_98702B: ExitProcCbHresult
End Sub

Public Property Get CobradoActual() '986FBC
  'Data Table: 4E07A8
  loc_986F84: ZeroRetValVar
  loc_986F86: FLdRfVar var_AC
  loc_986F89: LitVarStr var_A8, "CobradoActual"
  loc_986F8E: PopAdLdVar
  loc_986F8F: FLdRfVar var_98
  loc_986F92: FLdPr Me
  loc_986F95: MemLdPr RsFrm
  loc_986F98:  = Me.Fields
  loc_986F9D: FLdPr var_98
  loc_986FA0: from_stack_2 = Me.Item(from_stack_1)
  loc_986FA5: FLdZeroAd var_AC
  loc_986FA8: CVarAd
  loc_986FAC: FStVar CobradoActual
  loc_986FB0: FFree1Ad var_98
  loc_986FB3: ExitProcCbHresult
End Sub

Public Property Get CobradoAnterior() '986F44
  'Data Table: 4E07A8
  loc_986F0C: ZeroRetValVar
  loc_986F0E: FLdRfVar var_AC
  loc_986F11: LitVarStr var_A8, "CobradoAnterior"
  loc_986F16: PopAdLdVar
  loc_986F17: FLdRfVar var_98
  loc_986F1A: FLdPr Me
  loc_986F1D: MemLdPr RsFrm
  loc_986F20:  = Me.Fields
  loc_986F25: FLdPr var_98
  loc_986F28: from_stack_2 = Me.Item(from_stack_1)
  loc_986F2D: FLdZeroAd var_AC
  loc_986F30: CVarAd
  loc_986F34: FStVar CobradoAnterior
  loc_986F38: FFree1Ad var_98
  loc_986F3B: ExitProcCbHresult
End Sub

Public Property Get CobradoApremio() '986ECC
  'Data Table: 4E07A8
  loc_986E94: ZeroRetValVar
  loc_986E96: FLdRfVar var_AC
  loc_986E99: LitVarStr var_A8, "CobradoApremio"
  loc_986E9E: PopAdLdVar
  loc_986E9F: FLdRfVar var_98
  loc_986EA2: FLdPr Me
  loc_986EA5: MemLdPr RsFrm
  loc_986EA8:  = Me.Fields
  loc_986EAD: FLdPr var_98
  loc_986EB0: from_stack_2 = Me.Item(from_stack_1)
  loc_986EB5: FLdZeroAd var_AC
  loc_986EB8: CVarAd
  loc_986EBC: FStVar CobradoApremio
  loc_986EC0: FFree1Ad var_98
  loc_986EC3: ExitProcCbHresult
End Sub

Public Property Get CobradoApremioActual() '986E54
  'Data Table: 4E07A8
  loc_986E1C: ZeroRetValVar
  loc_986E1E: FLdRfVar var_AC
  loc_986E21: LitVarStr var_A8, "CobradoApremioActual"
  loc_986E26: PopAdLdVar
  loc_986E27: FLdRfVar var_98
  loc_986E2A: FLdPr Me
  loc_986E2D: MemLdPr RsFrm
  loc_986E30:  = Me.Fields
  loc_986E35: FLdPr var_98
  loc_986E38: from_stack_2 = Me.Item(from_stack_1)
  loc_986E3D: FLdZeroAd var_AC
  loc_986E40: CVarAd
  loc_986E44: FStVar CobradoApremioActual
  loc_986E48: FFree1Ad var_98
  loc_986E4B: ExitProcCbHresult
End Sub

Public Property Get CobradoApremioAnterior() '986DDC
  'Data Table: 4E07A8
  loc_986DA4: ZeroRetValVar
  loc_986DA6: FLdRfVar var_AC
  loc_986DA9: LitVarStr var_A8, "CobradoApremioAnterior"
  loc_986DAE: PopAdLdVar
  loc_986DAF: FLdRfVar var_98
  loc_986DB2: FLdPr Me
  loc_986DB5: MemLdPr RsFrm
  loc_986DB8:  = Me.Fields
  loc_986DBD: FLdPr var_98
  loc_986DC0: from_stack_2 = Me.Item(from_stack_1)
  loc_986DC5: FLdZeroAd var_AC
  loc_986DC8: CVarAd
  loc_986DCC: FStVar CobradoApremioAnterior
  loc_986DD0: FFree1Ad var_98
  loc_986DD3: ExitProcCbHresult
End Sub

Public Property Get CodiAcue() '986D64
  'Data Table: 4E07A8
  loc_986D2C: ZeroRetValVar
  loc_986D2E: FLdRfVar var_AC
  loc_986D31: LitVarStr var_A8, "CodiAcue"
  loc_986D36: PopAdLdVar
  loc_986D37: FLdRfVar var_98
  loc_986D3A: FLdPr Me
  loc_986D3D: MemLdPr RsFrm
  loc_986D40:  = Me.Fields
  loc_986D45: FLdPr var_98
  loc_986D48: from_stack_2 = Me.Item(from_stack_1)
  loc_986D4D: FLdZeroAd var_AC
  loc_986D50: CVarAd
  loc_986D54: FStVar CodiAcue
  loc_986D58: FFree1Ad var_98
  loc_986D5B: ExitProcCbHresult
End Sub

Public Property Get DetaAcue() '986CEC
  'Data Table: 4E07A8
  loc_986CB4: ZeroRetValVar
  loc_986CB6: FLdRfVar var_AC
  loc_986CB9: LitVarStr var_A8, "DetaAcue"
  loc_986CBE: PopAdLdVar
  loc_986CBF: FLdRfVar var_98
  loc_986CC2: FLdPr Me
  loc_986CC5: MemLdPr RsFrm
  loc_986CC8:  = Me.Fields
  loc_986CCD: FLdPr var_98
  loc_986CD0: from_stack_2 = Me.Item(from_stack_1)
  loc_986CD5: FLdZeroAd var_AC
  loc_986CD8: CVarAd
  loc_986CDC: FStVar DetaAcue
  loc_986CE0: FFree1Ad var_98
  loc_986CE3: ExitProcCbHresult
End Sub

Public Property Get morsingescob() '986C74
  'Data Table: 4E07A8
  loc_986C3C: ZeroRetValVar
  loc_986C3E: FLdRfVar var_AC
  loc_986C41: LitVarStr var_A8, "morsingescob"
  loc_986C46: PopAdLdVar
  loc_986C47: FLdRfVar var_98
  loc_986C4A: FLdPr Me
  loc_986C4D: MemLdPr RsFrm
  loc_986C50:  = Me.Fields
  loc_986C55: FLdPr var_98
  loc_986C58: from_stack_2 = Me.Item(from_stack_1)
  loc_986C5D: FLdZeroAd var_AC
  loc_986C60: CVarAd
  loc_986C64: FStVar morsingescob
  loc_986C68: FFree1Ad var_98
  loc_986C6B: ExitProcCbHresult
End Sub

Public Property Get morapre() '986BFC
  'Data Table: 4E07A8
  loc_986BC4: ZeroRetValVar
  loc_986BC6: FLdRfVar var_AC
  loc_986BC9: LitVarStr var_A8, "morapre"
  loc_986BCE: PopAdLdVar
  loc_986BCF: FLdRfVar var_98
  loc_986BD2: FLdPr Me
  loc_986BD5: MemLdPr RsFrm
  loc_986BD8:  = Me.Fields
  loc_986BDD: FLdPr var_98
  loc_986BE0: from_stack_2 = Me.Item(from_stack_1)
  loc_986BE5: FLdZeroAd var_AC
  loc_986BE8: CVarAd
  loc_986BEC: FStVar morapre
  loc_986BF0: FFree1Ad var_98
  loc_986BF3: ExitProcCbHresult
End Sub

Public Property Get morgesjud() '986B84
  'Data Table: 4E07A8
  loc_986B4C: ZeroRetValVar
  loc_986B4E: FLdRfVar var_AC
  loc_986B51: LitVarStr var_A8, "morgesjud"
  loc_986B56: PopAdLdVar
  loc_986B57: FLdRfVar var_98
  loc_986B5A: FLdPr Me
  loc_986B5D: MemLdPr RsFrm
  loc_986B60:  = Me.Fields
  loc_986B65: FLdPr var_98
  loc_986B68: from_stack_2 = Me.Item(from_stack_1)
  loc_986B6D: FLdZeroAd var_AC
  loc_986B70: CVarAd
  loc_986B74: FStVar morgesjud
  loc_986B78: FFree1Ad var_98
  loc_986B7B: ExitProcCbHresult
End Sub

Public Property Get morcon() '986B0C
  'Data Table: 4E07A8
  loc_986AD4: ZeroRetValVar
  loc_986AD6: FLdRfVar var_AC
  loc_986AD9: LitVarStr var_A8, "morcon"
  loc_986ADE: PopAdLdVar
  loc_986ADF: FLdRfVar var_98
  loc_986AE2: FLdPr Me
  loc_986AE5: MemLdPr RsFrm
  loc_986AE8:  = Me.Fields
  loc_986AED: FLdPr var_98
  loc_986AF0: from_stack_2 = Me.Item(from_stack_1)
  loc_986AF5: FLdZeroAd var_AC
  loc_986AF8: CVarAd
  loc_986AFC: FStVar morcon
  loc_986B00: FFree1Ad var_98
  loc_986B03: ExitProcCbHresult
End Sub

Public Property Get SubTotal() '986A94
  'Data Table: 4E07A8
  loc_986A5C: ZeroRetValVar
  loc_986A5E: FLdRfVar var_AC
  loc_986A61: LitVarStr var_A8, "SubTotal"
  loc_986A66: PopAdLdVar
  loc_986A67: FLdRfVar var_98
  loc_986A6A: FLdPr Me
  loc_986A6D: MemLdPr RsFrm
  loc_986A70:  = Me.Fields
  loc_986A75: FLdPr var_98
  loc_986A78: from_stack_2 = Me.Item(from_stack_1)
  loc_986A7D: FLdZeroAd var_AC
  loc_986A80: CVarAd
  loc_986A84: FStVar SubTotal
  loc_986A88: FFree1Ad var_98
  loc_986A8B: ExitProcCbHresult
End Sub

Public Property Get deuregplapag() '986A1C
  'Data Table: 4E07A8
  loc_9869E4: ZeroRetValVar
  loc_9869E6: FLdRfVar var_AC
  loc_9869E9: LitVarStr var_A8, "deuregplapag"
  loc_9869EE: PopAdLdVar
  loc_9869EF: FLdRfVar var_98
  loc_9869F2: FLdPr Me
  loc_9869F5: MemLdPr RsFrm
  loc_9869F8:  = Me.Fields
  loc_9869FD: FLdPr var_98
  loc_986A00: from_stack_2 = Me.Item(from_stack_1)
  loc_986A05: FLdZeroAd var_AC
  loc_986A08: CVarAd
  loc_986A0C: FStVar deuregplapag
  loc_986A10: FFree1Ad var_98
  loc_986A13: ExitProcCbHresult
End Sub

Public Property Get Total() '9869A4
  'Data Table: 4E07A8
  loc_98696C: ZeroRetValVar
  loc_98696E: FLdRfVar var_AC
  loc_986971: LitVarStr var_A8, "Total"
  loc_986976: PopAdLdVar
  loc_986977: FLdRfVar var_98
  loc_98697A: FLdPr Me
  loc_98697D: MemLdPr RsFrm
  loc_986980:  = Me.Fields
  loc_986985: FLdPr var_98
  loc_986988: from_stack_2 = Me.Item(from_stack_1)
  loc_98698D: FLdZeroAd var_AC
  loc_986990: CVarAd
  loc_986994: FStVar Total
  loc_986998: FFree1Ad var_98
  loc_98699B: ExitProcCbHresult
End Sub

Public Property Get morosidad() '98692C
  'Data Table: 4E07A8
  loc_9868F4: ZeroRetValVar
  loc_9868F6: FLdRfVar var_AC
  loc_9868F9: LitVarStr var_A8, "morosidad"
  loc_9868FE: PopAdLdVar
  loc_9868FF: FLdRfVar var_98
  loc_986902: FLdPr Me
  loc_986905: MemLdPr RsFrm
  loc_986908:  = Me.Fields
  loc_98690D: FLdPr var_98
  loc_986910: from_stack_2 = Me.Item(from_stack_1)
  loc_986915: FLdZeroAd var_AC
  loc_986918: CVarAd
  loc_98691C: FStVar morosidad
  loc_986920: FFree1Ad var_98
  loc_986923: ExitProcCbHresult
End Sub

Public Property Get facturacion() '9868B4
  'Data Table: 4E07A8
  loc_98687C: ZeroRetValVar
  loc_98687E: FLdRfVar var_AC
  loc_986881: LitVarStr var_A8, "facturacion"
  loc_986886: PopAdLdVar
  loc_986887: FLdRfVar var_98
  loc_98688A: FLdPr Me
  loc_98688D: MemLdPr RsFrm
  loc_986890:  = Me.Fields
  loc_986895: FLdPr var_98
  loc_986898: from_stack_2 = Me.Item(from_stack_1)
  loc_98689D: FLdZeroAd var_AC
  loc_9868A0: CVarAd
  loc_9868A4: FStVar facturacion
  loc_9868A8: FFree1Ad var_98
  loc_9868AB: ExitProcCbHresult
End Sub

Public Property Get Recaudacion() '98683C
  'Data Table: 4E07A8
  loc_986804: ZeroRetValVar
  loc_986806: FLdRfVar var_AC
  loc_986809: LitVarStr var_A8, "Recaudacion"
  loc_98680E: PopAdLdVar
  loc_98680F: FLdRfVar var_98
  loc_986812: FLdPr Me
  loc_986815: MemLdPr RsFrm
  loc_986818:  = Me.Fields
  loc_98681D: FLdPr var_98
  loc_986820: from_stack_2 = Me.Item(from_stack_1)
  loc_986825: FLdZeroAd var_AC
  loc_986828: CVarAd
  loc_98682C: FStVar Recaudacion
  loc_986830: FFree1Ad var_98
  loc_986833: ExitProcCbHresult
End Sub

Public Property Get recupero() '9867C4
  'Data Table: 4E07A8
  loc_98678C: ZeroRetValVar
  loc_98678E: FLdRfVar var_AC
  loc_986791: LitVarStr var_A8, "recupero"
  loc_986796: PopAdLdVar
  loc_986797: FLdRfVar var_98
  loc_98679A: FLdPr Me
  loc_98679D: MemLdPr RsFrm
  loc_9867A0:  = Me.Fields
  loc_9867A5: FLdPr var_98
  loc_9867A8: from_stack_2 = Me.Item(from_stack_1)
  loc_9867AD: FLdZeroAd var_AC
  loc_9867B0: CVarAd
  loc_9867B4: FStVar recupero
  loc_9867B8: FFree1Ad var_98
  loc_9867BB: ExitProcCbHresult
End Sub

Public Property Get recupero1() '98674C
  'Data Table: 4E07A8
  loc_986714: ZeroRetValVar
  loc_986716: FLdRfVar var_AC
  loc_986719: LitVarStr var_A8, "recupero1"
  loc_98671E: PopAdLdVar
  loc_98671F: FLdRfVar var_98
  loc_986722: FLdPr Me
  loc_986725: MemLdPr RsFrm
  loc_986728:  = Me.Fields
  loc_98672D: FLdPr var_98
  loc_986730: from_stack_2 = Me.Item(from_stack_1)
  loc_986735: FLdZeroAd var_AC
  loc_986738: CVarAd
  loc_98673C: FStVar recupero1
  loc_986740: FFree1Ad var_98
  loc_986743: ExitProcCbHresult
End Sub

Public Property Get RecaActu() '98E6AC
  'Data Table: 4E07A8
  loc_98E668: FLdRfVar var_B4
  loc_98E66B: FLdRfVar var_A4
  loc_98E66E: LitVarStr var_A0, "RecaActu"
  loc_98E673: PopAdLdVar
  loc_98E674: FLdRfVar var_90
  loc_98E677: FLdPr Me
  loc_98E67A: MemLdPr RsFrm
  loc_98E67D:  = Me.Fields
  loc_98E682: FLdPr var_90
  loc_98E685: from_stack_2 = Me.Item(from_stack_1)
  loc_98E68A: FLdPr var_A4
  loc_98E68D:  = Me.Value
  loc_98E692: FLdRfVar var_B4
  loc_98E695: CR4Var
  loc_98E696: FStFPR8 var_8C
  loc_98E699: FFreeAd var_90 = ""
  loc_98E6A0: FFree1Var var_B4 = ""
  loc_98E6A3: ExitProcCbHresult
End Sub

Public Property Get RecaAnte() '98E72C
  'Data Table: 4E07A8
  loc_98E6E8: FLdRfVar var_B4
  loc_98E6EB: FLdRfVar var_A4
  loc_98E6EE: LitVarStr var_A0, "RecaAnte"
  loc_98E6F3: PopAdLdVar
  loc_98E6F4: FLdRfVar var_90
  loc_98E6F7: FLdPr Me
  loc_98E6FA: MemLdPr RsFrm
  loc_98E6FD:  = Me.Fields
  loc_98E702: FLdPr var_90
  loc_98E705: from_stack_2 = Me.Item(from_stack_1)
  loc_98E70A: FLdPr var_A4
  loc_98E70D:  = Me.Value
  loc_98E712: FLdRfVar var_B4
  loc_98E715: CR4Var
  loc_98E716: FStFPR8 var_8C
  loc_98E719: FFreeAd var_90 = ""
  loc_98E720: FFree1Var var_B4 = ""
  loc_98E723: ExitProcCbHresult
End Sub

Public Property Get Apre() '98E8AC
  'Data Table: 4E07A8
  loc_98E868: FLdRfVar var_B4
  loc_98E86B: FLdRfVar var_A4
  loc_98E86E: LitVarStr var_A0, "Apre"
  loc_98E873: PopAdLdVar
  loc_98E874: FLdRfVar var_90
  loc_98E877: FLdPr Me
  loc_98E87A: MemLdPr RsFrm
  loc_98E87D:  = Me.Fields
  loc_98E882: FLdPr var_90
  loc_98E885: from_stack_2 = Me.Item(from_stack_1)
  loc_98E88A: FLdPr var_A4
  loc_98E88D:  = Me.Value
  loc_98E892: FLdRfVar var_B4
  loc_98E895: CR4Var
  loc_98E896: FStFPR8 var_8C
  loc_98E899: FFreeAd var_90 = ""
  loc_98E8A0: FFree1Var var_B4 = ""
  loc_98E8A3: ExitProcCbHresult
End Sub

Public Property Get inte() '98E92C
  'Data Table: 4E07A8
  loc_98E8E8: FLdRfVar var_B4
  loc_98E8EB: FLdRfVar var_A4
  loc_98E8EE: LitVarStr var_A0, "inte"
  loc_98E8F3: PopAdLdVar
  loc_98E8F4: FLdRfVar var_90
  loc_98E8F7: FLdPr Me
  loc_98E8FA: MemLdPr RsFrm
  loc_98E8FD:  = Me.Fields
  loc_98E902: FLdPr var_90
  loc_98E905: from_stack_2 = Me.Item(from_stack_1)
  loc_98E90A: FLdPr var_A4
  loc_98E90D:  = Me.Value
  loc_98E912: FLdRfVar var_B4
  loc_98E915: CR4Var
  loc_98E916: FStFPR8 var_8C
  loc_98E919: FFreeAd var_90 = ""
  loc_98E920: FFree1Var var_B4 = ""
  loc_98E923: ExitProcCbHresult
End Sub

Public Property Get CreditosAnte() '98E9AC
  'Data Table: 4E07A8
  loc_98E968: FLdRfVar var_B4
  loc_98E96B: FLdRfVar var_A4
  loc_98E96E: LitVarStr var_A0, "CreditosAnte"
  loc_98E973: PopAdLdVar
  loc_98E974: FLdRfVar var_90
  loc_98E977: FLdPr Me
  loc_98E97A: MemLdPr RsFrm
  loc_98E97D:  = Me.Fields
  loc_98E982: FLdPr var_90
  loc_98E985: from_stack_2 = Me.Item(from_stack_1)
  loc_98E98A: FLdPr var_A4
  loc_98E98D:  = Me.Value
  loc_98E992: FLdRfVar var_B4
  loc_98E995: CR4Var
  loc_98E996: FStFPR8 var_8C
  loc_98E999: FFreeAd var_90 = ""
  loc_98E9A0: FFree1Var var_B4 = ""
  loc_98E9A3: ExitProcCbHresult
End Sub

Public Property Get CreditosActu() '98EA2C
  'Data Table: 4E07A8
  loc_98E9E8: FLdRfVar var_B4
  loc_98E9EB: FLdRfVar var_A4
  loc_98E9EE: LitVarStr var_A0, "CreditosActu"
  loc_98E9F3: PopAdLdVar
  loc_98E9F4: FLdRfVar var_90
  loc_98E9F7: FLdPr Me
  loc_98E9FA: MemLdPr RsFrm
  loc_98E9FD:  = Me.Fields
  loc_98EA02: FLdPr var_90
  loc_98EA05: from_stack_2 = Me.Item(from_stack_1)
  loc_98EA0A: FLdPr var_A4
  loc_98EA0D:  = Me.Value
  loc_98EA12: FLdRfVar var_B4
  loc_98EA15: CR4Var
  loc_98EA16: FStFPR8 var_8C
  loc_98EA19: FFreeAd var_90 = ""
  loc_98EA20: FFree1Var var_B4 = ""
  loc_98EA23: ExitProcCbHresult
End Sub

Public Property Get salmoracufin() '98638C
  'Data Table: 4E07A8
  loc_986354: ZeroRetValVar
  loc_986356: FLdRfVar var_AC
  loc_986359: LitVarStr var_A8, "salmoracufin"
  loc_98635E: PopAdLdVar
  loc_98635F: FLdRfVar var_98
  loc_986362: FLdPr Me
  loc_986365: MemLdPr RsFrm
  loc_986368:  = Me.Fields
  loc_98636D: FLdPr var_98
  loc_986370: from_stack_2 = Me.Item(from_stack_1)
  loc_986375: FLdZeroAd var_AC
  loc_986378: CVarAd
  loc_98637C: FStVar salmoracufin
  loc_986380: FFree1Ad var_98
  loc_986383: ExitProcCbHresult
End Sub

Public Property Get ApdeCtct() '98FEF4
  'Data Table: 4E07A8
  loc_98FEB0: ZeroRetVal
  loc_98FEB2: FLdRfVar var_B0
  loc_98FEB5: FLdRfVar var_A0
  loc_98FEB8: LitVarStr var_9C, "ApdeCtct"
  loc_98FEBD: PopAdLdVar
  loc_98FEBE: FLdRfVar var_8C
  loc_98FEC1: FLdPr Me
  loc_98FEC4: MemLdPr RsFrm
  loc_98FEC7:  = Me.Fields
  loc_98FECC: FLdPr var_8C
  loc_98FECF: from_stack_2 = Me.Item(from_stack_1)
  loc_98FED4: FLdPr var_A0
  loc_98FED7:  = Me.Value
  loc_98FEDC: FLdRfVar var_B0
  loc_98FEDF: CStrVarTmp
  loc_98FEE0: FStStr var_88
  loc_98FEE3: FFreeAd var_8C = ""
  loc_98FEEA: FFree1Var var_B0 = ""
  loc_98FEED: ExitProcCbHresult
End Sub

Public Property Get EstaFapa() '98FDEC
  'Data Table: 4E07A8
  loc_98FDA8: ZeroRetVal
  loc_98FDAA: FLdRfVar var_B0
  loc_98FDAD: FLdRfVar var_A0
  loc_98FDB0: LitVarStr var_9C, "EstaFapa"
  loc_98FDB5: PopAdLdVar
  loc_98FDB6: FLdRfVar var_8C
  loc_98FDB9: FLdPr Me
  loc_98FDBC: MemLdPr RsFrm
  loc_98FDBF:  = Me.Fields
  loc_98FDC4: FLdPr var_8C
  loc_98FDC7: from_stack_2 = Me.Item(from_stack_1)
  loc_98FDCC: FLdPr var_A0
  loc_98FDCF:  = Me.Value
  loc_98FDD4: FLdRfVar var_B0
  loc_98FDD7: CStrVarTmp
  loc_98FDD8: FStStr var_88
  loc_98FDDB: FFreeAd var_8C = ""
  loc_98FDE2: FFree1Var var_B0 = ""
  loc_98FDE5: ExitProcCbHresult
End Sub

Public Property Get DetaOfic() '98FD68
  'Data Table: 4E07A8
  loc_98FD24: ZeroRetVal
  loc_98FD26: FLdRfVar var_B0
  loc_98FD29: FLdRfVar var_A0
  loc_98FD2C: LitVarStr var_9C, "DetaOfic"
  loc_98FD31: PopAdLdVar
  loc_98FD32: FLdRfVar var_8C
  loc_98FD35: FLdPr Me
  loc_98FD38: MemLdPr RsFrm
  loc_98FD3B:  = Me.Fields
  loc_98FD40: FLdPr var_8C
  loc_98FD43: from_stack_2 = Me.Item(from_stack_1)
  loc_98FD48: FLdPr var_A0
  loc_98FD4B:  = Me.Value
  loc_98FD50: FLdRfVar var_B0
  loc_98FD53: CStrVarTmp
  loc_98FD54: FStStr var_88
  loc_98FD57: FFreeAd var_8C = ""
  loc_98FD5E: FFree1Var var_B0 = ""
  loc_98FD61: ExitProcCbHresult
End Sub

Public Property Get CredCtde() '9861AC
  'Data Table: 4E07A8
  loc_986174: ZeroRetValVar
  loc_986176: FLdRfVar var_AC
  loc_986179: LitVarStr var_A8, "CredCtde"
  loc_98617E: PopAdLdVar
  loc_98617F: FLdRfVar var_98
  loc_986182: FLdPr Me
  loc_986185: MemLdPr RsFrm
  loc_986188:  = Me.Fields
  loc_98618D: FLdPr var_98
  loc_986190: from_stack_2 = Me.Item(from_stack_1)
  loc_986195: FLdZeroAd var_AC
  loc_986198: CVarAd
  loc_98619C: FStVar CredCtde
  loc_9861A0: FFree1Ad var_98
  loc_9861A3: ExitProcCbHresult
End Sub

Public Property Get Vinculo() '986134
  'Data Table: 4E07A8
  loc_9860FC: ZeroRetValVar
  loc_9860FE: FLdRfVar var_AC
  loc_986101: LitVarStr var_A8, "Vinculo"
  loc_986106: PopAdLdVar
  loc_986107: FLdRfVar var_98
  loc_98610A: FLdPr Me
  loc_98610D: MemLdPr RsFrm
  loc_986110:  = Me.Fields
  loc_986115: FLdPr var_98
  loc_986118: from_stack_2 = Me.Item(from_stack_1)
  loc_98611D: FLdZeroAd var_AC
  loc_986120: CVarAd
  loc_986124: FStVar Vinculo
  loc_986128: FFree1Ad var_98
  loc_98612B: ExitProcCbHresult
End Sub

Public Property Get PadrInmu() '9860BC
  'Data Table: 4E07A8
  loc_986084: ZeroRetValVar
  loc_986086: FLdRfVar var_AC
  loc_986089: LitVarStr var_A8, "PadrInmu"
  loc_98608E: PopAdLdVar
  loc_98608F: FLdRfVar var_98
  loc_986092: FLdPr Me
  loc_986095: MemLdPr RsFrm
  loc_986098:  = Me.Fields
  loc_98609D: FLdPr var_98
  loc_9860A0: from_stack_2 = Me.Item(from_stack_1)
  loc_9860A5: FLdZeroAd var_AC
  loc_9860A8: CVarAd
  loc_9860AC: FStVar PadrInmu
  loc_9860B0: FFree1Ad var_98
  loc_9860B3: ExitProcCbHresult
End Sub

Public Property Get CodiInju() '986044
  'Data Table: 4E07A8
  loc_98600C: ZeroRetValVar
  loc_98600E: FLdRfVar var_AC
  loc_986011: LitVarStr var_A8, "CodiInju"
  loc_986016: PopAdLdVar
  loc_986017: FLdRfVar var_98
  loc_98601A: FLdPr Me
  loc_98601D: MemLdPr RsFrm
  loc_986020:  = Me.Fields
  loc_986025: FLdPr var_98
  loc_986028: from_stack_2 = Me.Item(from_stack_1)
  loc_98602D: FLdZeroAd var_AC
  loc_986030: CVarAd
  loc_986034: FStVar CodiInju
  loc_986038: FFree1Ad var_98
  loc_98603B: ExitProcCbHresult
End Sub

Public Property Get CacuFapa() '985FCC
  'Data Table: 4E07A8
  loc_985F94: ZeroRetValVar
  loc_985F96: FLdRfVar var_AC
  loc_985F99: LitVarStr var_A8, "CacuFapa"
  loc_985F9E: PopAdLdVar
  loc_985F9F: FLdRfVar var_98
  loc_985FA2: FLdPr Me
  loc_985FA5: MemLdPr RsFrm
  loc_985FA8:  = Me.Fields
  loc_985FAD: FLdPr var_98
  loc_985FB0: from_stack_2 = Me.Item(from_stack_1)
  loc_985FB5: FLdZeroAd var_AC
  loc_985FB8: CVarAd
  loc_985FBC: FStVar CacuFapa
  loc_985FC0: FFree1Ad var_98
  loc_985FC3: ExitProcCbHresult
End Sub

Public Property Get AutoApre() '98EB2C
  'Data Table: 4E07A8
  loc_98EAE8: FLdRfVar var_B0
  loc_98EAEB: FLdRfVar var_A0
  loc_98EAEE: LitVarStr var_9C, "AutoApre"
  loc_98EAF3: PopAdLdVar
  loc_98EAF4: FLdRfVar var_8C
  loc_98EAF7: FLdPr Me
  loc_98EAFA: MemLdPr RsFrm
  loc_98EAFD:  = Me.Fields
  loc_98EB02: FLdPr var_8C
  loc_98EB05: from_stack_2 = Me.Item(from_stack_1)
  loc_98EB0A: FLdPr var_A0
  loc_98EB0D:  = Me.Value
  loc_98EB12: FLdRfVar var_B0
  loc_98EB15: CI4Var
  loc_98EB17: FStR4 var_88
  loc_98EB1A: FFreeAd var_8C = ""
  loc_98EB21: FFree1Var var_B0 = ""
  loc_98EB24: ExitProcCbHresult
End Sub

Public Property Get NumeCuen() '98D4AC
  'Data Table: 4E07A8
  loc_98D468: FLdRfVar var_B0
  loc_98D46B: FLdRfVar var_A0
  loc_98D46E: LitVarStr var_9C, "NumeCuen"
  loc_98D473: PopAdLdVar
  loc_98D474: FLdRfVar var_8C
  loc_98D477: FLdPr Me
  loc_98D47A: MemLdPr RsFrm
  loc_98D47D:  = Me.Fields
  loc_98D482: FLdPr var_8C
  loc_98D485: from_stack_2 = Me.Item(from_stack_1)
  loc_98D48A: FLdPr var_A0
  loc_98D48D:  = Me.Value
  loc_98D492: FLdRfVar var_B0
  loc_98D495: CI4Var
  loc_98D497: FStR4 var_88
  loc_98D49A: FFreeAd var_8C = ""
  loc_98D4A1: FFree1Var var_B0 = ""
  loc_98D4A4: ExitProcCbHresult
End Sub

Public Function BuscaAforoPagoAnual(iCodiOfic, lCuenCtct, iPeriCtct, iBimeCtct, lNumeCtct) '9CB968
  'Data Table: 4E07A8
  loc_9CB8B4: ILdRf lCuenCtct
  loc_9CB8B7: FStStrCopy var_8C
  loc_9CB8BA: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct FROM ctacte WHERE CodiOfic = "
  loc_9CB8BD: FLdI2 iCodiOfic
  loc_9CB8C0: CStrUI1
  loc_9CB8C2: FStStrNoPop var_90
  loc_9CB8C5: ConcatStr
  loc_9CB8C6: FStStrNoPop BuscaAforoPagoAnual
  loc_9CB8C9: LitStr " AND CuenCtct = '"
  loc_9CB8CC: ConcatStr
  loc_9CB8CD: FStStrNoPop var_98
  loc_9CB8D0: ILdRf var_8C
  loc_9CB8D3: ConcatStr
  loc_9CB8D4: FStStrNoPop var_9C
  loc_9CB8D7: LitStr "' AND PeriCtct = "
  loc_9CB8DA: ConcatStr
  loc_9CB8DB: FStStrNoPop var_A0
  loc_9CB8DE: FLdI2 iPeriCtct
  loc_9CB8E1: CStrUI1
  loc_9CB8E3: FStStrNoPop var_A4
  loc_9CB8E6: ConcatStr
  loc_9CB8E7: FStStrNoPop var_A8
  loc_9CB8EA: LitStr " AND BimeCtct = "
  loc_9CB8ED: ConcatStr
  loc_9CB8EE: FStStrNoPop var_AC
  loc_9CB8F1: FLdI2 iBimeCtct
  loc_9CB8F4: CStrUI1
  loc_9CB8F6: FStStrNoPop var_B0
  loc_9CB8F9: ConcatStr
  loc_9CB8FA: FStStrNoPop var_B4
  loc_9CB8FD: LitStr " AND NumeCtct = "
  loc_9CB900: ConcatStr
  loc_9CB901: FStStrNoPop var_B8
  loc_9CB904: ILdRf lNumeCtct
  loc_9CB907: CStrI4
  loc_9CB909: FStStrNoPop var_BC
  loc_9CB90C: ConcatStr
  loc_9CB90D: FStStrNoPop var_C0
  loc_9CB910: LitStr " AND TipoCtct = 'Anual' AND CodiTimo = 1"
  loc_9CB913: ConcatStr
  loc_9CB914: FStStrNoPop var_C4
  loc_9CB917: Call EjecutarRsCls(from_stack_1v)
  loc_9CB91C: FFreeStr var_90 = "": BuscaAforoPagoAnual = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_9CB93B: FLdRfVar var_C8
  loc_9CB93E: FLdPr Me
  loc_9CB941: MemLdPr global_56
  loc_9CB944:  = Me.RecordCount
  loc_9CB949: ILdRf var_C8
  loc_9CB94C: LitI4 0
  loc_9CB951: GtI4
  loc_9CB952: BranchF loc_9CB95D
  loc_9CB955: LitI2_Byte &HFF
  loc_9CB957: FStI2 var_86
  loc_9CB95A: Branch loc_9CB962
  loc_9CB95D: LitI2_Byte 0
  loc_9CB95F: FStI2 var_86
  loc_9CB962: ExitProcCbHresult
End Function

Public Function BuscaMoviCtct(iCodiOfic, lCuenCtct, iPeriCtct, iBimeCtct, lNumeCtct) '9E7D6C
  'Data Table: 4E07A8
  loc_9E7C80: ILdRf lCuenCtct
  loc_9E7C83: FStStrCopy var_8C
  loc_9E7C86: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct FROM ctacte WHERE CodiOfic = "
  loc_9E7C89: FLdI2 iCodiOfic
  loc_9E7C8C: CStrUI1
  loc_9E7C8E: FStStrNoPop var_90
  loc_9E7C91: ConcatStr
  loc_9E7C92: FStStrNoPop BuscaMoviCtct
  loc_9E7C95: LitStr " AND CuenCtct = '"
  loc_9E7C98: ConcatStr
  loc_9E7C99: FStStrNoPop var_98
  loc_9E7C9C: ILdRf var_8C
  loc_9E7C9F: ConcatStr
  loc_9E7CA0: FStStrNoPop var_9C
  loc_9E7CA3: LitStr "' AND PeriCtct = "
  loc_9E7CA6: ConcatStr
  loc_9E7CA7: FStStrNoPop var_A0
  loc_9E7CAA: FLdI2 iPeriCtct
  loc_9E7CAD: CStrUI1
  loc_9E7CAF: FStStrNoPop var_A4
  loc_9E7CB2: ConcatStr
  loc_9E7CB3: FStStrNoPop var_A8
  loc_9E7CB6: LitStr " AND BimeCtct = "
  loc_9E7CB9: ConcatStr
  loc_9E7CBA: FStStrNoPop var_AC
  loc_9E7CBD: FLdI2 iBimeCtct
  loc_9E7CC0: CStrUI1
  loc_9E7CC2: FStStrNoPop var_B0
  loc_9E7CC5: ConcatStr
  loc_9E7CC6: FStStrNoPop var_B4
  loc_9E7CC9: LitStr " AND NumeCtct = "
  loc_9E7CCC: ConcatStr
  loc_9E7CCD: FStStrNoPop var_B8
  loc_9E7CD0: ILdRf lNumeCtct
  loc_9E7CD3: CStrI4
  loc_9E7CD5: FStStrNoPop var_BC
  loc_9E7CD8: ConcatStr
  loc_9E7CD9: FStStrNoPop var_C0
  loc_9E7CDC: LitStr " ORDER BY  CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct desc"
  loc_9E7CDF: ConcatStr
  loc_9E7CE0: FStStrNoPop var_C4
  loc_9E7CE3: Call EjecutarRsCls(from_stack_1v)
  loc_9E7CE8: FFreeStr var_90 = "": BuscaMoviCtct = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_9E7D07: FLdRfVar var_C8
  loc_9E7D0A: FLdPr Me
  loc_9E7D0D: MemLdPr global_56
  loc_9E7D10:  = Me.RecordCount
  loc_9E7D15: ILdRf var_C8
  loc_9E7D18: LitI4 0
  loc_9E7D1D: GtI4
  loc_9E7D1E: BranchF loc_9E7D60
  loc_9E7D21: FLdRfVar var_F0
  loc_9E7D24: FLdRfVar var_E0
  loc_9E7D27: LitVarStr var_DC, "MoviCtct"
  loc_9E7D2C: PopAdLdVar
  loc_9E7D2D: FLdRfVar var_CC
  loc_9E7D30: FLdPr Me
  loc_9E7D33: MemLdPr global_56
  loc_9E7D36:  = Me.Fields
  loc_9E7D3B: FLdPr var_CC
  loc_9E7D3E: from_stack_2 = Me.Item(from_stack_1)
  loc_9E7D43: FLdPr var_E0
  loc_9E7D46:  = Me.Value
  loc_9E7D4B: FLdRfVar var_F0
  loc_9E7D4E: FnCIntVar
  loc_9E7D50: FStI2 var_86
  loc_9E7D53: FFreeAd var_CC = ""
  loc_9E7D5A: FFree1Var var_F0 = ""
  loc_9E7D5D: Branch loc_9E7D65
  loc_9E7D60: LitI2_Byte 0
  loc_9E7D62: FStI2 var_86
  loc_9E7D65: ExitProcCbHresult
End Function

Public Sub BuscaMoviCtct1(iCodiOfic, lCuenCtct, iPeriCtct, iBimeCtct, iPeriInfo, sCodiConc, lNumeCtct) 'A6E4FC
  'Data Table: 4E07A8
  loc_A6E210: ILdRf lCuenCtct
  loc_A6E213: FStStrCopy var_88
  loc_A6E216: ILdRf sCodiConc
  loc_A6E219: FStStrCopy var_8C
  loc_A6E21C: LitI2_Byte 0
  loc_A6E21E: FStI2 var_8E
  loc_A6E221: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct FROM ctacte "
  loc_A6E224: LitStr " WHERE CodiOfic = "
  loc_A6E227: ConcatStr
  loc_A6E228: FStStrNoPop var_94
  loc_A6E22B: FLdI2 iCodiOfic
  loc_A6E22E: CStrUI1
  loc_A6E230: FStStrNoPop var_98
  loc_A6E233: ConcatStr
  loc_A6E234: FStStrNoPop var_9C
  loc_A6E237: LitStr " AND CuenCtct = '"
  loc_A6E23A: ConcatStr
  loc_A6E23B: FStStrNoPop var_A0
  loc_A6E23E: ILdRf var_88
  loc_A6E241: ConcatStr
  loc_A6E242: FStStrNoPop var_A4
  loc_A6E245: LitStr "' AND PeriCtct = "
  loc_A6E248: ConcatStr
  loc_A6E249: FStStrNoPop var_A8
  loc_A6E24C: FLdI2 iPeriCtct
  loc_A6E24F: CStrUI1
  loc_A6E251: FStStrNoPop var_AC
  loc_A6E254: ConcatStr
  loc_A6E255: FStStrNoPop var_B0
  loc_A6E258: LitStr " AND BimeCtct = "
  loc_A6E25B: ConcatStr
  loc_A6E25C: FStStrNoPop var_B4
  loc_A6E25F: FLdI2 iBimeCtct
  loc_A6E262: CStrUI1
  loc_A6E264: FStStrNoPop var_B8
  loc_A6E267: ConcatStr
  loc_A6E268: FStStrNoPop var_BC
  loc_A6E26B: LitStr " AND PeriInfo = "
  loc_A6E26E: ConcatStr
  loc_A6E26F: FStStrNoPop var_C0
  loc_A6E272: FLdI2 iPeriInfo
  loc_A6E275: CStrUI1
  loc_A6E277: FStStrNoPop var_C4
  loc_A6E27A: ConcatStr
  loc_A6E27B: FStStrNoPop var_C8
  loc_A6E27E: LitStr " AND CodiConc = '"
  loc_A6E281: ConcatStr
  loc_A6E282: FStStrNoPop var_CC
  loc_A6E285: ILdRf var_8C
  loc_A6E288: ConcatStr
  loc_A6E289: FStStrNoPop var_D0
  loc_A6E28C: LitStr "'"
  loc_A6E28F: ConcatStr
  loc_A6E290: FStStrNoPop var_D4
  loc_A6E293: LitStr " ORDER BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct"
  loc_A6E296: ConcatStr
  loc_A6E297: FStStrNoPop var_D8
  loc_A6E29A: Call EjecutarRsCls5(from_stack_1v)
  loc_A6E29F: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_A6E2C6: FLdRfVar var_DC
  loc_A6E2C9: FLdPr Me
  loc_A6E2CC: MemLdPr global_76
  loc_A6E2CF:  = Me.RecordCount
  loc_A6E2D4: ILdRf var_DC
  loc_A6E2D7: LitI4 0
  loc_A6E2DC: GtI4
  loc_A6E2DD: BranchF loc_A6E4F8
  loc_A6E2E0: FLdPr Me
  loc_A6E2E3: MemLdPr global_76
  loc_A6E2E6: Me.MoveFirst
  loc_A6E2EB: FLdRfVar var_DE
  loc_A6E2EE: FLdPr Me
  loc_A6E2F1: MemLdPr global_76
  loc_A6E2F4:  = Me.EOF
  loc_A6E2F9: FLdI2 var_DE
  loc_A6E2FC: NotI4
  loc_A6E2FD: BranchF loc_A6E4F8
  loc_A6E300: FLdI2 var_8E
  loc_A6E303: LitI2_Byte 1
  loc_A6E305: AddI2
  loc_A6E306: FStI2 var_8E
  loc_A6E309: LitStr " UPDATE ctacte SET NumeCtct = "
  loc_A6E30C: ILdRf lNumeCtct
  loc_A6E30F: CStrI4
  loc_A6E311: FStStrNoPop var_94
  loc_A6E314: ConcatStr
  loc_A6E315: FStStrNoPop var_98
  loc_A6E318: LitStr ", MoviCtct = "
  loc_A6E31B: ConcatStr
  loc_A6E31C: FStStrNoPop var_9C
  loc_A6E31F: FLdI2 var_8E
  loc_A6E322: CStrUI1
  loc_A6E324: FStStrNoPop var_A0
  loc_A6E327: ConcatStr
  loc_A6E328: FStStrNoPop var_A4
  loc_A6E32B: LitStr " WHERE CodiOfic = "
  loc_A6E32E: ConcatStr
  loc_A6E32F: CVarStr var_118
  loc_A6E332: FLdRfVar var_108
  loc_A6E335: FLdRfVar var_F8
  loc_A6E338: LitVarStr var_F4, "CodiOfic"
  loc_A6E33D: PopAdLdVar
  loc_A6E33E: FLdRfVar var_E4
  loc_A6E341: FLdPr Me
  loc_A6E344: MemLdPr global_76
  loc_A6E347:  = Me.Fields
  loc_A6E34C: FLdPr var_E4
  loc_A6E34F: from_stack_2 = Me.Item(from_stack_1)
  loc_A6E354: FLdPr var_F8
  loc_A6E357:  = Me.Value
  loc_A6E35C: FLdRfVar var_108
  loc_A6E35F: ConcatVar var_128
  loc_A6E363: LitVarStr var_138, " AND CuenCtct = '"
  loc_A6E368: ConcatVar var_148
  loc_A6E36C: FLdRfVar var_170
  loc_A6E36F: FLdRfVar var_160
  loc_A6E372: LitVarStr var_15C, "CuenCtct"
  loc_A6E377: PopAdLdVar
  loc_A6E378: FLdRfVar var_14C
  loc_A6E37B: FLdPr Me
  loc_A6E37E: MemLdPr global_76
  loc_A6E381:  = Me.Fields
  loc_A6E386: FLdPr var_14C
  loc_A6E389: from_stack_2 = Me.Item(from_stack_1)
  loc_A6E38E: FLdPr var_160
  loc_A6E391:  = Me.Value
  loc_A6E396: FLdRfVar var_170
  loc_A6E399: ConcatVar var_180
  loc_A6E39D: LitVarStr var_190, "'"
  loc_A6E3A2: ConcatVar var_1A0
  loc_A6E3A6: LitVarStr var_1B0, " AND PeriCtct = "
  loc_A6E3AB: ConcatVar var_1C0
  loc_A6E3AF: FLdRfVar var_1E8
  loc_A6E3B2: FLdRfVar var_1D8
  loc_A6E3B5: LitVarStr var_1D4, "PeriCtct"
  loc_A6E3BA: PopAdLdVar
  loc_A6E3BB: FLdRfVar var_1C4
  loc_A6E3BE: FLdPr Me
  loc_A6E3C1: MemLdPr global_76
  loc_A6E3C4:  = Me.Fields
  loc_A6E3C9: FLdPr var_1C4
  loc_A6E3CC: from_stack_2 = Me.Item(from_stack_1)
  loc_A6E3D1: FLdPr var_1D8
  loc_A6E3D4:  = Me.Value
  loc_A6E3D9: FLdRfVar var_1E8
  loc_A6E3DC: ConcatVar var_1F8
  loc_A6E3E0: LitVarStr var_208, " AND BimeCtct = "
  loc_A6E3E5: ConcatVar var_218
  loc_A6E3E9: FLdRfVar var_240
  loc_A6E3EC: FLdRfVar var_230
  loc_A6E3EF: LitVarStr var_22C, "BimeCtct"
  loc_A6E3F4: PopAdLdVar
  loc_A6E3F5: FLdRfVar var_21C
  loc_A6E3F8: FLdPr Me
  loc_A6E3FB: MemLdPr global_76
  loc_A6E3FE:  = Me.Fields
  loc_A6E403: FLdPr var_21C
  loc_A6E406: from_stack_2 = Me.Item(from_stack_1)
  loc_A6E40B: FLdPr var_230
  loc_A6E40E:  = Me.Value
  loc_A6E413: FLdRfVar var_240
  loc_A6E416: ConcatVar var_250
  loc_A6E41A: LitVarStr var_260, " AND NumeCtct = "
  loc_A6E41F: ConcatVar var_270
  loc_A6E423: FLdRfVar var_298
  loc_A6E426: FLdRfVar var_288
  loc_A6E429: LitVarStr var_284, "NumeCtct"
  loc_A6E42E: PopAdLdVar
  loc_A6E42F: FLdRfVar var_274
  loc_A6E432: FLdPr Me
  loc_A6E435: MemLdPr global_76
  loc_A6E438:  = Me.Fields
  loc_A6E43D: FLdPr var_274
  loc_A6E440: from_stack_2 = Me.Item(from_stack_1)
  loc_A6E445: FLdPr var_288
  loc_A6E448:  = Me.Value
  loc_A6E44D: FLdRfVar var_298
  loc_A6E450: ConcatVar var_2A8
  loc_A6E454: LitVarStr var_2B8, " AND MoviCtct = "
  loc_A6E459: ConcatVar var_2C8
  loc_A6E45D: FLdRfVar var_2F0
  loc_A6E460: FLdRfVar var_2E0
  loc_A6E463: LitVarStr var_2DC, "MoviCtct"
  loc_A6E468: PopAdLdVar
  loc_A6E469: FLdRfVar var_2CC
  loc_A6E46C: FLdPr Me
  loc_A6E46F: MemLdPr global_76
  loc_A6E472:  = Me.Fields
  loc_A6E477: FLdPr var_2CC
  loc_A6E47A: from_stack_2 = Me.Item(from_stack_1)
  loc_A6E47F: FLdPr var_2E0
  loc_A6E482:  = Me.Value
  loc_A6E487: FLdRfVar var_2F0
  loc_A6E48A: ConcatVar var_300
  loc_A6E48E: CStrVarVal var_A8
  loc_A6E492: Call EjecutarRsCls(from_stack_1v)
  loc_A6E497: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A6E4A6: FFreeAd var_E4 = "": var_F8 = "": var_14C = "": var_160 = "": var_1C4 = "": var_1D8 = "": var_21C = "": var_230 = "": var_274 = "": var_288 = "": var_2CC = ""
  loc_A6E4C1: FFreeVar var_118 = "": var_108 = "": var_128 = "": var_148 = "": var_170 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E8 = "": var_1F8 = "": var_218 = "": var_240 = "": var_250 = "": var_270 = "": var_298 = "": var_2A8 = "": var_2C8 = "": var_2F0 = ""
  loc_A6E4EA: FLdPr Me
  loc_A6E4ED: MemLdPr global_76
  loc_A6E4F0: Me.MoveNext
  loc_A6E4F5: Branch loc_A6E2EB
  loc_A6E4F8: ExitProcHresult
End Sub

Public Function BuscaMoviCtde(iCodiOfic, lCuenCtct, iPeriCtct, iBimeCtct, lNumeCtct, iMoviCtct, iPeriOrde, lCodiCtde, iNumeCtde) 'A22694
  'Data Table: 4E07A8
  loc_A22544: ILdRf lCuenCtct
  loc_A22547: FStStrCopy var_8C
  loc_A2254A: ILdRf lCodiCtde
  loc_A2254D: FStStrCopy var_90
  loc_A22550: LitStr "SELECT MoviCtde FROM ctactedeta WHERE CodiOfic = "
  loc_A22553: FLdI2 iCodiOfic
  loc_A22556: CStrUI1
  loc_A22558: FStStrNoPop BuscaMoviCtde
  loc_A2255B: ConcatStr
  loc_A2255C: FStStrNoPop var_98
  loc_A2255F: LitStr " AND CuenCtct = '"
  loc_A22562: ConcatStr
  loc_A22563: FStStrNoPop var_9C
  loc_A22566: ILdRf var_8C
  loc_A22569: ConcatStr
  loc_A2256A: FStStrNoPop var_A0
  loc_A2256D: LitStr "' AND PeriCtct = "
  loc_A22570: ConcatStr
  loc_A22571: FStStrNoPop var_A4
  loc_A22574: FLdI2 iPeriCtct
  loc_A22577: CStrUI1
  loc_A22579: FStStrNoPop var_A8
  loc_A2257C: ConcatStr
  loc_A2257D: FStStrNoPop var_AC
  loc_A22580: LitStr " AND BimeCtct = "
  loc_A22583: ConcatStr
  loc_A22584: FStStrNoPop var_B0
  loc_A22587: FLdI2 iBimeCtct
  loc_A2258A: CStrUI1
  loc_A2258C: FStStrNoPop var_B4
  loc_A2258F: ConcatStr
  loc_A22590: FStStrNoPop var_B8
  loc_A22593: LitStr " AND NumeCtct = "
  loc_A22596: ConcatStr
  loc_A22597: FStStrNoPop var_BC
  loc_A2259A: ILdRf lNumeCtct
  loc_A2259D: CStrI4
  loc_A2259F: FStStrNoPop var_C0
  loc_A225A2: ConcatStr
  loc_A225A3: FStStrNoPop var_C4
  loc_A225A6: LitStr " AND MoviCtct = "
  loc_A225A9: ConcatStr
  loc_A225AA: FStStrNoPop var_C8
  loc_A225AD: FLdI2 iMoviCtct
  loc_A225B0: CStrUI1
  loc_A225B2: FStStrNoPop var_CC
  loc_A225B5: ConcatStr
  loc_A225B6: FStStrNoPop var_D0
  loc_A225B9: LitStr " AND PeriOrde = "
  loc_A225BC: ConcatStr
  loc_A225BD: FStStrNoPop var_D4
  loc_A225C0: FLdI2 iPeriOrde
  loc_A225C3: CStrUI1
  loc_A225C5: FStStrNoPop var_D8
  loc_A225C8: ConcatStr
  loc_A225C9: FStStrNoPop var_DC
  loc_A225CC: LitStr " AND CodiCtde = "
  loc_A225CF: ConcatStr
  loc_A225D0: FStStrNoPop var_E0
  loc_A225D3: ILdRf var_90
  loc_A225D6: ConcatStr
  loc_A225D7: FStStrNoPop var_E4
  loc_A225DA: LitStr " AND NumeCtde = "
  loc_A225DD: ConcatStr
  loc_A225DE: FStStrNoPop var_E8
  loc_A225E1: FLdI2 iNumeCtde
  loc_A225E4: CStrUI1
  loc_A225E6: FStStrNoPop var_EC
  loc_A225E9: ConcatStr
  loc_A225EA: FStStrNoPop var_F0
  loc_A225ED: Call EjecutarRsCls(from_stack_1v)
  loc_A225F2: FFreeStr BuscaMoviCtde = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_A22625: FLdRfVar var_F4
  loc_A22628: FLdPr Me
  loc_A2262B: MemLdPr global_56
  loc_A2262E:  = Me.RecordCount
  loc_A22633: ILdRf var_F4
  loc_A22636: LitI4 0
  loc_A2263B: GtI4
  loc_A2263C: BranchF loc_A22689
  loc_A2263F: FLdPr Me
  loc_A22642: MemLdPr global_56
  loc_A22645: Me.MoveLast
  loc_A2264A: FLdRfVar var_11C
  loc_A2264D: FLdRfVar var_10C
  loc_A22650: LitVarStr var_108, "MoviCtde"
  loc_A22655: PopAdLdVar
  loc_A22656: FLdRfVar var_F8
  loc_A22659: FLdPr Me
  loc_A2265C: MemLdPr global_56
  loc_A2265F:  = Me.Fields
  loc_A22664: FLdPr var_F8
  loc_A22667: from_stack_2 = Me.Item(from_stack_1)
  loc_A2266C: FLdPr var_10C
  loc_A2266F:  = Me.Value
  loc_A22674: FLdRfVar var_11C
  loc_A22677: FnCIntVar
  loc_A22679: FStI2 var_86
  loc_A2267C: FFreeAd var_F8 = ""
  loc_A22683: FFree1Var var_11C = ""
  loc_A22686: Branch loc_A2268E
  loc_A22689: LitI2_Byte 0
  loc_A2268B: FStI2 var_86
  loc_A2268E: ExitProcCbHresult
End Function

Public Sub CreaTemporalCtaCte(CodiOfic, CuenCtct, FeveCtct, sNombTemporal) 'A72D2C
  'Data Table: 4E07A8
  loc_A729D0: ILdRf CuenCtct
  loc_A729D3: FStStrCopy var_88
  loc_A729D6: ILdRf FeveCtct
  loc_A729D9: FStStrCopy var_8C
  loc_A729DC: ILdRf sNombTemporal
  loc_A729DF: FStStrCopy var_90
  loc_A729E2: LitI4 1
  loc_A729E7: LitI4 1
  loc_A729EC: LitVarStr var_B4, "yyyy-mm-dd"
  loc_A729F1: FStVarCopyObj var_C4
  loc_A729F4: FLdRfVar var_C4
  loc_A729F7: FLdRfVar var_8C
  loc_A729FA: CVarRef
  loc_A729FF: FLdRfVar var_D4
  loc_A72A02: ImpAdCallFPR4  = Format(, )
  loc_A72A07: FLdRfVar var_D4
  loc_A72A0A: CStrVarTmp
  loc_A72A0B: FStStr var_94
  loc_A72A0E: FFreeVar var_C4 = ""
  loc_A72A15: LitStr " DROP TEMPORARY TABLE IF EXISTS "
  loc_A72A18: ILdRf var_90
  loc_A72A1B: ConcatStr
  loc_A72A1C: FStStrNoPop var_D8
  loc_A72A1F: LitStr ";"
  loc_A72A22: ConcatStr
  loc_A72A23: FStStrNoPop var_DC
  loc_A72A26: LitStr " CREATE TEMPORARY TABLE "
  loc_A72A29: ConcatStr
  loc_A72A2A: FStStrNoPop var_E0
  loc_A72A2D: ILdRf var_90
  loc_A72A30: ConcatStr
  loc_A72A31: FStStrNoPop var_E4
  loc_A72A34: LitStr " ("
  loc_A72A37: ConcatStr
  loc_A72A38: FStStrNoPop var_E8
  loc_A72A3B: LitStr " aldCtct` decimal(10,2) NOT NULL default '0.00',"
  loc_A72A3E: ConcatStr
  loc_A72A3F: FStStrNoPop var_EC
  loc_A72A42: LitStr " ecaCtct` decimal(10,2) NOT NULL default '0.00',"
  loc_A72A45: ConcatStr
  loc_A72A46: FStStrNoPop var_F0
  loc_A72A49: LitStr " odiOfic` tinyint(2) unsigned NOT NULL default '0',"
  loc_A72A4C: ConcatStr
  loc_A72A4D: FStStrNoPop var_F4
  loc_A72A50: LitStr " uenCtct` char(11) NOT NULL default '',"
  loc_A72A53: ConcatStr
  loc_A72A54: FStStrNoPop var_F8
  loc_A72A57: LitStr " eriCtct` year(4) NOT NULL default '0000',"
  loc_A72A5A: ConcatStr
  loc_A72A5B: FStStrNoPop var_FC
  loc_A72A5E: LitStr " umeCtct` int(10) unsigned NOT NULL default '0',"
  loc_A72A61: ConcatStr
  loc_A72A62: FStStrNoPop var_100
  loc_A72A65: LitStr " oviCtct` smallint(3) unsigned NOT NULL default '0',"
  loc_A72A68: ConcatStr
  loc_A72A69: FStStrNoPop var_104
  loc_A72A6C: LitStr " eriBole` year(4) NOT NULL default '0000',"
  loc_A72A6F: ConcatStr
  loc_A72A70: FStStrNoPop var_108
  loc_A72A73: LitStr " umeBole` int(8) unsigned NOT NULL default '0',"
  loc_A72A76: ConcatStr
  loc_A72A77: FStStrNoPop var_10C
  loc_A72A7A: LitStr " imeCtct` smallint(3) unsigned NOT NULL default '0',"
  loc_A72A7D: ConcatStr
  loc_A72A7E: FStStrNoPop var_110
  loc_A72A81: LitStr " ealCtct` date default NULL,"
  loc_A72A84: ConcatStr
  loc_A72A85: FStStrNoPop var_114
  loc_A72A88: LitStr " eveCtct` date default NULL,"
  loc_A72A8B: ConcatStr
  loc_A72A8C: FStStrNoPop var_118
  loc_A72A8F: LitStr " eenAcpa` date default NULL,"
  loc_A72A92: ConcatStr
  loc_A72A93: FStStrNoPop var_11C
  loc_A72A96: LitStr " umeAcpa` smallint(4) unsigned NOT NULL default '0',"
  loc_A72A99: ConcatStr
  loc_A72A9A: FStStrNoPop var_120
  loc_A72A9D: LitStr " eriInfo` year(4) NOT NULL default '0000', `CodiConc` char(8) NOT NULL default '', `CodiFapa` int(8) unsigned NOT NULL default '0',"
  loc_A72AA0: ConcatStr
  loc_A72AA1: FStStrNoPop var_124
  loc_A72AA4: LitStr " uotDefa` smallint(4) unsigned NOT NULL default '0', `NumeApre` int(8) unsigned NOT NULL default '0',"
  loc_A72AA7: ConcatStr
  loc_A72AA8: FStStrNoPop var_128
  loc_A72AAB: LitStr " odiTimo` tinyint(2) unsigned NOT NULL default '0', `ExpeCtct` char(15) NOT NULL default '',"
  loc_A72AAE: ConcatStr
  loc_A72AAF: FStStrNoPop var_12C
  loc_A72AB2: LitStr " etaCtct` char(100) NOT NULL default '', `NufaCtct` int(8) unsigned NOT NULL default '0', `DebeCtct` decimal(10,2) NOT NULL default '0.00',"
  loc_A72AB5: ConcatStr
  loc_A72AB6: FStStrNoPop var_130
  loc_A72AB9: LitStr " redCtct` decimal(10,2) NOT NULL default '0.00', `CodiUsua` char(15) NOT NULL default '',"
  loc_A72ABC: ConcatStr
  loc_A72ABD: FStStrNoPop var_134
  loc_A72AC0: LitStr " eleCtct` char(2) NOT NULL default '', `ApdeCtct` char(2) NOT NULL default '',"
  loc_A72AC3: ConcatStr
  loc_A72AC4: FStStrNoPop var_138
  loc_A72AC7: LitStr " PRIMARY KEY  (odiOfic`,`CuenCtct`,`PeriCtct`,`BimeCtct`,`NumeCtct`,`MoviCtct`)"
  loc_A72ACA: ConcatStr
  loc_A72ACB: FStStrNoPop var_13C
  loc_A72ACE: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_A72AD1: ConcatStr
  loc_A72AD2: FStStrNoPop var_140
  loc_A72AD5: Call EjecutarRsCls(from_stack_1v)
  loc_A72ADA: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_A72B13: LitStr "SELECT @PorcInte := ifnull(max(PorcInte),0) as PorcInte FROM interes"
  loc_A72B16: Call EjecutarRsCls(from_stack_1v)
  loc_A72B1B: LitStr " INSERT INTO "
  loc_A72B1E: ILdRf var_90
  loc_A72B21: ConcatStr
  loc_A72B22: FStStrNoPop var_D8
  loc_A72B25: LitStr "(SaldCtct,RecaCtct,CodiOfic,CuenCtct,PeriCtct,NumeCtct,MoviCtct, PeriBole,NumeBole,BimeCtct,FealCtct,FeveCtct,FeenAcpa,NumeAcpa,PeriInfo,CodiConc,CodiFapa,CuotDefa,NumeApre,CodiTimo,ExpeCtct,DetaCtct,NufaCtct,DebeCtct,CredCtct,CodiUsua,SeleCtct,ApdeCtct)"
  loc_A72B28: ConcatStr
  loc_A72B29: FStStrNoPop var_DC
  loc_A72B2C: LitStr " SELECT (sum(DebeCtct)-sum(CredCtct)) as SaldCtct, "
  loc_A72B2F: ConcatStr
  loc_A72B30: FStStrNoPop var_E0
  loc_A72B33: LitStr " if(((sum(DebeCtct)-sum(CredCtct))>0)and('"
  loc_A72B36: ConcatStr
  loc_A72B37: FStStrNoPop var_E4
  loc_A72B3A: ILdRf var_94
  loc_A72B3D: ConcatStr
  loc_A72B3E: FStStrNoPop var_E8
  loc_A72B41: LitStr "'>FeveCtCt), "
  loc_A72B44: ConcatStr
  loc_A72B45: FStStrNoPop var_EC
  loc_A72B48: LitStr " ROUND((DATEDIFF('"
  loc_A72B4B: ConcatStr
  loc_A72B4C: FStStrNoPop var_F0
  loc_A72B4F: ILdRf var_94
  loc_A72B52: ConcatStr
  loc_A72B53: FStStrNoPop var_F4
  loc_A72B56: LitStr "',FeveCtct)*@PorcInte/3000)*(sum(DebeCtct)-sum(CredCtct)),2),0) as RecaCtct, "
  loc_A72B59: ConcatStr
  loc_A72B5A: FStStrNoPop var_F8
  loc_A72B5D: LitStr " CodiOfic, CuenCtct, PeriCtct, NumeCtct, MoviCtct, PeriBole, "
  loc_A72B60: ConcatStr
  loc_A72B61: FStStrNoPop var_FC
  loc_A72B64: LitStr " NumeBole, BimeCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, "
  loc_A72B67: ConcatStr
  loc_A72B68: FStStrNoPop var_100
  loc_A72B6B: LitStr " CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, DetaCtct, NufaCtct, DebeCtct, CredCtct, AltaUsua, 'No' as SeleCtct, 'Si' as ApdeCtct "
  loc_A72B6E: ConcatStr
  loc_A72B6F: FStStrNoPop var_104
  loc_A72B72: LitStr " FROM ctacte WHERE CodiOfic = "
  loc_A72B75: ConcatStr
  loc_A72B76: FStStrNoPop var_108
  loc_A72B79: FLdUI1
  loc_A72B7D: CStrI2
  loc_A72B7F: FStStrNoPop var_10C
  loc_A72B82: ConcatStr
  loc_A72B83: FStStrNoPop var_110
  loc_A72B86: LitStr " AND CuenCtct = '"
  loc_A72B89: ConcatStr
  loc_A72B8A: FStStrNoPop var_114
  loc_A72B8D: ILdRf var_88
  loc_A72B90: ConcatStr
  loc_A72B91: FStStrNoPop var_118
  loc_A72B94: LitStr "'"
  loc_A72B97: ConcatStr
  loc_A72B98: FStStrNoPop var_11C
  loc_A72B9B: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct "
  loc_A72B9E: ConcatStr
  loc_A72B9F: FStStrNoPop var_120
  loc_A72BA2: LitStr " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct"
  loc_A72BA5: ConcatStr
  loc_A72BA6: FStStrNoPop var_124
  loc_A72BA9: Call EjecutarRsCls(from_stack_1v)
  loc_A72BAE: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_A72BD9: LitStr "DELETE "
  loc_A72BDC: ILdRf var_90
  loc_A72BDF: ConcatStr
  loc_A72BE0: FStStrNoPop var_D8
  loc_A72BE3: LitStr " FROM "
  loc_A72BE6: ConcatStr
  loc_A72BE7: FStStrNoPop var_DC
  loc_A72BEA: ILdRf var_90
  loc_A72BED: ConcatStr
  loc_A72BEE: FStStrNoPop var_E0
  loc_A72BF1: LitStr " INNER JOIN facipago ON facipago.CodiFapa = "
  loc_A72BF4: ConcatStr
  loc_A72BF5: FStStrNoPop var_E4
  loc_A72BF8: ILdRf var_90
  loc_A72BFB: ConcatStr
  loc_A72BFC: FStStrNoPop var_E8
  loc_A72BFF: LitStr ".CodiFapa"
  loc_A72C02: ConcatStr
  loc_A72C03: FStStrNoPop var_EC
  loc_A72C06: LitStr " WHERE facipago.NovaFapa = 0;"
  loc_A72C09: ConcatStr
  loc_A72C0A: FStStrNoPop var_F0
  loc_A72C0D: Call EjecutarRsCls(from_stack_1v)
  loc_A72C12: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_A72C23: LitStr "SELECT * FROM facipago WHERE facipago.CodiOfic = "
  loc_A72C26: FLdUI1
  loc_A72C2A: CStrI2
  loc_A72C2C: FStStrNoPop var_D8
  loc_A72C2F: ConcatStr
  loc_A72C30: FStStrNoPop var_DC
  loc_A72C33: LitStr " AND facipago.CuenCtct = '"
  loc_A72C36: ConcatStr
  loc_A72C37: FStStrNoPop var_E0
  loc_A72C3A: ILdRf var_88
  loc_A72C3D: ConcatStr
  loc_A72C3E: FStStrNoPop var_E4
  loc_A72C41: LitStr "' AND facipago.EstaFapa = 'Activa'"
  loc_A72C44: ConcatStr
  loc_A72C45: FStStrNoPop var_E8
  loc_A72C48: Call EjecutarRsCls(from_stack_1v)
  loc_A72C4D: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_A72C5A: FLdRfVar var_144
  loc_A72C5D: FLdPr Me
  loc_A72C60: MemLdPr global_56
  loc_A72C63:  = Me.RecordCount
  loc_A72C68: ILdRf var_144
  loc_A72C6B: LitI4 0
  loc_A72C70: GtI4
  loc_A72C71: BranchF loc_A72D29
  loc_A72C74: LitStr " INSERT INTO "
  loc_A72C77: ILdRf var_90
  loc_A72C7A: ConcatStr
  loc_A72C7B: FStStrNoPop var_D8
  loc_A72C7E: LitStr " (SaldCtct,RecaCtct,CodiOfic,CuenCtct,PeriCtct,NumeCtct,MoviCtct, PeriBole,NumeBole,BimeCtct,FealCtct,FeveCtct,FeenAcpa,NumeAcpa,PeriInfo,CodiConc,CodiFapa,CuotDefa,NumeApre,CodiTimo,ExpeCtct,DetaCtct,NufaCtct,DebeCtct,CredCtct,CodiUsua,SeleCtct,ApdeCtct)"
  loc_A72C81: ConcatStr
  loc_A72C82: FStStrNoPop var_DC
  loc_A72C85: LitStr " SELECT TotaDefa SaldCtct, if((TotaDefa>0)and('"
  loc_A72C88: ConcatStr
  loc_A72C89: FStStrNoPop var_E0
  loc_A72C8C: ILdRf var_94
  loc_A72C8F: ConcatStr
  loc_A72C90: FStStrNoPop var_E4
  loc_A72C93: LitStr "' >FeveDefa),"
  loc_A72C96: ConcatStr
  loc_A72C97: FStStrNoPop var_E8
  loc_A72C9A: LitStr "  ROUND((DATEDIFF('"
  loc_A72C9D: ConcatStr
  loc_A72C9E: FStStrNoPop var_EC
  loc_A72CA1: ILdRf var_94
  loc_A72CA4: ConcatStr
  loc_A72CA5: FStStrNoPop var_F0
  loc_A72CA8: LitStr "',FeveDefa)*@PorcInte/3000)*TotaDefa,2),0) as RecaCtct, facipago.CodiOfic, facipago.CuenCtct, year(current_date) PeriCtct, facipago.CodiFapa NumeCtct, detafapa.CuotDefa MoviCtct,"
  loc_A72CAB: ConcatStr
  loc_A72CAC: FStStrNoPop var_F4
  loc_A72CAF: LitStr " 0 PeriBole, 0 NumeBole, CuotDefa BimeCtct, current_date FealCtct, FeveDefa FeveCtct, Null FeenAcpa, 0 NumeAcpa,"
  loc_A72CB2: ConcatStr
  loc_A72CB3: FStStrNoPop var_F8
  loc_A72CB6: LitStr "  PeriInfo, ConcPago CodiConc, facipago.CodiFapa, detafapa.CuotDefa CuotDefa, 0 NumeApre, 1 CodiTimo, concat('Cuota: ',CuotDefa,'/',CacuFapa) ExpeCtct, '' DetaCtct, 0 NufaCtct,"
  loc_A72CB9: ConcatStr
  loc_A72CBA: FStStrNoPop var_FC
  loc_A72CBD: LitStr "  SUM(TotaDefa) DebeCtct, 0 CredCtct, facipago.AltaUsua CodiUsua, 'No' SeleCtct, 'Si' ApdeCtct  FROM facipago"
  loc_A72CC0: ConcatStr
  loc_A72CC1: FStStrNoPop var_100
  loc_A72CC4: LitStr "  INNER JOIN detafapa ON detafapa.CodiFapa = facipago.CodiFapa"
  loc_A72CC7: ConcatStr
  loc_A72CC8: FStStrNoPop var_104
  loc_A72CCB: LitStr "  WHERE facipago.CodiOfic = "
  loc_A72CCE: ConcatStr
  loc_A72CCF: FStStrNoPop var_108
  loc_A72CD2: FLdUI1
  loc_A72CD6: CStrI2
  loc_A72CD8: FStStrNoPop var_10C
  loc_A72CDB: ConcatStr
  loc_A72CDC: FStStrNoPop var_110
  loc_A72CDF: LitStr " AND facipago.CuenCtct = "
  loc_A72CE2: ConcatStr
  loc_A72CE3: FStStrNoPop var_114
  loc_A72CE6: ILdRf var_88
  loc_A72CE9: ConcatStr
  loc_A72CEA: FStStrNoPop var_118
  loc_A72CED: LitStr " AND facipago.EstaFapa = 'Activa'"
  loc_A72CF0: ConcatStr
  loc_A72CF1: FStStrNoPop var_11C
  loc_A72CF4: LitStr "  AND detafapa.FepaDefa IS NULL GROUP BY detafapa.CodiFapa, detafapa.CuotDefa;"
  loc_A72CF7: ConcatStr
  loc_A72CF8: FStStrNoPop var_120
  loc_A72CFB: Call EjecutarRsCls(from_stack_1v)
  loc_A72D00: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_A72D29: ExitProcHresult
End Sub

Public Sub CreaTemporalCtaCteDebitos(CodiOfic, CuenCtct, FeveCtct, sNombTemporal) 'A46B88
  'Data Table: 4E07A8
  loc_A4697C: ILdRf CuenCtct
  loc_A4697F: FStStrCopy var_88
  loc_A46982: ILdRf FeveCtct
  loc_A46985: FStStrCopy var_8C
  loc_A46988: ILdRf sNombTemporal
  loc_A4698B: FStStrCopy var_90
  loc_A4698E: LitI4 1
  loc_A46993: LitI4 1
  loc_A46998: LitVarStr var_B4, "yyyy-mm-dd"
  loc_A4699D: FStVarCopyObj var_C4
  loc_A469A0: FLdRfVar var_C4
  loc_A469A3: FLdRfVar var_8C
  loc_A469A6: CVarRef
  loc_A469AB: FLdRfVar var_D4
  loc_A469AE: ImpAdCallFPR4  = Format(, )
  loc_A469B3: FLdRfVar var_D4
  loc_A469B6: CStrVarTmp
  loc_A469B7: FStStr var_94
  loc_A469BA: FFreeVar var_C4 = ""
  loc_A469C1: LitStr " DROP TEMPORARY TABLE IF EXISTS "
  loc_A469C4: ILdRf var_90
  loc_A469C7: ConcatStr
  loc_A469C8: FStStrNoPop var_D8
  loc_A469CB: LitStr ";"
  loc_A469CE: ConcatStr
  loc_A469CF: FStStrNoPop var_DC
  loc_A469D2: LitStr " CREATE TEMPORARY TABLE "
  loc_A469D5: ConcatStr
  loc_A469D6: FStStrNoPop var_E0
  loc_A469D9: ILdRf var_90
  loc_A469DC: ConcatStr
  loc_A469DD: FStStrNoPop var_E4
  loc_A469E0: LitStr " ("
  loc_A469E3: ConcatStr
  loc_A469E4: FStStrNoPop var_E8
  loc_A469E7: LitStr " aldCtct` decimal(10,2) NOT NULL default '0.00',"
  loc_A469EA: ConcatStr
  loc_A469EB: FStStrNoPop var_EC
  loc_A469EE: LitStr " ecaCtct` decimal(10,2) NOT NULL default '0.00',"
  loc_A469F1: ConcatStr
  loc_A469F2: FStStrNoPop var_F0
  loc_A469F5: LitStr " odiOfic` tinyint(2) unsigned NOT NULL default '0',"
  loc_A469F8: ConcatStr
  loc_A469F9: FStStrNoPop var_F4
  loc_A469FC: LitStr " uenCtct` char(11) NOT NULL default '',"
  loc_A469FF: ConcatStr
  loc_A46A00: FStStrNoPop var_F8
  loc_A46A03: LitStr " eriCtct` year(4) NOT NULL default '0000',"
  loc_A46A06: ConcatStr
  loc_A46A07: FStStrNoPop var_FC
  loc_A46A0A: LitStr " umeCtct` int(10) unsigned NOT NULL default '0',"
  loc_A46A0D: ConcatStr
  loc_A46A0E: FStStrNoPop var_100
  loc_A46A11: LitStr " oviCtct` smallint(3) unsigned NOT NULL default '0',"
  loc_A46A14: ConcatStr
  loc_A46A15: FStStrNoPop var_104
  loc_A46A18: LitStr " eriBole` year(4) NOT NULL default '0000',"
  loc_A46A1B: ConcatStr
  loc_A46A1C: FStStrNoPop var_108
  loc_A46A1F: LitStr " umeBole` int(8) unsigned NOT NULL default '0',"
  loc_A46A22: ConcatStr
  loc_A46A23: FStStrNoPop var_10C
  loc_A46A26: LitStr " imeCtct` smallint(3) unsigned NOT NULL default '0',"
  loc_A46A29: ConcatStr
  loc_A46A2A: FStStrNoPop var_110
  loc_A46A2D: LitStr " ealCtct` date default NULL,"
  loc_A46A30: ConcatStr
  loc_A46A31: FStStrNoPop var_114
  loc_A46A34: LitStr " eveCtct` date default NULL,"
  loc_A46A37: ConcatStr
  loc_A46A38: FStStrNoPop var_118
  loc_A46A3B: LitStr " eenAcpa` date default NULL,"
  loc_A46A3E: ConcatStr
  loc_A46A3F: FStStrNoPop var_11C
  loc_A46A42: LitStr " umeAcpa` smallint(4) unsigned NOT NULL default '0',"
  loc_A46A45: ConcatStr
  loc_A46A46: FStStrNoPop var_120
  loc_A46A49: LitStr " eriInfo` year(4) NOT NULL default '0000', `CodiConc` char(8) NOT NULL default '', `CodiFapa` int(8) unsigned NOT NULL default '0',"
  loc_A46A4C: ConcatStr
  loc_A46A4D: FStStrNoPop var_124
  loc_A46A50: LitStr " uotDefa` smallint(4) unsigned NOT NULL default '0', `NumeApre` int(8) unsigned NOT NULL default '0',"
  loc_A46A53: ConcatStr
  loc_A46A54: FStStrNoPop var_128
  loc_A46A57: LitStr " odiTimo` tinyint(2) unsigned NOT NULL default '0', `ExpeCtct` char(15) NOT NULL default '',"
  loc_A46A5A: ConcatStr
  loc_A46A5B: FStStrNoPop var_12C
  loc_A46A5E: LitStr " etaCtct` char(100) NOT NULL default '', `NufaCtct` int(8) unsigned NOT NULL default '0', `DebeCtct` decimal(10,2) NOT NULL default '0.00',"
  loc_A46A61: ConcatStr
  loc_A46A62: FStStrNoPop var_130
  loc_A46A65: LitStr " redCtct` decimal(10,2) NOT NULL default '0.00', `CodiUsua` char(15) NOT NULL default '',"
  loc_A46A68: ConcatStr
  loc_A46A69: FStStrNoPop var_134
  loc_A46A6C: LitStr " eleCtct` char(2) NOT NULL default '', `ApdeCtct` char(2) NOT NULL default '',"
  loc_A46A6F: ConcatStr
  loc_A46A70: FStStrNoPop var_138
  loc_A46A73: LitStr " PRIMARY KEY  (odiOfic`,`CuenCtct`,`PeriCtct`,`BimeCtct`,`NumeCtct`,`MoviCtct`)"
  loc_A46A76: ConcatStr
  loc_A46A77: FStStrNoPop var_13C
  loc_A46A7A: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_A46A7D: ConcatStr
  loc_A46A7E: FStStrNoPop var_140
  loc_A46A81: Call EjecutarRsCls(from_stack_1v)
  loc_A46A86: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_A46ABF: LitStr "SELECT @PorcInte := ifnull(max(PorcInte),0) as PorcInte FROM interes"
  loc_A46AC2: Call EjecutarRsCls(from_stack_1v)
  loc_A46AC7: LitStr " INSERT INTO "
  loc_A46ACA: ILdRf var_90
  loc_A46ACD: ConcatStr
  loc_A46ACE: FStStrNoPop var_D8
  loc_A46AD1: LitStr "(SaldCtct,RecaCtct,CodiOfic,CuenCtct,PeriCtct,NumeCtct,MoviCtct, PeriBole,NumeBole,BimeCtct,FealCtct,FeveCtct,FeenAcpa,NumeAcpa,PeriInfo,CodiConc,CodiFapa,CuotDefa,NumeApre,CodiTimo,ExpeCtct,DetaCtct,NufaCtct,DebeCtct,CredCtct,CodiUsua,SeleCtct,ApdeCtct)"
  loc_A46AD4: ConcatStr
  loc_A46AD5: FStStrNoPop var_DC
  loc_A46AD8: LitStr " SELECT (sum(DebeCtct)-sum(CredCtct)) as SaldCtct, "
  loc_A46ADB: ConcatStr
  loc_A46ADC: FStStrNoPop var_E0
  loc_A46ADF: LitStr " if(((sum(DebeCtct)-sum(CredCtct))>0)and('"
  loc_A46AE2: ConcatStr
  loc_A46AE3: FStStrNoPop var_E4
  loc_A46AE6: ILdRf var_94
  loc_A46AE9: ConcatStr
  loc_A46AEA: FStStrNoPop var_E8
  loc_A46AED: LitStr "'>FeveCtCt), "
  loc_A46AF0: ConcatStr
  loc_A46AF1: FStStrNoPop var_EC
  loc_A46AF4: LitStr " ROUND((DATEDIFF('"
  loc_A46AF7: ConcatStr
  loc_A46AF8: FStStrNoPop var_F0
  loc_A46AFB: ILdRf var_94
  loc_A46AFE: ConcatStr
  loc_A46AFF: FStStrNoPop var_F4
  loc_A46B02: LitStr "',FeveCtct)*@PorcInte/3000)*(sum(DebeCtct)-sum(CredCtct)),2),0) as RecaCtct, "
  loc_A46B05: ConcatStr
  loc_A46B06: FStStrNoPop var_F8
  loc_A46B09: LitStr " CodiOfic, CuenCtct, PeriCtct, NumeCtct, MoviCtct, PeriBole, "
  loc_A46B0C: ConcatStr
  loc_A46B0D: FStStrNoPop var_FC
  loc_A46B10: LitStr " NumeBole, BimeCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, "
  loc_A46B13: ConcatStr
  loc_A46B14: FStStrNoPop var_100
  loc_A46B17: LitStr " CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, DetaCtct, NufaCtct, DebeCtct, CredCtct, AltaUsua, 'No' as SeleCtct, 'Si' as ApdeCtct "
  loc_A46B1A: ConcatStr
  loc_A46B1B: FStStrNoPop var_104
  loc_A46B1E: LitStr " FROM ctacte WHERE CodiOfic = "
  loc_A46B21: ConcatStr
  loc_A46B22: FStStrNoPop var_108
  loc_A46B25: FLdUI1
  loc_A46B29: CStrI2
  loc_A46B2B: FStStrNoPop var_10C
  loc_A46B2E: ConcatStr
  loc_A46B2F: FStStrNoPop var_110
  loc_A46B32: LitStr " AND CuenCtct = '"
  loc_A46B35: ConcatStr
  loc_A46B36: FStStrNoPop var_114
  loc_A46B39: ILdRf var_88
  loc_A46B3C: ConcatStr
  loc_A46B3D: FStStrNoPop var_118
  loc_A46B40: LitStr "'"
  loc_A46B43: ConcatStr
  loc_A46B44: FStStrNoPop var_11C
  loc_A46B47: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct "
  loc_A46B4A: ConcatStr
  loc_A46B4B: FStStrNoPop var_120
  loc_A46B4E: LitStr " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct"
  loc_A46B51: ConcatStr
  loc_A46B52: FStStrNoPop var_124
  loc_A46B55: Call EjecutarRsCls(from_stack_1v)
  loc_A46B5A: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_A46B85: ExitProcHresult
End Sub

Public Sub BorraSaldoCeroTmp_CtaCte(sNombTemporal) '975B70
  'Data Table: 4E07A8
  loc_975B4C: ILdRf sNombTemporal
  loc_975B4F: FStStrCopy var_88
  loc_975B52: LitStr "DELETE FROM "
  loc_975B55: ILdRf var_88
  loc_975B58: ConcatStr
  loc_975B59: FStStrNoPop var_8C
  loc_975B5C: LitStr " WHERE SaldCtct <= 0"
  loc_975B5F: ConcatStr
  loc_975B60: FStStrNoPop var_90
  loc_975B63: Call EjecutarRsCls(from_stack_1v)
  loc_975B68: FFreeStr var_8C = ""
  loc_975B6F: ExitProcHresult
End Sub

Public Sub BorraCtaCteApremioActivos(sNombTemporal) '975C30
  'Data Table: 4E07A8
  loc_975C0C: ILdRf sNombTemporal
  loc_975C0F: FStStrCopy var_88
  loc_975C12: LitStr "DELETE FROM "
  loc_975C15: ILdRf var_88
  loc_975C18: ConcatStr
  loc_975C19: FStStrNoPop var_8C
  loc_975C1C: LitStr " WHERE NumeApre <> 0 AND SaldCtct > 0 AND SeleCtct = 'Si'"
  loc_975C1F: ConcatStr
  loc_975C20: FStStrNoPop var_90
  loc_975C23: Call EjecutarRsCls(from_stack_1v)
  loc_975C28: FFreeStr var_8C = ""
  loc_975C2F: ExitProcHresult
End Sub

Public Sub ModificaSeleccionaItemApremio(iCodiOfic, lCuenCtct, iPeriCtct, iBimeCtct, lNumeCtct, iMoviCtct, sNombTemporal) '9D51A8
  'Data Table: 4E07A8
  loc_9D50F4: ILdRf lCuenCtct
  loc_9D50F7: FStStrCopy var_88
  loc_9D50FA: ILdRf sNombTemporal
  loc_9D50FD: FStStrCopy var_8C
  loc_9D5100: LitStr "UPDATE "
  loc_9D5103: ILdRf var_8C
  loc_9D5106: ConcatStr
  loc_9D5107: FStStrNoPop var_90
  loc_9D510A: LitStr " SET SeleCtct = 'Si' WHERE CodiOfic = "
  loc_9D510D: ConcatStr
  loc_9D510E: FStStrNoPop var_94
  loc_9D5111: FLdUI1
  loc_9D5115: CStrI2
  loc_9D5117: FStStrNoPop var_98
  loc_9D511A: ConcatStr
  loc_9D511B: FStStrNoPop var_9C
  loc_9D511E: LitStr " AND CuenCtct = '"
  loc_9D5121: ConcatStr
  loc_9D5122: FStStrNoPop var_A0
  loc_9D5125: ILdRf var_88
  loc_9D5128: ConcatStr
  loc_9D5129: FStStrNoPop var_A4
  loc_9D512C: LitStr "' AND PeriCtct = "
  loc_9D512F: ConcatStr
  loc_9D5130: FStStrNoPop var_A8
  loc_9D5133: FLdI2 iPeriCtct
  loc_9D5136: CStrUI1
  loc_9D5138: FStStrNoPop var_AC
  loc_9D513B: ConcatStr
  loc_9D513C: FStStrNoPop var_B0
  loc_9D513F: LitStr " AND BimeCtct = "
  loc_9D5142: ConcatStr
  loc_9D5143: FStStrNoPop var_B4
  loc_9D5146: FLdI2 iBimeCtct
  loc_9D5149: CStrUI1
  loc_9D514B: FStStrNoPop var_B8
  loc_9D514E: ConcatStr
  loc_9D514F: FStStrNoPop var_BC
  loc_9D5152: LitStr " AND NumeCtct = "
  loc_9D5155: ConcatStr
  loc_9D5156: FStStrNoPop var_C0
  loc_9D5159: ILdRf lNumeCtct
  loc_9D515C: CStrI4
  loc_9D515E: FStStrNoPop var_C4
  loc_9D5161: ConcatStr
  loc_9D5162: FStStrNoPop var_C8
  loc_9D5165: LitStr " AND MoviCtct = "
  loc_9D5168: ConcatStr
  loc_9D5169: FStStrNoPop var_CC
  loc_9D516C: FLdI2 iMoviCtct
  loc_9D516F: CStrUI1
  loc_9D5171: FStStrNoPop var_D0
  loc_9D5174: ConcatStr
  loc_9D5175: FStStrNoPop var_D4
  loc_9D5178: Call EjecutarRsCls(from_stack_1v)
  loc_9D517D: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_9D51A4: ExitProcHresult
End Sub

Public Sub ActualizaSeleccion(iCodiOfic, lCuenCtct, iPeriCtct, iBimeCtct, lNumeCtct, iMoviCtct, sSeleCtct, sNombTemporal) '9E4670
  'Data Table: 4E07A8
  loc_9E45A4: ILdRf lCuenCtct
  loc_9E45A7: FStStrCopy var_88
  loc_9E45AA: ILdRf sSeleCtct
  loc_9E45AD: FStStrCopy var_8C
  loc_9E45B0: ILdRf sNombTemporal
  loc_9E45B3: FStStrCopy var_90
  loc_9E45B6: LitStr "UPDATE "
  loc_9E45B9: ILdRf var_90
  loc_9E45BC: ConcatStr
  loc_9E45BD: FStStrNoPop var_94
  loc_9E45C0: LitStr " SET SeleCtct = '"
  loc_9E45C3: ConcatStr
  loc_9E45C4: FStStrNoPop var_98
  loc_9E45C7: ILdRf var_8C
  loc_9E45CA: ConcatStr
  loc_9E45CB: FStStrNoPop var_9C
  loc_9E45CE: LitStr "' WHERE CodiOfic = "
  loc_9E45D1: ConcatStr
  loc_9E45D2: FStStrNoPop var_A0
  loc_9E45D5: FLdUI1
  loc_9E45D9: CStrI2
  loc_9E45DB: FStStrNoPop var_A4
  loc_9E45DE: ConcatStr
  loc_9E45DF: FStStrNoPop var_A8
  loc_9E45E2: LitStr " AND CuenCtct = '"
  loc_9E45E5: ConcatStr
  loc_9E45E6: FStStrNoPop var_AC
  loc_9E45E9: ILdRf var_88
  loc_9E45EC: ConcatStr
  loc_9E45ED: FStStrNoPop var_B0
  loc_9E45F0: LitStr "' AND PeriCtct = "
  loc_9E45F3: ConcatStr
  loc_9E45F4: FStStrNoPop var_B4
  loc_9E45F7: FLdI2 iPeriCtct
  loc_9E45FA: CStrUI1
  loc_9E45FC: FStStrNoPop var_B8
  loc_9E45FF: ConcatStr
  loc_9E4600: FStStrNoPop var_BC
  loc_9E4603: LitStr " AND BimeCtct = "
  loc_9E4606: ConcatStr
  loc_9E4607: FStStrNoPop var_C0
  loc_9E460A: FLdI2 iBimeCtct
  loc_9E460D: CStrUI1
  loc_9E460F: FStStrNoPop var_C4
  loc_9E4612: ConcatStr
  loc_9E4613: FStStrNoPop var_C8
  loc_9E4616: LitStr " AND NumeCtct = "
  loc_9E4619: ConcatStr
  loc_9E461A: FStStrNoPop var_CC
  loc_9E461D: ILdRf lNumeCtct
  loc_9E4620: CStrI4
  loc_9E4622: FStStrNoPop var_D0
  loc_9E4625: ConcatStr
  loc_9E4626: FStStrNoPop var_D4
  loc_9E4629: LitStr " AND MoviCtct = "
  loc_9E462C: ConcatStr
  loc_9E462D: FStStrNoPop var_D8
  loc_9E4630: FLdI2 iMoviCtct
  loc_9E4633: CStrUI1
  loc_9E4635: FStStrNoPop var_DC
  loc_9E4638: ConcatStr
  loc_9E4639: FStStrNoPop var_E0
  loc_9E463C: Call EjecutarRsCls(from_stack_1v)
  loc_9E4641: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_9E466C: ExitProcHresult
End Sub

Public Sub ActualizaDescuento(iCodiOfic, lCuenCtct, sCodiConc, sNombTemporal) '9A9A68
  'Data Table: 4E07A8
  loc_9A99F8: ILdRf lCuenCtct
  loc_9A99FB: FStStrCopy var_88
  loc_9A99FE: ILdRf sCodiConc
  loc_9A9A01: FStStrCopy var_8C
  loc_9A9A04: ILdRf sNombTemporal
  loc_9A9A07: FStStrCopy var_90
  loc_9A9A0A: LitStr "UPDATE "
  loc_9A9A0D: ILdRf var_90
  loc_9A9A10: ConcatStr
  loc_9A9A11: FStStrNoPop var_94
  loc_9A9A14: LitStr " SET ApdeCtct = 'No' WHERE CodiOfic = "
  loc_9A9A17: ConcatStr
  loc_9A9A18: FStStrNoPop var_98
  loc_9A9A1B: FLdUI1
  loc_9A9A1F: CStrI2
  loc_9A9A21: FStStrNoPop var_9C
  loc_9A9A24: ConcatStr
  loc_9A9A25: FStStrNoPop var_A0
  loc_9A9A28: LitStr " AND CuenCtct = '"
  loc_9A9A2B: ConcatStr
  loc_9A9A2C: FStStrNoPop var_A4
  loc_9A9A2F: ILdRf var_88
  loc_9A9A32: ConcatStr
  loc_9A9A33: FStStrNoPop var_A8
  loc_9A9A36: LitStr "' AND CodiConc = "
  loc_9A9A39: ConcatStr
  loc_9A9A3A: FStStrNoPop var_AC
  loc_9A9A3D: ILdRf var_8C
  loc_9A9A40: ConcatStr
  loc_9A9A41: FStStrNoPop var_B0
  loc_9A9A44: LitStr " AND SaldCtct > 0 "
  loc_9A9A47: ConcatStr
  loc_9A9A48: FStStrNoPop var_B4
  loc_9A9A4B: Call EjecutarRsCls(from_stack_1v)
  loc_9A9A50: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_9A9A65: ExitProcHresult
End Sub

Public Sub ActualizaDescuentoMasivo(sNombTemporal) '9759F0
  'Data Table: 4E07A8
  loc_9759CC: ILdRf sNombTemporal
  loc_9759CF: FStStrCopy var_88
  loc_9759D2: LitStr "UPDATE "
  loc_9759D5: ILdRf var_88
  loc_9759D8: ConcatStr
  loc_9759D9: FStStrNoPop var_8C
  loc_9759DC: LitStr " SET ApdeCtct = 'No' WHERE SaldCtct > 0 "
  loc_9759DF: ConcatStr
  loc_9759E0: FStStrNoPop var_90
  loc_9759E3: Call EjecutarRsCls(from_stack_1v)
  loc_9759E8: FFreeStr var_8C = ""
  loc_9759EF: ExitProcHresult
End Sub

Public Function DescuentoCapitalSistemaAnterior(sofic_99, scuen_10, sPeri_10, sBime_10, sCodi_11, lNumeCtct, iMoviCtct) 'A1D594
  'Data Table: 4E07A8
  loc_A1D444: ILdRf scuen_10
  loc_A1D447: FStStrCopy var_98
  loc_A1D44A: ILdRf sPeri_10
  loc_A1D44D: FStStrCopy var_9C
  loc_A1D450: ILdRf sBime_10
  loc_A1D453: FStStrCopy var_A0
  loc_A1D456: ILdRf sCodi_11
  loc_A1D459: FStStrCopy var_A4
  loc_A1D45C: ZeroRetValVar
  loc_A1D45E: LitStr " SELECT ofic_99, cuen_10, peri_10, bime_10,"
  loc_A1D461: ILdRf lNumeCtct
  loc_A1D464: CStrI4
  loc_A1D466: FStStrNoPop var_A8
  loc_A1D469: ConcatStr
  loc_A1D46A: FStStrNoPop var_AC
  loc_A1D46D: LitStr ","
  loc_A1D470: ConcatStr
  loc_A1D471: FStStrNoPop var_B0
  loc_A1D474: FLdI2 iMoviCtct
  loc_A1D477: CStrUI1
  loc_A1D479: FStStrNoPop var_B4
  loc_A1D47C: ConcatStr
  loc_A1D47D: FStStrNoPop var_B8
  loc_A1D480: LitStr ", imp0_10  FROM migracion.ctacte1 WHERE ofic_99 = '"
  loc_A1D483: ConcatStr
  loc_A1D484: FStStrNoPop var_BC
  loc_A1D487: FLdUI1
  loc_A1D48B: CStrI2
  loc_A1D48D: FStStrNoPop var_C0
  loc_A1D490: ConcatStr
  loc_A1D491: FStStrNoPop var_C4
  loc_A1D494: LitStr "' AND cuen_10 = '"
  loc_A1D497: ConcatStr
  loc_A1D498: FStStrNoPop var_C8
  loc_A1D49B: ILdRf var_98
  loc_A1D49E: ConcatStr
  loc_A1D49F: FStStrNoPop var_CC
  loc_A1D4A2: LitStr "' AND peri_10 = '"
  loc_A1D4A5: ConcatStr
  loc_A1D4A6: FStStrNoPop var_D0
  loc_A1D4A9: ILdRf var_9C
  loc_A1D4AC: ConcatStr
  loc_A1D4AD: FStStrNoPop var_D4
  loc_A1D4B0: LitStr "' AND bime_10 = '"
  loc_A1D4B3: ConcatStr
  loc_A1D4B4: FStStrNoPop var_D8
  loc_A1D4B7: ILdRf var_A0
  loc_A1D4BA: ConcatStr
  loc_A1D4BB: FStStrNoPop var_DC
  loc_A1D4BE: LitStr "' AND codi_11 = '"
  loc_A1D4C1: ConcatStr
  loc_A1D4C2: FStStrNoPop var_E0
  loc_A1D4C5: ILdRf var_A4
  loc_A1D4C8: ConcatStr
  loc_A1D4C9: FStStrNoPop var_E4
  loc_A1D4CC: LitStr "'"
  loc_A1D4CF: ConcatStr
  loc_A1D4D0: FStStrNoPop var_E8
  loc_A1D4D3: Call EjecutarRsCls(from_stack_1v)
  loc_A1D4D8: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_A1D4FD: FLdRfVar var_EC
  loc_A1D500: FLdPr Me
  loc_A1D503: MemLdPr global_56
  loc_A1D506:  = Me.RecordCount
  loc_A1D50B: ILdRf var_EC
  loc_A1D50E: LitI4 0
  loc_A1D513: GtI4
  loc_A1D514: BranchF loc_A1D583
  loc_A1D517: FLdRfVar var_114
  loc_A1D51A: FLdRfVar var_104
  loc_A1D51D: LitVarStr var_100, "imp0_10"
  loc_A1D522: PopAdLdVar
  loc_A1D523: FLdRfVar var_F0
  loc_A1D526: FLdPr Me
  loc_A1D529: MemLdPr global_56
  loc_A1D52C:  = Me.Fields
  loc_A1D531: FLdPr var_F0
  loc_A1D534: from_stack_2 = Me.Item(from_stack_1)
  loc_A1D539: FLdPr var_104
  loc_A1D53C:  = Me.Value
  loc_A1D541: LitI4 0
  loc_A1D546: LitI4 -1
  loc_A1D54B: LitI4 1
  loc_A1D550: LitStr ","
  loc_A1D553: LitStr "."
  loc_A1D556: FLdRfVar var_114
  loc_A1D559: CStrVarTmp
  loc_A1D55A: FStStrNoPop var_A8
  loc_A1D55D: ImpAdCallI2 Replace(, , , , , )
  loc_A1D562: FStStrNoPop var_AC
  loc_A1D565: CR8Str
  loc_A1D567: CVarR8
  loc_A1D56B: FStVar DescuentoCapitalSistemaAnterior
  loc_A1D56F: FFreeStr var_A8 = ""
  loc_A1D576: FFreeAd var_F0 = ""
  loc_A1D57D: FFree1Var var_114 = ""
  loc_A1D580: Branch loc_A1D58C
  loc_A1D583: LitVarI2 var_100, 0
  loc_A1D588: FStVar DescuentoCapitalSistemaAnterior
  loc_A1D58C: ExitProcCbHresult
End Function

Public Sub ActualizaSaldoPagoCuenta(iCodiOfic, lCuenCtct, iPeriCtct, iBimeCtct, lNumeCtct, iMoviCtct, doSaldCtct, sNombTemporal, doRecaCtct) 'A8D640
  'Data Table: 4E07A8
  loc_A8D228: ILdRf lCuenCtct
  loc_A8D22B: FStStrCopy var_88
  loc_A8D22E: ILdRf doRecaCtct
  loc_A8D231: FStStrCopy var_8C
  loc_A8D234: LitStr "Municipalidad de Guaymallén"
  loc_A8D237: LitStr "Municipalidad de Rivadavia"
  loc_A8D23A: EqStr
  loc_A8D23C: BranchF loc_A8D43F
  loc_A8D23F: FLdFPR8 arg_30
  loc_A8D242: LitI2_Byte 0
  loc_A8D244: CR8I2
  loc_A8D245: EqR4
  loc_A8D246: BranchF loc_A8D328
  loc_A8D249: LitStr "UPDATE "
  loc_A8D24C: ILdRf var_8C
  loc_A8D24F: ConcatStr
  loc_A8D250: FStStrNoPop var_90
  loc_A8D253: LitStr " SET SaldCtct = "
  loc_A8D256: ConcatStr
  loc_A8D257: FStStrNoPop var_98
  loc_A8D25A: LitI4 0
  loc_A8D25F: LitI4 -1
  loc_A8D264: LitI4 1
  loc_A8D269: LitStr "."
  loc_A8D26C: LitStr ","
  loc_A8D26F: FLdFPR8 doSaldCtct
  loc_A8D272: CStrR8
  loc_A8D274: FStStrNoPop var_94
  loc_A8D277: ImpAdCallI2 Replace(, , , , , )
  loc_A8D27C: FStStrNoPop var_9C
  loc_A8D27F: ConcatStr
  loc_A8D280: FStStrNoPop var_A0
  loc_A8D283: LitStr " WHERE CodiOfic = "
  loc_A8D286: ConcatStr
  loc_A8D287: FStStrNoPop var_A4
  loc_A8D28A: FLdUI1
  loc_A8D28E: CStrI2
  loc_A8D290: FStStrNoPop var_A8
  loc_A8D293: ConcatStr
  loc_A8D294: FStStrNoPop var_AC
  loc_A8D297: LitStr " AND CuenCtct = '"
  loc_A8D29A: ConcatStr
  loc_A8D29B: FStStrNoPop var_B0
  loc_A8D29E: ILdRf var_88
  loc_A8D2A1: ConcatStr
  loc_A8D2A2: FStStrNoPop var_B4
  loc_A8D2A5: LitStr "' AND PeriCtct = "
  loc_A8D2A8: ConcatStr
  loc_A8D2A9: FStStrNoPop var_B8
  loc_A8D2AC: FLdI2 iPeriCtct
  loc_A8D2AF: CStrUI1
  loc_A8D2B1: FStStrNoPop var_BC
  loc_A8D2B4: ConcatStr
  loc_A8D2B5: FStStrNoPop var_C0
  loc_A8D2B8: LitStr " AND BimeCtct = "
  loc_A8D2BB: ConcatStr
  loc_A8D2BC: FStStrNoPop var_C4
  loc_A8D2BF: FLdI2 iBimeCtct
  loc_A8D2C2: CStrUI1
  loc_A8D2C4: FStStrNoPop var_C8
  loc_A8D2C7: ConcatStr
  loc_A8D2C8: FStStrNoPop var_CC
  loc_A8D2CB: LitStr " AND NumeCtct = "
  loc_A8D2CE: ConcatStr
  loc_A8D2CF: FStStrNoPop var_D0
  loc_A8D2D2: ILdRf lNumeCtct
  loc_A8D2D5: CStrI4
  loc_A8D2D7: FStStrNoPop var_D4
  loc_A8D2DA: ConcatStr
  loc_A8D2DB: FStStrNoPop var_D8
  loc_A8D2DE: LitStr " AND MoviCtct = "
  loc_A8D2E1: ConcatStr
  loc_A8D2E2: FStStrNoPop var_DC
  loc_A8D2E5: FLdI2 iMoviCtct
  loc_A8D2E8: CStrUI1
  loc_A8D2EA: FStStrNoPop var_E0
  loc_A8D2ED: ConcatStr
  loc_A8D2EE: FStStrNoPop var_E4
  loc_A8D2F1: Call EjecutarRsCls(from_stack_1v)
  loc_A8D2F6: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_A8D325: Branch loc_A8D43C
  loc_A8D328: LitStr "UPDATE "
  loc_A8D32B: ILdRf var_8C
  loc_A8D32E: ConcatStr
  loc_A8D32F: FStStrNoPop var_90
  loc_A8D332: LitStr " SET SaldCtct = "
  loc_A8D335: ConcatStr
  loc_A8D336: FStStrNoPop var_98
  loc_A8D339: LitI4 0
  loc_A8D33E: LitI4 -1
  loc_A8D343: LitI4 1
  loc_A8D348: LitStr "."
  loc_A8D34B: LitStr ","
  loc_A8D34E: FLdFPR8 doSaldCtct
  loc_A8D351: CStrR8
  loc_A8D353: FStStrNoPop var_94
  loc_A8D356: ImpAdCallI2 Replace(, , , , , )
  loc_A8D35B: FStStrNoPop var_9C
  loc_A8D35E: ConcatStr
  loc_A8D35F: FStStrNoPop var_A0
  loc_A8D362: LitStr " , RecaCtct = "
  loc_A8D365: ConcatStr
  loc_A8D366: FStStrNoPop var_A8
  loc_A8D369: LitI4 0
  loc_A8D36E: LitI4 -1
  loc_A8D373: LitI4 1
  loc_A8D378: LitStr "."
  loc_A8D37B: LitStr ","
  loc_A8D37E: FLdFPR8 arg_30
  loc_A8D381: CStrR8
  loc_A8D383: FStStrNoPop var_A4
  loc_A8D386: ImpAdCallI2 Replace(, , , , , )
  loc_A8D38B: FStStrNoPop var_AC
  loc_A8D38E: ConcatStr
  loc_A8D38F: FStStrNoPop var_B0
  loc_A8D392: LitStr " WHERE CodiOfic = "
  loc_A8D395: ConcatStr
  loc_A8D396: FStStrNoPop var_B4
  loc_A8D399: FLdUI1
  loc_A8D39D: CStrI2
  loc_A8D39F: FStStrNoPop var_B8
  loc_A8D3A2: ConcatStr
  loc_A8D3A3: FStStrNoPop var_BC
  loc_A8D3A6: LitStr " AND CuenCtct = '"
  loc_A8D3A9: ConcatStr
  loc_A8D3AA: FStStrNoPop var_C0
  loc_A8D3AD: ILdRf var_88
  loc_A8D3B0: ConcatStr
  loc_A8D3B1: FStStrNoPop var_C4
  loc_A8D3B4: LitStr "' AND PeriCtct = "
  loc_A8D3B7: ConcatStr
  loc_A8D3B8: FStStrNoPop var_C8
  loc_A8D3BB: FLdI2 iPeriCtct
  loc_A8D3BE: CStrUI1
  loc_A8D3C0: FStStrNoPop var_CC
  loc_A8D3C3: ConcatStr
  loc_A8D3C4: FStStrNoPop var_D0
  loc_A8D3C7: LitStr " AND BimeCtct = "
  loc_A8D3CA: ConcatStr
  loc_A8D3CB: FStStrNoPop var_D4
  loc_A8D3CE: FLdI2 iBimeCtct
  loc_A8D3D1: CStrUI1
  loc_A8D3D3: FStStrNoPop var_D8
  loc_A8D3D6: ConcatStr
  loc_A8D3D7: FStStrNoPop var_DC
  loc_A8D3DA: LitStr " AND NumeCtct = "
  loc_A8D3DD: ConcatStr
  loc_A8D3DE: FStStrNoPop var_E0
  loc_A8D3E1: ILdRf lNumeCtct
  loc_A8D3E4: CStrI4
  loc_A8D3E6: FStStrNoPop var_E4
  loc_A8D3E9: ConcatStr
  loc_A8D3EA: FStStrNoPop var_E8
  loc_A8D3ED: LitStr " AND MoviCtct = "
  loc_A8D3F0: ConcatStr
  loc_A8D3F1: FStStrNoPop var_EC
  loc_A8D3F4: FLdI2 iMoviCtct
  loc_A8D3F7: CStrUI1
  loc_A8D3F9: FStStrNoPop var_F0
  loc_A8D3FC: ConcatStr
  loc_A8D3FD: FStStrNoPop var_F4
  loc_A8D400: Call EjecutarRsCls(from_stack_1v)
  loc_A8D405: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_A8D43C: Branch loc_A8D63C
  loc_A8D43F: FLdFPR8 arg_30
  loc_A8D442: LitI2_Byte 0
  loc_A8D444: CR8I2
  loc_A8D445: EqR4
  loc_A8D446: BranchF loc_A8D528
  loc_A8D449: LitStr "UPDATE "
  loc_A8D44C: ILdRf var_8C
  loc_A8D44F: ConcatStr
  loc_A8D450: FStStrNoPop var_90
  loc_A8D453: LitStr " SET SaldCtct = "
  loc_A8D456: ConcatStr
  loc_A8D457: FStStrNoPop var_98
  loc_A8D45A: LitI4 0
  loc_A8D45F: LitI4 -1
  loc_A8D464: LitI4 1
  loc_A8D469: LitStr "."
  loc_A8D46C: LitStr ","
  loc_A8D46F: FLdFPR8 doSaldCtct
  loc_A8D472: CStrR8
  loc_A8D474: FStStrNoPop var_94
  loc_A8D477: ImpAdCallI2 Replace(, , , , , )
  loc_A8D47C: FStStrNoPop var_9C
  loc_A8D47F: ConcatStr
  loc_A8D480: FStStrNoPop var_A0
  loc_A8D483: LitStr " WHERE CodiOfic = "
  loc_A8D486: ConcatStr
  loc_A8D487: FStStrNoPop var_A4
  loc_A8D48A: FLdUI1
  loc_A8D48E: CStrI2
  loc_A8D490: FStStrNoPop var_A8
  loc_A8D493: ConcatStr
  loc_A8D494: FStStrNoPop var_AC
  loc_A8D497: LitStr " AND CuenCtct = '"
  loc_A8D49A: ConcatStr
  loc_A8D49B: FStStrNoPop var_B0
  loc_A8D49E: ILdRf var_88
  loc_A8D4A1: ConcatStr
  loc_A8D4A2: FStStrNoPop var_B4
  loc_A8D4A5: LitStr "' AND PeriCtct = "
  loc_A8D4A8: ConcatStr
  loc_A8D4A9: FStStrNoPop var_B8
  loc_A8D4AC: FLdI2 iPeriCtct
  loc_A8D4AF: CStrUI1
  loc_A8D4B1: FStStrNoPop var_BC
  loc_A8D4B4: ConcatStr
  loc_A8D4B5: FStStrNoPop var_C0
  loc_A8D4B8: LitStr " AND BimeCtct = "
  loc_A8D4BB: ConcatStr
  loc_A8D4BC: FStStrNoPop var_C4
  loc_A8D4BF: FLdI2 iBimeCtct
  loc_A8D4C2: CStrUI1
  loc_A8D4C4: FStStrNoPop var_C8
  loc_A8D4C7: ConcatStr
  loc_A8D4C8: FStStrNoPop var_CC
  loc_A8D4CB: LitStr " AND NumeCtct = "
  loc_A8D4CE: ConcatStr
  loc_A8D4CF: FStStrNoPop var_D0
  loc_A8D4D2: ILdRf lNumeCtct
  loc_A8D4D5: CStrI4
  loc_A8D4D7: FStStrNoPop var_D4
  loc_A8D4DA: ConcatStr
  loc_A8D4DB: FStStrNoPop var_D8
  loc_A8D4DE: LitStr " AND MoviCtct = "
  loc_A8D4E1: ConcatStr
  loc_A8D4E2: FStStrNoPop var_DC
  loc_A8D4E5: FLdI2 iMoviCtct
  loc_A8D4E8: CStrUI1
  loc_A8D4EA: FStStrNoPop var_E0
  loc_A8D4ED: ConcatStr
  loc_A8D4EE: FStStrNoPop var_E4
  loc_A8D4F1: Call EjecutarRsCls(from_stack_1v)
  loc_A8D4F6: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_A8D525: Branch loc_A8D63C
  loc_A8D528: LitStr "UPDATE "
  loc_A8D52B: ILdRf var_8C
  loc_A8D52E: ConcatStr
  loc_A8D52F: FStStrNoPop var_90
  loc_A8D532: LitStr " SET SaldCtct = "
  loc_A8D535: ConcatStr
  loc_A8D536: FStStrNoPop var_98
  loc_A8D539: LitI4 0
  loc_A8D53E: LitI4 -1
  loc_A8D543: LitI4 1
  loc_A8D548: LitStr "."
  loc_A8D54B: LitStr ","
  loc_A8D54E: FLdFPR8 doSaldCtct
  loc_A8D551: CStrR8
  loc_A8D553: FStStrNoPop var_94
  loc_A8D556: ImpAdCallI2 Replace(, , , , , )
  loc_A8D55B: FStStrNoPop var_9C
  loc_A8D55E: ConcatStr
  loc_A8D55F: FStStrNoPop var_A0
  loc_A8D562: LitStr ", RecaCtct = "
  loc_A8D565: ConcatStr
  loc_A8D566: FStStrNoPop var_A8
  loc_A8D569: LitI4 0
  loc_A8D56E: LitI4 -1
  loc_A8D573: LitI4 1
  loc_A8D578: LitStr "."
  loc_A8D57B: LitStr ","
  loc_A8D57E: FLdFPR8 arg_30
  loc_A8D581: CStrR8
  loc_A8D583: FStStrNoPop var_A4
  loc_A8D586: ImpAdCallI2 Replace(, , , , , )
  loc_A8D58B: FStStrNoPop var_AC
  loc_A8D58E: ConcatStr
  loc_A8D58F: FStStrNoPop var_B0
  loc_A8D592: LitStr " WHERE CodiOfic = "
  loc_A8D595: ConcatStr
  loc_A8D596: FStStrNoPop var_B4
  loc_A8D599: FLdUI1
  loc_A8D59D: CStrI2
  loc_A8D59F: FStStrNoPop var_B8
  loc_A8D5A2: ConcatStr
  loc_A8D5A3: FStStrNoPop var_BC
  loc_A8D5A6: LitStr " AND CuenCtct = '"
  loc_A8D5A9: ConcatStr
  loc_A8D5AA: FStStrNoPop var_C0
  loc_A8D5AD: ILdRf var_88
  loc_A8D5B0: ConcatStr
  loc_A8D5B1: FStStrNoPop var_C4
  loc_A8D5B4: LitStr "' AND PeriCtct = "
  loc_A8D5B7: ConcatStr
  loc_A8D5B8: FStStrNoPop var_C8
  loc_A8D5BB: FLdI2 iPeriCtct
  loc_A8D5BE: CStrUI1
  loc_A8D5C0: FStStrNoPop var_CC
  loc_A8D5C3: ConcatStr
  loc_A8D5C4: FStStrNoPop var_D0
  loc_A8D5C7: LitStr " AND BimeCtct = "
  loc_A8D5CA: ConcatStr
  loc_A8D5CB: FStStrNoPop var_D4
  loc_A8D5CE: FLdI2 iBimeCtct
  loc_A8D5D1: CStrUI1
  loc_A8D5D3: FStStrNoPop var_D8
  loc_A8D5D6: ConcatStr
  loc_A8D5D7: FStStrNoPop var_DC
  loc_A8D5DA: LitStr " AND NumeCtct = "
  loc_A8D5DD: ConcatStr
  loc_A8D5DE: FStStrNoPop var_E0
  loc_A8D5E1: ILdRf lNumeCtct
  loc_A8D5E4: CStrI4
  loc_A8D5E6: FStStrNoPop var_E4
  loc_A8D5E9: ConcatStr
  loc_A8D5EA: FStStrNoPop var_E8
  loc_A8D5ED: LitStr " AND MoviCtct = "
  loc_A8D5F0: ConcatStr
  loc_A8D5F1: FStStrNoPop var_EC
  loc_A8D5F4: FLdI2 iMoviCtct
  loc_A8D5F7: CStrUI1
  loc_A8D5F9: FStStrNoPop var_F0
  loc_A8D5FC: ConcatStr
  loc_A8D5FD: FStStrNoPop var_F4
  loc_A8D600: Call EjecutarRsCls(from_stack_1v)
  loc_A8D605: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_A8D63C: ExitProcHresult
End Sub

Public Sub EliminaCuentaCorrinete(iCodiOfic, sCuenCtct, iPeriCtct, iBimeCtct, lNumeCtct) '9B2110
  'Data Table: 4E07A8
  loc_9B2090: ILdRf sCuenCtct
  loc_9B2093: FStStrCopy var_88
  loc_9B2096: LitStr "DELETE FROM ctacte WHERE CodiOfic = "
  loc_9B2099: FLdUI1
  loc_9B209D: CStrI2
  loc_9B209F: FStStrNoPop var_8C
  loc_9B20A2: ConcatStr
  loc_9B20A3: FStStrNoPop var_90
  loc_9B20A6: LitStr " AND CuenCtct = '"
  loc_9B20A9: ConcatStr
  loc_9B20AA: FStStrNoPop var_94
  loc_9B20AD: ILdRf var_88
  loc_9B20B0: ConcatStr
  loc_9B20B1: FStStrNoPop var_98
  loc_9B20B4: LitStr "' AND PeriCtct = "
  loc_9B20B7: ConcatStr
  loc_9B20B8: FStStrNoPop var_9C
  loc_9B20BB: FLdI2 iPeriCtct
  loc_9B20BE: CStrUI1
  loc_9B20C0: FStStrNoPop var_A0
  loc_9B20C3: ConcatStr
  loc_9B20C4: FStStrNoPop var_A4
  loc_9B20C7: LitStr " AND BimeCtct = "
  loc_9B20CA: ConcatStr
  loc_9B20CB: FStStrNoPop var_A8
  loc_9B20CE: FLdI2 iBimeCtct
  loc_9B20D1: CStrUI1
  loc_9B20D3: FStStrNoPop var_AC
  loc_9B20D6: ConcatStr
  loc_9B20D7: FStStrNoPop var_B0
  loc_9B20DA: LitStr " AND NumeCtct = "
  loc_9B20DD: ConcatStr
  loc_9B20DE: FStStrNoPop var_B4
  loc_9B20E1: ILdRf lNumeCtct
  loc_9B20E4: CStrI4
  loc_9B20E6: FStStrNoPop var_B8
  loc_9B20E9: ConcatStr
  loc_9B20EA: FStStrNoPop var_BC
  loc_9B20ED: Call EjecutarRsCls(from_stack_1v)
  loc_9B20F2: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9B210F: ExitProcHresult
End Sub

Public Sub ActualizaNumeroApremio(iCodiOfic, lCuenCtct, iPeriCtct, iBimeCtct, lNumeCtct, iMoviCtct, lNumeApre) 'A32420
  'Data Table: 4E07A8
  loc_A322B0: ILdRf lCuenCtct
  loc_A322B3: FStStrCopy var_88
  loc_A322B6: LitStr "UPDATE ctacte SET NumeApre = "
  loc_A322B9: ILdRf lNumeApre
  loc_A322BC: CStrI4
  loc_A322BE: FStStrNoPop var_8C
  loc_A322C1: ConcatStr
  loc_A322C2: FStStrNoPop var_90
  loc_A322C5: LitStr " WHERE CodiOfic = "
  loc_A322C8: ConcatStr
  loc_A322C9: FStStrNoPop var_94
  loc_A322CC: FLdUI1
  loc_A322D0: CStrI2
  loc_A322D2: FStStrNoPop var_98
  loc_A322D5: ConcatStr
  loc_A322D6: FStStrNoPop var_9C
  loc_A322D9: LitStr " AND CuenCtct = '"
  loc_A322DC: ConcatStr
  loc_A322DD: FStStrNoPop var_A0
  loc_A322E0: ILdRf var_88
  loc_A322E3: ConcatStr
  loc_A322E4: FStStrNoPop var_A4
  loc_A322E7: LitStr "' AND PeriCtct = "
  loc_A322EA: ConcatStr
  loc_A322EB: FStStrNoPop var_A8
  loc_A322EE: FLdI2 iPeriCtct
  loc_A322F1: CStrUI1
  loc_A322F3: FStStrNoPop var_AC
  loc_A322F6: ConcatStr
  loc_A322F7: FStStrNoPop var_B0
  loc_A322FA: LitStr " AND BimeCtct = "
  loc_A322FD: ConcatStr
  loc_A322FE: FStStrNoPop var_B4
  loc_A32301: FLdI2 iBimeCtct
  loc_A32304: CStrUI1
  loc_A32306: FStStrNoPop var_B8
  loc_A32309: ConcatStr
  loc_A3230A: FStStrNoPop var_BC
  loc_A3230D: LitStr " AND NumeCtct = "
  loc_A32310: ConcatStr
  loc_A32311: FStStrNoPop var_C0
  loc_A32314: ILdRf lNumeCtct
  loc_A32317: CStrI4
  loc_A32319: FStStrNoPop var_C4
  loc_A3231C: ConcatStr
  loc_A3231D: FStStrNoPop var_C8
  loc_A32320: LitStr " AND MoviCtct = "
  loc_A32323: ConcatStr
  loc_A32324: FStStrNoPop var_CC
  loc_A32327: FLdI2 iMoviCtct
  loc_A3232A: CStrUI1
  loc_A3232C: FStStrNoPop var_D0
  loc_A3232F: ConcatStr
  loc_A32330: FStStrNoPop var_D4
  loc_A32333: LitStr ";"
  loc_A32336: ConcatStr
  loc_A32337: FStStrNoPop var_D8
  loc_A3233A: LitStr "INSERT INTO apredeta (NumeApre,CodiOfic,CuenCtct,PeriCtct,BimeCtct,NumeCtct,MoviCtct) VALUES ("
  loc_A3233D: ConcatStr
  loc_A3233E: FStStrNoPop var_DC
  loc_A32341: ILdRf lNumeApre
  loc_A32344: CStrI4
  loc_A32346: FStStrNoPop var_E0
  loc_A32349: ConcatStr
  loc_A3234A: FStStrNoPop var_E4
  loc_A3234D: LitStr ","
  loc_A32350: ConcatStr
  loc_A32351: FStStrNoPop var_E8
  loc_A32354: FLdUI1
  loc_A32358: CStrI2
  loc_A3235A: FStStrNoPop var_EC
  loc_A3235D: ConcatStr
  loc_A3235E: FStStrNoPop var_F0
  loc_A32361: LitStr ",'"
  loc_A32364: ConcatStr
  loc_A32365: FStStrNoPop var_F4
  loc_A32368: ILdRf var_88
  loc_A3236B: ConcatStr
  loc_A3236C: FStStrNoPop var_F8
  loc_A3236F: LitStr "',"
  loc_A32372: ConcatStr
  loc_A32373: FStStrNoPop var_FC
  loc_A32376: FLdI2 iPeriCtct
  loc_A32379: CStrUI1
  loc_A3237B: FStStrNoPop var_100
  loc_A3237E: ConcatStr
  loc_A3237F: FStStrNoPop var_104
  loc_A32382: LitStr ","
  loc_A32385: ConcatStr
  loc_A32386: FStStrNoPop var_108
  loc_A32389: FLdI2 iBimeCtct
  loc_A3238C: CStrUI1
  loc_A3238E: FStStrNoPop var_10C
  loc_A32391: ConcatStr
  loc_A32392: FStStrNoPop var_110
  loc_A32395: LitStr ","
  loc_A32398: ConcatStr
  loc_A32399: FStStrNoPop var_114
  loc_A3239C: ILdRf lNumeCtct
  loc_A3239F: CStrI4
  loc_A323A1: FStStrNoPop var_118
  loc_A323A4: ConcatStr
  loc_A323A5: FStStrNoPop var_11C
  loc_A323A8: LitStr ","
  loc_A323AB: ConcatStr
  loc_A323AC: FStStrNoPop var_120
  loc_A323AF: FLdI2 iMoviCtct
  loc_A323B2: CStrUI1
  loc_A323B4: FStStrNoPop var_124
  loc_A323B7: ConcatStr
  loc_A323B8: FStStrNoPop var_128
  loc_A323BB: LitStr ");"
  loc_A323BE: ConcatStr
  loc_A323BF: FStStrNoPop var_12C
  loc_A323C2: Call EjecutarRsCls(from_stack_1v)
  loc_A323C7: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_A3241C: ExitProcHresult
End Sub

Public Function BuscaDeudaParaLibreDeuda(CodiOfic, CuenCtct, ActiConc, sHastaFecha) 'AABF24
  'Data Table: 4E07A8
  loc_AABA4C: ILdRf CuenCtct
  loc_AABA4F: FStStrCopy var_90
  loc_AABA52: ILdRf ActiConc
  loc_AABA55: FStStrCopy BuscaDeudaParaLibreDeuda
  loc_AABA58: ILdRf sHastaFecha
  loc_AABA5B: FStStrCopy var_98
  loc_AABA5E: LitVarStr var_D8, vbNullString
  loc_AABA63: FStVarCopyObj var_E8
  loc_AABA66: FLdRfVar var_E8
  loc_AABA69: LitStr " AND ActiConc = '"
  loc_AABA6C: ILdRf BuscaDeudaParaLibreDeuda
  loc_AABA6F: ConcatStr
  loc_AABA70: FStStrNoPop var_A8
  loc_AABA73: LitStr "'"
  loc_AABA76: ConcatStr
  loc_AABA77: CVarStr var_C8
  loc_AABA7A: ILdRf BuscaDeudaParaLibreDeuda
  loc_AABA7D: LitStr vbNullString
  loc_AABA80: NeStr
  loc_AABA82: CVarBoolI2 var_B8
  loc_AABA86: FLdRfVar var_F8
  loc_AABA89: ImpAdCallFPR4  = IIf(, , )
  loc_AABA8E: FLdRfVar var_F8
  loc_AABA91: CStrVarTmp
  loc_AABA92: FStStr var_9C
  loc_AABA95: FFree1Str var_A8
  loc_AABA98: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_AABAA3: ILdRf var_98
  loc_AABAA6: LitStr vbNullString
  loc_AABAA9: NeStr
  loc_AABAAB: BranchF loc_AABAB9
  loc_AABAAE: ILdRf var_98
  loc_AABAB1: CDateStr
  loc_AABAB3: FStFPR8 var_A4
  loc_AABAB6: Branch loc_AABAC6
  loc_AABAB9: LitI2_Byte 0
  loc_AABABB: PopTmpLdAd2 var_FA
  loc_AABABE: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_AABAC3: FStFPR8 var_A4
  loc_AABAC6: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_ctacte; CREATE TEMPORARY TABLE tmp_ctacte"
  loc_AABAC9: LitStr " SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, DebeCtct, CredCtct FROM ctacte "
  loc_AABACC: ConcatStr
  loc_AABACD: FStStrNoPop var_A8
  loc_AABAD0: LitStr " USE INDEX (idxctacte08)"
  loc_AABAD3: ConcatStr
  loc_AABAD4: FStStrNoPop var_100
  loc_AABAD7: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_AABADA: ConcatStr
  loc_AABADB: CVarStr var_E8
  loc_AABADE: FLdRfVar var_A4
  loc_AABAE1: CVarRef
  loc_AABAE6: FLdRfVar var_C8
  loc_AABAE9: ImpAdCallFPR4  = Year()
  loc_AABAEE: FLdRfVar var_C8
  loc_AABAF1: ConcatVar var_F8
  loc_AABAF5: LitVarStr var_D8, " AND concepto.CodiConc = ctacte.CodiConc"
  loc_AABAFA: ConcatVar var_110
  loc_AABAFE: LitVarStr var_120, " WHERE CodiOfic = "
  loc_AABB03: ConcatVar var_130
  loc_AABB07: FLdI2 CodiOfic
  loc_AABB0A: CVarI2 var_140
  loc_AABB0D: ConcatVar var_150
  loc_AABB11: LitVarStr var_160, " AND CuenCtct = '"
  loc_AABB16: ConcatVar var_170
  loc_AABB1A: ILdRf var_90
  loc_AABB1D: CVarStr var_180
  loc_AABB20: ConcatVar var_190
  loc_AABB24: LitVarStr var_1A0, "'"
  loc_AABB29: ConcatVar var_1B0
  loc_AABB2D: LitVarStr var_1C0, " AND MoviCtct = 1 "
  loc_AABB32: ConcatVar var_1D0
  loc_AABB36: LitVarStr var_1E0, " AND FeveCtct < '"
  loc_AABB3B: ConcatVar var_1F0
  loc_AABB3F: LitI4 1
  loc_AABB44: LitI4 1
  loc_AABB49: LitVarStr var_210, "yyyy-mm-dd"
  loc_AABB4E: FStVarCopyObj var_220
  loc_AABB51: FLdRfVar var_220
  loc_AABB54: FLdRfVar var_A4
  loc_AABB57: CVarRef
  loc_AABB5C: ImpAdCallI2 Format$(, )
  loc_AABB61: CVarStr var_230
  loc_AABB64: ConcatVar var_240
  loc_AABB68: LitVarStr var_250, "'"
  loc_AABB6D: ConcatVar var_260
  loc_AABB71: ILdRf var_9C
  loc_AABB74: CVarStr var_270
  loc_AABB77: ConcatVar var_280
  loc_AABB7B: LitVarStr var_290, " ORDER BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_AABB80: ConcatVar var_2A0
  loc_AABB84: CStrVarVal var_2A4
  loc_AABB88: Call EjecutarRsCls2(from_stack_1v)
  loc_AABB8D: FFreeStr var_A8 = "": var_100 = ""
  loc_AABB96: FFreeVar var_E8 = "": var_C8 = "": var_F8 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_220 = "": var_1F0 = "": var_230 = "": var_240 = "": var_260 = "": var_280 = ""
  loc_AABBBB: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_ctacte_faci; CREATE TEMPORARY TABLE tmp_ctacte_faci"
  loc_AABBBE: LitStr " SELECT ctacte.PeriCtct, ctacte.BimeCtct, ctacte.codifapa, SUM(ctacte.DebeCtct)-SUM(ctacte.CredCtct) as saldo FROM ctacte"
  loc_AABBC1: ConcatStr
  loc_AABBC2: FStStrNoPop var_A8
  loc_AABBC5: LitStr " INNER JOIN tmp_ctacte ON tmp_ctacte.CodiOfic = ctacte.CodiOfic AND tmp_ctacte.CuenCtct = ctacte.CuenCtct"
  loc_AABBC8: ConcatStr
  loc_AABBC9: FStStrNoPop var_100
  loc_AABBCC: LitStr " AND tmp_ctacte.PeriCtct = ctacte.PeriCtct and tmp_ctacte.BimeCtct = ctacte.BimeCtct"
  loc_AABBCF: ConcatStr
  loc_AABBD0: FStStrNoPop var_2A4
  loc_AABBD3: LitStr " AND tmp_ctacte.NumeCtct = ctacte.NumeCtct"
  loc_AABBD6: ConcatStr
  loc_AABBD7: FStStrNoPop var_2A8
  loc_AABBDA: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.NumeCtct"
  loc_AABBDD: ConcatStr
  loc_AABBDE: FStStrNoPop var_2AC
  loc_AABBE1: LitStr " having saldo > 0;"
  loc_AABBE4: ConcatStr
  loc_AABBE5: FStStrNoPop var_2B0
  loc_AABBE8: Call EjecutarRsCls2(from_stack_1v)
  loc_AABBED: FFreeStr var_A8 = "": var_100 = "": var_2A4 = "": var_2A8 = "": var_2AC = ""
  loc_AABBFC: LitStr "SELECT IFNULL(SUM(saldo),0) as Saldo FROM tmp_ctacte_faci WHERE CodiFapa = 0"
  loc_AABBFF: Call EjecutarRsCls2(from_stack_1v)
  loc_AABC04: FLdRfVar var_2B4
  loc_AABC07: FLdPr Me
  loc_AABC0A: MemLdPr global_64
  loc_AABC0D:  = Me.RecordCount
  loc_AABC12: ILdRf var_2B4
  loc_AABC15: LitI4 0
  loc_AABC1A: GtI4
  loc_AABC1B: BranchF loc_AABC79
  loc_AABC1E: FLdRfVar var_C8
  loc_AABC21: FLdRfVar var_2BC
  loc_AABC24: LitVarStr var_B8, "Saldo"
  loc_AABC29: PopAdLdVar
  loc_AABC2A: FLdRfVar var_2B8
  loc_AABC2D: FLdPr Me
  loc_AABC30: MemLdPr global_64
  loc_AABC33:  = Me.Fields
  loc_AABC38: FLdPr var_2B8
  loc_AABC3B: from_stack_2 = Me.Item(from_stack_1)
  loc_AABC40: FLdPr var_2BC
  loc_AABC43:  = Me.Value
  loc_AABC48: LitI4 2
  loc_AABC4D: FLdFPR8 var_8C
  loc_AABC50: FLdRfVar var_C8
  loc_AABC53: FnCDblVar
  loc_AABC55: AddR8
  loc_AABC56: CVarR8
  loc_AABC5A: FLdRfVar var_F8
  loc_AABC5D: ImpAdCallFPR4  = Round(, )
  loc_AABC62: FLdRfVar var_F8
  loc_AABC65: CR4Var
  loc_AABC66: FStFPR8 var_8C
  loc_AABC69: FFreeAd var_2B8 = ""
  loc_AABC70: FFreeVar var_C8 = "": var_E8 = ""
  loc_AABC79: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_ctacte_faciTmp; CREATE TEMPORARY TABLE tmp_ctacte_faciTmp"
  loc_AABC7C: LitStr " SELECT *  FROM tmp_ctacte_faci WHERE CodiFapa <> 0 GROUP BY CodiFapa"
  loc_AABC7F: ConcatStr
  loc_AABC80: FStStrNoPop var_A8
  loc_AABC83: Call EjecutarRsCls2(from_stack_1v)
  loc_AABC88: FFree1Str var_A8
  loc_AABC8B: LitStr " SELECT *  FROM tmp_ctacte_faci WHERE CodiFapa <> 0 GROUP BY CodiFapa"
  loc_AABC8E: Call EjecutarRsCls2(from_stack_1v)
  loc_AABC93: FLdRfVar var_2B4
  loc_AABC96: FLdPr Me
  loc_AABC99: MemLdPr global_64
  loc_AABC9C:  = Me.RecordCount
  loc_AABCA1: ILdRf var_2B4
  loc_AABCA4: LitI4 0
  loc_AABCA9: GtI4
  loc_AABCAA: BranchF loc_AABF1E
  loc_AABCAD: FLdPr Me
  loc_AABCB0: MemLdPr global_64
  loc_AABCB3: Me.MoveFirst
  loc_AABCB8: FLdRfVar var_FA
  loc_AABCBB: FLdPr Me
  loc_AABCBE: MemLdPr global_64
  loc_AABCC1:  = Me.EOF
  loc_AABCC6: FLdI2 var_FA
  loc_AABCC9: NotI4
  loc_AABCCA: BranchF loc_AABF1E
  loc_AABCCD: LitVarStr var_D8, " SELECT * FROM facipago WHERE CodiFapa = "
  loc_AABCD2: FLdRfVar var_C8
  loc_AABCD5: FLdRfVar var_2BC
  loc_AABCD8: LitVarStr var_B8, "CodiFapa"
  loc_AABCDD: PopAdLdVar
  loc_AABCDE: FLdRfVar var_2B8
  loc_AABCE1: FLdPr Me
  loc_AABCE4: MemLdPr global_64
  loc_AABCE7:  = Me.Fields
  loc_AABCEC: FLdPr var_2B8
  loc_AABCEF: from_stack_2 = Me.Item(from_stack_1)
  loc_AABCF4: FLdPr var_2BC
  loc_AABCF7:  = Me.Value
  loc_AABCFC: FLdRfVar var_C8
  loc_AABCFF: ConcatVar var_E8
  loc_AABD03: CStrVarVal var_A8
  loc_AABD07: Call EjecutarRsCls3(from_stack_1v)
  loc_AABD0C: FFree1Str var_A8
  loc_AABD0F: FFreeAd var_2B8 = ""
  loc_AABD16: FFreeVar var_C8 = ""
  loc_AABD1D: FLdRfVar var_2B4
  loc_AABD20: FLdPr Me
  loc_AABD23: MemLdPr global_68
  loc_AABD26:  = Me.RecordCount
  loc_AABD2B: ILdRf var_2B4
  loc_AABD2E: LitI4 0
  loc_AABD33: GtI4
  loc_AABD34: BranchF loc_AABE4B
  loc_AABD37: LitStr "SELECT IFNULL(SUM(Totadefa),0) as Saldo FROM detafapa"
  loc_AABD3A: LitStr " WHERE CodiFapa = "
  loc_AABD3D: ConcatStr
  loc_AABD3E: CVarStr var_E8
  loc_AABD41: FLdRfVar var_C8
  loc_AABD44: FLdRfVar var_2BC
  loc_AABD47: LitVarStr var_B8, "CodiFapa"
  loc_AABD4C: PopAdLdVar
  loc_AABD4D: FLdRfVar var_2B8
  loc_AABD50: FLdPr Me
  loc_AABD53: MemLdPr global_64
  loc_AABD56:  = Me.Fields
  loc_AABD5B: FLdPr var_2B8
  loc_AABD5E: from_stack_2 = Me.Item(from_stack_1)
  loc_AABD63: FLdPr var_2BC
  loc_AABD66:  = Me.Value
  loc_AABD6B: FLdRfVar var_C8
  loc_AABD6E: ConcatVar var_F8
  loc_AABD72: LitVarStr var_D8, " AND FepaDefa IS NUll AND FeveDefa < '"
  loc_AABD77: ConcatVar var_110
  loc_AABD7B: LitI4 1
  loc_AABD80: LitI4 1
  loc_AABD85: LitVarStr var_140, "yyyy-mm-dd"
  loc_AABD8A: FStVarCopyObj var_130
  loc_AABD8D: FLdRfVar var_130
  loc_AABD90: FLdRfVar var_A4
  loc_AABD93: CVarRef
  loc_AABD98: ImpAdCallI2 Format$(, )
  loc_AABD9D: CVarStr var_150
  loc_AABDA0: ConcatVar var_170
  loc_AABDA4: LitVarStr var_160, "'"
  loc_AABDA9: ConcatVar var_190
  loc_AABDAD: CStrVarVal var_A8
  loc_AABDB1: Call EjecutarRsCls3(from_stack_1v)
  loc_AABDB6: FFree1Str var_A8
  loc_AABDB9: FFreeAd var_2B8 = ""
  loc_AABDC0: FFreeVar var_E8 = "": var_C8 = "": var_F8 = "": var_130 = "": var_110 = "": var_150 = "": var_170 = ""
  loc_AABDD3: FLdRfVar var_2B4
  loc_AABDD6: FLdPr Me
  loc_AABDD9: MemLdPr global_68
  loc_AABDDC:  = Me.RecordCount
  loc_AABDE1: ILdRf var_2B4
  loc_AABDE4: LitI4 0
  loc_AABDE9: GtI4
  loc_AABDEA: BranchF loc_AABE48
  loc_AABDED: FLdRfVar var_C8
  loc_AABDF0: FLdRfVar var_2BC
  loc_AABDF3: LitVarStr var_B8, "Saldo"
  loc_AABDF8: PopAdLdVar
  loc_AABDF9: FLdRfVar var_2B8
  loc_AABDFC: FLdPr Me
  loc_AABDFF: MemLdPr global_68
  loc_AABE02:  = Me.Fields
  loc_AABE07: FLdPr var_2B8
  loc_AABE0A: from_stack_2 = Me.Item(from_stack_1)
  loc_AABE0F: FLdPr var_2BC
  loc_AABE12:  = Me.Value
  loc_AABE17: LitI4 2
  loc_AABE1C: FLdFPR8 var_8C
  loc_AABE1F: FLdRfVar var_C8
  loc_AABE22: FnCDblVar
  loc_AABE24: AddR8
  loc_AABE25: CVarR8
  loc_AABE29: FLdRfVar var_F8
  loc_AABE2C: ImpAdCallFPR4  = Round(, )
  loc_AABE31: FLdRfVar var_F8
  loc_AABE34: CR4Var
  loc_AABE35: FStFPR8 var_8C
  loc_AABE38: FFreeAd var_2B8 = ""
  loc_AABE3F: FFreeVar var_C8 = "": var_E8 = ""
  loc_AABE48: Branch loc_AABF10
  loc_AABE4B: LitVarStr var_D8, "SELECT IFNULL(SUM(saldo),0) as Saldo FROM tmp_ctacte_faci WHERE CodiFapa = "
  loc_AABE50: FLdRfVar var_C8
  loc_AABE53: FLdRfVar var_2BC
  loc_AABE56: LitVarStr var_B8, "CodiFapa"
  loc_AABE5B: PopAdLdVar
  loc_AABE5C: FLdRfVar var_2B8
  loc_AABE5F: FLdPr Me
  loc_AABE62: MemLdPr global_64
  loc_AABE65:  = Me.Fields
  loc_AABE6A: FLdPr var_2B8
  loc_AABE6D: from_stack_2 = Me.Item(from_stack_1)
  loc_AABE72: FLdPr var_2BC
  loc_AABE75:  = Me.Value
  loc_AABE7A: FLdRfVar var_C8
  loc_AABE7D: ConcatVar var_E8
  loc_AABE81: CStrVarVal var_A8
  loc_AABE85: Call EjecutarRsCls3(from_stack_1v)
  loc_AABE8A: FFree1Str var_A8
  loc_AABE8D: FFreeAd var_2B8 = ""
  loc_AABE94: FFreeVar var_C8 = ""
  loc_AABE9B: FLdRfVar var_2B4
  loc_AABE9E: FLdPr Me
  loc_AABEA1: MemLdPr global_68
  loc_AABEA4:  = Me.RecordCount
  loc_AABEA9: ILdRf var_2B4
  loc_AABEAC: LitI4 0
  loc_AABEB1: GtI4
  loc_AABEB2: BranchF loc_AABF10
  loc_AABEB5: FLdRfVar var_C8
  loc_AABEB8: FLdRfVar var_2BC
  loc_AABEBB: LitVarStr var_B8, "Saldo"
  loc_AABEC0: PopAdLdVar
  loc_AABEC1: FLdRfVar var_2B8
  loc_AABEC4: FLdPr Me
  loc_AABEC7: MemLdPr global_68
  loc_AABECA:  = Me.Fields
  loc_AABECF: FLdPr var_2B8
  loc_AABED2: from_stack_2 = Me.Item(from_stack_1)
  loc_AABED7: FLdPr var_2BC
  loc_AABEDA:  = Me.Value
  loc_AABEDF: LitI4 2
  loc_AABEE4: FLdFPR8 var_8C
  loc_AABEE7: FLdRfVar var_C8
  loc_AABEEA: FnCDblVar
  loc_AABEEC: AddR8
  loc_AABEED: CVarR8
  loc_AABEF1: FLdRfVar var_F8
  loc_AABEF4: ImpAdCallFPR4  = Round(, )
  loc_AABEF9: FLdRfVar var_F8
  loc_AABEFC: CR4Var
  loc_AABEFD: FStFPR8 var_8C
  loc_AABF00: FFreeAd var_2B8 = ""
  loc_AABF07: FFreeVar var_C8 = "": var_E8 = ""
  loc_AABF10: FLdPr Me
  loc_AABF13: MemLdPr global_64
  loc_AABF16: Me.MoveNext
  loc_AABF1B: Branch loc_AABCB8
  loc_AABF1E: ExitProcCbHresult
End Function

Public Function BuscaSiTieneFacilidaddePagoAldia(CodiOfic, CuenCtct, ActiConc) 'A35C30
  'Data Table: 4E07A8
  loc_A35A3C: ILdRf CuenCtct
  loc_A35A3F: FStStrCopy var_8C
  loc_A35A42: ILdRf ActiConc
  loc_A35A45: FStStrCopy var_90
  loc_A35A48: LitI2_Byte 0
  loc_A35A4A: PopTmpLdAd2 var_A2
  loc_A35A4D: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A35A52: FStFPR8 var_98
  loc_A35A55: LitI2_Byte 0
  loc_A35A57: CR8I2
  loc_A35A58: FStFPR8 var_A0
  loc_A35A5B: LitI2_Byte 0
  loc_A35A5D: FStI2 var_86
  loc_A35A60: LitStr " SELECT *  FROM tmp_ctacte_faci WHERE CodiFapa <> 0 GROUP BY CodiFapa"
  loc_A35A63: Call EjecutarRsCls2(from_stack_1v)
  loc_A35A68: FLdRfVar var_A8
  loc_A35A6B: FLdPr Me
  loc_A35A6E: MemLdPr global_64
  loc_A35A71:  = Me.RecordCount
  loc_A35A76: ILdRf var_A8
  loc_A35A79: LitI4 0
  loc_A35A7E: GtI4
  loc_A35A7F: BranchF loc_A35C13
  loc_A35A82: FLdPr Me
  loc_A35A85: MemLdPr global_64
  loc_A35A88: Me.MoveFirst
  loc_A35A8D: FLdRfVar var_A2
  loc_A35A90: FLdPr Me
  loc_A35A93: MemLdPr global_64
  loc_A35A96:  = Me.EOF
  loc_A35A9B: FLdI2 var_A2
  loc_A35A9E: NotI4
  loc_A35A9F: BranchF loc_A35C10
  loc_A35AA2: LitVarStr var_E0, " SELECT * FROM facipago WHERE CodiFapa = "
  loc_A35AA7: FLdRfVar var_D0
  loc_A35AAA: FLdRfVar var_C0
  loc_A35AAD: LitVarStr var_BC, "CodiFapa"
  loc_A35AB2: PopAdLdVar
  loc_A35AB3: FLdRfVar var_AC
  loc_A35AB6: FLdPr Me
  loc_A35AB9: MemLdPr global_64
  loc_A35ABC:  = Me.Fields
  loc_A35AC1: FLdPr var_AC
  loc_A35AC4: from_stack_2 = Me.Item(from_stack_1)
  loc_A35AC9: FLdPr var_C0
  loc_A35ACC:  = Me.Value
  loc_A35AD1: FLdRfVar var_D0
  loc_A35AD4: ConcatVar var_F0
  loc_A35AD8: CStrVarVal var_F4
  loc_A35ADC: Call EjecutarRsCls3(from_stack_1v)
  loc_A35AE1: FFree1Str var_F4
  loc_A35AE4: FFreeAd var_AC = ""
  loc_A35AEB: FFreeVar var_D0 = ""
  loc_A35AF2: FLdRfVar var_A8
  loc_A35AF5: FLdPr Me
  loc_A35AF8: MemLdPr global_68
  loc_A35AFB:  = Me.RecordCount
  loc_A35B00: ILdRf var_A8
  loc_A35B03: LitI4 0
  loc_A35B08: GtI4
  loc_A35B09: BranchF loc_A35C02
  loc_A35B0C: LitStr "SELECT IFNULL(SUM(Totadefa),0) as Saldo FROM detafapa"
  loc_A35B0F: LitStr " WHERE CodiFapa = "
  loc_A35B12: ConcatStr
  loc_A35B13: CVarStr var_F0
  loc_A35B16: FLdRfVar var_D0
  loc_A35B19: FLdRfVar var_C0
  loc_A35B1C: LitVarStr var_BC, "CodiFapa"
  loc_A35B21: PopAdLdVar
  loc_A35B22: FLdRfVar var_AC
  loc_A35B25: FLdPr Me
  loc_A35B28: MemLdPr global_64
  loc_A35B2B:  = Me.Fields
  loc_A35B30: FLdPr var_AC
  loc_A35B33: from_stack_2 = Me.Item(from_stack_1)
  loc_A35B38: FLdPr var_C0
  loc_A35B3B:  = Me.Value
  loc_A35B40: FLdRfVar var_D0
  loc_A35B43: ConcatVar var_104
  loc_A35B47: LitVarStr var_E0, " AND FepaDefa IS NUll AND FeveDefa < '"
  loc_A35B4C: ConcatVar var_114
  loc_A35B50: LitI4 1
  loc_A35B55: LitI4 1
  loc_A35B5A: LitVarStr var_134, "yyyy-mm-dd"
  loc_A35B5F: FStVarCopyObj var_144
  loc_A35B62: FLdRfVar var_144
  loc_A35B65: FLdRfVar var_98
  loc_A35B68: CVarRef
  loc_A35B6D: ImpAdCallI2 Format$(, )
  loc_A35B72: CVarStr var_154
  loc_A35B75: ConcatVar var_164
  loc_A35B79: LitVarStr var_174, "'"
  loc_A35B7E: ConcatVar var_184
  loc_A35B82: CStrVarVal var_F4
  loc_A35B86: Call EjecutarRsCls3(from_stack_1v)
  loc_A35B8B: FFree1Str var_F4
  loc_A35B8E: FFreeAd var_AC = ""
  loc_A35B95: FFreeVar var_F0 = "": var_D0 = "": var_104 = "": var_144 = "": var_114 = "": var_154 = "": var_164 = ""
  loc_A35BA8: FLdRfVar var_A8
  loc_A35BAB: FLdPr Me
  loc_A35BAE: MemLdPr global_68
  loc_A35BB1:  = Me.RecordCount
  loc_A35BB6: ILdRf var_A8
  loc_A35BB9: LitI4 0
  loc_A35BBE: GtI4
  loc_A35BBF: BranchF loc_A35C02
  loc_A35BC2: FLdRfVar var_D0
  loc_A35BC5: FLdRfVar var_C0
  loc_A35BC8: LitVarStr var_BC, "Saldo"
  loc_A35BCD: PopAdLdVar
  loc_A35BCE: FLdRfVar var_AC
  loc_A35BD1: FLdPr Me
  loc_A35BD4: MemLdPr global_68
  loc_A35BD7:  = Me.Fields
  loc_A35BDC: FLdPr var_AC
  loc_A35BDF: from_stack_2 = Me.Item(from_stack_1)
  loc_A35BE4: FLdPr var_C0
  loc_A35BE7:  = Me.Value
  loc_A35BEC: FLdFPR8 var_A0
  loc_A35BEF: FLdRfVar var_D0
  loc_A35BF2: FnCDblVar
  loc_A35BF4: AddR8
  loc_A35BF5: FStFPR8 var_A0
  loc_A35BF8: FFreeAd var_AC = ""
  loc_A35BFF: FFree1Var var_D0 = ""
  loc_A35C02: FLdPr Me
  loc_A35C05: MemLdPr global_64
  loc_A35C08: Me.MoveNext
  loc_A35C0D: Branch loc_A35A8D
  loc_A35C10: Branch loc_A35C19
  loc_A35C13: LitI2_Byte 1
  loc_A35C15: CR8I2
  loc_A35C16: FStFPR8 var_A0
  loc_A35C19: FLdFPR8 var_A0
  loc_A35C1C: LitI2_Byte 0
  loc_A35C1E: CR8I2
  loc_A35C1F: EqR4
  loc_A35C20: BranchF loc_A35C28
  loc_A35C23: LitI2_Byte &HFF
  loc_A35C25: FStI2 var_86
  loc_A35C28: ExitProcCbHresult
End Function

Public Function BuscaUltimoPeriodoLibreDeuda(CodiOfic, CuenCtct, ActiConc) 'A35998
  'Data Table: 4E07A8
  loc_A357E8: ILdRf CuenCtct
  loc_A357EB: FStStrCopy var_8C
  loc_A357EE: ILdRf ActiConc
  loc_A357F1: FStStrCopy var_90
  loc_A357F4: ZeroRetVal
  loc_A357F6: LitVarStr var_C8, vbNullString
  loc_A357FB: FStVarCopyObj var_D8
  loc_A357FE: FLdRfVar var_D8
  loc_A35801: LitStr " AND ActiConc = '"
  loc_A35804: ILdRf var_90
  loc_A35807: ConcatStr
  loc_A35808: FStStrNoPop var_98
  loc_A3580B: LitStr "'"
  loc_A3580E: ConcatStr
  loc_A3580F: CVarStr var_B8
  loc_A35812: ILdRf var_90
  loc_A35815: LitStr vbNullString
  loc_A35818: NeStr
  loc_A3581A: CVarBoolI2 var_A8
  loc_A3581E: FLdRfVar var_E8
  loc_A35821: ImpAdCallFPR4  = IIf(, , )
  loc_A35826: FLdRfVar var_E8
  loc_A35829: CStrVarTmp
  loc_A3582A: FStStr BuscaUltimoPeriodoLibreDeuda
  loc_A3582D: FFree1Str var_98
  loc_A35830: FFreeVar var_A8 = "": var_B8 = "": var_D8 = ""
  loc_A3583B: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_ctacte;"
  loc_A3583E: LitStr " CREATE TEMPORARY TABLE tmp_ctacte"
  loc_A35841: ConcatStr
  loc_A35842: FStStrNoPop var_98
  loc_A35845: LitStr " SELECT ctacte.CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, DebeCtct, CredCtct, vencimiento.VepeVenc, SUM(DebeCtct)-SUM(CredCtct) as SaldCtct"
  loc_A35848: ConcatStr
  loc_A35849: FStStrNoPop var_EC
  loc_A3584C: LitStr " FROM ctacte "
  loc_A3584F: ConcatStr
  loc_A35850: FStStrNoPop var_F0
  loc_A35853: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = ctacte.PeriInfo"
  loc_A35856: ConcatStr
  loc_A35857: FStStrNoPop var_F4
  loc_A3585A: LitStr " AND concepto.CodiConc = ctacte.CodiConc"
  loc_A3585D: ConcatStr
  loc_A3585E: FStStrNoPop var_F8
  loc_A35861: LitStr " LEFT JOIN vencimiento ON vencimiento.PeriLiqu = ctacte.PeriCtct"
  loc_A35864: ConcatStr
  loc_A35865: FStStrNoPop var_FC
  loc_A35868: LitStr " AND vencimiento.BimeLiqu = ctacte.BimeCtct"
  loc_A3586B: ConcatStr
  loc_A3586C: FStStrNoPop var_100
  loc_A3586F: LitStr " AND vencimiento.CodiOfic = ctacte.CodiOfic"
  loc_A35872: ConcatStr
  loc_A35873: FStStrNoPop var_104
  loc_A35876: LitStr " WHERE ctacte.CodiOfic = "
  loc_A35879: ConcatStr
  loc_A3587A: FStStrNoPop var_108
  loc_A3587D: FLdI2 CodiOfic
  loc_A35880: CStrUI1
  loc_A35882: FStStrNoPop var_10C
  loc_A35885: ConcatStr
  loc_A35886: FStStrNoPop var_110
  loc_A35889: LitStr " AND CuenCtct = '"
  loc_A3588C: ConcatStr
  loc_A3588D: FStStrNoPop var_114
  loc_A35890: ILdRf var_8C
  loc_A35893: ConcatStr
  loc_A35894: FStStrNoPop var_118
  loc_A35897: LitStr "'"
  loc_A3589A: ConcatStr
  loc_A3589B: FStStrNoPop var_11C
  loc_A3589E: ILdRf BuscaUltimoPeriodoLibreDeuda
  loc_A358A1: ConcatStr
  loc_A358A2: FStStrNoPop var_120
  loc_A358A5: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, NumeCtct"
  loc_A358A8: ConcatStr
  loc_A358A9: FStStrNoPop var_124
  loc_A358AC: LitStr " HAVING SaldCtct <= 0;"
  loc_A358AF: ConcatStr
  loc_A358B0: FStStrNoPop var_128
  loc_A358B3: Call EjecutarRsCls2(from_stack_1v)
  loc_A358B8: FFreeStr var_98 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_A358DD: LitStr " SELECT * FROM tmp_ctacte"
  loc_A358E0: LitStr " ORDER BY CodiOfic, CuenCtct, PeriCtct desc, BimeCtct desc limit 1"
  loc_A358E3: ConcatStr
  loc_A358E4: FStStrNoPop var_98
  loc_A358E7: Call EjecutarRsCls2(from_stack_1v)
  loc_A358EC: FFree1Str var_98
  loc_A358EF: FLdRfVar var_12C
  loc_A358F2: FLdPr Me
  loc_A358F5: MemLdPr global_64
  loc_A358F8:  = Me.RecordCount
  loc_A358FD: ILdRf var_12C
  loc_A35900: LitI4 0
  loc_A35905: GtI4
  loc_A35906: BranchF loc_A35992
  loc_A35909: FLdRfVar var_134
  loc_A3590C: LitVarStr var_A8, "VepeVenc"
  loc_A35911: PopAdLdVar
  loc_A35912: FLdRfVar var_130
  loc_A35915: FLdPr Me
  loc_A35918: MemLdPr global_64
  loc_A3591B:  = Me.Fields
  loc_A35920: FLdPr var_130
  loc_A35923: from_stack_2 = Me.Item(from_stack_1)
  loc_A35928: FLdZeroAd var_134
  loc_A3592B: CVarAd
  loc_A3592F: ImpAdCallI2 IsNull()
  loc_A35934: FStI2 var_16E
  loc_A35937: FLdRfVar var_13C
  loc_A3593A: LitVarStr var_C8, "VepeVenc"
  loc_A3593F: PopAdLdVar
  loc_A35940: FLdRfVar var_138
  loc_A35943: FLdPr Me
  loc_A35946: MemLdPr global_64
  loc_A35949:  = Me.Fields
  loc_A3594E: FLdPr var_138
  loc_A35951: from_stack_2 = Me.Item(from_stack_1)
  loc_A35956: FLdZeroAd var_13C
  loc_A35959: CVarAd
  loc_A3595D: LitVarStr var_15C, vbNullString
  loc_A35962: FStVarCopyObj var_D8
  loc_A35965: FLdRfVar var_D8
  loc_A35968: FLdI2 var_16E
  loc_A3596B: CVarBoolI2 var_14C
  loc_A3596F: FLdRfVar var_16C
  loc_A35972: ImpAdCallFPR4  = IIf(, , )
  loc_A35977: FLdRfVar var_16C
  loc_A3597A: CStrVarTmp
  loc_A3597B: FStStr var_88
  loc_A3597E: FFreeAd var_130 = ""
  loc_A35985: FFreeVar var_B8 = "": var_14C = "": var_D8 = "": var_E8 = ""
  loc_A35992: ExitProcCbHresult
End Function

Public Function BuscaDeudaPorComercio(CucuPers) 'A87E04
  'Data Table: 4E07A8
  loc_A87A2C: ILdRf CucuPers
  loc_A87A2F: FStStrCopy var_90
  loc_A87A32: LitStr "SELECT CodiCome FROM comercio WHERE CucuCome = '"
  loc_A87A35: ILdRf var_90
  loc_A87A38: ConcatStr
  loc_A87A39: FStStrNoPop BuscaDeudaPorComercio
  loc_A87A3C: LitStr "' ORDER BY CodiCome"
  loc_A87A3F: ConcatStr
  loc_A87A40: FStStrNoPop var_98
  loc_A87A43: Call EjecutarRsCls(from_stack_1v)
  loc_A87A48: FFreeStr BuscaDeudaPorComercio = ""
  loc_A87A4F: FLdRfVar var_9C
  loc_A87A52: FLdPr Me
  loc_A87A55: MemLdPr global_56
  loc_A87A58:  = Me.RecordCount
  loc_A87A5D: ILdRf var_9C
  loc_A87A60: LitI4 0
  loc_A87A65: GtI4
  loc_A87A66: BranchF loc_A87DF8
  loc_A87A69: LitI2_Byte 0
  loc_A87A6B: PopTmpLdAd2 var_14A
  loc_A87A6E: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A87A73: FStFPR8 var_1F8
  loc_A87A76: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, DebeCtct, CredCtct FROM ctacte "
  loc_A87A79: LitStr " WHERE CodiOfic = "
  loc_A87A7C: ConcatStr
  loc_A87A7D: FStStrNoPop BuscaDeudaPorComercio
  loc_A87A80: LitI2_Byte 2
  loc_A87A82: CStrUI1
  loc_A87A84: FStStrNoPop var_98
  loc_A87A87: ConcatStr
  loc_A87A88: FStStrNoPop var_A0
  loc_A87A8B: LitStr " AND CuenCtct = '"
  loc_A87A8E: ConcatStr
  loc_A87A8F: CVarStr var_D8
  loc_A87A92: FLdRfVar var_C8
  loc_A87A95: FLdRfVar var_B8
  loc_A87A98: LitVarStr var_B4, "CodiCome"
  loc_A87A9D: PopAdLdVar
  loc_A87A9E: FLdRfVar var_A4
  loc_A87AA1: FLdPr Me
  loc_A87AA4: MemLdPr global_56
  loc_A87AA7:  = Me.Fields
  loc_A87AAC: FLdPr var_A4
  loc_A87AAF: from_stack_2 = Me.Item(from_stack_1)
  loc_A87AB4: FLdPr var_B8
  loc_A87AB7:  = Me.Value
  loc_A87ABC: FLdRfVar var_C8
  loc_A87ABF: ConcatVar var_E8
  loc_A87AC3: LitVarStr var_F8, "'"
  loc_A87AC8: ConcatVar var_108
  loc_A87ACC: LitVarStr var_118, " AND MoviCtct = 1 "
  loc_A87AD1: ConcatVar var_128
  loc_A87AD5: LitVarStr var_138, " AND FeveCtct < '"
  loc_A87ADA: ConcatVar var_148
  loc_A87ADE: LitI4 1
  loc_A87AE3: LitI4 1
  loc_A87AE8: LitVarStr var_17C, "yyyy-mm-dd"
  loc_A87AED: FStVarCopyObj var_18C
  loc_A87AF0: FLdRfVar var_18C
  loc_A87AF3: FLdFPR8 var_1F8
  loc_A87AF6: CVarDate var_16C
  loc_A87AFA: ImpAdCallI2 Format$(, )
  loc_A87AFF: CVarStr var_19C
  loc_A87B02: ConcatVar var_1AC
  loc_A87B06: LitVarStr var_1BC, "'"
  loc_A87B0B: ConcatVar var_1CC
  loc_A87B0F: LitVarStr var_1DC, " ORDER BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_A87B14: ConcatVar var_1EC
  loc_A87B18: CStrVarVal var_1F0
  loc_A87B1C: Call EjecutarRsCls(from_stack_1v)
  loc_A87B21: FFreeStr BuscaDeudaPorComercio = "": var_98 = "": var_A0 = ""
  loc_A87B2C: FFreeAd var_A4 = ""
  loc_A87B33: FFreeVar var_D8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_16C = "": var_18C = "": var_148 = "": var_19C = "": var_1AC = "": var_1CC = ""
  loc_A87B4E: FLdRfVar var_9C
  loc_A87B51: FLdPr Me
  loc_A87B54: MemLdPr global_56
  loc_A87B57:  = Me.RecordCount
  loc_A87B5C: ILdRf var_9C
  loc_A87B5F: LitI4 0
  loc_A87B64: GtI4
  loc_A87B65: BranchF loc_A87DEF
  loc_A87B68: FLdPr Me
  loc_A87B6B: MemLdPr global_56
  loc_A87B6E: Me.MoveFirst
  loc_A87B73: FLdRfVar var_14A
  loc_A87B76: FLdPr Me
  loc_A87B79: MemLdPr global_56
  loc_A87B7C:  = Me.EOF
  loc_A87B81: FLdI2 var_14A
  loc_A87B84: NotI4
  loc_A87B85: BranchF loc_A87DEC
  loc_A87B88: LitStr "SELECT DebeCtct, CredCtct FROM ctacte "
  loc_A87B8B: LitStr " WHERE CodiOfic = "
  loc_A87B8E: ConcatStr
  loc_A87B8F: CVarStr var_D8
  loc_A87B92: FLdRfVar var_C8
  loc_A87B95: FLdRfVar var_B8
  loc_A87B98: LitVarStr var_B4, "CodiOfic"
  loc_A87B9D: PopAdLdVar
  loc_A87B9E: FLdRfVar var_A4
  loc_A87BA1: FLdPr Me
  loc_A87BA4: MemLdPr global_56
  loc_A87BA7:  = Me.Fields
  loc_A87BAC: FLdPr var_A4
  loc_A87BAF: from_stack_2 = Me.Item(from_stack_1)
  loc_A87BB4: FLdPr var_B8
  loc_A87BB7:  = Me.Value
  loc_A87BBC: FLdRfVar var_C8
  loc_A87BBF: ConcatVar var_E8
  loc_A87BC3: LitVarStr var_F8, " AND CuenCtct = '"
  loc_A87BC8: ConcatVar var_108
  loc_A87BCC: FLdRfVar var_128
  loc_A87BCF: FLdRfVar var_200
  loc_A87BD2: LitVarStr var_118, "CuenCtct"
  loc_A87BD7: PopAdLdVar
  loc_A87BD8: FLdRfVar var_1FC
  loc_A87BDB: FLdPr Me
  loc_A87BDE: MemLdPr global_56
  loc_A87BE1:  = Me.Fields
  loc_A87BE6: FLdPr var_1FC
  loc_A87BE9: from_stack_2 = Me.Item(from_stack_1)
  loc_A87BEE: FLdPr var_200
  loc_A87BF1:  = Me.Value
  loc_A87BF6: FLdRfVar var_128
  loc_A87BF9: ConcatVar var_148
  loc_A87BFD: LitVarStr var_138, "'"
  loc_A87C02: ConcatVar var_16C
  loc_A87C06: LitVarStr var_15C, " AND PeriCtct = "
  loc_A87C0B: ConcatVar var_18C
  loc_A87C0F: FLdRfVar var_19C
  loc_A87C12: FLdRfVar var_208
  loc_A87C15: LitVarStr var_17C, "PeriCtct"
  loc_A87C1A: PopAdLdVar
  loc_A87C1B: FLdRfVar var_204
  loc_A87C1E: FLdPr Me
  loc_A87C21: MemLdPr global_56
  loc_A87C24:  = Me.Fields
  loc_A87C29: FLdPr var_204
  loc_A87C2C: from_stack_2 = Me.Item(from_stack_1)
  loc_A87C31: FLdPr var_208
  loc_A87C34:  = Me.Value
  loc_A87C39: FLdRfVar var_19C
  loc_A87C3C: ConcatVar var_1AC
  loc_A87C40: LitVarStr var_1BC, " AND BimeCtct = "
  loc_A87C45: ConcatVar var_1CC
  loc_A87C49: FLdRfVar var_1EC
  loc_A87C4C: FLdRfVar var_210
  loc_A87C4F: LitVarStr var_1DC, "BimeCtct"
  loc_A87C54: PopAdLdVar
  loc_A87C55: FLdRfVar var_20C
  loc_A87C58: FLdPr Me
  loc_A87C5B: MemLdPr global_56
  loc_A87C5E:  = Me.Fields
  loc_A87C63: FLdPr var_20C
  loc_A87C66: from_stack_2 = Me.Item(from_stack_1)
  loc_A87C6B: FLdPr var_210
  loc_A87C6E:  = Me.Value
  loc_A87C73: FLdRfVar var_1EC
  loc_A87C76: ConcatVar var_220
  loc_A87C7A: LitVarStr var_230, " AND NumeCtct = "
  loc_A87C7F: ConcatVar var_240
  loc_A87C83: FLdRfVar var_268
  loc_A87C86: FLdRfVar var_258
  loc_A87C89: LitVarStr var_254, "NumeCtct"
  loc_A87C8E: PopAdLdVar
  loc_A87C8F: FLdRfVar var_244
  loc_A87C92: FLdPr Me
  loc_A87C95: MemLdPr global_56
  loc_A87C98:  = Me.Fields
  loc_A87C9D: FLdPr var_244
  loc_A87CA0: from_stack_2 = Me.Item(from_stack_1)
  loc_A87CA5: FLdPr var_258
  loc_A87CA8:  = Me.Value
  loc_A87CAD: FLdRfVar var_268
  loc_A87CB0: ConcatVar var_278
  loc_A87CB4: LitVarStr var_288, " ORDER BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_A87CB9: ConcatVar var_298
  loc_A87CBD: CStrVarVal BuscaDeudaPorComercio
  loc_A87CC1: Call EjecutarRsCls2(from_stack_1v)
  loc_A87CC6: FFree1Str BuscaDeudaPorComercio
  loc_A87CC9: FFreeAd var_A4 = "": var_B8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = "": var_244 = ""
  loc_A87CE0: FFreeVar var_D8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_16C = "": var_18C = "": var_19C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_220 = "": var_240 = "": var_268 = "": var_278 = ""
  loc_A87D05: FLdRfVar var_9C
  loc_A87D08: FLdPr Me
  loc_A87D0B: MemLdPr global_64
  loc_A87D0E:  = Me.RecordCount
  loc_A87D13: ILdRf var_9C
  loc_A87D16: LitI4 0
  loc_A87D1B: GtI4
  loc_A87D1C: BranchF loc_A87DDE
  loc_A87D1F: FLdPr Me
  loc_A87D22: MemLdPr global_64
  loc_A87D25: Me.MoveFirst
  loc_A87D2A: FLdRfVar var_14A
  loc_A87D2D: FLdPr Me
  loc_A87D30: MemLdPr global_64
  loc_A87D33:  = Me.EOF
  loc_A87D38: FLdI2 var_14A
  loc_A87D3B: NotI4
  loc_A87D3C: BranchF loc_A87DDE
  loc_A87D3F: FLdRfVar var_C8
  loc_A87D42: FLdRfVar var_B8
  loc_A87D45: LitVarStr var_B4, "DebeCtct"
  loc_A87D4A: PopAdLdVar
  loc_A87D4B: FLdRfVar var_A4
  loc_A87D4E: FLdPr Me
  loc_A87D51: MemLdPr global_64
  loc_A87D54:  = Me.Fields
  loc_A87D59: FLdPr var_A4
  loc_A87D5C: from_stack_2 = Me.Item(from_stack_1)
  loc_A87D61: FLdPr var_B8
  loc_A87D64:  = Me.Value
  loc_A87D69: FLdRfVar var_D8
  loc_A87D6C: FLdRfVar var_200
  loc_A87D6F: LitVarStr var_F8, "CredCtct"
  loc_A87D74: PopAdLdVar
  loc_A87D75: FLdRfVar var_1FC
  loc_A87D78: FLdPr Me
  loc_A87D7B: MemLdPr global_64
  loc_A87D7E:  = Me.Fields
  loc_A87D83: FLdPr var_1FC
  loc_A87D86: from_stack_2 = Me.Item(from_stack_1)
  loc_A87D8B: FLdPr var_200
  loc_A87D8E:  = Me.Value
  loc_A87D93: LitI4 2
  loc_A87D98: FLdFPR8 var_8C
  loc_A87D9B: FLdRfVar var_C8
  loc_A87D9E: FnCDblVar
  loc_A87DA0: AddR8
  loc_A87DA1: FLdRfVar var_D8
  loc_A87DA4: FnCDblVar
  loc_A87DA6: SubR4
  loc_A87DA7: CVarR8
  loc_A87DAB: FLdRfVar var_108
  loc_A87DAE: ImpAdCallFPR4  = Round(, )
  loc_A87DB3: FLdRfVar var_108
  loc_A87DB6: CR4Var
  loc_A87DB7: FStFPR8 var_8C
  loc_A87DBA: FFreeAd var_A4 = "": var_B8 = "": var_1FC = ""
  loc_A87DC5: FFreeVar var_C8 = "": var_D8 = "": var_E8 = ""
  loc_A87DD0: FLdPr Me
  loc_A87DD3: MemLdPr global_64
  loc_A87DD6: Me.MoveNext
  loc_A87DDB: Branch loc_A87D2A
  loc_A87DDE: FLdPr Me
  loc_A87DE1: MemLdPr global_56
  loc_A87DE4: Me.MoveNext
  loc_A87DE9: Branch loc_A87B73
  loc_A87DEC: Branch loc_A87DF5
  loc_A87DEF: LitI2_Byte 0
  loc_A87DF1: CR8I2
  loc_A87DF2: FStFPR8 var_8C
  loc_A87DF5: Branch loc_A87DFE
  loc_A87DF8: LitI2_Byte 0
  loc_A87DFA: CR8I2
  loc_A87DFB: FStFPR8 var_8C
  loc_A87DFE: ExitProcCbHresult
End Function

Public Sub BorraEmisionMasiva(PeriBole, NumeBole, CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct) 'A75558
  'Data Table: 4E07A8
  loc_A752AC: ILdRf CuenCtct
  loc_A752AF: FStStrCopy var_88
  loc_A752B2: LitStr " DELETE FROM boleto WHERE PeriBole = "
  loc_A752B5: FLdI2 PeriBole
  loc_A752B8: CStrUI1
  loc_A752BA: FStStrNoPop var_8C
  loc_A752BD: ConcatStr
  loc_A752BE: FStStrNoPop var_90
  loc_A752C1: LitStr " AND NumeBole = "
  loc_A752C4: ConcatStr
  loc_A752C5: FStStrNoPop var_94
  loc_A752C8: ILdRf NumeBole
  loc_A752CB: CStrI4
  loc_A752CD: FStStrNoPop var_98
  loc_A752D0: ConcatStr
  loc_A752D1: FStStrNoPop var_9C
  loc_A752D4: LitStr " AND CodiOfic = "
  loc_A752D7: ConcatStr
  loc_A752D8: FStStrNoPop var_A0
  loc_A752DB: FLdUI1
  loc_A752DF: CStrI2
  loc_A752E1: FStStrNoPop var_A4
  loc_A752E4: ConcatStr
  loc_A752E5: FStStrNoPop var_A8
  loc_A752E8: LitStr " AND CuenCtct = '"
  loc_A752EB: ConcatStr
  loc_A752EC: FStStrNoPop var_AC
  loc_A752EF: ILdRf var_88
  loc_A752F2: ConcatStr
  loc_A752F3: FStStrNoPop var_B0
  loc_A752F6: LitStr "'; "
  loc_A752F9: ConcatStr
  loc_A752FA: FStStrNoPop var_B4
  loc_A752FD: LitStr " DELETE FROM detabole WHERE PeriBole = "
  loc_A75300: ConcatStr
  loc_A75301: FStStrNoPop var_B8
  loc_A75304: FLdI2 PeriBole
  loc_A75307: CStrUI1
  loc_A75309: FStStrNoPop var_BC
  loc_A7530C: ConcatStr
  loc_A7530D: FStStrNoPop var_C0
  loc_A75310: LitStr " AND NumeBole = "
  loc_A75313: ConcatStr
  loc_A75314: FStStrNoPop var_C4
  loc_A75317: ILdRf NumeBole
  loc_A7531A: CStrI4
  loc_A7531C: FStStrNoPop var_C8
  loc_A7531F: ConcatStr
  loc_A75320: FStStrNoPop var_CC
  loc_A75323: LitStr "; "
  loc_A75326: ConcatStr
  loc_A75327: FStStrNoPop var_D0
  loc_A7532A: LitStr " DELETE FROM ctacte WHERE CodiOfic = "
  loc_A7532D: ConcatStr
  loc_A7532E: FStStrNoPop var_D4
  loc_A75331: FLdUI1
  loc_A75335: CStrI2
  loc_A75337: FStStrNoPop var_D8
  loc_A7533A: ConcatStr
  loc_A7533B: FStStrNoPop var_DC
  loc_A7533E: LitStr " AND CuenCtct = '"
  loc_A75341: ConcatStr
  loc_A75342: FStStrNoPop var_E0
  loc_A75345: ILdRf var_88
  loc_A75348: ConcatStr
  loc_A75349: FStStrNoPop var_E4
  loc_A7534C: LitStr "' AND PeriCtct = "
  loc_A7534F: ConcatStr
  loc_A75350: FStStrNoPop var_E8
  loc_A75353: FLdI2 PeriCtct
  loc_A75356: CStrUI1
  loc_A75358: FStStrNoPop var_EC
  loc_A7535B: ConcatStr
  loc_A7535C: FStStrNoPop var_F0
  loc_A7535F: LitStr " AND BimeCtct = "
  loc_A75362: ConcatStr
  loc_A75363: FStStrNoPop var_F4
  loc_A75366: FLdUI1
  loc_A7536A: CStrI2
  loc_A7536C: FStStrNoPop var_F8
  loc_A7536F: ConcatStr
  loc_A75370: FStStrNoPop var_FC
  loc_A75373: LitStr " AND NumeCtct = "
  loc_A75376: ConcatStr
  loc_A75377: FStStrNoPop var_100
  loc_A7537A: ILdRf NumeCtct
  loc_A7537D: CStrI4
  loc_A7537F: FStStrNoPop var_104
  loc_A75382: ConcatStr
  loc_A75383: FStStrNoPop var_108
  loc_A75386: LitStr " AND MoviCtct = "
  loc_A75389: ConcatStr
  loc_A7538A: FStStrNoPop var_10C
  loc_A7538D: FLdI2 MoviCtct
  loc_A75390: CStrUI1
  loc_A75392: FStStrNoPop var_110
  loc_A75395: ConcatStr
  loc_A75396: FStStrNoPop var_114
  loc_A75399: LitStr "; "
  loc_A7539C: ConcatStr
  loc_A7539D: FStStrNoPop var_118
  loc_A753A0: LitStr " DELETE FROM boledeta WHERE PeriBole = "
  loc_A753A3: ConcatStr
  loc_A753A4: FStStrNoPop var_11C
  loc_A753A7: FLdI2 PeriBole
  loc_A753AA: CStrUI1
  loc_A753AC: FStStrNoPop var_120
  loc_A753AF: ConcatStr
  loc_A753B0: FStStrNoPop var_124
  loc_A753B3: LitStr " AND NumeBole = "
  loc_A753B6: ConcatStr
  loc_A753B7: FStStrNoPop var_128
  loc_A753BA: ILdRf NumeBole
  loc_A753BD: CStrI4
  loc_A753BF: FStStrNoPop var_12C
  loc_A753C2: ConcatStr
  loc_A753C3: FStStrNoPop var_130
  loc_A753C6: LitStr "; "
  loc_A753C9: ConcatStr
  loc_A753CA: FStStrNoPop var_134
  loc_A753CD: LitStr " DELETE FROM ctactedeta WHERE CodiOfic = "
  loc_A753D0: ConcatStr
  loc_A753D1: FStStrNoPop var_138
  loc_A753D4: FLdUI1
  loc_A753D8: CStrI2
  loc_A753DA: FStStrNoPop var_13C
  loc_A753DD: ConcatStr
  loc_A753DE: FStStrNoPop var_140
  loc_A753E1: LitStr " AND CuenCtct = '"
  loc_A753E4: ConcatStr
  loc_A753E5: FStStrNoPop var_144
  loc_A753E8: ILdRf var_88
  loc_A753EB: ConcatStr
  loc_A753EC: FStStrNoPop var_148
  loc_A753EF: LitStr "' AND PeriCtct = "
  loc_A753F2: ConcatStr
  loc_A753F3: FStStrNoPop var_14C
  loc_A753F6: FLdI2 PeriCtct
  loc_A753F9: CStrUI1
  loc_A753FB: FStStrNoPop var_150
  loc_A753FE: ConcatStr
  loc_A753FF: FStStrNoPop var_154
  loc_A75402: LitStr " AND BimeCtct = "
  loc_A75405: ConcatStr
  loc_A75406: FStStrNoPop var_158
  loc_A75409: FLdUI1
  loc_A7540D: CStrI2
  loc_A7540F: FStStrNoPop var_15C
  loc_A75412: ConcatStr
  loc_A75413: FStStrNoPop var_160
  loc_A75416: LitStr " AND NumeCtct = "
  loc_A75419: ConcatStr
  loc_A7541A: FStStrNoPop var_164
  loc_A7541D: ILdRf NumeCtct
  loc_A75420: CStrI4
  loc_A75422: FStStrNoPop var_168
  loc_A75425: ConcatStr
  loc_A75426: FStStrNoPop var_16C
  loc_A75429: LitStr " AND MoviCtct = "
  loc_A7542C: ConcatStr
  loc_A7542D: FStStrNoPop var_170
  loc_A75430: FLdI2 MoviCtct
  loc_A75433: CStrUI1
  loc_A75435: FStStrNoPop var_174
  loc_A75438: ConcatStr
  loc_A75439: FStStrNoPop var_178
  loc_A7543C: LitStr "; "
  loc_A7543F: ConcatStr
  loc_A75440: FStStrNoPop var_17C
  loc_A75443: LitStr " DELETE FROM creditos WHERE CodiOfic = "
  loc_A75446: ConcatStr
  loc_A75447: FStStrNoPop var_180
  loc_A7544A: FLdUI1
  loc_A7544E: CStrI2
  loc_A75450: FStStrNoPop var_184
  loc_A75453: ConcatStr
  loc_A75454: FStStrNoPop var_188
  loc_A75457: LitStr " AND CuenCtct = '"
  loc_A7545A: ConcatStr
  loc_A7545B: FStStrNoPop var_18C
  loc_A7545E: ILdRf var_88
  loc_A75461: ConcatStr
  loc_A75462: FStStrNoPop var_190
  loc_A75465: LitStr "' AND PeriCtct = "
  loc_A75468: ConcatStr
  loc_A75469: FStStrNoPop var_194
  loc_A7546C: FLdI2 PeriCtct
  loc_A7546F: CStrUI1
  loc_A75471: FStStrNoPop var_198
  loc_A75474: ConcatStr
  loc_A75475: FStStrNoPop var_19C
  loc_A75478: LitStr " AND BimeCtct = "
  loc_A7547B: ConcatStr
  loc_A7547C: FStStrNoPop var_1A0
  loc_A7547F: FLdUI1
  loc_A75483: CStrI2
  loc_A75485: FStStrNoPop var_1A4
  loc_A75488: ConcatStr
  loc_A75489: FStStrNoPop var_1A8
  loc_A7548C: LitStr " AND NumeCtct = "
  loc_A7548F: ConcatStr
  loc_A75490: FStStrNoPop var_1AC
  loc_A75493: ILdRf NumeCtct
  loc_A75496: CStrI4
  loc_A75498: FStStrNoPop var_1B0
  loc_A7549B: ConcatStr
  loc_A7549C: FStStrNoPop var_1B4
  loc_A7549F: LitStr " AND MoviCtct = "
  loc_A754A2: ConcatStr
  loc_A754A3: FStStrNoPop var_1B8
  loc_A754A6: FLdI2 MoviCtct
  loc_A754A9: CStrUI1
  loc_A754AB: FStStrNoPop var_1BC
  loc_A754AE: ConcatStr
  loc_A754AF: FStStrNoPop var_1C0
  loc_A754B2: Call EjecutarRsCls(from_stack_1v)
  loc_A754B7: FFreeStr var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_A75556: ExitProcHresult
End Sub

Public Sub ProcesoModificacionConcepto750(iCodiOfic, lCuenCtct, iPeriCtct, iBimeCtct, lNumeCtct, iMoviCtct) '9D6760
  'Data Table: 4E07A8
  loc_9D66A8: ILdRf lCuenCtct
  loc_9D66AB: FStStrCopy var_88
  loc_9D66AE: LitStr "UPDATE ctacte SET NumeCtct = "
  loc_9D66B1: ILdRf lNumeCtct
  loc_9D66B4: LitI4 1
  loc_9D66B9: AddI4
  loc_9D66BA: CStrI4
  loc_9D66BC: FStStrNoPop var_8C
  loc_9D66BF: ConcatStr
  loc_9D66C0: FStStrNoPop var_90
  loc_9D66C3: LitStr ", MoviCtct = 1 WHERE CodiOfic = "
  loc_9D66C6: ConcatStr
  loc_9D66C7: FStStrNoPop var_94
  loc_9D66CA: FLdUI1
  loc_9D66CE: CStrI2
  loc_9D66D0: FStStrNoPop var_98
  loc_9D66D3: ConcatStr
  loc_9D66D4: FStStrNoPop var_9C
  loc_9D66D7: LitStr " AND CuenCtct = '"
  loc_9D66DA: ConcatStr
  loc_9D66DB: FStStrNoPop var_A0
  loc_9D66DE: ILdRf var_88
  loc_9D66E1: ConcatStr
  loc_9D66E2: FStStrNoPop var_A4
  loc_9D66E5: LitStr "' AND PeriCtct = "
  loc_9D66E8: ConcatStr
  loc_9D66E9: FStStrNoPop var_A8
  loc_9D66EC: FLdI2 iPeriCtct
  loc_9D66EF: CStrUI1
  loc_9D66F1: FStStrNoPop var_AC
  loc_9D66F4: ConcatStr
  loc_9D66F5: FStStrNoPop var_B0
  loc_9D66F8: LitStr " AND BimeCtct = "
  loc_9D66FB: ConcatStr
  loc_9D66FC: FStStrNoPop var_B4
  loc_9D66FF: FLdI2 iBimeCtct
  loc_9D6702: CStrUI1
  loc_9D6704: FStStrNoPop var_B8
  loc_9D6707: ConcatStr
  loc_9D6708: FStStrNoPop var_BC
  loc_9D670B: LitStr " AND NumeCtct = "
  loc_9D670E: ConcatStr
  loc_9D670F: FStStrNoPop var_C0
  loc_9D6712: ILdRf lNumeCtct
  loc_9D6715: CStrI4
  loc_9D6717: FStStrNoPop var_C4
  loc_9D671A: ConcatStr
  loc_9D671B: FStStrNoPop var_C8
  loc_9D671E: LitStr " AND MoviCtct = "
  loc_9D6721: ConcatStr
  loc_9D6722: FStStrNoPop var_CC
  loc_9D6725: FLdI2 iMoviCtct
  loc_9D6728: CStrUI1
  loc_9D672A: FStStrNoPop var_D0
  loc_9D672D: ConcatStr
  loc_9D672E: FStStrNoPop var_D4
  loc_9D6731: Call EjecutarRsCls(from_stack_1v)
  loc_9D6736: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_9D675F: ExitProcHresult
End Sub

Public Sub CreaTemporalDeuda(CodiOfic, CuenCtct, FeveCtct) 'A9E480
  'Data Table: 4E07A8
  loc_A9E03C: ILdRf CuenCtct
  loc_A9E03F: FStStrCopy var_88
  loc_A9E042: ILdRf FeveCtct
  loc_A9E045: FStStrCopy var_8C
  loc_A9E048: LitStr "SELECT @PorcInte := ifnull(max(PorcInte),0) as PorcInte FROM interes;"
  loc_A9E04B: LitStr " DROP TEMPORARY TABLE IF EXISTS tmpctacte;"
  loc_A9E04E: ConcatStr
  loc_A9E04F: FStStrNoPop var_90
  loc_A9E052: LitStr " CREATE TEMPORARY TABLE tmpctacte"
  loc_A9E055: ConcatStr
  loc_A9E056: FStStrNoPop var_94
  loc_A9E059: LitStr " SELECT (sum(DebeCtct)-sum(CredCtct)) as SaldCtct,"
  loc_A9E05C: ConcatStr
  loc_A9E05D: FStStrNoPop var_98
  loc_A9E060: LitStr " if(((sum(DebeCtct)-sum(CredCtct))>0)and('"
  loc_A9E063: ConcatStr
  loc_A9E064: CVarStr var_E8
  loc_A9E067: LitI4 1
  loc_A9E06C: LitI4 1
  loc_A9E071: LitVarStr var_B8, "yyyy-mm-dd"
  loc_A9E076: FStVarCopyObj var_C8
  loc_A9E079: FLdRfVar var_C8
  loc_A9E07C: FLdRfVar var_8C
  loc_A9E07F: CVarRef
  loc_A9E084: FLdRfVar var_D8
  loc_A9E087: ImpAdCallFPR4  = Format(, )
  loc_A9E08C: FLdRfVar var_D8
  loc_A9E08F: ConcatVar var_F8
  loc_A9E093: LitVarStr var_108, "'>FeveCtCt), "
  loc_A9E098: ConcatVar var_118
  loc_A9E09C: LitVarStr var_128, " ROUND((DATEDIFF('"
  loc_A9E0A1: ConcatVar var_138
  loc_A9E0A5: LitI4 1
  loc_A9E0AA: LitI4 1
  loc_A9E0AF: LitVarStr var_158, "yyyy-mm-dd"
  loc_A9E0B4: FStVarCopyObj var_168
  loc_A9E0B7: FLdRfVar var_168
  loc_A9E0BA: FLdRfVar var_8C
  loc_A9E0BD: CVarRef
  loc_A9E0C2: FLdRfVar var_178
  loc_A9E0C5: ImpAdCallFPR4  = Format(, )
  loc_A9E0CA: FLdRfVar var_178
  loc_A9E0CD: ConcatVar var_188
  loc_A9E0D1: LitVarStr var_198, "',FeveCtct)*@PorcInte/3000)*(sum(DebeCtct)-sum(CredCtct)),2),0) as RecaCtct,"
  loc_A9E0D6: ConcatVar var_1A8
  loc_A9E0DA: LitVarStr var_1B8, " CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct FROM ctacte"
  loc_A9E0DF: ConcatVar var_1C8
  loc_A9E0E3: LitVarStr var_1D8, " WHERE CodiOfic = "
  loc_A9E0E8: ConcatVar var_1E8
  loc_A9E0EC: FLdUI1
  loc_A9E0F0: CVarUI1
  loc_A9E0F4: ConcatVar var_208
  loc_A9E0F8: LitVarStr var_218, " AND CuenCtct = '"
  loc_A9E0FD: ConcatVar var_228
  loc_A9E101: ILdRf var_88
  loc_A9E104: CVarStr var_238
  loc_A9E107: ConcatVar var_248
  loc_A9E10B: LitVarStr var_258, "' AND FeveCtct >= '1000-01-01'"
  loc_A9E110: ConcatVar var_268
  loc_A9E114: LitVarStr var_278, " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct"
  loc_A9E119: ConcatVar var_288
  loc_A9E11D: LitVarStr var_298, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct;"
  loc_A9E122: ConcatVar var_2A8
  loc_A9E126: LitVarStr var_2B8, " DROP TEMPORARY TABLE IF EXISTS tmp_ctacte;"
  loc_A9E12B: ConcatVar var_2C8
  loc_A9E12F: LitVarStr var_2D8, " CREATE TEMPORARY TABLE tmp_ctacte"
  loc_A9E134: ConcatVar var_2E8
  loc_A9E138: LitVarStr var_2F8, " SELECT ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.NumeCtct, ctacte.MoviCtct, ctacte.CodiTili, ctacte.NumeLiqu, ctacte.PeriBole,"
  loc_A9E13D: ConcatVar var_308
  loc_A9E141: LitVarStr var_318, " ctacte.NumeBole, ctacte.BimeCtct, ctacte.FealCtct, ctacte.FeveCtct, ctacte.FeenAcpa, ctacte.NumeAcpa, ctacte.PeriInfo, ctacte.CodiConc,"
  loc_A9E146: ConcatVar var_328
  loc_A9E14A: LitVarStr var_338, " ctacte.CodiFapa, ctacte.CuotDefa, ctacte.NumeApre, ctacte.CodiTimo, ctacte.ExpeCtct, ctacte.CompCtct, ctacte.DetaCtct, ctacte.DebeCtct,"
  loc_A9E14F: ConcatVar var_348
  loc_A9E153: LitVarStr var_358, " ctacte.CredCtct, ctacte.AltaUsua, 'No' as SeleCtct,"
  loc_A9E158: ConcatVar var_368
  loc_A9E15C: LitVarStr var_378, " if(ctacte.MoviCtct=1,tmpctacte.RecaCtct,0) as RecaCtct, "
  loc_A9E161: ConcatVar var_388
  loc_A9E165: LitVarStr var_398, " if(ctacte.MoviCtct=1,tmpctacte.SaldCtct,0) as SaldCtct FROM ctacte "
  loc_A9E16A: ConcatVar var_3A8
  loc_A9E16E: LitVarStr var_3B8, " INNER JOIN tmpctacte ON tmpctacte.codiofic = ctacte.CodiOfic"
  loc_A9E173: ConcatVar var_3C8
  loc_A9E177: LitVarStr var_3D8, " AND tmpctacte.CuenCtct = ctacte.CuenCtct"
  loc_A9E17C: ConcatVar var_3E8
  loc_A9E180: LitVarStr var_3F8, " AND tmpctacte.PeriCtct = ctacte.PeriCtct"
  loc_A9E185: ConcatVar var_408
  loc_A9E189: LitVarStr var_418, " AND tmpctacte.BimeCtct = ctacte.BimeCtct"
  loc_A9E18E: ConcatVar var_428
  loc_A9E192: LitVarStr var_438, " AND tmpctacte.NumeCtct = ctacte.NumeCtct"
  loc_A9E197: ConcatVar var_448
  loc_A9E19B: LitVarStr var_458, " WHERE tmpctacte.SaldCtct > 0 ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct;"
  loc_A9E1A0: ConcatVar var_468
  loc_A9E1A4: CStrVarVal var_46C
  loc_A9E1A8: Call EjecutarRsCls(from_stack_1v)
  loc_A9E1AD: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_A9E1B8: FFreeVar var_448 = "": var_468 = "": var_C8 = "": var_E8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_168 = "": var_138 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_288 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_308 = "": var_328 = "": var_348 = "": var_368 = "": var_388 = "": var_3A8 = "": var_3C8 = "": var_3E8 = "": var_408 = ""
  loc_A9E1FB: LitStr "SELECT EstaFapa FROM tmp_ctacte "
  loc_A9E1FE: LitStr " INNER JOIN facipago ON facipago.CodiFapa = tmp_ctacte.CodiFapa"
  loc_A9E201: ConcatStr
  loc_A9E202: FStStrNoPop var_90
  loc_A9E205: LitStr " WHERE tmp_ctacte.CodIFapa > 0 AND facipago.NovaFapa = 0 GROUP BY tmp_ctacte.CodiFapa"
  loc_A9E208: ConcatStr
  loc_A9E209: FStStrNoPop var_94
  loc_A9E20C: Call EjecutarRsCls1(from_stack_1v)
  loc_A9E211: FFreeStr var_90 = ""
  loc_A9E218: FLdRfVar var_470
  loc_A9E21B: FLdPr Me
  loc_A9E21E: MemLdPr global_60
  loc_A9E221:  = Me.RecordCount
  loc_A9E226: ILdRf var_470
  loc_A9E229: LitI4 0
  loc_A9E22E: GtI4
  loc_A9E22F: BranchF loc_A9E2F1
  loc_A9E232: FLdPr Me
  loc_A9E235: MemLdPr global_60
  loc_A9E238: Me.MoveFirst
  loc_A9E23D: FLdRfVar var_472
  loc_A9E240: FLdPr Me
  loc_A9E243: MemLdPr global_60
  loc_A9E246:  = Me.EOF
  loc_A9E24B: FLdI2 var_472
  loc_A9E24E: NotI4
  loc_A9E24F: BranchF loc_A9E2F1
  loc_A9E252: FLdRfVar var_C8
  loc_A9E255: FLdRfVar var_47C
  loc_A9E258: LitVarStr var_A8, "EstaFapa"
  loc_A9E25D: PopAdLdVar
  loc_A9E25E: FLdRfVar var_478
  loc_A9E261: FLdPr Me
  loc_A9E264: MemLdPr global_60
  loc_A9E267:  = Me.Fields
  loc_A9E26C: FLdPr var_478
  loc_A9E26F: from_stack_2 = Me.Item(from_stack_1)
  loc_A9E274: FLdPr var_47C
  loc_A9E277:  = Me.Value
  loc_A9E27C: FLdRfVar var_C8
  loc_A9E27F: LitVarStr var_B8, "Activa"
  loc_A9E284: HardType
  loc_A9E285: NeVarBool
  loc_A9E287: FFreeAd var_478 = ""
  loc_A9E28E: FFree1Var var_C8 = ""
  loc_A9E291: BranchF loc_A9E2BD
  loc_A9E294: LitStr " DELETE tmp_ctacte"
  loc_A9E297: LitStr " FROM tmp_ctacte"
  loc_A9E29A: ConcatStr
  loc_A9E29B: FStStrNoPop var_90
  loc_A9E29E: LitStr " INNER JOIN facipago ON facipago.CodiFapa = tmp_ctacte.CodiFapa"
  loc_A9E2A1: ConcatStr
  loc_A9E2A2: FStStrNoPop var_94
  loc_A9E2A5: LitStr " WHERE facipago.NovaFapa = 0 AND CodiTimo = 1;"
  loc_A9E2A8: ConcatStr
  loc_A9E2A9: FStStrNoPop var_98
  loc_A9E2AC: Call EjecutarRsCls(from_stack_1v)
  loc_A9E2B1: FFreeStr var_90 = "": var_94 = ""
  loc_A9E2BA: Branch loc_A9E2E3
  loc_A9E2BD: LitStr " DELETE tmp_ctacte"
  loc_A9E2C0: LitStr " FROM tmp_ctacte"
  loc_A9E2C3: ConcatStr
  loc_A9E2C4: FStStrNoPop var_90
  loc_A9E2C7: LitStr " INNER JOIN facipago ON facipago.CodiFapa = tmp_ctacte.CodiFapa"
  loc_A9E2CA: ConcatStr
  loc_A9E2CB: FStStrNoPop var_94
  loc_A9E2CE: LitStr " WHERE facipago.NovaFapa = 0;"
  loc_A9E2D1: ConcatStr
  loc_A9E2D2: FStStrNoPop var_98
  loc_A9E2D5: Call EjecutarRsCls(from_stack_1v)
  loc_A9E2DA: FFreeStr var_90 = "": var_94 = ""
  loc_A9E2E3: FLdPr Me
  loc_A9E2E6: MemLdPr global_60
  loc_A9E2E9: Me.MoveNext
  loc_A9E2EE: Branch loc_A9E23D
  loc_A9E2F1: LitStr "SELECT * FROM facipago "
  loc_A9E2F4: LitStr " INNER JOIN detafapa ON detafapa.CodiFapa = facipago.CodiFapa"
  loc_A9E2F7: ConcatStr
  loc_A9E2F8: FStStrNoPop var_90
  loc_A9E2FB: LitStr " WHERE facipago.CodiOfic = "
  loc_A9E2FE: ConcatStr
  loc_A9E2FF: FStStrNoPop var_94
  loc_A9E302: FLdUI1
  loc_A9E306: CStrI2
  loc_A9E308: FStStrNoPop var_98
  loc_A9E30B: ConcatStr
  loc_A9E30C: FStStrNoPop var_46C
  loc_A9E30F: LitStr " AND facipago.CuenCtct = '"
  loc_A9E312: ConcatStr
  loc_A9E313: FStStrNoPop var_480
  loc_A9E316: ILdRf var_88
  loc_A9E319: ConcatStr
  loc_A9E31A: FStStrNoPop var_484
  loc_A9E31D: LitStr "' AND facipago.EstaFapa = 'Activa'"
  loc_A9E320: ConcatStr
  loc_A9E321: FStStrNoPop var_488
  loc_A9E324: LitStr " AND detafapa.FepaDefa IS NULL;"
  loc_A9E327: ConcatStr
  loc_A9E328: FStStrNoPop var_48C
  loc_A9E32B: Call EjecutarRsCls(from_stack_1v)
  loc_A9E330: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_46C = "": var_480 = "": var_484 = "": var_488 = ""
  loc_A9E343: FLdRfVar var_470
  loc_A9E346: FLdPr Me
  loc_A9E349: MemLdPr global_56
  loc_A9E34C:  = Me.RecordCount
  loc_A9E351: ILdRf var_470
  loc_A9E354: LitI4 0
  loc_A9E359: GtI4
  loc_A9E35A: BranchF loc_A9E47F
  loc_A9E35D: LitStr " INSERT INTO tmp_ctacte(CodiOfic,CuenCtct,PeriCtct,NumeCtct,MoviCtct,PeriBole,NumeBole,BimeCtct,FealCtct,FeveCtct,FeenAcpa,NumeAcpa,PeriInfo,CodiConc,CodiFapa,CuotDefa,NumeApre,CodiTimo,ExpeCtct,CompCtct,DetaCtct,DebeCtct,CredCtct,AltaUsua,SeleCtct,SaldCtct,RecaCtct)"
  loc_A9E360: LitStr " SELECT facipago.CodiOfic, facipago.CuenCtct, 2099 PeriCtct, facipago.CodiFapa NumeCtct, 1 MoviCtct,"
  loc_A9E363: ConcatStr
  loc_A9E364: FStStrNoPop var_90
  loc_A9E367: LitStr " 0 PeriBole, 0 NumeBole, CuotDefa BimeCtct, FealFapa FealCtct, FeveDefa FeveCtct, Null FeenAcpa, 0 NumeAcpa,"
  loc_A9E36A: ConcatStr
  loc_A9E36B: FStStrNoPop var_94
  loc_A9E36E: LitStr " PeriInfo, ConcPago CodiConc, facipago.CodiFapa, detafapa.CuotDefa CuotDefa, 0 NumeApre, 1 CodiTimo, concat('Cuota: ',CuotDefa,'/',CacuFapa) ExpeCtct, '' CompCtct, '' DetaCtct,"
  loc_A9E371: ConcatStr
  loc_A9E372: FStStrNoPop var_98
  loc_A9E375: LitStr " SUM(TotaDefa) DebeCtct, 0 CredCtct, facipago.AltaUsua CodiUsua, 'No' SeleCtct, TotaDefa SaldCtct,"
  loc_A9E378: ConcatStr
  loc_A9E379: FStStrNoPop var_46C
  loc_A9E37C: LitStr " if((TotaDefa>0)and('"
  loc_A9E37F: ConcatStr
  loc_A9E380: CVarStr var_E8
  loc_A9E383: LitI4 1
  loc_A9E388: LitI4 1
  loc_A9E38D: LitVarStr var_B8, "yyyy-mm-dd"
  loc_A9E392: FStVarCopyObj var_C8
  loc_A9E395: FLdRfVar var_C8
  loc_A9E398: FLdRfVar var_8C
  loc_A9E39B: CVarRef
  loc_A9E3A0: FLdRfVar var_D8
  loc_A9E3A3: ImpAdCallFPR4  = Format(, )
  loc_A9E3A8: FLdRfVar var_D8
  loc_A9E3AB: ConcatVar var_F8
  loc_A9E3AF: LitVarStr var_108, "'>FeveDefa),"
  loc_A9E3B4: ConcatVar var_118
  loc_A9E3B8: LitVarStr var_128, " ROUND((DATEDIFF('"
  loc_A9E3BD: ConcatVar var_138
  loc_A9E3C1: LitI4 1
  loc_A9E3C6: LitI4 1
  loc_A9E3CB: LitVarStr var_158, "yyyy-mm-dd"
  loc_A9E3D0: FStVarCopyObj var_168
  loc_A9E3D3: FLdRfVar var_168
  loc_A9E3D6: FLdRfVar var_8C
  loc_A9E3D9: CVarRef
  loc_A9E3DE: FLdRfVar var_178
  loc_A9E3E1: ImpAdCallFPR4  = Format(, )
  loc_A9E3E6: FLdRfVar var_178
  loc_A9E3E9: ConcatVar var_188
  loc_A9E3ED: LitVarStr var_198, "',FeveDefa)*@PorcInte/3000)*TotaDefa,2),0) as RecaCtct"
  loc_A9E3F2: ConcatVar var_1A8
  loc_A9E3F6: LitVarStr var_1B8, " FROM facipago"
  loc_A9E3FB: ConcatVar var_1C8
  loc_A9E3FF: LitVarStr var_1D8, " INNER JOIN detafapa ON detafapa.CodiFapa = facipago.CodiFapa"
  loc_A9E404: ConcatVar var_1E8
  loc_A9E408: LitVarStr var_1F8, " WHERE facipago.CodiOfic = "
  loc_A9E40D: ConcatVar var_208
  loc_A9E411: FLdUI1
  loc_A9E415: CVarUI1
  loc_A9E419: ConcatVar var_228
  loc_A9E41D: LitVarStr var_238, " AND facipago.CuenCtct = '"
  loc_A9E422: ConcatVar var_248
  loc_A9E426: ILdRf var_88
  loc_A9E429: CVarStr var_258
  loc_A9E42C: ConcatVar var_268
  loc_A9E430: LitVarStr var_278, "' AND facipago.EstaFapa = 'Activa'"
  loc_A9E435: ConcatVar var_288
  loc_A9E439: LitVarStr var_298, " AND detafapa.FepaDefa IS NULL GROUP BY detafapa.CodiFapa, detafapa.CuotDefa;"
  loc_A9E43E: ConcatVar var_2A8
  loc_A9E442: CStrVarVal var_480
  loc_A9E446: Call EjecutarRsCls(from_stack_1v)
  loc_A9E44B: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_46C = ""
  loc_A9E458: FFreeVar var_C8 = "": var_E8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_168 = "": var_138 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_288 = ""
  loc_A9E47F: ExitProcHresult
End Sub

Public Sub CreaTemporalHistoCtaCte(CodiOfic, CuenCtct, FeveCtct) 'A847B4
  'Data Table: 4E07A8
  loc_A84428: ILdRf CuenCtct
  loc_A8442B: FStStrCopy var_88
  loc_A8442E: ILdRf FeveCtct
  loc_A84431: FStStrCopy var_8C
  loc_A84434: LitStr "SELECT @PorcInte := ifnull(max(PorcInte),0) as PorcInte FROM interes;"
  loc_A84437: LitStr " DROP TEMPORARY TABLE IF EXISTS tmpctacte;"
  loc_A8443A: ConcatStr
  loc_A8443B: FStStrNoPop var_90
  loc_A8443E: LitStr " CREATE TEMPORARY TABLE tmpctacte"
  loc_A84441: ConcatStr
  loc_A84442: FStStrNoPop var_94
  loc_A84445: LitStr " SELECT (sum(DebeCtct)-sum(CredCtct)) as SaldCtct,"
  loc_A84448: ConcatStr
  loc_A84449: FStStrNoPop var_98
  loc_A8444C: LitStr " if(((sum(DebeCtct)-sum(CredCtct))>0)and('"
  loc_A8444F: ConcatStr
  loc_A84450: CVarStr var_E8
  loc_A84453: LitI4 1
  loc_A84458: LitI4 1
  loc_A8445D: LitVarStr var_B8, "yyyy-mm-dd"
  loc_A84462: FStVarCopyObj var_C8
  loc_A84465: FLdRfVar var_C8
  loc_A84468: FLdRfVar var_8C
  loc_A8446B: CVarRef
  loc_A84470: FLdRfVar var_D8
  loc_A84473: ImpAdCallFPR4  = Format(, )
  loc_A84478: FLdRfVar var_D8
  loc_A8447B: ConcatVar var_F8
  loc_A8447F: LitVarStr var_108, "'>FeveCtCt), "
  loc_A84484: ConcatVar var_118
  loc_A84488: LitVarStr var_128, " ROUND((DATEDIFF('"
  loc_A8448D: ConcatVar var_138
  loc_A84491: LitI4 1
  loc_A84496: LitI4 1
  loc_A8449B: LitVarStr var_158, "yyyy-mm-dd"
  loc_A844A0: FStVarCopyObj var_168
  loc_A844A3: FLdRfVar var_168
  loc_A844A6: FLdRfVar var_8C
  loc_A844A9: CVarRef
  loc_A844AE: FLdRfVar var_178
  loc_A844B1: ImpAdCallFPR4  = Format(, )
  loc_A844B6: FLdRfVar var_178
  loc_A844B9: ConcatVar var_188
  loc_A844BD: LitVarStr var_198, "',FeveCtct)*@PorcInte/3000)*(sum(DebeCtct)-sum(CredCtct)),2),0) as RecaCtct,"
  loc_A844C2: ConcatVar var_1A8
  loc_A844C6: LitVarStr var_1B8, " CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct FROM ctacte"
  loc_A844CB: ConcatVar var_1C8
  loc_A844CF: LitVarStr var_1D8, " WHERE CodiOfic = "
  loc_A844D4: ConcatVar var_1E8
  loc_A844D8: FLdUI1
  loc_A844DC: CVarUI1
  loc_A844E0: ConcatVar var_208
  loc_A844E4: LitVarStr var_218, " AND CuenCtct = '"
  loc_A844E9: ConcatVar var_228
  loc_A844ED: ILdRf var_88
  loc_A844F0: CVarStr var_238
  loc_A844F3: ConcatVar var_248
  loc_A844F7: LitVarStr var_258, "' AND FeveCtct >= '1000-01-01'"
  loc_A844FC: ConcatVar var_268
  loc_A84500: LitVarStr var_278, " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct;"
  loc_A84505: ConcatVar var_288
  loc_A84509: LitVarStr var_298, " DROP TEMPORARY TABLE IF EXISTS tmp_ctacte;"
  loc_A8450E: ConcatVar var_2A8
  loc_A84512: LitVarStr var_2B8, " CREATE TEMPORARY TABLE tmp_ctacte"
  loc_A84517: ConcatVar var_2C8
  loc_A8451B: LitVarStr var_2D8, " SELECT ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.NumeCtct, ctacte.MoviCtct, ctacte.CodiTili, ctacte.NumeLiqu, ctacte.PeriBole,"
  loc_A84520: ConcatVar var_2E8
  loc_A84524: LitVarStr var_2F8, " ctacte.NumeBole, ctacte.BimeCtct, ctacte.FealCtct, ctacte.FeveCtct, ctacte.FeenAcpa, ctacte.NumeAcpa, ctacte.PeriInfo, ctacte.CodiConc,"
  loc_A84529: ConcatVar var_308
  loc_A8452D: LitVarStr var_318, " ctacte.CodiFapa, ctacte.CuotDefa, ctacte.NumeApre, ctacte.CodiTimo, ctacte.ExpeCtct, ctacte.CompCtct, ctacte.DetaCtct, ctacte.DebeCtct,"
  loc_A84532: ConcatVar var_328
  loc_A84536: LitVarStr var_338, " ctacte.CredCtct, ctacte.AltaUsua, 'No' as SeleCtct, if(ctacte.MoviCtct=1,tmpctacte.RecaCtct,0) as RecaCtct, if(ctacte.MoviCtct=1,tmpctacte.SaldCtct,0) as SaldCtct FROM ctacte "
  loc_A8453B: ConcatVar var_348
  loc_A8453F: LitVarStr var_358, " INNER JOIN tmpctacte ON tmpctacte.codiofic = ctacte.CodiOfic"
  loc_A84544: ConcatVar var_368
  loc_A84548: LitVarStr var_378, " AND tmpctacte.CuenCtct = ctacte.CuenCtct "
  loc_A8454D: ConcatVar var_388
  loc_A84551: LitVarStr var_398, " AND tmpctacte.PeriCtct = ctacte.PeriCtct "
  loc_A84556: ConcatVar var_3A8
  loc_A8455A: LitVarStr var_3B8, " AND tmpctacte.BimeCtct = ctacte.BimeCtct "
  loc_A8455F: ConcatVar var_3C8
  loc_A84563: LitVarStr var_3D8, " AND tmpctacte.NumeCtct = ctacte.NumeCtct"
  loc_A84568: ConcatVar var_3E8
  loc_A8456C: LitVarStr var_3F8, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct;"
  loc_A84571: ConcatVar var_408
  loc_A84575: LitVarStr var_418, " INSERT INTO tmp_ctacte SELECT CodiOfic, CuenCtct, PeriCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole,"
  loc_A8457A: ConcatVar var_428
  loc_A8457E: LitVarStr var_438, " NumeBole, BimeCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua, 'No' as SeleCtct, 0 as RecaCtct, 0 as SaldCtct FROM recahisto.histoctacte "
  loc_A84583: ConcatVar var_448
  loc_A84587: LitVarStr var_458, " WHERE CodiOfic = "
  loc_A8458C: ConcatVar var_468
  loc_A84590: FLdUI1
  loc_A84594: CVarUI1
  loc_A84598: ConcatVar var_488
  loc_A8459C: LitVarStr var_498, " AND CuenCtct = '"
  loc_A845A1: ConcatVar var_4A8
  loc_A845A5: ILdRf var_88
  loc_A845A8: CVarStr var_4B8
  loc_A845AB: ConcatVar var_4C8
  loc_A845AF: LitVarStr var_4D8, "'"
  loc_A845B4: ConcatVar var_4E8
  loc_A845B8: LitVarStr var_4F8, " ORDER BY histoctacte.CodiOfic, histoctacte.CuenCtct, histoctacte.PeriCtct, histoctacte.BimeCtct,histoctacte.NumeCtct, histoctacte.MoviCtct;"
  loc_A845BD: ConcatVar var_508
  loc_A845C1: CStrVarVal var_50C
  loc_A845C5: Call EjecutarRsCls(from_stack_1v)
  loc_A845CA: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_A845D5: FFreeVar var_448 = "": var_468 = "": var_488 = "": var_4A8 = "": var_4C8 = "": var_4E8 = "": var_508 = "": var_C8 = "": var_E8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_168 = "": var_138 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_288 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_308 = "": var_328 = "": var_348 = "": var_368 = "": var_388 = "": var_3A8 = "": var_3C8 = "": var_3E8 = "": var_408 = ""
  loc_A84622: LitStr "SELECT * FROM facipago "
  loc_A84625: LitStr " INNER JOIN detafapa ON detafapa.CodiFapa = facipago.CodiFapa"
  loc_A84628: ConcatStr
  loc_A84629: FStStrNoPop var_90
  loc_A8462C: LitStr " WHERE facipago.CodiOfic = "
  loc_A8462F: ConcatStr
  loc_A84630: FStStrNoPop var_94
  loc_A84633: FLdUI1
  loc_A84637: CStrI2
  loc_A84639: FStStrNoPop var_98
  loc_A8463C: ConcatStr
  loc_A8463D: FStStrNoPop var_50C
  loc_A84640: LitStr " AND facipago.CuenCtct = '"
  loc_A84643: ConcatStr
  loc_A84644: FStStrNoPop var_510
  loc_A84647: ILdRf var_88
  loc_A8464A: ConcatStr
  loc_A8464B: FStStrNoPop var_514
  loc_A8464E: LitStr "' AND facipago.EstaFapa = 'Activa' ANd facipago.NovaFapa = 1"
  loc_A84651: ConcatStr
  loc_A84652: FStStrNoPop var_518
  loc_A84655: LitStr " AND detafapa.FepaDefa IS NULL;"
  loc_A84658: ConcatStr
  loc_A84659: FStStrNoPop var_51C
  loc_A8465C: Call EjecutarRsCls(from_stack_1v)
  loc_A84661: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_50C = "": var_510 = "": var_514 = "": var_518 = ""
  loc_A84674: FLdRfVar var_520
  loc_A84677: FLdPr Me
  loc_A8467A: MemLdPr global_56
  loc_A8467D:  = Me.RecordCount
  loc_A84682: ILdRf var_520
  loc_A84685: LitI4 0
  loc_A8468A: GtI4
  loc_A8468B: BranchF loc_A847B0
  loc_A8468E: LitStr " INSERT INTO tmp_ctacte(CodiOfic,CuenCtct,PeriCtct,NumeCtct,MoviCtct,PeriBole,NumeBole,BimeCtct,FealCtct,FeveCtct,FeenAcpa,NumeAcpa,PeriInfo,CodiConc,CodiFapa,CuotDefa,NumeApre,CodiTimo,ExpeCtct,CompCtct,DetaCtct,DebeCtct,CredCtct,AltaUsua,SeleCtct,SaldCtct,RecaCtct)"
  loc_A84691: LitStr " SELECT facipago.CodiOfic, facipago.CuenCtct, year(current_date) PeriCtct, facipago.CodiFapa NumeCtct, 1 MoviCtct,"
  loc_A84694: ConcatStr
  loc_A84695: FStStrNoPop var_90
  loc_A84698: LitStr " 0 PeriBole, 0 NumeBole, CuotDefa BimeCtct, FealFapa FealCtct, FeveDefa FeveCtct, Null FeenAcpa, 0 NumeAcpa,"
  loc_A8469B: ConcatStr
  loc_A8469C: FStStrNoPop var_94
  loc_A8469F: LitStr " PeriInfo, ConcPago CodiConc, facipago.CodiFapa, detafapa.CuotDefa CuotDefa, 0 NumeApre, 1 CodiTimo, concat('Cuota: ',CuotDefa,'/',CacuFapa) ExpeCtct, '' CompCtct, '' DetaCtct,"
  loc_A846A2: ConcatStr
  loc_A846A3: FStStrNoPop var_98
  loc_A846A6: LitStr " SUM(TotaDefa) DebeCtct, 0 CredCtct, facipago.AltaUsua CodiUsua, 'No' SeleCtct, TotaDefa SaldCtct,"
  loc_A846A9: ConcatStr
  loc_A846AA: FStStrNoPop var_50C
  loc_A846AD: LitStr " if((TotaDefa>0)and('"
  loc_A846B0: ConcatStr
  loc_A846B1: CVarStr var_E8
  loc_A846B4: LitI4 1
  loc_A846B9: LitI4 1
  loc_A846BE: LitVarStr var_B8, "yyyy-mm-dd"
  loc_A846C3: FStVarCopyObj var_C8
  loc_A846C6: FLdRfVar var_C8
  loc_A846C9: FLdRfVar var_8C
  loc_A846CC: CVarRef
  loc_A846D1: FLdRfVar var_D8
  loc_A846D4: ImpAdCallFPR4  = Format(, )
  loc_A846D9: FLdRfVar var_D8
  loc_A846DC: ConcatVar var_F8
  loc_A846E0: LitVarStr var_108, "'>FeveDefa),"
  loc_A846E5: ConcatVar var_118
  loc_A846E9: LitVarStr var_128, " ROUND((DATEDIFF('"
  loc_A846EE: ConcatVar var_138
  loc_A846F2: LitI4 1
  loc_A846F7: LitI4 1
  loc_A846FC: LitVarStr var_158, "yyyy-mm-dd"
  loc_A84701: FStVarCopyObj var_168
  loc_A84704: FLdRfVar var_168
  loc_A84707: FLdRfVar var_8C
  loc_A8470A: CVarRef
  loc_A8470F: FLdRfVar var_178
  loc_A84712: ImpAdCallFPR4  = Format(, )
  loc_A84717: FLdRfVar var_178
  loc_A8471A: ConcatVar var_188
  loc_A8471E: LitVarStr var_198, "',FeveDefa)*@PorcInte/3000)*TotaDefa,2),0) as RecaCtct"
  loc_A84723: ConcatVar var_1A8
  loc_A84727: LitVarStr var_1B8, " FROM facipago"
  loc_A8472C: ConcatVar var_1C8
  loc_A84730: LitVarStr var_1D8, " INNER JOIN detafapa ON detafapa.CodiFapa = facipago.CodiFapa"
  loc_A84735: ConcatVar var_1E8
  loc_A84739: LitVarStr var_1F8, " WHERE facipago.CodiOfic = "
  loc_A8473E: ConcatVar var_208
  loc_A84742: FLdUI1
  loc_A84746: CVarUI1
  loc_A8474A: ConcatVar var_228
  loc_A8474E: LitVarStr var_238, " AND facipago.CuenCtct = '"
  loc_A84753: ConcatVar var_248
  loc_A84757: ILdRf var_88
  loc_A8475A: CVarStr var_258
  loc_A8475D: ConcatVar var_268
  loc_A84761: LitVarStr var_278, "' AND facipago.EstaFapa = 'Activa'"
  loc_A84766: ConcatVar var_288
  loc_A8476A: LitVarStr var_298, " AND detafapa.FepaDefa IS NULL GROUP BY detafapa.CuotDefa;"
  loc_A8476F: ConcatVar var_2A8
  loc_A84773: CStrVarVal var_510
  loc_A84777: Call EjecutarRsCls(from_stack_1v)
  loc_A8477C: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_50C = ""
  loc_A84789: FFreeVar var_C8 = "": var_E8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_168 = "": var_138 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_288 = ""
  loc_A847B0: ExitProcHresult
End Sub

Public Function NumeradorCtaCte(iPeriCtct) '9C7B08
  'Data Table: 4E07A8
  loc_9C7A38: LitStr "SELECT PeriCtct, NumeCtct FROM numecta WHERE PeriCtct = "
  loc_9C7A3B: FLdI2 iPeriCtct
  loc_9C7A3E: CStrUI1
  loc_9C7A40: FStStrNoPop var_8C
  loc_9C7A43: ConcatStr
  loc_9C7A44: FStStrNoPop var_90
  loc_9C7A47: LitStr " ORDER BY PeriCtct"
  loc_9C7A4A: ConcatStr
  loc_9C7A4B: FStStrNoPop NumeradorCtaCte
  loc_9C7A4E: Call EjecutarRsCls(from_stack_1v)
  loc_9C7A53: FFreeStr var_8C = "": var_90 = ""
  loc_9C7A5C: FLdRfVar var_98
  loc_9C7A5F: FLdPr Me
  loc_9C7A62: MemLdPr global_56
  loc_9C7A65:  = Me.RecordCount
  loc_9C7A6A: ILdRf var_98
  loc_9C7A6D: LitI4 0
  loc_9C7A72: GtI4
  loc_9C7A73: BranchF loc_9C7AD6
  loc_9C7A76: FLdRfVar var_C0
  loc_9C7A79: FLdRfVar var_B0
  loc_9C7A7C: LitVarStr var_AC, "NumeCtct"
  loc_9C7A81: PopAdLdVar
  loc_9C7A82: FLdRfVar var_9C
  loc_9C7A85: FLdPr Me
  loc_9C7A88: MemLdPr global_56
  loc_9C7A8B:  = Me.Fields
  loc_9C7A90: FLdPr var_9C
  loc_9C7A93: from_stack_2 = Me.Item(from_stack_1)
  loc_9C7A98: FLdPr var_B0
  loc_9C7A9B:  = Me.Value
  loc_9C7AA0: FLdRfVar var_C0
  loc_9C7AA3: FnCLngVar
  loc_9C7AA5: LitI4 1
  loc_9C7AAA: AddI4
  loc_9C7AAB: FStR4 var_88
  loc_9C7AAE: FFreeAd var_9C = ""
  loc_9C7AB5: FFree1Var var_C0 = ""
  loc_9C7AB8: LitStr "UPDATE numecta SET NumeCtct = NumeCtct + 1 WHERE PeriCtct = "
  loc_9C7ABB: FLdI2 iPeriCtct
  loc_9C7ABE: CStrUI1
  loc_9C7AC0: FStStrNoPop var_8C
  loc_9C7AC3: ConcatStr
  loc_9C7AC4: FStStrNoPop var_90
  loc_9C7AC7: Call EjecutarRsCls(from_stack_1v)
  loc_9C7ACC: FFreeStr var_8C = ""
  loc_9C7AD3: Branch loc_9C7B02
  loc_9C7AD6: LitI4 1
  loc_9C7ADB: FStR4 var_88
  loc_9C7ADE: LitStr "INSERT INTO numecta (PeriCtct, NumeCtct) VALUES ("
  loc_9C7AE1: FLdI2 iPeriCtct
  loc_9C7AE4: CStrUI1
  loc_9C7AE6: FStStrNoPop var_8C
  loc_9C7AE9: ConcatStr
  loc_9C7AEA: FStStrNoPop var_90
  loc_9C7AED: LitStr ",1);"
  loc_9C7AF0: ConcatStr
  loc_9C7AF1: FStStrNoPop NumeradorCtaCte
  loc_9C7AF4: Call EjecutarRsCls(from_stack_1v)
  loc_9C7AF9: FFreeStr var_8C = "": var_90 = ""
  loc_9C7B02: ExitProcCbHresult
End Function

Public Sub LimpiaNumeroApremioCtacte(iCodiOfic, lCuenCtct, lNumeApre) '9AEE90
  'Data Table: 4E07A8
  loc_9AEE14: ILdRf lCuenCtct
  loc_9AEE17: FStStrCopy var_88
  loc_9AEE1A: LitStr "UPDATE ctacte SET NumeApre = 0  WHERE CodiOfic = "
  loc_9AEE1D: FLdUI1
  loc_9AEE21: CStrI2
  loc_9AEE23: FStStrNoPop var_8C
  loc_9AEE26: ConcatStr
  loc_9AEE27: FStStrNoPop var_90
  loc_9AEE2A: LitStr " AND CuenCtct = '"
  loc_9AEE2D: ConcatStr
  loc_9AEE2E: FStStrNoPop var_94
  loc_9AEE31: ILdRf var_88
  loc_9AEE34: ConcatStr
  loc_9AEE35: FStStrNoPop var_98
  loc_9AEE38: LitStr "' AND NumeApre = "
  loc_9AEE3B: ConcatStr
  loc_9AEE3C: FStStrNoPop var_9C
  loc_9AEE3F: ILdRf lNumeApre
  loc_9AEE42: CStrI4
  loc_9AEE44: FStStrNoPop var_A0
  loc_9AEE47: ConcatStr
  loc_9AEE48: FStStrNoPop var_A4
  loc_9AEE4B: LitStr "; "
  loc_9AEE4E: ConcatStr
  loc_9AEE4F: FStStrNoPop var_A8
  loc_9AEE52: LitStr "UPDATE apremio SET EstaApre = 'Suspendido' WHERE NumeApre = "
  loc_9AEE55: ConcatStr
  loc_9AEE56: FStStrNoPop var_AC
  loc_9AEE59: ILdRf lNumeApre
  loc_9AEE5C: CStrI4
  loc_9AEE5E: FStStrNoPop var_B0
  loc_9AEE61: ConcatStr
  loc_9AEE62: FStStrNoPop var_B4
  loc_9AEE65: LitStr ";"
  loc_9AEE68: ConcatStr
  loc_9AEE69: FStStrNoPop var_B8
  loc_9AEE6C: Call EjecutarRsCls(from_stack_1v)
  loc_9AEE71: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_9AEE8C: ExitProcHresult
End Sub

Public Sub CreaTemporalCtaCteDeta(CodiOfic, CuenCtct) '9A73B8
  'Data Table: 4E07A8
  loc_9A734C: ILdRf CuenCtct
  loc_9A734F: FStStrCopy var_88
  loc_9A7352: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_ctactedeta;"
  loc_9A7355: LitStr " CREATE TEMPORARY TABLE tmp_ctactedeta "
  loc_9A7358: ConcatStr
  loc_9A7359: FStStrNoPop var_8C
  loc_9A735C: LitStr " SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, PeriOrde, CodiCtde, NumeCtde, MoviCtde, SUM(DebeCtde)-SUM(CredCtde) as SaldCtde"
  loc_9A735F: ConcatStr
  loc_9A7360: FStStrNoPop var_90
  loc_9A7363: LitStr " FROM ctactedeta WHERE CodiOfic = "
  loc_9A7366: ConcatStr
  loc_9A7367: FStStrNoPop var_94
  loc_9A736A: FLdUI1
  loc_9A736E: CStrI2
  loc_9A7370: FStStrNoPop var_98
  loc_9A7373: ConcatStr
  loc_9A7374: FStStrNoPop var_9C
  loc_9A7377: LitStr " AND CuenCtct = '"
  loc_9A737A: ConcatStr
  loc_9A737B: FStStrNoPop var_A0
  loc_9A737E: ILdRf var_88
  loc_9A7381: ConcatStr
  loc_9A7382: FStStrNoPop var_A4
  loc_9A7385: LitStr "'"
  loc_9A7388: ConcatStr
  loc_9A7389: FStStrNoPop var_A8
  loc_9A738C: LitStr " GROUP BY ctactedeta.CodiOfic, ctactedeta.CuenCtct, ctactedeta.PeriCtct, ctactedeta.BimeCtct, ctactedeta.NumeCtct, ctactedeta.MoviCtct, ctactedeta.PeriOrde, ctactedeta.CodiCtde, ctactedeta.NumeCtde"
  loc_9A738F: ConcatStr
  loc_9A7390: FStStrNoPop var_AC
  loc_9A7393: LitStr " ORDER BY ctactedeta.CodiOfic, ctactedeta.CuenCtct, ctactedeta.PeriCtct, ctactedeta.BimeCtct, ctactedeta.NumeCtct, ctactedeta.MoviCtct, ctactedeta.PeriOrde, ctactedeta.CodiCtde, ctactedeta.NumeCtde, ctactedeta.MoviCtde"
  loc_9A7396: ConcatStr
  loc_9A7397: FStStrNoPop var_B0
  loc_9A739A: Call EjecutarRsCls(from_stack_1v)
  loc_9A739F: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_9A73B6: ExitProcHresult
End Sub

Public Sub CreaTemporalFacilidaddePagoParaApremio() '97C294
  'Data Table: 4E07A8
  loc_97C26C: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_ctacteapremio;"
  loc_97C26F: LitStr " CREATE TEMPORARY TABLE tmp_ctacteapremio "
  loc_97C272: ConcatStr
  loc_97C273: FStStrNoPop var_88
  loc_97C276: LitStr " SELECT NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacteboleto WHERE SaldCtct > 0 AND NumeApre <> 0 AND SeleCtct = 'Si'"
  loc_97C279: ConcatStr
  loc_97C27A: FStStrNoPop var_8C
  loc_97C27D: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_97C280: ConcatStr
  loc_97C281: FStStrNoPop var_90
  loc_97C284: Call EjecutarRsCls(from_stack_1v)
  loc_97C289: FFreeStr var_88 = "": var_8C = ""
  loc_97C292: ExitProcHresult
End Sub

Public Function NuevoRegistroNumeCtde(CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, PeriOrde, CodiCtde) 'A2482C
  'Data Table: 4E07A8
  loc_A246D0: ILdRf CuenCtct
  loc_A246D3: FStStrCopy var_8C
  loc_A246D6: LitStr "SELECT NumeCtde FROM ctactedeta "
  loc_A246D9: LitStr " WHERE CodiOfic = "
  loc_A246DC: ConcatStr
  loc_A246DD: FStStrNoPop var_90
  loc_A246E0: FLdUI1
  loc_A246E4: CStrI2
  loc_A246E6: FStStrNoPop NuevoRegistroNumeCtde
  loc_A246E9: ConcatStr
  loc_A246EA: FStStrNoPop var_98
  loc_A246ED: LitStr " AND CuenCtct = '"
  loc_A246F0: ConcatStr
  loc_A246F1: FStStrNoPop var_9C
  loc_A246F4: ILdRf var_8C
  loc_A246F7: ConcatStr
  loc_A246F8: FStStrNoPop var_A0
  loc_A246FB: LitStr "'"
  loc_A246FE: ConcatStr
  loc_A246FF: FStStrNoPop var_A4
  loc_A24702: LitStr " AND PeriCtct = "
  loc_A24705: ConcatStr
  loc_A24706: FStStrNoPop var_A8
  loc_A24709: FLdI2 PeriCtct
  loc_A2470C: CStrUI1
  loc_A2470E: FStStrNoPop var_AC
  loc_A24711: ConcatStr
  loc_A24712: FStStrNoPop var_B0
  loc_A24715: LitStr " AND BimeCtct = "
  loc_A24718: ConcatStr
  loc_A24719: FStStrNoPop var_B4
  loc_A2471C: FLdI2 BimeCtct
  loc_A2471F: CStrUI1
  loc_A24721: FStStrNoPop var_B8
  loc_A24724: ConcatStr
  loc_A24725: FStStrNoPop var_BC
  loc_A24728: LitStr " AND NumeCtct = "
  loc_A2472B: ConcatStr
  loc_A2472C: FStStrNoPop var_C0
  loc_A2472F: ILdRf NumeCtct
  loc_A24732: CStrI4
  loc_A24734: FStStrNoPop var_C4
  loc_A24737: ConcatStr
  loc_A24738: FStStrNoPop var_C8
  loc_A2473B: LitStr " AND MoviCtct = "
  loc_A2473E: ConcatStr
  loc_A2473F: FStStrNoPop var_CC
  loc_A24742: FLdI2 MoviCtct
  loc_A24745: CStrUI1
  loc_A24747: FStStrNoPop var_D0
  loc_A2474A: ConcatStr
  loc_A2474B: FStStrNoPop var_D4
  loc_A2474E: LitStr " AND PeriOrde = "
  loc_A24751: ConcatStr
  loc_A24752: FStStrNoPop var_D8
  loc_A24755: FLdI2 PeriOrde
  loc_A24758: CStrUI1
  loc_A2475A: FStStrNoPop var_DC
  loc_A2475D: ConcatStr
  loc_A2475E: FStStrNoPop var_E0
  loc_A24761: LitStr " AND CodiCtde = "
  loc_A24764: ConcatStr
  loc_A24765: FStStrNoPop var_E4
  loc_A24768: ILdRf CodiCtde
  loc_A2476B: CStrI4
  loc_A2476D: FStStrNoPop var_E8
  loc_A24770: ConcatStr
  loc_A24771: FStStrNoPop var_EC
  loc_A24774: LitStr " ORDER BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, PeriOrde, CodiCtde"
  loc_A24777: ConcatStr
  loc_A24778: FStStrNoPop var_F0
  loc_A2477B: Call EjecutarRsCls(from_stack_1v)
  loc_A24780: FFreeStr var_90 = "": NuevoRegistroNumeCtde = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_A247B5: FLdRfVar var_F4
  loc_A247B8: FLdPr Me
  loc_A247BB: MemLdPr global_56
  loc_A247BE:  = Me.RecordCount
  loc_A247C3: ILdRf var_F4
  loc_A247C6: LitI4 0
  loc_A247CB: GtI4
  loc_A247CC: BranchF loc_A2481E
  loc_A247CF: FLdPr Me
  loc_A247D2: MemLdPr global_56
  loc_A247D5: Me.MoveLast
  loc_A247DA: FLdRfVar var_11C
  loc_A247DD: FLdRfVar var_10C
  loc_A247E0: LitVarStr var_108, "NumeCtde"
  loc_A247E5: PopAdLdVar
  loc_A247E6: FLdRfVar var_F8
  loc_A247E9: FLdPr Me
  loc_A247EC: MemLdPr global_56
  loc_A247EF:  = Me.Fields
  loc_A247F4: FLdPr var_F8
  loc_A247F7: from_stack_2 = Me.Item(from_stack_1)
  loc_A247FC: FLdPr var_10C
  loc_A247FF:  = Me.Value
  loc_A24804: FLdRfVar var_11C
  loc_A24807: FnCByteVar
  loc_A24809: CI2UI1
  loc_A2480B: LitI2_Byte 1
  loc_A2480D: AddI2
  loc_A2480E: FStI2 var_86
  loc_A24811: FFreeAd var_F8 = ""
  loc_A24818: FFree1Var var_11C = ""
  loc_A2481B: Branch loc_A24823
  loc_A2481E: LitI2_Byte 1
  loc_A24820: FStI2 var_86
  loc_A24823: ExitProcCbHresult
End Function

Public Sub CreaIngresodeRentas(sFechInre, iNumeAcpa, sCodiConc, sCodiCuco, iCodiEnre, doTotaDeir) 'A62C58
  'Data Table: 4E07A8
  loc_A62960: ILdRf sFechInre
  loc_A62963: FStStrCopy var_88
  loc_A62966: ILdRf sCodiConc
  loc_A62969: FStStrCopy var_8C
  loc_A6296C: ILdRf sCodiCuco
  loc_A6296F: FStStrCopy var_90
  loc_A62972: LitStr "SELECT FechInre FROM ingrrent WHERE FechInre = "
  loc_A62975: LitI4 1
  loc_A6297A: LitI4 1
  loc_A6297F: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_A62984: FStVarCopyObj var_C0
  loc_A62987: FLdRfVar var_C0
  loc_A6298A: FLdRfVar var_88
  loc_A6298D: CVarRef
  loc_A62992: ImpAdCallI2 Format$(, )
  loc_A62997: FStStrNoPop var_C4
  loc_A6299A: ConcatStr
  loc_A6299B: FStStrNoPop var_C8
  loc_A6299E: LitStr " AND NumeAcpa = "
  loc_A629A1: ConcatStr
  loc_A629A2: FStStrNoPop var_CC
  loc_A629A5: FLdI2 iNumeAcpa
  loc_A629A8: CStrUI1
  loc_A629AA: FStStrNoPop var_D0
  loc_A629AD: ConcatStr
  loc_A629AE: FStStrNoPop var_D4
  loc_A629B1: Call EjecutarRsCls5(from_stack_1v)
  loc_A629B6: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_A629C3: FFree1Var var_C0 = ""
  loc_A629C6: FLdRfVar var_D8
  loc_A629C9: FLdPr Me
  loc_A629CC: MemLdPr global_76
  loc_A629CF:  = Me.RecordCount
  loc_A629D4: ILdRf var_D8
  loc_A629D7: LitI4 0
  loc_A629DC: EqI4
  loc_A629DD: BranchF loc_A62A46
  loc_A629E0: LitStr "INSERT INTO ingrrent (FechInre, NumeAcpa, ActuInre) "
  loc_A629E3: LitStr " VALUES ('"
  loc_A629E6: ConcatStr
  loc_A629E7: FStStrNoPop var_C4
  loc_A629EA: LitI4 1
  loc_A629EF: LitI4 1
  loc_A629F4: LitVarStr var_B0, "yyyy-mm-dd"
  loc_A629F9: FStVarCopyObj var_C0
  loc_A629FC: FLdRfVar var_C0
  loc_A629FF: FLdRfVar var_88
  loc_A62A02: CVarRef
  loc_A62A07: ImpAdCallI2 Format$(, )
  loc_A62A0C: FStStrNoPop var_C8
  loc_A62A0F: ConcatStr
  loc_A62A10: FStStrNoPop var_CC
  loc_A62A13: LitStr "',"
  loc_A62A16: ConcatStr
  loc_A62A17: FStStrNoPop var_D0
  loc_A62A1A: FLdI2 iNumeAcpa
  loc_A62A1D: CStrUI1
  loc_A62A1F: FStStrNoPop var_D4
  loc_A62A22: ConcatStr
  loc_A62A23: FStStrNoPop var_DC
  loc_A62A26: LitStr ",'No')"
  loc_A62A29: ConcatStr
  loc_A62A2A: FStStrNoPop var_E0
  loc_A62A2D: Call EjecutarRsCls(from_stack_1v)
  loc_A62A32: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_DC = ""
  loc_A62A43: FFree1Var var_C0 = ""
  loc_A62A46: LitStr "SELECT FechInre FROM detainre WHERE FechInre = "
  loc_A62A49: LitI4 1
  loc_A62A4E: LitI4 1
  loc_A62A53: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_A62A58: FStVarCopyObj var_C0
  loc_A62A5B: FLdRfVar var_C0
  loc_A62A5E: FLdRfVar var_88
  loc_A62A61: CVarRef
  loc_A62A66: ImpAdCallI2 Format$(, )
  loc_A62A6B: FStStrNoPop var_C4
  loc_A62A6E: ConcatStr
  loc_A62A6F: FStStrNoPop var_C8
  loc_A62A72: LitStr " AND NumeAcpa = "
  loc_A62A75: ConcatStr
  loc_A62A76: FStStrNoPop var_CC
  loc_A62A79: FLdI2 iNumeAcpa
  loc_A62A7C: CStrUI1
  loc_A62A7E: FStStrNoPop var_D0
  loc_A62A81: ConcatStr
  loc_A62A82: FStStrNoPop var_D4
  loc_A62A85: LitStr " AND CodiConc = '"
  loc_A62A88: ConcatStr
  loc_A62A89: FStStrNoPop var_DC
  loc_A62A8C: ILdRf var_8C
  loc_A62A8F: ConcatStr
  loc_A62A90: FStStrNoPop var_E0
  loc_A62A93: LitStr "'"
  loc_A62A96: ConcatStr
  loc_A62A97: FStStrNoPop var_E4
  loc_A62A9A: Call EjecutarRsCls5(from_stack_1v)
  loc_A62A9F: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_DC = "": var_E0 = ""
  loc_A62AB2: FFree1Var var_C0 = ""
  loc_A62AB5: FLdRfVar var_D8
  loc_A62AB8: FLdPr Me
  loc_A62ABB: MemLdPr global_76
  loc_A62ABE:  = Me.RecordCount
  loc_A62AC3: ILdRf var_D8
  loc_A62AC6: LitI4 0
  loc_A62ACB: GtI4
  loc_A62ACC: BranchF loc_A62B79
  loc_A62ACF: LitStr "UPDATE detainre SET TotaDeir =  TotaDeir + "
  loc_A62AD2: LitI4 0
  loc_A62AD7: LitI4 -1
  loc_A62ADC: LitI4 1
  loc_A62AE1: LitStr "."
  loc_A62AE4: LitStr ","
  loc_A62AE7: FLdFPR8 doTotaDeir
  loc_A62AEA: CStrR8
  loc_A62AEC: FStStrNoPop var_C4
  loc_A62AEF: ImpAdCallI2 Replace(, , , , , )
  loc_A62AF4: FStStrNoPop var_C8
  loc_A62AF7: ConcatStr
  loc_A62AF8: FStStrNoPop var_CC
  loc_A62AFB: LitStr " WHERE FechInre = "
  loc_A62AFE: ConcatStr
  loc_A62AFF: FStStrNoPop var_D0
  loc_A62B02: LitI4 1
  loc_A62B07: LitI4 1
  loc_A62B0C: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_A62B11: FStVarCopyObj var_C0
  loc_A62B14: FLdRfVar var_C0
  loc_A62B17: FLdRfVar var_88
  loc_A62B1A: CVarRef
  loc_A62B1F: ImpAdCallI2 Format$(, )
  loc_A62B24: FStStrNoPop var_D4
  loc_A62B27: ConcatStr
  loc_A62B28: FStStrNoPop var_DC
  loc_A62B2B: LitStr " AND NumeAcpa = "
  loc_A62B2E: ConcatStr
  loc_A62B2F: FStStrNoPop var_E0
  loc_A62B32: FLdI2 iNumeAcpa
  loc_A62B35: CStrUI1
  loc_A62B37: FStStrNoPop var_E4
  loc_A62B3A: ConcatStr
  loc_A62B3B: FStStrNoPop var_E8
  loc_A62B3E: LitStr " AND CodiConc = '"
  loc_A62B41: ConcatStr
  loc_A62B42: FStStrNoPop var_EC
  loc_A62B45: ILdRf var_8C
  loc_A62B48: ConcatStr
  loc_A62B49: FStStrNoPop var_F0
  loc_A62B4C: LitStr "'"
  loc_A62B4F: ConcatStr
  loc_A62B50: FStStrNoPop var_F4
  loc_A62B53: Call EjecutarRsCls(from_stack_1v)
  loc_A62B58: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_A62B73: FFree1Var var_C0 = ""
  loc_A62B76: Branch loc_A62C54
  loc_A62B79: LitStr "INSERT INTO detainre (FechInre, NumeAcpa, CodiConc, CodiCuco, CodiEnre, TotaDeir) "
  loc_A62B7C: LitStr " VALUES ("
  loc_A62B7F: ConcatStr
  loc_A62B80: FStStrNoPop var_C4
  loc_A62B83: LitI4 1
  loc_A62B88: LitI4 1
  loc_A62B8D: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_A62B92: FStVarCopyObj var_C0
  loc_A62B95: FLdRfVar var_C0
  loc_A62B98: FLdRfVar var_88
  loc_A62B9B: CVarRef
  loc_A62BA0: ImpAdCallI2 Format$(, )
  loc_A62BA5: FStStrNoPop var_C8
  loc_A62BA8: ConcatStr
  loc_A62BA9: FStStrNoPop var_CC
  loc_A62BAC: LitStr ","
  loc_A62BAF: ConcatStr
  loc_A62BB0: FStStrNoPop var_D0
  loc_A62BB3: FLdI2 iNumeAcpa
  loc_A62BB6: CStrUI1
  loc_A62BB8: FStStrNoPop var_D4
  loc_A62BBB: ConcatStr
  loc_A62BBC: FStStrNoPop var_DC
  loc_A62BBF: LitStr ",'"
  loc_A62BC2: ConcatStr
  loc_A62BC3: FStStrNoPop var_E0
  loc_A62BC6: ILdRf var_8C
  loc_A62BC9: ConcatStr
  loc_A62BCA: FStStrNoPop var_E4
  loc_A62BCD: LitStr "','"
  loc_A62BD0: ConcatStr
  loc_A62BD1: FStStrNoPop var_E8
  loc_A62BD4: ILdRf var_90
  loc_A62BD7: ConcatStr
  loc_A62BD8: FStStrNoPop var_EC
  loc_A62BDB: LitStr "',"
  loc_A62BDE: ConcatStr
  loc_A62BDF: FStStrNoPop var_F0
  loc_A62BE2: FLdI2 iCodiEnre
  loc_A62BE5: CStrUI1
  loc_A62BE7: FStStrNoPop var_F4
  loc_A62BEA: ConcatStr
  loc_A62BEB: FStStrNoPop var_F8
  loc_A62BEE: LitStr ","
  loc_A62BF1: ConcatStr
  loc_A62BF2: FStStrNoPop var_100
  loc_A62BF5: LitI4 0
  loc_A62BFA: LitI4 -1
  loc_A62BFF: LitI4 1
  loc_A62C04: LitStr "."
  loc_A62C07: LitStr ","
  loc_A62C0A: FLdFPR8 doTotaDeir
  loc_A62C0D: CStrR8
  loc_A62C0F: FStStrNoPop var_FC
  loc_A62C12: ImpAdCallI2 Replace(, , , , , )
  loc_A62C17: FStStrNoPop var_104
  loc_A62C1A: ConcatStr
  loc_A62C1B: FStStrNoPop var_108
  loc_A62C1E: LitStr ")"
  loc_A62C21: ConcatStr
  loc_A62C22: FStStrNoPop var_10C
  loc_A62C25: Call EjecutarRsCls(from_stack_1v)
  loc_A62C2A: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_A62C51: FFree1Var var_C0 = ""
  loc_A62C54: ExitProcHresult
End Sub

Public Sub ProcesosVarios() '94033C
  'Data Table: 4E07A8
  loc_940338: ExitProcHresult
  loc_940339: ModI2
End Sub

Public Sub CreaDebitosCtaCteCuotadePlanDePago(lCodiFapa, iCuota, sExpeCtct, sObseCtct, iCuotaCredito) 'BDA7CC
  'Data Table: 4E07A8
  loc_BD9218: ILdRf sExpeCtct
  loc_BD921B: FStStrCopy var_88
  loc_BD921E: ILdRf sObseCtct
  loc_BD9221: FStStrCopy var_8C
  loc_BD9224: LitI2_Byte 0
  loc_BD9226: PopTmpLdAd2 var_9E
  loc_BD9229: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_BD922E: FStFPR8 var_98
  loc_BD9231: LitStr "SELECT * FROM facictacte WHERE CodiFapa = "
  loc_BD9234: ILdRf lCodiFapa
  loc_BD9237: CStrI4
  loc_BD9239: FStStrNoPop var_A4
  loc_BD923C: ConcatStr
  loc_BD923D: FStStrNoPop var_A8
  loc_BD9240: LitStr " AND CuotDefa = "
  loc_BD9243: ConcatStr
  loc_BD9244: FStStrNoPop var_AC
  loc_BD9247: FLdI2 iCuota
  loc_BD924A: CStrUI1
  loc_BD924C: FStStrNoPop var_B0
  loc_BD924F: ConcatStr
  loc_BD9250: FStStrNoPop var_B4
  loc_BD9253: Call EjecutarRsCls2(from_stack_1v)
  loc_BD9258: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_BD9265: FLdRfVar var_B8
  loc_BD9268: FLdPr Me
  loc_BD926B: MemLdPr global_64
  loc_BD926E:  = Me.RecordCount
  loc_BD9273: ILdRf var_B8
  loc_BD9276: LitI4 0
  loc_BD927B: GtI4
  loc_BD927C: BranchF loc_BD9C50
  loc_BD927F: OnErrorGoto loc_BDA7B6
  loc_BD9282: LitStr "START TRANSACTION;"
  loc_BD9285: Call EjecutarRsCls(from_stack_1v)
  loc_BD928A: FLdPr Me
  loc_BD928D: MemLdPr global_64
  loc_BD9290: Me.MoveFirst
  loc_BD9295: FLdRfVar var_9E
  loc_BD9298: FLdPr Me
  loc_BD929B: MemLdPr global_64
  loc_BD929E:  = Me.EOF
  loc_BD92A3: FLdI2 var_9E
  loc_BD92A6: NotI4
  loc_BD92A7: BranchF loc_BD9C50
  loc_BD92AA: LitVarStr var_F0, "SELECT * FROM ctacte WHERE CodiOfic = "
  loc_BD92AF: FLdRfVar var_E0
  loc_BD92B2: FLdRfVar var_D0
  loc_BD92B5: LitVarStr var_CC, "CodiOfic"
  loc_BD92BA: PopAdLdVar
  loc_BD92BB: FLdRfVar var_BC
  loc_BD92BE: FLdPr Me
  loc_BD92C1: MemLdPr global_64
  loc_BD92C4:  = Me.Fields
  loc_BD92C9: FLdPr var_BC
  loc_BD92CC: from_stack_2 = Me.Item(from_stack_1)
  loc_BD92D1: FLdPr var_D0
  loc_BD92D4:  = Me.Value
  loc_BD92D9: FLdRfVar var_E0
  loc_BD92DC: ConcatVar var_100
  loc_BD92E0: LitVarStr var_110, " AND CuenCtct = '"
  loc_BD92E5: ConcatVar var_120
  loc_BD92E9: FLdRfVar var_148
  loc_BD92EC: FLdRfVar var_138
  loc_BD92EF: LitVarStr var_134, "CuenCtct"
  loc_BD92F4: PopAdLdVar
  loc_BD92F5: FLdRfVar var_124
  loc_BD92F8: FLdPr Me
  loc_BD92FB: MemLdPr global_64
  loc_BD92FE:  = Me.Fields
  loc_BD9303: FLdPr var_124
  loc_BD9306: from_stack_2 = Me.Item(from_stack_1)
  loc_BD930B: FLdPr var_138
  loc_BD930E:  = Me.Value
  loc_BD9313: FLdRfVar var_148
  loc_BD9316: ConcatVar var_158
  loc_BD931A: LitVarStr var_168, "'"
  loc_BD931F: ConcatVar var_178
  loc_BD9323: LitVarStr var_188, " AND PeriCtct = "
  loc_BD9328: ConcatVar var_198
  loc_BD932C: FLdRfVar var_1C0
  loc_BD932F: FLdRfVar var_1B0
  loc_BD9332: LitVarStr var_1AC, "PeriCtct"
  loc_BD9337: PopAdLdVar
  loc_BD9338: FLdRfVar var_19C
  loc_BD933B: FLdPr Me
  loc_BD933E: MemLdPr global_64
  loc_BD9341:  = Me.Fields
  loc_BD9346: FLdPr var_19C
  loc_BD9349: from_stack_2 = Me.Item(from_stack_1)
  loc_BD934E: FLdPr var_1B0
  loc_BD9351:  = Me.Value
  loc_BD9356: FLdRfVar var_1C0
  loc_BD9359: ConcatVar var_1D0
  loc_BD935D: LitVarStr var_1E0, " AND BimeCtct = "
  loc_BD9362: ConcatVar var_1F0
  loc_BD9366: FLdRfVar var_218
  loc_BD9369: FLdRfVar var_208
  loc_BD936C: LitVarStr var_204, "BimeCtct"
  loc_BD9371: PopAdLdVar
  loc_BD9372: FLdRfVar var_1F4
  loc_BD9375: FLdPr Me
  loc_BD9378: MemLdPr global_64
  loc_BD937B:  = Me.Fields
  loc_BD9380: FLdPr var_1F4
  loc_BD9383: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9388: FLdPr var_208
  loc_BD938B:  = Me.Value
  loc_BD9390: FLdRfVar var_218
  loc_BD9393: ConcatVar var_228
  loc_BD9397: LitVarStr var_238, " AND NumeCtct = "
  loc_BD939C: ConcatVar var_248
  loc_BD93A0: FLdRfVar var_270
  loc_BD93A3: FLdRfVar var_260
  loc_BD93A6: LitVarStr var_25C, "NumeCtct"
  loc_BD93AB: PopAdLdVar
  loc_BD93AC: FLdRfVar var_24C
  loc_BD93AF: FLdPr Me
  loc_BD93B2: MemLdPr global_64
  loc_BD93B5:  = Me.Fields
  loc_BD93BA: FLdPr var_24C
  loc_BD93BD: from_stack_2 = Me.Item(from_stack_1)
  loc_BD93C2: FLdPr var_260
  loc_BD93C5:  = Me.Value
  loc_BD93CA: FLdRfVar var_270
  loc_BD93CD: ConcatVar var_280
  loc_BD93D1: LitVarStr var_290, " AND MoviCtct = "
  loc_BD93D6: ConcatVar var_2A0
  loc_BD93DA: FLdRfVar var_2C8
  loc_BD93DD: FLdRfVar var_2B8
  loc_BD93E0: LitVarStr var_2B4, "MoviCtct"
  loc_BD93E5: PopAdLdVar
  loc_BD93E6: FLdRfVar var_2A4
  loc_BD93E9: FLdPr Me
  loc_BD93EC: MemLdPr global_64
  loc_BD93EF:  = Me.Fields
  loc_BD93F4: FLdPr var_2A4
  loc_BD93F7: from_stack_2 = Me.Item(from_stack_1)
  loc_BD93FC: FLdPr var_2B8
  loc_BD93FF:  = Me.Value
  loc_BD9404: FLdRfVar var_2C8
  loc_BD9407: ConcatVar var_2D8
  loc_BD940B: CStrVarVal var_A4
  loc_BD940F: Call EjecutarRsCls3(from_stack_1v)
  loc_BD9414: FFree1Str var_A4
  loc_BD9417: FFreeAd var_BC = "": var_D0 = "": var_124 = "": var_138 = "": var_19C = "": var_1B0 = "": var_1F4 = "": var_208 = "": var_24C = "": var_260 = "": var_2A4 = ""
  loc_BD9432: FFreeVar var_E0 = "": var_100 = "": var_120 = "": var_148 = "": var_158 = "": var_178 = "": var_198 = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_218 = "": var_228 = "": var_248 = "": var_270 = "": var_280 = "": var_2A0 = "": var_2C8 = ""
  loc_BD9459: FLdRfVar var_B8
  loc_BD945C: FLdPr Me
  loc_BD945F: MemLdPr global_68
  loc_BD9462:  = Me.RecordCount
  loc_BD9467: ILdRf var_B8
  loc_BD946A: LitI4 0
  loc_BD946F: GtI4
  loc_BD9470: BranchF loc_BD99E5
  loc_BD9473: FLdRfVar var_E0
  loc_BD9476: FLdRfVar var_D0
  loc_BD9479: LitVarStr var_CC, "CodiOfic"
  loc_BD947E: PopAdLdVar
  loc_BD947F: FLdRfVar var_BC
  loc_BD9482: FLdPr Me
  loc_BD9485: MemLdPr global_68
  loc_BD9488:  = Me.Fields
  loc_BD948D: FLdPr var_BC
  loc_BD9490: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9495: FLdPr var_D0
  loc_BD9498:  = Me.Value
  loc_BD949D: FLdRfVar var_100
  loc_BD94A0: FLdRfVar var_138
  loc_BD94A3: LitVarStr var_F0, "CuenCtct"
  loc_BD94A8: PopAdLdVar
  loc_BD94A9: FLdRfVar var_124
  loc_BD94AC: FLdPr Me
  loc_BD94AF: MemLdPr global_68
  loc_BD94B2:  = Me.Fields
  loc_BD94B7: FLdPr var_124
  loc_BD94BA: from_stack_2 = Me.Item(from_stack_1)
  loc_BD94BF: FLdPr var_138
  loc_BD94C2:  = Me.Value
  loc_BD94C7: FLdRfVar var_120
  loc_BD94CA: FLdRfVar var_1B0
  loc_BD94CD: LitVarStr var_110, "PeriCtct"
  loc_BD94D2: PopAdLdVar
  loc_BD94D3: FLdRfVar var_19C
  loc_BD94D6: FLdPr Me
  loc_BD94D9: MemLdPr global_68
  loc_BD94DC:  = Me.Fields
  loc_BD94E1: FLdPr var_19C
  loc_BD94E4: from_stack_2 = Me.Item(from_stack_1)
  loc_BD94E9: FLdPr var_1B0
  loc_BD94EC:  = Me.Value
  loc_BD94F1: FLdRfVar var_148
  loc_BD94F4: FLdRfVar var_208
  loc_BD94F7: LitVarStr var_134, "BimeCtct"
  loc_BD94FC: PopAdLdVar
  loc_BD94FD: FLdRfVar var_1F4
  loc_BD9500: FLdPr Me
  loc_BD9503: MemLdPr global_68
  loc_BD9506:  = Me.Fields
  loc_BD950B: FLdPr var_1F4
  loc_BD950E: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9513: FLdPr var_208
  loc_BD9516:  = Me.Value
  loc_BD951B: FLdRfVar var_158
  loc_BD951E: FLdRfVar var_260
  loc_BD9521: LitVarStr var_168, "NumeCtct"
  loc_BD9526: PopAdLdVar
  loc_BD9527: FLdRfVar var_24C
  loc_BD952A: FLdPr Me
  loc_BD952D: MemLdPr global_68
  loc_BD9530:  = Me.Fields
  loc_BD9535: FLdPr var_24C
  loc_BD9538: from_stack_2 = Me.Item(from_stack_1)
  loc_BD953D: FLdPr var_260
  loc_BD9540:  = Me.Value
  loc_BD9545: FLdRfVar var_9E
  loc_BD9548: FLdRfVar var_158
  loc_BD954B: CI4Var
  loc_BD954D: FLdRfVar var_148
  loc_BD9550: CI2Var
  loc_BD9551: FLdRfVar var_120
  loc_BD9554: CI2Var
  loc_BD9555: FLdRfVar var_100
  loc_BD9558: CStrVarTmp
  loc_BD9559: FStStrNoPop var_A4
  loc_BD955C: FLdRfVar var_E0
  loc_BD955F: CI2Var
  loc_BD9560: from_stack_6v = BuscaMoviCtct(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_BD9565: FLdI2 var_9E
  loc_BD9568: CI4UI1
  loc_BD9569: FStR4 var_90
  loc_BD956C: FFree1Str var_A4
  loc_BD956F: FFreeAd var_BC = "": var_124 = "": var_19C = "": var_1F4 = "": var_24C = "": var_D0 = "": var_138 = "": var_1B0 = "": var_208 = ""
  loc_BD9586: FFreeVar var_E0 = "": var_100 = "": var_120 = "": var_148 = ""
  loc_BD9593: ILdRf var_90
  loc_BD9596: LitI4 1
  loc_BD959B: AddI4
  loc_BD959C: FStR4 var_90
  loc_BD959F: FLdRfVar var_658
  loc_BD95A2: FLdRfVar var_648
  loc_BD95A5: LitVarStr var_644, "CapiFacc"
  loc_BD95AA: PopAdLdVar
  loc_BD95AB: FLdRfVar var_634
  loc_BD95AE: FLdPr Me
  loc_BD95B1: MemLdPr global_64
  loc_BD95B4:  = Me.Fields
  loc_BD95B9: FLdPr var_634
  loc_BD95BC: from_stack_2 = Me.Item(from_stack_1)
  loc_BD95C1: FLdPr var_648
  loc_BD95C4:  = Me.Value
  loc_BD95C9: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_BD95CC: LitStr " VALUES ("
  loc_BD95CF: ConcatStr
  loc_BD95D0: CVarStr var_100
  loc_BD95D3: FLdRfVar var_E0
  loc_BD95D6: FLdRfVar var_D0
  loc_BD95D9: LitVarStr var_CC, "CodiOfic"
  loc_BD95DE: PopAdLdVar
  loc_BD95DF: FLdRfVar var_BC
  loc_BD95E2: FLdPr Me
  loc_BD95E5: MemLdPr global_68
  loc_BD95E8:  = Me.Fields
  loc_BD95ED: FLdPr var_BC
  loc_BD95F0: from_stack_2 = Me.Item(from_stack_1)
  loc_BD95F5: FLdPr var_D0
  loc_BD95F8:  = Me.Value
  loc_BD95FD: FLdRfVar var_E0
  loc_BD9600: ConcatVar var_120
  loc_BD9604: LitVarStr var_F0, ",'"
  loc_BD9609: ConcatVar var_148
  loc_BD960D: FLdRfVar var_158
  loc_BD9610: FLdRfVar var_138
  loc_BD9613: LitVarStr var_110, "CuenCtct"
  loc_BD9618: PopAdLdVar
  loc_BD9619: FLdRfVar var_124
  loc_BD961C: FLdPr Me
  loc_BD961F: MemLdPr global_68
  loc_BD9622:  = Me.Fields
  loc_BD9627: FLdPr var_124
  loc_BD962A: from_stack_2 = Me.Item(from_stack_1)
  loc_BD962F: FLdPr var_138
  loc_BD9632:  = Me.Value
  loc_BD9637: FLdRfVar var_158
  loc_BD963A: ConcatVar var_178
  loc_BD963E: LitVarStr var_134, "',"
  loc_BD9643: ConcatVar var_198
  loc_BD9647: FLdRfVar var_1C0
  loc_BD964A: FLdRfVar var_1B0
  loc_BD964D: LitVarStr var_168, "PeriCtct"
  loc_BD9652: PopAdLdVar
  loc_BD9653: FLdRfVar var_19C
  loc_BD9656: FLdPr Me
  loc_BD9659: MemLdPr global_68
  loc_BD965C:  = Me.Fields
  loc_BD9661: FLdPr var_19C
  loc_BD9664: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9669: FLdPr var_1B0
  loc_BD966C:  = Me.Value
  loc_BD9671: FLdRfVar var_1C0
  loc_BD9674: ConcatVar var_1D0
  loc_BD9678: LitVarStr var_188, ","
  loc_BD967D: ConcatVar var_1F0
  loc_BD9681: FLdRfVar var_218
  loc_BD9684: FLdRfVar var_208
  loc_BD9687: LitVarStr var_1AC, "BimeCtct"
  loc_BD968C: PopAdLdVar
  loc_BD968D: FLdRfVar var_1F4
  loc_BD9690: FLdPr Me
  loc_BD9693: MemLdPr global_68
  loc_BD9696:  = Me.Fields
  loc_BD969B: FLdPr var_1F4
  loc_BD969E: from_stack_2 = Me.Item(from_stack_1)
  loc_BD96A3: FLdPr var_208
  loc_BD96A6:  = Me.Value
  loc_BD96AB: FLdRfVar var_218
  loc_BD96AE: ConcatVar var_228
  loc_BD96B2: LitVarStr var_1E0, ","
  loc_BD96B7: ConcatVar var_248
  loc_BD96BB: FLdRfVar var_270
  loc_BD96BE: FLdRfVar var_260
  loc_BD96C1: LitVarStr var_204, "NumeCtct"
  loc_BD96C6: PopAdLdVar
  loc_BD96C7: FLdRfVar var_24C
  loc_BD96CA: FLdPr Me
  loc_BD96CD: MemLdPr global_68
  loc_BD96D0:  = Me.Fields
  loc_BD96D5: FLdPr var_24C
  loc_BD96D8: from_stack_2 = Me.Item(from_stack_1)
  loc_BD96DD: FLdPr var_260
  loc_BD96E0:  = Me.Value
  loc_BD96E5: FLdRfVar var_270
  loc_BD96E8: ConcatVar var_280
  loc_BD96EC: LitVarStr var_238, ","
  loc_BD96F1: ConcatVar var_2A0
  loc_BD96F5: ILdRf var_90
  loc_BD96F8: CVarI4
  loc_BD96FC: ConcatVar var_2C8
  loc_BD9700: LitVarStr var_290, ",0,0,0,0,'"
  loc_BD9705: ConcatVar var_2D8
  loc_BD9709: FLdRfVar var_2E8
  loc_BD970C: FLdRfVar var_2B8
  loc_BD970F: LitVarStr var_2B4, "TipoCtct"
  loc_BD9714: PopAdLdVar
  loc_BD9715: FLdRfVar var_2A4
  loc_BD9718: FLdPr Me
  loc_BD971B: MemLdPr global_68
  loc_BD971E:  = Me.Fields
  loc_BD9723: FLdPr var_2A4
  loc_BD9726: from_stack_2 = Me.Item(from_stack_1)
  loc_BD972B: FLdPr var_2B8
  loc_BD972E:  = Me.Value
  loc_BD9733: FLdRfVar var_2E8
  loc_BD9736: ConcatVar var_2F8
  loc_BD973A: LitVarStr var_308, "',"
  loc_BD973F: ConcatVar var_318
  loc_BD9743: LitI4 1
  loc_BD9748: LitI4 1
  loc_BD974D: LitVarStr var_338, "'yyyy-mm-dd'"
  loc_BD9752: FStVarCopyObj var_348
  loc_BD9755: FLdRfVar var_348
  loc_BD9758: FLdRfVar var_98
  loc_BD975B: CVarRef
  loc_BD9760: ImpAdCallI2 Format$(, )
  loc_BD9765: CVarStr var_358
  loc_BD9768: ConcatVar var_368
  loc_BD976C: LitVarStr var_378, ","
  loc_BD9771: ConcatVar var_388
  loc_BD9775: LitI4 1
  loc_BD977A: LitI4 1
  loc_BD977F: LitVarStr var_3A8, "'yyyy-mm-dd'"
  loc_BD9784: FStVarCopyObj var_3B8
  loc_BD9787: FLdRfVar var_3B8
  loc_BD978A: FLdRfVar var_98
  loc_BD978D: CVarRef
  loc_BD9792: ImpAdCallI2 Format$(, )
  loc_BD9797: CVarStr var_3C8
  loc_BD979A: ConcatVar var_3D8
  loc_BD979E: LitVarStr var_3E8, ",NUll,0,"
  loc_BD97A3: ConcatVar var_3F8
  loc_BD97A7: FLdRfVar var_420
  loc_BD97AA: FLdRfVar var_410
  loc_BD97AD: LitVarStr var_40C, "PeriInfo"
  loc_BD97B2: PopAdLdVar
  loc_BD97B3: FLdRfVar var_3FC
  loc_BD97B6: FLdPr Me
  loc_BD97B9: MemLdPr global_68
  loc_BD97BC:  = Me.Fields
  loc_BD97C1: FLdPr var_3FC
  loc_BD97C4: from_stack_2 = Me.Item(from_stack_1)
  loc_BD97C9: FLdPr var_410
  loc_BD97CC:  = Me.Value
  loc_BD97D1: FLdRfVar var_420
  loc_BD97D4: ConcatVar var_430
  loc_BD97D8: LitVarStr var_440, ",'"
  loc_BD97DD: ConcatVar var_450
  loc_BD97E1: FLdRfVar var_478
  loc_BD97E4: FLdRfVar var_468
  loc_BD97E7: LitVarStr var_464, "CodiConc"
  loc_BD97EC: PopAdLdVar
  loc_BD97ED: FLdRfVar var_454
  loc_BD97F0: FLdPr Me
  loc_BD97F3: MemLdPr global_68
  loc_BD97F6:  = Me.Fields
  loc_BD97FB: FLdPr var_454
  loc_BD97FE: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9803: FLdPr var_468
  loc_BD9806:  = Me.Value
  loc_BD980B: FLdRfVar var_478
  loc_BD980E: ConcatVar var_488
  loc_BD9812: LitVarStr var_498, "',"
  loc_BD9817: ConcatVar var_4A8
  loc_BD981B: FLdRfVar var_4D0
  loc_BD981E: FLdRfVar var_4C0
  loc_BD9821: LitVarStr var_4BC, "CodiFapa"
  loc_BD9826: PopAdLdVar
  loc_BD9827: FLdRfVar var_4AC
  loc_BD982A: FLdPr Me
  loc_BD982D: MemLdPr global_68
  loc_BD9830:  = Me.Fields
  loc_BD9835: FLdPr var_4AC
  loc_BD9838: from_stack_2 = Me.Item(from_stack_1)
  loc_BD983D: FLdPr var_4C0
  loc_BD9840:  = Me.Value
  loc_BD9845: FLdRfVar var_4D0
  loc_BD9848: ConcatVar var_4E0
  loc_BD984C: LitVarStr var_4F0, ","
  loc_BD9851: ConcatVar var_500
  loc_BD9855: FLdRfVar var_528
  loc_BD9858: FLdRfVar var_518
  loc_BD985B: LitVarStr var_514, "CuotDefa"
  loc_BD9860: PopAdLdVar
  loc_BD9861: FLdRfVar var_504
  loc_BD9864: FLdPr Me
  loc_BD9867: MemLdPr global_64
  loc_BD986A:  = Me.Fields
  loc_BD986F: FLdPr var_504
  loc_BD9872: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9877: FLdPr var_518
  loc_BD987A:  = Me.Value
  loc_BD987F: FLdRfVar var_528
  loc_BD9882: ConcatVar var_538
  loc_BD9886: LitVarStr var_548, ","
  loc_BD988B: ConcatVar var_558
  loc_BD988F: FLdRfVar var_580
  loc_BD9892: FLdRfVar var_570
  loc_BD9895: LitVarStr var_56C, "NumeApre"
  loc_BD989A: PopAdLdVar
  loc_BD989B: FLdRfVar var_55C
  loc_BD989E: FLdPr Me
  loc_BD98A1: MemLdPr global_68
  loc_BD98A4:  = Me.Fields
  loc_BD98A9: FLdPr var_55C
  loc_BD98AC: from_stack_2 = Me.Item(from_stack_1)
  loc_BD98B1: FLdPr var_570
  loc_BD98B4:  = Me.Value
  loc_BD98B9: FLdRfVar var_580
  loc_BD98BC: ConcatVar var_590
  loc_BD98C0: LitVarStr var_5A0, ",10,'"
  loc_BD98C5: ConcatVar var_5B0
  loc_BD98C9: ILdRf var_88
  loc_BD98CC: CVarStr var_5C0
  loc_BD98CF: ConcatVar var_5D0
  loc_BD98D3: LitVarStr var_5E0, "','',0,0,'"
  loc_BD98D8: ConcatVar var_5F0
  loc_BD98DC: ILdRf var_8C
  loc_BD98DF: CVarStr var_600
  loc_BD98E2: ConcatVar var_610
  loc_BD98E6: LitVarStr var_620, "',"
  loc_BD98EB: ConcatVar var_630
  loc_BD98EF: LitI4 0
  loc_BD98F4: LitI4 -1
  loc_BD98F9: LitI4 1
  loc_BD98FE: LitStr "."
  loc_BD9901: LitStr ","
  loc_BD9904: FLdRfVar var_658
  loc_BD9907: CStrVarTmp
  loc_BD9908: FStStrNoPop var_A4
  loc_BD990B: ImpAdCallI2 Replace(, , , , , )
  loc_BD9910: CVarStr var_668
  loc_BD9913: ConcatVar var_678
  loc_BD9917: LitVarStr var_688, ",0,'"
  loc_BD991C: ConcatVar var_698
  loc_BD9920: ImpAdLdI4 MemVar_C3D03C
  loc_BD9923: CVarStr var_6A8
  loc_BD9926: ConcatVar var_6B8
  loc_BD992A: LitVarStr var_6C8, "');"
  loc_BD992F: ConcatVar var_6D8
  loc_BD9933: CStrVarVal var_A8
  loc_BD9937: Call EjecutarRsCls(from_stack_1v)
  loc_BD993C: FFreeStr var_A4 = ""
  loc_BD9943: FFreeAd var_BC = "": var_D0 = "": var_124 = "": var_138 = "": var_19C = "": var_1B0 = "": var_1F4 = "": var_208 = "": var_24C = "": var_260 = "": var_2A4 = "": var_2B8 = "": var_3FC = "": var_410 = "": var_454 = "": var_468 = "": var_4AC = "": var_4C0 = "": var_504 = "": var_518 = "": var_55C = "": var_570 = "": var_634 = ""
  loc_BD9976: FFreeVar var_430 = "": var_450 = "": var_478 = "": var_488 = "": var_4A8 = "": var_4D0 = "": var_4E0 = "": var_500 = "": var_528 = "": var_538 = "": var_558 = "": var_580 = "": var_590 = "": var_5B0 = "": var_5D0 = "": var_5F0 = "": var_610 = "": var_658 = "": var_630 = "": var_668 = "": var_678 = "": var_698 = "": var_6B8 = "": var_6D8 = "": var_100 = "": var_E0 = "": var_120 = "": var_148 = "": var_158 = "": var_178 = "": var_198 = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_218 = "": var_228 = "": var_248 = "": var_270 = "": var_280 = "": var_2A0 = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2F8 = "": var_348 = "": var_318 = "": var_358 = "": var_368 = "": var_3B8 = "": var_388 = "": var_3C8 = "": var_3D8 = "": var_3F8 = ""
  loc_BD99E5: FLdRfVar var_E0
  loc_BD99E8: FLdRfVar var_D0
  loc_BD99EB: LitVarStr var_CC, "CapiFacc"
  loc_BD99F0: PopAdLdVar
  loc_BD99F1: FLdRfVar var_BC
  loc_BD99F4: FLdPr Me
  loc_BD99F7: MemLdPr global_64
  loc_BD99FA:  = Me.Fields
  loc_BD99FF: FLdPr var_BC
  loc_BD9A02: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9A07: FLdPr var_D0
  loc_BD9A0A:  = Me.Value
  loc_BD9A0F: LitStr " UPDATE facictacte SET SaldFacc = SaldFacc + '"
  loc_BD9A12: LitI4 0
  loc_BD9A17: LitI4 -1
  loc_BD9A1C: LitI4 1
  loc_BD9A21: LitStr "."
  loc_BD9A24: LitStr ","
  loc_BD9A27: FLdRfVar var_E0
  loc_BD9A2A: FnCDblVar
  loc_BD9A2C: CStrR8
  loc_BD9A2E: FStStrNoPop var_A4
  loc_BD9A31: ImpAdCallI2 Replace(, , , , , )
  loc_BD9A36: FStStrNoPop var_A8
  loc_BD9A39: ConcatStr
  loc_BD9A3A: FStStrNoPop var_AC
  loc_BD9A3D: LitStr "' WHERE CodiFapa = "
  loc_BD9A40: ConcatStr
  loc_BD9A41: CVarStr var_120
  loc_BD9A44: FLdRfVar var_100
  loc_BD9A47: FLdRfVar var_138
  loc_BD9A4A: LitVarStr var_F0, "CodiFapa"
  loc_BD9A4F: PopAdLdVar
  loc_BD9A50: FLdRfVar var_124
  loc_BD9A53: FLdPr Me
  loc_BD9A56: MemLdPr global_64
  loc_BD9A59:  = Me.Fields
  loc_BD9A5E: FLdPr var_124
  loc_BD9A61: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9A66: FLdPr var_138
  loc_BD9A69:  = Me.Value
  loc_BD9A6E: FLdRfVar var_100
  loc_BD9A71: ConcatVar var_148
  loc_BD9A75: LitVarStr var_110, " AND CuotDefa = "
  loc_BD9A7A: ConcatVar var_158
  loc_BD9A7E: FLdRfVar var_178
  loc_BD9A81: FLdRfVar var_1B0
  loc_BD9A84: LitVarStr var_134, "CuotDefa"
  loc_BD9A89: PopAdLdVar
  loc_BD9A8A: FLdRfVar var_19C
  loc_BD9A8D: FLdPr Me
  loc_BD9A90: MemLdPr global_64
  loc_BD9A93:  = Me.Fields
  loc_BD9A98: FLdPr var_19C
  loc_BD9A9B: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9AA0: FLdPr var_1B0
  loc_BD9AA3:  = Me.Value
  loc_BD9AA8: FLdRfVar var_178
  loc_BD9AAB: ConcatVar var_198
  loc_BD9AAF: LitVarStr var_168, " AND CodiOfic = "
  loc_BD9AB4: ConcatVar var_1C0
  loc_BD9AB8: FLdRfVar var_1D0
  loc_BD9ABB: FLdRfVar var_208
  loc_BD9ABE: LitVarStr var_188, "CodiOfic"
  loc_BD9AC3: PopAdLdVar
  loc_BD9AC4: FLdRfVar var_1F4
  loc_BD9AC7: FLdPr Me
  loc_BD9ACA: MemLdPr global_64
  loc_BD9ACD:  = Me.Fields
  loc_BD9AD2: FLdPr var_1F4
  loc_BD9AD5: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9ADA: FLdPr var_208
  loc_BD9ADD:  = Me.Value
  loc_BD9AE2: FLdRfVar var_1D0
  loc_BD9AE5: ConcatVar var_1F0
  loc_BD9AE9: LitVarStr var_1AC, " AND CuenCtct = '"
  loc_BD9AEE: ConcatVar var_218
  loc_BD9AF2: FLdRfVar var_228
  loc_BD9AF5: FLdRfVar var_260
  loc_BD9AF8: LitVarStr var_1E0, "CuenCtct"
  loc_BD9AFD: PopAdLdVar
  loc_BD9AFE: FLdRfVar var_24C
  loc_BD9B01: FLdPr Me
  loc_BD9B04: MemLdPr global_64
  loc_BD9B07:  = Me.Fields
  loc_BD9B0C: FLdPr var_24C
  loc_BD9B0F: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9B14: FLdPr var_260
  loc_BD9B17:  = Me.Value
  loc_BD9B1C: FLdRfVar var_228
  loc_BD9B1F: ConcatVar var_248
  loc_BD9B23: LitVarStr var_204, "' AND PeriCtct = "
  loc_BD9B28: ConcatVar var_270
  loc_BD9B2C: FLdRfVar var_280
  loc_BD9B2F: FLdRfVar var_2B8
  loc_BD9B32: LitVarStr var_238, "PeriCtct"
  loc_BD9B37: PopAdLdVar
  loc_BD9B38: FLdRfVar var_2A4
  loc_BD9B3B: FLdPr Me
  loc_BD9B3E: MemLdPr global_64
  loc_BD9B41:  = Me.Fields
  loc_BD9B46: FLdPr var_2A4
  loc_BD9B49: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9B4E: FLdPr var_2B8
  loc_BD9B51:  = Me.Value
  loc_BD9B56: FLdRfVar var_280
  loc_BD9B59: ConcatVar var_2A0
  loc_BD9B5D: LitVarStr var_25C, " AND BimeCtct = "
  loc_BD9B62: ConcatVar var_2C8
  loc_BD9B66: FLdRfVar var_2D8
  loc_BD9B69: FLdRfVar var_410
  loc_BD9B6C: LitVarStr var_290, "BimeCtct"
  loc_BD9B71: PopAdLdVar
  loc_BD9B72: FLdRfVar var_3FC
  loc_BD9B75: FLdPr Me
  loc_BD9B78: MemLdPr global_64
  loc_BD9B7B:  = Me.Fields
  loc_BD9B80: FLdPr var_3FC
  loc_BD9B83: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9B88: FLdPr var_410
  loc_BD9B8B:  = Me.Value
  loc_BD9B90: FLdRfVar var_2D8
  loc_BD9B93: ConcatVar var_2E8
  loc_BD9B97: LitVarStr var_2B4, " AND NumeCtct = "
  loc_BD9B9C: ConcatVar var_2F8
  loc_BD9BA0: FLdRfVar var_318
  loc_BD9BA3: FLdRfVar var_468
  loc_BD9BA6: LitVarStr var_308, "NumeCtct"
  loc_BD9BAB: PopAdLdVar
  loc_BD9BAC: FLdRfVar var_454
  loc_BD9BAF: FLdPr Me
  loc_BD9BB2: MemLdPr global_68
  loc_BD9BB5:  = Me.Fields
  loc_BD9BBA: FLdPr var_454
  loc_BD9BBD: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9BC2: FLdPr var_468
  loc_BD9BC5:  = Me.Value
  loc_BD9BCA: FLdRfVar var_318
  loc_BD9BCD: ConcatVar var_348
  loc_BD9BD1: LitVarStr var_328, " AND MoviCtct = 1;"
  loc_BD9BD6: ConcatVar var_358
  loc_BD9BDA: CStrVarVal var_B0
  loc_BD9BDE: Call EjecutarRsCls(from_stack_1v)
  loc_BD9BE3: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_BD9BEE: FFreeAd var_BC = "": var_D0 = "": var_124 = "": var_138 = "": var_19C = "": var_1B0 = "": var_1F4 = "": var_208 = "": var_24C = "": var_260 = "": var_2A4 = "": var_2B8 = "": var_3FC = "": var_410 = "": var_454 = ""
  loc_BD9C11: FFreeVar var_E0 = "": var_120 = "": var_100 = "": var_148 = "": var_158 = "": var_178 = "": var_198 = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_218 = "": var_228 = "": var_248 = "": var_270 = "": var_280 = "": var_2A0 = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2F8 = "": var_318 = "": var_348 = ""
  loc_BD9C42: FLdPr Me
  loc_BD9C45: MemLdPr global_64
  loc_BD9C48: Me.MoveNext
  loc_BD9C4D: Branch loc_BD9295
  loc_BD9C50: LitStr "UPDATE detafapa SET EstaDefa = 'Pagada' WHERE CodiFapa = "
  loc_BD9C53: ILdRf lCodiFapa
  loc_BD9C56: CStrI4
  loc_BD9C58: FStStrNoPop var_A4
  loc_BD9C5B: ConcatStr
  loc_BD9C5C: FStStrNoPop var_A8
  loc_BD9C5F: LitStr " And CuotDefa = "
  loc_BD9C62: ConcatStr
  loc_BD9C63: FStStrNoPop var_AC
  loc_BD9C66: FLdI2 iCuota
  loc_BD9C69: CStrUI1
  loc_BD9C6B: FStStrNoPop var_B0
  loc_BD9C6E: ConcatStr
  loc_BD9C6F: FStStrNoPop var_B4
  loc_BD9C72: LitStr ";"
  loc_BD9C75: ConcatStr
  loc_BD9C76: FStStrNoPop var_6DC
  loc_BD9C79: Call EjecutarRsCls(from_stack_1v)
  loc_BD9C7E: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_BD9C8D: LitStr "SELECT * FROM facictacte WHERE CodiFapa = "
  loc_BD9C90: ILdRf lCodiFapa
  loc_BD9C93: CStrI4
  loc_BD9C95: FStStrNoPop var_A4
  loc_BD9C98: ConcatStr
  loc_BD9C99: FStStrNoPop var_A8
  loc_BD9C9C: LitStr " AND CuotDefa = "
  loc_BD9C9F: ConcatStr
  loc_BD9CA0: FStStrNoPop var_AC
  loc_BD9CA3: FLdI2 iCuotaCredito
  loc_BD9CA6: CStrUI1
  loc_BD9CA8: FStStrNoPop var_B0
  loc_BD9CAB: ConcatStr
  loc_BD9CAC: FStStrNoPop var_B4
  loc_BD9CAF: Call EjecutarRsCls2(from_stack_1v)
  loc_BD9CB4: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_BD9CC1: FLdRfVar var_B8
  loc_BD9CC4: FLdPr Me
  loc_BD9CC7: MemLdPr global_64
  loc_BD9CCA:  = Me.RecordCount
  loc_BD9CCF: ILdRf var_B8
  loc_BD9CD2: LitI4 0
  loc_BD9CD7: GtI4
  loc_BD9CD8: BranchF loc_BDA6A1
  loc_BD9CDB: FLdPr Me
  loc_BD9CDE: MemLdPr global_64
  loc_BD9CE1: Me.MoveFirst
  loc_BD9CE6: FLdRfVar var_9E
  loc_BD9CE9: FLdPr Me
  loc_BD9CEC: MemLdPr global_64
  loc_BD9CEF:  = Me.EOF
  loc_BD9CF4: FLdI2 var_9E
  loc_BD9CF7: NotI4
  loc_BD9CF8: BranchF loc_BDA6A1
  loc_BD9CFB: LitVarStr var_F0, "SELECT * FROM ctacte WHERE CodiOfic = "
  loc_BD9D00: FLdRfVar var_E0
  loc_BD9D03: FLdRfVar var_D0
  loc_BD9D06: LitVarStr var_CC, "CodiOfic"
  loc_BD9D0B: PopAdLdVar
  loc_BD9D0C: FLdRfVar var_BC
  loc_BD9D0F: FLdPr Me
  loc_BD9D12: MemLdPr global_64
  loc_BD9D15:  = Me.Fields
  loc_BD9D1A: FLdPr var_BC
  loc_BD9D1D: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9D22: FLdPr var_D0
  loc_BD9D25:  = Me.Value
  loc_BD9D2A: FLdRfVar var_E0
  loc_BD9D2D: ConcatVar var_100
  loc_BD9D31: LitVarStr var_110, " AND CuenCtct = '"
  loc_BD9D36: ConcatVar var_120
  loc_BD9D3A: FLdRfVar var_148
  loc_BD9D3D: FLdRfVar var_138
  loc_BD9D40: LitVarStr var_134, "CuenCtct"
  loc_BD9D45: PopAdLdVar
  loc_BD9D46: FLdRfVar var_124
  loc_BD9D49: FLdPr Me
  loc_BD9D4C: MemLdPr global_64
  loc_BD9D4F:  = Me.Fields
  loc_BD9D54: FLdPr var_124
  loc_BD9D57: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9D5C: FLdPr var_138
  loc_BD9D5F:  = Me.Value
  loc_BD9D64: FLdRfVar var_148
  loc_BD9D67: ConcatVar var_158
  loc_BD9D6B: LitVarStr var_168, "'"
  loc_BD9D70: ConcatVar var_178
  loc_BD9D74: LitVarStr var_188, " AND PeriCtct = "
  loc_BD9D79: ConcatVar var_198
  loc_BD9D7D: FLdRfVar var_1C0
  loc_BD9D80: FLdRfVar var_1B0
  loc_BD9D83: LitVarStr var_1AC, "PeriCtct"
  loc_BD9D88: PopAdLdVar
  loc_BD9D89: FLdRfVar var_19C
  loc_BD9D8C: FLdPr Me
  loc_BD9D8F: MemLdPr global_64
  loc_BD9D92:  = Me.Fields
  loc_BD9D97: FLdPr var_19C
  loc_BD9D9A: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9D9F: FLdPr var_1B0
  loc_BD9DA2:  = Me.Value
  loc_BD9DA7: FLdRfVar var_1C0
  loc_BD9DAA: ConcatVar var_1D0
  loc_BD9DAE: LitVarStr var_1E0, " AND BimeCtct = "
  loc_BD9DB3: ConcatVar var_1F0
  loc_BD9DB7: FLdRfVar var_218
  loc_BD9DBA: FLdRfVar var_208
  loc_BD9DBD: LitVarStr var_204, "BimeCtct"
  loc_BD9DC2: PopAdLdVar
  loc_BD9DC3: FLdRfVar var_1F4
  loc_BD9DC6: FLdPr Me
  loc_BD9DC9: MemLdPr global_64
  loc_BD9DCC:  = Me.Fields
  loc_BD9DD1: FLdPr var_1F4
  loc_BD9DD4: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9DD9: FLdPr var_208
  loc_BD9DDC:  = Me.Value
  loc_BD9DE1: FLdRfVar var_218
  loc_BD9DE4: ConcatVar var_228
  loc_BD9DE8: LitVarStr var_238, " AND NumeCtct = "
  loc_BD9DED: ConcatVar var_248
  loc_BD9DF1: FLdRfVar var_270
  loc_BD9DF4: FLdRfVar var_260
  loc_BD9DF7: LitVarStr var_25C, "NumeCtct"
  loc_BD9DFC: PopAdLdVar
  loc_BD9DFD: FLdRfVar var_24C
  loc_BD9E00: FLdPr Me
  loc_BD9E03: MemLdPr global_64
  loc_BD9E06:  = Me.Fields
  loc_BD9E0B: FLdPr var_24C
  loc_BD9E0E: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9E13: FLdPr var_260
  loc_BD9E16:  = Me.Value
  loc_BD9E1B: FLdRfVar var_270
  loc_BD9E1E: ConcatVar var_280
  loc_BD9E22: LitVarStr var_290, " AND MoviCtct = "
  loc_BD9E27: ConcatVar var_2A0
  loc_BD9E2B: FLdRfVar var_2C8
  loc_BD9E2E: FLdRfVar var_2B8
  loc_BD9E31: LitVarStr var_2B4, "MoviCtct"
  loc_BD9E36: PopAdLdVar
  loc_BD9E37: FLdRfVar var_2A4
  loc_BD9E3A: FLdPr Me
  loc_BD9E3D: MemLdPr global_64
  loc_BD9E40:  = Me.Fields
  loc_BD9E45: FLdPr var_2A4
  loc_BD9E48: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9E4D: FLdPr var_2B8
  loc_BD9E50:  = Me.Value
  loc_BD9E55: FLdRfVar var_2C8
  loc_BD9E58: ConcatVar var_2D8
  loc_BD9E5C: CStrVarVal var_A4
  loc_BD9E60: Call EjecutarRsCls3(from_stack_1v)
  loc_BD9E65: FFree1Str var_A4
  loc_BD9E68: FFreeAd var_BC = "": var_D0 = "": var_124 = "": var_138 = "": var_19C = "": var_1B0 = "": var_1F4 = "": var_208 = "": var_24C = "": var_260 = "": var_2A4 = ""
  loc_BD9E83: FFreeVar var_E0 = "": var_100 = "": var_120 = "": var_148 = "": var_158 = "": var_178 = "": var_198 = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_218 = "": var_228 = "": var_248 = "": var_270 = "": var_280 = "": var_2A0 = "": var_2C8 = ""
  loc_BD9EAA: FLdRfVar var_B8
  loc_BD9EAD: FLdPr Me
  loc_BD9EB0: MemLdPr global_68
  loc_BD9EB3:  = Me.RecordCount
  loc_BD9EB8: ILdRf var_B8
  loc_BD9EBB: LitI4 0
  loc_BD9EC0: GtI4
  loc_BD9EC1: BranchF loc_BDA436
  loc_BD9EC4: FLdRfVar var_E0
  loc_BD9EC7: FLdRfVar var_D0
  loc_BD9ECA: LitVarStr var_CC, "CodiOfic"
  loc_BD9ECF: PopAdLdVar
  loc_BD9ED0: FLdRfVar var_BC
  loc_BD9ED3: FLdPr Me
  loc_BD9ED6: MemLdPr global_68
  loc_BD9ED9:  = Me.Fields
  loc_BD9EDE: FLdPr var_BC
  loc_BD9EE1: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9EE6: FLdPr var_D0
  loc_BD9EE9:  = Me.Value
  loc_BD9EEE: FLdRfVar var_100
  loc_BD9EF1: FLdRfVar var_138
  loc_BD9EF4: LitVarStr var_F0, "CuenCtct"
  loc_BD9EF9: PopAdLdVar
  loc_BD9EFA: FLdRfVar var_124
  loc_BD9EFD: FLdPr Me
  loc_BD9F00: MemLdPr global_68
  loc_BD9F03:  = Me.Fields
  loc_BD9F08: FLdPr var_124
  loc_BD9F0B: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9F10: FLdPr var_138
  loc_BD9F13:  = Me.Value
  loc_BD9F18: FLdRfVar var_120
  loc_BD9F1B: FLdRfVar var_1B0
  loc_BD9F1E: LitVarStr var_110, "PeriCtct"
  loc_BD9F23: PopAdLdVar
  loc_BD9F24: FLdRfVar var_19C
  loc_BD9F27: FLdPr Me
  loc_BD9F2A: MemLdPr global_68
  loc_BD9F2D:  = Me.Fields
  loc_BD9F32: FLdPr var_19C
  loc_BD9F35: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9F3A: FLdPr var_1B0
  loc_BD9F3D:  = Me.Value
  loc_BD9F42: FLdRfVar var_148
  loc_BD9F45: FLdRfVar var_208
  loc_BD9F48: LitVarStr var_134, "BimeCtct"
  loc_BD9F4D: PopAdLdVar
  loc_BD9F4E: FLdRfVar var_1F4
  loc_BD9F51: FLdPr Me
  loc_BD9F54: MemLdPr global_68
  loc_BD9F57:  = Me.Fields
  loc_BD9F5C: FLdPr var_1F4
  loc_BD9F5F: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9F64: FLdPr var_208
  loc_BD9F67:  = Me.Value
  loc_BD9F6C: FLdRfVar var_158
  loc_BD9F6F: FLdRfVar var_260
  loc_BD9F72: LitVarStr var_168, "NumeCtct"
  loc_BD9F77: PopAdLdVar
  loc_BD9F78: FLdRfVar var_24C
  loc_BD9F7B: FLdPr Me
  loc_BD9F7E: MemLdPr global_68
  loc_BD9F81:  = Me.Fields
  loc_BD9F86: FLdPr var_24C
  loc_BD9F89: from_stack_2 = Me.Item(from_stack_1)
  loc_BD9F8E: FLdPr var_260
  loc_BD9F91:  = Me.Value
  loc_BD9F96: FLdRfVar var_9E
  loc_BD9F99: FLdRfVar var_158
  loc_BD9F9C: CI4Var
  loc_BD9F9E: FLdRfVar var_148
  loc_BD9FA1: CI2Var
  loc_BD9FA2: FLdRfVar var_120
  loc_BD9FA5: CI2Var
  loc_BD9FA6: FLdRfVar var_100
  loc_BD9FA9: CStrVarTmp
  loc_BD9FAA: FStStrNoPop var_A4
  loc_BD9FAD: FLdRfVar var_E0
  loc_BD9FB0: CI2Var
  loc_BD9FB1: from_stack_6v = BuscaMoviCtct(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_BD9FB6: FLdI2 var_9E
  loc_BD9FB9: CI4UI1
  loc_BD9FBA: FStR4 var_90
  loc_BD9FBD: FFree1Str var_A4
  loc_BD9FC0: FFreeAd var_BC = "": var_124 = "": var_19C = "": var_1F4 = "": var_24C = "": var_D0 = "": var_138 = "": var_1B0 = "": var_208 = ""
  loc_BD9FD7: FFreeVar var_E0 = "": var_100 = "": var_120 = "": var_148 = ""
  loc_BD9FE4: ILdRf var_90
  loc_BD9FE7: LitI4 1
  loc_BD9FEC: AddI4
  loc_BD9FED: FStR4 var_90
  loc_BD9FF0: FLdRfVar var_658
  loc_BD9FF3: FLdRfVar var_648
  loc_BD9FF6: LitVarStr var_644, "CapiFacc"
  loc_BD9FFB: PopAdLdVar
  loc_BD9FFC: FLdRfVar var_634
  loc_BD9FFF: FLdPr Me
  loc_BDA002: MemLdPr global_64
  loc_BDA005:  = Me.Fields
  loc_BDA00A: FLdPr var_634
  loc_BDA00D: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA012: FLdPr var_648
  loc_BDA015:  = Me.Value
  loc_BDA01A: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_BDA01D: LitStr " VALUES ("
  loc_BDA020: ConcatStr
  loc_BDA021: CVarStr var_100
  loc_BDA024: FLdRfVar var_E0
  loc_BDA027: FLdRfVar var_D0
  loc_BDA02A: LitVarStr var_CC, "CodiOfic"
  loc_BDA02F: PopAdLdVar
  loc_BDA030: FLdRfVar var_BC
  loc_BDA033: FLdPr Me
  loc_BDA036: MemLdPr global_68
  loc_BDA039:  = Me.Fields
  loc_BDA03E: FLdPr var_BC
  loc_BDA041: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA046: FLdPr var_D0
  loc_BDA049:  = Me.Value
  loc_BDA04E: FLdRfVar var_E0
  loc_BDA051: ConcatVar var_120
  loc_BDA055: LitVarStr var_F0, ",'"
  loc_BDA05A: ConcatVar var_148
  loc_BDA05E: FLdRfVar var_158
  loc_BDA061: FLdRfVar var_138
  loc_BDA064: LitVarStr var_110, "CuenCtct"
  loc_BDA069: PopAdLdVar
  loc_BDA06A: FLdRfVar var_124
  loc_BDA06D: FLdPr Me
  loc_BDA070: MemLdPr global_68
  loc_BDA073:  = Me.Fields
  loc_BDA078: FLdPr var_124
  loc_BDA07B: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA080: FLdPr var_138
  loc_BDA083:  = Me.Value
  loc_BDA088: FLdRfVar var_158
  loc_BDA08B: ConcatVar var_178
  loc_BDA08F: LitVarStr var_134, "',"
  loc_BDA094: ConcatVar var_198
  loc_BDA098: FLdRfVar var_1C0
  loc_BDA09B: FLdRfVar var_1B0
  loc_BDA09E: LitVarStr var_168, "PeriCtct"
  loc_BDA0A3: PopAdLdVar
  loc_BDA0A4: FLdRfVar var_19C
  loc_BDA0A7: FLdPr Me
  loc_BDA0AA: MemLdPr global_68
  loc_BDA0AD:  = Me.Fields
  loc_BDA0B2: FLdPr var_19C
  loc_BDA0B5: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA0BA: FLdPr var_1B0
  loc_BDA0BD:  = Me.Value
  loc_BDA0C2: FLdRfVar var_1C0
  loc_BDA0C5: ConcatVar var_1D0
  loc_BDA0C9: LitVarStr var_188, ","
  loc_BDA0CE: ConcatVar var_1F0
  loc_BDA0D2: FLdRfVar var_218
  loc_BDA0D5: FLdRfVar var_208
  loc_BDA0D8: LitVarStr var_1AC, "BimeCtct"
  loc_BDA0DD: PopAdLdVar
  loc_BDA0DE: FLdRfVar var_1F4
  loc_BDA0E1: FLdPr Me
  loc_BDA0E4: MemLdPr global_68
  loc_BDA0E7:  = Me.Fields
  loc_BDA0EC: FLdPr var_1F4
  loc_BDA0EF: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA0F4: FLdPr var_208
  loc_BDA0F7:  = Me.Value
  loc_BDA0FC: FLdRfVar var_218
  loc_BDA0FF: ConcatVar var_228
  loc_BDA103: LitVarStr var_1E0, ","
  loc_BDA108: ConcatVar var_248
  loc_BDA10C: FLdRfVar var_270
  loc_BDA10F: FLdRfVar var_260
  loc_BDA112: LitVarStr var_204, "NumeCtct"
  loc_BDA117: PopAdLdVar
  loc_BDA118: FLdRfVar var_24C
  loc_BDA11B: FLdPr Me
  loc_BDA11E: MemLdPr global_68
  loc_BDA121:  = Me.Fields
  loc_BDA126: FLdPr var_24C
  loc_BDA129: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA12E: FLdPr var_260
  loc_BDA131:  = Me.Value
  loc_BDA136: FLdRfVar var_270
  loc_BDA139: ConcatVar var_280
  loc_BDA13D: LitVarStr var_238, ","
  loc_BDA142: ConcatVar var_2A0
  loc_BDA146: ILdRf var_90
  loc_BDA149: CVarI4
  loc_BDA14D: ConcatVar var_2C8
  loc_BDA151: LitVarStr var_290, ",0,0,0,0,'"
  loc_BDA156: ConcatVar var_2D8
  loc_BDA15A: FLdRfVar var_2E8
  loc_BDA15D: FLdRfVar var_2B8
  loc_BDA160: LitVarStr var_2B4, "TipoCtct"
  loc_BDA165: PopAdLdVar
  loc_BDA166: FLdRfVar var_2A4
  loc_BDA169: FLdPr Me
  loc_BDA16C: MemLdPr global_68
  loc_BDA16F:  = Me.Fields
  loc_BDA174: FLdPr var_2A4
  loc_BDA177: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA17C: FLdPr var_2B8
  loc_BDA17F:  = Me.Value
  loc_BDA184: FLdRfVar var_2E8
  loc_BDA187: ConcatVar var_2F8
  loc_BDA18B: LitVarStr var_308, "',"
  loc_BDA190: ConcatVar var_318
  loc_BDA194: LitI4 1
  loc_BDA199: LitI4 1
  loc_BDA19E: LitVarStr var_338, "'yyyy-mm-dd'"
  loc_BDA1A3: FStVarCopyObj var_348
  loc_BDA1A6: FLdRfVar var_348
  loc_BDA1A9: FLdRfVar var_98
  loc_BDA1AC: CVarRef
  loc_BDA1B1: ImpAdCallI2 Format$(, )
  loc_BDA1B6: CVarStr var_358
  loc_BDA1B9: ConcatVar var_368
  loc_BDA1BD: LitVarStr var_378, ","
  loc_BDA1C2: ConcatVar var_388
  loc_BDA1C6: LitI4 1
  loc_BDA1CB: LitI4 1
  loc_BDA1D0: LitVarStr var_3A8, "'yyyy-mm-dd'"
  loc_BDA1D5: FStVarCopyObj var_3B8
  loc_BDA1D8: FLdRfVar var_3B8
  loc_BDA1DB: FLdRfVar var_98
  loc_BDA1DE: CVarRef
  loc_BDA1E3: ImpAdCallI2 Format$(, )
  loc_BDA1E8: CVarStr var_3C8
  loc_BDA1EB: ConcatVar var_3D8
  loc_BDA1EF: LitVarStr var_3E8, ",NUll,0,"
  loc_BDA1F4: ConcatVar var_3F8
  loc_BDA1F8: FLdRfVar var_420
  loc_BDA1FB: FLdRfVar var_410
  loc_BDA1FE: LitVarStr var_40C, "PeriInfo"
  loc_BDA203: PopAdLdVar
  loc_BDA204: FLdRfVar var_3FC
  loc_BDA207: FLdPr Me
  loc_BDA20A: MemLdPr global_68
  loc_BDA20D:  = Me.Fields
  loc_BDA212: FLdPr var_3FC
  loc_BDA215: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA21A: FLdPr var_410
  loc_BDA21D:  = Me.Value
  loc_BDA222: FLdRfVar var_420
  loc_BDA225: ConcatVar var_430
  loc_BDA229: LitVarStr var_440, ",'"
  loc_BDA22E: ConcatVar var_450
  loc_BDA232: FLdRfVar var_478
  loc_BDA235: FLdRfVar var_468
  loc_BDA238: LitVarStr var_464, "CodiConc"
  loc_BDA23D: PopAdLdVar
  loc_BDA23E: FLdRfVar var_454
  loc_BDA241: FLdPr Me
  loc_BDA244: MemLdPr global_68
  loc_BDA247:  = Me.Fields
  loc_BDA24C: FLdPr var_454
  loc_BDA24F: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA254: FLdPr var_468
  loc_BDA257:  = Me.Value
  loc_BDA25C: FLdRfVar var_478
  loc_BDA25F: ConcatVar var_488
  loc_BDA263: LitVarStr var_498, "',"
  loc_BDA268: ConcatVar var_4A8
  loc_BDA26C: FLdRfVar var_4D0
  loc_BDA26F: FLdRfVar var_4C0
  loc_BDA272: LitVarStr var_4BC, "CodiFapa"
  loc_BDA277: PopAdLdVar
  loc_BDA278: FLdRfVar var_4AC
  loc_BDA27B: FLdPr Me
  loc_BDA27E: MemLdPr global_68
  loc_BDA281:  = Me.Fields
  loc_BDA286: FLdPr var_4AC
  loc_BDA289: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA28E: FLdPr var_4C0
  loc_BDA291:  = Me.Value
  loc_BDA296: FLdRfVar var_4D0
  loc_BDA299: ConcatVar var_4E0
  loc_BDA29D: LitVarStr var_4F0, ","
  loc_BDA2A2: ConcatVar var_500
  loc_BDA2A6: FLdRfVar var_528
  loc_BDA2A9: FLdRfVar var_518
  loc_BDA2AC: LitVarStr var_514, "CuotDefa"
  loc_BDA2B1: PopAdLdVar
  loc_BDA2B2: FLdRfVar var_504
  loc_BDA2B5: FLdPr Me
  loc_BDA2B8: MemLdPr global_64
  loc_BDA2BB:  = Me.Fields
  loc_BDA2C0: FLdPr var_504
  loc_BDA2C3: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA2C8: FLdPr var_518
  loc_BDA2CB:  = Me.Value
  loc_BDA2D0: FLdRfVar var_528
  loc_BDA2D3: ConcatVar var_538
  loc_BDA2D7: LitVarStr var_548, ","
  loc_BDA2DC: ConcatVar var_558
  loc_BDA2E0: FLdRfVar var_580
  loc_BDA2E3: FLdRfVar var_570
  loc_BDA2E6: LitVarStr var_56C, "NumeApre"
  loc_BDA2EB: PopAdLdVar
  loc_BDA2EC: FLdRfVar var_55C
  loc_BDA2EF: FLdPr Me
  loc_BDA2F2: MemLdPr global_68
  loc_BDA2F5:  = Me.Fields
  loc_BDA2FA: FLdPr var_55C
  loc_BDA2FD: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA302: FLdPr var_570
  loc_BDA305:  = Me.Value
  loc_BDA30A: FLdRfVar var_580
  loc_BDA30D: ConcatVar var_590
  loc_BDA311: LitVarStr var_5A0, ",11,'"
  loc_BDA316: ConcatVar var_5B0
  loc_BDA31A: ILdRf var_88
  loc_BDA31D: CVarStr var_5C0
  loc_BDA320: ConcatVar var_5D0
  loc_BDA324: LitVarStr var_5E0, "','',0,0,'"
  loc_BDA329: ConcatVar var_5F0
  loc_BDA32D: ILdRf var_8C
  loc_BDA330: CVarStr var_600
  loc_BDA333: ConcatVar var_610
  loc_BDA337: LitVarStr var_620, "',0,"
  loc_BDA33C: ConcatVar var_630
  loc_BDA340: LitI4 0
  loc_BDA345: LitI4 -1
  loc_BDA34A: LitI4 1
  loc_BDA34F: LitStr "."
  loc_BDA352: LitStr ","
  loc_BDA355: FLdRfVar var_658
  loc_BDA358: CStrVarTmp
  loc_BDA359: FStStrNoPop var_A4
  loc_BDA35C: ImpAdCallI2 Replace(, , , , , )
  loc_BDA361: CVarStr var_668
  loc_BDA364: ConcatVar var_678
  loc_BDA368: LitVarStr var_688, ",'"
  loc_BDA36D: ConcatVar var_698
  loc_BDA371: ImpAdLdI4 MemVar_C3D03C
  loc_BDA374: CVarStr var_6A8
  loc_BDA377: ConcatVar var_6B8
  loc_BDA37B: LitVarStr var_6C8, "');"
  loc_BDA380: ConcatVar var_6D8
  loc_BDA384: CStrVarVal var_A8
  loc_BDA388: Call EjecutarRsCls(from_stack_1v)
  loc_BDA38D: FFreeStr var_A4 = ""
  loc_BDA394: FFreeAd var_BC = "": var_D0 = "": var_124 = "": var_138 = "": var_19C = "": var_1B0 = "": var_1F4 = "": var_208 = "": var_24C = "": var_260 = "": var_2A4 = "": var_2B8 = "": var_3FC = "": var_410 = "": var_454 = "": var_468 = "": var_4AC = "": var_4C0 = "": var_504 = "": var_518 = "": var_55C = "": var_570 = "": var_634 = ""
  loc_BDA3C7: FFreeVar var_430 = "": var_450 = "": var_478 = "": var_488 = "": var_4A8 = "": var_4D0 = "": var_4E0 = "": var_500 = "": var_528 = "": var_538 = "": var_558 = "": var_580 = "": var_590 = "": var_5B0 = "": var_5D0 = "": var_5F0 = "": var_610 = "": var_658 = "": var_630 = "": var_668 = "": var_678 = "": var_698 = "": var_6B8 = "": var_6D8 = "": var_100 = "": var_E0 = "": var_120 = "": var_148 = "": var_158 = "": var_178 = "": var_198 = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_218 = "": var_228 = "": var_248 = "": var_270 = "": var_280 = "": var_2A0 = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2F8 = "": var_348 = "": var_318 = "": var_358 = "": var_368 = "": var_3B8 = "": var_388 = "": var_3C8 = "": var_3D8 = "": var_3F8 = ""
  loc_BDA436: FLdRfVar var_E0
  loc_BDA439: FLdRfVar var_D0
  loc_BDA43C: LitVarStr var_CC, "CapiFacc"
  loc_BDA441: PopAdLdVar
  loc_BDA442: FLdRfVar var_BC
  loc_BDA445: FLdPr Me
  loc_BDA448: MemLdPr global_64
  loc_BDA44B:  = Me.Fields
  loc_BDA450: FLdPr var_BC
  loc_BDA453: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA458: FLdPr var_D0
  loc_BDA45B:  = Me.Value
  loc_BDA460: LitStr " UPDATE facictacte SET SaldFacc = SaldFacc - '"
  loc_BDA463: LitI4 0
  loc_BDA468: LitI4 -1
  loc_BDA46D: LitI4 1
  loc_BDA472: LitStr "."
  loc_BDA475: LitStr ","
  loc_BDA478: FLdRfVar var_E0
  loc_BDA47B: FnCDblVar
  loc_BDA47D: CStrR8
  loc_BDA47F: FStStrNoPop var_A4
  loc_BDA482: ImpAdCallI2 Replace(, , , , , )
  loc_BDA487: FStStrNoPop var_A8
  loc_BDA48A: ConcatStr
  loc_BDA48B: FStStrNoPop var_AC
  loc_BDA48E: LitStr "' WHERE CodiFapa = "
  loc_BDA491: ConcatStr
  loc_BDA492: CVarStr var_120
  loc_BDA495: FLdRfVar var_100
  loc_BDA498: FLdRfVar var_138
  loc_BDA49B: LitVarStr var_F0, "CodiFapa"
  loc_BDA4A0: PopAdLdVar
  loc_BDA4A1: FLdRfVar var_124
  loc_BDA4A4: FLdPr Me
  loc_BDA4A7: MemLdPr global_64
  loc_BDA4AA:  = Me.Fields
  loc_BDA4AF: FLdPr var_124
  loc_BDA4B2: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA4B7: FLdPr var_138
  loc_BDA4BA:  = Me.Value
  loc_BDA4BF: FLdRfVar var_100
  loc_BDA4C2: ConcatVar var_148
  loc_BDA4C6: LitVarStr var_110, " AND CuotDefa = "
  loc_BDA4CB: ConcatVar var_158
  loc_BDA4CF: FLdRfVar var_178
  loc_BDA4D2: FLdRfVar var_1B0
  loc_BDA4D5: LitVarStr var_134, "CuotDefa"
  loc_BDA4DA: PopAdLdVar
  loc_BDA4DB: FLdRfVar var_19C
  loc_BDA4DE: FLdPr Me
  loc_BDA4E1: MemLdPr global_64
  loc_BDA4E4:  = Me.Fields
  loc_BDA4E9: FLdPr var_19C
  loc_BDA4EC: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA4F1: FLdPr var_1B0
  loc_BDA4F4:  = Me.Value
  loc_BDA4F9: FLdRfVar var_178
  loc_BDA4FC: ConcatVar var_198
  loc_BDA500: LitVarStr var_168, " AND CodiOfic = "
  loc_BDA505: ConcatVar var_1C0
  loc_BDA509: FLdRfVar var_1D0
  loc_BDA50C: FLdRfVar var_208
  loc_BDA50F: LitVarStr var_188, "CodiOfic"
  loc_BDA514: PopAdLdVar
  loc_BDA515: FLdRfVar var_1F4
  loc_BDA518: FLdPr Me
  loc_BDA51B: MemLdPr global_64
  loc_BDA51E:  = Me.Fields
  loc_BDA523: FLdPr var_1F4
  loc_BDA526: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA52B: FLdPr var_208
  loc_BDA52E:  = Me.Value
  loc_BDA533: FLdRfVar var_1D0
  loc_BDA536: ConcatVar var_1F0
  loc_BDA53A: LitVarStr var_1AC, " AND CuenCtct = '"
  loc_BDA53F: ConcatVar var_218
  loc_BDA543: FLdRfVar var_228
  loc_BDA546: FLdRfVar var_260
  loc_BDA549: LitVarStr var_1E0, "CuenCtct"
  loc_BDA54E: PopAdLdVar
  loc_BDA54F: FLdRfVar var_24C
  loc_BDA552: FLdPr Me
  loc_BDA555: MemLdPr global_64
  loc_BDA558:  = Me.Fields
  loc_BDA55D: FLdPr var_24C
  loc_BDA560: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA565: FLdPr var_260
  loc_BDA568:  = Me.Value
  loc_BDA56D: FLdRfVar var_228
  loc_BDA570: ConcatVar var_248
  loc_BDA574: LitVarStr var_204, "' AND PeriCtct = "
  loc_BDA579: ConcatVar var_270
  loc_BDA57D: FLdRfVar var_280
  loc_BDA580: FLdRfVar var_2B8
  loc_BDA583: LitVarStr var_238, "PeriCtct"
  loc_BDA588: PopAdLdVar
  loc_BDA589: FLdRfVar var_2A4
  loc_BDA58C: FLdPr Me
  loc_BDA58F: MemLdPr global_64
  loc_BDA592:  = Me.Fields
  loc_BDA597: FLdPr var_2A4
  loc_BDA59A: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA59F: FLdPr var_2B8
  loc_BDA5A2:  = Me.Value
  loc_BDA5A7: FLdRfVar var_280
  loc_BDA5AA: ConcatVar var_2A0
  loc_BDA5AE: LitVarStr var_25C, " AND BimeCtct = "
  loc_BDA5B3: ConcatVar var_2C8
  loc_BDA5B7: FLdRfVar var_2D8
  loc_BDA5BA: FLdRfVar var_410
  loc_BDA5BD: LitVarStr var_290, "BimeCtct"
  loc_BDA5C2: PopAdLdVar
  loc_BDA5C3: FLdRfVar var_3FC
  loc_BDA5C6: FLdPr Me
  loc_BDA5C9: MemLdPr global_64
  loc_BDA5CC:  = Me.Fields
  loc_BDA5D1: FLdPr var_3FC
  loc_BDA5D4: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA5D9: FLdPr var_410
  loc_BDA5DC:  = Me.Value
  loc_BDA5E1: FLdRfVar var_2D8
  loc_BDA5E4: ConcatVar var_2E8
  loc_BDA5E8: LitVarStr var_2B4, " AND NumeCtct = "
  loc_BDA5ED: ConcatVar var_2F8
  loc_BDA5F1: FLdRfVar var_318
  loc_BDA5F4: FLdRfVar var_468
  loc_BDA5F7: LitVarStr var_308, "NumeCtct"
  loc_BDA5FC: PopAdLdVar
  loc_BDA5FD: FLdRfVar var_454
  loc_BDA600: FLdPr Me
  loc_BDA603: MemLdPr global_68
  loc_BDA606:  = Me.Fields
  loc_BDA60B: FLdPr var_454
  loc_BDA60E: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA613: FLdPr var_468
  loc_BDA616:  = Me.Value
  loc_BDA61B: FLdRfVar var_318
  loc_BDA61E: ConcatVar var_348
  loc_BDA622: LitVarStr var_328, " AND MoviCtct = 1;"
  loc_BDA627: ConcatVar var_358
  loc_BDA62B: CStrVarVal var_B0
  loc_BDA62F: Call EjecutarRsCls(from_stack_1v)
  loc_BDA634: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_BDA63F: FFreeAd var_BC = "": var_D0 = "": var_124 = "": var_138 = "": var_19C = "": var_1B0 = "": var_1F4 = "": var_208 = "": var_24C = "": var_260 = "": var_2A4 = "": var_2B8 = "": var_3FC = "": var_410 = "": var_454 = ""
  loc_BDA662: FFreeVar var_E0 = "": var_120 = "": var_100 = "": var_148 = "": var_158 = "": var_178 = "": var_198 = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_218 = "": var_228 = "": var_248 = "": var_270 = "": var_280 = "": var_2A0 = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2F8 = "": var_318 = "": var_348 = ""
  loc_BDA693: FLdPr Me
  loc_BDA696: MemLdPr global_64
  loc_BDA699: Me.MoveNext
  loc_BDA69E: Branch loc_BD9CE6
  loc_BDA6A1: LitStr "UPDATE detafapa SET EstaDefa = 'Anulada', FepaDefa = "
  loc_BDA6A4: LitI4 1
  loc_BDA6A9: LitI4 1
  loc_BDA6AE: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_BDA6B3: FStVarCopyObj var_E0
  loc_BDA6B6: FLdRfVar var_E0
  loc_BDA6B9: FLdRfVar var_98
  loc_BDA6BC: CVarRef
  loc_BDA6C1: ImpAdCallI2 Format$(, )
  loc_BDA6C6: FStStrNoPop var_A4
  loc_BDA6C9: ConcatStr
  loc_BDA6CA: FStStrNoPop var_A8
  loc_BDA6CD: LitStr " WHERE CodiFapa = "
  loc_BDA6D0: ConcatStr
  loc_BDA6D1: FStStrNoPop var_AC
  loc_BDA6D4: ILdRf lCodiFapa
  loc_BDA6D7: CStrI4
  loc_BDA6D9: FStStrNoPop var_B0
  loc_BDA6DC: ConcatStr
  loc_BDA6DD: FStStrNoPop var_B4
  loc_BDA6E0: LitStr " And CuotDefa = "
  loc_BDA6E3: ConcatStr
  loc_BDA6E4: FStStrNoPop var_6DC
  loc_BDA6E7: FLdI2 iCuotaCredito
  loc_BDA6EA: CStrUI1
  loc_BDA6EC: FStStrNoPop var_6E0
  loc_BDA6EF: ConcatStr
  loc_BDA6F0: FStStrNoPop var_6E4
  loc_BDA6F3: LitStr ";"
  loc_BDA6F6: ConcatStr
  loc_BDA6F7: FStStrNoPop var_6E8
  loc_BDA6FA: Call EjecutarRsCls(from_stack_1v)
  loc_BDA6FF: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_6DC = "": var_6E0 = "": var_6E4 = ""
  loc_BDA714: FFree1Var var_E0 = ""
  loc_BDA717: FLdRfVar var_9E
  loc_BDA71A: ILdRf lCodiFapa
  loc_BDA71D: FLdRfVar var_9C
  loc_BDA720: NewIfNullPr clsdetafapa
  loc_BDA723: from_stack_2v = clsdetafapa.BuscaCuotasImpagas(from_stack_1v)
  loc_BDA728: FLdI2 var_9E
  loc_BDA72B: LitI2_Byte &HFF
  loc_BDA72D: EqI2
  loc_BDA72E: BranchF loc_BDA7A0
  loc_BDA731: LitStr "UPDATE facipago SET FepaFapa = "
  loc_BDA734: LitI4 1
  loc_BDA739: LitI4 1
  loc_BDA73E: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_BDA743: FStVarCopyObj var_E0
  loc_BDA746: FLdRfVar var_E0
  loc_BDA749: FLdRfVar var_98
  loc_BDA74C: CVarRef
  loc_BDA751: ImpAdCallI2 Format$(, )
  loc_BDA756: FStStrNoPop var_A4
  loc_BDA759: ConcatStr
  loc_BDA75A: FStStrNoPop var_A8
  loc_BDA75D: LitStr ", EstaFapa = 'Anulada', ModiUsua = '"
  loc_BDA760: ConcatStr
  loc_BDA761: FStStrNoPop var_AC
  loc_BDA764: ImpAdLdI4 MemVar_C3D03C
  loc_BDA767: ConcatStr
  loc_BDA768: FStStrNoPop var_B0
  loc_BDA76B: LitStr "', ModiFeho = now(), BajaMoti = 'Credito Manual' WHERE CodiFapa = "
  loc_BDA76E: ConcatStr
  loc_BDA76F: FStStrNoPop var_B4
  loc_BDA772: ILdRf lCodiFapa
  loc_BDA775: CStrI4
  loc_BDA777: FStStrNoPop var_6DC
  loc_BDA77A: ConcatStr
  loc_BDA77B: FStStrNoPop var_6E0
  loc_BDA77E: LitStr ";"
  loc_BDA781: ConcatStr
  loc_BDA782: FStStrNoPop var_6E4
  loc_BDA785: Call EjecutarRsCls(from_stack_1v)
  loc_BDA78A: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_6DC = "": var_6E0 = ""
  loc_BDA79D: FFree1Var var_E0 = ""
  loc_BDA7A0: LitStr "COMMIT;"
  loc_BDA7A3: Call EjecutarRsCls(from_stack_1v)
  loc_BDA7A8: LitI4 0
  loc_BDA7AD: LitStr "El CREDITO MANUAL se realizo con exito"
  loc_BDA7B0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDA7B5: ExitProcHresult
  loc_BDA7B6: LitStr "rollback"
  loc_BDA7B9: Call EjecutarRsCls(from_stack_1v)
  loc_BDA7BE: LitI4 0
  loc_BDA7C3: LitStr "ERROR: NO SE generó el aforo en la cuenta corriente. Verifique..."
  loc_BDA7C6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDA7CB: ExitProcHresult
End Sub

Public Sub CreaCreditosCtaCteCuotadePlanDePago(lCodiFapa, sExpeCtct, sObseCtct, iCuotaCredito) 'B73DD0
  'Data Table: 4E07A8
  loc_B73278: ILdRf sExpeCtct
  loc_B7327B: FStStrCopy var_88
  loc_B7327E: ILdRf sObseCtct
  loc_B73281: FStStrCopy var_8C
  loc_B73284: LitI2_Byte 0
  loc_B73286: PopTmpLdAd2 var_9E
  loc_B73289: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_B7328E: FStFPR8 var_98
  loc_B73291: OnErrorGoto loc_B73DB8
  loc_B73294: LitStr "START TRANSACTION;"
  loc_B73297: Call EjecutarRsCls(from_stack_1v)
  loc_B7329C: LitStr "SELECT * FROM facictacte WHERE CodiFapa = "
  loc_B7329F: ILdRf lCodiFapa
  loc_B732A2: CStrI4
  loc_B732A4: FStStrNoPop var_A4
  loc_B732A7: ConcatStr
  loc_B732A8: FStStrNoPop var_A8
  loc_B732AB: LitStr " AND CuotDefa = "
  loc_B732AE: ConcatStr
  loc_B732AF: FStStrNoPop var_AC
  loc_B732B2: FLdI2 iCuotaCredito
  loc_B732B5: CStrUI1
  loc_B732B7: FStStrNoPop var_B0
  loc_B732BA: ConcatStr
  loc_B732BB: FStStrNoPop var_B4
  loc_B732BE: Call EjecutarRsCls2(from_stack_1v)
  loc_B732C3: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_B732D0: FLdRfVar var_B8
  loc_B732D3: FLdPr Me
  loc_B732D6: MemLdPr global_64
  loc_B732D9:  = Me.RecordCount
  loc_B732DE: ILdRf var_B8
  loc_B732E1: LitI4 0
  loc_B732E6: GtI4
  loc_B732E7: BranchF loc_B73CB0
  loc_B732EA: FLdPr Me
  loc_B732ED: MemLdPr global_64
  loc_B732F0: Me.MoveFirst
  loc_B732F5: FLdRfVar var_9E
  loc_B732F8: FLdPr Me
  loc_B732FB: MemLdPr global_64
  loc_B732FE:  = Me.EOF
  loc_B73303: FLdI2 var_9E
  loc_B73306: NotI4
  loc_B73307: BranchF loc_B73CB0
  loc_B7330A: LitVarStr var_F0, "SELECT * FROM ctacte WHERE CodiOfic = "
  loc_B7330F: FLdRfVar var_E0
  loc_B73312: FLdRfVar var_D0
  loc_B73315: LitVarStr var_CC, "CodiOfic"
  loc_B7331A: PopAdLdVar
  loc_B7331B: FLdRfVar var_BC
  loc_B7331E: FLdPr Me
  loc_B73321: MemLdPr global_64
  loc_B73324:  = Me.Fields
  loc_B73329: FLdPr var_BC
  loc_B7332C: from_stack_2 = Me.Item(from_stack_1)
  loc_B73331: FLdPr var_D0
  loc_B73334:  = Me.Value
  loc_B73339: FLdRfVar var_E0
  loc_B7333C: ConcatVar var_100
  loc_B73340: LitVarStr var_110, " AND CuenCtct = '"
  loc_B73345: ConcatVar var_120
  loc_B73349: FLdRfVar var_148
  loc_B7334C: FLdRfVar var_138
  loc_B7334F: LitVarStr var_134, "CuenCtct"
  loc_B73354: PopAdLdVar
  loc_B73355: FLdRfVar var_124
  loc_B73358: FLdPr Me
  loc_B7335B: MemLdPr global_64
  loc_B7335E:  = Me.Fields
  loc_B73363: FLdPr var_124
  loc_B73366: from_stack_2 = Me.Item(from_stack_1)
  loc_B7336B: FLdPr var_138
  loc_B7336E:  = Me.Value
  loc_B73373: FLdRfVar var_148
  loc_B73376: ConcatVar var_158
  loc_B7337A: LitVarStr var_168, "'"
  loc_B7337F: ConcatVar var_178
  loc_B73383: LitVarStr var_188, " AND PeriCtct = "
  loc_B73388: ConcatVar var_198
  loc_B7338C: FLdRfVar var_1C0
  loc_B7338F: FLdRfVar var_1B0
  loc_B73392: LitVarStr var_1AC, "PeriCtct"
  loc_B73397: PopAdLdVar
  loc_B73398: FLdRfVar var_19C
  loc_B7339B: FLdPr Me
  loc_B7339E: MemLdPr global_64
  loc_B733A1:  = Me.Fields
  loc_B733A6: FLdPr var_19C
  loc_B733A9: from_stack_2 = Me.Item(from_stack_1)
  loc_B733AE: FLdPr var_1B0
  loc_B733B1:  = Me.Value
  loc_B733B6: FLdRfVar var_1C0
  loc_B733B9: ConcatVar var_1D0
  loc_B733BD: LitVarStr var_1E0, " AND BimeCtct = "
  loc_B733C2: ConcatVar var_1F0
  loc_B733C6: FLdRfVar var_218
  loc_B733C9: FLdRfVar var_208
  loc_B733CC: LitVarStr var_204, "BimeCtct"
  loc_B733D1: PopAdLdVar
  loc_B733D2: FLdRfVar var_1F4
  loc_B733D5: FLdPr Me
  loc_B733D8: MemLdPr global_64
  loc_B733DB:  = Me.Fields
  loc_B733E0: FLdPr var_1F4
  loc_B733E3: from_stack_2 = Me.Item(from_stack_1)
  loc_B733E8: FLdPr var_208
  loc_B733EB:  = Me.Value
  loc_B733F0: FLdRfVar var_218
  loc_B733F3: ConcatVar var_228
  loc_B733F7: LitVarStr var_238, " AND NumeCtct = "
  loc_B733FC: ConcatVar var_248
  loc_B73400: FLdRfVar var_270
  loc_B73403: FLdRfVar var_260
  loc_B73406: LitVarStr var_25C, "NumeCtct"
  loc_B7340B: PopAdLdVar
  loc_B7340C: FLdRfVar var_24C
  loc_B7340F: FLdPr Me
  loc_B73412: MemLdPr global_64
  loc_B73415:  = Me.Fields
  loc_B7341A: FLdPr var_24C
  loc_B7341D: from_stack_2 = Me.Item(from_stack_1)
  loc_B73422: FLdPr var_260
  loc_B73425:  = Me.Value
  loc_B7342A: FLdRfVar var_270
  loc_B7342D: ConcatVar var_280
  loc_B73431: LitVarStr var_290, " AND MoviCtct = "
  loc_B73436: ConcatVar var_2A0
  loc_B7343A: FLdRfVar var_2C8
  loc_B7343D: FLdRfVar var_2B8
  loc_B73440: LitVarStr var_2B4, "MoviCtct"
  loc_B73445: PopAdLdVar
  loc_B73446: FLdRfVar var_2A4
  loc_B73449: FLdPr Me
  loc_B7344C: MemLdPr global_64
  loc_B7344F:  = Me.Fields
  loc_B73454: FLdPr var_2A4
  loc_B73457: from_stack_2 = Me.Item(from_stack_1)
  loc_B7345C: FLdPr var_2B8
  loc_B7345F:  = Me.Value
  loc_B73464: FLdRfVar var_2C8
  loc_B73467: ConcatVar var_2D8
  loc_B7346B: CStrVarVal var_A4
  loc_B7346F: Call EjecutarRsCls3(from_stack_1v)
  loc_B73474: FFree1Str var_A4
  loc_B73477: FFreeAd var_BC = "": var_D0 = "": var_124 = "": var_138 = "": var_19C = "": var_1B0 = "": var_1F4 = "": var_208 = "": var_24C = "": var_260 = "": var_2A4 = ""
  loc_B73492: FFreeVar var_E0 = "": var_100 = "": var_120 = "": var_148 = "": var_158 = "": var_178 = "": var_198 = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_218 = "": var_228 = "": var_248 = "": var_270 = "": var_280 = "": var_2A0 = "": var_2C8 = ""
  loc_B734B9: FLdRfVar var_B8
  loc_B734BC: FLdPr Me
  loc_B734BF: MemLdPr global_68
  loc_B734C2:  = Me.RecordCount
  loc_B734C7: ILdRf var_B8
  loc_B734CA: LitI4 0
  loc_B734CF: GtI4
  loc_B734D0: BranchF loc_B73A45
  loc_B734D3: FLdRfVar var_E0
  loc_B734D6: FLdRfVar var_D0
  loc_B734D9: LitVarStr var_CC, "CodiOfic"
  loc_B734DE: PopAdLdVar
  loc_B734DF: FLdRfVar var_BC
  loc_B734E2: FLdPr Me
  loc_B734E5: MemLdPr global_68
  loc_B734E8:  = Me.Fields
  loc_B734ED: FLdPr var_BC
  loc_B734F0: from_stack_2 = Me.Item(from_stack_1)
  loc_B734F5: FLdPr var_D0
  loc_B734F8:  = Me.Value
  loc_B734FD: FLdRfVar var_100
  loc_B73500: FLdRfVar var_138
  loc_B73503: LitVarStr var_F0, "CuenCtct"
  loc_B73508: PopAdLdVar
  loc_B73509: FLdRfVar var_124
  loc_B7350C: FLdPr Me
  loc_B7350F: MemLdPr global_68
  loc_B73512:  = Me.Fields
  loc_B73517: FLdPr var_124
  loc_B7351A: from_stack_2 = Me.Item(from_stack_1)
  loc_B7351F: FLdPr var_138
  loc_B73522:  = Me.Value
  loc_B73527: FLdRfVar var_120
  loc_B7352A: FLdRfVar var_1B0
  loc_B7352D: LitVarStr var_110, "PeriCtct"
  loc_B73532: PopAdLdVar
  loc_B73533: FLdRfVar var_19C
  loc_B73536: FLdPr Me
  loc_B73539: MemLdPr global_68
  loc_B7353C:  = Me.Fields
  loc_B73541: FLdPr var_19C
  loc_B73544: from_stack_2 = Me.Item(from_stack_1)
  loc_B73549: FLdPr var_1B0
  loc_B7354C:  = Me.Value
  loc_B73551: FLdRfVar var_148
  loc_B73554: FLdRfVar var_208
  loc_B73557: LitVarStr var_134, "BimeCtct"
  loc_B7355C: PopAdLdVar
  loc_B7355D: FLdRfVar var_1F4
  loc_B73560: FLdPr Me
  loc_B73563: MemLdPr global_68
  loc_B73566:  = Me.Fields
  loc_B7356B: FLdPr var_1F4
  loc_B7356E: from_stack_2 = Me.Item(from_stack_1)
  loc_B73573: FLdPr var_208
  loc_B73576:  = Me.Value
  loc_B7357B: FLdRfVar var_158
  loc_B7357E: FLdRfVar var_260
  loc_B73581: LitVarStr var_168, "NumeCtct"
  loc_B73586: PopAdLdVar
  loc_B73587: FLdRfVar var_24C
  loc_B7358A: FLdPr Me
  loc_B7358D: MemLdPr global_68
  loc_B73590:  = Me.Fields
  loc_B73595: FLdPr var_24C
  loc_B73598: from_stack_2 = Me.Item(from_stack_1)
  loc_B7359D: FLdPr var_260
  loc_B735A0:  = Me.Value
  loc_B735A5: FLdRfVar var_9E
  loc_B735A8: FLdRfVar var_158
  loc_B735AB: CI4Var
  loc_B735AD: FLdRfVar var_148
  loc_B735B0: CI2Var
  loc_B735B1: FLdRfVar var_120
  loc_B735B4: CI2Var
  loc_B735B5: FLdRfVar var_100
  loc_B735B8: CStrVarTmp
  loc_B735B9: FStStrNoPop var_A4
  loc_B735BC: FLdRfVar var_E0
  loc_B735BF: CI2Var
  loc_B735C0: from_stack_6v = BuscaMoviCtct(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_B735C5: FLdI2 var_9E
  loc_B735C8: CI4UI1
  loc_B735C9: FStR4 var_90
  loc_B735CC: FFree1Str var_A4
  loc_B735CF: FFreeAd var_BC = "": var_124 = "": var_19C = "": var_1F4 = "": var_24C = "": var_D0 = "": var_138 = "": var_1B0 = "": var_208 = ""
  loc_B735E6: FFreeVar var_E0 = "": var_100 = "": var_120 = "": var_148 = ""
  loc_B735F3: ILdRf var_90
  loc_B735F6: LitI4 1
  loc_B735FB: AddI4
  loc_B735FC: FStR4 var_90
  loc_B735FF: FLdRfVar var_658
  loc_B73602: FLdRfVar var_648
  loc_B73605: LitVarStr var_644, "CapiFacc"
  loc_B7360A: PopAdLdVar
  loc_B7360B: FLdRfVar var_634
  loc_B7360E: FLdPr Me
  loc_B73611: MemLdPr global_64
  loc_B73614:  = Me.Fields
  loc_B73619: FLdPr var_634
  loc_B7361C: from_stack_2 = Me.Item(from_stack_1)
  loc_B73621: FLdPr var_648
  loc_B73624:  = Me.Value
  loc_B73629: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_B7362C: LitStr " VALUES ("
  loc_B7362F: ConcatStr
  loc_B73630: CVarStr var_100
  loc_B73633: FLdRfVar var_E0
  loc_B73636: FLdRfVar var_D0
  loc_B73639: LitVarStr var_CC, "CodiOfic"
  loc_B7363E: PopAdLdVar
  loc_B7363F: FLdRfVar var_BC
  loc_B73642: FLdPr Me
  loc_B73645: MemLdPr global_68
  loc_B73648:  = Me.Fields
  loc_B7364D: FLdPr var_BC
  loc_B73650: from_stack_2 = Me.Item(from_stack_1)
  loc_B73655: FLdPr var_D0
  loc_B73658:  = Me.Value
  loc_B7365D: FLdRfVar var_E0
  loc_B73660: ConcatVar var_120
  loc_B73664: LitVarStr var_F0, ",'"
  loc_B73669: ConcatVar var_148
  loc_B7366D: FLdRfVar var_158
  loc_B73670: FLdRfVar var_138
  loc_B73673: LitVarStr var_110, "CuenCtct"
  loc_B73678: PopAdLdVar
  loc_B73679: FLdRfVar var_124
  loc_B7367C: FLdPr Me
  loc_B7367F: MemLdPr global_68
  loc_B73682:  = Me.Fields
  loc_B73687: FLdPr var_124
  loc_B7368A: from_stack_2 = Me.Item(from_stack_1)
  loc_B7368F: FLdPr var_138
  loc_B73692:  = Me.Value
  loc_B73697: FLdRfVar var_158
  loc_B7369A: ConcatVar var_178
  loc_B7369E: LitVarStr var_134, "',"
  loc_B736A3: ConcatVar var_198
  loc_B736A7: FLdRfVar var_1C0
  loc_B736AA: FLdRfVar var_1B0
  loc_B736AD: LitVarStr var_168, "PeriCtct"
  loc_B736B2: PopAdLdVar
  loc_B736B3: FLdRfVar var_19C
  loc_B736B6: FLdPr Me
  loc_B736B9: MemLdPr global_68
  loc_B736BC:  = Me.Fields
  loc_B736C1: FLdPr var_19C
  loc_B736C4: from_stack_2 = Me.Item(from_stack_1)
  loc_B736C9: FLdPr var_1B0
  loc_B736CC:  = Me.Value
  loc_B736D1: FLdRfVar var_1C0
  loc_B736D4: ConcatVar var_1D0
  loc_B736D8: LitVarStr var_188, ","
  loc_B736DD: ConcatVar var_1F0
  loc_B736E1: FLdRfVar var_218
  loc_B736E4: FLdRfVar var_208
  loc_B736E7: LitVarStr var_1AC, "BimeCtct"
  loc_B736EC: PopAdLdVar
  loc_B736ED: FLdRfVar var_1F4
  loc_B736F0: FLdPr Me
  loc_B736F3: MemLdPr global_68
  loc_B736F6:  = Me.Fields
  loc_B736FB: FLdPr var_1F4
  loc_B736FE: from_stack_2 = Me.Item(from_stack_1)
  loc_B73703: FLdPr var_208
  loc_B73706:  = Me.Value
  loc_B7370B: FLdRfVar var_218
  loc_B7370E: ConcatVar var_228
  loc_B73712: LitVarStr var_1E0, ","
  loc_B73717: ConcatVar var_248
  loc_B7371B: FLdRfVar var_270
  loc_B7371E: FLdRfVar var_260
  loc_B73721: LitVarStr var_204, "NumeCtct"
  loc_B73726: PopAdLdVar
  loc_B73727: FLdRfVar var_24C
  loc_B7372A: FLdPr Me
  loc_B7372D: MemLdPr global_68
  loc_B73730:  = Me.Fields
  loc_B73735: FLdPr var_24C
  loc_B73738: from_stack_2 = Me.Item(from_stack_1)
  loc_B7373D: FLdPr var_260
  loc_B73740:  = Me.Value
  loc_B73745: FLdRfVar var_270
  loc_B73748: ConcatVar var_280
  loc_B7374C: LitVarStr var_238, ","
  loc_B73751: ConcatVar var_2A0
  loc_B73755: ILdRf var_90
  loc_B73758: CVarI4
  loc_B7375C: ConcatVar var_2C8
  loc_B73760: LitVarStr var_290, ",0,0,0,0,'"
  loc_B73765: ConcatVar var_2D8
  loc_B73769: FLdRfVar var_2E8
  loc_B7376C: FLdRfVar var_2B8
  loc_B7376F: LitVarStr var_2B4, "TipoCtct"
  loc_B73774: PopAdLdVar
  loc_B73775: FLdRfVar var_2A4
  loc_B73778: FLdPr Me
  loc_B7377B: MemLdPr global_68
  loc_B7377E:  = Me.Fields
  loc_B73783: FLdPr var_2A4
  loc_B73786: from_stack_2 = Me.Item(from_stack_1)
  loc_B7378B: FLdPr var_2B8
  loc_B7378E:  = Me.Value
  loc_B73793: FLdRfVar var_2E8
  loc_B73796: ConcatVar var_2F8
  loc_B7379A: LitVarStr var_308, "',"
  loc_B7379F: ConcatVar var_318
  loc_B737A3: LitI4 1
  loc_B737A8: LitI4 1
  loc_B737AD: LitVarStr var_338, "'yyyy-mm-dd'"
  loc_B737B2: FStVarCopyObj var_348
  loc_B737B5: FLdRfVar var_348
  loc_B737B8: FLdRfVar var_98
  loc_B737BB: CVarRef
  loc_B737C0: ImpAdCallI2 Format$(, )
  loc_B737C5: CVarStr var_358
  loc_B737C8: ConcatVar var_368
  loc_B737CC: LitVarStr var_378, ","
  loc_B737D1: ConcatVar var_388
  loc_B737D5: LitI4 1
  loc_B737DA: LitI4 1
  loc_B737DF: LitVarStr var_3A8, "'yyyy-mm-dd'"
  loc_B737E4: FStVarCopyObj var_3B8
  loc_B737E7: FLdRfVar var_3B8
  loc_B737EA: FLdRfVar var_98
  loc_B737ED: CVarRef
  loc_B737F2: ImpAdCallI2 Format$(, )
  loc_B737F7: CVarStr var_3C8
  loc_B737FA: ConcatVar var_3D8
  loc_B737FE: LitVarStr var_3E8, ",NUll,0,"
  loc_B73803: ConcatVar var_3F8
  loc_B73807: FLdRfVar var_420
  loc_B7380A: FLdRfVar var_410
  loc_B7380D: LitVarStr var_40C, "PeriInfo"
  loc_B73812: PopAdLdVar
  loc_B73813: FLdRfVar var_3FC
  loc_B73816: FLdPr Me
  loc_B73819: MemLdPr global_68
  loc_B7381C:  = Me.Fields
  loc_B73821: FLdPr var_3FC
  loc_B73824: from_stack_2 = Me.Item(from_stack_1)
  loc_B73829: FLdPr var_410
  loc_B7382C:  = Me.Value
  loc_B73831: FLdRfVar var_420
  loc_B73834: ConcatVar var_430
  loc_B73838: LitVarStr var_440, ",'"
  loc_B7383D: ConcatVar var_450
  loc_B73841: FLdRfVar var_478
  loc_B73844: FLdRfVar var_468
  loc_B73847: LitVarStr var_464, "CodiConc"
  loc_B7384C: PopAdLdVar
  loc_B7384D: FLdRfVar var_454
  loc_B73850: FLdPr Me
  loc_B73853: MemLdPr global_68
  loc_B73856:  = Me.Fields
  loc_B7385B: FLdPr var_454
  loc_B7385E: from_stack_2 = Me.Item(from_stack_1)
  loc_B73863: FLdPr var_468
  loc_B73866:  = Me.Value
  loc_B7386B: FLdRfVar var_478
  loc_B7386E: ConcatVar var_488
  loc_B73872: LitVarStr var_498, "',"
  loc_B73877: ConcatVar var_4A8
  loc_B7387B: FLdRfVar var_4D0
  loc_B7387E: FLdRfVar var_4C0
  loc_B73881: LitVarStr var_4BC, "CodiFapa"
  loc_B73886: PopAdLdVar
  loc_B73887: FLdRfVar var_4AC
  loc_B7388A: FLdPr Me
  loc_B7388D: MemLdPr global_68
  loc_B73890:  = Me.Fields
  loc_B73895: FLdPr var_4AC
  loc_B73898: from_stack_2 = Me.Item(from_stack_1)
  loc_B7389D: FLdPr var_4C0
  loc_B738A0:  = Me.Value
  loc_B738A5: FLdRfVar var_4D0
  loc_B738A8: ConcatVar var_4E0
  loc_B738AC: LitVarStr var_4F0, ","
  loc_B738B1: ConcatVar var_500
  loc_B738B5: FLdRfVar var_528
  loc_B738B8: FLdRfVar var_518
  loc_B738BB: LitVarStr var_514, "CuotDefa"
  loc_B738C0: PopAdLdVar
  loc_B738C1: FLdRfVar var_504
  loc_B738C4: FLdPr Me
  loc_B738C7: MemLdPr global_64
  loc_B738CA:  = Me.Fields
  loc_B738CF: FLdPr var_504
  loc_B738D2: from_stack_2 = Me.Item(from_stack_1)
  loc_B738D7: FLdPr var_518
  loc_B738DA:  = Me.Value
  loc_B738DF: FLdRfVar var_528
  loc_B738E2: ConcatVar var_538
  loc_B738E6: LitVarStr var_548, ","
  loc_B738EB: ConcatVar var_558
  loc_B738EF: FLdRfVar var_580
  loc_B738F2: FLdRfVar var_570
  loc_B738F5: LitVarStr var_56C, "NumeApre"
  loc_B738FA: PopAdLdVar
  loc_B738FB: FLdRfVar var_55C
  loc_B738FE: FLdPr Me
  loc_B73901: MemLdPr global_68
  loc_B73904:  = Me.Fields
  loc_B73909: FLdPr var_55C
  loc_B7390C: from_stack_2 = Me.Item(from_stack_1)
  loc_B73911: FLdPr var_570
  loc_B73914:  = Me.Value
  loc_B73919: FLdRfVar var_580
  loc_B7391C: ConcatVar var_590
  loc_B73920: LitVarStr var_5A0, ",11,'"
  loc_B73925: ConcatVar var_5B0
  loc_B73929: ILdRf var_88
  loc_B7392C: CVarStr var_5C0
  loc_B7392F: ConcatVar var_5D0
  loc_B73933: LitVarStr var_5E0, "','',0,0,'"
  loc_B73938: ConcatVar var_5F0
  loc_B7393C: ILdRf var_8C
  loc_B7393F: CVarStr var_600
  loc_B73942: ConcatVar var_610
  loc_B73946: LitVarStr var_620, "',0,"
  loc_B7394B: ConcatVar var_630
  loc_B7394F: LitI4 0
  loc_B73954: LitI4 -1
  loc_B73959: LitI4 1
  loc_B7395E: LitStr "."
  loc_B73961: LitStr ","
  loc_B73964: FLdRfVar var_658
  loc_B73967: CStrVarTmp
  loc_B73968: FStStrNoPop var_A4
  loc_B7396B: ImpAdCallI2 Replace(, , , , , )
  loc_B73970: CVarStr var_668
  loc_B73973: ConcatVar var_678
  loc_B73977: LitVarStr var_688, ",'"
  loc_B7397C: ConcatVar var_698
  loc_B73980: ImpAdLdI4 MemVar_C3D03C
  loc_B73983: CVarStr var_6A8
  loc_B73986: ConcatVar var_6B8
  loc_B7398A: LitVarStr var_6C8, "');"
  loc_B7398F: ConcatVar var_6D8
  loc_B73993: CStrVarVal var_A8
  loc_B73997: Call EjecutarRsCls(from_stack_1v)
  loc_B7399C: FFreeStr var_A4 = ""
  loc_B739A3: FFreeAd var_BC = "": var_D0 = "": var_124 = "": var_138 = "": var_19C = "": var_1B0 = "": var_1F4 = "": var_208 = "": var_24C = "": var_260 = "": var_2A4 = "": var_2B8 = "": var_3FC = "": var_410 = "": var_454 = "": var_468 = "": var_4AC = "": var_4C0 = "": var_504 = "": var_518 = "": var_55C = "": var_570 = "": var_634 = ""
  loc_B739D6: FFreeVar var_430 = "": var_450 = "": var_478 = "": var_488 = "": var_4A8 = "": var_4D0 = "": var_4E0 = "": var_500 = "": var_528 = "": var_538 = "": var_558 = "": var_580 = "": var_590 = "": var_5B0 = "": var_5D0 = "": var_5F0 = "": var_610 = "": var_658 = "": var_630 = "": var_668 = "": var_678 = "": var_698 = "": var_6B8 = "": var_6D8 = "": var_100 = "": var_E0 = "": var_120 = "": var_148 = "": var_158 = "": var_178 = "": var_198 = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_218 = "": var_228 = "": var_248 = "": var_270 = "": var_280 = "": var_2A0 = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2F8 = "": var_348 = "": var_318 = "": var_358 = "": var_368 = "": var_3B8 = "": var_388 = "": var_3C8 = "": var_3D8 = "": var_3F8 = ""
  loc_B73A45: FLdRfVar var_E0
  loc_B73A48: FLdRfVar var_D0
  loc_B73A4B: LitVarStr var_CC, "CapiFacc"
  loc_B73A50: PopAdLdVar
  loc_B73A51: FLdRfVar var_BC
  loc_B73A54: FLdPr Me
  loc_B73A57: MemLdPr global_64
  loc_B73A5A:  = Me.Fields
  loc_B73A5F: FLdPr var_BC
  loc_B73A62: from_stack_2 = Me.Item(from_stack_1)
  loc_B73A67: FLdPr var_D0
  loc_B73A6A:  = Me.Value
  loc_B73A6F: LitStr " UPDATE facictacte SET SaldFacc = SaldFacc - '"
  loc_B73A72: LitI4 0
  loc_B73A77: LitI4 -1
  loc_B73A7C: LitI4 1
  loc_B73A81: LitStr "."
  loc_B73A84: LitStr ","
  loc_B73A87: FLdRfVar var_E0
  loc_B73A8A: FnCDblVar
  loc_B73A8C: CStrR8
  loc_B73A8E: FStStrNoPop var_A4
  loc_B73A91: ImpAdCallI2 Replace(, , , , , )
  loc_B73A96: FStStrNoPop var_A8
  loc_B73A99: ConcatStr
  loc_B73A9A: FStStrNoPop var_AC
  loc_B73A9D: LitStr "' WHERE CodiFapa = "
  loc_B73AA0: ConcatStr
  loc_B73AA1: CVarStr var_120
  loc_B73AA4: FLdRfVar var_100
  loc_B73AA7: FLdRfVar var_138
  loc_B73AAA: LitVarStr var_F0, "CodiFapa"
  loc_B73AAF: PopAdLdVar
  loc_B73AB0: FLdRfVar var_124
  loc_B73AB3: FLdPr Me
  loc_B73AB6: MemLdPr global_64
  loc_B73AB9:  = Me.Fields
  loc_B73ABE: FLdPr var_124
  loc_B73AC1: from_stack_2 = Me.Item(from_stack_1)
  loc_B73AC6: FLdPr var_138
  loc_B73AC9:  = Me.Value
  loc_B73ACE: FLdRfVar var_100
  loc_B73AD1: ConcatVar var_148
  loc_B73AD5: LitVarStr var_110, " AND CuotDefa = "
  loc_B73ADA: ConcatVar var_158
  loc_B73ADE: FLdRfVar var_178
  loc_B73AE1: FLdRfVar var_1B0
  loc_B73AE4: LitVarStr var_134, "CuotDefa"
  loc_B73AE9: PopAdLdVar
  loc_B73AEA: FLdRfVar var_19C
  loc_B73AED: FLdPr Me
  loc_B73AF0: MemLdPr global_64
  loc_B73AF3:  = Me.Fields
  loc_B73AF8: FLdPr var_19C
  loc_B73AFB: from_stack_2 = Me.Item(from_stack_1)
  loc_B73B00: FLdPr var_1B0
  loc_B73B03:  = Me.Value
  loc_B73B08: FLdRfVar var_178
  loc_B73B0B: ConcatVar var_198
  loc_B73B0F: LitVarStr var_168, " AND CodiOfic = "
  loc_B73B14: ConcatVar var_1C0
  loc_B73B18: FLdRfVar var_1D0
  loc_B73B1B: FLdRfVar var_208
  loc_B73B1E: LitVarStr var_188, "CodiOfic"
  loc_B73B23: PopAdLdVar
  loc_B73B24: FLdRfVar var_1F4
  loc_B73B27: FLdPr Me
  loc_B73B2A: MemLdPr global_64
  loc_B73B2D:  = Me.Fields
  loc_B73B32: FLdPr var_1F4
  loc_B73B35: from_stack_2 = Me.Item(from_stack_1)
  loc_B73B3A: FLdPr var_208
  loc_B73B3D:  = Me.Value
  loc_B73B42: FLdRfVar var_1D0
  loc_B73B45: ConcatVar var_1F0
  loc_B73B49: LitVarStr var_1AC, " AND CuenCtct = '"
  loc_B73B4E: ConcatVar var_218
  loc_B73B52: FLdRfVar var_228
  loc_B73B55: FLdRfVar var_260
  loc_B73B58: LitVarStr var_1E0, "CuenCtct"
  loc_B73B5D: PopAdLdVar
  loc_B73B5E: FLdRfVar var_24C
  loc_B73B61: FLdPr Me
  loc_B73B64: MemLdPr global_64
  loc_B73B67:  = Me.Fields
  loc_B73B6C: FLdPr var_24C
  loc_B73B6F: from_stack_2 = Me.Item(from_stack_1)
  loc_B73B74: FLdPr var_260
  loc_B73B77:  = Me.Value
  loc_B73B7C: FLdRfVar var_228
  loc_B73B7F: ConcatVar var_248
  loc_B73B83: LitVarStr var_204, "' AND PeriCtct = "
  loc_B73B88: ConcatVar var_270
  loc_B73B8C: FLdRfVar var_280
  loc_B73B8F: FLdRfVar var_2B8
  loc_B73B92: LitVarStr var_238, "PeriCtct"
  loc_B73B97: PopAdLdVar
  loc_B73B98: FLdRfVar var_2A4
  loc_B73B9B: FLdPr Me
  loc_B73B9E: MemLdPr global_64
  loc_B73BA1:  = Me.Fields
  loc_B73BA6: FLdPr var_2A4
  loc_B73BA9: from_stack_2 = Me.Item(from_stack_1)
  loc_B73BAE: FLdPr var_2B8
  loc_B73BB1:  = Me.Value
  loc_B73BB6: FLdRfVar var_280
  loc_B73BB9: ConcatVar var_2A0
  loc_B73BBD: LitVarStr var_25C, " AND BimeCtct = "
  loc_B73BC2: ConcatVar var_2C8
  loc_B73BC6: FLdRfVar var_2D8
  loc_B73BC9: FLdRfVar var_410
  loc_B73BCC: LitVarStr var_290, "BimeCtct"
  loc_B73BD1: PopAdLdVar
  loc_B73BD2: FLdRfVar var_3FC
  loc_B73BD5: FLdPr Me
  loc_B73BD8: MemLdPr global_64
  loc_B73BDB:  = Me.Fields
  loc_B73BE0: FLdPr var_3FC
  loc_B73BE3: from_stack_2 = Me.Item(from_stack_1)
  loc_B73BE8: FLdPr var_410
  loc_B73BEB:  = Me.Value
  loc_B73BF0: FLdRfVar var_2D8
  loc_B73BF3: ConcatVar var_2E8
  loc_B73BF7: LitVarStr var_2B4, " AND NumeCtct = "
  loc_B73BFC: ConcatVar var_2F8
  loc_B73C00: FLdRfVar var_318
  loc_B73C03: FLdRfVar var_468
  loc_B73C06: LitVarStr var_308, "NumeCtct"
  loc_B73C0B: PopAdLdVar
  loc_B73C0C: FLdRfVar var_454
  loc_B73C0F: FLdPr Me
  loc_B73C12: MemLdPr global_68
  loc_B73C15:  = Me.Fields
  loc_B73C1A: FLdPr var_454
  loc_B73C1D: from_stack_2 = Me.Item(from_stack_1)
  loc_B73C22: FLdPr var_468
  loc_B73C25:  = Me.Value
  loc_B73C2A: FLdRfVar var_318
  loc_B73C2D: ConcatVar var_348
  loc_B73C31: LitVarStr var_328, " AND MoviCtct = 1;"
  loc_B73C36: ConcatVar var_358
  loc_B73C3A: CStrVarVal var_B0
  loc_B73C3E: Call EjecutarRsCls(from_stack_1v)
  loc_B73C43: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B73C4E: FFreeAd var_BC = "": var_D0 = "": var_124 = "": var_138 = "": var_19C = "": var_1B0 = "": var_1F4 = "": var_208 = "": var_24C = "": var_260 = "": var_2A4 = "": var_2B8 = "": var_3FC = "": var_410 = "": var_454 = ""
  loc_B73C71: FFreeVar var_E0 = "": var_120 = "": var_100 = "": var_148 = "": var_158 = "": var_178 = "": var_198 = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_218 = "": var_228 = "": var_248 = "": var_270 = "": var_280 = "": var_2A0 = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2F8 = "": var_318 = "": var_348 = ""
  loc_B73CA2: FLdPr Me
  loc_B73CA5: MemLdPr global_64
  loc_B73CA8: Me.MoveNext
  loc_B73CAD: Branch loc_B732F5
  loc_B73CB0: LitStr "UPDATE detafapa SET EstaDefa = 'Credito Manual', FepaDefa = "
  loc_B73CB3: LitI4 1
  loc_B73CB8: LitI4 1
  loc_B73CBD: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_B73CC2: FStVarCopyObj var_E0
  loc_B73CC5: FLdRfVar var_E0
  loc_B73CC8: FLdRfVar var_98
  loc_B73CCB: CVarRef
  loc_B73CD0: ImpAdCallI2 Format$(, )
  loc_B73CD5: FStStrNoPop var_A4
  loc_B73CD8: ConcatStr
  loc_B73CD9: FStStrNoPop var_A8
  loc_B73CDC: LitStr " WHERE CodiFapa = "
  loc_B73CDF: ConcatStr
  loc_B73CE0: FStStrNoPop var_AC
  loc_B73CE3: ILdRf lCodiFapa
  loc_B73CE6: CStrI4
  loc_B73CE8: FStStrNoPop var_B0
  loc_B73CEB: ConcatStr
  loc_B73CEC: FStStrNoPop var_B4
  loc_B73CEF: LitStr " And CuotDefa = "
  loc_B73CF2: ConcatStr
  loc_B73CF3: FStStrNoPop var_6DC
  loc_B73CF6: FLdI2 iCuotaCredito
  loc_B73CF9: CStrUI1
  loc_B73CFB: FStStrNoPop var_6E0
  loc_B73CFE: ConcatStr
  loc_B73CFF: FStStrNoPop var_6E4
  loc_B73D02: LitStr ";"
  loc_B73D05: ConcatStr
  loc_B73D06: FStStrNoPop var_6E8
  loc_B73D09: Call EjecutarRsCls(from_stack_1v)
  loc_B73D0E: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_6DC = "": var_6E0 = "": var_6E4 = ""
  loc_B73D23: FFree1Var var_E0 = ""
  loc_B73D26: FLdRfVar var_9E
  loc_B73D29: ILdRf lCodiFapa
  loc_B73D2C: FLdRfVar var_9C
  loc_B73D2F: NewIfNullPr clsdetafapa
  loc_B73D32: from_stack_2v = clsdetafapa.BuscaCuotasImpagas(from_stack_1v)
  loc_B73D37: FLdI2 var_9E
  loc_B73D3A: LitI2_Byte &HFF
  loc_B73D3C: EqI2
  loc_B73D3D: BranchF loc_B73DAF
  loc_B73D40: LitStr "UPDATE facipago SET FepaFapa = "
  loc_B73D43: LitI4 1
  loc_B73D48: LitI4 1
  loc_B73D4D: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_B73D52: FStVarCopyObj var_E0
  loc_B73D55: FLdRfVar var_E0
  loc_B73D58: FLdRfVar var_98
  loc_B73D5B: CVarRef
  loc_B73D60: ImpAdCallI2 Format$(, )
  loc_B73D65: FStStrNoPop var_A4
  loc_B73D68: ConcatStr
  loc_B73D69: FStStrNoPop var_A8
  loc_B73D6C: LitStr ", EstaFapa = 'Anulada', BajaUsua = '"
  loc_B73D6F: ConcatStr
  loc_B73D70: FStStrNoPop var_AC
  loc_B73D73: ImpAdLdI4 MemVar_C3D03C
  loc_B73D76: ConcatStr
  loc_B73D77: FStStrNoPop var_B0
  loc_B73D7A: LitStr "', BajaFeho = now(), BajaMoti = 'Credito Manual' WHERE CodiFapa = "
  loc_B73D7D: ConcatStr
  loc_B73D7E: FStStrNoPop var_B4
  loc_B73D81: ILdRf lCodiFapa
  loc_B73D84: CStrI4
  loc_B73D86: FStStrNoPop var_6DC
  loc_B73D89: ConcatStr
  loc_B73D8A: FStStrNoPop var_6E0
  loc_B73D8D: LitStr ";"
  loc_B73D90: ConcatStr
  loc_B73D91: FStStrNoPop var_6E4
  loc_B73D94: Call EjecutarRsCls(from_stack_1v)
  loc_B73D99: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_6DC = "": var_6E0 = ""
  loc_B73DAC: FFree1Var var_E0 = ""
  loc_B73DAF: LitStr "COMMIT;"
  loc_B73DB2: Call EjecutarRsCls(from_stack_1v)
  loc_B73DB7: ExitProcHresult
  loc_B73DB8: LitStr "rollback"
  loc_B73DBB: Call EjecutarRsCls(from_stack_1v)
  loc_B73DC0: LitI4 0
  loc_B73DC5: LitStr "ERROR: NO SE generó el aforo en la cuenta corriente. Verifique..."
  loc_B73DC8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B73DCD: ExitProcHresult
End Sub

Private Function Proc_298_211_970FEC() '970FEC
  'Data Table: 4E07A8
  loc_970FC8: LitStr "Primary"
  loc_970FCB: FLdPr Me
  loc_970FCE: LateIdLdVar var_94 DispID_4 0
  loc_970FD5: CastAdVar Me
  loc_970FD9: FStAdFunc var_98
  loc_970FDC: FLdPr var_98
  loc_970FE4: FFree1Ad var_98
  loc_970FE7: FFree1Var var_94 = ""
  loc_970FEA: ExitProcHresult
End Function

Private Function Proc_298_212_967F7C(arg_C) '967F7C
  'Data Table: 4E07A8
  loc_967F60: ILdI4 arg_C
  loc_967F63: FStStrCopy var_88
  loc_967F66: ILdRf var_88
  loc_967F69: LitStr "Primary"
  loc_967F6C: EqStr
  loc_967F6E: BranchF loc_967F7B
  loc_967F71: FLdPr Me
  loc_967F74: MemLdStr RsFrm
  loc_967F77: IStAd
  loc_967F7B: ExitProcHresult
End Function
