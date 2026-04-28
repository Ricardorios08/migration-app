VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clspersonas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '457B08
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '457B17
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '457B26
  RsFrm = Value
End Sub

Public Sub Move(iValor) '9BA480
  'Data Table: 4574F4
  loc_9BA46C: LitVar_Missing var_94
  loc_9BA46F: PopAdLdVar
  loc_9BA470: ILdI2 iValor
  loc_9BA473: CI4UI1
  loc_9BA474: FLdPr Me
  loc_9BA477: MemLdPr RsFrm
  loc_9BA47A: Me.Move from_stack_1, from_stack_2
  loc_9BA47F: ExitProcHresult
End Sub

Public Sub MoveFirst() '9ED304
  'Data Table: 4574F4
  loc_9ED2DC: FLdRfVar var_88
  loc_9ED2DF: FLdPr Me
  loc_9ED2E2: MemLdPr RsFrm
  loc_9ED2E5:  = Me.RecordCount
  loc_9ED2EA: ILdRf var_88
  loc_9ED2ED: LitI4 0
  loc_9ED2F2: GtI4
  loc_9ED2F3: BranchF loc_9ED301
  loc_9ED2F6: FLdPr Me
  loc_9ED2F9: MemLdPr RsFrm
  loc_9ED2FC: Me.MoveFirst
  loc_9ED301: ExitProcHresult
  loc_9ED302: NeI2
End Sub

Public Sub MoveLast() '9ED40C
  'Data Table: 4574F4
  loc_9ED3E4: FLdRfVar var_88
  loc_9ED3E7: FLdPr Me
  loc_9ED3EA: MemLdPr RsFrm
  loc_9ED3ED:  = Me.RecordCount
  loc_9ED3F2: ILdRf var_88
  loc_9ED3F5: LitI4 0
  loc_9ED3FA: GtI4
  loc_9ED3FB: BranchF loc_9ED409
  loc_9ED3FE: FLdPr Me
  loc_9ED401: MemLdPr RsFrm
  loc_9ED404: Me.MoveLast
  loc_9ED409: ExitProcHresult
End Sub

Public Sub MoveNext() 'A53780
  'Data Table: 4574F4
  loc_A53720: FLdRfVar var_86
  loc_A53723: FLdPr Me
  loc_A53726: MemLdPr RsFrm
  loc_A53729:  = Me.EOF
  loc_A5372E: FLdI2 var_86
  loc_A53731: NotI4
  loc_A53732: BranchF loc_A53740
  loc_A53735: FLdPr Me
  loc_A53738: MemLdPr RsFrm
  loc_A5373B: Me.MoveNext
  loc_A53740: FLdRfVar var_86
  loc_A53743: FLdPr Me
  loc_A53746: MemLdPr RsFrm
  loc_A53749:  = Me.EOF
  loc_A5374E: FLdI2 var_86
  loc_A53751: FLdRfVar var_8C
  loc_A53754: FLdPr Me
  loc_A53757: MemLdPr RsFrm
  loc_A5375A:  = Me.RecordCount
  loc_A5375F: ILdRf var_8C
  loc_A53762: LitI4 0
  loc_A53767: GtI4
  loc_A53768: AndI4
  loc_A53769: BranchF loc_A5377C
  loc_A5376C: ImpAdCallFPR4 Beep()
  loc_A53771: FLdPr Me
  loc_A53774: MemLdPr RsFrm
  loc_A53777: Me.MoveLast
  loc_A5377C: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A539C0
  'Data Table: 4574F4
  loc_A53960: FLdRfVar var_86
  loc_A53963: FLdPr Me
  loc_A53966: MemLdPr RsFrm
  loc_A53969:  = Me.BOF
  loc_A5396E: FLdI2 var_86
  loc_A53971: NotI4
  loc_A53972: BranchF loc_A53980
  loc_A53975: FLdPr Me
  loc_A53978: MemLdPr RsFrm
  loc_A5397B: Me.MovePrevious
  loc_A53980: FLdRfVar var_86
  loc_A53983: FLdPr Me
  loc_A53986: MemLdPr RsFrm
  loc_A53989:  = Me.BOF
  loc_A5398E: FLdI2 var_86
  loc_A53991: FLdRfVar var_8C
  loc_A53994: FLdPr Me
  loc_A53997: MemLdPr RsFrm
  loc_A5399A:  = Me.RecordCount
  loc_A5399F: ILdRf var_8C
  loc_A539A2: LitI4 0
  loc_A539A7: GtI4
  loc_A539A8: AndI4
  loc_A539A9: BranchF loc_A539BC
  loc_A539AC: ImpAdCallFPR4 Beep()
  loc_A539B1: FLdPr Me
  loc_A539B4: MemLdPr RsFrm
  loc_A539B7: Me.MoveFirst
  loc_A539BC: ExitProcHresult
End Sub

Public Property Get EOF() '9D3CC8
  'Data Table: 4574F4
  loc_9D3CAC: FLdRfVar var_88
  loc_9D3CAF: FLdPr Me
  loc_9D3CB2: MemLdPr RsFrm
  loc_9D3CB5:  = Me.EOF
  loc_9D3CBA: FLdI2 var_88
  loc_9D3CBD: FStI2 var_86
  loc_9D3CC0: ExitProcCbHresult
  loc_9D3CC6: VCallAd Control_ID_
End Sub

Public Property Get BOF() '9D3BE4
  'Data Table: 4574F4
  loc_9D3BC8: FLdRfVar var_88
  loc_9D3BCB: FLdPr Me
  loc_9D3BCE: MemLdPr RsFrm
  loc_9D3BD1:  = Me.BOF
  loc_9D3BD6: FLdI2 var_88
  loc_9D3BD9: FStI2 var_86
  loc_9D3BDC: ExitProcCbHresult
  loc_9D3BE2: VCallAd Control_ID_
End Sub

Public Sub Sort(sOrden) '9B73F8
  'Data Table: 4574F4
  loc_9B73E8: ILdI4 sOrden
  loc_9B73EB: FLdPr Me
  loc_9B73EE: MemLdPr RsFrm
  loc_9B73F1: Me.Sort = from_stack_1
  loc_9B73F6: ExitProcHresult
End Sub

Public Sub Find(sCriterio) '9E33A0
  'Data Table: 4574F4
  loc_9E3380: LitVar_Missing var_94
  loc_9E3383: PopAdLdVar
  loc_9E3384: LitI4 1
  loc_9E3389: LitI4 0
  loc_9E338E: ILdI4 sCriterio
  loc_9E3391: FLdPr Me
  loc_9E3394: MemLdPr RsFrm
  loc_9E3397: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E339C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9B8FC8
  'Data Table: 4574F4
  loc_9B8FB4: ILdI4 sCriterio
  loc_9B8FB7: CVarStr var_94
  loc_9B8FBA: PopAdLdVar
  loc_9B8FBB: FLdPr Me
  loc_9B8FBE: MemLdPr RsFrm
  loc_9B8FC1: Me.Filter = from_stack_1
  loc_9B8FC6: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D3984
  'Data Table: 4574F4
  loc_9D3968: FLdRfVar var_8C
  loc_9D396B: FLdPr Me
  loc_9D396E: MemLdPr RsFrm
  loc_9D3971:  = Me.AbsolutePosition
  loc_9D3976: ILdRf var_8C
  loc_9D3979: FStR4 var_88
  loc_9D397C: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D38EC
  'Data Table: 4574F4
  loc_9D38D0: FLdRfVar var_8C
  loc_9D38D3: FLdPr Me
  loc_9D38D6: MemLdPr RsFrm
  loc_9D38D9:  = Me.RecordCount
  loc_9D38DE: ILdRf var_8C
  loc_9D38E1: FStR4 var_88
  loc_9D38E4: ExitProcCbHresult
  loc_9D38EA: NeI2
End Sub

Public Sub AddNew(CucuPers, DetaPers, JuriPers, TelePers, CeluPers, FaxsPers, MailPers, CodiTido, NudoPers, FenaPers, CodiEsci, CodiPofi, CocrPers, DecrPers, NurePers, CobrPers, DebrPers, MarePers, CarePers) 'B63284
  'Data Table: 4574F4
  loc_B62F50: ILdRf CucuPers
  loc_B62F53: FStStrCopy var_88
  loc_B62F56: ILdRf DetaPers
  loc_B62F59: FStStrCopy var_8C
  loc_B62F5C: ILdRf TelePers
  loc_B62F5F: FStStrCopy var_90
  loc_B62F62: ILdRf CeluPers
  loc_B62F65: FStStrCopy var_94
  loc_B62F68: ILdRf FaxsPers
  loc_B62F6B: FStStrCopy var_98
  loc_B62F6E: ILdRf MailPers
  loc_B62F71: FStStrCopy var_9C
  loc_B62F74: ILdRf FenaPers
  loc_B62F77: FStStrCopy var_A0
  loc_B62F7A: ILdRf AddNew0
  loc_B62F7D: FStStrCopy var_A4
  loc_B62F80: ILdRf AddNewC
  loc_B62F83: FStStrCopy var_A8
  loc_B62F86: ILdRf MarePers
  loc_B62F89: FStStrCopy var_AC
  loc_B62F8C: ILdRf CarePers
  loc_B62F8F: FStStrCopy var_B0
  loc_B62F92: ILdRf arg_58
  loc_B62F95: FStStrCopy var_B4
  loc_B62F98: ILdRf arg_5C
  loc_B62F9B: FStStrCopy var_B8
  loc_B62F9E: ILdRf arg_60
  loc_B62FA1: FStStrCopy var_BC
  loc_B62FA4: ILdRf arg_64
  loc_B62FA7: FStStrCopy var_C0
  loc_B62FAA: FLdRfVar var_C4
  loc_B62FAD: ILdRf var_88
  loc_B62FB0: from_stack_2v = ValidaClave(from_stack_1v)
  loc_B62FB5: ILdRf var_C4
  loc_B62FB8: LitStr vbNullString
  loc_B62FBB: NeStr
  loc_B62FBD: FFree1Str var_C4
  loc_B62FC0: BranchF loc_B62FCE
  loc_B62FC3: LitStr "La PERSONA YA EXISTE. Reintente..."
  loc_B62FC6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B62FCB: Branch loc_B63280
  loc_B62FCE: FLdRfVar var_A0
  loc_B62FD1: CVarRef
  loc_B62FD6: ImpAdCallI2 IsDate()
  loc_B62FDB: FStI2 var_572
  loc_B62FDE: LitI4 1
  loc_B62FE3: LitI4 1
  loc_B62FE8: LitVarStr var_144, "yyyy-mm-dd"
  loc_B62FED: FStVarCopyObj var_154
  loc_B62FF0: FLdRfVar var_154
  loc_B62FF3: FLdRfVar var_A0
  loc_B62FF6: CVarRef
  loc_B62FFB: ImpAdCallI2 Format$(, )
  loc_B63000: FStStr var_578
  loc_B63003: LitStr "INSERT INTO infogov.persona (CucuPers,DetaPers,JuriPers,TelePers,CeluPers,FaxsPers,MailPers,CodiTido,NudoPers,FenaPers,CodiEsci,CodiPofi,CocrPers,DecrPers,NurePers,CobrPers,DebrPers,MarePers,CarePers,UbrePers,ColrPers,DelrPers,CoprPers,AltaUsua) "
  loc_B63006: LitStr " VALUES ('"
  loc_B63009: ConcatStr
  loc_B6300A: FStStrNoPop var_C4
  loc_B6300D: ILdRf var_88
  loc_B63010: ConcatStr
  loc_B63011: FStStrNoPop var_C8
  loc_B63014: LitStr "','"
  loc_B63017: ConcatStr
  loc_B63018: FStStrNoPop var_CC
  loc_B6301B: ILdRf var_8C
  loc_B6301E: ConcatStr
  loc_B6301F: FStStrNoPop var_D0
  loc_B63022: LitStr "',"
  loc_B63025: ConcatStr
  loc_B63026: FStStrNoPop var_D4
  loc_B63029: FLdUI1
  loc_B6302D: CStrI2
  loc_B6302F: FStStrNoPop var_D8
  loc_B63032: ConcatStr
  loc_B63033: FStStrNoPop var_DC
  loc_B63036: LitStr ",'"
  loc_B63039: ConcatStr
  loc_B6303A: FStStrNoPop var_E0
  loc_B6303D: ILdRf var_90
  loc_B63040: ConcatStr
  loc_B63041: FStStrNoPop var_E4
  loc_B63044: LitStr "','"
  loc_B63047: ConcatStr
  loc_B63048: FStStrNoPop var_E8
  loc_B6304B: ILdRf var_94
  loc_B6304E: ConcatStr
  loc_B6304F: FStStrNoPop var_EC
  loc_B63052: LitStr "','"
  loc_B63055: ConcatStr
  loc_B63056: FStStrNoPop var_F0
  loc_B63059: ILdRf var_98
  loc_B6305C: ConcatStr
  loc_B6305D: FStStrNoPop var_F4
  loc_B63060: LitStr "','"
  loc_B63063: ConcatStr
  loc_B63064: FStStrNoPop var_F8
  loc_B63067: ILdRf var_9C
  loc_B6306A: ConcatStr
  loc_B6306B: FStStrNoPop var_FC
  loc_B6306E: LitStr "',"
  loc_B63071: ConcatStr
  loc_B63072: FStStrNoPop var_100
  loc_B63075: FLdUI1
  loc_B63079: CStrI2
  loc_B6307B: FStStrNoPop var_104
  loc_B6307E: ConcatStr
  loc_B6307F: FStStrNoPop var_108
  loc_B63082: LitStr ","
  loc_B63085: ConcatStr
  loc_B63086: FStStrNoPop var_10C
  loc_B63089: ILdRf NudoPers
  loc_B6308C: CStrI4
  loc_B6308E: FStStrNoPop var_110
  loc_B63091: ConcatStr
  loc_B63092: FStStrNoPop var_114
  loc_B63095: LitStr ","
  loc_B63098: ConcatStr
  loc_B63099: CVarStr var_1BC
  loc_B6309C: LitVarStr var_18C, "Null"
  loc_B630A1: FStVarCopyObj var_19C
  loc_B630A4: FLdRfVar var_19C
  loc_B630A7: LitStr "'"
  loc_B630AA: FLdZeroAd var_578
  loc_B630AD: FStStrNoPop var_158
  loc_B630B0: ConcatStr
  loc_B630B1: FStStrNoPop var_15C
  loc_B630B4: LitStr "'"
  loc_B630B7: ConcatStr
  loc_B630B8: CVarStr var_17C
  loc_B630BB: FLdI2 var_572
  loc_B630BE: CVarBoolI2 var_16C
  loc_B630C2: FLdRfVar var_1AC
  loc_B630C5: ImpAdCallFPR4  = IIf(, , )
  loc_B630CA: FLdRfVar var_1AC
  loc_B630CD: ConcatVar var_1CC
  loc_B630D1: LitVarStr var_1DC, ","
  loc_B630D6: ConcatVar var_1EC
  loc_B630DA: FLdUI1
  loc_B630DE: CVarUI1
  loc_B630E2: ConcatVar var_20C
  loc_B630E6: LitVarStr var_21C, ","
  loc_B630EB: ConcatVar var_22C
  loc_B630EF: FLdUI1
  loc_B630F3: CVarUI1
  loc_B630F7: ConcatVar var_24C
  loc_B630FB: LitVarStr var_25C, ","
  loc_B63100: ConcatVar var_26C
  loc_B63104: ILdRf CocrPers
  loc_B63107: CVarI4
  loc_B6310B: ConcatVar var_28C
  loc_B6310F: LitVarStr var_29C, ",'"
  loc_B63114: ConcatVar var_2AC
  loc_B63118: ILdRf var_A4
  loc_B6311B: CVarStr var_2BC
  loc_B6311E: ConcatVar var_2CC
  loc_B63122: LitVarStr var_2DC, "',"
  loc_B63127: ConcatVar var_2EC
  loc_B6312B: ILdRf AddNew4
  loc_B6312E: CVarI4
  loc_B63132: ConcatVar var_30C
  loc_B63136: LitVarStr var_31C, ","
  loc_B6313B: ConcatVar var_32C
  loc_B6313F: FLdI2 AddNew8
  loc_B63142: CVarI2 var_33C
  loc_B63145: ConcatVar var_34C
  loc_B63149: LitVarStr var_35C, ",'"
  loc_B6314E: ConcatVar var_36C
  loc_B63152: ILdRf var_A8
  loc_B63155: CVarStr var_37C
  loc_B63158: ConcatVar var_38C
  loc_B6315C: LitVarStr var_39C, "','"
  loc_B63161: ConcatVar var_3AC
  loc_B63165: ILdRf var_AC
  loc_B63168: CVarStr var_3BC
  loc_B6316B: ConcatVar var_3CC
  loc_B6316F: LitVarStr var_3DC, "','"
  loc_B63174: ConcatVar var_3EC
  loc_B63178: ILdRf var_B0
  loc_B6317B: CVarStr var_3FC
  loc_B6317E: ConcatVar var_40C
  loc_B63182: LitVarStr var_41C, "','"
  loc_B63187: ConcatVar var_42C
  loc_B6318B: ILdRf var_B4
  loc_B6318E: CVarStr var_43C
  loc_B63191: ConcatVar var_44C
  loc_B63195: LitVarStr var_45C, "',"
  loc_B6319A: ConcatVar var_46C
  loc_B6319E: ILdRf var_B8
  loc_B631A1: CVarStr var_47C
  loc_B631A4: ConcatVar var_48C
  loc_B631A8: LitVarStr var_49C, ",'"
  loc_B631AD: ConcatVar var_4AC
  loc_B631B1: ILdRf var_BC
  loc_B631B4: CVarStr var_4BC
  loc_B631B7: ConcatVar var_4CC
  loc_B631BB: LitVarStr var_4DC, "','"
  loc_B631C0: ConcatVar var_4EC
  loc_B631C4: ILdRf var_C0
  loc_B631C7: CVarStr var_4FC
  loc_B631CA: ConcatVar var_50C
  loc_B631CE: LitVarStr var_51C, "','"
  loc_B631D3: ConcatVar var_52C
  loc_B631D7: ImpAdLdI4 MemVar_D9302C
  loc_B631DA: CVarStr var_53C
  loc_B631DD: ConcatVar var_54C
  loc_B631E1: LitVarStr var_55C, "')"
  loc_B631E6: ConcatVar var_56C
  loc_B631EA: CStrVarVal var_570
  loc_B631EE: Call EjecutarRsCls(from_stack_1v)
  loc_B631F3: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_158 = "": var_15C = "": var_570 = ""
  loc_B63228: FFreeVar var_4CC = "": var_4EC = "": var_50C = "": var_52C = "": var_54C = "": var_56C = "": var_154 = "": var_16C = "": var_17C = "": var_19C = "": var_1BC = "": var_1AC = "": var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_30C = "": var_32C = "": var_34C = "": var_36C = "": var_38C = "": var_3AC = "": var_3CC = "": var_3EC = "": var_40C = "": var_42C = "": var_44C = "": var_46C = "": var_48C = ""
  loc_B63273: Call Requery()
  loc_B63278: ILdRf var_88
  loc_B6327B: Call Encontrar(from_stack_1v)
  loc_B63280: ExitProcHresult
  loc_B63281: FLdPr arg_0
End Sub

Public Sub CreaPersona(CucuPers, CcokPers, DetaPers, JuriPers, TelePers, CeluPers, FaxsPers, MailPers, CodiTido, NudoPers, FenaPers, CodiEsci, CodiPofi, CocrPers, DecrPers, NurePers, CobrPers, DebrPers, MarePers) 'B67C7C
  'Data Table: 4574F4
  loc_B6793C: ILdRf CucuPers
  loc_B6793F: FStStrCopy var_88
  loc_B67942: ILdRf DetaPers
  loc_B67945: FStStrCopy var_8C
  loc_B67948: ILdRf TelePers
  loc_B6794B: FStStrCopy var_90
  loc_B6794E: ILdRf CeluPers
  loc_B67951: FStStrCopy var_94
  loc_B67954: ILdRf FaxsPers
  loc_B67957: FStStrCopy var_98
  loc_B6795A: ILdRf MailPers
  loc_B6795D: FStStrCopy var_9C
  loc_B67960: ILdRf FenaPers
  loc_B67963: FStStrCopy var_A0
  loc_B67966: ILdRf CreaPersona4
  loc_B67969: FStStrCopy var_A4
  loc_B6796C: ILdRf DebrPers
  loc_B6796F: FStStrCopy var_A8
  loc_B67972: ILdRf MarePers
  loc_B67975: FStStrCopy var_AC
  loc_B67978: ILdRf arg_58
  loc_B6797B: FStStrCopy var_B0
  loc_B6797E: ILdRf arg_5C
  loc_B67981: FStStrCopy var_B4
  loc_B67984: ILdRf arg_60
  loc_B67987: FStStrCopy var_B8
  loc_B6798A: ILdRf arg_64
  loc_B6798D: FStStrCopy var_BC
  loc_B67990: ILdRf arg_68
  loc_B67993: FStStrCopy var_C0
  loc_B67996: FLdRfVar var_C4
  loc_B67999: ILdRf var_88
  loc_B6799C: from_stack_2v = ValidaClave(from_stack_1v)
  loc_B679A1: ILdRf var_C4
  loc_B679A4: LitStr vbNullString
  loc_B679A7: EqStr
  loc_B679A9: FFree1Str var_C4
  loc_B679AC: BranchF loc_B67C78
  loc_B679AF: FLdRfVar var_A0
  loc_B679B2: CVarRef
  loc_B679B7: ImpAdCallI2 IsDate()
  loc_B679BC: FStI2 var_582
  loc_B679BF: LitI4 1
  loc_B679C4: LitI4 1
  loc_B679C9: LitVarStr var_154, "yyyy-mm-dd"
  loc_B679CE: FStVarCopyObj var_164
  loc_B679D1: FLdRfVar var_164
  loc_B679D4: FLdRfVar var_A0
  loc_B679D7: CVarRef
  loc_B679DC: ImpAdCallI2 Format$(, )
  loc_B679E1: FStStr var_588
  loc_B679E4: LitStr "INSERT INTO infogov.persona (CucuPers,CcokPers,DetaPers,JuriPers,TelePers,CeluPers,FaxsPers,MailPers,CodiTido,NudoPers,FenaPers,CodiEsci,CodiPofi,CocrPers,DecrPers,NurePers,CobrPers,DebrPers,MarePers,CarePers,UbrePers,ColrPers,DelrPers,CoprPers,AltaUsua) "
  loc_B679E7: LitStr " VALUES ('"
  loc_B679EA: ConcatStr
  loc_B679EB: FStStrNoPop var_C4
  loc_B679EE: ILdRf var_88
  loc_B679F1: ConcatStr
  loc_B679F2: FStStrNoPop var_C8
  loc_B679F5: LitStr "',"
  loc_B679F8: ConcatStr
  loc_B679F9: FStStrNoPop var_CC
  loc_B679FC: FLdUI1
  loc_B67A00: CStrI2
  loc_B67A02: FStStrNoPop var_D0
  loc_B67A05: ConcatStr
  loc_B67A06: FStStrNoPop var_D4
  loc_B67A09: LitStr ",'"
  loc_B67A0C: ConcatStr
  loc_B67A0D: FStStrNoPop var_D8
  loc_B67A10: ILdRf var_8C
  loc_B67A13: ImpAdCallI2 UCase$()
  loc_B67A18: FStStrNoPop var_DC
  loc_B67A1B: ConcatStr
  loc_B67A1C: FStStrNoPop var_E0
  loc_B67A1F: LitStr "',"
  loc_B67A22: ConcatStr
  loc_B67A23: FStStrNoPop var_E4
  loc_B67A26: FLdUI1
  loc_B67A2A: CStrI2
  loc_B67A2C: FStStrNoPop var_E8
  loc_B67A2F: ConcatStr
  loc_B67A30: FStStrNoPop var_EC
  loc_B67A33: LitStr ",'"
  loc_B67A36: ConcatStr
  loc_B67A37: FStStrNoPop var_F0
  loc_B67A3A: ILdRf var_90
  loc_B67A3D: ConcatStr
  loc_B67A3E: FStStrNoPop var_F4
  loc_B67A41: LitStr "','"
  loc_B67A44: ConcatStr
  loc_B67A45: FStStrNoPop var_F8
  loc_B67A48: ILdRf var_94
  loc_B67A4B: ConcatStr
  loc_B67A4C: FStStrNoPop var_FC
  loc_B67A4F: LitStr "','"
  loc_B67A52: ConcatStr
  loc_B67A53: FStStrNoPop var_100
  loc_B67A56: ILdRf var_98
  loc_B67A59: ConcatStr
  loc_B67A5A: FStStrNoPop var_104
  loc_B67A5D: LitStr "','"
  loc_B67A60: ConcatStr
  loc_B67A61: FStStrNoPop var_108
  loc_B67A64: ILdRf var_9C
  loc_B67A67: ConcatStr
  loc_B67A68: FStStrNoPop var_10C
  loc_B67A6B: LitStr "',"
  loc_B67A6E: ConcatStr
  loc_B67A6F: FStStrNoPop var_110
  loc_B67A72: FLdUI1
  loc_B67A76: CStrI2
  loc_B67A78: FStStrNoPop var_114
  loc_B67A7B: ConcatStr
  loc_B67A7C: FStStrNoPop var_118
  loc_B67A7F: LitStr ","
  loc_B67A82: ConcatStr
  loc_B67A83: FStStrNoPop var_11C
  loc_B67A86: ILdRf NudoPers
  loc_B67A89: CStrI4
  loc_B67A8B: FStStrNoPop var_120
  loc_B67A8E: ConcatStr
  loc_B67A8F: FStStrNoPop var_124
  loc_B67A92: LitStr ","
  loc_B67A95: ConcatStr
  loc_B67A96: CVarStr var_1CC
  loc_B67A99: LitVarStr var_19C, "Null"
  loc_B67A9E: FStVarCopyObj var_1AC
  loc_B67AA1: FLdRfVar var_1AC
  loc_B67AA4: LitStr "'"
  loc_B67AA7: FLdZeroAd var_588
  loc_B67AAA: FStStrNoPop var_168
  loc_B67AAD: ConcatStr
  loc_B67AAE: FStStrNoPop var_16C
  loc_B67AB1: LitStr "'"
  loc_B67AB4: ConcatStr
  loc_B67AB5: CVarStr var_18C
  loc_B67AB8: FLdI2 var_582
  loc_B67ABB: CVarBoolI2 var_17C
  loc_B67ABF: FLdRfVar var_1BC
  loc_B67AC2: ImpAdCallFPR4  = IIf(, , )
  loc_B67AC7: FLdRfVar var_1BC
  loc_B67ACA: ConcatVar var_1DC
  loc_B67ACE: LitVarStr var_1EC, ","
  loc_B67AD3: ConcatVar var_1FC
  loc_B67AD7: FLdUI1
  loc_B67ADB: CVarUI1
  loc_B67ADF: ConcatVar var_21C
  loc_B67AE3: LitVarStr var_22C, ","
  loc_B67AE8: ConcatVar var_23C
  loc_B67AEC: FLdUI1
  loc_B67AF0: CVarUI1
  loc_B67AF4: ConcatVar var_25C
  loc_B67AF8: LitVarStr var_26C, ","
  loc_B67AFD: ConcatVar var_27C
  loc_B67B01: ILdRf CreaPersona0
  loc_B67B04: CVarI4
  loc_B67B08: ConcatVar var_29C
  loc_B67B0C: LitVarStr var_2AC, ",'"
  loc_B67B11: ConcatVar var_2BC
  loc_B67B15: ILdRf var_A4
  loc_B67B18: CVarStr var_2CC
  loc_B67B1B: ConcatVar var_2DC
  loc_B67B1F: LitVarStr var_2EC, "',"
  loc_B67B24: ConcatVar var_2FC
  loc_B67B28: ILdRf CreaPersona8
  loc_B67B2B: CVarI4
  loc_B67B2F: ConcatVar var_31C
  loc_B67B33: LitVarStr var_32C, ","
  loc_B67B38: ConcatVar var_33C
  loc_B67B3C: FLdI2 CreaPersonaC
  loc_B67B3F: CVarI2 var_34C
  loc_B67B42: ConcatVar var_35C
  loc_B67B46: LitVarStr var_36C, ",'"
  loc_B67B4B: ConcatVar var_37C
  loc_B67B4F: ILdRf var_A8
  loc_B67B52: CVarStr var_38C
  loc_B67B55: ConcatVar var_39C
  loc_B67B59: LitVarStr var_3AC, "','"
  loc_B67B5E: ConcatVar var_3BC
  loc_B67B62: ILdRf var_AC
  loc_B67B65: CVarStr var_3CC
  loc_B67B68: ConcatVar var_3DC
  loc_B67B6C: LitVarStr var_3EC, "','"
  loc_B67B71: ConcatVar var_3FC
  loc_B67B75: ILdRf var_B0
  loc_B67B78: CVarStr var_40C
  loc_B67B7B: ConcatVar var_41C
  loc_B67B7F: LitVarStr var_42C, "','"
  loc_B67B84: ConcatVar var_43C
  loc_B67B88: ILdRf var_B4
  loc_B67B8B: CVarStr var_44C
  loc_B67B8E: ConcatVar var_45C
  loc_B67B92: LitVarStr var_46C, "',"
  loc_B67B97: ConcatVar var_47C
  loc_B67B9B: ILdRf var_B8
  loc_B67B9E: CVarStr var_48C
  loc_B67BA1: ConcatVar var_49C
  loc_B67BA5: LitVarStr var_4AC, ",'"
  loc_B67BAA: ConcatVar var_4BC
  loc_B67BAE: ILdRf var_BC
  loc_B67BB1: CVarStr var_4CC
  loc_B67BB4: ConcatVar var_4DC
  loc_B67BB8: LitVarStr var_4EC, "','"
  loc_B67BBD: ConcatVar var_4FC
  loc_B67BC1: ILdRf var_C0
  loc_B67BC4: CVarStr var_50C
  loc_B67BC7: ConcatVar var_51C
  loc_B67BCB: LitVarStr var_52C, "','"
  loc_B67BD0: ConcatVar var_53C
  loc_B67BD4: ImpAdLdI4 MemVar_D9302C
  loc_B67BD7: CVarStr var_54C
  loc_B67BDA: ConcatVar var_55C
  loc_B67BDE: LitVarStr var_56C, "')"
  loc_B67BE3: ConcatVar var_57C
  loc_B67BE7: CStrVarVal var_580
  loc_B67BEB: Call EjecutarRsCls(from_stack_1v)
  loc_B67BF0: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_168 = "": var_16C = "": var_580 = ""
  loc_B67C2D: FFreeVar var_4DC = "": var_4FC = "": var_51C = "": var_53C = "": var_55C = "": var_57C = "": var_164 = "": var_17C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1BC = "": var_1DC = "": var_1FC = "": var_21C = "": var_23C = "": var_25C = "": var_27C = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = "": var_35C = "": var_37C = "": var_39C = "": var_3BC = "": var_3DC = "": var_3FC = "": var_41C = "": var_43C = "": var_45C = "": var_47C = "": var_49C = ""
  loc_B67C78: ExitProcHresult
  loc_B67C79: FLdPr arg_3D00
End Sub

Public Sub Modificar(CucuPers, DetaPers, JuriPers, TelePers, CeluPers, FaxsPers, MailPers, CodiTido, NudoPers, FenaPers, CodiEsci, CodiPofi, CocrPers, DecrPers, NurePers, CobrPers, DebrPers, MarePers, CarePers) 'B66098
  'Data Table: 4574F4
  loc_B65D4C: ILdRf CucuPers
  loc_B65D4F: FStStrCopy var_88
  loc_B65D52: ILdRf DetaPers
  loc_B65D55: FStStrCopy var_8C
  loc_B65D58: ILdRf TelePers
  loc_B65D5B: FStStrCopy var_90
  loc_B65D5E: ILdRf CeluPers
  loc_B65D61: FStStrCopy var_94
  loc_B65D64: ILdRf FaxsPers
  loc_B65D67: FStStrCopy var_98
  loc_B65D6A: ILdRf MailPers
  loc_B65D6D: FStStrCopy var_9C
  loc_B65D70: ILdRf FenaPers
  loc_B65D73: FStStrCopy var_A0
  loc_B65D76: ILdRf Modificar0
  loc_B65D79: FStStrCopy var_A4
  loc_B65D7C: ILdRf ModificarC
  loc_B65D7F: FStStrCopy var_A8
  loc_B65D82: ILdRf MarePers
  loc_B65D85: FStStrCopy var_AC
  loc_B65D88: ILdRf CarePers
  loc_B65D8B: FStStrCopy var_B0
  loc_B65D8E: ILdRf arg_58
  loc_B65D91: FStStrCopy var_B4
  loc_B65D94: ILdRf arg_5C
  loc_B65D97: FStStrCopy var_B8
  loc_B65D9A: ILdRf arg_60
  loc_B65D9D: FStStrCopy var_BC
  loc_B65DA0: ILdRf arg_64
  loc_B65DA3: FStStrCopy var_C0
  loc_B65DA6: FLdRfVar var_C4
  loc_B65DA9: ILdRf var_88
  loc_B65DAC: from_stack_2v = ValidaClave(from_stack_1v)
  loc_B65DB1: ILdRf var_C4
  loc_B65DB4: LitStr vbNullString
  loc_B65DB7: EqStr
  loc_B65DB9: FFree1Str var_C4
  loc_B65DBC: BranchF loc_B65DCA
  loc_B65DBF: LitStr "La PERSONA NO EXISTE. Reintente..."
  loc_B65DC2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B65DC7: Branch loc_B66094
  loc_B65DCA: FLdRfVar var_A0
  loc_B65DCD: CVarRef
  loc_B65DD2: ImpAdCallI2 IsDate()
  loc_B65DD7: FStI2 var_5A6
  loc_B65DDA: LitI4 1
  loc_B65DDF: LitI4 1
  loc_B65DE4: LitVarStr var_138, "yyyy-mm-dd"
  loc_B65DE9: FStVarCopyObj var_148
  loc_B65DEC: FLdRfVar var_148
  loc_B65DEF: FLdRfVar var_A0
  loc_B65DF2: CVarRef
  loc_B65DF7: ImpAdCallI2 Format$(, )
  loc_B65DFC: FStStr var_5AC
  loc_B65DFF: LitStr "START TRANSACTION; UPDATE infogov.persona SET DetaPers = '"
  loc_B65E02: ILdRf var_8C
  loc_B65E05: ConcatStr
  loc_B65E06: FStStrNoPop var_C4
  loc_B65E09: LitStr "',JuriPers = "
  loc_B65E0C: ConcatStr
  loc_B65E0D: FStStrNoPop var_C8
  loc_B65E10: FLdUI1
  loc_B65E14: CStrI2
  loc_B65E16: FStStrNoPop var_CC
  loc_B65E19: ConcatStr
  loc_B65E1A: FStStrNoPop var_D0
  loc_B65E1D: LitStr ",TelePers = '"
  loc_B65E20: ConcatStr
  loc_B65E21: FStStrNoPop var_D4
  loc_B65E24: ILdRf var_90
  loc_B65E27: ConcatStr
  loc_B65E28: FStStrNoPop var_D8
  loc_B65E2B: LitStr "',CeluPers = '"
  loc_B65E2E: ConcatStr
  loc_B65E2F: FStStrNoPop var_DC
  loc_B65E32: ILdRf var_94
  loc_B65E35: ConcatStr
  loc_B65E36: FStStrNoPop var_E0
  loc_B65E39: LitStr "',FaxsPers = '"
  loc_B65E3C: ConcatStr
  loc_B65E3D: FStStrNoPop var_E4
  loc_B65E40: ILdRf var_98
  loc_B65E43: ConcatStr
  loc_B65E44: FStStrNoPop var_E8
  loc_B65E47: LitStr "',MailPers = '"
  loc_B65E4A: ConcatStr
  loc_B65E4B: FStStrNoPop var_EC
  loc_B65E4E: ILdRf var_9C
  loc_B65E51: ConcatStr
  loc_B65E52: FStStrNoPop var_F0
  loc_B65E55: LitStr "',CodiTido = "
  loc_B65E58: ConcatStr
  loc_B65E59: FStStrNoPop var_F4
  loc_B65E5C: FLdUI1
  loc_B65E60: CStrI2
  loc_B65E62: FStStrNoPop var_F8
  loc_B65E65: ConcatStr
  loc_B65E66: FStStrNoPop var_FC
  loc_B65E69: LitStr ",NudoPers = "
  loc_B65E6C: ConcatStr
  loc_B65E6D: FStStrNoPop var_100
  loc_B65E70: ILdRf NudoPers
  loc_B65E73: CStrI4
  loc_B65E75: FStStrNoPop var_104
  loc_B65E78: ConcatStr
  loc_B65E79: FStStrNoPop var_108
  loc_B65E7C: LitStr ",FenaPers = "
  loc_B65E7F: ConcatStr
  loc_B65E80: CVarStr var_1B0
  loc_B65E83: LitVarStr var_180, "Null"
  loc_B65E88: FStVarCopyObj var_190
  loc_B65E8B: FLdRfVar var_190
  loc_B65E8E: LitStr "'"
  loc_B65E91: FLdZeroAd var_5AC
  loc_B65E94: FStStrNoPop var_14C
  loc_B65E97: ConcatStr
  loc_B65E98: FStStrNoPop var_150
  loc_B65E9B: LitStr "'"
  loc_B65E9E: ConcatStr
  loc_B65E9F: CVarStr var_170
  loc_B65EA2: FLdI2 var_5A6
  loc_B65EA5: CVarBoolI2 var_160
  loc_B65EA9: FLdRfVar var_1A0
  loc_B65EAC: ImpAdCallFPR4  = IIf(, , )
  loc_B65EB1: FLdRfVar var_1A0
  loc_B65EB4: ConcatVar var_1C0
  loc_B65EB8: LitVarStr var_1D0, ",CodiEsci = "
  loc_B65EBD: ConcatVar var_1E0
  loc_B65EC1: FLdUI1
  loc_B65EC5: CVarUI1
  loc_B65EC9: ConcatVar var_200
  loc_B65ECD: LitVarStr var_210, ",CodiPofi = "
  loc_B65ED2: ConcatVar var_220
  loc_B65ED6: FLdUI1
  loc_B65EDA: CVarUI1
  loc_B65EDE: ConcatVar var_240
  loc_B65EE2: LitVarStr var_250, ",CocrPers = "
  loc_B65EE7: ConcatVar var_260
  loc_B65EEB: ILdRf CocrPers
  loc_B65EEE: CVarI4
  loc_B65EF2: ConcatVar var_280
  loc_B65EF6: LitVarStr var_290, ", DecrPers = '"
  loc_B65EFB: ConcatVar var_2A0
  loc_B65EFF: ILdRf var_A4
  loc_B65F02: CVarStr var_2B0
  loc_B65F05: ConcatVar var_2C0
  loc_B65F09: LitVarStr var_2D0, "',NurePers = "
  loc_B65F0E: ConcatVar var_2E0
  loc_B65F12: ILdRf Modificar4
  loc_B65F15: CVarI4
  loc_B65F19: ConcatVar var_300
  loc_B65F1D: LitVarStr var_310, ",CobrPers = "
  loc_B65F22: ConcatVar var_320
  loc_B65F26: FLdI2 Modificar8
  loc_B65F29: CVarI2 var_330
  loc_B65F2C: ConcatVar var_340
  loc_B65F30: LitVarStr var_350, ",DebrPers = '"
  loc_B65F35: ConcatVar var_360
  loc_B65F39: ILdRf var_A8
  loc_B65F3C: CVarStr var_370
  loc_B65F3F: ConcatVar var_380
  loc_B65F43: LitVarStr var_390, "',MarePers = '"
  loc_B65F48: ConcatVar var_3A0
  loc_B65F4C: ILdRf var_AC
  loc_B65F4F: CVarStr var_3B0
  loc_B65F52: ConcatVar var_3C0
  loc_B65F56: LitVarStr var_3D0, "',CarePers = '"
  loc_B65F5B: ConcatVar var_3E0
  loc_B65F5F: ILdRf var_B0
  loc_B65F62: CVarStr var_3F0
  loc_B65F65: ConcatVar var_400
  loc_B65F69: LitVarStr var_410, "',UbrePers = '"
  loc_B65F6E: ConcatVar var_420
  loc_B65F72: ILdRf var_B4
  loc_B65F75: CVarStr var_430
  loc_B65F78: ConcatVar var_440
  loc_B65F7C: LitVarStr var_450, "',ColrPers = "
  loc_B65F81: ConcatVar var_460
  loc_B65F85: ILdRf var_B8
  loc_B65F88: CVarStr var_470
  loc_B65F8B: ConcatVar var_480
  loc_B65F8F: LitVarStr var_490, ",DelrPers = '"
  loc_B65F94: ConcatVar var_4A0
  loc_B65F98: ILdRf var_BC
  loc_B65F9B: CVarStr var_4B0
  loc_B65F9E: ConcatVar var_4C0
  loc_B65FA2: LitVarStr var_4D0, "',CoprPers = '"
  loc_B65FA7: ConcatVar var_4E0
  loc_B65FAB: ILdRf var_C0
  loc_B65FAE: CVarStr var_4F0
  loc_B65FB1: ConcatVar var_500
  loc_B65FB5: LitVarStr var_510, "',ModiUsua = '"
  loc_B65FBA: ConcatVar var_520
  loc_B65FBE: ImpAdLdI4 MemVar_D9302C
  loc_B65FC1: CVarStr var_530
  loc_B65FC4: ConcatVar var_540
  loc_B65FC8: LitVarStr var_550, "', ModiFeho = now()  WHERE CucuPers = '"
  loc_B65FCD: ConcatVar var_560
  loc_B65FD1: ILdRf var_88
  loc_B65FD4: CVarStr var_570
  loc_B65FD7: ConcatVar var_580
  loc_B65FDB: LitVarStr var_590, "'; "
  loc_B65FE0: ConcatVar var_5A0
  loc_B65FE4: CStrVarVal var_5A4
  loc_B65FE8: Call EjecutarRsCls(from_stack_1v)
  loc_B65FED: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_14C = "": var_150 = "": var_5A4 = ""
  loc_B6601C: FFreeVar var_4C0 = "": var_4E0 = "": var_500 = "": var_520 = "": var_540 = "": var_560 = "": var_580 = "": var_5A0 = "": var_148 = "": var_160 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_220 = "": var_240 = "": var_260 = "": var_280 = "": var_2A0 = "": var_2C0 = "": var_2E0 = "": var_300 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3C0 = "": var_3E0 = "": var_400 = "": var_420 = "": var_440 = "": var_460 = "": var_480 = ""
  loc_B6606B: OnErrorGoto loc_B66084
  loc_B6606E: LitStr "COMMIT;"
  loc_B66071: Call EjecutarRsCls(from_stack_1v)
  loc_B66076: Call Requery()
  loc_B6607B: ILdRf var_88
  loc_B6607E: Call Encontrar(from_stack_1v)
  loc_B66083: ExitProcHresult
  loc_B66084: LitStr "ROLLBACK;"
  loc_B66087: Call EjecutarRsCls(from_stack_1v)
  loc_B6608C: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B6608F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B66094: ExitProcHresult
  loc_B66095: NewIfNullPr Me
End Sub

Public Sub ModificarComercio(CodiCome, CucuPers, DetaPers, JuriPers, TelePers, CeluPers, FaxsPers, MailPers, CodiTido, NudoPers, FenaPers, CodiEsci, CodiPofi, CocpCome, DecpCome, NupoCome, CobpCome, DebpCome, MapoCome) 'BA7704
  'Data Table: 4574F4
  loc_BA7264: ILdRf CucuPers
  loc_BA7267: FStStrCopy var_88
  loc_BA726A: ILdRf DetaPers
  loc_BA726D: FStStrCopy var_8C
  loc_BA7270: ILdRf TelePers
  loc_BA7273: FStStrCopy var_90
  loc_BA7276: ILdRf CeluPers
  loc_BA7279: FStStrCopy var_94
  loc_BA727C: ILdRf FaxsPers
  loc_BA727F: FStStrCopy var_98
  loc_BA7282: ILdRf MailPers
  loc_BA7285: FStStrCopy var_9C
  loc_BA7288: ILdRf FenaPers
  loc_BA728B: FStStrCopy var_A0
  loc_BA728E: ILdRf ModificarComercio4
  loc_BA7291: FStStrCopy var_A4
  loc_BA7294: ILdRf DebpCome
  loc_BA7297: FStStrCopy var_A8
  loc_BA729A: ILdRf MapoCome
  loc_BA729D: FStStrCopy var_AC
  loc_BA72A0: ILdRf arg_58
  loc_BA72A3: FStStrCopy var_B0
  loc_BA72A6: ILdRf arg_5C
  loc_BA72A9: FStStrCopy var_B4
  loc_BA72AC: ILdRf arg_64
  loc_BA72AF: FStStrCopy var_B8
  loc_BA72B2: ILdRf arg_68
  loc_BA72B5: FStStrCopy var_BC
  loc_BA72B8: ILdRf arg_70
  loc_BA72BB: FStStrCopy var_C0
  loc_BA72BE: ILdRf arg_7C
  loc_BA72C1: FStStrCopy var_C4
  loc_BA72C4: ILdRf Me0
  loc_BA72C7: FStStrCopy var_C8
  loc_BA72CA: ILdRf Me4
  loc_BA72CD: FStStrCopy var_CC
  loc_BA72D0: ILdRf Me8
  loc_BA72D3: FStStrCopy var_D0
  loc_BA72D6: ILdRf MeC
  loc_BA72D9: FStStrCopy var_D4
  loc_BA72DC: ILdRf arg_90
  loc_BA72DF: FStStrCopy var_D8
  loc_BA72E2: ILdRf arg_94
  loc_BA72E5: FStStrCopy var_DC
  loc_BA72E8: FLdRfVar var_E0
  loc_BA72EB: ILdRf var_88
  loc_BA72EE: from_stack_2v = ValidaClave(from_stack_1v)
  loc_BA72F3: ILdRf var_E0
  loc_BA72F6: LitStr vbNullString
  loc_BA72F9: EqStr
  loc_BA72FB: FFree1Str var_E0
  loc_BA72FE: BranchF loc_BA730C
  loc_BA7301: LitStr "La PERSONA NO EXISTE. Reintente..."
  loc_BA7304: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BA7309: Branch loc_BA7703
  loc_BA730C: FLdRfVar var_A0
  loc_BA730F: CVarRef
  loc_BA7314: ImpAdCallI2 IsDate()
  loc_BA7319: FStI2 var_902
  loc_BA731C: LitI4 1
  loc_BA7321: LitI4 1
  loc_BA7326: LitVarStr var_154, "yyyy-mm-dd"
  loc_BA732B: FStVarCopyObj var_164
  loc_BA732E: FLdRfVar var_164
  loc_BA7331: FLdRfVar var_A0
  loc_BA7334: CVarRef
  loc_BA7339: ImpAdCallI2 Format$(, )
  loc_BA733E: FStStr var_908
  loc_BA7341: LitStr "START TRANSACTION; UPDATE infogov.persona SET DetaPers = '"
  loc_BA7344: ILdRf var_8C
  loc_BA7347: ConcatStr
  loc_BA7348: FStStrNoPop var_E0
  loc_BA734B: LitStr "',JuriPers = "
  loc_BA734E: ConcatStr
  loc_BA734F: FStStrNoPop var_E4
  loc_BA7352: FLdUI1
  loc_BA7356: CStrI2
  loc_BA7358: FStStrNoPop var_E8
  loc_BA735B: ConcatStr
  loc_BA735C: FStStrNoPop var_EC
  loc_BA735F: LitStr ",TelePers = '"
  loc_BA7362: ConcatStr
  loc_BA7363: FStStrNoPop var_F0
  loc_BA7366: ILdRf var_90
  loc_BA7369: ConcatStr
  loc_BA736A: FStStrNoPop var_F4
  loc_BA736D: LitStr "',CeluPers = '"
  loc_BA7370: ConcatStr
  loc_BA7371: FStStrNoPop var_F8
  loc_BA7374: ILdRf var_94
  loc_BA7377: ConcatStr
  loc_BA7378: FStStrNoPop var_FC
  loc_BA737B: LitStr "',FaxsPers = '"
  loc_BA737E: ConcatStr
  loc_BA737F: FStStrNoPop var_100
  loc_BA7382: ILdRf var_98
  loc_BA7385: ConcatStr
  loc_BA7386: FStStrNoPop var_104
  loc_BA7389: LitStr "',MailPers = '"
  loc_BA738C: ConcatStr
  loc_BA738D: FStStrNoPop var_108
  loc_BA7390: ILdRf var_9C
  loc_BA7393: ConcatStr
  loc_BA7394: FStStrNoPop var_10C
  loc_BA7397: LitStr "',CodiTido = "
  loc_BA739A: ConcatStr
  loc_BA739B: FStStrNoPop var_110
  loc_BA739E: FLdUI1
  loc_BA73A2: CStrI2
  loc_BA73A4: FStStrNoPop var_114
  loc_BA73A7: ConcatStr
  loc_BA73A8: FStStrNoPop var_118
  loc_BA73AB: LitStr ",NudoPers = "
  loc_BA73AE: ConcatStr
  loc_BA73AF: FStStrNoPop var_11C
  loc_BA73B2: ILdRf NudoPers
  loc_BA73B5: CStrI4
  loc_BA73B7: FStStrNoPop var_120
  loc_BA73BA: ConcatStr
  loc_BA73BB: FStStrNoPop var_124
  loc_BA73BE: LitStr ",FenaPers = "
  loc_BA73C1: ConcatStr
  loc_BA73C2: CVarStr var_1CC
  loc_BA73C5: LitVarStr var_19C, "Null"
  loc_BA73CA: FStVarCopyObj var_1AC
  loc_BA73CD: FLdRfVar var_1AC
  loc_BA73D0: LitStr "'"
  loc_BA73D3: FLdZeroAd var_908
  loc_BA73D6: FStStrNoPop var_168
  loc_BA73D9: ConcatStr
  loc_BA73DA: FStStrNoPop var_16C
  loc_BA73DD: LitStr "'"
  loc_BA73E0: ConcatStr
  loc_BA73E1: CVarStr var_18C
  loc_BA73E4: FLdI2 var_902
  loc_BA73E7: CVarBoolI2 var_17C
  loc_BA73EB: FLdRfVar var_1BC
  loc_BA73EE: ImpAdCallFPR4  = IIf(, , )
  loc_BA73F3: FLdRfVar var_1BC
  loc_BA73F6: ConcatVar var_1DC
  loc_BA73FA: LitVarStr var_1EC, ",CodiEsci = "
  loc_BA73FF: ConcatVar var_1FC
  loc_BA7403: FLdUI1
  loc_BA7407: CVarUI1
  loc_BA740B: ConcatVar var_21C
  loc_BA740F: LitVarStr var_22C, ",CodiPofi = "
  loc_BA7414: ConcatVar var_23C
  loc_BA7418: FLdUI1
  loc_BA741C: CVarUI1
  loc_BA7420: ConcatVar var_25C
  loc_BA7424: LitVarStr var_26C, ",CocrPers = "
  loc_BA7429: ConcatVar var_27C
  loc_BA742D: ILdRf arg_6C
  loc_BA7430: CVarI4
  loc_BA7434: ConcatVar var_29C
  loc_BA7438: LitVarStr var_2AC, ", DecrPers = '"
  loc_BA743D: ConcatVar var_2BC
  loc_BA7441: ILdRf var_C0
  loc_BA7444: CVarStr var_2CC
  loc_BA7447: ConcatVar var_2DC
  loc_BA744B: LitVarStr var_2EC, "',NurePers = "
  loc_BA7450: ConcatVar var_2FC
  loc_BA7454: ILdRf arg_74
  loc_BA7457: CVarI4
  loc_BA745B: ConcatVar var_31C
  loc_BA745F: LitVarStr var_32C, ",CobrPers = "
  loc_BA7464: ConcatVar var_33C
  loc_BA7468: FLdI2 arg_78
  loc_BA746B: CVarI2 var_34C
  loc_BA746E: ConcatVar var_35C
  loc_BA7472: LitVarStr var_36C, ",DebrPers = '"
  loc_BA7477: ConcatVar var_37C
  loc_BA747B: ILdRf var_C4
  loc_BA747E: CVarStr var_38C
  loc_BA7481: ConcatVar var_39C
  loc_BA7485: LitVarStr var_3AC, "',MarePers = '"
  loc_BA748A: ConcatVar var_3BC
  loc_BA748E: ILdRf var_C8
  loc_BA7491: CVarStr var_3CC
  loc_BA7494: ConcatVar var_3DC
  loc_BA7498: LitVarStr var_3EC, "',CarePers = '"
  loc_BA749D: ConcatVar var_3FC
  loc_BA74A1: ILdRf var_CC
  loc_BA74A4: CVarStr var_40C
  loc_BA74A7: ConcatVar var_41C
  loc_BA74AB: LitVarStr var_42C, "',UbrePers = '"
  loc_BA74B0: ConcatVar var_43C
  loc_BA74B4: ILdRf var_D0
  loc_BA74B7: CVarStr var_44C
  loc_BA74BA: ConcatVar var_45C
  loc_BA74BE: LitVarStr var_46C, "',ColrPers = "
  loc_BA74C3: ConcatVar var_47C
  loc_BA74C7: ILdRf var_D4
  loc_BA74CA: CVarStr var_48C
  loc_BA74CD: ConcatVar var_49C
  loc_BA74D1: LitVarStr var_4AC, ",DelrPers = '"
  loc_BA74D6: ConcatVar var_4BC
  loc_BA74DA: ILdRf var_D8
  loc_BA74DD: CVarStr var_4CC
  loc_BA74E0: ConcatVar var_4DC
  loc_BA74E4: LitVarStr var_4EC, "',CoprPers = '"
  loc_BA74E9: ConcatVar var_4FC
  loc_BA74ED: ILdRf var_DC
  loc_BA74F0: CVarStr var_50C
  loc_BA74F3: ConcatVar var_51C
  loc_BA74F7: LitVarStr var_52C, "',ModiUsua = '"
  loc_BA74FC: ConcatVar var_53C
  loc_BA7500: ImpAdLdI4 MemVar_D9302C
  loc_BA7503: CVarStr var_54C
  loc_BA7506: ConcatVar var_55C
  loc_BA750A: LitVarStr var_56C, "', ModiFeho = now() WHERE CucuPers = '"
  loc_BA750F: ConcatVar var_57C
  loc_BA7513: ILdRf var_88
  loc_BA7516: CVarStr var_58C
  loc_BA7519: ConcatVar var_59C
  loc_BA751D: LitVarStr var_5AC, "'; "
  loc_BA7522: ConcatVar var_5BC
  loc_BA7526: LitVarStr var_5CC, "UPDATE comercio SET CocpCome = "
  loc_BA752B: ConcatVar var_5DC
  loc_BA752F: FLdI2 ModificarComercio0
  loc_BA7532: CVarI2 var_5EC
  loc_BA7535: ConcatVar var_5FC
  loc_BA7539: LitVarStr var_60C, ", DecpCome = '"
  loc_BA753E: ConcatVar var_61C
  loc_BA7542: ILdRf var_A4
  loc_BA7545: CVarStr var_62C
  loc_BA7548: ConcatVar var_63C
  loc_BA754C: LitVarStr var_64C, "', NupoCome = "
  loc_BA7551: ConcatVar var_65C
  loc_BA7555: ILdRf ModificarComercio8
  loc_BA7558: CVarI4
  loc_BA755C: ConcatVar var_67C
  loc_BA7560: LitVarStr var_68C, ", CobpCome = "
  loc_BA7565: ConcatVar var_69C
  loc_BA7569: FLdI2 ModificarComercioC
  loc_BA756C: CVarI2 var_6AC
  loc_BA756F: ConcatVar var_6BC
  loc_BA7573: LitVarStr var_6CC, ", DebpCome = '"
  loc_BA7578: ConcatVar var_6DC
  loc_BA757C: ILdRf var_A8
  loc_BA757F: CVarStr var_6EC
  loc_BA7582: ConcatVar var_6FC
  loc_BA7586: LitVarStr var_70C, "', MapoCome = '"
  loc_BA758B: ConcatVar var_71C
  loc_BA758F: ILdRf var_AC
  loc_BA7592: CVarStr var_72C
  loc_BA7595: ConcatVar var_73C
  loc_BA7599: LitVarStr var_74C, "', CapoCome = '"
  loc_BA759E: ConcatVar var_75C
  loc_BA75A2: ILdRf var_B0
  loc_BA75A5: CVarStr var_76C
  loc_BA75A8: ConcatVar var_77C
  loc_BA75AC: LitVarStr var_78C, "', UbpoCome = '"
  loc_BA75B1: ConcatVar var_79C
  loc_BA75B5: ILdRf var_B4
  loc_BA75B8: CVarStr var_7AC
  loc_BA75BB: ConcatVar var_7BC
  loc_BA75BF: LitVarStr var_7CC, "', ColpCome = "
  loc_BA75C4: ConcatVar var_7DC
  loc_BA75C8: FLdI2 arg_60
  loc_BA75CB: CVarI2 var_7EC
  loc_BA75CE: ConcatVar var_7FC
  loc_BA75D2: LitVarStr var_80C, ", DelpCome = '"
  loc_BA75D7: ConcatVar var_81C
  loc_BA75DB: ILdRf var_B8
  loc_BA75DE: CVarStr var_82C
  loc_BA75E1: ConcatVar var_83C
  loc_BA75E5: LitVarStr var_84C, "', CoppCome = '"
  loc_BA75EA: ConcatVar var_85C
  loc_BA75EE: ILdRf var_BC
  loc_BA75F1: CVarStr var_86C
  loc_BA75F4: ConcatVar var_87C
  loc_BA75F8: LitVarStr var_88C, "', CodiUsua = '"
  loc_BA75FD: ConcatVar var_89C
  loc_BA7601: ImpAdLdI4 MemVar_D9302C
  loc_BA7604: CVarStr var_8AC
  loc_BA7607: ConcatVar var_8BC
  loc_BA760B: LitVarStr var_8CC, "' WHERE CodiCome = "
  loc_BA7610: ConcatVar var_8DC
  loc_BA7614: ILdRf CodiCome
  loc_BA7617: CVarI4
  loc_BA761B: ConcatVar var_8FC
  loc_BA761F: CStrVarVal var_900
  loc_BA7623: Call EjecutarRsCls(from_stack_1v)
  loc_BA7628: FFreeStr var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_168 = "": var_16C = "": var_900 = ""
  loc_BA7657: FFreeVar var_89C = "": var_8BC = "": var_8DC = "": var_8FC = "": var_4DC = "": var_4FC = "": var_51C = "": var_53C = "": var_55C = "": var_57C = "": var_59C = "": var_5BC = "": var_5DC = "": var_5FC = "": var_61C = "": var_63C = "": var_65C = "": var_67C = "": var_69C = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_73C = "": var_75C = "": var_77C = "": var_79C = "": var_7BC = "": var_7DC = "": var_7FC = "": var_81C = "": var_83C = "": var_85C = "": var_87C = "": var_164 = "": var_17C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1BC = "": var_1DC = "": var_1FC = "": var_21C = "": var_23C = "": var_25C = "": var_27C = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = "": var_35C = "": var_37C = "": var_39C = "": var_3BC = "": var_3DC = "": var_3FC = "": var_41C = "": var_43C = "": var_45C = "": var_47C = "": var_49C = ""
  loc_BA76DA: OnErrorGoto loc_BA76F3
  loc_BA76DD: LitStr "COMMIT;"
  loc_BA76E0: Call EjecutarRsCls(from_stack_1v)
  loc_BA76E5: Call Requery()
  loc_BA76EA: ILdRf var_88
  loc_BA76ED: Call Encontrar(from_stack_1v)
  loc_BA76F2: ExitProcHresult
  loc_BA76F3: LitStr "ROLLBACK;"
  loc_BA76F6: Call EjecutarRsCls(from_stack_1v)
  loc_BA76FB: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_BA76FE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BA7703: ExitProcHresult
End Sub

Public Sub ModificarInmueble(CodiInmu, CucuPers, DetaPers, JuriPers, TelePers, CeluPers, FaxsPers, MailPers, CodiTido, NudoPers, FenaPers, CodiEsci, CodiPofi, CocpInmu, DecpInmu, NupoInmu, CobpInmu, DebpInmu, MapoInmu) 'BA7D80
  'Data Table: 4574F4
  loc_BA78E0: ILdRf CucuPers
  loc_BA78E3: FStStrCopy var_88
  loc_BA78E6: ILdRf DetaPers
  loc_BA78E9: FStStrCopy var_8C
  loc_BA78EC: ILdRf TelePers
  loc_BA78EF: FStStrCopy var_90
  loc_BA78F2: ILdRf CeluPers
  loc_BA78F5: FStStrCopy var_94
  loc_BA78F8: ILdRf FaxsPers
  loc_BA78FB: FStStrCopy var_98
  loc_BA78FE: ILdRf MailPers
  loc_BA7901: FStStrCopy var_9C
  loc_BA7904: ILdRf FenaPers
  loc_BA7907: FStStrCopy var_A0
  loc_BA790A: ILdRf ModificarInmueble4
  loc_BA790D: FStStrCopy var_A4
  loc_BA7910: ILdRf DebpInmu
  loc_BA7913: FStStrCopy var_A8
  loc_BA7916: ILdRf MapoInmu
  loc_BA7919: FStStrCopy var_AC
  loc_BA791C: ILdRf arg_58
  loc_BA791F: FStStrCopy var_B0
  loc_BA7922: ILdRf arg_5C
  loc_BA7925: FStStrCopy var_B4
  loc_BA7928: ILdRf arg_64
  loc_BA792B: FStStrCopy var_B8
  loc_BA792E: ILdRf arg_68
  loc_BA7931: FStStrCopy var_BC
  loc_BA7934: ILdRf arg_70
  loc_BA7937: FStStrCopy var_C0
  loc_BA793A: ILdRf arg_7C
  loc_BA793D: FStStrCopy var_C4
  loc_BA7940: ILdRf Me0
  loc_BA7943: FStStrCopy var_C8
  loc_BA7946: ILdRf Me4
  loc_BA7949: FStStrCopy var_CC
  loc_BA794C: ILdRf Me8
  loc_BA794F: FStStrCopy var_D0
  loc_BA7952: ILdRf MeC
  loc_BA7955: FStStrCopy var_D4
  loc_BA7958: ILdRf arg_90
  loc_BA795B: FStStrCopy var_D8
  loc_BA795E: ILdRf arg_94
  loc_BA7961: FStStrCopy var_DC
  loc_BA7964: FLdRfVar var_E0
  loc_BA7967: ILdRf var_88
  loc_BA796A: from_stack_2v = ValidaClave(from_stack_1v)
  loc_BA796F: ILdRf var_E0
  loc_BA7972: LitStr vbNullString
  loc_BA7975: EqStr
  loc_BA7977: FFree1Str var_E0
  loc_BA797A: BranchF loc_BA7988
  loc_BA797D: LitStr "La PERSONA NO EXISTE. Reintente..."
  loc_BA7980: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BA7985: Branch loc_BA7D7F
  loc_BA7988: FLdRfVar var_A0
  loc_BA798B: CVarRef
  loc_BA7990: ImpAdCallI2 IsDate()
  loc_BA7995: FStI2 var_902
  loc_BA7998: LitI4 1
  loc_BA799D: LitI4 1
  loc_BA79A2: LitVarStr var_154, "yyyy-mm-dd"
  loc_BA79A7: FStVarCopyObj var_164
  loc_BA79AA: FLdRfVar var_164
  loc_BA79AD: FLdRfVar var_A0
  loc_BA79B0: CVarRef
  loc_BA79B5: ImpAdCallI2 Format$(, )
  loc_BA79BA: FStStr var_908
  loc_BA79BD: LitStr "START TRANSACTION; UPDATE infogov.persona SET DetaPers = '"
  loc_BA79C0: ILdRf var_8C
  loc_BA79C3: ConcatStr
  loc_BA79C4: FStStrNoPop var_E0
  loc_BA79C7: LitStr "',JuriPers = "
  loc_BA79CA: ConcatStr
  loc_BA79CB: FStStrNoPop var_E4
  loc_BA79CE: FLdUI1
  loc_BA79D2: CStrI2
  loc_BA79D4: FStStrNoPop var_E8
  loc_BA79D7: ConcatStr
  loc_BA79D8: FStStrNoPop var_EC
  loc_BA79DB: LitStr ",TelePers = '"
  loc_BA79DE: ConcatStr
  loc_BA79DF: FStStrNoPop var_F0
  loc_BA79E2: ILdRf var_90
  loc_BA79E5: ConcatStr
  loc_BA79E6: FStStrNoPop var_F4
  loc_BA79E9: LitStr "',CeluPers = '"
  loc_BA79EC: ConcatStr
  loc_BA79ED: FStStrNoPop var_F8
  loc_BA79F0: ILdRf var_94
  loc_BA79F3: ConcatStr
  loc_BA79F4: FStStrNoPop var_FC
  loc_BA79F7: LitStr "',FaxsPers = '"
  loc_BA79FA: ConcatStr
  loc_BA79FB: FStStrNoPop var_100
  loc_BA79FE: ILdRf var_98
  loc_BA7A01: ConcatStr
  loc_BA7A02: FStStrNoPop var_104
  loc_BA7A05: LitStr "',MailPers = '"
  loc_BA7A08: ConcatStr
  loc_BA7A09: FStStrNoPop var_108
  loc_BA7A0C: ILdRf var_9C
  loc_BA7A0F: ConcatStr
  loc_BA7A10: FStStrNoPop var_10C
  loc_BA7A13: LitStr "',CodiTido = "
  loc_BA7A16: ConcatStr
  loc_BA7A17: FStStrNoPop var_110
  loc_BA7A1A: FLdUI1
  loc_BA7A1E: CStrI2
  loc_BA7A20: FStStrNoPop var_114
  loc_BA7A23: ConcatStr
  loc_BA7A24: FStStrNoPop var_118
  loc_BA7A27: LitStr ",NudoPers = "
  loc_BA7A2A: ConcatStr
  loc_BA7A2B: FStStrNoPop var_11C
  loc_BA7A2E: ILdRf NudoPers
  loc_BA7A31: CStrI4
  loc_BA7A33: FStStrNoPop var_120
  loc_BA7A36: ConcatStr
  loc_BA7A37: FStStrNoPop var_124
  loc_BA7A3A: LitStr ",FenaPers = "
  loc_BA7A3D: ConcatStr
  loc_BA7A3E: CVarStr var_1CC
  loc_BA7A41: LitVarStr var_19C, "Null"
  loc_BA7A46: FStVarCopyObj var_1AC
  loc_BA7A49: FLdRfVar var_1AC
  loc_BA7A4C: LitStr "'"
  loc_BA7A4F: FLdZeroAd var_908
  loc_BA7A52: FStStrNoPop var_168
  loc_BA7A55: ConcatStr
  loc_BA7A56: FStStrNoPop var_16C
  loc_BA7A59: LitStr "'"
  loc_BA7A5C: ConcatStr
  loc_BA7A5D: CVarStr var_18C
  loc_BA7A60: FLdI2 var_902
  loc_BA7A63: CVarBoolI2 var_17C
  loc_BA7A67: FLdRfVar var_1BC
  loc_BA7A6A: ImpAdCallFPR4  = IIf(, , )
  loc_BA7A6F: FLdRfVar var_1BC
  loc_BA7A72: ConcatVar var_1DC
  loc_BA7A76: LitVarStr var_1EC, ",CodiEsci = "
  loc_BA7A7B: ConcatVar var_1FC
  loc_BA7A7F: FLdUI1
  loc_BA7A83: CVarUI1
  loc_BA7A87: ConcatVar var_21C
  loc_BA7A8B: LitVarStr var_22C, ",CodiPofi = "
  loc_BA7A90: ConcatVar var_23C
  loc_BA7A94: FLdUI1
  loc_BA7A98: CVarUI1
  loc_BA7A9C: ConcatVar var_25C
  loc_BA7AA0: LitVarStr var_26C, ",CocrPers = "
  loc_BA7AA5: ConcatVar var_27C
  loc_BA7AA9: ILdRf arg_6C
  loc_BA7AAC: CVarI4
  loc_BA7AB0: ConcatVar var_29C
  loc_BA7AB4: LitVarStr var_2AC, ", DecrPers = '"
  loc_BA7AB9: ConcatVar var_2BC
  loc_BA7ABD: ILdRf var_C0
  loc_BA7AC0: CVarStr var_2CC
  loc_BA7AC3: ConcatVar var_2DC
  loc_BA7AC7: LitVarStr var_2EC, "',NurePers = "
  loc_BA7ACC: ConcatVar var_2FC
  loc_BA7AD0: ILdRf arg_74
  loc_BA7AD3: CVarI4
  loc_BA7AD7: ConcatVar var_31C
  loc_BA7ADB: LitVarStr var_32C, ",CobrPers = "
  loc_BA7AE0: ConcatVar var_33C
  loc_BA7AE4: FLdI2 arg_78
  loc_BA7AE7: CVarI2 var_34C
  loc_BA7AEA: ConcatVar var_35C
  loc_BA7AEE: LitVarStr var_36C, ",DebrPers = '"
  loc_BA7AF3: ConcatVar var_37C
  loc_BA7AF7: ILdRf var_C4
  loc_BA7AFA: CVarStr var_38C
  loc_BA7AFD: ConcatVar var_39C
  loc_BA7B01: LitVarStr var_3AC, "',MarePers = '"
  loc_BA7B06: ConcatVar var_3BC
  loc_BA7B0A: ILdRf var_C8
  loc_BA7B0D: CVarStr var_3CC
  loc_BA7B10: ConcatVar var_3DC
  loc_BA7B14: LitVarStr var_3EC, "',CarePers = '"
  loc_BA7B19: ConcatVar var_3FC
  loc_BA7B1D: ILdRf var_CC
  loc_BA7B20: CVarStr var_40C
  loc_BA7B23: ConcatVar var_41C
  loc_BA7B27: LitVarStr var_42C, "',UbrePers = '"
  loc_BA7B2C: ConcatVar var_43C
  loc_BA7B30: ILdRf var_D0
  loc_BA7B33: CVarStr var_44C
  loc_BA7B36: ConcatVar var_45C
  loc_BA7B3A: LitVarStr var_46C, "',ColrPers = "
  loc_BA7B3F: ConcatVar var_47C
  loc_BA7B43: ILdRf var_D4
  loc_BA7B46: CVarStr var_48C
  loc_BA7B49: ConcatVar var_49C
  loc_BA7B4D: LitVarStr var_4AC, ",DelrPers = '"
  loc_BA7B52: ConcatVar var_4BC
  loc_BA7B56: ILdRf var_D8
  loc_BA7B59: CVarStr var_4CC
  loc_BA7B5C: ConcatVar var_4DC
  loc_BA7B60: LitVarStr var_4EC, "',CoprPers = '"
  loc_BA7B65: ConcatVar var_4FC
  loc_BA7B69: ILdRf var_DC
  loc_BA7B6C: CVarStr var_50C
  loc_BA7B6F: ConcatVar var_51C
  loc_BA7B73: LitVarStr var_52C, "', ModiUsua = '"
  loc_BA7B78: ConcatVar var_53C
  loc_BA7B7C: ImpAdLdI4 MemVar_D9302C
  loc_BA7B7F: CVarStr var_54C
  loc_BA7B82: ConcatVar var_55C
  loc_BA7B86: LitVarStr var_56C, "', ModiFeho = now() WHERE CucuPers = '"
  loc_BA7B8B: ConcatVar var_57C
  loc_BA7B8F: ILdRf var_88
  loc_BA7B92: CVarStr var_58C
  loc_BA7B95: ConcatVar var_59C
  loc_BA7B99: LitVarStr var_5AC, "'; "
  loc_BA7B9E: ConcatVar var_5BC
  loc_BA7BA2: LitVarStr var_5CC, "UPDATE inmueble SET CocpInmu = "
  loc_BA7BA7: ConcatVar var_5DC
  loc_BA7BAB: FLdI2 ModificarInmueble0
  loc_BA7BAE: CVarI2 var_5EC
  loc_BA7BB1: ConcatVar var_5FC
  loc_BA7BB5: LitVarStr var_60C, ", DecpInmu = '"
  loc_BA7BBA: ConcatVar var_61C
  loc_BA7BBE: ILdRf var_A4
  loc_BA7BC1: CVarStr var_62C
  loc_BA7BC4: ConcatVar var_63C
  loc_BA7BC8: LitVarStr var_64C, "', NupoInmu = "
  loc_BA7BCD: ConcatVar var_65C
  loc_BA7BD1: ILdRf ModificarInmueble8
  loc_BA7BD4: CVarI4
  loc_BA7BD8: ConcatVar var_67C
  loc_BA7BDC: LitVarStr var_68C, ", CobpInmu = "
  loc_BA7BE1: ConcatVar var_69C
  loc_BA7BE5: FLdI2 ModificarInmuebleC
  loc_BA7BE8: CVarI2 var_6AC
  loc_BA7BEB: ConcatVar var_6BC
  loc_BA7BEF: LitVarStr var_6CC, ", DebpInmu = '"
  loc_BA7BF4: ConcatVar var_6DC
  loc_BA7BF8: ILdRf var_A8
  loc_BA7BFB: CVarStr var_6EC
  loc_BA7BFE: ConcatVar var_6FC
  loc_BA7C02: LitVarStr var_70C, "', MapoInmu = '"
  loc_BA7C07: ConcatVar var_71C
  loc_BA7C0B: ILdRf var_AC
  loc_BA7C0E: CVarStr var_72C
  loc_BA7C11: ConcatVar var_73C
  loc_BA7C15: LitVarStr var_74C, "', CapoInmu = '"
  loc_BA7C1A: ConcatVar var_75C
  loc_BA7C1E: ILdRf var_B0
  loc_BA7C21: CVarStr var_76C
  loc_BA7C24: ConcatVar var_77C
  loc_BA7C28: LitVarStr var_78C, "', UbpoInmu = '"
  loc_BA7C2D: ConcatVar var_79C
  loc_BA7C31: ILdRf var_B4
  loc_BA7C34: CVarStr var_7AC
  loc_BA7C37: ConcatVar var_7BC
  loc_BA7C3B: LitVarStr var_7CC, "', ColpInmu = "
  loc_BA7C40: ConcatVar var_7DC
  loc_BA7C44: FLdI2 arg_60
  loc_BA7C47: CVarI2 var_7EC
  loc_BA7C4A: ConcatVar var_7FC
  loc_BA7C4E: LitVarStr var_80C, ", DelpInmu = '"
  loc_BA7C53: ConcatVar var_81C
  loc_BA7C57: ILdRf var_B8
  loc_BA7C5A: CVarStr var_82C
  loc_BA7C5D: ConcatVar var_83C
  loc_BA7C61: LitVarStr var_84C, "', CoppInmu = '"
  loc_BA7C66: ConcatVar var_85C
  loc_BA7C6A: ILdRf var_BC
  loc_BA7C6D: CVarStr var_86C
  loc_BA7C70: ConcatVar var_87C
  loc_BA7C74: LitVarStr var_88C, "', ModiUsua = '"
  loc_BA7C79: ConcatVar var_89C
  loc_BA7C7D: ImpAdLdI4 MemVar_D9302C
  loc_BA7C80: CVarStr var_8AC
  loc_BA7C83: ConcatVar var_8BC
  loc_BA7C87: LitVarStr var_8CC, "' WHERE CodiInmu = "
  loc_BA7C8C: ConcatVar var_8DC
  loc_BA7C90: ILdRf CodiInmu
  loc_BA7C93: CVarI4
  loc_BA7C97: ConcatVar var_8FC
  loc_BA7C9B: CStrVarVal var_900
  loc_BA7C9F: Call EjecutarRsCls(from_stack_1v)
  loc_BA7CA4: FFreeStr var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_168 = "": var_16C = "": var_900 = ""
  loc_BA7CD3: FFreeVar var_89C = "": var_8BC = "": var_8DC = "": var_8FC = "": var_4DC = "": var_4FC = "": var_51C = "": var_53C = "": var_55C = "": var_57C = "": var_59C = "": var_5BC = "": var_5DC = "": var_5FC = "": var_61C = "": var_63C = "": var_65C = "": var_67C = "": var_69C = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_73C = "": var_75C = "": var_77C = "": var_79C = "": var_7BC = "": var_7DC = "": var_7FC = "": var_81C = "": var_83C = "": var_85C = "": var_87C = "": var_164 = "": var_17C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1BC = "": var_1DC = "": var_1FC = "": var_21C = "": var_23C = "": var_25C = "": var_27C = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = "": var_35C = "": var_37C = "": var_39C = "": var_3BC = "": var_3DC = "": var_3FC = "": var_41C = "": var_43C = "": var_45C = "": var_47C = "": var_49C = ""
  loc_BA7D56: OnErrorGoto loc_BA7D6F
  loc_BA7D59: LitStr "COMMIT;"
  loc_BA7D5C: Call EjecutarRsCls(from_stack_1v)
  loc_BA7D61: Call Requery()
  loc_BA7D66: ILdRf var_88
  loc_BA7D69: Call Encontrar(from_stack_1v)
  loc_BA7D6E: ExitProcHresult
  loc_BA7D6F: LitStr "ROLLBACK;"
  loc_BA7D72: Call EjecutarRsCls(from_stack_1v)
  loc_BA7D77: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_BA7D7A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BA7D7F: ExitProcHresult
End Sub

Public Sub ModificarCatastro(CucuPers, DetaPers, JuriPers, TelePers, CeluPers, FaxsPers, MailPers, CodiTido, NudoPers, FenaPers, CodiEsci, CodiPofi) 'B1F600
  'Data Table: 4574F4
  loc_B1F400: ILdRf CucuPers
  loc_B1F403: FStStrCopy var_88
  loc_B1F406: ILdRf DetaPers
  loc_B1F409: FStStrCopy var_8C
  loc_B1F40C: ILdRf TelePers
  loc_B1F40F: FStStrCopy var_90
  loc_B1F412: ILdRf CeluPers
  loc_B1F415: FStStrCopy var_94
  loc_B1F418: ILdRf FaxsPers
  loc_B1F41B: FStStrCopy var_98
  loc_B1F41E: ILdRf MailPers
  loc_B1F421: FStStrCopy var_9C
  loc_B1F424: ILdRf FenaPers
  loc_B1F427: FStStrCopy var_A0
  loc_B1F42A: FLdRfVar var_A4
  loc_B1F42D: ILdRf var_88
  loc_B1F430: from_stack_2v = ValidaClave(from_stack_1v)
  loc_B1F435: ILdRf var_A4
  loc_B1F438: LitStr vbNullString
  loc_B1F43B: EqStr
  loc_B1F43D: FFree1Str var_A4
  loc_B1F440: BranchF loc_B1F44E
  loc_B1F443: LitStr "La PERSONA NO EXISTE. Reintente..."
  loc_B1F446: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1F44B: Branch loc_B1F5F0
  loc_B1F44E: FLdRfVar var_A0
  loc_B1F451: CVarRef
  loc_B1F456: ImpAdCallI2 IsDate()
  loc_B1F45B: FStI2 var_2C6
  loc_B1F45E: LitI4 1
  loc_B1F463: LitI4 1
  loc_B1F468: LitVarStr var_118, "yyyy-mm-dd"
  loc_B1F46D: FStVarCopyObj var_128
  loc_B1F470: FLdRfVar var_128
  loc_B1F473: FLdRfVar var_A0
  loc_B1F476: CVarRef
  loc_B1F47B: ImpAdCallI2 Format$(, )
  loc_B1F480: FStStr var_2CC
  loc_B1F483: LitStr "UPDATE infogov.persona SET DetaPers = '"
  loc_B1F486: ILdRf var_8C
  loc_B1F489: ConcatStr
  loc_B1F48A: FStStrNoPop var_A4
  loc_B1F48D: LitStr "',JuriPers ="
  loc_B1F490: ConcatStr
  loc_B1F491: FStStrNoPop var_A8
  loc_B1F494: FLdUI1
  loc_B1F498: CStrI2
  loc_B1F49A: FStStrNoPop var_AC
  loc_B1F49D: ConcatStr
  loc_B1F49E: FStStrNoPop var_B0
  loc_B1F4A1: LitStr ",TelePers = '"
  loc_B1F4A4: ConcatStr
  loc_B1F4A5: FStStrNoPop var_B4
  loc_B1F4A8: ILdRf var_90
  loc_B1F4AB: ConcatStr
  loc_B1F4AC: FStStrNoPop var_B8
  loc_B1F4AF: LitStr "',CeluPers = '"
  loc_B1F4B2: ConcatStr
  loc_B1F4B3: FStStrNoPop var_BC
  loc_B1F4B6: ILdRf var_94
  loc_B1F4B9: ConcatStr
  loc_B1F4BA: FStStrNoPop var_C0
  loc_B1F4BD: LitStr "',FaxsPers = '"
  loc_B1F4C0: ConcatStr
  loc_B1F4C1: FStStrNoPop var_C4
  loc_B1F4C4: ILdRf var_98
  loc_B1F4C7: ConcatStr
  loc_B1F4C8: FStStrNoPop var_C8
  loc_B1F4CB: LitStr "',MailPers = '"
  loc_B1F4CE: ConcatStr
  loc_B1F4CF: FStStrNoPop var_CC
  loc_B1F4D2: ILdRf var_9C
  loc_B1F4D5: ConcatStr
  loc_B1F4D6: FStStrNoPop var_D0
  loc_B1F4D9: LitStr "',CodiTido = "
  loc_B1F4DC: ConcatStr
  loc_B1F4DD: FStStrNoPop var_D4
  loc_B1F4E0: FLdUI1
  loc_B1F4E4: CStrI2
  loc_B1F4E6: FStStrNoPop var_D8
  loc_B1F4E9: ConcatStr
  loc_B1F4EA: FStStrNoPop var_DC
  loc_B1F4ED: LitStr ",NudoPers = "
  loc_B1F4F0: ConcatStr
  loc_B1F4F1: FStStrNoPop var_E0
  loc_B1F4F4: ILdRf NudoPers
  loc_B1F4F7: CStrI4
  loc_B1F4F9: FStStrNoPop var_E4
  loc_B1F4FC: ConcatStr
  loc_B1F4FD: FStStrNoPop var_E8
  loc_B1F500: LitStr ",FenaPers = "
  loc_B1F503: ConcatStr
  loc_B1F504: CVarStr var_190
  loc_B1F507: LitVarStr var_160, "Null"
  loc_B1F50C: FStVarCopyObj var_170
  loc_B1F50F: FLdRfVar var_170
  loc_B1F512: LitStr "'"
  loc_B1F515: FLdZeroAd var_2CC
  loc_B1F518: FStStrNoPop var_12C
  loc_B1F51B: ConcatStr
  loc_B1F51C: FStStrNoPop var_130
  loc_B1F51F: LitStr "'"
  loc_B1F522: ConcatStr
  loc_B1F523: CVarStr var_150
  loc_B1F526: FLdI2 var_2C6
  loc_B1F529: CVarBoolI2 var_140
  loc_B1F52D: FLdRfVar var_180
  loc_B1F530: ImpAdCallFPR4  = IIf(, , )
  loc_B1F535: FLdRfVar var_180
  loc_B1F538: ConcatVar var_1A0
  loc_B1F53C: LitVarStr var_1B0, ",CodiEsci = "
  loc_B1F541: ConcatVar var_1C0
  loc_B1F545: FLdUI1
  loc_B1F549: CVarUI1
  loc_B1F54D: ConcatVar var_1E0
  loc_B1F551: LitVarStr var_1F0, ",CodiPofi = "
  loc_B1F556: ConcatVar var_200
  loc_B1F55A: FLdUI1
  loc_B1F55E: CVarUI1
  loc_B1F562: ConcatVar var_220
  loc_B1F566: LitVarStr var_230, ",ModiUsua = '"
  loc_B1F56B: ConcatVar var_240
  loc_B1F56F: ImpAdLdI4 MemVar_D9302C
  loc_B1F572: CVarStr var_250
  loc_B1F575: ConcatVar var_260
  loc_B1F579: LitVarStr var_270, "' WHERE CucuPers = '"
  loc_B1F57E: ConcatVar var_280
  loc_B1F582: ILdRf var_88
  loc_B1F585: CVarStr var_290
  loc_B1F588: ConcatVar var_2A0
  loc_B1F58C: LitVarStr var_2B0, "'"
  loc_B1F591: ConcatVar var_2C0
  loc_B1F595: CStrVarVal var_2C4
  loc_B1F599: Call EjecutarRsCls(from_stack_1v)
  loc_B1F59E: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_12C = "": var_130 = "": var_2C4 = ""
  loc_B1F5CD: FFreeVar var_128 = "": var_140 = "": var_150 = "": var_170 = "": var_190 = "": var_180 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_220 = "": var_240 = "": var_260 = "": var_280 = "": var_2A0 = ""
  loc_B1F5F0: Call Requery()
  loc_B1F5F5: ILdRf var_88
  loc_B1F5F8: Call Encontrar(from_stack_1v)
  loc_B1F5FD: ExitProcHresult
  loc_B1F5FE: CastAd
End Sub

Public Sub Requery() '9E7DA0
  'Data Table: 4574F4
  loc_9E7D7C: LitI4 -1
  loc_9E7D81: FLdPr Me
  loc_9E7D84: MemLdPr RsFrm
  loc_9E7D87: Me.Requery from_stack_1
  loc_9E7D8C: LitVarStr var_94, "Primary"
  loc_9E7D91: PopAdLdVar
  loc_9E7D92: FLdPr Me
  loc_9E7D95: LateIdCall
  loc_9E7D9D: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) 'A60750
  'Data Table: 4574F4
  loc_A606EC: ILdRf sSelect
  loc_A606EF: FStStrCopy var_88
  loc_A606F2: LitNothing
  loc_A606F4: CastAd
  loc_A606F7: FStAdFuncNoPop
  loc_A606FA: FLdPr Me
  loc_A606FD: MemStAd
  loc_A60701: FFree1Ad var_8C
  loc_A60704: New Recordset
  loc_A60708: FStAdFuncNoPop
  loc_A6070B: FLdPr Me
  loc_A6070E: MemStAd
  loc_A60712: FFree1Ad var_8C
  loc_A60715: LitI4 -1
  loc_A6071A: LitI4 3
  loc_A6071F: LitI4 3
  loc_A60724: ImpAdLdI4 MemVar_D9301C
  loc_A60727: CVarAd
  loc_A6072B: PopAdLdVar
  loc_A6072C: ILdRf var_88
  loc_A6072F: CVarStr var_9C
  loc_A60732: PopAdLdVar
  loc_A60733: FLdPr Me
  loc_A60736: MemLdPr RsFrm
  loc_A60739: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6073E: LitVarStr var_9C, "Primary"
  loc_A60743: PopAdLdVar
  loc_A60744: FLdPr Me
  loc_A60747: LateIdCall
  loc_A6074F: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A4FA80
  'Data Table: 4574F4
  loc_A4FA2C: ILdRf sSelect
  loc_A4FA2F: FStStrCopy var_88
  loc_A4FA32: LitNothing
  loc_A4FA34: CastAd
  loc_A4FA37: FStAdFuncNoPop
  loc_A4FA3A: FLdPr Me
  loc_A4FA3D: MemStAd
  loc_A4FA41: FFree1Ad var_8C
  loc_A4FA44: New Recordset
  loc_A4FA48: FStAdFuncNoPop
  loc_A4FA4B: FLdPr Me
  loc_A4FA4E: MemStAd
  loc_A4FA52: FFree1Ad var_8C
  loc_A4FA55: LitI4 -1
  loc_A4FA5A: LitI4 3
  loc_A4FA5F: LitI4 3
  loc_A4FA64: ImpAdLdI4 MemVar_D9301C
  loc_A4FA67: CVarAd
  loc_A4FA6B: PopAdLdVar
  loc_A4FA6C: ILdRf var_88
  loc_A4FA6F: CVarStr var_9C
  loc_A4FA72: PopAdLdVar
  loc_A4FA73: FLdPr Me
  loc_A4FA76: MemLdPr global_56
  loc_A4FA79: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4FA7E: ExitProcHresult
End Sub

Public Sub EjecutarRsCls1(sSelect) 'A51178
  'Data Table: 4574F4
  loc_A51124: ILdRf sSelect
  loc_A51127: FStStrCopy var_88
  loc_A5112A: LitNothing
  loc_A5112C: CastAd
  loc_A5112F: FStAdFuncNoPop
  loc_A51132: FLdPr Me
  loc_A51135: MemStAd
  loc_A51139: FFree1Ad var_8C
  loc_A5113C: New Recordset
  loc_A51140: FStAdFuncNoPop
  loc_A51143: FLdPr Me
  loc_A51146: MemStAd
  loc_A5114A: FFree1Ad var_8C
  loc_A5114D: LitI4 -1
  loc_A51152: LitI4 3
  loc_A51157: LitI4 3
  loc_A5115C: ImpAdLdI4 MemVar_D9301C
  loc_A5115F: CVarAd
  loc_A51163: PopAdLdVar
  loc_A51164: ILdRf var_88
  loc_A51167: CVarStr var_9C
  loc_A5116A: PopAdLdVar
  loc_A5116B: FLdPr Me
  loc_A5116E: MemLdPr global_60
  loc_A51171: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A51176: ExitProcHresult
End Sub

Public Sub Encontrar(CucuPers) '9E7D44
  'Data Table: 4574F4
  loc_9E7D28: ILdRf CucuPers
  loc_9E7D2B: FStStrCopy var_88
  loc_9E7D2E: LitStr "CucuPers = "
  loc_9E7D31: ILdRf var_88
  loc_9E7D34: ConcatStr
  loc_9E7D35: PopTmpLdAdStr
  loc_9E7D39: Call Find(from_stack_1v)
  loc_9E7D3E: FFree1Str var_8C
  loc_9E7D41: ExitProcHresult
  loc_9E7D42: FLdPr arg_7C00
End Sub

Public Property Get EditMode() '9D368C
  'Data Table: 4574F4
  loc_9D3670: FLdRfVar var_8C
  loc_9D3673: FLdPr Me
  loc_9D3676: MemLdPr RsFrm
  loc_9D3679:  = Me.EditMode
  loc_9D367E: ILdRf var_8C
  loc_9D3681: FStR4 var_88
  loc_9D3684: ExitProcCbHresult
End Sub

Public Property Get CucuPers() 'A38E30
  'Data Table: 4574F4
  loc_A38DEC: ZeroRetVal
  loc_A38DEE: FLdRfVar var_B0
  loc_A38DF1: FLdRfVar var_A0
  loc_A38DF4: LitVarStr var_9C, "CucuPers"
  loc_A38DF9: PopAdLdVar
  loc_A38DFA: FLdRfVar var_8C
  loc_A38DFD: FLdPr Me
  loc_A38E00: MemLdPr RsFrm
  loc_A38E03:  = Me.Fields
  loc_A38E08: FLdPr var_8C
  loc_A38E0B: from_stack_2 = Me.Item(from_stack_1)
  loc_A38E10: FLdPr var_A0
  loc_A38E13:  = Me.Value
  loc_A38E18: FLdRfVar var_B0
  loc_A38E1B: CStrVarTmp
  loc_A38E1C: FStStr var_88
  loc_A38E1F: FFreeAd var_8C = ""
  loc_A38E26: FFree1Var var_B0 = ""
  loc_A38E29: ExitProcCbHresult
End Sub

Public Property Get DetaPers() 'A38F38
  'Data Table: 4574F4
  loc_A38EF4: ZeroRetVal
  loc_A38EF6: FLdRfVar var_B0
  loc_A38EF9: FLdRfVar var_A0
  loc_A38EFC: LitVarStr var_9C, "DetaPers"
  loc_A38F01: PopAdLdVar
  loc_A38F02: FLdRfVar var_8C
  loc_A38F05: FLdPr Me
  loc_A38F08: MemLdPr RsFrm
  loc_A38F0B:  = Me.Fields
  loc_A38F10: FLdPr var_8C
  loc_A38F13: from_stack_2 = Me.Item(from_stack_1)
  loc_A38F18: FLdPr var_A0
  loc_A38F1B:  = Me.Value
  loc_A38F20: FLdRfVar var_B0
  loc_A38F23: CStrVarTmp
  loc_A38F24: FStStr var_88
  loc_A38F27: FFreeAd var_8C = ""
  loc_A38F2E: FFree1Var var_B0 = ""
  loc_A38F31: ExitProcCbHresult
End Sub

Public Property Get JuriPers() 'A2C824
  'Data Table: 4574F4
  loc_A2C7E0: FLdRfVar var_B0
  loc_A2C7E3: FLdRfVar var_A0
  loc_A2C7E6: LitVarStr var_9C, "JuriPers"
  loc_A2C7EB: PopAdLdVar
  loc_A2C7EC: FLdRfVar var_8C
  loc_A2C7EF: FLdPr Me
  loc_A2C7F2: MemLdPr RsFrm
  loc_A2C7F5:  = Me.Fields
  loc_A2C7FA: FLdPr var_8C
  loc_A2C7FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C802: FLdPr var_A0
  loc_A2C805:  = Me.Value
  loc_A2C80A: FLdRfVar var_B0
  loc_A2C80D: CUI1Var
  loc_A2C80F: FStUI1 var_86
  loc_A2C813: FFreeAd var_8C = ""
  loc_A2C81A: FFree1Var var_B0 = ""
  loc_A2C81D: ExitProcCbHresult
End Sub

Public Property Get TelePers() 'A39040
  'Data Table: 4574F4
  loc_A38FFC: ZeroRetVal
  loc_A38FFE: FLdRfVar var_B0
  loc_A39001: FLdRfVar var_A0
  loc_A39004: LitVarStr var_9C, "TelePers"
  loc_A39009: PopAdLdVar
  loc_A3900A: FLdRfVar var_8C
  loc_A3900D: FLdPr Me
  loc_A39010: MemLdPr RsFrm
  loc_A39013:  = Me.Fields
  loc_A39018: FLdPr var_8C
  loc_A3901B: from_stack_2 = Me.Item(from_stack_1)
  loc_A39020: FLdPr var_A0
  loc_A39023:  = Me.Value
  loc_A39028: FLdRfVar var_B0
  loc_A3902B: CStrVarTmp
  loc_A3902C: FStStr var_88
  loc_A3902F: FFreeAd var_8C = ""
  loc_A39036: FFree1Var var_B0 = ""
  loc_A39039: ExitProcCbHresult
End Sub

Public Property Get CeluPers() 'A39148
  'Data Table: 4574F4
  loc_A39104: ZeroRetVal
  loc_A39106: FLdRfVar var_B0
  loc_A39109: FLdRfVar var_A0
  loc_A3910C: LitVarStr var_9C, "CeluPers"
  loc_A39111: PopAdLdVar
  loc_A39112: FLdRfVar var_8C
  loc_A39115: FLdPr Me
  loc_A39118: MemLdPr RsFrm
  loc_A3911B:  = Me.Fields
  loc_A39120: FLdPr var_8C
  loc_A39123: from_stack_2 = Me.Item(from_stack_1)
  loc_A39128: FLdPr var_A0
  loc_A3912B:  = Me.Value
  loc_A39130: FLdRfVar var_B0
  loc_A39133: CStrVarTmp
  loc_A39134: FStStr var_88
  loc_A39137: FFreeAd var_8C = ""
  loc_A3913E: FFree1Var var_B0 = ""
  loc_A39141: ExitProcCbHresult
End Sub

Public Property Get FaxsPers() 'A391CC
  'Data Table: 4574F4
  loc_A39188: ZeroRetVal
  loc_A3918A: FLdRfVar var_B0
  loc_A3918D: FLdRfVar var_A0
  loc_A39190: LitVarStr var_9C, "FaxsPers"
  loc_A39195: PopAdLdVar
  loc_A39196: FLdRfVar var_8C
  loc_A39199: FLdPr Me
  loc_A3919C: MemLdPr RsFrm
  loc_A3919F:  = Me.Fields
  loc_A391A4: FLdPr var_8C
  loc_A391A7: from_stack_2 = Me.Item(from_stack_1)
  loc_A391AC: FLdPr var_A0
  loc_A391AF:  = Me.Value
  loc_A391B4: FLdRfVar var_B0
  loc_A391B7: CStrVarTmp
  loc_A391B8: FStStr var_88
  loc_A391BB: FFreeAd var_8C = ""
  loc_A391C2: FFree1Var var_B0 = ""
  loc_A391C5: ExitProcCbHresult
End Sub

Public Property Get CodiTido() 'A2C7A4
  'Data Table: 4574F4
  loc_A2C760: FLdRfVar var_B0
  loc_A2C763: FLdRfVar var_A0
  loc_A2C766: LitVarStr var_9C, "CodiTido"
  loc_A2C76B: PopAdLdVar
  loc_A2C76C: FLdRfVar var_8C
  loc_A2C76F: FLdPr Me
  loc_A2C772: MemLdPr RsFrm
  loc_A2C775:  = Me.Fields
  loc_A2C77A: FLdPr var_8C
  loc_A2C77D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C782: FLdPr var_A0
  loc_A2C785:  = Me.Value
  loc_A2C78A: FLdRfVar var_B0
  loc_A2C78D: CI2Var
  loc_A2C78E: FStI2 var_86
  loc_A2C791: FFreeAd var_8C = ""
  loc_A2C798: FFree1Var var_B0 = ""
  loc_A2C79B: ExitProcCbHresult
End Sub

Public Property Get NudoPers() 'A2C624
  'Data Table: 4574F4
  loc_A2C5E0: FLdRfVar var_B0
  loc_A2C5E3: FLdRfVar var_A0
  loc_A2C5E6: LitVarStr var_9C, "NudoPers"
  loc_A2C5EB: PopAdLdVar
  loc_A2C5EC: FLdRfVar var_8C
  loc_A2C5EF: FLdPr Me
  loc_A2C5F2: MemLdPr RsFrm
  loc_A2C5F5:  = Me.Fields
  loc_A2C5FA: FLdPr var_8C
  loc_A2C5FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C602: FLdPr var_A0
  loc_A2C605:  = Me.Value
  loc_A2C60A: FLdRfVar var_B0
  loc_A2C60D: CI4Var
  loc_A2C60F: FStR4 var_88
  loc_A2C612: FFreeAd var_8C = ""
  loc_A2C619: FFree1Var var_B0 = ""
  loc_A2C61C: ExitProcCbHresult
  loc_A2C622: EqR4
End Sub

Public Property Get FenaPers() 'A93A04
  'Data Table: 4574F4
  loc_A93970: ZeroRetVal
  loc_A93972: FLdRfVar var_A0
  loc_A93975: LitVarStr var_9C, "FenaPers"
  loc_A9397A: PopAdLdVar
  loc_A9397B: FLdRfVar var_8C
  loc_A9397E: FLdPr Me
  loc_A93981: MemLdPr RsFrm
  loc_A93984:  = Me.Fields
  loc_A93989: FLdPr var_8C
  loc_A9398C: from_stack_2 = Me.Item(from_stack_1)
  loc_A93991: FLdZeroAd var_A0
  loc_A93994: CVarAd
  loc_A93998: ImpAdCallI2 IsNull()
  loc_A9399D: FStI2 var_11A
  loc_A939A0: FLdRfVar var_C8
  loc_A939A3: LitVarStr var_C4, "FenaPers"
  loc_A939A8: PopAdLdVar
  loc_A939A9: FLdRfVar var_B4
  loc_A939AC: FLdPr Me
  loc_A939AF: MemLdPr RsFrm
  loc_A939B2:  = Me.Fields
  loc_A939B7: FLdPr var_B4
  loc_A939BA: from_stack_2 = Me.Item(from_stack_1)
  loc_A939BF: FLdZeroAd var_C8
  loc_A939C2: CVarAd
  loc_A939C6: LitVarStr var_E8, vbNullString
  loc_A939CB: FStVarCopyObj var_F8
  loc_A939CE: FLdRfVar var_F8
  loc_A939D1: FLdI2 var_11A
  loc_A939D4: CVarBoolI2 var_D8
  loc_A939D8: FLdRfVar var_118
  loc_A939DB: ImpAdCallFPR4  = IIf(, , )
  loc_A939E0: FLdRfVar var_118
  loc_A939E3: CStrVarTmp
  loc_A939E4: FStStr var_88
  loc_A939E7: FFreeAd var_8C = ""
  loc_A939EE: FFreeVar var_B0 = "": var_D8 = "": var_F8 = "": var_108 = ""
  loc_A939FB: ExitProcCbHresult
End Sub

Public Property Get CodiEsci() 'A328A4
  'Data Table: 4574F4
  loc_A32860: FLdRfVar var_B0
  loc_A32863: FLdRfVar var_A0
  loc_A32866: LitVarStr var_9C, "CodiEsci"
  loc_A3286B: PopAdLdVar
  loc_A3286C: FLdRfVar var_8C
  loc_A3286F: FLdPr Me
  loc_A32872: MemLdPr RsFrm
  loc_A32875:  = Me.Fields
  loc_A3287A: FLdPr var_8C
  loc_A3287D: from_stack_2 = Me.Item(from_stack_1)
  loc_A32882: FLdPr var_A0
  loc_A32885:  = Me.Value
  loc_A3288A: FLdRfVar var_B0
  loc_A3288D: CUI1Var
  loc_A3288F: FStUI1 var_86
  loc_A32893: FFreeAd var_8C = ""
  loc_A3289A: FFree1Var var_B0 = ""
  loc_A3289D: ExitProcCbHresult
End Sub

Public Property Get CodiPofi() 'A32824
  'Data Table: 4574F4
  loc_A327E0: FLdRfVar var_B0
  loc_A327E3: FLdRfVar var_A0
  loc_A327E6: LitVarStr var_9C, "CodiPofi"
  loc_A327EB: PopAdLdVar
  loc_A327EC: FLdRfVar var_8C
  loc_A327EF: FLdPr Me
  loc_A327F2: MemLdPr RsFrm
  loc_A327F5:  = Me.Fields
  loc_A327FA: FLdPr var_8C
  loc_A327FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A32802: FLdPr var_A0
  loc_A32805:  = Me.Value
  loc_A3280A: FLdRfVar var_B0
  loc_A3280D: CUI1Var
  loc_A3280F: FStUI1 var_86
  loc_A32813: FFreeAd var_8C = ""
  loc_A3281A: FFree1Var var_B0 = ""
  loc_A3281D: ExitProcCbHresult
End Sub

Public Property Get CocrPers() 'A2C0A4
  'Data Table: 4574F4
  loc_A2C060: FLdRfVar var_B0
  loc_A2C063: FLdRfVar var_A0
  loc_A2C066: LitVarStr var_9C, "CocrPers"
  loc_A2C06B: PopAdLdVar
  loc_A2C06C: FLdRfVar var_8C
  loc_A2C06F: FLdPr Me
  loc_A2C072: MemLdPr RsFrm
  loc_A2C075:  = Me.Fields
  loc_A2C07A: FLdPr var_8C
  loc_A2C07D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C082: FLdPr var_A0
  loc_A2C085:  = Me.Value
  loc_A2C08A: FLdRfVar var_B0
  loc_A2C08D: CI4Var
  loc_A2C08F: FStR4 var_88
  loc_A2C092: FFreeAd var_8C = ""
  loc_A2C099: FFree1Var var_B0 = ""
  loc_A2C09C: ExitProcCbHresult
  loc_A2C0A2: ConcatStr
End Sub

Public Property Get DecrPers() 'A394E4
  'Data Table: 4574F4
  loc_A394A0: ZeroRetVal
  loc_A394A2: FLdRfVar var_B0
  loc_A394A5: FLdRfVar var_A0
  loc_A394A8: LitVarStr var_9C, "DecrPers"
  loc_A394AD: PopAdLdVar
  loc_A394AE: FLdRfVar var_8C
  loc_A394B1: FLdPr Me
  loc_A394B4: MemLdPr RsFrm
  loc_A394B7:  = Me.Fields
  loc_A394BC: FLdPr var_8C
  loc_A394BF: from_stack_2 = Me.Item(from_stack_1)
  loc_A394C4: FLdPr var_A0
  loc_A394C7:  = Me.Value
  loc_A394CC: FLdRfVar var_B0
  loc_A394CF: CStrVarTmp
  loc_A394D0: FStStr var_88
  loc_A394D3: FFreeAd var_8C = ""
  loc_A394DA: FFree1Var var_B0 = ""
  loc_A394DD: ExitProcCbHresult
End Sub

Public Property Get NurePers() 'A2BF24
  'Data Table: 4574F4
  loc_A2BEE0: FLdRfVar var_B0
  loc_A2BEE3: FLdRfVar var_A0
  loc_A2BEE6: LitVarStr var_9C, "NurePers"
  loc_A2BEEB: PopAdLdVar
  loc_A2BEEC: FLdRfVar var_8C
  loc_A2BEEF: FLdPr Me
  loc_A2BEF2: MemLdPr RsFrm
  loc_A2BEF5:  = Me.Fields
  loc_A2BEFA: FLdPr var_8C
  loc_A2BEFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2BF02: FLdPr var_A0
  loc_A2BF05:  = Me.Value
  loc_A2BF0A: FLdRfVar var_B0
  loc_A2BF0D: CI4Var
  loc_A2BF0F: FStR4 var_88
  loc_A2BF12: FFreeAd var_8C = ""
  loc_A2BF19: FFree1Var var_B0 = ""
  loc_A2BF1C: ExitProcCbHresult
End Sub

Public Property Get CobrPers() 'A2BD24
  'Data Table: 4574F4
  loc_A2BCE0: FLdRfVar var_B0
  loc_A2BCE3: FLdRfVar var_A0
  loc_A2BCE6: LitVarStr var_9C, "CobrPers"
  loc_A2BCEB: PopAdLdVar
  loc_A2BCEC: FLdRfVar var_8C
  loc_A2BCEF: FLdPr Me
  loc_A2BCF2: MemLdPr RsFrm
  loc_A2BCF5:  = Me.Fields
  loc_A2BCFA: FLdPr var_8C
  loc_A2BCFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2BD02: FLdPr var_A0
  loc_A2BD05:  = Me.Value
  loc_A2BD0A: FLdRfVar var_B0
  loc_A2BD0D: CI2Var
  loc_A2BD0E: FStI2 var_86
  loc_A2BD11: FFreeAd var_8C = ""
  loc_A2BD18: FFree1Var var_B0 = ""
  loc_A2BD1B: ExitProcCbHresult
  loc_A2BD21: MemStFPR4 global_1241
End Sub

Public Property Get DebrPers() 'A39670
  'Data Table: 4574F4
  loc_A3962C: ZeroRetVal
  loc_A3962E: FLdRfVar var_B0
  loc_A39631: FLdRfVar var_A0
  loc_A39634: LitVarStr var_9C, "DebrPers"
  loc_A39639: PopAdLdVar
  loc_A3963A: FLdRfVar var_8C
  loc_A3963D: FLdPr Me
  loc_A39640: MemLdPr RsFrm
  loc_A39643:  = Me.Fields
  loc_A39648: FLdPr var_8C
  loc_A3964B: from_stack_2 = Me.Item(from_stack_1)
  loc_A39650: FLdPr var_A0
  loc_A39653:  = Me.Value
  loc_A39658: FLdRfVar var_B0
  loc_A3965B: CStrVarTmp
  loc_A3965C: FStStr var_88
  loc_A3965F: FFreeAd var_8C = ""
  loc_A39666: FFree1Var var_B0 = ""
  loc_A39669: ExitProcCbHresult
End Sub

Public Property Get MarePers() 'A396F4
  'Data Table: 4574F4
  loc_A396B0: ZeroRetVal
  loc_A396B2: FLdRfVar var_B0
  loc_A396B5: FLdRfVar var_A0
  loc_A396B8: LitVarStr var_9C, "MarePers"
  loc_A396BD: PopAdLdVar
  loc_A396BE: FLdRfVar var_8C
  loc_A396C1: FLdPr Me
  loc_A396C4: MemLdPr RsFrm
  loc_A396C7:  = Me.Fields
  loc_A396CC: FLdPr var_8C
  loc_A396CF: from_stack_2 = Me.Item(from_stack_1)
  loc_A396D4: FLdPr var_A0
  loc_A396D7:  = Me.Value
  loc_A396DC: FLdRfVar var_B0
  loc_A396DF: CStrVarTmp
  loc_A396E0: FStStr var_88
  loc_A396E3: FFreeAd var_8C = ""
  loc_A396EA: FFree1Var var_B0 = ""
  loc_A396ED: ExitProcCbHresult
End Sub

Public Property Get CarePers() 'A39778
  'Data Table: 4574F4
  loc_A39734: ZeroRetVal
  loc_A39736: FLdRfVar var_B0
  loc_A39739: FLdRfVar var_A0
  loc_A3973C: LitVarStr var_9C, "CarePers"
  loc_A39741: PopAdLdVar
  loc_A39742: FLdRfVar var_8C
  loc_A39745: FLdPr Me
  loc_A39748: MemLdPr RsFrm
  loc_A3974B:  = Me.Fields
  loc_A39750: FLdPr var_8C
  loc_A39753: from_stack_2 = Me.Item(from_stack_1)
  loc_A39758: FLdPr var_A0
  loc_A3975B:  = Me.Value
  loc_A39760: FLdRfVar var_B0
  loc_A39763: CStrVarTmp
  loc_A39764: FStStr var_88
  loc_A39767: FFreeAd var_8C = ""
  loc_A3976E: FFree1Var var_B0 = ""
  loc_A39771: ExitProcCbHresult
End Sub

Public Property Get UbrePers() 'A397FC
  'Data Table: 4574F4
  loc_A397B8: ZeroRetVal
  loc_A397BA: FLdRfVar var_B0
  loc_A397BD: FLdRfVar var_A0
  loc_A397C0: LitVarStr var_9C, "UbrePers"
  loc_A397C5: PopAdLdVar
  loc_A397C6: FLdRfVar var_8C
  loc_A397C9: FLdPr Me
  loc_A397CC: MemLdPr RsFrm
  loc_A397CF:  = Me.Fields
  loc_A397D4: FLdPr var_8C
  loc_A397D7: from_stack_2 = Me.Item(from_stack_1)
  loc_A397DC: FLdPr var_A0
  loc_A397DF:  = Me.Value
  loc_A397E4: FLdRfVar var_B0
  loc_A397E7: CStrVarTmp
  loc_A397E8: FStStr var_88
  loc_A397EB: FFreeAd var_8C = ""
  loc_A397F2: FFree1Var var_B0 = ""
  loc_A397F5: ExitProcCbHresult
End Sub

Public Property Get ColrPers() 'A31DA4
  'Data Table: 4574F4
  loc_A31D60: FLdRfVar var_B0
  loc_A31D63: FLdRfVar var_A0
  loc_A31D66: LitVarStr var_9C, "ColrPers"
  loc_A31D6B: PopAdLdVar
  loc_A31D6C: FLdRfVar var_8C
  loc_A31D6F: FLdPr Me
  loc_A31D72: MemLdPr RsFrm
  loc_A31D75:  = Me.Fields
  loc_A31D7A: FLdPr var_8C
  loc_A31D7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31D82: FLdPr var_A0
  loc_A31D85:  = Me.Value
  loc_A31D8A: FLdRfVar var_B0
  loc_A31D8D: CI2Var
  loc_A31D8E: FStI2 var_86
  loc_A31D91: FFreeAd var_8C = ""
  loc_A31D98: FFree1Var var_B0 = ""
  loc_A31D9B: ExitProcCbHresult
End Sub

Public Property Get DelrPers() 'A39904
  'Data Table: 4574F4
  loc_A398C0: ZeroRetVal
  loc_A398C2: FLdRfVar var_B0
  loc_A398C5: FLdRfVar var_A0
  loc_A398C8: LitVarStr var_9C, "DelrPers"
  loc_A398CD: PopAdLdVar
  loc_A398CE: FLdRfVar var_8C
  loc_A398D1: FLdPr Me
  loc_A398D4: MemLdPr RsFrm
  loc_A398D7:  = Me.Fields
  loc_A398DC: FLdPr var_8C
  loc_A398DF: from_stack_2 = Me.Item(from_stack_1)
  loc_A398E4: FLdPr var_A0
  loc_A398E7:  = Me.Value
  loc_A398EC: FLdRfVar var_B0
  loc_A398EF: CStrVarTmp
  loc_A398F0: FStStr var_88
  loc_A398F3: FFreeAd var_8C = ""
  loc_A398FA: FFree1Var var_B0 = ""
  loc_A398FD: ExitProcCbHresult
End Sub

Public Property Get CoprPers() 'A39A0C
  'Data Table: 4574F4
  loc_A399C8: ZeroRetVal
  loc_A399CA: FLdRfVar var_B0
  loc_A399CD: FLdRfVar var_A0
  loc_A399D0: LitVarStr var_9C, "CoprPers"
  loc_A399D5: PopAdLdVar
  loc_A399D6: FLdRfVar var_8C
  loc_A399D9: FLdPr Me
  loc_A399DC: MemLdPr RsFrm
  loc_A399DF:  = Me.Fields
  loc_A399E4: FLdPr var_8C
  loc_A399E7: from_stack_2 = Me.Item(from_stack_1)
  loc_A399EC: FLdPr var_A0
  loc_A399EF:  = Me.Value
  loc_A399F4: FLdRfVar var_B0
  loc_A399F7: CStrVarTmp
  loc_A399F8: FStStr var_88
  loc_A399FB: FFreeAd var_8C = ""
  loc_A39A02: FFree1Var var_B0 = ""
  loc_A39A05: ExitProcCbHresult
End Sub

Public Property Get CodiUsua() 'A39B14
  'Data Table: 4574F4
  loc_A39AD0: ZeroRetVal
  loc_A39AD2: FLdRfVar var_B0
  loc_A39AD5: FLdRfVar var_A0
  loc_A39AD8: LitVarStr var_9C, "CodiUsua"
  loc_A39ADD: PopAdLdVar
  loc_A39ADE: FLdRfVar var_8C
  loc_A39AE1: FLdPr Me
  loc_A39AE4: MemLdPr RsFrm
  loc_A39AE7:  = Me.Fields
  loc_A39AEC: FLdPr var_8C
  loc_A39AEF: from_stack_2 = Me.Item(from_stack_1)
  loc_A39AF4: FLdPr var_A0
  loc_A39AF7:  = Me.Value
  loc_A39AFC: FLdRfVar var_B0
  loc_A39AFF: CStrVarTmp
  loc_A39B00: FStStr var_88
  loc_A39B03: FFreeAd var_8C = ""
  loc_A39B0A: FFree1Var var_B0 = ""
  loc_A39B0D: ExitProcCbHresult
End Sub

Public Property Get CodiCome() 'A1EBF8
  'Data Table: 4574F4
  loc_A1EBC0: ZeroRetValVar
  loc_A1EBC2: FLdRfVar var_AC
  loc_A1EBC5: LitVarStr var_A8, "CodiCome"
  loc_A1EBCA: PopAdLdVar
  loc_A1EBCB: FLdRfVar var_98
  loc_A1EBCE: FLdPr Me
  loc_A1EBD1: MemLdPr RsFrm
  loc_A1EBD4:  = Me.Fields
  loc_A1EBD9: FLdPr var_98
  loc_A1EBDC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1EBE1: FLdZeroAd var_AC
  loc_A1EBE4: CVarAd
  loc_A1EBE8: FStVar CodiCome
  loc_A1EBEC: FFree1Ad var_98
  loc_A1EBEF: ExitProcCbHresult
End Sub

Public Property Get CodiInmu() 'A1FA08
  'Data Table: 4574F4
  loc_A1F9D0: ZeroRetValVar
  loc_A1F9D2: FLdRfVar var_AC
  loc_A1F9D5: LitVarStr var_A8, "CodiInmu"
  loc_A1F9DA: PopAdLdVar
  loc_A1F9DB: FLdRfVar var_98
  loc_A1F9DE: FLdPr Me
  loc_A1F9E1: MemLdPr RsFrm
  loc_A1F9E4:  = Me.Fields
  loc_A1F9E9: FLdPr var_98
  loc_A1F9EC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F9F1: FLdZeroAd var_AC
  loc_A1F9F4: CVarAd
  loc_A1F9F8: FStVar CodiInmu
  loc_A1F9FC: FFree1Ad var_98
  loc_A1F9FF: ExitProcCbHresult
End Sub

Public Property Get CuenCtct() 'A1BD18
  'Data Table: 4574F4
  loc_A1BCE0: ZeroRetValVar
  loc_A1BCE2: FLdRfVar var_AC
  loc_A1BCE5: LitVarStr var_A8, "CuenCtct"
  loc_A1BCEA: PopAdLdVar
  loc_A1BCEB: FLdRfVar var_98
  loc_A1BCEE: FLdPr Me
  loc_A1BCF1: MemLdPr RsFrm
  loc_A1BCF4:  = Me.Fields
  loc_A1BCF9: FLdPr var_98
  loc_A1BCFC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1BD01: FLdZeroAd var_AC
  loc_A1BD04: CVarAd
  loc_A1BD08: FStVar CuenCtct
  loc_A1BD0C: FFree1Ad var_98
  loc_A1BD0F: ExitProcCbHresult
End Sub

Public Property Get Nume() 'A1FD50
  'Data Table: 4574F4
  loc_A1FD18: ZeroRetValVar
  loc_A1FD1A: FLdRfVar var_AC
  loc_A1FD1D: LitVarStr var_A8, "Nume"
  loc_A1FD22: PopAdLdVar
  loc_A1FD23: FLdRfVar var_98
  loc_A1FD26: FLdPr Me
  loc_A1FD29: MemLdPr RsFrm
  loc_A1FD2C:  = Me.Fields
  loc_A1FD31: FLdPr var_98
  loc_A1FD34: from_stack_2 = Me.Item(from_stack_1)
  loc_A1FD39: FLdZeroAd var_AC
  loc_A1FD3C: CVarAd
  loc_A1FD40: FStVar Nume
  loc_A1FD44: FFree1Ad var_98
  loc_A1FD47: ExitProcCbHresult
End Sub

Public Property Get DecaPost() 'A39B98
  'Data Table: 4574F4
  loc_A39B54: ZeroRetVal
  loc_A39B56: FLdRfVar var_B0
  loc_A39B59: FLdRfVar var_A0
  loc_A39B5C: LitVarStr var_9C, "DecaPost"
  loc_A39B61: PopAdLdVar
  loc_A39B62: FLdRfVar var_8C
  loc_A39B65: FLdPr Me
  loc_A39B68: MemLdPr RsFrm
  loc_A39B6B:  = Me.Fields
  loc_A39B70: FLdPr var_8C
  loc_A39B73: from_stack_2 = Me.Item(from_stack_1)
  loc_A39B78: FLdPr var_A0
  loc_A39B7B:  = Me.Value
  loc_A39B80: FLdRfVar var_B0
  loc_A39B83: CStrVarTmp
  loc_A39B84: FStStr var_88
  loc_A39B87: FFreeAd var_8C = ""
  loc_A39B8E: FFree1Var var_B0 = ""
  loc_A39B91: ExitProcCbHresult
End Sub

Public Property Get NumePost() 'A39C1C
  'Data Table: 4574F4
  loc_A39BD8: ZeroRetVal
  loc_A39BDA: FLdRfVar var_B0
  loc_A39BDD: FLdRfVar var_A0
  loc_A39BE0: LitVarStr var_9C, "NumePost"
  loc_A39BE5: PopAdLdVar
  loc_A39BE6: FLdRfVar var_8C
  loc_A39BE9: FLdPr Me
  loc_A39BEC: MemLdPr RsFrm
  loc_A39BEF:  = Me.Fields
  loc_A39BF4: FLdPr var_8C
  loc_A39BF7: from_stack_2 = Me.Item(from_stack_1)
  loc_A39BFC: FLdPr var_A0
  loc_A39BFF:  = Me.Value
  loc_A39C04: FLdRfVar var_B0
  loc_A39C07: CStrVarTmp
  loc_A39C08: FStStr var_88
  loc_A39C0B: FFreeAd var_8C = ""
  loc_A39C12: FFree1Var var_B0 = ""
  loc_A39C15: ExitProcCbHresult
End Sub

Public Property Get DebaPost() 'A39CA0
  'Data Table: 4574F4
  loc_A39C5C: ZeroRetVal
  loc_A39C5E: FLdRfVar var_B0
  loc_A39C61: FLdRfVar var_A0
  loc_A39C64: LitVarStr var_9C, "DebaPost"
  loc_A39C69: PopAdLdVar
  loc_A39C6A: FLdRfVar var_8C
  loc_A39C6D: FLdPr Me
  loc_A39C70: MemLdPr RsFrm
  loc_A39C73:  = Me.Fields
  loc_A39C78: FLdPr var_8C
  loc_A39C7B: from_stack_2 = Me.Item(from_stack_1)
  loc_A39C80: FLdPr var_A0
  loc_A39C83:  = Me.Value
  loc_A39C88: FLdRfVar var_B0
  loc_A39C8B: CStrVarTmp
  loc_A39C8C: FStStr var_88
  loc_A39C8F: FFreeAd var_8C = ""
  loc_A39C96: FFree1Var var_B0 = ""
  loc_A39C99: ExitProcCbHresult
End Sub

Public Property Get ManzPost() 'A39DA8
  'Data Table: 4574F4
  loc_A39D64: ZeroRetVal
  loc_A39D66: FLdRfVar var_B0
  loc_A39D69: FLdRfVar var_A0
  loc_A39D6C: LitVarStr var_9C, "ManzPost"
  loc_A39D71: PopAdLdVar
  loc_A39D72: FLdRfVar var_8C
  loc_A39D75: FLdPr Me
  loc_A39D78: MemLdPr RsFrm
  loc_A39D7B:  = Me.Fields
  loc_A39D80: FLdPr var_8C
  loc_A39D83: from_stack_2 = Me.Item(from_stack_1)
  loc_A39D88: FLdPr var_A0
  loc_A39D8B:  = Me.Value
  loc_A39D90: FLdRfVar var_B0
  loc_A39D93: CStrVarTmp
  loc_A39D94: FStStr var_88
  loc_A39D97: FFreeAd var_8C = ""
  loc_A39D9E: FFree1Var var_B0 = ""
  loc_A39DA1: ExitProcCbHresult
End Sub

Public Property Get CasaPost() 'A39F34
  'Data Table: 4574F4
  loc_A39EF0: ZeroRetVal
  loc_A39EF2: FLdRfVar var_B0
  loc_A39EF5: FLdRfVar var_A0
  loc_A39EF8: LitVarStr var_9C, "CasaPost"
  loc_A39EFD: PopAdLdVar
  loc_A39EFE: FLdRfVar var_8C
  loc_A39F01: FLdPr Me
  loc_A39F04: MemLdPr RsFrm
  loc_A39F07:  = Me.Fields
  loc_A39F0C: FLdPr var_8C
  loc_A39F0F: from_stack_2 = Me.Item(from_stack_1)
  loc_A39F14: FLdPr var_A0
  loc_A39F17:  = Me.Value
  loc_A39F1C: FLdRfVar var_B0
  loc_A39F1F: CStrVarTmp
  loc_A39F20: FStStr var_88
  loc_A39F23: FFreeAd var_8C = ""
  loc_A39F2A: FFree1Var var_B0 = ""
  loc_A39F2D: ExitProcCbHresult
End Sub

Public Property Get UbicPost() 'A39FB8
  'Data Table: 4574F4
  loc_A39F74: ZeroRetVal
  loc_A39F76: FLdRfVar var_B0
  loc_A39F79: FLdRfVar var_A0
  loc_A39F7C: LitVarStr var_9C, "UbicPost"
  loc_A39F81: PopAdLdVar
  loc_A39F82: FLdRfVar var_8C
  loc_A39F85: FLdPr Me
  loc_A39F88: MemLdPr RsFrm
  loc_A39F8B:  = Me.Fields
  loc_A39F90: FLdPr var_8C
  loc_A39F93: from_stack_2 = Me.Item(from_stack_1)
  loc_A39F98: FLdPr var_A0
  loc_A39F9B:  = Me.Value
  loc_A39FA0: FLdRfVar var_B0
  loc_A39FA3: CStrVarTmp
  loc_A39FA4: FStStr var_88
  loc_A39FA7: FFreeAd var_8C = ""
  loc_A39FAE: FFree1Var var_B0 = ""
  loc_A39FB1: ExitProcCbHresult
End Sub

Public Property Get DeloPost() 'A3A0C0
  'Data Table: 4574F4
  loc_A3A07C: ZeroRetVal
  loc_A3A07E: FLdRfVar var_B0
  loc_A3A081: FLdRfVar var_A0
  loc_A3A084: LitVarStr var_9C, "DeloPost"
  loc_A3A089: PopAdLdVar
  loc_A3A08A: FLdRfVar var_8C
  loc_A3A08D: FLdPr Me
  loc_A3A090: MemLdPr RsFrm
  loc_A3A093:  = Me.Fields
  loc_A3A098: FLdPr var_8C
  loc_A3A09B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A0A0: FLdPr var_A0
  loc_A3A0A3:  = Me.Value
  loc_A3A0A8: FLdRfVar var_B0
  loc_A3A0AB: CStrVarTmp
  loc_A3A0AC: FStStr var_88
  loc_A3A0AF: FFreeAd var_8C = ""
  loc_A3A0B6: FFree1Var var_B0 = ""
  loc_A3A0B9: ExitProcCbHresult
  loc_A3A0BF: ExitProc
End Sub

Public Property Get CopoPost() 'A3A144
  'Data Table: 4574F4
  loc_A3A100: ZeroRetVal
  loc_A3A102: FLdRfVar var_B0
  loc_A3A105: FLdRfVar var_A0
  loc_A3A108: LitVarStr var_9C, "CopoPost"
  loc_A3A10D: PopAdLdVar
  loc_A3A10E: FLdRfVar var_8C
  loc_A3A111: FLdPr Me
  loc_A3A114: MemLdPr RsFrm
  loc_A3A117:  = Me.Fields
  loc_A3A11C: FLdPr var_8C
  loc_A3A11F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A124: FLdPr var_A0
  loc_A3A127:  = Me.Value
  loc_A3A12C: FLdRfVar var_B0
  loc_A3A12F: CStrVarTmp
  loc_A3A130: FStStr var_88
  loc_A3A133: FFreeAd var_8C = ""
  loc_A3A13A: FFree1Var var_B0 = ""
  loc_A3A13D: ExitProcCbHresult
End Sub

Public Function ValidaClave(CucuPers) 'A22218
  'Data Table: 4574F4
  loc_A221D8: ILdRf CucuPers
  loc_A221DB: FStStrCopy var_8C
  loc_A221DE: ZeroRetVal
  loc_A221E0: LitStr "SELECT CucuPers FROM infogov.persona WHERE CucuPers = "
  loc_A221E3: ILdRf var_8C
  loc_A221E6: ConcatStr
  loc_A221E7: FStStrNoPop var_90
  loc_A221EA: Call EjecutarRsCls(from_stack_1v)
  loc_A221EF: FFree1Str var_90
  loc_A221F2: FLdRfVar ValidaClave
  loc_A221F5: FLdPr Me
  loc_A221F8: MemLdPr global_56
  loc_A221FB:  = Me.RecordCount
  loc_A22200: ILdRf ValidaClave
  loc_A22203: LitI4 0
  loc_A22208: GtI4
  loc_A22209: BranchF loc_A22212
  loc_A2220C: LitStr "La PERSONA YA EXISTE. Reintente..."
  loc_A2220F: FStStrCopy var_88
  loc_A22212: ExitProcCbHresult
End Function

Public Function CodiTidoValidate(sCodiTido) 'A1F89C
  'Data Table: 4574F4
  loc_A1F868: ILdRf sCodiTido
  loc_A1F86B: FStStrCopy var_98
  loc_A1F86E: ZeroRetValVar
  loc_A1F870: FLdRfVar var_A0
  loc_A1F873: ILdRf var_98
  loc_A1F876: FLdRfVar var_9C
  loc_A1F879: NewIfNullPr clstipodocu
  loc_A1F87C: from_stack_2v = clstipodocu.CodiTidoValidate(from_stack_1v)
  loc_A1F881: FLdZeroAd var_A0
  loc_A1F884: CVarStr var_B0
  loc_A1F887: FStVar CodiTidoValidate
  loc_A1F88B: LitNothing
  loc_A1F88D: CastAd
  loc_A1F890: FStAdFunc var_9C
  loc_A1F893: ExitProcCbHresult
End Function

Public Function BuscaDetalleTipoDocumento(iCodiTido) 'A0931C
  'Data Table: 4574F4
  loc_A092F0: ZeroRetValVar
  loc_A092F2: FLdRfVar var_9C
  loc_A092F5: FLdUI1
  loc_A092F9: FLdRfVar var_98
  loc_A092FC: NewIfNullPr clstipodocu
  loc_A092FF: from_stack_2v = clstipodocu.BuscaDetalleTipoDocu(from_stack_1v)
  loc_A09304: FLdZeroAd var_9C
  loc_A09307: CVarStr var_AC
  loc_A0930A: FStVar BuscaDetalleTipoDocumento
  loc_A0930E: LitNothing
  loc_A09310: CastAd
  loc_A09313: FStAdFunc var_98
  loc_A09316: ExitProcCbHresult
End Function

Public Sub UnificaciondePersonas(sCucuPers) 'C6EAE4
  'Data Table: 4574F4
  loc_C6DBB4: ILdRf sCucuPers
  loc_C6DBB7: FStStrCopy var_88
  loc_C6DBBA: OnErrorGoto loc_C6EAD1
  loc_C6DBBD: LitStr "START TRANSACTION;"
  loc_C6DBC0: Call EjecutarRsCls(from_stack_1v)
  loc_C6DBC5: LitI2_Byte 1
  loc_C6DBC7: FLdRfVar var_8A
  loc_C6DBCA: ImpAdLdRf MemVar_D93B94
  loc_C6DBCD: NewIfNullPr frmUnificaciondePersonas
  loc_C6DBD0: VCallAd Control_ID_
  loc_C6DBD3: FStAdFunc var_90
  loc_C6DBD6: FLdPr var_90
  loc_C6DBD9: LateIdLdVar var_A0 DispID_4 0
  loc_C6DBE0: CI4Var
  loc_C6DBE2: LitI4 1
  loc_C6DBE7: SubI4
  loc_C6DBE8: CI2I4
  loc_C6DBE9: FFree1Ad var_90
  loc_C6DBEC: FFree1Var var_A0 = ""
  loc_C6DBEF: ForI2 var_A4
  loc_C6DBF5: FLdI2 var_8A
  loc_C6DBF8: CI4UI1
  loc_C6DBF9: CVarI4
  loc_C6DBFD: PopAdLdVar
  loc_C6DBFE: LitVarI4
  loc_C6DC06: PopAdLdVar
  loc_C6DC07: ImpAdLdRf MemVar_D93B94
  loc_C6DC0A: NewIfNullPr frmUnificaciondePersonas
  loc_C6DC0D: VCallAd Control_ID_
  loc_C6DC10: FStAdFunc var_90
  loc_C6DC13: FLdPr var_90
  loc_C6DC16: LateIdCallLdVar
  loc_C6DC20: CStrVarTmp
  loc_C6DC21: FStStrNoPop var_E8
  loc_C6DC24: CR8Str
  loc_C6DC26: LitI2_Byte 1
  loc_C6DC28: CR8I2
  loc_C6DC29: EqR4
  loc_C6DC2A: FFree1Str var_E8
  loc_C6DC2D: FFree1Ad var_90
  loc_C6DC30: FFree1Var var_A0 = ""
  loc_C6DC33: BranchF loc_C6DCE2
  loc_C6DC36: FLdI2 var_8A
  loc_C6DC39: CI4UI1
  loc_C6DC3A: CVarI4
  loc_C6DC3E: PopAdLdVar
  loc_C6DC3F: LitVarI4
  loc_C6DC47: PopAdLdVar
  loc_C6DC48: ImpAdLdRf MemVar_D93B94
  loc_C6DC4B: NewIfNullPr frmUnificaciondePersonas
  loc_C6DC4E: VCallAd Control_ID_
  loc_C6DC51: FStAdFunc var_90
  loc_C6DC54: FLdPr var_90
  loc_C6DC57: LateIdCallLdVar
  loc_C6DC61: CStrVarTmp
  loc_C6DC62: FStStrNoPop var_E8
  loc_C6DC65: LitStr "Titular"
  loc_C6DC68: EqStr
  loc_C6DC6A: FFree1Str var_E8
  loc_C6DC6D: FFree1Ad var_90
  loc_C6DC70: FFree1Var var_A0 = ""
  loc_C6DC73: BranchF loc_C6DCE2
  loc_C6DC76: LitStr " UPDATE inmueble SET CucuPers = '"
  loc_C6DC79: ILdRf var_88
  loc_C6DC7C: ConcatStr
  loc_C6DC7D: FStStrNoPop var_E8
  loc_C6DC80: LitStr "', ModiUsua = '"
  loc_C6DC83: ConcatStr
  loc_C6DC84: FStStrNoPop var_EC
  loc_C6DC87: ImpAdLdI4 MemVar_D9302C
  loc_C6DC8A: ConcatStr
  loc_C6DC8B: FStStrNoPop var_F0
  loc_C6DC8E: LitStr "' WHERE inmueble.CodiInmu = "
  loc_C6DC91: ConcatStr
  loc_C6DC92: FStStrNoPop var_F4
  loc_C6DC95: FLdI2 var_8A
  loc_C6DC98: CI4UI1
  loc_C6DC99: CVarI4
  loc_C6DC9D: PopAdLdVar
  loc_C6DC9E: LitVarI4
  loc_C6DCA6: PopAdLdVar
  loc_C6DCA7: ImpAdLdRf MemVar_D93B94
  loc_C6DCAA: NewIfNullPr frmUnificaciondePersonas
  loc_C6DCAD: VCallAd Control_ID_
  loc_C6DCB0: FStAdFunc var_90
  loc_C6DCB3: FLdPr var_90
  loc_C6DCB6: LateIdCallLdVar
  loc_C6DCC0: CStrVarTmp
  loc_C6DCC1: FStStrNoPop var_F8
  loc_C6DCC4: ConcatStr
  loc_C6DCC5: FStStrNoPop var_FC
  loc_C6DCC8: Call EjecutarRsCls(from_stack_1v)
  loc_C6DCCD: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_C6DCDC: FFree1Ad var_90
  loc_C6DCDF: FFree1Var var_A0 = ""
  loc_C6DCE2: FLdI2 var_8A
  loc_C6DCE5: CI4UI1
  loc_C6DCE6: CVarI4
  loc_C6DCEA: PopAdLdVar
  loc_C6DCEB: LitVarI4
  loc_C6DCF3: PopAdLdVar
  loc_C6DCF4: ImpAdLdRf MemVar_D93B94
  loc_C6DCF7: NewIfNullPr frmUnificaciondePersonas
  loc_C6DCFA: VCallAd Control_ID_
  loc_C6DCFD: FStAdFunc var_90
  loc_C6DD00: FLdPr var_90
  loc_C6DD03: LateIdCallLdVar
  loc_C6DD0D: CStrVarTmp
  loc_C6DD0E: FStStrNoPop var_E8
  loc_C6DD11: CR8Str
  loc_C6DD13: LitI2_Byte 2
  loc_C6DD15: CR8I2
  loc_C6DD16: EqR4
  loc_C6DD17: FFree1Str var_E8
  loc_C6DD1A: FFree1Ad var_90
  loc_C6DD1D: FFree1Var var_A0 = ""
  loc_C6DD20: BranchF loc_C6DE64
  loc_C6DD23: FLdI2 var_8A
  loc_C6DD26: CI4UI1
  loc_C6DD27: CVarI4
  loc_C6DD2B: PopAdLdVar
  loc_C6DD2C: LitVarI4
  loc_C6DD34: PopAdLdVar
  loc_C6DD35: ImpAdLdRf MemVar_D93B94
  loc_C6DD38: NewIfNullPr frmUnificaciondePersonas
  loc_C6DD3B: VCallAd Control_ID_
  loc_C6DD3E: FStAdFunc var_90
  loc_C6DD41: FLdPr var_90
  loc_C6DD44: LateIdCallLdVar
  loc_C6DD4E: CStrVarTmp
  loc_C6DD4F: FStStrNoPop var_E8
  loc_C6DD52: LitStr "Titular"
  loc_C6DD55: EqStr
  loc_C6DD57: FFree1Str var_E8
  loc_C6DD5A: FFree1Ad var_90
  loc_C6DD5D: FFree1Var var_A0 = ""
  loc_C6DD60: BranchF loc_C6DE64
  loc_C6DD63: LitStr "Municipalidad de Guaymallén"
  loc_C6DD66: LitStr "Municipalidad de Tunuyán"
  loc_C6DD69: EqStr
  loc_C6DD6B: LitStr "Municipalidad de Guaymallén"
  loc_C6DD6E: LitStr "Municipalidad de General Alvear"
  loc_C6DD71: EqStr
  loc_C6DD73: OrI4
  loc_C6DD74: LitStr "Municipalidad de Guaymallén"
  loc_C6DD77: LitStr "Municipalidad de Santa Rosa"
  loc_C6DD7A: EqStr
  loc_C6DD7C: OrI4
  loc_C6DD7D: LitStr "Municipalidad de Guaymallén"
  loc_C6DD80: LitStr "Municipalidad de La Paz"
  loc_C6DD83: EqStr
  loc_C6DD85: OrI4
  loc_C6DD86: BranchF loc_C6DDF8
  loc_C6DD89: LitStr " UPDATE comercio SET CucuPers = '"
  loc_C6DD8C: ILdRf var_88
  loc_C6DD8F: ConcatStr
  loc_C6DD90: FStStrNoPop var_E8
  loc_C6DD93: LitStr "', ModiUsua = '"
  loc_C6DD96: ConcatStr
  loc_C6DD97: FStStrNoPop var_EC
  loc_C6DD9A: ImpAdLdI4 MemVar_D9302C
  loc_C6DD9D: ConcatStr
  loc_C6DD9E: FStStrNoPop var_F0
  loc_C6DDA1: LitStr "', ModiFeho = now() WHERE comercio.CodiCome = "
  loc_C6DDA4: ConcatStr
  loc_C6DDA5: FStStrNoPop var_F4
  loc_C6DDA8: FLdI2 var_8A
  loc_C6DDAB: CI4UI1
  loc_C6DDAC: CVarI4
  loc_C6DDB0: PopAdLdVar
  loc_C6DDB1: LitVarI4
  loc_C6DDB9: PopAdLdVar
  loc_C6DDBA: ImpAdLdRf MemVar_D93B94
  loc_C6DDBD: NewIfNullPr frmUnificaciondePersonas
  loc_C6DDC0: VCallAd Control_ID_
  loc_C6DDC3: FStAdFunc var_90
  loc_C6DDC6: FLdPr var_90
  loc_C6DDC9: LateIdCallLdVar
  loc_C6DDD3: CStrVarTmp
  loc_C6DDD4: FStStrNoPop var_F8
  loc_C6DDD7: ConcatStr
  loc_C6DDD8: FStStrNoPop var_FC
  loc_C6DDDB: Call EjecutarRsCls(from_stack_1v)
  loc_C6DDE0: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_C6DDEF: FFree1Ad var_90
  loc_C6DDF2: FFree1Var var_A0 = ""
  loc_C6DDF5: Branch loc_C6DE64
  loc_C6DDF8: LitStr " UPDATE comercio SET CucuPers = '"
  loc_C6DDFB: ILdRf var_88
  loc_C6DDFE: ConcatStr
  loc_C6DDFF: FStStrNoPop var_E8
  loc_C6DE02: LitStr "', CodiUsua = '"
  loc_C6DE05: ConcatStr
  loc_C6DE06: FStStrNoPop var_EC
  loc_C6DE09: ImpAdLdI4 MemVar_D9302C
  loc_C6DE0C: ConcatStr
  loc_C6DE0D: FStStrNoPop var_F0
  loc_C6DE10: LitStr "' WHERE comercio.CodiCome = "
  loc_C6DE13: ConcatStr
  loc_C6DE14: FStStrNoPop var_F4
  loc_C6DE17: FLdI2 var_8A
  loc_C6DE1A: CI4UI1
  loc_C6DE1B: CVarI4
  loc_C6DE1F: PopAdLdVar
  loc_C6DE20: LitVarI4
  loc_C6DE28: PopAdLdVar
  loc_C6DE29: ImpAdLdRf MemVar_D93B94
  loc_C6DE2C: NewIfNullPr frmUnificaciondePersonas
  loc_C6DE2F: VCallAd Control_ID_
  loc_C6DE32: FStAdFunc var_90
  loc_C6DE35: FLdPr var_90
  loc_C6DE38: LateIdCallLdVar
  loc_C6DE42: CStrVarTmp
  loc_C6DE43: FStStrNoPop var_F8
  loc_C6DE46: ConcatStr
  loc_C6DE47: FStStrNoPop var_FC
  loc_C6DE4A: Call EjecutarRsCls(from_stack_1v)
  loc_C6DE4F: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_C6DE5E: FFree1Ad var_90
  loc_C6DE61: FFree1Var var_A0 = ""
  loc_C6DE64: FLdI2 var_8A
  loc_C6DE67: CI4UI1
  loc_C6DE68: CVarI4
  loc_C6DE6C: PopAdLdVar
  loc_C6DE6D: LitVarI4
  loc_C6DE75: PopAdLdVar
  loc_C6DE76: ImpAdLdRf MemVar_D93B94
  loc_C6DE79: NewIfNullPr frmUnificaciondePersonas
  loc_C6DE7C: VCallAd Control_ID_
  loc_C6DE7F: FStAdFunc var_90
  loc_C6DE82: FLdPr var_90
  loc_C6DE85: LateIdCallLdVar
  loc_C6DE8F: CStrVarTmp
  loc_C6DE90: FStStrNoPop var_E8
  loc_C6DE93: CR8Str
  loc_C6DE95: LitI2_Byte 3
  loc_C6DE97: CR8I2
  loc_C6DE98: EqR4
  loc_C6DE99: FFree1Str var_E8
  loc_C6DE9C: FFree1Ad var_90
  loc_C6DE9F: FFree1Var var_A0 = ""
  loc_C6DEA2: BranchF loc_C6DF5A
  loc_C6DEA5: FLdI2 var_8A
  loc_C6DEA8: CI4UI1
  loc_C6DEA9: CVarI4
  loc_C6DEAD: PopAdLdVar
  loc_C6DEAE: LitVarI4
  loc_C6DEB6: PopAdLdVar
  loc_C6DEB7: ImpAdLdRf MemVar_D93B94
  loc_C6DEBA: NewIfNullPr frmUnificaciondePersonas
  loc_C6DEBD: VCallAd Control_ID_
  loc_C6DEC0: FStAdFunc var_90
  loc_C6DEC3: FLdPr var_90
  loc_C6DEC6: LateIdCallLdVar
  loc_C6DED0: CStrVarTmp
  loc_C6DED1: FStStrNoPop var_E8
  loc_C6DED4: LitStr "Titular"
  loc_C6DED7: EqStr
  loc_C6DED9: FFree1Str var_E8
  loc_C6DEDC: FFree1Ad var_90
  loc_C6DEDF: FFree1Var var_A0 = ""
  loc_C6DEE2: BranchF loc_C6DF5A
  loc_C6DEE5: LitStr " UPDATE deudvari SET CucuPers = '"
  loc_C6DEE8: ILdRf var_88
  loc_C6DEEB: ConcatStr
  loc_C6DEEC: FStStrNoPop var_E8
  loc_C6DEEF: LitStr "', ModiUsua = '"
  loc_C6DEF2: ConcatStr
  loc_C6DEF3: FStStrNoPop var_EC
  loc_C6DEF6: ImpAdLdI4 MemVar_D9302C
  loc_C6DEF9: ConcatStr
  loc_C6DEFA: FStStrNoPop var_F0
  loc_C6DEFD: LitStr "', ModiFeho = now() WHERE deudvari.CodiDeva = '"
  loc_C6DF00: ConcatStr
  loc_C6DF01: FStStrNoPop var_F4
  loc_C6DF04: FLdI2 var_8A
  loc_C6DF07: CI4UI1
  loc_C6DF08: CVarI4
  loc_C6DF0C: PopAdLdVar
  loc_C6DF0D: LitVarI4
  loc_C6DF15: PopAdLdVar
  loc_C6DF16: ImpAdLdRf MemVar_D93B94
  loc_C6DF19: NewIfNullPr frmUnificaciondePersonas
  loc_C6DF1C: VCallAd Control_ID_
  loc_C6DF1F: FStAdFunc var_90
  loc_C6DF22: FLdPr var_90
  loc_C6DF25: LateIdCallLdVar
  loc_C6DF2F: CStrVarTmp
  loc_C6DF30: FStStrNoPop var_F8
  loc_C6DF33: ConcatStr
  loc_C6DF34: FStStrNoPop var_FC
  loc_C6DF37: LitStr "'"
  loc_C6DF3A: ConcatStr
  loc_C6DF3B: FStStrNoPop var_100
  loc_C6DF3E: Call EjecutarRsCls(from_stack_1v)
  loc_C6DF43: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C6DF54: FFree1Ad var_90
  loc_C6DF57: FFree1Var var_A0 = ""
  loc_C6DF5A: FLdI2 var_8A
  loc_C6DF5D: CI4UI1
  loc_C6DF5E: CVarI4
  loc_C6DF62: PopAdLdVar
  loc_C6DF63: LitVarI4
  loc_C6DF6B: PopAdLdVar
  loc_C6DF6C: ImpAdLdRf MemVar_D93B94
  loc_C6DF6F: NewIfNullPr frmUnificaciondePersonas
  loc_C6DF72: VCallAd Control_ID_
  loc_C6DF75: FStAdFunc var_90
  loc_C6DF78: FLdPr var_90
  loc_C6DF7B: LateIdCallLdVar
  loc_C6DF85: CStrVarTmp
  loc_C6DF86: FStStrNoPop var_E8
  loc_C6DF89: CR8Str
  loc_C6DF8B: LitI2_Byte 4
  loc_C6DF8D: CR8I2
  loc_C6DF8E: EqR4
  loc_C6DF8F: FFree1Str var_E8
  loc_C6DF92: FFree1Ad var_90
  loc_C6DF95: FFree1Var var_A0 = ""
  loc_C6DF98: BranchF loc_C6E0F7
  loc_C6DF9B: FLdI2 var_8A
  loc_C6DF9E: CI4UI1
  loc_C6DF9F: CVarI4
  loc_C6DFA3: PopAdLdVar
  loc_C6DFA4: LitVarI4
  loc_C6DFAC: PopAdLdVar
  loc_C6DFAD: ImpAdLdRf MemVar_D93B94
  loc_C6DFB0: NewIfNullPr frmUnificaciondePersonas
  loc_C6DFB3: VCallAd Control_ID_
  loc_C6DFB6: FStAdFunc var_90
  loc_C6DFB9: FLdPr var_90
  loc_C6DFBC: LateIdCallLdVar
  loc_C6DFC6: CStrVarTmp
  loc_C6DFC7: FStStrNoPop var_E8
  loc_C6DFCA: LitStr "Titular"
  loc_C6DFCD: EqStr
  loc_C6DFCF: FFree1Str var_E8
  loc_C6DFD2: FFree1Ad var_90
  loc_C6DFD5: FFree1Var var_A0 = ""
  loc_C6DFD8: BranchF loc_C6E0F7
  loc_C6DFDB: LitStr "Municipalidad de Guaymallén"
  loc_C6DFDE: LitStr "Municipalidad de Tunuyán"
  loc_C6DFE1: EqStr
  loc_C6DFE3: LitStr "Municipalidad de Guaymallén"
  loc_C6DFE6: LitStr "Municipalidad de General Alvear"
  loc_C6DFE9: EqStr
  loc_C6DFEB: OrI4
  loc_C6DFEC: LitStr "Municipalidad de Guaymallén"
  loc_C6DFEF: LitStr "Municipalidad de Santa Rosa"
  loc_C6DFF2: EqStr
  loc_C6DFF4: OrI4
  loc_C6DFF5: LitStr "Municipalidad de Guaymallén"
  loc_C6DFF8: LitStr "Municipalidad de La Paz"
  loc_C6DFFB: EqStr
  loc_C6DFFD: OrI4
  loc_C6DFFE: LitStr "Municipalidad de Guaymallén"
  loc_C6E001: LitStr "Municipalidad de Tupungato"
  loc_C6E004: EqStr
  loc_C6E006: OrI4
  loc_C6E007: LitStr "Municipalidad de Guaymallén"
  loc_C6E00A: LitStr "Municipalidad de Rivadavia"
  loc_C6E00D: EqStr
  loc_C6E00F: OrI4
  loc_C6E010: BranchF loc_C6E08B
  loc_C6E013: LitStr " UPDATE difunto SET CucuPers = '"
  loc_C6E016: ILdRf var_88
  loc_C6E019: ConcatStr
  loc_C6E01A: FStStrNoPop var_E8
  loc_C6E01D: LitStr "', ModiUsua = '"
  loc_C6E020: ConcatStr
  loc_C6E021: FStStrNoPop var_EC
  loc_C6E024: ImpAdLdI4 MemVar_D9302C
  loc_C6E027: ConcatStr
  loc_C6E028: FStStrNoPop var_F0
  loc_C6E02B: LitStr "', ModiFeho = now() WHERE difunto.CodiDifu = '"
  loc_C6E02E: ConcatStr
  loc_C6E02F: FStStrNoPop var_F4
  loc_C6E032: FLdI2 var_8A
  loc_C6E035: CI4UI1
  loc_C6E036: CVarI4
  loc_C6E03A: PopAdLdVar
  loc_C6E03B: LitVarI4
  loc_C6E043: PopAdLdVar
  loc_C6E044: ImpAdLdRf MemVar_D93B94
  loc_C6E047: NewIfNullPr frmUnificaciondePersonas
  loc_C6E04A: VCallAd Control_ID_
  loc_C6E04D: FStAdFunc var_90
  loc_C6E050: FLdPr var_90
  loc_C6E053: LateIdCallLdVar
  loc_C6E05D: CStrVarTmp
  loc_C6E05E: FStStrNoPop var_F8
  loc_C6E061: ConcatStr
  loc_C6E062: FStStrNoPop var_FC
  loc_C6E065: LitStr "'"
  loc_C6E068: ConcatStr
  loc_C6E069: FStStrNoPop var_100
  loc_C6E06C: Call EjecutarRsCls(from_stack_1v)
  loc_C6E071: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C6E082: FFree1Ad var_90
  loc_C6E085: FFree1Var var_A0 = ""
  loc_C6E088: Branch loc_C6E0F7
  loc_C6E08B: LitStr " UPDATE difunto SET CucuPers = '"
  loc_C6E08E: ILdRf var_88
  loc_C6E091: ConcatStr
  loc_C6E092: FStStrNoPop var_E8
  loc_C6E095: LitStr "', CodiUsua = '"
  loc_C6E098: ConcatStr
  loc_C6E099: FStStrNoPop var_EC
  loc_C6E09C: ImpAdLdI4 MemVar_D9302C
  loc_C6E09F: ConcatStr
  loc_C6E0A0: FStStrNoPop var_F0
  loc_C6E0A3: LitStr "' WHERE difunto.CodiDifu = "
  loc_C6E0A6: ConcatStr
  loc_C6E0A7: FStStrNoPop var_F4
  loc_C6E0AA: FLdI2 var_8A
  loc_C6E0AD: CI4UI1
  loc_C6E0AE: CVarI4
  loc_C6E0B2: PopAdLdVar
  loc_C6E0B3: LitVarI4
  loc_C6E0BB: PopAdLdVar
  loc_C6E0BC: ImpAdLdRf MemVar_D93B94
  loc_C6E0BF: NewIfNullPr frmUnificaciondePersonas
  loc_C6E0C2: VCallAd Control_ID_
  loc_C6E0C5: FStAdFunc var_90
  loc_C6E0C8: FLdPr var_90
  loc_C6E0CB: LateIdCallLdVar
  loc_C6E0D5: CStrVarTmp
  loc_C6E0D6: FStStrNoPop var_F8
  loc_C6E0D9: ConcatStr
  loc_C6E0DA: FStStrNoPop var_FC
  loc_C6E0DD: Call EjecutarRsCls(from_stack_1v)
  loc_C6E0E2: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_C6E0F1: FFree1Ad var_90
  loc_C6E0F4: FFree1Var var_A0 = ""
  loc_C6E0F7: FLdI2 var_8A
  loc_C6E0FA: CI4UI1
  loc_C6E0FB: CVarI4
  loc_C6E0FF: PopAdLdVar
  loc_C6E100: LitVarI4
  loc_C6E108: PopAdLdVar
  loc_C6E109: ImpAdLdRf MemVar_D93B94
  loc_C6E10C: NewIfNullPr frmUnificaciondePersonas
  loc_C6E10F: VCallAd Control_ID_
  loc_C6E112: FStAdFunc var_90
  loc_C6E115: FLdPr var_90
  loc_C6E118: LateIdCallLdVar
  loc_C6E122: CStrVarTmp
  loc_C6E123: FStStrNoPop var_E8
  loc_C6E126: CR8Str
  loc_C6E128: LitI2_Byte 5
  loc_C6E12A: CR8I2
  loc_C6E12B: EqR4
  loc_C6E12C: FFree1Str var_E8
  loc_C6E12F: FFree1Ad var_90
  loc_C6E132: FFree1Var var_A0 = ""
  loc_C6E135: BranchF loc_C6E2AF
  loc_C6E138: FLdI2 var_8A
  loc_C6E13B: CI4UI1
  loc_C6E13C: CVarI4
  loc_C6E140: PopAdLdVar
  loc_C6E141: LitVarI4
  loc_C6E149: PopAdLdVar
  loc_C6E14A: ImpAdLdRf MemVar_D93B94
  loc_C6E14D: NewIfNullPr frmUnificaciondePersonas
  loc_C6E150: VCallAd Control_ID_
  loc_C6E153: FStAdFunc var_90
  loc_C6E156: FLdPr var_90
  loc_C6E159: LateIdCallLdVar
  loc_C6E163: CStrVarTmp
  loc_C6E164: FStStrNoPop var_E8
  loc_C6E167: LitStr "Titular"
  loc_C6E16A: EqStr
  loc_C6E16C: FFree1Str var_E8
  loc_C6E16F: FFree1Ad var_90
  loc_C6E172: FFree1Var var_A0 = ""
  loc_C6E175: BranchF loc_C6E2AF
  loc_C6E178: LitStr " UPDATE transito SET CucuPers = '"
  loc_C6E17B: ILdRf var_88
  loc_C6E17E: ConcatStr
  loc_C6E17F: FStStrNoPop var_E8
  loc_C6E182: LitStr "', ModiUsua = '"
  loc_C6E185: ConcatStr
  loc_C6E186: FStStrNoPop var_EC
  loc_C6E189: ImpAdLdI4 MemVar_D9302C
  loc_C6E18C: ConcatStr
  loc_C6E18D: FStStrNoPop var_F0
  loc_C6E190: LitStr "', ModiFeho = now() WHERE transito.CodiTran = '"
  loc_C6E193: ConcatStr
  loc_C6E194: FStStrNoPop var_F4
  loc_C6E197: FLdI2 var_8A
  loc_C6E19A: CI4UI1
  loc_C6E19B: CVarI4
  loc_C6E19F: PopAdLdVar
  loc_C6E1A0: LitVarI4
  loc_C6E1A8: PopAdLdVar
  loc_C6E1A9: ImpAdLdRf MemVar_D93B94
  loc_C6E1AC: NewIfNullPr frmUnificaciondePersonas
  loc_C6E1AF: VCallAd Control_ID_
  loc_C6E1B2: FStAdFunc var_90
  loc_C6E1B5: FLdPr var_90
  loc_C6E1B8: LateIdCallLdVar
  loc_C6E1C2: CStrVarTmp
  loc_C6E1C3: FStStrNoPop var_F8
  loc_C6E1C6: ConcatStr
  loc_C6E1C7: FStStrNoPop var_FC
  loc_C6E1CA: LitStr "';"
  loc_C6E1CD: ConcatStr
  loc_C6E1CE: FStStrNoPop var_100
  loc_C6E1D1: LitStr " UPDATE acta SET CucuInfr = '"
  loc_C6E1D4: ConcatStr
  loc_C6E1D5: FStStrNoPop var_104
  loc_C6E1D8: ILdRf var_88
  loc_C6E1DB: ConcatStr
  loc_C6E1DC: FStStrNoPop var_108
  loc_C6E1DF: LitStr "' WHERE acta.CucuInfr = '"
  loc_C6E1E2: ConcatStr
  loc_C6E1E3: FStStrNoPop var_160
  loc_C6E1E6: FLdI2 var_8A
  loc_C6E1E9: CI4UI1
  loc_C6E1EA: CVarI4
  loc_C6E1EE: PopAdLdVar
  loc_C6E1EF: LitVarI4
  loc_C6E1F7: PopAdLdVar
  loc_C6E1F8: ImpAdLdRf MemVar_D93B94
  loc_C6E1FB: NewIfNullPr frmUnificaciondePersonas
  loc_C6E1FE: VCallAd Control_ID_
  loc_C6E201: FStAdFunc var_14C
  loc_C6E204: FLdPr var_14C
  loc_C6E207: LateIdCallLdVar
  loc_C6E211: CStrVarTmp
  loc_C6E212: FStStrNoPop var_164
  loc_C6E215: ConcatStr
  loc_C6E216: FStStrNoPop var_168
  loc_C6E219: LitStr "';"
  loc_C6E21C: ConcatStr
  loc_C6E21D: FStStrNoPop var_16C
  loc_C6E220: LitStr " UPDATE acta SET CucuPers = '"
  loc_C6E223: ConcatStr
  loc_C6E224: FStStrNoPop var_170
  loc_C6E227: ILdRf var_88
  loc_C6E22A: ConcatStr
  loc_C6E22B: FStStrNoPop var_174
  loc_C6E22E: LitStr "' WHERE acta.CucuPers = '"
  loc_C6E231: ConcatStr
  loc_C6E232: FStStrNoPop var_1CC
  loc_C6E235: FLdI2 var_8A
  loc_C6E238: CI4UI1
  loc_C6E239: CVarI4
  loc_C6E23D: PopAdLdVar
  loc_C6E23E: LitVarI4
  loc_C6E246: PopAdLdVar
  loc_C6E247: ImpAdLdRf MemVar_D93B94
  loc_C6E24A: NewIfNullPr frmUnificaciondePersonas
  loc_C6E24D: VCallAd Control_ID_
  loc_C6E250: FStAdFunc var_1B8
  loc_C6E253: FLdPr var_1B8
  loc_C6E256: LateIdCallLdVar
  loc_C6E260: CStrVarTmp
  loc_C6E261: FStStrNoPop var_1D0
  loc_C6E264: ConcatStr
  loc_C6E265: FStStrNoPop var_1D4
  loc_C6E268: LitStr "';"
  loc_C6E26B: ConcatStr
  loc_C6E26C: FStStrNoPop var_1D8
  loc_C6E26F: Call EjecutarRsCls(from_stack_1v)
  loc_C6E274: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_1CC = "": var_1D0 = "": var_1D4 = ""
  loc_C6E29D: FFreeAd var_90 = "": var_14C = ""
  loc_C6E2A6: FFreeVar var_A0 = "": var_15C = ""
  loc_C6E2AF: LitStr " SELECT @NumeRela:=IFNULL(MAX(NumeRela),0) + 1 FROM relacion WHERE CucuPers = '"
  loc_C6E2B2: ILdRf var_88
  loc_C6E2B5: ConcatStr
  loc_C6E2B6: FStStrNoPop var_E8
  loc_C6E2B9: LitStr "' AND CodiOfic = "
  loc_C6E2BC: ConcatStr
  loc_C6E2BD: FStStrNoPop var_EC
  loc_C6E2C0: FLdI2 var_8A
  loc_C6E2C3: CI4UI1
  loc_C6E2C4: CVarI4
  loc_C6E2C8: PopAdLdVar
  loc_C6E2C9: LitVarI4
  loc_C6E2D1: PopAdLdVar
  loc_C6E2D2: ImpAdLdRf MemVar_D93B94
  loc_C6E2D5: NewIfNullPr frmUnificaciondePersonas
  loc_C6E2D8: VCallAd Control_ID_
  loc_C6E2DB: FStAdFunc var_90
  loc_C6E2DE: FLdPr var_90
  loc_C6E2E1: LateIdCallLdVar
  loc_C6E2EB: CStrVarTmp
  loc_C6E2EC: FStStrNoPop var_F0
  loc_C6E2EF: ConcatStr
  loc_C6E2F0: FStStrNoPop var_F4
  loc_C6E2F3: LitStr " AND CuenCtct = '"
  loc_C6E2F6: ConcatStr
  loc_C6E2F7: FStStrNoPop var_F8
  loc_C6E2FA: FLdI2 var_8A
  loc_C6E2FD: CI4UI1
  loc_C6E2FE: CVarI4
  loc_C6E302: PopAdLdVar
  loc_C6E303: LitVarI4
  loc_C6E30B: PopAdLdVar
  loc_C6E30C: ImpAdLdRf MemVar_D93B94
  loc_C6E30F: NewIfNullPr frmUnificaciondePersonas
  loc_C6E312: VCallAd Control_ID_
  loc_C6E315: FStAdFunc var_14C
  loc_C6E318: FLdPr var_14C
  loc_C6E31B: LateIdCallLdVar
  loc_C6E325: CStrVarTmp
  loc_C6E326: FStStrNoPop var_FC
  loc_C6E329: ConcatStr
  loc_C6E32A: FStStrNoPop var_100
  loc_C6E32D: LitStr "';"
  loc_C6E330: ConcatStr
  loc_C6E331: FStStrNoPop var_104
  loc_C6E334: LitStr " UPDATE relacion SET CucuPers = '"
  loc_C6E337: ConcatStr
  loc_C6E338: FStStrNoPop var_108
  loc_C6E33B: ILdRf var_88
  loc_C6E33E: ConcatStr
  loc_C6E33F: FStStrNoPop var_160
  loc_C6E342: LitStr "', NumeRela = @NumeRela, CodiUsua = '"
  loc_C6E345: ConcatStr
  loc_C6E346: FStStrNoPop var_164
  loc_C6E349: ImpAdLdI4 MemVar_D9302C
  loc_C6E34C: ConcatStr
  loc_C6E34D: FStStrNoPop var_168
  loc_C6E350: LitStr "' WHERE CucuPers = '"
  loc_C6E353: ConcatStr
  loc_C6E354: FStStrNoPop var_16C
  loc_C6E357: FLdI2 var_8A
  loc_C6E35A: CI4UI1
  loc_C6E35B: CVarI4
  loc_C6E35F: PopAdLdVar
  loc_C6E360: LitVarI4
  loc_C6E368: PopAdLdVar
  loc_C6E369: ImpAdLdRf MemVar_D93B94
  loc_C6E36C: NewIfNullPr frmUnificaciondePersonas
  loc_C6E36F: VCallAd Control_ID_
  loc_C6E372: FStAdFunc var_1B8
  loc_C6E375: FLdPr var_1B8
  loc_C6E378: LateIdCallLdVar
  loc_C6E382: CStrVarTmp
  loc_C6E383: FStStrNoPop var_170
  loc_C6E386: ConcatStr
  loc_C6E387: FStStrNoPop var_174
  loc_C6E38A: LitStr "' AND CodiOfic = "
  loc_C6E38D: ConcatStr
  loc_C6E38E: FStStrNoPop var_1CC
  loc_C6E391: FLdI2 var_8A
  loc_C6E394: CI4UI1
  loc_C6E395: CVarI4
  loc_C6E399: PopAdLdVar
  loc_C6E39A: LitVarI4
  loc_C6E3A2: PopAdLdVar
  loc_C6E3A3: ImpAdLdRf MemVar_D93B94
  loc_C6E3A6: NewIfNullPr frmUnificaciondePersonas
  loc_C6E3A9: VCallAd Control_ID_
  loc_C6E3AC: FStAdFunc var_21C
  loc_C6E3AF: FLdPr var_21C
  loc_C6E3B2: LateIdCallLdVar
  loc_C6E3BC: CStrVarTmp
  loc_C6E3BD: FStStrNoPop var_1D0
  loc_C6E3C0: ConcatStr
  loc_C6E3C1: FStStrNoPop var_1D4
  loc_C6E3C4: LitStr " AND CuenCtct = '"
  loc_C6E3C7: ConcatStr
  loc_C6E3C8: FStStrNoPop var_1D8
  loc_C6E3CB: FLdI2 var_8A
  loc_C6E3CE: CI4UI1
  loc_C6E3CF: CVarI4
  loc_C6E3D3: PopAdLdVar
  loc_C6E3D4: LitVarI4
  loc_C6E3DC: PopAdLdVar
  loc_C6E3DD: ImpAdLdRf MemVar_D93B94
  loc_C6E3E0: NewIfNullPr frmUnificaciondePersonas
  loc_C6E3E3: VCallAd Control_ID_
  loc_C6E3E6: FStAdFunc var_270
  loc_C6E3E9: FLdPr var_270
  loc_C6E3EC: LateIdCallLdVar
  loc_C6E3F6: CStrVarTmp
  loc_C6E3F7: FStStrNoPop var_284
  loc_C6E3FA: ConcatStr
  loc_C6E3FB: FStStrNoPop var_288
  loc_C6E3FE: LitStr "' AND TipoRela = '"
  loc_C6E401: ConcatStr
  loc_C6E402: FStStrNoPop var_2E0
  loc_C6E405: FLdI2 var_8A
  loc_C6E408: CI4UI1
  loc_C6E409: CVarI4
  loc_C6E40D: PopAdLdVar
  loc_C6E40E: LitVarI4
  loc_C6E416: PopAdLdVar
  loc_C6E417: ImpAdLdRf MemVar_D93B94
  loc_C6E41A: NewIfNullPr frmUnificaciondePersonas
  loc_C6E41D: VCallAd Control_ID_
  loc_C6E420: FStAdFunc var_2CC
  loc_C6E423: FLdPr var_2CC
  loc_C6E426: LateIdCallLdVar
  loc_C6E430: CStrVarTmp
  loc_C6E431: FStStrNoPop var_2E4
  loc_C6E434: ConcatStr
  loc_C6E435: FStStrNoPop var_2E8
  loc_C6E438: LitStr "';"
  loc_C6E43B: ConcatStr
  loc_C6E43C: FStStrNoPop var_2EC
  loc_C6E43F: LitStr " UPDATE traninmu SET CucuVend = '"
  loc_C6E442: ConcatStr
  loc_C6E443: FStStrNoPop var_2F0
  loc_C6E446: ILdRf var_88
  loc_C6E449: ConcatStr
  loc_C6E44A: FStStrNoPop var_2F4
  loc_C6E44D: LitStr "' WHERE CucuVend = '"
  loc_C6E450: ConcatStr
  loc_C6E451: FStStrNoPop var_34C
  loc_C6E454: FLdI2 var_8A
  loc_C6E457: CI4UI1
  loc_C6E458: CVarI4
  loc_C6E45C: PopAdLdVar
  loc_C6E45D: LitVarI4
  loc_C6E465: PopAdLdVar
  loc_C6E466: ImpAdLdRf MemVar_D93B94
  loc_C6E469: NewIfNullPr frmUnificaciondePersonas
  loc_C6E46C: VCallAd Control_ID_
  loc_C6E46F: FStAdFunc var_338
  loc_C6E472: FLdPr var_338
  loc_C6E475: LateIdCallLdVar
  loc_C6E47F: CStrVarTmp
  loc_C6E480: FStStrNoPop var_350
  loc_C6E483: ConcatStr
  loc_C6E484: FStStrNoPop var_354
  loc_C6E487: LitStr "';"
  loc_C6E48A: ConcatStr
  loc_C6E48B: FStStrNoPop var_358
  loc_C6E48E: LitStr " UPDATE traninmu SET CucuComp = '"
  loc_C6E491: ConcatStr
  loc_C6E492: FStStrNoPop var_35C
  loc_C6E495: ILdRf var_88
  loc_C6E498: ConcatStr
  loc_C6E499: FStStrNoPop var_360
  loc_C6E49C: LitStr "' WHERE CucuComp = '"
  loc_C6E49F: ConcatStr
  loc_C6E4A0: FStStrNoPop var_3B8
  loc_C6E4A3: FLdI2 var_8A
  loc_C6E4A6: CI4UI1
  loc_C6E4A7: CVarI4
  loc_C6E4AB: PopAdLdVar
  loc_C6E4AC: LitVarI4
  loc_C6E4B4: PopAdLdVar
  loc_C6E4B5: ImpAdLdRf MemVar_D93B94
  loc_C6E4B8: NewIfNullPr frmUnificaciondePersonas
  loc_C6E4BB: VCallAd Control_ID_
  loc_C6E4BE: FStAdFunc var_3A4
  loc_C6E4C1: FLdPr var_3A4
  loc_C6E4C4: LateIdCallLdVar
  loc_C6E4CE: CStrVarTmp
  loc_C6E4CF: FStStrNoPop var_3BC
  loc_C6E4D2: ConcatStr
  loc_C6E4D3: FStStrNoPop var_3C0
  loc_C6E4D6: LitStr "';"
  loc_C6E4D9: ConcatStr
  loc_C6E4DA: FStStrNoPop var_3C4
  loc_C6E4DD: LitStr " UPDATE trancome SET CucuVend = '"
  loc_C6E4E0: ConcatStr
  loc_C6E4E1: FStStrNoPop var_3C8
  loc_C6E4E4: ILdRf var_88
  loc_C6E4E7: ConcatStr
  loc_C6E4E8: FStStrNoPop var_3CC
  loc_C6E4EB: LitStr "' WHERE CucuVend = '"
  loc_C6E4EE: ConcatStr
  loc_C6E4EF: FStStrNoPop var_424
  loc_C6E4F2: FLdI2 var_8A
  loc_C6E4F5: CI4UI1
  loc_C6E4F6: CVarI4
  loc_C6E4FA: PopAdLdVar
  loc_C6E4FB: LitVarI4
  loc_C6E503: PopAdLdVar
  loc_C6E504: ImpAdLdRf MemVar_D93B94
  loc_C6E507: NewIfNullPr frmUnificaciondePersonas
  loc_C6E50A: VCallAd Control_ID_
  loc_C6E50D: FStAdFunc var_410
  loc_C6E510: FLdPr var_410
  loc_C6E513: LateIdCallLdVar
  loc_C6E51D: CStrVarTmp
  loc_C6E51E: FStStrNoPop var_428
  loc_C6E521: ConcatStr
  loc_C6E522: FStStrNoPop var_42C
  loc_C6E525: LitStr "';"
  loc_C6E528: ConcatStr
  loc_C6E529: FStStrNoPop var_430
  loc_C6E52C: LitStr " UPDATE trancome SET CucuComp = '"
  loc_C6E52F: ConcatStr
  loc_C6E530: FStStrNoPop var_434
  loc_C6E533: ILdRf var_88
  loc_C6E536: ConcatStr
  loc_C6E537: FStStrNoPop var_438
  loc_C6E53A: LitStr "' WHERE CucuComp = '"
  loc_C6E53D: ConcatStr
  loc_C6E53E: FStStrNoPop var_490
  loc_C6E541: FLdI2 var_8A
  loc_C6E544: CI4UI1
  loc_C6E545: CVarI4
  loc_C6E549: PopAdLdVar
  loc_C6E54A: LitVarI4
  loc_C6E552: PopAdLdVar
  loc_C6E553: ImpAdLdRf MemVar_D93B94
  loc_C6E556: NewIfNullPr frmUnificaciondePersonas
  loc_C6E559: VCallAd Control_ID_
  loc_C6E55C: FStAdFunc var_47C
  loc_C6E55F: FLdPr var_47C
  loc_C6E562: LateIdCallLdVar
  loc_C6E56C: CStrVarTmp
  loc_C6E56D: FStStrNoPop var_494
  loc_C6E570: ConcatStr
  loc_C6E571: FStStrNoPop var_498
  loc_C6E574: LitStr "';"
  loc_C6E577: ConcatStr
  loc_C6E578: FStStrNoPop var_49C
  loc_C6E57B: LitStr " UPDATE trandifu SET CucuVend = '"
  loc_C6E57E: ConcatStr
  loc_C6E57F: FStStrNoPop var_4A0
  loc_C6E582: ILdRf var_88
  loc_C6E585: ConcatStr
  loc_C6E586: FStStrNoPop var_4A4
  loc_C6E589: LitStr "' WHERE CucuVend = '"
  loc_C6E58C: ConcatStr
  loc_C6E58D: FStStrNoPop var_4FC
  loc_C6E590: FLdI2 var_8A
  loc_C6E593: CI4UI1
  loc_C6E594: CVarI4
  loc_C6E598: PopAdLdVar
  loc_C6E599: LitVarI4
  loc_C6E5A1: PopAdLdVar
  loc_C6E5A2: ImpAdLdRf MemVar_D93B94
  loc_C6E5A5: NewIfNullPr frmUnificaciondePersonas
  loc_C6E5A8: VCallAd Control_ID_
  loc_C6E5AB: FStAdFunc var_4E8
  loc_C6E5AE: FLdPr var_4E8
  loc_C6E5B1: LateIdCallLdVar
  loc_C6E5BB: CStrVarTmp
  loc_C6E5BC: FStStrNoPop var_500
  loc_C6E5BF: ConcatStr
  loc_C6E5C0: FStStrNoPop var_504
  loc_C6E5C3: LitStr "';"
  loc_C6E5C6: ConcatStr
  loc_C6E5C7: FStStrNoPop var_508
  loc_C6E5CA: LitStr " UPDATE trandifu SET CucuComp = '"
  loc_C6E5CD: ConcatStr
  loc_C6E5CE: FStStrNoPop var_50C
  loc_C6E5D1: ILdRf var_88
  loc_C6E5D4: ConcatStr
  loc_C6E5D5: FStStrNoPop var_510
  loc_C6E5D8: LitStr "' WHERE CucuComp = '"
  loc_C6E5DB: ConcatStr
  loc_C6E5DC: FStStrNoPop var_568
  loc_C6E5DF: FLdI2 var_8A
  loc_C6E5E2: CI4UI1
  loc_C6E5E3: CVarI4
  loc_C6E5E7: PopAdLdVar
  loc_C6E5E8: LitVarI4
  loc_C6E5F0: PopAdLdVar
  loc_C6E5F1: ImpAdLdRf MemVar_D93B94
  loc_C6E5F4: NewIfNullPr frmUnificaciondePersonas
  loc_C6E5F7: VCallAd Control_ID_
  loc_C6E5FA: FStAdFunc var_554
  loc_C6E5FD: FLdPr var_554
  loc_C6E600: LateIdCallLdVar
  loc_C6E60A: CStrVarTmp
  loc_C6E60B: FStStrNoPop var_56C
  loc_C6E60E: ConcatStr
  loc_C6E60F: FStStrNoPop var_570
  loc_C6E612: LitStr "';"
  loc_C6E615: ConcatStr
  loc_C6E616: FStStrNoPop var_574
  loc_C6E619: LitStr " UPDATE apremio SET CucuPers = '"
  loc_C6E61C: ConcatStr
  loc_C6E61D: FStStrNoPop var_578
  loc_C6E620: ILdRf var_88
  loc_C6E623: ConcatStr
  loc_C6E624: FStStrNoPop var_57C
  loc_C6E627: LitStr "' WHERE CucuPers = '"
  loc_C6E62A: ConcatStr
  loc_C6E62B: FStStrNoPop var_5D4
  loc_C6E62E: FLdI2 var_8A
  loc_C6E631: CI4UI1
  loc_C6E632: CVarI4
  loc_C6E636: PopAdLdVar
  loc_C6E637: LitVarI4
  loc_C6E63F: PopAdLdVar
  loc_C6E640: ImpAdLdRf MemVar_D93B94
  loc_C6E643: NewIfNullPr frmUnificaciondePersonas
  loc_C6E646: VCallAd Control_ID_
  loc_C6E649: FStAdFunc var_5C0
  loc_C6E64C: FLdPr var_5C0
  loc_C6E64F: LateIdCallLdVar
  loc_C6E659: CStrVarTmp
  loc_C6E65A: FStStrNoPop var_5D8
  loc_C6E65D: ConcatStr
  loc_C6E65E: FStStrNoPop var_5DC
  loc_C6E661: LitStr "';"
  loc_C6E664: ConcatStr
  loc_C6E665: FStStrNoPop var_5E0
  loc_C6E668: LitStr " UPDATE facipago SET CucuPers = '"
  loc_C6E66B: ConcatStr
  loc_C6E66C: FStStrNoPop var_5E4
  loc_C6E66F: ILdRf var_88
  loc_C6E672: ConcatStr
  loc_C6E673: FStStrNoPop var_5E8
  loc_C6E676: LitStr "' WHERE CucuPers = '"
  loc_C6E679: ConcatStr
  loc_C6E67A: FStStrNoPop var_640
  loc_C6E67D: FLdI2 var_8A
  loc_C6E680: CI4UI1
  loc_C6E681: CVarI4
  loc_C6E685: PopAdLdVar
  loc_C6E686: LitVarI4
  loc_C6E68E: PopAdLdVar
  loc_C6E68F: ImpAdLdRf MemVar_D93B94
  loc_C6E692: NewIfNullPr frmUnificaciondePersonas
  loc_C6E695: VCallAd Control_ID_
  loc_C6E698: FStAdFunc var_62C
  loc_C6E69B: FLdPr var_62C
  loc_C6E69E: LateIdCallLdVar
  loc_C6E6A8: CStrVarTmp
  loc_C6E6A9: FStStrNoPop var_644
  loc_C6E6AC: ConcatStr
  loc_C6E6AD: FStStrNoPop var_648
  loc_C6E6B0: LitStr "';"
  loc_C6E6B3: ConcatStr
  loc_C6E6B4: FStStrNoPop var_64C
  loc_C6E6B7: LitStr " UPDATE pago SET CucuPers = '"
  loc_C6E6BA: ConcatStr
  loc_C6E6BB: FStStrNoPop var_650
  loc_C6E6BE: ILdRf var_88
  loc_C6E6C1: ConcatStr
  loc_C6E6C2: FStStrNoPop var_654
  loc_C6E6C5: LitStr "' WHERE CucuPers = '"
  loc_C6E6C8: ConcatStr
  loc_C6E6C9: FStStrNoPop var_6AC
  loc_C6E6CC: FLdI2 var_8A
  loc_C6E6CF: CI4UI1
  loc_C6E6D0: CVarI4
  loc_C6E6D4: PopAdLdVar
  loc_C6E6D5: LitVarI4
  loc_C6E6DD: PopAdLdVar
  loc_C6E6DE: ImpAdLdRf MemVar_D93B94
  loc_C6E6E1: NewIfNullPr frmUnificaciondePersonas
  loc_C6E6E4: VCallAd Control_ID_
  loc_C6E6E7: FStAdFunc var_698
  loc_C6E6EA: FLdPr var_698
  loc_C6E6ED: LateIdCallLdVar
  loc_C6E6F7: CStrVarTmp
  loc_C6E6F8: FStStrNoPop var_6B0
  loc_C6E6FB: ConcatStr
  loc_C6E6FC: FStStrNoPop var_6B4
  loc_C6E6FF: LitStr "';"
  loc_C6E702: ConcatStr
  loc_C6E703: FStStrNoPop var_6B8
  loc_C6E706: LitStr " UPDATE boleto SET CucuPers = '"
  loc_C6E709: ConcatStr
  loc_C6E70A: FStStrNoPop var_6BC
  loc_C6E70D: ILdRf var_88
  loc_C6E710: ConcatStr
  loc_C6E711: FStStrNoPop var_6C0
  loc_C6E714: LitStr "' WHERE CucuPers = '"
  loc_C6E717: ConcatStr
  loc_C6E718: FStStrNoPop var_718
  loc_C6E71B: FLdI2 var_8A
  loc_C6E71E: CI4UI1
  loc_C6E71F: CVarI4
  loc_C6E723: PopAdLdVar
  loc_C6E724: LitVarI4
  loc_C6E72C: PopAdLdVar
  loc_C6E72D: ImpAdLdRf MemVar_D93B94
  loc_C6E730: NewIfNullPr frmUnificaciondePersonas
  loc_C6E733: VCallAd Control_ID_
  loc_C6E736: FStAdFunc var_704
  loc_C6E739: FLdPr var_704
  loc_C6E73C: LateIdCallLdVar
  loc_C6E746: CStrVarTmp
  loc_C6E747: FStStrNoPop var_71C
  loc_C6E74A: ConcatStr
  loc_C6E74B: FStStrNoPop var_720
  loc_C6E74E: LitStr "';"
  loc_C6E751: ConcatStr
  loc_C6E752: FStStrNoPop var_724
  loc_C6E755: LitStr " UPDATE liqutasa SET CucuPers = '"
  loc_C6E758: ConcatStr
  loc_C6E759: FStStrNoPop var_728
  loc_C6E75C: ILdRf var_88
  loc_C6E75F: ConcatStr
  loc_C6E760: FStStrNoPop var_72C
  loc_C6E763: LitStr "' WHERE CucuPers = '"
  loc_C6E766: ConcatStr
  loc_C6E767: FStStrNoPop var_784
  loc_C6E76A: FLdI2 var_8A
  loc_C6E76D: CI4UI1
  loc_C6E76E: CVarI4
  loc_C6E772: PopAdLdVar
  loc_C6E773: LitVarI4
  loc_C6E77B: PopAdLdVar
  loc_C6E77C: ImpAdLdRf MemVar_D93B94
  loc_C6E77F: NewIfNullPr frmUnificaciondePersonas
  loc_C6E782: VCallAd Control_ID_
  loc_C6E785: FStAdFunc var_770
  loc_C6E788: FLdPr var_770
  loc_C6E78B: LateIdCallLdVar
  loc_C6E795: CStrVarTmp
  loc_C6E796: FStStrNoPop var_788
  loc_C6E799: ConcatStr
  loc_C6E79A: FStStrNoPop var_78C
  loc_C6E79D: LitStr "';"
  loc_C6E7A0: ConcatStr
  loc_C6E7A1: FStStrNoPop var_790
  loc_C6E7A4: LitStr " UPDATE liqucome SET CucuPers = '"
  loc_C6E7A7: ConcatStr
  loc_C6E7A8: FStStrNoPop var_794
  loc_C6E7AB: ILdRf var_88
  loc_C6E7AE: ConcatStr
  loc_C6E7AF: FStStrNoPop var_798
  loc_C6E7B2: LitStr "' WHERE CucuPers = '"
  loc_C6E7B5: ConcatStr
  loc_C6E7B6: FStStrNoPop var_7F0
  loc_C6E7B9: FLdI2 var_8A
  loc_C6E7BC: CI4UI1
  loc_C6E7BD: CVarI4
  loc_C6E7C1: PopAdLdVar
  loc_C6E7C2: LitVarI4
  loc_C6E7CA: PopAdLdVar
  loc_C6E7CB: ImpAdLdRf MemVar_D93B94
  loc_C6E7CE: NewIfNullPr frmUnificaciondePersonas
  loc_C6E7D1: VCallAd Control_ID_
  loc_C6E7D4: FStAdFunc var_7DC
  loc_C6E7D7: FLdPr var_7DC
  loc_C6E7DA: LateIdCallLdVar
  loc_C6E7E4: CStrVarTmp
  loc_C6E7E5: FStStrNoPop var_7F4
  loc_C6E7E8: ConcatStr
  loc_C6E7E9: FStStrNoPop var_7F8
  loc_C6E7EC: LitStr "';"
  loc_C6E7EF: ConcatStr
  loc_C6E7F0: FStStrNoPop var_7FC
  loc_C6E7F3: LitStr " UPDATE liquceme SET CucuPers = '"
  loc_C6E7F6: ConcatStr
  loc_C6E7F7: FStStrNoPop var_800
  loc_C6E7FA: ILdRf var_88
  loc_C6E7FD: ConcatStr
  loc_C6E7FE: FStStrNoPop var_804
  loc_C6E801: LitStr "' WHERE CucuPers = '"
  loc_C6E804: ConcatStr
  loc_C6E805: FStStrNoPop var_85C
  loc_C6E808: FLdI2 var_8A
  loc_C6E80B: CI4UI1
  loc_C6E80C: CVarI4
  loc_C6E810: PopAdLdVar
  loc_C6E811: LitVarI4
  loc_C6E819: PopAdLdVar
  loc_C6E81A: ImpAdLdRf MemVar_D93B94
  loc_C6E81D: NewIfNullPr frmUnificaciondePersonas
  loc_C6E820: VCallAd Control_ID_
  loc_C6E823: FStAdFunc var_848
  loc_C6E826: FLdPr var_848
  loc_C6E829: LateIdCallLdVar
  loc_C6E833: CStrVarTmp
  loc_C6E834: FStStrNoPop var_860
  loc_C6E837: ConcatStr
  loc_C6E838: FStStrNoPop var_864
  loc_C6E83B: LitStr "';"
  loc_C6E83E: ConcatStr
  loc_C6E83F: FStStrNoPop var_868
  loc_C6E842: LitStr " UPDATE inspcome SET CucuPers = '"
  loc_C6E845: ConcatStr
  loc_C6E846: FStStrNoPop var_86C
  loc_C6E849: ILdRf var_88
  loc_C6E84C: ConcatStr
  loc_C6E84D: FStStrNoPop var_870
  loc_C6E850: LitStr "' WHERE CucuPers = '"
  loc_C6E853: ConcatStr
  loc_C6E854: FStStrNoPop var_8C8
  loc_C6E857: FLdI2 var_8A
  loc_C6E85A: CI4UI1
  loc_C6E85B: CVarI4
  loc_C6E85F: PopAdLdVar
  loc_C6E860: LitVarI4
  loc_C6E868: PopAdLdVar
  loc_C6E869: ImpAdLdRf MemVar_D93B94
  loc_C6E86C: NewIfNullPr frmUnificaciondePersonas
  loc_C6E86F: VCallAd Control_ID_
  loc_C6E872: FStAdFunc var_8B4
  loc_C6E875: FLdPr var_8B4
  loc_C6E878: LateIdCallLdVar
  loc_C6E882: CStrVarTmp
  loc_C6E883: FStStrNoPop var_8CC
  loc_C6E886: ConcatStr
  loc_C6E887: FStStrNoPop var_8D0
  loc_C6E88A: LitStr "';"
  loc_C6E88D: ConcatStr
  loc_C6E88E: FStStrNoPop var_8D4
  loc_C6E891: LitStr " UPDATE inspcoin SET CucuPers = '"
  loc_C6E894: ConcatStr
  loc_C6E895: FStStrNoPop var_8D8
  loc_C6E898: ILdRf var_88
  loc_C6E89B: ConcatStr
  loc_C6E89C: FStStrNoPop var_8DC
  loc_C6E89F: LitStr "' WHERE CucuPers = '"
  loc_C6E8A2: ConcatStr
  loc_C6E8A3: FStStrNoPop var_934
  loc_C6E8A6: FLdI2 var_8A
  loc_C6E8A9: CI4UI1
  loc_C6E8AA: CVarI4
  loc_C6E8AE: PopAdLdVar
  loc_C6E8AF: LitVarI4
  loc_C6E8B7: PopAdLdVar
  loc_C6E8B8: ImpAdLdRf MemVar_D93B94
  loc_C6E8BB: NewIfNullPr frmUnificaciondePersonas
  loc_C6E8BE: VCallAd Control_ID_
  loc_C6E8C1: FStAdFunc var_920
  loc_C6E8C4: FLdPr var_920
  loc_C6E8C7: LateIdCallLdVar
  loc_C6E8D1: CStrVarTmp
  loc_C6E8D2: FStStrNoPop var_938
  loc_C6E8D5: ConcatStr
  loc_C6E8D6: FStStrNoPop var_93C
  loc_C6E8D9: LitStr "';"
  loc_C6E8DC: ConcatStr
  loc_C6E8DD: FStStrNoPop var_940
  loc_C6E8E0: LitStr " DELETE FROM infogov.persona WHERE CucuPers = '"
  loc_C6E8E3: ConcatStr
  loc_C6E8E4: FStStrNoPop var_998
  loc_C6E8E7: FLdI2 var_8A
  loc_C6E8EA: CI4UI1
  loc_C6E8EB: CVarI4
  loc_C6E8EF: PopAdLdVar
  loc_C6E8F0: LitVarI4
  loc_C6E8F8: PopAdLdVar
  loc_C6E8F9: ImpAdLdRf MemVar_D93B94
  loc_C6E8FC: NewIfNullPr frmUnificaciondePersonas
  loc_C6E8FF: VCallAd Control_ID_
  loc_C6E902: FStAdFunc var_984
  loc_C6E905: FLdPr var_984
  loc_C6E908: LateIdCallLdVar
  loc_C6E912: CStrVarTmp
  loc_C6E913: FStStrNoPop var_99C
  loc_C6E916: ConcatStr
  loc_C6E917: FStStrNoPop var_9A0
  loc_C6E91A: LitStr "'"
  loc_C6E91D: ConcatStr
  loc_C6E91E: FStStrNoPop var_9A4
  loc_C6E921: Call EjecutarRsCls(from_stack_1v)
  loc_C6E926: FFreeStr var_790 = "": var_794 = "": var_798 = "": var_7F0 = "": var_7F4 = "": var_7F8 = "": var_7FC = "": var_800 = "": var_804 = "": var_85C = "": var_860 = "": var_864 = "": var_868 = "": var_86C = "": var_870 = "": var_8C8 = "": var_8CC = "": var_8D0 = "": var_8D4 = "": var_8D8 = "": var_8DC = "": var_934 = "": var_938 = "": var_93C = "": var_940 = "": var_998 = "": var_99C = "": var_9A0 = "": var_9A4 = "": var_574 = "": var_578 = "": var_57C = "": var_5D4 = "": var_5D8 = "": var_5DC = "": var_5E0 = "": var_5E4 = "": var_5E8 = "": var_640 = "": var_644 = "": var_648 = "": var_64C = "": var_650 = "": var_654 = "": var_6AC = "": var_6B0 = "": var_6B4 = "": var_6B8 = "": var_6BC = "": var_6C0 = "": var_718 = "": var_71C = "": var_720 = "": var_724 = "": var_728 = "": var_72C = "": var_784 = "": var_788 = "": var_78C = "": var_358 = "": var_35C = "": var_360 = "": var_3B8 = "": var_3BC = "": var_3C0 = "": var_3C4 = "": var_3C8 = "": var_3CC = "": var_424 = "": var_428 = "": var_42C = "": var_430 = "": var_434 = "": var_438 = "": var_490 = "": var_494 = "": var_498 = "": var_49C = "": var_4A0 = "": var_4A4 = "": var_4FC = "": var_500 = "": var_504 = "": var_508 = "": var_50C = "": var_510 = "": var_568 = "": var_56C = "": var_570 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_284 = "": var_288 = "": var_2E0 = "": var_2E4 = "": var_2E8 = "": var_2EC = "": var_2F0 = "": var_2F4 = "": var_34C = "": var_350 = ""
  loc_C6EA17: FFreeAd var_90 = "": var_14C = "": var_1B8 = "": var_21C = "": var_270 = "": var_2CC = "": var_338 = "": var_3A4 = "": var_410 = "": var_47C = "": var_4E8 = "": var_554 = "": var_5C0 = "": var_62C = "": var_698 = "": var_704 = "": var_770 = "": var_7DC = "": var_848 = "": var_8B4 = "": var_920 = ""
  loc_C6EA46: FFreeVar var_A0 = "": var_15C = "": var_1C8 = "": var_22C = "": var_280 = "": var_2DC = "": var_348 = "": var_3B4 = "": var_420 = "": var_48C = "": var_4F8 = "": var_564 = "": var_5D0 = "": var_63C = "": var_6A8 = "": var_714 = "": var_780 = "": var_7EC = "": var_858 = "": var_8C4 = "": var_930 = ""
  loc_C6EA75: FLdRfVar var_8A
  loc_C6EA78: NextI2 var_A4, loc_C6DBF5
  loc_C6EA7D: LitStr " UPDATE infogov.persona SET ModiUsua = '"
  loc_C6EA80: ImpAdLdI4 MemVar_D9302C
  loc_C6EA83: ConcatStr
  loc_C6EA84: FStStrNoPop var_E8
  loc_C6EA87: LitStr "', ModiFeho = now(), ObsePers = 'Unificacion de C.U.I.L.' WHERE CucuPers = '"
  loc_C6EA8A: ConcatStr
  loc_C6EA8B: FStStrNoPop var_F0
  loc_C6EA8E: FLdRfVar var_EC
  loc_C6EA91: ImpAdLdRf MemVar_D93B94
  loc_C6EA94: NewIfNullPr frmUnificaciondePersonas
  loc_C6EA97: VCallAd Control_ID_
  loc_C6EA9A: FStAdFunc var_90
  loc_C6EA9D: FLdPr var_90
  loc_C6EAA0:  = frmUnificaciondePersonas.TextBox.Text
  loc_C6EAA5: ILdRf var_EC
  loc_C6EAA8: ConcatStr
  loc_C6EAA9: FStStrNoPop var_F4
  loc_C6EAAC: LitStr "'"
  loc_C6EAAF: ConcatStr
  loc_C6EAB0: FStStrNoPop var_F8
  loc_C6EAB3: Call EjecutarRsCls(from_stack_1v)
  loc_C6EAB8: FFreeStr var_E8 = "": var_F0 = "": var_EC = "": var_F4 = ""
  loc_C6EAC5: FFree1Ad var_90
  loc_C6EAC8: LitStr "COMMIT;"
  loc_C6EACB: Call EjecutarRsCls(from_stack_1v)
  loc_C6EAD0: ExitProcHresult
  loc_C6EAD1: LitStr "ROLLBACK;"
  loc_C6EAD4: Call EjecutarRsCls(from_stack_1v)
  loc_C6EAD9: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_C6EADC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C6EAE1: ExitProcHresult
  loc_C6EAE2: EqCyR8
End Sub

Public Function ModificaCuilCuit(sCucuPers, sCucuPersNuevo) 'BB4640
  'Data Table: 4574F4
  loc_BB4100: ILdRf sCucuPers
  loc_BB4103: FStStrCopy var_98
  loc_BB4106: ILdRf sCucuPersNuevo
  loc_BB4109: FStStrCopy var_9C
  loc_BB410C: ZeroRetValVar
  loc_BB410E: OnErrorGoto loc_BB4627
  loc_BB4111: LitStr "SELECT CodiOfic, CuenCtct, infogov.persona.DetaPers, TipoRela, FealRela, FebaRela"
  loc_BB4114: LitStr " FROM relacion "
  loc_BB4117: ConcatStr
  loc_BB4118: FStStrNoPop var_A0
  loc_BB411B: LitStr " LEFT JOIN infogov.persona On relacion.CucuPers = infogov.persona.CucuPers"
  loc_BB411E: ConcatStr
  loc_BB411F: FStStrNoPop var_A4
  loc_BB4122: LitStr " WHERE relacion.CucuPers = "
  loc_BB4125: ConcatStr
  loc_BB4126: FStStrNoPop var_A8
  loc_BB4129: ILdRf var_98
  loc_BB412C: ConcatStr
  loc_BB412D: FStStrNoPop var_AC
  loc_BB4130: LitStr " ORDER BY CodiOfic, CuenCtct"
  loc_BB4133: ConcatStr
  loc_BB4134: FStStrNoPop var_B0
  loc_BB4137: Call EjecutarRsCls1(from_stack_1v)
  loc_BB413C: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_BB4149: FLdRfVar var_B4
  loc_BB414C: FLdPr Me
  loc_BB414F: MemLdPr global_60
  loc_BB4152:  = Me.RecordCount
  loc_BB4157: ILdRf var_B4
  loc_BB415A: LitI4 0
  loc_BB415F: GtI4
  loc_BB4160: BranchF loc_BB4575
  loc_BB4163: FLdPr Me
  loc_BB4166: MemLdPr global_60
  loc_BB4169: Me.MoveFirst
  loc_BB416E: LitStr "START TRANSACTION;"
  loc_BB4171: Call EjecutarRsCls(from_stack_1v)
  loc_BB4176: FLdRfVar var_B6
  loc_BB4179: FLdPr Me
  loc_BB417C: MemLdPr global_60
  loc_BB417F:  = Me.EOF
  loc_BB4184: FLdI2 var_B6
  loc_BB4187: NotI4
  loc_BB4188: BranchF loc_BB4261
  loc_BB418B: LitStr " UPDATE inmueble SET CucuPers = '"
  loc_BB418E: ILdRf var_9C
  loc_BB4191: ConcatStr
  loc_BB4192: FStStrNoPop var_A0
  loc_BB4195: LitStr "', ModiUsua = '"
  loc_BB4198: ConcatStr
  loc_BB4199: FStStrNoPop var_A4
  loc_BB419C: ImpAdLdI4 MemVar_D9302C
  loc_BB419F: ConcatStr
  loc_BB41A0: FStStrNoPop var_A8
  loc_BB41A3: LitStr "' WHERE inmueble.CucuPers = '"
  loc_BB41A6: ConcatStr
  loc_BB41A7: FStStrNoPop var_AC
  loc_BB41AA: ILdRf var_98
  loc_BB41AD: ConcatStr
  loc_BB41AE: FStStrNoPop var_B0
  loc_BB41B1: LitStr "';"
  loc_BB41B4: ConcatStr
  loc_BB41B5: FStStrNoPop var_BC
  loc_BB41B8: LitStr " UPDATE comercio SET CucuPers = '"
  loc_BB41BB: ConcatStr
  loc_BB41BC: FStStrNoPop var_C0
  loc_BB41BF: ILdRf var_9C
  loc_BB41C2: ConcatStr
  loc_BB41C3: FStStrNoPop var_C4
  loc_BB41C6: LitStr "' WHERE comercio.CucuPers = '"
  loc_BB41C9: ConcatStr
  loc_BB41CA: FStStrNoPop var_C8
  loc_BB41CD: ILdRf var_98
  loc_BB41D0: ConcatStr
  loc_BB41D1: FStStrNoPop var_CC
  loc_BB41D4: LitStr "';"
  loc_BB41D7: ConcatStr
  loc_BB41D8: FStStrNoPop var_D0
  loc_BB41DB: LitStr " UPDATE deudvari SET CucuPers = '"
  loc_BB41DE: ConcatStr
  loc_BB41DF: FStStrNoPop var_D4
  loc_BB41E2: ILdRf var_9C
  loc_BB41E5: ConcatStr
  loc_BB41E6: FStStrNoPop var_D8
  loc_BB41E9: LitStr "' WHERE deudvari.CucuPers = '"
  loc_BB41EC: ConcatStr
  loc_BB41ED: FStStrNoPop var_DC
  loc_BB41F0: ILdRf var_98
  loc_BB41F3: ConcatStr
  loc_BB41F4: FStStrNoPop var_E0
  loc_BB41F7: LitStr "';"
  loc_BB41FA: ConcatStr
  loc_BB41FB: FStStrNoPop var_E4
  loc_BB41FE: LitStr " UPDATE difunto SET CucuPers = '"
  loc_BB4201: ConcatStr
  loc_BB4202: FStStrNoPop var_E8
  loc_BB4205: ILdRf var_9C
  loc_BB4208: ConcatStr
  loc_BB4209: FStStrNoPop var_EC
  loc_BB420C: LitStr "' WHERE difunto.CucuPers = '"
  loc_BB420F: ConcatStr
  loc_BB4210: FStStrNoPop var_F0
  loc_BB4213: ILdRf var_98
  loc_BB4216: ConcatStr
  loc_BB4217: FStStrNoPop var_F4
  loc_BB421A: LitStr "'"
  loc_BB421D: ConcatStr
  loc_BB421E: FStStrNoPop var_F8
  loc_BB4221: Call EjecutarRsCls(from_stack_1v)
  loc_BB4226: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_BB4253: FLdPr Me
  loc_BB4256: MemLdPr global_60
  loc_BB4259: Me.MoveNext
  loc_BB425E: Branch loc_BB4176
  loc_BB4261: LitStr " UPDATE traninmu SET CucuVend = '"
  loc_BB4264: ILdRf var_9C
  loc_BB4267: ConcatStr
  loc_BB4268: FStStrNoPop var_A0
  loc_BB426B: LitStr "' WHERE CucuVend = '"
  loc_BB426E: ConcatStr
  loc_BB426F: FStStrNoPop var_A4
  loc_BB4272: ILdRf var_98
  loc_BB4275: ConcatStr
  loc_BB4276: FStStrNoPop var_A8
  loc_BB4279: LitStr "';"
  loc_BB427C: ConcatStr
  loc_BB427D: FStStrNoPop var_AC
  loc_BB4280: LitStr " UPDATE traninmu SET CucuComp = '"
  loc_BB4283: ConcatStr
  loc_BB4284: FStStrNoPop var_B0
  loc_BB4287: ILdRf var_9C
  loc_BB428A: ConcatStr
  loc_BB428B: FStStrNoPop var_BC
  loc_BB428E: LitStr "' WHERE CucuComp = '"
  loc_BB4291: ConcatStr
  loc_BB4292: FStStrNoPop var_C0
  loc_BB4295: ILdRf var_98
  loc_BB4298: ConcatStr
  loc_BB4299: FStStrNoPop var_C4
  loc_BB429C: LitStr "';"
  loc_BB429F: ConcatStr
  loc_BB42A0: FStStrNoPop var_C8
  loc_BB42A3: LitStr " UPDATE trancome SET CucuVend = '"
  loc_BB42A6: ConcatStr
  loc_BB42A7: FStStrNoPop var_CC
  loc_BB42AA: ILdRf var_9C
  loc_BB42AD: ConcatStr
  loc_BB42AE: FStStrNoPop var_D0
  loc_BB42B1: LitStr "' WHERE CucuVend = '"
  loc_BB42B4: ConcatStr
  loc_BB42B5: FStStrNoPop var_D4
  loc_BB42B8: ILdRf var_98
  loc_BB42BB: ConcatStr
  loc_BB42BC: FStStrNoPop var_D8
  loc_BB42BF: LitStr "';"
  loc_BB42C2: ConcatStr
  loc_BB42C3: FStStrNoPop var_DC
  loc_BB42C6: LitStr " UPDATE trancome SET CucuComp = '"
  loc_BB42C9: ConcatStr
  loc_BB42CA: FStStrNoPop var_E0
  loc_BB42CD: ILdRf var_9C
  loc_BB42D0: ConcatStr
  loc_BB42D1: FStStrNoPop var_E4
  loc_BB42D4: LitStr "' WHERE CucuComp = '"
  loc_BB42D7: ConcatStr
  loc_BB42D8: FStStrNoPop var_E8
  loc_BB42DB: ILdRf var_98
  loc_BB42DE: ConcatStr
  loc_BB42DF: FStStrNoPop var_EC
  loc_BB42E2: LitStr "';"
  loc_BB42E5: ConcatStr
  loc_BB42E6: FStStrNoPop var_F0
  loc_BB42E9: LitStr " UPDATE trandifu SET CucuVend = '"
  loc_BB42EC: ConcatStr
  loc_BB42ED: FStStrNoPop var_F4
  loc_BB42F0: ILdRf var_9C
  loc_BB42F3: ConcatStr
  loc_BB42F4: FStStrNoPop var_F8
  loc_BB42F7: LitStr "' WHERE CucuVend = '"
  loc_BB42FA: ConcatStr
  loc_BB42FB: FStStrNoPop var_FC
  loc_BB42FE: ILdRf var_98
  loc_BB4301: ConcatStr
  loc_BB4302: FStStrNoPop var_100
  loc_BB4305: LitStr "';"
  loc_BB4308: ConcatStr
  loc_BB4309: FStStrNoPop var_104
  loc_BB430C: LitStr " UPDATE trandifu SET CucuComp = '"
  loc_BB430F: ConcatStr
  loc_BB4310: FStStrNoPop var_108
  loc_BB4313: ILdRf var_9C
  loc_BB4316: ConcatStr
  loc_BB4317: FStStrNoPop var_10C
  loc_BB431A: LitStr "' WHERE CucuComp = '"
  loc_BB431D: ConcatStr
  loc_BB431E: FStStrNoPop var_110
  loc_BB4321: ILdRf var_98
  loc_BB4324: ConcatStr
  loc_BB4325: FStStrNoPop var_114
  loc_BB4328: LitStr "';"
  loc_BB432B: ConcatStr
  loc_BB432C: FStStrNoPop var_118
  loc_BB432F: LitStr " UPDATE apremio SET CucuPers = '"
  loc_BB4332: ConcatStr
  loc_BB4333: FStStrNoPop var_11C
  loc_BB4336: ILdRf var_9C
  loc_BB4339: ConcatStr
  loc_BB433A: FStStrNoPop var_120
  loc_BB433D: LitStr "' WHERE CucuPers = '"
  loc_BB4340: ConcatStr
  loc_BB4341: FStStrNoPop var_124
  loc_BB4344: ILdRf var_98
  loc_BB4347: ConcatStr
  loc_BB4348: FStStrNoPop var_128
  loc_BB434B: LitStr "';"
  loc_BB434E: ConcatStr
  loc_BB434F: FStStrNoPop var_12C
  loc_BB4352: LitStr " UPDATE facipago SET CucuPers = '"
  loc_BB4355: ConcatStr
  loc_BB4356: FStStrNoPop var_130
  loc_BB4359: ILdRf var_9C
  loc_BB435C: ConcatStr
  loc_BB435D: FStStrNoPop var_134
  loc_BB4360: LitStr "' WHERE CucuPers = '"
  loc_BB4363: ConcatStr
  loc_BB4364: FStStrNoPop var_138
  loc_BB4367: ILdRf var_98
  loc_BB436A: ConcatStr
  loc_BB436B: FStStrNoPop var_13C
  loc_BB436E: LitStr "';"
  loc_BB4371: ConcatStr
  loc_BB4372: FStStrNoPop var_140
  loc_BB4375: LitStr " UPDATE pago SET CucuPers = '"
  loc_BB4378: ConcatStr
  loc_BB4379: FStStrNoPop var_144
  loc_BB437C: ILdRf var_9C
  loc_BB437F: ConcatStr
  loc_BB4380: FStStrNoPop var_148
  loc_BB4383: LitStr "' WHERE CucuPers = '"
  loc_BB4386: ConcatStr
  loc_BB4387: FStStrNoPop var_14C
  loc_BB438A: ILdRf var_98
  loc_BB438D: ConcatStr
  loc_BB438E: FStStrNoPop var_150
  loc_BB4391: LitStr "';"
  loc_BB4394: ConcatStr
  loc_BB4395: FStStrNoPop var_154
  loc_BB4398: LitStr " UPDATE boleto SET CucuPers = '"
  loc_BB439B: ConcatStr
  loc_BB439C: FStStrNoPop var_158
  loc_BB439F: ILdRf var_9C
  loc_BB43A2: ConcatStr
  loc_BB43A3: FStStrNoPop var_15C
  loc_BB43A6: LitStr "' WHERE CucuPers = '"
  loc_BB43A9: ConcatStr
  loc_BB43AA: FStStrNoPop var_160
  loc_BB43AD: ILdRf var_98
  loc_BB43B0: ConcatStr
  loc_BB43B1: FStStrNoPop var_164
  loc_BB43B4: LitStr "';"
  loc_BB43B7: ConcatStr
  loc_BB43B8: FStStrNoPop var_168
  loc_BB43BB: LitStr " UPDATE liqutasa SET CucuPers = '"
  loc_BB43BE: ConcatStr
  loc_BB43BF: FStStrNoPop var_16C
  loc_BB43C2: ILdRf var_9C
  loc_BB43C5: ConcatStr
  loc_BB43C6: FStStrNoPop var_170
  loc_BB43C9: LitStr "' WHERE CucuPers = '"
  loc_BB43CC: ConcatStr
  loc_BB43CD: FStStrNoPop var_174
  loc_BB43D0: ILdRf var_98
  loc_BB43D3: ConcatStr
  loc_BB43D4: FStStrNoPop var_178
  loc_BB43D7: LitStr "';"
  loc_BB43DA: ConcatStr
  loc_BB43DB: FStStrNoPop var_17C
  loc_BB43DE: LitStr " UPDATE liqucome SET CucuPers = '"
  loc_BB43E1: ConcatStr
  loc_BB43E2: FStStrNoPop var_180
  loc_BB43E5: ILdRf var_9C
  loc_BB43E8: ConcatStr
  loc_BB43E9: FStStrNoPop var_184
  loc_BB43EC: LitStr "' WHERE CucuPers = '"
  loc_BB43EF: ConcatStr
  loc_BB43F0: FStStrNoPop var_188
  loc_BB43F3: ILdRf var_98
  loc_BB43F6: ConcatStr
  loc_BB43F7: FStStrNoPop var_18C
  loc_BB43FA: LitStr "';"
  loc_BB43FD: ConcatStr
  loc_BB43FE: FStStrNoPop var_190
  loc_BB4401: LitStr " UPDATE liquceme SET CucuPers = '"
  loc_BB4404: ConcatStr
  loc_BB4405: FStStrNoPop var_194
  loc_BB4408: ILdRf var_9C
  loc_BB440B: ConcatStr
  loc_BB440C: FStStrNoPop var_198
  loc_BB440F: LitStr "' WHERE CucuPers = '"
  loc_BB4412: ConcatStr
  loc_BB4413: FStStrNoPop var_19C
  loc_BB4416: ILdRf var_98
  loc_BB4419: ConcatStr
  loc_BB441A: FStStrNoPop var_1A0
  loc_BB441D: LitStr "';"
  loc_BB4420: ConcatStr
  loc_BB4421: FStStrNoPop var_1A4
  loc_BB4424: LitStr " UPDATE inspcome SET CucuPers = '"
  loc_BB4427: ConcatStr
  loc_BB4428: FStStrNoPop var_1A8
  loc_BB442B: ILdRf var_9C
  loc_BB442E: ConcatStr
  loc_BB442F: FStStrNoPop var_1AC
  loc_BB4432: LitStr "' WHERE CucuPers = '"
  loc_BB4435: ConcatStr
  loc_BB4436: FStStrNoPop var_1B0
  loc_BB4439: ILdRf var_98
  loc_BB443C: ConcatStr
  loc_BB443D: FStStrNoPop var_1B4
  loc_BB4440: LitStr "';"
  loc_BB4443: ConcatStr
  loc_BB4444: FStStrNoPop var_1B8
  loc_BB4447: LitStr " UPDATE inspcoin SET CucuPers = '"
  loc_BB444A: ConcatStr
  loc_BB444B: FStStrNoPop var_1BC
  loc_BB444E: ILdRf var_9C
  loc_BB4451: ConcatStr
  loc_BB4452: FStStrNoPop var_1C0
  loc_BB4455: LitStr "' WHERE CucuPers = '"
  loc_BB4458: ConcatStr
  loc_BB4459: FStStrNoPop var_1C4
  loc_BB445C: ILdRf var_98
  loc_BB445F: ConcatStr
  loc_BB4460: FStStrNoPop var_1C8
  loc_BB4463: LitStr "';"
  loc_BB4466: ConcatStr
  loc_BB4467: FStStrNoPop var_1CC
  loc_BB446A: LitStr " UPDATE infogov.persona SET CucuPers = '"
  loc_BB446D: ConcatStr
  loc_BB446E: FStStrNoPop var_1D0
  loc_BB4471: ILdRf var_9C
  loc_BB4474: ConcatStr
  loc_BB4475: FStStrNoPop var_1D4
  loc_BB4478: LitStr "', CcokPers = 1, ModiUsua = '"
  loc_BB447B: ConcatStr
  loc_BB447C: FStStrNoPop var_1D8
  loc_BB447F: ImpAdLdI4 MemVar_D9302C
  loc_BB4482: ConcatStr
  loc_BB4483: FStStrNoPop var_1DC
  loc_BB4486: LitStr "', Modifeho = now(), ObsePers = 'Modificacion de C.U.I.L.' WHERE CucuPers = '"
  loc_BB4489: ConcatStr
  loc_BB448A: FStStrNoPop var_1E0
  loc_BB448D: ILdRf var_98
  loc_BB4490: ConcatStr
  loc_BB4491: FStStrNoPop var_1E4
  loc_BB4494: LitStr "';"
  loc_BB4497: ConcatStr
  loc_BB4498: FStStrNoPop var_1E8
  loc_BB449B: LitStr " UPDATE relacion SET CucuPers = '"
  loc_BB449E: ConcatStr
  loc_BB449F: FStStrNoPop var_1EC
  loc_BB44A2: ILdRf var_9C
  loc_BB44A5: ConcatStr
  loc_BB44A6: FStStrNoPop var_1F0
  loc_BB44A9: LitStr "' WHERE CucuPers = '"
  loc_BB44AC: ConcatStr
  loc_BB44AD: FStStrNoPop var_1F4
  loc_BB44B0: ILdRf var_98
  loc_BB44B3: ConcatStr
  loc_BB44B4: FStStrNoPop var_1F8
  loc_BB44B7: LitStr "';"
  loc_BB44BA: ConcatStr
  loc_BB44BB: FStStrNoPop var_1FC
  loc_BB44BE: Call EjecutarRsCls(from_stack_1v)
  loc_BB44C3: FFreeStr var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_BB4572: Branch loc_BB4619
  loc_BB4575: LitStr "START TRANSACTION;"
  loc_BB4578: LitStr " UPDATE pago SET CucuPers = '"
  loc_BB457B: ConcatStr
  loc_BB457C: FStStrNoPop var_A0
  loc_BB457F: ILdRf var_9C
  loc_BB4582: ConcatStr
  loc_BB4583: FStStrNoPop var_A4
  loc_BB4586: LitStr "' WHERE CucuPers = '"
  loc_BB4589: ConcatStr
  loc_BB458A: FStStrNoPop var_A8
  loc_BB458D: ILdRf var_98
  loc_BB4590: ConcatStr
  loc_BB4591: FStStrNoPop var_AC
  loc_BB4594: LitStr "';"
  loc_BB4597: ConcatStr
  loc_BB4598: FStStrNoPop var_B0
  loc_BB459B: LitStr " UPDATE boleto SET CucuPers = '"
  loc_BB459E: ConcatStr
  loc_BB459F: FStStrNoPop var_BC
  loc_BB45A2: ILdRf var_9C
  loc_BB45A5: ConcatStr
  loc_BB45A6: FStStrNoPop var_C0
  loc_BB45A9: LitStr "' WHERE CucuPers = '"
  loc_BB45AC: ConcatStr
  loc_BB45AD: FStStrNoPop var_C4
  loc_BB45B0: ILdRf var_98
  loc_BB45B3: ConcatStr
  loc_BB45B4: FStStrNoPop var_C8
  loc_BB45B7: LitStr "';"
  loc_BB45BA: ConcatStr
  loc_BB45BB: FStStrNoPop var_CC
  loc_BB45BE: LitStr " UPDATE infogov.persona SET CucuPers = '"
  loc_BB45C1: ConcatStr
  loc_BB45C2: FStStrNoPop var_D0
  loc_BB45C5: ILdRf var_9C
  loc_BB45C8: ConcatStr
  loc_BB45C9: FStStrNoPop var_D4
  loc_BB45CC: LitStr "', CcokPers = 1, ModiUsua = '"
  loc_BB45CF: ConcatStr
  loc_BB45D0: FStStrNoPop var_D8
  loc_BB45D3: ImpAdLdI4 MemVar_D9302C
  loc_BB45D6: ConcatStr
  loc_BB45D7: FStStrNoPop var_DC
  loc_BB45DA: LitStr "', Modifeho = now(), ObsePers = 'Modificacion de C.U.I.L.' WHERE CucuPers = '"
  loc_BB45DD: ConcatStr
  loc_BB45DE: FStStrNoPop var_E0
  loc_BB45E1: ILdRf var_98
  loc_BB45E4: ConcatStr
  loc_BB45E5: FStStrNoPop var_E4
  loc_BB45E8: LitStr "'"
  loc_BB45EB: ConcatStr
  loc_BB45EC: FStStrNoPop var_E8
  loc_BB45EF: Call EjecutarRsCls(from_stack_1v)
  loc_BB45F4: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_BB4619: LitStr "COMMIT;"
  loc_BB461C: Call EjecutarRsCls(from_stack_1v)
  loc_BB4621: ExitProcCbHresult
  loc_BB4627: LitStr "ROLLBACK;"
  loc_BB462A: Call EjecutarRsCls(from_stack_1v)
  loc_BB462F: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_BB4632: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BB4637: ExitProcCbHresult
  loc_BB463D: FFree1Ad var_90
End Function

Public Sub sSelectInmueble(sFiltro, FiltroCbo) 'AC1D50
  'Data Table: 4574F4
  loc_AC1C6C: ILdRf sFiltro
  loc_AC1C6F: FStStrCopy var_88
  loc_AC1C72: ILdRf FiltroCbo
  loc_AC1C75: FStAd var_8C 
  loc_AC1C79: ILdRf var_88
  loc_AC1C7C: LitStr vbNullString
  loc_AC1C7F: EqStr
  loc_AC1C81: BranchF loc_AC1C8D
  loc_AC1C84: LitStr " WHERE CodiOfic = 1 AND CuenCtct = ''"
  loc_AC1C87: FStStrCopy var_90
  loc_AC1C8A: Branch loc_AC1CFB
  loc_AC1C8D: FLdRfVar var_92
  loc_AC1C90: FLdPr var_8C
  loc_AC1C93:  = Me.ListIndex
  loc_AC1C98: FLdI2 var_92
  loc_AC1C9B: FStI2 var_94
  loc_AC1C9E: FLdI2 var_94
  loc_AC1CA1: LitI2_Byte 0
  loc_AC1CA3: EqI2
  loc_AC1CA4: BranchF loc_AC1CBE
  loc_AC1CA7: LitStr " WHERE relacion.CodiOfic = 1 AND CuenCtct = '"
  loc_AC1CAA: ILdRf var_88
  loc_AC1CAD: ConcatStr
  loc_AC1CAE: FStStrNoPop var_98
  loc_AC1CB1: LitStr "' ORDER BY CodiOfic, CuenCtct"
  loc_AC1CB4: ConcatStr
  loc_AC1CB5: FStStr var_90
  loc_AC1CB8: FFree1Str var_98
  loc_AC1CBB: Branch loc_AC1CFB
  loc_AC1CBE: FLdI2 var_94
  loc_AC1CC1: LitI2_Byte 1
  loc_AC1CC3: EqI2
  loc_AC1CC4: BranchF loc_AC1CDE
  loc_AC1CC7: LitStr " WHERE inmueble.PadrInmu = '"
  loc_AC1CCA: ILdRf var_88
  loc_AC1CCD: ConcatStr
  loc_AC1CCE: FStStrNoPop var_98
  loc_AC1CD1: LitStr "' ORDER BY inmueble.PadrInmu"
  loc_AC1CD4: ConcatStr
  loc_AC1CD5: FStStr var_90
  loc_AC1CD8: FFree1Str var_98
  loc_AC1CDB: Branch loc_AC1CFB
  loc_AC1CDE: FLdI2 var_94
  loc_AC1CE1: LitI2_Byte 2
  loc_AC1CE3: EqI2
  loc_AC1CE4: BranchF loc_AC1CFB
  loc_AC1CE7: LitStr " WHERE relacion.CodiOfic = 1 AND DetaPers LIKE '" & Chr(37)
  loc_AC1CEA: ILdRf var_88
  loc_AC1CED: ConcatStr
  loc_AC1CEE: FStStrNoPop var_98
  loc_AC1CF1: LitStr Chr(37) & "' ORDER BY persona.DetaPers"
  loc_AC1CF4: ConcatStr
  loc_AC1CF5: FStStr var_90
  loc_AC1CF8: FFree1Str var_98
  loc_AC1CFB: LitStr "SELECT relacion.CucuPers, relacion.CuenCtct, PadrInmu, TipoRela, DetaPers, JuriPers, TelePers, CeluPers, FaxsPers, MailPers, infogov.persona.CodiTido, tipodocu.DetaTido, NudoPers, FenaPers, infogov.persona.CodiEsci, infogov.estacivi.DetaEsci, infogov.persona.CodiPofi, infogov.posifisc.DetaPofi, "
  loc_AC1CFE: LitStr " inmueble.CocpInmu, inmueble.DecpInmu, inmueble.NupoInmu, inmueble.CobpInmu, inmueble.DebpInmu, inmueble.MapoInmu, inmueble.CapoInmu, inmueble.UbpoInmu, inmueble.ColpInmu, inmueble.DelpInmu, inmueble.CoppInmu, CocrPers, DecrPers, NurePers, CobrPers, DebrPers, MarePers, CarePers, UbrePers, ColrPers, DelrPers, CoprPers, relacion.CodiUsua "
  loc_AC1D01: ConcatStr
  loc_AC1D02: FStStrNoPop var_98
  loc_AC1D05: LitStr " FROM relacion "
  loc_AC1D08: ConcatStr
  loc_AC1D09: FStStrNoPop var_9C
  loc_AC1D0C: LitStr " LEFT JOIN infogov.persona on infogov.persona.CucuPers = relacion.CucuPers"
  loc_AC1D0F: ConcatStr
  loc_AC1D10: FStStrNoPop var_A0
  loc_AC1D13: LitStr " LEFT JOIN infogov.tipodocu ON infogov.persona.CodiTido = infogov.tipodocu.CodiTido "
  loc_AC1D16: ConcatStr
  loc_AC1D17: FStStrNoPop var_A4
  loc_AC1D1A: LitStr " LEFT JOIN infogov.estacivi ON infogov.persona.CodiEsci = infogov.estacivi.CodiEsci "
  loc_AC1D1D: ConcatStr
  loc_AC1D1E: FStStrNoPop var_A8
  loc_AC1D21: LitStr " LEFT JOIN infogov.posifisc ON infogov.persona.CodiPofi = infogov.posifisc.CodiPofi "
  loc_AC1D24: ConcatStr
  loc_AC1D25: FStStrNoPop var_AC
  loc_AC1D28: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = relacion.CuenCtct "
  loc_AC1D2B: ConcatStr
  loc_AC1D2C: FStStrNoPop var_B0
  loc_AC1D2F: ILdRf var_90
  loc_AC1D32: ConcatStr
  loc_AC1D33: FStStrNoPop var_B4
  loc_AC1D36: Call RedefineRS(from_stack_1v)
  loc_AC1D3B: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_AC1D4E: ExitProcHresult
End Sub

Public Sub sSelect(sFiltro, FiltroCbo) 'AF00C8
  'Data Table: 4574F4
  loc_AEFF4C: ILdRf sFiltro
  loc_AEFF4F: FStStrCopy var_88
  loc_AEFF52: ILdRf FiltroCbo
  loc_AEFF55: FStAd var_8C 
  loc_AEFF59: ILdRf var_88
  loc_AEFF5C: LitStr vbNullString
  loc_AEFF5F: EqStr
  loc_AEFF61: BranchF loc_AEFF6D
  loc_AEFF64: LitStr " WHERE CucuPers = 0"
  loc_AEFF67: FStStrCopy var_90
  loc_AEFF6A: Branch loc_AF008F
  loc_AEFF6D: FLdRfVar var_92
  loc_AEFF70: FLdPr var_8C
  loc_AEFF73:  = Me.ListIndex
  loc_AEFF78: FLdI2 var_92
  loc_AEFF7B: FStI2 var_94
  loc_AEFF7E: FLdI2 var_94
  loc_AEFF81: LitI2_Byte 0
  loc_AEFF83: EqI2
  loc_AEFF84: BranchF loc_AEFFD2
  loc_AEFF87: LitStr " WHERE CucuPers >= '"
  loc_AEFF8A: ILdRf var_88
  loc_AEFF8D: ConcatStr
  loc_AEFF8E: CVarStr var_D4
  loc_AEFF91: LitVarStr var_A4, "0"
  loc_AEFF96: FStVarCopyObj var_B4
  loc_AEFF99: FLdRfVar var_B4
  loc_AEFF9C: LitI4 &HB
  loc_AEFFA1: ILdRf var_88
  loc_AEFFA4: FnLenStr
  loc_AEFFA5: SubI4
  loc_AEFFA6: FLdRfVar var_C4
  loc_AEFFA9: ImpAdCallFPR4  = String(, )
  loc_AEFFAE: FLdRfVar var_C4
  loc_AEFFB1: ConcatVar var_E4
  loc_AEFFB5: LitVarStr var_F4, "' ORDER BY persona.CucuPers"
  loc_AEFFBA: ConcatVar var_104
  loc_AEFFBE: CStrVarTmp
  loc_AEFFBF: FStStr var_90
  loc_AEFFC2: FFreeVar var_B4 = "": var_D4 = "": var_C4 = "": var_E4 = ""
  loc_AEFFCF: Branch loc_AF008F
  loc_AEFFD2: FLdI2 var_94
  loc_AEFFD5: LitI2_Byte 1
  loc_AEFFD7: EqI2
  loc_AEFFD8: BranchF loc_AEFFF2
  loc_AEFFDB: LitStr " WHERE DetaPers LIKE '" & Chr(37)
  loc_AEFFDE: ILdRf var_88
  loc_AEFFE1: ConcatStr
  loc_AEFFE2: FStStrNoPop var_108
  loc_AEFFE5: LitStr Chr(37) & "' ORDER BY persona.DetaPers"
  loc_AEFFE8: ConcatStr
  loc_AEFFE9: FStStr var_90
  loc_AEFFEC: FFree1Str var_108
  loc_AEFFEF: Branch loc_AF008F
  loc_AEFFF2: FLdI2 var_94
  loc_AEFFF5: LitI2_Byte 2
  loc_AEFFF7: EqI2
  loc_AEFFF8: BranchF loc_AF0012
  loc_AEFFFB: LitStr " WHERE NudoPers >= "
  loc_AEFFFE: ILdRf var_88
  loc_AF0001: ConcatStr
  loc_AF0002: FStStrNoPop var_108
  loc_AF0005: LitStr " ORDER BY NudoPers"
  loc_AF0008: ConcatStr
  loc_AF0009: FStStr var_90
  loc_AF000C: FFree1Str var_108
  loc_AF000F: Branch loc_AF008F
  loc_AF0012: FLdI2 var_94
  loc_AF0015: LitI2_Byte 3
  loc_AF0017: EqI2
  loc_AF0018: BranchF loc_AF0032
  loc_AF001B: LitStr " WHERE DecrPers LIKE '" & Chr(37)
  loc_AF001E: ILdRf var_88
  loc_AF0021: ConcatStr
  loc_AF0022: FStStrNoPop var_108
  loc_AF0025: LitStr Chr(37) & "' ORDER BY DecrPers"
  loc_AF0028: ConcatStr
  loc_AF0029: FStStr var_90
  loc_AF002C: FFree1Str var_108
  loc_AF002F: Branch loc_AF008F
  loc_AF0032: FLdI2 var_94
  loc_AF0035: LitI2_Byte 4
  loc_AF0037: EqI2
  loc_AF0038: BranchF loc_AF0052
  loc_AF003B: LitStr " WHERE DebrPers LIKE '" & Chr(37)
  loc_AF003E: ILdRf var_88
  loc_AF0041: ConcatStr
  loc_AF0042: FStStrNoPop var_108
  loc_AF0045: LitStr Chr(37) & "' ORDER BY DebrPers"
  loc_AF0048: ConcatStr
  loc_AF0049: FStStr var_90
  loc_AF004C: FFree1Str var_108
  loc_AF004F: Branch loc_AF008F
  loc_AF0052: FLdI2 var_94
  loc_AF0055: LitI2_Byte 5
  loc_AF0057: EqI2
  loc_AF0058: BranchF loc_AF0072
  loc_AF005B: LitStr " WHERE UbrePers LIKE '" & Chr(37)
  loc_AF005E: ILdRf var_88
  loc_AF0061: ConcatStr
  loc_AF0062: FStStrNoPop var_108
  loc_AF0065: LitStr Chr(37) & "' ORDER BY UbrePers"
  loc_AF0068: ConcatStr
  loc_AF0069: FStStr var_90
  loc_AF006C: FFree1Str var_108
  loc_AF006F: Branch loc_AF008F
  loc_AF0072: FLdI2 var_94
  loc_AF0075: LitI2_Byte 6
  loc_AF0077: EqI2
  loc_AF0078: BranchF loc_AF008F
  loc_AF007B: LitStr " WHERE DelrPers LIKE '" & Chr(37)
  loc_AF007E: ILdRf var_88
  loc_AF0081: ConcatStr
  loc_AF0082: FStStrNoPop var_108
  loc_AF0085: LitStr Chr(37) & "' ORDER BY DelrPers"
  loc_AF0088: ConcatStr
  loc_AF0089: FStStr var_90
  loc_AF008C: FFree1Str var_108
  loc_AF008F: LitStr "SELECT CucuPers, DetaPers, JuriPers, TelePers, CeluPers, FaxsPers, MailPers, infogov.persona.CodiTido, tipodocu.DetaTido, NudoPers, FenaPers, infogov.persona.CodiEsci, infogov.estacivi.DetaEsci, infogov.persona.CodiPofi, infogov.posifisc.DetaPofi, CocrPers, DecrPers, NurePers, CobrPers, DebrPers, MarePers, CarePers, UbrePers, ColrPers, DelrPers, CoprPers, ObsePers, persona.AltaUsua, persona.AltaFeho, persona.ModiUsua, persona.ModiFeho "
  loc_AF0092: LitStr " FROM infogov.persona "
  loc_AF0095: ConcatStr
  loc_AF0096: FStStrNoPop var_108
  loc_AF0099: LitStr " LEFT JOIN infogov.tipodocu ON infogov.persona.CodiTido = infogov.tipodocu.CodiTido "
  loc_AF009C: ConcatStr
  loc_AF009D: FStStrNoPop var_10C
  loc_AF00A0: LitStr " LEFT JOIN infogov.estacivi ON infogov.persona.CodiEsci = infogov.estacivi.CodiEsci "
  loc_AF00A3: ConcatStr
  loc_AF00A4: FStStrNoPop var_110
  loc_AF00A7: LitStr " LEFT JOIN infogov.posifisc ON infogov.persona.CodiPofi = infogov.posifisc.CodiPofi "
  loc_AF00AA: ConcatStr
  loc_AF00AB: FStStrNoPop var_114
  loc_AF00AE: ILdRf var_90
  loc_AF00B1: ConcatStr
  loc_AF00B2: FStStrNoPop var_118
  loc_AF00B5: Call RedefineRS(from_stack_1v)
  loc_AF00BA: FFreeStr var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_AF00C7: ExitProcHresult
End Sub

Private Function Proc_63_69_9F6A40() '9F6A40
  'Data Table: 4574F4
  loc_9F6A1C: LitStr "Primary"
  loc_9F6A1F: FLdPr Me
  loc_9F6A22: LateIdLdVar var_94 DispID_4 0
  loc_9F6A29: CastAdVar Me
  loc_9F6A2D: FStAdFunc var_98
  loc_9F6A30: FLdPr var_98
  loc_9F6A38: FFree1Ad var_98
  loc_9F6A3B: FFree1Var var_94 = ""
  loc_9F6A3E: ExitProcHresult
End Function

Private Function Proc_63_70_9E35CC(arg_C) '9E35CC
  'Data Table: 4574F4
  loc_9E35B0: ILdI4 arg_C
  loc_9E35B3: FStStrCopy var_88
  loc_9E35B6: ILdRf var_88
  loc_9E35B9: LitStr "Primary"
  loc_9E35BC: EqStr
  loc_9E35BE: BranchF loc_9E35CB
  loc_9E35C1: FLdPr Me
  loc_9E35C4: MemLdStr RsFrm
  loc_9E35C7: IStAd
  loc_9E35CB: ExitProcHresult
End Function
