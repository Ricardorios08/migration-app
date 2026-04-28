VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clspagoanual"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() '9EF144
  'Data Table: 405438
  loc_9EF11C: FLdRfVar var_88
  loc_9EF11F: FLdPr Me
  loc_9EF122: MemLdPr global_52
  loc_9EF125:  = Me.RecordCount
  loc_9EF12A: ILdRf var_88
  loc_9EF12D: LitI4 0
  loc_9EF132: GtI4
  loc_9EF133: BranchF loc_9EF141
  loc_9EF136: FLdPr Me
  loc_9EF139: MemLdPr global_52
  loc_9EF13C: Me.MoveFirst
  loc_9EF141: ExitProcHresult
End Sub

Public Sub MoveLast() '9EF03C
  'Data Table: 405438
  loc_9EF014: FLdRfVar var_88
  loc_9EF017: FLdPr Me
  loc_9EF01A: MemLdPr global_52
  loc_9EF01D:  = Me.RecordCount
  loc_9EF022: ILdRf var_88
  loc_9EF025: LitI4 0
  loc_9EF02A: GtI4
  loc_9EF02B: BranchF loc_9EF039
  loc_9EF02E: FLdPr Me
  loc_9EF031: MemLdPr global_52
  loc_9EF034: Me.MoveLast
  loc_9EF039: ExitProcHresult
  loc_9EF03A: MemLdRfVar from_stack_1.global_-16384
End Sub

Public Sub MoveNext() 'A6A2D0
  'Data Table: 405438
  loc_A6A258: FLdRfVar var_86
  loc_A6A25B: FLdPr Me
  loc_A6A25E: MemLdPr global_52
  loc_A6A261:  = Me.EOF
  loc_A6A266: FLdI2 var_86
  loc_A6A269: NotI4
  loc_A6A26A: FLdRfVar var_8C
  loc_A6A26D: FLdPr Me
  loc_A6A270: MemLdPr global_52
  loc_A6A273:  = Me.RecordCount
  loc_A6A278: ILdRf var_8C
  loc_A6A27B: LitI4 0
  loc_A6A280: GtI4
  loc_A6A281: AndI4
  loc_A6A282: BranchF loc_A6A290
  loc_A6A285: FLdPr Me
  loc_A6A288: MemLdPr global_52
  loc_A6A28B: Me.MoveNext
  loc_A6A290: FLdRfVar var_86
  loc_A6A293: FLdPr Me
  loc_A6A296: MemLdPr global_52
  loc_A6A299:  = Me.EOF
  loc_A6A29E: FLdI2 var_86
  loc_A6A2A1: FLdRfVar var_8C
  loc_A6A2A4: FLdPr Me
  loc_A6A2A7: MemLdPr global_52
  loc_A6A2AA:  = Me.RecordCount
  loc_A6A2AF: ILdRf var_8C
  loc_A6A2B2: LitI4 0
  loc_A6A2B7: GtI4
  loc_A6A2B8: AndI4
  loc_A6A2B9: BranchF loc_A6A2CC
  loc_A6A2BC: ImpAdCallFPR4 Beep()
  loc_A6A2C1: FLdPr Me
  loc_A6A2C4: MemLdPr global_52
  loc_A6A2C7: Me.MoveLast
  loc_A6A2CC: ExitProcHresult
  loc_A6A2CD: ImpAdLdFPR4 MemVar_408E18
End Sub

Public Sub MoveSiguiente() '9B0C3C
  'Data Table: 405438
  loc_9B0C30: FLdPr Me
  loc_9B0C33: MemLdPr global_52
  loc_9B0C36: Me.MoveNext
  loc_9B0C3B: ExitProcHresult
End Sub

Public Sub Move(iValor) '9BA4C4
  'Data Table: 405438
  loc_9BA4B0: LitVar_Missing var_94
  loc_9BA4B3: PopAdLdVar
  loc_9BA4B4: ILdI2 iValor
  loc_9BA4B7: CI4UI1
  loc_9BA4B8: FLdPr Me
  loc_9BA4BB: MemLdPr global_52
  loc_9BA4BE: Me.Move from_stack_1, from_stack_2
  loc_9BA4C3: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A691C0
  'Data Table: 405438
  loc_A69148: FLdRfVar var_86
  loc_A6914B: FLdPr Me
  loc_A6914E: MemLdPr global_52
  loc_A69151:  = Me.BOF
  loc_A69156: FLdI2 var_86
  loc_A69159: NotI4
  loc_A6915A: FLdRfVar var_8C
  loc_A6915D: FLdPr Me
  loc_A69160: MemLdPr global_52
  loc_A69163:  = Me.RecordCount
  loc_A69168: ILdRf var_8C
  loc_A6916B: LitI4 0
  loc_A69170: GtI4
  loc_A69171: AndI4
  loc_A69172: BranchF loc_A69180
  loc_A69175: FLdPr Me
  loc_A69178: MemLdPr global_52
  loc_A6917B: Me.MovePrevious
  loc_A69180: FLdRfVar var_86
  loc_A69183: FLdPr Me
  loc_A69186: MemLdPr global_52
  loc_A69189:  = Me.BOF
  loc_A6918E: FLdI2 var_86
  loc_A69191: FLdRfVar var_8C
  loc_A69194: FLdPr Me
  loc_A69197: MemLdPr global_52
  loc_A6919A:  = Me.RecordCount
  loc_A6919F: ILdRf var_8C
  loc_A691A2: LitI4 0
  loc_A691A7: GtI4
  loc_A691A8: AndI4
  loc_A691A9: BranchF loc_A691BC
  loc_A691AC: ImpAdCallFPR4 Beep()
  loc_A691B1: FLdPr Me
  loc_A691B4: MemLdPr global_52
  loc_A691B7: Me.MoveFirst
  loc_A691BC: ExitProcHresult
End Sub

Public Property Get EOF() '9D8D3C
  'Data Table: 405438
  loc_9D8D20: FLdRfVar var_88
  loc_9D8D23: FLdPr Me
  loc_9D8D26: MemLdPr global_52
  loc_9D8D29:  = Me.EOF
  loc_9D8D2E: FLdI2 var_88
  loc_9D8D31: FStI2 var_86
  loc_9D8D34: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D8D88
  'Data Table: 405438
  loc_9D8D6C: FLdRfVar var_88
  loc_9D8D6F: FLdPr Me
  loc_9D8D72: MemLdPr global_52
  loc_9D8D75:  = Me.BOF
  loc_9D8D7A: FLdI2 var_88
  loc_9D8D7D: FStI2 var_86
  loc_9D8D80: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B6C78
  'Data Table: 405438
  loc_9B6C68: ILdI4 sOrden
  loc_9B6C6B: FLdPr Me
  loc_9B6C6E: MemLdPr global_52
  loc_9B6C71: Me.Sort = from_stack_1
  loc_9B6C76: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DD680
  'Data Table: 405438
  loc_9DD660: LitVar_Missing var_94
  loc_9DD663: PopAdLdVar
  loc_9DD664: LitI4 1
  loc_9DD669: LitI4 0
  loc_9DD66E: ILdI4 sFind
  loc_9DD671: FLdPr Me
  loc_9DD674: MemLdPr global_52
  loc_9DD677: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DD67C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9B95A0
  'Data Table: 405438
  loc_9B958C: ILdI4 sCriterio
  loc_9B958F: CVarStr var_94
  loc_9B9592: PopAdLdVar
  loc_9B9593: FLdPr Me
  loc_9B9596: MemLdPr global_52
  loc_9B9599: Me.Filter = from_stack_1
  loc_9B959E: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D9294
  'Data Table: 405438
  loc_9D9278: FLdRfVar var_8C
  loc_9D927B: FLdPr Me
  loc_9D927E: MemLdPr global_52
  loc_9D9281:  = Me.AbsolutePosition
  loc_9D9286: ILdRf var_8C
  loc_9D9289: FStR4 var_88
  loc_9D928C: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D9708
  'Data Table: 405438
  loc_9D96EC: FLdRfVar var_8C
  loc_9D96EF: FLdPr Me
  loc_9D96F2: MemLdPr global_52
  loc_9D96F5:  = Me.RecordCount
  loc_9D96FA: ILdRf var_8C
  loc_9D96FD: FStR4 var_88
  loc_9D9700: ExitProcCbHresult
End Sub

Public Sub Requery() '9E8AC0
  'Data Table: 405438
  loc_9E8A9C: LitI4 -1
  loc_9E8AA1: FLdPr Me
  loc_9E8AA4: MemLdPr global_52
  loc_9E8AA7: Me.Requery from_stack_1
  loc_9E8AAC: LitVarStr var_94, "Primary"
  loc_9E8AB1: PopAdLdVar
  loc_9E8AB2: FLdPr Me
  loc_9E8AB5: LateIdCall
  loc_9E8ABD: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5F5A4
  'Data Table: 405438
  loc_A5F540: ILdRf sSelect
  loc_A5F543: FStStrCopy var_88
  loc_A5F546: LitNothing
  loc_A5F548: CastAd
  loc_A5F54B: FStAdFuncNoPop
  loc_A5F54E: FLdPr Me
  loc_A5F551: MemStAd
  loc_A5F555: FFree1Ad var_8C
  loc_A5F558: New Recordset
  loc_A5F55C: FStAdFuncNoPop
  loc_A5F55F: FLdPr Me
  loc_A5F562: MemStAd
  loc_A5F566: FFree1Ad var_8C
  loc_A5F569: LitI4 -1
  loc_A5F56E: LitI4 3
  loc_A5F573: LitI4 3
  loc_A5F578: ImpAdLdI4 MemVar_D9301C
  loc_A5F57B: CVarAd
  loc_A5F57F: PopAdLdVar
  loc_A5F580: ILdRf var_88
  loc_A5F583: CVarStr var_9C
  loc_A5F586: PopAdLdVar
  loc_A5F587: FLdPr Me
  loc_A5F58A: MemLdPr global_52
  loc_A5F58D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5F592: LitVarStr var_9C, "Primary"
  loc_A5F597: PopAdLdVar
  loc_A5F598: FLdPr Me
  loc_A5F59B: LateIdCall
  loc_A5F5A3: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A4AF08
  'Data Table: 405438
  loc_A4AEB4: ILdRf sSelect
  loc_A4AEB7: FStStrCopy var_88
  loc_A4AEBA: LitNothing
  loc_A4AEBC: CastAd
  loc_A4AEBF: FStAdFuncNoPop
  loc_A4AEC2: FLdPr Me
  loc_A4AEC5: MemStAd
  loc_A4AEC9: FFree1Ad var_8C
  loc_A4AECC: New Recordset
  loc_A4AED0: FStAdFuncNoPop
  loc_A4AED3: FLdPr Me
  loc_A4AED6: MemStAd
  loc_A4AEDA: FFree1Ad var_8C
  loc_A4AEDD: LitI4 -1
  loc_A4AEE2: LitI4 3
  loc_A4AEE7: LitI4 3
  loc_A4AEEC: ImpAdLdI4 MemVar_D9301C
  loc_A4AEEF: CVarAd
  loc_A4AEF3: PopAdLdVar
  loc_A4AEF4: ILdRf var_88
  loc_A4AEF7: CVarStr var_9C
  loc_A4AEFA: PopAdLdVar
  loc_A4AEFB: FLdPr Me
  loc_A4AEFE: MemLdPr global_56
  loc_A4AF01: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4AF06: ExitProcHresult
End Sub

Public Property Get DataSource() '9F27C4
  'Data Table: 405438
  loc_9F27A0: ZeroRetVal
  loc_9F27A2: FLdRfVar var_8C
  loc_9F27A5: FLdPr Me
  loc_9F27A8: MemLdPr global_52
  loc_9F27AB:  = Me.DataSource
  loc_9F27B0: ILdRf var_8C
  loc_9F27B3: CastAd
  loc_9F27B6: FStAdFunc var_88
  loc_9F27B9: FFree1Ad var_8C
  loc_9F27BC: ExitProcCbHresult
End Sub

Public Property Get PeriLiqu() 'A34324
  'Data Table: 405438
  loc_A342E0: FLdRfVar var_B0
  loc_A342E3: FLdRfVar var_A0
  loc_A342E6: LitVarStr var_9C, "PeriLiqu"
  loc_A342EB: PopAdLdVar
  loc_A342EC: FLdRfVar var_8C
  loc_A342EF: FLdPr Me
  loc_A342F2: MemLdPr global_52
  loc_A342F5:  = Me.Fields
  loc_A342FA: FLdPr var_8C
  loc_A342FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A34302: FLdPr var_A0
  loc_A34305:  = Me.Value
  loc_A3430A: FLdRfVar var_B0
  loc_A3430D: CI2Var
  loc_A3430E: FStI2 var_86
  loc_A34311: FFreeAd var_8C = ""
  loc_A34318: FFree1Var var_B0 = ""
  loc_A3431B: ExitProcCbHresult
End Sub

Public Property Get BimeLiqu() 'A322A4
  'Data Table: 405438
  loc_A32260: FLdRfVar var_B0
  loc_A32263: FLdRfVar var_A0
  loc_A32266: LitVarStr var_9C, "BimeLiqu"
  loc_A3226B: PopAdLdVar
  loc_A3226C: FLdRfVar var_8C
  loc_A3226F: FLdPr Me
  loc_A32272: MemLdPr global_52
  loc_A32275:  = Me.Fields
  loc_A3227A: FLdPr var_8C
  loc_A3227D: from_stack_2 = Me.Item(from_stack_1)
  loc_A32282: FLdPr var_A0
  loc_A32285:  = Me.Value
  loc_A3228A: FLdRfVar var_B0
  loc_A3228D: CUI1Var
  loc_A3228F: FStUI1 var_86
  loc_A32293: FFreeAd var_8C = ""
  loc_A3229A: FFree1Var var_B0 = ""
  loc_A3229D: ExitProcCbHresult
End Sub

Public Property Get CodiTili() 'A33FA4
  'Data Table: 405438
  loc_A33F60: FLdRfVar var_B0
  loc_A33F63: FLdRfVar var_A0
  loc_A33F66: LitVarStr var_9C, "CodiTili"
  loc_A33F6B: PopAdLdVar
  loc_A33F6C: FLdRfVar var_8C
  loc_A33F6F: FLdPr Me
  loc_A33F72: MemLdPr global_52
  loc_A33F75:  = Me.Fields
  loc_A33F7A: FLdPr var_8C
  loc_A33F7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A33F82: FLdPr var_A0
  loc_A33F85:  = Me.Value
  loc_A33F8A: FLdRfVar var_B0
  loc_A33F8D: CUI1Var
  loc_A33F8F: FStUI1 var_86
  loc_A33F93: FFreeAd var_8C = ""
  loc_A33F9A: FFree1Var var_B0 = ""
  loc_A33F9D: ExitProcCbHresult
End Sub

Public Property Get NumeLiqu() 'A33EA4
  'Data Table: 405438
  loc_A33E60: FLdRfVar var_B0
  loc_A33E63: FLdRfVar var_A0
  loc_A33E66: LitVarStr var_9C, "NumeLiqu"
  loc_A33E6B: PopAdLdVar
  loc_A33E6C: FLdRfVar var_8C
  loc_A33E6F: FLdPr Me
  loc_A33E72: MemLdPr global_52
  loc_A33E75:  = Me.Fields
  loc_A33E7A: FLdPr var_8C
  loc_A33E7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A33E82: FLdPr var_A0
  loc_A33E85:  = Me.Value
  loc_A33E8A: FLdRfVar var_B0
  loc_A33E8D: CI2Var
  loc_A33E8E: FStI2 var_86
  loc_A33E91: FFreeAd var_8C = ""
  loc_A33E98: FFree1Var var_B0 = ""
  loc_A33E9B: ExitProcCbHresult
End Sub

Public Property Get CodiOfic() 'A33E24
  'Data Table: 405438
  loc_A33DE0: FLdRfVar var_B0
  loc_A33DE3: FLdRfVar var_A0
  loc_A33DE6: LitVarStr var_9C, "CodiOfic"
  loc_A33DEB: PopAdLdVar
  loc_A33DEC: FLdRfVar var_8C
  loc_A33DEF: FLdPr Me
  loc_A33DF2: MemLdPr global_52
  loc_A33DF5:  = Me.Fields
  loc_A33DFA: FLdPr var_8C
  loc_A33DFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A33E02: FLdPr var_A0
  loc_A33E05:  = Me.Value
  loc_A33E0A: FLdRfVar var_B0
  loc_A33E0D: CUI1Var
  loc_A33E0F: FStUI1 var_86
  loc_A33E13: FFreeAd var_8C = ""
  loc_A33E1A: FFree1Var var_B0 = ""
  loc_A33E1D: ExitProcCbHresult
End Sub

Public Property Get CuenCtct() 'A35470
  'Data Table: 405438
  loc_A3542C: ZeroRetVal
  loc_A3542E: FLdRfVar var_B0
  loc_A35431: FLdRfVar var_A0
  loc_A35434: LitVarStr var_9C, "CuenCtct"
  loc_A35439: PopAdLdVar
  loc_A3543A: FLdRfVar var_8C
  loc_A3543D: FLdPr Me
  loc_A35440: MemLdPr global_52
  loc_A35443:  = Me.Fields
  loc_A35448: FLdPr var_8C
  loc_A3544B: from_stack_2 = Me.Item(from_stack_1)
  loc_A35450: FLdPr var_A0
  loc_A35453:  = Me.Value
  loc_A35458: FLdRfVar var_B0
  loc_A3545B: CStrVarTmp
  loc_A3545C: FStStr var_88
  loc_A3545F: FFreeAd var_8C = ""
  loc_A35466: FFree1Var var_B0 = ""
  loc_A35469: ExitProcCbHresult
End Sub

Public Property Get PeriBole() 'A33CA4
  'Data Table: 405438
  loc_A33C60: FLdRfVar var_B0
  loc_A33C63: FLdRfVar var_A0
  loc_A33C66: LitVarStr var_9C, "PeriBole"
  loc_A33C6B: PopAdLdVar
  loc_A33C6C: FLdRfVar var_8C
  loc_A33C6F: FLdPr Me
  loc_A33C72: MemLdPr global_52
  loc_A33C75:  = Me.Fields
  loc_A33C7A: FLdPr var_8C
  loc_A33C7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A33C82: FLdPr var_A0
  loc_A33C85:  = Me.Value
  loc_A33C8A: FLdRfVar var_B0
  loc_A33C8D: CI2Var
  loc_A33C8E: FStI2 var_86
  loc_A33C91: FFreeAd var_8C = ""
  loc_A33C98: FFree1Var var_B0 = ""
  loc_A33C9B: ExitProcCbHresult
End Sub

Public Property Get NumeBole() 'A33C24
  'Data Table: 405438
  loc_A33BE0: FLdRfVar var_B0
  loc_A33BE3: FLdRfVar var_A0
  loc_A33BE6: LitVarStr var_9C, "NumeBole"
  loc_A33BEB: PopAdLdVar
  loc_A33BEC: FLdRfVar var_8C
  loc_A33BEF: FLdPr Me
  loc_A33BF2: MemLdPr global_52
  loc_A33BF5:  = Me.Fields
  loc_A33BFA: FLdPr var_8C
  loc_A33BFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A33C02: FLdPr var_A0
  loc_A33C05:  = Me.Value
  loc_A33C0A: FLdRfVar var_B0
  loc_A33C0D: CI4Var
  loc_A33C0F: FStR4 var_88
  loc_A33C12: FFreeAd var_8C = ""
  loc_A33C19: FFree1Var var_B0 = ""
  loc_A33C1C: ExitProcCbHresult
End Sub

Public Property Get FepaPaan() 'A35578
  'Data Table: 405438
  loc_A35534: ZeroRetVal
  loc_A35536: FLdRfVar var_B0
  loc_A35539: FLdRfVar var_A0
  loc_A3553C: LitVarStr var_9C, "FepaPaan"
  loc_A35541: PopAdLdVar
  loc_A35542: FLdRfVar var_8C
  loc_A35545: FLdPr Me
  loc_A35548: MemLdPr global_52
  loc_A3554B:  = Me.Fields
  loc_A35550: FLdPr var_8C
  loc_A35553: from_stack_2 = Me.Item(from_stack_1)
  loc_A35558: FLdPr var_A0
  loc_A3555B:  = Me.Value
  loc_A35560: FLdRfVar var_B0
  loc_A35563: CStrVarTmp
  loc_A35564: FStStr var_88
  loc_A35567: FFreeAd var_8C = ""
  loc_A3556E: FFree1Var var_B0 = ""
  loc_A35571: ExitProcCbHresult
End Sub

Public Property Get ImpoPaan() 'A33AA4
  'Data Table: 405438
  loc_A33A60: FLdRfVar var_B4
  loc_A33A63: FLdRfVar var_A4
  loc_A33A66: LitVarStr var_A0, "ImpoPaan"
  loc_A33A6B: PopAdLdVar
  loc_A33A6C: FLdRfVar var_90
  loc_A33A6F: FLdPr Me
  loc_A33A72: MemLdPr global_52
  loc_A33A75:  = Me.Fields
  loc_A33A7A: FLdPr var_90
  loc_A33A7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A33A82: FLdPr var_A4
  loc_A33A85:  = Me.Value
  loc_A33A8A: FLdRfVar var_B4
  loc_A33A8D: CR4Var
  loc_A33A8E: FStFPR8 var_8C
  loc_A33A91: FFreeAd var_90 = ""
  loc_A33A98: FFree1Var var_B4 = ""
  loc_A33A9B: ExitProcCbHresult
End Sub

Public Function BuscaPagoAnual(CodiOfic, CuenCtct, PeriLiqu) 'A8AD78
  'Data Table: 405438
  loc_A8ACF4: ILdRf CuenCtct
  loc_A8ACF7: FStStrCopy var_8C
  loc_A8ACFA: LitStr "SELECT CodiOfic FROM pagoanual WHERE PeriLiqu =  "
  loc_A8ACFD: FLdI2 PeriLiqu
  loc_A8AD00: CStrUI1
  loc_A8AD02: FStStrNoPop var_90
  loc_A8AD05: ConcatStr
  loc_A8AD06: FStStrNoPop BuscaPagoAnual
  loc_A8AD09: LitStr " AND CodiOfic = "
  loc_A8AD0C: ConcatStr
  loc_A8AD0D: FStStrNoPop var_98
  loc_A8AD10: FLdI2 CodiOfic
  loc_A8AD13: CStrUI1
  loc_A8AD15: FStStrNoPop var_9C
  loc_A8AD18: ConcatStr
  loc_A8AD19: FStStrNoPop var_A0
  loc_A8AD1C: LitStr " AND CuenCtct = '"
  loc_A8AD1F: ConcatStr
  loc_A8AD20: FStStrNoPop var_A4
  loc_A8AD23: ILdRf var_8C
  loc_A8AD26: ConcatStr
  loc_A8AD27: FStStrNoPop var_A8
  loc_A8AD2A: LitStr "' AND FepaPaan IS NOT NULL"
  loc_A8AD2D: ConcatStr
  loc_A8AD2E: FStStrNoPop var_AC
  loc_A8AD31: Call EjecutarRsCls(from_stack_1v)
  loc_A8AD36: FFreeStr var_90 = "": BuscaPagoAnual = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A8AD49: FLdRfVar var_B0
  loc_A8AD4C: FLdPr Me
  loc_A8AD4F: MemLdPr global_56
  loc_A8AD52:  = Me.RecordCount
  loc_A8AD57: ILdRf var_B0
  loc_A8AD5A: LitI4 0
  loc_A8AD5F: GtI4
  loc_A8AD60: BranchF loc_A8AD6B
  loc_A8AD63: LitI2_Byte &HFF
  loc_A8AD65: FStI2 var_86
  loc_A8AD68: Branch loc_A8AD70
  loc_A8AD6B: LitI2_Byte 0
  loc_A8AD6D: FStI2 var_86
  loc_A8AD70: ExitProcCbHresult
End Function

Private Function Proc_74_28_9F06B4() '9F06B4
  'Data Table: 405438
  loc_9F0690: LitStr "Primary"
  loc_9F0693: FLdPr Me
  loc_9F0696: LateIdLdVar var_94 DispID_4 0
  loc_9F069D: CastAdVar Me
  loc_9F06A1: FStAdFunc var_98
  loc_9F06A4: FLdPr var_98
  loc_9F06AC: FFree1Ad var_98
  loc_9F06AF: FFree1Var var_94 = ""
  loc_9F06B2: ExitProcHresult
End Function

Private Function Proc_74_29_9E000C(arg_C) '9E000C
  'Data Table: 405438
  loc_9DFFF0: ILdI4 arg_C
  loc_9DFFF3: FStStrCopy var_88
  loc_9DFFF6: ILdRf var_88
  loc_9DFFF9: LitStr "Primary"
  loc_9DFFFC: EqStr
  loc_9DFFFE: BranchF loc_9E000B
  loc_9E0001: FLdPr Me
  loc_9E0004: MemLdStr global_52
  loc_9E0007: IStAd
  loc_9E000B: ExitProcHresult
End Function
