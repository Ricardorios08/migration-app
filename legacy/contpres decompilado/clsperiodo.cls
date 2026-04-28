VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsperiodo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '4065AC
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4065BB
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4065CA
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96EACC
  'Data Table: 406494
  loc_96EAA4: FLdRfVar var_88
  loc_96EAA7: FLdPr Me
  loc_96EAAA: MemLdPr RsFrm
  loc_96EAAD:  = Me.RecordCount
  loc_96EAB2: ILdRf var_88
  loc_96EAB5: LitI4 0
  loc_96EABA: GtI4
  loc_96EABB: BranchF loc_96EAC9
  loc_96EABE: FLdPr Me
  loc_96EAC1: MemLdPr RsFrm
  loc_96EAC4: Me.MoveFirst
  loc_96EAC9: ExitProcHresult
End Sub

Public Sub MoveLast() '96EA74
  'Data Table: 406494
  loc_96EA4C: FLdRfVar var_88
  loc_96EA4F: FLdPr Me
  loc_96EA52: MemLdPr RsFrm
  loc_96EA55:  = Me.RecordCount
  loc_96EA5A: ILdRf var_88
  loc_96EA5D: LitI4 0
  loc_96EA62: GtI4
  loc_96EA63: BranchF loc_96EA71
  loc_96EA66: FLdPr Me
  loc_96EA69: MemLdPr RsFrm
  loc_96EA6C: Me.MoveLast
  loc_96EA71: ExitProcHresult
End Sub

Public Sub MoveNext() '99CEC0
  'Data Table: 406494
  loc_99CE48: FLdRfVar var_86
  loc_99CE4B: FLdPr Me
  loc_99CE4E: MemLdPr RsFrm
  loc_99CE51:  = Me.EOF
  loc_99CE56: FLdI2 var_86
  loc_99CE59: NotI4
  loc_99CE5A: FLdRfVar var_8C
  loc_99CE5D: FLdPr Me
  loc_99CE60: MemLdPr RsFrm
  loc_99CE63:  = Me.RecordCount
  loc_99CE68: ILdRf var_8C
  loc_99CE6B: LitI4 0
  loc_99CE70: GtI4
  loc_99CE71: AndI4
  loc_99CE72: BranchF loc_99CE80
  loc_99CE75: FLdPr Me
  loc_99CE78: MemLdPr RsFrm
  loc_99CE7B: Me.MoveNext
  loc_99CE80: FLdRfVar var_86
  loc_99CE83: FLdPr Me
  loc_99CE86: MemLdPr RsFrm
  loc_99CE89:  = Me.EOF
  loc_99CE8E: FLdI2 var_86
  loc_99CE91: FLdRfVar var_8C
  loc_99CE94: FLdPr Me
  loc_99CE97: MemLdPr RsFrm
  loc_99CE9A:  = Me.RecordCount
  loc_99CE9F: ILdRf var_8C
  loc_99CEA2: LitI4 0
  loc_99CEA7: GtI4
  loc_99CEA8: AndI4
  loc_99CEA9: BranchF loc_99CEBC
  loc_99CEAC: ImpAdCallFPR4 Beep()
  loc_99CEB1: FLdPr Me
  loc_99CEB4: MemLdPr RsFrm
  loc_99CEB7: Me.MoveLast
  loc_99CEBC: ExitProcHresult
  loc_99CEBD: ExitProcCy
End Sub

Public Sub MoveSiguiente() '941FA8
  'Data Table: 406494
  loc_941F9C: FLdPr Me
  loc_941F9F: MemLdPr RsFrm
  loc_941FA2: Me.MoveNext
  loc_941FA7: ExitProcHresult
End Sub

Public Sub MovePrevious() '99CF68
  'Data Table: 406494
  loc_99CEF0: FLdRfVar var_86
  loc_99CEF3: FLdPr Me
  loc_99CEF6: MemLdPr RsFrm
  loc_99CEF9:  = Me.BOF
  loc_99CEFE: FLdI2 var_86
  loc_99CF01: NotI4
  loc_99CF02: FLdRfVar var_8C
  loc_99CF05: FLdPr Me
  loc_99CF08: MemLdPr RsFrm
  loc_99CF0B:  = Me.RecordCount
  loc_99CF10: ILdRf var_8C
  loc_99CF13: LitI4 0
  loc_99CF18: GtI4
  loc_99CF19: AndI4
  loc_99CF1A: BranchF loc_99CF28
  loc_99CF1D: FLdPr Me
  loc_99CF20: MemLdPr RsFrm
  loc_99CF23: Me.MovePrevious
  loc_99CF28: FLdRfVar var_86
  loc_99CF2B: FLdPr Me
  loc_99CF2E: MemLdPr RsFrm
  loc_99CF31:  = Me.BOF
  loc_99CF36: FLdI2 var_86
  loc_99CF39: FLdRfVar var_8C
  loc_99CF3C: FLdPr Me
  loc_99CF3F: MemLdPr RsFrm
  loc_99CF42:  = Me.RecordCount
  loc_99CF47: ILdRf var_8C
  loc_99CF4A: LitI4 0
  loc_99CF4F: GtI4
  loc_99CF50: AndI4
  loc_99CF51: BranchF loc_99CF64
  loc_99CF54: ImpAdCallFPR4 Beep()
  loc_99CF59: FLdPr Me
  loc_99CF5C: MemLdPr RsFrm
  loc_99CF5F: Me.MoveFirst
  loc_99CF64: ExitProcHresult
  loc_99CF65: FStVarUnkFunc
End Sub

Public Property Get EOF() '959764
  'Data Table: 406494
  loc_959748: FLdRfVar var_88
  loc_95974B: FLdPr Me
  loc_95974E: MemLdPr RsFrm
  loc_959751:  = Me.EOF
  loc_959756: FLdI2 var_88
  loc_959759: FStI2 var_86
  loc_95975C: ExitProcCbHresult
  loc_959762: MemStI2 global_7236
End Sub

Public Property Get BOF() '959718
  'Data Table: 406494
  loc_9596FC: FLdRfVar var_88
  loc_9596FF: FLdPr Me
  loc_959702: MemLdPr RsFrm
  loc_959705:  = Me.BOF
  loc_95970A: FLdI2 var_88
  loc_95970D: FStI2 var_86
  loc_959710: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '947444
  'Data Table: 406494
  loc_947434: ILdI4 sOrden
  loc_947437: FLdPr Me
  loc_94743A: MemLdPr RsFrm
  loc_94743D: Me.Sort = from_stack_1
  loc_947442: ExitProcHresult
End Sub

Public Sub Find(sFind) '969380
  'Data Table: 406494
  loc_969360: LitVar_Missing var_94
  loc_969363: PopAdLdVar
  loc_969364: LitI4 1
  loc_969369: LitI4 0
  loc_96936E: ILdI4 sFind
  loc_969371: FLdPr Me
  loc_969374: MemLdPr RsFrm
  loc_969377: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96937C: ExitProcHresult
  loc_96937F: CStr2Ansi
End Sub

Public Property Get AbsolutePosition() '965D68
  'Data Table: 406494
  loc_965D4C: FLdRfVar var_8C
  loc_965D4F: FLdPr Me
  loc_965D52: MemLdPr RsFrm
  loc_965D55:  = Me.AbsolutePosition
  loc_965D5A: ILdRf var_8C
  loc_965D5D: FStR4 var_88
  loc_965D60: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '965BA0
  'Data Table: 406494
  loc_965B84: FLdRfVar var_8C
  loc_965B87: FLdPr Me
  loc_965B8A: MemLdPr RsFrm
  loc_965B8D:  = Me.RecordCount
  loc_965B92: ILdRf var_8C
  loc_965B95: FStR4 var_88
  loc_965B98: ExitProcCbHresult
  loc_965B9E: CStr2Ansi
End Sub

Public Sub AddNew() '93FDC0
  'Data Table: 406494
  loc_93FDBC: ExitProcHresult
  loc_93FDBD: FnStrComp3Var
End Sub

Public Sub Delete() '93FE28
  'Data Table: 406494
  loc_93FE24: ExitProcHresult
  loc_93FE25: CBoolVarNull
End Sub

Public Sub RedefineRS(sSelect) '974AE0
  'Data Table: 406494
  loc_974AB8: ILdRf sSelect
  loc_974ABB: FStStrCopy var_88
  loc_974ABE: FLdPr Me
  loc_974AC1: MemLdRfVar from_stack_1.RsFrm
  loc_974AC4: ILdRf var_88
  loc_974AC7: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_974ACC: LitVarStr var_98, "Primary"
  loc_974AD1: PopAdLdVar
  loc_974AD2: FLdPr Me
  loc_974AD5: LateIdCall
  loc_974ADD: ExitProcHresult
  loc_974ADE: MemLdRfVar from_stack_1.global_7220
End Sub

Public Sub EjecutarRsCls(sSelect) '950BF8
  'Data Table: 406494
  loc_950BE4: ILdRf sSelect
  loc_950BE7: FStStrCopy var_88
  loc_950BEA: ImpAdLdRf MemVar_C3D0B0
  loc_950BED: ILdRf var_88
  loc_950BF0: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_950BF5: ExitProcHresult
  loc_950BF6: Ary1LdCy
End Sub

Public Sub Requery() '969420
  'Data Table: 406494
  loc_969400: FLdPr Me
  loc_969403: MemLdRfVar from_stack_1.RsFrm
  loc_969406: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_96940B: LitVarStr var_94, "Primary"
  loc_969410: PopAdLdVar
  loc_969411: FLdPr Me
  loc_969414: LateIdCall
  loc_96941C: ExitProcHresult
End Sub

Public Property Get DataSource(arg_1C) '974ED0
  'Data Table: 406494
  loc_974EAC: ZeroRetVal
  loc_974EAE: FLdRfVar var_8C
  loc_974EB1: FLdPr Me
  loc_974EB4: MemLdPr RsFrm
  loc_974EB7:  = Me.DataSource
  loc_974EBC: ILdRf var_8C
  loc_974EBF: CastAd
  loc_974EC2: FStAdFunc var_88
  loc_974EC5: FFree1Ad var_8C
  loc_974EC8: ExitProcCbHresult
  loc_974ECE: FLdI2 arg_1C7A
End Sub

Private Function Proc_26_20_974DBC() '974DBC
  'Data Table: 406494
  loc_974D98: LitStr "Primary"
  loc_974D9B: FLdPr Me
  loc_974D9E: LateIdLdVar var_94 DispID_4 0
  loc_974DA5: CastAdVar Me
  loc_974DA9: FStAdFunc var_98
  loc_974DAC: FLdPr var_98
  loc_974DB4: FFree1Ad var_98
  loc_974DB7: FFree1Var var_94 = ""
  loc_974DBA: ExitProcHresult
End Function
