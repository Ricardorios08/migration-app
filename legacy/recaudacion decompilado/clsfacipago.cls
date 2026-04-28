VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsfacipago"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '4561B8
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4561C7
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4561D6
  RsFrm = Value
End Sub

Public Sub Move(iValor) '9BA7F4
  'Data Table: 455D68
  loc_9BA7E0: LitVar_Missing var_94
  loc_9BA7E3: PopAdLdVar
  loc_9BA7E4: ILdI2 iValor
  loc_9BA7E7: CI4UI1
  loc_9BA7E8: FLdPr Me
  loc_9BA7EB: MemLdPr RsFrm
  loc_9BA7EE: Me.Move from_stack_1, from_stack_2
  loc_9BA7F3: ExitProcHresult
End Sub

Public Sub MoveFirst() '9ECFEC
  'Data Table: 455D68
  loc_9ECFC4: FLdRfVar var_88
  loc_9ECFC7: FLdPr Me
  loc_9ECFCA: MemLdPr RsFrm
  loc_9ECFCD:  = Me.RecordCount
  loc_9ECFD2: ILdRf var_88
  loc_9ECFD5: LitI4 0
  loc_9ECFDA: GtI4
  loc_9ECFDB: BranchF loc_9ECFE9
  loc_9ECFDE: FLdPr Me
  loc_9ECFE1: MemLdPr RsFrm
  loc_9ECFE4: Me.MoveFirst
  loc_9ECFE9: ExitProcHresult
End Sub

Public Sub MoveLast() '9ED044
  'Data Table: 455D68
  loc_9ED01C: FLdRfVar var_88
  loc_9ED01F: FLdPr Me
  loc_9ED022: MemLdPr RsFrm
  loc_9ED025:  = Me.RecordCount
  loc_9ED02A: ILdRf var_88
  loc_9ED02D: LitI4 0
  loc_9ED032: GtI4
  loc_9ED033: BranchF loc_9ED041
  loc_9ED036: FLdPr Me
  loc_9ED039: MemLdPr RsFrm
  loc_9ED03C: Me.MoveLast
  loc_9ED041: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6D2B8
  'Data Table: 455D68
  loc_A6D240: FLdRfVar var_86
  loc_A6D243: FLdPr Me
  loc_A6D246: MemLdPr RsFrm
  loc_A6D249:  = Me.EOF
  loc_A6D24E: FLdI2 var_86
  loc_A6D251: NotI4
  loc_A6D252: FLdRfVar var_8C
  loc_A6D255: FLdPr Me
  loc_A6D258: MemLdPr RsFrm
  loc_A6D25B:  = Me.RecordCount
  loc_A6D260: ILdRf var_8C
  loc_A6D263: LitI4 0
  loc_A6D268: GtI4
  loc_A6D269: AndI4
  loc_A6D26A: BranchF loc_A6D278
  loc_A6D26D: FLdPr Me
  loc_A6D270: MemLdPr RsFrm
  loc_A6D273: Me.MoveNext
  loc_A6D278: FLdRfVar var_86
  loc_A6D27B: FLdPr Me
  loc_A6D27E: MemLdPr RsFrm
  loc_A6D281:  = Me.EOF
  loc_A6D286: FLdI2 var_86
  loc_A6D289: FLdRfVar var_8C
  loc_A6D28C: FLdPr Me
  loc_A6D28F: MemLdPr RsFrm
  loc_A6D292:  = Me.RecordCount
  loc_A6D297: ILdRf var_8C
  loc_A6D29A: LitI4 0
  loc_A6D29F: GtI4
  loc_A6D2A0: AndI4
  loc_A6D2A1: BranchF loc_A6D2B4
  loc_A6D2A4: ImpAdCallFPR4 Beep()
  loc_A6D2A9: FLdPr Me
  loc_A6D2AC: MemLdPr RsFrm
  loc_A6D2AF: Me.MoveLast
  loc_A6D2B4: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B1B3C
  'Data Table: 455D68
  loc_9B1B30: FLdPr Me
  loc_9B1B33: MemLdPr RsFrm
  loc_9B1B36: Me.MoveNext
  loc_9B1B3B: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6D018
  'Data Table: 455D68
  loc_A6CFA0: FLdRfVar var_86
  loc_A6CFA3: FLdPr Me
  loc_A6CFA6: MemLdPr RsFrm
  loc_A6CFA9:  = Me.BOF
  loc_A6CFAE: FLdI2 var_86
  loc_A6CFB1: NotI4
  loc_A6CFB2: FLdRfVar var_8C
  loc_A6CFB5: FLdPr Me
  loc_A6CFB8: MemLdPr RsFrm
  loc_A6CFBB:  = Me.RecordCount
  loc_A6CFC0: ILdRf var_8C
  loc_A6CFC3: LitI4 0
  loc_A6CFC8: GtI4
  loc_A6CFC9: AndI4
  loc_A6CFCA: BranchF loc_A6CFD8
  loc_A6CFCD: FLdPr Me
  loc_A6CFD0: MemLdPr RsFrm
  loc_A6CFD3: Me.MovePrevious
  loc_A6CFD8: FLdRfVar var_86
  loc_A6CFDB: FLdPr Me
  loc_A6CFDE: MemLdPr RsFrm
  loc_A6CFE1:  = Me.BOF
  loc_A6CFE6: FLdI2 var_86
  loc_A6CFE9: FLdRfVar var_8C
  loc_A6CFEC: FLdPr Me
  loc_A6CFEF: MemLdPr RsFrm
  loc_A6CFF2:  = Me.RecordCount
  loc_A6CFF7: ILdRf var_8C
  loc_A6CFFA: LitI4 0
  loc_A6CFFF: GtI4
  loc_A6D000: AndI4
  loc_A6D001: BranchF loc_A6D014
  loc_A6D004: ImpAdCallFPR4 Beep()
  loc_A6D009: FLdPr Me
  loc_A6D00C: MemLdPr RsFrm
  loc_A6D00F: Me.MoveFirst
  loc_A6D014: ExitProcHresult
End Sub

Public Property Get EOF() '9DA678
  'Data Table: 455D68
  loc_9DA65C: FLdRfVar var_88
  loc_9DA65F: FLdPr Me
  loc_9DA662: MemLdPr RsFrm
  loc_9DA665:  = Me.EOF
  loc_9DA66A: FLdI2 var_88
  loc_9DA66D: FStI2 var_86
  loc_9DA670: ExitProcCbHresult
End Sub

Public Property Get BOF() '9DCB48
  'Data Table: 455D68
  loc_9DCB2C: FLdRfVar var_88
  loc_9DCB2F: FLdPr Me
  loc_9DCB32: MemLdPr RsFrm
  loc_9DCB35:  = Me.BOF
  loc_9DCB3A: FLdI2 var_88
  loc_9DCB3D: FStI2 var_86
  loc_9DCB40: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B6678
  'Data Table: 455D68
  loc_9B6668: ILdI4 sOrden
  loc_9B666B: FLdPr Me
  loc_9B666E: MemLdPr RsFrm
  loc_9B6671: Me.Sort = from_stack_1
  loc_9B6676: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DF1B0
  'Data Table: 455D68
  loc_9DF190: LitVar_Missing var_94
  loc_9DF193: PopAdLdVar
  loc_9DF194: LitI4 1
  loc_9DF199: LitI4 0
  loc_9DF19E: ILdI4 sFind
  loc_9DF1A1: FLdPr Me
  loc_9DF1A4: MemLdPr RsFrm
  loc_9DF1A7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DF1AC: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9DAA54
  'Data Table: 455D68
  loc_9DAA38: FLdRfVar var_8C
  loc_9DAA3B: FLdPr Me
  loc_9DAA3E: MemLdPr RsFrm
  loc_9DAA41:  = Me.AbsolutePosition
  loc_9DAA46: ILdRf var_8C
  loc_9DAA49: FStR4 var_88
  loc_9DAA4C: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9DAAA0
  'Data Table: 455D68
  loc_9DAA84: FLdRfVar var_8C
  loc_9DAA87: FLdPr Me
  loc_9DAA8A: MemLdPr RsFrm
  loc_9DAA8D:  = Me.RecordCount
  loc_9DAA92: ILdRf var_8C
  loc_9DAA95: FStR4 var_88
  loc_9DAA98: ExitProcCbHresult
End Sub

Public Sub Requery() '9E5640
  'Data Table: 455D68
  loc_9E561C: LitI4 -1
  loc_9E5621: FLdPr Me
  loc_9E5624: MemLdPr RsFrm
  loc_9E5627: Me.Requery from_stack_1
  loc_9E562C: LitVarStr var_94, "Primary"
  loc_9E5631: PopAdLdVar
  loc_9E5632: FLdPr Me
  loc_9E5635: LateIdCall
  loc_9E563D: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9DF070
  'Data Table: 455D68
  loc_9DF050: FLdRfVar var_8C
  loc_9DF053: FLdPr Me
  loc_9DF056: MemLdPr RsFrm
  loc_9DF059:  = Me.EditMode
  loc_9DF05E: ILdRf var_8C
  loc_9DF061: LitI4 0
  loc_9DF066: NeI4
  loc_9DF067: FStI2 var_86
  loc_9DF06A: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5D99C
  'Data Table: 455D68
  loc_A5D938: ILdRf sSelect
  loc_A5D93B: FStStrCopy var_88
  loc_A5D93E: LitNothing
  loc_A5D940: CastAd
  loc_A5D943: FStAdFuncNoPop
  loc_A5D946: FLdPr Me
  loc_A5D949: MemStAd
  loc_A5D94D: FFree1Ad var_8C
  loc_A5D950: New Recordset
  loc_A5D954: FStAdFuncNoPop
  loc_A5D957: FLdPr Me
  loc_A5D95A: MemStAd
  loc_A5D95E: FFree1Ad var_8C
  loc_A5D961: LitI4 -1
  loc_A5D966: LitI4 3
  loc_A5D96B: LitI4 3
  loc_A5D970: ImpAdLdI4 MemVar_D9301C
  loc_A5D973: CVarAd
  loc_A5D977: PopAdLdVar
  loc_A5D978: ILdRf var_88
  loc_A5D97B: CVarStr var_9C
  loc_A5D97E: PopAdLdVar
  loc_A5D97F: FLdPr Me
  loc_A5D982: MemLdPr RsFrm
  loc_A5D985: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5D98A: LitVarStr var_9C, "Primary"
  loc_A5D98F: PopAdLdVar
  loc_A5D990: FLdPr Me
  loc_A5D993: LateIdCall
  loc_A5D99B: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A502B4
  'Data Table: 455D68
  loc_A50260: ILdRf sSelect
  loc_A50263: FStStrCopy var_88
  loc_A50266: LitNothing
  loc_A50268: CastAd
  loc_A5026B: FStAdFuncNoPop
  loc_A5026E: FLdPr Me
  loc_A50271: MemStAd
  loc_A50275: FFree1Ad var_8C
  loc_A50278: New Recordset
  loc_A5027C: FStAdFuncNoPop
  loc_A5027F: FLdPr Me
  loc_A50282: MemStAd
  loc_A50286: FFree1Ad var_8C
  loc_A50289: LitI4 -1
  loc_A5028E: LitI4 3
  loc_A50293: LitI4 3
  loc_A50298: ImpAdLdI4 MemVar_D9301C
  loc_A5029B: CVarAd
  loc_A5029F: PopAdLdVar
  loc_A502A0: ILdRf var_88
  loc_A502A3: CVarStr var_9C
  loc_A502A6: PopAdLdVar
  loc_A502A7: FLdPr Me
  loc_A502AA: MemLdPr global_56
  loc_A502AD: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A502B2: ExitProcHresult
End Sub

Public Property Get DataSource() '9F47C0
  'Data Table: 455D68
  loc_9F479C: ZeroRetVal
  loc_9F479E: FLdRfVar var_8C
  loc_9F47A1: FLdPr Me
  loc_9F47A4: MemLdPr RsFrm
  loc_9F47A7:  = Me.DataSource
  loc_9F47AC: ILdRf var_8C
  loc_9F47AF: CastAd
  loc_9F47B2: FStAdFunc var_88
  loc_9F47B5: FFree1Ad var_8C
  loc_9F47B8: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9DB258
  'Data Table: 455D68
  loc_9DB23C: FLdRfVar var_8C
  loc_9DB23F: FLdPr Me
  loc_9DB242: MemLdPr RsFrm
  loc_9DB245:  = Me.EditMode
  loc_9DB24A: ILdRf var_8C
  loc_9DB24D: FStR4 var_88
  loc_9DB250: ExitProcCbHresult
  loc_9DB256: PopAdLdVar
End Sub

Public Property Get CodiFapa() 'A2D5A4
  'Data Table: 455D68
  loc_A2D560: FLdRfVar var_B0
  loc_A2D563: FLdRfVar var_A0
  loc_A2D566: LitVarStr var_9C, "CodiFapa"
  loc_A2D56B: PopAdLdVar
  loc_A2D56C: FLdRfVar var_8C
  loc_A2D56F: FLdPr Me
  loc_A2D572: MemLdPr RsFrm
  loc_A2D575:  = Me.Fields
  loc_A2D57A: FLdPr var_8C
  loc_A2D57D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D582: FLdPr var_A0
  loc_A2D585:  = Me.Value
  loc_A2D58A: FLdRfVar var_B0
  loc_A2D58D: CI4Var
  loc_A2D58F: FStR4 var_88
  loc_A2D592: FFreeAd var_8C = ""
  loc_A2D599: FFree1Var var_B0 = ""
  loc_A2D59C: ExitProcCbHresult
  loc_A2D5A2: MemLdRfVar from_stack_1.global_-4036
End Sub

Public Property Let CodiFapa(vDato) '9DCE8C
  'Data Table: 455D68
  loc_9DCE70: ILdRf vDato
  loc_9DCE73: CVarI4
  loc_9DCE77: PopAdLdVar
  loc_9DCE78: LitVarStr var_94, "CodiFapa"
  loc_9DCE7D: PopAdLdVar
  loc_9DCE7E: FLdPr Me
  loc_9DCE81: MemLdPr RsFrm
  loc_9DCE84: Me.Collect = from_stack_1
  loc_9DCE89: ExitProcHresult
  loc_9DCE8A: MemLdPr global_-4096
End Sub

Public Property Get CucuPers() 'A350D4
  'Data Table: 455D68
  loc_A35090: ZeroRetVal
  loc_A35092: FLdRfVar var_B0
  loc_A35095: FLdRfVar var_A0
  loc_A35098: LitVarStr var_9C, "CucuPers"
  loc_A3509D: PopAdLdVar
  loc_A3509E: FLdRfVar var_8C
  loc_A350A1: FLdPr Me
  loc_A350A4: MemLdPr RsFrm
  loc_A350A7:  = Me.Fields
  loc_A350AC: FLdPr var_8C
  loc_A350AF: from_stack_2 = Me.Item(from_stack_1)
  loc_A350B4: FLdPr var_A0
  loc_A350B7:  = Me.Value
  loc_A350BC: FLdRfVar var_B0
  loc_A350BF: CStrVarTmp
  loc_A350C0: FStStr var_88
  loc_A350C3: FFreeAd var_8C = ""
  loc_A350CA: FFree1Var var_B0 = ""
  loc_A350CD: ExitProcCbHresult
End Sub

Public Property Let CucuPers(vDato) '9E5594
  'Data Table: 455D68
  loc_9E5574: ILdRf vDato
  loc_9E5577: FStStrCopy var_88
  loc_9E557A: ILdRf var_88
  loc_9E557D: CVarStr var_A8
  loc_9E5580: PopAdLdVar
  loc_9E5581: LitVarStr var_98, "CucuPers"
  loc_9E5586: PopAdLdVar
  loc_9E5587: FLdPr Me
  loc_9E558A: MemLdPr RsFrm
  loc_9E558D: Me.Collect = from_stack_1
  loc_9E5592: ExitProcHresult
End Sub

Public Property Get CodiTifa() 'A2D724
  'Data Table: 455D68
  loc_A2D6E0: FLdRfVar var_B0
  loc_A2D6E3: FLdRfVar var_A0
  loc_A2D6E6: LitVarStr var_9C, "CodiTifa"
  loc_A2D6EB: PopAdLdVar
  loc_A2D6EC: FLdRfVar var_8C
  loc_A2D6EF: FLdPr Me
  loc_A2D6F2: MemLdPr RsFrm
  loc_A2D6F5:  = Me.Fields
  loc_A2D6FA: FLdPr var_8C
  loc_A2D6FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D702: FLdPr var_A0
  loc_A2D705:  = Me.Value
  loc_A2D70A: FLdRfVar var_B0
  loc_A2D70D: CI2Var
  loc_A2D70E: FStI2 var_86
  loc_A2D711: FFreeAd var_8C = ""
  loc_A2D718: FFree1Var var_B0 = ""
  loc_A2D71B: ExitProcCbHresult
End Sub

Public Property Let CodiTifa(vDato) '9DB0DC
  'Data Table: 455D68
  loc_9DB0C0: FLdI2 vDato
  loc_9DB0C3: CVarI2 var_A4
  loc_9DB0C6: PopAdLdVar
  loc_9DB0C7: LitVarStr var_94, "CodiTifa"
  loc_9DB0CC: PopAdLdVar
  loc_9DB0CD: FLdPr Me
  loc_9DB0D0: MemLdPr RsFrm
  loc_9DB0D3: Me.Collect = from_stack_1
  loc_9DB0D8: ExitProcHresult
  loc_9DB0D9: SetLastSystemError
End Sub

Public Property Get CacuFapa() 'A2D7A4
  'Data Table: 455D68
  loc_A2D760: FLdRfVar var_B0
  loc_A2D763: FLdRfVar var_A0
  loc_A2D766: LitVarStr var_9C, "CacuFapa"
  loc_A2D76B: PopAdLdVar
  loc_A2D76C: FLdRfVar var_8C
  loc_A2D76F: FLdPr Me
  loc_A2D772: MemLdPr RsFrm
  loc_A2D775:  = Me.Fields
  loc_A2D77A: FLdPr var_8C
  loc_A2D77D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D782: FLdPr var_A0
  loc_A2D785:  = Me.Value
  loc_A2D78A: FLdRfVar var_B0
  loc_A2D78D: CI2Var
  loc_A2D78E: FStI2 var_86
  loc_A2D791: FFreeAd var_8C = ""
  loc_A2D798: FFree1Var var_B0 = ""
  loc_A2D79B: ExitProcCbHresult
  loc_A2D7A1: Ary1LdCy
End Sub

Public Property Let CacuFapa(vDato) '9DB420
  'Data Table: 455D68
  loc_9DB404: FLdI2 vDato
  loc_9DB407: CVarI2 var_A4
  loc_9DB40A: PopAdLdVar
  loc_9DB40B: LitVarStr var_94, "CacuFapa"
  loc_9DB410: PopAdLdVar
  loc_9DB411: FLdPr Me
  loc_9DB414: MemLdPr RsFrm
  loc_9DB417: Me.Collect = from_stack_1
  loc_9DB41C: ExitProcHresult
End Sub

Public Property Get CaapFapa() 'A2D824
  'Data Table: 455D68
  loc_A2D7E0: FLdRfVar var_B0
  loc_A2D7E3: FLdRfVar var_A0
  loc_A2D7E6: LitVarStr var_9C, "CaapFapa"
  loc_A2D7EB: PopAdLdVar
  loc_A2D7EC: FLdRfVar var_8C
  loc_A2D7EF: FLdPr Me
  loc_A2D7F2: MemLdPr RsFrm
  loc_A2D7F5:  = Me.Fields
  loc_A2D7FA: FLdPr var_8C
  loc_A2D7FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D802: FLdPr var_A0
  loc_A2D805:  = Me.Value
  loc_A2D80A: FLdRfVar var_B0
  loc_A2D80D: CI2Var
  loc_A2D80E: FStI2 var_86
  loc_A2D811: FFreeAd var_8C = ""
  loc_A2D818: FFree1Var var_B0 = ""
  loc_A2D81B: ExitProcCbHresult
End Sub

Public Property Let CaapFapa(vDato) '9DCF24
  'Data Table: 455D68
  loc_9DCF08: FLdI2 vDato
  loc_9DCF0B: CVarI2 var_A4
  loc_9DCF0E: PopAdLdVar
  loc_9DCF0F: LitVarStr var_94, "CaapFapa"
  loc_9DCF14: PopAdLdVar
  loc_9DCF15: FLdPr Me
  loc_9DCF18: MemLdPr RsFrm
  loc_9DCF1B: Me.Collect = from_stack_1
  loc_9DCF20: ExitProcHresult
  loc_9DCF21: CVarR8
End Sub

Public Property Get FealFapa() 'A19630
  'Data Table: 455D68
  loc_A195F8: ZeroRetValVar
  loc_A195FA: FLdRfVar var_AC
  loc_A195FD: LitVarStr var_A8, "FealFapa"
  loc_A19602: PopAdLdVar
  loc_A19603: FLdRfVar var_98
  loc_A19606: FLdPr Me
  loc_A19609: MemLdPr RsFrm
  loc_A1960C:  = Me.Fields
  loc_A19611: FLdPr var_98
  loc_A19614: from_stack_2 = Me.Item(from_stack_1)
  loc_A19619: FLdZeroAd var_AC
  loc_A1961C: CVarAd
  loc_A19620: FStVar FealFapa
  loc_A19624: FFree1Ad var_98
  loc_A19627: ExitProcCbHresult
  loc_A1962D: CR4Var
End Sub

Public Property Let FealFapa(vDato) '9DEACC
  'Data Table: 455D68
  loc_9DEAB0: FDupVar
  loc_9DEAB6: FLdVar var_94
  loc_9DEABA: LitVarStr var_A4, "FealFapa"
  loc_9DEABF: PopAdLdVar
  loc_9DEAC0: FLdPr Me
  loc_9DEAC3: MemLdPr RsFrm
  loc_9DEAC6: Me.Collect = from_stack_1
  loc_9DEACB: ExitProcHresult
End Sub

Public Property Get FepaFapa() 'A1A620
  'Data Table: 455D68
  loc_A1A5E8: ZeroRetValVar
  loc_A1A5EA: FLdRfVar var_AC
  loc_A1A5ED: LitVarStr var_A8, "FepaFapa"
  loc_A1A5F2: PopAdLdVar
  loc_A1A5F3: FLdRfVar var_98
  loc_A1A5F6: FLdPr Me
  loc_A1A5F9: MemLdPr RsFrm
  loc_A1A5FC:  = Me.Fields
  loc_A1A601: FLdPr var_98
  loc_A1A604: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A609: FLdZeroAd var_AC
  loc_A1A60C: CVarAd
  loc_A1A610: FStVar FepaFapa
  loc_A1A614: FFree1Ad var_98
  loc_A1A617: ExitProcCbHresult
  loc_A1A61F: Ary1StI4
End Sub

Public Property Let FepaFapa(vDato) '9DEA2C
  'Data Table: 455D68
  loc_9DEA10: FDupVar
  loc_9DEA16: FLdVar var_94
  loc_9DEA1A: LitVarStr var_A4, "FepaFapa"
  loc_9DEA1F: PopAdLdVar
  loc_9DEA20: FLdPr Me
  loc_9DEA23: MemLdPr RsFrm
  loc_9DEA26: Me.Collect = from_stack_1
  loc_9DEA2B: ExitProcHresult
End Sub

Public Property Get CodiOfic() 'A2DBA4
  'Data Table: 455D68
  loc_A2DB60: FLdRfVar var_B0
  loc_A2DB63: FLdRfVar var_A0
  loc_A2DB66: LitVarStr var_9C, "CodiOfic"
  loc_A2DB6B: PopAdLdVar
  loc_A2DB6C: FLdRfVar var_8C
  loc_A2DB6F: FLdPr Me
  loc_A2DB72: MemLdPr RsFrm
  loc_A2DB75:  = Me.Fields
  loc_A2DB7A: FLdPr var_8C
  loc_A2DB7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2DB82: FLdPr var_A0
  loc_A2DB85:  = Me.Value
  loc_A2DB8A: FLdRfVar var_B0
  loc_A2DB8D: CUI1Var
  loc_A2DB8F: FStUI1 var_86
  loc_A2DB93: FFreeAd var_8C = ""
  loc_A2DB9A: FFree1Var var_B0 = ""
  loc_A2DB9D: ExitProcCbHresult
End Sub

Public Property Let CodiOfic(vDato) '9DB764
  'Data Table: 455D68
  loc_9DB748: FLdUI1
  loc_9DB74C: CVarUI1
  loc_9DB750: PopAdLdVar
  loc_9DB751: LitVarStr var_94, "CodiOfic"
  loc_9DB756: PopAdLdVar
  loc_9DB757: FLdPr Me
  loc_9DB75A: MemLdPr RsFrm
  loc_9DB75D: Me.Collect = from_stack_1
  loc_9DB762: ExitProcHresult
End Sub

Public Property Get CuenCtct() 'A3814C
  'Data Table: 455D68
  loc_A38108: ZeroRetVal
  loc_A3810A: FLdRfVar var_B0
  loc_A3810D: FLdRfVar var_A0
  loc_A38110: LitVarStr var_9C, "CuenCtct"
  loc_A38115: PopAdLdVar
  loc_A38116: FLdRfVar var_8C
  loc_A38119: FLdPr Me
  loc_A3811C: MemLdPr RsFrm
  loc_A3811F:  = Me.Fields
  loc_A38124: FLdPr var_8C
  loc_A38127: from_stack_2 = Me.Item(from_stack_1)
  loc_A3812C: FLdPr var_A0
  loc_A3812F:  = Me.Value
  loc_A38134: FLdRfVar var_B0
  loc_A38137: CStrVarTmp
  loc_A38138: FStStr var_88
  loc_A3813B: FFreeAd var_8C = ""
  loc_A38142: FFree1Var var_B0 = ""
  loc_A38145: ExitProcCbHresult
End Sub

Public Property Let CuenCtct(vDato) '9E4DB4
  'Data Table: 455D68
  loc_9E4D94: ILdRf vDato
  loc_9E4D97: FStStrCopy var_88
  loc_9E4D9A: ILdRf var_88
  loc_9E4D9D: CVarStr var_A8
  loc_9E4DA0: PopAdLdVar
  loc_9E4DA1: LitVarStr var_98, "CuenCtct"
  loc_9E4DA6: PopAdLdVar
  loc_9E4DA7: FLdPr Me
  loc_9E4DAA: MemLdPr RsFrm
  loc_9E4DAD: Me.Collect = from_stack_1
  loc_9E4DB2: ExitProcHresult
End Sub

Public Property Get EmitFapa() 'A381D0
  'Data Table: 455D68
  loc_A3818C: ZeroRetVal
  loc_A3818E: FLdRfVar var_B0
  loc_A38191: FLdRfVar var_A0
  loc_A38194: LitVarStr var_9C, "EmitFapa"
  loc_A38199: PopAdLdVar
  loc_A3819A: FLdRfVar var_8C
  loc_A3819D: FLdPr Me
  loc_A381A0: MemLdPr RsFrm
  loc_A381A3:  = Me.Fields
  loc_A381A8: FLdPr var_8C
  loc_A381AB: from_stack_2 = Me.Item(from_stack_1)
  loc_A381B0: FLdPr var_A0
  loc_A381B3:  = Me.Value
  loc_A381B8: FLdRfVar var_B0
  loc_A381BB: CStrVarTmp
  loc_A381BC: FStStr var_88
  loc_A381BF: FFreeAd var_8C = ""
  loc_A381C6: FFree1Var var_B0 = ""
  loc_A381C9: ExitProcCbHresult
  loc_A381CF: SetLastSystemError
End Sub

Public Property Let EmitFapa(vDato) '9E4F04
  'Data Table: 455D68
  loc_9E4EE4: ILdRf vDato
  loc_9E4EE7: FStStrCopy var_88
  loc_9E4EEA: ILdRf var_88
  loc_9E4EED: CVarStr var_A8
  loc_9E4EF0: PopAdLdVar
  loc_9E4EF1: LitVarStr var_98, "EmitFapa"
  loc_9E4EF6: PopAdLdVar
  loc_9E4EF7: FLdPr Me
  loc_9E4EFA: MemLdPr RsFrm
  loc_9E4EFD: Me.Collect = from_stack_1
  loc_9E4F02: ExitProcHresult
  loc_9E4F03: PopAdLdVar
End Sub

Public Property Get EstaFapa() 'A35FC8
  'Data Table: 455D68
  loc_A35F84: ZeroRetVal
  loc_A35F86: FLdRfVar var_B0
  loc_A35F89: FLdRfVar var_A0
  loc_A35F8C: LitVarStr var_9C, "EstaFapa"
  loc_A35F91: PopAdLdVar
  loc_A35F92: FLdRfVar var_8C
  loc_A35F95: FLdPr Me
  loc_A35F98: MemLdPr RsFrm
  loc_A35F9B:  = Me.Fields
  loc_A35FA0: FLdPr var_8C
  loc_A35FA3: from_stack_2 = Me.Item(from_stack_1)
  loc_A35FA8: FLdPr var_A0
  loc_A35FAB:  = Me.Value
  loc_A35FB0: FLdRfVar var_B0
  loc_A35FB3: CStrVarTmp
  loc_A35FB4: FStStr var_88
  loc_A35FB7: FFreeAd var_8C = ""
  loc_A35FBE: FFree1Var var_B0 = ""
  loc_A35FC1: ExitProcCbHresult
End Sub

Public Property Let EstaFapa(vDato) '9E4D0C
  'Data Table: 455D68
  loc_9E4CEC: ILdRf vDato
  loc_9E4CEF: FStStrCopy var_88
  loc_9E4CF2: ILdRf var_88
  loc_9E4CF5: CVarStr var_A8
  loc_9E4CF8: PopAdLdVar
  loc_9E4CF9: LitVarStr var_98, "EstaFapa"
  loc_9E4CFE: PopAdLdVar
  loc_9E4CFF: FLdPr Me
  loc_9E4D02: MemLdPr RsFrm
  loc_9E4D05: Me.Collect = from_stack_1
  loc_9E4D0A: ExitProcHresult
End Sub

Public Property Get TainFapa() 'A2DF24
  'Data Table: 455D68
  loc_A2DEE0: FLdRfVar var_B4
  loc_A2DEE3: FLdRfVar var_A4
  loc_A2DEE6: LitVarStr var_A0, "TainFapa"
  loc_A2DEEB: PopAdLdVar
  loc_A2DEEC: FLdRfVar var_90
  loc_A2DEEF: FLdPr Me
  loc_A2DEF2: MemLdPr RsFrm
  loc_A2DEF5:  = Me.Fields
  loc_A2DEFA: FLdPr var_90
  loc_A2DEFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2DF02: FLdPr var_A4
  loc_A2DF05:  = Me.Value
  loc_A2DF0A: FLdRfVar var_B4
  loc_A2DF0D: CR4Var
  loc_A2DF0E: FStFPR8 var_8C
  loc_A2DF11: FFreeAd var_90 = ""
  loc_A2DF18: FFree1Var var_B4 = ""
  loc_A2DF1B: ExitProcCbHresult
  loc_A2DF21: FnStrComp3Var
End Sub

Public Property Let TainFapa(vDato) '9DBC70
  'Data Table: 455D68
  loc_9DBC54: FLdFPR8 vDato
  loc_9DBC57: CVarR8
  loc_9DBC5B: PopAdLdVar
  loc_9DBC5C: LitVarStr var_94, "TainFapa"
  loc_9DBC61: PopAdLdVar
  loc_9DBC62: FLdPr Me
  loc_9DBC65: MemLdPr RsFrm
  loc_9DBC68: Me.Collect = from_stack_1
  loc_9DBC6D: ExitProcHresult
End Sub

Public Property Get CapiFapa() 'A2E0A4
  'Data Table: 455D68
  loc_A2E060: FLdRfVar var_B4
  loc_A2E063: FLdRfVar var_A4
  loc_A2E066: LitVarStr var_A0, "CapiFapa"
  loc_A2E06B: PopAdLdVar
  loc_A2E06C: FLdRfVar var_90
  loc_A2E06F: FLdPr Me
  loc_A2E072: MemLdPr RsFrm
  loc_A2E075:  = Me.Fields
  loc_A2E07A: FLdPr var_90
  loc_A2E07D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E082: FLdPr var_A4
  loc_A2E085:  = Me.Value
  loc_A2E08A: FLdRfVar var_B4
  loc_A2E08D: CR4Var
  loc_A2E08E: FStFPR8 var_8C
  loc_A2E091: FFreeAd var_90 = ""
  loc_A2E098: FFree1Var var_B4 = ""
  loc_A2E09B: ExitProcCbHresult
  loc_A2E0A1: FLdPr var_88
End Sub

Public Property Let CapiFapa(vDato) '9DBC24
  'Data Table: 455D68
  loc_9DBC08: FLdFPR8 vDato
  loc_9DBC0B: CVarR8
  loc_9DBC0F: PopAdLdVar
  loc_9DBC10: LitVarStr var_94, "CapiFapa"
  loc_9DBC15: PopAdLdVar
  loc_9DBC16: FLdPr Me
  loc_9DBC19: MemLdPr RsFrm
  loc_9DBC1C: Me.Collect = from_stack_1
  loc_9DBC21: ExitProcHresult
End Sub

Public Property Get DecaFapa() 'A2E124
  'Data Table: 455D68
  loc_A2E0E0: FLdRfVar var_B4
  loc_A2E0E3: FLdRfVar var_A4
  loc_A2E0E6: LitVarStr var_A0, "DecaFapa"
  loc_A2E0EB: PopAdLdVar
  loc_A2E0EC: FLdRfVar var_90
  loc_A2E0EF: FLdPr Me
  loc_A2E0F2: MemLdPr RsFrm
  loc_A2E0F5:  = Me.Fields
  loc_A2E0FA: FLdPr var_90
  loc_A2E0FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E102: FLdPr var_A4
  loc_A2E105:  = Me.Value
  loc_A2E10A: FLdRfVar var_B4
  loc_A2E10D: CR4Var
  loc_A2E10E: FStFPR8 var_8C
  loc_A2E111: FFreeAd var_90 = ""
  loc_A2E118: FFree1Var var_B4 = ""
  loc_A2E11B: ExitProcCbHresult
  loc_A2E121: ILdRf Me
End Sub

Public Property Let DecaFapa(vDato) '9DBCBC
  'Data Table: 455D68
  loc_9DBCA0: FLdFPR8 vDato
  loc_9DBCA3: CVarR8
  loc_9DBCA7: PopAdLdVar
  loc_9DBCA8: LitVarStr var_94, "DecaFapa"
  loc_9DBCAD: PopAdLdVar
  loc_9DBCAE: FLdPr Me
  loc_9DBCB1: MemLdPr RsFrm
  loc_9DBCB4: Me.Collect = from_stack_1
  loc_9DBCB9: ExitProcHresult
End Sub

Public Property Get RecaFapa() 'A2E324
  'Data Table: 455D68
  loc_A2E2E0: FLdRfVar var_B4
  loc_A2E2E3: FLdRfVar var_A4
  loc_A2E2E6: LitVarStr var_A0, "RecaFapa"
  loc_A2E2EB: PopAdLdVar
  loc_A2E2EC: FLdRfVar var_90
  loc_A2E2EF: FLdPr Me
  loc_A2E2F2: MemLdPr RsFrm
  loc_A2E2F5:  = Me.Fields
  loc_A2E2FA: FLdPr var_90
  loc_A2E2FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E302: FLdPr var_A4
  loc_A2E305:  = Me.Value
  loc_A2E30A: FLdRfVar var_B4
  loc_A2E30D: CR4Var
  loc_A2E30E: FStFPR8 var_8C
  loc_A2E311: FFreeAd var_90 = ""
  loc_A2E318: FFree1Var var_B4 = ""
  loc_A2E31B: ExitProcCbHresult
  loc_A2E321: FnStrComp3Var
End Sub

Public Property Let RecaFapa(vDato) '9DBF1C
  'Data Table: 455D68
  loc_9DBF00: FLdFPR8 vDato
  loc_9DBF03: CVarR8
  loc_9DBF07: PopAdLdVar
  loc_9DBF08: LitVarStr var_94, "RecaFapa"
  loc_9DBF0D: PopAdLdVar
  loc_9DBF0E: FLdPr Me
  loc_9DBF11: MemLdPr RsFrm
  loc_9DBF14: Me.Collect = from_stack_1
  loc_9DBF19: ExitProcHresult
  loc_9DBF1A: FStAdFunc var_F88
End Sub

Public Property Get DereFapa() 'A2E3A4
  'Data Table: 455D68
  loc_A2E360: FLdRfVar var_B4
  loc_A2E363: FLdRfVar var_A4
  loc_A2E366: LitVarStr var_A0, "DereFapa"
  loc_A2E36B: PopAdLdVar
  loc_A2E36C: FLdRfVar var_90
  loc_A2E36F: FLdPr Me
  loc_A2E372: MemLdPr RsFrm
  loc_A2E375:  = Me.Fields
  loc_A2E37A: FLdPr var_90
  loc_A2E37D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E382: FLdPr var_A4
  loc_A2E385:  = Me.Value
  loc_A2E38A: FLdRfVar var_B4
  loc_A2E38D: CR4Var
  loc_A2E38E: FStFPR8 var_8C
  loc_A2E391: FFreeAd var_90 = ""
  loc_A2E398: FFree1Var var_B4 = ""
  loc_A2E39B: ExitProcCbHresult
  loc_A2E3A1: PopAdLdVar
  loc_A2E3A2: LitStr "StrFormMemory_0"
End Sub

Public Property Let DereFapa(vDato) '9DBE84
  'Data Table: 455D68
  loc_9DBE68: FLdFPR8 vDato
  loc_9DBE6B: CVarR8
  loc_9DBE6F: PopAdLdVar
  loc_9DBE70: LitVarStr var_94, "DereFapa"
  loc_9DBE75: PopAdLdVar
  loc_9DBE76: FLdPr Me
  loc_9DBE79: MemLdPr RsFrm
  loc_9DBE7C: Me.Collect = from_stack_1
  loc_9DBE81: ExitProcHresult
End Sub

Public Property Get ApreFapa() 'A2E5A4
  'Data Table: 455D68
  loc_A2E560: FLdRfVar var_B4
  loc_A2E563: FLdRfVar var_A4
  loc_A2E566: LitVarStr var_A0, "ApreFapa"
  loc_A2E56B: PopAdLdVar
  loc_A2E56C: FLdRfVar var_90
  loc_A2E56F: FLdPr Me
  loc_A2E572: MemLdPr RsFrm
  loc_A2E575:  = Me.Fields
  loc_A2E57A: FLdPr var_90
  loc_A2E57D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E582: FLdPr var_A4
  loc_A2E585:  = Me.Value
  loc_A2E58A: FLdRfVar var_B4
  loc_A2E58D: CR4Var
  loc_A2E58E: FStFPR8 var_8C
  loc_A2E591: FFreeAd var_90 = ""
  loc_A2E598: FFree1Var var_B4 = ""
  loc_A2E59B: ExitProcCbHresult
End Sub

Public Property Let ApreFapa(vDato) '9DBF68
  'Data Table: 455D68
  loc_9DBF4C: FLdFPR8 vDato
  loc_9DBF4F: CVarR8
  loc_9DBF53: PopAdLdVar
  loc_9DBF54: LitVarStr var_94, "ApreFapa"
  loc_9DBF59: PopAdLdVar
  loc_9DBF5A: FLdPr Me
  loc_9DBF5D: MemLdPr RsFrm
  loc_9DBF60: Me.Collect = from_stack_1
  loc_9DBF65: ExitProcHresult
  loc_9DBF66: UMiCy
End Sub

Public Property Get InteFapa() 'A2E6A4
  'Data Table: 455D68
  loc_A2E660: FLdRfVar var_B4
  loc_A2E663: FLdRfVar var_A4
  loc_A2E666: LitVarStr var_A0, "InteFapa"
  loc_A2E66B: PopAdLdVar
  loc_A2E66C: FLdRfVar var_90
  loc_A2E66F: FLdPr Me
  loc_A2E672: MemLdPr RsFrm
  loc_A2E675:  = Me.Fields
  loc_A2E67A: FLdPr var_90
  loc_A2E67D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E682: FLdPr var_A4
  loc_A2E685:  = Me.Value
  loc_A2E68A: FLdRfVar var_B4
  loc_A2E68D: CR4Var
  loc_A2E68E: FStFPR8 var_8C
  loc_A2E691: FFreeAd var_90 = ""
  loc_A2E698: FFree1Var var_B4 = ""
  loc_A2E69B: ExitProcCbHresult
End Sub

Public Property Let InteFapa(vDato) '9DC214
  'Data Table: 455D68
  loc_9DC1F8: FLdFPR8 vDato
  loc_9DC1FB: CVarR8
  loc_9DC1FF: PopAdLdVar
  loc_9DC200: LitVarStr var_94, "InteFapa"
  loc_9DC205: PopAdLdVar
  loc_9DC206: FLdPr Me
  loc_9DC209: MemLdPr RsFrm
  loc_9DC20C: Me.Collect = from_stack_1
  loc_9DC211: ExitProcHresult
End Sub

Public Property Get TotaFapa() 'A2E824
  'Data Table: 455D68
  loc_A2E7E0: FLdRfVar var_B4
  loc_A2E7E3: FLdRfVar var_A4
  loc_A2E7E6: LitVarStr var_A0, "TotaFapa"
  loc_A2E7EB: PopAdLdVar
  loc_A2E7EC: FLdRfVar var_90
  loc_A2E7EF: FLdPr Me
  loc_A2E7F2: MemLdPr RsFrm
  loc_A2E7F5:  = Me.Fields
  loc_A2E7FA: FLdPr var_90
  loc_A2E7FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E802: FLdPr var_A4
  loc_A2E805:  = Me.Value
  loc_A2E80A: FLdRfVar var_B4
  loc_A2E80D: CR4Var
  loc_A2E80E: FStFPR8 var_8C
  loc_A2E811: FFreeAd var_90 = ""
  loc_A2E818: FFree1Var var_B4 = ""
  loc_A2E81B: ExitProcCbHresult
  loc_A2E821: FStAdFunc arg_0
End Sub

Public Property Let TotaFapa(vDato) '9DC390
  'Data Table: 455D68
  loc_9DC374: FLdFPR8 vDato
  loc_9DC377: CVarR8
  loc_9DC37B: PopAdLdVar
  loc_9DC37C: LitVarStr var_94, "TotaFapa"
  loc_9DC381: PopAdLdVar
  loc_9DC382: FLdPr Me
  loc_9DC385: MemLdPr RsFrm
  loc_9DC388: Me.Collect = from_stack_1
  loc_9DC38D: ExitProcHresult
End Sub

Public Property Get CodiUsua() 'A37D2C
  'Data Table: 455D68
  loc_A37CE8: ZeroRetVal
  loc_A37CEA: FLdRfVar var_B0
  loc_A37CED: FLdRfVar var_A0
  loc_A37CF0: LitVarStr var_9C, "CodiUsua"
  loc_A37CF5: PopAdLdVar
  loc_A37CF6: FLdRfVar var_8C
  loc_A37CF9: FLdPr Me
  loc_A37CFC: MemLdPr RsFrm
  loc_A37CFF:  = Me.Fields
  loc_A37D04: FLdPr var_8C
  loc_A37D07: from_stack_2 = Me.Item(from_stack_1)
  loc_A37D0C: FLdPr var_A0
  loc_A37D0F:  = Me.Value
  loc_A37D14: FLdRfVar var_B0
  loc_A37D17: CStrVarTmp
  loc_A37D18: FStStr var_88
  loc_A37D1B: FFreeAd var_8C = ""
  loc_A37D22: FFree1Var var_B0 = ""
  loc_A37D25: ExitProcCbHresult
End Sub

Public Property Let CodiUsua(vDato) '9E4B68
  'Data Table: 455D68
  loc_9E4B48: ILdRf vDato
  loc_9E4B4B: FStStrCopy var_88
  loc_9E4B4E: ILdRf var_88
  loc_9E4B51: CVarStr var_A8
  loc_9E4B54: PopAdLdVar
  loc_9E4B55: LitVarStr var_98, "CodiUsua"
  loc_9E4B5A: PopAdLdVar
  loc_9E4B5B: FLdPr Me
  loc_9E4B5E: MemLdPr RsFrm
  loc_9E4B61: Me.Collect = from_stack_1
  loc_9E4B66: ExitProcHresult
End Sub

Public Property Get FirmFapa() 'A37C24
  'Data Table: 455D68
  loc_A37BE0: ZeroRetVal
  loc_A37BE2: FLdRfVar var_B0
  loc_A37BE5: FLdRfVar var_A0
  loc_A37BE8: LitVarStr var_9C, "FirmFapa"
  loc_A37BED: PopAdLdVar
  loc_A37BEE: FLdRfVar var_8C
  loc_A37BF1: FLdPr Me
  loc_A37BF4: MemLdPr RsFrm
  loc_A37BF7:  = Me.Fields
  loc_A37BFC: FLdPr var_8C
  loc_A37BFF: from_stack_2 = Me.Item(from_stack_1)
  loc_A37C04: FLdPr var_A0
  loc_A37C07:  = Me.Value
  loc_A37C0C: FLdRfVar var_B0
  loc_A37C0F: CStrVarTmp
  loc_A37C10: FStStr var_88
  loc_A37C13: FFreeAd var_8C = ""
  loc_A37C1A: FFree1Var var_B0 = ""
  loc_A37C1D: ExitProcCbHresult
End Sub

Public Property Get CufiFapa() 'A37A98
  'Data Table: 455D68
  loc_A37A54: ZeroRetVal
  loc_A37A56: FLdRfVar var_B0
  loc_A37A59: FLdRfVar var_A0
  loc_A37A5C: LitVarStr var_9C, "CufiFapa"
  loc_A37A61: PopAdLdVar
  loc_A37A62: FLdRfVar var_8C
  loc_A37A65: FLdPr Me
  loc_A37A68: MemLdPr RsFrm
  loc_A37A6B:  = Me.Fields
  loc_A37A70: FLdPr var_8C
  loc_A37A73: from_stack_2 = Me.Item(from_stack_1)
  loc_A37A78: FLdPr var_A0
  loc_A37A7B:  = Me.Value
  loc_A37A80: FLdRfVar var_B0
  loc_A37A83: CStrVarTmp
  loc_A37A84: FStStr var_88
  loc_A37A87: FFreeAd var_8C = ""
  loc_A37A8E: FFree1Var var_B0 = ""
  loc_A37A91: ExitProcCbHresult
End Sub

Public Property Get DetaTifp() 'A37888
  'Data Table: 455D68
  loc_A37844: ZeroRetVal
  loc_A37846: FLdRfVar var_B0
  loc_A37849: FLdRfVar var_A0
  loc_A3784C: LitVarStr var_9C, "DetaTifp"
  loc_A37851: PopAdLdVar
  loc_A37852: FLdRfVar var_8C
  loc_A37855: FLdPr Me
  loc_A37858: MemLdPr RsFrm
  loc_A3785B:  = Me.Fields
  loc_A37860: FLdPr var_8C
  loc_A37863: from_stack_2 = Me.Item(from_stack_1)
  loc_A37868: FLdPr var_A0
  loc_A3786B:  = Me.Value
  loc_A37870: FLdRfVar var_B0
  loc_A37873: CStrVarTmp
  loc_A37874: FStStr var_88
  loc_A37877: FFreeAd var_8C = ""
  loc_A3787E: FFree1Var var_B0 = ""
  loc_A37881: ExitProcCbHresult
End Sub

Public Property Get DetaTifa() 'A37A14
  'Data Table: 455D68
  loc_A379D0: ZeroRetVal
  loc_A379D2: FLdRfVar var_B0
  loc_A379D5: FLdRfVar var_A0
  loc_A379D8: LitVarStr var_9C, "DetaTifa"
  loc_A379DD: PopAdLdVar
  loc_A379DE: FLdRfVar var_8C
  loc_A379E1: FLdPr Me
  loc_A379E4: MemLdPr RsFrm
  loc_A379E7:  = Me.Fields
  loc_A379EC: FLdPr var_8C
  loc_A379EF: from_stack_2 = Me.Item(from_stack_1)
  loc_A379F4: FLdPr var_A0
  loc_A379F7:  = Me.Value
  loc_A379FC: FLdRfVar var_B0
  loc_A379FF: CStrVarTmp
  loc_A37A00: FStStr var_88
  loc_A37A03: FFreeAd var_8C = ""
  loc_A37A0A: FFree1Var var_B0 = ""
  loc_A37A0D: ExitProcCbHresult
End Sub

Public Property Get DetaPers() 'A16408
  'Data Table: 455D68
  loc_A163D0: ZeroRetValVar
  loc_A163D2: FLdRfVar var_AC
  loc_A163D5: LitVarStr var_A8, "DetaPers"
  loc_A163DA: PopAdLdVar
  loc_A163DB: FLdRfVar var_98
  loc_A163DE: FLdPr Me
  loc_A163E1: MemLdPr RsFrm
  loc_A163E4:  = Me.Fields
  loc_A163E9: FLdPr var_98
  loc_A163EC: from_stack_2 = Me.Item(from_stack_1)
  loc_A163F1: FLdZeroAd var_AC
  loc_A163F4: CVarAd
  loc_A163F8: FStVar DetaPers
  loc_A163FC: FFree1Ad var_98
  loc_A163FF: ExitProcCbHresult
End Sub

Public Property Get DomiPers() 'A17308
  'Data Table: 455D68
  loc_A172D0: ZeroRetValVar
  loc_A172D2: FLdRfVar var_AC
  loc_A172D5: LitVarStr var_A8, "DomiPers"
  loc_A172DA: PopAdLdVar
  loc_A172DB: FLdRfVar var_98
  loc_A172DE: FLdPr Me
  loc_A172E1: MemLdPr RsFrm
  loc_A172E4:  = Me.Fields
  loc_A172E9: FLdPr var_98
  loc_A172EC: from_stack_2 = Me.Item(from_stack_1)
  loc_A172F1: FLdZeroAd var_AC
  loc_A172F4: CVarAd
  loc_A172F8: FStVar DomiPers
  loc_A172FC: FFree1Ad var_98
  loc_A172FF: ExitProcCbHresult
End Sub

Public Property Get TelePers() 'A20728
  'Data Table: 455D68
  loc_A206F0: ZeroRetValVar
  loc_A206F2: FLdRfVar var_AC
  loc_A206F5: LitVarStr var_A8, "TelePers"
  loc_A206FA: PopAdLdVar
  loc_A206FB: FLdRfVar var_98
  loc_A206FE: FLdPr Me
  loc_A20701: MemLdPr RsFrm
  loc_A20704:  = Me.Fields
  loc_A20709: FLdPr var_98
  loc_A2070C: from_stack_2 = Me.Item(from_stack_1)
  loc_A20711: FLdZeroAd var_AC
  loc_A20714: CVarAd
  loc_A20718: FStVar TelePers
  loc_A2071C: FFree1Ad var_98
  loc_A2071F: ExitProcCbHresult
End Sub

Public Property Get CodiConc() 'A1CFD8
  'Data Table: 455D68
  loc_A1CFA0: ZeroRetValVar
  loc_A1CFA2: FLdRfVar var_AC
  loc_A1CFA5: LitVarStr var_A8, "CodiConc"
  loc_A1CFAA: PopAdLdVar
  loc_A1CFAB: FLdRfVar var_98
  loc_A1CFAE: FLdPr Me
  loc_A1CFB1: MemLdPr RsFrm
  loc_A1CFB4:  = Me.Fields
  loc_A1CFB9: FLdPr var_98
  loc_A1CFBC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1CFC1: FLdZeroAd var_AC
  loc_A1CFC4: CVarAd
  loc_A1CFC8: FStVar CodiConc
  loc_A1CFCC: FFree1Ad var_98
  loc_A1CFCF: ExitProcCbHresult
  loc_A1CFD5: FLdPr arg_600
End Sub

Public Property Get DetaConc() 'A20AE8
  'Data Table: 455D68
  loc_A20AB0: ZeroRetValVar
  loc_A20AB2: FLdRfVar var_AC
  loc_A20AB5: LitVarStr var_A8, "DetaConc"
  loc_A20ABA: PopAdLdVar
  loc_A20ABB: FLdRfVar var_98
  loc_A20ABE: FLdPr Me
  loc_A20AC1: MemLdPr RsFrm
  loc_A20AC4:  = Me.Fields
  loc_A20AC9: FLdPr var_98
  loc_A20ACC: from_stack_2 = Me.Item(from_stack_1)
  loc_A20AD1: FLdZeroAd var_AC
  loc_A20AD4: CVarAd
  loc_A20AD8: FStVar DetaConc
  loc_A20ADC: FFree1Ad var_98
  loc_A20ADF: ExitProcCbHresult
  loc_A20AE5: ConcatStr
  loc_A20AE6: CVarStr var_FC0
End Sub

Public Property Get DetaOfic() 'A1E4F0
  'Data Table: 455D68
  loc_A1E4B8: ZeroRetValVar
  loc_A1E4BA: FLdRfVar var_AC
  loc_A1E4BD: LitVarStr var_A8, "DetaOfic"
  loc_A1E4C2: PopAdLdVar
  loc_A1E4C3: FLdRfVar var_98
  loc_A1E4C6: FLdPr Me
  loc_A1E4C9: MemLdPr RsFrm
  loc_A1E4CC:  = Me.Fields
  loc_A1E4D1: FLdPr var_98
  loc_A1E4D4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1E4D9: FLdZeroAd var_AC
  loc_A1E4DC: CVarAd
  loc_A1E4E0: FStVar DetaOfic
  loc_A1E4E4: FFree1Ad var_98
  loc_A1E4E7: ExitProcCbHresult
End Sub

Public Property Get RespFapa() 'A18370
  'Data Table: 455D68
  loc_A18338: ZeroRetValVar
  loc_A1833A: FLdRfVar var_AC
  loc_A1833D: LitVarStr var_A8, "RespFapa"
  loc_A18342: PopAdLdVar
  loc_A18343: FLdRfVar var_98
  loc_A18346: FLdPr Me
  loc_A18349: MemLdPr RsFrm
  loc_A1834C:  = Me.Fields
  loc_A18351: FLdPr var_98
  loc_A18354: from_stack_2 = Me.Item(from_stack_1)
  loc_A18359: FLdZeroAd var_AC
  loc_A1835C: CVarAd
  loc_A18360: FStVar RespFapa
  loc_A18364: FFree1Ad var_98
  loc_A18367: ExitProcCbHresult
End Sub

Public Property Get NudoPers() 'A16B10
  'Data Table: 455D68
  loc_A16AD8: ZeroRetValVar
  loc_A16ADA: FLdRfVar var_AC
  loc_A16ADD: LitVarStr var_A8, "NudoPers"
  loc_A16AE2: PopAdLdVar
  loc_A16AE3: FLdRfVar var_98
  loc_A16AE6: FLdPr Me
  loc_A16AE9: MemLdPr RsFrm
  loc_A16AEC:  = Me.Fields
  loc_A16AF1: FLdPr var_98
  loc_A16AF4: from_stack_2 = Me.Item(from_stack_1)
  loc_A16AF9: FLdZeroAd var_AC
  loc_A16AFC: CVarAd
  loc_A16B00: FStVar NudoPers
  loc_A16B04: FFree1Ad var_98
  loc_A16B07: ExitProcCbHresult
  loc_A16B0D: FLdPr arg_F00
End Sub

Public Property Get CuotDefa() 'A2F624
  'Data Table: 455D68
  loc_A2F5E0: FLdRfVar var_B0
  loc_A2F5E3: FLdRfVar var_A0
  loc_A2F5E6: LitVarStr var_9C, "CuotDefa"
  loc_A2F5EB: PopAdLdVar
  loc_A2F5EC: FLdRfVar var_8C
  loc_A2F5EF: FLdPr Me
  loc_A2F5F2: MemLdPr RsFrm
  loc_A2F5F5:  = Me.Fields
  loc_A2F5FA: FLdPr var_8C
  loc_A2F5FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F602: FLdPr var_A0
  loc_A2F605:  = Me.Value
  loc_A2F60A: FLdRfVar var_B0
  loc_A2F60D: CI2Var
  loc_A2F60E: FStI2 var_86
  loc_A2F611: FFreeAd var_8C = ""
  loc_A2F618: FFree1Var var_B0 = ""
  loc_A2F61B: ExitProcCbHresult
  loc_A2F621: CastAd
End Sub

Public Property Get NumeApre() 'A2F7A4
  'Data Table: 455D68
  loc_A2F760: FLdRfVar var_B0
  loc_A2F763: FLdRfVar var_A0
  loc_A2F766: LitVarStr var_9C, "NumeApre"
  loc_A2F76B: PopAdLdVar
  loc_A2F76C: FLdRfVar var_8C
  loc_A2F76F: FLdPr Me
  loc_A2F772: MemLdPr RsFrm
  loc_A2F775:  = Me.Fields
  loc_A2F77A: FLdPr var_8C
  loc_A2F77D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F782: FLdPr var_A0
  loc_A2F785:  = Me.Value
  loc_A2F78A: FLdRfVar var_B0
  loc_A2F78D: CI4Var
  loc_A2F78F: FStR4 var_88
  loc_A2F792: FFreeAd var_8C = ""
  loc_A2F799: FFree1Var var_B0 = ""
  loc_A2F79C: ExitProcCbHresult
  loc_A2F7A2: LitStr "StrFormMemory_0"
End Sub

Public Property Get CodiInju() 'A2F824
  'Data Table: 455D68
  loc_A2F7E0: FLdRfVar var_B0
  loc_A2F7E3: FLdRfVar var_A0
  loc_A2F7E6: LitVarStr var_9C, "CodiInju"
  loc_A2F7EB: PopAdLdVar
  loc_A2F7EC: FLdRfVar var_8C
  loc_A2F7EF: FLdPr Me
  loc_A2F7F2: MemLdPr RsFrm
  loc_A2F7F5:  = Me.Fields
  loc_A2F7FA: FLdPr var_8C
  loc_A2F7FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F802: FLdPr var_A0
  loc_A2F805:  = Me.Value
  loc_A2F80A: FLdRfVar var_B0
  loc_A2F80D: CI2Var
  loc_A2F80E: FStI2 var_86
  loc_A2F811: FFreeAd var_8C = ""
  loc_A2F818: FFree1Var var_B0 = ""
  loc_A2F81B: ExitProcCbHresult
End Sub

Public Property Get CoadFaap() 'A2F8A4
  'Data Table: 455D68
  loc_A2F860: FLdRfVar var_B4
  loc_A2F863: FLdRfVar var_A4
  loc_A2F866: LitVarStr var_A0, "CoadFaap"
  loc_A2F86B: PopAdLdVar
  loc_A2F86C: FLdRfVar var_90
  loc_A2F86F: FLdPr Me
  loc_A2F872: MemLdPr RsFrm
  loc_A2F875:  = Me.Fields
  loc_A2F87A: FLdPr var_90
  loc_A2F87D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F882: FLdPr var_A4
  loc_A2F885:  = Me.Value
  loc_A2F88A: FLdRfVar var_B4
  loc_A2F88D: CR4Var
  loc_A2F88E: FStFPR8 var_8C
  loc_A2F891: FFreeAd var_90 = ""
  loc_A2F898: FFree1Var var_B4 = ""
  loc_A2F89B: ExitProcCbHresult
End Sub

Public Property Get ApleFaap() 'A2F924
  'Data Table: 455D68
  loc_A2F8E0: FLdRfVar var_B4
  loc_A2F8E3: FLdRfVar var_A4
  loc_A2F8E6: LitVarStr var_A0, "ApleFaap"
  loc_A2F8EB: PopAdLdVar
  loc_A2F8EC: FLdRfVar var_90
  loc_A2F8EF: FLdPr Me
  loc_A2F8F2: MemLdPr RsFrm
  loc_A2F8F5:  = Me.Fields
  loc_A2F8FA: FLdPr var_90
  loc_A2F8FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F902: FLdPr var_A4
  loc_A2F905:  = Me.Value
  loc_A2F90A: FLdRfVar var_B4
  loc_A2F90D: CR4Var
  loc_A2F90E: FStFPR8 var_8C
  loc_A2F911: FFreeAd var_90 = ""
  loc_A2F918: FFree1Var var_B4 = ""
  loc_A2F91B: ExitProcCbHresult
  loc_A2F921: NewIfNullAd
End Sub

Public Property Get DefiFaap() 'A2F9A4
  'Data Table: 455D68
  loc_A2F960: FLdRfVar var_B4
  loc_A2F963: FLdRfVar var_A4
  loc_A2F966: LitVarStr var_A0, "DefiFaap"
  loc_A2F96B: PopAdLdVar
  loc_A2F96C: FLdRfVar var_90
  loc_A2F96F: FLdPr Me
  loc_A2F972: MemLdPr RsFrm
  loc_A2F975:  = Me.Fields
  loc_A2F97A: FLdPr var_90
  loc_A2F97D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F982: FLdPr var_A4
  loc_A2F985:  = Me.Value
  loc_A2F98A: FLdRfVar var_B4
  loc_A2F98D: CR4Var
  loc_A2F98E: FStFPR8 var_8C
  loc_A2F991: FFreeAd var_90 = ""
  loc_A2F998: FFree1Var var_B4 = ""
  loc_A2F99B: ExitProcCbHresult
End Sub

Public Property Get ReseFaap() 'A2FA24
  'Data Table: 455D68
  loc_A2F9E0: FLdRfVar var_B4
  loc_A2F9E3: FLdRfVar var_A4
  loc_A2F9E6: LitVarStr var_A0, "ReseFaap"
  loc_A2F9EB: PopAdLdVar
  loc_A2F9EC: FLdRfVar var_90
  loc_A2F9EF: FLdPr Me
  loc_A2F9F2: MemLdPr RsFrm
  loc_A2F9F5:  = Me.Fields
  loc_A2F9FA: FLdPr var_90
  loc_A2F9FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FA02: FLdPr var_A4
  loc_A2FA05:  = Me.Value
  loc_A2FA0A: FLdRfVar var_B4
  loc_A2FA0D: CR4Var
  loc_A2FA0E: FStFPR8 var_8C
  loc_A2FA11: FFreeAd var_90 = ""
  loc_A2FA18: FFree1Var var_B4 = ""
  loc_A2FA1B: ExitProcCbHresult
End Sub

Public Property Get HoreFaap() 'A2FAA4
  'Data Table: 455D68
  loc_A2FA60: FLdRfVar var_B4
  loc_A2FA63: FLdRfVar var_A4
  loc_A2FA66: LitVarStr var_A0, "HoreFaap"
  loc_A2FA6B: PopAdLdVar
  loc_A2FA6C: FLdRfVar var_90
  loc_A2FA6F: FLdPr Me
  loc_A2FA72: MemLdPr RsFrm
  loc_A2FA75:  = Me.Fields
  loc_A2FA7A: FLdPr var_90
  loc_A2FA7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FA82: FLdPr var_A4
  loc_A2FA85:  = Me.Value
  loc_A2FA8A: FLdRfVar var_B4
  loc_A2FA8D: CR4Var
  loc_A2FA8E: FStFPR8 var_8C
  loc_A2FA91: FFreeAd var_90 = ""
  loc_A2FA98: FFree1Var var_B4 = ""
  loc_A2FA9B: ExitProcCbHresult
  loc_A2FAA1: Ary1StStrCopy
End Sub

Public Property Get HoofFaap() 'A2FBA4
  'Data Table: 455D68
  loc_A2FB60: FLdRfVar var_B4
  loc_A2FB63: FLdRfVar var_A4
  loc_A2FB66: LitVarStr var_A0, "HoofFaap"
  loc_A2FB6B: PopAdLdVar
  loc_A2FB6C: FLdRfVar var_90
  loc_A2FB6F: FLdPr Me
  loc_A2FB72: MemLdPr RsFrm
  loc_A2FB75:  = Me.Fields
  loc_A2FB7A: FLdPr var_90
  loc_A2FB7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FB82: FLdPr var_A4
  loc_A2FB85:  = Me.Value
  loc_A2FB8A: FLdRfVar var_B4
  loc_A2FB8D: CR4Var
  loc_A2FB8E: FStFPR8 var_8C
  loc_A2FB91: FFreeAd var_90 = ""
  loc_A2FB98: FFree1Var var_B4 = ""
  loc_A2FB9B: ExitProcCbHresult
End Sub

Public Property Get MoreFaap() 'A2FC24
  'Data Table: 455D68
  loc_A2FBE0: FLdRfVar var_B4
  loc_A2FBE3: FLdRfVar var_A4
  loc_A2FBE6: LitVarStr var_A0, "MoreFaap"
  loc_A2FBEB: PopAdLdVar
  loc_A2FBEC: FLdRfVar var_90
  loc_A2FBEF: FLdPr Me
  loc_A2FBF2: MemLdPr RsFrm
  loc_A2FBF5:  = Me.Fields
  loc_A2FBFA: FLdPr var_90
  loc_A2FBFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FC02: FLdPr var_A4
  loc_A2FC05:  = Me.Value
  loc_A2FC0A: FLdRfVar var_B4
  loc_A2FC0D: CR4Var
  loc_A2FC0E: FStFPR8 var_8C
  loc_A2FC11: FFreeAd var_90 = ""
  loc_A2FC18: FFree1Var var_B4 = ""
  loc_A2FC1B: ExitProcCbHresult
End Sub

Public Property Get MoofFaap() 'A2FD24
  'Data Table: 455D68
  loc_A2FCE0: FLdRfVar var_B4
  loc_A2FCE3: FLdRfVar var_A4
  loc_A2FCE6: LitVarStr var_A0, "MoofFaap"
  loc_A2FCEB: PopAdLdVar
  loc_A2FCEC: FLdRfVar var_90
  loc_A2FCEF: FLdPr Me
  loc_A2FCF2: MemLdPr RsFrm
  loc_A2FCF5:  = Me.Fields
  loc_A2FCFA: FLdPr var_90
  loc_A2FCFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FD02: FLdPr var_A4
  loc_A2FD05:  = Me.Value
  loc_A2FD0A: FLdRfVar var_B4
  loc_A2FD0D: CR4Var
  loc_A2FD0E: FStFPR8 var_8C
  loc_A2FD11: FFreeAd var_90 = ""
  loc_A2FD18: FFree1Var var_B4 = ""
  loc_A2FD1B: ExitProcCbHresult
End Sub

Public Function ValidaClave(iPeriInfo, sCodiPart) '9C2644
  'Data Table: 455D68
  loc_9C2634: ILdRf sCodiPart
  loc_9C2637: FStStrCopy var_8C
  loc_9C263A: ZeroRetVal
  loc_9C263C: ExitProcCbHresult
End Function

Public Function UltimaFacilidad() 'A7CC68
  'Data Table: 455D68
  loc_A7CBE8: LitStr "SELECT CodiFapa FROM facipago ORDER BY CodiFapa"
  loc_A7CBEB: Call EjecutarRsCls(from_stack_1v)
  loc_A7CBF0: FLdRfVar var_8C
  loc_A7CBF3: FLdPr Me
  loc_A7CBF6: MemLdPr global_56
  loc_A7CBF9:  = Me.RecordCount
  loc_A7CBFE: ILdRf var_8C
  loc_A7CC01: LitI4 0
  loc_A7CC06: GtI4
  loc_A7CC07: BranchF loc_A7CC5A
  loc_A7CC0A: FLdPr Me
  loc_A7CC0D: MemLdPr global_56
  loc_A7CC10: Me.MoveLast
  loc_A7CC15: FLdRfVar var_B4
  loc_A7CC18: FLdRfVar var_A4
  loc_A7CC1B: LitVarStr var_A0, "CodiFapa"
  loc_A7CC20: PopAdLdVar
  loc_A7CC21: FLdRfVar var_90
  loc_A7CC24: FLdPr Me
  loc_A7CC27: MemLdPr global_56
  loc_A7CC2A:  = Me.Fields
  loc_A7CC2F: FLdPr var_90
  loc_A7CC32: from_stack_2 = Me.Item(from_stack_1)
  loc_A7CC37: FLdPr var_A4
  loc_A7CC3A:  = Me.Value
  loc_A7CC3F: FLdRfVar var_B4
  loc_A7CC42: FnCLngVar
  loc_A7CC44: LitI4 1
  loc_A7CC49: AddI4
  loc_A7CC4A: FStR4 var_88
  loc_A7CC4D: FFreeAd var_90 = ""
  loc_A7CC54: FFree1Var var_B4 = ""
  loc_A7CC57: Branch loc_A7CC62
  loc_A7CC5A: LitI4 1
  loc_A7CC5F: FStR4 var_88
  loc_A7CC62: ExitProcCbHresult
End Function

Public Function ModificaFacilidad(iCodiFapa, FepaFapa, EstaFapa, sBajaMoti) 'AE27CC
  'Data Table: 455D68
  loc_AE26B0: ILdRf FepaFapa
  loc_AE26B3: FStStrCopy var_98
  loc_AE26B6: ILdRf EstaFapa
  loc_AE26B9: FStStrCopy var_9C
  loc_AE26BC: ILdRf sBajaMoti
  loc_AE26BF: FStStrCopy var_A0
  loc_AE26C2: ZeroRetValVar
  loc_AE26C4: FLdRfVar var_98
  loc_AE26C7: CVarRef
  loc_AE26CC: ImpAdCallI2 IsDate()
  loc_AE26D1: FStI2 var_282
  loc_AE26D4: LitI4 1
  loc_AE26D9: LitI4 1
  loc_AE26DE: LitVarStr var_D0, "yyyy-mm-dd"
  loc_AE26E3: FStVarCopyObj var_E0
  loc_AE26E6: FLdRfVar var_E0
  loc_AE26E9: FLdRfVar var_98
  loc_AE26EC: CVarRef
  loc_AE26F1: ImpAdCallI2 Format$(, )
  loc_AE26F6: FStStr var_288
  loc_AE26F9: LitVarStr var_148, "UPDATE facipago SET FepaFapa = "
  loc_AE26FE: LitVarStr var_118, "Null"
  loc_AE2703: FStVarCopyObj var_128
  loc_AE2706: FLdRfVar var_128
  loc_AE2709: LitStr "'"
  loc_AE270C: FLdZeroAd var_288
  loc_AE270F: FStStrNoPop var_E4
  loc_AE2712: ConcatStr
  loc_AE2713: FStStrNoPop var_E8
  loc_AE2716: LitStr "'"
  loc_AE2719: ConcatStr
  loc_AE271A: CVarStr var_108
  loc_AE271D: FLdI2 var_282
  loc_AE2720: CVarBoolI2 var_F8
  loc_AE2724: FLdRfVar var_138
  loc_AE2727: ImpAdCallFPR4  = IIf(, , )
  loc_AE272C: FLdRfVar var_138
  loc_AE272F: ConcatVar var_158
  loc_AE2733: LitVarStr var_168, ", EstaFapa = '"
  loc_AE2738: ConcatVar var_178
  loc_AE273C: ILdRf var_9C
  loc_AE273F: CVarStr var_188
  loc_AE2742: ConcatVar var_198
  loc_AE2746: LitVarStr var_1A8, "', ModiUsua = '"
  loc_AE274B: ConcatVar var_1B8
  loc_AE274F: ImpAdLdI4 MemVar_D9302C
  loc_AE2752: CVarStr var_1C8
  loc_AE2755: ConcatVar var_1D8
  loc_AE2759: LitVarStr var_1E8, "', ModiFeho = now(), BajaMoti = '"
  loc_AE275E: ConcatVar var_1F8
  loc_AE2762: ILdRf var_A0
  loc_AE2765: CVarStr var_208
  loc_AE2768: ConcatVar var_218
  loc_AE276C: LitVarStr var_228, "' WHERE CodiFapa = "
  loc_AE2771: ConcatVar var_238
  loc_AE2775: FLdRfVar var_23C
  loc_AE2778: from_stack_1 = CodiFapa
  loc_AE277D: ILdRf var_23C
  loc_AE2780: CVarI4
  loc_AE2784: ConcatVar var_25C
  loc_AE2788: LitVarStr var_26C, ";"
  loc_AE278D: ConcatVar var_27C
  loc_AE2791: CStrVarVal var_280
  loc_AE2795: Call EjecutarRsCls(from_stack_1v)
  loc_AE279A: FFreeStr var_E4 = "": var_E8 = "": var_280 = ""
  loc_AE27A5: FFreeVar var_E0 = "": var_F8 = "": var_108 = "": var_128 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = "": var_218 = "": var_238 = "": var_25C = ""
  loc_AE27C6: ExitProcCbHresult
End Function

Public Function ModificaCtaCte(lCodiFapa, byCodiOfic, sCuenCtct) 'ACB178
  'Data Table: 455D68
  loc_ACB074: ILdRf byCodiOfic
  loc_ACB077: FStStrCopy var_98
  loc_ACB07A: ILdRf sCuenCtct
  loc_ACB07D: FStStrCopy var_9C
  loc_ACB080: ZeroRetValVar
  loc_ACB082: LitStr "Municipalidad de Guaymallén"
  loc_ACB085: LitStr "Municipalidad de General Alvear"
  loc_ACB088: EqStr
  loc_ACB08A: BranchF loc_ACB172
  loc_ACB08D: LitStr " SELECT * FROM facictacte WHERE CodiFapa = "
  loc_ACB090: ILdRf lCodiFapa
  loc_ACB093: CStrI4
  loc_ACB095: FStStrNoPop var_A0
  loc_ACB098: ConcatStr
  loc_ACB099: FStStrNoPop var_A4
  loc_ACB09C: LitStr " AND CodiOfic = "
  loc_ACB09F: ConcatStr
  loc_ACB0A0: FStStrNoPop var_A8
  loc_ACB0A3: ILdRf var_98
  loc_ACB0A6: ConcatStr
  loc_ACB0A7: FStStrNoPop var_AC
  loc_ACB0AA: LitStr " AND CuenCtct = '"
  loc_ACB0AD: ConcatStr
  loc_ACB0AE: FStStrNoPop var_B0
  loc_ACB0B1: ILdRf var_9C
  loc_ACB0B4: ConcatStr
  loc_ACB0B5: FStStrNoPop var_B4
  loc_ACB0B8: LitStr "'"
  loc_ACB0BB: ConcatStr
  loc_ACB0BC: FStStrNoPop var_B8
  loc_ACB0BF: Call EjecutarRsCls(from_stack_1v)
  loc_ACB0C4: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_ACB0D5: FLdRfVar var_BC
  loc_ACB0D8: FLdPr Me
  loc_ACB0DB: MemLdPr global_56
  loc_ACB0DE:  = Me.RecordCount
  loc_ACB0E3: ILdRf var_BC
  loc_ACB0E6: LitI4 0
  loc_ACB0EB: EqI4
  loc_ACB0EC: BranchF loc_ACB172
  loc_ACB0EF: LitStr "SELECT * FROM facipago WHERE CodiFapa = "
  loc_ACB0F2: ILdRf lCodiFapa
  loc_ACB0F5: CStrI4
  loc_ACB0F7: FStStrNoPop var_A0
  loc_ACB0FA: ConcatStr
  loc_ACB0FB: FStStrNoPop var_A4
  loc_ACB0FE: LitStr " AND AltaUsua = 'migra'"
  loc_ACB101: ConcatStr
  loc_ACB102: FStStrNoPop var_A8
  loc_ACB105: Call EjecutarRsCls(from_stack_1v)
  loc_ACB10A: FFreeStr var_A0 = "": var_A4 = ""
  loc_ACB113: FLdRfVar var_BC
  loc_ACB116: FLdPr Me
  loc_ACB119: MemLdPr global_56
  loc_ACB11C:  = Me.RecordCount
  loc_ACB121: ILdRf var_BC
  loc_ACB124: LitI4 0
  loc_ACB129: GtI4
  loc_ACB12A: BranchF loc_ACB172
  loc_ACB12D: LitStr " UPDATE ctacte SET CodiFapa = 0 WHERE CodiOfic = "
  loc_ACB130: ILdRf var_98
  loc_ACB133: ConcatStr
  loc_ACB134: FStStrNoPop var_A0
  loc_ACB137: LitStr " AND CuenCtct = '"
  loc_ACB13A: ConcatStr
  loc_ACB13B: FStStrNoPop var_A4
  loc_ACB13E: ILdRf var_9C
  loc_ACB141: ConcatStr
  loc_ACB142: FStStrNoPop var_A8
  loc_ACB145: LitStr "' AND CodiFapa = "
  loc_ACB148: ConcatStr
  loc_ACB149: FStStrNoPop var_AC
  loc_ACB14C: ILdRf lCodiFapa
  loc_ACB14F: CStrI4
  loc_ACB151: FStStrNoPop var_B0
  loc_ACB154: ConcatStr
  loc_ACB155: FStStrNoPop var_B4
  loc_ACB158: Call EjecutarRsCls(from_stack_1v)
  loc_ACB15D: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_ACB16C: ExitProcCbHresult
  loc_ACB172: ExitProcCbHresult
End Function

Private Function Proc_162_88_9F4930() '9F4930
  'Data Table: 455D68
  loc_9F490C: LitStr "Primary"
  loc_9F490F: FLdPr Me
  loc_9F4912: LateIdLdVar var_94 DispID_4 0
  loc_9F4919: CastAdVar Me
  loc_9F491D: FStAdFunc var_98
  loc_9F4920: FLdPr var_98
  loc_9F4928: FFree1Ad var_98
  loc_9F492B: FFree1Var var_94 = ""
  loc_9F492E: ExitProcHresult
End Function

Private Function Proc_162_89_9DEF2C(arg_C) '9DEF2C
  'Data Table: 455D68
  loc_9DEF10: ILdI4 arg_C
  loc_9DEF13: FStStrCopy var_88
  loc_9DEF16: ILdRf var_88
  loc_9DEF19: LitStr "Primary"
  loc_9DEF1C: EqStr
  loc_9DEF1E: BranchF loc_9DEF2B
  loc_9DEF21: FLdPr Me
  loc_9DEF24: MemLdStr RsFrm
  loc_9DEF27: IStAd
  loc_9DEF2B: ExitProcHresult
End Function
