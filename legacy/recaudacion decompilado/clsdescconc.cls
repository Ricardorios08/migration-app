VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsdescconc"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '404D1C
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '404D2B
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '404D3A
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9ED674
  'Data Table: 404B70
  loc_9ED64C: FLdRfVar var_88
  loc_9ED64F: FLdPr Me
  loc_9ED652: MemLdPr RsFrm
  loc_9ED655:  = Me.RecordCount
  loc_9ED65A: ILdRf var_88
  loc_9ED65D: LitI4 0
  loc_9ED662: GtI4
  loc_9ED663: BranchF loc_9ED671
  loc_9ED666: FLdPr Me
  loc_9ED669: MemLdPr RsFrm
  loc_9ED66C: Me.MoveFirst
  loc_9ED671: ExitProcHresult
End Sub

Public Sub MoveLast() '9ED724
  'Data Table: 404B70
  loc_9ED6FC: FLdRfVar var_88
  loc_9ED6FF: FLdPr Me
  loc_9ED702: MemLdPr RsFrm
  loc_9ED705:  = Me.RecordCount
  loc_9ED70A: ILdRf var_88
  loc_9ED70D: LitI4 0
  loc_9ED712: GtI4
  loc_9ED713: BranchF loc_9ED721
  loc_9ED716: FLdPr Me
  loc_9ED719: MemLdPr RsFrm
  loc_9ED71C: Me.MoveLast
  loc_9ED721: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6C8E0
  'Data Table: 404B70
  loc_A6C868: FLdRfVar var_86
  loc_A6C86B: FLdPr Me
  loc_A6C86E: MemLdPr RsFrm
  loc_A6C871:  = Me.EOF
  loc_A6C876: FLdI2 var_86
  loc_A6C879: NotI4
  loc_A6C87A: FLdRfVar var_8C
  loc_A6C87D: FLdPr Me
  loc_A6C880: MemLdPr RsFrm
  loc_A6C883:  = Me.RecordCount
  loc_A6C888: ILdRf var_8C
  loc_A6C88B: LitI4 0
  loc_A6C890: GtI4
  loc_A6C891: AndI4
  loc_A6C892: BranchF loc_A6C8A0
  loc_A6C895: FLdPr Me
  loc_A6C898: MemLdPr RsFrm
  loc_A6C89B: Me.MoveNext
  loc_A6C8A0: FLdRfVar var_86
  loc_A6C8A3: FLdPr Me
  loc_A6C8A6: MemLdPr RsFrm
  loc_A6C8A9:  = Me.EOF
  loc_A6C8AE: FLdI2 var_86
  loc_A6C8B1: FLdRfVar var_8C
  loc_A6C8B4: FLdPr Me
  loc_A6C8B7: MemLdPr RsFrm
  loc_A6C8BA:  = Me.RecordCount
  loc_A6C8BF: ILdRf var_8C
  loc_A6C8C2: LitI4 0
  loc_A6C8C7: GtI4
  loc_A6C8C8: AndI4
  loc_A6C8C9: BranchF loc_A6C8DC
  loc_A6C8CC: ImpAdCallFPR4 Beep()
  loc_A6C8D1: FLdPr Me
  loc_A6C8D4: MemLdPr RsFrm
  loc_A6C8D7: Me.MoveLast
  loc_A6C8DC: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B19D4
  'Data Table: 404B70
  loc_9B19C8: FLdPr Me
  loc_9B19CB: MemLdPr RsFrm
  loc_9B19CE: Me.MoveNext
  loc_9B19D3: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B9C44
  'Data Table: 404B70
  loc_9B9C30: LitVar_Missing var_94
  loc_9B9C33: PopAdLdVar
  loc_9B9C34: ILdI2 iValor
  loc_9B9C37: CI4UI1
  loc_9B9C38: FLdPr Me
  loc_9B9C3B: MemLdPr RsFrm
  loc_9B9C3E: Me.Move from_stack_1, from_stack_2
  loc_9B9C43: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6DC90
  'Data Table: 404B70
  loc_A6DC18: FLdRfVar var_86
  loc_A6DC1B: FLdPr Me
  loc_A6DC1E: MemLdPr RsFrm
  loc_A6DC21:  = Me.BOF
  loc_A6DC26: FLdI2 var_86
  loc_A6DC29: NotI4
  loc_A6DC2A: FLdRfVar var_8C
  loc_A6DC2D: FLdPr Me
  loc_A6DC30: MemLdPr RsFrm
  loc_A6DC33:  = Me.RecordCount
  loc_A6DC38: ILdRf var_8C
  loc_A6DC3B: LitI4 0
  loc_A6DC40: GtI4
  loc_A6DC41: AndI4
  loc_A6DC42: BranchF loc_A6DC50
  loc_A6DC45: FLdPr Me
  loc_A6DC48: MemLdPr RsFrm
  loc_A6DC4B: Me.MovePrevious
  loc_A6DC50: FLdRfVar var_86
  loc_A6DC53: FLdPr Me
  loc_A6DC56: MemLdPr RsFrm
  loc_A6DC59:  = Me.BOF
  loc_A6DC5E: FLdI2 var_86
  loc_A6DC61: FLdRfVar var_8C
  loc_A6DC64: FLdPr Me
  loc_A6DC67: MemLdPr RsFrm
  loc_A6DC6A:  = Me.RecordCount
  loc_A6DC6F: ILdRf var_8C
  loc_A6DC72: LitI4 0
  loc_A6DC77: GtI4
  loc_A6DC78: AndI4
  loc_A6DC79: BranchF loc_A6DC8C
  loc_A6DC7C: ImpAdCallFPR4 Beep()
  loc_A6DC81: FLdPr Me
  loc_A6DC84: MemLdPr RsFrm
  loc_A6DC87: Me.MoveFirst
  loc_A6DC8C: ExitProcHresult
End Sub

Public Property Get EOF() '9D1338
  'Data Table: 404B70
  loc_9D131C: FLdRfVar var_88
  loc_9D131F: FLdPr Me
  loc_9D1322: MemLdPr RsFrm
  loc_9D1325:  = Me.EOF
  loc_9D132A: FLdI2 var_88
  loc_9D132D: FStI2 var_86
  loc_9D1330: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D12EC
  'Data Table: 404B70
  loc_9D12D0: FLdRfVar var_88
  loc_9D12D3: FLdPr Me
  loc_9D12D6: MemLdPr RsFrm
  loc_9D12D9:  = Me.BOF
  loc_9D12DE: FLdI2 var_88
  loc_9D12E1: FStI2 var_86
  loc_9D12E4: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B2AB8
  'Data Table: 404B70
  loc_9B2AA8: ILdI4 sOrden
  loc_9B2AAB: FLdPr Me
  loc_9B2AAE: MemLdPr RsFrm
  loc_9B2AB1: Me.Sort = from_stack_1
  loc_9B2AB6: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9B8DEC
  'Data Table: 404B70
  loc_9B8DD8: ILdI4 sCriterio
  loc_9B8DDB: CVarStr var_94
  loc_9B8DDE: PopAdLdVar
  loc_9B8DDF: FLdPr Me
  loc_9B8DE2: MemLdPr RsFrm
  loc_9B8DE5: Me.Filter = from_stack_1
  loc_9B8DEA: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E26D0
  'Data Table: 404B70
  loc_9E26B0: LitVar_Missing var_94
  loc_9E26B3: PopAdLdVar
  loc_9E26B4: LitI4 1
  loc_9E26B9: LitI4 0
  loc_9E26BE: ILdI4 sFind
  loc_9E26C1: FLdPr Me
  loc_9E26C4: MemLdPr RsFrm
  loc_9E26C7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E26CC: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D11BC
  'Data Table: 404B70
  loc_9D11A0: FLdRfVar var_8C
  loc_9D11A3: FLdPr Me
  loc_9D11A6: MemLdPr RsFrm
  loc_9D11A9:  = Me.AbsolutePosition
  loc_9D11AE: ILdRf var_8C
  loc_9D11B1: FStR4 var_88
  loc_9D11B4: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D1170
  'Data Table: 404B70
  loc_9D1154: FLdRfVar var_8C
  loc_9D1157: FLdPr Me
  loc_9D115A: MemLdPr RsFrm
  loc_9D115D:  = Me.RecordCount
  loc_9D1162: ILdRf var_8C
  loc_9D1165: FStR4 var_88
  loc_9D1168: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriInfo, CodiConc, DereDeco, DecaDeco) 'AC7D38
  'Data Table: 404B70
  loc_AC7C50: ILdRf CodiConc
  loc_AC7C53: FStStrCopy var_88
  loc_AC7C56: FLdRfVar var_8C
  loc_AC7C59: ILdRf var_88
  loc_AC7C5C: FLdI2 PeriInfo
  loc_AC7C5F: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_AC7C64: ILdRf var_8C
  loc_AC7C67: LitStr vbNullString
  loc_AC7C6A: NeStr
  loc_AC7C6C: FFree1Str var_8C
  loc_AC7C6F: BranchF loc_AC7C7D
  loc_AC7C72: LitStr "El DESCUENTO DEL CONCEPTO YA EXISTE. Reintente..."
  loc_AC7C75: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC7C7A: Branch loc_AC7D34
  loc_AC7C7D: LitStr "INSERT INTO descconc (PeriInfo, CodiConc, DereDeco, DecaDeco) VALUES ( "
  loc_AC7C80: FLdI2 PeriInfo
  loc_AC7C83: CStrUI1
  loc_AC7C85: FStStrNoPop var_8C
  loc_AC7C88: ConcatStr
  loc_AC7C89: FStStrNoPop var_90
  loc_AC7C8C: LitStr ",'"
  loc_AC7C8F: ConcatStr
  loc_AC7C90: FStStrNoPop var_94
  loc_AC7C93: ILdRf var_88
  loc_AC7C96: ConcatStr
  loc_AC7C97: FStStrNoPop var_98
  loc_AC7C9A: LitStr "',"
  loc_AC7C9D: ConcatStr
  loc_AC7C9E: FStStrNoPop var_A0
  loc_AC7CA1: LitI4 0
  loc_AC7CA6: LitI4 -1
  loc_AC7CAB: LitI4 1
  loc_AC7CB0: LitStr "."
  loc_AC7CB3: LitStr ","
  loc_AC7CB6: FLdFPR8 DereDeco
  loc_AC7CB9: CStrR8
  loc_AC7CBB: FStStrNoPop var_9C
  loc_AC7CBE: ImpAdCallI2 Replace(, , , , , )
  loc_AC7CC3: FStStrNoPop var_A4
  loc_AC7CC6: ConcatStr
  loc_AC7CC7: FStStrNoPop var_A8
  loc_AC7CCA: LitStr ","
  loc_AC7CCD: ConcatStr
  loc_AC7CCE: FStStrNoPop var_B0
  loc_AC7CD1: LitI4 0
  loc_AC7CD6: LitI4 -1
  loc_AC7CDB: LitI4 1
  loc_AC7CE0: LitStr "."
  loc_AC7CE3: LitStr ","
  loc_AC7CE6: FLdFPR8 arg_1C
  loc_AC7CE9: CStrR8
  loc_AC7CEB: FStStrNoPop var_AC
  loc_AC7CEE: ImpAdCallI2 Replace(, , , , , )
  loc_AC7CF3: FStStrNoPop var_B4
  loc_AC7CF6: ConcatStr
  loc_AC7CF7: FStStrNoPop var_B8
  loc_AC7CFA: LitStr ");"
  loc_AC7CFD: ConcatStr
  loc_AC7CFE: FStStrNoPop var_BC
  loc_AC7D01: Call EjecutarRsCls(from_stack_1v)
  loc_AC7D06: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_AC7D23: Call Requery()
  loc_AC7D28: ILdRf var_88
  loc_AC7D2B: CI4Str
  loc_AC7D2C: FLdI2 PeriInfo
  loc_AC7D2F: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_AC7D34: ExitProcHresult
End Sub

Public Sub Modificar(PeriInfo, CodiConc, DereDeco, DecaDeco) 'AC66E8
  'Data Table: 404B70
  loc_AC6600: ILdRf CodiConc
  loc_AC6603: FStStrCopy var_88
  loc_AC6606: FLdRfVar var_8C
  loc_AC6609: ILdRf var_88
  loc_AC660C: FLdI2 PeriInfo
  loc_AC660F: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_AC6614: ILdRf var_8C
  loc_AC6617: LitStr vbNullString
  loc_AC661A: EqStr
  loc_AC661C: FFree1Str var_8C
  loc_AC661F: BranchF loc_AC662D
  loc_AC6622: LitStr "El DESCUENTO NO EXISTE. Reintente..."
  loc_AC6625: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC662A: Branch loc_AC66D3
  loc_AC662D: LitStr "UPDATE descconc SET DereDeco = "
  loc_AC6630: LitI4 0
  loc_AC6635: LitI4 -1
  loc_AC663A: LitI4 1
  loc_AC663F: LitStr "."
  loc_AC6642: LitStr ","
  loc_AC6645: FLdFPR8 DereDeco
  loc_AC6648: CStrR8
  loc_AC664A: FStStrNoPop var_8C
  loc_AC664D: ImpAdCallI2 Replace(, , , , , )
  loc_AC6652: FStStrNoPop var_90
  loc_AC6655: ConcatStr
  loc_AC6656: FStStrNoPop var_94
  loc_AC6659: LitStr ", DecaDeco = "
  loc_AC665C: ConcatStr
  loc_AC665D: FStStrNoPop var_9C
  loc_AC6660: LitI4 0
  loc_AC6665: LitI4 -1
  loc_AC666A: LitI4 1
  loc_AC666F: LitStr "."
  loc_AC6672: LitStr ","
  loc_AC6675: FLdFPR8 arg_1C
  loc_AC6678: CStrR8
  loc_AC667A: FStStrNoPop var_98
  loc_AC667D: ImpAdCallI2 Replace(, , , , , )
  loc_AC6682: FStStrNoPop var_A0
  loc_AC6685: ConcatStr
  loc_AC6686: FStStrNoPop var_A4
  loc_AC6689: LitStr " WHERE PeriInfo = "
  loc_AC668C: ConcatStr
  loc_AC668D: FStStrNoPop var_A8
  loc_AC6690: FLdI2 PeriInfo
  loc_AC6693: CStrUI1
  loc_AC6695: FStStrNoPop var_AC
  loc_AC6698: ConcatStr
  loc_AC6699: FStStrNoPop var_B0
  loc_AC669C: LitStr " AND CodiConc = '"
  loc_AC669F: ConcatStr
  loc_AC66A0: FStStrNoPop var_B4
  loc_AC66A3: ILdRf var_88
  loc_AC66A6: ConcatStr
  loc_AC66A7: FStStrNoPop var_B8
  loc_AC66AA: LitStr "';"
  loc_AC66AD: ConcatStr
  loc_AC66AE: FStStrNoPop var_BC
  loc_AC66B1: Call EjecutarRsCls(from_stack_1v)
  loc_AC66B6: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_AC66D3: Call Requery()
  loc_AC66D8: ILdRf var_88
  loc_AC66DB: CI4Str
  loc_AC66DC: FLdI2 PeriInfo
  loc_AC66DF: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_AC66E4: ExitProcHresult
End Sub

Public Sub Delete() '9FE3D8
  'Data Table: 404B70
  loc_9FE3A8: FLdRfVar var_88
  loc_9FE3AB: FLdPr Me
  loc_9FE3AE: MemLdPr RsFrm
  loc_9FE3B1:  = Me.RecordCount
  loc_9FE3B6: ILdRf var_88
  loc_9FE3B9: LitI4 0
  loc_9FE3BE: GtI4
  loc_9FE3BF: BranchF loc_9FE3D7
  loc_9FE3C2: LitI4 1
  loc_9FE3C7: FLdPr Me
  loc_9FE3CA: MemLdPr RsFrm
  loc_9FE3CD: Me.Delete
  loc_9FE3D2: Call MoveNext()
  loc_9FE3D7: ExitProcHresult
End Sub

Public Sub Requery() '9E7080
  'Data Table: 404B70
  loc_9E705C: LitI4 -1
  loc_9E7061: FLdPr Me
  loc_9E7064: MemLdPr RsFrm
  loc_9E7067: Me.Requery from_stack_1
  loc_9E706C: LitVarStr var_94, "Primary"
  loc_9E7071: PopAdLdVar
  loc_9E7072: FLdPr Me
  loc_9E7075: LateIdCall
  loc_9E707D: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5CD6C
  'Data Table: 404B70
  loc_A5CD08: ILdRf sSelect
  loc_A5CD0B: FStStrCopy var_88
  loc_A5CD0E: LitNothing
  loc_A5CD10: CastAd
  loc_A5CD13: FStAdFuncNoPop
  loc_A5CD16: FLdPr Me
  loc_A5CD19: MemStAd
  loc_A5CD1D: FFree1Ad var_8C
  loc_A5CD20: New Recordset
  loc_A5CD24: FStAdFuncNoPop
  loc_A5CD27: FLdPr Me
  loc_A5CD2A: MemStAd
  loc_A5CD2E: FFree1Ad var_8C
  loc_A5CD31: LitI4 -1
  loc_A5CD36: LitI4 3
  loc_A5CD3B: LitI4 3
  loc_A5CD40: ImpAdLdI4 MemVar_D9301C
  loc_A5CD43: CVarAd
  loc_A5CD47: PopAdLdVar
  loc_A5CD48: ILdRf var_88
  loc_A5CD4B: CVarStr var_9C
  loc_A5CD4E: PopAdLdVar
  loc_A5CD4F: FLdPr Me
  loc_A5CD52: MemLdPr RsFrm
  loc_A5CD55: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5CD5A: LitVarStr var_9C, "Primary"
  loc_A5CD5F: PopAdLdVar
  loc_A5CD60: FLdPr Me
  loc_A5CD63: LateIdCall
  loc_A5CD6B: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A50714
  'Data Table: 404B70
  loc_A506C0: ILdRf sSelect
  loc_A506C3: FStStrCopy var_88
  loc_A506C6: LitNothing
  loc_A506C8: CastAd
  loc_A506CB: FStAdFuncNoPop
  loc_A506CE: FLdPr Me
  loc_A506D1: MemStAd
  loc_A506D5: FFree1Ad var_8C
  loc_A506D8: New Recordset
  loc_A506DC: FStAdFuncNoPop
  loc_A506DF: FLdPr Me
  loc_A506E2: MemStAd
  loc_A506E6: FFree1Ad var_8C
  loc_A506E9: LitI4 -1
  loc_A506EE: LitI4 3
  loc_A506F3: LitI4 3
  loc_A506F8: ImpAdLdI4 MemVar_D9301C
  loc_A506FB: CVarAd
  loc_A506FF: PopAdLdVar
  loc_A50700: ILdRf var_88
  loc_A50703: CVarStr var_9C
  loc_A50706: PopAdLdVar
  loc_A50707: FLdPr Me
  loc_A5070A: MemLdPr global_56
  loc_A5070D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A50712: ExitProcHresult
End Sub

Public Sub EjecutarRsCls1(sSelect) 'A50944
  'Data Table: 404B70
  loc_A508F0: ILdRf sSelect
  loc_A508F3: FStStrCopy var_88
  loc_A508F6: LitNothing
  loc_A508F8: CastAd
  loc_A508FB: FStAdFuncNoPop
  loc_A508FE: FLdPr Me
  loc_A50901: MemStAd
  loc_A50905: FFree1Ad var_8C
  loc_A50908: New Recordset
  loc_A5090C: FStAdFuncNoPop
  loc_A5090F: FLdPr Me
  loc_A50912: MemStAd
  loc_A50916: FFree1Ad var_8C
  loc_A50919: LitI4 -1
  loc_A5091E: LitI4 3
  loc_A50923: LitI4 3
  loc_A50928: ImpAdLdI4 MemVar_D9301C
  loc_A5092B: CVarAd
  loc_A5092F: PopAdLdVar
  loc_A50930: ILdRf var_88
  loc_A50933: CVarStr var_9C
  loc_A50936: PopAdLdVar
  loc_A50937: FLdPr Me
  loc_A5093A: MemLdPr global_60
  loc_A5093D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A50942: ExitProcHresult
End Sub

Public Sub Encontrar(PeriInfo, CodiConc) 'A11D2C
  'Data Table: 404B70
  loc_A11CF0: LitStr "PeriInfo = "
  loc_A11CF3: FLdI2 PeriInfo
  loc_A11CF6: CStrUI1
  loc_A11CF8: FStStrNoPop var_88
  loc_A11CFB: ConcatStr
  loc_A11CFC: PopTmpLdAdStr
  loc_A11D00: Call Find(from_stack_1v)
  loc_A11D05: FFreeStr var_88 = ""
  loc_A11D0C: LitStr "CodiConc = "
  loc_A11D0F: ILdRf CodiConc
  loc_A11D12: CStrI4
  loc_A11D14: FStStrNoPop var_88
  loc_A11D17: ConcatStr
  loc_A11D18: PopTmpLdAdStr
  loc_A11D1C: Call Find(from_stack_1v)
  loc_A11D21: FFreeStr var_88 = ""
  loc_A11D28: ExitProcHresult
End Sub

Public Property Get DataSource() '9F43CC
  'Data Table: 404B70
  loc_9F43A8: ZeroRetVal
  loc_9F43AA: FLdRfVar var_8C
  loc_9F43AD: FLdPr Me
  loc_9F43B0: MemLdPr RsFrm
  loc_9F43B3:  = Me.DataSource
  loc_9F43B8: ILdRf var_8C
  loc_9F43BB: CastAd
  loc_9F43BE: FStAdFunc var_88
  loc_9F43C1: FFree1Ad var_8C
  loc_9F43C4: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9D0DE0
  'Data Table: 404B70
  loc_9D0DC4: FLdRfVar var_8C
  loc_9D0DC7: FLdPr Me
  loc_9D0DCA: MemLdPr RsFrm
  loc_9D0DCD:  = Me.EditMode
  loc_9D0DD2: ILdRf var_8C
  loc_9D0DD5: FStR4 var_88
  loc_9D0DD8: ExitProcCbHresult
End Sub

Public Function ValidaClave(PeriInfo, CodiConc) 'A73E98
  'Data Table: 404B70
  loc_A73E34: ILdRf CodiConc
  loc_A73E37: FStStrCopy var_8C
  loc_A73E3A: ZeroRetVal
  loc_A73E3C: LitStr "SELECT PeriInfo, CodiConc FROM descconc WHERE PeriInfo = "
  loc_A73E3F: FLdI2 PeriInfo
  loc_A73E42: CStrUI1
  loc_A73E44: FStStrNoPop var_90
  loc_A73E47: ConcatStr
  loc_A73E48: FStStrNoPop ValidaClave
  loc_A73E4B: LitStr " AND CodiConc = '"
  loc_A73E4E: ConcatStr
  loc_A73E4F: FStStrNoPop var_98
  loc_A73E52: ILdRf var_8C
  loc_A73E55: ConcatStr
  loc_A73E56: FStStrNoPop var_9C
  loc_A73E59: LitStr "'"
  loc_A73E5C: ConcatStr
  loc_A73E5D: FStStrNoPop var_A0
  loc_A73E60: Call EjecutarRsCls(from_stack_1v)
  loc_A73E65: FFreeStr var_90 = "": ValidaClave = "": var_98 = "": var_9C = ""
  loc_A73E72: FLdRfVar var_A4
  loc_A73E75: FLdPr Me
  loc_A73E78: MemLdPr global_56
  loc_A73E7B:  = Me.RecordCount
  loc_A73E80: ILdRf var_A4
  loc_A73E83: LitI4 0
  loc_A73E88: GtI4
  loc_A73E89: BranchF loc_A73E92
  loc_A73E8C: LitStr "El REGISTRO de DESCUENTO YA EXISTE. Reintente..."
  loc_A73E8F: FStStrCopy var_88
  loc_A73E92: ExitProcCbHresult
End Function

Private Function Proc_251_27_9F4484() '9F4484
  'Data Table: 404B70
  loc_9F4460: LitStr "Primary"
  loc_9F4463: FLdPr Me
  loc_9F4466: LateIdLdVar var_94 DispID_4 0
  loc_9F446D: CastAdVar Me
  loc_9F4471: FStAdFunc var_98
  loc_9F4474: FLdPr var_98
  loc_9F447C: FFree1Ad var_98
  loc_9F447F: FFree1Var var_94 = ""
  loc_9F4482: ExitProcHresult
End Function

Private Function Proc_251_28_9E258C(arg_C) '9E258C
  'Data Table: 404B70
  loc_9E2570: ILdI4 arg_C
  loc_9E2573: FStStrCopy var_88
  loc_9E2576: ILdRf var_88
  loc_9E2579: LitStr "Primary"
  loc_9E257C: EqStr
  loc_9E257E: BranchF loc_9E258B
  loc_9E2581: FLdPr Me
  loc_9E2584: MemLdStr RsFrm
  loc_9E2587: IStAd
  loc_9E258B: ExitProcHresult
End Function
