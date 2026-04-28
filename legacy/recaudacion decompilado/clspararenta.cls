VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clspararenta"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Mover(iCantidad) '9FE018
  'Data Table: 404FCC
  loc_9FDFE8: FLdRfVar var_88
  loc_9FDFEB: FLdPr Me
  loc_9FDFEE: MemLdPr global_60
  loc_9FDFF1:  = Me.RecordCount
  loc_9FDFF6: ILdRf var_88
  loc_9FDFF9: LitI4 0
  loc_9FDFFE: GtI4
  loc_9FDFFF: BranchF loc_9FE014
  loc_9FE002: LitVar_Missing var_98
  loc_9FE005: PopAdLdVar
  loc_9FE006: ILdI4 iCantidad
  loc_9FE009: FLdPr Me
  loc_9FE00C: MemLdPr global_60
  loc_9FE00F: Me.Move from_stack_1, from_stack_2
  loc_9FE014: ExitProcHresult
End Sub

Public Sub MoveFirst() '9ED8DC
  'Data Table: 404FCC
  loc_9ED8B4: FLdRfVar var_88
  loc_9ED8B7: FLdPr Me
  loc_9ED8BA: MemLdPr global_60
  loc_9ED8BD:  = Me.RecordCount
  loc_9ED8C2: ILdRf var_88
  loc_9ED8C5: LitI4 0
  loc_9ED8CA: GtI4
  loc_9ED8CB: BranchF loc_9ED8D9
  loc_9ED8CE: FLdPr Me
  loc_9ED8D1: MemLdPr global_60
  loc_9ED8D4: Me.MoveFirst
  loc_9ED8D9: ExitProcHresult
  loc_9ED8DA: PopTmpLdAd8 arg_5403
End Sub

Public Sub MoveLast() '9EFAE4
  'Data Table: 404FCC
  loc_9EFABC: FLdRfVar var_88
  loc_9EFABF: FLdPr Me
  loc_9EFAC2: MemLdPr global_60
  loc_9EFAC5:  = Me.RecordCount
  loc_9EFACA: ILdRf var_88
  loc_9EFACD: LitI4 0
  loc_9EFAD2: GtI4
  loc_9EFAD3: BranchF loc_9EFAE1
  loc_9EFAD6: FLdPr Me
  loc_9EFAD9: MemLdPr global_60
  loc_9EFADC: Me.MoveLast
  loc_9EFAE1: ExitProcHresult
  loc_9EFAE2: FStStr arg_5403
End Sub

Public Sub MoveNext() 'A6E320
  'Data Table: 404FCC
  loc_A6E2A8: FLdRfVar var_86
  loc_A6E2AB: FLdPr Me
  loc_A6E2AE: MemLdPr global_60
  loc_A6E2B1:  = Me.EOF
  loc_A6E2B6: FLdI2 var_86
  loc_A6E2B9: NotI4
  loc_A6E2BA: FLdRfVar var_8C
  loc_A6E2BD: FLdPr Me
  loc_A6E2C0: MemLdPr global_60
  loc_A6E2C3:  = Me.RecordCount
  loc_A6E2C8: ILdRf var_8C
  loc_A6E2CB: LitI4 0
  loc_A6E2D0: GtI4
  loc_A6E2D1: AndI4
  loc_A6E2D2: BranchF loc_A6E2E0
  loc_A6E2D5: FLdPr Me
  loc_A6E2D8: MemLdPr global_60
  loc_A6E2DB: Me.MoveNext
  loc_A6E2E0: FLdRfVar var_86
  loc_A6E2E3: FLdPr Me
  loc_A6E2E6: MemLdPr global_60
  loc_A6E2E9:  = Me.EOF
  loc_A6E2EE: FLdI2 var_86
  loc_A6E2F1: FLdRfVar var_8C
  loc_A6E2F4: FLdPr Me
  loc_A6E2F7: MemLdPr global_60
  loc_A6E2FA:  = Me.RecordCount
  loc_A6E2FF: ILdRf var_8C
  loc_A6E302: LitI4 0
  loc_A6E307: GtI4
  loc_A6E308: AndI4
  loc_A6E309: BranchF loc_A6E31C
  loc_A6E30C: ImpAdCallFPR4 Beep()
  loc_A6E311: FLdPr Me
  loc_A6E314: MemLdPr global_60
  loc_A6E317: Me.MoveLast
  loc_A6E31C: ExitProcHresult
  loc_A6E31D: Ary1LdPr
  loc_A6E31E: LdFixedStr
End Sub

Public Sub MoveSiguiente() '9B1434
  'Data Table: 404FCC
  loc_9B1428: FLdPr Me
  loc_9B142B: MemLdPr global_60
  loc_9B142E: Me.MoveNext
  loc_9B1433: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6DB40
  'Data Table: 404FCC
  loc_A6DAC8: FLdRfVar var_86
  loc_A6DACB: FLdPr Me
  loc_A6DACE: MemLdPr global_60
  loc_A6DAD1:  = Me.BOF
  loc_A6DAD6: FLdI2 var_86
  loc_A6DAD9: NotI4
  loc_A6DADA: FLdRfVar var_8C
  loc_A6DADD: FLdPr Me
  loc_A6DAE0: MemLdPr global_60
  loc_A6DAE3:  = Me.RecordCount
  loc_A6DAE8: ILdRf var_8C
  loc_A6DAEB: LitI4 0
  loc_A6DAF0: GtI4
  loc_A6DAF1: AndI4
  loc_A6DAF2: BranchF loc_A6DB00
  loc_A6DAF5: FLdPr Me
  loc_A6DAF8: MemLdPr global_60
  loc_A6DAFB: Me.MovePrevious
  loc_A6DB00: FLdRfVar var_86
  loc_A6DB03: FLdPr Me
  loc_A6DB06: MemLdPr global_60
  loc_A6DB09:  = Me.BOF
  loc_A6DB0E: FLdI2 var_86
  loc_A6DB11: FLdRfVar var_8C
  loc_A6DB14: FLdPr Me
  loc_A6DB17: MemLdPr global_60
  loc_A6DB1A:  = Me.RecordCount
  loc_A6DB1F: ILdRf var_8C
  loc_A6DB22: LitI4 0
  loc_A6DB27: GtI4
  loc_A6DB28: AndI4
  loc_A6DB29: BranchF loc_A6DB3C
  loc_A6DB2C: ImpAdCallFPR4 Beep()
  loc_A6DB31: FLdPr Me
  loc_A6DB34: MemLdPr global_60
  loc_A6DB37: Me.MoveFirst
  loc_A6DB3C: ExitProcHresult
  loc_A6DB3D: LitI2FP 815
End Sub

Public Property Get EOF() '9D0B34
  'Data Table: 404FCC
  loc_9D0B18: FLdRfVar var_88
  loc_9D0B1B: FLdPr Me
  loc_9D0B1E: MemLdPr global_60
  loc_9D0B21:  = Me.EOF
  loc_9D0B26: FLdI2 var_88
  loc_9D0B29: FStI2 var_86
  loc_9D0B2C: ExitProcCbHresult
  loc_9D0B32: CopyBytes
End Sub

Public Property Get BOF() '9D0AE8
  'Data Table: 404FCC
  loc_9D0ACC: FLdRfVar var_88
  loc_9D0ACF: FLdPr Me
  loc_9D0AD2: MemLdPr global_60
  loc_9D0AD5:  = Me.BOF
  loc_9D0ADA: FLdI2 var_88
  loc_9D0ADD: FStI2 var_86
  loc_9D0AE0: ExitProcCbHresult
  loc_9D0AE6: PopFPR8
End Sub

Public Sub Sort(sOrden) '9B30B8
  'Data Table: 404FCC
  loc_9B30A8: ILdI4 sOrden
  loc_9B30AB: FLdPr Me
  loc_9B30AE: MemLdPr global_60
  loc_9B30B1: Me.Sort = from_stack_1
  loc_9B30B6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E2400
  'Data Table: 404FCC
  loc_9E23E0: LitVar_Missing var_94
  loc_9E23E3: PopAdLdVar
  loc_9E23E4: LitI4 1
  loc_9E23E9: LitI4 0
  loc_9E23EE: ILdI4 sFind
  loc_9E23F1: FLdPr Me
  loc_9E23F4: MemLdPr global_60
  loc_9E23F7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E23FC: ExitProcHresult
  loc_9E23FD: ThisVCall unk_405306
End Sub

Public Sub Filter(sCriterio) '9B8B88
  'Data Table: 404FCC
  loc_9B8B74: ILdI4 sCriterio
  loc_9B8B77: CVarStr var_94
  loc_9B8B7A: PopAdLdVar
  loc_9B8B7B: FLdPr Me
  loc_9B8B7E: MemLdPr global_60
  loc_9B8B81: Me.Filter = from_stack_1
  loc_9B8B86: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D09B8
  'Data Table: 404FCC
  loc_9D099C: FLdRfVar var_8C
  loc_9D099F: FLdPr Me
  loc_9D09A2: MemLdPr global_60
  loc_9D09A5:  = Me.AbsolutePosition
  loc_9D09AA: ILdRf var_8C
  loc_9D09AD: FStR4 var_88
  loc_9D09B0: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D096C
  'Data Table: 404FCC
  loc_9D0950: FLdRfVar var_8C
  loc_9D0953: FLdPr Me
  loc_9D0956: MemLdPr global_60
  loc_9D0959:  = Me.RecordCount
  loc_9D095E: ILdRf var_8C
  loc_9D0961: FStR4 var_88
  loc_9D0964: ExitProcCbHresult
  loc_9D096A: LitVar_TRUE arg_5403
End Sub

Public Sub AddNew(PeriInfo, CorePare, CoinPare, CoadPare, CoapPare, HaceRequery) 'AB15C8
  'Data Table: 404FCC
  loc_AB1518: ILdRf CorePare
  loc_AB151B: FStStrCopy var_88
  loc_AB151E: ILdRf CoinPare
  loc_AB1521: FStStrCopy var_8C
  loc_AB1524: ILdRf CoadPare
  loc_AB1527: FStStrCopy var_90
  loc_AB152A: ILdRf CoapPare
  loc_AB152D: FStStrCopy var_94
  loc_AB1530: LitStr "START TRANSACTION; INSERT INTO pararenta (PeriInfo,CorePare,CoinPare,CoadPare,CoapPare) VALUES ("
  loc_AB1533: FLdI2 PeriInfo
  loc_AB1536: CStrUI1
  loc_AB1538: FStStrNoPop var_9C
  loc_AB153B: ConcatStr
  loc_AB153C: FStStrNoPop var_A0
  loc_AB153F: LitStr ",'"
  loc_AB1542: ConcatStr
  loc_AB1543: FStStrNoPop var_A4
  loc_AB1546: ILdRf var_88
  loc_AB1549: ConcatStr
  loc_AB154A: FStStrNoPop var_A8
  loc_AB154D: LitStr "','"
  loc_AB1550: ConcatStr
  loc_AB1551: FStStrNoPop var_AC
  loc_AB1554: ILdRf var_8C
  loc_AB1557: ConcatStr
  loc_AB1558: FStStrNoPop var_B0
  loc_AB155B: LitStr "','"
  loc_AB155E: ConcatStr
  loc_AB155F: FStStrNoPop var_B4
  loc_AB1562: ILdRf var_90
  loc_AB1565: ConcatStr
  loc_AB1566: FStStrNoPop var_B8
  loc_AB1569: LitStr "','"
  loc_AB156C: ConcatStr
  loc_AB156D: FStStrNoPop var_BC
  loc_AB1570: ILdRf var_94
  loc_AB1573: ConcatStr
  loc_AB1574: FStStrNoPop var_C0
  loc_AB1577: LitStr "');"
  loc_AB157A: ConcatStr
  loc_AB157B: FStStr var_98
  loc_AB157E: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AB1595: OnErrorGoto loc_AB15B7
  loc_AB1598: ILdRf var_98
  loc_AB159B: Call Proc_140_26_A51204()
  loc_AB15A0: LitStr "COMMIT;"
  loc_AB15A3: Call Proc_140_26_A51204()
  loc_AB15A8: FLdI2 HaceRequery
  loc_AB15AB: BranchF loc_AB15B6
  loc_AB15AE: FLdI2 PeriInfo
  loc_AB15B1: Call Encontrar(from_stack_1v)
  loc_AB15B6: ExitProcHresult
  loc_AB15B7: LitStr "ROLLBACK;"
  loc_AB15BA: Call Proc_140_26_A51204()
  loc_AB15BF: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AB15C2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB15C7: ExitProcHresult
End Sub

Public Sub Modificar(PeriInfo, CorePare, CoinPare, CoadPare, CoapPare, HaceRequery) 'AB1C70
  'Data Table: 404FCC
  loc_AB1BC0: ILdRf CorePare
  loc_AB1BC3: FStStrCopy var_88
  loc_AB1BC6: ILdRf CoinPare
  loc_AB1BC9: FStStrCopy var_8C
  loc_AB1BCC: ILdRf CoadPare
  loc_AB1BCF: FStStrCopy var_90
  loc_AB1BD2: ILdRf CoapPare
  loc_AB1BD5: FStStrCopy var_94
  loc_AB1BD8: LitStr "START TRANSACTION; UPDATE pararenta SET CorePare = '"
  loc_AB1BDB: ILdRf var_88
  loc_AB1BDE: ConcatStr
  loc_AB1BDF: FStStrNoPop var_9C
  loc_AB1BE2: LitStr "' ,CoinPare = '"
  loc_AB1BE5: ConcatStr
  loc_AB1BE6: FStStrNoPop var_A0
  loc_AB1BE9: ILdRf var_8C
  loc_AB1BEC: ConcatStr
  loc_AB1BED: FStStrNoPop var_A4
  loc_AB1BF0: LitStr "', CoadPare = '"
  loc_AB1BF3: ConcatStr
  loc_AB1BF4: FStStrNoPop var_A8
  loc_AB1BF7: ILdRf var_90
  loc_AB1BFA: ConcatStr
  loc_AB1BFB: FStStrNoPop var_AC
  loc_AB1BFE: LitStr " ',CoapPare = '"
  loc_AB1C01: ConcatStr
  loc_AB1C02: FStStrNoPop var_B0
  loc_AB1C05: ILdRf var_94
  loc_AB1C08: ConcatStr
  loc_AB1C09: FStStrNoPop var_B4
  loc_AB1C0C: LitStr "' WHERE PeriInfo = "
  loc_AB1C0F: ConcatStr
  loc_AB1C10: FStStrNoPop var_B8
  loc_AB1C13: FLdI2 PeriInfo
  loc_AB1C16: CStrUI1
  loc_AB1C18: FStStrNoPop var_BC
  loc_AB1C1B: ConcatStr
  loc_AB1C1C: FStStrNoPop var_C0
  loc_AB1C1F: LitStr ";"
  loc_AB1C22: ConcatStr
  loc_AB1C23: FStStr var_98
  loc_AB1C26: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AB1C3D: OnErrorGoto loc_AB1C5F
  loc_AB1C40: ILdRf var_98
  loc_AB1C43: Call Proc_140_26_A51204()
  loc_AB1C48: LitStr "COMMIT;"
  loc_AB1C4B: Call Proc_140_26_A51204()
  loc_AB1C50: FLdI2 HaceRequery
  loc_AB1C53: BranchF loc_AB1C5E
  loc_AB1C56: FLdI2 PeriInfo
  loc_AB1C59: Call Encontrar(from_stack_1v)
  loc_AB1C5E: ExitProcHresult
  loc_AB1C5F: LitStr "ROLLBACK;"
  loc_AB1C62: Call Proc_140_26_A51204()
  loc_AB1C67: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AB1C6A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB1C6F: ExitProcHresult
End Sub

Public Sub Requery() '9E702C
  'Data Table: 404FCC
  loc_9E7008: LitI4 -1
  loc_9E700D: FLdPr Me
  loc_9E7010: MemLdPr global_60
  loc_9E7013: Me.Requery from_stack_1
  loc_9E7018: LitVarStr var_94, "Primary"
  loc_9E701D: PopAdLdVar
  loc_9E701E: FLdPr Me
  loc_9E7021: LateIdCall
  loc_9E7029: ExitProcHresult
  loc_9E702A: AryUnlock
End Sub

Public Sub Encontrar(PeriInfo) 'A669F0
  'Data Table: 404FCC
  loc_A66988: Call Requery()
  loc_A6698D: LitStr "periInfo = '"
  loc_A66990: FLdI2 PeriInfo
  loc_A66993: CStrUI1
  loc_A66995: FStStrNoPop var_88
  loc_A66998: ConcatStr
  loc_A66999: FStStrNoPop var_8C
  loc_A6699C: LitStr "'"
  loc_A6699F: ConcatStr
  loc_A669A0: PopTmpLdAdStr
  loc_A669A4: Call Find(from_stack_1v)
  loc_A669A9: FFreeStr var_88 = "": var_8C = ""
  loc_A669B2: FLdRfVar var_94
  loc_A669B5: FLdPr Me
  loc_A669B8: MemLdPr global_60
  loc_A669BB:  = Me.RecordCount
  loc_A669C0: ILdRf var_94
  loc_A669C3: LitI4 0
  loc_A669C8: GtI4
  loc_A669C9: FLdRfVar var_98
  loc_A669CC: FLdPr Me
  loc_A669CF: MemLdPr global_60
  loc_A669D2:  = Me.AbsolutePosition
  loc_A669D7: ILdRf var_98
  loc_A669DA: LitI4 -3
  loc_A669DF: EqI4
  loc_A669E0: AndI4
  loc_A669E1: BranchF loc_A669EF
  loc_A669E4: FLdPr Me
  loc_A669E7: MemLdPr global_60
  loc_A669EA: Me.MoveLast
  loc_A669EF: ExitProcHresult
End Sub

Public Function ValidaClave(PeriInfo) 'A34124
  'Data Table: 404FCC
  loc_A340E0: ZeroRetVal
  loc_A340E2: LitStr "SELECT PeriInfo FROM pararenta WHERE PeriInfo = "
  loc_A340E5: FLdI2 PeriInfo
  loc_A340E8: CStrUI1
  loc_A340EA: FStStrNoPop var_8C
  loc_A340ED: ConcatStr
  loc_A340EE: FStStrNoPop var_90
  loc_A340F1: Call Proc_140_26_A51204()
  loc_A340F6: FFreeStr var_8C = ""
  loc_A340FD: FLdRfVar ValidaClave
  loc_A34100: FLdPr Me
  loc_A34103: MemLdPr global_64
  loc_A34106:  = Me.RecordCount
  loc_A3410B: ILdRf ValidaClave
  loc_A3410E: LitI4 0
  loc_A34113: GtI4
  loc_A34114: BranchF loc_A3411D
  loc_A34117: LitStr "El PERIODO ya existe. Reintente..."
  loc_A3411A: FStStrCopy var_88
  loc_A3411D: ExitProcCbHresult
End Function

Public Sub RedefineRS(sSelect) 'A5CB98
  'Data Table: 404FCC
  loc_A5CB34: ILdRf sSelect
  loc_A5CB37: FStStrCopy var_88
  loc_A5CB3A: LitNothing
  loc_A5CB3C: CastAd
  loc_A5CB3F: FStAdFuncNoPop
  loc_A5CB42: FLdPr Me
  loc_A5CB45: MemStAd
  loc_A5CB49: FFree1Ad var_8C
  loc_A5CB4C: New Recordset
  loc_A5CB50: FStAdFuncNoPop
  loc_A5CB53: FLdPr Me
  loc_A5CB56: MemStAd
  loc_A5CB5A: FFree1Ad var_8C
  loc_A5CB5D: LitI4 -1
  loc_A5CB62: LitI4 3
  loc_A5CB67: LitI4 3
  loc_A5CB6C: ImpAdLdI4 MemVar_D9301C
  loc_A5CB6F: CVarAd
  loc_A5CB73: PopAdLdVar
  loc_A5CB74: ILdRf var_88
  loc_A5CB77: CVarStr var_9C
  loc_A5CB7A: PopAdLdVar
  loc_A5CB7B: FLdPr Me
  loc_A5CB7E: MemLdPr global_60
  loc_A5CB81: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5CB86: LitVarStr var_9C, "Primary"
  loc_A5CB8B: PopAdLdVar
  loc_A5CB8C: FLdPr Me
  loc_A5CB8F: LateIdCall
  loc_A5CB97: ExitProcHresult
End Sub

Public Property Get DataSource() '9F3FD8
  'Data Table: 404FCC
  loc_9F3FB4: ZeroRetVal
  loc_9F3FB6: FLdRfVar var_8C
  loc_9F3FB9: FLdPr Me
  loc_9F3FBC: MemLdPr global_60
  loc_9F3FBF:  = Me.DataSource
  loc_9F3FC4: ILdRf var_8C
  loc_9F3FC7: CastAd
  loc_9F3FCA: FStAdFunc var_88
  loc_9F3FCD: FFree1Ad var_8C
  loc_9F3FD0: ExitProcCbHresult
  loc_9F3FD6: FFreeVar  = ""
End Sub

Public Property Get PeriInfo() 'A340A4
  'Data Table: 404FCC
  loc_A34060: FLdRfVar var_B0
  loc_A34063: FLdRfVar var_A0
  loc_A34066: LitVarStr var_9C, "PeriInfo"
  loc_A3406B: PopAdLdVar
  loc_A3406C: FLdRfVar var_8C
  loc_A3406F: FLdPr Me
  loc_A34072: MemLdPr global_60
  loc_A34075:  = Me.Fields
  loc_A3407A: FLdPr var_8C
  loc_A3407D: from_stack_2 = Me.Item(from_stack_1)
  loc_A34082: FLdPr var_A0
  loc_A34085:  = Me.Value
  loc_A3408A: FLdRfVar var_B0
  loc_A3408D: CI2Var
  loc_A3408E: FStI2 var_86
  loc_A34091: FFreeAd var_8C = ""
  loc_A34098: FFree1Var var_B0 = ""
  loc_A3409B: ExitProcCbHresult
  loc_A340A1: NewIfNullPr Me
End Sub

Public Property Get CorePare() 'A3AC9C
  'Data Table: 404FCC
  loc_A3AC58: ZeroRetVal
  loc_A3AC5A: FLdRfVar var_B0
  loc_A3AC5D: FLdRfVar var_A0
  loc_A3AC60: LitVarStr var_9C, "CorePare"
  loc_A3AC65: PopAdLdVar
  loc_A3AC66: FLdRfVar var_8C
  loc_A3AC69: FLdPr Me
  loc_A3AC6C: MemLdPr global_60
  loc_A3AC6F:  = Me.Fields
  loc_A3AC74: FLdPr var_8C
  loc_A3AC77: from_stack_2 = Me.Item(from_stack_1)
  loc_A3AC7C: FLdPr var_A0
  loc_A3AC7F:  = Me.Value
  loc_A3AC84: FLdRfVar var_B0
  loc_A3AC87: CStrVarTmp
  loc_A3AC88: FStStr var_88
  loc_A3AC8B: FFreeAd var_8C = ""
  loc_A3AC92: FFree1Var var_B0 = ""
  loc_A3AC95: ExitProcCbHresult
End Sub

Public Property Get CoinPare() 'A3B038
  'Data Table: 404FCC
  loc_A3AFF4: ZeroRetVal
  loc_A3AFF6: FLdRfVar var_B0
  loc_A3AFF9: FLdRfVar var_A0
  loc_A3AFFC: LitVarStr var_9C, "CoinPare"
  loc_A3B001: PopAdLdVar
  loc_A3B002: FLdRfVar var_8C
  loc_A3B005: FLdPr Me
  loc_A3B008: MemLdPr global_60
  loc_A3B00B:  = Me.Fields
  loc_A3B010: FLdPr var_8C
  loc_A3B013: from_stack_2 = Me.Item(from_stack_1)
  loc_A3B018: FLdPr var_A0
  loc_A3B01B:  = Me.Value
  loc_A3B020: FLdRfVar var_B0
  loc_A3B023: CStrVarTmp
  loc_A3B024: FStStr var_88
  loc_A3B027: FFreeAd var_8C = ""
  loc_A3B02E: FFree1Var var_B0 = ""
  loc_A3B031: ExitProcCbHresult
End Sub

Public Property Get CoadPare() 'A3B0BC
  'Data Table: 404FCC
  loc_A3B078: ZeroRetVal
  loc_A3B07A: FLdRfVar var_B0
  loc_A3B07D: FLdRfVar var_A0
  loc_A3B080: LitVarStr var_9C, "CoadPare"
  loc_A3B085: PopAdLdVar
  loc_A3B086: FLdRfVar var_8C
  loc_A3B089: FLdPr Me
  loc_A3B08C: MemLdPr global_60
  loc_A3B08F:  = Me.Fields
  loc_A3B094: FLdPr var_8C
  loc_A3B097: from_stack_2 = Me.Item(from_stack_1)
  loc_A3B09C: FLdPr var_A0
  loc_A3B09F:  = Me.Value
  loc_A3B0A4: FLdRfVar var_B0
  loc_A3B0A7: CStrVarTmp
  loc_A3B0A8: FStStr var_88
  loc_A3B0AB: FFreeAd var_8C = ""
  loc_A3B0B2: FFree1Var var_B0 = ""
  loc_A3B0B5: ExitProcCbHresult
End Sub

Public Property Get CoapPare() 'A3B248
  'Data Table: 404FCC
  loc_A3B204: ZeroRetVal
  loc_A3B206: FLdRfVar var_B0
  loc_A3B209: FLdRfVar var_A0
  loc_A3B20C: LitVarStr var_9C, "CoapPare"
  loc_A3B211: PopAdLdVar
  loc_A3B212: FLdRfVar var_8C
  loc_A3B215: FLdPr Me
  loc_A3B218: MemLdPr global_60
  loc_A3B21B:  = Me.Fields
  loc_A3B220: FLdPr var_8C
  loc_A3B223: from_stack_2 = Me.Item(from_stack_1)
  loc_A3B228: FLdPr var_A0
  loc_A3B22B:  = Me.Value
  loc_A3B230: FLdRfVar var_B0
  loc_A3B233: CStrVarTmp
  loc_A3B234: FStStr var_88
  loc_A3B237: FFreeAd var_8C = ""
  loc_A3B23E: FFree1Var var_B0 = ""
  loc_A3B241: ExitProcCbHresult
End Sub

Private Function Proc_140_25_9F40EC() '9F40EC
  'Data Table: 404FCC
  loc_9F40C8: LitStr "Primary"
  loc_9F40CB: FLdPr Me
  loc_9F40CE: LateIdLdVar var_94 DispID_4 0
  loc_9F40D5: CastAdVar Me
  loc_9F40D9: FStAdFunc var_98
  loc_9F40DC: FLdPr var_98
  loc_9F40E4: FFree1Ad var_98
  loc_9F40E7: FFree1Var var_94 = ""
  loc_9F40EA: ExitProcHresult
End Function

Private Function Proc_140_26_A51204(arg_C) 'A51204
  'Data Table: 404FCC
  loc_A511B0: ILdRf arg_C
  loc_A511B3: FStStrCopy var_88
  loc_A511B6: LitNothing
  loc_A511B8: CastAd
  loc_A511BB: FStAdFuncNoPop
  loc_A511BE: FLdPr Me
  loc_A511C1: MemStAd
  loc_A511C5: FFree1Ad var_8C
  loc_A511C8: New Recordset
  loc_A511CC: FStAdFuncNoPop
  loc_A511CF: FLdPr Me
  loc_A511D2: MemStAd
  loc_A511D6: FFree1Ad var_8C
  loc_A511D9: LitI4 -1
  loc_A511DE: LitI4 3
  loc_A511E3: LitI4 3
  loc_A511E8: ImpAdLdI4 MemVar_D9301C
  loc_A511EB: CVarAd
  loc_A511EF: PopAdLdVar
  loc_A511F0: ILdRf var_88
  loc_A511F3: CVarStr var_9C
  loc_A511F6: PopAdLdVar
  loc_A511F7: FLdPr Me
  loc_A511FA: MemLdPr global_64
  loc_A511FD: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A51202: ExitProcHresult
End Function

Private Function Proc_140_27_9E235C(arg_C) '9E235C
  'Data Table: 404FCC
  loc_9E2340: ILdI4 arg_C
  loc_9E2343: FStStrCopy var_88
  loc_9E2346: ILdRf var_88
  loc_9E2349: LitStr "Primary"
  loc_9E234C: EqStr
  loc_9E234E: BranchF loc_9E235B
  loc_9E2351: FLdPr Me
  loc_9E2354: MemLdStr global_60
  loc_9E2357: IStAd
  loc_9E235B: ExitProcHresult
End Function
