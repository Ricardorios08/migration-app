VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clstraninmu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0E664
  'Data Table: 4395B0
  loc_A0E628: FLdRfVar var_8C
  loc_A0E62B: FLdRfVar var_88
  loc_A0E62E: FLdPr Me
  loc_A0E631: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A0E636: FLdPr var_88
  loc_A0E639:  = Me.RecordCount
  loc_A0E63E: ILdRf var_8C
  loc_A0E641: LitI4 0
  loc_A0E646: GtI4
  loc_A0E647: FFree1Ad var_88
  loc_A0E64A: BranchF loc_A0E663
  loc_A0E64D: FLdRfVar var_88
  loc_A0E650: FLdPr Me
  loc_A0E653: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A0E658: FLdPr var_88
  loc_A0E65B: Me.MoveFirst
  loc_A0E660: FFree1Ad var_88
  loc_A0E663: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0BE24
  'Data Table: 4395B0
  loc_A0BDE8: FLdRfVar var_8C
  loc_A0BDEB: FLdRfVar var_88
  loc_A0BDEE: FLdPr Me
  loc_A0BDF1: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A0BDF6: FLdPr var_88
  loc_A0BDF9:  = Me.RecordCount
  loc_A0BDFE: ILdRf var_8C
  loc_A0BE01: LitI4 0
  loc_A0BE06: GtI4
  loc_A0BE07: FFree1Ad var_88
  loc_A0BE0A: BranchF loc_A0BE23
  loc_A0BE0D: FLdRfVar var_88
  loc_A0BE10: FLdPr Me
  loc_A0BE13: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A0BE18: FLdPr var_88
  loc_A0BE1B: Me.MoveLast
  loc_A0BE20: FFree1Ad var_88
  loc_A0BE23: ExitProcHresult
End Sub

Public Sub MoveNext() 'A86770
  'Data Table: 4395B0
  loc_A866D8: FLdRfVar var_8A
  loc_A866DB: FLdRfVar var_88
  loc_A866DE: FLdPr Me
  loc_A866E1: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A866E6: FLdPr var_88
  loc_A866E9:  = Me.EOF
  loc_A866EE: FLdI2 var_8A
  loc_A866F1: NotI4
  loc_A866F2: FFree1Ad var_88
  loc_A866F5: BranchF loc_A8670E
  loc_A866F8: FLdRfVar var_88
  loc_A866FB: FLdPr Me
  loc_A866FE: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A86703: FLdPr var_88
  loc_A86706: Me.MoveNext
  loc_A8670B: FFree1Ad var_88
  loc_A8670E: FLdRfVar var_8A
  loc_A86711: FLdRfVar var_88
  loc_A86714: FLdPr Me
  loc_A86717: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A8671C: FLdPr var_88
  loc_A8671F:  = Me.EOF
  loc_A86724: FLdI2 var_8A
  loc_A86727: FLdRfVar var_94
  loc_A8672A: FLdRfVar var_90
  loc_A8672D: FLdPr Me
  loc_A86730: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A86735: FLdPr var_90
  loc_A86738:  = Me.RecordCount
  loc_A8673D: ILdRf var_94
  loc_A86740: LitI4 0
  loc_A86745: GtI4
  loc_A86746: AndI4
  loc_A86747: FFreeAd var_88 = ""
  loc_A8674E: BranchF loc_A8676C
  loc_A86751: ImpAdCallFPR4 Beep()
  loc_A86756: FLdRfVar var_88
  loc_A86759: FLdPr Me
  loc_A8675C: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A86761: FLdPr var_88
  loc_A86764: Me.MoveLast
  loc_A86769: FFree1Ad var_88
  loc_A8676C: ExitProcHresult
  loc_A8676D: FStStr var_88
End Sub

Public Sub MovePrevious() 'A866A0
  'Data Table: 4395B0
  loc_A86608: FLdRfVar var_8A
  loc_A8660B: FLdRfVar var_88
  loc_A8660E: FLdPr Me
  loc_A86611: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A86616: FLdPr var_88
  loc_A86619:  = Me.BOF
  loc_A8661E: FLdI2 var_8A
  loc_A86621: NotI4
  loc_A86622: FFree1Ad var_88
  loc_A86625: BranchF loc_A8663E
  loc_A86628: FLdRfVar var_88
  loc_A8662B: FLdPr Me
  loc_A8662E: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A86633: FLdPr var_88
  loc_A86636: Me.MovePrevious
  loc_A8663B: FFree1Ad var_88
  loc_A8663E: FLdRfVar var_8A
  loc_A86641: FLdRfVar var_88
  loc_A86644: FLdPr Me
  loc_A86647: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A8664C: FLdPr var_88
  loc_A8664F:  = Me.BOF
  loc_A86654: FLdI2 var_8A
  loc_A86657: FLdRfVar var_94
  loc_A8665A: FLdRfVar var_90
  loc_A8665D: FLdPr Me
  loc_A86660: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A86665: FLdPr var_90
  loc_A86668:  = Me.RecordCount
  loc_A8666D: ILdRf var_94
  loc_A86670: LitI4 0
  loc_A86675: GtI4
  loc_A86676: AndI4
  loc_A86677: FFreeAd var_88 = ""
  loc_A8667E: BranchF loc_A8669C
  loc_A86681: ImpAdCallFPR4 Beep()
  loc_A86686: FLdRfVar var_88
  loc_A86689: FLdPr Me
  loc_A8668C: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A86691: FLdPr var_88
  loc_A86694: Me.MoveFirst
  loc_A86699: FFree1Ad var_88
  loc_A8669C: ExitProcHresult
  loc_A8669D: CI4R8
End Sub

Public Property Get EOF() '9F8818
  'Data Table: 4395B0
  loc_9F87F0: FLdRfVar var_8E
  loc_9F87F3: FLdRfVar var_8C
  loc_9F87F6: FLdPr Me
  loc_9F87F9: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9F87FE: FLdPr var_8C
  loc_9F8801:  = Me.EOF
  loc_9F8806: FLdI2 var_8E
  loc_9F8809: FStI2 var_86
  loc_9F880C: FFree1Ad var_8C
  loc_9F880F: ExitProcCbHresult
  loc_9F8815: FLdPr var_90
End Sub

Public Property Get BOF() '9F87BC
  'Data Table: 4395B0
  loc_9F8794: FLdRfVar var_8E
  loc_9F8797: FLdRfVar var_8C
  loc_9F879A: FLdPr Me
  loc_9F879D: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9F87A2: FLdPr var_8C
  loc_9F87A5:  = Me.BOF
  loc_9F87AA: FLdI2 var_8E
  loc_9F87AD: FStI2 var_86
  loc_9F87B0: FFree1Ad var_8C
  loc_9F87B3: ExitProcCbHresult
  loc_9F87B9: FStAdFunc var_90
End Sub

Public Sub Sort(sOrden) '9E217C
  'Data Table: 4395B0
  loc_9E2160: ILdI4 sOrden
  loc_9E2163: FLdRfVar var_88
  loc_9E2166: FLdPr Me
  loc_9E2169: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9E216E: FLdPr var_88
  loc_9E2171: Me.Sort = from_stack_1
  loc_9E2176: FFree1Ad var_88
  loc_9E2179: ExitProcHresult
  loc_9E217A: FFreeAd  = ""
End Sub

Public Sub Find(sCriterio) '9F8704
  'Data Table: 4395B0
  loc_9F86DC: LitVar_Missing var_98
  loc_9F86DF: PopAdLdVar
  loc_9F86E0: LitI4 1
  loc_9F86E5: LitI4 0
  loc_9F86EA: ILdI4 sCriterio
  loc_9F86ED: FLdRfVar var_88
  loc_9F86F0: FLdPr Me
  loc_9F86F3: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9F86F8: FLdPr var_88
  loc_9F86FB: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F8700: FFree1Ad var_88
  loc_9F8703: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F86A8
  'Data Table: 4395B0
  loc_9F8680: FLdRfVar var_90
  loc_9F8683: FLdRfVar var_8C
  loc_9F8686: FLdPr Me
  loc_9F8689: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9F868E: FLdPr var_8C
  loc_9F8691:  = Me.AbsolutePosition
  loc_9F8696: ILdRf var_90
  loc_9F8699: FStR4 var_88
  loc_9F869C: FFree1Ad var_8C
  loc_9F869F: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F864C
  'Data Table: 4395B0
  loc_9F8624: FLdRfVar var_90
  loc_9F8627: FLdRfVar var_8C
  loc_9F862A: FLdPr Me
  loc_9F862D: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9F8632: FLdPr var_8C
  loc_9F8635:  = Me.RecordCount
  loc_9F863A: ILdRf var_90
  loc_9F863D: FStR4 var_88
  loc_9F8640: FFree1Ad var_8C
  loc_9F8643: ExitProcCbHresult
  loc_9F8649: NewIfNullAd
End Sub

Public Sub AddNew(CodiInmu, CucuVend, CucuComp, FeesTrin, ExpeTrin, ObseTrin, BajaPropietario) 'B889D0
  'Data Table: 4395B0
  loc_B884E8: ILdRf CucuVend
  loc_B884EB: FStStrCopy var_88
  loc_B884EE: ILdRf CucuComp
  loc_B884F1: FStStrCopy var_8C
  loc_B884F4: ILdRf ObseTrin
  loc_B884F7: FStStrCopy var_90
  loc_B884FA: ILdRf BajaPropietario
  loc_B884FD: FStStrCopy var_94
  loc_B88500: FLdRfVar var_A2
  loc_B88503: ILdRf CodiInmu
  loc_B88506: from_stack_2v = NuevoRegistro(from_stack_1v)
  loc_B8850B: FLdI2 var_A2
  loc_B8850E: FStI2 var_9E
  loc_B88511: FLdRfVar var_A8
  loc_B88514: FLdI2 var_9E
  loc_B88517: ILdRf CodiInmu
  loc_B8851A: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_B8851F: ILdRf var_A8
  loc_B88522: LitStr vbNullString
  loc_B88525: NeStr
  loc_B88527: FFree1Str var_A8
  loc_B8852A: BranchF loc_B88538
  loc_B8852D: LitStr "La TRANSFERENCIA del INMUEBLE YA EXISTE. Reintente..."
  loc_B88530: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B88535: Branch loc_B889CD
  loc_B88538: LitStr "START TRANSACTION; INSERT INTO traninmu (CodiInmu, NumeTrin, CucuVend, CucuComp, FeesTrin, ExpeTrin, ObseTrin, AltaUsua,AltaFeho) "
  loc_B8853B: LitStr "VALUES ("
  loc_B8853E: ConcatStr
  loc_B8853F: FStStrNoPop var_A8
  loc_B88542: ILdRf CodiInmu
  loc_B88545: CStrI4
  loc_B88547: FStStrNoPop var_AC
  loc_B8854A: ConcatStr
  loc_B8854B: FStStrNoPop var_B0
  loc_B8854E: LitStr ","
  loc_B88551: ConcatStr
  loc_B88552: FStStrNoPop var_B4
  loc_B88555: FLdI2 var_9E
  loc_B88558: CStrUI1
  loc_B8855A: FStStrNoPop var_B8
  loc_B8855D: ConcatStr
  loc_B8855E: FStStrNoPop var_BC
  loc_B88561: LitStr ",'"
  loc_B88564: ConcatStr
  loc_B88565: FStStrNoPop var_C0
  loc_B88568: ILdRf var_88
  loc_B8856B: ConcatStr
  loc_B8856C: FStStrNoPop var_C4
  loc_B8856F: LitStr "','"
  loc_B88572: ConcatStr
  loc_B88573: FStStrNoPop var_C8
  loc_B88576: ILdRf var_8C
  loc_B88579: ConcatStr
  loc_B8857A: FStStrNoPop var_CC
  loc_B8857D: LitStr "',"
  loc_B88580: ConcatStr
  loc_B88581: FStStrNoPop var_100
  loc_B88584: LitI4 1
  loc_B88589: LitI4 1
  loc_B8858E: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_B88593: FStVarCopyObj var_FC
  loc_B88596: FLdRfVar var_FC
  loc_B88599: FLdRfVar FeesTrin
  loc_B8859C: CVarRef
  loc_B885A1: ImpAdCallI2 Format$(, )
  loc_B885A6: FStStrNoPop var_104
  loc_B885A9: ConcatStr
  loc_B885AA: FStStrNoPop var_108
  loc_B885AD: LitStr ",'"
  loc_B885B0: ConcatStr
  loc_B885B1: FStStrNoPop var_10C
  loc_B885B4: ILdRf var_90
  loc_B885B7: ConcatStr
  loc_B885B8: FStStrNoPop var_110
  loc_B885BB: LitStr "','"
  loc_B885BE: ConcatStr
  loc_B885BF: FStStrNoPop var_114
  loc_B885C2: ILdRf var_94
  loc_B885C5: ConcatStr
  loc_B885C6: FStStrNoPop var_118
  loc_B885C9: LitStr "','"
  loc_B885CC: ConcatStr
  loc_B885CD: FStStrNoPop var_11C
  loc_B885D0: ImpAdLdI4 MemVar_D9302C
  loc_B885D3: ConcatStr
  loc_B885D4: FStStrNoPop var_120
  loc_B885D7: LitStr "',now());"
  loc_B885DA: ConcatStr
  loc_B885DB: FStStr var_9C
  loc_B885DE: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_B88607: FFree1Var var_FC = ""
  loc_B8860A: ILdRf var_9C
  loc_B8860D: LitStr " UPDATE inmueble SET CucuPers = '"
  loc_B88610: ConcatStr
  loc_B88611: FStStrNoPop var_A8
  loc_B88614: ILdRf var_8C
  loc_B88617: ConcatStr
  loc_B88618: FStStrNoPop var_AC
  loc_B8861B: LitStr "', FeesInmu = '"
  loc_B8861E: ConcatStr
  loc_B8861F: FStStrNoPop var_B0
  loc_B88622: LitI4 1
  loc_B88627: LitI4 1
  loc_B8862C: LitVarStr var_EC, "yyyy-mm-dd"
  loc_B88631: FStVarCopyObj var_FC
  loc_B88634: FLdRfVar var_FC
  loc_B88637: FLdRfVar FeesTrin
  loc_B8863A: CVarRef
  loc_B8863F: ImpAdCallI2 Format$(, )
  loc_B88644: FStStrNoPop var_B4
  loc_B88647: ConcatStr
  loc_B88648: FStStrNoPop var_B8
  loc_B8864B: LitStr "', ObseInmu =  concat(ObseInmu,' "
  loc_B8864E: ConcatStr
  loc_B8864F: FStStrNoPop var_BC
  loc_B88652: ILdRf var_94
  loc_B88655: ConcatStr
  loc_B88656: FStStrNoPop var_C0
  loc_B88659: LitStr "'), ModiUsua = '"
  loc_B8865C: ConcatStr
  loc_B8865D: FStStrNoPop var_C4
  loc_B88660: ImpAdLdI4 MemVar_D9302C
  loc_B88663: ConcatStr
  loc_B88664: FStStrNoPop var_C8
  loc_B88667: LitStr "' WHERE CodiInmu = "
  loc_B8866A: ConcatStr
  loc_B8866B: FStStrNoPop var_CC
  loc_B8866E: ILdRf CodiInmu
  loc_B88671: CStrI4
  loc_B88673: FStStrNoPop var_100
  loc_B88676: ConcatStr
  loc_B88677: FStStrNoPop var_104
  loc_B8867A: LitStr ";"
  loc_B8867D: ConcatStr
  loc_B8867E: FStStr var_9C
  loc_B88681: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_100 = ""
  loc_B8869C: FFree1Var var_FC = ""
  loc_B8869F: LitI2_Byte 0
  loc_B886A1: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B886A6: FStFPR8 var_138
  loc_B886A9: ILdRf var_9C
  loc_B886AC: LitStr " UPDATE relacion SET TipoRela = 'Transferencia', FebaRela = '"
  loc_B886AF: ConcatStr
  loc_B886B0: FStStrNoPop var_A8
  loc_B886B3: LitI4 1
  loc_B886B8: LitI4 1
  loc_B886BD: LitVarStr var_EC, "yyyy-mm-dd"
  loc_B886C2: FStVarCopyObj var_130
  loc_B886C5: FLdRfVar var_130
  loc_B886C8: FLdFPR8 var_138
  loc_B886CB: CVarDate var_FC
  loc_B886CF: ImpAdCallI2 Format$(, )
  loc_B886D4: FStStrNoPop var_AC
  loc_B886D7: ConcatStr
  loc_B886D8: FStStrNoPop var_B0
  loc_B886DB: LitStr "', MobaRela = 'TRANSFERENCIA INMUEBLE' WHERE CucuPers = '"
  loc_B886DE: ConcatStr
  loc_B886DF: FStStrNoPop var_B4
  loc_B886E2: ILdRf var_88
  loc_B886E5: ConcatStr
  loc_B886E6: FStStrNoPop var_B8
  loc_B886E9: LitStr "' AND CodiOfic = 1 AND CuenCtct = '"
  loc_B886EC: ConcatStr
  loc_B886ED: FStStrNoPop var_BC
  loc_B886F0: ILdRf CodiInmu
  loc_B886F3: CStrI4
  loc_B886F5: FStStrNoPop var_C0
  loc_B886F8: ConcatStr
  loc_B886F9: FStStrNoPop var_C4
  loc_B886FC: LitStr "' AND TipoRela = 'Titular' AND FebaRela IS NULL;"
  loc_B886FF: ConcatStr
  loc_B88700: FStStr var_9C
  loc_B88703: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B88716: FFreeVar var_FC = ""
  loc_B8871D: FLdI2 arg_28
  loc_B88720: LitI2_Byte &HFF
  loc_B88722: EqI2
  loc_B88723: BranchF loc_B88792
  loc_B88726: LitI2_Byte 0
  loc_B88728: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B8872D: FStFPR8 var_138
  loc_B88730: ILdRf var_9C
  loc_B88733: LitStr " UPDATE relacion SET TipoRela = 'Transferencia', FebaRela = '"
  loc_B88736: ConcatStr
  loc_B88737: FStStrNoPop var_A8
  loc_B8873A: LitI4 1
  loc_B8873F: LitI4 1
  loc_B88744: LitVarStr var_EC, "yyyy-mm-dd"
  loc_B88749: FStVarCopyObj var_130
  loc_B8874C: FLdRfVar var_130
  loc_B8874F: FLdFPR8 var_138
  loc_B88752: CVarDate var_FC
  loc_B88756: ImpAdCallI2 Format$(, )
  loc_B8875B: FStStrNoPop var_AC
  loc_B8875E: ConcatStr
  loc_B8875F: FStStrNoPop var_B0
  loc_B88762: LitStr "', MobaRela = 'TRANSFERENCIA INMUEBLE' WHERE CodiOfic = 1 AND CuenCtct = '"
  loc_B88765: ConcatStr
  loc_B88766: FStStrNoPop var_B4
  loc_B88769: ILdRf CodiInmu
  loc_B8876C: CStrI4
  loc_B8876E: FStStrNoPop var_B8
  loc_B88771: ConcatStr
  loc_B88772: FStStrNoPop var_BC
  loc_B88775: LitStr "' AND TipoRela = 'Propietario' AND FebaRela IS NULL;"
  loc_B88778: ConcatStr
  loc_B88779: FStStr var_9C
  loc_B8877C: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_B8878B: FFreeVar var_FC = ""
  loc_B88792: FLdRfVar var_A2
  loc_B88795: ILdRf CodiInmu
  loc_B88798: CStrI4
  loc_B8879A: FStStrNoPop var_A8
  loc_B8879D: LitI2_Byte 1
  loc_B8879F: CUI1I2
  loc_B887A1: ILdRf var_8C
  loc_B887A4: FLdRfVar var_98
  loc_B887A7: NewIfNullPr clsrelacion
  loc_B887AA: from_stack_4v = clsrelacion.NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B887AF: FLdUI1
  loc_B887B3: FStUI1 var_A0
  loc_B887B7: FFree1Str var_A8
  loc_B887BA: FLdRfVar var_AC
  loc_B887BD: FLdUI1
  loc_B887C1: ILdRf CodiInmu
  loc_B887C4: CStrI4
  loc_B887C6: FStStrNoPop var_A8
  loc_B887C9: LitI2_Byte 1
  loc_B887CB: CUI1I2
  loc_B887CD: ILdRf var_8C
  loc_B887D0: FLdRfVar var_98
  loc_B887D3: NewIfNullPr clsrelacion
  loc_B887D6: from_stack_5v = clsrelacion.ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B887DB: ILdRf var_AC
  loc_B887DE: LitStr vbNullString
  loc_B887E1: EqStr
  loc_B887E3: FFreeStr var_A8 = ""
  loc_B887EA: BranchF loc_B8899F
  loc_B887ED: FLdI2 arg_28
  loc_B887F0: LitI2_Byte &HFF
  loc_B887F2: EqI2
  loc_B887F3: BranchF loc_B888AC
  loc_B887F6: LitI2_Byte 0
  loc_B887F8: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B887FD: FStFPR8 var_138
  loc_B88800: ILdRf var_9C
  loc_B88803: LitStr " INSERT INTO relacion (CucuPers,CodiOfic,CuenCtct,NumeRela,TipoRela,FealRela,PorcRela,CodiUsua) "
  loc_B88806: ConcatStr
  loc_B88807: FStStrNoPop var_A8
  loc_B8880A: LitStr " VALUES ('"
  loc_B8880D: ConcatStr
  loc_B8880E: FStStrNoPop var_AC
  loc_B88811: ILdRf var_8C
  loc_B88814: ConcatStr
  loc_B88815: FStStrNoPop var_B0
  loc_B88818: LitStr "',1,'"
  loc_B8881B: ConcatStr
  loc_B8881C: FStStrNoPop var_B4
  loc_B8881F: ILdRf CodiInmu
  loc_B88822: CStrI4
  loc_B88824: FStStrNoPop var_B8
  loc_B88827: ConcatStr
  loc_B88828: FStStrNoPop var_BC
  loc_B8882B: LitStr "',"
  loc_B8882E: ConcatStr
  loc_B8882F: FStStrNoPop var_C0
  loc_B88832: FLdUI1
  loc_B88836: CStrI2
  loc_B88838: FStStrNoPop var_C4
  loc_B8883B: ConcatStr
  loc_B8883C: FStStrNoPop var_C8
  loc_B8883F: LitStr ",'Titular','"
  loc_B88842: ConcatStr
  loc_B88843: FStStrNoPop var_CC
  loc_B88846: LitI4 1
  loc_B8884B: LitI4 1
  loc_B88850: LitVarStr var_EC, "yyyy-mm-dd"
  loc_B88855: FStVarCopyObj var_130
  loc_B88858: FLdRfVar var_130
  loc_B8885B: FLdFPR8 var_138
  loc_B8885E: CVarDate var_FC
  loc_B88862: ImpAdCallI2 Format$(, )
  loc_B88867: FStStrNoPop var_100
  loc_B8886A: ConcatStr
  loc_B8886B: FStStrNoPop var_104
  loc_B8886E: LitStr "',100,'"
  loc_B88871: ConcatStr
  loc_B88872: FStStrNoPop var_108
  loc_B88875: ImpAdLdI4 MemVar_D9302C
  loc_B88878: ConcatStr
  loc_B88879: FStStrNoPop var_10C
  loc_B8887C: LitStr "');"
  loc_B8887F: ConcatStr
  loc_B88880: FStStr var_9C
  loc_B88883: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_B888A2: FFreeVar var_FC = ""
  loc_B888A9: Branch loc_B8899C
  loc_B888AC: LitI2_Byte 0
  loc_B888AE: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B888B3: FStFPR8 var_138
  loc_B888B6: ILdRf var_9C
  loc_B888B9: LitStr " INSERT INTO relacion (CucuPers,CodiOfic,CuenCtct,NumeRela,TipoRela,FealRela,PorcRela,CodiUsua) "
  loc_B888BC: ConcatStr
  loc_B888BD: FStStrNoPop var_A8
  loc_B888C0: LitStr " VALUES ('"
  loc_B888C3: ConcatStr
  loc_B888C4: FStStrNoPop var_AC
  loc_B888C7: ILdRf var_8C
  loc_B888CA: ConcatStr
  loc_B888CB: FStStrNoPop var_B0
  loc_B888CE: LitStr "',1,'"
  loc_B888D1: ConcatStr
  loc_B888D2: FStStrNoPop var_B4
  loc_B888D5: ILdRf CodiInmu
  loc_B888D8: CStrI4
  loc_B888DA: FStStrNoPop var_B8
  loc_B888DD: ConcatStr
  loc_B888DE: FStStrNoPop var_BC
  loc_B888E1: LitStr "',"
  loc_B888E4: ConcatStr
  loc_B888E5: FStStrNoPop var_C0
  loc_B888E8: FLdUI1
  loc_B888EC: CStrI2
  loc_B888EE: FStStrNoPop var_C4
  loc_B888F1: ConcatStr
  loc_B888F2: FStStrNoPop var_C8
  loc_B888F5: LitStr ",'Titular','"
  loc_B888F8: ConcatStr
  loc_B888F9: FStStrNoPop var_CC
  loc_B888FC: LitI4 1
  loc_B88901: LitI4 1
  loc_B88906: LitVarStr var_EC, "yyyy-mm-dd"
  loc_B8890B: FStVarCopyObj var_130
  loc_B8890E: FLdRfVar var_130
  loc_B88911: FLdFPR8 var_138
  loc_B88914: CVarDate var_FC
  loc_B88918: ImpAdCallI2 Format$(, )
  loc_B8891D: FStStrNoPop var_100
  loc_B88920: ConcatStr
  loc_B88921: FStStrNoPop var_104
  loc_B88924: LitStr "',"
  loc_B88927: ConcatStr
  loc_B88928: FStStrNoPop var_108
  loc_B8892B: LitStr "(SELECT PorcRela FROM relacion as rela WHERE CucuPers = '"
  loc_B8892E: ConcatStr
  loc_B8892F: FStStrNoPop var_10C
  loc_B88932: ILdRf var_88
  loc_B88935: ConcatStr
  loc_B88936: FStStrNoPop var_110
  loc_B88939: LitStr "' AND CodiOfic = 1 AND CuenCtct = '"
  loc_B8893C: ConcatStr
  loc_B8893D: FStStrNoPop var_114
  loc_B88940: ILdRf CodiInmu
  loc_B88943: CStrI4
  loc_B88945: FStStrNoPop var_118
  loc_B88948: ConcatStr
  loc_B88949: FStStrNoPop var_11C
  loc_B8894C: LitStr "' AND TipoRela <> 'Titular' AND FebaRela IS NOT NULL)"
  loc_B8894F: ConcatStr
  loc_B88950: FStStrNoPop var_120
  loc_B88953: LitStr ",'"
  loc_B88956: ConcatStr
  loc_B88957: FStStrNoPop var_13C
  loc_B8895A: ImpAdLdI4 MemVar_D9302C
  loc_B8895D: ConcatStr
  loc_B8895E: FStStrNoPop var_140
  loc_B88961: LitStr "');"
  loc_B88964: ConcatStr
  loc_B88965: FStStr var_9C
  loc_B88968: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_13C = ""
  loc_B88995: FFreeVar var_FC = ""
  loc_B8899C: Branch loc_B889A9
  loc_B8899F: ILdRf var_9C
  loc_B889A2: LitStr " INSERT INTO ERRROR"
  loc_B889A5: ConcatStr
  loc_B889A6: FStStr var_9C
  loc_B889A9: OnErrorGoto loc_B889BD
  loc_B889AC: ILdRf var_9C
  loc_B889AF: Call EjecutarRs2(from_stack_1v)
  loc_B889B4: LitStr "COMMIT;"
  loc_B889B7: Call EjecutarRs2(from_stack_1v)
  loc_B889BC: ExitProcHresult
  loc_B889BD: LitStr "ROLLBACK;"
  loc_B889C0: Call EjecutarRs2(from_stack_1v)
  loc_B889C5: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B889C8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B889CD: ExitProcHresult
  loc_B889CE: FFree1Str arg_380C
End Sub

Public Sub Delete() 'A210B0
  'Data Table: 4395B0
  loc_A21068: FLdRfVar var_8C
  loc_A2106B: FLdRfVar var_88
  loc_A2106E: FLdPr Me
  loc_A21071: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A21076: FLdPr var_88
  loc_A21079:  = Me.RecordCount
  loc_A2107E: ILdRf var_8C
  loc_A21081: LitI4 0
  loc_A21086: GtI4
  loc_A21087: FFree1Ad var_88
  loc_A2108A: BranchF loc_A210AD
  loc_A2108D: LitI4 1
  loc_A21092: FLdRfVar var_88
  loc_A21095: FLdPr Me
  loc_A21098: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A2109D: FLdPr var_88
  loc_A210A0: Me.Delete
  loc_A210A5: FFree1Ad var_88
  loc_A210A8: Call MoveNext()
  loc_A210AD: ExitProcHresult
End Sub

Public Sub Requery() '9FEFE4
  'Data Table: 4395B0
  loc_9FEFB4: LitI4 -1
  loc_9FEFB9: FLdRfVar var_88
  loc_9FEFBC: FLdPr Me
  loc_9FEFBF: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9FEFC4: FLdPr var_88
  loc_9FEFC7: Me.Requery from_stack_1
  loc_9FEFCC: FFree1Ad var_88
  loc_9FEFCF: LitVarStr var_98, "Primary"
  loc_9FEFD4: PopAdLdVar
  loc_9FEFD5: FLdPr Me
  loc_9FEFD8: LateIdCall
  loc_9FEFE0: ExitProcHresult
End Sub

Public Sub Update() 'A20DC4
  'Data Table: 4395B0
  loc_A20D80: FLdRfVar var_88
  loc_A20D83: FLdPr Me
  loc_A20D86: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A20D8B: FLdZeroAd var_88
  loc_A20D8E: FStAdFunc var_8C
  loc_A20D91: LitI4 3
  loc_A20D96: FLdPr var_8C
  loc_A20D99: Me.UpdateBatch
  loc_A20D9E: FLdRfVar var_90
  loc_A20DA1: FLdPr var_8C
  loc_A20DA4:  = Me.EditMode
  loc_A20DA9: ILdRf var_90
  loc_A20DAC: LitI4 2
  loc_A20DB1: EqI4
  loc_A20DB2: BranchF loc_A20DBA
  loc_A20DB5: Call MoveLast()
  loc_A20DBA: LitNothing
  loc_A20DBC: FStAd var_8C 
  loc_A20DC0: ExitProcHresult
End Sub

Public Sub Cancel() 'A4AE7C
  'Data Table: 4395B0
  loc_A4AE28: FLdRfVar var_88
  loc_A4AE2B: FLdPr Me
  loc_A4AE2E: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A4AE33: FLdZeroAd var_88
  loc_A4AE36: FStAdFunc var_8C
  loc_A4AE39: FLdRfVar var_90
  loc_A4AE3C: FLdPr var_8C
  loc_A4AE3F:  = Me.RecordCount
  loc_A4AE44: ILdRf var_90
  loc_A4AE47: LitI4 0
  loc_A4AE4C: GtI4
  loc_A4AE4D: BranchF loc_A4AE74
  loc_A4AE50: FLdPr var_8C
  loc_A4AE53: Me.CancelUpdate
  loc_A4AE58: FLdRfVar var_90
  loc_A4AE5B: FLdPr var_8C
  loc_A4AE5E:  = Me.EditMode
  loc_A4AE63: ILdRf var_90
  loc_A4AE66: LitI4 2
  loc_A4AE6B: EqI4
  loc_A4AE6C: BranchF loc_A4AE74
  loc_A4AE6F: Call MoveFirst()
  loc_A4AE74: LitNothing
  loc_A4AE76: FStAd var_8C 
  loc_A4AE7A: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FC814
  'Data Table: 4395B0
  loc_9FC7E8: FLdRfVar var_90
  loc_9FC7EB: FLdRfVar var_8C
  loc_9FC7EE: FLdPr Me
  loc_9FC7F1: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9FC7F6: FLdPr var_8C
  loc_9FC7F9:  = Me.EditMode
  loc_9FC7FE: ILdRf var_90
  loc_9FC801: LitI4 0
  loc_9FC806: NeI4
  loc_9FC807: FStI2 var_86
  loc_9FC80A: FFree1Ad var_8C
  loc_9FC80D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A7157C
  'Data Table: 4395B0
  loc_A71508: ILdRf sSelect
  loc_A7150B: FStStrCopy var_88
  loc_A7150E: LitNothing
  loc_A71510: CastAd
  loc_A71513: FStAdFuncNoPop
  loc_A71516: FLdPr Me
  loc_A71519: Call clstraninmu.global_4429112Set(from_stack_1v)
  loc_A7151E: FFree1Ad var_8C
  loc_A71521: New Recordset
  loc_A71525: FStAdFuncNoPop
  loc_A71528: FLdPr Me
  loc_A7152B: Call clstraninmu.global_4429112Set(from_stack_1v)
  loc_A71530: FFree1Ad var_8C
  loc_A71533: LitI4 -1
  loc_A71538: LitI4 3
  loc_A7153D: LitI4 3
  loc_A71542: ImpAdLdI4 MemVar_D9301C
  loc_A71545: CVarAd
  loc_A71549: PopAdLdVar
  loc_A7154A: ILdRf var_88
  loc_A7154D: CVarStr var_9C
  loc_A71550: PopAdLdVar
  loc_A71551: FLdRfVar var_8C
  loc_A71554: FLdPr Me
  loc_A71557: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A7155C: FLdPr var_8C
  loc_A7155F: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A71564: FFree1Ad var_8C
  loc_A71567: LitVarStr var_9C, "Primary"
  loc_A7156C: PopAdLdVar
  loc_A7156D: FLdPr Me
  loc_A71570: LateIdCall
  loc_A71578: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A59DD0
  'Data Table: 4395B0
  loc_A59D70: ILdRf sSelect
  loc_A59D73: FStStrCopy var_88
  loc_A59D76: LitNothing
  loc_A59D78: CastAd
  loc_A59D7B: FStAdFuncNoPop
  loc_A59D7E: FLdPr Me
  loc_A59D81: Call clstraninmu.global_4429112Set(from_stack_1v)
  loc_A59D86: FFree1Ad var_8C
  loc_A59D89: New Recordset
  loc_A59D8D: FStAdFuncNoPop
  loc_A59D90: FLdPr Me
  loc_A59D93: Call clstraninmu.global_4429112Set(from_stack_1v)
  loc_A59D98: FFree1Ad var_8C
  loc_A59D9B: LitI4 -1
  loc_A59DA0: LitI4 3
  loc_A59DA5: LitI4 3
  loc_A59DAA: ImpAdLdI4 MemVar_D9301C
  loc_A59DAD: CVarAd
  loc_A59DB1: PopAdLdVar
  loc_A59DB2: ILdRf var_88
  loc_A59DB5: CVarStr var_9C
  loc_A59DB8: PopAdLdVar
  loc_A59DB9: FLdRfVar var_8C
  loc_A59DBC: FLdPr Me
  loc_A59DBF: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A59DC4: FLdPr var_8C
  loc_A59DC7: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A59DCC: FFree1Ad var_8C
  loc_A59DCF: ExitProcHresult
End Sub

Public Property Get DataSource() 'A09C68
  'Data Table: 4395B0
  loc_A09C38: ZeroRetVal
  loc_A09C3A: FLdRfVar var_90
  loc_A09C3D: FLdRfVar var_8C
  loc_A09C40: FLdPr Me
  loc_A09C43: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A09C48: FLdPr var_8C
  loc_A09C4B:  = Me.DataSource
  loc_A09C50: ILdRf var_90
  loc_A09C53: CastAd
  loc_A09C56: FStAdFunc var_88
  loc_A09C59: FFreeAd var_8C = ""
  loc_A09C60: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9F8144
  'Data Table: 4395B0
  loc_9F811C: FLdRfVar var_90
  loc_9F811F: FLdRfVar var_8C
  loc_9F8122: FLdPr Me
  loc_9F8125: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9F812A: FLdPr var_8C
  loc_9F812D:  = Me.EditMode
  loc_9F8132: ILdRf var_90
  loc_9F8135: FStR4 var_88
  loc_9F8138: FFree1Ad var_8C
  loc_9F813B: ExitProcCbHresult
End Sub

Public Property Get CodiInmu() 'A4DFAC
  'Data Table: 4395B0
  loc_A4DF60: FLdRfVar var_B4
  loc_A4DF63: FLdRfVar var_A4
  loc_A4DF66: LitVarStr var_A0, "CodiInmu"
  loc_A4DF6B: PopAdLdVar
  loc_A4DF6C: FLdRfVar var_90
  loc_A4DF6F: FLdRfVar var_8C
  loc_A4DF72: FLdPr Me
  loc_A4DF75: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A4DF7A: FLdPr var_8C
  loc_A4DF7D:  = Me.Fields
  loc_A4DF82: FLdPr var_90
  loc_A4DF85: from_stack_2 = Me.Item(from_stack_1)
  loc_A4DF8A: FLdPr var_A4
  loc_A4DF8D:  = Me.Value
  loc_A4DF92: FLdRfVar var_B4
  loc_A4DF95: CI4Var
  loc_A4DF97: FStR4 var_88
  loc_A4DF9A: FFreeAd var_8C = "": var_90 = ""
  loc_A4DFA3: FFree1Var var_B4 = ""
  loc_A4DFA6: ExitProcCbHresult
End Sub

Public Property Let CodiInmu(vDato) '9F808C
  'Data Table: 4395B0
  loc_9F8064: ILdRf vDato
  loc_9F8067: CVarI4
  loc_9F806B: PopAdLdVar
  loc_9F806C: LitVarStr var_98, "CodiInmu"
  loc_9F8071: PopAdLdVar
  loc_9F8072: FLdRfVar var_88
  loc_9F8075: FLdPr Me
  loc_9F8078: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9F807D: FLdPr var_88
  loc_9F8080: Me.Collect = from_stack_1
  loc_9F8085: FFree1Ad var_88
  loc_9F8088: ExitProcHresult
End Sub

Public Property Get NumeTrin() 'A4E1DC
  'Data Table: 4395B0
  loc_A4E190: FLdRfVar var_B4
  loc_A4E193: FLdRfVar var_A4
  loc_A4E196: LitVarStr var_A0, "NumeTrin"
  loc_A4E19B: PopAdLdVar
  loc_A4E19C: FLdRfVar var_90
  loc_A4E19F: FLdRfVar var_8C
  loc_A4E1A2: FLdPr Me
  loc_A4E1A5: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A4E1AA: FLdPr var_8C
  loc_A4E1AD:  = Me.Fields
  loc_A4E1B2: FLdPr var_90
  loc_A4E1B5: from_stack_2 = Me.Item(from_stack_1)
  loc_A4E1BA: FLdPr var_A4
  loc_A4E1BD:  = Me.Value
  loc_A4E1C2: FLdRfVar var_B4
  loc_A4E1C5: CI2Var
  loc_A4E1C6: FStI2 var_86
  loc_A4E1C9: FFreeAd var_8C = "": var_90 = ""
  loc_A4E1D2: FFree1Var var_B4 = ""
  loc_A4E1D5: ExitProcCbHresult
End Sub

Public Property Let NumeTrin(vDato) '9EEF88
  'Data Table: 4395B0
  loc_9EEF64: FLdI2 vDato
  loc_9EEF67: CVarI2 var_A8
  loc_9EEF6A: PopAdLdVar
  loc_9EEF6B: LitVarStr var_98, "NumeTrin"
  loc_9EEF70: PopAdLdVar
  loc_9EEF71: FLdRfVar var_88
  loc_9EEF74: FLdPr Me
  loc_9EEF77: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9EEF7C: FLdPr var_88
  loc_9EEF7F: Me.Collect = from_stack_1
  loc_9EEF84: FFree1Ad var_88
  loc_9EEF87: ExitProcHresult
End Sub

Public Property Get CucuVend() 'A55144
  'Data Table: 4395B0
  loc_A550F4: ZeroRetVal
  loc_A550F6: FLdRfVar var_B4
  loc_A550F9: FLdRfVar var_A4
  loc_A550FC: LitVarStr var_A0, "CucuVend"
  loc_A55101: PopAdLdVar
  loc_A55102: FLdRfVar var_90
  loc_A55105: FLdRfVar var_8C
  loc_A55108: FLdPr Me
  loc_A5510B: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A55110: FLdPr var_8C
  loc_A55113:  = Me.Fields
  loc_A55118: FLdPr var_90
  loc_A5511B: from_stack_2 = Me.Item(from_stack_1)
  loc_A55120: FLdPr var_A4
  loc_A55123:  = Me.Value
  loc_A55128: FLdRfVar var_B4
  loc_A5512B: CStrVarTmp
  loc_A5512C: FStStr var_88
  loc_A5512F: FFreeAd var_8C = "": var_90 = ""
  loc_A55138: FFree1Var var_B4 = ""
  loc_A5513B: ExitProcCbHresult
End Sub

Public Property Let CucuVend(vDato) '9FF044
  'Data Table: 4395B0
  loc_9FF018: ILdRf vDato
  loc_9FF01B: FStStrCopy var_88
  loc_9FF01E: ILdRf var_88
  loc_9FF021: CVarStr var_AC
  loc_9FF024: PopAdLdVar
  loc_9FF025: LitVarStr var_9C, "CucuVend"
  loc_9FF02A: PopAdLdVar
  loc_9FF02B: FLdRfVar var_8C
  loc_9FF02E: FLdPr Me
  loc_9FF031: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9FF036: FLdPr var_8C
  loc_9FF039: Me.Collect = from_stack_1
  loc_9FF03E: FFree1Ad var_8C
  loc_9FF041: ExitProcHresult
End Sub

Public Property Get CucuComp() 'A55428
  'Data Table: 4395B0
  loc_A553D8: ZeroRetVal
  loc_A553DA: FLdRfVar var_B4
  loc_A553DD: FLdRfVar var_A4
  loc_A553E0: LitVarStr var_A0, "CucuComp"
  loc_A553E5: PopAdLdVar
  loc_A553E6: FLdRfVar var_90
  loc_A553E9: FLdRfVar var_8C
  loc_A553EC: FLdPr Me
  loc_A553EF: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A553F4: FLdPr var_8C
  loc_A553F7:  = Me.Fields
  loc_A553FC: FLdPr var_90
  loc_A553FF: from_stack_2 = Me.Item(from_stack_1)
  loc_A55404: FLdPr var_A4
  loc_A55407:  = Me.Value
  loc_A5540C: FLdRfVar var_B4
  loc_A5540F: CStrVarTmp
  loc_A55410: FStStr var_88
  loc_A55413: FFreeAd var_8C = "": var_90 = ""
  loc_A5541C: FFree1Var var_B4 = ""
  loc_A5541F: ExitProcCbHresult
End Sub

Public Property Let CucuComp(vDato) '9FF29C
  'Data Table: 4395B0
  loc_9FF270: ILdRf vDato
  loc_9FF273: FStStrCopy var_88
  loc_9FF276: ILdRf var_88
  loc_9FF279: CVarStr var_AC
  loc_9FF27C: PopAdLdVar
  loc_9FF27D: LitVarStr var_9C, "CucuComp"
  loc_9FF282: PopAdLdVar
  loc_9FF283: FLdRfVar var_8C
  loc_9FF286: FLdPr Me
  loc_9FF289: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9FF28E: FLdPr var_8C
  loc_9FF291: Me.Collect = from_stack_1
  loc_9FF296: FFree1Ad var_8C
  loc_9FF299: ExitProcHresult
End Sub

Public Property Get Fealtrin() 'A4FB04
  'Data Table: 4395B0
  loc_A4FAB8: FLdRfVar var_B8
  loc_A4FABB: FLdRfVar var_A8
  loc_A4FABE: LitVarStr var_A4, "Fealtrin"
  loc_A4FAC3: PopAdLdVar
  loc_A4FAC4: FLdRfVar Fealtrin
  loc_A4FAC7: FLdRfVar var_90
  loc_A4FACA: FLdPr Me
  loc_A4FACD: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A4FAD2: FLdPr var_90
  loc_A4FAD5:  = Me.Fields
  loc_A4FADA: FLdPr Fealtrin
  loc_A4FADD: from_stack_2 = Me.Item(from_stack_1)
  loc_A4FAE2: FLdPr var_A8
  loc_A4FAE5:  = Me.Value
  loc_A4FAEA: FLdRfVar var_B8
  loc_A4FAED: FnCDateVar
  loc_A4FAEF: FStFPR8 var_8C
  loc_A4FAF2: FFreeAd var_90 = "": Fealtrin = ""
  loc_A4FAFB: FFree1Var var_B8 = ""
  loc_A4FAFE: ExitProcCbHresult
End Sub

Public Property Let Fealtrin(vDato) '9F7DAC
  'Data Table: 4395B0
  loc_9F7D84: FLdFPR8 vDato
  loc_9F7D87: CVarDate var_A8
  loc_9F7D8B: PopAdLdVar
  loc_9F7D8C: LitVarStr var_98, "Fealtrin"
  loc_9F7D91: PopAdLdVar
  loc_9F7D92: FLdRfVar var_88
  loc_9F7D95: FLdPr Me
  loc_9F7D98: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9F7D9D: FLdPr var_88
  loc_9F7DA0: Me.Collect = from_stack_1
  loc_9F7DA5: FFree1Ad var_88
  loc_9F7DA8: ExitProcHresult
End Sub

Public Property Get FeesTrin() 'A50108
  'Data Table: 4395B0
  loc_A500BC: FLdRfVar var_B8
  loc_A500BF: FLdRfVar var_A8
  loc_A500C2: LitVarStr var_A4, "FeesTrin"
  loc_A500C7: PopAdLdVar
  loc_A500C8: FLdRfVar FeesTrin
  loc_A500CB: FLdRfVar var_90
  loc_A500CE: FLdPr Me
  loc_A500D1: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A500D6: FLdPr var_90
  loc_A500D9:  = Me.Fields
  loc_A500DE: FLdPr FeesTrin
  loc_A500E1: from_stack_2 = Me.Item(from_stack_1)
  loc_A500E6: FLdPr var_A8
  loc_A500E9:  = Me.Value
  loc_A500EE: FLdRfVar var_B8
  loc_A500F1: FnCDateVar
  loc_A500F3: FStFPR8 var_8C
  loc_A500F6: FFreeAd var_90 = "": FeesTrin = ""
  loc_A500FF: FFree1Var var_B8 = ""
  loc_A50102: ExitProcCbHresult
End Sub

Public Property Let FeesTrin(vDato) '9F7C98
  'Data Table: 4395B0
  loc_9F7C70: FLdFPR8 vDato
  loc_9F7C73: CVarDate var_A8
  loc_9F7C77: PopAdLdVar
  loc_9F7C78: LitVarStr var_98, "FeesTrin"
  loc_9F7C7D: PopAdLdVar
  loc_9F7C7E: FLdRfVar var_88
  loc_9F7C81: FLdPr Me
  loc_9F7C84: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9F7C89: FLdPr var_88
  loc_9F7C8C: Me.Collect = from_stack_1
  loc_9F7C91: FFree1Ad var_88
  loc_9F7C94: ExitProcHresult
End Sub

Public Property Get ExpeTrin() 'A58F20
  'Data Table: 4395B0
  loc_A58ED0: ZeroRetVal
  loc_A58ED2: FLdRfVar var_B4
  loc_A58ED5: FLdRfVar var_A4
  loc_A58ED8: LitVarStr var_A0, "ExpeTrin"
  loc_A58EDD: PopAdLdVar
  loc_A58EDE: FLdRfVar var_90
  loc_A58EE1: FLdRfVar var_8C
  loc_A58EE4: FLdPr Me
  loc_A58EE7: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A58EEC: FLdPr var_8C
  loc_A58EEF:  = Me.Fields
  loc_A58EF4: FLdPr var_90
  loc_A58EF7: from_stack_2 = Me.Item(from_stack_1)
  loc_A58EFC: FLdPr var_A4
  loc_A58EFF:  = Me.Value
  loc_A58F04: FLdRfVar var_B4
  loc_A58F07: CStrVarTmp
  loc_A58F08: FStStr var_88
  loc_A58F0B: FFreeAd var_8C = "": var_90 = ""
  loc_A58F14: FFree1Var var_B4 = ""
  loc_A58F17: ExitProcCbHresult
End Sub

Public Property Let ExpeTrin(vDato) '9FF300
  'Data Table: 4395B0
  loc_9FF2D4: ILdRf vDato
  loc_9FF2D7: FStStrCopy var_88
  loc_9FF2DA: ILdRf var_88
  loc_9FF2DD: CVarStr var_AC
  loc_9FF2E0: PopAdLdVar
  loc_9FF2E1: LitVarStr var_9C, "ExpeTrin"
  loc_9FF2E6: PopAdLdVar
  loc_9FF2E7: FLdRfVar var_8C
  loc_9FF2EA: FLdPr Me
  loc_9FF2ED: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9FF2F2: FLdPr var_8C
  loc_9FF2F5: Me.Collect = from_stack_1
  loc_9FF2FA: FFree1Ad var_8C
  loc_9FF2FD: ExitProcHresult
End Sub

Public Property Get ObseTrin() 'A593C0
  'Data Table: 4395B0
  loc_A59370: ZeroRetVal
  loc_A59372: FLdRfVar var_B4
  loc_A59375: FLdRfVar var_A4
  loc_A59378: LitVarStr var_A0, "ObseTrin"
  loc_A5937D: PopAdLdVar
  loc_A5937E: FLdRfVar var_90
  loc_A59381: FLdRfVar var_8C
  loc_A59384: FLdPr Me
  loc_A59387: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A5938C: FLdPr var_8C
  loc_A5938F:  = Me.Fields
  loc_A59394: FLdPr var_90
  loc_A59397: from_stack_2 = Me.Item(from_stack_1)
  loc_A5939C: FLdPr var_A4
  loc_A5939F:  = Me.Value
  loc_A593A4: FLdRfVar var_B4
  loc_A593A7: CStrVarTmp
  loc_A593A8: FStStr var_88
  loc_A593AB: FFreeAd var_8C = "": var_90 = ""
  loc_A593B4: FFree1Var var_B4 = ""
  loc_A593B7: ExitProcCbHresult
End Sub

Public Property Let ObseTrin(vDato) '9FF364
  'Data Table: 4395B0
  loc_9FF338: ILdRf vDato
  loc_9FF33B: FStStrCopy var_88
  loc_9FF33E: ILdRf var_88
  loc_9FF341: CVarStr var_AC
  loc_9FF344: PopAdLdVar
  loc_9FF345: LitVarStr var_9C, "ObseTrin"
  loc_9FF34A: PopAdLdVar
  loc_9FF34B: FLdRfVar var_8C
  loc_9FF34E: FLdPr Me
  loc_9FF351: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9FF356: FLdPr var_8C
  loc_9FF359: Me.Collect = from_stack_1
  loc_9FF35E: FFree1Ad var_8C
  loc_9FF361: ExitProcHresult
End Sub

Public Property Get CodiUsua() 'A57EF0
  'Data Table: 4395B0
  loc_A57EA0: ZeroRetVal
  loc_A57EA2: FLdRfVar var_B4
  loc_A57EA5: FLdRfVar var_A4
  loc_A57EA8: LitVarStr var_A0, "CodiUsua"
  loc_A57EAD: PopAdLdVar
  loc_A57EAE: FLdRfVar var_90
  loc_A57EB1: FLdRfVar var_8C
  loc_A57EB4: FLdPr Me
  loc_A57EB7: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A57EBC: FLdPr var_8C
  loc_A57EBF:  = Me.Fields
  loc_A57EC4: FLdPr var_90
  loc_A57EC7: from_stack_2 = Me.Item(from_stack_1)
  loc_A57ECC: FLdPr var_A4
  loc_A57ECF:  = Me.Value
  loc_A57ED4: FLdRfVar var_B4
  loc_A57ED7: CStrVarTmp
  loc_A57ED8: FStStr var_88
  loc_A57EDB: FFreeAd var_8C = "": var_90 = ""
  loc_A57EE4: FFree1Var var_B4 = ""
  loc_A57EE7: ExitProcCbHresult
End Sub

Public Property Let CodiUsua(vDato) '9FF3C8
  'Data Table: 4395B0
  loc_9FF39C: ILdRf vDato
  loc_9FF39F: FStStrCopy var_88
  loc_9FF3A2: ILdRf var_88
  loc_9FF3A5: CVarStr var_AC
  loc_9FF3A8: PopAdLdVar
  loc_9FF3A9: LitVarStr var_9C, "CodiUsua"
  loc_9FF3AE: PopAdLdVar
  loc_9FF3AF: FLdRfVar var_8C
  loc_9FF3B2: FLdPr Me
  loc_9FF3B5: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9FF3BA: FLdPr var_8C
  loc_9FF3BD: Me.Collect = from_stack_1
  loc_9FF3C2: FFree1Ad var_8C
  loc_9FF3C5: ExitProcHresult
End Sub

Public Function ValidaClave(CodiInmu, NumeTrin) 'A777F4
  'Data Table: 4395B0
  loc_A7778C: ZeroRetVal
  loc_A7778E: LitStr "SELECT CodiInmu FROM traninmu WHERE CodiInmu = "
  loc_A77791: ILdRf CodiInmu
  loc_A77794: CStrI4
  loc_A77796: FStStrNoPop var_8C
  loc_A77799: ConcatStr
  loc_A7779A: FStStrNoPop var_90
  loc_A7779D: LitStr " AND NumeTrin = "
  loc_A777A0: ConcatStr
  loc_A777A1: FStStrNoPop ValidaClave
  loc_A777A4: FLdI2 NumeTrin
  loc_A777A7: CStrUI1
  loc_A777A9: FStStrNoPop var_98
  loc_A777AC: ConcatStr
  loc_A777AD: FStStrNoPop var_9C
  loc_A777B0: Call EjecutarRs2(from_stack_1v)
  loc_A777B5: FFreeStr var_8C = "": var_90 = "": ValidaClave = "": var_98 = ""
  loc_A777C2: FLdRfVar var_A4
  loc_A777C5: FLdRfVar var_A0
  loc_A777C8: FLdPr Me
  loc_A777CB: from_stack_1v = clstraninmu.global_4429112Get()
  loc_A777D0: FLdPr var_A0
  loc_A777D3:  = Me.RecordCount
  loc_A777D8: ILdRf var_A4
  loc_A777DB: LitI4 0
  loc_A777E0: GtI4
  loc_A777E1: FFree1Ad var_A0
  loc_A777E4: BranchF loc_A777ED
  loc_A777E7: LitStr "LA TRANSFERENCIA YA EXISTE. Reintente..."
  loc_A777EA: FStStrCopy var_88
  loc_A777ED: ExitProcCbHresult
End Function

Public Function NuevoRegistro(CodiInmu) 'ACD978
  'Data Table: 4395B0
  loc_ACD858: New Recordset
  loc_ACD85C: FStAdFuncNoPop
  loc_ACD85F: FLdPr Me
  loc_ACD862: Call clstraninmu.global_4429112Set(from_stack_1v)
  loc_ACD867: FFree1Ad var_8C
  loc_ACD86A: LitI4 -1
  loc_ACD86F: LitI4 3
  loc_ACD874: LitI4 3
  loc_ACD879: ImpAdLdI4 MemVar_D9301C
  loc_ACD87C: CVarAd
  loc_ACD880: PopAdLdVar
  loc_ACD881: LitStr "SELECT NumeTrin FROM traninmu WHERE CodiInmu = "
  loc_ACD884: ILdRf CodiInmu
  loc_ACD887: CStrI4
  loc_ACD889: FStStrNoPop var_90
  loc_ACD88C: ConcatStr
  loc_ACD88D: FStStrNoPop NuevoRegistro
  loc_ACD890: LitStr " ORDER BY NumeTrin ASC "
  loc_ACD893: ConcatStr
  loc_ACD894: CVarStr var_A4
  loc_ACD897: PopAdLdVar
  loc_ACD898: FLdRfVar var_8C
  loc_ACD89B: FLdPr Me
  loc_ACD89E: from_stack_1v = clstraninmu.global_4429112Get()
  loc_ACD8A3: FLdPr var_8C
  loc_ACD8A6: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_ACD8AB: FFreeStr var_90 = ""
  loc_ACD8B2: FFree1Ad var_8C
  loc_ACD8B5: FFree1Var var_A4 = ""
  loc_ACD8B8: FLdRfVar var_B8
  loc_ACD8BB: FLdRfVar var_8C
  loc_ACD8BE: FLdPr Me
  loc_ACD8C1: from_stack_1v = clstraninmu.global_4429112Get()
  loc_ACD8C6: FLdPr var_8C
  loc_ACD8C9:  = Me.RecordCount
  loc_ACD8CE: ILdRf var_B8
  loc_ACD8D1: LitI4 0
  loc_ACD8D6: GtI4
  loc_ACD8D7: FFree1Ad var_8C
  loc_ACD8DA: BranchF loc_ACD941
  loc_ACD8DD: FLdRfVar var_8C
  loc_ACD8E0: FLdPr Me
  loc_ACD8E3: from_stack_1v = clstraninmu.global_4429112Get()
  loc_ACD8E8: FLdPr var_8C
  loc_ACD8EB: Me.MoveLast
  loc_ACD8F0: FFree1Ad var_8C
  loc_ACD8F3: FLdRfVar var_A4
  loc_ACD8F6: FLdRfVar var_C0
  loc_ACD8F9: LitVarStr var_B4, "NumeTrin"
  loc_ACD8FE: PopAdLdVar
  loc_ACD8FF: FLdRfVar var_BC
  loc_ACD902: FLdRfVar var_8C
  loc_ACD905: FLdPr Me
  loc_ACD908: from_stack_1v = clstraninmu.global_4429112Get()
  loc_ACD90D: FLdPr var_8C
  loc_ACD910:  = Me.Fields
  loc_ACD915: FLdPr var_BC
  loc_ACD918: from_stack_2 = Me.Item(from_stack_1)
  loc_ACD91D: FLdPr var_C0
  loc_ACD920:  = Me.Value
  loc_ACD925: FLdRfVar var_A4
  loc_ACD928: FnCByteVar
  loc_ACD92A: CI2UI1
  loc_ACD92C: LitI2_Byte 1
  loc_ACD92E: AddI2
  loc_ACD92F: FStI2 var_86
  loc_ACD932: FFreeAd var_8C = "": var_BC = ""
  loc_ACD93B: FFree1Var var_A4 = ""
  loc_ACD93E: Branch loc_ACD946
  loc_ACD941: LitI2_Byte 1
  loc_ACD943: FStI2 var_86
  loc_ACD946: FLdRfVar var_8C
  loc_ACD949: FLdPr Me
  loc_ACD94C: from_stack_1v = clstraninmu.global_4429112Get()
  loc_ACD951: FLdPr var_8C
  loc_ACD954: Me.Close
  loc_ACD959: FFree1Ad var_8C
  loc_ACD95C: LitNothing
  loc_ACD95E: CastAd
  loc_ACD961: FStAdFuncNoPop
  loc_ACD964: FLdPr Me
  loc_ACD967: Call clstraninmu.global_4429112Set(from_stack_1v)
  loc_ACD96C: FFree1Ad var_8C
  loc_ACD96F: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E904C
  'Data Table: 4395B0
  loc_9E9030: ILdRf pError
  loc_9E9033: FStAd var_88 
  loc_9E9037: ILdRf pRecordset
  loc_9E903A: FStAd var_8C 
  loc_9E903E: FLdPr Me
  loc_9E9041: RaiseEvent
  loc_9E9049: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9BC54
  'Data Table: 4395B0
  loc_A9BB94: ILdRf pRecordset
  loc_A9BB97: FStAd var_88 
  loc_A9BB9B: ILdRf adReason
  loc_A9BB9E: FStR4 var_90
  loc_A9BBA1: ILdRf var_90
  loc_A9BBA4: LitI4 1
  loc_A9BBA9: EqI4
  loc_A9BBAA: BranchF loc_A9BBB0
  loc_A9BBAD: Branch loc_A9BC43
  loc_A9BBB0: ILdRf var_90
  loc_A9BBB3: LitI4 9
  loc_A9BBB8: EqI4
  loc_A9BBB9: BranchF loc_A9BBBF
  loc_A9BBBC: Branch loc_A9BC43
  loc_A9BBBF: ILdRf var_90
  loc_A9BBC2: LitI4 2
  loc_A9BBC7: EqI4
  loc_A9BBC8: BranchF loc_A9BBCE
  loc_A9BBCB: Branch loc_A9BC43
  loc_A9BBCE: ILdRf var_90
  loc_A9BBD1: LitI4 &HB
  loc_A9BBD6: EqI4
  loc_A9BBD7: BranchF loc_A9BBDD
  loc_A9BBDA: Branch loc_A9BC43
  loc_A9BBDD: ILdRf var_90
  loc_A9BBE0: LitI4 &HA
  loc_A9BBE5: EqI4
  loc_A9BBE6: BranchF loc_A9BBEC
  loc_A9BBE9: Branch loc_A9BC43
  loc_A9BBEC: ILdRf var_90
  loc_A9BBEF: LitI4 7
  loc_A9BBF4: EqI4
  loc_A9BBF5: BranchF loc_A9BBFB
  loc_A9BBF8: Branch loc_A9BC43
  loc_A9BBFB: ILdRf var_90
  loc_A9BBFE: LitI4 8
  loc_A9BC03: EqI4
  loc_A9BC04: BranchF loc_A9BC0A
  loc_A9BC07: Branch loc_A9BC43
  loc_A9BC0A: ILdRf var_90
  loc_A9BC0D: LitI4 5
  loc_A9BC12: EqI4
  loc_A9BC13: BranchF loc_A9BC19
  loc_A9BC16: Branch loc_A9BC43
  loc_A9BC19: ILdRf var_90
  loc_A9BC1C: LitI4 6
  loc_A9BC21: EqI4
  loc_A9BC22: BranchF loc_A9BC28
  loc_A9BC25: Branch loc_A9BC43
  loc_A9BC28: ILdRf var_90
  loc_A9BC2B: LitI4 4
  loc_A9BC30: EqI4
  loc_A9BC31: BranchF loc_A9BC37
  loc_A9BC34: Branch loc_A9BC43
  loc_A9BC37: ILdRf var_90
  loc_A9BC3A: LitI4 3
  loc_A9BC3F: EqI4
  loc_A9BC40: BranchF loc_A9BC43
  loc_A9BC43: FLdI2 var_8A
  loc_A9BC46: BranchF loc_A9BC51
  loc_A9BC49: LitI4 4
  loc_A9BC4E: IStI4 adStatus
  loc_A9BC51: ExitProcHresult
  loc_A9BC52: CVarI2 arg_3803
End Sub

Private Function Proc_60_42_9F830C() '9F830C
  'Data Table: 4395B0
  loc_9F82E8: LitStr "Primary"
  loc_9F82EB: FLdPr Me
  loc_9F82EE: LateIdLdVar var_94 DispID_4 0
  loc_9F82F5: CastAdVar Me
  loc_9F82F9: FStAdFunc var_98
  loc_9F82FC: FLdPr var_98
  loc_9F8304: FFree1Ad var_98
  loc_9F8307: FFree1Var var_94 = ""
  loc_9F830A: ExitProcHresult
End Function

Private Function Proc_60_43_9F81F8(arg_C) '9F81F8
  'Data Table: 4395B0
  loc_9F81D4: ILdI4 arg_C
  loc_9F81D7: FStStrCopy var_88
  loc_9F81DA: ILdRf var_88
  loc_9F81DD: LitStr "Primary"
  loc_9F81E0: EqStr
  loc_9F81E2: BranchF loc_9F81F7
  loc_9F81E5: FLdRfVar var_8C
  loc_9F81E8: FLdPr Me
  loc_9F81EB: from_stack_1v = clstraninmu.global_4429112Get()
  loc_9F81F0: FLdZeroAd var_8C
  loc_9F81F3: IStAdFunc
  loc_9F81F7: ExitProcHresult
End Function

Public Function global_4429112Get() '439A1C
  global_4429112Get = global_4429112
End Function

Public Sub global_4429112Put(Value) '439A36
  global_4429112 = Value
End Sub

Public Sub global_4429112Set(Value) '439A50
  global_4429112 = Value
End Sub

Public Function global_4429112Get() '439A6A
  global_4429112Get = global_4429112
End Function

Public Sub global_4429112Put(Value) '439A84
  global_4429112 = Value
End Sub

Public Sub global_4429112Set(Value) '439A9E
  global_4429112 = Value
End Sub

Public Function global_4429112Get() '439AB8
  global_4429112Get = global_4429112
End Function

Public Sub global_4429112Put(Value) '439AD2
  global_4429112 = Value
End Sub

Public Sub global_4429112Set(Value) '439AEC
  global_4429112 = Value
End Sub
