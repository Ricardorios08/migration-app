VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsliqupubl"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '489484
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '489493
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4894A2
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9EE74C
  'Data Table: 488CC8
  loc_9EE724: FLdRfVar var_88
  loc_9EE727: FLdPr Me
  loc_9EE72A: MemLdPr RsFrm
  loc_9EE72D:  = Me.RecordCount
  loc_9EE732: ILdRf var_88
  loc_9EE735: LitI4 0
  loc_9EE73A: GtI4
  loc_9EE73B: BranchF loc_9EE749
  loc_9EE73E: FLdPr Me
  loc_9EE741: MemLdPr RsFrm
  loc_9EE744: Me.MoveFirst
  loc_9EE749: ExitProcHresult
End Sub

Public Sub MoveLast() '9EE53C
  'Data Table: 488CC8
  loc_9EE514: FLdRfVar var_88
  loc_9EE517: FLdPr Me
  loc_9EE51A: MemLdPr RsFrm
  loc_9EE51D:  = Me.RecordCount
  loc_9EE522: ILdRf var_88
  loc_9EE525: LitI4 0
  loc_9EE52A: GtI4
  loc_9EE52B: BranchF loc_9EE539
  loc_9EE52E: FLdPr Me
  loc_9EE531: MemLdPr RsFrm
  loc_9EE534: Me.MoveLast
  loc_9EE539: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6BE60
  'Data Table: 488CC8
  loc_A6BDE8: FLdRfVar var_86
  loc_A6BDEB: FLdPr Me
  loc_A6BDEE: MemLdPr RsFrm
  loc_A6BDF1:  = Me.EOF
  loc_A6BDF6: FLdI2 var_86
  loc_A6BDF9: NotI4
  loc_A6BDFA: FLdRfVar var_8C
  loc_A6BDFD: FLdPr Me
  loc_A6BE00: MemLdPr RsFrm
  loc_A6BE03:  = Me.RecordCount
  loc_A6BE08: ILdRf var_8C
  loc_A6BE0B: LitI4 0
  loc_A6BE10: GtI4
  loc_A6BE11: AndI4
  loc_A6BE12: BranchF loc_A6BE20
  loc_A6BE15: FLdPr Me
  loc_A6BE18: MemLdPr RsFrm
  loc_A6BE1B: Me.MoveNext
  loc_A6BE20: FLdRfVar var_86
  loc_A6BE23: FLdPr Me
  loc_A6BE26: MemLdPr RsFrm
  loc_A6BE29:  = Me.EOF
  loc_A6BE2E: FLdI2 var_86
  loc_A6BE31: FLdRfVar var_8C
  loc_A6BE34: FLdPr Me
  loc_A6BE37: MemLdPr RsFrm
  loc_A6BE3A:  = Me.RecordCount
  loc_A6BE3F: ILdRf var_8C
  loc_A6BE42: LitI4 0
  loc_A6BE47: GtI4
  loc_A6BE48: AndI4
  loc_A6BE49: BranchF loc_A6BE5C
  loc_A6BE4C: ImpAdCallFPR4 Beep()
  loc_A6BE51: FLdPr Me
  loc_A6BE54: MemLdPr RsFrm
  loc_A6BE57: Me.MoveLast
  loc_A6BE5C: ExitProcHresult
  loc_A6BE5D: CVarI2 arg_35FF
End Sub

Public Sub MoveSiguiente() '9B1038
  'Data Table: 488CC8
  loc_9B102C: FLdPr Me
  loc_9B102F: MemLdPr RsFrm
  loc_9B1032: Me.MoveNext
  loc_9B1037: ExitProcHresult
End Sub

Public Sub Move(iValor) '9BAD88
  'Data Table: 488CC8
  loc_9BAD74: LitVar_Missing var_94
  loc_9BAD77: PopAdLdVar
  loc_9BAD78: ILdI2 iValor
  loc_9BAD7B: CI4UI1
  loc_9BAD7C: FLdPr Me
  loc_9BAD7F: MemLdPr RsFrm
  loc_9BAD82: Me.Move from_stack_1, from_stack_2
  loc_9BAD87: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6BD10
  'Data Table: 488CC8
  loc_A6BC98: FLdRfVar var_86
  loc_A6BC9B: FLdPr Me
  loc_A6BC9E: MemLdPr RsFrm
  loc_A6BCA1:  = Me.BOF
  loc_A6BCA6: FLdI2 var_86
  loc_A6BCA9: NotI4
  loc_A6BCAA: FLdRfVar var_8C
  loc_A6BCAD: FLdPr Me
  loc_A6BCB0: MemLdPr RsFrm
  loc_A6BCB3:  = Me.RecordCount
  loc_A6BCB8: ILdRf var_8C
  loc_A6BCBB: LitI4 0
  loc_A6BCC0: GtI4
  loc_A6BCC1: AndI4
  loc_A6BCC2: BranchF loc_A6BCD0
  loc_A6BCC5: FLdPr Me
  loc_A6BCC8: MemLdPr RsFrm
  loc_A6BCCB: Me.MovePrevious
  loc_A6BCD0: FLdRfVar var_86
  loc_A6BCD3: FLdPr Me
  loc_A6BCD6: MemLdPr RsFrm
  loc_A6BCD9:  = Me.BOF
  loc_A6BCDE: FLdI2 var_86
  loc_A6BCE1: FLdRfVar var_8C
  loc_A6BCE4: FLdPr Me
  loc_A6BCE7: MemLdPr RsFrm
  loc_A6BCEA:  = Me.RecordCount
  loc_A6BCEF: ILdRf var_8C
  loc_A6BCF2: LitI4 0
  loc_A6BCF7: GtI4
  loc_A6BCF8: AndI4
  loc_A6BCF9: BranchF loc_A6BD0C
  loc_A6BCFC: ImpAdCallFPR4 Beep()
  loc_A6BD01: FLdPr Me
  loc_A6BD04: MemLdPr RsFrm
  loc_A6BD07: Me.MoveFirst
  loc_A6BD0C: ExitProcHresult
End Sub

Public Property Get EOF() '9C8B40
  'Data Table: 488CC8
  loc_9C8B24: FLdRfVar var_88
  loc_9C8B27: FLdPr Me
  loc_9C8B2A: MemLdPr RsFrm
  loc_9C8B2D:  = Me.EOF
  loc_9C8B32: FLdI2 var_88
  loc_9C8B35: FStI2 var_86
  loc_9C8B38: ExitProcCbHresult
End Sub

Public Property Get BOF() '9C8DA0
  'Data Table: 488CC8
  loc_9C8D84: FLdRfVar var_88
  loc_9C8D87: FLdPr Me
  loc_9C8D8A: MemLdPr RsFrm
  loc_9C8D8D:  = Me.BOF
  loc_9C8D92: FLdI2 var_88
  loc_9C8D95: FStI2 var_86
  loc_9C8D98: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B6B78
  'Data Table: 488CC8
  loc_9B6B68: ILdI4 sOrden
  loc_9B6B6B: FLdPr Me
  loc_9B6B6E: MemLdPr RsFrm
  loc_9B6B71: Me.Sort = from_stack_1
  loc_9B6B76: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DF0C0
  'Data Table: 488CC8
  loc_9DF0A0: LitVar_Missing var_94
  loc_9DF0A3: PopAdLdVar
  loc_9DF0A4: LitI4 1
  loc_9DF0A9: LitI4 0
  loc_9DF0AE: ILdI4 sFind
  loc_9DF0B1: FLdPr Me
  loc_9DF0B4: MemLdPr RsFrm
  loc_9DF0B7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DF0BC: ExitProcHresult
  loc_9DF0BD: MulCy
  loc_9DF0BE: EqR4
End Sub

Public Sub Filter(sCriterio) '9BB294
  'Data Table: 488CC8
  loc_9BB280: ILdI4 sCriterio
  loc_9BB283: CVarStr var_94
  loc_9BB286: PopAdLdVar
  loc_9BB287: FLdPr Me
  loc_9BB28A: MemLdPr RsFrm
  loc_9BB28D: Me.Filter = from_stack_1
  loc_9BB292: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9C8FB4
  'Data Table: 488CC8
  loc_9C8F98: FLdRfVar var_8C
  loc_9C8F9B: FLdPr Me
  loc_9C8F9E: MemLdPr RsFrm
  loc_9C8FA1:  = Me.AbsolutePosition
  loc_9C8FA6: ILdRf var_8C
  loc_9C8FA9: FStR4 var_88
  loc_9C8FAC: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9C90E4
  'Data Table: 488CC8
  loc_9C90C8: FLdRfVar var_8C
  loc_9C90CB: FLdPr Me
  loc_9C90CE: MemLdPr RsFrm
  loc_9C90D1:  = Me.RecordCount
  loc_9C90D6: ILdRf var_8C
  loc_9C90D9: FStR4 var_88
  loc_9C90DC: ExitProcCbHresult
  loc_9C90E2: AddI2
End Sub

Public Sub AddNew(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, CodiConc, TipoVenc, TipoLipu, FeveLipu, DeudLipu, ImpoLipu, CrafLipu, ExenLipu, DescLipu, GastLipu, TotaLipu, CucuPers, CodiRuta, CodiCall) 'D1310C
  'Data Table: 488CC8
  loc_D0FD80: ILdRf CodiConc
  loc_D0FD83: FStStrCopy var_88
  loc_D0FD86: ILdRf TipoLipu
  loc_D0FD89: FStStrCopy var_8C
  loc_D0FD8C: ILdRf FeveLipu
  loc_D0FD8F: FStStrCopy var_90
  loc_D0FD92: ILdRf arg_68
  loc_D0FD95: FStStrCopy var_94
  loc_D0FD98: ILdRf arg_74
  loc_D0FD9B: FStStrCopy var_98
  loc_D0FD9E: ILdRf arg_78
  loc_D0FDA1: FStStrCopy var_9C
  loc_D0FDA4: ILdRf Me0
  loc_D0FDA7: FStStrCopy var_A0
  loc_D0FDAA: ILdRf Me4
  loc_D0FDAD: FStStrCopy var_A4
  loc_D0FDB0: ILdRf Me8
  loc_D0FDB3: FStStrCopy var_A8
  loc_D0FDB6: ILdRf MeC
  loc_D0FDB9: FStStrCopy var_AC
  loc_D0FDBC: ILdRf arg_94
  loc_D0FDBF: FStStrCopy var_B0
  loc_D0FDC2: ILdRf arg_98
  loc_D0FDC5: FStStrCopy var_B4
  loc_D0FDC8: ILdRf PeriLiquC
  loc_D0FDCB: FStStrCopy var_B8
  loc_D0FDCE: ILdRf arg_D0
  loc_D0FDD1: FStStrCopy var_BC
  loc_D0FDD4: LitI2_Byte 0
  loc_D0FDD6: CR8I2
  loc_D0FDD7: FStFPR8 var_CC
  loc_D0FDDA: LitI4 0
  loc_D0FDDF: FStR4 var_D8
  loc_D0FDE2: OnErrorGoto loc_D130E7
  loc_D0FDE5: FLdUI1
  loc_D0FDE9: CI2UI1
  loc_D0FDEB: LitI2_Byte 1
  loc_D0FDED: EqI2
  loc_D0FDEE: FLdUI1
  loc_D0FDF2: CI2UI1
  loc_D0FDF4: LitI2_Byte 2
  loc_D0FDF6: EqI2
  loc_D0FDF7: AndI4
  loc_D0FDF8: BranchF loc_D1112B
  loc_D0FDFB: LitI2_Byte 0
  loc_D0FDFD: CR8I2
  loc_D0FDFE: FStFPR8 var_124
  loc_D0FE01: LitStr "START TRANSACTION;"
  loc_D0FE04: FStStrCopy var_140
  loc_D0FE07: LitStr "SELECT PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, CodiConc, TipoVenc, TipoLipu, DeudLipu, ImpoLipu, GastLipu, SUM(CrafLipu) as CrafLipu, ExenLipu, DescLipu, TotaLipu "
  loc_D0FE0A: LitStr " FROM liqupubl WHERE PeriLiqu = "
  loc_D0FE0D: ConcatStr
  loc_D0FE0E: FStStrNoPop var_148
  loc_D0FE11: FLdI2 PeriLiqu
  loc_D0FE14: CStrUI1
  loc_D0FE16: FStStrNoPop var_14C
  loc_D0FE19: ConcatStr
  loc_D0FE1A: FStStrNoPop var_150
  loc_D0FE1D: LitStr " AND CodiTili = "
  loc_D0FE20: ConcatStr
  loc_D0FE21: FStStrNoPop var_154
  loc_D0FE24: FLdUI1
  loc_D0FE28: CStrI2
  loc_D0FE2A: FStStrNoPop var_158
  loc_D0FE2D: ConcatStr
  loc_D0FE2E: FStStrNoPop var_15C
  loc_D0FE31: LitStr " AND NumeLiqu = "
  loc_D0FE34: ConcatStr
  loc_D0FE35: FStStrNoPop var_160
  loc_D0FE38: FLdI2 NumeLiqu
  loc_D0FE3B: CStrUI1
  loc_D0FE3D: FStStrNoPop var_164
  loc_D0FE40: ConcatStr
  loc_D0FE41: FStStrNoPop var_168
  loc_D0FE44: LitStr " AND CodiCome = "
  loc_D0FE47: ConcatStr
  loc_D0FE48: FStStrNoPop var_16C
  loc_D0FE4B: ILdRf CodiCome
  loc_D0FE4E: CStrI4
  loc_D0FE50: FStStrNoPop var_170
  loc_D0FE53: ConcatStr
  loc_D0FE54: FStStrNoPop var_174
  loc_D0FE57: LitStr " GROUP BY PeriLiqu, CodiTili, NumeLiqu, CodiCome, CodiConc"
  loc_D0FE5A: ConcatStr
  loc_D0FE5B: FStStrNoPop var_178
  loc_D0FE5E: LitStr " HAVING TotaLipu > 0"
  loc_D0FE61: ConcatStr
  loc_D0FE62: FStStrNoPop var_17C
  loc_D0FE65: Call EjecutarRsCls2(from_stack_1v)
  loc_D0FE6A: FFreeStr var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = ""
  loc_D0FE89: FLdRfVar var_180
  loc_D0FE8C: FLdPr Me
  loc_D0FE8F: MemLdPr global_64
  loc_D0FE92:  = Me.RecordCount
  loc_D0FE97: ILdRf var_180
  loc_D0FE9A: LitI4 0
  loc_D0FE9F: GtI4
  loc_D0FEA0: BranchF loc_D11120
  loc_D0FEA3: FLdPr Me
  loc_D0FEA6: MemLdPr global_64
  loc_D0FEA9: Me.MoveFirst
  loc_D0FEAE: FLdRfVar var_182
  loc_D0FEB1: FLdPr Me
  loc_D0FEB4: MemLdPr global_64
  loc_D0FEB7:  = Me.EOF
  loc_D0FEBC: FLdI2 var_182
  loc_D0FEBF: NotI4
  loc_D0FEC0: BranchF loc_D11120
  loc_D0FEC3: FLdRfVar var_1AC
  loc_D0FEC6: FLdRfVar var_19C
  loc_D0FEC9: LitVarStr var_198, "CodiConc"
  loc_D0FECE: PopAdLdVar
  loc_D0FECF: FLdRfVar var_188
  loc_D0FED2: FLdPr Me
  loc_D0FED5: MemLdPr global_64
  loc_D0FED8:  = Me.Fields
  loc_D0FEDD: FLdPr var_188
  loc_D0FEE0: from_stack_2 = Me.Item(from_stack_1)
  loc_D0FEE5: FLdPr var_19C
  loc_D0FEE8:  = Me.Value
  loc_D0FEED: FLdRfVar var_1AC
  loc_D0FEF0: LitVarStr var_1BC, "13020401"
  loc_D0FEF5: HardType
  loc_D0FEF6: EqVarBool
  loc_D0FEF8: FFreeAd var_188 = ""
  loc_D0FEFF: FFree1Var var_1AC = ""
  loc_D0FF02: BranchF loc_D10C03
  loc_D0FF05: LitI2_Byte 0
  loc_D0FF07: CR8I2
  loc_D0FF08: FStFPR8 var_124
  loc_D0FF0B: LitStr "SELECT lipudeta.* FROM lipudeta "
  loc_D0FF0E: LitStr " LEFT JOIN servpubl ON servpubl.CodiCome = lipudeta.CodiCome"
  loc_D0FF11: ConcatStr
  loc_D0FF12: FStStrNoPop var_148
  loc_D0FF15: LitStr " AND servpubl.CodiRamo = lipudeta.CodiRamo"
  loc_D0FF18: ConcatStr
  loc_D0FF19: FStStrNoPop var_14C
  loc_D0FF1C: LitStr " AND servpubl.CodiSubr = lipudeta.CodiSubr"
  loc_D0FF1F: ConcatStr
  loc_D0FF20: FStStrNoPop var_150
  loc_D0FF23: LitStr " AND servpubl.CodiRubr = lipudeta.CodiRubr"
  loc_D0FF26: ConcatStr
  loc_D0FF27: FStStrNoPop var_154
  loc_D0FF2A: LitStr " AND servpubl.PrioSeco = lipudeta.NumeLpde"
  loc_D0FF2D: ConcatStr
  loc_D0FF2E: FStStrNoPop var_158
  loc_D0FF31: LitStr " WHERE PeriLiqu = "
  loc_D0FF34: ConcatStr
  loc_D0FF35: CVarStr var_1CC
  loc_D0FF38: FLdRfVar var_1AC
  loc_D0FF3B: FLdRfVar var_19C
  loc_D0FF3E: LitVarStr var_198, "PeriLiqu"
  loc_D0FF43: PopAdLdVar
  loc_D0FF44: FLdRfVar var_188
  loc_D0FF47: FLdPr Me
  loc_D0FF4A: MemLdPr global_64
  loc_D0FF4D:  = Me.Fields
  loc_D0FF52: FLdPr var_188
  loc_D0FF55: from_stack_2 = Me.Item(from_stack_1)
  loc_D0FF5A: FLdPr var_19C
  loc_D0FF5D:  = Me.Value
  loc_D0FF62: FLdRfVar var_1AC
  loc_D0FF65: ConcatVar var_1DC
  loc_D0FF69: LitVarStr var_1BC, " AND BimeLiqu = 1"
  loc_D0FF6E: ConcatVar var_1EC
  loc_D0FF72: LitVarStr var_1FC, " AND CodiTili = "
  loc_D0FF77: ConcatVar var_20C
  loc_D0FF7B: FLdRfVar var_234
  loc_D0FF7E: FLdRfVar var_224
  loc_D0FF81: LitVarStr var_220, "CodiTili"
  loc_D0FF86: PopAdLdVar
  loc_D0FF87: FLdRfVar var_210
  loc_D0FF8A: FLdPr Me
  loc_D0FF8D: MemLdPr global_64
  loc_D0FF90:  = Me.Fields
  loc_D0FF95: FLdPr var_210
  loc_D0FF98: from_stack_2 = Me.Item(from_stack_1)
  loc_D0FF9D: FLdPr var_224
  loc_D0FFA0:  = Me.Value
  loc_D0FFA5: FLdRfVar var_234
  loc_D0FFA8: ConcatVar var_244
  loc_D0FFAC: LitVarStr var_254, " AND NumeLiqu = "
  loc_D0FFB1: ConcatVar var_264
  loc_D0FFB5: FLdRfVar var_28C
  loc_D0FFB8: FLdRfVar var_27C
  loc_D0FFBB: LitVarStr var_278, "NumeLiqu"
  loc_D0FFC0: PopAdLdVar
  loc_D0FFC1: FLdRfVar var_268
  loc_D0FFC4: FLdPr Me
  loc_D0FFC7: MemLdPr global_64
  loc_D0FFCA:  = Me.Fields
  loc_D0FFCF: FLdPr var_268
  loc_D0FFD2: from_stack_2 = Me.Item(from_stack_1)
  loc_D0FFD7: FLdPr var_27C
  loc_D0FFDA:  = Me.Value
  loc_D0FFDF: FLdRfVar var_28C
  loc_D0FFE2: ConcatVar var_29C
  loc_D0FFE6: LitVarStr var_2AC, " AND lipudeta.CodiCome = "
  loc_D0FFEB: ConcatVar var_2BC
  loc_D0FFEF: FLdRfVar var_2E4
  loc_D0FFF2: FLdRfVar var_2D4
  loc_D0FFF5: LitVarStr var_2D0, "CodiCome"
  loc_D0FFFA: PopAdLdVar
  loc_D0FFFB: FLdRfVar var_2C0
  loc_D0FFFE: FLdPr Me
  loc_D10001: MemLdPr global_64
  loc_D10004:  = Me.Fields
  loc_D10009: FLdPr var_2C0
  loc_D1000C: from_stack_2 = Me.Item(from_stack_1)
  loc_D10011: FLdPr var_2D4
  loc_D10014:  = Me.Value
  loc_D10019: FLdRfVar var_2E4
  loc_D1001C: ConcatVar var_2F4
  loc_D10020: LitVarStr var_304, " AND CodiConc = '"
  loc_D10025: ConcatVar var_314
  loc_D10029: FLdRfVar var_33C
  loc_D1002C: FLdRfVar var_32C
  loc_D1002F: LitVarStr var_328, "CodiConc"
  loc_D10034: PopAdLdVar
  loc_D10035: FLdRfVar var_318
  loc_D10038: FLdPr Me
  loc_D1003B: MemLdPr global_64
  loc_D1003E:  = Me.Fields
  loc_D10043: FLdPr var_318
  loc_D10046: from_stack_2 = Me.Item(from_stack_1)
  loc_D1004B: FLdPr var_32C
  loc_D1004E:  = Me.Value
  loc_D10053: FLdRfVar var_33C
  loc_D10056: ConcatVar var_34C
  loc_D1005A: LitVarStr var_35C, "'"
  loc_D1005F: ConcatVar var_36C
  loc_D10063: LitVarStr var_37C, " AND TipoVenc = 1"
  loc_D10068: ConcatVar var_38C
  loc_D1006C: LitVarStr var_39C, " GROUP BY lipudeta.PeriLiqu, lipudeta.CodiTili, lipudeta.NumeLiqu, lipudeta.CodiCome, lipudeta.CodiConc, lipudeta.TipoVenc, lipudeta.CodiRamo, lipudeta.CodiRubr, lipudeta.PeriOrde, lipudeta.CodiSubr"
  loc_D10071: ConcatVar var_3AC
  loc_D10075: LitVarStr var_3BC, " ORDER BY servpubl.FealSeco DESC, servpubl.CodiSubr ASC"
  loc_D1007A: ConcatVar var_3CC
  loc_D1007E: CStrVarVal var_15C
  loc_D10082: Call EjecutarRsCls3(from_stack_1v)
  loc_D10087: FFreeStr var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = ""
  loc_D10096: FFreeAd var_188 = "": var_19C = "": var_210 = "": var_224 = "": var_268 = "": var_27C = "": var_2C0 = "": var_2D4 = "": var_318 = ""
  loc_D100AD: FFreeVar var_1CC = "": var_1AC = "": var_1DC = "": var_1EC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_28C = "": var_29C = "": var_2BC = "": var_2E4 = "": var_2F4 = "": var_314 = "": var_33C = "": var_34C = "": var_36C = "": var_38C = "": var_3AC = ""
  loc_D100D8: FLdRfVar var_180
  loc_D100DB: FLdPr Me
  loc_D100DE: MemLdPr global_68
  loc_D100E1:  = Me.RecordCount
  loc_D100E6: ILdRf var_180
  loc_D100E9: LitI4 0
  loc_D100EE: GtI4
  loc_D100EF: BranchF loc_D107D0
  loc_D100F2: FLdPr Me
  loc_D100F5: MemLdPr global_68
  loc_D100F8: Me.MoveFirst
  loc_D100FD: LitI2_Byte 0
  loc_D100FF: FStI2 var_142
  loc_D10102: FLdRfVar var_182
  loc_D10105: FLdPr Me
  loc_D10108: MemLdPr global_68
  loc_D1010B:  = Me.EOF
  loc_D10110: FLdI2 var_182
  loc_D10113: NotI4
  loc_D10114: BranchF loc_D107D0
  loc_D10117: FLdI2 var_142
  loc_D1011A: LitI2_Byte 1
  loc_D1011C: AddI2
  loc_D1011D: FStI2 var_142
  loc_D10120: FLdI2 var_142
  loc_D10123: LitI2_Byte 1
  loc_D10125: EqI2
  loc_D10126: BranchF loc_D10132
  loc_D10129: LitI2_Byte 0
  loc_D1012B: CR8I2
  loc_D1012C: FStFPR8 var_114
  loc_D1012F: Branch loc_D10138
  loc_D10132: LitI2_Byte 0
  loc_D10134: CR8I2
  loc_D10135: FStFPR8 var_114
  loc_D10138: LitI2_Byte 1
  loc_D1013A: FLdRfVar var_144
  loc_D1013D: LitI2_Byte 2
  loc_D1013F: ForI2 var_3D0
  loc_D10145: LitI2_Byte 0
  loc_D10147: CR8I2
  loc_D10148: FStFPR8 var_E8
  loc_D1014B: LitI2_Byte 0
  loc_D1014D: CR8I2
  loc_D1014E: FStFPR8 var_F0
  loc_D10151: LitI2_Byte 0
  loc_D10153: CR8I2
  loc_D10154: FStFPR8 var_F8
  loc_D10157: LitI2_Byte 0
  loc_D10159: CR8I2
  loc_D1015A: FStFPR8 var_100
  loc_D1015D: FLdI2 var_144
  loc_D10160: LitI2_Byte 1
  loc_D10162: LeI2
  loc_D10163: BranchF loc_D10175
  loc_D10166: LitI2_Byte 0
  loc_D10168: CR8I2
  loc_D10169: FStFPR8 var_F0
  loc_D1016C: LitI2_Byte 0
  loc_D1016E: CR8I2
  loc_D1016F: FStFPR8 var_F8
  loc_D10172: Branch loc_D101ED
  loc_D10175: FLdRfVar var_1AC
  loc_D10178: FLdRfVar var_19C
  loc_D1017B: LitVarStr var_198, "DecaLpde"
  loc_D10180: PopAdLdVar
  loc_D10181: FLdRfVar var_188
  loc_D10184: FLdPr Me
  loc_D10187: MemLdPr global_68
  loc_D1018A:  = Me.Fields
  loc_D1018F: FLdPr var_188
  loc_D10192: from_stack_2 = Me.Item(from_stack_1)
  loc_D10197: FLdPr var_19C
  loc_D1019A:  = Me.Value
  loc_D1019F: FLdRfVar var_1AC
  loc_D101A2: FnCDblVar
  loc_D101A4: FStFPR8 var_F0
  loc_D101A7: FFreeAd var_188 = ""
  loc_D101AE: FFree1Var var_1AC = ""
  loc_D101B1: FLdRfVar var_1AC
  loc_D101B4: FLdRfVar var_19C
  loc_D101B7: LitVarStr var_198, "ExceLpde"
  loc_D101BC: PopAdLdVar
  loc_D101BD: FLdRfVar var_188
  loc_D101C0: FLdPr Me
  loc_D101C3: MemLdPr global_68
  loc_D101C6:  = Me.Fields
  loc_D101CB: FLdPr var_188
  loc_D101CE: from_stack_2 = Me.Item(from_stack_1)
  loc_D101D3: FLdPr var_19C
  loc_D101D6:  = Me.Value
  loc_D101DB: FLdRfVar var_1AC
  loc_D101DE: FnCDblVar
  loc_D101E0: FStFPR8 var_F8
  loc_D101E3: FFreeAd var_188 = ""
  loc_D101EA: FFree1Var var_1AC = ""
  loc_D101ED: FLdRfVar var_1AC
  loc_D101F0: FLdRfVar var_19C
  loc_D101F3: LitVarStr var_198, "ImpoLpde"
  loc_D101F8: PopAdLdVar
  loc_D101F9: FLdRfVar var_188
  loc_D101FC: FLdPr Me
  loc_D101FF: MemLdPr global_68
  loc_D10202:  = Me.Fields
  loc_D10207: FLdPr var_188
  loc_D1020A: from_stack_2 = Me.Item(from_stack_1)
  loc_D1020F: FLdPr var_19C
  loc_D10212:  = Me.Value
  loc_D10217: FLdRfVar var_1AC
  loc_D1021A: FnCDblVar
  loc_D1021C: FStFPR8 var_E8
  loc_D1021F: FFreeAd var_188 = ""
  loc_D10226: FFree1Var var_1AC = ""
  loc_D10229: FLdRfVar var_1AC
  loc_D1022C: FLdRfVar var_19C
  loc_D1022F: LitVarStr var_198, "CodiSubr"
  loc_D10234: PopAdLdVar
  loc_D10235: FLdRfVar var_188
  loc_D10238: FLdPr Me
  loc_D1023B: MemLdPr global_68
  loc_D1023E:  = Me.Fields
  loc_D10243: FLdPr var_188
  loc_D10246: from_stack_2 = Me.Item(from_stack_1)
  loc_D1024B: FLdPr var_19C
  loc_D1024E:  = Me.Value
  loc_D10253: FLdRfVar var_1AC
  loc_D10256: FnCLngVar
  loc_D10258: LitI4 &H3E7
  loc_D1025D: NeI4
  loc_D1025E: FFreeAd var_188 = ""
  loc_D10265: FFree1Var var_1AC = ""
  loc_D10268: BranchF loc_D1031B
  loc_D1026B: FLdRfVar var_1AC
  loc_D1026E: FLdRfVar var_19C
  loc_D10271: LitVarStr var_198, "ImpoLpde"
  loc_D10276: PopAdLdVar
  loc_D10277: FLdRfVar var_188
  loc_D1027A: FLdPr Me
  loc_D1027D: MemLdPr global_68
  loc_D10280:  = Me.Fields
  loc_D10285: FLdPr var_188
  loc_D10288: from_stack_2 = Me.Item(from_stack_1)
  loc_D1028D: FLdPr var_19C
  loc_D10290:  = Me.Value
  loc_D10295: FLdRfVar var_1CC
  loc_D10298: FLdRfVar var_224
  loc_D1029B: LitVarStr var_1BC, "ExceLpde"
  loc_D102A0: PopAdLdVar
  loc_D102A1: FLdRfVar var_210
  loc_D102A4: FLdPr Me
  loc_D102A7: MemLdPr global_68
  loc_D102AA:  = Me.Fields
  loc_D102AF: FLdPr var_210
  loc_D102B2: from_stack_2 = Me.Item(from_stack_1)
  loc_D102B7: FLdPr var_224
  loc_D102BA:  = Me.Value
  loc_D102BF: LitI4 2
  loc_D102C4: FLdFPR8 var_F0
  loc_D102C7: FLdRfVar var_1AC
  loc_D102CA: FnCDblVar
  loc_D102CC: FLdRfVar var_1CC
  loc_D102CF: FnCDblVar
  loc_D102D1: SubR4
  loc_D102D2: FLdFPR8 var_114
  loc_D102D5: SubR4
  loc_D102D6: FLdFPR8 PeriLiqu4
  loc_D102D9: MulR8
  loc_D102DA: LitI2_Byte &H64
  loc_D102DC: CR8I2
  loc_D102DD: DivR8
  loc_D102DE: AddR8
  loc_D102DF: CVarR8
  loc_D102E3: FLdRfVar var_1EC
  loc_D102E6: ImpAdCallFPR4  = Round(, )
  loc_D102EB: FLdRfVar var_1EC
  loc_D102EE: CR4Var
  loc_D102EF: FStFPR8 var_F0
  loc_D102F2: FFreeAd var_188 = "": var_19C = "": var_210 = ""
  loc_D102FD: FFreeVar var_1AC = "": var_1CC = "": var_1DC = ""
  loc_D10308: FLdI2 var_144
  loc_D1030B: LitI2_Byte 1
  loc_D1030D: GtI2
  loc_D1030E: BranchF loc_D1031B
  loc_D10311: FLdFPR8 var_F0
  loc_D10314: FLdFPR8 var_114
  loc_D10317: AddR8
  loc_D10318: FStFPR8 var_F0
  loc_D1031B: FLdRfVar var_1AC
  loc_D1031E: FLdRfVar var_19C
  loc_D10321: LitVarStr var_198, "CodiSubr"
  loc_D10326: PopAdLdVar
  loc_D10327: FLdRfVar var_188
  loc_D1032A: FLdPr Me
  loc_D1032D: MemLdPr global_68
  loc_D10330:  = Me.Fields
  loc_D10335: FLdPr var_188
  loc_D10338: from_stack_2 = Me.Item(from_stack_1)
  loc_D1033D: FLdPr var_19C
  loc_D10340:  = Me.Value
  loc_D10345: FLdRfVar var_1AC
  loc_D10348: FnCLngVar
  loc_D1034A: LitI4 &H3E7
  loc_D1034F: EqI4
  loc_D10350: FFreeAd var_188 = ""
  loc_D10357: FFree1Var var_1AC = ""
  loc_D1035A: BranchF loc_D103A6
  loc_D1035D: FLdI2 var_144
  loc_D10360: LitI2_Byte 1
  loc_D10362: GtI2
  loc_D10363: BranchF loc_D103A6
  loc_D10366: FLdRfVar var_1AC
  loc_D10369: FLdRfVar var_19C
  loc_D1036C: LitVarStr var_198, "ImpoLpde"
  loc_D10371: PopAdLdVar
  loc_D10372: FLdRfVar var_188
  loc_D10375: FLdPr Me
  loc_D10378: MemLdPr global_68
  loc_D1037B:  = Me.Fields
  loc_D10380: FLdPr var_188
  loc_D10383: from_stack_2 = Me.Item(from_stack_1)
  loc_D10388: FLdPr var_19C
  loc_D1038B:  = Me.Value
  loc_D10390: FLdFPR8 var_F0
  loc_D10393: FLdRfVar var_1AC
  loc_D10396: FnCDblVar
  loc_D10398: AddR8
  loc_D10399: FStFPR8 var_F0
  loc_D1039C: FFreeAd var_188 = ""
  loc_D103A3: FFree1Var var_1AC = ""
  loc_D103A6: FLdFPR8 var_E8
  loc_D103A9: FLdFPR8 var_F0
  loc_D103AC: SubR4
  loc_D103AD: FLdFPR8 var_F8
  loc_D103B0: SubR4
  loc_D103B1: FStFPR8 var_100
  loc_D103B4: FLdFPR8 var_124
  loc_D103B7: FLdFPR8 var_E8
  loc_D103BA: AddR8
  loc_D103BB: FStFPR8 var_124
  loc_D103BE: FLdFPR8 var_12C
  loc_D103C1: FLdFPR8 var_F0
  loc_D103C4: AddR8
  loc_D103C5: FStFPR8 var_12C
  loc_D103C8: FLdFPR8 var_134
  loc_D103CB: FLdFPR8 var_F8
  loc_D103CE: AddR8
  loc_D103CF: FStFPR8 var_134
  loc_D103D2: LitI2_Byte 0
  loc_D103D4: CR8I2
  loc_D103D5: FStFPR8 var_13C
  loc_D103D8: ILdRf var_140
  loc_D103DB: LitStr " INSERT INTO lipudeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLpde,ImpoLpde,DecaLpde,ExceLpde,TotaLpde) "
  loc_D103DE: ConcatStr
  loc_D103DF: FStStrNoPop var_148
  loc_D103E2: LitStr " VALUES ("
  loc_D103E5: ConcatStr
  loc_D103E6: CVarStr var_1CC
  loc_D103E9: FLdRfVar var_1AC
  loc_D103EC: FLdRfVar var_19C
  loc_D103EF: LitVarStr var_198, "PeriLiqu"
  loc_D103F4: PopAdLdVar
  loc_D103F5: FLdRfVar var_188
  loc_D103F8: FLdPr Me
  loc_D103FB: MemLdPr global_68
  loc_D103FE:  = Me.Fields
  loc_D10403: FLdPr var_188
  loc_D10406: from_stack_2 = Me.Item(from_stack_1)
  loc_D1040B: FLdPr var_19C
  loc_D1040E:  = Me.Value
  loc_D10413: FLdRfVar var_1AC
  loc_D10416: ConcatVar var_1DC
  loc_D1041A: LitVarStr var_1BC, ","
  loc_D1041F: ConcatVar var_1EC
  loc_D10423: FLdI2 var_144
  loc_D10426: CVarI2 var_1FC
  loc_D10429: ConcatVar var_20C
  loc_D1042D: LitVarStr var_220, ","
  loc_D10432: ConcatVar var_234
  loc_D10436: FLdRfVar var_244
  loc_D10439: FLdRfVar var_224
  loc_D1043C: LitVarStr var_254, "CodiTili"
  loc_D10441: PopAdLdVar
  loc_D10442: FLdRfVar var_210
  loc_D10445: FLdPr Me
  loc_D10448: MemLdPr global_68
  loc_D1044B:  = Me.Fields
  loc_D10450: FLdPr var_210
  loc_D10453: from_stack_2 = Me.Item(from_stack_1)
  loc_D10458: FLdPr var_224
  loc_D1045B:  = Me.Value
  loc_D10460: FLdRfVar var_244
  loc_D10463: ConcatVar var_264
  loc_D10467: LitVarStr var_278, ","
  loc_D1046C: ConcatVar var_28C
  loc_D10470: FLdRfVar var_29C
  loc_D10473: FLdRfVar var_27C
  loc_D10476: LitVarStr var_2AC, "NumeLiqu"
  loc_D1047B: PopAdLdVar
  loc_D1047C: FLdRfVar var_268
  loc_D1047F: FLdPr Me
  loc_D10482: MemLdPr global_68
  loc_D10485:  = Me.Fields
  loc_D1048A: FLdPr var_268
  loc_D1048D: from_stack_2 = Me.Item(from_stack_1)
  loc_D10492: FLdPr var_27C
  loc_D10495:  = Me.Value
  loc_D1049A: FLdRfVar var_29C
  loc_D1049D: ConcatVar var_2BC
  loc_D104A1: LitVarStr var_2D0, ","
  loc_D104A6: ConcatVar var_2E4
  loc_D104AA: FLdRfVar var_2F4
  loc_D104AD: FLdRfVar var_2D4
  loc_D104B0: LitVarStr var_304, "CodiCome"
  loc_D104B5: PopAdLdVar
  loc_D104B6: FLdRfVar var_2C0
  loc_D104B9: FLdPr Me
  loc_D104BC: MemLdPr global_68
  loc_D104BF:  = Me.Fields
  loc_D104C4: FLdPr var_2C0
  loc_D104C7: from_stack_2 = Me.Item(from_stack_1)
  loc_D104CC: FLdPr var_2D4
  loc_D104CF:  = Me.Value
  loc_D104D4: FLdRfVar var_2F4
  loc_D104D7: ConcatVar var_314
  loc_D104DB: LitVarStr var_328, ",'"
  loc_D104E0: ConcatVar var_33C
  loc_D104E4: FLdRfVar var_34C
  loc_D104E7: FLdRfVar var_32C
  loc_D104EA: LitVarStr var_35C, "CodiConc"
  loc_D104EF: PopAdLdVar
  loc_D104F0: FLdRfVar var_318
  loc_D104F3: FLdPr Me
  loc_D104F6: MemLdPr global_68
  loc_D104F9:  = Me.Fields
  loc_D104FE: FLdPr var_318
  loc_D10501: from_stack_2 = Me.Item(from_stack_1)
  loc_D10506: FLdPr var_32C
  loc_D10509:  = Me.Value
  loc_D1050E: FLdRfVar var_34C
  loc_D10511: ConcatVar var_36C
  loc_D10515: LitVarStr var_37C, "',"
  loc_D1051A: ConcatVar var_38C
  loc_D1051E: FLdUI1
  loc_D10522: CVarUI1
  loc_D10526: ConcatVar var_3AC
  loc_D1052A: LitVarStr var_3BC, ","
  loc_D1052F: ConcatVar var_3CC
  loc_D10533: FLdRfVar var_3F8
  loc_D10536: FLdRfVar var_3E8
  loc_D10539: LitVarStr var_3E4, "CodiRamo"
  loc_D1053E: PopAdLdVar
  loc_D1053F: FLdRfVar var_3D4
  loc_D10542: FLdPr Me
  loc_D10545: MemLdPr global_68
  loc_D10548:  = Me.Fields
  loc_D1054D: FLdPr var_3D4
  loc_D10550: from_stack_2 = Me.Item(from_stack_1)
  loc_D10555: FLdPr var_3E8
  loc_D10558:  = Me.Value
  loc_D1055D: FLdRfVar var_3F8
  loc_D10560: ConcatVar var_408
  loc_D10564: LitVarStr var_418, ",'"
  loc_D10569: ConcatVar var_428
  loc_D1056D: FLdRfVar var_450
  loc_D10570: FLdRfVar var_440
  loc_D10573: LitVarStr var_43C, "CodiRubr"
  loc_D10578: PopAdLdVar
  loc_D10579: FLdRfVar var_42C
  loc_D1057C: FLdPr Me
  loc_D1057F: MemLdPr global_68
  loc_D10582:  = Me.Fields
  loc_D10587: FLdPr var_42C
  loc_D1058A: from_stack_2 = Me.Item(from_stack_1)
  loc_D1058F: FLdPr var_440
  loc_D10592:  = Me.Value
  loc_D10597: FLdRfVar var_450
  loc_D1059A: ConcatVar var_460
  loc_D1059E: LitVarStr var_470, "',"
  loc_D105A3: ConcatVar var_480
  loc_D105A7: FLdRfVar var_4A8
  loc_D105AA: FLdRfVar var_498
  loc_D105AD: LitVarStr var_494, "PeriOrde"
  loc_D105B2: PopAdLdVar
  loc_D105B3: FLdRfVar var_484
  loc_D105B6: FLdPr Me
  loc_D105B9: MemLdPr global_68
  loc_D105BC:  = Me.Fields
  loc_D105C1: FLdPr var_484
  loc_D105C4: from_stack_2 = Me.Item(from_stack_1)
  loc_D105C9: FLdPr var_498
  loc_D105CC:  = Me.Value
  loc_D105D1: FLdRfVar var_4A8
  loc_D105D4: ConcatVar var_4B8
  loc_D105D8: LitVarStr var_4C8, ","
  loc_D105DD: ConcatVar var_4D8
  loc_D105E1: FLdRfVar var_500
  loc_D105E4: FLdRfVar var_4F0
  loc_D105E7: LitVarStr var_4EC, "CodiSubr"
  loc_D105EC: PopAdLdVar
  loc_D105ED: FLdRfVar var_4DC
  loc_D105F0: FLdPr Me
  loc_D105F3: MemLdPr global_68
  loc_D105F6:  = Me.Fields
  loc_D105FB: FLdPr var_4DC
  loc_D105FE: from_stack_2 = Me.Item(from_stack_1)
  loc_D10603: FLdPr var_4F0
  loc_D10606:  = Me.Value
  loc_D1060B: FLdRfVar var_500
  loc_D1060E: ConcatVar var_510
  loc_D10612: LitVarStr var_520, ","
  loc_D10617: ConcatVar var_530
  loc_D1061B: FLdRfVar var_558
  loc_D1061E: FLdRfVar var_548
  loc_D10621: LitVarStr var_544, "NumeLpde"
  loc_D10626: PopAdLdVar
  loc_D10627: FLdRfVar var_534
  loc_D1062A: FLdPr Me
  loc_D1062D: MemLdPr global_68
  loc_D10630:  = Me.Fields
  loc_D10635: FLdPr var_534
  loc_D10638: from_stack_2 = Me.Item(from_stack_1)
  loc_D1063D: FLdPr var_548
  loc_D10640:  = Me.Value
  loc_D10645: FLdRfVar var_558
  loc_D10648: ConcatVar var_568
  loc_D1064C: LitVarStr var_578, ","
  loc_D10651: ConcatVar var_588
  loc_D10655: LitI4 0
  loc_D1065A: LitI4 -1
  loc_D1065F: LitI4 1
  loc_D10664: LitStr "."
  loc_D10667: LitStr ","
  loc_D1066A: FLdFPR8 var_E8
  loc_D1066D: CStrR8
  loc_D1066F: FStStrNoPop var_14C
  loc_D10672: ImpAdCallI2 Replace(, , , , , )
  loc_D10677: CVarStr var_598
  loc_D1067A: ConcatVar var_5A8
  loc_D1067E: LitVarStr var_5B8, ","
  loc_D10683: ConcatVar var_5C8
  loc_D10687: LitI4 0
  loc_D1068C: LitI4 -1
  loc_D10691: LitI4 1
  loc_D10696: LitStr "."
  loc_D10699: LitStr ","
  loc_D1069C: FLdFPR8 var_F0
  loc_D1069F: CStrR8
  loc_D106A1: FStStrNoPop var_150
  loc_D106A4: ImpAdCallI2 Replace(, , , , , )
  loc_D106A9: CVarStr var_5D8
  loc_D106AC: ConcatVar var_5E8
  loc_D106B0: LitVarStr var_5F8, ","
  loc_D106B5: ConcatVar var_608
  loc_D106B9: LitI4 0
  loc_D106BE: LitI4 -1
  loc_D106C3: LitI4 1
  loc_D106C8: LitStr "."
  loc_D106CB: LitStr ","
  loc_D106CE: FLdFPR8 var_F8
  loc_D106D1: CStrR8
  loc_D106D3: FStStrNoPop var_154
  loc_D106D6: ImpAdCallI2 Replace(, , , , , )
  loc_D106DB: CVarStr var_618
  loc_D106DE: ConcatVar var_628
  loc_D106E2: LitVarStr var_638, ","
  loc_D106E7: ConcatVar var_648
  loc_D106EB: LitI4 0
  loc_D106F0: LitI4 -1
  loc_D106F5: LitI4 1
  loc_D106FA: LitStr "."
  loc_D106FD: LitStr ","
  loc_D10700: FLdFPR8 var_100
  loc_D10703: CStrR8
  loc_D10705: FStStrNoPop var_158
  loc_D10708: ImpAdCallI2 Replace(, , , , , )
  loc_D1070D: CVarStr var_658
  loc_D10710: ConcatVar var_668
  loc_D10714: LitVarStr var_678, ");"
  loc_D10719: ConcatVar var_688
  loc_D1071D: CStrVarTmp
  loc_D1071E: FStStr var_140
  loc_D10721: FFreeStr var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_D1072E: FFreeAd var_188 = "": var_19C = "": var_210 = "": var_224 = "": var_268 = "": var_27C = "": var_2C0 = "": var_2D4 = "": var_318 = "": var_32C = "": var_3D4 = "": var_3E8 = "": var_42C = "": var_440 = "": var_484 = "": var_498 = "": var_4DC = "": var_4F0 = "": var_534 = ""
  loc_D10759: FFreeVar var_510 = "": var_530 = "": var_558 = "": var_568 = "": var_588 = "": var_598 = "": var_5A8 = "": var_5C8 = "": var_5D8 = "": var_5E8 = "": var_608 = "": var_618 = "": var_628 = "": var_648 = "": var_658 = "": var_668 = "": var_688 = "": var_1CC = "": var_1AC = "": var_1DC = "": var_1EC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_28C = "": var_29C = "": var_2BC = "": var_2E4 = "": var_2F4 = "": var_314 = "": var_33C = "": var_34C = "": var_36C = "": var_38C = "": var_3AC = "": var_3CC = "": var_3F8 = "": var_408 = "": var_428 = "": var_450 = "": var_460 = "": var_480 = "": var_4A8 = "": var_4B8 = "": var_4D8 = ""
  loc_D107BA: FLdRfVar var_144
  loc_D107BD: NextI2 var_3D0, loc_D10145
  loc_D107C2: FLdPr Me
  loc_D107C5: MemLdPr global_68
  loc_D107C8: Me.MoveNext
  loc_D107CD: Branch loc_D10102
  loc_D107D0: FLdFPR8 var_124
  loc_D107D3: FLdFPR8 var_12C
  loc_D107D6: SubR4
  loc_D107D7: FLdFPR8 var_134
  loc_D107DA: SubR4
  loc_D107DB: FLdFPR8 var_13C
  loc_D107DE: SubR4
  loc_D107DF: FStFPR8 arg_60
  loc_D107E2: ILdRf var_140
  loc_D107E5: LitStr " INSERT INTO liqupubl (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,ActuLipu,TipoLipu,FealLipu,FeveLipu,DeudLipu,ImpoLipu,CrafLipu,ExenLipu,DescLipu,GastLipu,TotaLipu,CucuPers,CodiRuta,CodiCall,NucaLipu,CallLipu,CodiBarr,ManzLipu,CasaLipu,UbicLipu,CodiLoca,LocaLipu,CopoLipu,PlanLipu,SectLipu,Orden) "
  loc_D107E8: ConcatStr
  loc_D107E9: FStStrNoPop var_148
  loc_D107EC: LitStr " VALUES ("
  loc_D107EF: ConcatStr
  loc_D107F0: FStStrNoPop var_14C
  loc_D107F3: FLdI2 PeriLiqu
  loc_D107F6: CStrUI1
  loc_D107F8: FStStrNoPop var_150
  loc_D107FB: ConcatStr
  loc_D107FC: FStStrNoPop var_154
  loc_D107FF: LitStr ","
  loc_D10802: ConcatStr
  loc_D10803: FStStrNoPop var_158
  loc_D10806: FLdUI1
  loc_D1080A: CStrI2
  loc_D1080C: FStStrNoPop var_15C
  loc_D1080F: ConcatStr
  loc_D10810: FStStrNoPop var_160
  loc_D10813: LitStr ","
  loc_D10816: ConcatStr
  loc_D10817: FStStrNoPop var_164
  loc_D1081A: FLdUI1
  loc_D1081E: CStrI2
  loc_D10820: FStStrNoPop var_168
  loc_D10823: ConcatStr
  loc_D10824: FStStrNoPop var_16C
  loc_D10827: LitStr ","
  loc_D1082A: ConcatStr
  loc_D1082B: FStStrNoPop var_170
  loc_D1082E: FLdI2 NumeLiqu
  loc_D10831: CStrUI1
  loc_D10833: FStStrNoPop var_174
  loc_D10836: ConcatStr
  loc_D10837: FStStrNoPop var_178
  loc_D1083A: LitStr ","
  loc_D1083D: ConcatStr
  loc_D1083E: FStStrNoPop var_17C
  loc_D10841: ILdRf CodiCome
  loc_D10844: CStrI4
  loc_D10846: FStStrNoPop var_68C
  loc_D10849: ConcatStr
  loc_D1084A: FStStrNoPop var_690
  loc_D1084D: LitStr ",'"
  loc_D10850: ConcatStr
  loc_D10851: FStStrNoPop var_694
  loc_D10854: ILdRf var_88
  loc_D10857: ConcatStr
  loc_D10858: FStStrNoPop var_698
  loc_D1085B: LitStr "',"
  loc_D1085E: ConcatStr
  loc_D1085F: FStStrNoPop var_69C
  loc_D10862: FLdUI1
  loc_D10866: CStrI2
  loc_D10868: FStStrNoPop var_6A0
  loc_D1086B: ConcatStr
  loc_D1086C: FStStrNoPop var_6A4
  loc_D1086F: LitStr ",'No','"
  loc_D10872: ConcatStr
  loc_D10873: FStStrNoPop var_6A8
  loc_D10876: ILdRf var_8C
  loc_D10879: ConcatStr
  loc_D1087A: FStStrNoPop var_6AC
  loc_D1087D: LitStr "','"
  loc_D10880: ConcatStr
  loc_D10881: FStStrNoPop var_6B0
  loc_D10884: LitI4 1
  loc_D10889: LitI4 1
  loc_D1088E: LitVarStr var_1BC, "yyyy-mm-dd"
  loc_D10893: FStVarCopyObj var_1AC
  loc_D10896: FLdRfVar var_1AC
  loc_D10899: FLdRfVar arg_9C
  loc_D1089C: CVarRef
  loc_D108A1: ImpAdCallI2 Format$(, )
  loc_D108A6: FStStrNoPop var_6B4
  loc_D108A9: ConcatStr
  loc_D108AA: FStStrNoPop var_6B8
  loc_D108AD: LitStr "','"
  loc_D108B0: ConcatStr
  loc_D108B1: FStStrNoPop var_6BC
  loc_D108B4: LitI4 1
  loc_D108B9: LitI4 1
  loc_D108BE: LitVarStr var_220, "yyyy-mm-dd"
  loc_D108C3: FStVarCopyObj var_1CC
  loc_D108C6: FLdRfVar var_1CC
  loc_D108C9: FLdRfVar var_90
  loc_D108CC: CVarRef
  loc_D108D1: ImpAdCallI2 Format$(, )
  loc_D108D6: FStStrNoPop var_6C0
  loc_D108D9: ConcatStr
  loc_D108DA: FStStrNoPop var_6C4
  loc_D108DD: LitStr "',"
  loc_D108E0: ConcatStr
  loc_D108E1: FStStrNoPop var_6CC
  loc_D108E4: LitI4 0
  loc_D108E9: LitI4 -1
  loc_D108EE: LitI4 1
  loc_D108F3: LitStr "."
  loc_D108F6: LitStr ","
  loc_D108F9: FLdFPR8 DeudLipu
  loc_D108FC: CStrR8
  loc_D108FE: FStStrNoPop var_6C8
  loc_D10901: ImpAdCallI2 Replace(, , , , , )
  loc_D10906: FStStrNoPop var_6D0
  loc_D10909: ConcatStr
  loc_D1090A: FStStrNoPop var_6D4
  loc_D1090D: LitStr ","
  loc_D10910: ConcatStr
  loc_D10911: FStStrNoPop var_6DC
  loc_D10914: LitI4 0
  loc_D10919: LitI4 -1
  loc_D1091E: LitI4 1
  loc_D10923: LitStr "."
  loc_D10926: LitStr ","
  loc_D10929: FLdFPR8 var_124
  loc_D1092C: CStrR8
  loc_D1092E: FStStrNoPop var_6D8
  loc_D10931: ImpAdCallI2 Replace(, , , , , )
  loc_D10936: FStStrNoPop var_6E0
  loc_D10939: ConcatStr
  loc_D1093A: FStStrNoPop var_6E4
  loc_D1093D: LitStr ","
  loc_D10940: ConcatStr
  loc_D10941: FStStrNoPop var_6EC
  loc_D10944: LitI4 0
  loc_D10949: LitI4 -1
  loc_D1094E: LitI4 1
  loc_D10953: LitStr "."
  loc_D10956: LitStr ","
  loc_D10959: FLdFPR8 var_13C
  loc_D1095C: CStrR8
  loc_D1095E: FStStrNoPop var_6E8
  loc_D10961: ImpAdCallI2 Replace(, , , , , )
  loc_D10966: FStStrNoPop var_6F0
  loc_D10969: ConcatStr
  loc_D1096A: FStStrNoPop var_6F4
  loc_D1096D: LitStr ","
  loc_D10970: ConcatStr
  loc_D10971: FStStrNoPop var_6FC
  loc_D10974: LitI4 0
  loc_D10979: LitI4 -1
  loc_D1097E: LitI4 1
  loc_D10983: LitStr "."
  loc_D10986: LitStr ","
  loc_D10989: FLdFPR8 var_134
  loc_D1098C: CStrR8
  loc_D1098E: FStStrNoPop var_6F8
  loc_D10991: ImpAdCallI2 Replace(, , , , , )
  loc_D10996: FStStrNoPop var_700
  loc_D10999: ConcatStr
  loc_D1099A: FStStrNoPop var_704
  loc_D1099D: LitStr ","
  loc_D109A0: ConcatStr
  loc_D109A1: FStStrNoPop var_70C
  loc_D109A4: LitI4 0
  loc_D109A9: LitI4 -1
  loc_D109AE: LitI4 1
  loc_D109B3: LitStr "."
  loc_D109B6: LitStr ","
  loc_D109B9: FLdFPR8 var_12C
  loc_D109BC: CStrR8
  loc_D109BE: FStStrNoPop var_708
  loc_D109C1: ImpAdCallI2 Replace(, , , , , )
  loc_D109C6: FStStrNoPop var_710
  loc_D109C9: ConcatStr
  loc_D109CA: FStStrNoPop var_714
  loc_D109CD: LitStr ","
  loc_D109D0: ConcatStr
  loc_D109D1: FStStrNoPop var_71C
  loc_D109D4: LitI4 0
  loc_D109D9: LitI4 -1
  loc_D109DE: LitI4 1
  loc_D109E3: LitStr "."
  loc_D109E6: LitStr ","
  loc_D109E9: FLdFPR8 arg_58
  loc_D109EC: CStrR8
  loc_D109EE: FStStrNoPop var_718
  loc_D109F1: ImpAdCallI2 Replace(, , , , , )
  loc_D109F6: FStStrNoPop var_720
  loc_D109F9: ConcatStr
  loc_D109FA: FStStrNoPop var_724
  loc_D109FD: LitStr ","
  loc_D10A00: ConcatStr
  loc_D10A01: FStStrNoPop var_72C
  loc_D10A04: LitI4 0
  loc_D10A09: LitI4 -1
  loc_D10A0E: LitI4 1
  loc_D10A13: LitStr "."
  loc_D10A16: LitStr ","
  loc_D10A19: FLdFPR8 arg_60
  loc_D10A1C: CStrR8
  loc_D10A1E: FStStrNoPop var_728
  loc_D10A21: ImpAdCallI2 Replace(, , , , , )
  loc_D10A26: FStStrNoPop var_730
  loc_D10A29: ConcatStr
  loc_D10A2A: FStStrNoPop var_734
  loc_D10A2D: LitStr ",'"
  loc_D10A30: ConcatStr
  loc_D10A31: FStStrNoPop var_738
  loc_D10A34: ILdRf var_94
  loc_D10A37: ConcatStr
  loc_D10A38: FStStrNoPop var_73C
  loc_D10A3B: LitStr "',"
  loc_D10A3E: ConcatStr
  loc_D10A3F: FStStrNoPop var_740
  loc_D10A42: FLdI2 arg_6C
  loc_D10A45: CStrUI1
  loc_D10A47: FStStrNoPop var_744
  loc_D10A4A: ConcatStr
  loc_D10A4B: FStStrNoPop var_748
  loc_D10A4E: LitStr ","
  loc_D10A51: ConcatStr
  loc_D10A52: FStStrNoPop var_74C
  loc_D10A55: ILdRf arg_70
  loc_D10A58: CStrI4
  loc_D10A5A: FStStrNoPop var_750
  loc_D10A5D: ConcatStr
  loc_D10A5E: FStStrNoPop var_754
  loc_D10A61: LitStr ",'"
  loc_D10A64: ConcatStr
  loc_D10A65: FStStrNoPop var_758
  loc_D10A68: ILdRf var_98
  loc_D10A6B: ConcatStr
  loc_D10A6C: FStStrNoPop var_75C
  loc_D10A6F: LitStr "','"
  loc_D10A72: ConcatStr
  loc_D10A73: FStStrNoPop var_760
  loc_D10A76: LitI4 0
  loc_D10A7B: LitI4 -1
  loc_D10A80: LitI4 1
  loc_D10A85: LitStr " "
  loc_D10A88: LitStr "'"
  loc_D10A8B: ILdRf var_9C
  loc_D10A8E: ImpAdCallI2 Replace(, , , , , )
  loc_D10A93: FStStrNoPop var_764
  loc_D10A96: ConcatStr
  loc_D10A97: FStStrNoPop var_768
  loc_D10A9A: LitStr "',"
  loc_D10A9D: ConcatStr
  loc_D10A9E: FStStrNoPop var_76C
  loc_D10AA1: FLdI2 arg_7C
  loc_D10AA4: CStrUI1
  loc_D10AA6: FStStrNoPop var_770
  loc_D10AA9: ConcatStr
  loc_D10AAA: FStStrNoPop var_774
  loc_D10AAD: LitStr ",'"
  loc_D10AB0: ConcatStr
  loc_D10AB1: FStStrNoPop var_778
  loc_D10AB4: ILdRf var_A4
  loc_D10AB7: ConcatStr
  loc_D10AB8: FStStrNoPop var_77C
  loc_D10ABB: LitStr "','"
  loc_D10ABE: ConcatStr
  loc_D10ABF: FStStrNoPop var_780
  loc_D10AC2: ILdRf var_A8
  loc_D10AC5: ConcatStr
  loc_D10AC6: FStStrNoPop var_784
  loc_D10AC9: LitStr "','"
  loc_D10ACC: ConcatStr
  loc_D10ACD: FStStrNoPop var_788
  loc_D10AD0: ILdRf var_AC
  loc_D10AD3: ConcatStr
  loc_D10AD4: FStStrNoPop var_78C
  loc_D10AD7: LitStr "',"
  loc_D10ADA: ConcatStr
  loc_D10ADB: FStStrNoPop var_790
  loc_D10ADE: FLdI2 arg_90
  loc_D10AE1: CStrUI1
  loc_D10AE3: FStStrNoPop var_794
  loc_D10AE6: ConcatStr
  loc_D10AE7: FStStrNoPop var_798
  loc_D10AEA: LitStr ",'"
  loc_D10AED: ConcatStr
  loc_D10AEE: FStStrNoPop var_79C
  loc_D10AF1: ILdRf var_B0
  loc_D10AF4: ConcatStr
  loc_D10AF5: FStStrNoPop var_7A0
  loc_D10AF8: LitStr "','"
  loc_D10AFB: ConcatStr
  loc_D10AFC: FStStrNoPop var_7A4
  loc_D10AFF: ILdRf var_B4
  loc_D10B02: ConcatStr
  loc_D10B03: FStStrNoPop var_7A8
  loc_D10B06: LitStr "','"
  loc_D10B09: ConcatStr
  loc_D10B0A: FStStrNoPop var_7AC
  loc_D10B0D: ILdRf var_B8
  loc_D10B10: ConcatStr
  loc_D10B11: FStStrNoPop var_7B0
  loc_D10B14: LitStr "','"
  loc_D10B17: ConcatStr
  loc_D10B18: FStStrNoPop var_7B4
  loc_D10B1B: ILdRf var_BC
  loc_D10B1E: ConcatStr
  loc_D10B1F: FStStrNoPop var_7B8
  loc_D10B22: LitStr "',"
  loc_D10B25: ConcatStr
  loc_D10B26: FStStrNoPop var_7BC
  loc_D10B29: FLdI2 arg_D4
  loc_D10B2C: CStrUI1
  loc_D10B2E: FStStrNoPop var_7C0
  loc_D10B31: ConcatStr
  loc_D10B32: FStStrNoPop var_7C4
  loc_D10B35: LitStr ");"
  loc_D10B38: ConcatStr
  loc_D10B39: FStStr var_140
  loc_D10B3C: FFreeStr var_7BC = "": var_7C0 = "": var_7C4 = "": var_744 = "": var_748 = "": var_74C = "": var_750 = "": var_754 = "": var_758 = "": var_75C = "": var_760 = "": var_764 = "": var_768 = "": var_76C = "": var_770 = "": var_774 = "": var_778 = "": var_77C = "": var_780 = "": var_784 = "": var_788 = "": var_78C = "": var_790 = "": var_794 = "": var_798 = "": var_79C = "": var_7A0 = "": var_7A4 = "": var_7A8 = "": var_7AC = "": var_7B0 = "": var_7B4 = "": var_7B8 = "": var_6CC = "": var_6D0 = "": var_6D4 = "": var_6D8 = "": var_6DC = "": var_6E0 = "": var_6E4 = "": var_6E8 = "": var_6EC = "": var_6F0 = "": var_6F4 = "": var_6F8 = "": var_6FC = "": var_700 = "": var_704 = "": var_708 = "": var_70C = "": var_710 = "": var_714 = "": var_718 = "": var_71C = "": var_720 = "": var_724 = "": var_728 = "": var_72C = "": var_730 = "": var_734 = "": var_738 = "": var_73C = "": var_740 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_68C = "": var_690 = "": var_694 = "": var_698 = "": var_69C = "": var_6A0 = "": var_6A4 = "": var_6A8 = "": var_6AC = "": var_6B0 = "": var_6B4 = "": var_6B8 = "": var_6BC = "": var_6C0 = "": var_6C4 = ""
  loc_D10BF9: FFreeVar var_1AC = ""
  loc_D10C00: Branch loc_D11112
  loc_D10C03: LitI2_Byte 0
  loc_D10C05: CR8I2
  loc_D10C06: FStFPR8 var_12C
  loc_D10C09: LitI2_Byte 0
  loc_D10C0B: CR8I2
  loc_D10C0C: FStFPR8 var_134
  loc_D10C0F: LitI2_Byte 0
  loc_D10C11: CR8I2
  loc_D10C12: FStFPR8 var_13C
  loc_D10C15: FLdRfVar var_1AC
  loc_D10C18: FLdRfVar var_19C
  loc_D10C1B: LitVarStr var_198, "CodiConc"
  loc_D10C20: PopAdLdVar
  loc_D10C21: FLdRfVar var_188
  loc_D10C24: FLdPr Me
  loc_D10C27: MemLdPr global_64
  loc_D10C2A:  = Me.Fields
  loc_D10C2F: FLdPr var_188
  loc_D10C32: from_stack_2 = Me.Item(from_stack_1)
  loc_D10C37: FLdPr var_19C
  loc_D10C3A:  = Me.Value
  loc_D10C3F: FLdRfVar var_1AC
  loc_D10C42: LitVarStr var_1BC, "13030202"
  loc_D10C47: HardType
  loc_D10C48: EqVarBool
  loc_D10C4A: FFreeAd var_188 = ""
  loc_D10C51: FFree1Var var_1AC = ""
  loc_D10C54: BranchF loc_D10C96
  loc_D10C57: FLdRfVar var_1AC
  loc_D10C5A: FLdRfVar var_19C
  loc_D10C5D: LitVarStr var_198, "ImpoLipu"
  loc_D10C62: PopAdLdVar
  loc_D10C63: FLdRfVar var_188
  loc_D10C66: FLdPr Me
  loc_D10C69: MemLdPr global_64
  loc_D10C6C:  = Me.Fields
  loc_D10C71: FLdPr var_188
  loc_D10C74: from_stack_2 = Me.Item(from_stack_1)
  loc_D10C79: FLdPr var_19C
  loc_D10C7C:  = Me.Value
  loc_D10C81: FLdRfVar var_1AC
  loc_D10C84: FnCDblVar
  loc_D10C86: FStFPR8 var_124
  loc_D10C89: FFreeAd var_188 = ""
  loc_D10C90: FFree1Var var_1AC = ""
  loc_D10C93: Branch loc_D10CD6
  loc_D10C96: FLdRfVar var_1AC
  loc_D10C99: FLdRfVar var_19C
  loc_D10C9C: LitVarStr var_198, "ImpoLipu"
  loc_D10CA1: PopAdLdVar
  loc_D10CA2: FLdRfVar var_188
  loc_D10CA5: FLdPr Me
  loc_D10CA8: MemLdPr global_64
  loc_D10CAB:  = Me.Fields
  loc_D10CB0: FLdPr var_188
  loc_D10CB3: from_stack_2 = Me.Item(from_stack_1)
  loc_D10CB8: FLdPr var_19C
  loc_D10CBB:  = Me.Value
  loc_D10CC0: FLdRfVar var_1AC
  loc_D10CC3: FnCDblVar
  loc_D10CC5: LitI2_Byte 2
  loc_D10CC7: CR8I2
  loc_D10CC8: MulR8
  loc_D10CC9: FStFPR8 var_124
  loc_D10CCC: FFreeAd var_188 = ""
  loc_D10CD3: FFree1Var var_1AC = ""
  loc_D10CD6: LitI2_Byte 0
  loc_D10CD8: CR8I2
  loc_D10CD9: FStFPR8 var_134
  loc_D10CDC: LitI2_Byte 0
  loc_D10CDE: CR8I2
  loc_D10CDF: FStFPR8 var_13C
  loc_D10CE2: FLdFPR8 var_124
  loc_D10CE5: FLdFPR8 var_12C
  loc_D10CE8: SubR4
  loc_D10CE9: FLdFPR8 var_13C
  loc_D10CEC: SubR4
  loc_D10CED: FLdFPR8 var_134
  loc_D10CF0: SubR4
  loc_D10CF1: FStFPR8 arg_60
  loc_D10CF4: ILdRf var_140
  loc_D10CF7: LitStr " INSERT INTO liqupubl (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,ActuLipu,TipoLipu,FealLico,FeveLipu,DeudLipu,ImpoLipu,CrafLipu,ExenLipu,DescLico,GastLipu,TotaLipu,CucuPers,CodiRuta,CodiCall,NucaLipu,CallLico,CodiBarr,ManzLipu,CasaLipu,UbicLipu,CodiLoca,LocaLipu,CopoLipu,PlanLipu,SectLipu,Orden) "
  loc_D10CFA: ConcatStr
  loc_D10CFB: FStStrNoPop var_148
  loc_D10CFE: LitStr " VALUES ("
  loc_D10D01: ConcatStr
  loc_D10D02: FStStrNoPop var_14C
  loc_D10D05: FLdI2 PeriLiqu
  loc_D10D08: CStrUI1
  loc_D10D0A: FStStrNoPop var_150
  loc_D10D0D: ConcatStr
  loc_D10D0E: FStStrNoPop var_154
  loc_D10D11: LitStr ","
  loc_D10D14: ConcatStr
  loc_D10D15: FStStrNoPop var_158
  loc_D10D18: FLdUI1
  loc_D10D1C: CStrI2
  loc_D10D1E: FStStrNoPop var_15C
  loc_D10D21: ConcatStr
  loc_D10D22: FStStrNoPop var_160
  loc_D10D25: LitStr ","
  loc_D10D28: ConcatStr
  loc_D10D29: FStStrNoPop var_164
  loc_D10D2C: FLdUI1
  loc_D10D30: CStrI2
  loc_D10D32: FStStrNoPop var_168
  loc_D10D35: ConcatStr
  loc_D10D36: FStStrNoPop var_16C
  loc_D10D39: LitStr ","
  loc_D10D3C: ConcatStr
  loc_D10D3D: FStStrNoPop var_170
  loc_D10D40: FLdI2 NumeLiqu
  loc_D10D43: CStrUI1
  loc_D10D45: FStStrNoPop var_174
  loc_D10D48: ConcatStr
  loc_D10D49: FStStrNoPop var_178
  loc_D10D4C: LitStr ","
  loc_D10D4F: ConcatStr
  loc_D10D50: FStStrNoPop var_17C
  loc_D10D53: ILdRf CodiCome
  loc_D10D56: CStrI4
  loc_D10D58: FStStrNoPop var_68C
  loc_D10D5B: ConcatStr
  loc_D10D5C: FStStrNoPop var_690
  loc_D10D5F: LitStr ",'"
  loc_D10D62: ConcatStr
  loc_D10D63: FStStrNoPop var_694
  loc_D10D66: ILdRf var_88
  loc_D10D69: ConcatStr
  loc_D10D6A: FStStrNoPop var_698
  loc_D10D6D: LitStr "',"
  loc_D10D70: ConcatStr
  loc_D10D71: FStStrNoPop var_69C
  loc_D10D74: FLdUI1
  loc_D10D78: CStrI2
  loc_D10D7A: FStStrNoPop var_6A0
  loc_D10D7D: ConcatStr
  loc_D10D7E: FStStrNoPop var_6A4
  loc_D10D81: LitStr ",'No','"
  loc_D10D84: ConcatStr
  loc_D10D85: FStStrNoPop var_6A8
  loc_D10D88: ILdRf var_8C
  loc_D10D8B: ConcatStr
  loc_D10D8C: FStStrNoPop var_6AC
  loc_D10D8F: LitStr "','"
  loc_D10D92: ConcatStr
  loc_D10D93: FStStrNoPop var_6B0
  loc_D10D96: LitI4 1
  loc_D10D9B: LitI4 1
  loc_D10DA0: LitVarStr var_1BC, "yyyy-mm-dd"
  loc_D10DA5: FStVarCopyObj var_1AC
  loc_D10DA8: FLdRfVar var_1AC
  loc_D10DAB: FLdRfVar arg_9C
  loc_D10DAE: CVarRef
  loc_D10DB3: ImpAdCallI2 Format$(, )
  loc_D10DB8: FStStrNoPop var_6B4
  loc_D10DBB: ConcatStr
  loc_D10DBC: FStStrNoPop var_6B8
  loc_D10DBF: LitStr "','"
  loc_D10DC2: ConcatStr
  loc_D10DC3: FStStrNoPop var_6BC
  loc_D10DC6: LitI4 1
  loc_D10DCB: LitI4 1
  loc_D10DD0: LitVarStr var_220, "yyyy-mm-dd"
  loc_D10DD5: FStVarCopyObj var_1CC
  loc_D10DD8: FLdRfVar var_1CC
  loc_D10DDB: FLdRfVar var_90
  loc_D10DDE: CVarRef
  loc_D10DE3: ImpAdCallI2 Format$(, )
  loc_D10DE8: FStStrNoPop var_6C0
  loc_D10DEB: ConcatStr
  loc_D10DEC: FStStrNoPop var_6C4
  loc_D10DEF: LitStr "',"
  loc_D10DF2: ConcatStr
  loc_D10DF3: FStStrNoPop var_6CC
  loc_D10DF6: LitI4 0
  loc_D10DFB: LitI4 -1
  loc_D10E00: LitI4 1
  loc_D10E05: LitStr "."
  loc_D10E08: LitStr ","
  loc_D10E0B: FLdFPR8 DeudLipu
  loc_D10E0E: CStrR8
  loc_D10E10: FStStrNoPop var_6C8
  loc_D10E13: ImpAdCallI2 Replace(, , , , , )
  loc_D10E18: FStStrNoPop var_6D0
  loc_D10E1B: ConcatStr
  loc_D10E1C: FStStrNoPop var_6D4
  loc_D10E1F: LitStr ","
  loc_D10E22: ConcatStr
  loc_D10E23: FStStrNoPop var_6DC
  loc_D10E26: LitI4 0
  loc_D10E2B: LitI4 -1
  loc_D10E30: LitI4 1
  loc_D10E35: LitStr "."
  loc_D10E38: LitStr ","
  loc_D10E3B: FLdFPR8 var_124
  loc_D10E3E: CStrR8
  loc_D10E40: FStStrNoPop var_6D8
  loc_D10E43: ImpAdCallI2 Replace(, , , , , )
  loc_D10E48: FStStrNoPop var_6E0
  loc_D10E4B: ConcatStr
  loc_D10E4C: FStStrNoPop var_6E4
  loc_D10E4F: LitStr ","
  loc_D10E52: ConcatStr
  loc_D10E53: FStStrNoPop var_6EC
  loc_D10E56: LitI4 0
  loc_D10E5B: LitI4 -1
  loc_D10E60: LitI4 1
  loc_D10E65: LitStr "."
  loc_D10E68: LitStr ","
  loc_D10E6B: FLdFPR8 var_13C
  loc_D10E6E: CStrR8
  loc_D10E70: FStStrNoPop var_6E8
  loc_D10E73: ImpAdCallI2 Replace(, , , , , )
  loc_D10E78: FStStrNoPop var_6F0
  loc_D10E7B: ConcatStr
  loc_D10E7C: FStStrNoPop var_6F4
  loc_D10E7F: LitStr ","
  loc_D10E82: ConcatStr
  loc_D10E83: FStStrNoPop var_6FC
  loc_D10E86: LitI4 0
  loc_D10E8B: LitI4 -1
  loc_D10E90: LitI4 1
  loc_D10E95: LitStr "."
  loc_D10E98: LitStr ","
  loc_D10E9B: FLdFPR8 var_134
  loc_D10E9E: CStrR8
  loc_D10EA0: FStStrNoPop var_6F8
  loc_D10EA3: ImpAdCallI2 Replace(, , , , , )
  loc_D10EA8: FStStrNoPop var_700
  loc_D10EAB: ConcatStr
  loc_D10EAC: FStStrNoPop var_704
  loc_D10EAF: LitStr ","
  loc_D10EB2: ConcatStr
  loc_D10EB3: FStStrNoPop var_70C
  loc_D10EB6: LitI4 0
  loc_D10EBB: LitI4 -1
  loc_D10EC0: LitI4 1
  loc_D10EC5: LitStr "."
  loc_D10EC8: LitStr ","
  loc_D10ECB: FLdFPR8 var_12C
  loc_D10ECE: CStrR8
  loc_D10ED0: FStStrNoPop var_708
  loc_D10ED3: ImpAdCallI2 Replace(, , , , , )
  loc_D10ED8: FStStrNoPop var_710
  loc_D10EDB: ConcatStr
  loc_D10EDC: FStStrNoPop var_714
  loc_D10EDF: LitStr ","
  loc_D10EE2: ConcatStr
  loc_D10EE3: FStStrNoPop var_71C
  loc_D10EE6: LitI4 0
  loc_D10EEB: LitI4 -1
  loc_D10EF0: LitI4 1
  loc_D10EF5: LitStr "."
  loc_D10EF8: LitStr ","
  loc_D10EFB: FLdFPR8 arg_58
  loc_D10EFE: CStrR8
  loc_D10F00: FStStrNoPop var_718
  loc_D10F03: ImpAdCallI2 Replace(, , , , , )
  loc_D10F08: FStStrNoPop var_720
  loc_D10F0B: ConcatStr
  loc_D10F0C: FStStrNoPop var_724
  loc_D10F0F: LitStr ","
  loc_D10F12: ConcatStr
  loc_D10F13: FStStrNoPop var_72C
  loc_D10F16: LitI4 0
  loc_D10F1B: LitI4 -1
  loc_D10F20: LitI4 1
  loc_D10F25: LitStr "."
  loc_D10F28: LitStr ","
  loc_D10F2B: FLdFPR8 arg_60
  loc_D10F2E: CStrR8
  loc_D10F30: FStStrNoPop var_728
  loc_D10F33: ImpAdCallI2 Replace(, , , , , )
  loc_D10F38: FStStrNoPop var_730
  loc_D10F3B: ConcatStr
  loc_D10F3C: FStStrNoPop var_734
  loc_D10F3F: LitStr ",'"
  loc_D10F42: ConcatStr
  loc_D10F43: FStStrNoPop var_738
  loc_D10F46: ILdRf var_94
  loc_D10F49: ConcatStr
  loc_D10F4A: FStStrNoPop var_73C
  loc_D10F4D: LitStr "',"
  loc_D10F50: ConcatStr
  loc_D10F51: FStStrNoPop var_740
  loc_D10F54: FLdI2 arg_6C
  loc_D10F57: CStrUI1
  loc_D10F59: FStStrNoPop var_744
  loc_D10F5C: ConcatStr
  loc_D10F5D: FStStrNoPop var_748
  loc_D10F60: LitStr ","
  loc_D10F63: ConcatStr
  loc_D10F64: FStStrNoPop var_74C
  loc_D10F67: ILdRf arg_70
  loc_D10F6A: CStrI4
  loc_D10F6C: FStStrNoPop var_750
  loc_D10F6F: ConcatStr
  loc_D10F70: FStStrNoPop var_754
  loc_D10F73: LitStr ",'"
  loc_D10F76: ConcatStr
  loc_D10F77: FStStrNoPop var_758
  loc_D10F7A: ILdRf var_98
  loc_D10F7D: ConcatStr
  loc_D10F7E: FStStrNoPop var_75C
  loc_D10F81: LitStr "','"
  loc_D10F84: ConcatStr
  loc_D10F85: FStStrNoPop var_760
  loc_D10F88: LitI4 0
  loc_D10F8D: LitI4 -1
  loc_D10F92: LitI4 1
  loc_D10F97: LitStr " "
  loc_D10F9A: LitStr "'"
  loc_D10F9D: ILdRf var_9C
  loc_D10FA0: ImpAdCallI2 Replace(, , , , , )
  loc_D10FA5: FStStrNoPop var_764
  loc_D10FA8: ConcatStr
  loc_D10FA9: FStStrNoPop var_768
  loc_D10FAC: LitStr "',"
  loc_D10FAF: ConcatStr
  loc_D10FB0: FStStrNoPop var_76C
  loc_D10FB3: FLdI2 arg_7C
  loc_D10FB6: CStrUI1
  loc_D10FB8: FStStrNoPop var_770
  loc_D10FBB: ConcatStr
  loc_D10FBC: FStStrNoPop var_774
  loc_D10FBF: LitStr ",'"
  loc_D10FC2: ConcatStr
  loc_D10FC3: FStStrNoPop var_778
  loc_D10FC6: ILdRf var_A4
  loc_D10FC9: ConcatStr
  loc_D10FCA: FStStrNoPop var_77C
  loc_D10FCD: LitStr "','"
  loc_D10FD0: ConcatStr
  loc_D10FD1: FStStrNoPop var_780
  loc_D10FD4: ILdRf var_A8
  loc_D10FD7: ConcatStr
  loc_D10FD8: FStStrNoPop var_784
  loc_D10FDB: LitStr "','"
  loc_D10FDE: ConcatStr
  loc_D10FDF: FStStrNoPop var_788
  loc_D10FE2: ILdRf var_AC
  loc_D10FE5: ConcatStr
  loc_D10FE6: FStStrNoPop var_78C
  loc_D10FE9: LitStr "',"
  loc_D10FEC: ConcatStr
  loc_D10FED: FStStrNoPop var_790
  loc_D10FF0: FLdI2 arg_90
  loc_D10FF3: CStrUI1
  loc_D10FF5: FStStrNoPop var_794
  loc_D10FF8: ConcatStr
  loc_D10FF9: FStStrNoPop var_798
  loc_D10FFC: LitStr ",'"
  loc_D10FFF: ConcatStr
  loc_D11000: FStStrNoPop var_79C
  loc_D11003: ILdRf var_B0
  loc_D11006: ConcatStr
  loc_D11007: FStStrNoPop var_7A0
  loc_D1100A: LitStr "','"
  loc_D1100D: ConcatStr
  loc_D1100E: FStStrNoPop var_7A4
  loc_D11011: ILdRf var_B4
  loc_D11014: ConcatStr
  loc_D11015: FStStrNoPop var_7A8
  loc_D11018: LitStr "','"
  loc_D1101B: ConcatStr
  loc_D1101C: FStStrNoPop var_7AC
  loc_D1101F: ILdRf var_B8
  loc_D11022: ConcatStr
  loc_D11023: FStStrNoPop var_7B0
  loc_D11026: LitStr "','"
  loc_D11029: ConcatStr
  loc_D1102A: FStStrNoPop var_7B4
  loc_D1102D: ILdRf var_BC
  loc_D11030: ConcatStr
  loc_D11031: FStStrNoPop var_7B8
  loc_D11034: LitStr "',"
  loc_D11037: ConcatStr
  loc_D11038: FStStrNoPop var_7BC
  loc_D1103B: FLdI2 arg_D4
  loc_D1103E: CStrUI1
  loc_D11040: FStStrNoPop var_7C0
  loc_D11043: ConcatStr
  loc_D11044: FStStrNoPop var_7C4
  loc_D11047: LitStr ");"
  loc_D1104A: ConcatStr
  loc_D1104B: FStStr var_140
  loc_D1104E: FFreeStr var_7BC = "": var_7C0 = "": var_7C4 = "": var_744 = "": var_748 = "": var_74C = "": var_750 = "": var_754 = "": var_758 = "": var_75C = "": var_760 = "": var_764 = "": var_768 = "": var_76C = "": var_770 = "": var_774 = "": var_778 = "": var_77C = "": var_780 = "": var_784 = "": var_788 = "": var_78C = "": var_790 = "": var_794 = "": var_798 = "": var_79C = "": var_7A0 = "": var_7A4 = "": var_7A8 = "": var_7AC = "": var_7B0 = "": var_7B4 = "": var_7B8 = "": var_6CC = "": var_6D0 = "": var_6D4 = "": var_6D8 = "": var_6DC = "": var_6E0 = "": var_6E4 = "": var_6E8 = "": var_6EC = "": var_6F0 = "": var_6F4 = "": var_6F8 = "": var_6FC = "": var_700 = "": var_704 = "": var_708 = "": var_70C = "": var_710 = "": var_714 = "": var_718 = "": var_71C = "": var_720 = "": var_724 = "": var_728 = "": var_72C = "": var_730 = "": var_734 = "": var_738 = "": var_73C = "": var_740 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_68C = "": var_690 = "": var_694 = "": var_698 = "": var_69C = "": var_6A0 = "": var_6A4 = "": var_6A8 = "": var_6AC = "": var_6B0 = "": var_6B4 = "": var_6B8 = "": var_6BC = "": var_6C0 = "": var_6C4 = ""
  loc_D1110B: FFreeVar var_1AC = ""
  loc_D11112: FLdPr Me
  loc_D11115: MemLdPr global_64
  loc_D11118: Me.MoveNext
  loc_D1111D: Branch loc_D0FEAE
  loc_D11120: ILdRf var_140
  loc_D11123: Call EjecutarRsCls(from_stack_1v)
  loc_D11128: Branch loc_D130DE
  loc_D1112B: LitStr "START TRANSACTION;  INSERT INTO liqupubl (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,ActuLipu,TipoLipu,FealLipu,FeveLipu,DeudLipu,ImpoLipu,CrafLipu,ExenLipu,DescLipu,GastLipu,TotaLipu,CucuPers,CodiRuta,CodiCall,NucaLipu,CallLipu,CodiBarr,ManzLipu,CasaLipu,UbicLipu,CodiLoca,LocaLipu,CopoLipu,PlanLipu,SectLipu,Orden) "
  loc_D1112E: LitStr " VALUES ("
  loc_D11131: ConcatStr
  loc_D11132: FStStrNoPop var_148
  loc_D11135: FLdI2 PeriLiqu
  loc_D11138: CStrUI1
  loc_D1113A: FStStrNoPop var_14C
  loc_D1113D: ConcatStr
  loc_D1113E: FStStrNoPop var_150
  loc_D11141: LitStr ","
  loc_D11144: ConcatStr
  loc_D11145: FStStrNoPop var_154
  loc_D11148: FLdUI1
  loc_D1114C: CStrI2
  loc_D1114E: FStStrNoPop var_158
  loc_D11151: ConcatStr
  loc_D11152: FStStrNoPop var_15C
  loc_D11155: LitStr ","
  loc_D11158: ConcatStr
  loc_D11159: FStStrNoPop var_160
  loc_D1115C: FLdUI1
  loc_D11160: CStrI2
  loc_D11162: FStStrNoPop var_164
  loc_D11165: ConcatStr
  loc_D11166: FStStrNoPop var_168
  loc_D11169: LitStr ","
  loc_D1116C: ConcatStr
  loc_D1116D: FStStrNoPop var_16C
  loc_D11170: FLdI2 NumeLiqu
  loc_D11173: CStrUI1
  loc_D11175: FStStrNoPop var_170
  loc_D11178: ConcatStr
  loc_D11179: FStStrNoPop var_174
  loc_D1117C: LitStr ","
  loc_D1117F: ConcatStr
  loc_D11180: FStStrNoPop var_178
  loc_D11183: ILdRf CodiCome
  loc_D11186: CStrI4
  loc_D11188: FStStrNoPop var_17C
  loc_D1118B: ConcatStr
  loc_D1118C: FStStrNoPop var_68C
  loc_D1118F: LitStr ",'"
  loc_D11192: ConcatStr
  loc_D11193: FStStrNoPop var_690
  loc_D11196: ILdRf var_88
  loc_D11199: ConcatStr
  loc_D1119A: FStStrNoPop var_694
  loc_D1119D: LitStr "',"
  loc_D111A0: ConcatStr
  loc_D111A1: FStStrNoPop var_698
  loc_D111A4: FLdUI1
  loc_D111A8: CStrI2
  loc_D111AA: FStStrNoPop var_69C
  loc_D111AD: ConcatStr
  loc_D111AE: FStStrNoPop var_6A0
  loc_D111B1: LitStr ",'No','"
  loc_D111B4: ConcatStr
  loc_D111B5: FStStrNoPop var_6A4
  loc_D111B8: ILdRf var_8C
  loc_D111BB: ConcatStr
  loc_D111BC: FStStrNoPop var_6A8
  loc_D111BF: LitStr "','"
  loc_D111C2: ConcatStr
  loc_D111C3: FStStrNoPop var_6AC
  loc_D111C6: LitI4 1
  loc_D111CB: LitI4 1
  loc_D111D0: LitVarStr var_1BC, "yyyy-mm-dd"
  loc_D111D5: FStVarCopyObj var_1AC
  loc_D111D8: FLdRfVar var_1AC
  loc_D111DB: FLdRfVar arg_9C
  loc_D111DE: CVarRef
  loc_D111E3: ImpAdCallI2 Format$(, )
  loc_D111E8: FStStrNoPop var_6B0
  loc_D111EB: ConcatStr
  loc_D111EC: FStStrNoPop var_6B4
  loc_D111EF: LitStr "','"
  loc_D111F2: ConcatStr
  loc_D111F3: FStStrNoPop var_6B8
  loc_D111F6: LitI4 1
  loc_D111FB: LitI4 1
  loc_D11200: LitVarStr var_220, "yyyy-mm-dd"
  loc_D11205: FStVarCopyObj var_1CC
  loc_D11208: FLdRfVar var_1CC
  loc_D1120B: FLdRfVar var_90
  loc_D1120E: CVarRef
  loc_D11213: ImpAdCallI2 Format$(, )
  loc_D11218: FStStrNoPop var_6BC
  loc_D1121B: ConcatStr
  loc_D1121C: FStStrNoPop var_6C0
  loc_D1121F: LitStr "',"
  loc_D11222: ConcatStr
  loc_D11223: FStStrNoPop var_6C8
  loc_D11226: LitI4 0
  loc_D1122B: LitI4 -1
  loc_D11230: LitI4 1
  loc_D11235: LitStr "."
  loc_D11238: LitStr ","
  loc_D1123B: FLdFPR8 DeudLipu
  loc_D1123E: CStrR8
  loc_D11240: FStStrNoPop var_6C4
  loc_D11243: ImpAdCallI2 Replace(, , , , , )
  loc_D11248: FStStrNoPop var_6CC
  loc_D1124B: ConcatStr
  loc_D1124C: FStStrNoPop var_6D0
  loc_D1124F: LitStr ","
  loc_D11252: ConcatStr
  loc_D11253: FStStrNoPop var_6D8
  loc_D11256: LitI4 0
  loc_D1125B: LitI4 -1
  loc_D11260: LitI4 1
  loc_D11265: LitStr "."
  loc_D11268: LitStr ","
  loc_D1126B: FLdFPR8 CrafLipu
  loc_D1126E: CStrR8
  loc_D11270: FStStrNoPop var_6D4
  loc_D11273: ImpAdCallI2 Replace(, , , , , )
  loc_D11278: FStStrNoPop var_6DC
  loc_D1127B: ConcatStr
  loc_D1127C: FStStrNoPop var_6E0
  loc_D1127F: LitStr ","
  loc_D11282: ConcatStr
  loc_D11283: FStStrNoPop var_6E8
  loc_D11286: LitI4 0
  loc_D1128B: LitI4 -1
  loc_D11290: LitI4 1
  loc_D11295: LitStr "."
  loc_D11298: LitStr ","
  loc_D1129B: FLdFPR8 AddNew0
  loc_D1129E: CStrR8
  loc_D112A0: FStStrNoPop var_6E4
  loc_D112A3: ImpAdCallI2 Replace(, , , , , )
  loc_D112A8: FStStrNoPop var_6EC
  loc_D112AB: ConcatStr
  loc_D112AC: FStStrNoPop var_6F0
  loc_D112AF: LitStr ","
  loc_D112B2: ConcatStr
  loc_D112B3: FStStrNoPop var_6F8
  loc_D112B6: LitI4 0
  loc_D112BB: LitI4 -1
  loc_D112C0: LitI4 1
  loc_D112C5: LitStr "."
  loc_D112C8: LitStr ","
  loc_D112CB: FLdFPR8 AddNew8
  loc_D112CE: CStrR8
  loc_D112D0: FStStrNoPop var_6F4
  loc_D112D3: ImpAdCallI2 Replace(, , , , , )
  loc_D112D8: FStStrNoPop var_6FC
  loc_D112DB: ConcatStr
  loc_D112DC: FStStrNoPop var_700
  loc_D112DF: LitStr ","
  loc_D112E2: ConcatStr
  loc_D112E3: FStStrNoPop var_708
  loc_D112E6: LitI4 0
  loc_D112EB: LitI4 -1
  loc_D112F0: LitI4 1
  loc_D112F5: LitStr "."
  loc_D112F8: LitStr ","
  loc_D112FB: FLdFPR8 CodiRuta
  loc_D112FE: CStrR8
  loc_D11300: FStStrNoPop var_704
  loc_D11303: ImpAdCallI2 Replace(, , , , , )
  loc_D11308: FStStrNoPop var_70C
  loc_D1130B: ConcatStr
  loc_D1130C: FStStrNoPop var_710
  loc_D1130F: LitStr ","
  loc_D11312: ConcatStr
  loc_D11313: FStStrNoPop var_718
  loc_D11316: LitI4 0
  loc_D1131B: LitI4 -1
  loc_D11320: LitI4 1
  loc_D11325: LitStr "."
  loc_D11328: LitStr ","
  loc_D1132B: FLdFPR8 arg_58
  loc_D1132E: CStrR8
  loc_D11330: FStStrNoPop var_714
  loc_D11333: ImpAdCallI2 Replace(, , , , , )
  loc_D11338: FStStrNoPop var_71C
  loc_D1133B: ConcatStr
  loc_D1133C: FStStrNoPop var_720
  loc_D1133F: LitStr ","
  loc_D11342: ConcatStr
  loc_D11343: FStStrNoPop var_728
  loc_D11346: LitI4 0
  loc_D1134B: LitI4 -1
  loc_D11350: LitI4 1
  loc_D11355: LitStr "."
  loc_D11358: LitStr ","
  loc_D1135B: FLdFPR8 arg_60
  loc_D1135E: CStrR8
  loc_D11360: FStStrNoPop var_724
  loc_D11363: ImpAdCallI2 Replace(, , , , , )
  loc_D11368: FStStrNoPop var_72C
  loc_D1136B: ConcatStr
  loc_D1136C: FStStrNoPop var_730
  loc_D1136F: LitStr ",'"
  loc_D11372: ConcatStr
  loc_D11373: FStStrNoPop var_734
  loc_D11376: ILdRf var_94
  loc_D11379: ConcatStr
  loc_D1137A: FStStrNoPop var_738
  loc_D1137D: LitStr "',"
  loc_D11380: ConcatStr
  loc_D11381: FStStrNoPop var_73C
  loc_D11384: FLdI2 arg_6C
  loc_D11387: CStrUI1
  loc_D11389: FStStrNoPop var_740
  loc_D1138C: ConcatStr
  loc_D1138D: FStStrNoPop var_744
  loc_D11390: LitStr ","
  loc_D11393: ConcatStr
  loc_D11394: FStStrNoPop var_748
  loc_D11397: ILdRf arg_70
  loc_D1139A: CStrI4
  loc_D1139C: FStStrNoPop var_74C
  loc_D1139F: ConcatStr
  loc_D113A0: FStStrNoPop var_750
  loc_D113A3: LitStr ",'"
  loc_D113A6: ConcatStr
  loc_D113A7: FStStrNoPop var_754
  loc_D113AA: ILdRf var_98
  loc_D113AD: ConcatStr
  loc_D113AE: FStStrNoPop var_758
  loc_D113B1: LitStr "','"
  loc_D113B4: ConcatStr
  loc_D113B5: FStStrNoPop var_75C
  loc_D113B8: LitI4 0
  loc_D113BD: LitI4 -1
  loc_D113C2: LitI4 1
  loc_D113C7: LitStr " "
  loc_D113CA: LitStr "'"
  loc_D113CD: ILdRf var_9C
  loc_D113D0: ImpAdCallI2 Replace(, , , , , )
  loc_D113D5: FStStrNoPop var_760
  loc_D113D8: ConcatStr
  loc_D113D9: FStStrNoPop var_764
  loc_D113DC: LitStr "',"
  loc_D113DF: ConcatStr
  loc_D113E0: FStStrNoPop var_768
  loc_D113E3: FLdI2 arg_7C
  loc_D113E6: CStrUI1
  loc_D113E8: FStStrNoPop var_76C
  loc_D113EB: ConcatStr
  loc_D113EC: FStStrNoPop var_770
  loc_D113EF: LitStr ",'"
  loc_D113F2: ConcatStr
  loc_D113F3: FStStrNoPop var_774
  loc_D113F6: ILdRf var_A4
  loc_D113F9: ConcatStr
  loc_D113FA: FStStrNoPop var_778
  loc_D113FD: LitStr "','"
  loc_D11400: ConcatStr
  loc_D11401: FStStrNoPop var_77C
  loc_D11404: ILdRf var_A8
  loc_D11407: ConcatStr
  loc_D11408: FStStrNoPop var_780
  loc_D1140B: LitStr "','"
  loc_D1140E: ConcatStr
  loc_D1140F: FStStrNoPop var_784
  loc_D11412: ILdRf var_AC
  loc_D11415: ConcatStr
  loc_D11416: FStStrNoPop var_788
  loc_D11419: LitStr "',"
  loc_D1141C: ConcatStr
  loc_D1141D: FStStrNoPop var_78C
  loc_D11420: FLdI2 arg_90
  loc_D11423: CStrUI1
  loc_D11425: FStStrNoPop var_790
  loc_D11428: ConcatStr
  loc_D11429: FStStrNoPop var_794
  loc_D1142C: LitStr ",'"
  loc_D1142F: ConcatStr
  loc_D11430: FStStrNoPop var_798
  loc_D11433: ILdRf var_B0
  loc_D11436: ConcatStr
  loc_D11437: FStStrNoPop var_79C
  loc_D1143A: LitStr "','"
  loc_D1143D: ConcatStr
  loc_D1143E: FStStrNoPop var_7A0
  loc_D11441: ILdRf var_B4
  loc_D11444: ConcatStr
  loc_D11445: FStStrNoPop var_7A4
  loc_D11448: LitStr "','"
  loc_D1144B: ConcatStr
  loc_D1144C: FStStrNoPop var_7A8
  loc_D1144F: ILdRf var_B8
  loc_D11452: ConcatStr
  loc_D11453: FStStrNoPop var_7AC
  loc_D11456: LitStr "','"
  loc_D11459: ConcatStr
  loc_D1145A: FStStrNoPop var_7B0
  loc_D1145D: ILdRf var_BC
  loc_D11460: ConcatStr
  loc_D11461: FStStrNoPop var_7B4
  loc_D11464: LitStr "',"
  loc_D11467: ConcatStr
  loc_D11468: FStStrNoPop var_7B8
  loc_D1146B: FLdI2 arg_D4
  loc_D1146E: CStrUI1
  loc_D11470: FStStrNoPop var_7BC
  loc_D11473: ConcatStr
  loc_D11474: FStStrNoPop var_7C0
  loc_D11477: LitStr ");"
  loc_D1147A: ConcatStr
  loc_D1147B: FStStrNoPop var_7C4
  loc_D1147E: Call EjecutarRsCls(from_stack_1v)
  loc_D11483: FFreeStr var_7BC = "": var_7C0 = "": var_7C4 = "": var_744 = "": var_748 = "": var_74C = "": var_750 = "": var_754 = "": var_758 = "": var_75C = "": var_760 = "": var_764 = "": var_768 = "": var_76C = "": var_770 = "": var_774 = "": var_778 = "": var_77C = "": var_780 = "": var_784 = "": var_788 = "": var_78C = "": var_790 = "": var_794 = "": var_798 = "": var_79C = "": var_7A0 = "": var_7A4 = "": var_7A8 = "": var_7AC = "": var_7B0 = "": var_7B4 = "": var_7B8 = "": var_6CC = "": var_6D0 = "": var_6D4 = "": var_6D8 = "": var_6DC = "": var_6E0 = "": var_6E4 = "": var_6E8 = "": var_6EC = "": var_6F0 = "": var_6F4 = "": var_6F8 = "": var_6FC = "": var_700 = "": var_704 = "": var_708 = "": var_70C = "": var_710 = "": var_714 = "": var_718 = "": var_71C = "": var_720 = "": var_724 = "": var_728 = "": var_72C = "": var_730 = "": var_734 = "": var_738 = "": var_73C = "": var_740 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_68C = "": var_690 = "": var_694 = "": var_698 = "": var_69C = "": var_6A0 = "": var_6A4 = "": var_6A8 = "": var_6AC = "": var_6B0 = "": var_6B4 = "": var_6B8 = "": var_6BC = "": var_6C0 = "": var_6C4 = ""
  loc_D11540: FFreeVar var_1AC = ""
  loc_D11547: FLdI2 arg_AC
  loc_D1154A: LitI2_Byte &HFF
  loc_D1154C: EqI2
  loc_D1154D: BranchF loc_D130DE
  loc_D11550: LitStr "SELECT p.CodiCome, p.CodiRamo, p.CodiRubr, p.CodiSubr, p.PrioSeco, "
  loc_D11553: LitStr " p.FealSeco, p.ExalSeco, p.FebaSeco, p.ExbaSeco, p.MobaSeco, "
  loc_D11556: ConcatStr
  loc_D11557: FStStrNoPop var_148
  loc_D1155A: LitStr " p.AcprSeco, p.LiquSeco, p.CantSeco, p.ObseSeco, p.AltaUsua, "
  loc_D1155D: ConcatStr
  loc_D1155E: FStStrNoPop var_14C
  loc_D11561: LitStr " r.DetaRamo, IFNULL(ru.DetaRubr,'') DetaRubr, su.DetaSubr, "
  loc_D11564: ConcatStr
  loc_D11565: FStStrNoPop var_154
  loc_D11568: LitI4 0
  loc_D1156D: LitI4 -1
  loc_D11572: LitI4 1
  loc_D11577: LitStr "."
  loc_D1157A: LitStr ","
  loc_D1157D: FLdFPR8 arg_BC
  loc_D11580: CStrR8
  loc_D11582: FStStrNoPop var_150
  loc_D11585: ImpAdCallI2 Replace(, , , , , )
  loc_D1158A: FStStrNoPop var_158
  loc_D1158D: ConcatStr
  loc_D1158E: FStStrNoPop var_15C
  loc_D11591: LitStr " as ImpoTaco "
  loc_D11594: ConcatStr
  loc_D11595: FStStrNoPop var_160
  loc_D11598: LitStr " FROM servpubl p"
  loc_D1159B: ConcatStr
  loc_D1159C: FStStrNoPop var_164
  loc_D1159F: LitStr " LEFT JOIN ramo r ON r.CodiRamo = p.CodiRamo"
  loc_D115A2: ConcatStr
  loc_D115A3: FStStrNoPop var_168
  loc_D115A6: LitStr " LEFT JOIN rubro ru ON ru.CodiRubr = p.CodiRubr"
  loc_D115A9: ConcatStr
  loc_D115AA: FStStrNoPop var_16C
  loc_D115AD: LitStr " LEFT JOIN subrubro su ON su.CodiSubr = p.CodiSubr AND su.CodiRamo = p.CodiRamo AND su.CodiRubr = p.CodiRubr AND su.PeriOrde = "
  loc_D115B0: ConcatStr
  loc_D115B1: FStStrNoPop var_170
  loc_D115B4: ImpAdLdI2 MemVar_D93036
  loc_D115B7: CStrUI1
  loc_D115B9: FStStrNoPop var_174
  loc_D115BC: ConcatStr
  loc_D115BD: FStStrNoPop var_178
  loc_D115C0: LitStr " WHERE p.CodiCome = "
  loc_D115C3: ConcatStr
  loc_D115C4: FStStrNoPop var_17C
  loc_D115C7: ILdRf CodiCome
  loc_D115CA: CStrI4
  loc_D115CC: FStStrNoPop var_68C
  loc_D115CF: ConcatStr
  loc_D115D0: FStStrNoPop var_690
  loc_D115D3: LitStr " AND p.BajaFeho IS NULL AND p.FebaSeco IS NULL"
  loc_D115D6: ConcatStr
  loc_D115D7: FStStrNoPop var_694
  loc_D115DA: FLdRfVar var_C0
  loc_D115DD: NewIfNullPr clsservcome
  loc_D115E0: Call clsservcome.RedefineRS(from_stack_1v)
  loc_D115E5: FFreeStr var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_68C = "": var_690 = ""
  loc_D1160A: FLdRfVar var_180
  loc_D1160D: FLdRfVar var_C0
  loc_D11610: NewIfNullPr clsservcome
  loc_D11613: from_stack_1 = clsservcome.RecordCount
  loc_D11618: ILdRf var_180
  loc_D1161B: LitI4 0
  loc_D11620: GtI4
  loc_D11621: BranchF loc_D11BA7
  loc_D11624: FLdRfVar var_C0
  loc_D11627: NewIfNullPr clsservcome
  loc_D1162A: Call clsservcome.MoveFirst()
  loc_D1162F: LitI2_Byte 0
  loc_D11631: CR8I2
  loc_D11632: FStFPR8 var_114
  loc_D11635: FLdRfVar var_182
  loc_D11638: FLdRfVar var_C0
  loc_D1163B: NewIfNullPr clsservcome
  loc_D1163E: from_stack_1 = clsservcome.EOF
  loc_D11643: FLdI2 var_182
  loc_D11646: NotI4
  loc_D11647: BranchF loc_D119DF
  loc_D1164A: FLdRfVar var_1AC
  loc_D1164D: FLdRfVar var_C0
  loc_D11650: NewIfNullPr clsservcome
  loc_D11653: from_stack_1 = clsservcome.ImpoTaco
  loc_D11658: FLdRfVar var_1AC
  loc_D1165B: LitVarI2 var_198, 0
  loc_D11660: HardType
  loc_D11661: GtVarBool
  loc_D11663: FFree1Var var_1AC = ""
  loc_D11666: BranchF loc_D119D1
  loc_D11669: LitI2_Byte 0
  loc_D1166B: CR8I2
  loc_D1166C: FStFPR8 var_11C
  loc_D1166F: FLdFPR8 arg_B4
  loc_D11672: LitI2_Byte 0
  loc_D11674: CR8I2
  loc_D11675: GtR4
  loc_D11676: BranchF loc_D116C2
  loc_D11679: FLdRfVar var_1AC
  loc_D1167C: FLdRfVar var_C0
  loc_D1167F: NewIfNullPr clsservcome
  loc_D11682: from_stack_1 = clsservcome.ImpoTaco
  loc_D11687: LitI4 2
  loc_D1168C: FLdRfVar var_1AC
  loc_D1168F: FLdFPR8 arg_B4
  loc_D11692: CVarR8
  loc_D11696: MulVar var_1CC
  loc_D1169A: LitVarI2 var_1BC, 100
  loc_D1169F: DivVar var_1DC
  loc_D116A3: FStVar var_1EC
  loc_D116A7: FLdRfVar var_1EC
  loc_D116AA: FLdRfVar var_20C
  loc_D116AD: ImpAdCallFPR4  = Round(, )
  loc_D116B2: FLdRfVar var_20C
  loc_D116B5: CR4Var
  loc_D116B6: FStFPR8 var_11C
  loc_D116B9: FFreeVar var_1AC = "": var_1EC = ""
  loc_D116C2: FLdRfVar var_1AC
  loc_D116C5: FLdRfVar var_C0
  loc_D116C8: NewIfNullPr clsservcome
  loc_D116CB: from_stack_1 = clsservcome.ImpoTaco
  loc_D116D0: FLdRfVar var_1AC
  loc_D116D3: FLdFPR8 var_11C
  loc_D116D6: CVarR8
  loc_D116DA: HardType
  loc_D116DB: NeVarBool
  loc_D116DD: FFree1Var var_1AC = ""
  loc_D116E0: BranchF loc_D1170D
  loc_D116E3: FLdRfVar var_1AC
  loc_D116E6: FLdRfVar var_C0
  loc_D116E9: NewIfNullPr clsservcome
  loc_D116EC: from_stack_1 = clsservcome.ImpoTaco
  loc_D116F1: FLdRfVar var_1AC
  loc_D116F4: FLdFPR8 var_114
  loc_D116F7: CVarR8
  loc_D116FB: AddVar var_1CC
  loc_D116FF: CR4Var
  loc_D11700: FStFPR8 var_E8
  loc_D11703: FFreeVar var_1AC = ""
  loc_D1170A: Branch loc_D11725
  loc_D1170D: FLdRfVar var_1AC
  loc_D11710: FLdRfVar var_C0
  loc_D11713: NewIfNullPr clsservcome
  loc_D11716: from_stack_1 = clsservcome.ImpoTaco
  loc_D1171B: FLdRfVar var_1AC
  loc_D1171E: CR4Var
  loc_D1171F: FStFPR8 var_E8
  loc_D11722: FFree1Var var_1AC = ""
  loc_D11725: LitI4 2
  loc_D1172A: FLdRfVar var_E8
  loc_D1172D: CVarRef
  loc_D11732: FLdRfVar var_1AC
  loc_D11735: ImpAdCallFPR4  = Round(, )
  loc_D1173A: LitI4 2
  loc_D1173F: FLdFPR8 var_CC
  loc_D11742: CVarR8
  loc_D11746: FLdRfVar var_1AC
  loc_D11749: AddVar var_1CC
  loc_D1174D: FLdRfVar var_1DC
  loc_D11750: ImpAdCallFPR4  = Round(, )
  loc_D11755: FLdRfVar var_1DC
  loc_D11758: CR4Var
  loc_D11759: FStFPR8 var_CC
  loc_D1175C: FFreeVar var_1AC = "": var_1CC = ""
  loc_D11765: LitStr " INSERT INTO lipudeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLpde,ImpoLpde,DecaLpde,ExceLpde,TotaLpde) "
  loc_D11768: LitStr " VALUES ("
  loc_D1176B: ConcatStr
  loc_D1176C: FStStrNoPop var_148
  loc_D1176F: FLdI2 PeriLiqu
  loc_D11772: CStrUI1
  loc_D11774: FStStrNoPop var_14C
  loc_D11777: ConcatStr
  loc_D11778: FStStrNoPop var_150
  loc_D1177B: LitStr ","
  loc_D1177E: ConcatStr
  loc_D1177F: FStStrNoPop var_154
  loc_D11782: FLdUI1
  loc_D11786: CStrI2
  loc_D11788: FStStrNoPop var_158
  loc_D1178B: ConcatStr
  loc_D1178C: FStStrNoPop var_15C
  loc_D1178F: LitStr ","
  loc_D11792: ConcatStr
  loc_D11793: FStStrNoPop var_160
  loc_D11796: FLdUI1
  loc_D1179A: CStrI2
  loc_D1179C: FStStrNoPop var_164
  loc_D1179F: ConcatStr
  loc_D117A0: FStStrNoPop var_168
  loc_D117A3: LitStr ","
  loc_D117A6: ConcatStr
  loc_D117A7: FStStrNoPop var_16C
  loc_D117AA: FLdI2 NumeLiqu
  loc_D117AD: CStrUI1
  loc_D117AF: FStStrNoPop var_170
  loc_D117B2: ConcatStr
  loc_D117B3: FStStrNoPop var_174
  loc_D117B6: LitStr ","
  loc_D117B9: ConcatStr
  loc_D117BA: FStStrNoPop var_178
  loc_D117BD: ILdRf CodiCome
  loc_D117C0: CStrI4
  loc_D117C2: FStStrNoPop var_17C
  loc_D117C5: ConcatStr
  loc_D117C6: FStStrNoPop var_68C
  loc_D117C9: LitStr ",'"
  loc_D117CC: ConcatStr
  loc_D117CD: FStStrNoPop var_690
  loc_D117D0: ILdRf var_88
  loc_D117D3: ConcatStr
  loc_D117D4: FStStrNoPop var_694
  loc_D117D7: LitStr "',"
  loc_D117DA: ConcatStr
  loc_D117DB: FStStrNoPop var_698
  loc_D117DE: FLdUI1
  loc_D117E2: CStrI2
  loc_D117E4: FStStrNoPop var_69C
  loc_D117E7: ConcatStr
  loc_D117E8: FStStrNoPop var_6A0
  loc_D117EB: LitStr ","
  loc_D117EE: ConcatStr
  loc_D117EF: FStStrNoPop var_6A4
  loc_D117F2: FLdRfVar var_182
  loc_D117F5: FLdRfVar var_C0
  loc_D117F8: NewIfNullPr clsservcome
  loc_D117FB: from_stack_1 = clsservcome.CodiRamo
  loc_D11800: FLdI2 var_182
  loc_D11803: CStrUI1
  loc_D11805: FStStrNoPop var_6A8
  loc_D11808: ConcatStr
  loc_D11809: FStStrNoPop var_6AC
  loc_D1180C: LitStr ",'"
  loc_D1180F: ConcatStr
  loc_D11810: CVarStr var_1CC
  loc_D11813: FLdRfVar var_1AC
  loc_D11816: FLdRfVar var_C0
  loc_D11819: NewIfNullPr clsservcome
  loc_D1181C: from_stack_1 = clsservcome.CodiRubr
  loc_D11821: FLdRfVar var_1AC
  loc_D11824: ConcatVar var_1DC
  loc_D11828: LitVarStr var_198, "',"
  loc_D1182D: ConcatVar var_1EC
  loc_D11831: ImpAdLdI2 MemVar_D93036
  loc_D11834: CVarI2 var_1BC
  loc_D11837: ConcatVar var_20C
  loc_D1183B: LitVarStr var_1FC, ","
  loc_D11840: ConcatVar var_234
  loc_D11844: FLdRfVar var_6B0
  loc_D11847: FLdRfVar var_C0
  loc_D1184A: NewIfNullPr clsservcome
  loc_D1184D: from_stack_1 = clsservcome.CodiSubr
  loc_D11852: FLdZeroAd var_6B0
  loc_D11855: CVarStr var_244
  loc_D11858: ConcatVar var_264
  loc_D1185C: LitVarStr var_220, ","
  loc_D11861: ConcatVar var_28C
  loc_D11865: FLdRfVar var_7C6
  loc_D11868: FLdRfVar var_C0
  loc_D1186B: NewIfNullPr clsservcome
  loc_D1186E: from_stack_1 = clsservcome.PrioSeco
  loc_D11873: FLdI2 var_7C6
  loc_D11876: CVarI2 var_254
  loc_D11879: ConcatVar var_29C
  loc_D1187D: LitVarStr var_278, ","
  loc_D11882: ConcatVar var_2BC
  loc_D11886: LitI4 0
  loc_D1188B: LitI4 -1
  loc_D11890: LitI4 1
  loc_D11895: LitStr "."
  loc_D11898: LitStr ","
  loc_D1189B: FLdFPR8 var_E8
  loc_D1189E: CStrR8
  loc_D118A0: FStStrNoPop var_6B4
  loc_D118A3: ImpAdCallI2 Replace(, , , , , )
  loc_D118A8: CVarStr var_2E4
  loc_D118AB: ConcatVar var_2F4
  loc_D118AF: LitVarStr var_2AC, ","
  loc_D118B4: ConcatVar var_314
  loc_D118B8: LitI4 0
  loc_D118BD: LitI4 -1
  loc_D118C2: LitI4 1
  loc_D118C7: LitStr "."
  loc_D118CA: LitStr ","
  loc_D118CD: FLdFPR8 var_F0
  loc_D118D0: CStrR8
  loc_D118D2: FStStrNoPop var_6B8
  loc_D118D5: ImpAdCallI2 Replace(, , , , , )
  loc_D118DA: CVarStr var_33C
  loc_D118DD: ConcatVar var_34C
  loc_D118E1: LitVarStr var_2D0, ","
  loc_D118E6: ConcatVar var_36C
  loc_D118EA: LitI4 0
  loc_D118EF: LitI4 -1
  loc_D118F4: LitI4 1
  loc_D118F9: LitStr "."
  loc_D118FC: LitStr ","
  loc_D118FF: FLdFPR8 var_11C
  loc_D11902: CStrR8
  loc_D11904: FStStrNoPop var_6BC
  loc_D11907: ImpAdCallI2 Replace(, , , , , )
  loc_D1190C: CVarStr var_38C
  loc_D1190F: ConcatVar var_3AC
  loc_D11913: LitVarStr var_304, ","
  loc_D11918: ConcatVar var_3CC
  loc_D1191C: LitI4 0
  loc_D11921: LitI4 -1
  loc_D11926: LitI4 1
  loc_D1192B: LitStr "."
  loc_D1192E: LitStr ","
  loc_D11931: FLdFPR8 var_E8
  loc_D11934: FLdFPR8 var_F0
  loc_D11937: SubR4
  loc_D11938: FLdFPR8 var_11C
  loc_D1193B: SubR4
  loc_D1193C: CStrR8
  loc_D1193E: FStStrNoPop var_6C0
  loc_D11941: ImpAdCallI2 Replace(, , , , , )
  loc_D11946: CVarStr var_3F8
  loc_D11949: ConcatVar var_408
  loc_D1194D: LitVarStr var_328, ");"
  loc_D11952: ConcatVar var_428
  loc_D11956: CStrVarVal var_6C4
  loc_D1195A: Call EjecutarRsCls(from_stack_1v)
  loc_D1195F: FFreeStr var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_68C = "": var_690 = "": var_694 = "": var_698 = "": var_69C = "": var_6A0 = "": var_6A4 = "": var_6A8 = "": var_6AC = "": var_6B4 = "": var_6B8 = "": var_6BC = "": var_6C0 = ""
  loc_D1199A: FFreeVar var_1CC = "": var_1AC = "": var_1DC = "": var_1EC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_28C = "": var_29C = "": var_2BC = "": var_2E4 = "": var_2F4 = "": var_314 = "": var_33C = "": var_34C = "": var_36C = "": var_38C = "": var_3AC = "": var_3CC = "": var_3F8 = "": var_408 = ""
  loc_D119CB: LitI2_Byte 0
  loc_D119CD: CR8I2
  loc_D119CE: FStFPR8 var_114
  loc_D119D1: FLdRfVar var_C0
  loc_D119D4: NewIfNullPr clsservcome
  loc_D119D7: Call clsservcome.MoveSiguiente()
  loc_D119DC: Branch loc_D11635
  loc_D119DF: FLdFPR8 arg_A4
  loc_D119E2: LitI2_Byte 0
  loc_D119E4: CR8I2
  loc_D119E5: GtR4
  loc_D119E6: BranchF loc_D11BA7
  loc_D119E9: LitI4 2
  loc_D119EE: FLdFPR8 var_CC
  loc_D119F1: FLdFPR8 arg_A4
  loc_D119F4: AddR8
  loc_D119F5: CVarR8
  loc_D119F9: FLdRfVar var_1CC
  loc_D119FC: ImpAdCallFPR4  = Round(, )
  loc_D11A01: FLdRfVar var_1CC
  loc_D11A04: CR4Var
  loc_D11A05: FStFPR8 var_CC
  loc_D11A08: FFreeVar var_1AC = ""
  loc_D11A0F: LitStr " INSERT INTO lipudeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLpde,ImpoLpde,DecaLpde,TotaLpde) "
  loc_D11A12: LitStr " VALUES ("
  loc_D11A15: ConcatStr
  loc_D11A16: FStStrNoPop var_148
  loc_D11A19: FLdI2 PeriLiqu
  loc_D11A1C: CStrUI1
  loc_D11A1E: FStStrNoPop var_14C
  loc_D11A21: ConcatStr
  loc_D11A22: FStStrNoPop var_150
  loc_D11A25: LitStr ","
  loc_D11A28: ConcatStr
  loc_D11A29: FStStrNoPop var_154
  loc_D11A2C: FLdUI1
  loc_D11A30: CStrI2
  loc_D11A32: FStStrNoPop var_158
  loc_D11A35: ConcatStr
  loc_D11A36: FStStrNoPop var_15C
  loc_D11A39: LitStr ","
  loc_D11A3C: ConcatStr
  loc_D11A3D: FStStrNoPop var_160
  loc_D11A40: FLdUI1
  loc_D11A44: CStrI2
  loc_D11A46: FStStrNoPop var_164
  loc_D11A49: ConcatStr
  loc_D11A4A: FStStrNoPop var_168
  loc_D11A4D: LitStr ","
  loc_D11A50: ConcatStr
  loc_D11A51: FStStrNoPop var_16C
  loc_D11A54: FLdI2 NumeLiqu
  loc_D11A57: CStrUI1
  loc_D11A59: FStStrNoPop var_170
  loc_D11A5C: ConcatStr
  loc_D11A5D: FStStrNoPop var_174
  loc_D11A60: LitStr ","
  loc_D11A63: ConcatStr
  loc_D11A64: FStStrNoPop var_178
  loc_D11A67: ILdRf CodiCome
  loc_D11A6A: CStrI4
  loc_D11A6C: FStStrNoPop var_17C
  loc_D11A6F: ConcatStr
  loc_D11A70: FStStrNoPop var_68C
  loc_D11A73: LitStr ","
  loc_D11A76: ConcatStr
  loc_D11A77: FStStrNoPop var_690
  loc_D11A7A: ILdRf var_88
  loc_D11A7D: ConcatStr
  loc_D11A7E: FStStrNoPop var_694
  loc_D11A81: LitStr ","
  loc_D11A84: ConcatStr
  loc_D11A85: FStStrNoPop var_698
  loc_D11A88: FLdUI1
  loc_D11A8C: CStrI2
  loc_D11A8E: FStStrNoPop var_69C
  loc_D11A91: ConcatStr
  loc_D11A92: FStStrNoPop var_6A0
  loc_D11A95: LitStr ",1,9,"
  loc_D11A98: ConcatStr
  loc_D11A99: FStStrNoPop var_6A4
  loc_D11A9C: ImpAdLdI2 MemVar_D93036
  loc_D11A9F: CStrUI1
  loc_D11AA1: FStStrNoPop var_6A8
  loc_D11AA4: ConcatStr
  loc_D11AA5: FStStrNoPop var_6AC
  loc_D11AA8: LitStr ","
  loc_D11AAB: ConcatStr
  loc_D11AAC: FStStrNoPop var_6B0
  loc_D11AAF: FLdI2 arg_B0
  loc_D11AB2: CStrUI1
  loc_D11AB4: FStStrNoPop var_6B4
  loc_D11AB7: ConcatStr
  loc_D11AB8: FStStrNoPop var_6B8
  loc_D11ABB: LitStr ",1,"
  loc_D11ABE: ConcatStr
  loc_D11ABF: FStStrNoPop var_6C0
  loc_D11AC2: LitI4 0
  loc_D11AC7: LitI4 -1
  loc_D11ACC: LitI4 1
  loc_D11AD1: LitStr "."
  loc_D11AD4: LitStr ","
  loc_D11AD7: FLdFPR8 arg_A4
  loc_D11ADA: CStrR8
  loc_D11ADC: FStStrNoPop var_6BC
  loc_D11ADF: ImpAdCallI2 Replace(, , , , , )
  loc_D11AE4: FStStrNoPop var_6C4
  loc_D11AE7: ConcatStr
  loc_D11AE8: FStStrNoPop var_6C8
  loc_D11AEB: LitStr ","
  loc_D11AEE: ConcatStr
  loc_D11AEF: FStStrNoPop var_6D0
  loc_D11AF2: LitI4 0
  loc_D11AF7: LitI4 -1
  loc_D11AFC: LitI4 1
  loc_D11B01: LitStr "."
  loc_D11B04: LitStr ","
  loc_D11B07: LitI2_Byte 0
  loc_D11B09: CStrUI1
  loc_D11B0B: FStStrNoPop var_6CC
  loc_D11B0E: ImpAdCallI2 Replace(, , , , , )
  loc_D11B13: FStStrNoPop var_6D4
  loc_D11B16: ConcatStr
  loc_D11B17: FStStrNoPop var_6D8
  loc_D11B1A: LitStr ","
  loc_D11B1D: ConcatStr
  loc_D11B1E: FStStrNoPop var_6E0
  loc_D11B21: LitI4 0
  loc_D11B26: LitI4 -1
  loc_D11B2B: LitI4 1
  loc_D11B30: LitStr "."
  loc_D11B33: LitStr ","
  loc_D11B36: FLdFPR8 arg_A4
  loc_D11B39: CStrR8
  loc_D11B3B: FStStrNoPop var_6DC
  loc_D11B3E: ImpAdCallI2 Replace(, , , , , )
  loc_D11B43: FStStrNoPop var_6E4
  loc_D11B46: ConcatStr
  loc_D11B47: FStStrNoPop var_6E8
  loc_D11B4A: LitStr ");"
  loc_D11B4D: ConcatStr
  loc_D11B4E: FStStrNoPop var_6EC
  loc_D11B51: Call EjecutarRsCls(from_stack_1v)
  loc_D11B56: FFreeStr var_6CC = "": var_6D0 = "": var_6D4 = "": var_6D8 = "": var_6DC = "": var_6E0 = "": var_6E4 = "": var_6E8 = "": var_6EC = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_68C = "": var_690 = "": var_694 = "": var_698 = "": var_69C = "": var_6A0 = "": var_6A4 = "": var_6A8 = "": var_6AC = "": var_6B0 = "": var_6B4 = "": var_6B8 = "": var_6BC = "": var_6C0 = "": var_6C4 = ""
  loc_D11BA7: FLdUI1
  loc_D11BAB: CI2UI1
  loc_D11BAD: LitI2_Byte 1
  loc_D11BAF: EqI2
  loc_D11BB0: BranchF loc_D130DE
  loc_D11BB3: LitStr "SELECT SUM(ImpoLpde) as ImpoLpde, SUM(DecaLpde) as DecaLpde, SUM(TotaLpde) as TotaLpde FROM lipudeta WHERE PeriLiqu = "
  loc_D11BB6: FLdI2 PeriLiqu
  loc_D11BB9: CStrUI1
  loc_D11BBB: FStStrNoPop var_148
  loc_D11BBE: ConcatStr
  loc_D11BBF: FStStrNoPop var_14C
  loc_D11BC2: LitStr " AND Bimeliqu = "
  loc_D11BC5: ConcatStr
  loc_D11BC6: FStStrNoPop var_150
  loc_D11BC9: FLdUI1
  loc_D11BCD: CStrI2
  loc_D11BCF: FStStrNoPop var_154
  loc_D11BD2: ConcatStr
  loc_D11BD3: FStStrNoPop var_158
  loc_D11BD6: LitStr " AND CodiTili = "
  loc_D11BD9: ConcatStr
  loc_D11BDA: FStStrNoPop var_15C
  loc_D11BDD: FLdUI1
  loc_D11BE1: CStrI2
  loc_D11BE3: FStStrNoPop var_160
  loc_D11BE6: ConcatStr
  loc_D11BE7: FStStrNoPop var_164
  loc_D11BEA: LitStr " AND NumeLiqu = "
  loc_D11BED: ConcatStr
  loc_D11BEE: FStStrNoPop var_168
  loc_D11BF1: FLdI2 NumeLiqu
  loc_D11BF4: CStrUI1
  loc_D11BF6: FStStrNoPop var_16C
  loc_D11BF9: ConcatStr
  loc_D11BFA: FStStrNoPop var_170
  loc_D11BFD: LitStr " AND CodiCome = "
  loc_D11C00: ConcatStr
  loc_D11C01: FStStrNoPop var_174
  loc_D11C04: ILdRf CodiCome
  loc_D11C07: CStrI4
  loc_D11C09: FStStrNoPop var_178
  loc_D11C0C: ConcatStr
  loc_D11C0D: FStStrNoPop var_17C
  loc_D11C10: LitStr " AND CodiConc = '"
  loc_D11C13: ConcatStr
  loc_D11C14: FStStrNoPop var_68C
  loc_D11C17: ILdRf var_88
  loc_D11C1A: ConcatStr
  loc_D11C1B: FStStrNoPop var_690
  loc_D11C1E: LitStr "'"
  loc_D11C21: ConcatStr
  loc_D11C22: FStStrNoPop var_694
  loc_D11C25: LitStr " AND TipoVenc = "
  loc_D11C28: ConcatStr
  loc_D11C29: FStStrNoPop var_698
  loc_D11C2C: FLdUI1
  loc_D11C30: CStrI2
  loc_D11C32: FStStrNoPop var_69C
  loc_D11C35: ConcatStr
  loc_D11C36: FStStrNoPop var_6A0
  loc_D11C39: Call EjecutarRsCls2(from_stack_1v)
  loc_D11C3E: FFreeStr var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_68C = "": var_690 = "": var_694 = "": var_698 = "": var_69C = ""
  loc_D11C69: FLdRfVar var_180
  loc_D11C6C: FLdPr Me
  loc_D11C6F: MemLdPr global_64
  loc_D11C72:  = Me.RecordCount
  loc_D11C77: ILdRf var_180
  loc_D11C7A: LitI4 0
  loc_D11C7F: GtI4
  loc_D11C80: BranchF loc_D130DE
  loc_D11C83: FLdFPR8 CrafLipu
  loc_D11C86: CVarR8
  loc_D11C8A: HardType
  loc_D11C8B: FLdRfVar var_1AC
  loc_D11C8E: FLdRfVar var_19C
  loc_D11C91: LitVarStr var_198, "ImpoLpde"
  loc_D11C96: PopAdLdVar
  loc_D11C97: FLdRfVar var_188
  loc_D11C9A: FLdPr Me
  loc_D11C9D: MemLdPr global_64
  loc_D11CA0:  = Me.Fields
  loc_D11CA5: FLdPr var_188
  loc_D11CA8: from_stack_2 = Me.Item(from_stack_1)
  loc_D11CAD: FLdPr var_19C
  loc_D11CB0:  = Me.Value
  loc_D11CB5: FLdRfVar var_1AC
  loc_D11CB8: NeVarBool
  loc_D11CBA: FFreeAd var_188 = ""
  loc_D11CC1: FFree1Var var_1AC = ""
  loc_D11CC4: BranchF loc_D126A5
  loc_D11CC7: FLdRfVar var_1AC
  loc_D11CCA: FLdRfVar var_19C
  loc_D11CCD: LitVarStr var_198, "ImpoLpde"
  loc_D11CD2: PopAdLdVar
  loc_D11CD3: FLdRfVar var_188
  loc_D11CD6: FLdPr Me
  loc_D11CD9: MemLdPr global_64
  loc_D11CDC:  = Me.Fields
  loc_D11CE1: FLdPr var_188
  loc_D11CE4: from_stack_2 = Me.Item(from_stack_1)
  loc_D11CE9: FLdPr var_19C
  loc_D11CEC:  = Me.Value
  loc_D11CF1: FLdFPR8 CrafLipu
  loc_D11CF4: FLdRfVar var_1AC
  loc_D11CF7: FnCDblVar
  loc_D11CF9: GtR4
  loc_D11CFA: FFreeAd var_188 = ""
  loc_D11D01: FFree1Var var_1AC = ""
  loc_D11D04: BranchF loc_D121C3
  loc_D11D07: LitStr "SELECT * FROM lipudeta WHERE PeriLiqu = "
  loc_D11D0A: FLdI2 PeriLiqu
  loc_D11D0D: CStrUI1
  loc_D11D0F: FStStrNoPop var_148
  loc_D11D12: ConcatStr
  loc_D11D13: FStStrNoPop var_14C
  loc_D11D16: LitStr " AND Bimeliqu = "
  loc_D11D19: ConcatStr
  loc_D11D1A: FStStrNoPop var_150
  loc_D11D1D: FLdUI1
  loc_D11D21: CStrI2
  loc_D11D23: FStStrNoPop var_154
  loc_D11D26: ConcatStr
  loc_D11D27: FStStrNoPop var_158
  loc_D11D2A: LitStr " AND CodiTili = "
  loc_D11D2D: ConcatStr
  loc_D11D2E: FStStrNoPop var_15C
  loc_D11D31: FLdUI1
  loc_D11D35: CStrI2
  loc_D11D37: FStStrNoPop var_160
  loc_D11D3A: ConcatStr
  loc_D11D3B: FStStrNoPop var_164
  loc_D11D3E: LitStr " AND NumeLiqu = "
  loc_D11D41: ConcatStr
  loc_D11D42: FStStrNoPop var_168
  loc_D11D45: FLdI2 NumeLiqu
  loc_D11D48: CStrUI1
  loc_D11D4A: FStStrNoPop var_16C
  loc_D11D4D: ConcatStr
  loc_D11D4E: FStStrNoPop var_170
  loc_D11D51: LitStr " AND CodiCome = "
  loc_D11D54: ConcatStr
  loc_D11D55: FStStrNoPop var_174
  loc_D11D58: ILdRf CodiCome
  loc_D11D5B: CStrI4
  loc_D11D5D: FStStrNoPop var_178
  loc_D11D60: ConcatStr
  loc_D11D61: FStStrNoPop var_17C
  loc_D11D64: LitStr " AND CodiConc = '"
  loc_D11D67: ConcatStr
  loc_D11D68: FStStrNoPop var_68C
  loc_D11D6B: ILdRf var_88
  loc_D11D6E: ConcatStr
  loc_D11D6F: FStStrNoPop var_690
  loc_D11D72: LitStr "'"
  loc_D11D75: ConcatStr
  loc_D11D76: FStStrNoPop var_694
  loc_D11D79: LitStr " AND TipoVenc = "
  loc_D11D7C: ConcatStr
  loc_D11D7D: FStStrNoPop var_698
  loc_D11D80: FLdUI1
  loc_D11D84: CStrI2
  loc_D11D86: FStStrNoPop var_69C
  loc_D11D89: ConcatStr
  loc_D11D8A: FStStrNoPop var_6A0
  loc_D11D8D: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLpde"
  loc_D11D90: ConcatStr
  loc_D11D91: FStStrNoPop var_6A4
  loc_D11D94: Call EjecutarRsCls1(from_stack_1v)
  loc_D11D99: FFreeStr var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_68C = "": var_690 = "": var_694 = "": var_698 = "": var_69C = "": var_6A0 = ""
  loc_D11DC6: FLdRfVar var_180
  loc_D11DC9: FLdPr Me
  loc_D11DCC: MemLdPr global_60
  loc_D11DCF:  = Me.RecordCount
  loc_D11DD4: ILdRf var_180
  loc_D11DD7: LitI4 0
  loc_D11DDC: GtI4
  loc_D11DDD: BranchF loc_D121C0
  loc_D11DE0: FLdPr Me
  loc_D11DE3: MemLdPr global_60
  loc_D11DE6: Me.MoveFirst
  loc_D11DEB: FLdRfVar var_1AC
  loc_D11DEE: FLdRfVar var_19C
  loc_D11DF1: LitVarStr var_198, "ImpoLpde"
  loc_D11DF6: PopAdLdVar
  loc_D11DF7: FLdRfVar var_188
  loc_D11DFA: FLdPr Me
  loc_D11DFD: MemLdPr global_64
  loc_D11E00:  = Me.Fields
  loc_D11E05: FLdPr var_188
  loc_D11E08: from_stack_2 = Me.Item(from_stack_1)
  loc_D11E0D: FLdPr var_19C
  loc_D11E10:  = Me.Value
  loc_D11E15: LitI4 2
  loc_D11E1A: FLdFPR8 CrafLipu
  loc_D11E1D: FLdRfVar var_1AC
  loc_D11E20: FnCDblVar
  loc_D11E22: SubR4
  loc_D11E23: CVarR8
  loc_D11E27: FLdRfVar var_1DC
  loc_D11E2A: ImpAdCallFPR4  = Round(, )
  loc_D11E2F: LitStr " UPDATE lipudeta SET ImpoLpde = ImpoLpde + "
  loc_D11E32: LitI4 0
  loc_D11E37: LitI4 -1
  loc_D11E3C: LitI4 1
  loc_D11E41: LitStr "."
  loc_D11E44: LitStr ","
  loc_D11E47: FLdRfVar var_1DC
  loc_D11E4A: CStrVarVal var_148
  loc_D11E4E: ImpAdCallI2 Replace(, , , , , )
  loc_D11E53: FStStrNoPop var_14C
  loc_D11E56: ConcatStr
  loc_D11E57: FStStrNoPop var_150
  loc_D11E5A: LitStr ", TotaLpde = ImpoLade - DecaLpde "
  loc_D11E5D: ConcatStr
  loc_D11E5E: FStStrNoPop var_154
  loc_D11E61: LitStr " WHERE PeriLiqu = "
  loc_D11E64: ConcatStr
  loc_D11E65: CVarStr var_20C
  loc_D11E68: FLdRfVar var_1EC
  loc_D11E6B: FLdRfVar var_224
  loc_D11E6E: LitVarStr var_1FC, "PeriLiqu"
  loc_D11E73: PopAdLdVar
  loc_D11E74: FLdRfVar var_210
  loc_D11E77: FLdPr Me
  loc_D11E7A: MemLdPr global_60
  loc_D11E7D:  = Me.Fields
  loc_D11E82: FLdPr var_210
  loc_D11E85: from_stack_2 = Me.Item(from_stack_1)
  loc_D11E8A: FLdPr var_224
  loc_D11E8D:  = Me.Value
  loc_D11E92: FLdRfVar var_1EC
  loc_D11E95: ConcatVar var_234
  loc_D11E99: LitVarStr var_220, " AND Bimeliqu = "
  loc_D11E9E: ConcatVar var_244
  loc_D11EA2: FLdRfVar var_264
  loc_D11EA5: FLdRfVar var_27C
  loc_D11EA8: LitVarStr var_254, "BimeLiqu"
  loc_D11EAD: PopAdLdVar
  loc_D11EAE: FLdRfVar var_268
  loc_D11EB1: FLdPr Me
  loc_D11EB4: MemLdPr global_60
  loc_D11EB7:  = Me.Fields
  loc_D11EBC: FLdPr var_268
  loc_D11EBF: from_stack_2 = Me.Item(from_stack_1)
  loc_D11EC4: FLdPr var_27C
  loc_D11EC7:  = Me.Value
  loc_D11ECC: FLdRfVar var_264
  loc_D11ECF: ConcatVar var_28C
  loc_D11ED3: LitVarStr var_278, " AND CodiTili = "
  loc_D11ED8: ConcatVar var_29C
  loc_D11EDC: FLdRfVar var_2BC
  loc_D11EDF: FLdRfVar var_2D4
  loc_D11EE2: LitVarStr var_2AC, "CodiTili"
  loc_D11EE7: PopAdLdVar
  loc_D11EE8: FLdRfVar var_2C0
  loc_D11EEB: FLdPr Me
  loc_D11EEE: MemLdPr global_60
  loc_D11EF1:  = Me.Fields
  loc_D11EF6: FLdPr var_2C0
  loc_D11EF9: from_stack_2 = Me.Item(from_stack_1)
  loc_D11EFE: FLdPr var_2D4
  loc_D11F01:  = Me.Value
  loc_D11F06: FLdRfVar var_2BC
  loc_D11F09: ConcatVar var_2E4
  loc_D11F0D: LitVarStr var_2D0, " AND NumeLiqu = "
  loc_D11F12: ConcatVar var_2F4
  loc_D11F16: FLdRfVar var_314
  loc_D11F19: FLdRfVar var_32C
  loc_D11F1C: LitVarStr var_304, "NumeLiqu"
  loc_D11F21: PopAdLdVar
  loc_D11F22: FLdRfVar var_318
  loc_D11F25: FLdPr Me
  loc_D11F28: MemLdPr global_60
  loc_D11F2B:  = Me.Fields
  loc_D11F30: FLdPr var_318
  loc_D11F33: from_stack_2 = Me.Item(from_stack_1)
  loc_D11F38: FLdPr var_32C
  loc_D11F3B:  = Me.Value
  loc_D11F40: FLdRfVar var_314
  loc_D11F43: ConcatVar var_33C
  loc_D11F47: LitVarStr var_328, " AND CodiCome = "
  loc_D11F4C: ConcatVar var_34C
  loc_D11F50: FLdRfVar var_36C
  loc_D11F53: FLdRfVar var_3E8
  loc_D11F56: LitVarStr var_35C, "CodiCome"
  loc_D11F5B: PopAdLdVar
  loc_D11F5C: FLdRfVar var_3D4
  loc_D11F5F: FLdPr Me
  loc_D11F62: MemLdPr global_60
  loc_D11F65:  = Me.Fields
  loc_D11F6A: FLdPr var_3D4
  loc_D11F6D: from_stack_2 = Me.Item(from_stack_1)
  loc_D11F72: FLdPr var_3E8
  loc_D11F75:  = Me.Value
  loc_D11F7A: FLdRfVar var_36C
  loc_D11F7D: ConcatVar var_38C
  loc_D11F81: LitVarStr var_37C, " AND CodiConc = '"
  loc_D11F86: ConcatVar var_3AC
  loc_D11F8A: FLdRfVar var_3CC
  loc_D11F8D: FLdRfVar var_440
  loc_D11F90: LitVarStr var_39C, "CodiConc"
  loc_D11F95: PopAdLdVar
  loc_D11F96: FLdRfVar var_42C
  loc_D11F99: FLdPr Me
  loc_D11F9C: MemLdPr global_60
  loc_D11F9F:  = Me.Fields
  loc_D11FA4: FLdPr var_42C
  loc_D11FA7: from_stack_2 = Me.Item(from_stack_1)
  loc_D11FAC: FLdPr var_440
  loc_D11FAF:  = Me.Value
  loc_D11FB4: FLdRfVar var_3CC
  loc_D11FB7: ConcatVar var_3F8
  loc_D11FBB: LitVarStr var_3BC, "'"
  loc_D11FC0: ConcatVar var_408
  loc_D11FC4: LitVarStr var_3E4, " AND TipoVenc = "
  loc_D11FC9: ConcatVar var_428
  loc_D11FCD: FLdRfVar var_450
  loc_D11FD0: FLdRfVar var_498
  loc_D11FD3: LitVarStr var_418, "TipoVenc"
  loc_D11FD8: PopAdLdVar
  loc_D11FD9: FLdRfVar var_484
  loc_D11FDC: FLdPr Me
  loc_D11FDF: MemLdPr global_60
  loc_D11FE2:  = Me.Fields
  loc_D11FE7: FLdPr var_484
  loc_D11FEA: from_stack_2 = Me.Item(from_stack_1)
  loc_D11FEF: FLdPr var_498
  loc_D11FF2:  = Me.Value
  loc_D11FF7: FLdRfVar var_450
  loc_D11FFA: ConcatVar var_460
  loc_D11FFE: LitVarStr var_43C, " AND CodiRamo = "
  loc_D12003: ConcatVar var_480
  loc_D12007: FLdRfVar var_4A8
  loc_D1200A: FLdRfVar var_4F0
  loc_D1200D: LitVarStr var_470, "CodiRamo"
  loc_D12012: PopAdLdVar
  loc_D12013: FLdRfVar var_4DC
  loc_D12016: FLdPr Me
  loc_D12019: MemLdPr global_60
  loc_D1201C:  = Me.Fields
  loc_D12021: FLdPr var_4DC
  loc_D12024: from_stack_2 = Me.Item(from_stack_1)
  loc_D12029: FLdPr var_4F0
  loc_D1202C:  = Me.Value
  loc_D12031: FLdRfVar var_4A8
  loc_D12034: ConcatVar var_4B8
  loc_D12038: LitVarStr var_494, " AND CodiRubr = "
  loc_D1203D: ConcatVar var_4D8
  loc_D12041: FLdRfVar var_500
  loc_D12044: FLdRfVar var_548
  loc_D12047: LitVarStr var_4C8, "CodiRubr"
  loc_D1204C: PopAdLdVar
  loc_D1204D: FLdRfVar var_534
  loc_D12050: FLdPr Me
  loc_D12053: MemLdPr global_60
  loc_D12056:  = Me.Fields
  loc_D1205B: FLdPr var_534
  loc_D1205E: from_stack_2 = Me.Item(from_stack_1)
  loc_D12063: FLdPr var_548
  loc_D12066:  = Me.Value
  loc_D1206B: FLdRfVar var_500
  loc_D1206E: ConcatVar var_510
  loc_D12072: LitVarStr var_4EC, " AND PeriOrde = "
  loc_D12077: ConcatVar var_530
  loc_D1207B: FLdRfVar var_558
  loc_D1207E: FLdRfVar var_7D0
  loc_D12081: LitVarStr var_520, "PeriOrde"
  loc_D12086: PopAdLdVar
  loc_D12087: FLdRfVar var_7CC
  loc_D1208A: FLdPr Me
  loc_D1208D: MemLdPr global_60
  loc_D12090:  = Me.Fields
  loc_D12095: FLdPr var_7CC
  loc_D12098: from_stack_2 = Me.Item(from_stack_1)
  loc_D1209D: FLdPr var_7D0
  loc_D120A0:  = Me.Value
  loc_D120A5: FLdRfVar var_558
  loc_D120A8: ConcatVar var_568
  loc_D120AC: LitVarStr var_544, " AND CodiSubr = "
  loc_D120B1: ConcatVar var_588
  loc_D120B5: FLdRfVar var_598
  loc_D120B8: FLdRfVar var_7D8
  loc_D120BB: LitVarStr var_578, "CodiSubr"
  loc_D120C0: PopAdLdVar
  loc_D120C1: FLdRfVar var_7D4
  loc_D120C4: FLdPr Me
  loc_D120C7: MemLdPr global_60
  loc_D120CA:  = Me.Fields
  loc_D120CF: FLdPr var_7D4
  loc_D120D2: from_stack_2 = Me.Item(from_stack_1)
  loc_D120D7: FLdPr var_7D8
  loc_D120DA:  = Me.Value
  loc_D120DF: FLdRfVar var_598
  loc_D120E2: ConcatVar var_5A8
  loc_D120E6: LitVarStr var_5B8, " AND NumeLpde = "
  loc_D120EB: ConcatVar var_5C8
  loc_D120EF: FLdRfVar var_5D8
  loc_D120F2: FLdRfVar var_7E0
  loc_D120F5: LitVarStr var_5F8, "NumeLpde"
  loc_D120FA: PopAdLdVar
  loc_D120FB: FLdRfVar var_7DC
  loc_D120FE: FLdPr Me
  loc_D12101: MemLdPr global_60
  loc_D12104:  = Me.Fields
  loc_D12109: FLdPr var_7DC
  loc_D1210C: from_stack_2 = Me.Item(from_stack_1)
  loc_D12111: FLdPr var_7E0
  loc_D12114:  = Me.Value
  loc_D12119: FLdRfVar var_5D8
  loc_D1211C: ConcatVar var_5E8
  loc_D12120: CStrVarVal var_158
  loc_D12124: Call EjecutarRsCls(from_stack_1v)
  loc_D12129: FFreeStr var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_D12136: FFreeAd var_188 = "": var_19C = "": var_210 = "": var_224 = "": var_268 = "": var_27C = "": var_2C0 = "": var_2D4 = "": var_318 = "": var_32C = "": var_3D4 = "": var_3E8 = "": var_42C = "": var_440 = "": var_484 = "": var_498 = "": var_4DC = "": var_4F0 = "": var_534 = "": var_548 = "": var_7CC = "": var_7D0 = "": var_7D4 = "": var_7D8 = "": var_7DC = ""
  loc_D1216D: FFreeVar var_510 = "": var_530 = "": var_558 = "": var_568 = "": var_588 = "": var_598 = "": var_5A8 = "": var_5C8 = "": var_5D8 = "": var_5E8 = "": var_1AC = "": var_1CC = "": var_1DC = "": var_20C = "": var_1EC = "": var_234 = "": var_244 = "": var_264 = "": var_28C = "": var_29C = "": var_2BC = "": var_2E4 = "": var_2F4 = "": var_314 = "": var_33C = "": var_34C = "": var_36C = "": var_38C = "": var_3AC = "": var_3CC = "": var_3F8 = "": var_408 = "": var_428 = "": var_450 = "": var_460 = "": var_480 = "": var_4A8 = "": var_4B8 = "": var_4D8 = ""
  loc_D121C0: Branch loc_D126A5
  loc_D121C3: FLdRfVar var_1AC
  loc_D121C6: FLdRfVar var_19C
  loc_D121C9: LitVarStr var_198, "ImpoLpde"
  loc_D121CE: PopAdLdVar
  loc_D121CF: FLdRfVar var_188
  loc_D121D2: FLdPr Me
  loc_D121D5: MemLdPr global_64
  loc_D121D8:  = Me.Fields
  loc_D121DD: FLdPr var_188
  loc_D121E0: from_stack_2 = Me.Item(from_stack_1)
  loc_D121E5: FLdPr var_19C
  loc_D121E8:  = Me.Value
  loc_D121ED: FLdFPR8 CrafLipu
  loc_D121F0: FLdRfVar var_1AC
  loc_D121F3: FnCDblVar
  loc_D121F5: LtR8
  loc_D121F6: FFreeAd var_188 = ""
  loc_D121FD: FFree1Var var_1AC = ""
  loc_D12200: BranchF loc_D126A5
  loc_D12203: LitStr "SELECT * FROM Lipudeta WHERE PeriLiqu = "
  loc_D12206: FLdI2 PeriLiqu
  loc_D12209: CStrUI1
  loc_D1220B: FStStrNoPop var_148
  loc_D1220E: ConcatStr
  loc_D1220F: FStStrNoPop var_14C
  loc_D12212: LitStr " AND Bimeliqu = "
  loc_D12215: ConcatStr
  loc_D12216: FStStrNoPop var_150
  loc_D12219: FLdUI1
  loc_D1221D: CStrI2
  loc_D1221F: FStStrNoPop var_154
  loc_D12222: ConcatStr
  loc_D12223: FStStrNoPop var_158
  loc_D12226: LitStr " AND CodiTili = "
  loc_D12229: ConcatStr
  loc_D1222A: FStStrNoPop var_15C
  loc_D1222D: FLdUI1
  loc_D12231: CStrI2
  loc_D12233: FStStrNoPop var_160
  loc_D12236: ConcatStr
  loc_D12237: FStStrNoPop var_164
  loc_D1223A: LitStr " AND NumeLiqu = "
  loc_D1223D: ConcatStr
  loc_D1223E: FStStrNoPop var_168
  loc_D12241: FLdI2 NumeLiqu
  loc_D12244: CStrUI1
  loc_D12246: FStStrNoPop var_16C
  loc_D12249: ConcatStr
  loc_D1224A: FStStrNoPop var_170
  loc_D1224D: LitStr " AND CodiCome = "
  loc_D12250: ConcatStr
  loc_D12251: FStStrNoPop var_174
  loc_D12254: ILdRf CodiCome
  loc_D12257: CStrI4
  loc_D12259: FStStrNoPop var_178
  loc_D1225C: ConcatStr
  loc_D1225D: FStStrNoPop var_17C
  loc_D12260: LitStr " AND CodiConc = '"
  loc_D12263: ConcatStr
  loc_D12264: FStStrNoPop var_68C
  loc_D12267: ILdRf var_88
  loc_D1226A: ConcatStr
  loc_D1226B: FStStrNoPop var_690
  loc_D1226E: LitStr "'"
  loc_D12271: ConcatStr
  loc_D12272: FStStrNoPop var_694
  loc_D12275: LitStr " AND TipoVenc = "
  loc_D12278: ConcatStr
  loc_D12279: FStStrNoPop var_698
  loc_D1227C: FLdUI1
  loc_D12280: CStrI2
  loc_D12282: FStStrNoPop var_69C
  loc_D12285: ConcatStr
  loc_D12286: FStStrNoPop var_6A0
  loc_D12289: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLpde"
  loc_D1228C: ConcatStr
  loc_D1228D: FStStrNoPop var_6A4
  loc_D12290: Call EjecutarRsCls1(from_stack_1v)
  loc_D12295: FFreeStr var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_68C = "": var_690 = "": var_694 = "": var_698 = "": var_69C = "": var_6A0 = ""
  loc_D122C2: FLdRfVar var_180
  loc_D122C5: FLdPr Me
  loc_D122C8: MemLdPr global_60
  loc_D122CB:  = Me.RecordCount
  loc_D122D0: ILdRf var_180
  loc_D122D3: LitI4 0
  loc_D122D8: GtI4
  loc_D122D9: BranchF loc_D126A5
  loc_D122DC: FLdPr Me
  loc_D122DF: MemLdPr global_60
  loc_D122E2: Me.MoveFirst
  loc_D122E7: FLdRfVar var_1AC
  loc_D122EA: FLdRfVar var_19C
  loc_D122ED: LitVarStr var_198, "ImpoLade"
  loc_D122F2: PopAdLdVar
  loc_D122F3: FLdRfVar var_188
  loc_D122F6: FLdPr Me
  loc_D122F9: MemLdPr global_64
  loc_D122FC:  = Me.Fields
  loc_D12301: FLdPr var_188
  loc_D12304: from_stack_2 = Me.Item(from_stack_1)
  loc_D12309: FLdPr var_19C
  loc_D1230C:  = Me.Value
  loc_D12311: LitStr " UPDATE lipudeta SET ImpoLade = ImpoLade - "
  loc_D12314: LitI4 0
  loc_D12319: LitI4 -1
  loc_D1231E: LitI4 1
  loc_D12323: LitStr "."
  loc_D12326: LitStr ","
  loc_D12329: FLdRfVar var_1AC
  loc_D1232C: FnCDblVar
  loc_D1232E: FLdFPR8 CrafLipu
  loc_D12331: SubR4
  loc_D12332: CStrR8
  loc_D12334: FStStrNoPop var_148
  loc_D12337: ImpAdCallI2 Replace(, , , , , )
  loc_D1233C: FStStrNoPop var_14C
  loc_D1233F: ConcatStr
  loc_D12340: FStStrNoPop var_150
  loc_D12343: LitStr ", TotaLade = ImpoLade - DecaLade "
  loc_D12346: ConcatStr
  loc_D12347: FStStrNoPop var_154
  loc_D1234A: LitStr " WHERE PeriLiqu = "
  loc_D1234D: ConcatStr
  loc_D1234E: CVarStr var_1DC
  loc_D12351: FLdRfVar var_1CC
  loc_D12354: FLdRfVar var_224
  loc_D12357: LitVarStr var_1BC, "PeriLiqu"
  loc_D1235C: PopAdLdVar
  loc_D1235D: FLdRfVar var_210
  loc_D12360: FLdPr Me
  loc_D12363: MemLdPr global_60
  loc_D12366:  = Me.Fields
  loc_D1236B: FLdPr var_210
  loc_D1236E: from_stack_2 = Me.Item(from_stack_1)
  loc_D12373: FLdPr var_224
  loc_D12376:  = Me.Value
  loc_D1237B: FLdRfVar var_1CC
  loc_D1237E: ConcatVar var_1EC
  loc_D12382: LitVarStr var_1FC, " AND Bimeliqu = "
  loc_D12387: ConcatVar var_20C
  loc_D1238B: FLdRfVar var_234
  loc_D1238E: FLdRfVar var_27C
  loc_D12391: LitVarStr var_220, "BimeLiqu"
  loc_D12396: PopAdLdVar
  loc_D12397: FLdRfVar var_268
  loc_D1239A: FLdPr Me
  loc_D1239D: MemLdPr global_60
  loc_D123A0:  = Me.Fields
  loc_D123A5: FLdPr var_268
  loc_D123A8: from_stack_2 = Me.Item(from_stack_1)
  loc_D123AD: FLdPr var_27C
  loc_D123B0:  = Me.Value
  loc_D123B5: FLdRfVar var_234
  loc_D123B8: ConcatVar var_244
  loc_D123BC: LitVarStr var_254, " AND CodiTili = "
  loc_D123C1: ConcatVar var_264
  loc_D123C5: FLdRfVar var_28C
  loc_D123C8: FLdRfVar var_2D4
  loc_D123CB: LitVarStr var_278, "CodiTili"
  loc_D123D0: PopAdLdVar
  loc_D123D1: FLdRfVar var_2C0
  loc_D123D4: FLdPr Me
  loc_D123D7: MemLdPr global_60
  loc_D123DA:  = Me.Fields
  loc_D123DF: FLdPr var_2C0
  loc_D123E2: from_stack_2 = Me.Item(from_stack_1)
  loc_D123E7: FLdPr var_2D4
  loc_D123EA:  = Me.Value
  loc_D123EF: FLdRfVar var_28C
  loc_D123F2: ConcatVar var_29C
  loc_D123F6: LitVarStr var_2AC, " AND NumeLiqu = "
  loc_D123FB: ConcatVar var_2BC
  loc_D123FF: FLdRfVar var_2E4
  loc_D12402: FLdRfVar var_32C
  loc_D12405: LitVarStr var_2D0, "NumeLiqu"
  loc_D1240A: PopAdLdVar
  loc_D1240B: FLdRfVar var_318
  loc_D1240E: FLdPr Me
  loc_D12411: MemLdPr global_60
  loc_D12414:  = Me.Fields
  loc_D12419: FLdPr var_318
  loc_D1241C: from_stack_2 = Me.Item(from_stack_1)
  loc_D12421: FLdPr var_32C
  loc_D12424:  = Me.Value
  loc_D12429: FLdRfVar var_2E4
  loc_D1242C: ConcatVar var_2F4
  loc_D12430: LitVarStr var_304, " AND CodiCome = "
  loc_D12435: ConcatVar var_314
  loc_D12439: FLdRfVar var_33C
  loc_D1243C: FLdRfVar var_3E8
  loc_D1243F: LitVarStr var_328, "CodiCome"
  loc_D12444: PopAdLdVar
  loc_D12445: FLdRfVar var_3D4
  loc_D12448: FLdPr Me
  loc_D1244B: MemLdPr global_60
  loc_D1244E:  = Me.Fields
  loc_D12453: FLdPr var_3D4
  loc_D12456: from_stack_2 = Me.Item(from_stack_1)
  loc_D1245B: FLdPr var_3E8
  loc_D1245E:  = Me.Value
  loc_D12463: FLdRfVar var_33C
  loc_D12466: ConcatVar var_34C
  loc_D1246A: LitVarStr var_35C, " AND CodiConc = '"
  loc_D1246F: ConcatVar var_36C
  loc_D12473: FLdRfVar var_38C
  loc_D12476: FLdRfVar var_440
  loc_D12479: LitVarStr var_37C, "CodiConc"
  loc_D1247E: PopAdLdVar
  loc_D1247F: FLdRfVar var_42C
  loc_D12482: FLdPr Me
  loc_D12485: MemLdPr global_60
  loc_D12488:  = Me.Fields
  loc_D1248D: FLdPr var_42C
  loc_D12490: from_stack_2 = Me.Item(from_stack_1)
  loc_D12495: FLdPr var_440
  loc_D12498:  = Me.Value
  loc_D1249D: FLdRfVar var_38C
  loc_D124A0: ConcatVar var_3AC
  loc_D124A4: LitVarStr var_39C, "'"
  loc_D124A9: ConcatVar var_3CC
  loc_D124AD: LitVarStr var_3BC, " AND TipoVenc = "
  loc_D124B2: ConcatVar var_3F8
  loc_D124B6: FLdRfVar var_408
  loc_D124B9: FLdRfVar var_498
  loc_D124BC: LitVarStr var_3E4, "TipoVenc"
  loc_D124C1: PopAdLdVar
  loc_D124C2: FLdRfVar var_484
  loc_D124C5: FLdPr Me
  loc_D124C8: MemLdPr global_60
  loc_D124CB:  = Me.Fields
  loc_D124D0: FLdPr var_484
  loc_D124D3: from_stack_2 = Me.Item(from_stack_1)
  loc_D124D8: FLdPr var_498
  loc_D124DB:  = Me.Value
  loc_D124E0: FLdRfVar var_408
  loc_D124E3: ConcatVar var_428
  loc_D124E7: LitVarStr var_418, " AND CodiRamo = "
  loc_D124EC: ConcatVar var_450
  loc_D124F0: FLdRfVar var_460
  loc_D124F3: FLdRfVar var_4F0
  loc_D124F6: LitVarStr var_43C, "CodiRamo"
  loc_D124FB: PopAdLdVar
  loc_D124FC: FLdRfVar var_4DC
  loc_D124FF: FLdPr Me
  loc_D12502: MemLdPr global_60
  loc_D12505:  = Me.Fields
  loc_D1250A: FLdPr var_4DC
  loc_D1250D: from_stack_2 = Me.Item(from_stack_1)
  loc_D12512: FLdPr var_4F0
  loc_D12515:  = Me.Value
  loc_D1251A: FLdRfVar var_460
  loc_D1251D: ConcatVar var_480
  loc_D12521: LitVarStr var_470, " AND CodiRubr = "
  loc_D12526: ConcatVar var_4A8
  loc_D1252A: FLdRfVar var_4B8
  loc_D1252D: FLdRfVar var_548
  loc_D12530: LitVarStr var_494, "CodiRubr"
  loc_D12535: PopAdLdVar
  loc_D12536: FLdRfVar var_534
  loc_D12539: FLdPr Me
  loc_D1253C: MemLdPr global_60
  loc_D1253F:  = Me.Fields
  loc_D12544: FLdPr var_534
  loc_D12547: from_stack_2 = Me.Item(from_stack_1)
  loc_D1254C: FLdPr var_548
  loc_D1254F:  = Me.Value
  loc_D12554: FLdRfVar var_4B8
  loc_D12557: ConcatVar var_4D8
  loc_D1255B: LitVarStr var_4C8, " AND PeriOrde = "
  loc_D12560: ConcatVar var_500
  loc_D12564: FLdRfVar var_510
  loc_D12567: FLdRfVar var_7D0
  loc_D1256A: LitVarStr var_4EC, "PeriOrde"
  loc_D1256F: PopAdLdVar
  loc_D12570: FLdRfVar var_7CC
  loc_D12573: FLdPr Me
  loc_D12576: MemLdPr global_60
  loc_D12579:  = Me.Fields
  loc_D1257E: FLdPr var_7CC
  loc_D12581: from_stack_2 = Me.Item(from_stack_1)
  loc_D12586: FLdPr var_7D0
  loc_D12589:  = Me.Value
  loc_D1258E: FLdRfVar var_510
  loc_D12591: ConcatVar var_530
  loc_D12595: LitVarStr var_520, " AND CodiSubr = "
  loc_D1259A: ConcatVar var_558
  loc_D1259E: FLdRfVar var_568
  loc_D125A1: FLdRfVar var_7D8
  loc_D125A4: LitVarStr var_544, "CodiSubr"
  loc_D125A9: PopAdLdVar
  loc_D125AA: FLdRfVar var_7D4
  loc_D125AD: FLdPr Me
  loc_D125B0: MemLdPr global_60
  loc_D125B3:  = Me.Fields
  loc_D125B8: FLdPr var_7D4
  loc_D125BB: from_stack_2 = Me.Item(from_stack_1)
  loc_D125C0: FLdPr var_7D8
  loc_D125C3:  = Me.Value
  loc_D125C8: FLdRfVar var_568
  loc_D125CB: ConcatVar var_588
  loc_D125CF: LitVarStr var_578, " AND NumeLpde = "
  loc_D125D4: ConcatVar var_598
  loc_D125D8: FLdRfVar var_5A8
  loc_D125DB: FLdRfVar var_7E0
  loc_D125DE: LitVarStr var_5B8, "NumeLpde"
  loc_D125E3: PopAdLdVar
  loc_D125E4: FLdRfVar var_7DC
  loc_D125E7: FLdPr Me
  loc_D125EA: MemLdPr global_60
  loc_D125ED:  = Me.Fields
  loc_D125F2: FLdPr var_7DC
  loc_D125F5: from_stack_2 = Me.Item(from_stack_1)
  loc_D125FA: FLdPr var_7E0
  loc_D125FD:  = Me.Value
  loc_D12602: FLdRfVar var_5A8
  loc_D12605: ConcatVar var_5C8
  loc_D12609: CStrVarVal var_158
  loc_D1260D: Call EjecutarRsCls(from_stack_1v)
  loc_D12612: FFreeStr var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_D1261F: FFreeAd var_188 = "": var_19C = "": var_210 = "": var_224 = "": var_268 = "": var_27C = "": var_2C0 = "": var_2D4 = "": var_318 = "": var_32C = "": var_3D4 = "": var_3E8 = "": var_42C = "": var_440 = "": var_484 = "": var_498 = "": var_4DC = "": var_4F0 = "": var_534 = "": var_548 = "": var_7CC = "": var_7D0 = "": var_7D4 = "": var_7D8 = "": var_7DC = ""
  loc_D12656: FFreeVar var_510 = "": var_530 = "": var_558 = "": var_568 = "": var_588 = "": var_598 = "": var_5A8 = "": var_5C8 = "": var_1AC = "": var_1DC = "": var_1CC = "": var_1EC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_28C = "": var_29C = "": var_2BC = "": var_2E4 = "": var_2F4 = "": var_314 = "": var_33C = "": var_34C = "": var_36C = "": var_38C = "": var_3AC = "": var_3CC = "": var_3F8 = "": var_408 = "": var_428 = "": var_450 = "": var_460 = "": var_480 = "": var_4A8 = "": var_4B8 = "": var_4D8 = ""
  loc_D126A5: FLdFPR8 CodiRuta
  loc_D126A8: CVarR8
  loc_D126AC: HardType
  loc_D126AD: FLdRfVar var_1AC
  loc_D126B0: FLdRfVar var_19C
  loc_D126B3: LitVarStr var_198, "DecaLpde"
  loc_D126B8: PopAdLdVar
  loc_D126B9: FLdRfVar var_188
  loc_D126BC: FLdPr Me
  loc_D126BF: MemLdPr global_64
  loc_D126C2:  = Me.Fields
  loc_D126C7: FLdPr var_188
  loc_D126CA: from_stack_2 = Me.Item(from_stack_1)
  loc_D126CF: FLdPr var_19C
  loc_D126D2:  = Me.Value
  loc_D126D7: FLdRfVar var_1AC
  loc_D126DA: NeVarBool
  loc_D126DC: FFreeAd var_188 = ""
  loc_D126E3: FFree1Var var_1AC = ""
  loc_D126E6: BranchF loc_D130DE
  loc_D126E9: FLdRfVar var_1AC
  loc_D126EC: FLdRfVar var_19C
  loc_D126EF: LitVarStr var_198, "DecaLpde"
  loc_D126F4: PopAdLdVar
  loc_D126F5: FLdRfVar var_188
  loc_D126F8: FLdPr Me
  loc_D126FB: MemLdPr global_64
  loc_D126FE:  = Me.Fields
  loc_D12703: FLdPr var_188
  loc_D12706: from_stack_2 = Me.Item(from_stack_1)
  loc_D1270B: FLdPr var_19C
  loc_D1270E:  = Me.Value
  loc_D12713: FLdFPR8 CodiRuta
  loc_D12716: FLdRfVar var_1AC
  loc_D12719: FnCDblVar
  loc_D1271B: GtR4
  loc_D1271C: FFreeAd var_188 = ""
  loc_D12723: FFree1Var var_1AC = ""
  loc_D12726: BranchF loc_D12BE5
  loc_D12729: LitStr "SELECT * FROM lipudeta WHERE PeriLiqu = "
  loc_D1272C: FLdI2 PeriLiqu
  loc_D1272F: CStrUI1
  loc_D12731: FStStrNoPop var_148
  loc_D12734: ConcatStr
  loc_D12735: FStStrNoPop var_14C
  loc_D12738: LitStr " AND Bimeliqu = "
  loc_D1273B: ConcatStr
  loc_D1273C: FStStrNoPop var_150
  loc_D1273F: FLdUI1
  loc_D12743: CStrI2
  loc_D12745: FStStrNoPop var_154
  loc_D12748: ConcatStr
  loc_D12749: FStStrNoPop var_158
  loc_D1274C: LitStr " AND CodiTili = "
  loc_D1274F: ConcatStr
  loc_D12750: FStStrNoPop var_15C
  loc_D12753: FLdUI1
  loc_D12757: CStrI2
  loc_D12759: FStStrNoPop var_160
  loc_D1275C: ConcatStr
  loc_D1275D: FStStrNoPop var_164
  loc_D12760: LitStr " AND NumeLiqu = "
  loc_D12763: ConcatStr
  loc_D12764: FStStrNoPop var_168
  loc_D12767: FLdI2 NumeLiqu
  loc_D1276A: CStrUI1
  loc_D1276C: FStStrNoPop var_16C
  loc_D1276F: ConcatStr
  loc_D12770: FStStrNoPop var_170
  loc_D12773: LitStr " AND CodiCome = "
  loc_D12776: ConcatStr
  loc_D12777: FStStrNoPop var_174
  loc_D1277A: ILdRf CodiCome
  loc_D1277D: CStrI4
  loc_D1277F: FStStrNoPop var_178
  loc_D12782: ConcatStr
  loc_D12783: FStStrNoPop var_17C
  loc_D12786: LitStr " AND CodiConc = '"
  loc_D12789: ConcatStr
  loc_D1278A: FStStrNoPop var_68C
  loc_D1278D: ILdRf var_88
  loc_D12790: ConcatStr
  loc_D12791: FStStrNoPop var_690
  loc_D12794: LitStr "'"
  loc_D12797: ConcatStr
  loc_D12798: FStStrNoPop var_694
  loc_D1279B: LitStr " AND TipoVenc = "
  loc_D1279E: ConcatStr
  loc_D1279F: FStStrNoPop var_698
  loc_D127A2: FLdUI1
  loc_D127A6: CStrI2
  loc_D127A8: FStStrNoPop var_69C
  loc_D127AB: ConcatStr
  loc_D127AC: FStStrNoPop var_6A0
  loc_D127AF: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLpde"
  loc_D127B2: ConcatStr
  loc_D127B3: FStStrNoPop var_6A4
  loc_D127B6: Call EjecutarRsCls1(from_stack_1v)
  loc_D127BB: FFreeStr var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_68C = "": var_690 = "": var_694 = "": var_698 = "": var_69C = "": var_6A0 = ""
  loc_D127E8: FLdRfVar var_180
  loc_D127EB: FLdPr Me
  loc_D127EE: MemLdPr global_60
  loc_D127F1:  = Me.RecordCount
  loc_D127F6: ILdRf var_180
  loc_D127F9: LitI4 0
  loc_D127FE: GtI4
  loc_D127FF: BranchF loc_D12BE2
  loc_D12802: FLdPr Me
  loc_D12805: MemLdPr global_60
  loc_D12808: Me.MoveFirst
  loc_D1280D: FLdRfVar var_1AC
  loc_D12810: FLdRfVar var_19C
  loc_D12813: LitVarStr var_198, "DecaLade"
  loc_D12818: PopAdLdVar
  loc_D12819: FLdRfVar var_188
  loc_D1281C: FLdPr Me
  loc_D1281F: MemLdPr global_64
  loc_D12822:  = Me.Fields
  loc_D12827: FLdPr var_188
  loc_D1282A: from_stack_2 = Me.Item(from_stack_1)
  loc_D1282F: FLdPr var_19C
  loc_D12832:  = Me.Value
  loc_D12837: LitI4 2
  loc_D1283C: FLdFPR8 CodiRuta
  loc_D1283F: FLdRfVar var_1AC
  loc_D12842: FnCDblVar
  loc_D12844: SubR4
  loc_D12845: CVarR8
  loc_D12849: FLdRfVar var_1DC
  loc_D1284C: ImpAdCallFPR4  = Round(, )
  loc_D12851: LitStr " UPDATE lipudeta SET DecaLade = DecaLade + "
  loc_D12854: LitI4 0
  loc_D12859: LitI4 -1
  loc_D1285E: LitI4 1
  loc_D12863: LitStr "."
  loc_D12866: LitStr ","
  loc_D12869: FLdRfVar var_1DC
  loc_D1286C: CStrVarVal var_148
  loc_D12870: ImpAdCallI2 Replace(, , , , , )
  loc_D12875: FStStrNoPop var_14C
  loc_D12878: ConcatStr
  loc_D12879: FStStrNoPop var_150
  loc_D1287C: LitStr ", TotaLade = ImpoLade - DecaLade "
  loc_D1287F: ConcatStr
  loc_D12880: FStStrNoPop var_154
  loc_D12883: LitStr " WHERE PeriLiqu = "
  loc_D12886: ConcatStr
  loc_D12887: CVarStr var_20C
  loc_D1288A: FLdRfVar var_1EC
  loc_D1288D: FLdRfVar var_224
  loc_D12890: LitVarStr var_1FC, "PeriLiqu"
  loc_D12895: PopAdLdVar
  loc_D12896: FLdRfVar var_210
  loc_D12899: FLdPr Me
  loc_D1289C: MemLdPr global_60
  loc_D1289F:  = Me.Fields
  loc_D128A4: FLdPr var_210
  loc_D128A7: from_stack_2 = Me.Item(from_stack_1)
  loc_D128AC: FLdPr var_224
  loc_D128AF:  = Me.Value
  loc_D128B4: FLdRfVar var_1EC
  loc_D128B7: ConcatVar var_234
  loc_D128BB: LitVarStr var_220, " AND Bimeliqu = "
  loc_D128C0: ConcatVar var_244
  loc_D128C4: FLdRfVar var_264
  loc_D128C7: FLdRfVar var_27C
  loc_D128CA: LitVarStr var_254, "BimeLiqu"
  loc_D128CF: PopAdLdVar
  loc_D128D0: FLdRfVar var_268
  loc_D128D3: FLdPr Me
  loc_D128D6: MemLdPr global_60
  loc_D128D9:  = Me.Fields
  loc_D128DE: FLdPr var_268
  loc_D128E1: from_stack_2 = Me.Item(from_stack_1)
  loc_D128E6: FLdPr var_27C
  loc_D128E9:  = Me.Value
  loc_D128EE: FLdRfVar var_264
  loc_D128F1: ConcatVar var_28C
  loc_D128F5: LitVarStr var_278, " AND CodiTili = "
  loc_D128FA: ConcatVar var_29C
  loc_D128FE: FLdRfVar var_2BC
  loc_D12901: FLdRfVar var_2D4
  loc_D12904: LitVarStr var_2AC, "CodiTili"
  loc_D12909: PopAdLdVar
  loc_D1290A: FLdRfVar var_2C0
  loc_D1290D: FLdPr Me
  loc_D12910: MemLdPr global_60
  loc_D12913:  = Me.Fields
  loc_D12918: FLdPr var_2C0
  loc_D1291B: from_stack_2 = Me.Item(from_stack_1)
  loc_D12920: FLdPr var_2D4
  loc_D12923:  = Me.Value
  loc_D12928: FLdRfVar var_2BC
  loc_D1292B: ConcatVar var_2E4
  loc_D1292F: LitVarStr var_2D0, " AND NumeLiqu = "
  loc_D12934: ConcatVar var_2F4
  loc_D12938: FLdRfVar var_314
  loc_D1293B: FLdRfVar var_32C
  loc_D1293E: LitVarStr var_304, "NumeLiqu"
  loc_D12943: PopAdLdVar
  loc_D12944: FLdRfVar var_318
  loc_D12947: FLdPr Me
  loc_D1294A: MemLdPr global_60
  loc_D1294D:  = Me.Fields
  loc_D12952: FLdPr var_318
  loc_D12955: from_stack_2 = Me.Item(from_stack_1)
  loc_D1295A: FLdPr var_32C
  loc_D1295D:  = Me.Value
  loc_D12962: FLdRfVar var_314
  loc_D12965: ConcatVar var_33C
  loc_D12969: LitVarStr var_328, " AND CodiCome = "
  loc_D1296E: ConcatVar var_34C
  loc_D12972: FLdRfVar var_36C
  loc_D12975: FLdRfVar var_3E8
  loc_D12978: LitVarStr var_35C, "CodiCome"
  loc_D1297D: PopAdLdVar
  loc_D1297E: FLdRfVar var_3D4
  loc_D12981: FLdPr Me
  loc_D12984: MemLdPr global_60
  loc_D12987:  = Me.Fields
  loc_D1298C: FLdPr var_3D4
  loc_D1298F: from_stack_2 = Me.Item(from_stack_1)
  loc_D12994: FLdPr var_3E8
  loc_D12997:  = Me.Value
  loc_D1299C: FLdRfVar var_36C
  loc_D1299F: ConcatVar var_38C
  loc_D129A3: LitVarStr var_37C, " AND CodiConc = '"
  loc_D129A8: ConcatVar var_3AC
  loc_D129AC: FLdRfVar var_3CC
  loc_D129AF: FLdRfVar var_440
  loc_D129B2: LitVarStr var_39C, "CodiConc"
  loc_D129B7: PopAdLdVar
  loc_D129B8: FLdRfVar var_42C
  loc_D129BB: FLdPr Me
  loc_D129BE: MemLdPr global_60
  loc_D129C1:  = Me.Fields
  loc_D129C6: FLdPr var_42C
  loc_D129C9: from_stack_2 = Me.Item(from_stack_1)
  loc_D129CE: FLdPr var_440
  loc_D129D1:  = Me.Value
  loc_D129D6: FLdRfVar var_3CC
  loc_D129D9: ConcatVar var_3F8
  loc_D129DD: LitVarStr var_3BC, "'"
  loc_D129E2: ConcatVar var_408
  loc_D129E6: LitVarStr var_3E4, " AND TipoVenc = "
  loc_D129EB: ConcatVar var_428
  loc_D129EF: FLdRfVar var_450
  loc_D129F2: FLdRfVar var_498
  loc_D129F5: LitVarStr var_418, "TipoVenc"
  loc_D129FA: PopAdLdVar
  loc_D129FB: FLdRfVar var_484
  loc_D129FE: FLdPr Me
  loc_D12A01: MemLdPr global_60
  loc_D12A04:  = Me.Fields
  loc_D12A09: FLdPr var_484
  loc_D12A0C: from_stack_2 = Me.Item(from_stack_1)
  loc_D12A11: FLdPr var_498
  loc_D12A14:  = Me.Value
  loc_D12A19: FLdRfVar var_450
  loc_D12A1C: ConcatVar var_460
  loc_D12A20: LitVarStr var_43C, " AND CodiRamo = "
  loc_D12A25: ConcatVar var_480
  loc_D12A29: FLdRfVar var_4A8
  loc_D12A2C: FLdRfVar var_4F0
  loc_D12A2F: LitVarStr var_470, "CodiRamo"
  loc_D12A34: PopAdLdVar
  loc_D12A35: FLdRfVar var_4DC
  loc_D12A38: FLdPr Me
  loc_D12A3B: MemLdPr global_60
  loc_D12A3E:  = Me.Fields
  loc_D12A43: FLdPr var_4DC
  loc_D12A46: from_stack_2 = Me.Item(from_stack_1)
  loc_D12A4B: FLdPr var_4F0
  loc_D12A4E:  = Me.Value
  loc_D12A53: FLdRfVar var_4A8
  loc_D12A56: ConcatVar var_4B8
  loc_D12A5A: LitVarStr var_494, " AND CodiRubr = "
  loc_D12A5F: ConcatVar var_4D8
  loc_D12A63: FLdRfVar var_500
  loc_D12A66: FLdRfVar var_548
  loc_D12A69: LitVarStr var_4C8, "CodiRubr"
  loc_D12A6E: PopAdLdVar
  loc_D12A6F: FLdRfVar var_534
  loc_D12A72: FLdPr Me
  loc_D12A75: MemLdPr global_60
  loc_D12A78:  = Me.Fields
  loc_D12A7D: FLdPr var_534
  loc_D12A80: from_stack_2 = Me.Item(from_stack_1)
  loc_D12A85: FLdPr var_548
  loc_D12A88:  = Me.Value
  loc_D12A8D: FLdRfVar var_500
  loc_D12A90: ConcatVar var_510
  loc_D12A94: LitVarStr var_4EC, " AND PeriOrde = "
  loc_D12A99: ConcatVar var_530
  loc_D12A9D: FLdRfVar var_558
  loc_D12AA0: FLdRfVar var_7D0
  loc_D12AA3: LitVarStr var_520, "PeriOrde"
  loc_D12AA8: PopAdLdVar
  loc_D12AA9: FLdRfVar var_7CC
  loc_D12AAC: FLdPr Me
  loc_D12AAF: MemLdPr global_60
  loc_D12AB2:  = Me.Fields
  loc_D12AB7: FLdPr var_7CC
  loc_D12ABA: from_stack_2 = Me.Item(from_stack_1)
  loc_D12ABF: FLdPr var_7D0
  loc_D12AC2:  = Me.Value
  loc_D12AC7: FLdRfVar var_558
  loc_D12ACA: ConcatVar var_568
  loc_D12ACE: LitVarStr var_544, " AND CodiSubr = "
  loc_D12AD3: ConcatVar var_588
  loc_D12AD7: FLdRfVar var_598
  loc_D12ADA: FLdRfVar var_7D8
  loc_D12ADD: LitVarStr var_578, "CodiSubr"
  loc_D12AE2: PopAdLdVar
  loc_D12AE3: FLdRfVar var_7D4
  loc_D12AE6: FLdPr Me
  loc_D12AE9: MemLdPr global_60
  loc_D12AEC:  = Me.Fields
  loc_D12AF1: FLdPr var_7D4
  loc_D12AF4: from_stack_2 = Me.Item(from_stack_1)
  loc_D12AF9: FLdPr var_7D8
  loc_D12AFC:  = Me.Value
  loc_D12B01: FLdRfVar var_598
  loc_D12B04: ConcatVar var_5A8
  loc_D12B08: LitVarStr var_5B8, " AND NumeLpde = "
  loc_D12B0D: ConcatVar var_5C8
  loc_D12B11: FLdRfVar var_5D8
  loc_D12B14: FLdRfVar var_7E0
  loc_D12B17: LitVarStr var_5F8, "NumeLpde"
  loc_D12B1C: PopAdLdVar
  loc_D12B1D: FLdRfVar var_7DC
  loc_D12B20: FLdPr Me
  loc_D12B23: MemLdPr global_60
  loc_D12B26:  = Me.Fields
  loc_D12B2B: FLdPr var_7DC
  loc_D12B2E: from_stack_2 = Me.Item(from_stack_1)
  loc_D12B33: FLdPr var_7E0
  loc_D12B36:  = Me.Value
  loc_D12B3B: FLdRfVar var_5D8
  loc_D12B3E: ConcatVar var_5E8
  loc_D12B42: CStrVarVal var_158
  loc_D12B46: Call EjecutarRsCls(from_stack_1v)
  loc_D12B4B: FFreeStr var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_D12B58: FFreeAd var_188 = "": var_19C = "": var_210 = "": var_224 = "": var_268 = "": var_27C = "": var_2C0 = "": var_2D4 = "": var_318 = "": var_32C = "": var_3D4 = "": var_3E8 = "": var_42C = "": var_440 = "": var_484 = "": var_498 = "": var_4DC = "": var_4F0 = "": var_534 = "": var_548 = "": var_7CC = "": var_7D0 = "": var_7D4 = "": var_7D8 = "": var_7DC = ""
  loc_D12B8F: FFreeVar var_510 = "": var_530 = "": var_558 = "": var_568 = "": var_588 = "": var_598 = "": var_5A8 = "": var_5C8 = "": var_5D8 = "": var_5E8 = "": var_1AC = "": var_1CC = "": var_1DC = "": var_20C = "": var_1EC = "": var_234 = "": var_244 = "": var_264 = "": var_28C = "": var_29C = "": var_2BC = "": var_2E4 = "": var_2F4 = "": var_314 = "": var_33C = "": var_34C = "": var_36C = "": var_38C = "": var_3AC = "": var_3CC = "": var_3F8 = "": var_408 = "": var_428 = "": var_450 = "": var_460 = "": var_480 = "": var_4A8 = "": var_4B8 = "": var_4D8 = ""
  loc_D12BE2: Branch loc_D130DE
  loc_D12BE5: FLdRfVar var_1AC
  loc_D12BE8: FLdRfVar var_19C
  loc_D12BEB: LitVarStr var_198, "DecaLpde"
  loc_D12BF0: PopAdLdVar
  loc_D12BF1: FLdRfVar var_188
  loc_D12BF4: FLdPr Me
  loc_D12BF7: MemLdPr global_64
  loc_D12BFA:  = Me.Fields
  loc_D12BFF: FLdPr var_188
  loc_D12C02: from_stack_2 = Me.Item(from_stack_1)
  loc_D12C07: FLdPr var_19C
  loc_D12C0A:  = Me.Value
  loc_D12C0F: FLdFPR8 CodiRuta
  loc_D12C12: FLdRfVar var_1AC
  loc_D12C15: FnCDblVar
  loc_D12C17: LtR8
  loc_D12C18: FFreeAd var_188 = ""
  loc_D12C1F: FFree1Var var_1AC = ""
  loc_D12C22: BranchF loc_D130DE
  loc_D12C25: LitStr "SELECT * FROM lipudeta WHERE PeriLiqu = "
  loc_D12C28: FLdI2 PeriLiqu
  loc_D12C2B: CStrUI1
  loc_D12C2D: FStStrNoPop var_148
  loc_D12C30: ConcatStr
  loc_D12C31: FStStrNoPop var_14C
  loc_D12C34: LitStr " AND Bimeliqu = "
  loc_D12C37: ConcatStr
  loc_D12C38: FStStrNoPop var_150
  loc_D12C3B: FLdUI1
  loc_D12C3F: CStrI2
  loc_D12C41: FStStrNoPop var_154
  loc_D12C44: ConcatStr
  loc_D12C45: FStStrNoPop var_158
  loc_D12C48: LitStr " AND CodiTili = "
  loc_D12C4B: ConcatStr
  loc_D12C4C: FStStrNoPop var_15C
  loc_D12C4F: FLdUI1
  loc_D12C53: CStrI2
  loc_D12C55: FStStrNoPop var_160
  loc_D12C58: ConcatStr
  loc_D12C59: FStStrNoPop var_164
  loc_D12C5C: LitStr " AND NumeLiqu = "
  loc_D12C5F: ConcatStr
  loc_D12C60: FStStrNoPop var_168
  loc_D12C63: FLdI2 NumeLiqu
  loc_D12C66: CStrUI1
  loc_D12C68: FStStrNoPop var_16C
  loc_D12C6B: ConcatStr
  loc_D12C6C: FStStrNoPop var_170
  loc_D12C6F: LitStr " AND CodiCome = "
  loc_D12C72: ConcatStr
  loc_D12C73: FStStrNoPop var_174
  loc_D12C76: ILdRf CodiCome
  loc_D12C79: CStrI4
  loc_D12C7B: FStStrNoPop var_178
  loc_D12C7E: ConcatStr
  loc_D12C7F: FStStrNoPop var_17C
  loc_D12C82: LitStr " AND CodiConc = '"
  loc_D12C85: ConcatStr
  loc_D12C86: FStStrNoPop var_68C
  loc_D12C89: ILdRf var_88
  loc_D12C8C: ConcatStr
  loc_D12C8D: FStStrNoPop var_690
  loc_D12C90: LitStr "'"
  loc_D12C93: ConcatStr
  loc_D12C94: FStStrNoPop var_694
  loc_D12C97: LitStr " AND TipoVenc = "
  loc_D12C9A: ConcatStr
  loc_D12C9B: FStStrNoPop var_698
  loc_D12C9E: FLdUI1
  loc_D12CA2: CStrI2
  loc_D12CA4: FStStrNoPop var_69C
  loc_D12CA7: ConcatStr
  loc_D12CA8: FStStrNoPop var_6A0
  loc_D12CAB: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLpde"
  loc_D12CAE: ConcatStr
  loc_D12CAF: FStStrNoPop var_6A4
  loc_D12CB2: Call EjecutarRsCls1(from_stack_1v)
  loc_D12CB7: FFreeStr var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_68C = "": var_690 = "": var_694 = "": var_698 = "": var_69C = "": var_6A0 = ""
  loc_D12CE4: FLdRfVar var_180
  loc_D12CE7: FLdPr Me
  loc_D12CEA: MemLdPr global_60
  loc_D12CED:  = Me.RecordCount
  loc_D12CF2: ILdRf var_180
  loc_D12CF5: LitI4 0
  loc_D12CFA: GtI4
  loc_D12CFB: BranchF loc_D130DE
  loc_D12CFE: FLdPr Me
  loc_D12D01: MemLdPr global_60
  loc_D12D04: Me.MoveFirst
  loc_D12D09: FLdRfVar var_1AC
  loc_D12D0C: FLdRfVar var_19C
  loc_D12D0F: LitVarStr var_198, "DecaLpde"
  loc_D12D14: PopAdLdVar
  loc_D12D15: FLdRfVar var_188
  loc_D12D18: FLdPr Me
  loc_D12D1B: MemLdPr global_64
  loc_D12D1E:  = Me.Fields
  loc_D12D23: FLdPr var_188
  loc_D12D26: from_stack_2 = Me.Item(from_stack_1)
  loc_D12D2B: FLdPr var_19C
  loc_D12D2E:  = Me.Value
  loc_D12D33: LitI4 2
  loc_D12D38: FLdRfVar var_1AC
  loc_D12D3B: FnCDblVar
  loc_D12D3D: FLdFPR8 CodiRuta
  loc_D12D40: SubR4
  loc_D12D41: CVarR8
  loc_D12D45: FLdRfVar var_1DC
  loc_D12D48: ImpAdCallFPR4  = Round(, )
  loc_D12D4D: LitStr " UPDATE lipudeta SET DecaLpde = DecaLpde - "
  loc_D12D50: LitI4 0
  loc_D12D55: LitI4 -1
  loc_D12D5A: LitI4 1
  loc_D12D5F: LitStr "."
  loc_D12D62: LitStr ","
  loc_D12D65: FLdRfVar var_1DC
  loc_D12D68: CStrVarVal var_148
  loc_D12D6C: ImpAdCallI2 Replace(, , , , , )
  loc_D12D71: FStStrNoPop var_14C
  loc_D12D74: ConcatStr
  loc_D12D75: FStStrNoPop var_150
  loc_D12D78: LitStr ", TotaLpde = ImpoLpde - DecaLpde "
  loc_D12D7B: ConcatStr
  loc_D12D7C: FStStrNoPop var_154
  loc_D12D7F: LitStr " WHERE PeriLiqu = "
  loc_D12D82: ConcatStr
  loc_D12D83: CVarStr var_20C
  loc_D12D86: FLdRfVar var_1EC
  loc_D12D89: FLdRfVar var_224
  loc_D12D8C: LitVarStr var_1FC, "PeriLiqu"
  loc_D12D91: PopAdLdVar
  loc_D12D92: FLdRfVar var_210
  loc_D12D95: FLdPr Me
  loc_D12D98: MemLdPr global_60
  loc_D12D9B:  = Me.Fields
  loc_D12DA0: FLdPr var_210
  loc_D12DA3: from_stack_2 = Me.Item(from_stack_1)
  loc_D12DA8: FLdPr var_224
  loc_D12DAB:  = Me.Value
  loc_D12DB0: FLdRfVar var_1EC
  loc_D12DB3: ConcatVar var_234
  loc_D12DB7: LitVarStr var_220, " AND Bimeliqu = "
  loc_D12DBC: ConcatVar var_244
  loc_D12DC0: FLdRfVar var_264
  loc_D12DC3: FLdRfVar var_27C
  loc_D12DC6: LitVarStr var_254, "BimeLiqu"
  loc_D12DCB: PopAdLdVar
  loc_D12DCC: FLdRfVar var_268
  loc_D12DCF: FLdPr Me
  loc_D12DD2: MemLdPr global_60
  loc_D12DD5:  = Me.Fields
  loc_D12DDA: FLdPr var_268
  loc_D12DDD: from_stack_2 = Me.Item(from_stack_1)
  loc_D12DE2: FLdPr var_27C
  loc_D12DE5:  = Me.Value
  loc_D12DEA: FLdRfVar var_264
  loc_D12DED: ConcatVar var_28C
  loc_D12DF1: LitVarStr var_278, " AND CodiTili = "
  loc_D12DF6: ConcatVar var_29C
  loc_D12DFA: FLdRfVar var_2BC
  loc_D12DFD: FLdRfVar var_2D4
  loc_D12E00: LitVarStr var_2AC, "CodiTili"
  loc_D12E05: PopAdLdVar
  loc_D12E06: FLdRfVar var_2C0
  loc_D12E09: FLdPr Me
  loc_D12E0C: MemLdPr global_60
  loc_D12E0F:  = Me.Fields
  loc_D12E14: FLdPr var_2C0
  loc_D12E17: from_stack_2 = Me.Item(from_stack_1)
  loc_D12E1C: FLdPr var_2D4
  loc_D12E1F:  = Me.Value
  loc_D12E24: FLdRfVar var_2BC
  loc_D12E27: ConcatVar var_2E4
  loc_D12E2B: LitVarStr var_2D0, " AND NumeLiqu = "
  loc_D12E30: ConcatVar var_2F4
  loc_D12E34: FLdRfVar var_314
  loc_D12E37: FLdRfVar var_32C
  loc_D12E3A: LitVarStr var_304, "NumeLiqu"
  loc_D12E3F: PopAdLdVar
  loc_D12E40: FLdRfVar var_318
  loc_D12E43: FLdPr Me
  loc_D12E46: MemLdPr global_60
  loc_D12E49:  = Me.Fields
  loc_D12E4E: FLdPr var_318
  loc_D12E51: from_stack_2 = Me.Item(from_stack_1)
  loc_D12E56: FLdPr var_32C
  loc_D12E59:  = Me.Value
  loc_D12E5E: FLdRfVar var_314
  loc_D12E61: ConcatVar var_33C
  loc_D12E65: LitVarStr var_328, " AND CodiCome = "
  loc_D12E6A: ConcatVar var_34C
  loc_D12E6E: FLdRfVar var_36C
  loc_D12E71: FLdRfVar var_3E8
  loc_D12E74: LitVarStr var_35C, "CodiCome"
  loc_D12E79: PopAdLdVar
  loc_D12E7A: FLdRfVar var_3D4
  loc_D12E7D: FLdPr Me
  loc_D12E80: MemLdPr global_60
  loc_D12E83:  = Me.Fields
  loc_D12E88: FLdPr var_3D4
  loc_D12E8B: from_stack_2 = Me.Item(from_stack_1)
  loc_D12E90: FLdPr var_3E8
  loc_D12E93:  = Me.Value
  loc_D12E98: FLdRfVar var_36C
  loc_D12E9B: ConcatVar var_38C
  loc_D12E9F: LitVarStr var_37C, " AND CodiConc = '"
  loc_D12EA4: ConcatVar var_3AC
  loc_D12EA8: FLdRfVar var_3CC
  loc_D12EAB: FLdRfVar var_440
  loc_D12EAE: LitVarStr var_39C, "CodiConc"
  loc_D12EB3: PopAdLdVar
  loc_D12EB4: FLdRfVar var_42C
  loc_D12EB7: FLdPr Me
  loc_D12EBA: MemLdPr global_60
  loc_D12EBD:  = Me.Fields
  loc_D12EC2: FLdPr var_42C
  loc_D12EC5: from_stack_2 = Me.Item(from_stack_1)
  loc_D12ECA: FLdPr var_440
  loc_D12ECD:  = Me.Value
  loc_D12ED2: FLdRfVar var_3CC
  loc_D12ED5: ConcatVar var_3F8
  loc_D12ED9: LitVarStr var_3BC, "'"
  loc_D12EDE: ConcatVar var_408
  loc_D12EE2: LitVarStr var_3E4, " AND TipoVenc = "
  loc_D12EE7: ConcatVar var_428
  loc_D12EEB: FLdRfVar var_450
  loc_D12EEE: FLdRfVar var_498
  loc_D12EF1: LitVarStr var_418, "TipoVenc"
  loc_D12EF6: PopAdLdVar
  loc_D12EF7: FLdRfVar var_484
  loc_D12EFA: FLdPr Me
  loc_D12EFD: MemLdPr global_60
  loc_D12F00:  = Me.Fields
  loc_D12F05: FLdPr var_484
  loc_D12F08: from_stack_2 = Me.Item(from_stack_1)
  loc_D12F0D: FLdPr var_498
  loc_D12F10:  = Me.Value
  loc_D12F15: FLdRfVar var_450
  loc_D12F18: ConcatVar var_460
  loc_D12F1C: LitVarStr var_43C, " AND CodiRamo = "
  loc_D12F21: ConcatVar var_480
  loc_D12F25: FLdRfVar var_4A8
  loc_D12F28: FLdRfVar var_4F0
  loc_D12F2B: LitVarStr var_470, "CodiRamo"
  loc_D12F30: PopAdLdVar
  loc_D12F31: FLdRfVar var_4DC
  loc_D12F34: FLdPr Me
  loc_D12F37: MemLdPr global_60
  loc_D12F3A:  = Me.Fields
  loc_D12F3F: FLdPr var_4DC
  loc_D12F42: from_stack_2 = Me.Item(from_stack_1)
  loc_D12F47: FLdPr var_4F0
  loc_D12F4A:  = Me.Value
  loc_D12F4F: FLdRfVar var_4A8
  loc_D12F52: ConcatVar var_4B8
  loc_D12F56: LitVarStr var_494, " AND CodiRubr = "
  loc_D12F5B: ConcatVar var_4D8
  loc_D12F5F: FLdRfVar var_500
  loc_D12F62: FLdRfVar var_548
  loc_D12F65: LitVarStr var_4C8, "CodiRubr"
  loc_D12F6A: PopAdLdVar
  loc_D12F6B: FLdRfVar var_534
  loc_D12F6E: FLdPr Me
  loc_D12F71: MemLdPr global_60
  loc_D12F74:  = Me.Fields
  loc_D12F79: FLdPr var_534
  loc_D12F7C: from_stack_2 = Me.Item(from_stack_1)
  loc_D12F81: FLdPr var_548
  loc_D12F84:  = Me.Value
  loc_D12F89: FLdRfVar var_500
  loc_D12F8C: ConcatVar var_510
  loc_D12F90: LitVarStr var_4EC, " AND PeriOrde = "
  loc_D12F95: ConcatVar var_530
  loc_D12F99: FLdRfVar var_558
  loc_D12F9C: FLdRfVar var_7D0
  loc_D12F9F: LitVarStr var_520, "PeriOrde"
  loc_D12FA4: PopAdLdVar
  loc_D12FA5: FLdRfVar var_7CC
  loc_D12FA8: FLdPr Me
  loc_D12FAB: MemLdPr global_60
  loc_D12FAE:  = Me.Fields
  loc_D12FB3: FLdPr var_7CC
  loc_D12FB6: from_stack_2 = Me.Item(from_stack_1)
  loc_D12FBB: FLdPr var_7D0
  loc_D12FBE:  = Me.Value
  loc_D12FC3: FLdRfVar var_558
  loc_D12FC6: ConcatVar var_568
  loc_D12FCA: LitVarStr var_544, " AND CodiSubr = "
  loc_D12FCF: ConcatVar var_588
  loc_D12FD3: FLdRfVar var_598
  loc_D12FD6: FLdRfVar var_7D8
  loc_D12FD9: LitVarStr var_578, "CodiSubr"
  loc_D12FDE: PopAdLdVar
  loc_D12FDF: FLdRfVar var_7D4
  loc_D12FE2: FLdPr Me
  loc_D12FE5: MemLdPr global_60
  loc_D12FE8:  = Me.Fields
  loc_D12FED: FLdPr var_7D4
  loc_D12FF0: from_stack_2 = Me.Item(from_stack_1)
  loc_D12FF5: FLdPr var_7D8
  loc_D12FF8:  = Me.Value
  loc_D12FFD: FLdRfVar var_598
  loc_D13000: ConcatVar var_5A8
  loc_D13004: LitVarStr var_5B8, " AND NumeLpde = "
  loc_D13009: ConcatVar var_5C8
  loc_D1300D: FLdRfVar var_5D8
  loc_D13010: FLdRfVar var_7E0
  loc_D13013: LitVarStr var_5F8, "NumeLpde"
  loc_D13018: PopAdLdVar
  loc_D13019: FLdRfVar var_7DC
  loc_D1301C: FLdPr Me
  loc_D1301F: MemLdPr global_60
  loc_D13022:  = Me.Fields
  loc_D13027: FLdPr var_7DC
  loc_D1302A: from_stack_2 = Me.Item(from_stack_1)
  loc_D1302F: FLdPr var_7E0
  loc_D13032:  = Me.Value
  loc_D13037: FLdRfVar var_5D8
  loc_D1303A: ConcatVar var_5E8
  loc_D1303E: CStrVarVal var_158
  loc_D13042: Call EjecutarRsCls(from_stack_1v)
  loc_D13047: FFreeStr var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_D13054: FFreeAd var_188 = "": var_19C = "": var_210 = "": var_224 = "": var_268 = "": var_27C = "": var_2C0 = "": var_2D4 = "": var_318 = "": var_32C = "": var_3D4 = "": var_3E8 = "": var_42C = "": var_440 = "": var_484 = "": var_498 = "": var_4DC = "": var_4F0 = "": var_534 = "": var_548 = "": var_7CC = "": var_7D0 = "": var_7D4 = "": var_7D8 = "": var_7DC = ""
  loc_D1308B: FFreeVar var_510 = "": var_530 = "": var_558 = "": var_568 = "": var_588 = "": var_598 = "": var_5A8 = "": var_5C8 = "": var_5D8 = "": var_5E8 = "": var_1AC = "": var_1CC = "": var_1DC = "": var_20C = "": var_1EC = "": var_234 = "": var_244 = "": var_264 = "": var_28C = "": var_29C = "": var_2BC = "": var_2E4 = "": var_2F4 = "": var_314 = "": var_33C = "": var_34C = "": var_36C = "": var_38C = "": var_3AC = "": var_3CC = "": var_3F8 = "": var_408 = "": var_428 = "": var_450 = "": var_460 = "": var_480 = "": var_4A8 = "": var_4B8 = "": var_4D8 = ""
  loc_D130DE: LitStr "COMMIT;"
  loc_D130E1: Call EjecutarRsCls(from_stack_1v)
  loc_D130E6: ExitProcHresult
  loc_D130E7: LitStr "ROLLBACK;"
  loc_D130EA: Call EjecutarRsCls(from_stack_1v)
  loc_D130EF: LitStr "Error cuando se quiere calcular la cuenta: "
  loc_D130F2: ILdRf CodiCome
  loc_D130F5: CStrI4
  loc_D130F7: FStStrNoPop var_148
  loc_D130FA: ConcatStr
  loc_D130FB: FStStrNoPop var_14C
  loc_D130FE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D13103: FFreeStr var_148 = ""
  loc_D1310A: ExitProcHresult
End Sub

Public Sub Requery() '9E51FC
  'Data Table: 488CC8
  loc_9E51D8: LitI4 -1
  loc_9E51DD: FLdPr Me
  loc_9E51E0: MemLdPr RsFrm
  loc_9E51E3: Me.Requery from_stack_1
  loc_9E51E8: LitVarStr var_94, "Primary"
  loc_9E51ED: PopAdLdVar
  loc_9E51EE: FLdPr Me
  loc_9E51F1: LateIdCall
  loc_9E51F9: ExitProcHresult
  loc_9E51FA: FStI2 arg_50FC
End Sub

Public Sub RedefineRS(sSelect) 'A6030C
  'Data Table: 488CC8
  loc_A602A8: ILdRf sSelect
  loc_A602AB: FStStrCopy var_88
  loc_A602AE: LitNothing
  loc_A602B0: CastAd
  loc_A602B3: FStAdFuncNoPop
  loc_A602B6: FLdPr Me
  loc_A602B9: MemStAd
  loc_A602BD: FFree1Ad var_8C
  loc_A602C0: New Recordset
  loc_A602C4: FStAdFuncNoPop
  loc_A602C7: FLdPr Me
  loc_A602CA: MemStAd
  loc_A602CE: FFree1Ad var_8C
  loc_A602D1: LitI4 -1
  loc_A602D6: LitI4 3
  loc_A602DB: LitI4 3
  loc_A602E0: ImpAdLdI4 MemVar_D9301C
  loc_A602E3: CVarAd
  loc_A602E7: PopAdLdVar
  loc_A602E8: ILdRf var_88
  loc_A602EB: CVarStr var_9C
  loc_A602EE: PopAdLdVar
  loc_A602EF: FLdPr Me
  loc_A602F2: MemLdPr RsFrm
  loc_A602F5: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A602FA: LitVarStr var_9C, "Primary"
  loc_A602FF: PopAdLdVar
  loc_A60300: FLdPr Me
  loc_A60303: LateIdCall
  loc_A6030B: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A4F850
  'Data Table: 488CC8
  loc_A4F7FC: ILdRf sSelect
  loc_A4F7FF: FStStrCopy var_88
  loc_A4F802: LitNothing
  loc_A4F804: CastAd
  loc_A4F807: FStAdFuncNoPop
  loc_A4F80A: FLdPr Me
  loc_A4F80D: MemStAd
  loc_A4F811: FFree1Ad var_8C
  loc_A4F814: New Recordset
  loc_A4F818: FStAdFuncNoPop
  loc_A4F81B: FLdPr Me
  loc_A4F81E: MemStAd
  loc_A4F822: FFree1Ad var_8C
  loc_A4F825: LitI4 -1
  loc_A4F82A: LitI4 3
  loc_A4F82F: LitI4 3
  loc_A4F834: ImpAdLdI4 MemVar_D9301C
  loc_A4F837: CVarAd
  loc_A4F83B: PopAdLdVar
  loc_A4F83C: ILdRf var_88
  loc_A4F83F: CVarStr var_9C
  loc_A4F842: PopAdLdVar
  loc_A4F843: FLdPr Me
  loc_A4F846: MemLdPr global_56
  loc_A4F849: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4F84E: ExitProcHresult
End Sub

Public Sub EjecutarRsCls1(sSelect) 'A4F7C4
  'Data Table: 488CC8
  loc_A4F770: ILdRf sSelect
  loc_A4F773: FStStrCopy var_88
  loc_A4F776: LitNothing
  loc_A4F778: CastAd
  loc_A4F77B: FStAdFuncNoPop
  loc_A4F77E: FLdPr Me
  loc_A4F781: MemStAd
  loc_A4F785: FFree1Ad var_8C
  loc_A4F788: New Recordset
  loc_A4F78C: FStAdFuncNoPop
  loc_A4F78F: FLdPr Me
  loc_A4F792: MemStAd
  loc_A4F796: FFree1Ad var_8C
  loc_A4F799: LitI4 -1
  loc_A4F79E: LitI4 3
  loc_A4F7A3: LitI4 3
  loc_A4F7A8: ImpAdLdI4 MemVar_D9301C
  loc_A4F7AB: CVarAd
  loc_A4F7AF: PopAdLdVar
  loc_A4F7B0: ILdRf var_88
  loc_A4F7B3: CVarStr var_9C
  loc_A4F7B6: PopAdLdVar
  loc_A4F7B7: FLdPr Me
  loc_A4F7BA: MemLdPr global_60
  loc_A4F7BD: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4F7C2: ExitProcHresult
End Sub

Public Sub EjecutarRsCls2(sSelect) 'A4F738
  'Data Table: 488CC8
  loc_A4F6E4: ILdRf sSelect
  loc_A4F6E7: FStStrCopy var_88
  loc_A4F6EA: LitNothing
  loc_A4F6EC: CastAd
  loc_A4F6EF: FStAdFuncNoPop
  loc_A4F6F2: FLdPr Me
  loc_A4F6F5: MemStAd
  loc_A4F6F9: FFree1Ad var_8C
  loc_A4F6FC: New Recordset
  loc_A4F700: FStAdFuncNoPop
  loc_A4F703: FLdPr Me
  loc_A4F706: MemStAd
  loc_A4F70A: FFree1Ad var_8C
  loc_A4F70D: LitI4 -1
  loc_A4F712: LitI4 3
  loc_A4F717: LitI4 3
  loc_A4F71C: ImpAdLdI4 MemVar_D9301C
  loc_A4F71F: CVarAd
  loc_A4F723: PopAdLdVar
  loc_A4F724: ILdRf var_88
  loc_A4F727: CVarStr var_9C
  loc_A4F72A: PopAdLdVar
  loc_A4F72B: FLdPr Me
  loc_A4F72E: MemLdPr global_64
  loc_A4F731: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4F736: ExitProcHresult
End Sub

Public Sub EjecutarRsCls3(sSelect) 'A4F620
  'Data Table: 488CC8
  loc_A4F5CC: ILdRf sSelect
  loc_A4F5CF: FStStrCopy var_88
  loc_A4F5D2: LitNothing
  loc_A4F5D4: CastAd
  loc_A4F5D7: FStAdFuncNoPop
  loc_A4F5DA: FLdPr Me
  loc_A4F5DD: MemStAd
  loc_A4F5E1: FFree1Ad var_8C
  loc_A4F5E4: New Recordset
  loc_A4F5E8: FStAdFuncNoPop
  loc_A4F5EB: FLdPr Me
  loc_A4F5EE: MemStAd
  loc_A4F5F2: FFree1Ad var_8C
  loc_A4F5F5: LitI4 -1
  loc_A4F5FA: LitI4 3
  loc_A4F5FF: LitI4 3
  loc_A4F604: ImpAdLdI4 MemVar_D9301C
  loc_A4F607: CVarAd
  loc_A4F60B: PopAdLdVar
  loc_A4F60C: ILdRf var_88
  loc_A4F60F: CVarStr var_9C
  loc_A4F612: PopAdLdVar
  loc_A4F613: FLdPr Me
  loc_A4F616: MemLdPr global_68
  loc_A4F619: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4F61E: ExitProcHresult
End Sub

Public Sub EjecutarRsCls4(sSelect) 'A4F508
  'Data Table: 488CC8
  loc_A4F4B4: ILdRf sSelect
  loc_A4F4B7: FStStrCopy var_88
  loc_A4F4BA: LitNothing
  loc_A4F4BC: CastAd
  loc_A4F4BF: FStAdFuncNoPop
  loc_A4F4C2: FLdPr Me
  loc_A4F4C5: MemStAd
  loc_A4F4C9: FFree1Ad var_8C
  loc_A4F4CC: New Recordset
  loc_A4F4D0: FStAdFuncNoPop
  loc_A4F4D3: FLdPr Me
  loc_A4F4D6: MemStAd
  loc_A4F4DA: FFree1Ad var_8C
  loc_A4F4DD: LitI4 -1
  loc_A4F4E2: LitI4 3
  loc_A4F4E7: LitI4 3
  loc_A4F4EC: ImpAdLdI4 MemVar_D9301C
  loc_A4F4EF: CVarAd
  loc_A4F4F3: PopAdLdVar
  loc_A4F4F4: ILdRf var_88
  loc_A4F4F7: CVarStr var_9C
  loc_A4F4FA: PopAdLdVar
  loc_A4F4FB: FLdPr Me
  loc_A4F4FE: MemLdPr global_72
  loc_A4F501: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4F506: ExitProcHresult
  loc_A4F507: AddCy
End Sub

Public Sub EjecutarRsCls5(sSelect) 'A4F364
  'Data Table: 488CC8
  loc_A4F310: ILdRf sSelect
  loc_A4F313: FStStrCopy var_88
  loc_A4F316: LitNothing
  loc_A4F318: CastAd
  loc_A4F31B: FStAdFuncNoPop
  loc_A4F31E: FLdPr Me
  loc_A4F321: MemStAd
  loc_A4F325: FFree1Ad var_8C
  loc_A4F328: New Recordset
  loc_A4F32C: FStAdFuncNoPop
  loc_A4F32F: FLdPr Me
  loc_A4F332: MemStAd
  loc_A4F336: FFree1Ad var_8C
  loc_A4F339: LitI4 -1
  loc_A4F33E: LitI4 3
  loc_A4F343: LitI4 3
  loc_A4F348: ImpAdLdI4 MemVar_D9301C
  loc_A4F34B: CVarAd
  loc_A4F34F: PopAdLdVar
  loc_A4F350: ILdRf var_88
  loc_A4F353: CVarStr var_9C
  loc_A4F356: PopAdLdVar
  loc_A4F357: FLdPr Me
  loc_A4F35A: MemLdPr global_76
  loc_A4F35D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4F362: ExitProcHresult
  loc_A4F363: UMiI4
End Sub

Public Property Get DataSource() '9EFDB8
  'Data Table: 488CC8
  loc_9EFD94: ZeroRetVal
  loc_9EFD96: FLdRfVar var_8C
  loc_9EFD99: FLdPr Me
  loc_9EFD9C: MemLdPr RsFrm
  loc_9EFD9F:  = Me.DataSource
  loc_9EFDA4: ILdRf var_8C
  loc_9EFDA7: CastAd
  loc_9EFDAA: FStAdFunc var_88
  loc_9EFDAD: FFree1Ad var_8C
  loc_9EFDB0: ExitProcCbHresult
End Sub

Public Property Get PeriLiqu() 'A2B124
  'Data Table: 488CC8
  loc_A2B0E0: FLdRfVar var_B0
  loc_A2B0E3: FLdRfVar var_A0
  loc_A2B0E6: LitVarStr var_9C, "PeriLiqu"
  loc_A2B0EB: PopAdLdVar
  loc_A2B0EC: FLdRfVar var_8C
  loc_A2B0EF: FLdPr Me
  loc_A2B0F2: MemLdPr RsFrm
  loc_A2B0F5:  = Me.Fields
  loc_A2B0FA: FLdPr var_8C
  loc_A2B0FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B102: FLdPr var_A0
  loc_A2B105:  = Me.Value
  loc_A2B10A: FLdRfVar var_B0
  loc_A2B10D: CI2Var
  loc_A2B10E: FStI2 var_86
  loc_A2B111: FFreeAd var_8C = ""
  loc_A2B118: FFree1Var var_B0 = ""
  loc_A2B11B: ExitProcCbHresult
  loc_A2B121: ConcatVar arg_5054
End Sub

Public Property Get BimeLiqu() 'A2B024
  'Data Table: 488CC8
  loc_A2AFE0: FLdRfVar var_B0
  loc_A2AFE3: FLdRfVar var_A0
  loc_A2AFE6: LitVarStr var_9C, "BimeLiqu"
  loc_A2AFEB: PopAdLdVar
  loc_A2AFEC: FLdRfVar var_8C
  loc_A2AFEF: FLdPr Me
  loc_A2AFF2: MemLdPr RsFrm
  loc_A2AFF5:  = Me.Fields
  loc_A2AFFA: FLdPr var_8C
  loc_A2AFFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B002: FLdPr var_A0
  loc_A2B005:  = Me.Value
  loc_A2B00A: FLdRfVar var_B0
  loc_A2B00D: CUI1Var
  loc_A2B00F: FStUI1 var_86
  loc_A2B013: FFreeAd var_8C = ""
  loc_A2B01A: FFree1Var var_B0 = ""
  loc_A2B01D: ExitProcCbHresult
End Sub

Public Property Get CodiTili() 'A2AF24
  'Data Table: 488CC8
  loc_A2AEE0: FLdRfVar var_B0
  loc_A2AEE3: FLdRfVar var_A0
  loc_A2AEE6: LitVarStr var_9C, "CodiTili"
  loc_A2AEEB: PopAdLdVar
  loc_A2AEEC: FLdRfVar var_8C
  loc_A2AEEF: FLdPr Me
  loc_A2AEF2: MemLdPr RsFrm
  loc_A2AEF5:  = Me.Fields
  loc_A2AEFA: FLdPr var_8C
  loc_A2AEFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AF02: FLdPr var_A0
  loc_A2AF05:  = Me.Value
  loc_A2AF0A: FLdRfVar var_B0
  loc_A2AF0D: CUI1Var
  loc_A2AF0F: FStUI1 var_86
  loc_A2AF13: FFreeAd var_8C = ""
  loc_A2AF1A: FFree1Var var_B0 = ""
  loc_A2AF1D: ExitProcCbHresult
End Sub

Public Property Get NumeLiqu() 'A2AEA4
  'Data Table: 488CC8
  loc_A2AE60: FLdRfVar var_B0
  loc_A2AE63: FLdRfVar var_A0
  loc_A2AE66: LitVarStr var_9C, "NumeLiqu"
  loc_A2AE6B: PopAdLdVar
  loc_A2AE6C: FLdRfVar var_8C
  loc_A2AE6F: FLdPr Me
  loc_A2AE72: MemLdPr RsFrm
  loc_A2AE75:  = Me.Fields
  loc_A2AE7A: FLdPr var_8C
  loc_A2AE7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AE82: FLdPr var_A0
  loc_A2AE85:  = Me.Value
  loc_A2AE8A: FLdRfVar var_B0
  loc_A2AE8D: CI2Var
  loc_A2AE8E: FStI2 var_86
  loc_A2AE91: FFreeAd var_8C = ""
  loc_A2AE98: FFree1Var var_B0 = ""
  loc_A2AE9B: ExitProcCbHresult
End Sub

Public Property Get CodiCome() 'A2AE24
  'Data Table: 488CC8
  loc_A2ADE0: FLdRfVar var_B0
  loc_A2ADE3: FLdRfVar var_A0
  loc_A2ADE6: LitVarStr var_9C, "CodiCome"
  loc_A2ADEB: PopAdLdVar
  loc_A2ADEC: FLdRfVar var_8C
  loc_A2ADEF: FLdPr Me
  loc_A2ADF2: MemLdPr RsFrm
  loc_A2ADF5:  = Me.Fields
  loc_A2ADFA: FLdPr var_8C
  loc_A2ADFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AE02: FLdPr var_A0
  loc_A2AE05:  = Me.Value
  loc_A2AE0A: FLdRfVar var_B0
  loc_A2AE0D: CI4Var
  loc_A2AE0F: FStR4 var_88
  loc_A2AE12: FFreeAd var_8C = ""
  loc_A2AE19: FFree1Var var_B0 = ""
  loc_A2AE1C: ExitProcCbHresult
End Sub

Public Property Get CodiConc() 'A3A45C
  'Data Table: 488CC8
  loc_A3A418: ZeroRetVal
  loc_A3A41A: FLdRfVar var_B0
  loc_A3A41D: FLdRfVar var_A0
  loc_A3A420: LitVarStr var_9C, "CodiConc"
  loc_A3A425: PopAdLdVar
  loc_A3A426: FLdRfVar var_8C
  loc_A3A429: FLdPr Me
  loc_A3A42C: MemLdPr RsFrm
  loc_A3A42F:  = Me.Fields
  loc_A3A434: FLdPr var_8C
  loc_A3A437: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A43C: FLdPr var_A0
  loc_A3A43F:  = Me.Value
  loc_A3A444: FLdRfVar var_B0
  loc_A3A447: CStrVarTmp
  loc_A3A448: FStStr var_88
  loc_A3A44B: FFreeAd var_8C = ""
  loc_A3A452: FFree1Var var_B0 = ""
  loc_A3A455: ExitProcCbHresult
End Sub

Public Property Get TipoVenc() 'A2ADA4
  'Data Table: 488CC8
  loc_A2AD60: FLdRfVar var_B0
  loc_A2AD63: FLdRfVar var_A0
  loc_A2AD66: LitVarStr var_9C, "TipoVenc"
  loc_A2AD6B: PopAdLdVar
  loc_A2AD6C: FLdRfVar var_8C
  loc_A2AD6F: FLdPr Me
  loc_A2AD72: MemLdPr RsFrm
  loc_A2AD75:  = Me.Fields
  loc_A2AD7A: FLdPr var_8C
  loc_A2AD7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AD82: FLdPr var_A0
  loc_A2AD85:  = Me.Value
  loc_A2AD8A: FLdRfVar var_B0
  loc_A2AD8D: CUI1Var
  loc_A2AD8F: FStUI1 var_86
  loc_A2AD93: FFreeAd var_8C = ""
  loc_A2AD9A: FFree1Var var_B0 = ""
  loc_A2AD9D: ExitProcCbHresult
End Sub

Public Property Get OrdeLipu() 'A2AD24
  'Data Table: 488CC8
  loc_A2ACE0: FLdRfVar var_B0
  loc_A2ACE3: FLdRfVar var_A0
  loc_A2ACE6: LitVarStr var_9C, "OrdeLipu"
  loc_A2ACEB: PopAdLdVar
  loc_A2ACEC: FLdRfVar var_8C
  loc_A2ACEF: FLdPr Me
  loc_A2ACF2: MemLdPr RsFrm
  loc_A2ACF5:  = Me.Fields
  loc_A2ACFA: FLdPr var_8C
  loc_A2ACFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AD02: FLdPr var_A0
  loc_A2AD05:  = Me.Value
  loc_A2AD0A: FLdRfVar var_B0
  loc_A2AD0D: CI4Var
  loc_A2AD0F: FStR4 var_88
  loc_A2AD12: FFreeAd var_8C = ""
  loc_A2AD19: FFree1Var var_B0 = ""
  loc_A2AD1C: ExitProcCbHresult
End Sub

Public Property Get ActuLipu() 'A3A66C
  'Data Table: 488CC8
  loc_A3A628: ZeroRetVal
  loc_A3A62A: FLdRfVar var_B0
  loc_A3A62D: FLdRfVar var_A0
  loc_A3A630: LitVarStr var_9C, "ActuLipu"
  loc_A3A635: PopAdLdVar
  loc_A3A636: FLdRfVar var_8C
  loc_A3A639: FLdPr Me
  loc_A3A63C: MemLdPr RsFrm
  loc_A3A63F:  = Me.Fields
  loc_A3A644: FLdPr var_8C
  loc_A3A647: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A64C: FLdPr var_A0
  loc_A3A64F:  = Me.Value
  loc_A3A654: FLdRfVar var_B0
  loc_A3A657: CStrVarTmp
  loc_A3A658: FStStr var_88
  loc_A3A65B: FFreeAd var_8C = ""
  loc_A3A662: FFree1Var var_B0 = ""
  loc_A3A665: ExitProcCbHresult
End Sub

Public Property Get TipoLipu() 'A3A7F8
  'Data Table: 488CC8
  loc_A3A7B4: ZeroRetVal
  loc_A3A7B6: FLdRfVar var_B0
  loc_A3A7B9: FLdRfVar var_A0
  loc_A3A7BC: LitVarStr var_9C, "TipoLipu"
  loc_A3A7C1: PopAdLdVar
  loc_A3A7C2: FLdRfVar var_8C
  loc_A3A7C5: FLdPr Me
  loc_A3A7C8: MemLdPr RsFrm
  loc_A3A7CB:  = Me.Fields
  loc_A3A7D0: FLdPr var_8C
  loc_A3A7D3: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A7D8: FLdPr var_A0
  loc_A3A7DB:  = Me.Value
  loc_A3A7E0: FLdRfVar var_B0
  loc_A3A7E3: CStrVarTmp
  loc_A3A7E4: FStStr var_88
  loc_A3A7E7: FFreeAd var_8C = ""
  loc_A3A7EE: FFree1Var var_B0 = ""
  loc_A3A7F1: ExitProcCbHresult
  loc_A3A7F7: CStr2Ansi
End Sub

Public Property Get FealLipu() 'A3A984
  'Data Table: 488CC8
  loc_A3A940: ZeroRetVal
  loc_A3A942: FLdRfVar var_B0
  loc_A3A945: FLdRfVar var_A0
  loc_A3A948: LitVarStr var_9C, "FealLipu"
  loc_A3A94D: PopAdLdVar
  loc_A3A94E: FLdRfVar var_8C
  loc_A3A951: FLdPr Me
  loc_A3A954: MemLdPr RsFrm
  loc_A3A957:  = Me.Fields
  loc_A3A95C: FLdPr var_8C
  loc_A3A95F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A964: FLdPr var_A0
  loc_A3A967:  = Me.Value
  loc_A3A96C: FLdRfVar var_B0
  loc_A3A96F: CStrVarTmp
  loc_A3A970: FStStr var_88
  loc_A3A973: FFreeAd var_8C = ""
  loc_A3A97A: FFree1Var var_B0 = ""
  loc_A3A97D: ExitProcCbHresult
End Sub

Public Property Get FeveLipu() 'A3AA08
  'Data Table: 488CC8
  loc_A3A9C4: ZeroRetVal
  loc_A3A9C6: FLdRfVar var_B0
  loc_A3A9C9: FLdRfVar var_A0
  loc_A3A9CC: LitVarStr var_9C, "FeveLipu"
  loc_A3A9D1: PopAdLdVar
  loc_A3A9D2: FLdRfVar var_8C
  loc_A3A9D5: FLdPr Me
  loc_A3A9D8: MemLdPr RsFrm
  loc_A3A9DB:  = Me.Fields
  loc_A3A9E0: FLdPr var_8C
  loc_A3A9E3: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A9E8: FLdPr var_A0
  loc_A3A9EB:  = Me.Value
  loc_A3A9F0: FLdRfVar var_B0
  loc_A3A9F3: CStrVarTmp
  loc_A3A9F4: FStStr var_88
  loc_A3A9F7: FFreeAd var_8C = ""
  loc_A3A9FE: FFree1Var var_B0 = ""
  loc_A3AA01: ExitProcCbHresult
End Sub

Public Property Get DeudLipu() 'A2ACA4
  'Data Table: 488CC8
  loc_A2AC60: FLdRfVar var_B4
  loc_A2AC63: FLdRfVar var_A4
  loc_A2AC66: LitVarStr var_A0, "DeudLipu"
  loc_A2AC6B: PopAdLdVar
  loc_A2AC6C: FLdRfVar var_90
  loc_A2AC6F: FLdPr Me
  loc_A2AC72: MemLdPr RsFrm
  loc_A2AC75:  = Me.Fields
  loc_A2AC7A: FLdPr var_90
  loc_A2AC7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AC82: FLdPr var_A4
  loc_A2AC85:  = Me.Value
  loc_A2AC8A: FLdRfVar var_B4
  loc_A2AC8D: CR4Var
  loc_A2AC8E: FStFPR8 var_8C
  loc_A2AC91: FFreeAd var_90 = ""
  loc_A2AC98: FFree1Var var_B4 = ""
  loc_A2AC9B: ExitProcCbHresult
  loc_A2ACA1: FFreeVar var_FFFFFFB0 = ""
End Sub

Public Property Get ImpoLipu() 'A2AC24
  'Data Table: 488CC8
  loc_A2ABE0: FLdRfVar var_B4
  loc_A2ABE3: FLdRfVar var_A4
  loc_A2ABE6: LitVarStr var_A0, "ImpoLipu"
  loc_A2ABEB: PopAdLdVar
  loc_A2ABEC: FLdRfVar var_90
  loc_A2ABEF: FLdPr Me
  loc_A2ABF2: MemLdPr RsFrm
  loc_A2ABF5:  = Me.Fields
  loc_A2ABFA: FLdPr var_90
  loc_A2ABFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AC02: FLdPr var_A4
  loc_A2AC05:  = Me.Value
  loc_A2AC0A: FLdRfVar var_B4
  loc_A2AC0D: CR4Var
  loc_A2AC0E: FStFPR8 var_8C
  loc_A2AC11: FFreeAd var_90 = ""
  loc_A2AC18: FFree1Var var_B4 = ""
  loc_A2AC1B: ExitProcCbHresult
End Sub

Public Property Get CrafLipu() 'A2AB24
  'Data Table: 488CC8
  loc_A2AAE0: FLdRfVar var_B4
  loc_A2AAE3: FLdRfVar var_A4
  loc_A2AAE6: LitVarStr var_A0, "CrafLipu"
  loc_A2AAEB: PopAdLdVar
  loc_A2AAEC: FLdRfVar var_90
  loc_A2AAEF: FLdPr Me
  loc_A2AAF2: MemLdPr RsFrm
  loc_A2AAF5:  = Me.Fields
  loc_A2AAFA: FLdPr var_90
  loc_A2AAFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AB02: FLdPr var_A4
  loc_A2AB05:  = Me.Value
  loc_A2AB0A: FLdRfVar var_B4
  loc_A2AB0D: CR4Var
  loc_A2AB0E: FStFPR8 var_8C
  loc_A2AB11: FFreeAd var_90 = ""
  loc_A2AB18: FFree1Var var_B4 = ""
  loc_A2AB1B: ExitProcCbHresult
  loc_A2AB21: MemStR8 global_11006
End Sub

Public Property Get ExenLipu() 'A2AAA4
  'Data Table: 488CC8
  loc_A2AA60: FLdRfVar var_B4
  loc_A2AA63: FLdRfVar var_A4
  loc_A2AA66: LitVarStr var_A0, "ExenLipu"
  loc_A2AA6B: PopAdLdVar
  loc_A2AA6C: FLdRfVar var_90
  loc_A2AA6F: FLdPr Me
  loc_A2AA72: MemLdPr RsFrm
  loc_A2AA75:  = Me.Fields
  loc_A2AA7A: FLdPr var_90
  loc_A2AA7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AA82: FLdPr var_A4
  loc_A2AA85:  = Me.Value
  loc_A2AA8A: FLdRfVar var_B4
  loc_A2AA8D: CR4Var
  loc_A2AA8E: FStFPR8 var_8C
  loc_A2AA91: FFreeAd var_90 = ""
  loc_A2AA98: FFree1Var var_B4 = ""
  loc_A2AA9B: ExitProcCbHresult
End Sub

Public Property Get DescLipu() 'A2AA24
  'Data Table: 488CC8
  loc_A2A9E0: FLdRfVar var_B4
  loc_A2A9E3: FLdRfVar var_A4
  loc_A2A9E6: LitVarStr var_A0, "DescLipu"
  loc_A2A9EB: PopAdLdVar
  loc_A2A9EC: FLdRfVar var_90
  loc_A2A9EF: FLdPr Me
  loc_A2A9F2: MemLdPr RsFrm
  loc_A2A9F5:  = Me.Fields
  loc_A2A9FA: FLdPr var_90
  loc_A2A9FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AA02: FLdPr var_A4
  loc_A2AA05:  = Me.Value
  loc_A2AA0A: FLdRfVar var_B4
  loc_A2AA0D: CR4Var
  loc_A2AA0E: FStFPR8 var_8C
  loc_A2AA11: FFreeAd var_90 = ""
  loc_A2AA18: FFree1Var var_B4 = ""
  loc_A2AA1B: ExitProcCbHresult
  loc_A2AA21: DOC
End Sub

Public Property Get GastLipu() 'A2A9A4
  'Data Table: 488CC8
  loc_A2A960: FLdRfVar var_B4
  loc_A2A963: FLdRfVar var_A4
  loc_A2A966: LitVarStr var_A0, "GastLipu"
  loc_A2A96B: PopAdLdVar
  loc_A2A96C: FLdRfVar var_90
  loc_A2A96F: FLdPr Me
  loc_A2A972: MemLdPr RsFrm
  loc_A2A975:  = Me.Fields
  loc_A2A97A: FLdPr var_90
  loc_A2A97D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A982: FLdPr var_A4
  loc_A2A985:  = Me.Value
  loc_A2A98A: FLdRfVar var_B4
  loc_A2A98D: CR4Var
  loc_A2A98E: FStFPR8 var_8C
  loc_A2A991: FFreeAd var_90 = ""
  loc_A2A998: FFree1Var var_B4 = ""
  loc_A2A99B: ExitProcCbHresult
  loc_A2A9A1: MemLdPr global_64
End Sub

Public Property Get TotaLipu() 'A2A924
  'Data Table: 488CC8
  loc_A2A8E0: FLdRfVar var_B4
  loc_A2A8E3: FLdRfVar var_A4
  loc_A2A8E6: LitVarStr var_A0, "TotaLipu"
  loc_A2A8EB: PopAdLdVar
  loc_A2A8EC: FLdRfVar var_90
  loc_A2A8EF: FLdPr Me
  loc_A2A8F2: MemLdPr RsFrm
  loc_A2A8F5:  = Me.Fields
  loc_A2A8FA: FLdPr var_90
  loc_A2A8FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A902: FLdPr var_A4
  loc_A2A905:  = Me.Value
  loc_A2A90A: FLdRfVar var_B4
  loc_A2A90D: CR4Var
  loc_A2A90E: FStFPR8 var_8C
  loc_A2A911: FFreeAd var_90 = ""
  loc_A2A918: FFree1Var var_B4 = ""
  loc_A2A91B: ExitProcCbHresult
End Sub

Public Property Get CucuPers() 'A3AA8C
  'Data Table: 488CC8
  loc_A3AA48: ZeroRetVal
  loc_A3AA4A: FLdRfVar var_B0
  loc_A3AA4D: FLdRfVar var_A0
  loc_A3AA50: LitVarStr var_9C, "CucuPers"
  loc_A3AA55: PopAdLdVar
  loc_A3AA56: FLdRfVar var_8C
  loc_A3AA59: FLdPr Me
  loc_A3AA5C: MemLdPr RsFrm
  loc_A3AA5F:  = Me.Fields
  loc_A3AA64: FLdPr var_8C
  loc_A3AA67: from_stack_2 = Me.Item(from_stack_1)
  loc_A3AA6C: FLdPr var_A0
  loc_A3AA6F:  = Me.Value
  loc_A3AA74: FLdRfVar var_B0
  loc_A3AA77: CStrVarTmp
  loc_A3AA78: FStStr var_88
  loc_A3AA7B: FFreeAd var_8C = ""
  loc_A3AA82: FFree1Var var_B0 = ""
  loc_A3AA85: ExitProcCbHresult
  loc_A3AA8B: LitI2_Byte &H50
End Sub

Public Property Get CodiCall() 'A2A824
  'Data Table: 488CC8
  loc_A2A7E0: FLdRfVar var_B0
  loc_A2A7E3: FLdRfVar var_A0
  loc_A2A7E6: LitVarStr var_9C, "CodiCall"
  loc_A2A7EB: PopAdLdVar
  loc_A2A7EC: FLdRfVar var_8C
  loc_A2A7EF: FLdPr Me
  loc_A2A7F2: MemLdPr RsFrm
  loc_A2A7F5:  = Me.Fields
  loc_A2A7FA: FLdPr var_8C
  loc_A2A7FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A802: FLdPr var_A0
  loc_A2A805:  = Me.Value
  loc_A2A80A: FLdRfVar var_B0
  loc_A2A80D: CI2Var
  loc_A2A80E: FStI2 var_86
  loc_A2A811: FFreeAd var_8C = ""
  loc_A2A818: FFree1Var var_B0 = ""
  loc_A2A81B: ExitProcCbHresult
End Sub

Public Property Get NucaLipu() 'A3AB10
  'Data Table: 488CC8
  loc_A3AACC: ZeroRetVal
  loc_A3AACE: FLdRfVar var_B0
  loc_A3AAD1: FLdRfVar var_A0
  loc_A3AAD4: LitVarStr var_9C, "NucaLipu"
  loc_A3AAD9: PopAdLdVar
  loc_A3AADA: FLdRfVar var_8C
  loc_A3AADD: FLdPr Me
  loc_A3AAE0: MemLdPr RsFrm
  loc_A3AAE3:  = Me.Fields
  loc_A3AAE8: FLdPr var_8C
  loc_A3AAEB: from_stack_2 = Me.Item(from_stack_1)
  loc_A3AAF0: FLdPr var_A0
  loc_A3AAF3:  = Me.Value
  loc_A3AAF8: FLdRfVar var_B0
  loc_A3AAFB: CStrVarTmp
  loc_A3AAFC: FStStr var_88
  loc_A3AAFF: FFreeAd var_8C = ""
  loc_A3AB06: FFree1Var var_B0 = ""
  loc_A3AB09: ExitProcCbHresult
End Sub

Public Property Get CodiBarr() 'A2A624
  'Data Table: 488CC8
  loc_A2A5E0: FLdRfVar var_B0
  loc_A2A5E3: FLdRfVar var_A0
  loc_A2A5E6: LitVarStr var_9C, "CodiBarr"
  loc_A2A5EB: PopAdLdVar
  loc_A2A5EC: FLdRfVar var_8C
  loc_A2A5EF: FLdPr Me
  loc_A2A5F2: MemLdPr RsFrm
  loc_A2A5F5:  = Me.Fields
  loc_A2A5FA: FLdPr var_8C
  loc_A2A5FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A602: FLdPr var_A0
  loc_A2A605:  = Me.Value
  loc_A2A60A: FLdRfVar var_B0
  loc_A2A60D: CI2Var
  loc_A2A60E: FStI2 var_86
  loc_A2A611: FFreeAd var_8C = ""
  loc_A2A618: FFree1Var var_B0 = ""
  loc_A2A61B: ExitProcCbHresult
  loc_A2A621: NewIfNullPr UserControl
End Sub

Public Property Get ManzLipu() 'A3AB94
  'Data Table: 488CC8
  loc_A3AB50: ZeroRetVal
  loc_A3AB52: FLdRfVar var_B0
  loc_A3AB55: FLdRfVar var_A0
  loc_A3AB58: LitVarStr var_9C, "ManzLipu"
  loc_A3AB5D: PopAdLdVar
  loc_A3AB5E: FLdRfVar var_8C
  loc_A3AB61: FLdPr Me
  loc_A3AB64: MemLdPr RsFrm
  loc_A3AB67:  = Me.Fields
  loc_A3AB6C: FLdPr var_8C
  loc_A3AB6F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3AB74: FLdPr var_A0
  loc_A3AB77:  = Me.Value
  loc_A3AB7C: FLdRfVar var_B0
  loc_A3AB7F: CStrVarTmp
  loc_A3AB80: FStStr var_88
  loc_A3AB83: FFreeAd var_8C = ""
  loc_A3AB8A: FFree1Var var_B0 = ""
  loc_A3AB8D: ExitProcCbHresult
End Sub

Public Property Get CasaLipu() 'A3AC18
  'Data Table: 488CC8
  loc_A3ABD4: ZeroRetVal
  loc_A3ABD6: FLdRfVar var_B0
  loc_A3ABD9: FLdRfVar var_A0
  loc_A3ABDC: LitVarStr var_9C, "CasaLipu"
  loc_A3ABE1: PopAdLdVar
  loc_A3ABE2: FLdRfVar var_8C
  loc_A3ABE5: FLdPr Me
  loc_A3ABE8: MemLdPr RsFrm
  loc_A3ABEB:  = Me.Fields
  loc_A3ABF0: FLdPr var_8C
  loc_A3ABF3: from_stack_2 = Me.Item(from_stack_1)
  loc_A3ABF8: FLdPr var_A0
  loc_A3ABFB:  = Me.Value
  loc_A3AC00: FLdRfVar var_B0
  loc_A3AC03: CStrVarTmp
  loc_A3AC04: FStStr var_88
  loc_A3AC07: FFreeAd var_8C = ""
  loc_A3AC0E: FFree1Var var_B0 = ""
  loc_A3AC11: ExitProcCbHresult
End Sub

Public Property Get UbicLipu() 'A3AD20
  'Data Table: 488CC8
  loc_A3ACDC: ZeroRetVal
  loc_A3ACDE: FLdRfVar var_B0
  loc_A3ACE1: FLdRfVar var_A0
  loc_A3ACE4: LitVarStr var_9C, "UbicLipu"
  loc_A3ACE9: PopAdLdVar
  loc_A3ACEA: FLdRfVar var_8C
  loc_A3ACED: FLdPr Me
  loc_A3ACF0: MemLdPr RsFrm
  loc_A3ACF3:  = Me.Fields
  loc_A3ACF8: FLdPr var_8C
  loc_A3ACFB: from_stack_2 = Me.Item(from_stack_1)
  loc_A3AD00: FLdPr var_A0
  loc_A3AD03:  = Me.Value
  loc_A3AD08: FLdRfVar var_B0
  loc_A3AD0B: CStrVarTmp
  loc_A3AD0C: FStStr var_88
  loc_A3AD0F: FFreeAd var_8C = ""
  loc_A3AD16: FFree1Var var_B0 = ""
  loc_A3AD19: ExitProcCbHresult
End Sub

Public Property Get CodiLoca() 'A2A2A4
  'Data Table: 488CC8
  loc_A2A260: FLdRfVar var_B0
  loc_A2A263: FLdRfVar var_A0
  loc_A2A266: LitVarStr var_9C, "CodiLoca"
  loc_A2A26B: PopAdLdVar
  loc_A2A26C: FLdRfVar var_8C
  loc_A2A26F: FLdPr Me
  loc_A2A272: MemLdPr RsFrm
  loc_A2A275:  = Me.Fields
  loc_A2A27A: FLdPr var_8C
  loc_A2A27D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A282: FLdPr var_A0
  loc_A2A285:  = Me.Value
  loc_A2A28A: FLdRfVar var_B0
  loc_A2A28D: CI2Var
  loc_A2A28E: FStI2 var_86
  loc_A2A291: FFreeAd var_8C = ""
  loc_A2A298: FFree1Var var_B0 = ""
  loc_A2A29B: ExitProcCbHresult
  loc_A2A2A1: StFixedStr
End Sub

Public Property Get PeriBole() 'A2A124
  'Data Table: 488CC8
  loc_A2A0E0: FLdRfVar var_B0
  loc_A2A0E3: FLdRfVar var_A0
  loc_A2A0E6: LitVarStr var_9C, "PeriBole"
  loc_A2A0EB: PopAdLdVar
  loc_A2A0EC: FLdRfVar var_8C
  loc_A2A0EF: FLdPr Me
  loc_A2A0F2: MemLdPr RsFrm
  loc_A2A0F5:  = Me.Fields
  loc_A2A0FA: FLdPr var_8C
  loc_A2A0FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A102: FLdPr var_A0
  loc_A2A105:  = Me.Value
  loc_A2A10A: FLdRfVar var_B0
  loc_A2A10D: CI2Var
  loc_A2A10E: FStI2 var_86
  loc_A2A111: FFreeAd var_8C = ""
  loc_A2A118: FFree1Var var_B0 = ""
  loc_A2A11B: ExitProcCbHresult
End Sub

Public Property Get NumeBole() 'A2A024
  'Data Table: 488CC8
  loc_A29FE0: FLdRfVar var_B0
  loc_A29FE3: FLdRfVar var_A0
  loc_A29FE6: LitVarStr var_9C, "NumeBole"
  loc_A29FEB: PopAdLdVar
  loc_A29FEC: FLdRfVar var_8C
  loc_A29FEF: FLdPr Me
  loc_A29FF2: MemLdPr RsFrm
  loc_A29FF5:  = Me.Fields
  loc_A29FFA: FLdPr var_8C
  loc_A29FFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A002: FLdPr var_A0
  loc_A2A005:  = Me.Value
  loc_A2A00A: FLdRfVar var_B0
  loc_A2A00D: CI4Var
  loc_A2A00F: FStR4 var_88
  loc_A2A012: FFreeAd var_8C = ""
  loc_A2A019: FFree1Var var_B0 = ""
  loc_A2A01C: ExitProcCbHresult
End Sub

Public Property Get PeriOrde() 'A29EA4
  'Data Table: 488CC8
  loc_A29E60: FLdRfVar var_B0
  loc_A29E63: FLdRfVar var_A0
  loc_A29E66: LitVarStr var_9C, "PeriOrde"
  loc_A29E6B: PopAdLdVar
  loc_A29E6C: FLdRfVar var_8C
  loc_A29E6F: FLdPr Me
  loc_A29E72: MemLdPr RsFrm
  loc_A29E75:  = Me.Fields
  loc_A29E7A: FLdPr var_8C
  loc_A29E7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A29E82: FLdPr var_A0
  loc_A29E85:  = Me.Value
  loc_A29E8A: FLdRfVar var_B0
  loc_A29E8D: CI2Var
  loc_A29E8E: FStI2 var_86
  loc_A29E91: FFreeAd var_8C = ""
  loc_A29E98: FFree1Var var_B0 = ""
  loc_A29E9B: ExitProcCbHresult
End Sub

Public Property Get CodiSubr() 'A1B250
  'Data Table: 488CC8
  loc_A1B218: ZeroRetValVar
  loc_A1B21A: FLdRfVar var_AC
  loc_A1B21D: LitVarStr var_A8, "CodiSubr"
  loc_A1B222: PopAdLdVar
  loc_A1B223: FLdRfVar var_98
  loc_A1B226: FLdPr Me
  loc_A1B229: MemLdPr RsFrm
  loc_A1B22C:  = Me.Fields
  loc_A1B231: FLdPr var_98
  loc_A1B234: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B239: FLdZeroAd var_AC
  loc_A1B23C: CVarAd
  loc_A1B240: FStVar CodiSubr
  loc_A1B244: FFree1Ad var_98
  loc_A1B247: ExitProcCbHresult
End Sub

Public Property Get NumeLcde() 'A29D24
  'Data Table: 488CC8
  loc_A29CE0: FLdRfVar var_B0
  loc_A29CE3: FLdRfVar var_A0
  loc_A29CE6: LitVarStr var_9C, "NumeLcde"
  loc_A29CEB: PopAdLdVar
  loc_A29CEC: FLdRfVar var_8C
  loc_A29CEF: FLdPr Me
  loc_A29CF2: MemLdPr RsFrm
  loc_A29CF5:  = Me.Fields
  loc_A29CFA: FLdPr var_8C
  loc_A29CFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29D02: FLdPr var_A0
  loc_A29D05:  = Me.Value
  loc_A29D0A: FLdRfVar var_B0
  loc_A29D0D: CI2Var
  loc_A29D0E: FStI2 var_86
  loc_A29D11: FFreeAd var_8C = ""
  loc_A29D18: FFree1Var var_B0 = ""
  loc_A29D1B: ExitProcCbHresult
End Sub

Public Property Get ImpoLcde() 'A29BA4
  'Data Table: 488CC8
  loc_A29B60: FLdRfVar var_B4
  loc_A29B63: FLdRfVar var_A4
  loc_A29B66: LitVarStr var_A0, "ImpoLcde"
  loc_A29B6B: PopAdLdVar
  loc_A29B6C: FLdRfVar var_90
  loc_A29B6F: FLdPr Me
  loc_A29B72: MemLdPr RsFrm
  loc_A29B75:  = Me.Fields
  loc_A29B7A: FLdPr var_90
  loc_A29B7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A29B82: FLdPr var_A4
  loc_A29B85:  = Me.Value
  loc_A29B8A: FLdRfVar var_B4
  loc_A29B8D: CR4Var
  loc_A29B8E: FStFPR8 var_8C
  loc_A29B91: FFreeAd var_90 = ""
  loc_A29B98: FFree1Var var_B4 = ""
  loc_A29B9B: ExitProcCbHresult
End Sub

Public Property Get TotaBole() 'A29A24
  'Data Table: 488CC8
  loc_A299E0: FLdRfVar var_B4
  loc_A299E3: FLdRfVar var_A4
  loc_A299E6: LitVarStr var_A0, "TotaBole"
  loc_A299EB: PopAdLdVar
  loc_A299EC: FLdRfVar var_90
  loc_A299EF: FLdPr Me
  loc_A299F2: MemLdPr RsFrm
  loc_A299F5:  = Me.Fields
  loc_A299FA: FLdPr var_90
  loc_A299FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29A02: FLdPr var_A4
  loc_A29A05:  = Me.Value
  loc_A29A0A: FLdRfVar var_B4
  loc_A29A0D: CR4Var
  loc_A29A0E: FStFPR8 var_8C
  loc_A29A11: FFreeAd var_90 = ""
  loc_A29A18: FFree1Var var_B4 = ""
  loc_A29A1B: ExitProcCbHresult
End Sub

Public Property Get DetaPers() 'A176C8
  'Data Table: 488CC8
  loc_A17690: ZeroRetValVar
  loc_A17692: FLdRfVar var_AC
  loc_A17695: LitVarStr var_A8, "DetaPers"
  loc_A1769A: PopAdLdVar
  loc_A1769B: FLdRfVar var_98
  loc_A1769E: FLdPr Me
  loc_A176A1: MemLdPr RsFrm
  loc_A176A4:  = Me.Fields
  loc_A176A9: FLdPr var_98
  loc_A176AC: from_stack_2 = Me.Item(from_stack_1)
  loc_A176B1: FLdZeroAd var_AC
  loc_A176B4: CVarAd
  loc_A176B8: FStVar DetaPers
  loc_A176BC: FFree1Ad var_98
  loc_A176BF: ExitProcCbHresult
End Sub

Public Property Get DetaCall() 'A178A8
  'Data Table: 488CC8
  loc_A17870: ZeroRetValVar
  loc_A17872: FLdRfVar var_AC
  loc_A17875: LitVarStr var_A8, "DetaCall"
  loc_A1787A: PopAdLdVar
  loc_A1787B: FLdRfVar var_98
  loc_A1787E: FLdPr Me
  loc_A17881: MemLdPr RsFrm
  loc_A17884:  = Me.Fields
  loc_A17889: FLdPr var_98
  loc_A1788C: from_stack_2 = Me.Item(from_stack_1)
  loc_A17891: FLdZeroAd var_AC
  loc_A17894: CVarAd
  loc_A17898: FStVar DetaCall
  loc_A1789C: FFree1Ad var_98
  loc_A1789F: ExitProcCbHresult
End Sub

Public Property Get NucaCome() 'A17A88
  'Data Table: 488CC8
  loc_A17A50: ZeroRetValVar
  loc_A17A52: FLdRfVar var_AC
  loc_A17A55: LitVarStr var_A8, "NucaCome"
  loc_A17A5A: PopAdLdVar
  loc_A17A5B: FLdRfVar var_98
  loc_A17A5E: FLdPr Me
  loc_A17A61: MemLdPr RsFrm
  loc_A17A64:  = Me.Fields
  loc_A17A69: FLdPr var_98
  loc_A17A6C: from_stack_2 = Me.Item(from_stack_1)
  loc_A17A71: FLdZeroAd var_AC
  loc_A17A74: CVarAd
  loc_A17A78: FStVar NucaCome
  loc_A17A7C: FFree1Ad var_98
  loc_A17A7F: ExitProcCbHresult
  loc_A17A85: CI2R8
End Sub

Public Property Get DetaConc() 'A17BF0
  'Data Table: 488CC8
  loc_A17BB8: ZeroRetValVar
  loc_A17BBA: FLdRfVar var_AC
  loc_A17BBD: LitVarStr var_A8, "DetaConc"
  loc_A17BC2: PopAdLdVar
  loc_A17BC3: FLdRfVar var_98
  loc_A17BC6: FLdPr Me
  loc_A17BC9: MemLdPr RsFrm
  loc_A17BCC:  = Me.Fields
  loc_A17BD1: FLdPr var_98
  loc_A17BD4: from_stack_2 = Me.Item(from_stack_1)
  loc_A17BD9: FLdZeroAd var_AC
  loc_A17BDC: CVarAd
  loc_A17BE0: FStVar DetaConc
  loc_A17BE4: FFree1Ad var_98
  loc_A17BE7: ExitProcCbHresult
End Sub

Public Property Get CodiRubr() 'A17C68
  'Data Table: 488CC8
  loc_A17C30: ZeroRetValVar
  loc_A17C32: FLdRfVar var_AC
  loc_A17C35: LitVarStr var_A8, "CodiRubr"
  loc_A17C3A: PopAdLdVar
  loc_A17C3B: FLdRfVar var_98
  loc_A17C3E: FLdPr Me
  loc_A17C41: MemLdPr RsFrm
  loc_A17C44:  = Me.Fields
  loc_A17C49: FLdPr var_98
  loc_A17C4C: from_stack_2 = Me.Item(from_stack_1)
  loc_A17C51: FLdZeroAd var_AC
  loc_A17C54: CVarAd
  loc_A17C58: FStVar CodiRubr
  loc_A17C5C: FFree1Ad var_98
  loc_A17C5F: ExitProcCbHresult
End Sub

Public Property Get DetaRubr() 'A17FB0
  'Data Table: 488CC8
  loc_A17F78: ZeroRetValVar
  loc_A17F7A: FLdRfVar var_AC
  loc_A17F7D: LitVarStr var_A8, "DetaRubr"
  loc_A17F82: PopAdLdVar
  loc_A17F83: FLdRfVar var_98
  loc_A17F86: FLdPr Me
  loc_A17F89: MemLdPr RsFrm
  loc_A17F8C:  = Me.Fields
  loc_A17F91: FLdPr var_98
  loc_A17F94: from_stack_2 = Me.Item(from_stack_1)
  loc_A17F99: FLdZeroAd var_AC
  loc_A17F9C: CVarAd
  loc_A17FA0: FStVar DetaRubr
  loc_A17FA4: FFree1Ad var_98
  loc_A17FA7: ExitProcCbHresult
  loc_A17FAD: DOC
End Sub

Public Property Get DetaSubr() 'A18208
  'Data Table: 488CC8
  loc_A181D0: ZeroRetValVar
  loc_A181D2: FLdRfVar var_AC
  loc_A181D5: LitVarStr var_A8, "DetaSubr"
  loc_A181DA: PopAdLdVar
  loc_A181DB: FLdRfVar var_98
  loc_A181DE: FLdPr Me
  loc_A181E1: MemLdPr RsFrm
  loc_A181E4:  = Me.Fields
  loc_A181E9: FLdPr var_98
  loc_A181EC: from_stack_2 = Me.Item(from_stack_1)
  loc_A181F1: FLdZeroAd var_AC
  loc_A181F4: CVarAd
  loc_A181F8: FStVar DetaSubr
  loc_A181FC: FFree1Ad var_98
  loc_A181FF: ExitProcCbHresult
  loc_A18205: FLdPr var_548
End Sub

Public Property Get ImpoTaco() 'A18640
  'Data Table: 488CC8
  loc_A18608: ZeroRetValVar
  loc_A1860A: FLdRfVar var_AC
  loc_A1860D: LitVarStr var_A8, "ImpoTaco"
  loc_A18612: PopAdLdVar
  loc_A18613: FLdRfVar var_98
  loc_A18616: FLdPr Me
  loc_A18619: MemLdPr RsFrm
  loc_A1861C:  = Me.Fields
  loc_A18621: FLdPr var_98
  loc_A18624: from_stack_2 = Me.Item(from_stack_1)
  loc_A18629: FLdZeroAd var_AC
  loc_A1862C: CVarAd
  loc_A18630: FStVar ImpoTaco
  loc_A18634: FFree1Ad var_98
  loc_A18637: ExitProcCbHresult
End Sub

Public Property Get Bimestres() 'A186B8
  'Data Table: 488CC8
  loc_A18680: ZeroRetValVar
  loc_A18682: FLdRfVar var_AC
  loc_A18685: LitVarStr var_A8, "Bimestres"
  loc_A1868A: PopAdLdVar
  loc_A1868B: FLdRfVar var_98
  loc_A1868E: FLdPr Me
  loc_A18691: MemLdPr RsFrm
  loc_A18694:  = Me.Fields
  loc_A18699: FLdPr var_98
  loc_A1869C: from_stack_2 = Me.Item(from_stack_1)
  loc_A186A1: FLdZeroAd var_AC
  loc_A186A4: CVarAd
  loc_A186A8: FStVar Bimestres
  loc_A186AC: FFree1Ad var_98
  loc_A186AF: ExitProcCbHresult
  loc_A186B5: ImpAdStCy MemVar_4A33BA
End Sub

Public Property Get ImpoSubr() 'A18988
  'Data Table: 488CC8
  loc_A18950: ZeroRetValVar
  loc_A18952: FLdRfVar var_AC
  loc_A18955: LitVarStr var_A8, "ImpoSubr"
  loc_A1895A: PopAdLdVar
  loc_A1895B: FLdRfVar var_98
  loc_A1895E: FLdPr Me
  loc_A18961: MemLdPr RsFrm
  loc_A18964:  = Me.Fields
  loc_A18969: FLdPr var_98
  loc_A1896C: from_stack_2 = Me.Item(from_stack_1)
  loc_A18971: FLdZeroAd var_AC
  loc_A18974: CVarAd
  loc_A18978: FStVar ImpoSubr
  loc_A1897C: FFree1Ad var_98
  loc_A1897F: ExitProcCbHresult
End Sub

Public Property Get CantSeco() 'A28BA4
  'Data Table: 488CC8
  loc_A28B60: FLdRfVar var_B0
  loc_A28B63: FLdRfVar var_A0
  loc_A28B66: LitVarStr var_9C, "CantSeco"
  loc_A28B6B: PopAdLdVar
  loc_A28B6C: FLdRfVar var_8C
  loc_A28B6F: FLdPr Me
  loc_A28B72: MemLdPr RsFrm
  loc_A28B75:  = Me.Fields
  loc_A28B7A: FLdPr var_8C
  loc_A28B7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A28B82: FLdPr var_A0
  loc_A28B85:  = Me.Value
  loc_A28B8A: FLdRfVar var_B0
  loc_A28B8D: CI2Var
  loc_A28B8E: FStI2 var_86
  loc_A28B91: FFreeAd var_8C = ""
  loc_A28B98: FFree1Var var_B0 = ""
  loc_A28B9B: ExitProcCbHresult
  loc_A28BA1: CStrVarTmp
End Sub

Public Property Get RazoCome() 'A18A78
  'Data Table: 488CC8
  loc_A18A40: ZeroRetValVar
  loc_A18A42: FLdRfVar var_AC
  loc_A18A45: LitVarStr var_A8, "RazoCome"
  loc_A18A4A: PopAdLdVar
  loc_A18A4B: FLdRfVar var_98
  loc_A18A4E: FLdPr Me
  loc_A18A51: MemLdPr RsFrm
  loc_A18A54:  = Me.Fields
  loc_A18A59: FLdPr var_98
  loc_A18A5C: from_stack_2 = Me.Item(from_stack_1)
  loc_A18A61: FLdZeroAd var_AC
  loc_A18A64: CVarAd
  loc_A18A68: FStVar RazoCome
  loc_A18A6C: FFree1Ad var_98
  loc_A18A6F: ExitProcCbHresult
  loc_A18A75: ExitProc
  loc_A18A76: EqCyR8
End Sub

Public Property Get RecaBole() 'A18B68
  'Data Table: 488CC8
  loc_A18B30: ZeroRetValVar
  loc_A18B32: FLdRfVar var_AC
  loc_A18B35: LitVarStr var_A8, "RecaBole"
  loc_A18B3A: PopAdLdVar
  loc_A18B3B: FLdRfVar var_98
  loc_A18B3E: FLdPr Me
  loc_A18B41: MemLdPr RsFrm
  loc_A18B44:  = Me.Fields
  loc_A18B49: FLdPr var_98
  loc_A18B4C: from_stack_2 = Me.Item(from_stack_1)
  loc_A18B51: FLdZeroAd var_AC
  loc_A18B54: CVarAd
  loc_A18B58: FStVar RecaBole
  loc_A18B5C: FFree1Ad var_98
  loc_A18B5F: ExitProcCbHresult
End Sub

Public Property Get CEmision() 'A18BE0
  'Data Table: 488CC8
  loc_A18BA8: ZeroRetValVar
  loc_A18BAA: FLdRfVar var_AC
  loc_A18BAD: LitVarStr var_A8, "CEmision"
  loc_A18BB2: PopAdLdVar
  loc_A18BB3: FLdRfVar var_98
  loc_A18BB6: FLdPr Me
  loc_A18BB9: MemLdPr RsFrm
  loc_A18BBC:  = Me.Fields
  loc_A18BC1: FLdPr var_98
  loc_A18BC4: from_stack_2 = Me.Item(from_stack_1)
  loc_A18BC9: FLdZeroAd var_AC
  loc_A18BCC: CVarAd
  loc_A18BD0: FStVar CEmision
  loc_A18BD4: FFree1Ad var_98
  loc_A18BD7: ExitProcCbHresult
  loc_A18BDD: UMiR8
  loc_A18BDE: Ary1StStrCopy
  loc_A18BDF: GeCyR8
End Sub

Public Property Get CateSeco() 'A18C58
  'Data Table: 488CC8
  loc_A18C20: ZeroRetValVar
  loc_A18C22: FLdRfVar var_AC
  loc_A18C25: LitVarStr var_A8, "CateSeco"
  loc_A18C2A: PopAdLdVar
  loc_A18C2B: FLdRfVar var_98
  loc_A18C2E: FLdPr Me
  loc_A18C31: MemLdPr RsFrm
  loc_A18C34:  = Me.Fields
  loc_A18C39: FLdPr var_98
  loc_A18C3C: from_stack_2 = Me.Item(from_stack_1)
  loc_A18C41: FLdZeroAd var_AC
  loc_A18C44: CVarAd
  loc_A18C48: FStVar CateSeco
  loc_A18C4C: FFree1Ad var_98
  loc_A18C4F: ExitProcCbHresult
End Sub

Public Property Get Vinculo() 'A18D48
  'Data Table: 488CC8
  loc_A18D10: ZeroRetValVar
  loc_A18D12: FLdRfVar var_AC
  loc_A18D15: LitVarStr var_A8, "Vinculo"
  loc_A18D1A: PopAdLdVar
  loc_A18D1B: FLdRfVar var_98
  loc_A18D1E: FLdPr Me
  loc_A18D21: MemLdPr RsFrm
  loc_A18D24:  = Me.Fields
  loc_A18D29: FLdPr var_98
  loc_A18D2C: from_stack_2 = Me.Item(from_stack_1)
  loc_A18D31: FLdZeroAd var_AC
  loc_A18D34: CVarAd
  loc_A18D38: FStVar Vinculo
  loc_A18D3C: FFree1Ad var_98
  loc_A18D3F: ExitProcCbHresult
End Sub

Public Property Get DetaBarr() 'A18DC0
  'Data Table: 488CC8
  loc_A18D88: ZeroRetValVar
  loc_A18D8A: FLdRfVar var_AC
  loc_A18D8D: LitVarStr var_A8, "DetaBarr"
  loc_A18D92: PopAdLdVar
  loc_A18D93: FLdRfVar var_98
  loc_A18D96: FLdPr Me
  loc_A18D99: MemLdPr RsFrm
  loc_A18D9C:  = Me.Fields
  loc_A18DA1: FLdPr var_98
  loc_A18DA4: from_stack_2 = Me.Item(from_stack_1)
  loc_A18DA9: FLdZeroAd var_AC
  loc_A18DAC: CVarAd
  loc_A18DB0: FStVar DetaBarr
  loc_A18DB4: FFree1Ad var_98
  loc_A18DB7: ExitProcCbHresult
End Sub

Public Property Get DetaLoca() 'A18F28
  'Data Table: 488CC8
  loc_A18EF0: ZeroRetValVar
  loc_A18EF2: FLdRfVar var_AC
  loc_A18EF5: LitVarStr var_A8, "DetaLoca"
  loc_A18EFA: PopAdLdVar
  loc_A18EFB: FLdRfVar var_98
  loc_A18EFE: FLdPr Me
  loc_A18F01: MemLdPr RsFrm
  loc_A18F04:  = Me.Fields
  loc_A18F09: FLdPr var_98
  loc_A18F0C: from_stack_2 = Me.Item(from_stack_1)
  loc_A18F11: FLdZeroAd var_AC
  loc_A18F14: CVarAd
  loc_A18F18: FStVar DetaLoca
  loc_A18F1C: FFree1Ad var_98
  loc_A18F1F: ExitProcCbHresult
End Sub

Public Property Get CopoLipu() 'A18FA0
  'Data Table: 488CC8
  loc_A18F68: ZeroRetValVar
  loc_A18F6A: FLdRfVar var_AC
  loc_A18F6D: LitVarStr var_A8, "CopoLipu"
  loc_A18F72: PopAdLdVar
  loc_A18F73: FLdRfVar var_98
  loc_A18F76: FLdPr Me
  loc_A18F79: MemLdPr RsFrm
  loc_A18F7C:  = Me.Fields
  loc_A18F81: FLdPr var_98
  loc_A18F84: from_stack_2 = Me.Item(from_stack_1)
  loc_A18F89: FLdZeroAd var_AC
  loc_A18F8C: CVarAd
  loc_A18F90: FStVar CopoLipu
  loc_A18F94: FFree1Ad var_98
  loc_A18F97: ExitProcCbHresult
End Sub

Public Property Get CallLipuReal() 'A19018
  'Data Table: 488CC8
  loc_A18FE0: ZeroRetValVar
  loc_A18FE2: FLdRfVar var_AC
  loc_A18FE5: LitVarStr var_A8, "CallLipuReal"
  loc_A18FEA: PopAdLdVar
  loc_A18FEB: FLdRfVar var_98
  loc_A18FEE: FLdPr Me
  loc_A18FF1: MemLdPr RsFrm
  loc_A18FF4:  = Me.Fields
  loc_A18FF9: FLdPr var_98
  loc_A18FFC: from_stack_2 = Me.Item(from_stack_1)
  loc_A19001: FLdZeroAd var_AC
  loc_A19004: CVarAd
  loc_A19008: FStVar CallLipuReal
  loc_A1900C: FFree1Ad var_98
  loc_A1900F: ExitProcCbHresult
End Sub

Public Property Get NucaLipuReal() 'A1AA58
  'Data Table: 488CC8
  loc_A1AA20: ZeroRetValVar
  loc_A1AA22: FLdRfVar var_AC
  loc_A1AA25: LitVarStr var_A8, "NucaLipuReal"
  loc_A1AA2A: PopAdLdVar
  loc_A1AA2B: FLdRfVar var_98
  loc_A1AA2E: FLdPr Me
  loc_A1AA31: MemLdPr RsFrm
  loc_A1AA34:  = Me.Fields
  loc_A1AA39: FLdPr var_98
  loc_A1AA3C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1AA41: FLdZeroAd var_AC
  loc_A1AA44: CVarAd
  loc_A1AA48: FStVar NucaLipuReal
  loc_A1AA4C: FFree1Ad var_98
  loc_A1AA4F: ExitProcCbHresult
End Sub

Public Property Get BarrLipuReal() 'A1B1D8
  'Data Table: 488CC8
  loc_A1B1A0: ZeroRetValVar
  loc_A1B1A2: FLdRfVar var_AC
  loc_A1B1A5: LitVarStr var_A8, "BarrLipuReal"
  loc_A1B1AA: PopAdLdVar
  loc_A1B1AB: FLdRfVar var_98
  loc_A1B1AE: FLdPr Me
  loc_A1B1B1: MemLdPr RsFrm
  loc_A1B1B4:  = Me.Fields
  loc_A1B1B9: FLdPr var_98
  loc_A1B1BC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B1C1: FLdZeroAd var_AC
  loc_A1B1C4: CVarAd
  loc_A1B1C8: FStVar BarrLipuReal
  loc_A1B1CC: FFree1Ad var_98
  loc_A1B1CF: ExitProcCbHresult
End Sub

Public Property Get ManzLipuReal() 'A1B4A8
  'Data Table: 488CC8
  loc_A1B470: ZeroRetValVar
  loc_A1B472: FLdRfVar var_AC
  loc_A1B475: LitVarStr var_A8, "ManzLipuReal"
  loc_A1B47A: PopAdLdVar
  loc_A1B47B: FLdRfVar var_98
  loc_A1B47E: FLdPr Me
  loc_A1B481: MemLdPr RsFrm
  loc_A1B484:  = Me.Fields
  loc_A1B489: FLdPr var_98
  loc_A1B48C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B491: FLdZeroAd var_AC
  loc_A1B494: CVarAd
  loc_A1B498: FStVar ManzLipuReal
  loc_A1B49C: FFree1Ad var_98
  loc_A1B49F: ExitProcCbHresult
End Sub

Public Property Get CasaLipuReal() 'A1C1C8
  'Data Table: 488CC8
  loc_A1C190: ZeroRetValVar
  loc_A1C192: FLdRfVar var_AC
  loc_A1C195: LitVarStr var_A8, "CasaLipuReal"
  loc_A1C19A: PopAdLdVar
  loc_A1C19B: FLdRfVar var_98
  loc_A1C19E: FLdPr Me
  loc_A1C1A1: MemLdPr RsFrm
  loc_A1C1A4:  = Me.Fields
  loc_A1C1A9: FLdPr var_98
  loc_A1C1AC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C1B1: FLdZeroAd var_AC
  loc_A1C1B4: CVarAd
  loc_A1C1B8: FStVar CasaLipuReal
  loc_A1C1BC: FFree1Ad var_98
  loc_A1C1BF: ExitProcCbHresult
End Sub

Public Property Get UbicLipuReal() 'A1C240
  'Data Table: 488CC8
  loc_A1C208: ZeroRetValVar
  loc_A1C20A: FLdRfVar var_AC
  loc_A1C20D: LitVarStr var_A8, "UbicLipuReal"
  loc_A1C212: PopAdLdVar
  loc_A1C213: FLdRfVar var_98
  loc_A1C216: FLdPr Me
  loc_A1C219: MemLdPr RsFrm
  loc_A1C21C:  = Me.Fields
  loc_A1C221: FLdPr var_98
  loc_A1C224: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C229: FLdZeroAd var_AC
  loc_A1C22C: CVarAd
  loc_A1C230: FStVar UbicLipuReal
  loc_A1C234: FFree1Ad var_98
  loc_A1C237: ExitProcCbHresult
End Sub

Public Property Get LocaLipuReal() 'A1C330
  'Data Table: 488CC8
  loc_A1C2F8: ZeroRetValVar
  loc_A1C2FA: FLdRfVar var_AC
  loc_A1C2FD: LitVarStr var_A8, "LocaLipuReal"
  loc_A1C302: PopAdLdVar
  loc_A1C303: FLdRfVar var_98
  loc_A1C306: FLdPr Me
  loc_A1C309: MemLdPr RsFrm
  loc_A1C30C:  = Me.Fields
  loc_A1C311: FLdPr var_98
  loc_A1C314: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C319: FLdZeroAd var_AC
  loc_A1C31C: CVarAd
  loc_A1C320: FStVar LocaLipuReal
  loc_A1C324: FFree1Ad var_98
  loc_A1C327: ExitProcCbHresult
  loc_A1C32D: NewIfNullPr Me
End Sub

Public Property Get CopoLipuReal() 'A1C3A8
  'Data Table: 488CC8
  loc_A1C370: ZeroRetValVar
  loc_A1C372: FLdRfVar var_AC
  loc_A1C375: LitVarStr var_A8, "CopoLipuReal"
  loc_A1C37A: PopAdLdVar
  loc_A1C37B: FLdRfVar var_98
  loc_A1C37E: FLdPr Me
  loc_A1C381: MemLdPr RsFrm
  loc_A1C384:  = Me.Fields
  loc_A1C389: FLdPr var_98
  loc_A1C38C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C391: FLdZeroAd var_AC
  loc_A1C394: CVarAd
  loc_A1C398: FStVar CopoLipuReal
  loc_A1C39C: FFree1Ad var_98
  loc_A1C39F: ExitProcCbHresult
  loc_A1C3A5: ImpAdLdFPR4 MemVar_5D90F4
End Sub

Public Property Get CodiUsua() 'A1C420
  'Data Table: 488CC8
  loc_A1C3E8: ZeroRetValVar
  loc_A1C3EA: FLdRfVar var_AC
  loc_A1C3ED: LitVarStr var_A8, "CodiUsua"
  loc_A1C3F2: PopAdLdVar
  loc_A1C3F3: FLdRfVar var_98
  loc_A1C3F6: FLdPr Me
  loc_A1C3F9: MemLdPr RsFrm
  loc_A1C3FC:  = Me.Fields
  loc_A1C401: FLdPr var_98
  loc_A1C404: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C409: FLdZeroAd var_AC
  loc_A1C40C: CVarAd
  loc_A1C410: FStVar CodiUsua
  loc_A1C414: FFree1Ad var_98
  loc_A1C417: ExitProcCbHresult
  loc_A1C41D: ConcatStr
  loc_A1C41E: FLdRfVar arg_5054
End Sub

Public Function ValidaClave(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiInmu, CodiConc) '9C5F5C
  'Data Table: 488CC8
  loc_9C5F4C: ILdRf CodiConc
  loc_9C5F4F: FStStrCopy var_8C
  loc_9C5F52: ZeroRetVal
  loc_9C5F54: ExitProcCbHresult
  loc_9C5F5A: ImpAdLdPr unk_48DCCC
End Function

Public Sub BorraLiquidacion(PeriLiqu, CodiTili) 'B90B64
  'Data Table: 488CC8
  loc_B9070C: LitStr "SELECT PeriLiqu, CodiOfic, CodiTili, NumeLiqu FROM liquidacion WHERE PeriLiqu = "
  loc_B9070F: FLdI2 PeriLiqu
  loc_B90712: CStrUI1
  loc_B90714: FStStrNoPop var_88
  loc_B90717: ConcatStr
  loc_B90718: FStStrNoPop var_8C
  loc_B9071B: LitStr " AND CodiOfic = 6 AND CodiTili = "
  loc_B9071E: ConcatStr
  loc_B9071F: FStStrNoPop var_90
  loc_B90722: FLdUI1
  loc_B90726: CStrI2
  loc_B90728: FStStrNoPop var_94
  loc_B9072B: ConcatStr
  loc_B9072C: FStStrNoPop var_98
  loc_B9072F: LitStr " AND ActuLiqu = 'No' ORDER BY PeriLiqu, CodiTili, NumeLiqu"
  loc_B90732: ConcatStr
  loc_B90733: FStStrNoPop var_9C
  loc_B90736: Call EjecutarRsCls(from_stack_1v)
  loc_B9073B: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_B9074A: FLdRfVar var_A0
  loc_B9074D: FLdPr Me
  loc_B90750: MemLdPr global_56
  loc_B90753:  = Me.RecordCount
  loc_B90758: ILdRf var_A0
  loc_B9075B: LitI4 0
  loc_B90760: GtI4
  loc_B90761: BranchF loc_B90B62
  loc_B90764: LitStr "START TRANSACTION;"
  loc_B90767: LitStr " DELETE FROM liqupubl WHERE PeriLiqu = "
  loc_B9076A: ConcatStr
  loc_B9076B: FStStrNoPop var_88
  loc_B9076E: FLdI2 PeriLiqu
  loc_B90771: CStrUI1
  loc_B90773: FStStrNoPop var_8C
  loc_B90776: ConcatStr
  loc_B90777: FStStrNoPop var_90
  loc_B9077A: LitStr " AND CodiTili = "
  loc_B9077D: ConcatStr
  loc_B9077E: FStStrNoPop var_94
  loc_B90781: FLdUI1
  loc_B90785: CStrI2
  loc_B90787: FStStrNoPop var_98
  loc_B9078A: ConcatStr
  loc_B9078B: FStStrNoPop var_9C
  loc_B9078E: LitStr " AND NumeLiqu = "
  loc_B90791: ConcatStr
  loc_B90792: CVarStr var_D8
  loc_B90795: FLdRfVar var_C8
  loc_B90798: FLdRfVar var_B8
  loc_B9079B: LitVarStr var_B4, "NumeLiqu"
  loc_B907A0: PopAdLdVar
  loc_B907A1: FLdRfVar var_A4
  loc_B907A4: FLdPr Me
  loc_B907A7: MemLdPr global_56
  loc_B907AA:  = Me.Fields
  loc_B907AF: FLdPr var_A4
  loc_B907B2: from_stack_2 = Me.Item(from_stack_1)
  loc_B907B7: FLdPr var_B8
  loc_B907BA:  = Me.Value
  loc_B907BF: FLdRfVar var_C8
  loc_B907C2: ConcatVar var_E8
  loc_B907C6: LitVarStr var_F8, " AND ActuLipu = 'No';"
  loc_B907CB: ConcatVar var_108
  loc_B907CF: LitVarStr var_118, " DELETE FROM lipudeta WHERE PeriLiqu = "
  loc_B907D4: ConcatVar var_128
  loc_B907D8: FLdI2 PeriLiqu
  loc_B907DB: CVarI2 var_138
  loc_B907DE: ConcatVar var_148
  loc_B907E2: LitVarStr var_158, " AND CodiTili = "
  loc_B907E7: ConcatVar var_168
  loc_B907EB: FLdUI1
  loc_B907EF: CVarUI1
  loc_B907F3: ConcatVar var_188
  loc_B907F7: LitVarStr var_198, " AND NumeLiqu = "
  loc_B907FC: ConcatVar var_1A8
  loc_B90800: FLdRfVar var_1D0
  loc_B90803: FLdRfVar var_1C0
  loc_B90806: LitVarStr var_1BC, "NumeLiqu"
  loc_B9080B: PopAdLdVar
  loc_B9080C: FLdRfVar var_1AC
  loc_B9080F: FLdPr Me
  loc_B90812: MemLdPr global_56
  loc_B90815:  = Me.Fields
  loc_B9081A: FLdPr var_1AC
  loc_B9081D: from_stack_2 = Me.Item(from_stack_1)
  loc_B90822: FLdPr var_1C0
  loc_B90825:  = Me.Value
  loc_B9082A: FLdRfVar var_1D0
  loc_B9082D: ConcatVar var_1E0
  loc_B90831: LitVarStr var_1F0, ";"
  loc_B90836: ConcatVar var_200
  loc_B9083A: LitVarStr var_210, " DELETE FROM erroliqu WHERE PeriLiqu = "
  loc_B9083F: ConcatVar var_220
  loc_B90843: FLdI2 PeriLiqu
  loc_B90846: CVarI2 var_230
  loc_B90849: ConcatVar var_240
  loc_B9084D: LitVarStr var_250, " AND CodiTili = "
  loc_B90852: ConcatVar var_260
  loc_B90856: FLdUI1
  loc_B9085A: CVarUI1
  loc_B9085E: ConcatVar var_280
  loc_B90862: LitVarStr var_290, " AND NumeLiqu = "
  loc_B90867: ConcatVar var_2A0
  loc_B9086B: FLdRfVar var_2C8
  loc_B9086E: FLdRfVar var_2B8
  loc_B90871: LitVarStr var_2B4, "NumeLiqu"
  loc_B90876: PopAdLdVar
  loc_B90877: FLdRfVar var_2A4
  loc_B9087A: FLdPr Me
  loc_B9087D: MemLdPr global_56
  loc_B90880:  = Me.Fields
  loc_B90885: FLdPr var_2A4
  loc_B90888: from_stack_2 = Me.Item(from_stack_1)
  loc_B9088D: FLdPr var_2B8
  loc_B90890:  = Me.Value
  loc_B90895: FLdRfVar var_2C8
  loc_B90898: ConcatVar var_2D8
  loc_B9089C: LitVarStr var_2E8, " AND CodiOfic = "
  loc_B908A1: ConcatVar var_2F8
  loc_B908A5: FLdRfVar var_320
  loc_B908A8: FLdRfVar var_310
  loc_B908AB: LitVarStr var_30C, "CodiOfic"
  loc_B908B0: PopAdLdVar
  loc_B908B1: FLdRfVar var_2FC
  loc_B908B4: FLdPr Me
  loc_B908B7: MemLdPr global_56
  loc_B908BA:  = Me.Fields
  loc_B908BF: FLdPr var_2FC
  loc_B908C2: from_stack_2 = Me.Item(from_stack_1)
  loc_B908C7: FLdPr var_310
  loc_B908CA:  = Me.Value
  loc_B908CF: FLdRfVar var_320
  loc_B908D2: ConcatVar var_330
  loc_B908D6: LitVarStr var_340, ";"
  loc_B908DB: ConcatVar var_350
  loc_B908DF: LitVarStr var_360, " UPDATE recabole SET PeriLiqu = 0, BimeLiqu = 0, CodiTili = 0, NumeLiqu = 0 WHERE CodiOfic = 6 AND PeriLiqu = "
  loc_B908E4: ConcatVar var_370
  loc_B908E8: FLdI2 PeriLiqu
  loc_B908EB: CVarI2 var_380
  loc_B908EE: ConcatVar var_390
  loc_B908F2: LitVarStr var_3A0, " AND CodiTili = "
  loc_B908F7: ConcatVar var_3B0
  loc_B908FB: FLdUI1
  loc_B908FF: CVarUI1
  loc_B90903: ConcatVar var_3D0
  loc_B90907: LitVarStr var_3E0, " AND NumeLiqu = "
  loc_B9090C: ConcatVar var_3F0
  loc_B90910: FLdRfVar var_418
  loc_B90913: FLdRfVar var_408
  loc_B90916: LitVarStr var_404, "NumeLiqu"
  loc_B9091B: PopAdLdVar
  loc_B9091C: FLdRfVar var_3F4
  loc_B9091F: FLdPr Me
  loc_B90922: MemLdPr global_56
  loc_B90925:  = Me.Fields
  loc_B9092A: FLdPr var_3F4
  loc_B9092D: from_stack_2 = Me.Item(from_stack_1)
  loc_B90932: FLdPr var_408
  loc_B90935:  = Me.Value
  loc_B9093A: FLdRfVar var_418
  loc_B9093D: ConcatVar var_428
  loc_B90941: LitVarStr var_438, " AND ActuRebo = 'No';"
  loc_B90946: ConcatVar var_448
  loc_B9094A: LitVarStr var_458, " UPDATE pagoanti SET CodiTili = 0, NumeLiqu = 0 WHERE PeriLiqu = "
  loc_B9094F: ConcatVar var_468
  loc_B90953: FLdI2 PeriLiqu
  loc_B90956: CVarI2 var_478
  loc_B90959: ConcatVar var_488
  loc_B9095D: LitVarStr var_498, " AND CodiTili = "
  loc_B90962: ConcatVar var_4A8
  loc_B90966: FLdUI1
  loc_B9096A: CVarUI1
  loc_B9096E: ConcatVar var_4C8
  loc_B90972: LitVarStr var_4D8, " AND NumeLiqu = "
  loc_B90977: ConcatVar var_4E8
  loc_B9097B: FLdRfVar var_510
  loc_B9097E: FLdRfVar var_500
  loc_B90981: LitVarStr var_4FC, "NumeLiqu"
  loc_B90986: PopAdLdVar
  loc_B90987: FLdRfVar var_4EC
  loc_B9098A: FLdPr Me
  loc_B9098D: MemLdPr global_56
  loc_B90990:  = Me.Fields
  loc_B90995: FLdPr var_4EC
  loc_B90998: from_stack_2 = Me.Item(from_stack_1)
  loc_B9099D: FLdPr var_500
  loc_B909A0:  = Me.Value
  loc_B909A5: FLdRfVar var_510
  loc_B909A8: ConcatVar var_520
  loc_B909AC: LitVarStr var_530, " AND (EstaPaan = 'Actualizado' OR EstaPaan = 'Liquidado');"
  loc_B909B1: ConcatVar var_540
  loc_B909B5: LitVarStr var_550, " DELETE FROM liquidacion WHERE PeriLiqu = "
  loc_B909BA: ConcatVar var_560
  loc_B909BE: FLdI2 PeriLiqu
  loc_B909C1: CVarI2 var_570
  loc_B909C4: ConcatVar var_580
  loc_B909C8: LitVarStr var_590, " AND CodiOfic = 6 AND CodiTili = "
  loc_B909CD: ConcatVar var_5A0
  loc_B909D1: FLdUI1
  loc_B909D5: CVarUI1
  loc_B909D9: ConcatVar var_5C0
  loc_B909DD: LitVarStr var_5D0, " AND NumeLiqu = "
  loc_B909E2: ConcatVar var_5E0
  loc_B909E6: FLdRfVar var_608
  loc_B909E9: FLdRfVar var_5F8
  loc_B909EC: LitVarStr var_5F4, "NumeLiqu"
  loc_B909F1: PopAdLdVar
  loc_B909F2: FLdRfVar var_5E4
  loc_B909F5: FLdPr Me
  loc_B909F8: MemLdPr global_56
  loc_B909FB:  = Me.Fields
  loc_B90A00: FLdPr var_5E4
  loc_B90A03: from_stack_2 = Me.Item(from_stack_1)
  loc_B90A08: FLdPr var_5F8
  loc_B90A0B:  = Me.Value
  loc_B90A10: FLdRfVar var_608
  loc_B90A13: ConcatVar var_618
  loc_B90A17: LitVarStr var_628, " AND ActuLiqu = 'No';"
  loc_B90A1C: ConcatVar var_638
  loc_B90A20: LitVarStr var_648, " DELETE FROM pagoanual WHERE PeriLiqu = "
  loc_B90A25: ConcatVar var_658
  loc_B90A29: FLdI2 PeriLiqu
  loc_B90A2C: CVarI2 var_668
  loc_B90A2F: ConcatVar var_678
  loc_B90A33: LitVarStr var_688, " AND CodiOfic = 6 AND CodiTili = "
  loc_B90A38: ConcatVar var_698
  loc_B90A3C: FLdUI1
  loc_B90A40: CVarUI1
  loc_B90A44: ConcatVar var_6B8
  loc_B90A48: LitVarStr var_6C8, " AND NumeLiqu = "
  loc_B90A4D: ConcatVar var_6D8
  loc_B90A51: FLdRfVar var_700
  loc_B90A54: FLdRfVar var_6F0
  loc_B90A57: LitVarStr var_6EC, "NumeLiqu"
  loc_B90A5C: PopAdLdVar
  loc_B90A5D: FLdRfVar var_6DC
  loc_B90A60: FLdPr Me
  loc_B90A63: MemLdPr global_56
  loc_B90A66:  = Me.Fields
  loc_B90A6B: FLdPr var_6DC
  loc_B90A6E: from_stack_2 = Me.Item(from_stack_1)
  loc_B90A73: FLdPr var_6F0
  loc_B90A76:  = Me.Value
  loc_B90A7B: FLdRfVar var_700
  loc_B90A7E: ConcatVar var_710
  loc_B90A82: LitVarStr var_720, " AND FepaPaan IS NULL ORDER BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu"
  loc_B90A87: ConcatVar var_730
  loc_B90A8B: CStrVarTmp
  loc_B90A8C: FStStrNoPop var_734
  loc_B90A8F: FLdPr Me
  loc_B90A92: MemStStrCopy
  loc_B90A96: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_B90AA7: FFreeAd var_A4 = "": var_B8 = "": var_1AC = "": var_1C0 = "": var_2A4 = "": var_2B8 = "": var_2FC = "": var_310 = "": var_3F4 = "": var_408 = "": var_4EC = "": var_500 = "": var_5E4 = "": var_5F8 = "": var_6DC = ""
  loc_B90ACA: FFreeVar var_448 = "": var_468 = "": var_488 = "": var_4A8 = "": var_4C8 = "": var_4E8 = "": var_510 = "": var_520 = "": var_540 = "": var_560 = "": var_580 = "": var_5A0 = "": var_5C0 = "": var_5E0 = "": var_608 = "": var_618 = "": var_638 = "": var_658 = "": var_678 = "": var_698 = "": var_6B8 = "": var_6D8 = "": var_700 = "": var_710 = "": var_730 = "": var_D8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1D0 = "": var_1E0 = "": var_200 = "": var_220 = "": var_240 = "": var_260 = "": var_280 = "": var_2A0 = "": var_2C8 = "": var_2D8 = "": var_2F8 = "": var_320 = "": var_330 = "": var_350 = "": var_370 = "": var_390 = "": var_3B0 = "": var_3D0 = "": var_3F0 = "": var_418 = ""
  loc_B90B3B: OnErrorGoto loc_B90B52
  loc_B90B3E: FLdPr Me
  loc_B90B41: MemLdStr global_80
  loc_B90B44: Call EjecutarRsCls(from_stack_1v)
  loc_B90B49: LitStr "COMMIT;"
  loc_B90B4C: Call EjecutarRsCls(from_stack_1v)
  loc_B90B51: ExitProcHresult
  loc_B90B52: LitStr "ROLLBACK;"
  loc_B90B55: Call EjecutarRsCls(from_stack_1v)
  loc_B90B5A: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B90B5D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B90B62: ExitProcHresult
End Sub

Public Sub CreaErrorLiquidacion(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, DetaErli) 'A6F68C
  'Data Table: 488CC8
  loc_A6F620: ILdRf DetaErli
  loc_A6F623: FStStrCopy var_88
  loc_A6F626: FLdRfVar var_92
  loc_A6F629: ILdRf CodiCome
  loc_A6F62C: CStrI4
  loc_A6F62E: FStStrNoPop var_90
  loc_A6F631: LitI2_Byte 2
  loc_A6F633: CUI1I2
  loc_A6F635: FLdI2 NumeLiqu
  loc_A6F638: FLdUI1
  loc_A6F63C: FLdUI1
  loc_A6F640: FLdI2 PeriLiqu
  loc_A6F643: FLdRfVar var_8C
  loc_A6F646: NewIfNullPr clserroliqu
  loc_A6F649: from_stack_7v = clserroliqu.NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_A6F64E: ILdRf var_88
  loc_A6F651: FLdI2 var_92
  loc_A6F654: CUI1I2
  loc_A6F656: ILdRf CodiCome
  loc_A6F659: CStrI4
  loc_A6F65B: FStStrNoPop var_98
  loc_A6F65E: LitI2_Byte 2
  loc_A6F660: CUI1I2
  loc_A6F662: FLdI2 NumeLiqu
  loc_A6F665: FLdUI1
  loc_A6F669: FLdUI1
  loc_A6F66D: FLdI2 PeriLiqu
  loc_A6F670: FLdRfVar var_8C
  loc_A6F673: NewIfNullPr clserroliqu
  loc_A6F676: Call clserroliqu.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_A6F67B: FFreeStr var_90 = ""
  loc_A6F682: LitNothing
  loc_A6F684: CastAd
  loc_A6F687: FStAdFunc var_8C
  loc_A6F68A: ExitProcHresult
End Sub

Public Function BuscaPorcentajeExcepcion(CodiExce) '9F0998
  'Data Table: 488CC8
  loc_9F0970: FLdRfVar var_98
  loc_9F0973: FLdI2 CodiExce
  loc_9F0976: FLdRfVar var_90
  loc_9F0979: NewIfNullPr clsexcepcion
  loc_9F097C: from_stack_2v = clsexcepcion.BuscaPorcentajeExcepcion(from_stack_1v)
  loc_9F0981: FLdFPR8 var_98
  loc_9F0984: FStFPR8 var_8C
  loc_9F0987: LitNothing
  loc_9F0989: CastAd
  loc_9F098C: FStAdFunc var_90
  loc_9F098F: ExitProcCbHresult
  loc_9F0995: FLdRfVar var_124
End Function

Public Function BuscaDeudaParaLibreDeuda(CodiCome) 'A121B4
  'Data Table: 488CC8
  loc_A12178: FLdRfVar var_9C
  loc_A1217B: LitI4 0
  loc_A12180: LitI4 0
  loc_A12185: ILdRf CodiCome
  loc_A12188: CStrI4
  loc_A1218A: FStStrNoPop BuscaDeudaParaLibreDeuda
  loc_A1218D: LitI2_Byte 2
  loc_A1218F: FLdRfVar var_90
  loc_A12192: NewIfNullPr clsctacte
  loc_A12195: from_stack_5v = clsctacte.BuscaDeudaParaLibreDeuda(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_A1219A: FLdFPR8 var_9C
  loc_A1219D: FStFPR8 var_8C
  loc_A121A0: FFree1Str BuscaDeudaParaLibreDeuda
  loc_A121A3: LitNothing
  loc_A121A5: CastAd
  loc_A121A8: FStAdFunc var_90
  loc_A121AB: ExitProcCbHresult
End Function

Public Function GeneracionCuentaCorriente(PeriLiqu, CodiTili, NumeLiqu, CodiCome, lOrden, iPeriodo, doDeanTili) 'D3A278
  'Data Table: 488CC8
  loc_D3619C: ZeroRetVal
  loc_D3619E: LitI2_Byte 0
  loc_D361A0: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_D361A5: FStFPR8 var_A4
  loc_D361A8: LitStr "SELECT SUM(ImpoLipu) - SUM(CrafLipu) as CapiBole, SUM(DescLipu) as  DecaBole, SUM(ExenLipu) as ExenBole, SUM(TotaLipu) as  TotaBole, PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, CodiConc, TipoVenc, CucuPers, ActuLipu, FealLipu, FeveLipu, TipoLipu FROM liqupubl "
  loc_D361AB: LitStr " WHERE PeriLiqu = "
  loc_D361AE: ConcatStr
  loc_D361AF: FStStrNoPop var_164
  loc_D361B2: FLdI2 PeriLiqu
  loc_D361B5: CStrUI1
  loc_D361B7: FStStrNoPop var_168
  loc_D361BA: ConcatStr
  loc_D361BB: FStStrNoPop var_16C
  loc_D361BE: LitStr " AND CodiTili = "
  loc_D361C1: ConcatStr
  loc_D361C2: FStStrNoPop var_170
  loc_D361C5: FLdUI1
  loc_D361C9: CStrI2
  loc_D361CB: FStStrNoPop var_174
  loc_D361CE: ConcatStr
  loc_D361CF: FStStrNoPop var_178
  loc_D361D2: LitStr " AND NumeLiqu = "
  loc_D361D5: ConcatStr
  loc_D361D6: FStStrNoPop var_17C
  loc_D361D9: FLdI2 NumeLiqu
  loc_D361DC: CStrUI1
  loc_D361DE: FStStrNoPop var_180
  loc_D361E1: ConcatStr
  loc_D361E2: FStStrNoPop var_184
  loc_D361E5: LitStr " AND CodiCome = "
  loc_D361E8: ConcatStr
  loc_D361E9: FStStrNoPop var_188
  loc_D361EC: ILdRf CodiCome
  loc_D361EF: CStrI4
  loc_D361F1: FStStrNoPop var_18C
  loc_D361F4: ConcatStr
  loc_D361F5: FStStrNoPop var_190
  loc_D361F8: LitStr " AND ActuLipu = 'No' "
  loc_D361FB: ConcatStr
  loc_D361FC: FStStrNoPop var_194
  loc_D361FF: LitStr " GROUP BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, TipoVenc"
  loc_D36202: ConcatStr
  loc_D36203: FStStrNoPop var_198
  loc_D36206: LitStr " ORDER BY PeriLiqu, TipoVenc, BimeLiqu;"
  loc_D36209: ConcatStr
  loc_D3620A: FStStrNoPop var_19C
  loc_D3620D: Call EjecutarRsCls2(from_stack_1v)
  loc_D36212: FFreeStr var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = ""
  loc_D36233: FLdRfVar var_1A0
  loc_D36236: FLdPr Me
  loc_D36239: MemLdPr global_64
  loc_D3623C:  = Me.RecordCount
  loc_D36241: ILdRf var_1A0
  loc_D36244: LitI4 0
  loc_D36249: GtI4
  loc_D3624A: BranchF loc_D3A21A
  loc_D3624D: OnErrorGoto loc_D3A220
  loc_D36250: LitStr "START TRANSACTION;"
  loc_D36253: Call EjecutarRsCls(from_stack_1v)
  loc_D36258: FLdPr Me
  loc_D3625B: MemLdPr global_64
  loc_D3625E: Me.MoveFirst
  loc_D36263: FLdRfVar var_1A2
  loc_D36266: FLdPr Me
  loc_D36269: MemLdPr global_64
  loc_D3626C:  = Me.EOF
  loc_D36271: FLdI2 var_1A2
  loc_D36274: NotI4
  loc_D36275: BranchF loc_D3A212
  loc_D36278: FLdRfVar var_1CC
  loc_D3627B: FLdRfVar var_1BC
  loc_D3627E: LitVarStr var_1B8, "TotaBole"
  loc_D36283: PopAdLdVar
  loc_D36284: FLdRfVar var_1A8
  loc_D36287: FLdPr Me
  loc_D3628A: MemLdPr global_64
  loc_D3628D:  = Me.Fields
  loc_D36292: FLdPr var_1A8
  loc_D36295: from_stack_2 = Me.Item(from_stack_1)
  loc_D3629A: FLdPr var_1BC
  loc_D3629D:  = Me.Value
  loc_D362A2: FLdRfVar var_1CC
  loc_D362A5: LitVarI2 var_1DC, 0
  loc_D362AA: HardType
  loc_D362AB: GtVarBool
  loc_D362AD: FFreeAd var_1A8 = ""
  loc_D362B4: FFree1Var var_1CC = ""
  loc_D362B7: BranchF loc_D36653
  loc_D362BA: FLdRfVar var_1CC
  loc_D362BD: FLdRfVar var_1BC
  loc_D362C0: LitVarStr var_1B8, "TipoVenc"
  loc_D362C5: PopAdLdVar
  loc_D362C6: FLdRfVar var_1A8
  loc_D362C9: FLdPr Me
  loc_D362CC: MemLdPr global_64
  loc_D362CF:  = Me.Fields
  loc_D362D4: FLdPr var_1A8
  loc_D362D7: from_stack_2 = Me.Item(from_stack_1)
  loc_D362DC: FLdPr var_1BC
  loc_D362DF:  = Me.Value
  loc_D362E4: FLdRfVar var_1CC
  loc_D362E7: FnCIntVar
  loc_D362E9: LitI2_Byte 1
  loc_D362EB: EqI2
  loc_D362EC: FFreeAd var_1A8 = ""
  loc_D362F3: FFree1Var var_1CC = ""
  loc_D362F6: BranchF loc_D365FD
  loc_D362F9: LitI2_Byte 0
  loc_D362FB: CR8I2
  loc_D362FC: FStFPR8 var_B4
  loc_D362FF: LitI2_Byte 0
  loc_D36301: CR8I2
  loc_D36302: FStFPR8 var_BC
  loc_D36305: FLdRfVar var_1A0
  loc_D36308: FLdI2 iPeriodo
  loc_D3630B: FLdRfVar var_8C
  loc_D3630E: NewIfNullPr clsnumebole
  loc_D36311: from_stack_2v = clsnumebole.NuevoRegistro(from_stack_1v)
  loc_D36316: ILdRf var_1A0
  loc_D36319: FStR4 var_9C
  loc_D3631C: FLdRfVar var_2EC
  loc_D3631F: LitVarStr var_2E8, "FeveLipu"
  loc_D36324: PopAdLdVar
  loc_D36325: FLdRfVar var_2D8
  loc_D36328: FLdPr Me
  loc_D3632B: MemLdPr global_64
  loc_D3632E:  = Me.Fields
  loc_D36333: FLdPr var_2D8
  loc_D36336: from_stack_2 = Me.Item(from_stack_1)
  loc_D3633B: FLdRfVar var_434
  loc_D3633E: FLdRfVar var_424
  loc_D36341: LitVarStr var_420, "TotaBole"
  loc_D36346: PopAdLdVar
  loc_D36347: FLdRfVar var_410
  loc_D3634A: FLdPr Me
  loc_D3634D: MemLdPr global_64
  loc_D36350:  = Me.Fields
  loc_D36355: FLdPr var_410
  loc_D36358: from_stack_2 = Me.Item(from_stack_1)
  loc_D3635D: FLdPr var_424
  loc_D36360:  = Me.Value
  loc_D36365: FLdRfVar var_49C
  loc_D36368: FLdRfVar var_48C
  loc_D3636B: LitVarStr var_488, "TotaBole"
  loc_D36370: PopAdLdVar
  loc_D36371: FLdRfVar var_478
  loc_D36374: FLdPr Me
  loc_D36377: MemLdPr global_64
  loc_D3637A:  = Me.Fields
  loc_D3637F: FLdPr var_478
  loc_D36382: from_stack_2 = Me.Item(from_stack_1)
  loc_D36387: FLdPr var_48C
  loc_D3638A:  = Me.Value
  loc_D3638F: LitStr " INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiTili, NumeLiqu, CodiFapa, CuotDefa, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, ApreBole, TotaBole, CodiUsua) "
  loc_D36392: LitStr " VALUES ("
  loc_D36395: ConcatStr
  loc_D36396: FStStrNoPop var_164
  loc_D36399: FLdI2 iPeriodo
  loc_D3639C: CStrUI1
  loc_D3639E: FStStrNoPop var_168
  loc_D363A1: ConcatStr
  loc_D363A2: FStStrNoPop var_16C
  loc_D363A5: LitStr ","
  loc_D363A8: ConcatStr
  loc_D363A9: FStStrNoPop var_170
  loc_D363AC: ILdRf var_9C
  loc_D363AF: CStrI4
  loc_D363B1: FStStrNoPop var_174
  loc_D363B4: ConcatStr
  loc_D363B5: FStStrNoPop var_178
  loc_D363B8: LitStr ",6,'"
  loc_D363BB: ConcatStr
  loc_D363BC: CVarStr var_1EC
  loc_D363BF: FLdRfVar var_1CC
  loc_D363C2: FLdRfVar var_1BC
  loc_D363C5: LitVarStr var_1B8, "CodiCome"
  loc_D363CA: PopAdLdVar
  loc_D363CB: FLdRfVar var_1A8
  loc_D363CE: FLdPr Me
  loc_D363D1: MemLdPr global_64
  loc_D363D4:  = Me.Fields
  loc_D363D9: FLdPr var_1A8
  loc_D363DC: from_stack_2 = Me.Item(from_stack_1)
  loc_D363E1: FLdPr var_1BC
  loc_D363E4:  = Me.Value
  loc_D363E9: FLdRfVar var_1CC
  loc_D363EC: ConcatVar var_1FC
  loc_D363F0: LitVarStr var_1DC, "','"
  loc_D363F5: ConcatVar var_20C
  loc_D363F9: FLdRfVar var_234
  loc_D363FC: FLdRfVar var_224
  loc_D363FF: LitVarStr var_220, "CucuPers"
  loc_D36404: PopAdLdVar
  loc_D36405: FLdRfVar var_210
  loc_D36408: FLdPr Me
  loc_D3640B: MemLdPr global_64
  loc_D3640E:  = Me.Fields
  loc_D36413: FLdPr var_210
  loc_D36416: from_stack_2 = Me.Item(from_stack_1)
  loc_D3641B: FLdPr var_224
  loc_D3641E:  = Me.Value
  loc_D36423: FLdRfVar var_234
  loc_D36426: ConcatVar var_244
  loc_D3642A: LitVarStr var_254, "','"
  loc_D3642F: ConcatVar var_264
  loc_D36433: LitI4 1
  loc_D36438: LitI4 1
  loc_D3643D: LitVarStr var_284, "yyyy-mm-dd"
  loc_D36442: FStVarCopyObj var_294
  loc_D36445: FLdRfVar var_294
  loc_D36448: FLdRfVar var_A4
  loc_D3644B: CVarRef
  loc_D36450: ImpAdCallI2 Format$(, )
  loc_D36455: CVarStr var_2A4
  loc_D36458: ConcatVar var_2B4
  loc_D3645C: LitVarStr var_2C4, "','"
  loc_D36461: ConcatVar var_2D4
  loc_D36465: LitI4 1
  loc_D3646A: LitI4 1
  loc_D3646F: LitVarStr var_30C, "yyyy-mm-dd"
  loc_D36474: FStVarCopyObj var_31C
  loc_D36477: FLdRfVar var_31C
  loc_D3647A: FLdZeroAd var_2EC
  loc_D3647D: CVarAd
  loc_D36481: ImpAdCallI2 Format$(, )
  loc_D36486: CVarStr var_32C
  loc_D36489: ConcatVar var_33C
  loc_D3648D: LitVarStr var_34C, "',0,'Bimestral','Emitido',"
  loc_D36492: ConcatVar var_35C
  loc_D36496: FLdRfVar var_384
  loc_D36499: FLdRfVar var_374
  loc_D3649C: LitVarStr var_370, "CodiTili"
  loc_D364A1: PopAdLdVar
  loc_D364A2: FLdRfVar var_360
  loc_D364A5: FLdPr Me
  loc_D364A8: MemLdPr global_64
  loc_D364AB:  = Me.Fields
  loc_D364B0: FLdPr var_360
  loc_D364B3: from_stack_2 = Me.Item(from_stack_1)
  loc_D364B8: FLdPr var_374
  loc_D364BB:  = Me.Value
  loc_D364C0: FLdRfVar var_384
  loc_D364C3: ConcatVar var_394
  loc_D364C7: LitVarStr var_3A4, ","
  loc_D364CC: ConcatVar var_3B4
  loc_D364D0: FLdRfVar var_3DC
  loc_D364D3: FLdRfVar var_3CC
  loc_D364D6: LitVarStr var_3C8, "NumeLiqu"
  loc_D364DB: PopAdLdVar
  loc_D364DC: FLdRfVar var_3B8
  loc_D364DF: FLdPr Me
  loc_D364E2: MemLdPr global_64
  loc_D364E5:  = Me.Fields
  loc_D364EA: FLdPr var_3B8
  loc_D364ED: from_stack_2 = Me.Item(from_stack_1)
  loc_D364F2: FLdPr var_3CC
  loc_D364F5:  = Me.Value
  loc_D364FA: FLdRfVar var_3DC
  loc_D364FD: ConcatVar var_3EC
  loc_D36501: LitVarStr var_3FC, ",0,0,"
  loc_D36506: ConcatVar var_40C
  loc_D3650A: LitI4 0
  loc_D3650F: LitI4 -1
  loc_D36514: LitI4 1
  loc_D36519: LitStr "."
  loc_D3651C: LitStr ","
  loc_D3651F: FLdRfVar var_434
  loc_D36522: CStrVarTmp
  loc_D36523: FStStrNoPop var_17C
  loc_D36526: ImpAdCallI2 Replace(, , , , , )
  loc_D3652B: CVarStr var_444
  loc_D3652E: ConcatVar var_454
  loc_D36532: LitVarStr var_464, ",0,0,0,0,0,0,"
  loc_D36537: ConcatVar var_474
  loc_D3653B: LitI4 0
  loc_D36540: LitI4 -1
  loc_D36545: LitI4 1
  loc_D3654A: LitStr "."
  loc_D3654D: LitStr ","
  loc_D36550: FLdRfVar var_49C
  loc_D36553: CStrVarTmp
  loc_D36554: FStStrNoPop var_180
  loc_D36557: ImpAdCallI2 Replace(, , , , , )
  loc_D3655C: CVarStr var_4AC
  loc_D3655F: ConcatVar var_4BC
  loc_D36563: LitVarStr var_4CC, ",'"
  loc_D36568: ConcatVar var_4DC
  loc_D3656C: ImpAdLdI4 MemVar_D9302C
  loc_D3656F: CVarStr var_4EC
  loc_D36572: ConcatVar var_4FC
  loc_D36576: LitVarStr var_50C, "');"
  loc_D3657B: ConcatVar var_51C
  loc_D3657F: CStrVarVal var_184
  loc_D36583: Call EjecutarRsCls(from_stack_1v)
  loc_D36588: FFreeStr var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_D3659D: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_360 = "": var_374 = "": var_3B8 = "": var_3CC = "": var_410 = "": var_424 = "": var_478 = ""
  loc_D365BA: FFreeVar var_4FC = "": var_51C = "": var_1EC = "": var_1CC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_294 = "": var_264 = "": var_2A4 = "": var_2B4 = "": var_2FC = "": var_31C = "": var_2D4 = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3DC = "": var_3EC = "": var_434 = "": var_40C = "": var_444 = "": var_454 = "": var_49C = "": var_474 = "": var_4AC = "": var_4BC = ""
  loc_D365FD: FLdRfVar var_1CC
  loc_D36600: FLdRfVar var_1BC
  loc_D36603: LitVarStr var_1B8, "TipoVenc"
  loc_D36608: PopAdLdVar
  loc_D36609: FLdRfVar var_1A8
  loc_D3660C: FLdPr Me
  loc_D3660F: MemLdPr global_64
  loc_D36612:  = Me.Fields
  loc_D36617: FLdPr var_1A8
  loc_D3661A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3661F: FLdPr var_1BC
  loc_D36622:  = Me.Value
  loc_D36627: FLdRfVar var_1CC
  loc_D3662A: FnCIntVar
  loc_D3662C: LitI2_Byte 2
  loc_D3662E: EqI2
  loc_D3662F: FFreeAd var_1A8 = ""
  loc_D36636: FFree1Var var_1CC = ""
  loc_D36639: BranchF loc_D36653
  loc_D3663C: FLdRfVar var_1A0
  loc_D3663F: FLdI2 iPeriodo
  loc_D36642: FLdRfVar var_8C
  loc_D36645: NewIfNullPr clsnumebole
  loc_D36648: from_stack_2v = clsnumebole.NuevoRegistro(from_stack_1v)
  loc_D3664D: ILdRf var_1A0
  loc_D36650: FStR4 var_9C
  loc_D36653: LitStr "SELECT PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, liqupubl.CodiConc, TipoVenc, TipoLipu, FealLipu, FeveLipu, ImpoLipu, CrafLipu, ExenLipu, DescLipu, GastLipu, TotaLipu, ActuLipu, concepto.TiafConc, DeudLipu FROM liqupubl "
  loc_D36656: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_D36659: ConcatStr
  loc_D3665A: CVarStr var_1FC
  loc_D3665D: FLdRfVar var_1BC
  loc_D36660: LitVarStr var_1B8, "FealLipu"
  loc_D36665: PopAdLdVar
  loc_D36666: FLdRfVar var_1A8
  loc_D36669: FLdPr Me
  loc_D3666C: MemLdPr global_64
  loc_D3666F:  = Me.Fields
  loc_D36674: FLdPr var_1A8
  loc_D36677: from_stack_2 = Me.Item(from_stack_1)
  loc_D3667C: FLdZeroAd var_1BC
  loc_D3667F: CVarAd
  loc_D36683: FLdRfVar var_1EC
  loc_D36686: ImpAdCallFPR4  = Year()
  loc_D3668B: FLdRfVar var_1EC
  loc_D3668E: ConcatVar var_20C
  loc_D36692: LitVarStr var_1DC, " AND concepto.CodiConc = liqupubl.CodiConc"
  loc_D36697: ConcatVar var_234
  loc_D3669B: LitVarStr var_220, " WHERE PeriLiqu = "
  loc_D366A0: ConcatVar var_244
  loc_D366A4: FLdRfVar var_264
  loc_D366A7: FLdRfVar var_224
  loc_D366AA: LitVarStr var_254, "PeriLiqu"
  loc_D366AF: PopAdLdVar
  loc_D366B0: FLdRfVar var_210
  loc_D366B3: FLdPr Me
  loc_D366B6: MemLdPr global_64
  loc_D366B9:  = Me.Fields
  loc_D366BE: FLdPr var_210
  loc_D366C1: from_stack_2 = Me.Item(from_stack_1)
  loc_D366C6: FLdPr var_224
  loc_D366C9:  = Me.Value
  loc_D366CE: FLdRfVar var_264
  loc_D366D1: ConcatVar var_294
  loc_D366D5: LitVarStr var_274, " AND BimeLiqu = "
  loc_D366DA: ConcatVar var_2A4
  loc_D366DE: FLdRfVar var_2B4
  loc_D366E1: FLdRfVar var_2EC
  loc_D366E4: LitVarStr var_284, "BimeLiqu"
  loc_D366E9: PopAdLdVar
  loc_D366EA: FLdRfVar var_2D8
  loc_D366ED: FLdPr Me
  loc_D366F0: MemLdPr global_64
  loc_D366F3:  = Me.Fields
  loc_D366F8: FLdPr var_2D8
  loc_D366FB: from_stack_2 = Me.Item(from_stack_1)
  loc_D36700: FLdPr var_2EC
  loc_D36703:  = Me.Value
  loc_D36708: FLdRfVar var_2B4
  loc_D3670B: ConcatVar var_2D4
  loc_D3670F: LitVarStr var_2C4, " AND CodiTili = "
  loc_D36714: ConcatVar var_2FC
  loc_D36718: FLdRfVar var_31C
  loc_D3671B: FLdRfVar var_374
  loc_D3671E: LitVarStr var_2E8, "CodiTili"
  loc_D36723: PopAdLdVar
  loc_D36724: FLdRfVar var_360
  loc_D36727: FLdPr Me
  loc_D3672A: MemLdPr global_64
  loc_D3672D:  = Me.Fields
  loc_D36732: FLdPr var_360
  loc_D36735: from_stack_2 = Me.Item(from_stack_1)
  loc_D3673A: FLdPr var_374
  loc_D3673D:  = Me.Value
  loc_D36742: FLdRfVar var_31C
  loc_D36745: ConcatVar var_32C
  loc_D36749: LitVarStr var_30C, " AND NumeLiqu = "
  loc_D3674E: ConcatVar var_33C
  loc_D36752: FLdRfVar var_35C
  loc_D36755: FLdRfVar var_3CC
  loc_D36758: LitVarStr var_34C, "NumeLiqu"
  loc_D3675D: PopAdLdVar
  loc_D3675E: FLdRfVar var_3B8
  loc_D36761: FLdPr Me
  loc_D36764: MemLdPr global_64
  loc_D36767:  = Me.Fields
  loc_D3676C: FLdPr var_3B8
  loc_D3676F: from_stack_2 = Me.Item(from_stack_1)
  loc_D36774: FLdPr var_3CC
  loc_D36777:  = Me.Value
  loc_D3677C: FLdRfVar var_35C
  loc_D3677F: ConcatVar var_384
  loc_D36783: LitVarStr var_370, " AND CodiCome = "
  loc_D36788: ConcatVar var_394
  loc_D3678C: FLdRfVar var_3B4
  loc_D3678F: FLdRfVar var_424
  loc_D36792: LitVarStr var_3A4, "CodiCome"
  loc_D36797: PopAdLdVar
  loc_D36798: FLdRfVar var_410
  loc_D3679B: FLdPr Me
  loc_D3679E: MemLdPr global_64
  loc_D367A1:  = Me.Fields
  loc_D367A6: FLdPr var_410
  loc_D367A9: from_stack_2 = Me.Item(from_stack_1)
  loc_D367AE: FLdPr var_424
  loc_D367B1:  = Me.Value
  loc_D367B6: FLdRfVar var_3B4
  loc_D367B9: ConcatVar var_3DC
  loc_D367BD: LitVarStr var_3C8, " AND TipoVenc = "
  loc_D367C2: ConcatVar var_3EC
  loc_D367C6: FLdRfVar var_40C
  loc_D367C9: FLdRfVar var_48C
  loc_D367CC: LitVarStr var_3FC, "TipoVenc"
  loc_D367D1: PopAdLdVar
  loc_D367D2: FLdRfVar var_478
  loc_D367D5: FLdPr Me
  loc_D367D8: MemLdPr global_64
  loc_D367DB:  = Me.Fields
  loc_D367E0: FLdPr var_478
  loc_D367E3: from_stack_2 = Me.Item(from_stack_1)
  loc_D367E8: FLdPr var_48C
  loc_D367EB:  = Me.Value
  loc_D367F0: FLdRfVar var_40C
  loc_D367F3: ConcatVar var_434
  loc_D367F7: LitVarStr var_420, " AND ActuLipu = 'No' "
  loc_D367FC: ConcatVar var_444
  loc_D36800: LitVarStr var_464, " ORDER BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, liqupubl.CodiConc, TipoVenc"
  loc_D36805: ConcatVar var_454
  loc_D36809: CStrVarVal var_164
  loc_D3680D: Call EjecutarRsCls3(from_stack_1v)
  loc_D36812: FFree1Str var_164
  loc_D36815: FFreeAd var_1A8 = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = "": var_3CC = "": var_410 = "": var_424 = "": var_478 = ""
  loc_D36832: FFreeVar var_1CC = "": var_1FC = "": var_1EC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3DC = "": var_3EC = "": var_40C = "": var_434 = "": var_444 = ""
  loc_D36867: FLdRfVar var_1A0
  loc_D3686A: FLdPr Me
  loc_D3686D: MemLdPr global_68
  loc_D36870:  = Me.RecordCount
  loc_D36875: ILdRf var_1A0
  loc_D36878: LitI4 0
  loc_D3687D: GtI4
  loc_D3687E: BranchF loc_D3A204
  loc_D36881: LitI2_Byte 0
  loc_D36883: CR8I2
  loc_D36884: FStFPR8 var_110
  loc_D36887: LitI2_Byte 0
  loc_D36889: CR8I2
  loc_D3688A: FStFPR8 var_118
  loc_D3688D: LitI2_Byte 0
  loc_D3688F: CR8I2
  loc_D36890: FStFPR8 var_120
  loc_D36893: LitI2_Byte 0
  loc_D36895: CR8I2
  loc_D36896: FStFPR8 var_128
  loc_D36899: FLdPr Me
  loc_D3689C: MemLdPr global_68
  loc_D3689F: Me.MoveFirst
  loc_D368A4: FLdRfVar var_1A2
  loc_D368A7: FLdPr Me
  loc_D368AA: MemLdPr global_68
  loc_D368AD:  = Me.EOF
  loc_D368B2: FLdI2 var_1A2
  loc_D368B5: NotI4
  loc_D368B6: BranchF loc_D39E78
  loc_D368B9: FLdRfVar var_1CC
  loc_D368BC: FLdRfVar var_1BC
  loc_D368BF: LitVarStr var_1B8, "TipoLipu"
  loc_D368C4: PopAdLdVar
  loc_D368C5: FLdRfVar var_1A8
  loc_D368C8: FLdPr Me
  loc_D368CB: MemLdPr global_68
  loc_D368CE:  = Me.Fields
  loc_D368D3: FLdPr var_1A8
  loc_D368D6: from_stack_2 = Me.Item(from_stack_1)
  loc_D368DB: FLdPr var_1BC
  loc_D368DE:  = Me.Value
  loc_D368E3: FLdRfVar var_1CC
  loc_D368E6: FStVar var_52C
  loc_D368EA: FFreeAd var_1A8 = ""
  loc_D368F1: FLdRfVar var_52C
  loc_D368F4: LitVarStr var_1B8, "Aforo"
  loc_D368F9: HardType
  loc_D368FA: EqVarBool
  loc_D368FC: BranchF loc_D39A58
  loc_D368FF: FLdRfVar var_1CC
  loc_D36902: FLdRfVar var_1BC
  loc_D36905: LitVarStr var_1B8, "TipoVenc"
  loc_D3690A: PopAdLdVar
  loc_D3690B: FLdRfVar var_1A8
  loc_D3690E: FLdPr Me
  loc_D36911: MemLdPr global_68
  loc_D36914:  = Me.Fields
  loc_D36919: FLdPr var_1A8
  loc_D3691C: from_stack_2 = Me.Item(from_stack_1)
  loc_D36921: FLdPr var_1BC
  loc_D36924:  = Me.Value
  loc_D36929: FLdRfVar var_1CC
  loc_D3692C: FnCIntVar
  loc_D3692E: LitI2_Byte 1
  loc_D36930: EqI2
  loc_D36931: FFreeAd var_1A8 = ""
  loc_D36938: FFree1Var var_1CC = ""
  loc_D3693B: BranchF loc_D386FB
  loc_D3693E: FLdRfVar var_1A0
  loc_D36941: FLdI2 iPeriodo
  loc_D36944: FLdRfVar var_90
  loc_D36947: NewIfNullPr clsctacte
  loc_D3694A: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_D3694F: ILdRf var_1A0
  loc_D36952: FStR4 var_98
  loc_D36955: FLdRfVar var_1CC
  loc_D36958: FLdRfVar var_1BC
  loc_D3695B: LitVarStr var_1B8, "TotaBole"
  loc_D36960: PopAdLdVar
  loc_D36961: FLdRfVar var_1A8
  loc_D36964: FLdPr Me
  loc_D36967: MemLdPr global_64
  loc_D3696A:  = Me.Fields
  loc_D3696F: FLdPr var_1A8
  loc_D36972: from_stack_2 = Me.Item(from_stack_1)
  loc_D36977: FLdPr var_1BC
  loc_D3697A:  = Me.Value
  loc_D3697F: FLdRfVar var_1CC
  loc_D36982: LitVarI2 var_1DC, 0
  loc_D36987: HardType
  loc_D36988: GtVarBool
  loc_D3698A: FFreeAd var_1A8 = ""
  loc_D36991: FFree1Var var_1CC = ""
  loc_D36994: BranchF loc_D36D12
  loc_D36997: FLdRfVar var_1CC
  loc_D3699A: FLdRfVar var_1BC
  loc_D3699D: LitVarStr var_1B8, "TotaLipu"
  loc_D369A2: PopAdLdVar
  loc_D369A3: FLdRfVar var_1A8
  loc_D369A6: FLdPr Me
  loc_D369A9: MemLdPr global_68
  loc_D369AC:  = Me.Fields
  loc_D369B1: FLdPr var_1A8
  loc_D369B4: from_stack_2 = Me.Item(from_stack_1)
  loc_D369B9: FLdPr var_1BC
  loc_D369BC:  = Me.Value
  loc_D369C1: FLdRfVar var_1CC
  loc_D369C4: FnCDblVar
  loc_D369C6: LitI2_Byte 0
  loc_D369C8: CR8I2
  loc_D369C9: GtR4
  loc_D369CA: FFreeAd var_1A8 = ""
  loc_D369D1: FFree1Var var_1CC = ""
  loc_D369D4: BranchF loc_D36D0F
  loc_D369D7: FLdRfVar var_474
  loc_D369DA: FLdRfVar var_534
  loc_D369DD: LitVarStr var_488, "TotaLipu"
  loc_D369E2: PopAdLdVar
  loc_D369E3: FLdRfVar var_530
  loc_D369E6: FLdPr Me
  loc_D369E9: MemLdPr global_68
  loc_D369EC:  = Me.Fields
  loc_D369F1: FLdPr var_530
  loc_D369F4: from_stack_2 = Me.Item(from_stack_1)
  loc_D369F9: FLdPr var_534
  loc_D369FC:  = Me.Value
  loc_D36A01: FLdRfVar var_4DC
  loc_D36A04: FLdRfVar var_53C
  loc_D36A07: LitVarStr var_4EC, "TotaLipu"
  loc_D36A0C: PopAdLdVar
  loc_D36A0D: FLdRfVar var_538
  loc_D36A10: FLdPr Me
  loc_D36A13: MemLdPr global_68
  loc_D36A16:  = Me.Fields
  loc_D36A1B: FLdPr var_538
  loc_D36A1E: from_stack_2 = Me.Item(from_stack_1)
  loc_D36A23: FLdPr var_53C
  loc_D36A26:  = Me.Value
  loc_D36A2B: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiTili, NumeLiqu, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo) "
  loc_D36A2E: LitStr " VALUES ("
  loc_D36A31: ConcatStr
  loc_D36A32: FStStrNoPop var_164
  loc_D36A35: FLdI2 iPeriodo
  loc_D36A38: CStrUI1
  loc_D36A3A: FStStrNoPop var_168
  loc_D36A3D: ConcatStr
  loc_D36A3E: FStStrNoPop var_16C
  loc_D36A41: LitStr ","
  loc_D36A44: ConcatStr
  loc_D36A45: FStStrNoPop var_170
  loc_D36A48: ILdRf var_9C
  loc_D36A4B: CStrI4
  loc_D36A4D: FStStrNoPop var_174
  loc_D36A50: ConcatStr
  loc_D36A51: FStStrNoPop var_178
  loc_D36A54: LitStr ","
  loc_D36A57: ConcatStr
  loc_D36A58: FStStrNoPop var_17C
  loc_D36A5B: FLdI2 iPeriodo
  loc_D36A5E: CStrUI1
  loc_D36A60: FStStrNoPop var_180
  loc_D36A63: ConcatStr
  loc_D36A64: FStStrNoPop var_184
  loc_D36A67: LitStr ","
  loc_D36A6A: ConcatStr
  loc_D36A6B: CVarStr var_1EC
  loc_D36A6E: FLdRfVar var_1CC
  loc_D36A71: FLdRfVar var_1BC
  loc_D36A74: LitVarStr var_1B8, "BimeLiqu"
  loc_D36A79: PopAdLdVar
  loc_D36A7A: FLdRfVar var_1A8
  loc_D36A7D: FLdPr Me
  loc_D36A80: MemLdPr global_68
  loc_D36A83:  = Me.Fields
  loc_D36A88: FLdPr var_1A8
  loc_D36A8B: from_stack_2 = Me.Item(from_stack_1)
  loc_D36A90: FLdPr var_1BC
  loc_D36A93:  = Me.Value
  loc_D36A98: FLdRfVar var_1CC
  loc_D36A9B: ConcatVar var_1FC
  loc_D36A9F: LitVarStr var_1DC, ","
  loc_D36AA4: ConcatVar var_20C
  loc_D36AA8: ILdRf var_98
  loc_D36AAB: CVarI4
  loc_D36AAF: ConcatVar var_234
  loc_D36AB3: LitVarStr var_254, ",1,1,"
  loc_D36AB8: ConcatVar var_244
  loc_D36ABC: FLdRfVar var_264
  loc_D36ABF: FLdRfVar var_224
  loc_D36AC2: LitVarStr var_274, "CodiTili"
  loc_D36AC7: PopAdLdVar
  loc_D36AC8: FLdRfVar var_210
  loc_D36ACB: FLdPr Me
  loc_D36ACE: MemLdPr global_68
  loc_D36AD1:  = Me.Fields
  loc_D36AD6: FLdPr var_210
  loc_D36AD9: from_stack_2 = Me.Item(from_stack_1)
  loc_D36ADE: FLdPr var_224
  loc_D36AE1:  = Me.Value
  loc_D36AE6: FLdRfVar var_264
  loc_D36AE9: ConcatVar var_294
  loc_D36AED: LitVarStr var_284, ","
  loc_D36AF2: ConcatVar var_2A4
  loc_D36AF6: FLdRfVar var_2B4
  loc_D36AF9: FLdRfVar var_2EC
  loc_D36AFC: LitVarStr var_2C4, "NumeLiqu"
  loc_D36B01: PopAdLdVar
  loc_D36B02: FLdRfVar var_2D8
  loc_D36B05: FLdPr Me
  loc_D36B08: MemLdPr global_68
  loc_D36B0B:  = Me.Fields
  loc_D36B10: FLdPr var_2D8
  loc_D36B13: from_stack_2 = Me.Item(from_stack_1)
  loc_D36B18: FLdPr var_2EC
  loc_D36B1B:  = Me.Value
  loc_D36B20: FLdRfVar var_2B4
  loc_D36B23: ConcatVar var_2D4
  loc_D36B27: LitVarStr var_2E8, ",6,'"
  loc_D36B2C: ConcatVar var_2FC
  loc_D36B30: FLdRfVar var_31C
  loc_D36B33: FLdRfVar var_374
  loc_D36B36: LitVarStr var_30C, "CodiCome"
  loc_D36B3B: PopAdLdVar
  loc_D36B3C: FLdRfVar var_360
  loc_D36B3F: FLdPr Me
  loc_D36B42: MemLdPr global_68
  loc_D36B45:  = Me.Fields
  loc_D36B4A: FLdPr var_360
  loc_D36B4D: from_stack_2 = Me.Item(from_stack_1)
  loc_D36B52: FLdPr var_374
  loc_D36B55:  = Me.Value
  loc_D36B5A: FLdRfVar var_31C
  loc_D36B5D: ConcatVar var_32C
  loc_D36B61: LitVarStr var_34C, "','Bimestral',0,0,0,"
  loc_D36B66: ConcatVar var_33C
  loc_D36B6A: FLdRfVar var_35C
  loc_D36B6D: FLdRfVar var_3CC
  loc_D36B70: LitVarStr var_370, "TiafConc"
  loc_D36B75: PopAdLdVar
  loc_D36B76: FLdRfVar var_3B8
  loc_D36B79: FLdPr Me
  loc_D36B7C: MemLdPr global_68
  loc_D36B7F:  = Me.Fields
  loc_D36B84: FLdPr var_3B8
  loc_D36B87: from_stack_2 = Me.Item(from_stack_1)
  loc_D36B8C: FLdPr var_3CC
  loc_D36B8F:  = Me.Value
  loc_D36B94: FLdRfVar var_35C
  loc_D36B97: ConcatVar var_384
  loc_D36B9B: LitVarStr var_3A4, ","
  loc_D36BA0: ConcatVar var_394
  loc_D36BA4: FLdRfVar var_424
  loc_D36BA7: LitVarStr var_3C8, "FealLipu"
  loc_D36BAC: PopAdLdVar
  loc_D36BAD: FLdRfVar var_410
  loc_D36BB0: FLdPr Me
  loc_D36BB3: MemLdPr global_68
  loc_D36BB6:  = Me.Fields
  loc_D36BBB: FLdPr var_410
  loc_D36BBE: from_stack_2 = Me.Item(from_stack_1)
  loc_D36BC3: FLdZeroAd var_424
  loc_D36BC6: CVarAd
  loc_D36BCA: FLdRfVar var_3DC
  loc_D36BCD: ImpAdCallFPR4  = Year()
  loc_D36BD2: FLdRfVar var_3DC
  loc_D36BD5: ConcatVar var_3EC
  loc_D36BD9: LitVarStr var_3FC, ",'"
  loc_D36BDE: ConcatVar var_40C
  loc_D36BE2: FLdRfVar var_434
  loc_D36BE5: FLdRfVar var_48C
  loc_D36BE8: LitVarStr var_420, "CodiConc"
  loc_D36BED: PopAdLdVar
  loc_D36BEE: FLdRfVar var_478
  loc_D36BF1: FLdPr Me
  loc_D36BF4: MemLdPr global_68
  loc_D36BF7:  = Me.Fields
  loc_D36BFC: FLdPr var_478
  loc_D36BFF: from_stack_2 = Me.Item(from_stack_1)
  loc_D36C04: FLdPr var_48C
  loc_D36C07:  = Me.Value
  loc_D36C0C: FLdRfVar var_434
  loc_D36C0F: ConcatVar var_444
  loc_D36C13: LitVarStr var_464, "',"
  loc_D36C18: ConcatVar var_454
  loc_D36C1C: LitI4 0
  loc_D36C21: LitI4 -1
  loc_D36C26: LitI4 1
  loc_D36C2B: LitStr "."
  loc_D36C2E: LitStr ","
  loc_D36C31: FLdRfVar var_474
  loc_D36C34: FnCDblVar
  loc_D36C36: CStrR8
  loc_D36C38: FStStrNoPop var_188
  loc_D36C3B: ImpAdCallI2 Replace(, , , , , )
  loc_D36C40: CVarStr var_49C
  loc_D36C43: ConcatVar var_4AC
  loc_D36C47: LitVarStr var_4CC, ",0,0,0,0,0,0,"
  loc_D36C4C: ConcatVar var_4BC
  loc_D36C50: LitI4 0
  loc_D36C55: LitI4 -1
  loc_D36C5A: LitI4 1
  loc_D36C5F: LitStr "."
  loc_D36C62: LitStr ","
  loc_D36C65: FLdRfVar var_4DC
  loc_D36C68: CStrVarTmp
  loc_D36C69: FStStrNoPop var_18C
  loc_D36C6C: ImpAdCallI2 Replace(, , , , , )
  loc_D36C71: CVarStr var_4FC
  loc_D36C74: ConcatVar var_51C
  loc_D36C78: LitVarStr var_50C, ");"
  loc_D36C7D: ConcatVar var_54C
  loc_D36C81: CStrVarVal var_190
  loc_D36C85: Call EjecutarRsCls(from_stack_1v)
  loc_D36C8A: FFreeStr var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_D36CA5: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = "": var_3CC = "": var_410 = "": var_478 = "": var_48C = "": var_530 = "": var_534 = "": var_538 = ""
  loc_D36CCA: FFreeVar var_4FC = "": var_51C = "": var_54C = "": var_1EC = "": var_1CC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_3B4 = "": var_394 = "": var_3DC = "": var_3EC = "": var_40C = "": var_434 = "": var_444 = "": var_474 = "": var_454 = "": var_49C = "": var_4AC = "": var_4DC = ""
  loc_D36D0F: Branch loc_D36D1A
  loc_D36D12: LitI4 0
  loc_D36D17: FStR4 var_9C
  loc_D36D1A: FLdRfVar var_3CC
  loc_D36D1D: LitVarStr var_56C, "FeveLipu"
  loc_D36D22: PopAdLdVar
  loc_D36D23: FLdRfVar var_3B8
  loc_D36D26: FLdPr Me
  loc_D36D29: MemLdPr global_68
  loc_D36D2C:  = Me.Fields
  loc_D36D31: FLdPr var_3B8
  loc_D36D34: from_stack_2 = Me.Item(from_stack_1)
  loc_D36D39: FLdRfVar var_69C
  loc_D36D3C: FLdRfVar var_53C
  loc_D36D3F: LitVarStr var_68C, "ImpoLipu"
  loc_D36D44: PopAdLdVar
  loc_D36D45: FLdRfVar var_538
  loc_D36D48: FLdPr Me
  loc_D36D4B: MemLdPr global_68
  loc_D36D4E:  = Me.Fields
  loc_D36D53: FLdPr var_538
  loc_D36D56: from_stack_2 = Me.Item(from_stack_1)
  loc_D36D5B: FLdPr var_53C
  loc_D36D5E:  = Me.Value
  loc_D36D63: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D36D66: LitStr " VALUES (6,'"
  loc_D36D69: ConcatStr
  loc_D36D6A: CVarStr var_1EC
  loc_D36D6D: FLdRfVar var_1CC
  loc_D36D70: FLdRfVar var_1BC
  loc_D36D73: LitVarStr var_1B8, "CodiCome"
  loc_D36D78: PopAdLdVar
  loc_D36D79: FLdRfVar var_1A8
  loc_D36D7C: FLdPr Me
  loc_D36D7F: MemLdPr global_68
  loc_D36D82:  = Me.Fields
  loc_D36D87: FLdPr var_1A8
  loc_D36D8A: from_stack_2 = Me.Item(from_stack_1)
  loc_D36D8F: FLdPr var_1BC
  loc_D36D92:  = Me.Value
  loc_D36D97: FLdRfVar var_1CC
  loc_D36D9A: ConcatVar var_1FC
  loc_D36D9E: LitVarStr var_1DC, "',"
  loc_D36DA3: ConcatVar var_20C
  loc_D36DA7: FLdI2 iPeriodo
  loc_D36DAA: CVarI2 var_220
  loc_D36DAD: ConcatVar var_234
  loc_D36DB1: LitVarStr var_254, ","
  loc_D36DB6: ConcatVar var_244
  loc_D36DBA: FLdRfVar var_264
  loc_D36DBD: FLdRfVar var_224
  loc_D36DC0: LitVarStr var_274, "BimeLiqu"
  loc_D36DC5: PopAdLdVar
  loc_D36DC6: FLdRfVar var_210
  loc_D36DC9: FLdPr Me
  loc_D36DCC: MemLdPr global_68
  loc_D36DCF:  = Me.Fields
  loc_D36DD4: FLdPr var_210
  loc_D36DD7: from_stack_2 = Me.Item(from_stack_1)
  loc_D36DDC: FLdPr var_224
  loc_D36DDF:  = Me.Value
  loc_D36DE4: FLdRfVar var_264
  loc_D36DE7: ConcatVar var_294
  loc_D36DEB: LitVarStr var_284, ","
  loc_D36DF0: ConcatVar var_2A4
  loc_D36DF4: ILdRf var_98
  loc_D36DF7: CVarI4
  loc_D36DFB: ConcatVar var_2B4
  loc_D36DFF: LitVarStr var_2E8, ",1,"
  loc_D36E04: ConcatVar var_2D4
  loc_D36E08: FLdRfVar var_2FC
  loc_D36E0B: FLdRfVar var_2EC
  loc_D36E0E: LitVarStr var_30C, "CodiTili"
  loc_D36E13: PopAdLdVar
  loc_D36E14: FLdRfVar var_2D8
  loc_D36E17: FLdPr Me
  loc_D36E1A: MemLdPr global_68
  loc_D36E1D:  = Me.Fields
  loc_D36E22: FLdPr var_2D8
  loc_D36E25: from_stack_2 = Me.Item(from_stack_1)
  loc_D36E2A: FLdPr var_2EC
  loc_D36E2D:  = Me.Value
  loc_D36E32: FLdRfVar var_2FC
  loc_D36E35: ConcatVar var_31C
  loc_D36E39: LitVarStr var_34C, ","
  loc_D36E3E: ConcatVar var_32C
  loc_D36E42: FLdRfVar var_33C
  loc_D36E45: FLdRfVar var_374
  loc_D36E48: LitVarStr var_370, "NumeLiqu"
  loc_D36E4D: PopAdLdVar
  loc_D36E4E: FLdRfVar var_360
  loc_D36E51: FLdPr Me
  loc_D36E54: MemLdPr global_68
  loc_D36E57:  = Me.Fields
  loc_D36E5C: FLdPr var_360
  loc_D36E5F: from_stack_2 = Me.Item(from_stack_1)
  loc_D36E64: FLdPr var_374
  loc_D36E67:  = Me.Value
  loc_D36E6C: FLdRfVar var_33C
  loc_D36E6F: ConcatVar var_35C
  loc_D36E73: LitVarStr var_3A4, ","
  loc_D36E78: ConcatVar var_384
  loc_D36E7C: LitVarI2 var_394, 0
  loc_D36E81: FLdRfVar iPeriodo
  loc_D36E84: CVarRef
  loc_D36E89: ILdRf var_9C
  loc_D36E8C: LitI4 0
  loc_D36E91: NeI4
  loc_D36E92: CVarBoolI2 var_3C8
  loc_D36E96: FLdRfVar var_3B4
  loc_D36E99: ImpAdCallFPR4  = IIf(, , )
  loc_D36E9E: FLdRfVar var_3B4
  loc_D36EA1: ConcatVar var_3DC
  loc_D36EA5: LitVarStr var_464, ","
  loc_D36EAA: ConcatVar var_3EC
  loc_D36EAE: ILdRf var_9C
  loc_D36EB1: CVarI4
  loc_D36EB5: ConcatVar var_40C
  loc_D36EB9: LitVarStr var_4CC, ",'Bimestral','"
  loc_D36EBE: ConcatVar var_434
  loc_D36EC2: LitI4 1
  loc_D36EC7: LitI4 1
  loc_D36ECC: LitVarStr var_50C, "yyyy-mm-dd"
  loc_D36ED1: FStVarCopyObj var_444
  loc_D36ED4: FLdRfVar var_444
  loc_D36ED7: FLdRfVar var_A4
  loc_D36EDA: CVarRef
  loc_D36EDF: ImpAdCallI2 Format$(, )
  loc_D36EE4: CVarStr var_454
  loc_D36EE7: ConcatVar var_474
  loc_D36EEB: LitVarStr var_55C, "','"
  loc_D36EF0: ConcatVar var_49C
  loc_D36EF4: LitI4 1
  loc_D36EF9: LitI4 1
  loc_D36EFE: LitVarStr var_57C, "yyyy-mm-dd"
  loc_D36F03: FStVarCopyObj var_4BC
  loc_D36F06: FLdRfVar var_4BC
  loc_D36F09: FLdZeroAd var_3CC
  loc_D36F0C: CVarAd
  loc_D36F10: ImpAdCallI2 Format$(, )
  loc_D36F15: CVarStr var_4DC
  loc_D36F18: ConcatVar var_4FC
  loc_D36F1C: LitVarStr var_58C, "',Null,0,"
  loc_D36F21: ConcatVar var_51C
  loc_D36F25: FLdRfVar var_424
  loc_D36F28: LitVarStr var_59C, "FealLipu"
  loc_D36F2D: PopAdLdVar
  loc_D36F2E: FLdRfVar var_410
  loc_D36F31: FLdPr Me
  loc_D36F34: MemLdPr global_68
  loc_D36F37:  = Me.Fields
  loc_D36F3C: FLdPr var_410
  loc_D36F3F: from_stack_2 = Me.Item(from_stack_1)
  loc_D36F44: FLdZeroAd var_424
  loc_D36F47: CVarAd
  loc_D36F4B: FLdRfVar var_5AC
  loc_D36F4E: ImpAdCallFPR4  = Year()
  loc_D36F53: FLdRfVar var_5AC
  loc_D36F56: ConcatVar var_5BC
  loc_D36F5A: LitVarStr var_5CC, ",'"
  loc_D36F5F: ConcatVar var_5DC
  loc_D36F63: FLdRfVar var_5FC
  loc_D36F66: FLdRfVar var_48C
  loc_D36F69: LitVarStr var_5EC, "CodiConc"
  loc_D36F6E: PopAdLdVar
  loc_D36F6F: FLdRfVar var_478
  loc_D36F72: FLdPr Me
  loc_D36F75: MemLdPr global_68
  loc_D36F78:  = Me.Fields
  loc_D36F7D: FLdPr var_478
  loc_D36F80: from_stack_2 = Me.Item(from_stack_1)
  loc_D36F85: FLdPr var_48C
  loc_D36F88:  = Me.Value
  loc_D36F8D: FLdRfVar var_5FC
  loc_D36F90: ConcatVar var_60C
  loc_D36F94: LitVarStr var_61C, "',0,0,0,"
  loc_D36F99: ConcatVar var_62C
  loc_D36F9D: FLdRfVar var_64C
  loc_D36FA0: FLdRfVar var_534
  loc_D36FA3: LitVarStr var_63C, "TiafConc"
  loc_D36FA8: PopAdLdVar
  loc_D36FA9: FLdRfVar var_530
  loc_D36FAC: FLdPr Me
  loc_D36FAF: MemLdPr global_68
  loc_D36FB2:  = Me.Fields
  loc_D36FB7: FLdPr var_530
  loc_D36FBA: from_stack_2 = Me.Item(from_stack_1)
  loc_D36FBF: FLdPr var_534
  loc_D36FC2:  = Me.Value
  loc_D36FC7: FLdRfVar var_64C
  loc_D36FCA: ConcatVar var_65C
  loc_D36FCE: LitVarStr var_66C, ",'','',0,0,'',"
  loc_D36FD3: ConcatVar var_67C
  loc_D36FD7: LitI4 0
  loc_D36FDC: LitI4 -1
  loc_D36FE1: LitI4 1
  loc_D36FE6: LitStr "."
  loc_D36FE9: LitStr ","
  loc_D36FEC: FLdRfVar var_69C
  loc_D36FEF: CStrVarTmp
  loc_D36FF0: FStStrNoPop var_164
  loc_D36FF3: ImpAdCallI2 Replace(, , , , , )
  loc_D36FF8: CVarStr var_6AC
  loc_D36FFB: ConcatVar var_6BC
  loc_D36FFF: LitVarStr var_6CC, ",0,'"
  loc_D37004: ConcatVar var_6DC
  loc_D37008: ImpAdLdI4 MemVar_D9302C
  loc_D3700B: CVarStr var_6EC
  loc_D3700E: ConcatVar var_6FC
  loc_D37012: LitVarStr var_70C, "');"
  loc_D37017: ConcatVar var_71C
  loc_D3701B: CStrVarVal var_168
  loc_D3701F: Call EjecutarRsCls(from_stack_1v)
  loc_D37024: FFreeStr var_164 = ""
  loc_D3702B: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = "": var_410 = "": var_478 = "": var_48C = "": var_530 = "": var_534 = "": var_538 = ""
  loc_D3704E: FFreeVar var_4DC = "": var_4FC = "": var_54C = "": var_51C = "": var_5AC = "": var_5BC = "": var_5DC = "": var_5FC = "": var_60C = "": var_62C = "": var_64C = "": var_65C = "": var_69C = "": var_67C = "": var_6AC = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_1EC = "": var_1CC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = "": var_33C = "": var_35C = "": var_3C8 = "": var_394 = "": var_384 = "": var_3B4 = "": var_3DC = "": var_3EC = "": var_40C = "": var_444 = "": var_434 = "": var_454 = "": var_474 = "": var_4AC = "": var_4BC = ""
  loc_D370B3: FLdRfVar var_1CC
  loc_D370B6: FLdRfVar var_1BC
  loc_D370B9: LitVarStr var_1B8, "DescLipu"
  loc_D370BE: PopAdLdVar
  loc_D370BF: FLdRfVar var_1A8
  loc_D370C2: FLdPr Me
  loc_D370C5: MemLdPr global_68
  loc_D370C8:  = Me.Fields
  loc_D370CD: FLdPr var_1A8
  loc_D370D0: from_stack_2 = Me.Item(from_stack_1)
  loc_D370D5: FLdPr var_1BC
  loc_D370D8:  = Me.Value
  loc_D370DD: FLdRfVar var_1CC
  loc_D370E0: LitVarI2 var_1DC, 0
  loc_D370E5: HardType
  loc_D370E6: GtVarBool
  loc_D370E8: FFreeAd var_1A8 = ""
  loc_D370EF: FFree1Var var_1CC = ""
  loc_D370F2: BranchF loc_D37472
  loc_D370F5: FLdFPR8 var_B4
  loc_D370F8: CVarR8
  loc_D370FC: FLdRfVar var_1CC
  loc_D370FF: FLdRfVar var_1BC
  loc_D37102: LitVarStr var_1B8, "DescLipu"
  loc_D37107: PopAdLdVar
  loc_D37108: FLdRfVar var_1A8
  loc_D3710B: FLdPr Me
  loc_D3710E: MemLdPr global_68
  loc_D37111:  = Me.Fields
  loc_D37116: FLdPr var_1A8
  loc_D37119: from_stack_2 = Me.Item(from_stack_1)
  loc_D3711E: FLdPr var_1BC
  loc_D37121:  = Me.Value
  loc_D37126: FLdRfVar var_1CC
  loc_D37129: AddVar var_1EC
  loc_D3712D: CR4Var
  loc_D3712E: FStFPR8 var_B4
  loc_D37131: FFreeAd var_1A8 = ""
  loc_D37138: FFreeVar var_1CC = ""
  loc_D3713F: FLdRfVar var_62C
  loc_D37142: FLdRfVar var_48C
  loc_D37145: LitVarStr var_63C, "DescLipu"
  loc_D3714A: PopAdLdVar
  loc_D3714B: FLdRfVar var_478
  loc_D3714E: FLdPr Me
  loc_D37151: MemLdPr global_68
  loc_D37154:  = Me.Fields
  loc_D37159: FLdPr var_478
  loc_D3715C: from_stack_2 = Me.Item(from_stack_1)
  loc_D37161: FLdPr var_48C
  loc_D37164:  = Me.Value
  loc_D37169: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D3716C: LitStr " VALUES (6,'"
  loc_D3716F: ConcatStr
  loc_D37170: CVarStr var_1EC
  loc_D37173: FLdRfVar var_1CC
  loc_D37176: FLdRfVar var_1BC
  loc_D37179: LitVarStr var_1B8, "CodiCome"
  loc_D3717E: PopAdLdVar
  loc_D3717F: FLdRfVar var_1A8
  loc_D37182: FLdPr Me
  loc_D37185: MemLdPr global_68
  loc_D37188:  = Me.Fields
  loc_D3718D: FLdPr var_1A8
  loc_D37190: from_stack_2 = Me.Item(from_stack_1)
  loc_D37195: FLdPr var_1BC
  loc_D37198:  = Me.Value
  loc_D3719D: FLdRfVar var_1CC
  loc_D371A0: ConcatVar var_1FC
  loc_D371A4: LitVarStr var_1DC, "',"
  loc_D371A9: ConcatVar var_20C
  loc_D371AD: FLdI2 iPeriodo
  loc_D371B0: CVarI2 var_220
  loc_D371B3: ConcatVar var_234
  loc_D371B7: LitVarStr var_254, ","
  loc_D371BC: ConcatVar var_244
  loc_D371C0: FLdRfVar var_264
  loc_D371C3: FLdRfVar var_224
  loc_D371C6: LitVarStr var_274, "BimeLiqu"
  loc_D371CB: PopAdLdVar
  loc_D371CC: FLdRfVar var_210
  loc_D371CF: FLdPr Me
  loc_D371D2: MemLdPr global_68
  loc_D371D5:  = Me.Fields
  loc_D371DA: FLdPr var_210
  loc_D371DD: from_stack_2 = Me.Item(from_stack_1)
  loc_D371E2: FLdPr var_224
  loc_D371E5:  = Me.Value
  loc_D371EA: FLdRfVar var_264
  loc_D371ED: ConcatVar var_294
  loc_D371F1: LitVarStr var_284, ","
  loc_D371F6: ConcatVar var_2A4
  loc_D371FA: ILdRf var_98
  loc_D371FD: CVarI4
  loc_D37201: ConcatVar var_2B4
  loc_D37205: LitVarStr var_2E8, ",2,"
  loc_D3720A: ConcatVar var_2D4
  loc_D3720E: FLdRfVar var_2FC
  loc_D37211: FLdRfVar var_2EC
  loc_D37214: LitVarStr var_30C, "CodiTili"
  loc_D37219: PopAdLdVar
  loc_D3721A: FLdRfVar var_2D8
  loc_D3721D: FLdPr Me
  loc_D37220: MemLdPr global_68
  loc_D37223:  = Me.Fields
  loc_D37228: FLdPr var_2D8
  loc_D3722B: from_stack_2 = Me.Item(from_stack_1)
  loc_D37230: FLdPr var_2EC
  loc_D37233:  = Me.Value
  loc_D37238: FLdRfVar var_2FC
  loc_D3723B: ConcatVar var_31C
  loc_D3723F: LitVarStr var_34C, ","
  loc_D37244: ConcatVar var_32C
  loc_D37248: FLdRfVar var_33C
  loc_D3724B: FLdRfVar var_374
  loc_D3724E: LitVarStr var_370, "NumeLiqu"
  loc_D37253: PopAdLdVar
  loc_D37254: FLdRfVar var_360
  loc_D37257: FLdPr Me
  loc_D3725A: MemLdPr global_68
  loc_D3725D:  = Me.Fields
  loc_D37262: FLdPr var_360
  loc_D37265: from_stack_2 = Me.Item(from_stack_1)
  loc_D3726A: FLdPr var_374
  loc_D3726D:  = Me.Value
  loc_D37272: FLdRfVar var_33C
  loc_D37275: ConcatVar var_35C
  loc_D37279: LitVarStr var_3A4, ","
  loc_D3727E: ConcatVar var_384
  loc_D37282: LitVarI2 var_394, 0
  loc_D37287: FLdRfVar iPeriodo
  loc_D3728A: CVarRef
  loc_D3728F: ILdRf var_9C
  loc_D37292: LitI4 0
  loc_D37297: NeI4
  loc_D37298: CVarBoolI2 var_3C8
  loc_D3729C: FLdRfVar var_3B4
  loc_D3729F: ImpAdCallFPR4  = IIf(, , )
  loc_D372A4: FLdRfVar var_3B4
  loc_D372A7: ConcatVar var_3DC
  loc_D372AB: LitVarStr var_464, ","
  loc_D372B0: ConcatVar var_3EC
  loc_D372B4: ILdRf var_9C
  loc_D372B7: CVarI4
  loc_D372BB: ConcatVar var_40C
  loc_D372BF: LitVarStr var_4CC, ",'Bimestral','"
  loc_D372C4: ConcatVar var_434
  loc_D372C8: LitI4 1
  loc_D372CD: LitI4 1
  loc_D372D2: LitVarStr var_50C, "yyyy-mm-dd"
  loc_D372D7: FStVarCopyObj var_444
  loc_D372DA: FLdRfVar var_444
  loc_D372DD: FLdRfVar var_A4
  loc_D372E0: CVarRef
  loc_D372E5: ImpAdCallI2 Format$(, )
  loc_D372EA: CVarStr var_454
  loc_D372ED: ConcatVar var_474
  loc_D372F1: LitVarStr var_55C, "','"
  loc_D372F6: ConcatVar var_49C
  loc_D372FA: LitI4 1
  loc_D372FF: LitI4 1
  loc_D37304: LitVarStr var_57C, "yyyy-mm-dd"
  loc_D37309: FStVarCopyObj var_4AC
  loc_D3730C: FLdRfVar var_4AC
  loc_D3730F: FLdRfVar var_A4
  loc_D37312: CVarRef
  loc_D37317: ImpAdCallI2 Format$(, )
  loc_D3731C: CVarStr var_4BC
  loc_D3731F: ConcatVar var_4DC
  loc_D37323: LitVarStr var_58C, "',Null,0,"
  loc_D37328: ConcatVar var_4FC
  loc_D3732C: FLdRfVar var_3CC
  loc_D3732F: LitVarStr var_59C, "FealLipu"
  loc_D37334: PopAdLdVar
  loc_D37335: FLdRfVar var_3B8
  loc_D37338: FLdPr Me
  loc_D3733B: MemLdPr global_68
  loc_D3733E:  = Me.Fields
  loc_D37343: FLdPr var_3B8
  loc_D37346: from_stack_2 = Me.Item(from_stack_1)
  loc_D3734B: FLdZeroAd var_3CC
  loc_D3734E: CVarAd
  loc_D37352: FLdRfVar var_54C
  loc_D37355: ImpAdCallFPR4  = Year()
  loc_D3735A: FLdRfVar var_54C
  loc_D3735D: ConcatVar var_5AC
  loc_D37361: LitVarStr var_5CC, ",'"
  loc_D37366: ConcatVar var_5BC
  loc_D3736A: FLdRfVar var_5DC
  loc_D3736D: FLdRfVar var_424
  loc_D37370: LitVarStr var_5EC, "CodiConc"
  loc_D37375: PopAdLdVar
  loc_D37376: FLdRfVar var_410
  loc_D37379: FLdPr Me
  loc_D3737C: MemLdPr global_68
  loc_D3737F:  = Me.Fields
  loc_D37384: FLdPr var_410
  loc_D37387: from_stack_2 = Me.Item(from_stack_1)
  loc_D3738C: FLdPr var_424
  loc_D3738F:  = Me.Value
  loc_D37394: FLdRfVar var_5DC
  loc_D37397: ConcatVar var_5FC
  loc_D3739B: LitVarStr var_61C, "',0,0,0,6,'','',0,0,'',0,"
  loc_D373A0: ConcatVar var_60C
  loc_D373A4: LitI4 0
  loc_D373A9: LitI4 -1
  loc_D373AE: LitI4 1
  loc_D373B3: LitStr "."
  loc_D373B6: LitStr ","
  loc_D373B9: FLdRfVar var_62C
  loc_D373BC: CStrVarTmp
  loc_D373BD: FStStrNoPop var_164
  loc_D373C0: ImpAdCallI2 Replace(, , , , , )
  loc_D373C5: CVarStr var_64C
  loc_D373C8: ConcatVar var_65C
  loc_D373CC: LitVarStr var_66C, ",'"
  loc_D373D1: ConcatVar var_67C
  loc_D373D5: ImpAdLdI4 MemVar_D9302C
  loc_D373D8: CVarStr var_68C
  loc_D373DB: ConcatVar var_69C
  loc_D373DF: LitVarStr var_6CC, "');"
  loc_D373E4: ConcatVar var_6AC
  loc_D373E8: CStrVarVal var_168
  loc_D373EC: Call EjecutarRsCls(from_stack_1v)
  loc_D373F1: FFreeStr var_164 = ""
  loc_D373F8: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = "": var_410 = "": var_424 = "": var_478 = ""
  loc_D37415: FFreeVar var_4DC = "": var_51C = "": var_4FC = "": var_54C = "": var_5AC = "": var_5BC = "": var_5DC = "": var_5FC = "": var_62C = "": var_60C = "": var_64C = "": var_65C = "": var_67C = "": var_69C = "": var_6AC = "": var_1EC = "": var_1CC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = "": var_33C = "": var_35C = "": var_3C8 = "": var_394 = "": var_384 = "": var_3B4 = "": var_3DC = "": var_3EC = "": var_40C = "": var_444 = "": var_434 = "": var_454 = "": var_474 = "": var_4AC = "": var_49C = ""
  loc_D37472: FLdRfVar var_1CC
  loc_D37475: FLdRfVar var_1BC
  loc_D37478: LitVarStr var_1B8, "ExenLipu"
  loc_D3747D: PopAdLdVar
  loc_D3747E: FLdRfVar var_1A8
  loc_D37481: FLdPr Me
  loc_D37484: MemLdPr global_68
  loc_D37487:  = Me.Fields
  loc_D3748C: FLdPr var_1A8
  loc_D3748F: from_stack_2 = Me.Item(from_stack_1)
  loc_D37494: FLdPr var_1BC
  loc_D37497:  = Me.Value
  loc_D3749C: FLdRfVar var_1CC
  loc_D3749F: FnCDblVar
  loc_D374A1: LitI2_Byte 0
  loc_D374A3: CR8I2
  loc_D374A4: GtR4
  loc_D374A5: FFreeAd var_1A8 = ""
  loc_D374AC: FFree1Var var_1CC = ""
  loc_D374AF: BranchF loc_D3782F
  loc_D374B2: FLdFPR8 var_BC
  loc_D374B5: CVarR8
  loc_D374B9: FLdRfVar var_1CC
  loc_D374BC: FLdRfVar var_1BC
  loc_D374BF: LitVarStr var_1B8, "ExenLipu"
  loc_D374C4: PopAdLdVar
  loc_D374C5: FLdRfVar var_1A8
  loc_D374C8: FLdPr Me
  loc_D374CB: MemLdPr global_68
  loc_D374CE:  = Me.Fields
  loc_D374D3: FLdPr var_1A8
  loc_D374D6: from_stack_2 = Me.Item(from_stack_1)
  loc_D374DB: FLdPr var_1BC
  loc_D374DE:  = Me.Value
  loc_D374E3: FLdRfVar var_1CC
  loc_D374E6: AddVar var_1EC
  loc_D374EA: CR4Var
  loc_D374EB: FStFPR8 var_BC
  loc_D374EE: FFreeAd var_1A8 = ""
  loc_D374F5: FFreeVar var_1CC = ""
  loc_D374FC: FLdRfVar var_62C
  loc_D374FF: FLdRfVar var_48C
  loc_D37502: LitVarStr var_63C, "ExenLipu"
  loc_D37507: PopAdLdVar
  loc_D37508: FLdRfVar var_478
  loc_D3750B: FLdPr Me
  loc_D3750E: MemLdPr global_68
  loc_D37511:  = Me.Fields
  loc_D37516: FLdPr var_478
  loc_D37519: from_stack_2 = Me.Item(from_stack_1)
  loc_D3751E: FLdPr var_48C
  loc_D37521:  = Me.Value
  loc_D37526: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D37529: LitStr " VALUES (6,'"
  loc_D3752C: ConcatStr
  loc_D3752D: CVarStr var_1EC
  loc_D37530: FLdRfVar var_1CC
  loc_D37533: FLdRfVar var_1BC
  loc_D37536: LitVarStr var_1B8, "CodiCome"
  loc_D3753B: PopAdLdVar
  loc_D3753C: FLdRfVar var_1A8
  loc_D3753F: FLdPr Me
  loc_D37542: MemLdPr global_68
  loc_D37545:  = Me.Fields
  loc_D3754A: FLdPr var_1A8
  loc_D3754D: from_stack_2 = Me.Item(from_stack_1)
  loc_D37552: FLdPr var_1BC
  loc_D37555:  = Me.Value
  loc_D3755A: FLdRfVar var_1CC
  loc_D3755D: ConcatVar var_1FC
  loc_D37561: LitVarStr var_1DC, "',"
  loc_D37566: ConcatVar var_20C
  loc_D3756A: FLdI2 iPeriodo
  loc_D3756D: CVarI2 var_220
  loc_D37570: ConcatVar var_234
  loc_D37574: LitVarStr var_254, ","
  loc_D37579: ConcatVar var_244
  loc_D3757D: FLdRfVar var_264
  loc_D37580: FLdRfVar var_224
  loc_D37583: LitVarStr var_274, "BimeLiqu"
  loc_D37588: PopAdLdVar
  loc_D37589: FLdRfVar var_210
  loc_D3758C: FLdPr Me
  loc_D3758F: MemLdPr global_68
  loc_D37592:  = Me.Fields
  loc_D37597: FLdPr var_210
  loc_D3759A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3759F: FLdPr var_224
  loc_D375A2:  = Me.Value
  loc_D375A7: FLdRfVar var_264
  loc_D375AA: ConcatVar var_294
  loc_D375AE: LitVarStr var_284, ","
  loc_D375B3: ConcatVar var_2A4
  loc_D375B7: ILdRf var_98
  loc_D375BA: CVarI4
  loc_D375BE: ConcatVar var_2B4
  loc_D375C2: LitVarStr var_2E8, ",2,"
  loc_D375C7: ConcatVar var_2D4
  loc_D375CB: FLdRfVar var_2FC
  loc_D375CE: FLdRfVar var_2EC
  loc_D375D1: LitVarStr var_30C, "CodiTili"
  loc_D375D6: PopAdLdVar
  loc_D375D7: FLdRfVar var_2D8
  loc_D375DA: FLdPr Me
  loc_D375DD: MemLdPr global_68
  loc_D375E0:  = Me.Fields
  loc_D375E5: FLdPr var_2D8
  loc_D375E8: from_stack_2 = Me.Item(from_stack_1)
  loc_D375ED: FLdPr var_2EC
  loc_D375F0:  = Me.Value
  loc_D375F5: FLdRfVar var_2FC
  loc_D375F8: ConcatVar var_31C
  loc_D375FC: LitVarStr var_34C, ","
  loc_D37601: ConcatVar var_32C
  loc_D37605: FLdRfVar var_33C
  loc_D37608: FLdRfVar var_374
  loc_D3760B: LitVarStr var_370, "NumeLiqu"
  loc_D37610: PopAdLdVar
  loc_D37611: FLdRfVar var_360
  loc_D37614: FLdPr Me
  loc_D37617: MemLdPr global_68
  loc_D3761A:  = Me.Fields
  loc_D3761F: FLdPr var_360
  loc_D37622: from_stack_2 = Me.Item(from_stack_1)
  loc_D37627: FLdPr var_374
  loc_D3762A:  = Me.Value
  loc_D3762F: FLdRfVar var_33C
  loc_D37632: ConcatVar var_35C
  loc_D37636: LitVarStr var_3A4, ","
  loc_D3763B: ConcatVar var_384
  loc_D3763F: LitVarI2 var_394, 0
  loc_D37644: FLdRfVar iPeriodo
  loc_D37647: CVarRef
  loc_D3764C: ILdRf var_9C
  loc_D3764F: LitI4 0
  loc_D37654: NeI4
  loc_D37655: CVarBoolI2 var_3C8
  loc_D37659: FLdRfVar var_3B4
  loc_D3765C: ImpAdCallFPR4  = IIf(, , )
  loc_D37661: FLdRfVar var_3B4
  loc_D37664: ConcatVar var_3DC
  loc_D37668: LitVarStr var_464, ","
  loc_D3766D: ConcatVar var_3EC
  loc_D37671: ILdRf var_9C
  loc_D37674: CVarI4
  loc_D37678: ConcatVar var_40C
  loc_D3767C: LitVarStr var_4CC, ",'Bimestral','"
  loc_D37681: ConcatVar var_434
  loc_D37685: LitI4 1
  loc_D3768A: LitI4 1
  loc_D3768F: LitVarStr var_50C, "yyyy-mm-dd"
  loc_D37694: FStVarCopyObj var_444
  loc_D37697: FLdRfVar var_444
  loc_D3769A: FLdRfVar var_A4
  loc_D3769D: CVarRef
  loc_D376A2: ImpAdCallI2 Format$(, )
  loc_D376A7: CVarStr var_454
  loc_D376AA: ConcatVar var_474
  loc_D376AE: LitVarStr var_55C, "','"
  loc_D376B3: ConcatVar var_49C
  loc_D376B7: LitI4 1
  loc_D376BC: LitI4 1
  loc_D376C1: LitVarStr var_57C, "yyyy-mm-dd"
  loc_D376C6: FStVarCopyObj var_4AC
  loc_D376C9: FLdRfVar var_4AC
  loc_D376CC: FLdRfVar var_A4
  loc_D376CF: CVarRef
  loc_D376D4: ImpAdCallI2 Format$(, )
  loc_D376D9: CVarStr var_4BC
  loc_D376DC: ConcatVar var_4DC
  loc_D376E0: LitVarStr var_58C, "',Null,0,"
  loc_D376E5: ConcatVar var_4FC
  loc_D376E9: FLdRfVar var_3CC
  loc_D376EC: LitVarStr var_59C, "FealLipu"
  loc_D376F1: PopAdLdVar
  loc_D376F2: FLdRfVar var_3B8
  loc_D376F5: FLdPr Me
  loc_D376F8: MemLdPr global_68
  loc_D376FB:  = Me.Fields
  loc_D37700: FLdPr var_3B8
  loc_D37703: from_stack_2 = Me.Item(from_stack_1)
  loc_D37708: FLdZeroAd var_3CC
  loc_D3770B: CVarAd
  loc_D3770F: FLdRfVar var_54C
  loc_D37712: ImpAdCallFPR4  = Year()
  loc_D37717: FLdRfVar var_54C
  loc_D3771A: ConcatVar var_5AC
  loc_D3771E: LitVarStr var_5CC, ",'"
  loc_D37723: ConcatVar var_5BC
  loc_D37727: FLdRfVar var_5DC
  loc_D3772A: FLdRfVar var_424
  loc_D3772D: LitVarStr var_5EC, "CodiConc"
  loc_D37732: PopAdLdVar
  loc_D37733: FLdRfVar var_410
  loc_D37736: FLdPr Me
  loc_D37739: MemLdPr global_68
  loc_D3773C:  = Me.Fields
  loc_D37741: FLdPr var_410
  loc_D37744: from_stack_2 = Me.Item(from_stack_1)
  loc_D37749: FLdPr var_424
  loc_D3774C:  = Me.Value
  loc_D37751: FLdRfVar var_5DC
  loc_D37754: ConcatVar var_5FC
  loc_D37758: LitVarStr var_61C, "',0,0,0,15,'','',0,0,'',0,"
  loc_D3775D: ConcatVar var_60C
  loc_D37761: LitI4 0
  loc_D37766: LitI4 -1
  loc_D3776B: LitI4 1
  loc_D37770: LitStr "."
  loc_D37773: LitStr ","
  loc_D37776: FLdRfVar var_62C
  loc_D37779: CStrVarTmp
  loc_D3777A: FStStrNoPop var_164
  loc_D3777D: ImpAdCallI2 Replace(, , , , , )
  loc_D37782: CVarStr var_64C
  loc_D37785: ConcatVar var_65C
  loc_D37789: LitVarStr var_66C, ",'"
  loc_D3778E: ConcatVar var_67C
  loc_D37792: ImpAdLdI4 MemVar_D9302C
  loc_D37795: CVarStr var_68C
  loc_D37798: ConcatVar var_69C
  loc_D3779C: LitVarStr var_6CC, "');"
  loc_D377A1: ConcatVar var_6AC
  loc_D377A5: CStrVarVal var_168
  loc_D377A9: Call EjecutarRsCls(from_stack_1v)
  loc_D377AE: FFreeStr var_164 = ""
  loc_D377B5: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = "": var_410 = "": var_424 = "": var_478 = ""
  loc_D377D2: FFreeVar var_4DC = "": var_51C = "": var_4FC = "": var_54C = "": var_5AC = "": var_5BC = "": var_5DC = "": var_5FC = "": var_62C = "": var_60C = "": var_64C = "": var_65C = "": var_67C = "": var_69C = "": var_6AC = "": var_1EC = "": var_1CC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = "": var_33C = "": var_35C = "": var_3C8 = "": var_394 = "": var_384 = "": var_3B4 = "": var_3DC = "": var_3EC = "": var_40C = "": var_444 = "": var_434 = "": var_454 = "": var_474 = "": var_4AC = "": var_49C = ""
  loc_D3782F: FLdRfVar var_1CC
  loc_D37832: FLdRfVar var_1BC
  loc_D37835: LitVarStr var_1B8, "CrafLipu"
  loc_D3783A: PopAdLdVar
  loc_D3783B: FLdRfVar var_1A8
  loc_D3783E: FLdPr Me
  loc_D37841: MemLdPr global_68
  loc_D37844:  = Me.Fields
  loc_D37849: FLdPr var_1A8
  loc_D3784C: from_stack_2 = Me.Item(from_stack_1)
  loc_D37851: FLdPr var_1BC
  loc_D37854:  = Me.Value
  loc_D37859: FLdRfVar var_1CC
  loc_D3785C: LitVarI2 var_1DC, 0
  loc_D37861: HardType
  loc_D37862: GtVarBool
  loc_D37864: FFreeAd var_1A8 = ""
  loc_D3786B: FFree1Var var_1CC = ""
  loc_D3786E: BranchF loc_D38590
  loc_D37871: FLdRfVar var_62C
  loc_D37874: FLdRfVar var_48C
  loc_D37877: LitVarStr var_63C, "CrafLipu"
  loc_D3787C: PopAdLdVar
  loc_D3787D: FLdRfVar var_478
  loc_D37880: FLdPr Me
  loc_D37883: MemLdPr global_68
  loc_D37886:  = Me.Fields
  loc_D3788B: FLdPr var_478
  loc_D3788E: from_stack_2 = Me.Item(from_stack_1)
  loc_D37893: FLdPr var_48C
  loc_D37896:  = Me.Value
  loc_D3789B: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, CodiUsua) "
  loc_D3789E: LitStr " VALUES (6,'"
  loc_D378A1: ConcatStr
  loc_D378A2: CVarStr var_1EC
  loc_D378A5: FLdRfVar var_1CC
  loc_D378A8: FLdRfVar var_1BC
  loc_D378AB: LitVarStr var_1B8, "CodiCome"
  loc_D378B0: PopAdLdVar
  loc_D378B1: FLdRfVar var_1A8
  loc_D378B4: FLdPr Me
  loc_D378B7: MemLdPr global_68
  loc_D378BA:  = Me.Fields
  loc_D378BF: FLdPr var_1A8
  loc_D378C2: from_stack_2 = Me.Item(from_stack_1)
  loc_D378C7: FLdPr var_1BC
  loc_D378CA:  = Me.Value
  loc_D378CF: FLdRfVar var_1CC
  loc_D378D2: ConcatVar var_1FC
  loc_D378D6: LitVarStr var_1DC, "',"
  loc_D378DB: ConcatVar var_20C
  loc_D378DF: FLdI2 iPeriodo
  loc_D378E2: CVarI2 var_220
  loc_D378E5: ConcatVar var_234
  loc_D378E9: LitVarStr var_254, ","
  loc_D378EE: ConcatVar var_244
  loc_D378F2: FLdRfVar var_264
  loc_D378F5: FLdRfVar var_224
  loc_D378F8: LitVarStr var_274, "BimeLiqu"
  loc_D378FD: PopAdLdVar
  loc_D378FE: FLdRfVar var_210
  loc_D37901: FLdPr Me
  loc_D37904: MemLdPr global_68
  loc_D37907:  = Me.Fields
  loc_D3790C: FLdPr var_210
  loc_D3790F: from_stack_2 = Me.Item(from_stack_1)
  loc_D37914: FLdPr var_224
  loc_D37917:  = Me.Value
  loc_D3791C: FLdRfVar var_264
  loc_D3791F: ConcatVar var_294
  loc_D37923: LitVarStr var_284, ","
  loc_D37928: ConcatVar var_2A4
  loc_D3792C: ILdRf var_98
  loc_D3792F: CVarI4
  loc_D37933: ConcatVar var_2B4
  loc_D37937: LitVarStr var_2E8, ",3,"
  loc_D3793C: ConcatVar var_2D4
  loc_D37940: FLdRfVar var_2FC
  loc_D37943: FLdRfVar var_2EC
  loc_D37946: LitVarStr var_30C, "CodiTili"
  loc_D3794B: PopAdLdVar
  loc_D3794C: FLdRfVar var_2D8
  loc_D3794F: FLdPr Me
  loc_D37952: MemLdPr global_68
  loc_D37955:  = Me.Fields
  loc_D3795A: FLdPr var_2D8
  loc_D3795D: from_stack_2 = Me.Item(from_stack_1)
  loc_D37962: FLdPr var_2EC
  loc_D37965:  = Me.Value
  loc_D3796A: FLdRfVar var_2FC
  loc_D3796D: ConcatVar var_31C
  loc_D37971: LitVarStr var_34C, ","
  loc_D37976: ConcatVar var_32C
  loc_D3797A: FLdRfVar var_33C
  loc_D3797D: FLdRfVar var_374
  loc_D37980: LitVarStr var_370, "NumeLiqu"
  loc_D37985: PopAdLdVar
  loc_D37986: FLdRfVar var_360
  loc_D37989: FLdPr Me
  loc_D3798C: MemLdPr global_68
  loc_D3798F:  = Me.Fields
  loc_D37994: FLdPr var_360
  loc_D37997: from_stack_2 = Me.Item(from_stack_1)
  loc_D3799C: FLdPr var_374
  loc_D3799F:  = Me.Value
  loc_D379A4: FLdRfVar var_33C
  loc_D379A7: ConcatVar var_35C
  loc_D379AB: LitVarStr var_3A4, ","
  loc_D379B0: ConcatVar var_384
  loc_D379B4: LitVarI2 var_394, 0
  loc_D379B9: FLdRfVar iPeriodo
  loc_D379BC: CVarRef
  loc_D379C1: ILdRf var_9C
  loc_D379C4: LitI4 0
  loc_D379C9: NeI4
  loc_D379CA: CVarBoolI2 var_3C8
  loc_D379CE: FLdRfVar var_3B4
  loc_D379D1: ImpAdCallFPR4  = IIf(, , )
  loc_D379D6: FLdRfVar var_3B4
  loc_D379D9: ConcatVar var_3DC
  loc_D379DD: LitVarStr var_464, ","
  loc_D379E2: ConcatVar var_3EC
  loc_D379E6: ILdRf var_9C
  loc_D379E9: CVarI4
  loc_D379ED: ConcatVar var_40C
  loc_D379F1: LitVarStr var_4CC, ",'Mensual','"
  loc_D379F6: ConcatVar var_434
  loc_D379FA: LitI4 1
  loc_D379FF: LitI4 1
  loc_D37A04: LitVarStr var_50C, "yyyy-mm-dd"
  loc_D37A09: FStVarCopyObj var_444
  loc_D37A0C: FLdRfVar var_444
  loc_D37A0F: FLdRfVar var_A4
  loc_D37A12: CVarRef
  loc_D37A17: ImpAdCallI2 Format$(, )
  loc_D37A1C: CVarStr var_454
  loc_D37A1F: ConcatVar var_474
  loc_D37A23: LitVarStr var_55C, "','"
  loc_D37A28: ConcatVar var_49C
  loc_D37A2C: LitI4 1
  loc_D37A31: LitI4 1
  loc_D37A36: LitVarStr var_57C, "yyyy-mm-dd"
  loc_D37A3B: FStVarCopyObj var_4AC
  loc_D37A3E: FLdRfVar var_4AC
  loc_D37A41: FLdRfVar var_A4
  loc_D37A44: CVarRef
  loc_D37A49: ImpAdCallI2 Format$(, )
  loc_D37A4E: CVarStr var_4BC
  loc_D37A51: ConcatVar var_4DC
  loc_D37A55: LitVarStr var_58C, "',Null,0,"
  loc_D37A5A: ConcatVar var_4FC
  loc_D37A5E: FLdRfVar var_3CC
  loc_D37A61: LitVarStr var_59C, "FealLipu"
  loc_D37A66: PopAdLdVar
  loc_D37A67: FLdRfVar var_3B8
  loc_D37A6A: FLdPr Me
  loc_D37A6D: MemLdPr global_68
  loc_D37A70:  = Me.Fields
  loc_D37A75: FLdPr var_3B8
  loc_D37A78: from_stack_2 = Me.Item(from_stack_1)
  loc_D37A7D: FLdZeroAd var_3CC
  loc_D37A80: CVarAd
  loc_D37A84: FLdRfVar var_54C
  loc_D37A87: ImpAdCallFPR4  = Year()
  loc_D37A8C: FLdRfVar var_54C
  loc_D37A8F: ConcatVar var_5AC
  loc_D37A93: LitVarStr var_5CC, ",'"
  loc_D37A98: ConcatVar var_5BC
  loc_D37A9C: FLdRfVar var_5DC
  loc_D37A9F: FLdRfVar var_424
  loc_D37AA2: LitVarStr var_5EC, "CodiConc"
  loc_D37AA7: PopAdLdVar
  loc_D37AA8: FLdRfVar var_410
  loc_D37AAB: FLdPr Me
  loc_D37AAE: MemLdPr global_68
  loc_D37AB1:  = Me.Fields
  loc_D37AB6: FLdPr var_410
  loc_D37AB9: from_stack_2 = Me.Item(from_stack_1)
  loc_D37ABE: FLdPr var_424
  loc_D37AC1:  = Me.Value
  loc_D37AC6: FLdRfVar var_5DC
  loc_D37AC9: ConcatVar var_5FC
  loc_D37ACD: LitVarStr var_61C, "',0,0,0,23,'','',0,0,'',0,"
  loc_D37AD2: ConcatVar var_60C
  loc_D37AD6: LitI4 0
  loc_D37ADB: LitI4 -1
  loc_D37AE0: LitI4 1
  loc_D37AE5: LitStr "."
  loc_D37AE8: LitStr ","
  loc_D37AEB: FLdRfVar var_62C
  loc_D37AEE: CStrVarTmp
  loc_D37AEF: FStStrNoPop var_164
  loc_D37AF2: ImpAdCallI2 Replace(, , , , , )
  loc_D37AF7: CVarStr var_64C
  loc_D37AFA: ConcatVar var_65C
  loc_D37AFE: LitVarStr var_66C, ",'"
  loc_D37B03: ConcatVar var_67C
  loc_D37B07: ImpAdLdI4 MemVar_D9302C
  loc_D37B0A: CVarStr var_68C
  loc_D37B0D: ConcatVar var_69C
  loc_D37B11: LitVarStr var_6CC, "');"
  loc_D37B16: ConcatVar var_6AC
  loc_D37B1A: CStrVarVal var_168
  loc_D37B1E: Call EjecutarRsCls(from_stack_1v)
  loc_D37B23: FFreeStr var_164 = ""
  loc_D37B2A: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = "": var_410 = "": var_424 = "": var_478 = ""
  loc_D37B47: FFreeVar var_4DC = "": var_51C = "": var_4FC = "": var_54C = "": var_5AC = "": var_5BC = "": var_5DC = "": var_5FC = "": var_62C = "": var_60C = "": var_64C = "": var_65C = "": var_67C = "": var_69C = "": var_6AC = "": var_1EC = "": var_1CC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = "": var_33C = "": var_35C = "": var_3C8 = "": var_394 = "": var_384 = "": var_3B4 = "": var_3DC = "": var_3EC = "": var_40C = "": var_444 = "": var_434 = "": var_454 = "": var_474 = "": var_4AC = "": var_49C = ""
  loc_D37BA4: FLdRfVar var_1BC
  loc_D37BA7: LitVarStr var_1B8, "CrafLipu"
  loc_D37BAC: PopAdLdVar
  loc_D37BAD: FLdRfVar var_1A8
  loc_D37BB0: FLdPr Me
  loc_D37BB3: MemLdPr global_68
  loc_D37BB6:  = Me.Fields
  loc_D37BBB: FLdPr var_1A8
  loc_D37BBE: from_stack_2 = Me.Item(from_stack_1)
  loc_D37BC3: LitI4 2
  loc_D37BC8: FLdZeroAd var_1BC
  loc_D37BCB: CVarAd
  loc_D37BCF: FLdRfVar var_1EC
  loc_D37BD2: ImpAdCallFPR4  = Round(, )
  loc_D37BD7: FLdRfVar var_1EC
  loc_D37BDA: CR4Var
  loc_D37BDB: FStFPR8 var_F0
  loc_D37BDE: FFree1Ad var_1A8
  loc_D37BE1: FFreeVar var_1CC = ""
  loc_D37BE8: FLdRfVar var_1BC
  loc_D37BEB: LitVarStr var_1B8, "CrafLipu"
  loc_D37BF0: PopAdLdVar
  loc_D37BF1: FLdRfVar var_1A8
  loc_D37BF4: FLdPr Me
  loc_D37BF7: MemLdPr global_68
  loc_D37BFA:  = Me.Fields
  loc_D37BFF: FLdPr var_1A8
  loc_D37C02: from_stack_2 = Me.Item(from_stack_1)
  loc_D37C07: LitI4 2
  loc_D37C0C: FLdZeroAd var_1BC
  loc_D37C0F: CVarAd
  loc_D37C13: FLdRfVar var_1EC
  loc_D37C16: ImpAdCallFPR4  = Round(, )
  loc_D37C1B: FLdRfVar var_1EC
  loc_D37C1E: CR4Var
  loc_D37C1F: FStFPR8 var_108
  loc_D37C22: FFree1Ad var_1A8
  loc_D37C25: FFreeVar var_1CC = ""
  loc_D37C2C: LitStr "SELECT CodiOfic, CuenCtct, NumeCred, SUM(DebeCred)-SUM(CredCred) as SaldCred FROM creditos WHERE CodiOfic = 6"
  loc_D37C2F: LitStr " AND CuenCtct = '"
  loc_D37C32: ConcatStr
  loc_D37C33: CVarStr var_1EC
  loc_D37C36: FLdRfVar var_1CC
  loc_D37C39: FLdRfVar var_1BC
  loc_D37C3C: LitVarStr var_1B8, "CodiCome"
  loc_D37C41: PopAdLdVar
  loc_D37C42: FLdRfVar var_1A8
  loc_D37C45: FLdPr Me
  loc_D37C48: MemLdPr global_68
  loc_D37C4B:  = Me.Fields
  loc_D37C50: FLdPr var_1A8
  loc_D37C53: from_stack_2 = Me.Item(from_stack_1)
  loc_D37C58: FLdPr var_1BC
  loc_D37C5B:  = Me.Value
  loc_D37C60: FLdRfVar var_1CC
  loc_D37C63: ConcatVar var_1FC
  loc_D37C67: LitVarStr var_1DC, "'"
  loc_D37C6C: ConcatVar var_20C
  loc_D37C70: LitVarStr var_220, " GROUP BY CodiOfic, CuenCtct, NumeCred"
  loc_D37C75: ConcatVar var_234
  loc_D37C79: CStrVarVal var_164
  loc_D37C7D: Call EjecutarRsCls4(from_stack_1v)
  loc_D37C82: FFree1Str var_164
  loc_D37C85: FFreeAd var_1A8 = ""
  loc_D37C8C: FFreeVar var_1EC = "": var_1CC = "": var_1FC = "": var_20C = ""
  loc_D37C99: FLdRfVar var_1A0
  loc_D37C9C: FLdPr Me
  loc_D37C9F: MemLdPr global_72
  loc_D37CA2:  = Me.RecordCount
  loc_D37CA7: ILdRf var_1A0
  loc_D37CAA: LitI4 0
  loc_D37CAF: GtI4
  loc_D37CB0: BranchF loc_D38590
  loc_D37CB3: FLdPr Me
  loc_D37CB6: MemLdPr global_72
  loc_D37CB9: Me.MoveFirst
  loc_D37CBE: FLdRfVar var_1A2
  loc_D37CC1: FLdPr Me
  loc_D37CC4: MemLdPr global_72
  loc_D37CC7:  = Me.EOF
  loc_D37CCC: FLdI2 var_1A2
  loc_D37CCF: NotI4
  loc_D37CD0: BranchF loc_D38590
  loc_D37CD3: FLdFPR8 var_F0
  loc_D37CD6: LitI2_Byte 0
  loc_D37CD8: CR8I2
  loc_D37CD9: GtR4
  loc_D37CDA: CVarBoolI2 var_220
  loc_D37CDE: FLdRfVar var_1CC
  loc_D37CE1: FLdRfVar var_1BC
  loc_D37CE4: LitVarStr var_1B8, "SaldCred"
  loc_D37CE9: PopAdLdVar
  loc_D37CEA: FLdRfVar var_1A8
  loc_D37CED: FLdPr Me
  loc_D37CF0: MemLdPr global_72
  loc_D37CF3:  = Me.Fields
  loc_D37CF8: FLdPr var_1A8
  loc_D37CFB: from_stack_2 = Me.Item(from_stack_1)
  loc_D37D00: FLdPr var_1BC
  loc_D37D03:  = Me.Value
  loc_D37D08: FLdRfVar var_1CC
  loc_D37D0B: LitVarI2 var_1DC, 0
  loc_D37D10: HardType
  loc_D37D11: GtVar var_1EC
  loc_D37D15: AndVar var_1FC
  loc_D37D19: CBoolVarNull
  loc_D37D1B: FFreeAd var_1A8 = ""
  loc_D37D22: FFreeVar var_1CC = ""
  loc_D37D29: BranchF loc_D38582
  loc_D37D2C: FLdRfVar var_1CC
  loc_D37D2F: FLdRfVar var_1BC
  loc_D37D32: LitVarStr var_1B8, "SaldCred"
  loc_D37D37: PopAdLdVar
  loc_D37D38: FLdRfVar var_1A8
  loc_D37D3B: FLdPr Me
  loc_D37D3E: MemLdPr global_72
  loc_D37D41:  = Me.Fields
  loc_D37D46: FLdPr var_1A8
  loc_D37D49: from_stack_2 = Me.Item(from_stack_1)
  loc_D37D4E: FLdPr var_1BC
  loc_D37D51:  = Me.Value
  loc_D37D56: FLdRfVar var_1CC
  loc_D37D59: FLdFPR8 var_F0
  loc_D37D5C: CVarR8
  loc_D37D60: HardType
  loc_D37D61: LeVarBool
  loc_D37D63: FFreeAd var_1A8 = ""
  loc_D37D6A: FFree1Var var_1CC = ""
  loc_D37D6D: BranchF loc_D381B2
  loc_D37D70: FLdFPR8 var_F0
  loc_D37D73: CVarR8
  loc_D37D77: FLdRfVar var_1CC
  loc_D37D7A: FLdRfVar var_1BC
  loc_D37D7D: LitVarStr var_1B8, "SaldCred"
  loc_D37D82: PopAdLdVar
  loc_D37D83: FLdRfVar var_1A8
  loc_D37D86: FLdPr Me
  loc_D37D89: MemLdPr global_72
  loc_D37D8C:  = Me.Fields
  loc_D37D91: FLdPr var_1A8
  loc_D37D94: from_stack_2 = Me.Item(from_stack_1)
  loc_D37D99: FLdPr var_1BC
  loc_D37D9C:  = Me.Value
  loc_D37DA1: FLdRfVar var_1CC
  loc_D37DA4: SubVar var_1EC
  loc_D37DA8: CR4Var
  loc_D37DA9: FStFPR8 var_F0
  loc_D37DAC: FFreeAd var_1A8 = ""
  loc_D37DB3: FFree1Var var_1CC = ""
  loc_D37DB6: FLdRfVar var_1CC
  loc_D37DB9: FLdRfVar var_1BC
  loc_D37DBC: LitVarStr var_1B8, "CodiOfic"
  loc_D37DC1: PopAdLdVar
  loc_D37DC2: FLdRfVar var_1A8
  loc_D37DC5: FLdPr Me
  loc_D37DC8: MemLdPr global_72
  loc_D37DCB:  = Me.Fields
  loc_D37DD0: FLdPr var_1A8
  loc_D37DD3: from_stack_2 = Me.Item(from_stack_1)
  loc_D37DD8: FLdPr var_1BC
  loc_D37DDB:  = Me.Value
  loc_D37DE0: FLdRfVar var_1EC
  loc_D37DE3: FLdRfVar var_224
  loc_D37DE6: LitVarStr var_1DC, "CuenCtct"
  loc_D37DEB: PopAdLdVar
  loc_D37DEC: FLdRfVar var_210
  loc_D37DEF: FLdPr Me
  loc_D37DF2: MemLdPr global_72
  loc_D37DF5:  = Me.Fields
  loc_D37DFA: FLdPr var_210
  loc_D37DFD: from_stack_2 = Me.Item(from_stack_1)
  loc_D37E02: FLdPr var_224
  loc_D37E05:  = Me.Value
  loc_D37E0A: FLdRfVar var_1FC
  loc_D37E0D: FLdRfVar var_2EC
  loc_D37E10: LitVarStr var_220, "NumeCred"
  loc_D37E15: PopAdLdVar
  loc_D37E16: FLdRfVar var_2D8
  loc_D37E19: FLdPr Me
  loc_D37E1C: MemLdPr global_72
  loc_D37E1F:  = Me.Fields
  loc_D37E24: FLdPr var_2D8
  loc_D37E27: from_stack_2 = Me.Item(from_stack_1)
  loc_D37E2C: FLdPr var_2EC
  loc_D37E2F:  = Me.Value
  loc_D37E34: FLdRfVar var_1A2
  loc_D37E37: FLdRfVar var_1FC
  loc_D37E3A: CI4Var
  loc_D37E3C: FLdRfVar var_1EC
  loc_D37E3F: CStrVarTmp
  loc_D37E40: FStStrNoPop var_164
  loc_D37E43: FLdRfVar var_1CC
  loc_D37E46: CUI1Var
  loc_D37E48: FLdRfVar GeneracionCuentaCorriente
  loc_D37E4B: NewIfNullPr clscreditos
  loc_D37E4E: from_stack_4v = clscreditos.BuscaMoviCred(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D37E53: FLdI2 var_1A2
  loc_D37E56: CR8I2
  loc_D37E57: FStFPR8 var_F8
  loc_D37E5A: FFree1Str var_164
  loc_D37E5D: FFreeAd var_1A8 = "": var_210 = "": var_2D8 = "": var_1BC = "": var_224 = ""
  loc_D37E6C: FFreeVar var_1CC = "": var_1EC = ""
  loc_D37E75: FLdFPR8 var_F8
  loc_D37E78: LitI2_Byte 1
  loc_D37E7A: CR8I2
  loc_D37E7B: AddR8
  loc_D37E7C: FStFPR8 var_F8
  loc_D37E7F: FLdRfVar var_60C
  loc_D37E82: FLdRfVar var_534
  loc_D37E85: LitVarStr var_61C, "SaldCred"
  loc_D37E8A: PopAdLdVar
  loc_D37E8B: FLdRfVar var_530
  loc_D37E8E: FLdPr Me
  loc_D37E91: MemLdPr global_72
  loc_D37E94:  = Me.Fields
  loc_D37E99: FLdPr var_530
  loc_D37E9C: from_stack_2 = Me.Item(from_stack_1)
  loc_D37EA1: FLdPr var_534
  loc_D37EA4:  = Me.Value
  loc_D37EA9: LitStr " INSERT INTO creditos (CodiOfic,CuenCtct,NumeCred,MoviCred,PeriCtct,BimeCtct,NumeCtct,MoviCtct,CodiTili,NumeLiqu,PeriBole,NumeBole,FealCtct,PeriInfo,CodiConc,CodiTimo,ExpeCred,DetaCred,DebeCred,CredCred,CodiUsua) "
  loc_D37EAC: LitStr " VALUES (6,'"
  loc_D37EAF: ConcatStr
  loc_D37EB0: CVarStr var_1EC
  loc_D37EB3: FLdRfVar var_1CC
  loc_D37EB6: FLdRfVar var_1BC
  loc_D37EB9: LitVarStr var_1B8, "CodiCome"
  loc_D37EBE: PopAdLdVar
  loc_D37EBF: FLdRfVar var_1A8
  loc_D37EC2: FLdPr Me
  loc_D37EC5: MemLdPr global_68
  loc_D37EC8:  = Me.Fields
  loc_D37ECD: FLdPr var_1A8
  loc_D37ED0: from_stack_2 = Me.Item(from_stack_1)
  loc_D37ED5: FLdPr var_1BC
  loc_D37ED8:  = Me.Value
  loc_D37EDD: FLdRfVar var_1CC
  loc_D37EE0: ConcatVar var_1FC
  loc_D37EE4: LitVarStr var_1DC, "',"
  loc_D37EE9: ConcatVar var_20C
  loc_D37EED: FLdRfVar var_234
  loc_D37EF0: FLdRfVar var_224
  loc_D37EF3: LitVarStr var_220, "NumeCred"
  loc_D37EF8: PopAdLdVar
  loc_D37EF9: FLdRfVar var_210
  loc_D37EFC: FLdPr Me
  loc_D37EFF: MemLdPr global_72
  loc_D37F02:  = Me.Fields
  loc_D37F07: FLdPr var_210
  loc_D37F0A: from_stack_2 = Me.Item(from_stack_1)
  loc_D37F0F: FLdPr var_224
  loc_D37F12:  = Me.Value
  loc_D37F17: FLdRfVar var_234
  loc_D37F1A: ConcatVar var_244
  loc_D37F1E: LitVarStr var_254, ","
  loc_D37F23: ConcatVar var_264
  loc_D37F27: FLdFPR8 var_F8
  loc_D37F2A: CVarR8
  loc_D37F2E: ConcatVar var_294
  loc_D37F32: LitVarStr var_284, ","
  loc_D37F37: ConcatVar var_2A4
  loc_D37F3B: FLdI2 iPeriodo
  loc_D37F3E: CVarI2 var_2C4
  loc_D37F41: ConcatVar var_2B4
  loc_D37F45: LitVarStr var_2E8, ","
  loc_D37F4A: ConcatVar var_2D4
  loc_D37F4E: FLdRfVar var_2FC
  loc_D37F51: FLdRfVar var_2EC
  loc_D37F54: LitVarStr var_30C, "BimeLiqu"
  loc_D37F59: PopAdLdVar
  loc_D37F5A: FLdRfVar var_2D8
  loc_D37F5D: FLdPr Me
  loc_D37F60: MemLdPr global_68
  loc_D37F63:  = Me.Fields
  loc_D37F68: FLdPr var_2D8
  loc_D37F6B: from_stack_2 = Me.Item(from_stack_1)
  loc_D37F70: FLdPr var_2EC
  loc_D37F73:  = Me.Value
  loc_D37F78: FLdRfVar var_2FC
  loc_D37F7B: ConcatVar var_31C
  loc_D37F7F: LitVarStr var_34C, ","
  loc_D37F84: ConcatVar var_32C
  loc_D37F88: ILdRf var_98
  loc_D37F8B: CVarI4
  loc_D37F8F: ConcatVar var_33C
  loc_D37F93: LitVarStr var_3A4, ",3,"
  loc_D37F98: ConcatVar var_35C
  loc_D37F9C: FLdRfVar var_384
  loc_D37F9F: FLdRfVar var_374
  loc_D37FA2: LitVarStr var_3C8, "CodiTili"
  loc_D37FA7: PopAdLdVar
  loc_D37FA8: FLdRfVar var_360
  loc_D37FAB: FLdPr Me
  loc_D37FAE: MemLdPr global_68
  loc_D37FB1:  = Me.Fields
  loc_D37FB6: FLdPr var_360
  loc_D37FB9: from_stack_2 = Me.Item(from_stack_1)
  loc_D37FBE: FLdPr var_374
  loc_D37FC1:  = Me.Value
  loc_D37FC6: FLdRfVar var_384
  loc_D37FC9: ConcatVar var_394
  loc_D37FCD: LitVarStr var_3FC, ","
  loc_D37FD2: ConcatVar var_3B4
  loc_D37FD6: FLdRfVar var_3DC
  loc_D37FD9: FLdRfVar var_3CC
  loc_D37FDC: LitVarStr var_420, "NumeLiqu"
  loc_D37FE1: PopAdLdVar
  loc_D37FE2: FLdRfVar var_3B8
  loc_D37FE5: FLdPr Me
  loc_D37FE8: MemLdPr global_68
  loc_D37FEB:  = Me.Fields
  loc_D37FF0: FLdPr var_3B8
  loc_D37FF3: from_stack_2 = Me.Item(from_stack_1)
  loc_D37FF8: FLdPr var_3CC
  loc_D37FFB:  = Me.Value
  loc_D38000: FLdRfVar var_3DC
  loc_D38003: ConcatVar var_3EC
  loc_D38007: LitVarStr var_464, ","
  loc_D3800C: ConcatVar var_40C
  loc_D38010: FLdI2 iPeriodo
  loc_D38013: CVarI2 var_488
  loc_D38016: ConcatVar var_434
  loc_D3801A: LitVarStr var_4CC, ","
  loc_D3801F: ConcatVar var_444
  loc_D38023: ILdRf var_9C
  loc_D38026: CVarI4
  loc_D3802A: ConcatVar var_454
  loc_D3802E: LitVarStr var_50C, ",'"
  loc_D38033: ConcatVar var_474
  loc_D38037: LitI4 1
  loc_D3803C: LitI4 1
  loc_D38041: LitVarStr var_56C, "yyyy-mm-dd"
  loc_D38046: FStVarCopyObj var_49C
  loc_D38049: FLdRfVar var_49C
  loc_D3804C: FLdRfVar var_A4
  loc_D3804F: CVarRef
  loc_D38054: ImpAdCallI2 Format$(, )
  loc_D38059: CVarStr var_4AC
  loc_D3805C: ConcatVar var_4BC
  loc_D38060: LitVarStr var_57C, "',"
  loc_D38065: ConcatVar var_4DC
  loc_D38069: FLdRfVar var_424
  loc_D3806C: LitVarStr var_58C, "FealLipu"
  loc_D38071: PopAdLdVar
  loc_D38072: FLdRfVar var_410
  loc_D38075: FLdPr Me
  loc_D38078: MemLdPr global_68
  loc_D3807B:  = Me.Fields
  loc_D38080: FLdPr var_410
  loc_D38083: from_stack_2 = Me.Item(from_stack_1)
  loc_D38088: FLdZeroAd var_424
  loc_D3808B: CVarAd
  loc_D3808F: FLdRfVar var_51C
  loc_D38092: ImpAdCallFPR4  = Year()
  loc_D38097: FLdRfVar var_51C
  loc_D3809A: ConcatVar var_54C
  loc_D3809E: LitVarStr var_59C, ",'"
  loc_D380A3: ConcatVar var_5AC
  loc_D380A7: FLdRfVar var_5BC
  loc_D380AA: FLdRfVar var_48C
  loc_D380AD: LitVarStr var_5CC, "CodiConc"
  loc_D380B2: PopAdLdVar
  loc_D380B3: FLdRfVar var_478
  loc_D380B6: FLdPr Me
  loc_D380B9: MemLdPr global_68
  loc_D380BC:  = Me.Fields
  loc_D380C1: FLdPr var_478
  loc_D380C4: from_stack_2 = Me.Item(from_stack_1)
  loc_D380C9: FLdPr var_48C
  loc_D380CC:  = Me.Value
  loc_D380D1: FLdRfVar var_5BC
  loc_D380D4: ConcatVar var_5DC
  loc_D380D8: LitVarStr var_5EC, "',23,'','',0,"
  loc_D380DD: ConcatVar var_5FC
  loc_D380E1: LitI4 0
  loc_D380E6: LitI4 -1
  loc_D380EB: LitI4 1
  loc_D380F0: LitStr "."
  loc_D380F3: LitStr ","
  loc_D380F6: FLdRfVar var_60C
  loc_D380F9: CStrVarTmp
  loc_D380FA: FStStrNoPop var_164
  loc_D380FD: ImpAdCallI2 Replace(, , , , , )
  loc_D38102: CVarStr var_62C
  loc_D38105: ConcatVar var_64C
  loc_D38109: LitVarStr var_63C, ",'"
  loc_D3810E: ConcatVar var_65C
  loc_D38112: ImpAdLdI4 MemVar_D9302C
  loc_D38115: CVarStr var_66C
  loc_D38118: ConcatVar var_67C
  loc_D3811C: LitVarStr var_68C, "');"
  loc_D38121: ConcatVar var_69C
  loc_D38125: CStrVarVal var_168
  loc_D38129: Call EjecutarRsCls(from_stack_1v)
  loc_D3812E: FFreeStr var_164 = ""
  loc_D38135: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = "": var_3CC = "": var_410 = "": var_478 = "": var_48C = "": var_530 = ""
  loc_D38156: FFreeVar var_4DC = "": var_51C = "": var_54C = "": var_5AC = "": var_5BC = "": var_5DC = "": var_60C = "": var_5FC = "": var_62C = "": var_64C = "": var_65C = "": var_67C = "": var_69C = "": var_1EC = "": var_1CC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3DC = "": var_3EC = "": var_40C = "": var_434 = "": var_444 = "": var_454 = "": var_49C = "": var_474 = "": var_4AC = "": var_4BC = ""
  loc_D381AF: Branch loc_D38582
  loc_D381B2: FLdRfVar var_1CC
  loc_D381B5: FLdRfVar var_1BC
  loc_D381B8: LitVarStr var_1B8, "CodiOfic"
  loc_D381BD: PopAdLdVar
  loc_D381BE: FLdRfVar var_1A8
  loc_D381C1: FLdPr Me
  loc_D381C4: MemLdPr global_72
  loc_D381C7:  = Me.Fields
  loc_D381CC: FLdPr var_1A8
  loc_D381CF: from_stack_2 = Me.Item(from_stack_1)
  loc_D381D4: FLdPr var_1BC
  loc_D381D7:  = Me.Value
  loc_D381DC: FLdRfVar var_1EC
  loc_D381DF: FLdRfVar var_224
  loc_D381E2: LitVarStr var_1DC, "CuenCtct"
  loc_D381E7: PopAdLdVar
  loc_D381E8: FLdRfVar var_210
  loc_D381EB: FLdPr Me
  loc_D381EE: MemLdPr global_72
  loc_D381F1:  = Me.Fields
  loc_D381F6: FLdPr var_210
  loc_D381F9: from_stack_2 = Me.Item(from_stack_1)
  loc_D381FE: FLdPr var_224
  loc_D38201:  = Me.Value
  loc_D38206: FLdRfVar var_1FC
  loc_D38209: FLdRfVar var_2EC
  loc_D3820C: LitVarStr var_220, "NumeCred"
  loc_D38211: PopAdLdVar
  loc_D38212: FLdRfVar var_2D8
  loc_D38215: FLdPr Me
  loc_D38218: MemLdPr global_72
  loc_D3821B:  = Me.Fields
  loc_D38220: FLdPr var_2D8
  loc_D38223: from_stack_2 = Me.Item(from_stack_1)
  loc_D38228: FLdPr var_2EC
  loc_D3822B:  = Me.Value
  loc_D38230: FLdRfVar var_1A2
  loc_D38233: FLdRfVar var_1FC
  loc_D38236: CI4Var
  loc_D38238: FLdRfVar var_1EC
  loc_D3823B: CStrVarTmp
  loc_D3823C: FStStrNoPop var_164
  loc_D3823F: FLdRfVar var_1CC
  loc_D38242: CUI1Var
  loc_D38244: FLdRfVar GeneracionCuentaCorriente
  loc_D38247: NewIfNullPr clscreditos
  loc_D3824A: from_stack_4v = clscreditos.BuscaMoviCred(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D3824F: FLdI2 var_1A2
  loc_D38252: CR8I2
  loc_D38253: FStFPR8 var_F8
  loc_D38256: FFree1Str var_164
  loc_D38259: FFreeAd var_1A8 = "": var_210 = "": var_2D8 = "": var_1BC = "": var_224 = ""
  loc_D38268: FFreeVar var_1CC = "": var_1EC = ""
  loc_D38271: FLdFPR8 var_F8
  loc_D38274: LitI2_Byte 1
  loc_D38276: CR8I2
  loc_D38277: AddR8
  loc_D38278: FStFPR8 var_F8
  loc_D3827B: LitStr " INSERT INTO creditos (CodiOfic,CuenCtct,NumeCred,MoviCred,PeriCtct,BimeCtct,NumeCtct,MoviCtct,CodiTili,NumeLiqu,PeriBole,NumeBole,FealCtct,PeriInfo,CodiConc,CodiTimo,ExpeCred,DetaCred,DebeCred,CredCred,CodiUsua) "
  loc_D3827E: LitStr " VALUES (6,'"
  loc_D38281: ConcatStr
  loc_D38282: CVarStr var_1EC
  loc_D38285: FLdRfVar var_1CC
  loc_D38288: FLdRfVar var_1BC
  loc_D3828B: LitVarStr var_1B8, "CodiCome"
  loc_D38290: PopAdLdVar
  loc_D38291: FLdRfVar var_1A8
  loc_D38294: FLdPr Me
  loc_D38297: MemLdPr global_68
  loc_D3829A:  = Me.Fields
  loc_D3829F: FLdPr var_1A8
  loc_D382A2: from_stack_2 = Me.Item(from_stack_1)
  loc_D382A7: FLdPr var_1BC
  loc_D382AA:  = Me.Value
  loc_D382AF: FLdRfVar var_1CC
  loc_D382B2: ConcatVar var_1FC
  loc_D382B6: LitVarStr var_1DC, "',"
  loc_D382BB: ConcatVar var_20C
  loc_D382BF: FLdRfVar var_234
  loc_D382C2: FLdRfVar var_224
  loc_D382C5: LitVarStr var_220, "NumeCred"
  loc_D382CA: PopAdLdVar
  loc_D382CB: FLdRfVar var_210
  loc_D382CE: FLdPr Me
  loc_D382D1: MemLdPr global_72
  loc_D382D4:  = Me.Fields
  loc_D382D9: FLdPr var_210
  loc_D382DC: from_stack_2 = Me.Item(from_stack_1)
  loc_D382E1: FLdPr var_224
  loc_D382E4:  = Me.Value
  loc_D382E9: FLdRfVar var_234
  loc_D382EC: ConcatVar var_244
  loc_D382F0: LitVarStr var_254, ","
  loc_D382F5: ConcatVar var_264
  loc_D382F9: FLdFPR8 var_F8
  loc_D382FC: CVarR8
  loc_D38300: ConcatVar var_294
  loc_D38304: LitVarStr var_284, ","
  loc_D38309: ConcatVar var_2A4
  loc_D3830D: FLdI2 iPeriodo
  loc_D38310: CVarI2 var_2C4
  loc_D38313: ConcatVar var_2B4
  loc_D38317: LitVarStr var_2E8, ","
  loc_D3831C: ConcatVar var_2D4
  loc_D38320: FLdRfVar var_2FC
  loc_D38323: FLdRfVar var_2EC
  loc_D38326: LitVarStr var_30C, "BimeLiqu"
  loc_D3832B: PopAdLdVar
  loc_D3832C: FLdRfVar var_2D8
  loc_D3832F: FLdPr Me
  loc_D38332: MemLdPr global_68
  loc_D38335:  = Me.Fields
  loc_D3833A: FLdPr var_2D8
  loc_D3833D: from_stack_2 = Me.Item(from_stack_1)
  loc_D38342: FLdPr var_2EC
  loc_D38345:  = Me.Value
  loc_D3834A: FLdRfVar var_2FC
  loc_D3834D: ConcatVar var_31C
  loc_D38351: LitVarStr var_34C, ","
  loc_D38356: ConcatVar var_32C
  loc_D3835A: ILdRf var_98
  loc_D3835D: CVarI4
  loc_D38361: ConcatVar var_33C
  loc_D38365: LitVarStr var_3A4, ",3,"
  loc_D3836A: ConcatVar var_35C
  loc_D3836E: FLdRfVar var_384
  loc_D38371: FLdRfVar var_374
  loc_D38374: LitVarStr var_3C8, "CodiTili"
  loc_D38379: PopAdLdVar
  loc_D3837A: FLdRfVar var_360
  loc_D3837D: FLdPr Me
  loc_D38380: MemLdPr global_68
  loc_D38383:  = Me.Fields
  loc_D38388: FLdPr var_360
  loc_D3838B: from_stack_2 = Me.Item(from_stack_1)
  loc_D38390: FLdPr var_374
  loc_D38393:  = Me.Value
  loc_D38398: FLdRfVar var_384
  loc_D3839B: ConcatVar var_394
  loc_D3839F: LitVarStr var_3FC, ","
  loc_D383A4: ConcatVar var_3B4
  loc_D383A8: FLdRfVar var_3DC
  loc_D383AB: FLdRfVar var_3CC
  loc_D383AE: LitVarStr var_420, "NumeLiqu"
  loc_D383B3: PopAdLdVar
  loc_D383B4: FLdRfVar var_3B8
  loc_D383B7: FLdPr Me
  loc_D383BA: MemLdPr global_68
  loc_D383BD:  = Me.Fields
  loc_D383C2: FLdPr var_3B8
  loc_D383C5: from_stack_2 = Me.Item(from_stack_1)
  loc_D383CA: FLdPr var_3CC
  loc_D383CD:  = Me.Value
  loc_D383D2: FLdRfVar var_3DC
  loc_D383D5: ConcatVar var_3EC
  loc_D383D9: LitVarStr var_464, ","
  loc_D383DE: ConcatVar var_40C
  loc_D383E2: FLdI2 iPeriodo
  loc_D383E5: CVarI2 var_488
  loc_D383E8: ConcatVar var_434
  loc_D383EC: LitVarStr var_4CC, ","
  loc_D383F1: ConcatVar var_444
  loc_D383F5: ILdRf var_9C
  loc_D383F8: CVarI4
  loc_D383FC: ConcatVar var_454
  loc_D38400: LitVarStr var_50C, ",'"
  loc_D38405: ConcatVar var_474
  loc_D38409: LitI4 1
  loc_D3840E: LitI4 1
  loc_D38413: LitVarStr var_56C, "yyyy-mm-dd"
  loc_D38418: FStVarCopyObj var_49C
  loc_D3841B: FLdRfVar var_49C
  loc_D3841E: FLdRfVar var_A4
  loc_D38421: CVarRef
  loc_D38426: ImpAdCallI2 Format$(, )
  loc_D3842B: CVarStr var_4AC
  loc_D3842E: ConcatVar var_4BC
  loc_D38432: LitVarStr var_57C, "',"
  loc_D38437: ConcatVar var_4DC
  loc_D3843B: FLdRfVar var_424
  loc_D3843E: LitVarStr var_58C, "FealLipu"
  loc_D38443: PopAdLdVar
  loc_D38444: FLdRfVar var_410
  loc_D38447: FLdPr Me
  loc_D3844A: MemLdPr global_68
  loc_D3844D:  = Me.Fields
  loc_D38452: FLdPr var_410
  loc_D38455: from_stack_2 = Me.Item(from_stack_1)
  loc_D3845A: FLdZeroAd var_424
  loc_D3845D: CVarAd
  loc_D38461: FLdRfVar var_51C
  loc_D38464: ImpAdCallFPR4  = Year()
  loc_D38469: FLdRfVar var_51C
  loc_D3846C: ConcatVar var_54C
  loc_D38470: LitVarStr var_59C, ",'"
  loc_D38475: ConcatVar var_5AC
  loc_D38479: FLdRfVar var_5BC
  loc_D3847C: FLdRfVar var_48C
  loc_D3847F: LitVarStr var_5CC, "CodiConc"
  loc_D38484: PopAdLdVar
  loc_D38485: FLdRfVar var_478
  loc_D38488: FLdPr Me
  loc_D3848B: MemLdPr global_68
  loc_D3848E:  = Me.Fields
  loc_D38493: FLdPr var_478
  loc_D38496: from_stack_2 = Me.Item(from_stack_1)
  loc_D3849B: FLdPr var_48C
  loc_D3849E:  = Me.Value
  loc_D384A3: FLdRfVar var_5BC
  loc_D384A6: ConcatVar var_5DC
  loc_D384AA: LitVarStr var_5EC, "',23,'','',0,"
  loc_D384AF: ConcatVar var_5FC
  loc_D384B3: LitI4 0
  loc_D384B8: LitI4 -1
  loc_D384BD: LitI4 1
  loc_D384C2: LitStr "."
  loc_D384C5: LitStr ","
  loc_D384C8: FLdFPR8 var_F0
  loc_D384CB: CStrR8
  loc_D384CD: FStStrNoPop var_164
  loc_D384D0: ImpAdCallI2 Replace(, , , , , )
  loc_D384D5: CVarStr var_60C
  loc_D384D8: ConcatVar var_62C
  loc_D384DC: LitVarStr var_61C, ",'"
  loc_D384E1: ConcatVar var_64C
  loc_D384E5: ImpAdLdI4 MemVar_D9302C
  loc_D384E8: CVarStr var_63C
  loc_D384EB: ConcatVar var_65C
  loc_D384EF: LitVarStr var_66C, "');"
  loc_D384F4: ConcatVar var_67C
  loc_D384F8: CStrVarVal var_168
  loc_D384FC: Call EjecutarRsCls(from_stack_1v)
  loc_D38501: FFreeStr var_164 = ""
  loc_D38508: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = "": var_3CC = "": var_410 = "": var_478 = ""
  loc_D38525: FFreeVar var_4DC = "": var_51C = "": var_54C = "": var_5AC = "": var_5BC = "": var_5DC = "": var_5FC = "": var_60C = "": var_62C = "": var_64C = "": var_65C = "": var_67C = "": var_1EC = "": var_1CC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3DC = "": var_3EC = "": var_40C = "": var_434 = "": var_444 = "": var_454 = "": var_49C = "": var_474 = "": var_4AC = "": var_4BC = ""
  loc_D3857C: LitI2_Byte 0
  loc_D3857E: CR8I2
  loc_D3857F: FStFPR8 var_F0
  loc_D38582: FLdPr Me
  loc_D38585: MemLdPr global_72
  loc_D38588: Me.MoveNext
  loc_D3858D: Branch loc_D37CBE
  loc_D38590: LitVarStr var_1DC, " UPDATE recabole SET ActuRebo = 'Si' WHERE PeriLiqu = "
  loc_D38595: FLdRfVar var_1CC
  loc_D38598: FLdRfVar var_1BC
  loc_D3859B: LitVarStr var_1B8, "PeriLiqu"
  loc_D385A0: PopAdLdVar
  loc_D385A1: FLdRfVar var_1A8
  loc_D385A4: FLdPr Me
  loc_D385A7: MemLdPr global_68
  loc_D385AA:  = Me.Fields
  loc_D385AF: FLdPr var_1A8
  loc_D385B2: from_stack_2 = Me.Item(from_stack_1)
  loc_D385B7: FLdPr var_1BC
  loc_D385BA:  = Me.Value
  loc_D385BF: FLdRfVar var_1CC
  loc_D385C2: ConcatVar var_1EC
  loc_D385C6: LitVarStr var_220, " AND BimeLiqu = "
  loc_D385CB: ConcatVar var_1FC
  loc_D385CF: FLdRfVar var_20C
  loc_D385D2: FLdRfVar var_224
  loc_D385D5: LitVarStr var_254, "BimeLiqu"
  loc_D385DA: PopAdLdVar
  loc_D385DB: FLdRfVar var_210
  loc_D385DE: FLdPr Me
  loc_D385E1: MemLdPr global_68
  loc_D385E4:  = Me.Fields
  loc_D385E9: FLdPr var_210
  loc_D385EC: from_stack_2 = Me.Item(from_stack_1)
  loc_D385F1: FLdPr var_224
  loc_D385F4:  = Me.Value
  loc_D385F9: FLdRfVar var_20C
  loc_D385FC: ConcatVar var_234
  loc_D38600: LitVarStr var_274, " AND CodiTili = "
  loc_D38605: ConcatVar var_244
  loc_D38609: FLdRfVar var_264
  loc_D3860C: FLdRfVar var_2EC
  loc_D3860F: LitVarStr var_284, "CodiTili"
  loc_D38614: PopAdLdVar
  loc_D38615: FLdRfVar var_2D8
  loc_D38618: FLdPr Me
  loc_D3861B: MemLdPr global_68
  loc_D3861E:  = Me.Fields
  loc_D38623: FLdPr var_2D8
  loc_D38626: from_stack_2 = Me.Item(from_stack_1)
  loc_D3862B: FLdPr var_2EC
  loc_D3862E:  = Me.Value
  loc_D38633: FLdRfVar var_264
  loc_D38636: ConcatVar var_294
  loc_D3863A: LitVarStr var_2C4, " AND NumeLiqu = "
  loc_D3863F: ConcatVar var_2A4
  loc_D38643: FLdRfVar var_2B4
  loc_D38646: FLdRfVar var_374
  loc_D38649: LitVarStr var_2E8, "NumeLiqu"
  loc_D3864E: PopAdLdVar
  loc_D3864F: FLdRfVar var_360
  loc_D38652: FLdPr Me
  loc_D38655: MemLdPr global_68
  loc_D38658:  = Me.Fields
  loc_D3865D: FLdPr var_360
  loc_D38660: from_stack_2 = Me.Item(from_stack_1)
  loc_D38665: FLdPr var_374
  loc_D38668:  = Me.Value
  loc_D3866D: FLdRfVar var_2B4
  loc_D38670: ConcatVar var_2D4
  loc_D38674: LitVarStr var_30C, " AND CodiOfic = 6 AND CuenCtct = '"
  loc_D38679: ConcatVar var_2FC
  loc_D3867D: FLdRfVar var_31C
  loc_D38680: FLdRfVar var_3CC
  loc_D38683: LitVarStr var_34C, "CodiCome"
  loc_D38688: PopAdLdVar
  loc_D38689: FLdRfVar var_3B8
  loc_D3868C: FLdPr Me
  loc_D3868F: MemLdPr global_68
  loc_D38692:  = Me.Fields
  loc_D38697: FLdPr var_3B8
  loc_D3869A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3869F: FLdPr var_3CC
  loc_D386A2:  = Me.Value
  loc_D386A7: FLdRfVar var_31C
  loc_D386AA: ConcatVar var_32C
  loc_D386AE: LitVarStr var_370, "';"
  loc_D386B3: ConcatVar var_33C
  loc_D386B7: CStrVarVal var_164
  loc_D386BB: Call EjecutarRsCls(from_stack_1v)
  loc_D386C0: FFree1Str var_164
  loc_D386C3: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = ""
  loc_D386DA: FFreeVar var_1CC = "": var_1EC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = ""
  loc_D386FB: FLdRfVar var_1CC
  loc_D386FE: FLdRfVar var_1BC
  loc_D38701: LitVarStr var_1B8, "TipoVenc"
  loc_D38706: PopAdLdVar
  loc_D38707: FLdRfVar var_1A8
  loc_D3870A: FLdPr Me
  loc_D3870D: MemLdPr global_68
  loc_D38710:  = Me.Fields
  loc_D38715: FLdPr var_1A8
  loc_D38718: from_stack_2 = Me.Item(from_stack_1)
  loc_D3871D: FLdPr var_1BC
  loc_D38720:  = Me.Value
  loc_D38725: FLdRfVar var_1CC
  loc_D38728: FnCIntVar
  loc_D3872A: LitI2_Byte 2
  loc_D3872C: EqI2
  loc_D3872D: FFreeAd var_1A8 = ""
  loc_D38734: FFree1Var var_1CC = ""
  loc_D38737: BranchF loc_D39A55
  loc_D3873A: FLdRfVar var_1CC
  loc_D3873D: FLdRfVar var_1BC
  loc_D38740: LitVarStr var_1B8, "TotaBole"
  loc_D38745: PopAdLdVar
  loc_D38746: FLdRfVar var_1A8
  loc_D38749: FLdPr Me
  loc_D3874C: MemLdPr global_64
  loc_D3874F:  = Me.Fields
  loc_D38754: FLdPr var_1A8
  loc_D38757: from_stack_2 = Me.Item(from_stack_1)
  loc_D3875C: FLdPr var_1BC
  loc_D3875F:  = Me.Value
  loc_D38764: FLdRfVar var_1CC
  loc_D38767: LitVarI2 var_1DC, 0
  loc_D3876C: HardType
  loc_D3876D: GtVarBool
  loc_D3876F: FFreeAd var_1A8 = ""
  loc_D38776: FFree1Var var_1CC = ""
  loc_D38779: BranchF loc_D39A49
  loc_D3877C: FLdRfVar var_1EC
  loc_D3877F: FLdRfVar var_1BC
  loc_D38782: LitVarStr var_1B8, "CodiConc"
  loc_D38787: PopAdLdVar
  loc_D38788: FLdRfVar var_1A8
  loc_D3878B: FLdPr Me
  loc_D3878E: MemLdPr global_68
  loc_D38791:  = Me.Fields
  loc_D38796: FLdPr var_1A8
  loc_D38799: from_stack_2 = Me.Item(from_stack_1)
  loc_D3879E: FLdPr var_1BC
  loc_D387A1:  = Me.Value
  loc_D387A6: FLdRfVar var_1EC
  loc_D387A9: FLdRfVar var_1CC
  loc_D387AC: FLdRfVar var_224
  loc_D387AF: LitVarStr var_1DC, "CodiTili"
  loc_D387B4: PopAdLdVar
  loc_D387B5: FLdRfVar var_210
  loc_D387B8: FLdPr Me
  loc_D387BB: MemLdPr global_68
  loc_D387BE:  = Me.Fields
  loc_D387C3: FLdPr var_210
  loc_D387C6: from_stack_2 = Me.Item(from_stack_1)
  loc_D387CB: FLdPr var_224
  loc_D387CE:  = Me.Value
  loc_D387D3: FLdRfVar var_1CC
  loc_D387D6: CUI1Var
  loc_D387D8: LitI2_Byte 6
  loc_D387DA: CUI1I2
  loc_D387DC: ImpAdCallI2 Proc_270_71_A8F7D0(, )
  loc_D387E1: CVarStr var_1FC
  loc_D387E4: HardType
  loc_D387E5: EqVarBool
  loc_D387E7: FFreeAd var_1A8 = "": var_210 = "": var_224 = ""
  loc_D387F2: FFreeVar var_1CC = "": var_1EC = ""
  loc_D387FB: BranchF loc_D38DD3
  loc_D387FE: LitStr "SELECT PeriCtct, BimeCtct, NumeCtct, CapiDebo, TotaDebo FROM detabole"
  loc_D38801: LitStr " WHERE PeriBole = "
  loc_D38804: ConcatStr
  loc_D38805: CVarStr var_1EC
  loc_D38808: FLdRfVar var_1CC
  loc_D3880B: FLdRfVar var_1BC
  loc_D3880E: LitVarStr var_1B8, "PeriLiqu"
  loc_D38813: PopAdLdVar
  loc_D38814: FLdRfVar var_1A8
  loc_D38817: FLdPr Me
  loc_D3881A: MemLdPr global_68
  loc_D3881D:  = Me.Fields
  loc_D38822: FLdPr var_1A8
  loc_D38825: from_stack_2 = Me.Item(from_stack_1)
  loc_D3882A: FLdPr var_1BC
  loc_D3882D:  = Me.Value
  loc_D38832: FLdRfVar var_1CC
  loc_D38835: ConcatVar var_1FC
  loc_D38839: LitVarStr var_1DC, " AND CodiOfic = 6"
  loc_D3883E: ConcatVar var_20C
  loc_D38842: LitVarStr var_220, " AND CuenCtct = '"
  loc_D38847: ConcatVar var_234
  loc_D3884B: FLdRfVar var_244
  loc_D3884E: FLdRfVar var_224
  loc_D38851: LitVarStr var_254, "CodiCome"
  loc_D38856: PopAdLdVar
  loc_D38857: FLdRfVar var_210
  loc_D3885A: FLdPr Me
  loc_D3885D: MemLdPr global_68
  loc_D38860:  = Me.Fields
  loc_D38865: FLdPr var_210
  loc_D38868: from_stack_2 = Me.Item(from_stack_1)
  loc_D3886D: FLdPr var_224
  loc_D38870:  = Me.Value
  loc_D38875: FLdRfVar var_244
  loc_D38878: ConcatVar var_264
  loc_D3887C: LitVarStr var_274, "'"
  loc_D38881: ConcatVar var_294
  loc_D38885: LitVarStr var_284, " AND PeriCtct = "
  loc_D3888A: ConcatVar var_2A4
  loc_D3888E: FLdRfVar var_2B4
  loc_D38891: FLdRfVar var_2EC
  loc_D38894: LitVarStr var_2C4, "PeriLiqu"
  loc_D38899: PopAdLdVar
  loc_D3889A: FLdRfVar var_2D8
  loc_D3889D: FLdPr Me
  loc_D388A0: MemLdPr global_68
  loc_D388A3:  = Me.Fields
  loc_D388A8: FLdPr var_2D8
  loc_D388AB: from_stack_2 = Me.Item(from_stack_1)
  loc_D388B0: FLdPr var_2EC
  loc_D388B3:  = Me.Value
  loc_D388B8: FLdRfVar var_2B4
  loc_D388BB: ConcatVar var_2D4
  loc_D388BF: LitVarStr var_2E8, " AND CodiConc = '"
  loc_D388C4: ConcatVar var_2FC
  loc_D388C8: FLdRfVar var_31C
  loc_D388CB: FLdRfVar var_374
  loc_D388CE: LitVarStr var_30C, "CodiConc"
  loc_D388D3: PopAdLdVar
  loc_D388D4: FLdRfVar var_360
  loc_D388D7: FLdPr Me
  loc_D388DA: MemLdPr global_68
  loc_D388DD:  = Me.Fields
  loc_D388E2: FLdPr var_360
  loc_D388E5: from_stack_2 = Me.Item(from_stack_1)
  loc_D388EA: FLdPr var_374
  loc_D388ED:  = Me.Value
  loc_D388F2: FLdRfVar var_31C
  loc_D388F5: ConcatVar var_32C
  loc_D388F9: LitVarStr var_34C, "'"
  loc_D388FE: ConcatVar var_33C
  loc_D38902: LitVarStr var_370, " AND TipoCtct = 'Bimestral'"
  loc_D38907: ConcatVar var_35C
  loc_D3890B: LitVarStr var_3A4, " AND CodiTili = "
  loc_D38910: ConcatVar var_384
  loc_D38914: FLdRfVar var_394
  loc_D38917: FLdRfVar var_3CC
  loc_D3891A: LitVarStr var_3C8, "CodiTili"
  loc_D3891F: PopAdLdVar
  loc_D38920: FLdRfVar var_3B8
  loc_D38923: FLdPr Me
  loc_D38926: MemLdPr global_68
  loc_D38929:  = Me.Fields
  loc_D3892E: FLdPr var_3B8
  loc_D38931: from_stack_2 = Me.Item(from_stack_1)
  loc_D38936: FLdPr var_3CC
  loc_D38939:  = Me.Value
  loc_D3893E: FLdRfVar var_394
  loc_D38941: ConcatVar var_3B4
  loc_D38945: LitVarStr var_3FC, " AND NumeLiqu = "
  loc_D3894A: ConcatVar var_3DC
  loc_D3894E: FLdRfVar var_3EC
  loc_D38951: FLdRfVar var_424
  loc_D38954: LitVarStr var_420, "NumeLiqu"
  loc_D38959: PopAdLdVar
  loc_D3895A: FLdRfVar var_410
  loc_D3895D: FLdPr Me
  loc_D38960: MemLdPr global_68
  loc_D38963:  = Me.Fields
  loc_D38968: FLdPr var_410
  loc_D3896B: from_stack_2 = Me.Item(from_stack_1)
  loc_D38970: FLdPr var_424
  loc_D38973:  = Me.Value
  loc_D38978: FLdRfVar var_3EC
  loc_D3897B: ConcatVar var_40C
  loc_D3897F: LitVarStr var_464, " ORDER BY PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D38984: ConcatVar var_434
  loc_D38988: CStrVarVal var_164
  loc_D3898C: Call EjecutarRsCls4(from_stack_1v)
  loc_D38991: FFree1Str var_164
  loc_D38994: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = "": var_3CC = "": var_410 = ""
  loc_D389AF: FFreeVar var_1EC = "": var_1CC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3DC = "": var_3EC = "": var_40C = ""
  loc_D389E0: FLdRfVar var_1A0
  loc_D389E3: FLdPr Me
  loc_D389E6: MemLdPr global_72
  loc_D389E9:  = Me.RecordCount
  loc_D389EE: ILdRf var_1A0
  loc_D389F1: LitI4 0
  loc_D389F6: GtI4
  loc_D389F7: BranchF loc_D38DD0
  loc_D389FA: FLdFPR8 var_110
  loc_D389FD: CVarR8
  loc_D38A01: FLdRfVar var_1CC
  loc_D38A04: FLdRfVar var_1BC
  loc_D38A07: LitVarStr var_1B8, "TotaDebo"
  loc_D38A0C: PopAdLdVar
  loc_D38A0D: FLdRfVar var_1A8
  loc_D38A10: FLdPr Me
  loc_D38A13: MemLdPr global_72
  loc_D38A16:  = Me.Fields
  loc_D38A1B: FLdPr var_1A8
  loc_D38A1E: from_stack_2 = Me.Item(from_stack_1)
  loc_D38A23: FLdPr var_1BC
  loc_D38A26:  = Me.Value
  loc_D38A2B: FLdRfVar var_1CC
  loc_D38A2E: AddVar var_1EC
  loc_D38A32: CR4Var
  loc_D38A33: FStFPR8 var_110
  loc_D38A36: FFreeAd var_1A8 = ""
  loc_D38A3D: FFreeVar var_1CC = ""
  loc_D38A44: FLdRfVar var_4DC
  loc_D38A47: FLdRfVar var_724
  loc_D38A4A: LitVarStr var_4EC, "CapiDebo"
  loc_D38A4F: PopAdLdVar
  loc_D38A50: FLdRfVar var_720
  loc_D38A53: FLdPr Me
  loc_D38A56: MemLdPr global_72
  loc_D38A59:  = Me.Fields
  loc_D38A5E: FLdPr var_720
  loc_D38A61: from_stack_2 = Me.Item(from_stack_1)
  loc_D38A66: FLdPr var_724
  loc_D38A69:  = Me.Value
  loc_D38A6E: FLdRfVar var_5AC
  loc_D38A71: FLdRfVar var_72C
  loc_D38A74: LitVarStr var_55C, "TotaDebo"
  loc_D38A79: PopAdLdVar
  loc_D38A7A: FLdRfVar var_728
  loc_D38A7D: FLdPr Me
  loc_D38A80: MemLdPr global_72
  loc_D38A83:  = Me.Fields
  loc_D38A88: FLdPr var_728
  loc_D38A8B: from_stack_2 = Me.Item(from_stack_1)
  loc_D38A90: FLdPr var_72C
  loc_D38A93:  = Me.Value
  loc_D38A98: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiTili, NumeLiqu, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo) "
  loc_D38A9B: LitStr " VALUES ("
  loc_D38A9E: ConcatStr
  loc_D38A9F: FStStrNoPop var_164
  loc_D38AA2: FLdI2 iPeriodo
  loc_D38AA5: CStrUI1
  loc_D38AA7: FStStrNoPop var_168
  loc_D38AAA: ConcatStr
  loc_D38AAB: FStStrNoPop var_16C
  loc_D38AAE: LitStr ","
  loc_D38AB1: ConcatStr
  loc_D38AB2: FStStrNoPop var_170
  loc_D38AB5: ILdRf var_9C
  loc_D38AB8: CStrI4
  loc_D38ABA: FStStrNoPop var_174
  loc_D38ABD: ConcatStr
  loc_D38ABE: FStStrNoPop var_178
  loc_D38AC1: LitStr ","
  loc_D38AC4: ConcatStr
  loc_D38AC5: CVarStr var_1EC
  loc_D38AC8: FLdRfVar var_1CC
  loc_D38ACB: FLdRfVar var_1BC
  loc_D38ACE: LitVarStr var_1B8, "PeriCtct"
  loc_D38AD3: PopAdLdVar
  loc_D38AD4: FLdRfVar var_1A8
  loc_D38AD7: FLdPr Me
  loc_D38ADA: MemLdPr global_72
  loc_D38ADD:  = Me.Fields
  loc_D38AE2: FLdPr var_1A8
  loc_D38AE5: from_stack_2 = Me.Item(from_stack_1)
  loc_D38AEA: FLdPr var_1BC
  loc_D38AED:  = Me.Value
  loc_D38AF2: FLdRfVar var_1CC
  loc_D38AF5: ConcatVar var_1FC
  loc_D38AF9: LitVarStr var_1DC, ","
  loc_D38AFE: ConcatVar var_20C
  loc_D38B02: FLdRfVar var_234
  loc_D38B05: FLdRfVar var_224
  loc_D38B08: LitVarStr var_220, "BimeCtct"
  loc_D38B0D: PopAdLdVar
  loc_D38B0E: FLdRfVar var_210
  loc_D38B11: FLdPr Me
  loc_D38B14: MemLdPr global_72
  loc_D38B17:  = Me.Fields
  loc_D38B1C: FLdPr var_210
  loc_D38B1F: from_stack_2 = Me.Item(from_stack_1)
  loc_D38B24: FLdPr var_224
  loc_D38B27:  = Me.Value
  loc_D38B2C: FLdRfVar var_234
  loc_D38B2F: ConcatVar var_244
  loc_D38B33: LitVarStr var_254, ","
  loc_D38B38: ConcatVar var_264
  loc_D38B3C: FLdRfVar var_294
  loc_D38B3F: FLdRfVar var_2EC
  loc_D38B42: LitVarStr var_274, "NumeCtct"
  loc_D38B47: PopAdLdVar
  loc_D38B48: FLdRfVar var_2D8
  loc_D38B4B: FLdPr Me
  loc_D38B4E: MemLdPr global_72
  loc_D38B51:  = Me.Fields
  loc_D38B56: FLdPr var_2D8
  loc_D38B59: from_stack_2 = Me.Item(from_stack_1)
  loc_D38B5E: FLdPr var_2EC
  loc_D38B61:  = Me.Value
  loc_D38B66: FLdRfVar var_294
  loc_D38B69: ConcatVar var_2A4
  loc_D38B6D: LitVarStr var_284, ",1,1,"
  loc_D38B72: ConcatVar var_2B4
  loc_D38B76: FLdRfVar var_2D4
  loc_D38B79: FLdRfVar var_374
  loc_D38B7C: LitVarStr var_2C4, "CodiTili"
  loc_D38B81: PopAdLdVar
  loc_D38B82: FLdRfVar var_360
  loc_D38B85: FLdPr Me
  loc_D38B88: MemLdPr global_68
  loc_D38B8B:  = Me.Fields
  loc_D38B90: FLdPr var_360
  loc_D38B93: from_stack_2 = Me.Item(from_stack_1)
  loc_D38B98: FLdPr var_374
  loc_D38B9B:  = Me.Value
  loc_D38BA0: FLdRfVar var_2D4
  loc_D38BA3: ConcatVar var_2FC
  loc_D38BA7: LitVarStr var_2E8, ","
  loc_D38BAC: ConcatVar var_31C
  loc_D38BB0: FLdRfVar var_32C
  loc_D38BB3: FLdRfVar var_3CC
  loc_D38BB6: LitVarStr var_30C, "NumeLiqu"
  loc_D38BBB: PopAdLdVar
  loc_D38BBC: FLdRfVar var_3B8
  loc_D38BBF: FLdPr Me
  loc_D38BC2: MemLdPr global_68
  loc_D38BC5:  = Me.Fields
  loc_D38BCA: FLdPr var_3B8
  loc_D38BCD: from_stack_2 = Me.Item(from_stack_1)
  loc_D38BD2: FLdPr var_3CC
  loc_D38BD5:  = Me.Value
  loc_D38BDA: FLdRfVar var_32C
  loc_D38BDD: ConcatVar var_33C
  loc_D38BE1: LitVarStr var_34C, ",6,'"
  loc_D38BE6: ConcatVar var_35C
  loc_D38BEA: FLdRfVar var_384
  loc_D38BED: FLdRfVar var_424
  loc_D38BF0: LitVarStr var_370, "CodiCome"
  loc_D38BF5: PopAdLdVar
  loc_D38BF6: FLdRfVar var_410
  loc_D38BF9: FLdPr Me
  loc_D38BFC: MemLdPr global_68
  loc_D38BFF:  = Me.Fields
  loc_D38C04: FLdPr var_410
  loc_D38C07: from_stack_2 = Me.Item(from_stack_1)
  loc_D38C0C: FLdPr var_424
  loc_D38C0F:  = Me.Value
  loc_D38C14: FLdRfVar var_384
  loc_D38C17: ConcatVar var_394
  loc_D38C1B: LitVarStr var_3A4, "','Anual',0,0,0,"
  loc_D38C20: ConcatVar var_3B4
  loc_D38C24: FLdRfVar var_3DC
  loc_D38C27: FLdRfVar var_48C
  loc_D38C2A: LitVarStr var_3C8, "TiafConc"
  loc_D38C2F: PopAdLdVar
  loc_D38C30: FLdRfVar var_478
  loc_D38C33: FLdPr Me
  loc_D38C36: MemLdPr global_68
  loc_D38C39:  = Me.Fields
  loc_D38C3E: FLdPr var_478
  loc_D38C41: from_stack_2 = Me.Item(from_stack_1)
  loc_D38C46: FLdPr var_48C
  loc_D38C49:  = Me.Value
  loc_D38C4E: FLdRfVar var_3DC
  loc_D38C51: ConcatVar var_3EC
  loc_D38C55: LitVarStr var_3FC, ","
  loc_D38C5A: ConcatVar var_40C
  loc_D38C5E: FLdRfVar var_534
  loc_D38C61: LitVarStr var_420, "FealLico"
  loc_D38C66: PopAdLdVar
  loc_D38C67: FLdRfVar var_530
  loc_D38C6A: FLdPr Me
  loc_D38C6D: MemLdPr global_68
  loc_D38C70:  = Me.Fields
  loc_D38C75: FLdPr var_530
  loc_D38C78: from_stack_2 = Me.Item(from_stack_1)
  loc_D38C7D: FLdZeroAd var_534
  loc_D38C80: CVarAd
  loc_D38C84: FLdRfVar var_444
  loc_D38C87: ImpAdCallFPR4  = Year()
  loc_D38C8C: FLdRfVar var_444
  loc_D38C8F: ConcatVar var_454
  loc_D38C93: LitVarStr var_464, ",'"
  loc_D38C98: ConcatVar var_474
  loc_D38C9C: FLdRfVar var_49C
  loc_D38C9F: FLdRfVar var_53C
  loc_D38CA2: LitVarStr var_488, "CodiConc"
  loc_D38CA7: PopAdLdVar
  loc_D38CA8: FLdRfVar var_538
  loc_D38CAB: FLdPr Me
  loc_D38CAE: MemLdPr global_68
  loc_D38CB1:  = Me.Fields
  loc_D38CB6: FLdPr var_538
  loc_D38CB9: from_stack_2 = Me.Item(from_stack_1)
  loc_D38CBE: FLdPr var_53C
  loc_D38CC1:  = Me.Value
  loc_D38CC6: FLdRfVar var_49C
  loc_D38CC9: ConcatVar var_4AC
  loc_D38CCD: LitVarStr var_4CC, "',"
  loc_D38CD2: ConcatVar var_4BC
  loc_D38CD6: LitI4 0
  loc_D38CDB: LitI4 -1
  loc_D38CE0: LitI4 1
  loc_D38CE5: LitStr "."
  loc_D38CE8: LitStr ","
  loc_D38CEB: FLdRfVar var_4DC
  loc_D38CEE: CStrVarTmp
  loc_D38CEF: FStStrNoPop var_17C
  loc_D38CF2: ImpAdCallI2 Replace(, , , , , )
  loc_D38CF7: CVarStr var_4FC
  loc_D38CFA: ConcatVar var_51C
  loc_D38CFE: LitVarStr var_50C, ",0,0,0,0,0,0,"
  loc_D38D03: ConcatVar var_54C
  loc_D38D07: LitI4 0
  loc_D38D0C: LitI4 -1
  loc_D38D11: LitI4 1
  loc_D38D16: LitStr "."
  loc_D38D19: LitStr ","
  loc_D38D1C: FLdRfVar var_5AC
  loc_D38D1F: CStrVarTmp
  loc_D38D20: FStStrNoPop var_180
  loc_D38D23: ImpAdCallI2 Replace(, , , , , )
  loc_D38D28: CVarStr var_5BC
  loc_D38D2B: ConcatVar var_5DC
  loc_D38D2F: LitVarStr var_56C, ");"
  loc_D38D34: ConcatVar var_5FC
  loc_D38D38: CStrVarVal var_184
  loc_D38D3C: Call EjecutarRsCls(from_stack_1v)
  loc_D38D41: FFreeStr var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_D38D56: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = "": var_3CC = "": var_410 = "": var_424 = "": var_478 = "": var_48C = "": var_530 = "": var_538 = "": var_53C = "": var_720 = "": var_724 = "": var_728 = ""
  loc_D38D83: FFreeVar var_4FC = "": var_51C = "": var_5AC = "": var_54C = "": var_5BC = "": var_5DC = "": var_5FC = "": var_1EC = "": var_1CC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3DC = "": var_3EC = "": var_434 = "": var_40C = "": var_444 = "": var_454 = "": var_474 = "": var_49C = "": var_4AC = "": var_4DC = ""
  loc_D38DD0: Branch loc_D39A49
  loc_D38DD3: FLdRfVar var_1CC
  loc_D38DD6: FLdRfVar var_1BC
  loc_D38DD9: LitVarStr var_1B8, "CrafLipu"
  loc_D38DDE: PopAdLdVar
  loc_D38DDF: FLdRfVar var_1A8
  loc_D38DE2: FLdPr Me
  loc_D38DE5: MemLdPr global_68
  loc_D38DE8:  = Me.Fields
  loc_D38DED: FLdPr var_1A8
  loc_D38DF0: from_stack_2 = Me.Item(from_stack_1)
  loc_D38DF5: FLdPr var_1BC
  loc_D38DF8:  = Me.Value
  loc_D38DFD: LitI4 2
  loc_D38E02: FLdRfVar var_1CC
  loc_D38E05: FLdFPR8 var_108
  loc_D38E08: CVarR8
  loc_D38E0C: SubVar var_1EC
  loc_D38E10: FStVar var_1FC
  loc_D38E14: FLdRfVar var_1FC
  loc_D38E17: FLdRfVar var_20C
  loc_D38E1A: ImpAdCallFPR4  = Round(, )
  loc_D38E1F: FLdRfVar var_20C
  loc_D38E22: CR4Var
  loc_D38E23: FStFPR8 var_108
  loc_D38E26: FFreeAd var_1A8 = ""
  loc_D38E2D: FFreeVar var_1CC = "": var_1FC = ""
  loc_D38E36: LitStr vbNullString
  loc_D38E39: FStStrCopy var_150
  loc_D38E3C: LitI2_Byte 1
  loc_D38E3E: FLdRfVar var_AA
  loc_D38E41: LitI2_Byte 2
  loc_D38E43: ForI2 var_730
  loc_D38E49: LitStr "SELECT * FROM detabole"
  loc_D38E4C: LitStr " USE INDEX (idxdetabole02)"
  loc_D38E4F: ConcatStr
  loc_D38E50: FStStrNoPop var_164
  loc_D38E53: LitStr " WHERE PeriBole = "
  loc_D38E56: ConcatStr
  loc_D38E57: CVarStr var_1EC
  loc_D38E5A: FLdRfVar var_1CC
  loc_D38E5D: FLdRfVar var_1BC
  loc_D38E60: LitVarStr var_1B8, "PeriLiqu"
  loc_D38E65: PopAdLdVar
  loc_D38E66: FLdRfVar var_1A8
  loc_D38E69: FLdPr Me
  loc_D38E6C: MemLdPr global_68
  loc_D38E6F:  = Me.Fields
  loc_D38E74: FLdPr var_1A8
  loc_D38E77: from_stack_2 = Me.Item(from_stack_1)
  loc_D38E7C: FLdPr var_1BC
  loc_D38E7F:  = Me.Value
  loc_D38E84: FLdRfVar var_1CC
  loc_D38E87: ConcatVar var_1FC
  loc_D38E8B: LitVarStr var_1DC, " AND CodiOfic = 6"
  loc_D38E90: ConcatVar var_20C
  loc_D38E94: LitVarStr var_220, " AND CuenCtct = '"
  loc_D38E99: ConcatVar var_234
  loc_D38E9D: FLdRfVar var_244
  loc_D38EA0: FLdRfVar var_224
  loc_D38EA3: LitVarStr var_254, "CodiCome"
  loc_D38EA8: PopAdLdVar
  loc_D38EA9: FLdRfVar var_210
  loc_D38EAC: FLdPr Me
  loc_D38EAF: MemLdPr global_68
  loc_D38EB2:  = Me.Fields
  loc_D38EB7: FLdPr var_210
  loc_D38EBA: from_stack_2 = Me.Item(from_stack_1)
  loc_D38EBF: FLdPr var_224
  loc_D38EC2:  = Me.Value
  loc_D38EC7: FLdRfVar var_244
  loc_D38ECA: ConcatVar var_264
  loc_D38ECE: LitVarStr var_274, "'"
  loc_D38ED3: ConcatVar var_294
  loc_D38ED7: LitVarStr var_284, " AND PeriCtct = "
  loc_D38EDC: ConcatVar var_2A4
  loc_D38EE0: FLdRfVar var_2B4
  loc_D38EE3: FLdRfVar var_2EC
  loc_D38EE6: LitVarStr var_2C4, "PeriLiqu"
  loc_D38EEB: PopAdLdVar
  loc_D38EEC: FLdRfVar var_2D8
  loc_D38EEF: FLdPr Me
  loc_D38EF2: MemLdPr global_68
  loc_D38EF5:  = Me.Fields
  loc_D38EFA: FLdPr var_2D8
  loc_D38EFD: from_stack_2 = Me.Item(from_stack_1)
  loc_D38F02: FLdPr var_2EC
  loc_D38F05:  = Me.Value
  loc_D38F0A: FLdRfVar var_2B4
  loc_D38F0D: ConcatVar var_2D4
  loc_D38F11: LitVarStr var_2E8, " AND BimeCtct = "
  loc_D38F16: ConcatVar var_2FC
  loc_D38F1A: FLdI2 var_AA
  loc_D38F1D: CVarI2 var_30C
  loc_D38F20: ConcatVar var_31C
  loc_D38F24: LitVarStr var_34C, " AND CodiConc = '"
  loc_D38F29: ConcatVar var_32C
  loc_D38F2D: FLdRfVar var_33C
  loc_D38F30: FLdRfVar var_374
  loc_D38F33: LitVarStr var_370, "CodiConc"
  loc_D38F38: PopAdLdVar
  loc_D38F39: FLdRfVar var_360
  loc_D38F3C: FLdPr Me
  loc_D38F3F: MemLdPr global_68
  loc_D38F42:  = Me.Fields
  loc_D38F47: FLdPr var_360
  loc_D38F4A: from_stack_2 = Me.Item(from_stack_1)
  loc_D38F4F: FLdPr var_374
  loc_D38F52:  = Me.Value
  loc_D38F57: FLdRfVar var_33C
  loc_D38F5A: ConcatVar var_35C
  loc_D38F5E: LitVarStr var_3A4, "'"
  loc_D38F63: ConcatVar var_384
  loc_D38F67: LitVarStr var_3C8, " AND TipoCtct = 'Bimestral'"
  loc_D38F6C: ConcatVar var_394
  loc_D38F70: LitVarStr var_3FC, " AND CodiTili = "
  loc_D38F75: ConcatVar var_3B4
  loc_D38F79: FLdRfVar var_3DC
  loc_D38F7C: FLdRfVar var_3CC
  loc_D38F7F: LitVarStr var_420, "CodiTili"
  loc_D38F84: PopAdLdVar
  loc_D38F85: FLdRfVar var_3B8
  loc_D38F88: FLdPr Me
  loc_D38F8B: MemLdPr global_68
  loc_D38F8E:  = Me.Fields
  loc_D38F93: FLdPr var_3B8
  loc_D38F96: from_stack_2 = Me.Item(from_stack_1)
  loc_D38F9B: FLdPr var_3CC
  loc_D38F9E:  = Me.Value
  loc_D38FA3: FLdRfVar var_3DC
  loc_D38FA6: ConcatVar var_3EC
  loc_D38FAA: LitVarStr var_464, " AND NumeLiqu = "
  loc_D38FAF: ConcatVar var_40C
  loc_D38FB3: FLdRfVar var_434
  loc_D38FB6: FLdRfVar var_424
  loc_D38FB9: LitVarStr var_488, "NumeLiqu"
  loc_D38FBE: PopAdLdVar
  loc_D38FBF: FLdRfVar var_410
  loc_D38FC2: FLdPr Me
  loc_D38FC5: MemLdPr global_68
  loc_D38FC8:  = Me.Fields
  loc_D38FCD: FLdPr var_410
  loc_D38FD0: from_stack_2 = Me.Item(from_stack_1)
  loc_D38FD5: FLdPr var_424
  loc_D38FD8:  = Me.Value
  loc_D38FDD: FLdRfVar var_434
  loc_D38FE0: ConcatVar var_444
  loc_D38FE4: LitVarStr var_4CC, " ORDER BY PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D38FE9: ConcatVar var_454
  loc_D38FED: CStrVarVal var_168
  loc_D38FF1: Call EjecutarRsCls4(from_stack_1v)
  loc_D38FF6: FFreeStr var_164 = ""
  loc_D38FFD: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = "": var_3CC = "": var_410 = ""
  loc_D39018: FFreeVar var_1EC = "": var_1CC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3DC = "": var_3EC = "": var_40C = "": var_434 = "": var_444 = ""
  loc_D3904D: FLdRfVar var_1A0
  loc_D39050: FLdPr Me
  loc_D39053: MemLdPr global_72
  loc_D39056:  = Me.RecordCount
  loc_D3905B: ILdRf var_1A0
  loc_D3905E: LitI4 0
  loc_D39063: EqI4
  loc_D39064: BranchF loc_D39299
  loc_D39067: LitStr "SELECT * FROM detabole"
  loc_D3906A: LitStr " USE INDEX (idxdetabole02)"
  loc_D3906D: ConcatStr
  loc_D3906E: FStStrNoPop var_164
  loc_D39071: LitStr " WHERE PeriBole = "
  loc_D39074: ConcatStr
  loc_D39075: CVarStr var_1EC
  loc_D39078: FLdRfVar var_1CC
  loc_D3907B: FLdRfVar var_1BC
  loc_D3907E: LitVarStr var_1B8, "PeriLiqu"
  loc_D39083: PopAdLdVar
  loc_D39084: FLdRfVar var_1A8
  loc_D39087: FLdPr Me
  loc_D3908A: MemLdPr global_68
  loc_D3908D:  = Me.Fields
  loc_D39092: FLdPr var_1A8
  loc_D39095: from_stack_2 = Me.Item(from_stack_1)
  loc_D3909A: FLdPr var_1BC
  loc_D3909D:  = Me.Value
  loc_D390A2: FLdRfVar var_1CC
  loc_D390A5: ConcatVar var_1FC
  loc_D390A9: LitVarStr var_1DC, " AND CodiOfic = 6"
  loc_D390AE: ConcatVar var_20C
  loc_D390B2: LitVarStr var_220, " AND CuenCtct = '"
  loc_D390B7: ConcatVar var_234
  loc_D390BB: FLdRfVar var_244
  loc_D390BE: FLdRfVar var_224
  loc_D390C1: LitVarStr var_254, "CodiCome"
  loc_D390C6: PopAdLdVar
  loc_D390C7: FLdRfVar var_210
  loc_D390CA: FLdPr Me
  loc_D390CD: MemLdPr global_68
  loc_D390D0:  = Me.Fields
  loc_D390D5: FLdPr var_210
  loc_D390D8: from_stack_2 = Me.Item(from_stack_1)
  loc_D390DD: FLdPr var_224
  loc_D390E0:  = Me.Value
  loc_D390E5: FLdRfVar var_244
  loc_D390E8: ConcatVar var_264
  loc_D390EC: LitVarStr var_274, "'"
  loc_D390F1: ConcatVar var_294
  loc_D390F5: LitVarStr var_284, " AND PeriCtct = "
  loc_D390FA: ConcatVar var_2A4
  loc_D390FE: FLdRfVar var_2B4
  loc_D39101: FLdRfVar var_2EC
  loc_D39104: LitVarStr var_2C4, "PeriLiqu"
  loc_D39109: PopAdLdVar
  loc_D3910A: FLdRfVar var_2D8
  loc_D3910D: FLdPr Me
  loc_D39110: MemLdPr global_68
  loc_D39113:  = Me.Fields
  loc_D39118: FLdPr var_2D8
  loc_D3911B: from_stack_2 = Me.Item(from_stack_1)
  loc_D39120: FLdPr var_2EC
  loc_D39123:  = Me.Value
  loc_D39128: FLdRfVar var_2B4
  loc_D3912B: ConcatVar var_2D4
  loc_D3912F: LitVarStr var_2E8, " AND BimeCtct = 1"
  loc_D39134: ConcatVar var_2FC
  loc_D39138: LitVarStr var_30C, " AND CodiConc = '"
  loc_D3913D: ConcatVar var_31C
  loc_D39141: FLdRfVar var_32C
  loc_D39144: FLdRfVar var_374
  loc_D39147: LitVarStr var_34C, "CodiConc"
  loc_D3914C: PopAdLdVar
  loc_D3914D: FLdRfVar var_360
  loc_D39150: FLdPr Me
  loc_D39153: MemLdPr global_68
  loc_D39156:  = Me.Fields
  loc_D3915B: FLdPr var_360
  loc_D3915E: from_stack_2 = Me.Item(from_stack_1)
  loc_D39163: FLdPr var_374
  loc_D39166:  = Me.Value
  loc_D3916B: FLdRfVar var_32C
  loc_D3916E: ConcatVar var_33C
  loc_D39172: LitVarStr var_370, "'"
  loc_D39177: ConcatVar var_35C
  loc_D3917B: LitVarStr var_3A4, " AND TipoCtct = 'Bimestral'"
  loc_D39180: ConcatVar var_384
  loc_D39184: LitVarStr var_3C8, " AND CodiTili = "
  loc_D39189: ConcatVar var_394
  loc_D3918D: FLdRfVar var_3B4
  loc_D39190: FLdRfVar var_3CC
  loc_D39193: LitVarStr var_3FC, "CodiTili"
  loc_D39198: PopAdLdVar
  loc_D39199: FLdRfVar var_3B8
  loc_D3919C: FLdPr Me
  loc_D3919F: MemLdPr global_68
  loc_D391A2:  = Me.Fields
  loc_D391A7: FLdPr var_3B8
  loc_D391AA: from_stack_2 = Me.Item(from_stack_1)
  loc_D391AF: FLdPr var_3CC
  loc_D391B2:  = Me.Value
  loc_D391B7: FLdRfVar var_3B4
  loc_D391BA: ConcatVar var_3DC
  loc_D391BE: LitVarStr var_420, " AND NumeLiqu = "
  loc_D391C3: ConcatVar var_3EC
  loc_D391C7: FLdRfVar var_40C
  loc_D391CA: FLdRfVar var_424
  loc_D391CD: LitVarStr var_464, "NumeLiqu"
  loc_D391D2: PopAdLdVar
  loc_D391D3: FLdRfVar var_410
  loc_D391D6: FLdPr Me
  loc_D391D9: MemLdPr global_68
  loc_D391DC:  = Me.Fields
  loc_D391E1: FLdPr var_410
  loc_D391E4: from_stack_2 = Me.Item(from_stack_1)
  loc_D391E9: FLdPr var_424
  loc_D391EC:  = Me.Value
  loc_D391F1: FLdRfVar var_40C
  loc_D391F4: ConcatVar var_434
  loc_D391F8: LitVarStr var_488, " ORDER BY PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D391FD: ConcatVar var_444
  loc_D39201: CStrVarVal var_168
  loc_D39205: Call EjecutarRsCls4(from_stack_1v)
  loc_D3920A: FFreeStr var_164 = ""
  loc_D39211: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = "": var_3CC = "": var_410 = ""
  loc_D3922C: FFreeVar var_1EC = "": var_1CC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3DC = "": var_3EC = "": var_40C = "": var_434 = ""
  loc_D3925F: FLdRfVar var_1A0
  loc_D39262: FLdPr Me
  loc_D39265: MemLdPr global_72
  loc_D39268:  = Me.RecordCount
  loc_D3926D: ILdRf var_1A0
  loc_D39270: LitI4 0
  loc_D39275: GtI4
  loc_D39276: BranchF loc_D39296
  loc_D39279: FLdI2 var_AA
  loc_D3927C: FStI2 var_E6
  loc_D3927F: FLdRfVar var_1A0
  loc_D39282: FLdI2 iPeriodo
  loc_D39285: FLdRfVar var_90
  loc_D39288: NewIfNullPr clsctacte
  loc_D3928B: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_D39290: ILdRf var_1A0
  loc_D39293: FStR4 var_98
  loc_D39296: Branch loc_D39310
  loc_D39299: FLdRfVar var_1CC
  loc_D3929C: FLdRfVar var_1BC
  loc_D3929F: LitVarStr var_1B8, "BimeCtct"
  loc_D392A4: PopAdLdVar
  loc_D392A5: FLdRfVar var_1A8
  loc_D392A8: FLdPr Me
  loc_D392AB: MemLdPr global_72
  loc_D392AE:  = Me.Fields
  loc_D392B3: FLdPr var_1A8
  loc_D392B6: from_stack_2 = Me.Item(from_stack_1)
  loc_D392BB: FLdPr var_1BC
  loc_D392BE:  = Me.Value
  loc_D392C3: FLdRfVar var_1CC
  loc_D392C6: CI2Var
  loc_D392C7: FStI2 var_E6
  loc_D392CA: FFreeAd var_1A8 = ""
  loc_D392D1: FFree1Var var_1CC = ""
  loc_D392D4: FLdRfVar var_1CC
  loc_D392D7: FLdRfVar var_1BC
  loc_D392DA: LitVarStr var_1B8, "NumeCtct"
  loc_D392DF: PopAdLdVar
  loc_D392E0: FLdRfVar var_1A8
  loc_D392E3: FLdPr Me
  loc_D392E6: MemLdPr global_72
  loc_D392E9:  = Me.Fields
  loc_D392EE: FLdPr var_1A8
  loc_D392F1: from_stack_2 = Me.Item(from_stack_1)
  loc_D392F6: FLdPr var_1BC
  loc_D392F9:  = Me.Value
  loc_D392FE: FLdRfVar var_1CC
  loc_D39301: CI4Var
  loc_D39303: FStR4 var_98
  loc_D39306: FFreeAd var_1A8 = ""
  loc_D3930D: FFree1Var var_1CC = ""
  loc_D39310: FLdRfVar var_1A0
  loc_D39313: FLdPr Me
  loc_D39316: MemLdPr global_72
  loc_D39319:  = Me.RecordCount
  loc_D3931E: ILdRf var_1A0
  loc_D39321: LitI4 0
  loc_D39326: GtI4
  loc_D39327: BranchF loc_D39A39
  loc_D3932A: FLdPr Me
  loc_D3932D: MemLdPr global_72
  loc_D39330: Me.MoveFirst
  loc_D39335: FLdRfVar var_1A2
  loc_D39338: FLdPr Me
  loc_D3933B: MemLdPr global_72
  loc_D3933E:  = Me.EOF
  loc_D39343: FLdI2 var_1A2
  loc_D39346: NotI4
  loc_D39347: BranchF loc_D39A39
  loc_D3934A: FLdRfVar var_1CC
  loc_D3934D: FLdRfVar var_1BC
  loc_D39350: LitVarStr var_1B8, "CodiConc"
  loc_D39355: PopAdLdVar
  loc_D39356: FLdRfVar var_1A8
  loc_D39359: FLdPr Me
  loc_D3935C: MemLdPr global_68
  loc_D3935F:  = Me.Fields
  loc_D39364: FLdPr var_1A8
  loc_D39367: from_stack_2 = Me.Item(from_stack_1)
  loc_D3936C: FLdPr var_1BC
  loc_D3936F:  = Me.Value
  loc_D39374: FLdRfVar var_1CC
  loc_D39377: LitVarStr var_1DC, "13020401"
  loc_D3937C: HardType
  loc_D3937D: EqVarBool
  loc_D3937F: FFreeAd var_1A8 = ""
  loc_D39386: FFree1Var var_1CC = ""
  loc_D39389: BranchF loc_D3964A
  loc_D3938C: LitStr "SELECT SUM(ImpoLpde) ImpoLpde, SUM(DecaLpde) DecaLpde, SUM(ExceLpde) ExceLpde, SUM(TotaLpde) TotaLpde FROM lipudeta "
  loc_D3938F: LitStr " USE INDEX (idxlicodeta01)"
  loc_D39392: ConcatStr
  loc_D39393: FStStrNoPop var_164
  loc_D39396: LitStr " WHERE PeriLiqu = "
  loc_D39399: ConcatStr
  loc_D3939A: CVarStr var_1EC
  loc_D3939D: FLdRfVar var_1CC
  loc_D393A0: FLdRfVar var_1BC
  loc_D393A3: LitVarStr var_1B8, "PeriLiqu"
  loc_D393A8: PopAdLdVar
  loc_D393A9: FLdRfVar var_1A8
  loc_D393AC: FLdPr Me
  loc_D393AF: MemLdPr global_68
  loc_D393B2:  = Me.Fields
  loc_D393B7: FLdPr var_1A8
  loc_D393BA: from_stack_2 = Me.Item(from_stack_1)
  loc_D393BF: FLdPr var_1BC
  loc_D393C2:  = Me.Value
  loc_D393C7: FLdRfVar var_1CC
  loc_D393CA: ConcatVar var_1FC
  loc_D393CE: LitVarStr var_1DC, " AND BimeLiqu = "
  loc_D393D3: ConcatVar var_20C
  loc_D393D7: FLdI2 var_AA
  loc_D393DA: CVarI2 var_220
  loc_D393DD: ConcatVar var_234
  loc_D393E1: LitVarStr var_254, " AND CodiTili = "
  loc_D393E6: ConcatVar var_244
  loc_D393EA: FLdRfVar var_264
  loc_D393ED: FLdRfVar var_224
  loc_D393F0: LitVarStr var_274, "CodiTili"
  loc_D393F5: PopAdLdVar
  loc_D393F6: FLdRfVar var_210
  loc_D393F9: FLdPr Me
  loc_D393FC: MemLdPr global_68
  loc_D393FF:  = Me.Fields
  loc_D39404: FLdPr var_210
  loc_D39407: from_stack_2 = Me.Item(from_stack_1)
  loc_D3940C: FLdPr var_224
  loc_D3940F:  = Me.Value
  loc_D39414: FLdRfVar var_264
  loc_D39417: ConcatVar var_294
  loc_D3941B: LitVarStr var_284, " AND NumeLiqu = "
  loc_D39420: ConcatVar var_2A4
  loc_D39424: FLdRfVar var_2B4
  loc_D39427: FLdRfVar var_2EC
  loc_D3942A: LitVarStr var_2C4, "NumeLiqu"
  loc_D3942F: PopAdLdVar
  loc_D39430: FLdRfVar var_2D8
  loc_D39433: FLdPr Me
  loc_D39436: MemLdPr global_68
  loc_D39439:  = Me.Fields
  loc_D3943E: FLdPr var_2D8
  loc_D39441: from_stack_2 = Me.Item(from_stack_1)
  loc_D39446: FLdPr var_2EC
  loc_D39449:  = Me.Value
  loc_D3944E: FLdRfVar var_2B4
  loc_D39451: ConcatVar var_2D4
  loc_D39455: LitVarStr var_2E8, " AND CodiCome = "
  loc_D3945A: ConcatVar var_2FC
  loc_D3945E: FLdRfVar var_31C
  loc_D39461: FLdRfVar var_374
  loc_D39464: LitVarStr var_30C, "CodiCome"
  loc_D39469: PopAdLdVar
  loc_D3946A: FLdRfVar var_360
  loc_D3946D: FLdPr Me
  loc_D39470: MemLdPr global_68
  loc_D39473:  = Me.Fields
  loc_D39478: FLdPr var_360
  loc_D3947B: from_stack_2 = Me.Item(from_stack_1)
  loc_D39480: FLdPr var_374
  loc_D39483:  = Me.Value
  loc_D39488: FLdRfVar var_31C
  loc_D3948B: ConcatVar var_32C
  loc_D3948F: LitVarStr var_34C, " AND CodiConc = '"
  loc_D39494: ConcatVar var_33C
  loc_D39498: FLdRfVar var_35C
  loc_D3949B: FLdRfVar var_3CC
  loc_D3949E: LitVarStr var_370, "CodiConc"
  loc_D394A3: PopAdLdVar
  loc_D394A4: FLdRfVar var_3B8
  loc_D394A7: FLdPr Me
  loc_D394AA: MemLdPr global_68
  loc_D394AD:  = Me.Fields
  loc_D394B2: FLdPr var_3B8
  loc_D394B5: from_stack_2 = Me.Item(from_stack_1)
  loc_D394BA: FLdPr var_3CC
  loc_D394BD:  = Me.Value
  loc_D394C2: FLdRfVar var_35C
  loc_D394C5: ConcatVar var_384
  loc_D394C9: LitVarStr var_3A4, "'"
  loc_D394CE: ConcatVar var_394
  loc_D394D2: LitVarStr var_3C8, " AND TipoVenc = 2"
  loc_D394D7: ConcatVar var_3B4
  loc_D394DB: CStrVarVal var_168
  loc_D394DF: Call EjecutarRsCls5(from_stack_1v)
  loc_D394E4: FFreeStr var_164 = ""
  loc_D394EB: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = ""
  loc_D39502: FFreeVar var_1EC = "": var_1CC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = ""
  loc_D3952B: FLdRfVar var_1A0
  loc_D3952E: FLdPr Me
  loc_D39531: MemLdPr global_76
  loc_D39534:  = Me.RecordCount
  loc_D39539: ILdRf var_1A0
  loc_D3953C: LitI4 0
  loc_D39541: GtI4
  loc_D39542: BranchF loc_D39647
  loc_D39545: FLdI2 var_AA
  loc_D39548: LitI2_Byte 2
  loc_D3954A: LeI2
  loc_D3954B: BranchF loc_D3958D
  loc_D3954E: FLdRfVar var_1CC
  loc_D39551: FLdRfVar var_1BC
  loc_D39554: LitVarStr var_1B8, "CapiDebo"
  loc_D39559: PopAdLdVar
  loc_D3955A: FLdRfVar var_1A8
  loc_D3955D: FLdPr Me
  loc_D39560: MemLdPr global_72
  loc_D39563:  = Me.Fields
  loc_D39568: FLdPr var_1A8
  loc_D3956B: from_stack_2 = Me.Item(from_stack_1)
  loc_D39570: FLdPr var_1BC
  loc_D39573:  = Me.Value
  loc_D39578: FLdRfVar var_1CC
  loc_D3957B: FnCDblVar
  loc_D3957D: FStFPR8 var_CC
  loc_D39580: FFreeAd var_1A8 = ""
  loc_D39587: FFree1Var var_1CC = ""
  loc_D3958A: Branch loc_D395C9
  loc_D3958D: FLdRfVar var_1CC
  loc_D39590: FLdRfVar var_1BC
  loc_D39593: LitVarStr var_1B8, "ImpoLpde"
  loc_D39598: PopAdLdVar
  loc_D39599: FLdRfVar var_1A8
  loc_D3959C: FLdPr Me
  loc_D3959F: MemLdPr global_76
  loc_D395A2:  = Me.Fields
  loc_D395A7: FLdPr var_1A8
  loc_D395AA: from_stack_2 = Me.Item(from_stack_1)
  loc_D395AF: FLdPr var_1BC
  loc_D395B2:  = Me.Value
  loc_D395B7: FLdRfVar var_1CC
  loc_D395BA: FnCDblVar
  loc_D395BC: FStFPR8 var_CC
  loc_D395BF: FFreeAd var_1A8 = ""
  loc_D395C6: FFree1Var var_1CC = ""
  loc_D395C9: FLdRfVar var_1CC
  loc_D395CC: FLdRfVar var_1BC
  loc_D395CF: LitVarStr var_1B8, "DecaLpde"
  loc_D395D4: PopAdLdVar
  loc_D395D5: FLdRfVar var_1A8
  loc_D395D8: FLdPr Me
  loc_D395DB: MemLdPr global_76
  loc_D395DE:  = Me.Fields
  loc_D395E3: FLdPr var_1A8
  loc_D395E6: from_stack_2 = Me.Item(from_stack_1)
  loc_D395EB: FLdPr var_1BC
  loc_D395EE:  = Me.Value
  loc_D395F3: FLdRfVar var_1CC
  loc_D395F6: FnCDblVar
  loc_D395F8: FStFPR8 var_D4
  loc_D395FB: FFreeAd var_1A8 = ""
  loc_D39602: FFree1Var var_1CC = ""
  loc_D39605: FLdRfVar var_1CC
  loc_D39608: FLdRfVar var_1BC
  loc_D3960B: LitVarStr var_1B8, "ExceLpde"
  loc_D39610: PopAdLdVar
  loc_D39611: FLdRfVar var_1A8
  loc_D39614: FLdPr Me
  loc_D39617: MemLdPr global_76
  loc_D3961A:  = Me.Fields
  loc_D3961F: FLdPr var_1A8
  loc_D39622: from_stack_2 = Me.Item(from_stack_1)
  loc_D39627: FLdPr var_1BC
  loc_D3962A:  = Me.Value
  loc_D3962F: FLdRfVar var_1CC
  loc_D39632: FnCDblVar
  loc_D39634: FStFPR8 var_DC
  loc_D39637: FFreeAd var_1A8 = ""
  loc_D3963E: FFree1Var var_1CC = ""
  loc_D39641: LitI2_Byte 0
  loc_D39643: CR8I2
  loc_D39644: FStFPR8 var_100
  loc_D39647: Branch loc_D39698
  loc_D3964A: FLdRfVar var_1CC
  loc_D3964D: FLdRfVar var_1BC
  loc_D39650: LitVarStr var_1B8, "CapiDebo"
  loc_D39655: PopAdLdVar
  loc_D39656: FLdRfVar var_1A8
  loc_D39659: FLdPr Me
  loc_D3965C: MemLdPr global_72
  loc_D3965F:  = Me.Fields
  loc_D39664: FLdPr var_1A8
  loc_D39667: from_stack_2 = Me.Item(from_stack_1)
  loc_D3966C: FLdPr var_1BC
  loc_D3966F:  = Me.Value
  loc_D39674: FLdRfVar var_1CC
  loc_D39677: FnCDblVar
  loc_D39679: FStFPR8 var_CC
  loc_D3967C: FFreeAd var_1A8 = ""
  loc_D39683: FFree1Var var_1CC = ""
  loc_D39686: LitI2_Byte 0
  loc_D39688: CR8I2
  loc_D39689: FStFPR8 var_D4
  loc_D3968C: LitI2_Byte 0
  loc_D3968E: CR8I2
  loc_D3968F: FStFPR8 var_DC
  loc_D39692: LitI2_Byte 0
  loc_D39694: CR8I2
  loc_D39695: FStFPR8 var_100
  loc_D39698: FLdFPR8 var_CC
  loc_D3969B: FLdFPR8 var_D4
  loc_D3969E: SubR4
  loc_D3969F: FLdFPR8 var_DC
  loc_D396A2: SubR4
  loc_D396A3: FLdFPR8 var_100
  loc_D396A6: SubR4
  loc_D396A7: FStFPR8 var_E4
  loc_D396AA: FLdFPR8 var_110
  loc_D396AD: FLdFPR8 var_CC
  loc_D396B0: AddR8
  loc_D396B1: FStFPR8 var_110
  loc_D396B4: FLdFPR8 var_118
  loc_D396B7: FLdFPR8 var_D4
  loc_D396BA: AddR8
  loc_D396BB: FStFPR8 var_118
  loc_D396BE: FLdFPR8 var_120
  loc_D396C1: FLdFPR8 var_DC
  loc_D396C4: AddR8
  loc_D396C5: FStFPR8 var_120
  loc_D396C8: FLdFPR8 var_128
  loc_D396CB: FLdFPR8 var_100
  loc_D396CE: AddR8
  loc_D396CF: FStFPR8 var_128
  loc_D396D2: ILdRf var_150
  loc_D396D5: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiTili, NumeLiqu, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, CrafDebo, TotaDebo) "
  loc_D396D8: ConcatStr
  loc_D396D9: FStStrNoPop var_164
  loc_D396DC: LitStr " VALUES ("
  loc_D396DF: ConcatStr
  loc_D396E0: FStStrNoPop var_168
  loc_D396E3: FLdI2 iPeriodo
  loc_D396E6: CStrUI1
  loc_D396E8: FStStrNoPop var_16C
  loc_D396EB: ConcatStr
  loc_D396EC: FStStrNoPop var_170
  loc_D396EF: LitStr ","
  loc_D396F2: ConcatStr
  loc_D396F3: FStStrNoPop var_174
  loc_D396F6: ILdRf var_9C
  loc_D396F9: CStrI4
  loc_D396FB: FStStrNoPop var_178
  loc_D396FE: ConcatStr
  loc_D396FF: FStStrNoPop var_17C
  loc_D39702: LitStr ","
  loc_D39705: ConcatStr
  loc_D39706: FStStrNoPop var_180
  loc_D39709: FLdI2 iPeriodo
  loc_D3970C: CStrUI1
  loc_D3970E: FStStrNoPop var_184
  loc_D39711: ConcatStr
  loc_D39712: FStStrNoPop var_188
  loc_D39715: LitStr ","
  loc_D39718: ConcatStr
  loc_D39719: FStStrNoPop var_18C
  loc_D3971C: FLdI2 var_E6
  loc_D3971F: CStrUI1
  loc_D39721: FStStrNoPop var_190
  loc_D39724: ConcatStr
  loc_D39725: FStStrNoPop var_194
  loc_D39728: LitStr ","
  loc_D3972B: ConcatStr
  loc_D3972C: FStStrNoPop var_198
  loc_D3972F: ILdRf var_98
  loc_D39732: CStrI4
  loc_D39734: FStStrNoPop var_19C
  loc_D39737: ConcatStr
  loc_D39738: FStStrNoPop var_734
  loc_D3973B: LitStr ",1,1,"
  loc_D3973E: ConcatStr
  loc_D3973F: CVarStr var_1EC
  loc_D39742: FLdRfVar var_1CC
  loc_D39745: FLdRfVar var_1BC
  loc_D39748: LitVarStr var_1B8, "CodiTili"
  loc_D3974D: PopAdLdVar
  loc_D3974E: FLdRfVar var_1A8
  loc_D39751: FLdPr Me
  loc_D39754: MemLdPr global_72
  loc_D39757:  = Me.Fields
  loc_D3975C: FLdPr var_1A8
  loc_D3975F: from_stack_2 = Me.Item(from_stack_1)
  loc_D39764: FLdPr var_1BC
  loc_D39767:  = Me.Value
  loc_D3976C: FLdRfVar var_1CC
  loc_D3976F: ConcatVar var_1FC
  loc_D39773: LitVarStr var_1DC, ","
  loc_D39778: ConcatVar var_20C
  loc_D3977C: FLdRfVar var_234
  loc_D3977F: FLdRfVar var_224
  loc_D39782: LitVarStr var_220, "NumeLiqu"
  loc_D39787: PopAdLdVar
  loc_D39788: FLdRfVar var_210
  loc_D3978B: FLdPr Me
  loc_D3978E: MemLdPr global_72
  loc_D39791:  = Me.Fields
  loc_D39796: FLdPr var_210
  loc_D39799: from_stack_2 = Me.Item(from_stack_1)
  loc_D3979E: FLdPr var_224
  loc_D397A1:  = Me.Value
  loc_D397A6: FLdRfVar var_234
  loc_D397A9: ConcatVar var_244
  loc_D397AD: LitVarStr var_254, ",6,'"
  loc_D397B2: ConcatVar var_264
  loc_D397B6: FLdRfVar var_294
  loc_D397B9: FLdRfVar var_2EC
  loc_D397BC: LitVarStr var_274, "CuenCtct"
  loc_D397C1: PopAdLdVar
  loc_D397C2: FLdRfVar var_2D8
  loc_D397C5: FLdPr Me
  loc_D397C8: MemLdPr global_72
  loc_D397CB:  = Me.Fields
  loc_D397D0: FLdPr var_2D8
  loc_D397D3: from_stack_2 = Me.Item(from_stack_1)
  loc_D397D8: FLdPr var_2EC
  loc_D397DB:  = Me.Value
  loc_D397E0: FLdRfVar var_294
  loc_D397E3: ConcatVar var_2A4
  loc_D397E7: LitVarStr var_284, "','Anual',0,0,0,"
  loc_D397EC: ConcatVar var_2B4
  loc_D397F0: FLdRfVar var_2D4
  loc_D397F3: FLdRfVar var_374
  loc_D397F6: LitVarStr var_2C4, "CodiTimo"
  loc_D397FB: PopAdLdVar
  loc_D397FC: FLdRfVar var_360
  loc_D397FF: FLdPr Me
  loc_D39802: MemLdPr global_72
  loc_D39805:  = Me.Fields
  loc_D3980A: FLdPr var_360
  loc_D3980D: from_stack_2 = Me.Item(from_stack_1)
  loc_D39812: FLdPr var_374
  loc_D39815:  = Me.Value
  loc_D3981A: FLdRfVar var_2D4
  loc_D3981D: ConcatVar var_2FC
  loc_D39821: LitVarStr var_2E8, ","
  loc_D39826: ConcatVar var_31C
  loc_D3982A: FLdRfVar var_32C
  loc_D3982D: FLdRfVar var_3CC
  loc_D39830: LitVarStr var_30C, "PeriInfo"
  loc_D39835: PopAdLdVar
  loc_D39836: FLdRfVar var_3B8
  loc_D39839: FLdPr Me
  loc_D3983C: MemLdPr global_72
  loc_D3983F:  = Me.Fields
  loc_D39844: FLdPr var_3B8
  loc_D39847: from_stack_2 = Me.Item(from_stack_1)
  loc_D3984C: FLdPr var_3CC
  loc_D3984F:  = Me.Value
  loc_D39854: FLdRfVar var_32C
  loc_D39857: ConcatVar var_33C
  loc_D3985B: LitVarStr var_34C, ",'"
  loc_D39860: ConcatVar var_35C
  loc_D39864: FLdRfVar var_384
  loc_D39867: FLdRfVar var_424
  loc_D3986A: LitVarStr var_370, "CodiConc"
  loc_D3986F: PopAdLdVar
  loc_D39870: FLdRfVar var_410
  loc_D39873: FLdPr Me
  loc_D39876: MemLdPr global_72
  loc_D39879:  = Me.Fields
  loc_D3987E: FLdPr var_410
  loc_D39881: from_stack_2 = Me.Item(from_stack_1)
  loc_D39886: FLdPr var_424
  loc_D39889:  = Me.Value
  loc_D3988E: FLdRfVar var_384
  loc_D39891: ConcatVar var_394
  loc_D39895: LitVarStr var_3A4, "',"
  loc_D3989A: ConcatVar var_3B4
  loc_D3989E: LitI4 0
  loc_D398A3: LitI4 -1
  loc_D398A8: LitI4 1
  loc_D398AD: LitStr "."
  loc_D398B0: LitStr ","
  loc_D398B3: FLdFPR8 var_CC
  loc_D398B6: CStrR8
  loc_D398B8: FStStrNoPop var_738
  loc_D398BB: ImpAdCallI2 Replace(, , , , , )
  loc_D398C0: CVarStr var_3DC
  loc_D398C3: ConcatVar var_3EC
  loc_D398C7: LitVarStr var_3C8, ","
  loc_D398CC: ConcatVar var_40C
  loc_D398D0: LitI4 0
  loc_D398D5: LitI4 -1
  loc_D398DA: LitI4 1
  loc_D398DF: LitStr "."
  loc_D398E2: LitStr ","
  loc_D398E5: FLdFPR8 var_D4
  loc_D398E8: CStrR8
  loc_D398EA: FStStrNoPop var_73C
  loc_D398ED: ImpAdCallI2 Replace(, , , , , )
  loc_D398F2: CVarStr var_434
  loc_D398F5: ConcatVar var_444
  loc_D398F9: LitVarStr var_3FC, ",0,0,0,"
  loc_D398FE: ConcatVar var_454
  loc_D39902: LitI4 0
  loc_D39907: LitI4 -1
  loc_D3990C: LitI4 1
  loc_D39911: LitStr "."
  loc_D39914: LitStr ","
  loc_D39917: FLdFPR8 var_DC
  loc_D3991A: CStrR8
  loc_D3991C: FStStrNoPop var_740
  loc_D3991F: ImpAdCallI2 Replace(, , , , , )
  loc_D39924: CVarStr var_474
  loc_D39927: ConcatVar var_49C
  loc_D3992B: LitVarStr var_420, ","
  loc_D39930: ConcatVar var_4AC
  loc_D39934: LitI4 0
  loc_D39939: LitI4 -1
  loc_D3993E: LitI4 1
  loc_D39943: LitStr "."
  loc_D39946: LitStr ","
  loc_D39949: FLdFPR8 var_100
  loc_D3994C: CStrR8
  loc_D3994E: FStStrNoPop var_744
  loc_D39951: ImpAdCallI2 Replace(, , , , , )
  loc_D39956: CVarStr var_4BC
  loc_D39959: ConcatVar var_4DC
  loc_D3995D: LitVarStr var_464, ","
  loc_D39962: ConcatVar var_4FC
  loc_D39966: LitI4 0
  loc_D3996B: LitI4 -1
  loc_D39970: LitI4 1
  loc_D39975: LitStr "."
  loc_D39978: LitStr ","
  loc_D3997B: FLdFPR8 var_E4
  loc_D3997E: CStrR8
  loc_D39980: FStStrNoPop var_748
  loc_D39983: ImpAdCallI2 Replace(, , , , , )
  loc_D39988: CVarStr var_51C
  loc_D3998B: ConcatVar var_54C
  loc_D3998F: LitVarStr var_488, ");"
  loc_D39994: ConcatVar var_5AC
  loc_D39998: CStrVarTmp
  loc_D39999: FStStr var_150
  loc_D3999C: FFreeStr var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_734 = "": var_738 = "": var_73C = "": var_740 = "": var_744 = ""
  loc_D399C9: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = "": var_3CC = "": var_410 = ""
  loc_D399E4: FFreeVar var_4FC = "": var_51C = "": var_54C = "": var_5AC = "": var_1EC = "": var_1CC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3DC = "": var_3EC = "": var_40C = "": var_434 = "": var_444 = "": var_454 = "": var_474 = "": var_49C = "": var_4AC = "": var_4BC = ""
  loc_D39A2B: FLdPr Me
  loc_D39A2E: MemLdPr global_72
  loc_D39A31: Me.MoveNext
  loc_D39A36: Branch loc_D39335
  loc_D39A39: FLdRfVar var_AA
  loc_D39A3C: NextI2 var_730, loc_D38E49
  loc_D39A41: ILdRf var_150
  loc_D39A44: Call EjecutarRsCls(from_stack_1v)
  loc_D39A49: LitI2_Byte 0
  loc_D39A4B: CR8I2
  loc_D39A4C: FStFPR8 var_158
  loc_D39A4F: LitI2_Byte 0
  loc_D39A51: CR8I2
  loc_D39A52: FStFPR8 var_160
  loc_D39A55: Branch loc_D39BD1
  loc_D39A58: FLdRfVar var_52C
  loc_D39A5B: LitVarStr var_1B8, "Pago Anticipado"
  loc_D39A60: HardType
  loc_D39A61: EqVarBool
  loc_D39A63: BranchF loc_D39BD1
  loc_D39A66: LitVarStr var_1DC, " UPDATE pagoanti SET EstaPaan = 'Liquidado' WHERE CodiOfic = 6 AND CuenCtct = '"
  loc_D39A6B: FLdRfVar var_1CC
  loc_D39A6E: FLdRfVar var_1BC
  loc_D39A71: LitVarStr var_1B8, "CodiCome"
  loc_D39A76: PopAdLdVar
  loc_D39A77: FLdRfVar var_1A8
  loc_D39A7A: FLdPr Me
  loc_D39A7D: MemLdPr global_68
  loc_D39A80:  = Me.Fields
  loc_D39A85: FLdPr var_1A8
  loc_D39A88: from_stack_2 = Me.Item(from_stack_1)
  loc_D39A8D: FLdPr var_1BC
  loc_D39A90:  = Me.Value
  loc_D39A95: FLdRfVar var_1CC
  loc_D39A98: ConcatVar var_1EC
  loc_D39A9C: LitVarStr var_220, "' AND PeriLiqu = "
  loc_D39AA1: ConcatVar var_1FC
  loc_D39AA5: FLdRfVar var_20C
  loc_D39AA8: FLdRfVar var_224
  loc_D39AAB: LitVarStr var_254, "PeriLiqu"
  loc_D39AB0: PopAdLdVar
  loc_D39AB1: FLdRfVar var_210
  loc_D39AB4: FLdPr Me
  loc_D39AB7: MemLdPr global_68
  loc_D39ABA:  = Me.Fields
  loc_D39ABF: FLdPr var_210
  loc_D39AC2: from_stack_2 = Me.Item(from_stack_1)
  loc_D39AC7: FLdPr var_224
  loc_D39ACA:  = Me.Value
  loc_D39ACF: FLdRfVar var_20C
  loc_D39AD2: ConcatVar var_234
  loc_D39AD6: LitVarStr var_274, " AND BimeLiqu = "
  loc_D39ADB: ConcatVar var_244
  loc_D39ADF: FLdRfVar var_264
  loc_D39AE2: FLdRfVar var_2EC
  loc_D39AE5: LitVarStr var_284, "BimeLiqu"
  loc_D39AEA: PopAdLdVar
  loc_D39AEB: FLdRfVar var_2D8
  loc_D39AEE: FLdPr Me
  loc_D39AF1: MemLdPr global_68
  loc_D39AF4:  = Me.Fields
  loc_D39AF9: FLdPr var_2D8
  loc_D39AFC: from_stack_2 = Me.Item(from_stack_1)
  loc_D39B01: FLdPr var_2EC
  loc_D39B04:  = Me.Value
  loc_D39B09: FLdRfVar var_264
  loc_D39B0C: ConcatVar var_294
  loc_D39B10: LitVarStr var_2C4, " AND CodiTili = "
  loc_D39B15: ConcatVar var_2A4
  loc_D39B19: FLdRfVar var_2B4
  loc_D39B1C: FLdRfVar var_374
  loc_D39B1F: LitVarStr var_2E8, "CodiTili"
  loc_D39B24: PopAdLdVar
  loc_D39B25: FLdRfVar var_360
  loc_D39B28: FLdPr Me
  loc_D39B2B: MemLdPr global_68
  loc_D39B2E:  = Me.Fields
  loc_D39B33: FLdPr var_360
  loc_D39B36: from_stack_2 = Me.Item(from_stack_1)
  loc_D39B3B: FLdPr var_374
  loc_D39B3E:  = Me.Value
  loc_D39B43: FLdRfVar var_2B4
  loc_D39B46: ConcatVar var_2D4
  loc_D39B4A: LitVarStr var_30C, " AND NumeLiqu = "
  loc_D39B4F: ConcatVar var_2FC
  loc_D39B53: FLdRfVar var_31C
  loc_D39B56: FLdRfVar var_3CC
  loc_D39B59: LitVarStr var_34C, "NumeLiqu"
  loc_D39B5E: PopAdLdVar
  loc_D39B5F: FLdRfVar var_3B8
  loc_D39B62: FLdPr Me
  loc_D39B65: MemLdPr global_68
  loc_D39B68:  = Me.Fields
  loc_D39B6D: FLdPr var_3B8
  loc_D39B70: from_stack_2 = Me.Item(from_stack_1)
  loc_D39B75: FLdPr var_3CC
  loc_D39B78:  = Me.Value
  loc_D39B7D: FLdRfVar var_31C
  loc_D39B80: ConcatVar var_32C
  loc_D39B84: LitVarStr var_370, ";"
  loc_D39B89: ConcatVar var_33C
  loc_D39B8D: CStrVarVal var_164
  loc_D39B91: Call EjecutarRsCls(from_stack_1v)
  loc_D39B96: FFree1Str var_164
  loc_D39B99: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = ""
  loc_D39BB0: FFreeVar var_1CC = "": var_1EC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_264 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = ""
  loc_D39BD1: LitVarStr var_254, " UPDATE liqupubl SET ActuLipu = 'Si', PeriBole = "
  loc_D39BD6: LitVarI2 var_1CC, 0
  loc_D39BDB: FLdRfVar iPeriodo
  loc_D39BDE: CVarRef
  loc_D39BE3: ILdRf var_9C
  loc_D39BE6: LitI4 0
  loc_D39BEB: NeI4
  loc_D39BEC: CVarBoolI2 var_1B8
  loc_D39BF0: FLdRfVar var_1EC
  loc_D39BF3: ImpAdCallFPR4  = IIf(, , )
  loc_D39BF8: FLdRfVar var_1EC
  loc_D39BFB: ConcatVar var_1FC
  loc_D39BFF: LitVarStr var_274, ", NumeBole = "
  loc_D39C04: ConcatVar var_20C
  loc_D39C08: ILdRf var_9C
  loc_D39C0B: CVarI4
  loc_D39C0F: ConcatVar var_234
  loc_D39C13: LitVarStr var_2C4, ", FeacLipu = '"
  loc_D39C18: ConcatVar var_244
  loc_D39C1C: LitI4 1
  loc_D39C21: LitI4 1
  loc_D39C26: LitVarStr var_30C, "yyyy-mm-dd"
  loc_D39C2B: FStVarCopyObj var_264
  loc_D39C2E: FLdRfVar var_264
  loc_D39C31: FLdRfVar var_A4
  loc_D39C34: CVarRef
  loc_D39C39: ImpAdCallI2 Format$(, )
  loc_D39C3E: CVarStr var_294
  loc_D39C41: ConcatVar var_2A4
  loc_D39C45: LitVarStr var_34C, "', OrdeLipu = "
  loc_D39C4A: ConcatVar var_2B4
  loc_D39C4E: ILdRf lOrden
  loc_D39C51: CVarI4
  loc_D39C55: ConcatVar var_2D4
  loc_D39C59: LitVarStr var_3A4, " WHERE PeriLiqu = "
  loc_D39C5E: ConcatVar var_2FC
  loc_D39C62: FLdRfVar var_31C
  loc_D39C65: FLdRfVar var_1BC
  loc_D39C68: LitVarStr var_3C8, "PeriLiqu"
  loc_D39C6D: PopAdLdVar
  loc_D39C6E: FLdRfVar var_1A8
  loc_D39C71: FLdPr Me
  loc_D39C74: MemLdPr global_68
  loc_D39C77:  = Me.Fields
  loc_D39C7C: FLdPr var_1A8
  loc_D39C7F: from_stack_2 = Me.Item(from_stack_1)
  loc_D39C84: FLdPr var_1BC
  loc_D39C87:  = Me.Value
  loc_D39C8C: FLdRfVar var_31C
  loc_D39C8F: ConcatVar var_32C
  loc_D39C93: LitVarStr var_3FC, " AND BimeLiqu = "
  loc_D39C98: ConcatVar var_33C
  loc_D39C9C: FLdRfVar var_35C
  loc_D39C9F: FLdRfVar var_224
  loc_D39CA2: LitVarStr var_420, "BimeLiqu"
  loc_D39CA7: PopAdLdVar
  loc_D39CA8: FLdRfVar var_210
  loc_D39CAB: FLdPr Me
  loc_D39CAE: MemLdPr global_68
  loc_D39CB1:  = Me.Fields
  loc_D39CB6: FLdPr var_210
  loc_D39CB9: from_stack_2 = Me.Item(from_stack_1)
  loc_D39CBE: FLdPr var_224
  loc_D39CC1:  = Me.Value
  loc_D39CC6: FLdRfVar var_35C
  loc_D39CC9: ConcatVar var_384
  loc_D39CCD: LitVarStr var_464, " AND CodiTili = "
  loc_D39CD2: ConcatVar var_394
  loc_D39CD6: FLdRfVar var_3B4
  loc_D39CD9: FLdRfVar var_2EC
  loc_D39CDC: LitVarStr var_488, "CodiTili"
  loc_D39CE1: PopAdLdVar
  loc_D39CE2: FLdRfVar var_2D8
  loc_D39CE5: FLdPr Me
  loc_D39CE8: MemLdPr global_68
  loc_D39CEB:  = Me.Fields
  loc_D39CF0: FLdPr var_2D8
  loc_D39CF3: from_stack_2 = Me.Item(from_stack_1)
  loc_D39CF8: FLdPr var_2EC
  loc_D39CFB:  = Me.Value
  loc_D39D00: FLdRfVar var_3B4
  loc_D39D03: ConcatVar var_3DC
  loc_D39D07: LitVarStr var_4CC, " AND NumeLiqu = "
  loc_D39D0C: ConcatVar var_3EC
  loc_D39D10: FLdRfVar var_40C
  loc_D39D13: FLdRfVar var_374
  loc_D39D16: LitVarStr var_4EC, "NumeLiqu"
  loc_D39D1B: PopAdLdVar
  loc_D39D1C: FLdRfVar var_360
  loc_D39D1F: FLdPr Me
  loc_D39D22: MemLdPr global_68
  loc_D39D25:  = Me.Fields
  loc_D39D2A: FLdPr var_360
  loc_D39D2D: from_stack_2 = Me.Item(from_stack_1)
  loc_D39D32: FLdPr var_374
  loc_D39D35:  = Me.Value
  loc_D39D3A: FLdRfVar var_40C
  loc_D39D3D: ConcatVar var_434
  loc_D39D41: LitVarStr var_50C, " AND CodiCome = "
  loc_D39D46: ConcatVar var_444
  loc_D39D4A: FLdRfVar var_454
  loc_D39D4D: FLdRfVar var_3CC
  loc_D39D50: LitVarStr var_55C, "CodiCome"
  loc_D39D55: PopAdLdVar
  loc_D39D56: FLdRfVar var_3B8
  loc_D39D59: FLdPr Me
  loc_D39D5C: MemLdPr global_68
  loc_D39D5F:  = Me.Fields
  loc_D39D64: FLdPr var_3B8
  loc_D39D67: from_stack_2 = Me.Item(from_stack_1)
  loc_D39D6C: FLdPr var_3CC
  loc_D39D6F:  = Me.Value
  loc_D39D74: FLdRfVar var_454
  loc_D39D77: ConcatVar var_474
  loc_D39D7B: LitVarStr var_56C, " AND CodiConc = '"
  loc_D39D80: ConcatVar var_49C
  loc_D39D84: FLdRfVar var_4AC
  loc_D39D87: FLdRfVar var_424
  loc_D39D8A: LitVarStr var_57C, "CodiConc"
  loc_D39D8F: PopAdLdVar
  loc_D39D90: FLdRfVar var_410
  loc_D39D93: FLdPr Me
  loc_D39D96: MemLdPr global_68
  loc_D39D99:  = Me.Fields
  loc_D39D9E: FLdPr var_410
  loc_D39DA1: from_stack_2 = Me.Item(from_stack_1)
  loc_D39DA6: FLdPr var_424
  loc_D39DA9:  = Me.Value
  loc_D39DAE: FLdRfVar var_4AC
  loc_D39DB1: ConcatVar var_4BC
  loc_D39DB5: LitVarStr var_58C, "' AND TipoVenc = "
  loc_D39DBA: ConcatVar var_4DC
  loc_D39DBE: FLdRfVar var_4FC
  loc_D39DC1: FLdRfVar var_48C
  loc_D39DC4: LitVarStr var_59C, "TipoVenc"
  loc_D39DC9: PopAdLdVar
  loc_D39DCA: FLdRfVar var_478
  loc_D39DCD: FLdPr Me
  loc_D39DD0: MemLdPr global_68
  loc_D39DD3:  = Me.Fields
  loc_D39DD8: FLdPr var_478
  loc_D39DDB: from_stack_2 = Me.Item(from_stack_1)
  loc_D39DE0: FLdPr var_48C
  loc_D39DE3:  = Me.Value
  loc_D39DE8: FLdRfVar var_4FC
  loc_D39DEB: ConcatVar var_51C
  loc_D39DEF: LitVarStr var_5CC, ";"
  loc_D39DF4: ConcatVar var_54C
  loc_D39DF8: CStrVarVal var_164
  loc_D39DFC: Call EjecutarRsCls(from_stack_1v)
  loc_D39E01: FFree1Str var_164
  loc_D39E04: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_2EC = "": var_360 = "": var_374 = "": var_3B8 = "": var_3CC = "": var_410 = "": var_424 = "": var_478 = ""
  loc_D39E23: FFreeVar var_4DC = "": var_4FC = "": var_51C = "": var_54C = "": var_1B8 = "": var_1CC = "": var_1EC = "": var_1FC = "": var_20C = "": var_234 = "": var_264 = "": var_244 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2D4 = "": var_2FC = "": var_31C = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3DC = "": var_3EC = "": var_40C = "": var_434 = "": var_444 = "": var_454 = "": var_474 = "": var_49C = "": var_4AC = ""
  loc_D39E6A: FLdPr Me
  loc_D39E6D: MemLdPr global_68
  loc_D39E70: Me.MoveNext
  loc_D39E75: Branch loc_D368A4
  loc_D39E78: FLdRfVar var_1CC
  loc_D39E7B: FLdRfVar var_1BC
  loc_D39E7E: LitVarStr var_1B8, "TipoVenc"
  loc_D39E83: PopAdLdVar
  loc_D39E84: FLdRfVar var_1A8
  loc_D39E87: FLdPr Me
  loc_D39E8A: MemLdPr global_64
  loc_D39E8D:  = Me.Fields
  loc_D39E92: FLdPr var_1A8
  loc_D39E95: from_stack_2 = Me.Item(from_stack_1)
  loc_D39E9A: FLdPr var_1BC
  loc_D39E9D:  = Me.Value
  loc_D39EA2: FLdRfVar var_1CC
  loc_D39EA5: FnCIntVar
  loc_D39EA7: LitI2_Byte 2
  loc_D39EA9: EqI2
  loc_D39EAA: FFreeAd var_1A8 = ""
  loc_D39EB1: FFree1Var var_1CC = ""
  loc_D39EB4: BranchF loc_D3A204
  loc_D39EB7: FLdFPR8 var_110
  loc_D39EBA: FLdFPR8 var_118
  loc_D39EBD: SubR4
  loc_D39EBE: FLdFPR8 var_120
  loc_D39EC1: SubR4
  loc_D39EC2: FLdFPR8 var_128
  loc_D39EC5: SubR4
  loc_D39EC6: FStFPR8 var_C4
  loc_D39EC9: FLdFPR8 var_C4
  loc_D39ECC: LitI2_Byte 0
  loc_D39ECE: CR8I2
  loc_D39ECF: GtR4
  loc_D39ED0: BranchF loc_D3A204
  loc_D39ED3: FLdRfVar var_2EC
  loc_D39ED6: LitVarStr var_2E8, "FeveLipu"
  loc_D39EDB: PopAdLdVar
  loc_D39EDC: FLdRfVar var_2D8
  loc_D39EDF: FLdPr Me
  loc_D39EE2: MemLdPr global_64
  loc_D39EE5:  = Me.Fields
  loc_D39EEA: FLdPr var_2D8
  loc_D39EED: from_stack_2 = Me.Item(from_stack_1)
  loc_D39EF2: LitStr " INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiTili, NumeLiqu, CodiFapa, CuotDefa, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, CrafBole, TotaBole, CodiUsua) "
  loc_D39EF5: LitStr " VALUES ("
  loc_D39EF8: ConcatStr
  loc_D39EF9: FStStrNoPop var_164
  loc_D39EFC: FLdI2 iPeriodo
  loc_D39EFF: CStrUI1
  loc_D39F01: FStStrNoPop var_168
  loc_D39F04: ConcatStr
  loc_D39F05: FStStrNoPop var_16C
  loc_D39F08: LitStr ","
  loc_D39F0B: ConcatStr
  loc_D39F0C: FStStrNoPop var_170
  loc_D39F0F: ILdRf var_9C
  loc_D39F12: CStrI4
  loc_D39F14: FStStrNoPop var_174
  loc_D39F17: ConcatStr
  loc_D39F18: FStStrNoPop var_178
  loc_D39F1B: LitStr ",6,'"
  loc_D39F1E: ConcatStr
  loc_D39F1F: CVarStr var_1EC
  loc_D39F22: FLdRfVar var_1CC
  loc_D39F25: FLdRfVar var_1BC
  loc_D39F28: LitVarStr var_1B8, "CodiCome"
  loc_D39F2D: PopAdLdVar
  loc_D39F2E: FLdRfVar var_1A8
  loc_D39F31: FLdPr Me
  loc_D39F34: MemLdPr global_64
  loc_D39F37:  = Me.Fields
  loc_D39F3C: FLdPr var_1A8
  loc_D39F3F: from_stack_2 = Me.Item(from_stack_1)
  loc_D39F44: FLdPr var_1BC
  loc_D39F47:  = Me.Value
  loc_D39F4C: FLdRfVar var_1CC
  loc_D39F4F: ConcatVar var_1FC
  loc_D39F53: LitVarStr var_1DC, "','"
  loc_D39F58: ConcatVar var_20C
  loc_D39F5C: FLdRfVar var_234
  loc_D39F5F: FLdRfVar var_224
  loc_D39F62: LitVarStr var_220, "CucuPers"
  loc_D39F67: PopAdLdVar
  loc_D39F68: FLdRfVar var_210
  loc_D39F6B: FLdPr Me
  loc_D39F6E: MemLdPr global_64
  loc_D39F71:  = Me.Fields
  loc_D39F76: FLdPr var_210
  loc_D39F79: from_stack_2 = Me.Item(from_stack_1)
  loc_D39F7E: FLdPr var_224
  loc_D39F81:  = Me.Value
  loc_D39F86: FLdRfVar var_234
  loc_D39F89: ConcatVar var_244
  loc_D39F8D: LitVarStr var_254, "','"
  loc_D39F92: ConcatVar var_264
  loc_D39F96: LitI4 1
  loc_D39F9B: LitI4 1
  loc_D39FA0: LitVarStr var_284, "yyyy-mm-dd"
  loc_D39FA5: FStVarCopyObj var_294
  loc_D39FA8: FLdRfVar var_294
  loc_D39FAB: FLdRfVar var_A4
  loc_D39FAE: CVarRef
  loc_D39FB3: ImpAdCallI2 Format$(, )
  loc_D39FB8: CVarStr var_2A4
  loc_D39FBB: ConcatVar var_2B4
  loc_D39FBF: LitVarStr var_2C4, "','"
  loc_D39FC4: ConcatVar var_2D4
  loc_D39FC8: LitI4 1
  loc_D39FCD: LitI4 1
  loc_D39FD2: LitVarStr var_30C, "yyyy-mm-dd"
  loc_D39FD7: FStVarCopyObj var_31C
  loc_D39FDA: FLdRfVar var_31C
  loc_D39FDD: FLdZeroAd var_2EC
  loc_D39FE0: CVarAd
  loc_D39FE4: ImpAdCallI2 Format$(, )
  loc_D39FE9: CVarStr var_32C
  loc_D39FEC: ConcatVar var_33C
  loc_D39FF0: LitVarStr var_34C, "',0,'Anual','Emitido',"
  loc_D39FF5: ConcatVar var_35C
  loc_D39FF9: FLdRfVar var_384
  loc_D39FFC: FLdRfVar var_374
  loc_D39FFF: LitVarStr var_370, "CodiTili"
  loc_D3A004: PopAdLdVar
  loc_D3A005: FLdRfVar var_360
  loc_D3A008: FLdPr Me
  loc_D3A00B: MemLdPr global_64
  loc_D3A00E:  = Me.Fields
  loc_D3A013: FLdPr var_360
  loc_D3A016: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A01B: FLdPr var_374
  loc_D3A01E:  = Me.Value
  loc_D3A023: FLdRfVar var_384
  loc_D3A026: ConcatVar var_394
  loc_D3A02A: LitVarStr var_3A4, ","
  loc_D3A02F: ConcatVar var_3B4
  loc_D3A033: FLdRfVar var_3DC
  loc_D3A036: FLdRfVar var_3CC
  loc_D3A039: LitVarStr var_3C8, "NumeLiqu"
  loc_D3A03E: PopAdLdVar
  loc_D3A03F: FLdRfVar var_3B8
  loc_D3A042: FLdPr Me
  loc_D3A045: MemLdPr global_64
  loc_D3A048:  = Me.Fields
  loc_D3A04D: FLdPr var_3B8
  loc_D3A050: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A055: FLdPr var_3CC
  loc_D3A058:  = Me.Value
  loc_D3A05D: FLdRfVar var_3DC
  loc_D3A060: ConcatVar var_3EC
  loc_D3A064: LitVarStr var_3FC, ",0,0,"
  loc_D3A069: ConcatVar var_40C
  loc_D3A06D: LitI4 0
  loc_D3A072: LitI4 -1
  loc_D3A077: LitI4 1
  loc_D3A07C: LitStr "."
  loc_D3A07F: LitStr ","
  loc_D3A082: FLdFPR8 var_110
  loc_D3A085: CStrR8
  loc_D3A087: FStStrNoPop var_17C
  loc_D3A08A: ImpAdCallI2 Replace(, , , , , )
  loc_D3A08F: CVarStr var_434
  loc_D3A092: ConcatVar var_444
  loc_D3A096: LitVarStr var_420, ",0,"
  loc_D3A09B: ConcatVar var_454
  loc_D3A09F: LitI4 0
  loc_D3A0A4: LitI4 -1
  loc_D3A0A9: LitI4 1
  loc_D3A0AE: LitStr "."
  loc_D3A0B1: LitStr ","
  loc_D3A0B4: FLdFPR8 var_118
  loc_D3A0B7: CStrR8
  loc_D3A0B9: FStStrNoPop var_180
  loc_D3A0BC: ImpAdCallI2 Replace(, , , , , )
  loc_D3A0C1: CVarStr var_474
  loc_D3A0C4: ConcatVar var_49C
  loc_D3A0C8: LitVarStr var_464, ",0,0,"
  loc_D3A0CD: ConcatVar var_4AC
  loc_D3A0D1: LitI4 0
  loc_D3A0D6: LitI4 -1
  loc_D3A0DB: LitI4 1
  loc_D3A0E0: LitStr "."
  loc_D3A0E3: LitStr ","
  loc_D3A0E6: FLdFPR8 var_120
  loc_D3A0E9: CStrR8
  loc_D3A0EB: FStStrNoPop var_184
  loc_D3A0EE: ImpAdCallI2 Replace(, , , , , )
  loc_D3A0F3: CVarStr var_4BC
  loc_D3A0F6: ConcatVar var_4DC
  loc_D3A0FA: LitVarStr var_488, ","
  loc_D3A0FF: ConcatVar var_4FC
  loc_D3A103: LitI4 0
  loc_D3A108: LitI4 -1
  loc_D3A10D: LitI4 1
  loc_D3A112: LitStr "."
  loc_D3A115: LitStr ","
  loc_D3A118: FLdFPR8 var_128
  loc_D3A11B: CStrR8
  loc_D3A11D: FStStrNoPop var_188
  loc_D3A120: ImpAdCallI2 Replace(, , , , , )
  loc_D3A125: CVarStr var_51C
  loc_D3A128: ConcatVar var_54C
  loc_D3A12C: LitVarStr var_4CC, ","
  loc_D3A131: ConcatVar var_5AC
  loc_D3A135: LitI4 0
  loc_D3A13A: LitI4 -1
  loc_D3A13F: LitI4 1
  loc_D3A144: LitStr "."
  loc_D3A147: LitStr ","
  loc_D3A14A: FLdFPR8 var_C4
  loc_D3A14D: CStrR8
  loc_D3A14F: FStStrNoPop var_18C
  loc_D3A152: ImpAdCallI2 Replace(, , , , , )
  loc_D3A157: CVarStr var_5BC
  loc_D3A15A: ConcatVar var_5DC
  loc_D3A15E: LitVarStr var_4EC, ",'"
  loc_D3A163: ConcatVar var_5FC
  loc_D3A167: ImpAdLdI4 MemVar_D9302C
  loc_D3A16A: CVarStr var_50C
  loc_D3A16D: ConcatVar var_60C
  loc_D3A171: LitVarStr var_55C, "');"
  loc_D3A176: ConcatVar var_62C
  loc_D3A17A: CStrVarVal var_190
  loc_D3A17E: Call EjecutarRsCls(from_stack_1v)
  loc_D3A183: FFreeStr var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_D3A19E: FFreeAd var_1A8 = "": var_1BC = "": var_210 = "": var_224 = "": var_2D8 = "": var_360 = "": var_374 = "": var_3B8 = ""
  loc_D3A1B3: FFreeVar var_4FC = "": var_51C = "": var_54C = "": var_5AC = "": var_5BC = "": var_5DC = "": var_5FC = "": var_60C = "": var_62C = "": var_1EC = "": var_1CC = "": var_1FC = "": var_20C = "": var_234 = "": var_244 = "": var_294 = "": var_264 = "": var_2A4 = "": var_2B4 = "": var_2FC = "": var_31C = "": var_2D4 = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3DC = "": var_3EC = "": var_40C = "": var_434 = "": var_444 = "": var_454 = "": var_474 = "": var_49C = "": var_4AC = "": var_4BC = ""
  loc_D3A204: FLdPr Me
  loc_D3A207: MemLdPr global_64
  loc_D3A20A: Me.MoveNext
  loc_D3A20F: Branch loc_D36263
  loc_D3A212: LitStr "COMMIT;"
  loc_D3A215: Call EjecutarRsCls(from_stack_1v)
  loc_D3A21A: ExitProcCbHresult
  loc_D3A220: LitStr "rollback"
  loc_D3A223: Call EjecutarRsCls(from_stack_1v)
  loc_D3A228: LitVarStr var_1DC, " "
  loc_D3A22D: FLdRfVar var_1CC
  loc_D3A230: FLdRfVar var_1BC
  loc_D3A233: LitVarStr var_1B8, "CodiCome"
  loc_D3A238: PopAdLdVar
  loc_D3A239: FLdRfVar var_1A8
  loc_D3A23C: FLdPr Me
  loc_D3A23F: MemLdPr global_64
  loc_D3A242:  = Me.Fields
  loc_D3A247: FLdPr var_1A8
  loc_D3A24A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A24F: FLdPr var_1BC
  loc_D3A252:  = Me.Value
  loc_D3A257: FLdRfVar var_1CC
  loc_D3A25A: ConcatVar var_1EC
  loc_D3A25E: CStrVarTmp
  loc_D3A25F: FStStr var_88
  loc_D3A262: FFreeAd var_1A8 = ""
  loc_D3A269: FFreeVar var_1CC = ""
  loc_D3A270: ExitProcCbHresult
End Function

Public Function BuscaDeudaDeBimestreParaLaEmisionMasiva(sCuenCtct, iPeriCtct, iBimeCtct) 'AA58A4
  'Data Table: 488CC8
  loc_AA5800: ILdRf sCuenCtct
  loc_AA5803: FStStrCopy var_8C
  loc_AA5806: LitI2_Byte 0
  loc_AA5808: FStI2 var_86
  loc_AA580B: LitStr " SELECT * FROM  ctacte USE INDEX (idxctacte09)"
  loc_AA580E: LitStr " WHERE ctacte.CodiOfic = 6"
  loc_AA5811: ConcatStr
  loc_AA5812: FStStrNoPop var_90
  loc_AA5815: LitStr " AND ctacte.CuenCtct = '"
  loc_AA5818: ConcatStr
  loc_AA5819: FStStrNoPop BuscaDeudaDeBimestreParaLaEmisionMasiva
  loc_AA581C: ILdRf var_8C
  loc_AA581F: ConcatStr
  loc_AA5820: FStStrNoPop var_98
  loc_AA5823: LitStr "'"
  loc_AA5826: ConcatStr
  loc_AA5827: FStStrNoPop var_9C
  loc_AA582A: LitStr " AND ctacte.PeriCtct = "
  loc_AA582D: ConcatStr
  loc_AA582E: FStStrNoPop var_A0
  loc_AA5831: FLdI2 iPeriCtct
  loc_AA5834: CStrUI1
  loc_AA5836: FStStrNoPop var_A4
  loc_AA5839: ConcatStr
  loc_AA583A: FStStrNoPop var_A8
  loc_AA583D: LitStr " AND ctacte.BimeCtct = "
  loc_AA5840: ConcatStr
  loc_AA5841: FStStrNoPop var_AC
  loc_AA5844: FLdI2 iBimeCtct
  loc_AA5847: CStrUI1
  loc_AA5849: FStStrNoPop var_B0
  loc_AA584C: ConcatStr
  loc_AA584D: FStStrNoPop var_B4
  loc_AA5850: LitStr " AND ctacte.CodiConc = '13020401'"
  loc_AA5853: ConcatStr
  loc_AA5854: FStStrNoPop var_B8
  loc_AA5857: Call EjecutarRsCls2(from_stack_1v)
  loc_AA585C: FFreeStr var_90 = "": BuscaDeudaDeBimestreParaLaEmisionMasiva = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_AA5875: FLdRfVar var_BC
  loc_AA5878: FLdPr Me
  loc_AA587B: MemLdPr global_64
  loc_AA587E:  = Me.RecordCount
  loc_AA5883: ILdRf var_BC
  loc_AA5886: LitI4 0
  loc_AA588B: GtI4
  loc_AA588C: BranchF loc_AA5897
  loc_AA588F: LitI2_Byte 0
  loc_AA5891: FStI2 var_86
  loc_AA5894: Branch loc_AA589C
  loc_AA5897: LitI2_Byte &HFF
  loc_AA5899: FStI2 var_86
  loc_AA589C: ExitProcCbHresult
End Function

Private Function Proc_172_95_9EFC48() '9EFC48
  'Data Table: 488CC8
  loc_9EFC24: LitStr "Primary"
  loc_9EFC27: FLdPr Me
  loc_9EFC2A: LateIdLdVar var_94 DispID_4 0
  loc_9EFC31: CastAdVar Me
  loc_9EFC35: FStAdFunc var_98
  loc_9EFC38: FLdPr var_98
  loc_9EFC40: FFree1Ad var_98
  loc_9EFC43: FFree1Var var_94 = ""
  loc_9EFC46: ExitProcHresult
  loc_9EFC47: CCyI2
End Function

Private Function Proc_172_96_9DECFC(arg_C) '9DECFC
  'Data Table: 488CC8
  loc_9DECE0: ILdI4 arg_C
  loc_9DECE3: FStStrCopy var_88
  loc_9DECE6: ILdRf var_88
  loc_9DECE9: LitStr "Primary"
  loc_9DECEC: EqStr
  loc_9DECEE: BranchF loc_9DECFB
  loc_9DECF1: FLdPr Me
  loc_9DECF4: MemLdStr RsFrm
  loc_9DECF7: IStAd
  loc_9DECFB: ExitProcHresult
End Function
