VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clstipoinco"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Mover(iCantidad) '9FDBF8
  'Data Table: 404738
  loc_9FDBC8: FLdRfVar var_88
  loc_9FDBCB: FLdPr Me
  loc_9FDBCE: MemLdPr global_60
  loc_9FDBD1:  = Me.RecordCount
  loc_9FDBD6: ILdRf var_88
  loc_9FDBD9: LitI4 0
  loc_9FDBDE: GtI4
  loc_9FDBDF: BranchF loc_9FDBF4
  loc_9FDBE2: LitVar_Missing var_98
  loc_9FDBE5: PopAdLdVar
  loc_9FDBE6: ILdI4 iCantidad
  loc_9FDBE9: FLdPr Me
  loc_9FDBEC: MemLdPr global_60
  loc_9FDBEF: Me.Move from_stack_1, from_stack_2
  loc_9FDBF4: ExitProcHresult
  loc_9FDBF5: CI4Str
  loc_9FDBF6: CExtInstUnk
End Sub

Public Sub MoveFirst() '9EF354
  'Data Table: 404738
  loc_9EF32C: FLdRfVar var_88
  loc_9EF32F: FLdPr Me
  loc_9EF332: MemLdPr global_60
  loc_9EF335:  = Me.RecordCount
  loc_9EF33A: ILdRf var_88
  loc_9EF33D: LitI4 0
  loc_9EF342: GtI4
  loc_9EF343: BranchF loc_9EF351
  loc_9EF346: FLdPr Me
  loc_9EF349: MemLdPr global_60
  loc_9EF34C: Me.MoveFirst
  loc_9EF351: ExitProcHresult
End Sub

Public Sub MoveLast() '9EF404
  'Data Table: 404738
  loc_9EF3DC: FLdRfVar var_88
  loc_9EF3DF: FLdPr Me
  loc_9EF3E2: MemLdPr global_60
  loc_9EF3E5:  = Me.RecordCount
  loc_9EF3EA: ILdRf var_88
  loc_9EF3ED: LitI4 0
  loc_9EF3F2: GtI4
  loc_9EF3F3: BranchF loc_9EF401
  loc_9EF3F6: FLdPr Me
  loc_9EF3F9: MemLdPr global_60
  loc_9EF3FC: Me.MoveLast
  loc_9EF401: ExitProcHresult
  loc_9EF402: NeI2
End Sub

Public Sub MoveNext() 'A6B530
  'Data Table: 404738
  loc_A6B4B8: FLdRfVar var_86
  loc_A6B4BB: FLdPr Me
  loc_A6B4BE: MemLdPr global_60
  loc_A6B4C1:  = Me.EOF
  loc_A6B4C6: FLdI2 var_86
  loc_A6B4C9: NotI4
  loc_A6B4CA: FLdRfVar var_8C
  loc_A6B4CD: FLdPr Me
  loc_A6B4D0: MemLdPr global_60
  loc_A6B4D3:  = Me.RecordCount
  loc_A6B4D8: ILdRf var_8C
  loc_A6B4DB: LitI4 0
  loc_A6B4E0: GtI4
  loc_A6B4E1: AndI4
  loc_A6B4E2: BranchF loc_A6B4F0
  loc_A6B4E5: FLdPr Me
  loc_A6B4E8: MemLdPr global_60
  loc_A6B4EB: Me.MoveNext
  loc_A6B4F0: FLdRfVar var_86
  loc_A6B4F3: FLdPr Me
  loc_A6B4F6: MemLdPr global_60
  loc_A6B4F9:  = Me.EOF
  loc_A6B4FE: FLdI2 var_86
  loc_A6B501: FLdRfVar var_8C
  loc_A6B504: FLdPr Me
  loc_A6B507: MemLdPr global_60
  loc_A6B50A:  = Me.RecordCount
  loc_A6B50F: ILdRf var_8C
  loc_A6B512: LitI4 0
  loc_A6B517: GtI4
  loc_A6B518: AndI4
  loc_A6B519: BranchF loc_A6B52C
  loc_A6B51C: ImpAdCallFPR4 Beep()
  loc_A6B521: FLdPr Me
  loc_A6B524: MemLdPr global_60
  loc_A6B527: Me.MoveLast
  loc_A6B52C: ExitProcHresult
  loc_A6B52D: CR8R8
  loc_A6B52E: OnErrorGoto loc_A7759B
End Sub

Public Sub MoveSiguiente() '9B0E58
  'Data Table: 404738
  loc_9B0E4C: FLdPr Me
  loc_9B0E4F: MemLdPr global_60
  loc_9B0E52: Me.MoveNext
  loc_9B0E57: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B9628
  'Data Table: 404738
  loc_9B9614: LitVar_Missing var_94
  loc_9B9617: PopAdLdVar
  loc_9B9618: ILdI2 iValor
  loc_9B961B: CI4UI1
  loc_9B961C: FLdPr Me
  loc_9B961F: MemLdPr global_60
  loc_9B9622: Me.Move from_stack_1, from_stack_2
  loc_9B9627: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6B098
  'Data Table: 404738
  loc_A6B020: FLdRfVar var_86
  loc_A6B023: FLdPr Me
  loc_A6B026: MemLdPr global_60
  loc_A6B029:  = Me.BOF
  loc_A6B02E: FLdI2 var_86
  loc_A6B031: NotI4
  loc_A6B032: FLdRfVar var_8C
  loc_A6B035: FLdPr Me
  loc_A6B038: MemLdPr global_60
  loc_A6B03B:  = Me.RecordCount
  loc_A6B040: ILdRf var_8C
  loc_A6B043: LitI4 0
  loc_A6B048: GtI4
  loc_A6B049: AndI4
  loc_A6B04A: BranchF loc_A6B058
  loc_A6B04D: FLdPr Me
  loc_A6B050: MemLdPr global_60
  loc_A6B053: Me.MovePrevious
  loc_A6B058: FLdRfVar var_86
  loc_A6B05B: FLdPr Me
  loc_A6B05E: MemLdPr global_60
  loc_A6B061:  = Me.BOF
  loc_A6B066: FLdI2 var_86
  loc_A6B069: FLdRfVar var_8C
  loc_A6B06C: FLdPr Me
  loc_A6B06F: MemLdPr global_60
  loc_A6B072:  = Me.RecordCount
  loc_A6B077: ILdRf var_8C
  loc_A6B07A: LitI4 0
  loc_A6B07F: GtI4
  loc_A6B080: AndI4
  loc_A6B081: BranchF loc_A6B094
  loc_A6B084: ImpAdCallFPR4 Beep()
  loc_A6B089: FLdPr Me
  loc_A6B08C: MemLdPr global_60
  loc_A6B08F: Me.MoveFirst
  loc_A6B094: ExitProcHresult
  loc_A6B095: CVarI2 arg_7465
End Sub

Public Property Get EOF() '9CEB70
  'Data Table: 404738
  loc_9CEB54: FLdRfVar var_88
  loc_9CEB57: FLdPr Me
  loc_9CEB5A: MemLdPr global_60
  loc_9CEB5D:  = Me.EOF
  loc_9CEB62: FLdI2 var_88
  loc_9CEB65: FStI2 var_86
  loc_9CEB68: ExitProcCbHresult
  loc_9CEB6E: ILdI4 var_3F3F
End Sub

Public Property Get BOF() '9CEB24
  'Data Table: 404738
  loc_9CEB08: FLdRfVar var_88
  loc_9CEB0B: FLdPr Me
  loc_9CEB0E: MemLdPr global_60
  loc_9CEB11:  = Me.BOF
  loc_9CEB16: FLdI2 var_88
  loc_9CEB19: FStI2 var_86
  loc_9CEB1C: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B4DB8
  'Data Table: 404738
  loc_9B4DA8: ILdI4 sOrden
  loc_9B4DAB: FLdPr Me
  loc_9B4DAE: MemLdPr global_60
  loc_9B4DB1: Me.Sort = from_stack_1
  loc_9B4DB6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DE8F0
  'Data Table: 404738
  loc_9DE8D0: LitVar_Missing var_94
  loc_9DE8D3: PopAdLdVar
  loc_9DE8D4: LitI4 1
  loc_9DE8D9: LitI4 0
  loc_9DE8DE: ILdI4 sFind
  loc_9DE8E1: FLdPr Me
  loc_9DE8E4: MemLdPr global_60
  loc_9DE8E7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DE8EC: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9B9518
  'Data Table: 404738
  loc_9B9504: ILdI4 sCriterio
  loc_9B9507: CVarStr var_94
  loc_9B950A: PopAdLdVar
  loc_9B950B: FLdPr Me
  loc_9B950E: MemLdPr global_60
  loc_9B9511: Me.Filter = from_stack_1
  loc_9B9516: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9CE9F4
  'Data Table: 404738
  loc_9CE9D8: FLdRfVar var_8C
  loc_9CE9DB: FLdPr Me
  loc_9CE9DE: MemLdPr global_60
  loc_9CE9E1:  = Me.AbsolutePosition
  loc_9CE9E6: ILdRf var_8C
  loc_9CE9E9: FStR4 var_88
  loc_9CE9EC: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9CE9A8
  'Data Table: 404738
  loc_9CE98C: FLdRfVar var_8C
  loc_9CE98F: FLdPr Me
  loc_9CE992: MemLdPr global_60
  loc_9CE995:  = Me.RecordCount
  loc_9CE99A: ILdRf var_8C
  loc_9CE99D: FStR4 var_88
  loc_9CE9A0: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiTiic, DetaTiic, HaceRequery) 'A75D8C
  'Data Table: 404738
  loc_A75D24: ILdRf DetaTiic
  loc_A75D27: FStStrCopy var_88
  loc_A75D2A: LitStr "START TRANSACTION; INSERT INTO tipoinco (CodiTiic,DetaTiic) VALUES ("
  loc_A75D2D: FLdI2 CodiTiic
  loc_A75D30: CStrUI1
  loc_A75D32: FStStrNoPop var_90
  loc_A75D35: ConcatStr
  loc_A75D36: FStStrNoPop var_94
  loc_A75D39: LitStr ",'"
  loc_A75D3C: ConcatStr
  loc_A75D3D: FStStrNoPop var_98
  loc_A75D40: ILdRf var_88
  loc_A75D43: ConcatStr
  loc_A75D44: FStStrNoPop var_9C
  loc_A75D47: LitStr "')"
  loc_A75D4A: ConcatStr
  loc_A75D4B: FStStr var_8C
  loc_A75D4E: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_A75D59: OnErrorGoto loc_A75D7B
  loc_A75D5C: ILdRf var_8C
  loc_A75D5F: Call Proc_148_25_A51290()
  loc_A75D64: LitStr "COMMIT;"
  loc_A75D67: Call Proc_148_25_A51290()
  loc_A75D6C: FLdI2 HaceRequery
  loc_A75D6F: BranchF loc_A75D7A
  loc_A75D72: FLdI2 CodiTiic
  loc_A75D75: Call Encontrar(from_stack_1v)
  loc_A75D7A: ExitProcHresult
  loc_A75D7B: LitStr "ROLLBACK;"
  loc_A75D7E: Call Proc_148_25_A51290()
  loc_A75D83: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_A75D86: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A75D8B: ExitProcHresult
End Sub

Public Sub Modificar(CodiTiic, DetaTiic, HaceRequery) 'A739CC
  'Data Table: 404738
  loc_A73964: ILdRf DetaTiic
  loc_A73967: FStStrCopy var_88
  loc_A7396A: LitStr "START TRANSACTION; UPDATE tipoinco SET DetaTiic = '"
  loc_A7396D: ILdRf var_88
  loc_A73970: ConcatStr
  loc_A73971: FStStrNoPop var_90
  loc_A73974: LitStr "' WHERE CodiTiic = "
  loc_A73977: ConcatStr
  loc_A73978: FStStrNoPop var_94
  loc_A7397B: FLdI2 CodiTiic
  loc_A7397E: CStrUI1
  loc_A73980: FStStrNoPop var_98
  loc_A73983: ConcatStr
  loc_A73984: FStStrNoPop var_9C
  loc_A73987: LitStr ";"
  loc_A7398A: ConcatStr
  loc_A7398B: FStStr var_8C
  loc_A7398E: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_A73999: OnErrorGoto loc_A739BB
  loc_A7399C: ILdRf var_8C
  loc_A7399F: Call Proc_148_25_A51290()
  loc_A739A4: LitStr "COMMIT;"
  loc_A739A7: Call Proc_148_25_A51290()
  loc_A739AC: FLdI2 HaceRequery
  loc_A739AF: BranchF loc_A739BA
  loc_A739B2: FLdI2 CodiTiic
  loc_A739B5: Call Encontrar(from_stack_1v)
  loc_A739BA: ExitProcHresult
  loc_A739BB: LitStr "ROLLBACK;"
  loc_A739BE: Call Proc_148_25_A51290()
  loc_A739C3: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_A739C6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A739CB: ExitProcHresult
End Sub

Public Sub Requery() '9E6D38
  'Data Table: 404738
  loc_9E6D14: LitI4 -1
  loc_9E6D19: FLdPr Me
  loc_9E6D1C: MemLdPr global_60
  loc_9E6D1F: Me.Requery from_stack_1
  loc_9E6D24: LitVarStr var_94, "Primary"
  loc_9E6D29: PopAdLdVar
  loc_9E6D2A: FLdPr Me
  loc_9E6D2D: LateIdCall
  loc_9E6D35: ExitProcHresult
End Sub

Public Sub Encontrar(CodiTiic) 'A67058
  'Data Table: 404738
  loc_A66FF0: Call Requery()
  loc_A66FF5: LitStr "CodiTiic = '"
  loc_A66FF8: FLdI2 CodiTiic
  loc_A66FFB: CStrUI1
  loc_A66FFD: FStStrNoPop var_88
  loc_A67000: ConcatStr
  loc_A67001: FStStrNoPop var_8C
  loc_A67004: LitStr "'"
  loc_A67007: ConcatStr
  loc_A67008: PopTmpLdAdStr
  loc_A6700C: Call Find(from_stack_1v)
  loc_A67011: FFreeStr var_88 = "": var_8C = ""
  loc_A6701A: FLdRfVar var_94
  loc_A6701D: FLdPr Me
  loc_A67020: MemLdPr global_60
  loc_A67023:  = Me.RecordCount
  loc_A67028: ILdRf var_94
  loc_A6702B: LitI4 0
  loc_A67030: GtI4
  loc_A67031: FLdRfVar var_98
  loc_A67034: FLdPr Me
  loc_A67037: MemLdPr global_60
  loc_A6703A:  = Me.AbsolutePosition
  loc_A6703F: ILdRf var_98
  loc_A67042: LitI4 -3
  loc_A67047: EqI4
  loc_A67048: AndI4
  loc_A67049: BranchF loc_A67057
  loc_A6704C: FLdPr Me
  loc_A6704F: MemLdPr global_60
  loc_A67052: Me.MoveLast
  loc_A67057: ExitProcHresult
End Sub

Public Function ValidaClave(CodiTiic) 'A3A2D4
  'Data Table: 404738
  loc_A3A28C: ZeroRetValVar
  loc_A3A28E: LitStr "SELECT CodiTiic FROM tipoinco WHERE CodiTiic = "
  loc_A3A291: FLdI2 CodiTiic
  loc_A3A294: CStrUI1
  loc_A3A296: FStStrNoPop var_98
  loc_A3A299: ConcatStr
  loc_A3A29A: FStStrNoPop var_9C
  loc_A3A29D: Call Proc_148_25_A51290()
  loc_A3A2A2: FFreeStr var_98 = ""
  loc_A3A2A9: FLdRfVar var_A0
  loc_A3A2AC: FLdPr Me
  loc_A3A2AF: MemLdPr global_64
  loc_A3A2B2:  = Me.RecordCount
  loc_A3A2B7: ILdRf var_A0
  loc_A3A2BA: LitI4 0
  loc_A3A2BF: GtI4
  loc_A3A2C0: BranchF loc_A3A2CC
  loc_A3A2C3: LitVarStr var_B0, "EL TIPO de INSPECCIÓN YA EXISTE. Reintente..."
  loc_A3A2C8: FStVarCopy
  loc_A3A2CC: ExitProcCbHresult
End Function

Public Function NuevoRegistro() 'A714CC
  'Data Table: 404738
  loc_A7145C: LitStr "SELECT CodiTiic FROM tipoinco ORDER BY CodiTiic DESC LIMIT 1"
  loc_A7145F: Call Proc_148_25_A51290()
  loc_A71464: FLdRfVar var_8C
  loc_A71467: FLdPr Me
  loc_A7146A: MemLdPr global_64
  loc_A7146D:  = Me.RecordCount
  loc_A71472: ILdRf var_8C
  loc_A71475: LitI4 0
  loc_A7147A: GtI4
  loc_A7147B: BranchF loc_A714C0
  loc_A7147E: FLdRfVar var_B4
  loc_A71481: FLdRfVar var_A4
  loc_A71484: LitVarStr var_A0, "CodiTiic"
  loc_A71489: PopAdLdVar
  loc_A7148A: FLdRfVar var_90
  loc_A7148D: FLdPr Me
  loc_A71490: MemLdPr global_64
  loc_A71493:  = Me.Fields
  loc_A71498: FLdPr var_90
  loc_A7149B: from_stack_2 = Me.Item(from_stack_1)
  loc_A714A0: FLdPr var_A4
  loc_A714A3:  = Me.Value
  loc_A714A8: FLdRfVar var_B4
  loc_A714AB: FnCIntVar
  loc_A714AD: LitI2_Byte 1
  loc_A714AF: AddI2
  loc_A714B0: FStI2 var_86
  loc_A714B3: FFreeAd var_90 = ""
  loc_A714BA: FFree1Var var_B4 = ""
  loc_A714BD: Branch loc_A714C5
  loc_A714C0: LitI2_Byte 1
  loc_A714C2: FStI2 var_86
  loc_A714C5: ExitProcCbHresult
End Function

Public Sub RedefineRS(sSelect) 'A5E3F8
  'Data Table: 404738
  loc_A5E394: ILdRf sSelect
  loc_A5E397: FStStrCopy var_88
  loc_A5E39A: LitNothing
  loc_A5E39C: CastAd
  loc_A5E39F: FStAdFuncNoPop
  loc_A5E3A2: FLdPr Me
  loc_A5E3A5: MemStAd
  loc_A5E3A9: FFree1Ad var_8C
  loc_A5E3AC: New Recordset
  loc_A5E3B0: FStAdFuncNoPop
  loc_A5E3B3: FLdPr Me
  loc_A5E3B6: MemStAd
  loc_A5E3BA: FFree1Ad var_8C
  loc_A5E3BD: LitI4 -1
  loc_A5E3C2: LitI4 3
  loc_A5E3C7: LitI4 3
  loc_A5E3CC: ImpAdLdI4 MemVar_D9301C
  loc_A5E3CF: CVarAd
  loc_A5E3D3: PopAdLdVar
  loc_A5E3D4: ILdRf var_88
  loc_A5E3D7: CVarStr var_9C
  loc_A5E3DA: PopAdLdVar
  loc_A5E3DB: FLdPr Me
  loc_A5E3DE: MemLdPr global_60
  loc_A5E3E1: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5E3E6: LitVarStr var_9C, "Primary"
  loc_A5E3EB: PopAdLdVar
  loc_A5E3EC: FLdPr Me
  loc_A5E3EF: LateIdCall
  loc_A5E3F7: ExitProcHresult
End Sub

Public Property Get DataSource() '9F2D28
  'Data Table: 404738
  loc_9F2D04: ZeroRetVal
  loc_9F2D06: FLdRfVar var_8C
  loc_9F2D09: FLdPr Me
  loc_9F2D0C: MemLdPr global_60
  loc_9F2D0F:  = Me.DataSource
  loc_9F2D14: ILdRf var_8C
  loc_9F2D17: CastAd
  loc_9F2D1A: FStAdFunc var_88
  loc_9F2D1D: FFree1Ad var_8C
  loc_9F2D20: ExitProcCbHresult
End Sub

Public Property Get CodiTiic() 'A309A4
  'Data Table: 404738
  loc_A30960: FLdRfVar var_B0
  loc_A30963: FLdRfVar var_A0
  loc_A30966: LitVarStr var_9C, "CodiTiic"
  loc_A3096B: PopAdLdVar
  loc_A3096C: FLdRfVar var_8C
  loc_A3096F: FLdPr Me
  loc_A30972: MemLdPr global_60
  loc_A30975:  = Me.Fields
  loc_A3097A: FLdPr var_8C
  loc_A3097D: from_stack_2 = Me.Item(from_stack_1)
  loc_A30982: FLdPr var_A0
  loc_A30985:  = Me.Value
  loc_A3098A: FLdRfVar var_B0
  loc_A3098D: CI2Var
  loc_A3098E: FStI2 var_86
  loc_A30991: FFreeAd var_8C = ""
  loc_A30998: FFree1Var var_B0 = ""
  loc_A3099B: ExitProcCbHresult
End Sub

Public Property Get DetaTiic() 'A3CD9C
  'Data Table: 404738
  loc_A3CD58: ZeroRetVal
  loc_A3CD5A: FLdRfVar var_B0
  loc_A3CD5D: FLdRfVar var_A0
  loc_A3CD60: LitVarStr var_9C, "DetaTiic"
  loc_A3CD65: PopAdLdVar
  loc_A3CD66: FLdRfVar var_8C
  loc_A3CD69: FLdPr Me
  loc_A3CD6C: MemLdPr global_60
  loc_A3CD6F:  = Me.Fields
  loc_A3CD74: FLdPr var_8C
  loc_A3CD77: from_stack_2 = Me.Item(from_stack_1)
  loc_A3CD7C: FLdPr var_A0
  loc_A3CD7F:  = Me.Value
  loc_A3CD84: FLdRfVar var_B0
  loc_A3CD87: CStrVarTmp
  loc_A3CD88: FStStr var_88
  loc_A3CD8B: FFreeAd var_8C = ""
  loc_A3CD92: FFree1Var var_B0 = ""
  loc_A3CD95: ExitProcCbHresult
End Sub

Private Function Proc_148_24_9F2F50() '9F2F50
  'Data Table: 404738
  loc_9F2F2C: LitStr "Primary"
  loc_9F2F2F: FLdPr Me
  loc_9F2F32: LateIdLdVar var_94 DispID_4 0
  loc_9F2F39: CastAdVar Me
  loc_9F2F3D: FStAdFunc var_98
  loc_9F2F40: FLdPr var_98
  loc_9F2F48: FFree1Ad var_98
  loc_9F2F4B: FFree1Var var_94 = ""
  loc_9F2F4E: ExitProcHresult
End Function

Private Function Proc_148_25_A51290(arg_C) 'A51290
  'Data Table: 404738
  loc_A5123C: ILdRf arg_C
  loc_A5123F: FStStrCopy var_88
  loc_A51242: LitNothing
  loc_A51244: CastAd
  loc_A51247: FStAdFuncNoPop
  loc_A5124A: FLdPr Me
  loc_A5124D: MemStAd
  loc_A51251: FFree1Ad var_8C
  loc_A51254: New Recordset
  loc_A51258: FStAdFuncNoPop
  loc_A5125B: FLdPr Me
  loc_A5125E: MemStAd
  loc_A51262: FFree1Ad var_8C
  loc_A51265: LitI4 -1
  loc_A5126A: LitI4 3
  loc_A5126F: LitI4 3
  loc_A51274: ImpAdLdI4 MemVar_D9301C
  loc_A51277: CVarAd
  loc_A5127B: PopAdLdVar
  loc_A5127C: ILdRf var_88
  loc_A5127F: CVarStr var_9C
  loc_A51282: PopAdLdVar
  loc_A51283: FLdPr Me
  loc_A51286: MemLdPr global_64
  loc_A51289: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5128E: ExitProcHresult
End Function

Private Function Proc_148_26_9E1D1C(arg_C) '9E1D1C
  'Data Table: 404738
  loc_9E1D00: ILdI4 arg_C
  loc_9E1D03: FStStrCopy var_88
  loc_9E1D06: ILdRf var_88
  loc_9E1D09: LitStr "Primary"
  loc_9E1D0C: EqStr
  loc_9E1D0E: BranchF loc_9E1D1B
  loc_9E1D11: FLdPr Me
  loc_9E1D14: MemLdStr global_60
  loc_9E1D17: IStAd
  loc_9E1D1B: ExitProcHresult
End Function
