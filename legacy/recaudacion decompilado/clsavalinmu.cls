VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsavalinmu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject
Public RsCls As New UnkObject


Public Function RsFrmGet() '403D2C
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '403D3B
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '403D4A
  RsFrm = Value
End Sub

Public Function RsClsGet() '403D59
  RsClsGet = RsCls
End Function

Public Sub RsClsPut(Value) '403D68
  RsCls = Value
End Sub

Public Sub RsClsSet(Value) '403D77
  RsCls = Value
End Sub

Public Sub Mover(iCantidad) '9FC9F8
  'Data Table: 403BF8
  loc_9FC9C8: FLdRfVar var_88
  loc_9FC9CB: FLdPr Me
  loc_9FC9CE: MemLdPr RsFrm
  loc_9FC9D1:  = Me.RecordCount
  loc_9FC9D6: ILdRf var_88
  loc_9FC9D9: LitI4 0
  loc_9FC9DE: GtI4
  loc_9FC9DF: BranchF loc_9FC9F4
  loc_9FC9E2: LitVar_Missing var_98
  loc_9FC9E5: PopAdLdVar
  loc_9FC9E6: ILdI4 iCantidad
  loc_9FC9E9: FLdPr Me
  loc_9FC9EC: MemLdPr RsFrm
  loc_9FC9EF: Me.Move from_stack_1, from_stack_2
  loc_9FC9F4: ExitProcHresult
End Sub

Public Sub MoveFirst() '9EC0CC
  'Data Table: 403BF8
  loc_9EC0A4: FLdRfVar var_88
  loc_9EC0A7: FLdPr Me
  loc_9EC0AA: MemLdPr RsFrm
  loc_9EC0AD:  = Me.RecordCount
  loc_9EC0B2: ILdRf var_88
  loc_9EC0B5: LitI4 0
  loc_9EC0BA: GtI4
  loc_9EC0BB: BranchF loc_9EC0C9
  loc_9EC0BE: FLdPr Me
  loc_9EC0C1: MemLdPr RsFrm
  loc_9EC0C4: Me.MoveFirst
  loc_9EC0C9: ExitProcHresult
End Sub

Public Sub MoveLast() '9EC074
  'Data Table: 403BF8
  loc_9EC04C: FLdRfVar var_88
  loc_9EC04F: FLdPr Me
  loc_9EC052: MemLdPr RsFrm
  loc_9EC055:  = Me.RecordCount
  loc_9EC05A: ILdRf var_88
  loc_9EC05D: LitI4 0
  loc_9EC062: GtI4
  loc_9EC063: BranchF loc_9EC071
  loc_9EC066: FLdPr Me
  loc_9EC069: MemLdPr RsFrm
  loc_9EC06C: Me.MoveLast
  loc_9EC071: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6A6C0
  'Data Table: 403BF8
  loc_A6A648: FLdRfVar var_86
  loc_A6A64B: FLdPr Me
  loc_A6A64E: MemLdPr RsFrm
  loc_A6A651:  = Me.EOF
  loc_A6A656: FLdI2 var_86
  loc_A6A659: NotI4
  loc_A6A65A: FLdRfVar var_8C
  loc_A6A65D: FLdPr Me
  loc_A6A660: MemLdPr RsFrm
  loc_A6A663:  = Me.RecordCount
  loc_A6A668: ILdRf var_8C
  loc_A6A66B: LitI4 0
  loc_A6A670: GtI4
  loc_A6A671: AndI4
  loc_A6A672: BranchF loc_A6A680
  loc_A6A675: FLdPr Me
  loc_A6A678: MemLdPr RsFrm
  loc_A6A67B: Me.MoveNext
  loc_A6A680: FLdRfVar var_86
  loc_A6A683: FLdPr Me
  loc_A6A686: MemLdPr RsFrm
  loc_A6A689:  = Me.EOF
  loc_A6A68E: FLdI2 var_86
  loc_A6A691: FLdRfVar var_8C
  loc_A6A694: FLdPr Me
  loc_A6A697: MemLdPr RsFrm
  loc_A6A69A:  = Me.RecordCount
  loc_A6A69F: ILdRf var_8C
  loc_A6A6A2: LitI4 0
  loc_A6A6A7: GtI4
  loc_A6A6A8: AndI4
  loc_A6A6A9: BranchF loc_A6A6BC
  loc_A6A6AC: ImpAdCallFPR4 Beep()
  loc_A6A6B1: FLdPr Me
  loc_A6A6B4: MemLdPr RsFrm
  loc_A6A6B7: Me.MoveLast
  loc_A6A6BC: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B0FC0
  'Data Table: 403BF8
  loc_9B0FB4: FLdPr Me
  loc_9B0FB7: MemLdPr RsFrm
  loc_9B0FBA: Me.MoveNext
  loc_9B0FBF: ExitProcHresult
End Sub

Public Sub Move(iValor) '9BA948
  'Data Table: 403BF8
  loc_9BA934: LitVar_Missing var_94
  loc_9BA937: PopAdLdVar
  loc_9BA938: ILdI2 iValor
  loc_9BA93B: CI4UI1
  loc_9BA93C: FLdPr Me
  loc_9BA93F: MemLdPr RsFrm
  loc_9BA942: Me.Move from_stack_1, from_stack_2
  loc_9BA947: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6AEA0
  'Data Table: 403BF8
  loc_A6AE28: FLdRfVar var_86
  loc_A6AE2B: FLdPr Me
  loc_A6AE2E: MemLdPr RsFrm
  loc_A6AE31:  = Me.BOF
  loc_A6AE36: FLdI2 var_86
  loc_A6AE39: NotI4
  loc_A6AE3A: FLdRfVar var_8C
  loc_A6AE3D: FLdPr Me
  loc_A6AE40: MemLdPr RsFrm
  loc_A6AE43:  = Me.RecordCount
  loc_A6AE48: ILdRf var_8C
  loc_A6AE4B: LitI4 0
  loc_A6AE50: GtI4
  loc_A6AE51: AndI4
  loc_A6AE52: BranchF loc_A6AE60
  loc_A6AE55: FLdPr Me
  loc_A6AE58: MemLdPr RsFrm
  loc_A6AE5B: Me.MovePrevious
  loc_A6AE60: FLdRfVar var_86
  loc_A6AE63: FLdPr Me
  loc_A6AE66: MemLdPr RsFrm
  loc_A6AE69:  = Me.BOF
  loc_A6AE6E: FLdI2 var_86
  loc_A6AE71: FLdRfVar var_8C
  loc_A6AE74: FLdPr Me
  loc_A6AE77: MemLdPr RsFrm
  loc_A6AE7A:  = Me.RecordCount
  loc_A6AE7F: ILdRf var_8C
  loc_A6AE82: LitI4 0
  loc_A6AE87: GtI4
  loc_A6AE88: AndI4
  loc_A6AE89: BranchF loc_A6AE9C
  loc_A6AE8C: ImpAdCallFPR4 Beep()
  loc_A6AE91: FLdPr Me
  loc_A6AE94: MemLdPr RsFrm
  loc_A6AE97: Me.MoveFirst
  loc_A6AE9C: ExitProcHresult
End Sub

Public Property Get EOF() '9C859C
  'Data Table: 403BF8
  loc_9C8580: FLdRfVar var_88
  loc_9C8583: FLdPr Me
  loc_9C8586: MemLdPr RsFrm
  loc_9C8589:  = Me.EOF
  loc_9C858E: FLdI2 var_88
  loc_9C8591: FStI2 var_86
  loc_9C8594: ExitProcCbHresult
End Sub

Public Property Get BOF() '9C82A4
  'Data Table: 403BF8
  loc_9C8288: FLdRfVar var_88
  loc_9C828B: FLdPr Me
  loc_9C828E: MemLdPr RsFrm
  loc_9C8291:  = Me.BOF
  loc_9C8296: FLdI2 var_88
  loc_9C8299: FStI2 var_86
  loc_9C829C: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B7538
  'Data Table: 403BF8
  loc_9B7528: ILdI4 sOrden
  loc_9B752B: FLdPr Me
  loc_9B752E: MemLdPr RsFrm
  loc_9B7531: Me.Sort = from_stack_1
  loc_9B7536: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E0880
  'Data Table: 403BF8
  loc_9E0860: LitVar_Missing var_94
  loc_9E0863: PopAdLdVar
  loc_9E0864: LitI4 1
  loc_9E0869: LitI4 0
  loc_9E086E: ILdI4 sFind
  loc_9E0871: FLdPr Me
  loc_9E0874: MemLdPr RsFrm
  loc_9E0877: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E087C: ExitProcHresult
  loc_9E087D: FLdRfVar var_C8
End Sub

Public Sub Filter(sCriterio) '9BA7B0
  'Data Table: 403BF8
  loc_9BA79C: ILdI4 sCriterio
  loc_9BA79F: CVarStr var_94
  loc_9BA7A2: PopAdLdVar
  loc_9BA7A3: FLdPr Me
  loc_9BA7A6: MemLdPr RsFrm
  loc_9BA7A9: Me.Filter = from_stack_1
  loc_9BA7AE: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9C82F0
  'Data Table: 403BF8
  loc_9C82D4: FLdRfVar var_8C
  loc_9C82D7: FLdPr Me
  loc_9C82DA: MemLdPr RsFrm
  loc_9C82DD:  = Me.AbsolutePosition
  loc_9C82E2: ILdRf var_8C
  loc_9C82E5: FStR4 var_88
  loc_9C82E8: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9C8128
  'Data Table: 403BF8
  loc_9C810C: FLdRfVar var_8C
  loc_9C810F: FLdPr Me
  loc_9C8112: MemLdPr RsFrm
  loc_9C8115:  = Me.RecordCount
  loc_9C811A: ILdRf var_8C
  loc_9C811D: FStR4 var_88
  loc_9C8120: ExitProcCbHresult
  loc_9C8126: CExtInstUnk
End Sub

Public Sub Requery() '9E5058
  'Data Table: 403BF8
  loc_9E5034: LitI4 -1
  loc_9E5039: FLdPr Me
  loc_9E503C: MemLdPr RsFrm
  loc_9E503F: Me.Requery from_stack_1
  loc_9E5044: LitVarStr var_94, "Primary"
  loc_9E5049: PopAdLdVar
  loc_9E504A: FLdPr Me
  loc_9E504D: LateIdCall
  loc_9E5055: ExitProcHresult
  loc_9E5056: FLdPr var_8000
End Sub

Public Sub RedefineRS(sSelect) 'A5D864
  'Data Table: 403BF8
  loc_A5D800: ILdRf sSelect
  loc_A5D803: FStStrCopy var_88
  loc_A5D806: LitNothing
  loc_A5D808: CastAd
  loc_A5D80B: FStAdFuncNoPop
  loc_A5D80E: FLdPr Me
  loc_A5D811: MemStAd
  loc_A5D815: FFree1Ad var_8C
  loc_A5D818: New Recordset
  loc_A5D81C: FStAdFuncNoPop
  loc_A5D81F: FLdPr Me
  loc_A5D822: MemStAd
  loc_A5D826: FFree1Ad var_8C
  loc_A5D829: LitI4 -1
  loc_A5D82E: LitI4 3
  loc_A5D833: LitI4 3
  loc_A5D838: ImpAdLdI4 MemVar_D9301C
  loc_A5D83B: CVarAd
  loc_A5D83F: PopAdLdVar
  loc_A5D840: ILdRf var_88
  loc_A5D843: CVarStr var_9C
  loc_A5D846: PopAdLdVar
  loc_A5D847: FLdPr Me
  loc_A5D84A: MemLdPr RsFrm
  loc_A5D84D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5D852: LitVarStr var_9C, "Primary"
  loc_A5D857: PopAdLdVar
  loc_A5D858: FLdPr Me
  loc_A5D85B: LateIdCall
  loc_A5D863: ExitProcHresult
End Sub

Public Property Get DataSource() '9F048C
  'Data Table: 403BF8
  loc_9F0468: ZeroRetVal
  loc_9F046A: FLdRfVar var_8C
  loc_9F046D: FLdPr Me
  loc_9F0470: MemLdPr RsFrm
  loc_9F0473:  = Me.DataSource
  loc_9F0478: ILdRf var_8C
  loc_9F047B: CastAd
  loc_9F047E: FStAdFunc var_88
  loc_9F0481: FFree1Ad var_8C
  loc_9F0484: ExitProcCbHresult
  loc_9F048A: CI4Str
End Sub

Private Function Proc_209_23_9F05A0() '9F05A0
  'Data Table: 403BF8
  loc_9F057C: LitStr "Primary"
  loc_9F057F: FLdPr Me
  loc_9F0582: LateIdLdVar var_94 DispID_4 0
  loc_9F0589: CastAdVar Me
  loc_9F058D: FStAdFunc var_98
  loc_9F0590: FLdPr var_98
  loc_9F0598: FFree1Ad var_98
  loc_9F059B: FFree1Var var_94 = ""
  loc_9F059E: ExitProcHresult
End Function

Private Function Proc_209_24_A47740(arg_C) 'A47740
  'Data Table: 403BF8
  loc_A476EC: ILdRf arg_C
  loc_A476EF: FStStrCopy var_88
  loc_A476F2: LitNothing
  loc_A476F4: CastAd
  loc_A476F7: FStAdFuncNoPop
  loc_A476FA: FLdPr Me
  loc_A476FD: MemStAd
  loc_A47701: FFree1Ad var_8C
  loc_A47704: New Recordset
  loc_A47708: FStAdFuncNoPop
  loc_A4770B: FLdPr Me
  loc_A4770E: MemStAd
  loc_A47712: FFree1Ad var_8C
  loc_A47715: LitI4 -1
  loc_A4771A: LitI4 3
  loc_A4771F: LitI4 3
  loc_A47724: ImpAdLdI4 MemVar_D9301C
  loc_A47727: CVarAd
  loc_A4772B: PopAdLdVar
  loc_A4772C: ILdRf var_88
  loc_A4772F: CVarStr var_9C
  loc_A47732: PopAdLdVar
  loc_A47733: FLdPr Me
  loc_A47736: MemLdPr RsCls
  loc_A47739: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4773E: ExitProcHresult
End Function

Private Function Proc_209_25_9E0A5C(arg_C) '9E0A5C
  'Data Table: 403BF8
  loc_9E0A40: ILdI4 arg_C
  loc_9E0A43: FStStrCopy var_88
  loc_9E0A46: ILdRf var_88
  loc_9E0A49: LitStr "Primary"
  loc_9E0A4C: EqStr
  loc_9E0A4E: BranchF loc_9E0A5B
  loc_9E0A51: FLdPr Me
  loc_9E0A54: MemLdStr RsFrm
  loc_9E0A57: IStAd
  loc_9E0A5B: ExitProcHresult
End Function
