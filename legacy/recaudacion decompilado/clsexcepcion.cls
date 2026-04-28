VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsexcepcion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0E9E4
  'Data Table: 438360
  loc_A0E9A8: FLdRfVar var_8C
  loc_A0E9AB: FLdRfVar var_88
  loc_A0E9AE: FLdPr Me
  loc_A0E9B1: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A0E9B6: FLdPr var_88
  loc_A0E9B9:  = Me.RecordCount
  loc_A0E9BE: ILdRf var_8C
  loc_A0E9C1: LitI4 0
  loc_A0E9C6: GtI4
  loc_A0E9C7: FFree1Ad var_88
  loc_A0E9CA: BranchF loc_A0E9E3
  loc_A0E9CD: FLdRfVar var_88
  loc_A0E9D0: FLdPr Me
  loc_A0E9D3: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A0E9D8: FLdPr var_88
  loc_A0E9DB: Me.MoveFirst
  loc_A0E9E0: FFree1Ad var_88
  loc_A0E9E3: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0FEE4
  'Data Table: 438360
  loc_A0FEA8: FLdRfVar var_8C
  loc_A0FEAB: FLdRfVar var_88
  loc_A0FEAE: FLdPr Me
  loc_A0FEB1: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A0FEB6: FLdPr var_88
  loc_A0FEB9:  = Me.RecordCount
  loc_A0FEBE: ILdRf var_8C
  loc_A0FEC1: LitI4 0
  loc_A0FEC6: GtI4
  loc_A0FEC7: FFree1Ad var_88
  loc_A0FECA: BranchF loc_A0FEE3
  loc_A0FECD: FLdRfVar var_88
  loc_A0FED0: FLdPr Me
  loc_A0FED3: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A0FED8: FLdPr var_88
  loc_A0FEDB: Me.MoveLast
  loc_A0FEE0: FFree1Ad var_88
  loc_A0FEE3: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9CB90
  'Data Table: 438360
  loc_A9CAD4: FLdRfVar var_8A
  loc_A9CAD7: FLdRfVar var_88
  loc_A9CADA: FLdPr Me
  loc_A9CADD: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A9CAE2: FLdPr var_88
  loc_A9CAE5:  = Me.EOF
  loc_A9CAEA: FLdI2 var_8A
  loc_A9CAED: NotI4
  loc_A9CAEE: FLdRfVar var_94
  loc_A9CAF1: FLdRfVar var_90
  loc_A9CAF4: FLdPr Me
  loc_A9CAF7: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A9CAFC: FLdPr var_90
  loc_A9CAFF:  = Me.RecordCount
  loc_A9CB04: ILdRf var_94
  loc_A9CB07: LitI4 0
  loc_A9CB0C: GtI4
  loc_A9CB0D: AndI4
  loc_A9CB0E: FFreeAd var_88 = ""
  loc_A9CB15: BranchF loc_A9CB2E
  loc_A9CB18: FLdRfVar var_88
  loc_A9CB1B: FLdPr Me
  loc_A9CB1E: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A9CB23: FLdPr var_88
  loc_A9CB26: Me.MoveNext
  loc_A9CB2B: FFree1Ad var_88
  loc_A9CB2E: FLdRfVar var_8A
  loc_A9CB31: FLdRfVar var_88
  loc_A9CB34: FLdPr Me
  loc_A9CB37: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A9CB3C: FLdPr var_88
  loc_A9CB3F:  = Me.EOF
  loc_A9CB44: FLdI2 var_8A
  loc_A9CB47: FLdRfVar var_94
  loc_A9CB4A: FLdRfVar var_90
  loc_A9CB4D: FLdPr Me
  loc_A9CB50: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A9CB55: FLdPr var_90
  loc_A9CB58:  = Me.RecordCount
  loc_A9CB5D: ILdRf var_94
  loc_A9CB60: LitI4 0
  loc_A9CB65: GtI4
  loc_A9CB66: AndI4
  loc_A9CB67: FFreeAd var_88 = ""
  loc_A9CB6E: BranchF loc_A9CB8C
  loc_A9CB71: ImpAdCallFPR4 Beep()
  loc_A9CB76: FLdRfVar var_88
  loc_A9CB79: FLdPr Me
  loc_A9CB7C: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A9CB81: FLdPr var_88
  loc_A9CB84: Me.MoveLast
  loc_A9CB89: FFree1Ad var_88
  loc_A9CB8C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9DAF5C
  'Data Table: 438360
  loc_9DAF44: FLdRfVar var_88
  loc_9DAF47: FLdPr Me
  loc_9DAF4A: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_9DAF4F: FLdPr var_88
  loc_9DAF52: Me.MoveNext
  loc_9DAF57: FFree1Ad var_88
  loc_9DAF5A: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E84D4
  'Data Table: 438360
  loc_9E84B4: LitVar_Missing var_98
  loc_9E84B7: PopAdLdVar
  loc_9E84B8: ILdI2 iValor
  loc_9E84BB: CI4UI1
  loc_9E84BC: FLdRfVar var_88
  loc_9E84BF: FLdPr Me
  loc_9E84C2: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_9E84C7: FLdPr var_88
  loc_9E84CA: Me.Move from_stack_1, from_stack_2
  loc_9E84CF: FFree1Ad var_88
  loc_9E84D2: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A99BE8
  'Data Table: 438360
  loc_A99B2C: FLdRfVar var_8A
  loc_A99B2F: FLdRfVar var_88
  loc_A99B32: FLdPr Me
  loc_A99B35: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A99B3A: FLdPr var_88
  loc_A99B3D:  = Me.BOF
  loc_A99B42: FLdI2 var_8A
  loc_A99B45: NotI4
  loc_A99B46: FLdRfVar var_94
  loc_A99B49: FLdRfVar var_90
  loc_A99B4C: FLdPr Me
  loc_A99B4F: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A99B54: FLdPr var_90
  loc_A99B57:  = Me.RecordCount
  loc_A99B5C: ILdRf var_94
  loc_A99B5F: LitI4 0
  loc_A99B64: GtI4
  loc_A99B65: AndI4
  loc_A99B66: FFreeAd var_88 = ""
  loc_A99B6D: BranchF loc_A99B86
  loc_A99B70: FLdRfVar var_88
  loc_A99B73: FLdPr Me
  loc_A99B76: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A99B7B: FLdPr var_88
  loc_A99B7E: Me.MovePrevious
  loc_A99B83: FFree1Ad var_88
  loc_A99B86: FLdRfVar var_8A
  loc_A99B89: FLdRfVar var_88
  loc_A99B8C: FLdPr Me
  loc_A99B8F: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A99B94: FLdPr var_88
  loc_A99B97:  = Me.BOF
  loc_A99B9C: FLdI2 var_8A
  loc_A99B9F: FLdRfVar var_94
  loc_A99BA2: FLdRfVar var_90
  loc_A99BA5: FLdPr Me
  loc_A99BA8: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A99BAD: FLdPr var_90
  loc_A99BB0:  = Me.RecordCount
  loc_A99BB5: ILdRf var_94
  loc_A99BB8: LitI4 0
  loc_A99BBD: GtI4
  loc_A99BBE: AndI4
  loc_A99BBF: FFreeAd var_88 = ""
  loc_A99BC6: BranchF loc_A99BE4
  loc_A99BC9: ImpAdCallFPR4 Beep()
  loc_A99BCE: FLdRfVar var_88
  loc_A99BD1: FLdPr Me
  loc_A99BD4: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A99BD9: FLdPr var_88
  loc_A99BDC: Me.MoveFirst
  loc_A99BE1: FFree1Ad var_88
  loc_A99BE4: ExitProcHresult
  loc_A99BE5: Ary1LdRf
End Sub

Public Property Get EOF() '9F6370
  'Data Table: 438360
  loc_9F6348: FLdRfVar var_8E
  loc_9F634B: FLdRfVar var_8C
  loc_9F634E: FLdPr Me
  loc_9F6351: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_9F6356: FLdPr var_8C
  loc_9F6359:  = Me.EOF
  loc_9F635E: FLdI2 var_8E
  loc_9F6361: FStI2 var_86
  loc_9F6364: FFree1Ad var_8C
  loc_9F6367: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F625C
  'Data Table: 438360
  loc_9F6234: FLdRfVar var_8E
  loc_9F6237: FLdRfVar var_8C
  loc_9F623A: FLdPr Me
  loc_9F623D: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_9F6242: FLdPr var_8C
  loc_9F6245:  = Me.BOF
  loc_9F624A: FLdI2 var_8E
  loc_9F624D: FStI2 var_86
  loc_9F6250: FFree1Ad var_8C
  loc_9F6253: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9DECAC
  'Data Table: 438360
  loc_9DEC90: ILdI4 sOrden
  loc_9DEC93: FLdRfVar var_88
  loc_9DEC96: FLdPr Me
  loc_9DEC99: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_9DEC9E: FLdPr var_88
  loc_9DECA1: Me.Sort = from_stack_1
  loc_9DECA6: FFree1Ad var_88
  loc_9DECA9: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9E881C
  'Data Table: 438360
  loc_9E87FC: ILdI4 sCriterio
  loc_9E87FF: CVarStr var_98
  loc_9E8802: PopAdLdVar
  loc_9E8803: FLdRfVar var_88
  loc_9E8806: FLdPr Me
  loc_9E8809: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_9E880E: FLdPr var_88
  loc_9E8811: Me.Filter = from_stack_1
  loc_9E8816: FFree1Ad var_88
  loc_9E8819: ExitProcHresult
  loc_9E881A: FLdPr var_1800
End Sub

Public Sub Find(sFind) '9F6200
  'Data Table: 438360
  loc_9F61D8: LitVar_Missing var_98
  loc_9F61DB: PopAdLdVar
  loc_9F61DC: LitI4 1
  loc_9F61E1: LitI4 0
  loc_9F61E6: ILdI4 sFind
  loc_9F61E9: FLdRfVar var_88
  loc_9F61EC: FLdPr Me
  loc_9F61EF: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_9F61F4: FLdPr var_88
  loc_9F61F7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F61FC: FFree1Ad var_88
  loc_9F61FF: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F6034
  'Data Table: 438360
  loc_9F600C: FLdRfVar var_90
  loc_9F600F: FLdRfVar var_8C
  loc_9F6012: FLdPr Me
  loc_9F6015: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_9F601A: FLdPr var_8C
  loc_9F601D:  = Me.AbsolutePosition
  loc_9F6022: ILdRf var_90
  loc_9F6025: FStR4 var_88
  loc_9F6028: FFree1Ad var_8C
  loc_9F602B: ExitProcCbHresult
  loc_9F6031: SetLastSystemError
End Sub

Public Property Get RecordCount() '9F5CF8
  'Data Table: 438360
  loc_9F5CD0: FLdRfVar var_90
  loc_9F5CD3: FLdRfVar var_8C
  loc_9F5CD6: FLdPr Me
  loc_9F5CD9: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_9F5CDE: FLdPr var_8C
  loc_9F5CE1:  = Me.RecordCount
  loc_9F5CE6: ILdRf var_90
  loc_9F5CE9: FStR4 var_88
  loc_9F5CEC: FFree1Ad var_8C
  loc_9F5CEF: ExitProcCbHresult
  loc_9F5CF5: GeI4
  loc_9F5CF6: CCyI2
End Sub

Public Sub AddNew(CodiExce, DetaExce, PorcExce, TipoExce) 'AB3AC0
  'Data Table: 438360
  loc_AB3A00: ILdRf DetaExce
  loc_AB3A03: FStStrCopy var_88
  loc_AB3A06: ILdRf arg_1C
  loc_AB3A09: FStStrCopy var_8C
  loc_AB3A0C: FLdRfVar var_90
  loc_AB3A0F: FLdI2 CodiExce
  loc_AB3A12: from_stack_2v = ValidaClave(from_stack_1v)
  loc_AB3A17: ILdRf var_90
  loc_AB3A1A: LitStr vbNullString
  loc_AB3A1D: NeStr
  loc_AB3A1F: FFree1Str var_90
  loc_AB3A22: BranchF loc_AB3A30
  loc_AB3A25: LitStr "El TIPO DE EXCEPCION YA EXISTE. Reintente..."
  loc_AB3A28: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB3A2D: Branch loc_AB3ABD
  loc_AB3A30: LitStr "INSERT INTO excepcion (CodiExce, DetaExce, PorcExce, TipoExce) VALUES ("
  loc_AB3A33: FLdI2 CodiExce
  loc_AB3A36: CStrUI1
  loc_AB3A38: FStStrNoPop var_90
  loc_AB3A3B: ConcatStr
  loc_AB3A3C: FStStrNoPop var_94
  loc_AB3A3F: LitStr ",'"
  loc_AB3A42: ConcatStr
  loc_AB3A43: FStStrNoPop var_98
  loc_AB3A46: ILdRf var_88
  loc_AB3A49: ConcatStr
  loc_AB3A4A: FStStrNoPop var_9C
  loc_AB3A4D: LitStr "',"
  loc_AB3A50: ConcatStr
  loc_AB3A51: FStStrNoPop var_A4
  loc_AB3A54: LitI4 0
  loc_AB3A59: LitI4 -1
  loc_AB3A5E: LitI4 1
  loc_AB3A63: LitStr "."
  loc_AB3A66: LitStr ","
  loc_AB3A69: FLdFPR8 PorcExce
  loc_AB3A6C: CStrR8
  loc_AB3A6E: FStStrNoPop var_A0
  loc_AB3A71: ImpAdCallI2 Replace(, , , , , )
  loc_AB3A76: FStStrNoPop var_A8
  loc_AB3A79: ConcatStr
  loc_AB3A7A: FStStrNoPop var_AC
  loc_AB3A7D: LitStr ",'"
  loc_AB3A80: ConcatStr
  loc_AB3A81: FStStrNoPop var_B0
  loc_AB3A84: ILdRf var_8C
  loc_AB3A87: ConcatStr
  loc_AB3A88: FStStrNoPop var_B4
  loc_AB3A8B: LitStr "');"
  loc_AB3A8E: ConcatStr
  loc_AB3A8F: FStStrNoPop var_B8
  loc_AB3A92: Call EjecutarRs2(from_stack_1v)
  loc_AB3A97: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_AB3AB0: Call Requery()
  loc_AB3AB5: FLdI2 CodiExce
  loc_AB3AB8: Call Encontrar(from_stack_1v)
  loc_AB3ABD: ExitProcHresult
End Sub

Public Sub Modificar(CodiExce, DetaExce, PorcExce, TipoExce) 'AB067C
  'Data Table: 438360
  loc_AB05C4: ILdRf DetaExce
  loc_AB05C7: FStStrCopy var_88
  loc_AB05CA: ILdRf arg_1C
  loc_AB05CD: FStStrCopy var_8C
  loc_AB05D0: FLdRfVar var_90
  loc_AB05D3: FLdI2 CodiExce
  loc_AB05D6: from_stack_2v = ValidaClave(from_stack_1v)
  loc_AB05DB: ILdRf var_90
  loc_AB05DE: LitStr vbNullString
  loc_AB05E1: EqStr
  loc_AB05E3: FFree1Str var_90
  loc_AB05E6: BranchF loc_AB05F4
  loc_AB05E9: LitStr "El EXCEPCION NO EXISTE. Reintente..."
  loc_AB05EC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB05F1: Branch loc_AB066B
  loc_AB05F4: LitStr " UPDATE excepcion SET DetaExce ='"
  loc_AB05F7: ILdRf var_88
  loc_AB05FA: ConcatStr
  loc_AB05FB: FStStrNoPop var_90
  loc_AB05FE: LitStr "', PorcExce = "
  loc_AB0601: ConcatStr
  loc_AB0602: FStStrNoPop var_98
  loc_AB0605: LitI4 0
  loc_AB060A: LitI4 -1
  loc_AB060F: LitI4 1
  loc_AB0614: LitStr "."
  loc_AB0617: LitStr ","
  loc_AB061A: FLdFPR8 PorcExce
  loc_AB061D: CStrR8
  loc_AB061F: FStStrNoPop var_94
  loc_AB0622: ImpAdCallI2 Replace(, , , , , )
  loc_AB0627: FStStrNoPop var_9C
  loc_AB062A: ConcatStr
  loc_AB062B: FStStrNoPop var_A0
  loc_AB062E: LitStr ", TipoExce = '"
  loc_AB0631: ConcatStr
  loc_AB0632: FStStrNoPop var_A4
  loc_AB0635: ILdRf var_8C
  loc_AB0638: ConcatStr
  loc_AB0639: FStStrNoPop var_A8
  loc_AB063C: LitStr "' WHERE CodiExce="
  loc_AB063F: ConcatStr
  loc_AB0640: FStStrNoPop var_AC
  loc_AB0643: FLdI2 CodiExce
  loc_AB0646: CStrUI1
  loc_AB0648: FStStrNoPop var_B0
  loc_AB064B: ConcatStr
  loc_AB064C: FStStrNoPop var_B4
  loc_AB064F: Call EjecutarRs2(from_stack_1v)
  loc_AB0654: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_AB066B: Call Requery()
  loc_AB0670: FLdI2 CodiExce
  loc_AB0673: Call Encontrar(from_stack_1v)
  loc_AB0678: ExitProcHresult
  loc_AB0679: LitI2FP 1
End Sub

Public Sub Delete() 'A21968
  'Data Table: 438360
  loc_A21920: FLdRfVar var_8C
  loc_A21923: FLdRfVar var_88
  loc_A21926: FLdPr Me
  loc_A21929: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A2192E: FLdPr var_88
  loc_A21931:  = Me.RecordCount
  loc_A21936: ILdRf var_8C
  loc_A21939: LitI4 0
  loc_A2193E: GtI4
  loc_A2193F: FFree1Ad var_88
  loc_A21942: BranchF loc_A21965
  loc_A21945: LitI4 1
  loc_A2194A: FLdRfVar var_88
  loc_A2194D: FLdPr Me
  loc_A21950: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A21955: FLdPr var_88
  loc_A21958: Me.Delete
  loc_A2195D: FFree1Ad var_88
  loc_A21960: Call MoveNext()
  loc_A21965: ExitProcHresult
End Sub

Public Sub Requery() 'A00B3C
  'Data Table: 438360
  loc_A00B0C: LitI4 -1
  loc_A00B11: FLdRfVar var_88
  loc_A00B14: FLdPr Me
  loc_A00B17: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A00B1C: FLdPr var_88
  loc_A00B1F: Me.Requery from_stack_1
  loc_A00B24: FFree1Ad var_88
  loc_A00B27: LitVarStr var_98, "Primary"
  loc_A00B2C: PopAdLdVar
  loc_A00B2D: FLdPr Me
  loc_A00B30: LateIdCall
  loc_A00B38: ExitProcHresult
End Sub

Public Sub Update() 'A21A5C
  'Data Table: 438360
  loc_A21A18: FLdRfVar var_88
  loc_A21A1B: FLdPr Me
  loc_A21A1E: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A21A23: FLdZeroAd var_88
  loc_A21A26: FStAdFunc var_8C
  loc_A21A29: LitI4 3
  loc_A21A2E: FLdPr var_8C
  loc_A21A31: Me.UpdateBatch
  loc_A21A36: FLdRfVar var_90
  loc_A21A39: FLdPr var_8C
  loc_A21A3C:  = Me.EditMode
  loc_A21A41: ILdRf var_90
  loc_A21A44: LitI4 2
  loc_A21A49: EqI4
  loc_A21A4A: BranchF loc_A21A52
  loc_A21A4D: Call MoveLast()
  loc_A21A52: LitNothing
  loc_A21A54: FStAd var_8C 
  loc_A21A58: ExitProcHresult
End Sub

Public Sub Cancel() 'A4A274
  'Data Table: 438360
  loc_A4A220: FLdRfVar var_88
  loc_A4A223: FLdPr Me
  loc_A4A226: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A4A22B: FLdZeroAd var_88
  loc_A4A22E: FStAdFunc var_8C
  loc_A4A231: FLdRfVar var_90
  loc_A4A234: FLdPr var_8C
  loc_A4A237:  = Me.RecordCount
  loc_A4A23C: ILdRf var_90
  loc_A4A23F: LitI4 0
  loc_A4A244: GtI4
  loc_A4A245: BranchF loc_A4A26C
  loc_A4A248: FLdPr var_8C
  loc_A4A24B: Me.CancelUpdate
  loc_A4A250: FLdRfVar var_90
  loc_A4A253: FLdPr var_8C
  loc_A4A256:  = Me.EditMode
  loc_A4A25B: ILdRf var_90
  loc_A4A25E: LitI4 2
  loc_A4A263: EqI4
  loc_A4A264: BranchF loc_A4A26C
  loc_A4A267: Call MoveFirst()
  loc_A4A26C: LitNothing
  loc_A4A26E: FStAd var_8C 
  loc_A4A272: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FDB34
  'Data Table: 438360
  loc_9FDB08: FLdRfVar var_90
  loc_9FDB0B: FLdRfVar var_8C
  loc_9FDB0E: FLdPr Me
  loc_9FDB11: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_9FDB16: FLdPr var_8C
  loc_9FDB19:  = Me.EditMode
  loc_9FDB1E: ILdRf var_90
  loc_9FDB21: LitI4 0
  loc_9FDB26: NeI4
  loc_9FDB27: FStI2 var_86
  loc_9FDB2A: FFree1Ad var_8C
  loc_9FDB2D: ExitProcCbHresult
  loc_9FDB33: Error
End Sub

Public Sub RedefineRS(sSelect) 'A722EC
  'Data Table: 438360
  loc_A72278: ILdRf sSelect
  loc_A7227B: FStStrCopy var_88
  loc_A7227E: LitNothing
  loc_A72280: CastAd
  loc_A72283: FStAdFuncNoPop
  loc_A72286: FLdPr Me
  loc_A72289: Call clsexcepcion.global_4424424Set(from_stack_1v)
  loc_A7228E: FFree1Ad var_8C
  loc_A72291: New Recordset
  loc_A72295: FStAdFuncNoPop
  loc_A72298: FLdPr Me
  loc_A7229B: Call clsexcepcion.global_4424424Set(from_stack_1v)
  loc_A722A0: FFree1Ad var_8C
  loc_A722A3: LitI4 -1
  loc_A722A8: LitI4 3
  loc_A722AD: LitI4 3
  loc_A722B2: ImpAdLdI4 MemVar_D9301C
  loc_A722B5: CVarAd
  loc_A722B9: PopAdLdVar
  loc_A722BA: ILdRf var_88
  loc_A722BD: CVarStr var_9C
  loc_A722C0: PopAdLdVar
  loc_A722C1: FLdRfVar var_8C
  loc_A722C4: FLdPr Me
  loc_A722C7: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A722CC: FLdPr var_8C
  loc_A722CF: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A722D4: FFree1Ad var_8C
  loc_A722D7: LitVarStr var_9C, "Primary"
  loc_A722DC: PopAdLdVar
  loc_A722DD: FLdPr Me
  loc_A722E0: LateIdCall
  loc_A722E8: ExitProcHresult
  loc_A722E9: CRec2Uni arg_0
End Sub

Public Sub EjecutarRs2(sSelect) 'A5A918
  'Data Table: 438360
  loc_A5A8B8: ILdRf sSelect
  loc_A5A8BB: FStStrCopy var_88
  loc_A5A8BE: LitNothing
  loc_A5A8C0: CastAd
  loc_A5A8C3: FStAdFuncNoPop
  loc_A5A8C6: FLdPr Me
  loc_A5A8C9: Call clsexcepcion.global_4424424Set(from_stack_1v)
  loc_A5A8CE: FFree1Ad var_8C
  loc_A5A8D1: New Recordset
  loc_A5A8D5: FStAdFuncNoPop
  loc_A5A8D8: FLdPr Me
  loc_A5A8DB: Call clsexcepcion.global_4424424Set(from_stack_1v)
  loc_A5A8E0: FFree1Ad var_8C
  loc_A5A8E3: LitI4 -1
  loc_A5A8E8: LitI4 3
  loc_A5A8ED: LitI4 3
  loc_A5A8F2: ImpAdLdI4 MemVar_D9301C
  loc_A5A8F5: CVarAd
  loc_A5A8F9: PopAdLdVar
  loc_A5A8FA: ILdRf var_88
  loc_A5A8FD: CVarStr var_9C
  loc_A5A900: PopAdLdVar
  loc_A5A901: FLdRfVar var_8C
  loc_A5A904: FLdPr Me
  loc_A5A907: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A5A90C: FLdPr var_8C
  loc_A5A90F: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5A914: FFree1Ad var_8C
  loc_A5A917: ExitProcHresult
End Sub

Public Sub Encontrar(CodiExce) '9EF924
  'Data Table: 438360
  loc_9EF904: LitStr "CodiExce = "
  loc_9EF907: FLdI2 CodiExce
  loc_9EF90A: CStrUI1
  loc_9EF90C: FStStrNoPop var_88
  loc_9EF90F: ConcatStr
  loc_9EF910: PopTmpLdAdStr
  loc_9EF914: Call Find(from_stack_1v)
  loc_9EF919: FFreeStr var_88 = ""
  loc_9EF920: ExitProcHresult
End Sub

Public Property Get DataSource() 'A08E7C
  'Data Table: 438360
  loc_A08E4C: ZeroRetVal
  loc_A08E4E: FLdRfVar var_90
  loc_A08E51: FLdRfVar var_8C
  loc_A08E54: FLdPr Me
  loc_A08E57: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A08E5C: FLdPr var_8C
  loc_A08E5F:  = Me.DataSource
  loc_A08E64: ILdRf var_90
  loc_A08E67: CastAd
  loc_A08E6A: FStAdFunc var_88
  loc_A08E6D: FFreeAd var_8C = ""
  loc_A08E74: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9FA870
  'Data Table: 438360
  loc_9FA848: FLdRfVar var_90
  loc_9FA84B: FLdRfVar var_8C
  loc_9FA84E: FLdPr Me
  loc_9FA851: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_9FA856: FLdPr var_8C
  loc_9FA859:  = Me.EditMode
  loc_9FA85E: ILdRf var_90
  loc_9FA861: FStR4 var_88
  loc_9FA864: FFree1Ad var_8C
  loc_9FA867: ExitProcCbHresult
End Sub

Public Property Get CodiExce() 'A4A384
  'Data Table: 438360
  loc_A4A338: FLdRfVar var_B4
  loc_A4A33B: FLdRfVar var_A4
  loc_A4A33E: LitVarStr var_A0, "CodiExce"
  loc_A4A343: PopAdLdVar
  loc_A4A344: FLdRfVar var_90
  loc_A4A347: FLdRfVar var_8C
  loc_A4A34A: FLdPr Me
  loc_A4A34D: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A4A352: FLdPr var_8C
  loc_A4A355:  = Me.Fields
  loc_A4A35A: FLdPr var_90
  loc_A4A35D: from_stack_2 = Me.Item(from_stack_1)
  loc_A4A362: FLdPr var_A4
  loc_A4A365:  = Me.Value
  loc_A4A36A: FLdRfVar var_B4
  loc_A4A36D: CI2Var
  loc_A4A36E: FStI2 var_86
  loc_A4A371: FFreeAd var_8C = "": var_90 = ""
  loc_A4A37A: FFree1Var var_B4 = ""
  loc_A4A37D: ExitProcCbHresult
End Sub

Public Property Let CodiExce(vDato) '9EF980
  'Data Table: 438360
  loc_9EF95C: FLdI2 vDato
  loc_9EF95F: CVarI2 var_A8
  loc_9EF962: PopAdLdVar
  loc_9EF963: LitVarStr var_98, "CodiExce"
  loc_9EF968: PopAdLdVar
  loc_9EF969: FLdRfVar var_88
  loc_9EF96C: FLdPr Me
  loc_9EF96F: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_9EF974: FLdPr var_88
  loc_9EF977: Me.Collect = from_stack_1
  loc_9EF97C: FFree1Ad var_88
  loc_9EF97F: ExitProcHresult
End Sub

Public Property Get DetaExce() 'A550B0
  'Data Table: 438360
  loc_A55060: ZeroRetVal
  loc_A55062: FLdRfVar var_B4
  loc_A55065: FLdRfVar var_A4
  loc_A55068: LitVarStr var_A0, "DetaExce"
  loc_A5506D: PopAdLdVar
  loc_A5506E: FLdRfVar var_90
  loc_A55071: FLdRfVar var_8C
  loc_A55074: FLdPr Me
  loc_A55077: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A5507C: FLdPr var_8C
  loc_A5507F:  = Me.Fields
  loc_A55084: FLdPr var_90
  loc_A55087: from_stack_2 = Me.Item(from_stack_1)
  loc_A5508C: FLdPr var_A4
  loc_A5508F:  = Me.Value
  loc_A55094: FLdRfVar var_B4
  loc_A55097: CStrVarTmp
  loc_A55098: FStStr var_88
  loc_A5509B: FFreeAd var_8C = "": var_90 = ""
  loc_A550A4: FFree1Var var_B4 = ""
  loc_A550A7: ExitProcCbHresult
End Sub

Public Property Let DetaExce(vDato) 'A005C0
  'Data Table: 438360
  loc_A00594: ILdRf vDato
  loc_A00597: FStStrCopy var_88
  loc_A0059A: ILdRf var_88
  loc_A0059D: CVarStr var_AC
  loc_A005A0: PopAdLdVar
  loc_A005A1: LitVarStr var_9C, "DetaExce"
  loc_A005A6: PopAdLdVar
  loc_A005A7: FLdRfVar var_8C
  loc_A005AA: FLdPr Me
  loc_A005AD: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A005B2: FLdPr var_8C
  loc_A005B5: Me.Collect = from_stack_1
  loc_A005BA: FFree1Ad var_8C
  loc_A005BD: ExitProcHresult
  loc_A005BE: FnAbsCy
End Sub

Public Property Get PorcExce() 'A4A410
  'Data Table: 438360
  loc_A4A3C4: FLdRfVar var_B8
  loc_A4A3C7: FLdRfVar var_A8
  loc_A4A3CA: LitVarStr var_A4, "PorcExce"
  loc_A4A3CF: PopAdLdVar
  loc_A4A3D0: FLdRfVar PorcExce
  loc_A4A3D3: FLdRfVar var_90
  loc_A4A3D6: FLdPr Me
  loc_A4A3D9: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A4A3DE: FLdPr var_90
  loc_A4A3E1:  = Me.Fields
  loc_A4A3E6: FLdPr PorcExce
  loc_A4A3E9: from_stack_2 = Me.Item(from_stack_1)
  loc_A4A3EE: FLdPr var_A8
  loc_A4A3F1:  = Me.Value
  loc_A4A3F6: FLdRfVar var_B8
  loc_A4A3F9: CR4Var
  loc_A4A3FA: FStFPR8 var_8C
  loc_A4A3FD: FFreeAd var_90 = "": PorcExce = ""
  loc_A4A406: FFree1Var var_B8 = ""
  loc_A4A409: ExitProcCbHresult
End Sub

Public Property Let PorcExce(vDato) '9F7FD4
  'Data Table: 438360
  loc_9F7FAC: FLdFPR8 vDato
  loc_9F7FAF: CVarR8
  loc_9F7FB3: PopAdLdVar
  loc_9F7FB4: LitVarStr var_98, "PorcExce"
  loc_9F7FB9: PopAdLdVar
  loc_9F7FBA: FLdRfVar var_88
  loc_9F7FBD: FLdPr Me
  loc_9F7FC0: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_9F7FC5: FLdPr var_88
  loc_9F7FC8: Me.Collect = from_stack_1
  loc_9F7FCD: FFree1Ad var_88
  loc_9F7FD0: ExitProcHresult
End Sub

Public Property Get TipoExce() 'A56FE8
  'Data Table: 438360
  loc_A56F98: ZeroRetVal
  loc_A56F9A: FLdRfVar var_B4
  loc_A56F9D: FLdRfVar var_A4
  loc_A56FA0: LitVarStr var_A0, "TipoExce"
  loc_A56FA5: PopAdLdVar
  loc_A56FA6: FLdRfVar var_90
  loc_A56FA9: FLdRfVar var_8C
  loc_A56FAC: FLdPr Me
  loc_A56FAF: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A56FB4: FLdPr var_8C
  loc_A56FB7:  = Me.Fields
  loc_A56FBC: FLdPr var_90
  loc_A56FBF: from_stack_2 = Me.Item(from_stack_1)
  loc_A56FC4: FLdPr var_A4
  loc_A56FC7:  = Me.Value
  loc_A56FCC: FLdRfVar var_B4
  loc_A56FCF: CStrVarTmp
  loc_A56FD0: FStStr var_88
  loc_A56FD3: FFreeAd var_8C = "": var_90 = ""
  loc_A56FDC: FFree1Var var_B4 = ""
  loc_A56FDF: ExitProcCbHresult
End Sub

Public Property Let TipoExce(vDato) 'A00430
  'Data Table: 438360
  loc_A00404: ILdRf vDato
  loc_A00407: FStStrCopy var_88
  loc_A0040A: ILdRf var_88
  loc_A0040D: CVarStr var_AC
  loc_A00410: PopAdLdVar
  loc_A00411: LitVarStr var_9C, "TipoExce"
  loc_A00416: PopAdLdVar
  loc_A00417: FLdRfVar var_8C
  loc_A0041A: FLdPr Me
  loc_A0041D: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A00422: FLdPr var_8C
  loc_A00425: Me.Collect = from_stack_1
  loc_A0042A: FFree1Ad var_8C
  loc_A0042D: ExitProcHresult
End Sub

Public Function ValidaClave(CodiExce) 'A530B0
  'Data Table: 438360
  loc_A53060: ZeroRetVal
  loc_A53062: LitStr "SELECT CodiExce FROM excepcion WHERE CodiExce = "
  loc_A53065: FLdI2 CodiExce
  loc_A53068: CStrUI1
  loc_A5306A: FStStrNoPop var_8C
  loc_A5306D: ConcatStr
  loc_A5306E: FStStrNoPop var_90
  loc_A53071: Call EjecutarRs2(from_stack_1v)
  loc_A53076: FFreeStr var_8C = ""
  loc_A5307D: FLdRfVar var_98
  loc_A53080: FLdRfVar ValidaClave
  loc_A53083: FLdPr Me
  loc_A53086: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_A5308B: FLdPr ValidaClave
  loc_A5308E:  = Me.RecordCount
  loc_A53093: ILdRf var_98
  loc_A53096: LitI4 0
  loc_A5309B: GtI4
  loc_A5309C: FFree1Ad ValidaClave
  loc_A5309F: BranchF loc_A530A8
  loc_A530A2: LitStr "El TIPO de EXCEPCION YA EXISTE. Reintente..."
  loc_A530A5: FStStrCopy var_88
  loc_A530A8: ExitProcCbHresult
End Function

Public Function NuevoRegistro() 'ABA140
  'Data Table: 438360
  loc_ABA050: New Recordset
  loc_ABA054: FStAdFuncNoPop
  loc_ABA057: FLdPr Me
  loc_ABA05A: Call clsexcepcion.global_4424424Set(from_stack_1v)
  loc_ABA05F: FFree1Ad var_8C
  loc_ABA062: LitI4 -1
  loc_ABA067: LitI4 3
  loc_ABA06C: LitI4 3
  loc_ABA071: ImpAdLdI4 MemVar_D9301C
  loc_ABA074: CVarAd
  loc_ABA078: PopAdLdVar
  loc_ABA079: LitVarStr var_9C, "SELECT CodiExce FROM excepcion ORDER BY CodiExce DESC "
  loc_ABA07E: PopAdLdVar
  loc_ABA07F: FLdRfVar var_8C
  loc_ABA082: FLdPr Me
  loc_ABA085: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_ABA08A: FLdPr var_8C
  loc_ABA08D: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_ABA092: FFree1Ad var_8C
  loc_ABA095: FLdRfVar var_B0
  loc_ABA098: FLdRfVar var_8C
  loc_ABA09B: FLdPr Me
  loc_ABA09E: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_ABA0A3: FLdPr var_8C
  loc_ABA0A6:  = Me.RecordCount
  loc_ABA0AB: ILdRf var_B0
  loc_ABA0AE: LitI4 0
  loc_ABA0B3: GtI4
  loc_ABA0B4: FFree1Ad var_8C
  loc_ABA0B7: BranchF loc_ABA109
  loc_ABA0BA: FLdRfVar var_C8
  loc_ABA0BD: FLdRfVar var_B8
  loc_ABA0C0: LitVarStr var_9C, "CodiExce"
  loc_ABA0C5: PopAdLdVar
  loc_ABA0C6: FLdRfVar var_B4
  loc_ABA0C9: FLdRfVar var_8C
  loc_ABA0CC: FLdPr Me
  loc_ABA0CF: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_ABA0D4: FLdPr var_8C
  loc_ABA0D7:  = Me.Fields
  loc_ABA0DC: FLdPr var_B4
  loc_ABA0DF: from_stack_2 = Me.Item(from_stack_1)
  loc_ABA0E4: FLdPr var_B8
  loc_ABA0E7:  = Me.Value
  loc_ABA0EC: FLdRfVar var_C8
  loc_ABA0EF: FnCLngVar
  loc_ABA0F1: LitI4 1
  loc_ABA0F6: AddI4
  loc_ABA0F7: FStR4 var_88
  loc_ABA0FA: FFreeAd var_8C = "": var_B4 = ""
  loc_ABA103: FFree1Var var_C8 = ""
  loc_ABA106: Branch loc_ABA111
  loc_ABA109: LitI4 1
  loc_ABA10E: FStR4 var_88
  loc_ABA111: FLdRfVar var_8C
  loc_ABA114: FLdPr Me
  loc_ABA117: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_ABA11C: FLdPr var_8C
  loc_ABA11F: Me.Close
  loc_ABA124: FFree1Ad var_8C
  loc_ABA127: LitNothing
  loc_ABA129: CastAd
  loc_ABA12C: FStAdFuncNoPop
  loc_ABA12F: FLdPr Me
  loc_ABA132: Call clsexcepcion.global_4424424Set(from_stack_1v)
  loc_ABA137: FFree1Ad var_8C
  loc_ABA13A: ExitProcCbHresult
End Function

Public Function CodiExceValidate(sCodiExce) 'AAEFF0
  'Data Table: 438360
  loc_AAEF1C: ILdRf sCodiExce
  loc_AAEF1F: FStStrCopy var_8C
  loc_AAEF22: ZeroRetVal
  loc_AAEF24: LitI2_Byte 0
  loc_AAEF26: LitI2_Byte 0
  loc_AAEF28: ILdRf var_8C
  loc_AAEF2B: LitStr "el Codigo del tipo de documento"
  loc_AAEF2E: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_AAEF33: FStStr var_88
  loc_AAEF36: ILdRf var_88
  loc_AAEF39: LitStr vbNullString
  loc_AAEF3C: NeStr
  loc_AAEF3E: BranchF loc_AAEF47
  loc_AAEF41: ExitProcCbHresult
  loc_AAEF47: New Recordset
  loc_AAEF4B: FStAdFuncNoPop
  loc_AAEF4E: FLdPr Me
  loc_AAEF51: Call clsexcepcion.global_4424424Set(from_stack_1v)
  loc_AAEF56: FFree1Ad var_90
  loc_AAEF59: LitI4 -1
  loc_AAEF5E: LitI4 3
  loc_AAEF63: LitI4 3
  loc_AAEF68: ImpAdLdI4 MemVar_D9301C
  loc_AAEF6B: CVarAd
  loc_AAEF6F: PopAdLdVar
  loc_AAEF70: LitStr "SELECT * FROM excepcion WHERE CodiExce = "
  loc_AAEF73: ILdRf var_8C
  loc_AAEF76: ConcatStr
  loc_AAEF77: CVarStr var_A0
  loc_AAEF7A: PopAdLdVar
  loc_AAEF7B: FLdRfVar var_90
  loc_AAEF7E: FLdPr Me
  loc_AAEF81: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_AAEF86: FLdPr var_90
  loc_AAEF89: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_AAEF8E: FFree1Ad var_90
  loc_AAEF91: FFree1Var var_A0 = ""
  loc_AAEF94: FLdRfVar var_B4
  loc_AAEF97: FLdRfVar var_90
  loc_AAEF9A: FLdPr Me
  loc_AAEF9D: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_AAEFA2: FLdPr var_90
  loc_AAEFA5:  = Me.RecordCount
  loc_AAEFAA: ILdRf var_B4
  loc_AAEFAD: LitI4 0
  loc_AAEFB2: EqI4
  loc_AAEFB3: FFree1Ad var_90
  loc_AAEFB6: BranchF loc_AAEFBF
  loc_AAEFB9: LitStr "El CODIGO del Tipo de EXCEPCION no existe. Reintente..."
  loc_AAEFBC: FStStrCopy var_88
  loc_AAEFBF: FLdRfVar var_90
  loc_AAEFC2: FLdPr Me
  loc_AAEFC5: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_AAEFCA: FLdPr var_90
  loc_AAEFCD: Me.Close
  loc_AAEFD2: FFree1Ad var_90
  loc_AAEFD5: LitNothing
  loc_AAEFD7: CastAd
  loc_AAEFDA: FStAdFuncNoPop
  loc_AAEFDD: FLdPr Me
  loc_AAEFE0: Call clsexcepcion.global_4424424Set(from_stack_1v)
  loc_AAEFE5: FFree1Ad var_90
  loc_AAEFE8: ExitProcCbHresult
End Function

Public Function BuscaDetalleExcepcion(iCodiExce) 'AC45AC
  'Data Table: 438360
  loc_AC44B0: ZeroRetVal
  loc_AC44B2: New Recordset
  loc_AC44B6: FStAdFuncNoPop
  loc_AC44B9: FLdPr Me
  loc_AC44BC: Call clsexcepcion.global_4424424Set(from_stack_1v)
  loc_AC44C1: FFree1Ad var_8C
  loc_AC44C4: LitI4 -1
  loc_AC44C9: LitI4 3
  loc_AC44CE: LitI4 3
  loc_AC44D3: ImpAdLdI4 MemVar_D9301C
  loc_AC44D6: CVarAd
  loc_AC44DA: PopAdLdVar
  loc_AC44DB: LitStr "SELECT * FROM excepcion WHERE CodiExce = "
  loc_AC44DE: FLdI2 iCodiExce
  loc_AC44E1: CStrUI1
  loc_AC44E3: FStStrNoPop var_90
  loc_AC44E6: ConcatStr
  loc_AC44E7: CVarStr var_A0
  loc_AC44EA: PopAdLdVar
  loc_AC44EB: FLdRfVar var_8C
  loc_AC44EE: FLdPr Me
  loc_AC44F1: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_AC44F6: FLdPr var_8C
  loc_AC44F9: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_AC44FE: FFree1Str var_90
  loc_AC4501: FFree1Ad var_8C
  loc_AC4504: FFree1Var var_A0 = ""
  loc_AC4507: FLdRfVar var_B4
  loc_AC450A: FLdRfVar var_8C
  loc_AC450D: FLdPr Me
  loc_AC4510: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_AC4515: FLdPr var_8C
  loc_AC4518:  = Me.RecordCount
  loc_AC451D: ILdRf var_B4
  loc_AC4520: LitI4 1
  loc_AC4525: EqI4
  loc_AC4526: FFree1Ad var_8C
  loc_AC4529: BranchF loc_AC4574
  loc_AC452C: FLdRfVar var_A0
  loc_AC452F: FLdRfVar var_BC
  loc_AC4532: LitVarStr var_B0, "DetaExce"
  loc_AC4537: PopAdLdVar
  loc_AC4538: FLdRfVar var_B8
  loc_AC453B: FLdRfVar var_8C
  loc_AC453E: FLdPr Me
  loc_AC4541: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_AC4546: FLdPr var_8C
  loc_AC4549:  = Me.Fields
  loc_AC454E: FLdPr var_B8
  loc_AC4551: from_stack_2 = Me.Item(from_stack_1)
  loc_AC4556: FLdPr var_BC
  loc_AC4559:  = Me.Value
  loc_AC455E: FLdRfVar var_A0
  loc_AC4561: CStrVarTmp
  loc_AC4562: FStStr var_88
  loc_AC4565: FFreeAd var_8C = "": var_B8 = ""
  loc_AC456E: FFree1Var var_A0 = ""
  loc_AC4571: Branch loc_AC457A
  loc_AC4574: LitStr vbNullString
  loc_AC4577: FStStrCopy var_88
  loc_AC457A: FLdRfVar var_8C
  loc_AC457D: FLdPr Me
  loc_AC4580: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_AC4585: FLdPr var_8C
  loc_AC4588: Me.Close
  loc_AC458D: FFree1Ad var_8C
  loc_AC4590: LitNothing
  loc_AC4592: CastAd
  loc_AC4595: FStAdFuncNoPop
  loc_AC4598: FLdPr Me
  loc_AC459B: Call clsexcepcion.global_4424424Set(from_stack_1v)
  loc_AC45A0: FFree1Ad var_8C
  loc_AC45A3: ExitProcCbHresult
End Function

Public Function BuscaPorcentajeExcepcion(CodiExce) 'AC14A8
  'Data Table: 438360
  loc_AC13B0: New Recordset
  loc_AC13B4: FStAdFuncNoPop
  loc_AC13B7: FLdPr Me
  loc_AC13BA: Call clsexcepcion.global_4424424Set(from_stack_1v)
  loc_AC13BF: FFree1Ad var_90
  loc_AC13C2: LitI4 -1
  loc_AC13C7: LitI4 3
  loc_AC13CC: LitI4 3
  loc_AC13D1: ImpAdLdI4 MemVar_D9301C
  loc_AC13D4: CVarAd
  loc_AC13D8: PopAdLdVar
  loc_AC13D9: LitStr "SELECT * FROM excepcion WHERE CodiExce = "
  loc_AC13DC: FLdI2 CodiExce
  loc_AC13DF: CStrUI1
  loc_AC13E1: FStStrNoPop BuscaPorcentajeExcepcion
  loc_AC13E4: ConcatStr
  loc_AC13E5: CVarStr var_A4
  loc_AC13E8: PopAdLdVar
  loc_AC13E9: FLdRfVar var_90
  loc_AC13EC: FLdPr Me
  loc_AC13EF: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_AC13F4: FLdPr var_90
  loc_AC13F7: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_AC13FC: FFree1Str BuscaPorcentajeExcepcion
  loc_AC13FF: FFree1Ad var_90
  loc_AC1402: FFree1Var var_A4 = ""
  loc_AC1405: FLdRfVar var_B8
  loc_AC1408: FLdRfVar var_90
  loc_AC140B: FLdPr Me
  loc_AC140E: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_AC1413: FLdPr var_90
  loc_AC1416:  = Me.RecordCount
  loc_AC141B: ILdRf var_B8
  loc_AC141E: LitI4 1
  loc_AC1423: EqI4
  loc_AC1424: FFree1Ad var_90
  loc_AC1427: BranchF loc_AC1472
  loc_AC142A: FLdRfVar var_A4
  loc_AC142D: FLdRfVar var_C0
  loc_AC1430: LitVarStr var_B4, "PorcExce"
  loc_AC1435: PopAdLdVar
  loc_AC1436: FLdRfVar var_BC
  loc_AC1439: FLdRfVar var_90
  loc_AC143C: FLdPr Me
  loc_AC143F: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_AC1444: FLdPr var_90
  loc_AC1447:  = Me.Fields
  loc_AC144C: FLdPr var_BC
  loc_AC144F: from_stack_2 = Me.Item(from_stack_1)
  loc_AC1454: FLdPr var_C0
  loc_AC1457:  = Me.Value
  loc_AC145C: FLdRfVar var_A4
  loc_AC145F: CR4Var
  loc_AC1460: FStFPR8 var_8C
  loc_AC1463: FFreeAd var_90 = "": var_BC = ""
  loc_AC146C: FFree1Var var_A4 = ""
  loc_AC146F: Branch loc_AC1478
  loc_AC1472: LitI2_Byte 0
  loc_AC1474: CR8I2
  loc_AC1475: FStFPR8 var_8C
  loc_AC1478: FLdRfVar var_90
  loc_AC147B: FLdPr Me
  loc_AC147E: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_AC1483: FLdPr var_90
  loc_AC1486: Me.Close
  loc_AC148B: FFree1Ad var_90
  loc_AC148E: LitNothing
  loc_AC1490: CastAd
  loc_AC1493: FStAdFuncNoPop
  loc_AC1496: FLdPr Me
  loc_AC1499: Call clsexcepcion.global_4424424Set(from_stack_1v)
  loc_AC149E: FFree1Ad var_90
  loc_AC14A1: ExitProcCbHresult
End Function

Public Sub CreaTemporalExcepciones() 'B26720
  'Data Table: 438360
  loc_B2648C: New Recordset
  loc_B26490: FStAdFuncNoPop
  loc_B26493: FLdPr Me
  loc_B26496: Call clsexcepcion.global_4424424Set(from_stack_1v)
  loc_B2649B: FFree1Ad var_90
  loc_B2649E: FLdRfVar var_90
  loc_B264A1: FLdPr Me
  loc_B264A4: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_B264A9: FLdZeroAd var_90
  loc_B264AC: FStAdFunc var_94
  loc_B264AF: LitI4 -1
  loc_B264B4: LitI4 3
  loc_B264B9: LitI4 3
  loc_B264BE: ImpAdLdI4 MemVar_D9301C
  loc_B264C1: CVarAd
  loc_B264C5: PopAdLdVar
  loc_B264C6: LitVarStr var_A4, "DROP TEMPORARY TABLE IF EXISTS tmp_Exce"
  loc_B264CB: PopAdLdVar
  loc_B264CC: FLdPr var_94
  loc_B264CF: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_B264D4: LitI4 -1
  loc_B264D9: LitI4 3
  loc_B264DE: LitI4 3
  loc_B264E3: ImpAdLdI4 MemVar_D9301C
  loc_B264E6: CVarAd
  loc_B264EA: PopAdLdVar
  loc_B264EB: LitStr "CREATE TEMPORARY TABLE tmp_Exce ("
  loc_B264EE: LitStr "odiOfic` tinyint(2) unsigned NOT NULL default '0',"
  loc_B264F1: ConcatStr
  loc_B264F2: FStStrNoPop var_B8
  loc_B264F5: LitStr "uenCtct` char(11) NOT NULL default '',"
  loc_B264F8: ConcatStr
  loc_B264F9: FStStrNoPop var_BC
  loc_B264FC: LitStr "etaPers` varchar(70) NOT NULL default '',"
  loc_B264FF: ConcatStr
  loc_B26500: FStStrNoPop var_C0
  loc_B26503: LitStr "odiExce` smallint(3) unsigned NOT NULL default '0',"
  loc_B26506: ConcatStr
  loc_B26507: FStStrNoPop var_C4
  loc_B2650A: LitStr "etaExce` varchar(30) NOT NULL default '',"
  loc_B2650D: ConcatStr
  loc_B2650E: FStStrNoPop var_C8
  loc_B26511: LitStr "fexInmu` date default NULL,"
  loc_B26514: ConcatStr
  loc_B26515: FStStrNoPop var_CC
  loc_B26518: LitStr "PRIMARY KEY  (odiOfic`,`CuenCtct`)"
  loc_B2651B: ConcatStr
  loc_B2651C: FStStrNoPop var_D0
  loc_B2651F: LitStr ") ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_B26522: ConcatStr
  loc_B26523: CVarStr var_E0
  loc_B26526: PopAdLdVar
  loc_B26527: FLdPr var_94
  loc_B2652A: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_B2652F: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_B26540: FFree1Var var_E0 = ""
  loc_B26543: LitI4 -1
  loc_B26548: LitI4 3
  loc_B2654D: LitI4 3
  loc_B26552: ImpAdLdI4 MemVar_D9301C
  loc_B26555: CVarAd
  loc_B26559: PopAdLdVar
  loc_B2655A: LitVarStr var_A4, "SELECT * FROM tmp_Exce"
  loc_B2655F: PopAdLdVar
  loc_B26560: FLdPr var_94
  loc_B26563: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_B26568: LitNothing
  loc_B2656A: FStAd var_94 
  loc_B2656E: LitStr "SELECT CodiInmu, DetaPers, inmueble.CodiExce, DetaExce, FfexInmu FROM inmueble "
  loc_B26571: LitStr " INNER JOIN infogov.persona ON inmueble.CucuPers = persona.CucuPers"
  loc_B26574: ConcatStr
  loc_B26575: FStStrNoPop var_B8
  loc_B26578: LitStr " LEFT JOIN excepcion ON inmueble.CodiExce = excepcion.CodiExce "
  loc_B2657B: ConcatStr
  loc_B2657C: FStStrNoPop var_BC
  loc_B2657F: LitStr " WHERE inmueble.CodiInmu <= 50000 ORDER BY inmueble.CodiInmu"
  loc_B26582: ConcatStr
  loc_B26583: FStStrNoPop var_C0
  loc_B26586: FLdRfVar var_88
  loc_B26589: NewIfNullPr clsInmueble
  loc_B2658C: Call clsInmueble.RedefineRS(from_stack_1v)
  loc_B26591: FFreeStr var_B8 = "": var_BC = ""
  loc_B2659A: FLdRfVar var_E4
  loc_B2659D: FLdRfVar var_88
  loc_B265A0: NewIfNullPr clsInmueble
  loc_B265A3: from_stack_1 = clsInmueble.RecordCount
  loc_B265A8: ILdRf var_E4
  loc_B265AB: LitI4 0
  loc_B265B0: GtI4
  loc_B265B1: BranchF loc_B2671F
  loc_B265B4: FLdRfVar var_88
  loc_B265B7: NewIfNullPr clsInmueble
  loc_B265BA: Call clsInmueble.MoveFirst()
  loc_B265BF: FLdRfVar var_E6
  loc_B265C2: FLdRfVar var_88
  loc_B265C5: NewIfNullPr clsInmueble
  loc_B265C8: from_stack_1 = clsInmueble.EOF
  loc_B265CD: FLdI2 var_E6
  loc_B265D0: NotI4
  loc_B265D1: BranchF loc_B2671F
  loc_B265D4: FLdRfVar var_90
  loc_B265D7: FLdPr Me
  loc_B265DA: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_B265DF: FLdZeroAd var_90
  loc_B265E2: FStAdFunc var_EC
  loc_B265E5: LitVar_Missing var_B4
  loc_B265E8: PopAdLdVar
  loc_B265E9: LitVar_Missing var_A4
  loc_B265EC: PopAdLdVar
  loc_B265ED: FLdPr var_EC
  loc_B265F0: Me.AddNew from_stack_1, from_stack_2
  loc_B265F5: LitVarI2 var_B4, 1
  loc_B265FA: PopAdLdVar
  loc_B265FB: LitVarStr var_A4, "CodiOfic"
  loc_B26600: PopAdLdVar
  loc_B26601: FLdPr var_EC
  loc_B26604: Me.Collect = from_stack_1
  loc_B26609: FLdRfVar var_E4
  loc_B2660C: FLdRfVar var_88
  loc_B2660F: NewIfNullPr clsInmueble
  loc_B26612: from_stack_1 = clsInmueble.CodiInmu
  loc_B26617: ILdRf var_E4
  loc_B2661A: CVarI4
  loc_B2661E: PopAdLdVar
  loc_B2661F: LitVarStr var_A4, "CuenCtct"
  loc_B26624: PopAdLdVar
  loc_B26625: FLdPr var_EC
  loc_B26628: Me.Collect = from_stack_1
  loc_B2662D: FLdRfVar var_E0
  loc_B26630: FLdRfVar var_88
  loc_B26633: NewIfNullPr clsInmueble
  loc_B26636: from_stack_1 = clsInmueble.DetaPers
  loc_B2663B: FLdVar var_E0
  loc_B2663F: LitVarStr var_A4, "DetaPers"
  loc_B26644: PopAdLdVar
  loc_B26645: FLdPr var_EC
  loc_B26648: Me.Collect = from_stack_1
  loc_B2664D: FFree1Var var_E0 = ""
  loc_B26650: FLdRfVar var_E6
  loc_B26653: FLdRfVar var_88
  loc_B26656: NewIfNullPr clsInmueble
  loc_B26659: from_stack_1 = clsInmueble.CodiExce
  loc_B2665E: FLdUI1
  loc_B26662: CVarUI1
  loc_B26666: PopAdLdVar
  loc_B26667: LitVarStr var_A4, "CodiExce"
  loc_B2666C: PopAdLdVar
  loc_B2666D: FLdPr var_EC
  loc_B26670: Me.Collect = from_stack_1
  loc_B26675: FLdRfVar var_E0
  loc_B26678: FLdRfVar var_88
  loc_B2667B: NewIfNullPr clsInmueble
  loc_B2667E: from_stack_1 = clsInmueble.DetaExce
  loc_B26683: FLdRfVar var_E0
  loc_B26686: ImpAdCallI2 IsNull()
  loc_B2668B: FStI2 var_E6
  loc_B2668E: FLdRfVar var_FC
  loc_B26691: FLdRfVar var_88
  loc_B26694: NewIfNullPr clsInmueble
  loc_B26697: from_stack_1 = clsInmueble.DetaExce
  loc_B2669C: FLdRfVar var_FC
  loc_B2669F: LitVarStr var_B4, vbNullString
  loc_B266A4: FStVarCopyObj var_10C
  loc_B266A7: FLdRfVar var_10C
  loc_B266AA: FLdI2 var_E6
  loc_B266AD: CVarBoolI2 var_A4
  loc_B266B1: FLdRfVar var_11C
  loc_B266B4: ImpAdCallFPR4  = IIf(, , )
  loc_B266B9: FLdVar var_11C
  loc_B266BD: LitVarStr var_12C, "DetaExce"
  loc_B266C2: PopAdLdVar
  loc_B266C3: FLdPr var_EC
  loc_B266C6: Me.Collect = from_stack_1
  loc_B266CB: FFreeVar var_E0 = "": var_A4 = "": var_10C = "": var_FC = ""
  loc_B266D8: FLdRfVar var_E0
  loc_B266DB: FLdRfVar var_88
  loc_B266DE: NewIfNullPr clsInmueble
  loc_B266E1: from_stack_1 = clsInmueble.FfexInmu
  loc_B266E6: FLdVar var_E0
  loc_B266EA: LitVarStr var_A4, "FfexInmu"
  loc_B266EF: PopAdLdVar
  loc_B266F0: FLdPr var_EC
  loc_B266F3: Me.Collect = from_stack_1
  loc_B266F8: FFree1Var var_E0 = ""
  loc_B266FB: LitVar_Missing var_B4
  loc_B266FE: PopAdLdVar
  loc_B266FF: LitVar_Missing var_A4
  loc_B26702: PopAdLdVar
  loc_B26703: FLdPr var_EC
  loc_B26706: Me.Update from_stack_1, from_stack_2
  loc_B2670B: LitNothing
  loc_B2670D: FStAd var_EC 
  loc_B26711: FLdRfVar var_88
  loc_B26714: NewIfNullPr clsInmueble
  loc_B26717: Call clsInmueble.MoveSiguiente()
  loc_B2671C: Branch loc_B265BF
  loc_B2671F: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E86C8
  'Data Table: 438360
  loc_9E86AC: ILdRf pError
  loc_9E86AF: FStAd var_88 
  loc_9E86B3: ILdRf pRecordset
  loc_9E86B6: FStAd var_8C 
  loc_9E86BA: FLdPr Me
  loc_9E86BD: RaiseEvent
  loc_9E86C5: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9AC20
  'Data Table: 438360
  loc_A9AB60: ILdRf pRecordset
  loc_A9AB63: FStAd var_88 
  loc_A9AB67: ILdRf adReason
  loc_A9AB6A: FStR4 var_90
  loc_A9AB6D: ILdRf var_90
  loc_A9AB70: LitI4 1
  loc_A9AB75: EqI4
  loc_A9AB76: BranchF loc_A9AB7C
  loc_A9AB79: Branch loc_A9AC0F
  loc_A9AB7C: ILdRf var_90
  loc_A9AB7F: LitI4 9
  loc_A9AB84: EqI4
  loc_A9AB85: BranchF loc_A9AB8B
  loc_A9AB88: Branch loc_A9AC0F
  loc_A9AB8B: ILdRf var_90
  loc_A9AB8E: LitI4 2
  loc_A9AB93: EqI4
  loc_A9AB94: BranchF loc_A9AB9A
  loc_A9AB97: Branch loc_A9AC0F
  loc_A9AB9A: ILdRf var_90
  loc_A9AB9D: LitI4 &HB
  loc_A9ABA2: EqI4
  loc_A9ABA3: BranchF loc_A9ABA9
  loc_A9ABA6: Branch loc_A9AC0F
  loc_A9ABA9: ILdRf var_90
  loc_A9ABAC: LitI4 &HA
  loc_A9ABB1: EqI4
  loc_A9ABB2: BranchF loc_A9ABB8
  loc_A9ABB5: Branch loc_A9AC0F
  loc_A9ABB8: ILdRf var_90
  loc_A9ABBB: LitI4 7
  loc_A9ABC0: EqI4
  loc_A9ABC1: BranchF loc_A9ABC7
  loc_A9ABC4: Branch loc_A9AC0F
  loc_A9ABC7: ILdRf var_90
  loc_A9ABCA: LitI4 8
  loc_A9ABCF: EqI4
  loc_A9ABD0: BranchF loc_A9ABD6
  loc_A9ABD3: Branch loc_A9AC0F
  loc_A9ABD6: ILdRf var_90
  loc_A9ABD9: LitI4 5
  loc_A9ABDE: EqI4
  loc_A9ABDF: BranchF loc_A9ABE5
  loc_A9ABE2: Branch loc_A9AC0F
  loc_A9ABE5: ILdRf var_90
  loc_A9ABE8: LitI4 6
  loc_A9ABED: EqI4
  loc_A9ABEE: BranchF loc_A9ABF4
  loc_A9ABF1: Branch loc_A9AC0F
  loc_A9ABF4: ILdRf var_90
  loc_A9ABF7: LitI4 4
  loc_A9ABFC: EqI4
  loc_A9ABFD: BranchF loc_A9AC03
  loc_A9AC00: Branch loc_A9AC0F
  loc_A9AC03: ILdRf var_90
  loc_A9AC06: LitI4 3
  loc_A9AC0B: EqI4
  loc_A9AC0C: BranchF loc_A9AC0F
  loc_A9AC0F: FLdI2 var_8A
  loc_A9AC12: BranchF loc_A9AC1D
  loc_A9AC15: LitI4 4
  loc_A9AC1A: IStI4 adStatus
  loc_A9AC1D: ExitProcHresult
End Sub

Private Function Proc_50_41_9F5C98() '9F5C98
  'Data Table: 438360
  loc_9F5C74: LitStr "Primary"
  loc_9F5C77: FLdPr Me
  loc_9F5C7A: LateIdLdVar var_94 DispID_4 0
  loc_9F5C81: CastAdVar Me
  loc_9F5C85: FStAdFunc var_98
  loc_9F5C88: FLdPr var_98
  loc_9F5C90: FFree1Ad var_98
  loc_9F5C93: FFree1Var var_94 = ""
  loc_9F5C96: ExitProcHresult
End Function

Private Function Proc_50_42_9F5BE0(arg_C) '9F5BE0
  'Data Table: 438360
  loc_9F5BBC: ILdI4 arg_C
  loc_9F5BBF: FStStrCopy var_88
  loc_9F5BC2: ILdRf var_88
  loc_9F5BC5: LitStr "Primary"
  loc_9F5BC8: EqStr
  loc_9F5BCA: BranchF loc_9F5BDF
  loc_9F5BCD: FLdRfVar var_8C
  loc_9F5BD0: FLdPr Me
  loc_9F5BD3: from_stack_1v = clsexcepcion.global_4424424Get()
  loc_9F5BD8: FLdZeroAd var_8C
  loc_9F5BDB: IStAdFunc
  loc_9F5BDF: ExitProcHresult
End Function

Public Function global_4424424Get() '4387B0
  global_4424424Get = global_4424424
End Function

Public Sub global_4424424Put(Value) '4387CA
  global_4424424 = Value
End Sub

Public Sub global_4424424Set(Value) '4387E4
  global_4424424 = Value
End Sub

Public Function global_4424424Get() '4387FE
  global_4424424Get = global_4424424
End Function

Public Sub global_4424424Put(Value) '438818
  global_4424424 = Value
End Sub

Public Sub global_4424424Set(Value) '438832
  global_4424424 = Value
End Sub

Public Function global_4424424Get() '43884C
  global_4424424Get = global_4424424
End Function

Public Sub global_4424424Put(Value) '438866
  global_4424424 = Value
End Sub

Public Sub global_4424424Set(Value) '438880
  global_4424424 = Value
End Sub
