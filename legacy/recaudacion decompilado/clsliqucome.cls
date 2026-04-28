VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsliqucome"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '48E4A8
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '48E4B7
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '48E4C6
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9EF0EC
  'Data Table: 48DC88
  loc_9EF0C4: FLdRfVar var_88
  loc_9EF0C7: FLdPr Me
  loc_9EF0CA: MemLdPr RsFrm
  loc_9EF0CD:  = Me.RecordCount
  loc_9EF0D2: ILdRf var_88
  loc_9EF0D5: LitI4 0
  loc_9EF0DA: GtI4
  loc_9EF0DB: BranchF loc_9EF0E9
  loc_9EF0DE: FLdPr Me
  loc_9EF0E1: MemLdPr RsFrm
  loc_9EF0E4: Me.MoveFirst
  loc_9EF0E9: ExitProcHresult
End Sub

Public Sub MoveLast() '9EF094
  'Data Table: 48DC88
  loc_9EF06C: FLdRfVar var_88
  loc_9EF06F: FLdPr Me
  loc_9EF072: MemLdPr RsFrm
  loc_9EF075:  = Me.RecordCount
  loc_9EF07A: ILdRf var_88
  loc_9EF07D: LitI4 0
  loc_9EF082: GtI4
  loc_9EF083: BranchF loc_9EF091
  loc_9EF086: FLdPr Me
  loc_9EF089: MemLdPr RsFrm
  loc_9EF08C: Me.MoveLast
  loc_9EF091: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6D8A0
  'Data Table: 48DC88
  loc_A6D828: FLdRfVar var_86
  loc_A6D82B: FLdPr Me
  loc_A6D82E: MemLdPr RsFrm
  loc_A6D831:  = Me.EOF
  loc_A6D836: FLdI2 var_86
  loc_A6D839: NotI4
  loc_A6D83A: FLdRfVar var_8C
  loc_A6D83D: FLdPr Me
  loc_A6D840: MemLdPr RsFrm
  loc_A6D843:  = Me.RecordCount
  loc_A6D848: ILdRf var_8C
  loc_A6D84B: LitI4 0
  loc_A6D850: GtI4
  loc_A6D851: AndI4
  loc_A6D852: BranchF loc_A6D860
  loc_A6D855: FLdPr Me
  loc_A6D858: MemLdPr RsFrm
  loc_A6D85B: Me.MoveNext
  loc_A6D860: FLdRfVar var_86
  loc_A6D863: FLdPr Me
  loc_A6D866: MemLdPr RsFrm
  loc_A6D869:  = Me.EOF
  loc_A6D86E: FLdI2 var_86
  loc_A6D871: FLdRfVar var_8C
  loc_A6D874: FLdPr Me
  loc_A6D877: MemLdPr RsFrm
  loc_A6D87A:  = Me.RecordCount
  loc_A6D87F: ILdRf var_8C
  loc_A6D882: LitI4 0
  loc_A6D887: GtI4
  loc_A6D888: AndI4
  loc_A6D889: BranchF loc_A6D89C
  loc_A6D88C: ImpAdCallFPR4 Beep()
  loc_A6D891: FLdPr Me
  loc_A6D894: MemLdPr RsFrm
  loc_A6D897: Me.MoveLast
  loc_A6D89C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B1A88
  'Data Table: 48DC88
  loc_9B1A7C: FLdPr Me
  loc_9B1A7F: MemLdPr RsFrm
  loc_9B1A82: Me.MoveNext
  loc_9B1A87: ExitProcHresult
End Sub

Public Sub Move(iValor) '9BAE10
  'Data Table: 48DC88
  loc_9BADFC: LitVar_Missing var_94
  loc_9BADFF: PopAdLdVar
  loc_9BAE00: ILdI2 iValor
  loc_9BAE03: CI4UI1
  loc_9BAE04: FLdPr Me
  loc_9BAE07: MemLdPr RsFrm
  loc_9BAE0A: Me.Move from_stack_1, from_stack_2
  loc_9BAE0F: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6D4B0
  'Data Table: 48DC88
  loc_A6D438: FLdRfVar var_86
  loc_A6D43B: FLdPr Me
  loc_A6D43E: MemLdPr RsFrm
  loc_A6D441:  = Me.BOF
  loc_A6D446: FLdI2 var_86
  loc_A6D449: NotI4
  loc_A6D44A: FLdRfVar var_8C
  loc_A6D44D: FLdPr Me
  loc_A6D450: MemLdPr RsFrm
  loc_A6D453:  = Me.RecordCount
  loc_A6D458: ILdRf var_8C
  loc_A6D45B: LitI4 0
  loc_A6D460: GtI4
  loc_A6D461: AndI4
  loc_A6D462: BranchF loc_A6D470
  loc_A6D465: FLdPr Me
  loc_A6D468: MemLdPr RsFrm
  loc_A6D46B: Me.MovePrevious
  loc_A6D470: FLdRfVar var_86
  loc_A6D473: FLdPr Me
  loc_A6D476: MemLdPr RsFrm
  loc_A6D479:  = Me.BOF
  loc_A6D47E: FLdI2 var_86
  loc_A6D481: FLdRfVar var_8C
  loc_A6D484: FLdPr Me
  loc_A6D487: MemLdPr RsFrm
  loc_A6D48A:  = Me.RecordCount
  loc_A6D48F: ILdRf var_8C
  loc_A6D492: LitI4 0
  loc_A6D497: GtI4
  loc_A6D498: AndI4
  loc_A6D499: BranchF loc_A6D4AC
  loc_A6D49C: ImpAdCallFPR4 Beep()
  loc_A6D4A1: FLdPr Me
  loc_A6D4A4: MemLdPr RsFrm
  loc_A6D4A7: Me.MoveFirst
  loc_A6D4AC: ExitProcHresult
End Sub

Public Property Get EOF() '9CB944
  'Data Table: 48DC88
  loc_9CB928: FLdRfVar var_88
  loc_9CB92B: FLdPr Me
  loc_9CB92E: MemLdPr RsFrm
  loc_9CB931:  = Me.EOF
  loc_9CB936: FLdI2 var_88
  loc_9CB939: FStI2 var_86
  loc_9CB93C: ExitProcCbHresult
End Sub

Public Property Get BOF() '9C8AF4
  'Data Table: 48DC88
  loc_9C8AD8: FLdRfVar var_88
  loc_9C8ADB: FLdPr Me
  loc_9C8ADE: MemLdPr RsFrm
  loc_9C8AE1:  = Me.BOF
  loc_9C8AE6: FLdI2 var_88
  loc_9C8AE9: FStI2 var_86
  loc_9C8AEC: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B70B8
  'Data Table: 48DC88
  loc_9B70A8: ILdI4 sOrden
  loc_9B70AB: FLdPr Me
  loc_9B70AE: MemLdPr RsFrm
  loc_9B70B1: Me.Sort = from_stack_1
  loc_9B70B6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E3620
  'Data Table: 48DC88
  loc_9E3600: LitVar_Missing var_94
  loc_9E3603: PopAdLdVar
  loc_9E3604: LitI4 1
  loc_9E3609: LitI4 0
  loc_9E360E: ILdI4 sFind
  loc_9E3611: FLdPr Me
  loc_9E3614: MemLdPr RsFrm
  loc_9E3617: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E361C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9BAC34
  'Data Table: 48DC88
  loc_9BAC20: ILdI4 sCriterio
  loc_9BAC23: CVarStr var_94
  loc_9BAC26: PopAdLdVar
  loc_9BAC27: FLdPr Me
  loc_9BAC2A: MemLdPr RsFrm
  loc_9BAC2D: Me.Filter = from_stack_1
  loc_9BAC32: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9CBBA4
  'Data Table: 48DC88
  loc_9CBB88: FLdRfVar var_8C
  loc_9CBB8B: FLdPr Me
  loc_9CBB8E: MemLdPr RsFrm
  loc_9CBB91:  = Me.AbsolutePosition
  loc_9CBB96: ILdRf var_8C
  loc_9CBB99: FStR4 var_88
  loc_9CBB9C: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9CBE9C
  'Data Table: 48DC88
  loc_9CBE80: FLdRfVar var_8C
  loc_9CBE83: FLdPr Me
  loc_9CBE86: MemLdPr RsFrm
  loc_9CBE89:  = Me.RecordCount
  loc_9CBE8E: ILdRf var_8C
  loc_9CBE91: FStR4 var_88
  loc_9CBE94: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, CodiConc, TipoVenc, TipoLico, FeveLico, DeudLico, PodeLico, ImpoLico, CrafLico, ExenLico, DescLico, GastLico, TotaLico, CucuPers, CodiRuta) 'D1A244
  'Data Table: 48DC88
  loc_D16CC8: ILdRf CodiConc
  loc_D16CCB: FStStrCopy var_88
  loc_D16CCE: ILdRf TipoLico
  loc_D16CD1: FStStrCopy var_8C
  loc_D16CD4: ILdRf FeveLico
  loc_D16CD7: FStStrCopy var_90
  loc_D16CDA: ILdRf arg_70
  loc_D16CDD: FStStrCopy var_94
  loc_D16CE0: ILdRf Me0
  loc_D16CE3: FStStrCopy var_98
  loc_D16CE6: ILdRf Me8
  loc_D16CE9: FStStrCopy var_9C
  loc_D16CEC: ILdRf MeC
  loc_D16CEF: FStStrCopy var_A0
  loc_D16CF2: ILdRf arg_90
  loc_D16CF5: FStStrCopy var_A4
  loc_D16CF8: ILdRf arg_94
  loc_D16CFB: FStStrCopy var_A8
  loc_D16CFE: ILdRf arg_9C
  loc_D16D01: FStStrCopy var_AC
  loc_D16D04: ILdRf arg_A0
  loc_D16D07: FStStrCopy var_B0
  loc_D16D0A: ILdRf PeriLiquC
  loc_D16D0D: FStStrCopy var_B4
  loc_D16D10: LitI2_Byte 0
  loc_D16D12: CR8I2
  loc_D16D13: FStFPR8 var_C4
  loc_D16D16: LitI4 0
  loc_D16D1B: FStR4 var_D0
  loc_D16D1E: OnErrorGoto loc_D1A21D
  loc_D16D21: FLdUI1
  loc_D16D25: CI2UI1
  loc_D16D27: LitI2_Byte 1
  loc_D16D29: EqI2
  loc_D16D2A: FLdUI1
  loc_D16D2E: CI2UI1
  loc_D16D30: LitI2_Byte 2
  loc_D16D32: EqI2
  loc_D16D33: AndI4
  loc_D16D34: BranchF loc_D18180
  loc_D16D37: LitI2_Byte 0
  loc_D16D39: CR8I2
  loc_D16D3A: FStFPR8 var_11C
  loc_D16D3D: LitStr "START TRANSACTION;"
  loc_D16D40: FStStrCopy var_138
  loc_D16D43: LitStr "SELECT PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, CodiConc, TipoVenc, TipoLico, DeudLico, ImpoLico, GastLico, SUM(CrafLico) as CrafLico, ExenLico, DescLico, TotaLico "
  loc_D16D46: LitStr " FROM liqucome WHERE PeriLiqu = "
  loc_D16D49: ConcatStr
  loc_D16D4A: FStStrNoPop var_140
  loc_D16D4D: FLdI2 PeriLiqu
  loc_D16D50: CStrUI1
  loc_D16D52: FStStrNoPop var_144
  loc_D16D55: ConcatStr
  loc_D16D56: FStStrNoPop var_148
  loc_D16D59: LitStr " AND CodiTili = "
  loc_D16D5C: ConcatStr
  loc_D16D5D: FStStrNoPop var_14C
  loc_D16D60: FLdUI1
  loc_D16D64: CStrI2
  loc_D16D66: FStStrNoPop var_150
  loc_D16D69: ConcatStr
  loc_D16D6A: FStStrNoPop var_154
  loc_D16D6D: LitStr " AND NumeLiqu = "
  loc_D16D70: ConcatStr
  loc_D16D71: FStStrNoPop var_158
  loc_D16D74: FLdI2 NumeLiqu
  loc_D16D77: CStrUI1
  loc_D16D79: FStStrNoPop var_15C
  loc_D16D7C: ConcatStr
  loc_D16D7D: FStStrNoPop var_160
  loc_D16D80: LitStr " AND CodiCome = "
  loc_D16D83: ConcatStr
  loc_D16D84: FStStrNoPop var_164
  loc_D16D87: ILdRf CodiCome
  loc_D16D8A: CStrI4
  loc_D16D8C: FStStrNoPop var_168
  loc_D16D8F: ConcatStr
  loc_D16D90: FStStrNoPop var_16C
  loc_D16D93: LitStr " GROUP BY PeriLiqu, CodiTili, NumeLiqu, CodiCome, CodiConc"
  loc_D16D96: ConcatStr
  loc_D16D97: FStStrNoPop var_170
  loc_D16D9A: LitStr " HAVING TotaLico > 0"
  loc_D16D9D: ConcatStr
  loc_D16D9E: FStStrNoPop var_174
  loc_D16DA1: Call EjecutarRsCls2(from_stack_1v)
  loc_D16DA6: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = ""
  loc_D16DC5: FLdRfVar var_178
  loc_D16DC8: FLdPr Me
  loc_D16DCB: MemLdPr global_64
  loc_D16DCE:  = Me.RecordCount
  loc_D16DD3: ILdRf var_178
  loc_D16DD6: LitI4 0
  loc_D16DDB: GtI4
  loc_D16DDC: BranchF loc_D18175
  loc_D16DDF: FLdPr Me
  loc_D16DE2: MemLdPr global_64
  loc_D16DE5: Me.MoveFirst
  loc_D16DEA: FLdRfVar var_17A
  loc_D16DED: FLdPr Me
  loc_D16DF0: MemLdPr global_64
  loc_D16DF3:  = Me.EOF
  loc_D16DF8: FLdI2 var_17A
  loc_D16DFB: NotI4
  loc_D16DFC: BranchF loc_D18175
  loc_D16DFF: FLdRfVar var_1A4
  loc_D16E02: FLdRfVar var_194
  loc_D16E05: LitVarStr var_190, "CodiConc"
  loc_D16E0A: PopAdLdVar
  loc_D16E0B: FLdRfVar var_180
  loc_D16E0E: FLdPr Me
  loc_D16E11: MemLdPr global_64
  loc_D16E14:  = Me.Fields
  loc_D16E19: FLdPr var_180
  loc_D16E1C: from_stack_2 = Me.Item(from_stack_1)
  loc_D16E21: FLdPr var_194
  loc_D16E24:  = Me.Value
  loc_D16E29: FLdRfVar var_1A4
  loc_D16E2C: LitVarStr var_1B4, "13020201"
  loc_D16E31: HardType
  loc_D16E32: EqVarBool
  loc_D16E34: FFreeAd var_180 = ""
  loc_D16E3B: FFree1Var var_1A4 = ""
  loc_D16E3E: BranchF loc_D17B54
  loc_D16E41: LitI2_Byte 0
  loc_D16E43: CR8I2
  loc_D16E44: FStFPR8 var_11C
  loc_D16E47: LitStr "SELECT licodeta.* FROM licodeta "
  loc_D16E4A: LitStr " LEFT JOIN servcome ON servcome.CodiCome = licodeta.CodiCome"
  loc_D16E4D: ConcatStr
  loc_D16E4E: FStStrNoPop var_140
  loc_D16E51: LitStr " AND servcome.CodiRamo = licodeta.CodiRamo"
  loc_D16E54: ConcatStr
  loc_D16E55: FStStrNoPop var_144
  loc_D16E58: LitStr " AND servcome.CodiSubr = licodeta.CodiSubr"
  loc_D16E5B: ConcatStr
  loc_D16E5C: FStStrNoPop var_148
  loc_D16E5F: LitStr " AND servcome.CodiRubr = licodeta.CodiRubr"
  loc_D16E62: ConcatStr
  loc_D16E63: FStStrNoPop var_14C
  loc_D16E66: LitStr " AND servcome.PrioSeco = licodeta.NumeLcde"
  loc_D16E69: ConcatStr
  loc_D16E6A: FStStrNoPop var_150
  loc_D16E6D: LitStr " WHERE PeriLiqu = "
  loc_D16E70: ConcatStr
  loc_D16E71: CVarStr var_1C4
  loc_D16E74: FLdRfVar var_1A4
  loc_D16E77: FLdRfVar var_194
  loc_D16E7A: LitVarStr var_190, "PeriLiqu"
  loc_D16E7F: PopAdLdVar
  loc_D16E80: FLdRfVar var_180
  loc_D16E83: FLdPr Me
  loc_D16E86: MemLdPr global_64
  loc_D16E89:  = Me.Fields
  loc_D16E8E: FLdPr var_180
  loc_D16E91: from_stack_2 = Me.Item(from_stack_1)
  loc_D16E96: FLdPr var_194
  loc_D16E99:  = Me.Value
  loc_D16E9E: FLdRfVar var_1A4
  loc_D16EA1: ConcatVar var_1D4
  loc_D16EA5: LitVarStr var_1B4, " AND BimeLiqu = 1"
  loc_D16EAA: ConcatVar var_1E4
  loc_D16EAE: LitVarStr var_1F4, " AND CodiTili = "
  loc_D16EB3: ConcatVar var_204
  loc_D16EB7: FLdRfVar var_22C
  loc_D16EBA: FLdRfVar var_21C
  loc_D16EBD: LitVarStr var_218, "CodiTili"
  loc_D16EC2: PopAdLdVar
  loc_D16EC3: FLdRfVar var_208
  loc_D16EC6: FLdPr Me
  loc_D16EC9: MemLdPr global_64
  loc_D16ECC:  = Me.Fields
  loc_D16ED1: FLdPr var_208
  loc_D16ED4: from_stack_2 = Me.Item(from_stack_1)
  loc_D16ED9: FLdPr var_21C
  loc_D16EDC:  = Me.Value
  loc_D16EE1: FLdRfVar var_22C
  loc_D16EE4: ConcatVar var_23C
  loc_D16EE8: LitVarStr var_24C, " AND NumeLiqu = "
  loc_D16EED: ConcatVar var_25C
  loc_D16EF1: FLdRfVar var_284
  loc_D16EF4: FLdRfVar var_274
  loc_D16EF7: LitVarStr var_270, "NumeLiqu"
  loc_D16EFC: PopAdLdVar
  loc_D16EFD: FLdRfVar var_260
  loc_D16F00: FLdPr Me
  loc_D16F03: MemLdPr global_64
  loc_D16F06:  = Me.Fields
  loc_D16F0B: FLdPr var_260
  loc_D16F0E: from_stack_2 = Me.Item(from_stack_1)
  loc_D16F13: FLdPr var_274
  loc_D16F16:  = Me.Value
  loc_D16F1B: FLdRfVar var_284
  loc_D16F1E: ConcatVar var_294
  loc_D16F22: LitVarStr var_2A4, " AND licodeta.CodiCome = "
  loc_D16F27: ConcatVar var_2B4
  loc_D16F2B: FLdRfVar var_2DC
  loc_D16F2E: FLdRfVar var_2CC
  loc_D16F31: LitVarStr var_2C8, "CodiCome"
  loc_D16F36: PopAdLdVar
  loc_D16F37: FLdRfVar var_2B8
  loc_D16F3A: FLdPr Me
  loc_D16F3D: MemLdPr global_64
  loc_D16F40:  = Me.Fields
  loc_D16F45: FLdPr var_2B8
  loc_D16F48: from_stack_2 = Me.Item(from_stack_1)
  loc_D16F4D: FLdPr var_2CC
  loc_D16F50:  = Me.Value
  loc_D16F55: FLdRfVar var_2DC
  loc_D16F58: ConcatVar var_2EC
  loc_D16F5C: LitVarStr var_2FC, " AND CodiConc = '"
  loc_D16F61: ConcatVar var_30C
  loc_D16F65: FLdRfVar var_334
  loc_D16F68: FLdRfVar var_324
  loc_D16F6B: LitVarStr var_320, "CodiConc"
  loc_D16F70: PopAdLdVar
  loc_D16F71: FLdRfVar var_310
  loc_D16F74: FLdPr Me
  loc_D16F77: MemLdPr global_64
  loc_D16F7A:  = Me.Fields
  loc_D16F7F: FLdPr var_310
  loc_D16F82: from_stack_2 = Me.Item(from_stack_1)
  loc_D16F87: FLdPr var_324
  loc_D16F8A:  = Me.Value
  loc_D16F8F: FLdRfVar var_334
  loc_D16F92: ConcatVar var_344
  loc_D16F96: LitVarStr var_354, "'"
  loc_D16F9B: ConcatVar var_364
  loc_D16F9F: LitVarStr var_374, " AND TipoVenc = 1"
  loc_D16FA4: ConcatVar var_384
  loc_D16FA8: LitVarStr var_394, " GROUP BY licodeta.PeriLiqu, licodeta.CodiTili, licodeta.NumeLiqu, licodeta.CodiCome, licodeta.CodiConc, licodeta.TipoVenc, licodeta.CodiRamo, licodeta.CodiRubr, licodeta.PeriOrde, licodeta.CodiSubr, licodeta.NumeLcde"
  loc_D16FAD: ConcatVar var_3A4
  loc_D16FB1: LitVarStr var_3B4, " ORDER BY servcome.FealSeco DESC, servcome.CodiSubr ASC"
  loc_D16FB6: ConcatVar var_3C4
  loc_D16FBA: CStrVarVal var_154
  loc_D16FBE: Call EjecutarRsCls3(from_stack_1v)
  loc_D16FC3: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_D16FD2: FFreeAd var_180 = "": var_194 = "": var_208 = "": var_21C = "": var_260 = "": var_274 = "": var_2B8 = "": var_2CC = "": var_310 = ""
  loc_D16FE9: FFreeVar var_1C4 = "": var_1A4 = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_22C = "": var_23C = "": var_25C = "": var_284 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_2EC = "": var_30C = "": var_334 = "": var_344 = "": var_364 = "": var_384 = "": var_3A4 = ""
  loc_D17014: FLdRfVar var_178
  loc_D17017: FLdPr Me
  loc_D1701A: MemLdPr global_68
  loc_D1701D:  = Me.RecordCount
  loc_D17022: ILdRf var_178
  loc_D17025: LitI4 0
  loc_D1702A: GtI4
  loc_D1702B: BranchF loc_D1770D
  loc_D1702E: FLdPr Me
  loc_D17031: MemLdPr global_68
  loc_D17034: Me.MoveFirst
  loc_D17039: LitI2_Byte 0
  loc_D1703B: FStI2 var_13A
  loc_D1703E: FLdRfVar var_17A
  loc_D17041: FLdPr Me
  loc_D17044: MemLdPr global_68
  loc_D17047:  = Me.EOF
  loc_D1704C: FLdI2 var_17A
  loc_D1704F: NotI4
  loc_D17050: BranchF loc_D1770D
  loc_D17053: FLdI2 var_13A
  loc_D17056: LitI2_Byte 1
  loc_D17058: AddI2
  loc_D17059: FStI2 var_13A
  loc_D1705C: FLdI2 var_13A
  loc_D1705F: LitI2_Byte 1
  loc_D17061: EqI2
  loc_D17062: BranchF loc_D1706F
  loc_D17065: LitI2 2860
  loc_D17068: CR8I2
  loc_D17069: FStFPR8 var_10C
  loc_D1706C: Branch loc_D17075
  loc_D1706F: LitI2_Byte 0
  loc_D17071: CR8I2
  loc_D17072: FStFPR8 var_10C
  loc_D17075: LitI2_Byte 1
  loc_D17077: FLdRfVar var_13C
  loc_D1707A: LitI2_Byte 6
  loc_D1707C: ForI2 var_3C8
  loc_D17082: LitI2_Byte 0
  loc_D17084: CR8I2
  loc_D17085: FStFPR8 var_E0
  loc_D17088: LitI2_Byte 0
  loc_D1708A: CR8I2
  loc_D1708B: FStFPR8 var_E8
  loc_D1708E: LitI2_Byte 0
  loc_D17090: CR8I2
  loc_D17091: FStFPR8 var_F0
  loc_D17094: LitI2_Byte 0
  loc_D17096: CR8I2
  loc_D17097: FStFPR8 var_F8
  loc_D1709A: FLdI2 var_13C
  loc_D1709D: LitI2_Byte 2
  loc_D1709F: LeI2
  loc_D170A0: BranchF loc_D170B2
  loc_D170A3: LitI2_Byte 0
  loc_D170A5: CR8I2
  loc_D170A6: FStFPR8 var_E8
  loc_D170A9: LitI2_Byte 0
  loc_D170AB: CR8I2
  loc_D170AC: FStFPR8 var_F0
  loc_D170AF: Branch loc_D1712A
  loc_D170B2: FLdRfVar var_1A4
  loc_D170B5: FLdRfVar var_194
  loc_D170B8: LitVarStr var_190, "DecaLcde"
  loc_D170BD: PopAdLdVar
  loc_D170BE: FLdRfVar var_180
  loc_D170C1: FLdPr Me
  loc_D170C4: MemLdPr global_68
  loc_D170C7:  = Me.Fields
  loc_D170CC: FLdPr var_180
  loc_D170CF: from_stack_2 = Me.Item(from_stack_1)
  loc_D170D4: FLdPr var_194
  loc_D170D7:  = Me.Value
  loc_D170DC: FLdRfVar var_1A4
  loc_D170DF: FnCDblVar
  loc_D170E1: FStFPR8 var_E8
  loc_D170E4: FFreeAd var_180 = ""
  loc_D170EB: FFree1Var var_1A4 = ""
  loc_D170EE: FLdRfVar var_1A4
  loc_D170F1: FLdRfVar var_194
  loc_D170F4: LitVarStr var_190, "ExceLcde"
  loc_D170F9: PopAdLdVar
  loc_D170FA: FLdRfVar var_180
  loc_D170FD: FLdPr Me
  loc_D17100: MemLdPr global_68
  loc_D17103:  = Me.Fields
  loc_D17108: FLdPr var_180
  loc_D1710B: from_stack_2 = Me.Item(from_stack_1)
  loc_D17110: FLdPr var_194
  loc_D17113:  = Me.Value
  loc_D17118: FLdRfVar var_1A4
  loc_D1711B: FnCDblVar
  loc_D1711D: FStFPR8 var_F0
  loc_D17120: FFreeAd var_180 = ""
  loc_D17127: FFree1Var var_1A4 = ""
  loc_D1712A: FLdRfVar var_1A4
  loc_D1712D: FLdRfVar var_194
  loc_D17130: LitVarStr var_190, "ImpoLcde"
  loc_D17135: PopAdLdVar
  loc_D17136: FLdRfVar var_180
  loc_D17139: FLdPr Me
  loc_D1713C: MemLdPr global_68
  loc_D1713F:  = Me.Fields
  loc_D17144: FLdPr var_180
  loc_D17147: from_stack_2 = Me.Item(from_stack_1)
  loc_D1714C: FLdPr var_194
  loc_D1714F:  = Me.Value
  loc_D17154: FLdRfVar var_1A4
  loc_D17157: FnCDblVar
  loc_D17159: FStFPR8 var_E0
  loc_D1715C: FFreeAd var_180 = ""
  loc_D17163: FFree1Var var_1A4 = ""
  loc_D17166: FLdRfVar var_1A4
  loc_D17169: FLdRfVar var_194
  loc_D1716C: LitVarStr var_190, "CodiSubr"
  loc_D17171: PopAdLdVar
  loc_D17172: FLdRfVar var_180
  loc_D17175: FLdPr Me
  loc_D17178: MemLdPr global_68
  loc_D1717B:  = Me.Fields
  loc_D17180: FLdPr var_180
  loc_D17183: from_stack_2 = Me.Item(from_stack_1)
  loc_D17188: FLdPr var_194
  loc_D1718B:  = Me.Value
  loc_D17190: FLdRfVar var_1A4
  loc_D17193: FnCLngVar
  loc_D17195: LitI4 &H3E7
  loc_D1719A: NeI4
  loc_D1719B: FFreeAd var_180 = ""
  loc_D171A2: FFree1Var var_1A4 = ""
  loc_D171A5: BranchF loc_D17258
  loc_D171A8: FLdRfVar var_1A4
  loc_D171AB: FLdRfVar var_194
  loc_D171AE: LitVarStr var_190, "ImpoLcde"
  loc_D171B3: PopAdLdVar
  loc_D171B4: FLdRfVar var_180
  loc_D171B7: FLdPr Me
  loc_D171BA: MemLdPr global_68
  loc_D171BD:  = Me.Fields
  loc_D171C2: FLdPr var_180
  loc_D171C5: from_stack_2 = Me.Item(from_stack_1)
  loc_D171CA: FLdPr var_194
  loc_D171CD:  = Me.Value
  loc_D171D2: FLdRfVar var_1C4
  loc_D171D5: FLdRfVar var_21C
  loc_D171D8: LitVarStr var_1B4, "ExceLcde"
  loc_D171DD: PopAdLdVar
  loc_D171DE: FLdRfVar var_208
  loc_D171E1: FLdPr Me
  loc_D171E4: MemLdPr global_68
  loc_D171E7:  = Me.Fields
  loc_D171EC: FLdPr var_208
  loc_D171EF: from_stack_2 = Me.Item(from_stack_1)
  loc_D171F4: FLdPr var_21C
  loc_D171F7:  = Me.Value
  loc_D171FC: LitI4 2
  loc_D17201: FLdFPR8 var_E8
  loc_D17204: FLdRfVar var_1A4
  loc_D17207: FnCDblVar
  loc_D17209: FLdRfVar var_1C4
  loc_D1720C: FnCDblVar
  loc_D1720E: SubR4
  loc_D1720F: FLdFPR8 var_10C
  loc_D17212: SubR4
  loc_D17213: FLdFPR8 PeriLiqu4
  loc_D17216: MulR8
  loc_D17217: LitI2_Byte &H64
  loc_D17219: CR8I2
  loc_D1721A: DivR8
  loc_D1721B: AddR8
  loc_D1721C: CVarR8
  loc_D17220: FLdRfVar var_1E4
  loc_D17223: ImpAdCallFPR4  = Round(, )
  loc_D17228: FLdRfVar var_1E4
  loc_D1722B: CR4Var
  loc_D1722C: FStFPR8 var_E8
  loc_D1722F: FFreeAd var_180 = "": var_194 = "": var_208 = ""
  loc_D1723A: FFreeVar var_1A4 = "": var_1C4 = "": var_1D4 = ""
  loc_D17245: FLdI2 var_13C
  loc_D17248: LitI2_Byte 1
  loc_D1724A: GtI2
  loc_D1724B: BranchF loc_D17258
  loc_D1724E: FLdFPR8 var_E8
  loc_D17251: FLdFPR8 var_10C
  loc_D17254: AddR8
  loc_D17255: FStFPR8 var_E8
  loc_D17258: FLdRfVar var_1A4
  loc_D1725B: FLdRfVar var_194
  loc_D1725E: LitVarStr var_190, "CodiSubr"
  loc_D17263: PopAdLdVar
  loc_D17264: FLdRfVar var_180
  loc_D17267: FLdPr Me
  loc_D1726A: MemLdPr global_68
  loc_D1726D:  = Me.Fields
  loc_D17272: FLdPr var_180
  loc_D17275: from_stack_2 = Me.Item(from_stack_1)
  loc_D1727A: FLdPr var_194
  loc_D1727D:  = Me.Value
  loc_D17282: FLdRfVar var_1A4
  loc_D17285: FnCLngVar
  loc_D17287: LitI4 &H3E7
  loc_D1728C: EqI4
  loc_D1728D: FFreeAd var_180 = ""
  loc_D17294: FFree1Var var_1A4 = ""
  loc_D17297: BranchF loc_D172E3
  loc_D1729A: FLdI2 var_13C
  loc_D1729D: LitI2_Byte 1
  loc_D1729F: GtI2
  loc_D172A0: BranchF loc_D172E3
  loc_D172A3: FLdRfVar var_1A4
  loc_D172A6: FLdRfVar var_194
  loc_D172A9: LitVarStr var_190, "ImpoLcde"
  loc_D172AE: PopAdLdVar
  loc_D172AF: FLdRfVar var_180
  loc_D172B2: FLdPr Me
  loc_D172B5: MemLdPr global_68
  loc_D172B8:  = Me.Fields
  loc_D172BD: FLdPr var_180
  loc_D172C0: from_stack_2 = Me.Item(from_stack_1)
  loc_D172C5: FLdPr var_194
  loc_D172C8:  = Me.Value
  loc_D172CD: FLdFPR8 var_E8
  loc_D172D0: FLdRfVar var_1A4
  loc_D172D3: FnCDblVar
  loc_D172D5: AddR8
  loc_D172D6: FStFPR8 var_E8
  loc_D172D9: FFreeAd var_180 = ""
  loc_D172E0: FFree1Var var_1A4 = ""
  loc_D172E3: FLdFPR8 var_E0
  loc_D172E6: FLdFPR8 var_E8
  loc_D172E9: SubR4
  loc_D172EA: FLdFPR8 var_F0
  loc_D172ED: SubR4
  loc_D172EE: FStFPR8 var_F8
  loc_D172F1: FLdFPR8 var_11C
  loc_D172F4: FLdFPR8 var_E0
  loc_D172F7: AddR8
  loc_D172F8: FStFPR8 var_11C
  loc_D172FB: FLdFPR8 var_124
  loc_D172FE: FLdFPR8 var_E8
  loc_D17301: AddR8
  loc_D17302: FStFPR8 var_124
  loc_D17305: FLdFPR8 var_12C
  loc_D17308: FLdFPR8 var_F0
  loc_D1730B: AddR8
  loc_D1730C: FStFPR8 var_12C
  loc_D1730F: LitI2_Byte 0
  loc_D17311: CR8I2
  loc_D17312: FStFPR8 var_134
  loc_D17315: ILdRf var_138
  loc_D17318: LitStr " INSERT INTO licodeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLcde,ImpoLcde,DecaLcde,ExceLcde,TotaLcde) "
  loc_D1731B: ConcatStr
  loc_D1731C: FStStrNoPop var_140
  loc_D1731F: LitStr " VALUES ("
  loc_D17322: ConcatStr
  loc_D17323: CVarStr var_1C4
  loc_D17326: FLdRfVar var_1A4
  loc_D17329: FLdRfVar var_194
  loc_D1732C: LitVarStr var_190, "PeriLiqu"
  loc_D17331: PopAdLdVar
  loc_D17332: FLdRfVar var_180
  loc_D17335: FLdPr Me
  loc_D17338: MemLdPr global_68
  loc_D1733B:  = Me.Fields
  loc_D17340: FLdPr var_180
  loc_D17343: from_stack_2 = Me.Item(from_stack_1)
  loc_D17348: FLdPr var_194
  loc_D1734B:  = Me.Value
  loc_D17350: FLdRfVar var_1A4
  loc_D17353: ConcatVar var_1D4
  loc_D17357: LitVarStr var_1B4, ","
  loc_D1735C: ConcatVar var_1E4
  loc_D17360: FLdI2 var_13C
  loc_D17363: CVarI2 var_1F4
  loc_D17366: ConcatVar var_204
  loc_D1736A: LitVarStr var_218, ","
  loc_D1736F: ConcatVar var_22C
  loc_D17373: FLdRfVar var_23C
  loc_D17376: FLdRfVar var_21C
  loc_D17379: LitVarStr var_24C, "CodiTili"
  loc_D1737E: PopAdLdVar
  loc_D1737F: FLdRfVar var_208
  loc_D17382: FLdPr Me
  loc_D17385: MemLdPr global_68
  loc_D17388:  = Me.Fields
  loc_D1738D: FLdPr var_208
  loc_D17390: from_stack_2 = Me.Item(from_stack_1)
  loc_D17395: FLdPr var_21C
  loc_D17398:  = Me.Value
  loc_D1739D: FLdRfVar var_23C
  loc_D173A0: ConcatVar var_25C
  loc_D173A4: LitVarStr var_270, ","
  loc_D173A9: ConcatVar var_284
  loc_D173AD: FLdRfVar var_294
  loc_D173B0: FLdRfVar var_274
  loc_D173B3: LitVarStr var_2A4, "NumeLiqu"
  loc_D173B8: PopAdLdVar
  loc_D173B9: FLdRfVar var_260
  loc_D173BC: FLdPr Me
  loc_D173BF: MemLdPr global_68
  loc_D173C2:  = Me.Fields
  loc_D173C7: FLdPr var_260
  loc_D173CA: from_stack_2 = Me.Item(from_stack_1)
  loc_D173CF: FLdPr var_274
  loc_D173D2:  = Me.Value
  loc_D173D7: FLdRfVar var_294
  loc_D173DA: ConcatVar var_2B4
  loc_D173DE: LitVarStr var_2C8, ","
  loc_D173E3: ConcatVar var_2DC
  loc_D173E7: FLdRfVar var_2EC
  loc_D173EA: FLdRfVar var_2CC
  loc_D173ED: LitVarStr var_2FC, "CodiCome"
  loc_D173F2: PopAdLdVar
  loc_D173F3: FLdRfVar var_2B8
  loc_D173F6: FLdPr Me
  loc_D173F9: MemLdPr global_68
  loc_D173FC:  = Me.Fields
  loc_D17401: FLdPr var_2B8
  loc_D17404: from_stack_2 = Me.Item(from_stack_1)
  loc_D17409: FLdPr var_2CC
  loc_D1740C:  = Me.Value
  loc_D17411: FLdRfVar var_2EC
  loc_D17414: ConcatVar var_30C
  loc_D17418: LitVarStr var_320, ",'"
  loc_D1741D: ConcatVar var_334
  loc_D17421: FLdRfVar var_344
  loc_D17424: FLdRfVar var_324
  loc_D17427: LitVarStr var_354, "CodiConc"
  loc_D1742C: PopAdLdVar
  loc_D1742D: FLdRfVar var_310
  loc_D17430: FLdPr Me
  loc_D17433: MemLdPr global_68
  loc_D17436:  = Me.Fields
  loc_D1743B: FLdPr var_310
  loc_D1743E: from_stack_2 = Me.Item(from_stack_1)
  loc_D17443: FLdPr var_324
  loc_D17446:  = Me.Value
  loc_D1744B: FLdRfVar var_344
  loc_D1744E: ConcatVar var_364
  loc_D17452: LitVarStr var_374, "',"
  loc_D17457: ConcatVar var_384
  loc_D1745B: FLdUI1
  loc_D1745F: CVarUI1
  loc_D17463: ConcatVar var_3A4
  loc_D17467: LitVarStr var_3B4, ","
  loc_D1746C: ConcatVar var_3C4
  loc_D17470: FLdRfVar var_3F0
  loc_D17473: FLdRfVar var_3E0
  loc_D17476: LitVarStr var_3DC, "CodiRamo"
  loc_D1747B: PopAdLdVar
  loc_D1747C: FLdRfVar var_3CC
  loc_D1747F: FLdPr Me
  loc_D17482: MemLdPr global_68
  loc_D17485:  = Me.Fields
  loc_D1748A: FLdPr var_3CC
  loc_D1748D: from_stack_2 = Me.Item(from_stack_1)
  loc_D17492: FLdPr var_3E0
  loc_D17495:  = Me.Value
  loc_D1749A: FLdRfVar var_3F0
  loc_D1749D: ConcatVar var_400
  loc_D174A1: LitVarStr var_410, ",'"
  loc_D174A6: ConcatVar var_420
  loc_D174AA: FLdRfVar var_448
  loc_D174AD: FLdRfVar var_438
  loc_D174B0: LitVarStr var_434, "CodiRubr"
  loc_D174B5: PopAdLdVar
  loc_D174B6: FLdRfVar var_424
  loc_D174B9: FLdPr Me
  loc_D174BC: MemLdPr global_68
  loc_D174BF:  = Me.Fields
  loc_D174C4: FLdPr var_424
  loc_D174C7: from_stack_2 = Me.Item(from_stack_1)
  loc_D174CC: FLdPr var_438
  loc_D174CF:  = Me.Value
  loc_D174D4: FLdRfVar var_448
  loc_D174D7: ConcatVar var_458
  loc_D174DB: LitVarStr var_468, "',"
  loc_D174E0: ConcatVar var_478
  loc_D174E4: FLdRfVar var_4A0
  loc_D174E7: FLdRfVar var_490
  loc_D174EA: LitVarStr var_48C, "PeriOrde"
  loc_D174EF: PopAdLdVar
  loc_D174F0: FLdRfVar var_47C
  loc_D174F3: FLdPr Me
  loc_D174F6: MemLdPr global_68
  loc_D174F9:  = Me.Fields
  loc_D174FE: FLdPr var_47C
  loc_D17501: from_stack_2 = Me.Item(from_stack_1)
  loc_D17506: FLdPr var_490
  loc_D17509:  = Me.Value
  loc_D1750E: FLdRfVar var_4A0
  loc_D17511: ConcatVar var_4B0
  loc_D17515: LitVarStr var_4C0, ","
  loc_D1751A: ConcatVar var_4D0
  loc_D1751E: FLdRfVar var_4F8
  loc_D17521: FLdRfVar var_4E8
  loc_D17524: LitVarStr var_4E4, "CodiSubr"
  loc_D17529: PopAdLdVar
  loc_D1752A: FLdRfVar var_4D4
  loc_D1752D: FLdPr Me
  loc_D17530: MemLdPr global_68
  loc_D17533:  = Me.Fields
  loc_D17538: FLdPr var_4D4
  loc_D1753B: from_stack_2 = Me.Item(from_stack_1)
  loc_D17540: FLdPr var_4E8
  loc_D17543:  = Me.Value
  loc_D17548: FLdRfVar var_4F8
  loc_D1754B: ConcatVar var_508
  loc_D1754F: LitVarStr var_518, ","
  loc_D17554: ConcatVar var_528
  loc_D17558: FLdRfVar var_550
  loc_D1755B: FLdRfVar var_540
  loc_D1755E: LitVarStr var_53C, "NumeLcde"
  loc_D17563: PopAdLdVar
  loc_D17564: FLdRfVar var_52C
  loc_D17567: FLdPr Me
  loc_D1756A: MemLdPr global_68
  loc_D1756D:  = Me.Fields
  loc_D17572: FLdPr var_52C
  loc_D17575: from_stack_2 = Me.Item(from_stack_1)
  loc_D1757A: FLdPr var_540
  loc_D1757D:  = Me.Value
  loc_D17582: FLdRfVar var_550
  loc_D17585: ConcatVar var_560
  loc_D17589: LitVarStr var_570, ","
  loc_D1758E: ConcatVar var_580
  loc_D17592: LitI4 0
  loc_D17597: LitI4 -1
  loc_D1759C: LitI4 1
  loc_D175A1: LitStr "."
  loc_D175A4: LitStr ","
  loc_D175A7: FLdFPR8 var_E0
  loc_D175AA: CStrR8
  loc_D175AC: FStStrNoPop var_144
  loc_D175AF: ImpAdCallI2 Replace(, , , , , )
  loc_D175B4: CVarStr var_590
  loc_D175B7: ConcatVar var_5A0
  loc_D175BB: LitVarStr var_5B0, ","
  loc_D175C0: ConcatVar var_5C0
  loc_D175C4: LitI4 0
  loc_D175C9: LitI4 -1
  loc_D175CE: LitI4 1
  loc_D175D3: LitStr "."
  loc_D175D6: LitStr ","
  loc_D175D9: FLdFPR8 var_E8
  loc_D175DC: CStrR8
  loc_D175DE: FStStrNoPop var_148
  loc_D175E1: ImpAdCallI2 Replace(, , , , , )
  loc_D175E6: CVarStr var_5D0
  loc_D175E9: ConcatVar var_5E0
  loc_D175ED: LitVarStr var_5F0, ","
  loc_D175F2: ConcatVar var_600
  loc_D175F6: LitI4 0
  loc_D175FB: LitI4 -1
  loc_D17600: LitI4 1
  loc_D17605: LitStr "."
  loc_D17608: LitStr ","
  loc_D1760B: FLdFPR8 var_F0
  loc_D1760E: CStrR8
  loc_D17610: FStStrNoPop var_14C
  loc_D17613: ImpAdCallI2 Replace(, , , , , )
  loc_D17618: CVarStr var_610
  loc_D1761B: ConcatVar var_620
  loc_D1761F: LitVarStr var_630, ","
  loc_D17624: ConcatVar var_640
  loc_D17628: LitI4 0
  loc_D1762D: LitI4 -1
  loc_D17632: LitI4 1
  loc_D17637: LitStr "."
  loc_D1763A: LitStr ","
  loc_D1763D: FLdFPR8 var_F8
  loc_D17640: CStrR8
  loc_D17642: FStStrNoPop var_150
  loc_D17645: ImpAdCallI2 Replace(, , , , , )
  loc_D1764A: CVarStr var_650
  loc_D1764D: ConcatVar var_660
  loc_D17651: LitVarStr var_670, ");"
  loc_D17656: ConcatVar var_680
  loc_D1765A: CStrVarTmp
  loc_D1765B: FStStr var_138
  loc_D1765E: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_D1766B: FFreeAd var_180 = "": var_194 = "": var_208 = "": var_21C = "": var_260 = "": var_274 = "": var_2B8 = "": var_2CC = "": var_310 = "": var_324 = "": var_3CC = "": var_3E0 = "": var_424 = "": var_438 = "": var_47C = "": var_490 = "": var_4D4 = "": var_4E8 = "": var_52C = ""
  loc_D17696: FFreeVar var_508 = "": var_528 = "": var_550 = "": var_560 = "": var_580 = "": var_590 = "": var_5A0 = "": var_5C0 = "": var_5D0 = "": var_5E0 = "": var_600 = "": var_610 = "": var_620 = "": var_640 = "": var_650 = "": var_660 = "": var_680 = "": var_1C4 = "": var_1A4 = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_22C = "": var_23C = "": var_25C = "": var_284 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_2EC = "": var_30C = "": var_334 = "": var_344 = "": var_364 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3F0 = "": var_400 = "": var_420 = "": var_448 = "": var_458 = "": var_478 = "": var_4A0 = "": var_4B0 = "": var_4D0 = ""
  loc_D176F7: FLdRfVar var_13C
  loc_D176FA: NextI2 var_3C8, loc_D17082
  loc_D176FF: FLdPr Me
  loc_D17702: MemLdPr global_68
  loc_D17705: Me.MoveNext
  loc_D1770A: Branch loc_D1703E
  loc_D1770D: FLdFPR8 var_11C
  loc_D17710: FLdFPR8 var_124
  loc_D17713: SubR4
  loc_D17714: FLdFPR8 var_12C
  loc_D17717: SubR4
  loc_D17718: FLdFPR8 var_134
  loc_D1771B: SubR4
  loc_D1771C: FStFPR8 arg_68
  loc_D1771F: ILdRf var_138
  loc_D17722: LitStr " INSERT INTO liqucome (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,ActuLico,TipoLico,FealLico,FeveLico,DeudLico,PodeLico,ImpoLico,CrafLico,ExenLico,DescLico,GastLico,TotaLico,CucuPers,CodiRuta,CodiCall,NucaLico,CallLico,CodiBarr,ManzLico,CasaLico,UbicLico,CodiLoca,LocaLico,CopoLico,Vinculo) "
  loc_D17725: ConcatStr
  loc_D17726: FStStrNoPop var_140
  loc_D17729: LitStr " VALUES ("
  loc_D1772C: ConcatStr
  loc_D1772D: FStStrNoPop var_144
  loc_D17730: FLdI2 PeriLiqu
  loc_D17733: CStrUI1
  loc_D17735: FStStrNoPop var_148
  loc_D17738: ConcatStr
  loc_D17739: FStStrNoPop var_14C
  loc_D1773C: LitStr ","
  loc_D1773F: ConcatStr
  loc_D17740: FStStrNoPop var_150
  loc_D17743: FLdUI1
  loc_D17747: CStrI2
  loc_D17749: FStStrNoPop var_154
  loc_D1774C: ConcatStr
  loc_D1774D: FStStrNoPop var_158
  loc_D17750: LitStr ","
  loc_D17753: ConcatStr
  loc_D17754: FStStrNoPop var_15C
  loc_D17757: FLdUI1
  loc_D1775B: CStrI2
  loc_D1775D: FStStrNoPop var_160
  loc_D17760: ConcatStr
  loc_D17761: FStStrNoPop var_164
  loc_D17764: LitStr ","
  loc_D17767: ConcatStr
  loc_D17768: FStStrNoPop var_168
  loc_D1776B: FLdI2 NumeLiqu
  loc_D1776E: CStrUI1
  loc_D17770: FStStrNoPop var_16C
  loc_D17773: ConcatStr
  loc_D17774: FStStrNoPop var_170
  loc_D17777: LitStr ","
  loc_D1777A: ConcatStr
  loc_D1777B: FStStrNoPop var_174
  loc_D1777E: ILdRf CodiCome
  loc_D17781: CStrI4
  loc_D17783: FStStrNoPop var_684
  loc_D17786: ConcatStr
  loc_D17787: FStStrNoPop var_688
  loc_D1778A: LitStr ",'"
  loc_D1778D: ConcatStr
  loc_D1778E: FStStrNoPop var_68C
  loc_D17791: ILdRf var_88
  loc_D17794: ConcatStr
  loc_D17795: FStStrNoPop var_690
  loc_D17798: LitStr "',"
  loc_D1779B: ConcatStr
  loc_D1779C: FStStrNoPop var_694
  loc_D1779F: FLdUI1
  loc_D177A3: CStrI2
  loc_D177A5: FStStrNoPop var_698
  loc_D177A8: ConcatStr
  loc_D177A9: FStStrNoPop var_69C
  loc_D177AC: LitStr ",'No','"
  loc_D177AF: ConcatStr
  loc_D177B0: FStStrNoPop var_6A0
  loc_D177B3: ILdRf var_8C
  loc_D177B6: ConcatStr
  loc_D177B7: FStStrNoPop var_6A4
  loc_D177BA: LitStr "','"
  loc_D177BD: ConcatStr
  loc_D177BE: FStStrNoPop var_6A8
  loc_D177C1: LitI4 1
  loc_D177C6: LitI4 1
  loc_D177CB: LitVarStr var_1B4, "yyyy-mm-dd"
  loc_D177D0: FStVarCopyObj var_1A4
  loc_D177D3: FLdRfVar var_1A4
  loc_D177D6: FLdRfVar arg_A4
  loc_D177D9: CVarRef
  loc_D177DE: ImpAdCallI2 Format$(, )
  loc_D177E3: FStStrNoPop var_6AC
  loc_D177E6: ConcatStr
  loc_D177E7: FStStrNoPop var_6B0
  loc_D177EA: LitStr "','"
  loc_D177ED: ConcatStr
  loc_D177EE: FStStrNoPop var_6B4
  loc_D177F1: LitI4 1
  loc_D177F6: LitI4 1
  loc_D177FB: LitVarStr var_218, "yyyy-mm-dd"
  loc_D17800: FStVarCopyObj var_1C4
  loc_D17803: FLdRfVar var_1C4
  loc_D17806: FLdRfVar var_90
  loc_D17809: CVarRef
  loc_D1780E: ImpAdCallI2 Format$(, )
  loc_D17813: FStStrNoPop var_6B8
  loc_D17816: ConcatStr
  loc_D17817: FStStrNoPop var_6BC
  loc_D1781A: LitStr "',"
  loc_D1781D: ConcatStr
  loc_D1781E: FStStrNoPop var_6C4
  loc_D17821: LitI4 0
  loc_D17826: LitI4 -1
  loc_D1782B: LitI4 1
  loc_D17830: LitStr "."
  loc_D17833: LitStr ","
  loc_D17836: FLdFPR8 DeudLico
  loc_D17839: CStrR8
  loc_D1783B: FStStrNoPop var_6C0
  loc_D1783E: ImpAdCallI2 Replace(, , , , , )
  loc_D17843: FStStrNoPop var_6C8
  loc_D17846: ConcatStr
  loc_D17847: FStStrNoPop var_6CC
  loc_D1784A: LitStr ","
  loc_D1784D: ConcatStr
  loc_D1784E: FStStrNoPop var_6D4
  loc_D17851: LitI4 0
  loc_D17856: LitI4 -1
  loc_D1785B: LitI4 1
  loc_D17860: LitStr "."
  loc_D17863: LitStr ","
  loc_D17866: FLdFPR8 ImpoLico
  loc_D17869: CStrR8
  loc_D1786B: FStStrNoPop var_6D0
  loc_D1786E: ImpAdCallI2 Replace(, , , , , )
  loc_D17873: FStStrNoPop var_6D8
  loc_D17876: ConcatStr
  loc_D17877: FStStrNoPop var_6DC
  loc_D1787A: LitStr ","
  loc_D1787D: ConcatStr
  loc_D1787E: FStStrNoPop var_6E4
  loc_D17881: LitI4 0
  loc_D17886: LitI4 -1
  loc_D1788B: LitI4 1
  loc_D17890: LitStr "."
  loc_D17893: LitStr ","
  loc_D17896: FLdFPR8 var_11C
  loc_D17899: CStrR8
  loc_D1789B: FStStrNoPop var_6E0
  loc_D1789E: ImpAdCallI2 Replace(, , , , , )
  loc_D178A3: FStStrNoPop var_6E8
  loc_D178A6: ConcatStr
  loc_D178A7: FStStrNoPop var_6EC
  loc_D178AA: LitStr ","
  loc_D178AD: ConcatStr
  loc_D178AE: FStStrNoPop var_6F4
  loc_D178B1: LitI4 0
  loc_D178B6: LitI4 -1
  loc_D178BB: LitI4 1
  loc_D178C0: LitStr "."
  loc_D178C3: LitStr ","
  loc_D178C6: FLdFPR8 var_134
  loc_D178C9: CStrR8
  loc_D178CB: FStStrNoPop var_6F0
  loc_D178CE: ImpAdCallI2 Replace(, , , , , )
  loc_D178D3: FStStrNoPop var_6F8
  loc_D178D6: ConcatStr
  loc_D178D7: FStStrNoPop var_6FC
  loc_D178DA: LitStr ","
  loc_D178DD: ConcatStr
  loc_D178DE: FStStrNoPop var_704
  loc_D178E1: LitI4 0
  loc_D178E6: LitI4 -1
  loc_D178EB: LitI4 1
  loc_D178F0: LitStr "."
  loc_D178F3: LitStr ","
  loc_D178F6: FLdFPR8 var_12C
  loc_D178F9: CStrR8
  loc_D178FB: FStStrNoPop var_700
  loc_D178FE: ImpAdCallI2 Replace(, , , , , )
  loc_D17903: FStStrNoPop var_708
  loc_D17906: ConcatStr
  loc_D17907: FStStrNoPop var_70C
  loc_D1790A: LitStr ","
  loc_D1790D: ConcatStr
  loc_D1790E: FStStrNoPop var_714
  loc_D17911: LitI4 0
  loc_D17916: LitI4 -1
  loc_D1791B: LitI4 1
  loc_D17920: LitStr "."
  loc_D17923: LitStr ","
  loc_D17926: FLdFPR8 var_124
  loc_D17929: CStrR8
  loc_D1792B: FStStrNoPop var_710
  loc_D1792E: ImpAdCallI2 Replace(, , , , , )
  loc_D17933: FStStrNoPop var_718
  loc_D17936: ConcatStr
  loc_D17937: FStStrNoPop var_71C
  loc_D1793A: LitStr ","
  loc_D1793D: ConcatStr
  loc_D1793E: FStStrNoPop var_724
  loc_D17941: LitI4 0
  loc_D17946: LitI4 -1
  loc_D1794B: LitI4 1
  loc_D17950: LitStr "."
  loc_D17953: LitStr ","
  loc_D17956: FLdFPR8 arg_60
  loc_D17959: CStrR8
  loc_D1795B: FStStrNoPop var_720
  loc_D1795E: ImpAdCallI2 Replace(, , , , , )
  loc_D17963: FStStrNoPop var_728
  loc_D17966: ConcatStr
  loc_D17967: FStStrNoPop var_72C
  loc_D1796A: LitStr ","
  loc_D1796D: ConcatStr
  loc_D1796E: FStStrNoPop var_734
  loc_D17971: LitI4 0
  loc_D17976: LitI4 -1
  loc_D1797B: LitI4 1
  loc_D17980: LitStr "."
  loc_D17983: LitStr ","
  loc_D17986: FLdFPR8 arg_68
  loc_D17989: CStrR8
  loc_D1798B: FStStrNoPop var_730
  loc_D1798E: ImpAdCallI2 Replace(, , , , , )
  loc_D17993: FStStrNoPop var_738
  loc_D17996: ConcatStr
  loc_D17997: FStStrNoPop var_73C
  loc_D1799A: LitStr ",'"
  loc_D1799D: ConcatStr
  loc_D1799E: FStStrNoPop var_740
  loc_D179A1: ILdRf var_94
  loc_D179A4: ConcatStr
  loc_D179A5: FStStrNoPop var_744
  loc_D179A8: LitStr "',"
  loc_D179AB: ConcatStr
  loc_D179AC: FStStrNoPop var_748
  loc_D179AF: FLdI2 arg_74
  loc_D179B2: CStrUI1
  loc_D179B4: FStStrNoPop var_74C
  loc_D179B7: ConcatStr
  loc_D179B8: FStStrNoPop var_750
  loc_D179BB: LitStr ","
  loc_D179BE: ConcatStr
  loc_D179BF: FStStrNoPop var_754
  loc_D179C2: ILdRf arg_78
  loc_D179C5: CStrI4
  loc_D179C7: FStStrNoPop var_758
  loc_D179CA: ConcatStr
  loc_D179CB: FStStrNoPop var_75C
  loc_D179CE: LitStr ","
  loc_D179D1: ConcatStr
  loc_D179D2: FStStrNoPop var_760
  loc_D179D5: ILdRf arg_7C
  loc_D179D8: CStrI4
  loc_D179DA: FStStrNoPop var_764
  loc_D179DD: ConcatStr
  loc_D179DE: FStStrNoPop var_768
  loc_D179E1: LitStr ",'"
  loc_D179E4: ConcatStr
  loc_D179E5: FStStrNoPop var_76C
  loc_D179E8: LitI4 0
  loc_D179ED: LitI4 -1
  loc_D179F2: LitI4 1
  loc_D179F7: LitStr " "
  loc_D179FA: LitStr "'"
  loc_D179FD: ILdRf var_98
  loc_D17A00: ImpAdCallI2 Replace(, , , , , )
  loc_D17A05: FStStrNoPop var_770
  loc_D17A08: ConcatStr
  loc_D17A09: FStStrNoPop var_774
  loc_D17A0C: LitStr "',"
  loc_D17A0F: ConcatStr
  loc_D17A10: FStStrNoPop var_778
  loc_D17A13: FLdI2 Me4
  loc_D17A16: CStrUI1
  loc_D17A18: FStStrNoPop var_77C
  loc_D17A1B: ConcatStr
  loc_D17A1C: FStStrNoPop var_780
  loc_D17A1F: LitStr ",'"
  loc_D17A22: ConcatStr
  loc_D17A23: FStStrNoPop var_784
  loc_D17A26: ILdRf var_A0
  loc_D17A29: ConcatStr
  loc_D17A2A: FStStrNoPop var_788
  loc_D17A2D: LitStr "','"
  loc_D17A30: ConcatStr
  loc_D17A31: FStStrNoPop var_78C
  loc_D17A34: ILdRf var_A4
  loc_D17A37: ConcatStr
  loc_D17A38: FStStrNoPop var_790
  loc_D17A3B: LitStr "','"
  loc_D17A3E: ConcatStr
  loc_D17A3F: FStStrNoPop var_794
  loc_D17A42: ILdRf var_A8
  loc_D17A45: ConcatStr
  loc_D17A46: FStStrNoPop var_798
  loc_D17A49: LitStr "',"
  loc_D17A4C: ConcatStr
  loc_D17A4D: FStStrNoPop var_79C
  loc_D17A50: FLdI2 arg_98
  loc_D17A53: CStrUI1
  loc_D17A55: FStStrNoPop var_7A0
  loc_D17A58: ConcatStr
  loc_D17A59: FStStrNoPop var_7A4
  loc_D17A5C: LitStr ",'"
  loc_D17A5F: ConcatStr
  loc_D17A60: FStStrNoPop var_7A8
  loc_D17A63: ILdRf var_AC
  loc_D17A66: ConcatStr
  loc_D17A67: FStStrNoPop var_7AC
  loc_D17A6A: LitStr "','"
  loc_D17A6D: ConcatStr
  loc_D17A6E: FStStrNoPop var_7B0
  loc_D17A71: ILdRf var_B0
  loc_D17A74: ConcatStr
  loc_D17A75: FStStrNoPop var_7B4
  loc_D17A78: LitStr "','"
  loc_D17A7B: ConcatStr
  loc_D17A7C: FStStrNoPop var_7B8
  loc_D17A7F: ILdRf var_B4
  loc_D17A82: ConcatStr
  loc_D17A83: FStStrNoPop var_7BC
  loc_D17A86: LitStr "');"
  loc_D17A89: ConcatStr
  loc_D17A8A: FStStr var_138
  loc_D17A8D: FFreeStr var_7B4 = "": var_7B8 = "": var_7BC = "": var_73C = "": var_740 = "": var_744 = "": var_748 = "": var_74C = "": var_750 = "": var_754 = "": var_758 = "": var_75C = "": var_760 = "": var_764 = "": var_768 = "": var_76C = "": var_770 = "": var_774 = "": var_778 = "": var_77C = "": var_780 = "": var_784 = "": var_788 = "": var_78C = "": var_790 = "": var_794 = "": var_798 = "": var_79C = "": var_7A0 = "": var_7A4 = "": var_7A8 = "": var_7AC = "": var_7B0 = "": var_6C4 = "": var_6C8 = "": var_6CC = "": var_6D0 = "": var_6D4 = "": var_6D8 = "": var_6DC = "": var_6E0 = "": var_6E4 = "": var_6E8 = "": var_6EC = "": var_6F0 = "": var_6F4 = "": var_6F8 = "": var_6FC = "": var_700 = "": var_704 = "": var_708 = "": var_70C = "": var_710 = "": var_714 = "": var_718 = "": var_71C = "": var_720 = "": var_724 = "": var_728 = "": var_72C = "": var_730 = "": var_734 = "": var_738 = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = "": var_698 = "": var_69C = "": var_6A0 = "": var_6A4 = "": var_6A8 = "": var_6AC = "": var_6B0 = "": var_6B4 = "": var_6B8 = "": var_6BC = ""
  loc_D17B4A: FFreeVar var_1A4 = ""
  loc_D17B51: Branch loc_D18167
  loc_D17B54: LitI2_Byte 0
  loc_D17B56: CR8I2
  loc_D17B57: FStFPR8 var_124
  loc_D17B5A: LitI2_Byte 0
  loc_D17B5C: CR8I2
  loc_D17B5D: FStFPR8 var_12C
  loc_D17B60: LitI2_Byte 0
  loc_D17B62: CR8I2
  loc_D17B63: FStFPR8 var_134
  loc_D17B66: FLdRfVar var_1A4
  loc_D17B69: FLdRfVar var_194
  loc_D17B6C: LitVarStr var_190, "CodiConc"
  loc_D17B71: PopAdLdVar
  loc_D17B72: FLdRfVar var_180
  loc_D17B75: FLdPr Me
  loc_D17B78: MemLdPr global_64
  loc_D17B7B:  = Me.Fields
  loc_D17B80: FLdPr var_180
  loc_D17B83: from_stack_2 = Me.Item(from_stack_1)
  loc_D17B88: FLdPr var_194
  loc_D17B8B:  = Me.Value
  loc_D17B90: FLdRfVar var_1A4
  loc_D17B93: LitVarStr var_1B4, "13030202"
  loc_D17B98: HardType
  loc_D17B99: EqVarBool
  loc_D17B9B: FFreeAd var_180 = ""
  loc_D17BA2: FFree1Var var_1A4 = ""
  loc_D17BA5: BranchF loc_D17BE7
  loc_D17BA8: FLdRfVar var_1A4
  loc_D17BAB: FLdRfVar var_194
  loc_D17BAE: LitVarStr var_190, "ImpoLico"
  loc_D17BB3: PopAdLdVar
  loc_D17BB4: FLdRfVar var_180
  loc_D17BB7: FLdPr Me
  loc_D17BBA: MemLdPr global_64
  loc_D17BBD:  = Me.Fields
  loc_D17BC2: FLdPr var_180
  loc_D17BC5: from_stack_2 = Me.Item(from_stack_1)
  loc_D17BCA: FLdPr var_194
  loc_D17BCD:  = Me.Value
  loc_D17BD2: FLdRfVar var_1A4
  loc_D17BD5: FnCDblVar
  loc_D17BD7: FStFPR8 var_11C
  loc_D17BDA: FFreeAd var_180 = ""
  loc_D17BE1: FFree1Var var_1A4 = ""
  loc_D17BE4: Branch loc_D17C27
  loc_D17BE7: FLdRfVar var_1A4
  loc_D17BEA: FLdRfVar var_194
  loc_D17BED: LitVarStr var_190, "ImpoLico"
  loc_D17BF2: PopAdLdVar
  loc_D17BF3: FLdRfVar var_180
  loc_D17BF6: FLdPr Me
  loc_D17BF9: MemLdPr global_64
  loc_D17BFC:  = Me.Fields
  loc_D17C01: FLdPr var_180
  loc_D17C04: from_stack_2 = Me.Item(from_stack_1)
  loc_D17C09: FLdPr var_194
  loc_D17C0C:  = Me.Value
  loc_D17C11: FLdRfVar var_1A4
  loc_D17C14: FnCDblVar
  loc_D17C16: LitI2_Byte 6
  loc_D17C18: CR8I2
  loc_D17C19: MulR8
  loc_D17C1A: FStFPR8 var_11C
  loc_D17C1D: FFreeAd var_180 = ""
  loc_D17C24: FFree1Var var_1A4 = ""
  loc_D17C27: LitI2_Byte 0
  loc_D17C29: CR8I2
  loc_D17C2A: FStFPR8 var_12C
  loc_D17C2D: LitI2_Byte 0
  loc_D17C2F: CR8I2
  loc_D17C30: FStFPR8 var_134
  loc_D17C33: FLdFPR8 var_11C
  loc_D17C36: FLdFPR8 var_124
  loc_D17C39: SubR4
  loc_D17C3A: FLdFPR8 var_134
  loc_D17C3D: SubR4
  loc_D17C3E: FLdFPR8 var_12C
  loc_D17C41: SubR4
  loc_D17C42: FStFPR8 arg_68
  loc_D17C45: ILdRf var_138
  loc_D17C48: LitStr " INSERT INTO liqucome (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,ActuLico,TipoLico,FealLico,FeveLico,DeudLico,PodeLico,ImpoLico,CrafLico,ExenLico,DescLico,GastLico,TotaLico,CucuPers,CodiRuta,CodiCall,NucaLico,CallLico,CodiBarr,ManzLico,CasaLico,UbicLico,CodiLoca,LocaLico,CopoLico,Vinculo) "
  loc_D17C4B: ConcatStr
  loc_D17C4C: FStStrNoPop var_140
  loc_D17C4F: LitStr " VALUES ("
  loc_D17C52: ConcatStr
  loc_D17C53: FStStrNoPop var_144
  loc_D17C56: FLdI2 PeriLiqu
  loc_D17C59: CStrUI1
  loc_D17C5B: FStStrNoPop var_148
  loc_D17C5E: ConcatStr
  loc_D17C5F: FStStrNoPop var_14C
  loc_D17C62: LitStr ","
  loc_D17C65: ConcatStr
  loc_D17C66: FStStrNoPop var_150
  loc_D17C69: FLdUI1
  loc_D17C6D: CStrI2
  loc_D17C6F: FStStrNoPop var_154
  loc_D17C72: ConcatStr
  loc_D17C73: FStStrNoPop var_158
  loc_D17C76: LitStr ","
  loc_D17C79: ConcatStr
  loc_D17C7A: CVarStr var_1C4
  loc_D17C7D: FLdRfVar var_1A4
  loc_D17C80: FLdRfVar var_194
  loc_D17C83: LitVarStr var_190, "CodiTili"
  loc_D17C88: PopAdLdVar
  loc_D17C89: FLdRfVar var_180
  loc_D17C8C: FLdPr Me
  loc_D17C8F: MemLdPr global_64
  loc_D17C92:  = Me.Fields
  loc_D17C97: FLdPr var_180
  loc_D17C9A: from_stack_2 = Me.Item(from_stack_1)
  loc_D17C9F: FLdPr var_194
  loc_D17CA2:  = Me.Value
  loc_D17CA7: FLdRfVar var_1A4
  loc_D17CAA: ConcatVar var_1D4
  loc_D17CAE: LitVarStr var_1B4, ","
  loc_D17CB3: ConcatVar var_1E4
  loc_D17CB7: FLdRfVar var_204
  loc_D17CBA: FLdRfVar var_21C
  loc_D17CBD: LitVarStr var_1F4, "NumeLiqu"
  loc_D17CC2: PopAdLdVar
  loc_D17CC3: FLdRfVar var_208
  loc_D17CC6: FLdPr Me
  loc_D17CC9: MemLdPr global_64
  loc_D17CCC:  = Me.Fields
  loc_D17CD1: FLdPr var_208
  loc_D17CD4: from_stack_2 = Me.Item(from_stack_1)
  loc_D17CD9: FLdPr var_21C
  loc_D17CDC:  = Me.Value
  loc_D17CE1: FLdRfVar var_204
  loc_D17CE4: ConcatVar var_22C
  loc_D17CE8: LitVarStr var_218, ","
  loc_D17CED: ConcatVar var_23C
  loc_D17CF1: FLdRfVar var_25C
  loc_D17CF4: FLdRfVar var_274
  loc_D17CF7: LitVarStr var_24C, "CodiCome"
  loc_D17CFC: PopAdLdVar
  loc_D17CFD: FLdRfVar var_260
  loc_D17D00: FLdPr Me
  loc_D17D03: MemLdPr global_64
  loc_D17D06:  = Me.Fields
  loc_D17D0B: FLdPr var_260
  loc_D17D0E: from_stack_2 = Me.Item(from_stack_1)
  loc_D17D13: FLdPr var_274
  loc_D17D16:  = Me.Value
  loc_D17D1B: FLdRfVar var_25C
  loc_D17D1E: ConcatVar var_284
  loc_D17D22: LitVarStr var_270, ",'"
  loc_D17D27: ConcatVar var_294
  loc_D17D2B: FLdRfVar var_2B4
  loc_D17D2E: FLdRfVar var_2CC
  loc_D17D31: LitVarStr var_2A4, "CodiConc"
  loc_D17D36: PopAdLdVar
  loc_D17D37: FLdRfVar var_2B8
  loc_D17D3A: FLdPr Me
  loc_D17D3D: MemLdPr global_64
  loc_D17D40:  = Me.Fields
  loc_D17D45: FLdPr var_2B8
  loc_D17D48: from_stack_2 = Me.Item(from_stack_1)
  loc_D17D4D: FLdPr var_2CC
  loc_D17D50:  = Me.Value
  loc_D17D55: FLdRfVar var_2B4
  loc_D17D58: ConcatVar var_2DC
  loc_D17D5C: LitVarStr var_2C8, "',"
  loc_D17D61: ConcatVar var_2EC
  loc_D17D65: FLdUI1
  loc_D17D69: CVarUI1
  loc_D17D6D: ConcatVar var_30C
  loc_D17D71: LitVarStr var_320, ",'No','"
  loc_D17D76: ConcatVar var_334
  loc_D17D7A: ILdRf var_8C
  loc_D17D7D: CVarStr var_354
  loc_D17D80: ConcatVar var_344
  loc_D17D84: LitVarStr var_374, "','"
  loc_D17D89: ConcatVar var_364
  loc_D17D8D: LitI4 1
  loc_D17D92: LitI4 1
  loc_D17D97: LitVarStr var_3B4, "yyyy-mm-dd"
  loc_D17D9C: FStVarCopyObj var_384
  loc_D17D9F: FLdRfVar var_384
  loc_D17DA2: FLdRfVar arg_A4
  loc_D17DA5: CVarRef
  loc_D17DAA: ImpAdCallI2 Format$(, )
  loc_D17DAF: CVarStr var_3A4
  loc_D17DB2: ConcatVar var_3C4
  loc_D17DB6: LitVarStr var_3DC, "','"
  loc_D17DBB: ConcatVar var_3F0
  loc_D17DBF: LitI4 1
  loc_D17DC4: LitI4 1
  loc_D17DC9: LitVarStr var_434, "yyyy-mm-dd"
  loc_D17DCE: FStVarCopyObj var_400
  loc_D17DD1: FLdRfVar var_400
  loc_D17DD4: FLdRfVar var_90
  loc_D17DD7: CVarRef
  loc_D17DDC: ImpAdCallI2 Format$(, )
  loc_D17DE1: CVarStr var_420
  loc_D17DE4: ConcatVar var_448
  loc_D17DE8: LitVarStr var_468, "',"
  loc_D17DED: ConcatVar var_458
  loc_D17DF1: LitI4 0
  loc_D17DF6: LitI4 -1
  loc_D17DFB: LitI4 1
  loc_D17E00: LitStr "."
  loc_D17E03: LitStr ","
  loc_D17E06: FLdFPR8 DeudLico
  loc_D17E09: CStrR8
  loc_D17E0B: FStStrNoPop var_15C
  loc_D17E0E: ImpAdCallI2 Replace(, , , , , )
  loc_D17E13: CVarStr var_478
  loc_D17E16: ConcatVar var_4A0
  loc_D17E1A: LitVarStr var_48C, ","
  loc_D17E1F: ConcatVar var_4B0
  loc_D17E23: LitI4 0
  loc_D17E28: LitI4 -1
  loc_D17E2D: LitI4 1
  loc_D17E32: LitStr "."
  loc_D17E35: LitStr ","
  loc_D17E38: FLdFPR8 ImpoLico
  loc_D17E3B: CStrR8
  loc_D17E3D: FStStrNoPop var_160
  loc_D17E40: ImpAdCallI2 Replace(, , , , , )
  loc_D17E45: CVarStr var_4D0
  loc_D17E48: ConcatVar var_4F8
  loc_D17E4C: LitVarStr var_4C0, ","
  loc_D17E51: ConcatVar var_508
  loc_D17E55: LitI4 0
  loc_D17E5A: LitI4 -1
  loc_D17E5F: LitI4 1
  loc_D17E64: LitStr "."
  loc_D17E67: LitStr ","
  loc_D17E6A: FLdFPR8 var_11C
  loc_D17E6D: CStrR8
  loc_D17E6F: FStStrNoPop var_164
  loc_D17E72: ImpAdCallI2 Replace(, , , , , )
  loc_D17E77: CVarStr var_528
  loc_D17E7A: ConcatVar var_550
  loc_D17E7E: LitVarStr var_4E4, ","
  loc_D17E83: ConcatVar var_560
  loc_D17E87: LitI4 0
  loc_D17E8C: LitI4 -1
  loc_D17E91: LitI4 1
  loc_D17E96: LitStr "."
  loc_D17E99: LitStr ","
  loc_D17E9C: FLdFPR8 var_134
  loc_D17E9F: CStrR8
  loc_D17EA1: FStStrNoPop var_168
  loc_D17EA4: ImpAdCallI2 Replace(, , , , , )
  loc_D17EA9: CVarStr var_580
  loc_D17EAC: ConcatVar var_590
  loc_D17EB0: LitVarStr var_518, ","
  loc_D17EB5: ConcatVar var_5A0
  loc_D17EB9: LitI4 0
  loc_D17EBE: LitI4 -1
  loc_D17EC3: LitI4 1
  loc_D17EC8: LitStr "."
  loc_D17ECB: LitStr ","
  loc_D17ECE: FLdFPR8 var_12C
  loc_D17ED1: CStrR8
  loc_D17ED3: FStStrNoPop var_16C
  loc_D17ED6: ImpAdCallI2 Replace(, , , , , )
  loc_D17EDB: CVarStr var_5C0
  loc_D17EDE: ConcatVar var_5D0
  loc_D17EE2: LitVarStr var_53C, ","
  loc_D17EE7: ConcatVar var_5E0
  loc_D17EEB: LitI4 0
  loc_D17EF0: LitI4 -1
  loc_D17EF5: LitI4 1
  loc_D17EFA: LitStr "."
  loc_D17EFD: LitStr ","
  loc_D17F00: FLdFPR8 var_124
  loc_D17F03: CStrR8
  loc_D17F05: FStStrNoPop var_170
  loc_D17F08: ImpAdCallI2 Replace(, , , , , )
  loc_D17F0D: CVarStr var_600
  loc_D17F10: ConcatVar var_610
  loc_D17F14: LitVarStr var_570, ","
  loc_D17F19: ConcatVar var_620
  loc_D17F1D: LitI4 0
  loc_D17F22: LitI4 -1
  loc_D17F27: LitI4 1
  loc_D17F2C: LitStr "."
  loc_D17F2F: LitStr ","
  loc_D17F32: FLdFPR8 arg_60
  loc_D17F35: CStrR8
  loc_D17F37: FStStrNoPop var_174
  loc_D17F3A: ImpAdCallI2 Replace(, , , , , )
  loc_D17F3F: CVarStr var_640
  loc_D17F42: ConcatVar var_650
  loc_D17F46: LitVarStr var_5B0, ","
  loc_D17F4B: ConcatVar var_660
  loc_D17F4F: LitI4 0
  loc_D17F54: LitI4 -1
  loc_D17F59: LitI4 1
  loc_D17F5E: LitStr "."
  loc_D17F61: LitStr ","
  loc_D17F64: FLdFPR8 arg_68
  loc_D17F67: CStrR8
  loc_D17F69: FStStrNoPop var_684
  loc_D17F6C: ImpAdCallI2 Replace(, , , , , )
  loc_D17F71: CVarStr var_680
  loc_D17F74: ConcatVar var_7CC
  loc_D17F78: LitVarStr var_5F0, ",'"
  loc_D17F7D: ConcatVar var_7DC
  loc_D17F81: ILdRf var_94
  loc_D17F84: CVarStr var_630
  loc_D17F87: ConcatVar var_7EC
  loc_D17F8B: LitVarStr var_670, "',"
  loc_D17F90: ConcatVar var_7FC
  loc_D17F94: FLdI2 arg_74
  loc_D17F97: CVarI2 var_80C
  loc_D17F9A: ConcatVar var_81C
  loc_D17F9E: LitVarStr var_82C, ","
  loc_D17FA3: ConcatVar var_83C
  loc_D17FA7: ILdRf arg_78
  loc_D17FAA: CVarI4
  loc_D17FAE: ConcatVar var_85C
  loc_D17FB2: LitVarStr var_86C, ","
  loc_D17FB7: ConcatVar var_87C
  loc_D17FBB: ILdRf arg_7C
  loc_D17FBE: CVarI4
  loc_D17FC2: ConcatVar var_89C
  loc_D17FC6: LitVarStr var_8AC, ",'"
  loc_D17FCB: ConcatVar var_8BC
  loc_D17FCF: LitI4 0
  loc_D17FD4: LitI4 -1
  loc_D17FD9: LitI4 1
  loc_D17FDE: LitStr " "
  loc_D17FE1: LitStr "'"
  loc_D17FE4: ILdRf var_98
  loc_D17FE7: ImpAdCallI2 Replace(, , , , , )
  loc_D17FEC: CVarStr var_8CC
  loc_D17FEF: ConcatVar var_8DC
  loc_D17FF3: LitVarStr var_8EC, "',"
  loc_D17FF8: ConcatVar var_8FC
  loc_D17FFC: FLdI2 Me4
  loc_D17FFF: CVarI2 var_90C
  loc_D18002: ConcatVar var_91C
  loc_D18006: LitVarStr var_92C, ",'"
  loc_D1800B: ConcatVar var_93C
  loc_D1800F: ILdRf var_A0
  loc_D18012: CVarStr var_94C
  loc_D18015: ConcatVar var_95C
  loc_D18019: LitVarStr var_96C, "','"
  loc_D1801E: ConcatVar var_97C
  loc_D18022: ILdRf var_A4
  loc_D18025: CVarStr var_98C
  loc_D18028: ConcatVar var_99C
  loc_D1802C: LitVarStr var_9AC, "','"
  loc_D18031: ConcatVar var_9BC
  loc_D18035: ILdRf var_A8
  loc_D18038: CVarStr var_9CC
  loc_D1803B: ConcatVar var_9DC
  loc_D1803F: LitVarStr var_9EC, "',"
  loc_D18044: ConcatVar var_9FC
  loc_D18048: FLdI2 arg_98
  loc_D1804B: CVarI2 var_A0C
  loc_D1804E: ConcatVar var_A1C
  loc_D18052: LitVarStr var_A2C, ",'"
  loc_D18057: ConcatVar var_A3C
  loc_D1805B: ILdRf var_AC
  loc_D1805E: CVarStr var_A4C
  loc_D18061: ConcatVar var_A5C
  loc_D18065: LitVarStr var_A6C, "','"
  loc_D1806A: ConcatVar var_A7C
  loc_D1806E: ILdRf var_B0
  loc_D18071: CVarStr var_A8C
  loc_D18074: ConcatVar var_A9C
  loc_D18078: LitVarStr var_AAC, "','"
  loc_D1807D: ConcatVar var_ABC
  loc_D18081: ILdRf var_B4
  loc_D18084: CVarStr var_ACC
  loc_D18087: ConcatVar var_ADC
  loc_D1808B: LitVarStr var_AEC, "');"
  loc_D18090: ConcatVar var_AFC
  loc_D18094: CStrVarTmp
  loc_D18095: FStStr var_138
  loc_D18098: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_D180B9: FFreeAd var_180 = "": var_194 = "": var_208 = "": var_21C = "": var_260 = "": var_274 = "": var_2B8 = ""
  loc_D180CC: FFreeVar var_91C = "": var_93C = "": var_95C = "": var_97C = "": var_99C = "": var_9BC = "": var_9DC = "": var_9FC = "": var_A1C = "": var_A3C = "": var_A5C = "": var_A7C = "": var_A9C = "": var_ABC = "": var_ADC = "": var_AFC = "": var_508 = "": var_528 = "": var_550 = "": var_560 = "": var_580 = "": var_590 = "": var_5A0 = "": var_5C0 = "": var_5D0 = "": var_5E0 = "": var_600 = "": var_610 = "": var_620 = "": var_640 = "": var_650 = "": var_660 = "": var_680 = "": var_7CC = "": var_7DC = "": var_7EC = "": var_7FC = "": var_81C = "": var_83C = "": var_85C = "": var_87C = "": var_89C = "": var_8BC = "": var_8CC = "": var_8DC = "": var_8FC = "": var_1C4 = "": var_1A4 = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_22C = "": var_23C = "": var_25C = "": var_284 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_2EC = "": var_30C = "": var_334 = "": var_344 = "": var_384 = "": var_364 = "": var_3A4 = "": var_3C4 = "": var_400 = "": var_3F0 = "": var_420 = "": var_448 = "": var_458 = "": var_478 = "": var_4A0 = "": var_4B0 = "": var_4D0 = ""
  loc_D18167: FLdPr Me
  loc_D1816A: MemLdPr global_64
  loc_D1816D: Me.MoveNext
  loc_D18172: Branch loc_D16DEA
  loc_D18175: ILdRf var_138
  loc_D18178: Call EjecutarRsCls(from_stack_1v)
  loc_D1817D: Branch loc_D1A214
  loc_D18180: LitStr "START TRANSACTION;  INSERT INTO liqucome (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,ActuLico,TipoLico,FealLico,FeveLico,DeudLico,PodeLico,ImpoLico,CrafLico,ExenLico,DescLico,GastLico,TotaLico,CucuPers,CodiRuta,CodiCall,NucaLico,CallLico,CodiBarr,ManzLico,CasaLico,UbicLico,CodiLoca,LocaLico,CopoLico, Vinculo) "
  loc_D18183: LitStr " VALUES ("
  loc_D18186: ConcatStr
  loc_D18187: FStStrNoPop var_140
  loc_D1818A: FLdI2 PeriLiqu
  loc_D1818D: CStrUI1
  loc_D1818F: FStStrNoPop var_144
  loc_D18192: ConcatStr
  loc_D18193: FStStrNoPop var_148
  loc_D18196: LitStr ","
  loc_D18199: ConcatStr
  loc_D1819A: FStStrNoPop var_14C
  loc_D1819D: FLdUI1
  loc_D181A1: CStrI2
  loc_D181A3: FStStrNoPop var_150
  loc_D181A6: ConcatStr
  loc_D181A7: FStStrNoPop var_154
  loc_D181AA: LitStr ","
  loc_D181AD: ConcatStr
  loc_D181AE: FStStrNoPop var_158
  loc_D181B1: FLdUI1
  loc_D181B5: CStrI2
  loc_D181B7: FStStrNoPop var_15C
  loc_D181BA: ConcatStr
  loc_D181BB: FStStrNoPop var_160
  loc_D181BE: LitStr ","
  loc_D181C1: ConcatStr
  loc_D181C2: FStStrNoPop var_164
  loc_D181C5: FLdI2 NumeLiqu
  loc_D181C8: CStrUI1
  loc_D181CA: FStStrNoPop var_168
  loc_D181CD: ConcatStr
  loc_D181CE: FStStrNoPop var_16C
  loc_D181D1: LitStr ","
  loc_D181D4: ConcatStr
  loc_D181D5: FStStrNoPop var_170
  loc_D181D8: ILdRf CodiCome
  loc_D181DB: CStrI4
  loc_D181DD: FStStrNoPop var_174
  loc_D181E0: ConcatStr
  loc_D181E1: FStStrNoPop var_684
  loc_D181E4: LitStr ",'"
  loc_D181E7: ConcatStr
  loc_D181E8: FStStrNoPop var_688
  loc_D181EB: ILdRf var_88
  loc_D181EE: ConcatStr
  loc_D181EF: FStStrNoPop var_68C
  loc_D181F2: LitStr "',"
  loc_D181F5: ConcatStr
  loc_D181F6: FStStrNoPop var_690
  loc_D181F9: FLdUI1
  loc_D181FD: CStrI2
  loc_D181FF: FStStrNoPop var_694
  loc_D18202: ConcatStr
  loc_D18203: FStStrNoPop var_698
  loc_D18206: LitStr ",'No','"
  loc_D18209: ConcatStr
  loc_D1820A: FStStrNoPop var_69C
  loc_D1820D: ILdRf var_8C
  loc_D18210: ConcatStr
  loc_D18211: FStStrNoPop var_6A0
  loc_D18214: LitStr "','"
  loc_D18217: ConcatStr
  loc_D18218: FStStrNoPop var_6A4
  loc_D1821B: LitI4 1
  loc_D18220: LitI4 1
  loc_D18225: LitVarStr var_1B4, "yyyy-mm-dd"
  loc_D1822A: FStVarCopyObj var_1A4
  loc_D1822D: FLdRfVar var_1A4
  loc_D18230: FLdRfVar arg_A4
  loc_D18233: CVarRef
  loc_D18238: ImpAdCallI2 Format$(, )
  loc_D1823D: FStStrNoPop var_6A8
  loc_D18240: ConcatStr
  loc_D18241: FStStrNoPop var_6AC
  loc_D18244: LitStr "','"
  loc_D18247: ConcatStr
  loc_D18248: FStStrNoPop var_6B0
  loc_D1824B: LitI4 1
  loc_D18250: LitI4 1
  loc_D18255: LitVarStr var_218, "yyyy-mm-dd"
  loc_D1825A: FStVarCopyObj var_1C4
  loc_D1825D: FLdRfVar var_1C4
  loc_D18260: FLdRfVar var_90
  loc_D18263: CVarRef
  loc_D18268: ImpAdCallI2 Format$(, )
  loc_D1826D: FStStrNoPop var_6B4
  loc_D18270: ConcatStr
  loc_D18271: FStStrNoPop var_6B8
  loc_D18274: LitStr "',"
  loc_D18277: ConcatStr
  loc_D18278: FStStrNoPop var_6C0
  loc_D1827B: LitI4 0
  loc_D18280: LitI4 -1
  loc_D18285: LitI4 1
  loc_D1828A: LitStr "."
  loc_D1828D: LitStr ","
  loc_D18290: FLdFPR8 DeudLico
  loc_D18293: CStrR8
  loc_D18295: FStStrNoPop var_6BC
  loc_D18298: ImpAdCallI2 Replace(, , , , , )
  loc_D1829D: FStStrNoPop var_6C4
  loc_D182A0: ConcatStr
  loc_D182A1: FStStrNoPop var_6C8
  loc_D182A4: LitStr ","
  loc_D182A7: ConcatStr
  loc_D182A8: FStStrNoPop var_6D0
  loc_D182AB: LitI4 0
  loc_D182B0: LitI4 -1
  loc_D182B5: LitI4 1
  loc_D182BA: LitStr "."
  loc_D182BD: LitStr ","
  loc_D182C0: FLdFPR8 ImpoLico
  loc_D182C3: CStrR8
  loc_D182C5: FStStrNoPop var_6CC
  loc_D182C8: ImpAdCallI2 Replace(, , , , , )
  loc_D182CD: FStStrNoPop var_6D4
  loc_D182D0: ConcatStr
  loc_D182D1: FStStrNoPop var_6D8
  loc_D182D4: LitStr ","
  loc_D182D7: ConcatStr
  loc_D182D8: FStStrNoPop var_6E0
  loc_D182DB: LitI4 0
  loc_D182E0: LitI4 -1
  loc_D182E5: LitI4 1
  loc_D182EA: LitStr "."
  loc_D182ED: LitStr ","
  loc_D182F0: FLdFPR8 AddNew0
  loc_D182F3: CStrR8
  loc_D182F5: FStStrNoPop var_6DC
  loc_D182F8: ImpAdCallI2 Replace(, , , , , )
  loc_D182FD: FStStrNoPop var_6E4
  loc_D18300: ConcatStr
  loc_D18301: FStStrNoPop var_6E8
  loc_D18304: LitStr ","
  loc_D18307: ConcatStr
  loc_D18308: FStStrNoPop var_6F0
  loc_D1830B: LitI4 0
  loc_D18310: LitI4 -1
  loc_D18315: LitI4 1
  loc_D1831A: LitStr "."
  loc_D1831D: LitStr ","
  loc_D18320: FLdFPR8 AddNew8
  loc_D18323: CStrR8
  loc_D18325: FStStrNoPop var_6EC
  loc_D18328: ImpAdCallI2 Replace(, , , , , )
  loc_D1832D: FStStrNoPop var_6F4
  loc_D18330: ConcatStr
  loc_D18331: FStStrNoPop var_6F8
  loc_D18334: LitStr ","
  loc_D18337: ConcatStr
  loc_D18338: FStStrNoPop var_700
  loc_D1833B: LitI4 0
  loc_D18340: LitI4 -1
  loc_D18345: LitI4 1
  loc_D1834A: LitStr "."
  loc_D1834D: LitStr ","
  loc_D18350: FLdFPR8 CucuPers
  loc_D18353: CStrR8
  loc_D18355: FStStrNoPop var_6FC
  loc_D18358: ImpAdCallI2 Replace(, , , , , )
  loc_D1835D: FStStrNoPop var_704
  loc_D18360: ConcatStr
  loc_D18361: FStStrNoPop var_708
  loc_D18364: LitStr ","
  loc_D18367: ConcatStr
  loc_D18368: FStStrNoPop var_710
  loc_D1836B: LitI4 0
  loc_D18370: LitI4 -1
  loc_D18375: LitI4 1
  loc_D1837A: LitStr "."
  loc_D1837D: LitStr ","
  loc_D18380: FLdFPR8 arg_58
  loc_D18383: CStrR8
  loc_D18385: FStStrNoPop var_70C
  loc_D18388: ImpAdCallI2 Replace(, , , , , )
  loc_D1838D: FStStrNoPop var_714
  loc_D18390: ConcatStr
  loc_D18391: FStStrNoPop var_718
  loc_D18394: LitStr ","
  loc_D18397: ConcatStr
  loc_D18398: FStStrNoPop var_720
  loc_D1839B: LitI4 0
  loc_D183A0: LitI4 -1
  loc_D183A5: LitI4 1
  loc_D183AA: LitStr "."
  loc_D183AD: LitStr ","
  loc_D183B0: FLdFPR8 arg_60
  loc_D183B3: CStrR8
  loc_D183B5: FStStrNoPop var_71C
  loc_D183B8: ImpAdCallI2 Replace(, , , , , )
  loc_D183BD: FStStrNoPop var_724
  loc_D183C0: ConcatStr
  loc_D183C1: FStStrNoPop var_728
  loc_D183C4: LitStr ","
  loc_D183C7: ConcatStr
  loc_D183C8: FStStrNoPop var_730
  loc_D183CB: LitI4 0
  loc_D183D0: LitI4 -1
  loc_D183D5: LitI4 1
  loc_D183DA: LitStr "."
  loc_D183DD: LitStr ","
  loc_D183E0: FLdFPR8 arg_68
  loc_D183E3: CStrR8
  loc_D183E5: FStStrNoPop var_72C
  loc_D183E8: ImpAdCallI2 Replace(, , , , , )
  loc_D183ED: FStStrNoPop var_734
  loc_D183F0: ConcatStr
  loc_D183F1: FStStrNoPop var_738
  loc_D183F4: LitStr ",'"
  loc_D183F7: ConcatStr
  loc_D183F8: FStStrNoPop var_73C
  loc_D183FB: ILdRf var_94
  loc_D183FE: ConcatStr
  loc_D183FF: FStStrNoPop var_740
  loc_D18402: LitStr "',"
  loc_D18405: ConcatStr
  loc_D18406: FStStrNoPop var_744
  loc_D18409: FLdI2 arg_74
  loc_D1840C: CStrUI1
  loc_D1840E: FStStrNoPop var_748
  loc_D18411: ConcatStr
  loc_D18412: FStStrNoPop var_74C
  loc_D18415: LitStr ","
  loc_D18418: ConcatStr
  loc_D18419: FStStrNoPop var_750
  loc_D1841C: ILdRf arg_78
  loc_D1841F: CStrI4
  loc_D18421: FStStrNoPop var_754
  loc_D18424: ConcatStr
  loc_D18425: FStStrNoPop var_758
  loc_D18428: LitStr ","
  loc_D1842B: ConcatStr
  loc_D1842C: FStStrNoPop var_75C
  loc_D1842F: ILdRf arg_7C
  loc_D18432: CStrI4
  loc_D18434: FStStrNoPop var_760
  loc_D18437: ConcatStr
  loc_D18438: FStStrNoPop var_764
  loc_D1843B: LitStr ",'"
  loc_D1843E: ConcatStr
  loc_D1843F: FStStrNoPop var_768
  loc_D18442: LitI4 0
  loc_D18447: LitI4 -1
  loc_D1844C: LitI4 1
  loc_D18451: LitStr " "
  loc_D18454: LitStr "'"
  loc_D18457: ILdRf var_98
  loc_D1845A: ImpAdCallI2 Replace(, , , , , )
  loc_D1845F: FStStrNoPop var_76C
  loc_D18462: ConcatStr
  loc_D18463: FStStrNoPop var_770
  loc_D18466: LitStr "',"
  loc_D18469: ConcatStr
  loc_D1846A: FStStrNoPop var_774
  loc_D1846D: FLdI2 Me4
  loc_D18470: CStrUI1
  loc_D18472: FStStrNoPop var_778
  loc_D18475: ConcatStr
  loc_D18476: FStStrNoPop var_77C
  loc_D18479: LitStr ",'"
  loc_D1847C: ConcatStr
  loc_D1847D: FStStrNoPop var_780
  loc_D18480: ILdRf var_A0
  loc_D18483: ConcatStr
  loc_D18484: FStStrNoPop var_784
  loc_D18487: LitStr "','"
  loc_D1848A: ConcatStr
  loc_D1848B: FStStrNoPop var_788
  loc_D1848E: ILdRf var_A4
  loc_D18491: ConcatStr
  loc_D18492: FStStrNoPop var_78C
  loc_D18495: LitStr "','"
  loc_D18498: ConcatStr
  loc_D18499: FStStrNoPop var_790
  loc_D1849C: ILdRf var_A8
  loc_D1849F: ConcatStr
  loc_D184A0: FStStrNoPop var_794
  loc_D184A3: LitStr "',"
  loc_D184A6: ConcatStr
  loc_D184A7: FStStrNoPop var_798
  loc_D184AA: FLdI2 arg_98
  loc_D184AD: CStrUI1
  loc_D184AF: FStStrNoPop var_79C
  loc_D184B2: ConcatStr
  loc_D184B3: FStStrNoPop var_7A0
  loc_D184B6: LitStr ",'"
  loc_D184B9: ConcatStr
  loc_D184BA: FStStrNoPop var_7A4
  loc_D184BD: ILdRf var_AC
  loc_D184C0: ConcatStr
  loc_D184C1: FStStrNoPop var_7A8
  loc_D184C4: LitStr "','"
  loc_D184C7: ConcatStr
  loc_D184C8: FStStrNoPop var_7AC
  loc_D184CB: ILdRf var_B0
  loc_D184CE: ConcatStr
  loc_D184CF: FStStrNoPop var_7B0
  loc_D184D2: LitStr "','"
  loc_D184D5: ConcatStr
  loc_D184D6: FStStrNoPop var_7B4
  loc_D184D9: ILdRf var_B4
  loc_D184DC: ConcatStr
  loc_D184DD: FStStrNoPop var_7B8
  loc_D184E0: LitStr "');"
  loc_D184E3: ConcatStr
  loc_D184E4: FStStrNoPop var_7BC
  loc_D184E7: Call EjecutarRsCls(from_stack_1v)
  loc_D184EC: FFreeStr var_7B4 = "": var_7B8 = "": var_7BC = "": var_73C = "": var_740 = "": var_744 = "": var_748 = "": var_74C = "": var_750 = "": var_754 = "": var_758 = "": var_75C = "": var_760 = "": var_764 = "": var_768 = "": var_76C = "": var_770 = "": var_774 = "": var_778 = "": var_77C = "": var_780 = "": var_784 = "": var_788 = "": var_78C = "": var_790 = "": var_794 = "": var_798 = "": var_79C = "": var_7A0 = "": var_7A4 = "": var_7A8 = "": var_7AC = "": var_7B0 = "": var_6C4 = "": var_6C8 = "": var_6CC = "": var_6D0 = "": var_6D4 = "": var_6D8 = "": var_6DC = "": var_6E0 = "": var_6E4 = "": var_6E8 = "": var_6EC = "": var_6F0 = "": var_6F4 = "": var_6F8 = "": var_6FC = "": var_700 = "": var_704 = "": var_708 = "": var_70C = "": var_710 = "": var_714 = "": var_718 = "": var_71C = "": var_720 = "": var_724 = "": var_728 = "": var_72C = "": var_730 = "": var_734 = "": var_738 = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = "": var_698 = "": var_69C = "": var_6A0 = "": var_6A4 = "": var_6A8 = "": var_6AC = "": var_6B0 = "": var_6B4 = "": var_6B8 = "": var_6BC = ""
  loc_D185A9: FFreeVar var_1A4 = ""
  loc_D185B0: FLdI2 arg_B4
  loc_D185B3: LitI2_Byte &HFF
  loc_D185B5: EqI2
  loc_D185B6: BranchF loc_D1A214
  loc_D185B9: LitI2 2860
  loc_D185BC: CR8I2
  loc_D185BD: FLdFPR8 arg_D0
  loc_D185C0: AddR8
  loc_D185C1: FStFPR8 var_10C
  loc_D185C4: LitStr "SELECT IFNULL(MAX(t.Importe* s.CantSeco),0) INTO @v_MaxImporte"
  loc_D185C7: LitStr " FROM servcome s"
  loc_D185CA: ConcatStr
  loc_D185CB: FStStrNoPop var_140
  loc_D185CE: LitStr " INNER JOIN subrubro su ON su.CodiRamo = s.CodiRamo"
  loc_D185D1: ConcatStr
  loc_D185D2: FStStrNoPop var_144
  loc_D185D5: LitStr " AND su.CodiRubr = s.CodiRubr AND su.CodiSubr = s.CodiSubr"
  loc_D185D8: ConcatStr
  loc_D185D9: FStStrNoPop var_148
  loc_D185DC: LitStr " AND su.PeriOrde = YEAR(NOW())"
  loc_D185DF: ConcatStr
  loc_D185E0: FStStrNoPop var_14C
  loc_D185E3: LitStr " LEFT JOIN tarifariacomercio t ON t.PeriInfo = su.PeriOrde"
  loc_D185E6: ConcatStr
  loc_D185E7: FStStrNoPop var_150
  loc_D185EA: LitStr " AND t.CodiRamo = su.CodiRamo AND t.CodiRubr = su.CodiRubr"
  loc_D185ED: ConcatStr
  loc_D185EE: FStStrNoPop var_154
  loc_D185F1: LitStr " AND t.CodiRubr = su.CodiRubr AND t.CodiSubr = su.CodiSubr"
  loc_D185F4: ConcatStr
  loc_D185F5: FStStrNoPop var_158
  loc_D185F8: LitStr " AND t.Categoria = s.CateSeco"
  loc_D185FB: ConcatStr
  loc_D185FC: FStStrNoPop var_15C
  loc_D185FF: LitStr " WHERE s.CodiCome = "
  loc_D18602: ConcatStr
  loc_D18603: FStStrNoPop var_160
  loc_D18606: ILdRf CodiCome
  loc_D18609: CStrI4
  loc_D1860B: FStStrNoPop var_164
  loc_D1860E: ConcatStr
  loc_D1860F: FStStrNoPop var_168
  loc_D18612: LitStr " AND s.BajaFeho IS NULL AND s.FebaSeco IS NULL;"
  loc_D18615: ConcatStr
  loc_D18616: FStStrNoPop var_16C
  loc_D18619: FLdRfVar var_B8
  loc_D1861C: NewIfNullPr clsservcome
  loc_D1861F: Call clsservcome.RedefineRS(from_stack_1v)
  loc_D18624: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_D1863F: LitStr " SELECT UntrPage INTO @v_UntrPage FROM recaudacion.paragene LIMIT 1;"
  loc_D18642: FLdRfVar var_B8
  loc_D18645: NewIfNullPr clsservcome
  loc_D18648: Call clsservcome.RedefineRS(from_stack_1v)
  loc_D1864D: LitStr " SELECT s.CodiCome, s.CodiRamo, s.CodiRubr, su.PeriOrde, s.CodiSubr, s.PrioSeco,"
  loc_D18650: LitStr " s.FealSeco, s.ExalSeco, s.FebaSeco, s.ExbaSeco, s.MobaSeco, s.AcprSeco,"
  loc_D18653: ConcatStr
  loc_D18654: FStStrNoPop var_140
  loc_D18657: LitStr " s.LiquSeco, s.CantSeco, s.CateSeco, s.ObseSeco, s.AltaUsua,"
  loc_D1865A: ConcatStr
  loc_D1865B: FStStrNoPop var_144
  loc_D1865E: LitStr " r.DetaRamo, ru.DetaRubr, su.DetaSubr, IFNULL(t.Importe, 0) UTM, IFNULL(tp.Porcentaje, 0) Porc, @v_UntrPage,"
  loc_D18661: ConcatStr
  loc_D18662: FStStrNoPop var_148
  loc_D18665: LitStr " ROUND(IF(ru.CodiRubr IN('I', 'M', 'H'),@v_MaxImporte * @v_UntrPage * tp.Porcentaje,IF(ru.CodiRubr IN('Q', 'U'), su.ImpoSubr, t.Importe * @v_UntrPage)), 2) AS ImpoSubr,"
  loc_D18668: ConcatStr
  loc_D18669: FStStrNoPop var_14C
  loc_D1866C: LitStr " ROUND(IF(ru.CodiRubr IN('I', 'M', 'H'),@v_MaxImporte * @v_UntrPage * tp.Porcentaje,IF(ru.CodiRubr IN('Q', 'U'), su.ImpoSubr * s.CantSeco * @v_UntrPage, t.Importe * @v_UntrPage * s.CantSeco)), 2) AS SubTotal, s.BoclSeco"
  loc_D1866F: ConcatStr
  loc_D18670: FStStrNoPop var_150
  loc_D18673: LitStr " FROM servcome s"
  loc_D18676: ConcatStr
  loc_D18677: FStStrNoPop var_154
  loc_D1867A: LitStr " INNER JOIN ramo r ON r.CodiRamo = s.CodiRamo"
  loc_D1867D: ConcatStr
  loc_D1867E: FStStrNoPop var_158
  loc_D18681: LitStr " INNER JOIN rubro ru ON ru.CodiRamo = s.CodiRamo AND ru.CodiRubr = s.CodiRubr"
  loc_D18684: ConcatStr
  loc_D18685: FStStrNoPop var_15C
  loc_D18688: LitStr " INNER JOIN subrubro su ON su.CodiSubr = s.CodiSubr"
  loc_D1868B: ConcatStr
  loc_D1868C: FStStrNoPop var_160
  loc_D1868F: LitStr " AND su.CodiRamo = s.CodiRamo"
  loc_D18692: ConcatStr
  loc_D18693: FStStrNoPop var_164
  loc_D18696: LitStr " AND su.CodiRubr = s.CodiRubr"
  loc_D18699: ConcatStr
  loc_D1869A: FStStrNoPop var_168
  loc_D1869D: LitStr " AND su.PeriOrde = YEAR(NOW())"
  loc_D186A0: ConcatStr
  loc_D186A1: FStStrNoPop var_16C
  loc_D186A4: LitStr " LEFT JOIN tarifariacomercio t ON t.PeriInfo = su.PeriOrde"
  loc_D186A7: ConcatStr
  loc_D186A8: FStStrNoPop var_170
  loc_D186AB: LitStr " AND t.CodiRamo = su.CodiRamo"
  loc_D186AE: ConcatStr
  loc_D186AF: FStStrNoPop var_174
  loc_D186B2: LitStr " AND t.CodiRubr = su.CodiRubr"
  loc_D186B5: ConcatStr
  loc_D186B6: FStStrNoPop var_684
  loc_D186B9: LitStr " AND t.CodiSubr = su.CodiSubr"
  loc_D186BC: ConcatStr
  loc_D186BD: FStStrNoPop var_688
  loc_D186C0: LitStr " AND t.Categoria = s.CateSeco"
  loc_D186C3: ConcatStr
  loc_D186C4: FStStrNoPop var_68C
  loc_D186C7: LitStr " LEFT JOIN tarifariaporcentajes tp ON tp.PeriInfo = su.PeriOrde"
  loc_D186CA: ConcatStr
  loc_D186CB: FStStrNoPop var_690
  loc_D186CE: LitStr " AND tp.CodiRamo = su.CodiRamo"
  loc_D186D1: ConcatStr
  loc_D186D2: FStStrNoPop var_694
  loc_D186D5: LitStr " AND tp.CodiRubr = su.CodiRubr"
  loc_D186D8: ConcatStr
  loc_D186D9: FStStrNoPop var_698
  loc_D186DC: LitStr " AND tp.CodiSubr = su.CodiSubr"
  loc_D186DF: ConcatStr
  loc_D186E0: FStStrNoPop var_69C
  loc_D186E3: LitStr " Where s.CodiCome = "
  loc_D186E6: ConcatStr
  loc_D186E7: FStStrNoPop var_6A0
  loc_D186EA: ILdRf CodiCome
  loc_D186ED: CStrI4
  loc_D186EF: FStStrNoPop var_6A4
  loc_D186F2: ConcatStr
  loc_D186F3: FStStrNoPop var_6A8
  loc_D186F6: LitStr " And s.BajaFeho Is Null And s.FebaSeco Is Null"
  loc_D186F9: ConcatStr
  loc_D186FA: FStStrNoPop var_6AC
  loc_D186FD: LitStr " ORDER BY s.FealSeco DESC, s.CodiSubr ASC;"
  loc_D18700: ConcatStr
  loc_D18701: FStStrNoPop var_6B0
  loc_D18704: FLdRfVar var_B8
  loc_D18707: NewIfNullPr clsservcome
  loc_D1870A: Call clsservcome.RedefineRS(from_stack_1v)
  loc_D1870F: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = "": var_698 = "": var_69C = "": var_6A0 = "": var_6A4 = "": var_6A8 = "": var_6AC = ""
  loc_D18746: FLdRfVar var_178
  loc_D18749: FLdRfVar var_B8
  loc_D1874C: NewIfNullPr clsservcome
  loc_D1874F: from_stack_1 = clsservcome.RecordCount
  loc_D18754: ILdRf var_178
  loc_D18757: LitI4 0
  loc_D1875C: GtI4
  loc_D1875D: BranchF loc_D18CDD
  loc_D18760: FLdRfVar var_B8
  loc_D18763: NewIfNullPr clsservcome
  loc_D18766: Call clsservcome.MoveFirst()
  loc_D1876B: FLdRfVar var_17A
  loc_D1876E: FLdRfVar var_B8
  loc_D18771: NewIfNullPr clsservcome
  loc_D18774: from_stack_1 = clsservcome.EOF
  loc_D18779: FLdI2 var_17A
  loc_D1877C: NotI4
  loc_D1877D: BranchF loc_D18B15
  loc_D18780: FLdRfVar var_1A4
  loc_D18783: FLdRfVar var_B8
  loc_D18786: NewIfNullPr clsservcome
  loc_D18789: from_stack_1 = clsservcome.SubTotal
  loc_D1878E: FLdRfVar var_1A4
  loc_D18791: LitVarI2 var_190, 0
  loc_D18796: HardType
  loc_D18797: GtVarBool
  loc_D18799: FFree1Var var_1A4 = ""
  loc_D1879C: BranchF loc_D18B07
  loc_D1879F: LitI2_Byte 0
  loc_D187A1: CR8I2
  loc_D187A2: FStFPR8 var_114
  loc_D187A5: FLdFPR8 arg_BC
  loc_D187A8: LitI2_Byte 0
  loc_D187AA: CR8I2
  loc_D187AB: GtR4
  loc_D187AC: BranchF loc_D187F8
  loc_D187AF: FLdRfVar var_1A4
  loc_D187B2: FLdRfVar var_B8
  loc_D187B5: NewIfNullPr clsservcome
  loc_D187B8: from_stack_1 = clsservcome.SubTotal
  loc_D187BD: LitI4 2
  loc_D187C2: FLdRfVar var_1A4
  loc_D187C5: FLdFPR8 arg_BC
  loc_D187C8: CVarR8
  loc_D187CC: MulVar var_1C4
  loc_D187D0: LitVarI2 var_1B4, 100
  loc_D187D5: DivVar var_1D4
  loc_D187D9: FStVar var_1E4
  loc_D187DD: FLdRfVar var_1E4
  loc_D187E0: FLdRfVar var_204
  loc_D187E3: ImpAdCallFPR4  = Round(, )
  loc_D187E8: FLdRfVar var_204
  loc_D187EB: CR4Var
  loc_D187EC: FStFPR8 var_114
  loc_D187EF: FFreeVar var_1A4 = "": var_1E4 = ""
  loc_D187F8: FLdRfVar var_1A4
  loc_D187FB: FLdRfVar var_B8
  loc_D187FE: NewIfNullPr clsservcome
  loc_D18801: from_stack_1 = clsservcome.SubTotal
  loc_D18806: FLdRfVar var_1A4
  loc_D18809: FLdFPR8 var_114
  loc_D1880C: CVarR8
  loc_D18810: HardType
  loc_D18811: NeVarBool
  loc_D18813: FFree1Var var_1A4 = ""
  loc_D18816: BranchF loc_D18843
  loc_D18819: FLdRfVar var_1A4
  loc_D1881C: FLdRfVar var_B8
  loc_D1881F: NewIfNullPr clsservcome
  loc_D18822: from_stack_1 = clsservcome.SubTotal
  loc_D18827: FLdRfVar var_1A4
  loc_D1882A: FLdFPR8 var_10C
  loc_D1882D: CVarR8
  loc_D18831: AddVar var_1C4
  loc_D18835: CR4Var
  loc_D18836: FStFPR8 var_E0
  loc_D18839: FFreeVar var_1A4 = ""
  loc_D18840: Branch loc_D1885B
  loc_D18843: FLdRfVar var_1A4
  loc_D18846: FLdRfVar var_B8
  loc_D18849: NewIfNullPr clsservcome
  loc_D1884C: from_stack_1 = clsservcome.SubTotal
  loc_D18851: FLdRfVar var_1A4
  loc_D18854: CR4Var
  loc_D18855: FStFPR8 var_E0
  loc_D18858: FFree1Var var_1A4 = ""
  loc_D1885B: LitI4 2
  loc_D18860: FLdRfVar var_E0
  loc_D18863: CVarRef
  loc_D18868: FLdRfVar var_1A4
  loc_D1886B: ImpAdCallFPR4  = Round(, )
  loc_D18870: LitI4 2
  loc_D18875: FLdFPR8 var_C4
  loc_D18878: CVarR8
  loc_D1887C: FLdRfVar var_1A4
  loc_D1887F: AddVar var_1C4
  loc_D18883: FLdRfVar var_1D4
  loc_D18886: ImpAdCallFPR4  = Round(, )
  loc_D1888B: FLdRfVar var_1D4
  loc_D1888E: CR4Var
  loc_D1888F: FStFPR8 var_C4
  loc_D18892: FFreeVar var_1A4 = "": var_1C4 = ""
  loc_D1889B: LitStr " INSERT INTO licodeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLcde,ImpoLcde,DecaLcde,ExceLcde,TotaLcde) "
  loc_D1889E: LitStr " VALUES ("
  loc_D188A1: ConcatStr
  loc_D188A2: FStStrNoPop var_140
  loc_D188A5: FLdI2 PeriLiqu
  loc_D188A8: CStrUI1
  loc_D188AA: FStStrNoPop var_144
  loc_D188AD: ConcatStr
  loc_D188AE: FStStrNoPop var_148
  loc_D188B1: LitStr ","
  loc_D188B4: ConcatStr
  loc_D188B5: FStStrNoPop var_14C
  loc_D188B8: FLdUI1
  loc_D188BC: CStrI2
  loc_D188BE: FStStrNoPop var_150
  loc_D188C1: ConcatStr
  loc_D188C2: FStStrNoPop var_154
  loc_D188C5: LitStr ","
  loc_D188C8: ConcatStr
  loc_D188C9: FStStrNoPop var_158
  loc_D188CC: FLdUI1
  loc_D188D0: CStrI2
  loc_D188D2: FStStrNoPop var_15C
  loc_D188D5: ConcatStr
  loc_D188D6: FStStrNoPop var_160
  loc_D188D9: LitStr ","
  loc_D188DC: ConcatStr
  loc_D188DD: FStStrNoPop var_164
  loc_D188E0: FLdI2 NumeLiqu
  loc_D188E3: CStrUI1
  loc_D188E5: FStStrNoPop var_168
  loc_D188E8: ConcatStr
  loc_D188E9: FStStrNoPop var_16C
  loc_D188EC: LitStr ","
  loc_D188EF: ConcatStr
  loc_D188F0: FStStrNoPop var_170
  loc_D188F3: ILdRf CodiCome
  loc_D188F6: CStrI4
  loc_D188F8: FStStrNoPop var_174
  loc_D188FB: ConcatStr
  loc_D188FC: FStStrNoPop var_684
  loc_D188FF: LitStr ",'"
  loc_D18902: ConcatStr
  loc_D18903: FStStrNoPop var_688
  loc_D18906: ILdRf var_88
  loc_D18909: ConcatStr
  loc_D1890A: FStStrNoPop var_68C
  loc_D1890D: LitStr "',"
  loc_D18910: ConcatStr
  loc_D18911: FStStrNoPop var_690
  loc_D18914: FLdUI1
  loc_D18918: CStrI2
  loc_D1891A: FStStrNoPop var_694
  loc_D1891D: ConcatStr
  loc_D1891E: FStStrNoPop var_698
  loc_D18921: LitStr ","
  loc_D18924: ConcatStr
  loc_D18925: FStStrNoPop var_69C
  loc_D18928: FLdRfVar var_17A
  loc_D1892B: FLdRfVar var_B8
  loc_D1892E: NewIfNullPr clsservcome
  loc_D18931: from_stack_1 = clsservcome.CodiRamo
  loc_D18936: FLdI2 var_17A
  loc_D18939: CStrUI1
  loc_D1893B: FStStrNoPop var_6A0
  loc_D1893E: ConcatStr
  loc_D1893F: FStStrNoPop var_6A4
  loc_D18942: LitStr ",'"
  loc_D18945: ConcatStr
  loc_D18946: CVarStr var_1C4
  loc_D18949: FLdRfVar var_1A4
  loc_D1894C: FLdRfVar var_B8
  loc_D1894F: NewIfNullPr clsservcome
  loc_D18952: from_stack_1 = clsservcome.CodiRubr
  loc_D18957: FLdRfVar var_1A4
  loc_D1895A: ConcatVar var_1D4
  loc_D1895E: LitVarStr var_190, "',"
  loc_D18963: ConcatVar var_1E4
  loc_D18967: ImpAdLdI2 MemVar_D93036
  loc_D1896A: CVarI2 var_1B4
  loc_D1896D: ConcatVar var_204
  loc_D18971: LitVarStr var_1F4, ","
  loc_D18976: ConcatVar var_22C
  loc_D1897A: FLdRfVar var_6A8
  loc_D1897D: FLdRfVar var_B8
  loc_D18980: NewIfNullPr clsservcome
  loc_D18983: from_stack_1 = clsservcome.CodiSubr
  loc_D18988: FLdZeroAd var_6A8
  loc_D1898B: CVarStr var_23C
  loc_D1898E: ConcatVar var_25C
  loc_D18992: LitVarStr var_218, ","
  loc_D18997: ConcatVar var_284
  loc_D1899B: FLdRfVar var_AFE
  loc_D1899E: FLdRfVar var_B8
  loc_D189A1: NewIfNullPr clsservcome
  loc_D189A4: from_stack_1 = clsservcome.PrioSeco
  loc_D189A9: FLdI2 var_AFE
  loc_D189AC: CVarI2 var_24C
  loc_D189AF: ConcatVar var_294
  loc_D189B3: LitVarStr var_270, ","
  loc_D189B8: ConcatVar var_2B4
  loc_D189BC: LitI4 0
  loc_D189C1: LitI4 -1
  loc_D189C6: LitI4 1
  loc_D189CB: LitStr "."
  loc_D189CE: LitStr ","
  loc_D189D1: FLdFPR8 var_E0
  loc_D189D4: CStrR8
  loc_D189D6: FStStrNoPop var_6AC
  loc_D189D9: ImpAdCallI2 Replace(, , , , , )
  loc_D189DE: CVarStr var_2DC
  loc_D189E1: ConcatVar var_2EC
  loc_D189E5: LitVarStr var_2A4, ","
  loc_D189EA: ConcatVar var_30C
  loc_D189EE: LitI4 0
  loc_D189F3: LitI4 -1
  loc_D189F8: LitI4 1
  loc_D189FD: LitStr "."
  loc_D18A00: LitStr ","
  loc_D18A03: FLdFPR8 var_E8
  loc_D18A06: CStrR8
  loc_D18A08: FStStrNoPop var_6B0
  loc_D18A0B: ImpAdCallI2 Replace(, , , , , )
  loc_D18A10: CVarStr var_334
  loc_D18A13: ConcatVar var_344
  loc_D18A17: LitVarStr var_2C8, ","
  loc_D18A1C: ConcatVar var_364
  loc_D18A20: LitI4 0
  loc_D18A25: LitI4 -1
  loc_D18A2A: LitI4 1
  loc_D18A2F: LitStr "."
  loc_D18A32: LitStr ","
  loc_D18A35: FLdFPR8 var_114
  loc_D18A38: CStrR8
  loc_D18A3A: FStStrNoPop var_6B4
  loc_D18A3D: ImpAdCallI2 Replace(, , , , , )
  loc_D18A42: CVarStr var_384
  loc_D18A45: ConcatVar var_3A4
  loc_D18A49: LitVarStr var_2FC, ","
  loc_D18A4E: ConcatVar var_3C4
  loc_D18A52: LitI4 0
  loc_D18A57: LitI4 -1
  loc_D18A5C: LitI4 1
  loc_D18A61: LitStr "."
  loc_D18A64: LitStr ","
  loc_D18A67: FLdFPR8 var_E0
  loc_D18A6A: FLdFPR8 var_E8
  loc_D18A6D: SubR4
  loc_D18A6E: FLdFPR8 var_114
  loc_D18A71: SubR4
  loc_D18A72: CStrR8
  loc_D18A74: FStStrNoPop var_6B8
  loc_D18A77: ImpAdCallI2 Replace(, , , , , )
  loc_D18A7C: CVarStr var_3F0
  loc_D18A7F: ConcatVar var_400
  loc_D18A83: LitVarStr var_320, ");"
  loc_D18A88: ConcatVar var_420
  loc_D18A8C: CStrVarVal var_6BC
  loc_D18A90: Call EjecutarRsCls(from_stack_1v)
  loc_D18A95: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = "": var_698 = "": var_69C = "": var_6A0 = "": var_6A4 = "": var_6AC = "": var_6B0 = "": var_6B4 = "": var_6B8 = ""
  loc_D18AD0: FFreeVar var_1C4 = "": var_1A4 = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_22C = "": var_23C = "": var_25C = "": var_284 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_2EC = "": var_30C = "": var_334 = "": var_344 = "": var_364 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3F0 = "": var_400 = ""
  loc_D18B01: LitI2_Byte 0
  loc_D18B03: CR8I2
  loc_D18B04: FStFPR8 var_10C
  loc_D18B07: FLdRfVar var_B8
  loc_D18B0A: NewIfNullPr clsservcome
  loc_D18B0D: Call clsservcome.MoveSiguiente()
  loc_D18B12: Branch loc_D1876B
  loc_D18B15: FLdFPR8 arg_AC
  loc_D18B18: LitI2_Byte 0
  loc_D18B1A: CR8I2
  loc_D18B1B: GtR4
  loc_D18B1C: BranchF loc_D18CDD
  loc_D18B1F: LitI4 2
  loc_D18B24: FLdFPR8 var_C4
  loc_D18B27: FLdFPR8 arg_AC
  loc_D18B2A: AddR8
  loc_D18B2B: CVarR8
  loc_D18B2F: FLdRfVar var_1C4
  loc_D18B32: ImpAdCallFPR4  = Round(, )
  loc_D18B37: FLdRfVar var_1C4
  loc_D18B3A: CR4Var
  loc_D18B3B: FStFPR8 var_C4
  loc_D18B3E: FFreeVar var_1A4 = ""
  loc_D18B45: LitStr " INSERT INTO licodeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLcde,ImpoLcde,DecaLcde,TotaLcde) "
  loc_D18B48: LitStr " VALUES ("
  loc_D18B4B: ConcatStr
  loc_D18B4C: FStStrNoPop var_140
  loc_D18B4F: FLdI2 PeriLiqu
  loc_D18B52: CStrUI1
  loc_D18B54: FStStrNoPop var_144
  loc_D18B57: ConcatStr
  loc_D18B58: FStStrNoPop var_148
  loc_D18B5B: LitStr ","
  loc_D18B5E: ConcatStr
  loc_D18B5F: FStStrNoPop var_14C
  loc_D18B62: FLdUI1
  loc_D18B66: CStrI2
  loc_D18B68: FStStrNoPop var_150
  loc_D18B6B: ConcatStr
  loc_D18B6C: FStStrNoPop var_154
  loc_D18B6F: LitStr ","
  loc_D18B72: ConcatStr
  loc_D18B73: FStStrNoPop var_158
  loc_D18B76: FLdUI1
  loc_D18B7A: CStrI2
  loc_D18B7C: FStStrNoPop var_15C
  loc_D18B7F: ConcatStr
  loc_D18B80: FStStrNoPop var_160
  loc_D18B83: LitStr ","
  loc_D18B86: ConcatStr
  loc_D18B87: FStStrNoPop var_164
  loc_D18B8A: FLdI2 NumeLiqu
  loc_D18B8D: CStrUI1
  loc_D18B8F: FStStrNoPop var_168
  loc_D18B92: ConcatStr
  loc_D18B93: FStStrNoPop var_16C
  loc_D18B96: LitStr ","
  loc_D18B99: ConcatStr
  loc_D18B9A: FStStrNoPop var_170
  loc_D18B9D: ILdRf CodiCome
  loc_D18BA0: CStrI4
  loc_D18BA2: FStStrNoPop var_174
  loc_D18BA5: ConcatStr
  loc_D18BA6: FStStrNoPop var_684
  loc_D18BA9: LitStr ","
  loc_D18BAC: ConcatStr
  loc_D18BAD: FStStrNoPop var_688
  loc_D18BB0: ILdRf var_88
  loc_D18BB3: ConcatStr
  loc_D18BB4: FStStrNoPop var_68C
  loc_D18BB7: LitStr ","
  loc_D18BBA: ConcatStr
  loc_D18BBB: FStStrNoPop var_690
  loc_D18BBE: FLdUI1
  loc_D18BC2: CStrI2
  loc_D18BC4: FStStrNoPop var_694
  loc_D18BC7: ConcatStr
  loc_D18BC8: FStStrNoPop var_698
  loc_D18BCB: LitStr ",1,9,"
  loc_D18BCE: ConcatStr
  loc_D18BCF: FStStrNoPop var_69C
  loc_D18BD2: ImpAdLdI2 MemVar_D93036
  loc_D18BD5: CStrUI1
  loc_D18BD7: FStStrNoPop var_6A0
  loc_D18BDA: ConcatStr
  loc_D18BDB: FStStrNoPop var_6A4
  loc_D18BDE: LitStr ","
  loc_D18BE1: ConcatStr
  loc_D18BE2: FStStrNoPop var_6A8
  loc_D18BE5: FLdI2 arg_B8
  loc_D18BE8: CStrUI1
  loc_D18BEA: FStStrNoPop var_6AC
  loc_D18BED: ConcatStr
  loc_D18BEE: FStStrNoPop var_6B0
  loc_D18BF1: LitStr ",1,"
  loc_D18BF4: ConcatStr
  loc_D18BF5: FStStrNoPop var_6B8
  loc_D18BF8: LitI4 0
  loc_D18BFD: LitI4 -1
  loc_D18C02: LitI4 1
  loc_D18C07: LitStr "."
  loc_D18C0A: LitStr ","
  loc_D18C0D: FLdFPR8 arg_AC
  loc_D18C10: CStrR8
  loc_D18C12: FStStrNoPop var_6B4
  loc_D18C15: ImpAdCallI2 Replace(, , , , , )
  loc_D18C1A: FStStrNoPop var_6BC
  loc_D18C1D: ConcatStr
  loc_D18C1E: FStStrNoPop var_6C0
  loc_D18C21: LitStr ","
  loc_D18C24: ConcatStr
  loc_D18C25: FStStrNoPop var_6C8
  loc_D18C28: LitI4 0
  loc_D18C2D: LitI4 -1
  loc_D18C32: LitI4 1
  loc_D18C37: LitStr "."
  loc_D18C3A: LitStr ","
  loc_D18C3D: LitI2_Byte 0
  loc_D18C3F: CStrUI1
  loc_D18C41: FStStrNoPop var_6C4
  loc_D18C44: ImpAdCallI2 Replace(, , , , , )
  loc_D18C49: FStStrNoPop var_6CC
  loc_D18C4C: ConcatStr
  loc_D18C4D: FStStrNoPop var_6D0
  loc_D18C50: LitStr ","
  loc_D18C53: ConcatStr
  loc_D18C54: FStStrNoPop var_6D8
  loc_D18C57: LitI4 0
  loc_D18C5C: LitI4 -1
  loc_D18C61: LitI4 1
  loc_D18C66: LitStr "."
  loc_D18C69: LitStr ","
  loc_D18C6C: FLdFPR8 arg_AC
  loc_D18C6F: CStrR8
  loc_D18C71: FStStrNoPop var_6D4
  loc_D18C74: ImpAdCallI2 Replace(, , , , , )
  loc_D18C79: FStStrNoPop var_6DC
  loc_D18C7C: ConcatStr
  loc_D18C7D: FStStrNoPop var_6E0
  loc_D18C80: LitStr ");"
  loc_D18C83: ConcatStr
  loc_D18C84: FStStrNoPop var_6E4
  loc_D18C87: Call EjecutarRsCls(from_stack_1v)
  loc_D18C8C: FFreeStr var_6C4 = "": var_6C8 = "": var_6CC = "": var_6D0 = "": var_6D4 = "": var_6D8 = "": var_6DC = "": var_6E0 = "": var_6E4 = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = "": var_698 = "": var_69C = "": var_6A0 = "": var_6A4 = "": var_6A8 = "": var_6AC = "": var_6B0 = "": var_6B4 = "": var_6B8 = "": var_6BC = ""
  loc_D18CDD: FLdUI1
  loc_D18CE1: CI2UI1
  loc_D18CE3: LitI2_Byte 1
  loc_D18CE5: EqI2
  loc_D18CE6: BranchF loc_D1A214
  loc_D18CE9: LitStr "SELECT SUM(ImpoLcde) as ImpoLcde, SUM(DecaLcde) as DecaLcde, SUM(TotaLcde) as TotaLcde FROM licodeta WHERE PeriLiqu = "
  loc_D18CEC: FLdI2 PeriLiqu
  loc_D18CEF: CStrUI1
  loc_D18CF1: FStStrNoPop var_140
  loc_D18CF4: ConcatStr
  loc_D18CF5: FStStrNoPop var_144
  loc_D18CF8: LitStr " AND Bimeliqu = "
  loc_D18CFB: ConcatStr
  loc_D18CFC: FStStrNoPop var_148
  loc_D18CFF: FLdUI1
  loc_D18D03: CStrI2
  loc_D18D05: FStStrNoPop var_14C
  loc_D18D08: ConcatStr
  loc_D18D09: FStStrNoPop var_150
  loc_D18D0C: LitStr " AND CodiTili = "
  loc_D18D0F: ConcatStr
  loc_D18D10: FStStrNoPop var_154
  loc_D18D13: FLdUI1
  loc_D18D17: CStrI2
  loc_D18D19: FStStrNoPop var_158
  loc_D18D1C: ConcatStr
  loc_D18D1D: FStStrNoPop var_15C
  loc_D18D20: LitStr " AND NumeLiqu = "
  loc_D18D23: ConcatStr
  loc_D18D24: FStStrNoPop var_160
  loc_D18D27: FLdI2 NumeLiqu
  loc_D18D2A: CStrUI1
  loc_D18D2C: FStStrNoPop var_164
  loc_D18D2F: ConcatStr
  loc_D18D30: FStStrNoPop var_168
  loc_D18D33: LitStr " AND CodiCome = "
  loc_D18D36: ConcatStr
  loc_D18D37: FStStrNoPop var_16C
  loc_D18D3A: ILdRf CodiCome
  loc_D18D3D: CStrI4
  loc_D18D3F: FStStrNoPop var_170
  loc_D18D42: ConcatStr
  loc_D18D43: FStStrNoPop var_174
  loc_D18D46: LitStr " AND CodiConc = '"
  loc_D18D49: ConcatStr
  loc_D18D4A: FStStrNoPop var_684
  loc_D18D4D: ILdRf var_88
  loc_D18D50: ConcatStr
  loc_D18D51: FStStrNoPop var_688
  loc_D18D54: LitStr "'"
  loc_D18D57: ConcatStr
  loc_D18D58: FStStrNoPop var_68C
  loc_D18D5B: LitStr " AND TipoVenc = "
  loc_D18D5E: ConcatStr
  loc_D18D5F: FStStrNoPop var_690
  loc_D18D62: FLdUI1
  loc_D18D66: CStrI2
  loc_D18D68: FStStrNoPop var_694
  loc_D18D6B: ConcatStr
  loc_D18D6C: FStStrNoPop var_698
  loc_D18D6F: Call EjecutarRsCls2(from_stack_1v)
  loc_D18D74: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = ""
  loc_D18D9F: FLdRfVar var_178
  loc_D18DA2: FLdPr Me
  loc_D18DA5: MemLdPr global_64
  loc_D18DA8:  = Me.RecordCount
  loc_D18DAD: ILdRf var_178
  loc_D18DB0: LitI4 0
  loc_D18DB5: GtI4
  loc_D18DB6: BranchF loc_D1A214
  loc_D18DB9: FLdFPR8 AddNew0
  loc_D18DBC: CVarR8
  loc_D18DC0: HardType
  loc_D18DC1: FLdRfVar var_1A4
  loc_D18DC4: FLdRfVar var_194
  loc_D18DC7: LitVarStr var_190, "ImpoLcde"
  loc_D18DCC: PopAdLdVar
  loc_D18DCD: FLdRfVar var_180
  loc_D18DD0: FLdPr Me
  loc_D18DD3: MemLdPr global_64
  loc_D18DD6:  = Me.Fields
  loc_D18DDB: FLdPr var_180
  loc_D18DDE: from_stack_2 = Me.Item(from_stack_1)
  loc_D18DE3: FLdPr var_194
  loc_D18DE6:  = Me.Value
  loc_D18DEB: FLdRfVar var_1A4
  loc_D18DEE: NeVarBool
  loc_D18DF0: FFreeAd var_180 = ""
  loc_D18DF7: FFree1Var var_1A4 = ""
  loc_D18DFA: BranchF loc_D197DB
  loc_D18DFD: FLdRfVar var_1A4
  loc_D18E00: FLdRfVar var_194
  loc_D18E03: LitVarStr var_190, "ImpoLcde"
  loc_D18E08: PopAdLdVar
  loc_D18E09: FLdRfVar var_180
  loc_D18E0C: FLdPr Me
  loc_D18E0F: MemLdPr global_64
  loc_D18E12:  = Me.Fields
  loc_D18E17: FLdPr var_180
  loc_D18E1A: from_stack_2 = Me.Item(from_stack_1)
  loc_D18E1F: FLdPr var_194
  loc_D18E22:  = Me.Value
  loc_D18E27: FLdFPR8 AddNew0
  loc_D18E2A: FLdRfVar var_1A4
  loc_D18E2D: FnCDblVar
  loc_D18E2F: GtR4
  loc_D18E30: FFreeAd var_180 = ""
  loc_D18E37: FFree1Var var_1A4 = ""
  loc_D18E3A: BranchF loc_D192F9
  loc_D18E3D: LitStr "SELECT * FROM licodeta WHERE PeriLiqu = "
  loc_D18E40: FLdI2 PeriLiqu
  loc_D18E43: CStrUI1
  loc_D18E45: FStStrNoPop var_140
  loc_D18E48: ConcatStr
  loc_D18E49: FStStrNoPop var_144
  loc_D18E4C: LitStr " AND Bimeliqu = "
  loc_D18E4F: ConcatStr
  loc_D18E50: FStStrNoPop var_148
  loc_D18E53: FLdUI1
  loc_D18E57: CStrI2
  loc_D18E59: FStStrNoPop var_14C
  loc_D18E5C: ConcatStr
  loc_D18E5D: FStStrNoPop var_150
  loc_D18E60: LitStr " AND CodiTili = "
  loc_D18E63: ConcatStr
  loc_D18E64: FStStrNoPop var_154
  loc_D18E67: FLdUI1
  loc_D18E6B: CStrI2
  loc_D18E6D: FStStrNoPop var_158
  loc_D18E70: ConcatStr
  loc_D18E71: FStStrNoPop var_15C
  loc_D18E74: LitStr " AND NumeLiqu = "
  loc_D18E77: ConcatStr
  loc_D18E78: FStStrNoPop var_160
  loc_D18E7B: FLdI2 NumeLiqu
  loc_D18E7E: CStrUI1
  loc_D18E80: FStStrNoPop var_164
  loc_D18E83: ConcatStr
  loc_D18E84: FStStrNoPop var_168
  loc_D18E87: LitStr " AND CodiCome = "
  loc_D18E8A: ConcatStr
  loc_D18E8B: FStStrNoPop var_16C
  loc_D18E8E: ILdRf CodiCome
  loc_D18E91: CStrI4
  loc_D18E93: FStStrNoPop var_170
  loc_D18E96: ConcatStr
  loc_D18E97: FStStrNoPop var_174
  loc_D18E9A: LitStr " AND CodiConc = '"
  loc_D18E9D: ConcatStr
  loc_D18E9E: FStStrNoPop var_684
  loc_D18EA1: ILdRf var_88
  loc_D18EA4: ConcatStr
  loc_D18EA5: FStStrNoPop var_688
  loc_D18EA8: LitStr "'"
  loc_D18EAB: ConcatStr
  loc_D18EAC: FStStrNoPop var_68C
  loc_D18EAF: LitStr " AND TipoVenc = "
  loc_D18EB2: ConcatStr
  loc_D18EB3: FStStrNoPop var_690
  loc_D18EB6: FLdUI1
  loc_D18EBA: CStrI2
  loc_D18EBC: FStStrNoPop var_694
  loc_D18EBF: ConcatStr
  loc_D18EC0: FStStrNoPop var_698
  loc_D18EC3: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLcde"
  loc_D18EC6: ConcatStr
  loc_D18EC7: FStStrNoPop var_69C
  loc_D18ECA: Call EjecutarRsCls1(from_stack_1v)
  loc_D18ECF: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = "": var_698 = ""
  loc_D18EFC: FLdRfVar var_178
  loc_D18EFF: FLdPr Me
  loc_D18F02: MemLdPr global_60
  loc_D18F05:  = Me.RecordCount
  loc_D18F0A: ILdRf var_178
  loc_D18F0D: LitI4 0
  loc_D18F12: GtI4
  loc_D18F13: BranchF loc_D192F6
  loc_D18F16: FLdPr Me
  loc_D18F19: MemLdPr global_60
  loc_D18F1C: Me.MoveFirst
  loc_D18F21: FLdRfVar var_1A4
  loc_D18F24: FLdRfVar var_194
  loc_D18F27: LitVarStr var_190, "ImpoLcde"
  loc_D18F2C: PopAdLdVar
  loc_D18F2D: FLdRfVar var_180
  loc_D18F30: FLdPr Me
  loc_D18F33: MemLdPr global_64
  loc_D18F36:  = Me.Fields
  loc_D18F3B: FLdPr var_180
  loc_D18F3E: from_stack_2 = Me.Item(from_stack_1)
  loc_D18F43: FLdPr var_194
  loc_D18F46:  = Me.Value
  loc_D18F4B: LitI4 2
  loc_D18F50: FLdFPR8 AddNew0
  loc_D18F53: FLdRfVar var_1A4
  loc_D18F56: FnCDblVar
  loc_D18F58: SubR4
  loc_D18F59: CVarR8
  loc_D18F5D: FLdRfVar var_1D4
  loc_D18F60: ImpAdCallFPR4  = Round(, )
  loc_D18F65: LitStr " UPDATE licodeta SET ImpoLcde = ImpoLcde + "
  loc_D18F68: LitI4 0
  loc_D18F6D: LitI4 -1
  loc_D18F72: LitI4 1
  loc_D18F77: LitStr "."
  loc_D18F7A: LitStr ","
  loc_D18F7D: FLdRfVar var_1D4
  loc_D18F80: CStrVarVal var_140
  loc_D18F84: ImpAdCallI2 Replace(, , , , , )
  loc_D18F89: FStStrNoPop var_144
  loc_D18F8C: ConcatStr
  loc_D18F8D: FStStrNoPop var_148
  loc_D18F90: LitStr ", TotaLcde = ImpoLcde - DecaLcde "
  loc_D18F93: ConcatStr
  loc_D18F94: FStStrNoPop var_14C
  loc_D18F97: LitStr " WHERE PeriLiqu = "
  loc_D18F9A: ConcatStr
  loc_D18F9B: CVarStr var_204
  loc_D18F9E: FLdRfVar var_1E4
  loc_D18FA1: FLdRfVar var_21C
  loc_D18FA4: LitVarStr var_1F4, "PeriLiqu"
  loc_D18FA9: PopAdLdVar
  loc_D18FAA: FLdRfVar var_208
  loc_D18FAD: FLdPr Me
  loc_D18FB0: MemLdPr global_60
  loc_D18FB3:  = Me.Fields
  loc_D18FB8: FLdPr var_208
  loc_D18FBB: from_stack_2 = Me.Item(from_stack_1)
  loc_D18FC0: FLdPr var_21C
  loc_D18FC3:  = Me.Value
  loc_D18FC8: FLdRfVar var_1E4
  loc_D18FCB: ConcatVar var_22C
  loc_D18FCF: LitVarStr var_218, " AND Bimeliqu = "
  loc_D18FD4: ConcatVar var_23C
  loc_D18FD8: FLdRfVar var_25C
  loc_D18FDB: FLdRfVar var_274
  loc_D18FDE: LitVarStr var_24C, "BimeLiqu"
  loc_D18FE3: PopAdLdVar
  loc_D18FE4: FLdRfVar var_260
  loc_D18FE7: FLdPr Me
  loc_D18FEA: MemLdPr global_60
  loc_D18FED:  = Me.Fields
  loc_D18FF2: FLdPr var_260
  loc_D18FF5: from_stack_2 = Me.Item(from_stack_1)
  loc_D18FFA: FLdPr var_274
  loc_D18FFD:  = Me.Value
  loc_D19002: FLdRfVar var_25C
  loc_D19005: ConcatVar var_284
  loc_D19009: LitVarStr var_270, " AND CodiTili = "
  loc_D1900E: ConcatVar var_294
  loc_D19012: FLdRfVar var_2B4
  loc_D19015: FLdRfVar var_2CC
  loc_D19018: LitVarStr var_2A4, "CodiTili"
  loc_D1901D: PopAdLdVar
  loc_D1901E: FLdRfVar var_2B8
  loc_D19021: FLdPr Me
  loc_D19024: MemLdPr global_60
  loc_D19027:  = Me.Fields
  loc_D1902C: FLdPr var_2B8
  loc_D1902F: from_stack_2 = Me.Item(from_stack_1)
  loc_D19034: FLdPr var_2CC
  loc_D19037:  = Me.Value
  loc_D1903C: FLdRfVar var_2B4
  loc_D1903F: ConcatVar var_2DC
  loc_D19043: LitVarStr var_2C8, " AND NumeLiqu = "
  loc_D19048: ConcatVar var_2EC
  loc_D1904C: FLdRfVar var_30C
  loc_D1904F: FLdRfVar var_324
  loc_D19052: LitVarStr var_2FC, "NumeLiqu"
  loc_D19057: PopAdLdVar
  loc_D19058: FLdRfVar var_310
  loc_D1905B: FLdPr Me
  loc_D1905E: MemLdPr global_60
  loc_D19061:  = Me.Fields
  loc_D19066: FLdPr var_310
  loc_D19069: from_stack_2 = Me.Item(from_stack_1)
  loc_D1906E: FLdPr var_324
  loc_D19071:  = Me.Value
  loc_D19076: FLdRfVar var_30C
  loc_D19079: ConcatVar var_334
  loc_D1907D: LitVarStr var_320, " AND CodiCome = "
  loc_D19082: ConcatVar var_344
  loc_D19086: FLdRfVar var_364
  loc_D19089: FLdRfVar var_3E0
  loc_D1908C: LitVarStr var_354, "CodiCome"
  loc_D19091: PopAdLdVar
  loc_D19092: FLdRfVar var_3CC
  loc_D19095: FLdPr Me
  loc_D19098: MemLdPr global_60
  loc_D1909B:  = Me.Fields
  loc_D190A0: FLdPr var_3CC
  loc_D190A3: from_stack_2 = Me.Item(from_stack_1)
  loc_D190A8: FLdPr var_3E0
  loc_D190AB:  = Me.Value
  loc_D190B0: FLdRfVar var_364
  loc_D190B3: ConcatVar var_384
  loc_D190B7: LitVarStr var_374, " AND CodiConc = '"
  loc_D190BC: ConcatVar var_3A4
  loc_D190C0: FLdRfVar var_3C4
  loc_D190C3: FLdRfVar var_438
  loc_D190C6: LitVarStr var_394, "CodiConc"
  loc_D190CB: PopAdLdVar
  loc_D190CC: FLdRfVar var_424
  loc_D190CF: FLdPr Me
  loc_D190D2: MemLdPr global_60
  loc_D190D5:  = Me.Fields
  loc_D190DA: FLdPr var_424
  loc_D190DD: from_stack_2 = Me.Item(from_stack_1)
  loc_D190E2: FLdPr var_438
  loc_D190E5:  = Me.Value
  loc_D190EA: FLdRfVar var_3C4
  loc_D190ED: ConcatVar var_3F0
  loc_D190F1: LitVarStr var_3B4, "'"
  loc_D190F6: ConcatVar var_400
  loc_D190FA: LitVarStr var_3DC, " AND TipoVenc = "
  loc_D190FF: ConcatVar var_420
  loc_D19103: FLdRfVar var_448
  loc_D19106: FLdRfVar var_490
  loc_D19109: LitVarStr var_410, "TipoVenc"
  loc_D1910E: PopAdLdVar
  loc_D1910F: FLdRfVar var_47C
  loc_D19112: FLdPr Me
  loc_D19115: MemLdPr global_60
  loc_D19118:  = Me.Fields
  loc_D1911D: FLdPr var_47C
  loc_D19120: from_stack_2 = Me.Item(from_stack_1)
  loc_D19125: FLdPr var_490
  loc_D19128:  = Me.Value
  loc_D1912D: FLdRfVar var_448
  loc_D19130: ConcatVar var_458
  loc_D19134: LitVarStr var_434, " AND CodiRamo = "
  loc_D19139: ConcatVar var_478
  loc_D1913D: FLdRfVar var_4A0
  loc_D19140: FLdRfVar var_4E8
  loc_D19143: LitVarStr var_468, "CodiRamo"
  loc_D19148: PopAdLdVar
  loc_D19149: FLdRfVar var_4D4
  loc_D1914C: FLdPr Me
  loc_D1914F: MemLdPr global_60
  loc_D19152:  = Me.Fields
  loc_D19157: FLdPr var_4D4
  loc_D1915A: from_stack_2 = Me.Item(from_stack_1)
  loc_D1915F: FLdPr var_4E8
  loc_D19162:  = Me.Value
  loc_D19167: FLdRfVar var_4A0
  loc_D1916A: ConcatVar var_4B0
  loc_D1916E: LitVarStr var_48C, " AND CodiRubr = "
  loc_D19173: ConcatVar var_4D0
  loc_D19177: FLdRfVar var_4F8
  loc_D1917A: FLdRfVar var_540
  loc_D1917D: LitVarStr var_4C0, "CodiRubr"
  loc_D19182: PopAdLdVar
  loc_D19183: FLdRfVar var_52C
  loc_D19186: FLdPr Me
  loc_D19189: MemLdPr global_60
  loc_D1918C:  = Me.Fields
  loc_D19191: FLdPr var_52C
  loc_D19194: from_stack_2 = Me.Item(from_stack_1)
  loc_D19199: FLdPr var_540
  loc_D1919C:  = Me.Value
  loc_D191A1: FLdRfVar var_4F8
  loc_D191A4: ConcatVar var_508
  loc_D191A8: LitVarStr var_4E4, " AND PeriOrde = "
  loc_D191AD: ConcatVar var_528
  loc_D191B1: FLdRfVar var_550
  loc_D191B4: FLdRfVar var_B08
  loc_D191B7: LitVarStr var_518, "PeriOrde"
  loc_D191BC: PopAdLdVar
  loc_D191BD: FLdRfVar var_B04
  loc_D191C0: FLdPr Me
  loc_D191C3: MemLdPr global_60
  loc_D191C6:  = Me.Fields
  loc_D191CB: FLdPr var_B04
  loc_D191CE: from_stack_2 = Me.Item(from_stack_1)
  loc_D191D3: FLdPr var_B08
  loc_D191D6:  = Me.Value
  loc_D191DB: FLdRfVar var_550
  loc_D191DE: ConcatVar var_560
  loc_D191E2: LitVarStr var_53C, " AND CodiSubr = "
  loc_D191E7: ConcatVar var_580
  loc_D191EB: FLdRfVar var_590
  loc_D191EE: FLdRfVar var_B10
  loc_D191F1: LitVarStr var_570, "CodiSubr"
  loc_D191F6: PopAdLdVar
  loc_D191F7: FLdRfVar var_B0C
  loc_D191FA: FLdPr Me
  loc_D191FD: MemLdPr global_60
  loc_D19200:  = Me.Fields
  loc_D19205: FLdPr var_B0C
  loc_D19208: from_stack_2 = Me.Item(from_stack_1)
  loc_D1920D: FLdPr var_B10
  loc_D19210:  = Me.Value
  loc_D19215: FLdRfVar var_590
  loc_D19218: ConcatVar var_5A0
  loc_D1921C: LitVarStr var_5B0, " AND NumeLcde = "
  loc_D19221: ConcatVar var_5C0
  loc_D19225: FLdRfVar var_5D0
  loc_D19228: FLdRfVar var_B18
  loc_D1922B: LitVarStr var_5F0, "NumeLcde"
  loc_D19230: PopAdLdVar
  loc_D19231: FLdRfVar var_B14
  loc_D19234: FLdPr Me
  loc_D19237: MemLdPr global_60
  loc_D1923A:  = Me.Fields
  loc_D1923F: FLdPr var_B14
  loc_D19242: from_stack_2 = Me.Item(from_stack_1)
  loc_D19247: FLdPr var_B18
  loc_D1924A:  = Me.Value
  loc_D1924F: FLdRfVar var_5D0
  loc_D19252: ConcatVar var_5E0
  loc_D19256: CStrVarVal var_150
  loc_D1925A: Call EjecutarRsCls(from_stack_1v)
  loc_D1925F: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_D1926C: FFreeAd var_180 = "": var_194 = "": var_208 = "": var_21C = "": var_260 = "": var_274 = "": var_2B8 = "": var_2CC = "": var_310 = "": var_324 = "": var_3CC = "": var_3E0 = "": var_424 = "": var_438 = "": var_47C = "": var_490 = "": var_4D4 = "": var_4E8 = "": var_52C = "": var_540 = "": var_B04 = "": var_B08 = "": var_B0C = "": var_B10 = "": var_B14 = ""
  loc_D192A3: FFreeVar var_508 = "": var_528 = "": var_550 = "": var_560 = "": var_580 = "": var_590 = "": var_5A0 = "": var_5C0 = "": var_5D0 = "": var_5E0 = "": var_1A4 = "": var_1C4 = "": var_1D4 = "": var_204 = "": var_1E4 = "": var_22C = "": var_23C = "": var_25C = "": var_284 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_2EC = "": var_30C = "": var_334 = "": var_344 = "": var_364 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3F0 = "": var_400 = "": var_420 = "": var_448 = "": var_458 = "": var_478 = "": var_4A0 = "": var_4B0 = "": var_4D0 = ""
  loc_D192F6: Branch loc_D197DB
  loc_D192F9: FLdRfVar var_1A4
  loc_D192FC: FLdRfVar var_194
  loc_D192FF: LitVarStr var_190, "ImpoLcde"
  loc_D19304: PopAdLdVar
  loc_D19305: FLdRfVar var_180
  loc_D19308: FLdPr Me
  loc_D1930B: MemLdPr global_64
  loc_D1930E:  = Me.Fields
  loc_D19313: FLdPr var_180
  loc_D19316: from_stack_2 = Me.Item(from_stack_1)
  loc_D1931B: FLdPr var_194
  loc_D1931E:  = Me.Value
  loc_D19323: FLdFPR8 AddNew0
  loc_D19326: FLdRfVar var_1A4
  loc_D19329: FnCDblVar
  loc_D1932B: LtR8
  loc_D1932C: FFreeAd var_180 = ""
  loc_D19333: FFree1Var var_1A4 = ""
  loc_D19336: BranchF loc_D197DB
  loc_D19339: LitStr "SELECT * FROM licodeta WHERE PeriLiqu = "
  loc_D1933C: FLdI2 PeriLiqu
  loc_D1933F: CStrUI1
  loc_D19341: FStStrNoPop var_140
  loc_D19344: ConcatStr
  loc_D19345: FStStrNoPop var_144
  loc_D19348: LitStr " AND Bimeliqu = "
  loc_D1934B: ConcatStr
  loc_D1934C: FStStrNoPop var_148
  loc_D1934F: FLdUI1
  loc_D19353: CStrI2
  loc_D19355: FStStrNoPop var_14C
  loc_D19358: ConcatStr
  loc_D19359: FStStrNoPop var_150
  loc_D1935C: LitStr " AND CodiTili = "
  loc_D1935F: ConcatStr
  loc_D19360: FStStrNoPop var_154
  loc_D19363: FLdUI1
  loc_D19367: CStrI2
  loc_D19369: FStStrNoPop var_158
  loc_D1936C: ConcatStr
  loc_D1936D: FStStrNoPop var_15C
  loc_D19370: LitStr " AND NumeLiqu = "
  loc_D19373: ConcatStr
  loc_D19374: FStStrNoPop var_160
  loc_D19377: FLdI2 NumeLiqu
  loc_D1937A: CStrUI1
  loc_D1937C: FStStrNoPop var_164
  loc_D1937F: ConcatStr
  loc_D19380: FStStrNoPop var_168
  loc_D19383: LitStr " AND CodiCome = "
  loc_D19386: ConcatStr
  loc_D19387: FStStrNoPop var_16C
  loc_D1938A: ILdRf CodiCome
  loc_D1938D: CStrI4
  loc_D1938F: FStStrNoPop var_170
  loc_D19392: ConcatStr
  loc_D19393: FStStrNoPop var_174
  loc_D19396: LitStr " AND CodiConc = '"
  loc_D19399: ConcatStr
  loc_D1939A: FStStrNoPop var_684
  loc_D1939D: ILdRf var_88
  loc_D193A0: ConcatStr
  loc_D193A1: FStStrNoPop var_688
  loc_D193A4: LitStr "'"
  loc_D193A7: ConcatStr
  loc_D193A8: FStStrNoPop var_68C
  loc_D193AB: LitStr " AND TipoVenc = "
  loc_D193AE: ConcatStr
  loc_D193AF: FStStrNoPop var_690
  loc_D193B2: FLdUI1
  loc_D193B6: CStrI2
  loc_D193B8: FStStrNoPop var_694
  loc_D193BB: ConcatStr
  loc_D193BC: FStStrNoPop var_698
  loc_D193BF: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLcde"
  loc_D193C2: ConcatStr
  loc_D193C3: FStStrNoPop var_69C
  loc_D193C6: Call EjecutarRsCls1(from_stack_1v)
  loc_D193CB: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = "": var_698 = ""
  loc_D193F8: FLdRfVar var_178
  loc_D193FB: FLdPr Me
  loc_D193FE: MemLdPr global_60
  loc_D19401:  = Me.RecordCount
  loc_D19406: ILdRf var_178
  loc_D19409: LitI4 0
  loc_D1940E: GtI4
  loc_D1940F: BranchF loc_D197DB
  loc_D19412: FLdPr Me
  loc_D19415: MemLdPr global_60
  loc_D19418: Me.MoveFirst
  loc_D1941D: FLdRfVar var_1A4
  loc_D19420: FLdRfVar var_194
  loc_D19423: LitVarStr var_190, "ImpoLcde"
  loc_D19428: PopAdLdVar
  loc_D19429: FLdRfVar var_180
  loc_D1942C: FLdPr Me
  loc_D1942F: MemLdPr global_64
  loc_D19432:  = Me.Fields
  loc_D19437: FLdPr var_180
  loc_D1943A: from_stack_2 = Me.Item(from_stack_1)
  loc_D1943F: FLdPr var_194
  loc_D19442:  = Me.Value
  loc_D19447: LitStr " UPDATE licodeta SET ImpoLcde = ImpoLcde - "
  loc_D1944A: LitI4 0
  loc_D1944F: LitI4 -1
  loc_D19454: LitI4 1
  loc_D19459: LitStr "."
  loc_D1945C: LitStr ","
  loc_D1945F: FLdRfVar var_1A4
  loc_D19462: FnCDblVar
  loc_D19464: FLdFPR8 AddNew0
  loc_D19467: SubR4
  loc_D19468: CStrR8
  loc_D1946A: FStStrNoPop var_140
  loc_D1946D: ImpAdCallI2 Replace(, , , , , )
  loc_D19472: FStStrNoPop var_144
  loc_D19475: ConcatStr
  loc_D19476: FStStrNoPop var_148
  loc_D19479: LitStr ", TotaLcde = ImpoLcde - DecaLcde "
  loc_D1947C: ConcatStr
  loc_D1947D: FStStrNoPop var_14C
  loc_D19480: LitStr " WHERE PeriLiqu = "
  loc_D19483: ConcatStr
  loc_D19484: CVarStr var_1D4
  loc_D19487: FLdRfVar var_1C4
  loc_D1948A: FLdRfVar var_21C
  loc_D1948D: LitVarStr var_1B4, "PeriLiqu"
  loc_D19492: PopAdLdVar
  loc_D19493: FLdRfVar var_208
  loc_D19496: FLdPr Me
  loc_D19499: MemLdPr global_60
  loc_D1949C:  = Me.Fields
  loc_D194A1: FLdPr var_208
  loc_D194A4: from_stack_2 = Me.Item(from_stack_1)
  loc_D194A9: FLdPr var_21C
  loc_D194AC:  = Me.Value
  loc_D194B1: FLdRfVar var_1C4
  loc_D194B4: ConcatVar var_1E4
  loc_D194B8: LitVarStr var_1F4, " AND Bimeliqu = "
  loc_D194BD: ConcatVar var_204
  loc_D194C1: FLdRfVar var_22C
  loc_D194C4: FLdRfVar var_274
  loc_D194C7: LitVarStr var_218, "BimeLiqu"
  loc_D194CC: PopAdLdVar
  loc_D194CD: FLdRfVar var_260
  loc_D194D0: FLdPr Me
  loc_D194D3: MemLdPr global_60
  loc_D194D6:  = Me.Fields
  loc_D194DB: FLdPr var_260
  loc_D194DE: from_stack_2 = Me.Item(from_stack_1)
  loc_D194E3: FLdPr var_274
  loc_D194E6:  = Me.Value
  loc_D194EB: FLdRfVar var_22C
  loc_D194EE: ConcatVar var_23C
  loc_D194F2: LitVarStr var_24C, " AND CodiTili = "
  loc_D194F7: ConcatVar var_25C
  loc_D194FB: FLdRfVar var_284
  loc_D194FE: FLdRfVar var_2CC
  loc_D19501: LitVarStr var_270, "CodiTili"
  loc_D19506: PopAdLdVar
  loc_D19507: FLdRfVar var_2B8
  loc_D1950A: FLdPr Me
  loc_D1950D: MemLdPr global_60
  loc_D19510:  = Me.Fields
  loc_D19515: FLdPr var_2B8
  loc_D19518: from_stack_2 = Me.Item(from_stack_1)
  loc_D1951D: FLdPr var_2CC
  loc_D19520:  = Me.Value
  loc_D19525: FLdRfVar var_284
  loc_D19528: ConcatVar var_294
  loc_D1952C: LitVarStr var_2A4, " AND NumeLiqu = "
  loc_D19531: ConcatVar var_2B4
  loc_D19535: FLdRfVar var_2DC
  loc_D19538: FLdRfVar var_324
  loc_D1953B: LitVarStr var_2C8, "NumeLiqu"
  loc_D19540: PopAdLdVar
  loc_D19541: FLdRfVar var_310
  loc_D19544: FLdPr Me
  loc_D19547: MemLdPr global_60
  loc_D1954A:  = Me.Fields
  loc_D1954F: FLdPr var_310
  loc_D19552: from_stack_2 = Me.Item(from_stack_1)
  loc_D19557: FLdPr var_324
  loc_D1955A:  = Me.Value
  loc_D1955F: FLdRfVar var_2DC
  loc_D19562: ConcatVar var_2EC
  loc_D19566: LitVarStr var_2FC, " AND CodiCome = "
  loc_D1956B: ConcatVar var_30C
  loc_D1956F: FLdRfVar var_334
  loc_D19572: FLdRfVar var_3E0
  loc_D19575: LitVarStr var_320, "CodiCome"
  loc_D1957A: PopAdLdVar
  loc_D1957B: FLdRfVar var_3CC
  loc_D1957E: FLdPr Me
  loc_D19581: MemLdPr global_60
  loc_D19584:  = Me.Fields
  loc_D19589: FLdPr var_3CC
  loc_D1958C: from_stack_2 = Me.Item(from_stack_1)
  loc_D19591: FLdPr var_3E0
  loc_D19594:  = Me.Value
  loc_D19599: FLdRfVar var_334
  loc_D1959C: ConcatVar var_344
  loc_D195A0: LitVarStr var_354, " AND CodiConc = '"
  loc_D195A5: ConcatVar var_364
  loc_D195A9: FLdRfVar var_384
  loc_D195AC: FLdRfVar var_438
  loc_D195AF: LitVarStr var_374, "CodiConc"
  loc_D195B4: PopAdLdVar
  loc_D195B5: FLdRfVar var_424
  loc_D195B8: FLdPr Me
  loc_D195BB: MemLdPr global_60
  loc_D195BE:  = Me.Fields
  loc_D195C3: FLdPr var_424
  loc_D195C6: from_stack_2 = Me.Item(from_stack_1)
  loc_D195CB: FLdPr var_438
  loc_D195CE:  = Me.Value
  loc_D195D3: FLdRfVar var_384
  loc_D195D6: ConcatVar var_3A4
  loc_D195DA: LitVarStr var_394, "'"
  loc_D195DF: ConcatVar var_3C4
  loc_D195E3: LitVarStr var_3B4, " AND TipoVenc = "
  loc_D195E8: ConcatVar var_3F0
  loc_D195EC: FLdRfVar var_400
  loc_D195EF: FLdRfVar var_490
  loc_D195F2: LitVarStr var_3DC, "TipoVenc"
  loc_D195F7: PopAdLdVar
  loc_D195F8: FLdRfVar var_47C
  loc_D195FB: FLdPr Me
  loc_D195FE: MemLdPr global_60
  loc_D19601:  = Me.Fields
  loc_D19606: FLdPr var_47C
  loc_D19609: from_stack_2 = Me.Item(from_stack_1)
  loc_D1960E: FLdPr var_490
  loc_D19611:  = Me.Value
  loc_D19616: FLdRfVar var_400
  loc_D19619: ConcatVar var_420
  loc_D1961D: LitVarStr var_410, " AND CodiRamo = "
  loc_D19622: ConcatVar var_448
  loc_D19626: FLdRfVar var_458
  loc_D19629: FLdRfVar var_4E8
  loc_D1962C: LitVarStr var_434, "CodiRamo"
  loc_D19631: PopAdLdVar
  loc_D19632: FLdRfVar var_4D4
  loc_D19635: FLdPr Me
  loc_D19638: MemLdPr global_60
  loc_D1963B:  = Me.Fields
  loc_D19640: FLdPr var_4D4
  loc_D19643: from_stack_2 = Me.Item(from_stack_1)
  loc_D19648: FLdPr var_4E8
  loc_D1964B:  = Me.Value
  loc_D19650: FLdRfVar var_458
  loc_D19653: ConcatVar var_478
  loc_D19657: LitVarStr var_468, " AND CodiRubr = "
  loc_D1965C: ConcatVar var_4A0
  loc_D19660: FLdRfVar var_4B0
  loc_D19663: FLdRfVar var_540
  loc_D19666: LitVarStr var_48C, "CodiRubr"
  loc_D1966B: PopAdLdVar
  loc_D1966C: FLdRfVar var_52C
  loc_D1966F: FLdPr Me
  loc_D19672: MemLdPr global_60
  loc_D19675:  = Me.Fields
  loc_D1967A: FLdPr var_52C
  loc_D1967D: from_stack_2 = Me.Item(from_stack_1)
  loc_D19682: FLdPr var_540
  loc_D19685:  = Me.Value
  loc_D1968A: FLdRfVar var_4B0
  loc_D1968D: ConcatVar var_4D0
  loc_D19691: LitVarStr var_4C0, " AND PeriOrde = "
  loc_D19696: ConcatVar var_4F8
  loc_D1969A: FLdRfVar var_508
  loc_D1969D: FLdRfVar var_B08
  loc_D196A0: LitVarStr var_4E4, "PeriOrde"
  loc_D196A5: PopAdLdVar
  loc_D196A6: FLdRfVar var_B04
  loc_D196A9: FLdPr Me
  loc_D196AC: MemLdPr global_60
  loc_D196AF:  = Me.Fields
  loc_D196B4: FLdPr var_B04
  loc_D196B7: from_stack_2 = Me.Item(from_stack_1)
  loc_D196BC: FLdPr var_B08
  loc_D196BF:  = Me.Value
  loc_D196C4: FLdRfVar var_508
  loc_D196C7: ConcatVar var_528
  loc_D196CB: LitVarStr var_518, " AND CodiSubr = "
  loc_D196D0: ConcatVar var_550
  loc_D196D4: FLdRfVar var_560
  loc_D196D7: FLdRfVar var_B10
  loc_D196DA: LitVarStr var_53C, "CodiSubr"
  loc_D196DF: PopAdLdVar
  loc_D196E0: FLdRfVar var_B0C
  loc_D196E3: FLdPr Me
  loc_D196E6: MemLdPr global_60
  loc_D196E9:  = Me.Fields
  loc_D196EE: FLdPr var_B0C
  loc_D196F1: from_stack_2 = Me.Item(from_stack_1)
  loc_D196F6: FLdPr var_B10
  loc_D196F9:  = Me.Value
  loc_D196FE: FLdRfVar var_560
  loc_D19701: ConcatVar var_580
  loc_D19705: LitVarStr var_570, " AND NumeLcde = "
  loc_D1970A: ConcatVar var_590
  loc_D1970E: FLdRfVar var_5A0
  loc_D19711: FLdRfVar var_B18
  loc_D19714: LitVarStr var_5B0, "NumeLcde"
  loc_D19719: PopAdLdVar
  loc_D1971A: FLdRfVar var_B14
  loc_D1971D: FLdPr Me
  loc_D19720: MemLdPr global_60
  loc_D19723:  = Me.Fields
  loc_D19728: FLdPr var_B14
  loc_D1972B: from_stack_2 = Me.Item(from_stack_1)
  loc_D19730: FLdPr var_B18
  loc_D19733:  = Me.Value
  loc_D19738: FLdRfVar var_5A0
  loc_D1973B: ConcatVar var_5C0
  loc_D1973F: CStrVarVal var_150
  loc_D19743: Call EjecutarRsCls(from_stack_1v)
  loc_D19748: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_D19755: FFreeAd var_180 = "": var_194 = "": var_208 = "": var_21C = "": var_260 = "": var_274 = "": var_2B8 = "": var_2CC = "": var_310 = "": var_324 = "": var_3CC = "": var_3E0 = "": var_424 = "": var_438 = "": var_47C = "": var_490 = "": var_4D4 = "": var_4E8 = "": var_52C = "": var_540 = "": var_B04 = "": var_B08 = "": var_B0C = "": var_B10 = "": var_B14 = ""
  loc_D1978C: FFreeVar var_508 = "": var_528 = "": var_550 = "": var_560 = "": var_580 = "": var_590 = "": var_5A0 = "": var_5C0 = "": var_1A4 = "": var_1D4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_22C = "": var_23C = "": var_25C = "": var_284 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_2EC = "": var_30C = "": var_334 = "": var_344 = "": var_364 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3F0 = "": var_400 = "": var_420 = "": var_448 = "": var_458 = "": var_478 = "": var_4A0 = "": var_4B0 = "": var_4D0 = ""
  loc_D197DB: FLdFPR8 arg_58
  loc_D197DE: CVarR8
  loc_D197E2: HardType
  loc_D197E3: FLdRfVar var_1A4
  loc_D197E6: FLdRfVar var_194
  loc_D197E9: LitVarStr var_190, "DecaLcde"
  loc_D197EE: PopAdLdVar
  loc_D197EF: FLdRfVar var_180
  loc_D197F2: FLdPr Me
  loc_D197F5: MemLdPr global_64
  loc_D197F8:  = Me.Fields
  loc_D197FD: FLdPr var_180
  loc_D19800: from_stack_2 = Me.Item(from_stack_1)
  loc_D19805: FLdPr var_194
  loc_D19808:  = Me.Value
  loc_D1980D: FLdRfVar var_1A4
  loc_D19810: NeVarBool
  loc_D19812: FFreeAd var_180 = ""
  loc_D19819: FFree1Var var_1A4 = ""
  loc_D1981C: BranchF loc_D1A214
  loc_D1981F: FLdRfVar var_1A4
  loc_D19822: FLdRfVar var_194
  loc_D19825: LitVarStr var_190, "DecaLcde"
  loc_D1982A: PopAdLdVar
  loc_D1982B: FLdRfVar var_180
  loc_D1982E: FLdPr Me
  loc_D19831: MemLdPr global_64
  loc_D19834:  = Me.Fields
  loc_D19839: FLdPr var_180
  loc_D1983C: from_stack_2 = Me.Item(from_stack_1)
  loc_D19841: FLdPr var_194
  loc_D19844:  = Me.Value
  loc_D19849: FLdFPR8 arg_58
  loc_D1984C: FLdRfVar var_1A4
  loc_D1984F: FnCDblVar
  loc_D19851: GtR4
  loc_D19852: FFreeAd var_180 = ""
  loc_D19859: FFree1Var var_1A4 = ""
  loc_D1985C: BranchF loc_D19D1B
  loc_D1985F: LitStr "SELECT * FROM licodeta WHERE PeriLiqu = "
  loc_D19862: FLdI2 PeriLiqu
  loc_D19865: CStrUI1
  loc_D19867: FStStrNoPop var_140
  loc_D1986A: ConcatStr
  loc_D1986B: FStStrNoPop var_144
  loc_D1986E: LitStr " AND Bimeliqu = "
  loc_D19871: ConcatStr
  loc_D19872: FStStrNoPop var_148
  loc_D19875: FLdUI1
  loc_D19879: CStrI2
  loc_D1987B: FStStrNoPop var_14C
  loc_D1987E: ConcatStr
  loc_D1987F: FStStrNoPop var_150
  loc_D19882: LitStr " AND CodiTili = "
  loc_D19885: ConcatStr
  loc_D19886: FStStrNoPop var_154
  loc_D19889: FLdUI1
  loc_D1988D: CStrI2
  loc_D1988F: FStStrNoPop var_158
  loc_D19892: ConcatStr
  loc_D19893: FStStrNoPop var_15C
  loc_D19896: LitStr " AND NumeLiqu = "
  loc_D19899: ConcatStr
  loc_D1989A: FStStrNoPop var_160
  loc_D1989D: FLdI2 NumeLiqu
  loc_D198A0: CStrUI1
  loc_D198A2: FStStrNoPop var_164
  loc_D198A5: ConcatStr
  loc_D198A6: FStStrNoPop var_168
  loc_D198A9: LitStr " AND CodiCome = "
  loc_D198AC: ConcatStr
  loc_D198AD: FStStrNoPop var_16C
  loc_D198B0: ILdRf CodiCome
  loc_D198B3: CStrI4
  loc_D198B5: FStStrNoPop var_170
  loc_D198B8: ConcatStr
  loc_D198B9: FStStrNoPop var_174
  loc_D198BC: LitStr " AND CodiConc = '"
  loc_D198BF: ConcatStr
  loc_D198C0: FStStrNoPop var_684
  loc_D198C3: ILdRf var_88
  loc_D198C6: ConcatStr
  loc_D198C7: FStStrNoPop var_688
  loc_D198CA: LitStr "'"
  loc_D198CD: ConcatStr
  loc_D198CE: FStStrNoPop var_68C
  loc_D198D1: LitStr " AND TipoVenc = "
  loc_D198D4: ConcatStr
  loc_D198D5: FStStrNoPop var_690
  loc_D198D8: FLdUI1
  loc_D198DC: CStrI2
  loc_D198DE: FStStrNoPop var_694
  loc_D198E1: ConcatStr
  loc_D198E2: FStStrNoPop var_698
  loc_D198E5: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLcde"
  loc_D198E8: ConcatStr
  loc_D198E9: FStStrNoPop var_69C
  loc_D198EC: Call EjecutarRsCls1(from_stack_1v)
  loc_D198F1: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = "": var_698 = ""
  loc_D1991E: FLdRfVar var_178
  loc_D19921: FLdPr Me
  loc_D19924: MemLdPr global_60
  loc_D19927:  = Me.RecordCount
  loc_D1992C: ILdRf var_178
  loc_D1992F: LitI4 0
  loc_D19934: GtI4
  loc_D19935: BranchF loc_D19D18
  loc_D19938: FLdPr Me
  loc_D1993B: MemLdPr global_60
  loc_D1993E: Me.MoveFirst
  loc_D19943: FLdRfVar var_1A4
  loc_D19946: FLdRfVar var_194
  loc_D19949: LitVarStr var_190, "DecaLcde"
  loc_D1994E: PopAdLdVar
  loc_D1994F: FLdRfVar var_180
  loc_D19952: FLdPr Me
  loc_D19955: MemLdPr global_64
  loc_D19958:  = Me.Fields
  loc_D1995D: FLdPr var_180
  loc_D19960: from_stack_2 = Me.Item(from_stack_1)
  loc_D19965: FLdPr var_194
  loc_D19968:  = Me.Value
  loc_D1996D: LitI4 2
  loc_D19972: FLdFPR8 arg_58
  loc_D19975: FLdRfVar var_1A4
  loc_D19978: FnCDblVar
  loc_D1997A: SubR4
  loc_D1997B: CVarR8
  loc_D1997F: FLdRfVar var_1D4
  loc_D19982: ImpAdCallFPR4  = Round(, )
  loc_D19987: LitStr " UPDATE licodeta SET DecaLcde = DecaLcde + "
  loc_D1998A: LitI4 0
  loc_D1998F: LitI4 -1
  loc_D19994: LitI4 1
  loc_D19999: LitStr "."
  loc_D1999C: LitStr ","
  loc_D1999F: FLdRfVar var_1D4
  loc_D199A2: CStrVarVal var_140
  loc_D199A6: ImpAdCallI2 Replace(, , , , , )
  loc_D199AB: FStStrNoPop var_144
  loc_D199AE: ConcatStr
  loc_D199AF: FStStrNoPop var_148
  loc_D199B2: LitStr ", TotaLcde = ImpoLcde - DecaLcde "
  loc_D199B5: ConcatStr
  loc_D199B6: FStStrNoPop var_14C
  loc_D199B9: LitStr " WHERE PeriLiqu = "
  loc_D199BC: ConcatStr
  loc_D199BD: CVarStr var_204
  loc_D199C0: FLdRfVar var_1E4
  loc_D199C3: FLdRfVar var_21C
  loc_D199C6: LitVarStr var_1F4, "PeriLiqu"
  loc_D199CB: PopAdLdVar
  loc_D199CC: FLdRfVar var_208
  loc_D199CF: FLdPr Me
  loc_D199D2: MemLdPr global_60
  loc_D199D5:  = Me.Fields
  loc_D199DA: FLdPr var_208
  loc_D199DD: from_stack_2 = Me.Item(from_stack_1)
  loc_D199E2: FLdPr var_21C
  loc_D199E5:  = Me.Value
  loc_D199EA: FLdRfVar var_1E4
  loc_D199ED: ConcatVar var_22C
  loc_D199F1: LitVarStr var_218, " AND Bimeliqu = "
  loc_D199F6: ConcatVar var_23C
  loc_D199FA: FLdRfVar var_25C
  loc_D199FD: FLdRfVar var_274
  loc_D19A00: LitVarStr var_24C, "BimeLiqu"
  loc_D19A05: PopAdLdVar
  loc_D19A06: FLdRfVar var_260
  loc_D19A09: FLdPr Me
  loc_D19A0C: MemLdPr global_60
  loc_D19A0F:  = Me.Fields
  loc_D19A14: FLdPr var_260
  loc_D19A17: from_stack_2 = Me.Item(from_stack_1)
  loc_D19A1C: FLdPr var_274
  loc_D19A1F:  = Me.Value
  loc_D19A24: FLdRfVar var_25C
  loc_D19A27: ConcatVar var_284
  loc_D19A2B: LitVarStr var_270, " AND CodiTili = "
  loc_D19A30: ConcatVar var_294
  loc_D19A34: FLdRfVar var_2B4
  loc_D19A37: FLdRfVar var_2CC
  loc_D19A3A: LitVarStr var_2A4, "CodiTili"
  loc_D19A3F: PopAdLdVar
  loc_D19A40: FLdRfVar var_2B8
  loc_D19A43: FLdPr Me
  loc_D19A46: MemLdPr global_60
  loc_D19A49:  = Me.Fields
  loc_D19A4E: FLdPr var_2B8
  loc_D19A51: from_stack_2 = Me.Item(from_stack_1)
  loc_D19A56: FLdPr var_2CC
  loc_D19A59:  = Me.Value
  loc_D19A5E: FLdRfVar var_2B4
  loc_D19A61: ConcatVar var_2DC
  loc_D19A65: LitVarStr var_2C8, " AND NumeLiqu = "
  loc_D19A6A: ConcatVar var_2EC
  loc_D19A6E: FLdRfVar var_30C
  loc_D19A71: FLdRfVar var_324
  loc_D19A74: LitVarStr var_2FC, "NumeLiqu"
  loc_D19A79: PopAdLdVar
  loc_D19A7A: FLdRfVar var_310
  loc_D19A7D: FLdPr Me
  loc_D19A80: MemLdPr global_60
  loc_D19A83:  = Me.Fields
  loc_D19A88: FLdPr var_310
  loc_D19A8B: from_stack_2 = Me.Item(from_stack_1)
  loc_D19A90: FLdPr var_324
  loc_D19A93:  = Me.Value
  loc_D19A98: FLdRfVar var_30C
  loc_D19A9B: ConcatVar var_334
  loc_D19A9F: LitVarStr var_320, " AND CodiCome = "
  loc_D19AA4: ConcatVar var_344
  loc_D19AA8: FLdRfVar var_364
  loc_D19AAB: FLdRfVar var_3E0
  loc_D19AAE: LitVarStr var_354, "CodiCome"
  loc_D19AB3: PopAdLdVar
  loc_D19AB4: FLdRfVar var_3CC
  loc_D19AB7: FLdPr Me
  loc_D19ABA: MemLdPr global_60
  loc_D19ABD:  = Me.Fields
  loc_D19AC2: FLdPr var_3CC
  loc_D19AC5: from_stack_2 = Me.Item(from_stack_1)
  loc_D19ACA: FLdPr var_3E0
  loc_D19ACD:  = Me.Value
  loc_D19AD2: FLdRfVar var_364
  loc_D19AD5: ConcatVar var_384
  loc_D19AD9: LitVarStr var_374, " AND CodiConc = '"
  loc_D19ADE: ConcatVar var_3A4
  loc_D19AE2: FLdRfVar var_3C4
  loc_D19AE5: FLdRfVar var_438
  loc_D19AE8: LitVarStr var_394, "CodiConc"
  loc_D19AED: PopAdLdVar
  loc_D19AEE: FLdRfVar var_424
  loc_D19AF1: FLdPr Me
  loc_D19AF4: MemLdPr global_60
  loc_D19AF7:  = Me.Fields
  loc_D19AFC: FLdPr var_424
  loc_D19AFF: from_stack_2 = Me.Item(from_stack_1)
  loc_D19B04: FLdPr var_438
  loc_D19B07:  = Me.Value
  loc_D19B0C: FLdRfVar var_3C4
  loc_D19B0F: ConcatVar var_3F0
  loc_D19B13: LitVarStr var_3B4, "'"
  loc_D19B18: ConcatVar var_400
  loc_D19B1C: LitVarStr var_3DC, " AND TipoVenc = "
  loc_D19B21: ConcatVar var_420
  loc_D19B25: FLdRfVar var_448
  loc_D19B28: FLdRfVar var_490
  loc_D19B2B: LitVarStr var_410, "TipoVenc"
  loc_D19B30: PopAdLdVar
  loc_D19B31: FLdRfVar var_47C
  loc_D19B34: FLdPr Me
  loc_D19B37: MemLdPr global_60
  loc_D19B3A:  = Me.Fields
  loc_D19B3F: FLdPr var_47C
  loc_D19B42: from_stack_2 = Me.Item(from_stack_1)
  loc_D19B47: FLdPr var_490
  loc_D19B4A:  = Me.Value
  loc_D19B4F: FLdRfVar var_448
  loc_D19B52: ConcatVar var_458
  loc_D19B56: LitVarStr var_434, " AND CodiRamo = "
  loc_D19B5B: ConcatVar var_478
  loc_D19B5F: FLdRfVar var_4A0
  loc_D19B62: FLdRfVar var_4E8
  loc_D19B65: LitVarStr var_468, "CodiRamo"
  loc_D19B6A: PopAdLdVar
  loc_D19B6B: FLdRfVar var_4D4
  loc_D19B6E: FLdPr Me
  loc_D19B71: MemLdPr global_60
  loc_D19B74:  = Me.Fields
  loc_D19B79: FLdPr var_4D4
  loc_D19B7C: from_stack_2 = Me.Item(from_stack_1)
  loc_D19B81: FLdPr var_4E8
  loc_D19B84:  = Me.Value
  loc_D19B89: FLdRfVar var_4A0
  loc_D19B8C: ConcatVar var_4B0
  loc_D19B90: LitVarStr var_48C, " AND CodiRubr = "
  loc_D19B95: ConcatVar var_4D0
  loc_D19B99: FLdRfVar var_4F8
  loc_D19B9C: FLdRfVar var_540
  loc_D19B9F: LitVarStr var_4C0, "CodiRubr"
  loc_D19BA4: PopAdLdVar
  loc_D19BA5: FLdRfVar var_52C
  loc_D19BA8: FLdPr Me
  loc_D19BAB: MemLdPr global_60
  loc_D19BAE:  = Me.Fields
  loc_D19BB3: FLdPr var_52C
  loc_D19BB6: from_stack_2 = Me.Item(from_stack_1)
  loc_D19BBB: FLdPr var_540
  loc_D19BBE:  = Me.Value
  loc_D19BC3: FLdRfVar var_4F8
  loc_D19BC6: ConcatVar var_508
  loc_D19BCA: LitVarStr var_4E4, " AND PeriOrde = "
  loc_D19BCF: ConcatVar var_528
  loc_D19BD3: FLdRfVar var_550
  loc_D19BD6: FLdRfVar var_B08
  loc_D19BD9: LitVarStr var_518, "PeriOrde"
  loc_D19BDE: PopAdLdVar
  loc_D19BDF: FLdRfVar var_B04
  loc_D19BE2: FLdPr Me
  loc_D19BE5: MemLdPr global_60
  loc_D19BE8:  = Me.Fields
  loc_D19BED: FLdPr var_B04
  loc_D19BF0: from_stack_2 = Me.Item(from_stack_1)
  loc_D19BF5: FLdPr var_B08
  loc_D19BF8:  = Me.Value
  loc_D19BFD: FLdRfVar var_550
  loc_D19C00: ConcatVar var_560
  loc_D19C04: LitVarStr var_53C, " AND CodiSubr = "
  loc_D19C09: ConcatVar var_580
  loc_D19C0D: FLdRfVar var_590
  loc_D19C10: FLdRfVar var_B10
  loc_D19C13: LitVarStr var_570, "CodiSubr"
  loc_D19C18: PopAdLdVar
  loc_D19C19: FLdRfVar var_B0C
  loc_D19C1C: FLdPr Me
  loc_D19C1F: MemLdPr global_60
  loc_D19C22:  = Me.Fields
  loc_D19C27: FLdPr var_B0C
  loc_D19C2A: from_stack_2 = Me.Item(from_stack_1)
  loc_D19C2F: FLdPr var_B10
  loc_D19C32:  = Me.Value
  loc_D19C37: FLdRfVar var_590
  loc_D19C3A: ConcatVar var_5A0
  loc_D19C3E: LitVarStr var_5B0, " AND NumeLcde = "
  loc_D19C43: ConcatVar var_5C0
  loc_D19C47: FLdRfVar var_5D0
  loc_D19C4A: FLdRfVar var_B18
  loc_D19C4D: LitVarStr var_5F0, "NumeLcde"
  loc_D19C52: PopAdLdVar
  loc_D19C53: FLdRfVar var_B14
  loc_D19C56: FLdPr Me
  loc_D19C59: MemLdPr global_60
  loc_D19C5C:  = Me.Fields
  loc_D19C61: FLdPr var_B14
  loc_D19C64: from_stack_2 = Me.Item(from_stack_1)
  loc_D19C69: FLdPr var_B18
  loc_D19C6C:  = Me.Value
  loc_D19C71: FLdRfVar var_5D0
  loc_D19C74: ConcatVar var_5E0
  loc_D19C78: CStrVarVal var_150
  loc_D19C7C: Call EjecutarRsCls(from_stack_1v)
  loc_D19C81: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_D19C8E: FFreeAd var_180 = "": var_194 = "": var_208 = "": var_21C = "": var_260 = "": var_274 = "": var_2B8 = "": var_2CC = "": var_310 = "": var_324 = "": var_3CC = "": var_3E0 = "": var_424 = "": var_438 = "": var_47C = "": var_490 = "": var_4D4 = "": var_4E8 = "": var_52C = "": var_540 = "": var_B04 = "": var_B08 = "": var_B0C = "": var_B10 = "": var_B14 = ""
  loc_D19CC5: FFreeVar var_508 = "": var_528 = "": var_550 = "": var_560 = "": var_580 = "": var_590 = "": var_5A0 = "": var_5C0 = "": var_5D0 = "": var_5E0 = "": var_1A4 = "": var_1C4 = "": var_1D4 = "": var_204 = "": var_1E4 = "": var_22C = "": var_23C = "": var_25C = "": var_284 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_2EC = "": var_30C = "": var_334 = "": var_344 = "": var_364 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3F0 = "": var_400 = "": var_420 = "": var_448 = "": var_458 = "": var_478 = "": var_4A0 = "": var_4B0 = "": var_4D0 = ""
  loc_D19D18: Branch loc_D1A214
  loc_D19D1B: FLdRfVar var_1A4
  loc_D19D1E: FLdRfVar var_194
  loc_D19D21: LitVarStr var_190, "DecaLcde"
  loc_D19D26: PopAdLdVar
  loc_D19D27: FLdRfVar var_180
  loc_D19D2A: FLdPr Me
  loc_D19D2D: MemLdPr global_64
  loc_D19D30:  = Me.Fields
  loc_D19D35: FLdPr var_180
  loc_D19D38: from_stack_2 = Me.Item(from_stack_1)
  loc_D19D3D: FLdPr var_194
  loc_D19D40:  = Me.Value
  loc_D19D45: FLdFPR8 arg_58
  loc_D19D48: FLdRfVar var_1A4
  loc_D19D4B: FnCDblVar
  loc_D19D4D: LtR8
  loc_D19D4E: FFreeAd var_180 = ""
  loc_D19D55: FFree1Var var_1A4 = ""
  loc_D19D58: BranchF loc_D1A214
  loc_D19D5B: LitStr "SELECT * FROM licodeta WHERE PeriLiqu = "
  loc_D19D5E: FLdI2 PeriLiqu
  loc_D19D61: CStrUI1
  loc_D19D63: FStStrNoPop var_140
  loc_D19D66: ConcatStr
  loc_D19D67: FStStrNoPop var_144
  loc_D19D6A: LitStr " AND Bimeliqu = "
  loc_D19D6D: ConcatStr
  loc_D19D6E: FStStrNoPop var_148
  loc_D19D71: FLdUI1
  loc_D19D75: CStrI2
  loc_D19D77: FStStrNoPop var_14C
  loc_D19D7A: ConcatStr
  loc_D19D7B: FStStrNoPop var_150
  loc_D19D7E: LitStr " AND CodiTili = "
  loc_D19D81: ConcatStr
  loc_D19D82: FStStrNoPop var_154
  loc_D19D85: FLdUI1
  loc_D19D89: CStrI2
  loc_D19D8B: FStStrNoPop var_158
  loc_D19D8E: ConcatStr
  loc_D19D8F: FStStrNoPop var_15C
  loc_D19D92: LitStr " AND NumeLiqu = "
  loc_D19D95: ConcatStr
  loc_D19D96: FStStrNoPop var_160
  loc_D19D99: FLdI2 NumeLiqu
  loc_D19D9C: CStrUI1
  loc_D19D9E: FStStrNoPop var_164
  loc_D19DA1: ConcatStr
  loc_D19DA2: FStStrNoPop var_168
  loc_D19DA5: LitStr " AND CodiCome = "
  loc_D19DA8: ConcatStr
  loc_D19DA9: FStStrNoPop var_16C
  loc_D19DAC: ILdRf CodiCome
  loc_D19DAF: CStrI4
  loc_D19DB1: FStStrNoPop var_170
  loc_D19DB4: ConcatStr
  loc_D19DB5: FStStrNoPop var_174
  loc_D19DB8: LitStr " AND CodiConc = '"
  loc_D19DBB: ConcatStr
  loc_D19DBC: FStStrNoPop var_684
  loc_D19DBF: ILdRf var_88
  loc_D19DC2: ConcatStr
  loc_D19DC3: FStStrNoPop var_688
  loc_D19DC6: LitStr "'"
  loc_D19DC9: ConcatStr
  loc_D19DCA: FStStrNoPop var_68C
  loc_D19DCD: LitStr " AND TipoVenc = "
  loc_D19DD0: ConcatStr
  loc_D19DD1: FStStrNoPop var_690
  loc_D19DD4: FLdUI1
  loc_D19DD8: CStrI2
  loc_D19DDA: FStStrNoPop var_694
  loc_D19DDD: ConcatStr
  loc_D19DDE: FStStrNoPop var_698
  loc_D19DE1: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLcde"
  loc_D19DE4: ConcatStr
  loc_D19DE5: FStStrNoPop var_69C
  loc_D19DE8: Call EjecutarRsCls1(from_stack_1v)
  loc_D19DED: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = "": var_698 = ""
  loc_D19E1A: FLdRfVar var_178
  loc_D19E1D: FLdPr Me
  loc_D19E20: MemLdPr global_60
  loc_D19E23:  = Me.RecordCount
  loc_D19E28: ILdRf var_178
  loc_D19E2B: LitI4 0
  loc_D19E30: GtI4
  loc_D19E31: BranchF loc_D1A214
  loc_D19E34: FLdPr Me
  loc_D19E37: MemLdPr global_60
  loc_D19E3A: Me.MoveFirst
  loc_D19E3F: FLdRfVar var_1A4
  loc_D19E42: FLdRfVar var_194
  loc_D19E45: LitVarStr var_190, "DecaLcde"
  loc_D19E4A: PopAdLdVar
  loc_D19E4B: FLdRfVar var_180
  loc_D19E4E: FLdPr Me
  loc_D19E51: MemLdPr global_64
  loc_D19E54:  = Me.Fields
  loc_D19E59: FLdPr var_180
  loc_D19E5C: from_stack_2 = Me.Item(from_stack_1)
  loc_D19E61: FLdPr var_194
  loc_D19E64:  = Me.Value
  loc_D19E69: LitI4 2
  loc_D19E6E: FLdRfVar var_1A4
  loc_D19E71: FnCDblVar
  loc_D19E73: FLdFPR8 arg_58
  loc_D19E76: SubR4
  loc_D19E77: CVarR8
  loc_D19E7B: FLdRfVar var_1D4
  loc_D19E7E: ImpAdCallFPR4  = Round(, )
  loc_D19E83: LitStr " UPDATE licodeta SET DecaLcde = DecaLcde - "
  loc_D19E86: LitI4 0
  loc_D19E8B: LitI4 -1
  loc_D19E90: LitI4 1
  loc_D19E95: LitStr "."
  loc_D19E98: LitStr ","
  loc_D19E9B: FLdRfVar var_1D4
  loc_D19E9E: CStrVarVal var_140
  loc_D19EA2: ImpAdCallI2 Replace(, , , , , )
  loc_D19EA7: FStStrNoPop var_144
  loc_D19EAA: ConcatStr
  loc_D19EAB: FStStrNoPop var_148
  loc_D19EAE: LitStr ", TotaLcde = ImpoLcde - DecaLcde "
  loc_D19EB1: ConcatStr
  loc_D19EB2: FStStrNoPop var_14C
  loc_D19EB5: LitStr " WHERE PeriLiqu = "
  loc_D19EB8: ConcatStr
  loc_D19EB9: CVarStr var_204
  loc_D19EBC: FLdRfVar var_1E4
  loc_D19EBF: FLdRfVar var_21C
  loc_D19EC2: LitVarStr var_1F4, "PeriLiqu"
  loc_D19EC7: PopAdLdVar
  loc_D19EC8: FLdRfVar var_208
  loc_D19ECB: FLdPr Me
  loc_D19ECE: MemLdPr global_60
  loc_D19ED1:  = Me.Fields
  loc_D19ED6: FLdPr var_208
  loc_D19ED9: from_stack_2 = Me.Item(from_stack_1)
  loc_D19EDE: FLdPr var_21C
  loc_D19EE1:  = Me.Value
  loc_D19EE6: FLdRfVar var_1E4
  loc_D19EE9: ConcatVar var_22C
  loc_D19EED: LitVarStr var_218, " AND Bimeliqu = "
  loc_D19EF2: ConcatVar var_23C
  loc_D19EF6: FLdRfVar var_25C
  loc_D19EF9: FLdRfVar var_274
  loc_D19EFC: LitVarStr var_24C, "BimeLiqu"
  loc_D19F01: PopAdLdVar
  loc_D19F02: FLdRfVar var_260
  loc_D19F05: FLdPr Me
  loc_D19F08: MemLdPr global_60
  loc_D19F0B:  = Me.Fields
  loc_D19F10: FLdPr var_260
  loc_D19F13: from_stack_2 = Me.Item(from_stack_1)
  loc_D19F18: FLdPr var_274
  loc_D19F1B:  = Me.Value
  loc_D19F20: FLdRfVar var_25C
  loc_D19F23: ConcatVar var_284
  loc_D19F27: LitVarStr var_270, " AND CodiTili = "
  loc_D19F2C: ConcatVar var_294
  loc_D19F30: FLdRfVar var_2B4
  loc_D19F33: FLdRfVar var_2CC
  loc_D19F36: LitVarStr var_2A4, "CodiTili"
  loc_D19F3B: PopAdLdVar
  loc_D19F3C: FLdRfVar var_2B8
  loc_D19F3F: FLdPr Me
  loc_D19F42: MemLdPr global_60
  loc_D19F45:  = Me.Fields
  loc_D19F4A: FLdPr var_2B8
  loc_D19F4D: from_stack_2 = Me.Item(from_stack_1)
  loc_D19F52: FLdPr var_2CC
  loc_D19F55:  = Me.Value
  loc_D19F5A: FLdRfVar var_2B4
  loc_D19F5D: ConcatVar var_2DC
  loc_D19F61: LitVarStr var_2C8, " AND NumeLiqu = "
  loc_D19F66: ConcatVar var_2EC
  loc_D19F6A: FLdRfVar var_30C
  loc_D19F6D: FLdRfVar var_324
  loc_D19F70: LitVarStr var_2FC, "NumeLiqu"
  loc_D19F75: PopAdLdVar
  loc_D19F76: FLdRfVar var_310
  loc_D19F79: FLdPr Me
  loc_D19F7C: MemLdPr global_60
  loc_D19F7F:  = Me.Fields
  loc_D19F84: FLdPr var_310
  loc_D19F87: from_stack_2 = Me.Item(from_stack_1)
  loc_D19F8C: FLdPr var_324
  loc_D19F8F:  = Me.Value
  loc_D19F94: FLdRfVar var_30C
  loc_D19F97: ConcatVar var_334
  loc_D19F9B: LitVarStr var_320, " AND CodiCome = "
  loc_D19FA0: ConcatVar var_344
  loc_D19FA4: FLdRfVar var_364
  loc_D19FA7: FLdRfVar var_3E0
  loc_D19FAA: LitVarStr var_354, "CodiCome"
  loc_D19FAF: PopAdLdVar
  loc_D19FB0: FLdRfVar var_3CC
  loc_D19FB3: FLdPr Me
  loc_D19FB6: MemLdPr global_60
  loc_D19FB9:  = Me.Fields
  loc_D19FBE: FLdPr var_3CC
  loc_D19FC1: from_stack_2 = Me.Item(from_stack_1)
  loc_D19FC6: FLdPr var_3E0
  loc_D19FC9:  = Me.Value
  loc_D19FCE: FLdRfVar var_364
  loc_D19FD1: ConcatVar var_384
  loc_D19FD5: LitVarStr var_374, " AND CodiConc = '"
  loc_D19FDA: ConcatVar var_3A4
  loc_D19FDE: FLdRfVar var_3C4
  loc_D19FE1: FLdRfVar var_438
  loc_D19FE4: LitVarStr var_394, "CodiConc"
  loc_D19FE9: PopAdLdVar
  loc_D19FEA: FLdRfVar var_424
  loc_D19FED: FLdPr Me
  loc_D19FF0: MemLdPr global_60
  loc_D19FF3:  = Me.Fields
  loc_D19FF8: FLdPr var_424
  loc_D19FFB: from_stack_2 = Me.Item(from_stack_1)
  loc_D1A000: FLdPr var_438
  loc_D1A003:  = Me.Value
  loc_D1A008: FLdRfVar var_3C4
  loc_D1A00B: ConcatVar var_3F0
  loc_D1A00F: LitVarStr var_3B4, "'"
  loc_D1A014: ConcatVar var_400
  loc_D1A018: LitVarStr var_3DC, " AND TipoVenc = "
  loc_D1A01D: ConcatVar var_420
  loc_D1A021: FLdRfVar var_448
  loc_D1A024: FLdRfVar var_490
  loc_D1A027: LitVarStr var_410, "TipoVenc"
  loc_D1A02C: PopAdLdVar
  loc_D1A02D: FLdRfVar var_47C
  loc_D1A030: FLdPr Me
  loc_D1A033: MemLdPr global_60
  loc_D1A036:  = Me.Fields
  loc_D1A03B: FLdPr var_47C
  loc_D1A03E: from_stack_2 = Me.Item(from_stack_1)
  loc_D1A043: FLdPr var_490
  loc_D1A046:  = Me.Value
  loc_D1A04B: FLdRfVar var_448
  loc_D1A04E: ConcatVar var_458
  loc_D1A052: LitVarStr var_434, " AND CodiRamo = "
  loc_D1A057: ConcatVar var_478
  loc_D1A05B: FLdRfVar var_4A0
  loc_D1A05E: FLdRfVar var_4E8
  loc_D1A061: LitVarStr var_468, "CodiRamo"
  loc_D1A066: PopAdLdVar
  loc_D1A067: FLdRfVar var_4D4
  loc_D1A06A: FLdPr Me
  loc_D1A06D: MemLdPr global_60
  loc_D1A070:  = Me.Fields
  loc_D1A075: FLdPr var_4D4
  loc_D1A078: from_stack_2 = Me.Item(from_stack_1)
  loc_D1A07D: FLdPr var_4E8
  loc_D1A080:  = Me.Value
  loc_D1A085: FLdRfVar var_4A0
  loc_D1A088: ConcatVar var_4B0
  loc_D1A08C: LitVarStr var_48C, " AND CodiRubr = "
  loc_D1A091: ConcatVar var_4D0
  loc_D1A095: FLdRfVar var_4F8
  loc_D1A098: FLdRfVar var_540
  loc_D1A09B: LitVarStr var_4C0, "CodiRubr"
  loc_D1A0A0: PopAdLdVar
  loc_D1A0A1: FLdRfVar var_52C
  loc_D1A0A4: FLdPr Me
  loc_D1A0A7: MemLdPr global_60
  loc_D1A0AA:  = Me.Fields
  loc_D1A0AF: FLdPr var_52C
  loc_D1A0B2: from_stack_2 = Me.Item(from_stack_1)
  loc_D1A0B7: FLdPr var_540
  loc_D1A0BA:  = Me.Value
  loc_D1A0BF: FLdRfVar var_4F8
  loc_D1A0C2: ConcatVar var_508
  loc_D1A0C6: LitVarStr var_4E4, " AND PeriOrde = "
  loc_D1A0CB: ConcatVar var_528
  loc_D1A0CF: FLdRfVar var_550
  loc_D1A0D2: FLdRfVar var_B08
  loc_D1A0D5: LitVarStr var_518, "PeriOrde"
  loc_D1A0DA: PopAdLdVar
  loc_D1A0DB: FLdRfVar var_B04
  loc_D1A0DE: FLdPr Me
  loc_D1A0E1: MemLdPr global_60
  loc_D1A0E4:  = Me.Fields
  loc_D1A0E9: FLdPr var_B04
  loc_D1A0EC: from_stack_2 = Me.Item(from_stack_1)
  loc_D1A0F1: FLdPr var_B08
  loc_D1A0F4:  = Me.Value
  loc_D1A0F9: FLdRfVar var_550
  loc_D1A0FC: ConcatVar var_560
  loc_D1A100: LitVarStr var_53C, " AND CodiSubr = "
  loc_D1A105: ConcatVar var_580
  loc_D1A109: FLdRfVar var_590
  loc_D1A10C: FLdRfVar var_B10
  loc_D1A10F: LitVarStr var_570, "CodiSubr"
  loc_D1A114: PopAdLdVar
  loc_D1A115: FLdRfVar var_B0C
  loc_D1A118: FLdPr Me
  loc_D1A11B: MemLdPr global_60
  loc_D1A11E:  = Me.Fields
  loc_D1A123: FLdPr var_B0C
  loc_D1A126: from_stack_2 = Me.Item(from_stack_1)
  loc_D1A12B: FLdPr var_B10
  loc_D1A12E:  = Me.Value
  loc_D1A133: FLdRfVar var_590
  loc_D1A136: ConcatVar var_5A0
  loc_D1A13A: LitVarStr var_5B0, " AND NumeLcde = "
  loc_D1A13F: ConcatVar var_5C0
  loc_D1A143: FLdRfVar var_5D0
  loc_D1A146: FLdRfVar var_B18
  loc_D1A149: LitVarStr var_5F0, "NumeLcde"
  loc_D1A14E: PopAdLdVar
  loc_D1A14F: FLdRfVar var_B14
  loc_D1A152: FLdPr Me
  loc_D1A155: MemLdPr global_60
  loc_D1A158:  = Me.Fields
  loc_D1A15D: FLdPr var_B14
  loc_D1A160: from_stack_2 = Me.Item(from_stack_1)
  loc_D1A165: FLdPr var_B18
  loc_D1A168:  = Me.Value
  loc_D1A16D: FLdRfVar var_5D0
  loc_D1A170: ConcatVar var_5E0
  loc_D1A174: CStrVarVal var_150
  loc_D1A178: Call EjecutarRsCls(from_stack_1v)
  loc_D1A17D: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_D1A18A: FFreeAd var_180 = "": var_194 = "": var_208 = "": var_21C = "": var_260 = "": var_274 = "": var_2B8 = "": var_2CC = "": var_310 = "": var_324 = "": var_3CC = "": var_3E0 = "": var_424 = "": var_438 = "": var_47C = "": var_490 = "": var_4D4 = "": var_4E8 = "": var_52C = "": var_540 = "": var_B04 = "": var_B08 = "": var_B0C = "": var_B10 = "": var_B14 = ""
  loc_D1A1C1: FFreeVar var_508 = "": var_528 = "": var_550 = "": var_560 = "": var_580 = "": var_590 = "": var_5A0 = "": var_5C0 = "": var_5D0 = "": var_5E0 = "": var_1A4 = "": var_1C4 = "": var_1D4 = "": var_204 = "": var_1E4 = "": var_22C = "": var_23C = "": var_25C = "": var_284 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_2EC = "": var_30C = "": var_334 = "": var_344 = "": var_364 = "": var_384 = "": var_3A4 = "": var_3C4 = "": var_3F0 = "": var_400 = "": var_420 = "": var_448 = "": var_458 = "": var_478 = "": var_4A0 = "": var_4B0 = "": var_4D0 = ""
  loc_D1A214: LitStr "COMMIT;"
  loc_D1A217: Call EjecutarRsCls(from_stack_1v)
  loc_D1A21C: ExitProcHresult
  loc_D1A21D: LitStr "ROLLBACK;"
  loc_D1A220: Call EjecutarRsCls(from_stack_1v)
  loc_D1A225: LitStr "Error cuando se quiere calcular la cuenta: "
  loc_D1A228: ILdRf CodiCome
  loc_D1A22B: CStrI4
  loc_D1A22D: FStStrNoPop var_140
  loc_D1A230: ConcatStr
  loc_D1A231: FStStrNoPop var_144
  loc_D1A234: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D1A239: FFreeStr var_140 = ""
  loc_D1A240: ExitProcHresult
End Sub

Public Sub Requery() '9E5D24
  'Data Table: 48DC88
  loc_9E5D00: LitI4 -1
  loc_9E5D05: FLdPr Me
  loc_9E5D08: MemLdPr RsFrm
  loc_9E5D0B: Me.Requery from_stack_1
  loc_9E5D10: LitVarStr var_94, "Primary"
  loc_9E5D15: PopAdLdVar
  loc_9E5D16: FLdPr Me
  loc_9E5D19: LateIdCall
  loc_9E5D21: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) 'A604E0
  'Data Table: 48DC88
  loc_A6047C: ILdRf sSelect
  loc_A6047F: FStStrCopy var_88
  loc_A60482: LitNothing
  loc_A60484: CastAd
  loc_A60487: FStAdFuncNoPop
  loc_A6048A: FLdPr Me
  loc_A6048D: MemStAd
  loc_A60491: FFree1Ad var_8C
  loc_A60494: New Recordset
  loc_A60498: FStAdFuncNoPop
  loc_A6049B: FLdPr Me
  loc_A6049E: MemStAd
  loc_A604A2: FFree1Ad var_8C
  loc_A604A5: LitI4 -1
  loc_A604AA: LitI4 3
  loc_A604AF: LitI4 3
  loc_A604B4: ImpAdLdI4 MemVar_D9301C
  loc_A604B7: CVarAd
  loc_A604BB: PopAdLdVar
  loc_A604BC: ILdRf var_88
  loc_A604BF: CVarStr var_9C
  loc_A604C2: PopAdLdVar
  loc_A604C3: FLdPr Me
  loc_A604C6: MemLdPr RsFrm
  loc_A604C9: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A604CE: LitVarStr var_9C, "Primary"
  loc_A604D3: PopAdLdVar
  loc_A604D4: FLdPr Me
  loc_A604D7: LateIdCall
  loc_A604DF: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A4D668
  'Data Table: 48DC88
  loc_A4D614: ILdRf sSelect
  loc_A4D617: FStStrCopy var_88
  loc_A4D61A: LitNothing
  loc_A4D61C: CastAd
  loc_A4D61F: FStAdFuncNoPop
  loc_A4D622: FLdPr Me
  loc_A4D625: MemStAd
  loc_A4D629: FFree1Ad var_8C
  loc_A4D62C: New Recordset
  loc_A4D630: FStAdFuncNoPop
  loc_A4D633: FLdPr Me
  loc_A4D636: MemStAd
  loc_A4D63A: FFree1Ad var_8C
  loc_A4D63D: LitI4 -1
  loc_A4D642: LitI4 3
  loc_A4D647: LitI4 3
  loc_A4D64C: ImpAdLdI4 MemVar_D9301C
  loc_A4D64F: CVarAd
  loc_A4D653: PopAdLdVar
  loc_A4D654: ILdRf var_88
  loc_A4D657: CVarStr var_9C
  loc_A4D65A: PopAdLdVar
  loc_A4D65B: FLdPr Me
  loc_A4D65E: MemLdPr global_56
  loc_A4D661: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4D666: ExitProcHresult
End Sub

Public Sub EjecutarRsCls1(sSelect) 'A4D4C4
  'Data Table: 48DC88
  loc_A4D470: ILdRf sSelect
  loc_A4D473: FStStrCopy var_88
  loc_A4D476: LitNothing
  loc_A4D478: CastAd
  loc_A4D47B: FStAdFuncNoPop
  loc_A4D47E: FLdPr Me
  loc_A4D481: MemStAd
  loc_A4D485: FFree1Ad var_8C
  loc_A4D488: New Recordset
  loc_A4D48C: FStAdFuncNoPop
  loc_A4D48F: FLdPr Me
  loc_A4D492: MemStAd
  loc_A4D496: FFree1Ad var_8C
  loc_A4D499: LitI4 -1
  loc_A4D49E: LitI4 3
  loc_A4D4A3: LitI4 3
  loc_A4D4A8: ImpAdLdI4 MemVar_D9301C
  loc_A4D4AB: CVarAd
  loc_A4D4AF: PopAdLdVar
  loc_A4D4B0: ILdRf var_88
  loc_A4D4B3: CVarStr var_9C
  loc_A4D4B6: PopAdLdVar
  loc_A4D4B7: FLdPr Me
  loc_A4D4BA: MemLdPr global_60
  loc_A4D4BD: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4D4C2: ExitProcHresult
End Sub

Public Sub EjecutarRsCls2(sSelect) 'A4D3AC
  'Data Table: 48DC88
  loc_A4D358: ILdRf sSelect
  loc_A4D35B: FStStrCopy var_88
  loc_A4D35E: LitNothing
  loc_A4D360: CastAd
  loc_A4D363: FStAdFuncNoPop
  loc_A4D366: FLdPr Me
  loc_A4D369: MemStAd
  loc_A4D36D: FFree1Ad var_8C
  loc_A4D370: New Recordset
  loc_A4D374: FStAdFuncNoPop
  loc_A4D377: FLdPr Me
  loc_A4D37A: MemStAd
  loc_A4D37E: FFree1Ad var_8C
  loc_A4D381: LitI4 -1
  loc_A4D386: LitI4 3
  loc_A4D38B: LitI4 3
  loc_A4D390: ImpAdLdI4 MemVar_D9301C
  loc_A4D393: CVarAd
  loc_A4D397: PopAdLdVar
  loc_A4D398: ILdRf var_88
  loc_A4D39B: CVarStr var_9C
  loc_A4D39E: PopAdLdVar
  loc_A4D39F: FLdPr Me
  loc_A4D3A2: MemLdPr global_64
  loc_A4D3A5: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4D3AA: ExitProcHresult
End Sub

Public Sub EjecutarRsCls3(sSelect) 'A4D294
  'Data Table: 48DC88
  loc_A4D240: ILdRf sSelect
  loc_A4D243: FStStrCopy var_88
  loc_A4D246: LitNothing
  loc_A4D248: CastAd
  loc_A4D24B: FStAdFuncNoPop
  loc_A4D24E: FLdPr Me
  loc_A4D251: MemStAd
  loc_A4D255: FFree1Ad var_8C
  loc_A4D258: New Recordset
  loc_A4D25C: FStAdFuncNoPop
  loc_A4D25F: FLdPr Me
  loc_A4D262: MemStAd
  loc_A4D266: FFree1Ad var_8C
  loc_A4D269: LitI4 -1
  loc_A4D26E: LitI4 3
  loc_A4D273: LitI4 3
  loc_A4D278: ImpAdLdI4 MemVar_D9301C
  loc_A4D27B: CVarAd
  loc_A4D27F: PopAdLdVar
  loc_A4D280: ILdRf var_88
  loc_A4D283: CVarStr var_9C
  loc_A4D286: PopAdLdVar
  loc_A4D287: FLdPr Me
  loc_A4D28A: MemLdPr global_68
  loc_A4D28D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4D292: ExitProcHresult
End Sub

Public Sub EjecutarRsCls4(sSelect) 'A4D17C
  'Data Table: 48DC88
  loc_A4D128: ILdRf sSelect
  loc_A4D12B: FStStrCopy var_88
  loc_A4D12E: LitNothing
  loc_A4D130: CastAd
  loc_A4D133: FStAdFuncNoPop
  loc_A4D136: FLdPr Me
  loc_A4D139: MemStAd
  loc_A4D13D: FFree1Ad var_8C
  loc_A4D140: New Recordset
  loc_A4D144: FStAdFuncNoPop
  loc_A4D147: FLdPr Me
  loc_A4D14A: MemStAd
  loc_A4D14E: FFree1Ad var_8C
  loc_A4D151: LitI4 -1
  loc_A4D156: LitI4 3
  loc_A4D15B: LitI4 3
  loc_A4D160: ImpAdLdI4 MemVar_D9301C
  loc_A4D163: CVarAd
  loc_A4D167: PopAdLdVar
  loc_A4D168: ILdRf var_88
  loc_A4D16B: CVarStr var_9C
  loc_A4D16E: PopAdLdVar
  loc_A4D16F: FLdPr Me
  loc_A4D172: MemLdPr global_72
  loc_A4D175: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4D17A: ExitProcHresult
  loc_A4D17B: FLdPrThis
End Sub

Public Sub EjecutarRsCls5(sSelect) 'A4D0F0
  'Data Table: 48DC88
  loc_A4D09C: ILdRf sSelect
  loc_A4D09F: FStStrCopy var_88
  loc_A4D0A2: LitNothing
  loc_A4D0A4: CastAd
  loc_A4D0A7: FStAdFuncNoPop
  loc_A4D0AA: FLdPr Me
  loc_A4D0AD: MemStAd
  loc_A4D0B1: FFree1Ad var_8C
  loc_A4D0B4: New Recordset
  loc_A4D0B8: FStAdFuncNoPop
  loc_A4D0BB: FLdPr Me
  loc_A4D0BE: MemStAd
  loc_A4D0C2: FFree1Ad var_8C
  loc_A4D0C5: LitI4 -1
  loc_A4D0CA: LitI4 3
  loc_A4D0CF: LitI4 3
  loc_A4D0D4: ImpAdLdI4 MemVar_D9301C
  loc_A4D0D7: CVarAd
  loc_A4D0DB: PopAdLdVar
  loc_A4D0DC: ILdRf var_88
  loc_A4D0DF: CVarStr var_9C
  loc_A4D0E2: PopAdLdVar
  loc_A4D0E3: FLdPr Me
  loc_A4D0E6: MemLdPr global_76
  loc_A4D0E9: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4D0EE: ExitProcHresult
End Sub

Public Property Get DataSource() '9F0BBC
  'Data Table: 48DC88
  loc_9F0B98: ZeroRetVal
  loc_9F0B9A: FLdRfVar var_8C
  loc_9F0B9D: FLdPr Me
  loc_9F0BA0: MemLdPr RsFrm
  loc_9F0BA3:  = Me.DataSource
  loc_9F0BA8: ILdRf var_8C
  loc_9F0BAB: CastAd
  loc_9F0BAE: FStAdFunc var_88
  loc_9F0BB1: FFree1Ad var_8C
  loc_9F0BB4: ExitProcCbHresult
  loc_9F0BBA: DOC
End Sub

Public Property Get PeriLiqu() 'A27BA4
  'Data Table: 48DC88
  loc_A27B60: FLdRfVar var_B0
  loc_A27B63: FLdRfVar var_A0
  loc_A27B66: LitVarStr var_9C, "PeriLiqu"
  loc_A27B6B: PopAdLdVar
  loc_A27B6C: FLdRfVar var_8C
  loc_A27B6F: FLdPr Me
  loc_A27B72: MemLdPr RsFrm
  loc_A27B75:  = Me.Fields
  loc_A27B7A: FLdPr var_8C
  loc_A27B7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A27B82: FLdPr var_A0
  loc_A27B85:  = Me.Value
  loc_A27B8A: FLdRfVar var_B0
  loc_A27B8D: CI2Var
  loc_A27B8E: FStI2 var_86
  loc_A27B91: FFreeAd var_8C = ""
  loc_A27B98: FFree1Var var_B0 = ""
  loc_A27B9B: ExitProcCbHresult
End Sub

Public Property Get BimeLiqu() 'A27B24
  'Data Table: 48DC88
  loc_A27AE0: FLdRfVar var_B0
  loc_A27AE3: FLdRfVar var_A0
  loc_A27AE6: LitVarStr var_9C, "BimeLiqu"
  loc_A27AEB: PopAdLdVar
  loc_A27AEC: FLdRfVar var_8C
  loc_A27AEF: FLdPr Me
  loc_A27AF2: MemLdPr RsFrm
  loc_A27AF5:  = Me.Fields
  loc_A27AFA: FLdPr var_8C
  loc_A27AFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A27B02: FLdPr var_A0
  loc_A27B05:  = Me.Value
  loc_A27B0A: FLdRfVar var_B0
  loc_A27B0D: CUI1Var
  loc_A27B0F: FStUI1 var_86
  loc_A27B13: FFreeAd var_8C = ""
  loc_A27B1A: FFree1Var var_B0 = ""
  loc_A27B1D: ExitProcCbHresult
End Sub

Public Property Get CodiTili() 'A27924
  'Data Table: 48DC88
  loc_A278E0: FLdRfVar var_B0
  loc_A278E3: FLdRfVar var_A0
  loc_A278E6: LitVarStr var_9C, "CodiTili"
  loc_A278EB: PopAdLdVar
  loc_A278EC: FLdRfVar var_8C
  loc_A278EF: FLdPr Me
  loc_A278F2: MemLdPr RsFrm
  loc_A278F5:  = Me.Fields
  loc_A278FA: FLdPr var_8C
  loc_A278FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A27902: FLdPr var_A0
  loc_A27905:  = Me.Value
  loc_A2790A: FLdRfVar var_B0
  loc_A2790D: CUI1Var
  loc_A2790F: FStUI1 var_86
  loc_A27913: FFreeAd var_8C = ""
  loc_A2791A: FFree1Var var_B0 = ""
  loc_A2791D: ExitProcCbHresult
  loc_A27923: CCyI2
End Sub

Public Property Get NumeLiqu() 'A27824
  'Data Table: 48DC88
  loc_A277E0: FLdRfVar var_B0
  loc_A277E3: FLdRfVar var_A0
  loc_A277E6: LitVarStr var_9C, "NumeLiqu"
  loc_A277EB: PopAdLdVar
  loc_A277EC: FLdRfVar var_8C
  loc_A277EF: FLdPr Me
  loc_A277F2: MemLdPr RsFrm
  loc_A277F5:  = Me.Fields
  loc_A277FA: FLdPr var_8C
  loc_A277FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A27802: FLdPr var_A0
  loc_A27805:  = Me.Value
  loc_A2780A: FLdRfVar var_B0
  loc_A2780D: CI2Var
  loc_A2780E: FStI2 var_86
  loc_A27811: FFreeAd var_8C = ""
  loc_A27818: FFree1Var var_B0 = ""
  loc_A2781B: ExitProcCbHresult
  loc_A27821: CR4R8
End Sub

Public Property Get CodiCome() 'A27724
  'Data Table: 48DC88
  loc_A276E0: FLdRfVar var_B0
  loc_A276E3: FLdRfVar var_A0
  loc_A276E6: LitVarStr var_9C, "CodiCome"
  loc_A276EB: PopAdLdVar
  loc_A276EC: FLdRfVar var_8C
  loc_A276EF: FLdPr Me
  loc_A276F2: MemLdPr RsFrm
  loc_A276F5:  = Me.Fields
  loc_A276FA: FLdPr var_8C
  loc_A276FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A27702: FLdPr var_A0
  loc_A27705:  = Me.Value
  loc_A2770A: FLdRfVar var_B0
  loc_A2770D: CI4Var
  loc_A2770F: FStR4 var_88
  loc_A27712: FFreeAd var_8C = ""
  loc_A27719: FFree1Var var_B0 = ""
  loc_A2771C: ExitProcCbHresult
End Sub

Public Property Get CodiConc() 'A3AFB4
  'Data Table: 48DC88
  loc_A3AF70: ZeroRetVal
  loc_A3AF72: FLdRfVar var_B0
  loc_A3AF75: FLdRfVar var_A0
  loc_A3AF78: LitVarStr var_9C, "CodiConc"
  loc_A3AF7D: PopAdLdVar
  loc_A3AF7E: FLdRfVar var_8C
  loc_A3AF81: FLdPr Me
  loc_A3AF84: MemLdPr RsFrm
  loc_A3AF87:  = Me.Fields
  loc_A3AF8C: FLdPr var_8C
  loc_A3AF8F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3AF94: FLdPr var_A0
  loc_A3AF97:  = Me.Value
  loc_A3AF9C: FLdRfVar var_B0
  loc_A3AF9F: CStrVarTmp
  loc_A3AFA0: FStStr var_88
  loc_A3AFA3: FFreeAd var_8C = ""
  loc_A3AFAA: FFree1Var var_B0 = ""
  loc_A3AFAD: ExitProcCbHresult
End Sub

Public Property Get TipoVenc() 'A276A4
  'Data Table: 48DC88
  loc_A27660: FLdRfVar var_B0
  loc_A27663: FLdRfVar var_A0
  loc_A27666: LitVarStr var_9C, "TipoVenc"
  loc_A2766B: PopAdLdVar
  loc_A2766C: FLdRfVar var_8C
  loc_A2766F: FLdPr Me
  loc_A27672: MemLdPr RsFrm
  loc_A27675:  = Me.Fields
  loc_A2767A: FLdPr var_8C
  loc_A2767D: from_stack_2 = Me.Item(from_stack_1)
  loc_A27682: FLdPr var_A0
  loc_A27685:  = Me.Value
  loc_A2768A: FLdRfVar var_B0
  loc_A2768D: CUI1Var
  loc_A2768F: FStUI1 var_86
  loc_A27693: FFreeAd var_8C = ""
  loc_A2769A: FFree1Var var_B0 = ""
  loc_A2769D: ExitProcCbHresult
End Sub

Public Property Get OrdeLico() 'A27624
  'Data Table: 48DC88
  loc_A275E0: FLdRfVar var_B0
  loc_A275E3: FLdRfVar var_A0
  loc_A275E6: LitVarStr var_9C, "OrdeLico"
  loc_A275EB: PopAdLdVar
  loc_A275EC: FLdRfVar var_8C
  loc_A275EF: FLdPr Me
  loc_A275F2: MemLdPr RsFrm
  loc_A275F5:  = Me.Fields
  loc_A275FA: FLdPr var_8C
  loc_A275FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A27602: FLdPr var_A0
  loc_A27605:  = Me.Value
  loc_A2760A: FLdRfVar var_B0
  loc_A2760D: CI4Var
  loc_A2760F: FStR4 var_88
  loc_A27612: FFreeAd var_8C = ""
  loc_A27619: FFree1Var var_B0 = ""
  loc_A2761C: ExitProcCbHresult
End Sub

Public Property Get ActuLico() 'A3B1C4
  'Data Table: 48DC88
  loc_A3B180: ZeroRetVal
  loc_A3B182: FLdRfVar var_B0
  loc_A3B185: FLdRfVar var_A0
  loc_A3B188: LitVarStr var_9C, "ActuLico"
  loc_A3B18D: PopAdLdVar
  loc_A3B18E: FLdRfVar var_8C
  loc_A3B191: FLdPr Me
  loc_A3B194: MemLdPr RsFrm
  loc_A3B197:  = Me.Fields
  loc_A3B19C: FLdPr var_8C
  loc_A3B19F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3B1A4: FLdPr var_A0
  loc_A3B1A7:  = Me.Value
  loc_A3B1AC: FLdRfVar var_B0
  loc_A3B1AF: CStrVarTmp
  loc_A3B1B0: FStStr var_88
  loc_A3B1B3: FFreeAd var_8C = ""
  loc_A3B1BA: FFree1Var var_B0 = ""
  loc_A3B1BD: ExitProcCbHresult
  loc_A3B1C3: NeI4
End Sub

Public Property Get TipoLico() 'A3B2CC
  'Data Table: 48DC88
  loc_A3B288: ZeroRetVal
  loc_A3B28A: FLdRfVar var_B0
  loc_A3B28D: FLdRfVar var_A0
  loc_A3B290: LitVarStr var_9C, "TipoLico"
  loc_A3B295: PopAdLdVar
  loc_A3B296: FLdRfVar var_8C
  loc_A3B299: FLdPr Me
  loc_A3B29C: MemLdPr RsFrm
  loc_A3B29F:  = Me.Fields
  loc_A3B2A4: FLdPr var_8C
  loc_A3B2A7: from_stack_2 = Me.Item(from_stack_1)
  loc_A3B2AC: FLdPr var_A0
  loc_A3B2AF:  = Me.Value
  loc_A3B2B4: FLdRfVar var_B0
  loc_A3B2B7: CStrVarTmp
  loc_A3B2B8: FStStr var_88
  loc_A3B2BB: FFreeAd var_8C = ""
  loc_A3B2C2: FFree1Var var_B0 = ""
  loc_A3B2C5: ExitProcCbHresult
End Sub

Public Property Get FealLico() 'A3B350
  'Data Table: 48DC88
  loc_A3B30C: ZeroRetVal
  loc_A3B30E: FLdRfVar var_B0
  loc_A3B311: FLdRfVar var_A0
  loc_A3B314: LitVarStr var_9C, "FealLico"
  loc_A3B319: PopAdLdVar
  loc_A3B31A: FLdRfVar var_8C
  loc_A3B31D: FLdPr Me
  loc_A3B320: MemLdPr RsFrm
  loc_A3B323:  = Me.Fields
  loc_A3B328: FLdPr var_8C
  loc_A3B32B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3B330: FLdPr var_A0
  loc_A3B333:  = Me.Value
  loc_A3B338: FLdRfVar var_B0
  loc_A3B33B: CStrVarTmp
  loc_A3B33C: FStStr var_88
  loc_A3B33F: FFreeAd var_8C = ""
  loc_A3B346: FFree1Var var_B0 = ""
  loc_A3B349: ExitProcCbHresult
End Sub

Public Property Get FeveLico() 'A3B6EC
  'Data Table: 48DC88
  loc_A3B6A8: ZeroRetVal
  loc_A3B6AA: FLdRfVar var_B0
  loc_A3B6AD: FLdRfVar var_A0
  loc_A3B6B0: LitVarStr var_9C, "FeveLico"
  loc_A3B6B5: PopAdLdVar
  loc_A3B6B6: FLdRfVar var_8C
  loc_A3B6B9: FLdPr Me
  loc_A3B6BC: MemLdPr RsFrm
  loc_A3B6BF:  = Me.Fields
  loc_A3B6C4: FLdPr var_8C
  loc_A3B6C7: from_stack_2 = Me.Item(from_stack_1)
  loc_A3B6CC: FLdPr var_A0
  loc_A3B6CF:  = Me.Value
  loc_A3B6D4: FLdRfVar var_B0
  loc_A3B6D7: CStrVarTmp
  loc_A3B6D8: FStStr var_88
  loc_A3B6DB: FFreeAd var_8C = ""
  loc_A3B6E2: FFree1Var var_B0 = ""
  loc_A3B6E5: ExitProcCbHresult
End Sub

Public Property Get DeudLico() 'A274A4
  'Data Table: 48DC88
  loc_A27460: FLdRfVar var_B4
  loc_A27463: FLdRfVar var_A4
  loc_A27466: LitVarStr var_A0, "DeudLico"
  loc_A2746B: PopAdLdVar
  loc_A2746C: FLdRfVar var_90
  loc_A2746F: FLdPr Me
  loc_A27472: MemLdPr RsFrm
  loc_A27475:  = Me.Fields
  loc_A2747A: FLdPr var_90
  loc_A2747D: from_stack_2 = Me.Item(from_stack_1)
  loc_A27482: FLdPr var_A4
  loc_A27485:  = Me.Value
  loc_A2748A: FLdRfVar var_B4
  loc_A2748D: CR4Var
  loc_A2748E: FStFPR8 var_8C
  loc_A27491: FFreeAd var_90 = ""
  loc_A27498: FFree1Var var_B4 = ""
  loc_A2749B: ExitProcCbHresult
End Sub

Public Property Get ImpoLico() 'A2A1A4
  'Data Table: 48DC88
  loc_A2A160: FLdRfVar var_B4
  loc_A2A163: FLdRfVar var_A4
  loc_A2A166: LitVarStr var_A0, "ImpoLico"
  loc_A2A16B: PopAdLdVar
  loc_A2A16C: FLdRfVar var_90
  loc_A2A16F: FLdPr Me
  loc_A2A172: MemLdPr RsFrm
  loc_A2A175:  = Me.Fields
  loc_A2A17A: FLdPr var_90
  loc_A2A17D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A182: FLdPr var_A4
  loc_A2A185:  = Me.Value
  loc_A2A18A: FLdRfVar var_B4
  loc_A2A18D: CR4Var
  loc_A2A18E: FStFPR8 var_8C
  loc_A2A191: FFreeAd var_90 = ""
  loc_A2A198: FFree1Var var_B4 = ""
  loc_A2A19B: ExitProcCbHresult
End Sub

Public Property Get CrafLico() 'A2A0A4
  'Data Table: 48DC88
  loc_A2A060: FLdRfVar var_B4
  loc_A2A063: FLdRfVar var_A4
  loc_A2A066: LitVarStr var_A0, "CrafLico"
  loc_A2A06B: PopAdLdVar
  loc_A2A06C: FLdRfVar var_90
  loc_A2A06F: FLdPr Me
  loc_A2A072: MemLdPr RsFrm
  loc_A2A075:  = Me.Fields
  loc_A2A07A: FLdPr var_90
  loc_A2A07D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A082: FLdPr var_A4
  loc_A2A085:  = Me.Value
  loc_A2A08A: FLdRfVar var_B4
  loc_A2A08D: CR4Var
  loc_A2A08E: FStFPR8 var_8C
  loc_A2A091: FFreeAd var_90 = ""
  loc_A2A098: FFree1Var var_B4 = ""
  loc_A2A09B: ExitProcCbHresult
End Sub

Public Property Get ExenLico() 'A29DA4
  'Data Table: 48DC88
  loc_A29D60: FLdRfVar var_B4
  loc_A29D63: FLdRfVar var_A4
  loc_A29D66: LitVarStr var_A0, "ExenLico"
  loc_A29D6B: PopAdLdVar
  loc_A29D6C: FLdRfVar var_90
  loc_A29D6F: FLdPr Me
  loc_A29D72: MemLdPr RsFrm
  loc_A29D75:  = Me.Fields
  loc_A29D7A: FLdPr var_90
  loc_A29D7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A29D82: FLdPr var_A4
  loc_A29D85:  = Me.Value
  loc_A29D8A: FLdRfVar var_B4
  loc_A29D8D: CR4Var
  loc_A29D8E: FStFPR8 var_8C
  loc_A29D91: FFreeAd var_90 = ""
  loc_A29D98: FFree1Var var_B4 = ""
  loc_A29D9B: ExitProcCbHresult
  loc_A29DA1: SetLastSystemError
End Sub

Public Property Get DescLico() 'A29C24
  'Data Table: 48DC88
  loc_A29BE0: FLdRfVar var_B4
  loc_A29BE3: FLdRfVar var_A4
  loc_A29BE6: LitVarStr var_A0, "DescLico"
  loc_A29BEB: PopAdLdVar
  loc_A29BEC: FLdRfVar var_90
  loc_A29BEF: FLdPr Me
  loc_A29BF2: MemLdPr RsFrm
  loc_A29BF5:  = Me.Fields
  loc_A29BFA: FLdPr var_90
  loc_A29BFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29C02: FLdPr var_A4
  loc_A29C05:  = Me.Value
  loc_A29C0A: FLdRfVar var_B4
  loc_A29C0D: CR4Var
  loc_A29C0E: FStFPR8 var_8C
  loc_A29C11: FFreeAd var_90 = ""
  loc_A29C18: FFree1Var var_B4 = ""
  loc_A29C1B: ExitProcCbHresult
  loc_A29C21: CStr2Ansi
End Sub

Public Property Get GastLico() 'A298A4
  'Data Table: 48DC88
  loc_A29860: FLdRfVar var_B4
  loc_A29863: FLdRfVar var_A4
  loc_A29866: LitVarStr var_A0, "GastLico"
  loc_A2986B: PopAdLdVar
  loc_A2986C: FLdRfVar var_90
  loc_A2986F: FLdPr Me
  loc_A29872: MemLdPr RsFrm
  loc_A29875:  = Me.Fields
  loc_A2987A: FLdPr var_90
  loc_A2987D: from_stack_2 = Me.Item(from_stack_1)
  loc_A29882: FLdPr var_A4
  loc_A29885:  = Me.Value
  loc_A2988A: FLdRfVar var_B4
  loc_A2988D: CR4Var
  loc_A2988E: FStFPR8 var_8C
  loc_A29891: FFreeAd var_90 = ""
  loc_A29898: FFree1Var var_B4 = ""
  loc_A2989B: ExitProcCbHresult
End Sub

Public Property Get TotaLico() 'A292A4
  'Data Table: 48DC88
  loc_A29260: FLdRfVar var_B4
  loc_A29263: FLdRfVar var_A4
  loc_A29266: LitVarStr var_A0, "TotaLico"
  loc_A2926B: PopAdLdVar
  loc_A2926C: FLdRfVar var_90
  loc_A2926F: FLdPr Me
  loc_A29272: MemLdPr RsFrm
  loc_A29275:  = Me.Fields
  loc_A2927A: FLdPr var_90
  loc_A2927D: from_stack_2 = Me.Item(from_stack_1)
  loc_A29282: FLdPr var_A4
  loc_A29285:  = Me.Value
  loc_A2928A: FLdRfVar var_B4
  loc_A2928D: CR4Var
  loc_A2928E: FStFPR8 var_8C
  loc_A29291: FFreeAd var_90 = ""
  loc_A29298: FFree1Var var_B4 = ""
  loc_A2929B: ExitProcCbHresult
  loc_A292A1: LitI2_Byte &HD
  loc_A292A3: CStr2Ansi
End Sub

Public Property Get CucuPers() 'A3B770
  'Data Table: 48DC88
  loc_A3B72C: ZeroRetVal
  loc_A3B72E: FLdRfVar var_B0
  loc_A3B731: FLdRfVar var_A0
  loc_A3B734: LitVarStr var_9C, "CucuPers"
  loc_A3B739: PopAdLdVar
  loc_A3B73A: FLdRfVar var_8C
  loc_A3B73D: FLdPr Me
  loc_A3B740: MemLdPr RsFrm
  loc_A3B743:  = Me.Fields
  loc_A3B748: FLdPr var_8C
  loc_A3B74B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3B750: FLdPr var_A0
  loc_A3B753:  = Me.Value
  loc_A3B758: FLdRfVar var_B0
  loc_A3B75B: CStrVarTmp
  loc_A3B75C: FStStr var_88
  loc_A3B75F: FFreeAd var_8C = ""
  loc_A3B766: FFree1Var var_B0 = ""
  loc_A3B769: ExitProcCbHresult
End Sub

Public Property Get CodiCall() 'A287A4
  'Data Table: 48DC88
  loc_A28760: FLdRfVar var_B0
  loc_A28763: FLdRfVar var_A0
  loc_A28766: LitVarStr var_9C, "CodiCall"
  loc_A2876B: PopAdLdVar
  loc_A2876C: FLdRfVar var_8C
  loc_A2876F: FLdPr Me
  loc_A28772: MemLdPr RsFrm
  loc_A28775:  = Me.Fields
  loc_A2877A: FLdPr var_8C
  loc_A2877D: from_stack_2 = Me.Item(from_stack_1)
  loc_A28782: FLdPr var_A0
  loc_A28785:  = Me.Value
  loc_A2878A: FLdRfVar var_B0
  loc_A2878D: CI2Var
  loc_A2878E: FStI2 var_86
  loc_A28791: FFreeAd var_8C = ""
  loc_A28798: FFree1Var var_B0 = ""
  loc_A2879B: ExitProcCbHresult
  loc_A287A1: MemLdRfVar from_stack_1.global_10752
End Sub

Public Property Get NucaLico() 'A272A4
  'Data Table: 48DC88
  loc_A27260: FLdRfVar var_B0
  loc_A27263: FLdRfVar var_A0
  loc_A27266: LitVarStr var_9C, "NucaLico"
  loc_A2726B: PopAdLdVar
  loc_A2726C: FLdRfVar var_8C
  loc_A2726F: FLdPr Me
  loc_A27272: MemLdPr RsFrm
  loc_A27275:  = Me.Fields
  loc_A2727A: FLdPr var_8C
  loc_A2727D: from_stack_2 = Me.Item(from_stack_1)
  loc_A27282: FLdPr var_A0
  loc_A27285:  = Me.Value
  loc_A2728A: FLdRfVar var_B0
  loc_A2728D: CI4Var
  loc_A2728F: FStR4 var_88
  loc_A27292: FFreeAd var_8C = ""
  loc_A27299: FFree1Var var_B0 = ""
  loc_A2729C: ExitProcCbHresult
End Sub

Public Property Get CodiBarr() 'A268A4
  'Data Table: 48DC88
  loc_A26860: FLdRfVar var_B0
  loc_A26863: FLdRfVar var_A0
  loc_A26866: LitVarStr var_9C, "CodiBarr"
  loc_A2686B: PopAdLdVar
  loc_A2686C: FLdRfVar var_8C
  loc_A2686F: FLdPr Me
  loc_A26872: MemLdPr RsFrm
  loc_A26875:  = Me.Fields
  loc_A2687A: FLdPr var_8C
  loc_A2687D: from_stack_2 = Me.Item(from_stack_1)
  loc_A26882: FLdPr var_A0
  loc_A26885:  = Me.Value
  loc_A2688A: FLdRfVar var_B0
  loc_A2688D: CI2Var
  loc_A2688E: FStI2 var_86
  loc_A26891: FFreeAd var_8C = ""
  loc_A26898: FFree1Var var_B0 = ""
  loc_A2689B: ExitProcCbHresult
End Sub

Public Property Get ManzLico() 'A3B878
  'Data Table: 48DC88
  loc_A3B834: ZeroRetVal
  loc_A3B836: FLdRfVar var_B0
  loc_A3B839: FLdRfVar var_A0
  loc_A3B83C: LitVarStr var_9C, "ManzLico"
  loc_A3B841: PopAdLdVar
  loc_A3B842: FLdRfVar var_8C
  loc_A3B845: FLdPr Me
  loc_A3B848: MemLdPr RsFrm
  loc_A3B84B:  = Me.Fields
  loc_A3B850: FLdPr var_8C
  loc_A3B853: from_stack_2 = Me.Item(from_stack_1)
  loc_A3B858: FLdPr var_A0
  loc_A3B85B:  = Me.Value
  loc_A3B860: FLdRfVar var_B0
  loc_A3B863: CStrVarTmp
  loc_A3B864: FStStr var_88
  loc_A3B867: FFreeAd var_8C = ""
  loc_A3B86E: FFree1Var var_B0 = ""
  loc_A3B871: ExitProcCbHresult
End Sub

Public Property Get CasaLico() 'A3B980
  'Data Table: 48DC88
  loc_A3B93C: ZeroRetVal
  loc_A3B93E: FLdRfVar var_B0
  loc_A3B941: FLdRfVar var_A0
  loc_A3B944: LitVarStr var_9C, "CasaLico"
  loc_A3B949: PopAdLdVar
  loc_A3B94A: FLdRfVar var_8C
  loc_A3B94D: FLdPr Me
  loc_A3B950: MemLdPr RsFrm
  loc_A3B953:  = Me.Fields
  loc_A3B958: FLdPr var_8C
  loc_A3B95B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3B960: FLdPr var_A0
  loc_A3B963:  = Me.Value
  loc_A3B968: FLdRfVar var_B0
  loc_A3B96B: CStrVarTmp
  loc_A3B96C: FStStr var_88
  loc_A3B96F: FFreeAd var_8C = ""
  loc_A3B976: FFree1Var var_B0 = ""
  loc_A3B979: ExitProcCbHresult
End Sub

Public Property Get UbicLico() 'A3BA04
  'Data Table: 48DC88
  loc_A3B9C0: ZeroRetVal
  loc_A3B9C2: FLdRfVar var_B0
  loc_A3B9C5: FLdRfVar var_A0
  loc_A3B9C8: LitVarStr var_9C, "UbicLico"
  loc_A3B9CD: PopAdLdVar
  loc_A3B9CE: FLdRfVar var_8C
  loc_A3B9D1: FLdPr Me
  loc_A3B9D4: MemLdPr RsFrm
  loc_A3B9D7:  = Me.Fields
  loc_A3B9DC: FLdPr var_8C
  loc_A3B9DF: from_stack_2 = Me.Item(from_stack_1)
  loc_A3B9E4: FLdPr var_A0
  loc_A3B9E7:  = Me.Value
  loc_A3B9EC: FLdRfVar var_B0
  loc_A3B9EF: CStrVarTmp
  loc_A3B9F0: FStStr var_88
  loc_A3B9F3: FFreeAd var_8C = ""
  loc_A3B9FA: FFree1Var var_B0 = ""
  loc_A3B9FD: ExitProcCbHresult
End Sub

Public Property Get CodiLoca() 'A267A4
  'Data Table: 48DC88
  loc_A26760: FLdRfVar var_B0
  loc_A26763: FLdRfVar var_A0
  loc_A26766: LitVarStr var_9C, "CodiLoca"
  loc_A2676B: PopAdLdVar
  loc_A2676C: FLdRfVar var_8C
  loc_A2676F: FLdPr Me
  loc_A26772: MemLdPr RsFrm
  loc_A26775:  = Me.Fields
  loc_A2677A: FLdPr var_8C
  loc_A2677D: from_stack_2 = Me.Item(from_stack_1)
  loc_A26782: FLdPr var_A0
  loc_A26785:  = Me.Value
  loc_A2678A: FLdRfVar var_B0
  loc_A2678D: CI2Var
  loc_A2678E: FStI2 var_86
  loc_A26791: FFreeAd var_8C = ""
  loc_A26798: FFree1Var var_B0 = ""
  loc_A2679B: ExitProcCbHresult
  loc_A267A1: BranchTVar
End Sub

Public Property Get PeriBole() 'A266A4
  'Data Table: 48DC88
  loc_A26660: FLdRfVar var_B0
  loc_A26663: FLdRfVar var_A0
  loc_A26666: LitVarStr var_9C, "PeriBole"
  loc_A2666B: PopAdLdVar
  loc_A2666C: FLdRfVar var_8C
  loc_A2666F: FLdPr Me
  loc_A26672: MemLdPr RsFrm
  loc_A26675:  = Me.Fields
  loc_A2667A: FLdPr var_8C
  loc_A2667D: from_stack_2 = Me.Item(from_stack_1)
  loc_A26682: FLdPr var_A0
  loc_A26685:  = Me.Value
  loc_A2668A: FLdRfVar var_B0
  loc_A2668D: CI2Var
  loc_A2668E: FStI2 var_86
  loc_A26691: FFreeAd var_8C = ""
  loc_A26698: FFree1Var var_B0 = ""
  loc_A2669B: ExitProcCbHresult
End Sub

Public Property Get NumeBole() 'A26624
  'Data Table: 48DC88
  loc_A265E0: FLdRfVar var_B0
  loc_A265E3: FLdRfVar var_A0
  loc_A265E6: LitVarStr var_9C, "NumeBole"
  loc_A265EB: PopAdLdVar
  loc_A265EC: FLdRfVar var_8C
  loc_A265EF: FLdPr Me
  loc_A265F2: MemLdPr RsFrm
  loc_A265F5:  = Me.Fields
  loc_A265FA: FLdPr var_8C
  loc_A265FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A26602: FLdPr var_A0
  loc_A26605:  = Me.Value
  loc_A2660A: FLdRfVar var_B0
  loc_A2660D: CI4Var
  loc_A2660F: FStR4 var_88
  loc_A26612: FFreeAd var_8C = ""
  loc_A26619: FFree1Var var_B0 = ""
  loc_A2661C: ExitProcCbHresult
  loc_A26622: EqI2
End Sub

Public Property Get PeriOrde() 'A265A4
  'Data Table: 48DC88
  loc_A26560: FLdRfVar var_B0
  loc_A26563: FLdRfVar var_A0
  loc_A26566: LitVarStr var_9C, "PeriOrde"
  loc_A2656B: PopAdLdVar
  loc_A2656C: FLdRfVar var_8C
  loc_A2656F: FLdPr Me
  loc_A26572: MemLdPr RsFrm
  loc_A26575:  = Me.Fields
  loc_A2657A: FLdPr var_8C
  loc_A2657D: from_stack_2 = Me.Item(from_stack_1)
  loc_A26582: FLdPr var_A0
  loc_A26585:  = Me.Value
  loc_A2658A: FLdRfVar var_B0
  loc_A2658D: CI2Var
  loc_A2658E: FStI2 var_86
  loc_A26591: FFreeAd var_8C = ""
  loc_A26598: FFree1Var var_B0 = ""
  loc_A2659B: ExitProcCbHresult
  loc_A265A1: ILdRf arg_35FE
End Sub

Public Property Get CodiSubr(arg_24) 'A1D0C8
  'Data Table: 48DC88
  loc_A1D090: ZeroRetValVar
  loc_A1D092: FLdRfVar var_AC
  loc_A1D095: LitVarStr var_A8, "CodiSubr"
  loc_A1D09A: PopAdLdVar
  loc_A1D09B: FLdRfVar var_98
  loc_A1D09E: FLdPr Me
  loc_A1D0A1: MemLdPr RsFrm
  loc_A1D0A4:  = Me.Fields
  loc_A1D0A9: FLdPr var_98
  loc_A1D0AC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1D0B1: FLdZeroAd var_AC
  loc_A1D0B4: CVarAd
  loc_A1D0B8: FStVar CodiSubr
  loc_A1D0BC: FFree1Ad var_98
  loc_A1D0BF: ExitProcCbHresult
  loc_A1D0C5: FStI2 arg_24FE
End Sub

Public Property Get NumeLcde() 'A26124
  'Data Table: 48DC88
  loc_A260E0: FLdRfVar var_B0
  loc_A260E3: FLdRfVar var_A0
  loc_A260E6: LitVarStr var_9C, "NumeLcde"
  loc_A260EB: PopAdLdVar
  loc_A260EC: FLdRfVar var_8C
  loc_A260EF: FLdPr Me
  loc_A260F2: MemLdPr RsFrm
  loc_A260F5:  = Me.Fields
  loc_A260FA: FLdPr var_8C
  loc_A260FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A26102: FLdPr var_A0
  loc_A26105:  = Me.Value
  loc_A2610A: FLdRfVar var_B0
  loc_A2610D: CI2Var
  loc_A2610E: FStI2 var_86
  loc_A26111: FFreeAd var_8C = ""
  loc_A26118: FFree1Var var_B0 = ""
  loc_A2611B: ExitProcCbHresult
  loc_A26121: FLdFPR8 var_E8
End Sub

Public Property Get ImpoLcde() 'A262A4
  'Data Table: 48DC88
  loc_A26260: FLdRfVar var_B4
  loc_A26263: FLdRfVar var_A4
  loc_A26266: LitVarStr var_A0, "ImpoLcde"
  loc_A2626B: PopAdLdVar
  loc_A2626C: FLdRfVar var_90
  loc_A2626F: FLdPr Me
  loc_A26272: MemLdPr RsFrm
  loc_A26275:  = Me.Fields
  loc_A2627A: FLdPr var_90
  loc_A2627D: from_stack_2 = Me.Item(from_stack_1)
  loc_A26282: FLdPr var_A4
  loc_A26285:  = Me.Value
  loc_A2628A: FLdRfVar var_B4
  loc_A2628D: CR4Var
  loc_A2628E: FStFPR8 var_8C
  loc_A26291: FFreeAd var_90 = ""
  loc_A26298: FFree1Var var_B4 = ""
  loc_A2629B: ExitProcCbHresult
End Sub

Public Property Get TotaBole() 'A26A24
  'Data Table: 48DC88
  loc_A269E0: FLdRfVar var_B4
  loc_A269E3: FLdRfVar var_A4
  loc_A269E6: LitVarStr var_A0, "TotaBole"
  loc_A269EB: PopAdLdVar
  loc_A269EC: FLdRfVar var_90
  loc_A269EF: FLdPr Me
  loc_A269F2: MemLdPr RsFrm
  loc_A269F5:  = Me.Fields
  loc_A269FA: FLdPr var_90
  loc_A269FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A26A02: FLdPr var_A4
  loc_A26A05:  = Me.Value
  loc_A26A0A: FLdRfVar var_B4
  loc_A26A0D: CR4Var
  loc_A26A0E: FStFPR8 var_8C
  loc_A26A11: FFreeAd var_90 = ""
  loc_A26A18: FFree1Var var_B4 = ""
  loc_A26A1B: ExitProcCbHresult
End Sub

Public Property Get DetaPers() 'A1D5F0
  'Data Table: 48DC88
  loc_A1D5B8: ZeroRetValVar
  loc_A1D5BA: FLdRfVar var_AC
  loc_A1D5BD: LitVarStr var_A8, "DetaPers"
  loc_A1D5C2: PopAdLdVar
  loc_A1D5C3: FLdRfVar var_98
  loc_A1D5C6: FLdPr Me
  loc_A1D5C9: MemLdPr RsFrm
  loc_A1D5CC:  = Me.Fields
  loc_A1D5D1: FLdPr var_98
  loc_A1D5D4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1D5D9: FLdZeroAd var_AC
  loc_A1D5DC: CVarAd
  loc_A1D5E0: FStVar DetaPers
  loc_A1D5E4: FFree1Ad var_98
  loc_A1D5E7: ExitProcCbHresult
  loc_A1D5ED: MemStR8 global_10493
End Sub

Public Property Get DetaCall() 'A1D668
  'Data Table: 48DC88
  loc_A1D630: ZeroRetValVar
  loc_A1D632: FLdRfVar var_AC
  loc_A1D635: LitVarStr var_A8, "DetaCall"
  loc_A1D63A: PopAdLdVar
  loc_A1D63B: FLdRfVar var_98
  loc_A1D63E: FLdPr Me
  loc_A1D641: MemLdPr RsFrm
  loc_A1D644:  = Me.Fields
  loc_A1D649: FLdPr var_98
  loc_A1D64C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1D651: FLdZeroAd var_AC
  loc_A1D654: CVarAd
  loc_A1D658: FStVar DetaCall
  loc_A1D65C: FFree1Ad var_98
  loc_A1D65F: ExitProcCbHresult
  loc_A1D665: FLdRfVar var_310
End Sub

Public Property Get NucaCome(arg_10) 'A1D9B0
  'Data Table: 48DC88
  loc_A1D978: ZeroRetValVar
  loc_A1D97A: FLdRfVar var_AC
  loc_A1D97D: LitVarStr var_A8, "NucaCome"
  loc_A1D982: PopAdLdVar
  loc_A1D983: FLdRfVar var_98
  loc_A1D986: FLdPr Me
  loc_A1D989: MemLdPr RsFrm
  loc_A1D98C:  = Me.Fields
  loc_A1D991: FLdPr var_98
  loc_A1D994: from_stack_2 = Me.Item(from_stack_1)
  loc_A1D999: FLdZeroAd var_AC
  loc_A1D99C: CVarAd
  loc_A1D9A0: FStVar NucaCome
  loc_A1D9A4: FFree1Ad var_98
  loc_A1D9A7: ExitProcCbHresult
  loc_A1D9AD: PopAdLdVar
  loc_A1D9AE: FLdRfVar arg_10DC
End Sub

Public Property Get DetaConc() 'A1DA28
  'Data Table: 48DC88
  loc_A1D9F0: ZeroRetValVar
  loc_A1D9F2: FLdRfVar var_AC
  loc_A1D9F5: LitVarStr var_A8, "DetaConc"
  loc_A1D9FA: PopAdLdVar
  loc_A1D9FB: FLdRfVar var_98
  loc_A1D9FE: FLdPr Me
  loc_A1DA01: MemLdPr RsFrm
  loc_A1DA04:  = Me.Fields
  loc_A1DA09: FLdPr var_98
  loc_A1DA0C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1DA11: FLdZeroAd var_AC
  loc_A1DA14: CVarAd
  loc_A1DA18: FStVar DetaConc
  loc_A1DA1C: FFree1Ad var_98
  loc_A1DA1F: ExitProcCbHresult
  loc_A1DA25: ExitProc
  loc_A1DA26: EqCyR8
End Sub

Public Property Get CodiRubr() 'A1DC08
  'Data Table: 48DC88
  loc_A1DBD0: ZeroRetValVar
  loc_A1DBD2: FLdRfVar var_AC
  loc_A1DBD5: LitVarStr var_A8, "CodiRubr"
  loc_A1DBDA: PopAdLdVar
  loc_A1DBDB: FLdRfVar var_98
  loc_A1DBDE: FLdPr Me
  loc_A1DBE1: MemLdPr RsFrm
  loc_A1DBE4:  = Me.Fields
  loc_A1DBE9: FLdPr var_98
  loc_A1DBEC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1DBF1: FLdZeroAd var_AC
  loc_A1DBF4: CVarAd
  loc_A1DBF8: FStVar CodiRubr
  loc_A1DBFC: FFree1Ad var_98
  loc_A1DBFF: ExitProcCbHresult
End Sub

Public Property Get DetaRubr() 'A1DF50
  'Data Table: 48DC88
  loc_A1DF18: ZeroRetValVar
  loc_A1DF1A: FLdRfVar var_AC
  loc_A1DF1D: LitVarStr var_A8, "DetaRubr"
  loc_A1DF22: PopAdLdVar
  loc_A1DF23: FLdRfVar var_98
  loc_A1DF26: FLdPr Me
  loc_A1DF29: MemLdPr RsFrm
  loc_A1DF2C:  = Me.Fields
  loc_A1DF31: FLdPr var_98
  loc_A1DF34: from_stack_2 = Me.Item(from_stack_1)
  loc_A1DF39: FLdZeroAd var_AC
  loc_A1DF3C: CVarAd
  loc_A1DF40: FStVar DetaRubr
  loc_A1DF44: FFree1Ad var_98
  loc_A1DF47: ExitProcCbHresult
End Sub

Public Property Get DetaSubr() 'A1E400
  'Data Table: 48DC88
  loc_A1E3C8: ZeroRetValVar
  loc_A1E3CA: FLdRfVar var_AC
  loc_A1E3CD: LitVarStr var_A8, "DetaSubr"
  loc_A1E3D2: PopAdLdVar
  loc_A1E3D3: FLdRfVar var_98
  loc_A1E3D6: FLdPr Me
  loc_A1E3D9: MemLdPr RsFrm
  loc_A1E3DC:  = Me.Fields
  loc_A1E3E1: FLdPr var_98
  loc_A1E3E4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1E3E9: FLdZeroAd var_AC
  loc_A1E3EC: CVarAd
  loc_A1E3F0: FStVar DetaSubr
  loc_A1E3F4: FFree1Ad var_98
  loc_A1E3F7: ExitProcCbHresult
End Sub

Public Property Get ImpoTaco() 'A1E478
  'Data Table: 48DC88
  loc_A1E440: ZeroRetValVar
  loc_A1E442: FLdRfVar var_AC
  loc_A1E445: LitVarStr var_A8, "ImpoTaco"
  loc_A1E44A: PopAdLdVar
  loc_A1E44B: FLdRfVar var_98
  loc_A1E44E: FLdPr Me
  loc_A1E451: MemLdPr RsFrm
  loc_A1E454:  = Me.Fields
  loc_A1E459: FLdPr var_98
  loc_A1E45C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1E461: FLdZeroAd var_AC
  loc_A1E464: CVarAd
  loc_A1E468: FStVar ImpoTaco
  loc_A1E46C: FFree1Ad var_98
  loc_A1E46F: ExitProcCbHresult
End Sub

Public Property Get Bimestres() 'A1E838
  'Data Table: 48DC88
  loc_A1E800: ZeroRetValVar
  loc_A1E802: FLdRfVar var_AC
  loc_A1E805: LitVarStr var_A8, "Bimestres"
  loc_A1E80A: PopAdLdVar
  loc_A1E80B: FLdRfVar var_98
  loc_A1E80E: FLdPr Me
  loc_A1E811: MemLdPr RsFrm
  loc_A1E814:  = Me.Fields
  loc_A1E819: FLdPr var_98
  loc_A1E81C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1E821: FLdZeroAd var_AC
  loc_A1E824: CVarAd
  loc_A1E828: FStVar Bimestres
  loc_A1E82C: FFree1Ad var_98
  loc_A1E82F: ExitProcCbHresult
End Sub

Public Property Get ImpoSubr() 'A1E8B0
  'Data Table: 48DC88
  loc_A1E878: ZeroRetValVar
  loc_A1E87A: FLdRfVar var_AC
  loc_A1E87D: LitVarStr var_A8, "ImpoSubr"
  loc_A1E882: PopAdLdVar
  loc_A1E883: FLdRfVar var_98
  loc_A1E886: FLdPr Me
  loc_A1E889: MemLdPr RsFrm
  loc_A1E88C:  = Me.Fields
  loc_A1E891: FLdPr var_98
  loc_A1E894: from_stack_2 = Me.Item(from_stack_1)
  loc_A1E899: FLdZeroAd var_AC
  loc_A1E89C: CVarAd
  loc_A1E8A0: FStVar ImpoSubr
  loc_A1E8A4: FFree1Ad var_98
  loc_A1E8A7: ExitProcCbHresult
End Sub

Public Property Get CantSeco() 'A282A4
  'Data Table: 48DC88
  loc_A28260: FLdRfVar var_B0
  loc_A28263: FLdRfVar var_A0
  loc_A28266: LitVarStr var_9C, "CantSeco"
  loc_A2826B: PopAdLdVar
  loc_A2826C: FLdRfVar var_8C
  loc_A2826F: FLdPr Me
  loc_A28272: MemLdPr RsFrm
  loc_A28275:  = Me.Fields
  loc_A2827A: FLdPr var_8C
  loc_A2827D: from_stack_2 = Me.Item(from_stack_1)
  loc_A28282: FLdPr var_A0
  loc_A28285:  = Me.Value
  loc_A2828A: FLdRfVar var_B0
  loc_A2828D: CI4Var
  loc_A2828F: FStR4 var_88
  loc_A28292: FFreeAd var_8C = ""
  loc_A28299: FFree1Var var_B0 = ""
  loc_A2829C: ExitProcCbHresult
End Sub

Public Property Get RazoCome() 'A1EB80
  'Data Table: 48DC88
  loc_A1EB48: ZeroRetValVar
  loc_A1EB4A: FLdRfVar var_AC
  loc_A1EB4D: LitVarStr var_A8, "RazoCome"
  loc_A1EB52: PopAdLdVar
  loc_A1EB53: FLdRfVar var_98
  loc_A1EB56: FLdPr Me
  loc_A1EB59: MemLdPr RsFrm
  loc_A1EB5C:  = Me.Fields
  loc_A1EB61: FLdPr var_98
  loc_A1EB64: from_stack_2 = Me.Item(from_stack_1)
  loc_A1EB69: FLdZeroAd var_AC
  loc_A1EB6C: CVarAd
  loc_A1EB70: FStVar RazoCome
  loc_A1EB74: FFree1Ad var_98
  loc_A1EB77: ExitProcCbHresult
End Sub

Public Property Get RecaBole() 'A1EDD8
  'Data Table: 48DC88
  loc_A1EDA0: ZeroRetValVar
  loc_A1EDA2: FLdRfVar var_AC
  loc_A1EDA5: LitVarStr var_A8, "RecaBole"
  loc_A1EDAA: PopAdLdVar
  loc_A1EDAB: FLdRfVar var_98
  loc_A1EDAE: FLdPr Me
  loc_A1EDB1: MemLdPr RsFrm
  loc_A1EDB4:  = Me.Fields
  loc_A1EDB9: FLdPr var_98
  loc_A1EDBC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1EDC1: FLdZeroAd var_AC
  loc_A1EDC4: CVarAd
  loc_A1EDC8: FStVar RecaBole
  loc_A1EDCC: FFree1Ad var_98
  loc_A1EDCF: ExitProcCbHresult
End Sub

Public Property Get CEmision() 'A1EF40
  'Data Table: 48DC88
  loc_A1EF08: ZeroRetValVar
  loc_A1EF0A: FLdRfVar var_AC
  loc_A1EF0D: LitVarStr var_A8, "CEmision"
  loc_A1EF12: PopAdLdVar
  loc_A1EF13: FLdRfVar var_98
  loc_A1EF16: FLdPr Me
  loc_A1EF19: MemLdPr RsFrm
  loc_A1EF1C:  = Me.Fields
  loc_A1EF21: FLdPr var_98
  loc_A1EF24: from_stack_2 = Me.Item(from_stack_1)
  loc_A1EF29: FLdZeroAd var_AC
  loc_A1EF2C: CVarAd
  loc_A1EF30: FStVar CEmision
  loc_A1EF34: FFree1Ad var_98
  loc_A1EF37: ExitProcCbHresult
End Sub

Public Property Get CateSeco() 'A1F300
  'Data Table: 48DC88
  loc_A1F2C8: ZeroRetValVar
  loc_A1F2CA: FLdRfVar var_AC
  loc_A1F2CD: LitVarStr var_A8, "CateSeco"
  loc_A1F2D2: PopAdLdVar
  loc_A1F2D3: FLdRfVar var_98
  loc_A1F2D6: FLdPr Me
  loc_A1F2D9: MemLdPr RsFrm
  loc_A1F2DC:  = Me.Fields
  loc_A1F2E1: FLdPr var_98
  loc_A1F2E4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F2E9: FLdZeroAd var_AC
  loc_A1F2EC: CVarAd
  loc_A1F2F0: FStVar CateSeco
  loc_A1F2F4: FFree1Ad var_98
  loc_A1F2F7: ExitProcCbHresult
End Sub

Public Property Get Vinculo() 'A1F378
  'Data Table: 48DC88
  loc_A1F340: ZeroRetValVar
  loc_A1F342: FLdRfVar var_AC
  loc_A1F345: LitVarStr var_A8, "Vinculo"
  loc_A1F34A: PopAdLdVar
  loc_A1F34B: FLdRfVar var_98
  loc_A1F34E: FLdPr Me
  loc_A1F351: MemLdPr RsFrm
  loc_A1F354:  = Me.Fields
  loc_A1F359: FLdPr var_98
  loc_A1F35C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F361: FLdZeroAd var_AC
  loc_A1F364: CVarAd
  loc_A1F368: FStVar Vinculo
  loc_A1F36C: FFree1Ad var_98
  loc_A1F36F: ExitProcCbHresult
End Sub

Public Property Get DetaBarr() 'A1B340
  'Data Table: 48DC88
  loc_A1B308: ZeroRetValVar
  loc_A1B30A: FLdRfVar var_AC
  loc_A1B30D: LitVarStr var_A8, "DetaBarr"
  loc_A1B312: PopAdLdVar
  loc_A1B313: FLdRfVar var_98
  loc_A1B316: FLdPr Me
  loc_A1B319: MemLdPr RsFrm
  loc_A1B31C:  = Me.Fields
  loc_A1B321: FLdPr var_98
  loc_A1B324: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B329: FLdZeroAd var_AC
  loc_A1B32C: CVarAd
  loc_A1B330: FStVar DetaBarr
  loc_A1B334: FFree1Ad var_98
  loc_A1B337: ExitProcCbHresult
End Sub

Public Property Get DetaLoca() 'A1F828
  'Data Table: 48DC88
  loc_A1F7F0: ZeroRetValVar
  loc_A1F7F2: FLdRfVar var_AC
  loc_A1F7F5: LitVarStr var_A8, "DetaLoca"
  loc_A1F7FA: PopAdLdVar
  loc_A1F7FB: FLdRfVar var_98
  loc_A1F7FE: FLdPr Me
  loc_A1F801: MemLdPr RsFrm
  loc_A1F804:  = Me.Fields
  loc_A1F809: FLdPr var_98
  loc_A1F80C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F811: FLdZeroAd var_AC
  loc_A1F814: CVarAd
  loc_A1F818: FStVar DetaLoca
  loc_A1F81C: FFree1Ad var_98
  loc_A1F81F: ExitProcCbHresult
End Sub

Public Property Get CopoLico() 'A1FA80
  'Data Table: 48DC88
  loc_A1FA48: ZeroRetValVar
  loc_A1FA4A: FLdRfVar var_AC
  loc_A1FA4D: LitVarStr var_A8, "CopoLico"
  loc_A1FA52: PopAdLdVar
  loc_A1FA53: FLdRfVar var_98
  loc_A1FA56: FLdPr Me
  loc_A1FA59: MemLdPr RsFrm
  loc_A1FA5C:  = Me.Fields
  loc_A1FA61: FLdPr var_98
  loc_A1FA64: from_stack_2 = Me.Item(from_stack_1)
  loc_A1FA69: FLdZeroAd var_AC
  loc_A1FA6C: CVarAd
  loc_A1FA70: FStVar CopoLico
  loc_A1FA74: FFree1Ad var_98
  loc_A1FA77: ExitProcCbHresult
End Sub

Public Property Get CallLicoReal() 'A1FCD8
  'Data Table: 48DC88
  loc_A1FCA0: ZeroRetValVar
  loc_A1FCA2: FLdRfVar var_AC
  loc_A1FCA5: LitVarStr var_A8, "CallLicoReal"
  loc_A1FCAA: PopAdLdVar
  loc_A1FCAB: FLdRfVar var_98
  loc_A1FCAE: FLdPr Me
  loc_A1FCB1: MemLdPr RsFrm
  loc_A1FCB4:  = Me.Fields
  loc_A1FCB9: FLdPr var_98
  loc_A1FCBC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1FCC1: FLdZeroAd var_AC
  loc_A1FCC4: CVarAd
  loc_A1FCC8: FStVar CallLicoReal
  loc_A1FCCC: FFree1Ad var_98
  loc_A1FCCF: ExitProcCbHresult
End Sub

Public Property Get NucaLicoReal() 'A1FBE8
  'Data Table: 48DC88
  loc_A1FBB0: ZeroRetValVar
  loc_A1FBB2: FLdRfVar var_AC
  loc_A1FBB5: LitVarStr var_A8, "NucaLicoReal"
  loc_A1FBBA: PopAdLdVar
  loc_A1FBBB: FLdRfVar var_98
  loc_A1FBBE: FLdPr Me
  loc_A1FBC1: MemLdPr RsFrm
  loc_A1FBC4:  = Me.Fields
  loc_A1FBC9: FLdPr var_98
  loc_A1FBCC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1FBD1: FLdZeroAd var_AC
  loc_A1FBD4: CVarAd
  loc_A1FBD8: FStVar NucaLicoReal
  loc_A1FBDC: FFree1Ad var_98
  loc_A1FBDF: ExitProcCbHresult
End Sub

Public Property Get BarrLicoReal() 'A20890
  'Data Table: 48DC88
  loc_A20858: ZeroRetValVar
  loc_A2085A: FLdRfVar var_AC
  loc_A2085D: LitVarStr var_A8, "BarrLicoReal"
  loc_A20862: PopAdLdVar
  loc_A20863: FLdRfVar var_98
  loc_A20866: FLdPr Me
  loc_A20869: MemLdPr RsFrm
  loc_A2086C:  = Me.Fields
  loc_A20871: FLdPr var_98
  loc_A20874: from_stack_2 = Me.Item(from_stack_1)
  loc_A20879: FLdZeroAd var_AC
  loc_A2087C: CVarAd
  loc_A20880: FStVar BarrLicoReal
  loc_A20884: FFree1Ad var_98
  loc_A20887: ExitProcCbHresult
End Sub

Public Property Get ManzLicoReal() 'A20818
  'Data Table: 48DC88
  loc_A207E0: ZeroRetValVar
  loc_A207E2: FLdRfVar var_AC
  loc_A207E5: LitVarStr var_A8, "ManzLicoReal"
  loc_A207EA: PopAdLdVar
  loc_A207EB: FLdRfVar var_98
  loc_A207EE: FLdPr Me
  loc_A207F1: MemLdPr RsFrm
  loc_A207F4:  = Me.Fields
  loc_A207F9: FLdPr var_98
  loc_A207FC: from_stack_2 = Me.Item(from_stack_1)
  loc_A20801: FLdZeroAd var_AC
  loc_A20804: CVarAd
  loc_A20808: FStVar ManzLicoReal
  loc_A2080C: FFree1Ad var_98
  loc_A2080F: ExitProcCbHresult
End Sub

Public Property Get CasaLicoReal() 'A202F0
  'Data Table: 48DC88
  loc_A202B8: ZeroRetValVar
  loc_A202BA: FLdRfVar var_AC
  loc_A202BD: LitVarStr var_A8, "CasaLicoReal"
  loc_A202C2: PopAdLdVar
  loc_A202C3: FLdRfVar var_98
  loc_A202C6: FLdPr Me
  loc_A202C9: MemLdPr RsFrm
  loc_A202CC:  = Me.Fields
  loc_A202D1: FLdPr var_98
  loc_A202D4: from_stack_2 = Me.Item(from_stack_1)
  loc_A202D9: FLdZeroAd var_AC
  loc_A202DC: CVarAd
  loc_A202E0: FStVar CasaLicoReal
  loc_A202E4: FFree1Ad var_98
  loc_A202E7: ExitProcCbHresult
End Sub

Public Property Get UbicLicoReal() 'A1D230
  'Data Table: 48DC88
  loc_A1D1F8: ZeroRetValVar
  loc_A1D1FA: FLdRfVar var_AC
  loc_A1D1FD: LitVarStr var_A8, "UbicLicoReal"
  loc_A1D202: PopAdLdVar
  loc_A1D203: FLdRfVar var_98
  loc_A1D206: FLdPr Me
  loc_A1D209: MemLdPr RsFrm
  loc_A1D20C:  = Me.Fields
  loc_A1D211: FLdPr var_98
  loc_A1D214: from_stack_2 = Me.Item(from_stack_1)
  loc_A1D219: FLdZeroAd var_AC
  loc_A1D21C: CVarAd
  loc_A1D220: FStVar UbicLicoReal
  loc_A1D224: FFree1Ad var_98
  loc_A1D227: ExitProcCbHresult
End Sub

Public Property Get LocaLicoReal() 'A1CDF8
  'Data Table: 48DC88
  loc_A1CDC0: ZeroRetValVar
  loc_A1CDC2: FLdRfVar var_AC
  loc_A1CDC5: LitVarStr var_A8, "LocaLicoReal"
  loc_A1CDCA: PopAdLdVar
  loc_A1CDCB: FLdRfVar var_98
  loc_A1CDCE: FLdPr Me
  loc_A1CDD1: MemLdPr RsFrm
  loc_A1CDD4:  = Me.Fields
  loc_A1CDD9: FLdPr var_98
  loc_A1CDDC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1CDE1: FLdZeroAd var_AC
  loc_A1CDE4: CVarAd
  loc_A1CDE8: FStVar LocaLicoReal
  loc_A1CDEC: FFree1Ad var_98
  loc_A1CDEF: ExitProcCbHresult
End Sub

Public Property Get CopoLicoReal() 'A1CAB0
  'Data Table: 48DC88
  loc_A1CA78: ZeroRetValVar
  loc_A1CA7A: FLdRfVar var_AC
  loc_A1CA7D: LitVarStr var_A8, "CopoLicoReal"
  loc_A1CA82: PopAdLdVar
  loc_A1CA83: FLdRfVar var_98
  loc_A1CA86: FLdPr Me
  loc_A1CA89: MemLdPr RsFrm
  loc_A1CA8C:  = Me.Fields
  loc_A1CA91: FLdPr var_98
  loc_A1CA94: from_stack_2 = Me.Item(from_stack_1)
  loc_A1CA99: FLdZeroAd var_AC
  loc_A1CA9C: CVarAd
  loc_A1CAA0: FStVar CopoLicoReal
  loc_A1CAA4: FFree1Ad var_98
  loc_A1CAA7: ExitProcCbHresult
End Sub

Public Property Get CodiUsua() 'A1C948
  'Data Table: 48DC88
  loc_A1C910: ZeroRetValVar
  loc_A1C912: FLdRfVar var_AC
  loc_A1C915: LitVarStr var_A8, "CodiUsua"
  loc_A1C91A: PopAdLdVar
  loc_A1C91B: FLdRfVar var_98
  loc_A1C91E: FLdPr Me
  loc_A1C921: MemLdPr RsFrm
  loc_A1C924:  = Me.Fields
  loc_A1C929: FLdPr var_98
  loc_A1C92C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C931: FLdZeroAd var_AC
  loc_A1C934: CVarAd
  loc_A1C938: FStVar CodiUsua
  loc_A1C93C: FFree1Ad var_98
  loc_A1C93F: ExitProcCbHresult
End Sub

Public Function ValidaClave(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiInmu, CodiConc) '9C421C
  'Data Table: 48DC88
  loc_9C420C: ILdRf CodiConc
  loc_9C420F: FStStrCopy var_8C
  loc_9C4212: ZeroRetVal
  loc_9C4214: ExitProcCbHresult
End Function

Public Sub BorraLiquidacion(PeriLiqu, CodiTili) 'B8FFE4
  'Data Table: 48DC88
  loc_B8FB8C: LitStr "SELECT PeriLiqu, CodiOfic, CodiTili, NumeLiqu FROM liquidacion WHERE PeriLiqu = "
  loc_B8FB8F: FLdI2 PeriLiqu
  loc_B8FB92: CStrUI1
  loc_B8FB94: FStStrNoPop var_88
  loc_B8FB97: ConcatStr
  loc_B8FB98: FStStrNoPop var_8C
  loc_B8FB9B: LitStr " AND CodiOfic = 2 AND CodiTili = "
  loc_B8FB9E: ConcatStr
  loc_B8FB9F: FStStrNoPop var_90
  loc_B8FBA2: FLdUI1
  loc_B8FBA6: CStrI2
  loc_B8FBA8: FStStrNoPop var_94
  loc_B8FBAB: ConcatStr
  loc_B8FBAC: FStStrNoPop var_98
  loc_B8FBAF: LitStr " AND ActuLiqu = 'No' ORDER BY PeriLiqu, CodiTili, NumeLiqu"
  loc_B8FBB2: ConcatStr
  loc_B8FBB3: FStStrNoPop var_9C
  loc_B8FBB6: Call EjecutarRsCls(from_stack_1v)
  loc_B8FBBB: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_B8FBCA: FLdRfVar var_A0
  loc_B8FBCD: FLdPr Me
  loc_B8FBD0: MemLdPr global_56
  loc_B8FBD3:  = Me.RecordCount
  loc_B8FBD8: ILdRf var_A0
  loc_B8FBDB: LitI4 0
  loc_B8FBE0: GtI4
  loc_B8FBE1: BranchF loc_B8FFE2
  loc_B8FBE4: LitStr "START TRANSACTION;"
  loc_B8FBE7: LitStr " DELETE FROM liqucome WHERE PeriLiqu = "
  loc_B8FBEA: ConcatStr
  loc_B8FBEB: FStStrNoPop var_88
  loc_B8FBEE: FLdI2 PeriLiqu
  loc_B8FBF1: CStrUI1
  loc_B8FBF3: FStStrNoPop var_8C
  loc_B8FBF6: ConcatStr
  loc_B8FBF7: FStStrNoPop var_90
  loc_B8FBFA: LitStr " AND CodiTili = "
  loc_B8FBFD: ConcatStr
  loc_B8FBFE: FStStrNoPop var_94
  loc_B8FC01: FLdUI1
  loc_B8FC05: CStrI2
  loc_B8FC07: FStStrNoPop var_98
  loc_B8FC0A: ConcatStr
  loc_B8FC0B: FStStrNoPop var_9C
  loc_B8FC0E: LitStr " AND NumeLiqu = "
  loc_B8FC11: ConcatStr
  loc_B8FC12: CVarStr var_D8
  loc_B8FC15: FLdRfVar var_C8
  loc_B8FC18: FLdRfVar var_B8
  loc_B8FC1B: LitVarStr var_B4, "NumeLiqu"
  loc_B8FC20: PopAdLdVar
  loc_B8FC21: FLdRfVar var_A4
  loc_B8FC24: FLdPr Me
  loc_B8FC27: MemLdPr global_56
  loc_B8FC2A:  = Me.Fields
  loc_B8FC2F: FLdPr var_A4
  loc_B8FC32: from_stack_2 = Me.Item(from_stack_1)
  loc_B8FC37: FLdPr var_B8
  loc_B8FC3A:  = Me.Value
  loc_B8FC3F: FLdRfVar var_C8
  loc_B8FC42: ConcatVar var_E8
  loc_B8FC46: LitVarStr var_F8, " AND ActuLico = 'No';"
  loc_B8FC4B: ConcatVar var_108
  loc_B8FC4F: LitVarStr var_118, " DELETE FROM licodeta WHERE PeriLiqu = "
  loc_B8FC54: ConcatVar var_128
  loc_B8FC58: FLdI2 PeriLiqu
  loc_B8FC5B: CVarI2 var_138
  loc_B8FC5E: ConcatVar var_148
  loc_B8FC62: LitVarStr var_158, " AND CodiTili = "
  loc_B8FC67: ConcatVar var_168
  loc_B8FC6B: FLdUI1
  loc_B8FC6F: CVarUI1
  loc_B8FC73: ConcatVar var_188
  loc_B8FC77: LitVarStr var_198, " AND NumeLiqu = "
  loc_B8FC7C: ConcatVar var_1A8
  loc_B8FC80: FLdRfVar var_1D0
  loc_B8FC83: FLdRfVar var_1C0
  loc_B8FC86: LitVarStr var_1BC, "NumeLiqu"
  loc_B8FC8B: PopAdLdVar
  loc_B8FC8C: FLdRfVar var_1AC
  loc_B8FC8F: FLdPr Me
  loc_B8FC92: MemLdPr global_56
  loc_B8FC95:  = Me.Fields
  loc_B8FC9A: FLdPr var_1AC
  loc_B8FC9D: from_stack_2 = Me.Item(from_stack_1)
  loc_B8FCA2: FLdPr var_1C0
  loc_B8FCA5:  = Me.Value
  loc_B8FCAA: FLdRfVar var_1D0
  loc_B8FCAD: ConcatVar var_1E0
  loc_B8FCB1: LitVarStr var_1F0, ";"
  loc_B8FCB6: ConcatVar var_200
  loc_B8FCBA: LitVarStr var_210, " DELETE FROM erroliqu WHERE PeriLiqu = "
  loc_B8FCBF: ConcatVar var_220
  loc_B8FCC3: FLdI2 PeriLiqu
  loc_B8FCC6: CVarI2 var_230
  loc_B8FCC9: ConcatVar var_240
  loc_B8FCCD: LitVarStr var_250, " AND CodiTili = "
  loc_B8FCD2: ConcatVar var_260
  loc_B8FCD6: FLdUI1
  loc_B8FCDA: CVarUI1
  loc_B8FCDE: ConcatVar var_280
  loc_B8FCE2: LitVarStr var_290, " AND NumeLiqu = "
  loc_B8FCE7: ConcatVar var_2A0
  loc_B8FCEB: FLdRfVar var_2C8
  loc_B8FCEE: FLdRfVar var_2B8
  loc_B8FCF1: LitVarStr var_2B4, "NumeLiqu"
  loc_B8FCF6: PopAdLdVar
  loc_B8FCF7: FLdRfVar var_2A4
  loc_B8FCFA: FLdPr Me
  loc_B8FCFD: MemLdPr global_56
  loc_B8FD00:  = Me.Fields
  loc_B8FD05: FLdPr var_2A4
  loc_B8FD08: from_stack_2 = Me.Item(from_stack_1)
  loc_B8FD0D: FLdPr var_2B8
  loc_B8FD10:  = Me.Value
  loc_B8FD15: FLdRfVar var_2C8
  loc_B8FD18: ConcatVar var_2D8
  loc_B8FD1C: LitVarStr var_2E8, " AND CodiOfic = "
  loc_B8FD21: ConcatVar var_2F8
  loc_B8FD25: FLdRfVar var_320
  loc_B8FD28: FLdRfVar var_310
  loc_B8FD2B: LitVarStr var_30C, "CodiOfic"
  loc_B8FD30: PopAdLdVar
  loc_B8FD31: FLdRfVar var_2FC
  loc_B8FD34: FLdPr Me
  loc_B8FD37: MemLdPr global_56
  loc_B8FD3A:  = Me.Fields
  loc_B8FD3F: FLdPr var_2FC
  loc_B8FD42: from_stack_2 = Me.Item(from_stack_1)
  loc_B8FD47: FLdPr var_310
  loc_B8FD4A:  = Me.Value
  loc_B8FD4F: FLdRfVar var_320
  loc_B8FD52: ConcatVar var_330
  loc_B8FD56: LitVarStr var_340, ";"
  loc_B8FD5B: ConcatVar var_350
  loc_B8FD5F: LitVarStr var_360, " UPDATE recabole SET PeriLiqu = 0, BimeLiqu = 0, CodiTili = 0, NumeLiqu = 0 WHERE CodiOfic = 2 AND PeriLiqu = "
  loc_B8FD64: ConcatVar var_370
  loc_B8FD68: FLdI2 PeriLiqu
  loc_B8FD6B: CVarI2 var_380
  loc_B8FD6E: ConcatVar var_390
  loc_B8FD72: LitVarStr var_3A0, " AND CodiTili = "
  loc_B8FD77: ConcatVar var_3B0
  loc_B8FD7B: FLdUI1
  loc_B8FD7F: CVarUI1
  loc_B8FD83: ConcatVar var_3D0
  loc_B8FD87: LitVarStr var_3E0, " AND NumeLiqu = "
  loc_B8FD8C: ConcatVar var_3F0
  loc_B8FD90: FLdRfVar var_418
  loc_B8FD93: FLdRfVar var_408
  loc_B8FD96: LitVarStr var_404, "NumeLiqu"
  loc_B8FD9B: PopAdLdVar
  loc_B8FD9C: FLdRfVar var_3F4
  loc_B8FD9F: FLdPr Me
  loc_B8FDA2: MemLdPr global_56
  loc_B8FDA5:  = Me.Fields
  loc_B8FDAA: FLdPr var_3F4
  loc_B8FDAD: from_stack_2 = Me.Item(from_stack_1)
  loc_B8FDB2: FLdPr var_408
  loc_B8FDB5:  = Me.Value
  loc_B8FDBA: FLdRfVar var_418
  loc_B8FDBD: ConcatVar var_428
  loc_B8FDC1: LitVarStr var_438, " AND ActuRebo = 'No';"
  loc_B8FDC6: ConcatVar var_448
  loc_B8FDCA: LitVarStr var_458, " UPDATE pagoanti SET CodiTili = 0, NumeLiqu = 0 WHERE PeriLiqu = "
  loc_B8FDCF: ConcatVar var_468
  loc_B8FDD3: FLdI2 PeriLiqu
  loc_B8FDD6: CVarI2 var_478
  loc_B8FDD9: ConcatVar var_488
  loc_B8FDDD: LitVarStr var_498, " AND CodiTili = "
  loc_B8FDE2: ConcatVar var_4A8
  loc_B8FDE6: FLdUI1
  loc_B8FDEA: CVarUI1
  loc_B8FDEE: ConcatVar var_4C8
  loc_B8FDF2: LitVarStr var_4D8, " AND NumeLiqu = "
  loc_B8FDF7: ConcatVar var_4E8
  loc_B8FDFB: FLdRfVar var_510
  loc_B8FDFE: FLdRfVar var_500
  loc_B8FE01: LitVarStr var_4FC, "NumeLiqu"
  loc_B8FE06: PopAdLdVar
  loc_B8FE07: FLdRfVar var_4EC
  loc_B8FE0A: FLdPr Me
  loc_B8FE0D: MemLdPr global_56
  loc_B8FE10:  = Me.Fields
  loc_B8FE15: FLdPr var_4EC
  loc_B8FE18: from_stack_2 = Me.Item(from_stack_1)
  loc_B8FE1D: FLdPr var_500
  loc_B8FE20:  = Me.Value
  loc_B8FE25: FLdRfVar var_510
  loc_B8FE28: ConcatVar var_520
  loc_B8FE2C: LitVarStr var_530, " AND (EstaPaan = 'Actualizado' OR EstaPaan = 'Liquidado');"
  loc_B8FE31: ConcatVar var_540
  loc_B8FE35: LitVarStr var_550, " DELETE FROM liquidacion WHERE PeriLiqu = "
  loc_B8FE3A: ConcatVar var_560
  loc_B8FE3E: FLdI2 PeriLiqu
  loc_B8FE41: CVarI2 var_570
  loc_B8FE44: ConcatVar var_580
  loc_B8FE48: LitVarStr var_590, " AND CodiOfic = 2 AND CodiTili = "
  loc_B8FE4D: ConcatVar var_5A0
  loc_B8FE51: FLdUI1
  loc_B8FE55: CVarUI1
  loc_B8FE59: ConcatVar var_5C0
  loc_B8FE5D: LitVarStr var_5D0, " AND NumeLiqu = "
  loc_B8FE62: ConcatVar var_5E0
  loc_B8FE66: FLdRfVar var_608
  loc_B8FE69: FLdRfVar var_5F8
  loc_B8FE6C: LitVarStr var_5F4, "NumeLiqu"
  loc_B8FE71: PopAdLdVar
  loc_B8FE72: FLdRfVar var_5E4
  loc_B8FE75: FLdPr Me
  loc_B8FE78: MemLdPr global_56
  loc_B8FE7B:  = Me.Fields
  loc_B8FE80: FLdPr var_5E4
  loc_B8FE83: from_stack_2 = Me.Item(from_stack_1)
  loc_B8FE88: FLdPr var_5F8
  loc_B8FE8B:  = Me.Value
  loc_B8FE90: FLdRfVar var_608
  loc_B8FE93: ConcatVar var_618
  loc_B8FE97: LitVarStr var_628, " AND ActuLiqu = 'No';"
  loc_B8FE9C: ConcatVar var_638
  loc_B8FEA0: LitVarStr var_648, " DELETE FROM pagoanual WHERE PeriLiqu = "
  loc_B8FEA5: ConcatVar var_658
  loc_B8FEA9: FLdI2 PeriLiqu
  loc_B8FEAC: CVarI2 var_668
  loc_B8FEAF: ConcatVar var_678
  loc_B8FEB3: LitVarStr var_688, " AND CodiOfic = 2 AND CodiTili = "
  loc_B8FEB8: ConcatVar var_698
  loc_B8FEBC: FLdUI1
  loc_B8FEC0: CVarUI1
  loc_B8FEC4: ConcatVar var_6B8
  loc_B8FEC8: LitVarStr var_6C8, " AND NumeLiqu = "
  loc_B8FECD: ConcatVar var_6D8
  loc_B8FED1: FLdRfVar var_700
  loc_B8FED4: FLdRfVar var_6F0
  loc_B8FED7: LitVarStr var_6EC, "NumeLiqu"
  loc_B8FEDC: PopAdLdVar
  loc_B8FEDD: FLdRfVar var_6DC
  loc_B8FEE0: FLdPr Me
  loc_B8FEE3: MemLdPr global_56
  loc_B8FEE6:  = Me.Fields
  loc_B8FEEB: FLdPr var_6DC
  loc_B8FEEE: from_stack_2 = Me.Item(from_stack_1)
  loc_B8FEF3: FLdPr var_6F0
  loc_B8FEF6:  = Me.Value
  loc_B8FEFB: FLdRfVar var_700
  loc_B8FEFE: ConcatVar var_710
  loc_B8FF02: LitVarStr var_720, " AND FepaPaan IS NULL ORDER BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu"
  loc_B8FF07: ConcatVar var_730
  loc_B8FF0B: CStrVarTmp
  loc_B8FF0C: FStStrNoPop var_734
  loc_B8FF0F: FLdPr Me
  loc_B8FF12: MemStStrCopy
  loc_B8FF16: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_B8FF27: FFreeAd var_A4 = "": var_B8 = "": var_1AC = "": var_1C0 = "": var_2A4 = "": var_2B8 = "": var_2FC = "": var_310 = "": var_3F4 = "": var_408 = "": var_4EC = "": var_500 = "": var_5E4 = "": var_5F8 = "": var_6DC = ""
  loc_B8FF4A: FFreeVar var_448 = "": var_468 = "": var_488 = "": var_4A8 = "": var_4C8 = "": var_4E8 = "": var_510 = "": var_520 = "": var_540 = "": var_560 = "": var_580 = "": var_5A0 = "": var_5C0 = "": var_5E0 = "": var_608 = "": var_618 = "": var_638 = "": var_658 = "": var_678 = "": var_698 = "": var_6B8 = "": var_6D8 = "": var_700 = "": var_710 = "": var_730 = "": var_D8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1D0 = "": var_1E0 = "": var_200 = "": var_220 = "": var_240 = "": var_260 = "": var_280 = "": var_2A0 = "": var_2C8 = "": var_2D8 = "": var_2F8 = "": var_320 = "": var_330 = "": var_350 = "": var_370 = "": var_390 = "": var_3B0 = "": var_3D0 = "": var_3F0 = "": var_418 = ""
  loc_B8FFBB: OnErrorGoto loc_B8FFD2
  loc_B8FFBE: FLdPr Me
  loc_B8FFC1: MemLdStr global_80
  loc_B8FFC4: Call EjecutarRsCls(from_stack_1v)
  loc_B8FFC9: LitStr "COMMIT;"
  loc_B8FFCC: Call EjecutarRsCls(from_stack_1v)
  loc_B8FFD1: ExitProcHresult
  loc_B8FFD2: LitStr "ROLLBACK;"
  loc_B8FFD5: Call EjecutarRsCls(from_stack_1v)
  loc_B8FFDA: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B8FFDD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B8FFE2: ExitProcHresult
End Sub

Public Sub CreaErrorLiquidacion(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, DetaErli) 'A7141C
  'Data Table: 48DC88
  loc_A713B0: ILdRf DetaErli
  loc_A713B3: FStStrCopy var_88
  loc_A713B6: FLdRfVar var_92
  loc_A713B9: ILdRf CodiCome
  loc_A713BC: CStrI4
  loc_A713BE: FStStrNoPop var_90
  loc_A713C1: LitI2_Byte 2
  loc_A713C3: CUI1I2
  loc_A713C5: FLdI2 NumeLiqu
  loc_A713C8: FLdUI1
  loc_A713CC: FLdUI1
  loc_A713D0: FLdI2 PeriLiqu
  loc_A713D3: FLdRfVar var_8C
  loc_A713D6: NewIfNullPr clserroliqu
  loc_A713D9: from_stack_7v = clserroliqu.NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_A713DE: ILdRf var_88
  loc_A713E1: FLdI2 var_92
  loc_A713E4: CUI1I2
  loc_A713E6: ILdRf CodiCome
  loc_A713E9: CStrI4
  loc_A713EB: FStStrNoPop var_98
  loc_A713EE: LitI2_Byte 2
  loc_A713F0: CUI1I2
  loc_A713F2: FLdI2 NumeLiqu
  loc_A713F5: FLdUI1
  loc_A713F9: FLdUI1
  loc_A713FD: FLdI2 PeriLiqu
  loc_A71400: FLdRfVar var_8C
  loc_A71403: NewIfNullPr clserroliqu
  loc_A71406: Call clserroliqu.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_A7140B: FFreeStr var_90 = ""
  loc_A71412: LitNothing
  loc_A71414: CastAd
  loc_A71417: FStAdFunc var_8C
  loc_A7141A: ExitProcHresult
End Sub

Public Function BuscaPorcentajeExcepcion(CodiExce) '9F1968
  'Data Table: 48DC88
  loc_9F1940: FLdRfVar var_98
  loc_9F1943: FLdI2 CodiExce
  loc_9F1946: FLdRfVar var_90
  loc_9F1949: NewIfNullPr clsexcepcion
  loc_9F194C: from_stack_2v = clsexcepcion.BuscaPorcentajeExcepcion(from_stack_1v)
  loc_9F1951: FLdFPR8 var_98
  loc_9F1954: FStFPR8 var_8C
  loc_9F1957: LitNothing
  loc_9F1959: CastAd
  loc_9F195C: FStAdFunc var_90
  loc_9F195F: ExitProcCbHresult
End Function

Public Function BuscaDeudaParaLibreDeuda(CodiCome) 'A10EAC
  'Data Table: 48DC88
  loc_A10E70: FLdRfVar var_9C
  loc_A10E73: LitI4 0
  loc_A10E78: LitI4 0
  loc_A10E7D: ILdRf CodiCome
  loc_A10E80: CStrI4
  loc_A10E82: FStStrNoPop BuscaDeudaParaLibreDeuda
  loc_A10E85: LitI2_Byte 2
  loc_A10E87: FLdRfVar var_90
  loc_A10E8A: NewIfNullPr clsctacte
  loc_A10E8D: from_stack_5v = clsctacte.BuscaDeudaParaLibreDeuda(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_A10E92: FLdFPR8 var_9C
  loc_A10E95: FStFPR8 var_8C
  loc_A10E98: FFree1Str BuscaDeudaParaLibreDeuda
  loc_A10E9B: LitNothing
  loc_A10E9D: CastAd
  loc_A10EA0: FStAdFunc var_90
  loc_A10EA3: ExitProcCbHresult
End Function

Public Function GeneracionCuentaCorriente(PeriLiqu, CodiTili, NumeLiqu, CodiCome, lOrden, iPeriodo, doDeanTili) 'D3E50C
  'Data Table: 48DC88
  loc_D3A430: ZeroRetVal
  loc_D3A432: LitI2_Byte 0
  loc_D3A434: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_D3A439: FStFPR8 var_A4
  loc_D3A43C: LitStr "SELECT SUM(ImpoLico) - SUM(CrafLico) as CapiBole, SUM(DescLico) as  DecaBole, SUM(ExenLico) as ExenBole, SUM(TotaLico) as  TotaBole, PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, CodiConc, TipoVenc, CucuPers, ActuLico, FealLico, FeveLico, TipoLico FROM liqucome "
  loc_D3A43F: LitStr " WHERE PeriLiqu = "
  loc_D3A442: ConcatStr
  loc_D3A443: FStStrNoPop var_134
  loc_D3A446: FLdI2 PeriLiqu
  loc_D3A449: CStrUI1
  loc_D3A44B: FStStrNoPop var_138
  loc_D3A44E: ConcatStr
  loc_D3A44F: FStStrNoPop var_13C
  loc_D3A452: LitStr " AND CodiTili = "
  loc_D3A455: ConcatStr
  loc_D3A456: FStStrNoPop var_140
  loc_D3A459: FLdUI1
  loc_D3A45D: CStrI2
  loc_D3A45F: FStStrNoPop var_144
  loc_D3A462: ConcatStr
  loc_D3A463: FStStrNoPop var_148
  loc_D3A466: LitStr " AND NumeLiqu = "
  loc_D3A469: ConcatStr
  loc_D3A46A: FStStrNoPop var_14C
  loc_D3A46D: FLdI2 NumeLiqu
  loc_D3A470: CStrUI1
  loc_D3A472: FStStrNoPop var_150
  loc_D3A475: ConcatStr
  loc_D3A476: FStStrNoPop var_154
  loc_D3A479: LitStr " AND CodiCome = "
  loc_D3A47C: ConcatStr
  loc_D3A47D: FStStrNoPop var_158
  loc_D3A480: ILdRf CodiCome
  loc_D3A483: CStrI4
  loc_D3A485: FStStrNoPop var_15C
  loc_D3A488: ConcatStr
  loc_D3A489: FStStrNoPop var_160
  loc_D3A48C: LitStr " AND ActuLico = 'No' "
  loc_D3A48F: ConcatStr
  loc_D3A490: FStStrNoPop var_164
  loc_D3A493: LitStr " GROUP BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, TipoVenc"
  loc_D3A496: ConcatStr
  loc_D3A497: FStStrNoPop var_168
  loc_D3A49A: LitStr " ORDER BY PeriLiqu, TipoVenc, BimeLiqu;"
  loc_D3A49D: ConcatStr
  loc_D3A49E: FStStrNoPop var_16C
  loc_D3A4A1: Call EjecutarRsCls2(from_stack_1v)
  loc_D3A4A6: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_D3A4C7: FLdRfVar var_170
  loc_D3A4CA: FLdPr Me
  loc_D3A4CD: MemLdPr global_64
  loc_D3A4D0:  = Me.RecordCount
  loc_D3A4D5: ILdRf var_170
  loc_D3A4D8: LitI4 0
  loc_D3A4DD: GtI4
  loc_D3A4DE: BranchF loc_D3E4AE
  loc_D3A4E1: OnErrorGoto loc_D3E4B4
  loc_D3A4E4: LitStr "START TRANSACTION;"
  loc_D3A4E7: Call EjecutarRsCls(from_stack_1v)
  loc_D3A4EC: FLdPr Me
  loc_D3A4EF: MemLdPr global_64
  loc_D3A4F2: Me.MoveFirst
  loc_D3A4F7: FLdRfVar var_172
  loc_D3A4FA: FLdPr Me
  loc_D3A4FD: MemLdPr global_64
  loc_D3A500:  = Me.EOF
  loc_D3A505: FLdI2 var_172
  loc_D3A508: NotI4
  loc_D3A509: BranchF loc_D3E4A6
  loc_D3A50C: FLdRfVar var_19C
  loc_D3A50F: FLdRfVar var_18C
  loc_D3A512: LitVarStr var_188, "TotaBole"
  loc_D3A517: PopAdLdVar
  loc_D3A518: FLdRfVar var_178
  loc_D3A51B: FLdPr Me
  loc_D3A51E: MemLdPr global_64
  loc_D3A521:  = Me.Fields
  loc_D3A526: FLdPr var_178
  loc_D3A529: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A52E: FLdPr var_18C
  loc_D3A531:  = Me.Value
  loc_D3A536: FLdRfVar var_19C
  loc_D3A539: LitVarI2 var_1AC, 0
  loc_D3A53E: HardType
  loc_D3A53F: GtVarBool
  loc_D3A541: FFreeAd var_178 = ""
  loc_D3A548: FFree1Var var_19C = ""
  loc_D3A54B: BranchF loc_D3A8E7
  loc_D3A54E: FLdRfVar var_19C
  loc_D3A551: FLdRfVar var_18C
  loc_D3A554: LitVarStr var_188, "TipoVenc"
  loc_D3A559: PopAdLdVar
  loc_D3A55A: FLdRfVar var_178
  loc_D3A55D: FLdPr Me
  loc_D3A560: MemLdPr global_64
  loc_D3A563:  = Me.Fields
  loc_D3A568: FLdPr var_178
  loc_D3A56B: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A570: FLdPr var_18C
  loc_D3A573:  = Me.Value
  loc_D3A578: FLdRfVar var_19C
  loc_D3A57B: FnCIntVar
  loc_D3A57D: LitI2_Byte 1
  loc_D3A57F: EqI2
  loc_D3A580: FFreeAd var_178 = ""
  loc_D3A587: FFree1Var var_19C = ""
  loc_D3A58A: BranchF loc_D3A891
  loc_D3A58D: LitI2_Byte 0
  loc_D3A58F: CR8I2
  loc_D3A590: FStFPR8 var_B8
  loc_D3A593: LitI2_Byte 0
  loc_D3A595: CR8I2
  loc_D3A596: FStFPR8 var_C0
  loc_D3A599: FLdRfVar var_170
  loc_D3A59C: FLdI2 iPeriodo
  loc_D3A59F: FLdRfVar var_8C
  loc_D3A5A2: NewIfNullPr clsnumebole
  loc_D3A5A5: from_stack_2v = clsnumebole.NuevoRegistro(from_stack_1v)
  loc_D3A5AA: ILdRf var_170
  loc_D3A5AD: FStR4 var_9C
  loc_D3A5B0: FLdRfVar var_2BC
  loc_D3A5B3: LitVarStr var_2B8, "FeveLico"
  loc_D3A5B8: PopAdLdVar
  loc_D3A5B9: FLdRfVar var_2A8
  loc_D3A5BC: FLdPr Me
  loc_D3A5BF: MemLdPr global_64
  loc_D3A5C2:  = Me.Fields
  loc_D3A5C7: FLdPr var_2A8
  loc_D3A5CA: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A5CF: FLdRfVar var_404
  loc_D3A5D2: FLdRfVar var_3F4
  loc_D3A5D5: LitVarStr var_3F0, "TotaBole"
  loc_D3A5DA: PopAdLdVar
  loc_D3A5DB: FLdRfVar var_3E0
  loc_D3A5DE: FLdPr Me
  loc_D3A5E1: MemLdPr global_64
  loc_D3A5E4:  = Me.Fields
  loc_D3A5E9: FLdPr var_3E0
  loc_D3A5EC: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A5F1: FLdPr var_3F4
  loc_D3A5F4:  = Me.Value
  loc_D3A5F9: FLdRfVar var_46C
  loc_D3A5FC: FLdRfVar var_45C
  loc_D3A5FF: LitVarStr var_458, "TotaBole"
  loc_D3A604: PopAdLdVar
  loc_D3A605: FLdRfVar var_448
  loc_D3A608: FLdPr Me
  loc_D3A60B: MemLdPr global_64
  loc_D3A60E:  = Me.Fields
  loc_D3A613: FLdPr var_448
  loc_D3A616: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A61B: FLdPr var_45C
  loc_D3A61E:  = Me.Value
  loc_D3A623: LitStr " INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiTili, NumeLiqu, CodiFapa, CuotDefa, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, ApreBole, TotaBole, CodiUsua) "
  loc_D3A626: LitStr " VALUES ("
  loc_D3A629: ConcatStr
  loc_D3A62A: FStStrNoPop var_134
  loc_D3A62D: FLdI2 iPeriodo
  loc_D3A630: CStrUI1
  loc_D3A632: FStStrNoPop var_138
  loc_D3A635: ConcatStr
  loc_D3A636: FStStrNoPop var_13C
  loc_D3A639: LitStr ","
  loc_D3A63C: ConcatStr
  loc_D3A63D: FStStrNoPop var_140
  loc_D3A640: ILdRf var_9C
  loc_D3A643: CStrI4
  loc_D3A645: FStStrNoPop var_144
  loc_D3A648: ConcatStr
  loc_D3A649: FStStrNoPop var_148
  loc_D3A64C: LitStr ",2,'"
  loc_D3A64F: ConcatStr
  loc_D3A650: CVarStr var_1BC
  loc_D3A653: FLdRfVar var_19C
  loc_D3A656: FLdRfVar var_18C
  loc_D3A659: LitVarStr var_188, "CodiCome"
  loc_D3A65E: PopAdLdVar
  loc_D3A65F: FLdRfVar var_178
  loc_D3A662: FLdPr Me
  loc_D3A665: MemLdPr global_64
  loc_D3A668:  = Me.Fields
  loc_D3A66D: FLdPr var_178
  loc_D3A670: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A675: FLdPr var_18C
  loc_D3A678:  = Me.Value
  loc_D3A67D: FLdRfVar var_19C
  loc_D3A680: ConcatVar var_1CC
  loc_D3A684: LitVarStr var_1AC, "','"
  loc_D3A689: ConcatVar var_1DC
  loc_D3A68D: FLdRfVar var_204
  loc_D3A690: FLdRfVar var_1F4
  loc_D3A693: LitVarStr var_1F0, "CucuPers"
  loc_D3A698: PopAdLdVar
  loc_D3A699: FLdRfVar var_1E0
  loc_D3A69C: FLdPr Me
  loc_D3A69F: MemLdPr global_64
  loc_D3A6A2:  = Me.Fields
  loc_D3A6A7: FLdPr var_1E0
  loc_D3A6AA: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A6AF: FLdPr var_1F4
  loc_D3A6B2:  = Me.Value
  loc_D3A6B7: FLdRfVar var_204
  loc_D3A6BA: ConcatVar var_214
  loc_D3A6BE: LitVarStr var_224, "','"
  loc_D3A6C3: ConcatVar var_234
  loc_D3A6C7: LitI4 1
  loc_D3A6CC: LitI4 1
  loc_D3A6D1: LitVarStr var_254, "yyyy-mm-dd"
  loc_D3A6D6: FStVarCopyObj var_264
  loc_D3A6D9: FLdRfVar var_264
  loc_D3A6DC: FLdRfVar var_A4
  loc_D3A6DF: CVarRef
  loc_D3A6E4: ImpAdCallI2 Format$(, )
  loc_D3A6E9: CVarStr var_274
  loc_D3A6EC: ConcatVar var_284
  loc_D3A6F0: LitVarStr var_294, "','"
  loc_D3A6F5: ConcatVar var_2A4
  loc_D3A6F9: LitI4 1
  loc_D3A6FE: LitI4 1
  loc_D3A703: LitVarStr var_2DC, "yyyy-mm-dd"
  loc_D3A708: FStVarCopyObj var_2EC
  loc_D3A70B: FLdRfVar var_2EC
  loc_D3A70E: FLdZeroAd var_2BC
  loc_D3A711: CVarAd
  loc_D3A715: ImpAdCallI2 Format$(, )
  loc_D3A71A: CVarStr var_2FC
  loc_D3A71D: ConcatVar var_30C
  loc_D3A721: LitVarStr var_31C, "',0,'Bimestral','Emitido',"
  loc_D3A726: ConcatVar var_32C
  loc_D3A72A: FLdRfVar var_354
  loc_D3A72D: FLdRfVar var_344
  loc_D3A730: LitVarStr var_340, "CodiTili"
  loc_D3A735: PopAdLdVar
  loc_D3A736: FLdRfVar var_330
  loc_D3A739: FLdPr Me
  loc_D3A73C: MemLdPr global_64
  loc_D3A73F:  = Me.Fields
  loc_D3A744: FLdPr var_330
  loc_D3A747: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A74C: FLdPr var_344
  loc_D3A74F:  = Me.Value
  loc_D3A754: FLdRfVar var_354
  loc_D3A757: ConcatVar var_364
  loc_D3A75B: LitVarStr var_374, ","
  loc_D3A760: ConcatVar var_384
  loc_D3A764: FLdRfVar var_3AC
  loc_D3A767: FLdRfVar var_39C
  loc_D3A76A: LitVarStr var_398, "NumeLiqu"
  loc_D3A76F: PopAdLdVar
  loc_D3A770: FLdRfVar var_388
  loc_D3A773: FLdPr Me
  loc_D3A776: MemLdPr global_64
  loc_D3A779:  = Me.Fields
  loc_D3A77E: FLdPr var_388
  loc_D3A781: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A786: FLdPr var_39C
  loc_D3A789:  = Me.Value
  loc_D3A78E: FLdRfVar var_3AC
  loc_D3A791: ConcatVar var_3BC
  loc_D3A795: LitVarStr var_3CC, ",0,0,"
  loc_D3A79A: ConcatVar var_3DC
  loc_D3A79E: LitI4 0
  loc_D3A7A3: LitI4 -1
  loc_D3A7A8: LitI4 1
  loc_D3A7AD: LitStr "."
  loc_D3A7B0: LitStr ","
  loc_D3A7B3: FLdRfVar var_404
  loc_D3A7B6: CStrVarTmp
  loc_D3A7B7: FStStrNoPop var_14C
  loc_D3A7BA: ImpAdCallI2 Replace(, , , , , )
  loc_D3A7BF: CVarStr var_414
  loc_D3A7C2: ConcatVar var_424
  loc_D3A7C6: LitVarStr var_434, ",0,0,0,0,0,0,"
  loc_D3A7CB: ConcatVar var_444
  loc_D3A7CF: LitI4 0
  loc_D3A7D4: LitI4 -1
  loc_D3A7D9: LitI4 1
  loc_D3A7DE: LitStr "."
  loc_D3A7E1: LitStr ","
  loc_D3A7E4: FLdRfVar var_46C
  loc_D3A7E7: CStrVarTmp
  loc_D3A7E8: FStStrNoPop var_150
  loc_D3A7EB: ImpAdCallI2 Replace(, , , , , )
  loc_D3A7F0: CVarStr var_47C
  loc_D3A7F3: ConcatVar var_48C
  loc_D3A7F7: LitVarStr var_49C, ",'"
  loc_D3A7FC: ConcatVar var_4AC
  loc_D3A800: ImpAdLdI4 MemVar_D9302C
  loc_D3A803: CVarStr var_4BC
  loc_D3A806: ConcatVar var_4CC
  loc_D3A80A: LitVarStr var_4DC, "');"
  loc_D3A80F: ConcatVar var_4EC
  loc_D3A813: CStrVarVal var_154
  loc_D3A817: Call EjecutarRsCls(from_stack_1v)
  loc_D3A81C: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_D3A831: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_330 = "": var_344 = "": var_388 = "": var_39C = "": var_3E0 = "": var_3F4 = "": var_448 = ""
  loc_D3A84E: FFreeVar var_4CC = "": var_4EC = "": var_1BC = "": var_19C = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_264 = "": var_234 = "": var_274 = "": var_284 = "": var_2CC = "": var_2EC = "": var_2A4 = "": var_2FC = "": var_30C = "": var_32C = "": var_354 = "": var_364 = "": var_384 = "": var_3AC = "": var_3BC = "": var_404 = "": var_3DC = "": var_414 = "": var_424 = "": var_46C = "": var_444 = "": var_47C = "": var_48C = ""
  loc_D3A891: FLdRfVar var_19C
  loc_D3A894: FLdRfVar var_18C
  loc_D3A897: LitVarStr var_188, "TipoVenc"
  loc_D3A89C: PopAdLdVar
  loc_D3A89D: FLdRfVar var_178
  loc_D3A8A0: FLdPr Me
  loc_D3A8A3: MemLdPr global_64
  loc_D3A8A6:  = Me.Fields
  loc_D3A8AB: FLdPr var_178
  loc_D3A8AE: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A8B3: FLdPr var_18C
  loc_D3A8B6:  = Me.Value
  loc_D3A8BB: FLdRfVar var_19C
  loc_D3A8BE: FnCIntVar
  loc_D3A8C0: LitI2_Byte 2
  loc_D3A8C2: EqI2
  loc_D3A8C3: FFreeAd var_178 = ""
  loc_D3A8CA: FFree1Var var_19C = ""
  loc_D3A8CD: BranchF loc_D3A8E7
  loc_D3A8D0: FLdRfVar var_170
  loc_D3A8D3: FLdI2 iPeriodo
  loc_D3A8D6: FLdRfVar var_8C
  loc_D3A8D9: NewIfNullPr clsnumebole
  loc_D3A8DC: from_stack_2v = clsnumebole.NuevoRegistro(from_stack_1v)
  loc_D3A8E1: ILdRf var_170
  loc_D3A8E4: FStR4 var_9C
  loc_D3A8E7: LitStr "SELECT PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, liqucome.CodiConc, TipoVenc, TipoLico, FealLico, FeveLico, ImpoLico, CrafLico, ExenLico, DescLico, GastLico, TotaLico, ActuLico, concepto.TiafConc, DeudLico FROM liqucome "
  loc_D3A8EA: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_D3A8ED: ConcatStr
  loc_D3A8EE: CVarStr var_1CC
  loc_D3A8F1: FLdRfVar var_18C
  loc_D3A8F4: LitVarStr var_188, "FealLico"
  loc_D3A8F9: PopAdLdVar
  loc_D3A8FA: FLdRfVar var_178
  loc_D3A8FD: FLdPr Me
  loc_D3A900: MemLdPr global_64
  loc_D3A903:  = Me.Fields
  loc_D3A908: FLdPr var_178
  loc_D3A90B: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A910: FLdZeroAd var_18C
  loc_D3A913: CVarAd
  loc_D3A917: FLdRfVar var_1BC
  loc_D3A91A: ImpAdCallFPR4  = Year()
  loc_D3A91F: FLdRfVar var_1BC
  loc_D3A922: ConcatVar var_1DC
  loc_D3A926: LitVarStr var_1AC, " AND concepto.CodiConc = liqucome.CodiConc"
  loc_D3A92B: ConcatVar var_204
  loc_D3A92F: LitVarStr var_1F0, " WHERE PeriLiqu = "
  loc_D3A934: ConcatVar var_214
  loc_D3A938: FLdRfVar var_234
  loc_D3A93B: FLdRfVar var_1F4
  loc_D3A93E: LitVarStr var_224, "PeriLiqu"
  loc_D3A943: PopAdLdVar
  loc_D3A944: FLdRfVar var_1E0
  loc_D3A947: FLdPr Me
  loc_D3A94A: MemLdPr global_64
  loc_D3A94D:  = Me.Fields
  loc_D3A952: FLdPr var_1E0
  loc_D3A955: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A95A: FLdPr var_1F4
  loc_D3A95D:  = Me.Value
  loc_D3A962: FLdRfVar var_234
  loc_D3A965: ConcatVar var_264
  loc_D3A969: LitVarStr var_244, " AND BimeLiqu = "
  loc_D3A96E: ConcatVar var_274
  loc_D3A972: FLdRfVar var_284
  loc_D3A975: FLdRfVar var_2BC
  loc_D3A978: LitVarStr var_254, "BimeLiqu"
  loc_D3A97D: PopAdLdVar
  loc_D3A97E: FLdRfVar var_2A8
  loc_D3A981: FLdPr Me
  loc_D3A984: MemLdPr global_64
  loc_D3A987:  = Me.Fields
  loc_D3A98C: FLdPr var_2A8
  loc_D3A98F: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A994: FLdPr var_2BC
  loc_D3A997:  = Me.Value
  loc_D3A99C: FLdRfVar var_284
  loc_D3A99F: ConcatVar var_2A4
  loc_D3A9A3: LitVarStr var_294, " AND CodiTili = "
  loc_D3A9A8: ConcatVar var_2CC
  loc_D3A9AC: FLdRfVar var_2EC
  loc_D3A9AF: FLdRfVar var_344
  loc_D3A9B2: LitVarStr var_2B8, "CodiTili"
  loc_D3A9B7: PopAdLdVar
  loc_D3A9B8: FLdRfVar var_330
  loc_D3A9BB: FLdPr Me
  loc_D3A9BE: MemLdPr global_64
  loc_D3A9C1:  = Me.Fields
  loc_D3A9C6: FLdPr var_330
  loc_D3A9C9: from_stack_2 = Me.Item(from_stack_1)
  loc_D3A9CE: FLdPr var_344
  loc_D3A9D1:  = Me.Value
  loc_D3A9D6: FLdRfVar var_2EC
  loc_D3A9D9: ConcatVar var_2FC
  loc_D3A9DD: LitVarStr var_2DC, " AND NumeLiqu = "
  loc_D3A9E2: ConcatVar var_30C
  loc_D3A9E6: FLdRfVar var_32C
  loc_D3A9E9: FLdRfVar var_39C
  loc_D3A9EC: LitVarStr var_31C, "NumeLiqu"
  loc_D3A9F1: PopAdLdVar
  loc_D3A9F2: FLdRfVar var_388
  loc_D3A9F5: FLdPr Me
  loc_D3A9F8: MemLdPr global_64
  loc_D3A9FB:  = Me.Fields
  loc_D3AA00: FLdPr var_388
  loc_D3AA03: from_stack_2 = Me.Item(from_stack_1)
  loc_D3AA08: FLdPr var_39C
  loc_D3AA0B:  = Me.Value
  loc_D3AA10: FLdRfVar var_32C
  loc_D3AA13: ConcatVar var_354
  loc_D3AA17: LitVarStr var_340, " AND CodiCome = "
  loc_D3AA1C: ConcatVar var_364
  loc_D3AA20: FLdRfVar var_384
  loc_D3AA23: FLdRfVar var_3F4
  loc_D3AA26: LitVarStr var_374, "CodiCome"
  loc_D3AA2B: PopAdLdVar
  loc_D3AA2C: FLdRfVar var_3E0
  loc_D3AA2F: FLdPr Me
  loc_D3AA32: MemLdPr global_64
  loc_D3AA35:  = Me.Fields
  loc_D3AA3A: FLdPr var_3E0
  loc_D3AA3D: from_stack_2 = Me.Item(from_stack_1)
  loc_D3AA42: FLdPr var_3F4
  loc_D3AA45:  = Me.Value
  loc_D3AA4A: FLdRfVar var_384
  loc_D3AA4D: ConcatVar var_3AC
  loc_D3AA51: LitVarStr var_398, " AND TipoVenc = "
  loc_D3AA56: ConcatVar var_3BC
  loc_D3AA5A: FLdRfVar var_3DC
  loc_D3AA5D: FLdRfVar var_45C
  loc_D3AA60: LitVarStr var_3CC, "TipoVenc"
  loc_D3AA65: PopAdLdVar
  loc_D3AA66: FLdRfVar var_448
  loc_D3AA69: FLdPr Me
  loc_D3AA6C: MemLdPr global_64
  loc_D3AA6F:  = Me.Fields
  loc_D3AA74: FLdPr var_448
  loc_D3AA77: from_stack_2 = Me.Item(from_stack_1)
  loc_D3AA7C: FLdPr var_45C
  loc_D3AA7F:  = Me.Value
  loc_D3AA84: FLdRfVar var_3DC
  loc_D3AA87: ConcatVar var_404
  loc_D3AA8B: LitVarStr var_3F0, " AND ActuLico = 'No' "
  loc_D3AA90: ConcatVar var_414
  loc_D3AA94: LitVarStr var_434, " ORDER BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, liqucome.CodiConc, TipoVenc"
  loc_D3AA99: ConcatVar var_424
  loc_D3AA9D: CStrVarVal var_134
  loc_D3AAA1: Call EjecutarRsCls3(from_stack_1v)
  loc_D3AAA6: FFree1Str var_134
  loc_D3AAA9: FFreeAd var_178 = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = "": var_39C = "": var_3E0 = "": var_3F4 = "": var_448 = ""
  loc_D3AAC6: FFreeVar var_19C = "": var_1CC = "": var_1BC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = "": var_30C = "": var_32C = "": var_354 = "": var_364 = "": var_384 = "": var_3AC = "": var_3BC = "": var_3DC = "": var_404 = "": var_414 = ""
  loc_D3AAFB: FLdRfVar var_170
  loc_D3AAFE: FLdPr Me
  loc_D3AB01: MemLdPr global_68
  loc_D3AB04:  = Me.RecordCount
  loc_D3AB09: ILdRf var_170
  loc_D3AB0C: LitI4 0
  loc_D3AB11: GtI4
  loc_D3AB12: BranchF loc_D3E498
  loc_D3AB15: LitI2_Byte 0
  loc_D3AB17: CR8I2
  loc_D3AB18: FStFPR8 var_114
  loc_D3AB1B: LitI2_Byte 0
  loc_D3AB1D: CR8I2
  loc_D3AB1E: FStFPR8 var_11C
  loc_D3AB21: LitI2_Byte 0
  loc_D3AB23: CR8I2
  loc_D3AB24: FStFPR8 var_124
  loc_D3AB27: LitI2_Byte 0
  loc_D3AB29: CR8I2
  loc_D3AB2A: FStFPR8 var_12C
  loc_D3AB2D: FLdPr Me
  loc_D3AB30: MemLdPr global_68
  loc_D3AB33: Me.MoveFirst
  loc_D3AB38: FLdRfVar var_172
  loc_D3AB3B: FLdPr Me
  loc_D3AB3E: MemLdPr global_68
  loc_D3AB41:  = Me.EOF
  loc_D3AB46: FLdI2 var_172
  loc_D3AB49: NotI4
  loc_D3AB4A: BranchF loc_D3E10C
  loc_D3AB4D: FLdRfVar var_19C
  loc_D3AB50: FLdRfVar var_18C
  loc_D3AB53: LitVarStr var_188, "TipoLico"
  loc_D3AB58: PopAdLdVar
  loc_D3AB59: FLdRfVar var_178
  loc_D3AB5C: FLdPr Me
  loc_D3AB5F: MemLdPr global_68
  loc_D3AB62:  = Me.Fields
  loc_D3AB67: FLdPr var_178
  loc_D3AB6A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3AB6F: FLdPr var_18C
  loc_D3AB72:  = Me.Value
  loc_D3AB77: FLdRfVar var_19C
  loc_D3AB7A: FStVar var_4FC
  loc_D3AB7E: FFreeAd var_178 = ""
  loc_D3AB85: FLdRfVar var_4FC
  loc_D3AB88: LitVarStr var_188, "Aforo"
  loc_D3AB8D: HardType
  loc_D3AB8E: EqVarBool
  loc_D3AB90: BranchF loc_D3DCEC
  loc_D3AB93: FLdRfVar var_19C
  loc_D3AB96: FLdRfVar var_18C
  loc_D3AB99: LitVarStr var_188, "TipoVenc"
  loc_D3AB9E: PopAdLdVar
  loc_D3AB9F: FLdRfVar var_178
  loc_D3ABA2: FLdPr Me
  loc_D3ABA5: MemLdPr global_68
  loc_D3ABA8:  = Me.Fields
  loc_D3ABAD: FLdPr var_178
  loc_D3ABB0: from_stack_2 = Me.Item(from_stack_1)
  loc_D3ABB5: FLdPr var_18C
  loc_D3ABB8:  = Me.Value
  loc_D3ABBD: FLdRfVar var_19C
  loc_D3ABC0: FnCIntVar
  loc_D3ABC2: LitI2_Byte 1
  loc_D3ABC4: EqI2
  loc_D3ABC5: FFreeAd var_178 = ""
  loc_D3ABCC: FFree1Var var_19C = ""
  loc_D3ABCF: BranchF loc_D3C98F
  loc_D3ABD2: FLdRfVar var_170
  loc_D3ABD5: FLdI2 iPeriodo
  loc_D3ABD8: FLdRfVar var_90
  loc_D3ABDB: NewIfNullPr clsctacte
  loc_D3ABDE: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_D3ABE3: ILdRf var_170
  loc_D3ABE6: FStR4 var_98
  loc_D3ABE9: FLdRfVar var_19C
  loc_D3ABEC: FLdRfVar var_18C
  loc_D3ABEF: LitVarStr var_188, "TotaBole"
  loc_D3ABF4: PopAdLdVar
  loc_D3ABF5: FLdRfVar var_178
  loc_D3ABF8: FLdPr Me
  loc_D3ABFB: MemLdPr global_64
  loc_D3ABFE:  = Me.Fields
  loc_D3AC03: FLdPr var_178
  loc_D3AC06: from_stack_2 = Me.Item(from_stack_1)
  loc_D3AC0B: FLdPr var_18C
  loc_D3AC0E:  = Me.Value
  loc_D3AC13: FLdRfVar var_19C
  loc_D3AC16: LitVarI2 var_1AC, 0
  loc_D3AC1B: HardType
  loc_D3AC1C: GtVarBool
  loc_D3AC1E: FFreeAd var_178 = ""
  loc_D3AC25: FFree1Var var_19C = ""
  loc_D3AC28: BranchF loc_D3AFA6
  loc_D3AC2B: FLdRfVar var_19C
  loc_D3AC2E: FLdRfVar var_18C
  loc_D3AC31: LitVarStr var_188, "TotaLico"
  loc_D3AC36: PopAdLdVar
  loc_D3AC37: FLdRfVar var_178
  loc_D3AC3A: FLdPr Me
  loc_D3AC3D: MemLdPr global_68
  loc_D3AC40:  = Me.Fields
  loc_D3AC45: FLdPr var_178
  loc_D3AC48: from_stack_2 = Me.Item(from_stack_1)
  loc_D3AC4D: FLdPr var_18C
  loc_D3AC50:  = Me.Value
  loc_D3AC55: FLdRfVar var_19C
  loc_D3AC58: FnCDblVar
  loc_D3AC5A: LitI2_Byte 0
  loc_D3AC5C: CR8I2
  loc_D3AC5D: GtR4
  loc_D3AC5E: FFreeAd var_178 = ""
  loc_D3AC65: FFree1Var var_19C = ""
  loc_D3AC68: BranchF loc_D3AFA3
  loc_D3AC6B: FLdRfVar var_444
  loc_D3AC6E: FLdRfVar var_504
  loc_D3AC71: LitVarStr var_458, "TotaLico"
  loc_D3AC76: PopAdLdVar
  loc_D3AC77: FLdRfVar var_500
  loc_D3AC7A: FLdPr Me
  loc_D3AC7D: MemLdPr global_68
  loc_D3AC80:  = Me.Fields
  loc_D3AC85: FLdPr var_500
  loc_D3AC88: from_stack_2 = Me.Item(from_stack_1)
  loc_D3AC8D: FLdPr var_504
  loc_D3AC90:  = Me.Value
  loc_D3AC95: FLdRfVar var_4AC
  loc_D3AC98: FLdRfVar var_50C
  loc_D3AC9B: LitVarStr var_4BC, "TotaLico"
  loc_D3ACA0: PopAdLdVar
  loc_D3ACA1: FLdRfVar var_508
  loc_D3ACA4: FLdPr Me
  loc_D3ACA7: MemLdPr global_68
  loc_D3ACAA:  = Me.Fields
  loc_D3ACAF: FLdPr var_508
  loc_D3ACB2: from_stack_2 = Me.Item(from_stack_1)
  loc_D3ACB7: FLdPr var_50C
  loc_D3ACBA:  = Me.Value
  loc_D3ACBF: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiTili, NumeLiqu, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo) "
  loc_D3ACC2: LitStr " VALUES ("
  loc_D3ACC5: ConcatStr
  loc_D3ACC6: FStStrNoPop var_134
  loc_D3ACC9: FLdI2 iPeriodo
  loc_D3ACCC: CStrUI1
  loc_D3ACCE: FStStrNoPop var_138
  loc_D3ACD1: ConcatStr
  loc_D3ACD2: FStStrNoPop var_13C
  loc_D3ACD5: LitStr ","
  loc_D3ACD8: ConcatStr
  loc_D3ACD9: FStStrNoPop var_140
  loc_D3ACDC: ILdRf var_9C
  loc_D3ACDF: CStrI4
  loc_D3ACE1: FStStrNoPop var_144
  loc_D3ACE4: ConcatStr
  loc_D3ACE5: FStStrNoPop var_148
  loc_D3ACE8: LitStr ","
  loc_D3ACEB: ConcatStr
  loc_D3ACEC: FStStrNoPop var_14C
  loc_D3ACEF: FLdI2 iPeriodo
  loc_D3ACF2: CStrUI1
  loc_D3ACF4: FStStrNoPop var_150
  loc_D3ACF7: ConcatStr
  loc_D3ACF8: FStStrNoPop var_154
  loc_D3ACFB: LitStr ","
  loc_D3ACFE: ConcatStr
  loc_D3ACFF: CVarStr var_1BC
  loc_D3AD02: FLdRfVar var_19C
  loc_D3AD05: FLdRfVar var_18C
  loc_D3AD08: LitVarStr var_188, "BimeLiqu"
  loc_D3AD0D: PopAdLdVar
  loc_D3AD0E: FLdRfVar var_178
  loc_D3AD11: FLdPr Me
  loc_D3AD14: MemLdPr global_68
  loc_D3AD17:  = Me.Fields
  loc_D3AD1C: FLdPr var_178
  loc_D3AD1F: from_stack_2 = Me.Item(from_stack_1)
  loc_D3AD24: FLdPr var_18C
  loc_D3AD27:  = Me.Value
  loc_D3AD2C: FLdRfVar var_19C
  loc_D3AD2F: ConcatVar var_1CC
  loc_D3AD33: LitVarStr var_1AC, ","
  loc_D3AD38: ConcatVar var_1DC
  loc_D3AD3C: ILdRf var_98
  loc_D3AD3F: CVarI4
  loc_D3AD43: ConcatVar var_204
  loc_D3AD47: LitVarStr var_224, ",1,1,"
  loc_D3AD4C: ConcatVar var_214
  loc_D3AD50: FLdRfVar var_234
  loc_D3AD53: FLdRfVar var_1F4
  loc_D3AD56: LitVarStr var_244, "CodiTili"
  loc_D3AD5B: PopAdLdVar
  loc_D3AD5C: FLdRfVar var_1E0
  loc_D3AD5F: FLdPr Me
  loc_D3AD62: MemLdPr global_68
  loc_D3AD65:  = Me.Fields
  loc_D3AD6A: FLdPr var_1E0
  loc_D3AD6D: from_stack_2 = Me.Item(from_stack_1)
  loc_D3AD72: FLdPr var_1F4
  loc_D3AD75:  = Me.Value
  loc_D3AD7A: FLdRfVar var_234
  loc_D3AD7D: ConcatVar var_264
  loc_D3AD81: LitVarStr var_254, ","
  loc_D3AD86: ConcatVar var_274
  loc_D3AD8A: FLdRfVar var_284
  loc_D3AD8D: FLdRfVar var_2BC
  loc_D3AD90: LitVarStr var_294, "NumeLiqu"
  loc_D3AD95: PopAdLdVar
  loc_D3AD96: FLdRfVar var_2A8
  loc_D3AD99: FLdPr Me
  loc_D3AD9C: MemLdPr global_68
  loc_D3AD9F:  = Me.Fields
  loc_D3ADA4: FLdPr var_2A8
  loc_D3ADA7: from_stack_2 = Me.Item(from_stack_1)
  loc_D3ADAC: FLdPr var_2BC
  loc_D3ADAF:  = Me.Value
  loc_D3ADB4: FLdRfVar var_284
  loc_D3ADB7: ConcatVar var_2A4
  loc_D3ADBB: LitVarStr var_2B8, ",2,'"
  loc_D3ADC0: ConcatVar var_2CC
  loc_D3ADC4: FLdRfVar var_2EC
  loc_D3ADC7: FLdRfVar var_344
  loc_D3ADCA: LitVarStr var_2DC, "CodiCome"
  loc_D3ADCF: PopAdLdVar
  loc_D3ADD0: FLdRfVar var_330
  loc_D3ADD3: FLdPr Me
  loc_D3ADD6: MemLdPr global_68
  loc_D3ADD9:  = Me.Fields
  loc_D3ADDE: FLdPr var_330
  loc_D3ADE1: from_stack_2 = Me.Item(from_stack_1)
  loc_D3ADE6: FLdPr var_344
  loc_D3ADE9:  = Me.Value
  loc_D3ADEE: FLdRfVar var_2EC
  loc_D3ADF1: ConcatVar var_2FC
  loc_D3ADF5: LitVarStr var_31C, "','Bimestral',0,0,0,"
  loc_D3ADFA: ConcatVar var_30C
  loc_D3ADFE: FLdRfVar var_32C
  loc_D3AE01: FLdRfVar var_39C
  loc_D3AE04: LitVarStr var_340, "TiafConc"
  loc_D3AE09: PopAdLdVar
  loc_D3AE0A: FLdRfVar var_388
  loc_D3AE0D: FLdPr Me
  loc_D3AE10: MemLdPr global_68
  loc_D3AE13:  = Me.Fields
  loc_D3AE18: FLdPr var_388
  loc_D3AE1B: from_stack_2 = Me.Item(from_stack_1)
  loc_D3AE20: FLdPr var_39C
  loc_D3AE23:  = Me.Value
  loc_D3AE28: FLdRfVar var_32C
  loc_D3AE2B: ConcatVar var_354
  loc_D3AE2F: LitVarStr var_374, ","
  loc_D3AE34: ConcatVar var_364
  loc_D3AE38: FLdRfVar var_3F4
  loc_D3AE3B: LitVarStr var_398, "FealLico"
  loc_D3AE40: PopAdLdVar
  loc_D3AE41: FLdRfVar var_3E0
  loc_D3AE44: FLdPr Me
  loc_D3AE47: MemLdPr global_68
  loc_D3AE4A:  = Me.Fields
  loc_D3AE4F: FLdPr var_3E0
  loc_D3AE52: from_stack_2 = Me.Item(from_stack_1)
  loc_D3AE57: FLdZeroAd var_3F4
  loc_D3AE5A: CVarAd
  loc_D3AE5E: FLdRfVar var_3AC
  loc_D3AE61: ImpAdCallFPR4  = Year()
  loc_D3AE66: FLdRfVar var_3AC
  loc_D3AE69: ConcatVar var_3BC
  loc_D3AE6D: LitVarStr var_3CC, ",'"
  loc_D3AE72: ConcatVar var_3DC
  loc_D3AE76: FLdRfVar var_404
  loc_D3AE79: FLdRfVar var_45C
  loc_D3AE7C: LitVarStr var_3F0, "CodiConc"
  loc_D3AE81: PopAdLdVar
  loc_D3AE82: FLdRfVar var_448
  loc_D3AE85: FLdPr Me
  loc_D3AE88: MemLdPr global_68
  loc_D3AE8B:  = Me.Fields
  loc_D3AE90: FLdPr var_448
  loc_D3AE93: from_stack_2 = Me.Item(from_stack_1)
  loc_D3AE98: FLdPr var_45C
  loc_D3AE9B:  = Me.Value
  loc_D3AEA0: FLdRfVar var_404
  loc_D3AEA3: ConcatVar var_414
  loc_D3AEA7: LitVarStr var_434, "',"
  loc_D3AEAC: ConcatVar var_424
  loc_D3AEB0: LitI4 0
  loc_D3AEB5: LitI4 -1
  loc_D3AEBA: LitI4 1
  loc_D3AEBF: LitStr "."
  loc_D3AEC2: LitStr ","
  loc_D3AEC5: FLdRfVar var_444
  loc_D3AEC8: FnCDblVar
  loc_D3AECA: CStrR8
  loc_D3AECC: FStStrNoPop var_158
  loc_D3AECF: ImpAdCallI2 Replace(, , , , , )
  loc_D3AED4: CVarStr var_46C
  loc_D3AED7: ConcatVar var_47C
  loc_D3AEDB: LitVarStr var_49C, ",0,0,0,0,0,0,"
  loc_D3AEE0: ConcatVar var_48C
  loc_D3AEE4: LitI4 0
  loc_D3AEE9: LitI4 -1
  loc_D3AEEE: LitI4 1
  loc_D3AEF3: LitStr "."
  loc_D3AEF6: LitStr ","
  loc_D3AEF9: FLdRfVar var_4AC
  loc_D3AEFC: CStrVarTmp
  loc_D3AEFD: FStStrNoPop var_15C
  loc_D3AF00: ImpAdCallI2 Replace(, , , , , )
  loc_D3AF05: CVarStr var_4CC
  loc_D3AF08: ConcatVar var_4EC
  loc_D3AF0C: LitVarStr var_4DC, ");"
  loc_D3AF11: ConcatVar var_51C
  loc_D3AF15: CStrVarVal var_160
  loc_D3AF19: Call EjecutarRsCls(from_stack_1v)
  loc_D3AF1E: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_D3AF39: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = "": var_39C = "": var_3E0 = "": var_448 = "": var_45C = "": var_500 = "": var_504 = "": var_508 = ""
  loc_D3AF5E: FFreeVar var_4CC = "": var_4EC = "": var_51C = "": var_1BC = "": var_19C = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = "": var_30C = "": var_32C = "": var_354 = "": var_384 = "": var_364 = "": var_3AC = "": var_3BC = "": var_3DC = "": var_404 = "": var_414 = "": var_444 = "": var_424 = "": var_46C = "": var_47C = "": var_4AC = ""
  loc_D3AFA3: Branch loc_D3AFAE
  loc_D3AFA6: LitI4 0
  loc_D3AFAB: FStR4 var_9C
  loc_D3AFAE: FLdRfVar var_39C
  loc_D3AFB1: LitVarStr var_53C, "FeveLico"
  loc_D3AFB6: PopAdLdVar
  loc_D3AFB7: FLdRfVar var_388
  loc_D3AFBA: FLdPr Me
  loc_D3AFBD: MemLdPr global_68
  loc_D3AFC0:  = Me.Fields
  loc_D3AFC5: FLdPr var_388
  loc_D3AFC8: from_stack_2 = Me.Item(from_stack_1)
  loc_D3AFCD: FLdRfVar var_66C
  loc_D3AFD0: FLdRfVar var_50C
  loc_D3AFD3: LitVarStr var_65C, "ImpoLico"
  loc_D3AFD8: PopAdLdVar
  loc_D3AFD9: FLdRfVar var_508
  loc_D3AFDC: FLdPr Me
  loc_D3AFDF: MemLdPr global_68
  loc_D3AFE2:  = Me.Fields
  loc_D3AFE7: FLdPr var_508
  loc_D3AFEA: from_stack_2 = Me.Item(from_stack_1)
  loc_D3AFEF: FLdPr var_50C
  loc_D3AFF2:  = Me.Value
  loc_D3AFF7: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D3AFFA: LitStr " VALUES (2,'"
  loc_D3AFFD: ConcatStr
  loc_D3AFFE: CVarStr var_1BC
  loc_D3B001: FLdRfVar var_19C
  loc_D3B004: FLdRfVar var_18C
  loc_D3B007: LitVarStr var_188, "CodiCome"
  loc_D3B00C: PopAdLdVar
  loc_D3B00D: FLdRfVar var_178
  loc_D3B010: FLdPr Me
  loc_D3B013: MemLdPr global_68
  loc_D3B016:  = Me.Fields
  loc_D3B01B: FLdPr var_178
  loc_D3B01E: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B023: FLdPr var_18C
  loc_D3B026:  = Me.Value
  loc_D3B02B: FLdRfVar var_19C
  loc_D3B02E: ConcatVar var_1CC
  loc_D3B032: LitVarStr var_1AC, "',"
  loc_D3B037: ConcatVar var_1DC
  loc_D3B03B: FLdI2 iPeriodo
  loc_D3B03E: CVarI2 var_1F0
  loc_D3B041: ConcatVar var_204
  loc_D3B045: LitVarStr var_224, ","
  loc_D3B04A: ConcatVar var_214
  loc_D3B04E: FLdRfVar var_234
  loc_D3B051: FLdRfVar var_1F4
  loc_D3B054: LitVarStr var_244, "BimeLiqu"
  loc_D3B059: PopAdLdVar
  loc_D3B05A: FLdRfVar var_1E0
  loc_D3B05D: FLdPr Me
  loc_D3B060: MemLdPr global_68
  loc_D3B063:  = Me.Fields
  loc_D3B068: FLdPr var_1E0
  loc_D3B06B: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B070: FLdPr var_1F4
  loc_D3B073:  = Me.Value
  loc_D3B078: FLdRfVar var_234
  loc_D3B07B: ConcatVar var_264
  loc_D3B07F: LitVarStr var_254, ","
  loc_D3B084: ConcatVar var_274
  loc_D3B088: ILdRf var_98
  loc_D3B08B: CVarI4
  loc_D3B08F: ConcatVar var_284
  loc_D3B093: LitVarStr var_2B8, ",1,"
  loc_D3B098: ConcatVar var_2A4
  loc_D3B09C: FLdRfVar var_2CC
  loc_D3B09F: FLdRfVar var_2BC
  loc_D3B0A2: LitVarStr var_2DC, "CodiTili"
  loc_D3B0A7: PopAdLdVar
  loc_D3B0A8: FLdRfVar var_2A8
  loc_D3B0AB: FLdPr Me
  loc_D3B0AE: MemLdPr global_68
  loc_D3B0B1:  = Me.Fields
  loc_D3B0B6: FLdPr var_2A8
  loc_D3B0B9: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B0BE: FLdPr var_2BC
  loc_D3B0C1:  = Me.Value
  loc_D3B0C6: FLdRfVar var_2CC
  loc_D3B0C9: ConcatVar var_2EC
  loc_D3B0CD: LitVarStr var_31C, ","
  loc_D3B0D2: ConcatVar var_2FC
  loc_D3B0D6: FLdRfVar var_30C
  loc_D3B0D9: FLdRfVar var_344
  loc_D3B0DC: LitVarStr var_340, "NumeLiqu"
  loc_D3B0E1: PopAdLdVar
  loc_D3B0E2: FLdRfVar var_330
  loc_D3B0E5: FLdPr Me
  loc_D3B0E8: MemLdPr global_68
  loc_D3B0EB:  = Me.Fields
  loc_D3B0F0: FLdPr var_330
  loc_D3B0F3: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B0F8: FLdPr var_344
  loc_D3B0FB:  = Me.Value
  loc_D3B100: FLdRfVar var_30C
  loc_D3B103: ConcatVar var_32C
  loc_D3B107: LitVarStr var_374, ","
  loc_D3B10C: ConcatVar var_354
  loc_D3B110: LitVarI2 var_364, 0
  loc_D3B115: FLdRfVar iPeriodo
  loc_D3B118: CVarRef
  loc_D3B11D: ILdRf var_9C
  loc_D3B120: LitI4 0
  loc_D3B125: NeI4
  loc_D3B126: CVarBoolI2 var_398
  loc_D3B12A: FLdRfVar var_384
  loc_D3B12D: ImpAdCallFPR4  = IIf(, , )
  loc_D3B132: FLdRfVar var_384
  loc_D3B135: ConcatVar var_3AC
  loc_D3B139: LitVarStr var_434, ","
  loc_D3B13E: ConcatVar var_3BC
  loc_D3B142: ILdRf var_9C
  loc_D3B145: CVarI4
  loc_D3B149: ConcatVar var_3DC
  loc_D3B14D: LitVarStr var_49C, ",'Bimestral','"
  loc_D3B152: ConcatVar var_404
  loc_D3B156: LitI4 1
  loc_D3B15B: LitI4 1
  loc_D3B160: LitVarStr var_4DC, "yyyy-mm-dd"
  loc_D3B165: FStVarCopyObj var_414
  loc_D3B168: FLdRfVar var_414
  loc_D3B16B: FLdRfVar var_A4
  loc_D3B16E: CVarRef
  loc_D3B173: ImpAdCallI2 Format$(, )
  loc_D3B178: CVarStr var_424
  loc_D3B17B: ConcatVar var_444
  loc_D3B17F: LitVarStr var_52C, "','"
  loc_D3B184: ConcatVar var_46C
  loc_D3B188: LitI4 1
  loc_D3B18D: LitI4 1
  loc_D3B192: LitVarStr var_54C, "yyyy-mm-dd"
  loc_D3B197: FStVarCopyObj var_48C
  loc_D3B19A: FLdRfVar var_48C
  loc_D3B19D: FLdZeroAd var_39C
  loc_D3B1A0: CVarAd
  loc_D3B1A4: ImpAdCallI2 Format$(, )
  loc_D3B1A9: CVarStr var_4AC
  loc_D3B1AC: ConcatVar var_4CC
  loc_D3B1B0: LitVarStr var_55C, "',Null,0,"
  loc_D3B1B5: ConcatVar var_4EC
  loc_D3B1B9: FLdRfVar var_3F4
  loc_D3B1BC: LitVarStr var_56C, "FealLico"
  loc_D3B1C1: PopAdLdVar
  loc_D3B1C2: FLdRfVar var_3E0
  loc_D3B1C5: FLdPr Me
  loc_D3B1C8: MemLdPr global_68
  loc_D3B1CB:  = Me.Fields
  loc_D3B1D0: FLdPr var_3E0
  loc_D3B1D3: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B1D8: FLdZeroAd var_3F4
  loc_D3B1DB: CVarAd
  loc_D3B1DF: FLdRfVar var_57C
  loc_D3B1E2: ImpAdCallFPR4  = Year()
  loc_D3B1E7: FLdRfVar var_57C
  loc_D3B1EA: ConcatVar var_58C
  loc_D3B1EE: LitVarStr var_59C, ",'"
  loc_D3B1F3: ConcatVar var_5AC
  loc_D3B1F7: FLdRfVar var_5CC
  loc_D3B1FA: FLdRfVar var_45C
  loc_D3B1FD: LitVarStr var_5BC, "CodiConc"
  loc_D3B202: PopAdLdVar
  loc_D3B203: FLdRfVar var_448
  loc_D3B206: FLdPr Me
  loc_D3B209: MemLdPr global_68
  loc_D3B20C:  = Me.Fields
  loc_D3B211: FLdPr var_448
  loc_D3B214: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B219: FLdPr var_45C
  loc_D3B21C:  = Me.Value
  loc_D3B221: FLdRfVar var_5CC
  loc_D3B224: ConcatVar var_5DC
  loc_D3B228: LitVarStr var_5EC, "',0,0,0,"
  loc_D3B22D: ConcatVar var_5FC
  loc_D3B231: FLdRfVar var_61C
  loc_D3B234: FLdRfVar var_504
  loc_D3B237: LitVarStr var_60C, "TiafConc"
  loc_D3B23C: PopAdLdVar
  loc_D3B23D: FLdRfVar var_500
  loc_D3B240: FLdPr Me
  loc_D3B243: MemLdPr global_68
  loc_D3B246:  = Me.Fields
  loc_D3B24B: FLdPr var_500
  loc_D3B24E: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B253: FLdPr var_504
  loc_D3B256:  = Me.Value
  loc_D3B25B: FLdRfVar var_61C
  loc_D3B25E: ConcatVar var_62C
  loc_D3B262: LitVarStr var_63C, ",'','',0,0,'',"
  loc_D3B267: ConcatVar var_64C
  loc_D3B26B: LitI4 0
  loc_D3B270: LitI4 -1
  loc_D3B275: LitI4 1
  loc_D3B27A: LitStr "."
  loc_D3B27D: LitStr ","
  loc_D3B280: FLdRfVar var_66C
  loc_D3B283: CStrVarTmp
  loc_D3B284: FStStrNoPop var_134
  loc_D3B287: ImpAdCallI2 Replace(, , , , , )
  loc_D3B28C: CVarStr var_67C
  loc_D3B28F: ConcatVar var_68C
  loc_D3B293: LitVarStr var_69C, ",0,'"
  loc_D3B298: ConcatVar var_6AC
  loc_D3B29C: ImpAdLdI4 MemVar_D9302C
  loc_D3B29F: CVarStr var_6BC
  loc_D3B2A2: ConcatVar var_6CC
  loc_D3B2A6: LitVarStr var_6DC, "');"
  loc_D3B2AB: ConcatVar var_6EC
  loc_D3B2AF: CStrVarVal var_138
  loc_D3B2B3: Call EjecutarRsCls(from_stack_1v)
  loc_D3B2B8: FFreeStr var_134 = ""
  loc_D3B2BF: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = "": var_3E0 = "": var_448 = "": var_45C = "": var_500 = "": var_504 = "": var_508 = ""
  loc_D3B2E2: FFreeVar var_4AC = "": var_4CC = "": var_51C = "": var_4EC = "": var_57C = "": var_58C = "": var_5AC = "": var_5CC = "": var_5DC = "": var_5FC = "": var_61C = "": var_62C = "": var_66C = "": var_64C = "": var_67C = "": var_68C = "": var_6AC = "": var_6CC = "": var_6EC = "": var_1BC = "": var_19C = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = "": var_30C = "": var_32C = "": var_398 = "": var_364 = "": var_354 = "": var_384 = "": var_3AC = "": var_3BC = "": var_3DC = "": var_414 = "": var_404 = "": var_424 = "": var_444 = "": var_47C = "": var_48C = ""
  loc_D3B347: FLdRfVar var_19C
  loc_D3B34A: FLdRfVar var_18C
  loc_D3B34D: LitVarStr var_188, "DescLico"
  loc_D3B352: PopAdLdVar
  loc_D3B353: FLdRfVar var_178
  loc_D3B356: FLdPr Me
  loc_D3B359: MemLdPr global_68
  loc_D3B35C:  = Me.Fields
  loc_D3B361: FLdPr var_178
  loc_D3B364: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B369: FLdPr var_18C
  loc_D3B36C:  = Me.Value
  loc_D3B371: FLdRfVar var_19C
  loc_D3B374: LitVarI2 var_1AC, 0
  loc_D3B379: HardType
  loc_D3B37A: GtVarBool
  loc_D3B37C: FFreeAd var_178 = ""
  loc_D3B383: FFree1Var var_19C = ""
  loc_D3B386: BranchF loc_D3B706
  loc_D3B389: FLdFPR8 var_B8
  loc_D3B38C: CVarR8
  loc_D3B390: FLdRfVar var_19C
  loc_D3B393: FLdRfVar var_18C
  loc_D3B396: LitVarStr var_188, "DescLico"
  loc_D3B39B: PopAdLdVar
  loc_D3B39C: FLdRfVar var_178
  loc_D3B39F: FLdPr Me
  loc_D3B3A2: MemLdPr global_68
  loc_D3B3A5:  = Me.Fields
  loc_D3B3AA: FLdPr var_178
  loc_D3B3AD: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B3B2: FLdPr var_18C
  loc_D3B3B5:  = Me.Value
  loc_D3B3BA: FLdRfVar var_19C
  loc_D3B3BD: AddVar var_1BC
  loc_D3B3C1: CR4Var
  loc_D3B3C2: FStFPR8 var_B8
  loc_D3B3C5: FFreeAd var_178 = ""
  loc_D3B3CC: FFreeVar var_19C = ""
  loc_D3B3D3: FLdRfVar var_5FC
  loc_D3B3D6: FLdRfVar var_45C
  loc_D3B3D9: LitVarStr var_60C, "DescLico"
  loc_D3B3DE: PopAdLdVar
  loc_D3B3DF: FLdRfVar var_448
  loc_D3B3E2: FLdPr Me
  loc_D3B3E5: MemLdPr global_68
  loc_D3B3E8:  = Me.Fields
  loc_D3B3ED: FLdPr var_448
  loc_D3B3F0: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B3F5: FLdPr var_45C
  loc_D3B3F8:  = Me.Value
  loc_D3B3FD: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D3B400: LitStr " VALUES (2,'"
  loc_D3B403: ConcatStr
  loc_D3B404: CVarStr var_1BC
  loc_D3B407: FLdRfVar var_19C
  loc_D3B40A: FLdRfVar var_18C
  loc_D3B40D: LitVarStr var_188, "CodiCome"
  loc_D3B412: PopAdLdVar
  loc_D3B413: FLdRfVar var_178
  loc_D3B416: FLdPr Me
  loc_D3B419: MemLdPr global_68
  loc_D3B41C:  = Me.Fields
  loc_D3B421: FLdPr var_178
  loc_D3B424: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B429: FLdPr var_18C
  loc_D3B42C:  = Me.Value
  loc_D3B431: FLdRfVar var_19C
  loc_D3B434: ConcatVar var_1CC
  loc_D3B438: LitVarStr var_1AC, "',"
  loc_D3B43D: ConcatVar var_1DC
  loc_D3B441: FLdI2 iPeriodo
  loc_D3B444: CVarI2 var_1F0
  loc_D3B447: ConcatVar var_204
  loc_D3B44B: LitVarStr var_224, ","
  loc_D3B450: ConcatVar var_214
  loc_D3B454: FLdRfVar var_234
  loc_D3B457: FLdRfVar var_1F4
  loc_D3B45A: LitVarStr var_244, "BimeLiqu"
  loc_D3B45F: PopAdLdVar
  loc_D3B460: FLdRfVar var_1E0
  loc_D3B463: FLdPr Me
  loc_D3B466: MemLdPr global_68
  loc_D3B469:  = Me.Fields
  loc_D3B46E: FLdPr var_1E0
  loc_D3B471: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B476: FLdPr var_1F4
  loc_D3B479:  = Me.Value
  loc_D3B47E: FLdRfVar var_234
  loc_D3B481: ConcatVar var_264
  loc_D3B485: LitVarStr var_254, ","
  loc_D3B48A: ConcatVar var_274
  loc_D3B48E: ILdRf var_98
  loc_D3B491: CVarI4
  loc_D3B495: ConcatVar var_284
  loc_D3B499: LitVarStr var_2B8, ",2,"
  loc_D3B49E: ConcatVar var_2A4
  loc_D3B4A2: FLdRfVar var_2CC
  loc_D3B4A5: FLdRfVar var_2BC
  loc_D3B4A8: LitVarStr var_2DC, "CodiTili"
  loc_D3B4AD: PopAdLdVar
  loc_D3B4AE: FLdRfVar var_2A8
  loc_D3B4B1: FLdPr Me
  loc_D3B4B4: MemLdPr global_68
  loc_D3B4B7:  = Me.Fields
  loc_D3B4BC: FLdPr var_2A8
  loc_D3B4BF: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B4C4: FLdPr var_2BC
  loc_D3B4C7:  = Me.Value
  loc_D3B4CC: FLdRfVar var_2CC
  loc_D3B4CF: ConcatVar var_2EC
  loc_D3B4D3: LitVarStr var_31C, ","
  loc_D3B4D8: ConcatVar var_2FC
  loc_D3B4DC: FLdRfVar var_30C
  loc_D3B4DF: FLdRfVar var_344
  loc_D3B4E2: LitVarStr var_340, "NumeLiqu"
  loc_D3B4E7: PopAdLdVar
  loc_D3B4E8: FLdRfVar var_330
  loc_D3B4EB: FLdPr Me
  loc_D3B4EE: MemLdPr global_68
  loc_D3B4F1:  = Me.Fields
  loc_D3B4F6: FLdPr var_330
  loc_D3B4F9: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B4FE: FLdPr var_344
  loc_D3B501:  = Me.Value
  loc_D3B506: FLdRfVar var_30C
  loc_D3B509: ConcatVar var_32C
  loc_D3B50D: LitVarStr var_374, ","
  loc_D3B512: ConcatVar var_354
  loc_D3B516: LitVarI2 var_364, 0
  loc_D3B51B: FLdRfVar iPeriodo
  loc_D3B51E: CVarRef
  loc_D3B523: ILdRf var_9C
  loc_D3B526: LitI4 0
  loc_D3B52B: NeI4
  loc_D3B52C: CVarBoolI2 var_398
  loc_D3B530: FLdRfVar var_384
  loc_D3B533: ImpAdCallFPR4  = IIf(, , )
  loc_D3B538: FLdRfVar var_384
  loc_D3B53B: ConcatVar var_3AC
  loc_D3B53F: LitVarStr var_434, ","
  loc_D3B544: ConcatVar var_3BC
  loc_D3B548: ILdRf var_9C
  loc_D3B54B: CVarI4
  loc_D3B54F: ConcatVar var_3DC
  loc_D3B553: LitVarStr var_49C, ",'Bimestral','"
  loc_D3B558: ConcatVar var_404
  loc_D3B55C: LitI4 1
  loc_D3B561: LitI4 1
  loc_D3B566: LitVarStr var_4DC, "yyyy-mm-dd"
  loc_D3B56B: FStVarCopyObj var_414
  loc_D3B56E: FLdRfVar var_414
  loc_D3B571: FLdRfVar var_A4
  loc_D3B574: CVarRef
  loc_D3B579: ImpAdCallI2 Format$(, )
  loc_D3B57E: CVarStr var_424
  loc_D3B581: ConcatVar var_444
  loc_D3B585: LitVarStr var_52C, "','"
  loc_D3B58A: ConcatVar var_46C
  loc_D3B58E: LitI4 1
  loc_D3B593: LitI4 1
  loc_D3B598: LitVarStr var_54C, "yyyy-mm-dd"
  loc_D3B59D: FStVarCopyObj var_47C
  loc_D3B5A0: FLdRfVar var_47C
  loc_D3B5A3: FLdRfVar var_A4
  loc_D3B5A6: CVarRef
  loc_D3B5AB: ImpAdCallI2 Format$(, )
  loc_D3B5B0: CVarStr var_48C
  loc_D3B5B3: ConcatVar var_4AC
  loc_D3B5B7: LitVarStr var_55C, "',Null,0,"
  loc_D3B5BC: ConcatVar var_4CC
  loc_D3B5C0: FLdRfVar var_39C
  loc_D3B5C3: LitVarStr var_56C, "FealLico"
  loc_D3B5C8: PopAdLdVar
  loc_D3B5C9: FLdRfVar var_388
  loc_D3B5CC: FLdPr Me
  loc_D3B5CF: MemLdPr global_68
  loc_D3B5D2:  = Me.Fields
  loc_D3B5D7: FLdPr var_388
  loc_D3B5DA: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B5DF: FLdZeroAd var_39C
  loc_D3B5E2: CVarAd
  loc_D3B5E6: FLdRfVar var_51C
  loc_D3B5E9: ImpAdCallFPR4  = Year()
  loc_D3B5EE: FLdRfVar var_51C
  loc_D3B5F1: ConcatVar var_57C
  loc_D3B5F5: LitVarStr var_59C, ",'"
  loc_D3B5FA: ConcatVar var_58C
  loc_D3B5FE: FLdRfVar var_5AC
  loc_D3B601: FLdRfVar var_3F4
  loc_D3B604: LitVarStr var_5BC, "CodiConc"
  loc_D3B609: PopAdLdVar
  loc_D3B60A: FLdRfVar var_3E0
  loc_D3B60D: FLdPr Me
  loc_D3B610: MemLdPr global_68
  loc_D3B613:  = Me.Fields
  loc_D3B618: FLdPr var_3E0
  loc_D3B61B: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B620: FLdPr var_3F4
  loc_D3B623:  = Me.Value
  loc_D3B628: FLdRfVar var_5AC
  loc_D3B62B: ConcatVar var_5CC
  loc_D3B62F: LitVarStr var_5EC, "',0,0,0,6,'','',0,0,'',0,"
  loc_D3B634: ConcatVar var_5DC
  loc_D3B638: LitI4 0
  loc_D3B63D: LitI4 -1
  loc_D3B642: LitI4 1
  loc_D3B647: LitStr "."
  loc_D3B64A: LitStr ","
  loc_D3B64D: FLdRfVar var_5FC
  loc_D3B650: CStrVarTmp
  loc_D3B651: FStStrNoPop var_134
  loc_D3B654: ImpAdCallI2 Replace(, , , , , )
  loc_D3B659: CVarStr var_61C
  loc_D3B65C: ConcatVar var_62C
  loc_D3B660: LitVarStr var_63C, ",'"
  loc_D3B665: ConcatVar var_64C
  loc_D3B669: ImpAdLdI4 MemVar_D9302C
  loc_D3B66C: CVarStr var_65C
  loc_D3B66F: ConcatVar var_66C
  loc_D3B673: LitVarStr var_69C, "');"
  loc_D3B678: ConcatVar var_67C
  loc_D3B67C: CStrVarVal var_138
  loc_D3B680: Call EjecutarRsCls(from_stack_1v)
  loc_D3B685: FFreeStr var_134 = ""
  loc_D3B68C: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = "": var_3E0 = "": var_3F4 = "": var_448 = ""
  loc_D3B6A9: FFreeVar var_4AC = "": var_4EC = "": var_4CC = "": var_51C = "": var_57C = "": var_58C = "": var_5AC = "": var_5CC = "": var_5FC = "": var_5DC = "": var_61C = "": var_62C = "": var_64C = "": var_66C = "": var_67C = "": var_1BC = "": var_19C = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = "": var_30C = "": var_32C = "": var_398 = "": var_364 = "": var_354 = "": var_384 = "": var_3AC = "": var_3BC = "": var_3DC = "": var_414 = "": var_404 = "": var_424 = "": var_444 = "": var_47C = "": var_46C = ""
  loc_D3B706: FLdRfVar var_19C
  loc_D3B709: FLdRfVar var_18C
  loc_D3B70C: LitVarStr var_188, "ExenLico"
  loc_D3B711: PopAdLdVar
  loc_D3B712: FLdRfVar var_178
  loc_D3B715: FLdPr Me
  loc_D3B718: MemLdPr global_68
  loc_D3B71B:  = Me.Fields
  loc_D3B720: FLdPr var_178
  loc_D3B723: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B728: FLdPr var_18C
  loc_D3B72B:  = Me.Value
  loc_D3B730: FLdRfVar var_19C
  loc_D3B733: FnCDblVar
  loc_D3B735: LitI2_Byte 0
  loc_D3B737: CR8I2
  loc_D3B738: GtR4
  loc_D3B739: FFreeAd var_178 = ""
  loc_D3B740: FFree1Var var_19C = ""
  loc_D3B743: BranchF loc_D3BAC3
  loc_D3B746: FLdFPR8 var_C0
  loc_D3B749: CVarR8
  loc_D3B74D: FLdRfVar var_19C
  loc_D3B750: FLdRfVar var_18C
  loc_D3B753: LitVarStr var_188, "ExenLico"
  loc_D3B758: PopAdLdVar
  loc_D3B759: FLdRfVar var_178
  loc_D3B75C: FLdPr Me
  loc_D3B75F: MemLdPr global_68
  loc_D3B762:  = Me.Fields
  loc_D3B767: FLdPr var_178
  loc_D3B76A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B76F: FLdPr var_18C
  loc_D3B772:  = Me.Value
  loc_D3B777: FLdRfVar var_19C
  loc_D3B77A: AddVar var_1BC
  loc_D3B77E: CR4Var
  loc_D3B77F: FStFPR8 var_C0
  loc_D3B782: FFreeAd var_178 = ""
  loc_D3B789: FFreeVar var_19C = ""
  loc_D3B790: FLdRfVar var_5FC
  loc_D3B793: FLdRfVar var_45C
  loc_D3B796: LitVarStr var_60C, "ExenLico"
  loc_D3B79B: PopAdLdVar
  loc_D3B79C: FLdRfVar var_448
  loc_D3B79F: FLdPr Me
  loc_D3B7A2: MemLdPr global_68
  loc_D3B7A5:  = Me.Fields
  loc_D3B7AA: FLdPr var_448
  loc_D3B7AD: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B7B2: FLdPr var_45C
  loc_D3B7B5:  = Me.Value
  loc_D3B7BA: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D3B7BD: LitStr " VALUES (2,'"
  loc_D3B7C0: ConcatStr
  loc_D3B7C1: CVarStr var_1BC
  loc_D3B7C4: FLdRfVar var_19C
  loc_D3B7C7: FLdRfVar var_18C
  loc_D3B7CA: LitVarStr var_188, "CodiCome"
  loc_D3B7CF: PopAdLdVar
  loc_D3B7D0: FLdRfVar var_178
  loc_D3B7D3: FLdPr Me
  loc_D3B7D6: MemLdPr global_68
  loc_D3B7D9:  = Me.Fields
  loc_D3B7DE: FLdPr var_178
  loc_D3B7E1: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B7E6: FLdPr var_18C
  loc_D3B7E9:  = Me.Value
  loc_D3B7EE: FLdRfVar var_19C
  loc_D3B7F1: ConcatVar var_1CC
  loc_D3B7F5: LitVarStr var_1AC, "',"
  loc_D3B7FA: ConcatVar var_1DC
  loc_D3B7FE: FLdI2 iPeriodo
  loc_D3B801: CVarI2 var_1F0
  loc_D3B804: ConcatVar var_204
  loc_D3B808: LitVarStr var_224, ","
  loc_D3B80D: ConcatVar var_214
  loc_D3B811: FLdRfVar var_234
  loc_D3B814: FLdRfVar var_1F4
  loc_D3B817: LitVarStr var_244, "BimeLiqu"
  loc_D3B81C: PopAdLdVar
  loc_D3B81D: FLdRfVar var_1E0
  loc_D3B820: FLdPr Me
  loc_D3B823: MemLdPr global_68
  loc_D3B826:  = Me.Fields
  loc_D3B82B: FLdPr var_1E0
  loc_D3B82E: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B833: FLdPr var_1F4
  loc_D3B836:  = Me.Value
  loc_D3B83B: FLdRfVar var_234
  loc_D3B83E: ConcatVar var_264
  loc_D3B842: LitVarStr var_254, ","
  loc_D3B847: ConcatVar var_274
  loc_D3B84B: ILdRf var_98
  loc_D3B84E: CVarI4
  loc_D3B852: ConcatVar var_284
  loc_D3B856: LitVarStr var_2B8, ",2,"
  loc_D3B85B: ConcatVar var_2A4
  loc_D3B85F: FLdRfVar var_2CC
  loc_D3B862: FLdRfVar var_2BC
  loc_D3B865: LitVarStr var_2DC, "CodiTili"
  loc_D3B86A: PopAdLdVar
  loc_D3B86B: FLdRfVar var_2A8
  loc_D3B86E: FLdPr Me
  loc_D3B871: MemLdPr global_68
  loc_D3B874:  = Me.Fields
  loc_D3B879: FLdPr var_2A8
  loc_D3B87C: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B881: FLdPr var_2BC
  loc_D3B884:  = Me.Value
  loc_D3B889: FLdRfVar var_2CC
  loc_D3B88C: ConcatVar var_2EC
  loc_D3B890: LitVarStr var_31C, ","
  loc_D3B895: ConcatVar var_2FC
  loc_D3B899: FLdRfVar var_30C
  loc_D3B89C: FLdRfVar var_344
  loc_D3B89F: LitVarStr var_340, "NumeLiqu"
  loc_D3B8A4: PopAdLdVar
  loc_D3B8A5: FLdRfVar var_330
  loc_D3B8A8: FLdPr Me
  loc_D3B8AB: MemLdPr global_68
  loc_D3B8AE:  = Me.Fields
  loc_D3B8B3: FLdPr var_330
  loc_D3B8B6: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B8BB: FLdPr var_344
  loc_D3B8BE:  = Me.Value
  loc_D3B8C3: FLdRfVar var_30C
  loc_D3B8C6: ConcatVar var_32C
  loc_D3B8CA: LitVarStr var_374, ","
  loc_D3B8CF: ConcatVar var_354
  loc_D3B8D3: LitVarI2 var_364, 0
  loc_D3B8D8: FLdRfVar iPeriodo
  loc_D3B8DB: CVarRef
  loc_D3B8E0: ILdRf var_9C
  loc_D3B8E3: LitI4 0
  loc_D3B8E8: NeI4
  loc_D3B8E9: CVarBoolI2 var_398
  loc_D3B8ED: FLdRfVar var_384
  loc_D3B8F0: ImpAdCallFPR4  = IIf(, , )
  loc_D3B8F5: FLdRfVar var_384
  loc_D3B8F8: ConcatVar var_3AC
  loc_D3B8FC: LitVarStr var_434, ","
  loc_D3B901: ConcatVar var_3BC
  loc_D3B905: ILdRf var_9C
  loc_D3B908: CVarI4
  loc_D3B90C: ConcatVar var_3DC
  loc_D3B910: LitVarStr var_49C, ",'Bimestral','"
  loc_D3B915: ConcatVar var_404
  loc_D3B919: LitI4 1
  loc_D3B91E: LitI4 1
  loc_D3B923: LitVarStr var_4DC, "yyyy-mm-dd"
  loc_D3B928: FStVarCopyObj var_414
  loc_D3B92B: FLdRfVar var_414
  loc_D3B92E: FLdRfVar var_A4
  loc_D3B931: CVarRef
  loc_D3B936: ImpAdCallI2 Format$(, )
  loc_D3B93B: CVarStr var_424
  loc_D3B93E: ConcatVar var_444
  loc_D3B942: LitVarStr var_52C, "','"
  loc_D3B947: ConcatVar var_46C
  loc_D3B94B: LitI4 1
  loc_D3B950: LitI4 1
  loc_D3B955: LitVarStr var_54C, "yyyy-mm-dd"
  loc_D3B95A: FStVarCopyObj var_47C
  loc_D3B95D: FLdRfVar var_47C
  loc_D3B960: FLdRfVar var_A4
  loc_D3B963: CVarRef
  loc_D3B968: ImpAdCallI2 Format$(, )
  loc_D3B96D: CVarStr var_48C
  loc_D3B970: ConcatVar var_4AC
  loc_D3B974: LitVarStr var_55C, "',Null,0,"
  loc_D3B979: ConcatVar var_4CC
  loc_D3B97D: FLdRfVar var_39C
  loc_D3B980: LitVarStr var_56C, "FealLico"
  loc_D3B985: PopAdLdVar
  loc_D3B986: FLdRfVar var_388
  loc_D3B989: FLdPr Me
  loc_D3B98C: MemLdPr global_68
  loc_D3B98F:  = Me.Fields
  loc_D3B994: FLdPr var_388
  loc_D3B997: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B99C: FLdZeroAd var_39C
  loc_D3B99F: CVarAd
  loc_D3B9A3: FLdRfVar var_51C
  loc_D3B9A6: ImpAdCallFPR4  = Year()
  loc_D3B9AB: FLdRfVar var_51C
  loc_D3B9AE: ConcatVar var_57C
  loc_D3B9B2: LitVarStr var_59C, ",'"
  loc_D3B9B7: ConcatVar var_58C
  loc_D3B9BB: FLdRfVar var_5AC
  loc_D3B9BE: FLdRfVar var_3F4
  loc_D3B9C1: LitVarStr var_5BC, "CodiConc"
  loc_D3B9C6: PopAdLdVar
  loc_D3B9C7: FLdRfVar var_3E0
  loc_D3B9CA: FLdPr Me
  loc_D3B9CD: MemLdPr global_68
  loc_D3B9D0:  = Me.Fields
  loc_D3B9D5: FLdPr var_3E0
  loc_D3B9D8: from_stack_2 = Me.Item(from_stack_1)
  loc_D3B9DD: FLdPr var_3F4
  loc_D3B9E0:  = Me.Value
  loc_D3B9E5: FLdRfVar var_5AC
  loc_D3B9E8: ConcatVar var_5CC
  loc_D3B9EC: LitVarStr var_5EC, "',0,0,0,15,'','',0,0,'',0,"
  loc_D3B9F1: ConcatVar var_5DC
  loc_D3B9F5: LitI4 0
  loc_D3B9FA: LitI4 -1
  loc_D3B9FF: LitI4 1
  loc_D3BA04: LitStr "."
  loc_D3BA07: LitStr ","
  loc_D3BA0A: FLdRfVar var_5FC
  loc_D3BA0D: CStrVarTmp
  loc_D3BA0E: FStStrNoPop var_134
  loc_D3BA11: ImpAdCallI2 Replace(, , , , , )
  loc_D3BA16: CVarStr var_61C
  loc_D3BA19: ConcatVar var_62C
  loc_D3BA1D: LitVarStr var_63C, ",'"
  loc_D3BA22: ConcatVar var_64C
  loc_D3BA26: ImpAdLdI4 MemVar_D9302C
  loc_D3BA29: CVarStr var_65C
  loc_D3BA2C: ConcatVar var_66C
  loc_D3BA30: LitVarStr var_69C, "');"
  loc_D3BA35: ConcatVar var_67C
  loc_D3BA39: CStrVarVal var_138
  loc_D3BA3D: Call EjecutarRsCls(from_stack_1v)
  loc_D3BA42: FFreeStr var_134 = ""
  loc_D3BA49: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = "": var_3E0 = "": var_3F4 = "": var_448 = ""
  loc_D3BA66: FFreeVar var_4AC = "": var_4EC = "": var_4CC = "": var_51C = "": var_57C = "": var_58C = "": var_5AC = "": var_5CC = "": var_5FC = "": var_5DC = "": var_61C = "": var_62C = "": var_64C = "": var_66C = "": var_67C = "": var_1BC = "": var_19C = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = "": var_30C = "": var_32C = "": var_398 = "": var_364 = "": var_354 = "": var_384 = "": var_3AC = "": var_3BC = "": var_3DC = "": var_414 = "": var_404 = "": var_424 = "": var_444 = "": var_47C = "": var_46C = ""
  loc_D3BAC3: FLdRfVar var_19C
  loc_D3BAC6: FLdRfVar var_18C
  loc_D3BAC9: LitVarStr var_188, "CrafLico"
  loc_D3BACE: PopAdLdVar
  loc_D3BACF: FLdRfVar var_178
  loc_D3BAD2: FLdPr Me
  loc_D3BAD5: MemLdPr global_68
  loc_D3BAD8:  = Me.Fields
  loc_D3BADD: FLdPr var_178
  loc_D3BAE0: from_stack_2 = Me.Item(from_stack_1)
  loc_D3BAE5: FLdPr var_18C
  loc_D3BAE8:  = Me.Value
  loc_D3BAED: FLdRfVar var_19C
  loc_D3BAF0: LitVarI2 var_1AC, 0
  loc_D3BAF5: HardType
  loc_D3BAF6: GtVarBool
  loc_D3BAF8: FFreeAd var_178 = ""
  loc_D3BAFF: FFree1Var var_19C = ""
  loc_D3BB02: BranchF loc_D3C824
  loc_D3BB05: FLdRfVar var_5FC
  loc_D3BB08: FLdRfVar var_45C
  loc_D3BB0B: LitVarStr var_60C, "CrafLico"
  loc_D3BB10: PopAdLdVar
  loc_D3BB11: FLdRfVar var_448
  loc_D3BB14: FLdPr Me
  loc_D3BB17: MemLdPr global_68
  loc_D3BB1A:  = Me.Fields
  loc_D3BB1F: FLdPr var_448
  loc_D3BB22: from_stack_2 = Me.Item(from_stack_1)
  loc_D3BB27: FLdPr var_45C
  loc_D3BB2A:  = Me.Value
  loc_D3BB2F: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, CodiUsua) "
  loc_D3BB32: LitStr " VALUES (2,'"
  loc_D3BB35: ConcatStr
  loc_D3BB36: CVarStr var_1BC
  loc_D3BB39: FLdRfVar var_19C
  loc_D3BB3C: FLdRfVar var_18C
  loc_D3BB3F: LitVarStr var_188, "CodiCome"
  loc_D3BB44: PopAdLdVar
  loc_D3BB45: FLdRfVar var_178
  loc_D3BB48: FLdPr Me
  loc_D3BB4B: MemLdPr global_68
  loc_D3BB4E:  = Me.Fields
  loc_D3BB53: FLdPr var_178
  loc_D3BB56: from_stack_2 = Me.Item(from_stack_1)
  loc_D3BB5B: FLdPr var_18C
  loc_D3BB5E:  = Me.Value
  loc_D3BB63: FLdRfVar var_19C
  loc_D3BB66: ConcatVar var_1CC
  loc_D3BB6A: LitVarStr var_1AC, "',"
  loc_D3BB6F: ConcatVar var_1DC
  loc_D3BB73: FLdI2 iPeriodo
  loc_D3BB76: CVarI2 var_1F0
  loc_D3BB79: ConcatVar var_204
  loc_D3BB7D: LitVarStr var_224, ","
  loc_D3BB82: ConcatVar var_214
  loc_D3BB86: FLdRfVar var_234
  loc_D3BB89: FLdRfVar var_1F4
  loc_D3BB8C: LitVarStr var_244, "BimeLiqu"
  loc_D3BB91: PopAdLdVar
  loc_D3BB92: FLdRfVar var_1E0
  loc_D3BB95: FLdPr Me
  loc_D3BB98: MemLdPr global_68
  loc_D3BB9B:  = Me.Fields
  loc_D3BBA0: FLdPr var_1E0
  loc_D3BBA3: from_stack_2 = Me.Item(from_stack_1)
  loc_D3BBA8: FLdPr var_1F4
  loc_D3BBAB:  = Me.Value
  loc_D3BBB0: FLdRfVar var_234
  loc_D3BBB3: ConcatVar var_264
  loc_D3BBB7: LitVarStr var_254, ","
  loc_D3BBBC: ConcatVar var_274
  loc_D3BBC0: ILdRf var_98
  loc_D3BBC3: CVarI4
  loc_D3BBC7: ConcatVar var_284
  loc_D3BBCB: LitVarStr var_2B8, ",3,"
  loc_D3BBD0: ConcatVar var_2A4
  loc_D3BBD4: FLdRfVar var_2CC
  loc_D3BBD7: FLdRfVar var_2BC
  loc_D3BBDA: LitVarStr var_2DC, "CodiTili"
  loc_D3BBDF: PopAdLdVar
  loc_D3BBE0: FLdRfVar var_2A8
  loc_D3BBE3: FLdPr Me
  loc_D3BBE6: MemLdPr global_68
  loc_D3BBE9:  = Me.Fields
  loc_D3BBEE: FLdPr var_2A8
  loc_D3BBF1: from_stack_2 = Me.Item(from_stack_1)
  loc_D3BBF6: FLdPr var_2BC
  loc_D3BBF9:  = Me.Value
  loc_D3BBFE: FLdRfVar var_2CC
  loc_D3BC01: ConcatVar var_2EC
  loc_D3BC05: LitVarStr var_31C, ","
  loc_D3BC0A: ConcatVar var_2FC
  loc_D3BC0E: FLdRfVar var_30C
  loc_D3BC11: FLdRfVar var_344
  loc_D3BC14: LitVarStr var_340, "NumeLiqu"
  loc_D3BC19: PopAdLdVar
  loc_D3BC1A: FLdRfVar var_330
  loc_D3BC1D: FLdPr Me
  loc_D3BC20: MemLdPr global_68
  loc_D3BC23:  = Me.Fields
  loc_D3BC28: FLdPr var_330
  loc_D3BC2B: from_stack_2 = Me.Item(from_stack_1)
  loc_D3BC30: FLdPr var_344
  loc_D3BC33:  = Me.Value
  loc_D3BC38: FLdRfVar var_30C
  loc_D3BC3B: ConcatVar var_32C
  loc_D3BC3F: LitVarStr var_374, ","
  loc_D3BC44: ConcatVar var_354
  loc_D3BC48: LitVarI2 var_364, 0
  loc_D3BC4D: FLdRfVar iPeriodo
  loc_D3BC50: CVarRef
  loc_D3BC55: ILdRf var_9C
  loc_D3BC58: LitI4 0
  loc_D3BC5D: NeI4
  loc_D3BC5E: CVarBoolI2 var_398
  loc_D3BC62: FLdRfVar var_384
  loc_D3BC65: ImpAdCallFPR4  = IIf(, , )
  loc_D3BC6A: FLdRfVar var_384
  loc_D3BC6D: ConcatVar var_3AC
  loc_D3BC71: LitVarStr var_434, ","
  loc_D3BC76: ConcatVar var_3BC
  loc_D3BC7A: ILdRf var_9C
  loc_D3BC7D: CVarI4
  loc_D3BC81: ConcatVar var_3DC
  loc_D3BC85: LitVarStr var_49C, ",'Mensual','"
  loc_D3BC8A: ConcatVar var_404
  loc_D3BC8E: LitI4 1
  loc_D3BC93: LitI4 1
  loc_D3BC98: LitVarStr var_4DC, "yyyy-mm-dd"
  loc_D3BC9D: FStVarCopyObj var_414
  loc_D3BCA0: FLdRfVar var_414
  loc_D3BCA3: FLdRfVar var_A4
  loc_D3BCA6: CVarRef
  loc_D3BCAB: ImpAdCallI2 Format$(, )
  loc_D3BCB0: CVarStr var_424
  loc_D3BCB3: ConcatVar var_444
  loc_D3BCB7: LitVarStr var_52C, "','"
  loc_D3BCBC: ConcatVar var_46C
  loc_D3BCC0: LitI4 1
  loc_D3BCC5: LitI4 1
  loc_D3BCCA: LitVarStr var_54C, "yyyy-mm-dd"
  loc_D3BCCF: FStVarCopyObj var_47C
  loc_D3BCD2: FLdRfVar var_47C
  loc_D3BCD5: FLdRfVar var_A4
  loc_D3BCD8: CVarRef
  loc_D3BCDD: ImpAdCallI2 Format$(, )
  loc_D3BCE2: CVarStr var_48C
  loc_D3BCE5: ConcatVar var_4AC
  loc_D3BCE9: LitVarStr var_55C, "',Null,0,"
  loc_D3BCEE: ConcatVar var_4CC
  loc_D3BCF2: FLdRfVar var_39C
  loc_D3BCF5: LitVarStr var_56C, "FealLico"
  loc_D3BCFA: PopAdLdVar
  loc_D3BCFB: FLdRfVar var_388
  loc_D3BCFE: FLdPr Me
  loc_D3BD01: MemLdPr global_68
  loc_D3BD04:  = Me.Fields
  loc_D3BD09: FLdPr var_388
  loc_D3BD0C: from_stack_2 = Me.Item(from_stack_1)
  loc_D3BD11: FLdZeroAd var_39C
  loc_D3BD14: CVarAd
  loc_D3BD18: FLdRfVar var_51C
  loc_D3BD1B: ImpAdCallFPR4  = Year()
  loc_D3BD20: FLdRfVar var_51C
  loc_D3BD23: ConcatVar var_57C
  loc_D3BD27: LitVarStr var_59C, ",'"
  loc_D3BD2C: ConcatVar var_58C
  loc_D3BD30: FLdRfVar var_5AC
  loc_D3BD33: FLdRfVar var_3F4
  loc_D3BD36: LitVarStr var_5BC, "CodiConc"
  loc_D3BD3B: PopAdLdVar
  loc_D3BD3C: FLdRfVar var_3E0
  loc_D3BD3F: FLdPr Me
  loc_D3BD42: MemLdPr global_68
  loc_D3BD45:  = Me.Fields
  loc_D3BD4A: FLdPr var_3E0
  loc_D3BD4D: from_stack_2 = Me.Item(from_stack_1)
  loc_D3BD52: FLdPr var_3F4
  loc_D3BD55:  = Me.Value
  loc_D3BD5A: FLdRfVar var_5AC
  loc_D3BD5D: ConcatVar var_5CC
  loc_D3BD61: LitVarStr var_5EC, "',0,0,0,23,'','',0,0,'',0,"
  loc_D3BD66: ConcatVar var_5DC
  loc_D3BD6A: LitI4 0
  loc_D3BD6F: LitI4 -1
  loc_D3BD74: LitI4 1
  loc_D3BD79: LitStr "."
  loc_D3BD7C: LitStr ","
  loc_D3BD7F: FLdRfVar var_5FC
  loc_D3BD82: CStrVarTmp
  loc_D3BD83: FStStrNoPop var_134
  loc_D3BD86: ImpAdCallI2 Replace(, , , , , )
  loc_D3BD8B: CVarStr var_61C
  loc_D3BD8E: ConcatVar var_62C
  loc_D3BD92: LitVarStr var_63C, ",'"
  loc_D3BD97: ConcatVar var_64C
  loc_D3BD9B: ImpAdLdI4 MemVar_D9302C
  loc_D3BD9E: CVarStr var_65C
  loc_D3BDA1: ConcatVar var_66C
  loc_D3BDA5: LitVarStr var_69C, "');"
  loc_D3BDAA: ConcatVar var_67C
  loc_D3BDAE: CStrVarVal var_138
  loc_D3BDB2: Call EjecutarRsCls(from_stack_1v)
  loc_D3BDB7: FFreeStr var_134 = ""
  loc_D3BDBE: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = "": var_3E0 = "": var_3F4 = "": var_448 = ""
  loc_D3BDDB: FFreeVar var_4AC = "": var_4EC = "": var_4CC = "": var_51C = "": var_57C = "": var_58C = "": var_5AC = "": var_5CC = "": var_5FC = "": var_5DC = "": var_61C = "": var_62C = "": var_64C = "": var_66C = "": var_67C = "": var_1BC = "": var_19C = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = "": var_30C = "": var_32C = "": var_398 = "": var_364 = "": var_354 = "": var_384 = "": var_3AC = "": var_3BC = "": var_3DC = "": var_414 = "": var_404 = "": var_424 = "": var_444 = "": var_47C = "": var_46C = ""
  loc_D3BE38: FLdRfVar var_18C
  loc_D3BE3B: LitVarStr var_188, "CrafLico"
  loc_D3BE40: PopAdLdVar
  loc_D3BE41: FLdRfVar var_178
  loc_D3BE44: FLdPr Me
  loc_D3BE47: MemLdPr global_68
  loc_D3BE4A:  = Me.Fields
  loc_D3BE4F: FLdPr var_178
  loc_D3BE52: from_stack_2 = Me.Item(from_stack_1)
  loc_D3BE57: LitI4 2
  loc_D3BE5C: FLdZeroAd var_18C
  loc_D3BE5F: CVarAd
  loc_D3BE63: FLdRfVar var_1BC
  loc_D3BE66: ImpAdCallFPR4  = Round(, )
  loc_D3BE6B: FLdRfVar var_1BC
  loc_D3BE6E: CR4Var
  loc_D3BE6F: FStFPR8 var_F4
  loc_D3BE72: FFree1Ad var_178
  loc_D3BE75: FFreeVar var_19C = ""
  loc_D3BE7C: FLdRfVar var_18C
  loc_D3BE7F: LitVarStr var_188, "CrafLico"
  loc_D3BE84: PopAdLdVar
  loc_D3BE85: FLdRfVar var_178
  loc_D3BE88: FLdPr Me
  loc_D3BE8B: MemLdPr global_68
  loc_D3BE8E:  = Me.Fields
  loc_D3BE93: FLdPr var_178
  loc_D3BE96: from_stack_2 = Me.Item(from_stack_1)
  loc_D3BE9B: LitI4 2
  loc_D3BEA0: FLdZeroAd var_18C
  loc_D3BEA3: CVarAd
  loc_D3BEA7: FLdRfVar var_1BC
  loc_D3BEAA: ImpAdCallFPR4  = Round(, )
  loc_D3BEAF: FLdRfVar var_1BC
  loc_D3BEB2: CR4Var
  loc_D3BEB3: FStFPR8 var_10C
  loc_D3BEB6: FFree1Ad var_178
  loc_D3BEB9: FFreeVar var_19C = ""
  loc_D3BEC0: LitStr "SELECT CodiOfic, CuenCtct, NumeCred, SUM(DebeCred)-SUM(CredCred) as SaldCred FROM creditos WHERE CodiOfic = 2"
  loc_D3BEC3: LitStr " AND CuenCtct = '"
  loc_D3BEC6: ConcatStr
  loc_D3BEC7: CVarStr var_1BC
  loc_D3BECA: FLdRfVar var_19C
  loc_D3BECD: FLdRfVar var_18C
  loc_D3BED0: LitVarStr var_188, "CodiCome"
  loc_D3BED5: PopAdLdVar
  loc_D3BED6: FLdRfVar var_178
  loc_D3BED9: FLdPr Me
  loc_D3BEDC: MemLdPr global_68
  loc_D3BEDF:  = Me.Fields
  loc_D3BEE4: FLdPr var_178
  loc_D3BEE7: from_stack_2 = Me.Item(from_stack_1)
  loc_D3BEEC: FLdPr var_18C
  loc_D3BEEF:  = Me.Value
  loc_D3BEF4: FLdRfVar var_19C
  loc_D3BEF7: ConcatVar var_1CC
  loc_D3BEFB: LitVarStr var_1AC, "'"
  loc_D3BF00: ConcatVar var_1DC
  loc_D3BF04: LitVarStr var_1F0, " GROUP BY CodiOfic, CuenCtct, NumeCred"
  loc_D3BF09: ConcatVar var_204
  loc_D3BF0D: CStrVarVal var_134
  loc_D3BF11: Call EjecutarRsCls4(from_stack_1v)
  loc_D3BF16: FFree1Str var_134
  loc_D3BF19: FFreeAd var_178 = ""
  loc_D3BF20: FFreeVar var_1BC = "": var_19C = "": var_1CC = "": var_1DC = ""
  loc_D3BF2D: FLdRfVar var_170
  loc_D3BF30: FLdPr Me
  loc_D3BF33: MemLdPr global_72
  loc_D3BF36:  = Me.RecordCount
  loc_D3BF3B: ILdRf var_170
  loc_D3BF3E: LitI4 0
  loc_D3BF43: GtI4
  loc_D3BF44: BranchF loc_D3C824
  loc_D3BF47: FLdPr Me
  loc_D3BF4A: MemLdPr global_72
  loc_D3BF4D: Me.MoveFirst
  loc_D3BF52: FLdRfVar var_172
  loc_D3BF55: FLdPr Me
  loc_D3BF58: MemLdPr global_72
  loc_D3BF5B:  = Me.EOF
  loc_D3BF60: FLdI2 var_172
  loc_D3BF63: NotI4
  loc_D3BF64: BranchF loc_D3C824
  loc_D3BF67: FLdFPR8 var_F4
  loc_D3BF6A: LitI2_Byte 0
  loc_D3BF6C: CR8I2
  loc_D3BF6D: GtR4
  loc_D3BF6E: CVarBoolI2 var_1F0
  loc_D3BF72: FLdRfVar var_19C
  loc_D3BF75: FLdRfVar var_18C
  loc_D3BF78: LitVarStr var_188, "SaldCred"
  loc_D3BF7D: PopAdLdVar
  loc_D3BF7E: FLdRfVar var_178
  loc_D3BF81: FLdPr Me
  loc_D3BF84: MemLdPr global_72
  loc_D3BF87:  = Me.Fields
  loc_D3BF8C: FLdPr var_178
  loc_D3BF8F: from_stack_2 = Me.Item(from_stack_1)
  loc_D3BF94: FLdPr var_18C
  loc_D3BF97:  = Me.Value
  loc_D3BF9C: FLdRfVar var_19C
  loc_D3BF9F: LitVarI2 var_1AC, 0
  loc_D3BFA4: HardType
  loc_D3BFA5: GtVar var_1BC
  loc_D3BFA9: AndVar var_1CC
  loc_D3BFAD: CBoolVarNull
  loc_D3BFAF: FFreeAd var_178 = ""
  loc_D3BFB6: FFreeVar var_19C = ""
  loc_D3BFBD: BranchF loc_D3C816
  loc_D3BFC0: FLdRfVar var_19C
  loc_D3BFC3: FLdRfVar var_18C
  loc_D3BFC6: LitVarStr var_188, "SaldCred"
  loc_D3BFCB: PopAdLdVar
  loc_D3BFCC: FLdRfVar var_178
  loc_D3BFCF: FLdPr Me
  loc_D3BFD2: MemLdPr global_72
  loc_D3BFD5:  = Me.Fields
  loc_D3BFDA: FLdPr var_178
  loc_D3BFDD: from_stack_2 = Me.Item(from_stack_1)
  loc_D3BFE2: FLdPr var_18C
  loc_D3BFE5:  = Me.Value
  loc_D3BFEA: FLdRfVar var_19C
  loc_D3BFED: FLdFPR8 var_F4
  loc_D3BFF0: CVarR8
  loc_D3BFF4: HardType
  loc_D3BFF5: LeVarBool
  loc_D3BFF7: FFreeAd var_178 = ""
  loc_D3BFFE: FFree1Var var_19C = ""
  loc_D3C001: BranchF loc_D3C446
  loc_D3C004: FLdFPR8 var_F4
  loc_D3C007: CVarR8
  loc_D3C00B: FLdRfVar var_19C
  loc_D3C00E: FLdRfVar var_18C
  loc_D3C011: LitVarStr var_188, "SaldCred"
  loc_D3C016: PopAdLdVar
  loc_D3C017: FLdRfVar var_178
  loc_D3C01A: FLdPr Me
  loc_D3C01D: MemLdPr global_72
  loc_D3C020:  = Me.Fields
  loc_D3C025: FLdPr var_178
  loc_D3C028: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C02D: FLdPr var_18C
  loc_D3C030:  = Me.Value
  loc_D3C035: FLdRfVar var_19C
  loc_D3C038: SubVar var_1BC
  loc_D3C03C: CR4Var
  loc_D3C03D: FStFPR8 var_F4
  loc_D3C040: FFreeAd var_178 = ""
  loc_D3C047: FFree1Var var_19C = ""
  loc_D3C04A: FLdRfVar var_19C
  loc_D3C04D: FLdRfVar var_18C
  loc_D3C050: LitVarStr var_188, "CodiOfic"
  loc_D3C055: PopAdLdVar
  loc_D3C056: FLdRfVar var_178
  loc_D3C059: FLdPr Me
  loc_D3C05C: MemLdPr global_72
  loc_D3C05F:  = Me.Fields
  loc_D3C064: FLdPr var_178
  loc_D3C067: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C06C: FLdPr var_18C
  loc_D3C06F:  = Me.Value
  loc_D3C074: FLdRfVar var_1BC
  loc_D3C077: FLdRfVar var_1F4
  loc_D3C07A: LitVarStr var_1AC, "CuenCtct"
  loc_D3C07F: PopAdLdVar
  loc_D3C080: FLdRfVar var_1E0
  loc_D3C083: FLdPr Me
  loc_D3C086: MemLdPr global_72
  loc_D3C089:  = Me.Fields
  loc_D3C08E: FLdPr var_1E0
  loc_D3C091: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C096: FLdPr var_1F4
  loc_D3C099:  = Me.Value
  loc_D3C09E: FLdRfVar var_1CC
  loc_D3C0A1: FLdRfVar var_2BC
  loc_D3C0A4: LitVarStr var_1F0, "NumeCred"
  loc_D3C0A9: PopAdLdVar
  loc_D3C0AA: FLdRfVar var_2A8
  loc_D3C0AD: FLdPr Me
  loc_D3C0B0: MemLdPr global_72
  loc_D3C0B3:  = Me.Fields
  loc_D3C0B8: FLdPr var_2A8
  loc_D3C0BB: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C0C0: FLdPr var_2BC
  loc_D3C0C3:  = Me.Value
  loc_D3C0C8: FLdRfVar var_172
  loc_D3C0CB: FLdRfVar var_1CC
  loc_D3C0CE: CI4Var
  loc_D3C0D0: FLdRfVar var_1BC
  loc_D3C0D3: CStrVarTmp
  loc_D3C0D4: FStStrNoPop var_134
  loc_D3C0D7: FLdRfVar var_19C
  loc_D3C0DA: CUI1Var
  loc_D3C0DC: FLdRfVar GeneracionCuentaCorriente
  loc_D3C0DF: NewIfNullPr clscreditos
  loc_D3C0E2: from_stack_4v = clscreditos.BuscaMoviCred(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D3C0E7: FLdI2 var_172
  loc_D3C0EA: CR8I2
  loc_D3C0EB: FStFPR8 var_FC
  loc_D3C0EE: FFree1Str var_134
  loc_D3C0F1: FFreeAd var_178 = "": var_1E0 = "": var_2A8 = "": var_18C = "": var_1F4 = ""
  loc_D3C100: FFreeVar var_19C = "": var_1BC = ""
  loc_D3C109: FLdFPR8 var_FC
  loc_D3C10C: LitI2_Byte 1
  loc_D3C10E: CR8I2
  loc_D3C10F: AddR8
  loc_D3C110: FStFPR8 var_FC
  loc_D3C113: FLdRfVar var_5DC
  loc_D3C116: FLdRfVar var_504
  loc_D3C119: LitVarStr var_5EC, "SaldCred"
  loc_D3C11E: PopAdLdVar
  loc_D3C11F: FLdRfVar var_500
  loc_D3C122: FLdPr Me
  loc_D3C125: MemLdPr global_72
  loc_D3C128:  = Me.Fields
  loc_D3C12D: FLdPr var_500
  loc_D3C130: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C135: FLdPr var_504
  loc_D3C138:  = Me.Value
  loc_D3C13D: LitStr " INSERT INTO creditos (CodiOfic,CuenCtct,NumeCred,MoviCred,PeriCtct,BimeCtct,NumeCtct,MoviCtct,CodiTili,NumeLiqu,PeriBole,NumeBole,FealCtct,PeriInfo,CodiConc,CodiTimo,ExpeCred,DetaCred,DebeCred,CredCred,CodiUsua) "
  loc_D3C140: LitStr " VALUES (2,'"
  loc_D3C143: ConcatStr
  loc_D3C144: CVarStr var_1BC
  loc_D3C147: FLdRfVar var_19C
  loc_D3C14A: FLdRfVar var_18C
  loc_D3C14D: LitVarStr var_188, "CodiCome"
  loc_D3C152: PopAdLdVar
  loc_D3C153: FLdRfVar var_178
  loc_D3C156: FLdPr Me
  loc_D3C159: MemLdPr global_68
  loc_D3C15C:  = Me.Fields
  loc_D3C161: FLdPr var_178
  loc_D3C164: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C169: FLdPr var_18C
  loc_D3C16C:  = Me.Value
  loc_D3C171: FLdRfVar var_19C
  loc_D3C174: ConcatVar var_1CC
  loc_D3C178: LitVarStr var_1AC, "',"
  loc_D3C17D: ConcatVar var_1DC
  loc_D3C181: FLdRfVar var_204
  loc_D3C184: FLdRfVar var_1F4
  loc_D3C187: LitVarStr var_1F0, "NumeCred"
  loc_D3C18C: PopAdLdVar
  loc_D3C18D: FLdRfVar var_1E0
  loc_D3C190: FLdPr Me
  loc_D3C193: MemLdPr global_72
  loc_D3C196:  = Me.Fields
  loc_D3C19B: FLdPr var_1E0
  loc_D3C19E: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C1A3: FLdPr var_1F4
  loc_D3C1A6:  = Me.Value
  loc_D3C1AB: FLdRfVar var_204
  loc_D3C1AE: ConcatVar var_214
  loc_D3C1B2: LitVarStr var_224, ","
  loc_D3C1B7: ConcatVar var_234
  loc_D3C1BB: FLdFPR8 var_FC
  loc_D3C1BE: CVarR8
  loc_D3C1C2: ConcatVar var_264
  loc_D3C1C6: LitVarStr var_254, ","
  loc_D3C1CB: ConcatVar var_274
  loc_D3C1CF: FLdI2 iPeriodo
  loc_D3C1D2: CVarI2 var_294
  loc_D3C1D5: ConcatVar var_284
  loc_D3C1D9: LitVarStr var_2B8, ","
  loc_D3C1DE: ConcatVar var_2A4
  loc_D3C1E2: FLdRfVar var_2CC
  loc_D3C1E5: FLdRfVar var_2BC
  loc_D3C1E8: LitVarStr var_2DC, "BimeLiqu"
  loc_D3C1ED: PopAdLdVar
  loc_D3C1EE: FLdRfVar var_2A8
  loc_D3C1F1: FLdPr Me
  loc_D3C1F4: MemLdPr global_68
  loc_D3C1F7:  = Me.Fields
  loc_D3C1FC: FLdPr var_2A8
  loc_D3C1FF: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C204: FLdPr var_2BC
  loc_D3C207:  = Me.Value
  loc_D3C20C: FLdRfVar var_2CC
  loc_D3C20F: ConcatVar var_2EC
  loc_D3C213: LitVarStr var_31C, ","
  loc_D3C218: ConcatVar var_2FC
  loc_D3C21C: ILdRf var_98
  loc_D3C21F: CVarI4
  loc_D3C223: ConcatVar var_30C
  loc_D3C227: LitVarStr var_374, ",3,"
  loc_D3C22C: ConcatVar var_32C
  loc_D3C230: FLdRfVar var_354
  loc_D3C233: FLdRfVar var_344
  loc_D3C236: LitVarStr var_398, "CodiTili"
  loc_D3C23B: PopAdLdVar
  loc_D3C23C: FLdRfVar var_330
  loc_D3C23F: FLdPr Me
  loc_D3C242: MemLdPr global_68
  loc_D3C245:  = Me.Fields
  loc_D3C24A: FLdPr var_330
  loc_D3C24D: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C252: FLdPr var_344
  loc_D3C255:  = Me.Value
  loc_D3C25A: FLdRfVar var_354
  loc_D3C25D: ConcatVar var_364
  loc_D3C261: LitVarStr var_3CC, ","
  loc_D3C266: ConcatVar var_384
  loc_D3C26A: FLdRfVar var_3AC
  loc_D3C26D: FLdRfVar var_39C
  loc_D3C270: LitVarStr var_3F0, "NumeLiqu"
  loc_D3C275: PopAdLdVar
  loc_D3C276: FLdRfVar var_388
  loc_D3C279: FLdPr Me
  loc_D3C27C: MemLdPr global_68
  loc_D3C27F:  = Me.Fields
  loc_D3C284: FLdPr var_388
  loc_D3C287: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C28C: FLdPr var_39C
  loc_D3C28F:  = Me.Value
  loc_D3C294: FLdRfVar var_3AC
  loc_D3C297: ConcatVar var_3BC
  loc_D3C29B: LitVarStr var_434, ","
  loc_D3C2A0: ConcatVar var_3DC
  loc_D3C2A4: FLdI2 iPeriodo
  loc_D3C2A7: CVarI2 var_458
  loc_D3C2AA: ConcatVar var_404
  loc_D3C2AE: LitVarStr var_49C, ","
  loc_D3C2B3: ConcatVar var_414
  loc_D3C2B7: ILdRf var_9C
  loc_D3C2BA: CVarI4
  loc_D3C2BE: ConcatVar var_424
  loc_D3C2C2: LitVarStr var_4DC, ",'"
  loc_D3C2C7: ConcatVar var_444
  loc_D3C2CB: LitI4 1
  loc_D3C2D0: LitI4 1
  loc_D3C2D5: LitVarStr var_53C, "yyyy-mm-dd"
  loc_D3C2DA: FStVarCopyObj var_46C
  loc_D3C2DD: FLdRfVar var_46C
  loc_D3C2E0: FLdRfVar var_A4
  loc_D3C2E3: CVarRef
  loc_D3C2E8: ImpAdCallI2 Format$(, )
  loc_D3C2ED: CVarStr var_47C
  loc_D3C2F0: ConcatVar var_48C
  loc_D3C2F4: LitVarStr var_54C, "',"
  loc_D3C2F9: ConcatVar var_4AC
  loc_D3C2FD: FLdRfVar var_3F4
  loc_D3C300: LitVarStr var_55C, "FealLico"
  loc_D3C305: PopAdLdVar
  loc_D3C306: FLdRfVar var_3E0
  loc_D3C309: FLdPr Me
  loc_D3C30C: MemLdPr global_68
  loc_D3C30F:  = Me.Fields
  loc_D3C314: FLdPr var_3E0
  loc_D3C317: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C31C: FLdZeroAd var_3F4
  loc_D3C31F: CVarAd
  loc_D3C323: FLdRfVar var_4EC
  loc_D3C326: ImpAdCallFPR4  = Year()
  loc_D3C32B: FLdRfVar var_4EC
  loc_D3C32E: ConcatVar var_51C
  loc_D3C332: LitVarStr var_56C, ",'"
  loc_D3C337: ConcatVar var_57C
  loc_D3C33B: FLdRfVar var_58C
  loc_D3C33E: FLdRfVar var_45C
  loc_D3C341: LitVarStr var_59C, "CodiConc"
  loc_D3C346: PopAdLdVar
  loc_D3C347: FLdRfVar var_448
  loc_D3C34A: FLdPr Me
  loc_D3C34D: MemLdPr global_68
  loc_D3C350:  = Me.Fields
  loc_D3C355: FLdPr var_448
  loc_D3C358: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C35D: FLdPr var_45C
  loc_D3C360:  = Me.Value
  loc_D3C365: FLdRfVar var_58C
  loc_D3C368: ConcatVar var_5AC
  loc_D3C36C: LitVarStr var_5BC, "',23,'','',0,"
  loc_D3C371: ConcatVar var_5CC
  loc_D3C375: LitI4 0
  loc_D3C37A: LitI4 -1
  loc_D3C37F: LitI4 1
  loc_D3C384: LitStr "."
  loc_D3C387: LitStr ","
  loc_D3C38A: FLdRfVar var_5DC
  loc_D3C38D: CStrVarTmp
  loc_D3C38E: FStStrNoPop var_134
  loc_D3C391: ImpAdCallI2 Replace(, , , , , )
  loc_D3C396: CVarStr var_5FC
  loc_D3C399: ConcatVar var_61C
  loc_D3C39D: LitVarStr var_60C, ",'"
  loc_D3C3A2: ConcatVar var_62C
  loc_D3C3A6: ImpAdLdI4 MemVar_D9302C
  loc_D3C3A9: CVarStr var_63C
  loc_D3C3AC: ConcatVar var_64C
  loc_D3C3B0: LitVarStr var_65C, "');"
  loc_D3C3B5: ConcatVar var_66C
  loc_D3C3B9: CStrVarVal var_138
  loc_D3C3BD: Call EjecutarRsCls(from_stack_1v)
  loc_D3C3C2: FFreeStr var_134 = ""
  loc_D3C3C9: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = "": var_39C = "": var_3E0 = "": var_448 = "": var_45C = "": var_500 = ""
  loc_D3C3EA: FFreeVar var_4AC = "": var_4EC = "": var_51C = "": var_57C = "": var_58C = "": var_5AC = "": var_5DC = "": var_5CC = "": var_5FC = "": var_61C = "": var_62C = "": var_64C = "": var_66C = "": var_1BC = "": var_19C = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = "": var_30C = "": var_32C = "": var_354 = "": var_364 = "": var_384 = "": var_3AC = "": var_3BC = "": var_3DC = "": var_404 = "": var_414 = "": var_424 = "": var_46C = "": var_444 = "": var_47C = "": var_48C = ""
  loc_D3C443: Branch loc_D3C816
  loc_D3C446: FLdRfVar var_19C
  loc_D3C449: FLdRfVar var_18C
  loc_D3C44C: LitVarStr var_188, "CodiOfic"
  loc_D3C451: PopAdLdVar
  loc_D3C452: FLdRfVar var_178
  loc_D3C455: FLdPr Me
  loc_D3C458: MemLdPr global_72
  loc_D3C45B:  = Me.Fields
  loc_D3C460: FLdPr var_178
  loc_D3C463: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C468: FLdPr var_18C
  loc_D3C46B:  = Me.Value
  loc_D3C470: FLdRfVar var_1BC
  loc_D3C473: FLdRfVar var_1F4
  loc_D3C476: LitVarStr var_1AC, "CuenCtct"
  loc_D3C47B: PopAdLdVar
  loc_D3C47C: FLdRfVar var_1E0
  loc_D3C47F: FLdPr Me
  loc_D3C482: MemLdPr global_72
  loc_D3C485:  = Me.Fields
  loc_D3C48A: FLdPr var_1E0
  loc_D3C48D: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C492: FLdPr var_1F4
  loc_D3C495:  = Me.Value
  loc_D3C49A: FLdRfVar var_1CC
  loc_D3C49D: FLdRfVar var_2BC
  loc_D3C4A0: LitVarStr var_1F0, "NumeCred"
  loc_D3C4A5: PopAdLdVar
  loc_D3C4A6: FLdRfVar var_2A8
  loc_D3C4A9: FLdPr Me
  loc_D3C4AC: MemLdPr global_72
  loc_D3C4AF:  = Me.Fields
  loc_D3C4B4: FLdPr var_2A8
  loc_D3C4B7: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C4BC: FLdPr var_2BC
  loc_D3C4BF:  = Me.Value
  loc_D3C4C4: FLdRfVar var_172
  loc_D3C4C7: FLdRfVar var_1CC
  loc_D3C4CA: CI4Var
  loc_D3C4CC: FLdRfVar var_1BC
  loc_D3C4CF: CStrVarTmp
  loc_D3C4D0: FStStrNoPop var_134
  loc_D3C4D3: FLdRfVar var_19C
  loc_D3C4D6: CUI1Var
  loc_D3C4D8: FLdRfVar GeneracionCuentaCorriente
  loc_D3C4DB: NewIfNullPr clscreditos
  loc_D3C4DE: from_stack_4v = clscreditos.BuscaMoviCred(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D3C4E3: FLdI2 var_172
  loc_D3C4E6: CR8I2
  loc_D3C4E7: FStFPR8 var_FC
  loc_D3C4EA: FFree1Str var_134
  loc_D3C4ED: FFreeAd var_178 = "": var_1E0 = "": var_2A8 = "": var_18C = "": var_1F4 = ""
  loc_D3C4FC: FFreeVar var_19C = "": var_1BC = ""
  loc_D3C505: FLdFPR8 var_FC
  loc_D3C508: LitI2_Byte 1
  loc_D3C50A: CR8I2
  loc_D3C50B: AddR8
  loc_D3C50C: FStFPR8 var_FC
  loc_D3C50F: LitStr " INSERT INTO creditos (CodiOfic,CuenCtct,NumeCred,MoviCred,PeriCtct,BimeCtct,NumeCtct,MoviCtct,CodiTili,NumeLiqu,PeriBole,NumeBole,FealCtct,PeriInfo,CodiConc,CodiTimo,ExpeCred,DetaCred,DebeCred,CredCred,CodiUsua) "
  loc_D3C512: LitStr " VALUES (2,'"
  loc_D3C515: ConcatStr
  loc_D3C516: CVarStr var_1BC
  loc_D3C519: FLdRfVar var_19C
  loc_D3C51C: FLdRfVar var_18C
  loc_D3C51F: LitVarStr var_188, "CodiCome"
  loc_D3C524: PopAdLdVar
  loc_D3C525: FLdRfVar var_178
  loc_D3C528: FLdPr Me
  loc_D3C52B: MemLdPr global_68
  loc_D3C52E:  = Me.Fields
  loc_D3C533: FLdPr var_178
  loc_D3C536: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C53B: FLdPr var_18C
  loc_D3C53E:  = Me.Value
  loc_D3C543: FLdRfVar var_19C
  loc_D3C546: ConcatVar var_1CC
  loc_D3C54A: LitVarStr var_1AC, "',"
  loc_D3C54F: ConcatVar var_1DC
  loc_D3C553: FLdRfVar var_204
  loc_D3C556: FLdRfVar var_1F4
  loc_D3C559: LitVarStr var_1F0, "NumeCred"
  loc_D3C55E: PopAdLdVar
  loc_D3C55F: FLdRfVar var_1E0
  loc_D3C562: FLdPr Me
  loc_D3C565: MemLdPr global_72
  loc_D3C568:  = Me.Fields
  loc_D3C56D: FLdPr var_1E0
  loc_D3C570: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C575: FLdPr var_1F4
  loc_D3C578:  = Me.Value
  loc_D3C57D: FLdRfVar var_204
  loc_D3C580: ConcatVar var_214
  loc_D3C584: LitVarStr var_224, ","
  loc_D3C589: ConcatVar var_234
  loc_D3C58D: FLdFPR8 var_FC
  loc_D3C590: CVarR8
  loc_D3C594: ConcatVar var_264
  loc_D3C598: LitVarStr var_254, ","
  loc_D3C59D: ConcatVar var_274
  loc_D3C5A1: FLdI2 iPeriodo
  loc_D3C5A4: CVarI2 var_294
  loc_D3C5A7: ConcatVar var_284
  loc_D3C5AB: LitVarStr var_2B8, ","
  loc_D3C5B0: ConcatVar var_2A4
  loc_D3C5B4: FLdRfVar var_2CC
  loc_D3C5B7: FLdRfVar var_2BC
  loc_D3C5BA: LitVarStr var_2DC, "BimeLiqu"
  loc_D3C5BF: PopAdLdVar
  loc_D3C5C0: FLdRfVar var_2A8
  loc_D3C5C3: FLdPr Me
  loc_D3C5C6: MemLdPr global_68
  loc_D3C5C9:  = Me.Fields
  loc_D3C5CE: FLdPr var_2A8
  loc_D3C5D1: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C5D6: FLdPr var_2BC
  loc_D3C5D9:  = Me.Value
  loc_D3C5DE: FLdRfVar var_2CC
  loc_D3C5E1: ConcatVar var_2EC
  loc_D3C5E5: LitVarStr var_31C, ","
  loc_D3C5EA: ConcatVar var_2FC
  loc_D3C5EE: ILdRf var_98
  loc_D3C5F1: CVarI4
  loc_D3C5F5: ConcatVar var_30C
  loc_D3C5F9: LitVarStr var_374, ",3,"
  loc_D3C5FE: ConcatVar var_32C
  loc_D3C602: FLdRfVar var_354
  loc_D3C605: FLdRfVar var_344
  loc_D3C608: LitVarStr var_398, "CodiTili"
  loc_D3C60D: PopAdLdVar
  loc_D3C60E: FLdRfVar var_330
  loc_D3C611: FLdPr Me
  loc_D3C614: MemLdPr global_68
  loc_D3C617:  = Me.Fields
  loc_D3C61C: FLdPr var_330
  loc_D3C61F: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C624: FLdPr var_344
  loc_D3C627:  = Me.Value
  loc_D3C62C: FLdRfVar var_354
  loc_D3C62F: ConcatVar var_364
  loc_D3C633: LitVarStr var_3CC, ","
  loc_D3C638: ConcatVar var_384
  loc_D3C63C: FLdRfVar var_3AC
  loc_D3C63F: FLdRfVar var_39C
  loc_D3C642: LitVarStr var_3F0, "NumeLiqu"
  loc_D3C647: PopAdLdVar
  loc_D3C648: FLdRfVar var_388
  loc_D3C64B: FLdPr Me
  loc_D3C64E: MemLdPr global_68
  loc_D3C651:  = Me.Fields
  loc_D3C656: FLdPr var_388
  loc_D3C659: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C65E: FLdPr var_39C
  loc_D3C661:  = Me.Value
  loc_D3C666: FLdRfVar var_3AC
  loc_D3C669: ConcatVar var_3BC
  loc_D3C66D: LitVarStr var_434, ","
  loc_D3C672: ConcatVar var_3DC
  loc_D3C676: FLdI2 iPeriodo
  loc_D3C679: CVarI2 var_458
  loc_D3C67C: ConcatVar var_404
  loc_D3C680: LitVarStr var_49C, ","
  loc_D3C685: ConcatVar var_414
  loc_D3C689: ILdRf var_9C
  loc_D3C68C: CVarI4
  loc_D3C690: ConcatVar var_424
  loc_D3C694: LitVarStr var_4DC, ",'"
  loc_D3C699: ConcatVar var_444
  loc_D3C69D: LitI4 1
  loc_D3C6A2: LitI4 1
  loc_D3C6A7: LitVarStr var_53C, "yyyy-mm-dd"
  loc_D3C6AC: FStVarCopyObj var_46C
  loc_D3C6AF: FLdRfVar var_46C
  loc_D3C6B2: FLdRfVar var_A4
  loc_D3C6B5: CVarRef
  loc_D3C6BA: ImpAdCallI2 Format$(, )
  loc_D3C6BF: CVarStr var_47C
  loc_D3C6C2: ConcatVar var_48C
  loc_D3C6C6: LitVarStr var_54C, "',"
  loc_D3C6CB: ConcatVar var_4AC
  loc_D3C6CF: FLdRfVar var_3F4
  loc_D3C6D2: LitVarStr var_55C, "FealLico"
  loc_D3C6D7: PopAdLdVar
  loc_D3C6D8: FLdRfVar var_3E0
  loc_D3C6DB: FLdPr Me
  loc_D3C6DE: MemLdPr global_68
  loc_D3C6E1:  = Me.Fields
  loc_D3C6E6: FLdPr var_3E0
  loc_D3C6E9: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C6EE: FLdZeroAd var_3F4
  loc_D3C6F1: CVarAd
  loc_D3C6F5: FLdRfVar var_4EC
  loc_D3C6F8: ImpAdCallFPR4  = Year()
  loc_D3C6FD: FLdRfVar var_4EC
  loc_D3C700: ConcatVar var_51C
  loc_D3C704: LitVarStr var_56C, ",'"
  loc_D3C709: ConcatVar var_57C
  loc_D3C70D: FLdRfVar var_58C
  loc_D3C710: FLdRfVar var_45C
  loc_D3C713: LitVarStr var_59C, "CodiConc"
  loc_D3C718: PopAdLdVar
  loc_D3C719: FLdRfVar var_448
  loc_D3C71C: FLdPr Me
  loc_D3C71F: MemLdPr global_68
  loc_D3C722:  = Me.Fields
  loc_D3C727: FLdPr var_448
  loc_D3C72A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C72F: FLdPr var_45C
  loc_D3C732:  = Me.Value
  loc_D3C737: FLdRfVar var_58C
  loc_D3C73A: ConcatVar var_5AC
  loc_D3C73E: LitVarStr var_5BC, "',23,'','',0,"
  loc_D3C743: ConcatVar var_5CC
  loc_D3C747: LitI4 0
  loc_D3C74C: LitI4 -1
  loc_D3C751: LitI4 1
  loc_D3C756: LitStr "."
  loc_D3C759: LitStr ","
  loc_D3C75C: FLdFPR8 var_F4
  loc_D3C75F: CStrR8
  loc_D3C761: FStStrNoPop var_134
  loc_D3C764: ImpAdCallI2 Replace(, , , , , )
  loc_D3C769: CVarStr var_5DC
  loc_D3C76C: ConcatVar var_5FC
  loc_D3C770: LitVarStr var_5EC, ",'"
  loc_D3C775: ConcatVar var_61C
  loc_D3C779: ImpAdLdI4 MemVar_D9302C
  loc_D3C77C: CVarStr var_60C
  loc_D3C77F: ConcatVar var_62C
  loc_D3C783: LitVarStr var_63C, "');"
  loc_D3C788: ConcatVar var_64C
  loc_D3C78C: CStrVarVal var_138
  loc_D3C790: Call EjecutarRsCls(from_stack_1v)
  loc_D3C795: FFreeStr var_134 = ""
  loc_D3C79C: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = "": var_39C = "": var_3E0 = "": var_448 = ""
  loc_D3C7B9: FFreeVar var_4AC = "": var_4EC = "": var_51C = "": var_57C = "": var_58C = "": var_5AC = "": var_5CC = "": var_5DC = "": var_5FC = "": var_61C = "": var_62C = "": var_64C = "": var_1BC = "": var_19C = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = "": var_30C = "": var_32C = "": var_354 = "": var_364 = "": var_384 = "": var_3AC = "": var_3BC = "": var_3DC = "": var_404 = "": var_414 = "": var_424 = "": var_46C = "": var_444 = "": var_47C = "": var_48C = ""
  loc_D3C810: LitI2_Byte 0
  loc_D3C812: CR8I2
  loc_D3C813: FStFPR8 var_F4
  loc_D3C816: FLdPr Me
  loc_D3C819: MemLdPr global_72
  loc_D3C81C: Me.MoveNext
  loc_D3C821: Branch loc_D3BF52
  loc_D3C824: LitVarStr var_1AC, " UPDATE recabole SET ActuRebo = 'Si' WHERE PeriLiqu = "
  loc_D3C829: FLdRfVar var_19C
  loc_D3C82C: FLdRfVar var_18C
  loc_D3C82F: LitVarStr var_188, "PeriLiqu"
  loc_D3C834: PopAdLdVar
  loc_D3C835: FLdRfVar var_178
  loc_D3C838: FLdPr Me
  loc_D3C83B: MemLdPr global_68
  loc_D3C83E:  = Me.Fields
  loc_D3C843: FLdPr var_178
  loc_D3C846: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C84B: FLdPr var_18C
  loc_D3C84E:  = Me.Value
  loc_D3C853: FLdRfVar var_19C
  loc_D3C856: ConcatVar var_1BC
  loc_D3C85A: LitVarStr var_1F0, " AND BimeLiqu = "
  loc_D3C85F: ConcatVar var_1CC
  loc_D3C863: FLdRfVar var_1DC
  loc_D3C866: FLdRfVar var_1F4
  loc_D3C869: LitVarStr var_224, "BimeLiqu"
  loc_D3C86E: PopAdLdVar
  loc_D3C86F: FLdRfVar var_1E0
  loc_D3C872: FLdPr Me
  loc_D3C875: MemLdPr global_68
  loc_D3C878:  = Me.Fields
  loc_D3C87D: FLdPr var_1E0
  loc_D3C880: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C885: FLdPr var_1F4
  loc_D3C888:  = Me.Value
  loc_D3C88D: FLdRfVar var_1DC
  loc_D3C890: ConcatVar var_204
  loc_D3C894: LitVarStr var_244, " AND CodiTili = "
  loc_D3C899: ConcatVar var_214
  loc_D3C89D: FLdRfVar var_234
  loc_D3C8A0: FLdRfVar var_2BC
  loc_D3C8A3: LitVarStr var_254, "CodiTili"
  loc_D3C8A8: PopAdLdVar
  loc_D3C8A9: FLdRfVar var_2A8
  loc_D3C8AC: FLdPr Me
  loc_D3C8AF: MemLdPr global_68
  loc_D3C8B2:  = Me.Fields
  loc_D3C8B7: FLdPr var_2A8
  loc_D3C8BA: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C8BF: FLdPr var_2BC
  loc_D3C8C2:  = Me.Value
  loc_D3C8C7: FLdRfVar var_234
  loc_D3C8CA: ConcatVar var_264
  loc_D3C8CE: LitVarStr var_294, " AND NumeLiqu = "
  loc_D3C8D3: ConcatVar var_274
  loc_D3C8D7: FLdRfVar var_284
  loc_D3C8DA: FLdRfVar var_344
  loc_D3C8DD: LitVarStr var_2B8, "NumeLiqu"
  loc_D3C8E2: PopAdLdVar
  loc_D3C8E3: FLdRfVar var_330
  loc_D3C8E6: FLdPr Me
  loc_D3C8E9: MemLdPr global_68
  loc_D3C8EC:  = Me.Fields
  loc_D3C8F1: FLdPr var_330
  loc_D3C8F4: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C8F9: FLdPr var_344
  loc_D3C8FC:  = Me.Value
  loc_D3C901: FLdRfVar var_284
  loc_D3C904: ConcatVar var_2A4
  loc_D3C908: LitVarStr var_2DC, " AND CodiOfic = 2 AND CuenCtct = '"
  loc_D3C90D: ConcatVar var_2CC
  loc_D3C911: FLdRfVar var_2EC
  loc_D3C914: FLdRfVar var_39C
  loc_D3C917: LitVarStr var_31C, "CodiCome"
  loc_D3C91C: PopAdLdVar
  loc_D3C91D: FLdRfVar var_388
  loc_D3C920: FLdPr Me
  loc_D3C923: MemLdPr global_68
  loc_D3C926:  = Me.Fields
  loc_D3C92B: FLdPr var_388
  loc_D3C92E: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C933: FLdPr var_39C
  loc_D3C936:  = Me.Value
  loc_D3C93B: FLdRfVar var_2EC
  loc_D3C93E: ConcatVar var_2FC
  loc_D3C942: LitVarStr var_340, "';"
  loc_D3C947: ConcatVar var_30C
  loc_D3C94B: CStrVarVal var_134
  loc_D3C94F: Call EjecutarRsCls(from_stack_1v)
  loc_D3C954: FFree1Str var_134
  loc_D3C957: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = ""
  loc_D3C96E: FFreeVar var_19C = "": var_1BC = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = ""
  loc_D3C98F: FLdRfVar var_19C
  loc_D3C992: FLdRfVar var_18C
  loc_D3C995: LitVarStr var_188, "TipoVenc"
  loc_D3C99A: PopAdLdVar
  loc_D3C99B: FLdRfVar var_178
  loc_D3C99E: FLdPr Me
  loc_D3C9A1: MemLdPr global_68
  loc_D3C9A4:  = Me.Fields
  loc_D3C9A9: FLdPr var_178
  loc_D3C9AC: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C9B1: FLdPr var_18C
  loc_D3C9B4:  = Me.Value
  loc_D3C9B9: FLdRfVar var_19C
  loc_D3C9BC: FnCIntVar
  loc_D3C9BE: LitI2_Byte 2
  loc_D3C9C0: EqI2
  loc_D3C9C1: FFreeAd var_178 = ""
  loc_D3C9C8: FFree1Var var_19C = ""
  loc_D3C9CB: BranchF loc_D3DCE9
  loc_D3C9CE: FLdRfVar var_19C
  loc_D3C9D1: FLdRfVar var_18C
  loc_D3C9D4: LitVarStr var_188, "TotaBole"
  loc_D3C9D9: PopAdLdVar
  loc_D3C9DA: FLdRfVar var_178
  loc_D3C9DD: FLdPr Me
  loc_D3C9E0: MemLdPr global_64
  loc_D3C9E3:  = Me.Fields
  loc_D3C9E8: FLdPr var_178
  loc_D3C9EB: from_stack_2 = Me.Item(from_stack_1)
  loc_D3C9F0: FLdPr var_18C
  loc_D3C9F3:  = Me.Value
  loc_D3C9F8: FLdRfVar var_19C
  loc_D3C9FB: LitVarI2 var_1AC, 0
  loc_D3CA00: HardType
  loc_D3CA01: GtVarBool
  loc_D3CA03: FFreeAd var_178 = ""
  loc_D3CA0A: FFree1Var var_19C = ""
  loc_D3CA0D: BranchF loc_D3DCDD
  loc_D3CA10: FLdRfVar var_1BC
  loc_D3CA13: FLdRfVar var_18C
  loc_D3CA16: LitVarStr var_188, "CodiConc"
  loc_D3CA1B: PopAdLdVar
  loc_D3CA1C: FLdRfVar var_178
  loc_D3CA1F: FLdPr Me
  loc_D3CA22: MemLdPr global_68
  loc_D3CA25:  = Me.Fields
  loc_D3CA2A: FLdPr var_178
  loc_D3CA2D: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CA32: FLdPr var_18C
  loc_D3CA35:  = Me.Value
  loc_D3CA3A: FLdRfVar var_1BC
  loc_D3CA3D: FLdRfVar var_19C
  loc_D3CA40: FLdRfVar var_1F4
  loc_D3CA43: LitVarStr var_1AC, "CodiTili"
  loc_D3CA48: PopAdLdVar
  loc_D3CA49: FLdRfVar var_1E0
  loc_D3CA4C: FLdPr Me
  loc_D3CA4F: MemLdPr global_68
  loc_D3CA52:  = Me.Fields
  loc_D3CA57: FLdPr var_1E0
  loc_D3CA5A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CA5F: FLdPr var_1F4
  loc_D3CA62:  = Me.Value
  loc_D3CA67: FLdRfVar var_19C
  loc_D3CA6A: CUI1Var
  loc_D3CA6C: LitI2_Byte 2
  loc_D3CA6E: CUI1I2
  loc_D3CA70: ImpAdCallI2  = Proc_270_71_A8F7D0()
  loc_D3CA75: CVarStr var_1CC
  loc_D3CA78: HardType
  loc_D3CA79: EqVarBool
  loc_D3CA7B: FFreeAd var_178 = "": var_1E0 = "": var_1F4 = ""
  loc_D3CA86: FFreeVar var_19C = "": var_1BC = ""
  loc_D3CA8F: BranchF loc_D3D067
  loc_D3CA92: LitStr "SELECT PeriCtct, BimeCtct, NumeCtct, CapiDebo, TotaDebo FROM detabole"
  loc_D3CA95: LitStr " WHERE PeriBole = "
  loc_D3CA98: ConcatStr
  loc_D3CA99: CVarStr var_1BC
  loc_D3CA9C: FLdRfVar var_19C
  loc_D3CA9F: FLdRfVar var_18C
  loc_D3CAA2: LitVarStr var_188, "PeriLiqu"
  loc_D3CAA7: PopAdLdVar
  loc_D3CAA8: FLdRfVar var_178
  loc_D3CAAB: FLdPr Me
  loc_D3CAAE: MemLdPr global_68
  loc_D3CAB1:  = Me.Fields
  loc_D3CAB6: FLdPr var_178
  loc_D3CAB9: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CABE: FLdPr var_18C
  loc_D3CAC1:  = Me.Value
  loc_D3CAC6: FLdRfVar var_19C
  loc_D3CAC9: ConcatVar var_1CC
  loc_D3CACD: LitVarStr var_1AC, " AND CodiOfic = 2"
  loc_D3CAD2: ConcatVar var_1DC
  loc_D3CAD6: LitVarStr var_1F0, " AND CuenCtct = '"
  loc_D3CADB: ConcatVar var_204
  loc_D3CADF: FLdRfVar var_214
  loc_D3CAE2: FLdRfVar var_1F4
  loc_D3CAE5: LitVarStr var_224, "CodiCome"
  loc_D3CAEA: PopAdLdVar
  loc_D3CAEB: FLdRfVar var_1E0
  loc_D3CAEE: FLdPr Me
  loc_D3CAF1: MemLdPr global_68
  loc_D3CAF4:  = Me.Fields
  loc_D3CAF9: FLdPr var_1E0
  loc_D3CAFC: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CB01: FLdPr var_1F4
  loc_D3CB04:  = Me.Value
  loc_D3CB09: FLdRfVar var_214
  loc_D3CB0C: ConcatVar var_234
  loc_D3CB10: LitVarStr var_244, "'"
  loc_D3CB15: ConcatVar var_264
  loc_D3CB19: LitVarStr var_254, " AND PeriCtct = "
  loc_D3CB1E: ConcatVar var_274
  loc_D3CB22: FLdRfVar var_284
  loc_D3CB25: FLdRfVar var_2BC
  loc_D3CB28: LitVarStr var_294, "PeriLiqu"
  loc_D3CB2D: PopAdLdVar
  loc_D3CB2E: FLdRfVar var_2A8
  loc_D3CB31: FLdPr Me
  loc_D3CB34: MemLdPr global_68
  loc_D3CB37:  = Me.Fields
  loc_D3CB3C: FLdPr var_2A8
  loc_D3CB3F: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CB44: FLdPr var_2BC
  loc_D3CB47:  = Me.Value
  loc_D3CB4C: FLdRfVar var_284
  loc_D3CB4F: ConcatVar var_2A4
  loc_D3CB53: LitVarStr var_2B8, " AND CodiConc = '"
  loc_D3CB58: ConcatVar var_2CC
  loc_D3CB5C: FLdRfVar var_2EC
  loc_D3CB5F: FLdRfVar var_344
  loc_D3CB62: LitVarStr var_2DC, "CodiConc"
  loc_D3CB67: PopAdLdVar
  loc_D3CB68: FLdRfVar var_330
  loc_D3CB6B: FLdPr Me
  loc_D3CB6E: MemLdPr global_68
  loc_D3CB71:  = Me.Fields
  loc_D3CB76: FLdPr var_330
  loc_D3CB79: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CB7E: FLdPr var_344
  loc_D3CB81:  = Me.Value
  loc_D3CB86: FLdRfVar var_2EC
  loc_D3CB89: ConcatVar var_2FC
  loc_D3CB8D: LitVarStr var_31C, "'"
  loc_D3CB92: ConcatVar var_30C
  loc_D3CB96: LitVarStr var_340, " AND TipoCtct = 'Bimestral'"
  loc_D3CB9B: ConcatVar var_32C
  loc_D3CB9F: LitVarStr var_374, " AND CodiTili = "
  loc_D3CBA4: ConcatVar var_354
  loc_D3CBA8: FLdRfVar var_364
  loc_D3CBAB: FLdRfVar var_39C
  loc_D3CBAE: LitVarStr var_398, "CodiTili"
  loc_D3CBB3: PopAdLdVar
  loc_D3CBB4: FLdRfVar var_388
  loc_D3CBB7: FLdPr Me
  loc_D3CBBA: MemLdPr global_68
  loc_D3CBBD:  = Me.Fields
  loc_D3CBC2: FLdPr var_388
  loc_D3CBC5: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CBCA: FLdPr var_39C
  loc_D3CBCD:  = Me.Value
  loc_D3CBD2: FLdRfVar var_364
  loc_D3CBD5: ConcatVar var_384
  loc_D3CBD9: LitVarStr var_3CC, " AND NumeLiqu = "
  loc_D3CBDE: ConcatVar var_3AC
  loc_D3CBE2: FLdRfVar var_3BC
  loc_D3CBE5: FLdRfVar var_3F4
  loc_D3CBE8: LitVarStr var_3F0, "NumeLiqu"
  loc_D3CBED: PopAdLdVar
  loc_D3CBEE: FLdRfVar var_3E0
  loc_D3CBF1: FLdPr Me
  loc_D3CBF4: MemLdPr global_68
  loc_D3CBF7:  = Me.Fields
  loc_D3CBFC: FLdPr var_3E0
  loc_D3CBFF: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CC04: FLdPr var_3F4
  loc_D3CC07:  = Me.Value
  loc_D3CC0C: FLdRfVar var_3BC
  loc_D3CC0F: ConcatVar var_3DC
  loc_D3CC13: LitVarStr var_434, " ORDER BY PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D3CC18: ConcatVar var_404
  loc_D3CC1C: CStrVarVal var_134
  loc_D3CC20: Call EjecutarRsCls4(from_stack_1v)
  loc_D3CC25: FFree1Str var_134
  loc_D3CC28: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = "": var_39C = "": var_3E0 = ""
  loc_D3CC43: FFreeVar var_1BC = "": var_19C = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = "": var_30C = "": var_32C = "": var_354 = "": var_364 = "": var_384 = "": var_3AC = "": var_3BC = "": var_3DC = ""
  loc_D3CC74: FLdRfVar var_170
  loc_D3CC77: FLdPr Me
  loc_D3CC7A: MemLdPr global_72
  loc_D3CC7D:  = Me.RecordCount
  loc_D3CC82: ILdRf var_170
  loc_D3CC85: LitI4 0
  loc_D3CC8A: GtI4
  loc_D3CC8B: BranchF loc_D3D064
  loc_D3CC8E: FLdFPR8 var_114
  loc_D3CC91: CVarR8
  loc_D3CC95: FLdRfVar var_19C
  loc_D3CC98: FLdRfVar var_18C
  loc_D3CC9B: LitVarStr var_188, "TotaDebo"
  loc_D3CCA0: PopAdLdVar
  loc_D3CCA1: FLdRfVar var_178
  loc_D3CCA4: FLdPr Me
  loc_D3CCA7: MemLdPr global_72
  loc_D3CCAA:  = Me.Fields
  loc_D3CCAF: FLdPr var_178
  loc_D3CCB2: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CCB7: FLdPr var_18C
  loc_D3CCBA:  = Me.Value
  loc_D3CCBF: FLdRfVar var_19C
  loc_D3CCC2: AddVar var_1BC
  loc_D3CCC6: CR4Var
  loc_D3CCC7: FStFPR8 var_114
  loc_D3CCCA: FFreeAd var_178 = ""
  loc_D3CCD1: FFreeVar var_19C = ""
  loc_D3CCD8: FLdRfVar var_4AC
  loc_D3CCDB: FLdRfVar var_6F4
  loc_D3CCDE: LitVarStr var_4BC, "CapiDebo"
  loc_D3CCE3: PopAdLdVar
  loc_D3CCE4: FLdRfVar var_6F0
  loc_D3CCE7: FLdPr Me
  loc_D3CCEA: MemLdPr global_72
  loc_D3CCED:  = Me.Fields
  loc_D3CCF2: FLdPr var_6F0
  loc_D3CCF5: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CCFA: FLdPr var_6F4
  loc_D3CCFD:  = Me.Value
  loc_D3CD02: FLdRfVar var_57C
  loc_D3CD05: FLdRfVar var_6FC
  loc_D3CD08: LitVarStr var_52C, "TotaDebo"
  loc_D3CD0D: PopAdLdVar
  loc_D3CD0E: FLdRfVar var_6F8
  loc_D3CD11: FLdPr Me
  loc_D3CD14: MemLdPr global_72
  loc_D3CD17:  = Me.Fields
  loc_D3CD1C: FLdPr var_6F8
  loc_D3CD1F: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CD24: FLdPr var_6FC
  loc_D3CD27:  = Me.Value
  loc_D3CD2C: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiTili, NumeLiqu, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo) "
  loc_D3CD2F: LitStr " VALUES ("
  loc_D3CD32: ConcatStr
  loc_D3CD33: FStStrNoPop var_134
  loc_D3CD36: FLdI2 iPeriodo
  loc_D3CD39: CStrUI1
  loc_D3CD3B: FStStrNoPop var_138
  loc_D3CD3E: ConcatStr
  loc_D3CD3F: FStStrNoPop var_13C
  loc_D3CD42: LitStr ","
  loc_D3CD45: ConcatStr
  loc_D3CD46: FStStrNoPop var_140
  loc_D3CD49: ILdRf var_9C
  loc_D3CD4C: CStrI4
  loc_D3CD4E: FStStrNoPop var_144
  loc_D3CD51: ConcatStr
  loc_D3CD52: FStStrNoPop var_148
  loc_D3CD55: LitStr ","
  loc_D3CD58: ConcatStr
  loc_D3CD59: CVarStr var_1BC
  loc_D3CD5C: FLdRfVar var_19C
  loc_D3CD5F: FLdRfVar var_18C
  loc_D3CD62: LitVarStr var_188, "PeriCtct"
  loc_D3CD67: PopAdLdVar
  loc_D3CD68: FLdRfVar var_178
  loc_D3CD6B: FLdPr Me
  loc_D3CD6E: MemLdPr global_72
  loc_D3CD71:  = Me.Fields
  loc_D3CD76: FLdPr var_178
  loc_D3CD79: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CD7E: FLdPr var_18C
  loc_D3CD81:  = Me.Value
  loc_D3CD86: FLdRfVar var_19C
  loc_D3CD89: ConcatVar var_1CC
  loc_D3CD8D: LitVarStr var_1AC, ","
  loc_D3CD92: ConcatVar var_1DC
  loc_D3CD96: FLdRfVar var_204
  loc_D3CD99: FLdRfVar var_1F4
  loc_D3CD9C: LitVarStr var_1F0, "BimeCtct"
  loc_D3CDA1: PopAdLdVar
  loc_D3CDA2: FLdRfVar var_1E0
  loc_D3CDA5: FLdPr Me
  loc_D3CDA8: MemLdPr global_72
  loc_D3CDAB:  = Me.Fields
  loc_D3CDB0: FLdPr var_1E0
  loc_D3CDB3: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CDB8: FLdPr var_1F4
  loc_D3CDBB:  = Me.Value
  loc_D3CDC0: FLdRfVar var_204
  loc_D3CDC3: ConcatVar var_214
  loc_D3CDC7: LitVarStr var_224, ","
  loc_D3CDCC: ConcatVar var_234
  loc_D3CDD0: FLdRfVar var_264
  loc_D3CDD3: FLdRfVar var_2BC
  loc_D3CDD6: LitVarStr var_244, "NumeCtct"
  loc_D3CDDB: PopAdLdVar
  loc_D3CDDC: FLdRfVar var_2A8
  loc_D3CDDF: FLdPr Me
  loc_D3CDE2: MemLdPr global_72
  loc_D3CDE5:  = Me.Fields
  loc_D3CDEA: FLdPr var_2A8
  loc_D3CDED: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CDF2: FLdPr var_2BC
  loc_D3CDF5:  = Me.Value
  loc_D3CDFA: FLdRfVar var_264
  loc_D3CDFD: ConcatVar var_274
  loc_D3CE01: LitVarStr var_254, ",1,1,"
  loc_D3CE06: ConcatVar var_284
  loc_D3CE0A: FLdRfVar var_2A4
  loc_D3CE0D: FLdRfVar var_344
  loc_D3CE10: LitVarStr var_294, "CodiTili"
  loc_D3CE15: PopAdLdVar
  loc_D3CE16: FLdRfVar var_330
  loc_D3CE19: FLdPr Me
  loc_D3CE1C: MemLdPr global_68
  loc_D3CE1F:  = Me.Fields
  loc_D3CE24: FLdPr var_330
  loc_D3CE27: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CE2C: FLdPr var_344
  loc_D3CE2F:  = Me.Value
  loc_D3CE34: FLdRfVar var_2A4
  loc_D3CE37: ConcatVar var_2CC
  loc_D3CE3B: LitVarStr var_2B8, ","
  loc_D3CE40: ConcatVar var_2EC
  loc_D3CE44: FLdRfVar var_2FC
  loc_D3CE47: FLdRfVar var_39C
  loc_D3CE4A: LitVarStr var_2DC, "NumeLiqu"
  loc_D3CE4F: PopAdLdVar
  loc_D3CE50: FLdRfVar var_388
  loc_D3CE53: FLdPr Me
  loc_D3CE56: MemLdPr global_68
  loc_D3CE59:  = Me.Fields
  loc_D3CE5E: FLdPr var_388
  loc_D3CE61: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CE66: FLdPr var_39C
  loc_D3CE69:  = Me.Value
  loc_D3CE6E: FLdRfVar var_2FC
  loc_D3CE71: ConcatVar var_30C
  loc_D3CE75: LitVarStr var_31C, ",2,'"
  loc_D3CE7A: ConcatVar var_32C
  loc_D3CE7E: FLdRfVar var_354
  loc_D3CE81: FLdRfVar var_3F4
  loc_D3CE84: LitVarStr var_340, "CodiCome"
  loc_D3CE89: PopAdLdVar
  loc_D3CE8A: FLdRfVar var_3E0
  loc_D3CE8D: FLdPr Me
  loc_D3CE90: MemLdPr global_68
  loc_D3CE93:  = Me.Fields
  loc_D3CE98: FLdPr var_3E0
  loc_D3CE9B: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CEA0: FLdPr var_3F4
  loc_D3CEA3:  = Me.Value
  loc_D3CEA8: FLdRfVar var_354
  loc_D3CEAB: ConcatVar var_364
  loc_D3CEAF: LitVarStr var_374, "','Anual',0,0,0,"
  loc_D3CEB4: ConcatVar var_384
  loc_D3CEB8: FLdRfVar var_3AC
  loc_D3CEBB: FLdRfVar var_45C
  loc_D3CEBE: LitVarStr var_398, "TiafConc"
  loc_D3CEC3: PopAdLdVar
  loc_D3CEC4: FLdRfVar var_448
  loc_D3CEC7: FLdPr Me
  loc_D3CECA: MemLdPr global_68
  loc_D3CECD:  = Me.Fields
  loc_D3CED2: FLdPr var_448
  loc_D3CED5: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CEDA: FLdPr var_45C
  loc_D3CEDD:  = Me.Value
  loc_D3CEE2: FLdRfVar var_3AC
  loc_D3CEE5: ConcatVar var_3BC
  loc_D3CEE9: LitVarStr var_3CC, ","
  loc_D3CEEE: ConcatVar var_3DC
  loc_D3CEF2: FLdRfVar var_504
  loc_D3CEF5: LitVarStr var_3F0, "FealLico"
  loc_D3CEFA: PopAdLdVar
  loc_D3CEFB: FLdRfVar var_500
  loc_D3CEFE: FLdPr Me
  loc_D3CF01: MemLdPr global_68
  loc_D3CF04:  = Me.Fields
  loc_D3CF09: FLdPr var_500
  loc_D3CF0C: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CF11: FLdZeroAd var_504
  loc_D3CF14: CVarAd
  loc_D3CF18: FLdRfVar var_414
  loc_D3CF1B: ImpAdCallFPR4  = Year()
  loc_D3CF20: FLdRfVar var_414
  loc_D3CF23: ConcatVar var_424
  loc_D3CF27: LitVarStr var_434, ",'"
  loc_D3CF2C: ConcatVar var_444
  loc_D3CF30: FLdRfVar var_46C
  loc_D3CF33: FLdRfVar var_50C
  loc_D3CF36: LitVarStr var_458, "CodiConc"
  loc_D3CF3B: PopAdLdVar
  loc_D3CF3C: FLdRfVar var_508
  loc_D3CF3F: FLdPr Me
  loc_D3CF42: MemLdPr global_68
  loc_D3CF45:  = Me.Fields
  loc_D3CF4A: FLdPr var_508
  loc_D3CF4D: from_stack_2 = Me.Item(from_stack_1)
  loc_D3CF52: FLdPr var_50C
  loc_D3CF55:  = Me.Value
  loc_D3CF5A: FLdRfVar var_46C
  loc_D3CF5D: ConcatVar var_47C
  loc_D3CF61: LitVarStr var_49C, "',"
  loc_D3CF66: ConcatVar var_48C
  loc_D3CF6A: LitI4 0
  loc_D3CF6F: LitI4 -1
  loc_D3CF74: LitI4 1
  loc_D3CF79: LitStr "."
  loc_D3CF7C: LitStr ","
  loc_D3CF7F: FLdRfVar var_4AC
  loc_D3CF82: CStrVarTmp
  loc_D3CF83: FStStrNoPop var_14C
  loc_D3CF86: ImpAdCallI2 Replace(, , , , , )
  loc_D3CF8B: CVarStr var_4CC
  loc_D3CF8E: ConcatVar var_4EC
  loc_D3CF92: LitVarStr var_4DC, ",0,0,0,0,0,0,"
  loc_D3CF97: ConcatVar var_51C
  loc_D3CF9B: LitI4 0
  loc_D3CFA0: LitI4 -1
  loc_D3CFA5: LitI4 1
  loc_D3CFAA: LitStr "."
  loc_D3CFAD: LitStr ","
  loc_D3CFB0: FLdRfVar var_57C
  loc_D3CFB3: CStrVarTmp
  loc_D3CFB4: FStStrNoPop var_150
  loc_D3CFB7: ImpAdCallI2 Replace(, , , , , )
  loc_D3CFBC: CVarStr var_58C
  loc_D3CFBF: ConcatVar var_5AC
  loc_D3CFC3: LitVarStr var_53C, ");"
  loc_D3CFC8: ConcatVar var_5CC
  loc_D3CFCC: CStrVarVal var_154
  loc_D3CFD0: Call EjecutarRsCls(from_stack_1v)
  loc_D3CFD5: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_D3CFEA: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = "": var_39C = "": var_3E0 = "": var_3F4 = "": var_448 = "": var_45C = "": var_500 = "": var_508 = "": var_50C = "": var_6F0 = "": var_6F4 = "": var_6F8 = ""
  loc_D3D017: FFreeVar var_4CC = "": var_4EC = "": var_57C = "": var_51C = "": var_58C = "": var_5AC = "": var_5CC = "": var_1BC = "": var_19C = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = "": var_30C = "": var_32C = "": var_354 = "": var_364 = "": var_384 = "": var_3AC = "": var_3BC = "": var_404 = "": var_3DC = "": var_414 = "": var_424 = "": var_444 = "": var_46C = "": var_47C = "": var_4AC = ""
  loc_D3D064: Branch loc_D3DCDD
  loc_D3D067: FLdRfVar var_19C
  loc_D3D06A: FLdRfVar var_18C
  loc_D3D06D: LitVarStr var_188, "CrafLico"
  loc_D3D072: PopAdLdVar
  loc_D3D073: FLdRfVar var_178
  loc_D3D076: FLdPr Me
  loc_D3D079: MemLdPr global_68
  loc_D3D07C:  = Me.Fields
  loc_D3D081: FLdPr var_178
  loc_D3D084: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D089: FLdPr var_18C
  loc_D3D08C:  = Me.Value
  loc_D3D091: LitI4 2
  loc_D3D096: FLdRfVar var_19C
  loc_D3D099: FLdFPR8 var_10C
  loc_D3D09C: CVarR8
  loc_D3D0A0: SubVar var_1BC
  loc_D3D0A4: FStVar var_1CC
  loc_D3D0A8: FLdRfVar var_1CC
  loc_D3D0AB: FLdRfVar var_1DC
  loc_D3D0AE: ImpAdCallFPR4  = Round(, )
  loc_D3D0B3: FLdRfVar var_1DC
  loc_D3D0B6: CR4Var
  loc_D3D0B7: FStFPR8 var_10C
  loc_D3D0BA: FFreeAd var_178 = ""
  loc_D3D0C1: FFreeVar var_19C = "": var_1CC = ""
  loc_D3D0CA: LitStr vbNullString
  loc_D3D0CD: FStStrCopy var_130
  loc_D3D0D0: LitI2_Byte 1
  loc_D3D0D2: FLdRfVar var_AA
  loc_D3D0D5: LitI2_Byte 6
  loc_D3D0D7: ForI2 var_700
  loc_D3D0DD: LitStr "SELECT * FROM detabole"
  loc_D3D0E0: LitStr " USE INDEX (idxdetabole02)"
  loc_D3D0E3: ConcatStr
  loc_D3D0E4: FStStrNoPop var_134
  loc_D3D0E7: LitStr " WHERE PeriBole = "
  loc_D3D0EA: ConcatStr
  loc_D3D0EB: CVarStr var_1BC
  loc_D3D0EE: FLdRfVar var_19C
  loc_D3D0F1: FLdRfVar var_18C
  loc_D3D0F4: LitVarStr var_188, "PeriLiqu"
  loc_D3D0F9: PopAdLdVar
  loc_D3D0FA: FLdRfVar var_178
  loc_D3D0FD: FLdPr Me
  loc_D3D100: MemLdPr global_68
  loc_D3D103:  = Me.Fields
  loc_D3D108: FLdPr var_178
  loc_D3D10B: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D110: FLdPr var_18C
  loc_D3D113:  = Me.Value
  loc_D3D118: FLdRfVar var_19C
  loc_D3D11B: ConcatVar var_1CC
  loc_D3D11F: LitVarStr var_1AC, " AND CodiOfic = 2"
  loc_D3D124: ConcatVar var_1DC
  loc_D3D128: LitVarStr var_1F0, " AND CuenCtct = '"
  loc_D3D12D: ConcatVar var_204
  loc_D3D131: FLdRfVar var_214
  loc_D3D134: FLdRfVar var_1F4
  loc_D3D137: LitVarStr var_224, "CodiCome"
  loc_D3D13C: PopAdLdVar
  loc_D3D13D: FLdRfVar var_1E0
  loc_D3D140: FLdPr Me
  loc_D3D143: MemLdPr global_68
  loc_D3D146:  = Me.Fields
  loc_D3D14B: FLdPr var_1E0
  loc_D3D14E: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D153: FLdPr var_1F4
  loc_D3D156:  = Me.Value
  loc_D3D15B: FLdRfVar var_214
  loc_D3D15E: ConcatVar var_234
  loc_D3D162: LitVarStr var_244, "'"
  loc_D3D167: ConcatVar var_264
  loc_D3D16B: LitVarStr var_254, " AND PeriCtct = "
  loc_D3D170: ConcatVar var_274
  loc_D3D174: FLdRfVar var_284
  loc_D3D177: FLdRfVar var_2BC
  loc_D3D17A: LitVarStr var_294, "PeriLiqu"
  loc_D3D17F: PopAdLdVar
  loc_D3D180: FLdRfVar var_2A8
  loc_D3D183: FLdPr Me
  loc_D3D186: MemLdPr global_68
  loc_D3D189:  = Me.Fields
  loc_D3D18E: FLdPr var_2A8
  loc_D3D191: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D196: FLdPr var_2BC
  loc_D3D199:  = Me.Value
  loc_D3D19E: FLdRfVar var_284
  loc_D3D1A1: ConcatVar var_2A4
  loc_D3D1A5: LitVarStr var_2B8, " AND BimeCtct = "
  loc_D3D1AA: ConcatVar var_2CC
  loc_D3D1AE: FLdI2 var_AA
  loc_D3D1B1: CVarI2 var_2DC
  loc_D3D1B4: ConcatVar var_2EC
  loc_D3D1B8: LitVarStr var_31C, " AND CodiConc = '"
  loc_D3D1BD: ConcatVar var_2FC
  loc_D3D1C1: FLdRfVar var_30C
  loc_D3D1C4: FLdRfVar var_344
  loc_D3D1C7: LitVarStr var_340, "CodiConc"
  loc_D3D1CC: PopAdLdVar
  loc_D3D1CD: FLdRfVar var_330
  loc_D3D1D0: FLdPr Me
  loc_D3D1D3: MemLdPr global_68
  loc_D3D1D6:  = Me.Fields
  loc_D3D1DB: FLdPr var_330
  loc_D3D1DE: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D1E3: FLdPr var_344
  loc_D3D1E6:  = Me.Value
  loc_D3D1EB: FLdRfVar var_30C
  loc_D3D1EE: ConcatVar var_32C
  loc_D3D1F2: LitVarStr var_374, "'"
  loc_D3D1F7: ConcatVar var_354
  loc_D3D1FB: LitVarStr var_398, " AND TipoCtct = 'Bimestral'"
  loc_D3D200: ConcatVar var_364
  loc_D3D204: LitVarStr var_3CC, " AND CodiTili = "
  loc_D3D209: ConcatVar var_384
  loc_D3D20D: FLdRfVar var_3AC
  loc_D3D210: FLdRfVar var_39C
  loc_D3D213: LitVarStr var_3F0, "CodiTili"
  loc_D3D218: PopAdLdVar
  loc_D3D219: FLdRfVar var_388
  loc_D3D21C: FLdPr Me
  loc_D3D21F: MemLdPr global_68
  loc_D3D222:  = Me.Fields
  loc_D3D227: FLdPr var_388
  loc_D3D22A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D22F: FLdPr var_39C
  loc_D3D232:  = Me.Value
  loc_D3D237: FLdRfVar var_3AC
  loc_D3D23A: ConcatVar var_3BC
  loc_D3D23E: LitVarStr var_434, " AND NumeLiqu = "
  loc_D3D243: ConcatVar var_3DC
  loc_D3D247: FLdRfVar var_404
  loc_D3D24A: FLdRfVar var_3F4
  loc_D3D24D: LitVarStr var_458, "NumeLiqu"
  loc_D3D252: PopAdLdVar
  loc_D3D253: FLdRfVar var_3E0
  loc_D3D256: FLdPr Me
  loc_D3D259: MemLdPr global_68
  loc_D3D25C:  = Me.Fields
  loc_D3D261: FLdPr var_3E0
  loc_D3D264: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D269: FLdPr var_3F4
  loc_D3D26C:  = Me.Value
  loc_D3D271: FLdRfVar var_404
  loc_D3D274: ConcatVar var_414
  loc_D3D278: LitVarStr var_49C, " ORDER BY PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D3D27D: ConcatVar var_424
  loc_D3D281: CStrVarVal var_138
  loc_D3D285: Call EjecutarRsCls4(from_stack_1v)
  loc_D3D28A: FFreeStr var_134 = ""
  loc_D3D291: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = "": var_39C = "": var_3E0 = ""
  loc_D3D2AC: FFreeVar var_1BC = "": var_19C = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = "": var_30C = "": var_32C = "": var_354 = "": var_364 = "": var_384 = "": var_3AC = "": var_3BC = "": var_3DC = "": var_404 = "": var_414 = ""
  loc_D3D2E1: FLdRfVar var_170
  loc_D3D2E4: FLdPr Me
  loc_D3D2E7: MemLdPr global_72
  loc_D3D2EA:  = Me.RecordCount
  loc_D3D2EF: ILdRf var_170
  loc_D3D2F2: LitI4 0
  loc_D3D2F7: EqI4
  loc_D3D2F8: BranchF loc_D3D52D
  loc_D3D2FB: LitStr "SELECT * FROM detabole"
  loc_D3D2FE: LitStr " USE INDEX (idxdetabole02)"
  loc_D3D301: ConcatStr
  loc_D3D302: FStStrNoPop var_134
  loc_D3D305: LitStr " WHERE PeriBole = "
  loc_D3D308: ConcatStr
  loc_D3D309: CVarStr var_1BC
  loc_D3D30C: FLdRfVar var_19C
  loc_D3D30F: FLdRfVar var_18C
  loc_D3D312: LitVarStr var_188, "PeriLiqu"
  loc_D3D317: PopAdLdVar
  loc_D3D318: FLdRfVar var_178
  loc_D3D31B: FLdPr Me
  loc_D3D31E: MemLdPr global_68
  loc_D3D321:  = Me.Fields
  loc_D3D326: FLdPr var_178
  loc_D3D329: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D32E: FLdPr var_18C
  loc_D3D331:  = Me.Value
  loc_D3D336: FLdRfVar var_19C
  loc_D3D339: ConcatVar var_1CC
  loc_D3D33D: LitVarStr var_1AC, " AND CodiOfic = 2"
  loc_D3D342: ConcatVar var_1DC
  loc_D3D346: LitVarStr var_1F0, " AND CuenCtct = '"
  loc_D3D34B: ConcatVar var_204
  loc_D3D34F: FLdRfVar var_214
  loc_D3D352: FLdRfVar var_1F4
  loc_D3D355: LitVarStr var_224, "CodiCome"
  loc_D3D35A: PopAdLdVar
  loc_D3D35B: FLdRfVar var_1E0
  loc_D3D35E: FLdPr Me
  loc_D3D361: MemLdPr global_68
  loc_D3D364:  = Me.Fields
  loc_D3D369: FLdPr var_1E0
  loc_D3D36C: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D371: FLdPr var_1F4
  loc_D3D374:  = Me.Value
  loc_D3D379: FLdRfVar var_214
  loc_D3D37C: ConcatVar var_234
  loc_D3D380: LitVarStr var_244, "'"
  loc_D3D385: ConcatVar var_264
  loc_D3D389: LitVarStr var_254, " AND PeriCtct = "
  loc_D3D38E: ConcatVar var_274
  loc_D3D392: FLdRfVar var_284
  loc_D3D395: FLdRfVar var_2BC
  loc_D3D398: LitVarStr var_294, "PeriLiqu"
  loc_D3D39D: PopAdLdVar
  loc_D3D39E: FLdRfVar var_2A8
  loc_D3D3A1: FLdPr Me
  loc_D3D3A4: MemLdPr global_68
  loc_D3D3A7:  = Me.Fields
  loc_D3D3AC: FLdPr var_2A8
  loc_D3D3AF: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D3B4: FLdPr var_2BC
  loc_D3D3B7:  = Me.Value
  loc_D3D3BC: FLdRfVar var_284
  loc_D3D3BF: ConcatVar var_2A4
  loc_D3D3C3: LitVarStr var_2B8, " AND BimeCtct = 1"
  loc_D3D3C8: ConcatVar var_2CC
  loc_D3D3CC: LitVarStr var_2DC, " AND CodiConc = '"
  loc_D3D3D1: ConcatVar var_2EC
  loc_D3D3D5: FLdRfVar var_2FC
  loc_D3D3D8: FLdRfVar var_344
  loc_D3D3DB: LitVarStr var_31C, "CodiConc"
  loc_D3D3E0: PopAdLdVar
  loc_D3D3E1: FLdRfVar var_330
  loc_D3D3E4: FLdPr Me
  loc_D3D3E7: MemLdPr global_68
  loc_D3D3EA:  = Me.Fields
  loc_D3D3EF: FLdPr var_330
  loc_D3D3F2: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D3F7: FLdPr var_344
  loc_D3D3FA:  = Me.Value
  loc_D3D3FF: FLdRfVar var_2FC
  loc_D3D402: ConcatVar var_30C
  loc_D3D406: LitVarStr var_340, "'"
  loc_D3D40B: ConcatVar var_32C
  loc_D3D40F: LitVarStr var_374, " AND TipoCtct = 'Bimestral'"
  loc_D3D414: ConcatVar var_354
  loc_D3D418: LitVarStr var_398, " AND CodiTili = "
  loc_D3D41D: ConcatVar var_364
  loc_D3D421: FLdRfVar var_384
  loc_D3D424: FLdRfVar var_39C
  loc_D3D427: LitVarStr var_3CC, "CodiTili"
  loc_D3D42C: PopAdLdVar
  loc_D3D42D: FLdRfVar var_388
  loc_D3D430: FLdPr Me
  loc_D3D433: MemLdPr global_68
  loc_D3D436:  = Me.Fields
  loc_D3D43B: FLdPr var_388
  loc_D3D43E: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D443: FLdPr var_39C
  loc_D3D446:  = Me.Value
  loc_D3D44B: FLdRfVar var_384
  loc_D3D44E: ConcatVar var_3AC
  loc_D3D452: LitVarStr var_3F0, " AND NumeLiqu = "
  loc_D3D457: ConcatVar var_3BC
  loc_D3D45B: FLdRfVar var_3DC
  loc_D3D45E: FLdRfVar var_3F4
  loc_D3D461: LitVarStr var_434, "NumeLiqu"
  loc_D3D466: PopAdLdVar
  loc_D3D467: FLdRfVar var_3E0
  loc_D3D46A: FLdPr Me
  loc_D3D46D: MemLdPr global_68
  loc_D3D470:  = Me.Fields
  loc_D3D475: FLdPr var_3E0
  loc_D3D478: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D47D: FLdPr var_3F4
  loc_D3D480:  = Me.Value
  loc_D3D485: FLdRfVar var_3DC
  loc_D3D488: ConcatVar var_404
  loc_D3D48C: LitVarStr var_458, " ORDER BY PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D3D491: ConcatVar var_414
  loc_D3D495: CStrVarVal var_138
  loc_D3D499: Call EjecutarRsCls4(from_stack_1v)
  loc_D3D49E: FFreeStr var_134 = ""
  loc_D3D4A5: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = "": var_39C = "": var_3E0 = ""
  loc_D3D4C0: FFreeVar var_1BC = "": var_19C = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = "": var_30C = "": var_32C = "": var_354 = "": var_364 = "": var_384 = "": var_3AC = "": var_3BC = "": var_3DC = "": var_404 = ""
  loc_D3D4F3: FLdRfVar var_170
  loc_D3D4F6: FLdPr Me
  loc_D3D4F9: MemLdPr global_72
  loc_D3D4FC:  = Me.RecordCount
  loc_D3D501: ILdRf var_170
  loc_D3D504: LitI4 0
  loc_D3D509: GtI4
  loc_D3D50A: BranchF loc_D3D52A
  loc_D3D50D: FLdI2 var_AA
  loc_D3D510: FStI2 var_EA
  loc_D3D513: FLdRfVar var_170
  loc_D3D516: FLdI2 iPeriodo
  loc_D3D519: FLdRfVar var_90
  loc_D3D51C: NewIfNullPr clsctacte
  loc_D3D51F: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_D3D524: ILdRf var_170
  loc_D3D527: FStR4 var_98
  loc_D3D52A: Branch loc_D3D5A4
  loc_D3D52D: FLdRfVar var_19C
  loc_D3D530: FLdRfVar var_18C
  loc_D3D533: LitVarStr var_188, "BimeCtct"
  loc_D3D538: PopAdLdVar
  loc_D3D539: FLdRfVar var_178
  loc_D3D53C: FLdPr Me
  loc_D3D53F: MemLdPr global_72
  loc_D3D542:  = Me.Fields
  loc_D3D547: FLdPr var_178
  loc_D3D54A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D54F: FLdPr var_18C
  loc_D3D552:  = Me.Value
  loc_D3D557: FLdRfVar var_19C
  loc_D3D55A: CI2Var
  loc_D3D55B: FStI2 var_EA
  loc_D3D55E: FFreeAd var_178 = ""
  loc_D3D565: FFree1Var var_19C = ""
  loc_D3D568: FLdRfVar var_19C
  loc_D3D56B: FLdRfVar var_18C
  loc_D3D56E: LitVarStr var_188, "NumeCtct"
  loc_D3D573: PopAdLdVar
  loc_D3D574: FLdRfVar var_178
  loc_D3D577: FLdPr Me
  loc_D3D57A: MemLdPr global_72
  loc_D3D57D:  = Me.Fields
  loc_D3D582: FLdPr var_178
  loc_D3D585: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D58A: FLdPr var_18C
  loc_D3D58D:  = Me.Value
  loc_D3D592: FLdRfVar var_19C
  loc_D3D595: CI4Var
  loc_D3D597: FStR4 var_98
  loc_D3D59A: FFreeAd var_178 = ""
  loc_D3D5A1: FFree1Var var_19C = ""
  loc_D3D5A4: FLdRfVar var_170
  loc_D3D5A7: FLdPr Me
  loc_D3D5AA: MemLdPr global_72
  loc_D3D5AD:  = Me.RecordCount
  loc_D3D5B2: ILdRf var_170
  loc_D3D5B5: LitI4 0
  loc_D3D5BA: GtI4
  loc_D3D5BB: BranchF loc_D3DCCD
  loc_D3D5BE: FLdPr Me
  loc_D3D5C1: MemLdPr global_72
  loc_D3D5C4: Me.MoveFirst
  loc_D3D5C9: FLdRfVar var_172
  loc_D3D5CC: FLdPr Me
  loc_D3D5CF: MemLdPr global_72
  loc_D3D5D2:  = Me.EOF
  loc_D3D5D7: FLdI2 var_172
  loc_D3D5DA: NotI4
  loc_D3D5DB: BranchF loc_D3DCCD
  loc_D3D5DE: FLdRfVar var_19C
  loc_D3D5E1: FLdRfVar var_18C
  loc_D3D5E4: LitVarStr var_188, "CodiConc"
  loc_D3D5E9: PopAdLdVar
  loc_D3D5EA: FLdRfVar var_178
  loc_D3D5ED: FLdPr Me
  loc_D3D5F0: MemLdPr global_68
  loc_D3D5F3:  = Me.Fields
  loc_D3D5F8: FLdPr var_178
  loc_D3D5FB: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D600: FLdPr var_18C
  loc_D3D603:  = Me.Value
  loc_D3D608: FLdRfVar var_19C
  loc_D3D60B: LitVarStr var_1AC, "13020201"
  loc_D3D610: HardType
  loc_D3D611: EqVarBool
  loc_D3D613: FFreeAd var_178 = ""
  loc_D3D61A: FFree1Var var_19C = ""
  loc_D3D61D: BranchF loc_D3D8DE
  loc_D3D620: LitStr "SELECT SUM(ImpoLcde) ImpoLcde, SUM(DecaLcde) DecaLcde, SUM(ExceLcde) ExceLcde, SUM(TotaLcde) TotaLcde FROM licodeta "
  loc_D3D623: LitStr " USE INDEX (idxlicodeta01)"
  loc_D3D626: ConcatStr
  loc_D3D627: FStStrNoPop var_134
  loc_D3D62A: LitStr " WHERE PeriLiqu = "
  loc_D3D62D: ConcatStr
  loc_D3D62E: CVarStr var_1BC
  loc_D3D631: FLdRfVar var_19C
  loc_D3D634: FLdRfVar var_18C
  loc_D3D637: LitVarStr var_188, "PeriLiqu"
  loc_D3D63C: PopAdLdVar
  loc_D3D63D: FLdRfVar var_178
  loc_D3D640: FLdPr Me
  loc_D3D643: MemLdPr global_68
  loc_D3D646:  = Me.Fields
  loc_D3D64B: FLdPr var_178
  loc_D3D64E: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D653: FLdPr var_18C
  loc_D3D656:  = Me.Value
  loc_D3D65B: FLdRfVar var_19C
  loc_D3D65E: ConcatVar var_1CC
  loc_D3D662: LitVarStr var_1AC, " AND BimeLiqu = "
  loc_D3D667: ConcatVar var_1DC
  loc_D3D66B: FLdI2 var_AA
  loc_D3D66E: CVarI2 var_1F0
  loc_D3D671: ConcatVar var_204
  loc_D3D675: LitVarStr var_224, " AND CodiTili = "
  loc_D3D67A: ConcatVar var_214
  loc_D3D67E: FLdRfVar var_234
  loc_D3D681: FLdRfVar var_1F4
  loc_D3D684: LitVarStr var_244, "CodiTili"
  loc_D3D689: PopAdLdVar
  loc_D3D68A: FLdRfVar var_1E0
  loc_D3D68D: FLdPr Me
  loc_D3D690: MemLdPr global_68
  loc_D3D693:  = Me.Fields
  loc_D3D698: FLdPr var_1E0
  loc_D3D69B: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D6A0: FLdPr var_1F4
  loc_D3D6A3:  = Me.Value
  loc_D3D6A8: FLdRfVar var_234
  loc_D3D6AB: ConcatVar var_264
  loc_D3D6AF: LitVarStr var_254, " AND NumeLiqu = "
  loc_D3D6B4: ConcatVar var_274
  loc_D3D6B8: FLdRfVar var_284
  loc_D3D6BB: FLdRfVar var_2BC
  loc_D3D6BE: LitVarStr var_294, "NumeLiqu"
  loc_D3D6C3: PopAdLdVar
  loc_D3D6C4: FLdRfVar var_2A8
  loc_D3D6C7: FLdPr Me
  loc_D3D6CA: MemLdPr global_68
  loc_D3D6CD:  = Me.Fields
  loc_D3D6D2: FLdPr var_2A8
  loc_D3D6D5: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D6DA: FLdPr var_2BC
  loc_D3D6DD:  = Me.Value
  loc_D3D6E2: FLdRfVar var_284
  loc_D3D6E5: ConcatVar var_2A4
  loc_D3D6E9: LitVarStr var_2B8, " AND CodiCome = "
  loc_D3D6EE: ConcatVar var_2CC
  loc_D3D6F2: FLdRfVar var_2EC
  loc_D3D6F5: FLdRfVar var_344
  loc_D3D6F8: LitVarStr var_2DC, "CodiCome"
  loc_D3D6FD: PopAdLdVar
  loc_D3D6FE: FLdRfVar var_330
  loc_D3D701: FLdPr Me
  loc_D3D704: MemLdPr global_68
  loc_D3D707:  = Me.Fields
  loc_D3D70C: FLdPr var_330
  loc_D3D70F: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D714: FLdPr var_344
  loc_D3D717:  = Me.Value
  loc_D3D71C: FLdRfVar var_2EC
  loc_D3D71F: ConcatVar var_2FC
  loc_D3D723: LitVarStr var_31C, " AND CodiConc = '"
  loc_D3D728: ConcatVar var_30C
  loc_D3D72C: FLdRfVar var_32C
  loc_D3D72F: FLdRfVar var_39C
  loc_D3D732: LitVarStr var_340, "CodiConc"
  loc_D3D737: PopAdLdVar
  loc_D3D738: FLdRfVar var_388
  loc_D3D73B: FLdPr Me
  loc_D3D73E: MemLdPr global_68
  loc_D3D741:  = Me.Fields
  loc_D3D746: FLdPr var_388
  loc_D3D749: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D74E: FLdPr var_39C
  loc_D3D751:  = Me.Value
  loc_D3D756: FLdRfVar var_32C
  loc_D3D759: ConcatVar var_354
  loc_D3D75D: LitVarStr var_374, "'"
  loc_D3D762: ConcatVar var_364
  loc_D3D766: LitVarStr var_398, " AND TipoVenc = 2"
  loc_D3D76B: ConcatVar var_384
  loc_D3D76F: CStrVarVal var_138
  loc_D3D773: Call EjecutarRsCls5(from_stack_1v)
  loc_D3D778: FFreeStr var_134 = ""
  loc_D3D77F: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = ""
  loc_D3D796: FFreeVar var_1BC = "": var_19C = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = "": var_30C = "": var_32C = "": var_354 = "": var_364 = ""
  loc_D3D7BF: FLdRfVar var_170
  loc_D3D7C2: FLdPr Me
  loc_D3D7C5: MemLdPr global_76
  loc_D3D7C8:  = Me.RecordCount
  loc_D3D7CD: ILdRf var_170
  loc_D3D7D0: LitI4 0
  loc_D3D7D5: GtI4
  loc_D3D7D6: BranchF loc_D3D8DB
  loc_D3D7D9: FLdI2 var_AA
  loc_D3D7DC: LitI2_Byte 2
  loc_D3D7DE: LeI2
  loc_D3D7DF: BranchF loc_D3D821
  loc_D3D7E2: FLdRfVar var_19C
  loc_D3D7E5: FLdRfVar var_18C
  loc_D3D7E8: LitVarStr var_188, "CapiDebo"
  loc_D3D7ED: PopAdLdVar
  loc_D3D7EE: FLdRfVar var_178
  loc_D3D7F1: FLdPr Me
  loc_D3D7F4: MemLdPr global_72
  loc_D3D7F7:  = Me.Fields
  loc_D3D7FC: FLdPr var_178
  loc_D3D7FF: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D804: FLdPr var_18C
  loc_D3D807:  = Me.Value
  loc_D3D80C: FLdRfVar var_19C
  loc_D3D80F: FnCDblVar
  loc_D3D811: FStFPR8 var_D0
  loc_D3D814: FFreeAd var_178 = ""
  loc_D3D81B: FFree1Var var_19C = ""
  loc_D3D81E: Branch loc_D3D85D
  loc_D3D821: FLdRfVar var_19C
  loc_D3D824: FLdRfVar var_18C
  loc_D3D827: LitVarStr var_188, "ImpoLcde"
  loc_D3D82C: PopAdLdVar
  loc_D3D82D: FLdRfVar var_178
  loc_D3D830: FLdPr Me
  loc_D3D833: MemLdPr global_76
  loc_D3D836:  = Me.Fields
  loc_D3D83B: FLdPr var_178
  loc_D3D83E: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D843: FLdPr var_18C
  loc_D3D846:  = Me.Value
  loc_D3D84B: FLdRfVar var_19C
  loc_D3D84E: FnCDblVar
  loc_D3D850: FStFPR8 var_D0
  loc_D3D853: FFreeAd var_178 = ""
  loc_D3D85A: FFree1Var var_19C = ""
  loc_D3D85D: FLdRfVar var_19C
  loc_D3D860: FLdRfVar var_18C
  loc_D3D863: LitVarStr var_188, "DecaLcde"
  loc_D3D868: PopAdLdVar
  loc_D3D869: FLdRfVar var_178
  loc_D3D86C: FLdPr Me
  loc_D3D86F: MemLdPr global_76
  loc_D3D872:  = Me.Fields
  loc_D3D877: FLdPr var_178
  loc_D3D87A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D87F: FLdPr var_18C
  loc_D3D882:  = Me.Value
  loc_D3D887: FLdRfVar var_19C
  loc_D3D88A: FnCDblVar
  loc_D3D88C: FStFPR8 var_D8
  loc_D3D88F: FFreeAd var_178 = ""
  loc_D3D896: FFree1Var var_19C = ""
  loc_D3D899: FLdRfVar var_19C
  loc_D3D89C: FLdRfVar var_18C
  loc_D3D89F: LitVarStr var_188, "ExceLcde"
  loc_D3D8A4: PopAdLdVar
  loc_D3D8A5: FLdRfVar var_178
  loc_D3D8A8: FLdPr Me
  loc_D3D8AB: MemLdPr global_76
  loc_D3D8AE:  = Me.Fields
  loc_D3D8B3: FLdPr var_178
  loc_D3D8B6: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D8BB: FLdPr var_18C
  loc_D3D8BE:  = Me.Value
  loc_D3D8C3: FLdRfVar var_19C
  loc_D3D8C6: FnCDblVar
  loc_D3D8C8: FStFPR8 var_E0
  loc_D3D8CB: FFreeAd var_178 = ""
  loc_D3D8D2: FFree1Var var_19C = ""
  loc_D3D8D5: LitI2_Byte 0
  loc_D3D8D7: CR8I2
  loc_D3D8D8: FStFPR8 var_104
  loc_D3D8DB: Branch loc_D3D92C
  loc_D3D8DE: FLdRfVar var_19C
  loc_D3D8E1: FLdRfVar var_18C
  loc_D3D8E4: LitVarStr var_188, "CapiDebo"
  loc_D3D8E9: PopAdLdVar
  loc_D3D8EA: FLdRfVar var_178
  loc_D3D8ED: FLdPr Me
  loc_D3D8F0: MemLdPr global_72
  loc_D3D8F3:  = Me.Fields
  loc_D3D8F8: FLdPr var_178
  loc_D3D8FB: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D900: FLdPr var_18C
  loc_D3D903:  = Me.Value
  loc_D3D908: FLdRfVar var_19C
  loc_D3D90B: FnCDblVar
  loc_D3D90D: FStFPR8 var_D0
  loc_D3D910: FFreeAd var_178 = ""
  loc_D3D917: FFree1Var var_19C = ""
  loc_D3D91A: LitI2_Byte 0
  loc_D3D91C: CR8I2
  loc_D3D91D: FStFPR8 var_D8
  loc_D3D920: LitI2_Byte 0
  loc_D3D922: CR8I2
  loc_D3D923: FStFPR8 var_E0
  loc_D3D926: LitI2_Byte 0
  loc_D3D928: CR8I2
  loc_D3D929: FStFPR8 var_104
  loc_D3D92C: FLdFPR8 var_D0
  loc_D3D92F: FLdFPR8 var_D8
  loc_D3D932: SubR4
  loc_D3D933: FLdFPR8 var_E0
  loc_D3D936: SubR4
  loc_D3D937: FLdFPR8 var_104
  loc_D3D93A: SubR4
  loc_D3D93B: FStFPR8 var_E8
  loc_D3D93E: FLdFPR8 var_114
  loc_D3D941: FLdFPR8 var_D0
  loc_D3D944: AddR8
  loc_D3D945: FStFPR8 var_114
  loc_D3D948: FLdFPR8 var_11C
  loc_D3D94B: FLdFPR8 var_D8
  loc_D3D94E: AddR8
  loc_D3D94F: FStFPR8 var_11C
  loc_D3D952: FLdFPR8 var_124
  loc_D3D955: FLdFPR8 var_E0
  loc_D3D958: AddR8
  loc_D3D959: FStFPR8 var_124
  loc_D3D95C: FLdFPR8 var_12C
  loc_D3D95F: FLdFPR8 var_104
  loc_D3D962: AddR8
  loc_D3D963: FStFPR8 var_12C
  loc_D3D966: ILdRf var_130
  loc_D3D969: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiTili, NumeLiqu, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, CrafDebo, TotaDebo) "
  loc_D3D96C: ConcatStr
  loc_D3D96D: FStStrNoPop var_134
  loc_D3D970: LitStr " VALUES ("
  loc_D3D973: ConcatStr
  loc_D3D974: FStStrNoPop var_138
  loc_D3D977: FLdI2 iPeriodo
  loc_D3D97A: CStrUI1
  loc_D3D97C: FStStrNoPop var_13C
  loc_D3D97F: ConcatStr
  loc_D3D980: FStStrNoPop var_140
  loc_D3D983: LitStr ","
  loc_D3D986: ConcatStr
  loc_D3D987: FStStrNoPop var_144
  loc_D3D98A: ILdRf var_9C
  loc_D3D98D: CStrI4
  loc_D3D98F: FStStrNoPop var_148
  loc_D3D992: ConcatStr
  loc_D3D993: FStStrNoPop var_14C
  loc_D3D996: LitStr ","
  loc_D3D999: ConcatStr
  loc_D3D99A: FStStrNoPop var_150
  loc_D3D99D: FLdI2 iPeriodo
  loc_D3D9A0: CStrUI1
  loc_D3D9A2: FStStrNoPop var_154
  loc_D3D9A5: ConcatStr
  loc_D3D9A6: FStStrNoPop var_158
  loc_D3D9A9: LitStr ","
  loc_D3D9AC: ConcatStr
  loc_D3D9AD: FStStrNoPop var_15C
  loc_D3D9B0: FLdI2 var_EA
  loc_D3D9B3: CStrUI1
  loc_D3D9B5: FStStrNoPop var_160
  loc_D3D9B8: ConcatStr
  loc_D3D9B9: FStStrNoPop var_164
  loc_D3D9BC: LitStr ","
  loc_D3D9BF: ConcatStr
  loc_D3D9C0: FStStrNoPop var_168
  loc_D3D9C3: ILdRf var_98
  loc_D3D9C6: CStrI4
  loc_D3D9C8: FStStrNoPop var_16C
  loc_D3D9CB: ConcatStr
  loc_D3D9CC: FStStrNoPop var_704
  loc_D3D9CF: LitStr ",1,1,"
  loc_D3D9D2: ConcatStr
  loc_D3D9D3: CVarStr var_1BC
  loc_D3D9D6: FLdRfVar var_19C
  loc_D3D9D9: FLdRfVar var_18C
  loc_D3D9DC: LitVarStr var_188, "CodiTili"
  loc_D3D9E1: PopAdLdVar
  loc_D3D9E2: FLdRfVar var_178
  loc_D3D9E5: FLdPr Me
  loc_D3D9E8: MemLdPr global_72
  loc_D3D9EB:  = Me.Fields
  loc_D3D9F0: FLdPr var_178
  loc_D3D9F3: from_stack_2 = Me.Item(from_stack_1)
  loc_D3D9F8: FLdPr var_18C
  loc_D3D9FB:  = Me.Value
  loc_D3DA00: FLdRfVar var_19C
  loc_D3DA03: ConcatVar var_1CC
  loc_D3DA07: LitVarStr var_1AC, ","
  loc_D3DA0C: ConcatVar var_1DC
  loc_D3DA10: FLdRfVar var_204
  loc_D3DA13: FLdRfVar var_1F4
  loc_D3DA16: LitVarStr var_1F0, "NumeLiqu"
  loc_D3DA1B: PopAdLdVar
  loc_D3DA1C: FLdRfVar var_1E0
  loc_D3DA1F: FLdPr Me
  loc_D3DA22: MemLdPr global_72
  loc_D3DA25:  = Me.Fields
  loc_D3DA2A: FLdPr var_1E0
  loc_D3DA2D: from_stack_2 = Me.Item(from_stack_1)
  loc_D3DA32: FLdPr var_1F4
  loc_D3DA35:  = Me.Value
  loc_D3DA3A: FLdRfVar var_204
  loc_D3DA3D: ConcatVar var_214
  loc_D3DA41: LitVarStr var_224, ",2,'"
  loc_D3DA46: ConcatVar var_234
  loc_D3DA4A: FLdRfVar var_264
  loc_D3DA4D: FLdRfVar var_2BC
  loc_D3DA50: LitVarStr var_244, "CuenCtct"
  loc_D3DA55: PopAdLdVar
  loc_D3DA56: FLdRfVar var_2A8
  loc_D3DA59: FLdPr Me
  loc_D3DA5C: MemLdPr global_72
  loc_D3DA5F:  = Me.Fields
  loc_D3DA64: FLdPr var_2A8
  loc_D3DA67: from_stack_2 = Me.Item(from_stack_1)
  loc_D3DA6C: FLdPr var_2BC
  loc_D3DA6F:  = Me.Value
  loc_D3DA74: FLdRfVar var_264
  loc_D3DA77: ConcatVar var_274
  loc_D3DA7B: LitVarStr var_254, "','Anual',0,0,0,"
  loc_D3DA80: ConcatVar var_284
  loc_D3DA84: FLdRfVar var_2A4
  loc_D3DA87: FLdRfVar var_344
  loc_D3DA8A: LitVarStr var_294, "CodiTimo"
  loc_D3DA8F: PopAdLdVar
  loc_D3DA90: FLdRfVar var_330
  loc_D3DA93: FLdPr Me
  loc_D3DA96: MemLdPr global_72
  loc_D3DA99:  = Me.Fields
  loc_D3DA9E: FLdPr var_330
  loc_D3DAA1: from_stack_2 = Me.Item(from_stack_1)
  loc_D3DAA6: FLdPr var_344
  loc_D3DAA9:  = Me.Value
  loc_D3DAAE: FLdRfVar var_2A4
  loc_D3DAB1: ConcatVar var_2CC
  loc_D3DAB5: LitVarStr var_2B8, ","
  loc_D3DABA: ConcatVar var_2EC
  loc_D3DABE: FLdRfVar var_2FC
  loc_D3DAC1: FLdRfVar var_39C
  loc_D3DAC4: LitVarStr var_2DC, "PeriInfo"
  loc_D3DAC9: PopAdLdVar
  loc_D3DACA: FLdRfVar var_388
  loc_D3DACD: FLdPr Me
  loc_D3DAD0: MemLdPr global_72
  loc_D3DAD3:  = Me.Fields
  loc_D3DAD8: FLdPr var_388
  loc_D3DADB: from_stack_2 = Me.Item(from_stack_1)
  loc_D3DAE0: FLdPr var_39C
  loc_D3DAE3:  = Me.Value
  loc_D3DAE8: FLdRfVar var_2FC
  loc_D3DAEB: ConcatVar var_30C
  loc_D3DAEF: LitVarStr var_31C, ",'"
  loc_D3DAF4: ConcatVar var_32C
  loc_D3DAF8: FLdRfVar var_354
  loc_D3DAFB: FLdRfVar var_3F4
  loc_D3DAFE: LitVarStr var_340, "CodiConc"
  loc_D3DB03: PopAdLdVar
  loc_D3DB04: FLdRfVar var_3E0
  loc_D3DB07: FLdPr Me
  loc_D3DB0A: MemLdPr global_72
  loc_D3DB0D:  = Me.Fields
  loc_D3DB12: FLdPr var_3E0
  loc_D3DB15: from_stack_2 = Me.Item(from_stack_1)
  loc_D3DB1A: FLdPr var_3F4
  loc_D3DB1D:  = Me.Value
  loc_D3DB22: FLdRfVar var_354
  loc_D3DB25: ConcatVar var_364
  loc_D3DB29: LitVarStr var_374, "',"
  loc_D3DB2E: ConcatVar var_384
  loc_D3DB32: LitI4 0
  loc_D3DB37: LitI4 -1
  loc_D3DB3C: LitI4 1
  loc_D3DB41: LitStr "."
  loc_D3DB44: LitStr ","
  loc_D3DB47: FLdFPR8 var_D0
  loc_D3DB4A: CStrR8
  loc_D3DB4C: FStStrNoPop var_708
  loc_D3DB4F: ImpAdCallI2 Replace(, , , , , )
  loc_D3DB54: CVarStr var_3AC
  loc_D3DB57: ConcatVar var_3BC
  loc_D3DB5B: LitVarStr var_398, ","
  loc_D3DB60: ConcatVar var_3DC
  loc_D3DB64: LitI4 0
  loc_D3DB69: LitI4 -1
  loc_D3DB6E: LitI4 1
  loc_D3DB73: LitStr "."
  loc_D3DB76: LitStr ","
  loc_D3DB79: FLdFPR8 var_D8
  loc_D3DB7C: CStrR8
  loc_D3DB7E: FStStrNoPop var_70C
  loc_D3DB81: ImpAdCallI2 Replace(, , , , , )
  loc_D3DB86: CVarStr var_404
  loc_D3DB89: ConcatVar var_414
  loc_D3DB8D: LitVarStr var_3CC, ",0,0,0,"
  loc_D3DB92: ConcatVar var_424
  loc_D3DB96: LitI4 0
  loc_D3DB9B: LitI4 -1
  loc_D3DBA0: LitI4 1
  loc_D3DBA5: LitStr "."
  loc_D3DBA8: LitStr ","
  loc_D3DBAB: FLdFPR8 var_E0
  loc_D3DBAE: CStrR8
  loc_D3DBB0: FStStrNoPop var_710
  loc_D3DBB3: ImpAdCallI2 Replace(, , , , , )
  loc_D3DBB8: CVarStr var_444
  loc_D3DBBB: ConcatVar var_46C
  loc_D3DBBF: LitVarStr var_3F0, ","
  loc_D3DBC4: ConcatVar var_47C
  loc_D3DBC8: LitI4 0
  loc_D3DBCD: LitI4 -1
  loc_D3DBD2: LitI4 1
  loc_D3DBD7: LitStr "."
  loc_D3DBDA: LitStr ","
  loc_D3DBDD: FLdFPR8 var_104
  loc_D3DBE0: CStrR8
  loc_D3DBE2: FStStrNoPop var_714
  loc_D3DBE5: ImpAdCallI2 Replace(, , , , , )
  loc_D3DBEA: CVarStr var_48C
  loc_D3DBED: ConcatVar var_4AC
  loc_D3DBF1: LitVarStr var_434, ","
  loc_D3DBF6: ConcatVar var_4CC
  loc_D3DBFA: LitI4 0
  loc_D3DBFF: LitI4 -1
  loc_D3DC04: LitI4 1
  loc_D3DC09: LitStr "."
  loc_D3DC0C: LitStr ","
  loc_D3DC0F: FLdFPR8 var_E8
  loc_D3DC12: CStrR8
  loc_D3DC14: FStStrNoPop var_718
  loc_D3DC17: ImpAdCallI2 Replace(, , , , , )
  loc_D3DC1C: CVarStr var_4EC
  loc_D3DC1F: ConcatVar var_51C
  loc_D3DC23: LitVarStr var_458, ");"
  loc_D3DC28: ConcatVar var_57C
  loc_D3DC2C: CStrVarTmp
  loc_D3DC2D: FStStr var_130
  loc_D3DC30: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_704 = "": var_708 = "": var_70C = "": var_710 = "": var_714 = ""
  loc_D3DC5D: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = "": var_39C = "": var_3E0 = ""
  loc_D3DC78: FFreeVar var_4CC = "": var_4EC = "": var_51C = "": var_57C = "": var_1BC = "": var_19C = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = "": var_30C = "": var_32C = "": var_354 = "": var_364 = "": var_384 = "": var_3AC = "": var_3BC = "": var_3DC = "": var_404 = "": var_414 = "": var_424 = "": var_444 = "": var_46C = "": var_47C = "": var_48C = ""
  loc_D3DCBF: FLdPr Me
  loc_D3DCC2: MemLdPr global_72
  loc_D3DCC5: Me.MoveNext
  loc_D3DCCA: Branch loc_D3D5C9
  loc_D3DCCD: FLdRfVar var_AA
  loc_D3DCD0: NextI2 var_700, loc_D3D0DD
  loc_D3DCD5: ILdRf var_130
  loc_D3DCD8: Call EjecutarRsCls(from_stack_1v)
  loc_D3DCDD: LitI2_Byte 0
  loc_D3DCDF: CR8I2
  loc_D3DCE0: FStFPR8 var_B8
  loc_D3DCE3: LitI2_Byte 0
  loc_D3DCE5: CR8I2
  loc_D3DCE6: FStFPR8 var_C0
  loc_D3DCE9: Branch loc_D3DE65
  loc_D3DCEC: FLdRfVar var_4FC
  loc_D3DCEF: LitVarStr var_188, "Pago Anticipado"
  loc_D3DCF4: HardType
  loc_D3DCF5: EqVarBool
  loc_D3DCF7: BranchF loc_D3DE65
  loc_D3DCFA: LitVarStr var_1AC, " UPDATE pagoanti SET EstaPaan = 'Liquidado' WHERE CodiOfic = 2 AND CuenCtct = '"
  loc_D3DCFF: FLdRfVar var_19C
  loc_D3DD02: FLdRfVar var_18C
  loc_D3DD05: LitVarStr var_188, "CodiCome"
  loc_D3DD0A: PopAdLdVar
  loc_D3DD0B: FLdRfVar var_178
  loc_D3DD0E: FLdPr Me
  loc_D3DD11: MemLdPr global_68
  loc_D3DD14:  = Me.Fields
  loc_D3DD19: FLdPr var_178
  loc_D3DD1C: from_stack_2 = Me.Item(from_stack_1)
  loc_D3DD21: FLdPr var_18C
  loc_D3DD24:  = Me.Value
  loc_D3DD29: FLdRfVar var_19C
  loc_D3DD2C: ConcatVar var_1BC
  loc_D3DD30: LitVarStr var_1F0, "' AND PeriLiqu = "
  loc_D3DD35: ConcatVar var_1CC
  loc_D3DD39: FLdRfVar var_1DC
  loc_D3DD3C: FLdRfVar var_1F4
  loc_D3DD3F: LitVarStr var_224, "PeriLiqu"
  loc_D3DD44: PopAdLdVar
  loc_D3DD45: FLdRfVar var_1E0
  loc_D3DD48: FLdPr Me
  loc_D3DD4B: MemLdPr global_68
  loc_D3DD4E:  = Me.Fields
  loc_D3DD53: FLdPr var_1E0
  loc_D3DD56: from_stack_2 = Me.Item(from_stack_1)
  loc_D3DD5B: FLdPr var_1F4
  loc_D3DD5E:  = Me.Value
  loc_D3DD63: FLdRfVar var_1DC
  loc_D3DD66: ConcatVar var_204
  loc_D3DD6A: LitVarStr var_244, " AND BimeLiqu = "
  loc_D3DD6F: ConcatVar var_214
  loc_D3DD73: FLdRfVar var_234
  loc_D3DD76: FLdRfVar var_2BC
  loc_D3DD79: LitVarStr var_254, "BimeLiqu"
  loc_D3DD7E: PopAdLdVar
  loc_D3DD7F: FLdRfVar var_2A8
  loc_D3DD82: FLdPr Me
  loc_D3DD85: MemLdPr global_68
  loc_D3DD88:  = Me.Fields
  loc_D3DD8D: FLdPr var_2A8
  loc_D3DD90: from_stack_2 = Me.Item(from_stack_1)
  loc_D3DD95: FLdPr var_2BC
  loc_D3DD98:  = Me.Value
  loc_D3DD9D: FLdRfVar var_234
  loc_D3DDA0: ConcatVar var_264
  loc_D3DDA4: LitVarStr var_294, " AND CodiTili = "
  loc_D3DDA9: ConcatVar var_274
  loc_D3DDAD: FLdRfVar var_284
  loc_D3DDB0: FLdRfVar var_344
  loc_D3DDB3: LitVarStr var_2B8, "CodiTili"
  loc_D3DDB8: PopAdLdVar
  loc_D3DDB9: FLdRfVar var_330
  loc_D3DDBC: FLdPr Me
  loc_D3DDBF: MemLdPr global_68
  loc_D3DDC2:  = Me.Fields
  loc_D3DDC7: FLdPr var_330
  loc_D3DDCA: from_stack_2 = Me.Item(from_stack_1)
  loc_D3DDCF: FLdPr var_344
  loc_D3DDD2:  = Me.Value
  loc_D3DDD7: FLdRfVar var_284
  loc_D3DDDA: ConcatVar var_2A4
  loc_D3DDDE: LitVarStr var_2DC, " AND NumeLiqu = "
  loc_D3DDE3: ConcatVar var_2CC
  loc_D3DDE7: FLdRfVar var_2EC
  loc_D3DDEA: FLdRfVar var_39C
  loc_D3DDED: LitVarStr var_31C, "NumeLiqu"
  loc_D3DDF2: PopAdLdVar
  loc_D3DDF3: FLdRfVar var_388
  loc_D3DDF6: FLdPr Me
  loc_D3DDF9: MemLdPr global_68
  loc_D3DDFC:  = Me.Fields
  loc_D3DE01: FLdPr var_388
  loc_D3DE04: from_stack_2 = Me.Item(from_stack_1)
  loc_D3DE09: FLdPr var_39C
  loc_D3DE0C:  = Me.Value
  loc_D3DE11: FLdRfVar var_2EC
  loc_D3DE14: ConcatVar var_2FC
  loc_D3DE18: LitVarStr var_340, ";"
  loc_D3DE1D: ConcatVar var_30C
  loc_D3DE21: CStrVarVal var_134
  loc_D3DE25: Call EjecutarRsCls(from_stack_1v)
  loc_D3DE2A: FFree1Str var_134
  loc_D3DE2D: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = ""
  loc_D3DE44: FFreeVar var_19C = "": var_1BC = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = ""
  loc_D3DE65: LitVarStr var_224, " UPDATE liqucome SET ActuLico = 'Si', PeriBole = "
  loc_D3DE6A: LitVarI2 var_19C, 0
  loc_D3DE6F: FLdRfVar iPeriodo
  loc_D3DE72: CVarRef
  loc_D3DE77: ILdRf var_9C
  loc_D3DE7A: LitI4 0
  loc_D3DE7F: NeI4
  loc_D3DE80: CVarBoolI2 var_188
  loc_D3DE84: FLdRfVar var_1BC
  loc_D3DE87: ImpAdCallFPR4  = IIf(, , )
  loc_D3DE8C: FLdRfVar var_1BC
  loc_D3DE8F: ConcatVar var_1CC
  loc_D3DE93: LitVarStr var_244, ", NumeBole = "
  loc_D3DE98: ConcatVar var_1DC
  loc_D3DE9C: ILdRf var_9C
  loc_D3DE9F: CVarI4
  loc_D3DEA3: ConcatVar var_204
  loc_D3DEA7: LitVarStr var_294, ", Feaclico = '"
  loc_D3DEAC: ConcatVar var_214
  loc_D3DEB0: LitI4 1
  loc_D3DEB5: LitI4 1
  loc_D3DEBA: LitVarStr var_2DC, "yyyy-mm-dd"
  loc_D3DEBF: FStVarCopyObj var_234
  loc_D3DEC2: FLdRfVar var_234
  loc_D3DEC5: FLdRfVar var_A4
  loc_D3DEC8: CVarRef
  loc_D3DECD: ImpAdCallI2 Format$(, )
  loc_D3DED2: CVarStr var_264
  loc_D3DED5: ConcatVar var_274
  loc_D3DED9: LitVarStr var_31C, "', OrdeLico = "
  loc_D3DEDE: ConcatVar var_284
  loc_D3DEE2: ILdRf lOrden
  loc_D3DEE5: CVarI4
  loc_D3DEE9: ConcatVar var_2A4
  loc_D3DEED: LitVarStr var_374, " WHERE PeriLiqu = "
  loc_D3DEF2: ConcatVar var_2CC
  loc_D3DEF6: FLdRfVar var_2EC
  loc_D3DEF9: FLdRfVar var_18C
  loc_D3DEFC: LitVarStr var_398, "PeriLiqu"
  loc_D3DF01: PopAdLdVar
  loc_D3DF02: FLdRfVar var_178
  loc_D3DF05: FLdPr Me
  loc_D3DF08: MemLdPr global_68
  loc_D3DF0B:  = Me.Fields
  loc_D3DF10: FLdPr var_178
  loc_D3DF13: from_stack_2 = Me.Item(from_stack_1)
  loc_D3DF18: FLdPr var_18C
  loc_D3DF1B:  = Me.Value
  loc_D3DF20: FLdRfVar var_2EC
  loc_D3DF23: ConcatVar var_2FC
  loc_D3DF27: LitVarStr var_3CC, " AND BimeLiqu = "
  loc_D3DF2C: ConcatVar var_30C
  loc_D3DF30: FLdRfVar var_32C
  loc_D3DF33: FLdRfVar var_1F4
  loc_D3DF36: LitVarStr var_3F0, "BimeLiqu"
  loc_D3DF3B: PopAdLdVar
  loc_D3DF3C: FLdRfVar var_1E0
  loc_D3DF3F: FLdPr Me
  loc_D3DF42: MemLdPr global_68
  loc_D3DF45:  = Me.Fields
  loc_D3DF4A: FLdPr var_1E0
  loc_D3DF4D: from_stack_2 = Me.Item(from_stack_1)
  loc_D3DF52: FLdPr var_1F4
  loc_D3DF55:  = Me.Value
  loc_D3DF5A: FLdRfVar var_32C
  loc_D3DF5D: ConcatVar var_354
  loc_D3DF61: LitVarStr var_434, " AND CodiTili = "
  loc_D3DF66: ConcatVar var_364
  loc_D3DF6A: FLdRfVar var_384
  loc_D3DF6D: FLdRfVar var_2BC
  loc_D3DF70: LitVarStr var_458, "CodiTili"
  loc_D3DF75: PopAdLdVar
  loc_D3DF76: FLdRfVar var_2A8
  loc_D3DF79: FLdPr Me
  loc_D3DF7C: MemLdPr global_68
  loc_D3DF7F:  = Me.Fields
  loc_D3DF84: FLdPr var_2A8
  loc_D3DF87: from_stack_2 = Me.Item(from_stack_1)
  loc_D3DF8C: FLdPr var_2BC
  loc_D3DF8F:  = Me.Value
  loc_D3DF94: FLdRfVar var_384
  loc_D3DF97: ConcatVar var_3AC
  loc_D3DF9B: LitVarStr var_49C, " AND NumeLiqu = "
  loc_D3DFA0: ConcatVar var_3BC
  loc_D3DFA4: FLdRfVar var_3DC
  loc_D3DFA7: FLdRfVar var_344
  loc_D3DFAA: LitVarStr var_4BC, "NumeLiqu"
  loc_D3DFAF: PopAdLdVar
  loc_D3DFB0: FLdRfVar var_330
  loc_D3DFB3: FLdPr Me
  loc_D3DFB6: MemLdPr global_68
  loc_D3DFB9:  = Me.Fields
  loc_D3DFBE: FLdPr var_330
  loc_D3DFC1: from_stack_2 = Me.Item(from_stack_1)
  loc_D3DFC6: FLdPr var_344
  loc_D3DFC9:  = Me.Value
  loc_D3DFCE: FLdRfVar var_3DC
  loc_D3DFD1: ConcatVar var_404
  loc_D3DFD5: LitVarStr var_4DC, " AND CodiCome = "
  loc_D3DFDA: ConcatVar var_414
  loc_D3DFDE: FLdRfVar var_424
  loc_D3DFE1: FLdRfVar var_39C
  loc_D3DFE4: LitVarStr var_52C, "CodiCome"
  loc_D3DFE9: PopAdLdVar
  loc_D3DFEA: FLdRfVar var_388
  loc_D3DFED: FLdPr Me
  loc_D3DFF0: MemLdPr global_68
  loc_D3DFF3:  = Me.Fields
  loc_D3DFF8: FLdPr var_388
  loc_D3DFFB: from_stack_2 = Me.Item(from_stack_1)
  loc_D3E000: FLdPr var_39C
  loc_D3E003:  = Me.Value
  loc_D3E008: FLdRfVar var_424
  loc_D3E00B: ConcatVar var_444
  loc_D3E00F: LitVarStr var_53C, " AND CodiConc = '"
  loc_D3E014: ConcatVar var_46C
  loc_D3E018: FLdRfVar var_47C
  loc_D3E01B: FLdRfVar var_3F4
  loc_D3E01E: LitVarStr var_54C, "CodiConc"
  loc_D3E023: PopAdLdVar
  loc_D3E024: FLdRfVar var_3E0
  loc_D3E027: FLdPr Me
  loc_D3E02A: MemLdPr global_68
  loc_D3E02D:  = Me.Fields
  loc_D3E032: FLdPr var_3E0
  loc_D3E035: from_stack_2 = Me.Item(from_stack_1)
  loc_D3E03A: FLdPr var_3F4
  loc_D3E03D:  = Me.Value
  loc_D3E042: FLdRfVar var_47C
  loc_D3E045: ConcatVar var_48C
  loc_D3E049: LitVarStr var_55C, "' AND TipoVenc = "
  loc_D3E04E: ConcatVar var_4AC
  loc_D3E052: FLdRfVar var_4CC
  loc_D3E055: FLdRfVar var_45C
  loc_D3E058: LitVarStr var_56C, "TipoVenc"
  loc_D3E05D: PopAdLdVar
  loc_D3E05E: FLdRfVar var_448
  loc_D3E061: FLdPr Me
  loc_D3E064: MemLdPr global_68
  loc_D3E067:  = Me.Fields
  loc_D3E06C: FLdPr var_448
  loc_D3E06F: from_stack_2 = Me.Item(from_stack_1)
  loc_D3E074: FLdPr var_45C
  loc_D3E077:  = Me.Value
  loc_D3E07C: FLdRfVar var_4CC
  loc_D3E07F: ConcatVar var_4EC
  loc_D3E083: LitVarStr var_59C, ";"
  loc_D3E088: ConcatVar var_51C
  loc_D3E08C: CStrVarVal var_134
  loc_D3E090: Call EjecutarRsCls(from_stack_1v)
  loc_D3E095: FFree1Str var_134
  loc_D3E098: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_2BC = "": var_330 = "": var_344 = "": var_388 = "": var_39C = "": var_3E0 = "": var_3F4 = "": var_448 = ""
  loc_D3E0B7: FFreeVar var_4AC = "": var_4CC = "": var_4EC = "": var_51C = "": var_188 = "": var_19C = "": var_1BC = "": var_1CC = "": var_1DC = "": var_204 = "": var_234 = "": var_214 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2CC = "": var_2EC = "": var_2FC = "": var_30C = "": var_32C = "": var_354 = "": var_364 = "": var_384 = "": var_3AC = "": var_3BC = "": var_3DC = "": var_404 = "": var_414 = "": var_424 = "": var_444 = "": var_46C = "": var_47C = ""
  loc_D3E0FE: FLdPr Me
  loc_D3E101: MemLdPr global_68
  loc_D3E104: Me.MoveNext
  loc_D3E109: Branch loc_D3AB38
  loc_D3E10C: FLdRfVar var_19C
  loc_D3E10F: FLdRfVar var_18C
  loc_D3E112: LitVarStr var_188, "TipoVenc"
  loc_D3E117: PopAdLdVar
  loc_D3E118: FLdRfVar var_178
  loc_D3E11B: FLdPr Me
  loc_D3E11E: MemLdPr global_64
  loc_D3E121:  = Me.Fields
  loc_D3E126: FLdPr var_178
  loc_D3E129: from_stack_2 = Me.Item(from_stack_1)
  loc_D3E12E: FLdPr var_18C
  loc_D3E131:  = Me.Value
  loc_D3E136: FLdRfVar var_19C
  loc_D3E139: FnCIntVar
  loc_D3E13B: LitI2_Byte 2
  loc_D3E13D: EqI2
  loc_D3E13E: FFreeAd var_178 = ""
  loc_D3E145: FFree1Var var_19C = ""
  loc_D3E148: BranchF loc_D3E498
  loc_D3E14B: FLdFPR8 var_114
  loc_D3E14E: FLdFPR8 var_11C
  loc_D3E151: SubR4
  loc_D3E152: FLdFPR8 var_124
  loc_D3E155: SubR4
  loc_D3E156: FLdFPR8 var_12C
  loc_D3E159: SubR4
  loc_D3E15A: FStFPR8 var_C8
  loc_D3E15D: FLdFPR8 var_C8
  loc_D3E160: LitI2_Byte 0
  loc_D3E162: CR8I2
  loc_D3E163: GtR4
  loc_D3E164: BranchF loc_D3E498
  loc_D3E167: FLdRfVar var_2BC
  loc_D3E16A: LitVarStr var_2B8, "FeveLico"
  loc_D3E16F: PopAdLdVar
  loc_D3E170: FLdRfVar var_2A8
  loc_D3E173: FLdPr Me
  loc_D3E176: MemLdPr global_64
  loc_D3E179:  = Me.Fields
  loc_D3E17E: FLdPr var_2A8
  loc_D3E181: from_stack_2 = Me.Item(from_stack_1)
  loc_D3E186: LitStr " INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiTili, NumeLiqu, CodiFapa, CuotDefa, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, CrafBole, TotaBole, CodiUsua) "
  loc_D3E189: LitStr " VALUES ("
  loc_D3E18C: ConcatStr
  loc_D3E18D: FStStrNoPop var_134
  loc_D3E190: FLdI2 iPeriodo
  loc_D3E193: CStrUI1
  loc_D3E195: FStStrNoPop var_138
  loc_D3E198: ConcatStr
  loc_D3E199: FStStrNoPop var_13C
  loc_D3E19C: LitStr ","
  loc_D3E19F: ConcatStr
  loc_D3E1A0: FStStrNoPop var_140
  loc_D3E1A3: ILdRf var_9C
  loc_D3E1A6: CStrI4
  loc_D3E1A8: FStStrNoPop var_144
  loc_D3E1AB: ConcatStr
  loc_D3E1AC: FStStrNoPop var_148
  loc_D3E1AF: LitStr ",2,'"
  loc_D3E1B2: ConcatStr
  loc_D3E1B3: CVarStr var_1BC
  loc_D3E1B6: FLdRfVar var_19C
  loc_D3E1B9: FLdRfVar var_18C
  loc_D3E1BC: LitVarStr var_188, "CodiCome"
  loc_D3E1C1: PopAdLdVar
  loc_D3E1C2: FLdRfVar var_178
  loc_D3E1C5: FLdPr Me
  loc_D3E1C8: MemLdPr global_64
  loc_D3E1CB:  = Me.Fields
  loc_D3E1D0: FLdPr var_178
  loc_D3E1D3: from_stack_2 = Me.Item(from_stack_1)
  loc_D3E1D8: FLdPr var_18C
  loc_D3E1DB:  = Me.Value
  loc_D3E1E0: FLdRfVar var_19C
  loc_D3E1E3: ConcatVar var_1CC
  loc_D3E1E7: LitVarStr var_1AC, "','"
  loc_D3E1EC: ConcatVar var_1DC
  loc_D3E1F0: FLdRfVar var_204
  loc_D3E1F3: FLdRfVar var_1F4
  loc_D3E1F6: LitVarStr var_1F0, "CucuPers"
  loc_D3E1FB: PopAdLdVar
  loc_D3E1FC: FLdRfVar var_1E0
  loc_D3E1FF: FLdPr Me
  loc_D3E202: MemLdPr global_64
  loc_D3E205:  = Me.Fields
  loc_D3E20A: FLdPr var_1E0
  loc_D3E20D: from_stack_2 = Me.Item(from_stack_1)
  loc_D3E212: FLdPr var_1F4
  loc_D3E215:  = Me.Value
  loc_D3E21A: FLdRfVar var_204
  loc_D3E21D: ConcatVar var_214
  loc_D3E221: LitVarStr var_224, "','"
  loc_D3E226: ConcatVar var_234
  loc_D3E22A: LitI4 1
  loc_D3E22F: LitI4 1
  loc_D3E234: LitVarStr var_254, "yyyy-mm-dd"
  loc_D3E239: FStVarCopyObj var_264
  loc_D3E23C: FLdRfVar var_264
  loc_D3E23F: FLdRfVar var_A4
  loc_D3E242: CVarRef
  loc_D3E247: ImpAdCallI2 Format$(, )
  loc_D3E24C: CVarStr var_274
  loc_D3E24F: ConcatVar var_284
  loc_D3E253: LitVarStr var_294, "','"
  loc_D3E258: ConcatVar var_2A4
  loc_D3E25C: LitI4 1
  loc_D3E261: LitI4 1
  loc_D3E266: LitVarStr var_2DC, "yyyy-mm-dd"
  loc_D3E26B: FStVarCopyObj var_2EC
  loc_D3E26E: FLdRfVar var_2EC
  loc_D3E271: FLdZeroAd var_2BC
  loc_D3E274: CVarAd
  loc_D3E278: ImpAdCallI2 Format$(, )
  loc_D3E27D: CVarStr var_2FC
  loc_D3E280: ConcatVar var_30C
  loc_D3E284: LitVarStr var_31C, "',0,'Anual','Emitido',"
  loc_D3E289: ConcatVar var_32C
  loc_D3E28D: FLdRfVar var_354
  loc_D3E290: FLdRfVar var_344
  loc_D3E293: LitVarStr var_340, "CodiTili"
  loc_D3E298: PopAdLdVar
  loc_D3E299: FLdRfVar var_330
  loc_D3E29C: FLdPr Me
  loc_D3E29F: MemLdPr global_64
  loc_D3E2A2:  = Me.Fields
  loc_D3E2A7: FLdPr var_330
  loc_D3E2AA: from_stack_2 = Me.Item(from_stack_1)
  loc_D3E2AF: FLdPr var_344
  loc_D3E2B2:  = Me.Value
  loc_D3E2B7: FLdRfVar var_354
  loc_D3E2BA: ConcatVar var_364
  loc_D3E2BE: LitVarStr var_374, ","
  loc_D3E2C3: ConcatVar var_384
  loc_D3E2C7: FLdRfVar var_3AC
  loc_D3E2CA: FLdRfVar var_39C
  loc_D3E2CD: LitVarStr var_398, "NumeLiqu"
  loc_D3E2D2: PopAdLdVar
  loc_D3E2D3: FLdRfVar var_388
  loc_D3E2D6: FLdPr Me
  loc_D3E2D9: MemLdPr global_64
  loc_D3E2DC:  = Me.Fields
  loc_D3E2E1: FLdPr var_388
  loc_D3E2E4: from_stack_2 = Me.Item(from_stack_1)
  loc_D3E2E9: FLdPr var_39C
  loc_D3E2EC:  = Me.Value
  loc_D3E2F1: FLdRfVar var_3AC
  loc_D3E2F4: ConcatVar var_3BC
  loc_D3E2F8: LitVarStr var_3CC, ",0,0,"
  loc_D3E2FD: ConcatVar var_3DC
  loc_D3E301: LitI4 0
  loc_D3E306: LitI4 -1
  loc_D3E30B: LitI4 1
  loc_D3E310: LitStr "."
  loc_D3E313: LitStr ","
  loc_D3E316: FLdFPR8 var_114
  loc_D3E319: CStrR8
  loc_D3E31B: FStStrNoPop var_14C
  loc_D3E31E: ImpAdCallI2 Replace(, , , , , )
  loc_D3E323: CVarStr var_404
  loc_D3E326: ConcatVar var_414
  loc_D3E32A: LitVarStr var_3F0, ",0,"
  loc_D3E32F: ConcatVar var_424
  loc_D3E333: LitI4 0
  loc_D3E338: LitI4 -1
  loc_D3E33D: LitI4 1
  loc_D3E342: LitStr "."
  loc_D3E345: LitStr ","
  loc_D3E348: FLdFPR8 var_11C
  loc_D3E34B: CStrR8
  loc_D3E34D: FStStrNoPop var_150
  loc_D3E350: ImpAdCallI2 Replace(, , , , , )
  loc_D3E355: CVarStr var_444
  loc_D3E358: ConcatVar var_46C
  loc_D3E35C: LitVarStr var_434, ",0,0,"
  loc_D3E361: ConcatVar var_47C
  loc_D3E365: LitI4 0
  loc_D3E36A: LitI4 -1
  loc_D3E36F: LitI4 1
  loc_D3E374: LitStr "."
  loc_D3E377: LitStr ","
  loc_D3E37A: FLdFPR8 var_124
  loc_D3E37D: CStrR8
  loc_D3E37F: FStStrNoPop var_154
  loc_D3E382: ImpAdCallI2 Replace(, , , , , )
  loc_D3E387: CVarStr var_48C
  loc_D3E38A: ConcatVar var_4AC
  loc_D3E38E: LitVarStr var_458, ","
  loc_D3E393: ConcatVar var_4CC
  loc_D3E397: LitI4 0
  loc_D3E39C: LitI4 -1
  loc_D3E3A1: LitI4 1
  loc_D3E3A6: LitStr "."
  loc_D3E3A9: LitStr ","
  loc_D3E3AC: FLdFPR8 var_12C
  loc_D3E3AF: CStrR8
  loc_D3E3B1: FStStrNoPop var_158
  loc_D3E3B4: ImpAdCallI2 Replace(, , , , , )
  loc_D3E3B9: CVarStr var_4EC
  loc_D3E3BC: ConcatVar var_51C
  loc_D3E3C0: LitVarStr var_49C, ","
  loc_D3E3C5: ConcatVar var_57C
  loc_D3E3C9: LitI4 0
  loc_D3E3CE: LitI4 -1
  loc_D3E3D3: LitI4 1
  loc_D3E3D8: LitStr "."
  loc_D3E3DB: LitStr ","
  loc_D3E3DE: FLdFPR8 var_C8
  loc_D3E3E1: CStrR8
  loc_D3E3E3: FStStrNoPop var_15C
  loc_D3E3E6: ImpAdCallI2 Replace(, , , , , )
  loc_D3E3EB: CVarStr var_58C
  loc_D3E3EE: ConcatVar var_5AC
  loc_D3E3F2: LitVarStr var_4BC, ",'"
  loc_D3E3F7: ConcatVar var_5CC
  loc_D3E3FB: ImpAdLdI4 MemVar_D9302C
  loc_D3E3FE: CVarStr var_4DC
  loc_D3E401: ConcatVar var_5DC
  loc_D3E405: LitVarStr var_52C, "');"
  loc_D3E40A: ConcatVar var_5FC
  loc_D3E40E: CStrVarVal var_160
  loc_D3E412: Call EjecutarRsCls(from_stack_1v)
  loc_D3E417: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_D3E432: FFreeAd var_178 = "": var_18C = "": var_1E0 = "": var_1F4 = "": var_2A8 = "": var_330 = "": var_344 = "": var_388 = ""
  loc_D3E447: FFreeVar var_4CC = "": var_4EC = "": var_51C = "": var_57C = "": var_58C = "": var_5AC = "": var_5CC = "": var_5DC = "": var_5FC = "": var_1BC = "": var_19C = "": var_1CC = "": var_1DC = "": var_204 = "": var_214 = "": var_264 = "": var_234 = "": var_274 = "": var_284 = "": var_2CC = "": var_2EC = "": var_2A4 = "": var_2FC = "": var_30C = "": var_32C = "": var_354 = "": var_364 = "": var_384 = "": var_3AC = "": var_3BC = "": var_3DC = "": var_404 = "": var_414 = "": var_424 = "": var_444 = "": var_46C = "": var_47C = "": var_48C = ""
  loc_D3E498: FLdPr Me
  loc_D3E49B: MemLdPr global_64
  loc_D3E49E: Me.MoveNext
  loc_D3E4A3: Branch loc_D3A4F7
  loc_D3E4A6: LitStr "COMMIT;"
  loc_D3E4A9: Call EjecutarRsCls(from_stack_1v)
  loc_D3E4AE: ExitProcCbHresult
  loc_D3E4B4: LitStr "rollback"
  loc_D3E4B7: Call EjecutarRsCls(from_stack_1v)
  loc_D3E4BC: LitVarStr var_1AC, " "
  loc_D3E4C1: FLdRfVar var_19C
  loc_D3E4C4: FLdRfVar var_18C
  loc_D3E4C7: LitVarStr var_188, "CodiCome"
  loc_D3E4CC: PopAdLdVar
  loc_D3E4CD: FLdRfVar var_178
  loc_D3E4D0: FLdPr Me
  loc_D3E4D3: MemLdPr global_64
  loc_D3E4D6:  = Me.Fields
  loc_D3E4DB: FLdPr var_178
  loc_D3E4DE: from_stack_2 = Me.Item(from_stack_1)
  loc_D3E4E3: FLdPr var_18C
  loc_D3E4E6:  = Me.Value
  loc_D3E4EB: FLdRfVar var_19C
  loc_D3E4EE: ConcatVar var_1BC
  loc_D3E4F2: CStrVarTmp
  loc_D3E4F3: FStStr var_88
  loc_D3E4F6: FFreeAd var_178 = ""
  loc_D3E4FD: FFreeVar var_19C = ""
  loc_D3E504: ExitProcCbHresult
End Function

Public Function BuscaDeudaDeBimestreParaLaEmisionMasiva(sCuenCtct, iPeriCtct, iBimeCtct) 'ACF580
  'Data Table: 48DC88
  loc_ACF488: ILdRf sCuenCtct
  loc_ACF48B: FStStrCopy var_8C
  loc_ACF48E: LitI2_Byte 0
  loc_ACF490: FStI2 var_86
  loc_ACF493: LitStr " SELECT IFNULL(SUM(CredCtct),0) CredCtct "
  loc_ACF496: LitStr " FROM  ctacte USE INDEX (idxctacte09)"
  loc_ACF499: ConcatStr
  loc_ACF49A: FStStrNoPop var_90
  loc_ACF49D: LitStr " WHERE ctacte.CodiOfic = 2"
  loc_ACF4A0: ConcatStr
  loc_ACF4A1: FStStrNoPop BuscaDeudaDeBimestreParaLaEmisionMasiva
  loc_ACF4A4: LitStr " AND ctacte.CuenCtct = '"
  loc_ACF4A7: ConcatStr
  loc_ACF4A8: FStStrNoPop var_98
  loc_ACF4AB: ILdRf var_8C
  loc_ACF4AE: ConcatStr
  loc_ACF4AF: FStStrNoPop var_9C
  loc_ACF4B2: LitStr "'"
  loc_ACF4B5: ConcatStr
  loc_ACF4B6: FStStrNoPop var_A0
  loc_ACF4B9: LitStr " AND ctacte.PeriCtct = "
  loc_ACF4BC: ConcatStr
  loc_ACF4BD: FStStrNoPop var_A4
  loc_ACF4C0: FLdI2 iPeriCtct
  loc_ACF4C3: CStrUI1
  loc_ACF4C5: FStStrNoPop var_A8
  loc_ACF4C8: ConcatStr
  loc_ACF4C9: FStStrNoPop var_AC
  loc_ACF4CC: LitStr " AND ctacte.BimeCtct = "
  loc_ACF4CF: ConcatStr
  loc_ACF4D0: FStStrNoPop var_B0
  loc_ACF4D3: FLdI2 iBimeCtct
  loc_ACF4D6: CStrUI1
  loc_ACF4D8: FStStrNoPop var_B4
  loc_ACF4DB: ConcatStr
  loc_ACF4DC: FStStrNoPop var_B8
  loc_ACF4DF: LitStr " AND ctacte.CodiConc = '13020201'"
  loc_ACF4E2: ConcatStr
  loc_ACF4E3: FStStrNoPop var_BC
  loc_ACF4E6: Call EjecutarRsCls2(from_stack_1v)
  loc_ACF4EB: FFreeStr var_90 = "": BuscaDeudaDeBimestreParaLaEmisionMasiva = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_ACF506: FLdRfVar var_C0
  loc_ACF509: FLdPr Me
  loc_ACF50C: MemLdPr global_64
  loc_ACF50F:  = Me.RecordCount
  loc_ACF514: ILdRf var_C0
  loc_ACF517: LitI4 0
  loc_ACF51C: GtI4
  loc_ACF51D: BranchF loc_ACF572
  loc_ACF520: FLdRfVar var_E8
  loc_ACF523: FLdRfVar var_D8
  loc_ACF526: LitVarStr var_D4, "CredCtct"
  loc_ACF52B: PopAdLdVar
  loc_ACF52C: FLdRfVar var_C4
  loc_ACF52F: FLdPr Me
  loc_ACF532: MemLdPr global_64
  loc_ACF535:  = Me.Fields
  loc_ACF53A: FLdPr var_C4
  loc_ACF53D: from_stack_2 = Me.Item(from_stack_1)
  loc_ACF542: FLdPr var_D8
  loc_ACF545:  = Me.Value
  loc_ACF54A: FLdRfVar var_E8
  loc_ACF54D: LitVarI2 var_F8, 0
  loc_ACF552: HardType
  loc_ACF553: GtVarBool
  loc_ACF555: FFreeAd var_C4 = ""
  loc_ACF55C: FFree1Var var_E8 = ""
  loc_ACF55F: BranchF loc_ACF56A
  loc_ACF562: LitI2_Byte 0
  loc_ACF564: FStI2 var_86
  loc_ACF567: Branch loc_ACF56F
  loc_ACF56A: LitI2_Byte &HFF
  loc_ACF56C: FStI2 var_86
  loc_ACF56F: Branch loc_ACF577
  loc_ACF572: LitI2_Byte &HFF
  loc_ACF574: FStI2 var_86
  loc_ACF577: ExitProcCbHresult
End Function

Public Function DescuentoAnualMasiva2025(byCodiOfic, sCuenCtct) 'AB8840
  'Data Table: 48DC88
  loc_AB8770: ILdRf sCuenCtct
  loc_AB8773: FStStrCopy var_90
  loc_AB8776: LitI2_Byte &HA
  loc_AB8778: CR8I2
  loc_AB8779: FStFPR8 var_8C
  loc_AB877C: LitI2_Byte 0
  loc_AB877E: FStI2 var_92
  loc_AB8781: LitI2 2023
  loc_AB8784: FLdRfVar DescuentoAnualMasiva2025
  loc_AB8787: LitI2 2024
  loc_AB878A: ForI2 var_98
  loc_AB8790: LitStr " SELECT * FROM boleto"
  loc_AB8793: LitStr " WHERE CodiOfic = "
  loc_AB8796: ConcatStr
  loc_AB8797: FStStrNoPop var_9C
  loc_AB879A: FLdUI1
  loc_AB879E: CStrI2
  loc_AB87A0: FStStrNoPop var_A0
  loc_AB87A3: ConcatStr
  loc_AB87A4: FStStrNoPop var_A4
  loc_AB87A7: LitStr " AND CuenCtct = '"
  loc_AB87AA: ConcatStr
  loc_AB87AB: FStStrNoPop var_A8
  loc_AB87AE: ILdRf var_90
  loc_AB87B1: ConcatStr
  loc_AB87B2: FStStrNoPop var_AC
  loc_AB87B5: LitStr "'"
  loc_AB87B8: ConcatStr
  loc_AB87B9: FStStrNoPop var_B0
  loc_AB87BC: LitStr " AND PeriBole = "
  loc_AB87BF: ConcatStr
  loc_AB87C0: FStStrNoPop var_B4
  loc_AB87C3: FLdI2 DescuentoAnualMasiva2025
  loc_AB87C6: CStrUI1
  loc_AB87C8: FStStrNoPop var_B8
  loc_AB87CB: ConcatStr
  loc_AB87CC: FStStrNoPop var_BC
  loc_AB87CF: LitStr " AND CodiTili > 0 AND NumeLiqu > 0 AND TipoBole = 'Anual' AND EstaBole = 'Actualizado'"
  loc_AB87D2: ConcatStr
  loc_AB87D3: FStStrNoPop var_C0
  loc_AB87D6: Call EjecutarRsCls(from_stack_1v)
  loc_AB87DB: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AB87F2: FLdRfVar var_C4
  loc_AB87F5: FLdPr Me
  loc_AB87F8: MemLdPr global_56
  loc_AB87FB:  = Me.RecordCount
  loc_AB8800: ILdRf var_C4
  loc_AB8803: LitI4 1
  loc_AB8808: EqI4
  loc_AB8809: BranchF loc_AB8814
  loc_AB880C: LitI2_Byte &HFF
  loc_AB880E: FStI2 var_92
  loc_AB8811: Branch loc_AB8819
  loc_AB8814: LitI2_Byte 0
  loc_AB8816: FStI2 var_92
  loc_AB8819: FLdRfVar DescuentoAnualMasiva2025
  loc_AB881C: NextI2 var_98, loc_AB8790
  loc_AB8821: FLdI2 var_92
  loc_AB8824: LitI2_Byte &HFF
  loc_AB8826: EqI2
  loc_AB8827: BranchF loc_AB8833
  loc_AB882A: LitI2_Byte &H14
  loc_AB882C: CR8I2
  loc_AB882D: FStFPR8 var_8C
  loc_AB8830: Branch loc_AB8839
  loc_AB8833: LitI2_Byte &HA
  loc_AB8835: CR8I2
  loc_AB8836: FStFPR8 var_8C
  loc_AB8839: ExitProcCbHresult
End Function

Public Function NotificaciondeDeuda(byCodiOfic, sCuenCtct) 'A89BC4
  'Data Table: 48DC88
  loc_A89B40: ILdRf sCuenCtct
  loc_A89B43: FStStrCopy var_8C
  loc_A89B46: LitStr " SELECT * FROM campnotideta"
  loc_A89B49: LitStr " WHERE CodiOfic = "
  loc_A89B4C: ConcatStr
  loc_A89B4D: FStStrNoPop NotificaciondeDeuda
  loc_A89B50: FLdUI1
  loc_A89B54: CStrI2
  loc_A89B56: FStStrNoPop var_98
  loc_A89B59: ConcatStr
  loc_A89B5A: FStStrNoPop var_9C
  loc_A89B5D: LitStr " AND CuenCtct = '"
  loc_A89B60: ConcatStr
  loc_A89B61: FStStrNoPop var_A0
  loc_A89B64: ILdRf var_8C
  loc_A89B67: ConcatStr
  loc_A89B68: FStStrNoPop var_A4
  loc_A89B6B: LitStr "'"
  loc_A89B6E: ConcatStr
  loc_A89B6F: FStStrNoPop var_A8
  loc_A89B72: LitStr " AND Emite = 1 GROUP BY CuenCtct"
  loc_A89B75: ConcatStr
  loc_A89B76: FStStrNoPop var_AC
  loc_A89B79: Call EjecutarRsCls(from_stack_1v)
  loc_A89B7E: FFreeStr NotificaciondeDeuda = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A89B8F: FLdRfVar var_B0
  loc_A89B92: FLdPr Me
  loc_A89B95: MemLdPr global_56
  loc_A89B98:  = Me.RecordCount
  loc_A89B9D: ILdRf var_B0
  loc_A89BA0: LitI4 1
  loc_A89BA5: EqI4
  loc_A89BA6: BranchF loc_A89BB4
  loc_A89BA9: LitI2_Byte 1
  loc_A89BAB: CUI1I2
  loc_A89BAD: FStUI1 var_86
  loc_A89BB1: Branch loc_A89BBC
  loc_A89BB4: LitI2_Byte 0
  loc_A89BB6: CUI1I2
  loc_A89BB8: FStUI1 var_86
  loc_A89BBC: ExitProcCbHresult
End Function

Private Function Proc_308_97_9F0B60() '9F0B60
  'Data Table: 48DC88
  loc_9F0B3C: LitStr "Primary"
  loc_9F0B3F: FLdPr Me
  loc_9F0B42: LateIdLdVar var_94 DispID_4 0
  loc_9F0B49: CastAdVar Me
  loc_9F0B4D: FStAdFunc var_98
  loc_9F0B50: FLdPr var_98
  loc_9F0B58: FFree1Ad var_98
  loc_9F0B5B: FFree1Var var_94 = ""
  loc_9F0B5E: ExitProcHresult
End Function

Private Function Proc_308_98_9DE7AC(arg_C) '9DE7AC
  'Data Table: 48DC88
  loc_9DE790: ILdI4 arg_C
  loc_9DE793: FStStrCopy var_88
  loc_9DE796: ILdRf var_88
  loc_9DE799: LitStr "Primary"
  loc_9DE79C: EqStr
  loc_9DE79E: BranchF loc_9DE7AB
  loc_9DE7A1: FLdPr Me
  loc_9DE7A4: MemLdStr RsFrm
  loc_9DE7A7: IStAd
  loc_9DE7AB: ExitProcHresult
End Function
