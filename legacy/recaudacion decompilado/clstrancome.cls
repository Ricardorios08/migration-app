VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clstrancome"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Mover(iCantidad) '9FD9B8
  'Data Table: 40B940
  loc_9FD988: FLdRfVar var_88
  loc_9FD98B: FLdPr Me
  loc_9FD98E: MemLdPr global_60
  loc_9FD991:  = Me.RecordCount
  loc_9FD996: ILdRf var_88
  loc_9FD999: LitI4 0
  loc_9FD99E: GtI4
  loc_9FD99F: BranchF loc_9FD9B4
  loc_9FD9A2: LitVar_Missing var_98
  loc_9FD9A5: PopAdLdVar
  loc_9FD9A6: ILdI4 iCantidad
  loc_9FD9A9: FLdPr Me
  loc_9FD9AC: MemLdPr global_60
  loc_9FD9AF: Me.Move from_stack_1, from_stack_2
  loc_9FD9B4: ExitProcHresult
  loc_9FD9B5: StAryMove
End Sub

Public Sub MoveFirst() '9ED5C4
  'Data Table: 40B940
  loc_9ED59C: FLdRfVar var_88
  loc_9ED59F: FLdPr Me
  loc_9ED5A2: MemLdPr global_60
  loc_9ED5A5:  = Me.RecordCount
  loc_9ED5AA: ILdRf var_88
  loc_9ED5AD: LitI4 0
  loc_9ED5B2: GtI4
  loc_9ED5B3: BranchF loc_9ED5C1
  loc_9ED5B6: FLdPr Me
  loc_9ED5B9: MemLdPr global_60
  loc_9ED5BC: Me.MoveFirst
  loc_9ED5C1: ExitProcHresult
  loc_9ED5C2: MemLdPr global_-14081
End Sub

Public Sub MoveLast() '9ED56C
  'Data Table: 40B940
  loc_9ED544: FLdRfVar var_88
  loc_9ED547: FLdPr Me
  loc_9ED54A: MemLdPr global_60
  loc_9ED54D:  = Me.RecordCount
  loc_9ED552: ILdRf var_88
  loc_9ED555: LitI4 0
  loc_9ED55A: GtI4
  loc_9ED55B: BranchF loc_9ED569
  loc_9ED55E: FLdPr Me
  loc_9ED561: MemLdPr global_60
  loc_9ED564: Me.MoveLast
  loc_9ED569: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6B9C8
  'Data Table: 40B940
  loc_A6B950: FLdRfVar var_86
  loc_A6B953: FLdPr Me
  loc_A6B956: MemLdPr global_60
  loc_A6B959:  = Me.EOF
  loc_A6B95E: FLdI2 var_86
  loc_A6B961: NotI4
  loc_A6B962: FLdRfVar var_8C
  loc_A6B965: FLdPr Me
  loc_A6B968: MemLdPr global_60
  loc_A6B96B:  = Me.RecordCount
  loc_A6B970: ILdRf var_8C
  loc_A6B973: LitI4 0
  loc_A6B978: GtI4
  loc_A6B979: AndI4
  loc_A6B97A: BranchF loc_A6B988
  loc_A6B97D: FLdPr Me
  loc_A6B980: MemLdPr global_60
  loc_A6B983: Me.MoveNext
  loc_A6B988: FLdRfVar var_86
  loc_A6B98B: FLdPr Me
  loc_A6B98E: MemLdPr global_60
  loc_A6B991:  = Me.EOF
  loc_A6B996: FLdI2 var_86
  loc_A6B999: FLdRfVar var_8C
  loc_A6B99C: FLdPr Me
  loc_A6B99F: MemLdPr global_60
  loc_A6B9A2:  = Me.RecordCount
  loc_A6B9A7: ILdRf var_8C
  loc_A6B9AA: LitI4 0
  loc_A6B9AF: GtI4
  loc_A6B9B0: AndI4
  loc_A6B9B1: BranchF loc_A6B9C4
  loc_A6B9B4: ImpAdCallFPR4 Beep()
  loc_A6B9B9: FLdPr Me
  loc_A6B9BC: MemLdPr global_60
  loc_A6B9BF: Me.MoveLast
  loc_A6B9C4: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B1C2C
  'Data Table: 40B940
  loc_9B1C20: FLdPr Me
  loc_9B1C23: MemLdPr global_60
  loc_9B1C26: Me.MoveNext
  loc_9B1C2B: ExitProcHresult
End Sub

Public Sub Move(iValor) '9BAA9C
  'Data Table: 40B940
  loc_9BAA88: LitVar_Missing var_94
  loc_9BAA8B: PopAdLdVar
  loc_9BAA8C: ILdI2 iValor
  loc_9BAA8F: CI4UI1
  loc_9BAA90: FLdPr Me
  loc_9BAA93: MemLdPr global_60
  loc_9BAA96: Me.Move from_stack_1, from_stack_2
  loc_9BAA9B: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6CA30
  'Data Table: 40B940
  loc_A6C9B8: FLdRfVar var_86
  loc_A6C9BB: FLdPr Me
  loc_A6C9BE: MemLdPr global_60
  loc_A6C9C1:  = Me.BOF
  loc_A6C9C6: FLdI2 var_86
  loc_A6C9C9: NotI4
  loc_A6C9CA: FLdRfVar var_8C
  loc_A6C9CD: FLdPr Me
  loc_A6C9D0: MemLdPr global_60
  loc_A6C9D3:  = Me.RecordCount
  loc_A6C9D8: ILdRf var_8C
  loc_A6C9DB: LitI4 0
  loc_A6C9E0: GtI4
  loc_A6C9E1: AndI4
  loc_A6C9E2: BranchF loc_A6C9F0
  loc_A6C9E5: FLdPr Me
  loc_A6C9E8: MemLdPr global_60
  loc_A6C9EB: Me.MovePrevious
  loc_A6C9F0: FLdRfVar var_86
  loc_A6C9F3: FLdPr Me
  loc_A6C9F6: MemLdPr global_60
  loc_A6C9F9:  = Me.BOF
  loc_A6C9FE: FLdI2 var_86
  loc_A6CA01: FLdRfVar var_8C
  loc_A6CA04: FLdPr Me
  loc_A6CA07: MemLdPr global_60
  loc_A6CA0A:  = Me.RecordCount
  loc_A6CA0F: ILdRf var_8C
  loc_A6CA12: LitI4 0
  loc_A6CA17: GtI4
  loc_A6CA18: AndI4
  loc_A6CA19: BranchF loc_A6CA2C
  loc_A6CA1C: ImpAdCallFPR4 Beep()
  loc_A6CA21: FLdPr Me
  loc_A6CA24: MemLdPr global_60
  loc_A6CA27: Me.MoveFirst
  loc_A6CA2C: ExitProcHresult
End Sub

Public Property Get EOF() '9C9CC4
  'Data Table: 40B940
  loc_9C9CA8: FLdRfVar var_88
  loc_9C9CAB: FLdPr Me
  loc_9C9CAE: MemLdPr global_60
  loc_9C9CB1:  = Me.EOF
  loc_9C9CB6: FLdI2 var_88
  loc_9C9CB9: FStI2 var_86
  loc_9C9CBC: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D1ECC
  'Data Table: 40B940
  loc_9D1EB0: FLdRfVar var_88
  loc_9D1EB3: FLdPr Me
  loc_9D1EB6: MemLdPr global_60
  loc_9D1EB9:  = Me.BOF
  loc_9D1EBE: FLdI2 var_88
  loc_9D1EC1: FStI2 var_86
  loc_9D1EC4: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B2F78
  'Data Table: 40B940
  loc_9B2F68: ILdI4 sOrden
  loc_9B2F6B: FLdPr Me
  loc_9B2F6E: MemLdPr global_60
  loc_9B2F71: Me.Sort = from_stack_1
  loc_9B2F76: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DDEF0
  'Data Table: 40B940
  loc_9DDED0: LitVar_Missing var_94
  loc_9DDED3: PopAdLdVar
  loc_9DDED4: LitI4 1
  loc_9DDED9: LitI4 0
  loc_9DDEDE: ILdI4 sFind
  loc_9DDEE1: FLdPr Me
  loc_9DDEE4: MemLdPr global_60
  loc_9DDEE7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DDEEC: ExitProcHresult
  loc_9DDEED: ExitProc
  loc_9DDEEE: EqCyR8
End Sub

Public Sub Filter(sCriterio) '9BAAE0
  'Data Table: 40B940
  loc_9BAACC: ILdI4 sCriterio
  loc_9BAACF: CVarStr var_94
  loc_9BAAD2: PopAdLdVar
  loc_9BAAD3: FLdPr Me
  loc_9BAAD6: MemLdPr global_60
  loc_9BAAD9: Me.Filter = from_stack_1
  loc_9BAADE: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9C9DA8
  'Data Table: 40B940
  loc_9C9D8C: FLdRfVar var_8C
  loc_9C9D8F: FLdPr Me
  loc_9C9D92: MemLdPr global_60
  loc_9C9D95:  = Me.AbsolutePosition
  loc_9C9D9A: ILdRf var_8C
  loc_9C9D9D: FStR4 var_88
  loc_9C9DA0: ExitProcCbHresult
  loc_9C9DA6: LitI2_Byte &HFC
End Sub

Public Property Get RecordCount() '9D2094
  'Data Table: 40B940
  loc_9D2078: FLdRfVar var_8C
  loc_9D207B: FLdPr Me
  loc_9D207E: MemLdPr global_60
  loc_9D2081:  = Me.RecordCount
  loc_9D2086: ILdRf var_8C
  loc_9D2089: FStR4 var_88
  loc_9D208C: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiCome, CucuVend, CucuComp, FeesTrco, ExpeTrco, ObseTrco, HaceRequery) 'B740DC
  'Data Table: 40B940
  loc_B73C94: ILdRf CucuVend
  loc_B73C97: FStStrCopy var_88
  loc_B73C9A: ILdRf CucuComp
  loc_B73C9D: FStStrCopy var_8C
  loc_B73CA0: ILdRf ObseTrco
  loc_B73CA3: FStStrCopy var_90
  loc_B73CA6: ILdRf HaceRequery
  loc_B73CA9: FStStrCopy var_94
  loc_B73CAC: FLdRfVar var_A2
  loc_B73CAF: ILdRf CodiCome
  loc_B73CB2: from_stack_2v = NuevoRegistro(from_stack_1v)
  loc_B73CB7: FLdI2 var_A2
  loc_B73CBA: FStI2 var_9E
  loc_B73CBD: FLdRfVar var_B4
  loc_B73CC0: FLdI2 var_9E
  loc_B73CC3: ILdRf CodiCome
  loc_B73CC6: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_B73CCB: FLdRfVar var_B4
  loc_B73CCE: LitVarStr var_C4, vbNullString
  loc_B73CD3: HardType
  loc_B73CD4: NeVarBool
  loc_B73CD6: FFree1Var var_B4 = ""
  loc_B73CD9: BranchF loc_B73CE7
  loc_B73CDC: LitStr "La TRANSFERENCIA del TITULAR del COMERCIO YA EXISTE. Reintente..."
  loc_B73CDF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B73CE4: Branch loc_B740DA
  loc_B73CE7: LitI2_Byte 0
  loc_B73CE9: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B73CEE: FStFPR8 var_174
  loc_B73CF1: LitStr "START TRANSACTION; INSERT INTO trancome (CodiCome, NumeTrco, CucuVend, CucuComp, FealTrco, FeesTrco, ExpeTrco, ObseTrco, CodiUsua) "
  loc_B73CF4: LitStr "VALUES ("
  loc_B73CF7: ConcatStr
  loc_B73CF8: FStStrNoPop var_D8
  loc_B73CFB: ILdRf CodiCome
  loc_B73CFE: CStrI4
  loc_B73D00: FStStrNoPop var_DC
  loc_B73D03: ConcatStr
  loc_B73D04: FStStrNoPop var_E0
  loc_B73D07: LitStr ","
  loc_B73D0A: ConcatStr
  loc_B73D0B: FStStrNoPop var_E4
  loc_B73D0E: FLdI2 var_9E
  loc_B73D11: CStrUI1
  loc_B73D13: FStStrNoPop var_E8
  loc_B73D16: ConcatStr
  loc_B73D17: FStStrNoPop var_EC
  loc_B73D1A: LitStr ",'"
  loc_B73D1D: ConcatStr
  loc_B73D1E: FStStrNoPop var_F0
  loc_B73D21: ILdRf var_88
  loc_B73D24: ConcatStr
  loc_B73D25: FStStrNoPop var_F4
  loc_B73D28: LitStr "','"
  loc_B73D2B: ConcatStr
  loc_B73D2C: FStStrNoPop var_F8
  loc_B73D2F: ILdRf var_8C
  loc_B73D32: ConcatStr
  loc_B73D33: FStStrNoPop var_FC
  loc_B73D36: LitStr "','"
  loc_B73D39: ConcatStr
  loc_B73D3A: FStStrNoPop var_110
  loc_B73D3D: LitI4 1
  loc_B73D42: LitI4 1
  loc_B73D47: LitVarStr var_10C, "yyyy-mm-dd"
  loc_B73D4C: FStVarCopyObj var_D4
  loc_B73D4F: FLdRfVar var_D4
  loc_B73D52: FLdFPR8 var_174
  loc_B73D55: CVarDate var_B4
  loc_B73D59: ImpAdCallI2 Format$(, )
  loc_B73D5E: FStStrNoPop var_114
  loc_B73D61: ConcatStr
  loc_B73D62: FStStrNoPop var_118
  loc_B73D65: LitStr "','"
  loc_B73D68: ConcatStr
  loc_B73D69: FStStrNoPop var_14C
  loc_B73D6C: LitI4 1
  loc_B73D71: LitI4 1
  loc_B73D76: LitVarStr var_138, "yyyy-mm-dd"
  loc_B73D7B: FStVarCopyObj var_148
  loc_B73D7E: FLdRfVar var_148
  loc_B73D81: FLdRfVar FeesTrco
  loc_B73D84: CVarRef
  loc_B73D89: ImpAdCallI2 Format$(, )
  loc_B73D8E: FStStrNoPop var_150
  loc_B73D91: ConcatStr
  loc_B73D92: FStStrNoPop var_154
  loc_B73D95: LitStr "','"
  loc_B73D98: ConcatStr
  loc_B73D99: FStStrNoPop var_158
  loc_B73D9C: ILdRf var_90
  loc_B73D9F: ConcatStr
  loc_B73DA0: FStStrNoPop var_15C
  loc_B73DA3: LitStr "','"
  loc_B73DA6: ConcatStr
  loc_B73DA7: FStStrNoPop var_160
  loc_B73DAA: ILdRf var_94
  loc_B73DAD: ConcatStr
  loc_B73DAE: FStStrNoPop var_164
  loc_B73DB1: LitStr "','"
  loc_B73DB4: ConcatStr
  loc_B73DB5: FStStrNoPop var_168
  loc_B73DB8: ImpAdLdI4 MemVar_D9302C
  loc_B73DBB: ConcatStr
  loc_B73DBC: FStStrNoPop var_16C
  loc_B73DBF: LitStr "');"
  loc_B73DC2: ConcatStr
  loc_B73DC3: FStStr var_9C
  loc_B73DC6: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_110 = "": var_114 = "": var_118 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_B73DF5: FFreeVar var_B4 = "": var_D4 = ""
  loc_B73DFE: LitI2_Byte 0
  loc_B73E00: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B73E05: FStFPR8 var_174
  loc_B73E08: ILdRf var_9C
  loc_B73E0B: LitStr " UPDATE relacion SET TipoRela = 'Transferencia', FebaRela = '"
  loc_B73E0E: ConcatStr
  loc_B73E0F: FStStrNoPop var_D8
  loc_B73E12: LitI4 1
  loc_B73E17: LitI4 1
  loc_B73E1C: LitVarStr var_10C, "yyyy-mm-dd"
  loc_B73E21: FStVarCopyObj var_D4
  loc_B73E24: FLdRfVar var_D4
  loc_B73E27: FLdFPR8 var_174
  loc_B73E2A: CVarDate var_B4
  loc_B73E2E: ImpAdCallI2 Format$(, )
  loc_B73E33: FStStrNoPop var_DC
  loc_B73E36: ConcatStr
  loc_B73E37: FStStrNoPop var_E0
  loc_B73E3A: LitStr "', MobaRela = 'TRANSFERENCIA COMERCIO' WHERE CodiOfic = 2 AND CuenCtct = '"
  loc_B73E3D: ConcatStr
  loc_B73E3E: FStStrNoPop var_E4
  loc_B73E41: ILdRf CodiCome
  loc_B73E44: CStrI4
  loc_B73E46: FStStrNoPop var_E8
  loc_B73E49: ConcatStr
  loc_B73E4A: FStStrNoPop var_EC
  loc_B73E4D: LitStr "';"
  loc_B73E50: ConcatStr
  loc_B73E51: FStStr var_9C
  loc_B73E54: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_B73E63: FFreeVar var_B4 = ""
  loc_B73E6A: LitStr "Municipalidad de Guaymallén"
  loc_B73E6D: LitStr "Municipalidad de Tunuyán"
  loc_B73E70: EqStr
  loc_B73E72: BranchF loc_B73F56
  loc_B73E75: FLdRfVar FeesTrco
  loc_B73E78: CVarRef
  loc_B73E7D: ImpAdCallI2 IsDate()
  loc_B73E82: FStI2 var_A2
  loc_B73E85: LitI4 1
  loc_B73E8A: LitI4 1
  loc_B73E8F: LitVarStr var_128, "yyyy-mm-dd"
  loc_B73E94: FStVarCopyObj var_B4
  loc_B73E97: FLdRfVar var_B4
  loc_B73E9A: FLdRfVar FeesTrco
  loc_B73E9D: CVarRef
  loc_B73EA2: ImpAdCallI2 Format$(, )
  loc_B73EA7: FStStr var_E8
  loc_B73EAA: ILdRf var_9C
  loc_B73EAD: LitStr " UPDATE comercio SET CucuPers = '"
  loc_B73EB0: ConcatStr
  loc_B73EB1: FStStrNoPop var_D8
  loc_B73EB4: ILdRf var_8C
  loc_B73EB7: ConcatStr
  loc_B73EB8: FStStrNoPop var_DC
  loc_B73EBB: LitStr "', FetrCome = "
  loc_B73EBE: ConcatStr
  loc_B73EBF: CVarStr var_1A4
  loc_B73EC2: LitVarStr var_184, "Null"
  loc_B73EC7: FStVarCopyObj var_148
  loc_B73ECA: FLdRfVar var_148
  loc_B73ECD: LitStr "'"
  loc_B73ED0: FLdZeroAd var_E8
  loc_B73ED3: FStStrNoPop var_E0
  loc_B73ED6: ConcatStr
  loc_B73ED7: FStStrNoPop var_E4
  loc_B73EDA: LitStr "'"
  loc_B73EDD: ConcatStr
  loc_B73EDE: CVarStr var_D4
  loc_B73EE1: FLdI2 var_A2
  loc_B73EE4: CVarBoolI2 var_138
  loc_B73EE8: FLdRfVar var_194
  loc_B73EEB: ImpAdCallFPR4  = IIf(, , )
  loc_B73EF0: FLdRfVar var_194
  loc_B73EF3: ConcatVar var_1B4
  loc_B73EF7: LitVarStr var_1C4, ", ExtrCome = '"
  loc_B73EFC: ConcatVar var_1D4
  loc_B73F00: ILdRf var_90
  loc_B73F03: CVarStr var_1E4
  loc_B73F06: ConcatVar var_1F4
  loc_B73F0A: LitVarStr var_204, "' WHERE CodiCome = "
  loc_B73F0F: ConcatVar var_214
  loc_B73F13: ILdRf CodiCome
  loc_B73F16: CVarI4
  loc_B73F1A: ConcatVar var_234
  loc_B73F1E: LitVarStr var_244, ";"
  loc_B73F23: ConcatVar var_254
  loc_B73F27: CStrVarTmp
  loc_B73F28: FStStr var_9C
  loc_B73F2B: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_B73F38: FFreeVar var_B4 = "": var_138 = "": var_D4 = "": var_148 = "": var_1A4 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = ""
  loc_B73F53: Branch loc_B73F8E
  loc_B73F56: ILdRf var_9C
  loc_B73F59: LitStr " UPDATE comercio SET CucuPers = '"
  loc_B73F5C: ConcatStr
  loc_B73F5D: FStStrNoPop var_D8
  loc_B73F60: ILdRf var_8C
  loc_B73F63: ConcatStr
  loc_B73F64: FStStrNoPop var_DC
  loc_B73F67: LitStr "' WHERE CodiCome = "
  loc_B73F6A: ConcatStr
  loc_B73F6B: FStStrNoPop var_E0
  loc_B73F6E: ILdRf CodiCome
  loc_B73F71: CStrI4
  loc_B73F73: FStStrNoPop var_E4
  loc_B73F76: ConcatStr
  loc_B73F77: FStStrNoPop var_E8
  loc_B73F7A: LitStr ";"
  loc_B73F7D: ConcatStr
  loc_B73F7E: FStStr var_9C
  loc_B73F81: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_B73F8E: FLdRfVar var_A2
  loc_B73F91: ILdRf CodiCome
  loc_B73F94: CStrI4
  loc_B73F96: FStStrNoPop var_D8
  loc_B73F99: LitI2_Byte 2
  loc_B73F9B: CUI1I2
  loc_B73F9D: ILdRf var_8C
  loc_B73FA0: FLdRfVar var_98
  loc_B73FA3: NewIfNullPr clsrelacion
  loc_B73FA6: from_stack_4v = clsrelacion.NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B73FAB: FLdUI1
  loc_B73FAF: FStUI1 var_A0
  loc_B73FB3: FFree1Str var_D8
  loc_B73FB6: FLdRfVar var_DC
  loc_B73FB9: FLdUI1
  loc_B73FBD: ILdRf CodiCome
  loc_B73FC0: CStrI4
  loc_B73FC2: FStStrNoPop var_D8
  loc_B73FC5: LitI2_Byte 2
  loc_B73FC7: CUI1I2
  loc_B73FC9: ILdRf var_8C
  loc_B73FCC: FLdRfVar var_98
  loc_B73FCF: NewIfNullPr clsrelacion
  loc_B73FD2: from_stack_5v = clsrelacion.ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B73FD7: ILdRf var_DC
  loc_B73FDA: LitStr vbNullString
  loc_B73FDD: EqStr
  loc_B73FDF: FFreeStr var_D8 = ""
  loc_B73FE6: BranchF loc_B74096
  loc_B73FE9: LitI2_Byte 0
  loc_B73FEB: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B73FF0: FStFPR8 var_174
  loc_B73FF3: ILdRf var_9C
  loc_B73FF6: LitStr " INSERT INTO relacion (CucuPers,CodiOfic,CuenCtct,NumeRela,TipoRela,FealRela,PorcRela,CodiUsua) VALUES ('"
  loc_B73FF9: ConcatStr
  loc_B73FFA: FStStrNoPop var_D8
  loc_B73FFD: ILdRf var_8C
  loc_B74000: ConcatStr
  loc_B74001: FStStrNoPop var_DC
  loc_B74004: LitStr "',2,'"
  loc_B74007: ConcatStr
  loc_B74008: FStStrNoPop var_E0
  loc_B7400B: ILdRf CodiCome
  loc_B7400E: CStrI4
  loc_B74010: FStStrNoPop var_E4
  loc_B74013: ConcatStr
  loc_B74014: FStStrNoPop var_E8
  loc_B74017: LitStr "',"
  loc_B7401A: ConcatStr
  loc_B7401B: FStStrNoPop var_EC
  loc_B7401E: FLdUI1
  loc_B74022: CStrI2
  loc_B74024: FStStrNoPop var_F0
  loc_B74027: ConcatStr
  loc_B74028: FStStrNoPop var_F4
  loc_B7402B: LitStr ",'Titular','"
  loc_B7402E: ConcatStr
  loc_B7402F: FStStrNoPop var_F8
  loc_B74032: LitI4 1
  loc_B74037: LitI4 1
  loc_B7403C: LitVarStr var_10C, "yyyy-mm-dd"
  loc_B74041: FStVarCopyObj var_D4
  loc_B74044: FLdRfVar var_D4
  loc_B74047: FLdFPR8 var_174
  loc_B7404A: CVarDate var_B4
  loc_B7404E: ImpAdCallI2 Format$(, )
  loc_B74053: FStStrNoPop var_FC
  loc_B74056: ConcatStr
  loc_B74057: FStStrNoPop var_110
  loc_B7405A: LitStr "',100,'"
  loc_B7405D: ConcatStr
  loc_B7405E: FStStrNoPop var_114
  loc_B74061: ImpAdLdI4 MemVar_D9302C
  loc_B74064: ConcatStr
  loc_B74065: FStStrNoPop var_118
  loc_B74068: LitStr "');"
  loc_B7406B: ConcatStr
  loc_B7406C: FStStr var_9C
  loc_B7406F: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_110 = "": var_114 = ""
  loc_B7408C: FFreeVar var_B4 = ""
  loc_B74093: Branch loc_B740A0
  loc_B74096: ILdRf var_9C
  loc_B74099: LitStr " INSERT INTO ERRROR"
  loc_B7409C: ConcatStr
  loc_B7409D: FStStr var_9C
  loc_B740A0: OnErrorGoto loc_B740CA
  loc_B740A3: ILdRf var_9C
  loc_B740A6: Call Proc_184_31_A4B250()
  loc_B740AB: LitStr "COMMIT;"
  loc_B740AE: Call Proc_184_31_A4B250()
  loc_B740B3: FLdI2 arg_28
  loc_B740B6: BranchF loc_B740C9
  loc_B740B9: ILdRf CodiCome
  loc_B740BC: CStrI4
  loc_B740BE: FStStrNoPop var_D8
  loc_B740C1: Call Encontrar(from_stack_1v)
  loc_B740C6: FFree1Str var_D8
  loc_B740C9: ExitProcHresult
  loc_B740CA: LitStr "ROLLBACK;"
  loc_B740CD: Call RedefineRS(from_stack_1v)
  loc_B740D2: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B740D5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B740DA: ExitProcHresult
End Sub

Public Sub Requery() '9E4AC4
  'Data Table: 40B940
  loc_9E4AA0: LitI4 -1
  loc_9E4AA5: FLdPr Me
  loc_9E4AA8: MemLdPr global_60
  loc_9E4AAB: Me.Requery from_stack_1
  loc_9E4AB0: LitVarStr var_94, "Primary"
  loc_9E4AB5: PopAdLdVar
  loc_9E4AB6: FLdPr Me
  loc_9E4AB9: LateIdCall
  loc_9E4AC1: ExitProcHresult
  loc_9E4AC2: LeI2
End Sub

Public Sub Encontrar(CodiCome) 'A67430
  'Data Table: 40B940
  loc_A673C8: ILdRf CodiCome
  loc_A673CB: FStStrCopy var_88
  loc_A673CE: Call Requery()
  loc_A673D3: LitStr "CodiCome = '"
  loc_A673D6: ILdRf var_88
  loc_A673D9: ConcatStr
  loc_A673DA: FStStrNoPop var_8C
  loc_A673DD: LitStr "'"
  loc_A673E0: ConcatStr
  loc_A673E1: PopTmpLdAdStr
  loc_A673E5: Call Find(from_stack_1v)
  loc_A673EA: FFreeStr var_8C = ""
  loc_A673F1: FLdRfVar var_94
  loc_A673F4: FLdPr Me
  loc_A673F7: MemLdPr global_60
  loc_A673FA:  = Me.RecordCount
  loc_A673FF: ILdRf var_94
  loc_A67402: LitI4 0
  loc_A67407: GtI4
  loc_A67408: FLdRfVar var_98
  loc_A6740B: FLdPr Me
  loc_A6740E: MemLdPr global_60
  loc_A67411:  = Me.AbsolutePosition
  loc_A67416: ILdRf var_98
  loc_A67419: LitI4 -3
  loc_A6741E: EqI4
  loc_A6741F: AndI4
  loc_A67420: BranchF loc_A6742E
  loc_A67423: FLdPr Me
  loc_A67426: MemLdPr global_60
  loc_A67429: Me.MoveLast
  loc_A6742E: ExitProcHresult
End Sub

Public Function ValidaClave(CodiCome, NumeTrco) 'A6BF98
  'Data Table: 40B940
  loc_A6BF38: ZeroRetValVar
  loc_A6BF3A: LitStr "SELECT CodiCome FROM trancome WHERE CodiCome = "
  loc_A6BF3D: ILdRf CodiCome
  loc_A6BF40: CStrI4
  loc_A6BF42: FStStrNoPop var_98
  loc_A6BF45: ConcatStr
  loc_A6BF46: FStStrNoPop var_9C
  loc_A6BF49: LitStr " AND NumeTrco = "
  loc_A6BF4C: ConcatStr
  loc_A6BF4D: FStStrNoPop var_A0
  loc_A6BF50: FLdI2 NumeTrco
  loc_A6BF53: CStrUI1
  loc_A6BF55: FStStrNoPop var_A4
  loc_A6BF58: ConcatStr
  loc_A6BF59: FStStrNoPop var_A8
  loc_A6BF5C: Call Proc_184_31_A4B250()
  loc_A6BF61: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A6BF6E: FLdRfVar var_AC
  loc_A6BF71: FLdPr Me
  loc_A6BF74: MemLdPr global_64
  loc_A6BF77:  = Me.RecordCount
  loc_A6BF7C: ILdRf var_AC
  loc_A6BF7F: LitI4 0
  loc_A6BF84: GtI4
  loc_A6BF85: BranchF loc_A6BF91
  loc_A6BF88: LitVarStr var_BC, "La transferencia YA EXISTE. Reintente..."
  loc_A6BF8D: FStVarCopy
  loc_A6BF91: ExitProcCbHresult
End Function

Public Function NuevoRegistro(CodiCome) 'A8AA24
  'Data Table: 40B940
  loc_A8A994: LitStr "SELECT IFNULL(MAX(NumeTrco),0) NumeTrco FROM trancome WHERE CodiCome = "
  loc_A8A997: ILdRf CodiCome
  loc_A8A99A: CStrI4
  loc_A8A99C: FStStrNoPop var_8C
  loc_A8A99F: ConcatStr
  loc_A8A9A0: FStStrNoPop var_90
  loc_A8A9A3: LitStr " ORDER BY CodiCome DESC LIMIT 1"
  loc_A8A9A6: ConcatStr
  loc_A8A9A7: FStStrNoPop NuevoRegistro
  loc_A8A9AA: Call Proc_184_31_A4B250()
  loc_A8A9AF: FFreeStr var_8C = "": var_90 = ""
  loc_A8A9B8: FLdRfVar var_98
  loc_A8A9BB: FLdPr Me
  loc_A8A9BE: MemLdPr global_64
  loc_A8A9C1:  = Me.RecordCount
  loc_A8A9C6: ILdRf var_98
  loc_A8A9C9: LitI4 0
  loc_A8A9CE: GtI4
  loc_A8A9CF: BranchF loc_A8AA16
  loc_A8A9D2: FLdRfVar var_C0
  loc_A8A9D5: FLdRfVar var_B0
  loc_A8A9D8: LitVarStr var_AC, "NumeTrco"
  loc_A8A9DD: PopAdLdVar
  loc_A8A9DE: FLdRfVar var_9C
  loc_A8A9E1: FLdPr Me
  loc_A8A9E4: MemLdPr global_64
  loc_A8A9E7:  = Me.Fields
  loc_A8A9EC: FLdPr var_9C
  loc_A8A9EF: from_stack_2 = Me.Item(from_stack_1)
  loc_A8A9F4: FLdPr var_B0
  loc_A8A9F7:  = Me.Value
  loc_A8A9FC: FLdRfVar var_C0
  loc_A8A9FF: FnCByteVar
  loc_A8AA01: CI2UI1
  loc_A8AA03: LitI2_Byte 1
  loc_A8AA05: AddI2
  loc_A8AA06: FStI2 var_86
  loc_A8AA09: FFreeAd var_9C = ""
  loc_A8AA10: FFree1Var var_C0 = ""
  loc_A8AA13: Branch loc_A8AA1B
  loc_A8AA16: LitI2_Byte 1
  loc_A8AA18: FStI2 var_86
  loc_A8AA1B: ExitProcCbHresult
End Function

Public Sub RedefineRS(sSelect) 'A61554
  'Data Table: 40B940
  loc_A614F0: ILdRf sSelect
  loc_A614F3: FStStrCopy var_88
  loc_A614F6: LitNothing
  loc_A614F8: CastAd
  loc_A614FB: FStAdFuncNoPop
  loc_A614FE: FLdPr Me
  loc_A61501: MemStAd
  loc_A61505: FFree1Ad var_8C
  loc_A61508: New Recordset
  loc_A6150C: FStAdFuncNoPop
  loc_A6150F: FLdPr Me
  loc_A61512: MemStAd
  loc_A61516: FFree1Ad var_8C
  loc_A61519: LitI4 -1
  loc_A6151E: LitI4 3
  loc_A61523: LitI4 3
  loc_A61528: ImpAdLdI4 MemVar_D9301C
  loc_A6152B: CVarAd
  loc_A6152F: PopAdLdVar
  loc_A61530: ILdRf var_88
  loc_A61533: CVarStr var_9C
  loc_A61536: PopAdLdVar
  loc_A61537: FLdPr Me
  loc_A6153A: MemLdPr global_60
  loc_A6153D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A61542: LitVarStr var_9C, "Primary"
  loc_A61547: PopAdLdVar
  loc_A61548: FLdPr Me
  loc_A6154B: LateIdCall
  loc_A61553: ExitProcHresult
End Sub

Public Property Get DataSource() '9F4650
  'Data Table: 40B940
  loc_9F462C: ZeroRetVal
  loc_9F462E: FLdRfVar var_8C
  loc_9F4631: FLdPr Me
  loc_9F4634: MemLdPr global_60
  loc_9F4637:  = Me.DataSource
  loc_9F463C: ILdRf var_8C
  loc_9F463F: CastAd
  loc_9F4642: FStAdFunc var_88
  loc_9F4645: FFree1Ad var_8C
  loc_9F4648: ExitProcCbHresult
End Sub

Public Property Get CodiCome() 'A26FA4
  'Data Table: 40B940
  loc_A26F60: FLdRfVar var_B0
  loc_A26F63: FLdRfVar var_A0
  loc_A26F66: LitVarStr var_9C, "CodiCome"
  loc_A26F6B: PopAdLdVar
  loc_A26F6C: FLdRfVar var_8C
  loc_A26F6F: FLdPr Me
  loc_A26F72: MemLdPr global_60
  loc_A26F75:  = Me.Fields
  loc_A26F7A: FLdPr var_8C
  loc_A26F7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A26F82: FLdPr var_A0
  loc_A26F85:  = Me.Value
  loc_A26F8A: FLdRfVar var_B0
  loc_A26F8D: CI4Var
  loc_A26F8F: FStR4 var_88
  loc_A26F92: FFreeAd var_8C = ""
  loc_A26F99: FFree1Var var_B0 = ""
  loc_A26F9C: ExitProcCbHresult
End Sub

Public Property Get NumeTrco() 'A27024
  'Data Table: 40B940
  loc_A26FE0: FLdRfVar var_B0
  loc_A26FE3: FLdRfVar var_A0
  loc_A26FE6: LitVarStr var_9C, "NumeTrco"
  loc_A26FEB: PopAdLdVar
  loc_A26FEC: FLdRfVar var_8C
  loc_A26FEF: FLdPr Me
  loc_A26FF2: MemLdPr global_60
  loc_A26FF5:  = Me.Fields
  loc_A26FFA: FLdPr var_8C
  loc_A26FFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A27002: FLdPr var_A0
  loc_A27005:  = Me.Value
  loc_A2700A: FLdRfVar var_B0
  loc_A2700D: CI2Var
  loc_A2700E: FStI2 var_86
  loc_A27011: FFreeAd var_8C = ""
  loc_A27018: FFree1Var var_B0 = ""
  loc_A2701B: ExitProcCbHresult
  loc_A27021: EqI2
End Sub

Public Property Get CucuVend() 'A3BC98
  'Data Table: 40B940
  loc_A3BC54: ZeroRetVal
  loc_A3BC56: FLdRfVar var_B0
  loc_A3BC59: FLdRfVar var_A0
  loc_A3BC5C: LitVarStr var_9C, "CucuVend"
  loc_A3BC61: PopAdLdVar
  loc_A3BC62: FLdRfVar var_8C
  loc_A3BC65: FLdPr Me
  loc_A3BC68: MemLdPr global_60
  loc_A3BC6B:  = Me.Fields
  loc_A3BC70: FLdPr var_8C
  loc_A3BC73: from_stack_2 = Me.Item(from_stack_1)
  loc_A3BC78: FLdPr var_A0
  loc_A3BC7B:  = Me.Value
  loc_A3BC80: FLdRfVar var_B0
  loc_A3BC83: CStrVarTmp
  loc_A3BC84: FStStr var_88
  loc_A3BC87: FFreeAd var_8C = ""
  loc_A3BC8E: FFree1Var var_B0 = ""
  loc_A3BC91: ExitProcCbHresult
End Sub

Public Property Get CucuComp() 'A3C34C
  'Data Table: 40B940
  loc_A3C308: ZeroRetVal
  loc_A3C30A: FLdRfVar var_B0
  loc_A3C30D: FLdRfVar var_A0
  loc_A3C310: LitVarStr var_9C, "CucuComp"
  loc_A3C315: PopAdLdVar
  loc_A3C316: FLdRfVar var_8C
  loc_A3C319: FLdPr Me
  loc_A3C31C: MemLdPr global_60
  loc_A3C31F:  = Me.Fields
  loc_A3C324: FLdPr var_8C
  loc_A3C327: from_stack_2 = Me.Item(from_stack_1)
  loc_A3C32C: FLdPr var_A0
  loc_A3C32F:  = Me.Value
  loc_A3C334: FLdRfVar var_B0
  loc_A3C337: CStrVarTmp
  loc_A3C338: FStStr var_88
  loc_A3C33B: FFreeAd var_8C = ""
  loc_A3C342: FFree1Var var_B0 = ""
  loc_A3C345: ExitProcCbHresult
End Sub

Public Property Get FealTrco() 'A28D24
  'Data Table: 40B940
  loc_A28CE0: FLdRfVar var_B4
  loc_A28CE3: FLdRfVar var_A4
  loc_A28CE6: LitVarStr var_A0, "FealTrco"
  loc_A28CEB: PopAdLdVar
  loc_A28CEC: FLdRfVar var_90
  loc_A28CEF: FLdPr Me
  loc_A28CF2: MemLdPr global_60
  loc_A28CF5:  = Me.Fields
  loc_A28CFA: FLdPr var_90
  loc_A28CFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A28D02: FLdPr var_A4
  loc_A28D05:  = Me.Value
  loc_A28D0A: FLdRfVar var_B4
  loc_A28D0D: FnCDateVar
  loc_A28D0F: FStFPR8 var_8C
  loc_A28D12: FFreeAd var_90 = ""
  loc_A28D19: FFree1Var var_B4 = ""
  loc_A28D1C: ExitProcCbHresult
End Sub

Public Property Get FeesTrco() 'A26CA4
  'Data Table: 40B940
  loc_A26C60: FLdRfVar var_B4
  loc_A26C63: FLdRfVar var_A4
  loc_A26C66: LitVarStr var_A0, "FeesTrco"
  loc_A26C6B: PopAdLdVar
  loc_A26C6C: FLdRfVar var_90
  loc_A26C6F: FLdPr Me
  loc_A26C72: MemLdPr global_60
  loc_A26C75:  = Me.Fields
  loc_A26C7A: FLdPr var_90
  loc_A26C7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A26C82: FLdPr var_A4
  loc_A26C85:  = Me.Value
  loc_A26C8A: FLdRfVar var_B4
  loc_A26C8D: FnCDateVar
  loc_A26C8F: FStFPR8 var_8C
  loc_A26C92: FFreeAd var_90 = ""
  loc_A26C99: FFree1Var var_B4 = ""
  loc_A26C9C: ExitProcCbHresult
  loc_A26CA2: FStFPR4 var_37FD
End Sub

Public Property Get ExpeTrco() 'A3C6E8
  'Data Table: 40B940
  loc_A3C6A4: ZeroRetVal
  loc_A3C6A6: FLdRfVar var_B0
  loc_A3C6A9: FLdRfVar var_A0
  loc_A3C6AC: LitVarStr var_9C, "ExpeTrco"
  loc_A3C6B1: PopAdLdVar
  loc_A3C6B2: FLdRfVar var_8C
  loc_A3C6B5: FLdPr Me
  loc_A3C6B8: MemLdPr global_60
  loc_A3C6BB:  = Me.Fields
  loc_A3C6C0: FLdPr var_8C
  loc_A3C6C3: from_stack_2 = Me.Item(from_stack_1)
  loc_A3C6C8: FLdPr var_A0
  loc_A3C6CB:  = Me.Value
  loc_A3C6D0: FLdRfVar var_B0
  loc_A3C6D3: CStrVarTmp
  loc_A3C6D4: FStStr var_88
  loc_A3C6D7: FFreeAd var_8C = ""
  loc_A3C6DE: FFree1Var var_B0 = ""
  loc_A3C6E1: ExitProcCbHresult
End Sub

Public Property Get ObseTrco() 'A3C874
  'Data Table: 40B940
  loc_A3C830: ZeroRetVal
  loc_A3C832: FLdRfVar var_B0
  loc_A3C835: FLdRfVar var_A0
  loc_A3C838: LitVarStr var_9C, "ObseTrco"
  loc_A3C83D: PopAdLdVar
  loc_A3C83E: FLdRfVar var_8C
  loc_A3C841: FLdPr Me
  loc_A3C844: MemLdPr global_60
  loc_A3C847:  = Me.Fields
  loc_A3C84C: FLdPr var_8C
  loc_A3C84F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3C854: FLdPr var_A0
  loc_A3C857:  = Me.Value
  loc_A3C85C: FLdRfVar var_B0
  loc_A3C85F: CStrVarTmp
  loc_A3C860: FStStr var_88
  loc_A3C863: FFreeAd var_8C = ""
  loc_A3C86A: FFree1Var var_B0 = ""
  loc_A3C86D: ExitProcCbHresult
End Sub

Public Property Get CodiUsua() 'A3CA84
  'Data Table: 40B940
  loc_A3CA40: ZeroRetVal
  loc_A3CA42: FLdRfVar var_B0
  loc_A3CA45: FLdRfVar var_A0
  loc_A3CA48: LitVarStr var_9C, "CodiUsua"
  loc_A3CA4D: PopAdLdVar
  loc_A3CA4E: FLdRfVar var_8C
  loc_A3CA51: FLdPr Me
  loc_A3CA54: MemLdPr global_60
  loc_A3CA57:  = Me.Fields
  loc_A3CA5C: FLdPr var_8C
  loc_A3CA5F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3CA64: FLdPr var_A0
  loc_A3CA67:  = Me.Value
  loc_A3CA6C: FLdRfVar var_B0
  loc_A3CA6F: CStrVarTmp
  loc_A3CA70: FStStr var_88
  loc_A3CA73: FFreeAd var_8C = ""
  loc_A3CA7A: FFree1Var var_B0 = ""
  loc_A3CA7D: ExitProcCbHresult
End Sub

Private Function Proc_184_30_9F4598() '9F4598
  'Data Table: 40B940
  loc_9F4574: LitStr "Primary"
  loc_9F4577: FLdPr Me
  loc_9F457A: LateIdLdVar var_94 DispID_4 0
  loc_9F4581: CastAdVar Me
  loc_9F4585: FStAdFunc var_98
  loc_9F4588: FLdPr var_98
  loc_9F4590: FFree1Ad var_98
  loc_9F4593: FFree1Var var_94 = ""
  loc_9F4596: ExitProcHresult
End Function

Private Function Proc_184_31_A4B250(arg_C) 'A4B250
  'Data Table: 40B940
  loc_A4B1FC: ILdRf arg_C
  loc_A4B1FF: FStStrCopy var_88
  loc_A4B202: LitNothing
  loc_A4B204: CastAd
  loc_A4B207: FStAdFuncNoPop
  loc_A4B20A: FLdPr Me
  loc_A4B20D: MemStAd
  loc_A4B211: FFree1Ad var_8C
  loc_A4B214: New Recordset
  loc_A4B218: FStAdFuncNoPop
  loc_A4B21B: FLdPr Me
  loc_A4B21E: MemStAd
  loc_A4B222: FFree1Ad var_8C
  loc_A4B225: LitI4 -1
  loc_A4B22A: LitI4 3
  loc_A4B22F: LitI4 3
  loc_A4B234: ImpAdLdI4 MemVar_D9301C
  loc_A4B237: CVarAd
  loc_A4B23B: PopAdLdVar
  loc_A4B23C: ILdRf var_88
  loc_A4B23F: CVarStr var_9C
  loc_A4B242: PopAdLdVar
  loc_A4B243: FLdPr Me
  loc_A4B246: MemLdPr global_64
  loc_A4B249: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4B24E: ExitProcHresult
End Function

Private Function Proc_184_32_9DE07C(arg_C) '9DE07C
  'Data Table: 40B940
  loc_9DE060: ILdI4 arg_C
  loc_9DE063: FStStrCopy var_88
  loc_9DE066: ILdRf var_88
  loc_9DE069: LitStr "Primary"
  loc_9DE06C: EqStr
  loc_9DE06E: BranchF loc_9DE07B
  loc_9DE071: FLdPr Me
  loc_9DE074: MemLdStr global_60
  loc_9DE077: IStAd
  loc_9DE07B: ExitProcHresult
End Function
