VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsBarrio"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0B094
  'Data Table: 429834
  loc_A0B058: FLdRfVar var_8C
  loc_A0B05B: FLdRfVar var_88
  loc_A0B05E: FLdPr Me
  loc_A0B061: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A0B066: FLdPr var_88
  loc_A0B069:  = Me.RecordCount
  loc_A0B06E: ILdRf var_8C
  loc_A0B071: LitI4 0
  loc_A0B076: GtI4
  loc_A0B077: FFree1Ad var_88
  loc_A0B07A: BranchF loc_A0B093
  loc_A0B07D: FLdRfVar var_88
  loc_A0B080: FLdPr Me
  loc_A0B083: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A0B088: FLdPr var_88
  loc_A0B08B: Me.MoveFirst
  loc_A0B090: FFree1Ad var_88
  loc_A0B093: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0B024
  'Data Table: 429834
  loc_A0AFE8: FLdRfVar var_8C
  loc_A0AFEB: FLdRfVar var_88
  loc_A0AFEE: FLdPr Me
  loc_A0AFF1: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A0AFF6: FLdPr var_88
  loc_A0AFF9:  = Me.RecordCount
  loc_A0AFFE: ILdRf var_8C
  loc_A0B001: LitI4 0
  loc_A0B006: GtI4
  loc_A0B007: FFree1Ad var_88
  loc_A0B00A: BranchF loc_A0B023
  loc_A0B00D: FLdRfVar var_88
  loc_A0B010: FLdPr Me
  loc_A0B013: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A0B018: FLdPr var_88
  loc_A0B01B: Me.MoveLast
  loc_A0B020: FFree1Ad var_88
  loc_A0B023: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9F0BC
  'Data Table: 429834
  loc_A9F000: FLdRfVar var_8A
  loc_A9F003: FLdRfVar var_88
  loc_A9F006: FLdPr Me
  loc_A9F009: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A9F00E: FLdPr var_88
  loc_A9F011:  = Me.EOF
  loc_A9F016: FLdI2 var_8A
  loc_A9F019: NotI4
  loc_A9F01A: FLdRfVar var_94
  loc_A9F01D: FLdRfVar var_90
  loc_A9F020: FLdPr Me
  loc_A9F023: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A9F028: FLdPr var_90
  loc_A9F02B:  = Me.RecordCount
  loc_A9F030: ILdRf var_94
  loc_A9F033: LitI4 0
  loc_A9F038: GtI4
  loc_A9F039: AndI4
  loc_A9F03A: FFreeAd var_88 = ""
  loc_A9F041: BranchF loc_A9F05A
  loc_A9F044: FLdRfVar var_88
  loc_A9F047: FLdPr Me
  loc_A9F04A: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A9F04F: FLdPr var_88
  loc_A9F052: Me.MoveNext
  loc_A9F057: FFree1Ad var_88
  loc_A9F05A: FLdRfVar var_8A
  loc_A9F05D: FLdRfVar var_88
  loc_A9F060: FLdPr Me
  loc_A9F063: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A9F068: FLdPr var_88
  loc_A9F06B:  = Me.EOF
  loc_A9F070: FLdI2 var_8A
  loc_A9F073: FLdRfVar var_94
  loc_A9F076: FLdRfVar var_90
  loc_A9F079: FLdPr Me
  loc_A9F07C: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A9F081: FLdPr var_90
  loc_A9F084:  = Me.RecordCount
  loc_A9F089: ILdRf var_94
  loc_A9F08C: LitI4 0
  loc_A9F091: GtI4
  loc_A9F092: AndI4
  loc_A9F093: FFreeAd var_88 = ""
  loc_A9F09A: BranchF loc_A9F0B8
  loc_A9F09D: ImpAdCallFPR4 Beep()
  loc_A9F0A2: FLdRfVar var_88
  loc_A9F0A5: FLdPr Me
  loc_A9F0A8: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A9F0AD: FLdPr var_88
  loc_A9F0B0: Me.MoveLast
  loc_A9F0B5: FFree1Ad var_88
  loc_A9F0B8: ExitProcHresult
  loc_A9F0B9: FStVarCopyObj arg_373
End Sub

Public Sub MoveSiguiente() '9D4514
  'Data Table: 429834
  loc_9D44FC: FLdRfVar var_88
  loc_9D44FF: FLdPr Me
  loc_9D4502: from_stack_1v = clsBarrio.global_4364220Get()
  loc_9D4507: FLdPr var_88
  loc_9D450A: Me.MoveNext
  loc_9D450F: FFree1Ad var_88
  loc_9D4512: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E9BCC
  'Data Table: 429834
  loc_9E9BAC: LitVar_Missing var_98
  loc_9E9BAF: PopAdLdVar
  loc_9E9BB0: ILdI2 iValor
  loc_9E9BB3: CI4UI1
  loc_9E9BB4: FLdRfVar var_88
  loc_9E9BB7: FLdPr Me
  loc_9E9BBA: from_stack_1v = clsBarrio.global_4364220Get()
  loc_9E9BBF: FLdPr var_88
  loc_9E9BC2: Me.Move from_stack_1, from_stack_2
  loc_9E9BC7: FFree1Ad var_88
  loc_9E9BCA: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9F1B0
  'Data Table: 429834
  loc_A9F0F4: FLdRfVar var_8A
  loc_A9F0F7: FLdRfVar var_88
  loc_A9F0FA: FLdPr Me
  loc_A9F0FD: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A9F102: FLdPr var_88
  loc_A9F105:  = Me.BOF
  loc_A9F10A: FLdI2 var_8A
  loc_A9F10D: NotI4
  loc_A9F10E: FLdRfVar var_94
  loc_A9F111: FLdRfVar var_90
  loc_A9F114: FLdPr Me
  loc_A9F117: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A9F11C: FLdPr var_90
  loc_A9F11F:  = Me.RecordCount
  loc_A9F124: ILdRf var_94
  loc_A9F127: LitI4 0
  loc_A9F12C: GtI4
  loc_A9F12D: AndI4
  loc_A9F12E: FFreeAd var_88 = ""
  loc_A9F135: BranchF loc_A9F14E
  loc_A9F138: FLdRfVar var_88
  loc_A9F13B: FLdPr Me
  loc_A9F13E: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A9F143: FLdPr var_88
  loc_A9F146: Me.MovePrevious
  loc_A9F14B: FFree1Ad var_88
  loc_A9F14E: FLdRfVar var_8A
  loc_A9F151: FLdRfVar var_88
  loc_A9F154: FLdPr Me
  loc_A9F157: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A9F15C: FLdPr var_88
  loc_A9F15F:  = Me.BOF
  loc_A9F164: FLdI2 var_8A
  loc_A9F167: FLdRfVar var_94
  loc_A9F16A: FLdRfVar var_90
  loc_A9F16D: FLdPr Me
  loc_A9F170: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A9F175: FLdPr var_90
  loc_A9F178:  = Me.RecordCount
  loc_A9F17D: ILdRf var_94
  loc_A9F180: LitI4 0
  loc_A9F185: GtI4
  loc_A9F186: AndI4
  loc_A9F187: FFreeAd var_88 = ""
  loc_A9F18E: BranchF loc_A9F1AC
  loc_A9F191: ImpAdCallFPR4 Beep()
  loc_A9F196: FLdRfVar var_88
  loc_A9F199: FLdPr Me
  loc_A9F19C: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A9F1A1: FLdPr var_88
  loc_A9F1A4: Me.MoveFirst
  loc_A9F1A9: FFree1Ad var_88
  loc_A9F1AC: ExitProcHresult
End Sub

Public Property Get EOF() '9FBC34
  'Data Table: 429834
  loc_9FBC0C: FLdRfVar var_8E
  loc_9FBC0F: FLdRfVar var_8C
  loc_9FBC12: FLdPr Me
  loc_9FBC15: from_stack_1v = clsBarrio.global_4364220Get()
  loc_9FBC1A: FLdPr var_8C
  loc_9FBC1D:  = Me.EOF
  loc_9FBC22: FLdI2 var_8E
  loc_9FBC25: FStI2 var_86
  loc_9FBC28: FFree1Ad var_8C
  loc_9FBC2B: ExitProcCbHresult
  loc_9FBC31: LitStr "??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@??@"
End Sub

Public Property Get BOF() '9FBDA4
  'Data Table: 429834
  loc_9FBD7C: FLdRfVar var_8E
  loc_9FBD7F: FLdRfVar var_8C
  loc_9FBD82: FLdPr Me
  loc_9FBD85: from_stack_1v = clsBarrio.global_4364220Get()
  loc_9FBD8A: FLdPr var_8C
  loc_9FBD8D:  = Me.BOF
  loc_9FBD92: FLdI2 var_8E
  loc_9FBD95: FStI2 var_86
  loc_9FBD98: FFree1Ad var_8C
  loc_9FBD9B: ExitProcCbHresult
  loc_9FBDA1: LitVar_Missing BOF
End Sub

Public Sub Sort(sOrden) '9E299C
  'Data Table: 429834
  loc_9E2980: ILdI4 sOrden
  loc_9E2983: FLdRfVar var_88
  loc_9E2986: FLdPr Me
  loc_9E2989: from_stack_1v = clsBarrio.global_4364220Get()
  loc_9E298E: FLdPr var_88
  loc_9E2991: Me.Sort = from_stack_1
  loc_9E2996: FFree1Ad var_88
  loc_9E2999: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9E9A28
  'Data Table: 429834
  loc_9E9A08: ILdI4 sCriterio
  loc_9E9A0B: CVarStr var_98
  loc_9E9A0E: PopAdLdVar
  loc_9E9A0F: FLdRfVar var_88
  loc_9E9A12: FLdPr Me
  loc_9E9A15: from_stack_1v = clsBarrio.global_4364220Get()
  loc_9E9A1A: FLdPr var_88
  loc_9E9A1D: Me.Filter = from_stack_1
  loc_9E9A22: FFree1Ad var_88
  loc_9E9A25: ExitProcHresult
End Sub

Public Sub Find(sFind) '9FBA0C
  'Data Table: 429834
  loc_9FB9E4: LitVar_Missing var_98
  loc_9FB9E7: PopAdLdVar
  loc_9FB9E8: LitI4 1
  loc_9FB9ED: LitI4 0
  loc_9FB9F2: ILdI4 sFind
  loc_9FB9F5: FLdRfVar var_88
  loc_9FB9F8: FLdPr Me
  loc_9FB9FB: from_stack_1v = clsBarrio.global_4364220Get()
  loc_9FBA00: FLdPr var_88
  loc_9FBA03: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9FBA08: FFree1Ad var_88
  loc_9FBA0B: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9FB954
  'Data Table: 429834
  loc_9FB92C: FLdRfVar var_90
  loc_9FB92F: FLdRfVar var_8C
  loc_9FB932: FLdPr Me
  loc_9FB935: from_stack_1v = clsBarrio.global_4364220Get()
  loc_9FB93A: FLdPr var_8C
  loc_9FB93D:  = Me.AbsolutePosition
  loc_9FB942: ILdRf var_90
  loc_9FB945: FStR4 var_88
  loc_9FB948: FFree1Ad var_8C
  loc_9FB94B: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9FB840
  'Data Table: 429834
  loc_9FB818: FLdRfVar var_90
  loc_9FB81B: FLdRfVar var_8C
  loc_9FB81E: FLdPr Me
  loc_9FB821: from_stack_1v = clsBarrio.global_4364220Get()
  loc_9FB826: FLdPr var_8C
  loc_9FB829:  = Me.RecordCount
  loc_9FB82E: ILdRf var_90
  loc_9FB831: FStR4 var_88
  loc_9FB834: FFree1Ad var_8C
  loc_9FB837: ExitProcCbHresult
  loc_9FB83D: Ary1StCy
  loc_9FB83E: PopFPR8
End Sub

Public Sub AddNew(CodiBarr, DetaBarr, CodiLoca) 'A8BA48
  'Data Table: 429834
  loc_A8B9C0: ILdRf DetaBarr
  loc_A8B9C3: FStStrCopy var_88
  loc_A8B9C6: FLdRfVar var_8C
  loc_A8B9C9: FLdI2 CodiBarr
  loc_A8B9CC: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A8B9D1: ILdRf var_8C
  loc_A8B9D4: LitStr vbNullString
  loc_A8B9D7: NeStr
  loc_A8B9D9: FFree1Str var_8C
  loc_A8B9DC: BranchF loc_A8B9EA
  loc_A8B9DF: LitStr "El BARRIO YA EXISTE. Reintente..."
  loc_A8B9E2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8B9E7: Branch loc_A8BA46
  loc_A8B9EA: LitStr "INSERT INTO infogov.barrio (CodiBarr, DetaBarr, CodiLoca) VALUES ("
  loc_A8B9ED: FLdI2 CodiBarr
  loc_A8B9F0: CStrUI1
  loc_A8B9F2: FStStrNoPop var_8C
  loc_A8B9F5: ConcatStr
  loc_A8B9F6: FStStrNoPop var_90
  loc_A8B9F9: LitStr ",'"
  loc_A8B9FC: ConcatStr
  loc_A8B9FD: FStStrNoPop var_94
  loc_A8BA00: ILdRf var_88
  loc_A8BA03: ConcatStr
  loc_A8BA04: FStStrNoPop var_98
  loc_A8BA07: LitStr "',"
  loc_A8BA0A: ConcatStr
  loc_A8BA0B: FStStrNoPop var_9C
  loc_A8BA0E: FLdI2 CodiLoca
  loc_A8BA11: CStrUI1
  loc_A8BA13: FStStrNoPop var_A0
  loc_A8BA16: ConcatStr
  loc_A8BA17: FStStrNoPop var_A4
  loc_A8BA1A: LitStr ");"
  loc_A8BA1D: ConcatStr
  loc_A8BA1E: FStStrNoPop var_A8
  loc_A8BA21: Call EjecutarRs2(from_stack_1v)
  loc_A8BA26: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A8BA39: Call Requery()
  loc_A8BA3E: FLdI2 CodiBarr
  loc_A8BA41: Call Encontrar(from_stack_1v)
  loc_A8BA46: ExitProcHresult
End Sub

Public Sub Modificar(CodiBarr, DetaBarr, CodiLoca) 'A865B8
  'Data Table: 429834
  loc_A86538: ILdRf DetaBarr
  loc_A8653B: FStStrCopy var_88
  loc_A8653E: FLdRfVar var_8C
  loc_A86541: FLdI2 CodiBarr
  loc_A86544: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A86549: ILdRf var_8C
  loc_A8654C: LitStr vbNullString
  loc_A8654F: EqStr
  loc_A86551: FFree1Str var_8C
  loc_A86554: BranchF loc_A86562
  loc_A86557: LitStr "El BARRIO NO EXISTE. Reintente..."
  loc_A8655A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8655F: Branch loc_A865A8
  loc_A86562: LitStr " UPDATE infogov.barrio SET DetaBarr='"
  loc_A86565: ILdRf var_88
  loc_A86568: ConcatStr
  loc_A86569: FStStrNoPop var_8C
  loc_A8656C: LitStr "', CodiLoca = "
  loc_A8656F: ConcatStr
  loc_A86570: FStStrNoPop var_90
  loc_A86573: FLdI2 CodiLoca
  loc_A86576: CStrUI1
  loc_A86578: FStStrNoPop var_94
  loc_A8657B: ConcatStr
  loc_A8657C: FStStrNoPop var_98
  loc_A8657F: LitStr " WHERE CodiBarr="
  loc_A86582: ConcatStr
  loc_A86583: FStStrNoPop var_9C
  loc_A86586: FLdI2 CodiBarr
  loc_A86589: CStrUI1
  loc_A8658B: FStStrNoPop var_A0
  loc_A8658E: ConcatStr
  loc_A8658F: FStStrNoPop var_A4
  loc_A86592: Call EjecutarRs2(from_stack_1v)
  loc_A86597: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A865A8: Call Requery()
  loc_A865AD: FLdI2 CodiBarr
  loc_A865B0: Call Encontrar(from_stack_1v)
  loc_A865B5: ExitProcHresult
  loc_A865B6: PopAdLdVar
End Sub

Public Sub Delete() 'A21DC4
  'Data Table: 429834
  loc_A21D7C: FLdRfVar var_8C
  loc_A21D7F: FLdRfVar var_88
  loc_A21D82: FLdPr Me
  loc_A21D85: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A21D8A: FLdPr var_88
  loc_A21D8D:  = Me.RecordCount
  loc_A21D92: ILdRf var_8C
  loc_A21D95: LitI4 0
  loc_A21D9A: GtI4
  loc_A21D9B: FFree1Ad var_88
  loc_A21D9E: BranchF loc_A21DC1
  loc_A21DA1: LitI4 1
  loc_A21DA6: FLdRfVar var_88
  loc_A21DA9: FLdPr Me
  loc_A21DAC: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A21DB1: FLdPr var_88
  loc_A21DB4: Me.Delete
  loc_A21DB9: FFree1Ad var_88
  loc_A21DBC: Call MoveNext()
  loc_A21DC1: ExitProcHresult
  loc_A21DC2: SetLastSystemError
End Sub

Public Sub Requery() 'A00FEC
  'Data Table: 429834
  loc_A00FBC: LitI4 -1
  loc_A00FC1: FLdRfVar var_88
  loc_A00FC4: FLdPr Me
  loc_A00FC7: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A00FCC: FLdPr var_88
  loc_A00FCF: Me.Requery from_stack_1
  loc_A00FD4: FFree1Ad var_88
  loc_A00FD7: LitVarStr var_98, "Primary"
  loc_A00FDC: PopAdLdVar
  loc_A00FDD: FLdPr Me
  loc_A00FE0: LateIdCall
  loc_A00FE8: ExitProcHresult
End Sub

Public Sub Update() 'A21B54
  'Data Table: 429834
  loc_A21B10: FLdRfVar var_88
  loc_A21B13: FLdPr Me
  loc_A21B16: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A21B1B: FLdZeroAd var_88
  loc_A21B1E: FStAdFunc var_8C
  loc_A21B21: LitI4 3
  loc_A21B26: FLdPr var_8C
  loc_A21B29: Me.UpdateBatch
  loc_A21B2E: FLdRfVar var_90
  loc_A21B31: FLdPr var_8C
  loc_A21B34:  = Me.EditMode
  loc_A21B39: ILdRf var_90
  loc_A21B3C: LitI4 2
  loc_A21B41: EqI4
  loc_A21B42: BranchF loc_A21B4A
  loc_A21B45: Call MoveLast()
  loc_A21B4A: LitNothing
  loc_A21B4C: FStAd var_8C 
  loc_A21B50: ExitProcHresult
  loc_A21B51: VCallAd Control_ID_
End Sub

Public Sub Cancel() 'A4759C
  'Data Table: 429834
  loc_A47548: FLdRfVar var_88
  loc_A4754B: FLdPr Me
  loc_A4754E: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A47553: FLdZeroAd var_88
  loc_A47556: FStAdFunc var_8C
  loc_A47559: FLdRfVar var_90
  loc_A4755C: FLdPr var_8C
  loc_A4755F:  = Me.RecordCount
  loc_A47564: ILdRf var_90
  loc_A47567: LitI4 0
  loc_A4756C: GtI4
  loc_A4756D: BranchF loc_A47594
  loc_A47570: FLdPr var_8C
  loc_A47573: Me.CancelUpdate
  loc_A47578: FLdRfVar var_90
  loc_A4757B: FLdPr var_8C
  loc_A4757E:  = Me.EditMode
  loc_A47583: ILdRf var_90
  loc_A47586: LitI4 2
  loc_A4758B: EqI4
  loc_A4758C: BranchF loc_A47594
  loc_A4758F: Call MoveFirst()
  loc_A47594: LitNothing
  loc_A47596: FStAd var_8C 
  loc_A4759A: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FC4B4
  'Data Table: 429834
  loc_9FC488: FLdRfVar var_90
  loc_9FC48B: FLdRfVar var_8C
  loc_9FC48E: FLdPr Me
  loc_9FC491: from_stack_1v = clsBarrio.global_4364220Get()
  loc_9FC496: FLdPr var_8C
  loc_9FC499:  = Me.EditMode
  loc_9FC49E: ILdRf var_90
  loc_9FC4A1: LitI4 0
  loc_9FC4A6: NeI4
  loc_9FC4A7: FStI2 var_86
  loc_9FC4AA: FFree1Ad var_8C
  loc_9FC4AD: ExitProcCbHresult
  loc_9FC4B3: SetLastSystemError
End Sub

Public Sub RedefineRS(sSelect) 'A70200
  'Data Table: 429834
  loc_A7018C: ILdRf sSelect
  loc_A7018F: FStStrCopy var_88
  loc_A70192: LitNothing
  loc_A70194: CastAd
  loc_A70197: FStAdFuncNoPop
  loc_A7019A: FLdPr Me
  loc_A7019D: Call clsBarrio.global_4364220Set(from_stack_1v)
  loc_A701A2: FFree1Ad var_8C
  loc_A701A5: New Recordset
  loc_A701A9: FStAdFuncNoPop
  loc_A701AC: FLdPr Me
  loc_A701AF: Call clsBarrio.global_4364220Set(from_stack_1v)
  loc_A701B4: FFree1Ad var_8C
  loc_A701B7: LitI4 -1
  loc_A701BC: LitI4 3
  loc_A701C1: LitI4 3
  loc_A701C6: ImpAdLdI4 MemVar_D9301C
  loc_A701C9: CVarAd
  loc_A701CD: PopAdLdVar
  loc_A701CE: ILdRf var_88
  loc_A701D1: CVarStr var_9C
  loc_A701D4: PopAdLdVar
  loc_A701D5: FLdRfVar var_8C
  loc_A701D8: FLdPr Me
  loc_A701DB: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A701E0: FLdPr var_8C
  loc_A701E3: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A701E8: FFree1Ad var_8C
  loc_A701EB: LitVarStr var_9C, "Primary"
  loc_A701F0: PopAdLdVar
  loc_A701F1: FLdPr Me
  loc_A701F4: LateIdCall
  loc_A701FC: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A5AA48
  'Data Table: 429834
  loc_A5A9E8: ILdRf sSelect
  loc_A5A9EB: FStStrCopy var_88
  loc_A5A9EE: LitNothing
  loc_A5A9F0: CastAd
  loc_A5A9F3: FStAdFuncNoPop
  loc_A5A9F6: FLdPr Me
  loc_A5A9F9: Call clsBarrio.global_4364220Set(from_stack_1v)
  loc_A5A9FE: FFree1Ad var_8C
  loc_A5AA01: New Recordset
  loc_A5AA05: FStAdFuncNoPop
  loc_A5AA08: FLdPr Me
  loc_A5AA0B: Call clsBarrio.global_4364220Set(from_stack_1v)
  loc_A5AA10: FFree1Ad var_8C
  loc_A5AA13: LitI4 -1
  loc_A5AA18: LitI4 3
  loc_A5AA1D: LitI4 3
  loc_A5AA22: ImpAdLdI4 MemVar_D9301C
  loc_A5AA25: CVarAd
  loc_A5AA29: PopAdLdVar
  loc_A5AA2A: ILdRf var_88
  loc_A5AA2D: CVarStr var_9C
  loc_A5AA30: PopAdLdVar
  loc_A5AA31: FLdRfVar var_8C
  loc_A5AA34: FLdPr Me
  loc_A5AA37: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A5AA3C: FLdPr var_8C
  loc_A5AA3F: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5AA44: FFree1Ad var_8C
  loc_A5AA47: ExitProcHresult
End Sub

Public Sub Encontrar(CodiBarr) '9EA5F4
  'Data Table: 429834
  loc_9EA5D4: LitStr "CodiBarr = "
  loc_9EA5D7: FLdI2 CodiBarr
  loc_9EA5DA: CStrUI1
  loc_9EA5DC: FStStrNoPop var_88
  loc_9EA5DF: ConcatStr
  loc_9EA5E0: PopTmpLdAdStr
  loc_9EA5E4: Call Find(from_stack_1v)
  loc_9EA5E9: FFreeStr var_88 = ""
  loc_9EA5F0: ExitProcHresult
End Sub

Public Property Get DataSource() 'A09CD4
  'Data Table: 429834
  loc_A09CA4: ZeroRetVal
  loc_A09CA6: FLdRfVar var_90
  loc_A09CA9: FLdRfVar var_8C
  loc_A09CAC: FLdPr Me
  loc_A09CAF: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A09CB4: FLdPr var_8C
  loc_A09CB7:  = Me.DataSource
  loc_A09CBC: ILdRf var_90
  loc_A09CBF: CastAd
  loc_A09CC2: FStAdFunc var_88
  loc_A09CC5: FFreeAd var_8C = ""
  loc_A09CCC: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9FB4A8
  'Data Table: 429834
  loc_9FB480: FLdRfVar var_90
  loc_9FB483: FLdRfVar var_8C
  loc_9FB486: FLdPr Me
  loc_9FB489: from_stack_1v = clsBarrio.global_4364220Get()
  loc_9FB48E: FLdPr var_8C
  loc_9FB491:  = Me.EditMode
  loc_9FB496: ILdRf var_90
  loc_9FB499: FStR4 var_88
  loc_9FB49C: FFree1Ad var_8C
  loc_9FB49F: ExitProcCbHresult
End Sub

Public Property Get CodiBarr() 'A47850
  'Data Table: 429834
  loc_A47804: FLdRfVar var_B4
  loc_A47807: FLdRfVar var_A4
  loc_A4780A: LitVarStr var_A0, "CodiBarr"
  loc_A4780F: PopAdLdVar
  loc_A47810: FLdRfVar var_90
  loc_A47813: FLdRfVar var_8C
  loc_A47816: FLdPr Me
  loc_A47819: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A4781E: FLdPr var_8C
  loc_A47821:  = Me.Fields
  loc_A47826: FLdPr var_90
  loc_A47829: from_stack_2 = Me.Item(from_stack_1)
  loc_A4782E: FLdPr var_A4
  loc_A47831:  = Me.Value
  loc_A47836: FLdRfVar var_B4
  loc_A47839: CI2Var
  loc_A4783A: FStI2 var_86
  loc_A4783D: FFreeAd var_8C = "": var_90 = ""
  loc_A47846: FFree1Var var_B4 = ""
  loc_A47849: ExitProcCbHresult
End Sub

Public Property Let CodiBarr(vDato) '9EA650
  'Data Table: 429834
  loc_9EA62C: FLdI2 vDato
  loc_9EA62F: CVarI2 var_A8
  loc_9EA632: PopAdLdVar
  loc_9EA633: LitVarStr var_98, "CodiBarr"
  loc_9EA638: PopAdLdVar
  loc_9EA639: FLdRfVar var_88
  loc_9EA63C: FLdPr Me
  loc_9EA63F: from_stack_1v = clsBarrio.global_4364220Get()
  loc_9EA644: FLdPr var_88
  loc_9EA647: Me.Collect = from_stack_1
  loc_9EA64C: FFree1Ad var_88
  loc_9EA64F: ExitProcHresult
End Sub

Public Property Get DetaBarr() 'A582FC
  'Data Table: 429834
  loc_A582AC: ZeroRetVal
  loc_A582AE: FLdRfVar var_B4
  loc_A582B1: FLdRfVar var_A4
  loc_A582B4: LitVarStr var_A0, "DetaBarr"
  loc_A582B9: PopAdLdVar
  loc_A582BA: FLdRfVar var_90
  loc_A582BD: FLdRfVar var_8C
  loc_A582C0: FLdPr Me
  loc_A582C3: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A582C8: FLdPr var_8C
  loc_A582CB:  = Me.Fields
  loc_A582D0: FLdPr var_90
  loc_A582D3: from_stack_2 = Me.Item(from_stack_1)
  loc_A582D8: FLdPr var_A4
  loc_A582DB:  = Me.Value
  loc_A582E0: FLdRfVar var_B4
  loc_A582E3: CStrVarTmp
  loc_A582E4: FStStr var_88
  loc_A582E7: FFreeAd var_8C = "": var_90 = ""
  loc_A582F0: FFree1Var var_B4 = ""
  loc_A582F3: ExitProcCbHresult
End Sub

Public Property Let DetaBarr(vDato) 'A044A4
  'Data Table: 429834
  loc_A04478: ILdRf vDato
  loc_A0447B: FStStrCopy var_88
  loc_A0447E: ILdRf var_88
  loc_A04481: CVarStr var_AC
  loc_A04484: PopAdLdVar
  loc_A04485: LitVarStr var_9C, "DetaBarr"
  loc_A0448A: PopAdLdVar
  loc_A0448B: FLdRfVar var_8C
  loc_A0448E: FLdPr Me
  loc_A04491: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A04496: FLdPr var_8C
  loc_A04499: Me.Collect = from_stack_1
  loc_A0449E: FFree1Ad var_8C
  loc_A044A1: ExitProcHresult
  loc_A044A2: MulI2
End Sub

Public Property Get CodiLoca() 'A479F4
  'Data Table: 429834
  loc_A479A8: FLdRfVar var_B4
  loc_A479AB: FLdRfVar var_A4
  loc_A479AE: LitVarStr var_A0, "CodiLoca"
  loc_A479B3: PopAdLdVar
  loc_A479B4: FLdRfVar var_90
  loc_A479B7: FLdRfVar var_8C
  loc_A479BA: FLdPr Me
  loc_A479BD: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A479C2: FLdPr var_8C
  loc_A479C5:  = Me.Fields
  loc_A479CA: FLdPr var_90
  loc_A479CD: from_stack_2 = Me.Item(from_stack_1)
  loc_A479D2: FLdPr var_A4
  loc_A479D5:  = Me.Value
  loc_A479DA: FLdRfVar var_B4
  loc_A479DD: CI2Var
  loc_A479DE: FStI2 var_86
  loc_A479E1: FFreeAd var_8C = "": var_90 = ""
  loc_A479EA: FFree1Var var_B4 = ""
  loc_A479ED: ExitProcCbHresult
End Sub

Public Property Let CodiLoca(vDato) '9EA6A8
  'Data Table: 429834
  loc_9EA684: FLdI2 vDato
  loc_9EA687: CVarI2 var_A8
  loc_9EA68A: PopAdLdVar
  loc_9EA68B: LitVarStr var_98, "CodiLoca"
  loc_9EA690: PopAdLdVar
  loc_9EA691: FLdRfVar var_88
  loc_9EA694: FLdPr Me
  loc_9EA697: from_stack_1v = clsBarrio.global_4364220Get()
  loc_9EA69C: FLdPr var_88
  loc_9EA69F: Me.Collect = from_stack_1
  loc_9EA6A4: FFree1Ad var_88
  loc_9EA6A7: ExitProcHresult
End Sub

Public Function ValidaClave(CodiBarr) 'A51C70
  'Data Table: 429834
  loc_A51C20: ZeroRetVal
  loc_A51C22: LitStr "SELECT infogov.barrio.CodiBarr FROM infogov.barrio WHERE CodiBarr = "
  loc_A51C25: FLdI2 CodiBarr
  loc_A51C28: CStrUI1
  loc_A51C2A: FStStrNoPop var_8C
  loc_A51C2D: ConcatStr
  loc_A51C2E: FStStrNoPop var_90
  loc_A51C31: Call EjecutarRs2(from_stack_1v)
  loc_A51C36: FFreeStr var_8C = ""
  loc_A51C3D: FLdRfVar var_98
  loc_A51C40: FLdRfVar ValidaClave
  loc_A51C43: FLdPr Me
  loc_A51C46: from_stack_1v = clsBarrio.global_4364220Get()
  loc_A51C4B: FLdPr ValidaClave
  loc_A51C4E:  = Me.RecordCount
  loc_A51C53: ILdRf var_98
  loc_A51C56: LitI4 0
  loc_A51C5B: GtI4
  loc_A51C5C: FFree1Ad ValidaClave
  loc_A51C5F: BranchF loc_A51C68
  loc_A51C62: LitStr "EL BARRIO YA EXISTE. Reintente..."
  loc_A51C65: FStStrCopy var_88
  loc_A51C68: ExitProcCbHresult
End Function

Public Function NuevoRegistro() 'AB98F0
  'Data Table: 429834
  loc_AB9800: New Recordset
  loc_AB9804: FStAdFuncNoPop
  loc_AB9807: FLdPr Me
  loc_AB980A: Call clsBarrio.global_4364220Set(from_stack_1v)
  loc_AB980F: FFree1Ad var_8C
  loc_AB9812: LitI4 -1
  loc_AB9817: LitI4 3
  loc_AB981C: LitI4 3
  loc_AB9821: ImpAdLdI4 MemVar_D9301C
  loc_AB9824: CVarAd
  loc_AB9828: PopAdLdVar
  loc_AB9829: LitVarStr var_9C, "SELECT infogov.barrio.CodiBarr FROM infogov.barrio ORDER BY CodiBarr DESC "
  loc_AB982E: PopAdLdVar
  loc_AB982F: FLdRfVar var_8C
  loc_AB9832: FLdPr Me
  loc_AB9835: from_stack_1v = clsBarrio.global_4364220Get()
  loc_AB983A: FLdPr var_8C
  loc_AB983D: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_AB9842: FFree1Ad var_8C
  loc_AB9845: FLdRfVar var_B0
  loc_AB9848: FLdRfVar var_8C
  loc_AB984B: FLdPr Me
  loc_AB984E: from_stack_1v = clsBarrio.global_4364220Get()
  loc_AB9853: FLdPr var_8C
  loc_AB9856:  = Me.RecordCount
  loc_AB985B: ILdRf var_B0
  loc_AB985E: LitI4 0
  loc_AB9863: GtI4
  loc_AB9864: FFree1Ad var_8C
  loc_AB9867: BranchF loc_AB98B9
  loc_AB986A: FLdRfVar var_C8
  loc_AB986D: FLdRfVar var_B8
  loc_AB9870: LitVarStr var_9C, "CodiBarr"
  loc_AB9875: PopAdLdVar
  loc_AB9876: FLdRfVar var_B4
  loc_AB9879: FLdRfVar var_8C
  loc_AB987C: FLdPr Me
  loc_AB987F: from_stack_1v = clsBarrio.global_4364220Get()
  loc_AB9884: FLdPr var_8C
  loc_AB9887:  = Me.Fields
  loc_AB988C: FLdPr var_B4
  loc_AB988F: from_stack_2 = Me.Item(from_stack_1)
  loc_AB9894: FLdPr var_B8
  loc_AB9897:  = Me.Value
  loc_AB989C: FLdRfVar var_C8
  loc_AB989F: FnCLngVar
  loc_AB98A1: LitI4 1
  loc_AB98A6: AddI4
  loc_AB98A7: FStR4 var_88
  loc_AB98AA: FFreeAd var_8C = "": var_B4 = ""
  loc_AB98B3: FFree1Var var_C8 = ""
  loc_AB98B6: Branch loc_AB98C1
  loc_AB98B9: LitI4 1
  loc_AB98BE: FStR4 var_88
  loc_AB98C1: FLdRfVar var_8C
  loc_AB98C4: FLdPr Me
  loc_AB98C7: from_stack_1v = clsBarrio.global_4364220Get()
  loc_AB98CC: FLdPr var_8C
  loc_AB98CF: Me.Close
  loc_AB98D4: FFree1Ad var_8C
  loc_AB98D7: LitNothing
  loc_AB98D9: CastAd
  loc_AB98DC: FStAdFuncNoPop
  loc_AB98DF: FLdPr Me
  loc_AB98E2: Call clsBarrio.global_4364220Set(from_stack_1v)
  loc_AB98E7: FFree1Ad var_8C
  loc_AB98EA: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E997C
  'Data Table: 429834
  loc_9E9960: ILdRf pError
  loc_9E9963: FStAd var_88 
  loc_9E9967: ILdRf pRecordset
  loc_9E996A: FStAd var_8C 
  loc_9E996E: FLdPr Me
  loc_9E9971: RaiseEvent
  loc_9E9979: ExitProcHresult
  loc_9E997A: CRec2Ansi var_4302
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9F584
  'Data Table: 429834
  loc_A9F4C4: ILdRf pRecordset
  loc_A9F4C7: FStAd var_88 
  loc_A9F4CB: ILdRf adReason
  loc_A9F4CE: FStR4 var_90
  loc_A9F4D1: ILdRf var_90
  loc_A9F4D4: LitI4 1
  loc_A9F4D9: EqI4
  loc_A9F4DA: BranchF loc_A9F4E0
  loc_A9F4DD: Branch loc_A9F573
  loc_A9F4E0: ILdRf var_90
  loc_A9F4E3: LitI4 9
  loc_A9F4E8: EqI4
  loc_A9F4E9: BranchF loc_A9F4EF
  loc_A9F4EC: Branch loc_A9F573
  loc_A9F4EF: ILdRf var_90
  loc_A9F4F2: LitI4 2
  loc_A9F4F7: EqI4
  loc_A9F4F8: BranchF loc_A9F4FE
  loc_A9F4FB: Branch loc_A9F573
  loc_A9F4FE: ILdRf var_90
  loc_A9F501: LitI4 &HB
  loc_A9F506: EqI4
  loc_A9F507: BranchF loc_A9F50D
  loc_A9F50A: Branch loc_A9F573
  loc_A9F50D: ILdRf var_90
  loc_A9F510: LitI4 &HA
  loc_A9F515: EqI4
  loc_A9F516: BranchF loc_A9F51C
  loc_A9F519: Branch loc_A9F573
  loc_A9F51C: ILdRf var_90
  loc_A9F51F: LitI4 7
  loc_A9F524: EqI4
  loc_A9F525: BranchF loc_A9F52B
  loc_A9F528: Branch loc_A9F573
  loc_A9F52B: ILdRf var_90
  loc_A9F52E: LitI4 8
  loc_A9F533: EqI4
  loc_A9F534: BranchF loc_A9F53A
  loc_A9F537: Branch loc_A9F573
  loc_A9F53A: ILdRf var_90
  loc_A9F53D: LitI4 5
  loc_A9F542: EqI4
  loc_A9F543: BranchF loc_A9F549
  loc_A9F546: Branch loc_A9F573
  loc_A9F549: ILdRf var_90
  loc_A9F54C: LitI4 6
  loc_A9F551: EqI4
  loc_A9F552: BranchF loc_A9F558
  loc_A9F555: Branch loc_A9F573
  loc_A9F558: ILdRf var_90
  loc_A9F55B: LitI4 4
  loc_A9F560: EqI4
  loc_A9F561: BranchF loc_A9F567
  loc_A9F564: Branch loc_A9F573
  loc_A9F567: ILdRf var_90
  loc_A9F56A: LitI4 3
  loc_A9F56F: EqI4
  loc_A9F570: BranchF loc_A9F573
  loc_A9F573: FLdI2 var_8A
  loc_A9F576: BranchF loc_A9F581
  loc_A9F579: LitI4 4
  loc_A9F57E: IStI4 adStatus
  loc_A9F581: ExitProcHresult
End Sub

Private Function Proc_37_35_9FB3EC() '9FB3EC
  'Data Table: 429834
  loc_9FB3C8: LitStr "Primary"
  loc_9FB3CB: FLdPr Me
  loc_9FB3CE: LateIdLdVar var_94 DispID_4 0
  loc_9FB3D5: CastAdVar Me
  loc_9FB3D9: FStAdFunc var_98
  loc_9FB3DC: FLdPr var_98
  loc_9FB3E4: FFree1Ad var_98
  loc_9FB3E7: FFree1Var var_94 = ""
  loc_9FB3EA: ExitProcHresult
  loc_9FB3EB: ConcatStr
End Function

Private Function Proc_37_36_9FB390(arg_C) '9FB390
  'Data Table: 429834
  loc_9FB36C: ILdI4 arg_C
  loc_9FB36F: FStStrCopy var_88
  loc_9FB372: ILdRf var_88
  loc_9FB375: LitStr "Primary"
  loc_9FB378: EqStr
  loc_9FB37A: BranchF loc_9FB38F
  loc_9FB37D: FLdRfVar var_8C
  loc_9FB380: FLdPr Me
  loc_9FB383: from_stack_1v = clsBarrio.global_4364220Get()
  loc_9FB388: FLdZeroAd var_8C
  loc_9FB38B: IStAdFunc
  loc_9FB38F: ExitProcHresult
End Function

Public Function global_4364220Get() '429BD4
  global_4364220Get = global_4364220
End Function

Public Sub global_4364220Put(Value) '429BEE
  global_4364220 = Value
End Sub

Public Sub global_4364220Set(Value) '429C08
  global_4364220 = Value
End Sub

Public Function global_4364220Get() '429C22
  global_4364220Get = global_4364220
End Function

Public Sub global_4364220Put(Value) '429C3C
  global_4364220 = Value
End Sub

Public Sub global_4364220Set(Value) '429C56
  global_4364220 = Value
End Sub

Public Function global_4364220Get() '429C70
  global_4364220Get = global_4364220
End Function

Public Sub global_4364220Put(Value) '429C8A
  global_4364220 = Value
End Sub

Public Sub global_4364220Set(Value) '429CA4
  global_4364220 = Value
End Sub
