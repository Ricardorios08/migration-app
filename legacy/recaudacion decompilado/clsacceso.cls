VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsacceso"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '4039D4
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4039E3
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4039F2
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9ED9E4
  'Data Table: 4038B8
  loc_9ED9BC: FLdRfVar var_88
  loc_9ED9BF: FLdPr Me
  loc_9ED9C2: MemLdPr RsFrm
  loc_9ED9C5:  = Me.RecordCount
  loc_9ED9CA: ILdRf var_88
  loc_9ED9CD: LitI4 0
  loc_9ED9D2: GtI4
  loc_9ED9D3: BranchF loc_9ED9E1
  loc_9ED9D6: FLdPr Me
  loc_9ED9D9: MemLdPr RsFrm
  loc_9ED9DC: Me.MoveFirst
  loc_9ED9E1: ExitProcHresult
End Sub

Public Sub MoveLast() '9ED98C
  'Data Table: 4038B8
  loc_9ED964: FLdRfVar var_88
  loc_9ED967: FLdPr Me
  loc_9ED96A: MemLdPr RsFrm
  loc_9ED96D:  = Me.RecordCount
  loc_9ED972: ILdRf var_88
  loc_9ED975: LitI4 0
  loc_9ED97A: GtI4
  loc_9ED97B: BranchF loc_9ED989
  loc_9ED97E: FLdPr Me
  loc_9ED981: MemLdPr RsFrm
  loc_9ED984: Me.MoveLast
  loc_9ED989: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6C3A0
  'Data Table: 4038B8
  loc_A6C328: FLdRfVar var_86
  loc_A6C32B: FLdPr Me
  loc_A6C32E: MemLdPr RsFrm
  loc_A6C331:  = Me.EOF
  loc_A6C336: FLdI2 var_86
  loc_A6C339: NotI4
  loc_A6C33A: FLdRfVar var_8C
  loc_A6C33D: FLdPr Me
  loc_A6C340: MemLdPr RsFrm
  loc_A6C343:  = Me.RecordCount
  loc_A6C348: ILdRf var_8C
  loc_A6C34B: LitI4 0
  loc_A6C350: GtI4
  loc_A6C351: AndI4
  loc_A6C352: BranchF loc_A6C360
  loc_A6C355: FLdPr Me
  loc_A6C358: MemLdPr RsFrm
  loc_A6C35B: Me.MoveNext
  loc_A6C360: FLdRfVar var_86
  loc_A6C363: FLdPr Me
  loc_A6C366: MemLdPr RsFrm
  loc_A6C369:  = Me.EOF
  loc_A6C36E: FLdI2 var_86
  loc_A6C371: FLdRfVar var_8C
  loc_A6C374: FLdPr Me
  loc_A6C377: MemLdPr RsFrm
  loc_A6C37A:  = Me.RecordCount
  loc_A6C37F: ILdRf var_8C
  loc_A6C382: LitI4 0
  loc_A6C387: GtI4
  loc_A6C388: AndI4
  loc_A6C389: BranchF loc_A6C39C
  loc_A6C38C: ImpAdCallFPR4 Beep()
  loc_A6C391: FLdPr Me
  loc_A6C394: MemLdPr RsFrm
  loc_A6C397: Me.MoveLast
  loc_A6C39C: ExitProcHresult
  loc_A6C39D: LitI2FP 1
End Sub

Public Sub MoveSiguiente() '9B0D2C
  'Data Table: 4038B8
  loc_9B0D20: FLdPr Me
  loc_9B0D23: MemLdPr RsFrm
  loc_9B0D26: Me.MoveNext
  loc_9B0D2B: ExitProcHresult
End Sub

Public Sub Move(iValor) '9BB42C
  'Data Table: 4038B8
  loc_9BB418: LitVar_Missing var_94
  loc_9BB41B: PopAdLdVar
  loc_9BB41C: ILdI2 iValor
  loc_9BB41F: CI4UI1
  loc_9BB420: FLdPr Me
  loc_9BB423: MemLdPr RsFrm
  loc_9BB426: Me.Move from_stack_1, from_stack_2
  loc_9BB42B: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6DD38
  'Data Table: 4038B8
  loc_A6DCC0: FLdRfVar var_86
  loc_A6DCC3: FLdPr Me
  loc_A6DCC6: MemLdPr RsFrm
  loc_A6DCC9:  = Me.BOF
  loc_A6DCCE: FLdI2 var_86
  loc_A6DCD1: NotI4
  loc_A6DCD2: FLdRfVar var_8C
  loc_A6DCD5: FLdPr Me
  loc_A6DCD8: MemLdPr RsFrm
  loc_A6DCDB:  = Me.RecordCount
  loc_A6DCE0: ILdRf var_8C
  loc_A6DCE3: LitI4 0
  loc_A6DCE8: GtI4
  loc_A6DCE9: AndI4
  loc_A6DCEA: BranchF loc_A6DCF8
  loc_A6DCED: FLdPr Me
  loc_A6DCF0: MemLdPr RsFrm
  loc_A6DCF3: Me.MovePrevious
  loc_A6DCF8: FLdRfVar var_86
  loc_A6DCFB: FLdPr Me
  loc_A6DCFE: MemLdPr RsFrm
  loc_A6DD01:  = Me.BOF
  loc_A6DD06: FLdI2 var_86
  loc_A6DD09: FLdRfVar var_8C
  loc_A6DD0C: FLdPr Me
  loc_A6DD0F: MemLdPr RsFrm
  loc_A6DD12:  = Me.RecordCount
  loc_A6DD17: ILdRf var_8C
  loc_A6DD1A: LitI4 0
  loc_A6DD1F: GtI4
  loc_A6DD20: AndI4
  loc_A6DD21: BranchF loc_A6DD34
  loc_A6DD24: ImpAdCallFPR4 Beep()
  loc_A6DD29: FLdPr Me
  loc_A6DD2C: MemLdPr RsFrm
  loc_A6DD2F: Me.MoveFirst
  loc_A6DD34: ExitProcHresult
End Sub

Public Property Get EOF() '9DC9CC
  'Data Table: 4038B8
  loc_9DC9B0: FLdRfVar var_88
  loc_9DC9B3: FLdPr Me
  loc_9DC9B6: MemLdPr RsFrm
  loc_9DC9B9:  = Me.EOF
  loc_9DC9BE: FLdI2 var_88
  loc_9DC9C1: FStI2 var_86
  loc_9DC9C4: ExitProcCbHresult
  loc_9DC9CA: CI4R8
End Sub

Public Property Get BOF() '9DC980
  'Data Table: 4038B8
  loc_9DC964: FLdRfVar var_88
  loc_9DC967: FLdPr Me
  loc_9DC96A: MemLdPr RsFrm
  loc_9DC96D:  = Me.BOF
  loc_9DC972: FLdI2 var_88
  loc_9DC975: FStI2 var_86
  loc_9DC978: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B4178
  'Data Table: 4038B8
  loc_9B4168: ILdI4 sOrden
  loc_9B416B: FLdPr Me
  loc_9B416E: MemLdPr RsFrm
  loc_9B4171: Me.Sort = from_stack_1
  loc_9B4176: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DDC20
  'Data Table: 4038B8
  loc_9DDC00: LitVar_Missing var_94
  loc_9DDC03: PopAdLdVar
  loc_9DDC04: LitI4 1
  loc_9DDC09: LitI4 0
  loc_9DDC0E: ILdI4 sFind
  loc_9DDC11: FLdPr Me
  loc_9DDC14: MemLdPr RsFrm
  loc_9DDC17: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DDC1C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9BB470
  'Data Table: 4038B8
  loc_9BB45C: ILdI4 sCriterio
  loc_9BB45F: CVarStr var_94
  loc_9BB462: PopAdLdVar
  loc_9BB463: FLdPr Me
  loc_9BB466: MemLdPr RsFrm
  loc_9BB469: Me.Filter = from_stack_1
  loc_9BB46E: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9DC850
  'Data Table: 4038B8
  loc_9DC834: FLdRfVar var_8C
  loc_9DC837: FLdPr Me
  loc_9DC83A: MemLdPr RsFrm
  loc_9DC83D:  = Me.AbsolutePosition
  loc_9DC842: ILdRf var_8C
  loc_9DC845: FStR4 var_88
  loc_9DC848: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9DD0EC
  'Data Table: 4038B8
  loc_9DD0D0: FLdRfVar var_8C
  loc_9DD0D3: FLdPr Me
  loc_9DD0D6: MemLdPr RsFrm
  loc_9DD0D9:  = Me.RecordCount
  loc_9DD0DE: ILdRf var_8C
  loc_9DD0E1: FStR4 var_88
  loc_9DD0E4: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) '9FA254
  'Data Table: 4038B8
  loc_9FA22C: ILdRf sSelect
  loc_9FA22F: FStStrCopy var_88
  loc_9FA232: FLdPr Me
  loc_9FA235: MemLdRfVar from_stack_1.RsFrm
  loc_9FA238: ILdRf var_88
  loc_9FA23B: ImpAdCallFPR4 Proc_272_58_A794E0(, )
  loc_9FA240: LitVarStr var_98, "Primary"
  loc_9FA245: PopAdLdVar
  loc_9FA246: FLdPr Me
  loc_9FA249: LateIdCall
  loc_9FA251: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '9DC5EC
  'Data Table: 4038B8
  loc_9DC5D4: ILdRf sSelect
  loc_9DC5D7: FStStrCopy var_88
  loc_9DC5DA: FLdPr Me
  loc_9DC5DD: MemLdRfVar from_stack_1.global_56
  loc_9DC5E0: ILdRf var_88
  loc_9DC5E3: ImpAdCallFPR4 Proc_272_61_A5AD44(, )
  loc_9DC5E8: ExitProcHresult
End Sub

Public Sub Requery() '9DDDB0
  'Data Table: 4038B8
  loc_9DDD90: FLdPr Me
  loc_9DDD93: MemLdRfVar from_stack_1.RsFrm
  loc_9DDD96: ImpAdCallFPR4 Proc_272_60_AAEEE0()
  loc_9DDD9B: LitVarStr var_94, "Primary"
  loc_9DDDA0: PopAdLdVar
  loc_9DDDA1: FLdPr Me
  loc_9DDDA4: LateIdCall
  loc_9DDDAC: ExitProcHresult
End Sub

Public Property Get DataSource() '9FB670
  'Data Table: 4038B8
  loc_9FB64C: ZeroRetVal
  loc_9FB64E: FLdRfVar var_8C
  loc_9FB651: FLdPr Me
  loc_9FB654: MemLdPr RsFrm
  loc_9FB657:  = Me.DataSource
  loc_9FB65C: ILdRf var_8C
  loc_9FB65F: CastAd
  loc_9FB662: FStAdFunc var_88
  loc_9FB665: FFree1Ad var_8C
  loc_9FB668: ExitProcCbHresult
End Sub

Private Function Proc_14_20_9FA364() '9FA364
  'Data Table: 4038B8
  loc_9FA340: LitStr "Primary"
  loc_9FA343: FLdPr Me
  loc_9FA346: LateIdLdVar var_94 DispID_4 0
  loc_9FA34D: CastAdVar Me
  loc_9FA351: FStAdFunc var_98
  loc_9FA354: FLdPr var_98
  loc_9FA35C: FFree1Ad var_98
  loc_9FA35F: FFree1Var var_94 = ""
  loc_9FA362: ExitProcHresult
End Function

Private Function Proc_14_21_9DDDFC(arg_C) '9DDDFC
  'Data Table: 4038B8
  loc_9DDDE0: ILdI4 arg_C
  loc_9DDDE3: FStStrCopy var_88
  loc_9DDDE6: ILdRf var_88
  loc_9DDDE9: LitStr "Primary"
  loc_9DDDEC: EqStr
  loc_9DDDEE: BranchF loc_9DDDFB
  loc_9DDDF1: FLdPr Me
  loc_9DDDF4: MemLdStr RsFrm
  loc_9DDDF7: IStAd
  loc_9DDDFB: ExitProcHresult
End Function
