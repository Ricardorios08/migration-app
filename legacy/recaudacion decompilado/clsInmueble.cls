VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsInmueble"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject
Public RsCls As New UnkObject
Public Rs2 As New UnkObject


Public Function RsFrmGet() '4F7AA8
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4F7AB7
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4F7AC6
  RsFrm = Value
End Sub

Public Function RsClsGet() '4F7AD5
  RsClsGet = RsCls
End Function

Public Sub RsClsPut(Value) '4F7AE4
  RsCls = Value
End Sub

Public Sub RsClsSet(Value) '4F7AF3
  RsCls = Value
End Sub

Public Function Rs2Get() '4F7B02
  Rs2Get = Rs2
End Function

Public Sub Rs2Put(Value) '4F7B11
  Rs2 = Value
End Sub

Public Sub Rs2Set(Value) '4F7B20
  Rs2 = Value
End Sub

Public Sub MoveFirst() '9EF9DC
  'Data Table: 4F6F78
  loc_9EF9B4: FLdRfVar var_88
  loc_9EF9B7: FLdPr Me
  loc_9EF9BA: MemLdPr RsFrm
  loc_9EF9BD:  = Me.RecordCount
  loc_9EF9C2: ILdRf var_88
  loc_9EF9C5: LitI4 0
  loc_9EF9CA: GtI4
  loc_9EF9CB: BranchF loc_9EF9D9
  loc_9EF9CE: FLdPr Me
  loc_9EF9D1: MemLdPr RsFrm
  loc_9EF9D4: Me.MoveFirst
  loc_9EF9D9: ExitProcHresult
End Sub

Public Sub MoveLast() '9EFA34
  'Data Table: 4F6F78
  loc_9EFA0C: FLdRfVar var_88
  loc_9EFA0F: FLdPr Me
  loc_9EFA12: MemLdPr RsFrm
  loc_9EFA15:  = Me.RecordCount
  loc_9EFA1A: ILdRf var_88
  loc_9EFA1D: LitI4 0
  loc_9EFA22: GtI4
  loc_9EFA23: BranchF loc_9EFA31
  loc_9EFA26: FLdPr Me
  loc_9EFA29: MemLdPr RsFrm
  loc_9EFA2C: Me.MoveLast
  loc_9EFA31: ExitProcHresult
  loc_9EFA32: ModI4
End Sub

Public Sub MoveNext() 'A69700
  'Data Table: 4F6F78
  loc_A69688: FLdRfVar var_86
  loc_A6968B: FLdPr Me
  loc_A6968E: MemLdPr RsFrm
  loc_A69691:  = Me.EOF
  loc_A69696: FLdI2 var_86
  loc_A69699: NotI4
  loc_A6969A: FLdRfVar var_8C
  loc_A6969D: FLdPr Me
  loc_A696A0: MemLdPr RsFrm
  loc_A696A3:  = Me.RecordCount
  loc_A696A8: ILdRf var_8C
  loc_A696AB: LitI4 0
  loc_A696B0: GtI4
  loc_A696B1: AndI4
  loc_A696B2: BranchF loc_A696C0
  loc_A696B5: FLdPr Me
  loc_A696B8: MemLdPr RsFrm
  loc_A696BB: Me.MoveNext
  loc_A696C0: FLdRfVar var_86
  loc_A696C3: FLdPr Me
  loc_A696C6: MemLdPr RsFrm
  loc_A696C9:  = Me.EOF
  loc_A696CE: FLdI2 var_86
  loc_A696D1: FLdRfVar var_8C
  loc_A696D4: FLdPr Me
  loc_A696D7: MemLdPr RsFrm
  loc_A696DA:  = Me.RecordCount
  loc_A696DF: ILdRf var_8C
  loc_A696E2: LitI4 0
  loc_A696E7: GtI4
  loc_A696E8: AndI4
  loc_A696E9: BranchF loc_A696FC
  loc_A696EC: ImpAdCallFPR4 Beep()
  loc_A696F1: FLdPr Me
  loc_A696F4: MemLdPr RsFrm
  loc_A696F7: Me.MoveLast
  loc_A696FC: ExitProcHresult
  loc_A696FD: NeI2
  loc_A696FE: ModI4
End Sub

Public Sub MoveSiguiente() '9B0A20
  'Data Table: 4F6F78
  loc_9B0A14: FLdPr Me
  loc_9B0A17: MemLdPr RsFrm
  loc_9B0A1A: Me.MoveNext
  loc_9B0A1F: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B8E30
  'Data Table: 4F6F78
  loc_9B8E1C: LitVar_Missing var_94
  loc_9B8E1F: PopAdLdVar
  loc_9B8E20: ILdI2 iValor
  loc_9B8E23: CI4UI1
  loc_9B8E24: FLdPr Me
  loc_9B8E27: MemLdPr RsFrm
  loc_9B8E2A: Me.Move from_stack_1, from_stack_2
  loc_9B8E2F: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6C100
  'Data Table: 4F6F78
  loc_A6C088: FLdRfVar var_86
  loc_A6C08B: FLdPr Me
  loc_A6C08E: MemLdPr RsFrm
  loc_A6C091:  = Me.BOF
  loc_A6C096: FLdI2 var_86
  loc_A6C099: NotI4
  loc_A6C09A: FLdRfVar var_8C
  loc_A6C09D: FLdPr Me
  loc_A6C0A0: MemLdPr RsFrm
  loc_A6C0A3:  = Me.RecordCount
  loc_A6C0A8: ILdRf var_8C
  loc_A6C0AB: LitI4 0
  loc_A6C0B0: GtI4
  loc_A6C0B1: AndI4
  loc_A6C0B2: BranchF loc_A6C0C0
  loc_A6C0B5: FLdPr Me
  loc_A6C0B8: MemLdPr RsFrm
  loc_A6C0BB: Me.MovePrevious
  loc_A6C0C0: FLdRfVar var_86
  loc_A6C0C3: FLdPr Me
  loc_A6C0C6: MemLdPr RsFrm
  loc_A6C0C9:  = Me.BOF
  loc_A6C0CE: FLdI2 var_86
  loc_A6C0D1: FLdRfVar var_8C
  loc_A6C0D4: FLdPr Me
  loc_A6C0D7: MemLdPr RsFrm
  loc_A6C0DA:  = Me.RecordCount
  loc_A6C0DF: ILdRf var_8C
  loc_A6C0E2: LitI4 0
  loc_A6C0E7: GtI4
  loc_A6C0E8: AndI4
  loc_A6C0E9: BranchF loc_A6C0FC
  loc_A6C0EC: ImpAdCallFPR4 Beep()
  loc_A6C0F1: FLdPr Me
  loc_A6C0F4: MemLdPr RsFrm
  loc_A6C0F7: Me.MoveFirst
  loc_A6C0FC: ExitProcHresult
End Sub

Public Property Get EOF() '9DACB4
  'Data Table: 4F6F78
  loc_9DAC98: FLdRfVar var_88
  loc_9DAC9B: FLdPr Me
  loc_9DAC9E: MemLdPr RsFrm
  loc_9DACA1:  = Me.EOF
  loc_9DACA6: FLdI2 var_88
  loc_9DACA9: FStI2 var_86
  loc_9DACAC: ExitProcCbHresult
  loc_9DACB2: VCallAd Control_ID_
End Sub

Public Property Get BOF() '9DAC1C
  'Data Table: 4F6F78
  loc_9DAC00: FLdRfVar var_88
  loc_9DAC03: FLdPr Me
  loc_9DAC06: MemLdPr RsFrm
  loc_9DAC09:  = Me.BOF
  loc_9DAC0E: FLdI2 var_88
  loc_9DAC11: FStI2 var_86
  loc_9DAC14: ExitProcCbHresult
  loc_9DAC1A: VCallAd Control_ID_
End Sub

Public Sub Sort(sOrden) '9B3EF8
  'Data Table: 4F6F78
  loc_9B3EE8: ILdI4 sOrden
  loc_9B3EEB: FLdPr Me
  loc_9B3EEE: MemLdPr RsFrm
  loc_9B3EF1: Me.Sort = from_stack_1
  loc_9B3EF6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DF160
  'Data Table: 4F6F78
  loc_9DF140: LitVar_Missing var_94
  loc_9DF143: PopAdLdVar
  loc_9DF144: LitI4 1
  loc_9DF149: LitI4 0
  loc_9DF14E: ILdI4 sFind
  loc_9DF151: FLdPr Me
  loc_9DF154: MemLdPr RsFrm
  loc_9DF157: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DF15C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9B9050
  'Data Table: 4F6F78
  loc_9B903C: ILdI4 sCriterio
  loc_9B903F: CVarStr var_94
  loc_9B9042: PopAdLdVar
  loc_9B9043: FLdPr Me
  loc_9B9046: MemLdPr RsFrm
  loc_9B9049: Me.Filter = from_stack_1
  loc_9B904E: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9DA924
  'Data Table: 4F6F78
  loc_9DA908: FLdRfVar var_8C
  loc_9DA90B: FLdPr Me
  loc_9DA90E: MemLdPr RsFrm
  loc_9DA911:  = Me.AbsolutePosition
  loc_9DA916: ILdRf var_8C
  loc_9DA919: FStR4 var_88
  loc_9DA91C: ExitProcCbHresult
  loc_9DA922: ExitProcI2
End Sub

Public Property Get RecordCount() '9DA5E0
  'Data Table: 4F6F78
  loc_9DA5C4: FLdRfVar var_8C
  loc_9DA5C7: FLdPr Me
  loc_9DA5CA: MemLdPr RsFrm
  loc_9DA5CD:  = Me.RecordCount
  loc_9DA5D2: ILdRf var_8C
  loc_9DA5D5: FStR4 var_88
  loc_9DA5D8: ExitProcCbHresult
End Sub

Public Sub AddNew(vectorDatos, MetrFrin, DetaCall, DetaBarr, DetaLoca, CodiPost) 'C59DE8
  'Data Table: 4F6F78
  loc_C591AC: ILdRf DetaBarr
  loc_C591AF: FStStrCopy var_88
  loc_C591B2: ILdRf DetaLoca
  loc_C591B5: FStStrCopy var_8C
  loc_C591B8: ILdRf CodiPost
  loc_C591BB: FStStrCopy var_90
  loc_C591BE: ILdRf arg_24
  loc_C591C1: FStStrCopy var_94
  loc_C591C4: FLdRfVar var_9C
  loc_C591C7: LitI4 0
  loc_C591CC: ILdI4 vectorDatos
  loc_C591CF: Ary1LdRfVar
  loc_C591D1: CI4Var
  loc_C591D3: from_stack_2v = ValidaClave(from_stack_1v)
  loc_C591D8: ILdRf var_9C
  loc_C591DB: LitStr vbNullString
  loc_C591DE: NeStr
  loc_C591E0: FFree1Str var_9C
  loc_C591E3: BranchF loc_C5920B
  loc_C591E6: LitVarStr var_AC, "El INMUEBLE YA EXISTE. Verifique: "
  loc_C591EB: LitI4 0
  loc_C591F0: ILdI4 vectorDatos
  loc_C591F3: Ary1LdRfVar
  loc_C591F5: ConcatVar var_BC
  loc_C591F9: CStrVarVal var_9C
  loc_C591FD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C59202: FFree1Str var_9C
  loc_C59205: FFree1Var var_BC = ""
  loc_C59208: Branch loc_C59DE4
  loc_C5920B: LitVarStr var_AC, "SELECT * FROM infogov.persona WHERE CucuPers = "
  loc_C59210: LitI4 1
  loc_C59215: ILdI4 vectorDatos
  loc_C59218: Ary1LdRfVar
  loc_C5921A: ConcatVar var_BC
  loc_C5921E: CStrVarVal var_9C
  loc_C59222: Call EjecutarRs2(from_stack_1v)
  loc_C59227: FFree1Str var_9C
  loc_C5922A: FFree1Var var_BC = ""
  loc_C5922D: FLdRfVar var_C0
  loc_C59230: FLdPr Me
  loc_C59233: MemLdPr Rs2
  loc_C59236:  = Me.RecordCount
  loc_C5923B: ILdRf var_C0
  loc_C5923E: LitI4 0
  loc_C59243: GtI4
  loc_C59244: BranchF loc_C59DAB
  loc_C59247: LitI4 &H10
  loc_C5924C: ILdI4 vectorDatos
  loc_C5924F: AryLock
  loc_C59252: Ary1LdRf
  loc_C59253: ImpAdCallI2 IsDate()
  loc_C59258: FStI2 var_3BE
  loc_C5925B: AryUnlock
  loc_C5925E: LitI4 1
  loc_C59263: LitI4 1
  loc_C59268: LitVarStr var_3D4, "yyyy-mm-dd"
  loc_C5926D: FStVarCopyObj var_3E4
  loc_C59270: FLdRfVar var_3E4
  loc_C59273: LitI4 &H10
  loc_C59278: ILdI4 vectorDatos
  loc_C5927B: AryLock
  loc_C5927E: Ary1LdRf
  loc_C5927F: ImpAdCallI2 Format$(, )
  loc_C59284: FStStr var_3E8
  loc_C59287: AryUnlock
  loc_C5928A: LitI4 &H13
  loc_C5928F: ILdI4 vectorDatos
  loc_C59292: AryLock
  loc_C59295: Ary1LdRf
  loc_C59296: ImpAdCallI2 IsDate()
  loc_C5929B: FStI2 var_4D2
  loc_C5929E: AryUnlock
  loc_C592A1: LitI4 1
  loc_C592A6: LitI4 1
  loc_C592AB: LitVarStr var_4E8, "yyyy-mm-dd"
  loc_C592B0: FStVarCopyObj var_4F8
  loc_C592B3: FLdRfVar var_4F8
  loc_C592B6: LitI4 &H13
  loc_C592BB: ILdI4 vectorDatos
  loc_C592BE: AryLock
  loc_C592C1: Ary1LdRf
  loc_C592C2: ImpAdCallI2 Format$(, )
  loc_C592C7: FStStr var_4FC
  loc_C592CA: AryUnlock
  loc_C592CD: LitI4 &H23
  loc_C592D2: ILdI4 vectorDatos
  loc_C592D5: AryLock
  loc_C592D8: Ary1LdRf
  loc_C592D9: ImpAdCallI2 IsDate()
  loc_C592DE: FStI2 var_AA6
  loc_C592E1: AryUnlock
  loc_C592E4: LitI4 1
  loc_C592E9: LitI4 1
  loc_C592EE: LitVarStr var_ABC, "yyyy-mm-dd"
  loc_C592F3: FStVarCopyObj var_ACC
  loc_C592F6: FLdRfVar var_ACC
  loc_C592F9: LitI4 &H23
  loc_C592FE: ILdI4 vectorDatos
  loc_C59301: AryLock
  loc_C59304: Ary1LdRf
  loc_C59305: ImpAdCallI2 Format$(, )
  loc_C5930A: FStStr var_AD0
  loc_C5930D: AryUnlock
  loc_C59310: LitStr "START TRANSACTION; INSERT INTO inmueble (CodiInmu, CucuPers, ComuInmu, DptoInmu, DistInmu, SeccInmu, ManzInmu, ParcInmu, SubpInmu, DigiInmu, NomeInmu, "
  loc_C59313: LitStr "PaprInmu, InscInmu, FojaInmu, TomoInmu, ExpeInmu, FeinInmu, MatrInmu, AsieInmu, FemaInmu, MensInmu, ManpInmu, LoteInmu, PoliInmu, ObsaInmu, CausInmu, PapaInmu, ObseInmu, CodiCall, NucaInmu, CodiBarr, MansInmu, CasaInmu, UbicInmu, CodiLoca, "
  loc_C59316: ConcatStr
  loc_C59317: FStStrNoPop var_9C
  loc_C5931A: LitStr "CocpInmu, DecpInmu, NupoInmu, CobpInmu, DebpInmu, MapoInmu, CapoInmu, UbpoInmu, ColpInmu, DelpInmu, CoppInmu, FeesInmu, SupeInmu, SutiInmu, SucuInmu, "
  loc_C5931D: ConcatStr
  loc_C5931E: FStStrNoPop var_C4
  loc_C59321: LitStr "SudeInmu, SuscInmu, SucmInmu, PohoInmu, SuprInmu, SusuInmu, SubaInmu, SuenInmu, CodiEsin, CodiZoin, CodiGrin, CodiExce, PeriInmu, BimeInmu, BonoInmu, AltaUsua) "
  loc_C59324: ConcatStr
  loc_C59325: FStStrNoPop var_C8
  loc_C59328: LitStr "VALUES ("
  loc_C5932B: ConcatStr
  loc_C5932C: CVarStr var_BC
  loc_C5932F: LitI4 0
  loc_C59334: ILdI4 vectorDatos
  loc_C59337: Ary1LdRfVar
  loc_C59339: ConcatVar var_D8
  loc_C5933D: LitVarStr var_AC, ",'"
  loc_C59342: ConcatVar var_E8
  loc_C59346: LitI4 1
  loc_C5934B: ILdI4 vectorDatos
  loc_C5934E: Ary1LdRfVar
  loc_C59350: ConcatVar var_F8
  loc_C59354: LitVarStr var_108, "',"
  loc_C59359: ConcatVar var_118
  loc_C5935D: LitI4 &H35
  loc_C59362: ILdI4 vectorDatos
  loc_C59365: Ary1LdRfVar
  loc_C59367: ConcatVar var_128
  loc_C5936B: LitVarStr var_138, ","
  loc_C59370: ConcatVar var_148
  loc_C59374: LitI4 3
  loc_C59379: ILdI4 vectorDatos
  loc_C5937C: Ary1LdRfVar
  loc_C5937E: ConcatVar var_158
  loc_C59382: LitVarStr var_168, ","
  loc_C59387: ConcatVar var_178
  loc_C5938B: LitI4 4
  loc_C59390: ILdI4 vectorDatos
  loc_C59393: Ary1LdRfVar
  loc_C59395: ConcatVar var_188
  loc_C59399: LitVarStr var_198, ","
  loc_C5939E: ConcatVar var_1A8
  loc_C593A2: LitI4 5
  loc_C593A7: ILdI4 vectorDatos
  loc_C593AA: Ary1LdRfVar
  loc_C593AC: ConcatVar var_1B8
  loc_C593B0: LitVarStr var_1C8, ","
  loc_C593B5: ConcatVar var_1D8
  loc_C593B9: LitI4 6
  loc_C593BE: ILdI4 vectorDatos
  loc_C593C1: Ary1LdRfVar
  loc_C593C3: ConcatVar var_1E8
  loc_C593C7: LitVarStr var_1F8, ","
  loc_C593CC: ConcatVar var_208
  loc_C593D0: LitI4 7
  loc_C593D5: ILdI4 vectorDatos
  loc_C593D8: Ary1LdRfVar
  loc_C593DA: ConcatVar var_218
  loc_C593DE: LitVarStr var_228, ","
  loc_C593E3: ConcatVar var_238
  loc_C593E7: LitI4 8
  loc_C593EC: ILdI4 vectorDatos
  loc_C593EF: Ary1LdRfVar
  loc_C593F1: ConcatVar var_248
  loc_C593F5: LitVarStr var_258, ","
  loc_C593FA: ConcatVar var_268
  loc_C593FE: LitI4 9
  loc_C59403: ILdI4 vectorDatos
  loc_C59406: Ary1LdRfVar
  loc_C59408: ConcatVar var_278
  loc_C5940C: LitVarStr var_288, ",'"
  loc_C59411: ConcatVar var_298
  loc_C59415: LitI4 &HA
  loc_C5941A: ILdI4 vectorDatos
  loc_C5941D: Ary1LdRfVar
  loc_C5941F: ConcatVar var_2A8
  loc_C59423: LitVarStr var_2B8, "',"
  loc_C59428: ConcatVar var_2C8
  loc_C5942C: LitI4 &HB
  loc_C59431: ILdI4 vectorDatos
  loc_C59434: Ary1LdRfVar
  loc_C59436: ConcatVar var_2D8
  loc_C5943A: LitVarStr var_2E8, ","
  loc_C5943F: ConcatVar var_2F8
  loc_C59443: LitI4 &HC
  loc_C59448: ILdI4 vectorDatos
  loc_C5944B: Ary1LdRfVar
  loc_C5944D: ConcatVar var_308
  loc_C59451: LitVarStr var_318, ","
  loc_C59456: ConcatVar var_328
  loc_C5945A: LitI4 &HD
  loc_C5945F: ILdI4 vectorDatos
  loc_C59462: Ary1LdRfVar
  loc_C59464: ConcatVar var_338
  loc_C59468: LitVarStr var_348, ",'"
  loc_C5946D: ConcatVar var_358
  loc_C59471: LitI4 &HE
  loc_C59476: ILdI4 vectorDatos
  loc_C59479: Ary1LdRfVar
  loc_C5947B: ConcatVar var_368
  loc_C5947F: LitVarStr var_378, "','"
  loc_C59484: ConcatVar var_388
  loc_C59488: LitI4 &HF
  loc_C5948D: ILdI4 vectorDatos
  loc_C59490: Ary1LdRfVar
  loc_C59492: ConcatVar var_398
  loc_C59496: LitVarStr var_3A8, "',"
  loc_C5949B: ConcatVar var_3B8
  loc_C5949F: LitVarStr var_41C, "Null"
  loc_C594A4: FStVarCopyObj var_42C
  loc_C594A7: FLdRfVar var_42C
  loc_C594AA: LitStr "'"
  loc_C594AD: ILdRf var_3E8
  loc_C594B0: ConcatStr
  loc_C594B1: FStStrNoPop var_3EC
  loc_C594B4: LitStr "'"
  loc_C594B7: ConcatStr
  loc_C594B8: CVarStr var_40C
  loc_C594BB: FLdI2 var_3BE
  loc_C594BE: CVarBoolI2 var_3FC
  loc_C594C2: FLdRfVar var_43C
  loc_C594C5: ImpAdCallFPR4  = IIf(, , )
  loc_C594CA: FLdRfVar var_43C
  loc_C594CD: ConcatVar var_44C
  loc_C594D1: LitVarStr var_45C, ","
  loc_C594D6: ConcatVar var_46C
  loc_C594DA: LitI4 &H11
  loc_C594DF: ILdI4 vectorDatos
  loc_C594E2: Ary1LdRfVar
  loc_C594E4: ConcatVar var_47C
  loc_C594E8: LitVarStr var_48C, ",'"
  loc_C594ED: ConcatVar var_49C
  loc_C594F1: LitI4 &H12
  loc_C594F6: ILdI4 vectorDatos
  loc_C594F9: Ary1LdRfVar
  loc_C594FB: ConcatVar var_4AC
  loc_C594FF: LitVarStr var_4BC, "',"
  loc_C59504: ConcatVar var_4CC
  loc_C59508: LitVarStr var_530, "Null"
  loc_C5950D: FStVarCopyObj var_540
  loc_C59510: FLdRfVar var_540
  loc_C59513: LitStr "'"
  loc_C59516: ILdRf var_4FC
  loc_C59519: ConcatStr
  loc_C5951A: FStStrNoPop var_500
  loc_C5951D: LitStr "'"
  loc_C59520: ConcatStr
  loc_C59521: CVarStr var_520
  loc_C59524: FLdI2 var_4D2
  loc_C59527: CVarBoolI2 var_510
  loc_C5952B: FLdRfVar var_550
  loc_C5952E: ImpAdCallFPR4  = IIf(, , )
  loc_C59533: FLdRfVar var_550
  loc_C59536: ConcatVar var_560
  loc_C5953A: LitVarStr var_570, ","
  loc_C5953F: ConcatVar var_580
  loc_C59543: LitI4 &H14
  loc_C59548: ILdI4 vectorDatos
  loc_C5954B: Ary1LdRfVar
  loc_C5954D: ConcatVar var_590
  loc_C59551: LitVarStr var_5A0, ",'"
  loc_C59556: ConcatVar var_5B0
  loc_C5955A: LitI4 &H15
  loc_C5955F: ILdI4 vectorDatos
  loc_C59562: Ary1LdRfVar
  loc_C59564: ConcatVar var_5C0
  loc_C59568: LitVarStr var_5D0, "','"
  loc_C5956D: ConcatVar var_5E0
  loc_C59571: LitI4 &H16
  loc_C59576: ILdI4 vectorDatos
  loc_C59579: Ary1LdRfVar
  loc_C5957B: ConcatVar var_5F0
  loc_C5957F: LitVarStr var_600, "','"
  loc_C59584: ConcatVar var_610
  loc_C59588: LitI4 &H17
  loc_C5958D: ILdI4 vectorDatos
  loc_C59590: Ary1LdRfVar
  loc_C59592: ConcatVar var_620
  loc_C59596: LitVarStr var_630, "','"
  loc_C5959B: ConcatVar var_640
  loc_C5959F: LitI4 &H18
  loc_C595A4: ILdI4 vectorDatos
  loc_C595A7: Ary1LdRfVar
  loc_C595A9: ConcatVar var_650
  loc_C595AD: LitVarStr var_660, "',"
  loc_C595B2: ConcatVar var_670
  loc_C595B6: LitI4 &H19
  loc_C595BB: ILdI4 vectorDatos
  loc_C595BE: Ary1LdRfVar
  loc_C595C0: ConcatVar var_680
  loc_C595C4: LitVarStr var_690, ","
  loc_C595C9: ConcatVar var_6A0
  loc_C595CD: LitI4 &H1A
  loc_C595D2: ILdI4 vectorDatos
  loc_C595D5: Ary1LdRfVar
  loc_C595D7: ConcatVar var_6B0
  loc_C595DB: LitVarStr var_6C0, ",'"
  loc_C595E0: ConcatVar var_6D0
  loc_C595E4: LitI4 &H1B
  loc_C595E9: ILdI4 vectorDatos
  loc_C595EC: Ary1LdRfVar
  loc_C595EE: ConcatVar var_6E0
  loc_C595F2: LitVarStr var_6F0, "',"
  loc_C595F7: ConcatVar var_700
  loc_C595FB: LitI4 &H1C
  loc_C59600: ILdI4 vectorDatos
  loc_C59603: Ary1LdRfVar
  loc_C59605: ConcatVar var_710
  loc_C59609: LitVarStr var_720, ","
  loc_C5960E: ConcatVar var_730
  loc_C59612: LitI4 &H1D
  loc_C59617: ILdI4 vectorDatos
  loc_C5961A: Ary1LdRfVar
  loc_C5961C: ConcatVar var_740
  loc_C59620: LitVarStr var_750, ","
  loc_C59625: ConcatVar var_760
  loc_C59629: LitI4 &H1E
  loc_C5962E: ILdI4 vectorDatos
  loc_C59631: Ary1LdRfVar
  loc_C59633: ConcatVar var_770
  loc_C59637: LitVarStr var_780, ",'"
  loc_C5963C: ConcatVar var_790
  loc_C59640: LitI4 &H1F
  loc_C59645: ILdI4 vectorDatos
  loc_C59648: Ary1LdRfVar
  loc_C5964A: ConcatVar var_7A0
  loc_C5964E: LitVarStr var_7B0, "','"
  loc_C59653: ConcatVar var_7C0
  loc_C59657: LitI4 &H20
  loc_C5965C: ILdI4 vectorDatos
  loc_C5965F: Ary1LdRfVar
  loc_C59661: ConcatVar var_7D0
  loc_C59665: LitVarStr var_7E0, "','"
  loc_C5966A: ConcatVar var_7F0
  loc_C5966E: LitI4 &H21
  loc_C59673: ILdI4 vectorDatos
  loc_C59676: Ary1LdRfVar
  loc_C59678: ConcatVar var_800
  loc_C5967C: LitVarStr var_810, "',"
  loc_C59681: ConcatVar var_820
  loc_C59685: LitI4 &H22
  loc_C5968A: ILdI4 vectorDatos
  loc_C5968D: Ary1LdRfVar
  loc_C5968F: ConcatVar var_830
  loc_C59693: LitVarStr var_840, ","
  loc_C59698: ConcatVar var_850
  loc_C5969C: LitI4 &H1C
  loc_C596A1: ILdI4 vectorDatos
  loc_C596A4: Ary1LdRfVar
  loc_C596A6: ConcatVar var_860
  loc_C596AA: LitVarStr var_870, ",'"
  loc_C596AF: ConcatVar var_880
  loc_C596B3: ILdRf var_88
  loc_C596B6: CVarStr var_890
  loc_C596B9: ConcatVar var_8A0
  loc_C596BD: LitVarStr var_8B0, "',"
  loc_C596C2: ConcatVar var_8C0
  loc_C596C6: LitI4 &H1D
  loc_C596CB: ILdI4 vectorDatos
  loc_C596CE: Ary1LdRfVar
  loc_C596D0: ConcatVar var_8D0
  loc_C596D4: LitVarStr var_8E0, ","
  loc_C596D9: ConcatVar var_8F0
  loc_C596DD: LitI4 &H1E
  loc_C596E2: ILdI4 vectorDatos
  loc_C596E5: Ary1LdRfVar
  loc_C596E7: ConcatVar var_900
  loc_C596EB: LitVarStr var_910, ",'"
  loc_C596F0: ConcatVar var_920
  loc_C596F4: ILdRf var_8C
  loc_C596F7: CVarStr var_930
  loc_C596FA: ConcatVar var_940
  loc_C596FE: LitVarStr var_950, "','"
  loc_C59703: ConcatVar var_960
  loc_C59707: LitI4 &H1F
  loc_C5970C: ILdI4 vectorDatos
  loc_C5970F: Ary1LdRfVar
  loc_C59711: ConcatVar var_970
  loc_C59715: LitVarStr var_980, "','"
  loc_C5971A: ConcatVar var_990
  loc_C5971E: LitI4 &H20
  loc_C59723: ILdI4 vectorDatos
  loc_C59726: Ary1LdRfVar
  loc_C59728: ConcatVar var_9A0
  loc_C5972C: LitVarStr var_9B0, "','"
  loc_C59731: ConcatVar var_9C0
  loc_C59735: LitI4 &H21
  loc_C5973A: ILdI4 vectorDatos
  loc_C5973D: Ary1LdRfVar
  loc_C5973F: ConcatVar var_9D0
  loc_C59743: LitVarStr var_9E0, "',"
  loc_C59748: ConcatVar var_9F0
  loc_C5974C: LitI4 &H22
  loc_C59751: ILdI4 vectorDatos
  loc_C59754: Ary1LdRfVar
  loc_C59756: ConcatVar var_A00
  loc_C5975A: LitVarStr var_A10, ",'"
  loc_C5975F: ConcatVar var_A20
  loc_C59763: ILdRf var_90
  loc_C59766: CVarStr var_A30
  loc_C59769: ConcatVar var_A40
  loc_C5976D: LitVarStr var_A50, "','"
  loc_C59772: ConcatVar var_A60
  loc_C59776: ILdRf var_94
  loc_C59779: CVarStr var_A70
  loc_C5977C: ConcatVar var_A80
  loc_C59780: LitVarStr var_A90, "',"
  loc_C59785: ConcatVar var_AA0
  loc_C59789: LitVarStr var_B04, "Null"
  loc_C5978E: FStVarCopyObj var_B14
  loc_C59791: FLdRfVar var_B14
  loc_C59794: LitStr "'"
  loc_C59797: ILdRf var_AD0
  loc_C5979A: ConcatStr
  loc_C5979B: FStStrNoPop var_AD4
  loc_C5979E: LitStr "'"
  loc_C597A1: ConcatStr
  loc_C597A2: CVarStr var_AF4
  loc_C597A5: FLdI2 var_AA6
  loc_C597A8: CVarBoolI2 var_AE4
  loc_C597AC: FLdRfVar var_B24
  loc_C597AF: ImpAdCallFPR4  = IIf(, , )
  loc_C597B4: FLdRfVar var_B24
  loc_C597B7: ConcatVar var_B34
  loc_C597BB: LitVarStr var_B44, ","
  loc_C597C0: ConcatVar var_B54
  loc_C597C4: LitI4 0
  loc_C597C9: LitI4 -1
  loc_C597CE: LitI4 1
  loc_C597D3: LitStr "."
  loc_C597D6: LitStr ","
  loc_C597D9: LitI4 &H24
  loc_C597DE: ILdI4 vectorDatos
  loc_C597E1: Ary1LdRfVar
  loc_C597E3: CStrVarVal var_B58
  loc_C597E7: ImpAdCallI2 Replace(, , , , , )
  loc_C597EC: CVarStr var_B68
  loc_C597EF: ConcatVar var_B78
  loc_C597F3: LitVarStr var_B88, ","
  loc_C597F8: ConcatVar var_B98
  loc_C597FC: LitI4 0
  loc_C59801: LitI4 -1
  loc_C59806: LitI4 1
  loc_C5980B: LitStr "."
  loc_C5980E: LitStr ","
  loc_C59811: LitI4 &H25
  loc_C59816: ILdI4 vectorDatos
  loc_C59819: Ary1LdRfVar
  loc_C5981B: CStrVarVal var_B9C
  loc_C5981F: ImpAdCallI2 Replace(, , , , , )
  loc_C59824: CVarStr var_BAC
  loc_C59827: ConcatVar var_BBC
  loc_C5982B: LitVarStr var_BCC, ","
  loc_C59830: ConcatVar var_BDC
  loc_C59834: LitI4 0
  loc_C59839: LitI4 -1
  loc_C5983E: LitI4 1
  loc_C59843: LitStr "."
  loc_C59846: LitStr ","
  loc_C59849: LitI4 &H26
  loc_C5984E: ILdI4 vectorDatos
  loc_C59851: Ary1LdRfVar
  loc_C59853: CStrVarVal var_BE0
  loc_C59857: ImpAdCallI2 Replace(, , , , , )
  loc_C5985C: CVarStr var_BF0
  loc_C5985F: ConcatVar var_C00
  loc_C59863: LitVarStr var_C10, ","
  loc_C59868: ConcatVar var_C20
  loc_C5986C: LitI4 0
  loc_C59871: LitI4 -1
  loc_C59876: LitI4 1
  loc_C5987B: LitStr "."
  loc_C5987E: LitStr ","
  loc_C59881: LitI4 &H27
  loc_C59886: ILdI4 vectorDatos
  loc_C59889: Ary1LdRfVar
  loc_C5988B: CStrVarVal var_C24
  loc_C5988F: ImpAdCallI2 Replace(, , , , , )
  loc_C59894: CVarStr var_C34
  loc_C59897: ConcatVar var_C44
  loc_C5989B: LitVarStr var_C54, ","
  loc_C598A0: ConcatVar var_C64
  loc_C598A4: LitI4 0
  loc_C598A9: LitI4 -1
  loc_C598AE: LitI4 1
  loc_C598B3: LitStr "."
  loc_C598B6: LitStr ","
  loc_C598B9: LitI4 &H28
  loc_C598BE: ILdI4 vectorDatos
  loc_C598C1: Ary1LdRfVar
  loc_C598C3: CStrVarVal var_C68
  loc_C598C7: ImpAdCallI2 Replace(, , , , , )
  loc_C598CC: CVarStr var_C78
  loc_C598CF: ConcatVar var_C88
  loc_C598D3: LitVarStr var_C98, ","
  loc_C598D8: ConcatVar var_CA8
  loc_C598DC: LitI4 0
  loc_C598E1: LitI4 -1
  loc_C598E6: LitI4 1
  loc_C598EB: LitStr "."
  loc_C598EE: LitStr ","
  loc_C598F1: LitI4 &H29
  loc_C598F6: ILdI4 vectorDatos
  loc_C598F9: Ary1LdRfVar
  loc_C598FB: CStrVarVal var_CAC
  loc_C598FF: ImpAdCallI2 Replace(, , , , , )
  loc_C59904: CVarStr var_CBC
  loc_C59907: ConcatVar var_CCC
  loc_C5990B: LitVarStr var_CDC, ","
  loc_C59910: ConcatVar var_CEC
  loc_C59914: LitI4 0
  loc_C59919: LitI4 -1
  loc_C5991E: LitI4 1
  loc_C59923: LitStr "."
  loc_C59926: LitStr ","
  loc_C59929: LitI4 &H2A
  loc_C5992E: ILdI4 vectorDatos
  loc_C59931: Ary1LdRfVar
  loc_C59933: CStrVarVal var_CF0
  loc_C59937: ImpAdCallI2 Replace(, , , , , )
  loc_C5993C: CVarStr var_D00
  loc_C5993F: ConcatVar var_D10
  loc_C59943: LitVarStr var_D20, ","
  loc_C59948: ConcatVar var_D30
  loc_C5994C: LitI4 0
  loc_C59951: LitI4 -1
  loc_C59956: LitI4 1
  loc_C5995B: LitStr "."
  loc_C5995E: LitStr ","
  loc_C59961: LitI4 &H2B
  loc_C59966: ILdI4 vectorDatos
  loc_C59969: Ary1LdRfVar
  loc_C5996B: CStrVarVal var_D34
  loc_C5996F: ImpAdCallI2 Replace(, , , , , )
  loc_C59974: CVarStr var_D44
  loc_C59977: ConcatVar var_D54
  loc_C5997B: LitVarStr var_D64, ","
  loc_C59980: ConcatVar var_D74
  loc_C59984: LitI4 0
  loc_C59989: LitI4 -1
  loc_C5998E: LitI4 1
  loc_C59993: LitStr "."
  loc_C59996: LitStr ","
  loc_C59999: LitI4 &H2C
  loc_C5999E: ILdI4 vectorDatos
  loc_C599A1: Ary1LdRfVar
  loc_C599A3: CStrVarVal var_D78
  loc_C599A7: ImpAdCallI2 Replace(, , , , , )
  loc_C599AC: CVarStr var_D88
  loc_C599AF: ConcatVar var_D98
  loc_C599B3: LitVarStr var_DA8, ","
  loc_C599B8: ConcatVar var_DB8
  loc_C599BC: LitI4 0
  loc_C599C1: LitI4 -1
  loc_C599C6: LitI4 1
  loc_C599CB: LitStr "."
  loc_C599CE: LitStr ","
  loc_C599D1: LitI4 &H2D
  loc_C599D6: ILdI4 vectorDatos
  loc_C599D9: Ary1LdRfVar
  loc_C599DB: CStrVarVal var_DBC
  loc_C599DF: ImpAdCallI2 Replace(, , , , , )
  loc_C599E4: CVarStr var_DCC
  loc_C599E7: ConcatVar var_DDC
  loc_C599EB: LitVarStr var_DEC, ","
  loc_C599F0: ConcatVar var_DFC
  loc_C599F4: LitI4 0
  loc_C599F9: LitI4 -1
  loc_C599FE: LitI4 1
  loc_C59A03: LitStr "."
  loc_C59A06: LitStr ","
  loc_C59A09: LitI4 &H2E
  loc_C59A0E: ILdI4 vectorDatos
  loc_C59A11: Ary1LdRfVar
  loc_C59A13: CStrVarVal var_E00
  loc_C59A17: ImpAdCallI2 Replace(, , , , , )
  loc_C59A1C: CVarStr var_E10
  loc_C59A1F: ConcatVar var_E20
  loc_C59A23: LitVarStr var_E30, ","
  loc_C59A28: ConcatVar var_E40
  loc_C59A2C: LitI4 &H2F
  loc_C59A31: ILdI4 vectorDatos
  loc_C59A34: Ary1LdRfVar
  loc_C59A36: ConcatVar var_E50
  loc_C59A3A: LitVarStr var_E60, ","
  loc_C59A3F: ConcatVar var_E70
  loc_C59A43: LitI4 &H32
  loc_C59A48: ILdI4 vectorDatos
  loc_C59A4B: Ary1LdRfVar
  loc_C59A4D: ConcatVar var_E80
  loc_C59A51: LitVarStr var_E90, ","
  loc_C59A56: ConcatVar var_EA0
  loc_C59A5A: LitI4 &H33
  loc_C59A5F: ILdI4 vectorDatos
  loc_C59A62: Ary1LdRfVar
  loc_C59A64: ConcatVar var_EB0
  loc_C59A68: LitVarStr var_EC0, ","
  loc_C59A6D: ConcatVar var_ED0
  loc_C59A71: LitI4 &H34
  loc_C59A76: ILdI4 vectorDatos
  loc_C59A79: Ary1LdRfVar
  loc_C59A7B: ConcatVar var_EE0
  loc_C59A7F: LitVarStr var_EF0, ","
  loc_C59A84: ConcatVar var_F00
  loc_C59A88: LitI4 &H36
  loc_C59A8D: ILdI4 vectorDatos
  loc_C59A90: Ary1LdRfVar
  loc_C59A92: ConcatVar var_F10
  loc_C59A96: LitVarStr var_F20, ","
  loc_C59A9B: ConcatVar var_F30
  loc_C59A9F: LitI4 &H37
  loc_C59AA4: ILdI4 vectorDatos
  loc_C59AA7: Ary1LdRfVar
  loc_C59AA9: ConcatVar var_F40
  loc_C59AAD: LitVarStr var_F50, ","
  loc_C59AB2: ConcatVar var_F60
  loc_C59AB6: LitI4 &H38
  loc_C59ABB: ILdI4 vectorDatos
  loc_C59ABE: Ary1LdRfVar
  loc_C59AC0: ConcatVar var_F70
  loc_C59AC4: LitVarStr var_F80, ",'"
  loc_C59AC9: ConcatVar var_F90
  loc_C59ACD: ImpAdLdI4 MemVar_D9302C
  loc_C59AD0: CVarStr var_FA0
  loc_C59AD3: ConcatVar var_FB0
  loc_C59AD7: LitVarStr var_FC0, "');"
  loc_C59ADC: ConcatVar var_FD0
  loc_C59AE0: CStrVarTmp
  loc_C59AE1: FStStr var_98
  loc_C59AE4: FFreeStr var_9C = "": var_C4 = "": var_C8 = "": var_3E8 = "": var_3EC = "": var_4FC = "": var_500 = "": var_AD0 = "": var_AD4 = "": var_B58 = "": var_B9C = "": var_BE0 = "": var_C24 = "": var_C68 = "": var_CAC = "": var_CF0 = "": var_D34 = "": var_D78 = "": var_DBC = ""
  loc_C59B0F: FFreeVar var_F00 = "": var_F10 = "": var_F30 = "": var_F40 = "": var_F60 = "": var_F70 = "": var_F90 = "": var_FB0 = "": var_FD0 = "": var_C44 = "": var_C64 = "": var_C78 = "": var_C88 = "": var_CA8 = "": var_CBC = "": var_CCC = "": var_CEC = "": var_D00 = "": var_D10 = "": var_D30 = "": var_D44 = "": var_D54 = "": var_D74 = "": var_D88 = "": var_D98 = "": var_DB8 = "": var_DCC = "": var_DDC = "": var_DFC = "": var_E10 = "": var_E20 = "": var_E40 = "": var_E50 = "": var_E70 = "": var_E80 = "": var_EA0 = "": var_EB0 = "": var_ED0 = "": var_EE0 = "": var_960 = "": var_970 = "": var_990 = "": var_9A0 = "": var_9C0 = "": var_9D0 = "": var_9F0 = "": var_A00 = "": var_A20 = "": var_A40 = "": var_A60 = "": var_A80 = "": var_ACC = "": var_AE4 = "": var_AF4 = "": var_B14 = "": var_AA0 = "": var_B24 = "": var_B34 = "": var_B54 = "": var_B68 = "": var_B78 = "": var_B98 = "": var_BAC = "": var_BBC = "": var_BDC = "": var_BF0 = "": var_C00 = "": var_C20 = "": var_C34 = "": var_670 = "": var_680 = "": var_6A0 = "": var_6B0 = "": var_6D0 = "": var_6E0 = "": var_700 = "": var_710 = "": var_730 = "": var_740 = "": var_760 = "": var_770 = "": var_790 = "": var_7A0 = "": var_7C0 = "": var_7D0 = "": var_7F0 = "": var_800 = "": var_820 = "": var_830 = "": var_850 = "": var_860 = "": var_880 = "": var_8A0 = "": var_8C0 = "": var_8D0 = "": var_8F0 = "": var_900 = "": var_920 = "": var_940 = "": var_388 = "": var_398 = "": var_3E4 = "": var_3FC = "": var_40C = "": var_42C = "": var_3B8 = "": var_43C = "": var_44C = "": var_46C = "": var_47C = "": var_49C = "": var_4AC = "": var_4F8 = "": var_510 = "": var_520 = "": var_540 = "": var_4CC = "": var_550 = "": var_560 = "": var_580 = "": var_590 = "": var_5B0 = "": var_5C0 = "": var_5E0 = "": var_5F0 = "": var_610 = "": var_620 = "": var_640 = "": var_650 = "": var_BC = "": var_D8 = "": var_E8 = "": var_F8 = "": var_118 = "": var_128 = "": var_148 = "": var_158 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_208 = "": var_218 = "": var_238 = "": var_248 = "": var_268 = "": var_278 = "": var_298 = "": var_2A8 = "": var_2C8 = "": var_2D8 = "": var_2F8 = "": var_308 = "": var_328 = "": var_338 = "": var_358 = ""
  loc_C59C50: ILdRf var_98
  loc_C59C53: LitStr " INSERT INTO freninmu (CodiInmu, NumeFrin, TipoFrin, CodiCall, Nucafrin, Metrfrin, CodiUsua) VALUES ("
  loc_C59C56: ConcatStr
  loc_C59C57: CVarStr var_BC
  loc_C59C5A: LitI4 0
  loc_C59C5F: ILdI4 vectorDatos
  loc_C59C62: Ary1LdRfVar
  loc_C59C64: ConcatVar var_D8
  loc_C59C68: LitVarStr var_AC, ",1,'Frente',"
  loc_C59C6D: ConcatVar var_E8
  loc_C59C71: LitI4 &H1C
  loc_C59C76: ILdI4 vectorDatos
  loc_C59C79: Ary1LdRfVar
  loc_C59C7B: ConcatVar var_F8
  loc_C59C7F: LitVarStr var_108, ","
  loc_C59C84: ConcatVar var_118
  loc_C59C88: LitI4 &H1E
  loc_C59C8D: ILdI4 vectorDatos
  loc_C59C90: Ary1LdRfVar
  loc_C59C92: ConcatVar var_128
  loc_C59C96: LitVarStr var_138, ","
  loc_C59C9B: ConcatVar var_148
  loc_C59C9F: LitI4 0
  loc_C59CA4: LitI4 -1
  loc_C59CA9: LitI4 1
  loc_C59CAE: LitStr "."
  loc_C59CB1: LitStr ","
  loc_C59CB4: FLdFPR8 MetrFrin
  loc_C59CB7: CStrR8
  loc_C59CB9: FStStrNoPop var_9C
  loc_C59CBC: ImpAdCallI2 Replace(, , , , , )
  loc_C59CC1: CVarStr var_158
  loc_C59CC4: ConcatVar var_178
  loc_C59CC8: LitVarStr var_168, ",'"
  loc_C59CCD: ConcatVar var_188
  loc_C59CD1: ImpAdLdI4 MemVar_D9302C
  loc_C59CD4: CVarStr var_198
  loc_C59CD7: ConcatVar var_1A8
  loc_C59CDB: LitVarStr var_1C8, "');"
  loc_C59CE0: ConcatVar var_1B8
  loc_C59CE4: CStrVarTmp
  loc_C59CE5: FStStr var_98
  loc_C59CE8: FFree1Str var_9C
  loc_C59CEB: FFreeVar var_BC = "": var_D8 = "": var_E8 = "": var_F8 = "": var_118 = "": var_128 = "": var_148 = "": var_158 = "": var_178 = "": var_188 = "": var_1A8 = ""
  loc_C59D06: LitI2_Byte 0
  loc_C59D08: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C59D0D: FStFPR8 var_FD8
  loc_C59D10: ILdRf var_98
  loc_C59D13: LitStr " INSERT INTO relacion (CucuPers,CodiOfic,CuenCtct,NumeRela,TipoRela,FealRela,PorcRela,CodiUsua) VALUES ('"
  loc_C59D16: ConcatStr
  loc_C59D17: CVarStr var_BC
  loc_C59D1A: LitI4 1
  loc_C59D1F: ILdI4 vectorDatos
  loc_C59D22: Ary1LdRfVar
  loc_C59D24: ConcatVar var_D8
  loc_C59D28: LitVarStr var_AC, "',1,'"
  loc_C59D2D: ConcatVar var_E8
  loc_C59D31: LitI4 0
  loc_C59D36: ILdI4 vectorDatos
  loc_C59D39: Ary1LdRfVar
  loc_C59D3B: ConcatVar var_F8
  loc_C59D3F: LitVarStr var_108, "',1,'Titular','"
  loc_C59D44: ConcatVar var_118
  loc_C59D48: LitI4 1
  loc_C59D4D: LitI4 1
  loc_C59D52: LitVarStr var_168, "yyyy-mm-dd"
  loc_C59D57: FStVarCopyObj var_148
  loc_C59D5A: FLdRfVar var_148
  loc_C59D5D: FLdFPR8 var_FD8
  loc_C59D60: CVarDate var_128
  loc_C59D64: ImpAdCallI2 Format$(, )
  loc_C59D69: CVarStr var_158
  loc_C59D6C: ConcatVar var_178
  loc_C59D70: LitVarStr var_198, "',100,'"
  loc_C59D75: ConcatVar var_188
  loc_C59D79: ImpAdLdI4 MemVar_D9302C
  loc_C59D7C: CVarStr var_1C8
  loc_C59D7F: ConcatVar var_1A8
  loc_C59D83: LitVarStr var_1F8, "');"
  loc_C59D88: ConcatVar var_1B8
  loc_C59D8C: CStrVarTmp
  loc_C59D8D: FStStr var_98
  loc_C59D90: FFreeVar var_BC = "": var_D8 = "": var_E8 = "": var_F8 = "": var_128 = "": var_148 = "": var_118 = "": var_158 = "": var_178 = "": var_188 = "": var_1A8 = ""
  loc_C59DAB: OnErrorGoto loc_C59DBF
  loc_C59DAE: ILdRf var_98
  loc_C59DB1: Call EjecutarRs2(from_stack_1v)
  loc_C59DB6: LitStr "COMMIT;"
  loc_C59DB9: Call EjecutarRs2(from_stack_1v)
  loc_C59DBE: ExitProcHresult
  loc_C59DBF: LitStr "ROLLBACK;"
  loc_C59DC2: Call EjecutarRs2(from_stack_1v)
  loc_C59DC7: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_C59DCA: LitStr vbNullString
  loc_C59DCD: ConcatStr
  loc_C59DCE: FStStrNoPop var_9C
  loc_C59DD1: ILdRf var_98
  loc_C59DD4: ConcatStr
  loc_C59DD5: FStStrNoPop var_C4
  loc_C59DD8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C59DDD: FFreeStr var_9C = ""
  loc_C59DE4: ExitProcHresult
  loc_C59DE5: FLdPr arg_600
End Sub

Public Sub Modificar(ComuInmu, CodiInmu, DptoInmu, DistInmu, SeccInmu, ManzInmu, ParcInmu, SubpInmu, DigiInmu, NomeInmu, PaprInmu, InscInmu, FojaInmu, TomoInmu, ExpeInmu, FeinInmu, MatrInmu, AsieInmu, FemaInmu) 'C2CB00
  'Data Table: 4F6F78
  loc_C2C254: ILdRf NomeInmu
  loc_C2C257: FStStrCopy var_88
  loc_C2C25A: ILdRf PaprInmu
  loc_C2C25D: FStStrCopy var_8C
  loc_C2C260: ILdRf Modificar0
  loc_C2C263: FStStrCopy var_90
  loc_C2C266: ILdRf Modificar4
  loc_C2C269: FStStrCopy var_94
  loc_C2C26C: ILdRf Modificar8
  loc_C2C26F: FStStrCopy var_98
  loc_C2C272: ILdRf AsieInmu
  loc_C2C275: FStStrCopy var_9C
  loc_C2C278: ILdRf FemaInmu
  loc_C2C27B: FStStrCopy var_A0
  loc_C2C27E: ILdRf arg_5C
  loc_C2C281: FStStrCopy var_A4
  loc_C2C284: ILdRf arg_60
  loc_C2C287: FStStrCopy var_A8
  loc_C2C28A: ILdRf arg_64
  loc_C2C28D: FStStrCopy var_AC
  loc_C2C290: ILdRf arg_68
  loc_C2C293: FStStrCopy var_B0
  loc_C2C296: ILdRf arg_74
  loc_C2C299: FStStrCopy var_B4
  loc_C2C29C: ILdRf arg_7C
  loc_C2C29F: FStStrCopy var_B8
  loc_C2C2A2: ILdRf Me0
  loc_C2C2A5: FStStrCopy var_BC
  loc_C2C2A8: ILdRf Me8
  loc_C2C2AB: FStStrCopy var_C0
  loc_C2C2AE: ILdRf MeC
  loc_C2C2B1: FStStrCopy var_C4
  loc_C2C2B4: ILdRf arg_94
  loc_C2C2B7: FStStrCopy var_C8
  loc_C2C2BA: FLdRfVar var_CC
  loc_C2C2BD: ILdRf CodiInmu
  loc_C2C2C0: from_stack_2v = ValidaClave(from_stack_1v)
  loc_C2C2C5: ILdRf var_CC
  loc_C2C2C8: LitStr vbNullString
  loc_C2C2CB: EqStr
  loc_C2C2CD: FFree1Str var_CC
  loc_C2C2D0: BranchF loc_C2C2DE
  loc_C2C2D3: LitStr "El INMUEBLE NO EXISTE. Reintente..."
  loc_C2C2D6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C2C2DB: Branch loc_C2CAE5
  loc_C2C2DE: FLdRfVar var_98
  loc_C2C2E1: CVarRef
  loc_C2C2E6: ImpAdCallI2 IsDate()
  loc_C2C2EB: FStI2 var_CF6
  loc_C2C2EE: LitI4 1
  loc_C2C2F3: LitI4 1
  loc_C2C2F8: LitVarStr var_18C, "yyyy-mm-dd"
  loc_C2C2FD: FStVarCopyObj var_19C
  loc_C2C300: FLdRfVar var_19C
  loc_C2C303: FLdRfVar var_98
  loc_C2C306: CVarRef
  loc_C2C30B: ImpAdCallI2 Format$(, )
  loc_C2C310: FStStr var_CFC
  loc_C2C313: FLdRfVar var_A0
  loc_C2C316: CVarRef
  loc_C2C31B: ImpAdCallI2 IsDate()
  loc_C2C320: FStI2 var_CFE
  loc_C2C323: LitI4 1
  loc_C2C328: LitI4 1
  loc_C2C32D: LitVarStr var_2E4, "yyyy-mm-dd"
  loc_C2C332: FStVarCopyObj var_2F4
  loc_C2C335: FLdRfVar var_2F4
  loc_C2C338: FLdRfVar var_A0
  loc_C2C33B: CVarRef
  loc_C2C340: ImpAdCallI2 Format$(, )
  loc_C2C345: FStStr var_D04
  loc_C2C348: FLdRfVar var_C8
  loc_C2C34B: CVarRef
  loc_C2C350: ImpAdCallI2 IsDate()
  loc_C2C355: FStI2 var_D06
  loc_C2C358: LitI4 1
  loc_C2C35D: LitI4 1
  loc_C2C362: LitVarStr var_76C, "yyyy-mm-dd"
  loc_C2C367: FStVarCopyObj var_77C
  loc_C2C36A: FLdRfVar var_77C
  loc_C2C36D: FLdRfVar var_C8
  loc_C2C370: CVarRef
  loc_C2C375: ImpAdCallI2 Format$(, )
  loc_C2C37A: FStStr var_D0C
  loc_C2C37D: LitStr "UPDATE inmueble SET ComuInmu = "
  loc_C2C380: FLdUI1
  loc_C2C384: CStrI2
  loc_C2C386: FStStrNoPop var_CC
  loc_C2C389: ConcatStr
  loc_C2C38A: FStStrNoPop var_D0
  loc_C2C38D: LitStr ", DptoInmu = "
  loc_C2C390: ConcatStr
  loc_C2C391: FStStrNoPop var_D4
  loc_C2C394: FLdUI1
  loc_C2C398: CStrI2
  loc_C2C39A: FStStrNoPop var_D8
  loc_C2C39D: ConcatStr
  loc_C2C39E: FStStrNoPop var_DC
  loc_C2C3A1: LitStr ", DistInmu = "
  loc_C2C3A4: ConcatStr
  loc_C2C3A5: FStStrNoPop var_E0
  loc_C2C3A8: FLdUI1
  loc_C2C3AC: CStrI2
  loc_C2C3AE: FStStrNoPop var_E4
  loc_C2C3B1: ConcatStr
  loc_C2C3B2: FStStrNoPop var_E8
  loc_C2C3B5: LitStr ", SeccInmu = "
  loc_C2C3B8: ConcatStr
  loc_C2C3B9: FStStrNoPop var_EC
  loc_C2C3BC: FLdUI1
  loc_C2C3C0: CStrI2
  loc_C2C3C2: FStStrNoPop var_F0
  loc_C2C3C5: ConcatStr
  loc_C2C3C6: FStStrNoPop var_F4
  loc_C2C3C9: LitStr ", ManzInmu = "
  loc_C2C3CC: ConcatStr
  loc_C2C3CD: FStStrNoPop var_F8
  loc_C2C3D0: FLdI2 ManzInmu
  loc_C2C3D3: CStrUI1
  loc_C2C3D5: FStStrNoPop var_FC
  loc_C2C3D8: ConcatStr
  loc_C2C3D9: FStStrNoPop var_100
  loc_C2C3DC: LitStr ", ParcInmu = "
  loc_C2C3DF: ConcatStr
  loc_C2C3E0: FStStrNoPop var_104
  loc_C2C3E3: ILdRf ParcInmu
  loc_C2C3E6: CStrI4
  loc_C2C3E8: FStStrNoPop var_108
  loc_C2C3EB: ConcatStr
  loc_C2C3EC: FStStrNoPop var_10C
  loc_C2C3EF: LitStr ", SubpInmu = "
  loc_C2C3F2: ConcatStr
  loc_C2C3F3: FStStrNoPop var_110
  loc_C2C3F6: FLdI2 SubpInmu
  loc_C2C3F9: CStrUI1
  loc_C2C3FB: FStStrNoPop var_114
  loc_C2C3FE: ConcatStr
  loc_C2C3FF: FStStrNoPop var_118
  loc_C2C402: LitStr ", DigiInmu = "
  loc_C2C405: ConcatStr
  loc_C2C406: FStStrNoPop var_11C
  loc_C2C409: FLdUI1
  loc_C2C40D: CStrI2
  loc_C2C40F: FStStrNoPop var_120
  loc_C2C412: ConcatStr
  loc_C2C413: FStStrNoPop var_124
  loc_C2C416: LitStr ", NomeInmu = '"
  loc_C2C419: ConcatStr
  loc_C2C41A: FStStrNoPop var_128
  loc_C2C41D: ILdRf var_88
  loc_C2C420: ConcatStr
  loc_C2C421: FStStrNoPop var_12C
  loc_C2C424: LitStr "',  PaprInmu = "
  loc_C2C427: ConcatStr
  loc_C2C428: FStStrNoPop var_130
  loc_C2C42B: ILdRf var_8C
  loc_C2C42E: ConcatStr
  loc_C2C42F: FStStrNoPop var_134
  loc_C2C432: LitStr ", InscInmu = "
  loc_C2C435: ConcatStr
  loc_C2C436: FStStrNoPop var_138
  loc_C2C439: ILdRf InscInmu
  loc_C2C43C: CStrI4
  loc_C2C43E: FStStrNoPop var_13C
  loc_C2C441: ConcatStr
  loc_C2C442: FStStrNoPop var_140
  loc_C2C445: LitStr ", FojaInmu = "
  loc_C2C448: ConcatStr
  loc_C2C449: FStStrNoPop var_144
  loc_C2C44C: FLdI2 FojaInmu
  loc_C2C44F: CStrUI1
  loc_C2C451: FStStrNoPop var_148
  loc_C2C454: ConcatStr
  loc_C2C455: FStStrNoPop var_14C
  loc_C2C458: LitStr ", TomoInmu = '"
  loc_C2C45B: ConcatStr
  loc_C2C45C: FStStrNoPop var_150
  loc_C2C45F: ILdRf var_90
  loc_C2C462: ConcatStr
  loc_C2C463: FStStrNoPop var_154
  loc_C2C466: LitStr "', ExpeInmu = '"
  loc_C2C469: ConcatStr
  loc_C2C46A: FStStrNoPop var_158
  loc_C2C46D: ILdRf var_94
  loc_C2C470: ConcatStr
  loc_C2C471: FStStrNoPop var_15C
  loc_C2C474: LitStr "', FeinInmu  = "
  loc_C2C477: ConcatStr
  loc_C2C478: CVarStr var_204
  loc_C2C47B: LitVarStr var_1D4, "Null"
  loc_C2C480: FStVarCopyObj var_1E4
  loc_C2C483: FLdRfVar var_1E4
  loc_C2C486: LitStr "'"
  loc_C2C489: FLdZeroAd var_CFC
  loc_C2C48C: FStStrNoPop var_1A0
  loc_C2C48F: ConcatStr
  loc_C2C490: FStStrNoPop var_1A4
  loc_C2C493: LitStr "'"
  loc_C2C496: ConcatStr
  loc_C2C497: CVarStr var_1C4
  loc_C2C49A: FLdI2 var_CF6
  loc_C2C49D: CVarBoolI2 var_1B4
  loc_C2C4A1: FLdRfVar var_1F4
  loc_C2C4A4: ImpAdCallFPR4  = IIf(, , )
  loc_C2C4A9: FLdRfVar var_1F4
  loc_C2C4AC: ConcatVar var_214
  loc_C2C4B0: LitVarStr var_224, ", MatrInmu = "
  loc_C2C4B5: ConcatVar var_234
  loc_C2C4B9: ILdRf ModificarC
  loc_C2C4BC: CVarI4
  loc_C2C4C0: ConcatVar var_254
  loc_C2C4C4: LitVarStr var_264, ", AsieInmu = '"
  loc_C2C4C9: ConcatVar var_274
  loc_C2C4CD: ILdRf var_9C
  loc_C2C4D0: CVarStr var_284
  loc_C2C4D3: ConcatVar var_294
  loc_C2C4D7: LitVarStr var_2A4, "', FemaInmu = "
  loc_C2C4DC: ConcatVar var_2B4
  loc_C2C4E0: LitVarStr var_32C, "Null"
  loc_C2C4E5: FStVarCopyObj var_33C
  loc_C2C4E8: FLdRfVar var_33C
  loc_C2C4EB: LitStr "'"
  loc_C2C4EE: FLdZeroAd var_D04
  loc_C2C4F1: FStStrNoPop var_2F8
  loc_C2C4F4: ConcatStr
  loc_C2C4F5: FStStrNoPop var_2FC
  loc_C2C4F8: LitStr "'"
  loc_C2C4FB: ConcatStr
  loc_C2C4FC: CVarStr var_31C
  loc_C2C4FF: FLdI2 var_CFE
  loc_C2C502: CVarBoolI2 var_30C
  loc_C2C506: FLdRfVar var_34C
  loc_C2C509: ImpAdCallFPR4  = IIf(, , )
  loc_C2C50E: FLdRfVar var_34C
  loc_C2C511: ConcatVar var_35C
  loc_C2C515: LitVarStr var_36C, ", MensInmu = "
  loc_C2C51A: ConcatVar var_37C
  loc_C2C51E: ILdRf arg_58
  loc_C2C521: CVarI4
  loc_C2C525: ConcatVar var_39C
  loc_C2C529: LitVarStr var_3AC, ", ManpInmu = '"
  loc_C2C52E: ConcatVar var_3BC
  loc_C2C532: ILdRf var_A4
  loc_C2C535: CVarStr var_3CC
  loc_C2C538: ConcatVar var_3DC
  loc_C2C53C: LitVarStr var_3EC, "', LoteInmu = '"
  loc_C2C541: ConcatVar var_3FC
  loc_C2C545: ILdRf var_A8
  loc_C2C548: CVarStr var_40C
  loc_C2C54B: ConcatVar var_41C
  loc_C2C54F: LitVarStr var_42C, "', PoliInmu = '"
  loc_C2C554: ConcatVar var_43C
  loc_C2C558: ILdRf var_AC
  loc_C2C55B: CVarStr var_44C
  loc_C2C55E: ConcatVar var_45C
  loc_C2C562: LitVarStr var_46C, "', ObsaInmu = '"
  loc_C2C567: ConcatVar var_47C
  loc_C2C56B: ILdRf var_B0
  loc_C2C56E: CVarStr var_48C
  loc_C2C571: ConcatVar var_49C
  loc_C2C575: LitVarStr var_4AC, "', CausInmu = "
  loc_C2C57A: ConcatVar var_4BC
  loc_C2C57E: ILdRf arg_6C
  loc_C2C581: CVarI4
  loc_C2C585: ConcatVar var_4DC
  loc_C2C589: LitVarStr var_4EC, ", PapaInmu = "
  loc_C2C58E: ConcatVar var_4FC
  loc_C2C592: ILdRf arg_70
  loc_C2C595: CVarI4
  loc_C2C599: ConcatVar var_51C
  loc_C2C59D: LitVarStr var_52C, ", ObseInmu = '"
  loc_C2C5A2: ConcatVar var_53C
  loc_C2C5A6: ILdRf var_B4
  loc_C2C5A9: CVarStr var_54C
  loc_C2C5AC: ConcatVar var_55C
  loc_C2C5B0: LitVarStr var_56C, "', CodiCall = "
  loc_C2C5B5: ConcatVar var_57C
  loc_C2C5B9: FLdI2 arg_78
  loc_C2C5BC: CVarI2 var_58C
  loc_C2C5BF: ConcatVar var_59C
  loc_C2C5C3: LitVarStr var_5AC, ", NucaInmu = '"
  loc_C2C5C8: ConcatVar var_5BC
  loc_C2C5CC: ILdRf var_B8
  loc_C2C5CF: CVarStr var_5CC
  loc_C2C5D2: ConcatVar var_5DC
  loc_C2C5D6: LitVarStr var_5EC, "', UbicInmu = '"
  loc_C2C5DB: ConcatVar var_5FC
  loc_C2C5DF: ILdRf var_BC
  loc_C2C5E2: CVarStr var_60C
  loc_C2C5E5: ConcatVar var_61C
  loc_C2C5E9: LitVarStr var_62C, "', CodiBarr = "
  loc_C2C5EE: ConcatVar var_63C
  loc_C2C5F2: FLdI2 Me4
  loc_C2C5F5: CVarI2 var_64C
  loc_C2C5F8: ConcatVar var_65C
  loc_C2C5FC: LitVarStr var_66C, ", MansInmu = '"
  loc_C2C601: ConcatVar var_67C
  loc_C2C605: ILdRf var_C0
  loc_C2C608: CVarStr var_68C
  loc_C2C60B: ConcatVar var_69C
  loc_C2C60F: LitVarStr var_6AC, "', CasaInmu = '"
  loc_C2C614: ConcatVar var_6BC
  loc_C2C618: ILdRf var_C4
  loc_C2C61B: CVarStr var_6CC
  loc_C2C61E: ConcatVar var_6DC
  loc_C2C622: LitVarStr var_6EC, "', CodiLoca = "
  loc_C2C627: ConcatVar var_6FC
  loc_C2C62B: FLdI2 arg_90
  loc_C2C62E: CVarI2 var_70C
  loc_C2C631: ConcatVar var_71C
  loc_C2C635: LitVarStr var_72C, ", FeesInmu = "
  loc_C2C63A: ConcatVar var_73C
  loc_C2C63E: LitVarStr var_7B4, "Null"
  loc_C2C643: FStVarCopyObj var_7C4
  loc_C2C646: FLdRfVar var_7C4
  loc_C2C649: LitStr "'"
  loc_C2C64C: FLdZeroAd var_D0C
  loc_C2C64F: FStStrNoPop var_780
  loc_C2C652: ConcatStr
  loc_C2C653: FStStrNoPop var_784
  loc_C2C656: LitStr "'"
  loc_C2C659: ConcatStr
  loc_C2C65A: CVarStr var_7A4
  loc_C2C65D: FLdI2 var_D06
  loc_C2C660: CVarBoolI2 var_794
  loc_C2C664: FLdRfVar var_7D4
  loc_C2C667: ImpAdCallFPR4  = IIf(, , )
  loc_C2C66C: FLdRfVar var_7D4
  loc_C2C66F: ConcatVar var_7E4
  loc_C2C673: LitVarStr var_7F4, ", SupeInmu = "
  loc_C2C678: ConcatVar var_804
  loc_C2C67C: LitI4 0
  loc_C2C681: LitI4 -1
  loc_C2C686: LitI4 1
  loc_C2C68B: LitStr "."
  loc_C2C68E: LitStr ","
  loc_C2C691: FLdFPR8 arg_98
  loc_C2C694: CStrR8
  loc_C2C696: FStStrNoPop var_808
  loc_C2C699: ImpAdCallI2 Replace(, , , , , )
  loc_C2C69E: CVarStr var_818
  loc_C2C6A1: ConcatVar var_828
  loc_C2C6A5: LitVarStr var_838, ", SutiInmu = "
  loc_C2C6AA: ConcatVar var_848
  loc_C2C6AE: LitI4 0
  loc_C2C6B3: LitI4 -1
  loc_C2C6B8: LitI4 1
  loc_C2C6BD: LitStr "."
  loc_C2C6C0: LitStr ","
  loc_C2C6C3: FLdFPR8 arg_A0
  loc_C2C6C6: CStrR8
  loc_C2C6C8: FStStrNoPop var_84C
  loc_C2C6CB: ImpAdCallI2 Replace(, , , , , )
  loc_C2C6D0: CVarStr var_85C
  loc_C2C6D3: ConcatVar var_86C
  loc_C2C6D7: LitVarStr var_87C, ", SucuInmu = "
  loc_C2C6DC: ConcatVar var_88C
  loc_C2C6E0: LitI4 0
  loc_C2C6E5: LitI4 -1
  loc_C2C6EA: LitI4 1
  loc_C2C6EF: LitStr "."
  loc_C2C6F2: LitStr ","
  loc_C2C6F5: FLdFPR8 arg_A8
  loc_C2C6F8: CStrR8
  loc_C2C6FA: FStStrNoPop var_890
  loc_C2C6FD: ImpAdCallI2 Replace(, , , , , )
  loc_C2C702: CVarStr var_8A0
  loc_C2C705: ConcatVar var_8B0
  loc_C2C709: LitVarStr var_8C0, ", SudeInmu = "
  loc_C2C70E: ConcatVar var_8D0
  loc_C2C712: LitI4 0
  loc_C2C717: LitI4 -1
  loc_C2C71C: LitI4 1
  loc_C2C721: LitStr "."
  loc_C2C724: LitStr ","
  loc_C2C727: FLdFPR8 arg_B0
  loc_C2C72A: CStrR8
  loc_C2C72C: FStStrNoPop var_8D4
  loc_C2C72F: ImpAdCallI2 Replace(, , , , , )
  loc_C2C734: CVarStr var_8E4
  loc_C2C737: ConcatVar var_8F4
  loc_C2C73B: LitVarStr var_904, ", SuscInmu = "
  loc_C2C740: ConcatVar var_914
  loc_C2C744: LitI4 0
  loc_C2C749: LitI4 -1
  loc_C2C74E: LitI4 1
  loc_C2C753: LitStr "."
  loc_C2C756: LitStr ","
  loc_C2C759: FLdFPR8 arg_B8
  loc_C2C75C: CStrR8
  loc_C2C75E: FStStrNoPop var_918
  loc_C2C761: ImpAdCallI2 Replace(, , , , , )
  loc_C2C766: CVarStr var_928
  loc_C2C769: ConcatVar var_938
  loc_C2C76D: LitVarStr var_948, ", SucmInmu = "
  loc_C2C772: ConcatVar var_958
  loc_C2C776: LitI4 0
  loc_C2C77B: LitI4 -1
  loc_C2C780: LitI4 1
  loc_C2C785: LitStr "."
  loc_C2C788: LitStr ","
  loc_C2C78B: FLdFPR8 ComuInmu0
  loc_C2C78E: CStrR8
  loc_C2C790: FStStrNoPop var_95C
  loc_C2C793: ImpAdCallI2 Replace(, , , , , )
  loc_C2C798: CVarStr var_96C
  loc_C2C79B: ConcatVar var_97C
  loc_C2C79F: LitVarStr var_98C, ", PohoInmu = "
  loc_C2C7A4: ConcatVar var_99C
  loc_C2C7A8: LitI4 0
  loc_C2C7AD: LitI4 -1
  loc_C2C7B2: LitI4 1
  loc_C2C7B7: LitStr "."
  loc_C2C7BA: LitStr ","
  loc_C2C7BD: FLdFPR8 ComuInmu8
  loc_C2C7C0: CStrR8
  loc_C2C7C2: FStStrNoPop var_9A0
  loc_C2C7C5: ImpAdCallI2 Replace(, , , , , )
  loc_C2C7CA: CVarStr var_9B0
  loc_C2C7CD: ConcatVar var_9C0
  loc_C2C7D1: LitVarStr var_9D0, ", SuprInmu = "
  loc_C2C7D6: ConcatVar var_9E0
  loc_C2C7DA: LitI4 0
  loc_C2C7DF: LitI4 -1
  loc_C2C7E4: LitI4 1
  loc_C2C7E9: LitStr "."
  loc_C2C7EC: LitStr ","
  loc_C2C7EF: FLdFPR8 arg_D0
  loc_C2C7F2: CStrR8
  loc_C2C7F4: FStStrNoPop var_9E4
  loc_C2C7F7: ImpAdCallI2 Replace(, , , , , )
  loc_C2C7FC: CVarStr var_9F4
  loc_C2C7FF: ConcatVar var_A04
  loc_C2C803: LitVarStr var_A14, ", SusuInmu = "
  loc_C2C808: ConcatVar var_A24
  loc_C2C80C: LitI4 0
  loc_C2C811: LitI4 -1
  loc_C2C816: LitI4 1
  loc_C2C81B: LitStr "."
  loc_C2C81E: LitStr ","
  loc_C2C821: FLdFPR8 arg_D8
  loc_C2C824: CStrR8
  loc_C2C826: FStStrNoPop var_A28
  loc_C2C829: ImpAdCallI2 Replace(, , , , , )
  loc_C2C82E: CVarStr var_A38
  loc_C2C831: ConcatVar var_A48
  loc_C2C835: LitVarStr var_A58, ", SubaInmu = "
  loc_C2C83A: ConcatVar var_A68
  loc_C2C83E: LitI4 0
  loc_C2C843: LitI4 -1
  loc_C2C848: LitI4 1
  loc_C2C84D: LitStr "."
  loc_C2C850: LitStr ","
  loc_C2C853: FLdFPR8 arg_E0
  loc_C2C856: CStrR8
  loc_C2C858: FStStrNoPop var_A6C
  loc_C2C85B: ImpAdCallI2 Replace(, , , , , )
  loc_C2C860: CVarStr var_A7C
  loc_C2C863: ConcatVar var_A8C
  loc_C2C867: LitVarStr var_A9C, ", SuenInmu = "
  loc_C2C86C: ConcatVar var_AAC
  loc_C2C870: LitI4 0
  loc_C2C875: LitI4 -1
  loc_C2C87A: LitI4 1
  loc_C2C87F: LitStr "."
  loc_C2C882: LitStr ","
  loc_C2C885: FLdFPR8 arg_E8
  loc_C2C888: CStrR8
  loc_C2C88A: FStStrNoPop var_AB0
  loc_C2C88D: ImpAdCallI2 Replace(, , , , , )
  loc_C2C892: CVarStr var_AC0
  loc_C2C895: ConcatVar var_AD0
  loc_C2C899: LitVarStr var_AE0, ", CodiEsin = "
  loc_C2C89E: ConcatVar var_AF0
  loc_C2C8A2: FLdI2 arg_F0
  loc_C2C8A5: CVarI2 var_B00
  loc_C2C8A8: ConcatVar var_B10
  loc_C2C8AC: LitVarStr var_B20, ", EsquInmu = "
  loc_C2C8B1: ConcatVar var_B30
  loc_C2C8B5: FLdUI1
  loc_C2C8B9: CVarUI1
  loc_C2C8BD: ConcatVar var_B50
  loc_C2C8C1: LitVarStr var_B60, ", CultInmu = "
  loc_C2C8C6: ConcatVar var_B70
  loc_C2C8CA: FLdUI1
  loc_C2C8CE: CVarUI1
  loc_C2C8D2: ConcatVar var_B90
  loc_C2C8D6: LitVarStr var_BA0, ", PeriInmu = "
  loc_C2C8DB: ConcatVar var_BB0
  loc_C2C8DF: FLdI2 arg_FC
  loc_C2C8E2: CVarI2 var_BC0
  loc_C2C8E5: ConcatVar var_BD0
  loc_C2C8E9: LitVarStr var_BE0, ", BimeInmu = "
  loc_C2C8EE: ConcatVar var_BF0
  loc_C2C8F2: FLdI2 CodiInmu0
  loc_C2C8F5: CVarI2 var_C00
  loc_C2C8F8: ConcatVar var_C10
  loc_C2C8FC: LitVarStr var_C20, ", BonoInmu = "
  loc_C2C901: ConcatVar var_C30
  loc_C2C905: FLdUI1
  loc_C2C909: CVarUI1
  loc_C2C90D: ConcatVar var_C50
  loc_C2C911: LitVarStr var_C60, ", ModiUsua = '"
  loc_C2C916: ConcatVar var_C70
  loc_C2C91A: ImpAdLdI4 MemVar_D9302C
  loc_C2C91D: CVarStr var_C80
  loc_C2C920: ConcatVar var_C90
  loc_C2C924: LitVarStr var_CA0, "', ModiFeho = now() WHERE CodiInmu = "
  loc_C2C929: ConcatVar var_CB0
  loc_C2C92D: ILdRf CodiInmu
  loc_C2C930: CVarI4
  loc_C2C934: ConcatVar var_CD0
  loc_C2C938: LitVarStr var_CE0, ";"
  loc_C2C93D: ConcatVar var_CF0
  loc_C2C941: CStrVarVal var_CF4
  loc_C2C945: Call EjecutarRs2(from_stack_1v)
  loc_C2C94A: FFreeStr var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_1A0 = "": var_1A4 = "": var_2F8 = "": var_2FC = "": var_780 = "": var_784 = "": var_808 = "": var_84C = "": var_890 = "": var_8D4 = "": var_918 = "": var_95C = "": var_9A0 = "": var_9E4 = "": var_A28 = "": var_A6C = "": var_AB0 = "": var_CF4 = "": var_CFC = "": var_D04 = "": var_D0C = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_C2C9C1: FFreeVar var_B30 = "": var_B50 = "": var_B70 = "": var_B90 = "": var_BB0 = "": var_BD0 = "": var_BF0 = "": var_C10 = "": var_C30 = "": var_C50 = "": var_C70 = "": var_C90 = "": var_CB0 = "": var_CD0 = "": var_CF0 = "": var_86C = "": var_88C = "": var_8A0 = "": var_8B0 = "": var_8D0 = "": var_8E4 = "": var_8F4 = "": var_914 = "": var_928 = "": var_938 = "": var_958 = "": var_96C = "": var_97C = "": var_99C = "": var_9B0 = "": var_9C0 = "": var_9E0 = "": var_9F4 = "": var_A04 = "": var_A24 = "": var_A38 = "": var_A48 = "": var_A68 = "": var_A7C = "": var_A8C = "": var_AAC = "": var_AC0 = "": var_AD0 = "": var_AF0 = "": var_B10 = "": var_4FC = "": var_51C = "": var_53C = "": var_55C = "": var_57C = "": var_59C = "": var_5BC = "": var_5DC = "": var_5FC = "": var_61C = "": var_63C = "": var_65C = "": var_67C = "": var_69C = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_77C = "": var_794 = "": var_7A4 = "": var_7C4 = "": var_73C = "": var_7D4 = "": var_7E4 = "": var_804 = "": var_818 = "": var_828 = "": var_848 = "": var_85C = "": var_19C = "": var_1B4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = "": var_274 = "": var_294 = "": var_2F4 = "": var_30C = "": var_31C = "": var_33C = "": var_2B4 = "": var_34C = "": var_35C = "": var_37C = "": var_39C = "": var_3BC = "": var_3DC = "": var_3FC = "": var_41C = "": var_43C = "": var_45C = "": var_47C = "": var_49C = "": var_4BC = ""
  loc_C2CA96: LitStr "UPDATE freninmu SET CodiCall = "
  loc_C2CA99: FLdI2 arg_78
  loc_C2CA9C: CStrUI1
  loc_C2CA9E: FStStrNoPop var_CC
  loc_C2CAA1: ConcatStr
  loc_C2CAA2: FStStrNoPop var_D0
  loc_C2CAA5: LitStr ", NucaFrin = '"
  loc_C2CAA8: ConcatStr
  loc_C2CAA9: FStStrNoPop var_D4
  loc_C2CAAC: ILdRf var_B8
  loc_C2CAAF: ConcatStr
  loc_C2CAB0: FStStrNoPop var_D8
  loc_C2CAB3: LitStr "' WHERE CodiInmu = "
  loc_C2CAB6: ConcatStr
  loc_C2CAB7: FStStrNoPop var_DC
  loc_C2CABA: ILdRf CodiInmu
  loc_C2CABD: CStrI4
  loc_C2CABF: FStStrNoPop var_E0
  loc_C2CAC2: ConcatStr
  loc_C2CAC3: FStStrNoPop var_E4
  loc_C2CAC6: LitStr " AND  NumeFrin = 1"
  loc_C2CAC9: ConcatStr
  loc_C2CACA: FStStrNoPop var_E8
  loc_C2CACD: Call EjecutarRs2(from_stack_1v)
  loc_C2CAD2: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_C2CAE5: Call Requery()
  loc_C2CAEA: LitI2_Byte 0
  loc_C2CAEC: ILdRf CodiInmu
  loc_C2CAEF: CStrI4
  loc_C2CAF1: FStStrNoPop var_CC
  loc_C2CAF4: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_C2CAF9: FFree1Str var_CC
  loc_C2CAFC: ExitProcHresult
End Sub

Public Sub ModificarDomicilioPostal(CodiInmu, CocpInmu, DecpInmu, NupoInmu, CobpInmu, DebpInmu, MapoInmu, CapoInmu, UbpoInmu, ColpInmu, DelpInmu, CoppInmu, CodiRuta) 'B08D78
  'Data Table: 4F6F78
  loc_B08BE8: ILdRf DecpInmu
  loc_B08BEB: FStStrCopy var_88
  loc_B08BEE: ILdRf DebpInmu
  loc_B08BF1: FStStrCopy var_8C
  loc_B08BF4: ILdRf MapoInmu
  loc_B08BF7: FStStrCopy var_90
  loc_B08BFA: ILdRf CapoInmu
  loc_B08BFD: FStStrCopy var_94
  loc_B08C00: ILdRf UbpoInmu
  loc_B08C03: FStStrCopy var_98
  loc_B08C06: ILdRf DelpInmu
  loc_B08C09: FStStrCopy var_9C
  loc_B08C0C: ILdRf CoppInmu
  loc_B08C0F: FStStrCopy var_A0
  loc_B08C12: FLdRfVar var_A4
  loc_B08C15: ILdRf CodiInmu
  loc_B08C18: from_stack_2v = ValidaClave(from_stack_1v)
  loc_B08C1D: ILdRf var_A4
  loc_B08C20: LitStr vbNullString
  loc_B08C23: EqStr
  loc_B08C25: FFree1Str var_A4
  loc_B08C28: BranchF loc_B08C36
  loc_B08C2B: LitStr "El INMUEBLE NO EXISTE. Reintente..."
  loc_B08C2E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B08C33: Branch loc_B08D5E
  loc_B08C36: LitStr " UPDATE inmueble SET CocpInmu = "
  loc_B08C39: ILdRf CocpInmu
  loc_B08C3C: CStrI4
  loc_B08C3E: FStStrNoPop var_A4
  loc_B08C41: ConcatStr
  loc_B08C42: FStStrNoPop var_A8
  loc_B08C45: LitStr ", DecpInmu = '"
  loc_B08C48: ConcatStr
  loc_B08C49: FStStrNoPop var_AC
  loc_B08C4C: ILdRf var_88
  loc_B08C4F: ConcatStr
  loc_B08C50: FStStrNoPop var_B0
  loc_B08C53: LitStr "', NupoInmu = "
  loc_B08C56: ConcatStr
  loc_B08C57: FStStrNoPop var_B4
  loc_B08C5A: FLdI2 NupoInmu
  loc_B08C5D: CStrUI1
  loc_B08C5F: FStStrNoPop var_B8
  loc_B08C62: ConcatStr
  loc_B08C63: FStStrNoPop var_BC
  loc_B08C66: LitStr ", CobpInmu = "
  loc_B08C69: ConcatStr
  loc_B08C6A: FStStrNoPop var_C0
  loc_B08C6D: FLdI2 CobpInmu
  loc_B08C70: CStrUI1
  loc_B08C72: FStStrNoPop var_C4
  loc_B08C75: ConcatStr
  loc_B08C76: FStStrNoPop var_C8
  loc_B08C79: LitStr ", DebpInmu = '"
  loc_B08C7C: ConcatStr
  loc_B08C7D: FStStrNoPop var_CC
  loc_B08C80: ILdRf var_8C
  loc_B08C83: ConcatStr
  loc_B08C84: FStStrNoPop var_D0
  loc_B08C87: LitStr "', MapoInmu = '"
  loc_B08C8A: ConcatStr
  loc_B08C8B: FStStrNoPop var_D4
  loc_B08C8E: ILdRf var_90
  loc_B08C91: ConcatStr
  loc_B08C92: FStStrNoPop var_D8
  loc_B08C95: LitStr "', CapoInmu = '"
  loc_B08C98: ConcatStr
  loc_B08C99: FStStrNoPop var_DC
  loc_B08C9C: ILdRf var_94
  loc_B08C9F: ConcatStr
  loc_B08CA0: FStStrNoPop var_E0
  loc_B08CA3: LitStr "', UbpoInmu = '"
  loc_B08CA6: ConcatStr
  loc_B08CA7: FStStrNoPop var_E4
  loc_B08CAA: ILdRf var_98
  loc_B08CAD: ConcatStr
  loc_B08CAE: FStStrNoPop var_E8
  loc_B08CB1: LitStr "', ColpInmu = "
  loc_B08CB4: ConcatStr
  loc_B08CB5: FStStrNoPop var_EC
  loc_B08CB8: FLdI2 ColpInmu
  loc_B08CBB: CStrUI1
  loc_B08CBD: FStStrNoPop var_F0
  loc_B08CC0: ConcatStr
  loc_B08CC1: FStStrNoPop var_F4
  loc_B08CC4: LitStr ", DelpInmu = '"
  loc_B08CC7: ConcatStr
  loc_B08CC8: FStStrNoPop var_F8
  loc_B08CCB: ILdRf var_9C
  loc_B08CCE: ConcatStr
  loc_B08CCF: FStStrNoPop var_FC
  loc_B08CD2: LitStr "', CoppInmu = '"
  loc_B08CD5: ConcatStr
  loc_B08CD6: FStStrNoPop var_100
  loc_B08CD9: ILdRf var_A0
  loc_B08CDC: ConcatStr
  loc_B08CDD: FStStrNoPop var_104
  loc_B08CE0: LitStr "', CodiRuta = "
  loc_B08CE3: ConcatStr
  loc_B08CE4: FStStrNoPop var_108
  loc_B08CE7: FLdI2 CodiRuta
  loc_B08CEA: CStrUI1
  loc_B08CEC: FStStrNoPop var_10C
  loc_B08CEF: ConcatStr
  loc_B08CF0: FStStrNoPop var_110
  loc_B08CF3: LitStr ", ModiUsua = '"
  loc_B08CF6: ConcatStr
  loc_B08CF7: FStStrNoPop var_114
  loc_B08CFA: ImpAdLdI4 MemVar_D9302C
  loc_B08CFD: ConcatStr
  loc_B08CFE: FStStrNoPop var_118
  loc_B08D01: LitStr "', ModiFeho = now() WHERE CodiInmu = "
  loc_B08D04: ConcatStr
  loc_B08D05: FStStrNoPop var_11C
  loc_B08D08: ILdRf CodiInmu
  loc_B08D0B: CStrI4
  loc_B08D0D: FStStrNoPop var_120
  loc_B08D10: ConcatStr
  loc_B08D11: FStStrNoPop var_124
  loc_B08D14: Call EjecutarRs2(from_stack_1v)
  loc_B08D19: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_B08D5E: Call Requery()
  loc_B08D63: LitI2_Byte 0
  loc_B08D65: ILdRf CodiInmu
  loc_B08D68: CStrI4
  loc_B08D6A: FStStrNoPop var_A4
  loc_B08D6D: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_B08D72: FFree1Str var_A4
  loc_B08D75: ExitProcHresult
End Sub

Public Sub ModificarExcencion(CodiInmu, CodiExce, FfexInmu, ExexInmu, MoexInmu) 'AE143C
  'Data Table: 4F6F78
  loc_AE1320: ILdRf FfexInmu
  loc_AE1323: FStStrCopy var_88
  loc_AE1326: ILdRf ExexInmu
  loc_AE1329: FStStrCopy var_8C
  loc_AE132C: ILdRf MoexInmu
  loc_AE132F: FStStrCopy var_90
  loc_AE1332: FLdRfVar var_88
  loc_AE1335: CVarRef
  loc_AE133A: ImpAdCallI2 IsDate()
  loc_AE133F: FStI2 var_216
  loc_AE1342: LitI4 1
  loc_AE1347: LitI4 1
  loc_AE134C: LitVarStr var_C8, "yyyy-mm-dd"
  loc_AE1351: FStVarCopyObj var_D8
  loc_AE1354: FLdRfVar var_D8
  loc_AE1357: FLdRfVar var_88
  loc_AE135A: CVarRef
  loc_AE135F: ImpAdCallI2 Format$(, )
  loc_AE1364: FStStr var_21C
  loc_AE1367: LitStr "UPDATE inmueble SET CodiExce = "
  loc_AE136A: FLdI2 CodiExce
  loc_AE136D: CStrUI1
  loc_AE136F: FStStrNoPop var_94
  loc_AE1372: ConcatStr
  loc_AE1373: FStStrNoPop var_98
  loc_AE1376: LitStr ", FfexInmu = "
  loc_AE1379: ConcatStr
  loc_AE137A: CVarStr var_140
  loc_AE137D: LitVarStr var_110, "Null"
  loc_AE1382: FStVarCopyObj var_120
  loc_AE1385: FLdRfVar var_120
  loc_AE1388: LitStr "'"
  loc_AE138B: FLdZeroAd var_21C
  loc_AE138E: FStStrNoPop var_DC
  loc_AE1391: ConcatStr
  loc_AE1392: FStStrNoPop var_E0
  loc_AE1395: LitStr "'"
  loc_AE1398: ConcatStr
  loc_AE1399: CVarStr var_100
  loc_AE139C: FLdI2 var_216
  loc_AE139F: CVarBoolI2 var_F0
  loc_AE13A3: FLdRfVar var_130
  loc_AE13A6: ImpAdCallFPR4  = IIf(, , )
  loc_AE13AB: FLdRfVar var_130
  loc_AE13AE: ConcatVar var_150
  loc_AE13B2: LitVarStr var_160, ", ExexInmu = '"
  loc_AE13B7: ConcatVar var_170
  loc_AE13BB: ILdRf var_8C
  loc_AE13BE: CVarStr var_180
  loc_AE13C1: ConcatVar var_190
  loc_AE13C5: LitVarStr var_1A0, "', MoexInmu = '"
  loc_AE13CA: ConcatVar var_1B0
  loc_AE13CE: ILdRf var_90
  loc_AE13D1: CVarStr var_1C0
  loc_AE13D4: ConcatVar var_1D0
  loc_AE13D8: LitVarStr var_1E0, "' WHERE CodiInmu = "
  loc_AE13DD: ConcatVar var_1F0
  loc_AE13E1: ILdRf CodiInmu
  loc_AE13E4: CVarI4
  loc_AE13E8: ConcatVar var_210
  loc_AE13EC: CStrVarVal var_214
  loc_AE13F0: Call EjecutarRs2(from_stack_1v)
  loc_AE13F5: FFreeStr var_94 = "": var_98 = "": var_DC = "": var_E0 = "": var_214 = ""
  loc_AE1404: FFreeVar var_D8 = "": var_F0 = "": var_100 = "": var_120 = "": var_140 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = ""
  loc_AE1421: Call Requery()
  loc_AE1426: LitI2_Byte 0
  loc_AE1428: ILdRf CodiInmu
  loc_AE142B: CStrI4
  loc_AE142D: FStStrNoPop var_94
  loc_AE1430: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_AE1435: FFree1Str var_94
  loc_AE1438: ExitProcHresult
  loc_AE1439: CVarCy arg_379
End Sub

Public Sub ModificarDescuentoPorBono(Sector, Cuenta, NudoPers, Bono, doImpoBono) 'AFBDCC
  'Data Table: 4F6F78
  loc_AFBC10: ILdRf Sector
  loc_AFBC13: FStStrCopy var_88
  loc_AFBC16: ILdRf var_88
  loc_AFBC19: LitStr "Inmueble"
  loc_AFBC1C: EqStr
  loc_AFBC1E: BranchF loc_AFBCA7
  loc_AFBC21: LitStr "UPDATE inmueble SET BonoInmu = "
  loc_AFBC24: FLdUI1
  loc_AFBC28: CStrI2
  loc_AFBC2A: FStStrNoPop var_8C
  loc_AFBC2D: ConcatStr
  loc_AFBC2E: FStStrNoPop var_90
  loc_AFBC31: LitStr ", NudoBono = "
  loc_AFBC34: ConcatStr
  loc_AFBC35: FStStrNoPop var_94
  loc_AFBC38: ILdRf NudoPers
  loc_AFBC3B: CStrI4
  loc_AFBC3D: FStStrNoPop var_98
  loc_AFBC40: ConcatStr
  loc_AFBC41: FStStrNoPop var_9C
  loc_AFBC44: LitStr ", ImboInmu = "
  loc_AFBC47: ConcatStr
  loc_AFBC48: FStStrNoPop var_A4
  loc_AFBC4B: LitI4 0
  loc_AFBC50: LitI4 -1
  loc_AFBC55: LitI4 1
  loc_AFBC5A: LitStr "."
  loc_AFBC5D: LitStr ","
  loc_AFBC60: FLdFPR8 doImpoBono
  loc_AFBC63: CStrR8
  loc_AFBC65: FStStrNoPop var_A0
  loc_AFBC68: ImpAdCallI2 Replace(, , , , , )
  loc_AFBC6D: FStStrNoPop var_A8
  loc_AFBC70: ConcatStr
  loc_AFBC71: FStStrNoPop var_AC
  loc_AFBC74: LitStr "  WHERE CodiInmu = "
  loc_AFBC77: ConcatStr
  loc_AFBC78: FStStrNoPop var_B0
  loc_AFBC7B: ILdRf Cuenta
  loc_AFBC7E: CStrI4
  loc_AFBC80: FStStrNoPop var_B4
  loc_AFBC83: ConcatStr
  loc_AFBC84: FStStrNoPop var_B8
  loc_AFBC87: Call EjecutarRs2(from_stack_1v)
  loc_AFBC8C: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_AFBCA7: ILdRf var_88
  loc_AFBCAA: LitStr "Comercio"
  loc_AFBCAD: EqStr
  loc_AFBCAF: BranchF loc_AFBD38
  loc_AFBCB2: LitStr "UPDATE comercio SET BonoCome = "
  loc_AFBCB5: FLdUI1
  loc_AFBCB9: CStrI2
  loc_AFBCBB: FStStrNoPop var_8C
  loc_AFBCBE: ConcatStr
  loc_AFBCBF: FStStrNoPop var_90
  loc_AFBCC2: LitStr ", NudoBono = "
  loc_AFBCC5: ConcatStr
  loc_AFBCC6: FStStrNoPop var_94
  loc_AFBCC9: ILdRf NudoPers
  loc_AFBCCC: CStrI4
  loc_AFBCCE: FStStrNoPop var_98
  loc_AFBCD1: ConcatStr
  loc_AFBCD2: FStStrNoPop var_9C
  loc_AFBCD5: LitStr ", ImboCome = "
  loc_AFBCD8: ConcatStr
  loc_AFBCD9: FStStrNoPop var_A4
  loc_AFBCDC: LitI4 0
  loc_AFBCE1: LitI4 -1
  loc_AFBCE6: LitI4 1
  loc_AFBCEB: LitStr "."
  loc_AFBCEE: LitStr ","
  loc_AFBCF1: FLdFPR8 doImpoBono
  loc_AFBCF4: CStrR8
  loc_AFBCF6: FStStrNoPop var_A0
  loc_AFBCF9: ImpAdCallI2 Replace(, , , , , )
  loc_AFBCFE: FStStrNoPop var_A8
  loc_AFBD01: ConcatStr
  loc_AFBD02: FStStrNoPop var_AC
  loc_AFBD05: LitStr " WHERE CodiCome = "
  loc_AFBD08: ConcatStr
  loc_AFBD09: FStStrNoPop var_B0
  loc_AFBD0C: ILdRf Cuenta
  loc_AFBD0F: CStrI4
  loc_AFBD11: FStStrNoPop var_B4
  loc_AFBD14: ConcatStr
  loc_AFBD15: FStStrNoPop var_B8
  loc_AFBD18: Call EjecutarRs2(from_stack_1v)
  loc_AFBD1D: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_AFBD38: ILdRf var_88
  loc_AFBD3B: LitStr "Facilidad"
  loc_AFBD3E: EqStr
  loc_AFBD40: BranchF loc_AFBDC9
  loc_AFBD43: LitStr "UPDATE facipago SET BonoFapa = "
  loc_AFBD46: FLdUI1
  loc_AFBD4A: CStrI2
  loc_AFBD4C: FStStrNoPop var_8C
  loc_AFBD4F: ConcatStr
  loc_AFBD50: FStStrNoPop var_90
  loc_AFBD53: LitStr ", NudoBono = "
  loc_AFBD56: ConcatStr
  loc_AFBD57: FStStrNoPop var_94
  loc_AFBD5A: ILdRf NudoPers
  loc_AFBD5D: CStrI4
  loc_AFBD5F: FStStrNoPop var_98
  loc_AFBD62: ConcatStr
  loc_AFBD63: FStStrNoPop var_9C
  loc_AFBD66: LitStr ", ImboFapa = "
  loc_AFBD69: ConcatStr
  loc_AFBD6A: FStStrNoPop var_A4
  loc_AFBD6D: LitI4 0
  loc_AFBD72: LitI4 -1
  loc_AFBD77: LitI4 1
  loc_AFBD7C: LitStr "."
  loc_AFBD7F: LitStr ","
  loc_AFBD82: FLdFPR8 doImpoBono
  loc_AFBD85: CStrR8
  loc_AFBD87: FStStrNoPop var_A0
  loc_AFBD8A: ImpAdCallI2 Replace(, , , , , )
  loc_AFBD8F: FStStrNoPop var_A8
  loc_AFBD92: ConcatStr
  loc_AFBD93: FStStrNoPop var_AC
  loc_AFBD96: LitStr " WHERE CodiFapa = "
  loc_AFBD99: ConcatStr
  loc_AFBD9A: FStStrNoPop var_B0
  loc_AFBD9D: ILdRf Cuenta
  loc_AFBDA0: CStrI4
  loc_AFBDA2: FStStrNoPop var_B4
  loc_AFBDA5: ConcatStr
  loc_AFBDA6: FStStrNoPop var_B8
  loc_AFBDA9: Call EjecutarRs2(from_stack_1v)
  loc_AFBDAE: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_AFBDC9: ExitProcHresult
End Sub

Public Sub ModificarPeriInmuBimeInmu(CodiInmu, PeriInmu, BimeInmu) 'A869C0
  'Data Table: 4F6F78
  loc_A86948: LitStr "UPDATE inmueble SET PeriInmu = "
  loc_A8694B: FLdI2 PeriInmu
  loc_A8694E: CStrUI1
  loc_A86950: FStStrNoPop var_88
  loc_A86953: ConcatStr
  loc_A86954: FStStrNoPop var_8C
  loc_A86957: LitStr ", BimeInmu = "
  loc_A8695A: ConcatStr
  loc_A8695B: FStStrNoPop var_90
  loc_A8695E: FLdUI1
  loc_A86962: CStrI2
  loc_A86964: FStStrNoPop var_94
  loc_A86967: ConcatStr
  loc_A86968: FStStrNoPop var_98
  loc_A8696B: LitStr ", ModiUsua = '"
  loc_A8696E: ConcatStr
  loc_A8696F: FStStrNoPop var_9C
  loc_A86972: ImpAdLdI4 MemVar_D9302C
  loc_A86975: ConcatStr
  loc_A86976: FStStrNoPop var_A0
  loc_A86979: LitStr "' WHERE CodiInmu = "
  loc_A8697C: ConcatStr
  loc_A8697D: FStStrNoPop var_A4
  loc_A86980: ILdRf CodiInmu
  loc_A86983: CStrI4
  loc_A86985: FStStrNoPop var_A8
  loc_A86988: ConcatStr
  loc_A86989: FStStrNoPop var_AC
  loc_A8698C: Call EjecutarRs2(from_stack_1v)
  loc_A86991: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A869A8: Call Requery()
  loc_A869AD: LitI2_Byte 0
  loc_A869AF: ILdRf CodiInmu
  loc_A869B2: CStrI4
  loc_A869B4: FStStrNoPop var_88
  loc_A869B7: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A869BC: FFree1Str var_88
  loc_A869BF: ExitProcHresult
End Sub

Public Sub Baja(CodiInmu, BajaFeho, BajaMoti) 'ADB4EC
  'Data Table: 4F6F78
  loc_ADB3DC: ILdRf BajaFeho
  loc_ADB3DF: FStStrCopy var_88
  loc_ADB3E2: ILdRf BajaMoti
  loc_ADB3E5: FStStrCopy var_8C
  loc_ADB3E8: LitI2_Byte 0
  loc_ADB3EA: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ADB3EF: FStFPR8 var_278
  loc_ADB3F2: LitVarStr var_DC, "UPDATE inmueble SET FebaInmu = "
  loc_ADB3F7: LitI4 1
  loc_ADB3FC: LitI4 1
  loc_ADB401: LitVarStr var_AC, " 'yyyy-mm-dd'"
  loc_ADB406: FStVarCopyObj var_BC
  loc_ADB409: FLdRfVar var_BC
  loc_ADB40C: FLdRfVar var_88
  loc_ADB40F: CVarRef
  loc_ADB414: FLdRfVar var_CC
  loc_ADB417: ImpAdCallFPR4  = Format(, )
  loc_ADB41C: FLdRfVar var_CC
  loc_ADB41F: ConcatVar var_EC
  loc_ADB423: LitVarStr var_FC, " ,BajaFeho = '"
  loc_ADB428: ConcatVar var_10C
  loc_ADB42C: LitI4 1
  loc_ADB431: LitI4 1
  loc_ADB436: LitVarStr var_13C, "yyyy-mm-dd"
  loc_ADB43B: FStVarCopyObj var_14C
  loc_ADB43E: FLdRfVar var_14C
  loc_ADB441: FLdFPR8 var_278
  loc_ADB444: CVarDate var_12C
  loc_ADB448: FLdRfVar var_15C
  loc_ADB44B: ImpAdCallFPR4  = Format(, )
  loc_ADB450: FLdRfVar var_15C
  loc_ADB453: ConcatVar var_16C
  loc_ADB457: LitVarStr var_17C, "', MobaInmu = '"
  loc_ADB45C: ConcatVar var_18C
  loc_ADB460: ILdRf var_8C
  loc_ADB463: CVarStr var_19C
  loc_ADB466: ConcatVar var_1AC
  loc_ADB46A: LitVarStr var_1BC, "', BajaMoti = '"
  loc_ADB46F: ConcatVar var_1CC
  loc_ADB473: ILdRf var_8C
  loc_ADB476: CVarStr var_1DC
  loc_ADB479: ConcatVar var_1EC
  loc_ADB47D: LitVarStr var_1FC, "', BajaUsua = '"
  loc_ADB482: ConcatVar var_20C
  loc_ADB486: ImpAdLdI4 MemVar_D9302C
  loc_ADB489: CVarStr var_21C
  loc_ADB48C: ConcatVar var_22C
  loc_ADB490: LitVarStr var_23C, "' WHERE CodiInmu = "
  loc_ADB495: ConcatVar var_24C
  loc_ADB499: ILdRf CodiInmu
  loc_ADB49C: CVarI4
  loc_ADB4A0: ConcatVar var_26C
  loc_ADB4A4: CStrVarVal var_270
  loc_ADB4A8: Call EjecutarRs2(from_stack_1v)
  loc_ADB4AD: FFree1Str var_270
  loc_ADB4B0: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_12C = "": var_14C = "": var_10C = "": var_15C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_ADB4D3: Call Requery()
  loc_ADB4D8: LitI2_Byte 0
  loc_ADB4DA: ILdRf CodiInmu
  loc_ADB4DD: CStrI4
  loc_ADB4DF: FStStrNoPop var_270
  loc_ADB4E2: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_ADB4E7: FFree1Str var_270
  loc_ADB4EA: ExitProcHresult
End Sub

Public Sub Delete() '9FE318
  'Data Table: 4F6F78
  loc_9FE2E8: FLdRfVar var_88
  loc_9FE2EB: FLdPr Me
  loc_9FE2EE: MemLdPr RsFrm
  loc_9FE2F1:  = Me.RecordCount
  loc_9FE2F6: ILdRf var_88
  loc_9FE2F9: LitI4 0
  loc_9FE2FE: GtI4
  loc_9FE2FF: BranchF loc_9FE317
  loc_9FE302: LitI4 1
  loc_9FE307: FLdPr Me
  loc_9FE30A: MemLdPr RsFrm
  loc_9FE30D: Me.Delete
  loc_9FE312: Call MoveNext()
  loc_9FE317: ExitProcHresult
End Sub

Public Sub Requery() '9E8A18
  'Data Table: 4F6F78
  loc_9E89F4: LitI4 -1
  loc_9E89F9: FLdPr Me
  loc_9E89FC: MemLdPr RsFrm
  loc_9E89FF: Me.Requery from_stack_1
  loc_9E8A04: LitVarStr var_94, "Primary"
  loc_9E8A09: PopAdLdVar
  loc_9E8A0A: FLdPr Me
  loc_9E8A0D: LateIdCall
  loc_9E8A15: ExitProcHresult
  loc_9E8A16: ModI2
End Sub

Public Sub Update() 'A0C444
  'Data Table: 4F6F78
  loc_A0C408: FLdPr Me
  loc_A0C40B: MemLdStr RsFrm
  loc_A0C40E: FStAd var_88 
  loc_A0C412: LitI4 3
  loc_A0C417: FLdPr var_88
  loc_A0C41A: Me.UpdateBatch
  loc_A0C41F: FLdRfVar var_8C
  loc_A0C422: FLdPr var_88
  loc_A0C425:  = Me.EditMode
  loc_A0C42A: ILdRf var_8C
  loc_A0C42D: LitI4 2
  loc_A0C432: EqI4
  loc_A0C433: BranchF loc_A0C43B
  loc_A0C436: Call MoveLast()
  loc_A0C43B: LitNothing
  loc_A0C43D: FStAd var_88 
  loc_A0C441: ExitProcHresult
  loc_A0C442: NeR8
End Sub

Public Sub Cancel() 'A33D2C
  'Data Table: 4F6F78
  loc_A33CE0: FLdPr Me
  loc_A33CE3: MemLdStr RsFrm
  loc_A33CE6: FStAd var_88 
  loc_A33CEA: FLdRfVar var_8C
  loc_A33CED: FLdPr var_88
  loc_A33CF0:  = Me.RecordCount
  loc_A33CF5: ILdRf var_8C
  loc_A33CF8: LitI4 0
  loc_A33CFD: GtI4
  loc_A33CFE: BranchF loc_A33D25
  loc_A33D01: FLdPr var_88
  loc_A33D04: Me.CancelUpdate
  loc_A33D09: FLdRfVar var_8C
  loc_A33D0C: FLdPr var_88
  loc_A33D0F:  = Me.EditMode
  loc_A33D14: ILdRf var_8C
  loc_A33D17: LitI4 2
  loc_A33D1C: EqI4
  loc_A33D1D: BranchF loc_A33D25
  loc_A33D20: Call MoveFirst()
  loc_A33D25: LitNothing
  loc_A33D27: FStAd var_88 
  loc_A33D2B: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9DF2F0
  'Data Table: 4F6F78
  loc_9DF2D0: FLdRfVar var_8C
  loc_9DF2D3: FLdPr Me
  loc_9DF2D6: MemLdPr RsFrm
  loc_9DF2D9:  = Me.EditMode
  loc_9DF2DE: ILdRf var_8C
  loc_9DF2E1: LitI4 0
  loc_9DF2E6: NeI4
  loc_9DF2E7: FStI2 var_86
  loc_9DF2EA: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5CE08
  'Data Table: 4F6F78
  loc_A5CDA4: ILdRf sSelect
  loc_A5CDA7: FStStrCopy var_88
  loc_A5CDAA: LitNothing
  loc_A5CDAC: CastAd
  loc_A5CDAF: FStAdFuncNoPop
  loc_A5CDB2: FLdPr Me
  loc_A5CDB5: MemStAd
  loc_A5CDB9: FFree1Ad var_8C
  loc_A5CDBC: New Recordset
  loc_A5CDC0: FStAdFuncNoPop
  loc_A5CDC3: FLdPr Me
  loc_A5CDC6: MemStAd
  loc_A5CDCA: FFree1Ad var_8C
  loc_A5CDCD: LitI4 -1
  loc_A5CDD2: LitI4 3
  loc_A5CDD7: LitI4 3
  loc_A5CDDC: ImpAdLdI4 MemVar_D9301C
  loc_A5CDDF: CVarAd
  loc_A5CDE3: PopAdLdVar
  loc_A5CDE4: ILdRf var_88
  loc_A5CDE7: CVarStr var_9C
  loc_A5CDEA: PopAdLdVar
  loc_A5CDEB: FLdPr Me
  loc_A5CDEE: MemLdPr RsFrm
  loc_A5CDF1: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5CDF6: LitVarStr var_9C, "Primary"
  loc_A5CDFB: PopAdLdVar
  loc_A5CDFC: FLdPr Me
  loc_A5CDFF: LateIdCall
  loc_A5CE07: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A4A4A4
  'Data Table: 4F6F78
  loc_A4A450: ILdRf sSelect
  loc_A4A453: FStStrCopy var_88
  loc_A4A456: LitNothing
  loc_A4A458: CastAd
  loc_A4A45B: FStAdFuncNoPop
  loc_A4A45E: FLdPr Me
  loc_A4A461: MemStAd
  loc_A4A465: FFree1Ad var_8C
  loc_A4A468: New Recordset
  loc_A4A46C: FStAdFuncNoPop
  loc_A4A46F: FLdPr Me
  loc_A4A472: MemStAd
  loc_A4A476: FFree1Ad var_8C
  loc_A4A479: LitI4 -1
  loc_A4A47E: LitI4 3
  loc_A4A483: LitI4 3
  loc_A4A488: ImpAdLdI4 MemVar_D9301C
  loc_A4A48B: CVarAd
  loc_A4A48F: PopAdLdVar
  loc_A4A490: ILdRf var_88
  loc_A4A493: CVarStr var_9C
  loc_A4A496: PopAdLdVar
  loc_A4A497: FLdPr Me
  loc_A4A49A: MemLdPr Rs2
  loc_A4A49D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4A4A2: ExitProcHresult
End Sub

Public Sub EjecutarRsCls3(sSelect) 'A4AB34
  'Data Table: 4F6F78
  loc_A4AAE0: ILdRf sSelect
  loc_A4AAE3: FStStrCopy var_88
  loc_A4AAE6: LitNothing
  loc_A4AAE8: CastAd
  loc_A4AAEB: FStAdFuncNoPop
  loc_A4AAEE: FLdPr Me
  loc_A4AAF1: MemStAd
  loc_A4AAF5: FFree1Ad var_8C
  loc_A4AAF8: New Recordset
  loc_A4AAFC: FStAdFuncNoPop
  loc_A4AAFF: FLdPr Me
  loc_A4AB02: MemStAd
  loc_A4AB06: FFree1Ad var_8C
  loc_A4AB09: LitI4 -1
  loc_A4AB0E: LitI4 3
  loc_A4AB13: LitI4 3
  loc_A4AB18: ImpAdLdI4 MemVar_D9301C
  loc_A4AB1B: CVarAd
  loc_A4AB1F: PopAdLdVar
  loc_A4AB20: ILdRf var_88
  loc_A4AB23: CVarStr var_9C
  loc_A4AB26: PopAdLdVar
  loc_A4AB27: FLdPr Me
  loc_A4AB2A: MemLdPr global_72
  loc_A4AB2D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4AB32: ExitProcHresult
End Sub

Public Sub Encontrar(CodiInmu, HaceRequery) 'A73460
  'Data Table: 4F6F78
  loc_A733F0: ILdRf CodiInmu
  loc_A733F3: FStStrCopy var_88
  loc_A733F6: FLdI2 HaceRequery
  loc_A733F9: BranchF loc_A73401
  loc_A733FC: Call Requery()
  loc_A73401: LitStr "CodiInmu = '"
  loc_A73404: ILdRf var_88
  loc_A73407: ConcatStr
  loc_A73408: FStStrNoPop var_8C
  loc_A7340B: LitStr "'"
  loc_A7340E: ConcatStr
  loc_A7340F: PopTmpLdAdStr
  loc_A73413: Call Find(from_stack_1v)
  loc_A73418: FFreeStr var_8C = ""
  loc_A7341F: FLdRfVar var_94
  loc_A73422: FLdPr Me
  loc_A73425: MemLdPr RsFrm
  loc_A73428:  = Me.RecordCount
  loc_A7342D: ILdRf var_94
  loc_A73430: LitI4 0
  loc_A73435: GtI4
  loc_A73436: FLdRfVar var_98
  loc_A73439: FLdPr Me
  loc_A7343C: MemLdPr RsFrm
  loc_A7343F:  = Me.AbsolutePosition
  loc_A73444: ILdRf var_98
  loc_A73447: LitI4 -3
  loc_A7344C: EqI4
  loc_A7344D: AndI4
  loc_A7344E: BranchF loc_A7345C
  loc_A73451: FLdPr Me
  loc_A73454: MemLdPr RsFrm
  loc_A73457: Me.MoveLast
  loc_A7345C: ExitProcHresult
End Sub

Public Sub EncontrarDescuenoPorBono(Sector, Cuenta, HaceRequery) 'A88CEC
  'Data Table: 4F6F78
  loc_A88C58: ILdRf Sector
  loc_A88C5B: FStStrCopy var_88
  loc_A88C5E: ILdRf Cuenta
  loc_A88C61: FStStrCopy var_8C
  loc_A88C64: FLdI2 HaceRequery
  loc_A88C67: BranchF loc_A88C6F
  loc_A88C6A: Call Requery()
  loc_A88C6F: LitStr "Sector = '"
  loc_A88C72: ILdRf var_88
  loc_A88C75: ConcatStr
  loc_A88C76: FStStrNoPop var_90
  loc_A88C79: LitStr "'"
  loc_A88C7C: ConcatStr
  loc_A88C7D: PopTmpLdAdStr
  loc_A88C81: Call Find(from_stack_1v)
  loc_A88C86: FFreeStr var_90 = ""
  loc_A88C8D: LitStr "Cuenta = '"
  loc_A88C90: ILdRf var_8C
  loc_A88C93: ConcatStr
  loc_A88C94: FStStrNoPop var_90
  loc_A88C97: LitStr "'"
  loc_A88C9A: ConcatStr
  loc_A88C9B: PopTmpLdAdStr
  loc_A88C9F: Call Find(from_stack_1v)
  loc_A88CA4: FFreeStr var_90 = ""
  loc_A88CAB: FLdRfVar var_98
  loc_A88CAE: FLdPr Me
  loc_A88CB1: MemLdPr RsFrm
  loc_A88CB4:  = Me.RecordCount
  loc_A88CB9: ILdRf var_98
  loc_A88CBC: LitI4 0
  loc_A88CC1: GtI4
  loc_A88CC2: FLdRfVar var_9C
  loc_A88CC5: FLdPr Me
  loc_A88CC8: MemLdPr RsFrm
  loc_A88CCB:  = Me.AbsolutePosition
  loc_A88CD0: ILdRf var_9C
  loc_A88CD3: LitI4 -3
  loc_A88CD8: EqI4
  loc_A88CD9: AndI4
  loc_A88CDA: BranchF loc_A88CE8
  loc_A88CDD: FLdPr Me
  loc_A88CE0: MemLdPr RsFrm
  loc_A88CE3: Me.MoveLast
  loc_A88CE8: ExitProcHresult
End Sub

Public Property Get DataSource() '9F7B24
  'Data Table: 4F6F78
  loc_9F7B00: ZeroRetVal
  loc_9F7B02: FLdRfVar var_8C
  loc_9F7B05: FLdPr Me
  loc_9F7B08: MemLdPr RsFrm
  loc_9F7B0B:  = Me.DataSource
  loc_9F7B10: ILdRf var_8C
  loc_9F7B13: CastAd
  loc_9F7B16: FStAdFunc var_88
  loc_9F7B19: FFree1Ad var_8C
  loc_9F7B1C: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9DA380
  'Data Table: 4F6F78
  loc_9DA364: FLdRfVar var_8C
  loc_9DA367: FLdPr Me
  loc_9DA36A: MemLdPr RsFrm
  loc_9DA36D:  = Me.EditMode
  loc_9DA372: ILdRf var_8C
  loc_9DA375: FStR4 var_88
  loc_9DA378: ExitProcCbHresult
End Sub

Public Property Get CodiInmu() 'A33F24
  'Data Table: 4F6F78
  loc_A33EE0: FLdRfVar var_B0
  loc_A33EE3: FLdRfVar var_A0
  loc_A33EE6: LitVarStr var_9C, "CodiInmu"
  loc_A33EEB: PopAdLdVar
  loc_A33EEC: FLdRfVar var_8C
  loc_A33EEF: FLdPr Me
  loc_A33EF2: MemLdPr RsFrm
  loc_A33EF5:  = Me.Fields
  loc_A33EFA: FLdPr var_8C
  loc_A33EFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A33F02: FLdPr var_A0
  loc_A33F05:  = Me.Value
  loc_A33F0A: FLdRfVar var_B0
  loc_A33F0D: CI4Var
  loc_A33F0F: FStR4 var_88
  loc_A33F12: FFreeAd var_8C = ""
  loc_A33F19: FFree1Var var_B0 = ""
  loc_A33F1C: ExitProcCbHresult
End Sub

Public Property Let CodiInmu(vDato) '9D9D90
  'Data Table: 4F6F78
  loc_9D9D74: ILdRf vDato
  loc_9D9D77: CVarI4
  loc_9D9D7B: PopAdLdVar
  loc_9D9D7C: LitVarStr var_94, "CodiInmu"
  loc_9D9D81: PopAdLdVar
  loc_9D9D82: FLdPr Me
  loc_9D9D85: MemLdPr RsFrm
  loc_9D9D88: Me.Collect = from_stack_1
  loc_9D9D8D: ExitProcHresult
End Sub

Public Property Get CucuPers() 'A353EC
  'Data Table: 4F6F78
  loc_A353A8: ZeroRetVal
  loc_A353AA: FLdRfVar var_B0
  loc_A353AD: FLdRfVar var_A0
  loc_A353B0: LitVarStr var_9C, "CucuPers"
  loc_A353B5: PopAdLdVar
  loc_A353B6: FLdRfVar var_8C
  loc_A353B9: FLdPr Me
  loc_A353BC: MemLdPr RsFrm
  loc_A353BF:  = Me.Fields
  loc_A353C4: FLdPr var_8C
  loc_A353C7: from_stack_2 = Me.Item(from_stack_1)
  loc_A353CC: FLdPr var_A0
  loc_A353CF:  = Me.Value
  loc_A353D4: FLdRfVar var_B0
  loc_A353D7: CStrVarTmp
  loc_A353D8: FStStr var_88
  loc_A353DB: FFreeAd var_8C = ""
  loc_A353E2: FFree1Var var_B0 = ""
  loc_A353E5: ExitProcCbHresult
End Sub

Public Property Let CucuPers(vDato) '9E8A68
  'Data Table: 4F6F78
  loc_9E8A48: ILdRf vDato
  loc_9E8A4B: FStStrCopy var_88
  loc_9E8A4E: ILdRf var_88
  loc_9E8A51: CVarStr var_A8
  loc_9E8A54: PopAdLdVar
  loc_9E8A55: LitVarStr var_98, "CucuPers"
  loc_9E8A5A: PopAdLdVar
  loc_9E8A5B: FLdPr Me
  loc_9E8A5E: MemLdPr RsFrm
  loc_9E8A61: Me.Collect = from_stack_1
  loc_9E8A66: ExitProcHresult
End Sub

Public Property Get PadrInmu() 'A362E0
  'Data Table: 4F6F78
  loc_A3629C: ZeroRetVal
  loc_A3629E: FLdRfVar var_B0
  loc_A362A1: FLdRfVar var_A0
  loc_A362A4: LitVarStr var_9C, "PadrInmu"
  loc_A362A9: PopAdLdVar
  loc_A362AA: FLdRfVar var_8C
  loc_A362AD: FLdPr Me
  loc_A362B0: MemLdPr RsFrm
  loc_A362B3:  = Me.Fields
  loc_A362B8: FLdPr var_8C
  loc_A362BB: from_stack_2 = Me.Item(from_stack_1)
  loc_A362C0: FLdPr var_A0
  loc_A362C3:  = Me.Value
  loc_A362C8: FLdRfVar var_B0
  loc_A362CB: CStrVarTmp
  loc_A362CC: FStStr var_88
  loc_A362CF: FFreeAd var_8C = ""
  loc_A362D6: FFree1Var var_B0 = ""
  loc_A362D9: ExitProcCbHresult
End Sub

Public Property Get DptoInmu() 'A326A4
  'Data Table: 4F6F78
  loc_A32660: FLdRfVar var_B0
  loc_A32663: FLdRfVar var_A0
  loc_A32666: LitVarStr var_9C, "DptoInmu"
  loc_A3266B: PopAdLdVar
  loc_A3266C: FLdRfVar var_8C
  loc_A3266F: FLdPr Me
  loc_A32672: MemLdPr RsFrm
  loc_A32675:  = Me.Fields
  loc_A3267A: FLdPr var_8C
  loc_A3267D: from_stack_2 = Me.Item(from_stack_1)
  loc_A32682: FLdPr var_A0
  loc_A32685:  = Me.Value
  loc_A3268A: FLdRfVar var_B0
  loc_A3268D: CUI1Var
  loc_A3268F: FStUI1 var_86
  loc_A32693: FFreeAd var_8C = ""
  loc_A3269A: FFree1Var var_B0 = ""
  loc_A3269D: ExitProcCbHresult
End Sub

Public Property Let DptoInmu(vDato) '9D9B7C
  'Data Table: 4F6F78
  loc_9D9B60: FLdUI1
  loc_9D9B64: CVarUI1
  loc_9D9B68: PopAdLdVar
  loc_9D9B69: LitVarStr var_94, "DptoInmu"
  loc_9D9B6E: PopAdLdVar
  loc_9D9B6F: FLdPr Me
  loc_9D9B72: MemLdPr RsFrm
  loc_9D9B75: Me.Collect = from_stack_1
  loc_9D9B7A: ExitProcHresult
End Sub

Public Property Get DistInmu() 'A327A4
  'Data Table: 4F6F78
  loc_A32760: FLdRfVar var_B0
  loc_A32763: FLdRfVar var_A0
  loc_A32766: LitVarStr var_9C, "DistInmu"
  loc_A3276B: PopAdLdVar
  loc_A3276C: FLdRfVar var_8C
  loc_A3276F: FLdPr Me
  loc_A32772: MemLdPr RsFrm
  loc_A32775:  = Me.Fields
  loc_A3277A: FLdPr var_8C
  loc_A3277D: from_stack_2 = Me.Item(from_stack_1)
  loc_A32782: FLdPr var_A0
  loc_A32785:  = Me.Value
  loc_A3278A: FLdRfVar var_B0
  loc_A3278D: CUI1Var
  loc_A3278F: FStUI1 var_86
  loc_A32793: FFreeAd var_8C = ""
  loc_A3279A: FFree1Var var_B0 = ""
  loc_A3279D: ExitProcCbHresult
End Sub

Public Property Let DistInmu(vDato) '9D98D0
  'Data Table: 4F6F78
  loc_9D98B4: FLdUI1
  loc_9D98B8: CVarUI1
  loc_9D98BC: PopAdLdVar
  loc_9D98BD: LitVarStr var_94, "DistInmu"
  loc_9D98C2: PopAdLdVar
  loc_9D98C3: FLdPr Me
  loc_9D98C6: MemLdPr RsFrm
  loc_9D98C9: Me.Collect = from_stack_1
  loc_9D98CE: ExitProcHresult
End Sub

Public Property Get SeccInmu() 'A329A4
  'Data Table: 4F6F78
  loc_A32960: FLdRfVar var_B0
  loc_A32963: FLdRfVar var_A0
  loc_A32966: LitVarStr var_9C, "SeccInmu"
  loc_A3296B: PopAdLdVar
  loc_A3296C: FLdRfVar var_8C
  loc_A3296F: FLdPr Me
  loc_A32972: MemLdPr RsFrm
  loc_A32975:  = Me.Fields
  loc_A3297A: FLdPr var_8C
  loc_A3297D: from_stack_2 = Me.Item(from_stack_1)
  loc_A32982: FLdPr var_A0
  loc_A32985:  = Me.Value
  loc_A3298A: FLdRfVar var_B0
  loc_A3298D: CUI1Var
  loc_A3298F: FStUI1 var_86
  loc_A32993: FFreeAd var_8C = ""
  loc_A3299A: FFree1Var var_B0 = ""
  loc_A3299D: ExitProcCbHresult
End Sub

Public Property Let SeccInmu(vDato) '9D8CA4
  'Data Table: 4F6F78
  loc_9D8C88: FLdUI1
  loc_9D8C8C: CVarUI1
  loc_9D8C90: PopAdLdVar
  loc_9D8C91: LitVarStr var_94, "SeccInmu"
  loc_9D8C96: PopAdLdVar
  loc_9D8C97: FLdPr Me
  loc_9D8C9A: MemLdPr RsFrm
  loc_9D8C9D: Me.Collect = from_stack_1
  loc_9D8CA2: ExitProcHresult
End Sub

Public Property Get ManzInmu() 'A32BA4
  'Data Table: 4F6F78
  loc_A32B60: FLdRfVar var_B0
  loc_A32B63: FLdRfVar var_A0
  loc_A32B66: LitVarStr var_9C, "ManzInmu"
  loc_A32B6B: PopAdLdVar
  loc_A32B6C: FLdRfVar var_8C
  loc_A32B6F: FLdPr Me
  loc_A32B72: MemLdPr RsFrm
  loc_A32B75:  = Me.Fields
  loc_A32B7A: FLdPr var_8C
  loc_A32B7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A32B82: FLdPr var_A0
  loc_A32B85:  = Me.Value
  loc_A32B8A: FLdRfVar var_B0
  loc_A32B8D: CI4Var
  loc_A32B8F: FStR4 var_88
  loc_A32B92: FFreeAd var_8C = ""
  loc_A32B99: FFree1Var var_B0 = ""
  loc_A32B9C: ExitProcCbHresult
End Sub

Public Property Let ManzInmu(vDato) '9D8C58
  'Data Table: 4F6F78
  loc_9D8C3C: ILdRf vDato
  loc_9D8C3F: CVarI4
  loc_9D8C43: PopAdLdVar
  loc_9D8C44: LitVarStr var_94, "ManzInmu"
  loc_9D8C49: PopAdLdVar
  loc_9D8C4A: FLdPr Me
  loc_9D8C4D: MemLdPr RsFrm
  loc_9D8C50: Me.Collect = from_stack_1
  loc_9D8C55: ExitProcHresult
End Sub

Public Property Get ParcInmu() 'A34624
  'Data Table: 4F6F78
  loc_A345E0: FLdRfVar var_B0
  loc_A345E3: FLdRfVar var_A0
  loc_A345E6: LitVarStr var_9C, "ParcInmu"
  loc_A345EB: PopAdLdVar
  loc_A345EC: FLdRfVar var_8C
  loc_A345EF: FLdPr Me
  loc_A345F2: MemLdPr RsFrm
  loc_A345F5:  = Me.Fields
  loc_A345FA: FLdPr var_8C
  loc_A345FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A34602: FLdPr var_A0
  loc_A34605:  = Me.Value
  loc_A3460A: FLdRfVar var_B0
  loc_A3460D: CI4Var
  loc_A3460F: FStR4 var_88
  loc_A34612: FFreeAd var_8C = ""
  loc_A34619: FFree1Var var_B0 = ""
  loc_A3461C: ExitProcCbHresult
End Sub

Public Property Let ParcInmu(vDato) '9D89F8
  'Data Table: 4F6F78
  loc_9D89DC: ILdRf vDato
  loc_9D89DF: CVarI4
  loc_9D89E3: PopAdLdVar
  loc_9D89E4: LitVarStr var_94, "ParcInmu"
  loc_9D89E9: PopAdLdVar
  loc_9D89EA: FLdPr Me
  loc_9D89ED: MemLdPr RsFrm
  loc_9D89F0: Me.Collect = from_stack_1
  loc_9D89F5: ExitProcHresult
End Sub

Public Property Get SubpInmu() 'A32DA4
  'Data Table: 4F6F78
  loc_A32D60: FLdRfVar var_B0
  loc_A32D63: FLdRfVar var_A0
  loc_A32D66: LitVarStr var_9C, "SubpInmu"
  loc_A32D6B: PopAdLdVar
  loc_A32D6C: FLdRfVar var_8C
  loc_A32D6F: FLdPr Me
  loc_A32D72: MemLdPr RsFrm
  loc_A32D75:  = Me.Fields
  loc_A32D7A: FLdPr var_8C
  loc_A32D7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A32D82: FLdPr var_A0
  loc_A32D85:  = Me.Value
  loc_A32D8A: FLdRfVar var_B0
  loc_A32D8D: CI4Var
  loc_A32D8F: FStR4 var_88
  loc_A32D92: FFreeAd var_8C = ""
  loc_A32D99: FFree1Var var_B0 = ""
  loc_A32D9C: ExitProcCbHresult
End Sub

Public Property Let SubpInmu(vDato) '9D89AC
  'Data Table: 4F6F78
  loc_9D8990: ILdRf vDato
  loc_9D8993: CVarI4
  loc_9D8997: PopAdLdVar
  loc_9D8998: LitVarStr var_94, "SubpInmu"
  loc_9D899D: PopAdLdVar
  loc_9D899E: FLdPr Me
  loc_9D89A1: MemLdPr RsFrm
  loc_9D89A4: Me.Collect = from_stack_1
  loc_9D89A9: ExitProcHresult
End Sub

Public Property Get DigiInmu() 'A32F24
  'Data Table: 4F6F78
  loc_A32EE0: FLdRfVar var_B0
  loc_A32EE3: FLdRfVar var_A0
  loc_A32EE6: LitVarStr var_9C, "DigiInmu"
  loc_A32EEB: PopAdLdVar
  loc_A32EEC: FLdRfVar var_8C
  loc_A32EEF: FLdPr Me
  loc_A32EF2: MemLdPr RsFrm
  loc_A32EF5:  = Me.Fields
  loc_A32EFA: FLdPr var_8C
  loc_A32EFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A32F02: FLdPr var_A0
  loc_A32F05:  = Me.Value
  loc_A32F0A: FLdRfVar var_B0
  loc_A32F0D: CUI1Var
  loc_A32F0F: FStUI1 var_86
  loc_A32F13: FFreeAd var_8C = ""
  loc_A32F1A: FFree1Var var_B0 = ""
  loc_A32F1D: ExitProcCbHresult
End Sub

Public Property Let DigiInmu(vDato) '9D85D0
  'Data Table: 4F6F78
  loc_9D85B4: FLdUI1
  loc_9D85B8: CVarUI1
  loc_9D85BC: PopAdLdVar
  loc_9D85BD: LitVarStr var_94, "DigiInmu"
  loc_9D85C2: PopAdLdVar
  loc_9D85C3: FLdPr Me
  loc_9D85C6: MemLdPr RsFrm
  loc_9D85C9: Me.Collect = from_stack_1
  loc_9D85CE: ExitProcHresult
End Sub

Public Property Get NomeInmu() 'A34B28
  'Data Table: 4F6F78
  loc_A34AE4: ZeroRetVal
  loc_A34AE6: FLdRfVar var_B0
  loc_A34AE9: FLdRfVar var_A0
  loc_A34AEC: LitVarStr var_9C, "NomeInmu"
  loc_A34AF1: PopAdLdVar
  loc_A34AF2: FLdRfVar var_8C
  loc_A34AF5: FLdPr Me
  loc_A34AF8: MemLdPr RsFrm
  loc_A34AFB:  = Me.Fields
  loc_A34B00: FLdPr var_8C
  loc_A34B03: from_stack_2 = Me.Item(from_stack_1)
  loc_A34B08: FLdPr var_A0
  loc_A34B0B:  = Me.Value
  loc_A34B10: FLdRfVar var_B0
  loc_A34B13: CStrVarTmp
  loc_A34B14: FStStr var_88
  loc_A34B17: FFreeAd var_8C = ""
  loc_A34B1E: FFree1Var var_B0 = ""
  loc_A34B21: ExitProcCbHresult
End Sub

Public Property Let NomeInmu(vDato) '9E8C60
  'Data Table: 4F6F78
  loc_9E8C40: ILdRf vDato
  loc_9E8C43: FStStrCopy var_88
  loc_9E8C46: ILdRf var_88
  loc_9E8C49: CVarStr var_A8
  loc_9E8C4C: PopAdLdVar
  loc_9E8C4D: LitVarStr var_98, "NomeInmu"
  loc_9E8C52: PopAdLdVar
  loc_9E8C53: FLdPr Me
  loc_9E8C56: MemLdPr RsFrm
  loc_9E8C59: Me.Collect = from_stack_1
  loc_9E8C5E: ExitProcHresult
End Sub

Public Property Get AltaFeho() 'A17560
  'Data Table: 4F6F78
  loc_A17528: ZeroRetValVar
  loc_A1752A: FLdRfVar var_AC
  loc_A1752D: LitVarStr var_A8, "AltaFeho"
  loc_A17532: PopAdLdVar
  loc_A17533: FLdRfVar var_98
  loc_A17536: FLdPr Me
  loc_A17539: MemLdPr RsFrm
  loc_A1753C:  = Me.Fields
  loc_A17541: FLdPr var_98
  loc_A17544: from_stack_2 = Me.Item(from_stack_1)
  loc_A17549: FLdZeroAd var_AC
  loc_A1754C: CVarAd
  loc_A17550: FStVar AltaFeho
  loc_A17554: FFree1Ad var_98
  loc_A17557: ExitProcCbHresult
End Sub

Public Property Let AltaFeho(vDato) '9E0C3C
  'Data Table: 4F6F78
  loc_9E0C20: FDupVar
  loc_9E0C26: FLdVar var_94
  loc_9E0C2A: LitVarStr var_A4, "AltaFeho"
  loc_9E0C2F: PopAdLdVar
  loc_9E0C30: FLdPr Me
  loc_9E0C33: MemLdPr RsFrm
  loc_9E0C36: Me.Collect = from_stack_1
  loc_9E0C3B: ExitProcHresult
End Sub

Public Property Get BajaFeho() 'A17380
  'Data Table: 4F6F78
  loc_A17348: ZeroRetValVar
  loc_A1734A: FLdRfVar var_AC
  loc_A1734D: LitVarStr var_A8, "BajaFeho"
  loc_A17352: PopAdLdVar
  loc_A17353: FLdRfVar var_98
  loc_A17356: FLdPr Me
  loc_A17359: MemLdPr RsFrm
  loc_A1735C:  = Me.Fields
  loc_A17361: FLdPr var_98
  loc_A17364: from_stack_2 = Me.Item(from_stack_1)
  loc_A17369: FLdZeroAd var_AC
  loc_A1736C: CVarAd
  loc_A17370: FStVar BajaFeho
  loc_A17374: FFree1Ad var_98
  loc_A17377: ExitProcCbHresult
  loc_A1737D: ArrayRebase1Var
End Sub

Public Property Let BajaFeho(vDato) '9E0B9C
  'Data Table: 4F6F78
  loc_9E0B80: FDupVar
  loc_9E0B86: FLdVar var_94
  loc_9E0B8A: LitVarStr var_A4, "BajaFeho"
  loc_9E0B8F: PopAdLdVar
  loc_9E0B90: FLdPr Me
  loc_9E0B93: MemLdPr RsFrm
  loc_9E0B96: Me.Collect = from_stack_1
  loc_9E0B9B: ExitProcHresult
End Sub

Public Property Get BajaMoti() 'A35D34
  'Data Table: 4F6F78
  loc_A35CF0: ZeroRetVal
  loc_A35CF2: FLdRfVar var_B0
  loc_A35CF5: FLdRfVar var_A0
  loc_A35CF8: LitVarStr var_9C, "BajaMoti"
  loc_A35CFD: PopAdLdVar
  loc_A35CFE: FLdRfVar var_8C
  loc_A35D01: FLdPr Me
  loc_A35D04: MemLdPr RsFrm
  loc_A35D07:  = Me.Fields
  loc_A35D0C: FLdPr var_8C
  loc_A35D0F: from_stack_2 = Me.Item(from_stack_1)
  loc_A35D14: FLdPr var_A0
  loc_A35D17:  = Me.Value
  loc_A35D1C: FLdRfVar var_B0
  loc_A35D1F: CStrVarTmp
  loc_A35D20: FStStr var_88
  loc_A35D23: FFreeAd var_8C = ""
  loc_A35D2A: FFree1Var var_B0 = ""
  loc_A35D2D: ExitProcCbHresult
End Sub

Public Property Get PateInmu() 'A35E3C
  'Data Table: 4F6F78
  loc_A35DF8: ZeroRetVal
  loc_A35DFA: FLdRfVar var_B0
  loc_A35DFD: FLdRfVar var_A0
  loc_A35E00: LitVarStr var_9C, "PateInmu"
  loc_A35E05: PopAdLdVar
  loc_A35E06: FLdRfVar var_8C
  loc_A35E09: FLdPr Me
  loc_A35E0C: MemLdPr RsFrm
  loc_A35E0F:  = Me.Fields
  loc_A35E14: FLdPr var_8C
  loc_A35E17: from_stack_2 = Me.Item(from_stack_1)
  loc_A35E1C: FLdPr var_A0
  loc_A35E1F:  = Me.Value
  loc_A35E24: FLdRfVar var_B0
  loc_A35E27: CStrVarTmp
  loc_A35E28: FStStr var_88
  loc_A35E2B: FFreeAd var_8C = ""
  loc_A35E32: FFree1Var var_B0 = ""
  loc_A35E35: ExitProcCbHresult
End Sub

Public Property Let PateInmu(vDato) '9E8E58
  'Data Table: 4F6F78
  loc_9E8E38: ILdRf vDato
  loc_9E8E3B: FStStrCopy var_88
  loc_9E8E3E: ILdRf var_88
  loc_9E8E41: CVarStr var_A8
  loc_9E8E44: PopAdLdVar
  loc_9E8E45: LitVarStr var_98, "PateInmu"
  loc_9E8E4A: PopAdLdVar
  loc_9E8E4B: FLdPr Me
  loc_9E8E4E: MemLdPr RsFrm
  loc_9E8E51: Me.Collect = from_stack_1
  loc_9E8E56: ExitProcHresult
End Sub

Public Property Get MensInmu() 'A338A4
  'Data Table: 4F6F78
  loc_A33860: FLdRfVar var_B0
  loc_A33863: FLdRfVar var_A0
  loc_A33866: LitVarStr var_9C, "MensInmu"
  loc_A3386B: PopAdLdVar
  loc_A3386C: FLdRfVar var_8C
  loc_A3386F: FLdPr Me
  loc_A33872: MemLdPr RsFrm
  loc_A33875:  = Me.Fields
  loc_A3387A: FLdPr var_8C
  loc_A3387D: from_stack_2 = Me.Item(from_stack_1)
  loc_A33882: FLdPr var_A0
  loc_A33885:  = Me.Value
  loc_A3388A: FLdRfVar var_B0
  loc_A3388D: CI4Var
  loc_A3388F: FStR4 var_88
  loc_A33892: FFreeAd var_8C = ""
  loc_A33899: FFree1Var var_B0 = ""
  loc_A3389C: ExitProcCbHresult
  loc_A338A2: UMiR8
End Sub

Public Property Let MensInmu(vDato) '9D8240
  'Data Table: 4F6F78
  loc_9D8224: ILdRf vDato
  loc_9D8227: CVarI4
  loc_9D822B: PopAdLdVar
  loc_9D822C: LitVarStr var_94, "MensInmu"
  loc_9D8231: PopAdLdVar
  loc_9D8232: FLdPr Me
  loc_9D8235: MemLdPr RsFrm
  loc_9D8238: Me.Collect = from_stack_1
  loc_9D823D: ExitProcHresult
End Sub

Public Property Get MamuInmu() 'A355FC
  'Data Table: 4F6F78
  loc_A355B8: ZeroRetVal
  loc_A355BA: FLdRfVar var_B0
  loc_A355BD: FLdRfVar var_A0
  loc_A355C0: LitVarStr var_9C, "MamuInmu"
  loc_A355C5: PopAdLdVar
  loc_A355C6: FLdRfVar var_8C
  loc_A355C9: FLdPr Me
  loc_A355CC: MemLdPr RsFrm
  loc_A355CF:  = Me.Fields
  loc_A355D4: FLdPr var_8C
  loc_A355D7: from_stack_2 = Me.Item(from_stack_1)
  loc_A355DC: FLdPr var_A0
  loc_A355DF:  = Me.Value
  loc_A355E4: FLdRfVar var_B0
  loc_A355E7: CStrVarTmp
  loc_A355E8: FStStr var_88
  loc_A355EB: FFreeAd var_8C = ""
  loc_A355F2: FFree1Var var_B0 = ""
  loc_A355F5: ExitProcCbHresult
End Sub

Public Property Let MamuInmu(vDato) '9E8F54
  'Data Table: 4F6F78
  loc_9E8F34: ILdRf vDato
  loc_9E8F37: FStStrCopy var_88
  loc_9E8F3A: ILdRf var_88
  loc_9E8F3D: CVarStr var_A8
  loc_9E8F40: PopAdLdVar
  loc_9E8F41: LitVarStr var_98, "MamuInmu"
  loc_9E8F46: PopAdLdVar
  loc_9E8F47: FLdPr Me
  loc_9E8F4A: MemLdPr RsFrm
  loc_9E8F4D: Me.Collect = from_stack_1
  loc_9E8F52: ExitProcHresult
End Sub

Public Property Get FracInmu() 'A351DC
  'Data Table: 4F6F78
  loc_A35198: ZeroRetVal
  loc_A3519A: FLdRfVar var_B0
  loc_A3519D: FLdRfVar var_A0
  loc_A351A0: LitVarStr var_9C, "FracInmu"
  loc_A351A5: PopAdLdVar
  loc_A351A6: FLdRfVar var_8C
  loc_A351A9: FLdPr Me
  loc_A351AC: MemLdPr RsFrm
  loc_A351AF:  = Me.Fields
  loc_A351B4: FLdPr var_8C
  loc_A351B7: from_stack_2 = Me.Item(from_stack_1)
  loc_A351BC: FLdPr var_A0
  loc_A351BF:  = Me.Value
  loc_A351C4: FLdRfVar var_B0
  loc_A351C7: CStrVarTmp
  loc_A351C8: FStStr var_88
  loc_A351CB: FFreeAd var_8C = ""
  loc_A351D2: FFree1Var var_B0 = ""
  loc_A351D5: ExitProcCbHresult
End Sub

Public Property Let FracInmu(vDato) '9E8EAC
  'Data Table: 4F6F78
  loc_9E8E8C: ILdRf vDato
  loc_9E8E8F: FStStrCopy var_88
  loc_9E8E92: ILdRf var_88
  loc_9E8E95: CVarStr var_A8
  loc_9E8E98: PopAdLdVar
  loc_9E8E99: LitVarStr var_98, "FracInmu"
  loc_9E8E9E: PopAdLdVar
  loc_9E8E9F: FLdPr Me
  loc_9E8EA2: MemLdPr RsFrm
  loc_9E8EA5: Me.Collect = from_stack_1
  loc_9E8EAA: ExitProcHresult
End Sub

Public Property Get RadiInmu() 'A34BAC
  'Data Table: 4F6F78
  loc_A34B68: ZeroRetVal
  loc_A34B6A: FLdRfVar var_B0
  loc_A34B6D: FLdRfVar var_A0
  loc_A34B70: LitVarStr var_9C, "RadiInmu"
  loc_A34B75: PopAdLdVar
  loc_A34B76: FLdRfVar var_8C
  loc_A34B79: FLdPr Me
  loc_A34B7C: MemLdPr RsFrm
  loc_A34B7F:  = Me.Fields
  loc_A34B84: FLdPr var_8C
  loc_A34B87: from_stack_2 = Me.Item(from_stack_1)
  loc_A34B8C: FLdPr var_A0
  loc_A34B8F:  = Me.Value
  loc_A34B94: FLdRfVar var_B0
  loc_A34B97: CStrVarTmp
  loc_A34B98: FStStr var_88
  loc_A34B9B: FFreeAd var_8C = ""
  loc_A34BA2: FFree1Var var_B0 = ""
  loc_A34BA5: ExitProcCbHresult
End Sub

Public Property Let RadiInmu(vDato) '9E8F00
  'Data Table: 4F6F78
  loc_9E8EE0: ILdRf vDato
  loc_9E8EE3: FStStrCopy var_88
  loc_9E8EE6: ILdRf var_88
  loc_9E8EE9: CVarStr var_A8
  loc_9E8EEC: PopAdLdVar
  loc_9E8EED: LitVarStr var_98, "RadiInmu"
  loc_9E8EF2: PopAdLdVar
  loc_9E8EF3: FLdPr Me
  loc_9E8EF6: MemLdPr RsFrm
  loc_9E8EF9: Me.Collect = from_stack_1
  loc_9E8EFE: ExitProcHresult
End Sub

Public Property Get LoteInmu() 'A34C30
  'Data Table: 4F6F78
  loc_A34BEC: ZeroRetVal
  loc_A34BEE: FLdRfVar var_B0
  loc_A34BF1: FLdRfVar var_A0
  loc_A34BF4: LitVarStr var_9C, "LoteInmu"
  loc_A34BF9: PopAdLdVar
  loc_A34BFA: FLdRfVar var_8C
  loc_A34BFD: FLdPr Me
  loc_A34C00: MemLdPr RsFrm
  loc_A34C03:  = Me.Fields
  loc_A34C08: FLdPr var_8C
  loc_A34C0B: from_stack_2 = Me.Item(from_stack_1)
  loc_A34C10: FLdPr var_A0
  loc_A34C13:  = Me.Value
  loc_A34C18: FLdRfVar var_B0
  loc_A34C1B: CStrVarTmp
  loc_A34C1C: FStStr var_88
  loc_A34C1F: FFreeAd var_8C = ""
  loc_A34C26: FFree1Var var_B0 = ""
  loc_A34C29: ExitProcCbHresult
  loc_A34C2F: SetLastSystemError
End Sub

Public Property Let LoteInmu(vDato) '9E90F8
  'Data Table: 4F6F78
  loc_9E90D8: ILdRf vDato
  loc_9E90DB: FStStrCopy var_88
  loc_9E90DE: ILdRf var_88
  loc_9E90E1: CVarStr var_A8
  loc_9E90E4: PopAdLdVar
  loc_9E90E5: LitVarStr var_98, "LoteInmu"
  loc_9E90EA: PopAdLdVar
  loc_9E90EB: FLdPr Me
  loc_9E90EE: MemLdPr RsFrm
  loc_9E90F1: Me.Collect = from_stack_1
  loc_9E90F6: ExitProcHresult
End Sub

Public Property Get PoliInmu() 'A34CB4
  'Data Table: 4F6F78
  loc_A34C70: ZeroRetVal
  loc_A34C72: FLdRfVar var_B0
  loc_A34C75: FLdRfVar var_A0
  loc_A34C78: LitVarStr var_9C, "PoliInmu"
  loc_A34C7D: PopAdLdVar
  loc_A34C7E: FLdRfVar var_8C
  loc_A34C81: FLdPr Me
  loc_A34C84: MemLdPr RsFrm
  loc_A34C87:  = Me.Fields
  loc_A34C8C: FLdPr var_8C
  loc_A34C8F: from_stack_2 = Me.Item(from_stack_1)
  loc_A34C94: FLdPr var_A0
  loc_A34C97:  = Me.Value
  loc_A34C9C: FLdRfVar var_B0
  loc_A34C9F: CStrVarTmp
  loc_A34CA0: FStStr var_88
  loc_A34CA3: FFreeAd var_8C = ""
  loc_A34CAA: FFree1Var var_B0 = ""
  loc_A34CAD: ExitProcCbHresult
End Sub

Public Property Let PoliInmu(vDato) '9E914C
  'Data Table: 4F6F78
  loc_9E912C: ILdRf vDato
  loc_9E912F: FStStrCopy var_88
  loc_9E9132: ILdRf var_88
  loc_9E9135: CVarStr var_A8
  loc_9E9138: PopAdLdVar
  loc_9E9139: LitVarStr var_98, "PoliInmu"
  loc_9E913E: PopAdLdVar
  loc_9E913F: FLdPr Me
  loc_9E9142: MemLdPr RsFrm
  loc_9E9145: Me.Collect = from_stack_1
  loc_9E914A: ExitProcHresult
End Sub

Public Property Get PaprInmu() 'A349A4
  'Data Table: 4F6F78
  loc_A34960: FLdRfVar var_B0
  loc_A34963: FLdRfVar var_A0
  loc_A34966: LitVarStr var_9C, "PaprInmu"
  loc_A3496B: PopAdLdVar
  loc_A3496C: FLdRfVar var_8C
  loc_A3496F: FLdPr Me
  loc_A34972: MemLdPr RsFrm
  loc_A34975:  = Me.Fields
  loc_A3497A: FLdPr var_8C
  loc_A3497D: from_stack_2 = Me.Item(from_stack_1)
  loc_A34982: FLdPr var_A0
  loc_A34985:  = Me.Value
  loc_A3498A: FLdRfVar var_B0
  loc_A3498D: CI4Var
  loc_A3498F: FStR4 var_88
  loc_A34992: FFreeAd var_8C = ""
  loc_A34999: FFree1Var var_B0 = ""
  loc_A3499C: ExitProcCbHresult
End Sub

Public Property Let PaprInmu(vDato) '9D81A8
  'Data Table: 4F6F78
  loc_9D818C: ILdRf vDato
  loc_9D818F: CVarI4
  loc_9D8193: PopAdLdVar
  loc_9D8194: LitVarStr var_94, "PaprInmu"
  loc_9D8199: PopAdLdVar
  loc_9D819A: FLdPr Me
  loc_9D819D: MemLdPr RsFrm
  loc_9D81A0: Me.Collect = from_stack_1
  loc_9D81A5: ExitProcHresult
End Sub

Public Property Get ExpeInmu() 'A34E40
  'Data Table: 4F6F78
  loc_A34DFC: ZeroRetVal
  loc_A34DFE: FLdRfVar var_B0
  loc_A34E01: FLdRfVar var_A0
  loc_A34E04: LitVarStr var_9C, "ExpeInmu"
  loc_A34E09: PopAdLdVar
  loc_A34E0A: FLdRfVar var_8C
  loc_A34E0D: FLdPr Me
  loc_A34E10: MemLdPr RsFrm
  loc_A34E13:  = Me.Fields
  loc_A34E18: FLdPr var_8C
  loc_A34E1B: from_stack_2 = Me.Item(from_stack_1)
  loc_A34E20: FLdPr var_A0
  loc_A34E23:  = Me.Value
  loc_A34E28: FLdRfVar var_B0
  loc_A34E2B: CStrVarTmp
  loc_A34E2C: FStStr var_88
  loc_A34E2F: FFreeAd var_8C = ""
  loc_A34E36: FFree1Var var_B0 = ""
  loc_A34E39: ExitProcCbHresult
End Sub

Public Property Let ExpeInmu(vDato) '9E8FA8
  'Data Table: 4F6F78
  loc_9E8F88: ILdRf vDato
  loc_9E8F8B: FStStrCopy var_88
  loc_9E8F8E: ILdRf var_88
  loc_9E8F91: CVarStr var_A8
  loc_9E8F94: PopAdLdVar
  loc_9E8F95: LitVarStr var_98, "ExpeInmu"
  loc_9E8F9A: PopAdLdVar
  loc_9E8F9B: FLdPr Me
  loc_9E8F9E: MemLdPr RsFrm
  loc_9E8FA1: Me.Collect = from_stack_1
  loc_9E8FA6: ExitProcHresult
End Sub

Public Property Get CodiCall() 'A346A4
  'Data Table: 4F6F78
  loc_A34660: FLdRfVar var_B0
  loc_A34663: FLdRfVar var_A0
  loc_A34666: LitVarStr var_9C, "CodiCall"
  loc_A3466B: PopAdLdVar
  loc_A3466C: FLdRfVar var_8C
  loc_A3466F: FLdPr Me
  loc_A34672: MemLdPr RsFrm
  loc_A34675:  = Me.Fields
  loc_A3467A: FLdPr var_8C
  loc_A3467D: from_stack_2 = Me.Item(from_stack_1)
  loc_A34682: FLdPr var_A0
  loc_A34685:  = Me.Value
  loc_A3468A: FLdRfVar var_B0
  loc_A3468D: CI2Var
  loc_A3468E: FStI2 var_86
  loc_A34691: FFreeAd var_8C = ""
  loc_A34698: FFree1Var var_B0 = ""
  loc_A3469B: ExitProcCbHresult
End Sub

Public Property Let CodiCall(vDato) '9D802C
  'Data Table: 4F6F78
  loc_9D8010: FLdI2 vDato
  loc_9D8013: CVarI2 var_A4
  loc_9D8016: PopAdLdVar
  loc_9D8017: LitVarStr var_94, "CodiCall"
  loc_9D801C: PopAdLdVar
  loc_9D801D: FLdPr Me
  loc_9D8020: MemLdPr RsFrm
  loc_9D8023: Me.Collect = from_stack_1
  loc_9D8028: ExitProcHresult
End Sub

Public Property Get NucaInmu() 'A34F48
  'Data Table: 4F6F78
  loc_A34F04: ZeroRetVal
  loc_A34F06: FLdRfVar var_B0
  loc_A34F09: FLdRfVar var_A0
  loc_A34F0C: LitVarStr var_9C, "NucaInmu"
  loc_A34F11: PopAdLdVar
  loc_A34F12: FLdRfVar var_8C
  loc_A34F15: FLdPr Me
  loc_A34F18: MemLdPr RsFrm
  loc_A34F1B:  = Me.Fields
  loc_A34F20: FLdPr var_8C
  loc_A34F23: from_stack_2 = Me.Item(from_stack_1)
  loc_A34F28: FLdPr var_A0
  loc_A34F2B:  = Me.Value
  loc_A34F30: FLdRfVar var_B0
  loc_A34F33: CStrVarTmp
  loc_A34F34: FStStr var_88
  loc_A34F37: FFreeAd var_8C = ""
  loc_A34F3E: FFree1Var var_B0 = ""
  loc_A34F41: ExitProcCbHresult
End Sub

Public Property Get CodiBarr() 'A34824
  'Data Table: 4F6F78
  loc_A347E0: FLdRfVar var_B0
  loc_A347E3: FLdRfVar var_A0
  loc_A347E6: LitVarStr var_9C, "CodiBarr"
  loc_A347EB: PopAdLdVar
  loc_A347EC: FLdRfVar var_8C
  loc_A347EF: FLdPr Me
  loc_A347F2: MemLdPr RsFrm
  loc_A347F5:  = Me.Fields
  loc_A347FA: FLdPr var_8C
  loc_A347FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A34802: FLdPr var_A0
  loc_A34805:  = Me.Value
  loc_A3480A: FLdRfVar var_B0
  loc_A3480D: CI2Var
  loc_A3480E: FStI2 var_86
  loc_A34811: FFreeAd var_8C = ""
  loc_A34818: FFree1Var var_B0 = ""
  loc_A3481B: ExitProcCbHresult
End Sub

Public Property Let CodiBarr(vDato) '9D7F94
  'Data Table: 4F6F78
  loc_9D7F78: FLdI2 vDato
  loc_9D7F7B: CVarI2 var_A4
  loc_9D7F7E: PopAdLdVar
  loc_9D7F7F: LitVarStr var_94, "CodiBarr"
  loc_9D7F84: PopAdLdVar
  loc_9D7F85: FLdPr Me
  loc_9D7F88: MemLdPr RsFrm
  loc_9D7F8B: Me.Collect = from_stack_1
  loc_9D7F90: ExitProcHresult
End Sub

Public Property Get MansInmu() 'A35050
  'Data Table: 4F6F78
  loc_A3500C: ZeroRetVal
  loc_A3500E: FLdRfVar var_B0
  loc_A35011: FLdRfVar var_A0
  loc_A35014: LitVarStr var_9C, "MansInmu"
  loc_A35019: PopAdLdVar
  loc_A3501A: FLdRfVar var_8C
  loc_A3501D: FLdPr Me
  loc_A35020: MemLdPr RsFrm
  loc_A35023:  = Me.Fields
  loc_A35028: FLdPr var_8C
  loc_A3502B: from_stack_2 = Me.Item(from_stack_1)
  loc_A35030: FLdPr var_A0
  loc_A35033:  = Me.Value
  loc_A35038: FLdRfVar var_B0
  loc_A3503B: CStrVarTmp
  loc_A3503C: FStStr var_88
  loc_A3503F: FFreeAd var_8C = ""
  loc_A35046: FFree1Var var_B0 = ""
  loc_A35049: ExitProcCbHresult
End Sub

Public Property Let MansInmu(vDato) '9E8FFC
  'Data Table: 4F6F78
  loc_9E8FDC: ILdRf vDato
  loc_9E8FDF: FStStrCopy var_88
  loc_9E8FE2: ILdRf var_88
  loc_9E8FE5: CVarStr var_A8
  loc_9E8FE8: PopAdLdVar
  loc_9E8FE9: LitVarStr var_98, "MansInmu"
  loc_9E8FEE: PopAdLdVar
  loc_9E8FEF: FLdPr Me
  loc_9E8FF2: MemLdPr RsFrm
  loc_9E8FF5: Me.Collect = from_stack_1
  loc_9E8FFA: ExitProcHresult
End Sub

Public Property Get CasaInmu() 'A35158
  'Data Table: 4F6F78
  loc_A35114: ZeroRetVal
  loc_A35116: FLdRfVar var_B0
  loc_A35119: FLdRfVar var_A0
  loc_A3511C: LitVarStr var_9C, "CasaInmu"
  loc_A35121: PopAdLdVar
  loc_A35122: FLdRfVar var_8C
  loc_A35125: FLdPr Me
  loc_A35128: MemLdPr RsFrm
  loc_A3512B:  = Me.Fields
  loc_A35130: FLdPr var_8C
  loc_A35133: from_stack_2 = Me.Item(from_stack_1)
  loc_A35138: FLdPr var_A0
  loc_A3513B:  = Me.Value
  loc_A35140: FLdRfVar var_B0
  loc_A35143: CStrVarTmp
  loc_A35144: FStStr var_88
  loc_A35147: FFreeAd var_8C = ""
  loc_A3514E: FFree1Var var_B0 = ""
  loc_A35151: ExitProcCbHresult
End Sub

Public Property Let CasaInmu(vDato) '9E91F4
  'Data Table: 4F6F78
  loc_9E91D4: ILdRf vDato
  loc_9E91D7: FStStrCopy var_88
  loc_9E91DA: ILdRf var_88
  loc_9E91DD: CVarStr var_A8
  loc_9E91E0: PopAdLdVar
  loc_9E91E1: LitVarStr var_98, "CasaInmu"
  loc_9E91E6: PopAdLdVar
  loc_9E91E7: FLdPr Me
  loc_9E91EA: MemLdPr RsFrm
  loc_9E91ED: Me.Collect = from_stack_1
  loc_9E91F2: ExitProcHresult
End Sub

Public Property Get CodiLoca() 'A345A4
  'Data Table: 4F6F78
  loc_A34560: FLdRfVar var_B0
  loc_A34563: FLdRfVar var_A0
  loc_A34566: LitVarStr var_9C, "CodiLoca"
  loc_A3456B: PopAdLdVar
  loc_A3456C: FLdRfVar var_8C
  loc_A3456F: FLdPr Me
  loc_A34572: MemLdPr RsFrm
  loc_A34575:  = Me.Fields
  loc_A3457A: FLdPr var_8C
  loc_A3457D: from_stack_2 = Me.Item(from_stack_1)
  loc_A34582: FLdPr var_A0
  loc_A34585:  = Me.Value
  loc_A3458A: FLdRfVar var_B0
  loc_A3458D: CI2Var
  loc_A3458E: FStI2 var_86
  loc_A34591: FFreeAd var_8C = ""
  loc_A34598: FFree1Var var_B0 = ""
  loc_A3459B: ExitProcCbHresult
  loc_A345A1: FFree1Ad CodiLocaC1
End Sub

Public Property Let CodiLoca(vDato) '9D7AD4
  'Data Table: 4F6F78
  loc_9D7AB8: FLdI2 vDato
  loc_9D7ABB: CVarI2 var_A4
  loc_9D7ABE: PopAdLdVar
  loc_9D7ABF: LitVarStr var_94, "CodiLoca"
  loc_9D7AC4: PopAdLdVar
  loc_9D7AC5: FLdPr Me
  loc_9D7AC8: MemLdPr RsFrm
  loc_9D7ACB: Me.Collect = from_stack_1
  loc_9D7AD0: ExitProcHresult
End Sub

Public Property Get CocpInmu() 'A342A4
  'Data Table: 4F6F78
  loc_A34260: FLdRfVar var_B0
  loc_A34263: FLdRfVar var_A0
  loc_A34266: LitVarStr var_9C, "CocpInmu"
  loc_A3426B: PopAdLdVar
  loc_A3426C: FLdRfVar var_8C
  loc_A3426F: FLdPr Me
  loc_A34272: MemLdPr RsFrm
  loc_A34275:  = Me.Fields
  loc_A3427A: FLdPr var_8C
  loc_A3427D: from_stack_2 = Me.Item(from_stack_1)
  loc_A34282: FLdPr var_A0
  loc_A34285:  = Me.Value
  loc_A3428A: FLdRfVar var_B0
  loc_A3428D: CI4Var
  loc_A3428F: FStR4 var_88
  loc_A34292: FFreeAd var_8C = ""
  loc_A34299: FFree1Var var_B0 = ""
  loc_A3429C: ExitProcCbHresult
  loc_A342A2: LtR8
End Sub

Public Property Get DecpInmu() 'A354F4
  'Data Table: 4F6F78
  loc_A354B0: ZeroRetVal
  loc_A354B2: FLdRfVar var_B0
  loc_A354B5: FLdRfVar var_A0
  loc_A354B8: LitVarStr var_9C, "DecpInmu"
  loc_A354BD: PopAdLdVar
  loc_A354BE: FLdRfVar var_8C
  loc_A354C1: FLdPr Me
  loc_A354C4: MemLdPr RsFrm
  loc_A354C7:  = Me.Fields
  loc_A354CC: FLdPr var_8C
  loc_A354CF: from_stack_2 = Me.Item(from_stack_1)
  loc_A354D4: FLdPr var_A0
  loc_A354D7:  = Me.Value
  loc_A354DC: FLdRfVar var_B0
  loc_A354DF: CStrVarTmp
  loc_A354E0: FStStr var_88
  loc_A354E3: FFreeAd var_8C = ""
  loc_A354EA: FFree1Var var_B0 = ""
  loc_A354ED: ExitProcCbHresult
End Sub

Public Property Get NupoInmu() 'A34924
  'Data Table: 4F6F78
  loc_A348E0: FLdRfVar var_B0
  loc_A348E3: FLdRfVar var_A0
  loc_A348E6: LitVarStr var_9C, "NupoInmu"
  loc_A348EB: PopAdLdVar
  loc_A348EC: FLdRfVar var_8C
  loc_A348EF: FLdPr Me
  loc_A348F2: MemLdPr RsFrm
  loc_A348F5:  = Me.Fields
  loc_A348FA: FLdPr var_8C
  loc_A348FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A34902: FLdPr var_A0
  loc_A34905:  = Me.Value
  loc_A3490A: FLdRfVar var_B0
  loc_A3490D: CI4Var
  loc_A3490F: FStR4 var_88
  loc_A34912: FFreeAd var_8C = ""
  loc_A34919: FFree1Var var_B0 = ""
  loc_A3491C: ExitProcCbHresult
  loc_A34922: UMiI2
End Sub

Public Property Get CobpInmu() 'A341A4
  'Data Table: 4F6F78
  loc_A34160: FLdRfVar var_B0
  loc_A34163: FLdRfVar var_A0
  loc_A34166: LitVarStr var_9C, "CobpInmu"
  loc_A3416B: PopAdLdVar
  loc_A3416C: FLdRfVar var_8C
  loc_A3416F: FLdPr Me
  loc_A34172: MemLdPr RsFrm
  loc_A34175:  = Me.Fields
  loc_A3417A: FLdPr var_8C
  loc_A3417D: from_stack_2 = Me.Item(from_stack_1)
  loc_A34182: FLdPr var_A0
  loc_A34185:  = Me.Value
  loc_A3418A: FLdRfVar var_B0
  loc_A3418D: CI2Var
  loc_A3418E: FStI2 var_86
  loc_A34191: FFreeAd var_8C = ""
  loc_A34198: FFree1Var var_B0 = ""
  loc_A3419B: ExitProcCbHresult
End Sub

Public Property Get DebpInmu() 'A35680
  'Data Table: 4F6F78
  loc_A3563C: ZeroRetVal
  loc_A3563E: FLdRfVar var_B0
  loc_A35641: FLdRfVar var_A0
  loc_A35644: LitVarStr var_9C, "DebpInmu"
  loc_A35649: PopAdLdVar
  loc_A3564A: FLdRfVar var_8C
  loc_A3564D: FLdPr Me
  loc_A35650: MemLdPr RsFrm
  loc_A35653:  = Me.Fields
  loc_A35658: FLdPr var_8C
  loc_A3565B: from_stack_2 = Me.Item(from_stack_1)
  loc_A35660: FLdPr var_A0
  loc_A35663:  = Me.Value
  loc_A35668: FLdRfVar var_B0
  loc_A3566B: CStrVarTmp
  loc_A3566C: FStStr var_88
  loc_A3566F: FFreeAd var_8C = ""
  loc_A35676: FFree1Var var_B0 = ""
  loc_A35679: ExitProcCbHresult
End Sub

Public Property Get MapoInmu() 'A35704
  'Data Table: 4F6F78
  loc_A356C0: ZeroRetVal
  loc_A356C2: FLdRfVar var_B0
  loc_A356C5: FLdRfVar var_A0
  loc_A356C8: LitVarStr var_9C, "MapoInmu"
  loc_A356CD: PopAdLdVar
  loc_A356CE: FLdRfVar var_8C
  loc_A356D1: FLdPr Me
  loc_A356D4: MemLdPr RsFrm
  loc_A356D7:  = Me.Fields
  loc_A356DC: FLdPr var_8C
  loc_A356DF: from_stack_2 = Me.Item(from_stack_1)
  loc_A356E4: FLdPr var_A0
  loc_A356E7:  = Me.Value
  loc_A356EC: FLdRfVar var_B0
  loc_A356EF: CStrVarTmp
  loc_A356F0: FStStr var_88
  loc_A356F3: FFreeAd var_8C = ""
  loc_A356FA: FFree1Var var_B0 = ""
  loc_A356FD: ExitProcCbHresult
End Sub

Public Property Get CapoInmu() 'A35788
  'Data Table: 4F6F78
  loc_A35744: ZeroRetVal
  loc_A35746: FLdRfVar var_B0
  loc_A35749: FLdRfVar var_A0
  loc_A3574C: LitVarStr var_9C, "CapoInmu"
  loc_A35751: PopAdLdVar
  loc_A35752: FLdRfVar var_8C
  loc_A35755: FLdPr Me
  loc_A35758: MemLdPr RsFrm
  loc_A3575B:  = Me.Fields
  loc_A35760: FLdPr var_8C
  loc_A35763: from_stack_2 = Me.Item(from_stack_1)
  loc_A35768: FLdPr var_A0
  loc_A3576B:  = Me.Value
  loc_A35770: FLdRfVar var_B0
  loc_A35773: CStrVarTmp
  loc_A35774: FStStr var_88
  loc_A35777: FFreeAd var_8C = ""
  loc_A3577E: FFree1Var var_B0 = ""
  loc_A35781: ExitProcCbHresult
End Sub

Public Property Get UbpoInmu() 'A3580C
  'Data Table: 4F6F78
  loc_A357C8: ZeroRetVal
  loc_A357CA: FLdRfVar var_B0
  loc_A357CD: FLdRfVar var_A0
  loc_A357D0: LitVarStr var_9C, "UbpoInmu"
  loc_A357D5: PopAdLdVar
  loc_A357D6: FLdRfVar var_8C
  loc_A357D9: FLdPr Me
  loc_A357DC: MemLdPr RsFrm
  loc_A357DF:  = Me.Fields
  loc_A357E4: FLdPr var_8C
  loc_A357E7: from_stack_2 = Me.Item(from_stack_1)
  loc_A357EC: FLdPr var_A0
  loc_A357EF:  = Me.Value
  loc_A357F4: FLdRfVar var_B0
  loc_A357F7: CStrVarTmp
  loc_A357F8: FStStr var_88
  loc_A357FB: FFreeAd var_8C = ""
  loc_A35802: FFree1Var var_B0 = ""
  loc_A35805: ExitProcCbHresult
End Sub

Public Property Get ColpInmu() 'A33DA4
  'Data Table: 4F6F78
  loc_A33D60: FLdRfVar var_B0
  loc_A33D63: FLdRfVar var_A0
  loc_A33D66: LitVarStr var_9C, "ColpInmu"
  loc_A33D6B: PopAdLdVar
  loc_A33D6C: FLdRfVar var_8C
  loc_A33D6F: FLdPr Me
  loc_A33D72: MemLdPr RsFrm
  loc_A33D75:  = Me.Fields
  loc_A33D7A: FLdPr var_8C
  loc_A33D7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A33D82: FLdPr var_A0
  loc_A33D85:  = Me.Value
  loc_A33D8A: FLdRfVar var_B0
  loc_A33D8D: CI2Var
  loc_A33D8E: FStI2 var_86
  loc_A33D91: FFreeAd var_8C = ""
  loc_A33D98: FFree1Var var_B0 = ""
  loc_A33D9B: ExitProcCbHresult
End Sub

Public Property Get DelpInmu() 'A35914
  'Data Table: 4F6F78
  loc_A358D0: ZeroRetVal
  loc_A358D2: FLdRfVar var_B0
  loc_A358D5: FLdRfVar var_A0
  loc_A358D8: LitVarStr var_9C, "DelpInmu"
  loc_A358DD: PopAdLdVar
  loc_A358DE: FLdRfVar var_8C
  loc_A358E1: FLdPr Me
  loc_A358E4: MemLdPr RsFrm
  loc_A358E7:  = Me.Fields
  loc_A358EC: FLdPr var_8C
  loc_A358EF: from_stack_2 = Me.Item(from_stack_1)
  loc_A358F4: FLdPr var_A0
  loc_A358F7:  = Me.Value
  loc_A358FC: FLdRfVar var_B0
  loc_A358FF: CStrVarTmp
  loc_A35900: FStStr var_88
  loc_A35903: FFreeAd var_8C = ""
  loc_A3590A: FFree1Var var_B0 = ""
  loc_A3590D: ExitProcCbHresult
  loc_A35913: ExitProcI2
End Sub

Public Property Get CoppInmu() 'A35998
  'Data Table: 4F6F78
  loc_A35954: ZeroRetVal
  loc_A35956: FLdRfVar var_B0
  loc_A35959: FLdRfVar var_A0
  loc_A3595C: LitVarStr var_9C, "CoppInmu"
  loc_A35961: PopAdLdVar
  loc_A35962: FLdRfVar var_8C
  loc_A35965: FLdPr Me
  loc_A35968: MemLdPr RsFrm
  loc_A3596B:  = Me.Fields
  loc_A35970: FLdPr var_8C
  loc_A35973: from_stack_2 = Me.Item(from_stack_1)
  loc_A35978: FLdPr var_A0
  loc_A3597B:  = Me.Value
  loc_A35980: FLdRfVar var_B0
  loc_A35983: CStrVarTmp
  loc_A35984: FStStr var_88
  loc_A35987: FFreeAd var_8C = ""
  loc_A3598E: FFree1Var var_B0 = ""
  loc_A35991: ExitProcCbHresult
End Sub

Public Property Get FeesInmu() 'A35A1C
  'Data Table: 4F6F78
  loc_A359D8: ZeroRetVal
  loc_A359DA: FLdRfVar var_B0
  loc_A359DD: FLdRfVar var_A0
  loc_A359E0: LitVarStr var_9C, "FeesInmu"
  loc_A359E5: PopAdLdVar
  loc_A359E6: FLdRfVar var_8C
  loc_A359E9: FLdPr Me
  loc_A359EC: MemLdPr RsFrm
  loc_A359EF:  = Me.Fields
  loc_A359F4: FLdPr var_8C
  loc_A359F7: from_stack_2 = Me.Item(from_stack_1)
  loc_A359FC: FLdPr var_A0
  loc_A359FF:  = Me.Value
  loc_A35A04: FLdRfVar var_B0
  loc_A35A07: CStrVarTmp
  loc_A35A08: FStStr var_88
  loc_A35A0B: FFreeAd var_8C = ""
  loc_A35A12: FFree1Var var_B0 = ""
  loc_A35A15: ExitProcCbHresult
End Sub

Public Property Let FeesInmu(vDato) '9E93EC
  'Data Table: 4F6F78
  loc_9E93CC: ILdRf vDato
  loc_9E93CF: FStStrCopy var_88
  loc_9E93D2: ILdRf var_88
  loc_9E93D5: CVarStr var_A8
  loc_9E93D8: PopAdLdVar
  loc_9E93D9: LitVarStr var_98, "FeesInmu"
  loc_9E93DE: PopAdLdVar
  loc_9E93DF: FLdPr Me
  loc_9E93E2: MemLdPr RsFrm
  loc_9E93E5: Me.Collect = from_stack_1
  loc_9E93EA: ExitProcHresult
End Sub

Public Property Get SupeInmu() 'A34024
  'Data Table: 4F6F78
  loc_A33FE0: FLdRfVar var_B4
  loc_A33FE3: FLdRfVar var_A4
  loc_A33FE6: LitVarStr var_A0, "SupeInmu"
  loc_A33FEB: PopAdLdVar
  loc_A33FEC: FLdRfVar var_90
  loc_A33FEF: FLdPr Me
  loc_A33FF2: MemLdPr RsFrm
  loc_A33FF5:  = Me.Fields
  loc_A33FFA: FLdPr var_90
  loc_A33FFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A34002: FLdPr var_A4
  loc_A34005:  = Me.Value
  loc_A3400A: FLdRfVar var_B4
  loc_A3400D: CR4Var
  loc_A3400E: FStFPR8 var_8C
  loc_A34011: FFreeAd var_90 = ""
  loc_A34018: FFree1Var var_B4 = ""
  loc_A3401B: ExitProcCbHresult
  loc_A34021: MemLdRfVar from_stack_1.global_1225
End Sub

Public Property Let SupeInmu(vDato) '9D7958
  'Data Table: 4F6F78
  loc_9D793C: FLdFPR8 vDato
  loc_9D793F: CVarR8
  loc_9D7943: PopAdLdVar
  loc_9D7944: LitVarStr var_94, "SupeInmu"
  loc_9D7949: PopAdLdVar
  loc_9D794A: FLdPr Me
  loc_9D794D: MemLdPr RsFrm
  loc_9D7950: Me.Collect = from_stack_1
  loc_9D7955: ExitProcHresult
  loc_9D7956: ImpAdStFPR4 MemVar_559634
End Sub

Public Property Get SucuInmu() 'A33BA4
  'Data Table: 4F6F78
  loc_A33B60: FLdRfVar var_B4
  loc_A33B63: FLdRfVar var_A4
  loc_A33B66: LitVarStr var_A0, "SucuInmu"
  loc_A33B6B: PopAdLdVar
  loc_A33B6C: FLdRfVar var_90
  loc_A33B6F: FLdPr Me
  loc_A33B72: MemLdPr RsFrm
  loc_A33B75:  = Me.Fields
  loc_A33B7A: FLdPr var_90
  loc_A33B7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A33B82: FLdPr var_A4
  loc_A33B85:  = Me.Value
  loc_A33B8A: FLdRfVar var_B4
  loc_A33B8D: CR4Var
  loc_A33B8E: FStFPR8 var_8C
  loc_A33B91: FFreeAd var_90 = ""
  loc_A33B98: FFree1Var var_B4 = ""
  loc_A33B9B: ExitProcCbHresult
End Sub

Public Property Let SucuInmu(vDato) '9D7828
  'Data Table: 4F6F78
  loc_9D780C: FLdFPR8 vDato
  loc_9D780F: CVarR8
  loc_9D7813: PopAdLdVar
  loc_9D7814: LitVarStr var_94, "SucuInmu"
  loc_9D7819: PopAdLdVar
  loc_9D781A: FLdPr Me
  loc_9D781D: MemLdPr RsFrm
  loc_9D7820: Me.Collect = from_stack_1
  loc_9D7825: ExitProcHresult
End Sub

Public Property Get SudeInmu() 'A33A24
  'Data Table: 4F6F78
  loc_A339E0: FLdRfVar var_B4
  loc_A339E3: FLdRfVar var_A4
  loc_A339E6: LitVarStr var_A0, "SudeInmu"
  loc_A339EB: PopAdLdVar
  loc_A339EC: FLdRfVar var_90
  loc_A339EF: FLdPr Me
  loc_A339F2: MemLdPr RsFrm
  loc_A339F5:  = Me.Fields
  loc_A339FA: FLdPr var_90
  loc_A339FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A33A02: FLdPr var_A4
  loc_A33A05:  = Me.Value
  loc_A33A0A: FLdRfVar var_B4
  loc_A33A0D: CR4Var
  loc_A33A0E: FStFPR8 var_8C
  loc_A33A11: FFreeAd var_90 = ""
  loc_A33A18: FFree1Var var_B4 = ""
  loc_A33A1B: ExitProcCbHresult
End Sub

Public Property Let SudeInmu(vDato) '9D7614
  'Data Table: 4F6F78
  loc_9D75F8: FLdFPR8 vDato
  loc_9D75FB: CVarR8
  loc_9D75FF: PopAdLdVar
  loc_9D7600: LitVarStr var_94, "SudeInmu"
  loc_9D7605: PopAdLdVar
  loc_9D7606: FLdPr Me
  loc_9D7609: MemLdPr RsFrm
  loc_9D760C: Me.Collect = from_stack_1
  loc_9D7611: ExitProcHresult
  loc_9D7612: EqCy
End Sub

Public Property Get SuscInmu() 'A33524
  'Data Table: 4F6F78
  loc_A334E0: FLdRfVar var_B4
  loc_A334E3: FLdRfVar var_A4
  loc_A334E6: LitVarStr var_A0, "SuscInmu"
  loc_A334EB: PopAdLdVar
  loc_A334EC: FLdRfVar var_90
  loc_A334EF: FLdPr Me
  loc_A334F2: MemLdPr RsFrm
  loc_A334F5:  = Me.Fields
  loc_A334FA: FLdPr var_90
  loc_A334FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A33502: FLdPr var_A4
  loc_A33505:  = Me.Value
  loc_A3350A: FLdRfVar var_B4
  loc_A3350D: CR4Var
  loc_A3350E: FStFPR8 var_8C
  loc_A33511: FFreeAd var_90 = ""
  loc_A33518: FFree1Var var_B4 = ""
  loc_A3351B: ExitProcCbHresult
  loc_A33521: ExitProcI2
  loc_A33522: EqCy
End Sub

Public Property Let SuscInmu(vDato) '9D757C
  'Data Table: 4F6F78
  loc_9D7560: FLdFPR8 vDato
  loc_9D7563: CVarR8
  loc_9D7567: PopAdLdVar
  loc_9D7568: LitVarStr var_94, "SuscInmu"
  loc_9D756D: PopAdLdVar
  loc_9D756E: FLdPr Me
  loc_9D7571: MemLdPr RsFrm
  loc_9D7574: Me.Collect = from_stack_1
  loc_9D7579: ExitProcHresult
  loc_9D757A: EqCy
End Sub

Public Property Get SucmInmu() 'A33724
  'Data Table: 4F6F78
  loc_A336E0: FLdRfVar var_B4
  loc_A336E3: FLdRfVar var_A4
  loc_A336E6: LitVarStr var_A0, "SucmInmu"
  loc_A336EB: PopAdLdVar
  loc_A336EC: FLdRfVar var_90
  loc_A336EF: FLdPr Me
  loc_A336F2: MemLdPr RsFrm
  loc_A336F5:  = Me.Fields
  loc_A336FA: FLdPr var_90
  loc_A336FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A33702: FLdPr var_A4
  loc_A33705:  = Me.Value
  loc_A3370A: FLdRfVar var_B4
  loc_A3370D: CR4Var
  loc_A3370E: FStFPR8 var_8C
  loc_A33711: FFreeAd var_90 = ""
  loc_A33718: FFree1Var var_B4 = ""
  loc_A3371B: ExitProcCbHresult
End Sub

Public Property Let SucmInmu(vDato) '9D7368
  'Data Table: 4F6F78
  loc_9D734C: FLdFPR8 vDato
  loc_9D734F: CVarR8
  loc_9D7353: PopAdLdVar
  loc_9D7354: LitVarStr var_94, "SucmInmu"
  loc_9D7359: PopAdLdVar
  loc_9D735A: FLdPr Me
  loc_9D735D: MemLdPr RsFrm
  loc_9D7360: Me.Collect = from_stack_1
  loc_9D7365: ExitProcHresult
End Sub

Public Property Get PohoInmu() 'A347A4
  'Data Table: 4F6F78
  loc_A34760: FLdRfVar var_B4
  loc_A34763: FLdRfVar var_A4
  loc_A34766: LitVarStr var_A0, "PohoInmu"
  loc_A3476B: PopAdLdVar
  loc_A3476C: FLdRfVar var_90
  loc_A3476F: FLdPr Me
  loc_A34772: MemLdPr RsFrm
  loc_A34775:  = Me.Fields
  loc_A3477A: FLdPr var_90
  loc_A3477D: from_stack_2 = Me.Item(from_stack_1)
  loc_A34782: FLdPr var_A4
  loc_A34785:  = Me.Value
  loc_A3478A: FLdRfVar var_B4
  loc_A3478D: CR4Var
  loc_A3478E: FStFPR8 var_8C
  loc_A34791: FFreeAd var_90 = ""
  loc_A34798: FFree1Var var_B4 = ""
  loc_A3479B: ExitProcCbHresult
End Sub

Public Property Let PohoInmu(vDato) '9D72D0
  'Data Table: 4F6F78
  loc_9D72B4: FLdFPR8 vDato
  loc_9D72B7: CVarR8
  loc_9D72BB: PopAdLdVar
  loc_9D72BC: LitVarStr var_94, "PohoInmu"
  loc_9D72C1: PopAdLdVar
  loc_9D72C2: FLdPr Me
  loc_9D72C5: MemLdPr RsFrm
  loc_9D72C8: Me.Collect = from_stack_1
  loc_9D72CD: ExitProcHresult
End Sub

Public Property Get SuprInmu() 'A330A4
  'Data Table: 4F6F78
  loc_A33060: FLdRfVar var_B4
  loc_A33063: FLdRfVar var_A4
  loc_A33066: LitVarStr var_A0, "SuprInmu"
  loc_A3306B: PopAdLdVar
  loc_A3306C: FLdRfVar var_90
  loc_A3306F: FLdPr Me
  loc_A33072: MemLdPr RsFrm
  loc_A33075:  = Me.Fields
  loc_A3307A: FLdPr var_90
  loc_A3307D: from_stack_2 = Me.Item(from_stack_1)
  loc_A33082: FLdPr var_A4
  loc_A33085:  = Me.Value
  loc_A3308A: FLdRfVar var_B4
  loc_A3308D: CR4Var
  loc_A3308E: FStFPR8 var_8C
  loc_A33091: FFreeAd var_90 = ""
  loc_A33098: FFree1Var var_B4 = ""
  loc_A3309B: ExitProcCbHresult
  loc_A330A1: IDvI4
  loc_A330A2: VCallAd Control_ID_
End Sub

Public Property Let SuprInmu(vDato) '9D71A0
  'Data Table: 4F6F78
  loc_9D7184: FLdFPR8 vDato
  loc_9D7187: CVarR8
  loc_9D718B: PopAdLdVar
  loc_9D718C: LitVarStr var_94, "SuprInmu"
  loc_9D7191: PopAdLdVar
  loc_9D7192: FLdPr Me
  loc_9D7195: MemLdPr RsFrm
  loc_9D7198: Me.Collect = from_stack_1
  loc_9D719D: ExitProcHresult
End Sub

Public Property Get SusuInmu() 'A344A4
  'Data Table: 4F6F78
  loc_A34460: FLdRfVar var_B4
  loc_A34463: FLdRfVar var_A4
  loc_A34466: LitVarStr var_A0, "SusuInmu"
  loc_A3446B: PopAdLdVar
  loc_A3446C: FLdRfVar var_90
  loc_A3446F: FLdPr Me
  loc_A34472: MemLdPr RsFrm
  loc_A34475:  = Me.Fields
  loc_A3447A: FLdPr var_90
  loc_A3447D: from_stack_2 = Me.Item(from_stack_1)
  loc_A34482: FLdPr var_A4
  loc_A34485:  = Me.Value
  loc_A3448A: FLdRfVar var_B4
  loc_A3448D: CR4Var
  loc_A3448E: FStFPR8 var_8C
  loc_A34491: FFreeAd var_90 = ""
  loc_A34498: FFree1Var var_B4 = ""
  loc_A3449B: ExitProcCbHresult
End Sub

Public Property Let SusuInmu(vDato) '9D6F8C
  'Data Table: 4F6F78
  loc_9D6F70: FLdFPR8 vDato
  loc_9D6F73: CVarR8
  loc_9D6F77: PopAdLdVar
  loc_9D6F78: LitVarStr var_94, "SusuInmu"
  loc_9D6F7D: PopAdLdVar
  loc_9D6F7E: FLdPr Me
  loc_9D6F81: MemLdPr RsFrm
  loc_9D6F84: Me.Collect = from_stack_1
  loc_9D6F89: ExitProcHresult
  loc_9D6F8A: NeI4
  loc_9D6F8B: CI4Cy
End Sub

Public Property Get SubaInmu() 'A34224
  'Data Table: 4F6F78
  loc_A341E0: FLdRfVar var_B4
  loc_A341E3: FLdRfVar var_A4
  loc_A341E6: LitVarStr var_A0, "SubaInmu"
  loc_A341EB: PopAdLdVar
  loc_A341EC: FLdRfVar var_90
  loc_A341EF: FLdPr Me
  loc_A341F2: MemLdPr RsFrm
  loc_A341F5:  = Me.Fields
  loc_A341FA: FLdPr var_90
  loc_A341FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A34202: FLdPr var_A4
  loc_A34205:  = Me.Value
  loc_A3420A: FLdRfVar var_B4
  loc_A3420D: CR4Var
  loc_A3420E: FStFPR8 var_8C
  loc_A34211: FFreeAd var_90 = ""
  loc_A34218: FFree1Var var_B4 = ""
  loc_A3421B: ExitProcCbHresult
End Sub

Public Property Let SubaInmu(vDato) '9D6E10
  'Data Table: 4F6F78
  loc_9D6DF4: FLdFPR8 vDato
  loc_9D6DF7: CVarR8
  loc_9D6DFB: PopAdLdVar
  loc_9D6DFC: LitVarStr var_94, "SubaInmu"
  loc_9D6E01: PopAdLdVar
  loc_9D6E02: FLdPr Me
  loc_9D6E05: MemLdPr RsFrm
  loc_9D6E08: Me.Collect = from_stack_1
  loc_9D6E0D: ExitProcHresult
  loc_9D6E0E: ExitProcI2
End Sub

Public Property Get SuenInmu() 'A323A4
  'Data Table: 4F6F78
  loc_A32360: FLdRfVar var_B4
  loc_A32363: FLdRfVar var_A4
  loc_A32366: LitVarStr var_A0, "SuenInmu"
  loc_A3236B: PopAdLdVar
  loc_A3236C: FLdRfVar var_90
  loc_A3236F: FLdPr Me
  loc_A32372: MemLdPr RsFrm
  loc_A32375:  = Me.Fields
  loc_A3237A: FLdPr var_90
  loc_A3237D: from_stack_2 = Me.Item(from_stack_1)
  loc_A32382: FLdPr var_A4
  loc_A32385:  = Me.Value
  loc_A3238A: FLdRfVar var_B4
  loc_A3238D: CR4Var
  loc_A3238E: FStFPR8 var_8C
  loc_A32391: FFreeAd var_90 = ""
  loc_A32398: FFree1Var var_B4 = ""
  loc_A3239B: ExitProcCbHresult
  loc_A323A1: VCallFPR8 0
End Sub

Public Property Let SuenInmu(vDato) '9D6DC4
  'Data Table: 4F6F78
  loc_9D6DA8: FLdFPR8 vDato
  loc_9D6DAB: CVarR8
  loc_9D6DAF: PopAdLdVar
  loc_9D6DB0: LitVarStr var_94, "SuenInmu"
  loc_9D6DB5: PopAdLdVar
  loc_9D6DB6: FLdPr Me
  loc_9D6DB9: MemLdPr RsFrm
  loc_9D6DBC: Me.Collect = from_stack_1
  loc_9D6DC1: ExitProcHresult
End Sub

Public Property Get CodiEsin() 'A30B24
  'Data Table: 4F6F78
  loc_A30AE0: FLdRfVar var_B0
  loc_A30AE3: FLdRfVar var_A0
  loc_A30AE6: LitVarStr var_9C, "CodiEsin"
  loc_A30AEB: PopAdLdVar
  loc_A30AEC: FLdRfVar var_8C
  loc_A30AEF: FLdPr Me
  loc_A30AF2: MemLdPr RsFrm
  loc_A30AF5:  = Me.Fields
  loc_A30AFA: FLdPr var_8C
  loc_A30AFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A30B02: FLdPr var_A0
  loc_A30B05:  = Me.Value
  loc_A30B0A: FLdRfVar var_B0
  loc_A30B0D: CUI1Var
  loc_A30B0F: FStUI1 var_86
  loc_A30B13: FFreeAd var_8C = ""
  loc_A30B1A: FFree1Var var_B0 = ""
  loc_A30B1D: ExitProcCbHresult
End Sub

Public Property Let CodiEsin(vDato) '9D6D2C
  'Data Table: 4F6F78
  loc_9D6D10: FLdUI1
  loc_9D6D14: CVarUI1
  loc_9D6D18: PopAdLdVar
  loc_9D6D19: LitVarStr var_94, "CodiEsin"
  loc_9D6D1E: PopAdLdVar
  loc_9D6D1F: FLdPr Me
  loc_9D6D22: MemLdPr RsFrm
  loc_9D6D25: Me.Collect = from_stack_1
  loc_9D6D2A: ExitProcHresult
End Sub

Public Property Get CodiExce() 'A30AA4
  'Data Table: 4F6F78
  loc_A30A60: FLdRfVar var_B0
  loc_A30A63: FLdRfVar var_A0
  loc_A30A66: LitVarStr var_9C, "CodiExce"
  loc_A30A6B: PopAdLdVar
  loc_A30A6C: FLdRfVar var_8C
  loc_A30A6F: FLdPr Me
  loc_A30A72: MemLdPr RsFrm
  loc_A30A75:  = Me.Fields
  loc_A30A7A: FLdPr var_8C
  loc_A30A7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A30A82: FLdPr var_A0
  loc_A30A85:  = Me.Value
  loc_A30A8A: FLdRfVar var_B0
  loc_A30A8D: CUI1Var
  loc_A30A8F: FStUI1 var_86
  loc_A30A93: FFreeAd var_8C = ""
  loc_A30A9A: FFree1Var var_B0 = ""
  loc_A30A9D: ExitProcCbHresult
End Sub

Public Property Let CodiExce(vDato) '9D6C94
  'Data Table: 4F6F78
  loc_9D6C78: FLdUI1
  loc_9D6C7C: CVarUI1
  loc_9D6C80: PopAdLdVar
  loc_9D6C81: LitVarStr var_94, "CodiExce"
  loc_9D6C86: PopAdLdVar
  loc_9D6C87: FLdPr Me
  loc_9D6C8A: MemLdPr RsFrm
  loc_9D6C8D: Me.Collect = from_stack_1
  loc_9D6C92: ExitProcHresult
End Sub

Public Property Get FfexInmu() 'A12C40
  'Data Table: 4F6F78
  loc_A12C08: ZeroRetValVar
  loc_A12C0A: FLdRfVar var_AC
  loc_A12C0D: LitVarStr var_A8, "FfexInmu"
  loc_A12C12: PopAdLdVar
  loc_A12C13: FLdRfVar var_98
  loc_A12C16: FLdPr Me
  loc_A12C19: MemLdPr RsFrm
  loc_A12C1C:  = Me.Fields
  loc_A12C21: FLdPr var_98
  loc_A12C24: from_stack_2 = Me.Item(from_stack_1)
  loc_A12C29: FLdZeroAd var_AC
  loc_A12C2C: CVarAd
  loc_A12C30: FStVar FfexInmu
  loc_A12C34: FFree1Ad var_98
  loc_A12C37: ExitProcCbHresult
End Sub

Public Property Let FfexInmu(vDato) '9DE2FC
  'Data Table: 4F6F78
  loc_9DE2E0: FDupVar
  loc_9DE2E6: FLdVar var_94
  loc_9DE2EA: LitVarStr var_A4, "FfexInmu"
  loc_9DE2EF: PopAdLdVar
  loc_9DE2F0: FLdPr Me
  loc_9DE2F3: MemLdPr RsFrm
  loc_9DE2F6: Me.Collect = from_stack_1
  loc_9DE2FB: ExitProcHresult
End Sub

Public Property Get UbicInmu() 'A3667C
  'Data Table: 4F6F78
  loc_A36638: ZeroRetVal
  loc_A3663A: FLdRfVar var_B0
  loc_A3663D: FLdRfVar var_A0
  loc_A36640: LitVarStr var_9C, "UbicInmu"
  loc_A36645: PopAdLdVar
  loc_A36646: FLdRfVar var_8C
  loc_A36649: FLdPr Me
  loc_A3664C: MemLdPr RsFrm
  loc_A3664F:  = Me.Fields
  loc_A36654: FLdPr var_8C
  loc_A36657: from_stack_2 = Me.Item(from_stack_1)
  loc_A3665C: FLdPr var_A0
  loc_A3665F:  = Me.Value
  loc_A36664: FLdRfVar var_B0
  loc_A36667: CStrVarTmp
  loc_A36668: FStStr var_88
  loc_A3666B: FFreeAd var_8C = ""
  loc_A36672: FFree1Var var_B0 = ""
  loc_A36675: ExitProcCbHresult
End Sub

Public Property Let UbicInmu(vDato) '9E9398
  'Data Table: 4F6F78
  loc_9E9378: ILdRf vDato
  loc_9E937B: FStStrCopy var_88
  loc_9E937E: ILdRf var_88
  loc_9E9381: CVarStr var_A8
  loc_9E9384: PopAdLdVar
  loc_9E9385: LitVarStr var_98, "UbicInmu"
  loc_9E938A: PopAdLdVar
  loc_9E938B: FLdPr Me
  loc_9E938E: MemLdPr RsFrm
  loc_9E9391: Me.Collect = from_stack_1
  loc_9E9396: ExitProcHresult
End Sub

Public Property Get ObseInmu() 'A36784
  'Data Table: 4F6F78
  loc_A36740: ZeroRetVal
  loc_A36742: FLdRfVar var_B0
  loc_A36745: FLdRfVar var_A0
  loc_A36748: LitVarStr var_9C, "ObseInmu"
  loc_A3674D: PopAdLdVar
  loc_A3674E: FLdRfVar var_8C
  loc_A36751: FLdPr Me
  loc_A36754: MemLdPr RsFrm
  loc_A36757:  = Me.Fields
  loc_A3675C: FLdPr var_8C
  loc_A3675F: from_stack_2 = Me.Item(from_stack_1)
  loc_A36764: FLdPr var_A0
  loc_A36767:  = Me.Value
  loc_A3676C: FLdRfVar var_B0
  loc_A3676F: CStrVarTmp
  loc_A36770: FStStr var_88
  loc_A36773: FFreeAd var_8C = ""
  loc_A3677A: FFree1Var var_B0 = ""
  loc_A3677D: ExitProcCbHresult
End Sub

Public Property Let ObseInmu(vDato) '9E9440
  'Data Table: 4F6F78
  loc_9E9420: ILdRf vDato
  loc_9E9423: FStStrCopy var_88
  loc_9E9426: ILdRf var_88
  loc_9E9429: CVarStr var_A8
  loc_9E942C: PopAdLdVar
  loc_9E942D: LitVarStr var_98, "ObseInmu"
  loc_9E9432: PopAdLdVar
  loc_9E9433: FLdPr Me
  loc_9E9436: MemLdPr RsFrm
  loc_9E9439: Me.Collect = from_stack_1
  loc_9E943E: ExitProcHresult
End Sub

Public Property Get BonoInmu() 'A32CA4
  'Data Table: 4F6F78
  loc_A32C60: FLdRfVar var_B0
  loc_A32C63: FLdRfVar var_A0
  loc_A32C66: LitVarStr var_9C, "BonoInmu"
  loc_A32C6B: PopAdLdVar
  loc_A32C6C: FLdRfVar var_8C
  loc_A32C6F: FLdPr Me
  loc_A32C72: MemLdPr RsFrm
  loc_A32C75:  = Me.Fields
  loc_A32C7A: FLdPr var_8C
  loc_A32C7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A32C82: FLdPr var_A0
  loc_A32C85:  = Me.Value
  loc_A32C8A: FLdRfVar var_B0
  loc_A32C8D: CUI1Var
  loc_A32C8F: FStUI1 var_86
  loc_A32C93: FFreeAd var_8C = ""
  loc_A32C9A: FFree1Var var_B0 = ""
  loc_A32C9D: ExitProcCbHresult
End Sub

Public Property Get PeriInmu() 'A2F224
  'Data Table: 4F6F78
  loc_A2F1E0: FLdRfVar var_B0
  loc_A2F1E3: FLdRfVar var_A0
  loc_A2F1E6: LitVarStr var_9C, "PeriInmu"
  loc_A2F1EB: PopAdLdVar
  loc_A2F1EC: FLdRfVar var_8C
  loc_A2F1EF: FLdPr Me
  loc_A2F1F2: MemLdPr RsFrm
  loc_A2F1F5:  = Me.Fields
  loc_A2F1FA: FLdPr var_8C
  loc_A2F1FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F202: FLdPr var_A0
  loc_A2F205:  = Me.Value
  loc_A2F20A: FLdRfVar var_B0
  loc_A2F20D: CI2Var
  loc_A2F20E: FStI2 var_86
  loc_A2F211: FFreeAd var_8C = ""
  loc_A2F218: FFree1Var var_B0 = ""
  loc_A2F21B: ExitProcCbHresult
End Sub

Public Property Get BimeInmu() 'A2EFA4
  'Data Table: 4F6F78
  loc_A2EF60: FLdRfVar var_B0
  loc_A2EF63: FLdRfVar var_A0
  loc_A2EF66: LitVarStr var_9C, "BimeInmu"
  loc_A2EF6B: PopAdLdVar
  loc_A2EF6C: FLdRfVar var_8C
  loc_A2EF6F: FLdPr Me
  loc_A2EF72: MemLdPr RsFrm
  loc_A2EF75:  = Me.Fields
  loc_A2EF7A: FLdPr var_8C
  loc_A2EF7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2EF82: FLdPr var_A0
  loc_A2EF85:  = Me.Value
  loc_A2EF8A: FLdRfVar var_B0
  loc_A2EF8D: CUI1Var
  loc_A2EF8F: FStUI1 var_86
  loc_A2EF93: FFreeAd var_8C = ""
  loc_A2EF9A: FFree1Var var_B0 = ""
  loc_A2EF9D: ExitProcCbHresult
End Sub

Public Property Get AltaUsua() 'A36D30
  'Data Table: 4F6F78
  loc_A36CEC: ZeroRetVal
  loc_A36CEE: FLdRfVar var_B0
  loc_A36CF1: FLdRfVar var_A0
  loc_A36CF4: LitVarStr var_9C, "AltaUsua"
  loc_A36CF9: PopAdLdVar
  loc_A36CFA: FLdRfVar var_8C
  loc_A36CFD: FLdPr Me
  loc_A36D00: MemLdPr RsFrm
  loc_A36D03:  = Me.Fields
  loc_A36D08: FLdPr var_8C
  loc_A36D0B: from_stack_2 = Me.Item(from_stack_1)
  loc_A36D10: FLdPr var_A0
  loc_A36D13:  = Me.Value
  loc_A36D18: FLdRfVar var_B0
  loc_A36D1B: CStrVarTmp
  loc_A36D1C: FStStr var_88
  loc_A36D1F: FFreeAd var_8C = ""
  loc_A36D26: FFree1Var var_B0 = ""
  loc_A36D29: ExitProcCbHresult
End Sub

Public Property Let AltaUsua(vDato) '9E9830
  'Data Table: 4F6F78
  loc_9E9810: ILdRf vDato
  loc_9E9813: FStStrCopy var_88
  loc_9E9816: ILdRf var_88
  loc_9E9819: CVarStr var_A8
  loc_9E981C: PopAdLdVar
  loc_9E981D: LitVarStr var_98, "AltaUsua"
  loc_9E9822: PopAdLdVar
  loc_9E9823: FLdPr Me
  loc_9E9826: MemLdPr RsFrm
  loc_9E9829: Me.Collect = from_stack_1
  loc_9E982E: ExitProcHresult
End Sub

Public Property Get ModiUsua() 'A36E38
  'Data Table: 4F6F78
  loc_A36DF4: ZeroRetVal
  loc_A36DF6: FLdRfVar var_B0
  loc_A36DF9: FLdRfVar var_A0
  loc_A36DFC: LitVarStr var_9C, "ModiUsua"
  loc_A36E01: PopAdLdVar
  loc_A36E02: FLdRfVar var_8C
  loc_A36E05: FLdPr Me
  loc_A36E08: MemLdPr RsFrm
  loc_A36E0B:  = Me.Fields
  loc_A36E10: FLdPr var_8C
  loc_A36E13: from_stack_2 = Me.Item(from_stack_1)
  loc_A36E18: FLdPr var_A0
  loc_A36E1B:  = Me.Value
  loc_A36E20: FLdRfVar var_B0
  loc_A36E23: CStrVarTmp
  loc_A36E24: FStStr var_88
  loc_A36E27: FFreeAd var_8C = ""
  loc_A36E2E: FFree1Var var_B0 = ""
  loc_A36E31: ExitProcCbHresult
End Sub

Public Property Let ModiUsua(vDato) '9E9638
  'Data Table: 4F6F78
  loc_9E9618: ILdRf vDato
  loc_9E961B: FStStrCopy var_88
  loc_9E961E: ILdRf var_88
  loc_9E9621: CVarStr var_A8
  loc_9E9624: PopAdLdVar
  loc_9E9625: LitVarStr var_98, "ModiUsua"
  loc_9E962A: PopAdLdVar
  loc_9E962B: FLdPr Me
  loc_9E962E: MemLdPr RsFrm
  loc_9E9631: Me.Collect = from_stack_1
  loc_9E9636: ExitProcHresult
End Sub

Public Property Get BajaUsua() 'A36EBC
  'Data Table: 4F6F78
  loc_A36E78: ZeroRetVal
  loc_A36E7A: FLdRfVar var_B0
  loc_A36E7D: FLdRfVar var_A0
  loc_A36E80: LitVarStr var_9C, "BajaUsua"
  loc_A36E85: PopAdLdVar
  loc_A36E86: FLdRfVar var_8C
  loc_A36E89: FLdPr Me
  loc_A36E8C: MemLdPr RsFrm
  loc_A36E8F:  = Me.Fields
  loc_A36E94: FLdPr var_8C
  loc_A36E97: from_stack_2 = Me.Item(from_stack_1)
  loc_A36E9C: FLdPr var_A0
  loc_A36E9F:  = Me.Value
  loc_A36EA4: FLdRfVar var_B0
  loc_A36EA7: CStrVarTmp
  loc_A36EA8: FStStr var_88
  loc_A36EAB: FFreeAd var_8C = ""
  loc_A36EB2: FFree1Var var_B0 = ""
  loc_A36EB5: ExitProcCbHresult
End Sub

Public Property Let BajaUsua(vDato) '9E96E0
  'Data Table: 4F6F78
  loc_9E96C0: ILdRf vDato
  loc_9E96C3: FStStrCopy var_88
  loc_9E96C6: ILdRf var_88
  loc_9E96C9: CVarStr var_A8
  loc_9E96CC: PopAdLdVar
  loc_9E96CD: LitVarStr var_98, "BajaUsua"
  loc_9E96D2: PopAdLdVar
  loc_9E96D3: FLdPr Me
  loc_9E96D6: MemLdPr RsFrm
  loc_9E96D9: Me.Collect = from_stack_1
  loc_9E96DE: ExitProcHresult
End Sub

Public Property Get DetaPers() 'A1CC90
  'Data Table: 4F6F78
  loc_A1CC58: ZeroRetValVar
  loc_A1CC5A: FLdRfVar var_AC
  loc_A1CC5D: LitVarStr var_A8, "DetaPers"
  loc_A1CC62: PopAdLdVar
  loc_A1CC63: FLdRfVar var_98
  loc_A1CC66: FLdPr Me
  loc_A1CC69: MemLdPr RsFrm
  loc_A1CC6C:  = Me.Fields
  loc_A1CC71: FLdPr var_98
  loc_A1CC74: from_stack_2 = Me.Item(from_stack_1)
  loc_A1CC79: FLdZeroAd var_AC
  loc_A1CC7C: CVarAd
  loc_A1CC80: FStVar DetaPers
  loc_A1CC84: FFree1Ad var_98
  loc_A1CC87: ExitProcCbHresult
End Sub

Public Property Get NumeFrin() 'A37048
  'Data Table: 4F6F78
  loc_A37004: ZeroRetVal
  loc_A37006: FLdRfVar var_B0
  loc_A37009: FLdRfVar var_A0
  loc_A3700C: LitVarStr var_9C, "NumeFrin"
  loc_A37011: PopAdLdVar
  loc_A37012: FLdRfVar var_8C
  loc_A37015: FLdPr Me
  loc_A37018: MemLdPr RsFrm
  loc_A3701B:  = Me.Fields
  loc_A37020: FLdPr var_8C
  loc_A37023: from_stack_2 = Me.Item(from_stack_1)
  loc_A37028: FLdPr var_A0
  loc_A3702B:  = Me.Value
  loc_A37030: FLdRfVar var_B0
  loc_A37033: CStrVarTmp
  loc_A37034: FStStr var_88
  loc_A37037: FFreeAd var_8C = ""
  loc_A3703E: FFree1Var var_B0 = ""
  loc_A37041: ExitProcCbHresult
End Sub

Public Property Get DetaCall() 'A1DCF8
  'Data Table: 4F6F78
  loc_A1DCC0: ZeroRetValVar
  loc_A1DCC2: FLdRfVar var_AC
  loc_A1DCC5: LitVarStr var_A8, "DetaCall"
  loc_A1DCCA: PopAdLdVar
  loc_A1DCCB: FLdRfVar var_98
  loc_A1DCCE: FLdPr Me
  loc_A1DCD1: MemLdPr RsFrm
  loc_A1DCD4:  = Me.Fields
  loc_A1DCD9: FLdPr var_98
  loc_A1DCDC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1DCE1: FLdZeroAd var_AC
  loc_A1DCE4: CVarAd
  loc_A1DCE8: FStVar DetaCall
  loc_A1DCEC: FFree1Ad var_98
  loc_A1DCEF: ExitProcCbHresult
End Sub

Public Property Get DecaPost() 'A370CC
  'Data Table: 4F6F78
  loc_A37088: ZeroRetVal
  loc_A3708A: FLdRfVar var_B0
  loc_A3708D: FLdRfVar var_A0
  loc_A37090: LitVarStr var_9C, "DecaPost"
  loc_A37095: PopAdLdVar
  loc_A37096: FLdRfVar var_8C
  loc_A37099: FLdPr Me
  loc_A3709C: MemLdPr RsFrm
  loc_A3709F:  = Me.Fields
  loc_A370A4: FLdPr var_8C
  loc_A370A7: from_stack_2 = Me.Item(from_stack_1)
  loc_A370AC: FLdPr var_A0
  loc_A370AF:  = Me.Value
  loc_A370B4: FLdRfVar var_B0
  loc_A370B7: CStrVarTmp
  loc_A370B8: FStStr var_88
  loc_A370BB: FFreeAd var_8C = ""
  loc_A370C2: FFree1Var var_B0 = ""
  loc_A370C5: ExitProcCbHresult
End Sub

Public Property Get NumePost() 'A37150
  'Data Table: 4F6F78
  loc_A3710C: ZeroRetVal
  loc_A3710E: FLdRfVar var_B0
  loc_A37111: FLdRfVar var_A0
  loc_A37114: LitVarStr var_9C, "NumePost"
  loc_A37119: PopAdLdVar
  loc_A3711A: FLdRfVar var_8C
  loc_A3711D: FLdPr Me
  loc_A37120: MemLdPr RsFrm
  loc_A37123:  = Me.Fields
  loc_A37128: FLdPr var_8C
  loc_A3712B: from_stack_2 = Me.Item(from_stack_1)
  loc_A37130: FLdPr var_A0
  loc_A37133:  = Me.Value
  loc_A37138: FLdRfVar var_B0
  loc_A3713B: CStrVarTmp
  loc_A3713C: FStStr var_88
  loc_A3713F: FFreeAd var_8C = ""
  loc_A37146: FFree1Var var_B0 = ""
  loc_A37149: ExitProcCbHresult
End Sub

Public Property Get DebaPost() 'A371D4
  'Data Table: 4F6F78
  loc_A37190: ZeroRetVal
  loc_A37192: FLdRfVar var_B0
  loc_A37195: FLdRfVar var_A0
  loc_A37198: LitVarStr var_9C, "DebaPost"
  loc_A3719D: PopAdLdVar
  loc_A3719E: FLdRfVar var_8C
  loc_A371A1: FLdPr Me
  loc_A371A4: MemLdPr RsFrm
  loc_A371A7:  = Me.Fields
  loc_A371AC: FLdPr var_8C
  loc_A371AF: from_stack_2 = Me.Item(from_stack_1)
  loc_A371B4: FLdPr var_A0
  loc_A371B7:  = Me.Value
  loc_A371BC: FLdRfVar var_B0
  loc_A371BF: CStrVarTmp
  loc_A371C0: FStStr var_88
  loc_A371C3: FFreeAd var_8C = ""
  loc_A371CA: FFree1Var var_B0 = ""
  loc_A371CD: ExitProcCbHresult
End Sub

Public Property Get ManzPost() 'A37258
  'Data Table: 4F6F78
  loc_A37214: ZeroRetVal
  loc_A37216: FLdRfVar var_B0
  loc_A37219: FLdRfVar var_A0
  loc_A3721C: LitVarStr var_9C, "ManzPost"
  loc_A37221: PopAdLdVar
  loc_A37222: FLdRfVar var_8C
  loc_A37225: FLdPr Me
  loc_A37228: MemLdPr RsFrm
  loc_A3722B:  = Me.Fields
  loc_A37230: FLdPr var_8C
  loc_A37233: from_stack_2 = Me.Item(from_stack_1)
  loc_A37238: FLdPr var_A0
  loc_A3723B:  = Me.Value
  loc_A37240: FLdRfVar var_B0
  loc_A37243: CStrVarTmp
  loc_A37244: FStStr var_88
  loc_A37247: FFreeAd var_8C = ""
  loc_A3724E: FFree1Var var_B0 = ""
  loc_A37251: ExitProcCbHresult
End Sub

Public Property Get CasaPost() 'A372DC
  'Data Table: 4F6F78
  loc_A37298: ZeroRetVal
  loc_A3729A: FLdRfVar var_B0
  loc_A3729D: FLdRfVar var_A0
  loc_A372A0: LitVarStr var_9C, "CasaPost"
  loc_A372A5: PopAdLdVar
  loc_A372A6: FLdRfVar var_8C
  loc_A372A9: FLdPr Me
  loc_A372AC: MemLdPr RsFrm
  loc_A372AF:  = Me.Fields
  loc_A372B4: FLdPr var_8C
  loc_A372B7: from_stack_2 = Me.Item(from_stack_1)
  loc_A372BC: FLdPr var_A0
  loc_A372BF:  = Me.Value
  loc_A372C4: FLdRfVar var_B0
  loc_A372C7: CStrVarTmp
  loc_A372C8: FStStr var_88
  loc_A372CB: FFreeAd var_8C = ""
  loc_A372D2: FFree1Var var_B0 = ""
  loc_A372D5: ExitProcCbHresult
End Sub

Public Property Get UbicPost() 'A373E4
  'Data Table: 4F6F78
  loc_A373A0: ZeroRetVal
  loc_A373A2: FLdRfVar var_B0
  loc_A373A5: FLdRfVar var_A0
  loc_A373A8: LitVarStr var_9C, "UbicPost"
  loc_A373AD: PopAdLdVar
  loc_A373AE: FLdRfVar var_8C
  loc_A373B1: FLdPr Me
  loc_A373B4: MemLdPr RsFrm
  loc_A373B7:  = Me.Fields
  loc_A373BC: FLdPr var_8C
  loc_A373BF: from_stack_2 = Me.Item(from_stack_1)
  loc_A373C4: FLdPr var_A0
  loc_A373C7:  = Me.Value
  loc_A373CC: FLdRfVar var_B0
  loc_A373CF: CStrVarTmp
  loc_A373D0: FStStr var_88
  loc_A373D3: FFreeAd var_8C = ""
  loc_A373DA: FFree1Var var_B0 = ""
  loc_A373DD: ExitProcCbHresult
End Sub

Public Property Get DeloPost() 'A374EC
  'Data Table: 4F6F78
  loc_A374A8: ZeroRetVal
  loc_A374AA: FLdRfVar var_B0
  loc_A374AD: FLdRfVar var_A0
  loc_A374B0: LitVarStr var_9C, "DeloPost"
  loc_A374B5: PopAdLdVar
  loc_A374B6: FLdRfVar var_8C
  loc_A374B9: FLdPr Me
  loc_A374BC: MemLdPr RsFrm
  loc_A374BF:  = Me.Fields
  loc_A374C4: FLdPr var_8C
  loc_A374C7: from_stack_2 = Me.Item(from_stack_1)
  loc_A374CC: FLdPr var_A0
  loc_A374CF:  = Me.Value
  loc_A374D4: FLdRfVar var_B0
  loc_A374D7: CStrVarTmp
  loc_A374D8: FStStr var_88
  loc_A374DB: FFreeAd var_8C = ""
  loc_A374E2: FFree1Var var_B0 = ""
  loc_A374E5: ExitProcCbHresult
End Sub

Public Property Get CopoPost() 'A375F4
  'Data Table: 4F6F78
  loc_A375B0: ZeroRetVal
  loc_A375B2: FLdRfVar var_B0
  loc_A375B5: FLdRfVar var_A0
  loc_A375B8: LitVarStr var_9C, "CopoPost"
  loc_A375BD: PopAdLdVar
  loc_A375BE: FLdRfVar var_8C
  loc_A375C1: FLdPr Me
  loc_A375C4: MemLdPr RsFrm
  loc_A375C7:  = Me.Fields
  loc_A375CC: FLdPr var_8C
  loc_A375CF: from_stack_2 = Me.Item(from_stack_1)
  loc_A375D4: FLdPr var_A0
  loc_A375D7:  = Me.Value
  loc_A375DC: FLdRfVar var_B0
  loc_A375DF: CStrVarTmp
  loc_A375E0: FStStr var_88
  loc_A375E3: FFreeAd var_8C = ""
  loc_A375EA: FFree1Var var_B0 = ""
  loc_A375ED: ExitProcCbHresult
End Sub

Public Property Get DetaExce() 'A148D8
  'Data Table: 4F6F78
  loc_A148A0: ZeroRetValVar
  loc_A148A2: FLdRfVar var_AC
  loc_A148A5: LitVarStr var_A8, "DetaExce"
  loc_A148AA: PopAdLdVar
  loc_A148AB: FLdRfVar var_98
  loc_A148AE: FLdPr Me
  loc_A148B1: MemLdPr RsFrm
  loc_A148B4:  = Me.Fields
  loc_A148B9: FLdPr var_98
  loc_A148BC: from_stack_2 = Me.Item(from_stack_1)
  loc_A148C1: FLdZeroAd var_AC
  loc_A148C4: CVarAd
  loc_A148C8: FStVar DetaExce
  loc_A148CC: FFree1Ad var_98
  loc_A148CF: ExitProcCbHresult
End Sub

Public Property Get DetaBarr() 'A13BB8
  'Data Table: 4F6F78
  loc_A13B80: ZeroRetValVar
  loc_A13B82: FLdRfVar var_AC
  loc_A13B85: LitVarStr var_A8, "DetaBarr"
  loc_A13B8A: PopAdLdVar
  loc_A13B8B: FLdRfVar var_98
  loc_A13B8E: FLdPr Me
  loc_A13B91: MemLdPr RsFrm
  loc_A13B94:  = Me.Fields
  loc_A13B99: FLdPr var_98
  loc_A13B9C: from_stack_2 = Me.Item(from_stack_1)
  loc_A13BA1: FLdZeroAd var_AC
  loc_A13BA4: CVarAd
  loc_A13BA8: FStVar DetaBarr
  loc_A13BAC: FFree1Ad var_98
  loc_A13BAF: ExitProcCbHresult
  loc_A13BB5: ImpAdLdRf MemVar_55A718
End Sub

Public Property Get DetaLoca() 'A135A0
  'Data Table: 4F6F78
  loc_A13568: ZeroRetValVar
  loc_A1356A: FLdRfVar var_AC
  loc_A1356D: LitVarStr var_A8, "DetaLoca"
  loc_A13572: PopAdLdVar
  loc_A13573: FLdRfVar var_98
  loc_A13576: FLdPr Me
  loc_A13579: MemLdPr RsFrm
  loc_A1357C:  = Me.Fields
  loc_A13581: FLdPr var_98
  loc_A13584: from_stack_2 = Me.Item(from_stack_1)
  loc_A13589: FLdZeroAd var_AC
  loc_A1358C: CVarAd
  loc_A13590: FStVar DetaLoca
  loc_A13594: FFree1Ad var_98
  loc_A13597: ExitProcCbHresult
  loc_A1359D: FnAbsCy
  loc_A1359E: LdFixedStr
End Sub

Public Property Get CodiPost() 'A18118
  'Data Table: 4F6F78
  loc_A180E0: ZeroRetValVar
  loc_A180E2: FLdRfVar var_AC
  loc_A180E5: LitVarStr var_A8, "CodiPost"
  loc_A180EA: PopAdLdVar
  loc_A180EB: FLdRfVar var_98
  loc_A180EE: FLdPr Me
  loc_A180F1: MemLdPr RsFrm
  loc_A180F4:  = Me.Fields
  loc_A180F9: FLdPr var_98
  loc_A180FC: from_stack_2 = Me.Item(from_stack_1)
  loc_A18101: FLdZeroAd var_AC
  loc_A18104: CVarAd
  loc_A18108: FStVar CodiPost
  loc_A1810C: FFree1Ad var_98
  loc_A1810F: ExitProcCbHresult
End Sub

Public Property Get DetaZoin() 'A14C98
  'Data Table: 4F6F78
  loc_A14C60: ZeroRetValVar
  loc_A14C62: FLdRfVar var_AC
  loc_A14C65: LitVarStr var_A8, "DetaZoin"
  loc_A14C6A: PopAdLdVar
  loc_A14C6B: FLdRfVar var_98
  loc_A14C6E: FLdPr Me
  loc_A14C71: MemLdPr RsFrm
  loc_A14C74:  = Me.Fields
  loc_A14C79: FLdPr var_98
  loc_A14C7C: from_stack_2 = Me.Item(from_stack_1)
  loc_A14C81: FLdZeroAd var_AC
  loc_A14C84: CVarAd
  loc_A14C88: FStVar DetaZoin
  loc_A14C8C: FFree1Ad var_98
  loc_A14C8F: ExitProcCbHresult
End Sub

Public Property Get DetaEsin() 'A164F8
  'Data Table: 4F6F78
  loc_A164C0: ZeroRetValVar
  loc_A164C2: FLdRfVar var_AC
  loc_A164C5: LitVarStr var_A8, "DetaEsin"
  loc_A164CA: PopAdLdVar
  loc_A164CB: FLdRfVar var_98
  loc_A164CE: FLdPr Me
  loc_A164D1: MemLdPr RsFrm
  loc_A164D4:  = Me.Fields
  loc_A164D9: FLdPr var_98
  loc_A164DC: from_stack_2 = Me.Item(from_stack_1)
  loc_A164E1: FLdZeroAd var_AC
  loc_A164E4: CVarAd
  loc_A164E8: FStVar DetaEsin
  loc_A164EC: FFree1Ad var_98
  loc_A164EF: ExitProcCbHresult
  loc_A164F5: Ary1LdCy
  loc_A164F6: ImpAdLdPr unk_4F6F79
End Sub

Public Property Get Serv() 'A33124
  'Data Table: 4F6F78
  loc_A330E0: FLdRfVar var_B0
  loc_A330E3: FLdRfVar var_A0
  loc_A330E6: LitVarStr var_9C, "Serv"
  loc_A330EB: PopAdLdVar
  loc_A330EC: FLdRfVar var_8C
  loc_A330EF: FLdPr Me
  loc_A330F2: MemLdPr RsFrm
  loc_A330F5:  = Me.Fields
  loc_A330FA: FLdPr var_8C
  loc_A330FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A33102: FLdPr var_A0
  loc_A33105:  = Me.Value
  loc_A3310A: FLdRfVar var_B0
  loc_A3310D: CBoolVar
  loc_A3310F: FStI2 var_86
  loc_A33112: FFreeAd var_8C = ""
  loc_A33119: FFree1Var var_B0 = ""
  loc_A3311C: ExitProcCbHresult
End Sub

Public Property Get TipoFrin() 'A16660
  'Data Table: 4F6F78
  loc_A16628: ZeroRetValVar
  loc_A1662A: FLdRfVar var_AC
  loc_A1662D: LitVarStr var_A8, "TipoFrin"
  loc_A16632: PopAdLdVar
  loc_A16633: FLdRfVar var_98
  loc_A16636: FLdPr Me
  loc_A16639: MemLdPr RsFrm
  loc_A1663C:  = Me.Fields
  loc_A16641: FLdPr var_98
  loc_A16644: from_stack_2 = Me.Item(from_stack_1)
  loc_A16649: FLdZeroAd var_AC
  loc_A1664C: CVarAd
  loc_A16650: FStVar TipoFrin
  loc_A16654: FFree1Ad var_98
  loc_A16657: ExitProcCbHresult
End Sub

Public Property Get DetaCall2() 'A1A878
  'Data Table: 4F6F78
  loc_A1A840: ZeroRetValVar
  loc_A1A842: FLdRfVar var_AC
  loc_A1A845: LitVarStr var_A8, "DetaCall2"
  loc_A1A84A: PopAdLdVar
  loc_A1A84B: FLdRfVar var_98
  loc_A1A84E: FLdPr Me
  loc_A1A851: MemLdPr RsFrm
  loc_A1A854:  = Me.Fields
  loc_A1A859: FLdPr var_98
  loc_A1A85C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A861: FLdZeroAd var_AC
  loc_A1A864: CVarAd
  loc_A1A868: FStVar DetaCall2
  loc_A1A86C: FFree1Ad var_98
  loc_A1A86F: ExitProcCbHresult
End Sub

Public Property Get NucaFrin() 'A1A1E8
  'Data Table: 4F6F78
  loc_A1A1B0: ZeroRetValVar
  loc_A1A1B2: FLdRfVar var_AC
  loc_A1A1B5: LitVarStr var_A8, "NucaFrin"
  loc_A1A1BA: PopAdLdVar
  loc_A1A1BB: FLdRfVar var_98
  loc_A1A1BE: FLdPr Me
  loc_A1A1C1: MemLdPr RsFrm
  loc_A1A1C4:  = Me.Fields
  loc_A1A1C9: FLdPr var_98
  loc_A1A1CC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A1D1: FLdZeroAd var_AC
  loc_A1A1D4: CVarAd
  loc_A1A1D8: FStVar NucaFrin
  loc_A1A1DC: FFree1Ad var_98
  loc_A1A1DF: ExitProcCbHresult
End Sub

Public Property Get MetrFrin() 'A17DD0
  'Data Table: 4F6F78
  loc_A17D98: ZeroRetValVar
  loc_A17D9A: FLdRfVar var_AC
  loc_A17D9D: LitVarStr var_A8, "MetrFrin"
  loc_A17DA2: PopAdLdVar
  loc_A17DA3: FLdRfVar var_98
  loc_A17DA6: FLdPr Me
  loc_A17DA9: MemLdPr RsFrm
  loc_A17DAC:  = Me.Fields
  loc_A17DB1: FLdPr var_98
  loc_A17DB4: from_stack_2 = Me.Item(from_stack_1)
  loc_A17DB9: FLdZeroAd var_AC
  loc_A17DBC: CVarAd
  loc_A17DC0: FStVar MetrFrin
  loc_A17DC4: FFree1Ad var_98
  loc_A17DC7: ExitProcCbHresult
End Sub

Public Property Get FeveVenc() 'A37780
  'Data Table: 4F6F78
  loc_A3773C: ZeroRetVal
  loc_A3773E: FLdRfVar var_B0
  loc_A37741: FLdRfVar var_A0
  loc_A37744: LitVarStr var_9C, "FeveVenc"
  loc_A37749: PopAdLdVar
  loc_A3774A: FLdRfVar var_8C
  loc_A3774D: FLdPr Me
  loc_A37750: MemLdPr RsFrm
  loc_A37753:  = Me.Fields
  loc_A37758: FLdPr var_8C
  loc_A3775B: from_stack_2 = Me.Item(from_stack_1)
  loc_A37760: FLdPr var_A0
  loc_A37763:  = Me.Value
  loc_A37768: FLdRfVar var_B0
  loc_A3776B: CStrVarTmp
  loc_A3776C: FStStr var_88
  loc_A3776F: FFreeAd var_8C = ""
  loc_A37776: FFree1Var var_B0 = ""
  loc_A37779: ExitProcCbHresult
End Sub

Public Property Get Vinculo() 'A37804
  'Data Table: 4F6F78
  loc_A377C0: ZeroRetVal
  loc_A377C2: FLdRfVar var_B0
  loc_A377C5: FLdRfVar var_A0
  loc_A377C8: LitVarStr var_9C, "Vinculo"
  loc_A377CD: PopAdLdVar
  loc_A377CE: FLdRfVar var_8C
  loc_A377D1: FLdPr Me
  loc_A377D4: MemLdPr RsFrm
  loc_A377D7:  = Me.Fields
  loc_A377DC: FLdPr var_8C
  loc_A377DF: from_stack_2 = Me.Item(from_stack_1)
  loc_A377E4: FLdPr var_A0
  loc_A377E7:  = Me.Value
  loc_A377EC: FLdRfVar var_B0
  loc_A377EF: CStrVarTmp
  loc_A377F0: FStStr var_88
  loc_A377F3: FFreeAd var_8C = ""
  loc_A377FA: FFree1Var var_B0 = ""
  loc_A377FD: ExitProcCbHresult
End Sub

Public Function ValidaClave(CodiInmu) 'A33224
  'Data Table: 4F6F78
  loc_A331E0: ZeroRetVal
  loc_A331E2: LitStr "SELECT CodiInmu FROM inmueble WHERE CodiInmu = "
  loc_A331E5: ILdRf CodiInmu
  loc_A331E8: CStrI4
  loc_A331EA: FStStrNoPop var_8C
  loc_A331ED: ConcatStr
  loc_A331EE: FStStrNoPop var_90
  loc_A331F1: Call EjecutarRs2(from_stack_1v)
  loc_A331F6: FFreeStr var_8C = ""
  loc_A331FD: FLdRfVar ValidaClave
  loc_A33200: FLdPr Me
  loc_A33203: MemLdPr Rs2
  loc_A33206:  = Me.RecordCount
  loc_A3320B: ILdRf ValidaClave
  loc_A3320E: LitI4 0
  loc_A33213: GtI4
  loc_A33214: BranchF loc_A3321D
  loc_A33217: LitStr "El INMUEBLE YA EXISTE. Reintente..."
  loc_A3321A: FStStrCopy var_88
  loc_A3321D: ExitProcCbHresult
End Function

Public Function ValidaPadrInmu(PadrInmu) 'A4CA58
  'Data Table: 4F6F78
  loc_A4CA0C: ILdRf PadrInmu
  loc_A4CA0F: FStStrCopy var_8C
  loc_A4CA12: ZeroRetVal
  loc_A4CA14: LitStr "SELECT PadrInmu FROM inmueble WHERE PadrInmu = '"
  loc_A4CA17: ILdRf var_8C
  loc_A4CA1A: ConcatStr
  loc_A4CA1B: FStStrNoPop var_90
  loc_A4CA1E: LitStr "'"
  loc_A4CA21: ConcatStr
  loc_A4CA22: FStStrNoPop ValidaPadrInmu
  loc_A4CA25: Call EjecutarRs2(from_stack_1v)
  loc_A4CA2A: FFreeStr var_90 = ""
  loc_A4CA31: FLdRfVar var_98
  loc_A4CA34: FLdPr Me
  loc_A4CA37: MemLdPr Rs2
  loc_A4CA3A:  = Me.RecordCount
  loc_A4CA3F: ILdRf var_98
  loc_A4CA42: LitI4 0
  loc_A4CA47: GtI4
  loc_A4CA48: BranchF loc_A4CA51
  loc_A4CA4B: LitStr "El INMUEBLE YA EXISTE. Reintente..."
  loc_A4CA4E: FStStrCopy var_88
  loc_A4CA51: ExitProcCbHresult
End Function

Public Function ValidaEliminarZonaInmu(CodiZoin) 'A332A4
  'Data Table: 4F6F78
  loc_A33260: ZeroRetVal
  loc_A33262: LitStr "SELECT CodiZoin FROM inmueble WHERE CodiZoin = "
  loc_A33265: FLdI2 CodiZoin
  loc_A33268: CStrUI1
  loc_A3326A: FStStrNoPop var_8C
  loc_A3326D: ConcatStr
  loc_A3326E: FStStrNoPop var_90
  loc_A33271: Call EjecutarRs2(from_stack_1v)
  loc_A33276: FFreeStr var_8C = ""
  loc_A3327D: FLdRfVar ValidaEliminarZonaInmu
  loc_A33280: FLdPr Me
  loc_A33283: MemLdPr Rs2
  loc_A33286:  = Me.RecordCount
  loc_A3328B: ILdRf ValidaEliminarZonaInmu
  loc_A3328E: LitI4 0
  loc_A33293: GtI4
  loc_A33294: BranchF loc_A3329D
  loc_A33297: LitStr "La Zona Existe en un inmueble. Reintente..."
  loc_A3329A: FStStrCopy var_88
  loc_A3329D: ExitProcCbHresult
End Function

Public Function ValidaEliminarEstaInmu(CodiEsin) 'A33324
  'Data Table: 4F6F78
  loc_A332E0: ZeroRetVal
  loc_A332E2: LitStr "SELECT CodiEsin FROM inmueble WHERE CodiEsin = "
  loc_A332E5: FLdI2 CodiEsin
  loc_A332E8: CStrUI1
  loc_A332EA: FStStrNoPop var_8C
  loc_A332ED: ConcatStr
  loc_A332EE: FStStrNoPop var_90
  loc_A332F1: Call EjecutarRs2(from_stack_1v)
  loc_A332F6: FFreeStr var_8C = ""
  loc_A332FD: FLdRfVar ValidaEliminarEstaInmu
  loc_A33300: FLdPr Me
  loc_A33303: MemLdPr Rs2
  loc_A33306:  = Me.RecordCount
  loc_A3330B: ILdRf ValidaEliminarEstaInmu
  loc_A3330E: LitI4 0
  loc_A33313: GtI4
  loc_A33314: BranchF loc_A3331D
  loc_A33317: LitStr "El ESTADO Existe en un inmueble. Reintente..."
  loc_A3331A: FStStrCopy var_88
  loc_A3331D: ExitProcCbHresult
End Function

Public Function NuevoRegistro() 'A77048
  'Data Table: 4F6F78
  loc_A76FD0: LitStr "SELECT CodiInmu FROM inmueble ORDER BY CodiInmu DESC "
  loc_A76FD3: Call EjecutarRs2(from_stack_1v)
  loc_A76FD8: FLdRfVar var_8C
  loc_A76FDB: FLdPr Me
  loc_A76FDE: MemLdPr Rs2
  loc_A76FE1:  = Me.RecordCount
  loc_A76FE6: ILdRf var_8C
  loc_A76FE9: LitI4 0
  loc_A76FEE: GtI4
  loc_A76FEF: BranchF loc_A77037
  loc_A76FF2: FLdRfVar var_B4
  loc_A76FF5: FLdRfVar var_A4
  loc_A76FF8: LitVarStr var_A0, "CodiInmu"
  loc_A76FFD: PopAdLdVar
  loc_A76FFE: FLdRfVar var_90
  loc_A77001: FLdPr Me
  loc_A77004: MemLdPr Rs2
  loc_A77007:  = Me.Fields
  loc_A7700C: FLdPr var_90
  loc_A7700F: from_stack_2 = Me.Item(from_stack_1)
  loc_A77014: FLdPr var_A4
  loc_A77017:  = Me.Value
  loc_A7701C: FLdRfVar var_B4
  loc_A7701F: FnCLngVar
  loc_A77021: LitI4 1
  loc_A77026: AddI4
  loc_A77027: FStR4 var_88
  loc_A7702A: FFreeAd var_90 = ""
  loc_A77031: FFree1Var var_B4 = ""
  loc_A77034: Branch loc_A7703F
  loc_A77037: LitI4 1
  loc_A7703C: FStR4 var_88
  loc_A7703F: ExitProcCbHresult
  loc_A77045: CVarI2 arg_36FF
End Function

Public Function CodiInmuValidate(sCodiInmu) 'A62808
  'Data Table: 4F6F78
  loc_A627A4: ILdRf sCodiInmu
  loc_A627A7: FStStrCopy var_8C
  loc_A627AA: ZeroRetVal
  loc_A627AC: LitI2_Byte &HFF
  loc_A627AE: LitI2_Byte 0
  loc_A627B0: ILdRf var_8C
  loc_A627B3: LitStr "el Codigo del INMUEBLE"
  loc_A627B6: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A627BB: FStStr var_88
  loc_A627BE: ILdRf var_88
  loc_A627C1: LitStr vbNullString
  loc_A627C4: NeStr
  loc_A627C6: BranchF loc_A627CF
  loc_A627C9: ExitProcCbHresult
  loc_A627CF: LitStr "SELECT * FROM inmueble WHERE CodiInmu = "
  loc_A627D2: ILdRf var_8C
  loc_A627D5: ConcatStr
  loc_A627D6: FStStrNoPop var_90
  loc_A627D9: Call EjecutarRs2(from_stack_1v)
  loc_A627DE: FFree1Str var_90
  loc_A627E1: FLdRfVar CodiInmuValidate
  loc_A627E4: FLdPr Me
  loc_A627E7: MemLdPr Rs2
  loc_A627EA:  = Me.RecordCount
  loc_A627EF: ILdRf CodiInmuValidate
  loc_A627F2: LitI4 0
  loc_A627F7: EqI4
  loc_A627F8: BranchF loc_A62801
  loc_A627FB: LitStr "El CODIGO de INMUEBLE no existe. Reintente..."
  loc_A627FE: FStStrCopy var_88
  loc_A62801: ExitProcCbHresult
End Function

Public Function devuelvemigracion(sCodiInmu) 'AB0014
  'Data Table: 4F6F78
  loc_AAFF48: ILdRf sCodiInmu
  loc_AAFF4B: FStStrCopy var_8C
  loc_AAFF4E: LitStr "SELECT CodiInmu FROM inmueble WHERE CodiInmu = "
  loc_AAFF51: ILdRf var_8C
  loc_AAFF54: ConcatStr
  loc_AAFF55: FStStrNoPop var_90
  loc_AAFF58: LitStr " ORDER BY CodiInmu"
  loc_AAFF5B: ConcatStr
  loc_AAFF5C: FStStrNoPop devuelvemigracion
  loc_AAFF5F: Call EjecutarRs2(from_stack_1v)
  loc_AAFF64: FFreeStr var_90 = ""
  loc_AAFF6B: FLdRfVar var_98
  loc_AAFF6E: FLdPr Me
  loc_AAFF71: MemLdPr Rs2
  loc_AAFF74:  = Me.RecordCount
  loc_AAFF79: ILdRf var_98
  loc_AAFF7C: LitI4 0
  loc_AAFF81: GtI4
  loc_AAFF82: BranchF loc_AB0003
  loc_AAFF85: LitStr " set @codigo:=0;"
  loc_AAFF88: Call EjecutarRsCls3(from_stack_1v)
  loc_AAFF8D: LitStr " select CodiInmu, if(@codigo + 1 = CodiInmu, @codigo:=@codigo + 1,@codigo + 1)  as control from inmueble "
  loc_AAFF90: LitStr " having CodiInmu <> control"
  loc_AAFF93: ConcatStr
  loc_AAFF94: FStStrNoPop var_90
  loc_AAFF97: Call EjecutarRsCls3(from_stack_1v)
  loc_AAFF9C: FFree1Str var_90
  loc_AAFF9F: FLdRfVar var_98
  loc_AAFFA2: FLdPr Me
  loc_AAFFA5: MemLdPr global_72
  loc_AAFFA8:  = Me.RecordCount
  loc_AAFFAD: ILdRf var_98
  loc_AAFFB0: LitI4 0
  loc_AAFFB5: GtI4
  loc_AAFFB6: BranchF loc_AAFFF8
  loc_AAFFB9: FLdRfVar var_C0
  loc_AAFFBC: FLdRfVar var_B0
  loc_AAFFBF: LitVarStr var_AC, "Control"
  loc_AAFFC4: PopAdLdVar
  loc_AAFFC5: FLdRfVar var_9C
  loc_AAFFC8: FLdPr Me
  loc_AAFFCB: MemLdPr global_72
  loc_AAFFCE:  = Me.Fields
  loc_AAFFD3: FLdPr var_9C
  loc_AAFFD6: from_stack_2 = Me.Item(from_stack_1)
  loc_AAFFDB: FLdPr var_B0
  loc_AAFFDE:  = Me.Value
  loc_AAFFE3: FLdRfVar var_C0
  loc_AAFFE6: CI4Var
  loc_AAFFE8: FStR4 var_88
  loc_AAFFEB: FFreeAd var_9C = ""
  loc_AAFFF2: FFree1Var var_C0 = ""
  loc_AAFFF5: Branch loc_AB0000
  loc_AAFFF8: LitI4 0
  loc_AAFFFD: FStR4 var_88
  loc_AB0000: Branch loc_AB000B
  loc_AB0003: LitI4 0
  loc_AB0008: FStR4 var_88
  loc_AB000B: ExitProcCbHresult
  loc_AB0011: MemStI4 global_1800
End Function

Public Sub AnulandoServInmu(CodiInmu, BajaFeho) '9EF8CC
  'Data Table: 4F6F78
  loc_9EF8AC: ILdRf BajaFeho
  loc_9EF8AF: FStStrCopy var_88
  loc_9EF8B2: ILdRf var_88
  loc_9EF8B5: ILdRf CodiInmu
  loc_9EF8B8: FLdRfVar var_8C
  loc_9EF8BB: NewIfNullPr clsservinmu
  loc_9EF8BE: Call clsservinmu.AnulandoServInmu(from_stack_1v, from_stack_2v)
  loc_9EF8C3: LitNothing
  loc_9EF8C5: CastAd
  loc_9EF8C8: FStAdFunc var_8C
  loc_9EF8CB: ExitProcHresult
End Sub

Public Sub sSelect(sFiltro, FiltroCbo) 'AE4C88
  'Data Table: 4F6F78
  loc_AE4B4C: ILdRf sFiltro
  loc_AE4B4F: FStStrCopy var_88
  loc_AE4B52: ILdRf FiltroCbo
  loc_AE4B55: FStAd var_8C 
  loc_AE4B59: ILdRf var_88
  loc_AE4B5C: LitStr vbNullString
  loc_AE4B5F: EqStr
  loc_AE4B61: BranchF loc_AE4B6D
  loc_AE4B64: LitStr " WHERE CodiInmu = 0"
  loc_AE4B67: FStStrCopy var_90
  loc_AE4B6A: Branch loc_AE4BFB
  loc_AE4B6D: FLdRfVar var_92
  loc_AE4B70: FLdPr var_8C
  loc_AE4B73:  = Me.ListIndex
  loc_AE4B78: FLdI2 var_92
  loc_AE4B7B: FStI2 var_94
  loc_AE4B7E: FLdI2 var_94
  loc_AE4B81: LitI2_Byte 0
  loc_AE4B83: EqI2
  loc_AE4B84: BranchF loc_AE4B9E
  loc_AE4B87: LitStr " WHERE CodiInmu = "
  loc_AE4B8A: ILdRf var_88
  loc_AE4B8D: ConcatStr
  loc_AE4B8E: FStStrNoPop var_98
  loc_AE4B91: LitStr " ORDER BY inmueble.CodiInmu"
  loc_AE4B94: ConcatStr
  loc_AE4B95: FStStr var_90
  loc_AE4B98: FFree1Str var_98
  loc_AE4B9B: Branch loc_AE4BFB
  loc_AE4B9E: FLdI2 var_94
  loc_AE4BA1: LitI2_Byte 1
  loc_AE4BA3: EqI2
  loc_AE4BA4: BranchF loc_AE4BBE
  loc_AE4BA7: LitStr " WHERE persona.DetaPers LIKE '" & Chr(37)
  loc_AE4BAA: ILdRf var_88
  loc_AE4BAD: ConcatStr
  loc_AE4BAE: FStStrNoPop var_98
  loc_AE4BB1: LitStr Chr(37) & "' ORDER BY persona.DetaPers"
  loc_AE4BB4: ConcatStr
  loc_AE4BB5: FStStr var_90
  loc_AE4BB8: FFree1Str var_98
  loc_AE4BBB: Branch loc_AE4BFB
  loc_AE4BBE: FLdI2 var_94
  loc_AE4BC1: LitI2_Byte 2
  loc_AE4BC3: EqI2
  loc_AE4BC4: BranchF loc_AE4BDE
  loc_AE4BC7: LitStr " WHERE NomeInmu LIKE '"
  loc_AE4BCA: ILdRf var_88
  loc_AE4BCD: ConcatStr
  loc_AE4BCE: FStStrNoPop var_98
  loc_AE4BD1: LitStr Chr(37) & "' ORDER BY inmueble.NomeInmu"
  loc_AE4BD4: ConcatStr
  loc_AE4BD5: FStStr var_90
  loc_AE4BD8: FFree1Str var_98
  loc_AE4BDB: Branch loc_AE4BFB
  loc_AE4BDE: FLdI2 var_94
  loc_AE4BE1: LitI2_Byte 3
  loc_AE4BE3: EqI2
  loc_AE4BE4: BranchF loc_AE4BFB
  loc_AE4BE7: LitStr " WHERE inmueble.PadrInmu = '"
  loc_AE4BEA: ILdRf var_88
  loc_AE4BED: ConcatStr
  loc_AE4BEE: FStStrNoPop var_98
  loc_AE4BF1: LitStr "' ORDER BY inmueble.PadrInmu"
  loc_AE4BF4: ConcatStr
  loc_AE4BF5: FStStr var_90
  loc_AE4BF8: FFree1Str var_98
  loc_AE4BFB: LitStr "SELECT inmueble.CodiInmu, inmueble.PadrInmu, inmueble.CucuPers, ComuInmu, BonoInmu, infogov.persona.DetaPers, inmueble.DptoInmu, inmueble.DistInmu, inmueble.SeccInmu, inmueble.ManzInmu, inmueble.ParcInmu, inmueble.SubpInmu, inmueble.DigiInmu, inmueble.NomeInmu, inmueble.FebaInmu, inmueble.MobaInmu, inmueble.PaprInmu, inmueble.InscInmu, inmueble.FojaInmu, inmueble.TomoInmu, inmueble.ExpeInmu, FeinInmu,MatrInmu,AsieInmu,FemaInmu,MensInmu,ManpInmu,LoteInmu,PoliInmu,ObsaInmu,CausInmu,PapaInmu,"
  loc_AE4BFE: LitStr " inmueble.CodiCall, infogov.calle.DetaCall, inmueble.NucaInmu, inmueble.UbicInmu, inmueble.CodiBarr, infogov.barrio.DetaBarr, inmueble.MansInmu, inmueble.CasaInmu, inmueble.CodiLoca, infogov.localidad.DetaLoca, "
  loc_AE4C01: ConcatStr
  loc_AE4C02: FStStrNoPop var_98
  loc_AE4C05: LitStr " CocpInmu,DecpInmu,NupoInmu,CobpInmu,DebpInmu,MapoInmu,CapoInmu,UbpoInmu,ColpInmu,DelpInmu,CoppInmu,"
  loc_AE4C08: ConcatStr
  loc_AE4C09: FStStrNoPop var_9C
  loc_AE4C0C: LitStr " inmueble.FeesInmu, inmueble.SupeInmu, inmueble.SutiInmu, inmueble.SucuInmu, inmueble.SudeInmu, inmueble.SuscInmu, inmueble.SucmInmu, inmueble.PohoInmu, inmueble.SuprInmu, inmueble.SusuInmu, inmueble.SubaInmu, inmueble.SuenInmu, inmueble.CodiEsin, inmueble.CodiExce, inmueble.FfexInmu, inmueble.ObseInmu, DetaEsin, DetaExce, inmueble.CodiZoin, DetaZoin, inmueble.CodiGrin, DetaGrin, inmueble.PeriInmu, inmueble.BimeInmu"
  loc_AE4C0F: ConcatStr
  loc_AE4C10: FStStrNoPop var_A0
  loc_AE4C13: LitStr " FROM inmueble "
  loc_AE4C16: ConcatStr
  loc_AE4C17: FStStrNoPop var_A4
  loc_AE4C1A: LitStr " LEFT JOIN relacion USE INDEX (idxrela02) ON relacion.CodiOfic = 1 AND relacion.CuenCtct = inmueble.CodiInmu AND relacion.FebaRela IS NULL"
  loc_AE4C1D: ConcatStr
  loc_AE4C1E: FStStrNoPop var_A8
  loc_AE4C21: LitStr " LEFT JOIN infogov.persona On infogov.persona.CucuPers = relacion.CucuPers"
  loc_AE4C24: ConcatStr
  loc_AE4C25: FStStrNoPop var_AC
  loc_AE4C28: LitStr " LEFT JOIN infogov.calle   On inmueble.CodiCall = infogov.calle.CodiCall"
  loc_AE4C2B: ConcatStr
  loc_AE4C2C: FStStrNoPop var_B0
  loc_AE4C2F: LitStr " LEFT JOIN infogov.barrio  On inmueble.CodiBarr = infogov.barrio.CodiBarr"
  loc_AE4C32: ConcatStr
  loc_AE4C33: FStStrNoPop var_B4
  loc_AE4C36: LitStr " LEFT JOIN infogov.localidad On inmueble.CodiLoca = infogov.localidad.CodiLoca"
  loc_AE4C39: ConcatStr
  loc_AE4C3A: FStStrNoPop var_B8
  loc_AE4C3D: LitStr " LEFT JOIN estainmu On inmueble.CodiEsin = estainmu.CodiEsin "
  loc_AE4C40: ConcatStr
  loc_AE4C41: FStStrNoPop var_BC
  loc_AE4C44: LitStr " LEFT JOIN excepcion On inmueble.CodiExce = excepcion.CodiExce "
  loc_AE4C47: ConcatStr
  loc_AE4C48: FStStrNoPop var_C0
  loc_AE4C4B: LitStr " LEFT JOIN zonainmu On zonainmu.CodiZoin = inmueble.CodiZoin "
  loc_AE4C4E: ConcatStr
  loc_AE4C4F: FStStrNoPop var_C4
  loc_AE4C52: LitStr " LEFT JOIN grupinmu On grupinmu.CodiGrin = inmueble.CodiGrin "
  loc_AE4C55: ConcatStr
  loc_AE4C56: FStStrNoPop var_C8
  loc_AE4C59: ILdRf var_90
  loc_AE4C5C: ConcatStr
  loc_AE4C5D: FStStrNoPop var_CC
  loc_AE4C60: Call RedefineRS(from_stack_1v)
  loc_AE4C65: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_AE4C84: ExitProcHresult
  loc_AE4C85: MemStI4 global_1800
End Sub

Public Sub sSelectDomicilioPostal(sFiltro, FiltroCbo) 'A94C60
  'Data Table: 4F6F78
  loc_A94BC0: ILdRf sFiltro
  loc_A94BC3: FStStrCopy var_88
  loc_A94BC6: ILdRf FiltroCbo
  loc_A94BC9: FStAd var_8C 
  loc_A94BCD: ILdRf var_88
  loc_A94BD0: LitStr vbNullString
  loc_A94BD3: EqStr
  loc_A94BD5: BranchF loc_A94BE1
  loc_A94BD8: LitStr " WHERE CodiInmu = 0"
  loc_A94BDB: FStStrCopy var_90
  loc_A94BDE: Branch loc_A94C2F
  loc_A94BE1: FLdRfVar var_92
  loc_A94BE4: FLdPr var_8C
  loc_A94BE7:  = Me.ListIndex
  loc_A94BEC: FLdI2 var_92
  loc_A94BEF: FStI2 var_94
  loc_A94BF2: FLdI2 var_94
  loc_A94BF5: LitI2_Byte 0
  loc_A94BF7: EqI2
  loc_A94BF8: BranchF loc_A94C12
  loc_A94BFB: LitStr " WHERE CodiInmu = "
  loc_A94BFE: ILdRf var_88
  loc_A94C01: ConcatStr
  loc_A94C02: FStStrNoPop var_98
  loc_A94C05: LitStr " ORDER BY inmueble.CodiInmu"
  loc_A94C08: ConcatStr
  loc_A94C09: FStStr var_90
  loc_A94C0C: FFree1Str var_98
  loc_A94C0F: Branch loc_A94C2F
  loc_A94C12: FLdI2 var_94
  loc_A94C15: LitI2_Byte 1
  loc_A94C17: EqI2
  loc_A94C18: BranchF loc_A94C2F
  loc_A94C1B: LitStr " WHERE DetaPers LIKE '" & Chr(37)
  loc_A94C1E: ILdRf var_88
  loc_A94C21: ConcatStr
  loc_A94C22: FStStrNoPop var_98
  loc_A94C25: LitStr Chr(37) & "' ORDER BY persona.DetaPers"
  loc_A94C28: ConcatStr
  loc_A94C29: FStStr var_90
  loc_A94C2C: FFree1Str var_98
  loc_A94C2F: LitStr " SELECT inmueble.CodiInmu, inmueble.CucuPers, infogov.persona.DetaPers, "
  loc_A94C32: LitStr " CocpInmu, DecpInmu, NupoInmu, CobpInmu, DebpInmu, MapoInmu, CapoInmu, UbpoInmu, ColpInmu, DelpInmu, CoppInmu, CodiRuta"
  loc_A94C35: ConcatStr
  loc_A94C36: FStStrNoPop var_98
  loc_A94C39: LitStr " FROM inmueble"
  loc_A94C3C: ConcatStr
  loc_A94C3D: FStStrNoPop var_9C
  loc_A94C40: LitStr " LEFT JOIN infogov.persona on infogov.persona.CucuPers = inmueble.CucuPers"
  loc_A94C43: ConcatStr
  loc_A94C44: FStStrNoPop var_A0
  loc_A94C47: ILdRf var_90
  loc_A94C4A: ConcatStr
  loc_A94C4B: FStStrNoPop var_A4
  loc_A94C4E: Call RedefineRS(from_stack_1v)
  loc_A94C53: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_A94C5E: ExitProcHresult
End Sub

Public Function Propietarios(CodiInmu) 'AC3B80
  'Data Table: 4F6F78
  loc_AC3A90: ZeroRetVal
  loc_AC3A92: LitStr "SELECT ifnull(GROUP_CONCAT(DetaPers SEPARATOR ') ('),'') as Propietarios FROM (SELECT CucuPers FROM relacion WHERE CodiOfic = 1 AND CuenCtct = '"
  loc_AC3A95: ILdRf CodiInmu
  loc_AC3A98: CStrI4
  loc_AC3A9A: FStStrNoPop var_8C
  loc_AC3A9D: ConcatStr
  loc_AC3A9E: FStStrNoPop var_90
  loc_AC3AA1: LitStr "' AND relacion.TipoRela = 'Propietario' AND FebaRela IS NULL) AS r LEFT JOIN infogov.persona as p ON p.CucuPers = r.CucuPers"
  loc_AC3AA4: ConcatStr
  loc_AC3AA5: FStStrNoPop Propietarios
  loc_AC3AA8: Call EjecutarRs2(from_stack_1v)
  loc_AC3AAD: FFreeStr var_8C = "": var_90 = ""
  loc_AC3AB6: FLdRfVar var_98
  loc_AC3AB9: FLdPr Me
  loc_AC3ABC: MemLdPr Rs2
  loc_AC3ABF:  = Me.RecordCount
  loc_AC3AC4: ILdRf var_98
  loc_AC3AC7: LitI4 0
  loc_AC3ACC: GtI4
  loc_AC3ACD: BranchF loc_AC3B71
  loc_AC3AD0: FLdRfVar var_C0
  loc_AC3AD3: FLdRfVar var_B0
  loc_AC3AD6: LitVarStr var_AC, "Propietarios"
  loc_AC3ADB: PopAdLdVar
  loc_AC3ADC: FLdRfVar var_9C
  loc_AC3ADF: FLdPr Me
  loc_AC3AE2: MemLdPr Rs2
  loc_AC3AE5:  = Me.Fields
  loc_AC3AEA: FLdPr var_9C
  loc_AC3AED: from_stack_2 = Me.Item(from_stack_1)
  loc_AC3AF2: FLdPr var_B0
  loc_AC3AF5:  = Me.Value
  loc_AC3AFA: FLdRfVar var_C0
  loc_AC3AFD: LitVarStr var_D0, vbNullString
  loc_AC3B02: HardType
  loc_AC3B03: NeVarBool
  loc_AC3B05: FFreeAd var_9C = ""
  loc_AC3B0C: FFree1Var var_C0 = ""
  loc_AC3B0F: BranchF loc_AC3B68
  loc_AC3B12: LitVarStr var_D0, "("
  loc_AC3B17: FLdRfVar var_C0
  loc_AC3B1A: FLdRfVar var_B0
  loc_AC3B1D: LitVarStr var_AC, "Propietarios"
  loc_AC3B22: PopAdLdVar
  loc_AC3B23: FLdRfVar var_9C
  loc_AC3B26: FLdPr Me
  loc_AC3B29: MemLdPr Rs2
  loc_AC3B2C:  = Me.Fields
  loc_AC3B31: FLdPr var_9C
  loc_AC3B34: from_stack_2 = Me.Item(from_stack_1)
  loc_AC3B39: FLdPr var_B0
  loc_AC3B3C:  = Me.Value
  loc_AC3B41: FLdRfVar var_C0
  loc_AC3B44: ConcatVar var_E0
  loc_AC3B48: LitVarStr var_F0, ")"
  loc_AC3B4D: ConcatVar var_100
  loc_AC3B51: CStrVarTmp
  loc_AC3B52: FStStr var_88
  loc_AC3B55: FFreeAd var_9C = ""
  loc_AC3B5C: FFreeVar var_C0 = "": var_E0 = ""
  loc_AC3B65: Branch loc_AC3B6E
  loc_AC3B68: LitStr vbNullString
  loc_AC3B6B: FStStrCopy var_88
  loc_AC3B6E: Branch loc_AC3B77
  loc_AC3B71: LitStr vbNullString
  loc_AC3B74: FStStrCopy var_88
  loc_AC3B77: ExitProcCbHresult
End Function

Public Function Poseedor(CodiInmu) 'AB59C8
  'Data Table: 4F6F78
  loc_AB58F0: ZeroRetVal
  loc_AB58F2: LitStr "SELECT ifnull(GROUP_CONCAT(DetaPers SEPARATOR ' ; '),'') as Poseedor FROM (SELECT CucuPers FROM relacion WHERE CodiOfic = 1 AND CuenCtct = '"
  loc_AB58F5: ILdRf CodiInmu
  loc_AB58F8: CStrI4
  loc_AB58FA: FStStrNoPop var_8C
  loc_AB58FD: ConcatStr
  loc_AB58FE: FStStrNoPop var_90
  loc_AB5901: LitStr "' AND relacion.TipoRela = 'Poseedor' AND FebaRela IS NULL) AS r LEFT JOIN infogov.persona as p ON p.CucuPers = r.CucuPers"
  loc_AB5904: ConcatStr
  loc_AB5905: FStStrNoPop Poseedor
  loc_AB5908: Call EjecutarRs2(from_stack_1v)
  loc_AB590D: FFreeStr var_8C = "": var_90 = ""
  loc_AB5916: FLdRfVar var_98
  loc_AB5919: FLdPr Me
  loc_AB591C: MemLdPr Rs2
  loc_AB591F:  = Me.RecordCount
  loc_AB5924: ILdRf var_98
  loc_AB5927: LitI4 0
  loc_AB592C: GtI4
  loc_AB592D: BranchF loc_AB59B9
  loc_AB5930: FLdRfVar var_C0
  loc_AB5933: FLdRfVar var_B0
  loc_AB5936: LitVarStr var_AC, "Poseedor"
  loc_AB593B: PopAdLdVar
  loc_AB593C: FLdRfVar var_9C
  loc_AB593F: FLdPr Me
  loc_AB5942: MemLdPr Rs2
  loc_AB5945:  = Me.Fields
  loc_AB594A: FLdPr var_9C
  loc_AB594D: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5952: FLdPr var_B0
  loc_AB5955:  = Me.Value
  loc_AB595A: FLdRfVar var_C0
  loc_AB595D: LitVarStr var_D0, vbNullString
  loc_AB5962: HardType
  loc_AB5963: NeVarBool
  loc_AB5965: FFreeAd var_9C = ""
  loc_AB596C: FFree1Var var_C0 = ""
  loc_AB596F: BranchF loc_AB59B0
  loc_AB5972: FLdRfVar var_C0
  loc_AB5975: FLdRfVar var_B0
  loc_AB5978: LitVarStr var_AC, "Poseedor"
  loc_AB597D: PopAdLdVar
  loc_AB597E: FLdRfVar var_9C
  loc_AB5981: FLdPr Me
  loc_AB5984: MemLdPr Rs2
  loc_AB5987:  = Me.Fields
  loc_AB598C: FLdPr var_9C
  loc_AB598F: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5994: FLdPr var_B0
  loc_AB5997:  = Me.Value
  loc_AB599C: FLdRfVar var_C0
  loc_AB599F: CStrVarTmp
  loc_AB59A0: FStStr var_88
  loc_AB59A3: FFreeAd var_9C = ""
  loc_AB59AA: FFree1Var var_C0 = ""
  loc_AB59AD: Branch loc_AB59B6
  loc_AB59B0: LitStr vbNullString
  loc_AB59B3: FStStrCopy var_88
  loc_AB59B6: Branch loc_AB59BF
  loc_AB59B9: LitStr vbNullString
  loc_AB59BC: FStStrCopy var_88
  loc_AB59BF: ExitProcCbHresult
End Function

Public Sub sSelectExenciones(sFiltro, FiltroCbo) 'AA49A0
  'Data Table: 4F6F78
  loc_AA48E8: ILdRf sFiltro
  loc_AA48EB: FStStrCopy var_88
  loc_AA48EE: ILdRf FiltroCbo
  loc_AA48F1: FStAd var_8C 
  loc_AA48F5: ILdRf var_88
  loc_AA48F8: LitStr vbNullString
  loc_AA48FB: EqStr
  loc_AA48FD: BranchF loc_AA4909
  loc_AA4900: LitStr " WHERE CodiInmu = 0"
  loc_AA4903: FStStrCopy var_90
  loc_AA4906: Branch loc_AA4977
  loc_AA4909: FLdRfVar var_92
  loc_AA490C: FLdPr var_8C
  loc_AA490F:  = Me.ListIndex
  loc_AA4914: FLdI2 var_92
  loc_AA4917: FStI2 var_94
  loc_AA491A: FLdI2 var_94
  loc_AA491D: LitI2_Byte 0
  loc_AA491F: EqI2
  loc_AA4920: BranchF loc_AA493A
  loc_AA4923: LitStr " WHERE CodiInmu = "
  loc_AA4926: ILdRf var_88
  loc_AA4929: ConcatStr
  loc_AA492A: FStStrNoPop var_98
  loc_AA492D: LitStr " ORDER BY inmueble.CodiInmu"
  loc_AA4930: ConcatStr
  loc_AA4931: FStStr var_90
  loc_AA4934: FFree1Str var_98
  loc_AA4937: Branch loc_AA4977
  loc_AA493A: FLdI2 var_94
  loc_AA493D: LitI2_Byte 1
  loc_AA493F: EqI2
  loc_AA4940: BranchF loc_AA495A
  loc_AA4943: LitStr " WHERE DetaPers LIKE '" & Chr(37)
  loc_AA4946: ILdRf var_88
  loc_AA4949: ConcatStr
  loc_AA494A: FStStrNoPop var_98
  loc_AA494D: LitStr Chr(37) & "' ORDER BY persona.DetaPers"
  loc_AA4950: ConcatStr
  loc_AA4951: FStStr var_90
  loc_AA4954: FFree1Str var_98
  loc_AA4957: Branch loc_AA4977
  loc_AA495A: FLdI2 var_94
  loc_AA495D: LitI2_Byte 2
  loc_AA495F: EqI2
  loc_AA4960: BranchF loc_AA4977
  loc_AA4963: LitStr " WHERE inmueble.CodiExce = "
  loc_AA4966: ILdRf var_88
  loc_AA4969: ConcatStr
  loc_AA496A: FStStrNoPop var_98
  loc_AA496D: LitStr " ORDER BY inmueble.CodiExce"
  loc_AA4970: ConcatStr
  loc_AA4971: FStStr var_90
  loc_AA4974: FFree1Str var_98
  loc_AA4977: LitStr "SELECT CodiInmu, DetaPers, inmueble.CodiExce, DetaExce, FfexInmu, ExexInmu, MoexInmu FROM inmueble "
  loc_AA497A: LitStr " INNER JOIN infogov.persona ON inmueble.CucuPers = persona.CucuPers"
  loc_AA497D: ConcatStr
  loc_AA497E: FStStrNoPop var_98
  loc_AA4981: LitStr " LEFT JOIN excepcion ON inmueble.CodiExce = excepcion.CodiExce "
  loc_AA4984: ConcatStr
  loc_AA4985: FStStrNoPop var_9C
  loc_AA4988: ILdRf var_90
  loc_AA498B: ConcatStr
  loc_AA498C: FStStrNoPop var_A0
  loc_AA498F: Call RedefineRS(from_stack_1v)
  loc_AA4994: FFreeStr var_98 = "": var_9C = ""
  loc_AA499D: ExitProcHresult
End Sub

Public Sub sSelectDescuentoporBono(sFiltro, FiltroCbo) 'B0241C
  'Data Table: 4F6F78
  loc_B02260: ILdRf sFiltro
  loc_B02263: FStStrCopy var_88
  loc_B02266: ILdRf FiltroCbo
  loc_B02269: FStAd var_8C 
  loc_B0226D: FLdRfVar var_88
  loc_B02270: CVarRef
  loc_B02275: FLdRfVar var_B0
  loc_B02278: ImpAdCallFPR4  = Trim()
  loc_B0227D: FLdRfVar var_B0
  loc_B02280: LitVarStr var_C0, vbNullString
  loc_B02285: HardType
  loc_B02286: EqVarBool
  loc_B02288: FFree1Var var_B0 = ""
  loc_B0228B: BranchF loc_B02297
  loc_B0228E: LitStr vbNullString
  loc_B02291: FStStrCopy var_90
  loc_B02294: Branch loc_B02305
  loc_B02297: FLdRfVar var_D2
  loc_B0229A: FLdPr var_8C
  loc_B0229D:  = Me.ListIndex
  loc_B022A2: FLdI2 var_D2
  loc_B022A5: FStI2 var_D4
  loc_B022A8: FLdI2 var_D4
  loc_B022AB: LitI2_Byte 0
  loc_B022AD: EqI2
  loc_B022AE: BranchF loc_B022C8
  loc_B022B1: LitStr " WHERE Sector LIKE '" & Chr(37)
  loc_B022B4: ILdRf var_88
  loc_B022B7: ConcatStr
  loc_B022B8: FStStrNoPop var_D8
  loc_B022BB: LitStr Chr(37) & "' ORDER BY Sector, Cuenta"
  loc_B022BE: ConcatStr
  loc_B022BF: FStStr var_90
  loc_B022C2: FFree1Str var_D8
  loc_B022C5: Branch loc_B02305
  loc_B022C8: FLdI2 var_D4
  loc_B022CB: LitI2_Byte 1
  loc_B022CD: EqI2
  loc_B022CE: BranchF loc_B022E8
  loc_B022D1: LitStr " WHERE Cuenta = "
  loc_B022D4: ILdRf var_88
  loc_B022D7: ConcatStr
  loc_B022D8: FStStrNoPop var_D8
  loc_B022DB: LitStr " ORDER BY Cuenta"
  loc_B022DE: ConcatStr
  loc_B022DF: FStStr var_90
  loc_B022E2: FFree1Str var_D8
  loc_B022E5: Branch loc_B02305
  loc_B022E8: FLdI2 var_D4
  loc_B022EB: LitI2_Byte 2
  loc_B022ED: EqI2
  loc_B022EE: BranchF loc_B02305
  loc_B022F1: LitStr " WHERE DetaPers LIKE '" & Chr(37)
  loc_B022F4: ILdRf var_88
  loc_B022F7: ConcatStr
  loc_B022F8: FStStrNoPop var_D8
  loc_B022FB: LitStr Chr(37) & "' ORDER BY DetaPers"
  loc_B022FE: ConcatStr
  loc_B022FF: FStStr var_90
  loc_B02302: FFree1Str var_D8
  loc_B02305: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_descbono;"
  loc_B02308: LitStr " CREATE TEMPORARY TABLE tmp_descbono ("
  loc_B0230B: ConcatStr
  loc_B0230C: FStStrNoPop var_D8
  loc_B0230F: LitStr " ector` varchar(11) NOT NULL default '',"
  loc_B02312: ConcatStr
  loc_B02313: FStStrNoPop var_DC
  loc_B02316: LitStr " uenta` integer(8) NOT NULL default '0',"
  loc_B02319: ConcatStr
  loc_B0231A: FStStrNoPop var_E0
  loc_B0231D: LitStr " udoPers` integer(8) NOT NULL default '0',"
  loc_B02320: ConcatStr
  loc_B02321: FStStrNoPop var_E4
  loc_B02324: LitStr " etaPers` varchar(50) NOT NULL default '',"
  loc_B02327: ConcatStr
  loc_B02328: FStStrNoPop var_E8
  loc_B0232B: LitStr " mpoBono` decimal(10,2) NOT NULL default '0',"
  loc_B0232E: ConcatStr
  loc_B0232F: FStStrNoPop var_EC
  loc_B02332: LitStr " KEY mpidx` (`Sector`,`Cuenta`)"
  loc_B02335: ConcatStr
  loc_B02336: FStStrNoPop var_F0
  loc_B02339: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_B0233C: ConcatStr
  loc_B0233D: FStStrNoPop var_F4
  loc_B02340: Call RedefineRS(from_stack_1v)
  loc_B02345: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_B02358: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_perso;"
  loc_B0235B: LitStr " CREATE TEMPORARY TABLE tmp_perso"
  loc_B0235E: ConcatStr
  loc_B0235F: FStStrNoPop var_D8
  loc_B02362: LitStr " SELECT NudoPers, DetaPers FROM infogov.persona"
  loc_B02365: ConcatStr
  loc_B02366: FStStrNoPop var_DC
  loc_B02369: LitStr " WHERE NudoPers > 0;"
  loc_B0236C: ConcatStr
  loc_B0236D: FStStrNoPop var_E0
  loc_B02370: Call RedefineRS(from_stack_1v)
  loc_B02375: FFreeStr var_D8 = "": var_DC = ""
  loc_B0237E: LitStr " INSERT INTO tmp_descbono"
  loc_B02381: LitStr " SELECT 'Inmueble' Sector, CodiInmu Cuenta, NudoBono NudoPers, IFNULL(DetaPers,'') DetaPers, ImboInmu as ImpoBono"
  loc_B02384: ConcatStr
  loc_B02385: FStStrNoPop var_D8
  loc_B02388: LitStr " FROM inmueble"
  loc_B0238B: ConcatStr
  loc_B0238C: FStStrNoPop var_DC
  loc_B0238F: LitStr " LEFT JOIN tmp_perso ON tmp_perso.NudoPers = inmueble.NudoBono"
  loc_B02392: ConcatStr
  loc_B02393: FStStrNoPop var_E0
  loc_B02396: LitStr " WHERE BonoInmu = 1;"
  loc_B02399: ConcatStr
  loc_B0239A: FStStrNoPop var_E4
  loc_B0239D: LitStr " INSERT INTO tmp_descbono"
  loc_B023A0: ConcatStr
  loc_B023A1: FStStrNoPop var_E8
  loc_B023A4: LitStr " SELECT 'Comercio' Sector, CodiCome Cuenta, NudoBono NudoPers, IFNULL(DetaPers,'') DetaPers, ImboCome as ImpoBono"
  loc_B023A7: ConcatStr
  loc_B023A8: FStStrNoPop var_EC
  loc_B023AB: LitStr " FROM comercio"
  loc_B023AE: ConcatStr
  loc_B023AF: FStStrNoPop var_F0
  loc_B023B2: LitStr " LEFT JOIN tmp_perso ON tmp_perso.NudoPers = comercio.NudoBono"
  loc_B023B5: ConcatStr
  loc_B023B6: FStStrNoPop var_F4
  loc_B023B9: LitStr " WHERE BonoCome = 1;"
  loc_B023BC: ConcatStr
  loc_B023BD: FStStrNoPop var_F8
  loc_B023C0: LitStr " INSERT INTO tmp_descbono"
  loc_B023C3: ConcatStr
  loc_B023C4: FStStrNoPop var_FC
  loc_B023C7: LitStr " SELECT 'Facilidad' Sector, CodiFapa Cuenta, NudoBono NudoPers, IFNULL(DetaPers,'') DetaPers, ImboFapa as ImpoBono"
  loc_B023CA: ConcatStr
  loc_B023CB: FStStrNoPop var_100
  loc_B023CE: LitStr " FROM facipago"
  loc_B023D1: ConcatStr
  loc_B023D2: FStStrNoPop var_104
  loc_B023D5: LitStr " LEFT JOIN tmp_perso ON tmp_perso.NudoPers = facipago.NudoBono"
  loc_B023D8: ConcatStr
  loc_B023D9: FStStrNoPop var_108
  loc_B023DC: LitStr " WHERE BonoFapa = 1;"
  loc_B023DF: ConcatStr
  loc_B023E0: FStStrNoPop var_10C
  loc_B023E3: Call RedefineRS(from_stack_1v)
  loc_B023E8: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_B02407: LitStr " SELECT * FROM tmp_descbono "
  loc_B0240A: ILdRf var_90
  loc_B0240D: ConcatStr
  loc_B0240E: FStStrNoPop var_D8
  loc_B02411: Call RedefineRS(from_stack_1v)
  loc_B02416: FFree1Str var_D8
  loc_B02419: ExitProcHresult
End Sub

Private Function Proc_156_186_9E886C(arg_10) '9E886C
  'Data Table: 4F6F78
  loc_9E8850: ILdRf arg_10
  loc_9E8853: FStAd var_88 
  loc_9E8857: ILdRf arg_18
  loc_9E885A: FStAd var_8C 
  loc_9E885E: FLdPr Me
  loc_9E8861: RaiseEvent
  loc_9E8869: ExitProcHresult
  loc_9E886A: ModI4
End Function

Private Function Proc_156_187_A9D428(arg_C) 'A9D428
  'Data Table: 4F6F78
  loc_A9D368: ILdRf arg_18
  loc_A9D36B: FStAd var_88 
  loc_A9D36F: ILdRf arg_C
  loc_A9D372: FStR4 var_90
  loc_A9D375: ILdRf var_90
  loc_A9D378: LitI4 1
  loc_A9D37D: EqI4
  loc_A9D37E: BranchF loc_A9D384
  loc_A9D381: Branch loc_A9D417
  loc_A9D384: ILdRf var_90
  loc_A9D387: LitI4 9
  loc_A9D38C: EqI4
  loc_A9D38D: BranchF loc_A9D393
  loc_A9D390: Branch loc_A9D417
  loc_A9D393: ILdRf var_90
  loc_A9D396: LitI4 2
  loc_A9D39B: EqI4
  loc_A9D39C: BranchF loc_A9D3A2
  loc_A9D39F: Branch loc_A9D417
  loc_A9D3A2: ILdRf var_90
  loc_A9D3A5: LitI4 &HB
  loc_A9D3AA: EqI4
  loc_A9D3AB: BranchF loc_A9D3B1
  loc_A9D3AE: Branch loc_A9D417
  loc_A9D3B1: ILdRf var_90
  loc_A9D3B4: LitI4 &HA
  loc_A9D3B9: EqI4
  loc_A9D3BA: BranchF loc_A9D3C0
  loc_A9D3BD: Branch loc_A9D417
  loc_A9D3C0: ILdRf var_90
  loc_A9D3C3: LitI4 7
  loc_A9D3C8: EqI4
  loc_A9D3C9: BranchF loc_A9D3CF
  loc_A9D3CC: Branch loc_A9D417
  loc_A9D3CF: ILdRf var_90
  loc_A9D3D2: LitI4 8
  loc_A9D3D7: EqI4
  loc_A9D3D8: BranchF loc_A9D3DE
  loc_A9D3DB: Branch loc_A9D417
  loc_A9D3DE: ILdRf var_90
  loc_A9D3E1: LitI4 5
  loc_A9D3E6: EqI4
  loc_A9D3E7: BranchF loc_A9D3ED
  loc_A9D3EA: Branch loc_A9D417
  loc_A9D3ED: ILdRf var_90
  loc_A9D3F0: LitI4 6
  loc_A9D3F5: EqI4
  loc_A9D3F6: BranchF loc_A9D3FC
  loc_A9D3F9: Branch loc_A9D417
  loc_A9D3FC: ILdRf var_90
  loc_A9D3FF: LitI4 4
  loc_A9D404: EqI4
  loc_A9D405: BranchF loc_A9D40B
  loc_A9D408: Branch loc_A9D417
  loc_A9D40B: ILdRf var_90
  loc_A9D40E: LitI4 3
  loc_A9D413: EqI4
  loc_A9D414: BranchF loc_A9D417
  loc_A9D417: FLdI2 var_8A
  loc_A9D41A: BranchF loc_A9D425
  loc_A9D41D: LitI4 4
  loc_A9D422: IStI4 arg_14
  loc_A9D425: ExitProcHresult
  loc_A9D426: ModI4
End Function

Private Function Proc_156_188_9F6F48() '9F6F48
  'Data Table: 4F6F78
  loc_9F6F24: LitStr "Primary"
  loc_9F6F27: FLdPr Me
  loc_9F6F2A: LateIdLdVar var_94 DispID_4 0
  loc_9F6F31: CastAdVar Me
  loc_9F6F35: FStAdFunc var_98
  loc_9F6F38: FLdPr var_98
  loc_9F6F40: FFree1Ad var_98
  loc_9F6F43: FFree1Var var_94 = ""
  loc_9F6F46: ExitProcHresult
End Function

Private Function Proc_156_189_9DF47C(arg_C) '9DF47C
  'Data Table: 4F6F78
  loc_9DF460: ILdI4 arg_C
  loc_9DF463: FStStrCopy var_88
  loc_9DF466: ILdRf var_88
  loc_9DF469: LitStr "Primary"
  loc_9DF46C: EqStr
  loc_9DF46E: BranchF loc_9DF47B
  loc_9DF471: FLdPr Me
  loc_9DF474: MemLdStr RsFrm
  loc_9DF477: IStAd
  loc_9DF47B: ExitProcHresult
End Function
