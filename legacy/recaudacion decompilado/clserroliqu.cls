VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clserroliqu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject
Public RsCls As New UnkObject


Public Function RsFrmGet() '41A31C
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '41A32B
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '41A33A
  RsFrm = Value
End Sub

Public Function RsClsGet() '41A349
  RsClsGet = RsCls
End Function

Public Sub RsClsPut(Value) '41A358
  RsCls = Value
End Sub

Public Sub RsClsSet(Value) '41A367
  RsCls = Value
End Sub

Public Sub MoveFirst() '9EE5EC
  'Data Table: 41A084
  loc_9EE5C4: FLdRfVar var_88
  loc_9EE5C7: FLdPr Me
  loc_9EE5CA: MemLdPr RsFrm
  loc_9EE5CD:  = Me.RecordCount
  loc_9EE5D2: ILdRf var_88
  loc_9EE5D5: LitI4 0
  loc_9EE5DA: GtI4
  loc_9EE5DB: BranchF loc_9EE5E9
  loc_9EE5DE: FLdPr Me
  loc_9EE5E1: MemLdPr RsFrm
  loc_9EE5E4: Me.MoveFirst
  loc_9EE5E9: ExitProcHresult
  loc_9EE5EA: CastAd
End Sub

Public Sub MoveLast() '9EE69C
  'Data Table: 41A084
  loc_9EE674: FLdRfVar var_88
  loc_9EE677: FLdPr Me
  loc_9EE67A: MemLdPr RsFrm
  loc_9EE67D:  = Me.RecordCount
  loc_9EE682: ILdRf var_88
  loc_9EE685: LitI4 0
  loc_9EE68A: GtI4
  loc_9EE68B: BranchF loc_9EE699
  loc_9EE68E: FLdPr Me
  loc_9EE691: MemLdPr RsFrm
  loc_9EE694: Me.MoveLast
  loc_9EE699: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6D0C0
  'Data Table: 41A084
  loc_A6D048: FLdRfVar var_86
  loc_A6D04B: FLdPr Me
  loc_A6D04E: MemLdPr RsFrm
  loc_A6D051:  = Me.EOF
  loc_A6D056: FLdI2 var_86
  loc_A6D059: NotI4
  loc_A6D05A: FLdRfVar var_8C
  loc_A6D05D: FLdPr Me
  loc_A6D060: MemLdPr RsFrm
  loc_A6D063:  = Me.RecordCount
  loc_A6D068: ILdRf var_8C
  loc_A6D06B: LitI4 0
  loc_A6D070: GtI4
  loc_A6D071: AndI4
  loc_A6D072: BranchF loc_A6D080
  loc_A6D075: FLdPr Me
  loc_A6D078: MemLdPr RsFrm
  loc_A6D07B: Me.MoveNext
  loc_A6D080: FLdRfVar var_86
  loc_A6D083: FLdPr Me
  loc_A6D086: MemLdPr RsFrm
  loc_A6D089:  = Me.EOF
  loc_A6D08E: FLdI2 var_86
  loc_A6D091: FLdRfVar var_8C
  loc_A6D094: FLdPr Me
  loc_A6D097: MemLdPr RsFrm
  loc_A6D09A:  = Me.RecordCount
  loc_A6D09F: ILdRf var_8C
  loc_A6D0A2: LitI4 0
  loc_A6D0A7: GtI4
  loc_A6D0A8: AndI4
  loc_A6D0A9: BranchF loc_A6D0BC
  loc_A6D0AC: ImpAdCallFPR4 Beep()
  loc_A6D0B1: FLdPr Me
  loc_A6D0B4: MemLdPr RsFrm
  loc_A6D0B7: Me.MoveLast
  loc_A6D0BC: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B0C78
  'Data Table: 41A084
  loc_9B0C6C: FLdPr Me
  loc_9B0C6F: MemLdPr RsFrm
  loc_9B0C72: Me.MoveNext
  loc_9B0C77: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B9F30
  'Data Table: 41A084
  loc_9B9F1C: LitVar_Missing var_94
  loc_9B9F1F: PopAdLdVar
  loc_9B9F20: ILdI2 iValor
  loc_9B9F23: CI4UI1
  loc_9B9F24: FLdPr Me
  loc_9B9F27: MemLdPr RsFrm
  loc_9B9F2A: Me.Move from_stack_1, from_stack_2
  loc_9B9F2F: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6D948
  'Data Table: 41A084
  loc_A6D8D0: FLdRfVar var_86
  loc_A6D8D3: FLdPr Me
  loc_A6D8D6: MemLdPr RsFrm
  loc_A6D8D9:  = Me.BOF
  loc_A6D8DE: FLdI2 var_86
  loc_A6D8E1: NotI4
  loc_A6D8E2: FLdRfVar var_8C
  loc_A6D8E5: FLdPr Me
  loc_A6D8E8: MemLdPr RsFrm
  loc_A6D8EB:  = Me.RecordCount
  loc_A6D8F0: ILdRf var_8C
  loc_A6D8F3: LitI4 0
  loc_A6D8F8: GtI4
  loc_A6D8F9: AndI4
  loc_A6D8FA: BranchF loc_A6D908
  loc_A6D8FD: FLdPr Me
  loc_A6D900: MemLdPr RsFrm
  loc_A6D903: Me.MovePrevious
  loc_A6D908: FLdRfVar var_86
  loc_A6D90B: FLdPr Me
  loc_A6D90E: MemLdPr RsFrm
  loc_A6D911:  = Me.BOF
  loc_A6D916: FLdI2 var_86
  loc_A6D919: FLdRfVar var_8C
  loc_A6D91C: FLdPr Me
  loc_A6D91F: MemLdPr RsFrm
  loc_A6D922:  = Me.RecordCount
  loc_A6D927: ILdRf var_8C
  loc_A6D92A: LitI4 0
  loc_A6D92F: GtI4
  loc_A6D930: AndI4
  loc_A6D931: BranchF loc_A6D944
  loc_A6D934: ImpAdCallFPR4 Beep()
  loc_A6D939: FLdPr Me
  loc_A6D93C: MemLdPr RsFrm
  loc_A6D93F: Me.MoveFirst
  loc_A6D944: ExitProcHresult
End Sub

Public Property Get EOF() '9DC04C
  'Data Table: 41A084
  loc_9DC030: FLdRfVar var_88
  loc_9DC033: FLdPr Me
  loc_9DC036: MemLdPr RsFrm
  loc_9DC039:  = Me.EOF
  loc_9DC03E: FLdI2 var_88
  loc_9DC041: FStI2 var_86
  loc_9DC044: ExitProcCbHresult
End Sub

Public Property Get BOF() '9DBD08
  'Data Table: 41A084
  loc_9DBCEC: FLdRfVar var_88
  loc_9DBCEF: FLdPr Me
  loc_9DBCF2: MemLdPr RsFrm
  loc_9DBCF5:  = Me.BOF
  loc_9DBCFA: FLdI2 var_88
  loc_9DBCFD: FStI2 var_86
  loc_9DBD00: ExitProcCbHresult
  loc_9DBD06: ExitProcI2
End Sub

Public Sub Sort(sOrden) '9B36F8
  'Data Table: 41A084
  loc_9B36E8: ILdI4 sOrden
  loc_9B36EB: FLdPr Me
  loc_9B36EE: MemLdPr RsFrm
  loc_9B36F1: Me.Sort = from_stack_1
  loc_9B36F6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E1A00
  'Data Table: 41A084
  loc_9E19E0: LitVar_Missing var_94
  loc_9E19E3: PopAdLdVar
  loc_9E19E4: LitI4 1
  loc_9E19E9: LitI4 0
  loc_9E19EE: ILdI4 sFind
  loc_9E19F1: FLdPr Me
  loc_9E19F4: MemLdPr RsFrm
  loc_9E19F7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E19FC: ExitProcHresult
  loc_9E19FD: MemLdRfVar from_stack_1.global_-3224
End Sub

Public Property Get AbsolutePosition() '9D5BF4
  'Data Table: 41A084
  loc_9D5BD8: FLdRfVar var_8C
  loc_9D5BDB: FLdPr Me
  loc_9D5BDE: MemLdPr RsFrm
  loc_9D5BE1:  = Me.AbsolutePosition
  loc_9D5BE6: ILdRf var_8C
  loc_9D5BE9: FStR4 var_88
  loc_9D5BEC: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9DB8E0
  'Data Table: 41A084
  loc_9DB8C4: FLdRfVar var_8C
  loc_9DB8C7: FLdPr Me
  loc_9DB8CA: MemLdPr RsFrm
  loc_9DB8CD:  = Me.RecordCount
  loc_9DB8D2: ILdRf var_8C
  loc_9DB8D5: FStR4 var_88
  loc_9DB8D8: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiOfic, CuenCtct, NumeErli, DetaErli) 'AF8CF8
  'Data Table: 41A084
  loc_AF8B90: ILdRf CuenCtct
  loc_AF8B93: FStStrCopy var_88
  loc_AF8B96: ILdRf DetaErli
  loc_AF8B99: FStStrCopy var_8C
  loc_AF8B9C: FLdRfVar var_90
  loc_AF8B9F: FLdUI1
  loc_AF8BA3: ILdRf var_88
  loc_AF8BA6: FLdUI1
  loc_AF8BAA: FLdI2 NumeLiqu
  loc_AF8BAD: FLdUI1
  loc_AF8BB1: FLdUI1
  loc_AF8BB5: FLdI2 PeriLiqu
  loc_AF8BB8: from_stack_8v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_AF8BBD: ILdRf var_90
  loc_AF8BC0: LitStr vbNullString
  loc_AF8BC3: NeStr
  loc_AF8BC5: FFree1Str var_90
  loc_AF8BC8: BranchF loc_AF8BD6
  loc_AF8BCB: LitStr "No se Puede crear el ERROR. Reintente..."
  loc_AF8BCE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF8BD3: Branch loc_AF8CF7
  loc_AF8BD6: LitI2_Byte 0
  loc_AF8BD8: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF8BDD: FStFPR8 var_140
  loc_AF8BE0: LitStr "INSERT INTO erroliqu (PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiOfic, CuenCtct, NumeErli, FealErli, DetaErli, CodiUsua) VALUES ("
  loc_AF8BE3: FLdI2 PeriLiqu
  loc_AF8BE6: CStrUI1
  loc_AF8BE8: FStStrNoPop var_90
  loc_AF8BEB: ConcatStr
  loc_AF8BEC: FStStrNoPop var_94
  loc_AF8BEF: LitStr ","
  loc_AF8BF2: ConcatStr
  loc_AF8BF3: FStStrNoPop var_98
  loc_AF8BF6: FLdUI1
  loc_AF8BFA: CStrI2
  loc_AF8BFC: FStStrNoPop var_9C
  loc_AF8BFF: ConcatStr
  loc_AF8C00: FStStrNoPop var_A0
  loc_AF8C03: LitStr ","
  loc_AF8C06: ConcatStr
  loc_AF8C07: FStStrNoPop var_A4
  loc_AF8C0A: FLdUI1
  loc_AF8C0E: CStrI2
  loc_AF8C10: FStStrNoPop var_A8
  loc_AF8C13: ConcatStr
  loc_AF8C14: FStStrNoPop var_AC
  loc_AF8C17: LitStr ","
  loc_AF8C1A: ConcatStr
  loc_AF8C1B: FStStrNoPop var_B0
  loc_AF8C1E: FLdI2 NumeLiqu
  loc_AF8C21: CStrUI1
  loc_AF8C23: FStStrNoPop var_B4
  loc_AF8C26: ConcatStr
  loc_AF8C27: FStStrNoPop var_B8
  loc_AF8C2A: LitStr ","
  loc_AF8C2D: ConcatStr
  loc_AF8C2E: FStStrNoPop var_BC
  loc_AF8C31: FLdUI1
  loc_AF8C35: CStrI2
  loc_AF8C37: FStStrNoPop var_C0
  loc_AF8C3A: ConcatStr
  loc_AF8C3B: FStStrNoPop var_C4
  loc_AF8C3E: LitStr ",'"
  loc_AF8C41: ConcatStr
  loc_AF8C42: FStStrNoPop var_C8
  loc_AF8C45: ILdRf var_88
  loc_AF8C48: ConcatStr
  loc_AF8C49: FStStrNoPop var_CC
  loc_AF8C4C: LitStr "',"
  loc_AF8C4F: ConcatStr
  loc_AF8C50: FStStrNoPop var_D0
  loc_AF8C53: FLdUI1
  loc_AF8C57: CStrI2
  loc_AF8C59: FStStrNoPop var_D4
  loc_AF8C5C: ConcatStr
  loc_AF8C5D: FStStrNoPop var_D8
  loc_AF8C60: LitStr ",'"
  loc_AF8C63: ConcatStr
  loc_AF8C64: FStStrNoPop var_11C
  loc_AF8C67: LitI4 1
  loc_AF8C6C: LitI4 1
  loc_AF8C71: LitVarStr var_108, "yyyy-mm-dd"
  loc_AF8C76: FStVarCopyObj var_118
  loc_AF8C79: FLdRfVar var_118
  loc_AF8C7C: FLdFPR8 var_140
  loc_AF8C7F: CVarDate var_F8
  loc_AF8C83: ImpAdCallI2 Format$(, )
  loc_AF8C88: FStStrNoPop var_120
  loc_AF8C8B: ConcatStr
  loc_AF8C8C: FStStrNoPop var_124
  loc_AF8C8F: LitStr "','"
  loc_AF8C92: ConcatStr
  loc_AF8C93: FStStrNoPop var_128
  loc_AF8C96: ILdRf var_8C
  loc_AF8C99: ConcatStr
  loc_AF8C9A: FStStrNoPop var_12C
  loc_AF8C9D: LitStr "','"
  loc_AF8CA0: ConcatStr
  loc_AF8CA1: FStStrNoPop var_130
  loc_AF8CA4: ImpAdLdI4 MemVar_D9302C
  loc_AF8CA7: ConcatStr
  loc_AF8CA8: FStStrNoPop var_134
  loc_AF8CAB: LitStr "');"
  loc_AF8CAE: ConcatStr
  loc_AF8CAF: FStStrNoPop var_138
  loc_AF8CB2: Call EjecutarRs2(from_stack_1v)
  loc_AF8CB7: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_AF8CF0: FFreeVar var_F8 = ""
  loc_AF8CF7: ExitProcHresult
End Sub

Public Sub Delete() '9FDF58
  'Data Table: 41A084
  loc_9FDF28: FLdRfVar var_88
  loc_9FDF2B: FLdPr Me
  loc_9FDF2E: MemLdPr RsFrm
  loc_9FDF31:  = Me.RecordCount
  loc_9FDF36: ILdRf var_88
  loc_9FDF39: LitI4 0
  loc_9FDF3E: GtI4
  loc_9FDF3F: BranchF loc_9FDF57
  loc_9FDF42: LitI4 1
  loc_9FDF47: FLdPr Me
  loc_9FDF4A: MemLdPr RsFrm
  loc_9FDF4D: Me.Delete
  loc_9FDF52: Call MoveNext()
  loc_9FDF57: ExitProcHresult
End Sub

Public Sub Requery() '9E7F44
  'Data Table: 41A084
  loc_9E7F20: LitI4 -1
  loc_9E7F25: FLdPr Me
  loc_9E7F28: MemLdPr RsFrm
  loc_9E7F2B: Me.Requery from_stack_1
  loc_9E7F30: LitVarStr var_94, "Primary"
  loc_9E7F35: PopAdLdVar
  loc_9E7F36: FLdPr Me
  loc_9E7F39: LateIdCall
  loc_9E7F41: ExitProcHresult
End Sub

Public Sub Update() 'A0D864
  'Data Table: 41A084
  loc_A0D828: FLdPr Me
  loc_A0D82B: MemLdStr RsFrm
  loc_A0D82E: FStAd var_88 
  loc_A0D832: LitI4 3
  loc_A0D837: FLdPr var_88
  loc_A0D83A: Me.UpdateBatch
  loc_A0D83F: FLdRfVar var_8C
  loc_A0D842: FLdPr var_88
  loc_A0D845:  = Me.EditMode
  loc_A0D84A: ILdRf var_8C
  loc_A0D84D: LitI4 2
  loc_A0D852: EqI4
  loc_A0D853: BranchF loc_A0D85B
  loc_A0D856: Call MoveLast()
  loc_A0D85B: LitNothing
  loc_A0D85D: FStAd var_88 
  loc_A0D861: ExitProcHresult
End Sub

Public Sub Cancel() 'A325AC
  'Data Table: 41A084
  loc_A32560: FLdPr Me
  loc_A32563: MemLdStr RsFrm
  loc_A32566: FStAd var_88 
  loc_A3256A: FLdRfVar var_8C
  loc_A3256D: FLdPr var_88
  loc_A32570:  = Me.RecordCount
  loc_A32575: ILdRf var_8C
  loc_A32578: LitI4 0
  loc_A3257D: GtI4
  loc_A3257E: BranchF loc_A325A5
  loc_A32581: FLdPr var_88
  loc_A32584: Me.CancelUpdate
  loc_A32589: FLdRfVar var_8C
  loc_A3258C: FLdPr var_88
  loc_A3258F:  = Me.EditMode
  loc_A32594: ILdRf var_8C
  loc_A32597: LitI4 2
  loc_A3259C: EqI4
  loc_A3259D: BranchF loc_A325A5
  loc_A325A0: Call MoveFirst()
  loc_A325A5: LitNothing
  loc_A325A7: FStAd var_88 
  loc_A325AB: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9DE800
  'Data Table: 41A084
  loc_9DE7E0: FLdRfVar var_8C
  loc_9DE7E3: FLdPr Me
  loc_9DE7E6: MemLdPr RsFrm
  loc_9DE7E9:  = Me.EditMode
  loc_9DE7EE: ILdRf var_8C
  loc_9DE7F1: LitI4 0
  loc_9DE7F6: NeI4
  loc_9DE7F7: FStI2 var_86
  loc_9DE7FA: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5CC34
  'Data Table: 41A084
  loc_A5CBD0: ILdRf sSelect
  loc_A5CBD3: FStStrCopy var_88
  loc_A5CBD6: LitNothing
  loc_A5CBD8: CastAd
  loc_A5CBDB: FStAdFuncNoPop
  loc_A5CBDE: FLdPr Me
  loc_A5CBE1: MemStAd
  loc_A5CBE5: FFree1Ad var_8C
  loc_A5CBE8: New Recordset
  loc_A5CBEC: FStAdFuncNoPop
  loc_A5CBEF: FLdPr Me
  loc_A5CBF2: MemStAd
  loc_A5CBF6: FFree1Ad var_8C
  loc_A5CBF9: LitI4 -1
  loc_A5CBFE: LitI4 3
  loc_A5CC03: LitI4 3
  loc_A5CC08: ImpAdLdI4 MemVar_D9301C
  loc_A5CC0B: CVarAd
  loc_A5CC0F: PopAdLdVar
  loc_A5CC10: ILdRf var_88
  loc_A5CC13: CVarStr var_9C
  loc_A5CC16: PopAdLdVar
  loc_A5CC17: FLdPr Me
  loc_A5CC1A: MemLdPr RsFrm
  loc_A5CC1D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5CC22: LitVarStr var_9C, "Primary"
  loc_A5CC27: PopAdLdVar
  loc_A5CC28: FLdPr Me
  loc_A5CC2B: LateIdCall
  loc_A5CC33: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A4920C
  'Data Table: 41A084
  loc_A491B8: ILdRf sSelect
  loc_A491BB: FStStrCopy var_88
  loc_A491BE: LitNothing
  loc_A491C0: CastAd
  loc_A491C3: FStAdFuncNoPop
  loc_A491C6: FLdPr Me
  loc_A491C9: MemStAd
  loc_A491CD: FFree1Ad var_8C
  loc_A491D0: New Recordset
  loc_A491D4: FStAdFuncNoPop
  loc_A491D7: FLdPr Me
  loc_A491DA: MemStAd
  loc_A491DE: FFree1Ad var_8C
  loc_A491E1: LitI4 -1
  loc_A491E6: LitI4 3
  loc_A491EB: LitI4 3
  loc_A491F0: ImpAdLdI4 MemVar_D9301C
  loc_A491F3: CVarAd
  loc_A491F7: PopAdLdVar
  loc_A491F8: ILdRf var_88
  loc_A491FB: CVarStr var_9C
  loc_A491FE: PopAdLdVar
  loc_A491FF: FLdPr Me
  loc_A49202: MemLdPr RsCls
  loc_A49205: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4920A: ExitProcHresult
End Sub

Public Sub Encontrar(CodiCall) '9AE958
  'Data Table: 41A084
  loc_9AE954: ExitProcHresult
End Sub

Public Property Get DataSource() '9F664C
  'Data Table: 41A084
  loc_9F6628: ZeroRetVal
  loc_9F662A: FLdRfVar var_8C
  loc_9F662D: FLdPr Me
  loc_9F6630: MemLdPr RsFrm
  loc_9F6633:  = Me.DataSource
  loc_9F6638: ILdRf var_8C
  loc_9F663B: CastAd
  loc_9F663E: FStAdFunc var_88
  loc_9F6641: FFree1Ad var_8C
  loc_9F6644: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9DB46C
  'Data Table: 41A084
  loc_9DB450: FLdRfVar var_8C
  loc_9DB453: FLdPr Me
  loc_9DB456: MemLdPr RsFrm
  loc_9DB459:  = Me.EditMode
  loc_9DB45E: ILdRf var_8C
  loc_9DB461: FStR4 var_88
  loc_9DB464: ExitProcCbHresult
End Sub

Public Property Get PeriLiqu() 'A32624
  'Data Table: 41A084
  loc_A325E0: FLdRfVar var_B0
  loc_A325E3: FLdRfVar var_A0
  loc_A325E6: LitVarStr var_9C, "PeriLiqu"
  loc_A325EB: PopAdLdVar
  loc_A325EC: FLdRfVar var_8C
  loc_A325EF: FLdPr Me
  loc_A325F2: MemLdPr RsFrm
  loc_A325F5:  = Me.Fields
  loc_A325FA: FLdPr var_8C
  loc_A325FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A32602: FLdPr var_A0
  loc_A32605:  = Me.Value
  loc_A3260A: FLdRfVar var_B0
  loc_A3260D: CI2Var
  loc_A3260E: FStI2 var_86
  loc_A32611: FFreeAd var_8C = ""
  loc_A32618: FFree1Var var_B0 = ""
  loc_A3261B: ExitProcCbHresult
End Sub

Public Property Let PeriLiqu(vDato) '9D355C
  'Data Table: 41A084
  loc_9D3540: FLdI2 vDato
  loc_9D3543: CVarI2 var_A4
  loc_9D3546: PopAdLdVar
  loc_9D3547: LitVarStr var_94, "PeriLiqu"
  loc_9D354C: PopAdLdVar
  loc_9D354D: FLdPr Me
  loc_9D3550: MemLdPr RsFrm
  loc_9D3553: Me.Collect = from_stack_1
  loc_9D3558: ExitProcHresult
  loc_9D3559: ImpAdLdI4 MemVar_42090C
End Sub

Public Property Get BimeLiqu() 'A32724
  'Data Table: 41A084
  loc_A326E0: FLdRfVar var_B0
  loc_A326E3: FLdRfVar var_A0
  loc_A326E6: LitVarStr var_9C, "BimeLiqu"
  loc_A326EB: PopAdLdVar
  loc_A326EC: FLdRfVar var_8C
  loc_A326EF: FLdPr Me
  loc_A326F2: MemLdPr RsFrm
  loc_A326F5:  = Me.Fields
  loc_A326FA: FLdPr var_8C
  loc_A326FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A32702: FLdPr var_A0
  loc_A32705:  = Me.Value
  loc_A3270A: FLdRfVar var_B0
  loc_A3270D: CUI1Var
  loc_A3270F: FStUI1 var_86
  loc_A32713: FFreeAd var_8C = ""
  loc_A3271A: FFree1Var var_B0 = ""
  loc_A3271D: ExitProcCbHresult
End Sub

Public Property Let BimeLiqu(vDato) '9DB2F0
  'Data Table: 41A084
  loc_9DB2D4: FLdUI1
  loc_9DB2D8: CVarUI1
  loc_9DB2DC: PopAdLdVar
  loc_9DB2DD: LitVarStr var_94, "BimeLiqu"
  loc_9DB2E2: PopAdLdVar
  loc_9DB2E3: FLdPr Me
  loc_9DB2E6: MemLdPr RsFrm
  loc_9DB2E9: Me.Collect = from_stack_1
  loc_9DB2EE: ExitProcHresult
End Sub

Public Property Get CodiTili() 'A2BAA4
  'Data Table: 41A084
  loc_A2BA60: FLdRfVar var_B0
  loc_A2BA63: FLdRfVar var_A0
  loc_A2BA66: LitVarStr var_9C, "CodiTili"
  loc_A2BA6B: PopAdLdVar
  loc_A2BA6C: FLdRfVar var_8C
  loc_A2BA6F: FLdPr Me
  loc_A2BA72: MemLdPr RsFrm
  loc_A2BA75:  = Me.Fields
  loc_A2BA7A: FLdPr var_8C
  loc_A2BA7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2BA82: FLdPr var_A0
  loc_A2BA85:  = Me.Value
  loc_A2BA8A: FLdRfVar var_B0
  loc_A2BA8D: CUI1Var
  loc_A2BA8F: FStUI1 var_86
  loc_A2BA93: FFreeAd var_8C = ""
  loc_A2BA9A: FFree1Var var_B0 = ""
  loc_A2BA9D: ExitProcCbHresult
  loc_A2BAA3: ExitProc
End Sub

Public Property Let CodiTili(vDato) '9DB2A4
  'Data Table: 41A084
  loc_9DB288: FLdUI1
  loc_9DB28C: CVarUI1
  loc_9DB290: PopAdLdVar
  loc_9DB291: LitVarStr var_94, "CodiTili"
  loc_9DB296: PopAdLdVar
  loc_9DB297: FLdPr Me
  loc_9DB29A: MemLdPr RsFrm
  loc_9DB29D: Me.Collect = from_stack_1
  loc_9DB2A2: ExitProcHresult
End Sub

Public Property Get NumeLiqu() 'A2BEA4
  'Data Table: 41A084
  loc_A2BE60: FLdRfVar var_B0
  loc_A2BE63: FLdRfVar var_A0
  loc_A2BE66: LitVarStr var_9C, "NumeLiqu"
  loc_A2BE6B: PopAdLdVar
  loc_A2BE6C: FLdRfVar var_8C
  loc_A2BE6F: FLdPr Me
  loc_A2BE72: MemLdPr RsFrm
  loc_A2BE75:  = Me.Fields
  loc_A2BE7A: FLdPr var_8C
  loc_A2BE7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2BE82: FLdPr var_A0
  loc_A2BE85:  = Me.Value
  loc_A2BE8A: FLdRfVar var_B0
  loc_A2BE8D: CI2Var
  loc_A2BE8E: FStI2 var_86
  loc_A2BE91: FFreeAd var_8C = ""
  loc_A2BE98: FFree1Var var_B0 = ""
  loc_A2BE9B: ExitProcCbHresult
  loc_A2BEA1: FnStrComp3Var
End Sub

Public Property Let NumeLiqu(vDato) '9DB20C
  'Data Table: 41A084
  loc_9DB1F0: FLdI2 vDato
  loc_9DB1F3: CVarI2 var_A4
  loc_9DB1F6: PopAdLdVar
  loc_9DB1F7: LitVarStr var_94, "NumeLiqu"
  loc_9DB1FC: PopAdLdVar
  loc_9DB1FD: FLdPr Me
  loc_9DB200: MemLdPr RsFrm
  loc_9DB203: Me.Collect = from_stack_1
  loc_9DB208: ExitProcHresult
  loc_9DB209: CVarAd
End Sub

Public Property Get CodiOfic() 'A2BCA4
  'Data Table: 41A084
  loc_A2BC60: FLdRfVar var_B0
  loc_A2BC63: FLdRfVar var_A0
  loc_A2BC66: LitVarStr var_9C, "CodiOfic"
  loc_A2BC6B: PopAdLdVar
  loc_A2BC6C: FLdRfVar var_8C
  loc_A2BC6F: FLdPr Me
  loc_A2BC72: MemLdPr RsFrm
  loc_A2BC75:  = Me.Fields
  loc_A2BC7A: FLdPr var_8C
  loc_A2BC7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2BC82: FLdPr var_A0
  loc_A2BC85:  = Me.Value
  loc_A2BC8A: FLdRfVar var_B0
  loc_A2BC8D: CUI1Var
  loc_A2BC8F: FStUI1 var_86
  loc_A2BC93: FFreeAd var_8C = ""
  loc_A2BC9A: FFree1Var var_B0 = ""
  loc_A2BC9D: ExitProcCbHresult
End Sub

Public Property Let CodiOfic(vDato) '9DB1C0
  'Data Table: 41A084
  loc_9DB1A4: FLdUI1
  loc_9DB1A8: CVarUI1
  loc_9DB1AC: PopAdLdVar
  loc_9DB1AD: LitVarStr var_94, "CodiOfic"
  loc_9DB1B2: PopAdLdVar
  loc_9DB1B3: FLdPr Me
  loc_9DB1B6: MemLdPr RsFrm
  loc_9DB1B9: Me.Collect = from_stack_1
  loc_9DB1BE: ExitProcHresult
End Sub

Public Property Get CuenCtct() 'A395EC
  'Data Table: 41A084
  loc_A395A8: ZeroRetVal
  loc_A395AA: FLdRfVar var_B0
  loc_A395AD: FLdRfVar var_A0
  loc_A395B0: LitVarStr var_9C, "CuenCtct"
  loc_A395B5: PopAdLdVar
  loc_A395B6: FLdRfVar var_8C
  loc_A395B9: FLdPr Me
  loc_A395BC: MemLdPr RsFrm
  loc_A395BF:  = Me.Fields
  loc_A395C4: FLdPr var_8C
  loc_A395C7: from_stack_2 = Me.Item(from_stack_1)
  loc_A395CC: FLdPr var_A0
  loc_A395CF:  = Me.Value
  loc_A395D4: FLdRfVar var_B0
  loc_A395D7: CStrVarTmp
  loc_A395D8: FStStr var_88
  loc_A395DB: FFreeAd var_8C = ""
  loc_A395E2: FFree1Var var_B0 = ""
  loc_A395E5: ExitProcCbHresult
End Sub

Public Property Let CuenCtct(vDato) '9E7F94
  'Data Table: 41A084
  loc_9E7F74: ILdRf vDato
  loc_9E7F77: FStStrCopy var_88
  loc_9E7F7A: ILdRf var_88
  loc_9E7F7D: CVarStr var_A8
  loc_9E7F80: PopAdLdVar
  loc_9E7F81: LitVarStr var_98, "CuenCtct"
  loc_9E7F86: PopAdLdVar
  loc_9E7F87: FLdPr Me
  loc_9E7F8A: MemLdPr RsFrm
  loc_9E7F8D: Me.Collect = from_stack_1
  loc_9E7F92: ExitProcHresult
End Sub

Public Property Get NumeErli() 'A2DCA4
  'Data Table: 41A084
  loc_A2DC60: FLdRfVar var_B0
  loc_A2DC63: FLdRfVar var_A0
  loc_A2DC66: LitVarStr var_9C, "NumeErli"
  loc_A2DC6B: PopAdLdVar
  loc_A2DC6C: FLdRfVar var_8C
  loc_A2DC6F: FLdPr Me
  loc_A2DC72: MemLdPr RsFrm
  loc_A2DC75:  = Me.Fields
  loc_A2DC7A: FLdPr var_8C
  loc_A2DC7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2DC82: FLdPr var_A0
  loc_A2DC85:  = Me.Value
  loc_A2DC8A: FLdRfVar var_B0
  loc_A2DC8D: CUI1Var
  loc_A2DC8F: FStUI1 var_86
  loc_A2DC93: FFreeAd var_8C = ""
  loc_A2DC9A: FFree1Var var_B0 = ""
  loc_A2DC9D: ExitProcCbHresult
End Sub

Public Property Let NumeErli(vDato) '9DB174
  'Data Table: 41A084
  loc_9DB158: FLdUI1
  loc_9DB15C: CVarUI1
  loc_9DB160: PopAdLdVar
  loc_9DB161: LitVarStr var_94, "NumeErli"
  loc_9DB166: PopAdLdVar
  loc_9DB167: FLdPr Me
  loc_9DB16A: MemLdPr RsFrm
  loc_9DB16D: Me.Collect = from_stack_1
  loc_9DB172: ExitProcHresult
End Sub

Public Property Get FealErli() 'A382D8
  'Data Table: 41A084
  loc_A38294: ZeroRetVal
  loc_A38296: FLdRfVar var_B0
  loc_A38299: FLdRfVar var_A0
  loc_A3829C: LitVarStr var_9C, "FealErli"
  loc_A382A1: PopAdLdVar
  loc_A382A2: FLdRfVar var_8C
  loc_A382A5: FLdPr Me
  loc_A382A8: MemLdPr RsFrm
  loc_A382AB:  = Me.Fields
  loc_A382B0: FLdPr var_8C
  loc_A382B3: from_stack_2 = Me.Item(from_stack_1)
  loc_A382B8: FLdPr var_A0
  loc_A382BB:  = Me.Value
  loc_A382C0: FLdRfVar var_B0
  loc_A382C3: CStrVarTmp
  loc_A382C4: FStStr var_88
  loc_A382C7: FFreeAd var_8C = ""
  loc_A382CE: FFree1Var var_B0 = ""
  loc_A382D1: ExitProcCbHresult
End Sub

Public Property Let FealErli(vDato) '9E818C
  'Data Table: 41A084
  loc_9E816C: ILdRf vDato
  loc_9E816F: FStStrCopy var_88
  loc_9E8172: ILdRf var_88
  loc_9E8175: CVarStr var_A8
  loc_9E8178: PopAdLdVar
  loc_9E8179: LitVarStr var_98, "FealErli"
  loc_9E817E: PopAdLdVar
  loc_9E817F: FLdPr Me
  loc_9E8182: MemLdPr RsFrm
  loc_9E8185: Me.Collect = from_stack_1
  loc_9E818A: ExitProcHresult
End Sub

Public Property Get DetaErli() 'A35EC0
  'Data Table: 41A084
  loc_A35E7C: ZeroRetVal
  loc_A35E7E: FLdRfVar var_B0
  loc_A35E81: FLdRfVar var_A0
  loc_A35E84: LitVarStr var_9C, "DetaErli"
  loc_A35E89: PopAdLdVar
  loc_A35E8A: FLdRfVar var_8C
  loc_A35E8D: FLdPr Me
  loc_A35E90: MemLdPr RsFrm
  loc_A35E93:  = Me.Fields
  loc_A35E98: FLdPr var_8C
  loc_A35E9B: from_stack_2 = Me.Item(from_stack_1)
  loc_A35EA0: FLdPr var_A0
  loc_A35EA3:  = Me.Value
  loc_A35EA8: FLdRfVar var_B0
  loc_A35EAB: CStrVarTmp
  loc_A35EAC: FStStr var_88
  loc_A35EAF: FFreeAd var_8C = ""
  loc_A35EB6: FFree1Var var_B0 = ""
  loc_A35EB9: ExitProcCbHresult
End Sub

Public Property Let DetaErli(vDato) '9E9E6C
  'Data Table: 41A084
  loc_9E9E4C: ILdRf vDato
  loc_9E9E4F: FStStrCopy var_88
  loc_9E9E52: ILdRf var_88
  loc_9E9E55: CVarStr var_A8
  loc_9E9E58: PopAdLdVar
  loc_9E9E59: LitVarStr var_98, "DetaErli"
  loc_9E9E5E: PopAdLdVar
  loc_9E9E5F: FLdPr Me
  loc_9E9E62: MemLdPr RsFrm
  loc_9E9E65: Me.Collect = from_stack_1
  loc_9E9E6A: ExitProcHresult
End Sub

Public Property Get CodiUsua() 'A380C8
  'Data Table: 41A084
  loc_A38084: ZeroRetVal
  loc_A38086: FLdRfVar var_B0
  loc_A38089: FLdRfVar var_A0
  loc_A3808C: LitVarStr var_9C, "CodiUsua"
  loc_A38091: PopAdLdVar
  loc_A38092: FLdRfVar var_8C
  loc_A38095: FLdPr Me
  loc_A38098: MemLdPr RsFrm
  loc_A3809B:  = Me.Fields
  loc_A380A0: FLdPr var_8C
  loc_A380A3: from_stack_2 = Me.Item(from_stack_1)
  loc_A380A8: FLdPr var_A0
  loc_A380AB:  = Me.Value
  loc_A380B0: FLdRfVar var_B0
  loc_A380B3: CStrVarTmp
  loc_A380B4: FStStr var_88
  loc_A380B7: FFreeAd var_8C = ""
  loc_A380BE: FFree1Var var_B0 = ""
  loc_A380C1: ExitProcCbHresult
End Sub

Public Property Let CodiUsua(vDato) '9E8234
  'Data Table: 41A084
  loc_9E8214: ILdRf vDato
  loc_9E8217: FStStrCopy var_88
  loc_9E821A: ILdRf var_88
  loc_9E821D: CVarStr var_A8
  loc_9E8220: PopAdLdVar
  loc_9E8221: LitVarStr var_98, "CodiUsua"
  loc_9E8226: PopAdLdVar
  loc_9E8227: FLdPr Me
  loc_9E822A: MemLdPr RsFrm
  loc_9E822D: Me.Collect = from_stack_1
  loc_9E8232: ExitProcHresult
End Sub

Public Function ValidaClave(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiOfic, CuenCtct, NumeErli) 'ACC890
  'Data Table: 41A084
  loc_ACC7B4: ILdRf CuenCtct
  loc_ACC7B7: FStStrCopy var_8C
  loc_ACC7BA: ZeroRetVal
  loc_ACC7BC: LitStr "SELECT PeriLiqu FROM erroliqu WHERE PeriLiqu = "
  loc_ACC7BF: FLdI2 PeriLiqu
  loc_ACC7C2: CStrUI1
  loc_ACC7C4: FStStrNoPop var_90
  loc_ACC7C7: ConcatStr
  loc_ACC7C8: FStStrNoPop ValidaClave
  loc_ACC7CB: LitStr " AND BimeLiqu = "
  loc_ACC7CE: ConcatStr
  loc_ACC7CF: FStStrNoPop var_98
  loc_ACC7D2: FLdUI1
  loc_ACC7D6: CStrI2
  loc_ACC7D8: FStStrNoPop var_9C
  loc_ACC7DB: ConcatStr
  loc_ACC7DC: FStStrNoPop var_A0
  loc_ACC7DF: LitStr " AND CodiTili = "
  loc_ACC7E2: ConcatStr
  loc_ACC7E3: FStStrNoPop var_A4
  loc_ACC7E6: FLdUI1
  loc_ACC7EA: CStrI2
  loc_ACC7EC: FStStrNoPop var_A8
  loc_ACC7EF: ConcatStr
  loc_ACC7F0: FStStrNoPop var_AC
  loc_ACC7F3: LitStr " AND NumeLiqu = "
  loc_ACC7F6: ConcatStr
  loc_ACC7F7: FStStrNoPop var_B0
  loc_ACC7FA: FLdI2 NumeLiqu
  loc_ACC7FD: CStrUI1
  loc_ACC7FF: FStStrNoPop var_B4
  loc_ACC802: ConcatStr
  loc_ACC803: FStStrNoPop var_B8
  loc_ACC806: LitStr " AND CodiOfic = "
  loc_ACC809: ConcatStr
  loc_ACC80A: FStStrNoPop var_BC
  loc_ACC80D: FLdUI1
  loc_ACC811: CStrI2
  loc_ACC813: FStStrNoPop var_C0
  loc_ACC816: ConcatStr
  loc_ACC817: FStStrNoPop var_C4
  loc_ACC81A: LitStr " AND CuenCtct = '"
  loc_ACC81D: ConcatStr
  loc_ACC81E: FStStrNoPop var_C8
  loc_ACC821: ILdRf var_8C
  loc_ACC824: ConcatStr
  loc_ACC825: FStStrNoPop var_CC
  loc_ACC828: LitStr "' AND NumeErli = "
  loc_ACC82B: ConcatStr
  loc_ACC82C: FStStrNoPop var_D0
  loc_ACC82F: FLdUI1
  loc_ACC833: CStrI2
  loc_ACC835: FStStrNoPop var_D4
  loc_ACC838: ConcatStr
  loc_ACC839: FStStrNoPop var_D8
  loc_ACC83C: Call EjecutarRs2(from_stack_1v)
  loc_ACC841: FFreeStr var_90 = "": ValidaClave = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_ACC86A: FLdRfVar var_DC
  loc_ACC86D: FLdPr Me
  loc_ACC870: MemLdPr RsCls
  loc_ACC873:  = Me.RecordCount
  loc_ACC878: ILdRf var_DC
  loc_ACC87B: LitI4 0
  loc_ACC880: GtI4
  loc_ACC881: BranchF loc_ACC88A
  loc_ACC884: LitStr "No se puede CREAR EL ERROR. Reintente..."
  loc_ACC887: FStStrCopy var_88
  loc_ACC88A: ExitProcCbHresult
End Function

Public Function NuevoRegistro(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiOfic, CuenCtct) 'ADCDD4
  'Data Table: 41A084
  loc_ADCCC4: ILdRf CuenCtct
  loc_ADCCC7: FStStrCopy var_8C
  loc_ADCCCA: LitStr "SELECT NumeErli FROM erroliqu WHERE PeriLiqu = "
  loc_ADCCCD: FLdI2 PeriLiqu
  loc_ADCCD0: CStrUI1
  loc_ADCCD2: FStStrNoPop var_90
  loc_ADCCD5: ConcatStr
  loc_ADCCD6: FStStrNoPop NuevoRegistro
  loc_ADCCD9: LitStr " AND BimeLiqu = "
  loc_ADCCDC: ConcatStr
  loc_ADCCDD: FStStrNoPop var_98
  loc_ADCCE0: FLdUI1
  loc_ADCCE4: CStrI2
  loc_ADCCE6: FStStrNoPop var_9C
  loc_ADCCE9: ConcatStr
  loc_ADCCEA: FStStrNoPop var_A0
  loc_ADCCED: LitStr " AND CodiTili = "
  loc_ADCCF0: ConcatStr
  loc_ADCCF1: FStStrNoPop var_A4
  loc_ADCCF4: FLdUI1
  loc_ADCCF8: CStrI2
  loc_ADCCFA: FStStrNoPop var_A8
  loc_ADCCFD: ConcatStr
  loc_ADCCFE: FStStrNoPop var_AC
  loc_ADCD01: LitStr " AND NumeLiqu = "
  loc_ADCD04: ConcatStr
  loc_ADCD05: FStStrNoPop var_B0
  loc_ADCD08: FLdI2 NumeLiqu
  loc_ADCD0B: CStrUI1
  loc_ADCD0D: FStStrNoPop var_B4
  loc_ADCD10: ConcatStr
  loc_ADCD11: FStStrNoPop var_B8
  loc_ADCD14: LitStr " AND CodiOfic = "
  loc_ADCD17: ConcatStr
  loc_ADCD18: FStStrNoPop var_BC
  loc_ADCD1B: FLdUI1
  loc_ADCD1F: CStrI2
  loc_ADCD21: FStStrNoPop var_C0
  loc_ADCD24: ConcatStr
  loc_ADCD25: FStStrNoPop var_C4
  loc_ADCD28: LitStr " AND CuenCtct = '"
  loc_ADCD2B: ConcatStr
  loc_ADCD2C: FStStrNoPop var_C8
  loc_ADCD2F: ILdRf var_8C
  loc_ADCD32: ConcatStr
  loc_ADCD33: FStStrNoPop var_CC
  loc_ADCD36: LitStr "' ORDER BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiOfic, CuenCtct, NumeErli DESC "
  loc_ADCD39: ConcatStr
  loc_ADCD3A: FStStrNoPop var_D0
  loc_ADCD3D: Call EjecutarRs2(from_stack_1v)
  loc_ADCD42: FFreeStr var_90 = "": NuevoRegistro = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_ADCD67: FLdRfVar var_D4
  loc_ADCD6A: FLdPr Me
  loc_ADCD6D: MemLdPr RsCls
  loc_ADCD70:  = Me.RecordCount
  loc_ADCD75: ILdRf var_D4
  loc_ADCD78: LitI4 0
  loc_ADCD7D: GtI4
  loc_ADCD7E: BranchF loc_ADCDC7
  loc_ADCD81: FLdRfVar var_FC
  loc_ADCD84: FLdRfVar var_EC
  loc_ADCD87: LitVarStr var_E8, "NumeErli"
  loc_ADCD8C: PopAdLdVar
  loc_ADCD8D: FLdRfVar var_D8
  loc_ADCD90: FLdPr Me
  loc_ADCD93: MemLdPr RsCls
  loc_ADCD96:  = Me.Fields
  loc_ADCD9B: FLdPr var_D8
  loc_ADCD9E: from_stack_2 = Me.Item(from_stack_1)
  loc_ADCDA3: FLdPr var_EC
  loc_ADCDA6:  = Me.Value
  loc_ADCDAB: FLdRfVar var_FC
  loc_ADCDAE: FnCLngVar
  loc_ADCDB0: LitI4 1
  loc_ADCDB5: AddI4
  loc_ADCDB6: CI2I4
  loc_ADCDB7: FStI2 var_86
  loc_ADCDBA: FFreeAd var_D8 = ""
  loc_ADCDC1: FFree1Var var_FC = ""
  loc_ADCDC4: Branch loc_ADCDCC
  loc_ADCDC7: LitI2_Byte 1
  loc_ADCDC9: FStI2 var_86
  loc_ADCDCC: ExitProcCbHresult
  loc_ADCDD2: ImpAdLdPr B8
End Function

Private Function Proc_49_51_9F6818() '9F6818
  'Data Table: 41A084
  loc_9F67F4: LitStr "Primary"
  loc_9F67F7: FLdPr Me
  loc_9F67FA: LateIdLdVar var_94 DispID_4 0
  loc_9F6801: CastAdVar Me
  loc_9F6805: FStAdFunc var_98
  loc_9F6808: FLdPr var_98
  loc_9F6810: FFree1Ad var_98
  loc_9F6813: FFree1Var var_94 = ""
  loc_9F6816: ExitProcHresult
End Function

Private Function Proc_49_52_9E375C(arg_C) '9E375C
  'Data Table: 41A084
  loc_9E3740: ILdI4 arg_C
  loc_9E3743: FStStrCopy var_88
  loc_9E3746: ILdRf var_88
  loc_9E3749: LitStr "Primary"
  loc_9E374C: EqStr
  loc_9E374E: BranchF loc_9E375B
  loc_9E3751: FLdPr Me
  loc_9E3754: MemLdStr RsFrm
  loc_9E3757: IStAd
  loc_9E375B: ExitProcHresult
End Function
