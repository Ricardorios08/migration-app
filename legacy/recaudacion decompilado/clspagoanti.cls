VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clspagoanti"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0F314
  'Data Table: 44D4CC
  loc_A0F2D8: FLdRfVar var_8C
  loc_A0F2DB: FLdRfVar var_88
  loc_A0F2DE: FLdPr Me
  loc_A0F2E1: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A0F2E6: FLdPr var_88
  loc_A0F2E9:  = Me.RecordCount
  loc_A0F2EE: ILdRf var_8C
  loc_A0F2F1: LitI4 0
  loc_A0F2F6: GtI4
  loc_A0F2F7: FFree1Ad var_88
  loc_A0F2FA: BranchF loc_A0F313
  loc_A0F2FD: FLdRfVar var_88
  loc_A0F300: FLdPr Me
  loc_A0F303: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A0F308: FLdPr var_88
  loc_A0F30B: Me.MoveFirst
  loc_A0F310: FFree1Ad var_88
  loc_A0F313: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0F154
  'Data Table: 44D4CC
  loc_A0F118: FLdRfVar var_8C
  loc_A0F11B: FLdRfVar var_88
  loc_A0F11E: FLdPr Me
  loc_A0F121: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A0F126: FLdPr var_88
  loc_A0F129:  = Me.RecordCount
  loc_A0F12E: ILdRf var_8C
  loc_A0F131: LitI4 0
  loc_A0F136: GtI4
  loc_A0F137: FFree1Ad var_88
  loc_A0F13A: BranchF loc_A0F153
  loc_A0F13D: FLdRfVar var_88
  loc_A0F140: FLdPr Me
  loc_A0F143: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A0F148: FLdPr var_88
  loc_A0F14B: Me.MoveLast
  loc_A0F150: FFree1Ad var_88
  loc_A0F153: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9C208
  'Data Table: 44D4CC
  loc_A9C14C: FLdRfVar var_8A
  loc_A9C14F: FLdRfVar var_88
  loc_A9C152: FLdPr Me
  loc_A9C155: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A9C15A: FLdPr var_88
  loc_A9C15D:  = Me.EOF
  loc_A9C162: FLdI2 var_8A
  loc_A9C165: NotI4
  loc_A9C166: FLdRfVar var_94
  loc_A9C169: FLdRfVar var_90
  loc_A9C16C: FLdPr Me
  loc_A9C16F: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A9C174: FLdPr var_90
  loc_A9C177:  = Me.RecordCount
  loc_A9C17C: ILdRf var_94
  loc_A9C17F: LitI4 0
  loc_A9C184: GtI4
  loc_A9C185: AndI4
  loc_A9C186: FFreeAd var_88 = ""
  loc_A9C18D: BranchF loc_A9C1A6
  loc_A9C190: FLdRfVar var_88
  loc_A9C193: FLdPr Me
  loc_A9C196: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A9C19B: FLdPr var_88
  loc_A9C19E: Me.MoveNext
  loc_A9C1A3: FFree1Ad var_88
  loc_A9C1A6: FLdRfVar var_8A
  loc_A9C1A9: FLdRfVar var_88
  loc_A9C1AC: FLdPr Me
  loc_A9C1AF: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A9C1B4: FLdPr var_88
  loc_A9C1B7:  = Me.EOF
  loc_A9C1BC: FLdI2 var_8A
  loc_A9C1BF: FLdRfVar var_94
  loc_A9C1C2: FLdRfVar var_90
  loc_A9C1C5: FLdPr Me
  loc_A9C1C8: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A9C1CD: FLdPr var_90
  loc_A9C1D0:  = Me.RecordCount
  loc_A9C1D5: ILdRf var_94
  loc_A9C1D8: LitI4 0
  loc_A9C1DD: GtI4
  loc_A9C1DE: AndI4
  loc_A9C1DF: FFreeAd var_88 = ""
  loc_A9C1E6: BranchF loc_A9C204
  loc_A9C1E9: ImpAdCallFPR4 Beep()
  loc_A9C1EE: FLdRfVar var_88
  loc_A9C1F1: FLdPr Me
  loc_A9C1F4: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A9C1F9: FLdPr var_88
  loc_A9C1FC: Me.MoveLast
  loc_A9C201: FFree1Ad var_88
  loc_A9C204: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9D5A74
  'Data Table: 44D4CC
  loc_9D5A5C: FLdRfVar var_88
  loc_9D5A5F: FLdPr Me
  loc_9D5A62: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9D5A67: FLdPr var_88
  loc_9D5A6A: Me.MoveNext
  loc_9D5A6F: FFree1Ad var_88
  loc_9D5A72: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E7664
  'Data Table: 44D4CC
  loc_9E7644: LitVar_Missing var_98
  loc_9E7647: PopAdLdVar
  loc_9E7648: ILdI2 iValor
  loc_9E764B: CI4UI1
  loc_9E764C: FLdRfVar var_88
  loc_9E764F: FLdPr Me
  loc_9E7652: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9E7657: FLdPr var_88
  loc_9E765A: Me.Move from_stack_1, from_stack_2
  loc_9E765F: FFree1Ad var_88
  loc_9E7662: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9AE04
  'Data Table: 44D4CC
  loc_A9AD48: FLdRfVar var_8A
  loc_A9AD4B: FLdRfVar var_88
  loc_A9AD4E: FLdPr Me
  loc_A9AD51: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A9AD56: FLdPr var_88
  loc_A9AD59:  = Me.BOF
  loc_A9AD5E: FLdI2 var_8A
  loc_A9AD61: NotI4
  loc_A9AD62: FLdRfVar var_94
  loc_A9AD65: FLdRfVar var_90
  loc_A9AD68: FLdPr Me
  loc_A9AD6B: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A9AD70: FLdPr var_90
  loc_A9AD73:  = Me.RecordCount
  loc_A9AD78: ILdRf var_94
  loc_A9AD7B: LitI4 0
  loc_A9AD80: GtI4
  loc_A9AD81: AndI4
  loc_A9AD82: FFreeAd var_88 = ""
  loc_A9AD89: BranchF loc_A9ADA2
  loc_A9AD8C: FLdRfVar var_88
  loc_A9AD8F: FLdPr Me
  loc_A9AD92: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A9AD97: FLdPr var_88
  loc_A9AD9A: Me.MovePrevious
  loc_A9AD9F: FFree1Ad var_88
  loc_A9ADA2: FLdRfVar var_8A
  loc_A9ADA5: FLdRfVar var_88
  loc_A9ADA8: FLdPr Me
  loc_A9ADAB: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A9ADB0: FLdPr var_88
  loc_A9ADB3:  = Me.BOF
  loc_A9ADB8: FLdI2 var_8A
  loc_A9ADBB: FLdRfVar var_94
  loc_A9ADBE: FLdRfVar var_90
  loc_A9ADC1: FLdPr Me
  loc_A9ADC4: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A9ADC9: FLdPr var_90
  loc_A9ADCC:  = Me.RecordCount
  loc_A9ADD1: ILdRf var_94
  loc_A9ADD4: LitI4 0
  loc_A9ADD9: GtI4
  loc_A9ADDA: AndI4
  loc_A9ADDB: FFreeAd var_88 = ""
  loc_A9ADE2: BranchF loc_A9AE00
  loc_A9ADE5: ImpAdCallFPR4 Beep()
  loc_A9ADEA: FLdRfVar var_88
  loc_A9ADED: FLdPr Me
  loc_A9ADF0: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A9ADF5: FLdPr var_88
  loc_A9ADF8: Me.MoveFirst
  loc_A9ADFD: FFree1Ad var_88
  loc_A9AE00: ExitProcHresult
  loc_A9AE01: FLdPr arg_0
End Sub

Public Property Get EOF() '9F2DE4
  'Data Table: 44D4CC
  loc_9F2DBC: FLdRfVar var_8E
  loc_9F2DBF: FLdRfVar var_8C
  loc_9F2DC2: FLdPr Me
  loc_9F2DC5: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9F2DCA: FLdPr var_8C
  loc_9F2DCD:  = Me.EOF
  loc_9F2DD2: FLdI2 var_8E
  loc_9F2DD5: FStI2 var_86
  loc_9F2DD8: FFree1Ad var_8C
  loc_9F2DDB: ExitProcCbHresult
  loc_9F2DE1: PopAdLdVar
  loc_9F2DE2: GtR4
End Sub

Public Property Get BOF() '9F2D88
  'Data Table: 44D4CC
  loc_9F2D60: FLdRfVar var_8E
  loc_9F2D63: FLdRfVar var_8C
  loc_9F2D66: FLdPr Me
  loc_9F2D69: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9F2D6E: FLdPr var_8C
  loc_9F2D71:  = Me.BOF
  loc_9F2D76: FLdI2 var_8E
  loc_9F2D79: FStI2 var_86
  loc_9F2D7C: FFree1Ad var_8C
  loc_9F2D7F: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9E1AEC
  'Data Table: 44D4CC
  loc_9E1AD0: ILdI4 sOrden
  loc_9E1AD3: FLdRfVar var_88
  loc_9E1AD6: FLdPr Me
  loc_9E1AD9: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9E1ADE: FLdPr var_88
  loc_9E1AE1: Me.Sort = from_stack_1
  loc_9E1AE6: FFree1Ad var_88
  loc_9E1AE9: ExitProcHresult
  loc_9E1AEA: FLdPr arg_5400
End Sub

Public Sub Find(sFind) '9F2CD0
  'Data Table: 44D4CC
  loc_9F2CA8: LitVar_Missing var_98
  loc_9F2CAB: PopAdLdVar
  loc_9F2CAC: LitI4 1
  loc_9F2CB1: LitI4 0
  loc_9F2CB6: ILdI4 sFind
  loc_9F2CB9: FLdRfVar var_88
  loc_9F2CBC: FLdPr Me
  loc_9F2CBF: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9F2CC4: FLdPr var_88
  loc_9F2CC7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F2CCC: FFree1Ad var_88
  loc_9F2CCF: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F2C74
  'Data Table: 44D4CC
  loc_9F2C4C: FLdRfVar var_90
  loc_9F2C4F: FLdRfVar var_8C
  loc_9F2C52: FLdPr Me
  loc_9F2C55: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9F2C5A: FLdPr var_8C
  loc_9F2C5D:  = Me.AbsolutePosition
  loc_9F2C62: ILdRf var_90
  loc_9F2C65: FStR4 var_88
  loc_9F2C68: FFree1Ad var_8C
  loc_9F2C6B: ExitProcCbHresult
  loc_9F2C71: FLdRfVar arg_0
End Sub

Public Property Get RecordCount() '9F2C18
  'Data Table: 44D4CC
  loc_9F2BF0: FLdRfVar var_90
  loc_9F2BF3: FLdRfVar var_8C
  loc_9F2BF6: FLdPr Me
  loc_9F2BF9: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9F2BFE: FLdPr var_8C
  loc_9F2C01:  = Me.RecordCount
  loc_9F2C06: ILdRf var_90
  loc_9F2C09: FStR4 var_88
  loc_9F2C0C: FFree1Ad var_8C
  loc_9F2C0F: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriBole, NumeBole, PeriLiqu, BimeLiqu, CodiOfic, CuenCtct, EstaPaan, FealPaan, FevePaan, FeacPaan, ImpoPaan, GastPaan, DescPaan, ExenPaan, TotaPaan, CodiUsua) 'A0E500
  'Data Table: 44D4CC
  loc_A0E4D8: ILdRf CuenCtct
  loc_A0E4DB: FStStrCopy var_88
  loc_A0E4DE: ILdRf EstaPaan
  loc_A0E4E1: FStStrCopy var_8C
  loc_A0E4E4: ILdRf FealPaan
  loc_A0E4E7: FStStrCopy var_90
  loc_A0E4EA: ILdRf FevePaan
  loc_A0E4ED: FStStrCopy var_94
  loc_A0E4F0: ILdRf FeacPaan
  loc_A0E4F3: FStStrCopy var_98
  loc_A0E4F6: FDupVar
  loc_A0E4FC: ExitProcHresult
End Sub

Public Sub Delete() 'A22F34
  'Data Table: 44D4CC
  loc_A22EEC: FLdRfVar var_8C
  loc_A22EEF: FLdRfVar var_88
  loc_A22EF2: FLdPr Me
  loc_A22EF5: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A22EFA: FLdPr var_88
  loc_A22EFD:  = Me.RecordCount
  loc_A22F02: ILdRf var_8C
  loc_A22F05: LitI4 0
  loc_A22F0A: GtI4
  loc_A22F0B: FFree1Ad var_88
  loc_A22F0E: BranchF loc_A22F31
  loc_A22F11: LitI4 1
  loc_A22F16: FLdRfVar var_88
  loc_A22F19: FLdPr Me
  loc_A22F1C: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A22F21: FLdPr var_88
  loc_A22F24: Me.Delete
  loc_A22F29: FFree1Ad var_88
  loc_A22F2C: Call MoveNext()
  loc_A22F31: ExitProcHresult
End Sub

Public Sub Requery() '9FEA08
  'Data Table: 44D4CC
  loc_9FE9D8: LitI4 -1
  loc_9FE9DD: FLdRfVar var_88
  loc_9FE9E0: FLdPr Me
  loc_9FE9E3: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9FE9E8: FLdPr var_88
  loc_9FE9EB: Me.Requery from_stack_1
  loc_9FE9F0: FFree1Ad var_88
  loc_9FE9F3: LitVarStr var_98, "Primary"
  loc_9FE9F8: PopAdLdVar
  loc_9FE9F9: FLdPr Me
  loc_9FE9FC: LateIdCall
  loc_9FEA04: ExitProcHresult
End Sub

Public Sub Update() 'A2319C
  'Data Table: 44D4CC
  loc_A23158: FLdRfVar var_88
  loc_A2315B: FLdPr Me
  loc_A2315E: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A23163: FLdZeroAd var_88
  loc_A23166: FStAdFunc var_8C
  loc_A23169: LitI4 3
  loc_A2316E: FLdPr var_8C
  loc_A23171: Me.UpdateBatch
  loc_A23176: FLdRfVar var_90
  loc_A23179: FLdPr var_8C
  loc_A2317C:  = Me.EditMode
  loc_A23181: ILdRf var_90
  loc_A23184: LitI4 2
  loc_A23189: EqI4
  loc_A2318A: BranchF loc_A23192
  loc_A2318D: Call MoveLast()
  loc_A23192: LitNothing
  loc_A23194: FStAd var_8C 
  loc_A23198: ExitProcHresult
End Sub

Public Sub Cancel() 'A44608
  'Data Table: 44D4CC
  loc_A445B4: FLdRfVar var_88
  loc_A445B7: FLdPr Me
  loc_A445BA: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A445BF: FLdZeroAd var_88
  loc_A445C2: FStAdFunc var_8C
  loc_A445C5: FLdRfVar var_90
  loc_A445C8: FLdPr var_8C
  loc_A445CB:  = Me.RecordCount
  loc_A445D0: ILdRf var_90
  loc_A445D3: LitI4 0
  loc_A445D8: GtI4
  loc_A445D9: BranchF loc_A44600
  loc_A445DC: FLdPr var_8C
  loc_A445DF: Me.CancelUpdate
  loc_A445E4: FLdRfVar var_90
  loc_A445E7: FLdPr var_8C
  loc_A445EA:  = Me.EditMode
  loc_A445EF: ILdRf var_90
  loc_A445F2: LitI4 2
  loc_A445F7: EqI4
  loc_A445F8: BranchF loc_A44600
  loc_A445FB: Call MoveFirst()
  loc_A44600: LitNothing
  loc_A44602: FStAd var_8C 
  loc_A44606: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FC5D4
  'Data Table: 44D4CC
  loc_9FC5A8: FLdRfVar var_90
  loc_9FC5AB: FLdRfVar var_8C
  loc_9FC5AE: FLdPr Me
  loc_9FC5B1: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9FC5B6: FLdPr var_8C
  loc_9FC5B9:  = Me.EditMode
  loc_9FC5BE: ILdRf var_90
  loc_9FC5C1: LitI4 0
  loc_9FC5C6: NeI4
  loc_9FC5C7: FStI2 var_86
  loc_9FC5CA: FFree1Ad var_8C
  loc_9FC5CD: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A72C54
  'Data Table: 44D4CC
  loc_A72BE0: ILdRf sSelect
  loc_A72BE3: FStStrCopy var_88
  loc_A72BE6: LitNothing
  loc_A72BE8: CastAd
  loc_A72BEB: FStAdFuncNoPop
  loc_A72BEE: FLdPr Me
  loc_A72BF1: Call clspagoanti.global_4510804Set(from_stack_1v)
  loc_A72BF6: FFree1Ad var_8C
  loc_A72BF9: New Recordset
  loc_A72BFD: FStAdFuncNoPop
  loc_A72C00: FLdPr Me
  loc_A72C03: Call clspagoanti.global_4510804Set(from_stack_1v)
  loc_A72C08: FFree1Ad var_8C
  loc_A72C0B: LitI4 -1
  loc_A72C10: LitI4 3
  loc_A72C15: LitI4 3
  loc_A72C1A: ImpAdLdI4 MemVar_D9301C
  loc_A72C1D: CVarAd
  loc_A72C21: PopAdLdVar
  loc_A72C22: ILdRf var_88
  loc_A72C25: CVarStr var_9C
  loc_A72C28: PopAdLdVar
  loc_A72C29: FLdRfVar var_8C
  loc_A72C2C: FLdPr Me
  loc_A72C2F: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A72C34: FLdPr var_8C
  loc_A72C37: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A72C3C: FFree1Ad var_8C
  loc_A72C3F: LitVarStr var_9C, "Primary"
  loc_A72C44: PopAdLdVar
  loc_A72C45: FLdPr Me
  loc_A72C48: LateIdCall
  loc_A72C50: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A5BB80
  'Data Table: 44D4CC
  loc_A5BB20: ILdRf sSelect
  loc_A5BB23: FStStrCopy var_88
  loc_A5BB26: LitNothing
  loc_A5BB28: CastAd
  loc_A5BB2B: FStAdFuncNoPop
  loc_A5BB2E: FLdPr Me
  loc_A5BB31: Call clspagoanti.global_4510804Set(from_stack_1v)
  loc_A5BB36: FFree1Ad var_8C
  loc_A5BB39: New Recordset
  loc_A5BB3D: FStAdFuncNoPop
  loc_A5BB40: FLdPr Me
  loc_A5BB43: Call clspagoanti.global_4510804Set(from_stack_1v)
  loc_A5BB48: FFree1Ad var_8C
  loc_A5BB4B: LitI4 -1
  loc_A5BB50: LitI4 3
  loc_A5BB55: LitI4 3
  loc_A5BB5A: ImpAdLdI4 MemVar_D9301C
  loc_A5BB5D: CVarAd
  loc_A5BB61: PopAdLdVar
  loc_A5BB62: ILdRf var_88
  loc_A5BB65: CVarStr var_9C
  loc_A5BB68: PopAdLdVar
  loc_A5BB69: FLdRfVar var_8C
  loc_A5BB6C: FLdPr Me
  loc_A5BB6F: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A5BB74: FLdPr var_8C
  loc_A5BB77: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5BB7C: FFree1Ad var_8C
  loc_A5BB7F: ExitProcHresult
End Sub

Public Sub Encontrar(CodiTido) '9EF664
  'Data Table: 44D4CC
  loc_9EF644: LitStr "CodiTido = "
  loc_9EF647: FLdI2 CodiTido
  loc_9EF64A: CStrUI1
  loc_9EF64C: FStStrNoPop var_88
  loc_9EF64F: ConcatStr
  loc_9EF650: PopTmpLdAdStr
  loc_9EF654: Call Find(from_stack_1v)
  loc_9EF659: FFreeStr var_88 = ""
  loc_9EF660: ExitProcHresult
End Sub

Public Property Get DataSource() 'A0A10C
  'Data Table: 44D4CC
  loc_A0A0DC: ZeroRetVal
  loc_A0A0DE: FLdRfVar var_90
  loc_A0A0E1: FLdRfVar var_8C
  loc_A0A0E4: FLdPr Me
  loc_A0A0E7: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A0A0EC: FLdPr var_8C
  loc_A0A0EF:  = Me.DataSource
  loc_A0A0F4: ILdRf var_90
  loc_A0A0F7: CastAd
  loc_A0A0FA: FStAdFunc var_88
  loc_A0A0FD: FFreeAd var_8C = ""
  loc_A0A104: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9F26B4
  'Data Table: 44D4CC
  loc_9F268C: FLdRfVar var_90
  loc_9F268F: FLdRfVar var_8C
  loc_9F2692: FLdPr Me
  loc_9F2695: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9F269A: FLdPr var_8C
  loc_9F269D:  = Me.EditMode
  loc_9F26A2: ILdRf var_90
  loc_9F26A5: FStR4 var_88
  loc_9F26A8: FFree1Ad var_8C
  loc_9F26AB: ExitProcCbHresult
End Sub

Public Property Get PeriBole() 'A48FD4
  'Data Table: 44D4CC
  loc_A48F88: FLdRfVar var_B4
  loc_A48F8B: FLdRfVar var_A4
  loc_A48F8E: LitVarStr var_A0, "PeriBole"
  loc_A48F93: PopAdLdVar
  loc_A48F94: FLdRfVar var_90
  loc_A48F97: FLdRfVar var_8C
  loc_A48F9A: FLdPr Me
  loc_A48F9D: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A48FA2: FLdPr var_8C
  loc_A48FA5:  = Me.Fields
  loc_A48FAA: FLdPr var_90
  loc_A48FAD: from_stack_2 = Me.Item(from_stack_1)
  loc_A48FB2: FLdPr var_A4
  loc_A48FB5:  = Me.Value
  loc_A48FBA: FLdRfVar var_B4
  loc_A48FBD: CI2Var
  loc_A48FBE: FStI2 var_86
  loc_A48FC1: FFreeAd var_8C = "": var_90 = ""
  loc_A48FCA: FFree1Var var_B4 = ""
  loc_A48FCD: ExitProcCbHresult
End Sub

Public Property Let PeriBole(vDato) '9EF7C8
  'Data Table: 44D4CC
  loc_9EF7A4: FLdI2 vDato
  loc_9EF7A7: CVarI2 var_A8
  loc_9EF7AA: PopAdLdVar
  loc_9EF7AB: LitVarStr var_98, "PeriBole"
  loc_9EF7B0: PopAdLdVar
  loc_9EF7B1: FLdRfVar var_88
  loc_9EF7B4: FLdPr Me
  loc_9EF7B7: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9EF7BC: FLdPr var_88
  loc_9EF7BF: Me.Collect = from_stack_1
  loc_9EF7C4: FFree1Ad var_88
  loc_9EF7C7: ExitProcHresult
End Sub

Public Property Get NumeBole() 'A4EEFC
  'Data Table: 44D4CC
  loc_A4EEB0: FLdRfVar var_B4
  loc_A4EEB3: FLdRfVar var_A4
  loc_A4EEB6: LitVarStr var_A0, "NumeBole"
  loc_A4EEBB: PopAdLdVar
  loc_A4EEBC: FLdRfVar var_90
  loc_A4EEBF: FLdRfVar var_8C
  loc_A4EEC2: FLdPr Me
  loc_A4EEC5: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A4EECA: FLdPr var_8C
  loc_A4EECD:  = Me.Fields
  loc_A4EED2: FLdPr var_90
  loc_A4EED5: from_stack_2 = Me.Item(from_stack_1)
  loc_A4EEDA: FLdPr var_A4
  loc_A4EEDD:  = Me.Value
  loc_A4EEE2: FLdRfVar var_B4
  loc_A4EEE5: CI4Var
  loc_A4EEE7: FStR4 var_88
  loc_A4EEEA: FFreeAd var_8C = "": var_90 = ""
  loc_A4EEF3: FFree1Var var_B4 = ""
  loc_A4EEF6: ExitProcCbHresult
End Sub

Public Property Let NumeBole(vDato) '9F2544
  'Data Table: 44D4CC
  loc_9F251C: ILdRf vDato
  loc_9F251F: CVarI4
  loc_9F2523: PopAdLdVar
  loc_9F2524: LitVarStr var_98, "NumeBole"
  loc_9F2529: PopAdLdVar
  loc_9F252A: FLdRfVar var_88
  loc_9F252D: FLdPr Me
  loc_9F2530: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9F2535: FLdPr var_88
  loc_9F2538: Me.Collect = from_stack_1
  loc_9F253D: FFree1Ad var_88
  loc_9F2540: ExitProcHresult
  loc_9F2541: LtI2
  loc_9F2542: GtI4
End Sub

Public Property Get PeriLiqu() 'A4EC40
  'Data Table: 44D4CC
  loc_A4EBF4: FLdRfVar var_B4
  loc_A4EBF7: FLdRfVar var_A4
  loc_A4EBFA: LitVarStr var_A0, "PeriLiqu"
  loc_A4EBFF: PopAdLdVar
  loc_A4EC00: FLdRfVar var_90
  loc_A4EC03: FLdRfVar var_8C
  loc_A4EC06: FLdPr Me
  loc_A4EC09: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A4EC0E: FLdPr var_8C
  loc_A4EC11:  = Me.Fields
  loc_A4EC16: FLdPr var_90
  loc_A4EC19: from_stack_2 = Me.Item(from_stack_1)
  loc_A4EC1E: FLdPr var_A4
  loc_A4EC21:  = Me.Value
  loc_A4EC26: FLdRfVar var_B4
  loc_A4EC29: CI2Var
  loc_A4EC2A: FStI2 var_86
  loc_A4EC2D: FFreeAd var_8C = "": var_90 = ""
  loc_A4EC36: FFree1Var var_B4 = ""
  loc_A4EC39: ExitProcCbHresult
End Sub

Public Property Let PeriLiqu(vDato) '9EE488
  'Data Table: 44D4CC
  loc_9EE464: FLdI2 vDato
  loc_9EE467: CVarI2 var_A8
  loc_9EE46A: PopAdLdVar
  loc_9EE46B: LitVarStr var_98, "PeriLiqu"
  loc_9EE470: PopAdLdVar
  loc_9EE471: FLdRfVar var_88
  loc_9EE474: FLdPr Me
  loc_9EE477: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9EE47C: FLdPr var_88
  loc_9EE47F: Me.Collect = from_stack_1
  loc_9EE484: FFree1Ad var_88
  loc_9EE487: ExitProcHresult
End Sub

Public Property Get BimeLiqu() 'A53BF0
  'Data Table: 44D4CC
  loc_A53BA0: FLdRfVar var_B4
  loc_A53BA3: FLdRfVar var_A4
  loc_A53BA6: LitVarStr var_A0, "BimeLiqu"
  loc_A53BAB: PopAdLdVar
  loc_A53BAC: FLdRfVar var_90
  loc_A53BAF: FLdRfVar var_8C
  loc_A53BB2: FLdPr Me
  loc_A53BB5: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A53BBA: FLdPr var_8C
  loc_A53BBD:  = Me.Fields
  loc_A53BC2: FLdPr var_90
  loc_A53BC5: from_stack_2 = Me.Item(from_stack_1)
  loc_A53BCA: FLdPr var_A4
  loc_A53BCD:  = Me.Value
  loc_A53BD2: FLdRfVar var_B4
  loc_A53BD5: CUI1Var
  loc_A53BD7: FStUI1 var_86
  loc_A53BDB: FFreeAd var_8C = "": var_90 = ""
  loc_A53BE4: FFree1Var var_B4 = ""
  loc_A53BE7: ExitProcCbHresult
  loc_A53BED: LtCy
  loc_A53BEE: GtI4
End Sub

Public Property Let BimeLiqu(vDato) '9F23D4
  'Data Table: 44D4CC
  loc_9F23AC: FLdUI1
  loc_9F23B0: CVarUI1
  loc_9F23B4: PopAdLdVar
  loc_9F23B5: LitVarStr var_98, "BimeLiqu"
  loc_9F23BA: PopAdLdVar
  loc_9F23BB: FLdRfVar var_88
  loc_9F23BE: FLdPr Me
  loc_9F23C1: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9F23C6: FLdPr var_88
  loc_9F23C9: Me.Collect = from_stack_1
  loc_9F23CE: FFree1Ad var_88
  loc_9F23D1: ExitProcHresult
  loc_9F23D2: OrI4
End Sub

Public Property Get CodiOfic() 'A53C80
  'Data Table: 44D4CC
  loc_A53C30: FLdRfVar var_B4
  loc_A53C33: FLdRfVar var_A4
  loc_A53C36: LitVarStr var_A0, "CodiOfic"
  loc_A53C3B: PopAdLdVar
  loc_A53C3C: FLdRfVar var_90
  loc_A53C3F: FLdRfVar var_8C
  loc_A53C42: FLdPr Me
  loc_A53C45: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A53C4A: FLdPr var_8C
  loc_A53C4D:  = Me.Fields
  loc_A53C52: FLdPr var_90
  loc_A53C55: from_stack_2 = Me.Item(from_stack_1)
  loc_A53C5A: FLdPr var_A4
  loc_A53C5D:  = Me.Value
  loc_A53C62: FLdRfVar var_B4
  loc_A53C65: CUI1Var
  loc_A53C67: FStUI1 var_86
  loc_A53C6B: FFreeAd var_8C = "": var_90 = ""
  loc_A53C74: FFree1Var var_B4 = ""
  loc_A53C77: ExitProcCbHresult
End Sub

Public Property Let CodiOfic(vDato) '9F231C
  'Data Table: 44D4CC
  loc_9F22F4: FLdUI1
  loc_9F22F8: CVarUI1
  loc_9F22FC: PopAdLdVar
  loc_9F22FD: LitVarStr var_98, "CodiOfic"
  loc_9F2302: PopAdLdVar
  loc_9F2303: FLdRfVar var_88
  loc_9F2306: FLdPr Me
  loc_9F2309: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9F230E: FLdPr var_88
  loc_9F2311: Me.Collect = from_stack_1
  loc_9F2316: FFree1Ad var_88
  loc_9F2319: ExitProcHresult
End Sub

Public Property Get CuenCtct() 'A54F88
  'Data Table: 44D4CC
  loc_A54F38: ZeroRetVal
  loc_A54F3A: FLdRfVar var_B4
  loc_A54F3D: FLdRfVar var_A4
  loc_A54F40: LitVarStr var_A0, "CuenCtct"
  loc_A54F45: PopAdLdVar
  loc_A54F46: FLdRfVar var_90
  loc_A54F49: FLdRfVar var_8C
  loc_A54F4C: FLdPr Me
  loc_A54F4F: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A54F54: FLdPr var_8C
  loc_A54F57:  = Me.Fields
  loc_A54F5C: FLdPr var_90
  loc_A54F5F: from_stack_2 = Me.Item(from_stack_1)
  loc_A54F64: FLdPr var_A4
  loc_A54F67:  = Me.Value
  loc_A54F6C: FLdRfVar var_B4
  loc_A54F6F: CStrVarTmp
  loc_A54F70: FStStr var_88
  loc_A54F73: FFreeAd var_8C = "": var_90 = ""
  loc_A54F7C: FFree1Var var_B4 = ""
  loc_A54F7F: ExitProcCbHresult
End Sub

Public Property Let CuenCtct(vDato) '9FE680
  'Data Table: 44D4CC
  loc_9FE654: ILdRf vDato
  loc_9FE657: FStStrCopy var_88
  loc_9FE65A: ILdRf var_88
  loc_9FE65D: CVarStr var_AC
  loc_9FE660: PopAdLdVar
  loc_9FE661: LitVarStr var_9C, "CuenCtct"
  loc_9FE666: PopAdLdVar
  loc_9FE667: FLdRfVar var_8C
  loc_9FE66A: FLdPr Me
  loc_9FE66D: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9FE672: FLdPr var_8C
  loc_9FE675: Me.Collect = from_stack_1
  loc_9FE67A: FFree1Ad var_8C
  loc_9FE67D: ExitProcHresult
  loc_9FE67E: NeCy
End Sub

Public Property Get EstaPaan() 'A549C0
  'Data Table: 44D4CC
  loc_A54970: ZeroRetVal
  loc_A54972: FLdRfVar var_B4
  loc_A54975: FLdRfVar var_A4
  loc_A54978: LitVarStr var_A0, "EstaPaan"
  loc_A5497D: PopAdLdVar
  loc_A5497E: FLdRfVar var_90
  loc_A54981: FLdRfVar var_8C
  loc_A54984: FLdPr Me
  loc_A54987: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A5498C: FLdPr var_8C
  loc_A5498F:  = Me.Fields
  loc_A54994: FLdPr var_90
  loc_A54997: from_stack_2 = Me.Item(from_stack_1)
  loc_A5499C: FLdPr var_A4
  loc_A5499F:  = Me.Value
  loc_A549A4: FLdRfVar var_B4
  loc_A549A7: CStrVarTmp
  loc_A549A8: FStStr var_88
  loc_A549AB: FFreeAd var_8C = "": var_90 = ""
  loc_A549B4: FFree1Var var_B4 = ""
  loc_A549B7: ExitProcCbHresult
  loc_A549BD: LeCy
  loc_A549BE: GtI4
End Sub

Public Property Let EstaPaan(vDato) '9FE8D8
  'Data Table: 44D4CC
  loc_9FE8AC: ILdRf vDato
  loc_9FE8AF: FStStrCopy var_88
  loc_9FE8B2: ILdRf var_88
  loc_9FE8B5: CVarStr var_AC
  loc_9FE8B8: PopAdLdVar
  loc_9FE8B9: LitVarStr var_9C, "EstaPaan"
  loc_9FE8BE: PopAdLdVar
  loc_9FE8BF: FLdRfVar var_8C
  loc_9FE8C2: FLdPr Me
  loc_9FE8C5: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9FE8CA: FLdPr var_8C
  loc_9FE8CD: Me.Collect = from_stack_1
  loc_9FE8D2: FFree1Ad var_8C
  loc_9FE8D5: ExitProcHresult
End Sub

Public Property Get FealPaan() 'A55300
  'Data Table: 44D4CC
  loc_A552B0: ZeroRetVal
  loc_A552B2: FLdRfVar var_B4
  loc_A552B5: FLdRfVar var_A4
  loc_A552B8: LitVarStr var_A0, "FealPaan"
  loc_A552BD: PopAdLdVar
  loc_A552BE: FLdRfVar var_90
  loc_A552C1: FLdRfVar var_8C
  loc_A552C4: FLdPr Me
  loc_A552C7: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A552CC: FLdPr var_8C
  loc_A552CF:  = Me.Fields
  loc_A552D4: FLdPr var_90
  loc_A552D7: from_stack_2 = Me.Item(from_stack_1)
  loc_A552DC: FLdPr var_A4
  loc_A552DF:  = Me.Value
  loc_A552E4: FLdRfVar var_B4
  loc_A552E7: CStrVarTmp
  loc_A552E8: FStStr var_88
  loc_A552EB: FFreeAd var_8C = "": var_90 = ""
  loc_A552F4: FFree1Var var_B4 = ""
  loc_A552F7: ExitProcCbHresult
End Sub

Public Property Let FealPaan(vDato) '9FEBF8
  'Data Table: 44D4CC
  loc_9FEBCC: ILdRf vDato
  loc_9FEBCF: FStStrCopy var_88
  loc_9FEBD2: ILdRf var_88
  loc_9FEBD5: CVarStr var_AC
  loc_9FEBD8: PopAdLdVar
  loc_9FEBD9: LitVarStr var_9C, "FealPaan"
  loc_9FEBDE: PopAdLdVar
  loc_9FEBDF: FLdRfVar var_8C
  loc_9FEBE2: FLdPr Me
  loc_9FEBE5: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9FEBEA: FLdPr var_8C
  loc_9FEBED: Me.Collect = from_stack_1
  loc_9FEBF2: FFree1Ad var_8C
  loc_9FEBF5: ExitProcHresult
End Sub

Public Property Get FevePaan() 'A58D64
  'Data Table: 44D4CC
  loc_A58D14: ZeroRetVal
  loc_A58D16: FLdRfVar var_B4
  loc_A58D19: FLdRfVar var_A4
  loc_A58D1C: LitVarStr var_A0, "FevePaan"
  loc_A58D21: PopAdLdVar
  loc_A58D22: FLdRfVar var_90
  loc_A58D25: FLdRfVar var_8C
  loc_A58D28: FLdPr Me
  loc_A58D2B: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A58D30: FLdPr var_8C
  loc_A58D33:  = Me.Fields
  loc_A58D38: FLdPr var_90
  loc_A58D3B: from_stack_2 = Me.Item(from_stack_1)
  loc_A58D40: FLdPr var_A4
  loc_A58D43:  = Me.Value
  loc_A58D48: FLdRfVar var_B4
  loc_A58D4B: CStrVarTmp
  loc_A58D4C: FStStr var_88
  loc_A58D4F: FFreeAd var_8C = "": var_90 = ""
  loc_A58D58: FFree1Var var_B4 = ""
  loc_A58D5B: ExitProcCbHresult
End Sub

Public Property Let FevePaan(vDato) '9FF814
  'Data Table: 44D4CC
  loc_9FF7E8: ILdRf vDato
  loc_9FF7EB: FStStrCopy var_88
  loc_9FF7EE: ILdRf var_88
  loc_9FF7F1: CVarStr var_AC
  loc_9FF7F4: PopAdLdVar
  loc_9FF7F5: LitVarStr var_9C, "FevePaan"
  loc_9FF7FA: PopAdLdVar
  loc_9FF7FB: FLdRfVar var_8C
  loc_9FF7FE: FLdPr Me
  loc_9FF801: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9FF806: FLdPr var_8C
  loc_9FF809: Me.Collect = from_stack_1
  loc_9FF80E: FFree1Ad var_8C
  loc_9FF811: ExitProcHresult
End Sub

Public Property Get FeacPaan() 'A568F8
  'Data Table: 44D4CC
  loc_A568A8: ZeroRetVal
  loc_A568AA: FLdRfVar var_B4
  loc_A568AD: FLdRfVar var_A4
  loc_A568B0: LitVarStr var_A0, "FeacPaan"
  loc_A568B5: PopAdLdVar
  loc_A568B6: FLdRfVar var_90
  loc_A568B9: FLdRfVar var_8C
  loc_A568BC: FLdPr Me
  loc_A568BF: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A568C4: FLdPr var_8C
  loc_A568C7:  = Me.Fields
  loc_A568CC: FLdPr var_90
  loc_A568CF: from_stack_2 = Me.Item(from_stack_1)
  loc_A568D4: FLdPr var_A4
  loc_A568D7:  = Me.Value
  loc_A568DC: FLdRfVar var_B4
  loc_A568DF: CStrVarTmp
  loc_A568E0: FStStr var_88
  loc_A568E3: FFreeAd var_8C = "": var_90 = ""
  loc_A568EC: FFree1Var var_B4 = ""
  loc_A568EF: ExitProcCbHresult
End Sub

Public Property Let FeacPaan(vDato) '9FFAD0
  'Data Table: 44D4CC
  loc_9FFAA4: ILdRf vDato
  loc_9FFAA7: FStStrCopy var_88
  loc_9FFAAA: ILdRf var_88
  loc_9FFAAD: CVarStr var_AC
  loc_9FFAB0: PopAdLdVar
  loc_9FFAB1: LitVarStr var_9C, "FeacPaan"
  loc_9FFAB6: PopAdLdVar
  loc_9FFAB7: FLdRfVar var_8C
  loc_9FFABA: FLdPr Me
  loc_9FFABD: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9FFAC2: FLdPr var_8C
  loc_9FFAC5: Me.Collect = from_stack_1
  loc_9FFACA: FFree1Ad var_8C
  loc_9FFACD: ExitProcHresult
End Sub

Public Property Get ImpoPaan() 'A4C684
  'Data Table: 44D4CC
  loc_A4C638: FLdRfVar var_B8
  loc_A4C63B: FLdRfVar var_A8
  loc_A4C63E: LitVarStr var_A4, "ImpoPaan"
  loc_A4C643: PopAdLdVar
  loc_A4C644: FLdRfVar ImpoPaan
  loc_A4C647: FLdRfVar var_90
  loc_A4C64A: FLdPr Me
  loc_A4C64D: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A4C652: FLdPr var_90
  loc_A4C655:  = Me.Fields
  loc_A4C65A: FLdPr ImpoPaan
  loc_A4C65D: from_stack_2 = Me.Item(from_stack_1)
  loc_A4C662: FLdPr var_A8
  loc_A4C665:  = Me.Value
  loc_A4C66A: FLdRfVar var_B8
  loc_A4C66D: CR4Var
  loc_A4C66E: FStFPR8 var_8C
  loc_A4C671: FFreeAd var_90 = "": ImpoPaan = ""
  loc_A4C67A: FFree1Var var_B8 = ""
  loc_A4C67D: ExitProcCbHresult
End Sub

Public Property Let ImpoPaan(vDato) '9F1ECC
  'Data Table: 44D4CC
  loc_9F1EA4: FLdFPR8 vDato
  loc_9F1EA7: CVarR8
  loc_9F1EAB: PopAdLdVar
  loc_9F1EAC: LitVarStr var_98, "ImpoPaan"
  loc_9F1EB1: PopAdLdVar
  loc_9F1EB2: FLdRfVar var_88
  loc_9F1EB5: FLdPr Me
  loc_9F1EB8: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9F1EBD: FLdPr var_88
  loc_9F1EC0: Me.Collect = from_stack_1
  loc_9F1EC5: FFree1Ad var_88
  loc_9F1EC8: ExitProcHresult
End Sub

Public Property Get GastPaan() 'A4C5F8
  'Data Table: 44D4CC
  loc_A4C5AC: FLdRfVar var_B8
  loc_A4C5AF: FLdRfVar var_A8
  loc_A4C5B2: LitVarStr var_A4, "GastPaan"
  loc_A4C5B7: PopAdLdVar
  loc_A4C5B8: FLdRfVar GastPaan
  loc_A4C5BB: FLdRfVar var_90
  loc_A4C5BE: FLdPr Me
  loc_A4C5C1: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A4C5C6: FLdPr var_90
  loc_A4C5C9:  = Me.Fields
  loc_A4C5CE: FLdPr GastPaan
  loc_A4C5D1: from_stack_2 = Me.Item(from_stack_1)
  loc_A4C5D6: FLdPr var_A8
  loc_A4C5D9:  = Me.Value
  loc_A4C5DE: FLdRfVar var_B8
  loc_A4C5E1: CR4Var
  loc_A4C5E2: FStFPR8 var_8C
  loc_A4C5E5: FFreeAd var_90 = "": GastPaan = ""
  loc_A4C5EE: FFree1Var var_B8 = ""
  loc_A4C5F1: ExitProcCbHresult
End Sub

Public Property Let GastPaan(vDato) '9F1E14
  'Data Table: 44D4CC
  loc_9F1DEC: FLdFPR8 vDato
  loc_9F1DEF: CVarR8
  loc_9F1DF3: PopAdLdVar
  loc_9F1DF4: LitVarStr var_98, "GastPaan"
  loc_9F1DF9: PopAdLdVar
  loc_9F1DFA: FLdRfVar var_88
  loc_9F1DFD: FLdPr Me
  loc_9F1E00: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9F1E05: FLdPr var_88
  loc_9F1E08: Me.Collect = from_stack_1
  loc_9F1E0D: FFree1Ad var_88
  loc_9F1E10: ExitProcHresult
End Sub

Public Property Get DescPaan() 'A4C56C
  'Data Table: 44D4CC
  loc_A4C520: FLdRfVar var_B8
  loc_A4C523: FLdRfVar var_A8
  loc_A4C526: LitVarStr var_A4, "DescPaan"
  loc_A4C52B: PopAdLdVar
  loc_A4C52C: FLdRfVar DescPaan
  loc_A4C52F: FLdRfVar var_90
  loc_A4C532: FLdPr Me
  loc_A4C535: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A4C53A: FLdPr var_90
  loc_A4C53D:  = Me.Fields
  loc_A4C542: FLdPr DescPaan
  loc_A4C545: from_stack_2 = Me.Item(from_stack_1)
  loc_A4C54A: FLdPr var_A8
  loc_A4C54D:  = Me.Value
  loc_A4C552: FLdRfVar var_B8
  loc_A4C555: CR4Var
  loc_A4C556: FStFPR8 var_8C
  loc_A4C559: FFreeAd var_90 = "": DescPaan = ""
  loc_A4C562: FFree1Var var_B8 = ""
  loc_A4C565: ExitProcCbHresult
End Sub

Public Property Let DescPaan(vDato) '9F1D5C
  'Data Table: 44D4CC
  loc_9F1D34: FLdFPR8 vDato
  loc_9F1D37: CVarR8
  loc_9F1D3B: PopAdLdVar
  loc_9F1D3C: LitVarStr var_98, "DescPaan"
  loc_9F1D41: PopAdLdVar
  loc_9F1D42: FLdRfVar var_88
  loc_9F1D45: FLdPr Me
  loc_9F1D48: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9F1D4D: FLdPr var_88
  loc_9F1D50: Me.Collect = from_stack_1
  loc_9F1D55: FFree1Ad var_88
  loc_9F1D58: ExitProcHresult
  loc_9F1D59: CExtInstUnk
End Sub

Public Property Get ExenPaan() 'A4BD38
  'Data Table: 44D4CC
  loc_A4BCEC: FLdRfVar var_B8
  loc_A4BCEF: FLdRfVar var_A8
  loc_A4BCF2: LitVarStr var_A4, "ExenPaan"
  loc_A4BCF7: PopAdLdVar
  loc_A4BCF8: FLdRfVar ExenPaan
  loc_A4BCFB: FLdRfVar var_90
  loc_A4BCFE: FLdPr Me
  loc_A4BD01: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A4BD06: FLdPr var_90
  loc_A4BD09:  = Me.Fields
  loc_A4BD0E: FLdPr ExenPaan
  loc_A4BD11: from_stack_2 = Me.Item(from_stack_1)
  loc_A4BD16: FLdPr var_A8
  loc_A4BD19:  = Me.Value
  loc_A4BD1E: FLdRfVar var_B8
  loc_A4BD21: CR4Var
  loc_A4BD22: FStFPR8 var_8C
  loc_A4BD25: FFreeAd var_90 = "": ExenPaan = ""
  loc_A4BD2E: FFree1Var var_B8 = ""
  loc_A4BD31: ExitProcCbHresult
End Sub

Public Property Let ExenPaan(vDato) '9F1CA4
  'Data Table: 44D4CC
  loc_9F1C7C: FLdFPR8 vDato
  loc_9F1C7F: CVarR8
  loc_9F1C83: PopAdLdVar
  loc_9F1C84: LitVarStr var_98, "ExenPaan"
  loc_9F1C89: PopAdLdVar
  loc_9F1C8A: FLdRfVar var_88
  loc_9F1C8D: FLdPr Me
  loc_9F1C90: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9F1C95: FLdPr var_88
  loc_9F1C98: Me.Collect = from_stack_1
  loc_9F1C9D: FFree1Ad var_88
  loc_9F1CA0: ExitProcHresult
End Sub

Public Property Get TotaPaan() 'A4B61C
  'Data Table: 44D4CC
  loc_A4B5D0: FLdRfVar var_B8
  loc_A4B5D3: FLdRfVar var_A8
  loc_A4B5D6: LitVarStr var_A4, "TotaPaan"
  loc_A4B5DB: PopAdLdVar
  loc_A4B5DC: FLdRfVar TotaPaan
  loc_A4B5DF: FLdRfVar var_90
  loc_A4B5E2: FLdPr Me
  loc_A4B5E5: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A4B5EA: FLdPr var_90
  loc_A4B5ED:  = Me.Fields
  loc_A4B5F2: FLdPr TotaPaan
  loc_A4B5F5: from_stack_2 = Me.Item(from_stack_1)
  loc_A4B5FA: FLdPr var_A8
  loc_A4B5FD:  = Me.Value
  loc_A4B602: FLdRfVar var_B8
  loc_A4B605: CR4Var
  loc_A4B606: FStFPR8 var_8C
  loc_A4B609: FFreeAd var_90 = "": TotaPaan = ""
  loc_A4B612: FFree1Var var_B8 = ""
  loc_A4B615: ExitProcCbHresult
End Sub

Public Property Let TotaPaan(vDato) '9F1BEC
  'Data Table: 44D4CC
  loc_9F1BC4: FLdFPR8 vDato
  loc_9F1BC7: CVarR8
  loc_9F1BCB: PopAdLdVar
  loc_9F1BCC: LitVarStr var_98, "TotaPaan"
  loc_9F1BD1: PopAdLdVar
  loc_9F1BD2: FLdRfVar var_88
  loc_9F1BD5: FLdPr Me
  loc_9F1BD8: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9F1BDD: FLdPr var_88
  loc_9F1BE0: Me.Collect = from_stack_1
  loc_9F1BE5: FFree1Ad var_88
  loc_9F1BE8: ExitProcHresult
End Sub

Public Property Get CodiUsua() 'A56BDC
  'Data Table: 44D4CC
  loc_A56B8C: ZeroRetVal
  loc_A56B8E: FLdRfVar var_B4
  loc_A56B91: FLdRfVar var_A4
  loc_A56B94: LitVarStr var_A0, "CodiUsua"
  loc_A56B99: PopAdLdVar
  loc_A56B9A: FLdRfVar var_90
  loc_A56B9D: FLdRfVar var_8C
  loc_A56BA0: FLdPr Me
  loc_A56BA3: from_stack_1v = clspagoanti.global_4510804Get()
  loc_A56BA8: FLdPr var_8C
  loc_A56BAB:  = Me.Fields
  loc_A56BB0: FLdPr var_90
  loc_A56BB3: from_stack_2 = Me.Item(from_stack_1)
  loc_A56BB8: FLdPr var_A4
  loc_A56BBB:  = Me.Value
  loc_A56BC0: FLdRfVar var_B4
  loc_A56BC3: CStrVarTmp
  loc_A56BC4: FStStr var_88
  loc_A56BC7: FFreeAd var_8C = "": var_90 = ""
  loc_A56BD0: FFree1Var var_B4 = ""
  loc_A56BD3: ExitProcCbHresult
End Sub

Public Property Let CodiUsua(vDato) '9FFB98
  'Data Table: 44D4CC
  loc_9FFB6C: ILdRf vDato
  loc_9FFB6F: FStStrCopy var_88
  loc_9FFB72: ILdRf var_88
  loc_9FFB75: CVarStr var_AC
  loc_9FFB78: PopAdLdVar
  loc_9FFB79: LitVarStr var_9C, "CodiUsua"
  loc_9FFB7E: PopAdLdVar
  loc_9FFB7F: FLdRfVar var_8C
  loc_9FFB82: FLdPr Me
  loc_9FFB85: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9FFB8A: FLdPr var_8C
  loc_9FFB8D: Me.Collect = from_stack_1
  loc_9FFB92: FFree1Ad var_8C
  loc_9FFB95: ExitProcHresult
  loc_9FFB96: CExtInstUnk
End Sub

Public Function BuscaPagoAnticipado(CodiOfic, CuenCtct, PeriLiqu, BimeLiqu) 'AABCBC
  'Data Table: 44D4CC
  loc_AABC14: ILdRf CuenCtct
  loc_AABC17: FStStrCopy var_8C
  loc_AABC1A: LitStr "SELECT PeriBole FROM pagoanti WHERE CodiOfic = "
  loc_AABC1D: FLdUI1
  loc_AABC21: CStrI2
  loc_AABC23: FStStrNoPop var_90
  loc_AABC26: ConcatStr
  loc_AABC27: FStStrNoPop BuscaPagoAnticipado
  loc_AABC2A: LitStr " AND CuenCtct = "
  loc_AABC2D: ConcatStr
  loc_AABC2E: FStStrNoPop var_98
  loc_AABC31: ILdRf var_8C
  loc_AABC34: ConcatStr
  loc_AABC35: FStStrNoPop var_9C
  loc_AABC38: LitStr " AND PeriLiqu = "
  loc_AABC3B: ConcatStr
  loc_AABC3C: FStStrNoPop var_A0
  loc_AABC3F: FLdI2 PeriLiqu
  loc_AABC42: CStrUI1
  loc_AABC44: FStStrNoPop var_A4
  loc_AABC47: ConcatStr
  loc_AABC48: FStStrNoPop var_A8
  loc_AABC4B: LitStr " AND BimeLiqu = "
  loc_AABC4E: ConcatStr
  loc_AABC4F: FStStrNoPop var_AC
  loc_AABC52: FLdUI1
  loc_AABC56: CStrI2
  loc_AABC58: FStStrNoPop var_B0
  loc_AABC5B: ConcatStr
  loc_AABC5C: FStStrNoPop var_B4
  loc_AABC5F: LitStr " AND (EstaPaan = 'Actualizado' OR EstaPaan = 'Liquidado')"
  loc_AABC62: ConcatStr
  loc_AABC63: FStStrNoPop var_B8
  loc_AABC66: Call EjecutarRsCls(from_stack_1v)
  loc_AABC6B: FFreeStr var_90 = "": BuscaPagoAnticipado = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_AABC84: FLdRfVar var_C0
  loc_AABC87: FLdRfVar var_BC
  loc_AABC8A: FLdPr Me
  loc_AABC8D: from_stack_1v = clspagoanti.global_4510804Get()
  loc_AABC92: FLdPr var_BC
  loc_AABC95:  = Me.RecordCount
  loc_AABC9A: ILdRf var_C0
  loc_AABC9D: LitI4 0
  loc_AABCA2: GtI4
  loc_AABCA3: FFree1Ad var_BC
  loc_AABCA6: BranchF loc_AABCB1
  loc_AABCA9: LitI2_Byte &HFF
  loc_AABCAB: FStI2 var_86
  loc_AABCAE: Branch loc_AABCB6
  loc_AABCB1: LitI2_Byte 0
  loc_AABCB3: FStI2 var_86
  loc_AABCB6: ExitProcCbHresult
End Function

Public Sub ActualizaPagoAnti(CodiOfic, CuenCtct, PeriLiqu, BimeLiqu, CodiTili, NumeLiqu) 'AAD0C4
  'Data Table: 44D4CC
  loc_AAD028: ILdRf CuenCtct
  loc_AAD02B: FStStrCopy var_88
  loc_AAD02E: LitStr "UPDATE pagoanti SET CodiTili = "
  loc_AAD031: FLdUI1
  loc_AAD035: CStrI2
  loc_AAD037: FStStrNoPop var_8C
  loc_AAD03A: ConcatStr
  loc_AAD03B: FStStrNoPop var_90
  loc_AAD03E: LitStr ", NumeLiqu = "
  loc_AAD041: ConcatStr
  loc_AAD042: FStStrNoPop var_94
  loc_AAD045: FLdI2 NumeLiqu
  loc_AAD048: CStrUI1
  loc_AAD04A: FStStrNoPop var_98
  loc_AAD04D: ConcatStr
  loc_AAD04E: FStStrNoPop var_9C
  loc_AAD051: LitStr " WHERE CodiOfic = "
  loc_AAD054: ConcatStr
  loc_AAD055: FStStrNoPop var_A0
  loc_AAD058: FLdUI1
  loc_AAD05C: CStrI2
  loc_AAD05E: FStStrNoPop var_A4
  loc_AAD061: ConcatStr
  loc_AAD062: FStStrNoPop var_A8
  loc_AAD065: LitStr " AND CuenCtct = '"
  loc_AAD068: ConcatStr
  loc_AAD069: FStStrNoPop var_AC
  loc_AAD06C: ILdRf var_88
  loc_AAD06F: ConcatStr
  loc_AAD070: FStStrNoPop var_B0
  loc_AAD073: LitStr "' AND PeriLiqu = "
  loc_AAD076: ConcatStr
  loc_AAD077: FStStrNoPop var_B4
  loc_AAD07A: FLdI2 PeriLiqu
  loc_AAD07D: CStrUI1
  loc_AAD07F: FStStrNoPop var_B8
  loc_AAD082: ConcatStr
  loc_AAD083: FStStrNoPop var_BC
  loc_AAD086: LitStr " AND BimeLiqu = "
  loc_AAD089: ConcatStr
  loc_AAD08A: FStStrNoPop var_C0
  loc_AAD08D: FLdUI1
  loc_AAD091: CStrI2
  loc_AAD093: FStStrNoPop var_C4
  loc_AAD096: ConcatStr
  loc_AAD097: FStStrNoPop var_C8
  loc_AAD09A: Call EjecutarRsCls(from_stack_1v)
  loc_AAD09F: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_AAD0C2: ExitProcHresult
End Sub

Public Sub ActualizaEstadoPagoAnti(CodiOfic, CuenCtct, PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, EstaPaan) 'ABBD9C
  'Data Table: 44D4CC
  loc_ABBCE8: ILdRf CuenCtct
  loc_ABBCEB: FStStrCopy var_88
  loc_ABBCEE: ILdRf EstaPaan
  loc_ABBCF1: FStStrCopy var_8C
  loc_ABBCF4: LitStr "UPDATE pagoanti SET EstaPaan = '"
  loc_ABBCF7: ILdRf var_8C
  loc_ABBCFA: ConcatStr
  loc_ABBCFB: FStStrNoPop var_90
  loc_ABBCFE: LitStr "' WHERE CodiOfic = "
  loc_ABBD01: ConcatStr
  loc_ABBD02: FStStrNoPop var_94
  loc_ABBD05: FLdUI1
  loc_ABBD09: CStrI2
  loc_ABBD0B: FStStrNoPop var_98
  loc_ABBD0E: ConcatStr
  loc_ABBD0F: FStStrNoPop var_9C
  loc_ABBD12: LitStr " AND CuenCtct = '"
  loc_ABBD15: ConcatStr
  loc_ABBD16: FStStrNoPop var_A0
  loc_ABBD19: ILdRf var_88
  loc_ABBD1C: ConcatStr
  loc_ABBD1D: FStStrNoPop var_A4
  loc_ABBD20: LitStr "' AND PeriLiqu = "
  loc_ABBD23: ConcatStr
  loc_ABBD24: FStStrNoPop var_A8
  loc_ABBD27: FLdI2 PeriLiqu
  loc_ABBD2A: CStrUI1
  loc_ABBD2C: FStStrNoPop var_AC
  loc_ABBD2F: ConcatStr
  loc_ABBD30: FStStrNoPop var_B0
  loc_ABBD33: LitStr " AND BimeLiqu = "
  loc_ABBD36: ConcatStr
  loc_ABBD37: FStStrNoPop var_B4
  loc_ABBD3A: FLdUI1
  loc_ABBD3E: CStrI2
  loc_ABBD40: FStStrNoPop var_B8
  loc_ABBD43: ConcatStr
  loc_ABBD44: FStStrNoPop var_BC
  loc_ABBD47: LitStr " AND CodiTili = "
  loc_ABBD4A: ConcatStr
  loc_ABBD4B: FStStrNoPop var_C0
  loc_ABBD4E: FLdUI1
  loc_ABBD52: CStrI2
  loc_ABBD54: FStStrNoPop var_C4
  loc_ABBD57: ConcatStr
  loc_ABBD58: FStStrNoPop var_C8
  loc_ABBD5B: LitStr " AND NumeLiqu = "
  loc_ABBD5E: ConcatStr
  loc_ABBD5F: FStStrNoPop var_CC
  loc_ABBD62: FLdI2 NumeLiqu
  loc_ABBD65: CStrUI1
  loc_ABBD67: FStStrNoPop var_D0
  loc_ABBD6A: ConcatStr
  loc_ABBD6B: FStStrNoPop var_D4
  loc_ABBD6E: Call EjecutarRsCls(from_stack_1v)
  loc_ABBD73: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_ABBD9A: ExitProcHresult
End Sub

Public Function BuscaVencimiento(CodiOfic, CuenCtct, PeriBole, NumeBole, PeriLiqu, BimeLiqu) 'ADAD30
  'Data Table: 44D4CC
  loc_ADAC30: ILdRf CuenCtct
  loc_ADAC33: FStStrCopy var_98
  loc_ADAC36: ZeroRetValVar
  loc_ADAC38: LitStr "SELECT FevePaan FROM pagoanti WHERE CodiOfic = "
  loc_ADAC3B: FLdUI1
  loc_ADAC3F: CStrI2
  loc_ADAC41: FStStrNoPop var_9C
  loc_ADAC44: ConcatStr
  loc_ADAC45: FStStrNoPop var_A0
  loc_ADAC48: LitStr " AND CuenCtct = '"
  loc_ADAC4B: ConcatStr
  loc_ADAC4C: FStStrNoPop var_A4
  loc_ADAC4F: ILdRf var_98
  loc_ADAC52: ConcatStr
  loc_ADAC53: FStStrNoPop var_A8
  loc_ADAC56: LitStr "' AND PeriBole = "
  loc_ADAC59: ConcatStr
  loc_ADAC5A: FStStrNoPop var_AC
  loc_ADAC5D: FLdI2 PeriBole
  loc_ADAC60: CStrUI1
  loc_ADAC62: FStStrNoPop var_B0
  loc_ADAC65: ConcatStr
  loc_ADAC66: FStStrNoPop var_B4
  loc_ADAC69: LitStr " AND NumeBole = "
  loc_ADAC6C: ConcatStr
  loc_ADAC6D: FStStrNoPop var_B8
  loc_ADAC70: ILdRf NumeBole
  loc_ADAC73: CStrI4
  loc_ADAC75: FStStrNoPop var_BC
  loc_ADAC78: ConcatStr
  loc_ADAC79: FStStrNoPop var_C0
  loc_ADAC7C: LitStr " AND PeriLiqu = "
  loc_ADAC7F: ConcatStr
  loc_ADAC80: FStStrNoPop var_C4
  loc_ADAC83: FLdI2 PeriLiqu
  loc_ADAC86: CStrUI1
  loc_ADAC88: FStStrNoPop var_C8
  loc_ADAC8B: ConcatStr
  loc_ADAC8C: FStStrNoPop var_CC
  loc_ADAC8F: LitStr " AND BimeLiqu = "
  loc_ADAC92: ConcatStr
  loc_ADAC93: FStStrNoPop var_D0
  loc_ADAC96: FLdUI1
  loc_ADAC9A: CStrI2
  loc_ADAC9C: FStStrNoPop var_D4
  loc_ADAC9F: ConcatStr
  loc_ADACA0: FStStrNoPop var_D8
  loc_ADACA3: Call EjecutarRsCls(from_stack_1v)
  loc_ADACA8: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_ADACCB: FLdRfVar var_E0
  loc_ADACCE: FLdRfVar var_DC
  loc_ADACD1: FLdPr Me
  loc_ADACD4: from_stack_1v = clspagoanti.global_4510804Get()
  loc_ADACD9: FLdPr var_DC
  loc_ADACDC:  = Me.RecordCount
  loc_ADACE1: ILdRf var_E0
  loc_ADACE4: LitI4 0
  loc_ADACE9: GtI4
  loc_ADACEA: FFree1Ad var_DC
  loc_ADACED: BranchF loc_ADAD29
  loc_ADACF0: FLdRfVar var_F8
  loc_ADACF3: LitVarStr var_F4, "FevePaan"
  loc_ADACF8: PopAdLdVar
  loc_ADACF9: FLdRfVar var_E4
  loc_ADACFC: FLdRfVar var_DC
  loc_ADACFF: FLdPr Me
  loc_ADAD02: from_stack_1v = clspagoanti.global_4510804Get()
  loc_ADAD07: FLdPr var_DC
  loc_ADAD0A:  = Me.Fields
  loc_ADAD0F: FLdPr var_E4
  loc_ADAD12: from_stack_2 = Me.Item(from_stack_1)
  loc_ADAD17: FLdZeroAd var_F8
  loc_ADAD1A: CVarAd
  loc_ADAD1E: FStVar BuscaVencimiento
  loc_ADAD22: FFreeAd var_DC = ""
  loc_ADAD29: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E76B4
  'Data Table: 44D4CC
  loc_9E7698: ILdRf pError
  loc_9E769B: FStAd var_88 
  loc_9E769F: ILdRf pRecordset
  loc_9E76A2: FStAd var_8C 
  loc_9E76A6: FLdPr Me
  loc_9E76A9: RaiseEvent
  loc_9E76B1: ExitProcHresult
  loc_9E76B2: Erase
  loc_9E76B3: ModI4
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9BB60
  'Data Table: 44D4CC
  loc_A9BAA0: ILdRf pRecordset
  loc_A9BAA3: FStAd var_88 
  loc_A9BAA7: ILdRf adReason
  loc_A9BAAA: FStR4 var_90
  loc_A9BAAD: ILdRf var_90
  loc_A9BAB0: LitI4 1
  loc_A9BAB5: EqI4
  loc_A9BAB6: BranchF loc_A9BABC
  loc_A9BAB9: Branch loc_A9BB4F
  loc_A9BABC: ILdRf var_90
  loc_A9BABF: LitI4 9
  loc_A9BAC4: EqI4
  loc_A9BAC5: BranchF loc_A9BACB
  loc_A9BAC8: Branch loc_A9BB4F
  loc_A9BACB: ILdRf var_90
  loc_A9BACE: LitI4 2
  loc_A9BAD3: EqI4
  loc_A9BAD4: BranchF loc_A9BADA
  loc_A9BAD7: Branch loc_A9BB4F
  loc_A9BADA: ILdRf var_90
  loc_A9BADD: LitI4 &HB
  loc_A9BAE2: EqI4
  loc_A9BAE3: BranchF loc_A9BAE9
  loc_A9BAE6: Branch loc_A9BB4F
  loc_A9BAE9: ILdRf var_90
  loc_A9BAEC: LitI4 &HA
  loc_A9BAF1: EqI4
  loc_A9BAF2: BranchF loc_A9BAF8
  loc_A9BAF5: Branch loc_A9BB4F
  loc_A9BAF8: ILdRf var_90
  loc_A9BAFB: LitI4 7
  loc_A9BB00: EqI4
  loc_A9BB01: BranchF loc_A9BB07
  loc_A9BB04: Branch loc_A9BB4F
  loc_A9BB07: ILdRf var_90
  loc_A9BB0A: LitI4 8
  loc_A9BB0F: EqI4
  loc_A9BB10: BranchF loc_A9BB16
  loc_A9BB13: Branch loc_A9BB4F
  loc_A9BB16: ILdRf var_90
  loc_A9BB19: LitI4 5
  loc_A9BB1E: EqI4
  loc_A9BB1F: BranchF loc_A9BB25
  loc_A9BB22: Branch loc_A9BB4F
  loc_A9BB25: ILdRf var_90
  loc_A9BB28: LitI4 6
  loc_A9BB2D: EqI4
  loc_A9BB2E: BranchF loc_A9BB34
  loc_A9BB31: Branch loc_A9BB4F
  loc_A9BB34: ILdRf var_90
  loc_A9BB37: LitI4 4
  loc_A9BB3C: EqI4
  loc_A9BB3D: BranchF loc_A9BB43
  loc_A9BB40: Branch loc_A9BB4F
  loc_A9BB43: ILdRf var_90
  loc_A9BB46: LitI4 3
  loc_A9BB4B: EqI4
  loc_A9BB4C: BranchF loc_A9BB4F
  loc_A9BB4F: FLdI2 var_8A
  loc_A9BB52: BranchF loc_A9BB5D
  loc_A9BB55: LitI4 4
  loc_A9BB5A: IStI4 adStatus
  loc_A9BB5D: ExitProcHresult
  loc_A9BB5E: UMiR8
End Sub

Private Function Proc_70_61_9F28D8() '9F28D8
  'Data Table: 44D4CC
  loc_9F28B4: LitStr "Primary"
  loc_9F28B7: FLdPr Me
  loc_9F28BA: LateIdLdVar var_94 DispID_4 0
  loc_9F28C1: CastAdVar Me
  loc_9F28C5: FStAdFunc var_98
  loc_9F28C8: FLdPr var_98
  loc_9F28D0: FFree1Ad var_98
  loc_9F28D3: FFree1Var var_94 = ""
  loc_9F28D6: ExitProcHresult
End Function

Private Function Proc_70_62_9F2768(arg_C) '9F2768
  'Data Table: 44D4CC
  loc_9F2744: ILdI4 arg_C
  loc_9F2747: FStStrCopy var_88
  loc_9F274A: ILdRf var_88
  loc_9F274D: LitStr "Primary"
  loc_9F2750: EqStr
  loc_9F2752: BranchF loc_9F2767
  loc_9F2755: FLdRfVar var_8C
  loc_9F2758: FLdPr Me
  loc_9F275B: from_stack_1v = clspagoanti.global_4510804Get()
  loc_9F2760: FLdZeroAd var_8C
  loc_9F2763: IStAdFunc
  loc_9F2767: ExitProcHresult
End Function

Public Function global_4510804Get() '44D97C
  global_4510804Get = global_4510804
End Function

Public Sub global_4510804Put(Value) '44D996
  global_4510804 = Value
End Sub

Public Sub global_4510804Set(Value) '44D9B0
  global_4510804 = Value
End Sub

Public Function global_4510804Get() '44D9CA
  global_4510804Get = global_4510804
End Function

Public Sub global_4510804Put(Value) '44D9E4
  global_4510804 = Value
End Sub

Public Sub global_4510804Set(Value) '44D9FE
  global_4510804 = Value
End Sub

Public Function global_4510804Get() '44DA18
  global_4510804Get = global_4510804
End Function

Public Sub global_4510804Put(Value) '44DA32
  global_4510804 = Value
End Sub

Public Sub global_4510804Set(Value) '44DA4C
  global_4510804 = Value
End Sub
