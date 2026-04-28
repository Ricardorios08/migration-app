VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsposifisc"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() '9EB93C
  'Data Table: 40432C
  loc_9EB914: FLdRfVar var_88
  loc_9EB917: FLdPr Me
  loc_9EB91A: MemLdPr global_52
  loc_9EB91D:  = Me.RecordCount
  loc_9EB922: ILdRf var_88
  loc_9EB925: LitI4 0
  loc_9EB92A: GtI4
  loc_9EB92B: BranchF loc_9EB939
  loc_9EB92E: FLdPr Me
  loc_9EB931: MemLdPr global_52
  loc_9EB934: Me.MoveFirst
  loc_9EB939: ExitProcHresult
End Sub

Public Sub MoveLast() '9EBCAC
  'Data Table: 40432C
  loc_9EBC84: FLdRfVar var_88
  loc_9EBC87: FLdPr Me
  loc_9EBC8A: MemLdPr global_52
  loc_9EBC8D:  = Me.RecordCount
  loc_9EBC92: ILdRf var_88
  loc_9EBC95: LitI4 0
  loc_9EBC9A: GtI4
  loc_9EBC9B: BranchF loc_9EBCA9
  loc_9EBC9E: FLdPr Me
  loc_9EBCA1: MemLdPr global_52
  loc_9EBCA4: Me.MoveLast
  loc_9EBCA9: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6D558
  'Data Table: 40432C
  loc_A6D4E0: FLdRfVar var_86
  loc_A6D4E3: FLdPr Me
  loc_A6D4E6: MemLdPr global_52
  loc_A6D4E9:  = Me.EOF
  loc_A6D4EE: FLdI2 var_86
  loc_A6D4F1: NotI4
  loc_A6D4F2: FLdRfVar var_8C
  loc_A6D4F5: FLdPr Me
  loc_A6D4F8: MemLdPr global_52
  loc_A6D4FB:  = Me.RecordCount
  loc_A6D500: ILdRf var_8C
  loc_A6D503: LitI4 0
  loc_A6D508: GtI4
  loc_A6D509: AndI4
  loc_A6D50A: BranchF loc_A6D518
  loc_A6D50D: FLdPr Me
  loc_A6D510: MemLdPr global_52
  loc_A6D513: Me.MoveNext
  loc_A6D518: FLdRfVar var_86
  loc_A6D51B: FLdPr Me
  loc_A6D51E: MemLdPr global_52
  loc_A6D521:  = Me.EOF
  loc_A6D526: FLdI2 var_86
  loc_A6D529: FLdRfVar var_8C
  loc_A6D52C: FLdPr Me
  loc_A6D52F: MemLdPr global_52
  loc_A6D532:  = Me.RecordCount
  loc_A6D537: ILdRf var_8C
  loc_A6D53A: LitI4 0
  loc_A6D53F: GtI4
  loc_A6D540: AndI4
  loc_A6D541: BranchF loc_A6D554
  loc_A6D544: ImpAdCallFPR4 Beep()
  loc_A6D549: FLdPr Me
  loc_A6D54C: MemLdPr global_52
  loc_A6D54F: Me.MoveLast
  loc_A6D554: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B18E4
  'Data Table: 40432C
  loc_9B18D8: FLdPr Me
  loc_9B18DB: MemLdPr global_52
  loc_9B18DE: Me.MoveNext
  loc_9B18E3: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B8D64
  'Data Table: 40432C
  loc_9B8D50: LitVar_Missing var_94
  loc_9B8D53: PopAdLdVar
  loc_9B8D54: ILdI2 iValor
  loc_9B8D57: CI4UI1
  loc_9B8D58: FLdPr Me
  loc_9B8D5B: MemLdPr global_52
  loc_9B8D5E: Me.Move from_stack_1, from_stack_2
  loc_9B8D63: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6BA70
  'Data Table: 40432C
  loc_A6B9F8: FLdRfVar var_86
  loc_A6B9FB: FLdPr Me
  loc_A6B9FE: MemLdPr global_52
  loc_A6BA01:  = Me.BOF
  loc_A6BA06: FLdI2 var_86
  loc_A6BA09: NotI4
  loc_A6BA0A: FLdRfVar var_8C
  loc_A6BA0D: FLdPr Me
  loc_A6BA10: MemLdPr global_52
  loc_A6BA13:  = Me.RecordCount
  loc_A6BA18: ILdRf var_8C
  loc_A6BA1B: LitI4 0
  loc_A6BA20: GtI4
  loc_A6BA21: AndI4
  loc_A6BA22: BranchF loc_A6BA30
  loc_A6BA25: FLdPr Me
  loc_A6BA28: MemLdPr global_52
  loc_A6BA2B: Me.MovePrevious
  loc_A6BA30: FLdRfVar var_86
  loc_A6BA33: FLdPr Me
  loc_A6BA36: MemLdPr global_52
  loc_A6BA39:  = Me.BOF
  loc_A6BA3E: FLdI2 var_86
  loc_A6BA41: FLdRfVar var_8C
  loc_A6BA44: FLdPr Me
  loc_A6BA47: MemLdPr global_52
  loc_A6BA4A:  = Me.RecordCount
  loc_A6BA4F: ILdRf var_8C
  loc_A6BA52: LitI4 0
  loc_A6BA57: GtI4
  loc_A6BA58: AndI4
  loc_A6BA59: BranchF loc_A6BA6C
  loc_A6BA5C: ImpAdCallFPR4 Beep()
  loc_A6BA61: FLdPr Me
  loc_A6BA64: MemLdPr global_52
  loc_A6BA67: Me.MoveFirst
  loc_A6BA6C: ExitProcHresult
End Sub

Public Property Get EOF() '9D3A1C
  'Data Table: 40432C
  loc_9D3A00: FLdRfVar var_88
  loc_9D3A03: FLdPr Me
  loc_9D3A06: MemLdPr global_52
  loc_9D3A09:  = Me.EOF
  loc_9D3A0E: FLdI2 var_88
  loc_9D3A11: FStI2 var_86
  loc_9D3A14: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D40F0
  'Data Table: 40432C
  loc_9D40D4: FLdRfVar var_88
  loc_9D40D7: FLdPr Me
  loc_9D40DA: MemLdPr global_52
  loc_9D40DD:  = Me.BOF
  loc_9D40E2: FLdI2 var_88
  loc_9D40E5: FStI2 var_86
  loc_9D40E8: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B28F8
  'Data Table: 40432C
  loc_9B28E8: ILdI4 sOrden
  loc_9B28EB: FLdPr Me
  loc_9B28EE: MemLdPr global_52
  loc_9B28F1: Me.Sort = from_stack_1
  loc_9B28F6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E3170
  'Data Table: 40432C
  loc_9E3150: LitVar_Missing var_94
  loc_9E3153: PopAdLdVar
  loc_9E3154: LitI4 1
  loc_9E3159: LitI4 0
  loc_9E315E: ILdI4 sFind
  loc_9E3161: FLdPr Me
  loc_9E3164: MemLdPr global_52
  loc_9E3167: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E316C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9B9C00
  'Data Table: 40432C
  loc_9B9BEC: ILdI4 sCriterio
  loc_9B9BEF: CVarStr var_94
  loc_9B9BF2: PopAdLdVar
  loc_9B9BF3: FLdPr Me
  loc_9B9BF6: MemLdPr global_52
  loc_9B9BF9: Me.Filter = from_stack_1
  loc_9B9BFE: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D3FC0
  'Data Table: 40432C
  loc_9D3FA4: FLdRfVar var_8C
  loc_9D3FA7: FLdPr Me
  loc_9D3FAA: MemLdPr global_52
  loc_9D3FAD:  = Me.AbsolutePosition
  loc_9D3FB2: ILdRf var_8C
  loc_9D3FB5: FStR4 var_88
  loc_9D3FB8: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D41D4
  'Data Table: 40432C
  loc_9D41B8: FLdRfVar var_8C
  loc_9D41BB: FLdPr Me
  loc_9D41BE: MemLdPr global_52
  loc_9D41C1:  = Me.RecordCount
  loc_9D41C6: ILdRf var_8C
  loc_9D41C9: FStR4 var_88
  loc_9D41CC: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiPofi, DetaPofi) 'A7FC98
  'Data Table: 40432C
  loc_A7FC1C: ILdRf DetaPofi
  loc_A7FC1F: FStStrCopy var_88
  loc_A7FC22: FLdRfVar var_8C
  loc_A7FC25: FLdUI1
  loc_A7FC29: CI2UI1
  loc_A7FC2B: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A7FC30: ILdRf var_8C
  loc_A7FC33: LitStr vbNullString
  loc_A7FC36: NeStr
  loc_A7FC38: FFree1Str var_8C
  loc_A7FC3B: BranchF loc_A7FC49
  loc_A7FC3E: LitStr "El TIPO de POSICION FISCAL YA EXISTE. Reintente..."
  loc_A7FC41: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7FC46: Branch loc_A7FC96
  loc_A7FC49: LitStr "INSERT INTO posifisc (CodiPofi, DetaPofi) VALUES ("
  loc_A7FC4C: FLdUI1
  loc_A7FC50: CStrI2
  loc_A7FC52: FStStrNoPop var_8C
  loc_A7FC55: ConcatStr
  loc_A7FC56: FStStrNoPop var_90
  loc_A7FC59: LitStr ",'"
  loc_A7FC5C: ConcatStr
  loc_A7FC5D: FStStrNoPop var_94
  loc_A7FC60: ILdRf var_88
  loc_A7FC63: ConcatStr
  loc_A7FC64: FStStrNoPop var_98
  loc_A7FC67: LitStr "');"
  loc_A7FC6A: ConcatStr
  loc_A7FC6B: FStStrNoPop var_9C
  loc_A7FC6E: Call EjecutarRs2(from_stack_1v)
  loc_A7FC73: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A7FC80: Call Requery()
  loc_A7FC85: FLdUI1
  loc_A7FC89: CStrI2
  loc_A7FC8B: FStStrNoPop var_8C
  loc_A7FC8E: Call Encontrar(from_stack_1v)
  loc_A7FC93: FFree1Str var_8C
  loc_A7FC96: ExitProcHresult
End Sub

Public Sub Modificar(CodiPofi, DetaPofi) 'A797AC
  'Data Table: 40432C
  loc_A79738: ILdRf DetaPofi
  loc_A7973B: FStStrCopy var_88
  loc_A7973E: FLdRfVar var_8C
  loc_A79741: FLdUI1
  loc_A79745: CI2UI1
  loc_A79747: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A7974C: ILdRf var_8C
  loc_A7974F: LitStr vbNullString
  loc_A79752: EqStr
  loc_A79754: FFree1Str var_8C
  loc_A79757: BranchF loc_A79765
  loc_A7975A: LitStr "El TIPO de POSICION FISCAL NO EXISTE. Reintente..."
  loc_A7975D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A79762: Branch loc_A79793
  loc_A79765: LitStr " UPDATE posifisc SET DetaPofi='"
  loc_A79768: ILdRf var_88
  loc_A7976B: ConcatStr
  loc_A7976C: FStStrNoPop var_8C
  loc_A7976F: LitStr "' WHERE CodiPofi="
  loc_A79772: ConcatStr
  loc_A79773: FStStrNoPop var_90
  loc_A79776: FLdUI1
  loc_A7977A: CStrI2
  loc_A7977C: FStStrNoPop var_94
  loc_A7977F: ConcatStr
  loc_A79780: FStStrNoPop var_98
  loc_A79783: Call EjecutarRs2(from_stack_1v)
  loc_A79788: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_A79793: Call Requery()
  loc_A79798: FLdUI1
  loc_A7979C: CStrI2
  loc_A7979E: FStStrNoPop var_8C
  loc_A797A1: Call Encontrar(from_stack_1v)
  loc_A797A6: FFree1Str var_8C
  loc_A797A9: ExitProcHresult
  loc_A797AA: MidStr var_4C00
End Sub

Public Sub Requery() '9E9B28
  'Data Table: 40432C
  loc_9E9B04: LitI4 -1
  loc_9E9B09: FLdPr Me
  loc_9E9B0C: MemLdPr global_52
  loc_9E9B0F: Me.Requery from_stack_1
  loc_9E9B14: LitVarStr var_94, "Primary"
  loc_9E9B19: PopAdLdVar
  loc_9E9B1A: FLdPr Me
  loc_9E9B1D: LateIdCall
  loc_9E9B25: ExitProcHresult
  loc_9E9B26: CI4Str
End Sub

Public Sub Encontrar(CodiPofi) 'A075D8
  'Data Table: 40432C
  loc_A075AC: ILdRf CodiPofi
  loc_A075AF: FStStrCopy var_88
  loc_A075B2: Call Requery()
  loc_A075B7: LitStr "CodiPofi = '"
  loc_A075BA: ILdRf var_88
  loc_A075BD: ConcatStr
  loc_A075BE: FStStrNoPop var_8C
  loc_A075C1: LitStr "'"
  loc_A075C4: ConcatStr
  loc_A075C5: PopTmpLdAdStr
  loc_A075C9: Call Find(from_stack_1v)
  loc_A075CE: FFreeStr var_8C = ""
  loc_A075D5: ExitProcHresult
  loc_A075D6: CI2Var
End Sub

Public Sub RedefineRS(sSelect) 'A60924
  'Data Table: 40432C
  loc_A608C0: ILdRf sSelect
  loc_A608C3: FStStrCopy var_88
  loc_A608C6: LitNothing
  loc_A608C8: CastAd
  loc_A608CB: FStAdFuncNoPop
  loc_A608CE: FLdPr Me
  loc_A608D1: MemStAd
  loc_A608D5: FFree1Ad var_8C
  loc_A608D8: New Recordset
  loc_A608DC: FStAdFuncNoPop
  loc_A608DF: FLdPr Me
  loc_A608E2: MemStAd
  loc_A608E6: FFree1Ad var_8C
  loc_A608E9: LitI4 -1
  loc_A608EE: LitI4 3
  loc_A608F3: LitI4 3
  loc_A608F8: ImpAdLdI4 MemVar_D9301C
  loc_A608FB: CVarAd
  loc_A608FF: PopAdLdVar
  loc_A60900: ILdRf var_88
  loc_A60903: CVarStr var_9C
  loc_A60906: PopAdLdVar
  loc_A60907: FLdPr Me
  loc_A6090A: MemLdPr global_52
  loc_A6090D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A60912: LitVarStr var_9C, "Primary"
  loc_A60917: PopAdLdVar
  loc_A60918: FLdPr Me
  loc_A6091B: LateIdCall
  loc_A60923: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A47510
  'Data Table: 40432C
  loc_A474BC: ILdRf sSelect
  loc_A474BF: FStStrCopy var_88
  loc_A474C2: LitNothing
  loc_A474C4: CastAd
  loc_A474C7: FStAdFuncNoPop
  loc_A474CA: FLdPr Me
  loc_A474CD: MemStAd
  loc_A474D1: FFree1Ad var_8C
  loc_A474D4: New Recordset
  loc_A474D8: FStAdFuncNoPop
  loc_A474DB: FLdPr Me
  loc_A474DE: MemStAd
  loc_A474E2: FFree1Ad var_8C
  loc_A474E5: LitI4 -1
  loc_A474EA: LitI4 3
  loc_A474EF: LitI4 3
  loc_A474F4: ImpAdLdI4 MemVar_D9301C
  loc_A474F7: CVarAd
  loc_A474FB: PopAdLdVar
  loc_A474FC: ILdRf var_88
  loc_A474FF: CVarStr var_9C
  loc_A47502: PopAdLdVar
  loc_A47503: FLdPr Me
  loc_A47506: MemLdPr global_56
  loc_A47509: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4750E: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A476B4
  'Data Table: 40432C
  loc_A47660: ILdRf sSelect
  loc_A47663: FStStrCopy var_88
  loc_A47666: LitNothing
  loc_A47668: CastAd
  loc_A4766B: FStAdFuncNoPop
  loc_A4766E: FLdPr Me
  loc_A47671: MemStAd
  loc_A47675: FFree1Ad var_8C
  loc_A47678: New Recordset
  loc_A4767C: FStAdFuncNoPop
  loc_A4767F: FLdPr Me
  loc_A47682: MemStAd
  loc_A47686: FFree1Ad var_8C
  loc_A47689: LitI4 -1
  loc_A4768E: LitI4 3
  loc_A47693: LitI4 3
  loc_A47698: ImpAdLdI4 MemVar_D9301C
  loc_A4769B: CVarAd
  loc_A4769F: PopAdLdVar
  loc_A476A0: ILdRf var_88
  loc_A476A3: CVarStr var_9C
  loc_A476A6: PopAdLdVar
  loc_A476A7: FLdPr Me
  loc_A476AA: MemLdPr global_60
  loc_A476AD: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A476B2: ExitProcHresult
End Sub

Public Property Get DataSource() '9FBC8C
  'Data Table: 40432C
  loc_9FBC68: ZeroRetVal
  loc_9FBC6A: FLdRfVar var_8C
  loc_9FBC6D: FLdPr Me
  loc_9FBC70: MemLdPr global_52
  loc_9FBC73:  = Me.DataSource
  loc_9FBC78: ILdRf var_8C
  loc_9FBC7B: CastAd
  loc_9FBC7E: FStAdFunc var_88
  loc_9FBC81: FFree1Ad var_8C
  loc_9FBC84: ExitProcCbHresult
  loc_9FBC8A: FLdR8 var_4C00
End Sub

Public Property Get CodiPofi() 'A2DB24
  'Data Table: 40432C
  loc_A2DAE0: FLdRfVar var_B0
  loc_A2DAE3: FLdRfVar var_A0
  loc_A2DAE6: LitVarStr var_9C, "CodiPofi"
  loc_A2DAEB: PopAdLdVar
  loc_A2DAEC: FLdRfVar var_8C
  loc_A2DAEF: FLdPr Me
  loc_A2DAF2: MemLdPr global_52
  loc_A2DAF5:  = Me.Fields
  loc_A2DAFA: FLdPr var_8C
  loc_A2DAFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2DB02: FLdPr var_A0
  loc_A2DB05:  = Me.Value
  loc_A2DB0A: FLdRfVar var_B0
  loc_A2DB0D: CUI1Var
  loc_A2DB0F: FStUI1 var_86
  loc_A2DB13: FFreeAd var_8C = ""
  loc_A2DB1A: FFree1Var var_B0 = ""
  loc_A2DB1D: ExitProcCbHresult
End Sub

Public Property Get DetaPofi() 'A36F40
  'Data Table: 40432C
  loc_A36EFC: ZeroRetVal
  loc_A36EFE: FLdRfVar var_B0
  loc_A36F01: FLdRfVar var_A0
  loc_A36F04: LitVarStr var_9C, "DetaPofi"
  loc_A36F09: PopAdLdVar
  loc_A36F0A: FLdRfVar var_8C
  loc_A36F0D: FLdPr Me
  loc_A36F10: MemLdPr global_52
  loc_A36F13:  = Me.Fields
  loc_A36F18: FLdPr var_8C
  loc_A36F1B: from_stack_2 = Me.Item(from_stack_1)
  loc_A36F20: FLdPr var_A0
  loc_A36F23:  = Me.Value
  loc_A36F28: FLdRfVar var_B0
  loc_A36F2B: CStrVarTmp
  loc_A36F2C: FStStr var_88
  loc_A36F2F: FFreeAd var_8C = ""
  loc_A36F36: FFree1Var var_B0 = ""
  loc_A36F39: ExitProcCbHresult
End Sub

Public Function ValidaClave(CodiPofi) 'A2DFA4
  'Data Table: 40432C
  loc_A2DF60: ZeroRetVal
  loc_A2DF62: LitStr "SELECT CodiPofi FROM infogov.posifisc WHERE CodiPofi = "
  loc_A2DF65: FLdI2 CodiPofi
  loc_A2DF68: CStrUI1
  loc_A2DF6A: FStStrNoPop var_8C
  loc_A2DF6D: ConcatStr
  loc_A2DF6E: FStStrNoPop var_90
  loc_A2DF71: Call EjecutarRs2(from_stack_1v)
  loc_A2DF76: FFreeStr var_8C = ""
  loc_A2DF7D: FLdRfVar ValidaClave
  loc_A2DF80: FLdPr Me
  loc_A2DF83: MemLdPr global_60
  loc_A2DF86:  = Me.RecordCount
  loc_A2DF8B: ILdRf ValidaClave
  loc_A2DF8E: LitI4 0
  loc_A2DF93: GtI4
  loc_A2DF94: BranchF loc_A2DF9D
  loc_A2DF97: LitStr "El TIPO de POSICION FISCAL YA EXISTE. Reintente..."
  loc_A2DF9A: FStStrCopy var_88
  loc_A2DF9D: ExitProcCbHresult
End Function

Private Function Proc_34_24_9FBCE8() '9FBCE8
  'Data Table: 40432C
  loc_9FBCC4: LitStr "Primary"
  loc_9FBCC7: FLdPr Me
  loc_9FBCCA: LateIdLdVar var_94 DispID_4 0
  loc_9FBCD1: CastAdVar Me
  loc_9FBCD5: FStAdFunc var_98
  loc_9FBCD8: FLdPr var_98
  loc_9FBCE0: FFree1Ad var_98
  loc_9FBCE3: FFree1Var var_94 = ""
  loc_9FBCE6: ExitProcHresult
End Function

Private Function Proc_34_25_9E2C1C(arg_C) '9E2C1C
  'Data Table: 40432C
  loc_9E2C00: ILdI4 arg_C
  loc_9E2C03: FStStrCopy var_88
  loc_9E2C06: ILdRf var_88
  loc_9E2C09: LitStr "Primary"
  loc_9E2C0C: EqStr
  loc_9E2C0E: BranchF loc_9E2C1B
  loc_9E2C11: FLdPr Me
  loc_9E2C14: MemLdStr global_52
  loc_9E2C17: IStAd
  loc_9E2C1B: ExitProcHresult
End Function
