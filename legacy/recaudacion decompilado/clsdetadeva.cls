VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsdetadeva"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0FD94
  'Data Table: 433D04
  loc_A0FD58: FLdRfVar var_8C
  loc_A0FD5B: FLdRfVar var_88
  loc_A0FD5E: FLdPr Me
  loc_A0FD61: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A0FD66: FLdPr var_88
  loc_A0FD69:  = Me.RecordCount
  loc_A0FD6E: ILdRf var_8C
  loc_A0FD71: LitI4 0
  loc_A0FD76: GtI4
  loc_A0FD77: FFree1Ad var_88
  loc_A0FD7A: BranchF loc_A0FD93
  loc_A0FD7D: FLdRfVar var_88
  loc_A0FD80: FLdPr Me
  loc_A0FD83: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A0FD88: FLdPr var_88
  loc_A0FD8B: Me.MoveFirst
  loc_A0FD90: FFree1Ad var_88
  loc_A0FD93: ExitProcHresult
End Sub

Public Sub MoveLast() 'A10034
  'Data Table: 433D04
  loc_A0FFF8: FLdRfVar var_8C
  loc_A0FFFB: FLdRfVar var_88
  loc_A0FFFE: FLdPr Me
  loc_A10001: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A10006: FLdPr var_88
  loc_A10009:  = Me.RecordCount
  loc_A1000E: ILdRf var_8C
  loc_A10011: LitI4 0
  loc_A10016: GtI4
  loc_A10017: FFree1Ad var_88
  loc_A1001A: BranchF loc_A10033
  loc_A1001D: FLdRfVar var_88
  loc_A10020: FLdPr Me
  loc_A10023: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A10028: FLdPr var_88
  loc_A1002B: Me.MoveLast
  loc_A10030: FFree1Ad var_88
  loc_A10033: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9E734
  'Data Table: 433D04
  loc_A9E678: FLdRfVar var_8A
  loc_A9E67B: FLdRfVar var_88
  loc_A9E67E: FLdPr Me
  loc_A9E681: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A9E686: FLdPr var_88
  loc_A9E689:  = Me.EOF
  loc_A9E68E: FLdI2 var_8A
  loc_A9E691: NotI4
  loc_A9E692: FLdRfVar var_94
  loc_A9E695: FLdRfVar var_90
  loc_A9E698: FLdPr Me
  loc_A9E69B: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A9E6A0: FLdPr var_90
  loc_A9E6A3:  = Me.RecordCount
  loc_A9E6A8: ILdRf var_94
  loc_A9E6AB: LitI4 0
  loc_A9E6B0: GtI4
  loc_A9E6B1: AndI4
  loc_A9E6B2: FFreeAd var_88 = ""
  loc_A9E6B9: BranchF loc_A9E6D2
  loc_A9E6BC: FLdRfVar var_88
  loc_A9E6BF: FLdPr Me
  loc_A9E6C2: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A9E6C7: FLdPr var_88
  loc_A9E6CA: Me.MoveNext
  loc_A9E6CF: FFree1Ad var_88
  loc_A9E6D2: FLdRfVar var_8A
  loc_A9E6D5: FLdRfVar var_88
  loc_A9E6D8: FLdPr Me
  loc_A9E6DB: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A9E6E0: FLdPr var_88
  loc_A9E6E3:  = Me.EOF
  loc_A9E6E8: FLdI2 var_8A
  loc_A9E6EB: FLdRfVar var_94
  loc_A9E6EE: FLdRfVar var_90
  loc_A9E6F1: FLdPr Me
  loc_A9E6F4: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A9E6F9: FLdPr var_90
  loc_A9E6FC:  = Me.RecordCount
  loc_A9E701: ILdRf var_94
  loc_A9E704: LitI4 0
  loc_A9E709: GtI4
  loc_A9E70A: AndI4
  loc_A9E70B: FFreeAd var_88 = ""
  loc_A9E712: BranchF loc_A9E730
  loc_A9E715: ImpAdCallFPR4 Beep()
  loc_A9E71A: FLdRfVar var_88
  loc_A9E71D: FLdPr Me
  loc_A9E720: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A9E725: FLdPr var_88
  loc_A9E728: Me.MoveLast
  loc_A9E72D: FFree1Ad var_88
  loc_A9E730: ExitProcHresult
  loc_A9E731: Ary1LdFPR4
  loc_A9E732: UMiCy
End Sub

Public Sub MoveSiguiente() '9D363C
  'Data Table: 433D04
  loc_9D3624: FLdRfVar var_88
  loc_9D3627: FLdPr Me
  loc_9D362A: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9D362F: FLdPr var_88
  loc_9D3632: Me.MoveNext
  loc_9D3637: FFree1Ad var_88
  loc_9D363A: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E7AA8
  'Data Table: 433D04
  loc_9E7A88: LitVar_Missing var_98
  loc_9E7A8B: PopAdLdVar
  loc_9E7A8C: ILdI2 iValor
  loc_9E7A8F: CI4UI1
  loc_9E7A90: FLdRfVar var_88
  loc_9E7A93: FLdPr Me
  loc_9E7A96: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9E7A9B: FLdPr var_88
  loc_9E7A9E: Me.Move from_stack_1, from_stack_2
  loc_9E7AA3: FFree1Ad var_88
  loc_9E7AA6: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9C3F0
  'Data Table: 433D04
  loc_A9C334: FLdRfVar var_8A
  loc_A9C337: FLdRfVar var_88
  loc_A9C33A: FLdPr Me
  loc_A9C33D: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A9C342: FLdPr var_88
  loc_A9C345:  = Me.BOF
  loc_A9C34A: FLdI2 var_8A
  loc_A9C34D: NotI4
  loc_A9C34E: FLdRfVar var_94
  loc_A9C351: FLdRfVar var_90
  loc_A9C354: FLdPr Me
  loc_A9C357: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A9C35C: FLdPr var_90
  loc_A9C35F:  = Me.RecordCount
  loc_A9C364: ILdRf var_94
  loc_A9C367: LitI4 0
  loc_A9C36C: GtI4
  loc_A9C36D: AndI4
  loc_A9C36E: FFreeAd var_88 = ""
  loc_A9C375: BranchF loc_A9C38E
  loc_A9C378: FLdRfVar var_88
  loc_A9C37B: FLdPr Me
  loc_A9C37E: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A9C383: FLdPr var_88
  loc_A9C386: Me.MovePrevious
  loc_A9C38B: FFree1Ad var_88
  loc_A9C38E: FLdRfVar var_8A
  loc_A9C391: FLdRfVar var_88
  loc_A9C394: FLdPr Me
  loc_A9C397: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A9C39C: FLdPr var_88
  loc_A9C39F:  = Me.BOF
  loc_A9C3A4: FLdI2 var_8A
  loc_A9C3A7: FLdRfVar var_94
  loc_A9C3AA: FLdRfVar var_90
  loc_A9C3AD: FLdPr Me
  loc_A9C3B0: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A9C3B5: FLdPr var_90
  loc_A9C3B8:  = Me.RecordCount
  loc_A9C3BD: ILdRf var_94
  loc_A9C3C0: LitI4 0
  loc_A9C3C5: GtI4
  loc_A9C3C6: AndI4
  loc_A9C3C7: FFreeAd var_88 = ""
  loc_A9C3CE: BranchF loc_A9C3EC
  loc_A9C3D1: ImpAdCallFPR4 Beep()
  loc_A9C3D6: FLdRfVar var_88
  loc_A9C3D9: FLdPr Me
  loc_A9C3DC: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A9C3E1: FLdPr var_88
  loc_A9C3E4: Me.MoveFirst
  loc_A9C3E9: FFree1Ad var_88
  loc_A9C3EC: ExitProcHresult
End Sub

Public Property Get EOF() '9F5624
  'Data Table: 433D04
  loc_9F55FC: FLdRfVar var_8E
  loc_9F55FF: FLdRfVar var_8C
  loc_9F5602: FLdPr Me
  loc_9F5605: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9F560A: FLdPr var_8C
  loc_9F560D:  = Me.EOF
  loc_9F5612: FLdI2 var_8E
  loc_9F5615: FStI2 var_86
  loc_9F5618: FFree1Ad var_8C
  loc_9F561B: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F55C8
  'Data Table: 433D04
  loc_9F55A0: FLdRfVar var_8E
  loc_9F55A3: FLdRfVar var_8C
  loc_9F55A6: FLdPr Me
  loc_9F55A9: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9F55AE: FLdPr var_8C
  loc_9F55B1:  = Me.BOF
  loc_9F55B6: FLdI2 var_8E
  loc_9F55B9: FStI2 var_86
  loc_9F55BC: FFree1Ad var_8C
  loc_9F55BF: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9DEC5C
  'Data Table: 433D04
  loc_9DEC40: ILdI4 sOrden
  loc_9DEC43: FLdRfVar var_88
  loc_9DEC46: FLdPr Me
  loc_9DEC49: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9DEC4E: FLdPr var_88
  loc_9DEC51: Me.Sort = from_stack_1
  loc_9DEC56: FFree1Ad var_88
  loc_9DEC59: ExitProcHresult
  loc_9DEC5A: Ary1StFPR8
End Sub

Public Sub Find(sFind) '9F5510
  'Data Table: 433D04
  loc_9F54E8: LitVar_Missing var_98
  loc_9F54EB: PopAdLdVar
  loc_9F54EC: LitI4 1
  loc_9F54F1: LitI4 0
  loc_9F54F6: ILdI4 sFind
  loc_9F54F9: FLdRfVar var_88
  loc_9F54FC: FLdPr Me
  loc_9F54FF: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9F5504: FLdPr var_88
  loc_9F5507: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F550C: FFree1Ad var_88
  loc_9F550F: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F54B4
  'Data Table: 433D04
  loc_9F548C: FLdRfVar var_90
  loc_9F548F: FLdRfVar var_8C
  loc_9F5492: FLdPr Me
  loc_9F5495: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9F549A: FLdPr var_8C
  loc_9F549D:  = Me.AbsolutePosition
  loc_9F54A2: ILdRf var_90
  loc_9F54A5: FStR4 var_88
  loc_9F54A8: FFree1Ad var_8C
  loc_9F54AB: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F5458
  'Data Table: 433D04
  loc_9F5430: FLdRfVar var_90
  loc_9F5433: FLdRfVar var_8C
  loc_9F5436: FLdPr Me
  loc_9F5439: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9F543E: FLdPr var_8C
  loc_9F5441:  = Me.RecordCount
  loc_9F5446: ILdRf var_90
  loc_9F5449: FStR4 var_88
  loc_9F544C: FFree1Ad var_8C
  loc_9F544F: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiDeva, CodiConc, FeveDedv, DetaDedv, ImpoDedv) 'AED998
  'Data Table: 433D04
  loc_AED85C: ILdRf CodiDeva
  loc_AED85F: FStStrCopy var_88
  loc_AED862: ILdRf CodiConc
  loc_AED865: FStStrCopy var_8C
  loc_AED868: ILdRf FeveDedv
  loc_AED86B: FStStrCopy var_90
  loc_AED86E: ILdRf DetaDedv
  loc_AED871: FStStrCopy var_94
  loc_AED874: FLdRfVar var_9C
  loc_AED877: ILdRf var_88
  loc_AED87A: from_stack_2v = NuevoRegistro(from_stack_1v)
  loc_AED87F: ILdRf var_9C
  loc_AED882: FStR4 var_98
  loc_AED885: LitI2_Byte 0
  loc_AED887: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AED88C: FStFPR8 var_160
  loc_AED88F: LitStr "INSERT INTO detadeva (CodiDeva, NumeDedv, FealDedv, FeveDedv, CodiConc, DetaDedv, ImpoDedv) VALUES ('"
  loc_AED892: ILdRf var_88
  loc_AED895: ConcatStr
  loc_AED896: FStStrNoPop var_A0
  loc_AED899: LitStr "',"
  loc_AED89C: ConcatStr
  loc_AED89D: FStStrNoPop var_A4
  loc_AED8A0: ILdRf var_98
  loc_AED8A3: CStrI4
  loc_AED8A5: FStStrNoPop var_A8
  loc_AED8A8: ConcatStr
  loc_AED8A9: FStStrNoPop var_AC
  loc_AED8AC: LitStr ",'"
  loc_AED8AF: ConcatStr
  loc_AED8B0: FStStrNoPop var_F0
  loc_AED8B3: LitI4 1
  loc_AED8B8: LitI4 1
  loc_AED8BD: LitVarStr var_DC, "yyyy-mm-dd"
  loc_AED8C2: FStVarCopyObj var_EC
  loc_AED8C5: FLdRfVar var_EC
  loc_AED8C8: FLdFPR8 var_160
  loc_AED8CB: CVarDate var_CC
  loc_AED8CF: ImpAdCallI2 Format$(, )
  loc_AED8D4: FStStrNoPop var_F4
  loc_AED8D7: ConcatStr
  loc_AED8D8: FStStrNoPop var_F8
  loc_AED8DB: LitStr "','"
  loc_AED8DE: ConcatStr
  loc_AED8DF: FStStrNoPop var_12C
  loc_AED8E2: LitI4 1
  loc_AED8E7: LitI4 1
  loc_AED8EC: LitVarStr var_118, "yyyy-mm-dd"
  loc_AED8F1: FStVarCopyObj var_128
  loc_AED8F4: FLdRfVar var_128
  loc_AED8F7: FLdRfVar var_90
  loc_AED8FA: CVarRef
  loc_AED8FF: ImpAdCallI2 Format$(, )
  loc_AED904: FStStrNoPop var_130
  loc_AED907: ConcatStr
  loc_AED908: FStStrNoPop var_134
  loc_AED90B: LitStr "','"
  loc_AED90E: ConcatStr
  loc_AED90F: FStStrNoPop var_138
  loc_AED912: ILdRf var_8C
  loc_AED915: ConcatStr
  loc_AED916: FStStrNoPop var_13C
  loc_AED919: LitStr "','"
  loc_AED91C: ConcatStr
  loc_AED91D: FStStrNoPop var_140
  loc_AED920: ILdRf var_94
  loc_AED923: ConcatStr
  loc_AED924: FStStrNoPop var_144
  loc_AED927: LitStr "',"
  loc_AED92A: ConcatStr
  loc_AED92B: FStStrNoPop var_14C
  loc_AED92E: LitI4 0
  loc_AED933: LitI4 -1
  loc_AED938: LitI4 1
  loc_AED93D: LitStr "."
  loc_AED940: LitStr ","
  loc_AED943: FLdFPR8 ImpoDedv
  loc_AED946: CStrR8
  loc_AED948: FStStrNoPop var_148
  loc_AED94B: ImpAdCallI2 Replace(, , , , , )
  loc_AED950: FStStrNoPop var_150
  loc_AED953: ConcatStr
  loc_AED954: FStStrNoPop var_154
  loc_AED957: LitStr ")"
  loc_AED95A: ConcatStr
  loc_AED95B: FStStrNoPop var_158
  loc_AED95E: Call EjecutarRs2(from_stack_1v)
  loc_AED963: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_AED98C: FFreeVar var_CC = "": var_EC = ""
  loc_AED995: ExitProcHresult
End Sub

Public Sub Delete() 'A23770
  'Data Table: 433D04
  loc_A23728: FLdRfVar var_8C
  loc_A2372B: FLdRfVar var_88
  loc_A2372E: FLdPr Me
  loc_A23731: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A23736: FLdPr var_88
  loc_A23739:  = Me.RecordCount
  loc_A2373E: ILdRf var_8C
  loc_A23741: LitI4 0
  loc_A23746: GtI4
  loc_A23747: FFree1Ad var_88
  loc_A2374A: BranchF loc_A2376D
  loc_A2374D: LitI4 1
  loc_A23752: FLdRfVar var_88
  loc_A23755: FLdPr Me
  loc_A23758: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A2375D: FLdPr var_88
  loc_A23760: Me.Delete
  loc_A23765: FFree1Ad var_88
  loc_A23768: Call MoveNext()
  loc_A2376D: ExitProcHresult
  loc_A2376E: GtI2
  loc_A2376F: OrI4
End Sub

Public Sub Requery() 'A001DC
  'Data Table: 433D04
  loc_A001AC: LitI4 -1
  loc_A001B1: FLdRfVar var_88
  loc_A001B4: FLdPr Me
  loc_A001B7: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A001BC: FLdPr var_88
  loc_A001BF: Me.Requery from_stack_1
  loc_A001C4: FFree1Ad var_88
  loc_A001C7: LitVarStr var_98, "Primary"
  loc_A001CC: PopAdLdVar
  loc_A001CD: FLdPr Me
  loc_A001D0: LateIdCall
  loc_A001D8: ExitProcHresult
End Sub

Public Sub Update() 'A25118
  'Data Table: 433D04
  loc_A250D4: FLdRfVar var_88
  loc_A250D7: FLdPr Me
  loc_A250DA: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A250DF: FLdZeroAd var_88
  loc_A250E2: FStAdFunc var_8C
  loc_A250E5: LitI4 3
  loc_A250EA: FLdPr var_8C
  loc_A250ED: Me.UpdateBatch
  loc_A250F2: FLdRfVar var_90
  loc_A250F5: FLdPr var_8C
  loc_A250F8:  = Me.EditMode
  loc_A250FD: ILdRf var_90
  loc_A25100: LitI4 2
  loc_A25105: EqI4
  loc_A25106: BranchF loc_A2510E
  loc_A25109: Call MoveLast()
  loc_A2510E: LitNothing
  loc_A25110: FStAd var_8C 
  loc_A25114: ExitProcHresult
End Sub

Public Sub Cancel() 'A4CD1C
  'Data Table: 433D04
  loc_A4CCC8: FLdRfVar var_88
  loc_A4CCCB: FLdPr Me
  loc_A4CCCE: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A4CCD3: FLdZeroAd var_88
  loc_A4CCD6: FStAdFunc var_8C
  loc_A4CCD9: FLdRfVar var_90
  loc_A4CCDC: FLdPr var_8C
  loc_A4CCDF:  = Me.RecordCount
  loc_A4CCE4: ILdRf var_90
  loc_A4CCE7: LitI4 0
  loc_A4CCEC: GtI4
  loc_A4CCED: BranchF loc_A4CD14
  loc_A4CCF0: FLdPr var_8C
  loc_A4CCF3: Me.CancelUpdate
  loc_A4CCF8: FLdRfVar var_90
  loc_A4CCFB: FLdPr var_8C
  loc_A4CCFE:  = Me.EditMode
  loc_A4CD03: ILdRf var_90
  loc_A4CD06: LitI4 2
  loc_A4CD0B: EqI4
  loc_A4CD0C: BranchF loc_A4CD14
  loc_A4CD0F: Call MoveFirst()
  loc_A4CD14: LitNothing
  loc_A4CD16: FStAd var_8C 
  loc_A4CD1A: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FCE74
  'Data Table: 433D04
  loc_9FCE48: FLdRfVar var_90
  loc_9FCE4B: FLdRfVar var_8C
  loc_9FCE4E: FLdPr Me
  loc_9FCE51: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9FCE56: FLdPr var_8C
  loc_9FCE59:  = Me.EditMode
  loc_9FCE5E: ILdRf var_90
  loc_9FCE61: LitI4 0
  loc_9FCE66: NeI4
  loc_9FCE67: FStI2 var_86
  loc_9FCE6A: FFree1Ad var_8C
  loc_9FCE6D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A6E720
  'Data Table: 433D04
  loc_A6E6AC: ILdRf sSelect
  loc_A6E6AF: FStStrCopy var_88
  loc_A6E6B2: LitNothing
  loc_A6E6B4: CastAd
  loc_A6E6B7: FStAdFuncNoPop
  loc_A6E6BA: FLdPr Me
  loc_A6E6BD: Call clsdetadeva.global_4406412Set(from_stack_1v)
  loc_A6E6C2: FFree1Ad var_8C
  loc_A6E6C5: New Recordset
  loc_A6E6C9: FStAdFuncNoPop
  loc_A6E6CC: FLdPr Me
  loc_A6E6CF: Call clsdetadeva.global_4406412Set(from_stack_1v)
  loc_A6E6D4: FFree1Ad var_8C
  loc_A6E6D7: LitI4 -1
  loc_A6E6DC: LitI4 3
  loc_A6E6E1: LitI4 3
  loc_A6E6E6: ImpAdLdI4 MemVar_D9301C
  loc_A6E6E9: CVarAd
  loc_A6E6ED: PopAdLdVar
  loc_A6E6EE: ILdRf var_88
  loc_A6E6F1: CVarStr var_9C
  loc_A6E6F4: PopAdLdVar
  loc_A6E6F5: FLdRfVar var_8C
  loc_A6E6F8: FLdPr Me
  loc_A6E6FB: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A6E700: FLdPr var_8C
  loc_A6E703: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6E708: FFree1Ad var_8C
  loc_A6E70B: LitVarStr var_9C, "Primary"
  loc_A6E710: PopAdLdVar
  loc_A6E711: FLdPr Me
  loc_A6E714: LateIdCall
  loc_A6E71C: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A59F98
  'Data Table: 433D04
  loc_A59F38: ILdRf sSelect
  loc_A59F3B: FStStrCopy var_88
  loc_A59F3E: LitNothing
  loc_A59F40: CastAd
  loc_A59F43: FStAdFuncNoPop
  loc_A59F46: FLdPr Me
  loc_A59F49: Call clsdetadeva.global_4406412Set(from_stack_1v)
  loc_A59F4E: FFree1Ad var_8C
  loc_A59F51: New Recordset
  loc_A59F55: FStAdFuncNoPop
  loc_A59F58: FLdPr Me
  loc_A59F5B: Call clsdetadeva.global_4406412Set(from_stack_1v)
  loc_A59F60: FFree1Ad var_8C
  loc_A59F63: LitI4 -1
  loc_A59F68: LitI4 3
  loc_A59F6D: LitI4 3
  loc_A59F72: ImpAdLdI4 MemVar_D9301C
  loc_A59F75: CVarAd
  loc_A59F79: PopAdLdVar
  loc_A59F7A: ILdRf var_88
  loc_A59F7D: CVarStr var_9C
  loc_A59F80: PopAdLdVar
  loc_A59F81: FLdRfVar var_8C
  loc_A59F84: FLdPr Me
  loc_A59F87: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A59F8C: FLdPr var_8C
  loc_A59F8F: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A59F94: FFree1Ad var_8C
  loc_A59F97: ExitProcHresult
End Sub

Public Sub Encontrar(CodiRamo) '9ECEDC
  'Data Table: 433D04
  loc_9ECEBC: LitStr "CodiRamo = "
  loc_9ECEBF: ILdRf CodiRamo
  loc_9ECEC2: CStrI4
  loc_9ECEC4: FStStrNoPop var_88
  loc_9ECEC7: ConcatStr
  loc_9ECEC8: PopTmpLdAdStr
  loc_9ECECC: Call Find(from_stack_1v)
  loc_9ECED1: FFreeStr var_88 = ""
  loc_9ECED8: ExitProcHresult
  loc_9ECED9: FLdPr Me
End Sub

Public Property Get DataSource() 'A09248
  'Data Table: 433D04
  loc_A09218: ZeroRetVal
  loc_A0921A: FLdRfVar var_90
  loc_A0921D: FLdRfVar var_8C
  loc_A09220: FLdPr Me
  loc_A09223: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A09228: FLdPr var_8C
  loc_A0922B:  = Me.DataSource
  loc_A09230: ILdRf var_90
  loc_A09233: CastAd
  loc_A09236: FStAdFunc var_88
  loc_A09239: FFreeAd var_8C = ""
  loc_A09240: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9F4EF4
  'Data Table: 433D04
  loc_9F4ECC: FLdRfVar var_90
  loc_9F4ECF: FLdRfVar var_8C
  loc_9F4ED2: FLdPr Me
  loc_9F4ED5: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9F4EDA: FLdPr var_8C
  loc_9F4EDD:  = Me.EditMode
  loc_9F4EE2: ILdRf var_90
  loc_9F4EE5: FStR4 var_88
  loc_9F4EE8: FFree1Ad var_8C
  loc_9F4EEB: ExitProcCbHresult
  loc_9F4EF1: ImpAdLdFPR8 MemVar_A3F6DC
End Sub

Public Property Get CodiDeva() 'A53FEC
  'Data Table: 433D04
  loc_A53F9C: ZeroRetVal
  loc_A53F9E: FLdRfVar var_B4
  loc_A53FA1: FLdRfVar var_A4
  loc_A53FA4: LitVarStr var_A0, "CodiDeva"
  loc_A53FA9: PopAdLdVar
  loc_A53FAA: FLdRfVar var_90
  loc_A53FAD: FLdRfVar var_8C
  loc_A53FB0: FLdPr Me
  loc_A53FB3: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A53FB8: FLdPr var_8C
  loc_A53FBB:  = Me.Fields
  loc_A53FC0: FLdPr var_90
  loc_A53FC3: from_stack_2 = Me.Item(from_stack_1)
  loc_A53FC8: FLdPr var_A4
  loc_A53FCB:  = Me.Value
  loc_A53FD0: FLdRfVar var_B4
  loc_A53FD3: CStrVarTmp
  loc_A53FD4: FStStr var_88
  loc_A53FD7: FFreeAd var_8C = "": var_90 = ""
  loc_A53FE0: FFree1Var var_B4 = ""
  loc_A53FE3: ExitProcCbHresult
End Sub

Public Property Let CodiDeva(vDato) '9FF8DC
  'Data Table: 433D04
  loc_9FF8B0: ILdRf vDato
  loc_9FF8B3: FStStrCopy var_88
  loc_9FF8B6: ILdRf var_88
  loc_9FF8B9: CVarStr var_AC
  loc_9FF8BC: PopAdLdVar
  loc_9FF8BD: LitVarStr var_9C, "CodiDeva"
  loc_9FF8C2: PopAdLdVar
  loc_9FF8C3: FLdRfVar var_8C
  loc_9FF8C6: FLdPr Me
  loc_9FF8C9: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9FF8CE: FLdPr var_8C
  loc_9FF8D1: Me.Collect = from_stack_1
  loc_9FF8D6: FFree1Ad var_8C
  loc_9FF8D9: ExitProcHresult
End Sub

Public Property Get NumeDedv() 'A4F3E8
  'Data Table: 433D04
  loc_A4F39C: FLdRfVar var_B4
  loc_A4F39F: FLdRfVar var_A4
  loc_A4F3A2: LitVarStr var_A0, "NumeDedv"
  loc_A4F3A7: PopAdLdVar
  loc_A4F3A8: FLdRfVar var_90
  loc_A4F3AB: FLdRfVar var_8C
  loc_A4F3AE: FLdPr Me
  loc_A4F3B1: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A4F3B6: FLdPr var_8C
  loc_A4F3B9:  = Me.Fields
  loc_A4F3BE: FLdPr var_90
  loc_A4F3C1: from_stack_2 = Me.Item(from_stack_1)
  loc_A4F3C6: FLdPr var_A4
  loc_A4F3C9:  = Me.Value
  loc_A4F3CE: FLdRfVar var_B4
  loc_A4F3D1: CI4Var
  loc_A4F3D3: FStR4 var_88
  loc_A4F3D6: FFreeAd var_8C = "": var_90 = ""
  loc_A4F3DF: FFree1Var var_B4 = ""
  loc_A4F3E2: ExitProcCbHresult
End Sub

Public Property Let NumeDedv(vDato) '9F4D84
  'Data Table: 433D04
  loc_9F4D5C: ILdRf vDato
  loc_9F4D5F: CVarI4
  loc_9F4D63: PopAdLdVar
  loc_9F4D64: LitVarStr var_98, "NumeDedv"
  loc_9F4D69: PopAdLdVar
  loc_9F4D6A: FLdRfVar var_88
  loc_9F4D6D: FLdPr Me
  loc_9F4D70: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9F4D75: FLdPr var_88
  loc_9F4D78: Me.Collect = from_stack_1
  loc_9F4D7D: FFree1Ad var_88
  loc_9F4D80: ExitProcHresult
  loc_9F4D81: FLdPr Me
End Sub

Public Property Get FealDedv() 'A56D04
  'Data Table: 433D04
  loc_A56CB4: ZeroRetVal
  loc_A56CB6: FLdRfVar var_B4
  loc_A56CB9: FLdRfVar var_A4
  loc_A56CBC: LitVarStr var_A0, "FealDedv"
  loc_A56CC1: PopAdLdVar
  loc_A56CC2: FLdRfVar var_90
  loc_A56CC5: FLdRfVar var_8C
  loc_A56CC8: FLdPr Me
  loc_A56CCB: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A56CD0: FLdPr var_8C
  loc_A56CD3:  = Me.Fields
  loc_A56CD8: FLdPr var_90
  loc_A56CDB: from_stack_2 = Me.Item(from_stack_1)
  loc_A56CE0: FLdPr var_A4
  loc_A56CE3:  = Me.Value
  loc_A56CE8: FLdRfVar var_B4
  loc_A56CEB: CStrVarTmp
  loc_A56CEC: FStStr var_88
  loc_A56CEF: FFreeAd var_8C = "": var_90 = ""
  loc_A56CF8: FFree1Var var_B4 = ""
  loc_A56CFB: ExitProcCbHresult
  loc_A56D01: FnStrComp3Var
End Sub

Public Property Let FealDedv(vDato) '9FF7B0
  'Data Table: 433D04
  loc_9FF784: ILdRf vDato
  loc_9FF787: FStStrCopy var_88
  loc_9FF78A: ILdRf var_88
  loc_9FF78D: CVarStr var_AC
  loc_9FF790: PopAdLdVar
  loc_9FF791: LitVarStr var_9C, "FealDedv"
  loc_9FF796: PopAdLdVar
  loc_9FF797: FLdRfVar var_8C
  loc_9FF79A: FLdPr Me
  loc_9FF79D: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9FF7A2: FLdPr var_8C
  loc_9FF7A5: Me.Collect = from_stack_1
  loc_9FF7AA: FFree1Ad var_8C
  loc_9FF7AD: ExitProcHresult
End Sub

Public Property Get FeveDedv() 'A59610
  'Data Table: 433D04
  loc_A595C0: ZeroRetVal
  loc_A595C2: FLdRfVar var_B4
  loc_A595C5: FLdRfVar var_A4
  loc_A595C8: LitVarStr var_A0, "FeveDedv"
  loc_A595CD: PopAdLdVar
  loc_A595CE: FLdRfVar var_90
  loc_A595D1: FLdRfVar var_8C
  loc_A595D4: FLdPr Me
  loc_A595D7: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A595DC: FLdPr var_8C
  loc_A595DF:  = Me.Fields
  loc_A595E4: FLdPr var_90
  loc_A595E7: from_stack_2 = Me.Item(from_stack_1)
  loc_A595EC: FLdPr var_A4
  loc_A595EF:  = Me.Value
  loc_A595F4: FLdRfVar var_B4
  loc_A595F7: CStrVarTmp
  loc_A595F8: FStStr var_88
  loc_A595FB: FFreeAd var_8C = "": var_90 = ""
  loc_A59604: FFree1Var var_B4 = ""
  loc_A59607: ExitProcCbHresult
  loc_A5960D: VCallAd Control_ID_
End Sub

Public Property Let FeveDedv(vDato) '9FF6E8
  'Data Table: 433D04
  loc_9FF6BC: ILdRf vDato
  loc_9FF6BF: FStStrCopy var_88
  loc_9FF6C2: ILdRf var_88
  loc_9FF6C5: CVarStr var_AC
  loc_9FF6C8: PopAdLdVar
  loc_9FF6C9: LitVarStr var_9C, "FeveDedv"
  loc_9FF6CE: PopAdLdVar
  loc_9FF6CF: FLdRfVar var_8C
  loc_9FF6D2: FLdPr Me
  loc_9FF6D5: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9FF6DA: FLdPr var_8C
  loc_9FF6DD: Me.Collect = from_stack_1
  loc_9FF6E2: FFree1Ad var_8C
  loc_9FF6E5: ExitProcHresult
End Sub

Public Property Get CodiConc() 'A58424
  'Data Table: 433D04
  loc_A583D4: ZeroRetVal
  loc_A583D6: FLdRfVar var_B4
  loc_A583D9: FLdRfVar var_A4
  loc_A583DC: LitVarStr var_A0, "ConcConc"
  loc_A583E1: PopAdLdVar
  loc_A583E2: FLdRfVar var_90
  loc_A583E5: FLdRfVar var_8C
  loc_A583E8: FLdPr Me
  loc_A583EB: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A583F0: FLdPr var_8C
  loc_A583F3:  = Me.Fields
  loc_A583F8: FLdPr var_90
  loc_A583FB: from_stack_2 = Me.Item(from_stack_1)
  loc_A58400: FLdPr var_A4
  loc_A58403:  = Me.Value
  loc_A58408: FLdRfVar var_B4
  loc_A5840B: CStrVarTmp
  loc_A5840C: FStStr var_88
  loc_A5840F: FFreeAd var_8C = "": var_90 = ""
  loc_A58418: FFree1Var var_B4 = ""
  loc_A5841B: ExitProcCbHresult
End Sub

Public Property Let CodiConc(vDato) '9FF684
  'Data Table: 433D04
  loc_9FF658: ILdRf vDato
  loc_9FF65B: FStStrCopy var_88
  loc_9FF65E: ILdRf var_88
  loc_9FF661: CVarStr var_AC
  loc_9FF664: PopAdLdVar
  loc_9FF665: LitVarStr var_9C, "CodiConc"
  loc_9FF66A: PopAdLdVar
  loc_9FF66B: FLdRfVar var_8C
  loc_9FF66E: FLdPr Me
  loc_9FF671: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9FF676: FLdPr var_8C
  loc_9FF679: Me.Collect = from_stack_1
  loc_9FF67E: FFree1Ad var_8C
  loc_9FF681: ExitProcHresult
End Sub

Public Property Get DetaDedv() 'A57E5C
  'Data Table: 433D04
  loc_A57E0C: ZeroRetVal
  loc_A57E0E: FLdRfVar var_B4
  loc_A57E11: FLdRfVar var_A4
  loc_A57E14: LitVarStr var_A0, "DetaDedv"
  loc_A57E19: PopAdLdVar
  loc_A57E1A: FLdRfVar var_90
  loc_A57E1D: FLdRfVar var_8C
  loc_A57E20: FLdPr Me
  loc_A57E23: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A57E28: FLdPr var_8C
  loc_A57E2B:  = Me.Fields
  loc_A57E30: FLdPr var_90
  loc_A57E33: from_stack_2 = Me.Item(from_stack_1)
  loc_A57E38: FLdPr var_A4
  loc_A57E3B:  = Me.Value
  loc_A57E40: FLdRfVar var_B4
  loc_A57E43: CStrVarTmp
  loc_A57E44: FStStr var_88
  loc_A57E47: FFreeAd var_8C = "": var_90 = ""
  loc_A57E50: FFree1Var var_B4 = ""
  loc_A57E53: ExitProcCbHresult
  loc_A57E59: EqR4
  loc_A57E5A: CVarStr var_73A8
End Sub

Public Property Let DetaDedv(vDato) '9FF620
  'Data Table: 433D04
  loc_9FF5F4: ILdRf vDato
  loc_9FF5F7: FStStrCopy var_88
  loc_9FF5FA: ILdRf var_88
  loc_9FF5FD: CVarStr var_AC
  loc_9FF600: PopAdLdVar
  loc_9FF601: LitVarStr var_9C, "DetaDedv"
  loc_9FF606: PopAdLdVar
  loc_9FF607: FLdRfVar var_8C
  loc_9FF60A: FLdPr Me
  loc_9FF60D: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9FF612: FLdPr var_8C
  loc_9FF615: Me.Collect = from_stack_1
  loc_9FF61A: FFree1Ad var_8C
  loc_9FF61D: ExitProcHresult
End Sub

Public Property Get ImpoDedv() 'A4FF64
  'Data Table: 433D04
  loc_A4FF18: FLdRfVar var_B8
  loc_A4FF1B: FLdRfVar var_A8
  loc_A4FF1E: LitVarStr var_A4, "ImpoDedv"
  loc_A4FF23: PopAdLdVar
  loc_A4FF24: FLdRfVar ImpoDedv
  loc_A4FF27: FLdRfVar var_90
  loc_A4FF2A: FLdPr Me
  loc_A4FF2D: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_A4FF32: FLdPr var_90
  loc_A4FF35:  = Me.Fields
  loc_A4FF3A: FLdPr ImpoDedv
  loc_A4FF3D: from_stack_2 = Me.Item(from_stack_1)
  loc_A4FF42: FLdPr var_A8
  loc_A4FF45:  = Me.Value
  loc_A4FF4A: FLdRfVar var_B8
  loc_A4FF4D: CR4Var
  loc_A4FF4E: FStFPR8 var_8C
  loc_A4FF51: FFreeAd var_90 = "": ImpoDedv = ""
  loc_A4FF5A: FFree1Var var_B8 = ""
  loc_A4FF5D: ExitProcCbHresult
End Sub

Public Property Let ImpoDedv(vDato) '9F49EC
  'Data Table: 433D04
  loc_9F49C4: FLdFPR8 vDato
  loc_9F49C7: CVarR8
  loc_9F49CB: PopAdLdVar
  loc_9F49CC: LitVarStr var_98, "ImpoDedv"
  loc_9F49D1: PopAdLdVar
  loc_9F49D2: FLdRfVar var_88
  loc_9F49D5: FLdPr Me
  loc_9F49D8: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9F49DD: FLdPr var_88
  loc_9F49E0: Me.Collect = from_stack_1
  loc_9F49E5: FFree1Ad var_88
  loc_9F49E8: ExitProcHresult
  loc_9F49E9: MulR8
  loc_9F49EA: SubR4
End Sub

Public Function NuevoRegistro(CodiDeva) 'ACEA58
  'Data Table: 433D04
  loc_ACE938: ILdRf CodiDeva
  loc_ACE93B: FStStrCopy var_8C
  loc_ACE93E: New Recordset
  loc_ACE942: FStAdFuncNoPop
  loc_ACE945: FLdPr Me
  loc_ACE948: Call clsdetadeva.global_4406412Set(from_stack_1v)
  loc_ACE94D: FFree1Ad var_90
  loc_ACE950: LitI4 -1
  loc_ACE955: LitI4 3
  loc_ACE95A: LitI4 3
  loc_ACE95F: ImpAdLdI4 MemVar_D9301C
  loc_ACE962: CVarAd
  loc_ACE966: PopAdLdVar
  loc_ACE967: LitStr "SELECT CodiDeva, NumeDedv FROM detadeva WHERE CodiDeva = '"
  loc_ACE96A: ILdRf var_8C
  loc_ACE96D: ConcatStr
  loc_ACE96E: FStStrNoPop NuevoRegistro
  loc_ACE971: LitStr "' ORDER BY CodiDeva ASC "
  loc_ACE974: ConcatStr
  loc_ACE975: CVarStr var_A4
  loc_ACE978: PopAdLdVar
  loc_ACE979: FLdRfVar var_90
  loc_ACE97C: FLdPr Me
  loc_ACE97F: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_ACE984: FLdPr var_90
  loc_ACE987: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_ACE98C: FFree1Str NuevoRegistro
  loc_ACE98F: FFree1Ad var_90
  loc_ACE992: FFree1Var var_A4 = ""
  loc_ACE995: FLdRfVar var_B8
  loc_ACE998: FLdRfVar var_90
  loc_ACE99B: FLdPr Me
  loc_ACE99E: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_ACE9A3: FLdPr var_90
  loc_ACE9A6:  = Me.RecordCount
  loc_ACE9AB: ILdRf var_B8
  loc_ACE9AE: LitI4 0
  loc_ACE9B3: GtI4
  loc_ACE9B4: FFree1Ad var_90
  loc_ACE9B7: BranchF loc_ACEA1F
  loc_ACE9BA: FLdRfVar var_90
  loc_ACE9BD: FLdPr Me
  loc_ACE9C0: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_ACE9C5: FLdPr var_90
  loc_ACE9C8: Me.MoveLast
  loc_ACE9CD: FFree1Ad var_90
  loc_ACE9D0: FLdRfVar var_A4
  loc_ACE9D3: FLdRfVar var_C0
  loc_ACE9D6: LitVarStr var_B4, "NumeDedv"
  loc_ACE9DB: PopAdLdVar
  loc_ACE9DC: FLdRfVar var_BC
  loc_ACE9DF: FLdRfVar var_90
  loc_ACE9E2: FLdPr Me
  loc_ACE9E5: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_ACE9EA: FLdPr var_90
  loc_ACE9ED:  = Me.Fields
  loc_ACE9F2: FLdPr var_BC
  loc_ACE9F5: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE9FA: FLdPr var_C0
  loc_ACE9FD:  = Me.Value
  loc_ACEA02: FLdRfVar var_A4
  loc_ACEA05: FnCLngVar
  loc_ACEA07: LitI4 1
  loc_ACEA0C: AddI4
  loc_ACEA0D: FStR4 var_88
  loc_ACEA10: FFreeAd var_90 = "": var_BC = ""
  loc_ACEA19: FFree1Var var_A4 = ""
  loc_ACEA1C: Branch loc_ACEA27
  loc_ACEA1F: LitI4 1
  loc_ACEA24: FStR4 var_88
  loc_ACEA27: FLdRfVar var_90
  loc_ACEA2A: FLdPr Me
  loc_ACEA2D: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_ACEA32: FLdPr var_90
  loc_ACEA35: Me.Close
  loc_ACEA3A: FFree1Ad var_90
  loc_ACEA3D: LitNothing
  loc_ACEA3F: CastAd
  loc_ACEA42: FStAdFuncNoPop
  loc_ACEA45: FLdPr Me
  loc_ACEA48: Call clsdetadeva.global_4406412Set(from_stack_1v)
  loc_ACEA4D: FFree1Ad var_90
  loc_ACEA50: ExitProcCbHresult
  loc_ACEA56: FLdPr var_7400
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E6E80
  'Data Table: 433D04
  loc_9E6E64: ILdRf pError
  loc_9E6E67: FStAd var_88 
  loc_9E6E6B: ILdRf pRecordset
  loc_9E6E6E: FStAd var_8C 
  loc_9E6E72: FLdPr Me
  loc_9E6E75: RaiseEvent
  loc_9E6E7D: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9F860
  'Data Table: 433D04
  loc_A9F7A0: ILdRf pRecordset
  loc_A9F7A3: FStAd var_88 
  loc_A9F7A7: ILdRf adReason
  loc_A9F7AA: FStR4 var_90
  loc_A9F7AD: ILdRf var_90
  loc_A9F7B0: LitI4 1
  loc_A9F7B5: EqI4
  loc_A9F7B6: BranchF loc_A9F7BC
  loc_A9F7B9: Branch loc_A9F84F
  loc_A9F7BC: ILdRf var_90
  loc_A9F7BF: LitI4 9
  loc_A9F7C4: EqI4
  loc_A9F7C5: BranchF loc_A9F7CB
  loc_A9F7C8: Branch loc_A9F84F
  loc_A9F7CB: ILdRf var_90
  loc_A9F7CE: LitI4 2
  loc_A9F7D3: EqI4
  loc_A9F7D4: BranchF loc_A9F7DA
  loc_A9F7D7: Branch loc_A9F84F
  loc_A9F7DA: ILdRf var_90
  loc_A9F7DD: LitI4 &HB
  loc_A9F7E2: EqI4
  loc_A9F7E3: BranchF loc_A9F7E9
  loc_A9F7E6: Branch loc_A9F84F
  loc_A9F7E9: ILdRf var_90
  loc_A9F7EC: LitI4 &HA
  loc_A9F7F1: EqI4
  loc_A9F7F2: BranchF loc_A9F7F8
  loc_A9F7F5: Branch loc_A9F84F
  loc_A9F7F8: ILdRf var_90
  loc_A9F7FB: LitI4 7
  loc_A9F800: EqI4
  loc_A9F801: BranchF loc_A9F807
  loc_A9F804: Branch loc_A9F84F
  loc_A9F807: ILdRf var_90
  loc_A9F80A: LitI4 8
  loc_A9F80F: EqI4
  loc_A9F810: BranchF loc_A9F816
  loc_A9F813: Branch loc_A9F84F
  loc_A9F816: ILdRf var_90
  loc_A9F819: LitI4 5
  loc_A9F81E: EqI4
  loc_A9F81F: BranchF loc_A9F825
  loc_A9F822: Branch loc_A9F84F
  loc_A9F825: ILdRf var_90
  loc_A9F828: LitI4 6
  loc_A9F82D: EqI4
  loc_A9F82E: BranchF loc_A9F834
  loc_A9F831: Branch loc_A9F84F
  loc_A9F834: ILdRf var_90
  loc_A9F837: LitI4 4
  loc_A9F83C: EqI4
  loc_A9F83D: BranchF loc_A9F843
  loc_A9F840: Branch loc_A9F84F
  loc_A9F843: ILdRf var_90
  loc_A9F846: LitI4 3
  loc_A9F84B: EqI4
  loc_A9F84C: BranchF loc_A9F84F
  loc_A9F84F: FLdI2 var_8A
  loc_A9F852: BranchF loc_A9F85D
  loc_A9F855: LitI4 4
  loc_A9F85A: IStI4 adStatus
  loc_A9F85D: ExitProcHresult
End Sub

Private Function Proc_65_40_9F5118() '9F5118
  'Data Table: 433D04
  loc_9F50F4: LitStr "Primary"
  loc_9F50F7: FLdPr Me
  loc_9F50FA: LateIdLdVar var_94 DispID_4 0
  loc_9F5101: CastAdVar Me
  loc_9F5105: FStAdFunc var_98
  loc_9F5108: FLdPr var_98
  loc_9F5110: FFree1Ad var_98
  loc_9F5113: FFree1Var var_94 = ""
  loc_9F5116: ExitProcHresult
End Function

Private Function Proc_65_41_9F4FA8(arg_C) '9F4FA8
  'Data Table: 433D04
  loc_9F4F84: ILdI4 arg_C
  loc_9F4F87: FStStrCopy var_88
  loc_9F4F8A: ILdRf var_88
  loc_9F4F8D: LitStr "Primary"
  loc_9F4F90: EqStr
  loc_9F4F92: BranchF loc_9F4FA7
  loc_9F4F95: FLdRfVar var_8C
  loc_9F4F98: FLdPr Me
  loc_9F4F9B: from_stack_1v = clsdetadeva.global_4406412Get()
  loc_9F4FA0: FLdZeroAd var_8C
  loc_9F4FA3: IStAdFunc
  loc_9F4FA7: ExitProcHresult
End Function

Public Function global_4406412Get() '4340DC
  global_4406412Get = global_4406412
End Function

Public Sub global_4406412Put(Value) '4340F6
  global_4406412 = Value
End Sub

Public Sub global_4406412Set(Value) '434110
  global_4406412 = Value
End Sub

Public Function global_4406412Get() '43412A
  global_4406412Get = global_4406412
End Function

Public Sub global_4406412Put(Value) '434144
  global_4406412 = Value
End Sub

Public Sub global_4406412Set(Value) '43415E
  global_4406412 = Value
End Sub

Public Function global_4406412Get() '434178
  global_4406412Get = global_4406412
End Function

Public Sub global_4406412Put(Value) '434192
  global_4406412 = Value
End Sub

Public Sub global_4406412Set(Value) '4341AC
  global_4406412 = Value
End Sub
