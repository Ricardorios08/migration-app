VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clstrandifu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Mover(iCantidad) '9FDEF8
  'Data Table: 40A3D4
  loc_9FDEC8: FLdRfVar var_88
  loc_9FDECB: FLdPr Me
  loc_9FDECE: MemLdPr global_60
  loc_9FDED1:  = Me.RecordCount
  loc_9FDED6: ILdRf var_88
  loc_9FDED9: LitI4 0
  loc_9FDEDE: GtI4
  loc_9FDEDF: BranchF loc_9FDEF4
  loc_9FDEE2: LitVar_Missing var_98
  loc_9FDEE5: PopAdLdVar
  loc_9FDEE6: ILdI4 iCantidad
  loc_9FDEE9: FLdPr Me
  loc_9FDEEC: MemLdPr global_60
  loc_9FDEEF: Me.Move from_stack_1, from_stack_2
  loc_9FDEF4: ExitProcHresult
End Sub

Public Sub MoveFirst() '9EEA64
  'Data Table: 40A3D4
  loc_9EEA3C: FLdRfVar var_88
  loc_9EEA3F: FLdPr Me
  loc_9EEA42: MemLdPr global_60
  loc_9EEA45:  = Me.RecordCount
  loc_9EEA4A: ILdRf var_88
  loc_9EEA4D: LitI4 0
  loc_9EEA52: GtI4
  loc_9EEA53: BranchF loc_9EEA61
  loc_9EEA56: FLdPr Me
  loc_9EEA59: MemLdPr global_60
  loc_9EEA5C: Me.MoveFirst
  loc_9EEA61: ExitProcHresult
End Sub

Public Sub MoveLast() '9EEB6C
  'Data Table: 40A3D4
  loc_9EEB44: FLdRfVar var_88
  loc_9EEB47: FLdPr Me
  loc_9EEB4A: MemLdPr global_60
  loc_9EEB4D:  = Me.RecordCount
  loc_9EEB52: ILdRf var_88
  loc_9EEB55: LitI4 0
  loc_9EEB5A: GtI4
  loc_9EEB5B: BranchF loc_9EEB69
  loc_9EEB5E: FLdPr Me
  loc_9EEB61: MemLdPr global_60
  loc_9EEB64: Me.MoveLast
  loc_9EEB69: ExitProcHresult
End Sub

Public Sub MoveNext() 'A69CE8
  'Data Table: 40A3D4
  loc_A69C70: FLdRfVar var_86
  loc_A69C73: FLdPr Me
  loc_A69C76: MemLdPr global_60
  loc_A69C79:  = Me.EOF
  loc_A69C7E: FLdI2 var_86
  loc_A69C81: NotI4
  loc_A69C82: FLdRfVar var_8C
  loc_A69C85: FLdPr Me
  loc_A69C88: MemLdPr global_60
  loc_A69C8B:  = Me.RecordCount
  loc_A69C90: ILdRf var_8C
  loc_A69C93: LitI4 0
  loc_A69C98: GtI4
  loc_A69C99: AndI4
  loc_A69C9A: BranchF loc_A69CA8
  loc_A69C9D: FLdPr Me
  loc_A69CA0: MemLdPr global_60
  loc_A69CA3: Me.MoveNext
  loc_A69CA8: FLdRfVar var_86
  loc_A69CAB: FLdPr Me
  loc_A69CAE: MemLdPr global_60
  loc_A69CB1:  = Me.EOF
  loc_A69CB6: FLdI2 var_86
  loc_A69CB9: FLdRfVar var_8C
  loc_A69CBC: FLdPr Me
  loc_A69CBF: MemLdPr global_60
  loc_A69CC2:  = Me.RecordCount
  loc_A69CC7: ILdRf var_8C
  loc_A69CCA: LitI4 0
  loc_A69CCF: GtI4
  loc_A69CD0: AndI4
  loc_A69CD1: BranchF loc_A69CE4
  loc_A69CD4: ImpAdCallFPR4 Beep()
  loc_A69CD9: FLdPr Me
  loc_A69CDC: MemLdPr global_60
  loc_A69CDF: Me.MoveLast
  loc_A69CE4: ExitProcHresult
  loc_A69CE5: Ary1LdCy
  loc_A69CE6: ImpAdLdPr 0
End Sub

Public Sub MoveSiguiente() '9B1AC4
  'Data Table: 40A3D4
  loc_9B1AB8: FLdPr Me
  loc_9B1ABB: MemLdPr global_60
  loc_9B1ABE: Me.MoveNext
  loc_9B1AC3: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B9AAC
  'Data Table: 40A3D4
  loc_9B9A98: LitVar_Missing var_94
  loc_9B9A9B: PopAdLdVar
  loc_9B9A9C: ILdI2 iValor
  loc_9B9A9F: CI4UI1
  loc_9B9AA0: FLdPr Me
  loc_9B9AA3: MemLdPr global_60
  loc_9B9AA6: Me.Move from_stack_1, from_stack_2
  loc_9B9AAB: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A69AF0
  'Data Table: 40A3D4
  loc_A69A78: FLdRfVar var_86
  loc_A69A7B: FLdPr Me
  loc_A69A7E: MemLdPr global_60
  loc_A69A81:  = Me.BOF
  loc_A69A86: FLdI2 var_86
  loc_A69A89: NotI4
  loc_A69A8A: FLdRfVar var_8C
  loc_A69A8D: FLdPr Me
  loc_A69A90: MemLdPr global_60
  loc_A69A93:  = Me.RecordCount
  loc_A69A98: ILdRf var_8C
  loc_A69A9B: LitI4 0
  loc_A69AA0: GtI4
  loc_A69AA1: AndI4
  loc_A69AA2: BranchF loc_A69AB0
  loc_A69AA5: FLdPr Me
  loc_A69AA8: MemLdPr global_60
  loc_A69AAB: Me.MovePrevious
  loc_A69AB0: FLdRfVar var_86
  loc_A69AB3: FLdPr Me
  loc_A69AB6: MemLdPr global_60
  loc_A69AB9:  = Me.BOF
  loc_A69ABE: FLdI2 var_86
  loc_A69AC1: FLdRfVar var_8C
  loc_A69AC4: FLdPr Me
  loc_A69AC7: MemLdPr global_60
  loc_A69ACA:  = Me.RecordCount
  loc_A69ACF: ILdRf var_8C
  loc_A69AD2: LitI4 0
  loc_A69AD7: GtI4
  loc_A69AD8: AndI4
  loc_A69AD9: BranchF loc_A69AEC
  loc_A69ADC: ImpAdCallFPR4 Beep()
  loc_A69AE1: FLdPr Me
  loc_A69AE4: MemLdPr global_60
  loc_A69AE7: Me.MoveFirst
  loc_A69AEC: ExitProcHresult
End Sub

Public Property Get EOF() '9CC4D8
  'Data Table: 40A3D4
  loc_9CC4BC: FLdRfVar var_88
  loc_9CC4BF: FLdPr Me
  loc_9CC4C2: MemLdPr global_60
  loc_9CC4C5:  = Me.EOF
  loc_9CC4CA: FLdI2 var_88
  loc_9CC4CD: FStI2 var_86
  loc_9CC4D0: ExitProcCbHresult
End Sub

Public Property Get BOF() '9CC48C
  'Data Table: 40A3D4
  loc_9CC470: FLdRfVar var_88
  loc_9CC473: FLdPr Me
  loc_9CC476: MemLdPr global_60
  loc_9CC479:  = Me.BOF
  loc_9CC47E: FLdI2 var_88
  loc_9CC481: FStI2 var_86
  loc_9CC484: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B6AF8
  'Data Table: 40A3D4
  loc_9B6AE8: ILdI4 sOrden
  loc_9B6AEB: FLdPr Me
  loc_9B6AEE: MemLdPr global_60
  loc_9B6AF1: Me.Sort = from_stack_1
  loc_9B6AF6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E1320
  'Data Table: 40A3D4
  loc_9E1300: LitVar_Missing var_94
  loc_9E1303: PopAdLdVar
  loc_9E1304: LitI4 1
  loc_9E1309: LitI4 0
  loc_9E130E: ILdI4 sFind
  loc_9E1311: FLdPr Me
  loc_9E1314: MemLdPr global_60
  loc_9E1317: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E131C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9B99E0
  'Data Table: 40A3D4
  loc_9B99CC: ILdI4 sCriterio
  loc_9B99CF: CVarStr var_94
  loc_9B99D2: PopAdLdVar
  loc_9B99D3: FLdPr Me
  loc_9B99D6: MemLdPr global_60
  loc_9B99D9: Me.Filter = from_stack_1
  loc_9B99DE: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9CC35C
  'Data Table: 40A3D4
  loc_9CC340: FLdRfVar var_8C
  loc_9CC343: FLdPr Me
  loc_9CC346: MemLdPr global_60
  loc_9CC349:  = Me.AbsolutePosition
  loc_9CC34E: ILdRf var_8C
  loc_9CC351: FStR4 var_88
  loc_9CC354: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9CC310
  'Data Table: 40A3D4
  loc_9CC2F4: FLdRfVar var_8C
  loc_9CC2F7: FLdPr Me
  loc_9CC2FA: MemLdPr global_60
  loc_9CC2FD:  = Me.RecordCount
  loc_9CC302: ILdRf var_8C
  loc_9CC305: FStR4 var_88
  loc_9CC308: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiDifu, CucuVend, CucuComp, FeesTrdi, ExpeTrdi, ObseTrdi, HaceRequery) 'B52158
  'Data Table: 40A3D4
  loc_B51DFC: ILdRf CucuVend
  loc_B51DFF: FStStrCopy var_88
  loc_B51E02: ILdRf CucuComp
  loc_B51E05: FStStrCopy var_8C
  loc_B51E08: ILdRf ObseTrdi
  loc_B51E0B: FStStrCopy var_90
  loc_B51E0E: ILdRf HaceRequery
  loc_B51E11: FStStrCopy var_94
  loc_B51E14: FLdRfVar var_A2
  loc_B51E17: ILdRf CodiDifu
  loc_B51E1A: from_stack_2v = NuevoRegistro(from_stack_1v)
  loc_B51E1F: FLdI2 var_A2
  loc_B51E22: FStI2 var_9E
  loc_B51E25: FLdRfVar var_B4
  loc_B51E28: FLdI2 var_9E
  loc_B51E2B: ILdRf CodiDifu
  loc_B51E2E: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_B51E33: FLdRfVar var_B4
  loc_B51E36: LitVarStr var_C4, vbNullString
  loc_B51E3B: HardType
  loc_B51E3C: NeVarBool
  loc_B51E3E: FFree1Var var_B4 = ""
  loc_B51E41: BranchF loc_B51E4F
  loc_B51E44: LitStr "La TRANSFERENCIA del TITULAR del DIFUNTO YA EXISTE. Reintente..."
  loc_B51E47: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B51E4C: Branch loc_B52156
  loc_B51E4F: LitI2_Byte 0
  loc_B51E51: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B51E56: FStFPR8 var_174
  loc_B51E59: LitStr "START TRANSACTION; INSERT INTO trandifu (CodiDifu, NumeTrdi, CucuVend, CucuComp, FealTrdi, FeesTrdi, ExpeTrdi, ObseTrdi, CodiUsua) "
  loc_B51E5C: LitStr "VALUES ("
  loc_B51E5F: ConcatStr
  loc_B51E60: FStStrNoPop var_D8
  loc_B51E63: ILdRf CodiDifu
  loc_B51E66: CStrI4
  loc_B51E68: FStStrNoPop var_DC
  loc_B51E6B: ConcatStr
  loc_B51E6C: FStStrNoPop var_E0
  loc_B51E6F: LitStr ","
  loc_B51E72: ConcatStr
  loc_B51E73: FStStrNoPop var_E4
  loc_B51E76: FLdI2 var_9E
  loc_B51E79: CStrUI1
  loc_B51E7B: FStStrNoPop var_E8
  loc_B51E7E: ConcatStr
  loc_B51E7F: FStStrNoPop var_EC
  loc_B51E82: LitStr ",'"
  loc_B51E85: ConcatStr
  loc_B51E86: FStStrNoPop var_F0
  loc_B51E89: ILdRf var_88
  loc_B51E8C: ConcatStr
  loc_B51E8D: FStStrNoPop var_F4
  loc_B51E90: LitStr "','"
  loc_B51E93: ConcatStr
  loc_B51E94: FStStrNoPop var_F8
  loc_B51E97: ILdRf var_8C
  loc_B51E9A: ConcatStr
  loc_B51E9B: FStStrNoPop var_FC
  loc_B51E9E: LitStr "','"
  loc_B51EA1: ConcatStr
  loc_B51EA2: FStStrNoPop var_110
  loc_B51EA5: LitI4 1
  loc_B51EAA: LitI4 1
  loc_B51EAF: LitVarStr var_10C, "yyyy-mm-dd"
  loc_B51EB4: FStVarCopyObj var_D4
  loc_B51EB7: FLdRfVar var_D4
  loc_B51EBA: FLdFPR8 var_174
  loc_B51EBD: CVarDate var_B4
  loc_B51EC1: ImpAdCallI2 Format$(, )
  loc_B51EC6: FStStrNoPop var_114
  loc_B51EC9: ConcatStr
  loc_B51ECA: FStStrNoPop var_118
  loc_B51ECD: LitStr "','"
  loc_B51ED0: ConcatStr
  loc_B51ED1: FStStrNoPop var_14C
  loc_B51ED4: LitI4 1
  loc_B51ED9: LitI4 1
  loc_B51EDE: LitVarStr var_138, "yyyy-mm-dd"
  loc_B51EE3: FStVarCopyObj var_148
  loc_B51EE6: FLdRfVar var_148
  loc_B51EE9: FLdRfVar FeesTrdi
  loc_B51EEC: CVarRef
  loc_B51EF1: ImpAdCallI2 Format$(, )
  loc_B51EF6: FStStrNoPop var_150
  loc_B51EF9: ConcatStr
  loc_B51EFA: FStStrNoPop var_154
  loc_B51EFD: LitStr "','"
  loc_B51F00: ConcatStr
  loc_B51F01: FStStrNoPop var_158
  loc_B51F04: ILdRf var_90
  loc_B51F07: ConcatStr
  loc_B51F08: FStStrNoPop var_15C
  loc_B51F0B: LitStr "','"
  loc_B51F0E: ConcatStr
  loc_B51F0F: FStStrNoPop var_160
  loc_B51F12: ILdRf var_94
  loc_B51F15: ConcatStr
  loc_B51F16: FStStrNoPop var_164
  loc_B51F19: LitStr "','"
  loc_B51F1C: ConcatStr
  loc_B51F1D: FStStrNoPop var_168
  loc_B51F20: ImpAdLdI4 MemVar_D9302C
  loc_B51F23: ConcatStr
  loc_B51F24: FStStrNoPop var_16C
  loc_B51F27: LitStr "');"
  loc_B51F2A: ConcatStr
  loc_B51F2B: FStStr var_9C
  loc_B51F2E: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_110 = "": var_114 = "": var_118 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_B51F5D: FFreeVar var_B4 = "": var_D4 = ""
  loc_B51F66: LitI2_Byte 0
  loc_B51F68: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B51F6D: FStFPR8 var_174
  loc_B51F70: ILdRf var_9C
  loc_B51F73: LitStr " UPDATE relacion SET TipoRela = 'Transferencia', FebaRela = '"
  loc_B51F76: ConcatStr
  loc_B51F77: FStStrNoPop var_D8
  loc_B51F7A: LitI4 1
  loc_B51F7F: LitI4 1
  loc_B51F84: LitVarStr var_10C, "yyyy-mm-dd"
  loc_B51F89: FStVarCopyObj var_D4
  loc_B51F8C: FLdRfVar var_D4
  loc_B51F8F: FLdFPR8 var_174
  loc_B51F92: CVarDate var_B4
  loc_B51F96: ImpAdCallI2 Format$(, )
  loc_B51F9B: FStStrNoPop var_DC
  loc_B51F9E: ConcatStr
  loc_B51F9F: FStStrNoPop var_E0
  loc_B51FA2: LitStr "', MobaRela = 'TRANSFERENCIA DIFUNTO' WHERE CodiOfic = 4 AND CuenCtct = '"
  loc_B51FA5: ConcatStr
  loc_B51FA6: FStStrNoPop var_E4
  loc_B51FA9: ILdRf CodiDifu
  loc_B51FAC: CStrI4
  loc_B51FAE: FStStrNoPop var_E8
  loc_B51FB1: ConcatStr
  loc_B51FB2: FStStrNoPop var_EC
  loc_B51FB5: LitStr "';"
  loc_B51FB8: ConcatStr
  loc_B51FB9: FStStr var_9C
  loc_B51FBC: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_B51FCB: FFreeVar var_B4 = ""
  loc_B51FD2: ILdRf var_9C
  loc_B51FD5: LitStr " UPDATE difunto SET CucuPers = '"
  loc_B51FD8: ConcatStr
  loc_B51FD9: FStStrNoPop var_D8
  loc_B51FDC: ILdRf var_8C
  loc_B51FDF: ConcatStr
  loc_B51FE0: FStStrNoPop var_DC
  loc_B51FE3: LitStr "' WHERE CodiDifu = "
  loc_B51FE6: ConcatStr
  loc_B51FE7: FStStrNoPop var_E0
  loc_B51FEA: ILdRf CodiDifu
  loc_B51FED: CStrI4
  loc_B51FEF: FStStrNoPop var_E4
  loc_B51FF2: ConcatStr
  loc_B51FF3: FStStrNoPop var_E8
  loc_B51FF6: LitStr ";"
  loc_B51FF9: ConcatStr
  loc_B51FFA: FStStr var_9C
  loc_B51FFD: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_B5200A: FLdRfVar var_A2
  loc_B5200D: ILdRf CodiDifu
  loc_B52010: CStrI4
  loc_B52012: FStStrNoPop var_D8
  loc_B52015: LitI2_Byte 4
  loc_B52017: CUI1I2
  loc_B52019: ILdRf var_8C
  loc_B5201C: FLdRfVar var_98
  loc_B5201F: NewIfNullPr clsrelacion
  loc_B52022: from_stack_4v = clsrelacion.NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B52027: FLdUI1
  loc_B5202B: FStUI1 var_A0
  loc_B5202F: FFree1Str var_D8
  loc_B52032: FLdRfVar var_DC
  loc_B52035: FLdUI1
  loc_B52039: ILdRf CodiDifu
  loc_B5203C: CStrI4
  loc_B5203E: FStStrNoPop var_D8
  loc_B52041: LitI2_Byte 4
  loc_B52043: CUI1I2
  loc_B52045: ILdRf var_8C
  loc_B52048: FLdRfVar var_98
  loc_B5204B: NewIfNullPr clsrelacion
  loc_B5204E: from_stack_5v = clsrelacion.ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B52053: ILdRf var_DC
  loc_B52056: LitStr vbNullString
  loc_B52059: EqStr
  loc_B5205B: FFreeStr var_D8 = ""
  loc_B52062: BranchF loc_B52112
  loc_B52065: LitI2_Byte 0
  loc_B52067: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B5206C: FStFPR8 var_174
  loc_B5206F: ILdRf var_9C
  loc_B52072: LitStr " INSERT INTO relacion (CucuPers,CodiOfic,CuenCtct,NumeRela,TipoRela,FealRela,PorcRela,CodiUsua) VALUES ('"
  loc_B52075: ConcatStr
  loc_B52076: FStStrNoPop var_D8
  loc_B52079: ILdRf var_8C
  loc_B5207C: ConcatStr
  loc_B5207D: FStStrNoPop var_DC
  loc_B52080: LitStr "',4,'"
  loc_B52083: ConcatStr
  loc_B52084: FStStrNoPop var_E0
  loc_B52087: ILdRf CodiDifu
  loc_B5208A: CStrI4
  loc_B5208C: FStStrNoPop var_E4
  loc_B5208F: ConcatStr
  loc_B52090: FStStrNoPop var_E8
  loc_B52093: LitStr "',"
  loc_B52096: ConcatStr
  loc_B52097: FStStrNoPop var_EC
  loc_B5209A: FLdUI1
  loc_B5209E: CStrI2
  loc_B520A0: FStStrNoPop var_F0
  loc_B520A3: ConcatStr
  loc_B520A4: FStStrNoPop var_F4
  loc_B520A7: LitStr ",'Titular','"
  loc_B520AA: ConcatStr
  loc_B520AB: FStStrNoPop var_F8
  loc_B520AE: LitI4 1
  loc_B520B3: LitI4 1
  loc_B520B8: LitVarStr var_10C, "yyyy-mm-dd"
  loc_B520BD: FStVarCopyObj var_D4
  loc_B520C0: FLdRfVar var_D4
  loc_B520C3: FLdFPR8 var_174
  loc_B520C6: CVarDate var_B4
  loc_B520CA: ImpAdCallI2 Format$(, )
  loc_B520CF: FStStrNoPop var_FC
  loc_B520D2: ConcatStr
  loc_B520D3: FStStrNoPop var_110
  loc_B520D6: LitStr "',100,'"
  loc_B520D9: ConcatStr
  loc_B520DA: FStStrNoPop var_114
  loc_B520DD: ImpAdLdI4 MemVar_D9302C
  loc_B520E0: ConcatStr
  loc_B520E1: FStStrNoPop var_118
  loc_B520E4: LitStr "');"
  loc_B520E7: ConcatStr
  loc_B520E8: FStStr var_9C
  loc_B520EB: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_110 = "": var_114 = ""
  loc_B52108: FFreeVar var_B4 = ""
  loc_B5210F: Branch loc_B5211C
  loc_B52112: ILdRf var_9C
  loc_B52115: LitStr " INSERT INTO ERRROR"
  loc_B52118: ConcatStr
  loc_B52119: FStStr var_9C
  loc_B5211C: OnErrorGoto loc_B52146
  loc_B5211F: ILdRf var_9C
  loc_B52122: Call Proc_154_31_A50E30()
  loc_B52127: LitStr "COMMIT;"
  loc_B5212A: Call Proc_154_31_A50E30()
  loc_B5212F: FLdI2 arg_28
  loc_B52132: BranchF loc_B52145
  loc_B52135: ILdRf CodiDifu
  loc_B52138: CStrI4
  loc_B5213A: FStStrNoPop var_D8
  loc_B5213D: Call Encontrar(from_stack_1v)
  loc_B52142: FFree1Str var_D8
  loc_B52145: ExitProcHresult
  loc_B52146: LitStr "ROLLBACK;"
  loc_B52149: Call RedefineRS(from_stack_1v)
  loc_B5214E: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B52151: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B52156: ExitProcHresult
End Sub

Public Sub Requery() '9E573C
  'Data Table: 40A3D4
  loc_9E5718: LitI4 -1
  loc_9E571D: FLdPr Me
  loc_9E5720: MemLdPr global_60
  loc_9E5723: Me.Requery from_stack_1
  loc_9E5728: LitVarStr var_94, "Primary"
  loc_9E572D: PopAdLdVar
  loc_9E572E: FLdPr Me
  loc_9E5731: LateIdCall
  loc_9E5739: ExitProcHresult
End Sub

Public Sub Encontrar(CodiDifu) 'A66388
  'Data Table: 40A3D4
  loc_A66320: ILdRf CodiDifu
  loc_A66323: FStStrCopy var_88
  loc_A66326: Call Requery()
  loc_A6632B: LitStr "CodiDifu = '"
  loc_A6632E: ILdRf var_88
  loc_A66331: ConcatStr
  loc_A66332: FStStrNoPop var_8C
  loc_A66335: LitStr "'"
  loc_A66338: ConcatStr
  loc_A66339: PopTmpLdAdStr
  loc_A6633D: Call Find(from_stack_1v)
  loc_A66342: FFreeStr var_8C = ""
  loc_A66349: FLdRfVar var_94
  loc_A6634C: FLdPr Me
  loc_A6634F: MemLdPr global_60
  loc_A66352:  = Me.RecordCount
  loc_A66357: ILdRf var_94
  loc_A6635A: LitI4 0
  loc_A6635F: GtI4
  loc_A66360: FLdRfVar var_98
  loc_A66363: FLdPr Me
  loc_A66366: MemLdPr global_60
  loc_A66369:  = Me.AbsolutePosition
  loc_A6636E: ILdRf var_98
  loc_A66371: LitI4 -3
  loc_A66376: EqI4
  loc_A66377: AndI4
  loc_A66378: BranchF loc_A66386
  loc_A6637B: FLdPr Me
  loc_A6637E: MemLdPr global_60
  loc_A66381: Me.MoveLast
  loc_A66386: ExitProcHresult
End Sub

Public Function ValidaClave(CodiDifu, NumeTrdi) 'A69790
  'Data Table: 40A3D4
  loc_A69730: ZeroRetValVar
  loc_A69732: LitStr "SELECT CodiDifu FROM trandifu WHERE CodiDifu = "
  loc_A69735: ILdRf CodiDifu
  loc_A69738: CStrI4
  loc_A6973A: FStStrNoPop var_98
  loc_A6973D: ConcatStr
  loc_A6973E: FStStrNoPop var_9C
  loc_A69741: LitStr " AND NumeTrdi = "
  loc_A69744: ConcatStr
  loc_A69745: FStStrNoPop var_A0
  loc_A69748: FLdI2 NumeTrdi
  loc_A6974B: CStrUI1
  loc_A6974D: FStStrNoPop var_A4
  loc_A69750: ConcatStr
  loc_A69751: FStStrNoPop var_A8
  loc_A69754: Call Proc_154_31_A50E30()
  loc_A69759: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A69766: FLdRfVar var_AC
  loc_A69769: FLdPr Me
  loc_A6976C: MemLdPr global_64
  loc_A6976F:  = Me.RecordCount
  loc_A69774: ILdRf var_AC
  loc_A69777: LitI4 0
  loc_A6977C: GtI4
  loc_A6977D: BranchF loc_A69789
  loc_A69780: LitVarStr var_BC, "La transferencia YA EXISTE. Reintente..."
  loc_A69785: FStVarCopy
  loc_A69789: ExitProcCbHresult
End Function

Public Function NuevoRegistro(CodiDifu) 'A83860
  'Data Table: 40A3D4
  loc_A837DC: LitStr "SELECT IFNULL(MAX(NumeTrdi),0) + 1 as NumeTrdi FROM trandifu WHERE CodiDifu = "
  loc_A837DF: ILdRf CodiDifu
  loc_A837E2: CStrI4
  loc_A837E4: FStStrNoPop var_8C
  loc_A837E7: ConcatStr
  loc_A837E8: FStStrNoPop var_90
  loc_A837EB: Call Proc_154_31_A50E30()
  loc_A837F0: FFreeStr var_8C = ""
  loc_A837F7: FLdRfVar NuevoRegistro
  loc_A837FA: FLdPr Me
  loc_A837FD: MemLdPr global_64
  loc_A83800:  = Me.RecordCount
  loc_A83805: ILdRf NuevoRegistro
  loc_A83808: LitI4 0
  loc_A8380D: GtI4
  loc_A8380E: BranchF loc_A83855
  loc_A83811: FLdRfVar var_BC
  loc_A83814: FLdRfVar var_AC
  loc_A83817: LitVarStr var_A8, "NumeTrdi"
  loc_A8381C: PopAdLdVar
  loc_A8381D: FLdRfVar var_98
  loc_A83820: FLdPr Me
  loc_A83823: MemLdPr global_64
  loc_A83826:  = Me.Fields
  loc_A8382B: FLdPr var_98
  loc_A8382E: from_stack_2 = Me.Item(from_stack_1)
  loc_A83833: FLdPr var_AC
  loc_A83836:  = Me.Value
  loc_A8383B: FLdRfVar var_BC
  loc_A8383E: FnCByteVar
  loc_A83840: CI2UI1
  loc_A83842: LitI2_Byte 1
  loc_A83844: AddI2
  loc_A83845: FStI2 var_86
  loc_A83848: FFreeAd var_98 = ""
  loc_A8384F: FFree1Var var_BC = ""
  loc_A83852: Branch loc_A8385A
  loc_A83855: LitI2_Byte 1
  loc_A83857: FStI2 var_86
  loc_A8385A: ExitProcCbHresult
End Function

Public Sub RedefineRS(sSelect) 'A60CCC
  'Data Table: 40A3D4
  loc_A60C68: ILdRf sSelect
  loc_A60C6B: FStStrCopy var_88
  loc_A60C6E: LitNothing
  loc_A60C70: CastAd
  loc_A60C73: FStAdFuncNoPop
  loc_A60C76: FLdPr Me
  loc_A60C79: MemStAd
  loc_A60C7D: FFree1Ad var_8C
  loc_A60C80: New Recordset
  loc_A60C84: FStAdFuncNoPop
  loc_A60C87: FLdPr Me
  loc_A60C8A: MemStAd
  loc_A60C8E: FFree1Ad var_8C
  loc_A60C91: LitI4 -1
  loc_A60C96: LitI4 3
  loc_A60C9B: LitI4 3
  loc_A60CA0: ImpAdLdI4 MemVar_D9301C
  loc_A60CA3: CVarAd
  loc_A60CA7: PopAdLdVar
  loc_A60CA8: ILdRf var_88
  loc_A60CAB: CVarStr var_9C
  loc_A60CAE: PopAdLdVar
  loc_A60CAF: FLdPr Me
  loc_A60CB2: MemLdPr global_60
  loc_A60CB5: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A60CBA: LitVarStr var_9C, "Primary"
  loc_A60CBF: PopAdLdVar
  loc_A60CC0: FLdPr Me
  loc_A60CC3: LateIdCall
  loc_A60CCB: ExitProcHresult
End Sub

Public Property Get DataSource() '9F13A4
  'Data Table: 40A3D4
  loc_9F1380: ZeroRetVal
  loc_9F1382: FLdRfVar var_8C
  loc_9F1385: FLdPr Me
  loc_9F1388: MemLdPr global_60
  loc_9F138B:  = Me.DataSource
  loc_9F1390: ILdRf var_8C
  loc_9F1393: CastAd
  loc_9F1396: FStAdFunc var_88
  loc_9F1399: FFree1Ad var_8C
  loc_9F139C: ExitProcCbHresult
End Sub

Public Property Get CodiDifu() 'A32124
  'Data Table: 40A3D4
  loc_A320E0: FLdRfVar var_B0
  loc_A320E3: FLdRfVar var_A0
  loc_A320E6: LitVarStr var_9C, "CodiDifu"
  loc_A320EB: PopAdLdVar
  loc_A320EC: FLdRfVar var_8C
  loc_A320EF: FLdPr Me
  loc_A320F2: MemLdPr global_60
  loc_A320F5:  = Me.Fields
  loc_A320FA: FLdPr var_8C
  loc_A320FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A32102: FLdPr var_A0
  loc_A32105:  = Me.Value
  loc_A3210A: FLdRfVar var_B0
  loc_A3210D: CI4Var
  loc_A3210F: FStR4 var_88
  loc_A32112: FFreeAd var_8C = ""
  loc_A32119: FFree1Var var_B0 = ""
  loc_A3211C: ExitProcCbHresult
End Sub

Public Property Get NumeTrin() 'A320A4
  'Data Table: 40A3D4
  loc_A32060: FLdRfVar var_B0
  loc_A32063: FLdRfVar var_A0
  loc_A32066: LitVarStr var_9C, "NumeTrin"
  loc_A3206B: PopAdLdVar
  loc_A3206C: FLdRfVar var_8C
  loc_A3206F: FLdPr Me
  loc_A32072: MemLdPr global_60
  loc_A32075:  = Me.Fields
  loc_A3207A: FLdPr var_8C
  loc_A3207D: from_stack_2 = Me.Item(from_stack_1)
  loc_A32082: FLdPr var_A0
  loc_A32085:  = Me.Value
  loc_A3208A: FLdRfVar var_B0
  loc_A3208D: CI2Var
  loc_A3208E: FStI2 var_86
  loc_A32091: FFreeAd var_8C = ""
  loc_A32098: FFree1Var var_B0 = ""
  loc_A3209B: ExitProcCbHresult
End Sub

Public Property Get CucuVend() 'A3E6E0
  'Data Table: 40A3D4
  loc_A3E69C: ZeroRetVal
  loc_A3E69E: FLdRfVar var_B0
  loc_A3E6A1: FLdRfVar var_A0
  loc_A3E6A4: LitVarStr var_9C, "CucuVend"
  loc_A3E6A9: PopAdLdVar
  loc_A3E6AA: FLdRfVar var_8C
  loc_A3E6AD: FLdPr Me
  loc_A3E6B0: MemLdPr global_60
  loc_A3E6B3:  = Me.Fields
  loc_A3E6B8: FLdPr var_8C
  loc_A3E6BB: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E6C0: FLdPr var_A0
  loc_A3E6C3:  = Me.Value
  loc_A3E6C8: FLdRfVar var_B0
  loc_A3E6CB: CStrVarTmp
  loc_A3E6CC: FStStr var_88
  loc_A3E6CF: FFreeAd var_8C = ""
  loc_A3E6D6: FFree1Var var_B0 = ""
  loc_A3E6D9: ExitProcCbHresult
End Sub

Public Property Get CucuComp() 'A3E8F0
  'Data Table: 40A3D4
  loc_A3E8AC: ZeroRetVal
  loc_A3E8AE: FLdRfVar var_B0
  loc_A3E8B1: FLdRfVar var_A0
  loc_A3E8B4: LitVarStr var_9C, "CucuComp"
  loc_A3E8B9: PopAdLdVar
  loc_A3E8BA: FLdRfVar var_8C
  loc_A3E8BD: FLdPr Me
  loc_A3E8C0: MemLdPr global_60
  loc_A3E8C3:  = Me.Fields
  loc_A3E8C8: FLdPr var_8C
  loc_A3E8CB: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E8D0: FLdPr var_A0
  loc_A3E8D3:  = Me.Value
  loc_A3E8D8: FLdRfVar var_B0
  loc_A3E8DB: CStrVarTmp
  loc_A3E8DC: FStStr var_88
  loc_A3E8DF: FFreeAd var_8C = ""
  loc_A3E8E6: FFree1Var var_B0 = ""
  loc_A3E8E9: ExitProcCbHresult
End Sub

Public Property Get Fealtrin() 'A31FA4
  'Data Table: 40A3D4
  loc_A31F60: FLdRfVar var_B4
  loc_A31F63: FLdRfVar var_A4
  loc_A31F66: LitVarStr var_A0, "Fealtrin"
  loc_A31F6B: PopAdLdVar
  loc_A31F6C: FLdRfVar var_90
  loc_A31F6F: FLdPr Me
  loc_A31F72: MemLdPr global_60
  loc_A31F75:  = Me.Fields
  loc_A31F7A: FLdPr var_90
  loc_A31F7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31F82: FLdPr var_A4
  loc_A31F85:  = Me.Value
  loc_A31F8A: FLdRfVar var_B4
  loc_A31F8D: FnCDateVar
  loc_A31F8F: FStFPR8 var_8C
  loc_A31F92: FFreeAd var_90 = ""
  loc_A31F99: FFree1Var var_B4 = ""
  loc_A31F9C: ExitProcCbHresult
End Sub

Public Property Get FeesTrin() 'A31F24
  'Data Table: 40A3D4
  loc_A31EE0: FLdRfVar var_B4
  loc_A31EE3: FLdRfVar var_A4
  loc_A31EE6: LitVarStr var_A0, "FeesTrin"
  loc_A31EEB: PopAdLdVar
  loc_A31EEC: FLdRfVar var_90
  loc_A31EEF: FLdPr Me
  loc_A31EF2: MemLdPr global_60
  loc_A31EF5:  = Me.Fields
  loc_A31EFA: FLdPr var_90
  loc_A31EFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A31F02: FLdPr var_A4
  loc_A31F05:  = Me.Value
  loc_A31F0A: FLdRfVar var_B4
  loc_A31F0D: FnCDateVar
  loc_A31F0F: FStFPR8 var_8C
  loc_A31F12: FFreeAd var_90 = ""
  loc_A31F19: FFree1Var var_B4 = ""
  loc_A31F1C: ExitProcCbHresult
End Sub

Public Property Get ExpeTrin() 'A3E4D0
  'Data Table: 40A3D4
  loc_A3E48C: ZeroRetVal
  loc_A3E48E: FLdRfVar var_B0
  loc_A3E491: FLdRfVar var_A0
  loc_A3E494: LitVarStr var_9C, "ExpeTrin"
  loc_A3E499: PopAdLdVar
  loc_A3E49A: FLdRfVar var_8C
  loc_A3E49D: FLdPr Me
  loc_A3E4A0: MemLdPr global_60
  loc_A3E4A3:  = Me.Fields
  loc_A3E4A8: FLdPr var_8C
  loc_A3E4AB: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E4B0: FLdPr var_A0
  loc_A3E4B3:  = Me.Value
  loc_A3E4B8: FLdRfVar var_B0
  loc_A3E4BB: CStrVarTmp
  loc_A3E4BC: FStStr var_88
  loc_A3E4BF: FFreeAd var_8C = ""
  loc_A3E4C6: FFree1Var var_B0 = ""
  loc_A3E4C9: ExitProcCbHresult
End Sub

Public Property Get ObseTrin() 'A3F8EC
  'Data Table: 40A3D4
  loc_A3F8A8: ZeroRetVal
  loc_A3F8AA: FLdRfVar var_B0
  loc_A3F8AD: FLdRfVar var_A0
  loc_A3F8B0: LitVarStr var_9C, "ObseTrin"
  loc_A3F8B5: PopAdLdVar
  loc_A3F8B6: FLdRfVar var_8C
  loc_A3F8B9: FLdPr Me
  loc_A3F8BC: MemLdPr global_60
  loc_A3F8BF:  = Me.Fields
  loc_A3F8C4: FLdPr var_8C
  loc_A3F8C7: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F8CC: FLdPr var_A0
  loc_A3F8CF:  = Me.Value
  loc_A3F8D4: FLdRfVar var_B0
  loc_A3F8D7: CStrVarTmp
  loc_A3F8D8: FStStr var_88
  loc_A3F8DB: FFreeAd var_8C = ""
  loc_A3F8E2: FFree1Var var_B0 = ""
  loc_A3F8E5: ExitProcCbHresult
End Sub

Public Property Get CodiUsua() 'A3F1B4
  'Data Table: 40A3D4
  loc_A3F170: ZeroRetVal
  loc_A3F172: FLdRfVar var_B0
  loc_A3F175: FLdRfVar var_A0
  loc_A3F178: LitVarStr var_9C, "CodiUsua"
  loc_A3F17D: PopAdLdVar
  loc_A3F17E: FLdRfVar var_8C
  loc_A3F181: FLdPr Me
  loc_A3F184: MemLdPr global_60
  loc_A3F187:  = Me.Fields
  loc_A3F18C: FLdPr var_8C
  loc_A3F18F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F194: FLdPr var_A0
  loc_A3F197:  = Me.Value
  loc_A3F19C: FLdRfVar var_B0
  loc_A3F19F: CStrVarTmp
  loc_A3F1A0: FStStr var_88
  loc_A3F1A3: FFreeAd var_8C = ""
  loc_A3F1AA: FFree1Var var_B0 = ""
  loc_A3F1AD: ExitProcCbHresult
End Sub

Private Function Proc_154_30_9F1400() '9F1400
  'Data Table: 40A3D4
  loc_9F13DC: LitStr "Primary"
  loc_9F13DF: FLdPr Me
  loc_9F13E2: LateIdLdVar var_94 DispID_4 0
  loc_9F13E9: CastAdVar Me
  loc_9F13ED: FStAdFunc var_98
  loc_9F13F0: FLdPr var_98
  loc_9F13F8: FFree1Ad var_98
  loc_9F13FB: FFree1Var var_94 = ""
  loc_9F13FE: ExitProcHresult
End Function

Private Function Proc_154_31_A50E30(arg_C) 'A50E30
  'Data Table: 40A3D4
  loc_A50DDC: ILdRf arg_C
  loc_A50DDF: FStStrCopy var_88
  loc_A50DE2: LitNothing
  loc_A50DE4: CastAd
  loc_A50DE7: FStAdFuncNoPop
  loc_A50DEA: FLdPr Me
  loc_A50DED: MemStAd
  loc_A50DF1: FFree1Ad var_8C
  loc_A50DF4: New Recordset
  loc_A50DF8: FStAdFuncNoPop
  loc_A50DFB: FLdPr Me
  loc_A50DFE: MemStAd
  loc_A50E02: FFree1Ad var_8C
  loc_A50E05: LitI4 -1
  loc_A50E0A: LitI4 3
  loc_A50E0F: LitI4 3
  loc_A50E14: ImpAdLdI4 MemVar_D9301C
  loc_A50E17: CVarAd
  loc_A50E1B: PopAdLdVar
  loc_A50E1C: ILdRf var_88
  loc_A50E1F: CVarStr var_9C
  loc_A50E22: PopAdLdVar
  loc_A50E23: FLdPr Me
  loc_A50E26: MemLdPr global_64
  loc_A50E29: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A50E2E: ExitProcHresult
End Function

Private Function Proc_154_32_9E0F0C(arg_C) '9E0F0C
  'Data Table: 40A3D4
  loc_9E0EF0: ILdI4 arg_C
  loc_9E0EF3: FStStrCopy var_88
  loc_9E0EF6: ILdRf var_88
  loc_9E0EF9: LitStr "Primary"
  loc_9E0EFC: EqStr
  loc_9E0EFE: BranchF loc_9E0F0B
  loc_9E0F01: FLdPr Me
  loc_9E0F04: MemLdStr global_60
  loc_9E0F07: IStAd
  loc_9E0F0B: ExitProcHresult
End Function
