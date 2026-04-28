VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsbase"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '4040CC
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4040DB
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4040EA
  RsFrm = Value
End Sub

Public Sub Mover(iCantidad) '9FE138
  'Data Table: 403F90
  loc_9FE108: FLdRfVar var_88
  loc_9FE10B: FLdPr Me
  loc_9FE10E: MemLdPr RsFrm
  loc_9FE111:  = Me.RecordCount
  loc_9FE116: ILdRf var_88
  loc_9FE119: LitI4 0
  loc_9FE11E: GtI4
  loc_9FE11F: BranchF loc_9FE134
  loc_9FE122: LitVar_Missing var_98
  loc_9FE125: PopAdLdVar
  loc_9FE126: ILdI4 iCantidad
  loc_9FE129: FLdPr Me
  loc_9FE12C: MemLdPr RsFrm
  loc_9FE12F: Me.Move from_stack_1, from_stack_2
  loc_9FE134: ExitProcHresult
End Sub

Public Sub MoveFirst() '9ED77C
  'Data Table: 403F90
  loc_9ED754: FLdRfVar var_88
  loc_9ED757: FLdPr Me
  loc_9ED75A: MemLdPr RsFrm
  loc_9ED75D:  = Me.RecordCount
  loc_9ED762: ILdRf var_88
  loc_9ED765: LitI4 0
  loc_9ED76A: GtI4
  loc_9ED76B: BranchF loc_9ED779
  loc_9ED76E: FLdPr Me
  loc_9ED771: MemLdPr RsFrm
  loc_9ED774: Me.MoveFirst
  loc_9ED779: ExitProcHresult
End Sub

Public Sub MoveLast() '9ED7D4
  'Data Table: 403F90
  loc_9ED7AC: FLdRfVar var_88
  loc_9ED7AF: FLdPr Me
  loc_9ED7B2: MemLdPr RsFrm
  loc_9ED7B5:  = Me.RecordCount
  loc_9ED7BA: ILdRf var_88
  loc_9ED7BD: LitI4 0
  loc_9ED7C2: GtI4
  loc_9ED7C3: BranchF loc_9ED7D1
  loc_9ED7C6: FLdPr Me
  loc_9ED7C9: MemLdPr RsFrm
  loc_9ED7CC: Me.MoveLast
  loc_9ED7D1: ExitProcHresult
End Sub

Public Sub MoveNext() 'A693B8
  'Data Table: 403F90
  loc_A69340: FLdRfVar var_86
  loc_A69343: FLdPr Me
  loc_A69346: MemLdPr RsFrm
  loc_A69349:  = Me.EOF
  loc_A6934E: FLdI2 var_86
  loc_A69351: NotI4
  loc_A69352: FLdRfVar var_8C
  loc_A69355: FLdPr Me
  loc_A69358: MemLdPr RsFrm
  loc_A6935B:  = Me.RecordCount
  loc_A69360: ILdRf var_8C
  loc_A69363: LitI4 0
  loc_A69368: GtI4
  loc_A69369: AndI4
  loc_A6936A: BranchF loc_A69378
  loc_A6936D: FLdPr Me
  loc_A69370: MemLdPr RsFrm
  loc_A69373: Me.MoveNext
  loc_A69378: FLdRfVar var_86
  loc_A6937B: FLdPr Me
  loc_A6937E: MemLdPr RsFrm
  loc_A69381:  = Me.EOF
  loc_A69386: FLdI2 var_86
  loc_A69389: FLdRfVar var_8C
  loc_A6938C: FLdPr Me
  loc_A6938F: MemLdPr RsFrm
  loc_A69392:  = Me.RecordCount
  loc_A69397: ILdRf var_8C
  loc_A6939A: LitI4 0
  loc_A6939F: GtI4
  loc_A693A0: AndI4
  loc_A693A1: BranchF loc_A693B4
  loc_A693A4: ImpAdCallFPR4 Beep()
  loc_A693A9: FLdPr Me
  loc_A693AC: MemLdPr RsFrm
  loc_A693AF: Me.MoveLast
  loc_A693B4: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B11A0
  'Data Table: 403F90
  loc_9B1194: FLdPr Me
  loc_9B1197: MemLdPr RsFrm
  loc_9B119A: Me.MoveNext
  loc_9B119F: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B9D98
  'Data Table: 403F90
  loc_9B9D84: LitVar_Missing var_94
  loc_9B9D87: PopAdLdVar
  loc_9B9D88: ILdI2 iValor
  loc_9B9D8B: CI4UI1
  loc_9B9D8C: FLdPr Me
  loc_9B9D8F: MemLdPr RsFrm
  loc_9B9D92: Me.Move from_stack_1, from_stack_2
  loc_9B9D97: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6B290
  'Data Table: 403F90
  loc_A6B218: FLdRfVar var_86
  loc_A6B21B: FLdPr Me
  loc_A6B21E: MemLdPr RsFrm
  loc_A6B221:  = Me.BOF
  loc_A6B226: FLdI2 var_86
  loc_A6B229: NotI4
  loc_A6B22A: FLdRfVar var_8C
  loc_A6B22D: FLdPr Me
  loc_A6B230: MemLdPr RsFrm
  loc_A6B233:  = Me.RecordCount
  loc_A6B238: ILdRf var_8C
  loc_A6B23B: LitI4 0
  loc_A6B240: GtI4
  loc_A6B241: AndI4
  loc_A6B242: BranchF loc_A6B250
  loc_A6B245: FLdPr Me
  loc_A6B248: MemLdPr RsFrm
  loc_A6B24B: Me.MovePrevious
  loc_A6B250: FLdRfVar var_86
  loc_A6B253: FLdPr Me
  loc_A6B256: MemLdPr RsFrm
  loc_A6B259:  = Me.BOF
  loc_A6B25E: FLdI2 var_86
  loc_A6B261: FLdRfVar var_8C
  loc_A6B264: FLdPr Me
  loc_A6B267: MemLdPr RsFrm
  loc_A6B26A:  = Me.RecordCount
  loc_A6B26F: ILdRf var_8C
  loc_A6B272: LitI4 0
  loc_A6B277: GtI4
  loc_A6B278: AndI4
  loc_A6B279: BranchF loc_A6B28C
  loc_A6B27C: ImpAdCallFPR4 Beep()
  loc_A6B281: FLdPr Me
  loc_A6B284: MemLdPr RsFrm
  loc_A6B287: Me.MoveFirst
  loc_A6B28C: ExitProcHresult
End Sub

Public Property Get EOF() '9DCA18
  'Data Table: 403F90
  loc_9DC9FC: FLdRfVar var_88
  loc_9DC9FF: FLdPr Me
  loc_9DCA02: MemLdPr RsFrm
  loc_9DCA05:  = Me.EOF
  loc_9DCA0A: FLdI2 var_88
  loc_9DCA0D: FStI2 var_86
  loc_9DCA10: ExitProcCbHresult
  loc_9DCA16: NewIfNullPr Me
End Sub

Public Property Get BOF(arg_18) '9DCB94
  'Data Table: 403F90
  loc_9DCB78: FLdRfVar var_88
  loc_9DCB7B: FLdPr Me
  loc_9DCB7E: MemLdPr RsFrm
  loc_9DCB81:  = Me.BOF
  loc_9DCB86: FLdI2 var_88
  loc_9DCB89: FStI2 var_86
  loc_9DCB8C: ExitProcCbHresult
  loc_9DCB92: PopTmpLdAd2 arg_1803
End Sub

Public Sub Sort(sOrden) '9B36B8
  'Data Table: 403F90
  loc_9B36A8: ILdI4 sOrden
  loc_9B36AB: FLdPr Me
  loc_9B36AE: MemLdPr RsFrm
  loc_9B36B1: Me.Sort = from_stack_1
  loc_9B36B6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DD7C0
  'Data Table: 403F90
  loc_9DD7A0: LitVar_Missing var_94
  loc_9DD7A3: PopAdLdVar
  loc_9DD7A4: LitI4 1
  loc_9DD7A9: LitI4 0
  loc_9DD7AE: ILdI4 sFind
  loc_9DD7B1: FLdPr Me
  loc_9DD7B4: MemLdPr RsFrm
  loc_9DD7B7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DD7BC: ExitProcHresult
  loc_9DD7BD: ModI2
  loc_9DD7BE: AryUnlock
End Sub

Public Sub Filter(sCriterio) '9B9EEC
  'Data Table: 403F90
  loc_9B9ED8: ILdI4 sCriterio
  loc_9B9EDB: CVarStr var_94
  loc_9B9EDE: PopAdLdVar
  loc_9B9EDF: FLdPr Me
  loc_9B9EE2: MemLdPr RsFrm
  loc_9B9EE5: Me.Filter = from_stack_1
  loc_9B9EEA: ExitProcHresult
End Sub

Public Property Get AbsolutePosition(arg_18) '9DCDA8
  'Data Table: 403F90
  loc_9DCD8C: FLdRfVar var_8C
  loc_9DCD8F: FLdPr Me
  loc_9DCD92: MemLdPr RsFrm
  loc_9DCD95:  = Me.AbsolutePosition
  loc_9DCD9A: ILdRf var_8C
  loc_9DCD9D: FStR4 var_88
  loc_9DCDA0: ExitProcCbHresult
  loc_9DCDA6: FFree1Str arg_1803
End Sub

Public Property Get RecordCount(arg_18) '9DCC78
  'Data Table: 403F90
  loc_9DCC5C: FLdRfVar var_8C
  loc_9DCC5F: FLdPr Me
  loc_9DCC62: MemLdPr RsFrm
  loc_9DCC65:  = Me.RecordCount
  loc_9DCC6A: ILdRf var_8C
  loc_9DCC6D: FStR4 var_88
  loc_9DCC70: ExitProcCbHresult
  loc_9DCC76: PopTmpLdAd8 arg_1803
End Sub

Public Sub RedefineRS(sSelect) '9F93F4
  'Data Table: 403F90
  loc_9F93CC: ILdRf sSelect
  loc_9F93CF: FStStrCopy var_88
  loc_9F93D2: FLdPr Me
  loc_9F93D5: MemLdRfVar from_stack_1.RsFrm
  loc_9F93D8: ILdRf var_88
  loc_9F93DB: ImpAdCallFPR4  = Proc_272_58_A794E0()
  loc_9F93E0: LitVarStr var_98, "Primary"
  loc_9F93E5: PopAdLdVar
  loc_9F93E6: FLdPr Me
  loc_9F93E9: LateIdCall
  loc_9F93F1: ExitProcHresult
  loc_9F93F2: FFreeStr  = ""
End Sub

Public Sub RedefineRSGis(sSelect) '9FAD1C
  'Data Table: 403F90
  loc_9FACF4: ILdRf sSelect
  loc_9FACF7: FStStrCopy var_88
  loc_9FACFA: FLdPr Me
  loc_9FACFD: MemLdRfVar from_stack_1.RsFrm
  loc_9FAD00: ILdRf var_88
  loc_9FAD03: ImpAdCallFPR4  = Proc_272_59_A789A0()
  loc_9FAD08: LitVarStr var_98, "Primary"
  loc_9FAD0D: PopAdLdVar
  loc_9FAD0E: FLdPr Me
  loc_9FAD11: LateIdCall
  loc_9FAD19: ExitProcHresult
  loc_9FAD1A: CStr2Ansi
End Sub

Public Sub EjecutarRsCls(sSelect) '9DD004
  'Data Table: 403F90
  loc_9DCFEC: ILdRf sSelect
  loc_9DCFEF: FStStrCopy var_88
  loc_9DCFF2: FLdPr Me
  loc_9DCFF5: MemLdRfVar from_stack_1.global_56
  loc_9DCFF8: ILdRf var_88
  loc_9DCFFB: ImpAdCallFPR4  = Proc_272_61_A5AD44()
  loc_9DD000: ExitProcHresult
  loc_9DD001: BranchT loc_9DD320
End Sub

Public Sub EjecutarRsClsGis(sSelect) '9DD180
  'Data Table: 403F90
  loc_9DD168: ILdRf sSelect
  loc_9DD16B: FStStrCopy var_88
  loc_9DD16E: FLdPr Me
  loc_9DD171: MemLdRfVar from_stack_1.global_56
  loc_9DD174: ILdRf var_88
  loc_9DD177: ImpAdCallFPR4  = Proc_272_62_A5B9BC()
  loc_9DD17C: ExitProcHresult
  loc_9DD17D: CDateR8
  loc_9DD17E: FFree1Str arg_1803
End Sub

Public Sub Requery() '9DEE90
  'Data Table: 403F90
  loc_9DEE70: FLdPr Me
  loc_9DEE73: MemLdRfVar from_stack_1.RsFrm
  loc_9DEE76: ImpAdCallFPR4  = Proc_272_60_AAEEE0()
  loc_9DEE7B: LitVarStr var_94, "Primary"
  loc_9DEE80: PopAdLdVar
  loc_9DEE81: FLdPr Me
  loc_9DEE84: LateIdCall
  loc_9DEE8C: ExitProcHresult
  loc_9DEE8D: DOC
End Sub

Public Property Get DataSource(arg_18) '9FA644
  'Data Table: 403F90
  loc_9FA620: ZeroRetVal
  loc_9FA622: FLdRfVar var_8C
  loc_9FA625: FLdPr Me
  loc_9FA628: MemLdPr RsFrm
  loc_9FA62B:  = Me.DataSource
  loc_9FA630: ILdRf var_8C
  loc_9FA633: CastAd
  loc_9FA636: FStAdFunc var_88
  loc_9FA639: FFree1Ad var_8C
  loc_9FA63C: ExitProcCbHresult
  loc_9FA642: FFree1Var arg_1803 = ""
End Sub

Private Function Proc_273_23_9F96D0() '9F96D0
  'Data Table: 403F90
  loc_9F96AC: LitStr "Primary"
  loc_9F96AF: FLdPr Me
  loc_9F96B2: LateIdLdVar var_94 DispID_4 0
  loc_9F96B9: CastAdVar Me
  loc_9F96BD: FStAdFunc var_98
  loc_9F96C0: FLdPr var_98
  loc_9F96C8: FFree1Ad var_98
  loc_9F96CB: FFree1Var var_94 = ""
  loc_9F96CE: ExitProcHresult
End Function

Private Function Proc_273_24_9E073C(arg_C) '9E073C
  'Data Table: 403F90
  loc_9E0720: ILdI4 arg_C
  loc_9E0723: FStStrCopy var_88
  loc_9E0726: ILdRf var_88
  loc_9E0729: LitStr "Primary"
  loc_9E072C: EqStr
  loc_9E072E: BranchF loc_9E073B
  loc_9E0731: FLdPr Me
  loc_9E0734: MemLdStr RsFrm
  loc_9E0737: IStAd
  loc_9E073B: ExitProcHresult
End Function
