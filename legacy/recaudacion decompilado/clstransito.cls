VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clstransito"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject
Public RsCls As New UnkObject


Public Function RsFrmGet() '40772C
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40773B
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40774A
  RsFrm = Value
End Sub

Public Function RsClsGet() '407759
  RsClsGet = RsCls
End Function

Public Sub RsClsPut(Value) '407768
  RsCls = Value
End Sub

Public Sub RsClsSet(Value) '407777
  RsCls = Value
End Sub

Public Sub Mover(iCantidad) '9FCA58
  'Data Table: 40755C
  loc_9FCA28: FLdRfVar var_88
  loc_9FCA2B: FLdPr Me
  loc_9FCA2E: MemLdPr RsFrm
  loc_9FCA31:  = Me.RecordCount
  loc_9FCA36: ILdRf var_88
  loc_9FCA39: LitI4 0
  loc_9FCA3E: GtI4
  loc_9FCA3F: BranchF loc_9FCA54
  loc_9FCA42: LitVar_Missing var_98
  loc_9FCA45: PopAdLdVar
  loc_9FCA46: ILdI4 iCantidad
  loc_9FCA49: FLdPr Me
  loc_9FCA4C: MemLdPr RsFrm
  loc_9FCA4F: Me.Move from_stack_1, from_stack_2
  loc_9FCA54: ExitProcHresult
End Sub

Public Sub MoveFirst() '9EBE0C
  'Data Table: 40755C
  loc_9EBDE4: FLdRfVar var_88
  loc_9EBDE7: FLdPr Me
  loc_9EBDEA: MemLdPr RsFrm
  loc_9EBDED:  = Me.RecordCount
  loc_9EBDF2: ILdRf var_88
  loc_9EBDF5: LitI4 0
  loc_9EBDFA: GtI4
  loc_9EBDFB: BranchF loc_9EBE09
  loc_9EBDFE: FLdPr Me
  loc_9EBE01: MemLdPr RsFrm
  loc_9EBE04: Me.MoveFirst
  loc_9EBE09: ExitProcHresult
End Sub

Public Sub MoveLast() '9EBD5C
  'Data Table: 40755C
  loc_9EBD34: FLdRfVar var_88
  loc_9EBD37: FLdPr Me
  loc_9EBD3A: MemLdPr RsFrm
  loc_9EBD3D:  = Me.RecordCount
  loc_9EBD42: ILdRf var_88
  loc_9EBD45: LitI4 0
  loc_9EBD4A: GtI4
  loc_9EBD4B: BranchF loc_9EBD59
  loc_9EBD4E: FLdPr Me
  loc_9EBD51: MemLdPr RsFrm
  loc_9EBD54: Me.MoveLast
  loc_9EBD59: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6DE88
  'Data Table: 40755C
  loc_A6DE10: FLdRfVar var_86
  loc_A6DE13: FLdPr Me
  loc_A6DE16: MemLdPr RsFrm
  loc_A6DE19:  = Me.EOF
  loc_A6DE1E: FLdI2 var_86
  loc_A6DE21: NotI4
  loc_A6DE22: FLdRfVar var_8C
  loc_A6DE25: FLdPr Me
  loc_A6DE28: MemLdPr RsFrm
  loc_A6DE2B:  = Me.RecordCount
  loc_A6DE30: ILdRf var_8C
  loc_A6DE33: LitI4 0
  loc_A6DE38: GtI4
  loc_A6DE39: AndI4
  loc_A6DE3A: BranchF loc_A6DE48
  loc_A6DE3D: FLdPr Me
  loc_A6DE40: MemLdPr RsFrm
  loc_A6DE43: Me.MoveNext
  loc_A6DE48: FLdRfVar var_86
  loc_A6DE4B: FLdPr Me
  loc_A6DE4E: MemLdPr RsFrm
  loc_A6DE51:  = Me.EOF
  loc_A6DE56: FLdI2 var_86
  loc_A6DE59: FLdRfVar var_8C
  loc_A6DE5C: FLdPr Me
  loc_A6DE5F: MemLdPr RsFrm
  loc_A6DE62:  = Me.RecordCount
  loc_A6DE67: ILdRf var_8C
  loc_A6DE6A: LitI4 0
  loc_A6DE6F: GtI4
  loc_A6DE70: AndI4
  loc_A6DE71: BranchF loc_A6DE84
  loc_A6DE74: ImpAdCallFPR4 Beep()
  loc_A6DE79: FLdPr Me
  loc_A6DE7C: MemLdPr RsFrm
  loc_A6DE7F: Me.MoveLast
  loc_A6DE84: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B0DA4
  'Data Table: 40755C
  loc_9B0D98: FLdPr Me
  loc_9B0D9B: MemLdPr RsFrm
  loc_9B0D9E: Me.MoveNext
  loc_9B0DA3: ExitProcHresult
End Sub

Public Sub Move(iValor) '9BA3B4
  'Data Table: 40755C
  loc_9BA3A0: LitVar_Missing var_94
  loc_9BA3A3: PopAdLdVar
  loc_9BA3A4: ILdI2 iValor
  loc_9BA3A7: CI4UI1
  loc_9BA3A8: FLdPr Me
  loc_9BA3AB: MemLdPr RsFrm
  loc_9BA3AE: Me.Move from_stack_1, from_stack_2
  loc_9BA3B3: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6B920
  'Data Table: 40755C
  loc_A6B8A8: FLdRfVar var_86
  loc_A6B8AB: FLdPr Me
  loc_A6B8AE: MemLdPr RsFrm
  loc_A6B8B1:  = Me.BOF
  loc_A6B8B6: FLdI2 var_86
  loc_A6B8B9: NotI4
  loc_A6B8BA: FLdRfVar var_8C
  loc_A6B8BD: FLdPr Me
  loc_A6B8C0: MemLdPr RsFrm
  loc_A6B8C3:  = Me.RecordCount
  loc_A6B8C8: ILdRf var_8C
  loc_A6B8CB: LitI4 0
  loc_A6B8D0: GtI4
  loc_A6B8D1: AndI4
  loc_A6B8D2: BranchF loc_A6B8E0
  loc_A6B8D5: FLdPr Me
  loc_A6B8D8: MemLdPr RsFrm
  loc_A6B8DB: Me.MovePrevious
  loc_A6B8E0: FLdRfVar var_86
  loc_A6B8E3: FLdPr Me
  loc_A6B8E6: MemLdPr RsFrm
  loc_A6B8E9:  = Me.BOF
  loc_A6B8EE: FLdI2 var_86
  loc_A6B8F1: FLdRfVar var_8C
  loc_A6B8F4: FLdPr Me
  loc_A6B8F7: MemLdPr RsFrm
  loc_A6B8FA:  = Me.RecordCount
  loc_A6B8FF: ILdRf var_8C
  loc_A6B902: LitI4 0
  loc_A6B907: GtI4
  loc_A6B908: AndI4
  loc_A6B909: BranchF loc_A6B91C
  loc_A6B90C: ImpAdCallFPR4 Beep()
  loc_A6B911: FLdPr Me
  loc_A6B914: MemLdPr RsFrm
  loc_A6B917: Me.MoveFirst
  loc_A6B91C: ExitProcHresult
  loc_A6B91D: MemLdStr global_256
End Sub

Public Property Get EOF() '9C89C4
  'Data Table: 40755C
  loc_9C89A8: FLdRfVar var_88
  loc_9C89AB: FLdPr Me
  loc_9C89AE: MemLdPr RsFrm
  loc_9C89B1:  = Me.EOF
  loc_9C89B6: FLdI2 var_88
  loc_9C89B9: FStI2 var_86
  loc_9C89BC: ExitProcCbHresult
  loc_9C89C2: ExitProcR4
End Sub

Public Property Get BOF() '9C9980
  'Data Table: 40755C
  loc_9C9964: FLdRfVar var_88
  loc_9C9967: FLdPr Me
  loc_9C996A: MemLdPr RsFrm
  loc_9C996D:  = Me.BOF
  loc_9C9972: FLdI2 var_88
  loc_9C9975: FStI2 var_86
  loc_9C9978: ExitProcCbHresult
  loc_9C997E: ZeroRetVal
End Sub

Public Sub Sort(sOrden) '9B4A78
  'Data Table: 40755C
  loc_9B4A68: ILdI4 sOrden
  loc_9B4A6B: FLdPr Me
  loc_9B4A6E: MemLdPr RsFrm
  loc_9B4A71: Me.Sort = from_stack_1
  loc_9B4A76: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E0C90
  'Data Table: 40755C
  loc_9E0C70: LitVar_Missing var_94
  loc_9E0C73: PopAdLdVar
  loc_9E0C74: LitI4 1
  loc_9E0C79: LitI4 0
  loc_9E0C7E: ILdI4 sFind
  loc_9E0C81: FLdPr Me
  loc_9E0C84: MemLdPr RsFrm
  loc_9E0C87: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E0C8C: ExitProcHresult
  loc_9E0C8D: LitI2_Byte 0
  loc_9E0C8F: EqI2
End Sub

Public Sub Filter(sCriterio) '9BA194
  'Data Table: 40755C
  loc_9BA180: ILdI4 sCriterio
  loc_9BA183: CVarStr var_94
  loc_9BA186: PopAdLdVar
  loc_9BA187: FLdPr Me
  loc_9BA18A: MemLdPr RsFrm
  loc_9BA18D: Me.Filter = from_stack_1
  loc_9BA192: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9C9D10
  'Data Table: 40755C
  loc_9C9CF4: FLdRfVar var_8C
  loc_9C9CF7: FLdPr Me
  loc_9C9CFA: MemLdPr RsFrm
  loc_9C9CFD:  = Me.AbsolutePosition
  loc_9C9D02: ILdRf var_8C
  loc_9C9D05: FStR4 var_88
  loc_9C9D08: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9CA268
  'Data Table: 40755C
  loc_9CA24C: FLdRfVar var_8C
  loc_9CA24F: FLdPr Me
  loc_9CA252: MemLdPr RsFrm
  loc_9CA255:  = Me.RecordCount
  loc_9CA25A: ILdRf var_8C
  loc_9CA25D: FStR4 var_88
  loc_9CA260: ExitProcCbHresult
  loc_9CA266: Branch loc_9D86D1
End Sub

Public Sub AddNew(CodiDeva, CucuPers, TipoDeva, EstaDeva, ObseDeva, VencDeva, LocaDeva, CodiEtga, CateEtga, NumeEtga, RegaDeva, HaceRequery) 'A0AFA0
  'Data Table: 40755C
  loc_A0AF78: ILdRf CodiDeva
  loc_A0AF7B: FStStrCopy var_88
  loc_A0AF7E: ILdRf CucuPers
  loc_A0AF81: FStStrCopy var_8C
  loc_A0AF84: ILdRf TipoDeva
  loc_A0AF87: FStStrCopy var_90
  loc_A0AF8A: ILdRf ObseDeva
  loc_A0AF8D: FStStrCopy var_94
  loc_A0AF90: ILdRf VencDeva
  loc_A0AF93: FStStrCopy var_98
  loc_A0AF96: ILdRf LocaDeva
  loc_A0AF99: FStStrCopy var_9C
  loc_A0AF9C: ExitProcHresult
  loc_A0AF9D: SetLastSystemError
End Sub

Public Sub Modificar(CodiDeva, TipoDeva, EstaDeva, ObseDeva, VencDeva, LocaDeva, CodiEtga, CateEtga, NumeEtga, RegaDeva, HaceRequery) 'A03FE8
  'Data Table: 40755C
  loc_A03FC8: ILdRf CodiDeva
  loc_A03FCB: FStStrCopy var_88
  loc_A03FCE: ILdRf TipoDeva
  loc_A03FD1: FStStrCopy var_8C
  loc_A03FD4: ILdRf ObseDeva
  loc_A03FD7: FStStrCopy var_90
  loc_A03FDA: ILdRf VencDeva
  loc_A03FDD: FStStrCopy var_94
  loc_A03FE0: ILdRf LocaDeva
  loc_A03FE3: FStStrCopy var_98
  loc_A03FE6: ExitProcHresult
End Sub

Public Sub AddnewTransaction(sEjecutar) '9FC994
  'Data Table: 40755C
  loc_9FC968: ILdRf sEjecutar
  loc_9FC96B: FStStrCopy var_88
  loc_9FC96E: OnErrorGoto loc_9FC982
  loc_9FC971: ILdRf var_88
  loc_9FC974: Call Proc_216_35_A4736C()
  loc_9FC979: LitStr "COMMIT;"
  loc_9FC97C: Call Proc_216_35_A4736C()
  loc_9FC981: ExitProcHresult
  loc_9FC982: LitStr "ROLLBACK;"
  loc_9FC985: Call Proc_216_35_A4736C()
  loc_9FC98A: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_9FC98D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_9FC992: ExitProcHresult
  loc_9FC993: Ary1LdCy
End Sub

Public Sub Requery() '9E4FB0
  'Data Table: 40755C
  loc_9E4F8C: LitI4 -1
  loc_9E4F91: FLdPr Me
  loc_9E4F94: MemLdPr RsFrm
  loc_9E4F97: Me.Requery from_stack_1
  loc_9E4F9C: LitVarStr var_94, "Primary"
  loc_9E4FA1: PopAdLdVar
  loc_9E4FA2: FLdPr Me
  loc_9E4FA5: LateIdCall
  loc_9E4FAD: ExitProcHresult
End Sub

Public Sub Encontrar(CodiDeva) 'A68620
  'Data Table: 40755C
  loc_A685B8: ILdRf CodiDeva
  loc_A685BB: FStStrCopy var_88
  loc_A685BE: Call Requery()
  loc_A685C3: LitStr "CodiDeva = '"
  loc_A685C6: ILdRf var_88
  loc_A685C9: ConcatStr
  loc_A685CA: FStStrNoPop var_8C
  loc_A685CD: LitStr "'"
  loc_A685D0: ConcatStr
  loc_A685D1: PopTmpLdAdStr
  loc_A685D5: Call Find(from_stack_1v)
  loc_A685DA: FFreeStr var_8C = ""
  loc_A685E1: FLdRfVar var_94
  loc_A685E4: FLdPr Me
  loc_A685E7: MemLdPr RsFrm
  loc_A685EA:  = Me.RecordCount
  loc_A685EF: ILdRf var_94
  loc_A685F2: LitI4 0
  loc_A685F7: GtI4
  loc_A685F8: FLdRfVar var_98
  loc_A685FB: FLdPr Me
  loc_A685FE: MemLdPr RsFrm
  loc_A68601:  = Me.AbsolutePosition
  loc_A68606: ILdRf var_98
  loc_A68609: LitI4 -3
  loc_A6860E: EqI4
  loc_A6860F: AndI4
  loc_A68610: BranchF loc_A6861E
  loc_A68613: FLdPr Me
  loc_A68616: MemLdPr RsFrm
  loc_A68619: Me.MoveLast
  loc_A6861E: ExitProcHresult
End Sub

Public Function ValidaClave(CodiTran) 'A473F0
  'Data Table: 40755C
  loc_A473A4: ILdRf CodiTran
  loc_A473A7: FStStrCopy var_8C
  loc_A473AA: ZeroRetVal
  loc_A473AC: LitStr "SELECT CodiTran FROM transito WHERE CodiTran = '"
  loc_A473AF: ILdRf var_8C
  loc_A473B2: ConcatStr
  loc_A473B3: FStStrNoPop var_90
  loc_A473B6: LitStr "'"
  loc_A473B9: ConcatStr
  loc_A473BA: FStStrNoPop ValidaClave
  loc_A473BD: Call Proc_216_35_A4736C()
  loc_A473C2: FFreeStr var_90 = ""
  loc_A473C9: FLdRfVar var_98
  loc_A473CC: FLdPr Me
  loc_A473CF: MemLdPr RsCls
  loc_A473D2:  = Me.RecordCount
  loc_A473D7: ILdRf var_98
  loc_A473DA: LitI4 0
  loc_A473DF: GtI4
  loc_A473E0: BranchF loc_A473E9
  loc_A473E3: LitStr "La cuenta de Transito YA EXISTE. Reintente..."
  loc_A473E6: FStStrCopy var_88
  loc_A473E9: ExitProcCbHresult
  loc_A473EF: Ary1LdCy
End Function

Public Sub RedefineRS(sSelect) 'A5F160
  'Data Table: 40755C
  loc_A5F0FC: ILdRf sSelect
  loc_A5F0FF: FStStrCopy var_88
  loc_A5F102: LitNothing
  loc_A5F104: CastAd
  loc_A5F107: FStAdFuncNoPop
  loc_A5F10A: FLdPr Me
  loc_A5F10D: MemStAd
  loc_A5F111: FFree1Ad var_8C
  loc_A5F114: New Recordset
  loc_A5F118: FStAdFuncNoPop
  loc_A5F11B: FLdPr Me
  loc_A5F11E: MemStAd
  loc_A5F122: FFree1Ad var_8C
  loc_A5F125: LitI4 -1
  loc_A5F12A: LitI4 3
  loc_A5F12F: LitI4 3
  loc_A5F134: ImpAdLdI4 MemVar_D9301C
  loc_A5F137: CVarAd
  loc_A5F13B: PopAdLdVar
  loc_A5F13C: ILdRf var_88
  loc_A5F13F: CVarStr var_9C
  loc_A5F142: PopAdLdVar
  loc_A5F143: FLdPr Me
  loc_A5F146: MemLdPr RsFrm
  loc_A5F149: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5F14E: LitVarStr var_9C, "Primary"
  loc_A5F153: PopAdLdVar
  loc_A5F154: FLdPr Me
  loc_A5F157: LateIdCall
  loc_A5F15F: ExitProcHresult
End Sub

Public Property Get DataSource() '9F0264
  'Data Table: 40755C
  loc_9F0240: ZeroRetVal
  loc_9F0242: FLdRfVar var_8C
  loc_9F0245: FLdPr Me
  loc_9F0248: MemLdPr RsFrm
  loc_9F024B:  = Me.DataSource
  loc_9F0250: ILdRf var_8C
  loc_9F0253: CastAd
  loc_9F0256: FStAdFunc var_88
  loc_9F0259: FFree1Ad var_8C
  loc_9F025C: ExitProcCbHresult
  loc_9F0262: ExitProcHresult
End Sub

Public Property Get CodiTran() 'A3E9F8
  'Data Table: 40755C
  loc_A3E9B4: ZeroRetVal
  loc_A3E9B6: FLdRfVar var_B0
  loc_A3E9B9: FLdRfVar var_A0
  loc_A3E9BC: LitVarStr var_9C, "CodiTran"
  loc_A3E9C1: PopAdLdVar
  loc_A3E9C2: FLdRfVar var_8C
  loc_A3E9C5: FLdPr Me
  loc_A3E9C8: MemLdPr RsFrm
  loc_A3E9CB:  = Me.Fields
  loc_A3E9D0: FLdPr var_8C
  loc_A3E9D3: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E9D8: FLdPr var_A0
  loc_A3E9DB:  = Me.Value
  loc_A3E9E0: FLdRfVar var_B0
  loc_A3E9E3: CStrVarTmp
  loc_A3E9E4: FStStr var_88
  loc_A3E9E7: FFreeAd var_8C = ""
  loc_A3E9EE: FFree1Var var_B0 = ""
  loc_A3E9F1: ExitProcCbHresult
End Sub

Public Property Get CucuPers() 'A3CD18
  'Data Table: 40755C
  loc_A3CCD4: ZeroRetVal
  loc_A3CCD6: FLdRfVar var_B0
  loc_A3CCD9: FLdRfVar var_A0
  loc_A3CCDC: LitVarStr var_9C, "CucuPers"
  loc_A3CCE1: PopAdLdVar
  loc_A3CCE2: FLdRfVar var_8C
  loc_A3CCE5: FLdPr Me
  loc_A3CCE8: MemLdPr RsFrm
  loc_A3CCEB:  = Me.Fields
  loc_A3CCF0: FLdPr var_8C
  loc_A3CCF3: from_stack_2 = Me.Item(from_stack_1)
  loc_A3CCF8: FLdPr var_A0
  loc_A3CCFB:  = Me.Value
  loc_A3CD00: FLdRfVar var_B0
  loc_A3CD03: CStrVarTmp
  loc_A3CD04: FStStr var_88
  loc_A3CD07: FFreeAd var_8C = ""
  loc_A3CD0E: FFree1Var var_B0 = ""
  loc_A3CD11: ExitProcCbHresult
End Sub

Public Property Get DetaPers() 'A15B20
  'Data Table: 40755C
  loc_A15AE8: ZeroRetValVar
  loc_A15AEA: FLdRfVar var_AC
  loc_A15AED: LitVarStr var_A8, "DetaPers"
  loc_A15AF2: PopAdLdVar
  loc_A15AF3: FLdRfVar var_98
  loc_A15AF6: FLdPr Me
  loc_A15AF9: MemLdPr RsFrm
  loc_A15AFC:  = Me.Fields
  loc_A15B01: FLdPr var_98
  loc_A15B04: from_stack_2 = Me.Item(from_stack_1)
  loc_A15B09: FLdZeroAd var_AC
  loc_A15B0C: CVarAd
  loc_A15B10: FStVar DetaPers
  loc_A15B14: FFree1Ad var_98
  loc_A15B17: ExitProcCbHresult
End Sub

Public Property Get NudoPers() 'A15AA8
  'Data Table: 40755C
  loc_A15A70: ZeroRetValVar
  loc_A15A72: FLdRfVar var_AC
  loc_A15A75: LitVarStr var_A8, "NudoPers"
  loc_A15A7A: PopAdLdVar
  loc_A15A7B: FLdRfVar var_98
  loc_A15A7E: FLdPr Me
  loc_A15A81: MemLdPr RsFrm
  loc_A15A84:  = Me.Fields
  loc_A15A89: FLdPr var_98
  loc_A15A8C: from_stack_2 = Me.Item(from_stack_1)
  loc_A15A91: FLdZeroAd var_AC
  loc_A15A94: CVarAd
  loc_A15A98: FStVar NudoPers
  loc_A15A9C: FFree1Ad var_98
  loc_A15A9F: ExitProcCbHresult
End Sub

Public Property Get UbrePers() 'A15940
  'Data Table: 40755C
  loc_A15908: ZeroRetValVar
  loc_A1590A: FLdRfVar var_AC
  loc_A1590D: LitVarStr var_A8, "UbrePers"
  loc_A15912: PopAdLdVar
  loc_A15913: FLdRfVar var_98
  loc_A15916: FLdPr Me
  loc_A15919: MemLdPr RsFrm
  loc_A1591C:  = Me.Fields
  loc_A15921: FLdPr var_98
  loc_A15924: from_stack_2 = Me.Item(from_stack_1)
  loc_A15929: FLdZeroAd var_AC
  loc_A1592C: CVarAd
  loc_A15930: FStVar UbrePers
  loc_A15934: FFree1Ad var_98
  loc_A15937: ExitProcCbHresult
End Sub

Public Property Get DelrPers() 'A15760
  'Data Table: 40755C
  loc_A15728: ZeroRetValVar
  loc_A1572A: FLdRfVar var_AC
  loc_A1572D: LitVarStr var_A8, "DelrPers"
  loc_A15732: PopAdLdVar
  loc_A15733: FLdRfVar var_98
  loc_A15736: FLdPr Me
  loc_A15739: MemLdPr RsFrm
  loc_A1573C:  = Me.Fields
  loc_A15741: FLdPr var_98
  loc_A15744: from_stack_2 = Me.Item(from_stack_1)
  loc_A15749: FLdZeroAd var_AC
  loc_A1574C: CVarAd
  loc_A15750: FStVar DelrPers
  loc_A15754: FFree1Ad var_98
  loc_A15757: ExitProcCbHresult
  loc_A1575D: Ary1LdRf
End Sub

Private Function Proc_216_34_9EFB90() '9EFB90
  'Data Table: 40755C
  loc_9EFB6C: LitStr "Primary"
  loc_9EFB6F: FLdPr Me
  loc_9EFB72: LateIdLdVar var_94 DispID_4 0
  loc_9EFB79: CastAdVar Me
  loc_9EFB7D: FStAdFunc var_98
  loc_9EFB80: FLdPr var_98
  loc_9EFB88: FFree1Ad var_98
  loc_9EFB8B: FFree1Var var_94 = ""
  loc_9EFB8E: ExitProcHresult
  loc_9EFB8F: Ary1LdCy
End Function

Private Function Proc_216_35_A4736C(arg_C) 'A4736C
  'Data Table: 40755C
  loc_A47318: ILdRf arg_C
  loc_A4731B: FStStrCopy var_88
  loc_A4731E: LitNothing
  loc_A47320: CastAd
  loc_A47323: FStAdFuncNoPop
  loc_A47326: FLdPr Me
  loc_A47329: MemStAd
  loc_A4732D: FFree1Ad var_8C
  loc_A47330: New Recordset
  loc_A47334: FStAdFuncNoPop
  loc_A47337: FLdPr Me
  loc_A4733A: MemStAd
  loc_A4733E: FFree1Ad var_8C
  loc_A47341: LitI4 -1
  loc_A47346: LitI4 3
  loc_A4734B: LitI4 3
  loc_A47350: ImpAdLdI4 MemVar_D9301C
  loc_A47353: CVarAd
  loc_A47357: PopAdLdVar
  loc_A47358: ILdRf var_88
  loc_A4735B: CVarStr var_9C
  loc_A4735E: PopAdLdVar
  loc_A4735F: FLdPr Me
  loc_A47362: MemLdPr RsCls
  loc_A47365: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4736A: ExitProcHresult
End Function

Private Function Proc_216_36_9E0F5C(arg_C) '9E0F5C
  'Data Table: 40755C
  loc_9E0F40: ILdI4 arg_C
  loc_9E0F43: FStStrCopy var_88
  loc_9E0F46: ILdRf var_88
  loc_9E0F49: LitStr "Primary"
  loc_9E0F4C: EqStr
  loc_9E0F4E: BranchF loc_9E0F5B
  loc_9E0F51: FLdPr Me
  loc_9E0F54: MemLdStr RsFrm
  loc_9E0F57: IStAd
  loc_9E0F5B: ExitProcHresult
End Function
