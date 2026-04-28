VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsdevadeta"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Mover(iCantidad) '9FDCB8
  'Data Table: 40E018
  loc_9FDC88: FLdRfVar var_88
  loc_9FDC8B: FLdPr Me
  loc_9FDC8E: MemLdPr global_60
  loc_9FDC91:  = Me.RecordCount
  loc_9FDC96: ILdRf var_88
  loc_9FDC99: LitI4 0
  loc_9FDC9E: GtI4
  loc_9FDC9F: BranchF loc_9FDCB4
  loc_9FDCA2: LitVar_Missing var_98
  loc_9FDCA5: PopAdLdVar
  loc_9FDCA6: ILdI4 iCantidad
  loc_9FDCA9: FLdPr Me
  loc_9FDCAC: MemLdPr global_60
  loc_9FDCAF: Me.Move from_stack_1, from_stack_2
  loc_9FDCB4: ExitProcHresult
End Sub

Public Sub MoveFirst() '9EEA0C
  'Data Table: 40E018
  loc_9EE9E4: FLdRfVar var_88
  loc_9EE9E7: FLdPr Me
  loc_9EE9EA: MemLdPr global_60
  loc_9EE9ED:  = Me.RecordCount
  loc_9EE9F2: ILdRf var_88
  loc_9EE9F5: LitI4 0
  loc_9EE9FA: GtI4
  loc_9EE9FB: BranchF loc_9EEA09
  loc_9EE9FE: FLdPr Me
  loc_9EEA01: MemLdPr global_60
  loc_9EEA04: Me.MoveFirst
  loc_9EEA09: ExitProcHresult
  loc_9EEA0A: FnAbsI2
End Sub

Public Sub MoveLast() '9EE95C
  'Data Table: 40E018
  loc_9EE934: FLdRfVar var_88
  loc_9EE937: FLdPr Me
  loc_9EE93A: MemLdPr global_60
  loc_9EE93D:  = Me.RecordCount
  loc_9EE942: ILdRf var_88
  loc_9EE945: LitI4 0
  loc_9EE94A: GtI4
  loc_9EE94B: BranchF loc_9EE959
  loc_9EE94E: FLdPr Me
  loc_9EE951: MemLdPr global_60
  loc_9EE954: Me.MoveLast
  loc_9EE959: ExitProcHresult
  loc_9EE95A: ConcatStr
End Sub

Public Sub MoveNext() 'A6A4C8
  'Data Table: 40E018
  loc_A6A450: FLdRfVar var_86
  loc_A6A453: FLdPr Me
  loc_A6A456: MemLdPr global_60
  loc_A6A459:  = Me.EOF
  loc_A6A45E: FLdI2 var_86
  loc_A6A461: NotI4
  loc_A6A462: FLdRfVar var_8C
  loc_A6A465: FLdPr Me
  loc_A6A468: MemLdPr global_60
  loc_A6A46B:  = Me.RecordCount
  loc_A6A470: ILdRf var_8C
  loc_A6A473: LitI4 0
  loc_A6A478: GtI4
  loc_A6A479: AndI4
  loc_A6A47A: BranchF loc_A6A488
  loc_A6A47D: FLdPr Me
  loc_A6A480: MemLdPr global_60
  loc_A6A483: Me.MoveNext
  loc_A6A488: FLdRfVar var_86
  loc_A6A48B: FLdPr Me
  loc_A6A48E: MemLdPr global_60
  loc_A6A491:  = Me.EOF
  loc_A6A496: FLdI2 var_86
  loc_A6A499: FLdRfVar var_8C
  loc_A6A49C: FLdPr Me
  loc_A6A49F: MemLdPr global_60
  loc_A6A4A2:  = Me.RecordCount
  loc_A6A4A7: ILdRf var_8C
  loc_A6A4AA: LitI4 0
  loc_A6A4AF: GtI4
  loc_A6A4B0: AndI4
  loc_A6A4B1: BranchF loc_A6A4C4
  loc_A6A4B4: ImpAdCallFPR4 Beep()
  loc_A6A4B9: FLdPr Me
  loc_A6A4BC: MemLdPr global_60
  loc_A6A4BF: Me.MoveLast
  loc_A6A4C4: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B17B8
  'Data Table: 40E018
  loc_9B17AC: FLdPr Me
  loc_9B17AF: MemLdPr global_60
  loc_9B17B2: Me.MoveNext
  loc_9B17B7: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B9DDC
  'Data Table: 40E018
  loc_9B9DC8: LitVar_Missing var_94
  loc_9B9DCB: PopAdLdVar
  loc_9B9DCC: ILdI2 iValor
  loc_9B9DCF: CI4UI1
  loc_9B9DD0: FLdPr Me
  loc_9B9DD3: MemLdPr global_60
  loc_9B9DD6: Me.Move from_stack_1, from_stack_2
  loc_9B9DDB: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6AA08
  'Data Table: 40E018
  loc_A6A990: FLdRfVar var_86
  loc_A6A993: FLdPr Me
  loc_A6A996: MemLdPr global_60
  loc_A6A999:  = Me.BOF
  loc_A6A99E: FLdI2 var_86
  loc_A6A9A1: NotI4
  loc_A6A9A2: FLdRfVar var_8C
  loc_A6A9A5: FLdPr Me
  loc_A6A9A8: MemLdPr global_60
  loc_A6A9AB:  = Me.RecordCount
  loc_A6A9B0: ILdRf var_8C
  loc_A6A9B3: LitI4 0
  loc_A6A9B8: GtI4
  loc_A6A9B9: AndI4
  loc_A6A9BA: BranchF loc_A6A9C8
  loc_A6A9BD: FLdPr Me
  loc_A6A9C0: MemLdPr global_60
  loc_A6A9C3: Me.MovePrevious
  loc_A6A9C8: FLdRfVar var_86
  loc_A6A9CB: FLdPr Me
  loc_A6A9CE: MemLdPr global_60
  loc_A6A9D1:  = Me.BOF
  loc_A6A9D6: FLdI2 var_86
  loc_A6A9D9: FLdRfVar var_8C
  loc_A6A9DC: FLdPr Me
  loc_A6A9DF: MemLdPr global_60
  loc_A6A9E2:  = Me.RecordCount
  loc_A6A9E7: ILdRf var_8C
  loc_A6A9EA: LitI4 0
  loc_A6A9EF: GtI4
  loc_A6A9F0: AndI4
  loc_A6A9F1: BranchF loc_A6AA04
  loc_A6A9F4: ImpAdCallFPR4 Beep()
  loc_A6A9F9: FLdPr Me
  loc_A6A9FC: MemLdPr global_60
  loc_A6A9FF: Me.MoveFirst
  loc_A6AA04: ExitProcHresult
End Sub

Public Property Get EOF() '9CD150
  'Data Table: 40E018
  loc_9CD134: FLdRfVar var_88
  loc_9CD137: FLdPr Me
  loc_9CD13A: MemLdPr global_60
  loc_9CD13D:  = Me.EOF
  loc_9CD142: FLdI2 var_88
  loc_9CD145: FStI2 var_86
  loc_9CD148: ExitProcCbHresult
  loc_9CD14E: ILdRf var_5F01
End Sub

Public Property Get BOF() '9CD104
  'Data Table: 40E018
  loc_9CD0E8: FLdRfVar var_88
  loc_9CD0EB: FLdPr Me
  loc_9CD0EE: MemLdPr global_60
  loc_9CD0F1:  = Me.BOF
  loc_9CD0F6: FLdI2 var_88
  loc_9CD0F9: FStI2 var_86
  loc_9CD0FC: ExitProcCbHresult
  loc_9CD102: CopyBytes
End Sub

Public Sub Sort(sOrden) '9B63F8
  'Data Table: 40E018
  loc_9B63E8: ILdI4 sOrden
  loc_9B63EB: FLdPr Me
  loc_9B63EE: MemLdPr global_60
  loc_9B63F1: Me.Sort = from_stack_1
  loc_9B63F6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E17D0
  'Data Table: 40E018
  loc_9E17B0: LitVar_Missing var_94
  loc_9E17B3: PopAdLdVar
  loc_9E17B4: LitI4 1
  loc_9E17B9: LitI4 0
  loc_9E17BE: ILdI4 sFind
  loc_9E17C1: FLdPr Me
  loc_9E17C4: MemLdPr global_60
  loc_9E17C7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E17CC: ExitProcHresult
  loc_9E17CD: FLdPr var_B0
End Sub

Public Sub Filter(sCriterio) '9B9C88
  'Data Table: 40E018
  loc_9B9C74: ILdI4 sCriterio
  loc_9B9C77: CVarStr var_94
  loc_9B9C7A: PopAdLdVar
  loc_9B9C7B: FLdPr Me
  loc_9B9C7E: MemLdPr global_60
  loc_9B9C81: Me.Filter = from_stack_1
  loc_9B9C86: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9CCFD4
  'Data Table: 40E018
  loc_9CCFB8: FLdRfVar var_8C
  loc_9CCFBB: FLdPr Me
  loc_9CCFBE: MemLdPr global_60
  loc_9CCFC1:  = Me.AbsolutePosition
  loc_9CCFC6: ILdRf var_8C
  loc_9CCFC9: FStR4 var_88
  loc_9CCFCC: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9CCF88
  'Data Table: 40E018
  loc_9CCF6C: FLdRfVar var_8C
  loc_9CCF6F: FLdPr Me
  loc_9CCF72: MemLdPr global_60
  loc_9CCF75:  = Me.RecordCount
  loc_9CCF7A: ILdRf var_8C
  loc_9CCF7D: FStR4 var_88
  loc_9CCF80: ExitProcCbHresult
End Sub

Public Sub Requery() '9E5838
  'Data Table: 40E018
  loc_9E5814: LitI4 -1
  loc_9E5819: FLdPr Me
  loc_9E581C: MemLdPr global_60
  loc_9E581F: Me.Requery from_stack_1
  loc_9E5824: LitVarStr var_94, "Primary"
  loc_9E5829: PopAdLdVar
  loc_9E582A: FLdPr Me
  loc_9E582D: LateIdCall
  loc_9E5835: ExitProcHresult
  loc_9E5836: ILdRf var_5F98
End Sub

Public Sub RedefineRS(sSelect) 'A5EC80
  'Data Table: 40E018
  loc_A5EC1C: ILdRf sSelect
  loc_A5EC1F: FStStrCopy var_88
  loc_A5EC22: LitNothing
  loc_A5EC24: CastAd
  loc_A5EC27: FStAdFuncNoPop
  loc_A5EC2A: FLdPr Me
  loc_A5EC2D: MemStAd
  loc_A5EC31: FFree1Ad var_8C
  loc_A5EC34: New Recordset
  loc_A5EC38: FStAdFuncNoPop
  loc_A5EC3B: FLdPr Me
  loc_A5EC3E: MemStAd
  loc_A5EC42: FFree1Ad var_8C
  loc_A5EC45: LitI4 -1
  loc_A5EC4A: LitI4 3
  loc_A5EC4F: LitI4 3
  loc_A5EC54: ImpAdLdI4 MemVar_D9301C
  loc_A5EC57: CVarAd
  loc_A5EC5B: PopAdLdVar
  loc_A5EC5C: ILdRf var_88
  loc_A5EC5F: CVarStr var_9C
  loc_A5EC62: PopAdLdVar
  loc_A5EC63: FLdPr Me
  loc_A5EC66: MemLdPr global_60
  loc_A5EC69: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5EC6E: LitVarStr var_9C, "Primary"
  loc_A5EC73: PopAdLdVar
  loc_A5EC74: FLdPr Me
  loc_A5EC77: LateIdCall
  loc_A5EC7F: ExitProcHresult
End Sub

Public Property Get DataSource() '9F1850
  'Data Table: 40E018
  loc_9F182C: ZeroRetVal
  loc_9F182E: FLdRfVar var_8C
  loc_9F1831: FLdPr Me
  loc_9F1834: MemLdPr global_60
  loc_9F1837:  = Me.DataSource
  loc_9F183C: ILdRf var_8C
  loc_9F183F: CastAd
  loc_9F1842: FStAdFunc var_88
  loc_9F1845: FFree1Ad var_8C
  loc_9F1848: ExitProcCbHresult
  loc_9F184E: ILdRf var_5F01
End Sub

Public Property Get PeriBole() 'A2E424
  'Data Table: 40E018
  loc_A2E3E0: FLdRfVar var_B0
  loc_A2E3E3: FLdRfVar var_A0
  loc_A2E3E6: LitVarStr var_9C, "PeriBole"
  loc_A2E3EB: PopAdLdVar
  loc_A2E3EC: FLdRfVar var_8C
  loc_A2E3EF: FLdPr Me
  loc_A2E3F2: MemLdPr global_60
  loc_A2E3F5:  = Me.Fields
  loc_A2E3FA: FLdPr var_8C
  loc_A2E3FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E402: FLdPr var_A0
  loc_A2E405:  = Me.Value
  loc_A2E40A: FLdRfVar var_B0
  loc_A2E40D: CI2Var
  loc_A2E40E: FStI2 var_86
  loc_A2E411: FFreeAd var_8C = ""
  loc_A2E418: FFree1Var var_B0 = ""
  loc_A2E41B: ExitProcCbHresult
End Sub

Public Property Get NumeBole() 'A2E2A4
  'Data Table: 40E018
  loc_A2E260: FLdRfVar var_B0
  loc_A2E263: FLdRfVar var_A0
  loc_A2E266: LitVarStr var_9C, "NumeBole"
  loc_A2E26B: PopAdLdVar
  loc_A2E26C: FLdRfVar var_8C
  loc_A2E26F: FLdPr Me
  loc_A2E272: MemLdPr global_60
  loc_A2E275:  = Me.Fields
  loc_A2E27A: FLdPr var_8C
  loc_A2E27D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E282: FLdPr var_A0
  loc_A2E285:  = Me.Value
  loc_A2E28A: FLdRfVar var_B0
  loc_A2E28D: CI4Var
  loc_A2E28F: FStR4 var_88
  loc_A2E292: FFreeAd var_8C = ""
  loc_A2E299: FFree1Var var_B0 = ""
  loc_A2E29C: ExitProcCbHresult
End Sub

Public Property Get PeriCtct() 'A33024
  'Data Table: 40E018
  loc_A32FE0: FLdRfVar var_B0
  loc_A32FE3: FLdRfVar var_A0
  loc_A32FE6: LitVarStr var_9C, "PeriCtct"
  loc_A32FEB: PopAdLdVar
  loc_A32FEC: FLdRfVar var_8C
  loc_A32FEF: FLdPr Me
  loc_A32FF2: MemLdPr global_60
  loc_A32FF5:  = Me.Fields
  loc_A32FFA: FLdPr var_8C
  loc_A32FFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A33002: FLdPr var_A0
  loc_A33005:  = Me.Value
  loc_A3300A: FLdRfVar var_B0
  loc_A3300D: CI2Var
  loc_A3300E: FStI2 var_86
  loc_A33011: FFreeAd var_8C = ""
  loc_A33018: FFree1Var var_B0 = ""
  loc_A3301B: ExitProcCbHresult
End Sub

Public Property Get BimeCtct() 'A2DC24
  'Data Table: 40E018
  loc_A2DBE0: FLdRfVar var_B0
  loc_A2DBE3: FLdRfVar var_A0
  loc_A2DBE6: LitVarStr var_9C, "BimeCtct"
  loc_A2DBEB: PopAdLdVar
  loc_A2DBEC: FLdRfVar var_8C
  loc_A2DBEF: FLdPr Me
  loc_A2DBF2: MemLdPr global_60
  loc_A2DBF5:  = Me.Fields
  loc_A2DBFA: FLdPr var_8C
  loc_A2DBFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2DC02: FLdPr var_A0
  loc_A2DC05:  = Me.Value
  loc_A2DC0A: FLdRfVar var_B0
  loc_A2DC0D: CI2Var
  loc_A2DC0E: FStI2 var_86
  loc_A2DC11: FFreeAd var_8C = ""
  loc_A2DC18: FFree1Var var_B0 = ""
  loc_A2DC1B: ExitProcCbHresult
  loc_A2DC21: AryDescTemp 0
End Sub

Public Property Get NumeCtct() 'A2EDA4
  'Data Table: 40E018
  loc_A2ED60: FLdRfVar var_B0
  loc_A2ED63: FLdRfVar var_A0
  loc_A2ED66: LitVarStr var_9C, "NumeCtct"
  loc_A2ED6B: PopAdLdVar
  loc_A2ED6C: FLdRfVar var_8C
  loc_A2ED6F: FLdPr Me
  loc_A2ED72: MemLdPr global_60
  loc_A2ED75:  = Me.Fields
  loc_A2ED7A: FLdPr var_8C
  loc_A2ED7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2ED82: FLdPr var_A0
  loc_A2ED85:  = Me.Value
  loc_A2ED8A: FLdRfVar var_B0
  loc_A2ED8D: CI4Var
  loc_A2ED8F: FStR4 var_88
  loc_A2ED92: FFreeAd var_8C = ""
  loc_A2ED99: FFree1Var var_B0 = ""
  loc_A2ED9C: ExitProcCbHresult
End Sub

Public Property Get MoviCtct() 'A2D9A4
  'Data Table: 40E018
  loc_A2D960: FLdRfVar var_B0
  loc_A2D963: FLdRfVar var_A0
  loc_A2D966: LitVarStr var_9C, "MoviCtct"
  loc_A2D96B: PopAdLdVar
  loc_A2D96C: FLdRfVar var_8C
  loc_A2D96F: FLdPr Me
  loc_A2D972: MemLdPr global_60
  loc_A2D975:  = Me.Fields
  loc_A2D97A: FLdPr var_8C
  loc_A2D97D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D982: FLdPr var_A0
  loc_A2D985:  = Me.Value
  loc_A2D98A: FLdRfVar var_B0
  loc_A2D98D: CI2Var
  loc_A2D98E: FStI2 var_86
  loc_A2D991: FFreeAd var_8C = ""
  loc_A2D998: FFree1Var var_B0 = ""
  loc_A2D99B: ExitProcCbHresult
  loc_A2D9A1: AryDescTemp 0
End Sub

Public Property Get PeriOrde() 'A2D324
  'Data Table: 40E018
  loc_A2D2E0: FLdRfVar var_B0
  loc_A2D2E3: FLdRfVar var_A0
  loc_A2D2E6: LitVarStr var_9C, "PeriOrde"
  loc_A2D2EB: PopAdLdVar
  loc_A2D2EC: FLdRfVar var_8C
  loc_A2D2EF: FLdPr Me
  loc_A2D2F2: MemLdPr global_60
  loc_A2D2F5:  = Me.Fields
  loc_A2D2FA: FLdPr var_8C
  loc_A2D2FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D302: FLdPr var_A0
  loc_A2D305:  = Me.Value
  loc_A2D30A: FLdRfVar var_B0
  loc_A2D30D: CI2Var
  loc_A2D30E: FStI2 var_86
  loc_A2D311: FFreeAd var_8C = ""
  loc_A2D318: FFree1Var var_B0 = ""
  loc_A2D31B: ExitProcCbHresult
  loc_A2D321: ConcatStr
End Sub

Public Property Get CodiSede() 'A2CEA4
  'Data Table: 40E018
  loc_A2CE60: FLdRfVar var_B0
  loc_A2CE63: FLdRfVar var_A0
  loc_A2CE66: LitVarStr var_9C, "CodiSede"
  loc_A2CE6B: PopAdLdVar
  loc_A2CE6C: FLdRfVar var_8C
  loc_A2CE6F: FLdPr Me
  loc_A2CE72: MemLdPr global_60
  loc_A2CE75:  = Me.Fields
  loc_A2CE7A: FLdPr var_8C
  loc_A2CE7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2CE82: FLdPr var_A0
  loc_A2CE85:  = Me.Value
  loc_A2CE8A: FLdRfVar var_B0
  loc_A2CE8D: CI2Var
  loc_A2CE8E: FStI2 var_86
  loc_A2CE91: FFreeAd var_8C = ""
  loc_A2CE98: FFree1Var var_B0 = ""
  loc_A2CE9B: ExitProcCbHresult
End Sub

Public Property Get CantDede() 'A2CE24
  'Data Table: 40E018
  loc_A2CDE0: FLdRfVar var_B4
  loc_A2CDE3: FLdRfVar var_A4
  loc_A2CDE6: LitVarStr var_A0, "CantDede"
  loc_A2CDEB: PopAdLdVar
  loc_A2CDEC: FLdRfVar var_90
  loc_A2CDEF: FLdPr Me
  loc_A2CDF2: MemLdPr global_60
  loc_A2CDF5:  = Me.Fields
  loc_A2CDFA: FLdPr var_90
  loc_A2CDFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2CE02: FLdPr var_A4
  loc_A2CE05:  = Me.Value
  loc_A2CE0A: FLdRfVar var_B4
  loc_A2CE0D: CR4Var
  loc_A2CE0E: FStFPR8 var_8C
  loc_A2CE11: FFreeAd var_90 = ""
  loc_A2CE18: FFree1Var var_B4 = ""
  loc_A2CE1B: ExitProcCbHresult
End Sub

Public Property Get PrunDede() 'A2C724
  'Data Table: 40E018
  loc_A2C6E0: FLdRfVar var_B4
  loc_A2C6E3: FLdRfVar var_A4
  loc_A2C6E6: LitVarStr var_A0, "PrunDede"
  loc_A2C6EB: PopAdLdVar
  loc_A2C6EC: FLdRfVar var_90
  loc_A2C6EF: FLdPr Me
  loc_A2C6F2: MemLdPr global_60
  loc_A2C6F5:  = Me.Fields
  loc_A2C6FA: FLdPr var_90
  loc_A2C6FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C702: FLdPr var_A4
  loc_A2C705:  = Me.Value
  loc_A2C70A: FLdRfVar var_B4
  loc_A2C70D: CR4Var
  loc_A2C70E: FStFPR8 var_8C
  loc_A2C711: FFreeAd var_90 = ""
  loc_A2C718: FFree1Var var_B4 = ""
  loc_A2C71B: ExitProcCbHresult
End Sub

Public Property Get SubtDede() 'A2C524
  'Data Table: 40E018
  loc_A2C4E0: FLdRfVar var_B4
  loc_A2C4E3: FLdRfVar var_A4
  loc_A2C4E6: LitVarStr var_A0, "SubtDede"
  loc_A2C4EB: PopAdLdVar
  loc_A2C4EC: FLdRfVar var_90
  loc_A2C4EF: FLdPr Me
  loc_A2C4F2: MemLdPr global_60
  loc_A2C4F5:  = Me.Fields
  loc_A2C4FA: FLdPr var_90
  loc_A2C4FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C502: FLdPr var_A4
  loc_A2C505:  = Me.Value
  loc_A2C50A: FLdRfVar var_B4
  loc_A2C50D: CR4Var
  loc_A2C50E: FStFPR8 var_8C
  loc_A2C511: FFreeAd var_90 = ""
  loc_A2C518: FFree1Var var_B4 = ""
  loc_A2C51B: ExitProcCbHresult
  loc_A2C521: GtI2
  loc_A2C522: OrI4
End Sub

Public Property Get DescDede() 'A2C5A4
  'Data Table: 40E018
  loc_A2C560: FLdRfVar var_B4
  loc_A2C563: FLdRfVar var_A4
  loc_A2C566: LitVarStr var_A0, "DescDede"
  loc_A2C56B: PopAdLdVar
  loc_A2C56C: FLdRfVar var_90
  loc_A2C56F: FLdPr Me
  loc_A2C572: MemLdPr global_60
  loc_A2C575:  = Me.Fields
  loc_A2C57A: FLdPr var_90
  loc_A2C57D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C582: FLdPr var_A4
  loc_A2C585:  = Me.Value
  loc_A2C58A: FLdRfVar var_B4
  loc_A2C58D: CR4Var
  loc_A2C58E: FStFPR8 var_8C
  loc_A2C591: FFreeAd var_90 = ""
  loc_A2C598: FFree1Var var_B4 = ""
  loc_A2C59B: ExitProcCbHresult
  loc_A2C5A1: EqI4
  loc_A2C5A2: LeI2
End Sub

Public Property Get TotaDede() 'A2C924
  'Data Table: 40E018
  loc_A2C8E0: FLdRfVar var_B4
  loc_A2C8E3: FLdRfVar var_A4
  loc_A2C8E6: LitVarStr var_A0, "TotaDede"
  loc_A2C8EB: PopAdLdVar
  loc_A2C8EC: FLdRfVar var_90
  loc_A2C8EF: FLdPr Me
  loc_A2C8F2: MemLdPr global_60
  loc_A2C8F5:  = Me.Fields
  loc_A2C8FA: FLdPr var_90
  loc_A2C8FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C902: FLdPr var_A4
  loc_A2C905:  = Me.Value
  loc_A2C90A: FLdRfVar var_B4
  loc_A2C90D: CR4Var
  loc_A2C90E: FStFPR8 var_8C
  loc_A2C911: FFreeAd var_90 = ""
  loc_A2C918: FFree1Var var_B4 = ""
  loc_A2C91B: ExitProcCbHresult
End Sub

Public Property Get DetaSede() 'A3D348
  'Data Table: 40E018
  loc_A3D304: ZeroRetVal
  loc_A3D306: FLdRfVar var_B0
  loc_A3D309: FLdRfVar var_A0
  loc_A3D30C: LitVarStr var_9C, "DetaSede"
  loc_A3D311: PopAdLdVar
  loc_A3D312: FLdRfVar var_8C
  loc_A3D315: FLdPr Me
  loc_A3D318: MemLdPr global_60
  loc_A3D31B:  = Me.Fields
  loc_A3D320: FLdPr var_8C
  loc_A3D323: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D328: FLdPr var_A0
  loc_A3D32B:  = Me.Value
  loc_A3D330: FLdRfVar var_B0
  loc_A3D333: CStrVarTmp
  loc_A3D334: FStStr var_88
  loc_A3D337: FFreeAd var_8C = ""
  loc_A3D33E: FFree1Var var_B0 = ""
  loc_A3D341: ExitProcCbHresult
End Sub

Public Property Get PeriInfo() 'A2B924
  'Data Table: 40E018
  loc_A2B8E0: FLdRfVar var_B0
  loc_A2B8E3: FLdRfVar var_A0
  loc_A2B8E6: LitVarStr var_9C, "PeriInfo"
  loc_A2B8EB: PopAdLdVar
  loc_A2B8EC: FLdRfVar var_8C
  loc_A2B8EF: FLdPr Me
  loc_A2B8F2: MemLdPr global_60
  loc_A2B8F5:  = Me.Fields
  loc_A2B8FA: FLdPr var_8C
  loc_A2B8FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B902: FLdPr var_A0
  loc_A2B905:  = Me.Value
  loc_A2B90A: FLdRfVar var_B0
  loc_A2B90D: CI2Var
  loc_A2B90E: FStI2 var_86
  loc_A2B911: FFreeAd var_8C = ""
  loc_A2B918: FFree1Var var_B0 = ""
  loc_A2B91B: ExitProcCbHresult
End Sub

Public Property Get CodiConc() 'A3DD14
  'Data Table: 40E018
  loc_A3DCD0: ZeroRetVal
  loc_A3DCD2: FLdRfVar var_B0
  loc_A3DCD5: FLdRfVar var_A0
  loc_A3DCD8: LitVarStr var_9C, "CodiConc"
  loc_A3DCDD: PopAdLdVar
  loc_A3DCDE: FLdRfVar var_8C
  loc_A3DCE1: FLdPr Me
  loc_A3DCE4: MemLdPr global_60
  loc_A3DCE7:  = Me.Fields
  loc_A3DCEC: FLdPr var_8C
  loc_A3DCEF: from_stack_2 = Me.Item(from_stack_1)
  loc_A3DCF4: FLdPr var_A0
  loc_A3DCF7:  = Me.Value
  loc_A3DCFC: FLdRfVar var_B0
  loc_A3DCFF: CStrVarTmp
  loc_A3DD00: FStStr var_88
  loc_A3DD03: FFreeAd var_8C = ""
  loc_A3DD0A: FFree1Var var_B0 = ""
  loc_A3DD0D: ExitProcCbHresult
End Sub

Public Property Get VariSede() 'A3DD98
  'Data Table: 40E018
  loc_A3DD54: ZeroRetVal
  loc_A3DD56: FLdRfVar var_B0
  loc_A3DD59: FLdRfVar var_A0
  loc_A3DD5C: LitVarStr var_9C, "VariSede"
  loc_A3DD61: PopAdLdVar
  loc_A3DD62: FLdRfVar var_8C
  loc_A3DD65: FLdPr Me
  loc_A3DD68: MemLdPr global_60
  loc_A3DD6B:  = Me.Fields
  loc_A3DD70: FLdPr var_8C
  loc_A3DD73: from_stack_2 = Me.Item(from_stack_1)
  loc_A3DD78: FLdPr var_A0
  loc_A3DD7B:  = Me.Value
  loc_A3DD80: FLdRfVar var_B0
  loc_A3DD83: CStrVarTmp
  loc_A3DD84: FStStr var_88
  loc_A3DD87: FFreeAd var_8C = ""
  loc_A3DD8E: FFree1Var var_B0 = ""
  loc_A3DD91: ExitProcCbHresult
End Sub

Public Property Get DetaPers() 'A3AF30
  'Data Table: 40E018
  loc_A3AEEC: ZeroRetVal
  loc_A3AEEE: FLdRfVar var_B0
  loc_A3AEF1: FLdRfVar var_A0
  loc_A3AEF4: LitVarStr var_9C, "DetaPers"
  loc_A3AEF9: PopAdLdVar
  loc_A3AEFA: FLdRfVar var_8C
  loc_A3AEFD: FLdPr Me
  loc_A3AF00: MemLdPr global_60
  loc_A3AF03:  = Me.Fields
  loc_A3AF08: FLdPr var_8C
  loc_A3AF0B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3AF10: FLdPr var_A0
  loc_A3AF13:  = Me.Value
  loc_A3AF18: FLdRfVar var_B0
  loc_A3AF1B: CStrVarTmp
  loc_A3AF1C: FStStr var_88
  loc_A3AF1F: FFreeAd var_8C = ""
  loc_A3AF26: FFree1Var var_B0 = ""
  loc_A3AF29: ExitProcCbHresult
End Sub

Public Property Get FealBole() 'A3DEA0
  'Data Table: 40E018
  loc_A3DE5C: ZeroRetVal
  loc_A3DE5E: FLdRfVar var_B0
  loc_A3DE61: FLdRfVar var_A0
  loc_A3DE64: LitVarStr var_9C, "FealBole"
  loc_A3DE69: PopAdLdVar
  loc_A3DE6A: FLdRfVar var_8C
  loc_A3DE6D: FLdPr Me
  loc_A3DE70: MemLdPr global_60
  loc_A3DE73:  = Me.Fields
  loc_A3DE78: FLdPr var_8C
  loc_A3DE7B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3DE80: FLdPr var_A0
  loc_A3DE83:  = Me.Value
  loc_A3DE88: FLdRfVar var_B0
  loc_A3DE8B: CStrVarTmp
  loc_A3DE8C: FStStr var_88
  loc_A3DE8F: FFreeAd var_8C = ""
  loc_A3DE96: FFree1Var var_B0 = ""
  loc_A3DE99: ExitProcCbHresult
End Sub

Public Property Get EstaBole() 'A3DF24
  'Data Table: 40E018
  loc_A3DEE0: ZeroRetVal
  loc_A3DEE2: FLdRfVar var_B0
  loc_A3DEE5: FLdRfVar var_A0
  loc_A3DEE8: LitVarStr var_9C, "EstaBole"
  loc_A3DEED: PopAdLdVar
  loc_A3DEEE: FLdRfVar var_8C
  loc_A3DEF1: FLdPr Me
  loc_A3DEF4: MemLdPr global_60
  loc_A3DEF7:  = Me.Fields
  loc_A3DEFC: FLdPr var_8C
  loc_A3DEFF: from_stack_2 = Me.Item(from_stack_1)
  loc_A3DF04: FLdPr var_A0
  loc_A3DF07:  = Me.Value
  loc_A3DF0C: FLdRfVar var_B0
  loc_A3DF0F: CStrVarTmp
  loc_A3DF10: FStStr var_88
  loc_A3DF13: FFreeAd var_8C = ""
  loc_A3DF1A: FFree1Var var_B0 = ""
  loc_A3DF1D: ExitProcCbHresult
End Sub

Public Property Get ObseBole() 'A3DFA8
  'Data Table: 40E018
  loc_A3DF64: ZeroRetVal
  loc_A3DF66: FLdRfVar var_B0
  loc_A3DF69: FLdRfVar var_A0
  loc_A3DF6C: LitVarStr var_9C, "ObseBole"
  loc_A3DF71: PopAdLdVar
  loc_A3DF72: FLdRfVar var_8C
  loc_A3DF75: FLdPr Me
  loc_A3DF78: MemLdPr global_60
  loc_A3DF7B:  = Me.Fields
  loc_A3DF80: FLdPr var_8C
  loc_A3DF83: from_stack_2 = Me.Item(from_stack_1)
  loc_A3DF88: FLdPr var_A0
  loc_A3DF8B:  = Me.Value
  loc_A3DF90: FLdRfVar var_B0
  loc_A3DF93: CStrVarTmp
  loc_A3DF94: FStStr var_88
  loc_A3DF97: FFreeAd var_8C = ""
  loc_A3DF9E: FFree1Var var_B0 = ""
  loc_A3DFA1: ExitProcCbHresult
End Sub

Private Function Proc_158_38_9F1908() '9F1908
  'Data Table: 40E018
  loc_9F18E4: LitStr "Primary"
  loc_9F18E7: FLdPr Me
  loc_9F18EA: LateIdLdVar var_94 DispID_4 0
  loc_9F18F1: CastAdVar Me
  loc_9F18F5: FStAdFunc var_98
  loc_9F18F8: FLdPr var_98
  loc_9F1900: FFree1Ad var_98
  loc_9F1903: FFree1Var var_94 = ""
  loc_9F1906: ExitProcHresult
End Function

Private Function Proc_158_39_A51A38(arg_C) 'A51A38
  'Data Table: 40E018
  loc_A519E4: ILdRf arg_C
  loc_A519E7: FStStrCopy var_88
  loc_A519EA: LitNothing
  loc_A519EC: CastAd
  loc_A519EF: FStAdFuncNoPop
  loc_A519F2: FLdPr Me
  loc_A519F5: MemStAd
  loc_A519F9: FFree1Ad var_8C
  loc_A519FC: New Recordset
  loc_A51A00: FStAdFuncNoPop
  loc_A51A03: FLdPr Me
  loc_A51A06: MemStAd
  loc_A51A0A: FFree1Ad var_8C
  loc_A51A0D: LitI4 -1
  loc_A51A12: LitI4 3
  loc_A51A17: LitI4 3
  loc_A51A1C: ImpAdLdI4 MemVar_D9301C
  loc_A51A1F: CVarAd
  loc_A51A23: PopAdLdVar
  loc_A51A24: ILdRf var_88
  loc_A51A27: CVarStr var_9C
  loc_A51A2A: PopAdLdVar
  loc_A51A2B: FLdPr Me
  loc_A51A2E: MemLdPr global_64
  loc_A51A31: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A51A36: ExitProcHresult
End Function

Private Function Proc_158_40_9E16DC(arg_C) '9E16DC
  'Data Table: 40E018
  loc_9E16C0: ILdI4 arg_C
  loc_9E16C3: FStStrCopy var_88
  loc_9E16C6: ILdRf var_88
  loc_9E16C9: LitStr "Primary"
  loc_9E16CC: EqStr
  loc_9E16CE: BranchF loc_9E16DB
  loc_9E16D1: FLdPr Me
  loc_9E16D4: MemLdStr global_60
  loc_9E16D7: IStAd
  loc_9E16DB: ExitProcHresult
End Function
