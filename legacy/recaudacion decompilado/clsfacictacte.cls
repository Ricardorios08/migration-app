VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsfacictacte"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Move(iValor) '9E7E44
  'Data Table: 446044
  loc_9E7E24: LitVar_Missing var_98
  loc_9E7E27: PopAdLdVar
  loc_9E7E28: ILdI2 iValor
  loc_9E7E2B: CI4UI1
  loc_9E7E2C: FLdRfVar var_88
  loc_9E7E2F: FLdPr Me
  loc_9E7E32: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9E7E37: FLdPr var_88
  loc_9E7E3A: Me.Move from_stack_1, from_stack_2
  loc_9E7E3F: FFree1Ad var_88
  loc_9E7E42: ExitProcHresult
End Sub

Public Sub MoveFirst() 'A0BB14
  'Data Table: 446044
  loc_A0BAD8: FLdRfVar var_8C
  loc_A0BADB: FLdRfVar var_88
  loc_A0BADE: FLdPr Me
  loc_A0BAE1: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A0BAE6: FLdPr var_88
  loc_A0BAE9:  = Me.RecordCount
  loc_A0BAEE: ILdRf var_8C
  loc_A0BAF1: LitI4 0
  loc_A0BAF6: GtI4
  loc_A0BAF7: FFree1Ad var_88
  loc_A0BAFA: BranchF loc_A0BB13
  loc_A0BAFD: FLdRfVar var_88
  loc_A0BB00: FLdPr Me
  loc_A0BB03: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A0BB08: FLdPr var_88
  loc_A0BB0B: Me.MoveFirst
  loc_A0BB10: FFree1Ad var_88
  loc_A0BB13: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0BBF4
  'Data Table: 446044
  loc_A0BBB8: FLdRfVar var_8C
  loc_A0BBBB: FLdRfVar var_88
  loc_A0BBBE: FLdPr Me
  loc_A0BBC1: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A0BBC6: FLdPr var_88
  loc_A0BBC9:  = Me.RecordCount
  loc_A0BBCE: ILdRf var_8C
  loc_A0BBD1: LitI4 0
  loc_A0BBD6: GtI4
  loc_A0BBD7: FFree1Ad var_88
  loc_A0BBDA: BranchF loc_A0BBF3
  loc_A0BBDD: FLdRfVar var_88
  loc_A0BBE0: FLdPr Me
  loc_A0BBE3: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A0BBE8: FLdPr var_88
  loc_A0BBEB: Me.MoveLast
  loc_A0BBF0: FFree1Ad var_88
  loc_A0BBF3: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9C7C0
  'Data Table: 446044
  loc_A9C704: FLdRfVar var_8A
  loc_A9C707: FLdRfVar var_88
  loc_A9C70A: FLdPr Me
  loc_A9C70D: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A9C712: FLdPr var_88
  loc_A9C715:  = Me.EOF
  loc_A9C71A: FLdI2 var_8A
  loc_A9C71D: NotI4
  loc_A9C71E: FLdRfVar var_94
  loc_A9C721: FLdRfVar var_90
  loc_A9C724: FLdPr Me
  loc_A9C727: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A9C72C: FLdPr var_90
  loc_A9C72F:  = Me.RecordCount
  loc_A9C734: ILdRf var_94
  loc_A9C737: LitI4 0
  loc_A9C73C: GtI4
  loc_A9C73D: AndI4
  loc_A9C73E: FFreeAd var_88 = ""
  loc_A9C745: BranchF loc_A9C75E
  loc_A9C748: FLdRfVar var_88
  loc_A9C74B: FLdPr Me
  loc_A9C74E: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A9C753: FLdPr var_88
  loc_A9C756: Me.MoveNext
  loc_A9C75B: FFree1Ad var_88
  loc_A9C75E: FLdRfVar var_8A
  loc_A9C761: FLdRfVar var_88
  loc_A9C764: FLdPr Me
  loc_A9C767: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A9C76C: FLdPr var_88
  loc_A9C76F:  = Me.EOF
  loc_A9C774: FLdI2 var_8A
  loc_A9C777: FLdRfVar var_94
  loc_A9C77A: FLdRfVar var_90
  loc_A9C77D: FLdPr Me
  loc_A9C780: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A9C785: FLdPr var_90
  loc_A9C788:  = Me.RecordCount
  loc_A9C78D: ILdRf var_94
  loc_A9C790: LitI4 0
  loc_A9C795: GtI4
  loc_A9C796: AndI4
  loc_A9C797: FFreeAd var_88 = ""
  loc_A9C79E: BranchF loc_A9C7BC
  loc_A9C7A1: ImpAdCallFPR4 Beep()
  loc_A9C7A6: FLdRfVar var_88
  loc_A9C7A9: FLdPr Me
  loc_A9C7AC: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A9C7B1: FLdPr var_88
  loc_A9C7B4: Me.MoveLast
  loc_A9C7B9: FFree1Ad var_88
  loc_A9C7BC: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9C8F64
  'Data Table: 446044
  loc_9C8F4C: FLdRfVar var_88
  loc_9C8F4F: FLdPr Me
  loc_9C8F52: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9C8F57: FLdPr var_88
  loc_9C8F5A: Me.MoveNext
  loc_9C8F5F: FFree1Ad var_88
  loc_9C8F62: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9CF60
  'Data Table: 446044
  loc_A9CEA4: FLdRfVar var_8A
  loc_A9CEA7: FLdRfVar var_88
  loc_A9CEAA: FLdPr Me
  loc_A9CEAD: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A9CEB2: FLdPr var_88
  loc_A9CEB5:  = Me.BOF
  loc_A9CEBA: FLdI2 var_8A
  loc_A9CEBD: NotI4
  loc_A9CEBE: FLdRfVar var_94
  loc_A9CEC1: FLdRfVar var_90
  loc_A9CEC4: FLdPr Me
  loc_A9CEC7: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A9CECC: FLdPr var_90
  loc_A9CECF:  = Me.RecordCount
  loc_A9CED4: ILdRf var_94
  loc_A9CED7: LitI4 0
  loc_A9CEDC: GtI4
  loc_A9CEDD: AndI4
  loc_A9CEDE: FFreeAd var_88 = ""
  loc_A9CEE5: BranchF loc_A9CEFE
  loc_A9CEE8: FLdRfVar var_88
  loc_A9CEEB: FLdPr Me
  loc_A9CEEE: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A9CEF3: FLdPr var_88
  loc_A9CEF6: Me.MovePrevious
  loc_A9CEFB: FFree1Ad var_88
  loc_A9CEFE: FLdRfVar var_8A
  loc_A9CF01: FLdRfVar var_88
  loc_A9CF04: FLdPr Me
  loc_A9CF07: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A9CF0C: FLdPr var_88
  loc_A9CF0F:  = Me.BOF
  loc_A9CF14: FLdI2 var_8A
  loc_A9CF17: FLdRfVar var_94
  loc_A9CF1A: FLdRfVar var_90
  loc_A9CF1D: FLdPr Me
  loc_A9CF20: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A9CF25: FLdPr var_90
  loc_A9CF28:  = Me.RecordCount
  loc_A9CF2D: ILdRf var_94
  loc_A9CF30: LitI4 0
  loc_A9CF35: GtI4
  loc_A9CF36: AndI4
  loc_A9CF37: FFreeAd var_88 = ""
  loc_A9CF3E: BranchF loc_A9CF5C
  loc_A9CF41: ImpAdCallFPR4 Beep()
  loc_A9CF46: FLdRfVar var_88
  loc_A9CF49: FLdPr Me
  loc_A9CF4C: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A9CF51: FLdPr var_88
  loc_A9CF54: Me.MoveFirst
  loc_A9CF59: FFree1Ad var_88
  loc_A9CF5C: ExitProcHresult
  loc_A9CF5D: LitI2_Byte 0
End Sub

Public Property Get EOF() '9F6C6C
  'Data Table: 446044
  loc_9F6C44: FLdRfVar var_8E
  loc_9F6C47: FLdRfVar var_8C
  loc_9F6C4A: FLdPr Me
  loc_9F6C4D: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9F6C52: FLdPr var_8C
  loc_9F6C55:  = Me.EOF
  loc_9F6C5A: FLdI2 var_8E
  loc_9F6C5D: FStI2 var_86
  loc_9F6C60: FFree1Ad var_8C
  loc_9F6C63: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F6CC8
  'Data Table: 446044
  loc_9F6CA0: FLdRfVar var_8E
  loc_9F6CA3: FLdRfVar var_8C
  loc_9F6CA6: FLdPr Me
  loc_9F6CA9: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9F6CAE: FLdPr var_8C
  loc_9F6CB1:  = Me.BOF
  loc_9F6CB6: FLdI2 var_8E
  loc_9F6CB9: FStI2 var_86
  loc_9F6CBC: FFree1Ad var_8C
  loc_9F6CBF: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9E24EC
  'Data Table: 446044
  loc_9E24D0: ILdI4 sOrden
  loc_9E24D3: FLdRfVar var_88
  loc_9E24D6: FLdPr Me
  loc_9E24D9: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9E24DE: FLdPr var_88
  loc_9E24E1: Me.Sort = from_stack_1
  loc_9E24E6: FFree1Ad var_88
  loc_9E24E9: ExitProcHresult
  loc_9E24EA: Ary1StCy
  loc_9E24EB: PopAdLdVar
End Sub

Public Sub Find(sFind) '9F6E38
  'Data Table: 446044
  loc_9F6E10: LitVar_Missing var_98
  loc_9F6E13: PopAdLdVar
  loc_9F6E14: LitI4 1
  loc_9F6E19: LitI4 0
  loc_9F6E1E: ILdI4 sFind
  loc_9F6E21: FLdRfVar var_88
  loc_9F6E24: FLdPr Me
  loc_9F6E27: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9F6E2C: FLdPr var_88
  loc_9F6E2F: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F6E34: FFree1Ad var_88
  loc_9F6E37: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F6EF0
  'Data Table: 446044
  loc_9F6EC8: FLdRfVar var_90
  loc_9F6ECB: FLdRfVar var_8C
  loc_9F6ECE: FLdPr Me
  loc_9F6ED1: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9F6ED6: FLdPr var_8C
  loc_9F6ED9:  = Me.AbsolutePosition
  loc_9F6EDE: ILdRf var_90
  loc_9F6EE1: FStR4 var_88
  loc_9F6EE4: FFree1Ad var_8C
  loc_9F6EE7: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F6FA8
  'Data Table: 446044
  loc_9F6F80: FLdRfVar var_90
  loc_9F6F83: FLdRfVar var_8C
  loc_9F6F86: FLdPr Me
  loc_9F6F89: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9F6F8E: FLdPr var_8C
  loc_9F6F91:  = Me.RecordCount
  loc_9F6F96: ILdRf var_90
  loc_9F6F99: FStR4 var_88
  loc_9F6F9C: FFree1Ad var_8C
  loc_9F6F9F: ExitProcCbHresult
  loc_9F6FA5: FLdPr var_A4
End Sub

Public Sub AddNew(CodiFapa, CuotDefa, CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiConc, CapiFacc, SaldFacc) 'AF78D0
  'Data Table: 446044
  loc_AF7700: ILdRf CuenCtct
  loc_AF7703: FStStrCopy var_88
  loc_AF7706: ILdRf CodiConc
  loc_AF7709: FStStrCopy var_8C
  loc_AF770C: LitVar_Missing var_B0
  loc_AF770F: PopAdLdVar
  loc_AF7710: LitVar_Missing var_A0
  loc_AF7713: PopAdLdVar
  loc_AF7714: FLdRfVar var_90
  loc_AF7717: FLdPr Me
  loc_AF771A: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_AF771F: FLdPr var_90
  loc_AF7722: Me.AddNew from_stack_1, from_stack_2
  loc_AF7727: FFree1Ad var_90
  loc_AF772A: ILdRf CodiFapa
  loc_AF772D: CVarI4
  loc_AF7731: PopAdLdVar
  loc_AF7732: LitVarStr var_A0, "CodiFapa"
  loc_AF7737: PopAdLdVar
  loc_AF7738: FLdRfVar var_90
  loc_AF773B: FLdPr Me
  loc_AF773E: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_AF7743: FLdPr var_90
  loc_AF7746: Me.Collect = from_stack_1
  loc_AF774B: FFree1Ad var_90
  loc_AF774E: FLdI2 CuotDefa
  loc_AF7751: CVarI2 var_B0
  loc_AF7754: PopAdLdVar
  loc_AF7755: LitVarStr var_A0, "CuotDefa"
  loc_AF775A: PopAdLdVar
  loc_AF775B: FLdRfVar var_90
  loc_AF775E: FLdPr Me
  loc_AF7761: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_AF7766: FLdPr var_90
  loc_AF7769: Me.Collect = from_stack_1
  loc_AF776E: FFree1Ad var_90
  loc_AF7771: FLdUI1
  loc_AF7775: CVarUI1
  loc_AF7779: PopAdLdVar
  loc_AF777A: LitVarStr var_A0, "CodiOfic"
  loc_AF777F: PopAdLdVar
  loc_AF7780: FLdRfVar var_90
  loc_AF7783: FLdPr Me
  loc_AF7786: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_AF778B: FLdPr var_90
  loc_AF778E: Me.Collect = from_stack_1
  loc_AF7793: FFree1Ad var_90
  loc_AF7796: ILdRf var_88
  loc_AF7799: CVarStr var_B0
  loc_AF779C: PopAdLdVar
  loc_AF779D: LitVarStr var_A0, "CuenCtct"
  loc_AF77A2: PopAdLdVar
  loc_AF77A3: FLdRfVar var_90
  loc_AF77A6: FLdPr Me
  loc_AF77A9: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_AF77AE: FLdPr var_90
  loc_AF77B1: Me.Collect = from_stack_1
  loc_AF77B6: FFree1Ad var_90
  loc_AF77B9: FLdI2 PeriCtct
  loc_AF77BC: CVarI2 var_B0
  loc_AF77BF: PopAdLdVar
  loc_AF77C0: LitVarStr var_A0, "PeriCtct"
  loc_AF77C5: PopAdLdVar
  loc_AF77C6: FLdRfVar var_90
  loc_AF77C9: FLdPr Me
  loc_AF77CC: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_AF77D1: FLdPr var_90
  loc_AF77D4: Me.Collect = from_stack_1
  loc_AF77D9: FFree1Ad var_90
  loc_AF77DC: FLdI2 BimeCtct
  loc_AF77DF: CVarI2 var_B0
  loc_AF77E2: PopAdLdVar
  loc_AF77E3: LitVarStr var_A0, "BimeCtct"
  loc_AF77E8: PopAdLdVar
  loc_AF77E9: FLdRfVar var_90
  loc_AF77EC: FLdPr Me
  loc_AF77EF: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_AF77F4: FLdPr var_90
  loc_AF77F7: Me.Collect = from_stack_1
  loc_AF77FC: FFree1Ad var_90
  loc_AF77FF: ILdRf NumeCtct
  loc_AF7802: CVarI4
  loc_AF7806: PopAdLdVar
  loc_AF7807: LitVarStr var_A0, "NumeCtct"
  loc_AF780C: PopAdLdVar
  loc_AF780D: FLdRfVar var_90
  loc_AF7810: FLdPr Me
  loc_AF7813: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_AF7818: FLdPr var_90
  loc_AF781B: Me.Collect = from_stack_1
  loc_AF7820: FFree1Ad var_90
  loc_AF7823: FLdI2 MoviCtct
  loc_AF7826: CVarI2 var_B0
  loc_AF7829: PopAdLdVar
  loc_AF782A: LitVarStr var_A0, "MoviCtct"
  loc_AF782F: PopAdLdVar
  loc_AF7830: FLdRfVar var_90
  loc_AF7833: FLdPr Me
  loc_AF7836: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_AF783B: FLdPr var_90
  loc_AF783E: Me.Collect = from_stack_1
  loc_AF7843: FFree1Ad var_90
  loc_AF7846: ILdRf var_8C
  loc_AF7849: CVarStr var_B0
  loc_AF784C: PopAdLdVar
  loc_AF784D: LitVarStr var_A0, "CodiConc"
  loc_AF7852: PopAdLdVar
  loc_AF7853: FLdRfVar var_90
  loc_AF7856: FLdPr Me
  loc_AF7859: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_AF785E: FLdPr var_90
  loc_AF7861: Me.Collect = from_stack_1
  loc_AF7866: FFree1Ad var_90
  loc_AF7869: FLdFPR8 CapiFacc
  loc_AF786C: CVarR8
  loc_AF7870: PopAdLdVar
  loc_AF7871: LitVarStr var_A0, "CapiFacc"
  loc_AF7876: PopAdLdVar
  loc_AF7877: FLdRfVar var_90
  loc_AF787A: FLdPr Me
  loc_AF787D: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_AF7882: FLdPr var_90
  loc_AF7885: Me.Collect = from_stack_1
  loc_AF788A: FFree1Ad var_90
  loc_AF788D: FLdFPR8 arg_38
  loc_AF7890: CVarR8
  loc_AF7894: PopAdLdVar
  loc_AF7895: LitVarStr var_A0, "SaldFacc"
  loc_AF789A: PopAdLdVar
  loc_AF789B: FLdRfVar var_90
  loc_AF789E: FLdPr Me
  loc_AF78A1: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_AF78A6: FLdPr var_90
  loc_AF78A9: Me.Collect = from_stack_1
  loc_AF78AE: FFree1Ad var_90
  loc_AF78B1: LitVar_Missing var_B0
  loc_AF78B4: PopAdLdVar
  loc_AF78B5: LitVar_Missing var_A0
  loc_AF78B8: PopAdLdVar
  loc_AF78B9: FLdRfVar var_90
  loc_AF78BC: FLdPr Me
  loc_AF78BF: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_AF78C4: FLdPr var_90
  loc_AF78C7: Me.Update from_stack_1, from_stack_2
  loc_AF78CC: FFree1Ad var_90
  loc_AF78CF: ExitProcHresult
End Sub

Public Sub Delete() 'A21398
  'Data Table: 446044
  loc_A21350: FLdRfVar var_8C
  loc_A21353: FLdRfVar var_88
  loc_A21356: FLdPr Me
  loc_A21359: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A2135E: FLdPr var_88
  loc_A21361:  = Me.RecordCount
  loc_A21366: ILdRf var_8C
  loc_A21369: LitI4 0
  loc_A2136E: GtI4
  loc_A2136F: FFree1Ad var_88
  loc_A21372: BranchF loc_A21395
  loc_A21375: LitI4 1
  loc_A2137A: FLdRfVar var_88
  loc_A2137D: FLdPr Me
  loc_A21380: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A21385: FLdPr var_88
  loc_A21388: Me.Delete
  loc_A2138D: FFree1Ad var_88
  loc_A21390: Call MoveNext()
  loc_A21395: ExitProcHresult
  loc_A21396: DOC
End Sub

Public Sub Requery() '9FF55C
  'Data Table: 446044
  loc_9FF52C: LitI4 -1
  loc_9FF531: FLdRfVar var_88
  loc_9FF534: FLdPr Me
  loc_9FF537: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9FF53C: FLdPr var_88
  loc_9FF53F: Me.Requery from_stack_1
  loc_9FF544: FFree1Ad var_88
  loc_9FF547: LitVarStr var_98, "Primary"
  loc_9FF54C: PopAdLdVar
  loc_9FF54D: FLdPr Me
  loc_9FF550: LateIdCall
  loc_9FF558: ExitProcHresult
End Sub

Public Sub Update() 'A238E0
  'Data Table: 446044
  loc_A2389C: FLdRfVar var_88
  loc_A2389F: FLdPr Me
  loc_A238A2: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A238A7: FLdZeroAd var_88
  loc_A238AA: FStAdFunc var_8C
  loc_A238AD: LitI4 3
  loc_A238B2: FLdPr var_8C
  loc_A238B5: Me.UpdateBatch
  loc_A238BA: FLdRfVar var_90
  loc_A238BD: FLdPr var_8C
  loc_A238C0:  = Me.EditMode
  loc_A238C5: ILdRf var_90
  loc_A238C8: LitI4 2
  loc_A238CD: EqI4
  loc_A238CE: BranchF loc_A238D6
  loc_A238D1: Call MoveLast()
  loc_A238D6: LitNothing
  loc_A238D8: FStAd var_8C 
  loc_A238DC: ExitProcHresult
End Sub

Public Sub Cancel() 'A50340
  'Data Table: 446044
  loc_A502EC: FLdRfVar var_88
  loc_A502EF: FLdPr Me
  loc_A502F2: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A502F7: FLdZeroAd var_88
  loc_A502FA: FStAdFunc var_8C
  loc_A502FD: FLdRfVar var_90
  loc_A50300: FLdPr var_8C
  loc_A50303:  = Me.RecordCount
  loc_A50308: ILdRf var_90
  loc_A5030B: LitI4 0
  loc_A50310: GtI4
  loc_A50311: BranchF loc_A50338
  loc_A50314: FLdPr var_8C
  loc_A50317: Me.CancelUpdate
  loc_A5031C: FLdRfVar var_90
  loc_A5031F: FLdPr var_8C
  loc_A50322:  = Me.EditMode
  loc_A50327: ILdRf var_90
  loc_A5032A: LitI4 2
  loc_A5032F: EqI4
  loc_A50330: BranchF loc_A50338
  loc_A50333: Call MoveFirst()
  loc_A50338: LitNothing
  loc_A5033A: FStAd var_8C 
  loc_A5033E: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FCB74
  'Data Table: 446044
  loc_9FCB48: FLdRfVar var_90
  loc_9FCB4B: FLdRfVar var_8C
  loc_9FCB4E: FLdPr Me
  loc_9FCB51: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9FCB56: FLdPr var_8C
  loc_9FCB59:  = Me.EditMode
  loc_9FCB5E: ILdRf var_90
  loc_9FCB61: LitI4 0
  loc_9FCB66: NeI4
  loc_9FCB67: FStI2 var_86
  loc_9FCB6A: FFree1Ad var_8C
  loc_9FCB6D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A71A30
  'Data Table: 446044
  loc_A719BC: ILdRf sSelect
  loc_A719BF: FStStrCopy var_88
  loc_A719C2: LitNothing
  loc_A719C4: CastAd
  loc_A719C7: FStAdFuncNoPop
  loc_A719CA: FLdPr Me
  loc_A719CD: Call clsfacictacte.global_4480972Set(from_stack_1v)
  loc_A719D2: FFree1Ad var_8C
  loc_A719D5: New Recordset
  loc_A719D9: FStAdFuncNoPop
  loc_A719DC: FLdPr Me
  loc_A719DF: Call clsfacictacte.global_4480972Set(from_stack_1v)
  loc_A719E4: FFree1Ad var_8C
  loc_A719E7: LitI4 -1
  loc_A719EC: LitI4 3
  loc_A719F1: LitI4 3
  loc_A719F6: ImpAdLdI4 MemVar_D9301C
  loc_A719F9: CVarAd
  loc_A719FD: PopAdLdVar
  loc_A719FE: ILdRf var_88
  loc_A71A01: CVarStr var_9C
  loc_A71A04: PopAdLdVar
  loc_A71A05: FLdRfVar var_8C
  loc_A71A08: FLdPr Me
  loc_A71A0B: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A71A10: FLdPr var_8C
  loc_A71A13: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A71A18: FFree1Ad var_8C
  loc_A71A1B: LitVarStr var_9C, "Primary"
  loc_A71A20: PopAdLdVar
  loc_A71A21: FLdPr Me
  loc_A71A24: LateIdCall
  loc_A71A2C: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A5BFA8
  'Data Table: 446044
  loc_A5BF48: ILdRf sSelect
  loc_A5BF4B: FStStrCopy var_88
  loc_A5BF4E: LitNothing
  loc_A5BF50: CastAd
  loc_A5BF53: FStAdFuncNoPop
  loc_A5BF56: FLdPr Me
  loc_A5BF59: Call clsfacictacte.global_4480972Set(from_stack_1v)
  loc_A5BF5E: FFree1Ad var_8C
  loc_A5BF61: New Recordset
  loc_A5BF65: FStAdFuncNoPop
  loc_A5BF68: FLdPr Me
  loc_A5BF6B: Call clsfacictacte.global_4480972Set(from_stack_1v)
  loc_A5BF70: FFree1Ad var_8C
  loc_A5BF73: LitI4 -1
  loc_A5BF78: LitI4 3
  loc_A5BF7D: LitI4 3
  loc_A5BF82: ImpAdLdI4 MemVar_D9301C
  loc_A5BF85: CVarAd
  loc_A5BF89: PopAdLdVar
  loc_A5BF8A: ILdRf var_88
  loc_A5BF8D: CVarStr var_9C
  loc_A5BF90: PopAdLdVar
  loc_A5BF91: FLdRfVar var_8C
  loc_A5BF94: FLdPr Me
  loc_A5BF97: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A5BF9C: FLdPr var_8C
  loc_A5BF9F: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5BFA4: FFree1Ad var_8C
  loc_A5BFA7: ExitProcHresult
End Sub

Public Property Get DataSource() 'A09AB8
  'Data Table: 446044
  loc_A09A88: ZeroRetVal
  loc_A09A8A: FLdRfVar var_90
  loc_A09A8D: FLdRfVar var_8C
  loc_A09A90: FLdPr Me
  loc_A09A93: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A09A98: FLdPr var_8C
  loc_A09A9B:  = Me.DataSource
  loc_A09AA0: ILdRf var_90
  loc_A09AA3: CastAd
  loc_A09AA6: FStAdFunc var_88
  loc_A09AA9: FFreeAd var_8C = ""
  loc_A09AB0: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9F7340
  'Data Table: 446044
  loc_9F7318: FLdRfVar var_90
  loc_9F731B: FLdRfVar var_8C
  loc_9F731E: FLdPr Me
  loc_9F7321: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9F7326: FLdPr var_8C
  loc_9F7329:  = Me.EditMode
  loc_9F732E: ILdRf var_90
  loc_9F7331: FStR4 var_88
  loc_9F7334: FFree1Ad var_8C
  loc_9F7337: ExitProcCbHresult
  loc_9F733D: FFree1Ad EditModeC1
End Sub

Public Property Get CodiFapa() 'A509C8
  'Data Table: 446044
  loc_A5097C: FLdRfVar var_B4
  loc_A5097F: FLdRfVar var_A4
  loc_A50982: LitVarStr var_A0, "CodiFapa"
  loc_A50987: PopAdLdVar
  loc_A50988: FLdRfVar var_90
  loc_A5098B: FLdRfVar var_8C
  loc_A5098E: FLdPr Me
  loc_A50991: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A50996: FLdPr var_8C
  loc_A50999:  = Me.Fields
  loc_A5099E: FLdPr var_90
  loc_A509A1: from_stack_2 = Me.Item(from_stack_1)
  loc_A509A6: FLdPr var_A4
  loc_A509A9:  = Me.Value
  loc_A509AE: FLdRfVar var_B4
  loc_A509B1: CI4Var
  loc_A509B3: FStR4 var_88
  loc_A509B6: FFreeAd var_8C = "": var_90 = ""
  loc_A509BF: FFree1Var var_B4 = ""
  loc_A509C2: ExitProcCbHresult
End Sub

Public Property Let CodiFapa(vDato) '9F739C
  'Data Table: 446044
  loc_9F7374: ILdRf vDato
  loc_9F7377: CVarI4
  loc_9F737B: PopAdLdVar
  loc_9F737C: LitVarStr var_98, "CodiFapa"
  loc_9F7381: PopAdLdVar
  loc_9F7382: FLdRfVar var_88
  loc_9F7385: FLdPr Me
  loc_9F7388: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9F738D: FLdPr var_88
  loc_9F7390: Me.Collect = from_stack_1
  loc_9F7395: FFree1Ad var_88
  loc_9F7398: ExitProcHresult
End Sub

Public Property Get CuotDefa() 'A50A54
  'Data Table: 446044
  loc_A50A08: FLdRfVar var_B4
  loc_A50A0B: FLdRfVar var_A4
  loc_A50A0E: LitVarStr var_A0, "CuotDefa"
  loc_A50A13: PopAdLdVar
  loc_A50A14: FLdRfVar var_90
  loc_A50A17: FLdRfVar var_8C
  loc_A50A1A: FLdPr Me
  loc_A50A1D: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A50A22: FLdPr var_8C
  loc_A50A25:  = Me.Fields
  loc_A50A2A: FLdPr var_90
  loc_A50A2D: from_stack_2 = Me.Item(from_stack_1)
  loc_A50A32: FLdPr var_A4
  loc_A50A35:  = Me.Value
  loc_A50A3A: FLdRfVar var_B4
  loc_A50A3D: CI2Var
  loc_A50A3E: FStI2 var_86
  loc_A50A41: FFreeAd var_8C = "": var_90 = ""
  loc_A50A4A: FFree1Var var_B4 = ""
  loc_A50A4D: ExitProcCbHresult
End Sub

Public Property Let CuotDefa(vDato) '9EDC48
  'Data Table: 446044
  loc_9EDC24: FLdI2 vDato
  loc_9EDC27: CVarI2 var_A8
  loc_9EDC2A: PopAdLdVar
  loc_9EDC2B: LitVarStr var_98, "CuotDefa"
  loc_9EDC30: PopAdLdVar
  loc_9EDC31: FLdRfVar var_88
  loc_9EDC34: FLdPr Me
  loc_9EDC37: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9EDC3C: FLdPr var_88
  loc_9EDC3F: Me.Collect = from_stack_1
  loc_9EDC44: FFree1Ad var_88
  loc_9EDC47: ExitProcHresult
End Sub

Public Property Get CodiOfic() 'A531D0
  'Data Table: 446044
  loc_A53180: FLdRfVar var_B4
  loc_A53183: FLdRfVar var_A4
  loc_A53186: LitVarStr var_A0, "CodiOfic"
  loc_A5318B: PopAdLdVar
  loc_A5318C: FLdRfVar var_90
  loc_A5318F: FLdRfVar var_8C
  loc_A53192: FLdPr Me
  loc_A53195: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A5319A: FLdPr var_8C
  loc_A5319D:  = Me.Fields
  loc_A531A2: FLdPr var_90
  loc_A531A5: from_stack_2 = Me.Item(from_stack_1)
  loc_A531AA: FLdPr var_A4
  loc_A531AD:  = Me.Value
  loc_A531B2: FLdRfVar var_B4
  loc_A531B5: CUI1Var
  loc_A531B7: FStUI1 var_86
  loc_A531BB: FFreeAd var_8C = "": var_90 = ""
  loc_A531C4: FFree1Var var_B4 = ""
  loc_A531C7: ExitProcCbHresult
  loc_A531CD: ILdRf arg_1BFF
End Sub

Public Property Let CodiOfic(vDato) '9F7454
  'Data Table: 446044
  loc_9F742C: FLdUI1
  loc_9F7430: CVarUI1
  loc_9F7434: PopAdLdVar
  loc_9F7435: LitVarStr var_98, "CodiOfic"
  loc_9F743A: PopAdLdVar
  loc_9F743B: FLdRfVar var_88
  loc_9F743E: FLdPr Me
  loc_9F7441: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9F7446: FLdPr var_88
  loc_9F7449: Me.Collect = from_stack_1
  loc_9F744E: FFree1Ad var_88
  loc_9F7451: ExitProcHresult
  loc_9F7452: LitI2FP -13306
End Sub

Public Property Get CuenCtct() 'A589EC
  'Data Table: 446044
  loc_A5899C: ZeroRetVal
  loc_A5899E: FLdRfVar var_B4
  loc_A589A1: FLdRfVar var_A4
  loc_A589A4: LitVarStr var_A0, "CuenCtct"
  loc_A589A9: PopAdLdVar
  loc_A589AA: FLdRfVar var_90
  loc_A589AD: FLdRfVar var_8C
  loc_A589B0: FLdPr Me
  loc_A589B3: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A589B8: FLdPr var_8C
  loc_A589BB:  = Me.Fields
  loc_A589C0: FLdPr var_90
  loc_A589C3: from_stack_2 = Me.Item(from_stack_1)
  loc_A589C8: FLdPr var_A4
  loc_A589CB:  = Me.Value
  loc_A589D0: FLdRfVar var_B4
  loc_A589D3: CStrVarTmp
  loc_A589D4: FStStr var_88
  loc_A589D7: FFreeAd var_8C = "": var_90 = ""
  loc_A589E0: FFree1Var var_B4 = ""
  loc_A589E3: ExitProcCbHresult
  loc_A589E9: ImpAdStCy MemVar_0
End Sub

Public Property Let CuenCtct(vDato) '9FF490
  'Data Table: 446044
  loc_9FF464: ILdRf vDato
  loc_9FF467: FStStrCopy var_88
  loc_9FF46A: ILdRf var_88
  loc_9FF46D: CVarStr var_AC
  loc_9FF470: PopAdLdVar
  loc_9FF471: LitVarStr var_9C, "CuenCtct"
  loc_9FF476: PopAdLdVar
  loc_9FF477: FLdRfVar var_8C
  loc_9FF47A: FLdPr Me
  loc_9FF47D: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9FF482: FLdPr var_8C
  loc_9FF485: Me.Collect = from_stack_1
  loc_9FF48A: FFree1Ad var_8C
  loc_9FF48D: ExitProcHresult
  loc_9FF48E: LeI4
End Sub

Public Property Get PeriCtct() 'A51800
  'Data Table: 446044
  loc_A517B4: FLdRfVar var_B4
  loc_A517B7: FLdRfVar var_A4
  loc_A517BA: LitVarStr var_A0, "PeriCtct"
  loc_A517BF: PopAdLdVar
  loc_A517C0: FLdRfVar var_90
  loc_A517C3: FLdRfVar var_8C
  loc_A517C6: FLdPr Me
  loc_A517C9: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A517CE: FLdPr var_8C
  loc_A517D1:  = Me.Fields
  loc_A517D6: FLdPr var_90
  loc_A517D9: from_stack_2 = Me.Item(from_stack_1)
  loc_A517DE: FLdPr var_A4
  loc_A517E1:  = Me.Value
  loc_A517E6: FLdRfVar var_B4
  loc_A517E9: CI2Var
  loc_A517EA: FStI2 var_86
  loc_A517ED: FFreeAd var_8C = "": var_90 = ""
  loc_A517F6: FFree1Var var_B4 = ""
  loc_A517F9: ExitProcCbHresult
End Sub

Public Property Let PeriCtct(vDato) '9EDCA0
  'Data Table: 446044
  loc_9EDC7C: FLdI2 vDato
  loc_9EDC7F: CVarI2 var_A8
  loc_9EDC82: PopAdLdVar
  loc_9EDC83: LitVarStr var_98, "PeriCtct"
  loc_9EDC88: PopAdLdVar
  loc_9EDC89: FLdRfVar var_88
  loc_9EDC8C: FLdPr Me
  loc_9EDC8F: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9EDC94: FLdPr var_88
  loc_9EDC97: Me.Collect = from_stack_1
  loc_9EDC9C: FFree1Ad var_88
  loc_9EDC9F: ExitProcHresult
End Sub

Public Property Get BimeCtct() 'A50F40
  'Data Table: 446044
  loc_A50EF4: FLdRfVar var_B4
  loc_A50EF7: FLdRfVar var_A4
  loc_A50EFA: LitVarStr var_A0, "BimeCtct"
  loc_A50EFF: PopAdLdVar
  loc_A50F00: FLdRfVar var_90
  loc_A50F03: FLdRfVar var_8C
  loc_A50F06: FLdPr Me
  loc_A50F09: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A50F0E: FLdPr var_8C
  loc_A50F11:  = Me.Fields
  loc_A50F16: FLdPr var_90
  loc_A50F19: from_stack_2 = Me.Item(from_stack_1)
  loc_A50F1E: FLdPr var_A4
  loc_A50F21:  = Me.Value
  loc_A50F26: FLdRfVar var_B4
  loc_A50F29: CI2Var
  loc_A50F2A: FStI2 var_86
  loc_A50F2D: FFreeAd var_8C = "": var_90 = ""
  loc_A50F36: FFree1Var var_B4 = ""
  loc_A50F39: ExitProcCbHresult
End Sub

Public Property Let BimeCtct(vDato) '9EEFE0
  'Data Table: 446044
  loc_9EEFBC: FLdI2 vDato
  loc_9EEFBF: CVarI2 var_A8
  loc_9EEFC2: PopAdLdVar
  loc_9EEFC3: LitVarStr var_98, "BimeCtct"
  loc_9EEFC8: PopAdLdVar
  loc_9EEFC9: FLdRfVar var_88
  loc_9EEFCC: FLdPr Me
  loc_9EEFCF: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9EEFD4: FLdPr var_88
  loc_9EEFD7: Me.Collect = from_stack_1
  loc_9EEFDC: FFree1Ad var_88
  loc_9EEFDF: ExitProcHresult
End Sub

Public Property Get NumeCtct() 'A50EB4
  'Data Table: 446044
  loc_A50E68: FLdRfVar var_B4
  loc_A50E6B: FLdRfVar var_A4
  loc_A50E6E: LitVarStr var_A0, "NumeCtct"
  loc_A50E73: PopAdLdVar
  loc_A50E74: FLdRfVar var_90
  loc_A50E77: FLdRfVar var_8C
  loc_A50E7A: FLdPr Me
  loc_A50E7D: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A50E82: FLdPr var_8C
  loc_A50E85:  = Me.Fields
  loc_A50E8A: FLdPr var_90
  loc_A50E8D: from_stack_2 = Me.Item(from_stack_1)
  loc_A50E92: FLdPr var_A4
  loc_A50E95:  = Me.Value
  loc_A50E9A: FLdRfVar var_B4
  loc_A50E9D: CI4Var
  loc_A50E9F: FStR4 var_88
  loc_A50EA2: FFreeAd var_8C = "": var_90 = ""
  loc_A50EAB: FFree1Var var_B4 = ""
  loc_A50EAE: ExitProcCbHresult
End Sub

Public Property Let NumeCtct(vDato) '9F7568
  'Data Table: 446044
  loc_9F7540: ILdRf vDato
  loc_9F7543: CVarI4
  loc_9F7547: PopAdLdVar
  loc_9F7548: LitVarStr var_98, "NumeCtct"
  loc_9F754D: PopAdLdVar
  loc_9F754E: FLdRfVar var_88
  loc_9F7551: FLdPr Me
  loc_9F7554: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9F7559: FLdPr var_88
  loc_9F755C: Me.Collect = from_stack_1
  loc_9F7561: FFree1Ad var_88
  loc_9F7564: ExitProcHresult
End Sub

Public Property Get MoviCtct() 'A50798
  'Data Table: 446044
  loc_A5074C: FLdRfVar var_B4
  loc_A5074F: FLdRfVar var_A4
  loc_A50752: LitVarStr var_A0, "MoviCtct"
  loc_A50757: PopAdLdVar
  loc_A50758: FLdRfVar var_90
  loc_A5075B: FLdRfVar var_8C
  loc_A5075E: FLdPr Me
  loc_A50761: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A50766: FLdPr var_8C
  loc_A50769:  = Me.Fields
  loc_A5076E: FLdPr var_90
  loc_A50771: from_stack_2 = Me.Item(from_stack_1)
  loc_A50776: FLdPr var_A4
  loc_A50779:  = Me.Value
  loc_A5077E: FLdRfVar var_B4
  loc_A50781: CI2Var
  loc_A50782: FStI2 var_86
  loc_A50785: FFreeAd var_8C = "": var_90 = ""
  loc_A5078E: FFree1Var var_B4 = ""
  loc_A50791: ExitProcCbHresult
End Sub

Public Property Let MoviCtct(vDato) '9EF1F0
  'Data Table: 446044
  loc_9EF1CC: FLdI2 vDato
  loc_9EF1CF: CVarI2 var_A8
  loc_9EF1D2: PopAdLdVar
  loc_9EF1D3: LitVarStr var_98, "MoviCtct"
  loc_9EF1D8: PopAdLdVar
  loc_9EF1D9: FLdRfVar var_88
  loc_9EF1DC: FLdPr Me
  loc_9EF1DF: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9EF1E4: FLdPr var_88
  loc_9EF1E7: Me.Collect = from_stack_1
  loc_9EF1EC: FFree1Ad var_88
  loc_9EF1EF: ExitProcHresult
End Sub

Public Property Get CodiConc() 'A58A80
  'Data Table: 446044
  loc_A58A30: ZeroRetVal
  loc_A58A32: FLdRfVar var_B4
  loc_A58A35: FLdRfVar var_A4
  loc_A58A38: LitVarStr var_A0, "CodiConc"
  loc_A58A3D: PopAdLdVar
  loc_A58A3E: FLdRfVar var_90
  loc_A58A41: FLdRfVar var_8C
  loc_A58A44: FLdPr Me
  loc_A58A47: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A58A4C: FLdPr var_8C
  loc_A58A4F:  = Me.Fields
  loc_A58A54: FLdPr var_90
  loc_A58A57: from_stack_2 = Me.Item(from_stack_1)
  loc_A58A5C: FLdPr var_A4
  loc_A58A5F:  = Me.Value
  loc_A58A64: FLdRfVar var_B4
  loc_A58A67: CStrVarTmp
  loc_A58A68: FStStr var_88
  loc_A58A6B: FFreeAd var_8C = "": var_90 = ""
  loc_A58A74: FFree1Var var_B4 = ""
  loc_A58A77: ExitProcCbHresult
End Sub

Public Property Let CodiConc(vDato) '9FF42C
  'Data Table: 446044
  loc_9FF400: ILdRf vDato
  loc_9FF403: FStStrCopy var_88
  loc_9FF406: ILdRf var_88
  loc_9FF409: CVarStr var_AC
  loc_9FF40C: PopAdLdVar
  loc_9FF40D: LitVarStr var_9C, "CodiConc"
  loc_9FF412: PopAdLdVar
  loc_9FF413: FLdRfVar var_8C
  loc_9FF416: FLdPr Me
  loc_9FF419: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9FF41E: FLdPr var_8C
  loc_9FF421: Me.Collect = from_stack_1
  loc_9FF426: FFree1Ad var_8C
  loc_9FF429: ExitProcHresult
End Sub

Public Property Get CapiFacc() 'A50824
  'Data Table: 446044
  loc_A507D8: FLdRfVar var_B8
  loc_A507DB: FLdRfVar var_A8
  loc_A507DE: LitVarStr var_A4, "CapiFacc"
  loc_A507E3: PopAdLdVar
  loc_A507E4: FLdRfVar CapiFacc
  loc_A507E7: FLdRfVar var_90
  loc_A507EA: FLdPr Me
  loc_A507ED: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A507F2: FLdPr var_90
  loc_A507F5:  = Me.Fields
  loc_A507FA: FLdPr CapiFacc
  loc_A507FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A50802: FLdPr var_A8
  loc_A50805:  = Me.Value
  loc_A5080A: FLdRfVar var_B8
  loc_A5080D: CR4Var
  loc_A5080E: FStFPR8 var_8C
  loc_A50811: FFreeAd var_90 = "": CapiFacc = ""
  loc_A5081A: FFree1Var var_B8 = ""
  loc_A5081D: ExitProcCbHresult
End Sub

Public Property Let CapiFacc(vDato) '9F76D8
  'Data Table: 446044
  loc_9F76B0: FLdFPR8 vDato
  loc_9F76B3: CVarR8
  loc_9F76B7: PopAdLdVar
  loc_9F76B8: LitVarStr var_98, "CapiFacc"
  loc_9F76BD: PopAdLdVar
  loc_9F76BE: FLdRfVar var_88
  loc_9F76C1: FLdPr Me
  loc_9F76C4: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9F76C9: FLdPr var_88
  loc_9F76CC: Me.Collect = from_stack_1
  loc_9F76D1: FFree1Ad var_88
  loc_9F76D4: ExitProcHresult
End Sub

Public Property Get SaldFacc() 'A50568
  'Data Table: 446044
  loc_A5051C: FLdRfVar var_B8
  loc_A5051F: FLdRfVar var_A8
  loc_A50522: LitVarStr var_A4, "SaldFacc"
  loc_A50527: PopAdLdVar
  loc_A50528: FLdRfVar SaldFacc
  loc_A5052B: FLdRfVar var_90
  loc_A5052E: FLdPr Me
  loc_A50531: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A50536: FLdPr var_90
  loc_A50539:  = Me.Fields
  loc_A5053E: FLdPr SaldFacc
  loc_A50541: from_stack_2 = Me.Item(from_stack_1)
  loc_A50546: FLdPr var_A8
  loc_A50549:  = Me.Value
  loc_A5054E: FLdRfVar var_B8
  loc_A50551: CR4Var
  loc_A50552: FStFPR8 var_8C
  loc_A50555: FFreeAd var_90 = "": SaldFacc = ""
  loc_A5055E: FFree1Var var_B8 = ""
  loc_A50561: ExitProcCbHresult
End Sub

Public Property Let SaldFacc(vDato) '9F7734
  'Data Table: 446044
  loc_9F770C: FLdFPR8 vDato
  loc_9F770F: CVarR8
  loc_9F7713: PopAdLdVar
  loc_9F7714: LitVarStr var_98, "SaldFacc"
  loc_9F7719: PopAdLdVar
  loc_9F771A: FLdRfVar var_88
  loc_9F771D: FLdPr Me
  loc_9F7720: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9F7725: FLdPr var_88
  loc_9F7728: Me.Collect = from_stack_1
  loc_9F772D: FFree1Ad var_88
  loc_9F7730: ExitProcHresult
  loc_9F7733: Ary1LdCy
End Sub

Public Property Get DetaConc() 'A41680
  'Data Table: 446044
  loc_A4163C: ZeroRetValVar
  loc_A4163E: FLdRfVar var_B0
  loc_A41641: LitVarStr var_AC, "DetaConc"
  loc_A41646: PopAdLdVar
  loc_A41647: FLdRfVar var_9C
  loc_A4164A: FLdRfVar var_98
  loc_A4164D: FLdPr Me
  loc_A41650: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A41655: FLdPr var_98
  loc_A41658:  = Me.Fields
  loc_A4165D: FLdPr var_9C
  loc_A41660: from_stack_2 = Me.Item(from_stack_1)
  loc_A41665: FLdZeroAd var_B0
  loc_A41668: CVarAd
  loc_A4166C: FStVar DetaConc
  loc_A41670: FFreeAd var_98 = ""
  loc_A41677: ExitProcCbHresult
End Sub

Public Property Get DetaOfic() 'A41818
  'Data Table: 446044
  loc_A417D4: ZeroRetValVar
  loc_A417D6: FLdRfVar var_B0
  loc_A417D9: LitVarStr var_AC, "DetaOfic"
  loc_A417DE: PopAdLdVar
  loc_A417DF: FLdRfVar var_9C
  loc_A417E2: FLdRfVar var_98
  loc_A417E5: FLdPr Me
  loc_A417E8: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A417ED: FLdPr var_98
  loc_A417F0:  = Me.Fields
  loc_A417F5: FLdPr var_9C
  loc_A417F8: from_stack_2 = Me.Item(from_stack_1)
  loc_A417FD: FLdZeroAd var_B0
  loc_A41800: CVarAd
  loc_A41804: FStVar DetaOfic
  loc_A41808: FFreeAd var_98 = ""
  loc_A4180F: ExitProcCbHresult
End Sub

Public Property Get CucuPers() 'A41DF0
  'Data Table: 446044
  loc_A41DAC: ZeroRetValVar
  loc_A41DAE: FLdRfVar var_B0
  loc_A41DB1: LitVarStr var_AC, "CucuPers"
  loc_A41DB6: PopAdLdVar
  loc_A41DB7: FLdRfVar var_9C
  loc_A41DBA: FLdRfVar var_98
  loc_A41DBD: FLdPr Me
  loc_A41DC0: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A41DC5: FLdPr var_98
  loc_A41DC8:  = Me.Fields
  loc_A41DCD: FLdPr var_9C
  loc_A41DD0: from_stack_2 = Me.Item(from_stack_1)
  loc_A41DD5: FLdZeroAd var_B0
  loc_A41DD8: CVarAd
  loc_A41DDC: FStVar CucuPers
  loc_A41DE0: FFreeAd var_98 = ""
  loc_A41DE7: ExitProcCbHresult
End Sub

Public Property Get DetaPers() 'A421A8
  'Data Table: 446044
  loc_A42164: ZeroRetValVar
  loc_A42166: FLdRfVar var_B0
  loc_A42169: LitVarStr var_AC, "DetaPers"
  loc_A4216E: PopAdLdVar
  loc_A4216F: FLdRfVar var_9C
  loc_A42172: FLdRfVar var_98
  loc_A42175: FLdPr Me
  loc_A42178: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A4217D: FLdPr var_98
  loc_A42180:  = Me.Fields
  loc_A42185: FLdPr var_9C
  loc_A42188: from_stack_2 = Me.Item(from_stack_1)
  loc_A4218D: FLdZeroAd var_B0
  loc_A42190: CVarAd
  loc_A42194: FStVar DetaPers
  loc_A42198: FFreeAd var_98 = ""
  loc_A4219F: ExitProcCbHresult
End Sub

Public Property Get CufiFapa() 'A43660
  'Data Table: 446044
  loc_A4361C: ZeroRetValVar
  loc_A4361E: FLdRfVar var_B0
  loc_A43621: LitVarStr var_AC, "CufiFapa"
  loc_A43626: PopAdLdVar
  loc_A43627: FLdRfVar var_9C
  loc_A4362A: FLdRfVar var_98
  loc_A4362D: FLdPr Me
  loc_A43630: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A43635: FLdPr var_98
  loc_A43638:  = Me.Fields
  loc_A4363D: FLdPr var_9C
  loc_A43640: from_stack_2 = Me.Item(from_stack_1)
  loc_A43645: FLdZeroAd var_B0
  loc_A43648: CVarAd
  loc_A4364C: FStVar CufiFapa
  loc_A43650: FFreeAd var_98 = ""
  loc_A43657: ExitProcCbHresult
End Sub

Public Property Get FirmFapa() 'A43198
  'Data Table: 446044
  loc_A43154: ZeroRetValVar
  loc_A43156: FLdRfVar var_B0
  loc_A43159: LitVarStr var_AC, "FirmFapa"
  loc_A4315E: PopAdLdVar
  loc_A4315F: FLdRfVar var_9C
  loc_A43162: FLdRfVar var_98
  loc_A43165: FLdPr Me
  loc_A43168: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_A4316D: FLdPr var_98
  loc_A43170:  = Me.Fields
  loc_A43175: FLdPr var_9C
  loc_A43178: from_stack_2 = Me.Item(from_stack_1)
  loc_A4317D: FLdZeroAd var_B0
  loc_A43180: CVarAd
  loc_A43184: FStVar FirmFapa
  loc_A43188: FFreeAd var_98 = ""
  loc_A4318F: ExitProcCbHresult
End Sub

Public Sub ActualizaSaldoFaciCtaCte(CodiFapa, CuotDefa, CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, doSaldFacc) 'AE1764
  'Data Table: 446044
  loc_AE1660: ILdRf CuenCtct
  loc_AE1663: FStStrCopy var_88
  loc_AE1666: LitStr "UPDATE facictacte SET SaldFacc = SaldFacc - '"
  loc_AE1669: LitI4 0
  loc_AE166E: LitI4 -1
  loc_AE1673: LitI4 1
  loc_AE1678: LitStr "."
  loc_AE167B: LitStr ","
  loc_AE167E: FLdFPR8 doSaldFacc
  loc_AE1681: CStrR8
  loc_AE1683: FStStrNoPop var_8C
  loc_AE1686: ImpAdCallI2 Replace(, , , , , )
  loc_AE168B: FStStrNoPop var_90
  loc_AE168E: ConcatStr
  loc_AE168F: FStStrNoPop var_94
  loc_AE1692: LitStr "' WHERE CodiFapa = "
  loc_AE1695: ConcatStr
  loc_AE1696: FStStrNoPop var_98
  loc_AE1699: ILdRf CodiFapa
  loc_AE169C: CStrI4
  loc_AE169E: FStStrNoPop var_9C
  loc_AE16A1: ConcatStr
  loc_AE16A2: FStStrNoPop var_A0
  loc_AE16A5: LitStr " AND CuotDefa = "
  loc_AE16A8: ConcatStr
  loc_AE16A9: FStStrNoPop var_A4
  loc_AE16AC: FLdI2 CuotDefa
  loc_AE16AF: CStrUI1
  loc_AE16B1: FStStrNoPop var_A8
  loc_AE16B4: ConcatStr
  loc_AE16B5: FStStrNoPop var_AC
  loc_AE16B8: LitStr " AND CodiOfic = "
  loc_AE16BB: ConcatStr
  loc_AE16BC: FStStrNoPop var_B0
  loc_AE16BF: FLdUI1
  loc_AE16C3: CStrI2
  loc_AE16C5: FStStrNoPop var_B4
  loc_AE16C8: ConcatStr
  loc_AE16C9: FStStrNoPop var_B8
  loc_AE16CC: LitStr " AND CuenCtct = '"
  loc_AE16CF: ConcatStr
  loc_AE16D0: FStStrNoPop var_BC
  loc_AE16D3: ILdRf var_88
  loc_AE16D6: ConcatStr
  loc_AE16D7: FStStrNoPop var_C0
  loc_AE16DA: LitStr "' AND PeriCtct = "
  loc_AE16DD: ConcatStr
  loc_AE16DE: FStStrNoPop var_C4
  loc_AE16E1: FLdI2 PeriCtct
  loc_AE16E4: CStrUI1
  loc_AE16E6: FStStrNoPop var_C8
  loc_AE16E9: ConcatStr
  loc_AE16EA: FStStrNoPop var_CC
  loc_AE16ED: LitStr " AND BimeCtct = "
  loc_AE16F0: ConcatStr
  loc_AE16F1: FStStrNoPop var_D0
  loc_AE16F4: FLdI2 BimeCtct
  loc_AE16F7: CStrUI1
  loc_AE16F9: FStStrNoPop var_D4
  loc_AE16FC: ConcatStr
  loc_AE16FD: FStStrNoPop var_D8
  loc_AE1700: LitStr " AND NumeCtct = "
  loc_AE1703: ConcatStr
  loc_AE1704: FStStrNoPop var_DC
  loc_AE1707: ILdRf NumeCtct
  loc_AE170A: CStrI4
  loc_AE170C: FStStrNoPop var_E0
  loc_AE170F: ConcatStr
  loc_AE1710: FStStrNoPop var_E4
  loc_AE1713: LitStr " AND MoviCtct = "
  loc_AE1716: ConcatStr
  loc_AE1717: FStStrNoPop var_E8
  loc_AE171A: FLdI2 MoviCtct
  loc_AE171D: CStrUI1
  loc_AE171F: FStStrNoPop var_EC
  loc_AE1722: ConcatStr
  loc_AE1723: FStStrNoPop var_F0
  loc_AE1726: Call EjecutarRs2(from_stack_1v)
  loc_AE172B: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_AE1762: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E80E0
  'Data Table: 446044
  loc_9E80C4: ILdRf pError
  loc_9E80C7: FStAd var_88 
  loc_9E80CB: ILdRf pRecordset
  loc_9E80CE: FStAd var_8C 
  loc_9E80D2: FLdPr Me
  loc_9E80D5: RaiseEvent
  loc_9E80DD: ExitProcHresult
  loc_9E80DE: Ary1LdI2
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9D51C
  'Data Table: 446044
  loc_A9D45C: ILdRf pRecordset
  loc_A9D45F: FStAd var_88 
  loc_A9D463: ILdRf adReason
  loc_A9D466: FStR4 var_90
  loc_A9D469: ILdRf var_90
  loc_A9D46C: LitI4 1
  loc_A9D471: EqI4
  loc_A9D472: BranchF loc_A9D478
  loc_A9D475: Branch loc_A9D50B
  loc_A9D478: ILdRf var_90
  loc_A9D47B: LitI4 9
  loc_A9D480: EqI4
  loc_A9D481: BranchF loc_A9D487
  loc_A9D484: Branch loc_A9D50B
  loc_A9D487: ILdRf var_90
  loc_A9D48A: LitI4 2
  loc_A9D48F: EqI4
  loc_A9D490: BranchF loc_A9D496
  loc_A9D493: Branch loc_A9D50B
  loc_A9D496: ILdRf var_90
  loc_A9D499: LitI4 &HB
  loc_A9D49E: EqI4
  loc_A9D49F: BranchF loc_A9D4A5
  loc_A9D4A2: Branch loc_A9D50B
  loc_A9D4A5: ILdRf var_90
  loc_A9D4A8: LitI4 &HA
  loc_A9D4AD: EqI4
  loc_A9D4AE: BranchF loc_A9D4B4
  loc_A9D4B1: Branch loc_A9D50B
  loc_A9D4B4: ILdRf var_90
  loc_A9D4B7: LitI4 7
  loc_A9D4BC: EqI4
  loc_A9D4BD: BranchF loc_A9D4C3
  loc_A9D4C0: Branch loc_A9D50B
  loc_A9D4C3: ILdRf var_90
  loc_A9D4C6: LitI4 8
  loc_A9D4CB: EqI4
  loc_A9D4CC: BranchF loc_A9D4D2
  loc_A9D4CF: Branch loc_A9D50B
  loc_A9D4D2: ILdRf var_90
  loc_A9D4D5: LitI4 5
  loc_A9D4DA: EqI4
  loc_A9D4DB: BranchF loc_A9D4E1
  loc_A9D4DE: Branch loc_A9D50B
  loc_A9D4E1: ILdRf var_90
  loc_A9D4E4: LitI4 6
  loc_A9D4E9: EqI4
  loc_A9D4EA: BranchF loc_A9D4F0
  loc_A9D4ED: Branch loc_A9D50B
  loc_A9D4F0: ILdRf var_90
  loc_A9D4F3: LitI4 4
  loc_A9D4F8: EqI4
  loc_A9D4F9: BranchF loc_A9D4FF
  loc_A9D4FC: Branch loc_A9D50B
  loc_A9D4FF: ILdRf var_90
  loc_A9D502: LitI4 3
  loc_A9D507: EqI4
  loc_A9D508: BranchF loc_A9D50B
  loc_A9D50B: FLdI2 var_8A
  loc_A9D50E: BranchF loc_A9D519
  loc_A9D511: LitI4 4
  loc_A9D516: IStI4 adStatus
  loc_A9D519: ExitProcHresult
  loc_A9D51A: Ary1LdRf
End Sub

Private Function Proc_1_53_9F7170() '9F7170
  'Data Table: 446044
  loc_9F714C: LitStr "Primary"
  loc_9F714F: FLdPr Me
  loc_9F7152: LateIdLdVar var_94 DispID_4 0
  loc_9F7159: CastAdVar Me
  loc_9F715D: FStAdFunc var_98
  loc_9F7160: FLdPr var_98
  loc_9F7168: FFree1Ad var_98
  loc_9F716B: FFree1Var var_94 = ""
  loc_9F716E: ExitProcHresult
End Function

Private Function Proc_1_54_9F7228(arg_C) '9F7228
  'Data Table: 446044
  loc_9F7204: ILdI4 arg_C
  loc_9F7207: FStStrCopy var_88
  loc_9F720A: ILdRf var_88
  loc_9F720D: LitStr "Primary"
  loc_9F7210: EqStr
  loc_9F7212: BranchF loc_9F7227
  loc_9F7215: FLdRfVar var_8C
  loc_9F7218: FLdPr Me
  loc_9F721B: from_stack_1v = clsfacictacte.global_4480972Get()
  loc_9F7220: FLdZeroAd var_8C
  loc_9F7223: IStAdFunc
  loc_9F7227: ExitProcHresult
End Function

Public Function global_4480972Get() '4464A0
  global_4480972Get = global_4480972
End Function

Public Sub global_4480972Put(Value) '4464BA
  global_4480972 = Value
End Sub

Public Sub global_4480972Set(Value) '4464D4
  global_4480972 = Value
End Sub

Public Function global_4480972Get() '4464EE
  global_4480972Get = global_4480972
End Function

Public Sub global_4480972Put(Value) '446508
  global_4480972 = Value
End Sub

Public Sub global_4480972Set(Value) '446522
  global_4480972 = Value
End Sub

Public Function global_4480972Get() '44653C
  global_4480972Get = global_4480972
End Function

Public Sub global_4480972Put(Value) '446556
  global_4480972 = Value
End Sub

Public Sub global_4480972Set(Value) '446570
  global_4480972 = Value
End Sub
