VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clscalle"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0BF04
  'Data Table: 42D088
  loc_A0BEC8: FLdRfVar var_8C
  loc_A0BECB: FLdRfVar var_88
  loc_A0BECE: FLdPr Me
  loc_A0BED1: from_stack_1v = clscalle.global_4378640Get()
  loc_A0BED6: FLdPr var_88
  loc_A0BED9:  = Me.RecordCount
  loc_A0BEDE: ILdRf var_8C
  loc_A0BEE1: LitI4 0
  loc_A0BEE6: GtI4
  loc_A0BEE7: FFree1Ad var_88
  loc_A0BEEA: BranchF loc_A0BF03
  loc_A0BEED: FLdRfVar var_88
  loc_A0BEF0: FLdPr Me
  loc_A0BEF3: from_stack_1v = clscalle.global_4378640Get()
  loc_A0BEF8: FLdPr var_88
  loc_A0BEFB: Me.MoveFirst
  loc_A0BF00: FFree1Ad var_88
  loc_A0BF03: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0BF74
  'Data Table: 42D088
  loc_A0BF38: FLdRfVar var_8C
  loc_A0BF3B: FLdRfVar var_88
  loc_A0BF3E: FLdPr Me
  loc_A0BF41: from_stack_1v = clscalle.global_4378640Get()
  loc_A0BF46: FLdPr var_88
  loc_A0BF49:  = Me.RecordCount
  loc_A0BF4E: ILdRf var_8C
  loc_A0BF51: LitI4 0
  loc_A0BF56: GtI4
  loc_A0BF57: FFree1Ad var_88
  loc_A0BF5A: BranchF loc_A0BF73
  loc_A0BF5D: FLdRfVar var_88
  loc_A0BF60: FLdPr Me
  loc_A0BF63: from_stack_1v = clscalle.global_4378640Get()
  loc_A0BF68: FLdPr var_88
  loc_A0BF6B: Me.MoveLast
  loc_A0BF70: FFree1Ad var_88
  loc_A0BF73: ExitProcHresult
End Sub

Public Sub MoveNext() 'AA0F3C
  'Data Table: 42D088
  loc_AA0E80: FLdRfVar var_8A
  loc_AA0E83: FLdRfVar var_88
  loc_AA0E86: FLdPr Me
  loc_AA0E89: from_stack_1v = clscalle.global_4378640Get()
  loc_AA0E8E: FLdPr var_88
  loc_AA0E91:  = Me.EOF
  loc_AA0E96: FLdI2 var_8A
  loc_AA0E99: NotI4
  loc_AA0E9A: FLdRfVar var_94
  loc_AA0E9D: FLdRfVar var_90
  loc_AA0EA0: FLdPr Me
  loc_AA0EA3: from_stack_1v = clscalle.global_4378640Get()
  loc_AA0EA8: FLdPr var_90
  loc_AA0EAB:  = Me.RecordCount
  loc_AA0EB0: ILdRf var_94
  loc_AA0EB3: LitI4 0
  loc_AA0EB8: GtI4
  loc_AA0EB9: AndI4
  loc_AA0EBA: FFreeAd var_88 = ""
  loc_AA0EC1: BranchF loc_AA0EDA
  loc_AA0EC4: FLdRfVar var_88
  loc_AA0EC7: FLdPr Me
  loc_AA0ECA: from_stack_1v = clscalle.global_4378640Get()
  loc_AA0ECF: FLdPr var_88
  loc_AA0ED2: Me.MoveNext
  loc_AA0ED7: FFree1Ad var_88
  loc_AA0EDA: FLdRfVar var_8A
  loc_AA0EDD: FLdRfVar var_88
  loc_AA0EE0: FLdPr Me
  loc_AA0EE3: from_stack_1v = clscalle.global_4378640Get()
  loc_AA0EE8: FLdPr var_88
  loc_AA0EEB:  = Me.EOF
  loc_AA0EF0: FLdI2 var_8A
  loc_AA0EF3: FLdRfVar var_94
  loc_AA0EF6: FLdRfVar var_90
  loc_AA0EF9: FLdPr Me
  loc_AA0EFC: from_stack_1v = clscalle.global_4378640Get()
  loc_AA0F01: FLdPr var_90
  loc_AA0F04:  = Me.RecordCount
  loc_AA0F09: ILdRf var_94
  loc_AA0F0C: LitI4 0
  loc_AA0F11: GtI4
  loc_AA0F12: AndI4
  loc_AA0F13: FFreeAd var_88 = ""
  loc_AA0F1A: BranchF loc_AA0F38
  loc_AA0F1D: ImpAdCallFPR4 Beep()
  loc_AA0F22: FLdRfVar var_88
  loc_AA0F25: FLdPr Me
  loc_AA0F28: from_stack_1v = clscalle.global_4378640Get()
  loc_AA0F2D: FLdPr var_88
  loc_AA0F30: Me.MoveLast
  loc_AA0F35: FFree1Ad var_88
  loc_AA0F38: ExitProcHresult
  loc_AA0F39: FLdI2 var_B2
End Sub

Public Sub MoveSiguiente() '9D8748
  'Data Table: 42D088
  loc_9D8730: FLdRfVar var_88
  loc_9D8733: FLdPr Me
  loc_9D8736: from_stack_1v = clscalle.global_4378640Get()
  loc_9D873B: FLdPr var_88
  loc_9D873E: Me.MoveNext
  loc_9D8743: FFree1Ad var_88
  loc_9D8746: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E842C
  'Data Table: 42D088
  loc_9E840C: LitVar_Missing var_98
  loc_9E840F: PopAdLdVar
  loc_9E8410: ILdI2 iValor
  loc_9E8413: CI4UI1
  loc_9E8414: FLdRfVar var_88
  loc_9E8417: FLdPr Me
  loc_9E841A: from_stack_1v = clscalle.global_4378640Get()
  loc_9E841F: FLdPr var_88
  loc_9E8422: Me.Move from_stack_1, from_stack_2
  loc_9E8427: FFree1Ad var_88
  loc_9E842A: ExitProcHresult
End Sub

Public Sub MovePrevious() 'AA1124
  'Data Table: 42D088
  loc_AA1068: FLdRfVar var_8A
  loc_AA106B: FLdRfVar var_88
  loc_AA106E: FLdPr Me
  loc_AA1071: from_stack_1v = clscalle.global_4378640Get()
  loc_AA1076: FLdPr var_88
  loc_AA1079:  = Me.BOF
  loc_AA107E: FLdI2 var_8A
  loc_AA1081: NotI4
  loc_AA1082: FLdRfVar var_94
  loc_AA1085: FLdRfVar var_90
  loc_AA1088: FLdPr Me
  loc_AA108B: from_stack_1v = clscalle.global_4378640Get()
  loc_AA1090: FLdPr var_90
  loc_AA1093:  = Me.RecordCount
  loc_AA1098: ILdRf var_94
  loc_AA109B: LitI4 0
  loc_AA10A0: GtI4
  loc_AA10A1: AndI4
  loc_AA10A2: FFreeAd var_88 = ""
  loc_AA10A9: BranchF loc_AA10C2
  loc_AA10AC: FLdRfVar var_88
  loc_AA10AF: FLdPr Me
  loc_AA10B2: from_stack_1v = clscalle.global_4378640Get()
  loc_AA10B7: FLdPr var_88
  loc_AA10BA: Me.MovePrevious
  loc_AA10BF: FFree1Ad var_88
  loc_AA10C2: FLdRfVar var_8A
  loc_AA10C5: FLdRfVar var_88
  loc_AA10C8: FLdPr Me
  loc_AA10CB: from_stack_1v = clscalle.global_4378640Get()
  loc_AA10D0: FLdPr var_88
  loc_AA10D3:  = Me.BOF
  loc_AA10D8: FLdI2 var_8A
  loc_AA10DB: FLdRfVar var_94
  loc_AA10DE: FLdRfVar var_90
  loc_AA10E1: FLdPr Me
  loc_AA10E4: from_stack_1v = clscalle.global_4378640Get()
  loc_AA10E9: FLdPr var_90
  loc_AA10EC:  = Me.RecordCount
  loc_AA10F1: ILdRf var_94
  loc_AA10F4: LitI4 0
  loc_AA10F9: GtI4
  loc_AA10FA: AndI4
  loc_AA10FB: FFreeAd var_88 = ""
  loc_AA1102: BranchF loc_AA1120
  loc_AA1105: ImpAdCallFPR4 Beep()
  loc_AA110A: FLdRfVar var_88
  loc_AA110D: FLdPr Me
  loc_AA1110: from_stack_1v = clscalle.global_4378640Get()
  loc_AA1115: FLdPr var_88
  loc_AA1118: Me.MoveFirst
  loc_AA111D: FFree1Ad var_88
  loc_AA1120: ExitProcHresult
  loc_AA1123: LitI2_Byte &H10
End Sub

Public Property Get EOF() '9F78A4
  'Data Table: 42D088
  loc_9F787C: FLdRfVar var_8E
  loc_9F787F: FLdRfVar var_8C
  loc_9F7882: FLdPr Me
  loc_9F7885: from_stack_1v = clscalle.global_4378640Get()
  loc_9F788A: FLdPr var_8C
  loc_9F788D:  = Me.EOF
  loc_9F7892: FLdI2 var_8E
  loc_9F7895: FStI2 var_86
  loc_9F7898: FFree1Ad var_8C
  loc_9F789B: ExitProcCbHresult
End Sub

Public Property Get BOF() '9FA2B0
  'Data Table: 42D088
  loc_9FA288: FLdRfVar var_8E
  loc_9FA28B: FLdRfVar var_8C
  loc_9FA28E: FLdPr Me
  loc_9FA291: from_stack_1v = clscalle.global_4378640Get()
  loc_9FA296: FLdPr var_8C
  loc_9FA299:  = Me.BOF
  loc_9FA29E: FLdI2 var_8E
  loc_9FA2A1: FStI2 var_86
  loc_9FA2A4: FFree1Ad var_8C
  loc_9FA2A7: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9E0BEC
  'Data Table: 42D088
  loc_9E0BD0: ILdI4 sOrden
  loc_9E0BD3: FLdRfVar var_88
  loc_9E0BD6: FLdPr Me
  loc_9E0BD9: from_stack_1v = clscalle.global_4378640Get()
  loc_9E0BDE: FLdPr var_88
  loc_9E0BE1: Me.Sort = from_stack_1
  loc_9E0BE6: FFree1Ad var_88
  loc_9E0BE9: ExitProcHresult
  loc_9E0BEA: FLdPr arg_1008
End Sub

Public Sub Filter(sCriterio) '9E82DC
  'Data Table: 42D088
  loc_9E82BC: ILdI4 sCriterio
  loc_9E82BF: CVarStr var_98
  loc_9E82C2: PopAdLdVar
  loc_9E82C3: FLdRfVar var_88
  loc_9E82C6: FLdPr Me
  loc_9E82C9: from_stack_1v = clscalle.global_4378640Get()
  loc_9E82CE: FLdPr var_88
  loc_9E82D1: Me.Filter = from_stack_1
  loc_9E82D6: FFree1Ad var_88
  loc_9E82D9: ExitProcHresult
  loc_9E82DA: LitI2_Byte &HFE
End Sub

Public Sub Find(sFind) '9FA30C
  'Data Table: 42D088
  loc_9FA2E4: LitVar_Missing var_98
  loc_9FA2E7: PopAdLdVar
  loc_9FA2E8: LitI4 1
  loc_9FA2ED: LitI4 0
  loc_9FA2F2: ILdI4 sFind
  loc_9FA2F5: FLdRfVar var_88
  loc_9FA2F8: FLdPr Me
  loc_9FA2FB: from_stack_1v = clscalle.global_4378640Get()
  loc_9FA300: FLdPr var_88
  loc_9FA303: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9FA308: FFree1Ad var_88
  loc_9FA30B: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F9DA8
  'Data Table: 42D088
  loc_9F9D80: FLdRfVar var_90
  loc_9F9D83: FLdRfVar var_8C
  loc_9F9D86: FLdPr Me
  loc_9F9D89: from_stack_1v = clscalle.global_4378640Get()
  loc_9F9D8E: FLdPr var_8C
  loc_9F9D91:  = Me.AbsolutePosition
  loc_9F9D96: ILdRf var_90
  loc_9F9D99: FStR4 var_88
  loc_9F9D9C: FFree1Ad var_8C
  loc_9F9D9F: ExitProcCbHresult
  loc_9F9DA7: Ary1LdCy
End Sub

Public Property Get RecordCount() '9F9BDC
  'Data Table: 42D088
  loc_9F9BB4: FLdRfVar var_90
  loc_9F9BB7: FLdRfVar var_8C
  loc_9F9BBA: FLdPr Me
  loc_9F9BBD: from_stack_1v = clscalle.global_4378640Get()
  loc_9F9BC2: FLdPr var_8C
  loc_9F9BC5:  = Me.RecordCount
  loc_9F9BCA: ILdRf var_90
  loc_9F9BCD: FStR4 var_88
  loc_9F9BD0: FFree1Ad var_8C
  loc_9F9BD3: ExitProcCbHresult
  loc_9F9BD9: VCallFPR8
End Sub

Public Sub AddNew(CodiCall, DetaCall, CodiBarr, CodiLoca) 'AA6AEC
  'Data Table: 42D088
  loc_AA6A48: ILdRf DetaCall
  loc_AA6A4B: FStStrCopy var_88
  loc_AA6A4E: FLdRfVar var_8C
  loc_AA6A51: ILdRf CodiCall
  loc_AA6A54: CI2I4
  loc_AA6A55: from_stack_2v = ValidaClave(from_stack_1v)
  loc_AA6A5A: ILdRf var_8C
  loc_AA6A5D: LitStr vbNullString
  loc_AA6A60: NeStr
  loc_AA6A62: FFree1Str var_8C
  loc_AA6A65: BranchF loc_AA6A73
  loc_AA6A68: LitStr "La CALLE YA EXISTE. Reintente..."
  loc_AA6A6B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA6A70: Branch loc_AA6AE9
  loc_AA6A73: LitStr "INSERT INTO infogov.calle (CodiCall, DetaCall, CodiBarr, CodiLoca) VALUES ("
  loc_AA6A76: ILdRf CodiCall
  loc_AA6A79: CStrI4
  loc_AA6A7B: FStStrNoPop var_8C
  loc_AA6A7E: ConcatStr
  loc_AA6A7F: FStStrNoPop var_90
  loc_AA6A82: LitStr ",'"
  loc_AA6A85: ConcatStr
  loc_AA6A86: FStStrNoPop var_94
  loc_AA6A89: ILdRf var_88
  loc_AA6A8C: ConcatStr
  loc_AA6A8D: FStStrNoPop var_98
  loc_AA6A90: LitStr "',"
  loc_AA6A93: ConcatStr
  loc_AA6A94: FStStrNoPop var_9C
  loc_AA6A97: FLdI2 CodiBarr
  loc_AA6A9A: CStrUI1
  loc_AA6A9C: FStStrNoPop var_A0
  loc_AA6A9F: ConcatStr
  loc_AA6AA0: FStStrNoPop var_A4
  loc_AA6AA3: LitStr ","
  loc_AA6AA6: ConcatStr
  loc_AA6AA7: FStStrNoPop var_A8
  loc_AA6AAA: FLdI2 CodiLoca
  loc_AA6AAD: CStrUI1
  loc_AA6AAF: FStStrNoPop var_AC
  loc_AA6AB2: ConcatStr
  loc_AA6AB3: FStStrNoPop var_B0
  loc_AA6AB6: LitStr ");"
  loc_AA6AB9: ConcatStr
  loc_AA6ABA: FStStrNoPop var_B4
  loc_AA6ABD: Call EjecutarRs2(from_stack_1v)
  loc_AA6AC2: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_AA6ADB: Call Requery()
  loc_AA6AE0: ILdRf CodiCall
  loc_AA6AE3: CI2I4
  loc_AA6AE4: Call Encontrar(from_stack_1v)
  loc_AA6AE9: ExitProcHresult
  loc_AA6AEA: Ary1LdCy
End Sub

Public Sub Modificar(CodiCall, DetaCall, CodiBarr, CodiLoca) 'AA2340
  'Data Table: 42D088
  loc_AA22A4: ILdRf DetaCall
  loc_AA22A7: FStStrCopy var_88
  loc_AA22AA: FLdRfVar var_8C
  loc_AA22AD: ILdRf CodiCall
  loc_AA22B0: CI2I4
  loc_AA22B1: from_stack_2v = ValidaClave(from_stack_1v)
  loc_AA22B6: ILdRf var_8C
  loc_AA22B9: LitStr vbNullString
  loc_AA22BC: EqStr
  loc_AA22BE: FFree1Str var_8C
  loc_AA22C1: BranchF loc_AA22CF
  loc_AA22C4: LitStr "La CALLE NO EXISTE. Reintente..."
  loc_AA22C7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA22CC: Branch loc_AA232E
  loc_AA22CF: LitStr " UPDATE infogov.calle SET infogov.calle.DetaCall='"
  loc_AA22D2: ILdRf var_88
  loc_AA22D5: ConcatStr
  loc_AA22D6: FStStrNoPop var_8C
  loc_AA22D9: LitStr "', infogov.calle.CodiBarr = "
  loc_AA22DC: ConcatStr
  loc_AA22DD: FStStrNoPop var_90
  loc_AA22E0: FLdI2 CodiBarr
  loc_AA22E3: CStrUI1
  loc_AA22E5: FStStrNoPop var_94
  loc_AA22E8: ConcatStr
  loc_AA22E9: FStStrNoPop var_98
  loc_AA22EC: LitStr ", infogov.calle.CodiLoca = "
  loc_AA22EF: ConcatStr
  loc_AA22F0: FStStrNoPop var_9C
  loc_AA22F3: FLdI2 CodiLoca
  loc_AA22F6: CStrUI1
  loc_AA22F8: FStStrNoPop var_A0
  loc_AA22FB: ConcatStr
  loc_AA22FC: FStStrNoPop var_A4
  loc_AA22FF: LitStr " WHERE infogov.calle.CodiCall="
  loc_AA2302: ConcatStr
  loc_AA2303: FStStrNoPop var_A8
  loc_AA2306: ILdRf CodiCall
  loc_AA2309: CStrI4
  loc_AA230B: FStStrNoPop var_AC
  loc_AA230E: ConcatStr
  loc_AA230F: FStStrNoPop var_B0
  loc_AA2312: Call EjecutarRs2(from_stack_1v)
  loc_AA2317: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AA232E: Call Requery()
  loc_AA2333: ILdRf CodiCall
  loc_AA2336: CI2I4
  loc_AA2337: Call Encontrar(from_stack_1v)
  loc_AA233C: ExitProcHresult
End Sub

Public Sub Delete() 'A237EC
  'Data Table: 42D088
  loc_A237A4: FLdRfVar var_8C
  loc_A237A7: FLdRfVar var_88
  loc_A237AA: FLdPr Me
  loc_A237AD: from_stack_1v = clscalle.global_4378640Get()
  loc_A237B2: FLdPr var_88
  loc_A237B5:  = Me.RecordCount
  loc_A237BA: ILdRf var_8C
  loc_A237BD: LitI4 0
  loc_A237C2: GtI4
  loc_A237C3: FFree1Ad var_88
  loc_A237C6: BranchF loc_A237E9
  loc_A237C9: LitI4 1
  loc_A237CE: FLdRfVar var_88
  loc_A237D1: FLdPr Me
  loc_A237D4: from_stack_1v = clscalle.global_4378640Get()
  loc_A237D9: FLdPr var_88
  loc_A237DC: Me.Delete
  loc_A237E1: FFree1Ad var_88
  loc_A237E4: Call MoveNext()
  loc_A237E9: ExitProcHresult
  loc_A237EA: Ary1LdPr
End Sub

Public Sub Requery() 'A05060
  'Data Table: 42D088
  loc_A05030: LitI4 -1
  loc_A05035: FLdRfVar var_88
  loc_A05038: FLdPr Me
  loc_A0503B: from_stack_1v = clscalle.global_4378640Get()
  loc_A05040: FLdPr var_88
  loc_A05043: Me.Requery from_stack_1
  loc_A05048: FFree1Ad var_88
  loc_A0504B: LitVarStr var_98, "Primary"
  loc_A05050: PopAdLdVar
  loc_A05051: FLdPr Me
  loc_A05054: LateIdCall
  loc_A0505C: ExitProcHresult
End Sub

Public Sub Update() 'A23484
  'Data Table: 42D088
  loc_A23440: FLdRfVar var_88
  loc_A23443: FLdPr Me
  loc_A23446: from_stack_1v = clscalle.global_4378640Get()
  loc_A2344B: FLdZeroAd var_88
  loc_A2344E: FStAdFunc var_8C
  loc_A23451: LitI4 3
  loc_A23456: FLdPr var_8C
  loc_A23459: Me.UpdateBatch
  loc_A2345E: FLdRfVar var_90
  loc_A23461: FLdPr var_8C
  loc_A23464:  = Me.EditMode
  loc_A23469: ILdRf var_90
  loc_A2346C: LitI4 2
  loc_A23471: EqI4
  loc_A23472: BranchF loc_A2347A
  loc_A23475: Call MoveLast()
  loc_A2347A: LitNothing
  loc_A2347C: FStAd var_8C 
  loc_A23480: ExitProcHresult
End Sub

Public Sub Cancel() 'A4D438
  'Data Table: 42D088
  loc_A4D3E4: FLdRfVar var_88
  loc_A4D3E7: FLdPr Me
  loc_A4D3EA: from_stack_1v = clscalle.global_4378640Get()
  loc_A4D3EF: FLdZeroAd var_88
  loc_A4D3F2: FStAdFunc var_8C
  loc_A4D3F5: FLdRfVar var_90
  loc_A4D3F8: FLdPr var_8C
  loc_A4D3FB:  = Me.RecordCount
  loc_A4D400: ILdRf var_90
  loc_A4D403: LitI4 0
  loc_A4D408: GtI4
  loc_A4D409: BranchF loc_A4D430
  loc_A4D40C: FLdPr var_8C
  loc_A4D40F: Me.CancelUpdate
  loc_A4D414: FLdRfVar var_90
  loc_A4D417: FLdPr var_8C
  loc_A4D41A:  = Me.EditMode
  loc_A4D41F: ILdRf var_90
  loc_A4D422: LitI4 2
  loc_A4D427: EqI4
  loc_A4D428: BranchF loc_A4D430
  loc_A4D42B: Call MoveFirst()
  loc_A4D430: LitNothing
  loc_A4D432: FStAd var_8C 
  loc_A4D436: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FD5F4
  'Data Table: 42D088
  loc_9FD5C8: FLdRfVar var_90
  loc_9FD5CB: FLdRfVar var_8C
  loc_9FD5CE: FLdPr Me
  loc_9FD5D1: from_stack_1v = clscalle.global_4378640Get()
  loc_9FD5D6: FLdPr var_8C
  loc_9FD5D9:  = Me.EditMode
  loc_9FD5DE: ILdRf var_90
  loc_9FD5E1: LitI4 0
  loc_9FD5E6: NeI4
  loc_9FD5E7: FStI2 var_86
  loc_9FD5EA: FFree1Ad var_8C
  loc_9FD5ED: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A73510
  'Data Table: 42D088
  loc_A7349C: ILdRf sSelect
  loc_A7349F: FStStrCopy var_88
  loc_A734A2: LitNothing
  loc_A734A4: CastAd
  loc_A734A7: FStAdFuncNoPop
  loc_A734AA: FLdPr Me
  loc_A734AD: Call clscalle.global_4378640Set(from_stack_1v)
  loc_A734B2: FFree1Ad var_8C
  loc_A734B5: New Recordset
  loc_A734B9: FStAdFuncNoPop
  loc_A734BC: FLdPr Me
  loc_A734BF: Call clscalle.global_4378640Set(from_stack_1v)
  loc_A734C4: FFree1Ad var_8C
  loc_A734C7: LitI4 -1
  loc_A734CC: LitI4 3
  loc_A734D1: LitI4 3
  loc_A734D6: ImpAdLdI4 MemVar_D9301C
  loc_A734D9: CVarAd
  loc_A734DD: PopAdLdVar
  loc_A734DE: ILdRf var_88
  loc_A734E1: CVarStr var_9C
  loc_A734E4: PopAdLdVar
  loc_A734E5: FLdRfVar var_8C
  loc_A734E8: FLdPr Me
  loc_A734EB: from_stack_1v = clscalle.global_4378640Get()
  loc_A734F0: FLdPr var_8C
  loc_A734F3: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A734F8: FFree1Ad var_8C
  loc_A734FB: LitVarStr var_9C, "Primary"
  loc_A73500: PopAdLdVar
  loc_A73501: FLdPr Me
  loc_A73504: LateIdCall
  loc_A7350C: ExitProcHresult
  loc_A7350D: SetLastSystemError
End Sub

Public Sub EjecutarRs2(sSelect) 'A5C338
  'Data Table: 42D088
  loc_A5C2D8: ILdRf sSelect
  loc_A5C2DB: FStStrCopy var_88
  loc_A5C2DE: LitNothing
  loc_A5C2E0: CastAd
  loc_A5C2E3: FStAdFuncNoPop
  loc_A5C2E6: FLdPr Me
  loc_A5C2E9: Call clscalle.global_4378640Set(from_stack_1v)
  loc_A5C2EE: FFree1Ad var_8C
  loc_A5C2F1: New Recordset
  loc_A5C2F5: FStAdFuncNoPop
  loc_A5C2F8: FLdPr Me
  loc_A5C2FB: Call clscalle.global_4378640Set(from_stack_1v)
  loc_A5C300: FFree1Ad var_8C
  loc_A5C303: LitI4 -1
  loc_A5C308: LitI4 3
  loc_A5C30D: LitI4 3
  loc_A5C312: ImpAdLdI4 MemVar_D9301C
  loc_A5C315: CVarAd
  loc_A5C319: PopAdLdVar
  loc_A5C31A: ILdRf var_88
  loc_A5C31D: CVarStr var_9C
  loc_A5C320: PopAdLdVar
  loc_A5C321: FLdRfVar var_8C
  loc_A5C324: FLdPr Me
  loc_A5C327: from_stack_1v = clscalle.global_4378640Get()
  loc_A5C32C: FLdPr var_8C
  loc_A5C32F: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5C334: FFree1Ad var_8C
  loc_A5C337: ExitProcHresult
End Sub

Public Sub Encontrar(CodiCall) '9EC224
  'Data Table: 42D088
  loc_9EC204: LitStr "CodiCall = "
  loc_9EC207: FLdI2 CodiCall
  loc_9EC20A: CStrUI1
  loc_9EC20C: FStStrNoPop var_88
  loc_9EC20F: ConcatStr
  loc_9EC210: PopTmpLdAdStr
  loc_9EC214: Call Find(from_stack_1v)
  loc_9EC219: FFreeStr var_88 = ""
  loc_9EC220: ExitProcHresult
End Sub

Public Property Get DataSource() 'A087BC
  'Data Table: 42D088
  loc_A0878C: ZeroRetVal
  loc_A0878E: FLdRfVar var_90
  loc_A08791: FLdRfVar var_8C
  loc_A08794: FLdPr Me
  loc_A08797: from_stack_1v = clscalle.global_4378640Get()
  loc_A0879C: FLdPr var_8C
  loc_A0879F:  = Me.DataSource
  loc_A087A4: ILdRf var_90
  loc_A087A7: CastAd
  loc_A087AA: FStAdFunc var_88
  loc_A087AD: FFreeAd var_8C = ""
  loc_A087B4: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9F5B88
  'Data Table: 42D088
  loc_9F5B60: FLdRfVar var_90
  loc_9F5B63: FLdRfVar var_8C
  loc_9F5B66: FLdPr Me
  loc_9F5B69: from_stack_1v = clscalle.global_4378640Get()
  loc_9F5B6E: FLdPr var_8C
  loc_9F5B71:  = Me.EditMode
  loc_9F5B76: ILdRf var_90
  loc_9F5B79: FStR4 var_88
  loc_9F5B7C: FFree1Ad var_8C
  loc_9F5B7F: ExitProcCbHresult
  loc_9F5B85: Ary1LdCy
End Sub

Public Property Get CodiCall() 'A482B4
  'Data Table: 42D088
  loc_A48268: FLdRfVar var_B4
  loc_A4826B: FLdRfVar var_A4
  loc_A4826E: LitVarStr var_A0, "CodiCall"
  loc_A48273: PopAdLdVar
  loc_A48274: FLdRfVar var_90
  loc_A48277: FLdRfVar var_8C
  loc_A4827A: FLdPr Me
  loc_A4827D: from_stack_1v = clscalle.global_4378640Get()
  loc_A48282: FLdPr var_8C
  loc_A48285:  = Me.Fields
  loc_A4828A: FLdPr var_90
  loc_A4828D: from_stack_2 = Me.Item(from_stack_1)
  loc_A48292: FLdPr var_A4
  loc_A48295:  = Me.Value
  loc_A4829A: FLdRfVar var_B4
  loc_A4829D: CI2Var
  loc_A4829E: FStI2 var_86
  loc_A482A1: FFreeAd var_8C = "": var_90 = ""
  loc_A482AA: FFree1Var var_B4 = ""
  loc_A482AD: ExitProcCbHresult
End Sub

Public Property Let CodiCall(vDato) '9EC438
  'Data Table: 42D088
  loc_9EC414: FLdI2 vDato
  loc_9EC417: CVarI2 var_A8
  loc_9EC41A: PopAdLdVar
  loc_9EC41B: LitVarStr var_98, "CodiCall"
  loc_9EC420: PopAdLdVar
  loc_9EC421: FLdRfVar var_88
  loc_9EC424: FLdPr Me
  loc_9EC427: from_stack_1v = clscalle.global_4378640Get()
  loc_9EC42C: FLdPr var_88
  loc_9EC42F: Me.Collect = from_stack_1
  loc_9EC434: FFree1Ad var_88
  loc_9EC437: ExitProcHresult
End Sub

Public Property Get DetaCall() 'A594E8
  'Data Table: 42D088
  loc_A59498: ZeroRetVal
  loc_A5949A: FLdRfVar var_B4
  loc_A5949D: FLdRfVar var_A4
  loc_A594A0: LitVarStr var_A0, "DetaCall"
  loc_A594A5: PopAdLdVar
  loc_A594A6: FLdRfVar var_90
  loc_A594A9: FLdRfVar var_8C
  loc_A594AC: FLdPr Me
  loc_A594AF: from_stack_1v = clscalle.global_4378640Get()
  loc_A594B4: FLdPr var_8C
  loc_A594B7:  = Me.Fields
  loc_A594BC: FLdPr var_90
  loc_A594BF: from_stack_2 = Me.Item(from_stack_1)
  loc_A594C4: FLdPr var_A4
  loc_A594C7:  = Me.Value
  loc_A594CC: FLdRfVar var_B4
  loc_A594CF: CStrVarTmp
  loc_A594D0: FStStr var_88
  loc_A594D3: FFreeAd var_8C = "": var_90 = ""
  loc_A594DC: FFree1Var var_B4 = ""
  loc_A594DF: ExitProcCbHresult
  loc_A594E5: MemLdRfVar from_stack_1.global_60
End Sub

Public Property Let DetaCall(vDato) 'A060C4
  'Data Table: 42D088
  loc_A06098: ILdRf vDato
  loc_A0609B: FStStrCopy var_88
  loc_A0609E: ILdRf var_88
  loc_A060A1: CVarStr var_AC
  loc_A060A4: PopAdLdVar
  loc_A060A5: LitVarStr var_9C, "DetaCall"
  loc_A060AA: PopAdLdVar
  loc_A060AB: FLdRfVar var_8C
  loc_A060AE: FLdPr Me
  loc_A060B1: from_stack_1v = clscalle.global_4378640Get()
  loc_A060B6: FLdPr var_8C
  loc_A060B9: Me.Collect = from_stack_1
  loc_A060BE: FFree1Ad var_8C
  loc_A060C1: ExitProcHresult
End Sub

Public Property Get CodiBarr() 'A46D60
  'Data Table: 42D088
  loc_A46D14: FLdRfVar var_B4
  loc_A46D17: FLdRfVar var_A4
  loc_A46D1A: LitVarStr var_A0, "CodiBarr"
  loc_A46D1F: PopAdLdVar
  loc_A46D20: FLdRfVar var_90
  loc_A46D23: FLdRfVar var_8C
  loc_A46D26: FLdPr Me
  loc_A46D29: from_stack_1v = clscalle.global_4378640Get()
  loc_A46D2E: FLdPr var_8C
  loc_A46D31:  = Me.Fields
  loc_A46D36: FLdPr var_90
  loc_A46D39: from_stack_2 = Me.Item(from_stack_1)
  loc_A46D3E: FLdPr var_A4
  loc_A46D41:  = Me.Value
  loc_A46D46: FLdRfVar var_B4
  loc_A46D49: CI2Var
  loc_A46D4A: FStI2 var_86
  loc_A46D4D: FFreeAd var_8C = "": var_90 = ""
  loc_A46D56: FFree1Var var_B4 = ""
  loc_A46D59: ExitProcCbHresult
End Sub

Public Property Let CodiBarr(vDato) '9EC5F0
  'Data Table: 42D088
  loc_9EC5CC: FLdI2 vDato
  loc_9EC5CF: CVarI2 var_A8
  loc_9EC5D2: PopAdLdVar
  loc_9EC5D3: LitVarStr var_98, "CodiBarr"
  loc_9EC5D8: PopAdLdVar
  loc_9EC5D9: FLdRfVar var_88
  loc_9EC5DC: FLdPr Me
  loc_9EC5DF: from_stack_1v = clscalle.global_4378640Get()
  loc_9EC5E4: FLdPr var_88
  loc_9EC5E7: Me.Collect = from_stack_1
  loc_9EC5EC: FFree1Ad var_88
  loc_9EC5EF: ExitProcHresult
End Sub

Public Property Get CodiLoca() 'A4B504
  'Data Table: 42D088
  loc_A4B4B8: FLdRfVar var_B4
  loc_A4B4BB: FLdRfVar var_A4
  loc_A4B4BE: LitVarStr var_A0, "CodiLoca"
  loc_A4B4C3: PopAdLdVar
  loc_A4B4C4: FLdRfVar var_90
  loc_A4B4C7: FLdRfVar var_8C
  loc_A4B4CA: FLdPr Me
  loc_A4B4CD: from_stack_1v = clscalle.global_4378640Get()
  loc_A4B4D2: FLdPr var_8C
  loc_A4B4D5:  = Me.Fields
  loc_A4B4DA: FLdPr var_90
  loc_A4B4DD: from_stack_2 = Me.Item(from_stack_1)
  loc_A4B4E2: FLdPr var_A4
  loc_A4B4E5:  = Me.Value
  loc_A4B4EA: FLdRfVar var_B4
  loc_A4B4ED: CI2Var
  loc_A4B4EE: FStI2 var_86
  loc_A4B4F1: FFreeAd var_8C = "": var_90 = ""
  loc_A4B4FA: FFree1Var var_B4 = ""
  loc_A4B4FD: ExitProcCbHresult
End Sub

Public Property Let CodiLoca(vDato) '9EC6A0
  'Data Table: 42D088
  loc_9EC67C: FLdI2 vDato
  loc_9EC67F: CVarI2 var_A8
  loc_9EC682: PopAdLdVar
  loc_9EC683: LitVarStr var_98, "CodiLoca"
  loc_9EC688: PopAdLdVar
  loc_9EC689: FLdRfVar var_88
  loc_9EC68C: FLdPr Me
  loc_9EC68F: from_stack_1v = clscalle.global_4378640Get()
  loc_9EC694: FLdPr var_88
  loc_9EC697: Me.Collect = from_stack_1
  loc_9EC69C: FFree1Ad var_88
  loc_9EC69F: ExitProcHresult
End Sub

Public Function ValidaClave(CodiCall) 'A53B60
  'Data Table: 42D088
  loc_A53B10: ZeroRetVal
  loc_A53B12: LitStr "SELECT CodiCall FROM infogov.calle WHERE infogov.calle.CodiCall = "
  loc_A53B15: FLdI2 CodiCall
  loc_A53B18: CStrUI1
  loc_A53B1A: FStStrNoPop var_8C
  loc_A53B1D: ConcatStr
  loc_A53B1E: FStStrNoPop var_90
  loc_A53B21: Call EjecutarRs2(from_stack_1v)
  loc_A53B26: FFreeStr var_8C = ""
  loc_A53B2D: FLdRfVar var_98
  loc_A53B30: FLdRfVar ValidaClave
  loc_A53B33: FLdPr Me
  loc_A53B36: from_stack_1v = clscalle.global_4378640Get()
  loc_A53B3B: FLdPr ValidaClave
  loc_A53B3E:  = Me.RecordCount
  loc_A53B43: ILdRf var_98
  loc_A53B46: LitI4 0
  loc_A53B4B: GtI4
  loc_A53B4C: FFree1Ad ValidaClave
  loc_A53B4F: BranchF loc_A53B58
  loc_A53B52: LitStr "La CALLE YA EXISTE. Reintente..."
  loc_A53B55: FStStrCopy var_88
  loc_A53B58: ExitProcCbHresult
End Function

Public Function NuevoRegistro() 'ABA010
  'Data Table: 42D088
  loc_AB9F20: New Recordset
  loc_AB9F24: FStAdFuncNoPop
  loc_AB9F27: FLdPr Me
  loc_AB9F2A: Call clscalle.global_4378640Set(from_stack_1v)
  loc_AB9F2F: FFree1Ad var_8C
  loc_AB9F32: LitI4 -1
  loc_AB9F37: LitI4 3
  loc_AB9F3C: LitI4 3
  loc_AB9F41: ImpAdLdI4 MemVar_D9301C
  loc_AB9F44: CVarAd
  loc_AB9F48: PopAdLdVar
  loc_AB9F49: LitVarStr var_9C, "SELECT CodiCall FROM infogov.calle ORDER BY CodiCall DESC "
  loc_AB9F4E: PopAdLdVar
  loc_AB9F4F: FLdRfVar var_8C
  loc_AB9F52: FLdPr Me
  loc_AB9F55: from_stack_1v = clscalle.global_4378640Get()
  loc_AB9F5A: FLdPr var_8C
  loc_AB9F5D: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_AB9F62: FFree1Ad var_8C
  loc_AB9F65: FLdRfVar var_B0
  loc_AB9F68: FLdRfVar var_8C
  loc_AB9F6B: FLdPr Me
  loc_AB9F6E: from_stack_1v = clscalle.global_4378640Get()
  loc_AB9F73: FLdPr var_8C
  loc_AB9F76:  = Me.RecordCount
  loc_AB9F7B: ILdRf var_B0
  loc_AB9F7E: LitI4 0
  loc_AB9F83: GtI4
  loc_AB9F84: FFree1Ad var_8C
  loc_AB9F87: BranchF loc_AB9FD9
  loc_AB9F8A: FLdRfVar var_C8
  loc_AB9F8D: FLdRfVar var_B8
  loc_AB9F90: LitVarStr var_9C, "CodiCall"
  loc_AB9F95: PopAdLdVar
  loc_AB9F96: FLdRfVar var_B4
  loc_AB9F99: FLdRfVar var_8C
  loc_AB9F9C: FLdPr Me
  loc_AB9F9F: from_stack_1v = clscalle.global_4378640Get()
  loc_AB9FA4: FLdPr var_8C
  loc_AB9FA7:  = Me.Fields
  loc_AB9FAC: FLdPr var_B4
  loc_AB9FAF: from_stack_2 = Me.Item(from_stack_1)
  loc_AB9FB4: FLdPr var_B8
  loc_AB9FB7:  = Me.Value
  loc_AB9FBC: FLdRfVar var_C8
  loc_AB9FBF: FnCLngVar
  loc_AB9FC1: LitI4 1
  loc_AB9FC6: AddI4
  loc_AB9FC7: FStR4 var_88
  loc_AB9FCA: FFreeAd var_8C = "": var_B4 = ""
  loc_AB9FD3: FFree1Var var_C8 = ""
  loc_AB9FD6: Branch loc_AB9FE1
  loc_AB9FD9: LitI4 1
  loc_AB9FDE: FStR4 var_88
  loc_AB9FE1: FLdRfVar var_8C
  loc_AB9FE4: FLdPr Me
  loc_AB9FE7: from_stack_1v = clscalle.global_4378640Get()
  loc_AB9FEC: FLdPr var_8C
  loc_AB9FEF: Me.Close
  loc_AB9FF4: FFree1Ad var_8C
  loc_AB9FF7: LitNothing
  loc_AB9FF9: CastAd
  loc_AB9FFC: FStAdFuncNoPop
  loc_AB9FFF: FLdPr Me
  loc_ABA002: Call clscalle.global_4378640Set(from_stack_1v)
  loc_ABA007: FFree1Ad var_8C
  loc_ABA00A: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E808C
  'Data Table: 42D088
  loc_9E8070: ILdRf pError
  loc_9E8073: FStAd var_88 
  loc_9E8077: ILdRf pRecordset
  loc_9E807A: FStAd var_8C 
  loc_9E807E: FLdPr Me
  loc_9E8081: RaiseEvent
  loc_9E8089: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'AA0D58
  'Data Table: 42D088
  loc_AA0C98: ILdRf pRecordset
  loc_AA0C9B: FStAd var_88 
  loc_AA0C9F: ILdRf adReason
  loc_AA0CA2: FStR4 var_90
  loc_AA0CA5: ILdRf var_90
  loc_AA0CA8: LitI4 1
  loc_AA0CAD: EqI4
  loc_AA0CAE: BranchF loc_AA0CB4
  loc_AA0CB1: Branch loc_AA0D47
  loc_AA0CB4: ILdRf var_90
  loc_AA0CB7: LitI4 9
  loc_AA0CBC: EqI4
  loc_AA0CBD: BranchF loc_AA0CC3
  loc_AA0CC0: Branch loc_AA0D47
  loc_AA0CC3: ILdRf var_90
  loc_AA0CC6: LitI4 2
  loc_AA0CCB: EqI4
  loc_AA0CCC: BranchF loc_AA0CD2
  loc_AA0CCF: Branch loc_AA0D47
  loc_AA0CD2: ILdRf var_90
  loc_AA0CD5: LitI4 &HB
  loc_AA0CDA: EqI4
  loc_AA0CDB: BranchF loc_AA0CE1
  loc_AA0CDE: Branch loc_AA0D47
  loc_AA0CE1: ILdRf var_90
  loc_AA0CE4: LitI4 &HA
  loc_AA0CE9: EqI4
  loc_AA0CEA: BranchF loc_AA0CF0
  loc_AA0CED: Branch loc_AA0D47
  loc_AA0CF0: ILdRf var_90
  loc_AA0CF3: LitI4 7
  loc_AA0CF8: EqI4
  loc_AA0CF9: BranchF loc_AA0CFF
  loc_AA0CFC: Branch loc_AA0D47
  loc_AA0CFF: ILdRf var_90
  loc_AA0D02: LitI4 8
  loc_AA0D07: EqI4
  loc_AA0D08: BranchF loc_AA0D0E
  loc_AA0D0B: Branch loc_AA0D47
  loc_AA0D0E: ILdRf var_90
  loc_AA0D11: LitI4 5
  loc_AA0D16: EqI4
  loc_AA0D17: BranchF loc_AA0D1D
  loc_AA0D1A: Branch loc_AA0D47
  loc_AA0D1D: ILdRf var_90
  loc_AA0D20: LitI4 6
  loc_AA0D25: EqI4
  loc_AA0D26: BranchF loc_AA0D2C
  loc_AA0D29: Branch loc_AA0D47
  loc_AA0D2C: ILdRf var_90
  loc_AA0D2F: LitI4 4
  loc_AA0D34: EqI4
  loc_AA0D35: BranchF loc_AA0D3B
  loc_AA0D38: Branch loc_AA0D47
  loc_AA0D3B: ILdRf var_90
  loc_AA0D3E: LitI4 3
  loc_AA0D43: EqI4
  loc_AA0D44: BranchF loc_AA0D47
  loc_AA0D47: FLdI2 var_8A
  loc_AA0D4A: BranchF loc_AA0D55
  loc_AA0D4D: LitI4 4
  loc_AA0D52: IStI4 adStatus
  loc_AA0D55: ExitProcHresult
End Sub

Private Function Proc_42_37_9F9C34() '9F9C34
  'Data Table: 42D088
  loc_9F9C10: LitStr "Primary"
  loc_9F9C13: FLdPr Me
  loc_9F9C16: LateIdLdVar var_94 DispID_4 0
  loc_9F9C1D: CastAdVar Me
  loc_9F9C21: FStAdFunc var_98
  loc_9F9C24: FLdPr var_98
  loc_9F9C2C: FFree1Ad var_98
  loc_9F9C2F: FFree1Var var_94 = ""
  loc_9F9C32: ExitProcHresult
End Function

Private Function Proc_42_38_9F98F8(arg_C) '9F98F8
  'Data Table: 42D088
  loc_9F98D4: ILdI4 arg_C
  loc_9F98D7: FStStrCopy var_88
  loc_9F98DA: ILdRf var_88
  loc_9F98DD: LitStr "Primary"
  loc_9F98E0: EqStr
  loc_9F98E2: BranchF loc_9F98F7
  loc_9F98E5: FLdRfVar var_8C
  loc_9F98E8: FLdPr Me
  loc_9F98EB: from_stack_1v = clscalle.global_4378640Get()
  loc_9F98F0: FLdZeroAd var_8C
  loc_9F98F3: IStAdFunc
  loc_9F98F7: ExitProcHresult
End Function

Public Function global_4378640Get() '42D440
  global_4378640Get = global_4378640
End Function

Public Sub global_4378640Put(Value) '42D45A
  global_4378640 = Value
End Sub

Public Sub global_4378640Set(Value) '42D474
  global_4378640 = Value
End Sub

Public Function global_4378640Get() '42D48E
  global_4378640Get = global_4378640
End Function

Public Sub global_4378640Put(Value) '42D4A8
  global_4378640 = Value
End Sub

Public Sub global_4378640Set(Value) '42D4C2
  global_4378640 = Value
End Sub

Public Function global_4378640Get() '42D4DC
  global_4378640Get = global_4378640
End Function

Public Sub global_4378640Put(Value) '42D4F6
  global_4378640 = Value
End Sub

Public Sub global_4378640Set(Value) '42D510
  global_4378640 = Value
End Sub
