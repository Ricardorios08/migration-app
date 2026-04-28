VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsrecuespe"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '4089D0
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4089DF
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4089EE
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96DE6C
  'Data Table: 40883C
  loc_96DE44: FLdRfVar var_88
  loc_96DE47: FLdPr Me
  loc_96DE4A: MemLdPr RsFrm
  loc_96DE4D:  = Me.RecordCount
  loc_96DE52: ILdRf var_88
  loc_96DE55: LitI4 0
  loc_96DE5A: GtI4
  loc_96DE5B: BranchF loc_96DE69
  loc_96DE5E: FLdPr Me
  loc_96DE61: MemLdPr RsFrm
  loc_96DE64: Me.MoveFirst
  loc_96DE69: ExitProcHresult
  loc_96DE6A: UMiR8
End Sub

Public Sub MoveLast() '96DE14
  'Data Table: 40883C
  loc_96DDEC: FLdRfVar var_88
  loc_96DDEF: FLdPr Me
  loc_96DDF2: MemLdPr RsFrm
  loc_96DDF5:  = Me.RecordCount
  loc_96DDFA: ILdRf var_88
  loc_96DDFD: LitI4 0
  loc_96DE02: GtI4
  loc_96DE03: BranchF loc_96DE11
  loc_96DE06: FLdPr Me
  loc_96DE09: MemLdPr RsFrm
  loc_96DE0C: Me.MoveLast
  loc_96DE11: ExitProcHresult
  loc_96DE12: UMiI4
End Sub

Public Sub MoveNext() '99DE80
  'Data Table: 40883C
  loc_99DE08: FLdRfVar var_86
  loc_99DE0B: FLdPr Me
  loc_99DE0E: MemLdPr RsFrm
  loc_99DE11:  = Me.EOF
  loc_99DE16: FLdI2 var_86
  loc_99DE19: NotI4
  loc_99DE1A: FLdRfVar var_8C
  loc_99DE1D: FLdPr Me
  loc_99DE20: MemLdPr RsFrm
  loc_99DE23:  = Me.RecordCount
  loc_99DE28: ILdRf var_8C
  loc_99DE2B: LitI4 0
  loc_99DE30: GtI4
  loc_99DE31: AndI4
  loc_99DE32: BranchF loc_99DE40
  loc_99DE35: FLdPr Me
  loc_99DE38: MemLdPr RsFrm
  loc_99DE3B: Me.MoveNext
  loc_99DE40: FLdRfVar var_86
  loc_99DE43: FLdPr Me
  loc_99DE46: MemLdPr RsFrm
  loc_99DE49:  = Me.EOF
  loc_99DE4E: FLdI2 var_86
  loc_99DE51: FLdRfVar var_8C
  loc_99DE54: FLdPr Me
  loc_99DE57: MemLdPr RsFrm
  loc_99DE5A:  = Me.RecordCount
  loc_99DE5F: ILdRf var_8C
  loc_99DE62: LitI4 0
  loc_99DE67: GtI4
  loc_99DE68: AndI4
  loc_99DE69: BranchF loc_99DE7C
  loc_99DE6C: ImpAdCallFPR4 Beep()
  loc_99DE71: FLdPr Me
  loc_99DE74: MemLdPr RsFrm
  loc_99DE77: Me.MoveLast
  loc_99DE7C: ExitProcHresult
  loc_99DE7D: FLdPr arg_600
End Sub

Public Sub MoveSiguiente() '941C9C
  'Data Table: 40883C
  loc_941C90: FLdPr Me
  loc_941C93: MemLdPr RsFrm
  loc_941C96: Me.MoveNext
  loc_941C9B: ExitProcHresult
End Sub

Public Sub MovePrevious() '99E120
  'Data Table: 40883C
  loc_99E0A8: FLdRfVar var_86
  loc_99E0AB: FLdPr Me
  loc_99E0AE: MemLdPr RsFrm
  loc_99E0B1:  = Me.BOF
  loc_99E0B6: FLdI2 var_86
  loc_99E0B9: NotI4
  loc_99E0BA: FLdRfVar var_8C
  loc_99E0BD: FLdPr Me
  loc_99E0C0: MemLdPr RsFrm
  loc_99E0C3:  = Me.RecordCount
  loc_99E0C8: ILdRf var_8C
  loc_99E0CB: LitI4 0
  loc_99E0D0: GtI4
  loc_99E0D1: AndI4
  loc_99E0D2: BranchF loc_99E0E0
  loc_99E0D5: FLdPr Me
  loc_99E0D8: MemLdPr RsFrm
  loc_99E0DB: Me.MovePrevious
  loc_99E0E0: FLdRfVar var_86
  loc_99E0E3: FLdPr Me
  loc_99E0E6: MemLdPr RsFrm
  loc_99E0E9:  = Me.BOF
  loc_99E0EE: FLdI2 var_86
  loc_99E0F1: FLdRfVar var_8C
  loc_99E0F4: FLdPr Me
  loc_99E0F7: MemLdPr RsFrm
  loc_99E0FA:  = Me.RecordCount
  loc_99E0FF: ILdRf var_8C
  loc_99E102: LitI4 0
  loc_99E107: GtI4
  loc_99E108: AndI4
  loc_99E109: BranchF loc_99E11C
  loc_99E10C: ImpAdCallFPR4 Beep()
  loc_99E111: FLdPr Me
  loc_99E114: MemLdPr RsFrm
  loc_99E117: Me.MoveFirst
  loc_99E11C: ExitProcHresult
End Sub

Public Property Get EOF() '958A54
  'Data Table: 40883C
  loc_958A38: FLdRfVar var_88
  loc_958A3B: FLdPr Me
  loc_958A3E: MemLdPr RsFrm
  loc_958A41:  = Me.EOF
  loc_958A46: FLdI2 var_88
  loc_958A49: FStI2 var_86
  loc_958A4C: ExitProcCbHresult
  loc_958A52: ILdR8 var_3C00
End Sub

Public Property Get BOF() '958A08
  'Data Table: 40883C
  loc_9589EC: FLdRfVar var_88
  loc_9589EF: FLdPr Me
  loc_9589F2: MemLdPr RsFrm
  loc_9589F5:  = Me.BOF
  loc_9589FA: FLdI2 var_88
  loc_9589FD: FStI2 var_86
  loc_958A00: ExitProcCbHresult
  loc_958A06: CStr2Ansi
End Sub

Public Sub Sort(sOrden) '947E44
  'Data Table: 40883C
  loc_947E34: ILdI4 sOrden
  loc_947E37: FLdPr Me
  loc_947E3A: MemLdPr RsFrm
  loc_947E3D: Me.Sort = from_stack_1
  loc_947E42: ExitProcHresult
End Sub

Public Sub Find(sFind) '969970
  'Data Table: 40883C
  loc_969950: LitVar_Missing var_94
  loc_969953: PopAdLdVar
  loc_969954: LitI4 1
  loc_969959: LitI4 0
  loc_96995E: ILdI4 sFind
  loc_969961: FLdPr Me
  loc_969964: MemLdPr RsFrm
  loc_969967: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96996C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9481F8
  'Data Table: 40883C
  loc_9481E4: ILdI4 sCriterio
  loc_9481E7: CVarStr var_94
  loc_9481EA: PopAdLdVar
  loc_9481EB: FLdPr Me
  loc_9481EE: MemLdPr RsFrm
  loc_9481F1: Me.Filter = from_stack_1
  loc_9481F6: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '958924
  'Data Table: 40883C
  loc_958908: FLdRfVar var_8C
  loc_95890B: FLdPr Me
  loc_95890E: MemLdPr RsFrm
  loc_958911:  = Me.AbsolutePosition
  loc_958916: ILdRf var_8C
  loc_958919: FStR4 var_88
  loc_95891C: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9588D8
  'Data Table: 40883C
  loc_9588BC: FLdRfVar var_8C
  loc_9588BF: FLdPr Me
  loc_9588C2: MemLdPr RsFrm
  loc_9588C5:  = Me.RecordCount
  loc_9588CA: ILdRf var_8C
  loc_9588CD: FStR4 var_88
  loc_9588D0: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriInfo, CodiCuco, CodiPart) '9B7974
  'Data Table: 40883C
  loc_9B78DC: ILdRf CodiCuco
  loc_9B78DF: FStStrCopy var_88
  loc_9B78E2: ILdRf CodiPart
  loc_9B78E5: FStStrCopy var_8C
  loc_9B78E8: FLdRfVar var_94
  loc_9B78EB: ILdRf var_8C
  loc_9B78EE: ILdRf var_88
  loc_9B78F1: FLdI2 PeriInfo
  loc_9B78F4: from_stack_4v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_9B78F9: FLdZeroAd var_94
  loc_9B78FC: FStStr var_90
  loc_9B78FF: ILdRf var_90
  loc_9B7902: LitStr vbNullString
  loc_9B7905: NeStr
  loc_9B7907: BranchF loc_9B791A
  loc_9B790A: LitI4 0
  loc_9B790F: ILdRf var_90
  loc_9B7912: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9B7917: Branch loc_9B7970
  loc_9B791A: LitStr "INSERT INTO recuespe (PeriInfo,CodiCuco,CodiPart) VALUES ("
  loc_9B791D: FLdI2 PeriInfo
  loc_9B7920: CStrUI1
  loc_9B7922: FStStrNoPop var_94
  loc_9B7925: ConcatStr
  loc_9B7926: FStStrNoPop var_98
  loc_9B7929: LitStr ",'"
  loc_9B792C: ConcatStr
  loc_9B792D: FStStrNoPop var_9C
  loc_9B7930: ILdRf var_88
  loc_9B7933: ConcatStr
  loc_9B7934: FStStrNoPop var_A0
  loc_9B7937: LitStr "','"
  loc_9B793A: ConcatStr
  loc_9B793B: FStStrNoPop var_A4
  loc_9B793E: ILdRf var_8C
  loc_9B7941: ConcatStr
  loc_9B7942: FStStrNoPop var_A8
  loc_9B7945: LitStr "')"
  loc_9B7948: ConcatStr
  loc_9B7949: FStStrNoPop var_AC
  loc_9B794C: Call EjecutarRsCls(from_stack_1v)
  loc_9B7951: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9B7962: ILdRf var_8C
  loc_9B7965: ILdRf var_88
  loc_9B7968: ImpAdLdI2 MemVar_C3D064
  loc_9B796B: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_9B7970: ExitProcHresult
End Sub

Public Sub Eliminar() 'A0C11C
  'Data Table: 40883C
  loc_A0BFDC: LitVarStr var_BC, "DELETE FROM recuespe WHERE PeriInfo = '"
  loc_A0BFE1: FLdRfVar var_AC
  loc_A0BFE4: FLdRfVar var_9C
  loc_A0BFE7: LitVarStr var_98, "PeriInfo"
  loc_A0BFEC: PopAdLdVar
  loc_A0BFED: FLdRfVar var_88
  loc_A0BFF0: FLdPr Me
  loc_A0BFF3: MemLdPr RsFrm
  loc_A0BFF6:  = Me.Fields
  loc_A0BFFB: FLdPr var_88
  loc_A0BFFE: from_stack_2 = Me.Item(from_stack_1)
  loc_A0C003: FLdPr var_9C
  loc_A0C006:  = Me.Value
  loc_A0C00B: FLdRfVar var_AC
  loc_A0C00E: ConcatVar var_CC
  loc_A0C012: LitVarStr var_DC, "' AND CodiCuco = '"
  loc_A0C017: ConcatVar var_EC
  loc_A0C01B: FLdRfVar var_114
  loc_A0C01E: FLdRfVar var_104
  loc_A0C021: LitVarStr var_100, "CodiCuco"
  loc_A0C026: PopAdLdVar
  loc_A0C027: FLdRfVar var_F0
  loc_A0C02A: FLdPr Me
  loc_A0C02D: MemLdPr RsFrm
  loc_A0C030:  = Me.Fields
  loc_A0C035: FLdPr var_F0
  loc_A0C038: from_stack_2 = Me.Item(from_stack_1)
  loc_A0C03D: FLdPr var_104
  loc_A0C040:  = Me.Value
  loc_A0C045: FLdRfVar var_114
  loc_A0C048: ConcatVar var_124
  loc_A0C04C: LitVarStr var_134, "' AND CodiPart = '"
  loc_A0C051: ConcatVar var_144
  loc_A0C055: FLdRfVar var_16C
  loc_A0C058: FLdRfVar var_15C
  loc_A0C05B: LitVarStr var_158, "CodiPart"
  loc_A0C060: PopAdLdVar
  loc_A0C061: FLdRfVar var_148
  loc_A0C064: FLdPr Me
  loc_A0C067: MemLdPr RsFrm
  loc_A0C06A:  = Me.Fields
  loc_A0C06F: FLdPr var_148
  loc_A0C072: from_stack_2 = Me.Item(from_stack_1)
  loc_A0C077: FLdPr var_15C
  loc_A0C07A:  = Me.Value
  loc_A0C07F: FLdRfVar var_16C
  loc_A0C082: ConcatVar var_17C
  loc_A0C086: LitVarStr var_18C, "'"
  loc_A0C08B: ConcatVar var_19C
  loc_A0C08F: CStrVarVal var_1A0
  loc_A0C093: Call EjecutarRsCls(from_stack_1v)
  loc_A0C098: FFree1Str var_1A0
  loc_A0C09B: FFreeAd var_88 = "": var_9C = "": var_F0 = "": var_104 = "": var_148 = ""
  loc_A0C0AA: FFreeVar var_AC = "": var_CC = "": var_EC = "": var_114 = "": var_124 = "": var_144 = "": var_16C = "": var_17C = ""
  loc_A0C0BF: FLdRfVar var_1A8
  loc_A0C0C2: FLdPr Me
  loc_A0C0C5: MemLdPr RsFrm
  loc_A0C0C8:  = Me.AbsolutePosition
  loc_A0C0CD: ILdRf var_1A8
  loc_A0C0D0: FStR4 var_1A4
  loc_A0C0D3: Call Requery()
  loc_A0C0D8: FLdRfVar var_1A8
  loc_A0C0DB: FLdPr Me
  loc_A0C0DE: MemLdPr RsFrm
  loc_A0C0E1:  = Me.RecordCount
  loc_A0C0E6: ILdRf var_1A8
  loc_A0C0E9: LitI4 0
  loc_A0C0EE: GtI4
  loc_A0C0EF: BranchF loc_A0C11B
  loc_A0C0F2: Call MoveFirst()
  loc_A0C0F7: ILdRf var_1A4
  loc_A0C0FA: LitI4 1
  loc_A0C0FF: GtI4
  loc_A0C100: BranchF loc_A0C11B
  loc_A0C103: LitVar_Missing var_98
  loc_A0C106: PopAdLdVar
  loc_A0C107: ILdRf var_1A4
  loc_A0C10A: LitI4 2
  loc_A0C10F: SubI4
  loc_A0C110: FLdPr Me
  loc_A0C113: MemLdPr RsFrm
  loc_A0C116: Me.Move from_stack_1, from_stack_2
  loc_A0C11B: ExitProcHresult
End Sub

Public Function ValidaClave(PeriInfo, CodiCuco, CodiPart) '9AF4CC
  'Data Table: 40883C
  loc_9AF444: ILdRf CodiCuco
  loc_9AF447: FStStrCopy var_8C
  loc_9AF44A: ILdRf CodiPart
  loc_9AF44D: FStStrCopy var_90
  loc_9AF450: ZeroRetVal
  loc_9AF452: LitStr "SELECT PeriInfo, CodiCuco, CodiPart FROM recuespe WHERE PeriInfo = "
  loc_9AF455: FLdI2 PeriInfo
  loc_9AF458: CStrUI1
  loc_9AF45A: FStStrNoPop ValidaClave
  loc_9AF45D: ConcatStr
  loc_9AF45E: FStStrNoPop var_98
  loc_9AF461: LitStr " AND CodiCuco = '"
  loc_9AF464: ConcatStr
  loc_9AF465: FStStrNoPop var_9C
  loc_9AF468: ILdRf var_8C
  loc_9AF46B: ConcatStr
  loc_9AF46C: FStStrNoPop var_A0
  loc_9AF46F: LitStr "'"
  loc_9AF472: ConcatStr
  loc_9AF473: FStStrNoPop var_A4
  loc_9AF476: LitStr " AND CodiPart = '"
  loc_9AF479: ConcatStr
  loc_9AF47A: FStStrNoPop var_A8
  loc_9AF47D: ILdRf var_90
  loc_9AF480: ConcatStr
  loc_9AF481: FStStrNoPop var_AC
  loc_9AF484: LitStr "'"
  loc_9AF487: ConcatStr
  loc_9AF488: FStStrNoPop var_B0
  loc_9AF48B: Call EjecutarRsCls(from_stack_1v)
  loc_9AF490: FFreeStr ValidaClave = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_9AF4A3: FLdRfVar var_B4
  loc_9AF4A6: FLdPr Me
  loc_9AF4A9: MemLdPr global_56
  loc_9AF4AC:  = Me.RecordCount
  loc_9AF4B1: ILdRf var_B4
  loc_9AF4B4: LitI4 0
  loc_9AF4B9: GtI4
  loc_9AF4BA: BranchF loc_9AF4C3
  loc_9AF4BD: LitStr "El RECURSO ESPECIAL YA EXISTE. Reintente..."
  loc_9AF4C0: FStStrCopy var_88
  loc_9AF4C3: ExitProcCbHresult
End Function

Public Sub Encontrar(PeriInfo, CodiCuco, CodiPart) 'A14C7C
  'Data Table: 40883C
  loc_A14B0A: ILdRf CodiCuco
  loc_A14B0D: FStStrCopy var_88
  loc_A14B10: ILdRf CodiPart
  loc_A14B13: FStStrCopy var_8C
  loc_A14B18: On Error Resume Next
  loc_A14B1D: FLdI2 PeriInfo
  loc_A14B20: LitI2_Byte 0
  loc_A14B22: EqI2
  loc_A14B23: ILdRf var_88
  loc_A14B26: LitStr vbNullString
  loc_A14B29: EqStr
  loc_A14B2B: AndI4
  loc_A14B2C: ILdRf var_8C
  loc_A14B2F: LitStr vbNullString
  loc_A14B32: EqStr
  loc_A14B34: AndI4
  loc_A14B35: FLdRfVar var_90
  loc_A14B38: FLdPr Me
  loc_A14B3B: MemLdPr RsFrm
  loc_A14B3E:  = Me.RecordCount
  loc_A14B43: ILdRf var_90
  loc_A14B46: LitI4 0
  loc_A14B4B: GtI4
  loc_A14B4C: AndI4
  loc_A14B4D: BranchF loc_A14C07
  loc_A14B52: FLdRfVar var_B8
  loc_A14B55: FLdRfVar var_A8
  loc_A14B58: LitVarStr var_A4, "PeriInfo"
  loc_A14B5D: PopAdLdVar
  loc_A14B5E: FLdRfVar var_94
  loc_A14B61: FLdPr Me
  loc_A14B64: MemLdPr RsFrm
  loc_A14B67:  = Me.Fields
  loc_A14B6C: FLdPr var_94
  loc_A14B6F: from_stack_2 = Me.Item(from_stack_1)
  loc_A14B74: FLdPr var_A8
  loc_A14B77:  = Me.Value
  loc_A14B7C: FLdRfVar var_B8
  loc_A14B7F: CI2Var
  loc_A14B80: FStI2 PeriInfo
  loc_A14B83: FFreeAd var_94 = ""
  loc_A14B8A: FFree1Var var_B8 = ""
  loc_A14B8F: FLdRfVar var_B8
  loc_A14B92: FLdRfVar var_A8
  loc_A14B95: LitVarStr var_A4, "CodiCuco"
  loc_A14B9A: PopAdLdVar
  loc_A14B9B: FLdRfVar var_94
  loc_A14B9E: FLdPr Me
  loc_A14BA1: MemLdPr RsFrm
  loc_A14BA4:  = Me.Fields
  loc_A14BA9: FLdPr var_94
  loc_A14BAC: from_stack_2 = Me.Item(from_stack_1)
  loc_A14BB1: FLdPr var_A8
  loc_A14BB4:  = Me.Value
  loc_A14BB9: FLdRfVar var_B8
  loc_A14BBC: CStrVarTmp
  loc_A14BBD: FStStr var_88
  loc_A14BC0: FFreeAd var_94 = ""
  loc_A14BC7: FFree1Var var_B8 = ""
  loc_A14BCC: FLdRfVar var_B8
  loc_A14BCF: FLdRfVar var_A8
  loc_A14BD2: LitVarStr var_A4, "CodiPart"
  loc_A14BD7: PopAdLdVar
  loc_A14BD8: FLdRfVar var_94
  loc_A14BDB: FLdPr Me
  loc_A14BDE: MemLdPr RsFrm
  loc_A14BE1:  = Me.Fields
  loc_A14BE6: FLdPr var_94
  loc_A14BE9: from_stack_2 = Me.Item(from_stack_1)
  loc_A14BEE: FLdPr var_A8
  loc_A14BF1:  = Me.Value
  loc_A14BF6: FLdRfVar var_B8
  loc_A14BF9: CStrVarTmp
  loc_A14BFA: FStStr var_8C
  loc_A14BFD: FFreeAd var_94 = ""
  loc_A14C04: FFree1Var var_B8 = ""
  loc_A14C0B: Call Requery()
  loc_A14C12: LitStr "PeriInfo = '"
  loc_A14C15: FLdI2 PeriInfo
  loc_A14C18: CStrUI1
  loc_A14C1A: FStStrNoPop var_BC
  loc_A14C1D: ConcatStr
  loc_A14C1E: FStStrNoPop var_C0
  loc_A14C21: LitStr "'"
  loc_A14C24: ConcatStr
  loc_A14C25: PopTmpLdAdStr
  loc_A14C29: Call Find(from_stack_1v)
  loc_A14C2E: FFreeStr var_BC = "": var_C0 = ""
  loc_A14C39: LitStr "CodiCuco = '"
  loc_A14C3C: ILdRf var_88
  loc_A14C3F: ConcatStr
  loc_A14C40: FStStrNoPop var_BC
  loc_A14C43: LitStr "'"
  loc_A14C46: ConcatStr
  loc_A14C47: PopTmpLdAdStr
  loc_A14C4B: Call Find(from_stack_1v)
  loc_A14C50: FFreeStr var_BC = ""
  loc_A14C59: LitStr "CodiPart = '"
  loc_A14C5C: ILdRf var_8C
  loc_A14C5F: ConcatStr
  loc_A14C60: FStStrNoPop var_BC
  loc_A14C63: LitStr "'"
  loc_A14C66: ConcatStr
  loc_A14C67: PopTmpLdAdStr
  loc_A14C6B: Call Find(from_stack_1v)
  loc_A14C70: FFreeStr var_BC = ""
  loc_A14C79: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '974914
  'Data Table: 40883C
  loc_9748EC: ILdRf sSelect
  loc_9748EF: FStStrCopy var_88
  loc_9748F2: FLdPr Me
  loc_9748F5: MemLdRfVar from_stack_1.RsFrm
  loc_9748F8: ILdRf var_88
  loc_9748FB: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_974900: LitVarStr var_98, "Primary"
  loc_974905: PopAdLdVar
  loc_974906: FLdPr Me
  loc_974909: LateIdCall
  loc_974911: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '958888
  'Data Table: 40883C
  loc_958870: ILdRf sSelect
  loc_958873: FStStrCopy var_88
  loc_958876: FLdPr Me
  loc_958879: MemLdRfVar from_stack_1.global_56
  loc_95887C: ILdRf var_88
  loc_95887F: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_958884: ExitProcHresult
End Sub

Public Sub Requery() '9699C0
  'Data Table: 40883C
  loc_9699A0: FLdPr Me
  loc_9699A3: MemLdRfVar from_stack_1.RsFrm
  loc_9699A6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_9699AB: LitVarStr var_94, "Primary"
  loc_9699B0: PopAdLdVar
  loc_9699B1: FLdPr Me
  loc_9699B4: LateIdCall
  loc_9699BC: ExitProcHresult
End Sub

Public Property Get DataSource() '9738E4
  'Data Table: 40883C
  loc_9738C0: ZeroRetVal
  loc_9738C2: FLdRfVar var_8C
  loc_9738C5: FLdPr Me
  loc_9738C8: MemLdPr RsFrm
  loc_9738CB:  = Me.DataSource
  loc_9738D0: ILdRf var_8C
  loc_9738D3: CastAd
  loc_9738D6: FStAdFunc var_88
  loc_9738D9: FFree1Ad var_8C
  loc_9738DC: ExitProcCbHresult
End Sub

Private Function Proc_30_23_97496C() '97496C
  'Data Table: 40883C
  loc_974948: LitStr "Primary"
  loc_97494B: FLdPr Me
  loc_97494E: LateIdLdVar var_94 DispID_4 0
  loc_974955: CastAdVar Me
  loc_974959: FStAdFunc var_98
  loc_97495C: FLdPr var_98
  loc_974964: FFree1Ad var_98
  loc_974967: FFree1Var var_94 = ""
  loc_97496A: ExitProcHresult
End Function

Private Function Proc_30_24_969A0C(arg_C) '969A0C
  'Data Table: 40883C
  loc_9699F0: ILdI4 arg_C
  loc_9699F3: FStStrCopy var_88
  loc_9699F6: ILdRf var_88
  loc_9699F9: LitStr "Primary"
  loc_9699FC: EqStr
  loc_9699FE: BranchF loc_969A0B
  loc_969A01: FLdPr Me
  loc_969A04: MemLdStr RsFrm
  loc_969A07: IStAd
  loc_969A0B: ExitProcHresult
End Function
