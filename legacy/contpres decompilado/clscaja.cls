VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clscaja"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '46E23C
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '46E24B
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '46E25A
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96F04C
  'Data Table: 46D5B0
  loc_96F024: FLdRfVar var_88
  loc_96F027: FLdPr Me
  loc_96F02A: MemLdPr RsFrm
  loc_96F02D:  = Me.RecordCount
  loc_96F032: ILdRf var_88
  loc_96F035: LitI4 0
  loc_96F03A: GtI4
  loc_96F03B: BranchF loc_96F049
  loc_96F03E: FLdPr Me
  loc_96F041: MemLdPr RsFrm
  loc_96F044: Me.MoveFirst
  loc_96F049: ExitProcHresult
  loc_96F04A: Ary1LdFPR4
End Sub

Public Sub MoveLast() '96F0A4
  'Data Table: 46D5B0
  loc_96F07C: FLdRfVar var_88
  loc_96F07F: FLdPr Me
  loc_96F082: MemLdPr RsFrm
  loc_96F085:  = Me.RecordCount
  loc_96F08A: ILdRf var_88
  loc_96F08D: LitI4 0
  loc_96F092: GtI4
  loc_96F093: BranchF loc_96F0A1
  loc_96F096: FLdPr Me
  loc_96F099: MemLdPr RsFrm
  loc_96F09C: Me.MoveLast
  loc_96F0A1: ExitProcHresult
End Sub

Public Sub MoveNext() '99EE40
  'Data Table: 46D5B0
  loc_99EDC8: FLdRfVar var_86
  loc_99EDCB: FLdPr Me
  loc_99EDCE: MemLdPr RsFrm
  loc_99EDD1:  = Me.EOF
  loc_99EDD6: FLdI2 var_86
  loc_99EDD9: NotI4
  loc_99EDDA: FLdRfVar var_8C
  loc_99EDDD: FLdPr Me
  loc_99EDE0: MemLdPr RsFrm
  loc_99EDE3:  = Me.RecordCount
  loc_99EDE8: ILdRf var_8C
  loc_99EDEB: LitI4 0
  loc_99EDF0: GtI4
  loc_99EDF1: AndI4
  loc_99EDF2: BranchF loc_99EE00
  loc_99EDF5: FLdPr Me
  loc_99EDF8: MemLdPr RsFrm
  loc_99EDFB: Me.MoveNext
  loc_99EE00: FLdRfVar var_86
  loc_99EE03: FLdPr Me
  loc_99EE06: MemLdPr RsFrm
  loc_99EE09:  = Me.EOF
  loc_99EE0E: FLdI2 var_86
  loc_99EE11: FLdRfVar var_8C
  loc_99EE14: FLdPr Me
  loc_99EE17: MemLdPr RsFrm
  loc_99EE1A:  = Me.RecordCount
  loc_99EE1F: ILdRf var_8C
  loc_99EE22: LitI4 0
  loc_99EE27: GtI4
  loc_99EE28: AndI4
  loc_99EE29: BranchF loc_99EE3C
  loc_99EE2C: ImpAdCallFPR4 Beep()
  loc_99EE31: FLdPr Me
  loc_99EE34: MemLdPr RsFrm
  loc_99EE37: Me.MoveLast
  loc_99EE3C: ExitProcHresult
  loc_99EE3D: FLdRfVar var_C98
End Sub

Public Sub MoveSiguiente() '942020
  'Data Table: 46D5B0
  loc_942014: FLdPr Me
  loc_942017: MemLdPr RsFrm
  loc_94201A: Me.MoveNext
  loc_94201F: ExitProcHresult
End Sub

Public Sub Move(iValor) '9487D0
  'Data Table: 46D5B0
  loc_9487BC: LitVar_Missing var_94
  loc_9487BF: PopAdLdVar
  loc_9487C0: ILdI2 iValor
  loc_9487C3: CI4UI1
  loc_9487C4: FLdPr Me
  loc_9487C7: MemLdPr RsFrm
  loc_9487CA: Me.Move from_stack_1, from_stack_2
  loc_9487CF: ExitProcHresult
End Sub

Public Sub MovePrevious() '99F038
  'Data Table: 46D5B0
  loc_99EFC0: FLdRfVar var_86
  loc_99EFC3: FLdPr Me
  loc_99EFC6: MemLdPr RsFrm
  loc_99EFC9:  = Me.BOF
  loc_99EFCE: FLdI2 var_86
  loc_99EFD1: NotI4
  loc_99EFD2: FLdRfVar var_8C
  loc_99EFD5: FLdPr Me
  loc_99EFD8: MemLdPr RsFrm
  loc_99EFDB:  = Me.RecordCount
  loc_99EFE0: ILdRf var_8C
  loc_99EFE3: LitI4 0
  loc_99EFE8: GtI4
  loc_99EFE9: AndI4
  loc_99EFEA: BranchF loc_99EFF8
  loc_99EFED: FLdPr Me
  loc_99EFF0: MemLdPr RsFrm
  loc_99EFF3: Me.MovePrevious
  loc_99EFF8: FLdRfVar var_86
  loc_99EFFB: FLdPr Me
  loc_99EFFE: MemLdPr RsFrm
  loc_99F001:  = Me.BOF
  loc_99F006: FLdI2 var_86
  loc_99F009: FLdRfVar var_8C
  loc_99F00C: FLdPr Me
  loc_99F00F: MemLdPr RsFrm
  loc_99F012:  = Me.RecordCount
  loc_99F017: ILdRf var_8C
  loc_99F01A: LitI4 0
  loc_99F01F: GtI4
  loc_99F020: AndI4
  loc_99F021: BranchF loc_99F034
  loc_99F024: ImpAdCallFPR4 Beep()
  loc_99F029: FLdPr Me
  loc_99F02C: MemLdPr RsFrm
  loc_99F02F: Me.MoveFirst
  loc_99F034: ExitProcHresult
  loc_99F035: PopTmpLdAd8 var_27E4
End Sub

Public Property Get EOF() '963A14
  'Data Table: 46D5B0
  loc_9639F8: FLdRfVar var_88
  loc_9639FB: FLdPr Me
  loc_9639FE: MemLdPr RsFrm
  loc_963A01:  = Me.EOF
  loc_963A06: FLdI2 var_88
  loc_963A09: FStI2 var_86
  loc_963A0C: ExitProcCbHresult
End Sub

Public Property Get BOF() '96397C
  'Data Table: 46D5B0
  loc_963960: FLdRfVar var_88
  loc_963963: FLdPr Me
  loc_963966: MemLdPr RsFrm
  loc_963969:  = Me.BOF
  loc_96396E: FLdI2 var_88
  loc_963971: FStI2 var_86
  loc_963974: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '944F44
  'Data Table: 46D5B0
  loc_944F34: ILdI4 sOrden
  loc_944F37: FLdPr Me
  loc_944F3A: MemLdPr RsFrm
  loc_944F3D: Me.Sort = from_stack_1
  loc_944F42: ExitProcHresult
End Sub

Public Sub Find(sFind) '9676C0
  'Data Table: 46D5B0
  loc_9676A0: LitVar_Missing var_94
  loc_9676A3: PopAdLdVar
  loc_9676A4: LitI4 1
  loc_9676A9: LitI4 0
  loc_9676AE: ILdI4 sFind
  loc_9676B1: FLdPr Me
  loc_9676B4: MemLdPr RsFrm
  loc_9676B7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9676BC: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '96384C
  'Data Table: 46D5B0
  loc_963830: FLdRfVar var_8C
  loc_963833: FLdPr Me
  loc_963836: MemLdPr RsFrm
  loc_963839:  = Me.AbsolutePosition
  loc_96383E: ILdRf var_8C
  loc_963841: FStR4 var_88
  loc_963844: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9637B4
  'Data Table: 46D5B0
  loc_963798: FLdRfVar var_8C
  loc_96379B: FLdPr Me
  loc_96379E: MemLdPr RsFrm
  loc_9637A1:  = Me.RecordCount
  loc_9637A6: ILdRf var_8C
  loc_9637A9: FStR4 var_88
  loc_9637AC: ExitProcCbHresult
End Sub

Public Sub Encontrar(sFechCaja) '97F548
  'Data Table: 46D5B0
  loc_97F51C: ILdRf sFechCaja
  loc_97F51F: FStStrCopy var_88
  loc_97F522: Call Requery()
  loc_97F527: LitStr "FechCaja = '"
  loc_97F52A: ILdRf var_88
  loc_97F52D: ConcatStr
  loc_97F52E: FStStrNoPop var_8C
  loc_97F531: LitStr "'"
  loc_97F534: ConcatStr
  loc_97F535: PopTmpLdAdStr
  loc_97F539: Call Find(from_stack_1v)
  loc_97F53E: FFreeStr var_8C = ""
  loc_97F545: ExitProcHresult
End Sub

Public Sub AddNew(sFechCaja, PeriInfo, DefiCaja, ContCaja) '9BE558
  'Data Table: 46D5B0
  loc_9BE4C0: ILdRf sFechCaja
  loc_9BE4C3: FStStrCopy var_88
  loc_9BE4C6: LitStr "REPLACE INTO caja (FechCaja,PeriInfo,DefiCaja,ContCaja) VALUES ("
  loc_9BE4C9: LitI4 1
  loc_9BE4CE: LitI4 1
  loc_9BE4D3: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_9BE4D8: FStVarCopyObj var_B8
  loc_9BE4DB: FLdRfVar var_B8
  loc_9BE4DE: FLdRfVar var_88
  loc_9BE4E1: CVarRef
  loc_9BE4E6: ImpAdCallI2 Format$(, )
  loc_9BE4EB: FStStrNoPop var_BC
  loc_9BE4EE: ConcatStr
  loc_9BE4EF: FStStrNoPop var_C0
  loc_9BE4F2: LitStr ","
  loc_9BE4F5: ConcatStr
  loc_9BE4F6: FStStrNoPop var_C4
  loc_9BE4F9: FLdI2 PeriInfo
  loc_9BE4FC: CStrUI1
  loc_9BE4FE: FStStrNoPop var_C8
  loc_9BE501: ConcatStr
  loc_9BE502: FStStrNoPop var_CC
  loc_9BE505: LitStr ","
  loc_9BE508: ConcatStr
  loc_9BE509: FStStrNoPop var_D0
  loc_9BE50C: FLdUI1
  loc_9BE510: CStrI2
  loc_9BE512: FStStrNoPop var_D4
  loc_9BE515: ConcatStr
  loc_9BE516: FStStrNoPop var_D8
  loc_9BE519: LitStr ","
  loc_9BE51C: ConcatStr
  loc_9BE51D: FStStrNoPop var_DC
  loc_9BE520: FLdUI1
  loc_9BE524: CStrI2
  loc_9BE526: FStStrNoPop var_E0
  loc_9BE529: ConcatStr
  loc_9BE52A: FStStrNoPop var_E4
  loc_9BE52D: LitStr ")"
  loc_9BE530: ConcatStr
  loc_9BE531: FStStrNoPop var_E8
  loc_9BE534: Call EjecutarRsCls(from_stack_1v)
  loc_9BE539: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_9BE554: FFree1Var var_B8 = ""
  loc_9BE557: ExitProcHresult
End Sub

Public Sub IncrementaFeproPaco(FeproPaco) '9EAF00
  'Data Table: 46D5B0
  loc_9EADF8: ILdRf FeproPaco
  loc_9EADFB: FStStrCopy var_88
  loc_9EADFE: LitStr "START TRANSACTION;"
  loc_9EAE01: Call EjecutarRsCls(from_stack_1v)
  loc_9EAE06: OnErrorGoto loc_9EAE79
  loc_9EAE09: LitStr "UPDATE paraconta"
  loc_9EAE0C: LitStr " SET FeproPaco = "
  loc_9EAE0F: ConcatStr
  loc_9EAE10: CVarStr var_D8
  loc_9EAE13: LitI4 1
  loc_9EAE18: LitI4 1
  loc_9EAE1D: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_9EAE22: FStVarCopyObj var_B8
  loc_9EAE25: FLdRfVar var_B8
  loc_9EAE28: FLdRfVar var_88
  loc_9EAE2B: CVarRef
  loc_9EAE30: FLdRfVar var_C8
  loc_9EAE33: ImpAdCallFPR4  = Format(, )
  loc_9EAE38: FLdRfVar var_C8
  loc_9EAE3B: ConcatVar var_E8
  loc_9EAE3F: LitVarStr var_F8, " WHERE paraconta.PeriInfo = "
  loc_9EAE44: ConcatVar var_108
  loc_9EAE48: ImpAdLdI2 MemVar_C3D064
  loc_9EAE4B: CVarI2 var_118
  loc_9EAE4E: ConcatVar var_128
  loc_9EAE52: CStrVarVal var_12C
  loc_9EAE56: Call EjecutarRsCls(from_stack_1v)
  loc_9EAE5B: FFree1Str var_12C
  loc_9EAE5E: FFreeVar var_B8 = "": var_D8 = "": var_C8 = "": var_E8 = "": var_108 = ""
  loc_9EAE6D: LitStr "COMMIT;"
  loc_9EAE70: Call EjecutarRsCls(from_stack_1v)
  loc_9EAE75: On Error GoTo 0
  loc_9EAE78: ExitProcHresult
  loc_9EAE79: LitStr "ROLLBACK;"
  loc_9EAE7C: Call EjecutarRsCls(from_stack_1v)
  loc_9EAE81: LitVar_Missing var_E8
  loc_9EAE84: LitVar_Missing var_D8
  loc_9EAE87: LitVar_Missing var_C8
  loc_9EAE8A: LitI4 0
  loc_9EAE8F: LitStr "Error "
  loc_9EAE92: FLdRfVar var_134
  loc_9EAE95: ImpAdCallI2 Err 'rtcErrObj
  loc_9EAE9A: FStAdFunc var_130
  loc_9EAE9D: FLdPr var_130
  loc_9EAEA0:  = Err.Number
  loc_9EAEA5: ILdRf var_134
  loc_9EAEA8: CStrI4
  loc_9EAEAA: FStStrNoPop var_12C
  loc_9EAEAD: ConcatStr
  loc_9EAEAE: FStStrNoPop var_138
  loc_9EAEB1: LitStr " ("
  loc_9EAEB4: ConcatStr
  loc_9EAEB5: FStStrNoPop var_144
  loc_9EAEB8: FLdRfVar var_140
  loc_9EAEBB: ImpAdCallI2 Err 'rtcErrObj
  loc_9EAEC0: FStAdFunc var_13C
  loc_9EAEC3: FLdPr var_13C
  loc_9EAEC6:  = Err.Description
  loc_9EAECB: ILdRf var_140
  loc_9EAECE: ConcatStr
  loc_9EAECF: FStStrNoPop var_148
  loc_9EAED2: LitStr ") in procedure IncrementaFedePaco of Módulo de clase clsasiento"
  loc_9EAED5: ConcatStr
  loc_9EAED6: CVarStr var_B8
  loc_9EAED9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_9EAEDE: FFreeStr var_12C = "": var_138 = "": var_144 = "": var_140 = ""
  loc_9EAEEB: FFreeAd var_130 = ""
  loc_9EAEF2: FFreeVar var_B8 = "": var_C8 = "": var_D8 = ""
  loc_9EAEFD: ExitProcHresult
  loc_9EAEFE: IStDarg arg_3800
End Sub

Public Sub RedefineRS(sSelect) '971C28
  'Data Table: 46D5B0
  loc_971C00: ILdRf sSelect
  loc_971C03: FStStrCopy var_88
  loc_971C06: FLdPr Me
  loc_971C09: MemLdRfVar from_stack_1.RsFrm
  loc_971C0C: ILdRf var_88
  loc_971C0F: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_971C14: LitVarStr var_98, "Primary"
  loc_971C19: PopAdLdVar
  loc_971C1A: FLdPr Me
  loc_971C1D: LateIdCall
  loc_971C25: ExitProcHresult
  loc_971C26: LitVar_Missing arg_3810
End Sub

Public Sub EjecutarRsCls(sSelect) '963718
  'Data Table: 46D5B0
  loc_963700: ILdRf sSelect
  loc_963703: FStStrCopy var_88
  loc_963706: FLdPr Me
  loc_963709: MemLdRfVar from_stack_1.global_56
  loc_96370C: ILdRf var_88
  loc_96370F: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_963714: ExitProcHresult
  loc_963715: StAryRecCopy
End Sub

Public Sub EjecutarRsCls2(sSelect) '963680
  'Data Table: 46D5B0
  loc_963668: ILdRf sSelect
  loc_96366B: FStStrCopy var_88
  loc_96366E: FLdPr Me
  loc_963671: MemLdRfVar from_stack_1.global_60
  loc_963674: ILdRf var_88
  loc_963677: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_96367C: ExitProcHresult
  loc_96367D: SetLastSystemError
End Sub

Public Sub Requery() '967760
  'Data Table: 46D5B0
  loc_967740: FLdPr Me
  loc_967743: MemLdRfVar from_stack_1.RsFrm
  loc_967746: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_96774B: LitVarStr var_94, "Primary"
  loc_967750: PopAdLdVar
  loc_967751: FLdPr Me
  loc_967754: LateIdCall
  loc_96775C: ExitProcHresult
End Sub

Public Property Get DataSource() '971550
  'Data Table: 46D5B0
  loc_97152C: ZeroRetVal
  loc_97152E: FLdRfVar var_8C
  loc_971531: FLdPr Me
  loc_971534: MemLdPr RsFrm
  loc_971537:  = Me.DataSource
  loc_97153C: ILdRf var_8C
  loc_97153F: CastAd
  loc_971542: FStAdFunc var_88
  loc_971545: FFree1Ad var_8C
  loc_971548: ExitProcCbHresult
  loc_97154E: Ary1StVar
End Sub

Public Function ValidaFechCajaCierreDefinitivo(sFechCaja) 'A367F8
  'Data Table: 46D5B0
  loc_A365F4: ILdRf sFechCaja
  loc_A365F7: FStStrCopy var_8C
  loc_A365FA: ZeroRetVal
  loc_A365FC: LitI2_Byte &HFF
  loc_A365FE: PopTmpLdAd2 var_92
  loc_A36601: LitNothing
  loc_A36603: CastAd
  loc_A36606: FStAdFunc var_90
  loc_A36609: FLdRfVar var_90
  loc_A3660C: LitStr "01/01/2018"
  loc_A3660F: LitI2_Byte &HFF
  loc_A36611: LitI2_Byte &HFF
  loc_A36613: ILdRf var_8C
  loc_A36616: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A3661B: FStStr var_88
  loc_A3661E: FFree1Ad var_90
  loc_A36621: ILdRf var_88
  loc_A36624: LitStr vbNullString
  loc_A36627: NeStr
  loc_A36629: BranchF loc_A36632
  loc_A3662C: ExitProcCbHresult
  loc_A36632: LitStr "SELECT IFNULL(FeproPaco, CONCAT(PeriInfo,'-01-01')) FeproPaco, IFNULL(FedePaco, CONCAT(PeriInfo,'-01-01')) FedePaco FROM paraconta WHERE PeriInfo = "
  loc_A36635: ImpAdLdI2 MemVar_C3D064
  loc_A36638: CStrUI1
  loc_A3663A: FStStrNoPop var_98
  loc_A3663D: ConcatStr
  loc_A3663E: FStStrNoPop var_9C
  loc_A36641: LitStr ";"
  loc_A36644: ConcatStr
  loc_A36645: FStStrNoPop var_A0
  loc_A36648: Call EjecutarRsCls(from_stack_1v)
  loc_A3664D: FFreeStr var_98 = "": var_9C = ""
  loc_A36656: FLdRfVar var_A4
  loc_A36659: FLdPr Me
  loc_A3665C: MemLdPr global_56
  loc_A3665F:  = Me.RecordCount
  loc_A36664: ILdRf var_A4
  loc_A36667: LitI4 0
  loc_A3666C: GtI4
  loc_A3666D: BranchF loc_A367C3
  loc_A36670: FLdRfVar var_C8
  loc_A36673: FLdRfVar var_B8
  loc_A36676: LitVarStr var_B4, "FeproPaco"
  loc_A3667B: PopAdLdVar
  loc_A3667C: FLdRfVar var_90
  loc_A3667F: FLdPr Me
  loc_A36682: MemLdPr global_56
  loc_A36685:  = Me.Fields
  loc_A3668A: FLdPr var_90
  loc_A3668D: from_stack_2 = Me.Item(from_stack_1)
  loc_A36692: FLdPr var_B8
  loc_A36695:  = Me.Value
  loc_A3669A: ILdRf var_8C
  loc_A3669D: CDateStr
  loc_A3669F: FLdRfVar var_C8
  loc_A366A2: FnCDateVar
  loc_A366A4: LitI2_Byte 1
  loc_A366A6: CR8I2
  loc_A366A7: AddR8
  loc_A366A8: CDateR8
  loc_A366A9: GtR4
  loc_A366AA: FFreeAd var_90 = ""
  loc_A366B1: FFree1Var var_C8 = ""
  loc_A366B4: BranchF loc_A3671E
  loc_A366B7: LitVarStr var_D8, "Debe Cerrar desde el Día "
  loc_A366BC: FLdRfVar var_C8
  loc_A366BF: FLdRfVar var_B8
  loc_A366C2: LitVarStr var_B4, "FeproPaco"
  loc_A366C7: PopAdLdVar
  loc_A366C8: FLdRfVar var_90
  loc_A366CB: FLdPr Me
  loc_A366CE: MemLdPr global_56
  loc_A366D1:  = Me.Fields
  loc_A366D6: FLdPr var_90
  loc_A366D9: from_stack_2 = Me.Item(from_stack_1)
  loc_A366DE: FLdPr var_B8
  loc_A366E1:  = Me.Value
  loc_A366E6: FLdRfVar var_C8
  loc_A366E9: FnCDateVar
  loc_A366EB: LitI2_Byte 1
  loc_A366ED: CR8I2
  loc_A366EE: AddR8
  loc_A366EF: CDateR8
  loc_A366F0: CVarDate var_E8
  loc_A366F4: ConcatVar var_F8
  loc_A366F8: LitVarStr var_108, ". Verifique ..."
  loc_A366FD: ConcatVar var_118
  loc_A36701: CStrVarTmp
  loc_A36702: FStStr var_88
  loc_A36705: FFreeAd var_90 = ""
  loc_A3670C: FFreeVar var_C8 = "": var_F8 = ""
  loc_A36715: ExitProcCbHresult
  loc_A3671B: Branch loc_A367C0
  loc_A3671E: ILdRf var_8C
  loc_A36721: CDateStr
  loc_A36723: CVarDate var_D8
  loc_A36727: HardType
  loc_A36728: FLdRfVar var_C8
  loc_A3672B: FLdRfVar var_B8
  loc_A3672E: LitVarStr var_B4, "FedePaco"
  loc_A36733: PopAdLdVar
  loc_A36734: FLdRfVar var_90
  loc_A36737: FLdPr Me
  loc_A3673A: MemLdPr global_56
  loc_A3673D:  = Me.Fields
  loc_A36742: FLdPr var_90
  loc_A36745: from_stack_2 = Me.Item(from_stack_1)
  loc_A3674A: FLdPr var_B8
  loc_A3674D:  = Me.Value
  loc_A36752: FLdRfVar var_C8
  loc_A36755: LeVarBool
  loc_A36757: FFreeAd var_90 = ""
  loc_A3675E: FFree1Var var_C8 = ""
  loc_A36761: BranchF loc_A367C0
  loc_A36764: FLdRfVar var_C8
  loc_A36767: FLdRfVar var_B8
  loc_A3676A: LitVarStr var_B4, "FedePaco"
  loc_A3676F: PopAdLdVar
  loc_A36770: FLdRfVar var_90
  loc_A36773: FLdPr Me
  loc_A36776: MemLdPr global_56
  loc_A36779:  = Me.Fields
  loc_A3677E: FLdPr var_90
  loc_A36781: from_stack_2 = Me.Item(from_stack_1)
  loc_A36786: FLdPr var_B8
  loc_A36789:  = Me.Value
  loc_A3678E: FLdRfVar var_C8
  loc_A36791: ImpAdLdI2 MemVar_C3D064
  loc_A36794: CStrUI1
  loc_A36796: FStStrNoPop var_98
  loc_A36799: LitStr "-01-01"
  loc_A3679C: ConcatStr
  loc_A3679D: CVarStr var_F8
  loc_A367A0: HardType
  loc_A367A1: EqVarBool
  loc_A367A3: FFree1Str var_98
  loc_A367A6: FFreeAd var_90 = ""
  loc_A367AD: FFreeVar var_C8 = ""
  loc_A367B4: BranchF loc_A367BA
  loc_A367B7: Branch loc_A367C0
  loc_A367BA: LitStr "La Contabilidad se encuentra Cerrada Definitivamente. Verifique ..."
  loc_A367BD: FStStrCopy var_88
  loc_A367C0: Branch loc_A367F0
  loc_A367C3: ILdRf var_8C
  loc_A367C6: CDateStr
  loc_A367C8: LitStr "01/01/"
  loc_A367CB: ImpAdLdI2 MemVar_C3D064
  loc_A367CE: CStrUI1
  loc_A367D0: FStStrNoPop var_98
  loc_A367D3: ConcatStr
  loc_A367D4: FStStrNoPop var_9C
  loc_A367D7: CDateStr
  loc_A367D9: NeR8
  loc_A367DA: FFreeStr var_98 = ""
  loc_A367E1: BranchF loc_A367F0
  loc_A367E4: LitStr "Debe Cerrar Definitivamente el 1 de Enero"
  loc_A367E7: FStStrCopy var_88
  loc_A367EA: ExitProcCbHresult
  loc_A367F0: ExitProcCbHresult
End Function

Public Function CierraCajaAuto() 'A96220
  'Data Table: 46D5B0
  loc_A95DBC: ZeroRetVal
  loc_A95DBE: LitStr "DELETE FROM cajaauto WHERE PeriInfo = Year(@desde) AND FechCaja >= @desde;"
  loc_A95DC1: Call EjecutarRsCls(from_stack_1v)
  loc_A95DC6: LitStr "SELECT autorizado.CodiPart, partida.CodiCuco, partida.ImpuPart, partida.CredPart, cuentacontable.ImpuCuco"
  loc_A95DC9: LitStr " FROM autorizado"
  loc_A95DCC: ConcatStr
  loc_A95DCD: FStStrNoPop var_8C
  loc_A95DD0: LitStr " LEFT JOIN partida ON partida.PeriInfo = autorizado.PeriInfo AND partida.CodiPart = autorizado.CodiPart"
  loc_A95DD3: ConcatStr
  loc_A95DD4: FStStrNoPop var_90
  loc_A95DD7: LitStr " LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = partida.PeriInfo AND infogov.cuentacontable.CodiCuco = partida.CodiCuco"
  loc_A95DDA: ConcatStr
  loc_A95DDB: FStStrNoPop CierraCajaAuto
  loc_A95DDE: LitStr " LEFT JOIN paraconta ON paraconta.PeriInfo = autorizado.PeriInfo"
  loc_A95DE1: ConcatStr
  loc_A95DE2: FStStrNoPop var_98
  loc_A95DE5: LitStr " WHERE autorizado.PeriInfo = Year(@desde)"
  loc_A95DE8: ConcatStr
  loc_A95DE9: FStStrNoPop var_9C
  loc_A95DEC: LitStr " AND FechAuto BETWEEN @desde AND @hasta"
  loc_A95DEF: ConcatStr
  loc_A95DF0: FStStrNoPop var_A0
  loc_A95DF3: LitStr " AND Left(autorizado.CodiPart,1) <> PaexPaco"
  loc_A95DF6: ConcatStr
  loc_A95DF7: FStStrNoPop var_A4
  loc_A95DFA: LitStr " AND (partida.CodiCuco IS NULL OR partida.CodiCuco = '' OR ImpuCuco IS NULL OR ImpuCuco = 0);"
  loc_A95DFD: ConcatStr
  loc_A95DFE: FStStrNoPop var_A8
  loc_A95E01: Call EjecutarRsCls(from_stack_1v)
  loc_A95E06: FFreeStr var_8C = "": var_90 = "": CierraCajaAuto = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A95E19: FLdRfVar var_AC
  loc_A95E1C: FLdPr Me
  loc_A95E1F: MemLdPr global_56
  loc_A95E22:  = Me.RecordCount
  loc_A95E27: ILdRf var_AC
  loc_A95E2A: LitI4 0
  loc_A95E2F: GtI4
  loc_A95E30: BranchF loc_A96157
  loc_A95E33: FLdPr Me
  loc_A95E36: MemLdStr global_56
  loc_A95E39: FStAd var_B0 
  loc_A95E3D: FLdPr var_B0
  loc_A95E40: Me.MoveFirst
  loc_A95E45: FLdRfVar var_B2
  loc_A95E48: FLdPr var_B0
  loc_A95E4B:  = Me.EOF
  loc_A95E50: FLdI2 var_B2
  loc_A95E53: NotI4
  loc_A95E54: BranchF loc_A96151
  loc_A95E57: FLdRfVar var_CC
  loc_A95E5A: LitVarStr var_C8, "CodiCuco"
  loc_A95E5F: PopAdLdVar
  loc_A95E60: FLdRfVar var_B8
  loc_A95E63: FLdPr var_B0
  loc_A95E66:  = Me.Fields
  loc_A95E6B: FLdPr var_B8
  loc_A95E6E: from_stack_2 = Me.Item(from_stack_1)
  loc_A95E73: FLdZeroAd var_CC
  loc_A95E76: CVarAd
  loc_A95E7A: ImpAdCallI2 IsNull()
  loc_A95E7F: FFree1Ad var_B8
  loc_A95E82: FFree1Var var_DC = ""
  loc_A95E85: BranchF loc_A95EEC
  loc_A95E88: ILdRf var_88
  loc_A95E8B: LitStr vbCrLf
  loc_A95E8E: ConcatStr
  loc_A95E8F: FStStrNoPop var_8C
  loc_A95E92: LitStr "La Partida "
  loc_A95E95: ConcatStr
  loc_A95E96: CVarStr var_EC
  loc_A95E99: FLdRfVar var_DC
  loc_A95E9C: FLdRfVar var_CC
  loc_A95E9F: LitVarStr var_C8, "CodiPart"
  loc_A95EA4: PopAdLdVar
  loc_A95EA5: FLdRfVar var_B8
  loc_A95EA8: FLdPr var_B0
  loc_A95EAB:  = Me.Fields
  loc_A95EB0: FLdPr var_B8
  loc_A95EB3: from_stack_2 = Me.Item(from_stack_1)
  loc_A95EB8: FLdPr var_CC
  loc_A95EBB:  = Me.Value
  loc_A95EC0: FLdRfVar var_DC
  loc_A95EC3: ConcatVar var_FC
  loc_A95EC7: LitVarStr var_10C, " correspondiente al Autorizado NO EXISTE. Verifique..."
  loc_A95ECC: ConcatVar var_11C
  loc_A95ED0: CStrVarTmp
  loc_A95ED1: FStStr var_88
  loc_A95ED4: FFree1Str var_8C
  loc_A95ED7: FFreeAd var_B8 = ""
  loc_A95EDE: FFreeVar var_EC = "": var_DC = "": var_FC = ""
  loc_A95EE9: Branch loc_A96146
  loc_A95EEC: FLdRfVar var_DC
  loc_A95EEF: FLdRfVar var_CC
  loc_A95EF2: LitVarStr var_C8, "CodiCuco"
  loc_A95EF7: PopAdLdVar
  loc_A95EF8: FLdRfVar var_B8
  loc_A95EFB: FLdPr var_B0
  loc_A95EFE:  = Me.Fields
  loc_A95F03: FLdPr var_B8
  loc_A95F06: from_stack_2 = Me.Item(from_stack_1)
  loc_A95F0B: FLdPr var_CC
  loc_A95F0E:  = Me.Value
  loc_A95F13: FLdRfVar var_DC
  loc_A95F16: LitVarStr var_10C, vbNullString
  loc_A95F1B: HardType
  loc_A95F1C: EqVarBool
  loc_A95F1E: FFreeAd var_B8 = ""
  loc_A95F25: FFree1Var var_DC = ""
  loc_A95F28: BranchF loc_A95F8F
  loc_A95F2B: ILdRf var_88
  loc_A95F2E: LitStr vbCrLf
  loc_A95F31: ConcatStr
  loc_A95F32: FStStrNoPop var_8C
  loc_A95F35: LitStr "La Partida "
  loc_A95F38: ConcatStr
  loc_A95F39: CVarStr var_EC
  loc_A95F3C: FLdRfVar var_DC
  loc_A95F3F: FLdRfVar var_CC
  loc_A95F42: LitVarStr var_C8, "CodiPart"
  loc_A95F47: PopAdLdVar
  loc_A95F48: FLdRfVar var_B8
  loc_A95F4B: FLdPr var_B0
  loc_A95F4E:  = Me.Fields
  loc_A95F53: FLdPr var_B8
  loc_A95F56: from_stack_2 = Me.Item(from_stack_1)
  loc_A95F5B: FLdPr var_CC
  loc_A95F5E:  = Me.Value
  loc_A95F63: FLdRfVar var_DC
  loc_A95F66: ConcatVar var_FC
  loc_A95F6A: LitVarStr var_10C, " NO TIENE una Cuenta Contable Asociada. Verifique..."
  loc_A95F6F: ConcatVar var_11C
  loc_A95F73: CStrVarTmp
  loc_A95F74: FStStr var_88
  loc_A95F77: FFree1Str var_8C
  loc_A95F7A: FFreeAd var_B8 = ""
  loc_A95F81: FFreeVar var_EC = "": var_DC = "": var_FC = ""
  loc_A95F8C: Branch loc_A96146
  loc_A95F8F: FLdRfVar var_CC
  loc_A95F92: LitVarStr var_C8, "ImpuCuco"
  loc_A95F97: PopAdLdVar
  loc_A95F98: FLdRfVar var_B8
  loc_A95F9B: FLdPr var_B0
  loc_A95F9E:  = Me.Fields
  loc_A95FA3: FLdPr var_B8
  loc_A95FA6: from_stack_2 = Me.Item(from_stack_1)
  loc_A95FAB: FLdZeroAd var_CC
  loc_A95FAE: CVarAd
  loc_A95FB2: ImpAdCallI2 IsNull()
  loc_A95FB7: FFree1Ad var_B8
  loc_A95FBA: FFree1Var var_DC = ""
  loc_A95FBD: BranchF loc_A96065
  loc_A95FC0: ILdRf var_88
  loc_A95FC3: LitStr vbCrLf
  loc_A95FC6: ConcatStr
  loc_A95FC7: FStStrNoPop var_8C
  loc_A95FCA: LitStr "La Cuenta Contable "
  loc_A95FCD: ConcatStr
  loc_A95FCE: CVarStr var_EC
  loc_A95FD1: FLdRfVar var_DC
  loc_A95FD4: FLdRfVar var_CC
  loc_A95FD7: LitVarStr var_C8, "CodiCuco"
  loc_A95FDC: PopAdLdVar
  loc_A95FDD: FLdRfVar var_B8
  loc_A95FE0: FLdPr var_B0
  loc_A95FE3:  = Me.Fields
  loc_A95FE8: FLdPr var_B8
  loc_A95FEB: from_stack_2 = Me.Item(from_stack_1)
  loc_A95FF0: FLdPr var_CC
  loc_A95FF3:  = Me.Value
  loc_A95FF8: FLdRfVar var_DC
  loc_A95FFB: ConcatVar var_FC
  loc_A95FFF: LitVarStr var_10C, " de la Partida "
  loc_A96004: ConcatVar var_11C
  loc_A96008: FLdRfVar var_144
  loc_A9600B: FLdRfVar var_134
  loc_A9600E: LitVarStr var_130, "CodiPart"
  loc_A96013: PopAdLdVar
  loc_A96014: FLdRfVar var_120
  loc_A96017: FLdPr var_B0
  loc_A9601A:  = Me.Fields
  loc_A9601F: FLdPr var_120
  loc_A96022: from_stack_2 = Me.Item(from_stack_1)
  loc_A96027: FLdPr var_134
  loc_A9602A:  = Me.Value
  loc_A9602F: FLdRfVar var_144
  loc_A96032: ConcatVar var_154
  loc_A96036: LitVarStr var_164, " NO EXISTE. Verifique..."
  loc_A9603B: ConcatVar var_174
  loc_A9603F: CStrVarTmp
  loc_A96040: FStStr var_88
  loc_A96043: FFree1Str var_8C
  loc_A96046: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_A96051: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_A96062: Branch loc_A96146
  loc_A96065: FLdRfVar var_DC
  loc_A96068: FLdRfVar var_CC
  loc_A9606B: LitVarStr var_C8, "ImpuCuco"
  loc_A96070: PopAdLdVar
  loc_A96071: FLdRfVar var_B8
  loc_A96074: FLdPr var_B0
  loc_A96077:  = Me.Fields
  loc_A9607C: FLdPr var_B8
  loc_A9607F: from_stack_2 = Me.Item(from_stack_1)
  loc_A96084: FLdPr var_CC
  loc_A96087:  = Me.Value
  loc_A9608C: FLdRfVar var_DC
  loc_A9608F: LitVarI2 var_10C, 0
  loc_A96094: HardType
  loc_A96095: EqVarBool
  loc_A96097: FFreeAd var_B8 = ""
  loc_A9609E: FFree1Var var_DC = ""
  loc_A960A1: BranchF loc_A96146
  loc_A960A4: ILdRf var_88
  loc_A960A7: LitStr vbCrLf
  loc_A960AA: ConcatStr
  loc_A960AB: FStStrNoPop var_8C
  loc_A960AE: LitStr "La Cuenta Contable "
  loc_A960B1: ConcatStr
  loc_A960B2: CVarStr var_EC
  loc_A960B5: FLdRfVar var_DC
  loc_A960B8: FLdRfVar var_CC
  loc_A960BB: LitVarStr var_C8, "CodiCuco"
  loc_A960C0: PopAdLdVar
  loc_A960C1: FLdRfVar var_B8
  loc_A960C4: FLdPr var_B0
  loc_A960C7:  = Me.Fields
  loc_A960CC: FLdPr var_B8
  loc_A960CF: from_stack_2 = Me.Item(from_stack_1)
  loc_A960D4: FLdPr var_CC
  loc_A960D7:  = Me.Value
  loc_A960DC: FLdRfVar var_DC
  loc_A960DF: ConcatVar var_FC
  loc_A960E3: LitVarStr var_10C, " de la Partida "
  loc_A960E8: ConcatVar var_11C
  loc_A960EC: FLdRfVar var_144
  loc_A960EF: FLdRfVar var_134
  loc_A960F2: LitVarStr var_130, "CodiPart"
  loc_A960F7: PopAdLdVar
  loc_A960F8: FLdRfVar var_120
  loc_A960FB: FLdPr var_B0
  loc_A960FE:  = Me.Fields
  loc_A96103: FLdPr var_120
  loc_A96106: from_stack_2 = Me.Item(from_stack_1)
  loc_A9610B: FLdPr var_134
  loc_A9610E:  = Me.Value
  loc_A96113: FLdRfVar var_144
  loc_A96116: ConcatVar var_154
  loc_A9611A: LitVarStr var_164, " NO es Imputable. Verifique..."
  loc_A9611F: ConcatVar var_174
  loc_A96123: CStrVarTmp
  loc_A96124: FStStr var_88
  loc_A96127: FFree1Str var_8C
  loc_A9612A: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_A96135: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_A96146: FLdPr var_B0
  loc_A96149: Me.MoveNext
  loc_A9614E: Branch loc_A95E45
  loc_A96151: LitNothing
  loc_A96153: FStAd var_B0 
  loc_A96157: ILdRf var_88
  loc_A9615A: LitStr vbNullString
  loc_A9615D: EqStr
  loc_A9615F: BranchF loc_A9621A
  loc_A96162: LitStr "INSERT INTO cajaauto (IdAuto,FechCaja,PeriInfo,CodiPart,CodiOrga,ExpeAuto,ModiCaau,CodiCuco,DebeCaau,HabeCaau)"
  loc_A96165: LitStr " SELECT IdAuto, FechAuto, autorizado.PeriInfo, autorizado.CodiPart, autorizado.CodiOrga, ExpeAuto,'0' AS ModiCaau, partida.CodiCuco, IF(AutoAuto<0,AutoAuto*-1,0) DebeCaau, IF(AutoAuto>0,AutoAuto,0) HabeCaau"
  loc_A96168: ConcatStr
  loc_A96169: FStStrNoPop var_8C
  loc_A9616C: LitStr " FROM autorizado"
  loc_A9616F: ConcatStr
  loc_A96170: FStStrNoPop var_90
  loc_A96173: LitStr " INNER JOIN partida ON partida.PeriInfo = autorizado.PeriInfo AND partida.CodiPart = autorizado.CodiPart"
  loc_A96176: ConcatStr
  loc_A96177: FStStrNoPop CierraCajaAuto
  loc_A9617A: LitStr " INNER JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = partida.PeriInfo AND infogov.cuentacontable.CodiCuco = partida.CodiCuco"
  loc_A9617D: ConcatStr
  loc_A9617E: FStStrNoPop var_98
  loc_A96181: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = autorizado.PeriInfo"
  loc_A96184: ConcatStr
  loc_A96185: FStStrNoPop var_9C
  loc_A96188: LitStr " WHERE autorizado.PeriInfo = Year(@desde)"
  loc_A9618B: ConcatStr
  loc_A9618C: FStStrNoPop var_A0
  loc_A9618F: LitStr " AND FechAuto BETWEEN @desde AND @hasta"
  loc_A96192: ConcatStr
  loc_A96193: FStStrNoPop var_A4
  loc_A96196: LitStr " AND Left(autorizado.CodiPart,1) <> PaexPaco"
  loc_A96199: ConcatStr
  loc_A9619A: FStStrNoPop var_A8
  loc_A9619D: LitStr " AND autorizado.AutoAuto <> 0"
  loc_A961A0: ConcatStr
  loc_A961A1: FStStrNoPop var_178
  loc_A961A4: Call EjecutarRsCls(from_stack_1v)
  loc_A961A9: FFreeStr var_8C = "": var_90 = "": CierraCajaAuto = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A961BE: LitStr "INSERT INTO cajaauto (IdAuto,FechCaja,PeriInfo,CodiPart,CodiOrga,ExpeAuto,ModiCaau,CodiCuco,DebeCaau,HabeCaau)"
  loc_A961C1: LitStr " SELECT IdAuto, FechAuto, autorizado.PeriInfo, autorizado.CodiPart, autorizado.CodiOrga, ExpeAuto,'1' AS ModiCaau, partida.CodiCuco, DismAuto DebeCaau, AumeAuto HabeCaau"
  loc_A961C4: ConcatStr
  loc_A961C5: FStStrNoPop var_8C
  loc_A961C8: LitStr " FROM autorizado"
  loc_A961CB: ConcatStr
  loc_A961CC: FStStrNoPop var_90
  loc_A961CF: LitStr " INNER JOIN partida ON partida.PeriInfo = autorizado.PeriInfo AND partida.CodiPart = autorizado.CodiPart"
  loc_A961D2: ConcatStr
  loc_A961D3: FStStrNoPop CierraCajaAuto
  loc_A961D6: LitStr " INNER JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = partida.PeriInfo AND infogov.cuentacontable.CodiCuco = partida.CodiCuco"
  loc_A961D9: ConcatStr
  loc_A961DA: FStStrNoPop var_98
  loc_A961DD: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = autorizado.PeriInfo"
  loc_A961E0: ConcatStr
  loc_A961E1: FStStrNoPop var_9C
  loc_A961E4: LitStr " WHERE autorizado.PeriInfo = Year(@desde)"
  loc_A961E7: ConcatStr
  loc_A961E8: FStStrNoPop var_A0
  loc_A961EB: LitStr " AND FechAuto BETWEEN @desde AND @hasta"
  loc_A961EE: ConcatStr
  loc_A961EF: FStStrNoPop var_A4
  loc_A961F2: LitStr " AND Left(autorizado.CodiPart,1) <> PaexPaco"
  loc_A961F5: ConcatStr
  loc_A961F6: FStStrNoPop var_A8
  loc_A961F9: LitStr " AND (autorizado.AumeAuto <> 0 OR autorizado.DismAuto <> 0)"
  loc_A961FC: ConcatStr
  loc_A961FD: FStStrNoPop var_178
  loc_A96200: Call EjecutarRsCls(from_stack_1v)
  loc_A96205: FFreeStr var_8C = "": var_90 = "": CierraCajaAuto = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A9621A: ExitProcCbHresult
End Function

Public Function SeteaFecha(DesdeFech, HastaFech) '9AF698
  'Data Table: 46D5B0
  loc_9AF60C: ILdRf DesdeFech
  loc_9AF60F: FStStrCopy var_8C
  loc_9AF612: ILdRf HastaFech
  loc_9AF615: FStStrCopy var_90
  loc_9AF618: ZeroRetVal
  loc_9AF61A: LitStr "SET @desde="
  loc_9AF61D: LitI4 1
  loc_9AF622: LitI4 1
  loc_9AF627: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_9AF62C: FStVarCopyObj var_C0
  loc_9AF62F: FLdRfVar var_C0
  loc_9AF632: FLdRfVar var_8C
  loc_9AF635: CVarRef
  loc_9AF63A: ImpAdCallI2 Format$(, )
  loc_9AF63F: FStStrNoPop var_C4
  loc_9AF642: ConcatStr
  loc_9AF643: FStStrNoPop var_C8
  loc_9AF646: LitStr ", @hasta="
  loc_9AF649: ConcatStr
  loc_9AF64A: FStStrNoPop var_FC
  loc_9AF64D: LitI4 1
  loc_9AF652: LitI4 1
  loc_9AF657: LitVarStr var_E8, "'yyyy-mm-dd'"
  loc_9AF65C: FStVarCopyObj var_F8
  loc_9AF65F: FLdRfVar var_F8
  loc_9AF662: FLdRfVar var_90
  loc_9AF665: CVarRef
  loc_9AF66A: ImpAdCallI2 Format$(, )
  loc_9AF66F: FStStrNoPop var_100
  loc_9AF672: ConcatStr
  loc_9AF673: FStStrNoPop var_104
  loc_9AF676: Call EjecutarRsCls(from_stack_1v)
  loc_9AF67B: FFreeStr var_C4 = "": var_C8 = "": var_FC = "": var_100 = ""
  loc_9AF688: FFreeVar var_C0 = ""
  loc_9AF68F: ExitProcCbHresult
End Function

Public Function CierraCajaIngre() 'A8F2C4
  'Data Table: 46D5B0
  loc_A8EE80: ZeroRetVal
  loc_A8EE82: LitI2_Byte &HFF
  loc_A8EE84: BranchF loc_A8EF62
  loc_A8EE87: LitStr "SELECT *"
  loc_A8EE8A: LitStr " FROM recaudacion.ingrrent"
  loc_A8EE8D: ConcatStr
  loc_A8EE8E: FStStrNoPop var_8C
  loc_A8EE91: LitStr " WHERE recaudacion.ingrrent.FechInre BETWEEN @desde AND @hasta"
  loc_A8EE94: ConcatStr
  loc_A8EE95: FStStrNoPop var_90
  loc_A8EE98: LitStr " AND ActuInre = 'No'"
  loc_A8EE9B: ConcatStr
  loc_A8EE9C: FStStrNoPop CierraCajaIngre
  loc_A8EE9F: Call EjecutarRsCls(from_stack_1v)
  loc_A8EEA4: FFreeStr var_8C = "": var_90 = ""
  loc_A8EEAD: FLdRfVar var_98
  loc_A8EEB0: FLdPr Me
  loc_A8EEB3: MemLdPr global_56
  loc_A8EEB6:  = Me.RecordCount
  loc_A8EEBB: ILdRf var_98
  loc_A8EEBE: LitI4 0
  loc_A8EEC3: GtI4
  loc_A8EEC4: BranchF loc_A8EF62
  loc_A8EEC7: FLdRfVar var_C0
  loc_A8EECA: FLdRfVar var_B0
  loc_A8EECD: LitVarStr var_AC, "ActuInre"
  loc_A8EED2: PopAdLdVar
  loc_A8EED3: FLdRfVar var_9C
  loc_A8EED6: FLdPr Me
  loc_A8EED9: MemLdPr global_56
  loc_A8EEDC:  = Me.Fields
  loc_A8EEE1: FLdPr var_9C
  loc_A8EEE4: from_stack_2 = Me.Item(from_stack_1)
  loc_A8EEE9: FLdPr var_B0
  loc_A8EEEC:  = Me.Value
  loc_A8EEF1: FLdRfVar var_C0
  loc_A8EEF4: LitVarStr var_D0, "No"
  loc_A8EEF9: HardType
  loc_A8EEFA: EqVarBool
  loc_A8EEFC: FFreeAd var_9C = ""
  loc_A8EF03: FFree1Var var_C0 = ""
  loc_A8EF06: BranchF loc_A8EF62
  loc_A8EF09: LitVarStr var_D0, "Los Ingresos desde Rentas NO han sido actualizados el día: "
  loc_A8EF0E: FLdRfVar var_C0
  loc_A8EF11: FLdRfVar var_B0
  loc_A8EF14: LitVarStr var_AC, "FechInre"
  loc_A8EF19: PopAdLdVar
  loc_A8EF1A: FLdRfVar var_9C
  loc_A8EF1D: FLdPr Me
  loc_A8EF20: MemLdPr global_56
  loc_A8EF23:  = Me.Fields
  loc_A8EF28: FLdPr var_9C
  loc_A8EF2B: from_stack_2 = Me.Item(from_stack_1)
  loc_A8EF30: FLdPr var_B0
  loc_A8EF33:  = Me.Value
  loc_A8EF38: FLdRfVar var_C0
  loc_A8EF3B: ConcatVar var_E0
  loc_A8EF3F: LitVarStr var_F0, ". Verifique..."
  loc_A8EF44: ConcatVar var_100
  loc_A8EF48: CStrVarTmp
  loc_A8EF49: FStStr var_88
  loc_A8EF4C: FFreeAd var_9C = ""
  loc_A8EF53: FFreeVar var_C0 = "": var_E0 = ""
  loc_A8EF5C: ExitProcCbHresult
  loc_A8EF62: LitStr "DELETE FROM cajaingre WHERE PeriInfo = Year(@desde) AND FechCaja >= @desde;"
  loc_A8EF65: Call EjecutarRsCls(from_stack_1v)
  loc_A8EF6A: LitStr "SELECT FechIngr, i.CodiConc, i.CodiCuco, cc.ImpuCuco"
  loc_A8EF6D: LitStr " FROM ingreso i"
  loc_A8EF70: ConcatStr
  loc_A8EF71: FStStrNoPop var_8C
  loc_A8EF74: LitStr " LEFT JOIN infogov.cuentacontable cc ON cc.PeriInfo = i.PeriInfo AND cc.CodiCuco = i.CodiCuco"
  loc_A8EF77: ConcatStr
  loc_A8EF78: FStStrNoPop var_90
  loc_A8EF7B: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_A8EF7E: ConcatStr
  loc_A8EF7F: FStStrNoPop CierraCajaIngre
  loc_A8EF82: LitStr " AND FechIngr BETWEEN @desde AND @hasta"
  loc_A8EF85: ConcatStr
  loc_A8EF86: FStStrNoPop var_104
  loc_A8EF89: LitStr " AND (i.CodiCuco = '' OR ImpuCuco IS NULL OR ImpuCuco = 0);"
  loc_A8EF8C: ConcatStr
  loc_A8EF8D: FStStrNoPop var_108
  loc_A8EF90: Call EjecutarRsCls(from_stack_1v)
  loc_A8EF95: FFreeStr var_8C = "": var_90 = "": CierraCajaIngre = "": var_104 = ""
  loc_A8EFA2: FLdRfVar var_98
  loc_A8EFA5: FLdPr Me
  loc_A8EFA8: MemLdPr global_56
  loc_A8EFAB:  = Me.RecordCount
  loc_A8EFB0: ILdRf var_98
  loc_A8EFB3: LitI4 0
  loc_A8EFB8: GtI4
  loc_A8EFB9: BranchF loc_A8F28C
  loc_A8EFBC: FLdPr Me
  loc_A8EFBF: MemLdStr global_56
  loc_A8EFC2: FStAd var_10C 
  loc_A8EFC6: FLdPr var_10C
  loc_A8EFC9: Me.MoveFirst
  loc_A8EFCE: FLdRfVar var_10E
  loc_A8EFD1: FLdPr var_10C
  loc_A8EFD4:  = Me.EOF
  loc_A8EFD9: FLdI2 var_10E
  loc_A8EFDC: NotI4
  loc_A8EFDD: BranchF loc_A8F286
  loc_A8EFE0: FLdRfVar var_C0
  loc_A8EFE3: FLdRfVar var_B0
  loc_A8EFE6: LitVarStr var_AC, "CodiCuco"
  loc_A8EFEB: PopAdLdVar
  loc_A8EFEC: FLdRfVar var_9C
  loc_A8EFEF: FLdPr var_10C
  loc_A8EFF2:  = Me.Fields
  loc_A8EFF7: FLdPr var_9C
  loc_A8EFFA: from_stack_2 = Me.Item(from_stack_1)
  loc_A8EFFF: FLdPr var_B0
  loc_A8F002:  = Me.Value
  loc_A8F007: FLdRfVar var_C0
  loc_A8F00A: LitVarStr var_D0, vbNullString
  loc_A8F00F: HardType
  loc_A8F010: EqVarBool
  loc_A8F012: FFreeAd var_9C = ""
  loc_A8F019: FFree1Var var_C0 = ""
  loc_A8F01C: BranchF loc_A8F0C4
  loc_A8F01F: ILdRf var_88
  loc_A8F022: LitStr vbCrLf
  loc_A8F025: ConcatStr
  loc_A8F026: FStStrNoPop var_8C
  loc_A8F029: LitStr "El Ingreso del día: "
  loc_A8F02C: ConcatStr
  loc_A8F02D: CVarStr var_E0
  loc_A8F030: FLdRfVar var_C0
  loc_A8F033: FLdRfVar var_B0
  loc_A8F036: LitVarStr var_AC, "FechIngr"
  loc_A8F03B: PopAdLdVar
  loc_A8F03C: FLdRfVar var_9C
  loc_A8F03F: FLdPr var_10C
  loc_A8F042:  = Me.Fields
  loc_A8F047: FLdPr var_9C
  loc_A8F04A: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F04F: FLdPr var_B0
  loc_A8F052:  = Me.Value
  loc_A8F057: FLdRfVar var_C0
  loc_A8F05A: ConcatVar var_100
  loc_A8F05E: LitVarStr var_D0, " - Concepto: "
  loc_A8F063: ConcatVar var_120
  loc_A8F067: FLdRfVar var_138
  loc_A8F06A: FLdRfVar var_128
  loc_A8F06D: LitVarStr var_F0, "CodiConc"
  loc_A8F072: PopAdLdVar
  loc_A8F073: FLdRfVar var_124
  loc_A8F076: FLdPr var_10C
  loc_A8F079:  = Me.Fields
  loc_A8F07E: FLdPr var_124
  loc_A8F081: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F086: FLdPr var_128
  loc_A8F089:  = Me.Value
  loc_A8F08E: FLdRfVar var_138
  loc_A8F091: ConcatVar var_148
  loc_A8F095: LitVarStr var_158, " NO TIENE una Cuenta Contable Asociada. Verifique..."
  loc_A8F09A: ConcatVar var_168
  loc_A8F09E: CStrVarTmp
  loc_A8F09F: FStStr var_88
  loc_A8F0A2: FFree1Str var_8C
  loc_A8F0A5: FFreeAd var_9C = "": var_B0 = "": var_124 = ""
  loc_A8F0B0: FFreeVar var_E0 = "": var_C0 = "": var_100 = "": var_120 = "": var_138 = "": var_148 = ""
  loc_A8F0C1: Branch loc_A8F27B
  loc_A8F0C4: FLdRfVar var_B0
  loc_A8F0C7: LitVarStr var_AC, "ImpuCuco"
  loc_A8F0CC: PopAdLdVar
  loc_A8F0CD: FLdRfVar var_9C
  loc_A8F0D0: FLdPr var_10C
  loc_A8F0D3:  = Me.Fields
  loc_A8F0D8: FLdPr var_9C
  loc_A8F0DB: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F0E0: FLdZeroAd var_B0
  loc_A8F0E3: CVarAd
  loc_A8F0E7: ImpAdCallI2 IsNull()
  loc_A8F0EC: FFree1Ad var_9C
  loc_A8F0EF: FFree1Var var_C0 = ""
  loc_A8F0F2: BranchF loc_A8F19A
  loc_A8F0F5: ILdRf var_88
  loc_A8F0F8: LitStr vbCrLf
  loc_A8F0FB: ConcatStr
  loc_A8F0FC: FStStrNoPop var_8C
  loc_A8F0FF: LitStr "La Cuenta Contable "
  loc_A8F102: ConcatStr
  loc_A8F103: CVarStr var_E0
  loc_A8F106: FLdRfVar var_C0
  loc_A8F109: FLdRfVar var_B0
  loc_A8F10C: LitVarStr var_AC, "CodiCuco"
  loc_A8F111: PopAdLdVar
  loc_A8F112: FLdRfVar var_9C
  loc_A8F115: FLdPr var_10C
  loc_A8F118:  = Me.Fields
  loc_A8F11D: FLdPr var_9C
  loc_A8F120: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F125: FLdPr var_B0
  loc_A8F128:  = Me.Value
  loc_A8F12D: FLdRfVar var_C0
  loc_A8F130: ConcatVar var_100
  loc_A8F134: LitVarStr var_D0, " del día "
  loc_A8F139: ConcatVar var_120
  loc_A8F13D: FLdRfVar var_138
  loc_A8F140: FLdRfVar var_128
  loc_A8F143: LitVarStr var_F0, "FechIngr"
  loc_A8F148: PopAdLdVar
  loc_A8F149: FLdRfVar var_124
  loc_A8F14C: FLdPr var_10C
  loc_A8F14F:  = Me.Fields
  loc_A8F154: FLdPr var_124
  loc_A8F157: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F15C: FLdPr var_128
  loc_A8F15F:  = Me.Value
  loc_A8F164: FLdRfVar var_138
  loc_A8F167: ConcatVar var_148
  loc_A8F16B: LitVarStr var_158, " NO EXISTE. Verifique..."
  loc_A8F170: ConcatVar var_168
  loc_A8F174: CStrVarTmp
  loc_A8F175: FStStr var_88
  loc_A8F178: FFree1Str var_8C
  loc_A8F17B: FFreeAd var_9C = "": var_B0 = "": var_124 = ""
  loc_A8F186: FFreeVar var_E0 = "": var_C0 = "": var_100 = "": var_120 = "": var_138 = "": var_148 = ""
  loc_A8F197: Branch loc_A8F27B
  loc_A8F19A: FLdRfVar var_C0
  loc_A8F19D: FLdRfVar var_B0
  loc_A8F1A0: LitVarStr var_AC, "ImpuCuco"
  loc_A8F1A5: PopAdLdVar
  loc_A8F1A6: FLdRfVar var_9C
  loc_A8F1A9: FLdPr var_10C
  loc_A8F1AC:  = Me.Fields
  loc_A8F1B1: FLdPr var_9C
  loc_A8F1B4: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F1B9: FLdPr var_B0
  loc_A8F1BC:  = Me.Value
  loc_A8F1C1: FLdRfVar var_C0
  loc_A8F1C4: LitVarI2 var_D0, 0
  loc_A8F1C9: HardType
  loc_A8F1CA: EqVarBool
  loc_A8F1CC: FFreeAd var_9C = ""
  loc_A8F1D3: FFree1Var var_C0 = ""
  loc_A8F1D6: BranchF loc_A8F27B
  loc_A8F1D9: ILdRf var_88
  loc_A8F1DC: LitStr vbCrLf
  loc_A8F1DF: ConcatStr
  loc_A8F1E0: FStStrNoPop var_8C
  loc_A8F1E3: LitStr "La Cuenta Contable "
  loc_A8F1E6: ConcatStr
  loc_A8F1E7: CVarStr var_E0
  loc_A8F1EA: FLdRfVar var_C0
  loc_A8F1ED: FLdRfVar var_B0
  loc_A8F1F0: LitVarStr var_AC, "CodiCuco"
  loc_A8F1F5: PopAdLdVar
  loc_A8F1F6: FLdRfVar var_9C
  loc_A8F1F9: FLdPr var_10C
  loc_A8F1FC:  = Me.Fields
  loc_A8F201: FLdPr var_9C
  loc_A8F204: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F209: FLdPr var_B0
  loc_A8F20C:  = Me.Value
  loc_A8F211: FLdRfVar var_C0
  loc_A8F214: ConcatVar var_100
  loc_A8F218: LitVarStr var_D0, " del díao "
  loc_A8F21D: ConcatVar var_120
  loc_A8F221: FLdRfVar var_138
  loc_A8F224: FLdRfVar var_128
  loc_A8F227: LitVarStr var_F0, "FechIngr"
  loc_A8F22C: PopAdLdVar
  loc_A8F22D: FLdRfVar var_124
  loc_A8F230: FLdPr var_10C
  loc_A8F233:  = Me.Fields
  loc_A8F238: FLdPr var_124
  loc_A8F23B: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F240: FLdPr var_128
  loc_A8F243:  = Me.Value
  loc_A8F248: FLdRfVar var_138
  loc_A8F24B: ConcatVar var_148
  loc_A8F24F: LitVarStr var_158, " NO es Imputable. Verifique..."
  loc_A8F254: ConcatVar var_168
  loc_A8F258: CStrVarTmp
  loc_A8F259: FStStr var_88
  loc_A8F25C: FFree1Str var_8C
  loc_A8F25F: FFreeAd var_9C = "": var_B0 = "": var_124 = ""
  loc_A8F26A: FFreeVar var_E0 = "": var_C0 = "": var_100 = "": var_120 = "": var_138 = "": var_148 = ""
  loc_A8F27B: FLdPr var_10C
  loc_A8F27E: Me.MoveNext
  loc_A8F283: Branch loc_A8EFCE
  loc_A8F286: LitNothing
  loc_A8F288: FStAd var_10C 
  loc_A8F28C: ILdRf var_88
  loc_A8F28F: LitStr vbNullString
  loc_A8F292: EqStr
  loc_A8F294: BranchF loc_A8F2BD
  loc_A8F297: LitStr "INSERT INTO cajaingre (IdIngr,FechCaja,PeriInfo,CodiCuco,DebeCain,HabeCain,DetaCain,AutoIngr,LoteIngr)"
  loc_A8F29A: LitStr " SELECT IdIngr, FechIngr, PeriInfo, CodiCuco, IF(ImpoIngr<0,ImpoIngr*-1,0), IF(ImpoIngr>0,ImpoIngr,0), IF(IndeIngr=1,DetaIngr,''), AutoIngr, LoteIngr"
  loc_A8F29D: ConcatStr
  loc_A8F29E: FStStrNoPop var_8C
  loc_A8F2A1: LitStr " FROM ingreso"
  loc_A8F2A4: ConcatStr
  loc_A8F2A5: FStStrNoPop var_90
  loc_A8F2A8: LitStr " WHERE PeriInfo = Year(@desde) AND FechIngr BETWEEN @desde AND @hasta;"
  loc_A8F2AB: ConcatStr
  loc_A8F2AC: FStStrNoPop CierraCajaIngre
  loc_A8F2AF: Call EjecutarRsCls(from_stack_1v)
  loc_A8F2B4: FFreeStr var_8C = "": var_90 = ""
  loc_A8F2BD: ExitProcCbHresult
End Function

Public Function CierraCajaMapa() 'A8B0D8
  'Data Table: 46D5B0
  loc_A8ACBC: ZeroRetVal
  loc_A8ACBE: LitStr "DELETE FROM cajamapa WHERE PeriInfo = Year(@desde) AND FechCaja >= @desde;"
  loc_A8ACC1: Call EjecutarRsCls(from_stack_1v)
  loc_A8ACC6: LitStr "SELECT i.CodiPart, p.CodiCuco, cc.ImpuCuco"
  loc_A8ACC9: LitStr " FROM imputacion i"
  loc_A8ACCC: ConcatStr
  loc_A8ACCD: FStStrNoPop var_8C
  loc_A8ACD0: LitStr " LEFT JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_A8ACD3: ConcatStr
  loc_A8ACD4: FStStrNoPop var_90
  loc_A8ACD7: LitStr " LEFT JOIN infogov.cuentacontable cc ON cc.PeriInfo = p.PeriInfo AND cc.CodiCuco = p.CodiCuco"
  loc_A8ACDA: ConcatStr
  loc_A8ACDB: FStStrNoPop CierraCajaMapa
  loc_A8ACDE: LitStr " LEFT JOIN paraconta pp ON pp.PeriInfo = i.PeriInfo"
  loc_A8ACE1: ConcatStr
  loc_A8ACE2: FStStrNoPop var_98
  loc_A8ACE5: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_A8ACE8: ConcatStr
  loc_A8ACE9: FStStrNoPop var_9C
  loc_A8ACEC: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_A8ACEF: ConcatStr
  loc_A8ACF0: FStStrNoPop var_A0
  loc_A8ACF3: LitStr " AND MapaImpu != 0"
  loc_A8ACF6: ConcatStr
  loc_A8ACF7: FStStrNoPop var_A4
  loc_A8ACFA: LitStr " AND AjusImpu = 0"
  loc_A8ACFD: ConcatStr
  loc_A8ACFE: FStStrNoPop var_A8
  loc_A8AD01: LitStr " AND Left(i.CodiPart,1) != PaexPaco"
  loc_A8AD04: ConcatStr
  loc_A8AD05: FStStrNoPop var_AC
  loc_A8AD08: LitStr " AND (p.CodiCuco IS NULL OR p.CodiCuco = '' OR ImpuCuco IS NULL OR ImpuCuco = 0)"
  loc_A8AD0B: ConcatStr
  loc_A8AD0C: FStStrNoPop var_B0
  loc_A8AD0F: Call EjecutarRsCls(from_stack_1v)
  loc_A8AD14: FFreeStr var_8C = "": var_90 = "": CierraCajaMapa = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A8AD2B: FLdRfVar var_B4
  loc_A8AD2E: FLdPr Me
  loc_A8AD31: MemLdPr global_56
  loc_A8AD34:  = Me.RecordCount
  loc_A8AD39: ILdRf var_B4
  loc_A8AD3C: LitI4 0
  loc_A8AD41: GtI4
  loc_A8AD42: BranchF loc_A8B069
  loc_A8AD45: FLdPr Me
  loc_A8AD48: MemLdStr global_56
  loc_A8AD4B: FStAd var_B8 
  loc_A8AD4F: FLdPr var_B8
  loc_A8AD52: Me.MoveFirst
  loc_A8AD57: FLdRfVar var_BA
  loc_A8AD5A: FLdPr var_B8
  loc_A8AD5D:  = Me.EOF
  loc_A8AD62: FLdI2 var_BA
  loc_A8AD65: NotI4
  loc_A8AD66: BranchF loc_A8B063
  loc_A8AD69: FLdRfVar var_D4
  loc_A8AD6C: LitVarStr var_D0, "CodiCuco"
  loc_A8AD71: PopAdLdVar
  loc_A8AD72: FLdRfVar var_C0
  loc_A8AD75: FLdPr var_B8
  loc_A8AD78:  = Me.Fields
  loc_A8AD7D: FLdPr var_C0
  loc_A8AD80: from_stack_2 = Me.Item(from_stack_1)
  loc_A8AD85: FLdZeroAd var_D4
  loc_A8AD88: CVarAd
  loc_A8AD8C: ImpAdCallI2 IsNull()
  loc_A8AD91: FFree1Ad var_C0
  loc_A8AD94: FFree1Var var_E4 = ""
  loc_A8AD97: BranchF loc_A8ADFE
  loc_A8AD9A: ILdRf var_88
  loc_A8AD9D: LitStr vbCrLf
  loc_A8ADA0: ConcatStr
  loc_A8ADA1: FStStrNoPop var_8C
  loc_A8ADA4: LitStr "La Partida "
  loc_A8ADA7: ConcatStr
  loc_A8ADA8: CVarStr var_F4
  loc_A8ADAB: FLdRfVar var_E4
  loc_A8ADAE: FLdRfVar var_D4
  loc_A8ADB1: LitVarStr var_D0, "CodiPart"
  loc_A8ADB6: PopAdLdVar
  loc_A8ADB7: FLdRfVar var_C0
  loc_A8ADBA: FLdPr var_B8
  loc_A8ADBD:  = Me.Fields
  loc_A8ADC2: FLdPr var_C0
  loc_A8ADC5: from_stack_2 = Me.Item(from_stack_1)
  loc_A8ADCA: FLdPr var_D4
  loc_A8ADCD:  = Me.Value
  loc_A8ADD2: FLdRfVar var_E4
  loc_A8ADD5: ConcatVar var_104
  loc_A8ADD9: LitVarStr var_114, " correspondiente a la imputacion NO EXISTE. Verifique..."
  loc_A8ADDE: ConcatVar var_124
  loc_A8ADE2: CStrVarTmp
  loc_A8ADE3: FStStr var_88
  loc_A8ADE6: FFree1Str var_8C
  loc_A8ADE9: FFreeAd var_C0 = ""
  loc_A8ADF0: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_A8ADFB: Branch loc_A8B058
  loc_A8ADFE: FLdRfVar var_E4
  loc_A8AE01: FLdRfVar var_D4
  loc_A8AE04: LitVarStr var_D0, "CodiCuco"
  loc_A8AE09: PopAdLdVar
  loc_A8AE0A: FLdRfVar var_C0
  loc_A8AE0D: FLdPr var_B8
  loc_A8AE10:  = Me.Fields
  loc_A8AE15: FLdPr var_C0
  loc_A8AE18: from_stack_2 = Me.Item(from_stack_1)
  loc_A8AE1D: FLdPr var_D4
  loc_A8AE20:  = Me.Value
  loc_A8AE25: FLdRfVar var_E4
  loc_A8AE28: LitVarStr var_114, vbNullString
  loc_A8AE2D: HardType
  loc_A8AE2E: EqVarBool
  loc_A8AE30: FFreeAd var_C0 = ""
  loc_A8AE37: FFree1Var var_E4 = ""
  loc_A8AE3A: BranchF loc_A8AEA1
  loc_A8AE3D: ILdRf var_88
  loc_A8AE40: LitStr vbCrLf
  loc_A8AE43: ConcatStr
  loc_A8AE44: FStStrNoPop var_8C
  loc_A8AE47: LitStr "La Partida "
  loc_A8AE4A: ConcatStr
  loc_A8AE4B: CVarStr var_F4
  loc_A8AE4E: FLdRfVar var_E4
  loc_A8AE51: FLdRfVar var_D4
  loc_A8AE54: LitVarStr var_D0, "CodiPart"
  loc_A8AE59: PopAdLdVar
  loc_A8AE5A: FLdRfVar var_C0
  loc_A8AE5D: FLdPr var_B8
  loc_A8AE60:  = Me.Fields
  loc_A8AE65: FLdPr var_C0
  loc_A8AE68: from_stack_2 = Me.Item(from_stack_1)
  loc_A8AE6D: FLdPr var_D4
  loc_A8AE70:  = Me.Value
  loc_A8AE75: FLdRfVar var_E4
  loc_A8AE78: ConcatVar var_104
  loc_A8AE7C: LitVarStr var_114, " NO TIENE una Cuenta Contable Asociada. Verifique..."
  loc_A8AE81: ConcatVar var_124
  loc_A8AE85: CStrVarTmp
  loc_A8AE86: FStStr var_88
  loc_A8AE89: FFree1Str var_8C
  loc_A8AE8C: FFreeAd var_C0 = ""
  loc_A8AE93: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_A8AE9E: Branch loc_A8B058
  loc_A8AEA1: FLdRfVar var_D4
  loc_A8AEA4: LitVarStr var_D0, "ImpuCuco"
  loc_A8AEA9: PopAdLdVar
  loc_A8AEAA: FLdRfVar var_C0
  loc_A8AEAD: FLdPr var_B8
  loc_A8AEB0:  = Me.Fields
  loc_A8AEB5: FLdPr var_C0
  loc_A8AEB8: from_stack_2 = Me.Item(from_stack_1)
  loc_A8AEBD: FLdZeroAd var_D4
  loc_A8AEC0: CVarAd
  loc_A8AEC4: ImpAdCallI2 IsNull()
  loc_A8AEC9: FFree1Ad var_C0
  loc_A8AECC: FFree1Var var_E4 = ""
  loc_A8AECF: BranchF loc_A8AF77
  loc_A8AED2: ILdRf var_88
  loc_A8AED5: LitStr vbCrLf
  loc_A8AED8: ConcatStr
  loc_A8AED9: FStStrNoPop var_8C
  loc_A8AEDC: LitStr "La Cuenta Contable "
  loc_A8AEDF: ConcatStr
  loc_A8AEE0: CVarStr var_F4
  loc_A8AEE3: FLdRfVar var_E4
  loc_A8AEE6: FLdRfVar var_D4
  loc_A8AEE9: LitVarStr var_D0, "CodiCuco"
  loc_A8AEEE: PopAdLdVar
  loc_A8AEEF: FLdRfVar var_C0
  loc_A8AEF2: FLdPr var_B8
  loc_A8AEF5:  = Me.Fields
  loc_A8AEFA: FLdPr var_C0
  loc_A8AEFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A8AF02: FLdPr var_D4
  loc_A8AF05:  = Me.Value
  loc_A8AF0A: FLdRfVar var_E4
  loc_A8AF0D: ConcatVar var_104
  loc_A8AF11: LitVarStr var_114, " de la Partida "
  loc_A8AF16: ConcatVar var_124
  loc_A8AF1A: FLdRfVar var_14C
  loc_A8AF1D: FLdRfVar var_13C
  loc_A8AF20: LitVarStr var_138, "CodiPart"
  loc_A8AF25: PopAdLdVar
  loc_A8AF26: FLdRfVar var_128
  loc_A8AF29: FLdPr var_B8
  loc_A8AF2C:  = Me.Fields
  loc_A8AF31: FLdPr var_128
  loc_A8AF34: from_stack_2 = Me.Item(from_stack_1)
  loc_A8AF39: FLdPr var_13C
  loc_A8AF3C:  = Me.Value
  loc_A8AF41: FLdRfVar var_14C
  loc_A8AF44: ConcatVar var_15C
  loc_A8AF48: LitVarStr var_16C, " NO EXISTE. Verifique..."
  loc_A8AF4D: ConcatVar var_17C
  loc_A8AF51: CStrVarTmp
  loc_A8AF52: FStStr var_88
  loc_A8AF55: FFree1Str var_8C
  loc_A8AF58: FFreeAd var_C0 = "": var_D4 = "": var_128 = ""
  loc_A8AF63: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_14C = "": var_15C = ""
  loc_A8AF74: Branch loc_A8B058
  loc_A8AF77: FLdRfVar var_E4
  loc_A8AF7A: FLdRfVar var_D4
  loc_A8AF7D: LitVarStr var_D0, "ImpuCuco"
  loc_A8AF82: PopAdLdVar
  loc_A8AF83: FLdRfVar var_C0
  loc_A8AF86: FLdPr var_B8
  loc_A8AF89:  = Me.Fields
  loc_A8AF8E: FLdPr var_C0
  loc_A8AF91: from_stack_2 = Me.Item(from_stack_1)
  loc_A8AF96: FLdPr var_D4
  loc_A8AF99:  = Me.Value
  loc_A8AF9E: FLdRfVar var_E4
  loc_A8AFA1: LitVarI2 var_114, 0
  loc_A8AFA6: HardType
  loc_A8AFA7: EqVarBool
  loc_A8AFA9: FFreeAd var_C0 = ""
  loc_A8AFB0: FFree1Var var_E4 = ""
  loc_A8AFB3: BranchF loc_A8B058
  loc_A8AFB6: ILdRf var_88
  loc_A8AFB9: LitStr vbCrLf
  loc_A8AFBC: ConcatStr
  loc_A8AFBD: FStStrNoPop var_8C
  loc_A8AFC0: LitStr "La Cuenta Contable "
  loc_A8AFC3: ConcatStr
  loc_A8AFC4: CVarStr var_F4
  loc_A8AFC7: FLdRfVar var_E4
  loc_A8AFCA: FLdRfVar var_D4
  loc_A8AFCD: LitVarStr var_D0, "CodiCuco"
  loc_A8AFD2: PopAdLdVar
  loc_A8AFD3: FLdRfVar var_C0
  loc_A8AFD6: FLdPr var_B8
  loc_A8AFD9:  = Me.Fields
  loc_A8AFDE: FLdPr var_C0
  loc_A8AFE1: from_stack_2 = Me.Item(from_stack_1)
  loc_A8AFE6: FLdPr var_D4
  loc_A8AFE9:  = Me.Value
  loc_A8AFEE: FLdRfVar var_E4
  loc_A8AFF1: ConcatVar var_104
  loc_A8AFF5: LitVarStr var_114, " de la Partida "
  loc_A8AFFA: ConcatVar var_124
  loc_A8AFFE: FLdRfVar var_14C
  loc_A8B001: FLdRfVar var_13C
  loc_A8B004: LitVarStr var_138, "CodiPart"
  loc_A8B009: PopAdLdVar
  loc_A8B00A: FLdRfVar var_128
  loc_A8B00D: FLdPr var_B8
  loc_A8B010:  = Me.Fields
  loc_A8B015: FLdPr var_128
  loc_A8B018: from_stack_2 = Me.Item(from_stack_1)
  loc_A8B01D: FLdPr var_13C
  loc_A8B020:  = Me.Value
  loc_A8B025: FLdRfVar var_14C
  loc_A8B028: ConcatVar var_15C
  loc_A8B02C: LitVarStr var_16C, " NO es Imputable. Verifique..."
  loc_A8B031: ConcatVar var_17C
  loc_A8B035: CStrVarTmp
  loc_A8B036: FStStr var_88
  loc_A8B039: FFree1Str var_8C
  loc_A8B03C: FFreeAd var_C0 = "": var_D4 = "": var_128 = ""
  loc_A8B047: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_14C = "": var_15C = ""
  loc_A8B058: FLdPr var_B8
  loc_A8B05B: Me.MoveNext
  loc_A8B060: Branch loc_A8AD57
  loc_A8B063: LitNothing
  loc_A8B065: FStAd var_B8 
  loc_A8B069: ILdRf var_88
  loc_A8B06C: LitStr vbNullString
  loc_A8B06F: EqStr
  loc_A8B071: BranchF loc_A8B0D0
  loc_A8B074: LitStr "INSERT INTO cajamapa (FechCaja, PeriInfo, IdImpu, ExpeImpu, NumeLiqu, CodiCuco, ImpoCamp)"
  loc_A8B077: LitStr " SELECT FechImpu, i.PeriInfo, i.IdImpu, i.ExpeImpu, i.NumeLiqu, p.CodiCuco, MapaImpu"
  loc_A8B07A: ConcatStr
  loc_A8B07B: FStStrNoPop var_8C
  loc_A8B07E: LitStr " FROM imputacion i"
  loc_A8B081: ConcatStr
  loc_A8B082: FStStrNoPop var_90
  loc_A8B085: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_A8B088: ConcatStr
  loc_A8B089: FStStrNoPop CierraCajaMapa
  loc_A8B08C: LitStr " INNER JOIN paraconta pp ON pp.PeriInfo = i.PeriInfo"
  loc_A8B08F: ConcatStr
  loc_A8B090: FStStrNoPop var_98
  loc_A8B093: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_A8B096: ConcatStr
  loc_A8B097: FStStrNoPop var_9C
  loc_A8B09A: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_A8B09D: ConcatStr
  loc_A8B09E: FStStrNoPop var_A0
  loc_A8B0A1: LitStr " AND MapaImpu != 0"
  loc_A8B0A4: ConcatStr
  loc_A8B0A5: FStStrNoPop var_A4
  loc_A8B0A8: LitStr " AND AjusImpu = 0"
  loc_A8B0AB: ConcatStr
  loc_A8B0AC: FStStrNoPop var_A8
  loc_A8B0AF: LitStr " AND Left(i.CodiPart,1) != PaexPaco;"
  loc_A8B0B2: ConcatStr
  loc_A8B0B3: FStStrNoPop var_AC
  loc_A8B0B6: Call EjecutarRsCls(from_stack_1v)
  loc_A8B0BB: FFreeStr var_8C = "": var_90 = "": CierraCajaMapa = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A8B0D0: ExitProcCbHresult
End Function

Public Function CierraCajaDepo() 'A81C18
  'Data Table: 46D5B0
  loc_A8183C: ZeroRetVal
  loc_A8183E: LitStr "DELETE FROM cajadepo WHERE PeriInfo = Year(@desde) AND FechCaja >= @desde;"
  loc_A81841: Call EjecutarRsCls(from_stack_1v)
  loc_A81846: LitStr "SELECT movibanco.CodiBanc, banco.CodiCuco, cuentacontable.ImpuCuco"
  loc_A81849: LitStr " FROM movibanco"
  loc_A8184C: ConcatStr
  loc_A8184D: FStStrNoPop var_8C
  loc_A81850: LitStr " LEFT JOIN banco ON banco.PeriInfo = movibanco.PeriInfo AND banco.CodiBanc = movibanco.CodiBanc"
  loc_A81853: ConcatStr
  loc_A81854: FStStrNoPop var_90
  loc_A81857: LitStr " LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = banco.PeriInfo AND infogov.cuentacontable.CodiCuco = banco.CodiCuco"
  loc_A8185A: ConcatStr
  loc_A8185B: FStStrNoPop CierraCajaDepo
  loc_A8185E: LitStr " WHERE movibanco.PeriInfo = Year(@desde)"
  loc_A81861: ConcatStr
  loc_A81862: FStStrNoPop var_98
  loc_A81865: LitStr " AND FechMoba BETWEEN @desde AND @hasta"
  loc_A81868: ConcatStr
  loc_A81869: FStStrNoPop var_9C
  loc_A8186C: LitStr " AND CodiTimb IN (5,6)"
  loc_A8186F: ConcatStr
  loc_A81870: FStStrNoPop var_A0
  loc_A81873: Call EjecutarRsCls(from_stack_1v)
  loc_A81878: FFreeStr var_8C = "": var_90 = "": CierraCajaDepo = "": var_98 = "": var_9C = ""
  loc_A81887: FLdRfVar var_A4
  loc_A8188A: FLdPr Me
  loc_A8188D: MemLdPr global_56
  loc_A81890:  = Me.RecordCount
  loc_A81895: ILdRf var_A4
  loc_A81898: LitI4 0
  loc_A8189D: GtI4
  loc_A8189E: BranchF loc_A81C11
  loc_A818A1: FLdPr Me
  loc_A818A4: MemLdStr global_56
  loc_A818A7: FStAd var_A8 
  loc_A818AB: FLdPr var_A8
  loc_A818AE: Me.MoveFirst
  loc_A818B3: FLdRfVar var_AA
  loc_A818B6: FLdPr var_A8
  loc_A818B9:  = Me.EOF
  loc_A818BE: FLdI2 var_AA
  loc_A818C1: NotI4
  loc_A818C2: BranchF loc_A81BBF
  loc_A818C5: FLdRfVar var_C4
  loc_A818C8: LitVarStr var_C0, "CodiCuco"
  loc_A818CD: PopAdLdVar
  loc_A818CE: FLdRfVar var_B0
  loc_A818D1: FLdPr var_A8
  loc_A818D4:  = Me.Fields
  loc_A818D9: FLdPr var_B0
  loc_A818DC: from_stack_2 = Me.Item(from_stack_1)
  loc_A818E1: FLdZeroAd var_C4
  loc_A818E4: CVarAd
  loc_A818E8: ImpAdCallI2 IsNull()
  loc_A818ED: FFree1Ad var_B0
  loc_A818F0: FFree1Var var_D4 = ""
  loc_A818F3: BranchF loc_A8195A
  loc_A818F6: ILdRf var_88
  loc_A818F9: LitStr vbCrLf
  loc_A818FC: ConcatStr
  loc_A818FD: FStStrNoPop var_8C
  loc_A81900: LitStr "El Banco "
  loc_A81903: ConcatStr
  loc_A81904: CVarStr var_E4
  loc_A81907: FLdRfVar var_D4
  loc_A8190A: FLdRfVar var_C4
  loc_A8190D: LitVarStr var_C0, "CodiBanc"
  loc_A81912: PopAdLdVar
  loc_A81913: FLdRfVar var_B0
  loc_A81916: FLdPr var_A8
  loc_A81919:  = Me.Fields
  loc_A8191E: FLdPr var_B0
  loc_A81921: from_stack_2 = Me.Item(from_stack_1)
  loc_A81926: FLdPr var_C4
  loc_A81929:  = Me.Value
  loc_A8192E: FLdRfVar var_D4
  loc_A81931: ConcatVar var_F4
  loc_A81935: LitVarStr var_104, " NO EXISTE. Verifique..."
  loc_A8193A: ConcatVar var_114
  loc_A8193E: CStrVarTmp
  loc_A8193F: FStStr var_88
  loc_A81942: FFree1Str var_8C
  loc_A81945: FFreeAd var_B0 = ""
  loc_A8194C: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_A81957: Branch loc_A81BB4
  loc_A8195A: FLdRfVar var_D4
  loc_A8195D: FLdRfVar var_C4
  loc_A81960: LitVarStr var_C0, "CodiCuco"
  loc_A81965: PopAdLdVar
  loc_A81966: FLdRfVar var_B0
  loc_A81969: FLdPr var_A8
  loc_A8196C:  = Me.Fields
  loc_A81971: FLdPr var_B0
  loc_A81974: from_stack_2 = Me.Item(from_stack_1)
  loc_A81979: FLdPr var_C4
  loc_A8197C:  = Me.Value
  loc_A81981: FLdRfVar var_D4
  loc_A81984: LitVarStr var_104, vbNullString
  loc_A81989: HardType
  loc_A8198A: EqVarBool
  loc_A8198C: FFreeAd var_B0 = ""
  loc_A81993: FFree1Var var_D4 = ""
  loc_A81996: BranchF loc_A819FD
  loc_A81999: ILdRf var_88
  loc_A8199C: LitStr vbCrLf
  loc_A8199F: ConcatStr
  loc_A819A0: FStStrNoPop var_8C
  loc_A819A3: LitStr "El Banco "
  loc_A819A6: ConcatStr
  loc_A819A7: CVarStr var_E4
  loc_A819AA: FLdRfVar var_D4
  loc_A819AD: FLdRfVar var_C4
  loc_A819B0: LitVarStr var_C0, "CodiBanc"
  loc_A819B5: PopAdLdVar
  loc_A819B6: FLdRfVar var_B0
  loc_A819B9: FLdPr var_A8
  loc_A819BC:  = Me.Fields
  loc_A819C1: FLdPr var_B0
  loc_A819C4: from_stack_2 = Me.Item(from_stack_1)
  loc_A819C9: FLdPr var_C4
  loc_A819CC:  = Me.Value
  loc_A819D1: FLdRfVar var_D4
  loc_A819D4: ConcatVar var_F4
  loc_A819D8: LitVarStr var_104, " NO tiene una Cuenta Contable Asociada. Verifique..."
  loc_A819DD: ConcatVar var_114
  loc_A819E1: CStrVarTmp
  loc_A819E2: FStStr var_88
  loc_A819E5: FFree1Str var_8C
  loc_A819E8: FFreeAd var_B0 = ""
  loc_A819EF: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_A819FA: Branch loc_A81BB4
  loc_A819FD: FLdRfVar var_C4
  loc_A81A00: LitVarStr var_C0, "ImpuCuco"
  loc_A81A05: PopAdLdVar
  loc_A81A06: FLdRfVar var_B0
  loc_A81A09: FLdPr var_A8
  loc_A81A0C:  = Me.Fields
  loc_A81A11: FLdPr var_B0
  loc_A81A14: from_stack_2 = Me.Item(from_stack_1)
  loc_A81A19: FLdZeroAd var_C4
  loc_A81A1C: CVarAd
  loc_A81A20: ImpAdCallI2 IsNull()
  loc_A81A25: FFree1Ad var_B0
  loc_A81A28: FFree1Var var_D4 = ""
  loc_A81A2B: BranchF loc_A81AD3
  loc_A81A2E: ILdRf var_88
  loc_A81A31: LitStr vbCrLf
  loc_A81A34: ConcatStr
  loc_A81A35: FStStrNoPop var_8C
  loc_A81A38: LitStr "La Cuenta Contable "
  loc_A81A3B: ConcatStr
  loc_A81A3C: CVarStr var_E4
  loc_A81A3F: FLdRfVar var_D4
  loc_A81A42: FLdRfVar var_C4
  loc_A81A45: LitVarStr var_C0, "CodiCuco"
  loc_A81A4A: PopAdLdVar
  loc_A81A4B: FLdRfVar var_B0
  loc_A81A4E: FLdPr var_A8
  loc_A81A51:  = Me.Fields
  loc_A81A56: FLdPr var_B0
  loc_A81A59: from_stack_2 = Me.Item(from_stack_1)
  loc_A81A5E: FLdPr var_C4
  loc_A81A61:  = Me.Value
  loc_A81A66: FLdRfVar var_D4
  loc_A81A69: ConcatVar var_F4
  loc_A81A6D: LitVarStr var_104, " del Banco "
  loc_A81A72: ConcatVar var_114
  loc_A81A76: FLdRfVar var_13C
  loc_A81A79: FLdRfVar var_12C
  loc_A81A7C: LitVarStr var_128, "CodiBanc"
  loc_A81A81: PopAdLdVar
  loc_A81A82: FLdRfVar var_118
  loc_A81A85: FLdPr var_A8
  loc_A81A88:  = Me.Fields
  loc_A81A8D: FLdPr var_118
  loc_A81A90: from_stack_2 = Me.Item(from_stack_1)
  loc_A81A95: FLdPr var_12C
  loc_A81A98:  = Me.Value
  loc_A81A9D: FLdRfVar var_13C
  loc_A81AA0: ConcatVar var_14C
  loc_A81AA4: LitVarStr var_15C, " NO EXISTE. Verifique..."
  loc_A81AA9: ConcatVar var_16C
  loc_A81AAD: CStrVarTmp
  loc_A81AAE: FStStr var_88
  loc_A81AB1: FFree1Str var_8C
  loc_A81AB4: FFreeAd var_B0 = "": var_C4 = "": var_118 = ""
  loc_A81ABF: FFreeVar var_E4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_13C = "": var_14C = ""
  loc_A81AD0: Branch loc_A81BB4
  loc_A81AD3: FLdRfVar var_D4
  loc_A81AD6: FLdRfVar var_C4
  loc_A81AD9: LitVarStr var_C0, "ImpuCuco"
  loc_A81ADE: PopAdLdVar
  loc_A81ADF: FLdRfVar var_B0
  loc_A81AE2: FLdPr var_A8
  loc_A81AE5:  = Me.Fields
  loc_A81AEA: FLdPr var_B0
  loc_A81AED: from_stack_2 = Me.Item(from_stack_1)
  loc_A81AF2: FLdPr var_C4
  loc_A81AF5:  = Me.Value
  loc_A81AFA: FLdRfVar var_D4
  loc_A81AFD: LitVarI2 var_104, 0
  loc_A81B02: HardType
  loc_A81B03: EqVarBool
  loc_A81B05: FFreeAd var_B0 = ""
  loc_A81B0C: FFree1Var var_D4 = ""
  loc_A81B0F: BranchF loc_A81BB4
  loc_A81B12: ILdRf var_88
  loc_A81B15: LitStr vbCrLf
  loc_A81B18: ConcatStr
  loc_A81B19: FStStrNoPop var_8C
  loc_A81B1C: LitStr "La Cuenta Contable "
  loc_A81B1F: ConcatStr
  loc_A81B20: CVarStr var_E4
  loc_A81B23: FLdRfVar var_D4
  loc_A81B26: FLdRfVar var_C4
  loc_A81B29: LitVarStr var_C0, "CodiCuco"
  loc_A81B2E: PopAdLdVar
  loc_A81B2F: FLdRfVar var_B0
  loc_A81B32: FLdPr var_A8
  loc_A81B35:  = Me.Fields
  loc_A81B3A: FLdPr var_B0
  loc_A81B3D: from_stack_2 = Me.Item(from_stack_1)
  loc_A81B42: FLdPr var_C4
  loc_A81B45:  = Me.Value
  loc_A81B4A: FLdRfVar var_D4
  loc_A81B4D: ConcatVar var_F4
  loc_A81B51: LitVarStr var_104, " del Banco "
  loc_A81B56: ConcatVar var_114
  loc_A81B5A: FLdRfVar var_13C
  loc_A81B5D: FLdRfVar var_12C
  loc_A81B60: LitVarStr var_128, "CodiBanc"
  loc_A81B65: PopAdLdVar
  loc_A81B66: FLdRfVar var_118
  loc_A81B69: FLdPr var_A8
  loc_A81B6C:  = Me.Fields
  loc_A81B71: FLdPr var_118
  loc_A81B74: from_stack_2 = Me.Item(from_stack_1)
  loc_A81B79: FLdPr var_12C
  loc_A81B7C:  = Me.Value
  loc_A81B81: FLdRfVar var_13C
  loc_A81B84: ConcatVar var_14C
  loc_A81B88: LitVarStr var_15C, " NO es Imputable. Verifique..."
  loc_A81B8D: ConcatVar var_16C
  loc_A81B91: CStrVarTmp
  loc_A81B92: FStStr var_88
  loc_A81B95: FFree1Str var_8C
  loc_A81B98: FFreeAd var_B0 = "": var_C4 = "": var_118 = ""
  loc_A81BA3: FFreeVar var_E4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_13C = "": var_14C = ""
  loc_A81BB4: FLdPr var_A8
  loc_A81BB7: Me.MoveNext
  loc_A81BBC: Branch loc_A818B3
  loc_A81BBF: LitNothing
  loc_A81BC1: FStAd var_A8 
  loc_A81BC5: ILdRf var_88
  loc_A81BC8: LitStr vbNullString
  loc_A81BCB: EqStr
  loc_A81BCD: BranchF loc_A81C11
  loc_A81BD0: LitStr "INSERT INTO cajadepo"
  loc_A81BD3: LitStr " SELECT FechMoba, movibanco.PeriInfo, movibanco.CodiBanc, CodiTimb, NumeMoba, banco.CodiCuco, DebeMoba, HabeMoba"
  loc_A81BD6: ConcatStr
  loc_A81BD7: FStStrNoPop var_8C
  loc_A81BDA: LitStr " FROM movibanco"
  loc_A81BDD: ConcatStr
  loc_A81BDE: FStStrNoPop var_90
  loc_A81BE1: LitStr " INNER JOIN banco ON banco.PeriInfo = movibanco.PeriInfo AND banco.CodiBanc = movibanco.CodiBanc"
  loc_A81BE4: ConcatStr
  loc_A81BE5: FStStrNoPop CierraCajaDepo
  loc_A81BE8: LitStr " WHERE movibanco.PeriInfo = Year(@desde)"
  loc_A81BEB: ConcatStr
  loc_A81BEC: FStStrNoPop var_98
  loc_A81BEF: LitStr " AND FechMoba BETWEEN @desde AND @hasta"
  loc_A81BF2: ConcatStr
  loc_A81BF3: FStStrNoPop var_9C
  loc_A81BF6: LitStr " AND CodiTimb IN (5,6)"
  loc_A81BF9: ConcatStr
  loc_A81BFA: FStStrNoPop var_A0
  loc_A81BFD: Call EjecutarRsCls(from_stack_1v)
  loc_A81C02: FFreeStr var_8C = "": var_90 = "": CierraCajaDepo = "": var_98 = "": var_9C = ""
  loc_A81C11: ExitProcCbHresult
End Function

Public Function CierraCajaDeve() 'AF77A8
  'Data Table: 46D5B0
  loc_AF7080: ZeroRetVal
  loc_AF7082: LitStr "DELETE FROM cajadeve WHERE PeriInfo = Year(@desde) AND FechCaja >= @desde;"
  loc_AF7085: Call EjecutarRsCls(from_stack_1v)
  loc_AF708A: LitStr "SELECT imputacion.CodiPart, partida.CodiCuco, cuentacontable.ImpuCuco"
  loc_AF708D: LitStr " FROM imputacion"
  loc_AF7090: ConcatStr
  loc_AF7091: FStStrNoPop var_8C
  loc_AF7094: LitStr " LEFT JOIN partida ON partida.PeriInfo = imputacion.PeriInfo AND partida.CodiPart = imputacion.CodiPart"
  loc_AF7097: ConcatStr
  loc_AF7098: FStStrNoPop var_90
  loc_AF709B: LitStr " LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = partida.PeriInfo AND infogov.cuentacontable.CodiCuco = partida.CodiCuco"
  loc_AF709E: ConcatStr
  loc_AF709F: FStStrNoPop CierraCajaDeve
  loc_AF70A2: LitStr " LEFT JOIN paraconta ON paraconta.PeriInfo = imputacion.PeriInfo"
  loc_AF70A5: ConcatStr
  loc_AF70A6: FStStrNoPop var_98
  loc_AF70A9: LitStr " WHERE imputacion.PeriInfo = Year(@desde)"
  loc_AF70AC: ConcatStr
  loc_AF70AD: FStStrNoPop var_9C
  loc_AF70B0: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AF70B3: ConcatStr
  loc_AF70B4: FStStrNoPop var_A0
  loc_AF70B7: LitStr " AND DeveImpu <> 0"
  loc_AF70BA: ConcatStr
  loc_AF70BB: FStStrNoPop var_A4
  loc_AF70BE: LitStr " AND AjusImpu = 0"
  loc_AF70C1: ConcatStr
  loc_AF70C2: FStStrNoPop var_A8
  loc_AF70C5: LitStr " AND Left(imputacion.CodiPart,1) <> PaexPaco"
  loc_AF70C8: ConcatStr
  loc_AF70C9: FStStrNoPop var_AC
  loc_AF70CC: LitStr " AND (partida.CodiCuco IS NULL OR partida.CodiCuco = '' OR ImpuCuco IS NULL OR ImpuCuco = 0)"
  loc_AF70CF: ConcatStr
  loc_AF70D0: FStStrNoPop var_B0
  loc_AF70D3: Call EjecutarRsCls(from_stack_1v)
  loc_AF70D8: FFreeStr var_8C = "": var_90 = "": CierraCajaDeve = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AF70EF: FLdRfVar var_B4
  loc_AF70F2: FLdPr Me
  loc_AF70F5: MemLdPr global_56
  loc_AF70F8:  = Me.RecordCount
  loc_AF70FD: ILdRf var_B4
  loc_AF7100: LitI4 0
  loc_AF7105: GtI4
  loc_AF7106: BranchF loc_AF742D
  loc_AF7109: FLdPr Me
  loc_AF710C: MemLdStr global_56
  loc_AF710F: FStAd var_B8 
  loc_AF7113: FLdPr var_B8
  loc_AF7116: Me.MoveFirst
  loc_AF711B: FLdRfVar var_BA
  loc_AF711E: FLdPr var_B8
  loc_AF7121:  = Me.EOF
  loc_AF7126: FLdI2 var_BA
  loc_AF7129: NotI4
  loc_AF712A: BranchF loc_AF7427
  loc_AF712D: FLdRfVar var_D4
  loc_AF7130: LitVarStr var_D0, "CodiCuco"
  loc_AF7135: PopAdLdVar
  loc_AF7136: FLdRfVar var_C0
  loc_AF7139: FLdPr var_B8
  loc_AF713C:  = Me.Fields
  loc_AF7141: FLdPr var_C0
  loc_AF7144: from_stack_2 = Me.Item(from_stack_1)
  loc_AF7149: FLdZeroAd var_D4
  loc_AF714C: CVarAd
  loc_AF7150: ImpAdCallI2 IsNull()
  loc_AF7155: FFree1Ad var_C0
  loc_AF7158: FFree1Var var_E4 = ""
  loc_AF715B: BranchF loc_AF71C2
  loc_AF715E: ILdRf var_88
  loc_AF7161: LitStr vbCrLf
  loc_AF7164: ConcatStr
  loc_AF7165: FStStrNoPop var_8C
  loc_AF7168: LitStr "La Partida "
  loc_AF716B: ConcatStr
  loc_AF716C: CVarStr var_F4
  loc_AF716F: FLdRfVar var_E4
  loc_AF7172: FLdRfVar var_D4
  loc_AF7175: LitVarStr var_D0, "CodiPart"
  loc_AF717A: PopAdLdVar
  loc_AF717B: FLdRfVar var_C0
  loc_AF717E: FLdPr var_B8
  loc_AF7181:  = Me.Fields
  loc_AF7186: FLdPr var_C0
  loc_AF7189: from_stack_2 = Me.Item(from_stack_1)
  loc_AF718E: FLdPr var_D4
  loc_AF7191:  = Me.Value
  loc_AF7196: FLdRfVar var_E4
  loc_AF7199: ConcatVar var_104
  loc_AF719D: LitVarStr var_114, " correspondiente a la imputacion NO EXISTE. Verifique..."
  loc_AF71A2: ConcatVar var_124
  loc_AF71A6: CStrVarTmp
  loc_AF71A7: FStStr var_88
  loc_AF71AA: FFree1Str var_8C
  loc_AF71AD: FFreeAd var_C0 = ""
  loc_AF71B4: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_AF71BF: Branch loc_AF741C
  loc_AF71C2: FLdRfVar var_E4
  loc_AF71C5: FLdRfVar var_D4
  loc_AF71C8: LitVarStr var_D0, "CodiCuco"
  loc_AF71CD: PopAdLdVar
  loc_AF71CE: FLdRfVar var_C0
  loc_AF71D1: FLdPr var_B8
  loc_AF71D4:  = Me.Fields
  loc_AF71D9: FLdPr var_C0
  loc_AF71DC: from_stack_2 = Me.Item(from_stack_1)
  loc_AF71E1: FLdPr var_D4
  loc_AF71E4:  = Me.Value
  loc_AF71E9: FLdRfVar var_E4
  loc_AF71EC: LitVarStr var_114, vbNullString
  loc_AF71F1: HardType
  loc_AF71F2: EqVarBool
  loc_AF71F4: FFreeAd var_C0 = ""
  loc_AF71FB: FFree1Var var_E4 = ""
  loc_AF71FE: BranchF loc_AF7265
  loc_AF7201: ILdRf var_88
  loc_AF7204: LitStr vbCrLf
  loc_AF7207: ConcatStr
  loc_AF7208: FStStrNoPop var_8C
  loc_AF720B: LitStr "La Partida "
  loc_AF720E: ConcatStr
  loc_AF720F: CVarStr var_F4
  loc_AF7212: FLdRfVar var_E4
  loc_AF7215: FLdRfVar var_D4
  loc_AF7218: LitVarStr var_D0, "CodiPart"
  loc_AF721D: PopAdLdVar
  loc_AF721E: FLdRfVar var_C0
  loc_AF7221: FLdPr var_B8
  loc_AF7224:  = Me.Fields
  loc_AF7229: FLdPr var_C0
  loc_AF722C: from_stack_2 = Me.Item(from_stack_1)
  loc_AF7231: FLdPr var_D4
  loc_AF7234:  = Me.Value
  loc_AF7239: FLdRfVar var_E4
  loc_AF723C: ConcatVar var_104
  loc_AF7240: LitVarStr var_114, " NO TIENE una Cuenta Contable Asociada. Verifique..."
  loc_AF7245: ConcatVar var_124
  loc_AF7249: CStrVarTmp
  loc_AF724A: FStStr var_88
  loc_AF724D: FFree1Str var_8C
  loc_AF7250: FFreeAd var_C0 = ""
  loc_AF7257: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_AF7262: Branch loc_AF741C
  loc_AF7265: FLdRfVar var_D4
  loc_AF7268: LitVarStr var_D0, "ImpuCuco"
  loc_AF726D: PopAdLdVar
  loc_AF726E: FLdRfVar var_C0
  loc_AF7271: FLdPr var_B8
  loc_AF7274:  = Me.Fields
  loc_AF7279: FLdPr var_C0
  loc_AF727C: from_stack_2 = Me.Item(from_stack_1)
  loc_AF7281: FLdZeroAd var_D4
  loc_AF7284: CVarAd
  loc_AF7288: ImpAdCallI2 IsNull()
  loc_AF728D: FFree1Ad var_C0
  loc_AF7290: FFree1Var var_E4 = ""
  loc_AF7293: BranchF loc_AF733B
  loc_AF7296: ILdRf var_88
  loc_AF7299: LitStr vbCrLf
  loc_AF729C: ConcatStr
  loc_AF729D: FStStrNoPop var_8C
  loc_AF72A0: LitStr "La Cuenta Contable "
  loc_AF72A3: ConcatStr
  loc_AF72A4: CVarStr var_F4
  loc_AF72A7: FLdRfVar var_E4
  loc_AF72AA: FLdRfVar var_D4
  loc_AF72AD: LitVarStr var_D0, "CodiCuco"
  loc_AF72B2: PopAdLdVar
  loc_AF72B3: FLdRfVar var_C0
  loc_AF72B6: FLdPr var_B8
  loc_AF72B9:  = Me.Fields
  loc_AF72BE: FLdPr var_C0
  loc_AF72C1: from_stack_2 = Me.Item(from_stack_1)
  loc_AF72C6: FLdPr var_D4
  loc_AF72C9:  = Me.Value
  loc_AF72CE: FLdRfVar var_E4
  loc_AF72D1: ConcatVar var_104
  loc_AF72D5: LitVarStr var_114, " de la Partida "
  loc_AF72DA: ConcatVar var_124
  loc_AF72DE: FLdRfVar var_14C
  loc_AF72E1: FLdRfVar var_13C
  loc_AF72E4: LitVarStr var_138, "CodiPart"
  loc_AF72E9: PopAdLdVar
  loc_AF72EA: FLdRfVar var_128
  loc_AF72ED: FLdPr var_B8
  loc_AF72F0:  = Me.Fields
  loc_AF72F5: FLdPr var_128
  loc_AF72F8: from_stack_2 = Me.Item(from_stack_1)
  loc_AF72FD: FLdPr var_13C
  loc_AF7300:  = Me.Value
  loc_AF7305: FLdRfVar var_14C
  loc_AF7308: ConcatVar var_15C
  loc_AF730C: LitVarStr var_16C, " NO EXISTE. Verifique..."
  loc_AF7311: ConcatVar var_17C
  loc_AF7315: CStrVarTmp
  loc_AF7316: FStStr var_88
  loc_AF7319: FFree1Str var_8C
  loc_AF731C: FFreeAd var_C0 = "": var_D4 = "": var_128 = ""
  loc_AF7327: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_14C = "": var_15C = ""
  loc_AF7338: Branch loc_AF741C
  loc_AF733B: FLdRfVar var_E4
  loc_AF733E: FLdRfVar var_D4
  loc_AF7341: LitVarStr var_D0, "ImpuCuco"
  loc_AF7346: PopAdLdVar
  loc_AF7347: FLdRfVar var_C0
  loc_AF734A: FLdPr var_B8
  loc_AF734D:  = Me.Fields
  loc_AF7352: FLdPr var_C0
  loc_AF7355: from_stack_2 = Me.Item(from_stack_1)
  loc_AF735A: FLdPr var_D4
  loc_AF735D:  = Me.Value
  loc_AF7362: FLdRfVar var_E4
  loc_AF7365: LitVarI2 var_114, 0
  loc_AF736A: HardType
  loc_AF736B: EqVarBool
  loc_AF736D: FFreeAd var_C0 = ""
  loc_AF7374: FFree1Var var_E4 = ""
  loc_AF7377: BranchF loc_AF741C
  loc_AF737A: ILdRf var_88
  loc_AF737D: LitStr vbCrLf
  loc_AF7380: ConcatStr
  loc_AF7381: FStStrNoPop var_8C
  loc_AF7384: LitStr "La Cuenta Contable "
  loc_AF7387: ConcatStr
  loc_AF7388: CVarStr var_F4
  loc_AF738B: FLdRfVar var_E4
  loc_AF738E: FLdRfVar var_D4
  loc_AF7391: LitVarStr var_D0, "CodiCuco"
  loc_AF7396: PopAdLdVar
  loc_AF7397: FLdRfVar var_C0
  loc_AF739A: FLdPr var_B8
  loc_AF739D:  = Me.Fields
  loc_AF73A2: FLdPr var_C0
  loc_AF73A5: from_stack_2 = Me.Item(from_stack_1)
  loc_AF73AA: FLdPr var_D4
  loc_AF73AD:  = Me.Value
  loc_AF73B2: FLdRfVar var_E4
  loc_AF73B5: ConcatVar var_104
  loc_AF73B9: LitVarStr var_114, " de la Partida "
  loc_AF73BE: ConcatVar var_124
  loc_AF73C2: FLdRfVar var_14C
  loc_AF73C5: FLdRfVar var_13C
  loc_AF73C8: LitVarStr var_138, "CodiPart"
  loc_AF73CD: PopAdLdVar
  loc_AF73CE: FLdRfVar var_128
  loc_AF73D1: FLdPr var_B8
  loc_AF73D4:  = Me.Fields
  loc_AF73D9: FLdPr var_128
  loc_AF73DC: from_stack_2 = Me.Item(from_stack_1)
  loc_AF73E1: FLdPr var_13C
  loc_AF73E4:  = Me.Value
  loc_AF73E9: FLdRfVar var_14C
  loc_AF73EC: ConcatVar var_15C
  loc_AF73F0: LitVarStr var_16C, " NO es Imputable. Verifique..."
  loc_AF73F5: ConcatVar var_17C
  loc_AF73F9: CStrVarTmp
  loc_AF73FA: FStStr var_88
  loc_AF73FD: FFree1Str var_8C
  loc_AF7400: FFreeAd var_C0 = "": var_D4 = "": var_128 = ""
  loc_AF740B: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_14C = "": var_15C = ""
  loc_AF741C: FLdPr var_B8
  loc_AF741F: Me.MoveNext
  loc_AF7424: Branch loc_AF711B
  loc_AF7427: LitNothing
  loc_AF7429: FStAd var_B8 
  loc_AF742D: ILdRf var_88
  loc_AF7430: LitStr vbNullString
  loc_AF7433: EqStr
  loc_AF7435: BranchF loc_AF779F
  loc_AF7438: LitStr "INSERT INTO cajadeve (FechCaja, PeriInfo, IdImpu, CodiPart, CodiOrga, ExpeImpu, CodiCuco, DebeCaja, HabeCaja, AjusImpu)"
  loc_AF743B: LitStr " SELECT FechImpu, i.PeriInfo, i.IdImpu, i.CodiPart, i.CodiOrga, ExpeImpu, CodiCuco, IF(DeveImpu>0,DeveImpu,0) DebeCaja, IF(DeveImpu<0,DeveImpu*-1,0) HabeCaja, AjusImpu"
  loc_AF743E: ConcatStr
  loc_AF743F: FStStrNoPop var_8C
  loc_AF7442: LitStr " FROM imputacion i"
  loc_AF7445: ConcatStr
  loc_AF7446: FStStrNoPop var_90
  loc_AF7449: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AF744C: ConcatStr
  loc_AF744D: FStStrNoPop CierraCajaDeve
  loc_AF7450: LitStr " INNER JOIN paraconta pp ON pp.PeriInfo = i.PeriInfo"
  loc_AF7453: ConcatStr
  loc_AF7454: FStStrNoPop var_98
  loc_AF7457: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AF745A: ConcatStr
  loc_AF745B: FStStrNoPop var_9C
  loc_AF745E: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AF7461: ConcatStr
  loc_AF7462: FStStrNoPop var_A0
  loc_AF7465: LitStr " AND DeveImpu != 0"
  loc_AF7468: ConcatStr
  loc_AF7469: FStStrNoPop var_A4
  loc_AF746C: LitStr " AND AjusImpu = 0"
  loc_AF746F: ConcatStr
  loc_AF7470: FStStrNoPop var_A8
  loc_AF7473: LitStr " AND Left(i.CodiPart,1) <> PaexPaco;"
  loc_AF7476: ConcatStr
  loc_AF7477: FStStrNoPop var_AC
  loc_AF747A: Call EjecutarRsCls(from_stack_1v)
  loc_AF747F: FFreeStr var_8C = "": var_90 = "": CierraCajaDeve = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AF7494: LitStr "INSERT INTO cajadeve (FechCaja, PeriInfo, IdImpu, CodiPart, CodiOrga, ExpeImpu, CodiCuco, DebeCaja, HabeCaja, AjusImpu)"
  loc_AF7497: LitStr " SELECT FechImpu, i.PeriInfo, i.IdImpu, i.CodiPart, i.CodiOrga, i.ExpeImpu, d.CodiCuco, IF(DeveImpu<0,DeveImpu*-1,0) DebeCaja, 0 HabeCaja, AjusImpu"
  loc_AF749A: ConcatStr
  loc_AF749B: FStStrNoPop var_8C
  loc_AF749E: LitStr " FROM imputacion i"
  loc_AF74A1: ConcatStr
  loc_AF74A2: FStStrNoPop var_90
  loc_AF74A5: LitStr " INNER JOIN paraconta p ON p.PeriInfo = i.PeriInfo"
  loc_AF74A8: ConcatStr
  loc_AF74A9: FStStrNoPop CierraCajaDeve
  loc_AF74AC: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_AF74AF: ConcatStr
  loc_AF74B0: FStStrNoPop var_98
  loc_AF74B3: LitStr " AND d.CodiCuco != ''"
  loc_AF74B6: ConcatStr
  loc_AF74B7: FStStrNoPop var_9C
  loc_AF74BA: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AF74BD: ConcatStr
  loc_AF74BE: FStStrNoPop var_A0
  loc_AF74C1: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AF74C4: ConcatStr
  loc_AF74C5: FStStrNoPop var_A4
  loc_AF74C8: LitStr " AND DeveImpu < 0"
  loc_AF74CB: ConcatStr
  loc_AF74CC: FStStrNoPop var_A8
  loc_AF74CF: LitStr " AND AjusImpu > 0"
  loc_AF74D2: ConcatStr
  loc_AF74D3: FStStrNoPop var_AC
  loc_AF74D6: LitStr " AND IdContra = 0"
  loc_AF74D9: ConcatStr
  loc_AF74DA: FStStrNoPop var_B0
  loc_AF74DD: LitStr " AND Left(i.CodiPart,1) <> PaexPaco;"
  loc_AF74E0: ConcatStr
  loc_AF74E1: FStStrNoPop var_180
  loc_AF74E4: Call EjecutarRsCls(from_stack_1v)
  loc_AF74E9: FFreeStr var_8C = "": var_90 = "": CierraCajaDeve = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_AF7502: LitStr "INSERT INTO cajadeve (FechCaja, PeriInfo, IdImpu, CodiPart, CodiOrga, ExpeImpu, CodiCuco, DebeCaja, HabeCaja, AjusImpu)"
  loc_AF7505: LitStr " SELECT FechImpu, i.PeriInfo, i.IdImpu, i.CodiPart, i.CodiOrga, i.ExpeImpu, p.CodiCuco, 0 DebeCaja, IF(DeveImpu<0,DeveImpu*-1,0) HabeCaja, AjusImpu"
  loc_AF7508: ConcatStr
  loc_AF7509: FStStrNoPop var_8C
  loc_AF750C: LitStr " FROM imputacion i"
  loc_AF750F: ConcatStr
  loc_AF7510: FStStrNoPop var_90
  loc_AF7513: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AF7516: ConcatStr
  loc_AF7517: FStStrNoPop CierraCajaDeve
  loc_AF751A: LitStr " INNER JOIN paraconta pp ON pp.PeriInfo = i.PeriInfo"
  loc_AF751D: ConcatStr
  loc_AF751E: FStStrNoPop var_98
  loc_AF7521: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_AF7524: ConcatStr
  loc_AF7525: FStStrNoPop var_9C
  loc_AF7528: LitStr " AND d.CodiCuco != ''"
  loc_AF752B: ConcatStr
  loc_AF752C: FStStrNoPop var_A0
  loc_AF752F: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AF7532: ConcatStr
  loc_AF7533: FStStrNoPop var_A4
  loc_AF7536: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AF7539: ConcatStr
  loc_AF753A: FStStrNoPop var_A8
  loc_AF753D: LitStr " AND DeveImpu < 0"
  loc_AF7540: ConcatStr
  loc_AF7541: FStStrNoPop var_AC
  loc_AF7544: LitStr " AND AjusImpu > 0"
  loc_AF7547: ConcatStr
  loc_AF7548: FStStrNoPop var_B0
  loc_AF754B: LitStr " AND IdContra = 0"
  loc_AF754E: ConcatStr
  loc_AF754F: FStStrNoPop var_180
  loc_AF7552: LitStr " AND Left(i.CodiPart,1) <> PaexPaco;"
  loc_AF7555: ConcatStr
  loc_AF7556: FStStrNoPop var_184
  loc_AF7559: Call EjecutarRsCls(from_stack_1v)
  loc_AF755E: FFreeStr var_8C = "": var_90 = "": CierraCajaDeve = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_180 = ""
  loc_AF7579: LitStr "INSERT INTO cajadeve (FechCaja,PeriInfo,IdImpu,CodiPart,CodiOrga,ExpeImpu,CodiCuco,DebeCaja,HabeCaja,AjusImpu,IdContra)"
  loc_AF757C: LitStr " SELECT FechImpu, i.PeriInfo, i.IdImpu, i.CodiPart, i.CodiOrga, i.ExpeImpu, d.CodiCuco, IF(DeveImpu<0,DeveImpu*-1,0) DebeCaja, 0 HabeCaja, AjusImpu, d.IdContra"
  loc_AF757F: ConcatStr
  loc_AF7580: FStStrNoPop var_8C
  loc_AF7583: LitStr " FROM imputacion i"
  loc_AF7586: ConcatStr
  loc_AF7587: FStStrNoPop var_90
  loc_AF758A: LitStr " INNER JOIN paraconta p ON p.PeriInfo = i.PeriInfo"
  loc_AF758D: ConcatStr
  loc_AF758E: FStStrNoPop CierraCajaDeve
  loc_AF7591: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_AF7594: ConcatStr
  loc_AF7595: FStStrNoPop var_98
  loc_AF7598: LitStr " AND d.CodiCuco != ''"
  loc_AF759B: ConcatStr
  loc_AF759C: FStStrNoPop var_9C
  loc_AF759F: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AF75A2: ConcatStr
  loc_AF75A3: FStStrNoPop var_A0
  loc_AF75A6: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AF75A9: ConcatStr
  loc_AF75AA: FStStrNoPop var_A4
  loc_AF75AD: LitStr " AND DeveImpu < 0"
  loc_AF75B0: ConcatStr
  loc_AF75B1: FStStrNoPop var_A8
  loc_AF75B4: LitStr " AND AjusImpu > 0"
  loc_AF75B7: ConcatStr
  loc_AF75B8: FStStrNoPop var_AC
  loc_AF75BB: LitStr " AND IdContra > 0"
  loc_AF75BE: ConcatStr
  loc_AF75BF: FStStrNoPop var_B0
  loc_AF75C2: LitStr " AND Left(i.CodiPart,1) <> PaexPaco;"
  loc_AF75C5: ConcatStr
  loc_AF75C6: FStStrNoPop var_180
  loc_AF75C9: Call EjecutarRsCls(from_stack_1v)
  loc_AF75CE: FFreeStr var_8C = "": var_90 = "": CierraCajaDeve = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_AF75E7: LitStr "INSERT INTO cajadeve (FechCaja,PeriInfo,IdImpu,CodiPart,CodiOrga,ExpeImpu,CodiCuco,DebeCaja,HabeCaja,AjusImpu,IdContra)"
  loc_AF75EA: LitStr " SELECT FechImpu, i.PeriInfo, i.IdImpu, i.CodiPart, i.CodiOrga, i.ExpeImpu, p.CodiCuco, 0 DebeCaja, IF(DeveImpu<0,DeveImpu*-1,0) HabeCaja, AjusImpu, d.IdContra"
  loc_AF75ED: ConcatStr
  loc_AF75EE: FStStrNoPop var_8C
  loc_AF75F1: LitStr " FROM imputacion i"
  loc_AF75F4: ConcatStr
  loc_AF75F5: FStStrNoPop var_90
  loc_AF75F8: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AF75FB: ConcatStr
  loc_AF75FC: FStStrNoPop CierraCajaDeve
  loc_AF75FF: LitStr " INNER JOIN paraconta pp ON pp.PeriInfo = i.PeriInfo"
  loc_AF7602: ConcatStr
  loc_AF7603: FStStrNoPop var_98
  loc_AF7606: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_AF7609: ConcatStr
  loc_AF760A: FStStrNoPop var_9C
  loc_AF760D: LitStr " AND d.CodiCuco != ''"
  loc_AF7610: ConcatStr
  loc_AF7611: FStStrNoPop var_A0
  loc_AF7614: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AF7617: ConcatStr
  loc_AF7618: FStStrNoPop var_A4
  loc_AF761B: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AF761E: ConcatStr
  loc_AF761F: FStStrNoPop var_A8
  loc_AF7622: LitStr " AND DeveImpu < 0"
  loc_AF7625: ConcatStr
  loc_AF7626: FStStrNoPop var_AC
  loc_AF7629: LitStr " AND AjusImpu > 0"
  loc_AF762C: ConcatStr
  loc_AF762D: FStStrNoPop var_B0
  loc_AF7630: LitStr " AND IdContra > 0"
  loc_AF7633: ConcatStr
  loc_AF7634: FStStrNoPop var_180
  loc_AF7637: LitStr " AND Left(i.CodiPart,1) <> PaexPaco;"
  loc_AF763A: ConcatStr
  loc_AF763B: FStStrNoPop var_184
  loc_AF763E: Call EjecutarRsCls(from_stack_1v)
  loc_AF7643: FFreeStr var_8C = "": var_90 = "": CierraCajaDeve = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_180 = ""
  loc_AF765E: LitStr "INSERT INTO cajadeve (FechCaja, PeriInfo, IdImpu, CodiPart, CodiOrga, ExpeImpu, CodiCuco, DebeCaja, HabeCaja, AjusImpu)"
  loc_AF7661: LitStr " SELECT FechImpu, i.PeriInfo, i.IdImpu, i.CodiPart, i.CodiOrga, i.ExpeImpu, d.CodiCuco, 0 DebeCaja, DeveImpu HabeCaja, AjusImpu"
  loc_AF7664: ConcatStr
  loc_AF7665: FStStrNoPop var_8C
  loc_AF7668: LitStr " FROM imputacion i"
  loc_AF766B: ConcatStr
  loc_AF766C: FStStrNoPop var_90
  loc_AF766F: LitStr " INNER JOIN paraconta p ON p.PeriInfo = i.PeriInfo"
  loc_AF7672: ConcatStr
  loc_AF7673: FStStrNoPop CierraCajaDeve
  loc_AF7676: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_AF7679: ConcatStr
  loc_AF767A: FStStrNoPop var_98
  loc_AF767D: LitStr " AND d.CodiCuco != ''"
  loc_AF7680: ConcatStr
  loc_AF7681: FStStrNoPop var_9C
  loc_AF7684: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AF7687: ConcatStr
  loc_AF7688: FStStrNoPop var_A0
  loc_AF768B: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AF768E: ConcatStr
  loc_AF768F: FStStrNoPop var_A4
  loc_AF7692: LitStr " AND DeveImpu > 0"
  loc_AF7695: ConcatStr
  loc_AF7696: FStStrNoPop var_A8
  loc_AF7699: LitStr " AND AjusImpu > 0"
  loc_AF769C: ConcatStr
  loc_AF769D: FStStrNoPop var_AC
  loc_AF76A0: LitStr " AND Left(i.CodiPart,1) <> PaexPaco;"
  loc_AF76A3: ConcatStr
  loc_AF76A4: FStStrNoPop var_B0
  loc_AF76A7: Call EjecutarRsCls(from_stack_1v)
  loc_AF76AC: FFreeStr var_8C = "": var_90 = "": CierraCajaDeve = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AF76C3: LitStr "INSERT INTO cajadeve (FechCaja, PeriInfo, IdImpu, CodiPart, CodiOrga, ExpeImpu, CodiCuco, DebeCaja, HabeCaja, AjusImpu)"
  loc_AF76C6: LitStr " SELECT FechImpu, i.PeriInfo, i.IdImpu, i.CodiPart, i.CodiOrga, i.ExpeImpu, p.CodiCuco, DeveImpu DebeCaja, 0 HabeCaja, AjusImpu"
  loc_AF76C9: ConcatStr
  loc_AF76CA: FStStrNoPop var_8C
  loc_AF76CD: LitStr " FROM imputacion i"
  loc_AF76D0: ConcatStr
  loc_AF76D1: FStStrNoPop var_90
  loc_AF76D4: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AF76D7: ConcatStr
  loc_AF76D8: FStStrNoPop CierraCajaDeve
  loc_AF76DB: LitStr " INNER JOIN paraconta pp ON pp.PeriInfo = i.PeriInfo"
  loc_AF76DE: ConcatStr
  loc_AF76DF: FStStrNoPop var_98
  loc_AF76E2: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_AF76E5: ConcatStr
  loc_AF76E6: FStStrNoPop var_9C
  loc_AF76E9: LitStr " AND d.CodiCuco != ''"
  loc_AF76EC: ConcatStr
  loc_AF76ED: FStStrNoPop var_A0
  loc_AF76F0: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AF76F3: ConcatStr
  loc_AF76F4: FStStrNoPop var_A4
  loc_AF76F7: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AF76FA: ConcatStr
  loc_AF76FB: FStStrNoPop var_A8
  loc_AF76FE: LitStr " AND DeveImpu > 0"
  loc_AF7701: ConcatStr
  loc_AF7702: FStStrNoPop var_AC
  loc_AF7705: LitStr " AND AjusImpu > 0"
  loc_AF7708: ConcatStr
  loc_AF7709: FStStrNoPop var_B0
  loc_AF770C: LitStr " AND Left(i.CodiPart,1) <> PaexPaco;"
  loc_AF770F: ConcatStr
  loc_AF7710: FStStrNoPop var_180
  loc_AF7713: Call EjecutarRsCls(from_stack_1v)
  loc_AF7718: FFreeStr var_8C = "": var_90 = "": CierraCajaDeve = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_AF7731: LitStr "INSERT INTO cajadeve (FechCaja, PeriInfo, IdImpu, CodiPart, CodiOrga, ExpeImpu, CodiCuco, DebeCaja, HabeCaja, AjusImpu)"
  loc_AF7734: LitStr " SELECT FechImpu, i.PeriInfo, i.IdImpu, i.CodiPart, i.CodiOrga, i.ExpeImpu, p.CodiCuco, IF(DeveImpu>0,DeveImpu,0) DebeCaja, IF(DeveImpu<0,DeveImpu*-1,0) HabeCaja, AjusImpu"
  loc_AF7737: ConcatStr
  loc_AF7738: FStStrNoPop var_8C
  loc_AF773B: LitStr " FROM imputacion i"
  loc_AF773E: ConcatStr
  loc_AF773F: FStStrNoPop var_90
  loc_AF7742: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AF7745: ConcatStr
  loc_AF7746: FStStrNoPop CierraCajaDeve
  loc_AF7749: LitStr " INNER JOIN paraconta pp ON pp.PeriInfo = i.PeriInfo"
  loc_AF774C: ConcatStr
  loc_AF774D: FStStrNoPop var_98
  loc_AF7750: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_AF7753: ConcatStr
  loc_AF7754: FStStrNoPop var_9C
  loc_AF7757: LitStr " AND d.CodiCuco = ''"
  loc_AF775A: ConcatStr
  loc_AF775B: FStStrNoPop var_A0
  loc_AF775E: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AF7761: ConcatStr
  loc_AF7762: FStStrNoPop var_A4
  loc_AF7765: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AF7768: ConcatStr
  loc_AF7769: FStStrNoPop var_A8
  loc_AF776C: LitStr " AND DeveImpu != 0"
  loc_AF776F: ConcatStr
  loc_AF7770: FStStrNoPop var_AC
  loc_AF7773: LitStr " AND AjusImpu > 0"
  loc_AF7776: ConcatStr
  loc_AF7777: FStStrNoPop var_B0
  loc_AF777A: LitStr " /*AND Left(i.CodiPart,1) <> PaexPaco*/;"
  loc_AF777D: ConcatStr
  loc_AF777E: FStStrNoPop var_180
  loc_AF7781: Call EjecutarRsCls(from_stack_1v)
  loc_AF7786: FFreeStr var_8C = "": var_90 = "": CierraCajaDeve = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_AF779F: ExitProcCbHresult
  loc_AF77A5: FFreeStr var_FFFFFFC8 = ""
End Function

Public Function CierraCajaDeveGuaymallen() 'AC7D00
  'Data Table: 46D5B0
  loc_AC772C: ZeroRetVal
  loc_AC772E: LitStr "DELETE FROM cajadeve WHERE PeriInfo = Year(@desde) AND FechCaja >= @desde;"
  loc_AC7731: Call EjecutarRsCls(from_stack_1v)
  loc_AC7736: LitStr "SELECT imputacion.CodiPart, partida.CodiCuco, cuentacontable.ImpuCuco"
  loc_AC7739: LitStr " FROM imputacion"
  loc_AC773C: ConcatStr
  loc_AC773D: FStStrNoPop var_8C
  loc_AC7740: LitStr " LEFT JOIN partida ON partida.PeriInfo = imputacion.PeriInfo AND partida.CodiPart = imputacion.CodiPart"
  loc_AC7743: ConcatStr
  loc_AC7744: FStStrNoPop var_90
  loc_AC7747: LitStr " LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = partida.PeriInfo AND infogov.cuentacontable.CodiCuco = partida.CodiCuco"
  loc_AC774A: ConcatStr
  loc_AC774B: FStStrNoPop CierraCajaDeveGuaymallen
  loc_AC774E: LitStr " LEFT JOIN paraconta ON paraconta.PeriInfo = imputacion.PeriInfo"
  loc_AC7751: ConcatStr
  loc_AC7752: FStStrNoPop var_98
  loc_AC7755: LitStr " WHERE imputacion.PeriInfo = Year(@desde)"
  loc_AC7758: ConcatStr
  loc_AC7759: FStStrNoPop var_9C
  loc_AC775C: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AC775F: ConcatStr
  loc_AC7760: FStStrNoPop var_A0
  loc_AC7763: LitStr " AND DeveImpu <> 0"
  loc_AC7766: ConcatStr
  loc_AC7767: FStStrNoPop var_A4
  loc_AC776A: LitStr " AND AjusImpu > 0"
  loc_AC776D: ConcatStr
  loc_AC776E: FStStrNoPop var_A8
  loc_AC7771: LitStr " AND Left(imputacion.CodiPart,1) <> PaexPaco"
  loc_AC7774: ConcatStr
  loc_AC7775: FStStrNoPop var_AC
  loc_AC7778: LitStr " AND (partida.CodiCuco IS NULL OR partida.CodiCuco = '' OR ImpuCuco IS NULL OR ImpuCuco = 0)"
  loc_AC777B: ConcatStr
  loc_AC777C: FStStrNoPop var_B0
  loc_AC777F: Call EjecutarRsCls(from_stack_1v)
  loc_AC7784: FFreeStr var_8C = "": var_90 = "": CierraCajaDeveGuaymallen = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AC779B: FLdRfVar var_B4
  loc_AC779E: FLdPr Me
  loc_AC77A1: MemLdPr global_56
  loc_AC77A4:  = Me.RecordCount
  loc_AC77A9: ILdRf var_B4
  loc_AC77AC: LitI4 0
  loc_AC77B1: GtI4
  loc_AC77B2: BranchF loc_AC7AD9
  loc_AC77B5: FLdPr Me
  loc_AC77B8: MemLdStr global_56
  loc_AC77BB: FStAd var_B8 
  loc_AC77BF: FLdPr var_B8
  loc_AC77C2: Me.MoveFirst
  loc_AC77C7: FLdRfVar var_BA
  loc_AC77CA: FLdPr var_B8
  loc_AC77CD:  = Me.EOF
  loc_AC77D2: FLdI2 var_BA
  loc_AC77D5: NotI4
  loc_AC77D6: BranchF loc_AC7AD3
  loc_AC77D9: FLdRfVar var_D4
  loc_AC77DC: LitVarStr var_D0, "CodiCuco"
  loc_AC77E1: PopAdLdVar
  loc_AC77E2: FLdRfVar var_C0
  loc_AC77E5: FLdPr var_B8
  loc_AC77E8:  = Me.Fields
  loc_AC77ED: FLdPr var_C0
  loc_AC77F0: from_stack_2 = Me.Item(from_stack_1)
  loc_AC77F5: FLdZeroAd var_D4
  loc_AC77F8: CVarAd
  loc_AC77FC: ImpAdCallI2 IsNull()
  loc_AC7801: FFree1Ad var_C0
  loc_AC7804: FFree1Var var_E4 = ""
  loc_AC7807: BranchF loc_AC786E
  loc_AC780A: ILdRf var_88
  loc_AC780D: LitStr vbCrLf
  loc_AC7810: ConcatStr
  loc_AC7811: FStStrNoPop var_8C
  loc_AC7814: LitStr "La Partida "
  loc_AC7817: ConcatStr
  loc_AC7818: CVarStr var_F4
  loc_AC781B: FLdRfVar var_E4
  loc_AC781E: FLdRfVar var_D4
  loc_AC7821: LitVarStr var_D0, "CodiPart"
  loc_AC7826: PopAdLdVar
  loc_AC7827: FLdRfVar var_C0
  loc_AC782A: FLdPr var_B8
  loc_AC782D:  = Me.Fields
  loc_AC7832: FLdPr var_C0
  loc_AC7835: from_stack_2 = Me.Item(from_stack_1)
  loc_AC783A: FLdPr var_D4
  loc_AC783D:  = Me.Value
  loc_AC7842: FLdRfVar var_E4
  loc_AC7845: ConcatVar var_104
  loc_AC7849: LitVarStr var_114, " correspondiente a la imputacion NO EXISTE. Verifique..."
  loc_AC784E: ConcatVar var_124
  loc_AC7852: CStrVarTmp
  loc_AC7853: FStStr var_88
  loc_AC7856: FFree1Str var_8C
  loc_AC7859: FFreeAd var_C0 = ""
  loc_AC7860: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_AC786B: Branch loc_AC7AC8
  loc_AC786E: FLdRfVar var_E4
  loc_AC7871: FLdRfVar var_D4
  loc_AC7874: LitVarStr var_D0, "CodiCuco"
  loc_AC7879: PopAdLdVar
  loc_AC787A: FLdRfVar var_C0
  loc_AC787D: FLdPr var_B8
  loc_AC7880:  = Me.Fields
  loc_AC7885: FLdPr var_C0
  loc_AC7888: from_stack_2 = Me.Item(from_stack_1)
  loc_AC788D: FLdPr var_D4
  loc_AC7890:  = Me.Value
  loc_AC7895: FLdRfVar var_E4
  loc_AC7898: LitVarStr var_114, vbNullString
  loc_AC789D: HardType
  loc_AC789E: EqVarBool
  loc_AC78A0: FFreeAd var_C0 = ""
  loc_AC78A7: FFree1Var var_E4 = ""
  loc_AC78AA: BranchF loc_AC7911
  loc_AC78AD: ILdRf var_88
  loc_AC78B0: LitStr vbCrLf
  loc_AC78B3: ConcatStr
  loc_AC78B4: FStStrNoPop var_8C
  loc_AC78B7: LitStr "La Partida "
  loc_AC78BA: ConcatStr
  loc_AC78BB: CVarStr var_F4
  loc_AC78BE: FLdRfVar var_E4
  loc_AC78C1: FLdRfVar var_D4
  loc_AC78C4: LitVarStr var_D0, "CodiPart"
  loc_AC78C9: PopAdLdVar
  loc_AC78CA: FLdRfVar var_C0
  loc_AC78CD: FLdPr var_B8
  loc_AC78D0:  = Me.Fields
  loc_AC78D5: FLdPr var_C0
  loc_AC78D8: from_stack_2 = Me.Item(from_stack_1)
  loc_AC78DD: FLdPr var_D4
  loc_AC78E0:  = Me.Value
  loc_AC78E5: FLdRfVar var_E4
  loc_AC78E8: ConcatVar var_104
  loc_AC78EC: LitVarStr var_114, " NO TIENE una Cuenta Contable Asociada. Verifique..."
  loc_AC78F1: ConcatVar var_124
  loc_AC78F5: CStrVarTmp
  loc_AC78F6: FStStr var_88
  loc_AC78F9: FFree1Str var_8C
  loc_AC78FC: FFreeAd var_C0 = ""
  loc_AC7903: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_AC790E: Branch loc_AC7AC8
  loc_AC7911: FLdRfVar var_D4
  loc_AC7914: LitVarStr var_D0, "ImpuCuco"
  loc_AC7919: PopAdLdVar
  loc_AC791A: FLdRfVar var_C0
  loc_AC791D: FLdPr var_B8
  loc_AC7920:  = Me.Fields
  loc_AC7925: FLdPr var_C0
  loc_AC7928: from_stack_2 = Me.Item(from_stack_1)
  loc_AC792D: FLdZeroAd var_D4
  loc_AC7930: CVarAd
  loc_AC7934: ImpAdCallI2 IsNull()
  loc_AC7939: FFree1Ad var_C0
  loc_AC793C: FFree1Var var_E4 = ""
  loc_AC793F: BranchF loc_AC79E7
  loc_AC7942: ILdRf var_88
  loc_AC7945: LitStr vbCrLf
  loc_AC7948: ConcatStr
  loc_AC7949: FStStrNoPop var_8C
  loc_AC794C: LitStr "La Cuenta Contable "
  loc_AC794F: ConcatStr
  loc_AC7950: CVarStr var_F4
  loc_AC7953: FLdRfVar var_E4
  loc_AC7956: FLdRfVar var_D4
  loc_AC7959: LitVarStr var_D0, "CodiCuco"
  loc_AC795E: PopAdLdVar
  loc_AC795F: FLdRfVar var_C0
  loc_AC7962: FLdPr var_B8
  loc_AC7965:  = Me.Fields
  loc_AC796A: FLdPr var_C0
  loc_AC796D: from_stack_2 = Me.Item(from_stack_1)
  loc_AC7972: FLdPr var_D4
  loc_AC7975:  = Me.Value
  loc_AC797A: FLdRfVar var_E4
  loc_AC797D: ConcatVar var_104
  loc_AC7981: LitVarStr var_114, " de la Partida "
  loc_AC7986: ConcatVar var_124
  loc_AC798A: FLdRfVar var_14C
  loc_AC798D: FLdRfVar var_13C
  loc_AC7990: LitVarStr var_138, "CodiPart"
  loc_AC7995: PopAdLdVar
  loc_AC7996: FLdRfVar var_128
  loc_AC7999: FLdPr var_B8
  loc_AC799C:  = Me.Fields
  loc_AC79A1: FLdPr var_128
  loc_AC79A4: from_stack_2 = Me.Item(from_stack_1)
  loc_AC79A9: FLdPr var_13C
  loc_AC79AC:  = Me.Value
  loc_AC79B1: FLdRfVar var_14C
  loc_AC79B4: ConcatVar var_15C
  loc_AC79B8: LitVarStr var_16C, " NO EXISTE. Verifique..."
  loc_AC79BD: ConcatVar var_17C
  loc_AC79C1: CStrVarTmp
  loc_AC79C2: FStStr var_88
  loc_AC79C5: FFree1Str var_8C
  loc_AC79C8: FFreeAd var_C0 = "": var_D4 = "": var_128 = ""
  loc_AC79D3: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_14C = "": var_15C = ""
  loc_AC79E4: Branch loc_AC7AC8
  loc_AC79E7: FLdRfVar var_E4
  loc_AC79EA: FLdRfVar var_D4
  loc_AC79ED: LitVarStr var_D0, "ImpuCuco"
  loc_AC79F2: PopAdLdVar
  loc_AC79F3: FLdRfVar var_C0
  loc_AC79F6: FLdPr var_B8
  loc_AC79F9:  = Me.Fields
  loc_AC79FE: FLdPr var_C0
  loc_AC7A01: from_stack_2 = Me.Item(from_stack_1)
  loc_AC7A06: FLdPr var_D4
  loc_AC7A09:  = Me.Value
  loc_AC7A0E: FLdRfVar var_E4
  loc_AC7A11: LitVarI2 var_114, 0
  loc_AC7A16: HardType
  loc_AC7A17: EqVarBool
  loc_AC7A19: FFreeAd var_C0 = ""
  loc_AC7A20: FFree1Var var_E4 = ""
  loc_AC7A23: BranchF loc_AC7AC8
  loc_AC7A26: ILdRf var_88
  loc_AC7A29: LitStr vbCrLf
  loc_AC7A2C: ConcatStr
  loc_AC7A2D: FStStrNoPop var_8C
  loc_AC7A30: LitStr "La Cuenta Contable "
  loc_AC7A33: ConcatStr
  loc_AC7A34: CVarStr var_F4
  loc_AC7A37: FLdRfVar var_E4
  loc_AC7A3A: FLdRfVar var_D4
  loc_AC7A3D: LitVarStr var_D0, "CodiCuco"
  loc_AC7A42: PopAdLdVar
  loc_AC7A43: FLdRfVar var_C0
  loc_AC7A46: FLdPr var_B8
  loc_AC7A49:  = Me.Fields
  loc_AC7A4E: FLdPr var_C0
  loc_AC7A51: from_stack_2 = Me.Item(from_stack_1)
  loc_AC7A56: FLdPr var_D4
  loc_AC7A59:  = Me.Value
  loc_AC7A5E: FLdRfVar var_E4
  loc_AC7A61: ConcatVar var_104
  loc_AC7A65: LitVarStr var_114, " de la Partida "
  loc_AC7A6A: ConcatVar var_124
  loc_AC7A6E: FLdRfVar var_14C
  loc_AC7A71: FLdRfVar var_13C
  loc_AC7A74: LitVarStr var_138, "CodiPart"
  loc_AC7A79: PopAdLdVar
  loc_AC7A7A: FLdRfVar var_128
  loc_AC7A7D: FLdPr var_B8
  loc_AC7A80:  = Me.Fields
  loc_AC7A85: FLdPr var_128
  loc_AC7A88: from_stack_2 = Me.Item(from_stack_1)
  loc_AC7A8D: FLdPr var_13C
  loc_AC7A90:  = Me.Value
  loc_AC7A95: FLdRfVar var_14C
  loc_AC7A98: ConcatVar var_15C
  loc_AC7A9C: LitVarStr var_16C, " NO es Imputable. Verifique..."
  loc_AC7AA1: ConcatVar var_17C
  loc_AC7AA5: CStrVarTmp
  loc_AC7AA6: FStStr var_88
  loc_AC7AA9: FFree1Str var_8C
  loc_AC7AAC: FFreeAd var_C0 = "": var_D4 = "": var_128 = ""
  loc_AC7AB7: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_14C = "": var_15C = ""
  loc_AC7AC8: FLdPr var_B8
  loc_AC7ACB: Me.MoveNext
  loc_AC7AD0: Branch loc_AC77C7
  loc_AC7AD3: LitNothing
  loc_AC7AD5: FStAd var_B8 
  loc_AC7AD9: ILdRf var_88
  loc_AC7ADC: LitStr vbNullString
  loc_AC7ADF: EqStr
  loc_AC7AE1: BranchF loc_AC7CF8
  loc_AC7AE4: LitStr "INSERT INTO cajadeve (FechCaja, PeriInfo, IdImpu, CodiPart, CodiOrga, ExpeImpu, CodiCuco, DebeCaja, HabeCaja, AjusImpu)"
  loc_AC7AE7: LitStr " SELECT FechImpu, i.PeriInfo, i.IdImpu, i.CodiPart, i.CodiOrga, i.ExpeImpu, d.CodiCuco, IF(DeveImpu<0,DeveImpu*-1,0) DebeCaja, 0 HabeCaja, AjusImpu"
  loc_AC7AEA: ConcatStr
  loc_AC7AEB: FStStrNoPop var_8C
  loc_AC7AEE: LitStr " FROM imputacion i"
  loc_AC7AF1: ConcatStr
  loc_AC7AF2: FStStrNoPop var_90
  loc_AC7AF5: LitStr " INNER JOIN paraconta p ON p.PeriInfo = i.PeriInfo"
  loc_AC7AF8: ConcatStr
  loc_AC7AF9: FStStrNoPop CierraCajaDeveGuaymallen
  loc_AC7AFC: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_AC7AFF: ConcatStr
  loc_AC7B00: FStStrNoPop var_98
  loc_AC7B03: LitStr " AND d.CodiCuco != ''"
  loc_AC7B06: ConcatStr
  loc_AC7B07: FStStrNoPop var_9C
  loc_AC7B0A: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AC7B0D: ConcatStr
  loc_AC7B0E: FStStrNoPop var_A0
  loc_AC7B11: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AC7B14: ConcatStr
  loc_AC7B15: FStStrNoPop var_A4
  loc_AC7B18: LitStr " AND DeveImpu < 0"
  loc_AC7B1B: ConcatStr
  loc_AC7B1C: FStStrNoPop var_A8
  loc_AC7B1F: LitStr " AND AjusImpu > 0"
  loc_AC7B22: ConcatStr
  loc_AC7B23: FStStrNoPop var_AC
  loc_AC7B26: LitStr " AND Left(i.CodiPart,1) <> PaexPaco;"
  loc_AC7B29: ConcatStr
  loc_AC7B2A: FStStrNoPop var_B0
  loc_AC7B2D: Call EjecutarRsCls(from_stack_1v)
  loc_AC7B32: FFreeStr var_8C = "": var_90 = "": CierraCajaDeveGuaymallen = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AC7B49: LitStr "INSERT INTO cajadeve (FechCaja, PeriInfo, IdImpu, CodiPart, CodiOrga, ExpeImpu, CodiCuco, DebeCaja, HabeCaja, AjusImpu)"
  loc_AC7B4C: LitStr " SELECT FechImpu, i.PeriInfo, i.IdImpu, i.CodiPart, i.CodiOrga, i.ExpeImpu, p.CodiCuco, 0 DebeCaja, IF(DeveImpu<0,DeveImpu*-1,0) HabeCaja, AjusImpu"
  loc_AC7B4F: ConcatStr
  loc_AC7B50: FStStrNoPop var_8C
  loc_AC7B53: LitStr " FROM imputacion i"
  loc_AC7B56: ConcatStr
  loc_AC7B57: FStStrNoPop var_90
  loc_AC7B5A: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AC7B5D: ConcatStr
  loc_AC7B5E: FStStrNoPop CierraCajaDeveGuaymallen
  loc_AC7B61: LitStr " INNER JOIN paraconta pp ON pp.PeriInfo = i.PeriInfo"
  loc_AC7B64: ConcatStr
  loc_AC7B65: FStStrNoPop var_98
  loc_AC7B68: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_AC7B6B: ConcatStr
  loc_AC7B6C: FStStrNoPop var_9C
  loc_AC7B6F: LitStr " AND d.CodiCuco != ''"
  loc_AC7B72: ConcatStr
  loc_AC7B73: FStStrNoPop var_A0
  loc_AC7B76: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AC7B79: ConcatStr
  loc_AC7B7A: FStStrNoPop var_A4
  loc_AC7B7D: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AC7B80: ConcatStr
  loc_AC7B81: FStStrNoPop var_A8
  loc_AC7B84: LitStr " AND DeveImpu < 0"
  loc_AC7B87: ConcatStr
  loc_AC7B88: FStStrNoPop var_AC
  loc_AC7B8B: LitStr " AND AjusImpu > 0"
  loc_AC7B8E: ConcatStr
  loc_AC7B8F: FStStrNoPop var_B0
  loc_AC7B92: LitStr " AND Left(i.CodiPart,1) <> PaexPaco;"
  loc_AC7B95: ConcatStr
  loc_AC7B96: FStStrNoPop var_180
  loc_AC7B99: Call EjecutarRsCls(from_stack_1v)
  loc_AC7B9E: FFreeStr var_8C = "": var_90 = "": CierraCajaDeveGuaymallen = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_AC7BB7: LitStr "INSERT INTO cajadeve (FechCaja, PeriInfo, IdImpu, CodiPart, CodiOrga, ExpeImpu, CodiCuco, DebeCaja, HabeCaja, AjusImpu)"
  loc_AC7BBA: LitStr " SELECT FechImpu, i.PeriInfo, i.IdImpu, i.CodiPart, i.CodiOrga, i.ExpeImpu, d.CodiCuco, 0 DebeCaja, DeveImpu HabeCaja, AjusImpu"
  loc_AC7BBD: ConcatStr
  loc_AC7BBE: FStStrNoPop var_8C
  loc_AC7BC1: LitStr " FROM imputacion i"
  loc_AC7BC4: ConcatStr
  loc_AC7BC5: FStStrNoPop var_90
  loc_AC7BC8: LitStr " INNER JOIN paraconta p ON p.PeriInfo = i.PeriInfo"
  loc_AC7BCB: ConcatStr
  loc_AC7BCC: FStStrNoPop CierraCajaDeveGuaymallen
  loc_AC7BCF: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_AC7BD2: ConcatStr
  loc_AC7BD3: FStStrNoPop var_98
  loc_AC7BD6: LitStr " AND d.CodiCuco != ''"
  loc_AC7BD9: ConcatStr
  loc_AC7BDA: FStStrNoPop var_9C
  loc_AC7BDD: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AC7BE0: ConcatStr
  loc_AC7BE1: FStStrNoPop var_A0
  loc_AC7BE4: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AC7BE7: ConcatStr
  loc_AC7BE8: FStStrNoPop var_A4
  loc_AC7BEB: LitStr " AND DeveImpu > 0"
  loc_AC7BEE: ConcatStr
  loc_AC7BEF: FStStrNoPop var_A8
  loc_AC7BF2: LitStr " AND AjusImpu > 0"
  loc_AC7BF5: ConcatStr
  loc_AC7BF6: FStStrNoPop var_AC
  loc_AC7BF9: LitStr " AND Left(i.CodiPart,1) <> PaexPaco;"
  loc_AC7BFC: ConcatStr
  loc_AC7BFD: FStStrNoPop var_B0
  loc_AC7C00: Call EjecutarRsCls(from_stack_1v)
  loc_AC7C05: FFreeStr var_8C = "": var_90 = "": CierraCajaDeveGuaymallen = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AC7C1C: LitStr "INSERT INTO cajadeve (FechCaja, PeriInfo, IdImpu, CodiPart, CodiOrga, ExpeImpu, CodiCuco, DebeCaja, HabeCaja, AjusImpu)"
  loc_AC7C1F: LitStr " SELECT FechImpu, i.PeriInfo, i.IdImpu, i.CodiPart, i.CodiOrga, i.ExpeImpu, p.CodiCuco, DeveImpu DebeCaja, 0 HabeCaja, AjusImpu"
  loc_AC7C22: ConcatStr
  loc_AC7C23: FStStrNoPop var_8C
  loc_AC7C26: LitStr " FROM imputacion i"
  loc_AC7C29: ConcatStr
  loc_AC7C2A: FStStrNoPop var_90
  loc_AC7C2D: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AC7C30: ConcatStr
  loc_AC7C31: FStStrNoPop CierraCajaDeveGuaymallen
  loc_AC7C34: LitStr " INNER JOIN paraconta pp ON pp.PeriInfo = i.PeriInfo"
  loc_AC7C37: ConcatStr
  loc_AC7C38: FStStrNoPop var_98
  loc_AC7C3B: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_AC7C3E: ConcatStr
  loc_AC7C3F: FStStrNoPop var_9C
  loc_AC7C42: LitStr " AND d.CodiCuco != ''"
  loc_AC7C45: ConcatStr
  loc_AC7C46: FStStrNoPop var_A0
  loc_AC7C49: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AC7C4C: ConcatStr
  loc_AC7C4D: FStStrNoPop var_A4
  loc_AC7C50: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AC7C53: ConcatStr
  loc_AC7C54: FStStrNoPop var_A8
  loc_AC7C57: LitStr " AND DeveImpu > 0"
  loc_AC7C5A: ConcatStr
  loc_AC7C5B: FStStrNoPop var_AC
  loc_AC7C5E: LitStr " AND AjusImpu > 0"
  loc_AC7C61: ConcatStr
  loc_AC7C62: FStStrNoPop var_B0
  loc_AC7C65: LitStr " AND Left(i.CodiPart,1) <> PaexPaco;"
  loc_AC7C68: ConcatStr
  loc_AC7C69: FStStrNoPop var_180
  loc_AC7C6C: Call EjecutarRsCls(from_stack_1v)
  loc_AC7C71: FFreeStr var_8C = "": var_90 = "": CierraCajaDeveGuaymallen = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_AC7C8A: LitStr "INSERT INTO cajadeve (FechCaja, PeriInfo, IdImpu, CodiPart, CodiOrga, ExpeImpu, CodiCuco, DebeCaja, HabeCaja, AjusImpu)"
  loc_AC7C8D: LitStr " SELECT FechImpu, i.PeriInfo, i.IdImpu, i.CodiPart, i.CodiOrga, i.ExpeImpu, p.CodiCuco, IF(DeveImpu>0,DeveImpu,0) DebeCaja, IF(DeveImpu<0,DeveImpu*-1,0) HabeCaja, AjusImpu"
  loc_AC7C90: ConcatStr
  loc_AC7C91: FStStrNoPop var_8C
  loc_AC7C94: LitStr " FROM imputacion i"
  loc_AC7C97: ConcatStr
  loc_AC7C98: FStStrNoPop var_90
  loc_AC7C9B: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AC7C9E: ConcatStr
  loc_AC7C9F: FStStrNoPop CierraCajaDeveGuaymallen
  loc_AC7CA2: LitStr " INNER JOIN paraconta pp ON pp.PeriInfo = i.PeriInfo"
  loc_AC7CA5: ConcatStr
  loc_AC7CA6: FStStrNoPop var_98
  loc_AC7CA9: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_AC7CAC: ConcatStr
  loc_AC7CAD: FStStrNoPop var_9C
  loc_AC7CB0: LitStr " AND d.CodiCuco = ''"
  loc_AC7CB3: ConcatStr
  loc_AC7CB4: FStStrNoPop var_A0
  loc_AC7CB7: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AC7CBA: ConcatStr
  loc_AC7CBB: FStStrNoPop var_A4
  loc_AC7CBE: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AC7CC1: ConcatStr
  loc_AC7CC2: FStStrNoPop var_A8
  loc_AC7CC5: LitStr " AND DeveImpu != 0"
  loc_AC7CC8: ConcatStr
  loc_AC7CC9: FStStrNoPop var_AC
  loc_AC7CCC: LitStr " AND AjusImpu > 0"
  loc_AC7CCF: ConcatStr
  loc_AC7CD0: FStStrNoPop var_B0
  loc_AC7CD3: LitStr " AND Left(i.CodiPart,1) <> PaexPaco;"
  loc_AC7CD6: ConcatStr
  loc_AC7CD7: FStStrNoPop var_180
  loc_AC7CDA: Call EjecutarRsCls(from_stack_1v)
  loc_AC7CDF: FFreeStr var_8C = "": var_90 = "": CierraCajaDeveGuaymallen = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_AC7CF8: ExitProcCbHresult
End Function

Public Function CierraCajaAltaPatr() 'B239A4
  'Data Table: 46D5B0
  loc_B230C4: ZeroRetVal
  loc_B230C6: LitStr "DELETE FROM cajaaltapatr WHERE FechCaja BETWEEN @desde AND @hasta;"
  loc_B230C9: Call EjecutarRsCls(from_stack_1v)
  loc_B230CE: LitStr "SELECT IdInpa, CodiInpa, ip.CodiCuco, cc.ImpuCuco, CodiAlbius, i.CodiPart, p.ImpuPart"
  loc_B230D1: LitStr " FROM invepatrimonial ip"
  loc_B230D4: ConcatStr
  loc_B230D5: FStStrNoPop var_8C
  loc_B230D8: LitStr " LEFT JOIN infogov.cuentacontable cc ON cc.PeriInfo = Year(ip.FechInpa) AND cc.CodiCuco = ip.CodiCuco"
  loc_B230DB: ConcatStr
  loc_B230DC: FStStrNoPop var_90
  loc_B230DF: LitStr " LEFT JOIN imputacion i ON i.PeriInfo = ip.PeriInfo AND i.IdImpu = ip.IdImpu"
  loc_B230E2: ConcatStr
  loc_B230E3: FStStrNoPop CierraCajaAltaPatr
  loc_B230E6: LitStr " LEFT JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_B230E9: ConcatStr
  loc_B230EA: FStStrNoPop var_98
  loc_B230ED: LitStr " WHERE ip.PeriInfo = Year(@desde)"
  loc_B230F0: ConcatStr
  loc_B230F1: FStStrNoPop var_9C
  loc_B230F4: LitStr " AND FechInpa BETWEEN @desde AND @hasta"
  loc_B230F7: ConcatStr
  loc_B230F8: FStStrNoPop var_A0
  loc_B230FB: LitStr " AND CodiInpa > 0;"
  loc_B230FE: ConcatStr
  loc_B230FF: FStStrNoPop var_A4
  loc_B23102: Call EjecutarRsCls(from_stack_1v)
  loc_B23107: FFreeStr var_8C = "": var_90 = "": CierraCajaAltaPatr = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_B23118: FLdRfVar var_A8
  loc_B2311B: FLdPr Me
  loc_B2311E: MemLdPr global_56
  loc_B23121:  = Me.RecordCount
  loc_B23126: ILdRf var_A8
  loc_B23129: LitI4 0
  loc_B2312E: GtI4
  loc_B2312F: BranchF loc_B236AA
  loc_B23132: FLdPr Me
  loc_B23135: MemLdStr global_56
  loc_B23138: FStAd var_AC 
  loc_B2313C: FLdPr var_AC
  loc_B2313F: Me.MoveFirst
  loc_B23144: FLdRfVar var_AE
  loc_B23147: FLdPr var_AC
  loc_B2314A:  = Me.EOF
  loc_B2314F: FLdI2 var_AE
  loc_B23152: NotI4
  loc_B23153: BranchF loc_B23617
  loc_B23156: FLdRfVar var_D8
  loc_B23159: FLdRfVar var_C8
  loc_B2315C: LitVarStr var_C4, "CodiCuco"
  loc_B23161: PopAdLdVar
  loc_B23162: FLdRfVar var_B4
  loc_B23165: FLdPr var_AC
  loc_B23168:  = Me.Fields
  loc_B2316D: FLdPr var_B4
  loc_B23170: from_stack_2 = Me.Item(from_stack_1)
  loc_B23175: FLdPr var_C8
  loc_B23178:  = Me.Value
  loc_B2317D: FLdRfVar var_D8
  loc_B23180: LitVarStr var_E8, vbNullString
  loc_B23185: HardType
  loc_B23186: EqVarBool
  loc_B23188: FFreeAd var_B4 = ""
  loc_B2318F: FFree1Var var_D8 = ""
  loc_B23192: BranchF loc_B231EF
  loc_B23195: ILdRf var_88
  loc_B23198: LitStr "El Bien "
  loc_B2319B: ConcatStr
  loc_B2319C: CVarStr var_F8
  loc_B2319F: FLdRfVar var_D8
  loc_B231A2: FLdRfVar var_C8
  loc_B231A5: LitVarStr var_C4, "CodiInpa"
  loc_B231AA: PopAdLdVar
  loc_B231AB: FLdRfVar var_B4
  loc_B231AE: FLdPr var_AC
  loc_B231B1:  = Me.Fields
  loc_B231B6: FLdPr var_B4
  loc_B231B9: from_stack_2 = Me.Item(from_stack_1)
  loc_B231BE: FLdPr var_C8
  loc_B231C1:  = Me.Value
  loc_B231C6: FLdRfVar var_D8
  loc_B231C9: ConcatVar var_108
  loc_B231CD: LitVarStr var_E8, " NO TIENE una Cuenta Contable Patrimonial asociada. Verifique..."
  loc_B231D2: ConcatVar var_118
  loc_B231D6: CStrVarTmp
  loc_B231D7: FStStr var_88
  loc_B231DA: FFreeAd var_B4 = ""
  loc_B231E1: FFreeVar var_F8 = "": var_D8 = "": var_108 = ""
  loc_B231EC: Branch loc_B23392
  loc_B231EF: FLdRfVar var_C8
  loc_B231F2: LitVarStr var_C4, "ImpuCuco"
  loc_B231F7: PopAdLdVar
  loc_B231F8: FLdRfVar var_B4
  loc_B231FB: FLdPr var_AC
  loc_B231FE:  = Me.Fields
  loc_B23203: FLdPr var_B4
  loc_B23206: from_stack_2 = Me.Item(from_stack_1)
  loc_B2320B: FLdZeroAd var_C8
  loc_B2320E: CVarAd
  loc_B23212: ImpAdCallI2 IsNull()
  loc_B23217: FFree1Ad var_B4
  loc_B2321A: FFree1Var var_D8 = ""
  loc_B2321D: BranchF loc_B232BB
  loc_B23220: ILdRf var_88
  loc_B23223: LitStr "La Cuenta Contable Patrimonial "
  loc_B23226: ConcatStr
  loc_B23227: CVarStr var_F8
  loc_B2322A: FLdRfVar var_D8
  loc_B2322D: FLdRfVar var_C8
  loc_B23230: LitVarStr var_C4, "CodiCuco"
  loc_B23235: PopAdLdVar
  loc_B23236: FLdRfVar var_B4
  loc_B23239: FLdPr var_AC
  loc_B2323C:  = Me.Fields
  loc_B23241: FLdPr var_B4
  loc_B23244: from_stack_2 = Me.Item(from_stack_1)
  loc_B23249: FLdPr var_C8
  loc_B2324C:  = Me.Value
  loc_B23251: FLdRfVar var_D8
  loc_B23254: ConcatVar var_108
  loc_B23258: LitVarStr var_E8, " del Bien "
  loc_B2325D: ConcatVar var_118
  loc_B23261: FLdRfVar var_140
  loc_B23264: FLdRfVar var_130
  loc_B23267: LitVarStr var_12C, "CodiInpa"
  loc_B2326C: PopAdLdVar
  loc_B2326D: FLdRfVar var_11C
  loc_B23270: FLdPr var_AC
  loc_B23273:  = Me.Fields
  loc_B23278: FLdPr var_11C
  loc_B2327B: from_stack_2 = Me.Item(from_stack_1)
  loc_B23280: FLdPr var_130
  loc_B23283:  = Me.Value
  loc_B23288: FLdRfVar var_140
  loc_B2328B: ConcatVar var_150
  loc_B2328F: LitVarStr var_160, " NO EXISTE. Verifique..."
  loc_B23294: ConcatVar var_170
  loc_B23298: CStrVarTmp
  loc_B23299: FStStr var_88
  loc_B2329C: FFreeAd var_B4 = "": var_C8 = "": var_11C = ""
  loc_B232A7: FFreeVar var_F8 = "": var_D8 = "": var_108 = "": var_118 = "": var_140 = "": var_150 = ""
  loc_B232B8: Branch loc_B23392
  loc_B232BB: FLdRfVar var_D8
  loc_B232BE: FLdRfVar var_C8
  loc_B232C1: LitVarStr var_C4, "ImpuCuco"
  loc_B232C6: PopAdLdVar
  loc_B232C7: FLdRfVar var_B4
  loc_B232CA: FLdPr var_AC
  loc_B232CD:  = Me.Fields
  loc_B232D2: FLdPr var_B4
  loc_B232D5: from_stack_2 = Me.Item(from_stack_1)
  loc_B232DA: FLdPr var_C8
  loc_B232DD:  = Me.Value
  loc_B232E2: FLdRfVar var_D8
  loc_B232E5: LitVarI2 var_E8, 0
  loc_B232EA: HardType
  loc_B232EB: EqVarBool
  loc_B232ED: FFreeAd var_B4 = ""
  loc_B232F4: FFree1Var var_D8 = ""
  loc_B232F7: BranchF loc_B23392
  loc_B232FA: ILdRf var_88
  loc_B232FD: LitStr "La Cuenta Contable Patrimonial "
  loc_B23300: ConcatStr
  loc_B23301: CVarStr var_F8
  loc_B23304: FLdRfVar var_D8
  loc_B23307: FLdRfVar var_C8
  loc_B2330A: LitVarStr var_C4, "CodiCuco"
  loc_B2330F: PopAdLdVar
  loc_B23310: FLdRfVar var_B4
  loc_B23313: FLdPr var_AC
  loc_B23316:  = Me.Fields
  loc_B2331B: FLdPr var_B4
  loc_B2331E: from_stack_2 = Me.Item(from_stack_1)
  loc_B23323: FLdPr var_C8
  loc_B23326:  = Me.Value
  loc_B2332B: FLdRfVar var_D8
  loc_B2332E: ConcatVar var_108
  loc_B23332: LitVarStr var_E8, " del Bien "
  loc_B23337: ConcatVar var_118
  loc_B2333B: FLdRfVar var_140
  loc_B2333E: FLdRfVar var_130
  loc_B23341: LitVarStr var_12C, "CodiInpa"
  loc_B23346: PopAdLdVar
  loc_B23347: FLdRfVar var_11C
  loc_B2334A: FLdPr var_AC
  loc_B2334D:  = Me.Fields
  loc_B23352: FLdPr var_11C
  loc_B23355: from_stack_2 = Me.Item(from_stack_1)
  loc_B2335A: FLdPr var_130
  loc_B2335D:  = Me.Value
  loc_B23362: FLdRfVar var_140
  loc_B23365: ConcatVar var_150
  loc_B23369: LitVarStr var_160, " NO es Imputable. Verifique..."
  loc_B2336E: ConcatVar var_170
  loc_B23372: CStrVarTmp
  loc_B23373: FStStr var_88
  loc_B23376: FFreeAd var_B4 = "": var_C8 = "": var_11C = ""
  loc_B23381: FFreeVar var_F8 = "": var_D8 = "": var_108 = "": var_118 = "": var_140 = "": var_150 = ""
  loc_B23392: FLdRfVar var_D8
  loc_B23395: FLdRfVar var_C8
  loc_B23398: LitVarStr var_C4, "CodiAlbius"
  loc_B2339D: PopAdLdVar
  loc_B2339E: FLdRfVar var_B4
  loc_B233A1: FLdPr var_AC
  loc_B233A4:  = Me.Fields
  loc_B233A9: FLdPr var_B4
  loc_B233AC: from_stack_2 = Me.Item(from_stack_1)
  loc_B233B1: FLdPr var_C8
  loc_B233B4:  = Me.Value
  loc_B233B9: FLdRfVar var_D8
  loc_B233BC: FnCByteVar
  loc_B233BE: CI2UI1
  loc_B233C0: LitI2_Byte 2
  loc_B233C2: EqI2
  loc_B233C3: FFreeAd var_B4 = ""
  loc_B233CA: FFree1Var var_D8 = ""
  loc_B233CD: BranchF loc_B2360C
  loc_B233D0: FLdRfVar var_D8
  loc_B233D3: FLdRfVar var_C8
  loc_B233D6: LitVarStr var_C4, "CodiPart"
  loc_B233DB: PopAdLdVar
  loc_B233DC: FLdRfVar var_B4
  loc_B233DF: FLdPr var_AC
  loc_B233E2:  = Me.Fields
  loc_B233E7: FLdPr var_B4
  loc_B233EA: from_stack_2 = Me.Item(from_stack_1)
  loc_B233EF: FLdPr var_C8
  loc_B233F2:  = Me.Value
  loc_B233F7: FLdRfVar var_D8
  loc_B233FA: LitVarStr var_E8, vbNullString
  loc_B233FF: HardType
  loc_B23400: EqVarBool
  loc_B23402: FFreeAd var_B4 = ""
  loc_B23409: FFree1Var var_D8 = ""
  loc_B2340C: BranchF loc_B23469
  loc_B2340F: ILdRf var_88
  loc_B23412: LitStr "El Bien "
  loc_B23415: ConcatStr
  loc_B23416: CVarStr var_F8
  loc_B23419: FLdRfVar var_D8
  loc_B2341C: FLdRfVar var_C8
  loc_B2341F: LitVarStr var_C4, "CodiInpa"
  loc_B23424: PopAdLdVar
  loc_B23425: FLdRfVar var_B4
  loc_B23428: FLdPr var_AC
  loc_B2342B:  = Me.Fields
  loc_B23430: FLdPr var_B4
  loc_B23433: from_stack_2 = Me.Item(from_stack_1)
  loc_B23438: FLdPr var_C8
  loc_B2343B:  = Me.Value
  loc_B23440: FLdRfVar var_D8
  loc_B23443: ConcatVar var_108
  loc_B23447: LitVarStr var_E8, " NO TIENE Partida. Verifique..."
  loc_B2344C: ConcatVar var_118
  loc_B23450: CStrVarTmp
  loc_B23451: FStStr var_88
  loc_B23454: FFreeAd var_B4 = ""
  loc_B2345B: FFreeVar var_F8 = "": var_D8 = "": var_108 = ""
  loc_B23466: Branch loc_B2360C
  loc_B23469: FLdRfVar var_C8
  loc_B2346C: LitVarStr var_C4, "ImpuPart"
  loc_B23471: PopAdLdVar
  loc_B23472: FLdRfVar var_B4
  loc_B23475: FLdPr var_AC
  loc_B23478:  = Me.Fields
  loc_B2347D: FLdPr var_B4
  loc_B23480: from_stack_2 = Me.Item(from_stack_1)
  loc_B23485: FLdZeroAd var_C8
  loc_B23488: CVarAd
  loc_B2348C: ImpAdCallI2 IsNull()
  loc_B23491: FFree1Ad var_B4
  loc_B23494: FFree1Var var_D8 = ""
  loc_B23497: BranchF loc_B23535
  loc_B2349A: ILdRf var_88
  loc_B2349D: LitStr "La Partida "
  loc_B234A0: ConcatStr
  loc_B234A1: CVarStr var_F8
  loc_B234A4: FLdRfVar var_D8
  loc_B234A7: FLdRfVar var_C8
  loc_B234AA: LitVarStr var_C4, "CodiPart"
  loc_B234AF: PopAdLdVar
  loc_B234B0: FLdRfVar var_B4
  loc_B234B3: FLdPr var_AC
  loc_B234B6:  = Me.Fields
  loc_B234BB: FLdPr var_B4
  loc_B234BE: from_stack_2 = Me.Item(from_stack_1)
  loc_B234C3: FLdPr var_C8
  loc_B234C6:  = Me.Value
  loc_B234CB: FLdRfVar var_D8
  loc_B234CE: ConcatVar var_108
  loc_B234D2: LitVarStr var_E8, " del Bien "
  loc_B234D7: ConcatVar var_118
  loc_B234DB: FLdRfVar var_140
  loc_B234DE: FLdRfVar var_130
  loc_B234E1: LitVarStr var_12C, "CodiInpa"
  loc_B234E6: PopAdLdVar
  loc_B234E7: FLdRfVar var_11C
  loc_B234EA: FLdPr var_AC
  loc_B234ED:  = Me.Fields
  loc_B234F2: FLdPr var_11C
  loc_B234F5: from_stack_2 = Me.Item(from_stack_1)
  loc_B234FA: FLdPr var_130
  loc_B234FD:  = Me.Value
  loc_B23502: FLdRfVar var_140
  loc_B23505: ConcatVar var_150
  loc_B23509: LitVarStr var_160, " NO EXISTE. Verifique..."
  loc_B2350E: ConcatVar var_170
  loc_B23512: CStrVarTmp
  loc_B23513: FStStr var_88
  loc_B23516: FFreeAd var_B4 = "": var_C8 = "": var_11C = ""
  loc_B23521: FFreeVar var_F8 = "": var_D8 = "": var_108 = "": var_118 = "": var_140 = "": var_150 = ""
  loc_B23532: Branch loc_B2360C
  loc_B23535: FLdRfVar var_D8
  loc_B23538: FLdRfVar var_C8
  loc_B2353B: LitVarStr var_C4, "ImpuPart"
  loc_B23540: PopAdLdVar
  loc_B23541: FLdRfVar var_B4
  loc_B23544: FLdPr var_AC
  loc_B23547:  = Me.Fields
  loc_B2354C: FLdPr var_B4
  loc_B2354F: from_stack_2 = Me.Item(from_stack_1)
  loc_B23554: FLdPr var_C8
  loc_B23557:  = Me.Value
  loc_B2355C: FLdRfVar var_D8
  loc_B2355F: LitVarI2 var_E8, 0
  loc_B23564: HardType
  loc_B23565: EqVarBool
  loc_B23567: FFreeAd var_B4 = ""
  loc_B2356E: FFree1Var var_D8 = ""
  loc_B23571: BranchF loc_B2360C
  loc_B23574: ILdRf var_88
  loc_B23577: LitStr "La Partida "
  loc_B2357A: ConcatStr
  loc_B2357B: CVarStr var_F8
  loc_B2357E: FLdRfVar var_D8
  loc_B23581: FLdRfVar var_C8
  loc_B23584: LitVarStr var_C4, "CodiPart"
  loc_B23589: PopAdLdVar
  loc_B2358A: FLdRfVar var_B4
  loc_B2358D: FLdPr var_AC
  loc_B23590:  = Me.Fields
  loc_B23595: FLdPr var_B4
  loc_B23598: from_stack_2 = Me.Item(from_stack_1)
  loc_B2359D: FLdPr var_C8
  loc_B235A0:  = Me.Value
  loc_B235A5: FLdRfVar var_D8
  loc_B235A8: ConcatVar var_108
  loc_B235AC: LitVarStr var_E8, " del Bien "
  loc_B235B1: ConcatVar var_118
  loc_B235B5: FLdRfVar var_140
  loc_B235B8: FLdRfVar var_130
  loc_B235BB: LitVarStr var_12C, "CodiInpa"
  loc_B235C0: PopAdLdVar
  loc_B235C1: FLdRfVar var_11C
  loc_B235C4: FLdPr var_AC
  loc_B235C7:  = Me.Fields
  loc_B235CC: FLdPr var_11C
  loc_B235CF: from_stack_2 = Me.Item(from_stack_1)
  loc_B235D4: FLdPr var_130
  loc_B235D7:  = Me.Value
  loc_B235DC: FLdRfVar var_140
  loc_B235DF: ConcatVar var_150
  loc_B235E3: LitVarStr var_160, " NO es Imputable. Verifique..."
  loc_B235E8: ConcatVar var_170
  loc_B235EC: CStrVarTmp
  loc_B235ED: FStStr var_88
  loc_B235F0: FFreeAd var_B4 = "": var_C8 = "": var_11C = ""
  loc_B235FB: FFreeVar var_F8 = "": var_D8 = "": var_108 = "": var_118 = "": var_140 = "": var_150 = ""
  loc_B2360C: FLdPr var_AC
  loc_B2360F: Me.MoveNext
  loc_B23614: Branch loc_B23144
  loc_B23617: LitNothing
  loc_B23619: FStAd var_AC 
  loc_B2361D: ILdRf var_88
  loc_B23620: LitStr vbNullString
  loc_B23623: EqStr
  loc_B23625: BranchF loc_B236AA
  loc_B23628: LitStr "INSERT INTO cajaaltapatr (IdInpa,FechCaja,CodiInpa,BajaCaja,CodiCuco,DebeCaja)"
  loc_B2362B: LitStr " SELECT IdInpa, FechInpa, CodiInpa, 0, CodiCuco, ImpoInpa"
  loc_B2362E: ConcatStr
  loc_B2362F: FStStrNoPop var_8C
  loc_B23632: LitStr " FROM invepatrimonial"
  loc_B23635: ConcatStr
  loc_B23636: FStStrNoPop var_90
  loc_B23639: LitStr " WHERE invepatrimonial.PeriInfo = Year(@desde)"
  loc_B2363C: ConcatStr
  loc_B2363D: FStStrNoPop CierraCajaAltaPatr
  loc_B23640: LitStr " AND FechInpa BETWEEN @desde AND @hasta"
  loc_B23643: ConcatStr
  loc_B23644: FStStrNoPop var_98
  loc_B23647: LitStr " AND CodiInpa > 0"
  loc_B2364A: ConcatStr
  loc_B2364B: FStStrNoPop var_9C
  loc_B2364E: LitStr " AND ImpoInpa > 0"
  loc_B23651: ConcatStr
  loc_B23652: FStStrNoPop var_A0
  loc_B23655: Call EjecutarRsCls(from_stack_1v)
  loc_B2365A: FFreeStr var_8C = "": var_90 = "": CierraCajaAltaPatr = "": var_98 = "": var_9C = ""
  loc_B23669: LitStr "INSERT INTO cajaaltapatr (IdInpa,FechCaja,CodiInpa,BajaCaja,CodiCuco,HabeCaja)"
  loc_B2366C: LitStr " SELECT IdInpa, FechInpa, CodiInpa, 1, CodiCuco, ImpoInpa*-1"
  loc_B2366F: ConcatStr
  loc_B23670: FStStrNoPop var_8C
  loc_B23673: LitStr " FROM invepatrimonial"
  loc_B23676: ConcatStr
  loc_B23677: FStStrNoPop var_90
  loc_B2367A: LitStr " WHERE invepatrimonial.PeriInfo = Year(@desde)"
  loc_B2367D: ConcatStr
  loc_B2367E: FStStrNoPop CierraCajaAltaPatr
  loc_B23681: LitStr " AND FechInpa BETWEEN @desde AND @hasta"
  loc_B23684: ConcatStr
  loc_B23685: FStStrNoPop var_98
  loc_B23688: LitStr " AND CodiInpa > 0"
  loc_B2368B: ConcatStr
  loc_B2368C: FStStrNoPop var_9C
  loc_B2368F: LitStr " AND ImpoInpa < 0"
  loc_B23692: ConcatStr
  loc_B23693: FStStrNoPop var_A0
  loc_B23696: Call EjecutarRsCls(from_stack_1v)
  loc_B2369B: FFreeStr var_8C = "": var_90 = "": CierraCajaAltaPatr = "": var_98 = "": var_9C = ""
  loc_B236AA: LitStr "SELECT IdInpa, CodiInpa, invepatrimonial.CodiCuco, cuentacontable.ImpuCuco"
  loc_B236AD: LitStr " FROM invepatrimonial"
  loc_B236B0: ConcatStr
  loc_B236B1: FStStrNoPop var_8C
  loc_B236B4: LitStr " LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = Year(invepatrimonial.FebaInpa) AND infogov.cuentacontable.CodiCuco = invepatrimonial.CodiCuco"
  loc_B236B7: ConcatStr
  loc_B236B8: FStStrNoPop var_90
  loc_B236BB: LitStr " WHERE FebaInpa BETWEEN @desde AND @hasta"
  loc_B236BE: ConcatStr
  loc_B236BF: FStStrNoPop CierraCajaAltaPatr
  loc_B236C2: LitStr " AND CodiInpa > 0"
  loc_B236C5: ConcatStr
  loc_B236C6: FStStrNoPop var_98
  loc_B236C9: Call EjecutarRsCls(from_stack_1v)
  loc_B236CE: FFreeStr var_8C = "": var_90 = "": CierraCajaAltaPatr = ""
  loc_B236D9: FLdRfVar var_A8
  loc_B236DC: FLdPr Me
  loc_B236DF: MemLdPr global_56
  loc_B236E2:  = Me.RecordCount
  loc_B236E7: ILdRf var_A8
  loc_B236EA: LitI4 0
  loc_B236EF: GtI4
  loc_B236F0: BranchF loc_B2399E
  loc_B236F3: FLdPr Me
  loc_B236F6: MemLdStr global_56
  loc_B236F9: FStAd var_174 
  loc_B236FD: FLdPr var_174
  loc_B23700: Me.MoveFirst
  loc_B23705: FLdRfVar var_AE
  loc_B23708: FLdPr var_174
  loc_B2370B:  = Me.EOF
  loc_B23710: FLdI2 var_AE
  loc_B23713: NotI4
  loc_B23714: BranchF loc_B2395E
  loc_B23717: FLdRfVar var_D8
  loc_B2371A: FLdRfVar var_C8
  loc_B2371D: LitVarStr var_C4, "CodiCuco"
  loc_B23722: PopAdLdVar
  loc_B23723: FLdRfVar var_B4
  loc_B23726: FLdPr var_174
  loc_B23729:  = Me.Fields
  loc_B2372E: FLdPr var_B4
  loc_B23731: from_stack_2 = Me.Item(from_stack_1)
  loc_B23736: FLdPr var_C8
  loc_B23739:  = Me.Value
  loc_B2373E: FLdRfVar var_D8
  loc_B23741: LitVarStr var_E8, vbNullString
  loc_B23746: HardType
  loc_B23747: EqVarBool
  loc_B23749: FFreeAd var_B4 = ""
  loc_B23750: FFree1Var var_D8 = ""
  loc_B23753: BranchF loc_B237B0
  loc_B23756: ILdRf var_88
  loc_B23759: LitStr "El Bien "
  loc_B2375C: ConcatStr
  loc_B2375D: CVarStr var_F8
  loc_B23760: FLdRfVar var_D8
  loc_B23763: FLdRfVar var_C8
  loc_B23766: LitVarStr var_C4, "CodiInpa"
  loc_B2376B: PopAdLdVar
  loc_B2376C: FLdRfVar var_B4
  loc_B2376F: FLdPr var_174
  loc_B23772:  = Me.Fields
  loc_B23777: FLdPr var_B4
  loc_B2377A: from_stack_2 = Me.Item(from_stack_1)
  loc_B2377F: FLdPr var_C8
  loc_B23782:  = Me.Value
  loc_B23787: FLdRfVar var_D8
  loc_B2378A: ConcatVar var_108
  loc_B2378E: LitVarStr var_E8, " NO TIENE una Cuenta Contable Patrimonial asociada. Verifique..."
  loc_B23793: ConcatVar var_118
  loc_B23797: CStrVarTmp
  loc_B23798: FStStr var_88
  loc_B2379B: FFreeAd var_B4 = ""
  loc_B237A2: FFreeVar var_F8 = "": var_D8 = "": var_108 = ""
  loc_B237AD: Branch loc_B23953
  loc_B237B0: FLdRfVar var_C8
  loc_B237B3: LitVarStr var_C4, "ImpuCuco"
  loc_B237B8: PopAdLdVar
  loc_B237B9: FLdRfVar var_B4
  loc_B237BC: FLdPr var_174
  loc_B237BF:  = Me.Fields
  loc_B237C4: FLdPr var_B4
  loc_B237C7: from_stack_2 = Me.Item(from_stack_1)
  loc_B237CC: FLdZeroAd var_C8
  loc_B237CF: CVarAd
  loc_B237D3: ImpAdCallI2 IsNull()
  loc_B237D8: FFree1Ad var_B4
  loc_B237DB: FFree1Var var_D8 = ""
  loc_B237DE: BranchF loc_B2387C
  loc_B237E1: ILdRf var_88
  loc_B237E4: LitStr "La Cuenta Contable Patrimonial "
  loc_B237E7: ConcatStr
  loc_B237E8: CVarStr var_F8
  loc_B237EB: FLdRfVar var_D8
  loc_B237EE: FLdRfVar var_C8
  loc_B237F1: LitVarStr var_C4, "CodiCuco"
  loc_B237F6: PopAdLdVar
  loc_B237F7: FLdRfVar var_B4
  loc_B237FA: FLdPr var_174
  loc_B237FD:  = Me.Fields
  loc_B23802: FLdPr var_B4
  loc_B23805: from_stack_2 = Me.Item(from_stack_1)
  loc_B2380A: FLdPr var_C8
  loc_B2380D:  = Me.Value
  loc_B23812: FLdRfVar var_D8
  loc_B23815: ConcatVar var_108
  loc_B23819: LitVarStr var_E8, " del Bien "
  loc_B2381E: ConcatVar var_118
  loc_B23822: FLdRfVar var_140
  loc_B23825: FLdRfVar var_130
  loc_B23828: LitVarStr var_12C, "CodiInpa"
  loc_B2382D: PopAdLdVar
  loc_B2382E: FLdRfVar var_11C
  loc_B23831: FLdPr var_174
  loc_B23834:  = Me.Fields
  loc_B23839: FLdPr var_11C
  loc_B2383C: from_stack_2 = Me.Item(from_stack_1)
  loc_B23841: FLdPr var_130
  loc_B23844:  = Me.Value
  loc_B23849: FLdRfVar var_140
  loc_B2384C: ConcatVar var_150
  loc_B23850: LitVarStr var_160, " NO EXISTE. Verifique..."
  loc_B23855: ConcatVar var_170
  loc_B23859: CStrVarTmp
  loc_B2385A: FStStr var_88
  loc_B2385D: FFreeAd var_B4 = "": var_C8 = "": var_11C = ""
  loc_B23868: FFreeVar var_F8 = "": var_D8 = "": var_108 = "": var_118 = "": var_140 = "": var_150 = ""
  loc_B23879: Branch loc_B23953
  loc_B2387C: FLdRfVar var_D8
  loc_B2387F: FLdRfVar var_C8
  loc_B23882: LitVarStr var_C4, "ImpuCuco"
  loc_B23887: PopAdLdVar
  loc_B23888: FLdRfVar var_B4
  loc_B2388B: FLdPr var_174
  loc_B2388E:  = Me.Fields
  loc_B23893: FLdPr var_B4
  loc_B23896: from_stack_2 = Me.Item(from_stack_1)
  loc_B2389B: FLdPr var_C8
  loc_B2389E:  = Me.Value
  loc_B238A3: FLdRfVar var_D8
  loc_B238A6: LitVarI2 var_E8, 0
  loc_B238AB: HardType
  loc_B238AC: EqVarBool
  loc_B238AE: FFreeAd var_B4 = ""
  loc_B238B5: FFree1Var var_D8 = ""
  loc_B238B8: BranchF loc_B23953
  loc_B238BB: ILdRf var_88
  loc_B238BE: LitStr "La Cuenta Contable Patrimonial "
  loc_B238C1: ConcatStr
  loc_B238C2: CVarStr var_F8
  loc_B238C5: FLdRfVar var_D8
  loc_B238C8: FLdRfVar var_C8
  loc_B238CB: LitVarStr var_C4, "CodiCuco"
  loc_B238D0: PopAdLdVar
  loc_B238D1: FLdRfVar var_B4
  loc_B238D4: FLdPr var_174
  loc_B238D7:  = Me.Fields
  loc_B238DC: FLdPr var_B4
  loc_B238DF: from_stack_2 = Me.Item(from_stack_1)
  loc_B238E4: FLdPr var_C8
  loc_B238E7:  = Me.Value
  loc_B238EC: FLdRfVar var_D8
  loc_B238EF: ConcatVar var_108
  loc_B238F3: LitVarStr var_E8, " del Bien "
  loc_B238F8: ConcatVar var_118
  loc_B238FC: FLdRfVar var_140
  loc_B238FF: FLdRfVar var_130
  loc_B23902: LitVarStr var_12C, "CodiInpa"
  loc_B23907: PopAdLdVar
  loc_B23908: FLdRfVar var_11C
  loc_B2390B: FLdPr var_174
  loc_B2390E:  = Me.Fields
  loc_B23913: FLdPr var_11C
  loc_B23916: from_stack_2 = Me.Item(from_stack_1)
  loc_B2391B: FLdPr var_130
  loc_B2391E:  = Me.Value
  loc_B23923: FLdRfVar var_140
  loc_B23926: ConcatVar var_150
  loc_B2392A: LitVarStr var_160, " NO es Imputable. Verifique..."
  loc_B2392F: ConcatVar var_170
  loc_B23933: CStrVarTmp
  loc_B23934: FStStr var_88
  loc_B23937: FFreeAd var_B4 = "": var_C8 = "": var_11C = ""
  loc_B23942: FFreeVar var_F8 = "": var_D8 = "": var_108 = "": var_118 = "": var_140 = "": var_150 = ""
  loc_B23953: FLdPr var_174
  loc_B23956: Me.MoveNext
  loc_B2395B: Branch loc_B23705
  loc_B2395E: LitNothing
  loc_B23960: FStAd var_174 
  loc_B23964: ILdRf var_88
  loc_B23967: LitStr vbNullString
  loc_B2396A: EqStr
  loc_B2396C: BranchF loc_B2399E
  loc_B2396F: LitStr "INSERT INTO cajaaltapatr (IdInpa,FechCaja,CodiInpa,BajaCaja,CodiCuco,HabeCaja)"
  loc_B23972: LitStr " SELECT IdInpa, FebaInpa, CodiInpa, 1, CodiCuco, ImpoInpa"
  loc_B23975: ConcatStr
  loc_B23976: FStStrNoPop var_8C
  loc_B23979: LitStr " FROM invepatrimonial"
  loc_B2397C: ConcatStr
  loc_B2397D: FStStrNoPop var_90
  loc_B23980: LitStr " WHERE FebaInpa BETWEEN @desde AND @hasta"
  loc_B23983: ConcatStr
  loc_B23984: FStStrNoPop CierraCajaAltaPatr
  loc_B23987: LitStr " AND CodiInpa > 0;"
  loc_B2398A: ConcatStr
  loc_B2398B: FStStrNoPop var_98
  loc_B2398E: Call EjecutarRsCls(from_stack_1v)
  loc_B23993: FFreeStr var_8C = "": var_90 = "": CierraCajaAltaPatr = ""
  loc_B2399E: ExitProcCbHresult
End Function

Public Function CierraCajaEmiCheq() 'B27280
  'Data Table: 46D5B0
  loc_B2698C: ZeroRetVal
  loc_B2698E: LitStr "DELETE FROM cajaemicheq WHERE FechCaja BETWEEN @desde AND @hasta;"
  loc_B26991: Call EjecutarRsCls(from_stack_1v)
  loc_B26996: LitStr "SELECT banco.CodiBanc, NumeMoba, ExpeImpu, NumeLiqu, banco.CodiCuco, cuentacontable.ImpuCuco"
  loc_B26999: LitStr " FROM cheque"
  loc_B2699C: ConcatStr
  loc_B2699D: FStStrNoPop var_8C
  loc_B269A0: LitStr " LEFT JOIN banco ON banco.PeriInfo = cheque.PeriInfo AND banco.CodiBanc = cheque.CodiBanc"
  loc_B269A3: ConcatStr
  loc_B269A4: FStStrNoPop var_90
  loc_B269A7: LitStr " LEFT JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = banco.PeriInfo AND cuentacontable.CodiCuco = banco.CodiCuco"
  loc_B269AA: ConcatStr
  loc_B269AB: FStStrNoPop CierraCajaEmiCheq
  loc_B269AE: LitStr " WHERE cheque.PeriInfo = Year(@desde)"
  loc_B269B1: ConcatStr
  loc_B269B2: FStStrNoPop var_98
  loc_B269B5: LitStr " AND FechCheq BETWEEN @desde AND @hasta"
  loc_B269B8: ConcatStr
  loc_B269B9: FStStrNoPop var_9C
  loc_B269BC: LitStr " AND NumeMoba > 0"
  loc_B269BF: ConcatStr
  loc_B269C0: FStStrNoPop var_A0
  loc_B269C3: LitStr " AND AutoCheq IN (1,2,4)"
  loc_B269C6: ConcatStr
  loc_B269C7: FStStrNoPop var_A4
  loc_B269CA: LitStr " AND (banco.CodiBanc IS NULL OR banco.CodiCuco IS NULL OR banco.CodiCuco = '' OR ImpuCuco IS NULL OR ImpuCuco = 0);"
  loc_B269CD: ConcatStr
  loc_B269CE: FStStrNoPop var_A8
  loc_B269D1: Call EjecutarRsCls(from_stack_1v)
  loc_B269D6: FFreeStr var_8C = "": var_90 = "": CierraCajaEmiCheq = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_B269E9: FLdRfVar var_AC
  loc_B269EC: FLdPr Me
  loc_B269EF: MemLdPr global_56
  loc_B269F2:  = Me.RecordCount
  loc_B269F7: ILdRf var_AC
  loc_B269FA: LitI4 0
  loc_B269FF: GtI4
  loc_B26A00: BranchF loc_B26E3E
  loc_B26A03: FLdPr Me
  loc_B26A06: MemLdStr global_56
  loc_B26A09: FStAd var_B0 
  loc_B26A0D: FLdPr var_B0
  loc_B26A10: Me.MoveFirst
  loc_B26A15: FLdRfVar var_B2
  loc_B26A18: FLdPr var_B0
  loc_B26A1B:  = Me.EOF
  loc_B26A20: FLdI2 var_B2
  loc_B26A23: NotI4
  loc_B26A24: BranchF loc_B26E38
  loc_B26A27: FLdRfVar var_CC
  loc_B26A2A: LitVarStr var_C8, "CodiBanc"
  loc_B26A2F: PopAdLdVar
  loc_B26A30: FLdRfVar var_B8
  loc_B26A33: FLdPr var_B0
  loc_B26A36:  = Me.Fields
  loc_B26A3B: FLdPr var_B8
  loc_B26A3E: from_stack_2 = Me.Item(from_stack_1)
  loc_B26A43: FLdZeroAd var_CC
  loc_B26A46: CVarAd
  loc_B26A4A: ImpAdCallI2 IsNull()
  loc_B26A4F: FFree1Ad var_B8
  loc_B26A52: FFree1Var var_DC = ""
  loc_B26A55: BranchF loc_B26B3E
  loc_B26A58: ILdRf var_88
  loc_B26A5B: LitStr vbCrLf
  loc_B26A5E: ConcatStr
  loc_B26A5F: FStStrNoPop var_8C
  loc_B26A62: LitStr "El Banco del Cheque número: "
  loc_B26A65: ConcatStr
  loc_B26A66: CVarStr var_EC
  loc_B26A69: FLdRfVar var_DC
  loc_B26A6C: FLdRfVar var_CC
  loc_B26A6F: LitVarStr var_C8, "NumeMoba"
  loc_B26A74: PopAdLdVar
  loc_B26A75: FLdRfVar var_B8
  loc_B26A78: FLdPr var_B0
  loc_B26A7B:  = Me.Fields
  loc_B26A80: FLdPr var_B8
  loc_B26A83: from_stack_2 = Me.Item(from_stack_1)
  loc_B26A88: FLdPr var_CC
  loc_B26A8B:  = Me.Value
  loc_B26A90: FLdRfVar var_DC
  loc_B26A93: ConcatVar var_FC
  loc_B26A97: LitVarStr var_10C, " - Expediente: "
  loc_B26A9C: ConcatVar var_11C
  loc_B26AA0: FLdRfVar var_144
  loc_B26AA3: FLdRfVar var_134
  loc_B26AA6: LitVarStr var_130, "ExpeImpu"
  loc_B26AAB: PopAdLdVar
  loc_B26AAC: FLdRfVar var_120
  loc_B26AAF: FLdPr var_B0
  loc_B26AB2:  = Me.Fields
  loc_B26AB7: FLdPr var_120
  loc_B26ABA: from_stack_2 = Me.Item(from_stack_1)
  loc_B26ABF: FLdPr var_134
  loc_B26AC2:  = Me.Value
  loc_B26AC7: FLdRfVar var_144
  loc_B26ACA: ConcatVar var_154
  loc_B26ACE: LitVarStr var_164, " - liquidación: "
  loc_B26AD3: ConcatVar var_174
  loc_B26AD7: FLdRfVar var_19C
  loc_B26ADA: FLdRfVar var_18C
  loc_B26ADD: LitVarStr var_188, "NumeLiqu"
  loc_B26AE2: PopAdLdVar
  loc_B26AE3: FLdRfVar var_178
  loc_B26AE6: FLdPr var_B0
  loc_B26AE9:  = Me.Fields
  loc_B26AEE: FLdPr var_178
  loc_B26AF1: from_stack_2 = Me.Item(from_stack_1)
  loc_B26AF6: FLdPr var_18C
  loc_B26AF9:  = Me.Value
  loc_B26AFE: FLdRfVar var_19C
  loc_B26B01: ConcatVar var_1AC
  loc_B26B05: LitVarStr var_1BC, " NO EXISTE. Verifique..."
  loc_B26B0A: ConcatVar var_1CC
  loc_B26B0E: CStrVarTmp
  loc_B26B0F: FStStr var_88
  loc_B26B12: FFree1Str var_8C
  loc_B26B15: FFreeAd var_B8 = "": var_CC = "": var_120 = "": var_134 = "": var_178 = ""
  loc_B26B24: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = "": var_174 = "": var_19C = "": var_1AC = ""
  loc_B26B3B: Branch loc_B26E2D
  loc_B26B3E: FLdRfVar var_CC
  loc_B26B41: LitVarStr var_C8, "CodiCuco"
  loc_B26B46: PopAdLdVar
  loc_B26B47: FLdRfVar var_B8
  loc_B26B4A: FLdPr var_B0
  loc_B26B4D:  = Me.Fields
  loc_B26B52: FLdPr var_B8
  loc_B26B55: from_stack_2 = Me.Item(from_stack_1)
  loc_B26B5A: FLdZeroAd var_CC
  loc_B26B5D: CVarAd
  loc_B26B61: ImpAdCallI2 IsNull()
  loc_B26B66: FFree1Ad var_B8
  loc_B26B69: FFree1Var var_DC = ""
  loc_B26B6C: BranchF loc_B26BD3
  loc_B26B6F: ILdRf var_88
  loc_B26B72: LitStr vbCrLf
  loc_B26B75: ConcatStr
  loc_B26B76: FStStrNoPop var_8C
  loc_B26B79: LitStr "El Banco ("
  loc_B26B7C: ConcatStr
  loc_B26B7D: CVarStr var_EC
  loc_B26B80: FLdRfVar var_DC
  loc_B26B83: FLdRfVar var_CC
  loc_B26B86: LitVarStr var_C8, "CodiBanc"
  loc_B26B8B: PopAdLdVar
  loc_B26B8C: FLdRfVar var_B8
  loc_B26B8F: FLdPr var_B0
  loc_B26B92:  = Me.Fields
  loc_B26B97: FLdPr var_B8
  loc_B26B9A: from_stack_2 = Me.Item(from_stack_1)
  loc_B26B9F: FLdPr var_CC
  loc_B26BA2:  = Me.Value
  loc_B26BA7: FLdRfVar var_DC
  loc_B26BAA: ConcatVar var_FC
  loc_B26BAE: LitVarStr var_10C, ") NO EXISTE. Verifique..."
  loc_B26BB3: ConcatVar var_11C
  loc_B26BB7: CStrVarTmp
  loc_B26BB8: FStStr var_88
  loc_B26BBB: FFree1Str var_8C
  loc_B26BBE: FFreeAd var_B8 = ""
  loc_B26BC5: FFreeVar var_EC = "": var_DC = "": var_FC = ""
  loc_B26BD0: Branch loc_B26E2D
  loc_B26BD3: FLdRfVar var_DC
  loc_B26BD6: FLdRfVar var_CC
  loc_B26BD9: LitVarStr var_C8, "CodiCuco"
  loc_B26BDE: PopAdLdVar
  loc_B26BDF: FLdRfVar var_B8
  loc_B26BE2: FLdPr var_B0
  loc_B26BE5:  = Me.Fields
  loc_B26BEA: FLdPr var_B8
  loc_B26BED: from_stack_2 = Me.Item(from_stack_1)
  loc_B26BF2: FLdPr var_CC
  loc_B26BF5:  = Me.Value
  loc_B26BFA: FLdRfVar var_DC
  loc_B26BFD: LitVarStr var_10C, vbNullString
  loc_B26C02: HardType
  loc_B26C03: EqVarBool
  loc_B26C05: FFreeAd var_B8 = ""
  loc_B26C0C: FFree1Var var_DC = ""
  loc_B26C0F: BranchF loc_B26C76
  loc_B26C12: ILdRf var_88
  loc_B26C15: LitStr vbCrLf
  loc_B26C18: ConcatStr
  loc_B26C19: FStStrNoPop var_8C
  loc_B26C1C: LitStr "El Banco ("
  loc_B26C1F: ConcatStr
  loc_B26C20: CVarStr var_EC
  loc_B26C23: FLdRfVar var_DC
  loc_B26C26: FLdRfVar var_CC
  loc_B26C29: LitVarStr var_C8, "CodiBanc"
  loc_B26C2E: PopAdLdVar
  loc_B26C2F: FLdRfVar var_B8
  loc_B26C32: FLdPr var_B0
  loc_B26C35:  = Me.Fields
  loc_B26C3A: FLdPr var_B8
  loc_B26C3D: from_stack_2 = Me.Item(from_stack_1)
  loc_B26C42: FLdPr var_CC
  loc_B26C45:  = Me.Value
  loc_B26C4A: FLdRfVar var_DC
  loc_B26C4D: ConcatVar var_FC
  loc_B26C51: LitVarStr var_10C, ") NO TIENE una Cuenta Contable Asociada. Verifique..."
  loc_B26C56: ConcatVar var_11C
  loc_B26C5A: CStrVarTmp
  loc_B26C5B: FStStr var_88
  loc_B26C5E: FFree1Str var_8C
  loc_B26C61: FFreeAd var_B8 = ""
  loc_B26C68: FFreeVar var_EC = "": var_DC = "": var_FC = ""
  loc_B26C73: Branch loc_B26E2D
  loc_B26C76: FLdRfVar var_CC
  loc_B26C79: LitVarStr var_C8, "ImpuCuco"
  loc_B26C7E: PopAdLdVar
  loc_B26C7F: FLdRfVar var_B8
  loc_B26C82: FLdPr var_B0
  loc_B26C85:  = Me.Fields
  loc_B26C8A: FLdPr var_B8
  loc_B26C8D: from_stack_2 = Me.Item(from_stack_1)
  loc_B26C92: FLdZeroAd var_CC
  loc_B26C95: CVarAd
  loc_B26C99: ImpAdCallI2 IsNull()
  loc_B26C9E: FFree1Ad var_B8
  loc_B26CA1: FFree1Var var_DC = ""
  loc_B26CA4: BranchF loc_B26D4C
  loc_B26CA7: ILdRf var_88
  loc_B26CAA: LitStr vbCrLf
  loc_B26CAD: ConcatStr
  loc_B26CAE: FStStrNoPop var_8C
  loc_B26CB1: LitStr "La Cuenta Contable "
  loc_B26CB4: ConcatStr
  loc_B26CB5: CVarStr var_EC
  loc_B26CB8: FLdRfVar var_DC
  loc_B26CBB: FLdRfVar var_CC
  loc_B26CBE: LitVarStr var_C8, "CodiCuco"
  loc_B26CC3: PopAdLdVar
  loc_B26CC4: FLdRfVar var_B8
  loc_B26CC7: FLdPr var_B0
  loc_B26CCA:  = Me.Fields
  loc_B26CCF: FLdPr var_B8
  loc_B26CD2: from_stack_2 = Me.Item(from_stack_1)
  loc_B26CD7: FLdPr var_CC
  loc_B26CDA:  = Me.Value
  loc_B26CDF: FLdRfVar var_DC
  loc_B26CE2: ConcatVar var_FC
  loc_B26CE6: LitVarStr var_10C, " del Banco "
  loc_B26CEB: ConcatVar var_11C
  loc_B26CEF: FLdRfVar var_144
  loc_B26CF2: FLdRfVar var_134
  loc_B26CF5: LitVarStr var_130, "CodiBanc"
  loc_B26CFA: PopAdLdVar
  loc_B26CFB: FLdRfVar var_120
  loc_B26CFE: FLdPr var_B0
  loc_B26D01:  = Me.Fields
  loc_B26D06: FLdPr var_120
  loc_B26D09: from_stack_2 = Me.Item(from_stack_1)
  loc_B26D0E: FLdPr var_134
  loc_B26D11:  = Me.Value
  loc_B26D16: FLdRfVar var_144
  loc_B26D19: ConcatVar var_154
  loc_B26D1D: LitVarStr var_164, " NO EXISTE. Verifique..."
  loc_B26D22: ConcatVar var_174
  loc_B26D26: CStrVarTmp
  loc_B26D27: FStStr var_88
  loc_B26D2A: FFree1Str var_8C
  loc_B26D2D: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_B26D38: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_B26D49: Branch loc_B26E2D
  loc_B26D4C: FLdRfVar var_DC
  loc_B26D4F: FLdRfVar var_CC
  loc_B26D52: LitVarStr var_C8, "ImpuCuco"
  loc_B26D57: PopAdLdVar
  loc_B26D58: FLdRfVar var_B8
  loc_B26D5B: FLdPr var_B0
  loc_B26D5E:  = Me.Fields
  loc_B26D63: FLdPr var_B8
  loc_B26D66: from_stack_2 = Me.Item(from_stack_1)
  loc_B26D6B: FLdPr var_CC
  loc_B26D6E:  = Me.Value
  loc_B26D73: FLdRfVar var_DC
  loc_B26D76: LitVarI2 var_10C, 0
  loc_B26D7B: HardType
  loc_B26D7C: EqVarBool
  loc_B26D7E: FFreeAd var_B8 = ""
  loc_B26D85: FFree1Var var_DC = ""
  loc_B26D88: BranchF loc_B26E2D
  loc_B26D8B: ILdRf var_88
  loc_B26D8E: LitStr vbCrLf
  loc_B26D91: ConcatStr
  loc_B26D92: FStStrNoPop var_8C
  loc_B26D95: LitStr "La Cuenta Contable "
  loc_B26D98: ConcatStr
  loc_B26D99: CVarStr var_EC
  loc_B26D9C: FLdRfVar var_DC
  loc_B26D9F: FLdRfVar var_CC
  loc_B26DA2: LitVarStr var_C8, "CodiCuco"
  loc_B26DA7: PopAdLdVar
  loc_B26DA8: FLdRfVar var_B8
  loc_B26DAB: FLdPr var_B0
  loc_B26DAE:  = Me.Fields
  loc_B26DB3: FLdPr var_B8
  loc_B26DB6: from_stack_2 = Me.Item(from_stack_1)
  loc_B26DBB: FLdPr var_CC
  loc_B26DBE:  = Me.Value
  loc_B26DC3: FLdRfVar var_DC
  loc_B26DC6: ConcatVar var_FC
  loc_B26DCA: LitVarStr var_10C, " del Banco "
  loc_B26DCF: ConcatVar var_11C
  loc_B26DD3: FLdRfVar var_144
  loc_B26DD6: FLdRfVar var_134
  loc_B26DD9: LitVarStr var_130, "CodiBanc"
  loc_B26DDE: PopAdLdVar
  loc_B26DDF: FLdRfVar var_120
  loc_B26DE2: FLdPr var_B0
  loc_B26DE5:  = Me.Fields
  loc_B26DEA: FLdPr var_120
  loc_B26DED: from_stack_2 = Me.Item(from_stack_1)
  loc_B26DF2: FLdPr var_134
  loc_B26DF5:  = Me.Value
  loc_B26DFA: FLdRfVar var_144
  loc_B26DFD: ConcatVar var_154
  loc_B26E01: LitVarStr var_164, " NO es Imputable. Verifique..."
  loc_B26E06: ConcatVar var_174
  loc_B26E0A: CStrVarTmp
  loc_B26E0B: FStStr var_88
  loc_B26E0E: FFree1Str var_8C
  loc_B26E11: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_B26E1C: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_B26E2D: FLdPr var_B0
  loc_B26E30: Me.MoveNext
  loc_B26E35: Branch loc_B26A15
  loc_B26E38: LitNothing
  loc_B26E3A: FStAd var_B0 
  loc_B26E3E: ILdRf var_88
  loc_B26E41: LitStr vbNullString
  loc_B26E44: EqStr
  loc_B26E46: BranchF loc_B26E93
  loc_B26E49: LitStr "INSERT INTO cajaemicheq (IdCheq,FechCaja,ExpeImpu,NumeLiqu,CucuPers,CodiBanc,NumeMoba,AnulCaec,CodiCuco,DebeCaec,HabeCaec)"
  loc_B26E4C: LitStr " SELECT IdCheq, FechCheq, ExpeImpu, NumeLiqu, CucuPers, banco.CodiBanc, NumeMoba, 2 AnulCaec, banco.CodiCuco, 0 DebeCaec, ImpoCheq HabeCaec"
  loc_B26E4F: ConcatStr
  loc_B26E50: FStStrNoPop var_8C
  loc_B26E53: LitStr " FROM cheque"
  loc_B26E56: ConcatStr
  loc_B26E57: FStStrNoPop var_90
  loc_B26E5A: LitStr " INNER JOIN banco ON banco.PeriInfo = cheque.PeriInfo AND banco.CodiBanc = cheque.CodiBanc"
  loc_B26E5D: ConcatStr
  loc_B26E5E: FStStrNoPop CierraCajaEmiCheq
  loc_B26E61: LitStr " WHERE cheque.PeriInfo = Year(@desde)"
  loc_B26E64: ConcatStr
  loc_B26E65: FStStrNoPop var_98
  loc_B26E68: LitStr " AND FechCheq BETWEEN @desde AND @hasta"
  loc_B26E6B: ConcatStr
  loc_B26E6C: FStStrNoPop var_9C
  loc_B26E6F: LitStr " AND AutoCheq IN (1,2,4)"
  loc_B26E72: ConcatStr
  loc_B26E73: FStStrNoPop var_A0
  loc_B26E76: LitStr " AND NumeMoba > 0;"
  loc_B26E79: ConcatStr
  loc_B26E7A: FStStrNoPop var_A4
  loc_B26E7D: Call EjecutarRsCls(from_stack_1v)
  loc_B26E82: FFreeStr var_8C = "": var_90 = "": CierraCajaEmiCheq = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_B26E93: LitStr "SELECT FeanCheq, ExpeImpu, NumeLiqu, CucuPers, banco.CodiBanc, NumeMoba, banco.CodiCuco, cuentacontable.ImpuCuco, ImpoCheq"
  loc_B26E96: LitStr " FROM cheque"
  loc_B26E99: ConcatStr
  loc_B26E9A: FStStrNoPop var_8C
  loc_B26E9D: LitStr " LEFT JOIN banco ON banco.PeriInfo = cheque.PeriInfo AND banco.CodiBanc = cheque.CodiBanc"
  loc_B26EA0: ConcatStr
  loc_B26EA1: FStStrNoPop var_90
  loc_B26EA4: LitStr " LEFT JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = banco.PeriInfo AND cuentacontable.CodiCuco = banco.CodiCuco"
  loc_B26EA7: ConcatStr
  loc_B26EA8: FStStrNoPop CierraCajaEmiCheq
  loc_B26EAB: LitStr " WHERE cheque.PeriInfo = Year(@desde)"
  loc_B26EAE: ConcatStr
  loc_B26EAF: FStStrNoPop var_98
  loc_B26EB2: LitStr " AND FeanCheq BETWEEN @desde AND @hasta"
  loc_B26EB5: ConcatStr
  loc_B26EB6: FStStrNoPop var_9C
  loc_B26EB9: LitStr " AND AutoCheq IN (1,2,4)"
  loc_B26EBC: ConcatStr
  loc_B26EBD: FStStrNoPop var_A0
  loc_B26EC0: LitStr " AND NumeMoba > 0"
  loc_B26EC3: ConcatStr
  loc_B26EC4: FStStrNoPop var_A4
  loc_B26EC7: LitStr " AND (banco.CodiCuco IS NULL OR banco.CodiCuco = '' OR ImpuCuco IS NULL OR ImpuCuco = 0);"
  loc_B26ECA: ConcatStr
  loc_B26ECB: FStStrNoPop var_A8
  loc_B26ECE: Call EjecutarRsCls(from_stack_1v)
  loc_B26ED3: FFreeStr var_8C = "": var_90 = "": CierraCajaEmiCheq = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_B26EE6: FLdRfVar var_AC
  loc_B26EE9: FLdPr Me
  loc_B26EEC: MemLdPr global_56
  loc_B26EEF:  = Me.RecordCount
  loc_B26EF4: ILdRf var_AC
  loc_B26EF7: LitI4 0
  loc_B26EFC: GtI4
  loc_B26EFD: BranchF loc_B27224
  loc_B26F00: FLdPr Me
  loc_B26F03: MemLdStr global_56
  loc_B26F06: FStAd var_1D0 
  loc_B26F0A: FLdPr var_1D0
  loc_B26F0D: Me.MoveFirst
  loc_B26F12: FLdRfVar var_B2
  loc_B26F15: FLdPr var_1D0
  loc_B26F18:  = Me.EOF
  loc_B26F1D: FLdI2 var_B2
  loc_B26F20: NotI4
  loc_B26F21: BranchF loc_B2721E
  loc_B26F24: FLdRfVar var_CC
  loc_B26F27: LitVarStr var_C8, "CodiCuco"
  loc_B26F2C: PopAdLdVar
  loc_B26F2D: FLdRfVar var_B8
  loc_B26F30: FLdPr var_1D0
  loc_B26F33:  = Me.Fields
  loc_B26F38: FLdPr var_B8
  loc_B26F3B: from_stack_2 = Me.Item(from_stack_1)
  loc_B26F40: FLdZeroAd var_CC
  loc_B26F43: CVarAd
  loc_B26F47: ImpAdCallI2 IsNull()
  loc_B26F4C: FFree1Ad var_B8
  loc_B26F4F: FFree1Var var_DC = ""
  loc_B26F52: BranchF loc_B26FB9
  loc_B26F55: ILdRf var_88
  loc_B26F58: LitStr vbCrLf
  loc_B26F5B: ConcatStr
  loc_B26F5C: FStStrNoPop var_8C
  loc_B26F5F: LitStr "El Banco ("
  loc_B26F62: ConcatStr
  loc_B26F63: CVarStr var_EC
  loc_B26F66: FLdRfVar var_DC
  loc_B26F69: FLdRfVar var_CC
  loc_B26F6C: LitVarStr var_C8, "CodiBanc"
  loc_B26F71: PopAdLdVar
  loc_B26F72: FLdRfVar var_B8
  loc_B26F75: FLdPr var_1D0
  loc_B26F78:  = Me.Fields
  loc_B26F7D: FLdPr var_B8
  loc_B26F80: from_stack_2 = Me.Item(from_stack_1)
  loc_B26F85: FLdPr var_CC
  loc_B26F88:  = Me.Value
  loc_B26F8D: FLdRfVar var_DC
  loc_B26F90: ConcatVar var_FC
  loc_B26F94: LitVarStr var_10C, ") NO EXISTE. Verifique..."
  loc_B26F99: ConcatVar var_11C
  loc_B26F9D: CStrVarTmp
  loc_B26F9E: FStStr var_88
  loc_B26FA1: FFree1Str var_8C
  loc_B26FA4: FFreeAd var_B8 = ""
  loc_B26FAB: FFreeVar var_EC = "": var_DC = "": var_FC = ""
  loc_B26FB6: Branch loc_B27213
  loc_B26FB9: FLdRfVar var_DC
  loc_B26FBC: FLdRfVar var_CC
  loc_B26FBF: LitVarStr var_C8, "CodiCuco"
  loc_B26FC4: PopAdLdVar
  loc_B26FC5: FLdRfVar var_B8
  loc_B26FC8: FLdPr var_1D0
  loc_B26FCB:  = Me.Fields
  loc_B26FD0: FLdPr var_B8
  loc_B26FD3: from_stack_2 = Me.Item(from_stack_1)
  loc_B26FD8: FLdPr var_CC
  loc_B26FDB:  = Me.Value
  loc_B26FE0: FLdRfVar var_DC
  loc_B26FE3: LitVarStr var_10C, vbNullString
  loc_B26FE8: HardType
  loc_B26FE9: EqVarBool
  loc_B26FEB: FFreeAd var_B8 = ""
  loc_B26FF2: FFree1Var var_DC = ""
  loc_B26FF5: BranchF loc_B2705C
  loc_B26FF8: ILdRf var_88
  loc_B26FFB: LitStr vbCrLf
  loc_B26FFE: ConcatStr
  loc_B26FFF: FStStrNoPop var_8C
  loc_B27002: LitStr "El Banco ("
  loc_B27005: ConcatStr
  loc_B27006: CVarStr var_EC
  loc_B27009: FLdRfVar var_DC
  loc_B2700C: FLdRfVar var_CC
  loc_B2700F: LitVarStr var_C8, "CodiBanc"
  loc_B27014: PopAdLdVar
  loc_B27015: FLdRfVar var_B8
  loc_B27018: FLdPr var_1D0
  loc_B2701B:  = Me.Fields
  loc_B27020: FLdPr var_B8
  loc_B27023: from_stack_2 = Me.Item(from_stack_1)
  loc_B27028: FLdPr var_CC
  loc_B2702B:  = Me.Value
  loc_B27030: FLdRfVar var_DC
  loc_B27033: ConcatVar var_FC
  loc_B27037: LitVarStr var_10C, ") NO TIENE una Cuenta Contable Asociada. Verifique..."
  loc_B2703C: ConcatVar var_11C
  loc_B27040: CStrVarTmp
  loc_B27041: FStStr var_88
  loc_B27044: FFree1Str var_8C
  loc_B27047: FFreeAd var_B8 = ""
  loc_B2704E: FFreeVar var_EC = "": var_DC = "": var_FC = ""
  loc_B27059: Branch loc_B27213
  loc_B2705C: FLdRfVar var_CC
  loc_B2705F: LitVarStr var_C8, "ImpuCuco"
  loc_B27064: PopAdLdVar
  loc_B27065: FLdRfVar var_B8
  loc_B27068: FLdPr var_1D0
  loc_B2706B:  = Me.Fields
  loc_B27070: FLdPr var_B8
  loc_B27073: from_stack_2 = Me.Item(from_stack_1)
  loc_B27078: FLdZeroAd var_CC
  loc_B2707B: CVarAd
  loc_B2707F: ImpAdCallI2 IsNull()
  loc_B27084: FFree1Ad var_B8
  loc_B27087: FFree1Var var_DC = ""
  loc_B2708A: BranchF loc_B27132
  loc_B2708D: ILdRf var_88
  loc_B27090: LitStr vbCrLf
  loc_B27093: ConcatStr
  loc_B27094: FStStrNoPop var_8C
  loc_B27097: LitStr "La Cuenta Contable "
  loc_B2709A: ConcatStr
  loc_B2709B: CVarStr var_EC
  loc_B2709E: FLdRfVar var_DC
  loc_B270A1: FLdRfVar var_CC
  loc_B270A4: LitVarStr var_C8, "CodiCuco"
  loc_B270A9: PopAdLdVar
  loc_B270AA: FLdRfVar var_B8
  loc_B270AD: FLdPr var_1D0
  loc_B270B0:  = Me.Fields
  loc_B270B5: FLdPr var_B8
  loc_B270B8: from_stack_2 = Me.Item(from_stack_1)
  loc_B270BD: FLdPr var_CC
  loc_B270C0:  = Me.Value
  loc_B270C5: FLdRfVar var_DC
  loc_B270C8: ConcatVar var_FC
  loc_B270CC: LitVarStr var_10C, " del Banco "
  loc_B270D1: ConcatVar var_11C
  loc_B270D5: FLdRfVar var_144
  loc_B270D8: FLdRfVar var_134
  loc_B270DB: LitVarStr var_130, "CodiBanc"
  loc_B270E0: PopAdLdVar
  loc_B270E1: FLdRfVar var_120
  loc_B270E4: FLdPr var_1D0
  loc_B270E7:  = Me.Fields
  loc_B270EC: FLdPr var_120
  loc_B270EF: from_stack_2 = Me.Item(from_stack_1)
  loc_B270F4: FLdPr var_134
  loc_B270F7:  = Me.Value
  loc_B270FC: FLdRfVar var_144
  loc_B270FF: ConcatVar var_154
  loc_B27103: LitVarStr var_164, " NO EXISTE. Verifique..."
  loc_B27108: ConcatVar var_174
  loc_B2710C: CStrVarTmp
  loc_B2710D: FStStr var_88
  loc_B27110: FFree1Str var_8C
  loc_B27113: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_B2711E: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_B2712F: Branch loc_B27213
  loc_B27132: FLdRfVar var_DC
  loc_B27135: FLdRfVar var_CC
  loc_B27138: LitVarStr var_C8, "ImpuCuco"
  loc_B2713D: PopAdLdVar
  loc_B2713E: FLdRfVar var_B8
  loc_B27141: FLdPr var_1D0
  loc_B27144:  = Me.Fields
  loc_B27149: FLdPr var_B8
  loc_B2714C: from_stack_2 = Me.Item(from_stack_1)
  loc_B27151: FLdPr var_CC
  loc_B27154:  = Me.Value
  loc_B27159: FLdRfVar var_DC
  loc_B2715C: LitVarI2 var_10C, 0
  loc_B27161: HardType
  loc_B27162: EqVarBool
  loc_B27164: FFreeAd var_B8 = ""
  loc_B2716B: FFree1Var var_DC = ""
  loc_B2716E: BranchF loc_B27213
  loc_B27171: ILdRf var_88
  loc_B27174: LitStr vbCrLf
  loc_B27177: ConcatStr
  loc_B27178: FStStrNoPop var_8C
  loc_B2717B: LitStr "La Cuenta Contable "
  loc_B2717E: ConcatStr
  loc_B2717F: CVarStr var_EC
  loc_B27182: FLdRfVar var_DC
  loc_B27185: FLdRfVar var_CC
  loc_B27188: LitVarStr var_C8, "CodiCuco"
  loc_B2718D: PopAdLdVar
  loc_B2718E: FLdRfVar var_B8
  loc_B27191: FLdPr var_1D0
  loc_B27194:  = Me.Fields
  loc_B27199: FLdPr var_B8
  loc_B2719C: from_stack_2 = Me.Item(from_stack_1)
  loc_B271A1: FLdPr var_CC
  loc_B271A4:  = Me.Value
  loc_B271A9: FLdRfVar var_DC
  loc_B271AC: ConcatVar var_FC
  loc_B271B0: LitVarStr var_10C, " del Banco "
  loc_B271B5: ConcatVar var_11C
  loc_B271B9: FLdRfVar var_144
  loc_B271BC: FLdRfVar var_134
  loc_B271BF: LitVarStr var_130, "CodiBanc"
  loc_B271C4: PopAdLdVar
  loc_B271C5: FLdRfVar var_120
  loc_B271C8: FLdPr var_1D0
  loc_B271CB:  = Me.Fields
  loc_B271D0: FLdPr var_120
  loc_B271D3: from_stack_2 = Me.Item(from_stack_1)
  loc_B271D8: FLdPr var_134
  loc_B271DB:  = Me.Value
  loc_B271E0: FLdRfVar var_144
  loc_B271E3: ConcatVar var_154
  loc_B271E7: LitVarStr var_164, " NO es Imputable. Verifique..."
  loc_B271EC: ConcatVar var_174
  loc_B271F0: CStrVarTmp
  loc_B271F1: FStStr var_88
  loc_B271F4: FFree1Str var_8C
  loc_B271F7: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_B27202: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_B27213: FLdPr var_1D0
  loc_B27216: Me.MoveNext
  loc_B2721B: Branch loc_B26F12
  loc_B2721E: LitNothing
  loc_B27220: FStAd var_1D0 
  loc_B27224: ILdRf var_88
  loc_B27227: LitStr vbNullString
  loc_B2722A: EqStr
  loc_B2722C: BranchF loc_B27279
  loc_B2722F: LitStr "INSERT INTO cajaemicheq (IdCheq,FechCaja,ExpeImpu,NumeLiqu,CucuPers,CodiBanc,NumeMoba,AnulCaec,CodiCuco,DebeCaec,HabeCaec)"
  loc_B27232: LitStr " SELECT IdCheq, FeanCheq, ExpeImpu, NumeLiqu, CucuPers, banco.CodiBanc, NumeMoba, 1 AnulCaec, banco.CodiCuco, ImpoCheq DebeCaec, 0 HabeCaec"
  loc_B27235: ConcatStr
  loc_B27236: FStStrNoPop var_8C
  loc_B27239: LitStr " FROM cheque"
  loc_B2723C: ConcatStr
  loc_B2723D: FStStrNoPop var_90
  loc_B27240: LitStr " INNER JOIN banco ON banco.PeriInfo = cheque.PeriInfo AND banco.CodiBanc = cheque.CodiBanc"
  loc_B27243: ConcatStr
  loc_B27244: FStStrNoPop CierraCajaEmiCheq
  loc_B27247: LitStr " WHERE cheque.PeriInfo = Year(@desde)"
  loc_B2724A: ConcatStr
  loc_B2724B: FStStrNoPop var_98
  loc_B2724E: LitStr " AND FeanCheq BETWEEN @desde AND @hasta"
  loc_B27251: ConcatStr
  loc_B27252: FStStrNoPop var_9C
  loc_B27255: LitStr " AND AutoCheq IN (1,2,4)"
  loc_B27258: ConcatStr
  loc_B27259: FStStrNoPop var_A0
  loc_B2725C: LitStr " AND NumeMoba > 0;"
  loc_B2725F: ConcatStr
  loc_B27260: FStStrNoPop var_A4
  loc_B27263: Call EjecutarRsCls(from_stack_1v)
  loc_B27268: FFreeStr var_8C = "": var_90 = "": CierraCajaEmiCheq = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_B27279: ExitProcCbHresult
End Function

Public Function CierraCajaMovibanco() 'AFA65C
  'Data Table: 46D5B0
  loc_AF9F18: ZeroRetVal
  loc_AF9F1A: LitStr "DELETE cmb"
  loc_AF9F1D: LitStr " FROM cajamovibanco cmb"
  loc_AF9F20: ConcatStr
  loc_AF9F21: FStStrNoPop var_8C
  loc_AF9F24: LitStr " WHERE cmb.PeriInfo = Year(@desde) AND FechCaja >= @desde;"
  loc_AF9F27: ConcatStr
  loc_AF9F28: FStStrNoPop var_90
  loc_AF9F2B: Call EjecutarRsCls(from_stack_1v)
  loc_AF9F30: FFreeStr var_8C = ""
  loc_AF9F37: LitStr "SELECT banco.CodiBanc, movibanco.CodiTimb, movibanco.NumeMoba, banco.CodiCuco, movibanco.DebeMoba, movibanco.HabeMoba, cuentacontable.ImpuCuco, IF(tmb.DeCreTimb=0,'Debito','Credito') TipoTimb, tmb.DeCreTimb"
  loc_AF9F3A: LitStr " FROM movibanco"
  loc_AF9F3D: ConcatStr
  loc_AF9F3E: FStStrNoPop var_8C
  loc_AF9F41: LitStr " LEFT JOIN banco ON banco.PeriInfo = movibanco.PeriInfo AND banco.CodiBanc = movibanco.CodiBanc"
  loc_AF9F44: ConcatStr
  loc_AF9F45: FStStrNoPop var_90
  loc_AF9F48: LitStr " LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = banco.PeriInfo AND infogov.cuentacontable.CodiCuco = banco.CodiCuco"
  loc_AF9F4B: ConcatStr
  loc_AF9F4C: FStStrNoPop CierraCajaMovibanco
  loc_AF9F4F: LitStr " LEFT JOIN tipomovibanco tmb ON tmb.PeriInfo = movibanco.PeriInfo AND tmb.CodiTimb = movibanco.CodiTimb "
  loc_AF9F52: ConcatStr
  loc_AF9F53: FStStrNoPop var_98
  loc_AF9F56: LitStr " WHERE movibanco.PeriInfo = Year(@desde)"
  loc_AF9F59: ConcatStr
  loc_AF9F5A: FStStrNoPop var_9C
  loc_AF9F5D: LitStr " AND FechMoba BETWEEN @desde AND @hasta"
  loc_AF9F60: ConcatStr
  loc_AF9F61: FStStrNoPop var_A0
  loc_AF9F64: LitStr " AND movibanco.CodiTimb > 6"
  loc_AF9F67: ConcatStr
  loc_AF9F68: FStStrNoPop var_A4
  loc_AF9F6B: LitStr " AND (banco.CodiBanc IS NULL OR banco.CodiCuco = '' OR ImpuCuco IS NULL OR ImpuCuco = 0 OR (DeCreTimb = 0 AND DebeMoba = 0) OR (DeCreTimb = 1 AND HabeMoba = 0));"
  loc_AF9F6E: ConcatStr
  loc_AF9F6F: FStStrNoPop var_A8
  loc_AF9F72: Call EjecutarRsCls(from_stack_1v)
  loc_AF9F77: FFreeStr var_8C = "": var_90 = "": CierraCajaMovibanco = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_AF9F8A: FLdRfVar var_AC
  loc_AF9F8D: FLdPr Me
  loc_AF9F90: MemLdPr global_56
  loc_AF9F93:  = Me.RecordCount
  loc_AF9F98: ILdRf var_AC
  loc_AF9F9B: LitI4 0
  loc_AF9FA0: GtI4
  loc_AF9FA1: BranchF loc_AFA559
  loc_AF9FA4: FLdPr Me
  loc_AF9FA7: MemLdStr global_56
  loc_AF9FAA: FStAd var_B0 
  loc_AF9FAE: FLdPr var_B0
  loc_AF9FB1: Me.MoveFirst
  loc_AF9FB6: FLdRfVar var_B2
  loc_AF9FB9: FLdPr var_B0
  loc_AF9FBC:  = Me.EOF
  loc_AF9FC1: FLdI2 var_B2
  loc_AF9FC4: NotI4
  loc_AF9FC5: BranchF loc_AFA553
  loc_AF9FC8: FLdRfVar var_CC
  loc_AF9FCB: LitVarStr var_C8, "CodiBanc"
  loc_AF9FD0: PopAdLdVar
  loc_AF9FD1: FLdRfVar var_B8
  loc_AF9FD4: FLdPr var_B0
  loc_AF9FD7:  = Me.Fields
  loc_AF9FDC: FLdPr var_B8
  loc_AF9FDF: from_stack_2 = Me.Item(from_stack_1)
  loc_AF9FE4: FLdZeroAd var_CC
  loc_AF9FE7: CVarAd
  loc_AF9FEB: ImpAdCallI2 IsNull()
  loc_AF9FF0: FFree1Ad var_B8
  loc_AF9FF3: FFree1Var var_DC = ""
  loc_AF9FF6: BranchF loc_AFA09E
  loc_AF9FF9: ILdRf var_88
  loc_AF9FFC: LitStr vbCrLf
  loc_AF9FFF: ConcatStr
  loc_AFA000: FStStrNoPop var_8C
  loc_AFA003: LitStr "El Banco del movimiento tipo: "
  loc_AFA006: ConcatStr
  loc_AFA007: CVarStr var_EC
  loc_AFA00A: FLdRfVar var_DC
  loc_AFA00D: FLdRfVar var_CC
  loc_AFA010: LitVarStr var_C8, "CodiTimb"
  loc_AFA015: PopAdLdVar
  loc_AFA016: FLdRfVar var_B8
  loc_AFA019: FLdPr var_B0
  loc_AFA01C:  = Me.Fields
  loc_AFA021: FLdPr var_B8
  loc_AFA024: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA029: FLdPr var_CC
  loc_AFA02C:  = Me.Value
  loc_AFA031: FLdRfVar var_DC
  loc_AFA034: ConcatVar var_FC
  loc_AFA038: LitVarStr var_10C, " - número: "
  loc_AFA03D: ConcatVar var_11C
  loc_AFA041: FLdRfVar var_144
  loc_AFA044: FLdRfVar var_134
  loc_AFA047: LitVarStr var_130, "NumeMoba"
  loc_AFA04C: PopAdLdVar
  loc_AFA04D: FLdRfVar var_120
  loc_AFA050: FLdPr var_B0
  loc_AFA053:  = Me.Fields
  loc_AFA058: FLdPr var_120
  loc_AFA05B: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA060: FLdPr var_134
  loc_AFA063:  = Me.Value
  loc_AFA068: FLdRfVar var_144
  loc_AFA06B: ConcatVar var_154
  loc_AFA06F: LitVarStr var_164, " NO EXISTE. Verifique..."
  loc_AFA074: ConcatVar var_174
  loc_AFA078: CStrVarTmp
  loc_AFA079: FStStr var_88
  loc_AFA07C: FFree1Str var_8C
  loc_AFA07F: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_AFA08A: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_AFA09B: Branch loc_AFA548
  loc_AFA09E: FLdRfVar var_DC
  loc_AFA0A1: FLdRfVar var_CC
  loc_AFA0A4: LitVarStr var_C8, "CodiCuco"
  loc_AFA0A9: PopAdLdVar
  loc_AFA0AA: FLdRfVar var_B8
  loc_AFA0AD: FLdPr var_B0
  loc_AFA0B0:  = Me.Fields
  loc_AFA0B5: FLdPr var_B8
  loc_AFA0B8: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA0BD: FLdPr var_CC
  loc_AFA0C0:  = Me.Value
  loc_AFA0C5: FLdRfVar var_DC
  loc_AFA0C8: LitVarStr var_10C, vbNullString
  loc_AFA0CD: HardType
  loc_AFA0CE: EqVarBool
  loc_AFA0D0: FFreeAd var_B8 = ""
  loc_AFA0D7: FFree1Var var_DC = ""
  loc_AFA0DA: BranchF loc_AFA141
  loc_AFA0DD: ILdRf var_88
  loc_AFA0E0: LitStr vbCrLf
  loc_AFA0E3: ConcatStr
  loc_AFA0E4: FStStrNoPop var_8C
  loc_AFA0E7: LitStr "El Banco "
  loc_AFA0EA: ConcatStr
  loc_AFA0EB: CVarStr var_EC
  loc_AFA0EE: FLdRfVar var_DC
  loc_AFA0F1: FLdRfVar var_CC
  loc_AFA0F4: LitVarStr var_C8, "CodiBanc"
  loc_AFA0F9: PopAdLdVar
  loc_AFA0FA: FLdRfVar var_B8
  loc_AFA0FD: FLdPr var_B0
  loc_AFA100:  = Me.Fields
  loc_AFA105: FLdPr var_B8
  loc_AFA108: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA10D: FLdPr var_CC
  loc_AFA110:  = Me.Value
  loc_AFA115: FLdRfVar var_DC
  loc_AFA118: ConcatVar var_FC
  loc_AFA11C: LitVarStr var_10C, " NO tiene una Cuenta Contable Asociada. Verifique..."
  loc_AFA121: ConcatVar var_11C
  loc_AFA125: CStrVarTmp
  loc_AFA126: FStStr var_88
  loc_AFA129: FFree1Str var_8C
  loc_AFA12C: FFreeAd var_B8 = ""
  loc_AFA133: FFreeVar var_EC = "": var_DC = "": var_FC = ""
  loc_AFA13E: Branch loc_AFA548
  loc_AFA141: FLdRfVar var_CC
  loc_AFA144: LitVarStr var_C8, "ImpuCuco"
  loc_AFA149: PopAdLdVar
  loc_AFA14A: FLdRfVar var_B8
  loc_AFA14D: FLdPr var_B0
  loc_AFA150:  = Me.Fields
  loc_AFA155: FLdPr var_B8
  loc_AFA158: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA15D: FLdZeroAd var_CC
  loc_AFA160: CVarAd
  loc_AFA164: ImpAdCallI2 IsNull()
  loc_AFA169: FFree1Ad var_B8
  loc_AFA16C: FFree1Var var_DC = ""
  loc_AFA16F: BranchF loc_AFA217
  loc_AFA172: ILdRf var_88
  loc_AFA175: LitStr vbCrLf
  loc_AFA178: ConcatStr
  loc_AFA179: FStStrNoPop var_8C
  loc_AFA17C: LitStr "La Cuenta Contable "
  loc_AFA17F: ConcatStr
  loc_AFA180: CVarStr var_EC
  loc_AFA183: FLdRfVar var_DC
  loc_AFA186: FLdRfVar var_CC
  loc_AFA189: LitVarStr var_C8, "CodiCuco"
  loc_AFA18E: PopAdLdVar
  loc_AFA18F: FLdRfVar var_B8
  loc_AFA192: FLdPr var_B0
  loc_AFA195:  = Me.Fields
  loc_AFA19A: FLdPr var_B8
  loc_AFA19D: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA1A2: FLdPr var_CC
  loc_AFA1A5:  = Me.Value
  loc_AFA1AA: FLdRfVar var_DC
  loc_AFA1AD: ConcatVar var_FC
  loc_AFA1B1: LitVarStr var_10C, " del Banco "
  loc_AFA1B6: ConcatVar var_11C
  loc_AFA1BA: FLdRfVar var_144
  loc_AFA1BD: FLdRfVar var_134
  loc_AFA1C0: LitVarStr var_130, "CodiBanc"
  loc_AFA1C5: PopAdLdVar
  loc_AFA1C6: FLdRfVar var_120
  loc_AFA1C9: FLdPr var_B0
  loc_AFA1CC:  = Me.Fields
  loc_AFA1D1: FLdPr var_120
  loc_AFA1D4: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA1D9: FLdPr var_134
  loc_AFA1DC:  = Me.Value
  loc_AFA1E1: FLdRfVar var_144
  loc_AFA1E4: ConcatVar var_154
  loc_AFA1E8: LitVarStr var_164, " NO EXISTE. Verifique..."
  loc_AFA1ED: ConcatVar var_174
  loc_AFA1F1: CStrVarTmp
  loc_AFA1F2: FStStr var_88
  loc_AFA1F5: FFree1Str var_8C
  loc_AFA1F8: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_AFA203: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_AFA214: Branch loc_AFA548
  loc_AFA217: FLdRfVar var_DC
  loc_AFA21A: FLdRfVar var_CC
  loc_AFA21D: LitVarStr var_C8, "ImpuCuco"
  loc_AFA222: PopAdLdVar
  loc_AFA223: FLdRfVar var_B8
  loc_AFA226: FLdPr var_B0
  loc_AFA229:  = Me.Fields
  loc_AFA22E: FLdPr var_B8
  loc_AFA231: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA236: FLdPr var_CC
  loc_AFA239:  = Me.Value
  loc_AFA23E: FLdRfVar var_DC
  loc_AFA241: LitVarI2 var_10C, 0
  loc_AFA246: HardType
  loc_AFA247: EqVarBool
  loc_AFA249: FFreeAd var_B8 = ""
  loc_AFA250: FFree1Var var_DC = ""
  loc_AFA253: BranchF loc_AFA2FB
  loc_AFA256: ILdRf var_88
  loc_AFA259: LitStr vbCrLf
  loc_AFA25C: ConcatStr
  loc_AFA25D: FStStrNoPop var_8C
  loc_AFA260: LitStr "La Cuenta Contable "
  loc_AFA263: ConcatStr
  loc_AFA264: CVarStr var_EC
  loc_AFA267: FLdRfVar var_DC
  loc_AFA26A: FLdRfVar var_CC
  loc_AFA26D: LitVarStr var_C8, "CodiCuco"
  loc_AFA272: PopAdLdVar
  loc_AFA273: FLdRfVar var_B8
  loc_AFA276: FLdPr var_B0
  loc_AFA279:  = Me.Fields
  loc_AFA27E: FLdPr var_B8
  loc_AFA281: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA286: FLdPr var_CC
  loc_AFA289:  = Me.Value
  loc_AFA28E: FLdRfVar var_DC
  loc_AFA291: ConcatVar var_FC
  loc_AFA295: LitVarStr var_10C, " del Banco "
  loc_AFA29A: ConcatVar var_11C
  loc_AFA29E: FLdRfVar var_144
  loc_AFA2A1: FLdRfVar var_134
  loc_AFA2A4: LitVarStr var_130, "CodiBanc"
  loc_AFA2A9: PopAdLdVar
  loc_AFA2AA: FLdRfVar var_120
  loc_AFA2AD: FLdPr var_B0
  loc_AFA2B0:  = Me.Fields
  loc_AFA2B5: FLdPr var_120
  loc_AFA2B8: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA2BD: FLdPr var_134
  loc_AFA2C0:  = Me.Value
  loc_AFA2C5: FLdRfVar var_144
  loc_AFA2C8: ConcatVar var_154
  loc_AFA2CC: LitVarStr var_164, " NO es Imputable. Verifique..."
  loc_AFA2D1: ConcatVar var_174
  loc_AFA2D5: CStrVarTmp
  loc_AFA2D6: FStStr var_88
  loc_AFA2D9: FFree1Str var_8C
  loc_AFA2DC: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_AFA2E7: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_AFA2F8: Branch loc_AFA548
  loc_AFA2FB: FLdRfVar var_DC
  loc_AFA2FE: FLdRfVar var_CC
  loc_AFA301: LitVarStr var_C8, "DeCreTimb"
  loc_AFA306: PopAdLdVar
  loc_AFA307: FLdRfVar var_B8
  loc_AFA30A: FLdPr var_B0
  loc_AFA30D:  = Me.Fields
  loc_AFA312: FLdPr var_B8
  loc_AFA315: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA31A: FLdPr var_CC
  loc_AFA31D:  = Me.Value
  loc_AFA322: FLdRfVar var_DC
  loc_AFA325: LitVarStr var_10C, "0"
  loc_AFA32A: HardType
  loc_AFA32B: EqVar var_EC
  loc_AFA32F: FLdRfVar var_FC
  loc_AFA332: FLdRfVar var_134
  loc_AFA335: LitVarStr var_130, "DebeMoba"
  loc_AFA33A: PopAdLdVar
  loc_AFA33B: FLdRfVar var_120
  loc_AFA33E: FLdPr var_B0
  loc_AFA341:  = Me.Fields
  loc_AFA346: FLdPr var_120
  loc_AFA349: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA34E: FLdPr var_134
  loc_AFA351:  = Me.Value
  loc_AFA356: FLdRfVar var_FC
  loc_AFA359: LitVarI2 var_164, 0
  loc_AFA35E: HardType
  loc_AFA35F: EqVar var_11C
  loc_AFA363: AndVar var_144
  loc_AFA367: CBoolVarNull
  loc_AFA369: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_AFA374: FFreeVar var_DC = ""
  loc_AFA37B: BranchF loc_AFA423
  loc_AFA37E: ILdRf var_88
  loc_AFA381: LitStr vbCrLf
  loc_AFA384: ConcatStr
  loc_AFA385: FStStrNoPop var_8C
  loc_AFA388: LitStr "El Importe del Movimiento ("
  loc_AFA38B: ConcatStr
  loc_AFA38C: CVarStr var_EC
  loc_AFA38F: FLdRfVar var_DC
  loc_AFA392: FLdRfVar var_CC
  loc_AFA395: LitVarStr var_C8, "CodiTimb"
  loc_AFA39A: PopAdLdVar
  loc_AFA39B: FLdRfVar var_B8
  loc_AFA39E: FLdPr var_B0
  loc_AFA3A1:  = Me.Fields
  loc_AFA3A6: FLdPr var_B8
  loc_AFA3A9: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA3AE: FLdPr var_CC
  loc_AFA3B1:  = Me.Value
  loc_AFA3B6: FLdRfVar var_DC
  loc_AFA3B9: ConcatVar var_FC
  loc_AFA3BD: LitVarStr var_10C, " del Banco "
  loc_AFA3C2: ConcatVar var_11C
  loc_AFA3C6: FLdRfVar var_144
  loc_AFA3C9: FLdRfVar var_134
  loc_AFA3CC: LitVarStr var_130, "CodiBanc"
  loc_AFA3D1: PopAdLdVar
  loc_AFA3D2: FLdRfVar var_120
  loc_AFA3D5: FLdPr var_B0
  loc_AFA3D8:  = Me.Fields
  loc_AFA3DD: FLdPr var_120
  loc_AFA3E0: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA3E5: FLdPr var_134
  loc_AFA3E8:  = Me.Value
  loc_AFA3ED: FLdRfVar var_144
  loc_AFA3F0: ConcatVar var_154
  loc_AFA3F4: LitVarStr var_164, ") NO corresponde a su Tipo. Verifique..."
  loc_AFA3F9: ConcatVar var_174
  loc_AFA3FD: CStrVarTmp
  loc_AFA3FE: FStStr var_88
  loc_AFA401: FFree1Str var_8C
  loc_AFA404: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_AFA40F: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_AFA420: Branch loc_AFA548
  loc_AFA423: FLdRfVar var_DC
  loc_AFA426: FLdRfVar var_CC
  loc_AFA429: LitVarStr var_C8, "DeCreTimb"
  loc_AFA42E: PopAdLdVar
  loc_AFA42F: FLdRfVar var_B8
  loc_AFA432: FLdPr var_B0
  loc_AFA435:  = Me.Fields
  loc_AFA43A: FLdPr var_B8
  loc_AFA43D: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA442: FLdPr var_CC
  loc_AFA445:  = Me.Value
  loc_AFA44A: FLdRfVar var_DC
  loc_AFA44D: LitVarStr var_10C, "1"
  loc_AFA452: HardType
  loc_AFA453: EqVar var_EC
  loc_AFA457: FLdRfVar var_FC
  loc_AFA45A: FLdRfVar var_134
  loc_AFA45D: LitVarStr var_130, "HabeMoba"
  loc_AFA462: PopAdLdVar
  loc_AFA463: FLdRfVar var_120
  loc_AFA466: FLdPr var_B0
  loc_AFA469:  = Me.Fields
  loc_AFA46E: FLdPr var_120
  loc_AFA471: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA476: FLdPr var_134
  loc_AFA479:  = Me.Value
  loc_AFA47E: FLdRfVar var_FC
  loc_AFA481: LitVarI2 var_164, 0
  loc_AFA486: HardType
  loc_AFA487: EqVar var_11C
  loc_AFA48B: AndVar var_144
  loc_AFA48F: CBoolVarNull
  loc_AFA491: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_AFA49C: FFreeVar var_DC = ""
  loc_AFA4A3: BranchF loc_AFA548
  loc_AFA4A6: ILdRf var_88
  loc_AFA4A9: LitStr vbCrLf
  loc_AFA4AC: ConcatStr
  loc_AFA4AD: FStStrNoPop var_8C
  loc_AFA4B0: LitStr "El Importe del Movimiento ("
  loc_AFA4B3: ConcatStr
  loc_AFA4B4: CVarStr var_EC
  loc_AFA4B7: FLdRfVar var_DC
  loc_AFA4BA: FLdRfVar var_CC
  loc_AFA4BD: LitVarStr var_C8, "CodiTimb"
  loc_AFA4C2: PopAdLdVar
  loc_AFA4C3: FLdRfVar var_B8
  loc_AFA4C6: FLdPr var_B0
  loc_AFA4C9:  = Me.Fields
  loc_AFA4CE: FLdPr var_B8
  loc_AFA4D1: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA4D6: FLdPr var_CC
  loc_AFA4D9:  = Me.Value
  loc_AFA4DE: FLdRfVar var_DC
  loc_AFA4E1: ConcatVar var_FC
  loc_AFA4E5: LitVarStr var_10C, " del Banco "
  loc_AFA4EA: ConcatVar var_11C
  loc_AFA4EE: FLdRfVar var_144
  loc_AFA4F1: FLdRfVar var_134
  loc_AFA4F4: LitVarStr var_130, "CodiBanc"
  loc_AFA4F9: PopAdLdVar
  loc_AFA4FA: FLdRfVar var_120
  loc_AFA4FD: FLdPr var_B0
  loc_AFA500:  = Me.Fields
  loc_AFA505: FLdPr var_120
  loc_AFA508: from_stack_2 = Me.Item(from_stack_1)
  loc_AFA50D: FLdPr var_134
  loc_AFA510:  = Me.Value
  loc_AFA515: FLdRfVar var_144
  loc_AFA518: ConcatVar var_154
  loc_AFA51C: LitVarStr var_164, ") NO corresponde a su Tipo. Verifique..."
  loc_AFA521: ConcatVar var_174
  loc_AFA525: CStrVarTmp
  loc_AFA526: FStStr var_88
  loc_AFA529: FFree1Str var_8C
  loc_AFA52C: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_AFA537: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_AFA548: FLdPr var_B0
  loc_AFA54B: Me.MoveNext
  loc_AFA550: Branch loc_AF9FB6
  loc_AFA553: LitNothing
  loc_AFA555: FStAd var_B0 
  loc_AFA559: ILdRf var_88
  loc_AFA55C: LitStr vbNullString
  loc_AFA55F: EqStr
  loc_AFA561: BranchF loc_AFA654
  loc_AFA564: LitStr "INSERT INTO cajamovibanco (FechCaja,PeriInfo,IdMoba,CodiBanc,CodiTimb,NumeMoba,CodiCuco,DebeCamb,HabeCamb)"
  loc_AFA567: LitStr " SELECT FechMoba, mb.PeriInfo, mb.IdMoba, mb.CodiBanc, mb.CodiTimb, NumeMoba, banco.CodiCuco, DebeMoba, HabeMoba"
  loc_AFA56A: ConcatStr
  loc_AFA56B: FStStrNoPop var_8C
  loc_AFA56E: LitStr " FROM movibanco mb"
  loc_AFA571: ConcatStr
  loc_AFA572: FStStrNoPop var_90
  loc_AFA575: LitStr " INNER JOIN banco ON banco.PeriInfo = mb.PeriInfo AND banco.CodiBanc = mb.CodiBanc"
  loc_AFA578: ConcatStr
  loc_AFA579: FStStrNoPop CierraCajaMovibanco
  loc_AFA57C: LitStr " INNER JOIN tipomovibanco tmb ON tmb.PeriInfo = IF(mb.PeriInfo <= 2018,2018,mb.PeriInfo) AND tmb.CodiTimb = mb.CodiTimb"
  loc_AFA57F: ConcatStr
  loc_AFA580: FStStrNoPop var_98
  loc_AFA583: LitStr " WHERE mb.PeriInfo = Year(@desde)"
  loc_AFA586: ConcatStr
  loc_AFA587: FStStrNoPop var_9C
  loc_AFA58A: LitStr " AND FechMoba BETWEEN @desde AND @hasta"
  loc_AFA58D: ConcatStr
  loc_AFA58E: FStStrNoPop var_A0
  loc_AFA591: LitStr " AND mb.CodiTimb > 6 AND mb.CodiCuco = '';"
  loc_AFA594: ConcatStr
  loc_AFA595: FStStrNoPop var_A4
  loc_AFA598: Call EjecutarRsCls(from_stack_1v)
  loc_AFA59D: FFreeStr var_8C = "": var_90 = "": CierraCajaMovibanco = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_AFA5AE: LitStr "INSERT INTO cajamovibanco (FechCaja,PeriInfo,IdMoba,CodiBanc,CodiTimb,NumeMoba,CodiCuco,DebeCamb,HabeCamb)"
  loc_AFA5B1: LitStr " SELECT FechMoba, mb.PeriInfo, mb.IdMoba, mb.CodiBanc, mb.CodiTimb, NumeMoba, banco.CodiCuco, DebeMoba, HabeMoba"
  loc_AFA5B4: ConcatStr
  loc_AFA5B5: FStStrNoPop var_8C
  loc_AFA5B8: LitStr " FROM movibanco mb"
  loc_AFA5BB: ConcatStr
  loc_AFA5BC: FStStrNoPop var_90
  loc_AFA5BF: LitStr " INNER JOIN banco ON banco.PeriInfo = mb.PeriInfo AND banco.CodiBanc = mb.CodiBanc"
  loc_AFA5C2: ConcatStr
  loc_AFA5C3: FStStrNoPop CierraCajaMovibanco
  loc_AFA5C6: LitStr " INNER JOIN tipomovibanco tmb ON tmb.PeriInfo = IF(mb.PeriInfo <= 2018,2018,mb.PeriInfo) AND tmb.CodiTimb = mb.CodiTimb"
  loc_AFA5C9: ConcatStr
  loc_AFA5CA: FStStrNoPop var_98
  loc_AFA5CD: LitStr " WHERE mb.PeriInfo = Year(@desde)"
  loc_AFA5D0: ConcatStr
  loc_AFA5D1: FStStrNoPop var_9C
  loc_AFA5D4: LitStr " AND FechMoba BETWEEN @desde AND @hasta"
  loc_AFA5D7: ConcatStr
  loc_AFA5D8: FStStrNoPop var_A0
  loc_AFA5DB: LitStr " AND mb.CodiTimb > 6"
  loc_AFA5DE: ConcatStr
  loc_AFA5DF: FStStrNoPop var_A4
  loc_AFA5E2: LitStr " AND mb.CodiCuco <> '';"
  loc_AFA5E5: ConcatStr
  loc_AFA5E6: FStStrNoPop var_A8
  loc_AFA5E9: Call EjecutarRsCls(from_stack_1v)
  loc_AFA5EE: FFreeStr var_8C = "": var_90 = "": CierraCajaMovibanco = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_AFA601: LitStr "INSERT INTO cajamovibanco (FechCaja,PeriInfo,IdMoba,CodiBanc,CodiTimb,NumeMoba,CodiCuco,DebeCamb,HabeCamb)"
  loc_AFA604: LitStr " SELECT FechMoba, mb.PeriInfo, mb.IdMoba, mb.CodiBanc, mb.CodiTimb, NumeMoba, mb.CodiCuco, HabeMoba, DebeMoba"
  loc_AFA607: ConcatStr
  loc_AFA608: FStStrNoPop var_8C
  loc_AFA60B: LitStr " FROM movibanco mb"
  loc_AFA60E: ConcatStr
  loc_AFA60F: FStStrNoPop var_90
  loc_AFA612: LitStr " INNER JOIN banco ON banco.PeriInfo = mb.PeriInfo AND banco.CodiBanc = mb.CodiBanc"
  loc_AFA615: ConcatStr
  loc_AFA616: FStStrNoPop CierraCajaMovibanco
  loc_AFA619: LitStr " INNER JOIN tipomovibanco tmb ON tmb.PeriInfo = IF(mb.PeriInfo <= 2018,2018,mb.PeriInfo) AND tmb.CodiTimb = mb.CodiTimb"
  loc_AFA61C: ConcatStr
  loc_AFA61D: FStStrNoPop var_98
  loc_AFA620: LitStr " WHERE mb.PeriInfo = Year(@desde)"
  loc_AFA623: ConcatStr
  loc_AFA624: FStStrNoPop var_9C
  loc_AFA627: LitStr " AND FechMoba BETWEEN @desde AND @hasta"
  loc_AFA62A: ConcatStr
  loc_AFA62B: FStStrNoPop var_A0
  loc_AFA62E: LitStr " AND mb.CodiTimb > 6"
  loc_AFA631: ConcatStr
  loc_AFA632: FStStrNoPop var_A4
  loc_AFA635: LitStr " AND mb.CodiCuco <> '';"
  loc_AFA638: ConcatStr
  loc_AFA639: FStStrNoPop var_A8
  loc_AFA63C: Call EjecutarRsCls(from_stack_1v)
  loc_AFA641: FFreeStr var_8C = "": var_90 = "": CierraCajaMovibanco = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_AFA654: ExitProcCbHresult
End Function

Public Function CierraCajaPagoCheq() 'B758BC
  'Data Table: 46D5B0
  loc_B74C64: ZeroRetVal
  loc_B74C66: LitStr "DELETE FROM subdpagoimpu WHERE PeriInfo = Year(@desde) AND FechCaja >= @desde;"
  loc_B74C69: Call EjecutarRsCls(from_stack_1v)
  loc_B74C6E: LitStr "SELECT i.CodiPart, p.CodiCuco, cc.ImpuCuco"
  loc_B74C71: LitStr " FROM imputacion i"
  loc_B74C74: ConcatStr
  loc_B74C75: FStStrNoPop var_8C
  loc_B74C78: LitStr " LEFT JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_B74C7B: ConcatStr
  loc_B74C7C: FStStrNoPop var_90
  loc_B74C7F: LitStr " LEFT JOIN infogov.cuentacontable cc ON cc.PeriInfo = p.PeriInfo AND cc.CodiCuco = p.CodiCuco"
  loc_B74C82: ConcatStr
  loc_B74C83: FStStrNoPop CierraCajaPagoCheq
  loc_B74C86: LitStr " LEFT JOIN paraconta pp ON pp.PeriInfo = i.PeriInfo"
  loc_B74C89: ConcatStr
  loc_B74C8A: FStStrNoPop var_98
  loc_B74C8D: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_B74C90: ConcatStr
  loc_B74C91: FStStrNoPop var_9C
  loc_B74C94: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_B74C97: ConcatStr
  loc_B74C98: FStStrNoPop var_A0
  loc_B74C9B: LitStr " AND PagaImpu != 0"
  loc_B74C9E: ConcatStr
  loc_B74C9F: FStStrNoPop var_A4
  loc_B74CA2: LitStr " AND AjusImpu = 0"
  loc_B74CA5: ConcatStr
  loc_B74CA6: FStStrNoPop var_A8
  loc_B74CA9: LitStr " AND Left(i.CodiPart,1) != PaexPaco"
  loc_B74CAC: ConcatStr
  loc_B74CAD: FStStrNoPop var_AC
  loc_B74CB0: LitStr " AND (p.CodiCuco IS NULL OR p.CodiCuco = '' OR ImpuCuco IS NULL OR ImpuCuco = 0);"
  loc_B74CB3: ConcatStr
  loc_B74CB4: FStStrNoPop var_B0
  loc_B74CB7: Call EjecutarRsCls(from_stack_1v)
  loc_B74CBC: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoCheq = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_B74CD3: FLdRfVar var_B4
  loc_B74CD6: FLdPr Me
  loc_B74CD9: MemLdPr global_56
  loc_B74CDC:  = Me.RecordCount
  loc_B74CE1: ILdRf var_B4
  loc_B74CE4: LitI4 0
  loc_B74CE9: GtI4
  loc_B74CEA: BranchF loc_B75011
  loc_B74CED: FLdPr Me
  loc_B74CF0: MemLdStr global_56
  loc_B74CF3: FStAd var_B8 
  loc_B74CF7: FLdPr var_B8
  loc_B74CFA: Me.MoveFirst
  loc_B74CFF: FLdRfVar var_BA
  loc_B74D02: FLdPr var_B8
  loc_B74D05:  = Me.EOF
  loc_B74D0A: FLdI2 var_BA
  loc_B74D0D: NotI4
  loc_B74D0E: BranchF loc_B7500B
  loc_B74D11: FLdRfVar var_D4
  loc_B74D14: LitVarStr var_D0, "CodiCuco"
  loc_B74D19: PopAdLdVar
  loc_B74D1A: FLdRfVar var_C0
  loc_B74D1D: FLdPr var_B8
  loc_B74D20:  = Me.Fields
  loc_B74D25: FLdPr var_C0
  loc_B74D28: from_stack_2 = Me.Item(from_stack_1)
  loc_B74D2D: FLdZeroAd var_D4
  loc_B74D30: CVarAd
  loc_B74D34: ImpAdCallI2 IsNull()
  loc_B74D39: FFree1Ad var_C0
  loc_B74D3C: FFree1Var var_E4 = ""
  loc_B74D3F: BranchF loc_B74DA6
  loc_B74D42: ILdRf var_88
  loc_B74D45: LitStr vbCrLf
  loc_B74D48: ConcatStr
  loc_B74D49: FStStrNoPop var_8C
  loc_B74D4C: LitStr "La Partida "
  loc_B74D4F: ConcatStr
  loc_B74D50: CVarStr var_F4
  loc_B74D53: FLdRfVar var_E4
  loc_B74D56: FLdRfVar var_D4
  loc_B74D59: LitVarStr var_D0, "CodiPart"
  loc_B74D5E: PopAdLdVar
  loc_B74D5F: FLdRfVar var_C0
  loc_B74D62: FLdPr var_B8
  loc_B74D65:  = Me.Fields
  loc_B74D6A: FLdPr var_C0
  loc_B74D6D: from_stack_2 = Me.Item(from_stack_1)
  loc_B74D72: FLdPr var_D4
  loc_B74D75:  = Me.Value
  loc_B74D7A: FLdRfVar var_E4
  loc_B74D7D: ConcatVar var_104
  loc_B74D81: LitVarStr var_114, " correspondiente a la imputacion NO EXISTE. Verifique..."
  loc_B74D86: ConcatVar var_124
  loc_B74D8A: CStrVarTmp
  loc_B74D8B: FStStr var_88
  loc_B74D8E: FFree1Str var_8C
  loc_B74D91: FFreeAd var_C0 = ""
  loc_B74D98: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_B74DA3: Branch loc_B75000
  loc_B74DA6: FLdRfVar var_E4
  loc_B74DA9: FLdRfVar var_D4
  loc_B74DAC: LitVarStr var_D0, "CodiCuco"
  loc_B74DB1: PopAdLdVar
  loc_B74DB2: FLdRfVar var_C0
  loc_B74DB5: FLdPr var_B8
  loc_B74DB8:  = Me.Fields
  loc_B74DBD: FLdPr var_C0
  loc_B74DC0: from_stack_2 = Me.Item(from_stack_1)
  loc_B74DC5: FLdPr var_D4
  loc_B74DC8:  = Me.Value
  loc_B74DCD: FLdRfVar var_E4
  loc_B74DD0: LitVarStr var_114, vbNullString
  loc_B74DD5: HardType
  loc_B74DD6: EqVarBool
  loc_B74DD8: FFreeAd var_C0 = ""
  loc_B74DDF: FFree1Var var_E4 = ""
  loc_B74DE2: BranchF loc_B74E49
  loc_B74DE5: ILdRf var_88
  loc_B74DE8: LitStr vbCrLf
  loc_B74DEB: ConcatStr
  loc_B74DEC: FStStrNoPop var_8C
  loc_B74DEF: LitStr "La Partida "
  loc_B74DF2: ConcatStr
  loc_B74DF3: CVarStr var_F4
  loc_B74DF6: FLdRfVar var_E4
  loc_B74DF9: FLdRfVar var_D4
  loc_B74DFC: LitVarStr var_D0, "CodiPart"
  loc_B74E01: PopAdLdVar
  loc_B74E02: FLdRfVar var_C0
  loc_B74E05: FLdPr var_B8
  loc_B74E08:  = Me.Fields
  loc_B74E0D: FLdPr var_C0
  loc_B74E10: from_stack_2 = Me.Item(from_stack_1)
  loc_B74E15: FLdPr var_D4
  loc_B74E18:  = Me.Value
  loc_B74E1D: FLdRfVar var_E4
  loc_B74E20: ConcatVar var_104
  loc_B74E24: LitVarStr var_114, " NO TIENE una Cuenta Contable Asociada. Verifique..."
  loc_B74E29: ConcatVar var_124
  loc_B74E2D: CStrVarTmp
  loc_B74E2E: FStStr var_88
  loc_B74E31: FFree1Str var_8C
  loc_B74E34: FFreeAd var_C0 = ""
  loc_B74E3B: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_B74E46: Branch loc_B75000
  loc_B74E49: FLdRfVar var_D4
  loc_B74E4C: LitVarStr var_D0, "ImpuCuco"
  loc_B74E51: PopAdLdVar
  loc_B74E52: FLdRfVar var_C0
  loc_B74E55: FLdPr var_B8
  loc_B74E58:  = Me.Fields
  loc_B74E5D: FLdPr var_C0
  loc_B74E60: from_stack_2 = Me.Item(from_stack_1)
  loc_B74E65: FLdZeroAd var_D4
  loc_B74E68: CVarAd
  loc_B74E6C: ImpAdCallI2 IsNull()
  loc_B74E71: FFree1Ad var_C0
  loc_B74E74: FFree1Var var_E4 = ""
  loc_B74E77: BranchF loc_B74F1F
  loc_B74E7A: ILdRf var_88
  loc_B74E7D: LitStr vbCrLf
  loc_B74E80: ConcatStr
  loc_B74E81: FStStrNoPop var_8C
  loc_B74E84: LitStr "La Cuenta Contable "
  loc_B74E87: ConcatStr
  loc_B74E88: CVarStr var_F4
  loc_B74E8B: FLdRfVar var_E4
  loc_B74E8E: FLdRfVar var_D4
  loc_B74E91: LitVarStr var_D0, "CodiCuco"
  loc_B74E96: PopAdLdVar
  loc_B74E97: FLdRfVar var_C0
  loc_B74E9A: FLdPr var_B8
  loc_B74E9D:  = Me.Fields
  loc_B74EA2: FLdPr var_C0
  loc_B74EA5: from_stack_2 = Me.Item(from_stack_1)
  loc_B74EAA: FLdPr var_D4
  loc_B74EAD:  = Me.Value
  loc_B74EB2: FLdRfVar var_E4
  loc_B74EB5: ConcatVar var_104
  loc_B74EB9: LitVarStr var_114, " de la Partida "
  loc_B74EBE: ConcatVar var_124
  loc_B74EC2: FLdRfVar var_14C
  loc_B74EC5: FLdRfVar var_13C
  loc_B74EC8: LitVarStr var_138, "CodiPart"
  loc_B74ECD: PopAdLdVar
  loc_B74ECE: FLdRfVar var_128
  loc_B74ED1: FLdPr var_B8
  loc_B74ED4:  = Me.Fields
  loc_B74ED9: FLdPr var_128
  loc_B74EDC: from_stack_2 = Me.Item(from_stack_1)
  loc_B74EE1: FLdPr var_13C
  loc_B74EE4:  = Me.Value
  loc_B74EE9: FLdRfVar var_14C
  loc_B74EEC: ConcatVar var_15C
  loc_B74EF0: LitVarStr var_16C, " NO EXISTE. Verifique..."
  loc_B74EF5: ConcatVar var_17C
  loc_B74EF9: CStrVarTmp
  loc_B74EFA: FStStr var_88
  loc_B74EFD: FFree1Str var_8C
  loc_B74F00: FFreeAd var_C0 = "": var_D4 = "": var_128 = ""
  loc_B74F0B: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_14C = "": var_15C = ""
  loc_B74F1C: Branch loc_B75000
  loc_B74F1F: FLdRfVar var_E4
  loc_B74F22: FLdRfVar var_D4
  loc_B74F25: LitVarStr var_D0, "ImpuCuco"
  loc_B74F2A: PopAdLdVar
  loc_B74F2B: FLdRfVar var_C0
  loc_B74F2E: FLdPr var_B8
  loc_B74F31:  = Me.Fields
  loc_B74F36: FLdPr var_C0
  loc_B74F39: from_stack_2 = Me.Item(from_stack_1)
  loc_B74F3E: FLdPr var_D4
  loc_B74F41:  = Me.Value
  loc_B74F46: FLdRfVar var_E4
  loc_B74F49: LitVarI2 var_114, 0
  loc_B74F4E: HardType
  loc_B74F4F: EqVarBool
  loc_B74F51: FFreeAd var_C0 = ""
  loc_B74F58: FFree1Var var_E4 = ""
  loc_B74F5B: BranchF loc_B75000
  loc_B74F5E: ILdRf var_88
  loc_B74F61: LitStr vbCrLf
  loc_B74F64: ConcatStr
  loc_B74F65: FStStrNoPop var_8C
  loc_B74F68: LitStr "La Cuenta Contable "
  loc_B74F6B: ConcatStr
  loc_B74F6C: CVarStr var_F4
  loc_B74F6F: FLdRfVar var_E4
  loc_B74F72: FLdRfVar var_D4
  loc_B74F75: LitVarStr var_D0, "CodiCuco"
  loc_B74F7A: PopAdLdVar
  loc_B74F7B: FLdRfVar var_C0
  loc_B74F7E: FLdPr var_B8
  loc_B74F81:  = Me.Fields
  loc_B74F86: FLdPr var_C0
  loc_B74F89: from_stack_2 = Me.Item(from_stack_1)
  loc_B74F8E: FLdPr var_D4
  loc_B74F91:  = Me.Value
  loc_B74F96: FLdRfVar var_E4
  loc_B74F99: ConcatVar var_104
  loc_B74F9D: LitVarStr var_114, " de la Partida "
  loc_B74FA2: ConcatVar var_124
  loc_B74FA6: FLdRfVar var_14C
  loc_B74FA9: FLdRfVar var_13C
  loc_B74FAC: LitVarStr var_138, "CodiPart"
  loc_B74FB1: PopAdLdVar
  loc_B74FB2: FLdRfVar var_128
  loc_B74FB5: FLdPr var_B8
  loc_B74FB8:  = Me.Fields
  loc_B74FBD: FLdPr var_128
  loc_B74FC0: from_stack_2 = Me.Item(from_stack_1)
  loc_B74FC5: FLdPr var_13C
  loc_B74FC8:  = Me.Value
  loc_B74FCD: FLdRfVar var_14C
  loc_B74FD0: ConcatVar var_15C
  loc_B74FD4: LitVarStr var_16C, " NO es Imputable. Verifique..."
  loc_B74FD9: ConcatVar var_17C
  loc_B74FDD: CStrVarTmp
  loc_B74FDE: FStStr var_88
  loc_B74FE1: FFree1Str var_8C
  loc_B74FE4: FFreeAd var_C0 = "": var_D4 = "": var_128 = ""
  loc_B74FEF: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_14C = "": var_15C = ""
  loc_B75000: FLdPr var_B8
  loc_B75003: Me.MoveNext
  loc_B75008: Branch loc_B74CFF
  loc_B7500B: LitNothing
  loc_B7500D: FStAd var_B8 
  loc_B75011: LitStr "SELECT b.*, ImpuCuco"
  loc_B75014: LitStr " FROM liquidaneto lqn"
  loc_B75017: ConcatStr
  loc_B75018: FStStrNoPop var_8C
  loc_B7501B: LitStr " INNER JOIN cheque ch ON ch.PeriInfo = lqn.PeriInfo AND ch.ExpeImpu = lqn.ExpeImpu AND ch.NumeLiqu = lqn.NumeLiqu AND ch.CucuPers = lqn.CucuPers AND ch.NumeMoba > 0 AND ch.FeanCheq IS NULL AND ch.FepaCheq = lqn.FechCaja"
  loc_B7501E: ConcatStr
  loc_B7501F: FStStrNoPop var_90
  loc_B75022: LitStr " LEFT JOIN banco b ON b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_B75025: ConcatStr
  loc_B75026: FStStrNoPop CierraCajaPagoCheq
  loc_B75029: LitStr " LEFT JOIN infogov.cuentacontable cc ON cc.PeriInfo = b.PeriInfo AND cc.CodiCuco = b.CodiCuco"
  loc_B7502C: ConcatStr
  loc_B7502D: FStStrNoPop var_98
  loc_B75030: LitStr " WHERE lqn.PeriInfo = YEAR(@desde) AND lqn.FechCaja BETWEEN @desde AND @hasta AND lqn.CodiRete = 0"
  loc_B75033: ConcatStr
  loc_B75034: FStStrNoPop var_9C
  loc_B75037: LitStr " AND (cc.CodiCuco IS NULL OR b.CodiCuco = '' OR ImpuCuco IS NULL OR ImpuCuco = 0);"
  loc_B7503A: ConcatStr
  loc_B7503B: FStStrNoPop var_A0
  loc_B7503E: Call EjecutarRsCls(from_stack_1v)
  loc_B75043: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoCheq = "": var_98 = "": var_9C = ""
  loc_B75052: FLdRfVar var_B4
  loc_B75055: FLdPr Me
  loc_B75058: MemLdPr global_56
  loc_B7505B:  = Me.RecordCount
  loc_B75060: ILdRf var_B4
  loc_B75063: LitI4 0
  loc_B75068: GtI4
  loc_B75069: BranchF loc_B7530E
  loc_B7506C: FLdPr Me
  loc_B7506F: MemLdStr global_56
  loc_B75072: FStAd var_180 
  loc_B75076: FLdPr var_180
  loc_B75079: Me.MoveFirst
  loc_B7507E: FLdRfVar var_BA
  loc_B75081: FLdPr var_180
  loc_B75084:  = Me.EOF
  loc_B75089: FLdI2 var_BA
  loc_B7508C: NotI4
  loc_B7508D: BranchF loc_B75308
  loc_B75090: FLdRfVar var_D4
  loc_B75093: LitVarStr var_D0, "CodiCuco"
  loc_B75098: PopAdLdVar
  loc_B75099: FLdRfVar var_C0
  loc_B7509C: FLdPr var_180
  loc_B7509F:  = Me.Fields
  loc_B750A4: FLdPr var_C0
  loc_B750A7: from_stack_2 = Me.Item(from_stack_1)
  loc_B750AC: FLdZeroAd var_D4
  loc_B750AF: CVarAd
  loc_B750B3: ImpAdCallI2 IsNull()
  loc_B750B8: FFree1Ad var_C0
  loc_B750BB: FFree1Var var_E4 = ""
  loc_B750BE: BranchF loc_B75125
  loc_B750C1: ILdRf var_88
  loc_B750C4: LitStr vbCrLf
  loc_B750C7: ConcatStr
  loc_B750C8: FStStrNoPop var_8C
  loc_B750CB: LitStr "El Banco "
  loc_B750CE: ConcatStr
  loc_B750CF: CVarStr var_F4
  loc_B750D2: FLdRfVar var_E4
  loc_B750D5: FLdRfVar var_D4
  loc_B750D8: LitVarStr var_D0, "CodiBanc"
  loc_B750DD: PopAdLdVar
  loc_B750DE: FLdRfVar var_C0
  loc_B750E1: FLdPr var_180
  loc_B750E4:  = Me.Fields
  loc_B750E9: FLdPr var_C0
  loc_B750EC: from_stack_2 = Me.Item(from_stack_1)
  loc_B750F1: FLdPr var_D4
  loc_B750F4:  = Me.Value
  loc_B750F9: FLdRfVar var_E4
  loc_B750FC: ConcatVar var_104
  loc_B75100: LitVarStr var_114, " NO EXISTE. Verifique..."
  loc_B75105: ConcatVar var_124
  loc_B75109: CStrVarTmp
  loc_B7510A: FStStr var_88
  loc_B7510D: FFree1Str var_8C
  loc_B75110: FFreeAd var_C0 = ""
  loc_B75117: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_B75122: Branch loc_B752FD
  loc_B75125: FLdRfVar var_E4
  loc_B75128: FLdRfVar var_D4
  loc_B7512B: LitVarStr var_D0, "CodiCuco"
  loc_B75130: PopAdLdVar
  loc_B75131: FLdRfVar var_C0
  loc_B75134: FLdPr var_180
  loc_B75137:  = Me.Fields
  loc_B7513C: FLdPr var_C0
  loc_B7513F: from_stack_2 = Me.Item(from_stack_1)
  loc_B75144: FLdPr var_D4
  loc_B75147:  = Me.Value
  loc_B7514C: FLdRfVar var_E4
  loc_B7514F: LitVarStr var_114, vbNullString
  loc_B75154: HardType
  loc_B75155: EqVarBool
  loc_B75157: FFreeAd var_C0 = ""
  loc_B7515E: FFree1Var var_E4 = ""
  loc_B75161: BranchF loc_B751C8
  loc_B75164: ILdRf var_88
  loc_B75167: LitStr vbCrLf
  loc_B7516A: ConcatStr
  loc_B7516B: FStStrNoPop var_8C
  loc_B7516E: LitStr "El Banco "
  loc_B75171: ConcatStr
  loc_B75172: CVarStr var_F4
  loc_B75175: FLdRfVar var_E4
  loc_B75178: FLdRfVar var_D4
  loc_B7517B: LitVarStr var_D0, "CodiBanc"
  loc_B75180: PopAdLdVar
  loc_B75181: FLdRfVar var_C0
  loc_B75184: FLdPr var_180
  loc_B75187:  = Me.Fields
  loc_B7518C: FLdPr var_C0
  loc_B7518F: from_stack_2 = Me.Item(from_stack_1)
  loc_B75194: FLdPr var_D4
  loc_B75197:  = Me.Value
  loc_B7519C: FLdRfVar var_E4
  loc_B7519F: ConcatVar var_104
  loc_B751A3: LitVarStr var_114, " NO TIENE una Cuenta Contable Asociada. Verifique..."
  loc_B751A8: ConcatVar var_124
  loc_B751AC: CStrVarTmp
  loc_B751AD: FStStr var_88
  loc_B751B0: FFree1Str var_8C
  loc_B751B3: FFreeAd var_C0 = ""
  loc_B751BA: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_B751C5: Branch loc_B752FD
  loc_B751C8: FLdRfVar var_D4
  loc_B751CB: LitVarStr var_D0, "ImpuCuco"
  loc_B751D0: PopAdLdVar
  loc_B751D1: FLdRfVar var_C0
  loc_B751D4: FLdPr var_180
  loc_B751D7:  = Me.Fields
  loc_B751DC: FLdPr var_C0
  loc_B751DF: from_stack_2 = Me.Item(from_stack_1)
  loc_B751E4: FLdZeroAd var_D4
  loc_B751E7: CVarAd
  loc_B751EB: ImpAdCallI2 IsNull()
  loc_B751F0: FFree1Ad var_C0
  loc_B751F3: FFree1Var var_E4 = ""
  loc_B751F6: BranchF loc_B7525D
  loc_B751F9: ILdRf var_88
  loc_B751FC: LitStr vbCrLf
  loc_B751FF: ConcatStr
  loc_B75200: FStStrNoPop var_8C
  loc_B75203: LitStr "La Cuenta Contable "
  loc_B75206: ConcatStr
  loc_B75207: CVarStr var_F4
  loc_B7520A: FLdRfVar var_E4
  loc_B7520D: FLdRfVar var_D4
  loc_B75210: LitVarStr var_D0, "CodiCuco"
  loc_B75215: PopAdLdVar
  loc_B75216: FLdRfVar var_C0
  loc_B75219: FLdPr var_180
  loc_B7521C:  = Me.Fields
  loc_B75221: FLdPr var_C0
  loc_B75224: from_stack_2 = Me.Item(from_stack_1)
  loc_B75229: FLdPr var_D4
  loc_B7522C:  = Me.Value
  loc_B75231: FLdRfVar var_E4
  loc_B75234: ConcatVar var_104
  loc_B75238: LitVarStr var_114, " NO EXISTE. Verifique..."
  loc_B7523D: ConcatVar var_124
  loc_B75241: CStrVarTmp
  loc_B75242: FStStr var_88
  loc_B75245: FFree1Str var_8C
  loc_B75248: FFreeAd var_C0 = ""
  loc_B7524F: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_B7525A: Branch loc_B752FD
  loc_B7525D: FLdRfVar var_E4
  loc_B75260: FLdRfVar var_D4
  loc_B75263: LitVarStr var_D0, "ImpuCuco"
  loc_B75268: PopAdLdVar
  loc_B75269: FLdRfVar var_C0
  loc_B7526C: FLdPr var_180
  loc_B7526F:  = Me.Fields
  loc_B75274: FLdPr var_C0
  loc_B75277: from_stack_2 = Me.Item(from_stack_1)
  loc_B7527C: FLdPr var_D4
  loc_B7527F:  = Me.Value
  loc_B75284: FLdRfVar var_E4
  loc_B75287: LitVarI2 var_114, 0
  loc_B7528C: HardType
  loc_B7528D: EqVarBool
  loc_B7528F: FFreeAd var_C0 = ""
  loc_B75296: FFree1Var var_E4 = ""
  loc_B75299: BranchF loc_B752FD
  loc_B7529C: ILdRf var_88
  loc_B7529F: LitStr vbCrLf
  loc_B752A2: ConcatStr
  loc_B752A3: FStStrNoPop var_8C
  loc_B752A6: LitStr "La Cuenta Contable "
  loc_B752A9: ConcatStr
  loc_B752AA: CVarStr var_F4
  loc_B752AD: FLdRfVar var_E4
  loc_B752B0: FLdRfVar var_D4
  loc_B752B3: LitVarStr var_D0, "CodiCuco"
  loc_B752B8: PopAdLdVar
  loc_B752B9: FLdRfVar var_C0
  loc_B752BC: FLdPr var_180
  loc_B752BF:  = Me.Fields
  loc_B752C4: FLdPr var_C0
  loc_B752C7: from_stack_2 = Me.Item(from_stack_1)
  loc_B752CC: FLdPr var_D4
  loc_B752CF:  = Me.Value
  loc_B752D4: FLdRfVar var_E4
  loc_B752D7: ConcatVar var_104
  loc_B752DB: LitVarStr var_114, " NO es Imputable. Verifique..."
  loc_B752E0: ConcatVar var_124
  loc_B752E4: CStrVarTmp
  loc_B752E5: FStStr var_88
  loc_B752E8: FFree1Str var_8C
  loc_B752EB: FFreeAd var_C0 = ""
  loc_B752F2: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_B752FD: FLdPr var_180
  loc_B75300: Me.MoveNext
  loc_B75305: Branch loc_B7507E
  loc_B75308: LitNothing
  loc_B7530A: FStAd var_180 
  loc_B7530E: LitStr "SELECT lqn.ExpeImpu, lqn.NumeLiqu, lqn.CodiRete, lqn.CodiCuco, cc.ImpuCuco"
  loc_B75311: LitStr " FROM liquidaneto lqn"
  loc_B75314: ConcatStr
  loc_B75315: FStStrNoPop var_8C
  loc_B75318: LitStr " LEFT JOIN retenciones r ON r.PeriInfo = lqn.PeriInfo AND r.CodiRete = lqn.CodiRete"
  loc_B7531B: ConcatStr
  loc_B7531C: FStStrNoPop var_90
  loc_B7531F: LitStr " LEFT JOIN infogov.cuentacontable cc ON cc.PeriInfo = lqn.PeriInfo AND cc.CodiCuco = lqn.CodiCuco"
  loc_B75322: ConcatStr
  loc_B75323: FStStrNoPop CierraCajaPagoCheq
  loc_B75326: LitStr " WHERE lqn.PeriInfo = Year(@desde)"
  loc_B75329: ConcatStr
  loc_B7532A: FStStrNoPop var_98
  loc_B7532D: LitStr " AND lqn.CodiRete > 0"
  loc_B75330: ConcatStr
  loc_B75331: FStStrNoPop var_9C
  loc_B75334: LitStr " AND FechCaja BETWEEN @desde AND @hasta"
  loc_B75337: ConcatStr
  loc_B75338: FStStrNoPop var_A0
  loc_B7533B: LitStr " AND (cc.CodiCuco IS NULL OR lqn.CodiCuco = '' OR ImpuCuco IS NULL OR ImpuCuco = 0);"
  loc_B7533E: ConcatStr
  loc_B7533F: FStStrNoPop var_A4
  loc_B75342: Call EjecutarRsCls(from_stack_1v)
  loc_B75347: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoCheq = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_B75358: FLdRfVar var_B4
  loc_B7535B: FLdPr Me
  loc_B7535E: MemLdPr global_56
  loc_B75361:  = Me.RecordCount
  loc_B75366: ILdRf var_B4
  loc_B75369: LitI4 0
  loc_B7536E: GtI4
  loc_B7536F: BranchF loc_B75655
  loc_B75372: FLdPr Me
  loc_B75375: MemLdStr global_56
  loc_B75378: FStAd var_184 
  loc_B7537C: FLdPr var_184
  loc_B7537F: Me.MoveFirst
  loc_B75384: FLdRfVar var_BA
  loc_B75387: FLdPr var_184
  loc_B7538A:  = Me.EOF
  loc_B7538F: FLdI2 var_BA
  loc_B75392: NotI4
  loc_B75393: BranchF loc_B7564F
  loc_B75396: FLdRfVar var_D4
  loc_B75399: LitVarStr var_D0, "CodiCuco"
  loc_B7539E: PopAdLdVar
  loc_B7539F: FLdRfVar var_C0
  loc_B753A2: FLdPr var_184
  loc_B753A5:  = Me.Fields
  loc_B753AA: FLdPr var_C0
  loc_B753AD: from_stack_2 = Me.Item(from_stack_1)
  loc_B753B2: FLdZeroAd var_D4
  loc_B753B5: CVarAd
  loc_B753B9: ImpAdCallI2 IsNull()
  loc_B753BE: FFree1Ad var_C0
  loc_B753C1: FFree1Var var_E4 = ""
  loc_B753C4: BranchF loc_B7542B
  loc_B753C7: ILdRf var_88
  loc_B753CA: LitStr vbCrLf
  loc_B753CD: ConcatStr
  loc_B753CE: FStStrNoPop var_8C
  loc_B753D1: LitStr "La Retención "
  loc_B753D4: ConcatStr
  loc_B753D5: CVarStr var_F4
  loc_B753D8: FLdRfVar var_E4
  loc_B753DB: FLdRfVar var_D4
  loc_B753DE: LitVarStr var_D0, "CodiRete"
  loc_B753E3: PopAdLdVar
  loc_B753E4: FLdRfVar var_C0
  loc_B753E7: FLdPr var_184
  loc_B753EA:  = Me.Fields
  loc_B753EF: FLdPr var_C0
  loc_B753F2: from_stack_2 = Me.Item(from_stack_1)
  loc_B753F7: FLdPr var_D4
  loc_B753FA:  = Me.Value
  loc_B753FF: FLdRfVar var_E4
  loc_B75402: ConcatVar var_104
  loc_B75406: LitVarStr var_114, " NO EXISTE. Verifique..."
  loc_B7540B: ConcatVar var_124
  loc_B7540F: CStrVarTmp
  loc_B75410: FStStr var_88
  loc_B75413: FFree1Str var_8C
  loc_B75416: FFreeAd var_C0 = ""
  loc_B7541D: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_B75428: Branch loc_B75644
  loc_B7542B: FLdRfVar var_E4
  loc_B7542E: FLdRfVar var_D4
  loc_B75431: LitVarStr var_D0, "CodiCuco"
  loc_B75436: PopAdLdVar
  loc_B75437: FLdRfVar var_C0
  loc_B7543A: FLdPr var_184
  loc_B7543D:  = Me.Fields
  loc_B75442: FLdPr var_C0
  loc_B75445: from_stack_2 = Me.Item(from_stack_1)
  loc_B7544A: FLdPr var_D4
  loc_B7544D:  = Me.Value
  loc_B75452: FLdRfVar var_E4
  loc_B75455: LitVarStr var_114, vbNullString
  loc_B7545A: HardType
  loc_B7545B: EqVarBool
  loc_B7545D: FFreeAd var_C0 = ""
  loc_B75464: FFree1Var var_E4 = ""
  loc_B75467: BranchF loc_B7550F
  loc_B7546A: ILdRf var_88
  loc_B7546D: LitStr vbCrLf
  loc_B75470: ConcatStr
  loc_B75471: FStStrNoPop var_8C
  loc_B75474: LitStr "La Liquidación, expediente: "
  loc_B75477: ConcatStr
  loc_B75478: CVarStr var_F4
  loc_B7547B: FLdRfVar var_E4
  loc_B7547E: FLdRfVar var_D4
  loc_B75481: LitVarStr var_D0, "ExpeImpu"
  loc_B75486: PopAdLdVar
  loc_B75487: FLdRfVar var_C0
  loc_B7548A: FLdPr var_184
  loc_B7548D:  = Me.Fields
  loc_B75492: FLdPr var_C0
  loc_B75495: from_stack_2 = Me.Item(from_stack_1)
  loc_B7549A: FLdPr var_D4
  loc_B7549D:  = Me.Value
  loc_B754A2: FLdRfVar var_E4
  loc_B754A5: ConcatVar var_104
  loc_B754A9: LitVarStr var_114, " - número: "
  loc_B754AE: ConcatVar var_124
  loc_B754B2: FLdRfVar var_14C
  loc_B754B5: FLdRfVar var_13C
  loc_B754B8: LitVarStr var_138, "NumeLiqu"
  loc_B754BD: PopAdLdVar
  loc_B754BE: FLdRfVar var_128
  loc_B754C1: FLdPr var_184
  loc_B754C4:  = Me.Fields
  loc_B754C9: FLdPr var_128
  loc_B754CC: from_stack_2 = Me.Item(from_stack_1)
  loc_B754D1: FLdPr var_13C
  loc_B754D4:  = Me.Value
  loc_B754D9: FLdRfVar var_14C
  loc_B754DC: ConcatVar var_15C
  loc_B754E0: LitVarStr var_16C, " NO TIENE una Cuenta Contable Asociada. Verifique..."
  loc_B754E5: ConcatVar var_17C
  loc_B754E9: CStrVarTmp
  loc_B754EA: FStStr var_88
  loc_B754ED: FFree1Str var_8C
  loc_B754F0: FFreeAd var_C0 = "": var_D4 = "": var_128 = ""
  loc_B754FB: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_14C = "": var_15C = ""
  loc_B7550C: Branch loc_B75644
  loc_B7550F: FLdRfVar var_D4
  loc_B75512: LitVarStr var_D0, "ImpuCuco"
  loc_B75517: PopAdLdVar
  loc_B75518: FLdRfVar var_C0
  loc_B7551B: FLdPr var_184
  loc_B7551E:  = Me.Fields
  loc_B75523: FLdPr var_C0
  loc_B75526: from_stack_2 = Me.Item(from_stack_1)
  loc_B7552B: FLdZeroAd var_D4
  loc_B7552E: CVarAd
  loc_B75532: ImpAdCallI2 IsNull()
  loc_B75537: FFree1Ad var_C0
  loc_B7553A: FFree1Var var_E4 = ""
  loc_B7553D: BranchF loc_B755A4
  loc_B75540: ILdRf var_88
  loc_B75543: LitStr vbCrLf
  loc_B75546: ConcatStr
  loc_B75547: FStStrNoPop var_8C
  loc_B7554A: LitStr "La Cuenta Contable "
  loc_B7554D: ConcatStr
  loc_B7554E: CVarStr var_F4
  loc_B75551: FLdRfVar var_E4
  loc_B75554: FLdRfVar var_D4
  loc_B75557: LitVarStr var_D0, "CodiCuco"
  loc_B7555C: PopAdLdVar
  loc_B7555D: FLdRfVar var_C0
  loc_B75560: FLdPr var_184
  loc_B75563:  = Me.Fields
  loc_B75568: FLdPr var_C0
  loc_B7556B: from_stack_2 = Me.Item(from_stack_1)
  loc_B75570: FLdPr var_D4
  loc_B75573:  = Me.Value
  loc_B75578: FLdRfVar var_E4
  loc_B7557B: ConcatVar var_104
  loc_B7557F: LitVarStr var_114, " NO EXISTE. Verifique..."
  loc_B75584: ConcatVar var_124
  loc_B75588: CStrVarTmp
  loc_B75589: FStStr var_88
  loc_B7558C: FFree1Str var_8C
  loc_B7558F: FFreeAd var_C0 = ""
  loc_B75596: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_B755A1: Branch loc_B75644
  loc_B755A4: FLdRfVar var_E4
  loc_B755A7: FLdRfVar var_D4
  loc_B755AA: LitVarStr var_D0, "ImpuCuco"
  loc_B755AF: PopAdLdVar
  loc_B755B0: FLdRfVar var_C0
  loc_B755B3: FLdPr var_184
  loc_B755B6:  = Me.Fields
  loc_B755BB: FLdPr var_C0
  loc_B755BE: from_stack_2 = Me.Item(from_stack_1)
  loc_B755C3: FLdPr var_D4
  loc_B755C6:  = Me.Value
  loc_B755CB: FLdRfVar var_E4
  loc_B755CE: LitVarI2 var_114, 0
  loc_B755D3: HardType
  loc_B755D4: EqVarBool
  loc_B755D6: FFreeAd var_C0 = ""
  loc_B755DD: FFree1Var var_E4 = ""
  loc_B755E0: BranchF loc_B75644
  loc_B755E3: ILdRf var_88
  loc_B755E6: LitStr vbCrLf
  loc_B755E9: ConcatStr
  loc_B755EA: FStStrNoPop var_8C
  loc_B755ED: LitStr "La Cuenta Contable "
  loc_B755F0: ConcatStr
  loc_B755F1: CVarStr var_F4
  loc_B755F4: FLdRfVar var_E4
  loc_B755F7: FLdRfVar var_D4
  loc_B755FA: LitVarStr var_D0, "CodiCuco"
  loc_B755FF: PopAdLdVar
  loc_B75600: FLdRfVar var_C0
  loc_B75603: FLdPr var_184
  loc_B75606:  = Me.Fields
  loc_B7560B: FLdPr var_C0
  loc_B7560E: from_stack_2 = Me.Item(from_stack_1)
  loc_B75613: FLdPr var_D4
  loc_B75616:  = Me.Value
  loc_B7561B: FLdRfVar var_E4
  loc_B7561E: ConcatVar var_104
  loc_B75622: LitVarStr var_114, " NO es Imputable. Verifique..."
  loc_B75627: ConcatVar var_124
  loc_B7562B: CStrVarTmp
  loc_B7562C: FStStr var_88
  loc_B7562F: FFree1Str var_8C
  loc_B75632: FFreeAd var_C0 = ""
  loc_B75639: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_B75644: FLdPr var_184
  loc_B75647: Me.MoveNext
  loc_B7564C: Branch loc_B75384
  loc_B7564F: LitNothing
  loc_B75651: FStAd var_184 
  loc_B75655: ILdRf var_88
  loc_B75658: LitStr vbNullString
  loc_B7565B: EqStr
  loc_B7565D: BranchF loc_B758B3
  loc_B75660: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_B75663: LitStr " CREATE TEMPORARY TABLE tmovi"
  loc_B75666: ConcatStr
  loc_B75667: FStStrNoPop var_8C
  loc_B7566A: LitStr " SELECT *"
  loc_B7566D: ConcatStr
  loc_B7566E: FStStrNoPop var_90
  loc_B75671: LitStr " FROM liquidaneto lqn"
  loc_B75674: ConcatStr
  loc_B75675: FStStrNoPop CierraCajaPagoCheq
  loc_B75678: LitStr " WHERE lqn.PeriInfo = Year(@desde) AND lqn.FechCaja BETWEEN @desde AND @hasta"
  loc_B7567B: ConcatStr
  loc_B7567C: FStStrNoPop var_98
  loc_B7567F: LitStr " GROUP BY ExpeImpu, NumeLiqu, CucuPers, PeriInfo, FechCaja;"
  loc_B75682: ConcatStr
  loc_B75683: FStStrNoPop var_9C
  loc_B75686: Call EjecutarRsCls(from_stack_1v)
  loc_B7568B: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoCheq = "": var_98 = ""
  loc_B75698: LitStr "INSERT INTO subdpagoimpu (PeriInfo,TipoPago,FechCaja,DebeCuco,DebeCaja,ExpeImpu,NumeLiqu,CucuPers,CodiRete,HabeCuco,HabeCaja,CodiBanc,NumeMoba)"
  loc_B7569B: LitStr " SELECT tmovi.PeriInfo"
  loc_B7569E: ConcatStr
  loc_B7569F: FStStrNoPop var_8C
  loc_B756A2: LitStr ", (SELECT IF(Left(i.CodiPart,1)=p.PaexPaco,'Extra','Presu')) TipoPago"
  loc_B756A5: ConcatStr
  loc_B756A6: FStStrNoPop var_90
  loc_B756A9: LitStr ", FechCaja"
  loc_B756AC: ConcatStr
  loc_B756AD: FStStrNoPop CierraCajaPagoCheq
  loc_B756B0: LitStr ", IF(Left(i.CodiPart,1)<>p.PaexPaco,p.DeexPaco,par.CodiCuco) CodiCuco"
  loc_B756B3: ConcatStr
  loc_B756B4: FStStrNoPop var_98
  loc_B756B7: LitStr ", Sum(LiquImpu), tmovi.ExpeImpu, tmovi.NumeLiqu, tmovi.CucuPers, CodiRete, '', 0, 0, 0"
  loc_B756BA: ConcatStr
  loc_B756BB: FStStrNoPop var_9C
  loc_B756BE: LitStr " FROM tmovi"
  loc_B756C1: ConcatStr
  loc_B756C2: FStStrNoPop var_A0
  loc_B756C5: LitStr " INNER JOIN liquidacion l ON l.PeriInfo = tmovi.PeriInfo AND l.ExpeImpu = tmovi.ExpeImpu AND l.NumeLiqu = tmovi.NumeLiqu AND l.TipoLiqu = 1"
  loc_B756C8: ConcatStr
  loc_B756C9: FStStrNoPop var_A4
  loc_B756CC: LitStr " INNER JOIN imputacion i ON i.PeriInfo = tmovi.PeriInfo AND i.ExpeImpu = tmovi.ExpeImpu AND i.NumeLiqu = tmovi.NumeLiqu AND i.CucuPers = tmovi.CucuPers AND LiquImpu != 0"
  loc_B756CF: ConcatStr
  loc_B756D0: FStStrNoPop var_A8
  loc_B756D3: LitStr " AND AjusImpu = 0"
  loc_B756D6: ConcatStr
  loc_B756D7: FStStrNoPop var_AC
  loc_B756DA: LitStr " INNER JOIN partida par ON par.PeriInfo = i.PeriInfo AND par.CodiPart = i.CodiPart"
  loc_B756DD: ConcatStr
  loc_B756DE: FStStrNoPop var_B0
  loc_B756E1: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_B756E4: ConcatStr
  loc_B756E5: FStStrNoPop var_188
  loc_B756E8: LitStr " WHERE tmovi.PeriInfo = Year(@desde)"
  loc_B756EB: ConcatStr
  loc_B756EC: FStStrNoPop var_18C
  loc_B756EF: LitStr " AND tmovi.FechCaja BETWEEN @desde AND @hasta"
  loc_B756F2: ConcatStr
  loc_B756F3: FStStrNoPop var_190
  loc_B756F6: LitStr " GROUP BY ExpeImpu, NumeLiqu, par.CodiCuco, CucuPers, PeriInfo, FechCaja;"
  loc_B756F9: ConcatStr
  loc_B756FA: FStStrNoPop var_194
  loc_B756FD: Call EjecutarRsCls(from_stack_1v)
  loc_B75702: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoCheq = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_B75721: LitStr "INSERT INTO subdpagoimpu (PeriInfo,TipoPago,FechCaja,DebeCuco,DebeCaja,ExpeImpu,NumeLiqu,CucuPers,CodiRete,HabeCuco,HabeCaja,CodiBanc,NumeMoba)"
  loc_B75724: LitStr " SELECT lqn.PeriInfo, '' AS TipoPago, FechCaja, '', 0, lqn.ExpeImpu, lqn.NumeLiqu, lqn.CucuPers"
  loc_B75727: ConcatStr
  loc_B75728: FStStrNoPop var_8C
  loc_B7572B: LitStr ", CodiRete, IF(AutoCheq IN (1,2,4),CatePaco,b.CodiCuco), ch.ImpoCheq, ch.CodiBanc, ch.NumeMoba"
  loc_B7572E: ConcatStr
  loc_B7572F: FStStrNoPop var_90
  loc_B75732: LitStr " FROM liquidaneto lqn"
  loc_B75735: ConcatStr
  loc_B75736: FStStrNoPop CierraCajaPagoCheq
  loc_B75739: LitStr " INNER JOIN liquidacion l ON l.PeriInfo = lqn.PeriInfo AND l.ExpeImpu = lqn.ExpeImpu AND l.NumeLiqu = lqn.NumeLiqu AND l.TipoLiqu = 1"
  loc_B7573C: ConcatStr
  loc_B7573D: FStStrNoPop var_98
  loc_B75740: LitStr " INNER JOIN ordenpago o ON o.PeriInfo = l.PeriInfo AND o.ExpeImpu = l.ExpeImpu AND o.NumeLiqu = l.NumeLiqu AND FeanOrpa IS NULL"
  loc_B75743: ConcatStr
  loc_B75744: FStStrNoPop var_9C
  loc_B75747: LitStr " AND o.ChunOrpa = 0"
  loc_B7574A: ConcatStr
  loc_B7574B: FStStrNoPop var_A0
  loc_B7574E: LitStr " INNER JOIN cheque ch ON ch.PeriInfo = lqn.PeriInfo AND ch.ExpeImpu = lqn.ExpeImpu AND ch.NumeLiqu = lqn.NumeLiqu"
  loc_B75751: ConcatStr
  loc_B75752: FStStrNoPop var_A4
  loc_B75755: LitStr " AND ch.CucuPers = lqn.CucuPers"
  loc_B75758: ConcatStr
  loc_B75759: FStStrNoPop var_A8
  loc_B7575C: LitStr " AND ch.NumeMoba > 0 AND ch.FeanCheq IS NULL AND ch.FepaCheq = lqn.FechCaja"
  loc_B7575F: ConcatStr
  loc_B75760: FStStrNoPop var_AC
  loc_B75763: LitStr " INNER JOIN banco b ON b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_B75766: ConcatStr
  loc_B75767: FStStrNoPop var_B0
  loc_B7576A: LitStr " INNER JOIN paraconta p ON p.PeriInfo = lqn.PeriInfo"
  loc_B7576D: ConcatStr
  loc_B7576E: FStStrNoPop var_188
  loc_B75771: LitStr " WHERE lqn.PeriInfo = Year(@desde)"
  loc_B75774: ConcatStr
  loc_B75775: FStStrNoPop var_18C
  loc_B75778: LitStr " AND lqn.FechCaja BETWEEN @desde AND @hasta"
  loc_B7577B: ConcatStr
  loc_B7577C: FStStrNoPop var_190
  loc_B7577F: LitStr " AND lqn.CodiRete = 0;"
  loc_B75782: ConcatStr
  loc_B75783: FStStrNoPop var_194
  loc_B75786: Call EjecutarRsCls(from_stack_1v)
  loc_B7578B: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoCheq = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_B757AA: LitStr "INSERT INTO subdpagoimpu (PeriInfo,TipoPago,FechCaja,DebeCuco,DebeCaja,ExpeImpu,NumeLiqu,CucuPers,CodiRete,HabeCuco,HabeCaja,CodiBanc,NumeMoba)"
  loc_B757AD: LitStr " SELECT tbl.*, IF(AutoCheq IN (1,2,4),CatePaco,b.CodiCuco), ImpoCheq, ch.CodiBanc, ch.NumeMoba"
  loc_B757B0: ConcatStr
  loc_B757B1: FStStrNoPop var_8C
  loc_B757B4: LitStr " FROM ("
  loc_B757B7: ConcatStr
  loc_B757B8: FStStrNoPop var_90
  loc_B757BB: LitStr " SELECT lqn.PeriInfo, '' AS TipoPago, FechCaja, '', 0, lqn.ExpeImpu, lqn.NumeLiqu, lqn.CucuPers"
  loc_B757BE: ConcatStr
  loc_B757BF: FStStrNoPop CierraCajaPagoCheq
  loc_B757C2: LitStr ", CodiRete /*, IF(AutoCheq IN (1,2,4),CatePaco,b.CodiCuco) */"
  loc_B757C5: ConcatStr
  loc_B757C6: FStStrNoPop var_98
  loc_B757C9: LitStr " FROM liquidaneto lqn"
  loc_B757CC: ConcatStr
  loc_B757CD: FStStrNoPop var_9C
  loc_B757D0: LitStr " INNER JOIN liquidacion l ON l.PeriInfo = lqn.PeriInfo AND l.ExpeImpu = lqn.ExpeImpu AND l.NumeLiqu = lqn.NumeLiqu AND l.TipoLiqu = 1"
  loc_B757D3: ConcatStr
  loc_B757D4: FStStrNoPop var_A0
  loc_B757D7: LitStr " INNER JOIN ordenpago o ON o.PeriInfo = l.PeriInfo AND o.ExpeImpu = l.ExpeImpu AND o.NumeLiqu = l.NumeLiqu AND FeanOrpa IS NULL"
  loc_B757DA: ConcatStr
  loc_B757DB: FStStrNoPop var_A4
  loc_B757DE: LitStr " AND o.ChunOrpa = 1"
  loc_B757E1: ConcatStr
  loc_B757E2: FStStrNoPop var_A8
  loc_B757E5: LitStr " INNER JOIN paraconta p ON p.PeriInfo = lqn.PeriInfo"
  loc_B757E8: ConcatStr
  loc_B757E9: FStStrNoPop var_AC
  loc_B757EC: LitStr " WHERE lqn.PeriInfo = Year(@desde)"
  loc_B757EF: ConcatStr
  loc_B757F0: FStStrNoPop var_B0
  loc_B757F3: LitStr " AND lqn.FechCaja BETWEEN @desde AND @hasta"
  loc_B757F6: ConcatStr
  loc_B757F7: FStStrNoPop var_188
  loc_B757FA: LitStr " AND lqn.CodiRete = 0"
  loc_B757FD: ConcatStr
  loc_B757FE: FStStrNoPop var_18C
  loc_B75801: LitStr " GROUP BY lqn.PeriInfo, lqn.ExpeImpu, lqn.NumeLiqu"
  loc_B75804: ConcatStr
  loc_B75805: FStStrNoPop var_190
  loc_B75808: LitStr " ) AS tbl"
  loc_B7580B: ConcatStr
  loc_B7580C: FStStrNoPop var_194
  loc_B7580F: LitStr " INNER JOIN cheque ch ON ch.PeriInfo = tbl.PeriInfo AND ch.ExpeImpu = tbl.ExpeImpu AND ch.NumeLiqu = tbl.NumeLiqu"
  loc_B75812: ConcatStr
  loc_B75813: FStStrNoPop var_198
  loc_B75816: LitStr " AND ch.NumeMoba > 0 AND ch.FeanCheq IS NULL AND ch.FepaCheq = tbl.FechCaja"
  loc_B75819: ConcatStr
  loc_B7581A: FStStrNoPop var_19C
  loc_B7581D: LitStr " INNER JOIN banco b ON b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_B75820: ConcatStr
  loc_B75821: FStStrNoPop var_1A0
  loc_B75824: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tbl.PeriInfo;"
  loc_B75827: ConcatStr
  loc_B75828: FStStrNoPop var_1A4
  loc_B7582B: Call EjecutarRsCls(from_stack_1v)
  loc_B75830: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoCheq = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = ""
  loc_B75857: LitStr "INSERT INTO subdpagoimpu (PeriInfo,TipoPago,FechCaja,DebeCuco,DebeCaja,ExpeImpu,NumeLiqu,CucuPers,CodiRete,HabeCuco,HabeCaja,CodiBanc,NumeMoba)"
  loc_B7585A: LitStr " SELECT lqn.PeriInfo"
  loc_B7585D: ConcatStr
  loc_B7585E: FStStrNoPop var_8C
  loc_B75861: LitStr ", '' AS TipoPago"
  loc_B75864: ConcatStr
  loc_B75865: FStStrNoPop var_90
  loc_B75868: LitStr ", FechCaja, '', 0, lqn.ExpeImpu, lqn.NumeLiqu, lqn.CucuPers, lqn.CodiRete, lqn.CodiCuco, ImpoLine, 0, lqn.CertLine"
  loc_B7586B: ConcatStr
  loc_B7586C: FStStrNoPop CierraCajaPagoCheq
  loc_B7586F: LitStr " FROM liquidaneto lqn"
  loc_B75872: ConcatStr
  loc_B75873: FStStrNoPop var_98
  loc_B75876: LitStr " INNER JOIN liquidacion l ON l.ExpeImpu = lqn.ExpeImpu AND l.NumeLiqu = lqn.NumeLiqu AND l.TipoLiqu = 1"
  loc_B75879: ConcatStr
  loc_B7587A: FStStrNoPop var_9C
  loc_B7587D: LitStr " INNER JOIN paraconta p ON p.PeriInfo = lqn.PeriInfo"
  loc_B75880: ConcatStr
  loc_B75881: FStStrNoPop var_A0
  loc_B75884: LitStr " WHERE lqn.PeriInfo = Year(@desde)"
  loc_B75887: ConcatStr
  loc_B75888: FStStrNoPop var_A4
  loc_B7588B: LitStr " AND lqn.FechCaja BETWEEN @desde AND @hasta"
  loc_B7588E: ConcatStr
  loc_B7588F: FStStrNoPop var_A8
  loc_B75892: LitStr " AND lqn.CodiRete > 0;"
  loc_B75895: ConcatStr
  loc_B75896: FStStrNoPop var_AC
  loc_B75899: Call EjecutarRsCls(from_stack_1v)
  loc_B7589E: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoCheq = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_B758B3: ExitProcCbHresult
  loc_B758B9: UMiCy
  loc_B758BA: IDvI4
  loc_B758BB: GeCyR8
End Function

Public Function CierraCajaPagoDeudaConsolidada() 'AB7B58
  'Data Table: 46D5B0
  loc_AB7610: ZeroRetVal
  loc_AB7612: LitStr "DELETE FROM subdpagodeucon WHERE PeriInfo = Year(@desde) AND FechCaja >= @desde;"
  loc_AB7615: Call EjecutarRsCls(from_stack_1v)
  loc_AB761A: LitStr "SELECT i.CodiPart, p.PatrCuco, cc.ImpuCuco"
  loc_AB761D: LitStr " FROM imputacion i"
  loc_AB7620: ConcatStr
  loc_AB7621: FStStrNoPop var_8C
  loc_AB7624: LitStr " LEFT JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AB7627: ConcatStr
  loc_AB7628: FStStrNoPop var_90
  loc_AB762B: LitStr " LEFT JOIN infogov.cuentacontable cc ON cc.PeriInfo = p.PeriInfo AND cc.CodiCuco = p.PatrCuco"
  loc_AB762E: ConcatStr
  loc_AB762F: FStStrNoPop CierraCajaPagoDeudaConsolidada
  loc_AB7632: LitStr " LEFT JOIN paraconta pp ON pp.PeriInfo = i.PeriInfo"
  loc_AB7635: ConcatStr
  loc_AB7636: FStStrNoPop var_98
  loc_AB7639: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AB763C: ConcatStr
  loc_AB763D: FStStrNoPop var_9C
  loc_AB7640: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AB7643: ConcatStr
  loc_AB7644: FStStrNoPop var_A0
  loc_AB7647: LitStr " AND PagaImpu != 0"
  loc_AB764A: ConcatStr
  loc_AB764B: FStStrNoPop var_A4
  loc_AB764E: LitStr " AND AjusImpu = 0"
  loc_AB7651: ConcatStr
  loc_AB7652: FStStrNoPop var_A8
  loc_AB7655: LitStr " AND Left(i.CodiPart,1) != PaexPaco"
  loc_AB7658: ConcatStr
  loc_AB7659: FStStrNoPop var_AC
  loc_AB765C: LitStr " AND i.CodiPart LIKE '62" & Chr(37) & "'"
  loc_AB765F: ConcatStr
  loc_AB7660: FStStrNoPop var_B0
  loc_AB7663: LitStr " AND (p.CodiCuco IS NULL OR p.CodiCuco = '' OR ImpuCuco IS NULL OR ImpuCuco = 0);"
  loc_AB7666: ConcatStr
  loc_AB7667: FStStrNoPop var_B4
  loc_AB766A: Call EjecutarRsCls(from_stack_1v)
  loc_AB766F: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoDeudaConsolidada = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_AB7688: FLdRfVar var_B8
  loc_AB768B: FLdPr Me
  loc_AB768E: MemLdPr global_56
  loc_AB7691:  = Me.RecordCount
  loc_AB7696: ILdRf var_B8
  loc_AB7699: LitI4 0
  loc_AB769E: GtI4
  loc_AB769F: BranchF loc_AB79C6
  loc_AB76A2: FLdPr Me
  loc_AB76A5: MemLdStr global_56
  loc_AB76A8: FStAd var_BC 
  loc_AB76AC: FLdPr var_BC
  loc_AB76AF: Me.MoveFirst
  loc_AB76B4: FLdRfVar var_BE
  loc_AB76B7: FLdPr var_BC
  loc_AB76BA:  = Me.EOF
  loc_AB76BF: FLdI2 var_BE
  loc_AB76C2: NotI4
  loc_AB76C3: BranchF loc_AB79C0
  loc_AB76C6: FLdRfVar var_D8
  loc_AB76C9: LitVarStr var_D4, "PatrCuco"
  loc_AB76CE: PopAdLdVar
  loc_AB76CF: FLdRfVar var_C4
  loc_AB76D2: FLdPr var_BC
  loc_AB76D5:  = Me.Fields
  loc_AB76DA: FLdPr var_C4
  loc_AB76DD: from_stack_2 = Me.Item(from_stack_1)
  loc_AB76E2: FLdZeroAd var_D8
  loc_AB76E5: CVarAd
  loc_AB76E9: ImpAdCallI2 IsNull()
  loc_AB76EE: FFree1Ad var_C4
  loc_AB76F1: FFree1Var var_E8 = ""
  loc_AB76F4: BranchF loc_AB775B
  loc_AB76F7: ILdRf var_88
  loc_AB76FA: LitStr vbCrLf
  loc_AB76FD: ConcatStr
  loc_AB76FE: FStStrNoPop var_8C
  loc_AB7701: LitStr "La Partida "
  loc_AB7704: ConcatStr
  loc_AB7705: CVarStr var_F8
  loc_AB7708: FLdRfVar var_E8
  loc_AB770B: FLdRfVar var_D8
  loc_AB770E: LitVarStr var_D4, "CodiPart"
  loc_AB7713: PopAdLdVar
  loc_AB7714: FLdRfVar var_C4
  loc_AB7717: FLdPr var_BC
  loc_AB771A:  = Me.Fields
  loc_AB771F: FLdPr var_C4
  loc_AB7722: from_stack_2 = Me.Item(from_stack_1)
  loc_AB7727: FLdPr var_D8
  loc_AB772A:  = Me.Value
  loc_AB772F: FLdRfVar var_E8
  loc_AB7732: ConcatVar var_108
  loc_AB7736: LitVarStr var_118, " correspondiente a la imputacion NO EXISTE. Verifique..."
  loc_AB773B: ConcatVar var_128
  loc_AB773F: CStrVarTmp
  loc_AB7740: FStStr var_88
  loc_AB7743: FFree1Str var_8C
  loc_AB7746: FFreeAd var_C4 = ""
  loc_AB774D: FFreeVar var_F8 = "": var_E8 = "": var_108 = ""
  loc_AB7758: Branch loc_AB79B5
  loc_AB775B: FLdRfVar var_E8
  loc_AB775E: FLdRfVar var_D8
  loc_AB7761: LitVarStr var_D4, "PatrCuco"
  loc_AB7766: PopAdLdVar
  loc_AB7767: FLdRfVar var_C4
  loc_AB776A: FLdPr var_BC
  loc_AB776D:  = Me.Fields
  loc_AB7772: FLdPr var_C4
  loc_AB7775: from_stack_2 = Me.Item(from_stack_1)
  loc_AB777A: FLdPr var_D8
  loc_AB777D:  = Me.Value
  loc_AB7782: FLdRfVar var_E8
  loc_AB7785: LitVarStr var_118, vbNullString
  loc_AB778A: HardType
  loc_AB778B: EqVarBool
  loc_AB778D: FFreeAd var_C4 = ""
  loc_AB7794: FFree1Var var_E8 = ""
  loc_AB7797: BranchF loc_AB77FE
  loc_AB779A: ILdRf var_88
  loc_AB779D: LitStr vbCrLf
  loc_AB77A0: ConcatStr
  loc_AB77A1: FStStrNoPop var_8C
  loc_AB77A4: LitStr "La Partida "
  loc_AB77A7: ConcatStr
  loc_AB77A8: CVarStr var_F8
  loc_AB77AB: FLdRfVar var_E8
  loc_AB77AE: FLdRfVar var_D8
  loc_AB77B1: LitVarStr var_D4, "CodiPart"
  loc_AB77B6: PopAdLdVar
  loc_AB77B7: FLdRfVar var_C4
  loc_AB77BA: FLdPr var_BC
  loc_AB77BD:  = Me.Fields
  loc_AB77C2: FLdPr var_C4
  loc_AB77C5: from_stack_2 = Me.Item(from_stack_1)
  loc_AB77CA: FLdPr var_D8
  loc_AB77CD:  = Me.Value
  loc_AB77D2: FLdRfVar var_E8
  loc_AB77D5: ConcatVar var_108
  loc_AB77D9: LitVarStr var_118, " NO TIENE una Cuenta de Deuda Asociada. Verifique..."
  loc_AB77DE: ConcatVar var_128
  loc_AB77E2: CStrVarTmp
  loc_AB77E3: FStStr var_88
  loc_AB77E6: FFree1Str var_8C
  loc_AB77E9: FFreeAd var_C4 = ""
  loc_AB77F0: FFreeVar var_F8 = "": var_E8 = "": var_108 = ""
  loc_AB77FB: Branch loc_AB79B5
  loc_AB77FE: FLdRfVar var_D8
  loc_AB7801: LitVarStr var_D4, "ImpuCuco"
  loc_AB7806: PopAdLdVar
  loc_AB7807: FLdRfVar var_C4
  loc_AB780A: FLdPr var_BC
  loc_AB780D:  = Me.Fields
  loc_AB7812: FLdPr var_C4
  loc_AB7815: from_stack_2 = Me.Item(from_stack_1)
  loc_AB781A: FLdZeroAd var_D8
  loc_AB781D: CVarAd
  loc_AB7821: ImpAdCallI2 IsNull()
  loc_AB7826: FFree1Ad var_C4
  loc_AB7829: FFree1Var var_E8 = ""
  loc_AB782C: BranchF loc_AB78D4
  loc_AB782F: ILdRf var_88
  loc_AB7832: LitStr vbCrLf
  loc_AB7835: ConcatStr
  loc_AB7836: FStStrNoPop var_8C
  loc_AB7839: LitStr "La Cuenta de Deuda "
  loc_AB783C: ConcatStr
  loc_AB783D: CVarStr var_F8
  loc_AB7840: FLdRfVar var_E8
  loc_AB7843: FLdRfVar var_D8
  loc_AB7846: LitVarStr var_D4, "CodiCuco"
  loc_AB784B: PopAdLdVar
  loc_AB784C: FLdRfVar var_C4
  loc_AB784F: FLdPr var_BC
  loc_AB7852:  = Me.Fields
  loc_AB7857: FLdPr var_C4
  loc_AB785A: from_stack_2 = Me.Item(from_stack_1)
  loc_AB785F: FLdPr var_D8
  loc_AB7862:  = Me.Value
  loc_AB7867: FLdRfVar var_E8
  loc_AB786A: ConcatVar var_108
  loc_AB786E: LitVarStr var_118, " de la Partida "
  loc_AB7873: ConcatVar var_128
  loc_AB7877: FLdRfVar var_150
  loc_AB787A: FLdRfVar var_140
  loc_AB787D: LitVarStr var_13C, "CodiPart"
  loc_AB7882: PopAdLdVar
  loc_AB7883: FLdRfVar var_12C
  loc_AB7886: FLdPr var_BC
  loc_AB7889:  = Me.Fields
  loc_AB788E: FLdPr var_12C
  loc_AB7891: from_stack_2 = Me.Item(from_stack_1)
  loc_AB7896: FLdPr var_140
  loc_AB7899:  = Me.Value
  loc_AB789E: FLdRfVar var_150
  loc_AB78A1: ConcatVar var_160
  loc_AB78A5: LitVarStr var_170, " NO EXISTE. Verifique..."
  loc_AB78AA: ConcatVar var_180
  loc_AB78AE: CStrVarTmp
  loc_AB78AF: FStStr var_88
  loc_AB78B2: FFree1Str var_8C
  loc_AB78B5: FFreeAd var_C4 = "": var_D8 = "": var_12C = ""
  loc_AB78C0: FFreeVar var_F8 = "": var_E8 = "": var_108 = "": var_128 = "": var_150 = "": var_160 = ""
  loc_AB78D1: Branch loc_AB79B5
  loc_AB78D4: FLdRfVar var_E8
  loc_AB78D7: FLdRfVar var_D8
  loc_AB78DA: LitVarStr var_D4, "ImpuCuco"
  loc_AB78DF: PopAdLdVar
  loc_AB78E0: FLdRfVar var_C4
  loc_AB78E3: FLdPr var_BC
  loc_AB78E6:  = Me.Fields
  loc_AB78EB: FLdPr var_C4
  loc_AB78EE: from_stack_2 = Me.Item(from_stack_1)
  loc_AB78F3: FLdPr var_D8
  loc_AB78F6:  = Me.Value
  loc_AB78FB: FLdRfVar var_E8
  loc_AB78FE: LitVarI2 var_118, 0
  loc_AB7903: HardType
  loc_AB7904: EqVarBool
  loc_AB7906: FFreeAd var_C4 = ""
  loc_AB790D: FFree1Var var_E8 = ""
  loc_AB7910: BranchF loc_AB79B5
  loc_AB7913: ILdRf var_88
  loc_AB7916: LitStr vbCrLf
  loc_AB7919: ConcatStr
  loc_AB791A: FStStrNoPop var_8C
  loc_AB791D: LitStr "La Cuenta de Deuda "
  loc_AB7920: ConcatStr
  loc_AB7921: CVarStr var_F8
  loc_AB7924: FLdRfVar var_E8
  loc_AB7927: FLdRfVar var_D8
  loc_AB792A: LitVarStr var_D4, "CodiCuco"
  loc_AB792F: PopAdLdVar
  loc_AB7930: FLdRfVar var_C4
  loc_AB7933: FLdPr var_BC
  loc_AB7936:  = Me.Fields
  loc_AB793B: FLdPr var_C4
  loc_AB793E: from_stack_2 = Me.Item(from_stack_1)
  loc_AB7943: FLdPr var_D8
  loc_AB7946:  = Me.Value
  loc_AB794B: FLdRfVar var_E8
  loc_AB794E: ConcatVar var_108
  loc_AB7952: LitVarStr var_118, " de la Partida "
  loc_AB7957: ConcatVar var_128
  loc_AB795B: FLdRfVar var_150
  loc_AB795E: FLdRfVar var_140
  loc_AB7961: LitVarStr var_13C, "CodiPart"
  loc_AB7966: PopAdLdVar
  loc_AB7967: FLdRfVar var_12C
  loc_AB796A: FLdPr var_BC
  loc_AB796D:  = Me.Fields
  loc_AB7972: FLdPr var_12C
  loc_AB7975: from_stack_2 = Me.Item(from_stack_1)
  loc_AB797A: FLdPr var_140
  loc_AB797D:  = Me.Value
  loc_AB7982: FLdRfVar var_150
  loc_AB7985: ConcatVar var_160
  loc_AB7989: LitVarStr var_170, " NO es Imputable. Verifique..."
  loc_AB798E: ConcatVar var_180
  loc_AB7992: CStrVarTmp
  loc_AB7993: FStStr var_88
  loc_AB7996: FFree1Str var_8C
  loc_AB7999: FFreeAd var_C4 = "": var_D8 = "": var_12C = ""
  loc_AB79A4: FFreeVar var_F8 = "": var_E8 = "": var_108 = "": var_128 = "": var_150 = "": var_160 = ""
  loc_AB79B5: FLdPr var_BC
  loc_AB79B8: Me.MoveNext
  loc_AB79BD: Branch loc_AB76B4
  loc_AB79C0: LitNothing
  loc_AB79C2: FStAd var_BC 
  loc_AB79C6: ILdRf var_88
  loc_AB79C9: LitStr vbNullString
  loc_AB79CC: EqStr
  loc_AB79CE: BranchF loc_AB7B51
  loc_AB79D1: LitStr "INSERT INTO subdpagodeucon (PeriInfo, IdImpu, NumeOrpa, ExpeImpu, NumeLiqu, FechCaja, CodiCuco, DebeCaja, HabeCaja, AltaUsua)"
  loc_AB79D4: LitStr " SELECT i.PeriInfo, i.IdImpu, i.NumeOrpa, i.ExpeImpu, i.NumeLiqu, i.FechImpu, p.PatrCuco, i.PagaImpu, 0, '"
  loc_AB79D7: ConcatStr
  loc_AB79D8: FStStrNoPop var_8C
  loc_AB79DB: ImpAdLdI4 MemVar_C3D03C
  loc_AB79DE: ConcatStr
  loc_AB79DF: FStStrNoPop var_90
  loc_AB79E2: LitStr "'"
  loc_AB79E5: ConcatStr
  loc_AB79E6: FStStrNoPop CierraCajaPagoDeudaConsolidada
  loc_AB79E9: LitStr " FROM imputacion i"
  loc_AB79EC: ConcatStr
  loc_AB79ED: FStStrNoPop var_98
  loc_AB79F0: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AB79F3: ConcatStr
  loc_AB79F4: FStStrNoPop var_9C
  loc_AB79F7: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = p.PeriInfo AND cc.CodiCuco = p.PatrCuco"
  loc_AB79FA: ConcatStr
  loc_AB79FB: FStStrNoPop var_A0
  loc_AB79FE: LitStr " INNER JOIN paraconta pp ON pp.PeriInfo = i.PeriInfo"
  loc_AB7A01: ConcatStr
  loc_AB7A02: FStStrNoPop var_A4
  loc_AB7A05: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AB7A08: ConcatStr
  loc_AB7A09: FStStrNoPop var_A8
  loc_AB7A0C: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AB7A0F: ConcatStr
  loc_AB7A10: FStStrNoPop var_AC
  loc_AB7A13: LitStr " AND PagaImpu != 0"
  loc_AB7A16: ConcatStr
  loc_AB7A17: FStStrNoPop var_B0
  loc_AB7A1A: LitStr " AND AjusImpu = 0"
  loc_AB7A1D: ConcatStr
  loc_AB7A1E: FStStrNoPop var_B4
  loc_AB7A21: LitStr " AND Left(i.CodiPart,1) != PaexPaco"
  loc_AB7A24: ConcatStr
  loc_AB7A25: FStStrNoPop var_184
  loc_AB7A28: LitStr " AND i.CodiPart LIKE '62" & Chr(37) & "';"
  loc_AB7A2B: ConcatStr
  loc_AB7A2C: FStStrNoPop var_188
  loc_AB7A2F: Call EjecutarRsCls(from_stack_1v)
  loc_AB7A34: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoDeudaConsolidada = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_184 = ""
  loc_AB7A51: LitStr "INSERT INTO subdpagodeucon (PeriInfo, IdImpu, NumeOrpa, ExpeImpu, NumeLiqu, FechCaja, CodiCuco, DebeCaja, HabeCaja, AltaUsua)"
  loc_AB7A54: LitStr " SELECT i.PeriInfo, i.IdImpu, i.NumeOrpa, i.ExpeImpu, i.NumeLiqu, i.FechImpu, p.PatrCuco, i.PagaImpu, 0, '"
  loc_AB7A57: ConcatStr
  loc_AB7A58: FStStrNoPop var_8C
  loc_AB7A5B: ImpAdLdI4 MemVar_C3D03C
  loc_AB7A5E: ConcatStr
  loc_AB7A5F: FStStrNoPop var_90
  loc_AB7A62: LitStr "'"
  loc_AB7A65: ConcatStr
  loc_AB7A66: FStStrNoPop CierraCajaPagoDeudaConsolidada
  loc_AB7A69: LitStr " FROM imputacion i"
  loc_AB7A6C: ConcatStr
  loc_AB7A6D: FStStrNoPop var_98
  loc_AB7A70: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AB7A73: ConcatStr
  loc_AB7A74: FStStrNoPop var_9C
  loc_AB7A77: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = p.PeriInfo AND cc.CodiCuco = p.PatrCuco"
  loc_AB7A7A: ConcatStr
  loc_AB7A7B: FStStrNoPop var_A0
  loc_AB7A7E: LitStr " INNER JOIN paraconta pp ON pp.PeriInfo = i.PeriInfo"
  loc_AB7A81: ConcatStr
  loc_AB7A82: FStStrNoPop var_A4
  loc_AB7A85: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AB7A88: ConcatStr
  loc_AB7A89: FStStrNoPop var_A8
  loc_AB7A8C: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AB7A8F: ConcatStr
  loc_AB7A90: FStStrNoPop var_AC
  loc_AB7A93: LitStr " AND PagaImpu > 0"
  loc_AB7A96: ConcatStr
  loc_AB7A97: FStStrNoPop var_B0
  loc_AB7A9A: LitStr " AND AjusImpu != 0"
  loc_AB7A9D: ConcatStr
  loc_AB7A9E: FStStrNoPop var_B4
  loc_AB7AA1: LitStr " AND Left(i.CodiPart,1) != PaexPaco"
  loc_AB7AA4: ConcatStr
  loc_AB7AA5: FStStrNoPop var_184
  loc_AB7AA8: LitStr " AND i.CodiPart LIKE '62" & Chr(37) & "';"
  loc_AB7AAB: ConcatStr
  loc_AB7AAC: FStStrNoPop var_188
  loc_AB7AAF: Call EjecutarRsCls(from_stack_1v)
  loc_AB7AB4: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoDeudaConsolidada = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_184 = ""
  loc_AB7AD1: LitStr "INSERT INTO subdpagodeucon (PeriInfo, IdImpu, NumeOrpa, ExpeImpu, NumeLiqu, FechCaja, CodiCuco, DebeCaja, HabeCaja, AltaUsua)"
  loc_AB7AD4: LitStr " SELECT i.PeriInfo, i.IdImpu, i.NumeOrpa, i.ExpeImpu, i.NumeLiqu, i.FechImpu, p.PatrCuco, 0, i.PagaImpu, '"
  loc_AB7AD7: ConcatStr
  loc_AB7AD8: FStStrNoPop var_8C
  loc_AB7ADB: ImpAdLdI4 MemVar_C3D03C
  loc_AB7ADE: ConcatStr
  loc_AB7ADF: FStStrNoPop var_90
  loc_AB7AE2: LitStr "'"
  loc_AB7AE5: ConcatStr
  loc_AB7AE6: FStStrNoPop CierraCajaPagoDeudaConsolidada
  loc_AB7AE9: LitStr " FROM imputacion i"
  loc_AB7AEC: ConcatStr
  loc_AB7AED: FStStrNoPop var_98
  loc_AB7AF0: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AB7AF3: ConcatStr
  loc_AB7AF4: FStStrNoPop var_9C
  loc_AB7AF7: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = p.PeriInfo AND cc.CodiCuco = p.PatrCuco"
  loc_AB7AFA: ConcatStr
  loc_AB7AFB: FStStrNoPop var_A0
  loc_AB7AFE: LitStr " INNER JOIN paraconta pp ON pp.PeriInfo = i.PeriInfo"
  loc_AB7B01: ConcatStr
  loc_AB7B02: FStStrNoPop var_A4
  loc_AB7B05: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_AB7B08: ConcatStr
  loc_AB7B09: FStStrNoPop var_A8
  loc_AB7B0C: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_AB7B0F: ConcatStr
  loc_AB7B10: FStStrNoPop var_AC
  loc_AB7B13: LitStr " AND PagaImpu < 0"
  loc_AB7B16: ConcatStr
  loc_AB7B17: FStStrNoPop var_B0
  loc_AB7B1A: LitStr " AND AjusImpu != 0"
  loc_AB7B1D: ConcatStr
  loc_AB7B1E: FStStrNoPop var_B4
  loc_AB7B21: LitStr " AND Left(i.CodiPart,1) != PaexPaco"
  loc_AB7B24: ConcatStr
  loc_AB7B25: FStStrNoPop var_184
  loc_AB7B28: LitStr " AND i.CodiPart LIKE '62" & Chr(37) & "';"
  loc_AB7B2B: ConcatStr
  loc_AB7B2C: FStStrNoPop var_188
  loc_AB7B2F: Call EjecutarRsCls(from_stack_1v)
  loc_AB7B34: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoDeudaConsolidada = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_184 = ""
  loc_AB7B51: ExitProcCbHresult
End Function

Public Function CierraCajaPagoCheqGuaymallen() 'B32BCC
  'Data Table: 46D5B0
  loc_B32294: ZeroRetVal
  loc_B32296: LitStr "DELETE FROM subdpagoimpu WHERE PeriInfo = Year(@desde) AND FechCaja >= @desde;"
  loc_B32299: Call EjecutarRsCls(from_stack_1v)
  loc_B3229E: LitStr "SELECT i.CodiPart, p.CodiCuco, cc.ImpuCuco"
  loc_B322A1: LitStr " FROM imputacion i"
  loc_B322A4: ConcatStr
  loc_B322A5: FStStrNoPop var_8C
  loc_B322A8: LitStr " LEFT JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_B322AB: ConcatStr
  loc_B322AC: FStStrNoPop var_90
  loc_B322AF: LitStr " LEFT JOIN infogov.cuentacontable cc ON cc.PeriInfo = p.PeriInfo AND cc.CodiCuco = p.CodiCuco"
  loc_B322B2: ConcatStr
  loc_B322B3: FStStrNoPop CierraCajaPagoCheqGuaymallen
  loc_B322B6: LitStr " LEFT JOIN paraconta pp ON pp.PeriInfo = i.PeriInfo"
  loc_B322B9: ConcatStr
  loc_B322BA: FStStrNoPop var_98
  loc_B322BD: LitStr " WHERE i.PeriInfo = Year(@desde)"
  loc_B322C0: ConcatStr
  loc_B322C1: FStStrNoPop var_9C
  loc_B322C4: LitStr " AND FechImpu BETWEEN @desde AND @hasta"
  loc_B322C7: ConcatStr
  loc_B322C8: FStStrNoPop var_A0
  loc_B322CB: LitStr " AND PagaImpu != 0"
  loc_B322CE: ConcatStr
  loc_B322CF: FStStrNoPop var_A4
  loc_B322D2: LitStr " AND AjusImpu = 0"
  loc_B322D5: ConcatStr
  loc_B322D6: FStStrNoPop var_A8
  loc_B322D9: LitStr " AND Left(i.CodiPart,1) = PaexPaco"
  loc_B322DC: ConcatStr
  loc_B322DD: FStStrNoPop var_AC
  loc_B322E0: LitStr " AND (p.CodiCuco IS NULL OR p.CodiCuco = '' OR ImpuCuco IS NULL OR ImpuCuco = 0)"
  loc_B322E3: ConcatStr
  loc_B322E4: FStStrNoPop var_B0
  loc_B322E7: Call EjecutarRsCls(from_stack_1v)
  loc_B322EC: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoCheqGuaymallen = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_B32303: FLdRfVar var_B4
  loc_B32306: FLdPr Me
  loc_B32309: MemLdPr global_56
  loc_B3230C:  = Me.RecordCount
  loc_B32311: ILdRf var_B4
  loc_B32314: LitI4 0
  loc_B32319: GtI4
  loc_B3231A: BranchF loc_B32671
  loc_B3231D: FLdPr Me
  loc_B32320: MemLdStr global_56
  loc_B32323: FStAd var_B8 
  loc_B32327: FLdPr var_B8
  loc_B3232A: Me.MoveFirst
  loc_B3232F: FLdRfVar var_BA
  loc_B32332: FLdPr var_B8
  loc_B32335:  = Me.EOF
  loc_B3233A: FLdI2 var_BA
  loc_B3233D: NotI4
  loc_B3233E: BranchF loc_B3266B
  loc_B32341: FLdRfVar var_D4
  loc_B32344: LitVarStr var_D0, "CodiCuco"
  loc_B32349: PopAdLdVar
  loc_B3234A: FLdRfVar var_C0
  loc_B3234D: FLdPr var_B8
  loc_B32350:  = Me.Fields
  loc_B32355: FLdPr var_C0
  loc_B32358: from_stack_2 = Me.Item(from_stack_1)
  loc_B3235D: FLdZeroAd var_D4
  loc_B32360: CVarAd
  loc_B32364: ImpAdCallI2 IsNull()
  loc_B32369: FFree1Ad var_C0
  loc_B3236C: FFree1Var var_E4 = ""
  loc_B3236F: BranchF loc_B323E2
  loc_B32372: FLdRfVar var_8C
  loc_B32375: from_stack_1v = CierraCajaPagoCheq()
  loc_B3237A: ILdRf var_8C
  loc_B3237D: LitStr vbCrLf
  loc_B32380: ConcatStr
  loc_B32381: FStStrNoPop var_90
  loc_B32384: LitStr "La Partida "
  loc_B32387: ConcatStr
  loc_B32388: CVarStr var_F4
  loc_B3238B: FLdRfVar var_E4
  loc_B3238E: FLdRfVar var_D4
  loc_B32391: LitVarStr var_D0, "CodiPart"
  loc_B32396: PopAdLdVar
  loc_B32397: FLdRfVar var_C0
  loc_B3239A: FLdPr var_B8
  loc_B3239D:  = Me.Fields
  loc_B323A2: FLdPr var_C0
  loc_B323A5: from_stack_2 = Me.Item(from_stack_1)
  loc_B323AA: FLdPr var_D4
  loc_B323AD:  = Me.Value
  loc_B323B2: FLdRfVar var_E4
  loc_B323B5: ConcatVar var_104
  loc_B323B9: LitVarStr var_114, " correspondiente a la imputacion NO EXISTE. Verifique..."
  loc_B323BE: ConcatVar var_124
  loc_B323C2: CStrVarTmp
  loc_B323C3: FStStr var_88
  loc_B323C6: FFreeStr var_8C = ""
  loc_B323CD: FFreeAd var_C0 = ""
  loc_B323D4: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_B323DF: Branch loc_B32660
  loc_B323E2: FLdRfVar var_E4
  loc_B323E5: FLdRfVar var_D4
  loc_B323E8: LitVarStr var_D0, "CodiCuco"
  loc_B323ED: PopAdLdVar
  loc_B323EE: FLdRfVar var_C0
  loc_B323F1: FLdPr var_B8
  loc_B323F4:  = Me.Fields
  loc_B323F9: FLdPr var_C0
  loc_B323FC: from_stack_2 = Me.Item(from_stack_1)
  loc_B32401: FLdPr var_D4
  loc_B32404:  = Me.Value
  loc_B32409: FLdRfVar var_E4
  loc_B3240C: LitVarStr var_114, vbNullString
  loc_B32411: HardType
  loc_B32412: EqVarBool
  loc_B32414: FFreeAd var_C0 = ""
  loc_B3241B: FFree1Var var_E4 = ""
  loc_B3241E: BranchF loc_B32491
  loc_B32421: FLdRfVar var_8C
  loc_B32424: from_stack_1v = CierraCajaPagoCheq()
  loc_B32429: ILdRf var_8C
  loc_B3242C: LitStr vbCrLf
  loc_B3242F: ConcatStr
  loc_B32430: FStStrNoPop var_90
  loc_B32433: LitStr "La Partida "
  loc_B32436: ConcatStr
  loc_B32437: CVarStr var_F4
  loc_B3243A: FLdRfVar var_E4
  loc_B3243D: FLdRfVar var_D4
  loc_B32440: LitVarStr var_D0, "CodiPart"
  loc_B32445: PopAdLdVar
  loc_B32446: FLdRfVar var_C0
  loc_B32449: FLdPr var_B8
  loc_B3244C:  = Me.Fields
  loc_B32451: FLdPr var_C0
  loc_B32454: from_stack_2 = Me.Item(from_stack_1)
  loc_B32459: FLdPr var_D4
  loc_B3245C:  = Me.Value
  loc_B32461: FLdRfVar var_E4
  loc_B32464: ConcatVar var_104
  loc_B32468: LitVarStr var_114, " NO TIENE una Cuenta Contable Asociada. Verifique..."
  loc_B3246D: ConcatVar var_124
  loc_B32471: CStrVarTmp
  loc_B32472: FStStr var_88
  loc_B32475: FFreeStr var_8C = ""
  loc_B3247C: FFreeAd var_C0 = ""
  loc_B32483: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_B3248E: Branch loc_B32660
  loc_B32491: FLdRfVar var_D4
  loc_B32494: LitVarStr var_D0, "ImpuCuco"
  loc_B32499: PopAdLdVar
  loc_B3249A: FLdRfVar var_C0
  loc_B3249D: FLdPr var_B8
  loc_B324A0:  = Me.Fields
  loc_B324A5: FLdPr var_C0
  loc_B324A8: from_stack_2 = Me.Item(from_stack_1)
  loc_B324AD: FLdZeroAd var_D4
  loc_B324B0: CVarAd
  loc_B324B4: ImpAdCallI2 IsNull()
  loc_B324B9: FFree1Ad var_C0
  loc_B324BC: FFree1Var var_E4 = ""
  loc_B324BF: BranchF loc_B32573
  loc_B324C2: FLdRfVar var_8C
  loc_B324C5: from_stack_1v = CierraCajaPagoCheq()
  loc_B324CA: ILdRf var_8C
  loc_B324CD: LitStr vbCrLf
  loc_B324D0: ConcatStr
  loc_B324D1: FStStrNoPop var_90
  loc_B324D4: LitStr "La Cuenta Contable "
  loc_B324D7: ConcatStr
  loc_B324D8: CVarStr var_F4
  loc_B324DB: FLdRfVar var_E4
  loc_B324DE: FLdRfVar var_D4
  loc_B324E1: LitVarStr var_D0, "CodiCuco"
  loc_B324E6: PopAdLdVar
  loc_B324E7: FLdRfVar var_C0
  loc_B324EA: FLdPr var_B8
  loc_B324ED:  = Me.Fields
  loc_B324F2: FLdPr var_C0
  loc_B324F5: from_stack_2 = Me.Item(from_stack_1)
  loc_B324FA: FLdPr var_D4
  loc_B324FD:  = Me.Value
  loc_B32502: FLdRfVar var_E4
  loc_B32505: ConcatVar var_104
  loc_B32509: LitVarStr var_114, " de la Partida "
  loc_B3250E: ConcatVar var_124
  loc_B32512: FLdRfVar var_14C
  loc_B32515: FLdRfVar var_13C
  loc_B32518: LitVarStr var_138, "CodiPart"
  loc_B3251D: PopAdLdVar
  loc_B3251E: FLdRfVar var_128
  loc_B32521: FLdPr var_B8
  loc_B32524:  = Me.Fields
  loc_B32529: FLdPr var_128
  loc_B3252C: from_stack_2 = Me.Item(from_stack_1)
  loc_B32531: FLdPr var_13C
  loc_B32534:  = Me.Value
  loc_B32539: FLdRfVar var_14C
  loc_B3253C: ConcatVar var_15C
  loc_B32540: LitVarStr var_16C, " NO EXISTE. Verifique..."
  loc_B32545: ConcatVar var_17C
  loc_B32549: CStrVarTmp
  loc_B3254A: FStStr var_88
  loc_B3254D: FFreeStr var_8C = ""
  loc_B32554: FFreeAd var_C0 = "": var_D4 = "": var_128 = ""
  loc_B3255F: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_14C = "": var_15C = ""
  loc_B32570: Branch loc_B32660
  loc_B32573: FLdRfVar var_E4
  loc_B32576: FLdRfVar var_D4
  loc_B32579: LitVarStr var_D0, "ImpuCuco"
  loc_B3257E: PopAdLdVar
  loc_B3257F: FLdRfVar var_C0
  loc_B32582: FLdPr var_B8
  loc_B32585:  = Me.Fields
  loc_B3258A: FLdPr var_C0
  loc_B3258D: from_stack_2 = Me.Item(from_stack_1)
  loc_B32592: FLdPr var_D4
  loc_B32595:  = Me.Value
  loc_B3259A: FLdRfVar var_E4
  loc_B3259D: LitVarI2 var_114, 0
  loc_B325A2: HardType
  loc_B325A3: EqVarBool
  loc_B325A5: FFreeAd var_C0 = ""
  loc_B325AC: FFree1Var var_E4 = ""
  loc_B325AF: BranchF loc_B32660
  loc_B325B2: FLdRfVar var_8C
  loc_B325B5: from_stack_1v = CierraCajaPagoCheq()
  loc_B325BA: ILdRf var_8C
  loc_B325BD: LitStr vbCrLf
  loc_B325C0: ConcatStr
  loc_B325C1: FStStrNoPop var_90
  loc_B325C4: LitStr "La Cuenta Contable "
  loc_B325C7: ConcatStr
  loc_B325C8: CVarStr var_F4
  loc_B325CB: FLdRfVar var_E4
  loc_B325CE: FLdRfVar var_D4
  loc_B325D1: LitVarStr var_D0, "CodiCuco"
  loc_B325D6: PopAdLdVar
  loc_B325D7: FLdRfVar var_C0
  loc_B325DA: FLdPr var_B8
  loc_B325DD:  = Me.Fields
  loc_B325E2: FLdPr var_C0
  loc_B325E5: from_stack_2 = Me.Item(from_stack_1)
  loc_B325EA: FLdPr var_D4
  loc_B325ED:  = Me.Value
  loc_B325F2: FLdRfVar var_E4
  loc_B325F5: ConcatVar var_104
  loc_B325F9: LitVarStr var_114, " de la Partida "
  loc_B325FE: ConcatVar var_124
  loc_B32602: FLdRfVar var_14C
  loc_B32605: FLdRfVar var_13C
  loc_B32608: LitVarStr var_138, "CodiPart"
  loc_B3260D: PopAdLdVar
  loc_B3260E: FLdRfVar var_128
  loc_B32611: FLdPr var_B8
  loc_B32614:  = Me.Fields
  loc_B32619: FLdPr var_128
  loc_B3261C: from_stack_2 = Me.Item(from_stack_1)
  loc_B32621: FLdPr var_13C
  loc_B32624:  = Me.Value
  loc_B32629: FLdRfVar var_14C
  loc_B3262C: ConcatVar var_15C
  loc_B32630: LitVarStr var_16C, " NO es Imputable. Verifique..."
  loc_B32635: ConcatVar var_17C
  loc_B32639: CStrVarTmp
  loc_B3263A: FStStr var_88
  loc_B3263D: FFreeStr var_8C = ""
  loc_B32644: FFreeAd var_C0 = "": var_D4 = "": var_128 = ""
  loc_B3264F: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_14C = "": var_15C = ""
  loc_B32660: FLdPr var_B8
  loc_B32663: Me.MoveNext
  loc_B32668: Branch loc_B3232F
  loc_B3266B: LitNothing
  loc_B3266D: FStAd var_B8 
  loc_B32671: LitStr "SELECT lqn.CodiRete, lqn.CodiCuco, cc.ImpuCuco"
  loc_B32674: LitStr " FROM liquidaneto lqn"
  loc_B32677: ConcatStr
  loc_B32678: FStStrNoPop var_8C
  loc_B3267B: LitStr " LEFT JOIN retenciones r ON r.PeriInfo = lqn.PeriInfo AND r.CodiRete = lqn.CodiRete"
  loc_B3267E: ConcatStr
  loc_B3267F: FStStrNoPop var_90
  loc_B32682: LitStr " LEFT JOIN infogov.cuentacontable cc ON cc.PeriInfo = r.PeriInfo AND cc.CodiCuco = r.CodiCuco"
  loc_B32685: ConcatStr
  loc_B32686: FStStrNoPop CierraCajaPagoCheqGuaymallen
  loc_B32689: LitStr " WHERE lqn.PeriInfo = Year(@desde)"
  loc_B3268C: ConcatStr
  loc_B3268D: FStStrNoPop var_98
  loc_B32690: LitStr " AND lqn.CodiRete > 0"
  loc_B32693: ConcatStr
  loc_B32694: FStStrNoPop var_9C
  loc_B32697: LitStr " AND FechCaja BETWEEN @desde AND @hasta"
  loc_B3269A: ConcatStr
  loc_B3269B: FStStrNoPop var_A0
  loc_B3269E: LitStr " AND (cc.CodiCuco IS NULL OR r.CodiCuco = '' OR ImpuCuco IS NULL OR ImpuCuco = 0)"
  loc_B326A1: ConcatStr
  loc_B326A2: FStStrNoPop var_A4
  loc_B326A5: Call EjecutarRsCls(from_stack_1v)
  loc_B326AA: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoCheqGuaymallen = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_B326BB: FLdRfVar var_B4
  loc_B326BE: FLdPr Me
  loc_B326C1: MemLdPr global_56
  loc_B326C4:  = Me.RecordCount
  loc_B326C9: ILdRf var_B4
  loc_B326CC: LitI4 0
  loc_B326D1: GtI4
  loc_B326D2: BranchF loc_B329F9
  loc_B326D5: FLdPr Me
  loc_B326D8: MemLdStr global_56
  loc_B326DB: FStAd var_180 
  loc_B326DF: FLdPr var_180
  loc_B326E2: Me.MoveFirst
  loc_B326E7: FLdRfVar var_BA
  loc_B326EA: FLdPr var_180
  loc_B326ED:  = Me.EOF
  loc_B326F2: FLdI2 var_BA
  loc_B326F5: NotI4
  loc_B326F6: BranchF loc_B329F3
  loc_B326F9: FLdRfVar var_D4
  loc_B326FC: LitVarStr var_D0, "CodiCuco"
  loc_B32701: PopAdLdVar
  loc_B32702: FLdRfVar var_C0
  loc_B32705: FLdPr var_180
  loc_B32708:  = Me.Fields
  loc_B3270D: FLdPr var_C0
  loc_B32710: from_stack_2 = Me.Item(from_stack_1)
  loc_B32715: FLdZeroAd var_D4
  loc_B32718: CVarAd
  loc_B3271C: ImpAdCallI2 IsNull()
  loc_B32721: FFree1Ad var_C0
  loc_B32724: FFree1Var var_E4 = ""
  loc_B32727: BranchF loc_B3278E
  loc_B3272A: ILdRf var_88
  loc_B3272D: LitStr vbCrLf
  loc_B32730: ConcatStr
  loc_B32731: FStStrNoPop var_8C
  loc_B32734: LitStr "La Retención "
  loc_B32737: ConcatStr
  loc_B32738: CVarStr var_F4
  loc_B3273B: FLdRfVar var_E4
  loc_B3273E: FLdRfVar var_D4
  loc_B32741: LitVarStr var_D0, "CodiRete"
  loc_B32746: PopAdLdVar
  loc_B32747: FLdRfVar var_C0
  loc_B3274A: FLdPr var_180
  loc_B3274D:  = Me.Fields
  loc_B32752: FLdPr var_C0
  loc_B32755: from_stack_2 = Me.Item(from_stack_1)
  loc_B3275A: FLdPr var_D4
  loc_B3275D:  = Me.Value
  loc_B32762: FLdRfVar var_E4
  loc_B32765: ConcatVar var_104
  loc_B32769: LitVarStr var_114, " NO EXISTE. Verifique..."
  loc_B3276E: ConcatVar var_124
  loc_B32772: CStrVarTmp
  loc_B32773: FStStr var_88
  loc_B32776: FFree1Str var_8C
  loc_B32779: FFreeAd var_C0 = ""
  loc_B32780: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_B3278B: Branch loc_B329E8
  loc_B3278E: FLdRfVar var_E4
  loc_B32791: FLdRfVar var_D4
  loc_B32794: LitVarStr var_D0, "CodiCuco"
  loc_B32799: PopAdLdVar
  loc_B3279A: FLdRfVar var_C0
  loc_B3279D: FLdPr var_180
  loc_B327A0:  = Me.Fields
  loc_B327A5: FLdPr var_C0
  loc_B327A8: from_stack_2 = Me.Item(from_stack_1)
  loc_B327AD: FLdPr var_D4
  loc_B327B0:  = Me.Value
  loc_B327B5: FLdRfVar var_E4
  loc_B327B8: LitVarStr var_114, vbNullString
  loc_B327BD: HardType
  loc_B327BE: EqVarBool
  loc_B327C0: FFreeAd var_C0 = ""
  loc_B327C7: FFree1Var var_E4 = ""
  loc_B327CA: BranchF loc_B32831
  loc_B327CD: ILdRf var_88
  loc_B327D0: LitStr vbCrLf
  loc_B327D3: ConcatStr
  loc_B327D4: FStStrNoPop var_8C
  loc_B327D7: LitStr "La Retención "
  loc_B327DA: ConcatStr
  loc_B327DB: CVarStr var_F4
  loc_B327DE: FLdRfVar var_E4
  loc_B327E1: FLdRfVar var_D4
  loc_B327E4: LitVarStr var_D0, "CodiRete"
  loc_B327E9: PopAdLdVar
  loc_B327EA: FLdRfVar var_C0
  loc_B327ED: FLdPr var_180
  loc_B327F0:  = Me.Fields
  loc_B327F5: FLdPr var_C0
  loc_B327F8: from_stack_2 = Me.Item(from_stack_1)
  loc_B327FD: FLdPr var_D4
  loc_B32800:  = Me.Value
  loc_B32805: FLdRfVar var_E4
  loc_B32808: ConcatVar var_104
  loc_B3280C: LitVarStr var_114, " NO TIENE una Cuenta Contable Asociada. Verifique..."
  loc_B32811: ConcatVar var_124
  loc_B32815: CStrVarTmp
  loc_B32816: FStStr var_88
  loc_B32819: FFree1Str var_8C
  loc_B3281C: FFreeAd var_C0 = ""
  loc_B32823: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_B3282E: Branch loc_B329E8
  loc_B32831: FLdRfVar var_D4
  loc_B32834: LitVarStr var_D0, "ImpuCuco"
  loc_B32839: PopAdLdVar
  loc_B3283A: FLdRfVar var_C0
  loc_B3283D: FLdPr var_180
  loc_B32840:  = Me.Fields
  loc_B32845: FLdPr var_C0
  loc_B32848: from_stack_2 = Me.Item(from_stack_1)
  loc_B3284D: FLdZeroAd var_D4
  loc_B32850: CVarAd
  loc_B32854: ImpAdCallI2 IsNull()
  loc_B32859: FFree1Ad var_C0
  loc_B3285C: FFree1Var var_E4 = ""
  loc_B3285F: BranchF loc_B32907
  loc_B32862: ILdRf var_88
  loc_B32865: LitStr vbCrLf
  loc_B32868: ConcatStr
  loc_B32869: FStStrNoPop var_8C
  loc_B3286C: LitStr "La Cuenta Contable "
  loc_B3286F: ConcatStr
  loc_B32870: CVarStr var_F4
  loc_B32873: FLdRfVar var_E4
  loc_B32876: FLdRfVar var_D4
  loc_B32879: LitVarStr var_D0, "CodiCuco"
  loc_B3287E: PopAdLdVar
  loc_B3287F: FLdRfVar var_C0
  loc_B32882: FLdPr var_180
  loc_B32885:  = Me.Fields
  loc_B3288A: FLdPr var_C0
  loc_B3288D: from_stack_2 = Me.Item(from_stack_1)
  loc_B32892: FLdPr var_D4
  loc_B32895:  = Me.Value
  loc_B3289A: FLdRfVar var_E4
  loc_B3289D: ConcatVar var_104
  loc_B328A1: LitVarStr var_114, " de la Retención "
  loc_B328A6: ConcatVar var_124
  loc_B328AA: FLdRfVar var_14C
  loc_B328AD: FLdRfVar var_13C
  loc_B328B0: LitVarStr var_138, "CodiRete"
  loc_B328B5: PopAdLdVar
  loc_B328B6: FLdRfVar var_128
  loc_B328B9: FLdPr var_180
  loc_B328BC:  = Me.Fields
  loc_B328C1: FLdPr var_128
  loc_B328C4: from_stack_2 = Me.Item(from_stack_1)
  loc_B328C9: FLdPr var_13C
  loc_B328CC:  = Me.Value
  loc_B328D1: FLdRfVar var_14C
  loc_B328D4: ConcatVar var_15C
  loc_B328D8: LitVarStr var_16C, " NO EXISTE. Verifique..."
  loc_B328DD: ConcatVar var_17C
  loc_B328E1: CStrVarTmp
  loc_B328E2: FStStr var_88
  loc_B328E5: FFree1Str var_8C
  loc_B328E8: FFreeAd var_C0 = "": var_D4 = "": var_128 = ""
  loc_B328F3: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_14C = "": var_15C = ""
  loc_B32904: Branch loc_B329E8
  loc_B32907: FLdRfVar var_E4
  loc_B3290A: FLdRfVar var_D4
  loc_B3290D: LitVarStr var_D0, "ImpuCuco"
  loc_B32912: PopAdLdVar
  loc_B32913: FLdRfVar var_C0
  loc_B32916: FLdPr var_180
  loc_B32919:  = Me.Fields
  loc_B3291E: FLdPr var_C0
  loc_B32921: from_stack_2 = Me.Item(from_stack_1)
  loc_B32926: FLdPr var_D4
  loc_B32929:  = Me.Value
  loc_B3292E: FLdRfVar var_E4
  loc_B32931: LitVarI2 var_114, 0
  loc_B32936: HardType
  loc_B32937: EqVarBool
  loc_B32939: FFreeAd var_C0 = ""
  loc_B32940: FFree1Var var_E4 = ""
  loc_B32943: BranchF loc_B329E8
  loc_B32946: ILdRf var_88
  loc_B32949: LitStr vbCrLf
  loc_B3294C: ConcatStr
  loc_B3294D: FStStrNoPop var_8C
  loc_B32950: LitStr "La Cuenta Contable "
  loc_B32953: ConcatStr
  loc_B32954: CVarStr var_F4
  loc_B32957: FLdRfVar var_E4
  loc_B3295A: FLdRfVar var_D4
  loc_B3295D: LitVarStr var_D0, "CodiCuco"
  loc_B32962: PopAdLdVar
  loc_B32963: FLdRfVar var_C0
  loc_B32966: FLdPr var_180
  loc_B32969:  = Me.Fields
  loc_B3296E: FLdPr var_C0
  loc_B32971: from_stack_2 = Me.Item(from_stack_1)
  loc_B32976: FLdPr var_D4
  loc_B32979:  = Me.Value
  loc_B3297E: FLdRfVar var_E4
  loc_B32981: ConcatVar var_104
  loc_B32985: LitVarStr var_114, " de la Retención "
  loc_B3298A: ConcatVar var_124
  loc_B3298E: FLdRfVar var_14C
  loc_B32991: FLdRfVar var_13C
  loc_B32994: LitVarStr var_138, "CodiRete"
  loc_B32999: PopAdLdVar
  loc_B3299A: FLdRfVar var_128
  loc_B3299D: FLdPr var_180
  loc_B329A0:  = Me.Fields
  loc_B329A5: FLdPr var_128
  loc_B329A8: from_stack_2 = Me.Item(from_stack_1)
  loc_B329AD: FLdPr var_13C
  loc_B329B0:  = Me.Value
  loc_B329B5: FLdRfVar var_14C
  loc_B329B8: ConcatVar var_15C
  loc_B329BC: LitVarStr var_16C, " NO es Imputable. Verifique..."
  loc_B329C1: ConcatVar var_17C
  loc_B329C5: CStrVarTmp
  loc_B329C6: FStStr var_88
  loc_B329C9: FFree1Str var_8C
  loc_B329CC: FFreeAd var_C0 = "": var_D4 = "": var_128 = ""
  loc_B329D7: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_14C = "": var_15C = ""
  loc_B329E8: FLdPr var_180
  loc_B329EB: Me.MoveNext
  loc_B329F0: Branch loc_B326E7
  loc_B329F3: LitNothing
  loc_B329F5: FStAd var_180 
  loc_B329F9: ILdRf var_88
  loc_B329FC: LitStr vbNullString
  loc_B329FF: EqStr
  loc_B32A01: BranchF loc_B32BC5
  loc_B32A04: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_B32A07: LitStr " CREATE TEMPORARY TABLE tmovi"
  loc_B32A0A: ConcatStr
  loc_B32A0B: FStStrNoPop var_8C
  loc_B32A0E: LitStr " SELECT *"
  loc_B32A11: ConcatStr
  loc_B32A12: FStStrNoPop var_90
  loc_B32A15: LitStr " FROM liquidaneto ln"
  loc_B32A18: ConcatStr
  loc_B32A19: FStStrNoPop CierraCajaPagoCheqGuaymallen
  loc_B32A1C: LitStr " WHERE ln.PeriInfo = Year(@desde) AND ln.FechCaja BETWEEN @desde AND @hasta"
  loc_B32A1F: ConcatStr
  loc_B32A20: FStStrNoPop var_98
  loc_B32A23: LitStr " GROUP BY ExpeImpu, NumeLiqu, CucuPers, PeriInfo, FechCaja;"
  loc_B32A26: ConcatStr
  loc_B32A27: FStStrNoPop var_9C
  loc_B32A2A: Call EjecutarRsCls(from_stack_1v)
  loc_B32A2F: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoCheqGuaymallen = "": var_98 = ""
  loc_B32A3C: LitStr "INSERT INTO subdpagoimpu (PeriInfo,TipoPago,FechCaja,DebeCuco,DebeCaja,ExpeImpu,NumeLiqu,CucuPers,CodiRete,HabeCuco,HabeCaja,CodiBanc,NumeMoba)"
  loc_B32A3F: LitStr " SELECT tmovi.PeriInfo"
  loc_B32A42: ConcatStr
  loc_B32A43: FStStrNoPop var_8C
  loc_B32A46: LitStr ", (SELECT IF(Left(i.CodiPart,1)=p.PaexPaco,'Extra','Presu')) TipoPago"
  loc_B32A49: ConcatStr
  loc_B32A4A: FStStrNoPop var_90
  loc_B32A4D: LitStr ", FechCaja"
  loc_B32A50: ConcatStr
  loc_B32A51: FStStrNoPop CierraCajaPagoCheqGuaymallen
  loc_B32A54: LitStr ", IF(Left(i.CodiPart,1)<>p.PaexPaco,/*p.DeexPaco*/par.CodiCuco,par.CodiCuco) CodiCuco"
  loc_B32A57: ConcatStr
  loc_B32A58: FStStrNoPop var_98
  loc_B32A5B: LitStr ", Sum(LiquImpu), tmovi.ExpeImpu, tmovi.NumeLiqu, tmovi.CucuPers, CodiRete, '', 0, 0, 0"
  loc_B32A5E: ConcatStr
  loc_B32A5F: FStStrNoPop var_9C
  loc_B32A62: LitStr " FROM tmovi"
  loc_B32A65: ConcatStr
  loc_B32A66: FStStrNoPop var_A0
  loc_B32A69: LitStr " INNER JOIN liquidacion l ON l.PeriInfo = tmovi.PeriInfo AND l.ExpeImpu = tmovi.ExpeImpu AND l.NumeLiqu = tmovi.NumeLiqu AND l.TipoLiqu = 1"
  loc_B32A6C: ConcatStr
  loc_B32A6D: FStStrNoPop var_A4
  loc_B32A70: LitStr " INNER JOIN imputacion i ON i.PeriInfo = tmovi.PeriInfo AND i.ExpeImpu = tmovi.ExpeImpu AND i.NumeLiqu = tmovi.NumeLiqu AND i.CucuPers = tmovi.CucuPers AND LiquImpu != 0"
  loc_B32A73: ConcatStr
  loc_B32A74: FStStrNoPop var_A8
  loc_B32A77: LitStr " AND AjusImpu = 0"
  loc_B32A7A: ConcatStr
  loc_B32A7B: FStStrNoPop var_AC
  loc_B32A7E: LitStr " INNER JOIN partida par ON par.PeriInfo = i.PeriInfo AND par.CodiPart = i.CodiPart"
  loc_B32A81: ConcatStr
  loc_B32A82: FStStrNoPop var_B0
  loc_B32A85: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_B32A88: ConcatStr
  loc_B32A89: FStStrNoPop var_184
  loc_B32A8C: LitStr " WHERE tmovi.PeriInfo = Year(@desde)"
  loc_B32A8F: ConcatStr
  loc_B32A90: FStStrNoPop var_188
  loc_B32A93: LitStr " AND tmovi.FechCaja BETWEEN @desde AND @hasta"
  loc_B32A96: ConcatStr
  loc_B32A97: FStStrNoPop var_18C
  loc_B32A9A: LitStr " GROUP BY ExpeImpu, NumeLiqu, par.CodiCuco, CucuPers, PeriInfo, FechCaja;"
  loc_B32A9D: ConcatStr
  loc_B32A9E: FStStrNoPop var_190
  loc_B32AA1: Call EjecutarRsCls(from_stack_1v)
  loc_B32AA6: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoCheqGuaymallen = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_B32AC5: LitStr "INSERT INTO subdpagoimpu (PeriInfo,TipoPago,FechCaja,DebeCuco,DebeCaja,ExpeImpu,NumeLiqu,CucuPers,CodiRete,HabeCuco,HabeCaja,CodiBanc,NumeMoba)"
  loc_B32AC8: LitStr " SELECT ln.PeriInfo"
  loc_B32ACB: ConcatStr
  loc_B32ACC: FStStrNoPop var_8C
  loc_B32ACF: LitStr ", '' AS TipoPago"
  loc_B32AD2: ConcatStr
  loc_B32AD3: FStStrNoPop var_90
  loc_B32AD6: LitStr ", FechCaja, '', 0, ln.ExpeImpu, ln.NumeLiqu, ln.CucuPers, CodiRete, CatePaco"
  loc_B32AD9: ConcatStr
  loc_B32ADA: FStStrNoPop CierraCajaPagoCheqGuaymallen
  loc_B32ADD: LitStr ", IF(o.ChunOrpa=0,ImpoCheq,ImpoLine)"
  loc_B32AE0: ConcatStr
  loc_B32AE1: FStStrNoPop var_98
  loc_B32AE4: LitStr ", c.CodiBanc, c.NumeMoba"
  loc_B32AE7: ConcatStr
  loc_B32AE8: FStStrNoPop var_9C
  loc_B32AEB: LitStr " FROM liquidaneto ln"
  loc_B32AEE: ConcatStr
  loc_B32AEF: FStStrNoPop var_A0
  loc_B32AF2: LitStr " INNER JOIN liquidacion l ON l.PeriInfo = ln.PeriInfo AND l.ExpeImpu = ln.ExpeImpu AND l.NumeLiqu = ln.NumeLiqu AND l.TipoLiqu = 1"
  loc_B32AF5: ConcatStr
  loc_B32AF6: FStStrNoPop var_A4
  loc_B32AF9: LitStr " INNER JOIN ordenpago o ON o.PeriInfo = l.PeriInfo AND o.ExpeImpu = l.ExpeImpu AND o.NumeLiqu = l.NumeLiqu AND FeanOrpa IS NULL"
  loc_B32AFC: ConcatStr
  loc_B32AFD: FStStrNoPop var_A8
  loc_B32B00: LitStr " INNER JOIN cheque c ON c.PeriInfo = ln.PeriInfo AND c.ExpeImpu = ln.ExpeImpu AND c.NumeLiqu = ln.NumeLiqu"
  loc_B32B03: ConcatStr
  loc_B32B04: FStStrNoPop var_AC
  loc_B32B07: LitStr " AND IF(o.ChunOrpa=0,c.CucuPers = ln.CucuPers,True)"
  loc_B32B0A: ConcatStr
  loc_B32B0B: FStStrNoPop var_B0
  loc_B32B0E: LitStr " AND c.NumeMoba > 0 AND c.FeanCheq IS NULL AND c.FepaCheq = ln.FechCaja"
  loc_B32B11: ConcatStr
  loc_B32B12: FStStrNoPop var_184
  loc_B32B15: LitStr " AND IF(o.ChunOrpa=0,True,SecuCheq=1)"
  loc_B32B18: ConcatStr
  loc_B32B19: FStStrNoPop var_188
  loc_B32B1C: LitStr " INNER JOIN paraconta p ON p.PeriInfo = ln.PeriInfo"
  loc_B32B1F: ConcatStr
  loc_B32B20: FStStrNoPop var_18C
  loc_B32B23: LitStr " WHERE ln.PeriInfo = Year(@desde)"
  loc_B32B26: ConcatStr
  loc_B32B27: FStStrNoPop var_190
  loc_B32B2A: LitStr " AND ln.FechCaja BETWEEN @desde AND @hasta"
  loc_B32B2D: ConcatStr
  loc_B32B2E: FStStrNoPop var_194
  loc_B32B31: LitStr " AND ln.CodiRete = 0;"
  loc_B32B34: ConcatStr
  loc_B32B35: FStStrNoPop var_198
  loc_B32B38: Call EjecutarRsCls(from_stack_1v)
  loc_B32B3D: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoCheqGuaymallen = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_B32B60: LitStr "INSERT INTO subdpagoimpu (PeriInfo,TipoPago,FechCaja,DebeCuco,DebeCaja,ExpeImpu,NumeLiqu,CucuPers,CodiRete,HabeCuco,HabeCaja,CodiBanc,NumeMoba)"
  loc_B32B63: LitStr " SELECT lqn.PeriInfo"
  loc_B32B66: ConcatStr
  loc_B32B67: FStStrNoPop var_8C
  loc_B32B6A: LitStr ", '' AS TipoPago"
  loc_B32B6D: ConcatStr
  loc_B32B6E: FStStrNoPop var_90
  loc_B32B71: LitStr ", FechCaja, '', 0, lqn.ExpeImpu, lqn.NumeLiqu, lqn.CucuPers, lqn.CodiRete, lqn.CodiCuco, ImpoLine, 0, lqn.CertLine"
  loc_B32B74: ConcatStr
  loc_B32B75: FStStrNoPop CierraCajaPagoCheqGuaymallen
  loc_B32B78: LitStr " FROM liquidaneto lqn"
  loc_B32B7B: ConcatStr
  loc_B32B7C: FStStrNoPop var_98
  loc_B32B7F: LitStr " INNER JOIN liquidacion l ON l.ExpeImpu = lqn.ExpeImpu AND l.NumeLiqu = lqn.NumeLiqu AND l.TipoLiqu = 1"
  loc_B32B82: ConcatStr
  loc_B32B83: FStStrNoPop var_9C
  loc_B32B86: LitStr " INNER JOIN retenciones r ON r.PeriInfo = lqn.PeriInfo AND r.CodiRete = lqn.CodiRete"
  loc_B32B89: ConcatStr
  loc_B32B8A: FStStrNoPop var_A0
  loc_B32B8D: LitStr " INNER JOIN paraconta p ON p.PeriInfo = lqn.PeriInfo"
  loc_B32B90: ConcatStr
  loc_B32B91: FStStrNoPop var_A4
  loc_B32B94: LitStr " WHERE lqn.PeriInfo = Year(@desde)"
  loc_B32B97: ConcatStr
  loc_B32B98: FStStrNoPop var_A8
  loc_B32B9B: LitStr " AND lqn.FechCaja BETWEEN @desde AND @hasta"
  loc_B32B9E: ConcatStr
  loc_B32B9F: FStStrNoPop var_AC
  loc_B32BA2: LitStr " AND lqn.CodiRete > 0;"
  loc_B32BA5: ConcatStr
  loc_B32BA6: FStStrNoPop var_B0
  loc_B32BA9: Call EjecutarRsCls(from_stack_1v)
  loc_B32BAE: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoCheqGuaymallen = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_B32BC5: ExitProcCbHresult
End Function

Public Function CierraCajaPagoDebi() '9FEF00
  'Data Table: 46D5B0
  loc_9FEDC8: ZeroRetVal
  loc_9FEDCA: LitStr "DELETE FROM subdpagodebi WHERE PeriInfo = Year(@desde) AND FechCaja >= @desde;"
  loc_9FEDCD: Call EjecutarRsCls(from_stack_1v)
  loc_9FEDD2: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_9FEDD5: LitStr " CREATE TEMPORARY TABLE tmovi"
  loc_9FEDD8: ConcatStr
  loc_9FEDD9: FStStrNoPop var_8C
  loc_9FEDDC: LitStr " SELECT lqn.PeriInfo, lqn.ExpeImpu, lqn.NumeLiqu, lqn.CucuPers, lqn.FechCaja"
  loc_9FEDDF: ConcatStr
  loc_9FEDE0: FStStrNoPop var_90
  loc_9FEDE3: LitStr " FROM liquidaneto lqn"
  loc_9FEDE6: ConcatStr
  loc_9FEDE7: FStStrNoPop CierraCajaPagoDebi
  loc_9FEDEA: LitStr " INNER JOIN liquidacion l ON l.PeriInfo = lqn.PeriInfo AND l.ExpeImpu = lqn.ExpeImpu AND l.NumeLiqu = lqn.NumeLiqu"
  loc_9FEDED: ConcatStr
  loc_9FEDEE: FStStrNoPop var_98
  loc_9FEDF1: LitStr " AND l.TipoLiqu = 2"
  loc_9FEDF4: ConcatStr
  loc_9FEDF5: FStStrNoPop var_9C
  loc_9FEDF8: LitStr " WHERE lqn.PeriInfo = Year(@desde) AND lqn.FechCaja BETWEEN @desde AND @hasta"
  loc_9FEDFB: ConcatStr
  loc_9FEDFC: FStStrNoPop var_A0
  loc_9FEDFF: LitStr " GROUP BY lqn.PeriInfo, lqn.ExpeImpu, lqn.NumeLiqu, lqn.CucuPers;"
  loc_9FEE02: ConcatStr
  loc_9FEE03: FStStrNoPop var_A4
  loc_9FEE06: Call EjecutarRsCls(from_stack_1v)
  loc_9FEE0B: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoDebi = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_9FEE1C: LitStr "INSERT INTO subdpagodebi (PeriInfo,NumeDebi,FechCaja,DebeCuco,DebeCaja,ExpeImpu,NumeLiqu,CucuPers,CodiRete,HabeCuco,HabeCaja,CodiBanc,NumeMoba)"
  loc_9FEE1F: LitStr " SELECT lqd.PeriInfo, lqd.NumeDebi, tmovi.FechCaja, lqd.CodiCuco, lqd.ImpoImpu, tmovi.ExpeImpu, tmovi.NumeLiqu, tmovi.CucuPers, 0, '', 0, 0, 0"
  loc_9FEE22: ConcatStr
  loc_9FEE23: FStStrNoPop var_8C
  loc_9FEE26: LitStr " FROM tmovi"
  loc_9FEE29: ConcatStr
  loc_9FEE2A: FStStrNoPop var_90
  loc_9FEE2D: LitStr " INNER JOIN liquidadeta lqd ON lqd.PeriInfo = tmovi.PeriInfo AND lqd.ExpeImpu = tmovi.ExpeImpu AND lqd.NumeLiqu = tmovi.NumeLiqu AND lqd.CucuPers = tmovi.CucuPers;"
  loc_9FEE30: ConcatStr
  loc_9FEE31: FStStrNoPop CierraCajaPagoDebi
  loc_9FEE34: Call EjecutarRsCls(from_stack_1v)
  loc_9FEE39: FFreeStr var_8C = "": var_90 = ""
  loc_9FEE42: LitStr "INSERT INTO subdpagodebi (PeriInfo,NumeDebi,FechCaja,DebeCuco,DebeCaja,ExpeImpu,NumeLiqu,CucuPers,CodiRete,HabeCuco,HabeCaja,CodiBanc,NumeMoba)"
  loc_9FEE45: LitStr " SELECT ch.PeriInfo"
  loc_9FEE48: ConcatStr
  loc_9FEE49: FStStrNoPop var_8C
  loc_9FEE4C: LitStr ", IFNULL((SELECT Left(Group_concat(Distinct NumeDebi),250) FROM liquidadeta lqd WHERE lqd.PeriInfo = ch.PeriInfo AND lqd.ExpeImpu = ch.ExpeImpu AND lqd.NumeLiqu = ch.NumeLiqu AND IF(DetaCheq=0,lqd.CucuPers=ch.CucuPers,FALSE)),'') NumeDebi"
  loc_9FEE4F: ConcatStr
  loc_9FEE50: FStStrNoPop var_90
  loc_9FEE53: LitStr ", FepaCheq, '', 0, ch.ExpeImpu, ch.NumeLiqu, ch.CucuPers, 0, IF(AutoCheq IN (1,2,4),CatePaco,b.CodiCuco), ImpoCheq, 0, 0"
  loc_9FEE56: ConcatStr
  loc_9FEE57: FStStrNoPop CierraCajaPagoDebi
  loc_9FEE5A: LitStr " FROM cheque ch"
  loc_9FEE5D: ConcatStr
  loc_9FEE5E: FStStrNoPop var_98
  loc_9FEE61: LitStr " INNER JOIN banco b ON b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_9FEE64: ConcatStr
  loc_9FEE65: FStStrNoPop var_9C
  loc_9FEE68: LitStr " INNER JOIN liquidacion l ON l.PeriInfo = ch.PeriInfo AND l.ExpeImpu = ch.ExpeImpu AND l.NumeLiqu = ch.NumeLiqu AND l.TipoLiqu = 2"
  loc_9FEE6B: ConcatStr
  loc_9FEE6C: FStStrNoPop var_A0
  loc_9FEE6F: LitStr " INNER JOIN paraconta p ON p.PeriInfo = ch.PeriInfo"
  loc_9FEE72: ConcatStr
  loc_9FEE73: FStStrNoPop var_A4
  loc_9FEE76: LitStr " WHERE ch.PeriInfo = Year(@desde)"
  loc_9FEE79: ConcatStr
  loc_9FEE7A: FStStrNoPop var_A8
  loc_9FEE7D: LitStr " AND ch.FepaCheq BETWEEN @desde AND @hasta"
  loc_9FEE80: ConcatStr
  loc_9FEE81: FStStrNoPop var_AC
  loc_9FEE84: LitStr " /* AND AutoCheq IN (1,2,4) */"
  loc_9FEE87: ConcatStr
  loc_9FEE88: FStStrNoPop var_B0
  loc_9FEE8B: LitStr " AND ch.NumeMoba > 0 AND ch.FeanCheq IS NULL;"
  loc_9FEE8E: ConcatStr
  loc_9FEE8F: FStStrNoPop var_B4
  loc_9FEE92: Call EjecutarRsCls(from_stack_1v)
  loc_9FEE97: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoDebi = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_9FEEB0: LitStr "INSERT INTO subdpagodebi (PeriInfo,NumeDebi,FechCaja,DebeCuco,DebeCaja,ExpeImpu,NumeLiqu,CucuPers,CodiRete,HabeCuco,HabeCaja,CodiBanc,NumeMoba)"
  loc_9FEEB3: LitStr " SELECT tmovi.PeriInfo"
  loc_9FEEB6: ConcatStr
  loc_9FEEB7: FStStrNoPop var_8C
  loc_9FEEBA: LitStr ", (SELECT Left(Group_concat(Distinct NumeDebi),250) FROM liquidadeta lqd WHERE lqd.PeriInfo = tmovi.PeriInfo AND lqd.ExpeImpu = tmovi.ExpeImpu AND lqd.NumeLiqu = tmovi.NumeLiqu AND lqd.CucuPers = tmovi.CucuPers) NumeDebi"
  loc_9FEEBD: ConcatStr
  loc_9FEEBE: FStStrNoPop var_90
  loc_9FEEC1: LitStr ", tmovi.FechCaja, '', 0, tmovi.ExpeImpu, tmovi.NumeLiqu, tmovi.CucuPers, lqn.CodiRete, lqn.CodiCuco, ImpoLine, 0, 0"
  loc_9FEEC4: ConcatStr
  loc_9FEEC5: FStStrNoPop CierraCajaPagoDebi
  loc_9FEEC8: LitStr " FROM tmovi"
  loc_9FEECB: ConcatStr
  loc_9FEECC: FStStrNoPop var_98
  loc_9FEECF: LitStr " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = tmovi.PeriInfo AND lqn.ExpeImpu = tmovi.ExpeImpu AND lqn.NumeLiqu = tmovi.NumeLiqu AND lqn.CucuPers = tmovi.CucuPers"
  loc_9FEED2: ConcatStr
  loc_9FEED3: FStStrNoPop var_9C
  loc_9FEED6: LitStr " AND lqn.CodiRete > 0"
  loc_9FEED9: ConcatStr
  loc_9FEEDA: FStStrNoPop var_A0
  loc_9FEEDD: LitStr " /* INNER JOIN retenciones r ON r.PeriInfo = ln.PeriInfo AND r.CodiRete = ln.CodiRete */ ;"
  loc_9FEEE0: ConcatStr
  loc_9FEEE1: FStStrNoPop var_A4
  loc_9FEEE4: Call EjecutarRsCls(from_stack_1v)
  loc_9FEEE9: FFreeStr var_8C = "": var_90 = "": CierraCajaPagoDebi = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_9FEEFA: ExitProcCbHresult
End Function

Public Function CierraCajaRemiCheq() '9B8D44
  'Data Table: 46D5B0
  loc_9B8CA0: ZeroRetVal
  loc_9B8CA2: LitStr "DELETE FROM cajaremicheq WHERE FechCaja BETWEEN @desde AND @hasta;"
  loc_9B8CA5: Call EjecutarRsCls(from_stack_1v)
  loc_9B8CAA: LitStr "INSERT INTO cajaremicheq (IdCheq,FechCaja,ExpeImpu,NumeLiqu,CucuPers,CodiBanc,NumeMoba,AnulCarc,CodiCuco,DebeCarc,HabeCarc)"
  loc_9B8CAD: LitStr " SELECT IdCheq, FereCheq, ExpeImpu, NumeLiqu, CucuPers, CodiBanc, NumeMoba, 2 AnulCarc, '' CodiCuco, 0 DebeCarc, ImpoCheq HabeCarc"
  loc_9B8CB0: ConcatStr
  loc_9B8CB1: FStStrNoPop var_8C
  loc_9B8CB4: LitStr " FROM cheque"
  loc_9B8CB7: ConcatStr
  loc_9B8CB8: FStStrNoPop var_90
  loc_9B8CBB: LitStr " WHERE PeriInfo = Year(@desde)"
  loc_9B8CBE: ConcatStr
  loc_9B8CBF: FStStrNoPop CierraCajaRemiCheq
  loc_9B8CC2: LitStr " AND FereCheq BETWEEN @desde AND @hasta"
  loc_9B8CC5: ConcatStr
  loc_9B8CC6: FStStrNoPop var_98
  loc_9B8CC9: LitStr " AND AutoCheq IN (1,2,4)"
  loc_9B8CCC: ConcatStr
  loc_9B8CCD: FStStrNoPop var_9C
  loc_9B8CD0: LitStr " AND NumeMoba > 0"
  loc_9B8CD3: ConcatStr
  loc_9B8CD4: FStStrNoPop var_A0
  loc_9B8CD7: LitStr " AND FechCheq IS NOT NULL;"
  loc_9B8CDA: ConcatStr
  loc_9B8CDB: FStStrNoPop var_A4
  loc_9B8CDE: Call EjecutarRsCls(from_stack_1v)
  loc_9B8CE3: FFreeStr var_8C = "": var_90 = "": CierraCajaRemiCheq = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_9B8CF4: LitStr "INSERT INTO cajaremicheq (IdCheq,FechCaja,ExpeImpu,NumeLiqu,CucuPers,CodiBanc,NumeMoba,AnulCarc,CodiCuco,DebeCarc,HabeCarc)"
  loc_9B8CF7: LitStr " SELECT IdCheq, FeanCheq, ExpeImpu, NumeLiqu, CucuPers, CodiBanc, NumeMoba, 1 AnulCarc, '' CodiCuco, ImpoCheq DebeCarc, 0 HabeCarc"
  loc_9B8CFA: ConcatStr
  loc_9B8CFB: FStStrNoPop var_8C
  loc_9B8CFE: LitStr " FROM cheque"
  loc_9B8D01: ConcatStr
  loc_9B8D02: FStStrNoPop var_90
  loc_9B8D05: LitStr " WHERE PeriInfo = Year(@desde)"
  loc_9B8D08: ConcatStr
  loc_9B8D09: FStStrNoPop CierraCajaRemiCheq
  loc_9B8D0C: LitStr " AND FereCheq IS NOT NULL"
  loc_9B8D0F: ConcatStr
  loc_9B8D10: FStStrNoPop var_98
  loc_9B8D13: LitStr " AND FeanCheq BETWEEN @desde AND @hasta"
  loc_9B8D16: ConcatStr
  loc_9B8D17: FStStrNoPop var_9C
  loc_9B8D1A: LitStr " AND AutoCheq IN (1,2,4)"
  loc_9B8D1D: ConcatStr
  loc_9B8D1E: FStStrNoPop var_A0
  loc_9B8D21: LitStr " AND NumeMoba > 0;"
  loc_9B8D24: ConcatStr
  loc_9B8D25: FStStrNoPop var_A4
  loc_9B8D28: Call EjecutarRsCls(from_stack_1v)
  loc_9B8D2D: FFreeStr var_8C = "": var_90 = "": CierraCajaRemiCheq = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_9B8D3E: ExitProcCbHresult
End Function

Public Function DesdeFecha(imes) '9B4394
  'Data Table: 46D5B0
  loc_9B4300: ZeroRetVal
  loc_9B4302: LitStr "SELECT FeproPaco"
  loc_9B4305: LitStr " FROM paraconta"
  loc_9B4308: ConcatStr
  loc_9B4309: FStStrNoPop var_8C
  loc_9B430C: LitStr " WHERE PeriInfo = "
  loc_9B430F: ConcatStr
  loc_9B4310: FStStrNoPop var_90
  loc_9B4313: ImpAdLdI2 MemVar_C3D064
  loc_9B4316: CStrUI1
  loc_9B4318: FStStrNoPop DesdeFecha
  loc_9B431B: ConcatStr
  loc_9B431C: FStStrNoPop var_98
  loc_9B431F: LitStr ";"
  loc_9B4322: ConcatStr
  loc_9B4323: FStStrNoPop var_9C
  loc_9B4326: Call EjecutarRsCls(from_stack_1v)
  loc_9B432B: FFreeStr var_8C = "": var_90 = "": DesdeFecha = "": var_98 = ""
  loc_9B4338: FLdRfVar var_A0
  loc_9B433B: FLdPr Me
  loc_9B433E: MemLdPr global_56
  loc_9B4341:  = Me.RecordCount
  loc_9B4346: ILdRf var_A0
  loc_9B4349: LitI4 0
  loc_9B434E: GtI4
  loc_9B434F: BranchF loc_9B438D
  loc_9B4352: FLdRfVar var_C8
  loc_9B4355: FLdRfVar var_B8
  loc_9B4358: LitVarStr var_B4, "FeproPaco"
  loc_9B435D: PopAdLdVar
  loc_9B435E: FLdRfVar var_A4
  loc_9B4361: FLdPr Me
  loc_9B4364: MemLdPr global_56
  loc_9B4367:  = Me.Fields
  loc_9B436C: FLdPr var_A4
  loc_9B436F: from_stack_2 = Me.Item(from_stack_1)
  loc_9B4374: FLdPr var_B8
  loc_9B4377:  = Me.Value
  loc_9B437C: FLdRfVar var_C8
  loc_9B437F: CStrVarTmp
  loc_9B4380: FStStr var_88
  loc_9B4383: FFreeAd var_A4 = ""
  loc_9B438A: FFree1Var var_C8 = ""
  loc_9B438D: ExitProcCbHresult
End Function

Public Function HastaFecha(imes) '9B3D3C
  'Data Table: 46D5B0
  loc_9B3CA8: ZeroRetVal
  loc_9B3CAA: LitStr "SELECT LAST_DAY(FeproPaco) FeproPaco"
  loc_9B3CAD: LitStr " FROM paraconta"
  loc_9B3CB0: ConcatStr
  loc_9B3CB1: FStStrNoPop var_8C
  loc_9B3CB4: LitStr " WHERE PeriInfo = "
  loc_9B3CB7: ConcatStr
  loc_9B3CB8: FStStrNoPop var_90
  loc_9B3CBB: ImpAdLdI2 MemVar_C3D064
  loc_9B3CBE: CStrUI1
  loc_9B3CC0: FStStrNoPop HastaFecha
  loc_9B3CC3: ConcatStr
  loc_9B3CC4: FStStrNoPop var_98
  loc_9B3CC7: LitStr ";"
  loc_9B3CCA: ConcatStr
  loc_9B3CCB: FStStrNoPop var_9C
  loc_9B3CCE: Call EjecutarRsCls(from_stack_1v)
  loc_9B3CD3: FFreeStr var_8C = "": var_90 = "": HastaFecha = "": var_98 = ""
  loc_9B3CE0: FLdRfVar var_A0
  loc_9B3CE3: FLdPr Me
  loc_9B3CE6: MemLdPr global_56
  loc_9B3CE9:  = Me.RecordCount
  loc_9B3CEE: ILdRf var_A0
  loc_9B3CF1: LitI4 0
  loc_9B3CF6: GtI4
  loc_9B3CF7: BranchF loc_9B3D35
  loc_9B3CFA: FLdRfVar var_C8
  loc_9B3CFD: FLdRfVar var_B8
  loc_9B3D00: LitVarStr var_B4, "FeproPaco"
  loc_9B3D05: PopAdLdVar
  loc_9B3D06: FLdRfVar var_A4
  loc_9B3D09: FLdPr Me
  loc_9B3D0C: MemLdPr global_56
  loc_9B3D0F:  = Me.Fields
  loc_9B3D14: FLdPr var_A4
  loc_9B3D17: from_stack_2 = Me.Item(from_stack_1)
  loc_9B3D1C: FLdPr var_B8
  loc_9B3D1F:  = Me.Value
  loc_9B3D24: FLdRfVar var_C8
  loc_9B3D27: CStrVarTmp
  loc_9B3D28: FStStr var_88
  loc_9B3D2B: FFreeAd var_A4 = ""
  loc_9B3D32: FFree1Var var_C8 = ""
  loc_9B3D35: ExitProcCbHresult
End Function

Public Function UltimoCierreProvisorio() '9DD6F4
  'Data Table: 46D5B0
  loc_9DD5FC: ZeroRetVal
  loc_9DD5FE: LitStr "SELECT IFNULL(FeproPaco,'') FeproPaco FROM paraconta WHERE PeriInfo = "
  loc_9DD601: ImpAdLdI2 MemVar_C3D064
  loc_9DD604: CStrUI1
  loc_9DD606: FStStrNoPop var_8C
  loc_9DD609: ConcatStr
  loc_9DD60A: FStStrNoPop var_90
  loc_9DD60D: LitStr ";"
  loc_9DD610: ConcatStr
  loc_9DD611: FStStrNoPop UltimoCierreProvisorio
  loc_9DD614: Call EjecutarRsCls(from_stack_1v)
  loc_9DD619: FFreeStr var_8C = "": var_90 = ""
  loc_9DD622: FLdRfVar var_98
  loc_9DD625: FLdPr Me
  loc_9DD628: MemLdPr global_56
  loc_9DD62B:  = Me.RecordCount
  loc_9DD630: ILdRf var_98
  loc_9DD633: LitI4 0
  loc_9DD638: GtI4
  loc_9DD639: BranchF loc_9DD6D9
  loc_9DD63C: FLdRfVar var_C0
  loc_9DD63F: FLdRfVar var_B0
  loc_9DD642: LitVarStr var_AC, "FeproPaco"
  loc_9DD647: PopAdLdVar
  loc_9DD648: FLdRfVar var_9C
  loc_9DD64B: FLdPr Me
  loc_9DD64E: MemLdPr global_56
  loc_9DD651:  = Me.Fields
  loc_9DD656: FLdPr var_9C
  loc_9DD659: from_stack_2 = Me.Item(from_stack_1)
  loc_9DD65E: FLdPr var_B0
  loc_9DD661:  = Me.Value
  loc_9DD666: FLdRfVar var_C0
  loc_9DD669: LitVarStr var_D0, vbNullString
  loc_9DD66E: HardType
  loc_9DD66F: NeVarBool
  loc_9DD671: FFreeAd var_9C = ""
  loc_9DD678: FFree1Var var_C0 = ""
  loc_9DD67B: BranchF loc_9DD6C4
  loc_9DD67E: FLdRfVar var_C0
  loc_9DD681: FLdRfVar var_B0
  loc_9DD684: LitVarStr var_AC, "FeproPaco"
  loc_9DD689: PopAdLdVar
  loc_9DD68A: FLdRfVar var_9C
  loc_9DD68D: FLdPr Me
  loc_9DD690: MemLdPr global_56
  loc_9DD693:  = Me.Fields
  loc_9DD698: FLdPr var_9C
  loc_9DD69B: from_stack_2 = Me.Item(from_stack_1)
  loc_9DD6A0: FLdPr var_B0
  loc_9DD6A3:  = Me.Value
  loc_9DD6A8: FLdRfVar var_C0
  loc_9DD6AB: FnCDateVar
  loc_9DD6AD: LitI2_Byte 1
  loc_9DD6AF: CR8I2
  loc_9DD6B0: AddR8
  loc_9DD6B1: CDateR8
  loc_9DD6B2: CStrDate
  loc_9DD6B4: FStStr var_88
  loc_9DD6B7: FFreeAd var_9C = ""
  loc_9DD6BE: FFree1Var var_C0 = ""
  loc_9DD6C1: Branch loc_9DD6D6
  loc_9DD6C4: LitStr "01/01/"
  loc_9DD6C7: ImpAdLdI2 MemVar_C3D064
  loc_9DD6CA: CStrUI1
  loc_9DD6CC: FStStrNoPop var_8C
  loc_9DD6CF: ConcatStr
  loc_9DD6D0: FStStr var_88
  loc_9DD6D3: FFree1Str var_8C
  loc_9DD6D6: Branch loc_9DD6EB
  loc_9DD6D9: LitStr "01/01/"
  loc_9DD6DC: ImpAdLdI2 MemVar_C3D064
  loc_9DD6DF: CStrUI1
  loc_9DD6E1: FStStrNoPop var_8C
  loc_9DD6E4: ConcatStr
  loc_9DD6E5: FStStr var_88
  loc_9DD6E8: FFree1Str var_8C
  loc_9DD6EB: ExitProcCbHresult
End Function

Public Function ValidaParaconta(PeriInfo) 'B3EF38
  'Data Table: 46D5B0
  loc_B3E588: ZeroRetVal
  loc_B3E58A: LitStr "SELECT *"
  loc_B3E58D: LitStr " FROM paraconta"
  loc_B3E590: ConcatStr
  loc_B3E591: FStStrNoPop var_8C
  loc_B3E594: LitStr " WHERE paraconta.PeriInfo = "
  loc_B3E597: ConcatStr
  loc_B3E598: FStStrNoPop var_90
  loc_B3E59B: FLdI2 PeriInfo
  loc_B3E59E: CStrUI1
  loc_B3E5A0: FStStrNoPop ValidaParaconta
  loc_B3E5A3: ConcatStr
  loc_B3E5A4: FStStrNoPop var_98
  loc_B3E5A7: Call EjecutarRsCls(from_stack_1v)
  loc_B3E5AC: FFreeStr var_8C = "": var_90 = "": ValidaParaconta = ""
  loc_B3E5B7: FLdRfVar var_9C
  loc_B3E5BA: FLdPr Me
  loc_B3E5BD: MemLdPr global_56
  loc_B3E5C0:  = Me.RecordCount
  loc_B3E5C5: ILdRf var_9C
  loc_B3E5C8: LitI4 0
  loc_B3E5CD: EqI4
  loc_B3E5CE: BranchF loc_B3E5DA
  loc_B3E5D1: LitStr "Faltan los Parámetros para el Ejercicio. Verifique..."
  loc_B3E5D4: FStStrCopy var_88
  loc_B3E5D7: Branch loc_B3E7F5
  loc_B3E5DA: FLdRfVar var_C4
  loc_B3E5DD: FLdRfVar var_B4
  loc_B3E5E0: LitVarStr var_B0, "CaerPaco"
  loc_B3E5E5: PopAdLdVar
  loc_B3E5E6: FLdRfVar var_A0
  loc_B3E5E9: FLdPr Me
  loc_B3E5EC: MemLdPr global_56
  loc_B3E5EF:  = Me.Fields
  loc_B3E5F4: FLdPr var_A0
  loc_B3E5F7: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E5FC: FLdPr var_B4
  loc_B3E5FF:  = Me.Value
  loc_B3E604: FLdRfVar var_C4
  loc_B3E607: LitVarStr var_D4, vbNullString
  loc_B3E60C: HardType
  loc_B3E60D: EqVarBool
  loc_B3E60F: FFreeAd var_A0 = ""
  loc_B3E616: FFree1Var var_C4 = ""
  loc_B3E619: BranchF loc_B3E625
  loc_B3E61C: LitStr "Falta parametrizar la cuenta CÁLCULO DE EROGACIONES. Verifique..."
  loc_B3E61F: FStStrCopy var_88
  loc_B3E622: Branch loc_B3E7E4
  loc_B3E625: FLdRfVar var_C4
  loc_B3E628: FLdRfVar var_B4
  loc_B3E62B: LitVarStr var_B0, "ProvPaco"
  loc_B3E630: PopAdLdVar
  loc_B3E631: FLdRfVar var_A0
  loc_B3E634: FLdPr Me
  loc_B3E637: MemLdPr global_56
  loc_B3E63A:  = Me.Fields
  loc_B3E63F: FLdPr var_A0
  loc_B3E642: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E647: FLdPr var_B4
  loc_B3E64A:  = Me.Value
  loc_B3E64F: FLdRfVar var_C4
  loc_B3E652: LitVarStr var_D4, vbNullString
  loc_B3E657: HardType
  loc_B3E658: EqVarBool
  loc_B3E65A: FFreeAd var_A0 = ""
  loc_B3E661: FFree1Var var_C4 = ""
  loc_B3E664: BranchF loc_B3E670
  loc_B3E667: LitStr "Falta parametrizar la cuenta PROVEEDORES VARIOS PRESUPUESTARIOS. Verifique..."
  loc_B3E66A: FStStrCopy var_88
  loc_B3E66D: Branch loc_B3E7E4
  loc_B3E670: FLdRfVar var_C4
  loc_B3E673: FLdRfVar var_B4
  loc_B3E676: LitVarStr var_B0, "DeexPaco"
  loc_B3E67B: PopAdLdVar
  loc_B3E67C: FLdRfVar var_A0
  loc_B3E67F: FLdPr Me
  loc_B3E682: MemLdPr global_56
  loc_B3E685:  = Me.Fields
  loc_B3E68A: FLdPr var_A0
  loc_B3E68D: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E692: FLdPr var_B4
  loc_B3E695:  = Me.Value
  loc_B3E69A: FLdRfVar var_C4
  loc_B3E69D: LitVarStr var_D4, vbNullString
  loc_B3E6A2: HardType
  loc_B3E6A3: EqVarBool
  loc_B3E6A5: FFreeAd var_A0 = ""
  loc_B3E6AC: FFree1Var var_C4 = ""
  loc_B3E6AF: BranchF loc_B3E6BB
  loc_B3E6B2: LitStr "Falta parametrizar la cuenta DEUDA EXIGIBLE PRESUPUESTARIA. Verifique..."
  loc_B3E6B5: FStStrCopy var_88
  loc_B3E6B8: Branch loc_B3E7E4
  loc_B3E6BB: FLdRfVar var_C4
  loc_B3E6BE: FLdRfVar var_B4
  loc_B3E6C1: LitVarStr var_B0, "ChsrPaco"
  loc_B3E6C6: PopAdLdVar
  loc_B3E6C7: FLdRfVar var_A0
  loc_B3E6CA: FLdPr Me
  loc_B3E6CD: MemLdPr global_56
  loc_B3E6D0:  = Me.Fields
  loc_B3E6D5: FLdPr var_A0
  loc_B3E6D8: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E6DD: FLdPr var_B4
  loc_B3E6E0:  = Me.Value
  loc_B3E6E5: FLdRfVar var_C4
  loc_B3E6E8: LitVarStr var_D4, vbNullString
  loc_B3E6ED: HardType
  loc_B3E6EE: EqVarBool
  loc_B3E6F0: FFreeAd var_A0 = ""
  loc_B3E6F7: FFree1Var var_C4 = ""
  loc_B3E6FA: BranchF loc_B3E706
  loc_B3E6FD: LitStr "Falta parametrizar la cuenta CHEQUES SIN REMITIR. Verifique..."
  loc_B3E700: FStStrCopy var_88
  loc_B3E703: Branch loc_B3E7E4
  loc_B3E706: FLdRfVar var_C4
  loc_B3E709: FLdRfVar var_B4
  loc_B3E70C: LitVarStr var_B0, "CatePaco"
  loc_B3E711: PopAdLdVar
  loc_B3E712: FLdRfVar var_A0
  loc_B3E715: FLdPr Me
  loc_B3E718: MemLdPr global_56
  loc_B3E71B:  = Me.Fields
  loc_B3E720: FLdPr var_A0
  loc_B3E723: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E728: FLdPr var_B4
  loc_B3E72B:  = Me.Value
  loc_B3E730: FLdRfVar var_C4
  loc_B3E733: LitVarStr var_D4, vbNullString
  loc_B3E738: HardType
  loc_B3E739: EqVarBool
  loc_B3E73B: FFreeAd var_A0 = ""
  loc_B3E742: FFree1Var var_C4 = ""
  loc_B3E745: BranchF loc_B3E751
  loc_B3E748: LitStr "Falta parametrizar la cuenta CARGOS AL TESORERO. Verifique..."
  loc_B3E74B: FStStrCopy var_88
  loc_B3E74E: Branch loc_B3E7E4
  loc_B3E751: FLdRfVar var_C4
  loc_B3E754: FLdRfVar var_B4
  loc_B3E757: LitVarStr var_B0, "CajaPaco"
  loc_B3E75C: PopAdLdVar
  loc_B3E75D: FLdRfVar var_A0
  loc_B3E760: FLdPr Me
  loc_B3E763: MemLdPr global_56
  loc_B3E766:  = Me.Fields
  loc_B3E76B: FLdPr var_A0
  loc_B3E76E: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E773: FLdPr var_B4
  loc_B3E776:  = Me.Value
  loc_B3E77B: FLdRfVar var_C4
  loc_B3E77E: LitVarStr var_D4, vbNullString
  loc_B3E783: HardType
  loc_B3E784: EqVarBool
  loc_B3E786: FFreeAd var_A0 = ""
  loc_B3E78D: FFree1Var var_C4 = ""
  loc_B3E790: BranchF loc_B3E79C
  loc_B3E793: LitStr "Falta parametrizar la cuenta CAJA. Verifique..."
  loc_B3E796: FStStrCopy var_88
  loc_B3E799: Branch loc_B3E7E4
  loc_B3E79C: FLdRfVar var_C4
  loc_B3E79F: FLdRfVar var_B4
  loc_B3E7A2: LitVarStr var_B0, "PatrPaco"
  loc_B3E7A7: PopAdLdVar
  loc_B3E7A8: FLdRfVar var_A0
  loc_B3E7AB: FLdPr Me
  loc_B3E7AE: MemLdPr global_56
  loc_B3E7B1:  = Me.Fields
  loc_B3E7B6: FLdPr var_A0
  loc_B3E7B9: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E7BE: FLdPr var_B4
  loc_B3E7C1:  = Me.Value
  loc_B3E7C6: FLdRfVar var_C4
  loc_B3E7C9: LitVarStr var_D4, vbNullString
  loc_B3E7CE: HardType
  loc_B3E7CF: EqVarBool
  loc_B3E7D1: FFreeAd var_A0 = ""
  loc_B3E7D8: FFree1Var var_C4 = ""
  loc_B3E7DB: BranchF loc_B3E7E4
  loc_B3E7DE: LitStr "Falta parametrizar la cuenta PATRIMONIO. Verifique..."
  loc_B3E7E1: FStStrCopy var_88
  loc_B3E7E4: ILdRf var_88
  loc_B3E7E7: LitStr vbNullString
  loc_B3E7EA: NeStr
  loc_B3E7EC: BranchF loc_B3E7F5
  loc_B3E7EF: ExitProcCbHresult
  loc_B3E7F5: LitStr "SELECT paraconta.*"
  loc_B3E7F8: LitStr ", caer.DetaCuco DetaCaer, caer.ImpuCuco ImpuCaer"
  loc_B3E7FB: ConcatStr
  loc_B3E7FC: FStStrNoPop var_8C
  loc_B3E7FF: LitStr ", prov.DetaCuco DetaProv, prov.ImpuCuco ImpuProv"
  loc_B3E802: ConcatStr
  loc_B3E803: FStStrNoPop var_90
  loc_B3E806: LitStr ", deex.DetaCuco DetaDeex, deex.ImpuCuco ImpuDeex"
  loc_B3E809: ConcatStr
  loc_B3E80A: FStStrNoPop ValidaParaconta
  loc_B3E80D: LitStr ", chsr.DetaCuco DetaChsr, chsr.ImpuCuco ImpuChsr"
  loc_B3E810: ConcatStr
  loc_B3E811: FStStrNoPop var_98
  loc_B3E814: LitStr ", cate.DetaCuco DetaCate, cate.ImpuCuco ImpuCate"
  loc_B3E817: ConcatStr
  loc_B3E818: FStStrNoPop var_E8
  loc_B3E81B: LitStr ", caja.DetaCuco DetaCaja, caja.ImpuCuco ImpuCaja"
  loc_B3E81E: ConcatStr
  loc_B3E81F: FStStrNoPop var_EC
  loc_B3E822: LitStr ", patr.DetaCuco DetaPatr, patr.ImpuCuco ImpuPatr"
  loc_B3E825: ConcatStr
  loc_B3E826: FStStrNoPop var_F0
  loc_B3E829: LitStr " FROM paraconta"
  loc_B3E82C: ConcatStr
  loc_B3E82D: FStStrNoPop var_F4
  loc_B3E830: LitStr " LEFT JOIN infogov.cuentacontable caer ON caer.PeriInfo = "
  loc_B3E833: ConcatStr
  loc_B3E834: FStStrNoPop var_F8
  loc_B3E837: FLdI2 PeriInfo
  loc_B3E83A: CStrUI1
  loc_B3E83C: FStStrNoPop var_FC
  loc_B3E83F: ConcatStr
  loc_B3E840: FStStrNoPop var_100
  loc_B3E843: LitStr " AND caer.CodiCuco = paraconta.CaerPaco"
  loc_B3E846: ConcatStr
  loc_B3E847: FStStrNoPop var_104
  loc_B3E84A: LitStr " LEFT JOIN infogov.cuentacontable prov ON prov.PeriInfo = "
  loc_B3E84D: ConcatStr
  loc_B3E84E: FStStrNoPop var_108
  loc_B3E851: FLdI2 PeriInfo
  loc_B3E854: CStrUI1
  loc_B3E856: FStStrNoPop var_10C
  loc_B3E859: ConcatStr
  loc_B3E85A: FStStrNoPop var_110
  loc_B3E85D: LitStr " AND prov.CodiCuco = paraconta.ProvPaco"
  loc_B3E860: ConcatStr
  loc_B3E861: FStStrNoPop var_114
  loc_B3E864: LitStr " LEFT JOIN infogov.cuentacontable deex ON deex.PeriInfo = "
  loc_B3E867: ConcatStr
  loc_B3E868: FStStrNoPop var_118
  loc_B3E86B: FLdI2 PeriInfo
  loc_B3E86E: CStrUI1
  loc_B3E870: FStStrNoPop var_11C
  loc_B3E873: ConcatStr
  loc_B3E874: FStStrNoPop var_120
  loc_B3E877: LitStr " AND deex.CodiCuco = paraconta.DeexPaco"
  loc_B3E87A: ConcatStr
  loc_B3E87B: FStStrNoPop var_124
  loc_B3E87E: LitStr " LEFT JOIN infogov.cuentacontable chsr ON chsr.PeriInfo = "
  loc_B3E881: ConcatStr
  loc_B3E882: FStStrNoPop var_128
  loc_B3E885: FLdI2 PeriInfo
  loc_B3E888: CStrUI1
  loc_B3E88A: FStStrNoPop var_12C
  loc_B3E88D: ConcatStr
  loc_B3E88E: FStStrNoPop var_130
  loc_B3E891: LitStr " AND chsr.CodiCuco = paraconta.ChsrPaco"
  loc_B3E894: ConcatStr
  loc_B3E895: FStStrNoPop var_134
  loc_B3E898: LitStr " LEFT JOIN infogov.cuentacontable cate ON cate.PeriInfo = "
  loc_B3E89B: ConcatStr
  loc_B3E89C: FStStrNoPop var_138
  loc_B3E89F: FLdI2 PeriInfo
  loc_B3E8A2: CStrUI1
  loc_B3E8A4: FStStrNoPop var_13C
  loc_B3E8A7: ConcatStr
  loc_B3E8A8: FStStrNoPop var_140
  loc_B3E8AB: LitStr " AND cate.CodiCuco = paraconta.CatePaco"
  loc_B3E8AE: ConcatStr
  loc_B3E8AF: FStStrNoPop var_144
  loc_B3E8B2: LitStr " LEFT JOIN infogov.cuentacontable caja ON caja.PeriInfo = "
  loc_B3E8B5: ConcatStr
  loc_B3E8B6: FStStrNoPop var_148
  loc_B3E8B9: FLdI2 PeriInfo
  loc_B3E8BC: CStrUI1
  loc_B3E8BE: FStStrNoPop var_14C
  loc_B3E8C1: ConcatStr
  loc_B3E8C2: FStStrNoPop var_150
  loc_B3E8C5: LitStr " AND caja.CodiCuco = paraconta.CajaPaco"
  loc_B3E8C8: ConcatStr
  loc_B3E8C9: FStStrNoPop var_154
  loc_B3E8CC: LitStr " LEFT JOIN infogov.cuentacontable patr ON patr.PeriInfo = "
  loc_B3E8CF: ConcatStr
  loc_B3E8D0: FStStrNoPop var_158
  loc_B3E8D3: FLdI2 PeriInfo
  loc_B3E8D6: CStrUI1
  loc_B3E8D8: FStStrNoPop var_15C
  loc_B3E8DB: ConcatStr
  loc_B3E8DC: FStStrNoPop var_160
  loc_B3E8DF: LitStr " AND patr.CodiCuco = paraconta.PatrPaco"
  loc_B3E8E2: ConcatStr
  loc_B3E8E3: FStStrNoPop var_164
  loc_B3E8E6: LitStr " WHERE paraconta.PeriInfo = "
  loc_B3E8E9: ConcatStr
  loc_B3E8EA: FStStrNoPop var_168
  loc_B3E8ED: FLdI2 PeriInfo
  loc_B3E8F0: CStrUI1
  loc_B3E8F2: FStStrNoPop var_16C
  loc_B3E8F5: ConcatStr
  loc_B3E8F6: FStStrNoPop var_170
  loc_B3E8F9: Call EjecutarRsCls(from_stack_1v)
  loc_B3E8FE: FFreeStr var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_8C = "": var_90 = "": ValidaParaconta = "": var_98 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_B3E94F: FLdRfVar var_B4
  loc_B3E952: LitVarStr var_B0, "ImpuCaer"
  loc_B3E957: PopAdLdVar
  loc_B3E958: FLdRfVar var_A0
  loc_B3E95B: FLdPr Me
  loc_B3E95E: MemLdPr global_56
  loc_B3E961:  = Me.Fields
  loc_B3E966: FLdPr var_A0
  loc_B3E969: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E96E: FLdZeroAd var_B4
  loc_B3E971: CVarAd
  loc_B3E975: ImpAdCallI2 IsNull()
  loc_B3E97A: FFree1Ad var_A0
  loc_B3E97D: FFree1Var var_C4 = ""
  loc_B3E980: BranchF loc_B3E98C
  loc_B3E983: LitStr "La Cuenta Contable >Cálculo de Erogaciones< NO EXISTE. Verifique..."
  loc_B3E986: FStStrCopy var_88
  loc_B3E989: Branch loc_B3EF1F
  loc_B3E98C: FLdRfVar var_C4
  loc_B3E98F: FLdRfVar var_B4
  loc_B3E992: LitVarStr var_B0, "ImpuCaer"
  loc_B3E997: PopAdLdVar
  loc_B3E998: FLdRfVar var_A0
  loc_B3E99B: FLdPr Me
  loc_B3E99E: MemLdPr global_56
  loc_B3E9A1:  = Me.Fields
  loc_B3E9A6: FLdPr var_A0
  loc_B3E9A9: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E9AE: FLdPr var_B4
  loc_B3E9B1:  = Me.Value
  loc_B3E9B6: FLdRfVar var_C4
  loc_B3E9B9: LitVarI2 var_D4, 0
  loc_B3E9BE: HardType
  loc_B3E9BF: EqVarBool
  loc_B3E9C1: FFreeAd var_A0 = ""
  loc_B3E9C8: FFree1Var var_C4 = ""
  loc_B3E9CB: BranchF loc_B3EA24
  loc_B3E9CE: LitVarStr var_D4, "La Cuenta Contable >"
  loc_B3E9D3: FLdRfVar var_C4
  loc_B3E9D6: FLdRfVar var_B4
  loc_B3E9D9: LitVarStr var_B0, "DetaCaer"
  loc_B3E9DE: PopAdLdVar
  loc_B3E9DF: FLdRfVar var_A0
  loc_B3E9E2: FLdPr Me
  loc_B3E9E5: MemLdPr global_56
  loc_B3E9E8:  = Me.Fields
  loc_B3E9ED: FLdPr var_A0
  loc_B3E9F0: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E9F5: FLdPr var_B4
  loc_B3E9F8:  = Me.Value
  loc_B3E9FD: FLdRfVar var_C4
  loc_B3EA00: ConcatVar var_E4
  loc_B3EA04: LitVarStr var_180, "< NO ES IMPUTABLE. Verifique..."
  loc_B3EA09: ConcatVar var_190
  loc_B3EA0D: CStrVarTmp
  loc_B3EA0E: FStStr var_88
  loc_B3EA11: FFreeAd var_A0 = ""
  loc_B3EA18: FFreeVar var_C4 = "": var_E4 = ""
  loc_B3EA21: Branch loc_B3EF1F
  loc_B3EA24: FLdRfVar var_B4
  loc_B3EA27: LitVarStr var_B0, "ImpuProv"
  loc_B3EA2C: PopAdLdVar
  loc_B3EA2D: FLdRfVar var_A0
  loc_B3EA30: FLdPr Me
  loc_B3EA33: MemLdPr global_56
  loc_B3EA36:  = Me.Fields
  loc_B3EA3B: FLdPr var_A0
  loc_B3EA3E: from_stack_2 = Me.Item(from_stack_1)
  loc_B3EA43: FLdZeroAd var_B4
  loc_B3EA46: CVarAd
  loc_B3EA4A: ImpAdCallI2 IsNull()
  loc_B3EA4F: FFree1Ad var_A0
  loc_B3EA52: FFree1Var var_C4 = ""
  loc_B3EA55: BranchF loc_B3EA61
  loc_B3EA58: LitStr "La Cuenta Contable >Proveedores Varios Presupuestarios< NO EXISTE. Verifique..."
  loc_B3EA5B: FStStrCopy var_88
  loc_B3EA5E: Branch loc_B3EF1F
  loc_B3EA61: FLdRfVar var_C4
  loc_B3EA64: FLdRfVar var_B4
  loc_B3EA67: LitVarStr var_B0, "ImpuProv"
  loc_B3EA6C: PopAdLdVar
  loc_B3EA6D: FLdRfVar var_A0
  loc_B3EA70: FLdPr Me
  loc_B3EA73: MemLdPr global_56
  loc_B3EA76:  = Me.Fields
  loc_B3EA7B: FLdPr var_A0
  loc_B3EA7E: from_stack_2 = Me.Item(from_stack_1)
  loc_B3EA83: FLdPr var_B4
  loc_B3EA86:  = Me.Value
  loc_B3EA8B: FLdRfVar var_C4
  loc_B3EA8E: LitVarI2 var_D4, 0
  loc_B3EA93: HardType
  loc_B3EA94: EqVarBool
  loc_B3EA96: FFreeAd var_A0 = ""
  loc_B3EA9D: FFree1Var var_C4 = ""
  loc_B3EAA0: BranchF loc_B3EAF9
  loc_B3EAA3: LitVarStr var_D4, "La Cuenta Contable >"
  loc_B3EAA8: FLdRfVar var_C4
  loc_B3EAAB: FLdRfVar var_B4
  loc_B3EAAE: LitVarStr var_B0, "DetaProv"
  loc_B3EAB3: PopAdLdVar
  loc_B3EAB4: FLdRfVar var_A0
  loc_B3EAB7: FLdPr Me
  loc_B3EABA: MemLdPr global_56
  loc_B3EABD:  = Me.Fields
  loc_B3EAC2: FLdPr var_A0
  loc_B3EAC5: from_stack_2 = Me.Item(from_stack_1)
  loc_B3EACA: FLdPr var_B4
  loc_B3EACD:  = Me.Value
  loc_B3EAD2: FLdRfVar var_C4
  loc_B3EAD5: ConcatVar var_E4
  loc_B3EAD9: LitVarStr var_180, "< NO ES IMPUTABLE. Verifique..."
  loc_B3EADE: ConcatVar var_190
  loc_B3EAE2: CStrVarTmp
  loc_B3EAE3: FStStr var_88
  loc_B3EAE6: FFreeAd var_A0 = ""
  loc_B3EAED: FFreeVar var_C4 = "": var_E4 = ""
  loc_B3EAF6: Branch loc_B3EF1F
  loc_B3EAF9: FLdRfVar var_B4
  loc_B3EAFC: LitVarStr var_B0, "ImpuDeex"
  loc_B3EB01: PopAdLdVar
  loc_B3EB02: FLdRfVar var_A0
  loc_B3EB05: FLdPr Me
  loc_B3EB08: MemLdPr global_56
  loc_B3EB0B:  = Me.Fields
  loc_B3EB10: FLdPr var_A0
  loc_B3EB13: from_stack_2 = Me.Item(from_stack_1)
  loc_B3EB18: FLdZeroAd var_B4
  loc_B3EB1B: CVarAd
  loc_B3EB1F: ImpAdCallI2 IsNull()
  loc_B3EB24: FFree1Ad var_A0
  loc_B3EB27: FFree1Var var_C4 = ""
  loc_B3EB2A: BranchF loc_B3EB36
  loc_B3EB2D: LitStr "La Cuenta Contable >Deuda Exigible Presupuestaria< NO EXISTE. Verifique..."
  loc_B3EB30: FStStrCopy var_88
  loc_B3EB33: Branch loc_B3EF1F
  loc_B3EB36: FLdRfVar var_C4
  loc_B3EB39: FLdRfVar var_B4
  loc_B3EB3C: LitVarStr var_B0, "ImpuDeex"
  loc_B3EB41: PopAdLdVar
  loc_B3EB42: FLdRfVar var_A0
  loc_B3EB45: FLdPr Me
  loc_B3EB48: MemLdPr global_56
  loc_B3EB4B:  = Me.Fields
  loc_B3EB50: FLdPr var_A0
  loc_B3EB53: from_stack_2 = Me.Item(from_stack_1)
  loc_B3EB58: FLdPr var_B4
  loc_B3EB5B:  = Me.Value
  loc_B3EB60: FLdRfVar var_C4
  loc_B3EB63: LitVarI2 var_D4, 0
  loc_B3EB68: HardType
  loc_B3EB69: EqVarBool
  loc_B3EB6B: FFreeAd var_A0 = ""
  loc_B3EB72: FFree1Var var_C4 = ""
  loc_B3EB75: BranchF loc_B3EBCE
  loc_B3EB78: LitVarStr var_D4, "La Cuenta Contable >"
  loc_B3EB7D: FLdRfVar var_C4
  loc_B3EB80: FLdRfVar var_B4
  loc_B3EB83: LitVarStr var_B0, "DetaDeex"
  loc_B3EB88: PopAdLdVar
  loc_B3EB89: FLdRfVar var_A0
  loc_B3EB8C: FLdPr Me
  loc_B3EB8F: MemLdPr global_56
  loc_B3EB92:  = Me.Fields
  loc_B3EB97: FLdPr var_A0
  loc_B3EB9A: from_stack_2 = Me.Item(from_stack_1)
  loc_B3EB9F: FLdPr var_B4
  loc_B3EBA2:  = Me.Value
  loc_B3EBA7: FLdRfVar var_C4
  loc_B3EBAA: ConcatVar var_E4
  loc_B3EBAE: LitVarStr var_180, "< NO ES IMPUTABLE. Verifique..."
  loc_B3EBB3: ConcatVar var_190
  loc_B3EBB7: CStrVarTmp
  loc_B3EBB8: FStStr var_88
  loc_B3EBBB: FFreeAd var_A0 = ""
  loc_B3EBC2: FFreeVar var_C4 = "": var_E4 = ""
  loc_B3EBCB: Branch loc_B3EF1F
  loc_B3EBCE: FLdRfVar var_B4
  loc_B3EBD1: LitVarStr var_B0, "ImpuChsr"
  loc_B3EBD6: PopAdLdVar
  loc_B3EBD7: FLdRfVar var_A0
  loc_B3EBDA: FLdPr Me
  loc_B3EBDD: MemLdPr global_56
  loc_B3EBE0:  = Me.Fields
  loc_B3EBE5: FLdPr var_A0
  loc_B3EBE8: from_stack_2 = Me.Item(from_stack_1)
  loc_B3EBED: FLdZeroAd var_B4
  loc_B3EBF0: CVarAd
  loc_B3EBF4: ImpAdCallI2 IsNull()
  loc_B3EBF9: FFree1Ad var_A0
  loc_B3EBFC: FFree1Var var_C4 = ""
  loc_B3EBFF: BranchF loc_B3EC0B
  loc_B3EC02: LitStr "La Cuenta Contable >Cheques sin Remitir< NO EXISTE. Verifique..."
  loc_B3EC05: FStStrCopy var_88
  loc_B3EC08: Branch loc_B3EF1F
  loc_B3EC0B: FLdRfVar var_C4
  loc_B3EC0E: FLdRfVar var_B4
  loc_B3EC11: LitVarStr var_B0, "ImpuChsr"
  loc_B3EC16: PopAdLdVar
  loc_B3EC17: FLdRfVar var_A0
  loc_B3EC1A: FLdPr Me
  loc_B3EC1D: MemLdPr global_56
  loc_B3EC20:  = Me.Fields
  loc_B3EC25: FLdPr var_A0
  loc_B3EC28: from_stack_2 = Me.Item(from_stack_1)
  loc_B3EC2D: FLdPr var_B4
  loc_B3EC30:  = Me.Value
  loc_B3EC35: FLdRfVar var_C4
  loc_B3EC38: LitVarI2 var_D4, 0
  loc_B3EC3D: HardType
  loc_B3EC3E: EqVarBool
  loc_B3EC40: FFreeAd var_A0 = ""
  loc_B3EC47: FFree1Var var_C4 = ""
  loc_B3EC4A: BranchF loc_B3ECA3
  loc_B3EC4D: LitVarStr var_D4, "La Cuenta Contable >"
  loc_B3EC52: FLdRfVar var_C4
  loc_B3EC55: FLdRfVar var_B4
  loc_B3EC58: LitVarStr var_B0, "DetaChsr"
  loc_B3EC5D: PopAdLdVar
  loc_B3EC5E: FLdRfVar var_A0
  loc_B3EC61: FLdPr Me
  loc_B3EC64: MemLdPr global_56
  loc_B3EC67:  = Me.Fields
  loc_B3EC6C: FLdPr var_A0
  loc_B3EC6F: from_stack_2 = Me.Item(from_stack_1)
  loc_B3EC74: FLdPr var_B4
  loc_B3EC77:  = Me.Value
  loc_B3EC7C: FLdRfVar var_C4
  loc_B3EC7F: ConcatVar var_E4
  loc_B3EC83: LitVarStr var_180, "< NO ES IMPUTABLE. Verifique..."
  loc_B3EC88: ConcatVar var_190
  loc_B3EC8C: CStrVarTmp
  loc_B3EC8D: FStStr var_88
  loc_B3EC90: FFreeAd var_A0 = ""
  loc_B3EC97: FFreeVar var_C4 = "": var_E4 = ""
  loc_B3ECA0: Branch loc_B3EF1F
  loc_B3ECA3: FLdRfVar var_B4
  loc_B3ECA6: LitVarStr var_B0, "ImpuCate"
  loc_B3ECAB: PopAdLdVar
  loc_B3ECAC: FLdRfVar var_A0
  loc_B3ECAF: FLdPr Me
  loc_B3ECB2: MemLdPr global_56
  loc_B3ECB5:  = Me.Fields
  loc_B3ECBA: FLdPr var_A0
  loc_B3ECBD: from_stack_2 = Me.Item(from_stack_1)
  loc_B3ECC2: FLdZeroAd var_B4
  loc_B3ECC5: CVarAd
  loc_B3ECC9: ImpAdCallI2 IsNull()
  loc_B3ECCE: FFree1Ad var_A0
  loc_B3ECD1: FFree1Var var_C4 = ""
  loc_B3ECD4: BranchF loc_B3ECE0
  loc_B3ECD7: LitStr "La Cuenta Contable >Cargos al Tesorero< NO EXISTE. Verifique..."
  loc_B3ECDA: FStStrCopy var_88
  loc_B3ECDD: Branch loc_B3EF1F
  loc_B3ECE0: FLdRfVar var_C4
  loc_B3ECE3: FLdRfVar var_B4
  loc_B3ECE6: LitVarStr var_B0, "ImpuCate"
  loc_B3ECEB: PopAdLdVar
  loc_B3ECEC: FLdRfVar var_A0
  loc_B3ECEF: FLdPr Me
  loc_B3ECF2: MemLdPr global_56
  loc_B3ECF5:  = Me.Fields
  loc_B3ECFA: FLdPr var_A0
  loc_B3ECFD: from_stack_2 = Me.Item(from_stack_1)
  loc_B3ED02: FLdPr var_B4
  loc_B3ED05:  = Me.Value
  loc_B3ED0A: FLdRfVar var_C4
  loc_B3ED0D: LitVarI2 var_D4, 0
  loc_B3ED12: HardType
  loc_B3ED13: EqVarBool
  loc_B3ED15: FFreeAd var_A0 = ""
  loc_B3ED1C: FFree1Var var_C4 = ""
  loc_B3ED1F: BranchF loc_B3ED78
  loc_B3ED22: LitVarStr var_D4, "La Cuenta Contable >"
  loc_B3ED27: FLdRfVar var_C4
  loc_B3ED2A: FLdRfVar var_B4
  loc_B3ED2D: LitVarStr var_B0, "DetaCate"
  loc_B3ED32: PopAdLdVar
  loc_B3ED33: FLdRfVar var_A0
  loc_B3ED36: FLdPr Me
  loc_B3ED39: MemLdPr global_56
  loc_B3ED3C:  = Me.Fields
  loc_B3ED41: FLdPr var_A0
  loc_B3ED44: from_stack_2 = Me.Item(from_stack_1)
  loc_B3ED49: FLdPr var_B4
  loc_B3ED4C:  = Me.Value
  loc_B3ED51: FLdRfVar var_C4
  loc_B3ED54: ConcatVar var_E4
  loc_B3ED58: LitVarStr var_180, "< NO ES IMPUTABLE. Verifique..."
  loc_B3ED5D: ConcatVar var_190
  loc_B3ED61: CStrVarTmp
  loc_B3ED62: FStStr var_88
  loc_B3ED65: FFreeAd var_A0 = ""
  loc_B3ED6C: FFreeVar var_C4 = "": var_E4 = ""
  loc_B3ED75: Branch loc_B3EF1F
  loc_B3ED78: FLdRfVar var_B4
  loc_B3ED7B: LitVarStr var_B0, "ImpuCaja"
  loc_B3ED80: PopAdLdVar
  loc_B3ED81: FLdRfVar var_A0
  loc_B3ED84: FLdPr Me
  loc_B3ED87: MemLdPr global_56
  loc_B3ED8A:  = Me.Fields
  loc_B3ED8F: FLdPr var_A0
  loc_B3ED92: from_stack_2 = Me.Item(from_stack_1)
  loc_B3ED97: FLdZeroAd var_B4
  loc_B3ED9A: CVarAd
  loc_B3ED9E: ImpAdCallI2 IsNull()
  loc_B3EDA3: FFree1Ad var_A0
  loc_B3EDA6: FFree1Var var_C4 = ""
  loc_B3EDA9: BranchF loc_B3EDB5
  loc_B3EDAC: LitStr "La Cuenta Contable >Caja< NO EXISTE. Verifique..."
  loc_B3EDAF: FStStrCopy var_88
  loc_B3EDB2: Branch loc_B3EF1F
  loc_B3EDB5: FLdRfVar var_C4
  loc_B3EDB8: FLdRfVar var_B4
  loc_B3EDBB: LitVarStr var_B0, "ImpuCaja"
  loc_B3EDC0: PopAdLdVar
  loc_B3EDC1: FLdRfVar var_A0
  loc_B3EDC4: FLdPr Me
  loc_B3EDC7: MemLdPr global_56
  loc_B3EDCA:  = Me.Fields
  loc_B3EDCF: FLdPr var_A0
  loc_B3EDD2: from_stack_2 = Me.Item(from_stack_1)
  loc_B3EDD7: FLdPr var_B4
  loc_B3EDDA:  = Me.Value
  loc_B3EDDF: FLdRfVar var_C4
  loc_B3EDE2: LitVarI2 var_D4, 0
  loc_B3EDE7: HardType
  loc_B3EDE8: EqVarBool
  loc_B3EDEA: FFreeAd var_A0 = ""
  loc_B3EDF1: FFree1Var var_C4 = ""
  loc_B3EDF4: BranchF loc_B3EE4D
  loc_B3EDF7: LitVarStr var_D4, "La Cuenta Contable >"
  loc_B3EDFC: FLdRfVar var_C4
  loc_B3EDFF: FLdRfVar var_B4
  loc_B3EE02: LitVarStr var_B0, "DetaCaja"
  loc_B3EE07: PopAdLdVar
  loc_B3EE08: FLdRfVar var_A0
  loc_B3EE0B: FLdPr Me
  loc_B3EE0E: MemLdPr global_56
  loc_B3EE11:  = Me.Fields
  loc_B3EE16: FLdPr var_A0
  loc_B3EE19: from_stack_2 = Me.Item(from_stack_1)
  loc_B3EE1E: FLdPr var_B4
  loc_B3EE21:  = Me.Value
  loc_B3EE26: FLdRfVar var_C4
  loc_B3EE29: ConcatVar var_E4
  loc_B3EE2D: LitVarStr var_180, "< NO ES IMPUTABLE. Verifique..."
  loc_B3EE32: ConcatVar var_190
  loc_B3EE36: CStrVarTmp
  loc_B3EE37: FStStr var_88
  loc_B3EE3A: FFreeAd var_A0 = ""
  loc_B3EE41: FFreeVar var_C4 = "": var_E4 = ""
  loc_B3EE4A: Branch loc_B3EF1F
  loc_B3EE4D: FLdRfVar var_B4
  loc_B3EE50: LitVarStr var_B0, "ImpuPatr"
  loc_B3EE55: PopAdLdVar
  loc_B3EE56: FLdRfVar var_A0
  loc_B3EE59: FLdPr Me
  loc_B3EE5C: MemLdPr global_56
  loc_B3EE5F:  = Me.Fields
  loc_B3EE64: FLdPr var_A0
  loc_B3EE67: from_stack_2 = Me.Item(from_stack_1)
  loc_B3EE6C: FLdZeroAd var_B4
  loc_B3EE6F: CVarAd
  loc_B3EE73: ImpAdCallI2 IsNull()
  loc_B3EE78: FFree1Ad var_A0
  loc_B3EE7B: FFree1Var var_C4 = ""
  loc_B3EE7E: BranchF loc_B3EE8A
  loc_B3EE81: LitStr "La Cuenta Contable >Patrimonio< NO EXISTE. Verifique..."
  loc_B3EE84: FStStrCopy var_88
  loc_B3EE87: Branch loc_B3EF1F
  loc_B3EE8A: FLdRfVar var_C4
  loc_B3EE8D: FLdRfVar var_B4
  loc_B3EE90: LitVarStr var_B0, "ImpuPatr"
  loc_B3EE95: PopAdLdVar
  loc_B3EE96: FLdRfVar var_A0
  loc_B3EE99: FLdPr Me
  loc_B3EE9C: MemLdPr global_56
  loc_B3EE9F:  = Me.Fields
  loc_B3EEA4: FLdPr var_A0
  loc_B3EEA7: from_stack_2 = Me.Item(from_stack_1)
  loc_B3EEAC: FLdPr var_B4
  loc_B3EEAF:  = Me.Value
  loc_B3EEB4: FLdRfVar var_C4
  loc_B3EEB7: LitVarI2 var_D4, 0
  loc_B3EEBC: HardType
  loc_B3EEBD: EqVarBool
  loc_B3EEBF: FFreeAd var_A0 = ""
  loc_B3EEC6: FFree1Var var_C4 = ""
  loc_B3EEC9: BranchF loc_B3EF1F
  loc_B3EECC: LitVarStr var_D4, "La Cuenta Contable >"
  loc_B3EED1: FLdRfVar var_C4
  loc_B3EED4: FLdRfVar var_B4
  loc_B3EED7: LitVarStr var_B0, "DetaPatr"
  loc_B3EEDC: PopAdLdVar
  loc_B3EEDD: FLdRfVar var_A0
  loc_B3EEE0: FLdPr Me
  loc_B3EEE3: MemLdPr global_56
  loc_B3EEE6:  = Me.Fields
  loc_B3EEEB: FLdPr var_A0
  loc_B3EEEE: from_stack_2 = Me.Item(from_stack_1)
  loc_B3EEF3: FLdPr var_B4
  loc_B3EEF6:  = Me.Value
  loc_B3EEFB: FLdRfVar var_C4
  loc_B3EEFE: ConcatVar var_E4
  loc_B3EF02: LitVarStr var_180, "< NO ES IMPUTABLE. Verifique..."
  loc_B3EF07: ConcatVar var_190
  loc_B3EF0B: CStrVarTmp
  loc_B3EF0C: FStStr var_88
  loc_B3EF0F: FFreeAd var_A0 = ""
  loc_B3EF16: FFreeVar var_C4 = "": var_E4 = ""
  loc_B3EF1F: ILdRf var_88
  loc_B3EF22: LitStr vbNullString
  loc_B3EF25: NeStr
  loc_B3EF27: BranchF loc_B3EF30
  loc_B3EF2A: ExitProcCbHresult
  loc_B3EF30: ExitProcCbHresult
End Function

Public Function ControlesMensuales(PeriInfo, Fecha) 'BF1E8C
  'Data Table: 46D5B0
  loc_BEFFF0: ILdRf Fecha
  loc_BEFFF3: FStStrCopy var_8C
  loc_BEFFF6: LitVar_TRUE var_9C
  loc_BEFFF9: PopAdLdVar
  loc_BEFFFA: ImpAdLdRf MemVar_C3D110
  loc_BEFFFD: NewIfNullPr frmGenerarBalanceMensual
  loc_BF0000: VCallAd Control_ID_
  loc_BF0003: FStAdFunc var_B0
  loc_BF0006: FLdPr var_B0
  loc_BF0009: LateIdSt
  loc_BF000E: FFree1Ad var_B0
  loc_BF0011: LitStr "SET @peri = "
  loc_BF0014: FLdI2 PeriInfo
  loc_BF0017: CStrUI1
  loc_BF0019: FStStrNoPop var_B4
  loc_BF001C: ConcatStr
  loc_BF001D: FStStrNoPop var_B8
  loc_BF0020: LitStr ", @fecha="
  loc_BF0023: ConcatStr
  loc_BF0024: FStStrNoPop var_BC
  loc_BF0027: ILdRf var_8C
  loc_BF002A: ConcatStr
  loc_BF002B: FStStrNoPop var_C0
  loc_BF002E: LitStr ";"
  loc_BF0031: ConcatStr
  loc_BF0032: FStStrNoPop var_C4
  loc_BF0035: Call EjecutarRsCls(from_stack_1v)
  loc_BF003A: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_BF0047: LitI2_Byte &HA
  loc_BF0049: CR8I2
  loc_BF004A: CVarR4
  loc_BF004E: PopAdLdVar
  loc_BF004F: ImpAdLdRf MemVar_C3D110
  loc_BF0052: NewIfNullPr frmGenerarBalanceMensual
  loc_BF0055: VCallAd Control_ID_
  loc_BF0058: FStAdFunc var_B0
  loc_BF005B: FLdPr var_B0
  loc_BF005E: LateIdSt
  loc_BF0063: FFree1Ad var_B0
  loc_BF0066: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_BF0069: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_BF006C: ConcatStr
  loc_BF006D: FStStrNoPop var_B4
  loc_BF0070: LitStr "   eriInfo` year(4) NOT NULL default '0000',"
  loc_BF0073: ConcatStr
  loc_BF0074: FStStrNoPop var_B8
  loc_BF0077: LitStr "   rovPaco` varchar(12) NOT NULL default '',"
  loc_BF007A: ConcatStr
  loc_BF007B: FStStrNoPop var_BC
  loc_BF007E: LitStr "   aldMoas` decimal(14,2) NOT NULL default '0.00',"
  loc_BF0081: ConcatStr
  loc_BF0082: FStStrNoPop var_C0
  loc_BF0085: LitStr "   aldImpu` decimal(14,2) NOT NULL default '0.00'"
  loc_BF0088: ConcatStr
  loc_BF0089: FStStrNoPop var_C4
  loc_BF008C: LitStr " ) ;"
  loc_BF008F: ConcatStr
  loc_BF0090: FStStrNoPop var_C8
  loc_BF0093: LitStr " INSERT INTO tmovi"
  loc_BF0096: ConcatStr
  loc_BF0097: FStStrNoPop var_CC
  loc_BF009A: LitStr " SELECT paraconta.PeriInfo, paraconta.ProvPaco, IFNULL(Sum(HabeMoas)-Sum(DebeMoas),0), 0"
  loc_BF009D: ConcatStr
  loc_BF009E: FStStrNoPop var_D0
  loc_BF00A1: LitStr " FROM paraconta"
  loc_BF00A4: ConcatStr
  loc_BF00A5: FStStrNoPop var_D4
  loc_BF00A8: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = paraconta.PeriInfo AND moviasiento.CodiCuco = paraconta.ProvPaco"
  loc_BF00AB: ConcatStr
  loc_BF00AC: FStStrNoPop var_D8
  loc_BF00AF: LitStr " INNER JOIN asiento ON asiento.PeriInfo = moviasiento.PeriInfo AND asiento.CodiAsie = moviasiento.CodiAsie"
  loc_BF00B2: ConcatStr
  loc_BF00B3: FStStrNoPop var_DC
  loc_BF00B6: LitStr " WHERE paraconta.PeriInfo = "
  loc_BF00B9: ConcatStr
  loc_BF00BA: FStStrNoPop var_E0
  loc_BF00BD: FLdI2 PeriInfo
  loc_BF00C0: CStrUI1
  loc_BF00C2: FStStrNoPop var_E4
  loc_BF00C5: ConcatStr
  loc_BF00C6: FStStrNoPop var_E8
  loc_BF00C9: LitStr " AND FechAsie <= "
  loc_BF00CC: ConcatStr
  loc_BF00CD: FStStrNoPop var_EC
  loc_BF00D0: ILdRf var_8C
  loc_BF00D3: ConcatStr
  loc_BF00D4: FStStrNoPop var_F0
  loc_BF00D7: LitStr " GROUP BY PeriInfo;"
  loc_BF00DA: ConcatStr
  loc_BF00DB: FStStrNoPop var_F4
  loc_BF00DE: LitStr " INSERT INTO tmovi"
  loc_BF00E1: ConcatStr
  loc_BF00E2: FStStrNoPop var_F8
  loc_BF00E5: LitStr " SELECT paraconta.PeriInfo, paraconta.ProvPaco, 0, IFNULL(Sum(DeveImpu)-Sum(MapaImpu),0)"
  loc_BF00E8: ConcatStr
  loc_BF00E9: FStStrNoPop var_FC
  loc_BF00EC: LitStr " FROM paraconta"
  loc_BF00EF: ConcatStr
  loc_BF00F0: FStStrNoPop var_100
  loc_BF00F3: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = paraconta.PeriInfo AND Left(CodiPart,1) <> PaexPaco"
  loc_BF00F6: ConcatStr
  loc_BF00F7: FStStrNoPop var_104
  loc_BF00FA: LitStr " WHERE paraconta.PeriInfo = "
  loc_BF00FD: ConcatStr
  loc_BF00FE: FStStrNoPop var_108
  loc_BF0101: FLdI2 PeriInfo
  loc_BF0104: CStrUI1
  loc_BF0106: FStStrNoPop var_10C
  loc_BF0109: ConcatStr
  loc_BF010A: FStStrNoPop var_110
  loc_BF010D: LitStr " AND FechImpu <= "
  loc_BF0110: ConcatStr
  loc_BF0111: FStStrNoPop var_114
  loc_BF0114: ILdRf var_8C
  loc_BF0117: ConcatStr
  loc_BF0118: FStStrNoPop var_118
  loc_BF011B: LitStr " GROUP BY TRUE;"
  loc_BF011E: ConcatStr
  loc_BF011F: FStStrNoPop var_11C
  loc_BF0122: Call EjecutarRsCls(from_stack_1v)
  loc_BF0127: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_BF0160: LitStr "SELECT tmovi.PeriInfo, ProvPaco, DetaCuco, Sum(SaldMoas) SaldMoas, Sum(SaldImpu) SaldImpu, Sum(SaldMoas)-Sum(SaldImpu) diferencia"
  loc_BF0163: LitStr " FROM tmovi"
  loc_BF0166: ConcatStr
  loc_BF0167: FStStrNoPop var_B4
  loc_BF016A: LitStr " INNER JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.ProvPaco"
  loc_BF016D: ConcatStr
  loc_BF016E: FStStrNoPop var_B8
  loc_BF0171: LitStr " GROUP BY PeriInfo;"
  loc_BF0174: ConcatStr
  loc_BF0175: FStStrNoPop var_BC
  loc_BF0178: Call EjecutarRsCls(from_stack_1v)
  loc_BF017D: FFreeStr var_B4 = "": var_B8 = ""
  loc_BF0186: FLdRfVar var_120
  loc_BF0189: FLdPr Me
  loc_BF018C: MemLdPr global_56
  loc_BF018F:  = frmGenerarBalanceMensual.Recordset15.RecordCount
  loc_BF0194: ILdRf var_120
  loc_BF0197: LitI4 0
  loc_BF019C: GtI4
  loc_BF019D: BranchF loc_BF02E0
  loc_BF01A0: FLdRfVar var_1CC
  loc_BF01A3: FLdRfVar var_124
  loc_BF01A6: LitVarStr var_9C, "ProvPaco"
  loc_BF01AB: PopAdLdVar
  loc_BF01AC: FLdRfVar var_B0
  loc_BF01AF: FLdPr Me
  loc_BF01B2: MemLdPr global_56
  loc_BF01B5:  = Me.Fields
  loc_BF01BA: FLdPr var_B0
  loc_BF01BD: from_stack_2 = Me.Item(from_stack_1)
  loc_BF01C2: FLdPr var_124
  loc_BF01C5:  = Me.Value
  loc_BF01CA: FLdRfVar var_1DC
  loc_BF01CD: FLdRfVar var_12C
  loc_BF01D0: LitVarStr var_AC, "DetaCuco"
  loc_BF01D5: PopAdLdVar
  loc_BF01D6: FLdRfVar var_128
  loc_BF01D9: FLdPr Me
  loc_BF01DC: MemLdPr global_56
  loc_BF01DF:  = Me.Fields
  loc_BF01E4: FLdPr var_128
  loc_BF01E7: from_stack_2 = Me.Item(from_stack_1)
  loc_BF01EC: FLdPr var_12C
  loc_BF01EF:  = Me.Value
  loc_BF01F4: FLdRfVar var_144
  loc_BF01F7: LitVarStr var_140, "SaldMoas"
  loc_BF01FC: PopAdLdVar
  loc_BF01FD: FLdRfVar var_130
  loc_BF0200: FLdPr Me
  loc_BF0203: MemLdPr global_56
  loc_BF0206:  = Me.Fields
  loc_BF020B: FLdPr var_130
  loc_BF020E: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0213: LitI4 1
  loc_BF0218: LitI4 1
  loc_BF021D: LitVarStr var_164, "currency"
  loc_BF0222: FStVarCopyObj var_174
  loc_BF0225: FLdRfVar var_174
  loc_BF0228: FLdZeroAd var_144
  loc_BF022B: CVarAd
  loc_BF022F: ImpAdCallI2 Format$(, )
  loc_BF0234: FStStr var_C4
  loc_BF0237: FLdRfVar var_18C
  loc_BF023A: LitVarStr var_188, "SaldImpu"
  loc_BF023F: PopAdLdVar
  loc_BF0240: FLdRfVar var_178
  loc_BF0243: FLdPr Me
  loc_BF0246: MemLdPr global_56
  loc_BF0249:  = Me.Fields
  loc_BF024E: FLdPr var_178
  loc_BF0251: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0256: LitI4 1
  loc_BF025B: LitI4 1
  loc_BF0260: LitVarStr var_1AC, "currency"
  loc_BF0265: FStVarCopyObj var_1BC
  loc_BF0268: FLdRfVar var_1BC
  loc_BF026B: FLdZeroAd var_18C
  loc_BF026E: CVarAd
  loc_BF0272: ImpAdCallI2 Format$(, )
  loc_BF0277: FStStr var_C8
  loc_BF027A: LitI2_Byte 1
  loc_BF027C: CUI1I2
  loc_BF027E: FLdZeroAd var_C8
  loc_BF0281: FStStrNoPop var_C0
  loc_BF0284: CR8Str
  loc_BF0286: PopFPR8
  loc_BF0287: LitStr vbNullString
  loc_BF028A: LitStr vbNullString
  loc_BF028D: FLdZeroAd var_C4
  loc_BF0290: FStStrNoPop var_BC
  loc_BF0293: CR8Str
  loc_BF0295: PopFPR8
  loc_BF0296: FLdRfVar var_1DC
  loc_BF0299: CStrVarTmp
  loc_BF029A: FStStrNoPop var_B8
  loc_BF029D: FLdRfVar var_1CC
  loc_BF02A0: CStrVarTmp
  loc_BF02A1: FStStrNoPop var_B4
  loc_BF02A4: ILdRf var_8C
  loc_BF02A7: ImpAdLdI2 MemVar_C3D064
  loc_BF02AA: LitI2_Byte 1
  loc_BF02AC: CUI1I2
  loc_BF02AE: Call Proc_5_49_A44264()
  loc_BF02B3: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_BF02C2: FFreeAd var_B0 = "": var_128 = "": var_130 = "": var_178 = "": var_124 = ""
  loc_BF02D1: FFreeVar var_154 = "": var_174 = "": var_19C = "": var_1BC = "": var_1CC = ""
  loc_BF02E0: LitI2_Byte &H14
  loc_BF02E2: CR8I2
  loc_BF02E3: CVarR4
  loc_BF02E7: PopAdLdVar
  loc_BF02E8: ImpAdLdRf MemVar_C3D110
  loc_BF02EB: NewIfNullPr frmGenerarBalanceMensual
  loc_BF02EE: VCallAd Control_ID_
  loc_BF02F1: FStAdFunc var_B0
  loc_BF02F4: FLdPr var_B0
  loc_BF02F7: LateIdSt
  loc_BF02FC: FFree1Ad var_B0
  loc_BF02FF: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_BF0302: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_BF0305: ConcatStr
  loc_BF0306: FStStrNoPop var_B4
  loc_BF0309: LitStr "   eriInfo` year(4) NOT NULL default '0000',"
  loc_BF030C: ConcatStr
  loc_BF030D: FStStrNoPop var_B8
  loc_BF0310: LitStr "   eexPaco` varchar(12) NOT NULL default '',"
  loc_BF0313: ConcatStr
  loc_BF0314: FStStrNoPop var_BC
  loc_BF0317: LitStr "   aldMoas` decimal(14,2) NOT NULL default '0.00',"
  loc_BF031A: ConcatStr
  loc_BF031B: FStStrNoPop var_C0
  loc_BF031E: LitStr "   aldImpu` decimal(14,2) NOT NULL default '0.00'"
  loc_BF0321: ConcatStr
  loc_BF0322: FStStrNoPop var_C4
  loc_BF0325: LitStr " ) ;"
  loc_BF0328: ConcatStr
  loc_BF0329: FStStrNoPop var_C8
  loc_BF032C: LitStr " INSERT INTO tmovi"
  loc_BF032F: ConcatStr
  loc_BF0330: FStStrNoPop var_CC
  loc_BF0333: LitStr " SELECT paraconta.PeriInfo, paraconta.DeexPaco, IFNULL(Sum(HabeMoas)-Sum(DebeMoas),0), 0"
  loc_BF0336: ConcatStr
  loc_BF0337: FStStrNoPop var_D0
  loc_BF033A: LitStr " FROM paraconta"
  loc_BF033D: ConcatStr
  loc_BF033E: FStStrNoPop var_D4
  loc_BF0341: LitStr " INNER JOIN asiento ON asiento.PeriInfo = paraconta.PeriInfo AND FechAsie <= "
  loc_BF0344: ConcatStr
  loc_BF0345: FStStrNoPop var_D8
  loc_BF0348: ILdRf var_8C
  loc_BF034B: ConcatStr
  loc_BF034C: FStStrNoPop var_DC
  loc_BF034F: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie AND moviasiento.CodiCuco = paraconta.DeexPaco"
  loc_BF0352: ConcatStr
  loc_BF0353: FStStrNoPop var_E0
  loc_BF0356: LitStr " WHERE paraconta.PeriInfo = "
  loc_BF0359: ConcatStr
  loc_BF035A: FStStrNoPop var_E4
  loc_BF035D: FLdI2 PeriInfo
  loc_BF0360: CStrUI1
  loc_BF0362: FStStrNoPop var_E8
  loc_BF0365: ConcatStr
  loc_BF0366: FStStrNoPop var_EC
  loc_BF0369: LitStr " AND FechAsie <= "
  loc_BF036C: ConcatStr
  loc_BF036D: FStStrNoPop var_F0
  loc_BF0370: ILdRf var_8C
  loc_BF0373: ConcatStr
  loc_BF0374: FStStrNoPop var_F4
  loc_BF0377: LitStr " GROUP BY TRUE;"
  loc_BF037A: ConcatStr
  loc_BF037B: FStStrNoPop var_F8
  loc_BF037E: LitStr " INSERT INTO tmovi"
  loc_BF0381: ConcatStr
  loc_BF0382: FStStrNoPop var_FC
  loc_BF0385: LitStr " SELECT paraconta.PeriInfo, paraconta.DeexPaco, 0, IFNULL(Sum(MapaImpu)-Sum(PagaImpu),0)"
  loc_BF0388: ConcatStr
  loc_BF0389: FStStrNoPop var_100
  loc_BF038C: LitStr " FROM paraconta"
  loc_BF038F: ConcatStr
  loc_BF0390: FStStrNoPop var_104
  loc_BF0393: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = paraconta.PeriInfo AND Left(CodiPart,1) <> PaexPaco"
  loc_BF0396: ConcatStr
  loc_BF0397: FStStrNoPop var_108
  loc_BF039A: LitStr " WHERE paraconta.PeriInfo = "
  loc_BF039D: ConcatStr
  loc_BF039E: FStStrNoPop var_10C
  loc_BF03A1: FLdI2 PeriInfo
  loc_BF03A4: CStrUI1
  loc_BF03A6: FStStrNoPop var_110
  loc_BF03A9: ConcatStr
  loc_BF03AA: FStStrNoPop var_114
  loc_BF03AD: LitStr " AND FechImpu <= "
  loc_BF03B0: ConcatStr
  loc_BF03B1: FStStrNoPop var_118
  loc_BF03B4: ILdRf var_8C
  loc_BF03B7: ConcatStr
  loc_BF03B8: FStStrNoPop var_11C
  loc_BF03BB: LitStr " GROUP BY TRUE;"
  loc_BF03BE: ConcatStr
  loc_BF03BF: FStStrNoPop var_1E0
  loc_BF03C2: Call EjecutarRsCls(from_stack_1v)
  loc_BF03C7: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_BF0402: LitStr "SELECT DeexPaco, DetaCuco, Sum(SaldMoas) SaldMoas, Sum(SaldImpu) SaldImpu, Sum(SaldMoas)-Sum(SaldImpu) diferencia"
  loc_BF0405: LitStr " FROM tmovi"
  loc_BF0408: ConcatStr
  loc_BF0409: FStStrNoPop var_B4
  loc_BF040C: LitStr " INNER JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.DeexPaco"
  loc_BF040F: ConcatStr
  loc_BF0410: FStStrNoPop var_B8
  loc_BF0413: LitStr " GROUP BY TRUE;"
  loc_BF0416: ConcatStr
  loc_BF0417: FStStrNoPop var_BC
  loc_BF041A: Call EjecutarRsCls(from_stack_1v)
  loc_BF041F: FFreeStr var_B4 = "": var_B8 = ""
  loc_BF0428: FLdRfVar var_120
  loc_BF042B: FLdPr Me
  loc_BF042E: MemLdPr global_56
  loc_BF0431:  = frmGenerarBalanceMensual.Recordset15.RecordCount
  loc_BF0436: ILdRf var_120
  loc_BF0439: LitI4 0
  loc_BF043E: GtI4
  loc_BF043F: BranchF loc_BF0582
  loc_BF0442: FLdRfVar var_1CC
  loc_BF0445: FLdRfVar var_124
  loc_BF0448: LitVarStr var_9C, "DeexPaco"
  loc_BF044D: PopAdLdVar
  loc_BF044E: FLdRfVar var_B0
  loc_BF0451: FLdPr Me
  loc_BF0454: MemLdPr global_56
  loc_BF0457:  = Me.Fields
  loc_BF045C: FLdPr var_B0
  loc_BF045F: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0464: FLdPr var_124
  loc_BF0467:  = Me.Value
  loc_BF046C: FLdRfVar var_1DC
  loc_BF046F: FLdRfVar var_12C
  loc_BF0472: LitVarStr var_AC, "DetaCuco"
  loc_BF0477: PopAdLdVar
  loc_BF0478: FLdRfVar var_128
  loc_BF047B: FLdPr Me
  loc_BF047E: MemLdPr global_56
  loc_BF0481:  = Me.Fields
  loc_BF0486: FLdPr var_128
  loc_BF0489: from_stack_2 = Me.Item(from_stack_1)
  loc_BF048E: FLdPr var_12C
  loc_BF0491:  = Me.Value
  loc_BF0496: FLdRfVar var_144
  loc_BF0499: LitVarStr var_140, "SaldMoas"
  loc_BF049E: PopAdLdVar
  loc_BF049F: FLdRfVar var_130
  loc_BF04A2: FLdPr Me
  loc_BF04A5: MemLdPr global_56
  loc_BF04A8:  = Me.Fields
  loc_BF04AD: FLdPr var_130
  loc_BF04B0: from_stack_2 = Me.Item(from_stack_1)
  loc_BF04B5: LitI4 1
  loc_BF04BA: LitI4 1
  loc_BF04BF: LitVarStr var_164, "currency"
  loc_BF04C4: FStVarCopyObj var_174
  loc_BF04C7: FLdRfVar var_174
  loc_BF04CA: FLdZeroAd var_144
  loc_BF04CD: CVarAd
  loc_BF04D1: ImpAdCallI2 Format$(, )
  loc_BF04D6: FStStr var_C4
  loc_BF04D9: FLdRfVar var_18C
  loc_BF04DC: LitVarStr var_188, "SaldImpu"
  loc_BF04E1: PopAdLdVar
  loc_BF04E2: FLdRfVar var_178
  loc_BF04E5: FLdPr Me
  loc_BF04E8: MemLdPr global_56
  loc_BF04EB:  = Me.Fields
  loc_BF04F0: FLdPr var_178
  loc_BF04F3: from_stack_2 = Me.Item(from_stack_1)
  loc_BF04F8: LitI4 1
  loc_BF04FD: LitI4 1
  loc_BF0502: LitVarStr var_1AC, "currency"
  loc_BF0507: FStVarCopyObj var_1BC
  loc_BF050A: FLdRfVar var_1BC
  loc_BF050D: FLdZeroAd var_18C
  loc_BF0510: CVarAd
  loc_BF0514: ImpAdCallI2 Format$(, )
  loc_BF0519: FStStr var_C8
  loc_BF051C: LitI2_Byte 1
  loc_BF051E: CUI1I2
  loc_BF0520: FLdZeroAd var_C8
  loc_BF0523: FStStrNoPop var_C0
  loc_BF0526: CR8Str
  loc_BF0528: PopFPR8
  loc_BF0529: LitStr vbNullString
  loc_BF052C: LitStr vbNullString
  loc_BF052F: FLdZeroAd var_C4
  loc_BF0532: FStStrNoPop var_BC
  loc_BF0535: CR8Str
  loc_BF0537: PopFPR8
  loc_BF0538: FLdRfVar var_1DC
  loc_BF053B: CStrVarTmp
  loc_BF053C: FStStrNoPop var_B8
  loc_BF053F: FLdRfVar var_1CC
  loc_BF0542: CStrVarTmp
  loc_BF0543: FStStrNoPop var_B4
  loc_BF0546: ILdRf var_8C
  loc_BF0549: ImpAdLdI2 MemVar_C3D064
  loc_BF054C: LitI2_Byte 3
  loc_BF054E: CUI1I2
  loc_BF0550: Call Proc_5_49_A44264()
  loc_BF0555: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_BF0564: FFreeAd var_B0 = "": var_128 = "": var_130 = "": var_178 = "": var_124 = ""
  loc_BF0573: FFreeVar var_154 = "": var_174 = "": var_19C = "": var_1BC = "": var_1CC = ""
  loc_BF0582: LitI2_Byte &H1E
  loc_BF0584: CR8I2
  loc_BF0585: CVarR4
  loc_BF0589: PopAdLdVar
  loc_BF058A: ImpAdLdRf MemVar_C3D110
  loc_BF058D: NewIfNullPr frmGenerarBalanceMensual
  loc_BF0590: VCallAd Control_ID_
  loc_BF0593: FStAdFunc var_B0
  loc_BF0596: FLdPr var_B0
  loc_BF0599: LateIdSt
  loc_BF059E: FFree1Ad var_B0
  loc_BF05A1: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_BF05A4: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_BF05A7: ConcatStr
  loc_BF05A8: FStStrNoPop var_B4
  loc_BF05AB: LitStr "   eriInfo` year(4) NOT NULL default '0000',"
  loc_BF05AE: ConcatStr
  loc_BF05AF: FStStrNoPop var_B8
  loc_BF05B2: LitStr "   aldMoas` decimal(14,2) NOT NULL default '0.00',"
  loc_BF05B5: ConcatStr
  loc_BF05B6: FStStrNoPop var_BC
  loc_BF05B9: LitStr "   aldCheq` decimal(14,2) NOT NULL default '0.00'"
  loc_BF05BC: ConcatStr
  loc_BF05BD: FStStrNoPop var_C0
  loc_BF05C0: LitStr " ) ;"
  loc_BF05C3: ConcatStr
  loc_BF05C4: FStStrNoPop var_C4
  loc_BF05C7: LitStr " INSERT INTO tmovi"
  loc_BF05CA: ConcatStr
  loc_BF05CB: FStStrNoPop var_C8
  loc_BF05CE: LitStr " SELECT paraconta.PeriInfo, IFNULL(Sum(DebeMoas)-Sum(HabeMoas),0), 0"
  loc_BF05D1: ConcatStr
  loc_BF05D2: FStStrNoPop var_CC
  loc_BF05D5: LitStr " FROM paraconta"
  loc_BF05D8: ConcatStr
  loc_BF05D9: FStStrNoPop var_D0
  loc_BF05DC: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = paraconta.PeriInfo AND moviasiento.CodiCuco = paraconta.CatePaco"
  loc_BF05DF: ConcatStr
  loc_BF05E0: FStStrNoPop var_D4
  loc_BF05E3: LitStr " INNER JOIN asiento ON asiento.PeriInfo = moviasiento.PeriInfo AND asiento.CodiAsie = moviasiento.CodiAsie"
  loc_BF05E6: ConcatStr
  loc_BF05E7: FStStrNoPop var_D8
  loc_BF05EA: LitStr " WHERE paraconta.PeriInfo = "
  loc_BF05ED: ConcatStr
  loc_BF05EE: FStStrNoPop var_DC
  loc_BF05F1: FLdI2 PeriInfo
  loc_BF05F4: CStrUI1
  loc_BF05F6: FStStrNoPop var_E0
  loc_BF05F9: ConcatStr
  loc_BF05FA: FStStrNoPop var_E4
  loc_BF05FD: LitStr " AND FechAsie <= "
  loc_BF0600: ConcatStr
  loc_BF0601: FStStrNoPop var_E8
  loc_BF0604: ILdRf var_8C
  loc_BF0607: ConcatStr
  loc_BF0608: FStStrNoPop var_EC
  loc_BF060B: LitStr " GROUP BY TRUE;"
  loc_BF060E: ConcatStr
  loc_BF060F: FStStrNoPop var_F0
  loc_BF0612: LitStr " INSERT INTO tmovi"
  loc_BF0615: ConcatStr
  loc_BF0616: FStStrNoPop var_F4
  loc_BF0619: LitStr " SELECT PeriInfo, 0, IFNULL(Sum(ImpoCheq),0)"
  loc_BF061C: ConcatStr
  loc_BF061D: FStStrNoPop var_F8
  loc_BF0620: LitStr " FROM cheque"
  loc_BF0623: ConcatStr
  loc_BF0624: FStStrNoPop var_FC
  loc_BF0627: LitStr " WHERE PeriInfo = "
  loc_BF062A: ConcatStr
  loc_BF062B: FStStrNoPop var_100
  loc_BF062E: FLdI2 PeriInfo
  loc_BF0631: CStrUI1
  loc_BF0633: FStStrNoPop var_104
  loc_BF0636: ConcatStr
  loc_BF0637: FStStrNoPop var_108
  loc_BF063A: LitStr " AND FereCheq <= "
  loc_BF063D: ConcatStr
  loc_BF063E: FStStrNoPop var_10C
  loc_BF0641: ILdRf var_8C
  loc_BF0644: ConcatStr
  loc_BF0645: FStStrNoPop var_110
  loc_BF0648: LitStr " AND (FeanCheq IS NULL OR FeanCheq > "
  loc_BF064B: ConcatStr
  loc_BF064C: FStStrNoPop var_114
  loc_BF064F: ILdRf var_8C
  loc_BF0652: ConcatStr
  loc_BF0653: FStStrNoPop var_118
  loc_BF0656: LitStr ")"
  loc_BF0659: ConcatStr
  loc_BF065A: FStStrNoPop var_11C
  loc_BF065D: LitStr " AND (FepaCheq IS NULL OR FepaCheq > "
  loc_BF0660: ConcatStr
  loc_BF0661: FStStrNoPop var_1E0
  loc_BF0664: ILdRf var_8C
  loc_BF0667: ConcatStr
  loc_BF0668: FStStrNoPop var_1E4
  loc_BF066B: LitStr ")"
  loc_BF066E: ConcatStr
  loc_BF066F: FStStrNoPop var_1E8
  loc_BF0672: LitStr " AND AutoCheq IN (1,2,4)"
  loc_BF0675: ConcatStr
  loc_BF0676: FStStrNoPop var_1EC
  loc_BF0679: LitStr " AND NumeMoba > 0"
  loc_BF067C: ConcatStr
  loc_BF067D: FStStrNoPop var_1F0
  loc_BF0680: LitStr " GROUP BY TRUE;"
  loc_BF0683: ConcatStr
  loc_BF0684: FStStrNoPop var_1F4
  loc_BF0687: Call EjecutarRsCls(from_stack_1v)
  loc_BF068C: FFreeStr var_1EC = "": var_1F0 = "": var_1F4 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_1E0 = "": var_1E4 = ""
  loc_BF06D1: LitStr "SELECT CatePaco, DetaCuco, Sum(SaldMoas) SaldMoas, Sum(SaldCheq) SaldCheq, Sum(SaldMoas)-Sum(SaldCheq) diferencia"
  loc_BF06D4: LitStr " FROM tmovi"
  loc_BF06D7: ConcatStr
  loc_BF06D8: FStStrNoPop var_B4
  loc_BF06DB: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = tmovi.PeriInfo"
  loc_BF06DE: ConcatStr
  loc_BF06DF: FStStrNoPop var_B8
  loc_BF06E2: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = pc.PeriInfo AND cc.CodiCuco = pc.CatePaco"
  loc_BF06E5: ConcatStr
  loc_BF06E6: FStStrNoPop var_BC
  loc_BF06E9: LitStr " GROUP BY TRUE;"
  loc_BF06EC: ConcatStr
  loc_BF06ED: FStStrNoPop var_C0
  loc_BF06F0: Call EjecutarRsCls(from_stack_1v)
  loc_BF06F5: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_BF0700: FLdRfVar var_120
  loc_BF0703: FLdPr Me
  loc_BF0706: MemLdPr global_56
  loc_BF0709:  = frmGenerarBalanceMensual.Recordset15.RecordCount
  loc_BF070E: ILdRf var_120
  loc_BF0711: LitI4 0
  loc_BF0716: GtI4
  loc_BF0717: BranchF loc_BF0BCD
  loc_BF071A: FLdRfVar var_1CC
  loc_BF071D: FLdRfVar var_124
  loc_BF0720: LitVarStr var_9C, "CatePaco"
  loc_BF0725: PopAdLdVar
  loc_BF0726: FLdRfVar var_B0
  loc_BF0729: FLdPr Me
  loc_BF072C: MemLdPr global_56
  loc_BF072F:  = Me.Fields
  loc_BF0734: FLdPr var_B0
  loc_BF0737: from_stack_2 = Me.Item(from_stack_1)
  loc_BF073C: FLdPr var_124
  loc_BF073F:  = Me.Value
  loc_BF0744: FLdRfVar var_1DC
  loc_BF0747: FLdRfVar var_12C
  loc_BF074A: LitVarStr var_AC, "DetaCuco"
  loc_BF074F: PopAdLdVar
  loc_BF0750: FLdRfVar var_128
  loc_BF0753: FLdPr Me
  loc_BF0756: MemLdPr global_56
  loc_BF0759:  = Me.Fields
  loc_BF075E: FLdPr var_128
  loc_BF0761: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0766: FLdPr var_12C
  loc_BF0769:  = Me.Value
  loc_BF076E: FLdRfVar var_144
  loc_BF0771: LitVarStr var_140, "SaldMoas"
  loc_BF0776: PopAdLdVar
  loc_BF0777: FLdRfVar var_130
  loc_BF077A: FLdPr Me
  loc_BF077D: MemLdPr global_56
  loc_BF0780:  = Me.Fields
  loc_BF0785: FLdPr var_130
  loc_BF0788: from_stack_2 = Me.Item(from_stack_1)
  loc_BF078D: LitI4 1
  loc_BF0792: LitI4 1
  loc_BF0797: LitVarStr var_164, "currency"
  loc_BF079C: FStVarCopyObj var_174
  loc_BF079F: FLdRfVar var_174
  loc_BF07A2: FLdZeroAd var_144
  loc_BF07A5: CVarAd
  loc_BF07A9: ImpAdCallI2 Format$(, )
  loc_BF07AE: FStStr var_C4
  loc_BF07B1: FLdRfVar var_18C
  loc_BF07B4: LitVarStr var_188, "SaldCheq"
  loc_BF07B9: PopAdLdVar
  loc_BF07BA: FLdRfVar var_178
  loc_BF07BD: FLdPr Me
  loc_BF07C0: MemLdPr global_56
  loc_BF07C3:  = Me.Fields
  loc_BF07C8: FLdPr var_178
  loc_BF07CB: from_stack_2 = Me.Item(from_stack_1)
  loc_BF07D0: LitI4 1
  loc_BF07D5: LitI4 1
  loc_BF07DA: LitVarStr var_1AC, "currency"
  loc_BF07DF: FStVarCopyObj var_1BC
  loc_BF07E2: FLdRfVar var_1BC
  loc_BF07E5: FLdZeroAd var_18C
  loc_BF07E8: CVarAd
  loc_BF07EC: ImpAdCallI2 Format$(, )
  loc_BF07F1: FStStr var_C8
  loc_BF07F4: LitI2_Byte 1
  loc_BF07F6: CUI1I2
  loc_BF07F8: FLdZeroAd var_C8
  loc_BF07FB: FStStrNoPop var_C0
  loc_BF07FE: CR8Str
  loc_BF0800: PopFPR8
  loc_BF0801: LitStr vbNullString
  loc_BF0804: LitStr vbNullString
  loc_BF0807: FLdZeroAd var_C4
  loc_BF080A: FStStrNoPop var_BC
  loc_BF080D: CR8Str
  loc_BF080F: PopFPR8
  loc_BF0810: FLdRfVar var_1DC
  loc_BF0813: CStrVarTmp
  loc_BF0814: FStStrNoPop var_B8
  loc_BF0817: FLdRfVar var_1CC
  loc_BF081A: CStrVarTmp
  loc_BF081B: FStStrNoPop var_B4
  loc_BF081E: ILdRf var_8C
  loc_BF0821: ImpAdLdI2 MemVar_C3D064
  loc_BF0824: LitI2_Byte 5
  loc_BF0826: CUI1I2
  loc_BF0828: Call Proc_5_49_A44264()
  loc_BF082D: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_BF083C: FFreeAd var_B0 = "": var_128 = "": var_130 = "": var_178 = "": var_124 = ""
  loc_BF084B: FFreeVar var_154 = "": var_174 = "": var_19C = "": var_1BC = "": var_1CC = ""
  loc_BF085A: FLdRfVar var_154
  loc_BF085D: FLdRfVar var_124
  loc_BF0860: LitVarStr var_9C, "diferencia"
  loc_BF0865: PopAdLdVar
  loc_BF0866: FLdRfVar var_B0
  loc_BF0869: FLdPr Me
  loc_BF086C: MemLdPr global_56
  loc_BF086F:  = Me.Fields
  loc_BF0874: FLdPr var_B0
  loc_BF0877: from_stack_2 = Me.Item(from_stack_1)
  loc_BF087C: FLdPr var_124
  loc_BF087F:  = Me.Value
  loc_BF0884: FLdRfVar var_154
  loc_BF0887: LitVarI2 var_AC, 0
  loc_BF088C: HardType
  loc_BF088D: NeVarBool
  loc_BF088F: FFreeAd var_B0 = ""
  loc_BF0896: FFree1Var var_154 = ""
  loc_BF0899: BranchF loc_BF0BCD
  loc_BF089C: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_BF089F: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_BF08A2: ConcatStr
  loc_BF08A3: FStStrNoPop var_B4
  loc_BF08A6: LitStr "   xpeImpu` varchar(15) NOT NULL default '',"
  loc_BF08A9: ConcatStr
  loc_BF08AA: FStStrNoPop var_B8
  loc_BF08AD: LitStr "   umeLiqu` SMALLINT(4) unsigned NOT NULL default '0',"
  loc_BF08B0: ConcatStr
  loc_BF08B1: FStStrNoPop var_BC
  loc_BF08B4: LitStr "   mpoCheq` decimal(14,2) NOT NULL default '0.00',"
  loc_BF08B7: ConcatStr
  loc_BF08B8: FStStrNoPop var_C0
  loc_BF08BB: LitStr "   mpoCaja` decimal(14,2) NOT NULL default '0.00'"
  loc_BF08BE: ConcatStr
  loc_BF08BF: FStStrNoPop var_C4
  loc_BF08C2: LitStr " ) ;"
  loc_BF08C5: ConcatStr
  loc_BF08C6: FStStrNoPop var_C8
  loc_BF08C9: LitStr " INSERT INTO tmovi"
  loc_BF08CC: ConcatStr
  loc_BF08CD: FStStrNoPop var_CC
  loc_BF08D0: LitStr " SELECT ExpeImpu, NumeLiqu, Sum(ImpoCheq), 0"
  loc_BF08D3: ConcatStr
  loc_BF08D4: FStStrNoPop var_D0
  loc_BF08D7: LitStr " FROM cheque"
  loc_BF08DA: ConcatStr
  loc_BF08DB: FStStrNoPop var_D4
  loc_BF08DE: LitStr " WHERE PeriInfo = @peri"
  loc_BF08E1: ConcatStr
  loc_BF08E2: FStStrNoPop var_D8
  loc_BF08E5: LitStr " AND FereCheq <= @fecha"
  loc_BF08E8: ConcatStr
  loc_BF08E9: FStStrNoPop var_DC
  loc_BF08EC: LitStr " AND (FeanCheq IS NULL OR FeanCheq > @fecha)"
  loc_BF08EF: ConcatStr
  loc_BF08F0: FStStrNoPop var_E0
  loc_BF08F3: LitStr " AND (FepaCheq IS NULL OR FepaCheq > @fecha)"
  loc_BF08F6: ConcatStr
  loc_BF08F7: FStStrNoPop var_E4
  loc_BF08FA: LitStr " AND AutoCheq IN (1,2,4)"
  loc_BF08FD: ConcatStr
  loc_BF08FE: FStStrNoPop var_E8
  loc_BF0901: LitStr " AND NumeMoba > 0"
  loc_BF0904: ConcatStr
  loc_BF0905: FStStrNoPop var_EC
  loc_BF0908: LitStr " GROUP BY ExpeImpu, NumeLiqu;"
  loc_BF090B: ConcatStr
  loc_BF090C: FStStrNoPop var_F0
  loc_BF090F: LitStr " INSERT INTO tmovi"
  loc_BF0912: ConcatStr
  loc_BF0913: FStStrNoPop var_F4
  loc_BF0916: LitStr " SELECT ExpeImpu, NumeLiqu, 0, Sum(HabeCarc)-Sum(DebeCarc)"
  loc_BF0919: ConcatStr
  loc_BF091A: FStStrNoPop var_F8
  loc_BF091D: LitStr " FROM cajaremicheq"
  loc_BF0920: ConcatStr
  loc_BF0921: FStStrNoPop var_FC
  loc_BF0924: LitStr " WHERE Year(FechCaja) = @peri"
  loc_BF0927: ConcatStr
  loc_BF0928: FStStrNoPop var_100
  loc_BF092B: LitStr " AND FechCaja <= @fecha"
  loc_BF092E: ConcatStr
  loc_BF092F: FStStrNoPop var_104
  loc_BF0932: LitStr " GROUP BY ExpeImpu, NumeLiqu;"
  loc_BF0935: ConcatStr
  loc_BF0936: FStStrNoPop var_108
  loc_BF0939: Call EjecutarRsCls(from_stack_1v)
  loc_BF093E: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_BF096D: LitStr "INSERT INTO tmovi "
  loc_BF0970: LitStr " SELECT ExpeImpu, NumeLiqu, 0, Sum(DebeCaja)-Sum(HabeCaja)"
  loc_BF0973: ConcatStr
  loc_BF0974: FStStrNoPop var_B4
  loc_BF0977: LitStr " FROM subdpagoimpu spi"
  loc_BF097A: ConcatStr
  loc_BF097B: FStStrNoPop var_B8
  loc_BF097E: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = spi.PeriInfo"
  loc_BF0981: ConcatStr
  loc_BF0982: FStStrNoPop var_BC
  loc_BF0985: LitStr " WHERE Year(FechCaja) = @peri"
  loc_BF0988: ConcatStr
  loc_BF0989: FStStrNoPop var_C0
  loc_BF098C: LitStr " AND FechCaja <= @fecha"
  loc_BF098F: ConcatStr
  loc_BF0990: FStStrNoPop var_C4
  loc_BF0993: LitStr " AND CodiRete = 0"
  loc_BF0996: ConcatStr
  loc_BF0997: FStStrNoPop var_C8
  loc_BF099A: LitStr " AND (DebeCuco = CatePaco OR HabeCuco = CatePaco)"
  loc_BF099D: ConcatStr
  loc_BF099E: FStStrNoPop var_CC
  loc_BF09A1: LitStr " GROUP BY ExpeImpu, NumeLiqu;"
  loc_BF09A4: ConcatStr
  loc_BF09A5: FStStrNoPop var_D0
  loc_BF09A8: LitStr " INSERT INTO tmovi"
  loc_BF09AB: ConcatStr
  loc_BF09AC: FStStrNoPop var_D4
  loc_BF09AF: LitStr " SELECT ExpeImpu, NumeLiqu, 0, Sum(DebeCaja)-Sum(HabeCaja)"
  loc_BF09B2: ConcatStr
  loc_BF09B3: FStStrNoPop var_D8
  loc_BF09B6: LitStr " FROM subdpagodebi spd"
  loc_BF09B9: ConcatStr
  loc_BF09BA: FStStrNoPop var_DC
  loc_BF09BD: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = spd.PeriInfo"
  loc_BF09C0: ConcatStr
  loc_BF09C1: FStStrNoPop var_E0
  loc_BF09C4: LitStr " WHERE Year(FechCaja) = @peri"
  loc_BF09C7: ConcatStr
  loc_BF09C8: FStStrNoPop var_E4
  loc_BF09CB: LitStr " AND FechCaja <= @fecha"
  loc_BF09CE: ConcatStr
  loc_BF09CF: FStStrNoPop var_E8
  loc_BF09D2: LitStr " AND CodiRete = 0"
  loc_BF09D5: ConcatStr
  loc_BF09D6: FStStrNoPop var_EC
  loc_BF09D9: LitStr " AND (DebeCuco = CatePaco OR HabeCuco = CatePaco)"
  loc_BF09DC: ConcatStr
  loc_BF09DD: FStStrNoPop var_F0
  loc_BF09E0: LitStr " GROUP BY ExpeImpu, NumeLiqu;"
  loc_BF09E3: ConcatStr
  loc_BF09E4: FStStrNoPop var_F4
  loc_BF09E7: Call EjecutarRsCls(from_stack_1v)
  loc_BF09EC: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_BF0A11: LitStr "SELECT ExpeImpu, NumeLiqu, Sum(ImpoCheq) ImpoCheq, Sum(ImpoCaja) ImpoCaja, Sum(ImpoCheq)-Sum(ImpoCaja) diferencia"
  loc_BF0A14: LitStr " FROM tmovi"
  loc_BF0A17: ConcatStr
  loc_BF0A18: FStStrNoPop var_B4
  loc_BF0A1B: LitStr " GROUP BY ExpeImpu, NumeLiqu"
  loc_BF0A1E: ConcatStr
  loc_BF0A1F: FStStrNoPop var_B8
  loc_BF0A22: LitStr " HAVING diferencia <> 0;"
  loc_BF0A25: ConcatStr
  loc_BF0A26: FStStrNoPop var_BC
  loc_BF0A29: Call EjecutarRsCls(from_stack_1v)
  loc_BF0A2E: FFreeStr var_B4 = "": var_B8 = ""
  loc_BF0A37: FLdRfVar var_120
  loc_BF0A3A: FLdPr Me
  loc_BF0A3D: MemLdPr global_56
  loc_BF0A40:  = Me.RecordCount
  loc_BF0A45: ILdRf var_120
  loc_BF0A48: LitI4 0
  loc_BF0A4D: GtI4
  loc_BF0A4E: BranchF loc_BF0BCD
  loc_BF0A51: FLdPr Me
  loc_BF0A54: MemLdPr global_56
  loc_BF0A57: Me.MoveFirst
  loc_BF0A5C: FLdRfVar var_1F6
  loc_BF0A5F: FLdPr Me
  loc_BF0A62: MemLdPr global_56
  loc_BF0A65:  = Me.EOF
  loc_BF0A6A: FLdI2 var_1F6
  loc_BF0A6D: NotI4
  loc_BF0A6E: BranchF loc_BF0BCD
  loc_BF0A71: FLdRfVar var_154
  loc_BF0A74: FLdRfVar var_124
  loc_BF0A77: LitVarStr var_9C, "ExpeImpu"
  loc_BF0A7C: PopAdLdVar
  loc_BF0A7D: FLdRfVar var_B0
  loc_BF0A80: FLdPr Me
  loc_BF0A83: MemLdPr global_56
  loc_BF0A86:  = Me.Fields
  loc_BF0A8B: FLdPr var_B0
  loc_BF0A8E: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0A93: FLdPr var_124
  loc_BF0A96:  = Me.Value
  loc_BF0A9B: FLdRfVar var_19C
  loc_BF0A9E: FLdRfVar var_12C
  loc_BF0AA1: LitVarStr var_140, "NumeLiqu"
  loc_BF0AA6: PopAdLdVar
  loc_BF0AA7: FLdRfVar var_128
  loc_BF0AAA: FLdPr Me
  loc_BF0AAD: MemLdPr global_56
  loc_BF0AB0:  = Me.Fields
  loc_BF0AB5: FLdPr var_128
  loc_BF0AB8: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0ABD: FLdPr var_12C
  loc_BF0AC0:  = Me.Value
  loc_BF0AC5: FLdRfVar var_144
  loc_BF0AC8: LitVarStr var_164, "ImpoCaja"
  loc_BF0ACD: PopAdLdVar
  loc_BF0ACE: FLdRfVar var_130
  loc_BF0AD1: FLdPr Me
  loc_BF0AD4: MemLdPr global_56
  loc_BF0AD7:  = Me.Fields
  loc_BF0ADC: FLdPr var_130
  loc_BF0ADF: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0AE4: LitI4 1
  loc_BF0AE9: LitI4 1
  loc_BF0AEE: LitVarStr var_188, "currency"
  loc_BF0AF3: FStVarCopyObj var_1DC
  loc_BF0AF6: FLdRfVar var_1DC
  loc_BF0AF9: FLdZeroAd var_144
  loc_BF0AFC: CVarAd
  loc_BF0B00: ImpAdCallI2 Format$(, )
  loc_BF0B05: FStStr var_C0
  loc_BF0B08: FLdRfVar var_18C
  loc_BF0B0B: LitVarStr var_1AC, "ImpoCheq"
  loc_BF0B10: PopAdLdVar
  loc_BF0B11: FLdRfVar var_178
  loc_BF0B14: FLdPr Me
  loc_BF0B17: MemLdPr global_56
  loc_BF0B1A:  = Me.Fields
  loc_BF0B1F: FLdPr var_178
  loc_BF0B22: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0B27: LitI4 1
  loc_BF0B2C: LitI4 1
  loc_BF0B31: LitVarStr var_218, "currency"
  loc_BF0B36: FStVarCopyObj var_228
  loc_BF0B39: FLdRfVar var_228
  loc_BF0B3C: FLdZeroAd var_18C
  loc_BF0B3F: CVarAd
  loc_BF0B43: ImpAdCallI2 Format$(, )
  loc_BF0B48: FStStr var_C4
  loc_BF0B4B: LitI2_Byte 0
  loc_BF0B4D: CUI1I2
  loc_BF0B4F: FLdZeroAd var_C4
  loc_BF0B52: FStStrNoPop var_BC
  loc_BF0B55: CR8Str
  loc_BF0B57: PopFPR8
  loc_BF0B58: LitStr vbNullString
  loc_BF0B5B: LitStr vbNullString
  loc_BF0B5E: FLdZeroAd var_C0
  loc_BF0B61: FStStrNoPop var_B8
  loc_BF0B64: CR8Str
  loc_BF0B66: PopFPR8
  loc_BF0B67: FLdRfVar var_154
  loc_BF0B6A: LitVarStr var_AC, " - "
  loc_BF0B6F: ConcatVar var_174
  loc_BF0B73: FLdRfVar var_19C
  loc_BF0B76: ConcatVar var_1BC
  loc_BF0B7A: CStrVarVal var_B4
  loc_BF0B7E: LitStr vbNullString
  loc_BF0B81: ILdRf var_8C
  loc_BF0B84: ImpAdLdI2 MemVar_C3D064
  loc_BF0B87: LitI2_Byte 5
  loc_BF0B89: CUI1I2
  loc_BF0B8B: Call Proc_5_49_A44264()
  loc_BF0B90: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_BF0B9D: FFreeAd var_B0 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_BF0BAC: FFreeVar var_154 = "": var_174 = "": var_19C = "": var_1CC = "": var_1DC = "": var_208 = "": var_228 = ""
  loc_BF0BBF: FLdPr Me
  loc_BF0BC2: MemLdPr global_56
  loc_BF0BC5: Me.MoveNext
  loc_BF0BCA: Branch loc_BF0A5C
  loc_BF0BCD: LitI2_Byte &H28
  loc_BF0BCF: CR8I2
  loc_BF0BD0: CVarR4
  loc_BF0BD4: PopAdLdVar
  loc_BF0BD5: ImpAdLdRf MemVar_C3D110
  loc_BF0BD8: NewIfNullPr frmGenerarBalanceMensual
  loc_BF0BDB: VCallAd Control_ID_
  loc_BF0BDE: FStAdFunc var_B0
  loc_BF0BE1: FLdPr var_B0
  loc_BF0BE4: LateIdSt
  loc_BF0BE9: FFree1Ad var_B0
  loc_BF0BEC: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_BF0BEF: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_BF0BF2: ConcatStr
  loc_BF0BF3: FStStrNoPop var_B4
  loc_BF0BF6: LitStr "   eriInfo` year(4) NOT NULL default '0000',"
  loc_BF0BF9: ConcatStr
  loc_BF0BFA: FStStrNoPop var_B8
  loc_BF0BFD: LitStr "   aldMoas` decimal(14,2) NOT NULL default '0.00',"
  loc_BF0C00: ConcatStr
  loc_BF0C01: FStStrNoPop var_BC
  loc_BF0C04: LitStr "   aldCheq` decimal(14,2) NOT NULL default '0.00'"
  loc_BF0C07: ConcatStr
  loc_BF0C08: FStStrNoPop var_C0
  loc_BF0C0B: LitStr " ) ;"
  loc_BF0C0E: ConcatStr
  loc_BF0C0F: FStStrNoPop var_C4
  loc_BF0C12: LitStr " INSERT INTO tmovi"
  loc_BF0C15: ConcatStr
  loc_BF0C16: FStStrNoPop var_C8
  loc_BF0C19: LitStr " SELECT paraconta.PeriInfo, IFNULL(Sum(DebeMoas)-Sum(HabeMoas),0), 0"
  loc_BF0C1C: ConcatStr
  loc_BF0C1D: FStStrNoPop var_CC
  loc_BF0C20: LitStr " FROM paraconta"
  loc_BF0C23: ConcatStr
  loc_BF0C24: FStStrNoPop var_D0
  loc_BF0C27: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = paraconta.PeriInfo AND moviasiento.CodiCuco = paraconta.ChsrPaco"
  loc_BF0C2A: ConcatStr
  loc_BF0C2B: FStStrNoPop var_D4
  loc_BF0C2E: LitStr " INNER JOIN asiento ON asiento.PeriInfo = moviasiento.PeriInfo AND asiento.CodiAsie = moviasiento.CodiAsie"
  loc_BF0C31: ConcatStr
  loc_BF0C32: FStStrNoPop var_D8
  loc_BF0C35: LitStr " WHERE paraconta.PeriInfo = "
  loc_BF0C38: ConcatStr
  loc_BF0C39: FStStrNoPop var_DC
  loc_BF0C3C: FLdI2 PeriInfo
  loc_BF0C3F: CStrUI1
  loc_BF0C41: FStStrNoPop var_E0
  loc_BF0C44: ConcatStr
  loc_BF0C45: FStStrNoPop var_E4
  loc_BF0C48: LitStr " AND FechAsie <= "
  loc_BF0C4B: ConcatStr
  loc_BF0C4C: FStStrNoPop var_E8
  loc_BF0C4F: ILdRf var_8C
  loc_BF0C52: ConcatStr
  loc_BF0C53: FStStrNoPop var_EC
  loc_BF0C56: LitStr " GROUP BY TRUE;"
  loc_BF0C59: ConcatStr
  loc_BF0C5A: FStStrNoPop var_F0
  loc_BF0C5D: LitStr " INSERT INTO tmovi"
  loc_BF0C60: ConcatStr
  loc_BF0C61: FStStrNoPop var_F4
  loc_BF0C64: LitStr " SELECT PeriInfo, 0, IFNULL(Sum(ImpoCheq),0)"
  loc_BF0C67: ConcatStr
  loc_BF0C68: FStStrNoPop var_F8
  loc_BF0C6B: LitStr " FROM cheque"
  loc_BF0C6E: ConcatStr
  loc_BF0C6F: FStStrNoPop var_FC
  loc_BF0C72: LitStr " WHERE PeriInfo = "
  loc_BF0C75: ConcatStr
  loc_BF0C76: FStStrNoPop var_100
  loc_BF0C79: FLdI2 PeriInfo
  loc_BF0C7C: CStrUI1
  loc_BF0C7E: FStStrNoPop var_104
  loc_BF0C81: ConcatStr
  loc_BF0C82: FStStrNoPop var_108
  loc_BF0C85: LitStr " AND FechCheq <= "
  loc_BF0C88: ConcatStr
  loc_BF0C89: FStStrNoPop var_10C
  loc_BF0C8C: ILdRf var_8C
  loc_BF0C8F: ConcatStr
  loc_BF0C90: FStStrNoPop var_110
  loc_BF0C93: LitStr " AND (FereCheq IS NULL OR FereCheq > "
  loc_BF0C96: ConcatStr
  loc_BF0C97: FStStrNoPop var_114
  loc_BF0C9A: ILdRf var_8C
  loc_BF0C9D: ConcatStr
  loc_BF0C9E: FStStrNoPop var_118
  loc_BF0CA1: LitStr ")"
  loc_BF0CA4: ConcatStr
  loc_BF0CA5: FStStrNoPop var_11C
  loc_BF0CA8: LitStr " AND (FeanCheq IS NULL OR FeanCheq > "
  loc_BF0CAB: ConcatStr
  loc_BF0CAC: FStStrNoPop var_1E0
  loc_BF0CAF: ILdRf var_8C
  loc_BF0CB2: ConcatStr
  loc_BF0CB3: FStStrNoPop var_1E4
  loc_BF0CB6: LitStr ")"
  loc_BF0CB9: ConcatStr
  loc_BF0CBA: FStStrNoPop var_1E8
  loc_BF0CBD: LitStr " AND AutoCheq IN (1,2,4)"
  loc_BF0CC0: ConcatStr
  loc_BF0CC1: FStStrNoPop var_1EC
  loc_BF0CC4: LitStr " AND NumeMoba > 0"
  loc_BF0CC7: ConcatStr
  loc_BF0CC8: FStStrNoPop var_1F0
  loc_BF0CCB: LitStr " GROUP BY TRUE;"
  loc_BF0CCE: ConcatStr
  loc_BF0CCF: FStStrNoPop var_1F4
  loc_BF0CD2: Call EjecutarRsCls(from_stack_1v)
  loc_BF0CD7: FFreeStr var_1EC = "": var_1F0 = "": var_1F4 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_1E0 = "": var_1E4 = ""
  loc_BF0D1C: LitStr "SELECT ChsrPaco, DetaCuco, Sum(SaldMoas) SaldMoas, Sum(SaldCheq) SaldCheq, Sum(SaldMoas)-Sum(SaldCheq) diferencia"
  loc_BF0D1F: LitStr " FROM tmovi"
  loc_BF0D22: ConcatStr
  loc_BF0D23: FStStrNoPop var_B4
  loc_BF0D26: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = tmovi.PeriInfo"
  loc_BF0D29: ConcatStr
  loc_BF0D2A: FStStrNoPop var_B8
  loc_BF0D2D: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = pc.PeriInfo AND cc.CodiCuco = pc.ChsrPaco"
  loc_BF0D30: ConcatStr
  loc_BF0D31: FStStrNoPop var_BC
  loc_BF0D34: LitStr " GROUP BY TRUE;"
  loc_BF0D37: ConcatStr
  loc_BF0D38: FStStrNoPop var_C0
  loc_BF0D3B: Call EjecutarRsCls(from_stack_1v)
  loc_BF0D40: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_BF0D4B: FLdRfVar var_120
  loc_BF0D4E: FLdPr Me
  loc_BF0D51: MemLdPr global_56
  loc_BF0D54:  = frmGenerarBalanceMensual.Recordset15.RecordCount
  loc_BF0D59: ILdRf var_120
  loc_BF0D5C: LitI4 0
  loc_BF0D61: GtI4
  loc_BF0D62: BranchF loc_BF11AC
  loc_BF0D65: FLdRfVar var_1CC
  loc_BF0D68: FLdRfVar var_124
  loc_BF0D6B: LitVarStr var_9C, "ChsrPaco"
  loc_BF0D70: PopAdLdVar
  loc_BF0D71: FLdRfVar var_B0
  loc_BF0D74: FLdPr Me
  loc_BF0D77: MemLdPr global_56
  loc_BF0D7A:  = Me.Fields
  loc_BF0D7F: FLdPr var_B0
  loc_BF0D82: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0D87: FLdPr var_124
  loc_BF0D8A:  = Me.Value
  loc_BF0D8F: FLdRfVar var_1DC
  loc_BF0D92: FLdRfVar var_12C
  loc_BF0D95: LitVarStr var_AC, "DetaCuco"
  loc_BF0D9A: PopAdLdVar
  loc_BF0D9B: FLdRfVar var_128
  loc_BF0D9E: FLdPr Me
  loc_BF0DA1: MemLdPr global_56
  loc_BF0DA4:  = Me.Fields
  loc_BF0DA9: FLdPr var_128
  loc_BF0DAC: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0DB1: FLdPr var_12C
  loc_BF0DB4:  = Me.Value
  loc_BF0DB9: FLdRfVar var_144
  loc_BF0DBC: LitVarStr var_140, "SaldMoas"
  loc_BF0DC1: PopAdLdVar
  loc_BF0DC2: FLdRfVar var_130
  loc_BF0DC5: FLdPr Me
  loc_BF0DC8: MemLdPr global_56
  loc_BF0DCB:  = Me.Fields
  loc_BF0DD0: FLdPr var_130
  loc_BF0DD3: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0DD8: LitI4 1
  loc_BF0DDD: LitI4 1
  loc_BF0DE2: LitVarStr var_164, "currency"
  loc_BF0DE7: FStVarCopyObj var_174
  loc_BF0DEA: FLdRfVar var_174
  loc_BF0DED: FLdZeroAd var_144
  loc_BF0DF0: CVarAd
  loc_BF0DF4: ImpAdCallI2 Format$(, )
  loc_BF0DF9: FStStr var_C4
  loc_BF0DFC: FLdRfVar var_18C
  loc_BF0DFF: LitVarStr var_188, "SaldCheq"
  loc_BF0E04: PopAdLdVar
  loc_BF0E05: FLdRfVar var_178
  loc_BF0E08: FLdPr Me
  loc_BF0E0B: MemLdPr global_56
  loc_BF0E0E:  = Me.Fields
  loc_BF0E13: FLdPr var_178
  loc_BF0E16: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0E1B: LitI4 1
  loc_BF0E20: LitI4 1
  loc_BF0E25: LitVarStr var_1AC, "currency"
  loc_BF0E2A: FStVarCopyObj var_1BC
  loc_BF0E2D: FLdRfVar var_1BC
  loc_BF0E30: FLdZeroAd var_18C
  loc_BF0E33: CVarAd
  loc_BF0E37: ImpAdCallI2 Format$(, )
  loc_BF0E3C: FStStr var_C8
  loc_BF0E3F: LitI2_Byte 1
  loc_BF0E41: CUI1I2
  loc_BF0E43: FLdZeroAd var_C8
  loc_BF0E46: FStStrNoPop var_C0
  loc_BF0E49: CR8Str
  loc_BF0E4B: PopFPR8
  loc_BF0E4C: LitStr vbNullString
  loc_BF0E4F: LitStr vbNullString
  loc_BF0E52: FLdZeroAd var_C4
  loc_BF0E55: FStStrNoPop var_BC
  loc_BF0E58: CR8Str
  loc_BF0E5A: PopFPR8
  loc_BF0E5B: FLdRfVar var_1DC
  loc_BF0E5E: CStrVarTmp
  loc_BF0E5F: FStStrNoPop var_B8
  loc_BF0E62: FLdRfVar var_1CC
  loc_BF0E65: CStrVarTmp
  loc_BF0E66: FStStrNoPop var_B4
  loc_BF0E69: ILdRf var_8C
  loc_BF0E6C: ImpAdLdI2 MemVar_C3D064
  loc_BF0E6F: LitI2_Byte 8
  loc_BF0E71: CUI1I2
  loc_BF0E73: Call Proc_5_49_A44264()
  loc_BF0E78: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_BF0E87: FFreeAd var_B0 = "": var_128 = "": var_130 = "": var_178 = "": var_124 = ""
  loc_BF0E96: FFreeVar var_154 = "": var_174 = "": var_19C = "": var_1BC = "": var_1CC = ""
  loc_BF0EA5: FLdRfVar var_154
  loc_BF0EA8: FLdRfVar var_124
  loc_BF0EAB: LitVarStr var_9C, "diferencia"
  loc_BF0EB0: PopAdLdVar
  loc_BF0EB1: FLdRfVar var_B0
  loc_BF0EB4: FLdPr Me
  loc_BF0EB7: MemLdPr global_56
  loc_BF0EBA:  = Me.Fields
  loc_BF0EBF: FLdPr var_B0
  loc_BF0EC2: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0EC7: FLdPr var_124
  loc_BF0ECA:  = Me.Value
  loc_BF0ECF: FLdRfVar var_154
  loc_BF0ED2: LitVarI2 var_AC, 0
  loc_BF0ED7: HardType
  loc_BF0ED8: NeVarBool
  loc_BF0EDA: FFreeAd var_B0 = ""
  loc_BF0EE1: FFree1Var var_154 = ""
  loc_BF0EE4: BranchF loc_BF11AC
  loc_BF0EE7: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_BF0EEA: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_BF0EED: ConcatStr
  loc_BF0EEE: FStStrNoPop var_B4
  loc_BF0EF1: LitStr "   xpeImpu` varchar(15) NOT NULL default '',"
  loc_BF0EF4: ConcatStr
  loc_BF0EF5: FStStrNoPop var_B8
  loc_BF0EF8: LitStr "   umeLiqu` SMALLINT(4) unsigned NOT NULL default '0',"
  loc_BF0EFB: ConcatStr
  loc_BF0EFC: FStStrNoPop var_BC
  loc_BF0EFF: LitStr "   mpoCheq` decimal(14,2) NOT NULL default '0.00',"
  loc_BF0F02: ConcatStr
  loc_BF0F03: FStStrNoPop var_C0
  loc_BF0F06: LitStr "   mpoCaja` decimal(14,2) NOT NULL default '0.00'"
  loc_BF0F09: ConcatStr
  loc_BF0F0A: FStStrNoPop var_C4
  loc_BF0F0D: LitStr " ) ;"
  loc_BF0F10: ConcatStr
  loc_BF0F11: FStStrNoPop var_C8
  loc_BF0F14: LitStr " INSERT INTO tmovi"
  loc_BF0F17: ConcatStr
  loc_BF0F18: FStStrNoPop var_CC
  loc_BF0F1B: LitStr " SELECT ExpeImpu, NumeLiqu, Sum(ImpoCheq), 0"
  loc_BF0F1E: ConcatStr
  loc_BF0F1F: FStStrNoPop var_D0
  loc_BF0F22: LitStr " FROM cheque"
  loc_BF0F25: ConcatStr
  loc_BF0F26: FStStrNoPop var_D4
  loc_BF0F29: LitStr " WHERE PeriInfo = @peri"
  loc_BF0F2C: ConcatStr
  loc_BF0F2D: FStStrNoPop var_D8
  loc_BF0F30: LitStr " AND FechCheq <= @fecha"
  loc_BF0F33: ConcatStr
  loc_BF0F34: FStStrNoPop var_DC
  loc_BF0F37: LitStr " AND (FereCheq IS NULL OR FereCheq > @fecha)"
  loc_BF0F3A: ConcatStr
  loc_BF0F3B: FStStrNoPop var_E0
  loc_BF0F3E: LitStr " AND (FeanCheq IS NULL OR FeanCheq > @fecha)"
  loc_BF0F41: ConcatStr
  loc_BF0F42: FStStrNoPop var_E4
  loc_BF0F45: LitStr " AND AutoCheq IN (1,2,4)"
  loc_BF0F48: ConcatStr
  loc_BF0F49: FStStrNoPop var_E8
  loc_BF0F4C: LitStr " AND NumeMoba > 0"
  loc_BF0F4F: ConcatStr
  loc_BF0F50: FStStrNoPop var_EC
  loc_BF0F53: LitStr " GROUP BY ExpeImpu, NumeLiqu;"
  loc_BF0F56: ConcatStr
  loc_BF0F57: FStStrNoPop var_F0
  loc_BF0F5A: LitStr " INSERT INTO tmovi"
  loc_BF0F5D: ConcatStr
  loc_BF0F5E: FStStrNoPop var_F4
  loc_BF0F61: LitStr " SELECT ExpeImpu, NumeLiqu, 0, Sum(HabeCaec-DebeCaec)"
  loc_BF0F64: ConcatStr
  loc_BF0F65: FStStrNoPop var_F8
  loc_BF0F68: LitStr " FROM cajaemicheq"
  loc_BF0F6B: ConcatStr
  loc_BF0F6C: FStStrNoPop var_FC
  loc_BF0F6F: LitStr " WHERE Year(FechCaja) = @peri"
  loc_BF0F72: ConcatStr
  loc_BF0F73: FStStrNoPop var_100
  loc_BF0F76: LitStr " AND FechCaja <= @fecha"
  loc_BF0F79: ConcatStr
  loc_BF0F7A: FStStrNoPop var_104
  loc_BF0F7D: LitStr " GROUP BY ExpeImpu, NumeLiqu;"
  loc_BF0F80: ConcatStr
  loc_BF0F81: FStStrNoPop var_108
  loc_BF0F84: Call EjecutarRsCls(from_stack_1v)
  loc_BF0F89: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_BF0FB8: LitStr "INSERT INTO tmovi "
  loc_BF0FBB: LitStr " SELECT ExpeImpu, NumeLiqu, 0, Sum(DebeCarc-HabeCarc)"
  loc_BF0FBE: ConcatStr
  loc_BF0FBF: FStStrNoPop var_B4
  loc_BF0FC2: LitStr " FROM cajaremicheq crc"
  loc_BF0FC5: ConcatStr
  loc_BF0FC6: FStStrNoPop var_B8
  loc_BF0FC9: LitStr " WHERE Year(FechCaja) = @peri"
  loc_BF0FCC: ConcatStr
  loc_BF0FCD: FStStrNoPop var_BC
  loc_BF0FD0: LitStr " AND FechCaja <= @fecha"
  loc_BF0FD3: ConcatStr
  loc_BF0FD4: FStStrNoPop var_C0
  loc_BF0FD7: LitStr " GROUP BY ExpeImpu, NumeLiqu;"
  loc_BF0FDA: ConcatStr
  loc_BF0FDB: FStStrNoPop var_C4
  loc_BF0FDE: Call EjecutarRsCls(from_stack_1v)
  loc_BF0FE3: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_BF0FF0: LitStr "SELECT ExpeImpu, NumeLiqu, Sum(ImpoCheq) ImpoCheq, Sum(ImpoCaja) ImpoCaja, Sum(ImpoCheq)-Sum(ImpoCaja) diferencia"
  loc_BF0FF3: LitStr " FROM tmovi"
  loc_BF0FF6: ConcatStr
  loc_BF0FF7: FStStrNoPop var_B4
  loc_BF0FFA: LitStr " GROUP BY ExpeImpu, NumeLiqu"
  loc_BF0FFD: ConcatStr
  loc_BF0FFE: FStStrNoPop var_B8
  loc_BF1001: LitStr " HAVING diferencia <> 0;"
  loc_BF1004: ConcatStr
  loc_BF1005: FStStrNoPop var_BC
  loc_BF1008: Call EjecutarRsCls(from_stack_1v)
  loc_BF100D: FFreeStr var_B4 = "": var_B8 = ""
  loc_BF1016: FLdRfVar var_120
  loc_BF1019: FLdPr Me
  loc_BF101C: MemLdPr global_56
  loc_BF101F:  = Me.RecordCount
  loc_BF1024: ILdRf var_120
  loc_BF1027: LitI4 0
  loc_BF102C: GtI4
  loc_BF102D: BranchF loc_BF11AC
  loc_BF1030: FLdPr Me
  loc_BF1033: MemLdPr global_56
  loc_BF1036: Me.MoveFirst
  loc_BF103B: FLdRfVar var_1F6
  loc_BF103E: FLdPr Me
  loc_BF1041: MemLdPr global_56
  loc_BF1044:  = Me.EOF
  loc_BF1049: FLdI2 var_1F6
  loc_BF104C: NotI4
  loc_BF104D: BranchF loc_BF11AC
  loc_BF1050: FLdRfVar var_154
  loc_BF1053: FLdRfVar var_124
  loc_BF1056: LitVarStr var_9C, "ExpeImpu"
  loc_BF105B: PopAdLdVar
  loc_BF105C: FLdRfVar var_B0
  loc_BF105F: FLdPr Me
  loc_BF1062: MemLdPr global_56
  loc_BF1065:  = Me.Fields
  loc_BF106A: FLdPr var_B0
  loc_BF106D: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1072: FLdPr var_124
  loc_BF1075:  = Me.Value
  loc_BF107A: FLdRfVar var_19C
  loc_BF107D: FLdRfVar var_12C
  loc_BF1080: LitVarStr var_140, "NumeLiqu"
  loc_BF1085: PopAdLdVar
  loc_BF1086: FLdRfVar var_128
  loc_BF1089: FLdPr Me
  loc_BF108C: MemLdPr global_56
  loc_BF108F:  = Me.Fields
  loc_BF1094: FLdPr var_128
  loc_BF1097: from_stack_2 = Me.Item(from_stack_1)
  loc_BF109C: FLdPr var_12C
  loc_BF109F:  = Me.Value
  loc_BF10A4: FLdRfVar var_144
  loc_BF10A7: LitVarStr var_164, "ImpoCaja"
  loc_BF10AC: PopAdLdVar
  loc_BF10AD: FLdRfVar var_130
  loc_BF10B0: FLdPr Me
  loc_BF10B3: MemLdPr global_56
  loc_BF10B6:  = Me.Fields
  loc_BF10BB: FLdPr var_130
  loc_BF10BE: from_stack_2 = Me.Item(from_stack_1)
  loc_BF10C3: LitI4 1
  loc_BF10C8: LitI4 1
  loc_BF10CD: LitVarStr var_188, "currency"
  loc_BF10D2: FStVarCopyObj var_1DC
  loc_BF10D5: FLdRfVar var_1DC
  loc_BF10D8: FLdZeroAd var_144
  loc_BF10DB: CVarAd
  loc_BF10DF: ImpAdCallI2 Format$(, )
  loc_BF10E4: FStStr var_C0
  loc_BF10E7: FLdRfVar var_18C
  loc_BF10EA: LitVarStr var_1AC, "ImpoCheq"
  loc_BF10EF: PopAdLdVar
  loc_BF10F0: FLdRfVar var_178
  loc_BF10F3: FLdPr Me
  loc_BF10F6: MemLdPr global_56
  loc_BF10F9:  = Me.Fields
  loc_BF10FE: FLdPr var_178
  loc_BF1101: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1106: LitI4 1
  loc_BF110B: LitI4 1
  loc_BF1110: LitVarStr var_218, "currency"
  loc_BF1115: FStVarCopyObj var_228
  loc_BF1118: FLdRfVar var_228
  loc_BF111B: FLdZeroAd var_18C
  loc_BF111E: CVarAd
  loc_BF1122: ImpAdCallI2 Format$(, )
  loc_BF1127: FStStr var_C4
  loc_BF112A: LitI2_Byte 0
  loc_BF112C: CUI1I2
  loc_BF112E: FLdZeroAd var_C4
  loc_BF1131: FStStrNoPop var_BC
  loc_BF1134: CR8Str
  loc_BF1136: PopFPR8
  loc_BF1137: LitStr vbNullString
  loc_BF113A: LitStr vbNullString
  loc_BF113D: FLdZeroAd var_C0
  loc_BF1140: FStStrNoPop var_B8
  loc_BF1143: CR8Str
  loc_BF1145: PopFPR8
  loc_BF1146: FLdRfVar var_154
  loc_BF1149: LitVarStr var_AC, " - "
  loc_BF114E: ConcatVar var_174
  loc_BF1152: FLdRfVar var_19C
  loc_BF1155: ConcatVar var_1BC
  loc_BF1159: CStrVarVal var_B4
  loc_BF115D: LitStr vbNullString
  loc_BF1160: ILdRf var_8C
  loc_BF1163: ImpAdLdI2 MemVar_C3D064
  loc_BF1166: LitI2_Byte 8
  loc_BF1168: CUI1I2
  loc_BF116A: Call Proc_5_49_A44264()
  loc_BF116F: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_BF117C: FFreeAd var_B0 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_BF118B: FFreeVar var_154 = "": var_174 = "": var_19C = "": var_1CC = "": var_1DC = "": var_208 = "": var_228 = ""
  loc_BF119E: FLdPr Me
  loc_BF11A1: MemLdPr global_56
  loc_BF11A4: Me.MoveNext
  loc_BF11A9: Branch loc_BF103B
  loc_BF11AC: LitI2_Byte &H32
  loc_BF11AE: CR8I2
  loc_BF11AF: CVarR4
  loc_BF11B3: PopAdLdVar
  loc_BF11B4: ImpAdLdRf MemVar_C3D110
  loc_BF11B7: NewIfNullPr frmGenerarBalanceMensual
  loc_BF11BA: VCallAd Control_ID_
  loc_BF11BD: FStAdFunc var_B0
  loc_BF11C0: FLdPr var_B0
  loc_BF11C3: LateIdSt
  loc_BF11C8: FFree1Ad var_B0
  loc_BF11CB: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_BF11CE: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_BF11D1: ConcatStr
  loc_BF11D2: FStStrNoPop var_B4
  loc_BF11D5: LitStr "   eriInfo` year(4) NOT NULL default '0000',"
  loc_BF11D8: ConcatStr
  loc_BF11D9: FStStrNoPop var_B8
  loc_BF11DC: LitStr "   arePaco` varchar(12) NOT NULL DEFAULT '',"
  loc_BF11DF: ConcatStr
  loc_BF11E0: FStStrNoPop var_BC
  loc_BF11E3: LitStr "   areMoas` decimal(14,2) NOT NULL default '0.00',"
  loc_BF11E6: ConcatStr
  loc_BF11E7: FStStrNoPop var_C0
  loc_BF11EA: LitStr "   aerPaco` varchar(12) NOT NULL DEFAULT '',"
  loc_BF11ED: ConcatStr
  loc_BF11EE: FStStrNoPop var_C4
  loc_BF11F1: LitStr "   aerMoas` decimal(14,2) NOT NULL default '0.00'"
  loc_BF11F4: ConcatStr
  loc_BF11F5: FStStrNoPop var_C8
  loc_BF11F8: LitStr " ) ;"
  loc_BF11FB: ConcatStr
  loc_BF11FC: FStStrNoPop var_CC
  loc_BF11FF: LitStr " INSERT INTO tmovi"
  loc_BF1202: ConcatStr
  loc_BF1203: FStStrNoPop var_D0
  loc_BF1206: LitStr " SELECT paraconta.PeriInfo, CarePaco, IFNULL(Sum(HabeMoas)-Sum(DebeMoas),0), CaerPaco, 0"
  loc_BF1209: ConcatStr
  loc_BF120A: FStStrNoPop var_D4
  loc_BF120D: LitStr " FROM paraconta"
  loc_BF1210: ConcatStr
  loc_BF1211: FStStrNoPop var_D8
  loc_BF1214: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = paraconta.PeriInfo AND moviasiento.CodiCuco = paraconta.CarePaco"
  loc_BF1217: ConcatStr
  loc_BF1218: FStStrNoPop var_DC
  loc_BF121B: LitStr " INNER JOIN asiento ON asiento.PeriInfo = moviasiento.PeriInfo AND asiento.CodiAsie = moviasiento.CodiAsie"
  loc_BF121E: ConcatStr
  loc_BF121F: FStStrNoPop var_E0
  loc_BF1222: LitStr " WHERE paraconta.PeriInfo = "
  loc_BF1225: ConcatStr
  loc_BF1226: FStStrNoPop var_E4
  loc_BF1229: FLdI2 PeriInfo
  loc_BF122C: CStrUI1
  loc_BF122E: FStStrNoPop var_E8
  loc_BF1231: ConcatStr
  loc_BF1232: FStStrNoPop var_EC
  loc_BF1235: LitStr " AND FechAsie <= "
  loc_BF1238: ConcatStr
  loc_BF1239: FStStrNoPop var_F0
  loc_BF123C: ILdRf var_8C
  loc_BF123F: ConcatStr
  loc_BF1240: FStStrNoPop var_F4
  loc_BF1243: LitStr " GROUP BY PeriInfo;"
  loc_BF1246: ConcatStr
  loc_BF1247: FStStrNoPop var_F8
  loc_BF124A: Call EjecutarRsCls(from_stack_1v)
  loc_BF124F: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_BF1276: LitStr " INSERT INTO tmovi"
  loc_BF1279: LitStr " SELECT paraconta.PeriInfo, CarePaco, 0, CaerPaco, IFNULL(Sum(DebeMoas)-Sum(HabeMoas),0)"
  loc_BF127C: ConcatStr
  loc_BF127D: FStStrNoPop var_B4
  loc_BF1280: LitStr " FROM paraconta"
  loc_BF1283: ConcatStr
  loc_BF1284: FStStrNoPop var_B8
  loc_BF1287: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = paraconta.PeriInfo AND moviasiento.CodiCuco = paraconta.CaerPaco"
  loc_BF128A: ConcatStr
  loc_BF128B: FStStrNoPop var_BC
  loc_BF128E: LitStr " INNER JOIN asiento ON asiento.PeriInfo = moviasiento.PeriInfo AND asiento.CodiAsie = moviasiento.CodiAsie"
  loc_BF1291: ConcatStr
  loc_BF1292: FStStrNoPop var_C0
  loc_BF1295: LitStr " WHERE paraconta.PeriInfo = "
  loc_BF1298: ConcatStr
  loc_BF1299: FStStrNoPop var_C4
  loc_BF129C: FLdI2 PeriInfo
  loc_BF129F: CStrUI1
  loc_BF12A1: FStStrNoPop var_C8
  loc_BF12A4: ConcatStr
  loc_BF12A5: FStStrNoPop var_CC
  loc_BF12A8: LitStr " AND FechAsie <= "
  loc_BF12AB: ConcatStr
  loc_BF12AC: FStStrNoPop var_D0
  loc_BF12AF: ILdRf var_8C
  loc_BF12B2: ConcatStr
  loc_BF12B3: FStStrNoPop var_D4
  loc_BF12B6: LitStr " GROUP BY PeriInfo;"
  loc_BF12B9: ConcatStr
  loc_BF12BA: FStStrNoPop var_D8
  loc_BF12BD: Call EjecutarRsCls(from_stack_1v)
  loc_BF12C2: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BF12D9: LitStr "SELECT tmovi.PeriInfo, CarePaco, cc1.DetaCuco DetaCare, Sum(CareMoas) CareMoas, CaerPaco, cc2.DetaCuco DetaCaer, Sum(CaerMoas) CaerMoas, Sum(CareMoas)-Sum(CaerMoas) diferencia"
  loc_BF12DC: LitStr " FROM tmovi"
  loc_BF12DF: ConcatStr
  loc_BF12E0: FStStrNoPop var_B4
  loc_BF12E3: LitStr " INNER JOIN infogov.cuentacontable cc1 ON cc1.PeriInfo = tmovi.PeriInfo AND cc1.CodiCuco = tmovi.CarePaco"
  loc_BF12E6: ConcatStr
  loc_BF12E7: FStStrNoPop var_B8
  loc_BF12EA: LitStr " INNER JOIN infogov.cuentacontable cc2 ON cc2.PeriInfo = tmovi.PeriInfo AND cc2.CodiCuco = tmovi.CaerPaco"
  loc_BF12ED: ConcatStr
  loc_BF12EE: FStStrNoPop var_BC
  loc_BF12F1: LitStr " GROUP BY PeriInfo"
  loc_BF12F4: ConcatStr
  loc_BF12F5: FStStrNoPop var_C0
  loc_BF12F8: Call EjecutarRsCls(from_stack_1v)
  loc_BF12FD: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_BF1308: FLdRfVar var_120
  loc_BF130B: FLdPr Me
  loc_BF130E: MemLdPr global_56
  loc_BF1311:  = frmGenerarBalanceMensual.Recordset15.RecordCount
  loc_BF1316: ILdRf var_120
  loc_BF1319: LitI4 0
  loc_BF131E: GtI4
  loc_BF131F: BranchF loc_BF14CE
  loc_BF1322: FLdRfVar var_1CC
  loc_BF1325: FLdRfVar var_124
  loc_BF1328: LitVarStr var_9C, "CarePaco"
  loc_BF132D: PopAdLdVar
  loc_BF132E: FLdRfVar var_B0
  loc_BF1331: FLdPr Me
  loc_BF1334: MemLdPr global_56
  loc_BF1337:  = Me.Fields
  loc_BF133C: FLdPr var_B0
  loc_BF133F: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1344: FLdPr var_124
  loc_BF1347:  = Me.Value
  loc_BF134C: FLdRfVar var_1DC
  loc_BF134F: FLdRfVar var_12C
  loc_BF1352: LitVarStr var_AC, "DetaCare"
  loc_BF1357: PopAdLdVar
  loc_BF1358: FLdRfVar var_128
  loc_BF135B: FLdPr Me
  loc_BF135E: MemLdPr global_56
  loc_BF1361:  = Me.Fields
  loc_BF1366: FLdPr var_128
  loc_BF1369: from_stack_2 = Me.Item(from_stack_1)
  loc_BF136E: FLdPr var_12C
  loc_BF1371:  = Me.Value
  loc_BF1376: FLdRfVar var_144
  loc_BF1379: LitVarStr var_140, "CareMoas"
  loc_BF137E: PopAdLdVar
  loc_BF137F: FLdRfVar var_130
  loc_BF1382: FLdPr Me
  loc_BF1385: MemLdPr global_56
  loc_BF1388:  = Me.Fields
  loc_BF138D: FLdPr var_130
  loc_BF1390: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1395: LitI4 1
  loc_BF139A: LitI4 1
  loc_BF139F: LitVarStr var_164, "currency"
  loc_BF13A4: FStVarCopyObj var_174
  loc_BF13A7: FLdRfVar var_174
  loc_BF13AA: FLdZeroAd var_144
  loc_BF13AD: CVarAd
  loc_BF13B1: ImpAdCallI2 Format$(, )
  loc_BF13B6: FStStr var_CC
  loc_BF13B9: FLdRfVar var_208
  loc_BF13BC: FLdRfVar var_18C
  loc_BF13BF: LitVarStr var_188, "CaerPaco"
  loc_BF13C4: PopAdLdVar
  loc_BF13C5: FLdRfVar var_178
  loc_BF13C8: FLdPr Me
  loc_BF13CB: MemLdPr global_56
  loc_BF13CE:  = Me.Fields
  loc_BF13D3: FLdPr var_178
  loc_BF13D6: from_stack_2 = Me.Item(from_stack_1)
  loc_BF13DB: FLdPr var_18C
  loc_BF13DE:  = Me.Value
  loc_BF13E3: FLdRfVar var_228
  loc_BF13E6: FLdRfVar var_230
  loc_BF13E9: LitVarStr var_1AC, "DetaCaer"
  loc_BF13EE: PopAdLdVar
  loc_BF13EF: FLdRfVar var_22C
  loc_BF13F2: FLdPr Me
  loc_BF13F5: MemLdPr global_56
  loc_BF13F8:  = Me.Fields
  loc_BF13FD: FLdPr var_22C
  loc_BF1400: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1405: FLdPr var_230
  loc_BF1408:  = Me.Value
  loc_BF140D: FLdRfVar var_238
  loc_BF1410: LitVarStr var_218, "CaerMoas"
  loc_BF1415: PopAdLdVar
  loc_BF1416: FLdRfVar var_234
  loc_BF1419: FLdPr Me
  loc_BF141C: MemLdPr global_56
  loc_BF141F:  = Me.Fields
  loc_BF1424: FLdPr var_234
  loc_BF1427: from_stack_2 = Me.Item(from_stack_1)
  loc_BF142C: LitI4 1
  loc_BF1431: LitI4 1
  loc_BF1436: LitVarStr var_248, "currency"
  loc_BF143B: FStVarCopyObj var_1BC
  loc_BF143E: FLdRfVar var_1BC
  loc_BF1441: FLdZeroAd var_238
  loc_BF1444: CVarAd
  loc_BF1448: ImpAdCallI2 Format$(, )
  loc_BF144D: FStStr var_D0
  loc_BF1450: LitI2_Byte 1
  loc_BF1452: CUI1I2
  loc_BF1454: FLdZeroAd var_D0
  loc_BF1457: FStStrNoPop var_C8
  loc_BF145A: CR8Str
  loc_BF145C: PopFPR8
  loc_BF145D: FLdRfVar var_228
  loc_BF1460: CStrVarTmp
  loc_BF1461: FStStrNoPop var_C4
  loc_BF1464: FLdRfVar var_208
  loc_BF1467: CStrVarTmp
  loc_BF1468: FStStrNoPop var_C0
  loc_BF146B: FLdZeroAd var_CC
  loc_BF146E: FStStrNoPop var_BC
  loc_BF1471: CR8Str
  loc_BF1473: PopFPR8
  loc_BF1474: FLdRfVar var_1DC
  loc_BF1477: CStrVarTmp
  loc_BF1478: FStStrNoPop var_B8
  loc_BF147B: FLdRfVar var_1CC
  loc_BF147E: CStrVarTmp
  loc_BF147F: FStStrNoPop var_B4
  loc_BF1482: ILdRf var_8C
  loc_BF1485: ImpAdLdI2 MemVar_C3D064
  loc_BF1488: LitI2_Byte 6
  loc_BF148A: CUI1I2
  loc_BF148C: Call Proc_5_49_A44264()
  loc_BF1491: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_BF14A4: FFreeAd var_B0 = "": var_128 = "": var_130 = "": var_178 = "": var_22C = "": var_234 = "": var_124 = "": var_12C = "": var_18C = ""
  loc_BF14BB: FFreeVar var_154 = "": var_174 = "": var_19C = "": var_1BC = "": var_1CC = "": var_1DC = "": var_208 = ""
  loc_BF14CE: LitI2_Byte &H3C
  loc_BF14D0: CR8I2
  loc_BF14D1: CVarR4
  loc_BF14D5: PopAdLdVar
  loc_BF14D6: ImpAdLdRf MemVar_C3D110
  loc_BF14D9: NewIfNullPr frmGenerarBalanceMensual
  loc_BF14DC: VCallAd Control_ID_
  loc_BF14DF: FStAdFunc var_B0
  loc_BF14E2: FLdPr var_B0
  loc_BF14E5: LateIdSt
  loc_BF14EA: FFree1Ad var_B0
  loc_BF14ED: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_BF14F0: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_BF14F3: ConcatStr
  loc_BF14F4: FStStrNoPop var_B4
  loc_BF14F7: LitStr " PeriInfo year(4) NOT NULL DEFAULT 0000,"
  loc_BF14FA: ConcatStr
  loc_BF14FB: FStStrNoPop var_B8
  loc_BF14FE: LitStr " CodiBanc mediumint(5) unsigned NOT NULL DEFAULT 0,"
  loc_BF1501: ConcatStr
  loc_BF1502: FStStrNoPop var_BC
  loc_BF1505: LitStr " DetaBanc varchar(200) NOT NULL DEFAULT '',"
  loc_BF1508: ConcatStr
  loc_BF1509: FStStrNoPop var_C0
  loc_BF150C: LitStr " CodiCuco varchar(12) NOT NULL DEFAULT '',"
  loc_BF150F: ConcatStr
  loc_BF1510: FStStrNoPop var_C4
  loc_BF1513: LitStr " SaldLB DECIMAL(14,2) NOT NULL DEFAULT 0.00,"
  loc_BF1516: ConcatStr
  loc_BF1517: FStStrNoPop var_C8
  loc_BF151A: LitStr " SaldConta DECIMAL(14,2) NOT NULL DEFAULT 0.00,"
  loc_BF151D: ConcatStr
  loc_BF151E: FStStrNoPop var_CC
  loc_BF1521: LitStr " KEY idxtmp (eriInfo`,`CodiBanc`)"
  loc_BF1524: ConcatStr
  loc_BF1525: FStStrNoPop var_D0
  loc_BF1528: LitStr " );"
  loc_BF152B: ConcatStr
  loc_BF152C: FStStrNoPop var_D4
  loc_BF152F: Call EjecutarRsCls(from_stack_1v)
  loc_BF1534: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BF1549: LitStr "INSERT INTO tmovi"
  loc_BF154C: LitStr " SELECT "
  loc_BF154F: ConcatStr
  loc_BF1550: FStStrNoPop var_B4
  loc_BF1553: ImpAdLdI2 MemVar_C3D064
  loc_BF1556: CStrUI1
  loc_BF1558: FStStrNoPop var_B8
  loc_BF155B: ConcatStr
  loc_BF155C: FStStrNoPop var_BC
  loc_BF155F: LitStr " PeriInfo, mb.CodiBanc, b.DetaBanc, b.CodiCuco, SUM(mb.DebeMoba-mb.HabeMoba), 0"
  loc_BF1562: ConcatStr
  loc_BF1563: FStStrNoPop var_C0
  loc_BF1566: LitStr " FROM movibanco mb"
  loc_BF1569: ConcatStr
  loc_BF156A: FStStrNoPop var_C4
  loc_BF156D: LitStr " INNER JOIN banco b ON b.PeriInfo = "
  loc_BF1570: ConcatStr
  loc_BF1571: FStStrNoPop var_C8
  loc_BF1574: ImpAdLdI2 MemVar_C3D064
  loc_BF1577: CStrUI1
  loc_BF1579: FStStrNoPop var_CC
  loc_BF157C: ConcatStr
  loc_BF157D: FStStrNoPop var_D0
  loc_BF1580: LitStr " AND b.CodiBanc = mb.CodiBanc"
  loc_BF1583: ConcatStr
  loc_BF1584: FStStrNoPop var_D4
  loc_BF1587: LitStr " AND b.FeanBanc IS NULL"
  loc_BF158A: ConcatStr
  loc_BF158B: FStStrNoPop var_D8
  loc_BF158E: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = b.PeriInfo AND cc.CodiCuco = b.CodiCuco AND cc.CodiTicu = '1130'"
  loc_BF1591: ConcatStr
  loc_BF1592: FStStrNoPop var_DC
  loc_BF1595: LitStr " WHERE FechMoba <= "
  loc_BF1598: ConcatStr
  loc_BF1599: FStStrNoPop var_E0
  loc_BF159C: ILdRf var_8C
  loc_BF159F: ConcatStr
  loc_BF15A0: FStStrNoPop var_E4
  loc_BF15A3: LitStr " AND b.CodiUsua != 'migra'"
  loc_BF15A6: ConcatStr
  loc_BF15A7: FStStrNoPop var_E8
  loc_BF15AA: LitStr " GROUP BY mb.CodiBanc;"
  loc_BF15AD: ConcatStr
  loc_BF15AE: FStStrNoPop var_EC
  loc_BF15B1: Call EjecutarRsCls(from_stack_1v)
  loc_BF15B6: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_BF15D7: LitStr "INSERT INTO tmovi"
  loc_BF15DA: LitStr " SELECT tbl.PeriInfo, tbl.CodiBanc, tbl.DetaBanc, ma.CodiCuco, 0, SUM(DebeMoas-HabeMoas)"
  loc_BF15DD: ConcatStr
  loc_BF15DE: FStStrNoPop var_B4
  loc_BF15E1: LitStr " FROM ("
  loc_BF15E4: ConcatStr
  loc_BF15E5: FStStrNoPop var_B8
  loc_BF15E8: LitStr " SELECT "
  loc_BF15EB: ConcatStr
  loc_BF15EC: FStStrNoPop var_BC
  loc_BF15EF: ImpAdLdI2 MemVar_C3D064
  loc_BF15F2: CStrUI1
  loc_BF15F4: FStStrNoPop var_C0
  loc_BF15F7: ConcatStr
  loc_BF15F8: FStStrNoPop var_C4
  loc_BF15FB: LitStr " PeriInfo, mb.CodiBanc, b.DetaBanc, b.CodiCuco"
  loc_BF15FE: ConcatStr
  loc_BF15FF: FStStrNoPop var_C8
  loc_BF1602: LitStr " FROM movibanco mb"
  loc_BF1605: ConcatStr
  loc_BF1606: FStStrNoPop var_CC
  loc_BF1609: LitStr " INNER JOIN banco b ON b.PeriInfo = "
  loc_BF160C: ConcatStr
  loc_BF160D: FStStrNoPop var_D0
  loc_BF1610: ImpAdLdI2 MemVar_C3D064
  loc_BF1613: CStrUI1
  loc_BF1615: FStStrNoPop var_D4
  loc_BF1618: ConcatStr
  loc_BF1619: FStStrNoPop var_D8
  loc_BF161C: LitStr " AND b.CodiBanc = mb.CodiBanc"
  loc_BF161F: ConcatStr
  loc_BF1620: FStStrNoPop var_DC
  loc_BF1623: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = b.PeriInfo AND cc.CodiCuco = b.CodiCuco AND cc.CodiTicu = '1130'"
  loc_BF1626: ConcatStr
  loc_BF1627: FStStrNoPop var_E0
  loc_BF162A: LitStr " WHERE FechMoba <= "
  loc_BF162D: ConcatStr
  loc_BF162E: FStStrNoPop var_E4
  loc_BF1631: ILdRf var_8C
  loc_BF1634: ConcatStr
  loc_BF1635: FStStrNoPop var_E8
  loc_BF1638: LitStr " AND b.CodiUsua != 'migra'"
  loc_BF163B: ConcatStr
  loc_BF163C: FStStrNoPop var_EC
  loc_BF163F: LitStr " GROUP BY mb.CodiBanc"
  loc_BF1642: ConcatStr
  loc_BF1643: FStStrNoPop var_F0
  loc_BF1646: LitStr " ) AS tbl"
  loc_BF1649: ConcatStr
  loc_BF164A: FStStrNoPop var_F4
  loc_BF164D: LitStr " INNER JOIN asiento a ON a.PeriInfo = tbl.PeriInfo AND a.FechAsie <= "
  loc_BF1650: ConcatStr
  loc_BF1651: FStStrNoPop var_F8
  loc_BF1654: ILdRf var_8C
  loc_BF1657: ConcatStr
  loc_BF1658: FStStrNoPop var_FC
  loc_BF165B: LitStr " INNER JOIN moviasiento ma ON ma.PeriInfo = a.PeriInfo AND ma.CodiAsie = a.CodiAsie"
  loc_BF165E: ConcatStr
  loc_BF165F: FStStrNoPop var_100
  loc_BF1662: LitStr " AND ma.CodiCuco = tbl.CodiCuco"
  loc_BF1665: ConcatStr
  loc_BF1666: FStStrNoPop var_104
  loc_BF1669: LitStr " GROUP BY ma.CodiCuco;"
  loc_BF166C: ConcatStr
  loc_BF166D: FStStrNoPop var_108
  loc_BF1670: Call EjecutarRsCls(from_stack_1v)
  loc_BF1675: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_BF16A4: LitStr "SELECT CodiBanc, DetaBanc, CodiCuco, SUM(SaldLB) SaldLB, SUM(SaldConta) SaldConta, SUM(SaldLB-SaldConta) diferencia"
  loc_BF16A7: LitStr " FROM tmovi"
  loc_BF16AA: ConcatStr
  loc_BF16AB: FStStrNoPop var_B4
  loc_BF16AE: LitStr " GROUP BY PeriInfo;"
  loc_BF16B1: ConcatStr
  loc_BF16B2: FStStrNoPop var_B8
  loc_BF16B5: Call EjecutarRsCls(from_stack_1v)
  loc_BF16BA: FFreeStr var_B4 = ""
  loc_BF16C1: FLdRfVar var_120
  loc_BF16C4: FLdPr Me
  loc_BF16C7: MemLdPr global_56
  loc_BF16CA:  = frmGenerarBalanceMensual.Recordset15.RecordCount
  loc_BF16CF: ILdRf var_120
  loc_BF16D2: LitI4 0
  loc_BF16D7: GtI4
  loc_BF16D8: BranchF loc_BF1A19
  loc_BF16DB: FLdRfVar var_124
  loc_BF16DE: LitVarStr var_9C, "SaldLB"
  loc_BF16E3: PopAdLdVar
  loc_BF16E4: FLdRfVar var_B0
  loc_BF16E7: FLdPr Me
  loc_BF16EA: MemLdPr global_56
  loc_BF16ED:  = Me.Fields
  loc_BF16F2: FLdPr var_B0
  loc_BF16F5: from_stack_2 = Me.Item(from_stack_1)
  loc_BF16FA: LitI4 1
  loc_BF16FF: LitI4 1
  loc_BF1704: LitVarStr var_AC, "currency"
  loc_BF1709: FStVarCopyObj var_174
  loc_BF170C: FLdRfVar var_174
  loc_BF170F: FLdZeroAd var_124
  loc_BF1712: CVarAd
  loc_BF1716: ImpAdCallI2 Format$(, )
  loc_BF171B: FStStr var_BC
  loc_BF171E: FLdRfVar var_12C
  loc_BF1721: LitVarStr var_140, "SaldConta"
  loc_BF1726: PopAdLdVar
  loc_BF1727: FLdRfVar var_128
  loc_BF172A: FLdPr Me
  loc_BF172D: MemLdPr global_56
  loc_BF1730:  = Me.Fields
  loc_BF1735: FLdPr var_128
  loc_BF1738: from_stack_2 = Me.Item(from_stack_1)
  loc_BF173D: LitI4 1
  loc_BF1742: LitI4 1
  loc_BF1747: LitVarStr var_164, "currency"
  loc_BF174C: FStVarCopyObj var_1BC
  loc_BF174F: FLdRfVar var_1BC
  loc_BF1752: FLdZeroAd var_12C
  loc_BF1755: CVarAd
  loc_BF1759: ImpAdCallI2 Format$(, )
  loc_BF175E: FStStr var_C0
  loc_BF1761: LitI2_Byte 1
  loc_BF1763: CUI1I2
  loc_BF1765: FLdZeroAd var_C0
  loc_BF1768: FStStrNoPop var_B8
  loc_BF176B: CR8Str
  loc_BF176D: PopFPR8
  loc_BF176E: LitStr "Saldo Contable"
  loc_BF1771: LitStr vbNullString
  loc_BF1774: FLdZeroAd var_BC
  loc_BF1777: FStStrNoPop var_B4
  loc_BF177A: CR8Str
  loc_BF177C: PopFPR8
  loc_BF177D: LitStr "Saldo Libro Banco"
  loc_BF1780: LitStr vbNullString
  loc_BF1783: ILdRf var_8C
  loc_BF1786: ImpAdLdI2 MemVar_C3D064
  loc_BF1789: LitI2_Byte 9
  loc_BF178B: CUI1I2
  loc_BF178D: Call Proc_5_49_A44264()
  loc_BF1792: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_BF179D: FFreeAd var_B0 = ""
  loc_BF17A4: FFreeVar var_154 = "": var_174 = "": var_19C = ""
  loc_BF17AF: FLdRfVar var_154
  loc_BF17B2: FLdRfVar var_124
  loc_BF17B5: LitVarStr var_9C, "diferencia"
  loc_BF17BA: PopAdLdVar
  loc_BF17BB: FLdRfVar var_B0
  loc_BF17BE: FLdPr Me
  loc_BF17C1: MemLdPr global_56
  loc_BF17C4:  = Me.Fields
  loc_BF17C9: FLdPr var_B0
  loc_BF17CC: from_stack_2 = Me.Item(from_stack_1)
  loc_BF17D1: FLdPr var_124
  loc_BF17D4:  = Me.Value
  loc_BF17D9: FLdRfVar var_154
  loc_BF17DC: LitVarI2 var_AC, 0
  loc_BF17E1: HardType
  loc_BF17E2: NeVarBool
  loc_BF17E4: FFreeAd var_B0 = ""
  loc_BF17EB: FFree1Var var_154 = ""
  loc_BF17EE: BranchF loc_BF1A19
  loc_BF17F1: LitStr "SELECT CodiBanc, DetaBanc, CodiCuco, SUM(SaldLB) SaldLB, SUM(SaldConta) SaldConta, SUM(SaldLB-SaldConta) diferencia"
  loc_BF17F4: LitStr " From tmovi"
  loc_BF17F7: ConcatStr
  loc_BF17F8: FStStrNoPop var_B4
  loc_BF17FB: LitStr " GROUP BY PeriInfo, CodiBanc"
  loc_BF17FE: ConcatStr
  loc_BF17FF: FStStrNoPop var_B8
  loc_BF1802: LitStr " HAVING diferencia != 0;"
  loc_BF1805: ConcatStr
  loc_BF1806: FStStrNoPop var_BC
  loc_BF1809: Call EjecutarRsCls(from_stack_1v)
  loc_BF180E: FFreeStr var_B4 = "": var_B8 = ""
  loc_BF1817: FLdRfVar var_120
  loc_BF181A: FLdPr Me
  loc_BF181D: MemLdPr global_56
  loc_BF1820:  = Me.RecordCount
  loc_BF1825: ILdRf var_120
  loc_BF1828: LitI4 0
  loc_BF182D: GtI4
  loc_BF182E: BranchF loc_BF1A19
  loc_BF1831: FLdPr Me
  loc_BF1834: MemLdPr global_56
  loc_BF1837: Me.MoveFirst
  loc_BF183C: FLdRfVar var_1F6
  loc_BF183F: FLdPr Me
  loc_BF1842: MemLdPr global_56
  loc_BF1845:  = Me.EOF
  loc_BF184A: FLdI2 var_1F6
  loc_BF184D: NotI4
  loc_BF184E: BranchF loc_BF1A19
  loc_BF1851: FLdRfVar var_268
  loc_BF1854: FLdRfVar var_124
  loc_BF1857: LitVarStr var_9C, "CodiCuco"
  loc_BF185C: PopAdLdVar
  loc_BF185D: FLdRfVar var_B0
  loc_BF1860: FLdPr Me
  loc_BF1863: MemLdPr global_56
  loc_BF1866:  = Me.Fields
  loc_BF186B: FLdPr var_B0
  loc_BF186E: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1873: FLdPr var_124
  loc_BF1876:  = Me.Value
  loc_BF187B: FLdRfVar var_154
  loc_BF187E: FLdRfVar var_12C
  loc_BF1881: LitVarStr var_AC, "CodiBanc"
  loc_BF1886: PopAdLdVar
  loc_BF1887: FLdRfVar var_128
  loc_BF188A: FLdPr Me
  loc_BF188D: MemLdPr global_56
  loc_BF1890:  = Me.Fields
  loc_BF1895: FLdPr var_128
  loc_BF1898: from_stack_2 = Me.Item(from_stack_1)
  loc_BF189D: FLdPr var_12C
  loc_BF18A0:  = Me.Value
  loc_BF18A5: FLdRfVar var_19C
  loc_BF18A8: FLdRfVar var_144
  loc_BF18AB: LitVarStr var_164, "DetaBanc"
  loc_BF18B0: PopAdLdVar
  loc_BF18B1: FLdRfVar var_130
  loc_BF18B4: FLdPr Me
  loc_BF18B7: MemLdPr global_56
  loc_BF18BA:  = Me.Fields
  loc_BF18BF: FLdPr var_130
  loc_BF18C2: from_stack_2 = Me.Item(from_stack_1)
  loc_BF18C7: FLdPr var_144
  loc_BF18CA:  = Me.Value
  loc_BF18CF: FLdRfVar var_18C
  loc_BF18D2: LitVarStr var_188, "SaldLB"
  loc_BF18D7: PopAdLdVar
  loc_BF18D8: FLdRfVar var_178
  loc_BF18DB: FLdPr Me
  loc_BF18DE: MemLdPr global_56
  loc_BF18E1:  = Me.Fields
  loc_BF18E6: FLdPr var_178
  loc_BF18E9: from_stack_2 = Me.Item(from_stack_1)
  loc_BF18EE: LitI4 1
  loc_BF18F3: LitI4 1
  loc_BF18F8: LitVarStr var_1AC, "currency"
  loc_BF18FD: FStVarCopyObj var_1DC
  loc_BF1900: FLdRfVar var_1DC
  loc_BF1903: FLdZeroAd var_18C
  loc_BF1906: CVarAd
  loc_BF190A: ImpAdCallI2 Format$(, )
  loc_BF190F: FStStr var_C8
  loc_BF1912: FLdRfVar var_278
  loc_BF1915: FLdRfVar var_230
  loc_BF1918: LitVarStr var_218, "CodiCuco"
  loc_BF191D: PopAdLdVar
  loc_BF191E: FLdRfVar var_22C
  loc_BF1921: FLdPr Me
  loc_BF1924: MemLdPr global_56
  loc_BF1927:  = Me.Fields
  loc_BF192C: FLdPr var_22C
  loc_BF192F: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1934: FLdPr var_230
  loc_BF1937:  = Me.Value
  loc_BF193C: FLdRfVar var_238
  loc_BF193F: LitVarStr var_248, "SaldConta"
  loc_BF1944: PopAdLdVar
  loc_BF1945: FLdRfVar var_234
  loc_BF1948: FLdPr Me
  loc_BF194B: MemLdPr global_56
  loc_BF194E:  = Me.Fields
  loc_BF1953: FLdPr var_234
  loc_BF1956: from_stack_2 = Me.Item(from_stack_1)
  loc_BF195B: LitI4 1
  loc_BF1960: LitI4 1
  loc_BF1965: LitVarStr var_258, "currency"
  loc_BF196A: FStVarCopyObj var_228
  loc_BF196D: FLdRfVar var_228
  loc_BF1970: FLdZeroAd var_238
  loc_BF1973: CVarAd
  loc_BF1977: ImpAdCallI2 Format$(, )
  loc_BF197C: FStStr var_CC
  loc_BF197F: LitI2_Byte 0
  loc_BF1981: CUI1I2
  loc_BF1983: FLdZeroAd var_CC
  loc_BF1986: FStStrNoPop var_C4
  loc_BF1989: CR8Str
  loc_BF198B: PopFPR8
  loc_BF198C: LitStr vbNullString
  loc_BF198F: FLdRfVar var_278
  loc_BF1992: CStrVarTmp
  loc_BF1993: FStStrNoPop var_C0
  loc_BF1996: FLdZeroAd var_C8
  loc_BF1999: FStStrNoPop var_BC
  loc_BF199C: CR8Str
  loc_BF199E: PopFPR8
  loc_BF199F: FLdRfVar var_154
  loc_BF19A2: LitVarStr var_140, " - "
  loc_BF19A7: ConcatVar var_174
  loc_BF19AB: FLdRfVar var_19C
  loc_BF19AE: ConcatVar var_1BC
  loc_BF19B2: CStrVarVal var_B8
  loc_BF19B6: FLdRfVar var_268
  loc_BF19B9: CStrVarTmp
  loc_BF19BA: FStStrNoPop var_B4
  loc_BF19BD: ILdRf var_8C
  loc_BF19C0: ImpAdLdI2 MemVar_C3D064
  loc_BF19C3: LitI2_Byte 9
  loc_BF19C5: CUI1I2
  loc_BF19C7: Call Proc_5_49_A44264()
  loc_BF19CC: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_BF19DD: FFreeAd var_B0 = "": var_128 = "": var_12C = "": var_130 = "": var_144 = "": var_178 = "": var_22C = "": var_234 = "": var_124 = ""
  loc_BF19F4: FFreeVar var_154 = "": var_174 = "": var_19C = "": var_1CC = "": var_1DC = "": var_208 = "": var_228 = "": var_268 = "": var_1BC = ""
  loc_BF1A0B: FLdPr Me
  loc_BF1A0E: MemLdPr global_56
  loc_BF1A11: Me.MoveNext
  loc_BF1A16: Branch loc_BF183C
  loc_BF1A19: LitI2_Byte &H46
  loc_BF1A1B: CR8I2
  loc_BF1A1C: CVarR4
  loc_BF1A20: PopAdLdVar
  loc_BF1A21: ImpAdLdRf MemVar_C3D110
  loc_BF1A24: NewIfNullPr frmGenerarBalanceMensual
  loc_BF1A27: VCallAd Control_ID_
  loc_BF1A2A: FStAdFunc var_B0
  loc_BF1A2D: FLdPr var_B0
  loc_BF1A30: LateIdSt
  loc_BF1A35: FFree1Ad var_B0
  loc_BF1A38: LitStr "SELECT SacePaco"
  loc_BF1A3B: LitStr " FROM paraconta"
  loc_BF1A3E: ConcatStr
  loc_BF1A3F: FStStrNoPop var_B4
  loc_BF1A42: LitStr " WHERE paraconta.PeriInfo = "
  loc_BF1A45: ConcatStr
  loc_BF1A46: FStStrNoPop var_B8
  loc_BF1A49: ImpAdLdI2 MemVar_C3D064
  loc_BF1A4C: CStrUI1
  loc_BF1A4E: FStStrNoPop var_BC
  loc_BF1A51: ConcatStr
  loc_BF1A52: FStStrNoPop var_C0
  loc_BF1A55: Call EjecutarRsCls(from_stack_1v)
  loc_BF1A5A: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_BF1A65: FLdRfVar var_120
  loc_BF1A68: FLdPr Me
  loc_BF1A6B: MemLdPr global_56
  loc_BF1A6E:  = frmGenerarBalanceMensual.Recordset15.RecordCount
  loc_BF1A73: ILdRf var_120
  loc_BF1A76: LitI4 0
  loc_BF1A7B: GtI4
  loc_BF1A7C: BranchF loc_BF1CAE
  loc_BF1A7F: FLdRfVar var_154
  loc_BF1A82: FLdRfVar var_124
  loc_BF1A85: LitVarStr var_9C, "SacePaco"
  loc_BF1A8A: PopAdLdVar
  loc_BF1A8B: FLdRfVar var_B0
  loc_BF1A8E: FLdPr Me
  loc_BF1A91: MemLdPr global_56
  loc_BF1A94:  = Me.Fields
  loc_BF1A99: FLdPr var_B0
  loc_BF1A9C: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1AA1: FLdPr var_124
  loc_BF1AA4:  = Me.Value
  loc_BF1AA9: FLdRfVar var_154
  loc_BF1AAC: LitVarStr var_AC, vbNullString
  loc_BF1AB1: HardType
  loc_BF1AB2: NeVarBool
  loc_BF1AB4: FFreeAd var_B0 = ""
  loc_BF1ABB: FFree1Var var_154 = ""
  loc_BF1ABE: BranchF loc_BF1CAE
  loc_BF1AC1: FLdRfVar var_154
  loc_BF1AC4: FLdRfVar var_124
  loc_BF1AC7: LitVarStr var_9C, "SacePaco"
  loc_BF1ACC: PopAdLdVar
  loc_BF1ACD: FLdRfVar var_B0
  loc_BF1AD0: FLdPr Me
  loc_BF1AD3: MemLdPr global_56
  loc_BF1AD6:  = Me.Fields
  loc_BF1ADB: FLdPr var_B0
  loc_BF1ADE: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1AE3: FLdPr var_124
  loc_BF1AE6:  = Me.Value
  loc_BF1AEB: FLdRfVar var_154
  loc_BF1AEE: CStrVarTmp
  loc_BF1AEF: FStStr var_27C
  loc_BF1AF2: FFreeAd var_B0 = ""
  loc_BF1AF9: FFree1Var var_154 = ""
  loc_BF1AFC: LitStr "SELECT moviasiento.CodiCuco, DetaCuco, Sum(DebeMoas)-Sum(HabeMoas) saldo"
  loc_BF1AFF: LitStr " FROM moviasiento"
  loc_BF1B02: ConcatStr
  loc_BF1B03: FStStrNoPop var_B4
  loc_BF1B06: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = "
  loc_BF1B09: ConcatStr
  loc_BF1B0A: FStStrNoPop var_B8
  loc_BF1B0D: ImpAdLdI2 MemVar_C3D064
  loc_BF1B10: CStrUI1
  loc_BF1B12: FStStrNoPop var_BC
  loc_BF1B15: ConcatStr
  loc_BF1B16: FStStrNoPop var_C0
  loc_BF1B19: LitStr " AND cc.CodiCuco = moviasiento.CodiCuco"
  loc_BF1B1C: ConcatStr
  loc_BF1B1D: FStStrNoPop var_C4
  loc_BF1B20: LitStr " WHERE moviasiento.PeriInfo = "
  loc_BF1B23: ConcatStr
  loc_BF1B24: FStStrNoPop var_C8
  loc_BF1B27: ImpAdLdI2 MemVar_C3D064
  loc_BF1B2A: CStrUI1
  loc_BF1B2C: FStStrNoPop var_CC
  loc_BF1B2F: ConcatStr
  loc_BF1B30: FStStrNoPop var_D0
  loc_BF1B33: LitStr " AND moviasiento.CodiCuco IN("
  loc_BF1B36: ConcatStr
  loc_BF1B37: FStStrNoPop var_D4
  loc_BF1B3A: ILdRf var_27C
  loc_BF1B3D: ConcatStr
  loc_BF1B3E: FStStrNoPop var_D8
  loc_BF1B41: LitStr ")"
  loc_BF1B44: ConcatStr
  loc_BF1B45: FStStrNoPop var_DC
  loc_BF1B48: LitStr " GROUP BY CodiCuco"
  loc_BF1B4B: ConcatStr
  loc_BF1B4C: FStStrNoPop var_E0
  loc_BF1B4F: LitStr " HAVING saldo <> 0"
  loc_BF1B52: ConcatStr
  loc_BF1B53: FStStrNoPop var_E4
  loc_BF1B56: Call EjecutarRsCls(from_stack_1v)
  loc_BF1B5B: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_BF1B78: FLdRfVar var_120
  loc_BF1B7B: FLdPr Me
  loc_BF1B7E: MemLdPr global_56
  loc_BF1B81:  = Me.RecordCount
  loc_BF1B86: ILdRf var_120
  loc_BF1B89: LitI4 0
  loc_BF1B8E: GtI4
  loc_BF1B8F: BranchF loc_BF1CAE
  loc_BF1B92: FLdPr Me
  loc_BF1B95: MemLdPr global_56
  loc_BF1B98: Me.MoveFirst
  loc_BF1B9D: FLdRfVar var_1F6
  loc_BF1BA0: FLdPr Me
  loc_BF1BA3: MemLdPr global_56
  loc_BF1BA6:  = Me.EOF
  loc_BF1BAB: FLdI2 var_1F6
  loc_BF1BAE: NotI4
  loc_BF1BAF: BranchF loc_BF1CAE
  loc_BF1BB2: FLdRfVar var_19C
  loc_BF1BB5: FLdRfVar var_124
  loc_BF1BB8: LitVarStr var_9C, "CodiCuco"
  loc_BF1BBD: PopAdLdVar
  loc_BF1BBE: FLdRfVar var_B0
  loc_BF1BC1: FLdPr Me
  loc_BF1BC4: MemLdPr global_56
  loc_BF1BC7:  = Me.Fields
  loc_BF1BCC: FLdPr var_B0
  loc_BF1BCF: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1BD4: FLdPr var_124
  loc_BF1BD7:  = Me.Value
  loc_BF1BDC: FLdRfVar var_1BC
  loc_BF1BDF: FLdRfVar var_12C
  loc_BF1BE2: LitVarStr var_AC, "DetaCuco"
  loc_BF1BE7: PopAdLdVar
  loc_BF1BE8: FLdRfVar var_128
  loc_BF1BEB: FLdPr Me
  loc_BF1BEE: MemLdPr global_56
  loc_BF1BF1:  = Me.Fields
  loc_BF1BF6: FLdPr var_128
  loc_BF1BF9: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1BFE: FLdPr var_12C
  loc_BF1C01:  = Me.Value
  loc_BF1C06: FLdRfVar var_144
  loc_BF1C09: LitVarStr var_140, "Saldo"
  loc_BF1C0E: PopAdLdVar
  loc_BF1C0F: FLdRfVar var_130
  loc_BF1C12: FLdPr Me
  loc_BF1C15: MemLdPr global_56
  loc_BF1C18:  = Me.Fields
  loc_BF1C1D: FLdPr var_130
  loc_BF1C20: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1C25: LitI4 1
  loc_BF1C2A: LitI4 1
  loc_BF1C2F: LitVarStr var_164, "currency"
  loc_BF1C34: FStVarCopyObj var_174
  loc_BF1C37: FLdRfVar var_174
  loc_BF1C3A: FLdZeroAd var_144
  loc_BF1C3D: CVarAd
  loc_BF1C41: ImpAdCallI2 Format$(, )
  loc_BF1C46: FStStr var_C0
  loc_BF1C49: LitI2_Byte 1
  loc_BF1C4B: CUI1I2
  loc_BF1C4D: LitI2_Byte 0
  loc_BF1C4F: CR8I2
  loc_BF1C50: PopFPR8
  loc_BF1C51: LitStr vbNullString
  loc_BF1C54: LitStr vbNullString
  loc_BF1C57: FLdZeroAd var_C0
  loc_BF1C5A: FStStrNoPop var_BC
  loc_BF1C5D: CR8Str
  loc_BF1C5F: PopFPR8
  loc_BF1C60: FLdRfVar var_1BC
  loc_BF1C63: CStrVarTmp
  loc_BF1C64: FStStrNoPop var_B8
  loc_BF1C67: FLdRfVar var_19C
  loc_BF1C6A: CStrVarTmp
  loc_BF1C6B: FStStrNoPop var_B4
  loc_BF1C6E: ILdRf var_8C
  loc_BF1C71: ImpAdLdI2 MemVar_C3D064
  loc_BF1C74: LitI2_Byte 7
  loc_BF1C76: CUI1I2
  loc_BF1C78: Call Proc_5_49_A44264()
  loc_BF1C7D: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_BF1C88: FFreeAd var_B0 = "": var_128 = "": var_130 = "": var_124 = ""
  loc_BF1C95: FFreeVar var_154 = "": var_174 = "": var_19C = ""
  loc_BF1CA0: FLdPr Me
  loc_BF1CA3: MemLdPr global_56
  loc_BF1CA6: Me.MoveNext
  loc_BF1CAB: Branch loc_BF1B9D
  loc_BF1CAE: LitI2_Byte &H46
  loc_BF1CB0: CR8I2
  loc_BF1CB1: CVarR4
  loc_BF1CB5: PopAdLdVar
  loc_BF1CB6: ImpAdLdRf MemVar_C3D110
  loc_BF1CB9: NewIfNullPr frmGenerarBalanceMensual
  loc_BF1CBC: VCallAd Control_ID_
  loc_BF1CBF: FStAdFunc var_B0
  loc_BF1CC2: FLdPr var_B0
  loc_BF1CC5: LateIdSt
  loc_BF1CCA: FFree1Ad var_B0
  loc_BF1CCD: LitStr "SELECT PeriInfo, CodiAsie, SUM(DebeMoas) DebeMoas, SUM(HabeMoas) HabeMoas, SUM(DebeMoas-HabeMoas) dife"
  loc_BF1CD0: LitStr " FROM moviasiento"
  loc_BF1CD3: ConcatStr
  loc_BF1CD4: FStStrNoPop var_B4
  loc_BF1CD7: LitStr " WHERE PeriInfo = "
  loc_BF1CDA: ConcatStr
  loc_BF1CDB: FStStrNoPop var_B8
  loc_BF1CDE: ImpAdLdI2 MemVar_C3D064
  loc_BF1CE1: CStrUI1
  loc_BF1CE3: FStStrNoPop var_BC
  loc_BF1CE6: ConcatStr
  loc_BF1CE7: FStStrNoPop var_C0
  loc_BF1CEA: LitStr " GROUP BY PeriInfo, CodiAsie"
  loc_BF1CED: ConcatStr
  loc_BF1CEE: FStStrNoPop var_C4
  loc_BF1CF1: LitStr " HAVING dife != 0"
  loc_BF1CF4: ConcatStr
  loc_BF1CF5: FStStrNoPop var_C8
  loc_BF1CF8: LitStr " ;"
  loc_BF1CFB: ConcatStr
  loc_BF1CFC: FStStrNoPop var_CC
  loc_BF1CFF: Call EjecutarRsCls(from_stack_1v)
  loc_BF1D04: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_BF1D15: FLdRfVar var_120
  loc_BF1D18: FLdPr Me
  loc_BF1D1B: MemLdPr global_56
  loc_BF1D1E:  = frmGenerarBalanceMensual.Recordset15.RecordCount
  loc_BF1D23: ILdRf var_120
  loc_BF1D26: LitI4 0
  loc_BF1D2B: GtI4
  loc_BF1D2C: BranchF loc_BF1E67
  loc_BF1D2F: FLdPr Me
  loc_BF1D32: MemLdPr global_56
  loc_BF1D35: Me.MoveFirst
  loc_BF1D3A: FLdRfVar var_1F6
  loc_BF1D3D: FLdPr Me
  loc_BF1D40: MemLdPr global_56
  loc_BF1D43:  = Me.EOF
  loc_BF1D48: FLdI2 var_1F6
  loc_BF1D4B: NotI4
  loc_BF1D4C: BranchF loc_BF1E67
  loc_BF1D4F: FLdRfVar var_1CC
  loc_BF1D52: FLdRfVar var_124
  loc_BF1D55: LitVarStr var_9C, "CodiAsie"
  loc_BF1D5A: PopAdLdVar
  loc_BF1D5B: FLdRfVar var_B0
  loc_BF1D5E: FLdPr Me
  loc_BF1D61: MemLdPr global_56
  loc_BF1D64:  = Me.Fields
  loc_BF1D69: FLdPr var_B0
  loc_BF1D6C: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1D71: FLdPr var_124
  loc_BF1D74:  = Me.Value
  loc_BF1D79: FLdRfVar var_12C
  loc_BF1D7C: LitVarStr var_AC, "DebeMoas"
  loc_BF1D81: PopAdLdVar
  loc_BF1D82: FLdRfVar var_128
  loc_BF1D85: FLdPr Me
  loc_BF1D88: MemLdPr global_56
  loc_BF1D8B:  = Me.Fields
  loc_BF1D90: FLdPr var_128
  loc_BF1D93: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1D98: LitI4 1
  loc_BF1D9D: LitI4 1
  loc_BF1DA2: LitVarStr var_140, "currency"
  loc_BF1DA7: FStVarCopyObj var_174
  loc_BF1DAA: FLdRfVar var_174
  loc_BF1DAD: FLdZeroAd var_12C
  loc_BF1DB0: CVarAd
  loc_BF1DB4: ImpAdCallI2 Format$(, )
  loc_BF1DB9: FStStr var_C0
  loc_BF1DBC: FLdRfVar var_144
  loc_BF1DBF: LitVarStr var_164, "HabeMoas"
  loc_BF1DC4: PopAdLdVar
  loc_BF1DC5: FLdRfVar var_130
  loc_BF1DC8: FLdPr Me
  loc_BF1DCB: MemLdPr global_56
  loc_BF1DCE:  = Me.Fields
  loc_BF1DD3: FLdPr var_130
  loc_BF1DD6: from_stack_2 = Me.Item(from_stack_1)
  loc_BF1DDB: LitI4 1
  loc_BF1DE0: LitI4 1
  loc_BF1DE5: LitVarStr var_188, "currency"
  loc_BF1DEA: FStVarCopyObj var_1BC
  loc_BF1DED: FLdRfVar var_1BC
  loc_BF1DF0: FLdZeroAd var_144
  loc_BF1DF3: CVarAd
  loc_BF1DF7: ImpAdCallI2 Format$(, )
  loc_BF1DFC: FStStr var_C4
  loc_BF1DFF: LitI2_Byte 1
  loc_BF1E01: CUI1I2
  loc_BF1E03: FLdZeroAd var_C4
  loc_BF1E06: FStStrNoPop var_BC
  loc_BF1E09: CR8Str
  loc_BF1E0B: PopFPR8
  loc_BF1E0C: LitStr "Total Haber"
  loc_BF1E0F: LitStr vbNullString
  loc_BF1E12: FLdZeroAd var_C0
  loc_BF1E15: FStStrNoPop var_B8
  loc_BF1E18: CR8Str
  loc_BF1E1A: PopFPR8
  loc_BF1E1B: LitStr "Total Debe"
  loc_BF1E1E: FLdRfVar var_1CC
  loc_BF1E21: CStrVarTmp
  loc_BF1E22: FStStrNoPop var_B4
  loc_BF1E25: ILdRf var_8C
  loc_BF1E28: ImpAdLdI2 MemVar_C3D064
  loc_BF1E2B: LitI2_Byte &HA
  loc_BF1E2D: CUI1I2
  loc_BF1E2F: Call Proc_5_49_A44264()
  loc_BF1E34: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_BF1E41: FFreeAd var_B0 = "": var_128 = "": var_130 = ""
  loc_BF1E4C: FFreeVar var_154 = "": var_174 = "": var_19C = "": var_1BC = ""
  loc_BF1E59: FLdPr Me
  loc_BF1E5C: MemLdPr global_56
  loc_BF1E5F: Me.MoveNext
  loc_BF1E64: Branch loc_BF1D3A
  loc_BF1E67: LitVar_FALSE
  loc_BF1E6B: PopAdLdVar
  loc_BF1E6C: ImpAdLdRf MemVar_C3D110
  loc_BF1E6F: NewIfNullPr frmGenerarBalanceMensual
  loc_BF1E72: VCallAd Control_ID_
  loc_BF1E75: FStAdFunc var_B0
  loc_BF1E78: FLdPr var_B0
  loc_BF1E7B: LateIdSt
  loc_BF1E80: FFree1Ad var_B0
  loc_BF1E83: ExitProcCbHresult
End Function

Public Function CierraCajaAforo() 'A6FD20
  'Data Table: 46D5B0
  loc_A6F9AC: ZeroRetVal
  loc_A6F9AE: LitStr "DELETE FROM cajaaforo WHERE FechCaja BETWEEN @desde AND @hasta;"
  loc_A6F9B1: Call EjecutarRsCls(from_stack_1v)
  loc_A6F9B6: LitStr "SELECT ctacte.FealCtct, concepto.CodiConc, ActiConc, ImpuCuco, ctacte.CodiTimo"
  loc_A6F9B9: LitStr " FROM recaudacion.ctacte USE INDEX (idxctct04)"
  loc_A6F9BC: ConcatStr
  loc_A6F9BD: FStStrNoPop var_8C
  loc_A6F9C0: LitStr " LEFT JOIN recaudacion.concepto ON concepto.PeriInfo = Year(FealCtct) AND concepto.CodiConc = ctacte.CodiConc"
  loc_A6F9C3: ConcatStr
  loc_A6F9C4: FStStrNoPop var_90
  loc_A6F9C7: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = concepto.PeriInfo AND cc.CodiCuco = concepto.ActiConc"
  loc_A6F9CA: ConcatStr
  loc_A6F9CB: FStStrNoPop CierraCajaAforo
  loc_A6F9CE: LitStr " WHERE ctacte.FealCtct BETWEEN @desde AND @hasta"
  loc_A6F9D1: ConcatStr
  loc_A6F9D2: FStStrNoPop var_98
  loc_A6F9D5: LitStr " AND concepto.ActiConc <> ''"
  loc_A6F9D8: ConcatStr
  loc_A6F9D9: FStStrNoPop var_9C
  loc_A6F9DC: LitStr " AND (concepto.CodiConc IS NULL OR concepto.CodiConc = '' OR ImpuCuco IS NULL OR ImpuCuco = 0)"
  loc_A6F9DF: ConcatStr
  loc_A6F9E0: FStStrNoPop var_A0
  loc_A6F9E3: LitStr " GROUP BY FealCtct, CodiConc, CodiTimo;"
  loc_A6F9E6: ConcatStr
  loc_A6F9E7: FStStrNoPop var_A4
  loc_A6F9EA: Call EjecutarRsCls(from_stack_1v)
  loc_A6F9EF: FFreeStr var_8C = "": var_90 = "": CierraCajaAforo = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A6FA00: FLdRfVar var_A8
  loc_A6FA03: FLdPr Me
  loc_A6FA06: MemLdPr global_56
  loc_A6FA09:  = Me.RecordCount
  loc_A6FA0E: ILdRf var_A8
  loc_A6FA11: LitI4 0
  loc_A6FA16: GtI4
  loc_A6FA17: BranchF loc_A6FD06
  loc_A6FA1A: FLdPr Me
  loc_A6FA1D: MemLdStr global_56
  loc_A6FA20: FStAd var_AC 
  loc_A6FA24: FLdPr var_AC
  loc_A6FA27: Me.MoveFirst
  loc_A6FA2C: FLdRfVar var_AE
  loc_A6FA2F: FLdPr var_AC
  loc_A6FA32:  = Me.EOF
  loc_A6FA37: FLdI2 var_AE
  loc_A6FA3A: NotI4
  loc_A6FA3B: BranchF loc_A6FD00
  loc_A6FA3E: FLdRfVar var_C8
  loc_A6FA41: LitVarStr var_C4, "CodiConc"
  loc_A6FA46: PopAdLdVar
  loc_A6FA47: FLdRfVar var_B4
  loc_A6FA4A: FLdPr var_AC
  loc_A6FA4D:  = Me.Fields
  loc_A6FA52: FLdPr var_B4
  loc_A6FA55: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FA5A: FLdZeroAd var_C8
  loc_A6FA5D: CVarAd
  loc_A6FA61: ImpAdCallI2 IsNull()
  loc_A6FA66: FFree1Ad var_B4
  loc_A6FA69: FFree1Var var_D8 = ""
  loc_A6FA6C: BranchF loc_A6FA86
  loc_A6FA6F: ILdRf var_88
  loc_A6FA72: LitStr vbCrLf
  loc_A6FA75: ConcatStr
  loc_A6FA76: FStStrNoPop var_8C
  loc_A6FA79: LitStr "El código de Ingreso NO EXISTE. Verifique..."
  loc_A6FA7C: ConcatStr
  loc_A6FA7D: FStStr var_88
  loc_A6FA80: FFree1Str var_8C
  loc_A6FA83: Branch loc_A6FCF5
  loc_A6FA86: FLdRfVar var_D8
  loc_A6FA89: FLdRfVar var_C8
  loc_A6FA8C: LitVarStr var_C4, "CodiConc"
  loc_A6FA91: PopAdLdVar
  loc_A6FA92: FLdRfVar var_B4
  loc_A6FA95: FLdPr var_AC
  loc_A6FA98:  = Me.Fields
  loc_A6FA9D: FLdPr var_B4
  loc_A6FAA0: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FAA5: FLdPr var_C8
  loc_A6FAA8:  = Me.Value
  loc_A6FAAD: FLdRfVar var_D8
  loc_A6FAB0: LitVarStr var_E8, vbNullString
  loc_A6FAB5: HardType
  loc_A6FAB6: EqVarBool
  loc_A6FAB8: FFreeAd var_B4 = ""
  loc_A6FABF: FFree1Var var_D8 = ""
  loc_A6FAC2: BranchF loc_A6FADC
  loc_A6FAC5: ILdRf var_88
  loc_A6FAC8: LitStr vbCrLf
  loc_A6FACB: ConcatStr
  loc_A6FACC: FStStrNoPop var_8C
  loc_A6FACF: LitStr "La Cuenta Corriente NO TIENE un código de Ingreso. Verifique..."
  loc_A6FAD2: ConcatStr
  loc_A6FAD3: FStStr var_88
  loc_A6FAD6: FFree1Str var_8C
  loc_A6FAD9: Branch loc_A6FCF5
  loc_A6FADC: FLdRfVar var_D8
  loc_A6FADF: FLdRfVar var_C8
  loc_A6FAE2: LitVarStr var_C4, "ActiConc"
  loc_A6FAE7: PopAdLdVar
  loc_A6FAE8: FLdRfVar var_B4
  loc_A6FAEB: FLdPr var_AC
  loc_A6FAEE:  = Me.Fields
  loc_A6FAF3: FLdPr var_B4
  loc_A6FAF6: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FAFB: FLdPr var_C8
  loc_A6FAFE:  = Me.Value
  loc_A6FB03: FLdRfVar var_D8
  loc_A6FB06: LitVarStr var_E8, vbNullString
  loc_A6FB0B: HardType
  loc_A6FB0C: EqVarBool
  loc_A6FB0E: FFreeAd var_B4 = ""
  loc_A6FB15: FFree1Var var_D8 = ""
  loc_A6FB18: BranchF loc_A6FB7F
  loc_A6FB1B: ILdRf var_88
  loc_A6FB1E: LitStr vbCrLf
  loc_A6FB21: ConcatStr
  loc_A6FB22: FStStrNoPop var_8C
  loc_A6FB25: LitStr "El código de Ingreso "
  loc_A6FB28: ConcatStr
  loc_A6FB29: CVarStr var_F8
  loc_A6FB2C: FLdRfVar var_D8
  loc_A6FB2F: FLdRfVar var_C8
  loc_A6FB32: LitVarStr var_C4, "CodiConc"
  loc_A6FB37: PopAdLdVar
  loc_A6FB38: FLdRfVar var_B4
  loc_A6FB3B: FLdPr var_AC
  loc_A6FB3E:  = Me.Fields
  loc_A6FB43: FLdPr var_B4
  loc_A6FB46: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FB4B: FLdPr var_C8
  loc_A6FB4E:  = Me.Value
  loc_A6FB53: FLdRfVar var_D8
  loc_A6FB56: ConcatVar var_108
  loc_A6FB5A: LitVarStr var_E8, " NO TIENE una Cuenta Contable asociada. Verifique..."
  loc_A6FB5F: ConcatVar var_118
  loc_A6FB63: CStrVarTmp
  loc_A6FB64: FStStr var_88
  loc_A6FB67: FFree1Str var_8C
  loc_A6FB6A: FFreeAd var_B4 = ""
  loc_A6FB71: FFreeVar var_F8 = "": var_D8 = "": var_108 = ""
  loc_A6FB7C: Branch loc_A6FCF5
  loc_A6FB7F: FLdRfVar var_C8
  loc_A6FB82: LitVarStr var_C4, "ImpuCuco"
  loc_A6FB87: PopAdLdVar
  loc_A6FB88: FLdRfVar var_B4
  loc_A6FB8B: FLdPr var_AC
  loc_A6FB8E:  = Me.Fields
  loc_A6FB93: FLdPr var_B4
  loc_A6FB96: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FB9B: FLdZeroAd var_C8
  loc_A6FB9E: CVarAd
  loc_A6FBA2: ImpAdCallI2 IsNull()
  loc_A6FBA7: FFree1Ad var_B4
  loc_A6FBAA: FFree1Var var_D8 = ""
  loc_A6FBAD: BranchF loc_A6FC14
  loc_A6FBB0: ILdRf var_88
  loc_A6FBB3: LitStr vbCrLf
  loc_A6FBB6: ConcatStr
  loc_A6FBB7: FStStrNoPop var_8C
  loc_A6FBBA: LitStr "La Cuenta Contable del código de Ingreso "
  loc_A6FBBD: ConcatStr
  loc_A6FBBE: CVarStr var_F8
  loc_A6FBC1: FLdRfVar var_D8
  loc_A6FBC4: FLdRfVar var_C8
  loc_A6FBC7: LitVarStr var_C4, "CodiConc"
  loc_A6FBCC: PopAdLdVar
  loc_A6FBCD: FLdRfVar var_B4
  loc_A6FBD0: FLdPr var_AC
  loc_A6FBD3:  = Me.Fields
  loc_A6FBD8: FLdPr var_B4
  loc_A6FBDB: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FBE0: FLdPr var_C8
  loc_A6FBE3:  = Me.Value
  loc_A6FBE8: FLdRfVar var_D8
  loc_A6FBEB: ConcatVar var_108
  loc_A6FBEF: LitVarStr var_E8, " NO EXISTE. Verifique..."
  loc_A6FBF4: ConcatVar var_118
  loc_A6FBF8: CStrVarTmp
  loc_A6FBF9: FStStr var_88
  loc_A6FBFC: FFree1Str var_8C
  loc_A6FBFF: FFreeAd var_B4 = ""
  loc_A6FC06: FFreeVar var_F8 = "": var_D8 = "": var_108 = ""
  loc_A6FC11: Branch loc_A6FCF5
  loc_A6FC14: FLdRfVar var_D8
  loc_A6FC17: FLdRfVar var_C8
  loc_A6FC1A: LitVarStr var_C4, "ImpuCuco"
  loc_A6FC1F: PopAdLdVar
  loc_A6FC20: FLdRfVar var_B4
  loc_A6FC23: FLdPr var_AC
  loc_A6FC26:  = Me.Fields
  loc_A6FC2B: FLdPr var_B4
  loc_A6FC2E: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FC33: FLdPr var_C8
  loc_A6FC36:  = Me.Value
  loc_A6FC3B: FLdRfVar var_D8
  loc_A6FC3E: LitVarI2 var_E8, 0
  loc_A6FC43: HardType
  loc_A6FC44: EqVarBool
  loc_A6FC46: FFreeAd var_B4 = ""
  loc_A6FC4D: FFree1Var var_D8 = ""
  loc_A6FC50: BranchF loc_A6FCF5
  loc_A6FC53: ILdRf var_88
  loc_A6FC56: LitStr vbCrLf
  loc_A6FC59: ConcatStr
  loc_A6FC5A: FStStrNoPop var_8C
  loc_A6FC5D: LitStr "La Cuenta Contable "
  loc_A6FC60: ConcatStr
  loc_A6FC61: CVarStr var_F8
  loc_A6FC64: FLdRfVar var_D8
  loc_A6FC67: FLdRfVar var_C8
  loc_A6FC6A: LitVarStr var_C4, "ActiConc"
  loc_A6FC6F: PopAdLdVar
  loc_A6FC70: FLdRfVar var_B4
  loc_A6FC73: FLdPr var_AC
  loc_A6FC76:  = Me.Fields
  loc_A6FC7B: FLdPr var_B4
  loc_A6FC7E: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FC83: FLdPr var_C8
  loc_A6FC86:  = Me.Value
  loc_A6FC8B: FLdRfVar var_D8
  loc_A6FC8E: ConcatVar var_108
  loc_A6FC92: LitVarStr var_E8, " del código de Ingreso "
  loc_A6FC97: ConcatVar var_118
  loc_A6FC9B: FLdRfVar var_140
  loc_A6FC9E: FLdRfVar var_130
  loc_A6FCA1: LitVarStr var_12C, "CodiConc"
  loc_A6FCA6: PopAdLdVar
  loc_A6FCA7: FLdRfVar var_11C
  loc_A6FCAA: FLdPr var_AC
  loc_A6FCAD:  = Me.Fields
  loc_A6FCB2: FLdPr var_11C
  loc_A6FCB5: from_stack_2 = Me.Item(from_stack_1)
  loc_A6FCBA: FLdPr var_130
  loc_A6FCBD:  = Me.Value
  loc_A6FCC2: FLdRfVar var_140
  loc_A6FCC5: ConcatVar var_150
  loc_A6FCC9: LitVarStr var_160, " NO es Imputable. Verifique..."
  loc_A6FCCE: ConcatVar var_170
  loc_A6FCD2: CStrVarTmp
  loc_A6FCD3: FStStr var_88
  loc_A6FCD6: FFree1Str var_8C
  loc_A6FCD9: FFreeAd var_B4 = "": var_C8 = "": var_11C = ""
  loc_A6FCE4: FFreeVar var_F8 = "": var_D8 = "": var_108 = "": var_118 = "": var_140 = "": var_150 = ""
  loc_A6FCF5: FLdPr var_AC
  loc_A6FCF8: Me.MoveNext
  loc_A6FCFD: Branch loc_A6FA2C
  loc_A6FD00: LitNothing
  loc_A6FD02: FStAd var_AC 
  loc_A6FD06: ILdRf var_88
  loc_A6FD09: LitStr vbNullString
  loc_A6FD0C: EqStr
  loc_A6FD0E: BranchF loc_A6FD19
  loc_A6FD11: LitStr "CALL spSubdAforo(@desde, @hasta);"
  loc_A6FD14: Call EjecutarRsCls(from_stack_1v)
  loc_A6FD19: ExitProcCbHresult
End Function

Public Function CierraCajaGarantias() 'B13B20
  'Data Table: 46D5B0
  loc_B132B0: ZeroRetVal
  loc_B132B2: LitStr "DELETE FROM subdgarantia WHERE FechCaja BETWEEN @desde AND @hasta;"
  loc_B132B5: Call EjecutarRsCls(from_stack_1v)
  loc_B132BA: LitStr "Municipalidad de Guaymallén"
  loc_B132BD: LitStr "Municipalidad de Guaymallén"
  loc_B132C0: EqStr
  loc_B132C2: BranchF loc_B13309
  loc_B132C5: LitStr "SELECT DetaTiga, ccd.ImpuCuco ImpuCucoD, cch.ImpuCuco ImpuCucoH"
  loc_B132C8: LitStr " FROM garantia_ent ge"
  loc_B132CB: ConcatStr
  loc_B132CC: FStStrNoPop var_8C
  loc_B132CF: LitStr " LEFT JOIN tipogarantia tg ON tg.CodiTiga = ge.CodiTiga AND tg.PeriInfo = YEAR(ge.FechGara)"
  loc_B132D2: ConcatStr
  loc_B132D3: FStStrNoPop var_90
  loc_B132D6: LitStr " LEFT JOIN infogov.cuentacontable AS ccd ON ccd.PeriInfo = tg.PeriInfo AND ccd.CodiCuco = tg.CodiCucoDebe"
  loc_B132D9: ConcatStr
  loc_B132DA: FStStrNoPop CierraCajaGarantias
  loc_B132DD: LitStr " LEFT JOIN infogov.cuentacontable AS cch ON cch.PeriInfo = tg.PeriInfo AND cch.CodiCuco = tg.CodiCucoHabe"
  loc_B132E0: ConcatStr
  loc_B132E1: FStStrNoPop var_98
  loc_B132E4: LitStr " WHERE ge.FechGara BETWEEN @desde AND @hasta"
  loc_B132E7: ConcatStr
  loc_B132E8: FStStrNoPop var_9C
  loc_B132EB: LitStr " AND ge.CodiTiga = 1 AND (DetaTiga IS NULL OR ccd.ImpuCuco IS NULL OR ccd.ImpuCuco = 0 OR cch.ImpuCuco IS NULL OR cch.ImpuCuco = 0);"
  loc_B132EE: ConcatStr
  loc_B132EF: FStStrNoPop var_A0
  loc_B132F2: Call EjecutarRsCls(from_stack_1v)
  loc_B132F7: FFreeStr var_8C = "": var_90 = "": CierraCajaGarantias = "": var_98 = "": var_9C = ""
  loc_B13306: Branch loc_B1334A
  loc_B13309: LitStr "SELECT DetaTiga, ccd.ImpuCuco ImpuCucoD, cch.ImpuCuco ImpuCucoH"
  loc_B1330C: LitStr " FROM garantia_ent ge"
  loc_B1330F: ConcatStr
  loc_B13310: FStStrNoPop var_8C
  loc_B13313: LitStr " LEFT JOIN tipogarantia tg ON tg.CodiTiga = ge.CodiTiga AND tg.PeriInfo = YEAR(ge.FechGara)"
  loc_B13316: ConcatStr
  loc_B13317: FStStrNoPop var_90
  loc_B1331A: LitStr " LEFT JOIN infogov.cuentacontable AS ccd ON ccd.PeriInfo = tg.PeriInfo AND ccd.CodiCuco = tg.CodiCucoDebe"
  loc_B1331D: ConcatStr
  loc_B1331E: FStStrNoPop CierraCajaGarantias
  loc_B13321: LitStr " LEFT JOIN infogov.cuentacontable AS cch ON cch.PeriInfo = tg.PeriInfo AND cch.CodiCuco = tg.CodiCucoHabe"
  loc_B13324: ConcatStr
  loc_B13325: FStStrNoPop var_98
  loc_B13328: LitStr " WHERE ge.FechGara BETWEEN @desde AND @hasta"
  loc_B1332B: ConcatStr
  loc_B1332C: FStStrNoPop var_9C
  loc_B1332F: LitStr " AND (DetaTiga IS NULL OR ccd.ImpuCuco IS NULL OR ccd.ImpuCuco = 0 OR cch.ImpuCuco IS NULL OR cch.ImpuCuco = 0);"
  loc_B13332: ConcatStr
  loc_B13333: FStStrNoPop var_A0
  loc_B13336: Call EjecutarRsCls(from_stack_1v)
  loc_B1333B: FFreeStr var_8C = "": var_90 = "": CierraCajaGarantias = "": var_98 = "": var_9C = ""
  loc_B1334A: FLdRfVar var_A4
  loc_B1334D: FLdPr Me
  loc_B13350: MemLdPr global_56
  loc_B13353:  = Me.RecordCount
  loc_B13358: ILdRf var_A4
  loc_B1335B: LitI4 0
  loc_B13360: GtI4
  loc_B13361: BranchF loc_B1364E
  loc_B13364: FLdPr Me
  loc_B13367: MemLdStr global_56
  loc_B1336A: FStAd var_A8 
  loc_B1336E: FLdPr var_A8
  loc_B13371: Me.MoveFirst
  loc_B13376: FLdRfVar var_AA
  loc_B13379: FLdPr var_A8
  loc_B1337C:  = Me.EOF
  loc_B13381: FLdI2 var_AA
  loc_B13384: NotI4
  loc_B13385: BranchF loc_B13648
  loc_B13388: FLdRfVar var_C4
  loc_B1338B: LitVarStr var_C0, "DetaTiga"
  loc_B13390: PopAdLdVar
  loc_B13391: FLdRfVar var_B0
  loc_B13394: FLdPr var_A8
  loc_B13397:  = Me.Fields
  loc_B1339C: FLdPr var_B0
  loc_B1339F: from_stack_2 = Me.Item(from_stack_1)
  loc_B133A4: FLdZeroAd var_C4
  loc_B133A7: CVarAd
  loc_B133AB: ImpAdCallI2 IsNull()
  loc_B133B0: FFree1Ad var_B0
  loc_B133B3: FFree1Var var_D4 = ""
  loc_B133B6: BranchF loc_B133D0
  loc_B133B9: ILdRf var_88
  loc_B133BC: LitStr vbCrLf
  loc_B133BF: ConcatStr
  loc_B133C0: FStStrNoPop var_8C
  loc_B133C3: LitStr "El Tipo de Garantías NO EXISTE. Verifique..."
  loc_B133C6: ConcatStr
  loc_B133C7: FStStr var_88
  loc_B133CA: FFree1Str var_8C
  loc_B133CD: Branch loc_B1363D
  loc_B133D0: FLdRfVar var_C4
  loc_B133D3: LitVarStr var_C0, "ImpuCucoD"
  loc_B133D8: PopAdLdVar
  loc_B133D9: FLdRfVar var_B0
  loc_B133DC: FLdPr var_A8
  loc_B133DF:  = Me.Fields
  loc_B133E4: FLdPr var_B0
  loc_B133E7: from_stack_2 = Me.Item(from_stack_1)
  loc_B133EC: FLdZeroAd var_C4
  loc_B133EF: CVarAd
  loc_B133F3: ImpAdCallI2 IsNull()
  loc_B133F8: FFree1Ad var_B0
  loc_B133FB: FFree1Var var_D4 = ""
  loc_B133FE: BranchF loc_B13465
  loc_B13401: ILdRf var_88
  loc_B13404: LitStr vbCrLf
  loc_B13407: ConcatStr
  loc_B13408: FStStrNoPop var_8C
  loc_B1340B: LitStr "La Cuenta Contable Debe "
  loc_B1340E: ConcatStr
  loc_B1340F: CVarStr var_E4
  loc_B13412: FLdRfVar var_D4
  loc_B13415: FLdRfVar var_C4
  loc_B13418: LitVarStr var_C0, "ImpuCucoD"
  loc_B1341D: PopAdLdVar
  loc_B1341E: FLdRfVar var_B0
  loc_B13421: FLdPr var_A8
  loc_B13424:  = Me.Fields
  loc_B13429: FLdPr var_B0
  loc_B1342C: from_stack_2 = Me.Item(from_stack_1)
  loc_B13431: FLdPr var_C4
  loc_B13434:  = Me.Value
  loc_B13439: FLdRfVar var_D4
  loc_B1343C: ConcatVar var_F4
  loc_B13440: LitVarStr var_104, " NO EXISTE. Verifique..."
  loc_B13445: ConcatVar var_114
  loc_B13449: CStrVarTmp
  loc_B1344A: FStStr var_88
  loc_B1344D: FFree1Str var_8C
  loc_B13450: FFreeAd var_B0 = ""
  loc_B13457: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_B13462: Branch loc_B1363D
  loc_B13465: FLdRfVar var_D4
  loc_B13468: FLdRfVar var_C4
  loc_B1346B: LitVarStr var_C0, "ImpuCucoD"
  loc_B13470: PopAdLdVar
  loc_B13471: FLdRfVar var_B0
  loc_B13474: FLdPr var_A8
  loc_B13477:  = Me.Fields
  loc_B1347C: FLdPr var_B0
  loc_B1347F: from_stack_2 = Me.Item(from_stack_1)
  loc_B13484: FLdPr var_C4
  loc_B13487:  = Me.Value
  loc_B1348C: FLdRfVar var_D4
  loc_B1348F: LitVarI2 var_104, 0
  loc_B13494: HardType
  loc_B13495: EqVarBool
  loc_B13497: FFreeAd var_B0 = ""
  loc_B1349E: FFree1Var var_D4 = ""
  loc_B134A1: BranchF loc_B13508
  loc_B134A4: ILdRf var_88
  loc_B134A7: LitStr vbCrLf
  loc_B134AA: ConcatStr
  loc_B134AB: FStStrNoPop var_8C
  loc_B134AE: LitStr "La Cuenta Contable Debe "
  loc_B134B1: ConcatStr
  loc_B134B2: CVarStr var_E4
  loc_B134B5: FLdRfVar var_D4
  loc_B134B8: FLdRfVar var_C4
  loc_B134BB: LitVarStr var_C0, "ImpuCucoD"
  loc_B134C0: PopAdLdVar
  loc_B134C1: FLdRfVar var_B0
  loc_B134C4: FLdPr var_A8
  loc_B134C7:  = Me.Fields
  loc_B134CC: FLdPr var_B0
  loc_B134CF: from_stack_2 = Me.Item(from_stack_1)
  loc_B134D4: FLdPr var_C4
  loc_B134D7:  = Me.Value
  loc_B134DC: FLdRfVar var_D4
  loc_B134DF: ConcatVar var_F4
  loc_B134E3: LitVarStr var_104, " NO es Imputable. Verifique..."
  loc_B134E8: ConcatVar var_114
  loc_B134EC: CStrVarTmp
  loc_B134ED: FStStr var_88
  loc_B134F0: FFree1Str var_8C
  loc_B134F3: FFreeAd var_B0 = ""
  loc_B134FA: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_B13505: Branch loc_B1363D
  loc_B13508: FLdRfVar var_C4
  loc_B1350B: LitVarStr var_C0, "ImpuCucoH"
  loc_B13510: PopAdLdVar
  loc_B13511: FLdRfVar var_B0
  loc_B13514: FLdPr var_A8
  loc_B13517:  = Me.Fields
  loc_B1351C: FLdPr var_B0
  loc_B1351F: from_stack_2 = Me.Item(from_stack_1)
  loc_B13524: FLdZeroAd var_C4
  loc_B13527: CVarAd
  loc_B1352B: ImpAdCallI2 IsNull()
  loc_B13530: FFree1Ad var_B0
  loc_B13533: FFree1Var var_D4 = ""
  loc_B13536: BranchF loc_B1359D
  loc_B13539: ILdRf var_88
  loc_B1353C: LitStr vbCrLf
  loc_B1353F: ConcatStr
  loc_B13540: FStStrNoPop var_8C
  loc_B13543: LitStr "La Cuenta Contable Haber "
  loc_B13546: ConcatStr
  loc_B13547: CVarStr var_E4
  loc_B1354A: FLdRfVar var_D4
  loc_B1354D: FLdRfVar var_C4
  loc_B13550: LitVarStr var_C0, "ImpuCucoH"
  loc_B13555: PopAdLdVar
  loc_B13556: FLdRfVar var_B0
  loc_B13559: FLdPr var_A8
  loc_B1355C:  = Me.Fields
  loc_B13561: FLdPr var_B0
  loc_B13564: from_stack_2 = Me.Item(from_stack_1)
  loc_B13569: FLdPr var_C4
  loc_B1356C:  = Me.Value
  loc_B13571: FLdRfVar var_D4
  loc_B13574: ConcatVar var_F4
  loc_B13578: LitVarStr var_104, " NO EXISTE. Verifique..."
  loc_B1357D: ConcatVar var_114
  loc_B13581: CStrVarTmp
  loc_B13582: FStStr var_88
  loc_B13585: FFree1Str var_8C
  loc_B13588: FFreeAd var_B0 = ""
  loc_B1358F: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_B1359A: Branch loc_B1363D
  loc_B1359D: FLdRfVar var_D4
  loc_B135A0: FLdRfVar var_C4
  loc_B135A3: LitVarStr var_C0, "ImpuCucoD"
  loc_B135A8: PopAdLdVar
  loc_B135A9: FLdRfVar var_B0
  loc_B135AC: FLdPr var_A8
  loc_B135AF:  = Me.Fields
  loc_B135B4: FLdPr var_B0
  loc_B135B7: from_stack_2 = Me.Item(from_stack_1)
  loc_B135BC: FLdPr var_C4
  loc_B135BF:  = Me.Value
  loc_B135C4: FLdRfVar var_D4
  loc_B135C7: LitVarI2 var_104, 0
  loc_B135CC: HardType
  loc_B135CD: EqVarBool
  loc_B135CF: FFreeAd var_B0 = ""
  loc_B135D6: FFree1Var var_D4 = ""
  loc_B135D9: BranchF loc_B1363D
  loc_B135DC: ILdRf var_88
  loc_B135DF: LitStr vbCrLf
  loc_B135E2: ConcatStr
  loc_B135E3: FStStrNoPop var_8C
  loc_B135E6: LitStr "La Cuenta Contable Haber "
  loc_B135E9: ConcatStr
  loc_B135EA: CVarStr var_E4
  loc_B135ED: FLdRfVar var_D4
  loc_B135F0: FLdRfVar var_C4
  loc_B135F3: LitVarStr var_C0, "ImpuCucoH"
  loc_B135F8: PopAdLdVar
  loc_B135F9: FLdRfVar var_B0
  loc_B135FC: FLdPr var_A8
  loc_B135FF:  = Me.Fields
  loc_B13604: FLdPr var_B0
  loc_B13607: from_stack_2 = Me.Item(from_stack_1)
  loc_B1360C: FLdPr var_C4
  loc_B1360F:  = Me.Value
  loc_B13614: FLdRfVar var_D4
  loc_B13617: ConcatVar var_F4
  loc_B1361B: LitVarStr var_104, " NO es Imputable. Verifique..."
  loc_B13620: ConcatVar var_114
  loc_B13624: CStrVarTmp
  loc_B13625: FStStr var_88
  loc_B13628: FFree1Str var_8C
  loc_B1362B: FFreeAd var_B0 = ""
  loc_B13632: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_B1363D: FLdPr var_A8
  loc_B13640: Me.MoveNext
  loc_B13645: Branch loc_B13376
  loc_B13648: LitNothing
  loc_B1364A: FStAd var_A8 
  loc_B1364E: ILdRf var_88
  loc_B13651: LitStr vbNullString
  loc_B13654: EqStr
  loc_B13656: BranchF loc_B136E9
  loc_B13659: LitStr "Municipalidad de Guaymallén"
  loc_B1365C: LitStr "Municipalidad de Guaymallénnnn"
  loc_B1365F: EqStr
  loc_B13661: BranchF loc_B136A8
  loc_B13664: LitStr "INSERT INTO subdgarantia (NumeGara, TipoGara, CodiTiga, PeriInfo, FechCaja, DebeCuco, DebeCaja, HabeCuco, HabeCaja, AltaUsua)"
  loc_B13667: LitStr " SELECT NumeGara, 'E', ge.CodiTiga, Year(FechGara), FechGara, CodiCucoDebe, ImpoGara, CodiCucoHabe, ImpoGara, '"
  loc_B1366A: ConcatStr
  loc_B1366B: FStStrNoPop var_8C
  loc_B1366E: ImpAdLdI4 MemVar_C3D03C
  loc_B13671: ConcatStr
  loc_B13672: FStStrNoPop var_90
  loc_B13675: LitStr "'"
  loc_B13678: ConcatStr
  loc_B13679: FStStrNoPop CierraCajaGarantias
  loc_B1367C: LitStr " FROM garantia_ent ge"
  loc_B1367F: ConcatStr
  loc_B13680: FStStrNoPop var_98
  loc_B13683: LitStr " INNER JOIN tipogarantia tg ON tg.PeriInfo = Year(FechGara) AND tg.CodiTiga = ge.CodiTiga"
  loc_B13686: ConcatStr
  loc_B13687: FStStrNoPop var_9C
  loc_B1368A: LitStr " WHERE FechGara BETWEEN @desde AND @hasta AND ge.CodiTiga = 1;"
  loc_B1368D: ConcatStr
  loc_B1368E: FStStrNoPop var_A0
  loc_B13691: Call EjecutarRsCls(from_stack_1v)
  loc_B13696: FFreeStr var_8C = "": var_90 = "": CierraCajaGarantias = "": var_98 = "": var_9C = ""
  loc_B136A5: Branch loc_B136E9
  loc_B136A8: LitStr "INSERT INTO subdgarantia (NumeGara, TipoGara, CodiTiga, PeriInfo, FechCaja, DebeCuco, DebeCaja, HabeCuco, HabeCaja, AltaUsua)"
  loc_B136AB: LitStr " SELECT NumeGara, 'E', ge.CodiTiga, Year(FechGara), FechGara, CodiCucoDebe, ImpoGara, CodiCucoHabe, ImpoGara, '"
  loc_B136AE: ConcatStr
  loc_B136AF: FStStrNoPop var_8C
  loc_B136B2: ImpAdLdI4 MemVar_C3D03C
  loc_B136B5: ConcatStr
  loc_B136B6: FStStrNoPop var_90
  loc_B136B9: LitStr "'"
  loc_B136BC: ConcatStr
  loc_B136BD: FStStrNoPop CierraCajaGarantias
  loc_B136C0: LitStr " FROM garantia_ent ge"
  loc_B136C3: ConcatStr
  loc_B136C4: FStStrNoPop var_98
  loc_B136C7: LitStr " INNER JOIN tipogarantia tg ON tg.PeriInfo = Year(FechGara) AND tg.CodiTiga = ge.CodiTiga"
  loc_B136CA: ConcatStr
  loc_B136CB: FStStrNoPop var_9C
  loc_B136CE: LitStr " WHERE FechGara BETWEEN @desde AND @hasta;"
  loc_B136D1: ConcatStr
  loc_B136D2: FStStrNoPop var_A0
  loc_B136D5: Call EjecutarRsCls(from_stack_1v)
  loc_B136DA: FFreeStr var_8C = "": var_90 = "": CierraCajaGarantias = "": var_98 = "": var_9C = ""
  loc_B136E9: LitStr "Municipalidad de Guaymallén"
  loc_B136EC: LitStr "Municipalidad de Guaymallénnnn"
  loc_B136EF: EqStr
  loc_B136F1: BranchF loc_B13738
  loc_B136F4: LitStr "SELECT DetaTiga, ccd.ImpuCuco ImpuCucoD, cch.ImpuCuco ImpuCucoH"
  loc_B136F7: LitStr " FROM garantia_sal gs"
  loc_B136FA: ConcatStr
  loc_B136FB: FStStrNoPop var_8C
  loc_B136FE: LitStr " LEFT JOIN tipogarantia tg ON tg.CodiTiga = gs.CodiTiga AND tg.PeriInfo = YEAR(gs.FechGara)"
  loc_B13701: ConcatStr
  loc_B13702: FStStrNoPop var_90
  loc_B13705: LitStr " LEFT JOIN infogov.cuentacontable AS ccd ON ccd.PeriInfo = tg.PeriInfo AND ccd.CodiCuco = tg.CodiCucoDebe"
  loc_B13708: ConcatStr
  loc_B13709: FStStrNoPop CierraCajaGarantias
  loc_B1370C: LitStr " LEFT JOIN infogov.cuentacontable AS cch ON cch.PeriInfo = tg.PeriInfo AND cch.CodiCuco = tg.CodiCucoHabe"
  loc_B1370F: ConcatStr
  loc_B13710: FStStrNoPop var_98
  loc_B13713: LitStr " WHERE gs.FechGara BETWEEN @desde AND @hasta"
  loc_B13716: ConcatStr
  loc_B13717: FStStrNoPop var_9C
  loc_B1371A: LitStr " AND gs.CodiTiga = 1 AND (DetaTiga IS NULL OR ccd.ImpuCuco IS NULL OR ccd.ImpuCuco = 0 OR cch.ImpuCuco IS NULL OR cch.ImpuCuco = 0);"
  loc_B1371D: ConcatStr
  loc_B1371E: FStStrNoPop var_A0
  loc_B13721: Call EjecutarRsCls(from_stack_1v)
  loc_B13726: FFreeStr var_8C = "": var_90 = "": CierraCajaGarantias = "": var_98 = "": var_9C = ""
  loc_B13735: Branch loc_B13779
  loc_B13738: LitStr "SELECT DetaTiga, ccd.ImpuCuco ImpuCucoD, cch.ImpuCuco ImpuCucoH"
  loc_B1373B: LitStr " FROM garantia_sal gs"
  loc_B1373E: ConcatStr
  loc_B1373F: FStStrNoPop var_8C
  loc_B13742: LitStr " LEFT JOIN tipogarantia tg ON tg.CodiTiga = gs.CodiTiga AND tg.PeriInfo = YEAR(gs.FechGara)"
  loc_B13745: ConcatStr
  loc_B13746: FStStrNoPop var_90
  loc_B13749: LitStr " LEFT JOIN infogov.cuentacontable AS ccd ON ccd.PeriInfo = tg.PeriInfo AND ccd.CodiCuco = tg.CodiCucoDebe"
  loc_B1374C: ConcatStr
  loc_B1374D: FStStrNoPop CierraCajaGarantias
  loc_B13750: LitStr " LEFT JOIN infogov.cuentacontable AS cch ON cch.PeriInfo = tg.PeriInfo AND cch.CodiCuco = tg.CodiCucoHabe"
  loc_B13753: ConcatStr
  loc_B13754: FStStrNoPop var_98
  loc_B13757: LitStr " WHERE gs.FechGara BETWEEN @desde AND @hasta"
  loc_B1375A: ConcatStr
  loc_B1375B: FStStrNoPop var_9C
  loc_B1375E: LitStr " AND (DetaTiga IS NULL OR ccd.ImpuCuco IS NULL OR ccd.ImpuCuco = 0 OR cch.ImpuCuco IS NULL OR cch.ImpuCuco = 0);"
  loc_B13761: ConcatStr
  loc_B13762: FStStrNoPop var_A0
  loc_B13765: Call EjecutarRsCls(from_stack_1v)
  loc_B1376A: FFreeStr var_8C = "": var_90 = "": CierraCajaGarantias = "": var_98 = "": var_9C = ""
  loc_B13779: FLdRfVar var_A4
  loc_B1377C: FLdPr Me
  loc_B1377F: MemLdPr global_56
  loc_B13782:  = Me.RecordCount
  loc_B13787: ILdRf var_A4
  loc_B1378A: LitI4 0
  loc_B1378F: GtI4
  loc_B13790: BranchF loc_B13A7D
  loc_B13793: FLdPr Me
  loc_B13796: MemLdStr global_56
  loc_B13799: FStAd var_118 
  loc_B1379D: FLdPr var_118
  loc_B137A0: Me.MoveFirst
  loc_B137A5: FLdRfVar var_AA
  loc_B137A8: FLdPr var_118
  loc_B137AB:  = Me.EOF
  loc_B137B0: FLdI2 var_AA
  loc_B137B3: NotI4
  loc_B137B4: BranchF loc_B13A77
  loc_B137B7: FLdRfVar var_C4
  loc_B137BA: LitVarStr var_C0, "DetaTiga"
  loc_B137BF: PopAdLdVar
  loc_B137C0: FLdRfVar var_B0
  loc_B137C3: FLdPr var_118
  loc_B137C6:  = Me.Fields
  loc_B137CB: FLdPr var_B0
  loc_B137CE: from_stack_2 = Me.Item(from_stack_1)
  loc_B137D3: FLdZeroAd var_C4
  loc_B137D6: CVarAd
  loc_B137DA: ImpAdCallI2 IsNull()
  loc_B137DF: FFree1Ad var_B0
  loc_B137E2: FFree1Var var_D4 = ""
  loc_B137E5: BranchF loc_B137FF
  loc_B137E8: ILdRf var_88
  loc_B137EB: LitStr vbCrLf
  loc_B137EE: ConcatStr
  loc_B137EF: FStStrNoPop var_8C
  loc_B137F2: LitStr "El Tipo de Garantías NO EXISTE. Verifique..."
  loc_B137F5: ConcatStr
  loc_B137F6: FStStr var_88
  loc_B137F9: FFree1Str var_8C
  loc_B137FC: Branch loc_B13A6C
  loc_B137FF: FLdRfVar var_C4
  loc_B13802: LitVarStr var_C0, "ImpuCucoD"
  loc_B13807: PopAdLdVar
  loc_B13808: FLdRfVar var_B0
  loc_B1380B: FLdPr var_118
  loc_B1380E:  = Me.Fields
  loc_B13813: FLdPr var_B0
  loc_B13816: from_stack_2 = Me.Item(from_stack_1)
  loc_B1381B: FLdZeroAd var_C4
  loc_B1381E: CVarAd
  loc_B13822: ImpAdCallI2 IsNull()
  loc_B13827: FFree1Ad var_B0
  loc_B1382A: FFree1Var var_D4 = ""
  loc_B1382D: BranchF loc_B13894
  loc_B13830: ILdRf var_88
  loc_B13833: LitStr vbCrLf
  loc_B13836: ConcatStr
  loc_B13837: FStStrNoPop var_8C
  loc_B1383A: LitStr "La Cuenta Contable Debe "
  loc_B1383D: ConcatStr
  loc_B1383E: CVarStr var_E4
  loc_B13841: FLdRfVar var_D4
  loc_B13844: FLdRfVar var_C4
  loc_B13847: LitVarStr var_C0, "ImpuCucoD"
  loc_B1384C: PopAdLdVar
  loc_B1384D: FLdRfVar var_B0
  loc_B13850: FLdPr var_118
  loc_B13853:  = Me.Fields
  loc_B13858: FLdPr var_B0
  loc_B1385B: from_stack_2 = Me.Item(from_stack_1)
  loc_B13860: FLdPr var_C4
  loc_B13863:  = Me.Value
  loc_B13868: FLdRfVar var_D4
  loc_B1386B: ConcatVar var_F4
  loc_B1386F: LitVarStr var_104, " NO EXISTE. Verifique..."
  loc_B13874: ConcatVar var_114
  loc_B13878: CStrVarTmp
  loc_B13879: FStStr var_88
  loc_B1387C: FFree1Str var_8C
  loc_B1387F: FFreeAd var_B0 = ""
  loc_B13886: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_B13891: Branch loc_B13A6C
  loc_B13894: FLdRfVar var_D4
  loc_B13897: FLdRfVar var_C4
  loc_B1389A: LitVarStr var_C0, "ImpuCucoD"
  loc_B1389F: PopAdLdVar
  loc_B138A0: FLdRfVar var_B0
  loc_B138A3: FLdPr var_118
  loc_B138A6:  = Me.Fields
  loc_B138AB: FLdPr var_B0
  loc_B138AE: from_stack_2 = Me.Item(from_stack_1)
  loc_B138B3: FLdPr var_C4
  loc_B138B6:  = Me.Value
  loc_B138BB: FLdRfVar var_D4
  loc_B138BE: LitVarI2 var_104, 0
  loc_B138C3: HardType
  loc_B138C4: EqVarBool
  loc_B138C6: FFreeAd var_B0 = ""
  loc_B138CD: FFree1Var var_D4 = ""
  loc_B138D0: BranchF loc_B13937
  loc_B138D3: ILdRf var_88
  loc_B138D6: LitStr vbCrLf
  loc_B138D9: ConcatStr
  loc_B138DA: FStStrNoPop var_8C
  loc_B138DD: LitStr "La Cuenta Contable Debe "
  loc_B138E0: ConcatStr
  loc_B138E1: CVarStr var_E4
  loc_B138E4: FLdRfVar var_D4
  loc_B138E7: FLdRfVar var_C4
  loc_B138EA: LitVarStr var_C0, "ImpuCucoD"
  loc_B138EF: PopAdLdVar
  loc_B138F0: FLdRfVar var_B0
  loc_B138F3: FLdPr var_118
  loc_B138F6:  = Me.Fields
  loc_B138FB: FLdPr var_B0
  loc_B138FE: from_stack_2 = Me.Item(from_stack_1)
  loc_B13903: FLdPr var_C4
  loc_B13906:  = Me.Value
  loc_B1390B: FLdRfVar var_D4
  loc_B1390E: ConcatVar var_F4
  loc_B13912: LitVarStr var_104, " NO es Imputable. Verifique..."
  loc_B13917: ConcatVar var_114
  loc_B1391B: CStrVarTmp
  loc_B1391C: FStStr var_88
  loc_B1391F: FFree1Str var_8C
  loc_B13922: FFreeAd var_B0 = ""
  loc_B13929: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_B13934: Branch loc_B13A6C
  loc_B13937: FLdRfVar var_C4
  loc_B1393A: LitVarStr var_C0, "ImpuCucoH"
  loc_B1393F: PopAdLdVar
  loc_B13940: FLdRfVar var_B0
  loc_B13943: FLdPr var_118
  loc_B13946:  = Me.Fields
  loc_B1394B: FLdPr var_B0
  loc_B1394E: from_stack_2 = Me.Item(from_stack_1)
  loc_B13953: FLdZeroAd var_C4
  loc_B13956: CVarAd
  loc_B1395A: ImpAdCallI2 IsNull()
  loc_B1395F: FFree1Ad var_B0
  loc_B13962: FFree1Var var_D4 = ""
  loc_B13965: BranchF loc_B139CC
  loc_B13968: ILdRf var_88
  loc_B1396B: LitStr vbCrLf
  loc_B1396E: ConcatStr
  loc_B1396F: FStStrNoPop var_8C
  loc_B13972: LitStr "La Cuenta Contable Haber "
  loc_B13975: ConcatStr
  loc_B13976: CVarStr var_E4
  loc_B13979: FLdRfVar var_D4
  loc_B1397C: FLdRfVar var_C4
  loc_B1397F: LitVarStr var_C0, "ImpuCucoH"
  loc_B13984: PopAdLdVar
  loc_B13985: FLdRfVar var_B0
  loc_B13988: FLdPr var_118
  loc_B1398B:  = Me.Fields
  loc_B13990: FLdPr var_B0
  loc_B13993: from_stack_2 = Me.Item(from_stack_1)
  loc_B13998: FLdPr var_C4
  loc_B1399B:  = Me.Value
  loc_B139A0: FLdRfVar var_D4
  loc_B139A3: ConcatVar var_F4
  loc_B139A7: LitVarStr var_104, " NO EXISTE. Verifique..."
  loc_B139AC: ConcatVar var_114
  loc_B139B0: CStrVarTmp
  loc_B139B1: FStStr var_88
  loc_B139B4: FFree1Str var_8C
  loc_B139B7: FFreeAd var_B0 = ""
  loc_B139BE: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_B139C9: Branch loc_B13A6C
  loc_B139CC: FLdRfVar var_D4
  loc_B139CF: FLdRfVar var_C4
  loc_B139D2: LitVarStr var_C0, "ImpuCucoD"
  loc_B139D7: PopAdLdVar
  loc_B139D8: FLdRfVar var_B0
  loc_B139DB: FLdPr var_118
  loc_B139DE:  = Me.Fields
  loc_B139E3: FLdPr var_B0
  loc_B139E6: from_stack_2 = Me.Item(from_stack_1)
  loc_B139EB: FLdPr var_C4
  loc_B139EE:  = Me.Value
  loc_B139F3: FLdRfVar var_D4
  loc_B139F6: LitVarI2 var_104, 0
  loc_B139FB: HardType
  loc_B139FC: EqVarBool
  loc_B139FE: FFreeAd var_B0 = ""
  loc_B13A05: FFree1Var var_D4 = ""
  loc_B13A08: BranchF loc_B13A6C
  loc_B13A0B: ILdRf var_88
  loc_B13A0E: LitStr vbCrLf
  loc_B13A11: ConcatStr
  loc_B13A12: FStStrNoPop var_8C
  loc_B13A15: LitStr "La Cuenta Contable Haber "
  loc_B13A18: ConcatStr
  loc_B13A19: CVarStr var_E4
  loc_B13A1C: FLdRfVar var_D4
  loc_B13A1F: FLdRfVar var_C4
  loc_B13A22: LitVarStr var_C0, "ImpuCucoH"
  loc_B13A27: PopAdLdVar
  loc_B13A28: FLdRfVar var_B0
  loc_B13A2B: FLdPr var_118
  loc_B13A2E:  = Me.Fields
  loc_B13A33: FLdPr var_B0
  loc_B13A36: from_stack_2 = Me.Item(from_stack_1)
  loc_B13A3B: FLdPr var_C4
  loc_B13A3E:  = Me.Value
  loc_B13A43: FLdRfVar var_D4
  loc_B13A46: ConcatVar var_F4
  loc_B13A4A: LitVarStr var_104, " NO es Imputable. Verifique..."
  loc_B13A4F: ConcatVar var_114
  loc_B13A53: CStrVarTmp
  loc_B13A54: FStStr var_88
  loc_B13A57: FFree1Str var_8C
  loc_B13A5A: FFreeAd var_B0 = ""
  loc_B13A61: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_B13A6C: FLdPr var_118
  loc_B13A6F: Me.MoveNext
  loc_B13A74: Branch loc_B137A5
  loc_B13A77: LitNothing
  loc_B13A79: FStAd var_118 
  loc_B13A7D: ILdRf var_88
  loc_B13A80: LitStr vbNullString
  loc_B13A83: EqStr
  loc_B13A85: BranchF loc_B13B18
  loc_B13A88: LitStr "Municipalidad de Guaymallén"
  loc_B13A8B: LitStr "Municipalidad de Guaymallénnnnn"
  loc_B13A8E: EqStr
  loc_B13A90: BranchF loc_B13AD7
  loc_B13A93: LitStr "INSERT INTO subdgarantia (NumeGara, TipoGara, CodiTiga, PeriInfo, FechCaja, DebeCuco, DebeCaja, HabeCuco, HabeCaja, AltaUsua)"
  loc_B13A96: LitStr " SELECT NumeGara, 'S', gs.CodiTiga, Year(FechGara), FechGara, CodiCucoHabe, ImpoGara, CodiCucoDebe, ImpoGara, '"
  loc_B13A99: ConcatStr
  loc_B13A9A: FStStrNoPop var_8C
  loc_B13A9D: ImpAdLdI4 MemVar_C3D03C
  loc_B13AA0: ConcatStr
  loc_B13AA1: FStStrNoPop var_90
  loc_B13AA4: LitStr "'"
  loc_B13AA7: ConcatStr
  loc_B13AA8: FStStrNoPop CierraCajaGarantias
  loc_B13AAB: LitStr " FROM garantia_sal gs"
  loc_B13AAE: ConcatStr
  loc_B13AAF: FStStrNoPop var_98
  loc_B13AB2: LitStr " INNER JOIN tipogarantia tg ON tg.PeriInfo = Year(FechGara) AND tg.CodiTiga = gs.CodiTiga"
  loc_B13AB5: ConcatStr
  loc_B13AB6: FStStrNoPop var_9C
  loc_B13AB9: LitStr " WHERE FechGara BETWEEN @desde AND @hasta AND gs.CodiTiga = 1;"
  loc_B13ABC: ConcatStr
  loc_B13ABD: FStStrNoPop var_A0
  loc_B13AC0: Call EjecutarRsCls(from_stack_1v)
  loc_B13AC5: FFreeStr var_8C = "": var_90 = "": CierraCajaGarantias = "": var_98 = "": var_9C = ""
  loc_B13AD4: Branch loc_B13B18
  loc_B13AD7: LitStr "INSERT INTO subdgarantia (NumeGara, TipoGara, CodiTiga, PeriInfo, FechCaja, DebeCuco, DebeCaja, HabeCuco, HabeCaja, AltaUsua)"
  loc_B13ADA: LitStr " SELECT NumeGara, 'S', gs.CodiTiga, Year(FechGara), FechGara, CodiCucoHabe, ImpoGara, CodiCucoDebe, ImpoGara, '"
  loc_B13ADD: ConcatStr
  loc_B13ADE: FStStrNoPop var_8C
  loc_B13AE1: ImpAdLdI4 MemVar_C3D03C
  loc_B13AE4: ConcatStr
  loc_B13AE5: FStStrNoPop var_90
  loc_B13AE8: LitStr "'"
  loc_B13AEB: ConcatStr
  loc_B13AEC: FStStrNoPop CierraCajaGarantias
  loc_B13AEF: LitStr " FROM garantia_sal gs"
  loc_B13AF2: ConcatStr
  loc_B13AF3: FStStrNoPop var_98
  loc_B13AF6: LitStr " INNER JOIN tipogarantia tg ON tg.PeriInfo = Year(FechGara) AND tg.CodiTiga = gs.CodiTiga"
  loc_B13AF9: ConcatStr
  loc_B13AFA: FStStrNoPop var_9C
  loc_B13AFD: LitStr " WHERE FechGara BETWEEN @desde AND @hasta;"
  loc_B13B00: ConcatStr
  loc_B13B01: FStStrNoPop var_A0
  loc_B13B04: Call EjecutarRsCls(from_stack_1v)
  loc_B13B09: FFreeStr var_8C = "": var_90 = "": CierraCajaGarantias = "": var_98 = "": var_9C = ""
  loc_B13B18: ExitProcCbHresult
  loc_B13B1E: GtR4
End Function

Public Function CierraCajaCargos() 'AFED44
  'Data Table: 46D5B0
  loc_AFE5C8: ZeroRetVal
  loc_AFE5CA: LitStr "DELETE FROM subdcargo WHERE FechCaja BETWEEN @desde AND @hasta;"
  loc_AFE5CD: Call EjecutarRsCls(from_stack_1v)
  loc_AFE5D2: LitStr "SELECT DetaTica, ccd.ImpuCuco ImpuCucoD, cch.ImpuCuco ImpuCucoH"
  loc_AFE5D5: LitStr " FROM cargo c"
  loc_AFE5D8: ConcatStr
  loc_AFE5D9: FStStrNoPop var_8C
  loc_AFE5DC: LitStr " LEFT JOIN tipocargo tc ON tc.CodiTica = c.CodiTica AND tc.PeriInfo = YEAR(c.FechCargo)"
  loc_AFE5DF: ConcatStr
  loc_AFE5E0: FStStrNoPop var_90
  loc_AFE5E3: LitStr " LEFT JOIN infogov.cuentacontable AS ccd ON ccd.PeriInfo = tc.PeriInfo AND ccd.CodiCuco = tc.CodiCucoDebe"
  loc_AFE5E6: ConcatStr
  loc_AFE5E7: FStStrNoPop CierraCajaCargos
  loc_AFE5EA: LitStr " LEFT JOIN infogov.cuentacontable AS cch ON cch.PeriInfo = tc.PeriInfo AND cch.CodiCuco = tc.CodiCucoHabe"
  loc_AFE5ED: ConcatStr
  loc_AFE5EE: FStStrNoPop var_98
  loc_AFE5F1: LitStr " WHERE c.FechCargo BETWEEN @desde AND @hasta"
  loc_AFE5F4: ConcatStr
  loc_AFE5F5: FStStrNoPop var_9C
  loc_AFE5F8: LitStr " AND (DetaTica IS NULL OR ccd.ImpuCuco IS NULL OR ccd.ImpuCuco = 0 OR cch.ImpuCuco IS NULL OR cch.ImpuCuco = 0);"
  loc_AFE5FB: ConcatStr
  loc_AFE5FC: FStStrNoPop var_A0
  loc_AFE5FF: Call EjecutarRsCls(from_stack_1v)
  loc_AFE604: FFreeStr var_8C = "": var_90 = "": CierraCajaCargos = "": var_98 = "": var_9C = ""
  loc_AFE613: FLdRfVar var_A4
  loc_AFE616: FLdPr Me
  loc_AFE619: MemLdPr global_56
  loc_AFE61C:  = Me.RecordCount
  loc_AFE621: ILdRf var_A4
  loc_AFE624: LitI4 0
  loc_AFE629: GtI4
  loc_AFE62A: BranchF loc_AFE917
  loc_AFE62D: FLdPr Me
  loc_AFE630: MemLdStr global_56
  loc_AFE633: FStAd var_A8 
  loc_AFE637: FLdPr var_A8
  loc_AFE63A: Me.MoveFirst
  loc_AFE63F: FLdRfVar var_AA
  loc_AFE642: FLdPr var_A8
  loc_AFE645:  = Me.EOF
  loc_AFE64A: FLdI2 var_AA
  loc_AFE64D: NotI4
  loc_AFE64E: BranchF loc_AFE911
  loc_AFE651: FLdRfVar var_C4
  loc_AFE654: LitVarStr var_C0, "DetaTica"
  loc_AFE659: PopAdLdVar
  loc_AFE65A: FLdRfVar var_B0
  loc_AFE65D: FLdPr var_A8
  loc_AFE660:  = Me.Fields
  loc_AFE665: FLdPr var_B0
  loc_AFE668: from_stack_2 = Me.Item(from_stack_1)
  loc_AFE66D: FLdZeroAd var_C4
  loc_AFE670: CVarAd
  loc_AFE674: ImpAdCallI2 IsNull()
  loc_AFE679: FFree1Ad var_B0
  loc_AFE67C: FFree1Var var_D4 = ""
  loc_AFE67F: BranchF loc_AFE699
  loc_AFE682: ILdRf var_88
  loc_AFE685: LitStr vbCrLf
  loc_AFE688: ConcatStr
  loc_AFE689: FStStrNoPop var_8C
  loc_AFE68C: LitStr "El Tipo de Cargo NO EXISTE. Verifique..."
  loc_AFE68F: ConcatStr
  loc_AFE690: FStStr var_88
  loc_AFE693: FFree1Str var_8C
  loc_AFE696: Branch loc_AFE906
  loc_AFE699: FLdRfVar var_C4
  loc_AFE69C: LitVarStr var_C0, "ImpuCucoD"
  loc_AFE6A1: PopAdLdVar
  loc_AFE6A2: FLdRfVar var_B0
  loc_AFE6A5: FLdPr var_A8
  loc_AFE6A8:  = Me.Fields
  loc_AFE6AD: FLdPr var_B0
  loc_AFE6B0: from_stack_2 = Me.Item(from_stack_1)
  loc_AFE6B5: FLdZeroAd var_C4
  loc_AFE6B8: CVarAd
  loc_AFE6BC: ImpAdCallI2 IsNull()
  loc_AFE6C1: FFree1Ad var_B0
  loc_AFE6C4: FFree1Var var_D4 = ""
  loc_AFE6C7: BranchF loc_AFE72E
  loc_AFE6CA: ILdRf var_88
  loc_AFE6CD: LitStr vbCrLf
  loc_AFE6D0: ConcatStr
  loc_AFE6D1: FStStrNoPop var_8C
  loc_AFE6D4: LitStr "La Cuenta Contable Debe "
  loc_AFE6D7: ConcatStr
  loc_AFE6D8: CVarStr var_E4
  loc_AFE6DB: FLdRfVar var_D4
  loc_AFE6DE: FLdRfVar var_C4
  loc_AFE6E1: LitVarStr var_C0, "ImpuCucoD"
  loc_AFE6E6: PopAdLdVar
  loc_AFE6E7: FLdRfVar var_B0
  loc_AFE6EA: FLdPr var_A8
  loc_AFE6ED:  = Me.Fields
  loc_AFE6F2: FLdPr var_B0
  loc_AFE6F5: from_stack_2 = Me.Item(from_stack_1)
  loc_AFE6FA: FLdPr var_C4
  loc_AFE6FD:  = Me.Value
  loc_AFE702: FLdRfVar var_D4
  loc_AFE705: ConcatVar var_F4
  loc_AFE709: LitVarStr var_104, " NO EXISTE. Verifique..."
  loc_AFE70E: ConcatVar var_114
  loc_AFE712: CStrVarTmp
  loc_AFE713: FStStr var_88
  loc_AFE716: FFree1Str var_8C
  loc_AFE719: FFreeAd var_B0 = ""
  loc_AFE720: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_AFE72B: Branch loc_AFE906
  loc_AFE72E: FLdRfVar var_D4
  loc_AFE731: FLdRfVar var_C4
  loc_AFE734: LitVarStr var_C0, "ImpuCucoD"
  loc_AFE739: PopAdLdVar
  loc_AFE73A: FLdRfVar var_B0
  loc_AFE73D: FLdPr var_A8
  loc_AFE740:  = Me.Fields
  loc_AFE745: FLdPr var_B0
  loc_AFE748: from_stack_2 = Me.Item(from_stack_1)
  loc_AFE74D: FLdPr var_C4
  loc_AFE750:  = Me.Value
  loc_AFE755: FLdRfVar var_D4
  loc_AFE758: LitVarI2 var_104, 0
  loc_AFE75D: HardType
  loc_AFE75E: EqVarBool
  loc_AFE760: FFreeAd var_B0 = ""
  loc_AFE767: FFree1Var var_D4 = ""
  loc_AFE76A: BranchF loc_AFE7D1
  loc_AFE76D: ILdRf var_88
  loc_AFE770: LitStr vbCrLf
  loc_AFE773: ConcatStr
  loc_AFE774: FStStrNoPop var_8C
  loc_AFE777: LitStr "La Cuenta Contable Debe "
  loc_AFE77A: ConcatStr
  loc_AFE77B: CVarStr var_E4
  loc_AFE77E: FLdRfVar var_D4
  loc_AFE781: FLdRfVar var_C4
  loc_AFE784: LitVarStr var_C0, "ImpuCucoD"
  loc_AFE789: PopAdLdVar
  loc_AFE78A: FLdRfVar var_B0
  loc_AFE78D: FLdPr var_A8
  loc_AFE790:  = Me.Fields
  loc_AFE795: FLdPr var_B0
  loc_AFE798: from_stack_2 = Me.Item(from_stack_1)
  loc_AFE79D: FLdPr var_C4
  loc_AFE7A0:  = Me.Value
  loc_AFE7A5: FLdRfVar var_D4
  loc_AFE7A8: ConcatVar var_F4
  loc_AFE7AC: LitVarStr var_104, " NO es Imputable. Verifique..."
  loc_AFE7B1: ConcatVar var_114
  loc_AFE7B5: CStrVarTmp
  loc_AFE7B6: FStStr var_88
  loc_AFE7B9: FFree1Str var_8C
  loc_AFE7BC: FFreeAd var_B0 = ""
  loc_AFE7C3: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_AFE7CE: Branch loc_AFE906
  loc_AFE7D1: FLdRfVar var_C4
  loc_AFE7D4: LitVarStr var_C0, "ImpuCucoH"
  loc_AFE7D9: PopAdLdVar
  loc_AFE7DA: FLdRfVar var_B0
  loc_AFE7DD: FLdPr var_A8
  loc_AFE7E0:  = Me.Fields
  loc_AFE7E5: FLdPr var_B0
  loc_AFE7E8: from_stack_2 = Me.Item(from_stack_1)
  loc_AFE7ED: FLdZeroAd var_C4
  loc_AFE7F0: CVarAd
  loc_AFE7F4: ImpAdCallI2 IsNull()
  loc_AFE7F9: FFree1Ad var_B0
  loc_AFE7FC: FFree1Var var_D4 = ""
  loc_AFE7FF: BranchF loc_AFE866
  loc_AFE802: ILdRf var_88
  loc_AFE805: LitStr vbCrLf
  loc_AFE808: ConcatStr
  loc_AFE809: FStStrNoPop var_8C
  loc_AFE80C: LitStr "La Cuenta Contable Haber "
  loc_AFE80F: ConcatStr
  loc_AFE810: CVarStr var_E4
  loc_AFE813: FLdRfVar var_D4
  loc_AFE816: FLdRfVar var_C4
  loc_AFE819: LitVarStr var_C0, "ImpuCucoH"
  loc_AFE81E: PopAdLdVar
  loc_AFE81F: FLdRfVar var_B0
  loc_AFE822: FLdPr var_A8
  loc_AFE825:  = Me.Fields
  loc_AFE82A: FLdPr var_B0
  loc_AFE82D: from_stack_2 = Me.Item(from_stack_1)
  loc_AFE832: FLdPr var_C4
  loc_AFE835:  = Me.Value
  loc_AFE83A: FLdRfVar var_D4
  loc_AFE83D: ConcatVar var_F4
  loc_AFE841: LitVarStr var_104, " NO EXISTE. Verifique..."
  loc_AFE846: ConcatVar var_114
  loc_AFE84A: CStrVarTmp
  loc_AFE84B: FStStr var_88
  loc_AFE84E: FFree1Str var_8C
  loc_AFE851: FFreeAd var_B0 = ""
  loc_AFE858: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_AFE863: Branch loc_AFE906
  loc_AFE866: FLdRfVar var_D4
  loc_AFE869: FLdRfVar var_C4
  loc_AFE86C: LitVarStr var_C0, "ImpuCucoD"
  loc_AFE871: PopAdLdVar
  loc_AFE872: FLdRfVar var_B0
  loc_AFE875: FLdPr var_A8
  loc_AFE878:  = Me.Fields
  loc_AFE87D: FLdPr var_B0
  loc_AFE880: from_stack_2 = Me.Item(from_stack_1)
  loc_AFE885: FLdPr var_C4
  loc_AFE888:  = Me.Value
  loc_AFE88D: FLdRfVar var_D4
  loc_AFE890: LitVarI2 var_104, 0
  loc_AFE895: HardType
  loc_AFE896: EqVarBool
  loc_AFE898: FFreeAd var_B0 = ""
  loc_AFE89F: FFree1Var var_D4 = ""
  loc_AFE8A2: BranchF loc_AFE906
  loc_AFE8A5: ILdRf var_88
  loc_AFE8A8: LitStr vbCrLf
  loc_AFE8AB: ConcatStr
  loc_AFE8AC: FStStrNoPop var_8C
  loc_AFE8AF: LitStr "La Cuenta Contable Haber "
  loc_AFE8B2: ConcatStr
  loc_AFE8B3: CVarStr var_E4
  loc_AFE8B6: FLdRfVar var_D4
  loc_AFE8B9: FLdRfVar var_C4
  loc_AFE8BC: LitVarStr var_C0, "ImpuCucoH"
  loc_AFE8C1: PopAdLdVar
  loc_AFE8C2: FLdRfVar var_B0
  loc_AFE8C5: FLdPr var_A8
  loc_AFE8C8:  = Me.Fields
  loc_AFE8CD: FLdPr var_B0
  loc_AFE8D0: from_stack_2 = Me.Item(from_stack_1)
  loc_AFE8D5: FLdPr var_C4
  loc_AFE8D8:  = Me.Value
  loc_AFE8DD: FLdRfVar var_D4
  loc_AFE8E0: ConcatVar var_F4
  loc_AFE8E4: LitVarStr var_104, " NO es Imputable. Verifique..."
  loc_AFE8E9: ConcatVar var_114
  loc_AFE8ED: CStrVarTmp
  loc_AFE8EE: FStStr var_88
  loc_AFE8F1: FFree1Str var_8C
  loc_AFE8F4: FFreeAd var_B0 = ""
  loc_AFE8FB: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_AFE906: FLdPr var_A8
  loc_AFE909: Me.MoveNext
  loc_AFE90E: Branch loc_AFE63F
  loc_AFE911: LitNothing
  loc_AFE913: FStAd var_A8 
  loc_AFE917: ILdRf var_88
  loc_AFE91A: LitStr vbNullString
  loc_AFE91D: EqStr
  loc_AFE91F: BranchF loc_AFE963
  loc_AFE922: LitStr "INSERT INTO subdcargo (IdCargo, IdDesca, TipoDesCargo, PeriInfo, CodiTica, NumeOrpa, FechCaja, DebeCuco, DebeCaja, HabeCuco, HabeCaja, AltaUsua)"
  loc_AFE925: LitStr " SELECT IdCargo, 0, 'E', Year(FechCargo), c.CodiTica, c.NumeOrpa, FechCargo, CodiCucoDebe, ImpoCargo, CodiCucoHabe, ImpoCargo, '"
  loc_AFE928: ConcatStr
  loc_AFE929: FStStrNoPop var_8C
  loc_AFE92C: ImpAdLdI4 MemVar_C3D03C
  loc_AFE92F: ConcatStr
  loc_AFE930: FStStrNoPop var_90
  loc_AFE933: LitStr "'"
  loc_AFE936: ConcatStr
  loc_AFE937: FStStrNoPop CierraCajaCargos
  loc_AFE93A: LitStr " FROM cargo c"
  loc_AFE93D: ConcatStr
  loc_AFE93E: FStStrNoPop var_98
  loc_AFE941: LitStr " INNER JOIN tipocargo tc ON tc.PeriInfo = /*Year(FechCargo)*/ c.PeriInfo AND tc.CodiTica = c.CodiTica"
  loc_AFE944: ConcatStr
  loc_AFE945: FStStrNoPop var_9C
  loc_AFE948: LitStr " WHERE FechCargo BETWEEN @desde AND @hasta;"
  loc_AFE94B: ConcatStr
  loc_AFE94C: FStStrNoPop var_A0
  loc_AFE94F: Call EjecutarRsCls(from_stack_1v)
  loc_AFE954: FFreeStr var_8C = "": var_90 = "": CierraCajaCargos = "": var_98 = "": var_9C = ""
  loc_AFE963: LitStr "INSERT INTO subdcargo (IdCargo, IdDesca, TipoDesCargo, PeriInfo, CodiTica, NumeOrpa, FechCaja, DebeCuco, DebeCaja, HabeCuco, HabeCaja, AltaUsua)"
  loc_AFE966: LitStr " SELECT IdCargo, 0, 'S', Year(FeanCargo), c.CodiTica, c.NumeOrpa, FeanCargo, CodiCucoHabe, ImpoCargo, CodiCucoDebe, ImpoCargo, '"
  loc_AFE969: ConcatStr
  loc_AFE96A: FStStrNoPop var_8C
  loc_AFE96D: ImpAdLdI4 MemVar_C3D03C
  loc_AFE970: ConcatStr
  loc_AFE971: FStStrNoPop var_90
  loc_AFE974: LitStr "'"
  loc_AFE977: ConcatStr
  loc_AFE978: FStStrNoPop CierraCajaCargos
  loc_AFE97B: LitStr " FROM cargo c"
  loc_AFE97E: ConcatStr
  loc_AFE97F: FStStrNoPop var_98
  loc_AFE982: LitStr " INNER JOIN tipocargo tc ON tc.PeriInfo = /*Year(FeanCargo)*/ c.PeriInfo AND tc.CodiTica = c.CodiTica"
  loc_AFE985: ConcatStr
  loc_AFE986: FStStrNoPop var_9C
  loc_AFE989: LitStr " WHERE FeanCargo BETWEEN @desde AND @hasta;"
  loc_AFE98C: ConcatStr
  loc_AFE98D: FStStrNoPop var_A0
  loc_AFE990: Call EjecutarRsCls(from_stack_1v)
  loc_AFE995: FFreeStr var_8C = "": var_90 = "": CierraCajaCargos = "": var_98 = "": var_9C = ""
  loc_AFE9A4: LitStr "SELECT DetaTica, ccd.ImpuCuco ImpuCucoD, cch.ImpuCuco ImpuCucoH"
  loc_AFE9A7: LitStr " FROM descargo d"
  loc_AFE9AA: ConcatStr
  loc_AFE9AB: FStStrNoPop var_8C
  loc_AFE9AE: LitStr " INNER JOIN cargo c ON c.IdCargo = d.IdCargo"
  loc_AFE9B1: ConcatStr
  loc_AFE9B2: FStStrNoPop var_90
  loc_AFE9B5: LitStr " LEFT JOIN tipocargo tc ON tc.CodiTica = c.CodiTica AND tc.PeriInfo = YEAR(d.FechDesca)"
  loc_AFE9B8: ConcatStr
  loc_AFE9B9: FStStrNoPop CierraCajaCargos
  loc_AFE9BC: LitStr " LEFT JOIN infogov.cuentacontable AS ccd ON ccd.PeriInfo = tc.PeriInfo AND ccd.CodiCuco = tc.CodiCucoDebe"
  loc_AFE9BF: ConcatStr
  loc_AFE9C0: FStStrNoPop var_98
  loc_AFE9C3: LitStr " LEFT JOIN infogov.cuentacontable AS cch ON cch.PeriInfo = tc.PeriInfo AND cch.CodiCuco = tc.CodiCucoHabe"
  loc_AFE9C6: ConcatStr
  loc_AFE9C7: FStStrNoPop var_9C
  loc_AFE9CA: LitStr " WHERE d.FechDesca BETWEEN @desde AND @hasta"
  loc_AFE9CD: ConcatStr
  loc_AFE9CE: FStStrNoPop var_A0
  loc_AFE9D1: LitStr " AND (DetaTica IS NULL OR ccd.ImpuCuco IS NULL OR ccd.ImpuCuco = 0 OR cch.ImpuCuco IS NULL OR cch.ImpuCuco = 0);"
  loc_AFE9D4: ConcatStr
  loc_AFE9D5: FStStrNoPop var_118
  loc_AFE9D8: Call EjecutarRsCls(from_stack_1v)
  loc_AFE9DD: FFreeStr var_8C = "": var_90 = "": CierraCajaCargos = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_AFE9EE: FLdRfVar var_A4
  loc_AFE9F1: FLdPr Me
  loc_AFE9F4: MemLdPr global_56
  loc_AFE9F7:  = Me.RecordCount
  loc_AFE9FC: ILdRf var_A4
  loc_AFE9FF: LitI4 0
  loc_AFEA04: GtI4
  loc_AFEA05: BranchF loc_AFECF2
  loc_AFEA08: FLdPr Me
  loc_AFEA0B: MemLdStr global_56
  loc_AFEA0E: FStAd var_11C 
  loc_AFEA12: FLdPr var_11C
  loc_AFEA15: Me.MoveFirst
  loc_AFEA1A: FLdRfVar var_AA
  loc_AFEA1D: FLdPr var_11C
  loc_AFEA20:  = Me.EOF
  loc_AFEA25: FLdI2 var_AA
  loc_AFEA28: NotI4
  loc_AFEA29: BranchF loc_AFECEC
  loc_AFEA2C: FLdRfVar var_C4
  loc_AFEA2F: LitVarStr var_C0, "DetaTica"
  loc_AFEA34: PopAdLdVar
  loc_AFEA35: FLdRfVar var_B0
  loc_AFEA38: FLdPr var_11C
  loc_AFEA3B:  = Me.Fields
  loc_AFEA40: FLdPr var_B0
  loc_AFEA43: from_stack_2 = Me.Item(from_stack_1)
  loc_AFEA48: FLdZeroAd var_C4
  loc_AFEA4B: CVarAd
  loc_AFEA4F: ImpAdCallI2 IsNull()
  loc_AFEA54: FFree1Ad var_B0
  loc_AFEA57: FFree1Var var_D4 = ""
  loc_AFEA5A: BranchF loc_AFEA74
  loc_AFEA5D: ILdRf var_88
  loc_AFEA60: LitStr vbCrLf
  loc_AFEA63: ConcatStr
  loc_AFEA64: FStStrNoPop var_8C
  loc_AFEA67: LitStr "El Tipo de Descargo NO EXISTE. Verifique..."
  loc_AFEA6A: ConcatStr
  loc_AFEA6B: FStStr var_88
  loc_AFEA6E: FFree1Str var_8C
  loc_AFEA71: Branch loc_AFECE1
  loc_AFEA74: FLdRfVar var_C4
  loc_AFEA77: LitVarStr var_C0, "ImpuCucoD"
  loc_AFEA7C: PopAdLdVar
  loc_AFEA7D: FLdRfVar var_B0
  loc_AFEA80: FLdPr var_11C
  loc_AFEA83:  = Me.Fields
  loc_AFEA88: FLdPr var_B0
  loc_AFEA8B: from_stack_2 = Me.Item(from_stack_1)
  loc_AFEA90: FLdZeroAd var_C4
  loc_AFEA93: CVarAd
  loc_AFEA97: ImpAdCallI2 IsNull()
  loc_AFEA9C: FFree1Ad var_B0
  loc_AFEA9F: FFree1Var var_D4 = ""
  loc_AFEAA2: BranchF loc_AFEB09
  loc_AFEAA5: ILdRf var_88
  loc_AFEAA8: LitStr vbCrLf
  loc_AFEAAB: ConcatStr
  loc_AFEAAC: FStStrNoPop var_8C
  loc_AFEAAF: LitStr "La Cuenta Contable Debe "
  loc_AFEAB2: ConcatStr
  loc_AFEAB3: CVarStr var_E4
  loc_AFEAB6: FLdRfVar var_D4
  loc_AFEAB9: FLdRfVar var_C4
  loc_AFEABC: LitVarStr var_C0, "ImpuCucoD"
  loc_AFEAC1: PopAdLdVar
  loc_AFEAC2: FLdRfVar var_B0
  loc_AFEAC5: FLdPr var_11C
  loc_AFEAC8:  = Me.Fields
  loc_AFEACD: FLdPr var_B0
  loc_AFEAD0: from_stack_2 = Me.Item(from_stack_1)
  loc_AFEAD5: FLdPr var_C4
  loc_AFEAD8:  = Me.Value
  loc_AFEADD: FLdRfVar var_D4
  loc_AFEAE0: ConcatVar var_F4
  loc_AFEAE4: LitVarStr var_104, " NO EXISTE. Verifique..."
  loc_AFEAE9: ConcatVar var_114
  loc_AFEAED: CStrVarTmp
  loc_AFEAEE: FStStr var_88
  loc_AFEAF1: FFree1Str var_8C
  loc_AFEAF4: FFreeAd var_B0 = ""
  loc_AFEAFB: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_AFEB06: Branch loc_AFECE1
  loc_AFEB09: FLdRfVar var_D4
  loc_AFEB0C: FLdRfVar var_C4
  loc_AFEB0F: LitVarStr var_C0, "ImpuCucoD"
  loc_AFEB14: PopAdLdVar
  loc_AFEB15: FLdRfVar var_B0
  loc_AFEB18: FLdPr var_11C
  loc_AFEB1B:  = Me.Fields
  loc_AFEB20: FLdPr var_B0
  loc_AFEB23: from_stack_2 = Me.Item(from_stack_1)
  loc_AFEB28: FLdPr var_C4
  loc_AFEB2B:  = Me.Value
  loc_AFEB30: FLdRfVar var_D4
  loc_AFEB33: LitVarI2 var_104, 0
  loc_AFEB38: HardType
  loc_AFEB39: EqVarBool
  loc_AFEB3B: FFreeAd var_B0 = ""
  loc_AFEB42: FFree1Var var_D4 = ""
  loc_AFEB45: BranchF loc_AFEBAC
  loc_AFEB48: ILdRf var_88
  loc_AFEB4B: LitStr vbCrLf
  loc_AFEB4E: ConcatStr
  loc_AFEB4F: FStStrNoPop var_8C
  loc_AFEB52: LitStr "La Cuenta Contable Debe "
  loc_AFEB55: ConcatStr
  loc_AFEB56: CVarStr var_E4
  loc_AFEB59: FLdRfVar var_D4
  loc_AFEB5C: FLdRfVar var_C4
  loc_AFEB5F: LitVarStr var_C0, "ImpuCucoD"
  loc_AFEB64: PopAdLdVar
  loc_AFEB65: FLdRfVar var_B0
  loc_AFEB68: FLdPr var_11C
  loc_AFEB6B:  = Me.Fields
  loc_AFEB70: FLdPr var_B0
  loc_AFEB73: from_stack_2 = Me.Item(from_stack_1)
  loc_AFEB78: FLdPr var_C4
  loc_AFEB7B:  = Me.Value
  loc_AFEB80: FLdRfVar var_D4
  loc_AFEB83: ConcatVar var_F4
  loc_AFEB87: LitVarStr var_104, " NO es Imputable. Verifique..."
  loc_AFEB8C: ConcatVar var_114
  loc_AFEB90: CStrVarTmp
  loc_AFEB91: FStStr var_88
  loc_AFEB94: FFree1Str var_8C
  loc_AFEB97: FFreeAd var_B0 = ""
  loc_AFEB9E: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_AFEBA9: Branch loc_AFECE1
  loc_AFEBAC: FLdRfVar var_C4
  loc_AFEBAF: LitVarStr var_C0, "ImpuCucoH"
  loc_AFEBB4: PopAdLdVar
  loc_AFEBB5: FLdRfVar var_B0
  loc_AFEBB8: FLdPr var_11C
  loc_AFEBBB:  = Me.Fields
  loc_AFEBC0: FLdPr var_B0
  loc_AFEBC3: from_stack_2 = Me.Item(from_stack_1)
  loc_AFEBC8: FLdZeroAd var_C4
  loc_AFEBCB: CVarAd
  loc_AFEBCF: ImpAdCallI2 IsNull()
  loc_AFEBD4: FFree1Ad var_B0
  loc_AFEBD7: FFree1Var var_D4 = ""
  loc_AFEBDA: BranchF loc_AFEC41
  loc_AFEBDD: ILdRf var_88
  loc_AFEBE0: LitStr vbCrLf
  loc_AFEBE3: ConcatStr
  loc_AFEBE4: FStStrNoPop var_8C
  loc_AFEBE7: LitStr "La Cuenta Contable Haber "
  loc_AFEBEA: ConcatStr
  loc_AFEBEB: CVarStr var_E4
  loc_AFEBEE: FLdRfVar var_D4
  loc_AFEBF1: FLdRfVar var_C4
  loc_AFEBF4: LitVarStr var_C0, "ImpuCucoH"
  loc_AFEBF9: PopAdLdVar
  loc_AFEBFA: FLdRfVar var_B0
  loc_AFEBFD: FLdPr var_11C
  loc_AFEC00:  = Me.Fields
  loc_AFEC05: FLdPr var_B0
  loc_AFEC08: from_stack_2 = Me.Item(from_stack_1)
  loc_AFEC0D: FLdPr var_C4
  loc_AFEC10:  = Me.Value
  loc_AFEC15: FLdRfVar var_D4
  loc_AFEC18: ConcatVar var_F4
  loc_AFEC1C: LitVarStr var_104, " NO EXISTE. Verifique..."
  loc_AFEC21: ConcatVar var_114
  loc_AFEC25: CStrVarTmp
  loc_AFEC26: FStStr var_88
  loc_AFEC29: FFree1Str var_8C
  loc_AFEC2C: FFreeAd var_B0 = ""
  loc_AFEC33: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_AFEC3E: Branch loc_AFECE1
  loc_AFEC41: FLdRfVar var_D4
  loc_AFEC44: FLdRfVar var_C4
  loc_AFEC47: LitVarStr var_C0, "ImpuCucoD"
  loc_AFEC4C: PopAdLdVar
  loc_AFEC4D: FLdRfVar var_B0
  loc_AFEC50: FLdPr var_11C
  loc_AFEC53:  = Me.Fields
  loc_AFEC58: FLdPr var_B0
  loc_AFEC5B: from_stack_2 = Me.Item(from_stack_1)
  loc_AFEC60: FLdPr var_C4
  loc_AFEC63:  = Me.Value
  loc_AFEC68: FLdRfVar var_D4
  loc_AFEC6B: LitVarI2 var_104, 0
  loc_AFEC70: HardType
  loc_AFEC71: EqVarBool
  loc_AFEC73: FFreeAd var_B0 = ""
  loc_AFEC7A: FFree1Var var_D4 = ""
  loc_AFEC7D: BranchF loc_AFECE1
  loc_AFEC80: ILdRf var_88
  loc_AFEC83: LitStr vbCrLf
  loc_AFEC86: ConcatStr
  loc_AFEC87: FStStrNoPop var_8C
  loc_AFEC8A: LitStr "La Cuenta Contable Haber "
  loc_AFEC8D: ConcatStr
  loc_AFEC8E: CVarStr var_E4
  loc_AFEC91: FLdRfVar var_D4
  loc_AFEC94: FLdRfVar var_C4
  loc_AFEC97: LitVarStr var_C0, "ImpuCucoH"
  loc_AFEC9C: PopAdLdVar
  loc_AFEC9D: FLdRfVar var_B0
  loc_AFECA0: FLdPr var_11C
  loc_AFECA3:  = Me.Fields
  loc_AFECA8: FLdPr var_B0
  loc_AFECAB: from_stack_2 = Me.Item(from_stack_1)
  loc_AFECB0: FLdPr var_C4
  loc_AFECB3:  = Me.Value
  loc_AFECB8: FLdRfVar var_D4
  loc_AFECBB: ConcatVar var_F4
  loc_AFECBF: LitVarStr var_104, " NO es Imputable. Verifique..."
  loc_AFECC4: ConcatVar var_114
  loc_AFECC8: CStrVarTmp
  loc_AFECC9: FStStr var_88
  loc_AFECCC: FFree1Str var_8C
  loc_AFECCF: FFreeAd var_B0 = ""
  loc_AFECD6: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_AFECE1: FLdPr var_11C
  loc_AFECE4: Me.MoveNext
  loc_AFECE9: Branch loc_AFEA1A
  loc_AFECEC: LitNothing
  loc_AFECEE: FStAd var_11C 
  loc_AFECF2: LitStr "INSERT INTO subdcargo (IdCargo, IdDesca, TipoDesCargo, PeriInfo, CodiTica, NumeOrpa, FechCaja, DebeCuco, DebeCaja, HabeCuco, HabeCaja, AltaUsua)"
  loc_AFECF5: LitStr " SELECT d.IdCargo, d.IdDesca, 'S', Year(FechDesca), c.CodiTica, c.NumeOrpa, FechDesca, CodiCucoHabe, ImpoDesca, CodiCucoDebe, ImpoDesca, '"
  loc_AFECF8: ConcatStr
  loc_AFECF9: FStStrNoPop var_8C
  loc_AFECFC: ImpAdLdI4 MemVar_C3D03C
  loc_AFECFF: ConcatStr
  loc_AFED00: FStStrNoPop var_90
  loc_AFED03: LitStr "'"
  loc_AFED06: ConcatStr
  loc_AFED07: FStStrNoPop CierraCajaCargos
  loc_AFED0A: LitStr " FROM descargo d"
  loc_AFED0D: ConcatStr
  loc_AFED0E: FStStrNoPop var_98
  loc_AFED11: LitStr " INNER JOIN cargo c ON c.IdCargo = d.IdCargo"
  loc_AFED14: ConcatStr
  loc_AFED15: FStStrNoPop var_9C
  loc_AFED18: LitStr " INNER JOIN tipocargo tc ON tc.PeriInfo = /*Year(FechDesca)*/ c.PeriInfo AND tc.CodiTica = c.CodiTica"
  loc_AFED1B: ConcatStr
  loc_AFED1C: FStStrNoPop var_A0
  loc_AFED1F: LitStr " WHERE FechDesca BETWEEN @desde AND @hasta;"
  loc_AFED22: ConcatStr
  loc_AFED23: FStStrNoPop var_118
  loc_AFED26: Call EjecutarRsCls(from_stack_1v)
  loc_AFED2B: FFreeStr var_8C = "": var_90 = "": CierraCajaCargos = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_AFED3C: ExitProcCbHresult
  loc_AFED42: CExtInstUnk
End Function

Private Function Proc_5_47_971C80() '971C80
  'Data Table: 46D5B0
  loc_971C5C: LitStr "Primary"
  loc_971C5F: FLdPr Me
  loc_971C62: LateIdLdVar var_94 DispID_4 0
  loc_971C69: CastAdVar Me
  loc_971C6D: FStAdFunc var_98
  loc_971C70: FLdPr var_98
  loc_971C78: FFree1Ad var_98
  loc_971C7B: FFree1Var var_94 = ""
  loc_971C7E: ExitProcHresult
End Function

Private Function Proc_5_48_9677AC(arg_C) '9677AC
  'Data Table: 46D5B0
  loc_967790: ILdI4 arg_C
  loc_967793: FStStrCopy var_88
  loc_967796: ILdRf var_88
  loc_967799: LitStr "Primary"
  loc_96779C: EqStr
  loc_96779E: BranchF loc_9677AB
  loc_9677A1: FLdPr Me
  loc_9677A4: MemLdStr RsFrm
  loc_9677A7: IStAd
  loc_9677AB: ExitProcHresult
End Function

Private Function Proc_5_49_A44264(arg_10, arg_14, arg_18, arg_1C, arg_20) 'A44264
  'Data Table: 46D5B0
  loc_A4407C: ILdRf arg_14
  loc_A4407F: FStStrCopy var_88
  loc_A44082: ILdRf arg_18
  loc_A44085: FStStrCopy var_8C
  loc_A44088: ILdRf arg_1C
  loc_A4408B: FStStrCopy var_90
  loc_A4408E: ILdRf arg_28
  loc_A44091: FStStrCopy var_94
  loc_A44094: ILdRf arg_2C
  loc_A44097: FStStrCopy var_98
  loc_A4409A: LitStr "START TRANSACTION;"
  loc_A4409D: Call EjecutarRsCls2(from_stack_1v)
  loc_A440A2: OnErrorGoto loc_A441DC
  loc_A440A5: LitStr "INSERT INTO contpres.detactrl (CodiDect, CodiCtrl, PeriInfo, FechDect, Cod1Dect, Det1Dect, Imp1Dect, Cod2Dect, Det2Dect, Imp2Dect, TituDect)"
  loc_A440A8: LitStr " VALUES ((SELECT IFNULL(Max(CodiDect),0)+1 FROM detactrl tmp), '"
  loc_A440AB: ConcatStr
  loc_A440AC: FStStrNoPop var_9C
  loc_A440AF: FLdUI1
  loc_A440B3: CStrI2
  loc_A440B5: FStStrNoPop var_A0
  loc_A440B8: ConcatStr
  loc_A440B9: FStStrNoPop var_A4
  loc_A440BC: LitStr "', '"
  loc_A440BF: ConcatStr
  loc_A440C0: FStStrNoPop var_A8
  loc_A440C3: FLdI2 arg_10
  loc_A440C6: CStrUI1
  loc_A440C8: FStStrNoPop var_AC
  loc_A440CB: ConcatStr
  loc_A440CC: FStStrNoPop var_B0
  loc_A440CF: LitStr "', "
  loc_A440D2: ConcatStr
  loc_A440D3: FStStrNoPop var_B4
  loc_A440D6: ILdRf var_88
  loc_A440D9: ConcatStr
  loc_A440DA: FStStrNoPop var_B8
  loc_A440DD: LitStr ", '"
  loc_A440E0: ConcatStr
  loc_A440E1: FStStrNoPop var_BC
  loc_A440E4: ILdRf var_8C
  loc_A440E7: ConcatStr
  loc_A440E8: FStStrNoPop var_C0
  loc_A440EB: LitStr "', '"
  loc_A440EE: ConcatStr
  loc_A440EF: FStStrNoPop var_C4
  loc_A440F2: ILdRf var_90
  loc_A440F5: ConcatStr
  loc_A440F6: FStStrNoPop var_C8
  loc_A440F9: LitStr "', '"
  loc_A440FC: ConcatStr
  loc_A440FD: FStStrNoPop var_D0
  loc_A44100: LitI4 0
  loc_A44105: LitI4 -1
  loc_A4410A: LitI4 1
  loc_A4410F: LitStr "."
  loc_A44112: LitStr ","
  loc_A44115: FLdFPR8 arg_20
  loc_A44118: CStrR8
  loc_A4411A: FStStrNoPop var_CC
  loc_A4411D: ImpAdCallI2 Replace(, , , , , )
  loc_A44122: FStStrNoPop var_D4
  loc_A44125: ConcatStr
  loc_A44126: FStStrNoPop var_D8
  loc_A44129: LitStr "', '"
  loc_A4412C: ConcatStr
  loc_A4412D: FStStrNoPop var_DC
  loc_A44130: ILdRf var_94
  loc_A44133: ConcatStr
  loc_A44134: FStStrNoPop var_E0
  loc_A44137: LitStr "', '"
  loc_A4413A: ConcatStr
  loc_A4413B: FStStrNoPop var_E4
  loc_A4413E: ILdRf var_98
  loc_A44141: ConcatStr
  loc_A44142: FStStrNoPop var_E8
  loc_A44145: LitStr "', '"
  loc_A44148: ConcatStr
  loc_A44149: FStStrNoPop var_F0
  loc_A4414C: LitI4 0
  loc_A44151: LitI4 -1
  loc_A44156: LitI4 1
  loc_A4415B: LitStr "."
  loc_A4415E: LitStr ","
  loc_A44161: FLdFPR8 arg_30
  loc_A44164: CStrR8
  loc_A44166: FStStrNoPop var_EC
  loc_A44169: ImpAdCallI2 Replace(, , , , , )
  loc_A4416E: FStStrNoPop var_F4
  loc_A44171: ConcatStr
  loc_A44172: FStStrNoPop var_F8
  loc_A44175: LitStr "', '"
  loc_A44178: ConcatStr
  loc_A44179: FStStrNoPop var_FC
  loc_A4417C: FLdUI1
  loc_A44180: CStrI2
  loc_A44182: FStStrNoPop var_100
  loc_A44185: ConcatStr
  loc_A44186: FStStrNoPop var_104
  loc_A44189: LitStr "');"
  loc_A4418C: ConcatStr
  loc_A4418D: FStStrNoPop var_108
  loc_A44190: Call EjecutarRsCls2(from_stack_1v)
  loc_A44195: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_A441D0: LitStr "COMMIT;"
  loc_A441D3: Call EjecutarRsCls2(from_stack_1v)
  loc_A441D8: On Error GoTo 0
  loc_A441DB: ExitProcHresult
  loc_A441DC: LitStr "ROLLBACK;"
  loc_A441DF: Call EjecutarRsCls2(from_stack_1v)
  loc_A441E4: LitVar_Missing var_184
  loc_A441E7: LitVar_Missing var_164
  loc_A441EA: LitVar_Missing var_144
  loc_A441ED: LitI4 0
  loc_A441F2: LitStr "Error "
  loc_A441F5: FLdRfVar var_110
  loc_A441F8: ImpAdCallI2 Err 'rtcErrObj
  loc_A441FD: FStAdFunc var_10C
  loc_A44200: FLdPr var_10C
  loc_A44203:  = Err.Number
  loc_A44208: ILdRf var_110
  loc_A4420B: CStrI4
  loc_A4420D: FStStrNoPop var_9C
  loc_A44210: ConcatStr
  loc_A44211: FStStrNoPop var_A0
  loc_A44214: LitStr " ("
  loc_A44217: ConcatStr
  loc_A44218: FStStrNoPop var_A8
  loc_A4421B: FLdRfVar var_A4
  loc_A4421E: ImpAdCallI2 Err 'rtcErrObj
  loc_A44223: FStAdFunc var_114
  loc_A44226: FLdPr var_114
  loc_A44229:  = Err.Description
  loc_A4422E: ILdRf var_A4
  loc_A44231: ConcatStr
  loc_A44232: FStStrNoPop var_AC
  loc_A44235: LitStr ") in procedure AddNewDetactrl of Módulo de clase clscaja"
  loc_A44238: ConcatStr
  loc_A44239: CVarStr var_124
  loc_A4423C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_A44241: FFreeStr var_9C = "": var_A0 = "": var_A8 = "": var_A4 = ""
  loc_A4424E: FFreeAd var_10C = ""
  loc_A44255: FFreeVar var_124 = "": var_144 = "": var_164 = ""
  loc_A44260: ExitProcHresult
  loc_A44261: FStFPR8 arg_36FF
End Function
