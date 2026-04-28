VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsdetapago"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0B484
  'Data Table: 472298
  loc_A0B448: FLdRfVar var_8C
  loc_A0B44B: FLdRfVar var_88
  loc_A0B44E: FLdPr Me
  loc_A0B451: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A0B456: FLdPr var_88
  loc_A0B459:  = Me.RecordCount
  loc_A0B45E: ILdRf var_8C
  loc_A0B461: LitI4 0
  loc_A0B466: GtI4
  loc_A0B467: FFree1Ad var_88
  loc_A0B46A: BranchF loc_A0B483
  loc_A0B46D: FLdRfVar var_88
  loc_A0B470: FLdPr Me
  loc_A0B473: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A0B478: FLdPr var_88
  loc_A0B47B: Me.MoveFirst
  loc_A0B480: FFree1Ad var_88
  loc_A0B483: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0B414
  'Data Table: 472298
  loc_A0B3D8: FLdRfVar var_8C
  loc_A0B3DB: FLdRfVar var_88
  loc_A0B3DE: FLdPr Me
  loc_A0B3E1: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A0B3E6: FLdPr var_88
  loc_A0B3E9:  = Me.RecordCount
  loc_A0B3EE: ILdRf var_8C
  loc_A0B3F1: LitI4 0
  loc_A0B3F6: GtI4
  loc_A0B3F7: FFree1Ad var_88
  loc_A0B3FA: BranchF loc_A0B413
  loc_A0B3FD: FLdRfVar var_88
  loc_A0B400: FLdPr Me
  loc_A0B403: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A0B408: FLdPr var_88
  loc_A0B40B: Me.MoveLast
  loc_A0B410: FFree1Ad var_88
  loc_A0B413: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9DEA0
  'Data Table: 472298
  loc_A9DDE4: FLdRfVar var_8A
  loc_A9DDE7: FLdRfVar var_88
  loc_A9DDEA: FLdPr Me
  loc_A9DDED: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A9DDF2: FLdPr var_88
  loc_A9DDF5:  = Me.EOF
  loc_A9DDFA: FLdI2 var_8A
  loc_A9DDFD: NotI4
  loc_A9DDFE: FLdRfVar var_94
  loc_A9DE01: FLdRfVar var_90
  loc_A9DE04: FLdPr Me
  loc_A9DE07: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A9DE0C: FLdPr var_90
  loc_A9DE0F:  = Me.RecordCount
  loc_A9DE14: ILdRf var_94
  loc_A9DE17: LitI4 0
  loc_A9DE1C: GtI4
  loc_A9DE1D: AndI4
  loc_A9DE1E: FFreeAd var_88 = ""
  loc_A9DE25: BranchF loc_A9DE3E
  loc_A9DE28: FLdRfVar var_88
  loc_A9DE2B: FLdPr Me
  loc_A9DE2E: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A9DE33: FLdPr var_88
  loc_A9DE36: Me.MoveNext
  loc_A9DE3B: FFree1Ad var_88
  loc_A9DE3E: FLdRfVar var_8A
  loc_A9DE41: FLdRfVar var_88
  loc_A9DE44: FLdPr Me
  loc_A9DE47: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A9DE4C: FLdPr var_88
  loc_A9DE4F:  = Me.EOF
  loc_A9DE54: FLdI2 var_8A
  loc_A9DE57: FLdRfVar var_94
  loc_A9DE5A: FLdRfVar var_90
  loc_A9DE5D: FLdPr Me
  loc_A9DE60: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A9DE65: FLdPr var_90
  loc_A9DE68:  = Me.RecordCount
  loc_A9DE6D: ILdRf var_94
  loc_A9DE70: LitI4 0
  loc_A9DE75: GtI4
  loc_A9DE76: AndI4
  loc_A9DE77: FFreeAd var_88 = ""
  loc_A9DE7E: BranchF loc_A9DE9C
  loc_A9DE81: ImpAdCallFPR4 Beep()
  loc_A9DE86: FLdRfVar var_88
  loc_A9DE89: FLdPr Me
  loc_A9DE8C: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A9DE91: FLdPr var_88
  loc_A9DE94: Me.MoveLast
  loc_A9DE99: FFree1Ad var_88
  loc_A9DE9C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9D14B0
  'Data Table: 472298
  loc_9D1498: FLdRfVar var_88
  loc_9D149B: FLdPr Me
  loc_9D149E: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9D14A3: FLdPr var_88
  loc_9D14A6: Me.MoveNext
  loc_9D14AB: FFree1Ad var_88
  loc_9D14AE: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E953C
  'Data Table: 472298
  loc_9E951C: LitVar_Missing var_98
  loc_9E951F: PopAdLdVar
  loc_9E9520: ILdI2 iValor
  loc_9E9523: CI4UI1
  loc_9E9524: FLdRfVar var_88
  loc_9E9527: FLdPr Me
  loc_9E952A: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9E952F: FLdPr var_88
  loc_9E9532: Me.Move from_stack_1, from_stack_2
  loc_9E9537: FFree1Ad var_88
  loc_9E953A: ExitProcHresult
End Sub

Public Sub MovePrevious() 'AA06A8
  'Data Table: 472298
  loc_AA05EC: FLdRfVar var_8A
  loc_AA05EF: FLdRfVar var_88
  loc_AA05F2: FLdPr Me
  loc_AA05F5: from_stack_1v = clsdetapago.global_4661792Get()
  loc_AA05FA: FLdPr var_88
  loc_AA05FD:  = Me.BOF
  loc_AA0602: FLdI2 var_8A
  loc_AA0605: NotI4
  loc_AA0606: FLdRfVar var_94
  loc_AA0609: FLdRfVar var_90
  loc_AA060C: FLdPr Me
  loc_AA060F: from_stack_1v = clsdetapago.global_4661792Get()
  loc_AA0614: FLdPr var_90
  loc_AA0617:  = Me.RecordCount
  loc_AA061C: ILdRf var_94
  loc_AA061F: LitI4 0
  loc_AA0624: GtI4
  loc_AA0625: AndI4
  loc_AA0626: FFreeAd var_88 = ""
  loc_AA062D: BranchF loc_AA0646
  loc_AA0630: FLdRfVar var_88
  loc_AA0633: FLdPr Me
  loc_AA0636: from_stack_1v = clsdetapago.global_4661792Get()
  loc_AA063B: FLdPr var_88
  loc_AA063E: Me.MovePrevious
  loc_AA0643: FFree1Ad var_88
  loc_AA0646: FLdRfVar var_8A
  loc_AA0649: FLdRfVar var_88
  loc_AA064C: FLdPr Me
  loc_AA064F: from_stack_1v = clsdetapago.global_4661792Get()
  loc_AA0654: FLdPr var_88
  loc_AA0657:  = Me.BOF
  loc_AA065C: FLdI2 var_8A
  loc_AA065F: FLdRfVar var_94
  loc_AA0662: FLdRfVar var_90
  loc_AA0665: FLdPr Me
  loc_AA0668: from_stack_1v = clsdetapago.global_4661792Get()
  loc_AA066D: FLdPr var_90
  loc_AA0670:  = Me.RecordCount
  loc_AA0675: ILdRf var_94
  loc_AA0678: LitI4 0
  loc_AA067D: GtI4
  loc_AA067E: AndI4
  loc_AA067F: FFreeAd var_88 = ""
  loc_AA0686: BranchF loc_AA06A4
  loc_AA0689: ImpAdCallFPR4 Beep()
  loc_AA068E: FLdRfVar var_88
  loc_AA0691: FLdPr Me
  loc_AA0694: from_stack_1v = clsdetapago.global_4661792Get()
  loc_AA0699: FLdPr var_88
  loc_AA069C: Me.MoveFirst
  loc_AA06A1: FFree1Ad var_88
  loc_AA06A4: ExitProcHresult
  loc_AA06A5: AryUnlock
End Sub

Public Property Get EOF() '9F7BE0
  'Data Table: 472298
  loc_9F7BB8: FLdRfVar var_8E
  loc_9F7BBB: FLdRfVar var_8C
  loc_9F7BBE: FLdPr Me
  loc_9F7BC1: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9F7BC6: FLdPr var_8C
  loc_9F7BC9:  = Me.EOF
  loc_9F7BCE: FLdI2 var_8E
  loc_9F7BD1: FStI2 var_86
  loc_9F7BD4: FFree1Ad var_8C
  loc_9F7BD7: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F7E64
  'Data Table: 472298
  loc_9F7E3C: FLdRfVar var_8E
  loc_9F7E3F: FLdRfVar var_8C
  loc_9F7E42: FLdPr Me
  loc_9F7E45: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9F7E4A: FLdPr var_8C
  loc_9F7E4D:  = Me.BOF
  loc_9F7E52: FLdI2 var_8E
  loc_9F7E55: FStI2 var_86
  loc_9F7E58: FFree1Ad var_8C
  loc_9F7E5B: ExitProcCbHresult
  loc_9F7E61: ImpAdLdI2 MemVar_48B008
End Sub

Public Sub Sort(sOrden) '9E226C
  'Data Table: 472298
  loc_9E2250: ILdI4 sOrden
  loc_9E2253: FLdRfVar var_88
  loc_9E2256: FLdPr Me
  loc_9E2259: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9E225E: FLdPr var_88
  loc_9E2261: Me.Sort = from_stack_1
  loc_9E2266: FFree1Ad var_88
  loc_9E2269: ExitProcHresult
  loc_9E226A: ModI2
End Sub

Public Sub Find(sFind) '9F7F1C
  'Data Table: 472298
  loc_9F7EF4: LitVar_Missing var_98
  loc_9F7EF7: PopAdLdVar
  loc_9F7EF8: LitI4 1
  loc_9F7EFD: LitI4 0
  loc_9F7F02: ILdI4 sFind
  loc_9F7F05: FLdRfVar var_88
  loc_9F7F08: FLdPr Me
  loc_9F7F0B: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9F7F10: FLdPr var_88
  loc_9F7F13: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F7F18: FFree1Ad var_88
  loc_9F7F1B: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F8480
  'Data Table: 472298
  loc_9F8458: FLdRfVar var_90
  loc_9F845B: FLdRfVar var_8C
  loc_9F845E: FLdPr Me
  loc_9F8461: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9F8466: FLdPr var_8C
  loc_9F8469:  = Me.AbsolutePosition
  loc_9F846E: ILdRf var_90
  loc_9F8471: FStR4 var_88
  loc_9F8474: FFree1Ad var_8C
  loc_9F8477: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F8A40
  'Data Table: 472298
  loc_9F8A18: FLdRfVar var_90
  loc_9F8A1B: FLdRfVar var_8C
  loc_9F8A1E: FLdPr Me
  loc_9F8A21: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9F8A26: FLdPr var_8C
  loc_9F8A29:  = Me.RecordCount
  loc_9F8A2E: ILdRf var_90
  loc_9F8A31: FStR4 var_88
  loc_9F8A34: FFree1Ad var_8C
  loc_9F8A37: ExitProcCbHresult
End Sub

Public Sub Delete() 'A2131C
  'Data Table: 472298
  loc_A212D4: FLdRfVar var_8C
  loc_A212D7: FLdRfVar var_88
  loc_A212DA: FLdPr Me
  loc_A212DD: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A212E2: FLdPr var_88
  loc_A212E5:  = Me.RecordCount
  loc_A212EA: ILdRf var_8C
  loc_A212ED: LitI4 0
  loc_A212F2: GtI4
  loc_A212F3: FFree1Ad var_88
  loc_A212F6: BranchF loc_A21319
  loc_A212F9: LitI4 1
  loc_A212FE: FLdRfVar var_88
  loc_A21301: FLdPr Me
  loc_A21304: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A21309: FLdPr var_88
  loc_A2130C: Me.Delete
  loc_A21311: FFree1Ad var_88
  loc_A21314: Call MoveNext()
  loc_A21319: ExitProcHresult
End Sub

Public Sub Requery() 'A02EC8
  'Data Table: 472298
  loc_A02E98: LitI4 -1
  loc_A02E9D: FLdRfVar var_88
  loc_A02EA0: FLdPr Me
  loc_A02EA3: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A02EA8: FLdPr var_88
  loc_A02EAB: Me.Requery from_stack_1
  loc_A02EB0: FFree1Ad var_88
  loc_A02EB3: LitVarStr var_98, "Primary"
  loc_A02EB8: PopAdLdVar
  loc_A02EB9: FLdPr Me
  loc_A02EBC: LateIdCall
  loc_A02EC4: ExitProcHresult
  loc_A02EC5: StAryRecMove
End Sub

Public Sub Update() 'A23BC8
  'Data Table: 472298
  loc_A23B84: FLdRfVar var_88
  loc_A23B87: FLdPr Me
  loc_A23B8A: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A23B8F: FLdZeroAd var_88
  loc_A23B92: FStAdFunc var_8C
  loc_A23B95: LitI4 3
  loc_A23B9A: FLdPr var_8C
  loc_A23B9D: Me.UpdateBatch
  loc_A23BA2: FLdRfVar var_90
  loc_A23BA5: FLdPr var_8C
  loc_A23BA8:  = Me.EditMode
  loc_A23BAD: ILdRf var_90
  loc_A23BB0: LitI4 2
  loc_A23BB5: EqI4
  loc_A23BB6: BranchF loc_A23BBE
  loc_A23BB9: Call MoveLast()
  loc_A23BBE: LitNothing
  loc_A23BC0: FStAd var_8C 
  loc_A23BC4: ExitProcHresult
End Sub

Public Sub Cancel() 'A48348
  'Data Table: 472298
  loc_A482F4: FLdRfVar var_88
  loc_A482F7: FLdPr Me
  loc_A482FA: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A482FF: FLdZeroAd var_88
  loc_A48302: FStAdFunc var_8C
  loc_A48305: FLdRfVar var_90
  loc_A48308: FLdPr var_8C
  loc_A4830B:  = Me.RecordCount
  loc_A48310: ILdRf var_90
  loc_A48313: LitI4 0
  loc_A48318: GtI4
  loc_A48319: BranchF loc_A48340
  loc_A4831C: FLdPr var_8C
  loc_A4831F: Me.CancelUpdate
  loc_A48324: FLdRfVar var_90
  loc_A48327: FLdPr var_8C
  loc_A4832A:  = Me.EditMode
  loc_A4832F: ILdRf var_90
  loc_A48332: LitI4 2
  loc_A48337: EqI4
  loc_A48338: BranchF loc_A48340
  loc_A4833B: Call MoveFirst()
  loc_A48340: LitNothing
  loc_A48342: FStAd var_8C 
  loc_A48346: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FDD14
  'Data Table: 472298
  loc_9FDCE8: FLdRfVar var_90
  loc_9FDCEB: FLdRfVar var_8C
  loc_9FDCEE: FLdPr Me
  loc_9FDCF1: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9FDCF6: FLdPr var_8C
  loc_9FDCF9:  = Me.EditMode
  loc_9FDCFE: ILdRf var_90
  loc_9FDD01: LitI4 0
  loc_9FDD06: NeI4
  loc_9FDD07: FStI2 var_86
  loc_9FDD0A: FFree1Ad var_8C
  loc_9FDD0D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A70154
  'Data Table: 472298
  loc_A700E0: ILdRf sSelect
  loc_A700E3: FStStrCopy var_88
  loc_A700E6: LitNothing
  loc_A700E8: CastAd
  loc_A700EB: FStAdFuncNoPop
  loc_A700EE: FLdPr Me
  loc_A700F1: Call clsdetapago.global_4661792Set(from_stack_1v)
  loc_A700F6: FFree1Ad var_8C
  loc_A700F9: New Recordset
  loc_A700FD: FStAdFuncNoPop
  loc_A70100: FLdPr Me
  loc_A70103: Call clsdetapago.global_4661792Set(from_stack_1v)
  loc_A70108: FFree1Ad var_8C
  loc_A7010B: LitI4 -1
  loc_A70110: LitI4 3
  loc_A70115: LitI4 3
  loc_A7011A: ImpAdLdI4 MemVar_D9301C
  loc_A7011D: CVarAd
  loc_A70121: PopAdLdVar
  loc_A70122: ILdRf var_88
  loc_A70125: CVarStr var_9C
  loc_A70128: PopAdLdVar
  loc_A70129: FLdRfVar var_8C
  loc_A7012C: FLdPr Me
  loc_A7012F: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A70134: FLdPr var_8C
  loc_A70137: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A7013C: FFree1Ad var_8C
  loc_A7013F: LitVarStr var_9C, "Primary"
  loc_A70144: PopAdLdVar
  loc_A70145: FLdPr Me
  loc_A70148: LateIdCall
  loc_A70150: ExitProcHresult
  loc_A70151: ExitProc
  loc_A70152: LitI2_Byte 1
End Sub

Public Sub EjecutarRs2(sSelect) 'A5A030
  'Data Table: 472298
  loc_A59FD0: ILdRf sSelect
  loc_A59FD3: FStStrCopy var_88
  loc_A59FD6: LitNothing
  loc_A59FD8: CastAd
  loc_A59FDB: FStAdFuncNoPop
  loc_A59FDE: FLdPr Me
  loc_A59FE1: Call clsdetapago.global_4661792Set(from_stack_1v)
  loc_A59FE6: FFree1Ad var_8C
  loc_A59FE9: New Recordset
  loc_A59FED: FStAdFuncNoPop
  loc_A59FF0: FLdPr Me
  loc_A59FF3: Call clsdetapago.global_4661792Set(from_stack_1v)
  loc_A59FF8: FFree1Ad var_8C
  loc_A59FFB: LitI4 -1
  loc_A5A000: LitI4 3
  loc_A5A005: LitI4 3
  loc_A5A00A: ImpAdLdI4 MemVar_D9301C
  loc_A5A00D: CVarAd
  loc_A5A011: PopAdLdVar
  loc_A5A012: ILdRf var_88
  loc_A5A015: CVarStr var_9C
  loc_A5A018: PopAdLdVar
  loc_A5A019: FLdRfVar var_8C
  loc_A5A01C: FLdPr Me
  loc_A5A01F: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A5A024: FLdPr var_8C
  loc_A5A027: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5A02C: FFree1Ad var_8C
  loc_A5A02F: ExitProcHresult
End Sub

Public Property Get DataSource() 'A08B88
  'Data Table: 472298
  loc_A08B58: ZeroRetVal
  loc_A08B5A: FLdRfVar var_90
  loc_A08B5D: FLdRfVar var_8C
  loc_A08B60: FLdPr Me
  loc_A08B63: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A08B68: FLdPr var_8C
  loc_A08B6B:  = Me.DataSource
  loc_A08B70: ILdRf var_90
  loc_A08B73: CastAd
  loc_A08B76: FStAdFunc var_88
  loc_A08B79: FFreeAd var_8C = ""
  loc_A08B80: ExitProcCbHresult
  loc_A08B86: AryLdRf
End Sub

Public Property Get EditMode() '9F62B8
  'Data Table: 472298
  loc_9F6290: FLdRfVar var_90
  loc_9F6293: FLdRfVar var_8C
  loc_9F6296: FLdPr Me
  loc_9F6299: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9F629E: FLdPr var_8C
  loc_9F62A1:  = Me.EditMode
  loc_9F62A6: ILdRf var_90
  loc_9F62A9: FStR4 var_88
  loc_9F62AC: FFree1Ad var_8C
  loc_9F62AF: ExitProcCbHresult
End Sub

Public Property Get FeenAcpa() 'A58DF8
  'Data Table: 472298
  loc_A58DA8: ZeroRetVal
  loc_A58DAA: FLdRfVar var_B4
  loc_A58DAD: FLdRfVar var_A4
  loc_A58DB0: LitVarStr var_A0, "FeenAcpa"
  loc_A58DB5: PopAdLdVar
  loc_A58DB6: FLdRfVar var_90
  loc_A58DB9: FLdRfVar var_8C
  loc_A58DBC: FLdPr Me
  loc_A58DBF: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A58DC4: FLdPr var_8C
  loc_A58DC7:  = Me.Fields
  loc_A58DCC: FLdPr var_90
  loc_A58DCF: from_stack_2 = Me.Item(from_stack_1)
  loc_A58DD4: FLdPr var_A4
  loc_A58DD7:  = Me.Value
  loc_A58DDC: FLdRfVar var_B4
  loc_A58DDF: CStrVarTmp
  loc_A58DE0: FStStr var_88
  loc_A58DE3: FFreeAd var_8C = "": var_90 = ""
  loc_A58DEC: FFree1Var var_B4 = ""
  loc_A58DEF: ExitProcCbHresult
End Sub

Public Property Let FeenAcpa(vDato) 'A03568
  'Data Table: 472298
  loc_A0353C: ILdRf vDato
  loc_A0353F: FStStrCopy var_88
  loc_A03542: ILdRf var_88
  loc_A03545: CVarStr var_AC
  loc_A03548: PopAdLdVar
  loc_A03549: LitVarStr var_9C, "FeenAcpa"
  loc_A0354E: PopAdLdVar
  loc_A0354F: FLdRfVar var_8C
  loc_A03552: FLdPr Me
  loc_A03555: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A0355A: FLdPr var_8C
  loc_A0355D: Me.Collect = from_stack_1
  loc_A03562: FFree1Ad var_8C
  loc_A03565: ExitProcHresult
End Sub

Public Property Get NumeAcpa() 'A48228
  'Data Table: 472298
  loc_A481DC: FLdRfVar var_B4
  loc_A481DF: FLdRfVar var_A4
  loc_A481E2: LitVarStr var_A0, "NumeAcpa"
  loc_A481E7: PopAdLdVar
  loc_A481E8: FLdRfVar var_90
  loc_A481EB: FLdRfVar var_8C
  loc_A481EE: FLdPr Me
  loc_A481F1: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A481F6: FLdPr var_8C
  loc_A481F9:  = Me.Fields
  loc_A481FE: FLdPr var_90
  loc_A48201: from_stack_2 = Me.Item(from_stack_1)
  loc_A48206: FLdPr var_A4
  loc_A48209:  = Me.Value
  loc_A4820E: FLdRfVar var_B4
  loc_A48211: CI2Var
  loc_A48212: FStI2 var_86
  loc_A48215: FFreeAd var_8C = "": var_90 = ""
  loc_A4821E: FFree1Var var_B4 = ""
  loc_A48221: ExitProcCbHresult
End Sub

Public Property Let NumeAcpa(vDato) '9EAA70
  'Data Table: 472298
  loc_9EAA4C: FLdI2 vDato
  loc_9EAA4F: CVarI2 var_A8
  loc_9EAA52: PopAdLdVar
  loc_9EAA53: LitVarStr var_98, "NumeAcpa"
  loc_9EAA58: PopAdLdVar
  loc_9EAA59: FLdRfVar var_88
  loc_9EAA5C: FLdPr Me
  loc_9EAA5F: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9EAA64: FLdPr var_88
  loc_9EAA67: Me.Collect = from_stack_1
  loc_9EAA6C: FFree1Ad var_88
  loc_9EAA6F: ExitProcHresult
End Sub

Public Property Get PeriBole() 'A4F58C
  'Data Table: 472298
  loc_A4F540: FLdRfVar var_B4
  loc_A4F543: FLdRfVar var_A4
  loc_A4F546: LitVarStr var_A0, "PeriBole"
  loc_A4F54B: PopAdLdVar
  loc_A4F54C: FLdRfVar var_90
  loc_A4F54F: FLdRfVar var_8C
  loc_A4F552: FLdPr Me
  loc_A4F555: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A4F55A: FLdPr var_8C
  loc_A4F55D:  = Me.Fields
  loc_A4F562: FLdPr var_90
  loc_A4F565: from_stack_2 = Me.Item(from_stack_1)
  loc_A4F56A: FLdPr var_A4
  loc_A4F56D:  = Me.Value
  loc_A4F572: FLdRfVar var_B4
  loc_A4F575: CI2Var
  loc_A4F576: FStI2 var_86
  loc_A4F579: FFreeAd var_8C = "": var_90 = ""
  loc_A4F582: FFree1Var var_B4 = ""
  loc_A4F585: ExitProcCbHresult
End Sub

Public Property Let PeriBole(vDato) '9EAA18
  'Data Table: 472298
  loc_9EA9F4: FLdI2 vDato
  loc_9EA9F7: CVarI2 var_A8
  loc_9EA9FA: PopAdLdVar
  loc_9EA9FB: LitVarStr var_98, "PeriBole"
  loc_9EAA00: PopAdLdVar
  loc_9EAA01: FLdRfVar var_88
  loc_9EAA04: FLdPr Me
  loc_9EAA07: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9EAA0C: FLdPr var_88
  loc_9EAA0F: Me.Collect = from_stack_1
  loc_9EAA14: FFree1Ad var_88
  loc_9EAA17: ExitProcHresult
End Sub

Public Property Get NumeBole() 'A4F2D0
  'Data Table: 472298
  loc_A4F284: FLdRfVar var_B4
  loc_A4F287: FLdRfVar var_A4
  loc_A4F28A: LitVarStr var_A0, "NumeBole"
  loc_A4F28F: PopAdLdVar
  loc_A4F290: FLdRfVar var_90
  loc_A4F293: FLdRfVar var_8C
  loc_A4F296: FLdPr Me
  loc_A4F299: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A4F29E: FLdPr var_8C
  loc_A4F2A1:  = Me.Fields
  loc_A4F2A6: FLdPr var_90
  loc_A4F2A9: from_stack_2 = Me.Item(from_stack_1)
  loc_A4F2AE: FLdPr var_A4
  loc_A4F2B1:  = Me.Value
  loc_A4F2B6: FLdRfVar var_B4
  loc_A4F2B9: CI4Var
  loc_A4F2BB: FStR4 var_88
  loc_A4F2BE: FFreeAd var_8C = "": var_90 = ""
  loc_A4F2C7: FFree1Var var_B4 = ""
  loc_A4F2CA: ExitProcCbHresult
End Sub

Public Property Let NumeBole(vDato) '9F66AC
  'Data Table: 472298
  loc_9F6684: ILdRf vDato
  loc_9F6687: CVarI4
  loc_9F668B: PopAdLdVar
  loc_9F668C: LitVarStr var_98, "NumeBole"
  loc_9F6691: PopAdLdVar
  loc_9F6692: FLdRfVar var_88
  loc_9F6695: FLdPr Me
  loc_9F6698: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9F669D: FLdPr var_88
  loc_9F66A0: Me.Collect = from_stack_1
  loc_9F66A5: FFree1Ad var_88
  loc_9F66A8: ExitProcHresult
End Sub

Public Property Get PeriCtct() 'A47EE0
  'Data Table: 472298
  loc_A47E94: FLdRfVar var_B4
  loc_A47E97: FLdRfVar var_A4
  loc_A47E9A: LitVarStr var_A0, "PeriCtct"
  loc_A47E9F: PopAdLdVar
  loc_A47EA0: FLdRfVar var_90
  loc_A47EA3: FLdRfVar var_8C
  loc_A47EA6: FLdPr Me
  loc_A47EA9: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A47EAE: FLdPr var_8C
  loc_A47EB1:  = Me.Fields
  loc_A47EB6: FLdPr var_90
  loc_A47EB9: from_stack_2 = Me.Item(from_stack_1)
  loc_A47EBE: FLdPr var_A4
  loc_A47EC1:  = Me.Value
  loc_A47EC6: FLdRfVar var_B4
  loc_A47EC9: CI4Var
  loc_A47ECB: FStR4 var_88
  loc_A47ECE: FFreeAd var_8C = "": var_90 = ""
  loc_A47ED7: FFree1Var var_B4 = ""
  loc_A47EDA: ExitProcCbHresult
End Sub

Public Property Let PeriCtct(vDato) '9FA088
  'Data Table: 472298
  loc_9FA060: ILdRf vDato
  loc_9FA063: CVarI4
  loc_9FA067: PopAdLdVar
  loc_9FA068: LitVarStr var_98, "PeriCtct"
  loc_9FA06D: PopAdLdVar
  loc_9FA06E: FLdRfVar var_88
  loc_9FA071: FLdPr Me
  loc_9FA074: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9FA079: FLdPr var_88
  loc_9FA07C: Me.Collect = from_stack_1
  loc_9FA081: FFree1Ad var_88
  loc_9FA084: ExitProcHresult
  loc_9FA085: PopTmpLdAd8 var_39E4
End Sub

Public Property Get BimeCtct() 'A4EA9C
  'Data Table: 472298
  loc_A4EA50: FLdRfVar var_B4
  loc_A4EA53: FLdRfVar var_A4
  loc_A4EA56: LitVarStr var_A0, "BimeCtct"
  loc_A4EA5B: PopAdLdVar
  loc_A4EA5C: FLdRfVar var_90
  loc_A4EA5F: FLdRfVar var_8C
  loc_A4EA62: FLdPr Me
  loc_A4EA65: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A4EA6A: FLdPr var_8C
  loc_A4EA6D:  = Me.Fields
  loc_A4EA72: FLdPr var_90
  loc_A4EA75: from_stack_2 = Me.Item(from_stack_1)
  loc_A4EA7A: FLdPr var_A4
  loc_A4EA7D:  = Me.Value
  loc_A4EA82: FLdRfVar var_B4
  loc_A4EA85: CI2Var
  loc_A4EA86: FStI2 var_86
  loc_A4EA89: FFreeAd var_8C = "": var_90 = ""
  loc_A4EA92: FFree1Var var_B4 = ""
  loc_A4EA95: ExitProcCbHresult
End Sub

Public Property Let BimeCtct(vDato) '9EA910
  'Data Table: 472298
  loc_9EA8EC: FLdI2 vDato
  loc_9EA8EF: CVarI2 var_A8
  loc_9EA8F2: PopAdLdVar
  loc_9EA8F3: LitVarStr var_98, "BimeCtct"
  loc_9EA8F8: PopAdLdVar
  loc_9EA8F9: FLdRfVar var_88
  loc_9EA8FC: FLdPr Me
  loc_9EA8FF: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9EA904: FLdPr var_88
  loc_9EA907: Me.Collect = from_stack_1
  loc_9EA90C: FFree1Ad var_88
  loc_9EA90F: ExitProcHresult
End Sub

Public Property Get NumeCtct() 'A47CB0
  'Data Table: 472298
  loc_A47C64: FLdRfVar var_B4
  loc_A47C67: FLdRfVar var_A4
  loc_A47C6A: LitVarStr var_A0, "NumeCtct"
  loc_A47C6F: PopAdLdVar
  loc_A47C70: FLdRfVar var_90
  loc_A47C73: FLdRfVar var_8C
  loc_A47C76: FLdPr Me
  loc_A47C79: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A47C7E: FLdPr var_8C
  loc_A47C81:  = Me.Fields
  loc_A47C86: FLdPr var_90
  loc_A47C89: from_stack_2 = Me.Item(from_stack_1)
  loc_A47C8E: FLdPr var_A4
  loc_A47C91:  = Me.Value
  loc_A47C96: FLdRfVar var_B4
  loc_A47C99: CI4Var
  loc_A47C9B: FStR4 var_88
  loc_A47C9E: FFreeAd var_8C = "": var_90 = ""
  loc_A47CA7: FFree1Var var_B4 = ""
  loc_A47CAA: ExitProcCbHresult
End Sub

Public Property Let NumeCtct(vDato) '9F75C4
  'Data Table: 472298
  loc_9F759C: ILdRf vDato
  loc_9F759F: CVarI4
  loc_9F75A3: PopAdLdVar
  loc_9F75A4: LitVarStr var_98, "NumeCtct"
  loc_9F75A9: PopAdLdVar
  loc_9F75AA: FLdRfVar var_88
  loc_9F75AD: FLdPr Me
  loc_9F75B0: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9F75B5: FLdPr var_88
  loc_9F75B8: Me.Collect = from_stack_1
  loc_9F75BD: FFree1Ad var_88
  loc_9F75C0: ExitProcHresult
End Sub

Public Property Get MoviCtct() 'A47C24
  'Data Table: 472298
  loc_A47BD8: FLdRfVar var_B4
  loc_A47BDB: FLdRfVar var_A4
  loc_A47BDE: LitVarStr var_A0, "MoviCtct"
  loc_A47BE3: PopAdLdVar
  loc_A47BE4: FLdRfVar var_90
  loc_A47BE7: FLdRfVar var_8C
  loc_A47BEA: FLdPr Me
  loc_A47BED: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A47BF2: FLdPr var_8C
  loc_A47BF5:  = Me.Fields
  loc_A47BFA: FLdPr var_90
  loc_A47BFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A47C02: FLdPr var_A4
  loc_A47C05:  = Me.Value
  loc_A47C0A: FLdRfVar var_B4
  loc_A47C0D: CI2Var
  loc_A47C0E: FStI2 var_86
  loc_A47C11: FFreeAd var_8C = "": var_90 = ""
  loc_A47C1A: FFree1Var var_B4 = ""
  loc_A47C1D: ExitProcCbHresult
End Sub

Public Property Let MoviCtct(vDato) '9EA700
  'Data Table: 472298
  loc_9EA6DC: FLdI2 vDato
  loc_9EA6DF: CVarI2 var_A8
  loc_9EA6E2: PopAdLdVar
  loc_9EA6E3: LitVarStr var_98, "MoviCtct"
  loc_9EA6E8: PopAdLdVar
  loc_9EA6E9: FLdRfVar var_88
  loc_9EA6EC: FLdPr Me
  loc_9EA6EF: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9EA6F4: FLdPr var_88
  loc_9EA6F7: Me.Collect = from_stack_1
  loc_9EA6FC: FFree1Ad var_88
  loc_9EA6FF: ExitProcHresult
End Sub

Public Property Get MoviDebo() 'A4E8F8
  'Data Table: 472298
  loc_A4E8AC: FLdRfVar var_B4
  loc_A4E8AF: FLdRfVar var_A4
  loc_A4E8B2: LitVarStr var_A0, "MoviDebo"
  loc_A4E8B7: PopAdLdVar
  loc_A4E8B8: FLdRfVar var_90
  loc_A4E8BB: FLdRfVar var_8C
  loc_A4E8BE: FLdPr Me
  loc_A4E8C1: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A4E8C6: FLdPr var_8C
  loc_A4E8C9:  = Me.Fields
  loc_A4E8CE: FLdPr var_90
  loc_A4E8D1: from_stack_2 = Me.Item(from_stack_1)
  loc_A4E8D6: FLdPr var_A4
  loc_A4E8D9:  = Me.Value
  loc_A4E8DE: FLdRfVar var_B4
  loc_A4E8E1: CI2Var
  loc_A4E8E2: FStI2 var_86
  loc_A4E8E5: FFreeAd var_8C = "": var_90 = ""
  loc_A4E8EE: FFree1Var var_B4 = ""
  loc_A4E8F1: ExitProcCbHresult
End Sub

Public Property Get CodiTili() 'A52330
  'Data Table: 472298
  loc_A522E0: FLdRfVar var_B4
  loc_A522E3: FLdRfVar var_A4
  loc_A522E6: LitVarStr var_A0, "CodiTili"
  loc_A522EB: PopAdLdVar
  loc_A522EC: FLdRfVar var_90
  loc_A522EF: FLdRfVar var_8C
  loc_A522F2: FLdPr Me
  loc_A522F5: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A522FA: FLdPr var_8C
  loc_A522FD:  = Me.Fields
  loc_A52302: FLdPr var_90
  loc_A52305: from_stack_2 = Me.Item(from_stack_1)
  loc_A5230A: FLdPr var_A4
  loc_A5230D:  = Me.Value
  loc_A52312: FLdRfVar var_B4
  loc_A52315: CUI1Var
  loc_A52317: FStUI1 var_86
  loc_A5231B: FFreeAd var_8C = "": var_90 = ""
  loc_A52324: FFree1Var var_B4 = ""
  loc_A52327: ExitProcCbHresult
End Sub

Public Property Get NumeLiqu() 'A4E7E0
  'Data Table: 472298
  loc_A4E794: FLdRfVar var_B4
  loc_A4E797: FLdRfVar var_A4
  loc_A4E79A: LitVarStr var_A0, "NumeLiqu"
  loc_A4E79F: PopAdLdVar
  loc_A4E7A0: FLdRfVar var_90
  loc_A4E7A3: FLdRfVar var_8C
  loc_A4E7A6: FLdPr Me
  loc_A4E7A9: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A4E7AE: FLdPr var_8C
  loc_A4E7B1:  = Me.Fields
  loc_A4E7B6: FLdPr var_90
  loc_A4E7B9: from_stack_2 = Me.Item(from_stack_1)
  loc_A4E7BE: FLdPr var_A4
  loc_A4E7C1:  = Me.Value
  loc_A4E7C6: FLdRfVar var_B4
  loc_A4E7C9: CI2Var
  loc_A4E7CA: FStI2 var_86
  loc_A4E7CD: FFreeAd var_8C = "": var_90 = ""
  loc_A4E7D6: FFree1Var var_B4 = ""
  loc_A4E7D9: ExitProcCbHresult
End Sub

Public Property Get FeacDepa() 'A3FFA8
  'Data Table: 472298
  loc_A3FF64: ZeroRetValVar
  loc_A3FF66: FLdRfVar var_B0
  loc_A3FF69: LitVarStr var_AC, "FeacDepa"
  loc_A3FF6E: PopAdLdVar
  loc_A3FF6F: FLdRfVar var_9C
  loc_A3FF72: FLdRfVar var_98
  loc_A3FF75: FLdPr Me
  loc_A3FF78: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A3FF7D: FLdPr var_98
  loc_A3FF80:  = Me.Fields
  loc_A3FF85: FLdPr var_9C
  loc_A3FF88: from_stack_2 = Me.Item(from_stack_1)
  loc_A3FF8D: FLdZeroAd var_B0
  loc_A3FF90: CVarAd
  loc_A3FF94: FStVar FeacDepa
  loc_A3FF98: FFreeAd var_98 = ""
  loc_A3FF9F: ExitProcCbHresult
End Sub

Public Property Let FeacDepa(vDato) '9FE0D0
  'Data Table: 472298
  loc_9FE0A8: FDupVar
  loc_9FE0AE: FLdVar var_94
  loc_9FE0B2: LitVarStr var_A8, "FeacDepa"
  loc_9FE0B7: PopAdLdVar
  loc_9FE0B8: FLdRfVar var_98
  loc_9FE0BB: FLdPr Me
  loc_9FE0BE: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9FE0C3: FLdPr var_98
  loc_9FE0C6: Me.Collect = from_stack_1
  loc_9FE0CB: FFree1Ad var_98
  loc_9FE0CE: ExitProcHresult
End Sub

Public Property Get ActuDepa() 'A4E6C8
  'Data Table: 472298
  loc_A4E67C: FLdRfVar var_B4
  loc_A4E67F: FLdRfVar var_A4
  loc_A4E682: LitVarStr var_A0, "ActuDepa"
  loc_A4E687: PopAdLdVar
  loc_A4E688: FLdRfVar var_90
  loc_A4E68B: FLdRfVar var_8C
  loc_A4E68E: FLdPr Me
  loc_A4E691: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A4E696: FLdPr var_8C
  loc_A4E699:  = Me.Fields
  loc_A4E69E: FLdPr var_90
  loc_A4E6A1: from_stack_2 = Me.Item(from_stack_1)
  loc_A4E6A6: FLdPr var_A4
  loc_A4E6A9:  = Me.Value
  loc_A4E6AE: FLdRfVar var_B4
  loc_A4E6B1: CI2Var
  loc_A4E6B2: FStI2 var_86
  loc_A4E6B5: FFreeAd var_8C = "": var_90 = ""
  loc_A4E6BE: FFree1Var var_B4 = ""
  loc_A4E6C1: ExitProcCbHresult
End Sub

Public Property Let ActuDepa(vDato) '9EA3E8
  'Data Table: 472298
  loc_9EA3C4: FLdI2 vDato
  loc_9EA3C7: CVarI2 var_A8
  loc_9EA3CA: PopAdLdVar
  loc_9EA3CB: LitVarStr var_98, "ActuDepa"
  loc_9EA3D0: PopAdLdVar
  loc_9EA3D1: FLdRfVar var_88
  loc_9EA3D4: FLdPr Me
  loc_9EA3D7: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9EA3DC: FLdPr var_88
  loc_9EA3DF: Me.Collect = from_stack_1
  loc_9EA3E4: FFree1Ad var_88
  loc_9EA3E7: ExitProcHresult
End Sub

Public Property Get CodiOfic() 'A522A0
  'Data Table: 472298
  loc_A52250: FLdRfVar var_B4
  loc_A52253: FLdRfVar var_A4
  loc_A52256: LitVarStr var_A0, "CodiOfic"
  loc_A5225B: PopAdLdVar
  loc_A5225C: FLdRfVar var_90
  loc_A5225F: FLdRfVar var_8C
  loc_A52262: FLdPr Me
  loc_A52265: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A5226A: FLdPr var_8C
  loc_A5226D:  = Me.Fields
  loc_A52272: FLdPr var_90
  loc_A52275: from_stack_2 = Me.Item(from_stack_1)
  loc_A5227A: FLdPr var_A4
  loc_A5227D:  = Me.Value
  loc_A52282: FLdRfVar var_B4
  loc_A52285: CUI1Var
  loc_A52287: FStUI1 var_86
  loc_A5228B: FFreeAd var_8C = "": var_90 = ""
  loc_A52294: FFree1Var var_B4 = ""
  loc_A52297: ExitProcCbHresult
End Sub

Public Property Let CodiOfic(vDato) '9FAC08
  'Data Table: 472298
  loc_9FABE0: FLdUI1
  loc_9FABE4: CVarUI1
  loc_9FABE8: PopAdLdVar
  loc_9FABE9: LitVarStr var_98, "CodiOfic"
  loc_9FABEE: PopAdLdVar
  loc_9FABEF: FLdRfVar var_88
  loc_9FABF2: FLdPr Me
  loc_9FABF5: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9FABFA: FLdPr var_88
  loc_9FABFD: Me.Collect = from_stack_1
  loc_9FAC02: FFree1Ad var_88
  loc_9FAC05: ExitProcHresult
  loc_9FAC06: NewIfNullPr Me
End Sub

Public Property Get CuenCtct() 'A585E0
  'Data Table: 472298
  loc_A58590: ZeroRetVal
  loc_A58592: FLdRfVar var_B4
  loc_A58595: FLdRfVar var_A4
  loc_A58598: LitVarStr var_A0, "CuenCtct"
  loc_A5859D: PopAdLdVar
  loc_A5859E: FLdRfVar var_90
  loc_A585A1: FLdRfVar var_8C
  loc_A585A4: FLdPr Me
  loc_A585A7: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A585AC: FLdPr var_8C
  loc_A585AF:  = Me.Fields
  loc_A585B4: FLdPr var_90
  loc_A585B7: from_stack_2 = Me.Item(from_stack_1)
  loc_A585BC: FLdPr var_A4
  loc_A585BF:  = Me.Value
  loc_A585C4: FLdRfVar var_B4
  loc_A585C7: CStrVarTmp
  loc_A585C8: FStStr var_88
  loc_A585CB: FFreeAd var_8C = "": var_90 = ""
  loc_A585D4: FFree1Var var_B4 = ""
  loc_A585D7: ExitProcCbHresult
End Sub

Public Property Let CuenCtct(vDato) 'A03CD4
  'Data Table: 472298
  loc_A03CA8: ILdRf vDato
  loc_A03CAB: FStStrCopy var_88
  loc_A03CAE: ILdRf var_88
  loc_A03CB1: CVarStr var_AC
  loc_A03CB4: PopAdLdVar
  loc_A03CB5: LitVarStr var_9C, "CuenCtct"
  loc_A03CBA: PopAdLdVar
  loc_A03CBB: FLdRfVar var_8C
  loc_A03CBE: FLdPr Me
  loc_A03CC1: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A03CC6: FLdPr var_8C
  loc_A03CC9: Me.Collect = from_stack_1
  loc_A03CCE: FFree1Ad var_8C
  loc_A03CD1: ExitProcHresult
End Sub

Public Property Get TipoCtct() 'A558C8
  'Data Table: 472298
  loc_A55878: ZeroRetVal
  loc_A5587A: FLdRfVar var_B4
  loc_A5587D: FLdRfVar var_A4
  loc_A55880: LitVarStr var_A0, "TipoCtct"
  loc_A55885: PopAdLdVar
  loc_A55886: FLdRfVar var_90
  loc_A55889: FLdRfVar var_8C
  loc_A5588C: FLdPr Me
  loc_A5588F: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A55894: FLdPr var_8C
  loc_A55897:  = Me.Fields
  loc_A5589C: FLdPr var_90
  loc_A5589F: from_stack_2 = Me.Item(from_stack_1)
  loc_A558A4: FLdPr var_A4
  loc_A558A7:  = Me.Value
  loc_A558AC: FLdRfVar var_B4
  loc_A558AF: CStrVarTmp
  loc_A558B0: FStStr var_88
  loc_A558B3: FFreeAd var_8C = "": var_90 = ""
  loc_A558BC: FFree1Var var_B4 = ""
  loc_A558BF: ExitProcCbHresult
  loc_A558C5: IStFPR4 TipoCtctAA
End Sub

Public Property Let TipoCtct(vDato) 'A03E00
  'Data Table: 472298
  loc_A03DD4: ILdRf vDato
  loc_A03DD7: FStStrCopy var_88
  loc_A03DDA: ILdRf var_88
  loc_A03DDD: CVarStr var_AC
  loc_A03DE0: PopAdLdVar
  loc_A03DE1: LitVarStr var_9C, "TipoCtct"
  loc_A03DE6: PopAdLdVar
  loc_A03DE7: FLdRfVar var_8C
  loc_A03DEA: FLdPr Me
  loc_A03DED: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A03DF2: FLdPr var_8C
  loc_A03DF5: Me.Collect = from_stack_1
  loc_A03DFA: FFree1Ad var_8C
  loc_A03DFD: ExitProcHresult
End Sub

Public Property Get CodiFapa() 'A4E2F4
  'Data Table: 472298
  loc_A4E2A8: FLdRfVar var_B4
  loc_A4E2AB: FLdRfVar var_A4
  loc_A4E2AE: LitVarStr var_A0, "CodiFapa"
  loc_A4E2B3: PopAdLdVar
  loc_A4E2B4: FLdRfVar var_90
  loc_A4E2B7: FLdRfVar var_8C
  loc_A4E2BA: FLdPr Me
  loc_A4E2BD: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A4E2C2: FLdPr var_8C
  loc_A4E2C5:  = Me.Fields
  loc_A4E2CA: FLdPr var_90
  loc_A4E2CD: from_stack_2 = Me.Item(from_stack_1)
  loc_A4E2D2: FLdPr var_A4
  loc_A4E2D5:  = Me.Value
  loc_A4E2DA: FLdRfVar var_B4
  loc_A4E2DD: CI4Var
  loc_A4E2DF: FStR4 var_88
  loc_A4E2E2: FFreeAd var_8C = "": var_90 = ""
  loc_A4E2EB: FFree1Var var_B4 = ""
  loc_A4E2EE: ExitProcCbHresult
End Sub

Public Property Let CodiFapa(vDato) '9FA19C
  'Data Table: 472298
  loc_9FA174: ILdRf vDato
  loc_9FA177: CVarI4
  loc_9FA17B: PopAdLdVar
  loc_9FA17C: LitVarStr var_98, "CodiFapa"
  loc_9FA181: PopAdLdVar
  loc_9FA182: FLdRfVar var_88
  loc_9FA185: FLdPr Me
  loc_9FA188: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9FA18D: FLdPr var_88
  loc_9FA190: Me.Collect = from_stack_1
  loc_9FA195: FFree1Ad var_88
  loc_9FA198: ExitProcHresult
End Sub

Public Property Get CuotDefa() 'A4D6EC
  'Data Table: 472298
  loc_A4D6A0: FLdRfVar var_B4
  loc_A4D6A3: FLdRfVar var_A4
  loc_A4D6A6: LitVarStr var_A0, "CuotDefa"
  loc_A4D6AB: PopAdLdVar
  loc_A4D6AC: FLdRfVar var_90
  loc_A4D6AF: FLdRfVar var_8C
  loc_A4D6B2: FLdPr Me
  loc_A4D6B5: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A4D6BA: FLdPr var_8C
  loc_A4D6BD:  = Me.Fields
  loc_A4D6C2: FLdPr var_90
  loc_A4D6C5: from_stack_2 = Me.Item(from_stack_1)
  loc_A4D6CA: FLdPr var_A4
  loc_A4D6CD:  = Me.Value
  loc_A4D6D2: FLdRfVar var_B4
  loc_A4D6D5: CI2Var
  loc_A4D6D6: FStI2 var_86
  loc_A4D6D9: FFreeAd var_8C = "": var_90 = ""
  loc_A4D6E2: FFree1Var var_B4 = ""
  loc_A4D6E5: ExitProcCbHresult
End Sub

Public Property Let CuotDefa(vDato) '9ECE88
  'Data Table: 472298
  loc_9ECE64: FLdI2 vDato
  loc_9ECE67: CVarI2 var_A8
  loc_9ECE6A: PopAdLdVar
  loc_9ECE6B: LitVarStr var_98, "CuotDefa"
  loc_9ECE70: PopAdLdVar
  loc_9ECE71: FLdRfVar var_88
  loc_9ECE74: FLdPr Me
  loc_9ECE77: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9ECE7C: FLdPr var_88
  loc_9ECE7F: Me.Collect = from_stack_1
  loc_9ECE84: FFree1Ad var_88
  loc_9ECE87: ExitProcHresult
End Sub

Public Property Get NumeApre() 'A4D778
  'Data Table: 472298
  loc_A4D72C: FLdRfVar var_B4
  loc_A4D72F: FLdRfVar var_A4
  loc_A4D732: LitVarStr var_A0, "NumeApre"
  loc_A4D737: PopAdLdVar
  loc_A4D738: FLdRfVar var_90
  loc_A4D73B: FLdRfVar var_8C
  loc_A4D73E: FLdPr Me
  loc_A4D741: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A4D746: FLdPr var_8C
  loc_A4D749:  = Me.Fields
  loc_A4D74E: FLdPr var_90
  loc_A4D751: from_stack_2 = Me.Item(from_stack_1)
  loc_A4D756: FLdPr var_A4
  loc_A4D759:  = Me.Value
  loc_A4D75E: FLdRfVar var_B4
  loc_A4D761: CI4Var
  loc_A4D763: FStR4 var_88
  loc_A4D766: FFreeAd var_8C = "": var_90 = ""
  loc_A4D76F: FFree1Var var_B4 = ""
  loc_A4D772: ExitProcCbHresult
End Sub

Public Property Let NumeApre(vDato) '9FA984
  'Data Table: 472298
  loc_9FA95C: ILdRf vDato
  loc_9FA95F: CVarI4
  loc_9FA963: PopAdLdVar
  loc_9FA964: LitVarStr var_98, "NumeApre"
  loc_9FA969: PopAdLdVar
  loc_9FA96A: FLdRfVar var_88
  loc_9FA96D: FLdPr Me
  loc_9FA970: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9FA975: FLdPr var_88
  loc_9FA978: Me.Collect = from_stack_1
  loc_9FA97D: FFree1Ad var_88
  loc_9FA980: ExitProcHresult
End Sub

Public Property Get CodiTimo() 'A52210
  'Data Table: 472298
  loc_A521C0: FLdRfVar var_B4
  loc_A521C3: FLdRfVar var_A4
  loc_A521C6: LitVarStr var_A0, "CodiTimo"
  loc_A521CB: PopAdLdVar
  loc_A521CC: FLdRfVar var_90
  loc_A521CF: FLdRfVar var_8C
  loc_A521D2: FLdPr Me
  loc_A521D5: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A521DA: FLdPr var_8C
  loc_A521DD:  = Me.Fields
  loc_A521E2: FLdPr var_90
  loc_A521E5: from_stack_2 = Me.Item(from_stack_1)
  loc_A521EA: FLdPr var_A4
  loc_A521ED:  = Me.Value
  loc_A521F2: FLdRfVar var_B4
  loc_A521F5: CUI1Var
  loc_A521F7: FStUI1 var_86
  loc_A521FB: FFreeAd var_8C = "": var_90 = ""
  loc_A52204: FFree1Var var_B4 = ""
  loc_A52207: ExitProcCbHresult
End Sub

Public Property Let CodiTimo(vDato) '9FB6D0
  'Data Table: 472298
  loc_9FB6A8: FLdUI1
  loc_9FB6AC: CVarUI1
  loc_9FB6B0: PopAdLdVar
  loc_9FB6B1: LitVarStr var_98, "CodiTimo"
  loc_9FB6B6: PopAdLdVar
  loc_9FB6B7: FLdRfVar var_88
  loc_9FB6BA: FLdPr Me
  loc_9FB6BD: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9FB6C2: FLdPr var_88
  loc_9FB6C5: Me.Collect = from_stack_1
  loc_9FB6CA: FFree1Ad var_88
  loc_9FB6CD: ExitProcHresult
  loc_9FB6CE: SetLastSystemError
End Sub

Public Property Get PeriInfo() 'A4BFF4
  'Data Table: 472298
  loc_A4BFA8: FLdRfVar var_B4
  loc_A4BFAB: FLdRfVar var_A4
  loc_A4BFAE: LitVarStr var_A0, "PeriInfo"
  loc_A4BFB3: PopAdLdVar
  loc_A4BFB4: FLdRfVar var_90
  loc_A4BFB7: FLdRfVar var_8C
  loc_A4BFBA: FLdPr Me
  loc_A4BFBD: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A4BFC2: FLdPr var_8C
  loc_A4BFC5:  = Me.Fields
  loc_A4BFCA: FLdPr var_90
  loc_A4BFCD: from_stack_2 = Me.Item(from_stack_1)
  loc_A4BFD2: FLdPr var_A4
  loc_A4BFD5:  = Me.Value
  loc_A4BFDA: FLdRfVar var_B4
  loc_A4BFDD: CI2Var
  loc_A4BFDE: FStI2 var_86
  loc_A4BFE1: FFreeAd var_8C = "": var_90 = ""
  loc_A4BFEA: FFree1Var var_B4 = ""
  loc_A4BFED: ExitProcCbHresult
End Sub

Public Property Let PeriInfo(vDato) '9EC800
  'Data Table: 472298
  loc_9EC7DC: FLdI2 vDato
  loc_9EC7DF: CVarI2 var_A8
  loc_9EC7E2: PopAdLdVar
  loc_9EC7E3: LitVarStr var_98, "PeriInfo"
  loc_9EC7E8: PopAdLdVar
  loc_9EC7E9: FLdRfVar var_88
  loc_9EC7EC: FLdPr Me
  loc_9EC7EF: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9EC7F4: FLdPr var_88
  loc_9EC7F7: Me.Collect = from_stack_1
  loc_9EC7FC: FFree1Ad var_88
  loc_9EC7FF: ExitProcHresult
End Sub

Public Property Get CodiConc() 'A57A50
  'Data Table: 472298
  loc_A57A00: ZeroRetVal
  loc_A57A02: FLdRfVar var_B4
  loc_A57A05: FLdRfVar var_A4
  loc_A57A08: LitVarStr var_A0, "CodiConc"
  loc_A57A0D: PopAdLdVar
  loc_A57A0E: FLdRfVar var_90
  loc_A57A11: FLdRfVar var_8C
  loc_A57A14: FLdPr Me
  loc_A57A17: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A57A1C: FLdPr var_8C
  loc_A57A1F:  = Me.Fields
  loc_A57A24: FLdPr var_90
  loc_A57A27: from_stack_2 = Me.Item(from_stack_1)
  loc_A57A2C: FLdPr var_A4
  loc_A57A2F:  = Me.Value
  loc_A57A34: FLdRfVar var_B4
  loc_A57A37: CStrVarTmp
  loc_A57A38: FStStr var_88
  loc_A57A3B: FFreeAd var_8C = "": var_90 = ""
  loc_A57A44: FFree1Var var_B4 = ""
  loc_A57A47: ExitProcCbHresult
  loc_A57A4D: CopyBytes
End Sub

Public Property Let CodiConc(vDato) 'A0424C
  'Data Table: 472298
  loc_A04220: ILdRf vDato
  loc_A04223: FStStrCopy var_88
  loc_A04226: ILdRf var_88
  loc_A04229: CVarStr var_AC
  loc_A0422C: PopAdLdVar
  loc_A0422D: LitVarStr var_9C, "CodiConc"
  loc_A04232: PopAdLdVar
  loc_A04233: FLdRfVar var_8C
  loc_A04236: FLdPr Me
  loc_A04239: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A0423E: FLdPr var_8C
  loc_A04241: Me.Collect = from_stack_1
  loc_A04246: FFree1Ad var_8C
  loc_A04249: ExitProcHresult
End Sub

Public Property Get CapiDepa() 'A4698C
  'Data Table: 472298
  loc_A46940: FLdRfVar var_B8
  loc_A46943: FLdRfVar var_A8
  loc_A46946: LitVarStr var_A4, "CapiDepa"
  loc_A4694B: PopAdLdVar
  loc_A4694C: FLdRfVar CapiDepa
  loc_A4694F: FLdRfVar var_90
  loc_A46952: FLdPr Me
  loc_A46955: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A4695A: FLdPr var_90
  loc_A4695D:  = Me.Fields
  loc_A46962: FLdPr CapiDepa
  loc_A46965: from_stack_2 = Me.Item(from_stack_1)
  loc_A4696A: FLdPr var_A8
  loc_A4696D:  = Me.Value
  loc_A46972: FLdRfVar var_B8
  loc_A46975: CR4Var
  loc_A46976: FStFPR8 var_8C
  loc_A46979: FFreeAd var_90 = "": CapiDepa = ""
  loc_A46982: FFree1Var var_B8 = ""
  loc_A46985: ExitProcCbHresult
  loc_A4698B: GtR4
End Sub

Public Property Let CapiDepa(vDato) '9FB7E4
  'Data Table: 472298
  loc_9FB7BC: FLdFPR8 vDato
  loc_9FB7BF: CVarR8
  loc_9FB7C3: PopAdLdVar
  loc_9FB7C4: LitVarStr var_98, "CapiDepa"
  loc_9FB7C9: PopAdLdVar
  loc_9FB7CA: FLdRfVar var_88
  loc_9FB7CD: FLdPr Me
  loc_9FB7D0: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9FB7D5: FLdPr var_88
  loc_9FB7D8: Me.Collect = from_stack_1
  loc_9FB7DD: FFree1Ad var_88
  loc_9FB7E0: ExitProcHresult
  loc_9FB7E1: MemLdRfVar from_stack_1.global_0
End Sub

Public Property Get DecaDepa() 'A46900
  'Data Table: 472298
  loc_A468B4: FLdRfVar var_B8
  loc_A468B7: FLdRfVar var_A8
  loc_A468BA: LitVarStr var_A4, "DecaDepa"
  loc_A468BF: PopAdLdVar
  loc_A468C0: FLdRfVar DecaDepa
  loc_A468C3: FLdRfVar var_90
  loc_A468C6: FLdPr Me
  loc_A468C9: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A468CE: FLdPr var_90
  loc_A468D1:  = Me.Fields
  loc_A468D6: FLdPr DecaDepa
  loc_A468D9: from_stack_2 = Me.Item(from_stack_1)
  loc_A468DE: FLdPr var_A8
  loc_A468E1:  = Me.Value
  loc_A468E6: FLdRfVar var_B8
  loc_A468E9: CR4Var
  loc_A468EA: FStFPR8 var_8C
  loc_A468ED: FFreeAd var_90 = "": DecaDepa = ""
  loc_A468F6: FFree1Var var_B8 = ""
  loc_A468F9: ExitProcCbHresult
End Sub

Public Property Let DecaDepa(vDato) '9FBF14
  'Data Table: 472298
  loc_9FBEEC: FLdFPR8 vDato
  loc_9FBEEF: CVarR8
  loc_9FBEF3: PopAdLdVar
  loc_9FBEF4: LitVarStr var_98, "DecaDepa"
  loc_9FBEF9: PopAdLdVar
  loc_9FBEFA: FLdRfVar var_88
  loc_9FBEFD: FLdPr Me
  loc_9FBF00: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9FBF05: FLdPr var_88
  loc_9FBF08: Me.Collect = from_stack_1
  loc_9FBF0D: FFree1Ad var_88
  loc_9FBF10: ExitProcHresult
End Sub

Public Property Get RecaDepa() 'A467E8
  'Data Table: 472298
  loc_A4679C: FLdRfVar var_B8
  loc_A4679F: FLdRfVar var_A8
  loc_A467A2: LitVarStr var_A4, "RecaDepa"
  loc_A467A7: PopAdLdVar
  loc_A467A8: FLdRfVar RecaDepa
  loc_A467AB: FLdRfVar var_90
  loc_A467AE: FLdPr Me
  loc_A467B1: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A467B6: FLdPr var_90
  loc_A467B9:  = Me.Fields
  loc_A467BE: FLdPr RecaDepa
  loc_A467C1: from_stack_2 = Me.Item(from_stack_1)
  loc_A467C6: FLdPr var_A8
  loc_A467C9:  = Me.Value
  loc_A467CE: FLdRfVar var_B8
  loc_A467D1: CR4Var
  loc_A467D2: FStFPR8 var_8C
  loc_A467D5: FFreeAd var_90 = "": RecaDepa = ""
  loc_A467DE: FFree1Var var_B8 = ""
  loc_A467E1: ExitProcCbHresult
End Sub

Public Property Let RecaDepa(vDato) '9FBBD8
  'Data Table: 472298
  loc_9FBBB0: FLdFPR8 vDato
  loc_9FBBB3: CVarR8
  loc_9FBBB7: PopAdLdVar
  loc_9FBBB8: LitVarStr var_98, "RecaDepa"
  loc_9FBBBD: PopAdLdVar
  loc_9FBBBE: FLdRfVar var_88
  loc_9FBBC1: FLdPr Me
  loc_9FBBC4: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9FBBC9: FLdPr var_88
  loc_9FBBCC: Me.Collect = from_stack_1
  loc_9FBBD1: FFree1Ad var_88
  loc_9FBBD4: ExitProcHresult
  loc_9FBBD5: MemLdPr global_1535
End Sub

Public Property Get DereDepa() 'A4B478
  'Data Table: 472298
  loc_A4B42C: FLdRfVar var_B8
  loc_A4B42F: FLdRfVar var_A8
  loc_A4B432: LitVarStr var_A4, "DereDepa"
  loc_A4B437: PopAdLdVar
  loc_A4B438: FLdRfVar DereDepa
  loc_A4B43B: FLdRfVar var_90
  loc_A4B43E: FLdPr Me
  loc_A4B441: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A4B446: FLdPr var_90
  loc_A4B449:  = Me.Fields
  loc_A4B44E: FLdPr DereDepa
  loc_A4B451: from_stack_2 = Me.Item(from_stack_1)
  loc_A4B456: FLdPr var_A8
  loc_A4B459:  = Me.Value
  loc_A4B45E: FLdRfVar var_B8
  loc_A4B461: CR4Var
  loc_A4B462: FStFPR8 var_8C
  loc_A4B465: FFreeAd var_90 = "": DereDepa = ""
  loc_A4B46E: FFree1Var var_B8 = ""
  loc_A4B471: ExitProcCbHresult
End Sub

Public Property Let DereDepa(vDato) '9FBA68
  'Data Table: 472298
  loc_9FBA40: FLdFPR8 vDato
  loc_9FBA43: CVarR8
  loc_9FBA47: PopAdLdVar
  loc_9FBA48: LitVarStr var_98, "DereDepa"
  loc_9FBA4D: PopAdLdVar
  loc_9FBA4E: FLdRfVar var_88
  loc_9FBA51: FLdPr Me
  loc_9FBA54: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9FBA59: FLdPr var_88
  loc_9FBA5C: Me.Collect = from_stack_1
  loc_9FBA61: FFree1Ad var_88
  loc_9FBA64: ExitProcHresult
  loc_9FBA65: LitI2_Byte 0
End Sub

Public Property Get InteDepa() 'A46388
  'Data Table: 472298
  loc_A4633C: FLdRfVar var_B8
  loc_A4633F: FLdRfVar var_A8
  loc_A46342: LitVarStr var_A4, "InteDepa"
  loc_A46347: PopAdLdVar
  loc_A46348: FLdRfVar InteDepa
  loc_A4634B: FLdRfVar var_90
  loc_A4634E: FLdPr Me
  loc_A46351: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A46356: FLdPr var_90
  loc_A46359:  = Me.Fields
  loc_A4635E: FLdPr InteDepa
  loc_A46361: from_stack_2 = Me.Item(from_stack_1)
  loc_A46366: FLdPr var_A8
  loc_A46369:  = Me.Value
  loc_A4636E: FLdRfVar var_B8
  loc_A46371: CR4Var
  loc_A46372: FStFPR8 var_8C
  loc_A46375: FFreeAd var_90 = "": InteDepa = ""
  loc_A4637E: FFree1Var var_B8 = ""
  loc_A46381: ExitProcCbHresult
End Sub

Public Property Let InteDepa(vDato) '9FA420
  'Data Table: 472298
  loc_9FA3F8: FLdFPR8 vDato
  loc_9FA3FB: CVarR8
  loc_9FA3FF: PopAdLdVar
  loc_9FA400: LitVarStr var_98, "InteDepa"
  loc_9FA405: PopAdLdVar
  loc_9FA406: FLdRfVar var_88
  loc_9FA409: FLdPr Me
  loc_9FA40C: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9FA411: FLdPr var_88
  loc_9FA414: Me.Collect = from_stack_1
  loc_9FA419: FFree1Ad var_88
  loc_9FA41C: ExitProcHresult
  loc_9FA41D: FFree1Ad InteDepaC1
End Sub

Public Property Get AdicDepa() 'A46040
  'Data Table: 472298
  loc_A45FF4: FLdRfVar var_B8
  loc_A45FF7: FLdRfVar var_A8
  loc_A45FFA: LitVarStr var_A4, "AdicDepa"
  loc_A45FFF: PopAdLdVar
  loc_A46000: FLdRfVar AdicDepa
  loc_A46003: FLdRfVar var_90
  loc_A46006: FLdPr Me
  loc_A46009: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A4600E: FLdPr var_90
  loc_A46011:  = Me.Fields
  loc_A46016: FLdPr AdicDepa
  loc_A46019: from_stack_2 = Me.Item(from_stack_1)
  loc_A4601E: FLdPr var_A8
  loc_A46021:  = Me.Value
  loc_A46026: FLdRfVar var_B8
  loc_A46029: CR4Var
  loc_A4602A: FStFPR8 var_8C
  loc_A4602D: FFreeAd var_90 = "": AdicDepa = ""
  loc_A46036: FFree1Var var_B8 = ""
  loc_A46039: ExitProcCbHresult
End Sub

Public Property Get ExenDepa() 'A49E0C
  'Data Table: 472298
  loc_A49DC0: FLdRfVar var_B8
  loc_A49DC3: FLdRfVar var_A8
  loc_A49DC6: LitVarStr var_A4, "ExenDepa"
  loc_A49DCB: PopAdLdVar
  loc_A49DCC: FLdRfVar ExenDepa
  loc_A49DCF: FLdRfVar var_90
  loc_A49DD2: FLdPr Me
  loc_A49DD5: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A49DDA: FLdPr var_90
  loc_A49DDD:  = Me.Fields
  loc_A49DE2: FLdPr ExenDepa
  loc_A49DE5: from_stack_2 = Me.Item(from_stack_1)
  loc_A49DEA: FLdPr var_A8
  loc_A49DED:  = Me.Value
  loc_A49DF2: FLdRfVar var_B8
  loc_A49DF5: CR4Var
  loc_A49DF6: FStFPR8 var_8C
  loc_A49DF9: FFreeAd var_90 = "": ExenDepa = ""
  loc_A49E02: FFree1Var var_B8 = ""
  loc_A49E05: ExitProcCbHresult
End Sub

Public Property Get CrafDepa() 'A45E9C
  'Data Table: 472298
  loc_A45E50: FLdRfVar var_B8
  loc_A45E53: FLdRfVar var_A8
  loc_A45E56: LitVarStr var_A4, "CrafDepa"
  loc_A45E5B: PopAdLdVar
  loc_A45E5C: FLdRfVar CrafDepa
  loc_A45E5F: FLdRfVar var_90
  loc_A45E62: FLdPr Me
  loc_A45E65: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A45E6A: FLdPr var_90
  loc_A45E6D:  = Me.Fields
  loc_A45E72: FLdPr CrafDepa
  loc_A45E75: from_stack_2 = Me.Item(from_stack_1)
  loc_A45E7A: FLdPr var_A8
  loc_A45E7D:  = Me.Value
  loc_A45E82: FLdRfVar var_B8
  loc_A45E85: CR4Var
  loc_A45E86: FStFPR8 var_8C
  loc_A45E89: FFreeAd var_90 = "": CrafDepa = ""
  loc_A45E92: FFree1Var var_B8 = ""
  loc_A45E95: ExitProcCbHresult
End Sub

Public Property Get ApreDepa() 'A45E10
  'Data Table: 472298
  loc_A45DC4: FLdRfVar var_B8
  loc_A45DC7: FLdRfVar var_A8
  loc_A45DCA: LitVarStr var_A4, "ApreDepa"
  loc_A45DCF: PopAdLdVar
  loc_A45DD0: FLdRfVar ApreDepa
  loc_A45DD3: FLdRfVar var_90
  loc_A45DD6: FLdPr Me
  loc_A45DD9: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A45DDE: FLdPr var_90
  loc_A45DE1:  = Me.Fields
  loc_A45DE6: FLdPr ApreDepa
  loc_A45DE9: from_stack_2 = Me.Item(from_stack_1)
  loc_A45DEE: FLdPr var_A8
  loc_A45DF1:  = Me.Value
  loc_A45DF6: FLdRfVar var_B8
  loc_A45DF9: CR4Var
  loc_A45DFA: FStFPR8 var_8C
  loc_A45DFD: FFreeAd var_90 = "": ApreDepa = ""
  loc_A45E06: FFree1Var var_B8 = ""
  loc_A45E09: ExitProcCbHresult
End Sub

Public Property Let ApreDepa(vDato) '9FB560
  'Data Table: 472298
  loc_9FB538: FLdFPR8 vDato
  loc_9FB53B: CVarR8
  loc_9FB53F: PopAdLdVar
  loc_9FB540: LitVarStr var_98, "ApreDepa"
  loc_9FB545: PopAdLdVar
  loc_9FB546: FLdRfVar var_88
  loc_9FB549: FLdPr Me
  loc_9FB54C: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9FB551: FLdPr var_88
  loc_9FB554: Me.Collect = from_stack_1
  loc_9FB559: FFree1Ad var_88
  loc_9FB55C: ExitProcHresult
End Sub

Public Property Get TotaDepa() 'A4977C
  'Data Table: 472298
  loc_A49730: FLdRfVar var_B8
  loc_A49733: FLdRfVar var_A8
  loc_A49736: LitVarStr var_A4, "TotaDepa"
  loc_A4973B: PopAdLdVar
  loc_A4973C: FLdRfVar TotaDepa
  loc_A4973F: FLdRfVar var_90
  loc_A49742: FLdPr Me
  loc_A49745: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A4974A: FLdPr var_90
  loc_A4974D:  = Me.Fields
  loc_A49752: FLdPr TotaDepa
  loc_A49755: from_stack_2 = Me.Item(from_stack_1)
  loc_A4975A: FLdPr var_A8
  loc_A4975D:  = Me.Value
  loc_A49762: FLdRfVar var_B8
  loc_A49765: CR4Var
  loc_A49766: FStFPR8 var_8C
  loc_A49769: FFreeAd var_90 = "": TotaDepa = ""
  loc_A49772: FFree1Var var_B8 = ""
  loc_A49775: ExitProcCbHresult
End Sub

Public Property Let TotaDepa(vDato) '9F9FD0
  'Data Table: 472298
  loc_9F9FA8: FLdFPR8 vDato
  loc_9F9FAB: CVarR8
  loc_9F9FAF: PopAdLdVar
  loc_9F9FB0: LitVarStr var_98, "TotaDepa"
  loc_9F9FB5: PopAdLdVar
  loc_9F9FB6: FLdRfVar var_88
  loc_9F9FB9: FLdPr Me
  loc_9F9FBC: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9F9FC1: FLdPr var_88
  loc_9F9FC4: Me.Collect = from_stack_1
  loc_9F9FC9: FFree1Ad var_88
  loc_9F9FCC: ExitProcHresult
End Sub

Public Property Get PeriOrde() 'A45BE0
  'Data Table: 472298
  loc_A45B94: FLdRfVar var_B4
  loc_A45B97: FLdRfVar var_A4
  loc_A45B9A: LitVarStr var_A0, "PeriOrde"
  loc_A45B9F: PopAdLdVar
  loc_A45BA0: FLdRfVar var_90
  loc_A45BA3: FLdRfVar var_8C
  loc_A45BA6: FLdPr Me
  loc_A45BA9: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A45BAE: FLdPr var_8C
  loc_A45BB1:  = Me.Fields
  loc_A45BB6: FLdPr var_90
  loc_A45BB9: from_stack_2 = Me.Item(from_stack_1)
  loc_A45BBE: FLdPr var_A4
  loc_A45BC1:  = Me.Value
  loc_A45BC6: FLdRfVar var_B4
  loc_A45BC9: CI2Var
  loc_A45BCA: FStI2 var_86
  loc_A45BCD: FFreeAd var_8C = "": var_90 = ""
  loc_A45BD6: FFree1Var var_B4 = ""
  loc_A45BD9: ExitProcCbHresult
End Sub

Public Property Get CodiCtde() 'A571A4
  'Data Table: 472298
  loc_A57154: ZeroRetVal
  loc_A57156: FLdRfVar var_B4
  loc_A57159: FLdRfVar var_A4
  loc_A5715C: LitVarStr var_A0, "CodiCtde"
  loc_A57161: PopAdLdVar
  loc_A57162: FLdRfVar var_90
  loc_A57165: FLdRfVar var_8C
  loc_A57168: FLdPr Me
  loc_A5716B: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A57170: FLdPr var_8C
  loc_A57173:  = Me.Fields
  loc_A57178: FLdPr var_90
  loc_A5717B: from_stack_2 = Me.Item(from_stack_1)
  loc_A57180: FLdPr var_A4
  loc_A57183:  = Me.Value
  loc_A57188: FLdRfVar var_B4
  loc_A5718B: CStrVarTmp
  loc_A5718C: FStStr var_88
  loc_A5718F: FFreeAd var_8C = "": var_90 = ""
  loc_A57198: FFree1Var var_B4 = ""
  loc_A5719B: ExitProcCbHresult
End Sub

Public Property Get NumeCtde() 'A45B54
  'Data Table: 472298
  loc_A45B08: FLdRfVar var_B4
  loc_A45B0B: FLdRfVar var_A4
  loc_A45B0E: LitVarStr var_A0, "NumeCtde"
  loc_A45B13: PopAdLdVar
  loc_A45B14: FLdRfVar var_90
  loc_A45B17: FLdRfVar var_8C
  loc_A45B1A: FLdPr Me
  loc_A45B1D: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A45B22: FLdPr var_8C
  loc_A45B25:  = Me.Fields
  loc_A45B2A: FLdPr var_90
  loc_A45B2D: from_stack_2 = Me.Item(from_stack_1)
  loc_A45B32: FLdPr var_A4
  loc_A45B35:  = Me.Value
  loc_A45B3A: FLdRfVar var_B4
  loc_A45B3D: CI2Var
  loc_A45B3E: FStI2 var_86
  loc_A45B41: FFreeAd var_8C = "": var_90 = ""
  loc_A45B4A: FFree1Var var_B4 = ""
  loc_A45B4D: ExitProcCbHresult
End Sub

Public Property Get MoviCtde() 'A45AC8
  'Data Table: 472298
  loc_A45A7C: FLdRfVar var_B4
  loc_A45A7F: FLdRfVar var_A4
  loc_A45A82: LitVarStr var_A0, "MoviCtde"
  loc_A45A87: PopAdLdVar
  loc_A45A88: FLdRfVar var_90
  loc_A45A8B: FLdRfVar var_8C
  loc_A45A8E: FLdPr Me
  loc_A45A91: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A45A96: FLdPr var_8C
  loc_A45A99:  = Me.Fields
  loc_A45A9E: FLdPr var_90
  loc_A45AA1: from_stack_2 = Me.Item(from_stack_1)
  loc_A45AA6: FLdPr var_A4
  loc_A45AA9:  = Me.Value
  loc_A45AAE: FLdRfVar var_B4
  loc_A45AB1: CI2Var
  loc_A45AB2: FStI2 var_86
  loc_A45AB5: FFreeAd var_8C = "": var_90 = ""
  loc_A45ABE: FFree1Var var_B4 = ""
  loc_A45AC1: ExitProcCbHresult
End Sub

Public Property Get ImpoPade() 'A448BC
  'Data Table: 472298
  loc_A44870: FLdRfVar var_B8
  loc_A44873: FLdRfVar var_A8
  loc_A44876: LitVarStr var_A4, "ImpoPade"
  loc_A4487B: PopAdLdVar
  loc_A4487C: FLdRfVar ImpoPade
  loc_A4487F: FLdRfVar var_90
  loc_A44882: FLdPr Me
  loc_A44885: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A4488A: FLdPr var_90
  loc_A4488D:  = Me.Fields
  loc_A44892: FLdPr ImpoPade
  loc_A44895: from_stack_2 = Me.Item(from_stack_1)
  loc_A4489A: FLdPr var_A8
  loc_A4489D:  = Me.Value
  loc_A448A2: FLdRfVar var_B8
  loc_A448A5: CR4Var
  loc_A448A6: FStFPR8 var_8C
  loc_A448A9: FFreeAd var_90 = "": ImpoPade = ""
  loc_A448B2: FFree1Var var_B8 = ""
  loc_A448B5: ExitProcCbHresult
End Sub

Public Property Get DecaPade() 'A44B78
  'Data Table: 472298
  loc_A44B2C: FLdRfVar var_B8
  loc_A44B2F: FLdRfVar var_A8
  loc_A44B32: LitVarStr var_A4, "DecaPade"
  loc_A44B37: PopAdLdVar
  loc_A44B38: FLdRfVar DecaPade
  loc_A44B3B: FLdRfVar var_90
  loc_A44B3E: FLdPr Me
  loc_A44B41: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A44B46: FLdPr var_90
  loc_A44B49:  = Me.Fields
  loc_A44B4E: FLdPr DecaPade
  loc_A44B51: from_stack_2 = Me.Item(from_stack_1)
  loc_A44B56: FLdPr var_A8
  loc_A44B59:  = Me.Value
  loc_A44B5E: FLdRfVar var_B8
  loc_A44B61: CR4Var
  loc_A44B62: FStFPR8 var_8C
  loc_A44B65: FFreeAd var_90 = "": DecaPade = ""
  loc_A44B6E: FFree1Var var_B8 = ""
  loc_A44B71: ExitProcCbHresult
End Sub

Public Property Get TotaPade() 'A4422C
  'Data Table: 472298
  loc_A441E0: FLdRfVar var_B8
  loc_A441E3: FLdRfVar var_A8
  loc_A441E6: LitVarStr var_A4, "TotaPade"
  loc_A441EB: PopAdLdVar
  loc_A441EC: FLdRfVar TotaPade
  loc_A441EF: FLdRfVar var_90
  loc_A441F2: FLdPr Me
  loc_A441F5: from_stack_1v = clsdetapago.global_4661792Get()
  loc_A441FA: FLdPr var_90
  loc_A441FD:  = Me.Fields
  loc_A44202: FLdPr TotaPade
  loc_A44205: from_stack_2 = Me.Item(from_stack_1)
  loc_A4420A: FLdPr var_A8
  loc_A4420D:  = Me.Value
  loc_A44212: FLdRfVar var_B8
  loc_A44215: CR4Var
  loc_A44216: FStFPR8 var_8C
  loc_A44219: FFreeAd var_90 = "": TotaPade = ""
  loc_A44222: FFree1Var var_B8 = ""
  loc_A44225: ExitProcCbHresult
End Sub

Public Function ValidaClave(FeenAcpa, NumeAcpa, PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct) 'AE8020
  'Data Table: 472298
  loc_AE7EFC: ILdRf FeenAcpa
  loc_AE7EFF: FStStrCopy var_8C
  loc_AE7F02: ZeroRetVal
  loc_AE7F04: LitStr "SELECT PeriBole FROM detapago WHERE FeenAcpa = "
  loc_AE7F07: LitI4 1
  loc_AE7F0C: LitI4 1
  loc_AE7F11: LitVarStr var_AC, "yyyy-mm-dd"
  loc_AE7F16: FStVarCopyObj var_BC
  loc_AE7F19: FLdRfVar var_BC
  loc_AE7F1C: FLdRfVar var_8C
  loc_AE7F1F: CVarRef
  loc_AE7F24: ImpAdCallI2 Format$(, )
  loc_AE7F29: FStStrNoPop var_C0
  loc_AE7F2C: ConcatStr
  loc_AE7F2D: FStStrNoPop var_C4
  loc_AE7F30: LitStr " AND NumeAcpa = "
  loc_AE7F33: ConcatStr
  loc_AE7F34: FStStrNoPop var_C8
  loc_AE7F37: FLdI2 NumeAcpa
  loc_AE7F3A: CStrUI1
  loc_AE7F3C: FStStrNoPop var_CC
  loc_AE7F3F: ConcatStr
  loc_AE7F40: FStStrNoPop var_D0
  loc_AE7F43: LitStr " AND PeriBole = "
  loc_AE7F46: ConcatStr
  loc_AE7F47: FStStrNoPop var_D4
  loc_AE7F4A: FLdI2 PeriBole
  loc_AE7F4D: CStrUI1
  loc_AE7F4F: FStStrNoPop var_D8
  loc_AE7F52: ConcatStr
  loc_AE7F53: FStStrNoPop var_DC
  loc_AE7F56: LitStr " AND NumeBole = "
  loc_AE7F59: ConcatStr
  loc_AE7F5A: FStStrNoPop var_E0
  loc_AE7F5D: ILdRf NumeBole
  loc_AE7F60: CStrI4
  loc_AE7F62: FStStrNoPop var_E4
  loc_AE7F65: ConcatStr
  loc_AE7F66: FStStrNoPop var_E8
  loc_AE7F69: LitStr " AND PeriCtct = "
  loc_AE7F6C: ConcatStr
  loc_AE7F6D: FStStrNoPop var_EC
  loc_AE7F70: FLdI2 PeriCtct
  loc_AE7F73: CStrUI1
  loc_AE7F75: FStStrNoPop var_F0
  loc_AE7F78: ConcatStr
  loc_AE7F79: FStStrNoPop var_F4
  loc_AE7F7C: LitStr " AND BimeCtct = "
  loc_AE7F7F: ConcatStr
  loc_AE7F80: FStStrNoPop var_F8
  loc_AE7F83: FLdUI1
  loc_AE7F87: CStrI2
  loc_AE7F89: FStStrNoPop var_FC
  loc_AE7F8C: ConcatStr
  loc_AE7F8D: FStStrNoPop var_100
  loc_AE7F90: LitStr " AND NumeCtct = "
  loc_AE7F93: ConcatStr
  loc_AE7F94: FStStrNoPop var_104
  loc_AE7F97: ILdRf NumeCtct
  loc_AE7F9A: CStrI4
  loc_AE7F9C: FStStrNoPop var_108
  loc_AE7F9F: ConcatStr
  loc_AE7FA0: FStStrNoPop var_10C
  loc_AE7FA3: LitStr " AND MoviCtct = "
  loc_AE7FA6: ConcatStr
  loc_AE7FA7: FStStrNoPop var_110
  loc_AE7FAA: FLdI2 MoviCtct
  loc_AE7FAD: CStrUI1
  loc_AE7FAF: FStStrNoPop var_114
  loc_AE7FB2: ConcatStr
  loc_AE7FB3: FStStrNoPop var_118
  loc_AE7FB6: Call EjecutarRs2(from_stack_1v)
  loc_AE7FBB: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_AE7FEC: FFree1Var var_BC = ""
  loc_AE7FEF: FLdRfVar var_120
  loc_AE7FF2: FLdRfVar var_11C
  loc_AE7FF5: FLdPr Me
  loc_AE7FF8: from_stack_1v = clsdetapago.global_4661792Get()
  loc_AE7FFD: FLdPr var_11C
  loc_AE8000:  = Me.RecordCount
  loc_AE8005: ILdRf var_120
  loc_AE8008: LitI4 0
  loc_AE800D: GtI4
  loc_AE800E: FFree1Ad var_11C
  loc_AE8011: BranchF loc_AE801A
  loc_AE8014: LitStr "El detalle del pago ya existe. Verifique el boleto..."
  loc_AE8017: FStStrCopy var_88
  loc_AE801A: ExitProcCbHresult
End Function

Public Sub ActualizaDetaPago(FechAcpa, NumeAcpa, PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, ActuDepa, FeacDepa) 'B2E5B0
  'Data Table: 472298
  loc_B2E340: ILdRf FechAcpa
  loc_B2E343: FStStrCopy var_88
  loc_B2E346: ILdRf ActuDepa
  loc_B2E349: FStStrCopy var_8C
  loc_B2E34C: ILdRf FeacDepa
  loc_B2E34F: FStStrCopy var_90
  loc_B2E352: ILdRf var_90
  loc_B2E355: LitStr vbNullString
  loc_B2E358: NeStr
  loc_B2E35A: BranchF loc_B2E49F
  loc_B2E35D: LitStr "UPDATE detapago SET ActuDepa = '"
  loc_B2E360: ILdRf var_8C
  loc_B2E363: ConcatStr
  loc_B2E364: FStStrNoPop var_94
  loc_B2E367: LitStr "', FeacDepa = '"
  loc_B2E36A: ConcatStr
  loc_B2E36B: FStStrNoPop var_C8
  loc_B2E36E: LitI4 1
  loc_B2E373: LitI4 1
  loc_B2E378: LitVarStr var_B4, "yyyy-mm-dd"
  loc_B2E37D: FStVarCopyObj var_C4
  loc_B2E380: FLdRfVar var_C4
  loc_B2E383: FLdRfVar var_90
  loc_B2E386: CVarRef
  loc_B2E38B: ImpAdCallI2 Format$(, )
  loc_B2E390: FStStrNoPop var_CC
  loc_B2E393: ConcatStr
  loc_B2E394: FStStrNoPop var_D0
  loc_B2E397: LitStr "' WHERE FeenAcpa = '"
  loc_B2E39A: ConcatStr
  loc_B2E39B: FStStrNoPop var_104
  loc_B2E39E: LitI4 1
  loc_B2E3A3: LitI4 1
  loc_B2E3A8: LitVarStr var_F0, "yyyy-mm-dd"
  loc_B2E3AD: FStVarCopyObj var_100
  loc_B2E3B0: FLdRfVar var_100
  loc_B2E3B3: FLdRfVar var_88
  loc_B2E3B6: CVarRef
  loc_B2E3BB: ImpAdCallI2 Format$(, )
  loc_B2E3C0: FStStrNoPop var_108
  loc_B2E3C3: ConcatStr
  loc_B2E3C4: FStStrNoPop var_10C
  loc_B2E3C7: LitStr "' AND NumeAcpa = "
  loc_B2E3CA: ConcatStr
  loc_B2E3CB: FStStrNoPop var_110
  loc_B2E3CE: FLdI2 NumeAcpa
  loc_B2E3D1: CStrUI1
  loc_B2E3D3: FStStrNoPop var_114
  loc_B2E3D6: ConcatStr
  loc_B2E3D7: FStStrNoPop var_118
  loc_B2E3DA: LitStr " AND PeriBole = "
  loc_B2E3DD: ConcatStr
  loc_B2E3DE: FStStrNoPop var_11C
  loc_B2E3E1: FLdI2 PeriBole
  loc_B2E3E4: CStrUI1
  loc_B2E3E6: FStStrNoPop var_120
  loc_B2E3E9: ConcatStr
  loc_B2E3EA: FStStrNoPop var_124
  loc_B2E3ED: LitStr " AND NumeBole = "
  loc_B2E3F0: ConcatStr
  loc_B2E3F1: FStStrNoPop var_128
  loc_B2E3F4: ILdRf NumeBole
  loc_B2E3F7: CStrI4
  loc_B2E3F9: FStStrNoPop var_12C
  loc_B2E3FC: ConcatStr
  loc_B2E3FD: FStStrNoPop var_130
  loc_B2E400: LitStr " AND PeriCtct = "
  loc_B2E403: ConcatStr
  loc_B2E404: FStStrNoPop var_134
  loc_B2E407: FLdI2 PeriCtct
  loc_B2E40A: CStrUI1
  loc_B2E40C: FStStrNoPop var_138
  loc_B2E40F: ConcatStr
  loc_B2E410: FStStrNoPop var_13C
  loc_B2E413: LitStr " AND BimeCtct = "
  loc_B2E416: ConcatStr
  loc_B2E417: FStStrNoPop var_140
  loc_B2E41A: FLdI2 BimeCtct
  loc_B2E41D: CStrUI1
  loc_B2E41F: FStStrNoPop var_144
  loc_B2E422: ConcatStr
  loc_B2E423: FStStrNoPop var_148
  loc_B2E426: LitStr " AND NumeCtct = "
  loc_B2E429: ConcatStr
  loc_B2E42A: FStStrNoPop var_14C
  loc_B2E42D: ILdRf NumeCtct
  loc_B2E430: CStrI4
  loc_B2E432: FStStrNoPop var_150
  loc_B2E435: ConcatStr
  loc_B2E436: FStStrNoPop var_154
  loc_B2E439: LitStr " and MoviCtct = "
  loc_B2E43C: ConcatStr
  loc_B2E43D: FStStrNoPop var_158
  loc_B2E440: FLdI2 MoviCtct
  loc_B2E443: CStrUI1
  loc_B2E445: FStStrNoPop var_15C
  loc_B2E448: ConcatStr
  loc_B2E449: FStStrNoPop var_160
  loc_B2E44C: LitStr ";"
  loc_B2E44F: ConcatStr
  loc_B2E450: FStStrNoPop var_164
  loc_B2E453: Call EjecutarRs2(from_stack_1v)
  loc_B2E458: FFreeStr var_94 = "": var_C8 = "": var_CC = "": var_D0 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_B2E495: FFreeVar var_C4 = ""
  loc_B2E49C: Branch loc_B2E5AF
  loc_B2E49F: ILdRf var_90
  loc_B2E4A2: LitStr vbNullString
  loc_B2E4A5: EqStr
  loc_B2E4A7: BranchF loc_B2E5AF
  loc_B2E4AA: LitStr "UPDATE detapago SET ActuDepa = '"
  loc_B2E4AD: ILdRf var_8C
  loc_B2E4B0: ConcatStr
  loc_B2E4B1: FStStrNoPop var_94
  loc_B2E4B4: LitStr "', FeacDepa = Null WHERE FeenAcpa = '"
  loc_B2E4B7: ConcatStr
  loc_B2E4B8: FStStrNoPop var_C8
  loc_B2E4BB: LitI4 1
  loc_B2E4C0: LitI4 1
  loc_B2E4C5: LitVarStr var_B4, "yyyy-mm-dd"
  loc_B2E4CA: FStVarCopyObj var_C4
  loc_B2E4CD: FLdRfVar var_C4
  loc_B2E4D0: FLdRfVar var_88
  loc_B2E4D3: CVarRef
  loc_B2E4D8: ImpAdCallI2 Format$(, )
  loc_B2E4DD: FStStrNoPop var_CC
  loc_B2E4E0: ConcatStr
  loc_B2E4E1: FStStrNoPop var_D0
  loc_B2E4E4: LitStr "' AND NumeAcpa = "
  loc_B2E4E7: ConcatStr
  loc_B2E4E8: FStStrNoPop var_104
  loc_B2E4EB: FLdI2 NumeAcpa
  loc_B2E4EE: CStrUI1
  loc_B2E4F0: FStStrNoPop var_108
  loc_B2E4F3: ConcatStr
  loc_B2E4F4: FStStrNoPop var_10C
  loc_B2E4F7: LitStr " AND PeriBole = "
  loc_B2E4FA: ConcatStr
  loc_B2E4FB: FStStrNoPop var_110
  loc_B2E4FE: FLdI2 PeriBole
  loc_B2E501: CStrUI1
  loc_B2E503: FStStrNoPop var_114
  loc_B2E506: ConcatStr
  loc_B2E507: FStStrNoPop var_118
  loc_B2E50A: LitStr " AND NumeBole = "
  loc_B2E50D: ConcatStr
  loc_B2E50E: FStStrNoPop var_11C
  loc_B2E511: ILdRf NumeBole
  loc_B2E514: CStrI4
  loc_B2E516: FStStrNoPop var_120
  loc_B2E519: ConcatStr
  loc_B2E51A: FStStrNoPop var_124
  loc_B2E51D: LitStr " AND PeriCtct = "
  loc_B2E520: ConcatStr
  loc_B2E521: FStStrNoPop var_128
  loc_B2E524: FLdI2 PeriCtct
  loc_B2E527: CStrUI1
  loc_B2E529: FStStrNoPop var_12C
  loc_B2E52C: ConcatStr
  loc_B2E52D: FStStrNoPop var_130
  loc_B2E530: LitStr " AND BimeCtct = "
  loc_B2E533: ConcatStr
  loc_B2E534: FStStrNoPop var_134
  loc_B2E537: FLdI2 BimeCtct
  loc_B2E53A: CStrUI1
  loc_B2E53C: FStStrNoPop var_138
  loc_B2E53F: ConcatStr
  loc_B2E540: FStStrNoPop var_13C
  loc_B2E543: LitStr " AND NumeCtct = "
  loc_B2E546: ConcatStr
  loc_B2E547: FStStrNoPop var_140
  loc_B2E54A: ILdRf NumeCtct
  loc_B2E54D: CStrI4
  loc_B2E54F: FStStrNoPop var_144
  loc_B2E552: ConcatStr
  loc_B2E553: FStStrNoPop var_148
  loc_B2E556: LitStr " and MoviCtct = "
  loc_B2E559: ConcatStr
  loc_B2E55A: FStStrNoPop var_14C
  loc_B2E55D: FLdI2 MoviCtct
  loc_B2E560: CStrUI1
  loc_B2E562: FStStrNoPop var_150
  loc_B2E565: ConcatStr
  loc_B2E566: FStStrNoPop var_154
  loc_B2E569: LitStr ";"
  loc_B2E56C: ConcatStr
  loc_B2E56D: FStStrNoPop var_158
  loc_B2E570: Call EjecutarRs2(from_stack_1v)
  loc_B2E575: FFreeStr var_94 = "": var_C8 = "": var_CC = "": var_D0 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_B2E5AC: FFree1Var var_C4 = ""
  loc_B2E5AF: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E95E0
  'Data Table: 472298
  loc_9E95C4: ILdRf pError
  loc_9E95C7: FStAd var_88 
  loc_9E95CB: ILdRf pRecordset
  loc_9E95CE: FStAd var_8C 
  loc_9E95D2: FLdPr Me
  loc_9E95D5: RaiseEvent
  loc_9E95DD: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'AA0B70
  'Data Table: 472298
  loc_AA0AB0: ILdRf pRecordset
  loc_AA0AB3: FStAd var_88 
  loc_AA0AB7: ILdRf adReason
  loc_AA0ABA: FStR4 var_90
  loc_AA0ABD: ILdRf var_90
  loc_AA0AC0: LitI4 1
  loc_AA0AC5: EqI4
  loc_AA0AC6: BranchF loc_AA0ACC
  loc_AA0AC9: Branch loc_AA0B5F
  loc_AA0ACC: ILdRf var_90
  loc_AA0ACF: LitI4 9
  loc_AA0AD4: EqI4
  loc_AA0AD5: BranchF loc_AA0ADB
  loc_AA0AD8: Branch loc_AA0B5F
  loc_AA0ADB: ILdRf var_90
  loc_AA0ADE: LitI4 2
  loc_AA0AE3: EqI4
  loc_AA0AE4: BranchF loc_AA0AEA
  loc_AA0AE7: Branch loc_AA0B5F
  loc_AA0AEA: ILdRf var_90
  loc_AA0AED: LitI4 &HB
  loc_AA0AF2: EqI4
  loc_AA0AF3: BranchF loc_AA0AF9
  loc_AA0AF6: Branch loc_AA0B5F
  loc_AA0AF9: ILdRf var_90
  loc_AA0AFC: LitI4 &HA
  loc_AA0B01: EqI4
  loc_AA0B02: BranchF loc_AA0B08
  loc_AA0B05: Branch loc_AA0B5F
  loc_AA0B08: ILdRf var_90
  loc_AA0B0B: LitI4 7
  loc_AA0B10: EqI4
  loc_AA0B11: BranchF loc_AA0B17
  loc_AA0B14: Branch loc_AA0B5F
  loc_AA0B17: ILdRf var_90
  loc_AA0B1A: LitI4 8
  loc_AA0B1F: EqI4
  loc_AA0B20: BranchF loc_AA0B26
  loc_AA0B23: Branch loc_AA0B5F
  loc_AA0B26: ILdRf var_90
  loc_AA0B29: LitI4 5
  loc_AA0B2E: EqI4
  loc_AA0B2F: BranchF loc_AA0B35
  loc_AA0B32: Branch loc_AA0B5F
  loc_AA0B35: ILdRf var_90
  loc_AA0B38: LitI4 6
  loc_AA0B3D: EqI4
  loc_AA0B3E: BranchF loc_AA0B44
  loc_AA0B41: Branch loc_AA0B5F
  loc_AA0B44: ILdRf var_90
  loc_AA0B47: LitI4 4
  loc_AA0B4C: EqI4
  loc_AA0B4D: BranchF loc_AA0B53
  loc_AA0B50: Branch loc_AA0B5F
  loc_AA0B53: ILdRf var_90
  loc_AA0B56: LitI4 3
  loc_AA0B5B: EqI4
  loc_AA0B5C: BranchF loc_AA0B5F
  loc_AA0B5F: FLdI2 var_8A
  loc_AA0B62: BranchF loc_AA0B6D
  loc_AA0B65: LitI4 4
  loc_AA0B6A: IStI4 adStatus
  loc_AA0B6D: ExitProcHresult
End Sub

Private Function Proc_8_90_9F5340() '9F5340
  'Data Table: 472298
  loc_9F531C: LitStr "Primary"
  loc_9F531F: FLdPr Me
  loc_9F5322: LateIdLdVar var_94 DispID_4 0
  loc_9F5329: CastAdVar Me
  loc_9F532D: FStAdFunc var_98
  loc_9F5330: FLdPr var_98
  loc_9F5338: FFree1Ad var_98
  loc_9F533B: FFree1Var var_94 = ""
  loc_9F533E: ExitProcHresult
End Function

Private Function Proc_8_91_9F5F78(arg_C) '9F5F78
  'Data Table: 472298
  loc_9F5F54: ILdI4 arg_C
  loc_9F5F57: FStStrCopy var_88
  loc_9F5F5A: ILdRf var_88
  loc_9F5F5D: LitStr "Primary"
  loc_9F5F60: EqStr
  loc_9F5F62: BranchF loc_9F5F77
  loc_9F5F65: FLdRfVar var_8C
  loc_9F5F68: FLdPr Me
  loc_9F5F6B: from_stack_1v = clsdetapago.global_4661792Get()
  loc_9F5F70: FLdZeroAd var_8C
  loc_9F5F73: IStAdFunc
  loc_9F5F77: ExitProcHresult
End Function

Public Function global_4661792Get() '472890
  global_4661792Get = global_4661792
End Function

Public Sub global_4661792Put(Value) '4728AA
  global_4661792 = Value
End Sub

Public Sub global_4661792Set(Value) '4728C4
  global_4661792 = Value
End Sub

Public Function global_4661792Get() '4728DE
  global_4661792Get = global_4661792
End Function

Public Sub global_4661792Put(Value) '4728F8
  global_4661792 = Value
End Sub

Public Sub global_4661792Set(Value) '472912
  global_4661792 = Value
End Sub

Public Function global_4661792Get() '47292C
  global_4661792Get = global_4661792
End Function

Public Sub global_4661792Put(Value) '472946
  global_4661792 = Value
End Sub

Public Sub global_4661792Set(Value) '472960
  global_4661792 = Value
End Sub
