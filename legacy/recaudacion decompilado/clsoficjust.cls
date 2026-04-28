VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsoficjust"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Move(iValor) '9E8B10
  'Data Table: 41B5E8
  loc_9E8AF0: LitVar_Missing var_98
  loc_9E8AF3: PopAdLdVar
  loc_9E8AF4: ILdI2 iValor
  loc_9E8AF7: CI4UI1
  loc_9E8AF8: FLdRfVar var_88
  loc_9E8AFB: FLdPr Me
  loc_9E8AFE: from_stack_1v = clsoficjust.global_4306288Get()
  loc_9E8B03: FLdPr var_88
  loc_9E8B06: Me.Move from_stack_1, from_stack_2
  loc_9E8B0B: FFree1Ad var_88
  loc_9E8B0E: ExitProcHresult
End Sub

Public Sub MoveFirst() 'A0E124
  'Data Table: 41B5E8
  loc_A0E0E8: FLdRfVar var_8C
  loc_A0E0EB: FLdRfVar var_88
  loc_A0E0EE: FLdPr Me
  loc_A0E0F1: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A0E0F6: FLdPr var_88
  loc_A0E0F9:  = Me.RecordCount
  loc_A0E0FE: ILdRf var_8C
  loc_A0E101: LitI4 0
  loc_A0E106: GtI4
  loc_A0E107: FFree1Ad var_88
  loc_A0E10A: BranchF loc_A0E123
  loc_A0E10D: FLdRfVar var_88
  loc_A0E110: FLdPr Me
  loc_A0E113: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A0E118: FLdPr var_88
  loc_A0E11B: Me.MoveFirst
  loc_A0E120: FFree1Ad var_88
  loc_A0E123: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0DFD4
  'Data Table: 41B5E8
  loc_A0DF98: FLdRfVar var_8C
  loc_A0DF9B: FLdRfVar var_88
  loc_A0DF9E: FLdPr Me
  loc_A0DFA1: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A0DFA6: FLdPr var_88
  loc_A0DFA9:  = Me.RecordCount
  loc_A0DFAE: ILdRf var_8C
  loc_A0DFB1: LitI4 0
  loc_A0DFB6: GtI4
  loc_A0DFB7: FFree1Ad var_88
  loc_A0DFBA: BranchF loc_A0DFD3
  loc_A0DFBD: FLdRfVar var_88
  loc_A0DFC0: FLdPr Me
  loc_A0DFC3: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A0DFC8: FLdPr var_88
  loc_A0DFCB: Me.MoveLast
  loc_A0DFD0: FFree1Ad var_88
  loc_A0DFD3: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9AD10
  'Data Table: 41B5E8
  loc_A9AC54: FLdRfVar var_8A
  loc_A9AC57: FLdRfVar var_88
  loc_A9AC5A: FLdPr Me
  loc_A9AC5D: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A9AC62: FLdPr var_88
  loc_A9AC65:  = Me.EOF
  loc_A9AC6A: FLdI2 var_8A
  loc_A9AC6D: NotI4
  loc_A9AC6E: FLdRfVar var_94
  loc_A9AC71: FLdRfVar var_90
  loc_A9AC74: FLdPr Me
  loc_A9AC77: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A9AC7C: FLdPr var_90
  loc_A9AC7F:  = Me.RecordCount
  loc_A9AC84: ILdRf var_94
  loc_A9AC87: LitI4 0
  loc_A9AC8C: GtI4
  loc_A9AC8D: AndI4
  loc_A9AC8E: FFreeAd var_88 = ""
  loc_A9AC95: BranchF loc_A9ACAE
  loc_A9AC98: FLdRfVar var_88
  loc_A9AC9B: FLdPr Me
  loc_A9AC9E: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A9ACA3: FLdPr var_88
  loc_A9ACA6: Me.MoveNext
  loc_A9ACAB: FFree1Ad var_88
  loc_A9ACAE: FLdRfVar var_8A
  loc_A9ACB1: FLdRfVar var_88
  loc_A9ACB4: FLdPr Me
  loc_A9ACB7: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A9ACBC: FLdPr var_88
  loc_A9ACBF:  = Me.EOF
  loc_A9ACC4: FLdI2 var_8A
  loc_A9ACC7: FLdRfVar var_94
  loc_A9ACCA: FLdRfVar var_90
  loc_A9ACCD: FLdPr Me
  loc_A9ACD0: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A9ACD5: FLdPr var_90
  loc_A9ACD8:  = Me.RecordCount
  loc_A9ACDD: ILdRf var_94
  loc_A9ACE0: LitI4 0
  loc_A9ACE5: GtI4
  loc_A9ACE6: AndI4
  loc_A9ACE7: FFreeAd var_88 = ""
  loc_A9ACEE: BranchF loc_A9AD0C
  loc_A9ACF1: ImpAdCallFPR4 Beep()
  loc_A9ACF6: FLdRfVar var_88
  loc_A9ACF9: FLdPr Me
  loc_A9ACFC: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A9AD01: FLdPr var_88
  loc_A9AD04: Me.MoveLast
  loc_A9AD09: FFree1Ad var_88
  loc_A9AD0C: ExitProcHresult
  loc_A9AD0D: FLdPr arg_0
End Sub

Public Sub MoveSiguiente() '9DBB88
  'Data Table: 41B5E8
  loc_9DBB70: FLdRfVar var_88
  loc_9DBB73: FLdPr Me
  loc_9DBB76: from_stack_1v = clsoficjust.global_4306288Get()
  loc_9DBB7B: FLdPr var_88
  loc_9DBB7E: Me.MoveNext
  loc_9DBB83: FFree1Ad var_88
  loc_9DBB86: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9BF2C
  'Data Table: 41B5E8
  loc_A9BE70: FLdRfVar var_8A
  loc_A9BE73: FLdRfVar var_88
  loc_A9BE76: FLdPr Me
  loc_A9BE79: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A9BE7E: FLdPr var_88
  loc_A9BE81:  = Me.BOF
  loc_A9BE86: FLdI2 var_8A
  loc_A9BE89: NotI4
  loc_A9BE8A: FLdRfVar var_94
  loc_A9BE8D: FLdRfVar var_90
  loc_A9BE90: FLdPr Me
  loc_A9BE93: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A9BE98: FLdPr var_90
  loc_A9BE9B:  = Me.RecordCount
  loc_A9BEA0: ILdRf var_94
  loc_A9BEA3: LitI4 0
  loc_A9BEA8: GtI4
  loc_A9BEA9: AndI4
  loc_A9BEAA: FFreeAd var_88 = ""
  loc_A9BEB1: BranchF loc_A9BECA
  loc_A9BEB4: FLdRfVar var_88
  loc_A9BEB7: FLdPr Me
  loc_A9BEBA: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A9BEBF: FLdPr var_88
  loc_A9BEC2: Me.MovePrevious
  loc_A9BEC7: FFree1Ad var_88
  loc_A9BECA: FLdRfVar var_8A
  loc_A9BECD: FLdRfVar var_88
  loc_A9BED0: FLdPr Me
  loc_A9BED3: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A9BED8: FLdPr var_88
  loc_A9BEDB:  = Me.BOF
  loc_A9BEE0: FLdI2 var_8A
  loc_A9BEE3: FLdRfVar var_94
  loc_A9BEE6: FLdRfVar var_90
  loc_A9BEE9: FLdPr Me
  loc_A9BEEC: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A9BEF1: FLdPr var_90
  loc_A9BEF4:  = Me.RecordCount
  loc_A9BEF9: ILdRf var_94
  loc_A9BEFC: LitI4 0
  loc_A9BF01: GtI4
  loc_A9BF02: AndI4
  loc_A9BF03: FFreeAd var_88 = ""
  loc_A9BF0A: BranchF loc_A9BF28
  loc_A9BF0D: ImpAdCallFPR4 Beep()
  loc_A9BF12: FLdRfVar var_88
  loc_A9BF15: FLdPr Me
  loc_A9BF18: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A9BF1D: FLdPr var_88
  loc_A9BF20: Me.MoveFirst
  loc_A9BF25: FFree1Ad var_88
  loc_A9BF28: ExitProcHresult
  loc_A9BF29: FLdPr arg_0
End Sub

Public Property Get EOF() '9F64E0
  'Data Table: 41B5E8
  loc_9F64B8: FLdRfVar var_8E
  loc_9F64BB: FLdRfVar var_8C
  loc_9F64BE: FLdPr Me
  loc_9F64C1: from_stack_1v = clsoficjust.global_4306288Get()
  loc_9F64C6: FLdPr var_8C
  loc_9F64C9:  = Me.EOF
  loc_9F64CE: FLdI2 var_8E
  loc_9F64D1: FStI2 var_86
  loc_9F64D4: FFree1Ad var_8C
  loc_9F64D7: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F9CF0
  'Data Table: 41B5E8
  loc_9F9CC8: FLdRfVar var_8E
  loc_9F9CCB: FLdRfVar var_8C
  loc_9F9CCE: FLdPr Me
  loc_9F9CD1: from_stack_1v = clsoficjust.global_4306288Get()
  loc_9F9CD6: FLdPr var_8C
  loc_9F9CD9:  = Me.BOF
  loc_9F9CDE: FLdI2 var_8E
  loc_9F9CE1: FStI2 var_86
  loc_9F9CE4: FFree1Ad var_8C
  loc_9F9CE7: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9E4A1C
  'Data Table: 41B5E8
  loc_9E4A00: ILdI4 sOrden
  loc_9E4A03: FLdRfVar var_88
  loc_9E4A06: FLdPr Me
  loc_9E4A09: from_stack_1v = clsoficjust.global_4306288Get()
  loc_9E4A0E: FLdPr var_88
  loc_9E4A11: Me.Sort = from_stack_1
  loc_9E4A16: FFree1Ad var_88
  loc_9E4A19: ExitProcHresult
End Sub

Public Sub Find(sFind) '9F65F4
  'Data Table: 41B5E8
  loc_9F65CC: LitVar_Missing var_98
  loc_9F65CF: PopAdLdVar
  loc_9F65D0: LitI4 1
  loc_9F65D5: LitI4 0
  loc_9F65DA: ILdI4 sFind
  loc_9F65DD: FLdRfVar var_88
  loc_9F65E0: FLdPr Me
  loc_9F65E3: from_stack_1v = clsoficjust.global_4306288Get()
  loc_9F65E8: FLdPr var_88
  loc_9F65EB: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F65F0: FFree1Ad var_88
  loc_9F65F3: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F6764
  'Data Table: 41B5E8
  loc_9F673C: FLdRfVar var_90
  loc_9F673F: FLdRfVar var_8C
  loc_9F6742: FLdPr Me
  loc_9F6745: from_stack_1v = clsoficjust.global_4306288Get()
  loc_9F674A: FLdPr var_8C
  loc_9F674D:  = Me.AbsolutePosition
  loc_9F6752: ILdRf var_90
  loc_9F6755: FStR4 var_88
  loc_9F6758: FFree1Ad var_8C
  loc_9F675B: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F7004
  'Data Table: 41B5E8
  loc_9F6FDC: FLdRfVar var_90
  loc_9F6FDF: FLdRfVar var_8C
  loc_9F6FE2: FLdPr Me
  loc_9F6FE5: from_stack_1v = clsoficjust.global_4306288Get()
  loc_9F6FEA: FLdPr var_8C
  loc_9F6FED:  = Me.RecordCount
  loc_9F6FF2: ILdRf var_90
  loc_9F6FF5: FStR4 var_88
  loc_9F6FF8: FFree1Ad var_8C
  loc_9F6FFB: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiOfju, DetaOfju) 'A7BFE8
  'Data Table: 41B5E8
  loc_A7BF78: ILdRf DetaOfju
  loc_A7BF7B: FStStrCopy var_88
  loc_A7BF7E: FLdRfVar var_8C
  loc_A7BF81: FLdI2 CodiOfju
  loc_A7BF84: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A7BF89: ILdRf var_8C
  loc_A7BF8C: LitStr vbNullString
  loc_A7BF8F: NeStr
  loc_A7BF91: FFree1Str var_8C
  loc_A7BF94: BranchF loc_A7BFA2
  loc_A7BF97: LitStr "EL CODIGO DEL OFICIAL DE JUSTICIA YA EXISTE. Reintente..."
  loc_A7BF9A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7BF9F: Branch loc_A7BFE5
  loc_A7BFA2: LitStr "INSERT INTO oficjust (CodiOfju, DetaOfju) VALUES ("
  loc_A7BFA5: FLdI2 CodiOfju
  loc_A7BFA8: CStrUI1
  loc_A7BFAA: FStStrNoPop var_8C
  loc_A7BFAD: ConcatStr
  loc_A7BFAE: FStStrNoPop var_90
  loc_A7BFB1: LitStr ",'"
  loc_A7BFB4: ConcatStr
  loc_A7BFB5: FStStrNoPop var_94
  loc_A7BFB8: ILdRf var_88
  loc_A7BFBB: ConcatStr
  loc_A7BFBC: FStStrNoPop var_98
  loc_A7BFBF: LitStr "');"
  loc_A7BFC2: ConcatStr
  loc_A7BFC3: FStStrNoPop var_9C
  loc_A7BFC6: Call EjecutarRs2(from_stack_1v)
  loc_A7BFCB: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A7BFD8: Call Requery()
  loc_A7BFDD: FLdI2 CodiOfju
  loc_A7BFE0: Call Encontrar(from_stack_1v)
  loc_A7BFE5: ExitProcHresult
End Sub

Public Sub Modificar(CodiOfju, DetaOfju) 'A7B5D8
  'Data Table: 41B5E8
  loc_A7B568: ILdRf DetaOfju
  loc_A7B56B: FStStrCopy var_88
  loc_A7B56E: FLdRfVar var_8C
  loc_A7B571: FLdI2 CodiOfju
  loc_A7B574: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A7B579: ILdRf var_8C
  loc_A7B57C: LitStr vbNullString
  loc_A7B57F: EqStr
  loc_A7B581: FFree1Str var_8C
  loc_A7B584: BranchF loc_A7B592
  loc_A7B587: LitStr "El OFICIAL DE JUSTICIA NO EXISTE. Reintente..."
  loc_A7B58A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7B58F: Branch loc_A7B5C8
  loc_A7B592: LitStr "UPDATE oficjust SET DetaOfju = '"
  loc_A7B595: ILdRf var_88
  loc_A7B598: ConcatStr
  loc_A7B599: FStStrNoPop var_8C
  loc_A7B59C: LitStr "' WHERE CodiOfju = "
  loc_A7B59F: ConcatStr
  loc_A7B5A0: FStStrNoPop var_90
  loc_A7B5A3: FLdI2 CodiOfju
  loc_A7B5A6: CStrUI1
  loc_A7B5A8: FStStrNoPop var_94
  loc_A7B5AB: ConcatStr
  loc_A7B5AC: FStStrNoPop var_98
  loc_A7B5AF: LitStr ";"
  loc_A7B5B2: ConcatStr
  loc_A7B5B3: FStStrNoPop var_9C
  loc_A7B5B6: Call EjecutarRs2(from_stack_1v)
  loc_A7B5BB: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A7B5C8: Call Requery()
  loc_A7B5CD: FLdI2 CodiOfju
  loc_A7B5D0: Call Encontrar(from_stack_1v)
  loc_A7B5D5: ExitProcHresult
End Sub

Public Sub Requery() 'A03378
  'Data Table: 41B5E8
  loc_A03348: LitI4 -1
  loc_A0334D: FLdRfVar var_88
  loc_A03350: FLdPr Me
  loc_A03353: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A03358: FLdPr var_88
  loc_A0335B: Me.Requery from_stack_1
  loc_A03360: FFree1Ad var_88
  loc_A03363: LitVarStr var_98, "Primary"
  loc_A03368: PopAdLdVar
  loc_A03369: FLdPr Me
  loc_A0336C: LateIdCall
  loc_A03374: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) 'A6E3C4
  'Data Table: 41B5E8
  loc_A6E350: ILdRf sSelect
  loc_A6E353: FStStrCopy var_88
  loc_A6E356: LitNothing
  loc_A6E358: CastAd
  loc_A6E35B: FStAdFuncNoPop
  loc_A6E35E: FLdPr Me
  loc_A6E361: Call clsoficjust.global_4306288Set(from_stack_1v)
  loc_A6E366: FFree1Ad var_8C
  loc_A6E369: New Recordset
  loc_A6E36D: FStAdFuncNoPop
  loc_A6E370: FLdPr Me
  loc_A6E373: Call clsoficjust.global_4306288Set(from_stack_1v)
  loc_A6E378: FFree1Ad var_8C
  loc_A6E37B: LitI4 -1
  loc_A6E380: LitI4 3
  loc_A6E385: LitI4 3
  loc_A6E38A: ImpAdLdI4 MemVar_D9301C
  loc_A6E38D: CVarAd
  loc_A6E391: PopAdLdVar
  loc_A6E392: ILdRf var_88
  loc_A6E395: CVarStr var_9C
  loc_A6E398: PopAdLdVar
  loc_A6E399: FLdRfVar var_8C
  loc_A6E39C: FLdPr Me
  loc_A6E39F: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A6E3A4: FLdPr var_8C
  loc_A6E3A7: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6E3AC: FFree1Ad var_8C
  loc_A6E3AF: LitVarStr var_9C, "Primary"
  loc_A6E3B4: PopAdLdVar
  loc_A6E3B5: FLdPr Me
  loc_A6E3B8: LateIdCall
  loc_A6E3C0: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A5A4F0
  'Data Table: 41B5E8
  loc_A5A490: ILdRf sSelect
  loc_A5A493: FStStrCopy var_88
  loc_A5A496: LitNothing
  loc_A5A498: CastAd
  loc_A5A49B: FStAdFuncNoPop
  loc_A5A49E: FLdPr Me
  loc_A5A4A1: Call clsoficjust.global_4306288Set(from_stack_1v)
  loc_A5A4A6: FFree1Ad var_8C
  loc_A5A4A9: New Recordset
  loc_A5A4AD: FStAdFuncNoPop
  loc_A5A4B0: FLdPr Me
  loc_A5A4B3: Call clsoficjust.global_4306288Set(from_stack_1v)
  loc_A5A4B8: FFree1Ad var_8C
  loc_A5A4BB: LitI4 -1
  loc_A5A4C0: LitI4 3
  loc_A5A4C5: LitI4 3
  loc_A5A4CA: ImpAdLdI4 MemVar_D9301C
  loc_A5A4CD: CVarAd
  loc_A5A4D1: PopAdLdVar
  loc_A5A4D2: ILdRf var_88
  loc_A5A4D5: CVarStr var_9C
  loc_A5A4D8: PopAdLdVar
  loc_A5A4D9: FLdRfVar var_8C
  loc_A5A4DC: FLdPr Me
  loc_A5A4DF: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A5A4E4: FLdPr var_8C
  loc_A5A4E7: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5A4EC: FFree1Ad var_8C
  loc_A5A4EF: ExitProcHresult
End Sub

Public Sub Encontrar(CodiOfju) '9EB2AC
  'Data Table: 41B5E8
  loc_9EB28C: LitStr "CodiOfju = "
  loc_9EB28F: FLdI2 CodiOfju
  loc_9EB292: CStrUI1
  loc_9EB294: FStStrNoPop var_88
  loc_9EB297: ConcatStr
  loc_9EB298: PopTmpLdAdStr
  loc_9EB29C: Call Find(from_stack_1v)
  loc_9EB2A1: FFreeStr var_88 = ""
  loc_9EB2A8: ExitProcHresult
End Sub

Public Property Get DataSource() 'A0A5B0
  'Data Table: 41B5E8
  loc_A0A580: ZeroRetVal
  loc_A0A582: FLdRfVar var_90
  loc_A0A585: FLdRfVar var_8C
  loc_A0A588: FLdPr Me
  loc_A0A58B: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A0A590: FLdPr var_8C
  loc_A0A593:  = Me.DataSource
  loc_A0A598: ILdRf var_90
  loc_A0A59B: CastAd
  loc_A0A59E: FStAdFunc var_88
  loc_A0A5A1: FFreeAd var_8C = ""
  loc_A0A5A8: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9FA3C4
  'Data Table: 41B5E8
  loc_9FA39C: FLdRfVar var_90
  loc_9FA39F: FLdRfVar var_8C
  loc_9FA3A2: FLdPr Me
  loc_9FA3A5: from_stack_1v = clsoficjust.global_4306288Get()
  loc_9FA3AA: FLdPr var_8C
  loc_9FA3AD:  = Me.EditMode
  loc_9FA3B2: ILdRf var_90
  loc_9FA3B5: FStR4 var_88
  loc_9FA3B8: FFree1Ad var_8C
  loc_9FA3BB: ExitProcCbHresult
  loc_9FA3C1: GeCyR8
End Sub

Public Property Get CodiOfju() 'A46270
  'Data Table: 41B5E8
  loc_A46224: FLdRfVar var_B4
  loc_A46227: FLdRfVar var_A4
  loc_A4622A: LitVarStr var_A0, "CodiOfju"
  loc_A4622F: PopAdLdVar
  loc_A46230: FLdRfVar var_90
  loc_A46233: FLdRfVar var_8C
  loc_A46236: FLdPr Me
  loc_A46239: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A4623E: FLdPr var_8C
  loc_A46241:  = Me.Fields
  loc_A46246: FLdPr var_90
  loc_A46249: from_stack_2 = Me.Item(from_stack_1)
  loc_A4624E: FLdPr var_A4
  loc_A46251:  = Me.Value
  loc_A46256: FLdRfVar var_B4
  loc_A46259: CI2Var
  loc_A4625A: FStI2 var_86
  loc_A4625D: FFreeAd var_8C = "": var_90 = ""
  loc_A46266: FFree1Var var_B4 = ""
  loc_A46269: ExitProcCbHresult
End Sub

Public Property Let CodiOfju(vDato) '9EB200
  'Data Table: 41B5E8
  loc_9EB1DC: FLdI2 vDato
  loc_9EB1DF: CVarI2 var_A8
  loc_9EB1E2: PopAdLdVar
  loc_9EB1E3: LitVarStr var_98, "CodiOfju"
  loc_9EB1E8: PopAdLdVar
  loc_9EB1E9: FLdRfVar var_88
  loc_9EB1EC: FLdPr Me
  loc_9EB1EF: from_stack_1v = clsoficjust.global_4306288Get()
  loc_9EB1F4: FLdPr var_88
  loc_9EB1F7: Me.Collect = from_stack_1
  loc_9EB1FC: FFree1Ad var_88
  loc_9EB1FF: ExitProcHresult
End Sub

Public Property Get DetaOfju() 'A563C4
  'Data Table: 41B5E8
  loc_A56374: ZeroRetVal
  loc_A56376: FLdRfVar var_B4
  loc_A56379: FLdRfVar var_A4
  loc_A5637C: LitVarStr var_A0, "DetaOfju"
  loc_A56381: PopAdLdVar
  loc_A56382: FLdRfVar var_90
  loc_A56385: FLdRfVar var_8C
  loc_A56388: FLdPr Me
  loc_A5638B: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A56390: FLdPr var_8C
  loc_A56393:  = Me.Fields
  loc_A56398: FLdPr var_90
  loc_A5639B: from_stack_2 = Me.Item(from_stack_1)
  loc_A563A0: FLdPr var_A4
  loc_A563A3:  = Me.Value
  loc_A563A8: FLdRfVar var_B4
  loc_A563AB: CStrVarTmp
  loc_A563AC: FStStr var_88
  loc_A563AF: FFreeAd var_8C = "": var_90 = ""
  loc_A563B8: FFree1Var var_B4 = ""
  loc_A563BB: ExitProcCbHresult
  loc_A563C1: FStAd arg_7078 
End Sub

Public Property Let DetaOfju(vDato) 'A053E0
  'Data Table: 41B5E8
  loc_A053B4: ILdRf vDato
  loc_A053B7: FStStrCopy var_88
  loc_A053BA: ILdRf var_88
  loc_A053BD: CVarStr var_AC
  loc_A053C0: PopAdLdVar
  loc_A053C1: LitVarStr var_9C, "DetaOfju"
  loc_A053C6: PopAdLdVar
  loc_A053C7: FLdRfVar var_8C
  loc_A053CA: FLdPr Me
  loc_A053CD: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A053D2: FLdPr var_8C
  loc_A053D5: Me.Collect = from_stack_1
  loc_A053DA: FFree1Ad var_8C
  loc_A053DD: ExitProcHresult
End Sub

Public Function ValidaClave(CodiOfju) 'A51BE0
  'Data Table: 41B5E8
  loc_A51B90: ZeroRetVal
  loc_A51B92: LitStr "SELECT CodiOfju FROM oficjust WHERE CodiOfju = "
  loc_A51B95: FLdI2 CodiOfju
  loc_A51B98: CStrUI1
  loc_A51B9A: FStStrNoPop var_8C
  loc_A51B9D: ConcatStr
  loc_A51B9E: FStStrNoPop var_90
  loc_A51BA1: Call EjecutarRs2(from_stack_1v)
  loc_A51BA6: FFreeStr var_8C = ""
  loc_A51BAD: FLdRfVar var_98
  loc_A51BB0: FLdRfVar ValidaClave
  loc_A51BB3: FLdPr Me
  loc_A51BB6: from_stack_1v = clsoficjust.global_4306288Get()
  loc_A51BBB: FLdPr ValidaClave
  loc_A51BBE:  = Me.RecordCount
  loc_A51BC3: ILdRf var_98
  loc_A51BC6: LitI4 0
  loc_A51BCB: GtI4
  loc_A51BCC: FFree1Ad ValidaClave
  loc_A51BCF: BranchF loc_A51BD8
  loc_A51BD2: LitStr "El OFICLA DE JUSTICIA YA EXISTE. Reintente..."
  loc_A51BD5: FStStrCopy var_88
  loc_A51BD8: ExitProcCbHresult
  loc_A51BDE: CopyBytes
End Function

Public Function CodiOfjuValidate(iCodiOfju) 'AB257C
  'Data Table: 41B5E8
  loc_AB24A0: ZeroRetVal
  loc_AB24A2: LitI2_Byte 0
  loc_AB24A4: LitI2_Byte 0
  loc_AB24A6: FLdI2 iCodiOfju
  loc_AB24A9: CStrUI1
  loc_AB24AB: FStStrNoPop var_8C
  loc_AB24AE: LitStr "el Codigo de Oficial de Justicia"
  loc_AB24B1: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AB24B6: FStStr var_88
  loc_AB24B9: FFree1Str var_8C
  loc_AB24BC: ILdRf var_88
  loc_AB24BF: LitStr vbNullString
  loc_AB24C2: NeStr
  loc_AB24C4: BranchF loc_AB24CD
  loc_AB24C7: ExitProcCbHresult
  loc_AB24CD: New Recordset
  loc_AB24D1: FStAdFuncNoPop
  loc_AB24D4: FLdPr Me
  loc_AB24D7: Call clsoficjust.global_4306288Set(from_stack_1v)
  loc_AB24DC: FFree1Ad var_90
  loc_AB24DF: LitI4 -1
  loc_AB24E4: LitI4 3
  loc_AB24E9: LitI4 3
  loc_AB24EE: ImpAdLdI4 MemVar_D9301C
  loc_AB24F1: CVarAd
  loc_AB24F5: PopAdLdVar
  loc_AB24F6: LitStr "SELECT * FROM oficjust WHERE CodiOfju = "
  loc_AB24F9: FLdI2 iCodiOfju
  loc_AB24FC: CStrUI1
  loc_AB24FE: FStStrNoPop var_8C
  loc_AB2501: ConcatStr
  loc_AB2502: CVarStr var_A0
  loc_AB2505: PopAdLdVar
  loc_AB2506: FLdRfVar var_90
  loc_AB2509: FLdPr Me
  loc_AB250C: from_stack_1v = clsoficjust.global_4306288Get()
  loc_AB2511: FLdPr var_90
  loc_AB2514: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_AB2519: FFree1Str var_8C
  loc_AB251C: FFree1Ad var_90
  loc_AB251F: FFree1Var var_A0 = ""
  loc_AB2522: FLdRfVar var_B4
  loc_AB2525: FLdRfVar var_90
  loc_AB2528: FLdPr Me
  loc_AB252B: from_stack_1v = clsoficjust.global_4306288Get()
  loc_AB2530: FLdPr var_90
  loc_AB2533:  = Me.RecordCount
  loc_AB2538: ILdRf var_B4
  loc_AB253B: LitI4 0
  loc_AB2540: EqI4
  loc_AB2541: FFree1Ad var_90
  loc_AB2544: BranchF loc_AB254D
  loc_AB2547: LitStr "El CODIGO del OFICIAL de JUSTICIA no existe. Reintente..."
  loc_AB254A: FStStrCopy var_88
  loc_AB254D: FLdRfVar var_90
  loc_AB2550: FLdPr Me
  loc_AB2553: from_stack_1v = clsoficjust.global_4306288Get()
  loc_AB2558: FLdPr var_90
  loc_AB255B: Me.Close
  loc_AB2560: FFree1Ad var_90
  loc_AB2563: LitNothing
  loc_AB2565: CastAd
  loc_AB2568: FStAdFuncNoPop
  loc_AB256B: FLdPr Me
  loc_AB256E: Call clsoficjust.global_4306288Set(from_stack_1v)
  loc_AB2573: FFree1Ad var_90
  loc_AB2576: ExitProcCbHresult
End Function

Public Function BuscaDetalleOficialdeJusticia(iCodiOfju) 'AC367C
  'Data Table: 41B5E8
  loc_AC3580: ZeroRetVal
  loc_AC3582: New Recordset
  loc_AC3586: FStAdFuncNoPop
  loc_AC3589: FLdPr Me
  loc_AC358C: Call clsoficjust.global_4306288Set(from_stack_1v)
  loc_AC3591: FFree1Ad var_8C
  loc_AC3594: LitI4 -1
  loc_AC3599: LitI4 3
  loc_AC359E: LitI4 3
  loc_AC35A3: ImpAdLdI4 MemVar_D9301C
  loc_AC35A6: CVarAd
  loc_AC35AA: PopAdLdVar
  loc_AC35AB: LitStr "SELECT * FROM oficjust WHERE CodiOfju = "
  loc_AC35AE: FLdI2 iCodiOfju
  loc_AC35B1: CStrUI1
  loc_AC35B3: FStStrNoPop var_90
  loc_AC35B6: ConcatStr
  loc_AC35B7: CVarStr var_A0
  loc_AC35BA: PopAdLdVar
  loc_AC35BB: FLdRfVar var_8C
  loc_AC35BE: FLdPr Me
  loc_AC35C1: from_stack_1v = clsoficjust.global_4306288Get()
  loc_AC35C6: FLdPr var_8C
  loc_AC35C9: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_AC35CE: FFree1Str var_90
  loc_AC35D1: FFree1Ad var_8C
  loc_AC35D4: FFree1Var var_A0 = ""
  loc_AC35D7: FLdRfVar var_B4
  loc_AC35DA: FLdRfVar var_8C
  loc_AC35DD: FLdPr Me
  loc_AC35E0: from_stack_1v = clsoficjust.global_4306288Get()
  loc_AC35E5: FLdPr var_8C
  loc_AC35E8:  = Me.RecordCount
  loc_AC35ED: ILdRf var_B4
  loc_AC35F0: LitI4 1
  loc_AC35F5: EqI4
  loc_AC35F6: FFree1Ad var_8C
  loc_AC35F9: BranchF loc_AC3644
  loc_AC35FC: FLdRfVar var_A0
  loc_AC35FF: FLdRfVar var_BC
  loc_AC3602: LitVarStr var_B0, "DetaOfju"
  loc_AC3607: PopAdLdVar
  loc_AC3608: FLdRfVar var_B8
  loc_AC360B: FLdRfVar var_8C
  loc_AC360E: FLdPr Me
  loc_AC3611: from_stack_1v = clsoficjust.global_4306288Get()
  loc_AC3616: FLdPr var_8C
  loc_AC3619:  = Me.Fields
  loc_AC361E: FLdPr var_B8
  loc_AC3621: from_stack_2 = Me.Item(from_stack_1)
  loc_AC3626: FLdPr var_BC
  loc_AC3629:  = Me.Value
  loc_AC362E: FLdRfVar var_A0
  loc_AC3631: CStrVarTmp
  loc_AC3632: FStStr var_88
  loc_AC3635: FFreeAd var_8C = "": var_B8 = ""
  loc_AC363E: FFree1Var var_A0 = ""
  loc_AC3641: Branch loc_AC364A
  loc_AC3644: LitStr vbNullString
  loc_AC3647: FStStrCopy var_88
  loc_AC364A: FLdRfVar var_8C
  loc_AC364D: FLdPr Me
  loc_AC3650: from_stack_1v = clsoficjust.global_4306288Get()
  loc_AC3655: FLdPr var_8C
  loc_AC3658: Me.Close
  loc_AC365D: FFree1Ad var_8C
  loc_AC3660: LitNothing
  loc_AC3662: CastAd
  loc_AC3665: FStAdFuncNoPop
  loc_AC3668: FLdPr Me
  loc_AC366B: Call clsoficjust.global_4306288Set(from_stack_1v)
  loc_AC3670: FFree1Ad var_8C
  loc_AC3673: ExitProcCbHresult
  loc_AC3679: FLdPr arg_732
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E8DAC
  'Data Table: 41B5E8
  loc_9E8D90: ILdRf pError
  loc_9E8D93: FStAd var_88 
  loc_9E8D97: ILdRf pRecordset
  loc_9E8D9A: FStAd var_8C 
  loc_9E8D9E: FLdPr Me
  loc_9E8DA1: RaiseEvent
  loc_9E8DA9: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9AFF0
  'Data Table: 41B5E8
  loc_A9AF30: ILdRf pRecordset
  loc_A9AF33: FStAd var_88 
  loc_A9AF37: ILdRf adReason
  loc_A9AF3A: FStR4 var_90
  loc_A9AF3D: ILdRf var_90
  loc_A9AF40: LitI4 1
  loc_A9AF45: EqI4
  loc_A9AF46: BranchF loc_A9AF4C
  loc_A9AF49: Branch loc_A9AFDF
  loc_A9AF4C: ILdRf var_90
  loc_A9AF4F: LitI4 9
  loc_A9AF54: EqI4
  loc_A9AF55: BranchF loc_A9AF5B
  loc_A9AF58: Branch loc_A9AFDF
  loc_A9AF5B: ILdRf var_90
  loc_A9AF5E: LitI4 2
  loc_A9AF63: EqI4
  loc_A9AF64: BranchF loc_A9AF6A
  loc_A9AF67: Branch loc_A9AFDF
  loc_A9AF6A: ILdRf var_90
  loc_A9AF6D: LitI4 &HB
  loc_A9AF72: EqI4
  loc_A9AF73: BranchF loc_A9AF79
  loc_A9AF76: Branch loc_A9AFDF
  loc_A9AF79: ILdRf var_90
  loc_A9AF7C: LitI4 &HA
  loc_A9AF81: EqI4
  loc_A9AF82: BranchF loc_A9AF88
  loc_A9AF85: Branch loc_A9AFDF
  loc_A9AF88: ILdRf var_90
  loc_A9AF8B: LitI4 7
  loc_A9AF90: EqI4
  loc_A9AF91: BranchF loc_A9AF97
  loc_A9AF94: Branch loc_A9AFDF
  loc_A9AF97: ILdRf var_90
  loc_A9AF9A: LitI4 8
  loc_A9AF9F: EqI4
  loc_A9AFA0: BranchF loc_A9AFA6
  loc_A9AFA3: Branch loc_A9AFDF
  loc_A9AFA6: ILdRf var_90
  loc_A9AFA9: LitI4 5
  loc_A9AFAE: EqI4
  loc_A9AFAF: BranchF loc_A9AFB5
  loc_A9AFB2: Branch loc_A9AFDF
  loc_A9AFB5: ILdRf var_90
  loc_A9AFB8: LitI4 6
  loc_A9AFBD: EqI4
  loc_A9AFBE: BranchF loc_A9AFC4
  loc_A9AFC1: Branch loc_A9AFDF
  loc_A9AFC4: ILdRf var_90
  loc_A9AFC7: LitI4 4
  loc_A9AFCC: EqI4
  loc_A9AFCD: BranchF loc_A9AFD3
  loc_A9AFD0: Branch loc_A9AFDF
  loc_A9AFD3: ILdRf var_90
  loc_A9AFD6: LitI4 3
  loc_A9AFDB: EqI4
  loc_A9AFDC: BranchF loc_A9AFDF
  loc_A9AFDF: FLdI2 var_8A
  loc_A9AFE2: BranchF loc_A9AFED
  loc_A9AFE5: LitI4 4
  loc_A9AFEA: IStI4 adStatus
  loc_A9AFED: ExitProcHresult
End Sub

Private Function Proc_30_29_9F7114() '9F7114
  'Data Table: 41B5E8
  loc_9F70F0: LitStr "Primary"
  loc_9F70F3: FLdPr Me
  loc_9F70F6: LateIdLdVar var_94 DispID_4 0
  loc_9F70FD: CastAdVar Me
  loc_9F7101: FStAdFunc var_98
  loc_9F7104: FLdPr var_98
  loc_9F710C: FFree1Ad var_98
  loc_9F710F: FFree1Var var_94 = ""
  loc_9F7112: ExitProcHresult
End Function

Private Function Proc_30_30_9F7284(arg_C) '9F7284
  'Data Table: 41B5E8
  loc_9F7260: ILdI4 arg_C
  loc_9F7263: FStStrCopy var_88
  loc_9F7266: ILdRf var_88
  loc_9F7269: LitStr "Primary"
  loc_9F726C: EqStr
  loc_9F726E: BranchF loc_9F7283
  loc_9F7271: FLdRfVar var_8C
  loc_9F7274: FLdPr Me
  loc_9F7277: from_stack_1v = clsoficjust.global_4306288Get()
  loc_9F727C: FLdZeroAd var_8C
  loc_9F727F: IStAdFunc
  loc_9F7283: ExitProcHresult
End Function

Public Function global_4306288Get() '41B95C
  global_4306288Get = global_4306288
End Function

Public Sub global_4306288Put(Value) '41B976
  global_4306288 = Value
End Sub

Public Sub global_4306288Set(Value) '41B990
  global_4306288 = Value
End Sub

Public Function global_4306288Get() '41B9AA
  global_4306288Get = global_4306288
End Function

Public Sub global_4306288Put(Value) '41B9C4
  global_4306288 = Value
End Sub

Public Sub global_4306288Set(Value) '41B9DE
  global_4306288 = Value
End Sub

Public Function global_4306288Get() '41B9F8
  global_4306288Get = global_4306288
End Function

Public Sub global_4306288Put(Value) '41BA12
  global_4306288 = Value
End Sub

Public Sub global_4306288Set(Value) '41BA2C
  global_4306288 = Value
End Sub
