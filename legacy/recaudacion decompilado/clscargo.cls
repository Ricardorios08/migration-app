VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clscargo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0A844
  'Data Table: 4176BC
  loc_A0A808: FLdRfVar var_8C
  loc_A0A80B: FLdRfVar var_88
  loc_A0A80E: FLdPr Me
  loc_A0A811: from_stack_1v = clscargo.global_4290116Get()
  loc_A0A816: FLdPr var_88
  loc_A0A819:  = Me.RecordCount
  loc_A0A81E: ILdRf var_8C
  loc_A0A821: LitI4 0
  loc_A0A826: GtI4
  loc_A0A827: FFree1Ad var_88
  loc_A0A82A: BranchF loc_A0A843
  loc_A0A82D: FLdRfVar var_88
  loc_A0A830: FLdPr Me
  loc_A0A833: from_stack_1v = clscargo.global_4290116Get()
  loc_A0A838: FLdPr var_88
  loc_A0A83B: Me.MoveFirst
  loc_A0A840: FFree1Ad var_88
  loc_A0A843: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0B254
  'Data Table: 4176BC
  loc_A0B218: FLdRfVar var_8C
  loc_A0B21B: FLdRfVar var_88
  loc_A0B21E: FLdPr Me
  loc_A0B221: from_stack_1v = clscargo.global_4290116Get()
  loc_A0B226: FLdPr var_88
  loc_A0B229:  = Me.RecordCount
  loc_A0B22E: ILdRf var_8C
  loc_A0B231: LitI4 0
  loc_A0B236: GtI4
  loc_A0B237: FFree1Ad var_88
  loc_A0B23A: BranchF loc_A0B253
  loc_A0B23D: FLdRfVar var_88
  loc_A0B240: FLdPr Me
  loc_A0B243: from_stack_1v = clscargo.global_4290116Get()
  loc_A0B248: FLdPr var_88
  loc_A0B24B: Me.MoveLast
  loc_A0B250: FFree1Ad var_88
  loc_A0B253: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9B5A4
  'Data Table: 4176BC
  loc_A9B4E8: FLdRfVar var_8A
  loc_A9B4EB: FLdRfVar var_88
  loc_A9B4EE: FLdPr Me
  loc_A9B4F1: from_stack_1v = clscargo.global_4290116Get()
  loc_A9B4F6: FLdPr var_88
  loc_A9B4F9:  = Me.EOF
  loc_A9B4FE: FLdI2 var_8A
  loc_A9B501: NotI4
  loc_A9B502: FLdRfVar var_94
  loc_A9B505: FLdRfVar var_90
  loc_A9B508: FLdPr Me
  loc_A9B50B: from_stack_1v = clscargo.global_4290116Get()
  loc_A9B510: FLdPr var_90
  loc_A9B513:  = Me.RecordCount
  loc_A9B518: ILdRf var_94
  loc_A9B51B: LitI4 0
  loc_A9B520: GtI4
  loc_A9B521: AndI4
  loc_A9B522: FFreeAd var_88 = ""
  loc_A9B529: BranchF loc_A9B542
  loc_A9B52C: FLdRfVar var_88
  loc_A9B52F: FLdPr Me
  loc_A9B532: from_stack_1v = clscargo.global_4290116Get()
  loc_A9B537: FLdPr var_88
  loc_A9B53A: Me.MoveNext
  loc_A9B53F: FFree1Ad var_88
  loc_A9B542: FLdRfVar var_8A
  loc_A9B545: FLdRfVar var_88
  loc_A9B548: FLdPr Me
  loc_A9B54B: from_stack_1v = clscargo.global_4290116Get()
  loc_A9B550: FLdPr var_88
  loc_A9B553:  = Me.EOF
  loc_A9B558: FLdI2 var_8A
  loc_A9B55B: FLdRfVar var_94
  loc_A9B55E: FLdRfVar var_90
  loc_A9B561: FLdPr Me
  loc_A9B564: from_stack_1v = clscargo.global_4290116Get()
  loc_A9B569: FLdPr var_90
  loc_A9B56C:  = Me.RecordCount
  loc_A9B571: ILdRf var_94
  loc_A9B574: LitI4 0
  loc_A9B579: GtI4
  loc_A9B57A: AndI4
  loc_A9B57B: FFreeAd var_88 = ""
  loc_A9B582: BranchF loc_A9B5A0
  loc_A9B585: ImpAdCallFPR4 Beep()
  loc_A9B58A: FLdRfVar var_88
  loc_A9B58D: FLdPr Me
  loc_A9B590: from_stack_1v = clscargo.global_4290116Get()
  loc_A9B595: FLdPr var_88
  loc_A9B598: Me.MoveLast
  loc_A9B59D: FFree1Ad var_88
  loc_A9B5A0: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9CEEB0
  'Data Table: 4176BC
  loc_9CEE98: FLdRfVar var_88
  loc_9CEE9B: FLdPr Me
  loc_9CEE9E: from_stack_1v = clscargo.global_4290116Get()
  loc_9CEEA3: FLdPr var_88
  loc_9CEEA6: Me.MoveNext
  loc_9CEEAB: FFree1Ad var_88
  loc_9CEEAE: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E4EB0
  'Data Table: 4176BC
  loc_9E4E90: LitVar_Missing var_98
  loc_9E4E93: PopAdLdVar
  loc_9E4E94: ILdI2 iValor
  loc_9E4E97: CI4UI1
  loc_9E4E98: FLdRfVar var_88
  loc_9E4E9B: FLdPr Me
  loc_9E4E9E: from_stack_1v = clscargo.global_4290116Get()
  loc_9E4EA3: FLdPr var_88
  loc_9E4EA6: Me.Move from_stack_1, from_stack_2
  loc_9E4EAB: FFree1Ad var_88
  loc_9E4EAE: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A99DD0
  'Data Table: 4176BC
  loc_A99D14: FLdRfVar var_8A
  loc_A99D17: FLdRfVar var_88
  loc_A99D1A: FLdPr Me
  loc_A99D1D: from_stack_1v = clscargo.global_4290116Get()
  loc_A99D22: FLdPr var_88
  loc_A99D25:  = Me.BOF
  loc_A99D2A: FLdI2 var_8A
  loc_A99D2D: NotI4
  loc_A99D2E: FLdRfVar var_94
  loc_A99D31: FLdRfVar var_90
  loc_A99D34: FLdPr Me
  loc_A99D37: from_stack_1v = clscargo.global_4290116Get()
  loc_A99D3C: FLdPr var_90
  loc_A99D3F:  = Me.RecordCount
  loc_A99D44: ILdRf var_94
  loc_A99D47: LitI4 0
  loc_A99D4C: GtI4
  loc_A99D4D: AndI4
  loc_A99D4E: FFreeAd var_88 = ""
  loc_A99D55: BranchF loc_A99D6E
  loc_A99D58: FLdRfVar var_88
  loc_A99D5B: FLdPr Me
  loc_A99D5E: from_stack_1v = clscargo.global_4290116Get()
  loc_A99D63: FLdPr var_88
  loc_A99D66: Me.MovePrevious
  loc_A99D6B: FFree1Ad var_88
  loc_A99D6E: FLdRfVar var_8A
  loc_A99D71: FLdRfVar var_88
  loc_A99D74: FLdPr Me
  loc_A99D77: from_stack_1v = clscargo.global_4290116Get()
  loc_A99D7C: FLdPr var_88
  loc_A99D7F:  = Me.BOF
  loc_A99D84: FLdI2 var_8A
  loc_A99D87: FLdRfVar var_94
  loc_A99D8A: FLdRfVar var_90
  loc_A99D8D: FLdPr Me
  loc_A99D90: from_stack_1v = clscargo.global_4290116Get()
  loc_A99D95: FLdPr var_90
  loc_A99D98:  = Me.RecordCount
  loc_A99D9D: ILdRf var_94
  loc_A99DA0: LitI4 0
  loc_A99DA5: GtI4
  loc_A99DA6: AndI4
  loc_A99DA7: FFreeAd var_88 = ""
  loc_A99DAE: BranchF loc_A99DCC
  loc_A99DB1: ImpAdCallFPR4 Beep()
  loc_A99DB6: FLdRfVar var_88
  loc_A99DB9: FLdPr Me
  loc_A99DBC: from_stack_1v = clscargo.global_4290116Get()
  loc_A99DC1: FLdPr var_88
  loc_A99DC4: Me.MoveFirst
  loc_A99DC9: FFree1Ad var_88
  loc_A99DCC: ExitProcHresult
End Sub

Public Property Get EOF() '9F1A20
  'Data Table: 4176BC
  loc_9F19F8: FLdRfVar var_8E
  loc_9F19FB: FLdRfVar var_8C
  loc_9F19FE: FLdPr Me
  loc_9F1A01: from_stack_1v = clscargo.global_4290116Get()
  loc_9F1A06: FLdPr var_8C
  loc_9F1A09:  = Me.EOF
  loc_9F1A0E: FLdI2 var_8E
  loc_9F1A11: FStI2 var_86
  loc_9F1A14: FFree1Ad var_8C
  loc_9F1A17: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F1AD8
  'Data Table: 4176BC
  loc_9F1AB0: FLdRfVar var_8E
  loc_9F1AB3: FLdRfVar var_8C
  loc_9F1AB6: FLdPr Me
  loc_9F1AB9: from_stack_1v = clscargo.global_4290116Get()
  loc_9F1ABE: FLdPr var_8C
  loc_9F1AC1:  = Me.BOF
  loc_9F1AC6: FLdI2 var_8E
  loc_9F1AC9: FStI2 var_86
  loc_9F1ACC: FFree1Ad var_8C
  loc_9F1ACF: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9E172C
  'Data Table: 4176BC
  loc_9E1710: ILdI4 sOrden
  loc_9E1713: FLdRfVar var_88
  loc_9E1716: FLdPr Me
  loc_9E1719: from_stack_1v = clscargo.global_4290116Get()
  loc_9E171E: FLdPr var_88
  loc_9E1721: Me.Sort = from_stack_1
  loc_9E1726: FFree1Ad var_88
  loc_9E1729: ExitProcHresult
End Sub

Public Sub Find(sFind) '9F03D8
  'Data Table: 4176BC
  loc_9F03B0: LitVar_Missing var_98
  loc_9F03B3: PopAdLdVar
  loc_9F03B4: LitI4 1
  loc_9F03B9: LitI4 0
  loc_9F03BE: ILdI4 sFind
  loc_9F03C1: FLdRfVar var_88
  loc_9F03C4: FLdPr Me
  loc_9F03C7: from_stack_1v = clscargo.global_4290116Get()
  loc_9F03CC: FLdPr var_88
  loc_9F03CF: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F03D4: FFree1Ad var_88
  loc_9F03D7: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9E5690
  'Data Table: 4176BC
  loc_9E5670: ILdI4 sCriterio
  loc_9E5673: CVarStr var_98
  loc_9E5676: PopAdLdVar
  loc_9E5677: FLdRfVar var_88
  loc_9E567A: FLdPr Me
  loc_9E567D: from_stack_1v = clscargo.global_4290116Get()
  loc_9E5682: FLdPr var_88
  loc_9E5685: Me.Filter = from_stack_1
  loc_9E568A: FFree1Ad var_88
  loc_9E568D: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F248C
  'Data Table: 4176BC
  loc_9F2464: FLdRfVar var_90
  loc_9F2467: FLdRfVar var_8C
  loc_9F246A: FLdPr Me
  loc_9F246D: from_stack_1v = clscargo.global_4290116Get()
  loc_9F2472: FLdPr var_8C
  loc_9F2475:  = Me.AbsolutePosition
  loc_9F247A: ILdRf var_90
  loc_9F247D: FStR4 var_88
  loc_9F2480: FFree1Ad var_8C
  loc_9F2483: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F2824
  'Data Table: 4176BC
  loc_9F27FC: FLdRfVar var_90
  loc_9F27FF: FLdRfVar var_8C
  loc_9F2802: FLdPr Me
  loc_9F2805: from_stack_1v = clscargo.global_4290116Get()
  loc_9F280A: FLdPr var_8C
  loc_9F280D:  = Me.RecordCount
  loc_9F2812: ILdRf var_90
  loc_9F2815: FStR4 var_88
  loc_9F2818: FFree1Ad var_8C
  loc_9F281B: ExitProcCbHresult
End Sub

Public Sub Delete() 'A23C48
  'Data Table: 4176BC
  loc_A23C00: FLdRfVar var_8C
  loc_A23C03: FLdRfVar var_88
  loc_A23C06: FLdPr Me
  loc_A23C09: from_stack_1v = clscargo.global_4290116Get()
  loc_A23C0E: FLdPr var_88
  loc_A23C11:  = Me.RecordCount
  loc_A23C16: ILdRf var_8C
  loc_A23C19: LitI4 0
  loc_A23C1E: GtI4
  loc_A23C1F: FFree1Ad var_88
  loc_A23C22: BranchF loc_A23C45
  loc_A23C25: LitI4 1
  loc_A23C2A: FLdRfVar var_88
  loc_A23C2D: FLdPr Me
  loc_A23C30: from_stack_1v = clscargo.global_4290116Get()
  loc_A23C35: FLdPr var_88
  loc_A23C38: Me.Delete
  loc_A23C3D: FFree1Ad var_88
  loc_A23C40: Call MoveNext()
  loc_A23C45: ExitProcHresult
End Sub

Public Sub Requery() 'A0036C
  'Data Table: 4176BC
  loc_A0033C: LitI4 -1
  loc_A00341: FLdRfVar var_88
  loc_A00344: FLdPr Me
  loc_A00347: from_stack_1v = clscargo.global_4290116Get()
  loc_A0034C: FLdPr var_88
  loc_A0034F: Me.Requery from_stack_1
  loc_A00354: FFree1Ad var_88
  loc_A00357: LitVarStr var_98, "Primary"
  loc_A0035C: PopAdLdVar
  loc_A0035D: FLdPr Me
  loc_A00360: LateIdCall
  loc_A00368: ExitProcHresult
End Sub

Public Sub Update() 'A23B4C
  'Data Table: 4176BC
  loc_A23B08: FLdRfVar var_88
  loc_A23B0B: FLdPr Me
  loc_A23B0E: from_stack_1v = clscargo.global_4290116Get()
  loc_A23B13: FLdZeroAd var_88
  loc_A23B16: FStAdFunc var_8C
  loc_A23B19: LitI4 3
  loc_A23B1E: FLdPr var_8C
  loc_A23B21: Me.UpdateBatch
  loc_A23B26: FLdRfVar var_90
  loc_A23B29: FLdPr var_8C
  loc_A23B2C:  = Me.EditMode
  loc_A23B31: ILdRf var_90
  loc_A23B34: LitI4 2
  loc_A23B39: EqI4
  loc_A23B3A: BranchF loc_A23B42
  loc_A23B3D: Call MoveLast()
  loc_A23B42: LitNothing
  loc_A23B44: FStAd var_8C 
  loc_A23B48: ExitProcHresult
End Sub

Public Sub Cancel() 'A4BB9C
  'Data Table: 4176BC
  loc_A4BB48: FLdRfVar var_88
  loc_A4BB4B: FLdPr Me
  loc_A4BB4E: from_stack_1v = clscargo.global_4290116Get()
  loc_A4BB53: FLdZeroAd var_88
  loc_A4BB56: FStAdFunc var_8C
  loc_A4BB59: FLdRfVar var_90
  loc_A4BB5C: FLdPr var_8C
  loc_A4BB5F:  = Me.RecordCount
  loc_A4BB64: ILdRf var_90
  loc_A4BB67: LitI4 0
  loc_A4BB6C: GtI4
  loc_A4BB6D: BranchF loc_A4BB94
  loc_A4BB70: FLdPr var_8C
  loc_A4BB73: Me.CancelUpdate
  loc_A4BB78: FLdRfVar var_90
  loc_A4BB7B: FLdPr var_8C
  loc_A4BB7E:  = Me.EditMode
  loc_A4BB83: ILdRf var_90
  loc_A4BB86: LitI4 2
  loc_A4BB8B: EqI4
  loc_A4BB8C: BranchF loc_A4BB94
  loc_A4BB8F: Call MoveFirst()
  loc_A4BB94: LitNothing
  loc_A4BB96: FStAd var_8C 
  loc_A4BB9A: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FDAD4
  'Data Table: 4176BC
  loc_9FDAA8: FLdRfVar var_90
  loc_9FDAAB: FLdRfVar var_8C
  loc_9FDAAE: FLdPr Me
  loc_9FDAB1: from_stack_1v = clscargo.global_4290116Get()
  loc_9FDAB6: FLdPr var_8C
  loc_9FDAB9:  = Me.EditMode
  loc_9FDABE: ILdRf var_90
  loc_9FDAC1: LitI4 0
  loc_9FDAC6: NeI4
  loc_9FDAC7: FStI2 var_86
  loc_9FDACA: FFree1Ad var_8C
  loc_9FDACD: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A6FDF8
  'Data Table: 4176BC
  loc_A6FD84: ILdRf sSelect
  loc_A6FD87: FStStrCopy var_88
  loc_A6FD8A: LitNothing
  loc_A6FD8C: CastAd
  loc_A6FD8F: FStAdFuncNoPop
  loc_A6FD92: FLdPr Me
  loc_A6FD95: Call clscargo.global_4290116Set(from_stack_1v)
  loc_A6FD9A: FFree1Ad var_8C
  loc_A6FD9D: New Recordset
  loc_A6FDA1: FStAdFuncNoPop
  loc_A6FDA4: FLdPr Me
  loc_A6FDA7: Call clscargo.global_4290116Set(from_stack_1v)
  loc_A6FDAC: FFree1Ad var_8C
  loc_A6FDAF: LitI4 -1
  loc_A6FDB4: LitI4 3
  loc_A6FDB9: LitI4 3
  loc_A6FDBE: ImpAdLdI4 MemVar_D9301C
  loc_A6FDC1: CVarAd
  loc_A6FDC5: PopAdLdVar
  loc_A6FDC6: ILdRf var_88
  loc_A6FDC9: CVarStr var_9C
  loc_A6FDCC: PopAdLdVar
  loc_A6FDCD: FLdRfVar var_8C
  loc_A6FDD0: FLdPr Me
  loc_A6FDD3: from_stack_1v = clscargo.global_4290116Get()
  loc_A6FDD8: FLdPr var_8C
  loc_A6FDDB: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6FDE0: FFree1Ad var_8C
  loc_A6FDE3: LitVarStr var_9C, "Primary"
  loc_A6FDE8: PopAdLdVar
  loc_A6FDE9: FLdPr Me
  loc_A6FDEC: LateIdCall
  loc_A6FDF4: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A59CA0
  'Data Table: 4176BC
  loc_A59C40: ILdRf sSelect
  loc_A59C43: FStStrCopy var_88
  loc_A59C46: LitNothing
  loc_A59C48: CastAd
  loc_A59C4B: FStAdFuncNoPop
  loc_A59C4E: FLdPr Me
  loc_A59C51: Call clscargo.global_4290116Set(from_stack_1v)
  loc_A59C56: FFree1Ad var_8C
  loc_A59C59: New Recordset
  loc_A59C5D: FStAdFuncNoPop
  loc_A59C60: FLdPr Me
  loc_A59C63: Call clscargo.global_4290116Set(from_stack_1v)
  loc_A59C68: FFree1Ad var_8C
  loc_A59C6B: LitI4 -1
  loc_A59C70: LitI4 3
  loc_A59C75: LitI4 3
  loc_A59C7A: ImpAdLdI4 MemVar_D9301C
  loc_A59C7D: CVarAd
  loc_A59C81: PopAdLdVar
  loc_A59C82: ILdRf var_88
  loc_A59C85: CVarStr var_9C
  loc_A59C88: PopAdLdVar
  loc_A59C89: FLdRfVar var_8C
  loc_A59C8C: FLdPr Me
  loc_A59C8F: from_stack_1v = clscargo.global_4290116Get()
  loc_A59C94: FLdPr var_8C
  loc_A59C97: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A59C9C: FFree1Ad var_8C
  loc_A59C9F: ExitProcHresult
End Sub

Public Sub Encontrar(CodiCall) '9EE1C4
  'Data Table: 4176BC
  loc_9EE1A4: LitStr "CodiCall = "
  loc_9EE1A7: FLdI2 CodiCall
  loc_9EE1AA: CStrUI1
  loc_9EE1AC: FStStrNoPop var_88
  loc_9EE1AF: ConcatStr
  loc_9EE1B0: PopTmpLdAdStr
  loc_9EE1B4: Call Find(from_stack_1v)
  loc_9EE1B9: FFreeStr var_88 = ""
  loc_9EE1C0: ExitProcHresult
End Sub

Public Property Get DataSource() 'A09098
  'Data Table: 4176BC
  loc_A09068: ZeroRetVal
  loc_A0906A: FLdRfVar var_90
  loc_A0906D: FLdRfVar var_8C
  loc_A09070: FLdPr Me
  loc_A09073: from_stack_1v = clscargo.global_4290116Get()
  loc_A09078: FLdPr var_8C
  loc_A0907B:  = Me.DataSource
  loc_A09080: ILdRf var_90
  loc_A09083: CastAd
  loc_A09086: FStAdFunc var_88
  loc_A09089: FFreeAd var_8C = ""
  loc_A09090: ExitProcCbHresult
  loc_A09096: FLdPr DataSource408
End Sub

Public Property Get EditMode() '9F5008
  'Data Table: 4176BC
  loc_9F4FE0: FLdRfVar var_90
  loc_9F4FE3: FLdRfVar var_8C
  loc_9F4FE6: FLdPr Me
  loc_9F4FE9: from_stack_1v = clscargo.global_4290116Get()
  loc_9F4FEE: FLdPr var_8C
  loc_9F4FF1:  = Me.EditMode
  loc_9F4FF6: ILdRf var_90
  loc_9F4FF9: FStR4 var_88
  loc_9F4FFC: FFree1Ad var_8C
  loc_9F4FFF: ExitProcCbHresult
  loc_9F5005: ThisVCallR8
End Sub

Public Property Get CodiCarg() 'A4BA7C
  'Data Table: 4176BC
  loc_A4BA30: FLdRfVar var_B4
  loc_A4BA33: FLdRfVar var_A4
  loc_A4BA36: LitVarStr var_A0, "CodiCarg"
  loc_A4BA3B: PopAdLdVar
  loc_A4BA3C: FLdRfVar var_90
  loc_A4BA3F: FLdRfVar var_8C
  loc_A4BA42: FLdPr Me
  loc_A4BA45: from_stack_1v = clscargo.global_4290116Get()
  loc_A4BA4A: FLdPr var_8C
  loc_A4BA4D:  = Me.Fields
  loc_A4BA52: FLdPr var_90
  loc_A4BA55: from_stack_2 = Me.Item(from_stack_1)
  loc_A4BA5A: FLdPr var_A4
  loc_A4BA5D:  = Me.Value
  loc_A4BA62: FLdRfVar var_B4
  loc_A4BA65: CI2Var
  loc_A4BA66: FStI2 var_86
  loc_A4BA69: FFreeAd var_8C = "": var_90 = ""
  loc_A4BA72: FFree1Var var_B4 = ""
  loc_A4BA75: ExitProcCbHresult
End Sub

Public Property Get NombCarg() 'A54C10
  'Data Table: 4176BC
  loc_A54BC0: ZeroRetVal
  loc_A54BC2: FLdRfVar var_B4
  loc_A54BC5: FLdRfVar var_A4
  loc_A54BC8: LitVarStr var_A0, "NombCarg"
  loc_A54BCD: PopAdLdVar
  loc_A54BCE: FLdRfVar var_90
  loc_A54BD1: FLdRfVar var_8C
  loc_A54BD4: FLdPr Me
  loc_A54BD7: from_stack_1v = clscargo.global_4290116Get()
  loc_A54BDC: FLdPr var_8C
  loc_A54BDF:  = Me.Fields
  loc_A54BE4: FLdPr var_90
  loc_A54BE7: from_stack_2 = Me.Item(from_stack_1)
  loc_A54BEC: FLdPr var_A4
  loc_A54BEF:  = Me.Value
  loc_A54BF4: FLdRfVar var_B4
  loc_A54BF7: CStrVarTmp
  loc_A54BF8: FStStr var_88
  loc_A54BFB: FFreeAd var_8C = "": var_90 = ""
  loc_A54C04: FFree1Var var_B4 = ""
  loc_A54C07: ExitProcCbHresult
End Sub

Public Property Get PersCarg() 'A54AE8
  'Data Table: 4176BC
  loc_A54A98: ZeroRetVal
  loc_A54A9A: FLdRfVar var_B4
  loc_A54A9D: FLdRfVar var_A4
  loc_A54AA0: LitVarStr var_A0, "PersCarg"
  loc_A54AA5: PopAdLdVar
  loc_A54AA6: FLdRfVar var_90
  loc_A54AA9: FLdRfVar var_8C
  loc_A54AAC: FLdPr Me
  loc_A54AAF: from_stack_1v = clscargo.global_4290116Get()
  loc_A54AB4: FLdPr var_8C
  loc_A54AB7:  = Me.Fields
  loc_A54ABC: FLdPr var_90
  loc_A54ABF: from_stack_2 = Me.Item(from_stack_1)
  loc_A54AC4: FLdPr var_A4
  loc_A54AC7:  = Me.Value
  loc_A54ACC: FLdRfVar var_B4
  loc_A54ACF: CStrVarTmp
  loc_A54AD0: FStStr var_88
  loc_A54AD3: FFreeAd var_8C = "": var_90 = ""
  loc_A54ADC: FFree1Var var_B4 = ""
  loc_A54ADF: ExitProcCbHresult
  loc_A54AE5: DOC
End Sub

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E5248
  'Data Table: 4176BC
  loc_9E522C: ILdRf pError
  loc_9E522F: FStAd var_88 
  loc_9E5233: ILdRf pRecordset
  loc_9E5236: FStAd var_8C 
  loc_9E523A: FLdPr Me
  loc_9E523D: RaiseEvent
  loc_9E5245: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9BE3C
  'Data Table: 4176BC
  loc_A9BD7C: ILdRf pRecordset
  loc_A9BD7F: FStAd var_88 
  loc_A9BD83: ILdRf adReason
  loc_A9BD86: FStR4 var_90
  loc_A9BD89: ILdRf var_90
  loc_A9BD8C: LitI4 1
  loc_A9BD91: EqI4
  loc_A9BD92: BranchF loc_A9BD98
  loc_A9BD95: Branch loc_A9BE2B
  loc_A9BD98: ILdRf var_90
  loc_A9BD9B: LitI4 9
  loc_A9BDA0: EqI4
  loc_A9BDA1: BranchF loc_A9BDA7
  loc_A9BDA4: Branch loc_A9BE2B
  loc_A9BDA7: ILdRf var_90
  loc_A9BDAA: LitI4 2
  loc_A9BDAF: EqI4
  loc_A9BDB0: BranchF loc_A9BDB6
  loc_A9BDB3: Branch loc_A9BE2B
  loc_A9BDB6: ILdRf var_90
  loc_A9BDB9: LitI4 &HB
  loc_A9BDBE: EqI4
  loc_A9BDBF: BranchF loc_A9BDC5
  loc_A9BDC2: Branch loc_A9BE2B
  loc_A9BDC5: ILdRf var_90
  loc_A9BDC8: LitI4 &HA
  loc_A9BDCD: EqI4
  loc_A9BDCE: BranchF loc_A9BDD4
  loc_A9BDD1: Branch loc_A9BE2B
  loc_A9BDD4: ILdRf var_90
  loc_A9BDD7: LitI4 7
  loc_A9BDDC: EqI4
  loc_A9BDDD: BranchF loc_A9BDE3
  loc_A9BDE0: Branch loc_A9BE2B
  loc_A9BDE3: ILdRf var_90
  loc_A9BDE6: LitI4 8
  loc_A9BDEB: EqI4
  loc_A9BDEC: BranchF loc_A9BDF2
  loc_A9BDEF: Branch loc_A9BE2B
  loc_A9BDF2: ILdRf var_90
  loc_A9BDF5: LitI4 5
  loc_A9BDFA: EqI4
  loc_A9BDFB: BranchF loc_A9BE01
  loc_A9BDFE: Branch loc_A9BE2B
  loc_A9BE01: ILdRf var_90
  loc_A9BE04: LitI4 6
  loc_A9BE09: EqI4
  loc_A9BE0A: BranchF loc_A9BE10
  loc_A9BE0D: Branch loc_A9BE2B
  loc_A9BE10: ILdRf var_90
  loc_A9BE13: LitI4 4
  loc_A9BE18: EqI4
  loc_A9BE19: BranchF loc_A9BE1F
  loc_A9BE1C: Branch loc_A9BE2B
  loc_A9BE1F: ILdRf var_90
  loc_A9BE22: LitI4 3
  loc_A9BE27: EqI4
  loc_A9BE28: BranchF loc_A9BE2B
  loc_A9BE2B: FLdI2 var_8A
  loc_A9BE2E: BranchF loc_A9BE39
  loc_A9BE31: LitI4 4
  loc_A9BE36: IStI4 adStatus
  loc_A9BE39: ExitProcHresult
End Sub

Private Function Proc_173_28_9F3008() '9F3008
  'Data Table: 4176BC
  loc_9F2FE4: LitStr "Primary"
  loc_9F2FE7: FLdPr Me
  loc_9F2FEA: LateIdLdVar var_94 DispID_4 0
  loc_9F2FF1: CastAdVar Me
  loc_9F2FF5: FStAdFunc var_98
  loc_9F2FF8: FLdPr var_98
  loc_9F3000: FFree1Ad var_98
  loc_9F3003: FFree1Var var_94 = ""
  loc_9F3006: ExitProcHresult
End Function

Private Function Proc_173_29_9F50BC(arg_C) '9F50BC
  'Data Table: 4176BC
  loc_9F5098: ILdI4 arg_C
  loc_9F509B: FStStrCopy var_88
  loc_9F509E: ILdRf var_88
  loc_9F50A1: LitStr "Primary"
  loc_9F50A4: EqStr
  loc_9F50A6: BranchF loc_9F50BB
  loc_9F50A9: FLdRfVar var_8C
  loc_9F50AC: FLdPr Me
  loc_9F50AF: from_stack_1v = clscargo.global_4290116Get()
  loc_9F50B4: FLdZeroAd var_8C
  loc_9F50B7: IStAdFunc
  loc_9F50BB: ExitProcHresult
End Function

Public Function global_4290116Get() '4179EC
  global_4290116Get = global_4290116
End Function

Public Sub global_4290116Put(Value) '417A06
  global_4290116 = Value
End Sub

Public Sub global_4290116Set(Value) '417A20
  global_4290116 = Value
End Sub

Public Function global_4290116Get() '417A3A
  global_4290116Get = global_4290116
End Function

Public Sub global_4290116Put(Value) '417A54
  global_4290116 = Value
End Sub

Public Sub global_4290116Set(Value) '417A6E
  global_4290116 = Value
End Sub

Public Function global_4290116Get() '417A88
  global_4290116Get = global_4290116
End Function

Public Sub global_4290116Put(Value) '417AA2
  global_4290116 = Value
End Sub

Public Sub global_4290116Set(Value) '417ABC
  global_4290116 = Value
End Sub
