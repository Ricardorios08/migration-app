VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clscreditos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Mover(iCantidad) '9FD598
  'Data Table: 422D28
  loc_9FD568: FLdRfVar var_88
  loc_9FD56B: FLdPr Me
  loc_9FD56E: MemLdPr global_60
  loc_9FD571:  = Me.RecordCount
  loc_9FD576: ILdRf var_88
  loc_9FD579: LitI4 0
  loc_9FD57E: GtI4
  loc_9FD57F: BranchF loc_9FD594
  loc_9FD582: LitVar_Missing var_98
  loc_9FD585: PopAdLdVar
  loc_9FD586: ILdI4 iCantidad
  loc_9FD589: FLdPr Me
  loc_9FD58C: MemLdPr global_60
  loc_9FD58F: Me.Move from_stack_1, from_stack_2
  loc_9FD594: ExitProcHresult
End Sub

Public Sub MoveFirst() '9EACDC
  'Data Table: 422D28
  loc_9EACB4: FLdRfVar var_88
  loc_9EACB7: FLdPr Me
  loc_9EACBA: MemLdPr global_60
  loc_9EACBD:  = Me.RecordCount
  loc_9EACC2: ILdRf var_88
  loc_9EACC5: LitI4 0
  loc_9EACCA: GtI4
  loc_9EACCB: BranchF loc_9EACD9
  loc_9EACCE: FLdPr Me
  loc_9EACD1: MemLdPr global_60
  loc_9EACD4: Me.MoveFirst
  loc_9EACD9: ExitProcHresult
End Sub

Public Sub MoveLast() '9EAC2C
  'Data Table: 422D28
  loc_9EAC04: FLdRfVar var_88
  loc_9EAC07: FLdPr Me
  loc_9EAC0A: MemLdPr global_60
  loc_9EAC0D:  = Me.RecordCount
  loc_9EAC12: ILdRf var_88
  loc_9EAC15: LitI4 0
  loc_9EAC1A: GtI4
  loc_9EAC1B: BranchF loc_9EAC29
  loc_9EAC1E: FLdPr Me
  loc_9EAC21: MemLdPr global_60
  loc_9EAC24: Me.MoveLast
  loc_9EAC29: ExitProcHresult
  loc_9EAC2A: CStrVarTmp
End Sub

Public Sub MoveNext() 'A69070
  'Data Table: 422D28
  loc_A68FF8: FLdRfVar var_86
  loc_A68FFB: FLdPr Me
  loc_A68FFE: MemLdPr global_60
  loc_A69001:  = Me.EOF
  loc_A69006: FLdI2 var_86
  loc_A69009: NotI4
  loc_A6900A: FLdRfVar var_8C
  loc_A6900D: FLdPr Me
  loc_A69010: MemLdPr global_60
  loc_A69013:  = Me.RecordCount
  loc_A69018: ILdRf var_8C
  loc_A6901B: LitI4 0
  loc_A69020: GtI4
  loc_A69021: AndI4
  loc_A69022: BranchF loc_A69030
  loc_A69025: FLdPr Me
  loc_A69028: MemLdPr global_60
  loc_A6902B: Me.MoveNext
  loc_A69030: FLdRfVar var_86
  loc_A69033: FLdPr Me
  loc_A69036: MemLdPr global_60
  loc_A69039:  = Me.EOF
  loc_A6903E: FLdI2 var_86
  loc_A69041: FLdRfVar var_8C
  loc_A69044: FLdPr Me
  loc_A69047: MemLdPr global_60
  loc_A6904A:  = Me.RecordCount
  loc_A6904F: ILdRf var_8C
  loc_A69052: LitI4 0
  loc_A69057: GtI4
  loc_A69058: AndI4
  loc_A69059: BranchF loc_A6906C
  loc_A6905C: ImpAdCallFPR4 Beep()
  loc_A69061: FLdPr Me
  loc_A69064: MemLdPr global_60
  loc_A69067: Me.MoveLast
  loc_A6906C: ExitProcHresult
  loc_A6906D: ImpAdLdFPR4 MemVar_4012FC68
End Sub

Public Sub MoveSiguiente() '9B0DE0
  'Data Table: 422D28
  loc_9B0DD4: FLdPr Me
  loc_9B0DD7: MemLdPr global_60
  loc_9B0DDA: Me.MoveNext
  loc_9B0DDF: ExitProcHresult
End Sub

Public Sub Move(iValor) '9BA43C
  'Data Table: 422D28
  loc_9BA428: LitVar_Missing var_94
  loc_9BA42B: PopAdLdVar
  loc_9BA42C: ILdI2 iValor
  loc_9BA42F: CI4UI1
  loc_9BA430: FLdPr Me
  loc_9BA433: MemLdPr global_60
  loc_9BA436: Me.Move from_stack_1, from_stack_2
  loc_9BA43B: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A69B98
  'Data Table: 422D28
  loc_A69B20: FLdRfVar var_86
  loc_A69B23: FLdPr Me
  loc_A69B26: MemLdPr global_60
  loc_A69B29:  = Me.BOF
  loc_A69B2E: FLdI2 var_86
  loc_A69B31: NotI4
  loc_A69B32: FLdRfVar var_8C
  loc_A69B35: FLdPr Me
  loc_A69B38: MemLdPr global_60
  loc_A69B3B:  = Me.RecordCount
  loc_A69B40: ILdRf var_8C
  loc_A69B43: LitI4 0
  loc_A69B48: GtI4
  loc_A69B49: AndI4
  loc_A69B4A: BranchF loc_A69B58
  loc_A69B4D: FLdPr Me
  loc_A69B50: MemLdPr global_60
  loc_A69B53: Me.MovePrevious
  loc_A69B58: FLdRfVar var_86
  loc_A69B5B: FLdPr Me
  loc_A69B5E: MemLdPr global_60
  loc_A69B61:  = Me.BOF
  loc_A69B66: FLdI2 var_86
  loc_A69B69: FLdRfVar var_8C
  loc_A69B6C: FLdPr Me
  loc_A69B6F: MemLdPr global_60
  loc_A69B72:  = Me.RecordCount
  loc_A69B77: ILdRf var_8C
  loc_A69B7A: LitI4 0
  loc_A69B7F: GtI4
  loc_A69B80: AndI4
  loc_A69B81: BranchF loc_A69B94
  loc_A69B84: ImpAdCallFPR4 Beep()
  loc_A69B89: FLdPr Me
  loc_A69B8C: MemLdPr global_60
  loc_A69B8F: Me.MoveFirst
  loc_A69B94: ExitProcHresult
  loc_A69B95: ImpAdLdI2 MemVar_0
End Sub

Public Property Get EOF() '9DBAA8
  'Data Table: 422D28
  loc_9DBA8C: FLdRfVar var_88
  loc_9DBA8F: FLdPr Me
  loc_9DBA92: MemLdPr global_60
  loc_9DBA95:  = Me.EOF
  loc_9DBA9A: FLdI2 var_88
  loc_9DBA9D: FStI2 var_86
  loc_9DBAA0: ExitProcCbHresult
  loc_9DBAA6: AryLock
End Sub

Public Property Get BOF() '9DC17C
  'Data Table: 422D28
  loc_9DC160: FLdRfVar var_88
  loc_9DC163: FLdPr Me
  loc_9DC166: MemLdPr global_60
  loc_9DC169:  = Me.BOF
  loc_9DC16E: FLdI2 var_88
  loc_9DC171: FStI2 var_86
  loc_9DC174: ExitProcCbHresult
  loc_9DC17A: FFree1Str var_4FFD
End Sub

Public Sub Sort(sOrden) '9B46B8
  'Data Table: 422D28
  loc_9B46A8: ILdI4 sOrden
  loc_9B46AB: FLdPr Me
  loc_9B46AE: MemLdPr global_60
  loc_9B46B1: Me.Sort = from_stack_1
  loc_9B46B6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E4840
  'Data Table: 422D28
  loc_9E4820: LitVar_Missing var_94
  loc_9E4823: PopAdLdVar
  loc_9E4824: LitI4 1
  loc_9E4829: LitI4 0
  loc_9E482E: ILdI4 sFind
  loc_9E4831: FLdPr Me
  loc_9E4834: MemLdPr global_60
  loc_9E4837: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E483C: ExitProcHresult
  loc_9E483D: Erase
  loc_9E483E: FStStr var_4FFD
End Sub

Public Sub Filter(sCriterio) '9B8B44
  'Data Table: 422D28
  loc_9B8B30: ILdI4 sCriterio
  loc_9B8B33: CVarStr var_94
  loc_9B8B36: PopAdLdVar
  loc_9B8B37: FLdPr Me
  loc_9B8B3A: MemLdPr global_60
  loc_9B8B3D: Me.Filter = from_stack_1
  loc_9B8B42: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9DC5A4
  'Data Table: 422D28
  loc_9DC588: FLdRfVar var_8C
  loc_9DC58B: FLdPr Me
  loc_9DC58E: MemLdPr global_60
  loc_9DC591:  = Me.AbsolutePosition
  loc_9DC596: ILdRf var_8C
  loc_9DC599: FStR4 var_88
  loc_9DC59C: ExitProcCbHresult
  loc_9DC5A2: FFreeStr  = ""
End Sub

Public Property Get RecordCount() '9DC428
  'Data Table: 422D28
  loc_9DC40C: FLdRfVar var_8C
  loc_9DC40F: FLdPr Me
  loc_9DC412: MemLdPr global_60
  loc_9DC415:  = Me.RecordCount
  loc_9DC41A: ILdRf var_8C
  loc_9DC41D: FStR4 var_88
  loc_9DC420: ExitProcCbHresult
  loc_9DC426: FFreeStr  = ""
End Sub

Public Sub AddNew(CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, PeriInfo, CodiConc, CodiTimo, ExpeCred, DetaCred, DebeCred, CredCred) 'B484F0
  'Data Table: 422D28
  loc_B48258: ILdRf CuenCtct
  loc_B4825B: FStStrCopy var_88
  loc_B4825E: ILdRf CodiConc
  loc_B48261: FStStrCopy var_8C
  loc_B48264: ILdRf AddNew0
  loc_B48267: FStStrCopy var_90
  loc_B4826A: ILdRf AddNew4
  loc_B4826D: FStStrCopy var_94
  loc_B48270: FLdRfVar var_A0
  loc_B48273: ILdRf var_88
  loc_B48276: FLdUI1
  loc_B4827A: from_stack_3v = NuevoRegistro(from_stack_1v, from_stack_2v)
  loc_B4827F: ILdRf var_A0
  loc_B48282: FStR4 var_9C
  loc_B48285: LitI2_Byte 0
  loc_B48287: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B4828C: FStFPR8 var_1C8
  loc_B4828F: LitStr "START TRANSACTION; INSERT INTO creditos (CodiOfic,CuenCtct,NumeCred,MoviCred,PeriCtct,BimeCtct,NumeCtct,MoviCtct,CodiTili,NumeLiqu,PeriBole,NumeBole,FealCtct,PeriInfo,CodiConc,CodiTimo,ExpeCred,DetaCred,DebeCred,CredCred,CodiUsua) VALUES ("
  loc_B48292: FLdUI1
  loc_B48296: CStrI2
  loc_B48298: FStStrNoPop var_A4
  loc_B4829B: ConcatStr
  loc_B4829C: FStStrNoPop var_A8
  loc_B4829F: LitStr ",'"
  loc_B482A2: ConcatStr
  loc_B482A3: FStStrNoPop var_AC
  loc_B482A6: ILdRf var_88
  loc_B482A9: ConcatStr
  loc_B482AA: FStStrNoPop var_B0
  loc_B482AD: LitStr "',"
  loc_B482B0: ConcatStr
  loc_B482B1: FStStrNoPop var_B4
  loc_B482B4: ILdRf var_9C
  loc_B482B7: CStrI4
  loc_B482B9: FStStrNoPop var_B8
  loc_B482BC: ConcatStr
  loc_B482BD: FStStrNoPop var_BC
  loc_B482C0: LitStr ",1,"
  loc_B482C3: ConcatStr
  loc_B482C4: FStStrNoPop var_C0
  loc_B482C7: FLdI2 PeriCtct
  loc_B482CA: CStrUI1
  loc_B482CC: FStStrNoPop var_C4
  loc_B482CF: ConcatStr
  loc_B482D0: FStStrNoPop var_C8
  loc_B482D3: LitStr ","
  loc_B482D6: ConcatStr
  loc_B482D7: FStStrNoPop var_CC
  loc_B482DA: FLdUI1
  loc_B482DE: CStrI2
  loc_B482E0: FStStrNoPop var_D0
  loc_B482E3: ConcatStr
  loc_B482E4: FStStrNoPop var_D4
  loc_B482E7: LitStr ","
  loc_B482EA: ConcatStr
  loc_B482EB: FStStrNoPop var_D8
  loc_B482EE: ILdRf NumeCtct
  loc_B482F1: CStrI4
  loc_B482F3: FStStrNoPop var_DC
  loc_B482F6: ConcatStr
  loc_B482F7: FStStrNoPop var_E0
  loc_B482FA: LitStr ","
  loc_B482FD: ConcatStr
  loc_B482FE: FStStrNoPop var_E4
  loc_B48301: FLdI2 MoviCtct
  loc_B48304: CStrUI1
  loc_B48306: FStStrNoPop var_E8
  loc_B48309: ConcatStr
  loc_B4830A: FStStrNoPop var_EC
  loc_B4830D: LitStr ","
  loc_B48310: ConcatStr
  loc_B48311: FStStrNoPop var_F0
  loc_B48314: FLdUI1
  loc_B48318: CStrI2
  loc_B4831A: FStStrNoPop var_F4
  loc_B4831D: ConcatStr
  loc_B4831E: FStStrNoPop var_F8
  loc_B48321: LitStr ","
  loc_B48324: ConcatStr
  loc_B48325: FStStrNoPop var_FC
  loc_B48328: FLdI2 NumeLiqu
  loc_B4832B: CStrUI1
  loc_B4832D: FStStrNoPop var_100
  loc_B48330: ConcatStr
  loc_B48331: FStStrNoPop var_104
  loc_B48334: LitStr ","
  loc_B48337: ConcatStr
  loc_B48338: FStStrNoPop var_108
  loc_B4833B: FLdI2 PeriBole
  loc_B4833E: CStrUI1
  loc_B48340: FStStrNoPop var_10C
  loc_B48343: ConcatStr
  loc_B48344: FStStrNoPop var_110
  loc_B48347: LitStr ","
  loc_B4834A: ConcatStr
  loc_B4834B: FStStrNoPop var_114
  loc_B4834E: ILdRf NumeBole
  loc_B48351: CStrI4
  loc_B48353: FStStrNoPop var_118
  loc_B48356: ConcatStr
  loc_B48357: FStStrNoPop var_11C
  loc_B4835A: LitStr ",'"
  loc_B4835D: ConcatStr
  loc_B4835E: FStStrNoPop var_160
  loc_B48361: LitI4 1
  loc_B48366: LitI4 1
  loc_B4836B: LitVarStr var_14C, "yyyy-mm-dd"
  loc_B48370: FStVarCopyObj var_15C
  loc_B48373: FLdRfVar var_15C
  loc_B48376: FLdFPR8 var_1C8
  loc_B48379: CVarDate var_13C
  loc_B4837D: ImpAdCallI2 Format$(, )
  loc_B48382: FStStrNoPop var_164
  loc_B48385: ConcatStr
  loc_B48386: FStStrNoPop var_168
  loc_B48389: LitStr "',"
  loc_B4838C: ConcatStr
  loc_B4838D: FStStrNoPop var_16C
  loc_B48390: FLdI2 PeriInfo
  loc_B48393: CStrUI1
  loc_B48395: FStStrNoPop var_170
  loc_B48398: ConcatStr
  loc_B48399: FStStrNoPop var_174
  loc_B4839C: LitStr ",'"
  loc_B4839F: ConcatStr
  loc_B483A0: FStStrNoPop var_178
  loc_B483A3: ILdRf var_8C
  loc_B483A6: ConcatStr
  loc_B483A7: FStStrNoPop var_17C
  loc_B483AA: LitStr "',"
  loc_B483AD: ConcatStr
  loc_B483AE: FStStrNoPop var_180
  loc_B483B1: FLdUI1
  loc_B483B5: CStrI2
  loc_B483B7: FStStrNoPop var_184
  loc_B483BA: ConcatStr
  loc_B483BB: FStStrNoPop var_188
  loc_B483BE: LitStr ",'"
  loc_B483C1: ConcatStr
  loc_B483C2: FStStrNoPop var_18C
  loc_B483C5: ILdRf var_90
  loc_B483C8: ConcatStr
  loc_B483C9: FStStrNoPop var_190
  loc_B483CC: LitStr "','"
  loc_B483CF: ConcatStr
  loc_B483D0: FStStrNoPop var_194
  loc_B483D3: ILdRf var_94
  loc_B483D6: ConcatStr
  loc_B483D7: FStStrNoPop var_198
  loc_B483DA: LitStr "',"
  loc_B483DD: ConcatStr
  loc_B483DE: FStStrNoPop var_1A0
  loc_B483E1: LitI4 0
  loc_B483E6: LitI4 -1
  loc_B483EB: LitI4 1
  loc_B483F0: LitStr "."
  loc_B483F3: LitStr ","
  loc_B483F6: FLdFPR8 AddNew8
  loc_B483F9: CStrR8
  loc_B483FB: FStStrNoPop var_19C
  loc_B483FE: ImpAdCallI2 Replace(, , , , , )
  loc_B48403: FStStrNoPop var_1A4
  loc_B48406: ConcatStr
  loc_B48407: FStStrNoPop var_1A8
  loc_B4840A: LitStr ","
  loc_B4840D: ConcatStr
  loc_B4840E: FStStrNoPop var_1B0
  loc_B48411: LitI4 0
  loc_B48416: LitI4 -1
  loc_B4841B: LitI4 1
  loc_B48420: LitStr "."
  loc_B48423: LitStr ","
  loc_B48426: FLdFPR8 arg_50
  loc_B48429: CStrR8
  loc_B4842B: FStStrNoPop var_1AC
  loc_B4842E: ImpAdCallI2 Replace(, , , , , )
  loc_B48433: FStStrNoPop var_1B4
  loc_B48436: ConcatStr
  loc_B48437: FStStrNoPop var_1B8
  loc_B4843A: LitStr ",'"
  loc_B4843D: ConcatStr
  loc_B4843E: FStStrNoPop var_1BC
  loc_B48441: ImpAdLdI4 MemVar_D9302C
  loc_B48444: ConcatStr
  loc_B48445: FStStrNoPop var_1C0
  loc_B48448: LitStr "');"
  loc_B4844B: ConcatStr
  loc_B4844C: FStStr var_98
  loc_B4844F: FFreeStr var_11C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_B484C2: FFreeVar var_13C = ""
  loc_B484C9: OnErrorGoto loc_B484DD
  loc_B484CC: ILdRf var_98
  loc_B484CF: Call Proc_141_49_A48C94()
  loc_B484D4: LitStr "COMMIT;"
  loc_B484D7: Call Proc_141_49_A48C94()
  loc_B484DC: ExitProcHresult
  loc_B484DD: LitStr "ROLLBACK;"
  loc_B484E0: Call Proc_141_49_A48C94()
  loc_B484E5: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B484E8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B484ED: ExitProcHresult
End Sub

Public Sub AddNewCreditos(CodiOfic, CuenCtct, NumeCred, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, PeriInfo, CodiConc, CodiTimo, ExpeCred, DetaCred, DebeCred, CredCred) 'B500E8
  'Data Table: 422D28
  loc_B4FE28: ILdRf CuenCtct
  loc_B4FE2B: FStStrCopy var_88
  loc_B4FE2E: ILdRf CodiConc
  loc_B4FE31: FStStrCopy var_8C
  loc_B4FE34: ILdRf AddNewCreditos4
  loc_B4FE37: FStStrCopy var_90
  loc_B4FE3A: ILdRf AddNewCreditos8
  loc_B4FE3D: FStStrCopy var_94
  loc_B4FE40: FLdRfVar var_9E
  loc_B4FE43: ILdRf NumeCred
  loc_B4FE46: ILdRf var_88
  loc_B4FE49: FLdUI1
  loc_B4FE4D: from_stack_4v = BuscaMoviCred(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B4FE52: FLdI2 var_9E
  loc_B4FE55: CI4UI1
  loc_B4FE56: FStR4 var_9C
  loc_B4FE59: ILdRf var_9C
  loc_B4FE5C: LitI4 1
  loc_B4FE61: AddI4
  loc_B4FE62: FStR4 var_9C
  loc_B4FE65: LitI2_Byte 0
  loc_B4FE67: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B4FE6C: FStFPR8 var_1D4
  loc_B4FE6F: LitStr "START TRANSACTION; INSERT INTO creditos (CodiOfic,CuenCtct,NumeCred,MoviCred,PeriCtct,BimeCtct,NumeCtct,MoviCtct,CodiTili,NumeLiqu,PeriBole,NumeBole,FealCtct,PeriInfo,CodiConc,CodiTimo,ExpeCred,DetaCred,DebeCred,CredCred,CodiUsua) VALUES ("
  loc_B4FE72: FLdUI1
  loc_B4FE76: CStrI2
  loc_B4FE78: FStStrNoPop var_A4
  loc_B4FE7B: ConcatStr
  loc_B4FE7C: FStStrNoPop var_A8
  loc_B4FE7F: LitStr ",'"
  loc_B4FE82: ConcatStr
  loc_B4FE83: FStStrNoPop var_AC
  loc_B4FE86: ILdRf var_88
  loc_B4FE89: ConcatStr
  loc_B4FE8A: FStStrNoPop var_B0
  loc_B4FE8D: LitStr "',"
  loc_B4FE90: ConcatStr
  loc_B4FE91: FStStrNoPop var_B4
  loc_B4FE94: ILdRf NumeCred
  loc_B4FE97: CStrI4
  loc_B4FE99: FStStrNoPop var_B8
  loc_B4FE9C: ConcatStr
  loc_B4FE9D: FStStrNoPop var_BC
  loc_B4FEA0: LitStr ","
  loc_B4FEA3: ConcatStr
  loc_B4FEA4: FStStrNoPop var_C0
  loc_B4FEA7: ILdRf var_9C
  loc_B4FEAA: CStrI4
  loc_B4FEAC: FStStrNoPop var_C4
  loc_B4FEAF: ConcatStr
  loc_B4FEB0: FStStrNoPop var_C8
  loc_B4FEB3: LitStr ","
  loc_B4FEB6: ConcatStr
  loc_B4FEB7: FStStrNoPop var_CC
  loc_B4FEBA: FLdI2 PeriCtct
  loc_B4FEBD: CStrUI1
  loc_B4FEBF: FStStrNoPop var_D0
  loc_B4FEC2: ConcatStr
  loc_B4FEC3: FStStrNoPop var_D4
  loc_B4FEC6: LitStr ","
  loc_B4FEC9: ConcatStr
  loc_B4FECA: FStStrNoPop var_D8
  loc_B4FECD: FLdUI1
  loc_B4FED1: CStrI2
  loc_B4FED3: FStStrNoPop var_DC
  loc_B4FED6: ConcatStr
  loc_B4FED7: FStStrNoPop var_E0
  loc_B4FEDA: LitStr ","
  loc_B4FEDD: ConcatStr
  loc_B4FEDE: FStStrNoPop var_E4
  loc_B4FEE1: ILdRf NumeCtct
  loc_B4FEE4: CStrI4
  loc_B4FEE6: FStStrNoPop var_E8
  loc_B4FEE9: ConcatStr
  loc_B4FEEA: FStStrNoPop var_EC
  loc_B4FEED: LitStr ","
  loc_B4FEF0: ConcatStr
  loc_B4FEF1: FStStrNoPop var_F0
  loc_B4FEF4: FLdI2 MoviCtct
  loc_B4FEF7: CStrUI1
  loc_B4FEF9: FStStrNoPop var_F4
  loc_B4FEFC: ConcatStr
  loc_B4FEFD: FStStrNoPop var_F8
  loc_B4FF00: LitStr ","
  loc_B4FF03: ConcatStr
  loc_B4FF04: FStStrNoPop var_FC
  loc_B4FF07: FLdUI1
  loc_B4FF0B: CStrI2
  loc_B4FF0D: FStStrNoPop var_100
  loc_B4FF10: ConcatStr
  loc_B4FF11: FStStrNoPop var_104
  loc_B4FF14: LitStr ","
  loc_B4FF17: ConcatStr
  loc_B4FF18: FStStrNoPop var_108
  loc_B4FF1B: FLdI2 NumeLiqu
  loc_B4FF1E: CStrUI1
  loc_B4FF20: FStStrNoPop var_10C
  loc_B4FF23: ConcatStr
  loc_B4FF24: FStStrNoPop var_110
  loc_B4FF27: LitStr ","
  loc_B4FF2A: ConcatStr
  loc_B4FF2B: FStStrNoPop var_114
  loc_B4FF2E: FLdI2 PeriBole
  loc_B4FF31: CStrUI1
  loc_B4FF33: FStStrNoPop var_118
  loc_B4FF36: ConcatStr
  loc_B4FF37: FStStrNoPop var_11C
  loc_B4FF3A: LitStr ","
  loc_B4FF3D: ConcatStr
  loc_B4FF3E: FStStrNoPop var_120
  loc_B4FF41: ILdRf NumeBole
  loc_B4FF44: CStrI4
  loc_B4FF46: FStStrNoPop var_124
  loc_B4FF49: ConcatStr
  loc_B4FF4A: FStStrNoPop var_128
  loc_B4FF4D: LitStr ",'"
  loc_B4FF50: ConcatStr
  loc_B4FF51: FStStrNoPop var_16C
  loc_B4FF54: LitI4 1
  loc_B4FF59: LitI4 1
  loc_B4FF5E: LitVarStr var_158, "yyyy-mm-dd"
  loc_B4FF63: FStVarCopyObj var_168
  loc_B4FF66: FLdRfVar var_168
  loc_B4FF69: FLdFPR8 var_1D4
  loc_B4FF6C: CVarDate var_148
  loc_B4FF70: ImpAdCallI2 Format$(, )
  loc_B4FF75: FStStrNoPop var_170
  loc_B4FF78: ConcatStr
  loc_B4FF79: FStStrNoPop var_174
  loc_B4FF7C: LitStr "',"
  loc_B4FF7F: ConcatStr
  loc_B4FF80: FStStrNoPop var_178
  loc_B4FF83: FLdI2 PeriInfo
  loc_B4FF86: CStrUI1
  loc_B4FF88: FStStrNoPop var_17C
  loc_B4FF8B: ConcatStr
  loc_B4FF8C: FStStrNoPop var_180
  loc_B4FF8F: LitStr ",'"
  loc_B4FF92: ConcatStr
  loc_B4FF93: FStStrNoPop var_184
  loc_B4FF96: ILdRf var_8C
  loc_B4FF99: ConcatStr
  loc_B4FF9A: FStStrNoPop var_188
  loc_B4FF9D: LitStr "',"
  loc_B4FFA0: ConcatStr
  loc_B4FFA1: FStStrNoPop var_18C
  loc_B4FFA4: FLdUI1
  loc_B4FFA8: CStrI2
  loc_B4FFAA: FStStrNoPop var_190
  loc_B4FFAD: ConcatStr
  loc_B4FFAE: FStStrNoPop var_194
  loc_B4FFB1: LitStr ",'"
  loc_B4FFB4: ConcatStr
  loc_B4FFB5: FStStrNoPop var_198
  loc_B4FFB8: ILdRf var_90
  loc_B4FFBB: ConcatStr
  loc_B4FFBC: FStStrNoPop var_19C
  loc_B4FFBF: LitStr "','"
  loc_B4FFC2: ConcatStr
  loc_B4FFC3: FStStrNoPop var_1A0
  loc_B4FFC6: ILdRf var_94
  loc_B4FFC9: ConcatStr
  loc_B4FFCA: FStStrNoPop var_1A4
  loc_B4FFCD: LitStr "',"
  loc_B4FFD0: ConcatStr
  loc_B4FFD1: FStStrNoPop var_1AC
  loc_B4FFD4: LitI4 0
  loc_B4FFD9: LitI4 -1
  loc_B4FFDE: LitI4 1
  loc_B4FFE3: LitStr "."
  loc_B4FFE6: LitStr ","
  loc_B4FFE9: FLdFPR8 AddNewCreditosC
  loc_B4FFEC: CStrR8
  loc_B4FFEE: FStStrNoPop var_1A8
  loc_B4FFF1: ImpAdCallI2 Replace(, , , , , )
  loc_B4FFF6: FStStrNoPop var_1B0
  loc_B4FFF9: ConcatStr
  loc_B4FFFA: FStStrNoPop var_1B4
  loc_B4FFFD: LitStr ","
  loc_B50000: ConcatStr
  loc_B50001: FStStrNoPop var_1BC
  loc_B50004: LitI4 0
  loc_B50009: LitI4 -1
  loc_B5000E: LitI4 1
  loc_B50013: LitStr "."
  loc_B50016: LitStr ","
  loc_B50019: FLdFPR8 arg_54
  loc_B5001C: CStrR8
  loc_B5001E: FStStrNoPop var_1B8
  loc_B50021: ImpAdCallI2 Replace(, , , , , )
  loc_B50026: FStStrNoPop var_1C0
  loc_B50029: ConcatStr
  loc_B5002A: FStStrNoPop var_1C4
  loc_B5002D: LitStr ",'"
  loc_B50030: ConcatStr
  loc_B50031: FStStrNoPop var_1C8
  loc_B50034: ImpAdLdI4 MemVar_D9302C
  loc_B50037: ConcatStr
  loc_B50038: FStStrNoPop var_1CC
  loc_B5003B: LitStr "');"
  loc_B5003E: ConcatStr
  loc_B5003F: FStStr var_98
  loc_B50042: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_B500BB: FFreeVar var_148 = ""
  loc_B500C2: OnErrorGoto loc_B500D6
  loc_B500C5: ILdRf var_98
  loc_B500C8: Call Proc_141_49_A48C94()
  loc_B500CD: LitStr "COMMIT;"
  loc_B500D0: Call Proc_141_49_A48C94()
  loc_B500D5: ExitProcHresult
  loc_B500D6: LitStr "ROLLBACK;"
  loc_B500D9: Call Proc_141_49_A48C94()
  loc_B500DE: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B500E1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B500E6: ExitProcHresult
End Sub

Public Sub Requery() '9E4B18
  'Data Table: 422D28
  loc_9E4AF4: LitI4 -1
  loc_9E4AF9: FLdPr Me
  loc_9E4AFC: MemLdPr global_60
  loc_9E4AFF: Me.Requery from_stack_1
  loc_9E4B04: LitVarStr var_94, "Primary"
  loc_9E4B09: PopAdLdVar
  loc_9E4B0A: FLdPr Me
  loc_9E4B0D: LateIdCall
  loc_9E4B15: ExitProcHresult
  loc_9E4B16: PopTmpLdAd2 var_4FFD
End Sub

Public Sub RedefineRS(sSelect) 'A5CFDC
  'Data Table: 422D28
  loc_A5CF78: ILdRf sSelect
  loc_A5CF7B: FStStrCopy var_88
  loc_A5CF7E: LitNothing
  loc_A5CF80: CastAd
  loc_A5CF83: FStAdFuncNoPop
  loc_A5CF86: FLdPr Me
  loc_A5CF89: MemStAd
  loc_A5CF8D: FFree1Ad var_8C
  loc_A5CF90: New Recordset
  loc_A5CF94: FStAdFuncNoPop
  loc_A5CF97: FLdPr Me
  loc_A5CF9A: MemStAd
  loc_A5CF9E: FFree1Ad var_8C
  loc_A5CFA1: LitI4 -1
  loc_A5CFA6: LitI4 3
  loc_A5CFAB: LitI4 3
  loc_A5CFB0: ImpAdLdI4 MemVar_D9301C
  loc_A5CFB3: CVarAd
  loc_A5CFB7: PopAdLdVar
  loc_A5CFB8: ILdRf var_88
  loc_A5CFBB: CVarStr var_9C
  loc_A5CFBE: PopAdLdVar
  loc_A5CFBF: FLdPr Me
  loc_A5CFC2: MemLdPr global_60
  loc_A5CFC5: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5CFCA: LitVarStr var_9C, "Primary"
  loc_A5CFCF: PopAdLdVar
  loc_A5CFD0: FLdPr Me
  loc_A5CFD3: LateIdCall
  loc_A5CFDB: ExitProcHresult
End Sub

Public Property Get DataSource() '9F6480
  'Data Table: 422D28
  loc_9F645C: ZeroRetVal
  loc_9F645E: FLdRfVar var_8C
  loc_9F6461: FLdPr Me
  loc_9F6464: MemLdPr global_60
  loc_9F6467:  = Me.DataSource
  loc_9F646C: ILdRf var_8C
  loc_9F646F: CastAd
  loc_9F6472: FStAdFunc var_88
  loc_9F6475: FFree1Ad var_8C
  loc_9F6478: ExitProcCbHresult
  loc_9F647E: AryUnlock
End Sub

Public Function NuevoRegistro(CodiOfic, CuenCtct) 'AA33C8
  'Data Table: 422D28
  loc_AA3320: ILdRf CuenCtct
  loc_AA3323: FStStrCopy var_8C
  loc_AA3326: LitStr "SELECT NumeCred FROM creditos  WHERE CodiOfic = "
  loc_AA3329: FLdUI1
  loc_AA332D: CStrI2
  loc_AA332F: FStStrNoPop var_90
  loc_AA3332: ConcatStr
  loc_AA3333: FStStrNoPop NuevoRegistro
  loc_AA3336: LitStr " AND CuenCtct = '"
  loc_AA3339: ConcatStr
  loc_AA333A: FStStrNoPop var_98
  loc_AA333D: ILdRf var_8C
  loc_AA3340: ConcatStr
  loc_AA3341: FStStrNoPop var_9C
  loc_AA3344: LitStr "' ORDER BY CodiOfic, CuenCtct, NumeCred DESC LIMIT 1"
  loc_AA3347: ConcatStr
  loc_AA3348: FStStrNoPop var_A0
  loc_AA334B: Call Proc_141_49_A48C94()
  loc_AA3350: FFreeStr var_90 = "": NuevoRegistro = "": var_98 = "": var_9C = ""
  loc_AA335D: FLdRfVar var_A4
  loc_AA3360: FLdPr Me
  loc_AA3363: MemLdPr global_64
  loc_AA3366:  = Me.RecordCount
  loc_AA336B: ILdRf var_A4
  loc_AA336E: LitI4 0
  loc_AA3373: GtI4
  loc_AA3374: BranchF loc_AA33BA
  loc_AA3377: FLdRfVar var_CC
  loc_AA337A: FLdRfVar var_BC
  loc_AA337D: LitVarStr var_B8, "NumeCred"
  loc_AA3382: PopAdLdVar
  loc_AA3383: FLdRfVar var_A8
  loc_AA3386: FLdPr Me
  loc_AA3389: MemLdPr global_64
  loc_AA338C:  = Me.Fields
  loc_AA3391: FLdPr var_A8
  loc_AA3394: from_stack_2 = Me.Item(from_stack_1)
  loc_AA3399: FLdPr var_BC
  loc_AA339C:  = Me.Value
  loc_AA33A1: FLdRfVar var_CC
  loc_AA33A4: FnCIntVar
  loc_AA33A6: LitI2_Byte 1
  loc_AA33A8: AddI2
  loc_AA33A9: CI4UI1
  loc_AA33AA: FStR4 var_88
  loc_AA33AD: FFreeAd var_A8 = ""
  loc_AA33B4: FFree1Var var_CC = ""
  loc_AA33B7: Branch loc_AA33C2
  loc_AA33BA: LitI4 1
  loc_AA33BF: FStR4 var_88
  loc_AA33C2: ExitProcCbHresult
End Function

Public Property Get CodiOfic() 'A29124
  'Data Table: 422D28
  loc_A290E0: FLdRfVar var_B0
  loc_A290E3: FLdRfVar var_A0
  loc_A290E6: LitVarStr var_9C, "CodiOfic"
  loc_A290EB: PopAdLdVar
  loc_A290EC: FLdRfVar var_8C
  loc_A290EF: FLdPr Me
  loc_A290F2: MemLdPr global_60
  loc_A290F5:  = Me.Fields
  loc_A290FA: FLdPr var_8C
  loc_A290FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29102: FLdPr var_A0
  loc_A29105:  = Me.Value
  loc_A2910A: FLdRfVar var_B0
  loc_A2910D: CUI1Var
  loc_A2910F: FStUI1 var_86
  loc_A29113: FFreeAd var_8C = ""
  loc_A2911A: FFree1Var var_B0 = ""
  loc_A2911D: ExitProcCbHresult
End Sub

Public Property Get CuenCtct() 'A376FC
  'Data Table: 422D28
  loc_A376B8: ZeroRetVal
  loc_A376BA: FLdRfVar var_B0
  loc_A376BD: FLdRfVar var_A0
  loc_A376C0: LitVarStr var_9C, "CuenCtct"
  loc_A376C5: PopAdLdVar
  loc_A376C6: FLdRfVar var_8C
  loc_A376C9: FLdPr Me
  loc_A376CC: MemLdPr global_60
  loc_A376CF:  = Me.Fields
  loc_A376D4: FLdPr var_8C
  loc_A376D7: from_stack_2 = Me.Item(from_stack_1)
  loc_A376DC: FLdPr var_A0
  loc_A376DF:  = Me.Value
  loc_A376E4: FLdRfVar var_B0
  loc_A376E7: CStrVarTmp
  loc_A376E8: FStStr var_88
  loc_A376EB: FFreeAd var_8C = ""
  loc_A376F2: FFree1Var var_B0 = ""
  loc_A376F5: ExitProcCbHresult
End Sub

Public Property Get NumeCred() 'A29624
  'Data Table: 422D28
  loc_A295E0: FLdRfVar var_B0
  loc_A295E3: FLdRfVar var_A0
  loc_A295E6: LitVarStr var_9C, "NumeCred"
  loc_A295EB: PopAdLdVar
  loc_A295EC: FLdRfVar var_8C
  loc_A295EF: FLdPr Me
  loc_A295F2: MemLdPr global_60
  loc_A295F5:  = Me.Fields
  loc_A295FA: FLdPr var_8C
  loc_A295FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29602: FLdPr var_A0
  loc_A29605:  = Me.Value
  loc_A2960A: FLdRfVar var_B0
  loc_A2960D: CI4Var
  loc_A2960F: FStR4 var_88
  loc_A29612: FFreeAd var_8C = ""
  loc_A29619: FFree1Var var_B0 = ""
  loc_A2961C: ExitProcCbHresult
  loc_A29622: FFreeVar  = ""
End Sub

Public Property Get MoviCred() 'A27324
  'Data Table: 422D28
  loc_A272E0: FLdRfVar var_B0
  loc_A272E3: FLdRfVar var_A0
  loc_A272E6: LitVarStr var_9C, "MoviCred"
  loc_A272EB: PopAdLdVar
  loc_A272EC: FLdRfVar var_8C
  loc_A272EF: FLdPr Me
  loc_A272F2: MemLdPr global_60
  loc_A272F5:  = Me.Fields
  loc_A272FA: FLdPr var_8C
  loc_A272FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A27302: FLdPr var_A0
  loc_A27305:  = Me.Value
  loc_A2730A: FLdRfVar var_B0
  loc_A2730D: CI2Var
  loc_A2730E: FStI2 var_86
  loc_A27311: FFreeAd var_8C = ""
  loc_A27318: FFree1Var var_B0 = ""
  loc_A2731B: ExitProcCbHresult
  loc_A27321: MidStr arg_35F
End Sub

Public Property Get PeriCtct() 'A27424
  'Data Table: 422D28
  loc_A273E0: FLdRfVar var_B0
  loc_A273E3: FLdRfVar var_A0
  loc_A273E6: LitVarStr var_9C, "PeriCtct"
  loc_A273EB: PopAdLdVar
  loc_A273EC: FLdRfVar var_8C
  loc_A273EF: FLdPr Me
  loc_A273F2: MemLdPr global_60
  loc_A273F5:  = Me.Fields
  loc_A273FA: FLdPr var_8C
  loc_A273FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A27402: FLdPr var_A0
  loc_A27405:  = Me.Value
  loc_A2740A: FLdRfVar var_B0
  loc_A2740D: CI2Var
  loc_A2740E: FStI2 var_86
  loc_A27411: FFreeAd var_8C = ""
  loc_A27418: FFree1Var var_B0 = ""
  loc_A2741B: ExitProcCbHresult
  loc_A27421: VCallFPR8 unk_42308B
End Sub

Public Property Get BimeCtct() 'A275A4
  'Data Table: 422D28
  loc_A27560: FLdRfVar var_B0
  loc_A27563: FLdRfVar var_A0
  loc_A27566: LitVarStr var_9C, "BimeCtct"
  loc_A2756B: PopAdLdVar
  loc_A2756C: FLdRfVar var_8C
  loc_A2756F: FLdPr Me
  loc_A27572: MemLdPr global_60
  loc_A27575:  = Me.Fields
  loc_A2757A: FLdPr var_8C
  loc_A2757D: from_stack_2 = Me.Item(from_stack_1)
  loc_A27582: FLdPr var_A0
  loc_A27585:  = Me.Value
  loc_A2758A: FLdRfVar var_B0
  loc_A2758D: CI2Var
  loc_A2758E: FStI2 var_86
  loc_A27591: FFreeAd var_8C = ""
  loc_A27598: FFree1Var var_B0 = ""
  loc_A2759B: ExitProcCbHresult
  loc_A275A1: ImpAdLdCy MemVar_38B8E1FF
End Sub

Public Property Get NumeCtct() 'A277A4
  'Data Table: 422D28
  loc_A27760: FLdRfVar var_B0
  loc_A27763: FLdRfVar var_A0
  loc_A27766: LitVarStr var_9C, "NumeCtct"
  loc_A2776B: PopAdLdVar
  loc_A2776C: FLdRfVar var_8C
  loc_A2776F: FLdPr Me
  loc_A27772: MemLdPr global_60
  loc_A27775:  = Me.Fields
  loc_A2777A: FLdPr var_8C
  loc_A2777D: from_stack_2 = Me.Item(from_stack_1)
  loc_A27782: FLdPr var_A0
  loc_A27785:  = Me.Value
  loc_A2778A: FLdRfVar var_B0
  loc_A2778D: CI4Var
  loc_A2778F: FStR4 var_88
  loc_A27792: FFreeAd var_8C = ""
  loc_A27799: FFree1Var var_B0 = ""
  loc_A2779C: ExitProcCbHresult
  loc_A277A2: FFree1Var var_4FFD = ""
End Sub

Public Property Get MoviCtct() 'A278A4
  'Data Table: 422D28
  loc_A27860: FLdRfVar var_B0
  loc_A27863: FLdRfVar var_A0
  loc_A27866: LitVarStr var_9C, "MoviCtct"
  loc_A2786B: PopAdLdVar
  loc_A2786C: FLdRfVar var_8C
  loc_A2786F: FLdPr Me
  loc_A27872: MemLdPr global_60
  loc_A27875:  = Me.Fields
  loc_A2787A: FLdPr var_8C
  loc_A2787D: from_stack_2 = Me.Item(from_stack_1)
  loc_A27882: FLdPr var_A0
  loc_A27885:  = Me.Value
  loc_A2788A: FLdRfVar var_B0
  loc_A2788D: CI2Var
  loc_A2788E: FStI2 var_86
  loc_A27891: FFreeAd var_8C = ""
  loc_A27898: FFree1Var var_B0 = ""
  loc_A2789B: ExitProcCbHresult
  loc_A278A1: ImpAdStR4 MemVar_66000000
End Sub

Public Property Get CodiTili() 'A279A4
  'Data Table: 422D28
  loc_A27960: FLdRfVar var_B0
  loc_A27963: FLdRfVar var_A0
  loc_A27966: LitVarStr var_9C, "CodiTili"
  loc_A2796B: PopAdLdVar
  loc_A2796C: FLdRfVar var_8C
  loc_A2796F: FLdPr Me
  loc_A27972: MemLdPr global_60
  loc_A27975:  = Me.Fields
  loc_A2797A: FLdPr var_8C
  loc_A2797D: from_stack_2 = Me.Item(from_stack_1)
  loc_A27982: FLdPr var_A0
  loc_A27985:  = Me.Value
  loc_A2798A: FLdRfVar var_B0
  loc_A2798D: CUI1Var
  loc_A2798F: FStUI1 var_86
  loc_A27993: FFreeAd var_8C = ""
  loc_A2799A: FFree1Var var_B0 = ""
  loc_A2799D: ExitProcCbHresult
End Sub

Public Property Get NumeLiqu() 'A27A24
  'Data Table: 422D28
  loc_A279E0: FLdRfVar var_B0
  loc_A279E3: FLdRfVar var_A0
  loc_A279E6: LitVarStr var_9C, "NumeLiqu"
  loc_A279EB: PopAdLdVar
  loc_A279EC: FLdRfVar var_8C
  loc_A279EF: FLdPr Me
  loc_A279F2: MemLdPr global_60
  loc_A279F5:  = Me.Fields
  loc_A279FA: FLdPr var_8C
  loc_A279FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A27A02: FLdPr var_A0
  loc_A27A05:  = Me.Value
  loc_A27A0A: FLdRfVar var_B0
  loc_A27A0D: CI2Var
  loc_A27A0E: FStI2 var_86
  loc_A27A11: FFreeAd var_8C = ""
  loc_A27A18: FFree1Var var_B0 = ""
  loc_A27A1B: ExitProcCbHresult
End Sub

Public Property Get PeriBole() 'A27AA4
  'Data Table: 422D28
  loc_A27A60: FLdRfVar var_B0
  loc_A27A63: FLdRfVar var_A0
  loc_A27A66: LitVarStr var_9C, "PeriBole"
  loc_A27A6B: PopAdLdVar
  loc_A27A6C: FLdRfVar var_8C
  loc_A27A6F: FLdPr Me
  loc_A27A72: MemLdPr global_60
  loc_A27A75:  = Me.Fields
  loc_A27A7A: FLdPr var_8C
  loc_A27A7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A27A82: FLdPr var_A0
  loc_A27A85:  = Me.Value
  loc_A27A8A: FLdRfVar var_B0
  loc_A27A8D: CI2Var
  loc_A27A8E: FStI2 var_86
  loc_A27A91: FFreeAd var_8C = ""
  loc_A27A98: FFree1Var var_B0 = ""
  loc_A27A9B: ExitProcCbHresult
  loc_A27AA1: FLdFPR8 arg_37C
End Sub

Public Property Get NumeBole() 'A27C24
  'Data Table: 422D28
  loc_A27BE0: FLdRfVar var_B0
  loc_A27BE3: FLdRfVar var_A0
  loc_A27BE6: LitVarStr var_9C, "NumeBole"
  loc_A27BEB: PopAdLdVar
  loc_A27BEC: FLdRfVar var_8C
  loc_A27BEF: FLdPr Me
  loc_A27BF2: MemLdPr global_60
  loc_A27BF5:  = Me.Fields
  loc_A27BFA: FLdPr var_8C
  loc_A27BFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A27C02: FLdPr var_A0
  loc_A27C05:  = Me.Value
  loc_A27C0A: FLdRfVar var_B0
  loc_A27C0D: CI4Var
  loc_A27C0F: FStR4 var_88
  loc_A27C12: FFreeAd var_8C = ""
  loc_A27C19: FFree1Var var_B0 = ""
  loc_A27C1C: ExitProcCbHresult
  loc_A27C22: FStR8 var_4FFD
End Sub

Public Property Get FealCtct() 'A37360
  'Data Table: 422D28
  loc_A3731C: ZeroRetVal
  loc_A3731E: FLdRfVar var_B0
  loc_A37321: FLdRfVar var_A0
  loc_A37324: LitVarStr var_9C, "FealCtct"
  loc_A37329: PopAdLdVar
  loc_A3732A: FLdRfVar var_8C
  loc_A3732D: FLdPr Me
  loc_A37330: MemLdPr global_60
  loc_A37333:  = Me.Fields
  loc_A37338: FLdPr var_8C
  loc_A3733B: from_stack_2 = Me.Item(from_stack_1)
  loc_A37340: FLdPr var_A0
  loc_A37343:  = Me.Value
  loc_A37348: FLdRfVar var_B0
  loc_A3734B: CStrVarTmp
  loc_A3734C: FStStr var_88
  loc_A3734F: FFreeAd var_8C = ""
  loc_A37356: FFree1Var var_B0 = ""
  loc_A37359: ExitProcCbHresult
End Sub

Public Property Get PeriInfo() 'A27D24
  'Data Table: 422D28
  loc_A27CE0: FLdRfVar var_B0
  loc_A27CE3: FLdRfVar var_A0
  loc_A27CE6: LitVarStr var_9C, "PeriInfo"
  loc_A27CEB: PopAdLdVar
  loc_A27CEC: FLdRfVar var_8C
  loc_A27CEF: FLdPr Me
  loc_A27CF2: MemLdPr global_60
  loc_A27CF5:  = Me.Fields
  loc_A27CFA: FLdPr var_8C
  loc_A27CFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A27D02: FLdPr var_A0
  loc_A27D05:  = Me.Value
  loc_A27D0A: FLdRfVar var_B0
  loc_A27D0D: CI2Var
  loc_A27D0E: FStI2 var_86
  loc_A27D11: FFreeAd var_8C = ""
  loc_A27D18: FFree1Var var_B0 = ""
  loc_A27D1B: ExitProcCbHresult
End Sub

Public Property Get CodiConc() 'A36C28
  'Data Table: 422D28
  loc_A36BE4: ZeroRetVal
  loc_A36BE6: FLdRfVar var_B0
  loc_A36BE9: FLdRfVar var_A0
  loc_A36BEC: LitVarStr var_9C, "CodiConc"
  loc_A36BF1: PopAdLdVar
  loc_A36BF2: FLdRfVar var_8C
  loc_A36BF5: FLdPr Me
  loc_A36BF8: MemLdPr global_60
  loc_A36BFB:  = Me.Fields
  loc_A36C00: FLdPr var_8C
  loc_A36C03: from_stack_2 = Me.Item(from_stack_1)
  loc_A36C08: FLdPr var_A0
  loc_A36C0B:  = Me.Value
  loc_A36C10: FLdRfVar var_B0
  loc_A36C13: CStrVarTmp
  loc_A36C14: FStStr var_88
  loc_A36C17: FFreeAd var_8C = ""
  loc_A36C1E: FFree1Var var_B0 = ""
  loc_A36C21: ExitProcCbHresult
End Sub

Public Property Get CodiTimo() 'A27E24
  'Data Table: 422D28
  loc_A27DE0: FLdRfVar var_B0
  loc_A27DE3: FLdRfVar var_A0
  loc_A27DE6: LitVarStr var_9C, "CodiTimo"
  loc_A27DEB: PopAdLdVar
  loc_A27DEC: FLdRfVar var_8C
  loc_A27DEF: FLdPr Me
  loc_A27DF2: MemLdPr global_60
  loc_A27DF5:  = Me.Fields
  loc_A27DFA: FLdPr var_8C
  loc_A27DFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A27E02: FLdPr var_A0
  loc_A27E05:  = Me.Value
  loc_A27E0A: FLdRfVar var_B0
  loc_A27E0D: CI2Var
  loc_A27E0E: FStI2 var_86
  loc_A27E11: FFreeAd var_8C = ""
  loc_A27E18: FFree1Var var_B0 = ""
  loc_A27E1B: ExitProcCbHresult
End Sub

Public Property Get ExpeCred() 'A36A18
  'Data Table: 422D28
  loc_A369D4: ZeroRetVal
  loc_A369D6: FLdRfVar var_B0
  loc_A369D9: FLdRfVar var_A0
  loc_A369DC: LitVarStr var_9C, "ExpeCred"
  loc_A369E1: PopAdLdVar
  loc_A369E2: FLdRfVar var_8C
  loc_A369E5: FLdPr Me
  loc_A369E8: MemLdPr global_60
  loc_A369EB:  = Me.Fields
  loc_A369F0: FLdPr var_8C
  loc_A369F3: from_stack_2 = Me.Item(from_stack_1)
  loc_A369F8: FLdPr var_A0
  loc_A369FB:  = Me.Value
  loc_A36A00: FLdRfVar var_B0
  loc_A36A03: CStrVarTmp
  loc_A36A04: FStStr var_88
  loc_A36A07: FFreeAd var_8C = ""
  loc_A36A0E: FFree1Var var_B0 = ""
  loc_A36A11: ExitProcCbHresult
End Sub

Public Property Get DetaCred() 'A35368
  'Data Table: 422D28
  loc_A35324: ZeroRetVal
  loc_A35326: FLdRfVar var_B0
  loc_A35329: FLdRfVar var_A0
  loc_A3532C: LitVarStr var_9C, "DetaCred"
  loc_A35331: PopAdLdVar
  loc_A35332: FLdRfVar var_8C
  loc_A35335: FLdPr Me
  loc_A35338: MemLdPr global_60
  loc_A3533B:  = Me.Fields
  loc_A35340: FLdPr var_8C
  loc_A35343: from_stack_2 = Me.Item(from_stack_1)
  loc_A35348: FLdPr var_A0
  loc_A3534B:  = Me.Value
  loc_A35350: FLdRfVar var_B0
  loc_A35353: CStrVarTmp
  loc_A35354: FStStr var_88
  loc_A35357: FFreeAd var_8C = ""
  loc_A3535E: FFree1Var var_B0 = ""
  loc_A35361: ExitProcCbHresult
End Sub

Public Property Get DebeCred() 'A281A4
  'Data Table: 422D28
  loc_A28160: FLdRfVar var_B4
  loc_A28163: FLdRfVar var_A4
  loc_A28166: LitVarStr var_A0, "DebeCred"
  loc_A2816B: PopAdLdVar
  loc_A2816C: FLdRfVar var_90
  loc_A2816F: FLdPr Me
  loc_A28172: MemLdPr global_60
  loc_A28175:  = Me.Fields
  loc_A2817A: FLdPr var_90
  loc_A2817D: from_stack_2 = Me.Item(from_stack_1)
  loc_A28182: FLdPr var_A4
  loc_A28185:  = Me.Value
  loc_A2818A: FLdRfVar var_B4
  loc_A2818D: CR4Var
  loc_A2818E: FStFPR8 var_8C
  loc_A28191: FFreeAd var_90 = ""
  loc_A28198: FFree1Var var_B4 = ""
  loc_A2819B: ExitProcCbHresult
End Sub

Public Property Get CredCred() 'A28224
  'Data Table: 422D28
  loc_A281E0: FLdRfVar var_B4
  loc_A281E3: FLdRfVar var_A4
  loc_A281E6: LitVarStr var_A0, "CredCred"
  loc_A281EB: PopAdLdVar
  loc_A281EC: FLdRfVar var_90
  loc_A281EF: FLdPr Me
  loc_A281F2: MemLdPr global_60
  loc_A281F5:  = Me.Fields
  loc_A281FA: FLdPr var_90
  loc_A281FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A28202: FLdPr var_A4
  loc_A28205:  = Me.Value
  loc_A2820A: FLdRfVar var_B4
  loc_A2820D: CR4Var
  loc_A2820E: FStFPR8 var_8C
  loc_A28211: FFreeAd var_90 = ""
  loc_A28218: FFree1Var var_B4 = ""
  loc_A2821B: ExitProcCbHresult
End Sub

Public Property Get CodiUsua() 'A352E4
  'Data Table: 422D28
  loc_A352A0: ZeroRetVal
  loc_A352A2: FLdRfVar var_B0
  loc_A352A5: FLdRfVar var_A0
  loc_A352A8: LitVarStr var_9C, "CodiUsua"
  loc_A352AD: PopAdLdVar
  loc_A352AE: FLdRfVar var_8C
  loc_A352B1: FLdPr Me
  loc_A352B4: MemLdPr global_60
  loc_A352B7:  = Me.Fields
  loc_A352BC: FLdPr var_8C
  loc_A352BF: from_stack_2 = Me.Item(from_stack_1)
  loc_A352C4: FLdPr var_A0
  loc_A352C7:  = Me.Value
  loc_A352CC: FLdRfVar var_B0
  loc_A352CF: CStrVarTmp
  loc_A352D0: FStStr var_88
  loc_A352D3: FFreeAd var_8C = ""
  loc_A352DA: FFree1Var var_B0 = ""
  loc_A352DD: ExitProcCbHresult
End Sub

Public Property Get DetaPers() 'A35CB0
  'Data Table: 422D28
  loc_A35C6C: ZeroRetVal
  loc_A35C6E: FLdRfVar var_B0
  loc_A35C71: FLdRfVar var_A0
  loc_A35C74: LitVarStr var_9C, "DetaPers"
  loc_A35C79: PopAdLdVar
  loc_A35C7A: FLdRfVar var_8C
  loc_A35C7D: FLdPr Me
  loc_A35C80: MemLdPr global_60
  loc_A35C83:  = Me.Fields
  loc_A35C88: FLdPr var_8C
  loc_A35C8B: from_stack_2 = Me.Item(from_stack_1)
  loc_A35C90: FLdPr var_A0
  loc_A35C93:  = Me.Value
  loc_A35C98: FLdRfVar var_B0
  loc_A35C9B: CStrVarTmp
  loc_A35C9C: FStStr var_88
  loc_A35C9F: FFreeAd var_8C = ""
  loc_A35CA6: FFree1Var var_B0 = ""
  loc_A35CA9: ExitProcCbHresult
End Sub

Public Property Get AbreTimo() 'A3604C
  'Data Table: 422D28
  loc_A36008: ZeroRetVal
  loc_A3600A: FLdRfVar var_B0
  loc_A3600D: FLdRfVar var_A0
  loc_A36010: LitVarStr var_9C, "AbreTimo"
  loc_A36015: PopAdLdVar
  loc_A36016: FLdRfVar var_8C
  loc_A36019: FLdPr Me
  loc_A3601C: MemLdPr global_60
  loc_A3601F:  = Me.Fields
  loc_A36024: FLdPr var_8C
  loc_A36027: from_stack_2 = Me.Item(from_stack_1)
  loc_A3602C: FLdPr var_A0
  loc_A3602F:  = Me.Value
  loc_A36034: FLdRfVar var_B0
  loc_A36037: CStrVarTmp
  loc_A36038: FStStr var_88
  loc_A3603B: FFreeAd var_8C = ""
  loc_A36042: FFree1Var var_B0 = ""
  loc_A36045: ExitProcCbHresult
End Sub

Public Property Get SaldCred() 'A284A4
  'Data Table: 422D28
  loc_A28460: FLdRfVar var_B4
  loc_A28463: FLdRfVar var_A4
  loc_A28466: LitVarStr var_A0, "SaldCred"
  loc_A2846B: PopAdLdVar
  loc_A2846C: FLdRfVar var_90
  loc_A2846F: FLdPr Me
  loc_A28472: MemLdPr global_60
  loc_A28475:  = Me.Fields
  loc_A2847A: FLdPr var_90
  loc_A2847D: from_stack_2 = Me.Item(from_stack_1)
  loc_A28482: FLdPr var_A4
  loc_A28485:  = Me.Value
  loc_A2848A: FLdRfVar var_B4
  loc_A2848D: CR4Var
  loc_A2848E: FStFPR8 var_8C
  loc_A28491: FFreeAd var_90 = ""
  loc_A28498: FFree1Var var_B4 = ""
  loc_A2849B: ExitProcCbHresult
End Sub

Public Function BuscaCreditosaFavor(CodiOfic, CuenCtct) 'AC2C58
  'Data Table: 422D28
  loc_AC2B6C: ILdRf CuenCtct
  loc_AC2B6F: FStStrCopy var_90
  loc_AC2B72: LitStr "SELECT ifnull(SUM(DebeCred)-SUM(CredCred),0) as SaldCred FROM creditos WHERE CodiOfic = "
  loc_AC2B75: FLdUI1
  loc_AC2B79: CStrI2
  loc_AC2B7B: FStStrNoPop BuscaCreditosaFavor
  loc_AC2B7E: ConcatStr
  loc_AC2B7F: FStStrNoPop var_98
  loc_AC2B82: LitStr " AND CuenCtct = '"
  loc_AC2B85: ConcatStr
  loc_AC2B86: FStStrNoPop var_9C
  loc_AC2B89: ILdRf var_90
  loc_AC2B8C: ConcatStr
  loc_AC2B8D: FStStrNoPop var_A0
  loc_AC2B90: LitStr "'"
  loc_AC2B93: ConcatStr
  loc_AC2B94: FStStrNoPop var_A4
  loc_AC2B97: Call Proc_141_49_A48C94()
  loc_AC2B9C: FFreeStr BuscaCreditosaFavor = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_AC2BA9: FLdRfVar var_A8
  loc_AC2BAC: FLdPr Me
  loc_AC2BAF: MemLdPr global_64
  loc_AC2BB2:  = Me.RecordCount
  loc_AC2BB7: ILdRf var_A8
  loc_AC2BBA: LitI4 0
  loc_AC2BBF: GtI4
  loc_AC2BC0: BranchF loc_AC2C4B
  loc_AC2BC3: FLdRfVar var_D0
  loc_AC2BC6: FLdRfVar var_C0
  loc_AC2BC9: LitVarStr var_BC, "SaldCred"
  loc_AC2BCE: PopAdLdVar
  loc_AC2BCF: FLdRfVar var_AC
  loc_AC2BD2: FLdPr Me
  loc_AC2BD5: MemLdPr global_64
  loc_AC2BD8:  = Me.Fields
  loc_AC2BDD: FLdPr var_AC
  loc_AC2BE0: from_stack_2 = Me.Item(from_stack_1)
  loc_AC2BE5: FLdPr var_C0
  loc_AC2BE8:  = Me.Value
  loc_AC2BED: FLdRfVar var_D0
  loc_AC2BF0: FnCDblVar
  loc_AC2BF2: LitI2_Byte 0
  loc_AC2BF4: CR8I2
  loc_AC2BF5: GtR4
  loc_AC2BF6: FFreeAd var_AC = ""
  loc_AC2BFD: FFree1Var var_D0 = ""
  loc_AC2C00: BranchF loc_AC2C42
  loc_AC2C03: FLdRfVar var_D0
  loc_AC2C06: FLdRfVar var_C0
  loc_AC2C09: LitVarStr var_BC, "SaldCred"
  loc_AC2C0E: PopAdLdVar
  loc_AC2C0F: FLdRfVar var_AC
  loc_AC2C12: FLdPr Me
  loc_AC2C15: MemLdPr global_64
  loc_AC2C18:  = Me.Fields
  loc_AC2C1D: FLdPr var_AC
  loc_AC2C20: from_stack_2 = Me.Item(from_stack_1)
  loc_AC2C25: FLdPr var_C0
  loc_AC2C28:  = Me.Value
  loc_AC2C2D: FLdRfVar var_D0
  loc_AC2C30: FnCDblVar
  loc_AC2C32: FStFPR8 var_8C
  loc_AC2C35: FFreeAd var_AC = ""
  loc_AC2C3C: FFree1Var var_D0 = ""
  loc_AC2C3F: Branch loc_AC2C48
  loc_AC2C42: LitI2_Byte 0
  loc_AC2C44: CR8I2
  loc_AC2C45: FStFPR8 var_8C
  loc_AC2C48: Branch loc_AC2C51
  loc_AC2C4B: LitI2_Byte 0
  loc_AC2C4D: CR8I2
  loc_AC2C4E: FStFPR8 var_8C
  loc_AC2C51: ExitProcCbHresult
End Function

Public Function BuscaCreditosaFavorGeneracionAnual(PeriLiqu, CodiOfic, CuenCtct, CodiTili, NumeLiqu) 'B446E0
  'Data Table: 422D28
  loc_B443B4: ILdRf CuenCtct
  loc_B443B7: FStStrCopy var_90
  loc_B443BA: LitStr "SELECT ifnull(SUM(DebeCred)-SUM(CredCred),0) as SaldCred FROM creditos WHERE CodiOfic = "
  loc_B443BD: FLdUI1
  loc_B443C1: CStrI2
  loc_B443C3: FStStrNoPop BuscaCreditosaFavorGeneracionAnual
  loc_B443C6: ConcatStr
  loc_B443C7: FStStrNoPop var_98
  loc_B443CA: LitStr " AND CuenCtct = '"
  loc_B443CD: ConcatStr
  loc_B443CE: FStStrNoPop var_9C
  loc_B443D1: ILdRf var_90
  loc_B443D4: ConcatStr
  loc_B443D5: FStStrNoPop var_A0
  loc_B443D8: LitStr "'"
  loc_B443DB: ConcatStr
  loc_B443DC: FStStrNoPop var_A4
  loc_B443DF: Call Proc_141_49_A48C94()
  loc_B443E4: FFreeStr BuscaCreditosaFavorGeneracionAnual = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_B443F1: FLdRfVar var_A8
  loc_B443F4: FLdPr Me
  loc_B443F7: MemLdPr global_64
  loc_B443FA:  = Me.RecordCount
  loc_B443FF: ILdRf var_A8
  loc_B44402: LitI4 0
  loc_B44407: GtI4
  loc_B44408: BranchF loc_B4444A
  loc_B4440B: FLdRfVar var_D0
  loc_B4440E: FLdRfVar var_C0
  loc_B44411: LitVarStr var_BC, "SaldCred"
  loc_B44416: PopAdLdVar
  loc_B44417: FLdRfVar var_AC
  loc_B4441A: FLdPr Me
  loc_B4441D: MemLdPr global_64
  loc_B44420:  = Me.Fields
  loc_B44425: FLdPr var_AC
  loc_B44428: from_stack_2 = Me.Item(from_stack_1)
  loc_B4442D: FLdPr var_C0
  loc_B44430:  = Me.Value
  loc_B44435: FLdRfVar var_D0
  loc_B44438: FnCDblVar
  loc_B4443A: FStFPR8 var_8C
  loc_B4443D: FFreeAd var_AC = ""
  loc_B44444: FFree1Var var_D0 = ""
  loc_B44447: Branch loc_B44450
  loc_B4444A: LitI2_Byte 0
  loc_B4444C: CR8I2
  loc_B4444D: FStFPR8 var_8C
  loc_B44450: FLdUI1
  loc_B44454: CI2UI1
  loc_B44456: LitI2_Byte 1
  loc_B44458: EqI2
  loc_B44459: BranchF loc_B44528
  loc_B4445C: LitStr "SELECT ifnull(sum(liqutasa.CrafLita),0) as Creditos FROM liqutasa USE INDEX (idxliqutasa01) WHERE PeriLiqu = "
  loc_B4445F: FLdI2 PeriLiqu
  loc_B44462: CStrUI1
  loc_B44464: FStStrNoPop BuscaCreditosaFavorGeneracionAnual
  loc_B44467: ConcatStr
  loc_B44468: FStStrNoPop var_98
  loc_B4446B: LitStr " AND CodiTili = "
  loc_B4446E: ConcatStr
  loc_B4446F: FStStrNoPop var_9C
  loc_B44472: FLdUI1
  loc_B44476: CStrI2
  loc_B44478: FStStrNoPop var_A0
  loc_B4447B: ConcatStr
  loc_B4447C: FStStrNoPop var_A4
  loc_B4447F: LitStr " AND NumeLiqu = "
  loc_B44482: ConcatStr
  loc_B44483: FStStrNoPop var_D4
  loc_B44486: FLdI2 NumeLiqu
  loc_B44489: CStrUI1
  loc_B4448B: FStStrNoPop var_D8
  loc_B4448E: ConcatStr
  loc_B4448F: FStStrNoPop var_DC
  loc_B44492: LitStr " AND CodiInmu = "
  loc_B44495: ConcatStr
  loc_B44496: FStStrNoPop var_E0
  loc_B44499: ILdRf var_90
  loc_B4449C: ConcatStr
  loc_B4449D: FStStrNoPop var_E4
  loc_B444A0: LitStr " AND TipoVenc = 'Bimestral'"
  loc_B444A3: ConcatStr
  loc_B444A4: FStStrNoPop var_E8
  loc_B444A7: Call Proc_141_49_A48C94()
  loc_B444AC: FFreeStr BuscaCreditosaFavorGeneracionAnual = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_B444C5: FLdRfVar var_A8
  loc_B444C8: FLdPr Me
  loc_B444CB: MemLdPr global_64
  loc_B444CE:  = Me.RecordCount
  loc_B444D3: ILdRf var_A8
  loc_B444D6: LitI4 0
  loc_B444DB: GtI4
  loc_B444DC: BranchF loc_B44522
  loc_B444DF: FLdRfVar var_D0
  loc_B444E2: FLdRfVar var_C0
  loc_B444E5: LitVarStr var_BC, "Creditos"
  loc_B444EA: PopAdLdVar
  loc_B444EB: FLdRfVar var_AC
  loc_B444EE: FLdPr Me
  loc_B444F1: MemLdPr global_64
  loc_B444F4:  = Me.Fields
  loc_B444F9: FLdPr var_AC
  loc_B444FC: from_stack_2 = Me.Item(from_stack_1)
  loc_B44501: FLdPr var_C0
  loc_B44504:  = Me.Value
  loc_B44509: FLdFPR8 var_8C
  loc_B4450C: FLdRfVar var_D0
  loc_B4450F: FnCDblVar
  loc_B44511: SubR4
  loc_B44512: FStFPR8 var_8C
  loc_B44515: FFreeAd var_AC = ""
  loc_B4451C: FFree1Var var_D0 = ""
  loc_B4451F: Branch loc_B44528
  loc_B44522: FLdFPR8 var_8C
  loc_B44525: FStFPR8 var_8C
  loc_B44528: FLdUI1
  loc_B4452C: CI2UI1
  loc_B4452E: LitI2_Byte 2
  loc_B44530: EqI2
  loc_B44531: BranchF loc_B44600
  loc_B44534: LitStr "SELECT ifnull(sum(liqucome.CrafLico),0) as Creditos FROM liqucome USE INDEX (idxliqucome01) WHERE PeriLiqu = "
  loc_B44537: FLdI2 PeriLiqu
  loc_B4453A: CStrUI1
  loc_B4453C: FStStrNoPop BuscaCreditosaFavorGeneracionAnual
  loc_B4453F: ConcatStr
  loc_B44540: FStStrNoPop var_98
  loc_B44543: LitStr " AND CodiTili = "
  loc_B44546: ConcatStr
  loc_B44547: FStStrNoPop var_9C
  loc_B4454A: FLdUI1
  loc_B4454E: CStrI2
  loc_B44550: FStStrNoPop var_A0
  loc_B44553: ConcatStr
  loc_B44554: FStStrNoPop var_A4
  loc_B44557: LitStr " AND NumeLiqu = "
  loc_B4455A: ConcatStr
  loc_B4455B: FStStrNoPop var_D4
  loc_B4455E: FLdI2 NumeLiqu
  loc_B44561: CStrUI1
  loc_B44563: FStStrNoPop var_D8
  loc_B44566: ConcatStr
  loc_B44567: FStStrNoPop var_DC
  loc_B4456A: LitStr " AND CodiCome = "
  loc_B4456D: ConcatStr
  loc_B4456E: FStStrNoPop var_E0
  loc_B44571: ILdRf var_90
  loc_B44574: ConcatStr
  loc_B44575: FStStrNoPop var_E4
  loc_B44578: LitStr " AND TipoVenc = 'Bimestral'"
  loc_B4457B: ConcatStr
  loc_B4457C: FStStrNoPop var_E8
  loc_B4457F: Call Proc_141_49_A48C94()
  loc_B44584: FFreeStr BuscaCreditosaFavorGeneracionAnual = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_B4459D: FLdRfVar var_A8
  loc_B445A0: FLdPr Me
  loc_B445A3: MemLdPr global_64
  loc_B445A6:  = Me.RecordCount
  loc_B445AB: ILdRf var_A8
  loc_B445AE: LitI4 0
  loc_B445B3: GtI4
  loc_B445B4: BranchF loc_B445FA
  loc_B445B7: FLdRfVar var_D0
  loc_B445BA: FLdRfVar var_C0
  loc_B445BD: LitVarStr var_BC, "Creditos"
  loc_B445C2: PopAdLdVar
  loc_B445C3: FLdRfVar var_AC
  loc_B445C6: FLdPr Me
  loc_B445C9: MemLdPr global_64
  loc_B445CC:  = Me.Fields
  loc_B445D1: FLdPr var_AC
  loc_B445D4: from_stack_2 = Me.Item(from_stack_1)
  loc_B445D9: FLdPr var_C0
  loc_B445DC:  = Me.Value
  loc_B445E1: FLdFPR8 var_8C
  loc_B445E4: FLdRfVar var_D0
  loc_B445E7: FnCDblVar
  loc_B445E9: SubR4
  loc_B445EA: FStFPR8 var_8C
  loc_B445ED: FFreeAd var_AC = ""
  loc_B445F4: FFree1Var var_D0 = ""
  loc_B445F7: Branch loc_B44600
  loc_B445FA: FLdFPR8 var_8C
  loc_B445FD: FStFPR8 var_8C
  loc_B44600: FLdUI1
  loc_B44604: CI2UI1
  loc_B44606: LitI2_Byte 4
  loc_B44608: EqI2
  loc_B44609: BranchF loc_B446D8
  loc_B4460C: LitStr "SELECT ifnull(sum(liquceme.CrafLice),0) as Creditos FROM liquceme USE INDEX (idxliquceme01) WHERE PeriLiqu = "
  loc_B4460F: FLdI2 PeriLiqu
  loc_B44612: CStrUI1
  loc_B44614: FStStrNoPop BuscaCreditosaFavorGeneracionAnual
  loc_B44617: ConcatStr
  loc_B44618: FStStrNoPop var_98
  loc_B4461B: LitStr " AND CodiTili = "
  loc_B4461E: ConcatStr
  loc_B4461F: FStStrNoPop var_9C
  loc_B44622: FLdUI1
  loc_B44626: CStrI2
  loc_B44628: FStStrNoPop var_A0
  loc_B4462B: ConcatStr
  loc_B4462C: FStStrNoPop var_A4
  loc_B4462F: LitStr " AND NumeLiqu = "
  loc_B44632: ConcatStr
  loc_B44633: FStStrNoPop var_D4
  loc_B44636: FLdI2 NumeLiqu
  loc_B44639: CStrUI1
  loc_B4463B: FStStrNoPop var_D8
  loc_B4463E: ConcatStr
  loc_B4463F: FStStrNoPop var_DC
  loc_B44642: LitStr " AND CodiDifu = "
  loc_B44645: ConcatStr
  loc_B44646: FStStrNoPop var_E0
  loc_B44649: ILdRf var_90
  loc_B4464C: ConcatStr
  loc_B4464D: FStStrNoPop var_E4
  loc_B44650: LitStr " AND TipoVenc = 'Bimestral'"
  loc_B44653: ConcatStr
  loc_B44654: FStStrNoPop var_E8
  loc_B44657: Call Proc_141_49_A48C94()
  loc_B4465C: FFreeStr BuscaCreditosaFavorGeneracionAnual = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_B44675: FLdRfVar var_A8
  loc_B44678: FLdPr Me
  loc_B4467B: MemLdPr global_64
  loc_B4467E:  = Me.RecordCount
  loc_B44683: ILdRf var_A8
  loc_B44686: LitI4 0
  loc_B4468B: GtI4
  loc_B4468C: BranchF loc_B446D2
  loc_B4468F: FLdRfVar var_D0
  loc_B44692: FLdRfVar var_C0
  loc_B44695: LitVarStr var_BC, "Creditos"
  loc_B4469A: PopAdLdVar
  loc_B4469B: FLdRfVar var_AC
  loc_B4469E: FLdPr Me
  loc_B446A1: MemLdPr global_64
  loc_B446A4:  = Me.Fields
  loc_B446A9: FLdPr var_AC
  loc_B446AC: from_stack_2 = Me.Item(from_stack_1)
  loc_B446B1: FLdPr var_C0
  loc_B446B4:  = Me.Value
  loc_B446B9: FLdFPR8 var_8C
  loc_B446BC: FLdRfVar var_D0
  loc_B446BF: FnCDblVar
  loc_B446C1: SubR4
  loc_B446C2: FStFPR8 var_8C
  loc_B446C5: FFreeAd var_AC = ""
  loc_B446CC: FFree1Var var_D0 = ""
  loc_B446CF: Branch loc_B446D8
  loc_B446D2: FLdFPR8 var_8C
  loc_B446D5: FStFPR8 var_8C
  loc_B446D8: ExitProcCbHresult
End Function

Public Function BuscaSaldoPorNumero(CodiOfic, CuenCtct, NumeCred) 'AADD9C
  'Data Table: 422D28
  loc_AADCE8: ILdRf CuenCtct
  loc_AADCEB: FStStrCopy var_90
  loc_AADCEE: LitStr "SELECT ifnull(SUM(DebeCred)-SUM(CredCred),0) as SaldCred FROM creditos WHERE CodiOfic = "
  loc_AADCF1: FLdUI1
  loc_AADCF5: CStrI2
  loc_AADCF7: FStStrNoPop BuscaSaldoPorNumero
  loc_AADCFA: ConcatStr
  loc_AADCFB: FStStrNoPop var_98
  loc_AADCFE: LitStr " AND CuenCtct = '"
  loc_AADD01: ConcatStr
  loc_AADD02: FStStrNoPop var_9C
  loc_AADD05: ILdRf var_90
  loc_AADD08: ConcatStr
  loc_AADD09: FStStrNoPop var_A0
  loc_AADD0C: LitStr "' AND NumeCred = "
  loc_AADD0F: ConcatStr
  loc_AADD10: FStStrNoPop var_A4
  loc_AADD13: ILdRf NumeCred
  loc_AADD16: CStrI4
  loc_AADD18: FStStrNoPop var_A8
  loc_AADD1B: ConcatStr
  loc_AADD1C: FStStrNoPop var_AC
  loc_AADD1F: Call Proc_141_49_A48C94()
  loc_AADD24: FFreeStr BuscaSaldoPorNumero = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AADD35: FLdRfVar var_B0
  loc_AADD38: FLdPr Me
  loc_AADD3B: MemLdPr global_64
  loc_AADD3E:  = Me.RecordCount
  loc_AADD43: ILdRf var_B0
  loc_AADD46: LitI4 0
  loc_AADD4B: GtI4
  loc_AADD4C: BranchF loc_AADD8E
  loc_AADD4F: FLdRfVar var_D8
  loc_AADD52: FLdRfVar var_C8
  loc_AADD55: LitVarStr var_C4, "SaldCred"
  loc_AADD5A: PopAdLdVar
  loc_AADD5B: FLdRfVar var_B4
  loc_AADD5E: FLdPr Me
  loc_AADD61: MemLdPr global_64
  loc_AADD64:  = Me.Fields
  loc_AADD69: FLdPr var_B4
  loc_AADD6C: from_stack_2 = Me.Item(from_stack_1)
  loc_AADD71: FLdPr var_C8
  loc_AADD74:  = Me.Value
  loc_AADD79: FLdRfVar var_D8
  loc_AADD7C: FnCDblVar
  loc_AADD7E: FStFPR8 var_8C
  loc_AADD81: FFreeAd var_B4 = ""
  loc_AADD88: FFree1Var var_D8 = ""
  loc_AADD8B: Branch loc_AADD94
  loc_AADD8E: LitI2_Byte 0
  loc_AADD90: CR8I2
  loc_AADD91: FStFPR8 var_8C
  loc_AADD94: ExitProcCbHresult
End Function

Public Function BuscaMoviCred(CodiOfic, CuenCtct, NumeCred) 'ABDFC4
  'Data Table: 422D28
  loc_ABDEF4: ILdRf CuenCtct
  loc_ABDEF7: FStStrCopy var_8C
  loc_ABDEFA: LitStr "SELECT MoviCred FROM creditos "
  loc_ABDEFD: LitStr " WHERE CodiOfic = "
  loc_ABDF00: ConcatStr
  loc_ABDF01: FStStrNoPop var_90
  loc_ABDF04: FLdUI1
  loc_ABDF08: CStrI2
  loc_ABDF0A: FStStrNoPop BuscaMoviCred
  loc_ABDF0D: ConcatStr
  loc_ABDF0E: FStStrNoPop var_98
  loc_ABDF11: LitStr " AND CuenCtct = '"
  loc_ABDF14: ConcatStr
  loc_ABDF15: FStStrNoPop var_9C
  loc_ABDF18: ILdRf var_8C
  loc_ABDF1B: ConcatStr
  loc_ABDF1C: FStStrNoPop var_A0
  loc_ABDF1F: LitStr "'"
  loc_ABDF22: ConcatStr
  loc_ABDF23: FStStrNoPop var_A4
  loc_ABDF26: LitStr " AND NumeCred = "
  loc_ABDF29: ConcatStr
  loc_ABDF2A: FStStrNoPop var_A8
  loc_ABDF2D: ILdRf NumeCred
  loc_ABDF30: CStrI4
  loc_ABDF32: FStStrNoPop var_AC
  loc_ABDF35: ConcatStr
  loc_ABDF36: FStStrNoPop var_B0
  loc_ABDF39: LitStr " ORDER BY CodiOfic, CuenCtct, NumeCred, MoviCred DESC LIMIT 1"
  loc_ABDF3C: ConcatStr
  loc_ABDF3D: FStStrNoPop var_B4
  loc_ABDF40: Call Proc_141_49_A48C94()
  loc_ABDF45: FFreeStr var_90 = "": BuscaMoviCred = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_ABDF5C: FLdRfVar var_B8
  loc_ABDF5F: FLdPr Me
  loc_ABDF62: MemLdPr global_64
  loc_ABDF65:  = Me.RecordCount
  loc_ABDF6A: ILdRf var_B8
  loc_ABDF6D: LitI4 0
  loc_ABDF72: GtI4
  loc_ABDF73: BranchF loc_ABDFB6
  loc_ABDF76: FLdRfVar var_E0
  loc_ABDF79: FLdRfVar var_D0
  loc_ABDF7C: LitVarStr var_CC, "MoviCred"
  loc_ABDF81: PopAdLdVar
  loc_ABDF82: FLdRfVar var_BC
  loc_ABDF85: FLdPr Me
  loc_ABDF88: MemLdPr global_64
  loc_ABDF8B:  = Me.Fields
  loc_ABDF90: FLdPr var_BC
  loc_ABDF93: from_stack_2 = Me.Item(from_stack_1)
  loc_ABDF98: FLdPr var_D0
  loc_ABDF9B:  = Me.Value
  loc_ABDFA0: FLdRfVar var_E0
  loc_ABDFA3: FnCDblVar
  loc_ABDFA5: CI2R8
  loc_ABDFA6: FStI2 var_86
  loc_ABDFA9: FFreeAd var_BC = ""
  loc_ABDFB0: FFree1Var var_E0 = ""
  loc_ABDFB3: Branch loc_ABDFBB
  loc_ABDFB6: LitI2_Byte 0
  loc_ABDFB8: FStI2 var_86
  loc_ABDFBB: ExitProcCbHresult
End Function

Private Function Proc_141_48_9F63C8() '9F63C8
  'Data Table: 422D28
  loc_9F63A4: LitStr "Primary"
  loc_9F63A7: FLdPr Me
  loc_9F63AA: LateIdLdVar var_94 DispID_4 0
  loc_9F63B1: CastAdVar Me
  loc_9F63B5: FStAdFunc var_98
  loc_9F63B8: FLdPr var_98
  loc_9F63C0: FFree1Ad var_98
  loc_9F63C3: FFree1Var var_94 = ""
  loc_9F63C6: ExitProcHresult
End Function

Private Function Proc_141_49_A48C94(arg_C) 'A48C94
  'Data Table: 422D28
  loc_A48C40: ILdRf arg_C
  loc_A48C43: FStStrCopy var_88
  loc_A48C46: LitNothing
  loc_A48C48: CastAd
  loc_A48C4B: FStAdFuncNoPop
  loc_A48C4E: FLdPr Me
  loc_A48C51: MemStAd
  loc_A48C55: FFree1Ad var_8C
  loc_A48C58: New Recordset
  loc_A48C5C: FStAdFuncNoPop
  loc_A48C5F: FLdPr Me
  loc_A48C62: MemStAd
  loc_A48C66: FFree1Ad var_8C
  loc_A48C69: LitI4 -1
  loc_A48C6E: LitI4 3
  loc_A48C73: LitI4 3
  loc_A48C78: ImpAdLdI4 MemVar_D9301C
  loc_A48C7B: CVarAd
  loc_A48C7F: PopAdLdVar
  loc_A48C80: ILdRf var_88
  loc_A48C83: CVarStr var_9C
  loc_A48C86: PopAdLdVar
  loc_A48C87: FLdPr Me
  loc_A48C8A: MemLdPr global_64
  loc_A48C8D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A48C92: ExitProcHresult
End Function

Private Function Proc_141_50_9E497C(arg_C) '9E497C
  'Data Table: 422D28
  loc_9E4960: ILdI4 arg_C
  loc_9E4963: FStStrCopy var_88
  loc_9E4966: ILdRf var_88
  loc_9E4969: LitStr "Primary"
  loc_9E496C: EqStr
  loc_9E496E: BranchF loc_9E497B
  loc_9E4971: FLdPr Me
  loc_9E4974: MemLdStr global_60
  loc_9E4977: IStAd
  loc_9E497B: ExitProcHresult
End Function
