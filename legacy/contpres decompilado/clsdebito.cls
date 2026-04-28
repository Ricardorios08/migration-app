VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsdebito"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '417D24
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '417D33
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '417D42
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9701D4
  'Data Table: 4179D4
  loc_9701AC: FLdRfVar var_88
  loc_9701AF: FLdPr Me
  loc_9701B2: MemLdPr RsFrm
  loc_9701B5:  = Me.RecordCount
  loc_9701BA: ILdRf var_88
  loc_9701BD: LitI4 0
  loc_9701C2: GtI4
  loc_9701C3: BranchF loc_9701D1
  loc_9701C6: FLdPr Me
  loc_9701C9: MemLdPr RsFrm
  loc_9701CC: Me.MoveFirst
  loc_9701D1: ExitProcHresult
  loc_9701D2: CExtInstUnk
End Sub

Public Sub MoveLast() '96D9F4
  'Data Table: 4179D4
  loc_96D9CC: FLdRfVar var_88
  loc_96D9CF: FLdPr Me
  loc_96D9D2: MemLdPr RsFrm
  loc_96D9D5:  = Me.RecordCount
  loc_96D9DA: ILdRf var_88
  loc_96D9DD: LitI4 0
  loc_96D9E2: GtI4
  loc_96D9E3: BranchF loc_96D9F1
  loc_96D9E6: FLdPr Me
  loc_96D9E9: MemLdPr RsFrm
  loc_96D9EC: Me.MoveLast
  loc_96D9F1: ExitProcHresult
End Sub

Public Sub MoveNext() '99F4D0
  'Data Table: 4179D4
  loc_99F458: FLdRfVar var_86
  loc_99F45B: FLdPr Me
  loc_99F45E: MemLdPr RsFrm
  loc_99F461:  = Me.EOF
  loc_99F466: FLdI2 var_86
  loc_99F469: NotI4
  loc_99F46A: FLdRfVar var_8C
  loc_99F46D: FLdPr Me
  loc_99F470: MemLdPr RsFrm
  loc_99F473:  = Me.RecordCount
  loc_99F478: ILdRf var_8C
  loc_99F47B: LitI4 0
  loc_99F480: GtI4
  loc_99F481: AndI4
  loc_99F482: BranchF loc_99F490
  loc_99F485: FLdPr Me
  loc_99F488: MemLdPr RsFrm
  loc_99F48B: Me.MoveNext
  loc_99F490: FLdRfVar var_86
  loc_99F493: FLdPr Me
  loc_99F496: MemLdPr RsFrm
  loc_99F499:  = Me.EOF
  loc_99F49E: FLdI2 var_86
  loc_99F4A1: FLdRfVar var_8C
  loc_99F4A4: FLdPr Me
  loc_99F4A7: MemLdPr RsFrm
  loc_99F4AA:  = Me.RecordCount
  loc_99F4AF: ILdRf var_8C
  loc_99F4B2: LitI4 0
  loc_99F4B7: GtI4
  loc_99F4B8: AndI4
  loc_99F4B9: BranchF loc_99F4CC
  loc_99F4BC: ImpAdCallFPR4 Beep()
  loc_99F4C1: FLdPr Me
  loc_99F4C4: MemLdPr RsFrm
  loc_99F4C7: Me.MoveLast
  loc_99F4CC: ExitProcHresult
  loc_99F4CD: ILdR8 arg_0
End Sub

Public Sub MoveSiguiente() '940FF4
  'Data Table: 4179D4
  loc_940FE8: FLdPr Me
  loc_940FEB: MemLdPr RsFrm
  loc_940FEE: Me.MoveNext
  loc_940FF3: ExitProcHresult
End Sub

Public Sub Move(iValor) '9491A4
  'Data Table: 4179D4
  loc_949190: LitVar_Missing var_94
  loc_949193: PopAdLdVar
  loc_949194: ILdI2 iValor
  loc_949197: CI4UI1
  loc_949198: FLdPr Me
  loc_94919B: MemLdPr RsFrm
  loc_94919E: Me.Move from_stack_1, from_stack_2
  loc_9491A3: ExitProcHresult
End Sub

Public Sub MovePrevious() '99F0E0
  'Data Table: 4179D4
  loc_99F068: FLdRfVar var_86
  loc_99F06B: FLdPr Me
  loc_99F06E: MemLdPr RsFrm
  loc_99F071:  = Me.BOF
  loc_99F076: FLdI2 var_86
  loc_99F079: NotI4
  loc_99F07A: FLdRfVar var_8C
  loc_99F07D: FLdPr Me
  loc_99F080: MemLdPr RsFrm
  loc_99F083:  = Me.RecordCount
  loc_99F088: ILdRf var_8C
  loc_99F08B: LitI4 0
  loc_99F090: GtI4
  loc_99F091: AndI4
  loc_99F092: BranchF loc_99F0A0
  loc_99F095: FLdPr Me
  loc_99F098: MemLdPr RsFrm
  loc_99F09B: Me.MovePrevious
  loc_99F0A0: FLdRfVar var_86
  loc_99F0A3: FLdPr Me
  loc_99F0A6: MemLdPr RsFrm
  loc_99F0A9:  = Me.BOF
  loc_99F0AE: FLdI2 var_86
  loc_99F0B1: FLdRfVar var_8C
  loc_99F0B4: FLdPr Me
  loc_99F0B7: MemLdPr RsFrm
  loc_99F0BA:  = Me.RecordCount
  loc_99F0BF: ILdRf var_8C
  loc_99F0C2: LitI4 0
  loc_99F0C7: GtI4
  loc_99F0C8: AndI4
  loc_99F0C9: BranchF loc_99F0DC
  loc_99F0CC: ImpAdCallFPR4 Beep()
  loc_99F0D1: FLdPr Me
  loc_99F0D4: MemLdPr RsFrm
  loc_99F0D7: Me.MoveFirst
  loc_99F0DC: ExitProcHresult
End Sub

Public Property Get EOF() '96124C
  'Data Table: 4179D4
  loc_961230: FLdRfVar var_88
  loc_961233: FLdPr Me
  loc_961236: MemLdPr RsFrm
  loc_961239:  = Me.EOF
  loc_96123E: FLdI2 var_88
  loc_961241: FStI2 var_86
  loc_961244: ExitProcCbHresult
End Sub

Public Property Get BOF() '9611B4
  'Data Table: 4179D4
  loc_961198: FLdRfVar var_88
  loc_96119B: FLdPr Me
  loc_96119E: MemLdPr RsFrm
  loc_9611A1:  = Me.BOF
  loc_9611A6: FLdI2 var_88
  loc_9611A9: FStI2 var_86
  loc_9611AC: ExitProcCbHresult
  loc_9611B2: LeCyR8
End Sub

Public Sub Sort(sOrden) '9459C4
  'Data Table: 4179D4
  loc_9459B4: ILdI4 sOrden
  loc_9459B7: FLdPr Me
  loc_9459BA: MemLdPr RsFrm
  loc_9459BD: Me.Sort = from_stack_1
  loc_9459C2: ExitProcHresult
End Sub

Public Sub Find(sFind) '967F30
  'Data Table: 4179D4
  loc_967F10: LitVar_Missing var_94
  loc_967F13: PopAdLdVar
  loc_967F14: LitI4 1
  loc_967F19: LitI4 0
  loc_967F1E: ILdI4 sFind
  loc_967F21: FLdPr Me
  loc_967F24: MemLdPr RsFrm
  loc_967F27: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_967F2C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '94856C
  'Data Table: 4179D4
  loc_948558: ILdI4 sCriterio
  loc_94855B: CVarStr var_94
  loc_94855E: PopAdLdVar
  loc_94855F: FLdPr Me
  loc_948562: MemLdPr RsFrm
  loc_948565: Me.Filter = from_stack_1
  loc_94856A: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '960FEC
  'Data Table: 4179D4
  loc_960FD0: FLdRfVar var_8C
  loc_960FD3: FLdPr Me
  loc_960FD6: MemLdPr RsFrm
  loc_960FD9:  = Me.AbsolutePosition
  loc_960FDE: ILdRf var_8C
  loc_960FE1: FStR4 var_88
  loc_960FE4: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '960F54
  'Data Table: 4179D4
  loc_960F38: FLdRfVar var_8C
  loc_960F3B: FLdPr Me
  loc_960F3E: MemLdPr RsFrm
  loc_960F41:  = Me.RecordCount
  loc_960F46: ILdRf var_8C
  loc_960F49: FStR4 var_88
  loc_960F4C: ExitProcCbHresult
End Sub

Public Sub Encontrar(PeriInfo, NumeDebi) '9E9F68
  'Data Table: 4179D4
  loc_9E9E48: On Error Resume Next
  loc_9E9E4D: FLdI2 PeriInfo
  loc_9E9E50: LitI2_Byte 0
  loc_9E9E52: EqI2
  loc_9E9E53: ILdRf NumeDebi
  loc_9E9E56: LitI4 0
  loc_9E9E5B: EqI4
  loc_9E9E5C: AndI4
  loc_9E9E5D: FLdRfVar var_88
  loc_9E9E60: FLdPr Me
  loc_9E9E63: MemLdPr RsFrm
  loc_9E9E66:  = Me.RecordCount
  loc_9E9E6B: ILdRf var_88
  loc_9E9E6E: LitI4 0
  loc_9E9E73: GtI4
  loc_9E9E74: AndI4
  loc_9E9E75: FLdRfVar var_8C
  loc_9E9E78: FLdPr Me
  loc_9E9E7B: MemLdPr RsFrm
  loc_9E9E7E:  = Me.AbsolutePosition
  loc_9E9E83: ILdRf var_8C
  loc_9E9E86: LitI4 -3
  loc_9E9E8B: NeI4
  loc_9E9E8C: AndI4
  loc_9E9E8D: BranchF loc_9E9F0B
  loc_9E9E92: FLdRfVar var_B4
  loc_9E9E95: FLdRfVar var_A4
  loc_9E9E98: LitVarStr var_A0, "PeriInfo"
  loc_9E9E9D: PopAdLdVar
  loc_9E9E9E: FLdRfVar var_90
  loc_9E9EA1: FLdPr Me
  loc_9E9EA4: MemLdPr RsFrm
  loc_9E9EA7:  = Me.Fields
  loc_9E9EAC: FLdPr var_90
  loc_9E9EAF: from_stack_2 = Me.Item(from_stack_1)
  loc_9E9EB4: FLdPr var_A4
  loc_9E9EB7:  = Me.Value
  loc_9E9EBC: FLdRfVar var_B4
  loc_9E9EBF: CI2Var
  loc_9E9EC0: FStI2 PeriInfo
  loc_9E9EC3: FFreeAd var_90 = ""
  loc_9E9ECA: FFree1Var var_B4 = ""
  loc_9E9ECF: FLdRfVar var_B4
  loc_9E9ED2: FLdRfVar var_A4
  loc_9E9ED5: LitVarStr var_A0, "NumeDebi"
  loc_9E9EDA: PopAdLdVar
  loc_9E9EDB: FLdRfVar var_90
  loc_9E9EDE: FLdPr Me
  loc_9E9EE1: MemLdPr RsFrm
  loc_9E9EE4:  = Me.Fields
  loc_9E9EE9: FLdPr var_90
  loc_9E9EEC: from_stack_2 = Me.Item(from_stack_1)
  loc_9E9EF1: FLdPr var_A4
  loc_9E9EF4:  = Me.Value
  loc_9E9EF9: FLdRfVar var_B4
  loc_9E9EFC: CI4Var
  loc_9E9EFE: FStR4 NumeDebi
  loc_9E9F01: FFreeAd var_90 = ""
  loc_9E9F08: FFree1Var var_B4 = ""
  loc_9E9F0F: Call Requery()
  loc_9E9F16: LitStr "PeriInfo = '"
  loc_9E9F19: FLdI2 PeriInfo
  loc_9E9F1C: CStrUI1
  loc_9E9F1E: FStStrNoPop var_B8
  loc_9E9F21: ConcatStr
  loc_9E9F22: FStStrNoPop var_BC
  loc_9E9F25: LitStr "'"
  loc_9E9F28: ConcatStr
  loc_9E9F29: PopTmpLdAdStr
  loc_9E9F2D: Call Find(from_stack_1v)
  loc_9E9F32: FFreeStr var_B8 = "": var_BC = ""
  loc_9E9F3D: LitStr "NumeDebi = '"
  loc_9E9F40: ILdRf NumeDebi
  loc_9E9F43: CStrI4
  loc_9E9F45: FStStrNoPop var_B8
  loc_9E9F48: ConcatStr
  loc_9E9F49: FStStrNoPop var_BC
  loc_9E9F4C: LitStr "'"
  loc_9E9F4F: ConcatStr
  loc_9E9F50: PopTmpLdAdStr
  loc_9E9F54: Call Find(from_stack_1v)
  loc_9E9F59: FFreeStr var_B8 = "": var_BC = ""
  loc_9E9F64: ExitProcHresult
End Sub

Public Function AddNew(PeriInfo, FechDebi, ExorImpu, ExpeImpu, CodiCuco, iCodiRete, CucuPers, ImpoDebi, TifaDeve, SufaDeve, NufaDeve, CodiOrga, DetaDebi, NumeOrpa, HaceRequery) 'AC8FC8
  'Data Table: 4179D4
  loc_AC8A60: ILdRf FechDebi
  loc_AC8A63: FStStrCopy var_8C
  loc_AC8A66: ILdRf ExorImpu
  loc_AC8A69: FStStrCopy var_90
  loc_AC8A6C: ILdRf ExpeImpu
  loc_AC8A6F: FStStrCopy AddNew
  loc_AC8A72: ILdRf CodiCuco
  loc_AC8A75: FStStrCopy var_98
  loc_AC8A78: ILdRf CucuPers
  loc_AC8A7B: FStStrCopy var_9C
  loc_AC8A7E: ILdRf SufaDeve
  loc_AC8A81: FStStrCopy var_A0
  loc_AC8A84: ILdRf NufaDeve
  loc_AC8A87: FStStrCopy var_A4
  loc_AC8A8A: ILdRf CodiOrga
  loc_AC8A8D: FStStrCopy var_A8
  loc_AC8A90: ILdRf DetaDebi
  loc_AC8A93: FStStrCopy var_AC
  loc_AC8A96: ILdRf AddNew0
  loc_AC8A99: FStStrCopy var_B0
  loc_AC8A9C: ILdRf AddNew4
  loc_AC8A9F: FStStrCopy var_B4
  loc_AC8AA2: OnErrorGoto loc_AC8FB5
  loc_AC8AA5: FLdRfVar var_B4
  loc_AC8AA8: CVarRef
  loc_AC8AAD: LitVarStr var_D8, "0"
  loc_AC8AB2: FStVarCopyObj var_E8
  loc_AC8AB5: FLdRfVar var_E8
  loc_AC8AB8: ILdRf var_B4
  loc_AC8ABB: LitStr vbNullString
  loc_AC8ABE: EqStr
  loc_AC8AC0: CVarBoolI2 var_C8
  loc_AC8AC4: FLdRfVar var_108
  loc_AC8AC7: ImpAdCallFPR4  = IIf(, , )
  loc_AC8ACC: FLdRfVar var_108
  loc_AC8ACF: CStrVarTmp
  loc_AC8AD0: FStStr var_B4
  loc_AC8AD3: FFreeVar var_C8 = "": var_E8 = ""
  loc_AC8ADC: LitStr "START TRANSACTION;"
  loc_AC8ADF: Call EjecutarRsCls(from_stack_1v)
  loc_AC8AE4: LitStr "SELECT IFNULL(Max(NumeDebi)+1,1) NumeDebi FROM debito WHERE PeriInfo = "
  loc_AC8AE7: FLdI2 PeriInfo
  loc_AC8AEA: CStrUI1
  loc_AC8AEC: FStStrNoPop var_10C
  loc_AC8AEF: ConcatStr
  loc_AC8AF0: FStStrNoPop var_110
  loc_AC8AF3: LitStr ";"
  loc_AC8AF6: ConcatStr
  loc_AC8AF7: FStStrNoPop var_114
  loc_AC8AFA: Call EjecutarRsCls(from_stack_1v)
  loc_AC8AFF: FFreeStr var_10C = "": var_110 = ""
  loc_AC8B08: FLdRfVar var_E8
  loc_AC8B0B: FLdRfVar var_11C
  loc_AC8B0E: LitVarStr var_C8, "NumeDebi"
  loc_AC8B13: PopAdLdVar
  loc_AC8B14: FLdRfVar var_118
  loc_AC8B17: FLdPr Me
  loc_AC8B1A: MemLdPr global_56
  loc_AC8B1D:  = Me.Fields
  loc_AC8B22: FLdPr var_118
  loc_AC8B25: from_stack_2 = Me.Item(from_stack_1)
  loc_AC8B2A: FLdPr var_11C
  loc_AC8B2D:  = Me.Value
  loc_AC8B32: FLdRfVar var_E8
  loc_AC8B35: FnCIntVar
  loc_AC8B37: CI4UI1
  loc_AC8B38: FStR4 var_B8
  loc_AC8B3B: FFreeAd var_118 = ""
  loc_AC8B42: FFree1Var var_E8 = ""
  loc_AC8B45: LitI4 1
  loc_AC8B4A: LitI4 1
  loc_AC8B4F: LitVarStr var_D8, "0000"
  loc_AC8B54: FStVarCopyObj var_E8
  loc_AC8B57: FLdRfVar var_E8
  loc_AC8B5A: FLdRfVar var_A4
  loc_AC8B5D: CVarRef
  loc_AC8B62: ImpAdCallI2 Format$(, )
  loc_AC8B67: FStStr var_A4
  loc_AC8B6A: FFree1Var var_E8 = ""
  loc_AC8B6D: LitI4 1
  loc_AC8B72: LitI4 1
  loc_AC8B77: LitVarStr var_D8, "00000000"
  loc_AC8B7C: FStVarCopyObj var_E8
  loc_AC8B7F: FLdRfVar var_E8
  loc_AC8B82: FLdRfVar var_A8
  loc_AC8B85: CVarRef
  loc_AC8B8A: ImpAdCallI2 Format$(, )
  loc_AC8B8F: FStStr var_A8
  loc_AC8B92: FFree1Var var_E8 = ""
  loc_AC8B95: LitStr "INSERT INTO debito (PeriInfo,NumeDebi,FechDebi,ExorImpu,ExpeImpu,CodiCuco,CucuPers,ImpoDebi,NumeFact,CodiOrga,DetaDebi,NumeOrpa,AltaUsua)"
  loc_AC8B98: LitStr " VALUES ("
  loc_AC8B9B: ConcatStr
  loc_AC8B9C: FStStrNoPop var_10C
  loc_AC8B9F: FLdI2 PeriInfo
  loc_AC8BA2: CStrUI1
  loc_AC8BA4: FStStrNoPop var_110
  loc_AC8BA7: ConcatStr
  loc_AC8BA8: FStStrNoPop var_114
  loc_AC8BAB: LitStr ", "
  loc_AC8BAE: ConcatStr
  loc_AC8BAF: FStStrNoPop var_120
  loc_AC8BB2: ILdRf var_B8
  loc_AC8BB5: CStrI4
  loc_AC8BB7: FStStrNoPop var_124
  loc_AC8BBA: ConcatStr
  loc_AC8BBB: FStStrNoPop var_128
  loc_AC8BBE: LitStr ", "
  loc_AC8BC1: ConcatStr
  loc_AC8BC2: FStStrNoPop var_12C
  loc_AC8BC5: LitI4 1
  loc_AC8BCA: LitI4 1
  loc_AC8BCF: LitVarStr var_D8, "'yyyy-mm-dd'"
  loc_AC8BD4: FStVarCopyObj var_E8
  loc_AC8BD7: FLdRfVar var_E8
  loc_AC8BDA: FLdRfVar var_8C
  loc_AC8BDD: CVarRef
  loc_AC8BE2: ImpAdCallI2 Format$(, )
  loc_AC8BE7: FStStrNoPop var_130
  loc_AC8BEA: ConcatStr
  loc_AC8BEB: FStStrNoPop var_134
  loc_AC8BEE: LitStr ",'"
  loc_AC8BF1: ConcatStr
  loc_AC8BF2: FStStrNoPop var_138
  loc_AC8BF5: ILdRf var_90
  loc_AC8BF8: ConcatStr
  loc_AC8BF9: FStStrNoPop var_13C
  loc_AC8BFC: LitStr "','"
  loc_AC8BFF: ConcatStr
  loc_AC8C00: FStStrNoPop var_140
  loc_AC8C03: ILdRf AddNew
  loc_AC8C06: ConcatStr
  loc_AC8C07: FStStrNoPop var_144
  loc_AC8C0A: LitStr "', '"
  loc_AC8C0D: ConcatStr
  loc_AC8C0E: FStStrNoPop var_148
  loc_AC8C11: ILdRf var_98
  loc_AC8C14: ConcatStr
  loc_AC8C15: FStStrNoPop var_14C
  loc_AC8C18: LitStr "', "
  loc_AC8C1B: ConcatStr
  loc_AC8C1C: FStStrNoPop var_150
  loc_AC8C1F: ILdRf var_9C
  loc_AC8C22: ConcatStr
  loc_AC8C23: FStStrNoPop var_154
  loc_AC8C26: LitStr ", "
  loc_AC8C29: ConcatStr
  loc_AC8C2A: FStStrNoPop var_15C
  loc_AC8C2D: LitI4 0
  loc_AC8C32: LitI4 -1
  loc_AC8C37: LitI4 1
  loc_AC8C3C: LitStr "."
  loc_AC8C3F: LitStr ","
  loc_AC8C42: FLdFPR8 ImpoDebi
  loc_AC8C45: CStrR8
  loc_AC8C47: FStStrNoPop var_158
  loc_AC8C4A: ImpAdCallI2 Replace(, , , , , )
  loc_AC8C4F: FStStrNoPop var_160
  loc_AC8C52: ConcatStr
  loc_AC8C53: FStStrNoPop var_164
  loc_AC8C56: LitStr ", '"
  loc_AC8C59: ConcatStr
  loc_AC8C5A: FStStrNoPop var_168
  loc_AC8C5D: ILdRf var_A0
  loc_AC8C60: ConcatStr
  loc_AC8C61: FStStrNoPop var_16C
  loc_AC8C64: ILdRf var_A4
  loc_AC8C67: ConcatStr
  loc_AC8C68: FStStrNoPop var_170
  loc_AC8C6B: ILdRf var_A8
  loc_AC8C6E: ConcatStr
  loc_AC8C6F: FStStrNoPop var_174
  loc_AC8C72: LitStr "', '"
  loc_AC8C75: ConcatStr
  loc_AC8C76: FStStrNoPop var_178
  loc_AC8C79: ILdRf var_AC
  loc_AC8C7C: ConcatStr
  loc_AC8C7D: FStStrNoPop var_17C
  loc_AC8C80: LitStr "', '"
  loc_AC8C83: ConcatStr
  loc_AC8C84: FStStrNoPop var_180
  loc_AC8C87: ILdRf var_B0
  loc_AC8C8A: ConcatStr
  loc_AC8C8B: FStStrNoPop var_184
  loc_AC8C8E: LitStr "', "
  loc_AC8C91: ConcatStr
  loc_AC8C92: FStStrNoPop var_188
  loc_AC8C95: ILdRf var_B4
  loc_AC8C98: ConcatStr
  loc_AC8C99: FStStrNoPop var_18C
  loc_AC8C9C: LitStr ", '"
  loc_AC8C9F: ConcatStr
  loc_AC8CA0: FStStrNoPop var_190
  loc_AC8CA3: ImpAdLdI4 MemVar_C3D03C
  loc_AC8CA6: ConcatStr
  loc_AC8CA7: FStStrNoPop var_194
  loc_AC8CAA: LitStr "')"
  loc_AC8CAD: ConcatStr
  loc_AC8CAE: FStStrNoPop var_198
  loc_AC8CB1: Call EjecutarRsCls(from_stack_1v)
  loc_AC8CB6: FFreeStr var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_10C = "": var_110 = "": var_114 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_AC8CFD: FFree1Var var_E8 = ""
  loc_AC8D00: LitStr "UPDATE ordenpago op"
  loc_AC8D03: LitStr " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = op.PeriInfo AND lqn.ExpeImpu = op.ExpeImpu AND lqn.NumeLiqu = op.NumeLiqu"
  loc_AC8D06: ConcatStr
  loc_AC8D07: FStStrNoPop var_10C
  loc_AC8D0A: LitStr " AND lqn.CodiCuco = '"
  loc_AC8D0D: ConcatStr
  loc_AC8D0E: FStStrNoPop var_110
  loc_AC8D11: ILdRf var_98
  loc_AC8D14: ConcatStr
  loc_AC8D15: FStStrNoPop var_114
  loc_AC8D18: LitStr "'"
  loc_AC8D1B: ConcatStr
  loc_AC8D1C: FStStrNoPop var_120
  loc_AC8D1F: LitStr " AND lqn.CodiRete = '"
  loc_AC8D22: ConcatStr
  loc_AC8D23: FStStrNoPop var_124
  loc_AC8D26: FLdI2 iCodiRete
  loc_AC8D29: CStrUI1
  loc_AC8D2B: FStStrNoPop var_128
  loc_AC8D2E: ConcatStr
  loc_AC8D2F: FStStrNoPop var_12C
  loc_AC8D32: LitStr "'"
  loc_AC8D35: ConcatStr
  loc_AC8D36: FStStrNoPop var_130
  loc_AC8D39: LitStr " SET lqn.NumeDebi = '"
  loc_AC8D3C: ConcatStr
  loc_AC8D3D: FStStrNoPop var_134
  loc_AC8D40: ILdRf var_B8
  loc_AC8D43: CStrI4
  loc_AC8D45: FStStrNoPop var_138
  loc_AC8D48: ConcatStr
  loc_AC8D49: FStStrNoPop var_13C
  loc_AC8D4C: LitStr "'"
  loc_AC8D4F: ConcatStr
  loc_AC8D50: FStStrNoPop var_140
  loc_AC8D53: LitStr " WHERE op.PeriInfo = "
  loc_AC8D56: ConcatStr
  loc_AC8D57: FStStrNoPop var_144
  loc_AC8D5A: FLdI2 PeriInfo
  loc_AC8D5D: CStrUI1
  loc_AC8D5F: FStStrNoPop var_148
  loc_AC8D62: ConcatStr
  loc_AC8D63: FStStrNoPop var_14C
  loc_AC8D66: LitStr " AND op.NumeOrpa = "
  loc_AC8D69: ConcatStr
  loc_AC8D6A: FStStrNoPop var_150
  loc_AC8D6D: ILdRf var_B4
  loc_AC8D70: ConcatStr
  loc_AC8D71: FStStrNoPop var_154
  loc_AC8D74: LitStr ";"
  loc_AC8D77: ConcatStr
  loc_AC8D78: FStStrNoPop var_158
  loc_AC8D7B: Call EjecutarRsCls(from_stack_1v)
  loc_AC8D80: FFreeStr var_10C = "": var_110 = "": var_114 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_AC8DA7: LitStr "COMMIT;"
  loc_AC8DAA: Call EjecutarRsCls(from_stack_1v)
  loc_AC8DAF: ILdRf var_B8
  loc_AC8DB2: CI2I4
  loc_AC8DB3: FStI2 var_86
  loc_AC8DB6: LitStr "Municipalidad de Guaymallén"
  loc_AC8DB9: LitStr "Municipalidad de General Alvear"
  loc_AC8DBC: EqStr
  loc_AC8DBE: ILdRf AddNew
  loc_AC8DC1: LitStr vbNullString
  loc_AC8DC4: NeStr
  loc_AC8DC6: AndI4
  loc_AC8DC7: BranchF loc_AC8F9E
  loc_AC8DCA: LitVarStr var_D8, "EX-"
  loc_AC8DCF: ILdRf AddNew
  loc_AC8DD2: FnLenStr
  loc_AC8DD3: LitI4 2
  loc_AC8DD8: SubI4
  loc_AC8DD9: FLdRfVar AddNew
  loc_AC8DDC: CVarRef
  loc_AC8DE1: FLdRfVar var_E8
  loc_AC8DE4: ImpAdCallFPR4  = Left(, )
  loc_AC8DE9: FLdRfVar var_E8
  loc_AC8DEC: ConcatVar var_108
  loc_AC8DF0: LitVarStr var_F8, "-   -GDEMZA-"
  loc_AC8DF5: ConcatVar var_1AC
  loc_AC8DF9: CStrVarTmp
  loc_AC8DFA: FStStr var_19C
  loc_AC8DFD: FFreeVar var_E8 = "": var_108 = ""
  loc_AC8E06: LitI4 1
  loc_AC8E0B: FLdRfVar AddNew
  loc_AC8E0E: CVarRef
  loc_AC8E13: FLdRfVar var_E8
  loc_AC8E16: ImpAdCallFPR4  = Right(, )
  loc_AC8E1B: FLdRfVar var_E8
  loc_AC8E1E: FStVar var_1BC
  loc_AC8E22: FLdRfVar var_1BC
  loc_AC8E25: LitVarStr var_C8, "H"
  loc_AC8E2A: HardType
  loc_AC8E2B: EqVarBool
  loc_AC8E2D: BranchT loc_AC8E3E
  loc_AC8E30: FLdRfVar var_1BC
  loc_AC8E33: LitVarStr var_D8, "h"
  loc_AC8E38: HardType
  loc_AC8E39: EqVarBool
  loc_AC8E3B: BranchF loc_AC8E4B
  loc_AC8E3E: ILdRf var_19C
  loc_AC8E41: LitStr "SECHAC#ALVEAR"
  loc_AC8E44: ConcatStr
  loc_AC8E45: FStStr var_19C
  loc_AC8E48: Branch loc_AC8F4B
  loc_AC8E4B: FLdRfVar var_1BC
  loc_AC8E4E: LitVarStr var_C8, "G"
  loc_AC8E53: HardType
  loc_AC8E54: EqVarBool
  loc_AC8E56: BranchT loc_AC8E67
  loc_AC8E59: FLdRfVar var_1BC
  loc_AC8E5C: LitVarStr var_D8, "g"
  loc_AC8E61: HardType
  loc_AC8E62: EqVarBool
  loc_AC8E64: BranchF loc_AC8E74
  loc_AC8E67: ILdRf var_19C
  loc_AC8E6A: LitStr "SECGOB#ALVEAR"
  loc_AC8E6D: ConcatStr
  loc_AC8E6E: FStStr var_19C
  loc_AC8E71: Branch loc_AC8F4B
  loc_AC8E74: FLdRfVar var_1BC
  loc_AC8E77: LitVarStr var_C8, "D"
  loc_AC8E7C: HardType
  loc_AC8E7D: EqVarBool
  loc_AC8E7F: BranchT loc_AC8E90
  loc_AC8E82: FLdRfVar var_1BC
  loc_AC8E85: LitVarStr var_D8, "d"
  loc_AC8E8A: HardType
  loc_AC8E8B: EqVarBool
  loc_AC8E8D: BranchF loc_AC8E9D
  loc_AC8E90: ILdRf var_19C
  loc_AC8E93: LitStr "SECDESARR#ALVEAR"
  loc_AC8E96: ConcatStr
  loc_AC8E97: FStStr var_19C
  loc_AC8E9A: Branch loc_AC8F4B
  loc_AC8E9D: FLdRfVar var_1BC
  loc_AC8EA0: LitVarStr var_C8, "P"
  loc_AC8EA5: HardType
  loc_AC8EA6: EqVarBool
  loc_AC8EA8: BranchT loc_AC8EB9
  loc_AC8EAB: FLdRfVar var_1BC
  loc_AC8EAE: LitVarStr var_D8, "p"
  loc_AC8EB3: HardType
  loc_AC8EB4: EqVarBool
  loc_AC8EB6: BranchF loc_AC8EC6
  loc_AC8EB9: ILdRf var_19C
  loc_AC8EBC: LitStr "SECOBYSERV#ALVEAR"
  loc_AC8EBF: ConcatStr
  loc_AC8EC0: FStStr var_19C
  loc_AC8EC3: Branch loc_AC8F4B
  loc_AC8EC6: FLdRfVar var_1BC
  loc_AC8EC9: LitVarStr var_C8, "I"
  loc_AC8ECE: HardType
  loc_AC8ECF: EqVarBool
  loc_AC8ED1: BranchT loc_AC8EE2
  loc_AC8ED4: FLdRfVar var_1BC
  loc_AC8ED7: LitVarStr var_D8, "i"
  loc_AC8EDC: HardType
  loc_AC8EDD: EqVarBool
  loc_AC8EDF: BranchF loc_AC8EEF
  loc_AC8EE2: ILdRf var_19C
  loc_AC8EE5: LitStr "MUNI#ALVEAR"
  loc_AC8EE8: ConcatStr
  loc_AC8EE9: FStStr var_19C
  loc_AC8EEC: Branch loc_AC8F4B
  loc_AC8EEF: FLdRfVar var_1BC
  loc_AC8EF2: LitVarStr var_C8, "V"
  loc_AC8EF7: HardType
  loc_AC8EF8: EqVarBool
  loc_AC8EFA: BranchT loc_AC8F0B
  loc_AC8EFD: FLdRfVar var_1BC
  loc_AC8F00: LitVarStr var_D8, "v"
  loc_AC8F05: HardType
  loc_AC8F06: EqVarBool
  loc_AC8F08: BranchF loc_AC8F18
  loc_AC8F0B: ILdRf var_19C
  loc_AC8F0E: LitStr "VIAL#ALVEAR"
  loc_AC8F11: ConcatStr
  loc_AC8F12: FStStr var_19C
  loc_AC8F15: Branch loc_AC8F4B
  loc_AC8F18: FLdRfVar var_1BC
  loc_AC8F1B: LitVarStr var_C8, "C"
  loc_AC8F20: HardType
  loc_AC8F21: EqVarBool
  loc_AC8F23: BranchT loc_AC8F34
  loc_AC8F26: FLdRfVar var_1BC
  loc_AC8F29: LitVarStr var_D8, "c"
  loc_AC8F2E: HardType
  loc_AC8F2F: EqVarBool
  loc_AC8F31: BranchF loc_AC8F41
  loc_AC8F34: ILdRf var_19C
  loc_AC8F37: LitStr "HCD#ALVEAR"
  loc_AC8F3A: ConcatStr
  loc_AC8F3B: FStStr var_19C
  loc_AC8F3E: Branch loc_AC8F4B
  loc_AC8F41: ILdRf var_19C
  loc_AC8F44: LitStr "ERROR EN LA LETRA"
  loc_AC8F47: ConcatStr
  loc_AC8F48: FStStr var_19C
  loc_AC8F4B: LitStr "INSERT IGNORE INTO contpres.expediente (ExpeInfo, ExpeGDE, AltaUsua, AltaUsuaGDE) VALUE ('"
  loc_AC8F4E: ILdRf AddNew
  loc_AC8F51: ConcatStr
  loc_AC8F52: FStStrNoPop var_10C
  loc_AC8F55: LitStr "','"
  loc_AC8F58: ConcatStr
  loc_AC8F59: FStStrNoPop var_110
  loc_AC8F5C: ILdRf var_19C
  loc_AC8F5F: ConcatStr
  loc_AC8F60: FStStrNoPop var_114
  loc_AC8F63: LitStr "','"
  loc_AC8F66: ConcatStr
  loc_AC8F67: FStStrNoPop var_120
  loc_AC8F6A: ImpAdLdI4 MemVar_C3D03C
  loc_AC8F6D: ConcatStr
  loc_AC8F6E: FStStrNoPop var_124
  loc_AC8F71: LitStr "','"
  loc_AC8F74: ConcatStr
  loc_AC8F75: FStStrNoPop var_128
  loc_AC8F78: ImpAdLdI4 MemVar_C3D040
  loc_AC8F7B: ConcatStr
  loc_AC8F7C: FStStrNoPop var_12C
  loc_AC8F7F: LitStr "');"
  loc_AC8F82: ConcatStr
  loc_AC8F83: FStStrNoPop var_130
  loc_AC8F86: Call EjecutarRsCls(from_stack_1v)
  loc_AC8F8B: FFreeStr var_10C = "": var_110 = "": var_114 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_AC8F9E: FLdI2 AddNew8
  loc_AC8FA1: BranchF loc_AC8FAF
  loc_AC8FA4: ILdRf var_B8
  loc_AC8FA7: FLdI2 PeriInfo
  loc_AC8FAA: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_AC8FAF: ExitProcCbHresult
  loc_AC8FB5: LitStr "ROLLBACK;"
  loc_AC8FB8: Call EjecutarRsCls(from_stack_1v)
  loc_AC8FBD: LitI2_Byte 0
  loc_AC8FBF: FStI2 var_86
  loc_AC8FC2: ExitProcCbHresult
End Function

Public Sub Anular(iNumeDebi, FeanDebi, BajaMoti) '9F87F8
  'Data Table: 4179D4
  loc_9F86F4: ILdRf FeanDebi
  loc_9F86F7: FStStrCopy var_88
  loc_9F86FA: ILdRf BajaMoti
  loc_9F86FD: FStStrCopy var_8C
  loc_9F8700: LitStr "UPDATE debito d "
  loc_9F8703: LitStr " LEFT JOIN liquidaneto lqn ON lqn.PeriInfo = d.PeriInfo AND lqn.NumeDebi = d.NumeDebi"
  loc_9F8706: ConcatStr
  loc_9F8707: FStStrNoPop var_90
  loc_9F870A: LitStr " SET d.FeanDebi="
  loc_9F870D: ConcatStr
  loc_9F870E: FStStrNoPop var_C4
  loc_9F8711: LitI4 1
  loc_9F8716: LitI4 1
  loc_9F871B: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_9F8720: FStVarCopyObj var_C0
  loc_9F8723: FLdRfVar var_C0
  loc_9F8726: FLdRfVar var_88
  loc_9F8729: CVarRef
  loc_9F872E: ImpAdCallI2 Format$(, )
  loc_9F8733: FStStrNoPop var_C8
  loc_9F8736: ConcatStr
  loc_9F8737: FStStrNoPop var_CC
  loc_9F873A: LitStr ", d.BajaUsua='"
  loc_9F873D: ConcatStr
  loc_9F873E: FStStrNoPop var_D0
  loc_9F8741: ImpAdLdI4 MemVar_C3D03C
  loc_9F8744: ConcatStr
  loc_9F8745: FStStrNoPop var_D4
  loc_9F8748: LitStr "', d.BajaFeho=Now(), d.BajaMoti='"
  loc_9F874B: ConcatStr
  loc_9F874C: FStStrNoPop var_D8
  loc_9F874F: ILdRf var_8C
  loc_9F8752: ConcatStr
  loc_9F8753: FStStrNoPop var_DC
  loc_9F8756: LitStr "', d.NumeOrpa = 0, lqn.NumeDebi = 0"
  loc_9F8759: ConcatStr
  loc_9F875A: FStStrNoPop var_E0
  loc_9F875D: LitStr " WHERE d.PeriInfo = "
  loc_9F8760: ConcatStr
  loc_9F8761: FStStrNoPop var_E4
  loc_9F8764: ImpAdLdI2 MemVar_C3D064
  loc_9F8767: CStrUI1
  loc_9F8769: FStStrNoPop var_E8
  loc_9F876C: ConcatStr
  loc_9F876D: FStStrNoPop var_EC
  loc_9F8770: LitStr " AND d.NumeDebi = "
  loc_9F8773: ConcatStr
  loc_9F8774: FStStrNoPop var_F0
  loc_9F8777: FLdI2 iNumeDebi
  loc_9F877A: CStrUI1
  loc_9F877C: FStStrNoPop var_F4
  loc_9F877F: ConcatStr
  loc_9F8780: FStStrNoPop var_F8
  loc_9F8783: LitStr ";"
  loc_9F8786: ConcatStr
  loc_9F8787: FStStrNoPop var_FC
  loc_9F878A: Call EjecutarRsCls(from_stack_1v)
  loc_9F878F: FFreeStr var_90 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_9F87B2: FFree1Var var_C0 = ""
  loc_9F87B5: LitI4 0
  loc_9F87BA: FLdRfVar var_C0
  loc_9F87BD: FLdRfVar var_104
  loc_9F87C0: LitVarStr var_A0, "NumeDebi"
  loc_9F87C5: PopAdLdVar
  loc_9F87C6: FLdRfVar var_100
  loc_9F87C9: FLdPr Me
  loc_9F87CC: MemLdPr RsFrm
  loc_9F87CF:  = Me.Fields
  loc_9F87D4: FLdPr var_100
  loc_9F87D7: from_stack_2 = Me.Item(from_stack_1)
  loc_9F87DC: FLdPr var_104
  loc_9F87DF:  = Me.Value
  loc_9F87E4: FLdRfVar var_C0
  loc_9F87E7: CI2Var
  loc_9F87E8: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_9F87ED: FFreeAd var_100 = ""
  loc_9F87F4: FFree1Var var_C0 = ""
  loc_9F87F7: ExitProcHresult
End Sub

Public Sub Eliminar() '9C8078
  'Data Table: 4179D4
  loc_9C7FB0: LitStr "DELETE FROM debito WHERE PeriInfo = "
  loc_9C7FB3: ImpAdLdI2 MemVar_C3D064
  loc_9C7FB6: CStrUI1
  loc_9C7FB8: FStStrNoPop var_88
  loc_9C7FBB: ConcatStr
  loc_9C7FBC: FStStrNoPop var_8C
  loc_9C7FBF: LitStr " AND NumeDebi = "
  loc_9C7FC2: ConcatStr
  loc_9C7FC3: CVarStr var_C4
  loc_9C7FC6: FLdRfVar var_B4
  loc_9C7FC9: FLdRfVar var_A4
  loc_9C7FCC: LitVarStr var_A0, "NumeDebi"
  loc_9C7FD1: PopAdLdVar
  loc_9C7FD2: FLdRfVar var_90
  loc_9C7FD5: FLdPr Me
  loc_9C7FD8: MemLdPr RsFrm
  loc_9C7FDB:  = Me.Fields
  loc_9C7FE0: FLdPr var_90
  loc_9C7FE3: from_stack_2 = Me.Item(from_stack_1)
  loc_9C7FE8: FLdPr var_A4
  loc_9C7FEB:  = Me.Value
  loc_9C7FF0: FLdRfVar var_B4
  loc_9C7FF3: ConcatVar var_D4
  loc_9C7FF7: CStrVarVal var_D8
  loc_9C7FFB: Call EjecutarRsCls(from_stack_1v)
  loc_9C8000: FFreeStr var_88 = "": var_8C = ""
  loc_9C8009: FFreeAd var_90 = ""
  loc_9C8010: FFreeVar var_C4 = "": var_B4 = ""
  loc_9C8019: FLdRfVar var_E0
  loc_9C801C: FLdPr Me
  loc_9C801F: MemLdPr RsFrm
  loc_9C8022:  = Me.AbsolutePosition
  loc_9C8027: ILdRf var_E0
  loc_9C802A: FStR4 var_DC
  loc_9C802D: Call Requery()
  loc_9C8032: FLdRfVar var_E0
  loc_9C8035: FLdPr Me
  loc_9C8038: MemLdPr RsFrm
  loc_9C803B:  = Me.RecordCount
  loc_9C8040: ILdRf var_E0
  loc_9C8043: LitI4 0
  loc_9C8048: GtI4
  loc_9C8049: BranchF loc_9C8075
  loc_9C804C: Call MoveFirst()
  loc_9C8051: ILdRf var_DC
  loc_9C8054: LitI4 1
  loc_9C8059: GtI4
  loc_9C805A: BranchF loc_9C8075
  loc_9C805D: LitVar_Missing var_A0
  loc_9C8060: PopAdLdVar
  loc_9C8061: ILdRf var_DC
  loc_9C8064: LitI4 2
  loc_9C8069: SubI4
  loc_9C806A: FLdPr Me
  loc_9C806D: MemLdPr RsFrm
  loc_9C8070: Me.Move from_stack_1, from_stack_2
  loc_9C8075: ExitProcHresult
  loc_9C8076: NewIfNullPr Me
End Sub

Public Sub Modificar(FechDebi, ExorImpu, ExpeImpu, CodiCuco, CucuPers, Tifa, Sufa, Nufa, ImpoDebi, CodiOrga, DetaDebi, NumeOrpa) 'A558D4
  'Data Table: 4179D4
  loc_A556A4: ILdRf FechDebi
  loc_A556A7: FStStrCopy var_88
  loc_A556AA: ILdRf ExorImpu
  loc_A556AD: FStStrCopy var_8C
  loc_A556B0: ILdRf ExpeImpu
  loc_A556B3: FStStrCopy var_90
  loc_A556B6: ILdRf CodiCuco
  loc_A556B9: FStStrCopy var_94
  loc_A556BC: ILdRf CucuPers
  loc_A556BF: FStStrCopy var_98
  loc_A556C2: ILdRf Tifa
  loc_A556C5: FStStrCopy var_9C
  loc_A556C8: ILdRf Sufa
  loc_A556CB: FStStrCopy var_A0
  loc_A556CE: ILdRf Nufa
  loc_A556D1: FStStrCopy var_A4
  loc_A556D4: ILdRf DetaDebi
  loc_A556D7: FStStrCopy var_A8
  loc_A556DA: ILdRf NumeOrpa
  loc_A556DD: FStStrCopy var_AC
  loc_A556E0: ILdRf arg_3C
  loc_A556E3: FStStrCopy var_B0
  loc_A556E6: ILdRf var_90
  loc_A556E9: ILdRf var_8C
  loc_A556EC: ILdRf var_98
  loc_A556EF: ImpAdCallI2 Proc_283_1_9C9B04(, , )
  loc_A556F4: FStStr var_90
  loc_A556F7: LitStr "UPDATE debito"
  loc_A556FA: LitStr " SET FechDebi= "
  loc_A556FD: ConcatStr
  loc_A556FE: FStStrNoPop var_E4
  loc_A55701: LitI4 1
  loc_A55706: LitI4 1
  loc_A5570B: LitVarStr var_D0, "'yyyy-mm-dd'"
  loc_A55710: FStVarCopyObj var_E0
  loc_A55713: FLdRfVar var_E0
  loc_A55716: FLdRfVar var_88
  loc_A55719: CVarRef
  loc_A5571E: ImpAdCallI2 Format$(, )
  loc_A55723: FStStrNoPop var_E8
  loc_A55726: ConcatStr
  loc_A55727: FStStrNoPop var_EC
  loc_A5572A: LitStr ", ExorImpu='"
  loc_A5572D: ConcatStr
  loc_A5572E: FStStrNoPop var_F0
  loc_A55731: ILdRf var_8C
  loc_A55734: ConcatStr
  loc_A55735: FStStrNoPop var_F4
  loc_A55738: LitStr "', ExpeImpu='"
  loc_A5573B: ConcatStr
  loc_A5573C: FStStrNoPop var_F8
  loc_A5573F: ILdRf var_90
  loc_A55742: ConcatStr
  loc_A55743: FStStrNoPop var_FC
  loc_A55746: LitStr "', CodiCuco='"
  loc_A55749: ConcatStr
  loc_A5574A: FStStrNoPop var_100
  loc_A5574D: ILdRf var_94
  loc_A55750: ConcatStr
  loc_A55751: FStStrNoPop var_104
  loc_A55754: LitStr "', CucuPers='"
  loc_A55757: ConcatStr
  loc_A55758: FStStrNoPop var_108
  loc_A5575B: ILdRf var_98
  loc_A5575E: ConcatStr
  loc_A5575F: FStStrNoPop var_10C
  loc_A55762: LitStr "', NumeFact='"
  loc_A55765: ConcatStr
  loc_A55766: FStStrNoPop var_110
  loc_A55769: ILdRf var_9C
  loc_A5576C: ConcatStr
  loc_A5576D: FStStrNoPop var_114
  loc_A55770: ILdRf var_A0
  loc_A55773: ConcatStr
  loc_A55774: FStStrNoPop var_118
  loc_A55777: ILdRf var_A4
  loc_A5577A: ConcatStr
  loc_A5577B: FStStrNoPop var_11C
  loc_A5577E: LitStr "', CodiOrga='"
  loc_A55781: ConcatStr
  loc_A55782: FStStrNoPop var_120
  loc_A55785: ILdRf var_A8
  loc_A55788: ConcatStr
  loc_A55789: FStStrNoPop var_124
  loc_A5578C: LitStr "', ImpoDebi="
  loc_A5578F: ConcatStr
  loc_A55790: FStStrNoPop var_12C
  loc_A55793: LitI4 0
  loc_A55798: LitI4 -1
  loc_A5579D: LitI4 1
  loc_A557A2: LitStr "."
  loc_A557A5: LitStr ","
  loc_A557A8: FLdFPR8 ImpoDebi
  loc_A557AB: CStrR8
  loc_A557AD: FStStrNoPop var_128
  loc_A557B0: ImpAdCallI2 Replace(, , , , , )
  loc_A557B5: FStStrNoPop var_130
  loc_A557B8: ConcatStr
  loc_A557B9: FStStrNoPop var_134
  loc_A557BC: LitStr ", DetaDebi='"
  loc_A557BF: ConcatStr
  loc_A557C0: FStStrNoPop var_138
  loc_A557C3: ILdRf var_AC
  loc_A557C6: ConcatStr
  loc_A557C7: FStStrNoPop var_13C
  loc_A557CA: LitStr "', ModiUsua='"
  loc_A557CD: ConcatStr
  loc_A557CE: FStStrNoPop var_140
  loc_A557D1: ImpAdLdI4 MemVar_C3D03C
  loc_A557D4: ConcatStr
  loc_A557D5: FStStrNoPop var_144
  loc_A557D8: LitStr "', ModiFeho=Now()"
  loc_A557DB: ConcatStr
  loc_A557DC: FStStrNoPop var_148
  loc_A557DF: LitStr " WHERE PeriInfo = "
  loc_A557E2: ConcatStr
  loc_A557E3: FStStrNoPop var_14C
  loc_A557E6: ImpAdLdI2 MemVar_C3D064
  loc_A557E9: CStrUI1
  loc_A557EB: FStStrNoPop var_150
  loc_A557EE: ConcatStr
  loc_A557EF: FStStrNoPop var_154
  loc_A557F2: LitStr " AND NumeDebi = "
  loc_A557F5: ConcatStr
  loc_A557F6: CVarStr var_18C
  loc_A557F9: FLdRfVar var_17C
  loc_A557FC: FLdRfVar var_16C
  loc_A557FF: LitVarStr var_168, "NumeDebi"
  loc_A55804: PopAdLdVar
  loc_A55805: FLdRfVar var_158
  loc_A55808: FLdPr Me
  loc_A5580B: MemLdPr RsFrm
  loc_A5580E:  = Me.Fields
  loc_A55813: FLdPr var_158
  loc_A55816: from_stack_2 = Me.Item(from_stack_1)
  loc_A5581B: FLdPr var_16C
  loc_A5581E:  = Me.Value
  loc_A55823: FLdRfVar var_17C
  loc_A55826: ConcatVar var_19C
  loc_A5582A: LitVarStr var_1AC, ";"
  loc_A5582F: ConcatVar var_1BC
  loc_A55833: CStrVarVal var_1C0
  loc_A55837: Call EjecutarRsCls(from_stack_1v)
  loc_A5583C: FFreeStr var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_A5587B: FFreeAd var_158 = ""
  loc_A55882: FFreeVar var_E0 = "": var_18C = "": var_17C = "": var_19C = ""
  loc_A5588F: LitI4 0
  loc_A55894: FLdRfVar var_E0
  loc_A55897: FLdRfVar var_16C
  loc_A5589A: LitVarStr var_C0, "NumeDebi"
  loc_A5589F: PopAdLdVar
  loc_A558A0: FLdRfVar var_158
  loc_A558A3: FLdPr Me
  loc_A558A6: MemLdPr RsFrm
  loc_A558A9:  = Me.Fields
  loc_A558AE: FLdPr var_158
  loc_A558B1: from_stack_2 = Me.Item(from_stack_1)
  loc_A558B6: FLdPr var_16C
  loc_A558B9:  = Me.Value
  loc_A558BE: FLdRfVar var_E0
  loc_A558C1: CI2Var
  loc_A558C2: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A558C7: FFreeAd var_158 = ""
  loc_A558CE: FFree1Var var_E0 = ""
  loc_A558D1: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '9723B4
  'Data Table: 4179D4
  loc_97238C: ILdRf sSelect
  loc_97238F: FStStrCopy var_88
  loc_972392: FLdPr Me
  loc_972395: MemLdRfVar from_stack_1.RsFrm
  loc_972398: ILdRf var_88
  loc_97239B: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_9723A0: LitVarStr var_98, "Primary"
  loc_9723A5: PopAdLdVar
  loc_9723A6: FLdPr Me
  loc_9723A9: LateIdCall
  loc_9723B1: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '960EB8
  'Data Table: 4179D4
  loc_960EA0: ILdRf sSelect
  loc_960EA3: FStStrCopy var_88
  loc_960EA6: FLdPr Me
  loc_960EA9: MemLdRfVar from_stack_1.global_56
  loc_960EAC: ILdRf var_88
  loc_960EAF: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_960EB4: ExitProcHresult
End Sub

Public Sub Requery() '968020
  'Data Table: 4179D4
  loc_968000: FLdPr Me
  loc_968003: MemLdRfVar from_stack_1.RsFrm
  loc_968006: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_96800B: LitVarStr var_94, "Primary"
  loc_968010: PopAdLdVar
  loc_968011: FLdPr Me
  loc_968014: LateIdCall
  loc_96801C: ExitProcHresult
  loc_96801D: MemLdPr global_6403
End Sub

Public Property Get DataSource() '971F04
  'Data Table: 4179D4
  loc_971EE0: ZeroRetVal
  loc_971EE2: FLdRfVar var_8C
  loc_971EE5: FLdPr Me
  loc_971EE8: MemLdPr RsFrm
  loc_971EEB:  = Me.DataSource
  loc_971EF0: ILdRf var_8C
  loc_971EF3: CastAd
  loc_971EF6: FStAdFunc var_88
  loc_971EF9: FFree1Ad var_8C
  loc_971EFC: ExitProcCbHresult
End Sub

Public Function UltimaFechDebi(PeriInfo) '9E56D8
  'Data Table: 4179D4
  loc_9E55D0: ZeroRetVal
  loc_9E55D2: LitStr "SELECT FechDebi"
  loc_9E55D5: LitStr " FROM debito"
  loc_9E55D8: ConcatStr
  loc_9E55D9: FStStrNoPop var_8C
  loc_9E55DC: LitStr " WHERE PeriInfo = "
  loc_9E55DF: ConcatStr
  loc_9E55E0: FStStrNoPop var_90
  loc_9E55E3: FLdI2 PeriInfo
  loc_9E55E6: CStrUI1
  loc_9E55E8: FStStrNoPop UltimaFechDebi
  loc_9E55EB: ConcatStr
  loc_9E55EC: FStStrNoPop var_98
  loc_9E55EF: LitStr " ORDER BY FechDebi DESC LIMIT 1;"
  loc_9E55F2: ConcatStr
  loc_9E55F3: FStStrNoPop var_9C
  loc_9E55F6: Call EjecutarRsCls(from_stack_1v)
  loc_9E55FB: FFreeStr var_8C = "": var_90 = "": UltimaFechDebi = "": var_98 = ""
  loc_9E5608: FLdRfVar var_A0
  loc_9E560B: FLdPr Me
  loc_9E560E: MemLdPr global_56
  loc_9E5611:  = Me.RecordCount
  loc_9E5616: ILdRf var_A0
  loc_9E5619: LitI4 0
  loc_9E561E: GtI4
  loc_9E561F: BranchF loc_9E5660
  loc_9E5622: FLdRfVar var_C8
  loc_9E5625: FLdRfVar var_B8
  loc_9E5628: LitVarStr var_B4, "FechDebi"
  loc_9E562D: PopAdLdVar
  loc_9E562E: FLdRfVar var_A4
  loc_9E5631: FLdPr Me
  loc_9E5634: MemLdPr global_56
  loc_9E5637:  = Me.Fields
  loc_9E563C: FLdPr var_A4
  loc_9E563F: from_stack_2 = Me.Item(from_stack_1)
  loc_9E5644: FLdPr var_B8
  loc_9E5647:  = Me.Value
  loc_9E564C: FLdRfVar var_C8
  loc_9E564F: CStrVarTmp
  loc_9E5650: FStStr var_88
  loc_9E5653: FFreeAd var_A4 = ""
  loc_9E565A: FFree1Var var_C8 = ""
  loc_9E565D: Branch loc_9E56D1
  loc_9E5660: LitStr "SELECT IFNULL(FeminPaco,'2024-01-01') FeminPaco"
  loc_9E5663: LitStr " FROM paraconta"
  loc_9E5666: ConcatStr
  loc_9E5667: FStStrNoPop var_8C
  loc_9E566A: LitStr " WHERE PeriInfo = "
  loc_9E566D: ConcatStr
  loc_9E566E: FStStrNoPop var_90
  loc_9E5671: FLdI2 PeriInfo
  loc_9E5674: CStrUI1
  loc_9E5676: FStStrNoPop UltimaFechDebi
  loc_9E5679: ConcatStr
  loc_9E567A: FStStrNoPop var_98
  loc_9E567D: LitStr ";"
  loc_9E5680: ConcatStr
  loc_9E5681: FStStrNoPop var_9C
  loc_9E5684: Call EjecutarRsCls(from_stack_1v)
  loc_9E5689: FFreeStr var_8C = "": var_90 = "": UltimaFechDebi = "": var_98 = ""
  loc_9E5696: FLdRfVar var_C8
  loc_9E5699: FLdRfVar var_B8
  loc_9E569C: LitVarStr var_B4, "feminpaco"
  loc_9E56A1: PopAdLdVar
  loc_9E56A2: FLdRfVar var_A4
  loc_9E56A5: FLdPr Me
  loc_9E56A8: MemLdPr global_56
  loc_9E56AB:  = Me.Fields
  loc_9E56B0: FLdPr var_A4
  loc_9E56B3: from_stack_2 = Me.Item(from_stack_1)
  loc_9E56B8: FLdPr var_B8
  loc_9E56BB:  = Me.Value
  loc_9E56C0: FLdRfVar var_C8
  loc_9E56C3: CStrVarTmp
  loc_9E56C4: FStStr var_88
  loc_9E56C7: FFreeAd var_A4 = ""
  loc_9E56CE: FFree1Var var_C8 = ""
  loc_9E56D1: ExitProcCbHresult
End Function

Public Function ValidaModificar(PeriInfo, NumeDebi, eDebi, ePara) 'A12CF4
  'Data Table: 4179D4
  loc_A12B70: ZeroRetVal
  loc_A12B72: ILdRf eDebi
  loc_A12B75: FLdI2 NumeDebi
  loc_A12B78: CStrUI1
  loc_A12B7A: FStStrNoPop var_90
  loc_A12B7D: FLdI2 PeriInfo
  loc_A12B80: CStrUI1
  loc_A12B82: FStStrNoPop var_8C
  loc_A12B85: ImpAdCallI2 Proc_259_9_B226D4(, , )
  loc_A12B8A: NotI4
  loc_A12B8B: FFreeStr var_8C = ""
  loc_A12B92: BranchF loc_A12BA9
  loc_A12B95: FLdRfVar var_8C
  loc_A12B98: ILdPr
  loc_A12B9B: from_stack_1v = tbldebito.MsgErrorGet()
  loc_A12BA0: FLdZeroAd var_8C
  loc_A12BA3: FStStr var_88
  loc_A12BA6: Branch loc_A12CEE
  loc_A12BA9: FLdRfVar var_8C
  loc_A12BAC: ILdPr
  loc_A12BAF: from_stack_1v = tbldebito.BajaUsuaGet()
  loc_A12BB4: ILdRf var_8C
  loc_A12BB7: LitStr vbNullString
  loc_A12BBA: NeStr
  loc_A12BBC: FFree1Str var_8C
  loc_A12BBF: BranchF loc_A12BD1
  loc_A12BC2: LitStr "El Débito ha sido dado de baja. Verifique..."
  loc_A12BC5: FStStrCopy var_88
  loc_A12BC8: ExitProcCbHresult
  loc_A12BCE: Branch loc_A12CEE
  loc_A12BD1: FLdRfVar var_92
  loc_A12BD4: ILdPr
  loc_A12BD7: from_stack_1v = tbldebito.TieneLiqGet()
  loc_A12BDC: FLdI2 var_92
  loc_A12BDF: BranchF loc_A12C0E
  loc_A12BE2: LitStr "El Débito nº "
  loc_A12BE5: FLdRfVar var_8C
  loc_A12BE8: ILdPr
  loc_A12BEB: from_stack_1v = tbldebito.NumeDebiGet()
  loc_A12BF0: ILdRf var_8C
  loc_A12BF3: ConcatStr
  loc_A12BF4: FStStrNoPop var_90
  loc_A12BF7: LitStr " se encuentra en una liquidación. Verifique..."
  loc_A12BFA: ConcatStr
  loc_A12BFB: FStStr var_88
  loc_A12BFE: FFreeStr var_8C = ""
  loc_A12C05: ExitProcCbHresult
  loc_A12C0B: Branch loc_A12CEE
  loc_A12C0E: FLdRfVar var_92
  loc_A12C11: ILdPr
  loc_A12C14: from_stack_1v = tbldebito.TieneLiqAnulGet()
  loc_A12C19: FLdI2 var_92
  loc_A12C1C: BranchF loc_A12C4B
  loc_A12C1F: LitStr "El Débito nº "
  loc_A12C22: FLdRfVar var_8C
  loc_A12C25: ILdPr
  loc_A12C28: from_stack_1v = tbldebito.NumeDebiGet()
  loc_A12C2D: ILdRf var_8C
  loc_A12C30: ConcatStr
  loc_A12C31: FStStrNoPop var_90
  loc_A12C34: LitStr " estuvo en una liquidación. Verifique..."
  loc_A12C37: ConcatStr
  loc_A12C38: FStStr var_88
  loc_A12C3B: FFreeStr var_8C = ""
  loc_A12C42: ExitProcCbHresult
  loc_A12C48: Branch loc_A12CEE
  loc_A12C4B: ILdRf ePara
  loc_A12C4E: FLdI2 PeriInfo
  loc_A12C51: LitI2_Byte 1
  loc_A12C53: SubI2
  loc_A12C54: ImpAdCallFPR4 Proc_259_23_AE2098(, )
  loc_A12C59: FLdRfVar var_8C
  loc_A12C5C: ILdPr
  loc_A12C5F: from_stack_1v = tbldebito.CodiCucoGet()
  loc_A12C64: ILdRf var_8C
  loc_A12C67: FLdRfVar var_90
  loc_A12C6A: ILdPr
  loc_A12C6D: from_stack_1v = tblparaconta.CcrpPacoGet()
  loc_A12C72: ILdRf var_90
  loc_A12C75: EqStr
  loc_A12C77: FFreeStr var_8C = ""
  loc_A12C7E: BranchF loc_A12CC6
  loc_A12C81: LitStr "Municipalidad de Guaymallén"
  loc_A12C84: LitStr "Municipalidad de Malargüe"
  loc_A12C87: EqStr
  loc_A12C89: BranchF loc_A12C95
  loc_A12C8C: LitStr "Solo se permite modificar la cuenta por 2.1.2.3.00.00.00"
  loc_A12C8F: FStStrCopy var_88
  loc_A12C92: Branch loc_A12CC3
  loc_A12C95: LitStr "Municipalidad de Guaymallén"
  loc_A12C98: LitStr "Municipalidad de General Alvear"
  loc_A12C9B: EqStr
  loc_A12C9D: BranchF loc_A12CA9
  loc_A12CA0: LitStr "Advertencia: El Débito es de Residuos Pasivos. Verifique..."
  loc_A12CA3: FStStrCopy var_88
  loc_A12CA6: Branch loc_A12CC3
  loc_A12CA9: LitStr "Municipalidad de Guaymallén"
  loc_A12CAC: LitStr "Municipalidad de Maipú"
  loc_A12CAF: EqStr
  loc_A12CB1: BranchF loc_A12CBD
  loc_A12CB4: LitStr "Advertencia: El Débito es de Residuos Pasivos. Verifique..."
  loc_A12CB7: FStStrCopy var_88
  loc_A12CBA: Branch loc_A12CC3
  loc_A12CBD: LitStr "El Débito es de Residuos Pasivos. Verifique..."
  loc_A12CC0: FStStrCopy var_88
  loc_A12CC3: Branch loc_A12CEE
  loc_A12CC6: LitStr "Municipalidad de Guaymallén"
  loc_A12CC9: LitStr "Municipalidad de Malargüe"
  loc_A12CCC: EqStr
  loc_A12CCE: FLdRfVar var_8C
  loc_A12CD1: ILdPr
  loc_A12CD4: from_stack_1v = tbldebito.CodiCucoGet()
  loc_A12CD9: ILdRf var_8C
  loc_A12CDC: LitStr "2123000000"
  loc_A12CDF: EqStr
  loc_A12CE1: AndI4
  loc_A12CE2: FFree1Str var_8C
  loc_A12CE5: BranchF loc_A12CEE
  loc_A12CE8: LitStr "Solo se permite modificar la cuenta por 2.1.2.3.00.00.00"
  loc_A12CEB: FStStrCopy var_88
  loc_A12CEE: ExitProcCbHresult
End Function

Public Function ValidaEliminar(PeriInfo, NumeDebi, eDebi, ePara) '9E23FC
  'Data Table: 4179D4
  loc_9E22E4: ZeroRetVal
  loc_9E22E6: ILdRf eDebi
  loc_9E22E9: FLdI2 NumeDebi
  loc_9E22EC: CStrUI1
  loc_9E22EE: FStStrNoPop var_90
  loc_9E22F1: FLdI2 PeriInfo
  loc_9E22F4: CStrUI1
  loc_9E22F6: FStStrNoPop var_8C
  loc_9E22F9: ImpAdCallI2 Proc_259_9_B226D4(, , )
  loc_9E22FE: NotI4
  loc_9E22FF: FFreeStr var_8C = ""
  loc_9E2306: BranchF loc_9E231D
  loc_9E2309: FLdRfVar var_8C
  loc_9E230C: ILdPr
  loc_9E230F: from_stack_1v = tbldebito.MsgErrorGet()
  loc_9E2314: FLdZeroAd var_8C
  loc_9E2317: FStStr var_88
  loc_9E231A: Branch loc_9E23F3
  loc_9E231D: FLdRfVar var_8C
  loc_9E2320: ILdPr
  loc_9E2323: from_stack_1v = tbldebito.BajaUsuaGet()
  loc_9E2328: ILdRf var_8C
  loc_9E232B: LitStr vbNullString
  loc_9E232E: NeStr
  loc_9E2330: FFree1Str var_8C
  loc_9E2333: BranchF loc_9E2345
  loc_9E2336: LitStr "El Débito ha sido dado de baja. Verifique..."
  loc_9E2339: FStStrCopy var_88
  loc_9E233C: ExitProcCbHresult
  loc_9E2342: Branch loc_9E23C1
  loc_9E2345: FLdRfVar var_92
  loc_9E2348: ILdPr
  loc_9E234B: from_stack_1v = tbldebito.TieneLiqGet()
  loc_9E2350: FLdI2 var_92
  loc_9E2353: BranchF loc_9E2382
  loc_9E2356: LitStr "El Débito nº "
  loc_9E2359: FLdRfVar var_8C
  loc_9E235C: ILdPr
  loc_9E235F: from_stack_1v = tbldebito.NumeDebiGet()
  loc_9E2364: ILdRf var_8C
  loc_9E2367: ConcatStr
  loc_9E2368: FStStrNoPop var_90
  loc_9E236B: LitStr " se encuentra en una liquidación. Verifique..."
  loc_9E236E: ConcatStr
  loc_9E236F: FStStr var_88
  loc_9E2372: FFreeStr var_8C = ""
  loc_9E2379: ExitProcCbHresult
  loc_9E237F: Branch loc_9E23C1
  loc_9E2382: ILdRf ePara
  loc_9E2385: FLdI2 PeriInfo
  loc_9E2388: ImpAdCallFPR4 Proc_259_23_AE2098(, )
  loc_9E238D: FLdRfVar var_8C
  loc_9E2390: ILdPr
  loc_9E2393: from_stack_1v = tbldebito.CodiCucoGet()
  loc_9E2398: ILdRf var_8C
  loc_9E239B: FLdRfVar var_90
  loc_9E239E: ILdPr
  loc_9E23A1: from_stack_1v = tblparaconta.CcrpPacoGet()
  loc_9E23A6: ILdRf var_90
  loc_9E23A9: EqStr
  loc_9E23AB: FFreeStr var_8C = ""
  loc_9E23B2: BranchF loc_9E23C1
  loc_9E23B5: LitStr "El Débito es de Residuos Pasivos y NO puede Eliminarse. Verifique..."
  loc_9E23B8: FStStrCopy var_88
  loc_9E23BB: ExitProcCbHresult
  loc_9E23C1: FLdRfVar var_92
  loc_9E23C4: FLdRfVar PeriInfo
  loc_9E23C7: Call Proc_9_31_9A7F7C()
  loc_9E23CC: FLdRfVar var_8C
  loc_9E23CF: ILdPr
  loc_9E23D2: from_stack_1v = tbldebito.NumeDebiGet()
  loc_9E23D7: ILdRf var_8C
  loc_9E23DA: CR8Str
  loc_9E23DC: FLdI2 var_92
  loc_9E23DF: CR8I2
  loc_9E23E0: NeR8
  loc_9E23E1: FFree1Str var_8C
  loc_9E23E4: BranchF loc_9E23F3
  loc_9E23E7: LitStr "El Débito NO es el último y NO puede Eliminarse. Verifique..."
  loc_9E23EA: FStStrCopy var_88
  loc_9E23ED: ExitProcCbHresult
  loc_9E23F3: ExitProcCbHresult
End Function

Public Function ValidaAnular(PeriInfo, NumeDebi, eDebi, ePara) '9CC744
  'Data Table: 4179D4
  loc_9CC65C: ZeroRetVal
  loc_9CC65E: ILdRf eDebi
  loc_9CC661: FLdI2 NumeDebi
  loc_9CC664: CStrUI1
  loc_9CC666: FStStrNoPop var_90
  loc_9CC669: FLdI2 PeriInfo
  loc_9CC66C: CStrUI1
  loc_9CC66E: FStStrNoPop var_8C
  loc_9CC671: ImpAdCallI2 Proc_259_9_B226D4(, , )
  loc_9CC676: NotI4
  loc_9CC677: FFreeStr var_8C = ""
  loc_9CC67E: BranchF loc_9CC695
  loc_9CC681: FLdRfVar var_8C
  loc_9CC684: ILdPr
  loc_9CC687: from_stack_1v = tbldebito.MsgErrorGet()
  loc_9CC68C: FLdZeroAd var_8C
  loc_9CC68F: FStStr var_88
  loc_9CC692: Branch loc_9CC73C
  loc_9CC695: FLdRfVar var_8C
  loc_9CC698: ILdPr
  loc_9CC69B: from_stack_1v = tbldebito.BajaUsuaGet()
  loc_9CC6A0: ILdRf var_8C
  loc_9CC6A3: LitStr vbNullString
  loc_9CC6A6: NeStr
  loc_9CC6A8: FFree1Str var_8C
  loc_9CC6AB: BranchF loc_9CC6BD
  loc_9CC6AE: LitStr "El Débito ha sido dado de baja. Verifique..."
  loc_9CC6B1: FStStrCopy var_88
  loc_9CC6B4: ExitProcCbHresult
  loc_9CC6BA: Branch loc_9CC73C
  loc_9CC6BD: FLdRfVar var_92
  loc_9CC6C0: ILdPr
  loc_9CC6C3: from_stack_1v = tbldebito.TieneLiqGet()
  loc_9CC6C8: FLdI2 var_92
  loc_9CC6CB: BranchF loc_9CC6FA
  loc_9CC6CE: LitStr "El Débito nº "
  loc_9CC6D1: FLdRfVar var_8C
  loc_9CC6D4: ILdPr
  loc_9CC6D7: from_stack_1v = tbldebito.NumeDebiGet()
  loc_9CC6DC: ILdRf var_8C
  loc_9CC6DF: ConcatStr
  loc_9CC6E0: FStStrNoPop var_90
  loc_9CC6E3: LitStr " se encuentra en una liquidación. Verifique..."
  loc_9CC6E6: ConcatStr
  loc_9CC6E7: FStStr var_88
  loc_9CC6EA: FFreeStr var_8C = ""
  loc_9CC6F1: ExitProcCbHresult
  loc_9CC6F7: Branch loc_9CC73C
  loc_9CC6FA: ILdRf ePara
  loc_9CC6FD: FLdI2 PeriInfo
  loc_9CC700: LitI2_Byte 1
  loc_9CC702: SubI2
  loc_9CC703: ImpAdCallFPR4 Proc_259_23_AE2098(, )
  loc_9CC708: FLdRfVar var_8C
  loc_9CC70B: ILdPr
  loc_9CC70E: from_stack_1v = tbldebito.CodiCucoGet()
  loc_9CC713: ILdRf var_8C
  loc_9CC716: FLdRfVar var_90
  loc_9CC719: ILdPr
  loc_9CC71C: from_stack_1v = tblparaconta.CcrpPacoGet()
  loc_9CC721: ILdRf var_90
  loc_9CC724: EqStr
  loc_9CC726: FFreeStr var_8C = ""
  loc_9CC72D: BranchF loc_9CC73C
  loc_9CC730: LitStr "Advertencia: El Débito es de Residuos Pasivos. Verifique..."
  loc_9CC733: FStStrCopy var_88
  loc_9CC736: ExitProcCbHresult
  loc_9CC73C: ExitProcCbHresult
End Function

Private Function Proc_9_29_972A28() '972A28
  'Data Table: 4179D4
  loc_972A04: LitStr "Primary"
  loc_972A07: FLdPr Me
  loc_972A0A: LateIdLdVar var_94 DispID_4 0
  loc_972A11: CastAdVar Me
  loc_972A15: FStAdFunc var_98
  loc_972A18: FLdPr var_98
  loc_972A20: FFree1Ad var_98
  loc_972A23: FFree1Var var_94 = ""
  loc_972A26: ExitProcHresult
End Function

Private Function Proc_9_30_96810C(arg_C) '96810C
  'Data Table: 4179D4
  loc_9680F0: ILdI4 arg_C
  loc_9680F3: FStStrCopy var_88
  loc_9680F6: ILdRf var_88
  loc_9680F9: LitStr "Primary"
  loc_9680FC: EqStr
  loc_9680FE: BranchF loc_96810B
  loc_968101: FLdPr Me
  loc_968104: MemLdStr RsFrm
  loc_968107: IStAd
  loc_96810B: ExitProcHresult
End Function

Private Function Proc_9_31_9A7F7C(arg_C) '9A7F7C
  'Data Table: 4179D4
  loc_9A7F04: LitStr "SELECT IFNULL(NumeDebi,0) NumeDebi"
  loc_9A7F07: LitStr " FROM debito"
  loc_9A7F0A: ConcatStr
  loc_9A7F0B: FStStrNoPop var_8C
  loc_9A7F0E: LitStr " WHERE PeriInfo = "
  loc_9A7F11: ConcatStr
  loc_9A7F12: FStStrNoPop var_90
  loc_9A7F15: ILdI2 arg_C
  loc_9A7F18: CStrUI1
  loc_9A7F1A: FStStrNoPop var_94
  loc_9A7F1D: ConcatStr
  loc_9A7F1E: FStStrNoPop var_98
  loc_9A7F21: LitStr " ORDER BY NumeDebi DESC LIMIT 1"
  loc_9A7F24: ConcatStr
  loc_9A7F25: FStStrNoPop var_9C
  loc_9A7F28: Call EjecutarRsCls(from_stack_1v)
  loc_9A7F2D: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9A7F3A: FLdRfVar var_C4
  loc_9A7F3D: FLdRfVar var_B4
  loc_9A7F40: LitVarStr var_B0, "NumeDebi"
  loc_9A7F45: PopAdLdVar
  loc_9A7F46: FLdRfVar var_A0
  loc_9A7F49: FLdPr Me
  loc_9A7F4C: MemLdPr global_56
  loc_9A7F4F:  = Me.Fields
  loc_9A7F54: FLdPr var_A0
  loc_9A7F57: from_stack_2 = Me.Item(from_stack_1)
  loc_9A7F5C: FLdPr var_B4
  loc_9A7F5F:  = Me.Value
  loc_9A7F64: FLdRfVar var_C4
  loc_9A7F67: CI2Var
  loc_9A7F68: FStI2 var_86
  loc_9A7F6B: FFreeAd var_A0 = ""
  loc_9A7F72: FFree1Var var_C4 = ""
  loc_9A7F75: ExitProcCbHresult
End Function
