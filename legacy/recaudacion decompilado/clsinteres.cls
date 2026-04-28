VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsinteres"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Mover(iCantidad) '9FE258
  'Data Table: 4058B4
  loc_9FE228: FLdRfVar var_88
  loc_9FE22B: FLdPr Me
  loc_9FE22E: MemLdPr global_60
  loc_9FE231:  = Me.RecordCount
  loc_9FE236: ILdRf var_88
  loc_9FE239: LitI4 0
  loc_9FE23E: GtI4
  loc_9FE23F: BranchF loc_9FE254
  loc_9FE242: LitVar_Missing var_98
  loc_9FE245: PopAdLdVar
  loc_9FE246: ILdI4 iCantidad
  loc_9FE249: FLdPr Me
  loc_9FE24C: MemLdPr global_60
  loc_9FE24F: Me.Move from_stack_1, from_stack_2
  loc_9FE254: ExitProcHresult
End Sub

Public Sub MoveFirst() '9EEC1C
  'Data Table: 4058B4
  loc_9EEBF4: FLdRfVar var_88
  loc_9EEBF7: FLdPr Me
  loc_9EEBFA: MemLdPr global_60
  loc_9EEBFD:  = Me.RecordCount
  loc_9EEC02: ILdRf var_88
  loc_9EEC05: LitI4 0
  loc_9EEC0A: GtI4
  loc_9EEC0B: BranchF loc_9EEC19
  loc_9EEC0E: FLdPr Me
  loc_9EEC11: MemLdPr global_60
  loc_9EEC14: Me.MoveFirst
  loc_9EEC19: ExitProcHresult
End Sub

Public Sub MoveLast() '9EEBC4
  'Data Table: 4058B4
  loc_9EEB9C: FLdRfVar var_88
  loc_9EEB9F: FLdPr Me
  loc_9EEBA2: MemLdPr global_60
  loc_9EEBA5:  = Me.RecordCount
  loc_9EEBAA: ILdRf var_88
  loc_9EEBAD: LitI4 0
  loc_9EEBB2: GtI4
  loc_9EEBB3: BranchF loc_9EEBC1
  loc_9EEBB6: FLdPr Me
  loc_9EEBB9: MemLdPr global_60
  loc_9EEBBC: Me.MoveLast
  loc_9EEBC1: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6DFD8
  'Data Table: 4058B4
  loc_A6DF60: FLdRfVar var_86
  loc_A6DF63: FLdPr Me
  loc_A6DF66: MemLdPr global_60
  loc_A6DF69:  = Me.EOF
  loc_A6DF6E: FLdI2 var_86
  loc_A6DF71: NotI4
  loc_A6DF72: FLdRfVar var_8C
  loc_A6DF75: FLdPr Me
  loc_A6DF78: MemLdPr global_60
  loc_A6DF7B:  = Me.RecordCount
  loc_A6DF80: ILdRf var_8C
  loc_A6DF83: LitI4 0
  loc_A6DF88: GtI4
  loc_A6DF89: AndI4
  loc_A6DF8A: BranchF loc_A6DF98
  loc_A6DF8D: FLdPr Me
  loc_A6DF90: MemLdPr global_60
  loc_A6DF93: Me.MoveNext
  loc_A6DF98: FLdRfVar var_86
  loc_A6DF9B: FLdPr Me
  loc_A6DF9E: MemLdPr global_60
  loc_A6DFA1:  = Me.EOF
  loc_A6DFA6: FLdI2 var_86
  loc_A6DFA9: FLdRfVar var_8C
  loc_A6DFAC: FLdPr Me
  loc_A6DFAF: MemLdPr global_60
  loc_A6DFB2:  = Me.RecordCount
  loc_A6DFB7: ILdRf var_8C
  loc_A6DFBA: LitI4 0
  loc_A6DFBF: GtI4
  loc_A6DFC0: AndI4
  loc_A6DFC1: BranchF loc_A6DFD4
  loc_A6DFC4: ImpAdCallFPR4 Beep()
  loc_A6DFC9: FLdPr Me
  loc_A6DFCC: MemLdPr global_60
  loc_A6DFCF: Me.MoveLast
  loc_A6DFD4: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B09A8
  'Data Table: 4058B4
  loc_9B099C: FLdPr Me
  loc_9B099F: MemLdPr global_60
  loc_9B09A2: Me.MoveNext
  loc_9B09A7: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B9A68
  'Data Table: 4058B4
  loc_9B9A54: LitVar_Missing var_94
  loc_9B9A57: PopAdLdVar
  loc_9B9A58: ILdI2 iValor
  loc_9B9A5B: CI4UI1
  loc_9B9A5C: FLdPr Me
  loc_9B9A5F: MemLdPr global_60
  loc_9B9A62: Me.Move from_stack_1, from_stack_2
  loc_9B9A67: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6C988
  'Data Table: 4058B4
  loc_A6C910: FLdRfVar var_86
  loc_A6C913: FLdPr Me
  loc_A6C916: MemLdPr global_60
  loc_A6C919:  = Me.BOF
  loc_A6C91E: FLdI2 var_86
  loc_A6C921: NotI4
  loc_A6C922: FLdRfVar var_8C
  loc_A6C925: FLdPr Me
  loc_A6C928: MemLdPr global_60
  loc_A6C92B:  = Me.RecordCount
  loc_A6C930: ILdRf var_8C
  loc_A6C933: LitI4 0
  loc_A6C938: GtI4
  loc_A6C939: AndI4
  loc_A6C93A: BranchF loc_A6C948
  loc_A6C93D: FLdPr Me
  loc_A6C940: MemLdPr global_60
  loc_A6C943: Me.MovePrevious
  loc_A6C948: FLdRfVar var_86
  loc_A6C94B: FLdPr Me
  loc_A6C94E: MemLdPr global_60
  loc_A6C951:  = Me.BOF
  loc_A6C956: FLdI2 var_86
  loc_A6C959: FLdRfVar var_8C
  loc_A6C95C: FLdPr Me
  loc_A6C95F: MemLdPr global_60
  loc_A6C962:  = Me.RecordCount
  loc_A6C967: ILdRf var_8C
  loc_A6C96A: LitI4 0
  loc_A6C96F: GtI4
  loc_A6C970: AndI4
  loc_A6C971: BranchF loc_A6C984
  loc_A6C974: ImpAdCallFPR4 Beep()
  loc_A6C979: FLdPr Me
  loc_A6C97C: MemLdPr global_60
  loc_A6C97F: Me.MoveFirst
  loc_A6C984: ExitProcHresult
End Sub

Public Property Get EOF() '9D6D78
  'Data Table: 4058B4
  loc_9D6D5C: FLdRfVar var_88
  loc_9D6D5F: FLdPr Me
  loc_9D6D62: MemLdPr global_60
  loc_9D6D65:  = Me.EOF
  loc_9D6D6A: FLdI2 var_88
  loc_9D6D6D: FStI2 var_86
  loc_9D6D70: ExitProcCbHresult
End Sub

Public Property Get BOF() '9DC2F8
  'Data Table: 4058B4
  loc_9DC2DC: FLdRfVar var_88
  loc_9DC2DF: FLdPr Me
  loc_9DC2E2: MemLdPr global_60
  loc_9DC2E5:  = Me.BOF
  loc_9DC2EA: FLdI2 var_88
  loc_9DC2ED: FStI2 var_86
  loc_9DC2F0: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B24B8
  'Data Table: 4058B4
  loc_9B24A8: ILdI4 sOrden
  loc_9B24AB: FLdPr Me
  loc_9B24AE: MemLdPr global_60
  loc_9B24B1: Me.Sort = from_stack_1
  loc_9B24B6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DDD60
  'Data Table: 4058B4
  loc_9DDD40: LitVar_Missing var_94
  loc_9DDD43: PopAdLdVar
  loc_9DDD44: LitI4 1
  loc_9DDD49: LitI4 0
  loc_9DDD4E: ILdI4 sFind
  loc_9DDD51: FLdPr Me
  loc_9DDD54: MemLdPr global_60
  loc_9DDD57: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DDD5C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9B999C
  'Data Table: 4058B4
  loc_9B9988: ILdI4 sCriterio
  loc_9B998B: CVarStr var_94
  loc_9B998E: PopAdLdVar
  loc_9B998F: FLdPr Me
  loc_9B9992: MemLdPr global_60
  loc_9B9995: Me.Filter = from_stack_1
  loc_9B999A: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D7874
  'Data Table: 4058B4
  loc_9D7858: FLdRfVar var_8C
  loc_9D785B: FLdPr Me
  loc_9D785E: MemLdPr global_60
  loc_9D7861:  = Me.AbsolutePosition
  loc_9D7866: ILdRf var_8C
  loc_9D7869: FStR4 var_88
  loc_9D786C: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D7C04
  'Data Table: 4058B4
  loc_9D7BE8: FLdRfVar var_8C
  loc_9D7BEB: FLdPr Me
  loc_9D7BEE: MemLdPr global_60
  loc_9D7BF1:  = Me.RecordCount
  loc_9D7BF6: ILdRf var_8C
  loc_9D7BF9: FStR4 var_88
  loc_9D7BFC: ExitProcCbHresult
End Sub

Public Sub AddNew(FechInte, PorcInte) 'AC852C
  'Data Table: 4058B4
  loc_AC8440: ILdRf FechInte
  loc_AC8443: FStStrCopy var_88
  loc_AC8446: FLdRfVar var_90
  loc_AC8449: from_stack_1v = NuevoRegistro()
  loc_AC844E: ILdRf var_90
  loc_AC8451: CI2I4
  loc_AC8452: FStI2 var_8A
  loc_AC8455: LitStr "START TRANSACTION; INSERT INTO interes (CodiInte, FechInte, PorcInte) "
  loc_AC8458: LitStr "VALUES ("
  loc_AC845B: ConcatStr
  loc_AC845C: FStStrNoPop var_94
  loc_AC845F: FLdI2 var_8A
  loc_AC8462: CStrUI1
  loc_AC8464: FStStrNoPop var_98
  loc_AC8467: ConcatStr
  loc_AC8468: FStStrNoPop var_9C
  loc_AC846B: LitStr ","
  loc_AC846E: ConcatStr
  loc_AC846F: CVarStr var_EC
  loc_AC8472: LitI4 1
  loc_AC8477: LitI4 1
  loc_AC847C: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_AC8481: FStVarCopyObj var_CC
  loc_AC8484: FLdRfVar var_CC
  loc_AC8487: FLdRfVar var_88
  loc_AC848A: CVarRef
  loc_AC848F: FLdRfVar var_DC
  loc_AC8492: ImpAdCallFPR4  = Format(, )
  loc_AC8497: FLdRfVar var_DC
  loc_AC849A: ConcatVar var_FC
  loc_AC849E: LitVarStr var_10C, ","
  loc_AC84A3: ConcatVar var_11C
  loc_AC84A7: LitI4 0
  loc_AC84AC: LitI4 -1
  loc_AC84B1: LitI4 1
  loc_AC84B6: LitStr "."
  loc_AC84B9: LitStr ","
  loc_AC84BC: FLdFPR8 PorcInte
  loc_AC84BF: CStrR8
  loc_AC84C1: FStStrNoPop var_120
  loc_AC84C4: ImpAdCallI2 Replace(, , , , , )
  loc_AC84C9: CVarStr var_130
  loc_AC84CC: ConcatVar var_140
  loc_AC84D0: LitVarStr var_150, ");"
  loc_AC84D5: ConcatVar var_160
  loc_AC84D9: CStrVarVal var_164
  loc_AC84DD: Call Proc_185_27_A48460()
  loc_AC84E2: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_120 = ""
  loc_AC84EF: FFreeVar var_CC = "": var_EC = "": var_DC = "": var_FC = "": var_11C = "": var_130 = "": var_140 = ""
  loc_AC8502: LitStr "COMMIT"
  loc_AC8505: Call Proc_185_27_A48460()
  loc_AC850A: FLdI2 var_8A
  loc_AC850D: CStrUI1
  loc_AC850F: FStStrNoPop var_94
  loc_AC8512: Call Encontrar(from_stack_1v)
  loc_AC8517: FFree1Str var_94
  loc_AC851A: ExitProcHresult
  loc_AC851B: LitStr "ROLLBACK;"
  loc_AC851E: Call Proc_185_27_A48460()
  loc_AC8523: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AC8526: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC852B: ExitProcHresult
End Sub

Public Sub Modificar(CodiInte, FechInte, PorcInte) 'AB33FC
  'Data Table: 4058B4
  loc_AB333C: ILdRf FechInte
  loc_AB333F: FStStrCopy var_88
  loc_AB3342: LitVarStr var_D8, "UPDATE interes SET FechInte = "
  loc_AB3347: LitI4 1
  loc_AB334C: LitI4 1
  loc_AB3351: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_AB3356: FStVarCopyObj var_B8
  loc_AB3359: FLdRfVar var_B8
  loc_AB335C: FLdRfVar var_88
  loc_AB335F: CVarRef
  loc_AB3364: FLdRfVar var_C8
  loc_AB3367: ImpAdCallFPR4  = Format(, )
  loc_AB336C: FLdRfVar var_C8
  loc_AB336F: ConcatVar var_E8
  loc_AB3373: LitVarStr var_F8, ", PorcInte = "
  loc_AB3378: ConcatVar var_108
  loc_AB337C: LitI4 0
  loc_AB3381: LitI4 -1
  loc_AB3386: LitI4 1
  loc_AB338B: LitStr "."
  loc_AB338E: LitStr ","
  loc_AB3391: FLdFPR8 PorcInte
  loc_AB3394: CStrR8
  loc_AB3396: FStStrNoPop var_10C
  loc_AB3399: ImpAdCallI2 Replace(, , , , , )
  loc_AB339E: CVarStr var_11C
  loc_AB33A1: ConcatVar var_12C
  loc_AB33A5: LitVarStr var_13C, " WHERE CodiInte = "
  loc_AB33AA: ConcatVar var_14C
  loc_AB33AE: FLdI2 CodiInte
  loc_AB33B1: CVarI2 var_15C
  loc_AB33B4: ConcatVar var_16C
  loc_AB33B8: LitVarStr var_17C, ";"
  loc_AB33BD: ConcatVar var_18C
  loc_AB33C1: CStrVarVal var_190
  loc_AB33C5: Call Proc_185_27_A48460()
  loc_AB33CA: FFreeStr var_10C = ""
  loc_AB33D1: FFreeVar var_B8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_11C = "": var_12C = "": var_14C = "": var_16C = ""
  loc_AB33E6: Call Requery()
  loc_AB33EB: FLdI2 CodiInte
  loc_AB33EE: CStrUI1
  loc_AB33F0: FStStrNoPop var_10C
  loc_AB33F3: Call Encontrar(from_stack_1v)
  loc_AB33F8: FFree1Str var_10C
  loc_AB33FB: ExitProcHresult
End Sub

Public Sub Requery() '9E7BA8
  'Data Table: 4058B4
  loc_9E7B84: LitI4 -1
  loc_9E7B89: FLdPr Me
  loc_9E7B8C: MemLdPr global_60
  loc_9E7B8F: Me.Requery from_stack_1
  loc_9E7B94: LitVarStr var_94, "Primary"
  loc_9E7B99: PopAdLdVar
  loc_9E7B9A: FLdPr Me
  loc_9E7B9D: LateIdCall
  loc_9E7BA5: ExitProcHresult
  loc_9E7BA6: NotI4
End Sub

Public Sub Encontrar(CodiInte) 'A66054
  'Data Table: 4058B4
  loc_A65FEC: ILdRf CodiInte
  loc_A65FEF: FStStrCopy var_88
  loc_A65FF2: Call Requery()
  loc_A65FF7: LitStr "CodiInte = '"
  loc_A65FFA: ILdRf var_88
  loc_A65FFD: ConcatStr
  loc_A65FFE: FStStrNoPop var_8C
  loc_A66001: LitStr "'"
  loc_A66004: ConcatStr
  loc_A66005: PopTmpLdAdStr
  loc_A66009: Call Find(from_stack_1v)
  loc_A6600E: FFreeStr var_8C = ""
  loc_A66015: FLdRfVar var_94
  loc_A66018: FLdPr Me
  loc_A6601B: MemLdPr global_60
  loc_A6601E:  = Me.RecordCount
  loc_A66023: ILdRf var_94
  loc_A66026: LitI4 0
  loc_A6602B: GtI4
  loc_A6602C: FLdRfVar var_98
  loc_A6602F: FLdPr Me
  loc_A66032: MemLdPr global_60
  loc_A66035:  = Me.AbsolutePosition
  loc_A6603A: ILdRf var_98
  loc_A6603D: LitI4 -3
  loc_A66042: EqI4
  loc_A66043: AndI4
  loc_A66044: BranchF loc_A66052
  loc_A66047: FLdPr Me
  loc_A6604A: MemLdPr global_60
  loc_A6604D: Me.MoveLast
  loc_A66052: ExitProcHresult
End Sub

Public Function NuevoRegistro() 'A7C8BC
  'Data Table: 4058B4
  loc_A7C83C: LitStr "SELECT * FROM interes ORDER BY CodiInte"
  loc_A7C83F: Call Proc_185_27_A48460()
  loc_A7C844: FLdRfVar var_8C
  loc_A7C847: FLdPr Me
  loc_A7C84A: MemLdPr global_64
  loc_A7C84D:  = Me.RecordCount
  loc_A7C852: ILdRf var_8C
  loc_A7C855: LitI4 0
  loc_A7C85A: GtI4
  loc_A7C85B: BranchF loc_A7C8AC
  loc_A7C85E: FLdPr Me
  loc_A7C861: MemLdPr global_64
  loc_A7C864: Me.MoveLast
  loc_A7C869: FLdRfVar var_B4
  loc_A7C86C: FLdRfVar var_A4
  loc_A7C86F: LitVarStr var_A0, "CodiInte"
  loc_A7C874: PopAdLdVar
  loc_A7C875: FLdRfVar var_90
  loc_A7C878: FLdPr Me
  loc_A7C87B: MemLdPr global_64
  loc_A7C87E:  = Me.Fields
  loc_A7C883: FLdPr var_90
  loc_A7C886: from_stack_2 = Me.Item(from_stack_1)
  loc_A7C88B: FLdPr var_A4
  loc_A7C88E:  = Me.Value
  loc_A7C893: FLdRfVar var_B4
  loc_A7C896: FnCIntVar
  loc_A7C898: LitI2_Byte 1
  loc_A7C89A: AddI2
  loc_A7C89B: CI4UI1
  loc_A7C89C: FStR4 var_88
  loc_A7C89F: FFreeAd var_90 = ""
  loc_A7C8A6: FFree1Var var_B4 = ""
  loc_A7C8A9: Branch loc_A7C8B4
  loc_A7C8AC: LitI4 1
  loc_A7C8B1: FStR4 var_88
  loc_A7C8B4: ExitProcCbHresult
  loc_A7C8BA: NotI4
End Function

Public Sub RedefineRS(sSelect) 'A5D078
  'Data Table: 4058B4
  loc_A5D014: ILdRf sSelect
  loc_A5D017: FStStrCopy var_88
  loc_A5D01A: LitNothing
  loc_A5D01C: CastAd
  loc_A5D01F: FStAdFuncNoPop
  loc_A5D022: FLdPr Me
  loc_A5D025: MemStAd
  loc_A5D029: FFree1Ad var_8C
  loc_A5D02C: New Recordset
  loc_A5D030: FStAdFuncNoPop
  loc_A5D033: FLdPr Me
  loc_A5D036: MemStAd
  loc_A5D03A: FFree1Ad var_8C
  loc_A5D03D: LitI4 -1
  loc_A5D042: LitI4 3
  loc_A5D047: LitI4 3
  loc_A5D04C: ImpAdLdI4 MemVar_D9301C
  loc_A5D04F: CVarAd
  loc_A5D053: PopAdLdVar
  loc_A5D054: ILdRf var_88
  loc_A5D057: CVarStr var_9C
  loc_A5D05A: PopAdLdVar
  loc_A5D05B: FLdPr Me
  loc_A5D05E: MemLdPr global_60
  loc_A5D061: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5D066: LitVarStr var_9C, "Primary"
  loc_A5D06B: PopAdLdVar
  loc_A5D06C: FLdPr Me
  loc_A5D06F: LateIdCall
  loc_A5D077: ExitProcHresult
End Sub

Public Property Get DataSource() '9F0544
  'Data Table: 4058B4
  loc_9F0520: ZeroRetVal
  loc_9F0522: FLdRfVar var_8C
  loc_9F0525: FLdPr Me
  loc_9F0528: MemLdPr global_60
  loc_9F052B:  = Me.DataSource
  loc_9F0530: ILdRf var_8C
  loc_9F0533: CastAd
  loc_9F0536: FStAdFunc var_88
  loc_9F0539: FFree1Ad var_8C
  loc_9F053C: ExitProcCbHresult
  loc_9F0542: NotI4
End Sub

Public Property Get CodiInte() 'A32324
  'Data Table: 4058B4
  loc_A322E0: FLdRfVar var_B0
  loc_A322E3: FLdRfVar var_A0
  loc_A322E6: LitVarStr var_9C, "CodiInte"
  loc_A322EB: PopAdLdVar
  loc_A322EC: FLdRfVar var_8C
  loc_A322EF: FLdPr Me
  loc_A322F2: MemLdPr global_60
  loc_A322F5:  = Me.Fields
  loc_A322FA: FLdPr var_8C
  loc_A322FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A32302: FLdPr var_A0
  loc_A32305:  = Me.Value
  loc_A3230A: FLdRfVar var_B0
  loc_A3230D: CI2Var
  loc_A3230E: FStI2 var_86
  loc_A32311: FFreeAd var_8C = ""
  loc_A32318: FFree1Var var_B0 = ""
  loc_A3231B: ExitProcCbHresult
  loc_A32321: FLdPr arg_0
End Sub

Public Property Get PorcInte() 'A2AFA4
  'Data Table: 4058B4
  loc_A2AF60: FLdRfVar var_B4
  loc_A2AF63: FLdRfVar var_A4
  loc_A2AF66: LitVarStr var_A0, "PorcInte"
  loc_A2AF6B: PopAdLdVar
  loc_A2AF6C: FLdRfVar var_90
  loc_A2AF6F: FLdPr Me
  loc_A2AF72: MemLdPr global_60
  loc_A2AF75:  = Me.Fields
  loc_A2AF7A: FLdPr var_90
  loc_A2AF7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AF82: FLdPr var_A4
  loc_A2AF85:  = Me.Value
  loc_A2AF8A: FLdRfVar var_B4
  loc_A2AF8D: CR4Var
  loc_A2AF8E: FStFPR8 var_8C
  loc_A2AF91: FFreeAd var_90 = ""
  loc_A2AF98: FFree1Var var_B4 = ""
  loc_A2AF9B: ExitProcCbHresult
  loc_A2AFA1: UMiCy
  loc_A2AFA2: LtI2
End Sub

Public Property Get FechInte() 'A3A1C8
  'Data Table: 4058B4
  loc_A3A184: ZeroRetVal
  loc_A3A186: FLdRfVar var_B0
  loc_A3A189: FLdRfVar var_A0
  loc_A3A18C: LitVarStr var_9C, "FechInte"
  loc_A3A191: PopAdLdVar
  loc_A3A192: FLdRfVar var_8C
  loc_A3A195: FLdPr Me
  loc_A3A198: MemLdPr global_60
  loc_A3A19B:  = Me.Fields
  loc_A3A1A0: FLdPr var_8C
  loc_A3A1A3: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A1A8: FLdPr var_A0
  loc_A3A1AB:  = Me.Value
  loc_A3A1B0: FLdRfVar var_B0
  loc_A3A1B3: CStrVarTmp
  loc_A3A1B4: FStStr var_88
  loc_A3A1B7: FFreeAd var_8C = ""
  loc_A3A1BE: FFree1Var var_B0 = ""
  loc_A3A1C1: ExitProcCbHresult
End Sub

Public Function BuscaInteres(sFechVenc) 'AD9984
  'Data Table: 4058B4
  loc_AD984C: ILdRf sFechVenc
  loc_AD984F: FStStrCopy var_90
  loc_AD9852: LitStr "Municipalidad de Guaymallén"
  loc_AD9855: LitStr "Municipalidad de San Carlos"
  loc_AD9858: EqStr
  loc_AD985A: LitStr "Municipalidad de Guaymallén"
  loc_AD985D: LitStr "Municipalidad de Rivadavia"
  loc_AD9860: EqStr
  loc_AD9862: OrI4
  loc_AD9863: LitStr "Municipalidad de Guaymallén"
  loc_AD9866: LitStr "Municipalidad de Tunuyán"
  loc_AD9869: EqStr
  loc_AD986B: OrI4
  loc_AD986C: BranchF loc_AD9916
  loc_AD986F: LitVarStr var_E0, "SELECT * FROM interes WHERE FechInte >= "
  loc_AD9874: LitI4 1
  loc_AD9879: LitI4 1
  loc_AD987E: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_AD9883: FStVarCopyObj var_C0
  loc_AD9886: FLdRfVar var_C0
  loc_AD9889: FLdRfVar var_90
  loc_AD988C: CVarRef
  loc_AD9891: FLdRfVar var_D0
  loc_AD9894: ImpAdCallFPR4  = Format(, )
  loc_AD9899: FLdRfVar var_D0
  loc_AD989C: ConcatVar var_F0
  loc_AD98A0: CStrVarVal var_F4
  loc_AD98A4: Call Proc_185_27_A48460()
  loc_AD98A9: FFree1Str var_F4
  loc_AD98AC: FFreeVar var_C0 = "": var_D0 = ""
  loc_AD98B5: FLdRfVar var_F8
  loc_AD98B8: FLdPr Me
  loc_AD98BB: MemLdPr global_64
  loc_AD98BE:  = Me.RecordCount
  loc_AD98C3: ILdRf var_F8
  loc_AD98C6: LitI4 0
  loc_AD98CB: GtI4
  loc_AD98CC: BranchF loc_AD990D
  loc_AD98CF: FLdRfVar var_C0
  loc_AD98D2: FLdRfVar var_100
  loc_AD98D5: LitVarStr var_A0, "PorcInte"
  loc_AD98DA: PopAdLdVar
  loc_AD98DB: FLdRfVar var_FC
  loc_AD98DE: FLdPr Me
  loc_AD98E1: MemLdPr global_64
  loc_AD98E4:  = Me.Fields
  loc_AD98E9: FLdPr var_FC
  loc_AD98EC: from_stack_2 = Me.Item(from_stack_1)
  loc_AD98F1: FLdPr var_100
  loc_AD98F4:  = Me.Value
  loc_AD98F9: FLdRfVar var_C0
  loc_AD98FC: CR4Var
  loc_AD98FD: FStFPR8 var_8C
  loc_AD9900: FFreeAd var_FC = ""
  loc_AD9907: FFree1Var var_C0 = ""
  loc_AD990A: Branch loc_AD9913
  loc_AD990D: LitI2_Byte 0
  loc_AD990F: CR8I2
  loc_AD9910: FStFPR8 var_8C
  loc_AD9913: Branch loc_AD997C
  loc_AD9916: LitStr "SELECT * FROM interes"
  loc_AD9919: Call Proc_185_27_A48460()
  loc_AD991E: FLdRfVar var_F8
  loc_AD9921: FLdPr Me
  loc_AD9924: MemLdPr global_64
  loc_AD9927:  = Me.RecordCount
  loc_AD992C: ILdRf var_F8
  loc_AD992F: LitI4 0
  loc_AD9934: GtI4
  loc_AD9935: BranchF loc_AD9976
  loc_AD9938: FLdRfVar var_C0
  loc_AD993B: FLdRfVar var_100
  loc_AD993E: LitVarStr var_A0, "PorcInte"
  loc_AD9943: PopAdLdVar
  loc_AD9944: FLdRfVar var_FC
  loc_AD9947: FLdPr Me
  loc_AD994A: MemLdPr global_64
  loc_AD994D:  = Me.Fields
  loc_AD9952: FLdPr var_FC
  loc_AD9955: from_stack_2 = Me.Item(from_stack_1)
  loc_AD995A: FLdPr var_100
  loc_AD995D:  = Me.Value
  loc_AD9962: FLdRfVar var_C0
  loc_AD9965: CR4Var
  loc_AD9966: FStFPR8 var_8C
  loc_AD9969: FFreeAd var_FC = ""
  loc_AD9970: FFree1Var var_C0 = ""
  loc_AD9973: Branch loc_AD997C
  loc_AD9976: LitI2_Byte 0
  loc_AD9978: CR8I2
  loc_AD9979: FStFPR8 var_8C
  loc_AD997C: ExitProcCbHresult
End Function

Public Function BuscaInteresNew(sFechVenc) 'AADEC8
  'Data Table: 4058B4
  loc_AADDF8: ILdRf sFechVenc
  loc_AADDFB: FStStrCopy var_90
  loc_AADDFE: LitStr "SELECT * FROM interes "
  loc_AADE01: Call Proc_185_27_A48460()
  loc_AADE06: FLdRfVar var_9C
  loc_AADE09: FLdPr Me
  loc_AADE0C: MemLdPr global_64
  loc_AADE0F:  = Me.RecordCount
  loc_AADE14: ILdRf var_9C
  loc_AADE17: LitI4 0
  loc_AADE1C: GtI4
  loc_AADE1D: BranchF loc_AADEB9
  loc_AADE20: FLdPr Me
  loc_AADE23: MemLdPr global_64
  loc_AADE26: Me.MoveLast
  loc_AADE2B: FLdRfVar var_C4
  loc_AADE2E: FLdRfVar var_B4
  loc_AADE31: LitVarStr var_B0, "PorcInte"
  loc_AADE36: PopAdLdVar
  loc_AADE37: FLdRfVar var_A0
  loc_AADE3A: FLdPr Me
  loc_AADE3D: MemLdPr global_64
  loc_AADE40:  = Me.Fields
  loc_AADE45: FLdPr var_A0
  loc_AADE48: from_stack_2 = Me.Item(from_stack_1)
  loc_AADE4D: FLdPr var_B4
  loc_AADE50:  = Me.Value
  loc_AADE55: FLdRfVar var_C4
  loc_AADE58: FnCDblVar
  loc_AADE5A: FStFPR8 var_98
  loc_AADE5D: FFreeAd var_A0 = ""
  loc_AADE64: FFree1Var var_C4 = ""
  loc_AADE67: FLdPr Me
  loc_AADE6A: MemLdPr global_64
  loc_AADE6D: Me.MovePrevious
  loc_AADE72: FLdRfVar var_C4
  loc_AADE75: FLdRfVar var_B4
  loc_AADE78: LitVarStr var_B0, "PorcInte"
  loc_AADE7D: PopAdLdVar
  loc_AADE7E: FLdRfVar var_A0
  loc_AADE81: FLdPr Me
  loc_AADE84: MemLdPr global_64
  loc_AADE87:  = Me.Fields
  loc_AADE8C: FLdPr var_A0
  loc_AADE8F: from_stack_2 = Me.Item(from_stack_1)
  loc_AADE94: FLdPr var_B4
  loc_AADE97:  = Me.Value
  loc_AADE9C: FLdFPR8 var_98
  loc_AADE9F: FLdFPR8 var_98
  loc_AADEA2: FLdRfVar var_C4
  loc_AADEA5: FnCDblVar
  loc_AADEA7: SubR4
  loc_AADEA8: AddR8
  loc_AADEA9: FStFPR8 var_8C
  loc_AADEAC: FFreeAd var_A0 = ""
  loc_AADEB3: FFree1Var var_C4 = ""
  loc_AADEB6: Branch loc_AADEBF
  loc_AADEB9: LitI2_Byte 0
  loc_AADEBB: CR8I2
  loc_AADEBC: FStFPR8 var_8C
  loc_AADEBF: ExitProcCbHresult
End Function

Private Function Proc_185_26_9F0430() '9F0430
  'Data Table: 4058B4
  loc_9F040C: LitStr "Primary"
  loc_9F040F: FLdPr Me
  loc_9F0412: LateIdLdVar var_94 DispID_4 0
  loc_9F0419: CastAdVar Me
  loc_9F041D: FStAdFunc var_98
  loc_9F0420: FLdPr var_98
  loc_9F0428: FFree1Ad var_98
  loc_9F042B: FFree1Var var_94 = ""
  loc_9F042E: ExitProcHresult
End Function

Private Function Proc_185_27_A48460(arg_C) 'A48460
  'Data Table: 4058B4
  loc_A4840C: ILdRf arg_C
  loc_A4840F: FStStrCopy var_88
  loc_A48412: LitNothing
  loc_A48414: CastAd
  loc_A48417: FStAdFuncNoPop
  loc_A4841A: FLdPr Me
  loc_A4841D: MemStAd
  loc_A48421: FFree1Ad var_8C
  loc_A48424: New Recordset
  loc_A48428: FStAdFuncNoPop
  loc_A4842B: FLdPr Me
  loc_A4842E: MemStAd
  loc_A48432: FFree1Ad var_8C
  loc_A48435: LitI4 -1
  loc_A4843A: LitI4 3
  loc_A4843F: LitI4 3
  loc_A48444: ImpAdLdI4 MemVar_D9301C
  loc_A48447: CVarAd
  loc_A4844B: PopAdLdVar
  loc_A4844C: ILdRf var_88
  loc_A4844F: CVarStr var_9C
  loc_A48452: PopAdLdVar
  loc_A48453: FLdPr Me
  loc_A48456: MemLdPr global_64
  loc_A48459: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4845E: ExitProcHresult
End Function

Private Function Proc_185_28_9DDB7C(arg_C) '9DDB7C
  'Data Table: 4058B4
  loc_9DDB60: ILdI4 arg_C
  loc_9DDB63: FStStrCopy var_88
  loc_9DDB66: ILdRf var_88
  loc_9DDB69: LitStr "Primary"
  loc_9DDB6C: EqStr
  loc_9DDB6E: BranchF loc_9DDB7B
  loc_9DDB71: FLdPr Me
  loc_9DDB74: MemLdStr global_60
  loc_9DDB77: IStAd
  loc_9DDB7B: ExitProcHresult
End Function
