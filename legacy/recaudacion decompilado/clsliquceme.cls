VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsliquceme"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '48A498
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '48A4A7
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '48A4B6
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9ED14C
  'Data Table: 489C84
  loc_9ED124: FLdRfVar var_88
  loc_9ED127: FLdPr Me
  loc_9ED12A: MemLdPr RsFrm
  loc_9ED12D:  = Me.RecordCount
  loc_9ED132: ILdRf var_88
  loc_9ED135: LitI4 0
  loc_9ED13A: GtI4
  loc_9ED13B: BranchF loc_9ED149
  loc_9ED13E: FLdPr Me
  loc_9ED141: MemLdPr RsFrm
  loc_9ED144: Me.MoveFirst
  loc_9ED149: ExitProcHresult
End Sub

Public Sub MoveLast() '9ED0F4
  'Data Table: 489C84
  loc_9ED0CC: FLdRfVar var_88
  loc_9ED0CF: FLdPr Me
  loc_9ED0D2: MemLdPr RsFrm
  loc_9ED0D5:  = Me.RecordCount
  loc_9ED0DA: ILdRf var_88
  loc_9ED0DD: LitI4 0
  loc_9ED0E2: GtI4
  loc_9ED0E3: BranchF loc_9ED0F1
  loc_9ED0E6: FLdPr Me
  loc_9ED0E9: MemLdPr RsFrm
  loc_9ED0EC: Me.MoveLast
  loc_9ED0F1: ExitProcHresult
  loc_9ED0F2: FnLBound
End Sub

Public Sub MoveNext() 'A6C4F0
  'Data Table: 489C84
  loc_A6C478: FLdRfVar var_86
  loc_A6C47B: FLdPr Me
  loc_A6C47E: MemLdPr RsFrm
  loc_A6C481:  = Me.EOF
  loc_A6C486: FLdI2 var_86
  loc_A6C489: NotI4
  loc_A6C48A: FLdRfVar var_8C
  loc_A6C48D: FLdPr Me
  loc_A6C490: MemLdPr RsFrm
  loc_A6C493:  = Me.RecordCount
  loc_A6C498: ILdRf var_8C
  loc_A6C49B: LitI4 0
  loc_A6C4A0: GtI4
  loc_A6C4A1: AndI4
  loc_A6C4A2: BranchF loc_A6C4B0
  loc_A6C4A5: FLdPr Me
  loc_A6C4A8: MemLdPr RsFrm
  loc_A6C4AB: Me.MoveNext
  loc_A6C4B0: FLdRfVar var_86
  loc_A6C4B3: FLdPr Me
  loc_A6C4B6: MemLdPr RsFrm
  loc_A6C4B9:  = Me.EOF
  loc_A6C4BE: FLdI2 var_86
  loc_A6C4C1: FLdRfVar var_8C
  loc_A6C4C4: FLdPr Me
  loc_A6C4C7: MemLdPr RsFrm
  loc_A6C4CA:  = Me.RecordCount
  loc_A6C4CF: ILdRf var_8C
  loc_A6C4D2: LitI4 0
  loc_A6C4D7: GtI4
  loc_A6C4D8: AndI4
  loc_A6C4D9: BranchF loc_A6C4EC
  loc_A6C4DC: ImpAdCallFPR4 Beep()
  loc_A6C4E1: FLdPr Me
  loc_A6C4E4: MemLdPr RsFrm
  loc_A6C4E7: Me.MoveLast
  loc_A6C4EC: ExitProcHresult
  loc_A6C4ED: LitStr "SELECT * FROM licedeta WHERE PeriLiqu = "
End Sub

Public Sub MoveSiguiente() '9B1A10
  'Data Table: 489C84
  loc_9B1A04: FLdPr Me
  loc_9B1A07: MemLdPr RsFrm
  loc_9B1A0A: Me.MoveNext
  loc_9B1A0F: ExitProcHresult
End Sub

Public Sub Move(iValor) '9BAE98
  'Data Table: 489C84
  loc_9BAE84: LitVar_Missing var_94
  loc_9BAE87: PopAdLdVar
  loc_9BAE88: ILdI2 iValor
  loc_9BAE8B: CI4UI1
  loc_9BAE8C: FLdPr Me
  loc_9BAE8F: MemLdPr RsFrm
  loc_9BAE92: Me.Move from_stack_1, from_stack_2
  loc_9BAE97: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6C448
  'Data Table: 489C84
  loc_A6C3D0: FLdRfVar var_86
  loc_A6C3D3: FLdPr Me
  loc_A6C3D6: MemLdPr RsFrm
  loc_A6C3D9:  = Me.BOF
  loc_A6C3DE: FLdI2 var_86
  loc_A6C3E1: NotI4
  loc_A6C3E2: FLdRfVar var_8C
  loc_A6C3E5: FLdPr Me
  loc_A6C3E8: MemLdPr RsFrm
  loc_A6C3EB:  = Me.RecordCount
  loc_A6C3F0: ILdRf var_8C
  loc_A6C3F3: LitI4 0
  loc_A6C3F8: GtI4
  loc_A6C3F9: AndI4
  loc_A6C3FA: BranchF loc_A6C408
  loc_A6C3FD: FLdPr Me
  loc_A6C400: MemLdPr RsFrm
  loc_A6C403: Me.MovePrevious
  loc_A6C408: FLdRfVar var_86
  loc_A6C40B: FLdPr Me
  loc_A6C40E: MemLdPr RsFrm
  loc_A6C411:  = Me.BOF
  loc_A6C416: FLdI2 var_86
  loc_A6C419: FLdRfVar var_8C
  loc_A6C41C: FLdPr Me
  loc_A6C41F: MemLdPr RsFrm
  loc_A6C422:  = Me.RecordCount
  loc_A6C427: ILdRf var_8C
  loc_A6C42A: LitI4 0
  loc_A6C42F: GtI4
  loc_A6C430: AndI4
  loc_A6C431: BranchF loc_A6C444
  loc_A6C434: ImpAdCallFPR4 Beep()
  loc_A6C439: FLdPr Me
  loc_A6C43C: MemLdPr RsFrm
  loc_A6C43F: Me.MoveFirst
  loc_A6C444: ExitProcHresult
End Sub

Public Property Get EOF(arg_C) '9CE6FC
  'Data Table: 489C84
  loc_9CE6E0: FLdRfVar var_88
  loc_9CE6E3: FLdPr Me
  loc_9CE6E6: MemLdPr RsFrm
  loc_9CE6E9:  = Me.EOF
  loc_9CE6EE: FLdI2 var_88
  loc_9CE6F1: FStI2 var_86
  loc_9CE6F4: ExitProcCbHresult
  loc_9CE6FA: FLdPr arg_C00
End Sub

Public Property Get BOF() '9CE5CC
  'Data Table: 489C84
  loc_9CE5B0: FLdRfVar var_88
  loc_9CE5B3: FLdPr Me
  loc_9CE5B6: MemLdPr RsFrm
  loc_9CE5B9:  = Me.BOF
  loc_9CE5BE: FLdI2 var_88
  loc_9CE5C1: FStI2 var_86
  loc_9CE5C4: ExitProcCbHresult
  loc_9CE5CA: ThisVCallAd
End Sub

Public Sub Sort(sOrden) '9B6C38
  'Data Table: 489C84
  loc_9B6C28: ILdI4 sOrden
  loc_9B6C2B: FLdPr Me
  loc_9B6C2E: MemLdPr RsFrm
  loc_9B6C31: Me.Sort = from_stack_1
  loc_9B6C36: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DF340
  'Data Table: 489C84
  loc_9DF320: LitVar_Missing var_94
  loc_9DF323: PopAdLdVar
  loc_9DF324: LitI4 1
  loc_9DF329: LitI4 0
  loc_9DF32E: ILdI4 sFind
  loc_9DF331: FLdPr Me
  loc_9DF334: MemLdPr RsFrm
  loc_9DF337: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DF33C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9BAFA8
  'Data Table: 489C84
  loc_9BAF94: ILdI4 sCriterio
  loc_9BAF97: CVarStr var_94
  loc_9BAF9A: PopAdLdVar
  loc_9BAF9B: FLdPr Me
  loc_9BAF9E: MemLdPr RsFrm
  loc_9BAFA1: Me.Filter = from_stack_1
  loc_9BAFA6: ExitProcHresult
  loc_9BAFA7: CCyI2
End Sub

Public Property Get AbsolutePosition() '9CE49C
  'Data Table: 489C84
  loc_9CE480: FLdRfVar var_8C
  loc_9CE483: FLdPr Me
  loc_9CE486: MemLdPr RsFrm
  loc_9CE489:  = Me.AbsolutePosition
  loc_9CE48E: ILdRf var_8C
  loc_9CE491: FStR4 var_88
  loc_9CE494: ExitProcCbHresult
  loc_9CE49A: LitStr " background-color: #7DC3E7;"
End Sub

Public Property Get RecordCount() '9CE288
  'Data Table: 489C84
  loc_9CE26C: FLdRfVar var_8C
  loc_9CE26F: FLdPr Me
  loc_9CE272: MemLdPr RsFrm
  loc_9CE275:  = Me.RecordCount
  loc_9CE27A: ILdRf var_8C
  loc_9CE27D: FStR4 var_88
  loc_9CE280: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiDifu, CodiConc, TipoVenc, TipoLice, FeveLice, DeudLice, ImpoLice, CrafLice, ExenLice, DescLice, GastLice, TotaLice, CucuPers, CodiCall, NucaLice) 'D08EC0
  'Data Table: 489C84
  loc_D05C64: ILdRf CodiConc
  loc_D05C67: FStStrCopy var_88
  loc_D05C6A: ILdRf TipoLice
  loc_D05C6D: FStStrCopy var_8C
  loc_D05C70: ILdRf FeveLice
  loc_D05C73: FStStrCopy var_90
  loc_D05C76: ILdRf arg_68
  loc_D05C79: FStStrCopy var_94
  loc_D05C7C: ILdRf arg_74
  loc_D05C7F: FStStrCopy var_98
  loc_D05C82: ILdRf arg_7C
  loc_D05C85: FStStrCopy var_9C
  loc_D05C88: ILdRf Me0
  loc_D05C8B: FStStrCopy var_A0
  loc_D05C8E: ILdRf Me4
  loc_D05C91: FStStrCopy var_A4
  loc_D05C94: ILdRf Me8
  loc_D05C97: FStStrCopy var_A8
  loc_D05C9A: ILdRf arg_90
  loc_D05C9D: FStStrCopy var_AC
  loc_D05CA0: ILdRf arg_94
  loc_D05CA3: FStStrCopy var_B0
  loc_D05CA6: LitI2_Byte 0
  loc_D05CA8: CR8I2
  loc_D05CA9: FStFPR8 var_BC
  loc_D05CAC: LitI4 0
  loc_D05CB1: FStR4 var_C0
  loc_D05CB4: OnErrorGoto loc_D08E9A
  loc_D05CB7: FLdUI1
  loc_D05CBB: CI2UI1
  loc_D05CBD: LitI2_Byte 1
  loc_D05CBF: EqI2
  loc_D05CC0: FLdUI1
  loc_D05CC4: CI2UI1
  loc_D05CC6: LitI2_Byte 2
  loc_D05CC8: EqI2
  loc_D05CC9: AndI4
  loc_D05CCA: BranchF loc_D06F96
  loc_D05CCD: LitI2_Byte 0
  loc_D05CCF: CR8I2
  loc_D05CD0: FStFPR8 var_F8
  loc_D05CD3: LitStr "START TRANSACTION;"
  loc_D05CD6: FStStrCopy var_114
  loc_D05CD9: LitStr "SELECT PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiDifu, CodiConc, TipoVenc, TipoLice, DeudLice, ImpoLice, GastLice, SUM(CrafLice) as CrafLice, ExenLice, DescLice, TotaLice "
  loc_D05CDC: LitStr " FROM liquceme WHERE PeriLiqu = "
  loc_D05CDF: ConcatStr
  loc_D05CE0: FStStrNoPop var_11C
  loc_D05CE3: FLdI2 PeriLiqu
  loc_D05CE6: CStrUI1
  loc_D05CE8: FStStrNoPop var_120
  loc_D05CEB: ConcatStr
  loc_D05CEC: FStStrNoPop var_124
  loc_D05CEF: LitStr " AND CodiTili = "
  loc_D05CF2: ConcatStr
  loc_D05CF3: FStStrNoPop var_128
  loc_D05CF6: FLdUI1
  loc_D05CFA: CStrI2
  loc_D05CFC: FStStrNoPop var_12C
  loc_D05CFF: ConcatStr
  loc_D05D00: FStStrNoPop var_130
  loc_D05D03: LitStr " AND NumeLiqu = "
  loc_D05D06: ConcatStr
  loc_D05D07: FStStrNoPop var_134
  loc_D05D0A: FLdI2 NumeLiqu
  loc_D05D0D: CStrUI1
  loc_D05D0F: FStStrNoPop var_138
  loc_D05D12: ConcatStr
  loc_D05D13: FStStrNoPop var_13C
  loc_D05D16: LitStr " AND CodiDifu = "
  loc_D05D19: ConcatStr
  loc_D05D1A: FStStrNoPop var_140
  loc_D05D1D: ILdRf CodiDifu
  loc_D05D20: CStrI4
  loc_D05D22: FStStrNoPop var_144
  loc_D05D25: ConcatStr
  loc_D05D26: FStStrNoPop var_148
  loc_D05D29: LitStr " GROUP BY PeriLiqu, CodiTili, NumeLiqu, CodiDifu, CodiConc"
  loc_D05D2C: ConcatStr
  loc_D05D2D: FStStrNoPop var_14C
  loc_D05D30: LitStr " HAVING TotaLice > 0"
  loc_D05D33: ConcatStr
  loc_D05D34: FStStrNoPop var_150
  loc_D05D37: Call EjecutarRsCls2(from_stack_1v)
  loc_D05D3C: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_D05D5B: FLdRfVar var_154
  loc_D05D5E: FLdPr Me
  loc_D05D61: MemLdPr global_64
  loc_D05D64:  = Me.RecordCount
  loc_D05D69: ILdRf var_154
  loc_D05D6C: LitI4 0
  loc_D05D71: GtI4
  loc_D05D72: BranchF loc_D06F8B
  loc_D05D75: FLdPr Me
  loc_D05D78: MemLdPr global_64
  loc_D05D7B: Me.MoveFirst
  loc_D05D80: FLdRfVar var_156
  loc_D05D83: FLdPr Me
  loc_D05D86: MemLdPr global_64
  loc_D05D89:  = Me.EOF
  loc_D05D8E: FLdI2 var_156
  loc_D05D91: NotI4
  loc_D05D92: BranchF loc_D06F8B
  loc_D05D95: FLdRfVar var_180
  loc_D05D98: FLdRfVar var_170
  loc_D05D9B: LitVarStr var_16C, "CodiConc"
  loc_D05DA0: PopAdLdVar
  loc_D05DA1: FLdRfVar var_15C
  loc_D05DA4: FLdPr Me
  loc_D05DA7: MemLdPr global_64
  loc_D05DAA:  = Me.Fields
  loc_D05DAF: FLdPr var_15C
  loc_D05DB2: from_stack_2 = Me.Item(from_stack_1)
  loc_D05DB7: FLdPr var_170
  loc_D05DBA:  = Me.Value
  loc_D05DBF: FLdRfVar var_180
  loc_D05DC2: LitVarStr var_190, "13020301"
  loc_D05DC7: HardType
  loc_D05DC8: EqVarBool
  loc_D05DCA: FFreeAd var_15C = ""
  loc_D05DD1: FFree1Var var_180 = ""
  loc_D05DD4: BranchF loc_D06A8C
  loc_D05DD7: LitI2_Byte 0
  loc_D05DD9: CR8I2
  loc_D05DDA: FStFPR8 var_F8
  loc_D05DDD: LitStr "SELECT licedeta.* FROM licedeta "
  loc_D05DE0: LitStr " LEFT JOIN servante ON servante.CodiDifu = licedeta.CodiDifu"
  loc_D05DE3: ConcatStr
  loc_D05DE4: FStStrNoPop var_11C
  loc_D05DE7: LitStr " AND servante.CodiRamo = liacedeta.CodiRamo"
  loc_D05DEA: ConcatStr
  loc_D05DEB: FStStrNoPop var_120
  loc_D05DEE: LitStr " AND servante.CodiSubr = licedeta.CodiSubr"
  loc_D05DF1: ConcatStr
  loc_D05DF2: FStStrNoPop var_124
  loc_D05DF5: LitStr " AND servante.CodiRubr = licedeta.CodiRubr"
  loc_D05DF8: ConcatStr
  loc_D05DF9: FStStrNoPop var_128
  loc_D05DFC: LitStr " AND servante.PrioSeco = licedeta.NumeLade"
  loc_D05DFF: ConcatStr
  loc_D05E00: FStStrNoPop var_12C
  loc_D05E03: LitStr " WHERE PeriLiqu = "
  loc_D05E06: ConcatStr
  loc_D05E07: CVarStr var_1A0
  loc_D05E0A: FLdRfVar var_180
  loc_D05E0D: FLdRfVar var_170
  loc_D05E10: LitVarStr var_16C, "PeriLiqu"
  loc_D05E15: PopAdLdVar
  loc_D05E16: FLdRfVar var_15C
  loc_D05E19: FLdPr Me
  loc_D05E1C: MemLdPr global_64
  loc_D05E1F:  = Me.Fields
  loc_D05E24: FLdPr var_15C
  loc_D05E27: from_stack_2 = Me.Item(from_stack_1)
  loc_D05E2C: FLdPr var_170
  loc_D05E2F:  = Me.Value
  loc_D05E34: FLdRfVar var_180
  loc_D05E37: ConcatVar var_1B0
  loc_D05E3B: LitVarStr var_190, " AND BimeLiqu = 1"
  loc_D05E40: ConcatVar var_1C0
  loc_D05E44: LitVarStr var_1D0, " AND CodiTili = "
  loc_D05E49: ConcatVar var_1E0
  loc_D05E4D: FLdRfVar var_208
  loc_D05E50: FLdRfVar var_1F8
  loc_D05E53: LitVarStr var_1F4, "CodiTili"
  loc_D05E58: PopAdLdVar
  loc_D05E59: FLdRfVar var_1E4
  loc_D05E5C: FLdPr Me
  loc_D05E5F: MemLdPr global_64
  loc_D05E62:  = Me.Fields
  loc_D05E67: FLdPr var_1E4
  loc_D05E6A: from_stack_2 = Me.Item(from_stack_1)
  loc_D05E6F: FLdPr var_1F8
  loc_D05E72:  = Me.Value
  loc_D05E77: FLdRfVar var_208
  loc_D05E7A: ConcatVar var_218
  loc_D05E7E: LitVarStr var_228, " AND NumeLiqu = "
  loc_D05E83: ConcatVar var_238
  loc_D05E87: FLdRfVar var_260
  loc_D05E8A: FLdRfVar var_250
  loc_D05E8D: LitVarStr var_24C, "NumeLiqu"
  loc_D05E92: PopAdLdVar
  loc_D05E93: FLdRfVar var_23C
  loc_D05E96: FLdPr Me
  loc_D05E99: MemLdPr global_64
  loc_D05E9C:  = Me.Fields
  loc_D05EA1: FLdPr var_23C
  loc_D05EA4: from_stack_2 = Me.Item(from_stack_1)
  loc_D05EA9: FLdPr var_250
  loc_D05EAC:  = Me.Value
  loc_D05EB1: FLdRfVar var_260
  loc_D05EB4: ConcatVar var_270
  loc_D05EB8: LitVarStr var_280, " AND licedeta.CodiDifu = "
  loc_D05EBD: ConcatVar var_290
  loc_D05EC1: FLdRfVar var_2B8
  loc_D05EC4: FLdRfVar var_2A8
  loc_D05EC7: LitVarStr var_2A4, "CodiDifu"
  loc_D05ECC: PopAdLdVar
  loc_D05ECD: FLdRfVar var_294
  loc_D05ED0: FLdPr Me
  loc_D05ED3: MemLdPr global_64
  loc_D05ED6:  = Me.Fields
  loc_D05EDB: FLdPr var_294
  loc_D05EDE: from_stack_2 = Me.Item(from_stack_1)
  loc_D05EE3: FLdPr var_2A8
  loc_D05EE6:  = Me.Value
  loc_D05EEB: FLdRfVar var_2B8
  loc_D05EEE: ConcatVar var_2C8
  loc_D05EF2: LitVarStr var_2D8, " AND CodiConc = '"
  loc_D05EF7: ConcatVar var_2E8
  loc_D05EFB: FLdRfVar var_310
  loc_D05EFE: FLdRfVar var_300
  loc_D05F01: LitVarStr var_2FC, "CodiConc"
  loc_D05F06: PopAdLdVar
  loc_D05F07: FLdRfVar var_2EC
  loc_D05F0A: FLdPr Me
  loc_D05F0D: MemLdPr global_64
  loc_D05F10:  = Me.Fields
  loc_D05F15: FLdPr var_2EC
  loc_D05F18: from_stack_2 = Me.Item(from_stack_1)
  loc_D05F1D: FLdPr var_300
  loc_D05F20:  = Me.Value
  loc_D05F25: FLdRfVar var_310
  loc_D05F28: ConcatVar var_320
  loc_D05F2C: LitVarStr var_330, "'"
  loc_D05F31: ConcatVar var_340
  loc_D05F35: LitVarStr var_350, " AND TipoVenc = 1"
  loc_D05F3A: ConcatVar var_360
  loc_D05F3E: LitVarStr var_370, " GROUP BY liacedeta.PeriLiqu, licedeta.CodiTili, licedeta.NumeLiqu, licedeta.CodiDifu, licedeta.CodiConc, licedeta.TipoVenc, licedeta.CodiRamo, liceeta.CodiRubr, licedeta.PeriOrde, licedeta.CodiSubr"
  loc_D05F43: ConcatVar var_380
  loc_D05F47: LitVarStr var_390, " ORDER BY servante.FealSeco DESC, servante.CodiSubr ASC"
  loc_D05F4C: ConcatVar var_3A0
  loc_D05F50: CStrVarVal var_130
  loc_D05F54: Call EjecutarRsCls3(from_stack_1v)
  loc_D05F59: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_D05F68: FFreeAd var_15C = "": var_170 = "": var_1E4 = "": var_1F8 = "": var_23C = "": var_250 = "": var_294 = "": var_2A8 = "": var_2EC = ""
  loc_D05F7F: FFreeVar var_1A0 = "": var_180 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_208 = "": var_218 = "": var_238 = "": var_260 = "": var_270 = "": var_290 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_310 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = ""
  loc_D05FAA: FLdRfVar var_154
  loc_D05FAD: FLdPr Me
  loc_D05FB0: MemLdPr global_68
  loc_D05FB3:  = Me.RecordCount
  loc_D05FB8: ILdRf var_154
  loc_D05FBB: LitI4 0
  loc_D05FC0: GtI4
  loc_D05FC1: BranchF loc_D066A8
  loc_D05FC4: FLdPr Me
  loc_D05FC7: MemLdPr global_68
  loc_D05FCA: Me.MoveFirst
  loc_D05FCF: LitI2_Byte 0
  loc_D05FD1: FStI2 var_116
  loc_D05FD4: FLdRfVar var_156
  loc_D05FD7: FLdPr Me
  loc_D05FDA: MemLdPr global_68
  loc_D05FDD:  = Me.EOF
  loc_D05FE2: FLdI2 var_156
  loc_D05FE5: NotI4
  loc_D05FE6: BranchF loc_D066A8
  loc_D05FE9: FLdI2 var_116
  loc_D05FEC: LitI2_Byte 1
  loc_D05FEE: AddI2
  loc_D05FEF: FStI2 var_116
  loc_D05FF2: FLdI2 var_116
  loc_D05FF5: LitI2_Byte 1
  loc_D05FF7: EqI2
  loc_D05FF8: BranchF loc_D0600A
  loc_D05FFB: LitDate 651.7
  loc_D06004: FStFPR8 var_E8
  loc_D06007: Branch loc_D06010
  loc_D0600A: LitI2_Byte 0
  loc_D0600C: CR8I2
  loc_D0600D: FStFPR8 var_E8
  loc_D06010: LitI2_Byte 1
  loc_D06012: FLdRfVar var_118
  loc_D06015: LitI2_Byte 6
  loc_D06017: ForI2 var_3A4
  loc_D0601D: LitI2_Byte 0
  loc_D0601F: CR8I2
  loc_D06020: FStFPR8 var_C8
  loc_D06023: LitI2_Byte 0
  loc_D06025: CR8I2
  loc_D06026: FStFPR8 var_D0
  loc_D06029: LitI2_Byte 0
  loc_D0602B: CR8I2
  loc_D0602C: FStFPR8 var_D8
  loc_D0602F: LitI2_Byte 0
  loc_D06031: CR8I2
  loc_D06032: FStFPR8 var_E0
  loc_D06035: FLdI2 var_118
  loc_D06038: LitI2_Byte 2
  loc_D0603A: LeI2
  loc_D0603B: BranchF loc_D0604D
  loc_D0603E: LitI2_Byte 0
  loc_D06040: CR8I2
  loc_D06041: FStFPR8 var_D0
  loc_D06044: LitI2_Byte 0
  loc_D06046: CR8I2
  loc_D06047: FStFPR8 var_D8
  loc_D0604A: Branch loc_D060C5
  loc_D0604D: FLdRfVar var_180
  loc_D06050: FLdRfVar var_170
  loc_D06053: LitVarStr var_16C, "DecaLade"
  loc_D06058: PopAdLdVar
  loc_D06059: FLdRfVar var_15C
  loc_D0605C: FLdPr Me
  loc_D0605F: MemLdPr global_68
  loc_D06062:  = Me.Fields
  loc_D06067: FLdPr var_15C
  loc_D0606A: from_stack_2 = Me.Item(from_stack_1)
  loc_D0606F: FLdPr var_170
  loc_D06072:  = Me.Value
  loc_D06077: FLdRfVar var_180
  loc_D0607A: FnCDblVar
  loc_D0607C: FStFPR8 var_D0
  loc_D0607F: FFreeAd var_15C = ""
  loc_D06086: FFree1Var var_180 = ""
  loc_D06089: FLdRfVar var_180
  loc_D0608C: FLdRfVar var_170
  loc_D0608F: LitVarStr var_16C, "ExceLade"
  loc_D06094: PopAdLdVar
  loc_D06095: FLdRfVar var_15C
  loc_D06098: FLdPr Me
  loc_D0609B: MemLdPr global_68
  loc_D0609E:  = Me.Fields
  loc_D060A3: FLdPr var_15C
  loc_D060A6: from_stack_2 = Me.Item(from_stack_1)
  loc_D060AB: FLdPr var_170
  loc_D060AE:  = Me.Value
  loc_D060B3: FLdRfVar var_180
  loc_D060B6: FnCDblVar
  loc_D060B8: FStFPR8 var_D8
  loc_D060BB: FFreeAd var_15C = ""
  loc_D060C2: FFree1Var var_180 = ""
  loc_D060C5: FLdRfVar var_180
  loc_D060C8: FLdRfVar var_170
  loc_D060CB: LitVarStr var_16C, "ImpoLade"
  loc_D060D0: PopAdLdVar
  loc_D060D1: FLdRfVar var_15C
  loc_D060D4: FLdPr Me
  loc_D060D7: MemLdPr global_68
  loc_D060DA:  = Me.Fields
  loc_D060DF: FLdPr var_15C
  loc_D060E2: from_stack_2 = Me.Item(from_stack_1)
  loc_D060E7: FLdPr var_170
  loc_D060EA:  = Me.Value
  loc_D060EF: FLdRfVar var_180
  loc_D060F2: FnCDblVar
  loc_D060F4: FStFPR8 var_C8
  loc_D060F7: FFreeAd var_15C = ""
  loc_D060FE: FFree1Var var_180 = ""
  loc_D06101: FLdRfVar var_180
  loc_D06104: FLdRfVar var_170
  loc_D06107: LitVarStr var_16C, "CodiSubr"
  loc_D0610C: PopAdLdVar
  loc_D0610D: FLdRfVar var_15C
  loc_D06110: FLdPr Me
  loc_D06113: MemLdPr global_68
  loc_D06116:  = Me.Fields
  loc_D0611B: FLdPr var_15C
  loc_D0611E: from_stack_2 = Me.Item(from_stack_1)
  loc_D06123: FLdPr var_170
  loc_D06126:  = Me.Value
  loc_D0612B: FLdRfVar var_180
  loc_D0612E: FnCLngVar
  loc_D06130: LitI4 &H3E7
  loc_D06135: NeI4
  loc_D06136: FFreeAd var_15C = ""
  loc_D0613D: FFree1Var var_180 = ""
  loc_D06140: BranchF loc_D061F3
  loc_D06143: FLdRfVar var_180
  loc_D06146: FLdRfVar var_170
  loc_D06149: LitVarStr var_16C, "ImpoLade"
  loc_D0614E: PopAdLdVar
  loc_D0614F: FLdRfVar var_15C
  loc_D06152: FLdPr Me
  loc_D06155: MemLdPr global_68
  loc_D06158:  = Me.Fields
  loc_D0615D: FLdPr var_15C
  loc_D06160: from_stack_2 = Me.Item(from_stack_1)
  loc_D06165: FLdPr var_170
  loc_D06168:  = Me.Value
  loc_D0616D: FLdRfVar var_1A0
  loc_D06170: FLdRfVar var_1F8
  loc_D06173: LitVarStr var_190, "ExceLade"
  loc_D06178: PopAdLdVar
  loc_D06179: FLdRfVar var_1E4
  loc_D0617C: FLdPr Me
  loc_D0617F: MemLdPr global_68
  loc_D06182:  = Me.Fields
  loc_D06187: FLdPr var_1E4
  loc_D0618A: from_stack_2 = Me.Item(from_stack_1)
  loc_D0618F: FLdPr var_1F8
  loc_D06192:  = Me.Value
  loc_D06197: LitI4 2
  loc_D0619C: FLdFPR8 var_D0
  loc_D0619F: FLdRfVar var_180
  loc_D061A2: FnCDblVar
  loc_D061A4: FLdRfVar var_1A0
  loc_D061A7: FnCDblVar
  loc_D061A9: SubR4
  loc_D061AA: FLdFPR8 var_E8
  loc_D061AD: SubR4
  loc_D061AE: FLdFPR8 arg_B8
  loc_D061B1: MulR8
  loc_D061B2: LitI2_Byte &H64
  loc_D061B4: CR8I2
  loc_D061B5: DivR8
  loc_D061B6: AddR8
  loc_D061B7: CVarR8
  loc_D061BB: FLdRfVar var_1C0
  loc_D061BE: ImpAdCallFPR4  = Round(, )
  loc_D061C3: FLdRfVar var_1C0
  loc_D061C6: CR4Var
  loc_D061C7: FStFPR8 var_D0
  loc_D061CA: FFreeAd var_15C = "": var_170 = "": var_1E4 = ""
  loc_D061D5: FFreeVar var_180 = "": var_1A0 = "": var_1B0 = ""
  loc_D061E0: FLdI2 var_118
  loc_D061E3: LitI2_Byte 1
  loc_D061E5: GtI2
  loc_D061E6: BranchF loc_D061F3
  loc_D061E9: FLdFPR8 var_D0
  loc_D061EC: FLdFPR8 var_E8
  loc_D061EF: AddR8
  loc_D061F0: FStFPR8 var_D0
  loc_D061F3: FLdRfVar var_180
  loc_D061F6: FLdRfVar var_170
  loc_D061F9: LitVarStr var_16C, "CodiSubr"
  loc_D061FE: PopAdLdVar
  loc_D061FF: FLdRfVar var_15C
  loc_D06202: FLdPr Me
  loc_D06205: MemLdPr global_68
  loc_D06208:  = Me.Fields
  loc_D0620D: FLdPr var_15C
  loc_D06210: from_stack_2 = Me.Item(from_stack_1)
  loc_D06215: FLdPr var_170
  loc_D06218:  = Me.Value
  loc_D0621D: FLdRfVar var_180
  loc_D06220: FnCLngVar
  loc_D06222: LitI4 &H3E7
  loc_D06227: EqI4
  loc_D06228: FFreeAd var_15C = ""
  loc_D0622F: FFree1Var var_180 = ""
  loc_D06232: BranchF loc_D0627E
  loc_D06235: FLdI2 var_118
  loc_D06238: LitI2_Byte 1
  loc_D0623A: GtI2
  loc_D0623B: BranchF loc_D0627E
  loc_D0623E: FLdRfVar var_180
  loc_D06241: FLdRfVar var_170
  loc_D06244: LitVarStr var_16C, "ImpoLade"
  loc_D06249: PopAdLdVar
  loc_D0624A: FLdRfVar var_15C
  loc_D0624D: FLdPr Me
  loc_D06250: MemLdPr global_68
  loc_D06253:  = Me.Fields
  loc_D06258: FLdPr var_15C
  loc_D0625B: from_stack_2 = Me.Item(from_stack_1)
  loc_D06260: FLdPr var_170
  loc_D06263:  = Me.Value
  loc_D06268: FLdFPR8 var_D0
  loc_D0626B: FLdRfVar var_180
  loc_D0626E: FnCDblVar
  loc_D06270: AddR8
  loc_D06271: FStFPR8 var_D0
  loc_D06274: FFreeAd var_15C = ""
  loc_D0627B: FFree1Var var_180 = ""
  loc_D0627E: FLdFPR8 var_C8
  loc_D06281: FLdFPR8 var_D0
  loc_D06284: SubR4
  loc_D06285: FLdFPR8 var_D8
  loc_D06288: SubR4
  loc_D06289: FStFPR8 var_E0
  loc_D0628C: FLdFPR8 var_F8
  loc_D0628F: FLdFPR8 var_C8
  loc_D06292: AddR8
  loc_D06293: FStFPR8 var_F8
  loc_D06296: FLdFPR8 var_100
  loc_D06299: FLdFPR8 var_D0
  loc_D0629C: AddR8
  loc_D0629D: FStFPR8 var_100
  loc_D062A0: FLdFPR8 var_108
  loc_D062A3: FLdFPR8 var_D8
  loc_D062A6: AddR8
  loc_D062A7: FStFPR8 var_108
  loc_D062AA: LitI2_Byte 0
  loc_D062AC: CR8I2
  loc_D062AD: FStFPR8 var_110
  loc_D062B0: ILdRf var_114
  loc_D062B3: LitStr " INSERT INTO licedeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiDifu,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLade,ImpoLade,DecaLade,ExceLade,TotaLade) "
  loc_D062B6: ConcatStr
  loc_D062B7: FStStrNoPop var_11C
  loc_D062BA: LitStr " VALUES ("
  loc_D062BD: ConcatStr
  loc_D062BE: CVarStr var_1A0
  loc_D062C1: FLdRfVar var_180
  loc_D062C4: FLdRfVar var_170
  loc_D062C7: LitVarStr var_16C, "PeriLiqu"
  loc_D062CC: PopAdLdVar
  loc_D062CD: FLdRfVar var_15C
  loc_D062D0: FLdPr Me
  loc_D062D3: MemLdPr global_68
  loc_D062D6:  = Me.Fields
  loc_D062DB: FLdPr var_15C
  loc_D062DE: from_stack_2 = Me.Item(from_stack_1)
  loc_D062E3: FLdPr var_170
  loc_D062E6:  = Me.Value
  loc_D062EB: FLdRfVar var_180
  loc_D062EE: ConcatVar var_1B0
  loc_D062F2: LitVarStr var_190, ","
  loc_D062F7: ConcatVar var_1C0
  loc_D062FB: FLdI2 var_118
  loc_D062FE: CVarI2 var_1D0
  loc_D06301: ConcatVar var_1E0
  loc_D06305: LitVarStr var_1F4, ","
  loc_D0630A: ConcatVar var_208
  loc_D0630E: FLdRfVar var_218
  loc_D06311: FLdRfVar var_1F8
  loc_D06314: LitVarStr var_228, "CodiTili"
  loc_D06319: PopAdLdVar
  loc_D0631A: FLdRfVar var_1E4
  loc_D0631D: FLdPr Me
  loc_D06320: MemLdPr global_68
  loc_D06323:  = Me.Fields
  loc_D06328: FLdPr var_1E4
  loc_D0632B: from_stack_2 = Me.Item(from_stack_1)
  loc_D06330: FLdPr var_1F8
  loc_D06333:  = Me.Value
  loc_D06338: FLdRfVar var_218
  loc_D0633B: ConcatVar var_238
  loc_D0633F: LitVarStr var_24C, ","
  loc_D06344: ConcatVar var_260
  loc_D06348: FLdRfVar var_270
  loc_D0634B: FLdRfVar var_250
  loc_D0634E: LitVarStr var_280, "NumeLiqu"
  loc_D06353: PopAdLdVar
  loc_D06354: FLdRfVar var_23C
  loc_D06357: FLdPr Me
  loc_D0635A: MemLdPr global_68
  loc_D0635D:  = Me.Fields
  loc_D06362: FLdPr var_23C
  loc_D06365: from_stack_2 = Me.Item(from_stack_1)
  loc_D0636A: FLdPr var_250
  loc_D0636D:  = Me.Value
  loc_D06372: FLdRfVar var_270
  loc_D06375: ConcatVar var_290
  loc_D06379: LitVarStr var_2A4, ","
  loc_D0637E: ConcatVar var_2B8
  loc_D06382: FLdRfVar var_2C8
  loc_D06385: FLdRfVar var_2A8
  loc_D06388: LitVarStr var_2D8, "CodiDifu"
  loc_D0638D: PopAdLdVar
  loc_D0638E: FLdRfVar var_294
  loc_D06391: FLdPr Me
  loc_D06394: MemLdPr global_68
  loc_D06397:  = Me.Fields
  loc_D0639C: FLdPr var_294
  loc_D0639F: from_stack_2 = Me.Item(from_stack_1)
  loc_D063A4: FLdPr var_2A8
  loc_D063A7:  = Me.Value
  loc_D063AC: FLdRfVar var_2C8
  loc_D063AF: ConcatVar var_2E8
  loc_D063B3: LitVarStr var_2FC, ",'"
  loc_D063B8: ConcatVar var_310
  loc_D063BC: FLdRfVar var_320
  loc_D063BF: FLdRfVar var_300
  loc_D063C2: LitVarStr var_330, "CodiConc"
  loc_D063C7: PopAdLdVar
  loc_D063C8: FLdRfVar var_2EC
  loc_D063CB: FLdPr Me
  loc_D063CE: MemLdPr global_68
  loc_D063D1:  = Me.Fields
  loc_D063D6: FLdPr var_2EC
  loc_D063D9: from_stack_2 = Me.Item(from_stack_1)
  loc_D063DE: FLdPr var_300
  loc_D063E1:  = Me.Value
  loc_D063E6: FLdRfVar var_320
  loc_D063E9: ConcatVar var_340
  loc_D063ED: LitVarStr var_350, "',"
  loc_D063F2: ConcatVar var_360
  loc_D063F6: FLdUI1
  loc_D063FA: CVarUI1
  loc_D063FE: ConcatVar var_380
  loc_D06402: LitVarStr var_390, ","
  loc_D06407: ConcatVar var_3A0
  loc_D0640B: FLdRfVar var_3CC
  loc_D0640E: FLdRfVar var_3BC
  loc_D06411: LitVarStr var_3B8, "CodiRamo"
  loc_D06416: PopAdLdVar
  loc_D06417: FLdRfVar var_3A8
  loc_D0641A: FLdPr Me
  loc_D0641D: MemLdPr global_68
  loc_D06420:  = Me.Fields
  loc_D06425: FLdPr var_3A8
  loc_D06428: from_stack_2 = Me.Item(from_stack_1)
  loc_D0642D: FLdPr var_3BC
  loc_D06430:  = Me.Value
  loc_D06435: FLdRfVar var_3CC
  loc_D06438: ConcatVar var_3DC
  loc_D0643C: LitVarStr var_3EC, ",'"
  loc_D06441: ConcatVar var_3FC
  loc_D06445: FLdRfVar var_424
  loc_D06448: FLdRfVar var_414
  loc_D0644B: LitVarStr var_410, "CodiRubr"
  loc_D06450: PopAdLdVar
  loc_D06451: FLdRfVar var_400
  loc_D06454: FLdPr Me
  loc_D06457: MemLdPr global_68
  loc_D0645A:  = Me.Fields
  loc_D0645F: FLdPr var_400
  loc_D06462: from_stack_2 = Me.Item(from_stack_1)
  loc_D06467: FLdPr var_414
  loc_D0646A:  = Me.Value
  loc_D0646F: FLdRfVar var_424
  loc_D06472: ConcatVar var_434
  loc_D06476: LitVarStr var_444, "',"
  loc_D0647B: ConcatVar var_454
  loc_D0647F: FLdRfVar var_47C
  loc_D06482: FLdRfVar var_46C
  loc_D06485: LitVarStr var_468, "PeriOrde"
  loc_D0648A: PopAdLdVar
  loc_D0648B: FLdRfVar var_458
  loc_D0648E: FLdPr Me
  loc_D06491: MemLdPr global_68
  loc_D06494:  = Me.Fields
  loc_D06499: FLdPr var_458
  loc_D0649C: from_stack_2 = Me.Item(from_stack_1)
  loc_D064A1: FLdPr var_46C
  loc_D064A4:  = Me.Value
  loc_D064A9: FLdRfVar var_47C
  loc_D064AC: ConcatVar var_48C
  loc_D064B0: LitVarStr var_49C, ","
  loc_D064B5: ConcatVar var_4AC
  loc_D064B9: FLdRfVar var_4D4
  loc_D064BC: FLdRfVar var_4C4
  loc_D064BF: LitVarStr var_4C0, "CodiSubr"
  loc_D064C4: PopAdLdVar
  loc_D064C5: FLdRfVar var_4B0
  loc_D064C8: FLdPr Me
  loc_D064CB: MemLdPr global_68
  loc_D064CE:  = Me.Fields
  loc_D064D3: FLdPr var_4B0
  loc_D064D6: from_stack_2 = Me.Item(from_stack_1)
  loc_D064DB: FLdPr var_4C4
  loc_D064DE:  = Me.Value
  loc_D064E3: FLdRfVar var_4D4
  loc_D064E6: ConcatVar var_4E4
  loc_D064EA: LitVarStr var_4F4, ","
  loc_D064EF: ConcatVar var_504
  loc_D064F3: FLdRfVar var_52C
  loc_D064F6: FLdRfVar var_51C
  loc_D064F9: LitVarStr var_518, "NumeLade"
  loc_D064FE: PopAdLdVar
  loc_D064FF: FLdRfVar var_508
  loc_D06502: FLdPr Me
  loc_D06505: MemLdPr global_68
  loc_D06508:  = Me.Fields
  loc_D0650D: FLdPr var_508
  loc_D06510: from_stack_2 = Me.Item(from_stack_1)
  loc_D06515: FLdPr var_51C
  loc_D06518:  = Me.Value
  loc_D0651D: FLdRfVar var_52C
  loc_D06520: ConcatVar var_53C
  loc_D06524: LitVarStr var_54C, ","
  loc_D06529: ConcatVar var_55C
  loc_D0652D: LitI4 0
  loc_D06532: LitI4 -1
  loc_D06537: LitI4 1
  loc_D0653C: LitStr "."
  loc_D0653F: LitStr ","
  loc_D06542: FLdFPR8 var_C8
  loc_D06545: CStrR8
  loc_D06547: FStStrNoPop var_120
  loc_D0654A: ImpAdCallI2 Replace(, , , , , )
  loc_D0654F: CVarStr var_56C
  loc_D06552: ConcatVar var_57C
  loc_D06556: LitVarStr var_58C, ","
  loc_D0655B: ConcatVar var_59C
  loc_D0655F: LitI4 0
  loc_D06564: LitI4 -1
  loc_D06569: LitI4 1
  loc_D0656E: LitStr "."
  loc_D06571: LitStr ","
  loc_D06574: FLdFPR8 var_D0
  loc_D06577: CStrR8
  loc_D06579: FStStrNoPop var_124
  loc_D0657C: ImpAdCallI2 Replace(, , , , , )
  loc_D06581: CVarStr var_5AC
  loc_D06584: ConcatVar var_5BC
  loc_D06588: LitVarStr var_5CC, ","
  loc_D0658D: ConcatVar var_5DC
  loc_D06591: LitI4 0
  loc_D06596: LitI4 -1
  loc_D0659B: LitI4 1
  loc_D065A0: LitStr "."
  loc_D065A3: LitStr ","
  loc_D065A6: FLdFPR8 var_D8
  loc_D065A9: CStrR8
  loc_D065AB: FStStrNoPop var_128
  loc_D065AE: ImpAdCallI2 Replace(, , , , , )
  loc_D065B3: CVarStr var_5EC
  loc_D065B6: ConcatVar var_5FC
  loc_D065BA: LitVarStr var_60C, ","
  loc_D065BF: ConcatVar var_61C
  loc_D065C3: LitI4 0
  loc_D065C8: LitI4 -1
  loc_D065CD: LitI4 1
  loc_D065D2: LitStr "."
  loc_D065D5: LitStr ","
  loc_D065D8: FLdFPR8 var_E0
  loc_D065DB: CStrR8
  loc_D065DD: FStStrNoPop var_12C
  loc_D065E0: ImpAdCallI2 Replace(, , , , , )
  loc_D065E5: CVarStr var_62C
  loc_D065E8: ConcatVar var_63C
  loc_D065EC: LitVarStr var_64C, ");"
  loc_D065F1: ConcatVar var_65C
  loc_D065F5: CStrVarTmp
  loc_D065F6: FStStr var_114
  loc_D065F9: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_D06606: FFreeAd var_15C = "": var_170 = "": var_1E4 = "": var_1F8 = "": var_23C = "": var_250 = "": var_294 = "": var_2A8 = "": var_2EC = "": var_300 = "": var_3A8 = "": var_3BC = "": var_400 = "": var_414 = "": var_458 = "": var_46C = "": var_4B0 = "": var_4C4 = "": var_508 = ""
  loc_D06631: FFreeVar var_4E4 = "": var_504 = "": var_52C = "": var_53C = "": var_55C = "": var_56C = "": var_57C = "": var_59C = "": var_5AC = "": var_5BC = "": var_5DC = "": var_5EC = "": var_5FC = "": var_61C = "": var_62C = "": var_63C = "": var_65C = "": var_1A0 = "": var_180 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_208 = "": var_218 = "": var_238 = "": var_260 = "": var_270 = "": var_290 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_310 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3CC = "": var_3DC = "": var_3FC = "": var_424 = "": var_434 = "": var_454 = "": var_47C = "": var_48C = "": var_4AC = ""
  loc_D06692: FLdRfVar var_118
  loc_D06695: NextI2 var_3A4, loc_D0601D
  loc_D0669A: FLdPr Me
  loc_D0669D: MemLdPr global_68
  loc_D066A0: Me.MoveNext
  loc_D066A5: Branch loc_D05FD4
  loc_D066A8: FLdFPR8 var_F8
  loc_D066AB: FLdFPR8 var_100
  loc_D066AE: SubR4
  loc_D066AF: FLdFPR8 var_108
  loc_D066B2: SubR4
  loc_D066B3: FLdFPR8 var_110
  loc_D066B6: SubR4
  loc_D066B7: FStFPR8 arg_60
  loc_D066BA: ILdRf var_114
  loc_D066BD: LitStr " INSERT INTO liquceme (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiDifu,CodiConc,TipoVenc,ActuLice,TipoLice,FealLice,FeveLice,DeudLice,ImpoLice,CrafLice,ExenLice,DescLice,GastLice,TotaLice,CucuPers,CodiRuta,CodiCall,NucaLice,CallLice,CodiBarr,ManzLice,CasaLice,UbicLice,CodiLoca,LocaLice,CopoLice) "
  loc_D066C0: ConcatStr
  loc_D066C1: FStStrNoPop var_11C
  loc_D066C4: LitStr " VALUES ("
  loc_D066C7: ConcatStr
  loc_D066C8: FStStrNoPop var_120
  loc_D066CB: FLdI2 PeriLiqu
  loc_D066CE: CStrUI1
  loc_D066D0: FStStrNoPop var_124
  loc_D066D3: ConcatStr
  loc_D066D4: FStStrNoPop var_128
  loc_D066D7: LitStr ","
  loc_D066DA: ConcatStr
  loc_D066DB: FStStrNoPop var_12C
  loc_D066DE: FLdUI1
  loc_D066E2: CStrI2
  loc_D066E4: FStStrNoPop var_130
  loc_D066E7: ConcatStr
  loc_D066E8: FStStrNoPop var_134
  loc_D066EB: LitStr ","
  loc_D066EE: ConcatStr
  loc_D066EF: FStStrNoPop var_138
  loc_D066F2: FLdUI1
  loc_D066F6: CStrI2
  loc_D066F8: FStStrNoPop var_13C
  loc_D066FB: ConcatStr
  loc_D066FC: FStStrNoPop var_140
  loc_D066FF: LitStr ","
  loc_D06702: ConcatStr
  loc_D06703: FStStrNoPop var_144
  loc_D06706: FLdI2 NumeLiqu
  loc_D06709: CStrUI1
  loc_D0670B: FStStrNoPop var_148
  loc_D0670E: ConcatStr
  loc_D0670F: FStStrNoPop var_14C
  loc_D06712: LitStr ","
  loc_D06715: ConcatStr
  loc_D06716: FStStrNoPop var_150
  loc_D06719: ILdRf CodiDifu
  loc_D0671C: CStrI4
  loc_D0671E: FStStrNoPop var_660
  loc_D06721: ConcatStr
  loc_D06722: FStStrNoPop var_664
  loc_D06725: LitStr ",'"
  loc_D06728: ConcatStr
  loc_D06729: FStStrNoPop var_668
  loc_D0672C: ILdRf var_88
  loc_D0672F: ConcatStr
  loc_D06730: FStStrNoPop var_66C
  loc_D06733: LitStr "',"
  loc_D06736: ConcatStr
  loc_D06737: FStStrNoPop var_670
  loc_D0673A: FLdUI1
  loc_D0673E: CStrI2
  loc_D06740: FStStrNoPop var_674
  loc_D06743: ConcatStr
  loc_D06744: FStStrNoPop var_678
  loc_D06747: LitStr ",'No','"
  loc_D0674A: ConcatStr
  loc_D0674B: FStStrNoPop var_67C
  loc_D0674E: ILdRf var_8C
  loc_D06751: ConcatStr
  loc_D06752: FStStrNoPop var_680
  loc_D06755: LitStr "','"
  loc_D06758: ConcatStr
  loc_D06759: FStStrNoPop var_684
  loc_D0675C: LitI4 1
  loc_D06761: LitI4 1
  loc_D06766: LitVarStr var_190, "yyyy-mm-dd"
  loc_D0676B: FStVarCopyObj var_180
  loc_D0676E: FLdRfVar var_180
  loc_D06771: FLdRfVar arg_98
  loc_D06774: CVarRef
  loc_D06779: ImpAdCallI2 Format$(, )
  loc_D0677E: FStStrNoPop var_688
  loc_D06781: ConcatStr
  loc_D06782: FStStrNoPop var_68C
  loc_D06785: LitStr "','"
  loc_D06788: ConcatStr
  loc_D06789: FStStrNoPop var_690
  loc_D0678C: LitI4 1
  loc_D06791: LitI4 1
  loc_D06796: LitVarStr var_1F4, "yyyy-mm-dd"
  loc_D0679B: FStVarCopyObj var_1A0
  loc_D0679E: FLdRfVar var_1A0
  loc_D067A1: FLdRfVar var_90
  loc_D067A4: CVarRef
  loc_D067A9: ImpAdCallI2 Format$(, )
  loc_D067AE: FStStrNoPop var_694
  loc_D067B1: ConcatStr
  loc_D067B2: FStStrNoPop var_698
  loc_D067B5: LitStr "',"
  loc_D067B8: ConcatStr
  loc_D067B9: FStStrNoPop var_6A0
  loc_D067BC: LitI4 0
  loc_D067C1: LitI4 -1
  loc_D067C6: LitI4 1
  loc_D067CB: LitStr "."
  loc_D067CE: LitStr ","
  loc_D067D1: FLdFPR8 DeudLice
  loc_D067D4: CStrR8
  loc_D067D6: FStStrNoPop var_69C
  loc_D067D9: ImpAdCallI2 Replace(, , , , , )
  loc_D067DE: FStStrNoPop var_6A4
  loc_D067E1: ConcatStr
  loc_D067E2: FStStrNoPop var_6A8
  loc_D067E5: LitStr ","
  loc_D067E8: ConcatStr
  loc_D067E9: FStStrNoPop var_6B0
  loc_D067EC: LitI4 0
  loc_D067F1: LitI4 -1
  loc_D067F6: LitI4 1
  loc_D067FB: LitStr "."
  loc_D067FE: LitStr ","
  loc_D06801: FLdFPR8 var_F8
  loc_D06804: CStrR8
  loc_D06806: FStStrNoPop var_6AC
  loc_D06809: ImpAdCallI2 Replace(, , , , , )
  loc_D0680E: FStStrNoPop var_6B4
  loc_D06811: ConcatStr
  loc_D06812: FStStrNoPop var_6B8
  loc_D06815: LitStr ","
  loc_D06818: ConcatStr
  loc_D06819: FStStrNoPop var_6C0
  loc_D0681C: LitI4 0
  loc_D06821: LitI4 -1
  loc_D06826: LitI4 1
  loc_D0682B: LitStr "."
  loc_D0682E: LitStr ","
  loc_D06831: FLdFPR8 var_110
  loc_D06834: CStrR8
  loc_D06836: FStStrNoPop var_6BC
  loc_D06839: ImpAdCallI2 Replace(, , , , , )
  loc_D0683E: FStStrNoPop var_6C4
  loc_D06841: ConcatStr
  loc_D06842: FStStrNoPop var_6C8
  loc_D06845: LitStr ","
  loc_D06848: ConcatStr
  loc_D06849: FStStrNoPop var_6D0
  loc_D0684C: LitI4 0
  loc_D06851: LitI4 -1
  loc_D06856: LitI4 1
  loc_D0685B: LitStr "."
  loc_D0685E: LitStr ","
  loc_D06861: FLdFPR8 var_108
  loc_D06864: CStrR8
  loc_D06866: FStStrNoPop var_6CC
  loc_D06869: ImpAdCallI2 Replace(, , , , , )
  loc_D0686E: FStStrNoPop var_6D4
  loc_D06871: ConcatStr
  loc_D06872: FStStrNoPop var_6D8
  loc_D06875: LitStr ","
  loc_D06878: ConcatStr
  loc_D06879: FStStrNoPop var_6E0
  loc_D0687C: LitI4 0
  loc_D06881: LitI4 -1
  loc_D06886: LitI4 1
  loc_D0688B: LitStr "."
  loc_D0688E: LitStr ","
  loc_D06891: FLdFPR8 var_100
  loc_D06894: CStrR8
  loc_D06896: FStStrNoPop var_6DC
  loc_D06899: ImpAdCallI2 Replace(, , , , , )
  loc_D0689E: FStStrNoPop var_6E4
  loc_D068A1: ConcatStr
  loc_D068A2: FStStrNoPop var_6E8
  loc_D068A5: LitStr ","
  loc_D068A8: ConcatStr
  loc_D068A9: FStStrNoPop var_6F0
  loc_D068AC: LitI4 0
  loc_D068B1: LitI4 -1
  loc_D068B6: LitI4 1
  loc_D068BB: LitStr "."
  loc_D068BE: LitStr ","
  loc_D068C1: FLdFPR8 arg_58
  loc_D068C4: CStrR8
  loc_D068C6: FStStrNoPop var_6EC
  loc_D068C9: ImpAdCallI2 Replace(, , , , , )
  loc_D068CE: FStStrNoPop var_6F4
  loc_D068D1: ConcatStr
  loc_D068D2: FStStrNoPop var_6F8
  loc_D068D5: LitStr ","
  loc_D068D8: ConcatStr
  loc_D068D9: FStStrNoPop var_700
  loc_D068DC: LitI4 0
  loc_D068E1: LitI4 -1
  loc_D068E6: LitI4 1
  loc_D068EB: LitStr "."
  loc_D068EE: LitStr ","
  loc_D068F1: FLdFPR8 arg_60
  loc_D068F4: CStrR8
  loc_D068F6: FStStrNoPop var_6FC
  loc_D068F9: ImpAdCallI2 Replace(, , , , , )
  loc_D068FE: FStStrNoPop var_704
  loc_D06901: ConcatStr
  loc_D06902: FStStrNoPop var_708
  loc_D06905: LitStr ",'"
  loc_D06908: ConcatStr
  loc_D06909: FStStrNoPop var_70C
  loc_D0690C: ILdRf var_94
  loc_D0690F: ConcatStr
  loc_D06910: FStStrNoPop var_710
  loc_D06913: LitStr "',"
  loc_D06916: ConcatStr
  loc_D06917: FStStrNoPop var_714
  loc_D0691A: ILdRf arg_6C
  loc_D0691D: CStrI4
  loc_D0691F: FStStrNoPop var_718
  loc_D06922: ConcatStr
  loc_D06923: FStStrNoPop var_71C
  loc_D06926: LitStr ","
  loc_D06929: ConcatStr
  loc_D0692A: FStStrNoPop var_720
  loc_D0692D: ILdRf arg_70
  loc_D06930: CStrI4
  loc_D06932: FStStrNoPop var_724
  loc_D06935: ConcatStr
  loc_D06936: FStStrNoPop var_728
  loc_D06939: LitStr ",'"
  loc_D0693C: ConcatStr
  loc_D0693D: FStStrNoPop var_72C
  loc_D06940: LitI4 0
  loc_D06945: LitI4 -1
  loc_D0694A: LitI4 1
  loc_D0694F: LitStr " "
  loc_D06952: LitStr "'"
  loc_D06955: ILdRf var_98
  loc_D06958: ImpAdCallI2 Replace(, , , , , )
  loc_D0695D: FStStrNoPop var_730
  loc_D06960: ConcatStr
  loc_D06961: FStStrNoPop var_734
  loc_D06964: LitStr "',"
  loc_D06967: ConcatStr
  loc_D06968: FStStrNoPop var_738
  loc_D0696B: FLdI2 arg_78
  loc_D0696E: CStrUI1
  loc_D06970: FStStrNoPop var_73C
  loc_D06973: ConcatStr
  loc_D06974: FStStrNoPop var_740
  loc_D06977: LitStr ",'"
  loc_D0697A: ConcatStr
  loc_D0697B: FStStrNoPop var_744
  loc_D0697E: ILdRf var_A0
  loc_D06981: ConcatStr
  loc_D06982: FStStrNoPop var_748
  loc_D06985: LitStr "','"
  loc_D06988: ConcatStr
  loc_D06989: FStStrNoPop var_74C
  loc_D0698C: ILdRf var_A4
  loc_D0698F: ConcatStr
  loc_D06990: FStStrNoPop var_750
  loc_D06993: LitStr "','"
  loc_D06996: ConcatStr
  loc_D06997: FStStrNoPop var_754
  loc_D0699A: ILdRf var_A8
  loc_D0699D: ConcatStr
  loc_D0699E: FStStrNoPop var_758
  loc_D069A1: LitStr "',"
  loc_D069A4: ConcatStr
  loc_D069A5: FStStrNoPop var_75C
  loc_D069A8: FLdI2 MeC
  loc_D069AB: CStrUI1
  loc_D069AD: FStStrNoPop var_760
  loc_D069B0: ConcatStr
  loc_D069B1: FStStrNoPop var_764
  loc_D069B4: LitStr ",'"
  loc_D069B7: ConcatStr
  loc_D069B8: FStStrNoPop var_768
  loc_D069BB: ILdRf var_AC
  loc_D069BE: ConcatStr
  loc_D069BF: FStStrNoPop var_76C
  loc_D069C2: LitStr "','"
  loc_D069C5: ConcatStr
  loc_D069C6: FStStrNoPop var_770
  loc_D069C9: ILdRf var_B0
  loc_D069CC: ConcatStr
  loc_D069CD: FStStrNoPop var_774
  loc_D069D0: LitStr "');"
  loc_D069D3: ConcatStr
  loc_D069D4: FStStr var_114
  loc_D069D7: FFreeStr var_718 = "": var_71C = "": var_720 = "": var_724 = "": var_728 = "": var_72C = "": var_730 = "": var_734 = "": var_738 = "": var_73C = "": var_740 = "": var_744 = "": var_748 = "": var_74C = "": var_750 = "": var_754 = "": var_758 = "": var_75C = "": var_760 = "": var_764 = "": var_768 = "": var_76C = "": var_770 = "": var_774 = "": var_6A0 = "": var_6A4 = "": var_6A8 = "": var_6AC = "": var_6B0 = "": var_6B4 = "": var_6B8 = "": var_6BC = "": var_6C0 = "": var_6C4 = "": var_6C8 = "": var_6CC = "": var_6D0 = "": var_6D4 = "": var_6D8 = "": var_6DC = "": var_6E0 = "": var_6E4 = "": var_6E8 = "": var_6EC = "": var_6F0 = "": var_6F4 = "": var_6F8 = "": var_6FC = "": var_700 = "": var_704 = "": var_708 = "": var_70C = "": var_710 = "": var_714 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = "": var_678 = "": var_67C = "": var_680 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = "": var_698 = ""
  loc_D06A82: FFreeVar var_180 = ""
  loc_D06A89: Branch loc_D06F7D
  loc_D06A8C: LitI2_Byte 0
  loc_D06A8E: CR8I2
  loc_D06A8F: FStFPR8 var_100
  loc_D06A92: LitI2_Byte 0
  loc_D06A94: CR8I2
  loc_D06A95: FStFPR8 var_108
  loc_D06A98: LitI2_Byte 0
  loc_D06A9A: CR8I2
  loc_D06A9B: FStFPR8 var_110
  loc_D06A9E: FLdRfVar var_180
  loc_D06AA1: FLdRfVar var_170
  loc_D06AA4: LitVarStr var_16C, "CodiConc"
  loc_D06AA9: PopAdLdVar
  loc_D06AAA: FLdRfVar var_15C
  loc_D06AAD: FLdPr Me
  loc_D06AB0: MemLdPr global_64
  loc_D06AB3:  = Me.Fields
  loc_D06AB8: FLdPr var_15C
  loc_D06ABB: from_stack_2 = Me.Item(from_stack_1)
  loc_D06AC0: FLdPr var_170
  loc_D06AC3:  = Me.Value
  loc_D06AC8: FLdRfVar var_180
  loc_D06ACB: LitVarStr var_190, "13030201"
  loc_D06AD0: HardType
  loc_D06AD1: EqVarBool
  loc_D06AD3: FFreeAd var_15C = ""
  loc_D06ADA: FFree1Var var_180 = ""
  loc_D06ADD: BranchF loc_D06B1F
  loc_D06AE0: FLdRfVar var_180
  loc_D06AE3: FLdRfVar var_170
  loc_D06AE6: LitVarStr var_16C, "ImpoLice"
  loc_D06AEB: PopAdLdVar
  loc_D06AEC: FLdRfVar var_15C
  loc_D06AEF: FLdPr Me
  loc_D06AF2: MemLdPr global_64
  loc_D06AF5:  = Me.Fields
  loc_D06AFA: FLdPr var_15C
  loc_D06AFD: from_stack_2 = Me.Item(from_stack_1)
  loc_D06B02: FLdPr var_170
  loc_D06B05:  = Me.Value
  loc_D06B0A: FLdRfVar var_180
  loc_D06B0D: FnCDblVar
  loc_D06B0F: FStFPR8 var_F8
  loc_D06B12: FFreeAd var_15C = ""
  loc_D06B19: FFree1Var var_180 = ""
  loc_D06B1C: Branch loc_D06B5F
  loc_D06B1F: FLdRfVar var_180
  loc_D06B22: FLdRfVar var_170
  loc_D06B25: LitVarStr var_16C, "ImpoLice"
  loc_D06B2A: PopAdLdVar
  loc_D06B2B: FLdRfVar var_15C
  loc_D06B2E: FLdPr Me
  loc_D06B31: MemLdPr global_64
  loc_D06B34:  = Me.Fields
  loc_D06B39: FLdPr var_15C
  loc_D06B3C: from_stack_2 = Me.Item(from_stack_1)
  loc_D06B41: FLdPr var_170
  loc_D06B44:  = Me.Value
  loc_D06B49: FLdRfVar var_180
  loc_D06B4C: FnCDblVar
  loc_D06B4E: LitI2_Byte 6
  loc_D06B50: CR8I2
  loc_D06B51: MulR8
  loc_D06B52: FStFPR8 var_F8
  loc_D06B55: FFreeAd var_15C = ""
  loc_D06B5C: FFree1Var var_180 = ""
  loc_D06B5F: LitI2_Byte 0
  loc_D06B61: CR8I2
  loc_D06B62: FStFPR8 var_108
  loc_D06B65: LitI2_Byte 0
  loc_D06B67: CR8I2
  loc_D06B68: FStFPR8 var_110
  loc_D06B6B: FLdFPR8 var_F8
  loc_D06B6E: FLdFPR8 var_100
  loc_D06B71: SubR4
  loc_D06B72: FLdFPR8 var_110
  loc_D06B75: SubR4
  loc_D06B76: FLdFPR8 var_108
  loc_D06B79: SubR4
  loc_D06B7A: FStFPR8 arg_60
  loc_D06B7D: ILdRf var_114
  loc_D06B80: LitStr " INSERT INTO liqucome (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiDifu,CodiConc,TipoVenc,ActuLice,TipoLice,FealLice,FeveLice,DeudLice,ImpoLice,CrafLice,ExenLice,DescLice,GastLice,TotaLice,CucuPers,CodiRuta,CodiCall,NucaLice,CallLice,CodiBarr,BarrLice,ManzLice,CasaLice,UbicLice,CodiLoca,LocaLice,CopoLice) "
  loc_D06B83: ConcatStr
  loc_D06B84: FStStrNoPop var_11C
  loc_D06B87: LitStr " VALUES ("
  loc_D06B8A: ConcatStr
  loc_D06B8B: FStStrNoPop var_120
  loc_D06B8E: FLdI2 PeriLiqu
  loc_D06B91: CStrUI1
  loc_D06B93: FStStrNoPop var_124
  loc_D06B96: ConcatStr
  loc_D06B97: FStStrNoPop var_128
  loc_D06B9A: LitStr ","
  loc_D06B9D: ConcatStr
  loc_D06B9E: FStStrNoPop var_12C
  loc_D06BA1: FLdUI1
  loc_D06BA5: CStrI2
  loc_D06BA7: FStStrNoPop var_130
  loc_D06BAA: ConcatStr
  loc_D06BAB: FStStrNoPop var_134
  loc_D06BAE: LitStr ","
  loc_D06BB1: ConcatStr
  loc_D06BB2: FStStrNoPop var_138
  loc_D06BB5: FLdUI1
  loc_D06BB9: CStrI2
  loc_D06BBB: FStStrNoPop var_13C
  loc_D06BBE: ConcatStr
  loc_D06BBF: FStStrNoPop var_140
  loc_D06BC2: LitStr ","
  loc_D06BC5: ConcatStr
  loc_D06BC6: FStStrNoPop var_144
  loc_D06BC9: FLdI2 NumeLiqu
  loc_D06BCC: CStrUI1
  loc_D06BCE: FStStrNoPop var_148
  loc_D06BD1: ConcatStr
  loc_D06BD2: FStStrNoPop var_14C
  loc_D06BD5: LitStr ","
  loc_D06BD8: ConcatStr
  loc_D06BD9: FStStrNoPop var_150
  loc_D06BDC: ILdRf CodiDifu
  loc_D06BDF: CStrI4
  loc_D06BE1: FStStrNoPop var_660
  loc_D06BE4: ConcatStr
  loc_D06BE5: FStStrNoPop var_664
  loc_D06BE8: LitStr ",'"
  loc_D06BEB: ConcatStr
  loc_D06BEC: FStStrNoPop var_668
  loc_D06BEF: ILdRf var_88
  loc_D06BF2: ConcatStr
  loc_D06BF3: FStStrNoPop var_66C
  loc_D06BF6: LitStr "',"
  loc_D06BF9: ConcatStr
  loc_D06BFA: FStStrNoPop var_670
  loc_D06BFD: FLdUI1
  loc_D06C01: CStrI2
  loc_D06C03: FStStrNoPop var_674
  loc_D06C06: ConcatStr
  loc_D06C07: FStStrNoPop var_678
  loc_D06C0A: LitStr ",'No','"
  loc_D06C0D: ConcatStr
  loc_D06C0E: FStStrNoPop var_67C
  loc_D06C11: ILdRf var_8C
  loc_D06C14: ConcatStr
  loc_D06C15: FStStrNoPop var_680
  loc_D06C18: LitStr "','"
  loc_D06C1B: ConcatStr
  loc_D06C1C: FStStrNoPop var_684
  loc_D06C1F: LitI4 1
  loc_D06C24: LitI4 1
  loc_D06C29: LitVarStr var_190, "yyyy-mm-dd"
  loc_D06C2E: FStVarCopyObj var_180
  loc_D06C31: FLdRfVar var_180
  loc_D06C34: FLdRfVar arg_98
  loc_D06C37: CVarRef
  loc_D06C3C: ImpAdCallI2 Format$(, )
  loc_D06C41: FStStrNoPop var_688
  loc_D06C44: ConcatStr
  loc_D06C45: FStStrNoPop var_68C
  loc_D06C48: LitStr "','"
  loc_D06C4B: ConcatStr
  loc_D06C4C: FStStrNoPop var_690
  loc_D06C4F: LitI4 1
  loc_D06C54: LitI4 1
  loc_D06C59: LitVarStr var_1F4, "yyyy-mm-dd"
  loc_D06C5E: FStVarCopyObj var_1A0
  loc_D06C61: FLdRfVar var_1A0
  loc_D06C64: FLdRfVar var_90
  loc_D06C67: CVarRef
  loc_D06C6C: ImpAdCallI2 Format$(, )
  loc_D06C71: FStStrNoPop var_694
  loc_D06C74: ConcatStr
  loc_D06C75: FStStrNoPop var_698
  loc_D06C78: LitStr "',"
  loc_D06C7B: ConcatStr
  loc_D06C7C: FStStrNoPop var_6A0
  loc_D06C7F: LitI4 0
  loc_D06C84: LitI4 -1
  loc_D06C89: LitI4 1
  loc_D06C8E: LitStr "."
  loc_D06C91: LitStr ","
  loc_D06C94: FLdFPR8 DeudLice
  loc_D06C97: CStrR8
  loc_D06C99: FStStrNoPop var_69C
  loc_D06C9C: ImpAdCallI2 Replace(, , , , , )
  loc_D06CA1: FStStrNoPop var_6A4
  loc_D06CA4: ConcatStr
  loc_D06CA5: FStStrNoPop var_6A8
  loc_D06CA8: LitStr ","
  loc_D06CAB: ConcatStr
  loc_D06CAC: FStStrNoPop var_6B0
  loc_D06CAF: LitI4 0
  loc_D06CB4: LitI4 -1
  loc_D06CB9: LitI4 1
  loc_D06CBE: LitStr "."
  loc_D06CC1: LitStr ","
  loc_D06CC4: FLdFPR8 var_F8
  loc_D06CC7: CStrR8
  loc_D06CC9: FStStrNoPop var_6AC
  loc_D06CCC: ImpAdCallI2 Replace(, , , , , )
  loc_D06CD1: FStStrNoPop var_6B4
  loc_D06CD4: ConcatStr
  loc_D06CD5: FStStrNoPop var_6B8
  loc_D06CD8: LitStr ","
  loc_D06CDB: ConcatStr
  loc_D06CDC: FStStrNoPop var_6C0
  loc_D06CDF: LitI4 0
  loc_D06CE4: LitI4 -1
  loc_D06CE9: LitI4 1
  loc_D06CEE: LitStr "."
  loc_D06CF1: LitStr ","
  loc_D06CF4: FLdFPR8 var_110
  loc_D06CF7: CStrR8
  loc_D06CF9: FStStrNoPop var_6BC
  loc_D06CFC: ImpAdCallI2 Replace(, , , , , )
  loc_D06D01: FStStrNoPop var_6C4
  loc_D06D04: ConcatStr
  loc_D06D05: FStStrNoPop var_6C8
  loc_D06D08: LitStr ","
  loc_D06D0B: ConcatStr
  loc_D06D0C: FStStrNoPop var_6D0
  loc_D06D0F: LitI4 0
  loc_D06D14: LitI4 -1
  loc_D06D19: LitI4 1
  loc_D06D1E: LitStr "."
  loc_D06D21: LitStr ","
  loc_D06D24: FLdFPR8 var_108
  loc_D06D27: CStrR8
  loc_D06D29: FStStrNoPop var_6CC
  loc_D06D2C: ImpAdCallI2 Replace(, , , , , )
  loc_D06D31: FStStrNoPop var_6D4
  loc_D06D34: ConcatStr
  loc_D06D35: FStStrNoPop var_6D8
  loc_D06D38: LitStr ","
  loc_D06D3B: ConcatStr
  loc_D06D3C: FStStrNoPop var_6E0
  loc_D06D3F: LitI4 0
  loc_D06D44: LitI4 -1
  loc_D06D49: LitI4 1
  loc_D06D4E: LitStr "."
  loc_D06D51: LitStr ","
  loc_D06D54: FLdFPR8 var_100
  loc_D06D57: CStrR8
  loc_D06D59: FStStrNoPop var_6DC
  loc_D06D5C: ImpAdCallI2 Replace(, , , , , )
  loc_D06D61: FStStrNoPop var_6E4
  loc_D06D64: ConcatStr
  loc_D06D65: FStStrNoPop var_6E8
  loc_D06D68: LitStr ","
  loc_D06D6B: ConcatStr
  loc_D06D6C: FStStrNoPop var_6F0
  loc_D06D6F: LitI4 0
  loc_D06D74: LitI4 -1
  loc_D06D79: LitI4 1
  loc_D06D7E: LitStr "."
  loc_D06D81: LitStr ","
  loc_D06D84: FLdFPR8 arg_58
  loc_D06D87: CStrR8
  loc_D06D89: FStStrNoPop var_6EC
  loc_D06D8C: ImpAdCallI2 Replace(, , , , , )
  loc_D06D91: FStStrNoPop var_6F4
  loc_D06D94: ConcatStr
  loc_D06D95: FStStrNoPop var_6F8
  loc_D06D98: LitStr ","
  loc_D06D9B: ConcatStr
  loc_D06D9C: FStStrNoPop var_700
  loc_D06D9F: LitI4 0
  loc_D06DA4: LitI4 -1
  loc_D06DA9: LitI4 1
  loc_D06DAE: LitStr "."
  loc_D06DB1: LitStr ","
  loc_D06DB4: FLdFPR8 arg_60
  loc_D06DB7: CStrR8
  loc_D06DB9: FStStrNoPop var_6FC
  loc_D06DBC: ImpAdCallI2 Replace(, , , , , )
  loc_D06DC1: FStStrNoPop var_704
  loc_D06DC4: ConcatStr
  loc_D06DC5: FStStrNoPop var_708
  loc_D06DC8: LitStr ",'"
  loc_D06DCB: ConcatStr
  loc_D06DCC: FStStrNoPop var_70C
  loc_D06DCF: ILdRf var_94
  loc_D06DD2: ConcatStr
  loc_D06DD3: FStStrNoPop var_710
  loc_D06DD6: LitStr "',"
  loc_D06DD9: ConcatStr
  loc_D06DDA: FStStrNoPop var_714
  loc_D06DDD: ILdRf arg_6C
  loc_D06DE0: CStrI4
  loc_D06DE2: FStStrNoPop var_718
  loc_D06DE5: ConcatStr
  loc_D06DE6: FStStrNoPop var_71C
  loc_D06DE9: LitStr ","
  loc_D06DEC: ConcatStr
  loc_D06DED: FStStrNoPop var_720
  loc_D06DF0: ILdRf arg_70
  loc_D06DF3: CStrI4
  loc_D06DF5: FStStrNoPop var_724
  loc_D06DF8: ConcatStr
  loc_D06DF9: FStStrNoPop var_728
  loc_D06DFC: LitStr ",'"
  loc_D06DFF: ConcatStr
  loc_D06E00: FStStrNoPop var_72C
  loc_D06E03: LitI4 0
  loc_D06E08: LitI4 -1
  loc_D06E0D: LitI4 1
  loc_D06E12: LitStr " "
  loc_D06E15: LitStr "'"
  loc_D06E18: ILdRf var_98
  loc_D06E1B: ImpAdCallI2 Replace(, , , , , )
  loc_D06E20: FStStrNoPop var_730
  loc_D06E23: ConcatStr
  loc_D06E24: FStStrNoPop var_734
  loc_D06E27: LitStr "',"
  loc_D06E2A: ConcatStr
  loc_D06E2B: FStStrNoPop var_738
  loc_D06E2E: FLdI2 arg_78
  loc_D06E31: CStrUI1
  loc_D06E33: FStStrNoPop var_73C
  loc_D06E36: ConcatStr
  loc_D06E37: FStStrNoPop var_740
  loc_D06E3A: LitStr ",'"
  loc_D06E3D: ConcatStr
  loc_D06E3E: FStStrNoPop var_744
  loc_D06E41: LitI4 0
  loc_D06E46: LitI4 -1
  loc_D06E4B: LitI4 1
  loc_D06E50: LitStr " "
  loc_D06E53: LitStr "'"
  loc_D06E56: ILdRf var_9C
  loc_D06E59: ImpAdCallI2 Replace(, , , , , )
  loc_D06E5E: FStStrNoPop var_748
  loc_D06E61: ConcatStr
  loc_D06E62: FStStrNoPop var_74C
  loc_D06E65: LitStr "','"
  loc_D06E68: ConcatStr
  loc_D06E69: FStStrNoPop var_750
  loc_D06E6C: ILdRf var_A0
  loc_D06E6F: ConcatStr
  loc_D06E70: FStStrNoPop var_754
  loc_D06E73: LitStr "','"
  loc_D06E76: ConcatStr
  loc_D06E77: FStStrNoPop var_758
  loc_D06E7A: ILdRf var_A4
  loc_D06E7D: ConcatStr
  loc_D06E7E: FStStrNoPop var_75C
  loc_D06E81: LitStr "','"
  loc_D06E84: ConcatStr
  loc_D06E85: FStStrNoPop var_760
  loc_D06E88: ILdRf var_A8
  loc_D06E8B: ConcatStr
  loc_D06E8C: FStStrNoPop var_764
  loc_D06E8F: LitStr "',"
  loc_D06E92: ConcatStr
  loc_D06E93: FStStrNoPop var_768
  loc_D06E96: FLdI2 MeC
  loc_D06E99: CStrUI1
  loc_D06E9B: FStStrNoPop var_76C
  loc_D06E9E: ConcatStr
  loc_D06E9F: FStStrNoPop var_770
  loc_D06EA2: LitStr ",'"
  loc_D06EA5: ConcatStr
  loc_D06EA6: FStStrNoPop var_774
  loc_D06EA9: ILdRf var_AC
  loc_D06EAC: ConcatStr
  loc_D06EAD: FStStrNoPop var_778
  loc_D06EB0: LitStr "','"
  loc_D06EB3: ConcatStr
  loc_D06EB4: FStStrNoPop var_77C
  loc_D06EB7: ILdRf var_B0
  loc_D06EBA: ConcatStr
  loc_D06EBB: FStStrNoPop var_780
  loc_D06EBE: LitStr "');"
  loc_D06EC1: ConcatStr
  loc_D06EC2: FStStr var_114
  loc_D06EC5: FFreeStr var_718 = "": var_71C = "": var_720 = "": var_724 = "": var_728 = "": var_72C = "": var_730 = "": var_734 = "": var_738 = "": var_73C = "": var_740 = "": var_744 = "": var_748 = "": var_74C = "": var_750 = "": var_754 = "": var_758 = "": var_75C = "": var_760 = "": var_764 = "": var_768 = "": var_76C = "": var_770 = "": var_774 = "": var_778 = "": var_77C = "": var_780 = "": var_6A0 = "": var_6A4 = "": var_6A8 = "": var_6AC = "": var_6B0 = "": var_6B4 = "": var_6B8 = "": var_6BC = "": var_6C0 = "": var_6C4 = "": var_6C8 = "": var_6CC = "": var_6D0 = "": var_6D4 = "": var_6D8 = "": var_6DC = "": var_6E0 = "": var_6E4 = "": var_6E8 = "": var_6EC = "": var_6F0 = "": var_6F4 = "": var_6F8 = "": var_6FC = "": var_700 = "": var_704 = "": var_708 = "": var_70C = "": var_710 = "": var_714 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = "": var_678 = "": var_67C = "": var_680 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = "": var_698 = ""
  loc_D06F76: FFreeVar var_180 = ""
  loc_D06F7D: FLdPr Me
  loc_D06F80: MemLdPr global_64
  loc_D06F83: Me.MoveNext
  loc_D06F88: Branch loc_D05D80
  loc_D06F8B: ILdRf var_114
  loc_D06F8E: Call EjecutarRsCls(from_stack_1v)
  loc_D06F93: Branch loc_D08E91
  loc_D06F96: LitI4 0
  loc_D06F9B: LitI4 -1
  loc_D06FA0: LitI4 1
  loc_D06FA5: LitStr " "
  loc_D06FA8: LitStr "'"
  loc_D06FAB: ILdRf var_98
  loc_D06FAE: ImpAdCallI2 Replace(, , , , , )
  loc_D06FB3: FStStr var_728
  loc_D06FB6: LitI4 0
  loc_D06FBB: LitI4 -1
  loc_D06FC0: LitI4 1
  loc_D06FC5: LitStr " "
  loc_D06FC8: LitStr "'"
  loc_D06FCB: ILdRf var_9C
  loc_D06FCE: ImpAdCallI2 Replace(, , , , , )
  loc_D06FD3: FStStr var_72C
  loc_D06FD6: LitStr "START TRANSACTION;  INSERT INTO liquceme (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiDifu,CodiConc,TipoVenc,ActuLice,TipoLice,FealLice,FeveLice,DeudLice,ImpoLice,CrafLice,ExenLice,DescLice,GastLice,TotaLice,CucuPers,CodiCall,NucaLice,CallLice,CodiBarr,BarrLice,ManzLice,CasaLice,UbicLice,CodiLoca,LocaLice,CopoLice,EmitLice) "
  loc_D06FD9: LitStr " VALUES ("
  loc_D06FDC: ConcatStr
  loc_D06FDD: FStStrNoPop var_11C
  loc_D06FE0: FLdI2 PeriLiqu
  loc_D06FE3: CStrUI1
  loc_D06FE5: FStStrNoPop var_120
  loc_D06FE8: ConcatStr
  loc_D06FE9: FStStrNoPop var_124
  loc_D06FEC: LitStr ","
  loc_D06FEF: ConcatStr
  loc_D06FF0: FStStrNoPop var_128
  loc_D06FF3: FLdUI1
  loc_D06FF7: CStrI2
  loc_D06FF9: FStStrNoPop var_12C
  loc_D06FFC: ConcatStr
  loc_D06FFD: FStStrNoPop var_130
  loc_D07000: LitStr ","
  loc_D07003: ConcatStr
  loc_D07004: FStStrNoPop var_134
  loc_D07007: FLdUI1
  loc_D0700B: CStrI2
  loc_D0700D: FStStrNoPop var_138
  loc_D07010: ConcatStr
  loc_D07011: FStStrNoPop var_13C
  loc_D07014: LitStr ","
  loc_D07017: ConcatStr
  loc_D07018: FStStrNoPop var_140
  loc_D0701B: FLdI2 NumeLiqu
  loc_D0701E: CStrUI1
  loc_D07020: FStStrNoPop var_144
  loc_D07023: ConcatStr
  loc_D07024: FStStrNoPop var_148
  loc_D07027: LitStr ","
  loc_D0702A: ConcatStr
  loc_D0702B: FStStrNoPop var_14C
  loc_D0702E: ILdRf CodiDifu
  loc_D07031: CStrI4
  loc_D07033: FStStrNoPop var_150
  loc_D07036: ConcatStr
  loc_D07037: FStStrNoPop var_660
  loc_D0703A: LitStr ",'"
  loc_D0703D: ConcatStr
  loc_D0703E: FStStrNoPop var_664
  loc_D07041: ILdRf var_88
  loc_D07044: ConcatStr
  loc_D07045: FStStrNoPop var_668
  loc_D07048: LitStr "',"
  loc_D0704B: ConcatStr
  loc_D0704C: FStStrNoPop var_66C
  loc_D0704F: FLdUI1
  loc_D07053: CStrI2
  loc_D07055: FStStrNoPop var_670
  loc_D07058: ConcatStr
  loc_D07059: FStStrNoPop var_674
  loc_D0705C: LitStr ",'No','"
  loc_D0705F: ConcatStr
  loc_D07060: FStStrNoPop var_678
  loc_D07063: ILdRf var_8C
  loc_D07066: ConcatStr
  loc_D07067: FStStrNoPop var_67C
  loc_D0706A: LitStr "','"
  loc_D0706D: ConcatStr
  loc_D0706E: FStStrNoPop var_680
  loc_D07071: LitI4 1
  loc_D07076: LitI4 1
  loc_D0707B: LitVarStr var_190, "yyyy-mm-dd"
  loc_D07080: FStVarCopyObj var_180
  loc_D07083: FLdRfVar var_180
  loc_D07086: FLdRfVar arg_98
  loc_D07089: CVarRef
  loc_D0708E: ImpAdCallI2 Format$(, )
  loc_D07093: FStStrNoPop var_684
  loc_D07096: ConcatStr
  loc_D07097: FStStrNoPop var_688
  loc_D0709A: LitStr "','"
  loc_D0709D: ConcatStr
  loc_D0709E: FStStrNoPop var_68C
  loc_D070A1: LitI4 1
  loc_D070A6: LitI4 1
  loc_D070AB: LitVarStr var_1F4, "yyyy-mm-dd"
  loc_D070B0: FStVarCopyObj var_1A0
  loc_D070B3: FLdRfVar var_1A0
  loc_D070B6: FLdRfVar var_90
  loc_D070B9: CVarRef
  loc_D070BE: ImpAdCallI2 Format$(, )
  loc_D070C3: FStStrNoPop var_690
  loc_D070C6: ConcatStr
  loc_D070C7: FStStrNoPop var_694
  loc_D070CA: LitStr "',"
  loc_D070CD: ConcatStr
  loc_D070CE: FStStrNoPop var_69C
  loc_D070D1: LitI4 0
  loc_D070D6: LitI4 -1
  loc_D070DB: LitI4 1
  loc_D070E0: LitStr "."
  loc_D070E3: LitStr ","
  loc_D070E6: FLdFPR8 DeudLice
  loc_D070E9: CStrR8
  loc_D070EB: FStStrNoPop var_698
  loc_D070EE: ImpAdCallI2 Replace(, , , , , )
  loc_D070F3: FStStrNoPop var_6A0
  loc_D070F6: ConcatStr
  loc_D070F7: FStStrNoPop var_6A4
  loc_D070FA: LitStr ","
  loc_D070FD: ConcatStr
  loc_D070FE: FStStrNoPop var_6AC
  loc_D07101: LitI4 0
  loc_D07106: LitI4 -1
  loc_D0710B: LitI4 1
  loc_D07110: LitStr "."
  loc_D07113: LitStr ","
  loc_D07116: FLdFPR8 CrafLice
  loc_D07119: CStrR8
  loc_D0711B: FStStrNoPop var_6A8
  loc_D0711E: ImpAdCallI2 Replace(, , , , , )
  loc_D07123: FStStrNoPop var_6B0
  loc_D07126: ConcatStr
  loc_D07127: FStStrNoPop var_6B4
  loc_D0712A: LitStr ","
  loc_D0712D: ConcatStr
  loc_D0712E: FStStrNoPop var_6BC
  loc_D07131: LitI4 0
  loc_D07136: LitI4 -1
  loc_D0713B: LitI4 1
  loc_D07140: LitStr "."
  loc_D07143: LitStr ","
  loc_D07146: FLdFPR8 AddNew0
  loc_D07149: CStrR8
  loc_D0714B: FStStrNoPop var_6B8
  loc_D0714E: ImpAdCallI2 Replace(, , , , , )
  loc_D07153: FStStrNoPop var_6C0
  loc_D07156: ConcatStr
  loc_D07157: FStStrNoPop var_6C4
  loc_D0715A: LitStr ","
  loc_D0715D: ConcatStr
  loc_D0715E: FStStrNoPop var_6CC
  loc_D07161: LitI4 0
  loc_D07166: LitI4 -1
  loc_D0716B: LitI4 1
  loc_D07170: LitStr "."
  loc_D07173: LitStr ","
  loc_D07176: FLdFPR8 AddNew8
  loc_D07179: CStrR8
  loc_D0717B: FStStrNoPop var_6C8
  loc_D0717E: ImpAdCallI2 Replace(, , , , , )
  loc_D07183: FStStrNoPop var_6D0
  loc_D07186: ConcatStr
  loc_D07187: FStStrNoPop var_6D4
  loc_D0718A: LitStr ","
  loc_D0718D: ConcatStr
  loc_D0718E: FStStrNoPop var_6DC
  loc_D07191: LitI4 0
  loc_D07196: LitI4 -1
  loc_D0719B: LitI4 1
  loc_D071A0: LitStr "."
  loc_D071A3: LitStr ","
  loc_D071A6: FLdFPR8 CodiCall
  loc_D071A9: CStrR8
  loc_D071AB: FStStrNoPop var_6D8
  loc_D071AE: ImpAdCallI2 Replace(, , , , , )
  loc_D071B3: FStStrNoPop var_6E0
  loc_D071B6: ConcatStr
  loc_D071B7: FStStrNoPop var_6E4
  loc_D071BA: LitStr ","
  loc_D071BD: ConcatStr
  loc_D071BE: FStStrNoPop var_6EC
  loc_D071C1: LitI4 0
  loc_D071C6: LitI4 -1
  loc_D071CB: LitI4 1
  loc_D071D0: LitStr "."
  loc_D071D3: LitStr ","
  loc_D071D6: FLdFPR8 arg_58
  loc_D071D9: CStrR8
  loc_D071DB: FStStrNoPop var_6E8
  loc_D071DE: ImpAdCallI2 Replace(, , , , , )
  loc_D071E3: FStStrNoPop var_6F0
  loc_D071E6: ConcatStr
  loc_D071E7: FStStrNoPop var_6F4
  loc_D071EA: LitStr ","
  loc_D071ED: ConcatStr
  loc_D071EE: FStStrNoPop var_6FC
  loc_D071F1: LitI4 0
  loc_D071F6: LitI4 -1
  loc_D071FB: LitI4 1
  loc_D07200: LitStr "."
  loc_D07203: LitStr ","
  loc_D07206: FLdFPR8 arg_60
  loc_D07209: CStrR8
  loc_D0720B: FStStrNoPop var_6F8
  loc_D0720E: ImpAdCallI2 Replace(, , , , , )
  loc_D07213: FStStrNoPop var_700
  loc_D07216: ConcatStr
  loc_D07217: FStStrNoPop var_704
  loc_D0721A: LitStr ",'"
  loc_D0721D: ConcatStr
  loc_D0721E: FStStrNoPop var_708
  loc_D07221: ILdRf var_94
  loc_D07224: ConcatStr
  loc_D07225: FStStrNoPop var_70C
  loc_D07228: LitStr "',"
  loc_D0722B: ConcatStr
  loc_D0722C: FStStrNoPop var_710
  loc_D0722F: ILdRf arg_6C
  loc_D07232: CStrI4
  loc_D07234: FStStrNoPop var_714
  loc_D07237: ConcatStr
  loc_D07238: FStStrNoPop var_718
  loc_D0723B: LitStr ","
  loc_D0723E: ConcatStr
  loc_D0723F: CVarStr var_1E0
  loc_D07242: FLdRfVar arg_70
  loc_D07245: CVarRef
  loc_D0724A: LitVarI2 var_1B0, 0
  loc_D0724F: ILdRf arg_70
  loc_D07252: LitI4 0
  loc_D07257: LtI4
  loc_D07258: CVarBoolI2 var_228
  loc_D0725C: FLdRfVar var_1C0
  loc_D0725F: ImpAdCallFPR4  = IIf(, , )
  loc_D07264: FLdRfVar var_1C0
  loc_D07267: ConcatVar var_208
  loc_D0726B: LitVarStr var_2A4, ",'"
  loc_D07270: ConcatVar var_218
  loc_D07274: LitI4 0
  loc_D07279: LitI4 -1
  loc_D0727E: LitI4 1
  loc_D07283: LitStr vbNullString
  loc_D07286: LitStr "\"
  loc_D07289: FLdZeroAd var_728
  loc_D0728C: FStStrNoPop var_71C
  loc_D0728F: ImpAdCallI2 Replace(, , , , , )
  loc_D07294: CVarStr var_238
  loc_D07297: ConcatVar var_260
  loc_D0729B: LitVarStr var_2D8, "',"
  loc_D072A0: ConcatVar var_270
  loc_D072A4: FLdI2 arg_78
  loc_D072A7: CVarI2 var_2FC
  loc_D072AA: ConcatVar var_290
  loc_D072AE: LitVarStr var_330, ",'"
  loc_D072B3: ConcatVar var_2B8
  loc_D072B7: LitI4 0
  loc_D072BC: LitI4 -1
  loc_D072C1: LitI4 1
  loc_D072C6: LitStr vbNullString
  loc_D072C9: LitStr "\"
  loc_D072CC: FLdZeroAd var_72C
  loc_D072CF: FStStrNoPop var_720
  loc_D072D2: ImpAdCallI2 Replace(, , , , , )
  loc_D072D7: CVarStr var_2C8
  loc_D072DA: ConcatVar var_2E8
  loc_D072DE: LitVarStr var_350, "','"
  loc_D072E3: ConcatVar var_310
  loc_D072E7: ILdRf var_A0
  loc_D072EA: CVarStr var_370
  loc_D072ED: ConcatVar var_320
  loc_D072F1: LitVarStr var_390, "','"
  loc_D072F6: ConcatVar var_340
  loc_D072FA: ILdRf var_A4
  loc_D072FD: CVarStr var_3B8
  loc_D07300: ConcatVar var_360
  loc_D07304: LitVarStr var_3EC, "','"
  loc_D07309: ConcatVar var_380
  loc_D0730D: ILdRf var_A8
  loc_D07310: CVarStr var_410
  loc_D07313: ConcatVar var_3A0
  loc_D07317: LitVarStr var_444, "',"
  loc_D0731C: ConcatVar var_3CC
  loc_D07320: FLdI2 MeC
  loc_D07323: CVarI2 var_468
  loc_D07326: ConcatVar var_3DC
  loc_D0732A: LitVarStr var_49C, ",'"
  loc_D0732F: ConcatVar var_3FC
  loc_D07333: ILdRf var_AC
  loc_D07336: CVarStr var_4C0
  loc_D07339: ConcatVar var_424
  loc_D0733D: LitVarStr var_4F4, "','"
  loc_D07342: ConcatVar var_434
  loc_D07346: ILdRf var_B0
  loc_D07349: CVarStr var_518
  loc_D0734C: ConcatVar var_454
  loc_D07350: LitVarStr var_54C, "',"
  loc_D07355: ConcatVar var_47C
  loc_D07359: FLdUI1
  loc_D0735D: CVarUI1
  loc_D07361: ConcatVar var_48C
  loc_D07365: LitVarStr var_5CC, ");"
  loc_D0736A: ConcatVar var_4AC
  loc_D0736E: CStrVarVal var_724
  loc_D07372: Call EjecutarRsCls(from_stack_1v)
  loc_D07377: FFreeStr var_718 = "": var_71C = "": var_720 = "": var_724 = "": var_728 = "": var_72C = "": var_6A0 = "": var_6A4 = "": var_6A8 = "": var_6AC = "": var_6B0 = "": var_6B4 = "": var_6B8 = "": var_6BC = "": var_6C0 = "": var_6C4 = "": var_6C8 = "": var_6CC = "": var_6D0 = "": var_6D4 = "": var_6D8 = "": var_6DC = "": var_6E0 = "": var_6E4 = "": var_6E8 = "": var_6EC = "": var_6F0 = "": var_6F4 = "": var_6F8 = "": var_6FC = "": var_700 = "": var_704 = "": var_708 = "": var_70C = "": var_710 = "": var_714 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = "": var_678 = "": var_67C = "": var_680 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = "": var_698 = ""
  loc_D073FE: FFreeVar var_180 = "": var_1A0 = "": var_228 = "": var_1B0 = "": var_1E0 = "": var_1C0 = "": var_208 = "": var_218 = "": var_238 = "": var_260 = "": var_270 = "": var_290 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_310 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3CC = "": var_3DC = "": var_3FC = "": var_424 = "": var_434 = "": var_454 = "": var_47C = "": var_48C = ""
  loc_D0743D: FLdI2 arg_A8
  loc_D07440: LitI2_Byte &HFF
  loc_D07442: EqI2
  loc_D07443: BranchF loc_D08E91
  loc_D07446: LitDate 651.7
  loc_D0744F: FStFPR8 var_E8
  loc_D07452: LitStr "SELECT sd.CodiDifu , d.CodiTise, sc.PeriOrde, sd.CodiSece , sc.DetaSece , "
  loc_D07455: LitStr " tc.Importe Unidades, "
  loc_D07458: ConcatStr
  loc_D07459: FStStrNoPop var_11C
  loc_D0745C: LitStr " ROUND(tc.Importe * "
  loc_D0745F: ConcatStr
  loc_D07460: FStStrNoPop var_124
  loc_D07463: LitI4 0
  loc_D07468: LitI4 -1
  loc_D0746D: LitI4 1
  loc_D07472: LitStr "."
  loc_D07475: LitStr ","
  loc_D07478: ImpAdLdFPR8 MemVar_D9307C
  loc_D0747B: CStrR8
  loc_D0747D: FStStrNoPop var_120
  loc_D07480: ImpAdCallI2 Replace(, , , , , )
  loc_D07485: FStStrNoPop var_128
  loc_D07488: ConcatStr
  loc_D07489: FStStrNoPop var_12C
  loc_D0748C: LitStr ",2) Monto"
  loc_D0748F: ConcatStr
  loc_D07490: FStStrNoPop var_130
  loc_D07493: LitStr " FROM recaudacion.servdifu sd"
  loc_D07496: ConcatStr
  loc_D07497: FStStrNoPop var_134
  loc_D0749A: LitStr " INNER JOIN recaudacion.difunto d ON d.CodiDifu = sd.CodiDifu"
  loc_D0749D: ConcatStr
  loc_D0749E: FStStrNoPop var_138
  loc_D074A1: LitStr " INNER JOIN recaudacion.servceme sc ON sc.CodiSece = sd.CodiSece  AND sc.PeriOrde = "
  loc_D074A4: ConcatStr
  loc_D074A5: FStStrNoPop var_13C
  loc_D074A8: ImpAdLdI2 MemVar_D93034
  loc_D074AB: CStrUI1
  loc_D074AD: FStStrNoPop var_140
  loc_D074B0: ConcatStr
  loc_D074B1: FStStrNoPop var_144
  loc_D074B4: LitStr " INNER JOIN recaudacion.tariceme t ON t.PeriInfo = "
  loc_D074B7: ConcatStr
  loc_D074B8: FStStrNoPop var_148
  loc_D074BB: ImpAdLdI2 MemVar_D93034
  loc_D074BE: CStrUI1
  loc_D074C0: FStStrNoPop var_14C
  loc_D074C3: ConcatStr
  loc_D074C4: FStStrNoPop var_150
  loc_D074C7: LitStr " AND t.CodiSece = sc.CodiSece   AND t.CodiTise = d.CodiTise"
  loc_D074CA: ConcatStr
  loc_D074CB: FStStrNoPop var_660
  loc_D074CE: LitStr " INNER JOIN recaudacion.tarifaria tc ON  t.PeriInfo = tc.PeriInfo AND t.Capitulo = tc.Capitulo"
  loc_D074D1: ConcatStr
  loc_D074D2: FStStrNoPop var_664
  loc_D074D5: LitStr " AND t.Articulo = tc.Articulo AND t.Letra = tc.Letra"
  loc_D074D8: ConcatStr
  loc_D074D9: FStStrNoPop var_668
  loc_D074DC: LitStr " WHERE sd.CodiSece >= 500 AND sd.CodiSece <= 504 AND sd.FehaSedi is null AND d.CodiTise != 'D' AND d.CodiDifu = "
  loc_D074DF: ConcatStr
  loc_D074E0: FStStrNoPop var_66C
  loc_D074E3: ILdRf CodiDifu
  loc_D074E6: CStrI4
  loc_D074E8: FStStrNoPop var_670
  loc_D074EB: ConcatStr
  loc_D074EC: FStStrNoPop var_674
  loc_D074EF: FLdRfVar var_B4
  loc_D074F2: NewIfNullPr clstipofapa
  loc_D074F5: Call clstipofapa.RedefineRS(from_stack_1v)
  loc_D074FA: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = ""
  loc_D07525: FLdRfVar var_154
  loc_D07528: FLdRfVar var_15C
  loc_D0752B: FLdRfVar var_B4
  loc_D0752E: NewIfNullPr clstipofapa
  loc_D07531: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D07536: FLdPr var_15C
  loc_D07539:  = Me.RecordCount
  loc_D0753E: ILdRf var_154
  loc_D07541: LitI4 0
  loc_D07546: GtI4
  loc_D07547: FFree1Ad var_15C
  loc_D0754A: BranchF loc_D07B7A
  loc_D0754D: FLdRfVar var_B4
  loc_D07550: NewIfNullPr clstipofapa
  loc_D07553: Call clstipofapa.MoveFirst()
  loc_D07558: FLdRfVar var_156
  loc_D0755B: FLdRfVar var_B4
  loc_D0755E: NewIfNullPr clstipofapa
  loc_D07561: from_stack_1 = clstipofapa.EOF
  loc_D07566: FLdI2 var_156
  loc_D07569: NotI4
  loc_D0756A: BranchF loc_D079E9
  loc_D0756D: FLdRfVar var_180
  loc_D07570: FLdRfVar var_1E4
  loc_D07573: LitVarStr var_16C, "Monto"
  loc_D07578: PopAdLdVar
  loc_D07579: FLdRfVar var_170
  loc_D0757C: FLdRfVar var_15C
  loc_D0757F: FLdRfVar var_B4
  loc_D07582: NewIfNullPr clstipofapa
  loc_D07585: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D0758A: FLdPr var_15C
  loc_D0758D:  = Me.Fields
  loc_D07592: FLdPr var_170
  loc_D07595: from_stack_2 = Me.Item(from_stack_1)
  loc_D0759A: FLdPr var_1E4
  loc_D0759D:  = Me.Value
  loc_D075A2: FLdRfVar var_180
  loc_D075A5: LitVarI2 var_190, 0
  loc_D075AA: HardType
  loc_D075AB: GtVarBool
  loc_D075AD: FFreeAd var_15C = "": var_170 = ""
  loc_D075B6: FFree1Var var_180 = ""
  loc_D075B9: BranchF loc_D079DB
  loc_D075BC: LitI2_Byte 0
  loc_D075BE: CR8I2
  loc_D075BF: FStFPR8 var_F0
  loc_D075C2: FLdFPR8 arg_B0
  loc_D075C5: LitI2_Byte 0
  loc_D075C7: CR8I2
  loc_D075C8: GtR4
  loc_D075C9: BranchF loc_D07645
  loc_D075CC: FLdRfVar var_180
  loc_D075CF: FLdRfVar var_1E4
  loc_D075D2: LitVarStr var_16C, "Monto"
  loc_D075D7: PopAdLdVar
  loc_D075D8: FLdRfVar var_170
  loc_D075DB: FLdRfVar var_15C
  loc_D075DE: FLdRfVar var_B4
  loc_D075E1: NewIfNullPr clstipofapa
  loc_D075E4: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D075E9: FLdPr var_15C
  loc_D075EC:  = Me.Fields
  loc_D075F1: FLdPr var_170
  loc_D075F4: from_stack_2 = Me.Item(from_stack_1)
  loc_D075F9: FLdPr var_1E4
  loc_D075FC:  = Me.Value
  loc_D07601: LitI4 2
  loc_D07606: FLdRfVar var_180
  loc_D07609: FLdFPR8 arg_B0
  loc_D0760C: CVarR8
  loc_D07610: MulVar var_1A0
  loc_D07614: LitVarI2 var_1D0, 100
  loc_D07619: DivVar var_1B0
  loc_D0761D: FStVar var_1C0
  loc_D07621: FLdRfVar var_1C0
  loc_D07624: FLdRfVar var_1E0
  loc_D07627: ImpAdCallFPR4  = Round(, )
  loc_D0762C: FLdRfVar var_1E0
  loc_D0762F: CR4Var
  loc_D07630: FStFPR8 var_F0
  loc_D07633: FFreeAd var_15C = "": var_170 = ""
  loc_D0763C: FFreeVar var_180 = "": var_1C0 = ""
  loc_D07645: FLdRfVar var_180
  loc_D07648: FLdRfVar var_1E4
  loc_D0764B: LitVarStr var_16C, "Monto"
  loc_D07650: PopAdLdVar
  loc_D07651: FLdRfVar var_170
  loc_D07654: FLdRfVar var_15C
  loc_D07657: FLdRfVar var_B4
  loc_D0765A: NewIfNullPr clstipofapa
  loc_D0765D: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D07662: FLdPr var_15C
  loc_D07665:  = Me.Fields
  loc_D0766A: FLdPr var_170
  loc_D0766D: from_stack_2 = Me.Item(from_stack_1)
  loc_D07672: FLdPr var_1E4
  loc_D07675:  = Me.Value
  loc_D0767A: FLdRfVar var_180
  loc_D0767D: FLdFPR8 var_F0
  loc_D07680: CVarR8
  loc_D07684: HardType
  loc_D07685: NeVarBool
  loc_D07687: FFreeAd var_15C = "": var_170 = ""
  loc_D07690: FFree1Var var_180 = ""
  loc_D07693: BranchF loc_D076F0
  loc_D07696: FLdRfVar var_180
  loc_D07699: FLdRfVar var_1E4
  loc_D0769C: LitVarStr var_16C, "Monto"
  loc_D076A1: PopAdLdVar
  loc_D076A2: FLdRfVar var_170
  loc_D076A5: FLdRfVar var_15C
  loc_D076A8: FLdRfVar var_B4
  loc_D076AB: NewIfNullPr clstipofapa
  loc_D076AE: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D076B3: FLdPr var_15C
  loc_D076B6:  = Me.Fields
  loc_D076BB: FLdPr var_170
  loc_D076BE: from_stack_2 = Me.Item(from_stack_1)
  loc_D076C3: FLdPr var_1E4
  loc_D076C6:  = Me.Value
  loc_D076CB: FLdRfVar var_180
  loc_D076CE: FLdFPR8 var_E8
  loc_D076D1: CVarR8
  loc_D076D5: AddVar var_1A0
  loc_D076D9: CR4Var
  loc_D076DA: FStFPR8 var_C8
  loc_D076DD: FFreeAd var_15C = "": var_170 = ""
  loc_D076E6: FFreeVar var_180 = ""
  loc_D076ED: Branch loc_D07738
  loc_D076F0: FLdRfVar var_180
  loc_D076F3: FLdRfVar var_1E4
  loc_D076F6: LitVarStr var_16C, "Monto"
  loc_D076FB: PopAdLdVar
  loc_D076FC: FLdRfVar var_170
  loc_D076FF: FLdRfVar var_15C
  loc_D07702: FLdRfVar var_B4
  loc_D07705: NewIfNullPr clstipofapa
  loc_D07708: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D0770D: FLdPr var_15C
  loc_D07710:  = Me.Fields
  loc_D07715: FLdPr var_170
  loc_D07718: from_stack_2 = Me.Item(from_stack_1)
  loc_D0771D: FLdPr var_1E4
  loc_D07720:  = Me.Value
  loc_D07725: FLdRfVar var_180
  loc_D07728: CR4Var
  loc_D07729: FStFPR8 var_C8
  loc_D0772C: FFreeAd var_15C = "": var_170 = ""
  loc_D07735: FFree1Var var_180 = ""
  loc_D07738: LitI4 2
  loc_D0773D: FLdRfVar var_C8
  loc_D07740: CVarRef
  loc_D07745: FLdRfVar var_180
  loc_D07748: ImpAdCallFPR4  = Round(, )
  loc_D0774D: LitI4 2
  loc_D07752: FLdFPR8 var_BC
  loc_D07755: CVarR8
  loc_D07759: FLdRfVar var_180
  loc_D0775C: AddVar var_1A0
  loc_D07760: FLdRfVar var_1B0
  loc_D07763: ImpAdCallFPR4  = Round(, )
  loc_D07768: FLdRfVar var_1B0
  loc_D0776B: CR4Var
  loc_D0776C: FStFPR8 var_BC
  loc_D0776F: FFreeVar var_180 = "": var_1A0 = ""
  loc_D07778: LitStr " INSERT INTO licedeta (PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiDifu, CodiConc, TipoVenc, PeriOrde, CodiSece, NumeLcde, ImpoLcde, DecaLcde, CrafLcde, ExenLcde, TotaLcde)"
  loc_D0777B: LitStr " VALUES ("
  loc_D0777E: ConcatStr
  loc_D0777F: FStStrNoPop var_11C
  loc_D07782: FLdI2 PeriLiqu
  loc_D07785: CStrUI1
  loc_D07787: FStStrNoPop var_120
  loc_D0778A: ConcatStr
  loc_D0778B: FStStrNoPop var_124
  loc_D0778E: LitStr ","
  loc_D07791: ConcatStr
  loc_D07792: FStStrNoPop var_128
  loc_D07795: FLdUI1
  loc_D07799: CStrI2
  loc_D0779B: FStStrNoPop var_12C
  loc_D0779E: ConcatStr
  loc_D0779F: FStStrNoPop var_130
  loc_D077A2: LitStr ","
  loc_D077A5: ConcatStr
  loc_D077A6: FStStrNoPop var_134
  loc_D077A9: FLdUI1
  loc_D077AD: CStrI2
  loc_D077AF: FStStrNoPop var_138
  loc_D077B2: ConcatStr
  loc_D077B3: FStStrNoPop var_13C
  loc_D077B6: LitStr ","
  loc_D077B9: ConcatStr
  loc_D077BA: FStStrNoPop var_140
  loc_D077BD: FLdI2 NumeLiqu
  loc_D077C0: CStrUI1
  loc_D077C2: FStStrNoPop var_144
  loc_D077C5: ConcatStr
  loc_D077C6: FStStrNoPop var_148
  loc_D077C9: LitStr ","
  loc_D077CC: ConcatStr
  loc_D077CD: FStStrNoPop var_14C
  loc_D077D0: ILdRf CodiDifu
  loc_D077D3: CStrI4
  loc_D077D5: FStStrNoPop var_150
  loc_D077D8: ConcatStr
  loc_D077D9: FStStrNoPop var_660
  loc_D077DC: LitStr ",'"
  loc_D077DF: ConcatStr
  loc_D077E0: FStStrNoPop var_664
  loc_D077E3: ILdRf var_88
  loc_D077E6: ConcatStr
  loc_D077E7: FStStrNoPop var_668
  loc_D077EA: LitStr "',"
  loc_D077ED: ConcatStr
  loc_D077EE: FStStrNoPop var_66C
  loc_D077F1: FLdUI1
  loc_D077F5: CStrI2
  loc_D077F7: FStStrNoPop var_670
  loc_D077FA: ConcatStr
  loc_D077FB: FStStrNoPop var_674
  loc_D077FE: LitStr ","
  loc_D07801: ConcatStr
  loc_D07802: CVarStr var_1A0
  loc_D07805: FLdRfVar var_180
  loc_D07808: FLdRfVar var_1E4
  loc_D0780B: LitVarStr var_16C, "PeriOrde"
  loc_D07810: PopAdLdVar
  loc_D07811: FLdRfVar var_170
  loc_D07814: FLdRfVar var_15C
  loc_D07817: FLdRfVar var_B4
  loc_D0781A: NewIfNullPr clstipofapa
  loc_D0781D: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D07822: FLdPr var_15C
  loc_D07825:  = Me.Fields
  loc_D0782A: FLdPr var_170
  loc_D0782D: from_stack_2 = Me.Item(from_stack_1)
  loc_D07832: FLdPr var_1E4
  loc_D07835:  = Me.Value
  loc_D0783A: FLdRfVar var_180
  loc_D0783D: ConcatVar var_1B0
  loc_D07841: LitVarStr var_190, ",'"
  loc_D07846: ConcatVar var_1C0
  loc_D0784A: FLdRfVar var_1E0
  loc_D0784D: FLdRfVar var_250
  loc_D07850: LitVarStr var_1D0, "CodiSece"
  loc_D07855: PopAdLdVar
  loc_D07856: FLdRfVar var_23C
  loc_D07859: FLdRfVar var_1F8
  loc_D0785C: FLdRfVar var_B4
  loc_D0785F: NewIfNullPr clstipofapa
  loc_D07862: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D07867: FLdPr var_1F8
  loc_D0786A:  = Me.Fields
  loc_D0786F: FLdPr var_23C
  loc_D07872: from_stack_2 = Me.Item(from_stack_1)
  loc_D07877: FLdPr var_250
  loc_D0787A:  = Me.Value
  loc_D0787F: FLdRfVar var_1E0
  loc_D07882: ConcatVar var_208
  loc_D07886: LitVarStr var_1F4, "',1,"
  loc_D0788B: ConcatVar var_218
  loc_D0788F: LitI4 0
  loc_D07894: LitI4 -1
  loc_D07899: LitI4 1
  loc_D0789E: LitStr "."
  loc_D078A1: LitStr ","
  loc_D078A4: FLdFPR8 var_C8
  loc_D078A7: CStrR8
  loc_D078A9: FStStrNoPop var_678
  loc_D078AC: ImpAdCallI2 Replace(, , , , , )
  loc_D078B1: CVarStr var_238
  loc_D078B4: ConcatVar var_260
  loc_D078B8: LitVarStr var_228, ","
  loc_D078BD: ConcatVar var_270
  loc_D078C1: LitI4 0
  loc_D078C6: LitI4 -1
  loc_D078CB: LitI4 1
  loc_D078D0: LitStr "."
  loc_D078D3: LitStr ","
  loc_D078D6: FLdFPR8 var_D0
  loc_D078D9: CStrR8
  loc_D078DB: FStStrNoPop var_67C
  loc_D078DE: ImpAdCallI2 Replace(, , , , , )
  loc_D078E3: CVarStr var_290
  loc_D078E6: ConcatVar var_2B8
  loc_D078EA: LitVarStr var_24C, ",0,"
  loc_D078EF: ConcatVar var_2C8
  loc_D078F3: LitI4 0
  loc_D078F8: LitI4 -1
  loc_D078FD: LitI4 1
  loc_D07902: LitStr "."
  loc_D07905: LitStr ","
  loc_D07908: FLdFPR8 var_F0
  loc_D0790B: CStrR8
  loc_D0790D: FStStrNoPop var_680
  loc_D07910: ImpAdCallI2 Replace(, , , , , )
  loc_D07915: CVarStr var_2E8
  loc_D07918: ConcatVar var_310
  loc_D0791C: LitVarStr var_280, ","
  loc_D07921: ConcatVar var_320
  loc_D07925: LitI4 0
  loc_D0792A: LitI4 -1
  loc_D0792F: LitI4 1
  loc_D07934: LitStr "."
  loc_D07937: LitStr ","
  loc_D0793A: FLdFPR8 var_C8
  loc_D0793D: FLdFPR8 var_D0
  loc_D07940: SubR4
  loc_D07941: FLdFPR8 var_F0
  loc_D07944: SubR4
  loc_D07945: CStrR8
  loc_D07947: FStStrNoPop var_684
  loc_D0794A: ImpAdCallI2 Replace(, , , , , )
  loc_D0794F: CVarStr var_340
  loc_D07952: ConcatVar var_360
  loc_D07956: LitVarStr var_2A4, ");"
  loc_D0795B: ConcatVar var_380
  loc_D0795F: CStrVarVal var_688
  loc_D07963: Call EjecutarRsCls(from_stack_1v)
  loc_D07968: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = "": var_678 = "": var_67C = "": var_680 = "": var_684 = ""
  loc_D0799D: FFreeAd var_15C = "": var_170 = "": var_1E4 = "": var_1F8 = "": var_23C = ""
  loc_D079AC: FFreeVar var_1A0 = "": var_180 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_208 = "": var_218 = "": var_238 = "": var_260 = "": var_270 = "": var_290 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_310 = "": var_320 = "": var_340 = "": var_360 = ""
  loc_D079D5: LitI2_Byte 0
  loc_D079D7: CR8I2
  loc_D079D8: FStFPR8 var_E8
  loc_D079DB: FLdRfVar var_B4
  loc_D079DE: NewIfNullPr clstipofapa
  loc_D079E1: Call clstipofapa.MoveSiguiente()
  loc_D079E6: Branch loc_D07558
  loc_D079E9: FLdFPR8 arg_A0
  loc_D079EC: LitI2_Byte 0
  loc_D079EE: CR8I2
  loc_D079EF: GtR4
  loc_D079F0: BranchF loc_D07B7A
  loc_D079F3: LitI4 2
  loc_D079F8: FLdFPR8 var_BC
  loc_D079FB: FLdFPR8 arg_A0
  loc_D079FE: AddR8
  loc_D079FF: CVarR8
  loc_D07A03: FLdRfVar var_1A0
  loc_D07A06: ImpAdCallFPR4  = Round(, )
  loc_D07A0B: FLdRfVar var_1A0
  loc_D07A0E: CR4Var
  loc_D07A0F: FStFPR8 var_BC
  loc_D07A12: FFreeVar var_180 = ""
  loc_D07A19: LitStr " INSERT INTO licedeta (PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiDifu, CodiConc, TipoVenc, PeriOrde, CodiSece, NumeLcde, ImpoLcde, DecaLcde, CrafLcde, ExenLcde, TotaLcde)"
  loc_D07A1C: LitStr " VALUES ("
  loc_D07A1F: ConcatStr
  loc_D07A20: FStStrNoPop var_11C
  loc_D07A23: FLdI2 PeriLiqu
  loc_D07A26: CStrUI1
  loc_D07A28: FStStrNoPop var_120
  loc_D07A2B: ConcatStr
  loc_D07A2C: FStStrNoPop var_124
  loc_D07A2F: LitStr ","
  loc_D07A32: ConcatStr
  loc_D07A33: FStStrNoPop var_128
  loc_D07A36: FLdUI1
  loc_D07A3A: CStrI2
  loc_D07A3C: FStStrNoPop var_12C
  loc_D07A3F: ConcatStr
  loc_D07A40: FStStrNoPop var_130
  loc_D07A43: LitStr ","
  loc_D07A46: ConcatStr
  loc_D07A47: FStStrNoPop var_134
  loc_D07A4A: FLdUI1
  loc_D07A4E: CStrI2
  loc_D07A50: FStStrNoPop var_138
  loc_D07A53: ConcatStr
  loc_D07A54: FStStrNoPop var_13C
  loc_D07A57: LitStr ","
  loc_D07A5A: ConcatStr
  loc_D07A5B: FStStrNoPop var_140
  loc_D07A5E: FLdI2 NumeLiqu
  loc_D07A61: CStrUI1
  loc_D07A63: FStStrNoPop var_144
  loc_D07A66: ConcatStr
  loc_D07A67: FStStrNoPop var_148
  loc_D07A6A: LitStr ","
  loc_D07A6D: ConcatStr
  loc_D07A6E: FStStrNoPop var_14C
  loc_D07A71: ILdRf CodiDifu
  loc_D07A74: CStrI4
  loc_D07A76: FStStrNoPop var_150
  loc_D07A79: ConcatStr
  loc_D07A7A: FStStrNoPop var_660
  loc_D07A7D: LitStr ","
  loc_D07A80: ConcatStr
  loc_D07A81: FStStrNoPop var_664
  loc_D07A84: ILdRf var_88
  loc_D07A87: ConcatStr
  loc_D07A88: FStStrNoPop var_668
  loc_D07A8B: LitStr ","
  loc_D07A8E: ConcatStr
  loc_D07A8F: FStStrNoPop var_66C
  loc_D07A92: FLdUI1
  loc_D07A96: CStrI2
  loc_D07A98: FStStrNoPop var_670
  loc_D07A9B: ConcatStr
  loc_D07A9C: FStStrNoPop var_674
  loc_D07A9F: LitStr ","
  loc_D07AA2: ConcatStr
  loc_D07AA3: FStStrNoPop var_678
  loc_D07AA6: ImpAdLdI2 MemVar_D93036
  loc_D07AA9: CStrUI1
  loc_D07AAB: FStStrNoPop var_67C
  loc_D07AAE: ConcatStr
  loc_D07AAF: FStStrNoPop var_680
  loc_D07AB2: LitStr ","
  loc_D07AB5: ConcatStr
  loc_D07AB6: FStStrNoPop var_684
  loc_D07AB9: FLdI2 arg_AC
  loc_D07ABC: CStrUI1
  loc_D07ABE: FStStrNoPop var_688
  loc_D07AC1: ConcatStr
  loc_D07AC2: FStStrNoPop var_68C
  loc_D07AC5: LitStr ",1,"
  loc_D07AC8: ConcatStr
  loc_D07AC9: FStStrNoPop var_694
  loc_D07ACC: LitI4 0
  loc_D07AD1: LitI4 -1
  loc_D07AD6: LitI4 1
  loc_D07ADB: LitStr "."
  loc_D07ADE: LitStr ","
  loc_D07AE1: FLdFPR8 arg_A0
  loc_D07AE4: CStrR8
  loc_D07AE6: FStStrNoPop var_690
  loc_D07AE9: ImpAdCallI2 Replace(, , , , , )
  loc_D07AEE: FStStrNoPop var_698
  loc_D07AF1: ConcatStr
  loc_D07AF2: FStStrNoPop var_69C
  loc_D07AF5: LitStr ",0,0,0,"
  loc_D07AF8: ConcatStr
  loc_D07AF9: FStStrNoPop var_6A4
  loc_D07AFC: LitI4 0
  loc_D07B01: LitI4 -1
  loc_D07B06: LitI4 1
  loc_D07B0B: LitStr "."
  loc_D07B0E: LitStr ","
  loc_D07B11: FLdFPR8 arg_A0
  loc_D07B14: CStrR8
  loc_D07B16: FStStrNoPop var_6A0
  loc_D07B19: ImpAdCallI2 Replace(, , , , , )
  loc_D07B1E: FStStrNoPop var_6A8
  loc_D07B21: ConcatStr
  loc_D07B22: FStStrNoPop var_6AC
  loc_D07B25: LitStr ");"
  loc_D07B28: ConcatStr
  loc_D07B29: FStStrNoPop var_6B0
  loc_D07B2C: Call EjecutarRsCls(from_stack_1v)
  loc_D07B31: FFreeStr var_6A0 = "": var_6A4 = "": var_6A8 = "": var_6AC = "": var_6B0 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = "": var_678 = "": var_67C = "": var_680 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = "": var_698 = ""
  loc_D07B7A: FLdUI1
  loc_D07B7E: CI2UI1
  loc_D07B80: LitI2_Byte 1
  loc_D07B82: EqI2
  loc_D07B83: BranchF loc_D08E91
  loc_D07B86: LitStr "SELECT SUM(ImpoLcde) as ImpoLcde, SUM(DecaLcde) as DecaLcde, SUM(TotaLcde) as TotaLcde FROM licedeta WHERE PeriLiqu = "
  loc_D07B89: FLdI2 PeriLiqu
  loc_D07B8C: CStrUI1
  loc_D07B8E: FStStrNoPop var_11C
  loc_D07B91: ConcatStr
  loc_D07B92: FStStrNoPop var_120
  loc_D07B95: LitStr " AND Bimeliqu = "
  loc_D07B98: ConcatStr
  loc_D07B99: FStStrNoPop var_124
  loc_D07B9C: FLdUI1
  loc_D07BA0: CStrI2
  loc_D07BA2: FStStrNoPop var_128
  loc_D07BA5: ConcatStr
  loc_D07BA6: FStStrNoPop var_12C
  loc_D07BA9: LitStr " AND CodiTili = "
  loc_D07BAC: ConcatStr
  loc_D07BAD: FStStrNoPop var_130
  loc_D07BB0: FLdUI1
  loc_D07BB4: CStrI2
  loc_D07BB6: FStStrNoPop var_134
  loc_D07BB9: ConcatStr
  loc_D07BBA: FStStrNoPop var_138
  loc_D07BBD: LitStr " AND NumeLiqu = "
  loc_D07BC0: ConcatStr
  loc_D07BC1: FStStrNoPop var_13C
  loc_D07BC4: FLdI2 NumeLiqu
  loc_D07BC7: CStrUI1
  loc_D07BC9: FStStrNoPop var_140
  loc_D07BCC: ConcatStr
  loc_D07BCD: FStStrNoPop var_144
  loc_D07BD0: LitStr " AND CodiDifu = "
  loc_D07BD3: ConcatStr
  loc_D07BD4: FStStrNoPop var_148
  loc_D07BD7: ILdRf CodiDifu
  loc_D07BDA: CStrI4
  loc_D07BDC: FStStrNoPop var_14C
  loc_D07BDF: ConcatStr
  loc_D07BE0: FStStrNoPop var_150
  loc_D07BE3: LitStr " AND CodiConc = '"
  loc_D07BE6: ConcatStr
  loc_D07BE7: FStStrNoPop var_660
  loc_D07BEA: ILdRf var_88
  loc_D07BED: ConcatStr
  loc_D07BEE: FStStrNoPop var_664
  loc_D07BF1: LitStr "'"
  loc_D07BF4: ConcatStr
  loc_D07BF5: FStStrNoPop var_668
  loc_D07BF8: LitStr " AND TipoVenc = "
  loc_D07BFB: ConcatStr
  loc_D07BFC: FStStrNoPop var_66C
  loc_D07BFF: FLdUI1
  loc_D07C03: CStrI2
  loc_D07C05: FStStrNoPop var_670
  loc_D07C08: ConcatStr
  loc_D07C09: FStStrNoPop var_674
  loc_D07C0C: Call EjecutarRsCls2(from_stack_1v)
  loc_D07C11: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = ""
  loc_D07C3C: FLdRfVar var_154
  loc_D07C3F: FLdPr Me
  loc_D07C42: MemLdPr global_64
  loc_D07C45:  = Me.RecordCount
  loc_D07C4A: ILdRf var_154
  loc_D07C4D: LitI4 0
  loc_D07C52: GtI4
  loc_D07C53: BranchF loc_D08E91
  loc_D07C56: FLdFPR8 CrafLice
  loc_D07C59: CVarR8
  loc_D07C5D: HardType
  loc_D07C5E: FLdRfVar var_180
  loc_D07C61: FLdRfVar var_170
  loc_D07C64: LitVarStr var_16C, "ImpoLcde"
  loc_D07C69: PopAdLdVar
  loc_D07C6A: FLdRfVar var_15C
  loc_D07C6D: FLdPr Me
  loc_D07C70: MemLdPr global_64
  loc_D07C73:  = Me.Fields
  loc_D07C78: FLdPr var_15C
  loc_D07C7B: from_stack_2 = Me.Item(from_stack_1)
  loc_D07C80: FLdPr var_170
  loc_D07C83:  = Me.Value
  loc_D07C88: FLdRfVar var_180
  loc_D07C8B: NeVarBool
  loc_D07C8D: FFreeAd var_15C = ""
  loc_D07C94: FFree1Var var_180 = ""
  loc_D07C97: BranchF loc_D08568
  loc_D07C9A: FLdRfVar var_180
  loc_D07C9D: FLdRfVar var_170
  loc_D07CA0: LitVarStr var_16C, "ImpoLcde"
  loc_D07CA5: PopAdLdVar
  loc_D07CA6: FLdRfVar var_15C
  loc_D07CA9: FLdPr Me
  loc_D07CAC: MemLdPr global_64
  loc_D07CAF:  = Me.Fields
  loc_D07CB4: FLdPr var_15C
  loc_D07CB7: from_stack_2 = Me.Item(from_stack_1)
  loc_D07CBC: FLdPr var_170
  loc_D07CBF:  = Me.Value
  loc_D07CC4: FLdFPR8 CrafLice
  loc_D07CC7: FLdRfVar var_180
  loc_D07CCA: FnCDblVar
  loc_D07CCC: GtR4
  loc_D07CCD: FFreeAd var_15C = ""
  loc_D07CD4: FFree1Var var_180 = ""
  loc_D07CD7: BranchF loc_D0810E
  loc_D07CDA: LitStr "SELECT * FROM licedeta WHERE PeriLiqu = "
  loc_D07CDD: FLdI2 PeriLiqu
  loc_D07CE0: CStrUI1
  loc_D07CE2: FStStrNoPop var_11C
  loc_D07CE5: ConcatStr
  loc_D07CE6: FStStrNoPop var_120
  loc_D07CE9: LitStr " AND Bimeliqu = "
  loc_D07CEC: ConcatStr
  loc_D07CED: FStStrNoPop var_124
  loc_D07CF0: FLdUI1
  loc_D07CF4: CStrI2
  loc_D07CF6: FStStrNoPop var_128
  loc_D07CF9: ConcatStr
  loc_D07CFA: FStStrNoPop var_12C
  loc_D07CFD: LitStr " AND CodiTili = "
  loc_D07D00: ConcatStr
  loc_D07D01: FStStrNoPop var_130
  loc_D07D04: FLdUI1
  loc_D07D08: CStrI2
  loc_D07D0A: FStStrNoPop var_134
  loc_D07D0D: ConcatStr
  loc_D07D0E: FStStrNoPop var_138
  loc_D07D11: LitStr " AND NumeLiqu = "
  loc_D07D14: ConcatStr
  loc_D07D15: FStStrNoPop var_13C
  loc_D07D18: FLdI2 NumeLiqu
  loc_D07D1B: CStrUI1
  loc_D07D1D: FStStrNoPop var_140
  loc_D07D20: ConcatStr
  loc_D07D21: FStStrNoPop var_144
  loc_D07D24: LitStr " AND CodiDifu = "
  loc_D07D27: ConcatStr
  loc_D07D28: FStStrNoPop var_148
  loc_D07D2B: ILdRf CodiDifu
  loc_D07D2E: CStrI4
  loc_D07D30: FStStrNoPop var_14C
  loc_D07D33: ConcatStr
  loc_D07D34: FStStrNoPop var_150
  loc_D07D37: LitStr " AND CodiConc = '"
  loc_D07D3A: ConcatStr
  loc_D07D3B: FStStrNoPop var_660
  loc_D07D3E: ILdRf var_88
  loc_D07D41: ConcatStr
  loc_D07D42: FStStrNoPop var_664
  loc_D07D45: LitStr "'"
  loc_D07D48: ConcatStr
  loc_D07D49: FStStrNoPop var_668
  loc_D07D4C: LitStr " AND TipoVenc = "
  loc_D07D4F: ConcatStr
  loc_D07D50: FStStrNoPop var_66C
  loc_D07D53: FLdUI1
  loc_D07D57: CStrI2
  loc_D07D59: FStStrNoPop var_670
  loc_D07D5C: ConcatStr
  loc_D07D5D: FStStrNoPop var_674
  loc_D07D60: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,PeriOrde,CodiSece,NumeLcde"
  loc_D07D63: ConcatStr
  loc_D07D64: FStStrNoPop var_678
  loc_D07D67: Call EjecutarRsCls1(from_stack_1v)
  loc_D07D6C: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = ""
  loc_D07D99: FLdRfVar var_154
  loc_D07D9C: FLdPr Me
  loc_D07D9F: MemLdPr global_60
  loc_D07DA2:  = Me.RecordCount
  loc_D07DA7: ILdRf var_154
  loc_D07DAA: LitI4 0
  loc_D07DAF: GtI4
  loc_D07DB0: BranchF loc_D0810B
  loc_D07DB3: FLdPr Me
  loc_D07DB6: MemLdPr global_60
  loc_D07DB9: Me.MoveFirst
  loc_D07DBE: FLdRfVar var_180
  loc_D07DC1: FLdRfVar var_170
  loc_D07DC4: LitVarStr var_16C, "ImpoLcde"
  loc_D07DC9: PopAdLdVar
  loc_D07DCA: FLdRfVar var_15C
  loc_D07DCD: FLdPr Me
  loc_D07DD0: MemLdPr global_64
  loc_D07DD3:  = Me.Fields
  loc_D07DD8: FLdPr var_15C
  loc_D07DDB: from_stack_2 = Me.Item(from_stack_1)
  loc_D07DE0: FLdPr var_170
  loc_D07DE3:  = Me.Value
  loc_D07DE8: LitI4 2
  loc_D07DED: FLdFPR8 CrafLice
  loc_D07DF0: FLdRfVar var_180
  loc_D07DF3: FnCDblVar
  loc_D07DF5: SubR4
  loc_D07DF6: CVarR8
  loc_D07DFA: FLdRfVar var_1B0
  loc_D07DFD: ImpAdCallFPR4  = Round(, )
  loc_D07E02: LitStr " UPDATE licedeta SET ImpoLcde = ImpoLcde + "
  loc_D07E05: LitI4 0
  loc_D07E0A: LitI4 -1
  loc_D07E0F: LitI4 1
  loc_D07E14: LitStr "."
  loc_D07E17: LitStr ","
  loc_D07E1A: FLdRfVar var_1B0
  loc_D07E1D: CStrVarVal var_11C
  loc_D07E21: ImpAdCallI2 Replace(, , , , , )
  loc_D07E26: FStStrNoPop var_120
  loc_D07E29: ConcatStr
  loc_D07E2A: FStStrNoPop var_124
  loc_D07E2D: LitStr ", TotaLcde = ImpoLcde - DecaLcde "
  loc_D07E30: ConcatStr
  loc_D07E31: FStStrNoPop var_128
  loc_D07E34: LitStr " WHERE PeriLiqu = "
  loc_D07E37: ConcatStr
  loc_D07E38: CVarStr var_1E0
  loc_D07E3B: FLdRfVar var_1C0
  loc_D07E3E: FLdRfVar var_1F8
  loc_D07E41: LitVarStr var_1D0, "PeriLiqu"
  loc_D07E46: PopAdLdVar
  loc_D07E47: FLdRfVar var_1E4
  loc_D07E4A: FLdPr Me
  loc_D07E4D: MemLdPr global_60
  loc_D07E50:  = Me.Fields
  loc_D07E55: FLdPr var_1E4
  loc_D07E58: from_stack_2 = Me.Item(from_stack_1)
  loc_D07E5D: FLdPr var_1F8
  loc_D07E60:  = Me.Value
  loc_D07E65: FLdRfVar var_1C0
  loc_D07E68: ConcatVar var_208
  loc_D07E6C: LitVarStr var_1F4, " AND Bimeliqu = "
  loc_D07E71: ConcatVar var_218
  loc_D07E75: FLdRfVar var_238
  loc_D07E78: FLdRfVar var_250
  loc_D07E7B: LitVarStr var_228, "BimeLiqu"
  loc_D07E80: PopAdLdVar
  loc_D07E81: FLdRfVar var_23C
  loc_D07E84: FLdPr Me
  loc_D07E87: MemLdPr global_60
  loc_D07E8A:  = Me.Fields
  loc_D07E8F: FLdPr var_23C
  loc_D07E92: from_stack_2 = Me.Item(from_stack_1)
  loc_D07E97: FLdPr var_250
  loc_D07E9A:  = Me.Value
  loc_D07E9F: FLdRfVar var_238
  loc_D07EA2: ConcatVar var_260
  loc_D07EA6: LitVarStr var_24C, " AND CodiTili = "
  loc_D07EAB: ConcatVar var_270
  loc_D07EAF: FLdRfVar var_290
  loc_D07EB2: FLdRfVar var_2A8
  loc_D07EB5: LitVarStr var_280, "CodiTili"
  loc_D07EBA: PopAdLdVar
  loc_D07EBB: FLdRfVar var_294
  loc_D07EBE: FLdPr Me
  loc_D07EC1: MemLdPr global_60
  loc_D07EC4:  = Me.Fields
  loc_D07EC9: FLdPr var_294
  loc_D07ECC: from_stack_2 = Me.Item(from_stack_1)
  loc_D07ED1: FLdPr var_2A8
  loc_D07ED4:  = Me.Value
  loc_D07ED9: FLdRfVar var_290
  loc_D07EDC: ConcatVar var_2B8
  loc_D07EE0: LitVarStr var_2A4, " AND NumeLiqu = "
  loc_D07EE5: ConcatVar var_2C8
  loc_D07EE9: FLdRfVar var_2E8
  loc_D07EEC: FLdRfVar var_300
  loc_D07EEF: LitVarStr var_2D8, "NumeLiqu"
  loc_D07EF4: PopAdLdVar
  loc_D07EF5: FLdRfVar var_2EC
  loc_D07EF8: FLdPr Me
  loc_D07EFB: MemLdPr global_60
  loc_D07EFE:  = Me.Fields
  loc_D07F03: FLdPr var_2EC
  loc_D07F06: from_stack_2 = Me.Item(from_stack_1)
  loc_D07F0B: FLdPr var_300
  loc_D07F0E:  = Me.Value
  loc_D07F13: FLdRfVar var_2E8
  loc_D07F16: ConcatVar var_310
  loc_D07F1A: LitVarStr var_2FC, " AND CodiDifu = "
  loc_D07F1F: ConcatVar var_320
  loc_D07F23: FLdRfVar var_340
  loc_D07F26: FLdRfVar var_3BC
  loc_D07F29: LitVarStr var_330, "CodiDifu"
  loc_D07F2E: PopAdLdVar
  loc_D07F2F: FLdRfVar var_3A8
  loc_D07F32: FLdPr Me
  loc_D07F35: MemLdPr global_60
  loc_D07F38:  = Me.Fields
  loc_D07F3D: FLdPr var_3A8
  loc_D07F40: from_stack_2 = Me.Item(from_stack_1)
  loc_D07F45: FLdPr var_3BC
  loc_D07F48:  = Me.Value
  loc_D07F4D: FLdRfVar var_340
  loc_D07F50: ConcatVar var_360
  loc_D07F54: LitVarStr var_350, " AND CodiConc = '"
  loc_D07F59: ConcatVar var_380
  loc_D07F5D: FLdRfVar var_3A0
  loc_D07F60: FLdRfVar var_414
  loc_D07F63: LitVarStr var_370, "CodiConc"
  loc_D07F68: PopAdLdVar
  loc_D07F69: FLdRfVar var_400
  loc_D07F6C: FLdPr Me
  loc_D07F6F: MemLdPr global_60
  loc_D07F72:  = Me.Fields
  loc_D07F77: FLdPr var_400
  loc_D07F7A: from_stack_2 = Me.Item(from_stack_1)
  loc_D07F7F: FLdPr var_414
  loc_D07F82:  = Me.Value
  loc_D07F87: FLdRfVar var_3A0
  loc_D07F8A: ConcatVar var_3CC
  loc_D07F8E: LitVarStr var_390, "'"
  loc_D07F93: ConcatVar var_3DC
  loc_D07F97: LitVarStr var_3B8, " AND TipoVenc = "
  loc_D07F9C: ConcatVar var_3FC
  loc_D07FA0: FLdRfVar var_424
  loc_D07FA3: FLdRfVar var_46C
  loc_D07FA6: LitVarStr var_3EC, "TipoVenc"
  loc_D07FAB: PopAdLdVar
  loc_D07FAC: FLdRfVar var_458
  loc_D07FAF: FLdPr Me
  loc_D07FB2: MemLdPr global_60
  loc_D07FB5:  = Me.Fields
  loc_D07FBA: FLdPr var_458
  loc_D07FBD: from_stack_2 = Me.Item(from_stack_1)
  loc_D07FC2: FLdPr var_46C
  loc_D07FC5:  = Me.Value
  loc_D07FCA: FLdRfVar var_424
  loc_D07FCD: ConcatVar var_434
  loc_D07FD1: LitVarStr var_410, " AND PeriOrde = "
  loc_D07FD6: ConcatVar var_454
  loc_D07FDA: FLdRfVar var_47C
  loc_D07FDD: FLdRfVar var_4C4
  loc_D07FE0: LitVarStr var_444, "PeriOrde"
  loc_D07FE5: PopAdLdVar
  loc_D07FE6: FLdRfVar var_4B0
  loc_D07FE9: FLdPr Me
  loc_D07FEC: MemLdPr global_60
  loc_D07FEF:  = Me.Fields
  loc_D07FF4: FLdPr var_4B0
  loc_D07FF7: from_stack_2 = Me.Item(from_stack_1)
  loc_D07FFC: FLdPr var_4C4
  loc_D07FFF:  = Me.Value
  loc_D08004: FLdRfVar var_47C
  loc_D08007: ConcatVar var_48C
  loc_D0800B: LitVarStr var_468, " AND CodiSece = "
  loc_D08010: ConcatVar var_4AC
  loc_D08014: FLdRfVar var_4D4
  loc_D08017: FLdRfVar var_51C
  loc_D0801A: LitVarStr var_49C, "CodiSece"
  loc_D0801F: PopAdLdVar
  loc_D08020: FLdRfVar var_508
  loc_D08023: FLdPr Me
  loc_D08026: MemLdPr global_60
  loc_D08029:  = Me.Fields
  loc_D0802E: FLdPr var_508
  loc_D08031: from_stack_2 = Me.Item(from_stack_1)
  loc_D08036: FLdPr var_51C
  loc_D08039:  = Me.Value
  loc_D0803E: FLdRfVar var_4D4
  loc_D08041: ConcatVar var_4E4
  loc_D08045: LitVarStr var_4C0, " AND NumeLcde = "
  loc_D0804A: ConcatVar var_504
  loc_D0804E: FLdRfVar var_52C
  loc_D08051: FLdRfVar var_788
  loc_D08054: LitVarStr var_4F4, "NumeLcde"
  loc_D08059: PopAdLdVar
  loc_D0805A: FLdRfVar var_784
  loc_D0805D: FLdPr Me
  loc_D08060: MemLdPr global_60
  loc_D08063:  = Me.Fields
  loc_D08068: FLdPr var_784
  loc_D0806B: from_stack_2 = Me.Item(from_stack_1)
  loc_D08070: FLdPr var_788
  loc_D08073:  = Me.Value
  loc_D08078: FLdRfVar var_52C
  loc_D0807B: ConcatVar var_53C
  loc_D0807F: CStrVarVal var_12C
  loc_D08083: Call EjecutarRsCls(from_stack_1v)
  loc_D08088: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_D08095: FFreeAd var_15C = "": var_170 = "": var_1E4 = "": var_1F8 = "": var_23C = "": var_250 = "": var_294 = "": var_2A8 = "": var_2EC = "": var_300 = "": var_3A8 = "": var_3BC = "": var_400 = "": var_414 = "": var_458 = "": var_46C = "": var_4B0 = "": var_4C4 = "": var_508 = "": var_51C = "": var_784 = ""
  loc_D080C4: FFreeVar var_4E4 = "": var_504 = "": var_52C = "": var_53C = "": var_180 = "": var_1A0 = "": var_1B0 = "": var_1E0 = "": var_1C0 = "": var_208 = "": var_218 = "": var_238 = "": var_260 = "": var_270 = "": var_290 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_310 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3CC = "": var_3DC = "": var_3FC = "": var_424 = "": var_434 = "": var_454 = "": var_47C = "": var_48C = "": var_4AC = ""
  loc_D0810B: Branch loc_D08568
  loc_D0810E: FLdRfVar var_180
  loc_D08111: FLdRfVar var_170
  loc_D08114: LitVarStr var_16C, "ImpoLcde"
  loc_D08119: PopAdLdVar
  loc_D0811A: FLdRfVar var_15C
  loc_D0811D: FLdPr Me
  loc_D08120: MemLdPr global_64
  loc_D08123:  = Me.Fields
  loc_D08128: FLdPr var_15C
  loc_D0812B: from_stack_2 = Me.Item(from_stack_1)
  loc_D08130: FLdPr var_170
  loc_D08133:  = Me.Value
  loc_D08138: FLdFPR8 CrafLice
  loc_D0813B: FLdRfVar var_180
  loc_D0813E: FnCDblVar
  loc_D08140: LtR8
  loc_D08141: FFreeAd var_15C = ""
  loc_D08148: FFree1Var var_180 = ""
  loc_D0814B: BranchF loc_D08568
  loc_D0814E: LitStr "SELECT * FROM licedeta WHERE PeriLiqu = "
  loc_D08151: FLdI2 PeriLiqu
  loc_D08154: CStrUI1
  loc_D08156: FStStrNoPop var_11C
  loc_D08159: ConcatStr
  loc_D0815A: FStStrNoPop var_120
  loc_D0815D: LitStr " AND Bimeliqu = "
  loc_D08160: ConcatStr
  loc_D08161: FStStrNoPop var_124
  loc_D08164: FLdUI1
  loc_D08168: CStrI2
  loc_D0816A: FStStrNoPop var_128
  loc_D0816D: ConcatStr
  loc_D0816E: FStStrNoPop var_12C
  loc_D08171: LitStr " AND CodiTili = "
  loc_D08174: ConcatStr
  loc_D08175: FStStrNoPop var_130
  loc_D08178: FLdUI1
  loc_D0817C: CStrI2
  loc_D0817E: FStStrNoPop var_134
  loc_D08181: ConcatStr
  loc_D08182: FStStrNoPop var_138
  loc_D08185: LitStr " AND NumeLiqu = "
  loc_D08188: ConcatStr
  loc_D08189: FStStrNoPop var_13C
  loc_D0818C: FLdI2 NumeLiqu
  loc_D0818F: CStrUI1
  loc_D08191: FStStrNoPop var_140
  loc_D08194: ConcatStr
  loc_D08195: FStStrNoPop var_144
  loc_D08198: LitStr " AND CodiDifu = "
  loc_D0819B: ConcatStr
  loc_D0819C: FStStrNoPop var_148
  loc_D0819F: ILdRf CodiDifu
  loc_D081A2: CStrI4
  loc_D081A4: FStStrNoPop var_14C
  loc_D081A7: ConcatStr
  loc_D081A8: FStStrNoPop var_150
  loc_D081AB: LitStr " AND CodiConc = '"
  loc_D081AE: ConcatStr
  loc_D081AF: FStStrNoPop var_660
  loc_D081B2: ILdRf var_88
  loc_D081B5: ConcatStr
  loc_D081B6: FStStrNoPop var_664
  loc_D081B9: LitStr "'"
  loc_D081BC: ConcatStr
  loc_D081BD: FStStrNoPop var_668
  loc_D081C0: LitStr " AND TipoVenc = "
  loc_D081C3: ConcatStr
  loc_D081C4: FStStrNoPop var_66C
  loc_D081C7: FLdUI1
  loc_D081CB: CStrI2
  loc_D081CD: FStStrNoPop var_670
  loc_D081D0: ConcatStr
  loc_D081D1: FStStrNoPop var_674
  loc_D081D4: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,PeriOrde,CodiSece,NumeLcde"
  loc_D081D7: ConcatStr
  loc_D081D8: FStStrNoPop var_678
  loc_D081DB: Call EjecutarRsCls1(from_stack_1v)
  loc_D081E0: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = ""
  loc_D0820D: FLdRfVar var_154
  loc_D08210: FLdPr Me
  loc_D08213: MemLdPr global_60
  loc_D08216:  = Me.RecordCount
  loc_D0821B: ILdRf var_154
  loc_D0821E: LitI4 0
  loc_D08223: GtI4
  loc_D08224: BranchF loc_D08568
  loc_D08227: FLdPr Me
  loc_D0822A: MemLdPr global_60
  loc_D0822D: Me.MoveFirst
  loc_D08232: FLdRfVar var_180
  loc_D08235: FLdRfVar var_170
  loc_D08238: LitVarStr var_16C, "ImpoLcde"
  loc_D0823D: PopAdLdVar
  loc_D0823E: FLdRfVar var_15C
  loc_D08241: FLdPr Me
  loc_D08244: MemLdPr global_64
  loc_D08247:  = Me.Fields
  loc_D0824C: FLdPr var_15C
  loc_D0824F: from_stack_2 = Me.Item(from_stack_1)
  loc_D08254: FLdPr var_170
  loc_D08257:  = Me.Value
  loc_D0825C: LitStr " UPDATE licedeta SET ImpoLcde = ImpoLcde - "
  loc_D0825F: LitI4 0
  loc_D08264: LitI4 -1
  loc_D08269: LitI4 1
  loc_D0826E: LitStr "."
  loc_D08271: LitStr ","
  loc_D08274: FLdRfVar var_180
  loc_D08277: FnCDblVar
  loc_D08279: FLdFPR8 CrafLice
  loc_D0827C: SubR4
  loc_D0827D: CStrR8
  loc_D0827F: FStStrNoPop var_11C
  loc_D08282: ImpAdCallI2 Replace(, , , , , )
  loc_D08287: FStStrNoPop var_120
  loc_D0828A: ConcatStr
  loc_D0828B: FStStrNoPop var_124
  loc_D0828E: LitStr ", TotaLcde = ImpoLcde - DecaLcde "
  loc_D08291: ConcatStr
  loc_D08292: FStStrNoPop var_128
  loc_D08295: LitStr " WHERE PeriLiqu = "
  loc_D08298: ConcatStr
  loc_D08299: CVarStr var_1B0
  loc_D0829C: FLdRfVar var_1A0
  loc_D0829F: FLdRfVar var_1F8
  loc_D082A2: LitVarStr var_190, "PeriLiqu"
  loc_D082A7: PopAdLdVar
  loc_D082A8: FLdRfVar var_1E4
  loc_D082AB: FLdPr Me
  loc_D082AE: MemLdPr global_60
  loc_D082B1:  = Me.Fields
  loc_D082B6: FLdPr var_1E4
  loc_D082B9: from_stack_2 = Me.Item(from_stack_1)
  loc_D082BE: FLdPr var_1F8
  loc_D082C1:  = Me.Value
  loc_D082C6: FLdRfVar var_1A0
  loc_D082C9: ConcatVar var_1C0
  loc_D082CD: LitVarStr var_1D0, " AND Bimeliqu = "
  loc_D082D2: ConcatVar var_1E0
  loc_D082D6: FLdRfVar var_208
  loc_D082D9: FLdRfVar var_250
  loc_D082DC: LitVarStr var_1F4, "BimeLiqu"
  loc_D082E1: PopAdLdVar
  loc_D082E2: FLdRfVar var_23C
  loc_D082E5: FLdPr Me
  loc_D082E8: MemLdPr global_60
  loc_D082EB:  = Me.Fields
  loc_D082F0: FLdPr var_23C
  loc_D082F3: from_stack_2 = Me.Item(from_stack_1)
  loc_D082F8: FLdPr var_250
  loc_D082FB:  = Me.Value
  loc_D08300: FLdRfVar var_208
  loc_D08303: ConcatVar var_218
  loc_D08307: LitVarStr var_228, " AND CodiTili = "
  loc_D0830C: ConcatVar var_238
  loc_D08310: FLdRfVar var_260
  loc_D08313: FLdRfVar var_2A8
  loc_D08316: LitVarStr var_24C, "CodiTili"
  loc_D0831B: PopAdLdVar
  loc_D0831C: FLdRfVar var_294
  loc_D0831F: FLdPr Me
  loc_D08322: MemLdPr global_60
  loc_D08325:  = Me.Fields
  loc_D0832A: FLdPr var_294
  loc_D0832D: from_stack_2 = Me.Item(from_stack_1)
  loc_D08332: FLdPr var_2A8
  loc_D08335:  = Me.Value
  loc_D0833A: FLdRfVar var_260
  loc_D0833D: ConcatVar var_270
  loc_D08341: LitVarStr var_280, " AND NumeLiqu = "
  loc_D08346: ConcatVar var_290
  loc_D0834A: FLdRfVar var_2B8
  loc_D0834D: FLdRfVar var_300
  loc_D08350: LitVarStr var_2A4, "NumeLiqu"
  loc_D08355: PopAdLdVar
  loc_D08356: FLdRfVar var_2EC
  loc_D08359: FLdPr Me
  loc_D0835C: MemLdPr global_60
  loc_D0835F:  = Me.Fields
  loc_D08364: FLdPr var_2EC
  loc_D08367: from_stack_2 = Me.Item(from_stack_1)
  loc_D0836C: FLdPr var_300
  loc_D0836F:  = Me.Value
  loc_D08374: FLdRfVar var_2B8
  loc_D08377: ConcatVar var_2C8
  loc_D0837B: LitVarStr var_2D8, " AND CodiDifu = "
  loc_D08380: ConcatVar var_2E8
  loc_D08384: FLdRfVar var_310
  loc_D08387: FLdRfVar var_3BC
  loc_D0838A: LitVarStr var_2FC, "CodiDifu"
  loc_D0838F: PopAdLdVar
  loc_D08390: FLdRfVar var_3A8
  loc_D08393: FLdPr Me
  loc_D08396: MemLdPr global_60
  loc_D08399:  = Me.Fields
  loc_D0839E: FLdPr var_3A8
  loc_D083A1: from_stack_2 = Me.Item(from_stack_1)
  loc_D083A6: FLdPr var_3BC
  loc_D083A9:  = Me.Value
  loc_D083AE: FLdRfVar var_310
  loc_D083B1: ConcatVar var_320
  loc_D083B5: LitVarStr var_330, " AND CodiConc = '"
  loc_D083BA: ConcatVar var_340
  loc_D083BE: FLdRfVar var_360
  loc_D083C1: FLdRfVar var_414
  loc_D083C4: LitVarStr var_350, "CodiConc"
  loc_D083C9: PopAdLdVar
  loc_D083CA: FLdRfVar var_400
  loc_D083CD: FLdPr Me
  loc_D083D0: MemLdPr global_60
  loc_D083D3:  = Me.Fields
  loc_D083D8: FLdPr var_400
  loc_D083DB: from_stack_2 = Me.Item(from_stack_1)
  loc_D083E0: FLdPr var_414
  loc_D083E3:  = Me.Value
  loc_D083E8: FLdRfVar var_360
  loc_D083EB: ConcatVar var_380
  loc_D083EF: LitVarStr var_370, "'"
  loc_D083F4: ConcatVar var_3A0
  loc_D083F8: LitVarStr var_390, " AND TipoVenc = "
  loc_D083FD: ConcatVar var_3CC
  loc_D08401: FLdRfVar var_3DC
  loc_D08404: FLdRfVar var_46C
  loc_D08407: LitVarStr var_3B8, "TipoVenc"
  loc_D0840C: PopAdLdVar
  loc_D0840D: FLdRfVar var_458
  loc_D08410: FLdPr Me
  loc_D08413: MemLdPr global_60
  loc_D08416:  = Me.Fields
  loc_D0841B: FLdPr var_458
  loc_D0841E: from_stack_2 = Me.Item(from_stack_1)
  loc_D08423: FLdPr var_46C
  loc_D08426:  = Me.Value
  loc_D0842B: FLdRfVar var_3DC
  loc_D0842E: ConcatVar var_3FC
  loc_D08432: LitVarStr var_3EC, " AND PeriOrde = "
  loc_D08437: ConcatVar var_424
  loc_D0843B: FLdRfVar var_434
  loc_D0843E: FLdRfVar var_4C4
  loc_D08441: LitVarStr var_410, "PeriOrde"
  loc_D08446: PopAdLdVar
  loc_D08447: FLdRfVar var_4B0
  loc_D0844A: FLdPr Me
  loc_D0844D: MemLdPr global_60
  loc_D08450:  = Me.Fields
  loc_D08455: FLdPr var_4B0
  loc_D08458: from_stack_2 = Me.Item(from_stack_1)
  loc_D0845D: FLdPr var_4C4
  loc_D08460:  = Me.Value
  loc_D08465: FLdRfVar var_434
  loc_D08468: ConcatVar var_454
  loc_D0846C: LitVarStr var_444, " AND CodiSece = "
  loc_D08471: ConcatVar var_47C
  loc_D08475: FLdRfVar var_48C
  loc_D08478: FLdRfVar var_51C
  loc_D0847B: LitVarStr var_468, "CodiSece"
  loc_D08480: PopAdLdVar
  loc_D08481: FLdRfVar var_508
  loc_D08484: FLdPr Me
  loc_D08487: MemLdPr global_60
  loc_D0848A:  = Me.Fields
  loc_D0848F: FLdPr var_508
  loc_D08492: from_stack_2 = Me.Item(from_stack_1)
  loc_D08497: FLdPr var_51C
  loc_D0849A:  = Me.Value
  loc_D0849F: FLdRfVar var_48C
  loc_D084A2: ConcatVar var_4AC
  loc_D084A6: LitVarStr var_49C, " AND NumeLcde = "
  loc_D084AB: ConcatVar var_4D4
  loc_D084AF: FLdRfVar var_4E4
  loc_D084B2: FLdRfVar var_788
  loc_D084B5: LitVarStr var_4C0, "NumeLcde"
  loc_D084BA: PopAdLdVar
  loc_D084BB: FLdRfVar var_784
  loc_D084BE: FLdPr Me
  loc_D084C1: MemLdPr global_60
  loc_D084C4:  = Me.Fields
  loc_D084C9: FLdPr var_784
  loc_D084CC: from_stack_2 = Me.Item(from_stack_1)
  loc_D084D1: FLdPr var_788
  loc_D084D4:  = Me.Value
  loc_D084D9: FLdRfVar var_4E4
  loc_D084DC: ConcatVar var_504
  loc_D084E0: CStrVarVal var_12C
  loc_D084E4: Call EjecutarRsCls(from_stack_1v)
  loc_D084E9: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_D084F6: FFreeAd var_15C = "": var_170 = "": var_1E4 = "": var_1F8 = "": var_23C = "": var_250 = "": var_294 = "": var_2A8 = "": var_2EC = "": var_300 = "": var_3A8 = "": var_3BC = "": var_400 = "": var_414 = "": var_458 = "": var_46C = "": var_4B0 = "": var_4C4 = "": var_508 = "": var_51C = "": var_784 = ""
  loc_D08525: FFreeVar var_4E4 = "": var_504 = "": var_180 = "": var_1B0 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_208 = "": var_218 = "": var_238 = "": var_260 = "": var_270 = "": var_290 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_310 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3CC = "": var_3DC = "": var_3FC = "": var_424 = "": var_434 = "": var_454 = "": var_47C = "": var_48C = "": var_4AC = ""
  loc_D08568: FLdFPR8 CodiCall
  loc_D0856B: CVarR8
  loc_D0856F: HardType
  loc_D08570: FLdRfVar var_180
  loc_D08573: FLdRfVar var_170
  loc_D08576: LitVarStr var_16C, "DecaLcde"
  loc_D0857B: PopAdLdVar
  loc_D0857C: FLdRfVar var_15C
  loc_D0857F: FLdPr Me
  loc_D08582: MemLdPr global_64
  loc_D08585:  = Me.Fields
  loc_D0858A: FLdPr var_15C
  loc_D0858D: from_stack_2 = Me.Item(from_stack_1)
  loc_D08592: FLdPr var_170
  loc_D08595:  = Me.Value
  loc_D0859A: FLdRfVar var_180
  loc_D0859D: NeVarBool
  loc_D0859F: FFreeAd var_15C = ""
  loc_D085A6: FFree1Var var_180 = ""
  loc_D085A9: BranchF loc_D08E91
  loc_D085AC: FLdRfVar var_180
  loc_D085AF: FLdRfVar var_170
  loc_D085B2: LitVarStr var_16C, "DecaLcde"
  loc_D085B7: PopAdLdVar
  loc_D085B8: FLdRfVar var_15C
  loc_D085BB: FLdPr Me
  loc_D085BE: MemLdPr global_64
  loc_D085C1:  = Me.Fields
  loc_D085C6: FLdPr var_15C
  loc_D085C9: from_stack_2 = Me.Item(from_stack_1)
  loc_D085CE: FLdPr var_170
  loc_D085D1:  = Me.Value
  loc_D085D6: FLdFPR8 CodiCall
  loc_D085D9: FLdRfVar var_180
  loc_D085DC: FnCDblVar
  loc_D085DE: GtR4
  loc_D085DF: FFreeAd var_15C = ""
  loc_D085E6: FFree1Var var_180 = ""
  loc_D085E9: BranchF loc_D08A20
  loc_D085EC: LitStr "SELECT * FROM licedeta WHERE PeriLiqu = "
  loc_D085EF: FLdI2 PeriLiqu
  loc_D085F2: CStrUI1
  loc_D085F4: FStStrNoPop var_11C
  loc_D085F7: ConcatStr
  loc_D085F8: FStStrNoPop var_120
  loc_D085FB: LitStr " AND Bimeliqu = "
  loc_D085FE: ConcatStr
  loc_D085FF: FStStrNoPop var_124
  loc_D08602: FLdUI1
  loc_D08606: CStrI2
  loc_D08608: FStStrNoPop var_128
  loc_D0860B: ConcatStr
  loc_D0860C: FStStrNoPop var_12C
  loc_D0860F: LitStr " AND CodiTili = "
  loc_D08612: ConcatStr
  loc_D08613: FStStrNoPop var_130
  loc_D08616: FLdUI1
  loc_D0861A: CStrI2
  loc_D0861C: FStStrNoPop var_134
  loc_D0861F: ConcatStr
  loc_D08620: FStStrNoPop var_138
  loc_D08623: LitStr " AND NumeLiqu = "
  loc_D08626: ConcatStr
  loc_D08627: FStStrNoPop var_13C
  loc_D0862A: FLdI2 NumeLiqu
  loc_D0862D: CStrUI1
  loc_D0862F: FStStrNoPop var_140
  loc_D08632: ConcatStr
  loc_D08633: FStStrNoPop var_144
  loc_D08636: LitStr " AND CodiDifu = "
  loc_D08639: ConcatStr
  loc_D0863A: FStStrNoPop var_148
  loc_D0863D: ILdRf CodiDifu
  loc_D08640: CStrI4
  loc_D08642: FStStrNoPop var_14C
  loc_D08645: ConcatStr
  loc_D08646: FStStrNoPop var_150
  loc_D08649: LitStr " AND CodiConc = '"
  loc_D0864C: ConcatStr
  loc_D0864D: FStStrNoPop var_660
  loc_D08650: ILdRf var_88
  loc_D08653: ConcatStr
  loc_D08654: FStStrNoPop var_664
  loc_D08657: LitStr "'"
  loc_D0865A: ConcatStr
  loc_D0865B: FStStrNoPop var_668
  loc_D0865E: LitStr " AND TipoVenc = "
  loc_D08661: ConcatStr
  loc_D08662: FStStrNoPop var_66C
  loc_D08665: FLdUI1
  loc_D08669: CStrI2
  loc_D0866B: FStStrNoPop var_670
  loc_D0866E: ConcatStr
  loc_D0866F: FStStrNoPop var_674
  loc_D08672: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,PeriOrde,CodiSece,NumeLcde"
  loc_D08675: ConcatStr
  loc_D08676: FStStrNoPop var_678
  loc_D08679: Call EjecutarRsCls1(from_stack_1v)
  loc_D0867E: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = ""
  loc_D086AB: FLdRfVar var_154
  loc_D086AE: FLdPr Me
  loc_D086B1: MemLdPr global_60
  loc_D086B4:  = Me.RecordCount
  loc_D086B9: ILdRf var_154
  loc_D086BC: LitI4 0
  loc_D086C1: GtI4
  loc_D086C2: BranchF loc_D08A1D
  loc_D086C5: FLdPr Me
  loc_D086C8: MemLdPr global_60
  loc_D086CB: Me.MoveFirst
  loc_D086D0: FLdRfVar var_180
  loc_D086D3: FLdRfVar var_170
  loc_D086D6: LitVarStr var_16C, "DecaLcde"
  loc_D086DB: PopAdLdVar
  loc_D086DC: FLdRfVar var_15C
  loc_D086DF: FLdPr Me
  loc_D086E2: MemLdPr global_64
  loc_D086E5:  = Me.Fields
  loc_D086EA: FLdPr var_15C
  loc_D086ED: from_stack_2 = Me.Item(from_stack_1)
  loc_D086F2: FLdPr var_170
  loc_D086F5:  = Me.Value
  loc_D086FA: LitI4 2
  loc_D086FF: FLdFPR8 CodiCall
  loc_D08702: FLdRfVar var_180
  loc_D08705: FnCDblVar
  loc_D08707: SubR4
  loc_D08708: CVarR8
  loc_D0870C: FLdRfVar var_1B0
  loc_D0870F: ImpAdCallFPR4  = Round(, )
  loc_D08714: LitStr " UPDATE licedeta SET DecaLcde = DecaLcde + "
  loc_D08717: LitI4 0
  loc_D0871C: LitI4 -1
  loc_D08721: LitI4 1
  loc_D08726: LitStr "."
  loc_D08729: LitStr ","
  loc_D0872C: FLdRfVar var_1B0
  loc_D0872F: CStrVarVal var_11C
  loc_D08733: ImpAdCallI2 Replace(, , , , , )
  loc_D08738: FStStrNoPop var_120
  loc_D0873B: ConcatStr
  loc_D0873C: FStStrNoPop var_124
  loc_D0873F: LitStr ", TotaLcde = ImpoLcde - DecaLcde "
  loc_D08742: ConcatStr
  loc_D08743: FStStrNoPop var_128
  loc_D08746: LitStr " WHERE PeriLiqu = "
  loc_D08749: ConcatStr
  loc_D0874A: CVarStr var_1E0
  loc_D0874D: FLdRfVar var_1C0
  loc_D08750: FLdRfVar var_1F8
  loc_D08753: LitVarStr var_1D0, "PeriLiqu"
  loc_D08758: PopAdLdVar
  loc_D08759: FLdRfVar var_1E4
  loc_D0875C: FLdPr Me
  loc_D0875F: MemLdPr global_60
  loc_D08762:  = Me.Fields
  loc_D08767: FLdPr var_1E4
  loc_D0876A: from_stack_2 = Me.Item(from_stack_1)
  loc_D0876F: FLdPr var_1F8
  loc_D08772:  = Me.Value
  loc_D08777: FLdRfVar var_1C0
  loc_D0877A: ConcatVar var_208
  loc_D0877E: LitVarStr var_1F4, " AND Bimeliqu = "
  loc_D08783: ConcatVar var_218
  loc_D08787: FLdRfVar var_238
  loc_D0878A: FLdRfVar var_250
  loc_D0878D: LitVarStr var_228, "BimeLiqu"
  loc_D08792: PopAdLdVar
  loc_D08793: FLdRfVar var_23C
  loc_D08796: FLdPr Me
  loc_D08799: MemLdPr global_60
  loc_D0879C:  = Me.Fields
  loc_D087A1: FLdPr var_23C
  loc_D087A4: from_stack_2 = Me.Item(from_stack_1)
  loc_D087A9: FLdPr var_250
  loc_D087AC:  = Me.Value
  loc_D087B1: FLdRfVar var_238
  loc_D087B4: ConcatVar var_260
  loc_D087B8: LitVarStr var_24C, " AND CodiTili = "
  loc_D087BD: ConcatVar var_270
  loc_D087C1: FLdRfVar var_290
  loc_D087C4: FLdRfVar var_2A8
  loc_D087C7: LitVarStr var_280, "CodiTili"
  loc_D087CC: PopAdLdVar
  loc_D087CD: FLdRfVar var_294
  loc_D087D0: FLdPr Me
  loc_D087D3: MemLdPr global_60
  loc_D087D6:  = Me.Fields
  loc_D087DB: FLdPr var_294
  loc_D087DE: from_stack_2 = Me.Item(from_stack_1)
  loc_D087E3: FLdPr var_2A8
  loc_D087E6:  = Me.Value
  loc_D087EB: FLdRfVar var_290
  loc_D087EE: ConcatVar var_2B8
  loc_D087F2: LitVarStr var_2A4, " AND NumeLiqu = "
  loc_D087F7: ConcatVar var_2C8
  loc_D087FB: FLdRfVar var_2E8
  loc_D087FE: FLdRfVar var_300
  loc_D08801: LitVarStr var_2D8, "NumeLiqu"
  loc_D08806: PopAdLdVar
  loc_D08807: FLdRfVar var_2EC
  loc_D0880A: FLdPr Me
  loc_D0880D: MemLdPr global_60
  loc_D08810:  = Me.Fields
  loc_D08815: FLdPr var_2EC
  loc_D08818: from_stack_2 = Me.Item(from_stack_1)
  loc_D0881D: FLdPr var_300
  loc_D08820:  = Me.Value
  loc_D08825: FLdRfVar var_2E8
  loc_D08828: ConcatVar var_310
  loc_D0882C: LitVarStr var_2FC, " AND CodiDifu = "
  loc_D08831: ConcatVar var_320
  loc_D08835: FLdRfVar var_340
  loc_D08838: FLdRfVar var_3BC
  loc_D0883B: LitVarStr var_330, "CodiDifu"
  loc_D08840: PopAdLdVar
  loc_D08841: FLdRfVar var_3A8
  loc_D08844: FLdPr Me
  loc_D08847: MemLdPr global_60
  loc_D0884A:  = Me.Fields
  loc_D0884F: FLdPr var_3A8
  loc_D08852: from_stack_2 = Me.Item(from_stack_1)
  loc_D08857: FLdPr var_3BC
  loc_D0885A:  = Me.Value
  loc_D0885F: FLdRfVar var_340
  loc_D08862: ConcatVar var_360
  loc_D08866: LitVarStr var_350, " AND CodiConc = '"
  loc_D0886B: ConcatVar var_380
  loc_D0886F: FLdRfVar var_3A0
  loc_D08872: FLdRfVar var_414
  loc_D08875: LitVarStr var_370, "CodiConc"
  loc_D0887A: PopAdLdVar
  loc_D0887B: FLdRfVar var_400
  loc_D0887E: FLdPr Me
  loc_D08881: MemLdPr global_60
  loc_D08884:  = Me.Fields
  loc_D08889: FLdPr var_400
  loc_D0888C: from_stack_2 = Me.Item(from_stack_1)
  loc_D08891: FLdPr var_414
  loc_D08894:  = Me.Value
  loc_D08899: FLdRfVar var_3A0
  loc_D0889C: ConcatVar var_3CC
  loc_D088A0: LitVarStr var_390, "'"
  loc_D088A5: ConcatVar var_3DC
  loc_D088A9: LitVarStr var_3B8, " AND TipoVenc = "
  loc_D088AE: ConcatVar var_3FC
  loc_D088B2: FLdRfVar var_424
  loc_D088B5: FLdRfVar var_46C
  loc_D088B8: LitVarStr var_3EC, "TipoVenc"
  loc_D088BD: PopAdLdVar
  loc_D088BE: FLdRfVar var_458
  loc_D088C1: FLdPr Me
  loc_D088C4: MemLdPr global_60
  loc_D088C7:  = Me.Fields
  loc_D088CC: FLdPr var_458
  loc_D088CF: from_stack_2 = Me.Item(from_stack_1)
  loc_D088D4: FLdPr var_46C
  loc_D088D7:  = Me.Value
  loc_D088DC: FLdRfVar var_424
  loc_D088DF: ConcatVar var_434
  loc_D088E3: LitVarStr var_410, " AND PeriOrde = "
  loc_D088E8: ConcatVar var_454
  loc_D088EC: FLdRfVar var_47C
  loc_D088EF: FLdRfVar var_4C4
  loc_D088F2: LitVarStr var_444, "PeriOrde"
  loc_D088F7: PopAdLdVar
  loc_D088F8: FLdRfVar var_4B0
  loc_D088FB: FLdPr Me
  loc_D088FE: MemLdPr global_60
  loc_D08901:  = Me.Fields
  loc_D08906: FLdPr var_4B0
  loc_D08909: from_stack_2 = Me.Item(from_stack_1)
  loc_D0890E: FLdPr var_4C4
  loc_D08911:  = Me.Value
  loc_D08916: FLdRfVar var_47C
  loc_D08919: ConcatVar var_48C
  loc_D0891D: LitVarStr var_468, " AND CodiSece = "
  loc_D08922: ConcatVar var_4AC
  loc_D08926: FLdRfVar var_4D4
  loc_D08929: FLdRfVar var_51C
  loc_D0892C: LitVarStr var_49C, "CodiSece"
  loc_D08931: PopAdLdVar
  loc_D08932: FLdRfVar var_508
  loc_D08935: FLdPr Me
  loc_D08938: MemLdPr global_60
  loc_D0893B:  = Me.Fields
  loc_D08940: FLdPr var_508
  loc_D08943: from_stack_2 = Me.Item(from_stack_1)
  loc_D08948: FLdPr var_51C
  loc_D0894B:  = Me.Value
  loc_D08950: FLdRfVar var_4D4
  loc_D08953: ConcatVar var_4E4
  loc_D08957: LitVarStr var_4C0, " AND NumeLcde = "
  loc_D0895C: ConcatVar var_504
  loc_D08960: FLdRfVar var_52C
  loc_D08963: FLdRfVar var_788
  loc_D08966: LitVarStr var_4F4, "NumeLcde"
  loc_D0896B: PopAdLdVar
  loc_D0896C: FLdRfVar var_784
  loc_D0896F: FLdPr Me
  loc_D08972: MemLdPr global_60
  loc_D08975:  = Me.Fields
  loc_D0897A: FLdPr var_784
  loc_D0897D: from_stack_2 = Me.Item(from_stack_1)
  loc_D08982: FLdPr var_788
  loc_D08985:  = Me.Value
  loc_D0898A: FLdRfVar var_52C
  loc_D0898D: ConcatVar var_53C
  loc_D08991: CStrVarVal var_12C
  loc_D08995: Call EjecutarRsCls(from_stack_1v)
  loc_D0899A: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_D089A7: FFreeAd var_15C = "": var_170 = "": var_1E4 = "": var_1F8 = "": var_23C = "": var_250 = "": var_294 = "": var_2A8 = "": var_2EC = "": var_300 = "": var_3A8 = "": var_3BC = "": var_400 = "": var_414 = "": var_458 = "": var_46C = "": var_4B0 = "": var_4C4 = "": var_508 = "": var_51C = "": var_784 = ""
  loc_D089D6: FFreeVar var_4E4 = "": var_504 = "": var_52C = "": var_53C = "": var_180 = "": var_1A0 = "": var_1B0 = "": var_1E0 = "": var_1C0 = "": var_208 = "": var_218 = "": var_238 = "": var_260 = "": var_270 = "": var_290 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_310 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3CC = "": var_3DC = "": var_3FC = "": var_424 = "": var_434 = "": var_454 = "": var_47C = "": var_48C = "": var_4AC = ""
  loc_D08A1D: Branch loc_D08E91
  loc_D08A20: FLdRfVar var_180
  loc_D08A23: FLdRfVar var_170
  loc_D08A26: LitVarStr var_16C, "DecaLcde"
  loc_D08A2B: PopAdLdVar
  loc_D08A2C: FLdRfVar var_15C
  loc_D08A2F: FLdPr Me
  loc_D08A32: MemLdPr global_64
  loc_D08A35:  = Me.Fields
  loc_D08A3A: FLdPr var_15C
  loc_D08A3D: from_stack_2 = Me.Item(from_stack_1)
  loc_D08A42: FLdPr var_170
  loc_D08A45:  = Me.Value
  loc_D08A4A: FLdFPR8 CodiCall
  loc_D08A4D: FLdRfVar var_180
  loc_D08A50: FnCDblVar
  loc_D08A52: LtR8
  loc_D08A53: FFreeAd var_15C = ""
  loc_D08A5A: FFree1Var var_180 = ""
  loc_D08A5D: BranchF loc_D08E91
  loc_D08A60: LitStr "SELECT * FROM licedeta WHERE PeriLiqu = "
  loc_D08A63: FLdI2 PeriLiqu
  loc_D08A66: CStrUI1
  loc_D08A68: FStStrNoPop var_11C
  loc_D08A6B: ConcatStr
  loc_D08A6C: FStStrNoPop var_120
  loc_D08A6F: LitStr " AND Bimeliqu = "
  loc_D08A72: ConcatStr
  loc_D08A73: FStStrNoPop var_124
  loc_D08A76: FLdUI1
  loc_D08A7A: CStrI2
  loc_D08A7C: FStStrNoPop var_128
  loc_D08A7F: ConcatStr
  loc_D08A80: FStStrNoPop var_12C
  loc_D08A83: LitStr " AND CodiTili = "
  loc_D08A86: ConcatStr
  loc_D08A87: FStStrNoPop var_130
  loc_D08A8A: FLdUI1
  loc_D08A8E: CStrI2
  loc_D08A90: FStStrNoPop var_134
  loc_D08A93: ConcatStr
  loc_D08A94: FStStrNoPop var_138
  loc_D08A97: LitStr " AND NumeLiqu = "
  loc_D08A9A: ConcatStr
  loc_D08A9B: FStStrNoPop var_13C
  loc_D08A9E: FLdI2 NumeLiqu
  loc_D08AA1: CStrUI1
  loc_D08AA3: FStStrNoPop var_140
  loc_D08AA6: ConcatStr
  loc_D08AA7: FStStrNoPop var_144
  loc_D08AAA: LitStr " AND CodiDifu = "
  loc_D08AAD: ConcatStr
  loc_D08AAE: FStStrNoPop var_148
  loc_D08AB1: ILdRf CodiDifu
  loc_D08AB4: CStrI4
  loc_D08AB6: FStStrNoPop var_14C
  loc_D08AB9: ConcatStr
  loc_D08ABA: FStStrNoPop var_150
  loc_D08ABD: LitStr " AND CodiConc = '"
  loc_D08AC0: ConcatStr
  loc_D08AC1: FStStrNoPop var_660
  loc_D08AC4: ILdRf var_88
  loc_D08AC7: ConcatStr
  loc_D08AC8: FStStrNoPop var_664
  loc_D08ACB: LitStr "'"
  loc_D08ACE: ConcatStr
  loc_D08ACF: FStStrNoPop var_668
  loc_D08AD2: LitStr " AND TipoVenc = "
  loc_D08AD5: ConcatStr
  loc_D08AD6: FStStrNoPop var_66C
  loc_D08AD9: FLdUI1
  loc_D08ADD: CStrI2
  loc_D08ADF: FStStrNoPop var_670
  loc_D08AE2: ConcatStr
  loc_D08AE3: FStStrNoPop var_674
  loc_D08AE6: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,PeriOrde,CodiSece,NumeLcde"
  loc_D08AE9: ConcatStr
  loc_D08AEA: FStStrNoPop var_678
  loc_D08AED: Call EjecutarRsCls1(from_stack_1v)
  loc_D08AF2: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = ""
  loc_D08B1F: FLdRfVar var_154
  loc_D08B22: FLdPr Me
  loc_D08B25: MemLdPr global_60
  loc_D08B28:  = Me.RecordCount
  loc_D08B2D: ILdRf var_154
  loc_D08B30: LitI4 0
  loc_D08B35: GtI4
  loc_D08B36: BranchF loc_D08E91
  loc_D08B39: FLdPr Me
  loc_D08B3C: MemLdPr global_60
  loc_D08B3F: Me.MoveFirst
  loc_D08B44: FLdRfVar var_180
  loc_D08B47: FLdRfVar var_170
  loc_D08B4A: LitVarStr var_16C, "DecaLcde"
  loc_D08B4F: PopAdLdVar
  loc_D08B50: FLdRfVar var_15C
  loc_D08B53: FLdPr Me
  loc_D08B56: MemLdPr global_64
  loc_D08B59:  = Me.Fields
  loc_D08B5E: FLdPr var_15C
  loc_D08B61: from_stack_2 = Me.Item(from_stack_1)
  loc_D08B66: FLdPr var_170
  loc_D08B69:  = Me.Value
  loc_D08B6E: LitI4 2
  loc_D08B73: FLdRfVar var_180
  loc_D08B76: FnCDblVar
  loc_D08B78: FLdFPR8 CodiCall
  loc_D08B7B: SubR4
  loc_D08B7C: CVarR8
  loc_D08B80: FLdRfVar var_1B0
  loc_D08B83: ImpAdCallFPR4  = Round(, )
  loc_D08B88: LitStr " UPDATE licedeta SET DecaLcde = DecaLcde - "
  loc_D08B8B: LitI4 0
  loc_D08B90: LitI4 -1
  loc_D08B95: LitI4 1
  loc_D08B9A: LitStr "."
  loc_D08B9D: LitStr ","
  loc_D08BA0: FLdRfVar var_1B0
  loc_D08BA3: CStrVarVal var_11C
  loc_D08BA7: ImpAdCallI2 Replace(, , , , , )
  loc_D08BAC: FStStrNoPop var_120
  loc_D08BAF: ConcatStr
  loc_D08BB0: FStStrNoPop var_124
  loc_D08BB3: LitStr ", TotaLcde = ImpoLcde - DecaLcde "
  loc_D08BB6: ConcatStr
  loc_D08BB7: FStStrNoPop var_128
  loc_D08BBA: LitStr " WHERE PeriLiqu = "
  loc_D08BBD: ConcatStr
  loc_D08BBE: CVarStr var_1E0
  loc_D08BC1: FLdRfVar var_1C0
  loc_D08BC4: FLdRfVar var_1F8
  loc_D08BC7: LitVarStr var_1D0, "PeriLiqu"
  loc_D08BCC: PopAdLdVar
  loc_D08BCD: FLdRfVar var_1E4
  loc_D08BD0: FLdPr Me
  loc_D08BD3: MemLdPr global_60
  loc_D08BD6:  = Me.Fields
  loc_D08BDB: FLdPr var_1E4
  loc_D08BDE: from_stack_2 = Me.Item(from_stack_1)
  loc_D08BE3: FLdPr var_1F8
  loc_D08BE6:  = Me.Value
  loc_D08BEB: FLdRfVar var_1C0
  loc_D08BEE: ConcatVar var_208
  loc_D08BF2: LitVarStr var_1F4, " AND Bimeliqu = "
  loc_D08BF7: ConcatVar var_218
  loc_D08BFB: FLdRfVar var_238
  loc_D08BFE: FLdRfVar var_250
  loc_D08C01: LitVarStr var_228, "BimeLiqu"
  loc_D08C06: PopAdLdVar
  loc_D08C07: FLdRfVar var_23C
  loc_D08C0A: FLdPr Me
  loc_D08C0D: MemLdPr global_60
  loc_D08C10:  = Me.Fields
  loc_D08C15: FLdPr var_23C
  loc_D08C18: from_stack_2 = Me.Item(from_stack_1)
  loc_D08C1D: FLdPr var_250
  loc_D08C20:  = Me.Value
  loc_D08C25: FLdRfVar var_238
  loc_D08C28: ConcatVar var_260
  loc_D08C2C: LitVarStr var_24C, " AND CodiTili = "
  loc_D08C31: ConcatVar var_270
  loc_D08C35: FLdRfVar var_290
  loc_D08C38: FLdRfVar var_2A8
  loc_D08C3B: LitVarStr var_280, "CodiTili"
  loc_D08C40: PopAdLdVar
  loc_D08C41: FLdRfVar var_294
  loc_D08C44: FLdPr Me
  loc_D08C47: MemLdPr global_60
  loc_D08C4A:  = Me.Fields
  loc_D08C4F: FLdPr var_294
  loc_D08C52: from_stack_2 = Me.Item(from_stack_1)
  loc_D08C57: FLdPr var_2A8
  loc_D08C5A:  = Me.Value
  loc_D08C5F: FLdRfVar var_290
  loc_D08C62: ConcatVar var_2B8
  loc_D08C66: LitVarStr var_2A4, " AND NumeLiqu = "
  loc_D08C6B: ConcatVar var_2C8
  loc_D08C6F: FLdRfVar var_2E8
  loc_D08C72: FLdRfVar var_300
  loc_D08C75: LitVarStr var_2D8, "NumeLiqu"
  loc_D08C7A: PopAdLdVar
  loc_D08C7B: FLdRfVar var_2EC
  loc_D08C7E: FLdPr Me
  loc_D08C81: MemLdPr global_60
  loc_D08C84:  = Me.Fields
  loc_D08C89: FLdPr var_2EC
  loc_D08C8C: from_stack_2 = Me.Item(from_stack_1)
  loc_D08C91: FLdPr var_300
  loc_D08C94:  = Me.Value
  loc_D08C99: FLdRfVar var_2E8
  loc_D08C9C: ConcatVar var_310
  loc_D08CA0: LitVarStr var_2FC, " AND CodiDifu = "
  loc_D08CA5: ConcatVar var_320
  loc_D08CA9: FLdRfVar var_340
  loc_D08CAC: FLdRfVar var_3BC
  loc_D08CAF: LitVarStr var_330, "CodiDifu"
  loc_D08CB4: PopAdLdVar
  loc_D08CB5: FLdRfVar var_3A8
  loc_D08CB8: FLdPr Me
  loc_D08CBB: MemLdPr global_60
  loc_D08CBE:  = Me.Fields
  loc_D08CC3: FLdPr var_3A8
  loc_D08CC6: from_stack_2 = Me.Item(from_stack_1)
  loc_D08CCB: FLdPr var_3BC
  loc_D08CCE:  = Me.Value
  loc_D08CD3: FLdRfVar var_340
  loc_D08CD6: ConcatVar var_360
  loc_D08CDA: LitVarStr var_350, " AND CodiConc = '"
  loc_D08CDF: ConcatVar var_380
  loc_D08CE3: FLdRfVar var_3A0
  loc_D08CE6: FLdRfVar var_414
  loc_D08CE9: LitVarStr var_370, "CodiConc"
  loc_D08CEE: PopAdLdVar
  loc_D08CEF: FLdRfVar var_400
  loc_D08CF2: FLdPr Me
  loc_D08CF5: MemLdPr global_60
  loc_D08CF8:  = Me.Fields
  loc_D08CFD: FLdPr var_400
  loc_D08D00: from_stack_2 = Me.Item(from_stack_1)
  loc_D08D05: FLdPr var_414
  loc_D08D08:  = Me.Value
  loc_D08D0D: FLdRfVar var_3A0
  loc_D08D10: ConcatVar var_3CC
  loc_D08D14: LitVarStr var_390, "'"
  loc_D08D19: ConcatVar var_3DC
  loc_D08D1D: LitVarStr var_3B8, " AND TipoVenc = "
  loc_D08D22: ConcatVar var_3FC
  loc_D08D26: FLdRfVar var_424
  loc_D08D29: FLdRfVar var_46C
  loc_D08D2C: LitVarStr var_3EC, "TipoVenc"
  loc_D08D31: PopAdLdVar
  loc_D08D32: FLdRfVar var_458
  loc_D08D35: FLdPr Me
  loc_D08D38: MemLdPr global_60
  loc_D08D3B:  = Me.Fields
  loc_D08D40: FLdPr var_458
  loc_D08D43: from_stack_2 = Me.Item(from_stack_1)
  loc_D08D48: FLdPr var_46C
  loc_D08D4B:  = Me.Value
  loc_D08D50: FLdRfVar var_424
  loc_D08D53: ConcatVar var_434
  loc_D08D57: LitVarStr var_410, " AND PeriOrde = "
  loc_D08D5C: ConcatVar var_454
  loc_D08D60: FLdRfVar var_47C
  loc_D08D63: FLdRfVar var_4C4
  loc_D08D66: LitVarStr var_444, "PeriOrde"
  loc_D08D6B: PopAdLdVar
  loc_D08D6C: FLdRfVar var_4B0
  loc_D08D6F: FLdPr Me
  loc_D08D72: MemLdPr global_60
  loc_D08D75:  = Me.Fields
  loc_D08D7A: FLdPr var_4B0
  loc_D08D7D: from_stack_2 = Me.Item(from_stack_1)
  loc_D08D82: FLdPr var_4C4
  loc_D08D85:  = Me.Value
  loc_D08D8A: FLdRfVar var_47C
  loc_D08D8D: ConcatVar var_48C
  loc_D08D91: LitVarStr var_468, " AND CodiSubr = "
  loc_D08D96: ConcatVar var_4AC
  loc_D08D9A: FLdRfVar var_4D4
  loc_D08D9D: FLdRfVar var_51C
  loc_D08DA0: LitVarStr var_49C, "CodiSubr"
  loc_D08DA5: PopAdLdVar
  loc_D08DA6: FLdRfVar var_508
  loc_D08DA9: FLdPr Me
  loc_D08DAC: MemLdPr global_60
  loc_D08DAF:  = Me.Fields
  loc_D08DB4: FLdPr var_508
  loc_D08DB7: from_stack_2 = Me.Item(from_stack_1)
  loc_D08DBC: FLdPr var_51C
  loc_D08DBF:  = Me.Value
  loc_D08DC4: FLdRfVar var_4D4
  loc_D08DC7: ConcatVar var_4E4
  loc_D08DCB: LitVarStr var_4C0, " AND NumeLcde = "
  loc_D08DD0: ConcatVar var_504
  loc_D08DD4: FLdRfVar var_52C
  loc_D08DD7: FLdRfVar var_788
  loc_D08DDA: LitVarStr var_4F4, "NumeLcde"
  loc_D08DDF: PopAdLdVar
  loc_D08DE0: FLdRfVar var_784
  loc_D08DE3: FLdPr Me
  loc_D08DE6: MemLdPr global_60
  loc_D08DE9:  = Me.Fields
  loc_D08DEE: FLdPr var_784
  loc_D08DF1: from_stack_2 = Me.Item(from_stack_1)
  loc_D08DF6: FLdPr var_788
  loc_D08DF9:  = Me.Value
  loc_D08DFE: FLdRfVar var_52C
  loc_D08E01: ConcatVar var_53C
  loc_D08E05: CStrVarVal var_12C
  loc_D08E09: Call EjecutarRsCls(from_stack_1v)
  loc_D08E0E: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_D08E1B: FFreeAd var_15C = "": var_170 = "": var_1E4 = "": var_1F8 = "": var_23C = "": var_250 = "": var_294 = "": var_2A8 = "": var_2EC = "": var_300 = "": var_3A8 = "": var_3BC = "": var_400 = "": var_414 = "": var_458 = "": var_46C = "": var_4B0 = "": var_4C4 = "": var_508 = "": var_51C = "": var_784 = ""
  loc_D08E4A: FFreeVar var_4E4 = "": var_504 = "": var_52C = "": var_53C = "": var_180 = "": var_1A0 = "": var_1B0 = "": var_1E0 = "": var_1C0 = "": var_208 = "": var_218 = "": var_238 = "": var_260 = "": var_270 = "": var_290 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_310 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3CC = "": var_3DC = "": var_3FC = "": var_424 = "": var_434 = "": var_454 = "": var_47C = "": var_48C = "": var_4AC = ""
  loc_D08E91: LitStr "COMMIT;"
  loc_D08E94: Call EjecutarRsCls(from_stack_1v)
  loc_D08E99: ExitProcHresult
  loc_D08E9A: LitStr "ROLLBACK;"
  loc_D08E9D: Call EjecutarRsCls(from_stack_1v)
  loc_D08EA2: LitStr "Error cuando se quiere calcular la cuenta: "
  loc_D08EA5: ILdRf CodiDifu
  loc_D08EA8: CStrI4
  loc_D08EAA: FStStrNoPop var_11C
  loc_D08EAD: ConcatStr
  loc_D08EAE: FStStrNoPop var_120
  loc_D08EB1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D08EB6: FFreeStr var_11C = ""
  loc_D08EBD: ExitProcHresult
End Sub

Public Sub Requery() '9E549C
  'Data Table: 489C84
  loc_9E5478: LitI4 -1
  loc_9E547D: FLdPr Me
  loc_9E5480: MemLdPr RsFrm
  loc_9E5483: Me.Requery from_stack_1
  loc_9E5488: LitVarStr var_94, "Primary"
  loc_9E548D: PopAdLdVar
  loc_9E548E: FLdPr Me
  loc_9E5491: LateIdCall
  loc_9E5499: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5E494
  'Data Table: 489C84
  loc_A5E430: ILdRf sSelect
  loc_A5E433: FStStrCopy var_88
  loc_A5E436: LitNothing
  loc_A5E438: CastAd
  loc_A5E43B: FStAdFuncNoPop
  loc_A5E43E: FLdPr Me
  loc_A5E441: MemStAd
  loc_A5E445: FFree1Ad var_8C
  loc_A5E448: New Recordset
  loc_A5E44C: FStAdFuncNoPop
  loc_A5E44F: FLdPr Me
  loc_A5E452: MemStAd
  loc_A5E456: FFree1Ad var_8C
  loc_A5E459: LitI4 -1
  loc_A5E45E: LitI4 3
  loc_A5E463: LitI4 3
  loc_A5E468: ImpAdLdI4 MemVar_D9301C
  loc_A5E46B: CVarAd
  loc_A5E46F: PopAdLdVar
  loc_A5E470: ILdRf var_88
  loc_A5E473: CVarStr var_9C
  loc_A5E476: PopAdLdVar
  loc_A5E477: FLdPr Me
  loc_A5E47A: MemLdPr RsFrm
  loc_A5E47D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5E482: LitVarStr var_9C, "Primary"
  loc_A5E487: PopAdLdVar
  loc_A5E488: FLdPr Me
  loc_A5E48B: LateIdCall
  loc_A5E493: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A49D88
  'Data Table: 489C84
  loc_A49D34: ILdRf sSelect
  loc_A49D37: FStStrCopy var_88
  loc_A49D3A: LitNothing
  loc_A49D3C: CastAd
  loc_A49D3F: FStAdFuncNoPop
  loc_A49D42: FLdPr Me
  loc_A49D45: MemStAd
  loc_A49D49: FFree1Ad var_8C
  loc_A49D4C: New Recordset
  loc_A49D50: FStAdFuncNoPop
  loc_A49D53: FLdPr Me
  loc_A49D56: MemStAd
  loc_A49D5A: FFree1Ad var_8C
  loc_A49D5D: LitI4 -1
  loc_A49D62: LitI4 3
  loc_A49D67: LitI4 3
  loc_A49D6C: ImpAdLdI4 MemVar_D9301C
  loc_A49D6F: CVarAd
  loc_A49D73: PopAdLdVar
  loc_A49D74: ILdRf var_88
  loc_A49D77: CVarStr var_9C
  loc_A49D7A: PopAdLdVar
  loc_A49D7B: FLdPr Me
  loc_A49D7E: MemLdPr global_56
  loc_A49D81: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A49D86: ExitProcHresult
End Sub

Public Sub EjecutarRsCls1(sSelect) 'A49ACC
  'Data Table: 489C84
  loc_A49A78: ILdRf sSelect
  loc_A49A7B: FStStrCopy var_88
  loc_A49A7E: LitNothing
  loc_A49A80: CastAd
  loc_A49A83: FStAdFuncNoPop
  loc_A49A86: FLdPr Me
  loc_A49A89: MemStAd
  loc_A49A8D: FFree1Ad var_8C
  loc_A49A90: New Recordset
  loc_A49A94: FStAdFuncNoPop
  loc_A49A97: FLdPr Me
  loc_A49A9A: MemStAd
  loc_A49A9E: FFree1Ad var_8C
  loc_A49AA1: LitI4 -1
  loc_A49AA6: LitI4 3
  loc_A49AAB: LitI4 3
  loc_A49AB0: ImpAdLdI4 MemVar_D9301C
  loc_A49AB3: CVarAd
  loc_A49AB7: PopAdLdVar
  loc_A49AB8: ILdRf var_88
  loc_A49ABB: CVarStr var_9C
  loc_A49ABE: PopAdLdVar
  loc_A49ABF: FLdPr Me
  loc_A49AC2: MemLdPr global_60
  loc_A49AC5: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A49ACA: ExitProcHresult
End Sub

Public Sub EjecutarRsCls2(sSelect) 'A499B4
  'Data Table: 489C84
  loc_A49960: ILdRf sSelect
  loc_A49963: FStStrCopy var_88
  loc_A49966: LitNothing
  loc_A49968: CastAd
  loc_A4996B: FStAdFuncNoPop
  loc_A4996E: FLdPr Me
  loc_A49971: MemStAd
  loc_A49975: FFree1Ad var_8C
  loc_A49978: New Recordset
  loc_A4997C: FStAdFuncNoPop
  loc_A4997F: FLdPr Me
  loc_A49982: MemStAd
  loc_A49986: FFree1Ad var_8C
  loc_A49989: LitI4 -1
  loc_A4998E: LitI4 3
  loc_A49993: LitI4 3
  loc_A49998: ImpAdLdI4 MemVar_D9301C
  loc_A4999B: CVarAd
  loc_A4999F: PopAdLdVar
  loc_A499A0: ILdRf var_88
  loc_A499A3: CVarStr var_9C
  loc_A499A6: PopAdLdVar
  loc_A499A7: FLdPr Me
  loc_A499AA: MemLdPr global_64
  loc_A499AD: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A499B2: ExitProcHresult
End Sub

Public Sub EjecutarRsCls3(sSelect) 'A49928
  'Data Table: 489C84
  loc_A498D4: ILdRf sSelect
  loc_A498D7: FStStrCopy var_88
  loc_A498DA: LitNothing
  loc_A498DC: CastAd
  loc_A498DF: FStAdFuncNoPop
  loc_A498E2: FLdPr Me
  loc_A498E5: MemStAd
  loc_A498E9: FFree1Ad var_8C
  loc_A498EC: New Recordset
  loc_A498F0: FStAdFuncNoPop
  loc_A498F3: FLdPr Me
  loc_A498F6: MemStAd
  loc_A498FA: FFree1Ad var_8C
  loc_A498FD: LitI4 -1
  loc_A49902: LitI4 3
  loc_A49907: LitI4 3
  loc_A4990C: ImpAdLdI4 MemVar_D9301C
  loc_A4990F: CVarAd
  loc_A49913: PopAdLdVar
  loc_A49914: ILdRf var_88
  loc_A49917: CVarStr var_9C
  loc_A4991A: PopAdLdVar
  loc_A4991B: FLdPr Me
  loc_A4991E: MemLdPr global_68
  loc_A49921: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A49926: ExitProcHresult
  loc_A49927: MulCy
End Sub

Public Sub EjecutarRsCls4(sSelect) 'A4989C
  'Data Table: 489C84
  loc_A49848: ILdRf sSelect
  loc_A4984B: FStStrCopy var_88
  loc_A4984E: LitNothing
  loc_A49850: CastAd
  loc_A49853: FStAdFuncNoPop
  loc_A49856: FLdPr Me
  loc_A49859: MemStAd
  loc_A4985D: FFree1Ad var_8C
  loc_A49860: New Recordset
  loc_A49864: FStAdFuncNoPop
  loc_A49867: FLdPr Me
  loc_A4986A: MemStAd
  loc_A4986E: FFree1Ad var_8C
  loc_A49871: LitI4 -1
  loc_A49876: LitI4 3
  loc_A4987B: LitI4 3
  loc_A49880: ImpAdLdI4 MemVar_D9301C
  loc_A49883: CVarAd
  loc_A49887: PopAdLdVar
  loc_A49888: ILdRf var_88
  loc_A4988B: CVarStr var_9C
  loc_A4988E: PopAdLdVar
  loc_A4988F: FLdPr Me
  loc_A49892: MemLdPr global_72
  loc_A49895: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4989A: ExitProcHresult
End Sub

Public Sub EjecutarRsCls5(sSelect) 'A49810
  'Data Table: 489C84
  loc_A497BC: ILdRf sSelect
  loc_A497BF: FStStrCopy var_88
  loc_A497C2: LitNothing
  loc_A497C4: CastAd
  loc_A497C7: FStAdFuncNoPop
  loc_A497CA: FLdPr Me
  loc_A497CD: MemStAd
  loc_A497D1: FFree1Ad var_8C
  loc_A497D4: New Recordset
  loc_A497D8: FStAdFuncNoPop
  loc_A497DB: FLdPr Me
  loc_A497DE: MemStAd
  loc_A497E2: FFree1Ad var_8C
  loc_A497E5: LitI4 -1
  loc_A497EA: LitI4 3
  loc_A497EF: LitI4 3
  loc_A497F4: ImpAdLdI4 MemVar_D9301C
  loc_A497F7: CVarAd
  loc_A497FB: PopAdLdVar
  loc_A497FC: ILdRf var_88
  loc_A497FF: CVarStr var_9C
  loc_A49802: PopAdLdVar
  loc_A49803: FLdPr Me
  loc_A49806: MemLdPr global_76
  loc_A49809: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4980E: ExitProcHresult
End Sub

Public Property Get DataSource() '9F0E9C
  'Data Table: 489C84
  loc_9F0E78: ZeroRetVal
  loc_9F0E7A: FLdRfVar var_8C
  loc_9F0E7D: FLdPr Me
  loc_9F0E80: MemLdPr RsFrm
  loc_9F0E83:  = Me.DataSource
  loc_9F0E88: ILdRf var_8C
  loc_9F0E8B: CastAd
  loc_9F0E8E: FStAdFunc var_88
  loc_9F0E91: FFree1Ad var_8C
  loc_9F0E94: ExitProcCbHresult
  loc_9F0E9A: LtI2
End Sub

Public Property Get PeriLiqu() 'A286A4
  'Data Table: 489C84
  loc_A28660: FLdRfVar var_B0
  loc_A28663: FLdRfVar var_A0
  loc_A28666: LitVarStr var_9C, "PeriLiqu"
  loc_A2866B: PopAdLdVar
  loc_A2866C: FLdRfVar var_8C
  loc_A2866F: FLdPr Me
  loc_A28672: MemLdPr RsFrm
  loc_A28675:  = Me.Fields
  loc_A2867A: FLdPr var_8C
  loc_A2867D: from_stack_2 = Me.Item(from_stack_1)
  loc_A28682: FLdPr var_A0
  loc_A28685:  = Me.Value
  loc_A2868A: FLdRfVar var_B0
  loc_A2868D: CI2Var
  loc_A2868E: FStI2 var_86
  loc_A28691: FFreeAd var_8C = ""
  loc_A28698: FFree1Var var_B0 = ""
  loc_A2869B: ExitProcCbHresult
  loc_A286A1: LitI2_Byte 1
  loc_A286A3: EqI2
End Sub

Public Property Get BimeLiqu() 'A28AA4
  'Data Table: 489C84
  loc_A28A60: FLdRfVar var_B0
  loc_A28A63: FLdRfVar var_A0
  loc_A28A66: LitVarStr var_9C, "BimeLiqu"
  loc_A28A6B: PopAdLdVar
  loc_A28A6C: FLdRfVar var_8C
  loc_A28A6F: FLdPr Me
  loc_A28A72: MemLdPr RsFrm
  loc_A28A75:  = Me.Fields
  loc_A28A7A: FLdPr var_8C
  loc_A28A7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A28A82: FLdPr var_A0
  loc_A28A85:  = Me.Value
  loc_A28A8A: FLdRfVar var_B0
  loc_A28A8D: CUI1Var
  loc_A28A8F: FStUI1 var_86
  loc_A28A93: FFreeAd var_8C = ""
  loc_A28A9A: FFree1Var var_B0 = ""
  loc_A28A9D: ExitProcCbHresult
End Sub

Public Property Get CodiTili() 'A28A24
  'Data Table: 489C84
  loc_A289E0: FLdRfVar var_B0
  loc_A289E3: FLdRfVar var_A0
  loc_A289E6: LitVarStr var_9C, "CodiTili"
  loc_A289EB: PopAdLdVar
  loc_A289EC: FLdRfVar var_8C
  loc_A289EF: FLdPr Me
  loc_A289F2: MemLdPr RsFrm
  loc_A289F5:  = Me.Fields
  loc_A289FA: FLdPr var_8C
  loc_A289FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A28A02: FLdPr var_A0
  loc_A28A05:  = Me.Value
  loc_A28A0A: FLdRfVar var_B0
  loc_A28A0D: CUI1Var
  loc_A28A0F: FStUI1 var_86
  loc_A28A13: FFreeAd var_8C = ""
  loc_A28A1A: FFree1Var var_B0 = ""
  loc_A28A1D: ExitProcCbHresult
End Sub

Public Property Get NumeLiqu() 'A289A4
  'Data Table: 489C84
  loc_A28960: FLdRfVar var_B0
  loc_A28963: FLdRfVar var_A0
  loc_A28966: LitVarStr var_9C, "NumeLiqu"
  loc_A2896B: PopAdLdVar
  loc_A2896C: FLdRfVar var_8C
  loc_A2896F: FLdPr Me
  loc_A28972: MemLdPr RsFrm
  loc_A28975:  = Me.Fields
  loc_A2897A: FLdPr var_8C
  loc_A2897D: from_stack_2 = Me.Item(from_stack_1)
  loc_A28982: FLdPr var_A0
  loc_A28985:  = Me.Value
  loc_A2898A: FLdRfVar var_B0
  loc_A2898D: CI2Var
  loc_A2898E: FStI2 var_86
  loc_A28991: FFreeAd var_8C = ""
  loc_A28998: FFree1Var var_B0 = ""
  loc_A2899B: ExitProcCbHresult
  loc_A289A1: CStrVarTmp
End Sub

Public Property Get CodiDifu() 'A28924
  'Data Table: 489C84
  loc_A288E0: FLdRfVar var_B0
  loc_A288E3: FLdRfVar var_A0
  loc_A288E6: LitVarStr var_9C, "CodiDifu"
  loc_A288EB: PopAdLdVar
  loc_A288EC: FLdRfVar var_8C
  loc_A288EF: FLdPr Me
  loc_A288F2: MemLdPr RsFrm
  loc_A288F5:  = Me.Fields
  loc_A288FA: FLdPr var_8C
  loc_A288FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A28902: FLdPr var_A0
  loc_A28905:  = Me.Value
  loc_A2890A: FLdRfVar var_B0
  loc_A2890D: CI4Var
  loc_A2890F: FStR4 var_88
  loc_A28912: FFreeAd var_8C = ""
  loc_A28919: FFree1Var var_B0 = ""
  loc_A2891C: ExitProcCbHresult
  loc_A28922: CI4R8
End Sub

Public Property Get CodiConc() 'A3D558
  'Data Table: 489C84
  loc_A3D514: ZeroRetVal
  loc_A3D516: FLdRfVar var_B0
  loc_A3D519: FLdRfVar var_A0
  loc_A3D51C: LitVarStr var_9C, "CodiConc"
  loc_A3D521: PopAdLdVar
  loc_A3D522: FLdRfVar var_8C
  loc_A3D525: FLdPr Me
  loc_A3D528: MemLdPr RsFrm
  loc_A3D52B:  = Me.Fields
  loc_A3D530: FLdPr var_8C
  loc_A3D533: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D538: FLdPr var_A0
  loc_A3D53B:  = Me.Value
  loc_A3D540: FLdRfVar var_B0
  loc_A3D543: CStrVarTmp
  loc_A3D544: FStStr var_88
  loc_A3D547: FFreeAd var_8C = ""
  loc_A3D54E: FFree1Var var_B0 = ""
  loc_A3D551: ExitProcCbHresult
End Sub

Public Property Get TipoVenc() 'A288A4
  'Data Table: 489C84
  loc_A28860: FLdRfVar var_B0
  loc_A28863: FLdRfVar var_A0
  loc_A28866: LitVarStr var_9C, "TipoVenc"
  loc_A2886B: PopAdLdVar
  loc_A2886C: FLdRfVar var_8C
  loc_A2886F: FLdPr Me
  loc_A28872: MemLdPr RsFrm
  loc_A28875:  = Me.Fields
  loc_A2887A: FLdPr var_8C
  loc_A2887D: from_stack_2 = Me.Item(from_stack_1)
  loc_A28882: FLdPr var_A0
  loc_A28885:  = Me.Value
  loc_A2888A: FLdRfVar var_B0
  loc_A2888D: CUI1Var
  loc_A2888F: FStUI1 var_86
  loc_A28893: FFreeAd var_8C = ""
  loc_A2889A: FFree1Var var_B0 = ""
  loc_A2889D: ExitProcCbHresult
End Sub

Public Property Get OrdeLice() 'A28824
  'Data Table: 489C84
  loc_A287E0: FLdRfVar var_B0
  loc_A287E3: FLdRfVar var_A0
  loc_A287E6: LitVarStr var_9C, "OrdeLice"
  loc_A287EB: PopAdLdVar
  loc_A287EC: FLdRfVar var_8C
  loc_A287EF: FLdPr Me
  loc_A287F2: MemLdPr RsFrm
  loc_A287F5:  = Me.Fields
  loc_A287FA: FLdPr var_8C
  loc_A287FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A28802: FLdPr var_A0
  loc_A28805:  = Me.Value
  loc_A2880A: FLdRfVar var_B0
  loc_A2880D: CI4Var
  loc_A2880F: FStR4 var_88
  loc_A28812: FFreeAd var_8C = ""
  loc_A28819: FFree1Var var_B0 = ""
  loc_A2881C: ExitProcCbHresult
  loc_A28822: SubCy
End Sub

Public Property Get ActuLice() 'A3D660
  'Data Table: 489C84
  loc_A3D61C: ZeroRetVal
  loc_A3D61E: FLdRfVar var_B0
  loc_A3D621: FLdRfVar var_A0
  loc_A3D624: LitVarStr var_9C, "ActuLice"
  loc_A3D629: PopAdLdVar
  loc_A3D62A: FLdRfVar var_8C
  loc_A3D62D: FLdPr Me
  loc_A3D630: MemLdPr RsFrm
  loc_A3D633:  = Me.Fields
  loc_A3D638: FLdPr var_8C
  loc_A3D63B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D640: FLdPr var_A0
  loc_A3D643:  = Me.Value
  loc_A3D648: FLdRfVar var_B0
  loc_A3D64B: CStrVarTmp
  loc_A3D64C: FStStr var_88
  loc_A3D64F: FFreeAd var_8C = ""
  loc_A3D656: FFree1Var var_B0 = ""
  loc_A3D659: ExitProcCbHresult
End Sub

Public Property Get FeacLice() 'A1F030
  'Data Table: 489C84
  loc_A1EFF8: ZeroRetValVar
  loc_A1EFFA: FLdRfVar var_AC
  loc_A1EFFD: LitVarStr var_A8, "FeacLice"
  loc_A1F002: PopAdLdVar
  loc_A1F003: FLdRfVar var_98
  loc_A1F006: FLdPr Me
  loc_A1F009: MemLdPr RsFrm
  loc_A1F00C:  = Me.Fields
  loc_A1F011: FLdPr var_98
  loc_A1F014: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F019: FLdZeroAd var_AC
  loc_A1F01C: CVarAd
  loc_A1F020: FStVar FeacLice
  loc_A1F024: FFree1Ad var_98
  loc_A1F027: ExitProcCbHresult
End Sub

Public Property Get TipoLice() 'A3D768
  'Data Table: 489C84
  loc_A3D724: ZeroRetVal
  loc_A3D726: FLdRfVar var_B0
  loc_A3D729: FLdRfVar var_A0
  loc_A3D72C: LitVarStr var_9C, "TipoLice"
  loc_A3D731: PopAdLdVar
  loc_A3D732: FLdRfVar var_8C
  loc_A3D735: FLdPr Me
  loc_A3D738: MemLdPr RsFrm
  loc_A3D73B:  = Me.Fields
  loc_A3D740: FLdPr var_8C
  loc_A3D743: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D748: FLdPr var_A0
  loc_A3D74B:  = Me.Value
  loc_A3D750: FLdRfVar var_B0
  loc_A3D753: CStrVarTmp
  loc_A3D754: FStStr var_88
  loc_A3D757: FFreeAd var_8C = ""
  loc_A3D75E: FFree1Var var_B0 = ""
  loc_A3D761: ExitProcCbHresult
End Sub

Public Property Get FealLice() 'A3D7EC
  'Data Table: 489C84
  loc_A3D7A8: ZeroRetVal
  loc_A3D7AA: FLdRfVar var_B0
  loc_A3D7AD: FLdRfVar var_A0
  loc_A3D7B0: LitVarStr var_9C, "FealLice"
  loc_A3D7B5: PopAdLdVar
  loc_A3D7B6: FLdRfVar var_8C
  loc_A3D7B9: FLdPr Me
  loc_A3D7BC: MemLdPr RsFrm
  loc_A3D7BF:  = Me.Fields
  loc_A3D7C4: FLdPr var_8C
  loc_A3D7C7: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D7CC: FLdPr var_A0
  loc_A3D7CF:  = Me.Value
  loc_A3D7D4: FLdRfVar var_B0
  loc_A3D7D7: CStrVarTmp
  loc_A3D7D8: FStStr var_88
  loc_A3D7DB: FFreeAd var_8C = ""
  loc_A3D7E2: FFree1Var var_B0 = ""
  loc_A3D7E5: ExitProcCbHresult
End Sub

Public Property Get FeveLice() 'A3A354
  'Data Table: 489C84
  loc_A3A310: ZeroRetVal
  loc_A3A312: FLdRfVar var_B0
  loc_A3A315: FLdRfVar var_A0
  loc_A3A318: LitVarStr var_9C, "FeveLice"
  loc_A3A31D: PopAdLdVar
  loc_A3A31E: FLdRfVar var_8C
  loc_A3A321: FLdPr Me
  loc_A3A324: MemLdPr RsFrm
  loc_A3A327:  = Me.Fields
  loc_A3A32C: FLdPr var_8C
  loc_A3A32F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A334: FLdPr var_A0
  loc_A3A337:  = Me.Value
  loc_A3A33C: FLdRfVar var_B0
  loc_A3A33F: CStrVarTmp
  loc_A3A340: FStStr var_88
  loc_A3A343: FFreeAd var_8C = ""
  loc_A3A34A: FFree1Var var_B0 = ""
  loc_A3A34D: ExitProcCbHresult
  loc_A3A353: CI2I4
End Sub

Public Property Get DeudLice() 'A28424
  'Data Table: 489C84
  loc_A283E0: FLdRfVar var_B4
  loc_A283E3: FLdRfVar var_A4
  loc_A283E6: LitVarStr var_A0, "DeudLice"
  loc_A283EB: PopAdLdVar
  loc_A283EC: FLdRfVar var_90
  loc_A283EF: FLdPr Me
  loc_A283F2: MemLdPr RsFrm
  loc_A283F5:  = Me.Fields
  loc_A283FA: FLdPr var_90
  loc_A283FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A28402: FLdPr var_A4
  loc_A28405:  = Me.Value
  loc_A2840A: FLdRfVar var_B4
  loc_A2840D: CR4Var
  loc_A2840E: FStFPR8 var_8C
  loc_A28411: FFreeAd var_90 = ""
  loc_A28418: FFree1Var var_B4 = ""
  loc_A2841B: ExitProcCbHresult
End Sub

Public Property Get ImpoLice() 'A285A4
  'Data Table: 489C84
  loc_A28560: FLdRfVar var_B4
  loc_A28563: FLdRfVar var_A4
  loc_A28566: LitVarStr var_A0, "ImpoLice"
  loc_A2856B: PopAdLdVar
  loc_A2856C: FLdRfVar var_90
  loc_A2856F: FLdPr Me
  loc_A28572: MemLdPr RsFrm
  loc_A28575:  = Me.Fields
  loc_A2857A: FLdPr var_90
  loc_A2857D: from_stack_2 = Me.Item(from_stack_1)
  loc_A28582: FLdPr var_A4
  loc_A28585:  = Me.Value
  loc_A2858A: FLdRfVar var_B4
  loc_A2858D: CR4Var
  loc_A2858E: FStFPR8 var_8C
  loc_A28591: FFreeAd var_90 = ""
  loc_A28598: FFree1Var var_B4 = ""
  loc_A2859B: ExitProcCbHresult
End Sub

Public Property Get CrafLice() 'A28524
  'Data Table: 489C84
  loc_A284E0: FLdRfVar var_B4
  loc_A284E3: FLdRfVar var_A4
  loc_A284E6: LitVarStr var_A0, "CrafLice"
  loc_A284EB: PopAdLdVar
  loc_A284EC: FLdRfVar var_90
  loc_A284EF: FLdPr Me
  loc_A284F2: MemLdPr RsFrm
  loc_A284F5:  = Me.Fields
  loc_A284FA: FLdPr var_90
  loc_A284FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A28502: FLdPr var_A4
  loc_A28505:  = Me.Value
  loc_A2850A: FLdRfVar var_B4
  loc_A2850D: CR4Var
  loc_A2850E: FStFPR8 var_8C
  loc_A28511: FFreeAd var_90 = ""
  loc_A28518: FFree1Var var_B4 = ""
  loc_A2851B: ExitProcCbHresult
  loc_A28521: BranchF loc_A37FE0
End Sub

Public Property Get ExenLice() 'A283A4
  'Data Table: 489C84
  loc_A28360: FLdRfVar var_B4
  loc_A28363: FLdRfVar var_A4
  loc_A28366: LitVarStr var_A0, "ExenLice"
  loc_A2836B: PopAdLdVar
  loc_A2836C: FLdRfVar var_90
  loc_A2836F: FLdPr Me
  loc_A28372: MemLdPr RsFrm
  loc_A28375:  = Me.Fields
  loc_A2837A: FLdPr var_90
  loc_A2837D: from_stack_2 = Me.Item(from_stack_1)
  loc_A28382: FLdPr var_A4
  loc_A28385:  = Me.Value
  loc_A2838A: FLdRfVar var_B4
  loc_A2838D: CR4Var
  loc_A2838E: FStFPR8 var_8C
  loc_A28391: FFreeAd var_90 = ""
  loc_A28398: FFree1Var var_B4 = ""
  loc_A2839B: ExitProcCbHresult
  loc_A283A1: DOC
End Sub

Public Property Get DescLice() 'A27F24
  'Data Table: 489C84
  loc_A27EE0: FLdRfVar var_B4
  loc_A27EE3: FLdRfVar var_A4
  loc_A27EE6: LitVarStr var_A0, "DescLice"
  loc_A27EEB: PopAdLdVar
  loc_A27EEC: FLdRfVar var_90
  loc_A27EEF: FLdPr Me
  loc_A27EF2: MemLdPr RsFrm
  loc_A27EF5:  = Me.Fields
  loc_A27EFA: FLdPr var_90
  loc_A27EFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A27F02: FLdPr var_A4
  loc_A27F05:  = Me.Value
  loc_A27F0A: FLdRfVar var_B4
  loc_A27F0D: CR4Var
  loc_A27F0E: FStFPR8 var_8C
  loc_A27F11: FFreeAd var_90 = ""
  loc_A27F18: FFree1Var var_B4 = ""
  loc_A27F1B: ExitProcCbHresult
  loc_A27F21: LitI2_Byte 6
End Sub

Public Property Get GastLice() 'A27CA4
  'Data Table: 489C84
  loc_A27C60: FLdRfVar var_B4
  loc_A27C63: FLdRfVar var_A4
  loc_A27C66: LitVarStr var_A0, "GastLice"
  loc_A27C6B: PopAdLdVar
  loc_A27C6C: FLdRfVar var_90
  loc_A27C6F: FLdPr Me
  loc_A27C72: MemLdPr RsFrm
  loc_A27C75:  = Me.Fields
  loc_A27C7A: FLdPr var_90
  loc_A27C7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A27C82: FLdPr var_A4
  loc_A27C85:  = Me.Value
  loc_A27C8A: FLdRfVar var_B4
  loc_A27C8D: CR4Var
  loc_A27C8E: FStFPR8 var_8C
  loc_A27C91: FFreeAd var_90 = ""
  loc_A27C98: FFree1Var var_B4 = ""
  loc_A27C9B: ExitProcCbHresult
  loc_A27CA1: FLdI2 arg_A8
End Sub

Public Property Get TotaLice() 'A27EA4
  'Data Table: 489C84
  loc_A27E60: FLdRfVar var_B4
  loc_A27E63: FLdRfVar var_A4
  loc_A27E66: LitVarStr var_A0, "TotaLice"
  loc_A27E6B: PopAdLdVar
  loc_A27E6C: FLdRfVar var_90
  loc_A27E6F: FLdPr Me
  loc_A27E72: MemLdPr RsFrm
  loc_A27E75:  = Me.Fields
  loc_A27E7A: FLdPr var_90
  loc_A27E7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A27E82: FLdPr var_A4
  loc_A27E85:  = Me.Value
  loc_A27E8A: FLdRfVar var_B4
  loc_A27E8D: CR4Var
  loc_A27E8E: FStFPR8 var_8C
  loc_A27E91: FFreeAd var_90 = ""
  loc_A27E98: FFree1Var var_B4 = ""
  loc_A27E9B: ExitProcCbHresult
End Sub

Public Property Get CucuPers() 'A3A4E0
  'Data Table: 489C84
  loc_A3A49C: ZeroRetVal
  loc_A3A49E: FLdRfVar var_B0
  loc_A3A4A1: FLdRfVar var_A0
  loc_A3A4A4: LitVarStr var_9C, "CucuPers"
  loc_A3A4A9: PopAdLdVar
  loc_A3A4AA: FLdRfVar var_8C
  loc_A3A4AD: FLdPr Me
  loc_A3A4B0: MemLdPr RsFrm
  loc_A3A4B3:  = Me.Fields
  loc_A3A4B8: FLdPr var_8C
  loc_A3A4BB: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A4C0: FLdPr var_A0
  loc_A3A4C3:  = Me.Value
  loc_A3A4C8: FLdRfVar var_B0
  loc_A3A4CB: CStrVarTmp
  loc_A3A4CC: FStStr var_88
  loc_A3A4CF: FFreeAd var_8C = ""
  loc_A3A4D6: FFree1Var var_B0 = ""
  loc_A3A4D9: ExitProcCbHresult
End Sub

Public Property Get CodiCall() 'A26424
  'Data Table: 489C84
  loc_A263E0: FLdRfVar var_B0
  loc_A263E3: FLdRfVar var_A0
  loc_A263E6: LitVarStr var_9C, "CodiCall"
  loc_A263EB: PopAdLdVar
  loc_A263EC: FLdRfVar var_8C
  loc_A263EF: FLdPr Me
  loc_A263F2: MemLdPr RsFrm
  loc_A263F5:  = Me.Fields
  loc_A263FA: FLdPr var_8C
  loc_A263FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A26402: FLdPr var_A0
  loc_A26405:  = Me.Value
  loc_A2640A: FLdRfVar var_B0
  loc_A2640D: CI2Var
  loc_A2640E: FStI2 var_86
  loc_A26411: FFreeAd var_8C = ""
  loc_A26418: FFree1Var var_B0 = ""
  loc_A2641B: ExitProcCbHresult
End Sub

Public Property Get NucaLita() 'A26DA4
  'Data Table: 489C84
  loc_A26D60: FLdRfVar var_B0
  loc_A26D63: FLdRfVar var_A0
  loc_A26D66: LitVarStr var_9C, "NucaLita"
  loc_A26D6B: PopAdLdVar
  loc_A26D6C: FLdRfVar var_8C
  loc_A26D6F: FLdPr Me
  loc_A26D72: MemLdPr RsFrm
  loc_A26D75:  = Me.Fields
  loc_A26D7A: FLdPr var_8C
  loc_A26D7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A26D82: FLdPr var_A0
  loc_A26D85:  = Me.Value
  loc_A26D8A: FLdRfVar var_B0
  loc_A26D8D: CI4Var
  loc_A26D8F: FStR4 var_88
  loc_A26D92: FFreeAd var_8C = ""
  loc_A26D99: FFree1Var var_B0 = ""
  loc_A26D9C: ExitProcCbHresult
End Sub

Public Property Get CodiBarr() 'A26EA4
  'Data Table: 489C84
  loc_A26E60: FLdRfVar var_B0
  loc_A26E63: FLdRfVar var_A0
  loc_A26E66: LitVarStr var_9C, "CodiBarr"
  loc_A26E6B: PopAdLdVar
  loc_A26E6C: FLdRfVar var_8C
  loc_A26E6F: FLdPr Me
  loc_A26E72: MemLdPr RsFrm
  loc_A26E75:  = Me.Fields
  loc_A26E7A: FLdPr var_8C
  loc_A26E7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A26E82: FLdPr var_A0
  loc_A26E85:  = Me.Value
  loc_A26E8A: FLdRfVar var_B0
  loc_A26E8D: CI2Var
  loc_A26E8E: FStI2 var_86
  loc_A26E91: FFreeAd var_8C = ""
  loc_A26E98: FFree1Var var_B0 = ""
  loc_A26E9B: ExitProcCbHresult
End Sub

Public Property Get ManzLice() 'A3A564
  'Data Table: 489C84
  loc_A3A520: ZeroRetVal
  loc_A3A522: FLdRfVar var_B0
  loc_A3A525: FLdRfVar var_A0
  loc_A3A528: LitVarStr var_9C, "ManzLice"
  loc_A3A52D: PopAdLdVar
  loc_A3A52E: FLdRfVar var_8C
  loc_A3A531: FLdPr Me
  loc_A3A534: MemLdPr RsFrm
  loc_A3A537:  = Me.Fields
  loc_A3A53C: FLdPr var_8C
  loc_A3A53F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A544: FLdPr var_A0
  loc_A3A547:  = Me.Value
  loc_A3A54C: FLdRfVar var_B0
  loc_A3A54F: CStrVarTmp
  loc_A3A550: FStStr var_88
  loc_A3A553: FFreeAd var_8C = ""
  loc_A3A55A: FFree1Var var_B0 = ""
  loc_A3A55D: ExitProcCbHresult
End Sub

Public Property Get CasaLice() 'A3D9FC
  'Data Table: 489C84
  loc_A3D9B8: ZeroRetVal
  loc_A3D9BA: FLdRfVar var_B0
  loc_A3D9BD: FLdRfVar var_A0
  loc_A3D9C0: LitVarStr var_9C, "CasaLice"
  loc_A3D9C5: PopAdLdVar
  loc_A3D9C6: FLdRfVar var_8C
  loc_A3D9C9: FLdPr Me
  loc_A3D9CC: MemLdPr RsFrm
  loc_A3D9CF:  = Me.Fields
  loc_A3D9D4: FLdPr var_8C
  loc_A3D9D7: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D9DC: FLdPr var_A0
  loc_A3D9DF:  = Me.Value
  loc_A3D9E4: FLdRfVar var_B0
  loc_A3D9E7: CStrVarTmp
  loc_A3D9E8: FStStr var_88
  loc_A3D9EB: FFreeAd var_8C = ""
  loc_A3D9F2: FFree1Var var_B0 = ""
  loc_A3D9F5: ExitProcCbHresult
End Sub

Public Property Get UbicLice() 'A3DA80
  'Data Table: 489C84
  loc_A3DA3C: ZeroRetVal
  loc_A3DA3E: FLdRfVar var_B0
  loc_A3DA41: FLdRfVar var_A0
  loc_A3DA44: LitVarStr var_9C, "UbicLice"
  loc_A3DA49: PopAdLdVar
  loc_A3DA4A: FLdRfVar var_8C
  loc_A3DA4D: FLdPr Me
  loc_A3DA50: MemLdPr RsFrm
  loc_A3DA53:  = Me.Fields
  loc_A3DA58: FLdPr var_8C
  loc_A3DA5B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3DA60: FLdPr var_A0
  loc_A3DA63:  = Me.Value
  loc_A3DA68: FLdRfVar var_B0
  loc_A3DA6B: CStrVarTmp
  loc_A3DA6C: FStStr var_88
  loc_A3DA6F: FFreeAd var_8C = ""
  loc_A3DA76: FFree1Var var_B0 = ""
  loc_A3DA79: ExitProcCbHresult
End Sub

Public Property Get CodiLoca() 'A26E24
  'Data Table: 489C84
  loc_A26DE0: FLdRfVar var_B0
  loc_A26DE3: FLdRfVar var_A0
  loc_A26DE6: LitVarStr var_9C, "CodiLoca"
  loc_A26DEB: PopAdLdVar
  loc_A26DEC: FLdRfVar var_8C
  loc_A26DEF: FLdPr Me
  loc_A26DF2: MemLdPr RsFrm
  loc_A26DF5:  = Me.Fields
  loc_A26DFA: FLdPr var_8C
  loc_A26DFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A26E02: FLdPr var_A0
  loc_A26E05:  = Me.Value
  loc_A26E0A: FLdRfVar var_B0
  loc_A26E0D: CI2Var
  loc_A26E0E: FStI2 var_86
  loc_A26E11: FFreeAd var_8C = ""
  loc_A26E18: FFree1Var var_B0 = ""
  loc_A26E1B: ExitProcCbHresult
  loc_A26E21: MemStR8 global_3582
End Sub

Public Property Get PeriOrde() 'A26B24
  'Data Table: 489C84
  loc_A26AE0: FLdRfVar var_B0
  loc_A26AE3: FLdRfVar var_A0
  loc_A26AE6: LitVarStr var_9C, "PeriOrde"
  loc_A26AEB: PopAdLdVar
  loc_A26AEC: FLdRfVar var_8C
  loc_A26AEF: FLdPr Me
  loc_A26AF2: MemLdPr RsFrm
  loc_A26AF5:  = Me.Fields
  loc_A26AFA: FLdPr var_8C
  loc_A26AFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A26B02: FLdPr var_A0
  loc_A26B05:  = Me.Value
  loc_A26B0A: FLdRfVar var_B0
  loc_A26B0D: CI2Var
  loc_A26B0E: FStI2 var_86
  loc_A26B11: FFreeAd var_8C = ""
  loc_A26B18: FFree1Var var_B0 = ""
  loc_A26B1B: ExitProcCbHresult
  loc_A26B21: Erase
End Sub

Public Property Get CodiSece() 'A269A4
  'Data Table: 489C84
  loc_A26960: FLdRfVar var_B0
  loc_A26963: FLdRfVar var_A0
  loc_A26966: LitVarStr var_9C, "CodiSece"
  loc_A2696B: PopAdLdVar
  loc_A2696C: FLdRfVar var_8C
  loc_A2696F: FLdPr Me
  loc_A26972: MemLdPr RsFrm
  loc_A26975:  = Me.Fields
  loc_A2697A: FLdPr var_8C
  loc_A2697D: from_stack_2 = Me.Item(from_stack_1)
  loc_A26982: FLdPr var_A0
  loc_A26985:  = Me.Value
  loc_A2698A: FLdRfVar var_B0
  loc_A2698D: CI4Var
  loc_A2698F: FStR4 var_88
  loc_A26992: FFreeAd var_8C = ""
  loc_A26999: FFree1Var var_B0 = ""
  loc_A2699C: ExitProcCbHresult
End Sub

Public Property Get NumeLcde() 'A26024
  'Data Table: 489C84
  loc_A25FE0: FLdRfVar var_B0
  loc_A25FE3: FLdRfVar var_A0
  loc_A25FE6: LitVarStr var_9C, "NumeCtde"
  loc_A25FEB: PopAdLdVar
  loc_A25FEC: FLdRfVar var_8C
  loc_A25FEF: FLdPr Me
  loc_A25FF2: MemLdPr RsFrm
  loc_A25FF5:  = Me.Fields
  loc_A25FFA: FLdPr var_8C
  loc_A25FFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A26002: FLdPr var_A0
  loc_A26005:  = Me.Value
  loc_A2600A: FLdRfVar var_B0
  loc_A2600D: CI2Var
  loc_A2600E: FStI2 var_86
  loc_A26011: FFreeAd var_8C = ""
  loc_A26018: FFree1Var var_B0 = ""
  loc_A2601B: ExitProcCbHresult
End Sub

Public Property Get ImpoLcde() 'A27224
  'Data Table: 489C84
  loc_A271E0: FLdRfVar var_B4
  loc_A271E3: FLdRfVar var_A4
  loc_A271E6: LitVarStr var_A0, "ImpoLcde"
  loc_A271EB: PopAdLdVar
  loc_A271EC: FLdRfVar var_90
  loc_A271EF: FLdPr Me
  loc_A271F2: MemLdPr RsFrm
  loc_A271F5:  = Me.Fields
  loc_A271FA: FLdPr var_90
  loc_A271FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A27202: FLdPr var_A4
  loc_A27205:  = Me.Value
  loc_A2720A: FLdRfVar var_B4
  loc_A2720D: CR4Var
  loc_A2720E: FStFPR8 var_8C
  loc_A27211: FFreeAd var_90 = ""
  loc_A27218: FFree1Var var_B4 = ""
  loc_A2721B: ExitProcCbHresult
End Sub

Public Property Get TotaBole() 'A280A4
  'Data Table: 489C84
  loc_A28060: FLdRfVar var_B4
  loc_A28063: FLdRfVar var_A4
  loc_A28066: LitVarStr var_A0, "TotaBole"
  loc_A2806B: PopAdLdVar
  loc_A2806C: FLdRfVar var_90
  loc_A2806F: FLdPr Me
  loc_A28072: MemLdPr RsFrm
  loc_A28075:  = Me.Fields
  loc_A2807A: FLdPr var_90
  loc_A2807D: from_stack_2 = Me.Item(from_stack_1)
  loc_A28082: FLdPr var_A4
  loc_A28085:  = Me.Value
  loc_A2808A: FLdRfVar var_B4
  loc_A2808D: CR4Var
  loc_A2808E: FStFPR8 var_8C
  loc_A28091: FFreeAd var_90 = ""
  loc_A28098: FFree1Var var_B4 = ""
  loc_A2809B: ExitProcCbHresult
  loc_A280A1: FnCDblR8
End Sub

Public Property Get DetaPers() 'A1CEE8
  'Data Table: 489C84
  loc_A1CEB0: ZeroRetValVar
  loc_A1CEB2: FLdRfVar var_AC
  loc_A1CEB5: LitVarStr var_A8, "DetaPers"
  loc_A1CEBA: PopAdLdVar
  loc_A1CEBB: FLdRfVar var_98
  loc_A1CEBE: FLdPr Me
  loc_A1CEC1: MemLdPr RsFrm
  loc_A1CEC4:  = Me.Fields
  loc_A1CEC9: FLdPr var_98
  loc_A1CECC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1CED1: FLdZeroAd var_AC
  loc_A1CED4: CVarAd
  loc_A1CED8: FStVar DetaPers
  loc_A1CEDC: FFree1Ad var_98
  loc_A1CEDF: ExitProcCbHresult
  loc_A1CEE5: CCyI2
End Sub

Public Property Get DetaConc() 'A1CE70
  'Data Table: 489C84
  loc_A1CE38: ZeroRetValVar
  loc_A1CE3A: FLdRfVar var_AC
  loc_A1CE3D: LitVarStr var_A8, "DetaConc"
  loc_A1CE42: PopAdLdVar
  loc_A1CE43: FLdRfVar var_98
  loc_A1CE46: FLdPr Me
  loc_A1CE49: MemLdPr RsFrm
  loc_A1CE4C:  = Me.Fields
  loc_A1CE51: FLdPr var_98
  loc_A1CE54: from_stack_2 = Me.Item(from_stack_1)
  loc_A1CE59: FLdZeroAd var_AC
  loc_A1CE5C: CVarAd
  loc_A1CE60: FStVar DetaConc
  loc_A1CE64: FFree1Ad var_98
  loc_A1CE67: ExitProcCbHresult
End Sub

Public Property Get DetaSece() 'A1CD08
  'Data Table: 489C84
  loc_A1CCD0: ZeroRetValVar
  loc_A1CCD2: FLdRfVar var_AC
  loc_A1CCD5: LitVarStr var_A8, "DetaSece"
  loc_A1CCDA: PopAdLdVar
  loc_A1CCDB: FLdRfVar var_98
  loc_A1CCDE: FLdPr Me
  loc_A1CCE1: MemLdPr RsFrm
  loc_A1CCE4:  = Me.Fields
  loc_A1CCE9: FLdPr var_98
  loc_A1CCEC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1CCF1: FLdZeroAd var_AC
  loc_A1CCF4: CVarAd
  loc_A1CCF8: FStVar DetaSece
  loc_A1CCFC: FFree1Ad var_98
  loc_A1CCFF: ExitProcCbHresult
  loc_A1CD05: Ary1LdRf
End Sub

Public Property Get DetaTise() 'A1C150
  'Data Table: 489C84
  loc_A1C118: ZeroRetValVar
  loc_A1C11A: FLdRfVar var_AC
  loc_A1C11D: LitVarStr var_A8, "DetaTise"
  loc_A1C122: PopAdLdVar
  loc_A1C123: FLdRfVar var_98
  loc_A1C126: FLdPr Me
  loc_A1C129: MemLdPr RsFrm
  loc_A1C12C:  = Me.Fields
  loc_A1C131: FLdPr var_98
  loc_A1C134: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C139: FLdZeroAd var_AC
  loc_A1C13C: CVarAd
  loc_A1C140: FStVar DetaTise
  loc_A1C144: FFree1Ad var_98
  loc_A1C147: ExitProcCbHresult
  loc_A1C14D: SubCy
  loc_A1C14E: DOC
End Sub

Public Property Get Bimestres() 'A1C0D8
  'Data Table: 489C84
  loc_A1C0A0: ZeroRetValVar
  loc_A1C0A2: FLdRfVar var_AC
  loc_A1C0A5: LitVarStr var_A8, "Bimestres"
  loc_A1C0AA: PopAdLdVar
  loc_A1C0AB: FLdRfVar var_98
  loc_A1C0AE: FLdPr Me
  loc_A1C0B1: MemLdPr RsFrm
  loc_A1C0B4:  = Me.Fields
  loc_A1C0B9: FLdPr var_98
  loc_A1C0BC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C0C1: FLdZeroAd var_AC
  loc_A1C0C4: CVarAd
  loc_A1C0C8: FStVar Bimestres
  loc_A1C0CC: FFree1Ad var_98
  loc_A1C0CF: ExitProcCbHresult
End Sub

Public Property Get ImpoSece() 'A1C060
  'Data Table: 489C84
  loc_A1C028: ZeroRetValVar
  loc_A1C02A: FLdRfVar var_AC
  loc_A1C02D: LitVarStr var_A8, "ImpoSece"
  loc_A1C032: PopAdLdVar
  loc_A1C033: FLdRfVar var_98
  loc_A1C036: FLdPr Me
  loc_A1C039: MemLdPr RsFrm
  loc_A1C03C:  = Me.Fields
  loc_A1C041: FLdPr var_98
  loc_A1C044: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C049: FLdZeroAd var_AC
  loc_A1C04C: CVarAd
  loc_A1C050: FStVar ImpoSece
  loc_A1C054: FFree1Ad var_98
  loc_A1C057: ExitProcCbHresult
End Sub

Public Property Get UbicTise() 'A1BFE8
  'Data Table: 489C84
  loc_A1BFB0: ZeroRetValVar
  loc_A1BFB2: FLdRfVar var_AC
  loc_A1BFB5: LitVarStr var_A8, "UbicTise"
  loc_A1BFBA: PopAdLdVar
  loc_A1BFBB: FLdRfVar var_98
  loc_A1BFBE: FLdPr Me
  loc_A1BFC1: MemLdPr RsFrm
  loc_A1BFC4:  = Me.Fields
  loc_A1BFC9: FLdPr var_98
  loc_A1BFCC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1BFD1: FLdZeroAd var_AC
  loc_A1BFD4: CVarAd
  loc_A1BFD8: FStVar UbicTise
  loc_A1BFDC: FFree1Ad var_98
  loc_A1BFDF: ExitProcCbHresult
End Sub

Public Property Get Vinculo(arg_C) 'A1BEF8
  'Data Table: 489C84
  loc_A1BEC0: ZeroRetValVar
  loc_A1BEC2: FLdRfVar var_AC
  loc_A1BEC5: LitVarStr var_A8, "Vinculo"
  loc_A1BECA: PopAdLdVar
  loc_A1BECB: FLdRfVar var_98
  loc_A1BECE: FLdPr Me
  loc_A1BED1: MemLdPr RsFrm
  loc_A1BED4:  = Me.Fields
  loc_A1BED9: FLdPr var_98
  loc_A1BEDC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1BEE1: FLdZeroAd var_AC
  loc_A1BEE4: CVarAd
  loc_A1BEE8: FStVar Vinculo
  loc_A1BEEC: FFree1Ad var_98
  loc_A1BEEF: ExitProcCbHresult
  loc_A1BEF5: PopAdLdVar
  loc_A1BEF6: FLdRfVar arg_C00
End Sub

Public Property Get DetaCall() 'A1BE80
  'Data Table: 489C84
  loc_A1BE48: ZeroRetValVar
  loc_A1BE4A: FLdRfVar var_AC
  loc_A1BE4D: LitVarStr var_A8, "DetaCall"
  loc_A1BE52: PopAdLdVar
  loc_A1BE53: FLdRfVar var_98
  loc_A1BE56: FLdPr Me
  loc_A1BE59: MemLdPr RsFrm
  loc_A1BE5C:  = Me.Fields
  loc_A1BE61: FLdPr var_98
  loc_A1BE64: from_stack_2 = Me.Item(from_stack_1)
  loc_A1BE69: FLdZeroAd var_AC
  loc_A1BE6C: CVarAd
  loc_A1BE70: FStVar DetaCall
  loc_A1BE74: FFree1Ad var_98
  loc_A1BE77: ExitProcCbHresult
End Sub

Public Property Get NucaLice() 'A1BD90
  'Data Table: 489C84
  loc_A1BD58: ZeroRetValVar
  loc_A1BD5A: FLdRfVar var_AC
  loc_A1BD5D: LitVarStr var_A8, "NucaLice"
  loc_A1BD62: PopAdLdVar
  loc_A1BD63: FLdRfVar var_98
  loc_A1BD66: FLdPr Me
  loc_A1BD69: MemLdPr RsFrm
  loc_A1BD6C:  = Me.Fields
  loc_A1BD71: FLdPr var_98
  loc_A1BD74: from_stack_2 = Me.Item(from_stack_1)
  loc_A1BD79: FLdZeroAd var_AC
  loc_A1BD7C: CVarAd
  loc_A1BD80: FStVar NucaLice
  loc_A1BD84: FFree1Ad var_98
  loc_A1BD87: ExitProcCbHresult
End Sub

Public Property Get DetaBarr() 'A1BCA0
  'Data Table: 489C84
  loc_A1BC68: ZeroRetValVar
  loc_A1BC6A: FLdRfVar var_AC
  loc_A1BC6D: LitVarStr var_A8, "DetaBarr"
  loc_A1BC72: PopAdLdVar
  loc_A1BC73: FLdRfVar var_98
  loc_A1BC76: FLdPr Me
  loc_A1BC79: MemLdPr RsFrm
  loc_A1BC7C:  = Me.Fields
  loc_A1BC81: FLdPr var_98
  loc_A1BC84: from_stack_2 = Me.Item(from_stack_1)
  loc_A1BC89: FLdZeroAd var_AC
  loc_A1BC8C: CVarAd
  loc_A1BC90: FStVar DetaBarr
  loc_A1BC94: FFree1Ad var_98
  loc_A1BC97: ExitProcCbHresult
End Sub

Public Property Get DetaLoca() 'A1BAC0
  'Data Table: 489C84
  loc_A1BA88: ZeroRetValVar
  loc_A1BA8A: FLdRfVar var_AC
  loc_A1BA8D: LitVarStr var_A8, "DetaLoca"
  loc_A1BA92: PopAdLdVar
  loc_A1BA93: FLdRfVar var_98
  loc_A1BA96: FLdPr Me
  loc_A1BA99: MemLdPr RsFrm
  loc_A1BA9C:  = Me.Fields
  loc_A1BAA1: FLdPr var_98
  loc_A1BAA4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1BAA9: FLdZeroAd var_AC
  loc_A1BAAC: CVarAd
  loc_A1BAB0: FStVar DetaLoca
  loc_A1BAB4: FFree1Ad var_98
  loc_A1BAB7: ExitProcCbHresult
End Sub

Public Property Get CopoLice() 'A1B160
  'Data Table: 489C84
  loc_A1B128: ZeroRetValVar
  loc_A1B12A: FLdRfVar var_AC
  loc_A1B12D: LitVarStr var_A8, "CopoLice"
  loc_A1B132: PopAdLdVar
  loc_A1B133: FLdRfVar var_98
  loc_A1B136: FLdPr Me
  loc_A1B139: MemLdPr RsFrm
  loc_A1B13C:  = Me.Fields
  loc_A1B141: FLdPr var_98
  loc_A1B144: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B149: FLdZeroAd var_AC
  loc_A1B14C: CVarAd
  loc_A1B150: FStVar CopoLice
  loc_A1B154: FFree1Ad var_98
  loc_A1B157: ExitProcCbHresult
End Sub

Public Property Get CallLiceReal() 'A1B0E8
  'Data Table: 489C84
  loc_A1B0B0: ZeroRetValVar
  loc_A1B0B2: FLdRfVar var_AC
  loc_A1B0B5: LitVarStr var_A8, "CallLiceReal"
  loc_A1B0BA: PopAdLdVar
  loc_A1B0BB: FLdRfVar var_98
  loc_A1B0BE: FLdPr Me
  loc_A1B0C1: MemLdPr RsFrm
  loc_A1B0C4:  = Me.Fields
  loc_A1B0C9: FLdPr var_98
  loc_A1B0CC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B0D1: FLdZeroAd var_AC
  loc_A1B0D4: CVarAd
  loc_A1B0D8: FStVar CallLiceReal
  loc_A1B0DC: FFree1Ad var_98
  loc_A1B0DF: ExitProcCbHresult
End Sub

Public Property Get NucaLiceReal() 'A1AD28
  'Data Table: 489C84
  loc_A1ACF0: ZeroRetValVar
  loc_A1ACF2: FLdRfVar var_AC
  loc_A1ACF5: LitVarStr var_A8, "NucaLiceReal"
  loc_A1ACFA: PopAdLdVar
  loc_A1ACFB: FLdRfVar var_98
  loc_A1ACFE: FLdPr Me
  loc_A1AD01: MemLdPr RsFrm
  loc_A1AD04:  = Me.Fields
  loc_A1AD09: FLdPr var_98
  loc_A1AD0C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1AD11: FLdZeroAd var_AC
  loc_A1AD14: CVarAd
  loc_A1AD18: FStVar NucaLiceReal
  loc_A1AD1C: FFree1Ad var_98
  loc_A1AD1F: ExitProcCbHresult
End Sub

Public Property Get BarrLiceReal() 'A1A9E0
  'Data Table: 489C84
  loc_A1A9A8: ZeroRetValVar
  loc_A1A9AA: FLdRfVar var_AC
  loc_A1A9AD: LitVarStr var_A8, "BarrLiceReal"
  loc_A1A9B2: PopAdLdVar
  loc_A1A9B3: FLdRfVar var_98
  loc_A1A9B6: FLdPr Me
  loc_A1A9B9: MemLdPr RsFrm
  loc_A1A9BC:  = Me.Fields
  loc_A1A9C1: FLdPr var_98
  loc_A1A9C4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A9C9: FLdZeroAd var_AC
  loc_A1A9CC: CVarAd
  loc_A1A9D0: FStVar BarrLiceReal
  loc_A1A9D4: FFree1Ad var_98
  loc_A1A9D7: ExitProcCbHresult
End Sub

Public Property Get ManzLiceReal() 'A1A968
  'Data Table: 489C84
  loc_A1A930: ZeroRetValVar
  loc_A1A932: FLdRfVar var_AC
  loc_A1A935: LitVarStr var_A8, "ManzLiceReal"
  loc_A1A93A: PopAdLdVar
  loc_A1A93B: FLdRfVar var_98
  loc_A1A93E: FLdPr Me
  loc_A1A941: MemLdPr RsFrm
  loc_A1A944:  = Me.Fields
  loc_A1A949: FLdPr var_98
  loc_A1A94C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A951: FLdZeroAd var_AC
  loc_A1A954: CVarAd
  loc_A1A958: FStVar ManzLiceReal
  loc_A1A95C: FFree1Ad var_98
  loc_A1A95F: ExitProcCbHresult
End Sub

Public Property Get CasaLiceReal() 'A1A4B8
  'Data Table: 489C84
  loc_A1A480: ZeroRetValVar
  loc_A1A482: FLdRfVar var_AC
  loc_A1A485: LitVarStr var_A8, "CasaLiceReal"
  loc_A1A48A: PopAdLdVar
  loc_A1A48B: FLdRfVar var_98
  loc_A1A48E: FLdPr Me
  loc_A1A491: MemLdPr RsFrm
  loc_A1A494:  = Me.Fields
  loc_A1A499: FLdPr var_98
  loc_A1A49C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A4A1: FLdZeroAd var_AC
  loc_A1A4A4: CVarAd
  loc_A1A4A8: FStVar CasaLiceReal
  loc_A1A4AC: FFree1Ad var_98
  loc_A1A4AF: ExitProcCbHresult
End Sub

Public Property Get UbicLiceReal() 'A1A0F8
  'Data Table: 489C84
  loc_A1A0C0: ZeroRetValVar
  loc_A1A0C2: FLdRfVar var_AC
  loc_A1A0C5: LitVarStr var_A8, "UbicLiceReal"
  loc_A1A0CA: PopAdLdVar
  loc_A1A0CB: FLdRfVar var_98
  loc_A1A0CE: FLdPr Me
  loc_A1A0D1: MemLdPr RsFrm
  loc_A1A0D4:  = Me.Fields
  loc_A1A0D9: FLdPr var_98
  loc_A1A0DC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A0E1: FLdZeroAd var_AC
  loc_A1A0E4: CVarAd
  loc_A1A0E8: FStVar UbicLiceReal
  loc_A1A0EC: FFree1Ad var_98
  loc_A1A0EF: ExitProcCbHresult
End Sub

Public Property Get LocaLiceReal() 'A1A080
  'Data Table: 489C84
  loc_A1A048: ZeroRetValVar
  loc_A1A04A: FLdRfVar var_AC
  loc_A1A04D: LitVarStr var_A8, "LocaLiceReal"
  loc_A1A052: PopAdLdVar
  loc_A1A053: FLdRfVar var_98
  loc_A1A056: FLdPr Me
  loc_A1A059: MemLdPr RsFrm
  loc_A1A05C:  = Me.Fields
  loc_A1A061: FLdPr var_98
  loc_A1A064: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A069: FLdZeroAd var_AC
  loc_A1A06C: CVarAd
  loc_A1A070: FStVar LocaLiceReal
  loc_A1A074: FFree1Ad var_98
  loc_A1A077: ExitProcCbHresult
End Sub

Public Property Get CopoLiceReal() 'A1A008
  'Data Table: 489C84
  loc_A19FD0: ZeroRetValVar
  loc_A19FD2: FLdRfVar var_AC
  loc_A19FD5: LitVarStr var_A8, "CopoLiceReal"
  loc_A19FDA: PopAdLdVar
  loc_A19FDB: FLdRfVar var_98
  loc_A19FDE: FLdPr Me
  loc_A19FE1: MemLdPr RsFrm
  loc_A19FE4:  = Me.Fields
  loc_A19FE9: FLdPr var_98
  loc_A19FEC: from_stack_2 = Me.Item(from_stack_1)
  loc_A19FF1: FLdZeroAd var_AC
  loc_A19FF4: CVarAd
  loc_A19FF8: FStVar CopoLiceReal
  loc_A19FFC: FFree1Ad var_98
  loc_A19FFF: ExitProcCbHresult
End Sub

Public Property Get CodiUsua() 'A19F90
  'Data Table: 489C84
  loc_A19F58: ZeroRetValVar
  loc_A19F5A: FLdRfVar var_AC
  loc_A19F5D: LitVarStr var_A8, "CodiUsua"
  loc_A19F62: PopAdLdVar
  loc_A19F63: FLdRfVar var_98
  loc_A19F66: FLdPr Me
  loc_A19F69: MemLdPr RsFrm
  loc_A19F6C:  = Me.Fields
  loc_A19F71: FLdPr var_98
  loc_A19F74: from_stack_2 = Me.Item(from_stack_1)
  loc_A19F79: FLdZeroAd var_AC
  loc_A19F7C: CVarAd
  loc_A19F80: FStVar CodiUsua
  loc_A19F84: FFree1Ad var_98
  loc_A19F87: ExitProcCbHresult
End Sub

Public Property Get PeriBole() 'A19F18
  'Data Table: 489C84
  loc_A19EE0: ZeroRetValVar
  loc_A19EE2: FLdRfVar var_AC
  loc_A19EE5: LitVarStr var_A8, "PeriBole"
  loc_A19EEA: PopAdLdVar
  loc_A19EEB: FLdRfVar var_98
  loc_A19EEE: FLdPr Me
  loc_A19EF1: MemLdPr RsFrm
  loc_A19EF4:  = Me.Fields
  loc_A19EF9: FLdPr var_98
  loc_A19EFC: from_stack_2 = Me.Item(from_stack_1)
  loc_A19F01: FLdZeroAd var_AC
  loc_A19F04: CVarAd
  loc_A19F08: FStVar PeriBole
  loc_A19F0C: FFree1Ad var_98
  loc_A19F0F: ExitProcCbHresult
End Sub

Public Property Get NumeBole() 'A19EA0
  'Data Table: 489C84
  loc_A19E68: ZeroRetValVar
  loc_A19E6A: FLdRfVar var_AC
  loc_A19E6D: LitVarStr var_A8, "NumeBole"
  loc_A19E72: PopAdLdVar
  loc_A19E73: FLdRfVar var_98
  loc_A19E76: FLdPr Me
  loc_A19E79: MemLdPr RsFrm
  loc_A19E7C:  = Me.Fields
  loc_A19E81: FLdPr var_98
  loc_A19E84: from_stack_2 = Me.Item(from_stack_1)
  loc_A19E89: FLdZeroAd var_AC
  loc_A19E8C: CVarAd
  loc_A19E90: FStVar NumeBole
  loc_A19E94: FFree1Ad var_98
  loc_A19E97: ExitProcCbHresult
End Sub

Public Property Get RecaBole() 'A19E28
  'Data Table: 489C84
  loc_A19DF0: ZeroRetValVar
  loc_A19DF2: FLdRfVar var_AC
  loc_A19DF5: LitVarStr var_A8, "RecaBole"
  loc_A19DFA: PopAdLdVar
  loc_A19DFB: FLdRfVar var_98
  loc_A19DFE: FLdPr Me
  loc_A19E01: MemLdPr RsFrm
  loc_A19E04:  = Me.Fields
  loc_A19E09: FLdPr var_98
  loc_A19E0C: from_stack_2 = Me.Item(from_stack_1)
  loc_A19E11: FLdZeroAd var_AC
  loc_A19E14: CVarAd
  loc_A19E18: FStVar RecaBole
  loc_A19E1C: FFree1Ad var_98
  loc_A19E1F: ExitProcCbHresult
End Sub

Public Property Get CEmision() 'A19DB0
  'Data Table: 489C84
  loc_A19D78: ZeroRetValVar
  loc_A19D7A: FLdRfVar var_AC
  loc_A19D7D: LitVarStr var_A8, "CEmision"
  loc_A19D82: PopAdLdVar
  loc_A19D83: FLdRfVar var_98
  loc_A19D86: FLdPr Me
  loc_A19D89: MemLdPr RsFrm
  loc_A19D8C:  = Me.Fields
  loc_A19D91: FLdPr var_98
  loc_A19D94: from_stack_2 = Me.Item(from_stack_1)
  loc_A19D99: FLdZeroAd var_AC
  loc_A19D9C: CVarAd
  loc_A19DA0: FStVar CEmision
  loc_A19DA4: FFree1Ad var_98
  loc_A19DA7: ExitProcCbHresult
End Sub

Public Sub BorraLiquidacion(PeriLiqu, CodiTili) 'B905A4
  'Data Table: 489C84
  loc_B9014C: LitStr "SELECT PeriLiqu, CodiOfic, CodiTili, NumeLiqu FROM liquidacion WHERE PeriLiqu = "
  loc_B9014F: FLdI2 PeriLiqu
  loc_B90152: CStrUI1
  loc_B90154: FStStrNoPop var_88
  loc_B90157: ConcatStr
  loc_B90158: FStStrNoPop var_8C
  loc_B9015B: LitStr " AND CodiOfic = 4 AND CodiTili = "
  loc_B9015E: ConcatStr
  loc_B9015F: FStStrNoPop var_90
  loc_B90162: FLdUI1
  loc_B90166: CStrI2
  loc_B90168: FStStrNoPop var_94
  loc_B9016B: ConcatStr
  loc_B9016C: FStStrNoPop var_98
  loc_B9016F: LitStr " AND ActuLiqu = 'No' ORDER BY PeriLiqu, CodiTili, NumeLiqu"
  loc_B90172: ConcatStr
  loc_B90173: FStStrNoPop var_9C
  loc_B90176: Call EjecutarRsCls(from_stack_1v)
  loc_B9017B: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_B9018A: FLdRfVar var_A0
  loc_B9018D: FLdPr Me
  loc_B90190: MemLdPr global_56
  loc_B90193:  = Me.RecordCount
  loc_B90198: ILdRf var_A0
  loc_B9019B: LitI4 0
  loc_B901A0: GtI4
  loc_B901A1: BranchF loc_B905A2
  loc_B901A4: LitStr "START TRANSACTION;"
  loc_B901A7: LitStr " DELETE FROM liquceme WHERE PeriLiqu = "
  loc_B901AA: ConcatStr
  loc_B901AB: FStStrNoPop var_88
  loc_B901AE: FLdI2 PeriLiqu
  loc_B901B1: CStrUI1
  loc_B901B3: FStStrNoPop var_8C
  loc_B901B6: ConcatStr
  loc_B901B7: FStStrNoPop var_90
  loc_B901BA: LitStr " AND CodiTili = "
  loc_B901BD: ConcatStr
  loc_B901BE: FStStrNoPop var_94
  loc_B901C1: FLdUI1
  loc_B901C5: CStrI2
  loc_B901C7: FStStrNoPop var_98
  loc_B901CA: ConcatStr
  loc_B901CB: FStStrNoPop var_9C
  loc_B901CE: LitStr " AND NumeLiqu = "
  loc_B901D1: ConcatStr
  loc_B901D2: CVarStr var_D8
  loc_B901D5: FLdRfVar var_C8
  loc_B901D8: FLdRfVar var_B8
  loc_B901DB: LitVarStr var_B4, "NumeLiqu"
  loc_B901E0: PopAdLdVar
  loc_B901E1: FLdRfVar var_A4
  loc_B901E4: FLdPr Me
  loc_B901E7: MemLdPr global_56
  loc_B901EA:  = Me.Fields
  loc_B901EF: FLdPr var_A4
  loc_B901F2: from_stack_2 = Me.Item(from_stack_1)
  loc_B901F7: FLdPr var_B8
  loc_B901FA:  = Me.Value
  loc_B901FF: FLdRfVar var_C8
  loc_B90202: ConcatVar var_E8
  loc_B90206: LitVarStr var_F8, " AND ActuLice = 'No';"
  loc_B9020B: ConcatVar var_108
  loc_B9020F: LitVarStr var_118, " DELETE FROM licedeta WHERE PeriLiqu = "
  loc_B90214: ConcatVar var_128
  loc_B90218: FLdI2 PeriLiqu
  loc_B9021B: CVarI2 var_138
  loc_B9021E: ConcatVar var_148
  loc_B90222: LitVarStr var_158, " AND CodiTili = "
  loc_B90227: ConcatVar var_168
  loc_B9022B: FLdUI1
  loc_B9022F: CVarUI1
  loc_B90233: ConcatVar var_188
  loc_B90237: LitVarStr var_198, " AND NumeLiqu = "
  loc_B9023C: ConcatVar var_1A8
  loc_B90240: FLdRfVar var_1D0
  loc_B90243: FLdRfVar var_1C0
  loc_B90246: LitVarStr var_1BC, "NumeLiqu"
  loc_B9024B: PopAdLdVar
  loc_B9024C: FLdRfVar var_1AC
  loc_B9024F: FLdPr Me
  loc_B90252: MemLdPr global_56
  loc_B90255:  = Me.Fields
  loc_B9025A: FLdPr var_1AC
  loc_B9025D: from_stack_2 = Me.Item(from_stack_1)
  loc_B90262: FLdPr var_1C0
  loc_B90265:  = Me.Value
  loc_B9026A: FLdRfVar var_1D0
  loc_B9026D: ConcatVar var_1E0
  loc_B90271: LitVarStr var_1F0, ";"
  loc_B90276: ConcatVar var_200
  loc_B9027A: LitVarStr var_210, " DELETE FROM erroliqu WHERE PeriLiqu = "
  loc_B9027F: ConcatVar var_220
  loc_B90283: FLdI2 PeriLiqu
  loc_B90286: CVarI2 var_230
  loc_B90289: ConcatVar var_240
  loc_B9028D: LitVarStr var_250, " AND CodiTili = "
  loc_B90292: ConcatVar var_260
  loc_B90296: FLdUI1
  loc_B9029A: CVarUI1
  loc_B9029E: ConcatVar var_280
  loc_B902A2: LitVarStr var_290, " AND NumeLiqu = "
  loc_B902A7: ConcatVar var_2A0
  loc_B902AB: FLdRfVar var_2C8
  loc_B902AE: FLdRfVar var_2B8
  loc_B902B1: LitVarStr var_2B4, "NumeLiqu"
  loc_B902B6: PopAdLdVar
  loc_B902B7: FLdRfVar var_2A4
  loc_B902BA: FLdPr Me
  loc_B902BD: MemLdPr global_56
  loc_B902C0:  = Me.Fields
  loc_B902C5: FLdPr var_2A4
  loc_B902C8: from_stack_2 = Me.Item(from_stack_1)
  loc_B902CD: FLdPr var_2B8
  loc_B902D0:  = Me.Value
  loc_B902D5: FLdRfVar var_2C8
  loc_B902D8: ConcatVar var_2D8
  loc_B902DC: LitVarStr var_2E8, " AND CodiOfic = "
  loc_B902E1: ConcatVar var_2F8
  loc_B902E5: FLdRfVar var_320
  loc_B902E8: FLdRfVar var_310
  loc_B902EB: LitVarStr var_30C, "CodiOfic"
  loc_B902F0: PopAdLdVar
  loc_B902F1: FLdRfVar var_2FC
  loc_B902F4: FLdPr Me
  loc_B902F7: MemLdPr global_56
  loc_B902FA:  = Me.Fields
  loc_B902FF: FLdPr var_2FC
  loc_B90302: from_stack_2 = Me.Item(from_stack_1)
  loc_B90307: FLdPr var_310
  loc_B9030A:  = Me.Value
  loc_B9030F: FLdRfVar var_320
  loc_B90312: ConcatVar var_330
  loc_B90316: LitVarStr var_340, ";"
  loc_B9031B: ConcatVar var_350
  loc_B9031F: LitVarStr var_360, " UPDATE recabole SET PeriLiqu = 0, BimeLiqu = 0, CodiTili = 0, NumeLiqu = 0 WHERE CodiOfic = 4 AND PeriLiqu = "
  loc_B90324: ConcatVar var_370
  loc_B90328: FLdI2 PeriLiqu
  loc_B9032B: CVarI2 var_380
  loc_B9032E: ConcatVar var_390
  loc_B90332: LitVarStr var_3A0, " AND CodiTili = "
  loc_B90337: ConcatVar var_3B0
  loc_B9033B: FLdUI1
  loc_B9033F: CVarUI1
  loc_B90343: ConcatVar var_3D0
  loc_B90347: LitVarStr var_3E0, " AND NumeLiqu = "
  loc_B9034C: ConcatVar var_3F0
  loc_B90350: FLdRfVar var_418
  loc_B90353: FLdRfVar var_408
  loc_B90356: LitVarStr var_404, "NumeLiqu"
  loc_B9035B: PopAdLdVar
  loc_B9035C: FLdRfVar var_3F4
  loc_B9035F: FLdPr Me
  loc_B90362: MemLdPr global_56
  loc_B90365:  = Me.Fields
  loc_B9036A: FLdPr var_3F4
  loc_B9036D: from_stack_2 = Me.Item(from_stack_1)
  loc_B90372: FLdPr var_408
  loc_B90375:  = Me.Value
  loc_B9037A: FLdRfVar var_418
  loc_B9037D: ConcatVar var_428
  loc_B90381: LitVarStr var_438, " AND ActuRebo = 'No';"
  loc_B90386: ConcatVar var_448
  loc_B9038A: LitVarStr var_458, " UPDATE pagoanti SET CodiTili = 0, NumeLiqu = 0 WHERE PeriLiqu = "
  loc_B9038F: ConcatVar var_468
  loc_B90393: FLdI2 PeriLiqu
  loc_B90396: CVarI2 var_478
  loc_B90399: ConcatVar var_488
  loc_B9039D: LitVarStr var_498, " AND CodiTili = "
  loc_B903A2: ConcatVar var_4A8
  loc_B903A6: FLdUI1
  loc_B903AA: CVarUI1
  loc_B903AE: ConcatVar var_4C8
  loc_B903B2: LitVarStr var_4D8, " AND NumeLiqu = "
  loc_B903B7: ConcatVar var_4E8
  loc_B903BB: FLdRfVar var_510
  loc_B903BE: FLdRfVar var_500
  loc_B903C1: LitVarStr var_4FC, "NumeLiqu"
  loc_B903C6: PopAdLdVar
  loc_B903C7: FLdRfVar var_4EC
  loc_B903CA: FLdPr Me
  loc_B903CD: MemLdPr global_56
  loc_B903D0:  = Me.Fields
  loc_B903D5: FLdPr var_4EC
  loc_B903D8: from_stack_2 = Me.Item(from_stack_1)
  loc_B903DD: FLdPr var_500
  loc_B903E0:  = Me.Value
  loc_B903E5: FLdRfVar var_510
  loc_B903E8: ConcatVar var_520
  loc_B903EC: LitVarStr var_530, " AND (EstaPaan = 'Actualizado' OR EstaPaan = 'Liquidado');"
  loc_B903F1: ConcatVar var_540
  loc_B903F5: LitVarStr var_550, " DELETE FROM liquidacion WHERE PeriLiqu = "
  loc_B903FA: ConcatVar var_560
  loc_B903FE: FLdI2 PeriLiqu
  loc_B90401: CVarI2 var_570
  loc_B90404: ConcatVar var_580
  loc_B90408: LitVarStr var_590, " AND CodiOfic = 4 AND CodiTili = "
  loc_B9040D: ConcatVar var_5A0
  loc_B90411: FLdUI1
  loc_B90415: CVarUI1
  loc_B90419: ConcatVar var_5C0
  loc_B9041D: LitVarStr var_5D0, " AND NumeLiqu = "
  loc_B90422: ConcatVar var_5E0
  loc_B90426: FLdRfVar var_608
  loc_B90429: FLdRfVar var_5F8
  loc_B9042C: LitVarStr var_5F4, "NumeLiqu"
  loc_B90431: PopAdLdVar
  loc_B90432: FLdRfVar var_5E4
  loc_B90435: FLdPr Me
  loc_B90438: MemLdPr global_56
  loc_B9043B:  = Me.Fields
  loc_B90440: FLdPr var_5E4
  loc_B90443: from_stack_2 = Me.Item(from_stack_1)
  loc_B90448: FLdPr var_5F8
  loc_B9044B:  = Me.Value
  loc_B90450: FLdRfVar var_608
  loc_B90453: ConcatVar var_618
  loc_B90457: LitVarStr var_628, " AND ActuLiqu = 'No';"
  loc_B9045C: ConcatVar var_638
  loc_B90460: LitVarStr var_648, " DELETE FROM pagoanual WHERE PeriLiqu = "
  loc_B90465: ConcatVar var_658
  loc_B90469: FLdI2 PeriLiqu
  loc_B9046C: CVarI2 var_668
  loc_B9046F: ConcatVar var_678
  loc_B90473: LitVarStr var_688, " AND CodiOfic = 4 AND CodiTili = "
  loc_B90478: ConcatVar var_698
  loc_B9047C: FLdUI1
  loc_B90480: CVarUI1
  loc_B90484: ConcatVar var_6B8
  loc_B90488: LitVarStr var_6C8, " AND NumeLiqu = "
  loc_B9048D: ConcatVar var_6D8
  loc_B90491: FLdRfVar var_700
  loc_B90494: FLdRfVar var_6F0
  loc_B90497: LitVarStr var_6EC, "NumeLiqu"
  loc_B9049C: PopAdLdVar
  loc_B9049D: FLdRfVar var_6DC
  loc_B904A0: FLdPr Me
  loc_B904A3: MemLdPr global_56
  loc_B904A6:  = Me.Fields
  loc_B904AB: FLdPr var_6DC
  loc_B904AE: from_stack_2 = Me.Item(from_stack_1)
  loc_B904B3: FLdPr var_6F0
  loc_B904B6:  = Me.Value
  loc_B904BB: FLdRfVar var_700
  loc_B904BE: ConcatVar var_710
  loc_B904C2: LitVarStr var_720, " AND FepaPaan IS NULL ORDER BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu"
  loc_B904C7: ConcatVar var_730
  loc_B904CB: CStrVarTmp
  loc_B904CC: FStStrNoPop var_734
  loc_B904CF: FLdPr Me
  loc_B904D2: MemStStrCopy
  loc_B904D6: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_B904E7: FFreeAd var_A4 = "": var_B8 = "": var_1AC = "": var_1C0 = "": var_2A4 = "": var_2B8 = "": var_2FC = "": var_310 = "": var_3F4 = "": var_408 = "": var_4EC = "": var_500 = "": var_5E4 = "": var_5F8 = "": var_6DC = ""
  loc_B9050A: FFreeVar var_448 = "": var_468 = "": var_488 = "": var_4A8 = "": var_4C8 = "": var_4E8 = "": var_510 = "": var_520 = "": var_540 = "": var_560 = "": var_580 = "": var_5A0 = "": var_5C0 = "": var_5E0 = "": var_608 = "": var_618 = "": var_638 = "": var_658 = "": var_678 = "": var_698 = "": var_6B8 = "": var_6D8 = "": var_700 = "": var_710 = "": var_730 = "": var_D8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1D0 = "": var_1E0 = "": var_200 = "": var_220 = "": var_240 = "": var_260 = "": var_280 = "": var_2A0 = "": var_2C8 = "": var_2D8 = "": var_2F8 = "": var_320 = "": var_330 = "": var_350 = "": var_370 = "": var_390 = "": var_3B0 = "": var_3D0 = "": var_3F0 = "": var_418 = ""
  loc_B9057B: OnErrorGoto loc_B90592
  loc_B9057E: FLdPr Me
  loc_B90581: MemLdStr global_80
  loc_B90584: Call EjecutarRsCls(from_stack_1v)
  loc_B90589: LitStr "COMMIT;"
  loc_B9058C: Call EjecutarRsCls(from_stack_1v)
  loc_B90591: ExitProcHresult
  loc_B90592: LitStr "ROLLBACK;"
  loc_B90595: Call EjecutarRsCls(from_stack_1v)
  loc_B9059A: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B9059D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B905A2: ExitProcHresult
End Sub

Public Sub CreaErrorLiquidacion(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiDifu, DetaErli) 'A72844
  'Data Table: 489C84
  loc_A727D8: ILdRf DetaErli
  loc_A727DB: FStStrCopy var_88
  loc_A727DE: FLdRfVar var_92
  loc_A727E1: ILdRf CodiDifu
  loc_A727E4: CStrI4
  loc_A727E6: FStStrNoPop var_90
  loc_A727E9: LitI2_Byte 4
  loc_A727EB: CUI1I2
  loc_A727ED: FLdI2 NumeLiqu
  loc_A727F0: FLdUI1
  loc_A727F4: FLdUI1
  loc_A727F8: FLdI2 PeriLiqu
  loc_A727FB: FLdRfVar var_8C
  loc_A727FE: NewIfNullPr clserroliqu
  loc_A72801: from_stack_7v = clserroliqu.NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_A72806: ILdRf var_88
  loc_A72809: FLdI2 var_92
  loc_A7280C: CUI1I2
  loc_A7280E: ILdRf CodiDifu
  loc_A72811: CStrI4
  loc_A72813: FStStrNoPop var_98
  loc_A72816: LitI2_Byte 4
  loc_A72818: CUI1I2
  loc_A7281A: FLdI2 NumeLiqu
  loc_A7281D: FLdUI1
  loc_A72821: FLdUI1
  loc_A72825: FLdI2 PeriLiqu
  loc_A72828: FLdRfVar var_8C
  loc_A7282B: NewIfNullPr clserroliqu
  loc_A7282E: Call clserroliqu.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_A72833: FFreeStr var_90 = ""
  loc_A7283A: LitNothing
  loc_A7283C: CastAd
  loc_A7283F: FStAdFunc var_8C
  loc_A72842: ExitProcHresult
End Sub

Public Function BuscaPorcentajeExcepcion(CodiExce) '9F0DE8
  'Data Table: 489C84
  loc_9F0DC0: FLdRfVar var_98
  loc_9F0DC3: FLdI2 CodiExce
  loc_9F0DC6: FLdRfVar var_90
  loc_9F0DC9: NewIfNullPr clsexcepcion
  loc_9F0DCC: from_stack_2v = clsexcepcion.BuscaPorcentajeExcepcion(from_stack_1v)
  loc_9F0DD1: FLdFPR8 var_98
  loc_9F0DD4: FStFPR8 var_8C
  loc_9F0DD7: LitNothing
  loc_9F0DD9: CastAd
  loc_9F0DDC: FStAdFunc var_90
  loc_9F0DDF: ExitProcCbHresult
End Function

Public Function BuscaDeudaParaLibreDeuda(CodiCome) 'A113A8
  'Data Table: 489C84
  loc_A1136C: FLdRfVar var_9C
  loc_A1136F: LitI4 0
  loc_A11374: LitI4 0
  loc_A11379: ILdRf CodiCome
  loc_A1137C: CStrI4
  loc_A1137E: FStStrNoPop BuscaDeudaParaLibreDeuda
  loc_A11381: LitI2_Byte 2
  loc_A11383: FLdRfVar var_90
  loc_A11386: NewIfNullPr clsctacte
  loc_A11389: from_stack_5v = clsctacte.BuscaDeudaParaLibreDeuda(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_A1138E: FLdFPR8 var_9C
  loc_A11391: FStFPR8 var_8C
  loc_A11394: FFree1Str BuscaDeudaParaLibreDeuda
  loc_A11397: LitNothing
  loc_A11399: CastAd
  loc_A1139C: FStAdFunc var_90
  loc_A1139F: ExitProcCbHresult
End Function

Public Function GeneracionCuentaCorriente(PeriLiqu, CodiTili, NumeLiqu, CodiCome, lOrden, iPeriodo, doDeanTili) 'D31D58
  'Data Table: 489C84
  loc_D2DC7C: ZeroRetVal
  loc_D2DC7E: LitI2_Byte 0
  loc_D2DC80: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_D2DC85: FStFPR8 var_A4
  loc_D2DC88: LitStr "SELECT SUM(ImpoLice) - SUM(CrafLice) as CapiBole, SUM(DescLice) as  DecaBole, SUM(ExenLice) as ExenBole, SUM(TotaLice) as  TotaBole, PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiDifu, CodiConc, TipoVenc, CucuPers, ActuLice, FealLice, FeveLice, TipoLice FROM liquceme "
  loc_D2DC8B: LitStr " WHERE PeriLiqu = "
  loc_D2DC8E: ConcatStr
  loc_D2DC8F: FStStrNoPop var_12C
  loc_D2DC92: FLdI2 PeriLiqu
  loc_D2DC95: CStrUI1
  loc_D2DC97: FStStrNoPop var_130
  loc_D2DC9A: ConcatStr
  loc_D2DC9B: FStStrNoPop var_134
  loc_D2DC9E: LitStr " AND CodiTili = "
  loc_D2DCA1: ConcatStr
  loc_D2DCA2: FStStrNoPop var_138
  loc_D2DCA5: FLdUI1
  loc_D2DCA9: CStrI2
  loc_D2DCAB: FStStrNoPop var_13C
  loc_D2DCAE: ConcatStr
  loc_D2DCAF: FStStrNoPop var_140
  loc_D2DCB2: LitStr " AND NumeLiqu = "
  loc_D2DCB5: ConcatStr
  loc_D2DCB6: FStStrNoPop var_144
  loc_D2DCB9: FLdI2 NumeLiqu
  loc_D2DCBC: CStrUI1
  loc_D2DCBE: FStStrNoPop var_148
  loc_D2DCC1: ConcatStr
  loc_D2DCC2: FStStrNoPop var_14C
  loc_D2DCC5: LitStr " AND CodiDifu = "
  loc_D2DCC8: ConcatStr
  loc_D2DCC9: FStStrNoPop var_150
  loc_D2DCCC: ILdRf CodiCome
  loc_D2DCCF: CStrI4
  loc_D2DCD1: FStStrNoPop var_154
  loc_D2DCD4: ConcatStr
  loc_D2DCD5: FStStrNoPop var_158
  loc_D2DCD8: LitStr " AND ActuLice = 'No' "
  loc_D2DCDB: ConcatStr
  loc_D2DCDC: FStStrNoPop var_15C
  loc_D2DCDF: LitStr " GROUP BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiDifu, TipoVenc"
  loc_D2DCE2: ConcatStr
  loc_D2DCE3: FStStrNoPop var_160
  loc_D2DCE6: LitStr " ORDER BY PeriLiqu, TipoVenc, BimeLiqu;"
  loc_D2DCE9: ConcatStr
  loc_D2DCEA: FStStrNoPop var_164
  loc_D2DCED: Call EjecutarRsCls2(from_stack_1v)
  loc_D2DCF2: FFreeStr var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_D2DD13: FLdRfVar var_168
  loc_D2DD16: FLdPr Me
  loc_D2DD19: MemLdPr global_64
  loc_D2DD1C:  = Me.RecordCount
  loc_D2DD21: ILdRf var_168
  loc_D2DD24: LitI4 0
  loc_D2DD29: GtI4
  loc_D2DD2A: BranchF loc_D31CFA
  loc_D2DD2D: OnErrorGoto loc_D31D00
  loc_D2DD30: LitStr "START TRANSACTION;"
  loc_D2DD33: Call EjecutarRsCls(from_stack_1v)
  loc_D2DD38: FLdPr Me
  loc_D2DD3B: MemLdPr global_64
  loc_D2DD3E: Me.MoveFirst
  loc_D2DD43: FLdRfVar var_16A
  loc_D2DD46: FLdPr Me
  loc_D2DD49: MemLdPr global_64
  loc_D2DD4C:  = Me.EOF
  loc_D2DD51: FLdI2 var_16A
  loc_D2DD54: NotI4
  loc_D2DD55: BranchF loc_D31CF2
  loc_D2DD58: FLdRfVar var_194
  loc_D2DD5B: FLdRfVar var_184
  loc_D2DD5E: LitVarStr var_180, "TotaBole"
  loc_D2DD63: PopAdLdVar
  loc_D2DD64: FLdRfVar var_170
  loc_D2DD67: FLdPr Me
  loc_D2DD6A: MemLdPr global_64
  loc_D2DD6D:  = Me.Fields
  loc_D2DD72: FLdPr var_170
  loc_D2DD75: from_stack_2 = Me.Item(from_stack_1)
  loc_D2DD7A: FLdPr var_184
  loc_D2DD7D:  = Me.Value
  loc_D2DD82: FLdRfVar var_194
  loc_D2DD85: LitVarI2 var_1A4, 0
  loc_D2DD8A: HardType
  loc_D2DD8B: GtVarBool
  loc_D2DD8D: FFreeAd var_170 = ""
  loc_D2DD94: FFree1Var var_194 = ""
  loc_D2DD97: BranchF loc_D2E133
  loc_D2DD9A: FLdRfVar var_194
  loc_D2DD9D: FLdRfVar var_184
  loc_D2DDA0: LitVarStr var_180, "TipoVenc"
  loc_D2DDA5: PopAdLdVar
  loc_D2DDA6: FLdRfVar var_170
  loc_D2DDA9: FLdPr Me
  loc_D2DDAC: MemLdPr global_64
  loc_D2DDAF:  = Me.Fields
  loc_D2DDB4: FLdPr var_170
  loc_D2DDB7: from_stack_2 = Me.Item(from_stack_1)
  loc_D2DDBC: FLdPr var_184
  loc_D2DDBF:  = Me.Value
  loc_D2DDC4: FLdRfVar var_194
  loc_D2DDC7: FnCIntVar
  loc_D2DDC9: LitI2_Byte 1
  loc_D2DDCB: EqI2
  loc_D2DDCC: FFreeAd var_170 = ""
  loc_D2DDD3: FFree1Var var_194 = ""
  loc_D2DDD6: BranchF loc_D2E0DD
  loc_D2DDD9: LitI2_Byte 0
  loc_D2DDDB: CR8I2
  loc_D2DDDC: FStFPR8 var_B0
  loc_D2DDDF: LitI2_Byte 0
  loc_D2DDE1: CR8I2
  loc_D2DDE2: FStFPR8 var_B8
  loc_D2DDE5: FLdRfVar var_168
  loc_D2DDE8: FLdI2 iPeriodo
  loc_D2DDEB: FLdRfVar var_8C
  loc_D2DDEE: NewIfNullPr clsnumebole
  loc_D2DDF1: from_stack_2v = clsnumebole.NuevoRegistro(from_stack_1v)
  loc_D2DDF6: ILdRf var_168
  loc_D2DDF9: FStR4 var_9C
  loc_D2DDFC: FLdRfVar var_2B4
  loc_D2DDFF: LitVarStr var_2B0, "FeveLice"
  loc_D2DE04: PopAdLdVar
  loc_D2DE05: FLdRfVar var_2A0
  loc_D2DE08: FLdPr Me
  loc_D2DE0B: MemLdPr global_64
  loc_D2DE0E:  = Me.Fields
  loc_D2DE13: FLdPr var_2A0
  loc_D2DE16: from_stack_2 = Me.Item(from_stack_1)
  loc_D2DE1B: FLdRfVar var_3FC
  loc_D2DE1E: FLdRfVar var_3EC
  loc_D2DE21: LitVarStr var_3E8, "TotaBole"
  loc_D2DE26: PopAdLdVar
  loc_D2DE27: FLdRfVar var_3D8
  loc_D2DE2A: FLdPr Me
  loc_D2DE2D: MemLdPr global_64
  loc_D2DE30:  = Me.Fields
  loc_D2DE35: FLdPr var_3D8
  loc_D2DE38: from_stack_2 = Me.Item(from_stack_1)
  loc_D2DE3D: FLdPr var_3EC
  loc_D2DE40:  = Me.Value
  loc_D2DE45: FLdRfVar var_464
  loc_D2DE48: FLdRfVar var_454
  loc_D2DE4B: LitVarStr var_450, "TotaBole"
  loc_D2DE50: PopAdLdVar
  loc_D2DE51: FLdRfVar var_440
  loc_D2DE54: FLdPr Me
  loc_D2DE57: MemLdPr global_64
  loc_D2DE5A:  = Me.Fields
  loc_D2DE5F: FLdPr var_440
  loc_D2DE62: from_stack_2 = Me.Item(from_stack_1)
  loc_D2DE67: FLdPr var_454
  loc_D2DE6A:  = Me.Value
  loc_D2DE6F: LitStr " INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiTili, NumeLiqu, CodiFapa, CuotDefa, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, ApreBole, TotaBole, CodiUsua) "
  loc_D2DE72: LitStr " VALUES ("
  loc_D2DE75: ConcatStr
  loc_D2DE76: FStStrNoPop var_12C
  loc_D2DE79: FLdI2 iPeriodo
  loc_D2DE7C: CStrUI1
  loc_D2DE7E: FStStrNoPop var_130
  loc_D2DE81: ConcatStr
  loc_D2DE82: FStStrNoPop var_134
  loc_D2DE85: LitStr ","
  loc_D2DE88: ConcatStr
  loc_D2DE89: FStStrNoPop var_138
  loc_D2DE8C: ILdRf var_9C
  loc_D2DE8F: CStrI4
  loc_D2DE91: FStStrNoPop var_13C
  loc_D2DE94: ConcatStr
  loc_D2DE95: FStStrNoPop var_140
  loc_D2DE98: LitStr ",4,'"
  loc_D2DE9B: ConcatStr
  loc_D2DE9C: CVarStr var_1B4
  loc_D2DE9F: FLdRfVar var_194
  loc_D2DEA2: FLdRfVar var_184
  loc_D2DEA5: LitVarStr var_180, "CodiDifu"
  loc_D2DEAA: PopAdLdVar
  loc_D2DEAB: FLdRfVar var_170
  loc_D2DEAE: FLdPr Me
  loc_D2DEB1: MemLdPr global_64
  loc_D2DEB4:  = Me.Fields
  loc_D2DEB9: FLdPr var_170
  loc_D2DEBC: from_stack_2 = Me.Item(from_stack_1)
  loc_D2DEC1: FLdPr var_184
  loc_D2DEC4:  = Me.Value
  loc_D2DEC9: FLdRfVar var_194
  loc_D2DECC: ConcatVar var_1C4
  loc_D2DED0: LitVarStr var_1A4, "','"
  loc_D2DED5: ConcatVar var_1D4
  loc_D2DED9: FLdRfVar var_1FC
  loc_D2DEDC: FLdRfVar var_1EC
  loc_D2DEDF: LitVarStr var_1E8, "CucuPers"
  loc_D2DEE4: PopAdLdVar
  loc_D2DEE5: FLdRfVar var_1D8
  loc_D2DEE8: FLdPr Me
  loc_D2DEEB: MemLdPr global_64
  loc_D2DEEE:  = Me.Fields
  loc_D2DEF3: FLdPr var_1D8
  loc_D2DEF6: from_stack_2 = Me.Item(from_stack_1)
  loc_D2DEFB: FLdPr var_1EC
  loc_D2DEFE:  = Me.Value
  loc_D2DF03: FLdRfVar var_1FC
  loc_D2DF06: ConcatVar var_20C
  loc_D2DF0A: LitVarStr var_21C, "','"
  loc_D2DF0F: ConcatVar var_22C
  loc_D2DF13: LitI4 1
  loc_D2DF18: LitI4 1
  loc_D2DF1D: LitVarStr var_24C, "yyyy-mm-dd"
  loc_D2DF22: FStVarCopyObj var_25C
  loc_D2DF25: FLdRfVar var_25C
  loc_D2DF28: FLdRfVar var_A4
  loc_D2DF2B: CVarRef
  loc_D2DF30: ImpAdCallI2 Format$(, )
  loc_D2DF35: CVarStr var_26C
  loc_D2DF38: ConcatVar var_27C
  loc_D2DF3C: LitVarStr var_28C, "','"
  loc_D2DF41: ConcatVar var_29C
  loc_D2DF45: LitI4 1
  loc_D2DF4A: LitI4 1
  loc_D2DF4F: LitVarStr var_2D4, "yyyy-mm-dd"
  loc_D2DF54: FStVarCopyObj var_2E4
  loc_D2DF57: FLdRfVar var_2E4
  loc_D2DF5A: FLdZeroAd var_2B4
  loc_D2DF5D: CVarAd
  loc_D2DF61: ImpAdCallI2 Format$(, )
  loc_D2DF66: CVarStr var_2F4
  loc_D2DF69: ConcatVar var_304
  loc_D2DF6D: LitVarStr var_314, "',0,'Bimestral','Emitido',"
  loc_D2DF72: ConcatVar var_324
  loc_D2DF76: FLdRfVar var_34C
  loc_D2DF79: FLdRfVar var_33C
  loc_D2DF7C: LitVarStr var_338, "CodiTili"
  loc_D2DF81: PopAdLdVar
  loc_D2DF82: FLdRfVar var_328
  loc_D2DF85: FLdPr Me
  loc_D2DF88: MemLdPr global_64
  loc_D2DF8B:  = Me.Fields
  loc_D2DF90: FLdPr var_328
  loc_D2DF93: from_stack_2 = Me.Item(from_stack_1)
  loc_D2DF98: FLdPr var_33C
  loc_D2DF9B:  = Me.Value
  loc_D2DFA0: FLdRfVar var_34C
  loc_D2DFA3: ConcatVar var_35C
  loc_D2DFA7: LitVarStr var_36C, ","
  loc_D2DFAC: ConcatVar var_37C
  loc_D2DFB0: FLdRfVar var_3A4
  loc_D2DFB3: FLdRfVar var_394
  loc_D2DFB6: LitVarStr var_390, "NumeLiqu"
  loc_D2DFBB: PopAdLdVar
  loc_D2DFBC: FLdRfVar var_380
  loc_D2DFBF: FLdPr Me
  loc_D2DFC2: MemLdPr global_64
  loc_D2DFC5:  = Me.Fields
  loc_D2DFCA: FLdPr var_380
  loc_D2DFCD: from_stack_2 = Me.Item(from_stack_1)
  loc_D2DFD2: FLdPr var_394
  loc_D2DFD5:  = Me.Value
  loc_D2DFDA: FLdRfVar var_3A4
  loc_D2DFDD: ConcatVar var_3B4
  loc_D2DFE1: LitVarStr var_3C4, ",0,0,"
  loc_D2DFE6: ConcatVar var_3D4
  loc_D2DFEA: LitI4 0
  loc_D2DFEF: LitI4 -1
  loc_D2DFF4: LitI4 1
  loc_D2DFF9: LitStr "."
  loc_D2DFFC: LitStr ","
  loc_D2DFFF: FLdRfVar var_3FC
  loc_D2E002: CStrVarTmp
  loc_D2E003: FStStrNoPop var_144
  loc_D2E006: ImpAdCallI2 Replace(, , , , , )
  loc_D2E00B: CVarStr var_40C
  loc_D2E00E: ConcatVar var_41C
  loc_D2E012: LitVarStr var_42C, ",0,0,0,0,0,0,"
  loc_D2E017: ConcatVar var_43C
  loc_D2E01B: LitI4 0
  loc_D2E020: LitI4 -1
  loc_D2E025: LitI4 1
  loc_D2E02A: LitStr "."
  loc_D2E02D: LitStr ","
  loc_D2E030: FLdRfVar var_464
  loc_D2E033: CStrVarTmp
  loc_D2E034: FStStrNoPop var_148
  loc_D2E037: ImpAdCallI2 Replace(, , , , , )
  loc_D2E03C: CVarStr var_474
  loc_D2E03F: ConcatVar var_484
  loc_D2E043: LitVarStr var_494, ",'"
  loc_D2E048: ConcatVar var_4A4
  loc_D2E04C: ImpAdLdI4 MemVar_D9302C
  loc_D2E04F: CVarStr var_4B4
  loc_D2E052: ConcatVar var_4C4
  loc_D2E056: LitVarStr var_4D4, "');"
  loc_D2E05B: ConcatVar var_4E4
  loc_D2E05F: CStrVarVal var_14C
  loc_D2E063: Call EjecutarRsCls(from_stack_1v)
  loc_D2E068: FFreeStr var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_D2E07D: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = "": var_3EC = "": var_440 = ""
  loc_D2E09A: FFreeVar var_4C4 = "": var_4E4 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_25C = "": var_22C = "": var_26C = "": var_27C = "": var_2C4 = "": var_2E4 = "": var_29C = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3FC = "": var_3D4 = "": var_40C = "": var_41C = "": var_464 = "": var_43C = "": var_474 = "": var_484 = ""
  loc_D2E0DD: FLdRfVar var_194
  loc_D2E0E0: FLdRfVar var_184
  loc_D2E0E3: LitVarStr var_180, "TipoVenc"
  loc_D2E0E8: PopAdLdVar
  loc_D2E0E9: FLdRfVar var_170
  loc_D2E0EC: FLdPr Me
  loc_D2E0EF: MemLdPr global_64
  loc_D2E0F2:  = Me.Fields
  loc_D2E0F7: FLdPr var_170
  loc_D2E0FA: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E0FF: FLdPr var_184
  loc_D2E102:  = Me.Value
  loc_D2E107: FLdRfVar var_194
  loc_D2E10A: FnCIntVar
  loc_D2E10C: LitI2_Byte 2
  loc_D2E10E: EqI2
  loc_D2E10F: FFreeAd var_170 = ""
  loc_D2E116: FFree1Var var_194 = ""
  loc_D2E119: BranchF loc_D2E133
  loc_D2E11C: FLdRfVar var_168
  loc_D2E11F: FLdI2 iPeriodo
  loc_D2E122: FLdRfVar var_8C
  loc_D2E125: NewIfNullPr clsnumebole
  loc_D2E128: from_stack_2v = clsnumebole.NuevoRegistro(from_stack_1v)
  loc_D2E12D: ILdRf var_168
  loc_D2E130: FStR4 var_9C
  loc_D2E133: LitStr "SELECT PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiDifu, liquceme.CodiConc, TipoVenc, TipoLice, FealLice, FeveLice, ImpoLice, CrafLice, ExenLice, DescLice, GastLice, TotaLice, ActuLice, concepto.TiafConc, DeudLice FROM liquceme "
  loc_D2E136: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_D2E139: ConcatStr
  loc_D2E13A: CVarStr var_1C4
  loc_D2E13D: FLdRfVar var_184
  loc_D2E140: LitVarStr var_180, "FealLice"
  loc_D2E145: PopAdLdVar
  loc_D2E146: FLdRfVar var_170
  loc_D2E149: FLdPr Me
  loc_D2E14C: MemLdPr global_64
  loc_D2E14F:  = Me.Fields
  loc_D2E154: FLdPr var_170
  loc_D2E157: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E15C: FLdZeroAd var_184
  loc_D2E15F: CVarAd
  loc_D2E163: FLdRfVar var_1B4
  loc_D2E166: ImpAdCallFPR4  = Year()
  loc_D2E16B: FLdRfVar var_1B4
  loc_D2E16E: ConcatVar var_1D4
  loc_D2E172: LitVarStr var_1A4, " AND concepto.CodiConc = liquceme.CodiConc"
  loc_D2E177: ConcatVar var_1FC
  loc_D2E17B: LitVarStr var_1E8, " WHERE PeriLiqu = "
  loc_D2E180: ConcatVar var_20C
  loc_D2E184: FLdRfVar var_22C
  loc_D2E187: FLdRfVar var_1EC
  loc_D2E18A: LitVarStr var_21C, "PeriLiqu"
  loc_D2E18F: PopAdLdVar
  loc_D2E190: FLdRfVar var_1D8
  loc_D2E193: FLdPr Me
  loc_D2E196: MemLdPr global_64
  loc_D2E199:  = Me.Fields
  loc_D2E19E: FLdPr var_1D8
  loc_D2E1A1: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E1A6: FLdPr var_1EC
  loc_D2E1A9:  = Me.Value
  loc_D2E1AE: FLdRfVar var_22C
  loc_D2E1B1: ConcatVar var_25C
  loc_D2E1B5: LitVarStr var_23C, " AND BimeLiqu = "
  loc_D2E1BA: ConcatVar var_26C
  loc_D2E1BE: FLdRfVar var_27C
  loc_D2E1C1: FLdRfVar var_2B4
  loc_D2E1C4: LitVarStr var_24C, "BimeLiqu"
  loc_D2E1C9: PopAdLdVar
  loc_D2E1CA: FLdRfVar var_2A0
  loc_D2E1CD: FLdPr Me
  loc_D2E1D0: MemLdPr global_64
  loc_D2E1D3:  = Me.Fields
  loc_D2E1D8: FLdPr var_2A0
  loc_D2E1DB: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E1E0: FLdPr var_2B4
  loc_D2E1E3:  = Me.Value
  loc_D2E1E8: FLdRfVar var_27C
  loc_D2E1EB: ConcatVar var_29C
  loc_D2E1EF: LitVarStr var_28C, " AND CodiTili = "
  loc_D2E1F4: ConcatVar var_2C4
  loc_D2E1F8: FLdRfVar var_2E4
  loc_D2E1FB: FLdRfVar var_33C
  loc_D2E1FE: LitVarStr var_2B0, "CodiTili"
  loc_D2E203: PopAdLdVar
  loc_D2E204: FLdRfVar var_328
  loc_D2E207: FLdPr Me
  loc_D2E20A: MemLdPr global_64
  loc_D2E20D:  = Me.Fields
  loc_D2E212: FLdPr var_328
  loc_D2E215: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E21A: FLdPr var_33C
  loc_D2E21D:  = Me.Value
  loc_D2E222: FLdRfVar var_2E4
  loc_D2E225: ConcatVar var_2F4
  loc_D2E229: LitVarStr var_2D4, " AND NumeLiqu = "
  loc_D2E22E: ConcatVar var_304
  loc_D2E232: FLdRfVar var_324
  loc_D2E235: FLdRfVar var_394
  loc_D2E238: LitVarStr var_314, "NumeLiqu"
  loc_D2E23D: PopAdLdVar
  loc_D2E23E: FLdRfVar var_380
  loc_D2E241: FLdPr Me
  loc_D2E244: MemLdPr global_64
  loc_D2E247:  = Me.Fields
  loc_D2E24C: FLdPr var_380
  loc_D2E24F: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E254: FLdPr var_394
  loc_D2E257:  = Me.Value
  loc_D2E25C: FLdRfVar var_324
  loc_D2E25F: ConcatVar var_34C
  loc_D2E263: LitVarStr var_338, " AND CodiDifu = "
  loc_D2E268: ConcatVar var_35C
  loc_D2E26C: FLdRfVar var_37C
  loc_D2E26F: FLdRfVar var_3EC
  loc_D2E272: LitVarStr var_36C, "CodiDifu"
  loc_D2E277: PopAdLdVar
  loc_D2E278: FLdRfVar var_3D8
  loc_D2E27B: FLdPr Me
  loc_D2E27E: MemLdPr global_64
  loc_D2E281:  = Me.Fields
  loc_D2E286: FLdPr var_3D8
  loc_D2E289: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E28E: FLdPr var_3EC
  loc_D2E291:  = Me.Value
  loc_D2E296: FLdRfVar var_37C
  loc_D2E299: ConcatVar var_3A4
  loc_D2E29D: LitVarStr var_390, " AND TipoVenc = "
  loc_D2E2A2: ConcatVar var_3B4
  loc_D2E2A6: FLdRfVar var_3D4
  loc_D2E2A9: FLdRfVar var_454
  loc_D2E2AC: LitVarStr var_3C4, "TipoVenc"
  loc_D2E2B1: PopAdLdVar
  loc_D2E2B2: FLdRfVar var_440
  loc_D2E2B5: FLdPr Me
  loc_D2E2B8: MemLdPr global_64
  loc_D2E2BB:  = Me.Fields
  loc_D2E2C0: FLdPr var_440
  loc_D2E2C3: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E2C8: FLdPr var_454
  loc_D2E2CB:  = Me.Value
  loc_D2E2D0: FLdRfVar var_3D4
  loc_D2E2D3: ConcatVar var_3FC
  loc_D2E2D7: LitVarStr var_3E8, " AND ActuLice = 'No' "
  loc_D2E2DC: ConcatVar var_40C
  loc_D2E2E0: LitVarStr var_42C, " ORDER BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiDifu, liquceme.CodiConc, TipoVenc"
  loc_D2E2E5: ConcatVar var_41C
  loc_D2E2E9: CStrVarVal var_12C
  loc_D2E2ED: Call EjecutarRsCls3(from_stack_1v)
  loc_D2E2F2: FFree1Str var_12C
  loc_D2E2F5: FFreeAd var_170 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = "": var_3EC = "": var_440 = ""
  loc_D2E312: FFreeVar var_194 = "": var_1C4 = "": var_1B4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = "": var_40C = ""
  loc_D2E347: FLdRfVar var_168
  loc_D2E34A: FLdPr Me
  loc_D2E34D: MemLdPr global_68
  loc_D2E350:  = Me.RecordCount
  loc_D2E355: ILdRf var_168
  loc_D2E358: LitI4 0
  loc_D2E35D: GtI4
  loc_D2E35E: BranchF loc_D31CE4
  loc_D2E361: LitI2_Byte 0
  loc_D2E363: CR8I2
  loc_D2E364: FStFPR8 var_10C
  loc_D2E367: LitI2_Byte 0
  loc_D2E369: CR8I2
  loc_D2E36A: FStFPR8 var_114
  loc_D2E36D: LitI2_Byte 0
  loc_D2E36F: CR8I2
  loc_D2E370: FStFPR8 var_11C
  loc_D2E373: LitI2_Byte 0
  loc_D2E375: CR8I2
  loc_D2E376: FStFPR8 var_124
  loc_D2E379: FLdPr Me
  loc_D2E37C: MemLdPr global_68
  loc_D2E37F: Me.MoveFirst
  loc_D2E384: FLdRfVar var_16A
  loc_D2E387: FLdPr Me
  loc_D2E38A: MemLdPr global_68
  loc_D2E38D:  = Me.EOF
  loc_D2E392: FLdI2 var_16A
  loc_D2E395: NotI4
  loc_D2E396: BranchF loc_D31958
  loc_D2E399: FLdRfVar var_194
  loc_D2E39C: FLdRfVar var_184
  loc_D2E39F: LitVarStr var_180, "TipoLice"
  loc_D2E3A4: PopAdLdVar
  loc_D2E3A5: FLdRfVar var_170
  loc_D2E3A8: FLdPr Me
  loc_D2E3AB: MemLdPr global_68
  loc_D2E3AE:  = Me.Fields
  loc_D2E3B3: FLdPr var_170
  loc_D2E3B6: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E3BB: FLdPr var_184
  loc_D2E3BE:  = Me.Value
  loc_D2E3C3: FLdRfVar var_194
  loc_D2E3C6: FStVar var_4F4
  loc_D2E3CA: FFreeAd var_170 = ""
  loc_D2E3D1: FLdRfVar var_4F4
  loc_D2E3D4: LitVarStr var_180, "Aforo"
  loc_D2E3D9: HardType
  loc_D2E3DA: EqVarBool
  loc_D2E3DC: BranchF loc_D31538
  loc_D2E3DF: FLdRfVar var_194
  loc_D2E3E2: FLdRfVar var_184
  loc_D2E3E5: LitVarStr var_180, "TipoVenc"
  loc_D2E3EA: PopAdLdVar
  loc_D2E3EB: FLdRfVar var_170
  loc_D2E3EE: FLdPr Me
  loc_D2E3F1: MemLdPr global_68
  loc_D2E3F4:  = Me.Fields
  loc_D2E3F9: FLdPr var_170
  loc_D2E3FC: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E401: FLdPr var_184
  loc_D2E404:  = Me.Value
  loc_D2E409: FLdRfVar var_194
  loc_D2E40C: FnCIntVar
  loc_D2E40E: LitI2_Byte 1
  loc_D2E410: EqI2
  loc_D2E411: FFreeAd var_170 = ""
  loc_D2E418: FFree1Var var_194 = ""
  loc_D2E41B: BranchF loc_D301DB
  loc_D2E41E: FLdRfVar var_168
  loc_D2E421: FLdI2 iPeriodo
  loc_D2E424: FLdRfVar var_90
  loc_D2E427: NewIfNullPr clsctacte
  loc_D2E42A: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_D2E42F: ILdRf var_168
  loc_D2E432: FStR4 var_98
  loc_D2E435: FLdRfVar var_194
  loc_D2E438: FLdRfVar var_184
  loc_D2E43B: LitVarStr var_180, "TotaBole"
  loc_D2E440: PopAdLdVar
  loc_D2E441: FLdRfVar var_170
  loc_D2E444: FLdPr Me
  loc_D2E447: MemLdPr global_64
  loc_D2E44A:  = Me.Fields
  loc_D2E44F: FLdPr var_170
  loc_D2E452: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E457: FLdPr var_184
  loc_D2E45A:  = Me.Value
  loc_D2E45F: FLdRfVar var_194
  loc_D2E462: LitVarI2 var_1A4, 0
  loc_D2E467: HardType
  loc_D2E468: GtVarBool
  loc_D2E46A: FFreeAd var_170 = ""
  loc_D2E471: FFree1Var var_194 = ""
  loc_D2E474: BranchF loc_D2E7F2
  loc_D2E477: FLdRfVar var_194
  loc_D2E47A: FLdRfVar var_184
  loc_D2E47D: LitVarStr var_180, "TotaLice"
  loc_D2E482: PopAdLdVar
  loc_D2E483: FLdRfVar var_170
  loc_D2E486: FLdPr Me
  loc_D2E489: MemLdPr global_68
  loc_D2E48C:  = Me.Fields
  loc_D2E491: FLdPr var_170
  loc_D2E494: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E499: FLdPr var_184
  loc_D2E49C:  = Me.Value
  loc_D2E4A1: FLdRfVar var_194
  loc_D2E4A4: FnCDblVar
  loc_D2E4A6: LitI2_Byte 0
  loc_D2E4A8: CR8I2
  loc_D2E4A9: GtR4
  loc_D2E4AA: FFreeAd var_170 = ""
  loc_D2E4B1: FFree1Var var_194 = ""
  loc_D2E4B4: BranchF loc_D2E7EF
  loc_D2E4B7: FLdRfVar var_43C
  loc_D2E4BA: FLdRfVar var_4FC
  loc_D2E4BD: LitVarStr var_450, "TotaLice"
  loc_D2E4C2: PopAdLdVar
  loc_D2E4C3: FLdRfVar var_4F8
  loc_D2E4C6: FLdPr Me
  loc_D2E4C9: MemLdPr global_68
  loc_D2E4CC:  = Me.Fields
  loc_D2E4D1: FLdPr var_4F8
  loc_D2E4D4: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E4D9: FLdPr var_4FC
  loc_D2E4DC:  = Me.Value
  loc_D2E4E1: FLdRfVar var_4A4
  loc_D2E4E4: FLdRfVar var_504
  loc_D2E4E7: LitVarStr var_4B4, "TotaLice"
  loc_D2E4EC: PopAdLdVar
  loc_D2E4ED: FLdRfVar var_500
  loc_D2E4F0: FLdPr Me
  loc_D2E4F3: MemLdPr global_68
  loc_D2E4F6:  = Me.Fields
  loc_D2E4FB: FLdPr var_500
  loc_D2E4FE: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E503: FLdPr var_504
  loc_D2E506:  = Me.Value
  loc_D2E50B: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiTili, NumeLiqu, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo) "
  loc_D2E50E: LitStr " VALUES ("
  loc_D2E511: ConcatStr
  loc_D2E512: FStStrNoPop var_12C
  loc_D2E515: FLdI2 iPeriodo
  loc_D2E518: CStrUI1
  loc_D2E51A: FStStrNoPop var_130
  loc_D2E51D: ConcatStr
  loc_D2E51E: FStStrNoPop var_134
  loc_D2E521: LitStr ","
  loc_D2E524: ConcatStr
  loc_D2E525: FStStrNoPop var_138
  loc_D2E528: ILdRf var_9C
  loc_D2E52B: CStrI4
  loc_D2E52D: FStStrNoPop var_13C
  loc_D2E530: ConcatStr
  loc_D2E531: FStStrNoPop var_140
  loc_D2E534: LitStr ","
  loc_D2E537: ConcatStr
  loc_D2E538: FStStrNoPop var_144
  loc_D2E53B: FLdI2 iPeriodo
  loc_D2E53E: CStrUI1
  loc_D2E540: FStStrNoPop var_148
  loc_D2E543: ConcatStr
  loc_D2E544: FStStrNoPop var_14C
  loc_D2E547: LitStr ","
  loc_D2E54A: ConcatStr
  loc_D2E54B: CVarStr var_1B4
  loc_D2E54E: FLdRfVar var_194
  loc_D2E551: FLdRfVar var_184
  loc_D2E554: LitVarStr var_180, "BimeLiqu"
  loc_D2E559: PopAdLdVar
  loc_D2E55A: FLdRfVar var_170
  loc_D2E55D: FLdPr Me
  loc_D2E560: MemLdPr global_68
  loc_D2E563:  = Me.Fields
  loc_D2E568: FLdPr var_170
  loc_D2E56B: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E570: FLdPr var_184
  loc_D2E573:  = Me.Value
  loc_D2E578: FLdRfVar var_194
  loc_D2E57B: ConcatVar var_1C4
  loc_D2E57F: LitVarStr var_1A4, ","
  loc_D2E584: ConcatVar var_1D4
  loc_D2E588: ILdRf var_98
  loc_D2E58B: CVarI4
  loc_D2E58F: ConcatVar var_1FC
  loc_D2E593: LitVarStr var_21C, ",1,1,"
  loc_D2E598: ConcatVar var_20C
  loc_D2E59C: FLdRfVar var_22C
  loc_D2E59F: FLdRfVar var_1EC
  loc_D2E5A2: LitVarStr var_23C, "CodiTili"
  loc_D2E5A7: PopAdLdVar
  loc_D2E5A8: FLdRfVar var_1D8
  loc_D2E5AB: FLdPr Me
  loc_D2E5AE: MemLdPr global_68
  loc_D2E5B1:  = Me.Fields
  loc_D2E5B6: FLdPr var_1D8
  loc_D2E5B9: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E5BE: FLdPr var_1EC
  loc_D2E5C1:  = Me.Value
  loc_D2E5C6: FLdRfVar var_22C
  loc_D2E5C9: ConcatVar var_25C
  loc_D2E5CD: LitVarStr var_24C, ","
  loc_D2E5D2: ConcatVar var_26C
  loc_D2E5D6: FLdRfVar var_27C
  loc_D2E5D9: FLdRfVar var_2B4
  loc_D2E5DC: LitVarStr var_28C, "NumeLiqu"
  loc_D2E5E1: PopAdLdVar
  loc_D2E5E2: FLdRfVar var_2A0
  loc_D2E5E5: FLdPr Me
  loc_D2E5E8: MemLdPr global_68
  loc_D2E5EB:  = Me.Fields
  loc_D2E5F0: FLdPr var_2A0
  loc_D2E5F3: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E5F8: FLdPr var_2B4
  loc_D2E5FB:  = Me.Value
  loc_D2E600: FLdRfVar var_27C
  loc_D2E603: ConcatVar var_29C
  loc_D2E607: LitVarStr var_2B0, ",4,'"
  loc_D2E60C: ConcatVar var_2C4
  loc_D2E610: FLdRfVar var_2E4
  loc_D2E613: FLdRfVar var_33C
  loc_D2E616: LitVarStr var_2D4, "CodiDifu"
  loc_D2E61B: PopAdLdVar
  loc_D2E61C: FLdRfVar var_328
  loc_D2E61F: FLdPr Me
  loc_D2E622: MemLdPr global_68
  loc_D2E625:  = Me.Fields
  loc_D2E62A: FLdPr var_328
  loc_D2E62D: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E632: FLdPr var_33C
  loc_D2E635:  = Me.Value
  loc_D2E63A: FLdRfVar var_2E4
  loc_D2E63D: ConcatVar var_2F4
  loc_D2E641: LitVarStr var_314, "','Bimestral',0,0,0,"
  loc_D2E646: ConcatVar var_304
  loc_D2E64A: FLdRfVar var_324
  loc_D2E64D: FLdRfVar var_394
  loc_D2E650: LitVarStr var_338, "TiafConc"
  loc_D2E655: PopAdLdVar
  loc_D2E656: FLdRfVar var_380
  loc_D2E659: FLdPr Me
  loc_D2E65C: MemLdPr global_68
  loc_D2E65F:  = Me.Fields
  loc_D2E664: FLdPr var_380
  loc_D2E667: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E66C: FLdPr var_394
  loc_D2E66F:  = Me.Value
  loc_D2E674: FLdRfVar var_324
  loc_D2E677: ConcatVar var_34C
  loc_D2E67B: LitVarStr var_36C, ","
  loc_D2E680: ConcatVar var_35C
  loc_D2E684: FLdRfVar var_3EC
  loc_D2E687: LitVarStr var_390, "FealLice"
  loc_D2E68C: PopAdLdVar
  loc_D2E68D: FLdRfVar var_3D8
  loc_D2E690: FLdPr Me
  loc_D2E693: MemLdPr global_68
  loc_D2E696:  = Me.Fields
  loc_D2E69B: FLdPr var_3D8
  loc_D2E69E: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E6A3: FLdZeroAd var_3EC
  loc_D2E6A6: CVarAd
  loc_D2E6AA: FLdRfVar var_3A4
  loc_D2E6AD: ImpAdCallFPR4  = Year()
  loc_D2E6B2: FLdRfVar var_3A4
  loc_D2E6B5: ConcatVar var_3B4
  loc_D2E6B9: LitVarStr var_3C4, ",'"
  loc_D2E6BE: ConcatVar var_3D4
  loc_D2E6C2: FLdRfVar var_3FC
  loc_D2E6C5: FLdRfVar var_454
  loc_D2E6C8: LitVarStr var_3E8, "CodiConc"
  loc_D2E6CD: PopAdLdVar
  loc_D2E6CE: FLdRfVar var_440
  loc_D2E6D1: FLdPr Me
  loc_D2E6D4: MemLdPr global_68
  loc_D2E6D7:  = Me.Fields
  loc_D2E6DC: FLdPr var_440
  loc_D2E6DF: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E6E4: FLdPr var_454
  loc_D2E6E7:  = Me.Value
  loc_D2E6EC: FLdRfVar var_3FC
  loc_D2E6EF: ConcatVar var_40C
  loc_D2E6F3: LitVarStr var_42C, "',"
  loc_D2E6F8: ConcatVar var_41C
  loc_D2E6FC: LitI4 0
  loc_D2E701: LitI4 -1
  loc_D2E706: LitI4 1
  loc_D2E70B: LitStr "."
  loc_D2E70E: LitStr ","
  loc_D2E711: FLdRfVar var_43C
  loc_D2E714: FnCDblVar
  loc_D2E716: CStrR8
  loc_D2E718: FStStrNoPop var_150
  loc_D2E71B: ImpAdCallI2 Replace(, , , , , )
  loc_D2E720: CVarStr var_464
  loc_D2E723: ConcatVar var_474
  loc_D2E727: LitVarStr var_494, ",0,0,0,0,0,0,"
  loc_D2E72C: ConcatVar var_484
  loc_D2E730: LitI4 0
  loc_D2E735: LitI4 -1
  loc_D2E73A: LitI4 1
  loc_D2E73F: LitStr "."
  loc_D2E742: LitStr ","
  loc_D2E745: FLdRfVar var_4A4
  loc_D2E748: CStrVarTmp
  loc_D2E749: FStStrNoPop var_154
  loc_D2E74C: ImpAdCallI2 Replace(, , , , , )
  loc_D2E751: CVarStr var_4C4
  loc_D2E754: ConcatVar var_4E4
  loc_D2E758: LitVarStr var_4D4, ");"
  loc_D2E75D: ConcatVar var_514
  loc_D2E761: CStrVarVal var_158
  loc_D2E765: Call EjecutarRsCls(from_stack_1v)
  loc_D2E76A: FFreeStr var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_D2E785: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = "": var_440 = "": var_454 = "": var_4F8 = "": var_4FC = "": var_500 = ""
  loc_D2E7AA: FFreeVar var_4C4 = "": var_4E4 = "": var_514 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_37C = "": var_35C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = "": var_40C = "": var_43C = "": var_41C = "": var_464 = "": var_474 = "": var_4A4 = ""
  loc_D2E7EF: Branch loc_D2E7FA
  loc_D2E7F2: LitI4 0
  loc_D2E7F7: FStR4 var_9C
  loc_D2E7FA: FLdRfVar var_394
  loc_D2E7FD: LitVarStr var_534, "FeveLice"
  loc_D2E802: PopAdLdVar
  loc_D2E803: FLdRfVar var_380
  loc_D2E806: FLdPr Me
  loc_D2E809: MemLdPr global_68
  loc_D2E80C:  = Me.Fields
  loc_D2E811: FLdPr var_380
  loc_D2E814: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E819: FLdRfVar var_664
  loc_D2E81C: FLdRfVar var_504
  loc_D2E81F: LitVarStr var_654, "ImpoLice"
  loc_D2E824: PopAdLdVar
  loc_D2E825: FLdRfVar var_500
  loc_D2E828: FLdPr Me
  loc_D2E82B: MemLdPr global_68
  loc_D2E82E:  = Me.Fields
  loc_D2E833: FLdPr var_500
  loc_D2E836: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E83B: FLdPr var_504
  loc_D2E83E:  = Me.Value
  loc_D2E843: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D2E846: LitStr " VALUES (4,'"
  loc_D2E849: ConcatStr
  loc_D2E84A: CVarStr var_1B4
  loc_D2E84D: FLdRfVar var_194
  loc_D2E850: FLdRfVar var_184
  loc_D2E853: LitVarStr var_180, "CodiDifu"
  loc_D2E858: PopAdLdVar
  loc_D2E859: FLdRfVar var_170
  loc_D2E85C: FLdPr Me
  loc_D2E85F: MemLdPr global_68
  loc_D2E862:  = Me.Fields
  loc_D2E867: FLdPr var_170
  loc_D2E86A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E86F: FLdPr var_184
  loc_D2E872:  = Me.Value
  loc_D2E877: FLdRfVar var_194
  loc_D2E87A: ConcatVar var_1C4
  loc_D2E87E: LitVarStr var_1A4, "',"
  loc_D2E883: ConcatVar var_1D4
  loc_D2E887: FLdI2 iPeriodo
  loc_D2E88A: CVarI2 var_1E8
  loc_D2E88D: ConcatVar var_1FC
  loc_D2E891: LitVarStr var_21C, ","
  loc_D2E896: ConcatVar var_20C
  loc_D2E89A: FLdRfVar var_22C
  loc_D2E89D: FLdRfVar var_1EC
  loc_D2E8A0: LitVarStr var_23C, "BimeLiqu"
  loc_D2E8A5: PopAdLdVar
  loc_D2E8A6: FLdRfVar var_1D8
  loc_D2E8A9: FLdPr Me
  loc_D2E8AC: MemLdPr global_68
  loc_D2E8AF:  = Me.Fields
  loc_D2E8B4: FLdPr var_1D8
  loc_D2E8B7: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E8BC: FLdPr var_1EC
  loc_D2E8BF:  = Me.Value
  loc_D2E8C4: FLdRfVar var_22C
  loc_D2E8C7: ConcatVar var_25C
  loc_D2E8CB: LitVarStr var_24C, ","
  loc_D2E8D0: ConcatVar var_26C
  loc_D2E8D4: ILdRf var_98
  loc_D2E8D7: CVarI4
  loc_D2E8DB: ConcatVar var_27C
  loc_D2E8DF: LitVarStr var_2B0, ",1,"
  loc_D2E8E4: ConcatVar var_29C
  loc_D2E8E8: FLdRfVar var_2C4
  loc_D2E8EB: FLdRfVar var_2B4
  loc_D2E8EE: LitVarStr var_2D4, "CodiTili"
  loc_D2E8F3: PopAdLdVar
  loc_D2E8F4: FLdRfVar var_2A0
  loc_D2E8F7: FLdPr Me
  loc_D2E8FA: MemLdPr global_68
  loc_D2E8FD:  = Me.Fields
  loc_D2E902: FLdPr var_2A0
  loc_D2E905: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E90A: FLdPr var_2B4
  loc_D2E90D:  = Me.Value
  loc_D2E912: FLdRfVar var_2C4
  loc_D2E915: ConcatVar var_2E4
  loc_D2E919: LitVarStr var_314, ","
  loc_D2E91E: ConcatVar var_2F4
  loc_D2E922: FLdRfVar var_304
  loc_D2E925: FLdRfVar var_33C
  loc_D2E928: LitVarStr var_338, "NumeLiqu"
  loc_D2E92D: PopAdLdVar
  loc_D2E92E: FLdRfVar var_328
  loc_D2E931: FLdPr Me
  loc_D2E934: MemLdPr global_68
  loc_D2E937:  = Me.Fields
  loc_D2E93C: FLdPr var_328
  loc_D2E93F: from_stack_2 = Me.Item(from_stack_1)
  loc_D2E944: FLdPr var_33C
  loc_D2E947:  = Me.Value
  loc_D2E94C: FLdRfVar var_304
  loc_D2E94F: ConcatVar var_324
  loc_D2E953: LitVarStr var_36C, ","
  loc_D2E958: ConcatVar var_34C
  loc_D2E95C: LitVarI2 var_35C, 0
  loc_D2E961: FLdRfVar iPeriodo
  loc_D2E964: CVarRef
  loc_D2E969: ILdRf var_9C
  loc_D2E96C: LitI4 0
  loc_D2E971: NeI4
  loc_D2E972: CVarBoolI2 var_390
  loc_D2E976: FLdRfVar var_37C
  loc_D2E979: ImpAdCallFPR4  = IIf(, , )
  loc_D2E97E: FLdRfVar var_37C
  loc_D2E981: ConcatVar var_3A4
  loc_D2E985: LitVarStr var_42C, ","
  loc_D2E98A: ConcatVar var_3B4
  loc_D2E98E: ILdRf var_9C
  loc_D2E991: CVarI4
  loc_D2E995: ConcatVar var_3D4
  loc_D2E999: LitVarStr var_494, ",'Bimestral','"
  loc_D2E99E: ConcatVar var_3FC
  loc_D2E9A2: LitI4 1
  loc_D2E9A7: LitI4 1
  loc_D2E9AC: LitVarStr var_4D4, "yyyy-mm-dd"
  loc_D2E9B1: FStVarCopyObj var_40C
  loc_D2E9B4: FLdRfVar var_40C
  loc_D2E9B7: FLdRfVar var_A4
  loc_D2E9BA: CVarRef
  loc_D2E9BF: ImpAdCallI2 Format$(, )
  loc_D2E9C4: CVarStr var_41C
  loc_D2E9C7: ConcatVar var_43C
  loc_D2E9CB: LitVarStr var_524, "','"
  loc_D2E9D0: ConcatVar var_464
  loc_D2E9D4: LitI4 1
  loc_D2E9D9: LitI4 1
  loc_D2E9DE: LitVarStr var_544, "yyyy-mm-dd"
  loc_D2E9E3: FStVarCopyObj var_484
  loc_D2E9E6: FLdRfVar var_484
  loc_D2E9E9: FLdZeroAd var_394
  loc_D2E9EC: CVarAd
  loc_D2E9F0: ImpAdCallI2 Format$(, )
  loc_D2E9F5: CVarStr var_4A4
  loc_D2E9F8: ConcatVar var_4C4
  loc_D2E9FC: LitVarStr var_554, "',Null,0,"
  loc_D2EA01: ConcatVar var_4E4
  loc_D2EA05: FLdRfVar var_3EC
  loc_D2EA08: LitVarStr var_564, "FealLice"
  loc_D2EA0D: PopAdLdVar
  loc_D2EA0E: FLdRfVar var_3D8
  loc_D2EA11: FLdPr Me
  loc_D2EA14: MemLdPr global_68
  loc_D2EA17:  = Me.Fields
  loc_D2EA1C: FLdPr var_3D8
  loc_D2EA1F: from_stack_2 = Me.Item(from_stack_1)
  loc_D2EA24: FLdZeroAd var_3EC
  loc_D2EA27: CVarAd
  loc_D2EA2B: FLdRfVar var_574
  loc_D2EA2E: ImpAdCallFPR4  = Year()
  loc_D2EA33: FLdRfVar var_574
  loc_D2EA36: ConcatVar var_584
  loc_D2EA3A: LitVarStr var_594, ",'"
  loc_D2EA3F: ConcatVar var_5A4
  loc_D2EA43: FLdRfVar var_5C4
  loc_D2EA46: FLdRfVar var_454
  loc_D2EA49: LitVarStr var_5B4, "CodiConc"
  loc_D2EA4E: PopAdLdVar
  loc_D2EA4F: FLdRfVar var_440
  loc_D2EA52: FLdPr Me
  loc_D2EA55: MemLdPr global_68
  loc_D2EA58:  = Me.Fields
  loc_D2EA5D: FLdPr var_440
  loc_D2EA60: from_stack_2 = Me.Item(from_stack_1)
  loc_D2EA65: FLdPr var_454
  loc_D2EA68:  = Me.Value
  loc_D2EA6D: FLdRfVar var_5C4
  loc_D2EA70: ConcatVar var_5D4
  loc_D2EA74: LitVarStr var_5E4, "',0,0,0,"
  loc_D2EA79: ConcatVar var_5F4
  loc_D2EA7D: FLdRfVar var_614
  loc_D2EA80: FLdRfVar var_4FC
  loc_D2EA83: LitVarStr var_604, "TiafConc"
  loc_D2EA88: PopAdLdVar
  loc_D2EA89: FLdRfVar var_4F8
  loc_D2EA8C: FLdPr Me
  loc_D2EA8F: MemLdPr global_68
  loc_D2EA92:  = Me.Fields
  loc_D2EA97: FLdPr var_4F8
  loc_D2EA9A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2EA9F: FLdPr var_4FC
  loc_D2EAA2:  = Me.Value
  loc_D2EAA7: FLdRfVar var_614
  loc_D2EAAA: ConcatVar var_624
  loc_D2EAAE: LitVarStr var_634, ",'','',0,0,'',"
  loc_D2EAB3: ConcatVar var_644
  loc_D2EAB7: LitI4 0
  loc_D2EABC: LitI4 -1
  loc_D2EAC1: LitI4 1
  loc_D2EAC6: LitStr "."
  loc_D2EAC9: LitStr ","
  loc_D2EACC: FLdRfVar var_664
  loc_D2EACF: CStrVarTmp
  loc_D2EAD0: FStStrNoPop var_12C
  loc_D2EAD3: ImpAdCallI2 Replace(, , , , , )
  loc_D2EAD8: CVarStr var_674
  loc_D2EADB: ConcatVar var_684
  loc_D2EADF: LitVarStr var_694, ",0,'"
  loc_D2EAE4: ConcatVar var_6A4
  loc_D2EAE8: ImpAdLdI4 MemVar_D9302C
  loc_D2EAEB: CVarStr var_6B4
  loc_D2EAEE: ConcatVar var_6C4
  loc_D2EAF2: LitVarStr var_6D4, "');"
  loc_D2EAF7: ConcatVar var_6E4
  loc_D2EAFB: CStrVarVal var_130
  loc_D2EAFF: Call EjecutarRsCls(from_stack_1v)
  loc_D2EB04: FFreeStr var_12C = ""
  loc_D2EB0B: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_3D8 = "": var_440 = "": var_454 = "": var_4F8 = "": var_4FC = "": var_500 = ""
  loc_D2EB2E: FFreeVar var_4A4 = "": var_4C4 = "": var_514 = "": var_4E4 = "": var_574 = "": var_584 = "": var_5A4 = "": var_5C4 = "": var_5D4 = "": var_5F4 = "": var_614 = "": var_624 = "": var_664 = "": var_644 = "": var_674 = "": var_684 = "": var_6A4 = "": var_6C4 = "": var_6E4 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_390 = "": var_35C = "": var_34C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_40C = "": var_3FC = "": var_41C = "": var_43C = "": var_474 = "": var_484 = ""
  loc_D2EB93: FLdRfVar var_194
  loc_D2EB96: FLdRfVar var_184
  loc_D2EB99: LitVarStr var_180, "DescLice"
  loc_D2EB9E: PopAdLdVar
  loc_D2EB9F: FLdRfVar var_170
  loc_D2EBA2: FLdPr Me
  loc_D2EBA5: MemLdPr global_68
  loc_D2EBA8:  = Me.Fields
  loc_D2EBAD: FLdPr var_170
  loc_D2EBB0: from_stack_2 = Me.Item(from_stack_1)
  loc_D2EBB5: FLdPr var_184
  loc_D2EBB8:  = Me.Value
  loc_D2EBBD: FLdRfVar var_194
  loc_D2EBC0: LitVarI2 var_1A4, 0
  loc_D2EBC5: HardType
  loc_D2EBC6: GtVarBool
  loc_D2EBC8: FFreeAd var_170 = ""
  loc_D2EBCF: FFree1Var var_194 = ""
  loc_D2EBD2: BranchF loc_D2EF52
  loc_D2EBD5: FLdFPR8 var_B0
  loc_D2EBD8: CVarR8
  loc_D2EBDC: FLdRfVar var_194
  loc_D2EBDF: FLdRfVar var_184
  loc_D2EBE2: LitVarStr var_180, "DescLice"
  loc_D2EBE7: PopAdLdVar
  loc_D2EBE8: FLdRfVar var_170
  loc_D2EBEB: FLdPr Me
  loc_D2EBEE: MemLdPr global_68
  loc_D2EBF1:  = Me.Fields
  loc_D2EBF6: FLdPr var_170
  loc_D2EBF9: from_stack_2 = Me.Item(from_stack_1)
  loc_D2EBFE: FLdPr var_184
  loc_D2EC01:  = Me.Value
  loc_D2EC06: FLdRfVar var_194
  loc_D2EC09: AddVar var_1B4
  loc_D2EC0D: CR4Var
  loc_D2EC0E: FStFPR8 var_B0
  loc_D2EC11: FFreeAd var_170 = ""
  loc_D2EC18: FFreeVar var_194 = ""
  loc_D2EC1F: FLdRfVar var_5F4
  loc_D2EC22: FLdRfVar var_454
  loc_D2EC25: LitVarStr var_604, "DescLice"
  loc_D2EC2A: PopAdLdVar
  loc_D2EC2B: FLdRfVar var_440
  loc_D2EC2E: FLdPr Me
  loc_D2EC31: MemLdPr global_68
  loc_D2EC34:  = Me.Fields
  loc_D2EC39: FLdPr var_440
  loc_D2EC3C: from_stack_2 = Me.Item(from_stack_1)
  loc_D2EC41: FLdPr var_454
  loc_D2EC44:  = Me.Value
  loc_D2EC49: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D2EC4C: LitStr " VALUES (4,'"
  loc_D2EC4F: ConcatStr
  loc_D2EC50: CVarStr var_1B4
  loc_D2EC53: FLdRfVar var_194
  loc_D2EC56: FLdRfVar var_184
  loc_D2EC59: LitVarStr var_180, "CodiDifu"
  loc_D2EC5E: PopAdLdVar
  loc_D2EC5F: FLdRfVar var_170
  loc_D2EC62: FLdPr Me
  loc_D2EC65: MemLdPr global_68
  loc_D2EC68:  = Me.Fields
  loc_D2EC6D: FLdPr var_170
  loc_D2EC70: from_stack_2 = Me.Item(from_stack_1)
  loc_D2EC75: FLdPr var_184
  loc_D2EC78:  = Me.Value
  loc_D2EC7D: FLdRfVar var_194
  loc_D2EC80: ConcatVar var_1C4
  loc_D2EC84: LitVarStr var_1A4, "',"
  loc_D2EC89: ConcatVar var_1D4
  loc_D2EC8D: FLdI2 iPeriodo
  loc_D2EC90: CVarI2 var_1E8
  loc_D2EC93: ConcatVar var_1FC
  loc_D2EC97: LitVarStr var_21C, ","
  loc_D2EC9C: ConcatVar var_20C
  loc_D2ECA0: FLdRfVar var_22C
  loc_D2ECA3: FLdRfVar var_1EC
  loc_D2ECA6: LitVarStr var_23C, "BimeLiqu"
  loc_D2ECAB: PopAdLdVar
  loc_D2ECAC: FLdRfVar var_1D8
  loc_D2ECAF: FLdPr Me
  loc_D2ECB2: MemLdPr global_68
  loc_D2ECB5:  = Me.Fields
  loc_D2ECBA: FLdPr var_1D8
  loc_D2ECBD: from_stack_2 = Me.Item(from_stack_1)
  loc_D2ECC2: FLdPr var_1EC
  loc_D2ECC5:  = Me.Value
  loc_D2ECCA: FLdRfVar var_22C
  loc_D2ECCD: ConcatVar var_25C
  loc_D2ECD1: LitVarStr var_24C, ","
  loc_D2ECD6: ConcatVar var_26C
  loc_D2ECDA: ILdRf var_98
  loc_D2ECDD: CVarI4
  loc_D2ECE1: ConcatVar var_27C
  loc_D2ECE5: LitVarStr var_2B0, ",2,"
  loc_D2ECEA: ConcatVar var_29C
  loc_D2ECEE: FLdRfVar var_2C4
  loc_D2ECF1: FLdRfVar var_2B4
  loc_D2ECF4: LitVarStr var_2D4, "CodiTili"
  loc_D2ECF9: PopAdLdVar
  loc_D2ECFA: FLdRfVar var_2A0
  loc_D2ECFD: FLdPr Me
  loc_D2ED00: MemLdPr global_68
  loc_D2ED03:  = Me.Fields
  loc_D2ED08: FLdPr var_2A0
  loc_D2ED0B: from_stack_2 = Me.Item(from_stack_1)
  loc_D2ED10: FLdPr var_2B4
  loc_D2ED13:  = Me.Value
  loc_D2ED18: FLdRfVar var_2C4
  loc_D2ED1B: ConcatVar var_2E4
  loc_D2ED1F: LitVarStr var_314, ","
  loc_D2ED24: ConcatVar var_2F4
  loc_D2ED28: FLdRfVar var_304
  loc_D2ED2B: FLdRfVar var_33C
  loc_D2ED2E: LitVarStr var_338, "NumeLiqu"
  loc_D2ED33: PopAdLdVar
  loc_D2ED34: FLdRfVar var_328
  loc_D2ED37: FLdPr Me
  loc_D2ED3A: MemLdPr global_68
  loc_D2ED3D:  = Me.Fields
  loc_D2ED42: FLdPr var_328
  loc_D2ED45: from_stack_2 = Me.Item(from_stack_1)
  loc_D2ED4A: FLdPr var_33C
  loc_D2ED4D:  = Me.Value
  loc_D2ED52: FLdRfVar var_304
  loc_D2ED55: ConcatVar var_324
  loc_D2ED59: LitVarStr var_36C, ","
  loc_D2ED5E: ConcatVar var_34C
  loc_D2ED62: LitVarI2 var_35C, 0
  loc_D2ED67: FLdRfVar iPeriodo
  loc_D2ED6A: CVarRef
  loc_D2ED6F: ILdRf var_9C
  loc_D2ED72: LitI4 0
  loc_D2ED77: NeI4
  loc_D2ED78: CVarBoolI2 var_390
  loc_D2ED7C: FLdRfVar var_37C
  loc_D2ED7F: ImpAdCallFPR4  = IIf(, , )
  loc_D2ED84: FLdRfVar var_37C
  loc_D2ED87: ConcatVar var_3A4
  loc_D2ED8B: LitVarStr var_42C, ","
  loc_D2ED90: ConcatVar var_3B4
  loc_D2ED94: ILdRf var_9C
  loc_D2ED97: CVarI4
  loc_D2ED9B: ConcatVar var_3D4
  loc_D2ED9F: LitVarStr var_494, ",'Bimestral','"
  loc_D2EDA4: ConcatVar var_3FC
  loc_D2EDA8: LitI4 1
  loc_D2EDAD: LitI4 1
  loc_D2EDB2: LitVarStr var_4D4, "yyyy-mm-dd"
  loc_D2EDB7: FStVarCopyObj var_40C
  loc_D2EDBA: FLdRfVar var_40C
  loc_D2EDBD: FLdRfVar var_A4
  loc_D2EDC0: CVarRef
  loc_D2EDC5: ImpAdCallI2 Format$(, )
  loc_D2EDCA: CVarStr var_41C
  loc_D2EDCD: ConcatVar var_43C
  loc_D2EDD1: LitVarStr var_524, "','"
  loc_D2EDD6: ConcatVar var_464
  loc_D2EDDA: LitI4 1
  loc_D2EDDF: LitI4 1
  loc_D2EDE4: LitVarStr var_544, "yyyy-mm-dd"
  loc_D2EDE9: FStVarCopyObj var_474
  loc_D2EDEC: FLdRfVar var_474
  loc_D2EDEF: FLdRfVar var_A4
  loc_D2EDF2: CVarRef
  loc_D2EDF7: ImpAdCallI2 Format$(, )
  loc_D2EDFC: CVarStr var_484
  loc_D2EDFF: ConcatVar var_4A4
  loc_D2EE03: LitVarStr var_554, "',Null,0,"
  loc_D2EE08: ConcatVar var_4C4
  loc_D2EE0C: FLdRfVar var_394
  loc_D2EE0F: LitVarStr var_564, "FealLice"
  loc_D2EE14: PopAdLdVar
  loc_D2EE15: FLdRfVar var_380
  loc_D2EE18: FLdPr Me
  loc_D2EE1B: MemLdPr global_68
  loc_D2EE1E:  = Me.Fields
  loc_D2EE23: FLdPr var_380
  loc_D2EE26: from_stack_2 = Me.Item(from_stack_1)
  loc_D2EE2B: FLdZeroAd var_394
  loc_D2EE2E: CVarAd
  loc_D2EE32: FLdRfVar var_514
  loc_D2EE35: ImpAdCallFPR4  = Year()
  loc_D2EE3A: FLdRfVar var_514
  loc_D2EE3D: ConcatVar var_574
  loc_D2EE41: LitVarStr var_594, ",'"
  loc_D2EE46: ConcatVar var_584
  loc_D2EE4A: FLdRfVar var_5A4
  loc_D2EE4D: FLdRfVar var_3EC
  loc_D2EE50: LitVarStr var_5B4, "CodiConc"
  loc_D2EE55: PopAdLdVar
  loc_D2EE56: FLdRfVar var_3D8
  loc_D2EE59: FLdPr Me
  loc_D2EE5C: MemLdPr global_68
  loc_D2EE5F:  = Me.Fields
  loc_D2EE64: FLdPr var_3D8
  loc_D2EE67: from_stack_2 = Me.Item(from_stack_1)
  loc_D2EE6C: FLdPr var_3EC
  loc_D2EE6F:  = Me.Value
  loc_D2EE74: FLdRfVar var_5A4
  loc_D2EE77: ConcatVar var_5C4
  loc_D2EE7B: LitVarStr var_5E4, "',0,0,0,6,'','',0,0,'',0,"
  loc_D2EE80: ConcatVar var_5D4
  loc_D2EE84: LitI4 0
  loc_D2EE89: LitI4 -1
  loc_D2EE8E: LitI4 1
  loc_D2EE93: LitStr "."
  loc_D2EE96: LitStr ","
  loc_D2EE99: FLdRfVar var_5F4
  loc_D2EE9C: CStrVarTmp
  loc_D2EE9D: FStStrNoPop var_12C
  loc_D2EEA0: ImpAdCallI2 Replace(, , , , , )
  loc_D2EEA5: CVarStr var_614
  loc_D2EEA8: ConcatVar var_624
  loc_D2EEAC: LitVarStr var_634, ",'"
  loc_D2EEB1: ConcatVar var_644
  loc_D2EEB5: ImpAdLdI4 MemVar_D9302C
  loc_D2EEB8: CVarStr var_654
  loc_D2EEBB: ConcatVar var_664
  loc_D2EEBF: LitVarStr var_694, "');"
  loc_D2EEC4: ConcatVar var_674
  loc_D2EEC8: CStrVarVal var_130
  loc_D2EECC: Call EjecutarRsCls(from_stack_1v)
  loc_D2EED1: FFreeStr var_12C = ""
  loc_D2EED8: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_3D8 = "": var_3EC = "": var_440 = ""
  loc_D2EEF5: FFreeVar var_4A4 = "": var_4E4 = "": var_4C4 = "": var_514 = "": var_574 = "": var_584 = "": var_5A4 = "": var_5C4 = "": var_5F4 = "": var_5D4 = "": var_614 = "": var_624 = "": var_644 = "": var_664 = "": var_674 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_390 = "": var_35C = "": var_34C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_40C = "": var_3FC = "": var_41C = "": var_43C = "": var_474 = "": var_464 = ""
  loc_D2EF52: FLdRfVar var_194
  loc_D2EF55: FLdRfVar var_184
  loc_D2EF58: LitVarStr var_180, "ExenLice"
  loc_D2EF5D: PopAdLdVar
  loc_D2EF5E: FLdRfVar var_170
  loc_D2EF61: FLdPr Me
  loc_D2EF64: MemLdPr global_68
  loc_D2EF67:  = Me.Fields
  loc_D2EF6C: FLdPr var_170
  loc_D2EF6F: from_stack_2 = Me.Item(from_stack_1)
  loc_D2EF74: FLdPr var_184
  loc_D2EF77:  = Me.Value
  loc_D2EF7C: FLdRfVar var_194
  loc_D2EF7F: FnCDblVar
  loc_D2EF81: LitI2_Byte 0
  loc_D2EF83: CR8I2
  loc_D2EF84: GtR4
  loc_D2EF85: FFreeAd var_170 = ""
  loc_D2EF8C: FFree1Var var_194 = ""
  loc_D2EF8F: BranchF loc_D2F30F
  loc_D2EF92: FLdFPR8 var_B8
  loc_D2EF95: CVarR8
  loc_D2EF99: FLdRfVar var_194
  loc_D2EF9C: FLdRfVar var_184
  loc_D2EF9F: LitVarStr var_180, "ExenLice"
  loc_D2EFA4: PopAdLdVar
  loc_D2EFA5: FLdRfVar var_170
  loc_D2EFA8: FLdPr Me
  loc_D2EFAB: MemLdPr global_68
  loc_D2EFAE:  = Me.Fields
  loc_D2EFB3: FLdPr var_170
  loc_D2EFB6: from_stack_2 = Me.Item(from_stack_1)
  loc_D2EFBB: FLdPr var_184
  loc_D2EFBE:  = Me.Value
  loc_D2EFC3: FLdRfVar var_194
  loc_D2EFC6: AddVar var_1B4
  loc_D2EFCA: CR4Var
  loc_D2EFCB: FStFPR8 var_B8
  loc_D2EFCE: FFreeAd var_170 = ""
  loc_D2EFD5: FFreeVar var_194 = ""
  loc_D2EFDC: FLdRfVar var_5F4
  loc_D2EFDF: FLdRfVar var_454
  loc_D2EFE2: LitVarStr var_604, "ExenLice"
  loc_D2EFE7: PopAdLdVar
  loc_D2EFE8: FLdRfVar var_440
  loc_D2EFEB: FLdPr Me
  loc_D2EFEE: MemLdPr global_68
  loc_D2EFF1:  = Me.Fields
  loc_D2EFF6: FLdPr var_440
  loc_D2EFF9: from_stack_2 = Me.Item(from_stack_1)
  loc_D2EFFE: FLdPr var_454
  loc_D2F001:  = Me.Value
  loc_D2F006: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D2F009: LitStr " VALUES (4,'"
  loc_D2F00C: ConcatStr
  loc_D2F00D: CVarStr var_1B4
  loc_D2F010: FLdRfVar var_194
  loc_D2F013: FLdRfVar var_184
  loc_D2F016: LitVarStr var_180, "CodiDifu"
  loc_D2F01B: PopAdLdVar
  loc_D2F01C: FLdRfVar var_170
  loc_D2F01F: FLdPr Me
  loc_D2F022: MemLdPr global_68
  loc_D2F025:  = Me.Fields
  loc_D2F02A: FLdPr var_170
  loc_D2F02D: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F032: FLdPr var_184
  loc_D2F035:  = Me.Value
  loc_D2F03A: FLdRfVar var_194
  loc_D2F03D: ConcatVar var_1C4
  loc_D2F041: LitVarStr var_1A4, "',"
  loc_D2F046: ConcatVar var_1D4
  loc_D2F04A: FLdI2 iPeriodo
  loc_D2F04D: CVarI2 var_1E8
  loc_D2F050: ConcatVar var_1FC
  loc_D2F054: LitVarStr var_21C, ","
  loc_D2F059: ConcatVar var_20C
  loc_D2F05D: FLdRfVar var_22C
  loc_D2F060: FLdRfVar var_1EC
  loc_D2F063: LitVarStr var_23C, "BimeLiqu"
  loc_D2F068: PopAdLdVar
  loc_D2F069: FLdRfVar var_1D8
  loc_D2F06C: FLdPr Me
  loc_D2F06F: MemLdPr global_68
  loc_D2F072:  = Me.Fields
  loc_D2F077: FLdPr var_1D8
  loc_D2F07A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F07F: FLdPr var_1EC
  loc_D2F082:  = Me.Value
  loc_D2F087: FLdRfVar var_22C
  loc_D2F08A: ConcatVar var_25C
  loc_D2F08E: LitVarStr var_24C, ","
  loc_D2F093: ConcatVar var_26C
  loc_D2F097: ILdRf var_98
  loc_D2F09A: CVarI4
  loc_D2F09E: ConcatVar var_27C
  loc_D2F0A2: LitVarStr var_2B0, ",2,"
  loc_D2F0A7: ConcatVar var_29C
  loc_D2F0AB: FLdRfVar var_2C4
  loc_D2F0AE: FLdRfVar var_2B4
  loc_D2F0B1: LitVarStr var_2D4, "CodiTili"
  loc_D2F0B6: PopAdLdVar
  loc_D2F0B7: FLdRfVar var_2A0
  loc_D2F0BA: FLdPr Me
  loc_D2F0BD: MemLdPr global_68
  loc_D2F0C0:  = Me.Fields
  loc_D2F0C5: FLdPr var_2A0
  loc_D2F0C8: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F0CD: FLdPr var_2B4
  loc_D2F0D0:  = Me.Value
  loc_D2F0D5: FLdRfVar var_2C4
  loc_D2F0D8: ConcatVar var_2E4
  loc_D2F0DC: LitVarStr var_314, ","
  loc_D2F0E1: ConcatVar var_2F4
  loc_D2F0E5: FLdRfVar var_304
  loc_D2F0E8: FLdRfVar var_33C
  loc_D2F0EB: LitVarStr var_338, "NumeLiqu"
  loc_D2F0F0: PopAdLdVar
  loc_D2F0F1: FLdRfVar var_328
  loc_D2F0F4: FLdPr Me
  loc_D2F0F7: MemLdPr global_68
  loc_D2F0FA:  = Me.Fields
  loc_D2F0FF: FLdPr var_328
  loc_D2F102: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F107: FLdPr var_33C
  loc_D2F10A:  = Me.Value
  loc_D2F10F: FLdRfVar var_304
  loc_D2F112: ConcatVar var_324
  loc_D2F116: LitVarStr var_36C, ","
  loc_D2F11B: ConcatVar var_34C
  loc_D2F11F: LitVarI2 var_35C, 0
  loc_D2F124: FLdRfVar iPeriodo
  loc_D2F127: CVarRef
  loc_D2F12C: ILdRf var_9C
  loc_D2F12F: LitI4 0
  loc_D2F134: NeI4
  loc_D2F135: CVarBoolI2 var_390
  loc_D2F139: FLdRfVar var_37C
  loc_D2F13C: ImpAdCallFPR4  = IIf(, , )
  loc_D2F141: FLdRfVar var_37C
  loc_D2F144: ConcatVar var_3A4
  loc_D2F148: LitVarStr var_42C, ","
  loc_D2F14D: ConcatVar var_3B4
  loc_D2F151: ILdRf var_9C
  loc_D2F154: CVarI4
  loc_D2F158: ConcatVar var_3D4
  loc_D2F15C: LitVarStr var_494, ",'Bimestral','"
  loc_D2F161: ConcatVar var_3FC
  loc_D2F165: LitI4 1
  loc_D2F16A: LitI4 1
  loc_D2F16F: LitVarStr var_4D4, "yyyy-mm-dd"
  loc_D2F174: FStVarCopyObj var_40C
  loc_D2F177: FLdRfVar var_40C
  loc_D2F17A: FLdRfVar var_A4
  loc_D2F17D: CVarRef
  loc_D2F182: ImpAdCallI2 Format$(, )
  loc_D2F187: CVarStr var_41C
  loc_D2F18A: ConcatVar var_43C
  loc_D2F18E: LitVarStr var_524, "','"
  loc_D2F193: ConcatVar var_464
  loc_D2F197: LitI4 1
  loc_D2F19C: LitI4 1
  loc_D2F1A1: LitVarStr var_544, "yyyy-mm-dd"
  loc_D2F1A6: FStVarCopyObj var_474
  loc_D2F1A9: FLdRfVar var_474
  loc_D2F1AC: FLdRfVar var_A4
  loc_D2F1AF: CVarRef
  loc_D2F1B4: ImpAdCallI2 Format$(, )
  loc_D2F1B9: CVarStr var_484
  loc_D2F1BC: ConcatVar var_4A4
  loc_D2F1C0: LitVarStr var_554, "',Null,0,"
  loc_D2F1C5: ConcatVar var_4C4
  loc_D2F1C9: FLdRfVar var_394
  loc_D2F1CC: LitVarStr var_564, "FealLice"
  loc_D2F1D1: PopAdLdVar
  loc_D2F1D2: FLdRfVar var_380
  loc_D2F1D5: FLdPr Me
  loc_D2F1D8: MemLdPr global_68
  loc_D2F1DB:  = Me.Fields
  loc_D2F1E0: FLdPr var_380
  loc_D2F1E3: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F1E8: FLdZeroAd var_394
  loc_D2F1EB: CVarAd
  loc_D2F1EF: FLdRfVar var_514
  loc_D2F1F2: ImpAdCallFPR4  = Year()
  loc_D2F1F7: FLdRfVar var_514
  loc_D2F1FA: ConcatVar var_574
  loc_D2F1FE: LitVarStr var_594, ",'"
  loc_D2F203: ConcatVar var_584
  loc_D2F207: FLdRfVar var_5A4
  loc_D2F20A: FLdRfVar var_3EC
  loc_D2F20D: LitVarStr var_5B4, "CodiConc"
  loc_D2F212: PopAdLdVar
  loc_D2F213: FLdRfVar var_3D8
  loc_D2F216: FLdPr Me
  loc_D2F219: MemLdPr global_68
  loc_D2F21C:  = Me.Fields
  loc_D2F221: FLdPr var_3D8
  loc_D2F224: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F229: FLdPr var_3EC
  loc_D2F22C:  = Me.Value
  loc_D2F231: FLdRfVar var_5A4
  loc_D2F234: ConcatVar var_5C4
  loc_D2F238: LitVarStr var_5E4, "',0,0,0,15,'','',0,0,'',0,"
  loc_D2F23D: ConcatVar var_5D4
  loc_D2F241: LitI4 0
  loc_D2F246: LitI4 -1
  loc_D2F24B: LitI4 1
  loc_D2F250: LitStr "."
  loc_D2F253: LitStr ","
  loc_D2F256: FLdRfVar var_5F4
  loc_D2F259: CStrVarTmp
  loc_D2F25A: FStStrNoPop var_12C
  loc_D2F25D: ImpAdCallI2 Replace(, , , , , )
  loc_D2F262: CVarStr var_614
  loc_D2F265: ConcatVar var_624
  loc_D2F269: LitVarStr var_634, ",'"
  loc_D2F26E: ConcatVar var_644
  loc_D2F272: ImpAdLdI4 MemVar_D9302C
  loc_D2F275: CVarStr var_654
  loc_D2F278: ConcatVar var_664
  loc_D2F27C: LitVarStr var_694, "');"
  loc_D2F281: ConcatVar var_674
  loc_D2F285: CStrVarVal var_130
  loc_D2F289: Call EjecutarRsCls(from_stack_1v)
  loc_D2F28E: FFreeStr var_12C = ""
  loc_D2F295: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_3D8 = "": var_3EC = "": var_440 = ""
  loc_D2F2B2: FFreeVar var_4A4 = "": var_4E4 = "": var_4C4 = "": var_514 = "": var_574 = "": var_584 = "": var_5A4 = "": var_5C4 = "": var_5F4 = "": var_5D4 = "": var_614 = "": var_624 = "": var_644 = "": var_664 = "": var_674 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_390 = "": var_35C = "": var_34C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_40C = "": var_3FC = "": var_41C = "": var_43C = "": var_474 = "": var_464 = ""
  loc_D2F30F: FLdRfVar var_194
  loc_D2F312: FLdRfVar var_184
  loc_D2F315: LitVarStr var_180, "CrafLice"
  loc_D2F31A: PopAdLdVar
  loc_D2F31B: FLdRfVar var_170
  loc_D2F31E: FLdPr Me
  loc_D2F321: MemLdPr global_68
  loc_D2F324:  = Me.Fields
  loc_D2F329: FLdPr var_170
  loc_D2F32C: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F331: FLdPr var_184
  loc_D2F334:  = Me.Value
  loc_D2F339: FLdRfVar var_194
  loc_D2F33C: LitVarI2 var_1A4, 0
  loc_D2F341: HardType
  loc_D2F342: GtVarBool
  loc_D2F344: FFreeAd var_170 = ""
  loc_D2F34B: FFree1Var var_194 = ""
  loc_D2F34E: BranchF loc_D30070
  loc_D2F351: FLdRfVar var_5F4
  loc_D2F354: FLdRfVar var_454
  loc_D2F357: LitVarStr var_604, "CrafLice"
  loc_D2F35C: PopAdLdVar
  loc_D2F35D: FLdRfVar var_440
  loc_D2F360: FLdPr Me
  loc_D2F363: MemLdPr global_68
  loc_D2F366:  = Me.Fields
  loc_D2F36B: FLdPr var_440
  loc_D2F36E: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F373: FLdPr var_454
  loc_D2F376:  = Me.Value
  loc_D2F37B: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, CodiUsua) "
  loc_D2F37E: LitStr " VALUES (4,'"
  loc_D2F381: ConcatStr
  loc_D2F382: CVarStr var_1B4
  loc_D2F385: FLdRfVar var_194
  loc_D2F388: FLdRfVar var_184
  loc_D2F38B: LitVarStr var_180, "CodiDifu"
  loc_D2F390: PopAdLdVar
  loc_D2F391: FLdRfVar var_170
  loc_D2F394: FLdPr Me
  loc_D2F397: MemLdPr global_68
  loc_D2F39A:  = Me.Fields
  loc_D2F39F: FLdPr var_170
  loc_D2F3A2: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F3A7: FLdPr var_184
  loc_D2F3AA:  = Me.Value
  loc_D2F3AF: FLdRfVar var_194
  loc_D2F3B2: ConcatVar var_1C4
  loc_D2F3B6: LitVarStr var_1A4, "',"
  loc_D2F3BB: ConcatVar var_1D4
  loc_D2F3BF: FLdI2 iPeriodo
  loc_D2F3C2: CVarI2 var_1E8
  loc_D2F3C5: ConcatVar var_1FC
  loc_D2F3C9: LitVarStr var_21C, ","
  loc_D2F3CE: ConcatVar var_20C
  loc_D2F3D2: FLdRfVar var_22C
  loc_D2F3D5: FLdRfVar var_1EC
  loc_D2F3D8: LitVarStr var_23C, "BimeLiqu"
  loc_D2F3DD: PopAdLdVar
  loc_D2F3DE: FLdRfVar var_1D8
  loc_D2F3E1: FLdPr Me
  loc_D2F3E4: MemLdPr global_68
  loc_D2F3E7:  = Me.Fields
  loc_D2F3EC: FLdPr var_1D8
  loc_D2F3EF: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F3F4: FLdPr var_1EC
  loc_D2F3F7:  = Me.Value
  loc_D2F3FC: FLdRfVar var_22C
  loc_D2F3FF: ConcatVar var_25C
  loc_D2F403: LitVarStr var_24C, ","
  loc_D2F408: ConcatVar var_26C
  loc_D2F40C: ILdRf var_98
  loc_D2F40F: CVarI4
  loc_D2F413: ConcatVar var_27C
  loc_D2F417: LitVarStr var_2B0, ",3,"
  loc_D2F41C: ConcatVar var_29C
  loc_D2F420: FLdRfVar var_2C4
  loc_D2F423: FLdRfVar var_2B4
  loc_D2F426: LitVarStr var_2D4, "CodiTili"
  loc_D2F42B: PopAdLdVar
  loc_D2F42C: FLdRfVar var_2A0
  loc_D2F42F: FLdPr Me
  loc_D2F432: MemLdPr global_68
  loc_D2F435:  = Me.Fields
  loc_D2F43A: FLdPr var_2A0
  loc_D2F43D: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F442: FLdPr var_2B4
  loc_D2F445:  = Me.Value
  loc_D2F44A: FLdRfVar var_2C4
  loc_D2F44D: ConcatVar var_2E4
  loc_D2F451: LitVarStr var_314, ","
  loc_D2F456: ConcatVar var_2F4
  loc_D2F45A: FLdRfVar var_304
  loc_D2F45D: FLdRfVar var_33C
  loc_D2F460: LitVarStr var_338, "NumeLiqu"
  loc_D2F465: PopAdLdVar
  loc_D2F466: FLdRfVar var_328
  loc_D2F469: FLdPr Me
  loc_D2F46C: MemLdPr global_68
  loc_D2F46F:  = Me.Fields
  loc_D2F474: FLdPr var_328
  loc_D2F477: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F47C: FLdPr var_33C
  loc_D2F47F:  = Me.Value
  loc_D2F484: FLdRfVar var_304
  loc_D2F487: ConcatVar var_324
  loc_D2F48B: LitVarStr var_36C, ","
  loc_D2F490: ConcatVar var_34C
  loc_D2F494: LitVarI2 var_35C, 0
  loc_D2F499: FLdRfVar iPeriodo
  loc_D2F49C: CVarRef
  loc_D2F4A1: ILdRf var_9C
  loc_D2F4A4: LitI4 0
  loc_D2F4A9: NeI4
  loc_D2F4AA: CVarBoolI2 var_390
  loc_D2F4AE: FLdRfVar var_37C
  loc_D2F4B1: ImpAdCallFPR4  = IIf(, , )
  loc_D2F4B6: FLdRfVar var_37C
  loc_D2F4B9: ConcatVar var_3A4
  loc_D2F4BD: LitVarStr var_42C, ","
  loc_D2F4C2: ConcatVar var_3B4
  loc_D2F4C6: ILdRf var_9C
  loc_D2F4C9: CVarI4
  loc_D2F4CD: ConcatVar var_3D4
  loc_D2F4D1: LitVarStr var_494, ",'Mensual','"
  loc_D2F4D6: ConcatVar var_3FC
  loc_D2F4DA: LitI4 1
  loc_D2F4DF: LitI4 1
  loc_D2F4E4: LitVarStr var_4D4, "yyyy-mm-dd"
  loc_D2F4E9: FStVarCopyObj var_40C
  loc_D2F4EC: FLdRfVar var_40C
  loc_D2F4EF: FLdRfVar var_A4
  loc_D2F4F2: CVarRef
  loc_D2F4F7: ImpAdCallI2 Format$(, )
  loc_D2F4FC: CVarStr var_41C
  loc_D2F4FF: ConcatVar var_43C
  loc_D2F503: LitVarStr var_524, "','"
  loc_D2F508: ConcatVar var_464
  loc_D2F50C: LitI4 1
  loc_D2F511: LitI4 1
  loc_D2F516: LitVarStr var_544, "yyyy-mm-dd"
  loc_D2F51B: FStVarCopyObj var_474
  loc_D2F51E: FLdRfVar var_474
  loc_D2F521: FLdRfVar var_A4
  loc_D2F524: CVarRef
  loc_D2F529: ImpAdCallI2 Format$(, )
  loc_D2F52E: CVarStr var_484
  loc_D2F531: ConcatVar var_4A4
  loc_D2F535: LitVarStr var_554, "',Null,0,"
  loc_D2F53A: ConcatVar var_4C4
  loc_D2F53E: FLdRfVar var_394
  loc_D2F541: LitVarStr var_564, "FealLice"
  loc_D2F546: PopAdLdVar
  loc_D2F547: FLdRfVar var_380
  loc_D2F54A: FLdPr Me
  loc_D2F54D: MemLdPr global_68
  loc_D2F550:  = Me.Fields
  loc_D2F555: FLdPr var_380
  loc_D2F558: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F55D: FLdZeroAd var_394
  loc_D2F560: CVarAd
  loc_D2F564: FLdRfVar var_514
  loc_D2F567: ImpAdCallFPR4  = Year()
  loc_D2F56C: FLdRfVar var_514
  loc_D2F56F: ConcatVar var_574
  loc_D2F573: LitVarStr var_594, ",'"
  loc_D2F578: ConcatVar var_584
  loc_D2F57C: FLdRfVar var_5A4
  loc_D2F57F: FLdRfVar var_3EC
  loc_D2F582: LitVarStr var_5B4, "CodiConc"
  loc_D2F587: PopAdLdVar
  loc_D2F588: FLdRfVar var_3D8
  loc_D2F58B: FLdPr Me
  loc_D2F58E: MemLdPr global_68
  loc_D2F591:  = Me.Fields
  loc_D2F596: FLdPr var_3D8
  loc_D2F599: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F59E: FLdPr var_3EC
  loc_D2F5A1:  = Me.Value
  loc_D2F5A6: FLdRfVar var_5A4
  loc_D2F5A9: ConcatVar var_5C4
  loc_D2F5AD: LitVarStr var_5E4, "',0,0,0,23,'','',0,0,'',0,"
  loc_D2F5B2: ConcatVar var_5D4
  loc_D2F5B6: LitI4 0
  loc_D2F5BB: LitI4 -1
  loc_D2F5C0: LitI4 1
  loc_D2F5C5: LitStr "."
  loc_D2F5C8: LitStr ","
  loc_D2F5CB: FLdRfVar var_5F4
  loc_D2F5CE: CStrVarTmp
  loc_D2F5CF: FStStrNoPop var_12C
  loc_D2F5D2: ImpAdCallI2 Replace(, , , , , )
  loc_D2F5D7: CVarStr var_614
  loc_D2F5DA: ConcatVar var_624
  loc_D2F5DE: LitVarStr var_634, ",'"
  loc_D2F5E3: ConcatVar var_644
  loc_D2F5E7: ImpAdLdI4 MemVar_D9302C
  loc_D2F5EA: CVarStr var_654
  loc_D2F5ED: ConcatVar var_664
  loc_D2F5F1: LitVarStr var_694, "');"
  loc_D2F5F6: ConcatVar var_674
  loc_D2F5FA: CStrVarVal var_130
  loc_D2F5FE: Call EjecutarRsCls(from_stack_1v)
  loc_D2F603: FFreeStr var_12C = ""
  loc_D2F60A: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_3D8 = "": var_3EC = "": var_440 = ""
  loc_D2F627: FFreeVar var_4A4 = "": var_4E4 = "": var_4C4 = "": var_514 = "": var_574 = "": var_584 = "": var_5A4 = "": var_5C4 = "": var_5F4 = "": var_5D4 = "": var_614 = "": var_624 = "": var_644 = "": var_664 = "": var_674 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_390 = "": var_35C = "": var_34C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_40C = "": var_3FC = "": var_41C = "": var_43C = "": var_474 = "": var_464 = ""
  loc_D2F684: FLdRfVar var_184
  loc_D2F687: LitVarStr var_180, "CrafLice"
  loc_D2F68C: PopAdLdVar
  loc_D2F68D: FLdRfVar var_170
  loc_D2F690: FLdPr Me
  loc_D2F693: MemLdPr global_68
  loc_D2F696:  = Me.Fields
  loc_D2F69B: FLdPr var_170
  loc_D2F69E: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F6A3: LitI4 2
  loc_D2F6A8: FLdZeroAd var_184
  loc_D2F6AB: CVarAd
  loc_D2F6AF: FLdRfVar var_1B4
  loc_D2F6B2: ImpAdCallFPR4  = Round(, )
  loc_D2F6B7: FLdRfVar var_1B4
  loc_D2F6BA: CR4Var
  loc_D2F6BB: FStFPR8 var_EC
  loc_D2F6BE: FFree1Ad var_170
  loc_D2F6C1: FFreeVar var_194 = ""
  loc_D2F6C8: FLdRfVar var_184
  loc_D2F6CB: LitVarStr var_180, "CrafLice"
  loc_D2F6D0: PopAdLdVar
  loc_D2F6D1: FLdRfVar var_170
  loc_D2F6D4: FLdPr Me
  loc_D2F6D7: MemLdPr global_68
  loc_D2F6DA:  = Me.Fields
  loc_D2F6DF: FLdPr var_170
  loc_D2F6E2: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F6E7: LitI4 2
  loc_D2F6EC: FLdZeroAd var_184
  loc_D2F6EF: CVarAd
  loc_D2F6F3: FLdRfVar var_1B4
  loc_D2F6F6: ImpAdCallFPR4  = Round(, )
  loc_D2F6FB: FLdRfVar var_1B4
  loc_D2F6FE: CR4Var
  loc_D2F6FF: FStFPR8 var_104
  loc_D2F702: FFree1Ad var_170
  loc_D2F705: FFreeVar var_194 = ""
  loc_D2F70C: LitStr "SELECT CodiOfic, CuenCtct, NumeCred, SUM(DebeCred)-SUM(CredCred) as SaldCred FROM creditos WHERE CodiOfic = 4"
  loc_D2F70F: LitStr " AND CuenCtct = '"
  loc_D2F712: ConcatStr
  loc_D2F713: CVarStr var_1B4
  loc_D2F716: FLdRfVar var_194
  loc_D2F719: FLdRfVar var_184
  loc_D2F71C: LitVarStr var_180, "CodiDifu"
  loc_D2F721: PopAdLdVar
  loc_D2F722: FLdRfVar var_170
  loc_D2F725: FLdPr Me
  loc_D2F728: MemLdPr global_68
  loc_D2F72B:  = Me.Fields
  loc_D2F730: FLdPr var_170
  loc_D2F733: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F738: FLdPr var_184
  loc_D2F73B:  = Me.Value
  loc_D2F740: FLdRfVar var_194
  loc_D2F743: ConcatVar var_1C4
  loc_D2F747: LitVarStr var_1A4, "'"
  loc_D2F74C: ConcatVar var_1D4
  loc_D2F750: LitVarStr var_1E8, " GROUP BY CodiOfic, CuenCtct, NumeCred"
  loc_D2F755: ConcatVar var_1FC
  loc_D2F759: CStrVarVal var_12C
  loc_D2F75D: Call EjecutarRsCls4(from_stack_1v)
  loc_D2F762: FFree1Str var_12C
  loc_D2F765: FFreeAd var_170 = ""
  loc_D2F76C: FFreeVar var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = ""
  loc_D2F779: FLdRfVar var_168
  loc_D2F77C: FLdPr Me
  loc_D2F77F: MemLdPr global_72
  loc_D2F782:  = Me.RecordCount
  loc_D2F787: ILdRf var_168
  loc_D2F78A: LitI4 0
  loc_D2F78F: GtI4
  loc_D2F790: BranchF loc_D30070
  loc_D2F793: FLdPr Me
  loc_D2F796: MemLdPr global_72
  loc_D2F799: Me.MoveFirst
  loc_D2F79E: FLdRfVar var_16A
  loc_D2F7A1: FLdPr Me
  loc_D2F7A4: MemLdPr global_72
  loc_D2F7A7:  = Me.EOF
  loc_D2F7AC: FLdI2 var_16A
  loc_D2F7AF: NotI4
  loc_D2F7B0: BranchF loc_D30070
  loc_D2F7B3: FLdFPR8 var_EC
  loc_D2F7B6: LitI2_Byte 0
  loc_D2F7B8: CR8I2
  loc_D2F7B9: GtR4
  loc_D2F7BA: CVarBoolI2 var_1E8
  loc_D2F7BE: FLdRfVar var_194
  loc_D2F7C1: FLdRfVar var_184
  loc_D2F7C4: LitVarStr var_180, "SaldCred"
  loc_D2F7C9: PopAdLdVar
  loc_D2F7CA: FLdRfVar var_170
  loc_D2F7CD: FLdPr Me
  loc_D2F7D0: MemLdPr global_72
  loc_D2F7D3:  = Me.Fields
  loc_D2F7D8: FLdPr var_170
  loc_D2F7DB: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F7E0: FLdPr var_184
  loc_D2F7E3:  = Me.Value
  loc_D2F7E8: FLdRfVar var_194
  loc_D2F7EB: LitVarI2 var_1A4, 0
  loc_D2F7F0: HardType
  loc_D2F7F1: GtVar var_1B4
  loc_D2F7F5: AndVar var_1C4
  loc_D2F7F9: CBoolVarNull
  loc_D2F7FB: FFreeAd var_170 = ""
  loc_D2F802: FFreeVar var_194 = ""
  loc_D2F809: BranchF loc_D30062
  loc_D2F80C: FLdRfVar var_194
  loc_D2F80F: FLdRfVar var_184
  loc_D2F812: LitVarStr var_180, "SaldCred"
  loc_D2F817: PopAdLdVar
  loc_D2F818: FLdRfVar var_170
  loc_D2F81B: FLdPr Me
  loc_D2F81E: MemLdPr global_72
  loc_D2F821:  = Me.Fields
  loc_D2F826: FLdPr var_170
  loc_D2F829: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F82E: FLdPr var_184
  loc_D2F831:  = Me.Value
  loc_D2F836: FLdRfVar var_194
  loc_D2F839: FLdFPR8 var_EC
  loc_D2F83C: CVarR8
  loc_D2F840: HardType
  loc_D2F841: LeVarBool
  loc_D2F843: FFreeAd var_170 = ""
  loc_D2F84A: FFree1Var var_194 = ""
  loc_D2F84D: BranchF loc_D2FC92
  loc_D2F850: FLdFPR8 var_EC
  loc_D2F853: CVarR8
  loc_D2F857: FLdRfVar var_194
  loc_D2F85A: FLdRfVar var_184
  loc_D2F85D: LitVarStr var_180, "SaldCred"
  loc_D2F862: PopAdLdVar
  loc_D2F863: FLdRfVar var_170
  loc_D2F866: FLdPr Me
  loc_D2F869: MemLdPr global_72
  loc_D2F86C:  = Me.Fields
  loc_D2F871: FLdPr var_170
  loc_D2F874: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F879: FLdPr var_184
  loc_D2F87C:  = Me.Value
  loc_D2F881: FLdRfVar var_194
  loc_D2F884: SubVar var_1B4
  loc_D2F888: CR4Var
  loc_D2F889: FStFPR8 var_EC
  loc_D2F88C: FFreeAd var_170 = ""
  loc_D2F893: FFree1Var var_194 = ""
  loc_D2F896: FLdRfVar var_194
  loc_D2F899: FLdRfVar var_184
  loc_D2F89C: LitVarStr var_180, "CodiOfic"
  loc_D2F8A1: PopAdLdVar
  loc_D2F8A2: FLdRfVar var_170
  loc_D2F8A5: FLdPr Me
  loc_D2F8A8: MemLdPr global_72
  loc_D2F8AB:  = Me.Fields
  loc_D2F8B0: FLdPr var_170
  loc_D2F8B3: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F8B8: FLdPr var_184
  loc_D2F8BB:  = Me.Value
  loc_D2F8C0: FLdRfVar var_1B4
  loc_D2F8C3: FLdRfVar var_1EC
  loc_D2F8C6: LitVarStr var_1A4, "CuenCtct"
  loc_D2F8CB: PopAdLdVar
  loc_D2F8CC: FLdRfVar var_1D8
  loc_D2F8CF: FLdPr Me
  loc_D2F8D2: MemLdPr global_72
  loc_D2F8D5:  = Me.Fields
  loc_D2F8DA: FLdPr var_1D8
  loc_D2F8DD: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F8E2: FLdPr var_1EC
  loc_D2F8E5:  = Me.Value
  loc_D2F8EA: FLdRfVar var_1C4
  loc_D2F8ED: FLdRfVar var_2B4
  loc_D2F8F0: LitVarStr var_1E8, "NumeCred"
  loc_D2F8F5: PopAdLdVar
  loc_D2F8F6: FLdRfVar var_2A0
  loc_D2F8F9: FLdPr Me
  loc_D2F8FC: MemLdPr global_72
  loc_D2F8FF:  = Me.Fields
  loc_D2F904: FLdPr var_2A0
  loc_D2F907: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F90C: FLdPr var_2B4
  loc_D2F90F:  = Me.Value
  loc_D2F914: FLdRfVar var_16A
  loc_D2F917: FLdRfVar var_1C4
  loc_D2F91A: CI4Var
  loc_D2F91C: FLdRfVar var_1B4
  loc_D2F91F: CStrVarTmp
  loc_D2F920: FStStrNoPop var_12C
  loc_D2F923: FLdRfVar var_194
  loc_D2F926: CUI1Var
  loc_D2F928: FLdRfVar GeneracionCuentaCorriente
  loc_D2F92B: NewIfNullPr clscreditos
  loc_D2F92E: from_stack_4v = clscreditos.BuscaMoviCred(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D2F933: FLdI2 var_16A
  loc_D2F936: CR8I2
  loc_D2F937: FStFPR8 var_F4
  loc_D2F93A: FFree1Str var_12C
  loc_D2F93D: FFreeAd var_170 = "": var_1D8 = "": var_2A0 = "": var_184 = "": var_1EC = ""
  loc_D2F94C: FFreeVar var_194 = "": var_1B4 = ""
  loc_D2F955: FLdFPR8 var_F4
  loc_D2F958: LitI2_Byte 1
  loc_D2F95A: CR8I2
  loc_D2F95B: AddR8
  loc_D2F95C: FStFPR8 var_F4
  loc_D2F95F: FLdRfVar var_5D4
  loc_D2F962: FLdRfVar var_4FC
  loc_D2F965: LitVarStr var_5E4, "SaldCred"
  loc_D2F96A: PopAdLdVar
  loc_D2F96B: FLdRfVar var_4F8
  loc_D2F96E: FLdPr Me
  loc_D2F971: MemLdPr global_72
  loc_D2F974:  = Me.Fields
  loc_D2F979: FLdPr var_4F8
  loc_D2F97C: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F981: FLdPr var_4FC
  loc_D2F984:  = Me.Value
  loc_D2F989: LitStr " INSERT INTO creditos (CodiOfic,CuenCtct,NumeCred,MoviCred,PeriCtct,BimeCtct,NumeCtct,MoviCtct,CodiTili,NumeLiqu,PeriBole,NumeBole,FealCtct,PeriInfo,CodiConc,CodiTimo,ExpeCred,DetaCred,DebeCred,CredCred,CodiUsua) "
  loc_D2F98C: LitStr " VALUES (4,'"
  loc_D2F98F: ConcatStr
  loc_D2F990: CVarStr var_1B4
  loc_D2F993: FLdRfVar var_194
  loc_D2F996: FLdRfVar var_184
  loc_D2F999: LitVarStr var_180, "CodiDifu"
  loc_D2F99E: PopAdLdVar
  loc_D2F99F: FLdRfVar var_170
  loc_D2F9A2: FLdPr Me
  loc_D2F9A5: MemLdPr global_68
  loc_D2F9A8:  = Me.Fields
  loc_D2F9AD: FLdPr var_170
  loc_D2F9B0: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F9B5: FLdPr var_184
  loc_D2F9B8:  = Me.Value
  loc_D2F9BD: FLdRfVar var_194
  loc_D2F9C0: ConcatVar var_1C4
  loc_D2F9C4: LitVarStr var_1A4, "',"
  loc_D2F9C9: ConcatVar var_1D4
  loc_D2F9CD: FLdRfVar var_1FC
  loc_D2F9D0: FLdRfVar var_1EC
  loc_D2F9D3: LitVarStr var_1E8, "NumeCred"
  loc_D2F9D8: PopAdLdVar
  loc_D2F9D9: FLdRfVar var_1D8
  loc_D2F9DC: FLdPr Me
  loc_D2F9DF: MemLdPr global_72
  loc_D2F9E2:  = Me.Fields
  loc_D2F9E7: FLdPr var_1D8
  loc_D2F9EA: from_stack_2 = Me.Item(from_stack_1)
  loc_D2F9EF: FLdPr var_1EC
  loc_D2F9F2:  = Me.Value
  loc_D2F9F7: FLdRfVar var_1FC
  loc_D2F9FA: ConcatVar var_20C
  loc_D2F9FE: LitVarStr var_21C, ","
  loc_D2FA03: ConcatVar var_22C
  loc_D2FA07: FLdFPR8 var_F4
  loc_D2FA0A: CVarR8
  loc_D2FA0E: ConcatVar var_25C
  loc_D2FA12: LitVarStr var_24C, ","
  loc_D2FA17: ConcatVar var_26C
  loc_D2FA1B: FLdI2 iPeriodo
  loc_D2FA1E: CVarI2 var_28C
  loc_D2FA21: ConcatVar var_27C
  loc_D2FA25: LitVarStr var_2B0, ","
  loc_D2FA2A: ConcatVar var_29C
  loc_D2FA2E: FLdRfVar var_2C4
  loc_D2FA31: FLdRfVar var_2B4
  loc_D2FA34: LitVarStr var_2D4, "BimeLiqu"
  loc_D2FA39: PopAdLdVar
  loc_D2FA3A: FLdRfVar var_2A0
  loc_D2FA3D: FLdPr Me
  loc_D2FA40: MemLdPr global_68
  loc_D2FA43:  = Me.Fields
  loc_D2FA48: FLdPr var_2A0
  loc_D2FA4B: from_stack_2 = Me.Item(from_stack_1)
  loc_D2FA50: FLdPr var_2B4
  loc_D2FA53:  = Me.Value
  loc_D2FA58: FLdRfVar var_2C4
  loc_D2FA5B: ConcatVar var_2E4
  loc_D2FA5F: LitVarStr var_314, ","
  loc_D2FA64: ConcatVar var_2F4
  loc_D2FA68: ILdRf var_98
  loc_D2FA6B: CVarI4
  loc_D2FA6F: ConcatVar var_304
  loc_D2FA73: LitVarStr var_36C, ",3,"
  loc_D2FA78: ConcatVar var_324
  loc_D2FA7C: FLdRfVar var_34C
  loc_D2FA7F: FLdRfVar var_33C
  loc_D2FA82: LitVarStr var_390, "CodiTili"
  loc_D2FA87: PopAdLdVar
  loc_D2FA88: FLdRfVar var_328
  loc_D2FA8B: FLdPr Me
  loc_D2FA8E: MemLdPr global_68
  loc_D2FA91:  = Me.Fields
  loc_D2FA96: FLdPr var_328
  loc_D2FA99: from_stack_2 = Me.Item(from_stack_1)
  loc_D2FA9E: FLdPr var_33C
  loc_D2FAA1:  = Me.Value
  loc_D2FAA6: FLdRfVar var_34C
  loc_D2FAA9: ConcatVar var_35C
  loc_D2FAAD: LitVarStr var_3C4, ","
  loc_D2FAB2: ConcatVar var_37C
  loc_D2FAB6: FLdRfVar var_3A4
  loc_D2FAB9: FLdRfVar var_394
  loc_D2FABC: LitVarStr var_3E8, "NumeLiqu"
  loc_D2FAC1: PopAdLdVar
  loc_D2FAC2: FLdRfVar var_380
  loc_D2FAC5: FLdPr Me
  loc_D2FAC8: MemLdPr global_68
  loc_D2FACB:  = Me.Fields
  loc_D2FAD0: FLdPr var_380
  loc_D2FAD3: from_stack_2 = Me.Item(from_stack_1)
  loc_D2FAD8: FLdPr var_394
  loc_D2FADB:  = Me.Value
  loc_D2FAE0: FLdRfVar var_3A4
  loc_D2FAE3: ConcatVar var_3B4
  loc_D2FAE7: LitVarStr var_42C, ","
  loc_D2FAEC: ConcatVar var_3D4
  loc_D2FAF0: FLdI2 iPeriodo
  loc_D2FAF3: CVarI2 var_450
  loc_D2FAF6: ConcatVar var_3FC
  loc_D2FAFA: LitVarStr var_494, ","
  loc_D2FAFF: ConcatVar var_40C
  loc_D2FB03: ILdRf var_9C
  loc_D2FB06: CVarI4
  loc_D2FB0A: ConcatVar var_41C
  loc_D2FB0E: LitVarStr var_4D4, ",'"
  loc_D2FB13: ConcatVar var_43C
  loc_D2FB17: LitI4 1
  loc_D2FB1C: LitI4 1
  loc_D2FB21: LitVarStr var_534, "yyyy-mm-dd"
  loc_D2FB26: FStVarCopyObj var_464
  loc_D2FB29: FLdRfVar var_464
  loc_D2FB2C: FLdRfVar var_A4
  loc_D2FB2F: CVarRef
  loc_D2FB34: ImpAdCallI2 Format$(, )
  loc_D2FB39: CVarStr var_474
  loc_D2FB3C: ConcatVar var_484
  loc_D2FB40: LitVarStr var_544, "',"
  loc_D2FB45: ConcatVar var_4A4
  loc_D2FB49: FLdRfVar var_3EC
  loc_D2FB4C: LitVarStr var_554, "FealLice"
  loc_D2FB51: PopAdLdVar
  loc_D2FB52: FLdRfVar var_3D8
  loc_D2FB55: FLdPr Me
  loc_D2FB58: MemLdPr global_68
  loc_D2FB5B:  = Me.Fields
  loc_D2FB60: FLdPr var_3D8
  loc_D2FB63: from_stack_2 = Me.Item(from_stack_1)
  loc_D2FB68: FLdZeroAd var_3EC
  loc_D2FB6B: CVarAd
  loc_D2FB6F: FLdRfVar var_4E4
  loc_D2FB72: ImpAdCallFPR4  = Year()
  loc_D2FB77: FLdRfVar var_4E4
  loc_D2FB7A: ConcatVar var_514
  loc_D2FB7E: LitVarStr var_564, ",'"
  loc_D2FB83: ConcatVar var_574
  loc_D2FB87: FLdRfVar var_584
  loc_D2FB8A: FLdRfVar var_454
  loc_D2FB8D: LitVarStr var_594, "CodiConc"
  loc_D2FB92: PopAdLdVar
  loc_D2FB93: FLdRfVar var_440
  loc_D2FB96: FLdPr Me
  loc_D2FB99: MemLdPr global_68
  loc_D2FB9C:  = Me.Fields
  loc_D2FBA1: FLdPr var_440
  loc_D2FBA4: from_stack_2 = Me.Item(from_stack_1)
  loc_D2FBA9: FLdPr var_454
  loc_D2FBAC:  = Me.Value
  loc_D2FBB1: FLdRfVar var_584
  loc_D2FBB4: ConcatVar var_5A4
  loc_D2FBB8: LitVarStr var_5B4, "',23,'','',0,"
  loc_D2FBBD: ConcatVar var_5C4
  loc_D2FBC1: LitI4 0
  loc_D2FBC6: LitI4 -1
  loc_D2FBCB: LitI4 1
  loc_D2FBD0: LitStr "."
  loc_D2FBD3: LitStr ","
  loc_D2FBD6: FLdRfVar var_5D4
  loc_D2FBD9: CStrVarTmp
  loc_D2FBDA: FStStrNoPop var_12C
  loc_D2FBDD: ImpAdCallI2 Replace(, , , , , )
  loc_D2FBE2: CVarStr var_5F4
  loc_D2FBE5: ConcatVar var_614
  loc_D2FBE9: LitVarStr var_604, ",'"
  loc_D2FBEE: ConcatVar var_624
  loc_D2FBF2: ImpAdLdI4 MemVar_D9302C
  loc_D2FBF5: CVarStr var_634
  loc_D2FBF8: ConcatVar var_644
  loc_D2FBFC: LitVarStr var_654, "');"
  loc_D2FC01: ConcatVar var_664
  loc_D2FC05: CStrVarVal var_130
  loc_D2FC09: Call EjecutarRsCls(from_stack_1v)
  loc_D2FC0E: FFreeStr var_12C = ""
  loc_D2FC15: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = "": var_440 = "": var_454 = "": var_4F8 = ""
  loc_D2FC36: FFreeVar var_4A4 = "": var_4E4 = "": var_514 = "": var_574 = "": var_584 = "": var_5A4 = "": var_5D4 = "": var_5C4 = "": var_5F4 = "": var_614 = "": var_624 = "": var_644 = "": var_664 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = "": var_40C = "": var_41C = "": var_464 = "": var_43C = "": var_474 = "": var_484 = ""
  loc_D2FC8F: Branch loc_D30062
  loc_D2FC92: FLdRfVar var_194
  loc_D2FC95: FLdRfVar var_184
  loc_D2FC98: LitVarStr var_180, "CodiOfic"
  loc_D2FC9D: PopAdLdVar
  loc_D2FC9E: FLdRfVar var_170
  loc_D2FCA1: FLdPr Me
  loc_D2FCA4: MemLdPr global_72
  loc_D2FCA7:  = Me.Fields
  loc_D2FCAC: FLdPr var_170
  loc_D2FCAF: from_stack_2 = Me.Item(from_stack_1)
  loc_D2FCB4: FLdPr var_184
  loc_D2FCB7:  = Me.Value
  loc_D2FCBC: FLdRfVar var_1B4
  loc_D2FCBF: FLdRfVar var_1EC
  loc_D2FCC2: LitVarStr var_1A4, "CuenCtct"
  loc_D2FCC7: PopAdLdVar
  loc_D2FCC8: FLdRfVar var_1D8
  loc_D2FCCB: FLdPr Me
  loc_D2FCCE: MemLdPr global_72
  loc_D2FCD1:  = Me.Fields
  loc_D2FCD6: FLdPr var_1D8
  loc_D2FCD9: from_stack_2 = Me.Item(from_stack_1)
  loc_D2FCDE: FLdPr var_1EC
  loc_D2FCE1:  = Me.Value
  loc_D2FCE6: FLdRfVar var_1C4
  loc_D2FCE9: FLdRfVar var_2B4
  loc_D2FCEC: LitVarStr var_1E8, "NumeCred"
  loc_D2FCF1: PopAdLdVar
  loc_D2FCF2: FLdRfVar var_2A0
  loc_D2FCF5: FLdPr Me
  loc_D2FCF8: MemLdPr global_72
  loc_D2FCFB:  = Me.Fields
  loc_D2FD00: FLdPr var_2A0
  loc_D2FD03: from_stack_2 = Me.Item(from_stack_1)
  loc_D2FD08: FLdPr var_2B4
  loc_D2FD0B:  = Me.Value
  loc_D2FD10: FLdRfVar var_16A
  loc_D2FD13: FLdRfVar var_1C4
  loc_D2FD16: CI4Var
  loc_D2FD18: FLdRfVar var_1B4
  loc_D2FD1B: CStrVarTmp
  loc_D2FD1C: FStStrNoPop var_12C
  loc_D2FD1F: FLdRfVar var_194
  loc_D2FD22: CUI1Var
  loc_D2FD24: FLdRfVar GeneracionCuentaCorriente
  loc_D2FD27: NewIfNullPr clscreditos
  loc_D2FD2A: from_stack_4v = clscreditos.BuscaMoviCred(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D2FD2F: FLdI2 var_16A
  loc_D2FD32: CR8I2
  loc_D2FD33: FStFPR8 var_F4
  loc_D2FD36: FFree1Str var_12C
  loc_D2FD39: FFreeAd var_170 = "": var_1D8 = "": var_2A0 = "": var_184 = "": var_1EC = ""
  loc_D2FD48: FFreeVar var_194 = "": var_1B4 = ""
  loc_D2FD51: FLdFPR8 var_F4
  loc_D2FD54: LitI2_Byte 1
  loc_D2FD56: CR8I2
  loc_D2FD57: AddR8
  loc_D2FD58: FStFPR8 var_F4
  loc_D2FD5B: LitStr " INSERT INTO creditos (CodiOfic,CuenCtct,NumeCred,MoviCred,PeriCtct,BimeCtct,NumeCtct,MoviCtct,CodiTili,NumeLiqu,PeriBole,NumeBole,FealCtct,PeriInfo,CodiConc,CodiTimo,ExpeCred,DetaCred,DebeCred,CredCred,CodiUsua) "
  loc_D2FD5E: LitStr " VALUES (4,'"
  loc_D2FD61: ConcatStr
  loc_D2FD62: CVarStr var_1B4
  loc_D2FD65: FLdRfVar var_194
  loc_D2FD68: FLdRfVar var_184
  loc_D2FD6B: LitVarStr var_180, "CodiDifu"
  loc_D2FD70: PopAdLdVar
  loc_D2FD71: FLdRfVar var_170
  loc_D2FD74: FLdPr Me
  loc_D2FD77: MemLdPr global_68
  loc_D2FD7A:  = Me.Fields
  loc_D2FD7F: FLdPr var_170
  loc_D2FD82: from_stack_2 = Me.Item(from_stack_1)
  loc_D2FD87: FLdPr var_184
  loc_D2FD8A:  = Me.Value
  loc_D2FD8F: FLdRfVar var_194
  loc_D2FD92: ConcatVar var_1C4
  loc_D2FD96: LitVarStr var_1A4, "',"
  loc_D2FD9B: ConcatVar var_1D4
  loc_D2FD9F: FLdRfVar var_1FC
  loc_D2FDA2: FLdRfVar var_1EC
  loc_D2FDA5: LitVarStr var_1E8, "NumeCred"
  loc_D2FDAA: PopAdLdVar
  loc_D2FDAB: FLdRfVar var_1D8
  loc_D2FDAE: FLdPr Me
  loc_D2FDB1: MemLdPr global_72
  loc_D2FDB4:  = Me.Fields
  loc_D2FDB9: FLdPr var_1D8
  loc_D2FDBC: from_stack_2 = Me.Item(from_stack_1)
  loc_D2FDC1: FLdPr var_1EC
  loc_D2FDC4:  = Me.Value
  loc_D2FDC9: FLdRfVar var_1FC
  loc_D2FDCC: ConcatVar var_20C
  loc_D2FDD0: LitVarStr var_21C, ","
  loc_D2FDD5: ConcatVar var_22C
  loc_D2FDD9: FLdFPR8 var_F4
  loc_D2FDDC: CVarR8
  loc_D2FDE0: ConcatVar var_25C
  loc_D2FDE4: LitVarStr var_24C, ","
  loc_D2FDE9: ConcatVar var_26C
  loc_D2FDED: FLdI2 iPeriodo
  loc_D2FDF0: CVarI2 var_28C
  loc_D2FDF3: ConcatVar var_27C
  loc_D2FDF7: LitVarStr var_2B0, ","
  loc_D2FDFC: ConcatVar var_29C
  loc_D2FE00: FLdRfVar var_2C4
  loc_D2FE03: FLdRfVar var_2B4
  loc_D2FE06: LitVarStr var_2D4, "BimeLiqu"
  loc_D2FE0B: PopAdLdVar
  loc_D2FE0C: FLdRfVar var_2A0
  loc_D2FE0F: FLdPr Me
  loc_D2FE12: MemLdPr global_68
  loc_D2FE15:  = Me.Fields
  loc_D2FE1A: FLdPr var_2A0
  loc_D2FE1D: from_stack_2 = Me.Item(from_stack_1)
  loc_D2FE22: FLdPr var_2B4
  loc_D2FE25:  = Me.Value
  loc_D2FE2A: FLdRfVar var_2C4
  loc_D2FE2D: ConcatVar var_2E4
  loc_D2FE31: LitVarStr var_314, ","
  loc_D2FE36: ConcatVar var_2F4
  loc_D2FE3A: ILdRf var_98
  loc_D2FE3D: CVarI4
  loc_D2FE41: ConcatVar var_304
  loc_D2FE45: LitVarStr var_36C, ",3,"
  loc_D2FE4A: ConcatVar var_324
  loc_D2FE4E: FLdRfVar var_34C
  loc_D2FE51: FLdRfVar var_33C
  loc_D2FE54: LitVarStr var_390, "CodiTili"
  loc_D2FE59: PopAdLdVar
  loc_D2FE5A: FLdRfVar var_328
  loc_D2FE5D: FLdPr Me
  loc_D2FE60: MemLdPr global_68
  loc_D2FE63:  = Me.Fields
  loc_D2FE68: FLdPr var_328
  loc_D2FE6B: from_stack_2 = Me.Item(from_stack_1)
  loc_D2FE70: FLdPr var_33C
  loc_D2FE73:  = Me.Value
  loc_D2FE78: FLdRfVar var_34C
  loc_D2FE7B: ConcatVar var_35C
  loc_D2FE7F: LitVarStr var_3C4, ","
  loc_D2FE84: ConcatVar var_37C
  loc_D2FE88: FLdRfVar var_3A4
  loc_D2FE8B: FLdRfVar var_394
  loc_D2FE8E: LitVarStr var_3E8, "NumeLiqu"
  loc_D2FE93: PopAdLdVar
  loc_D2FE94: FLdRfVar var_380
  loc_D2FE97: FLdPr Me
  loc_D2FE9A: MemLdPr global_68
  loc_D2FE9D:  = Me.Fields
  loc_D2FEA2: FLdPr var_380
  loc_D2FEA5: from_stack_2 = Me.Item(from_stack_1)
  loc_D2FEAA: FLdPr var_394
  loc_D2FEAD:  = Me.Value
  loc_D2FEB2: FLdRfVar var_3A4
  loc_D2FEB5: ConcatVar var_3B4
  loc_D2FEB9: LitVarStr var_42C, ","
  loc_D2FEBE: ConcatVar var_3D4
  loc_D2FEC2: FLdI2 iPeriodo
  loc_D2FEC5: CVarI2 var_450
  loc_D2FEC8: ConcatVar var_3FC
  loc_D2FECC: LitVarStr var_494, ","
  loc_D2FED1: ConcatVar var_40C
  loc_D2FED5: ILdRf var_9C
  loc_D2FED8: CVarI4
  loc_D2FEDC: ConcatVar var_41C
  loc_D2FEE0: LitVarStr var_4D4, ",'"
  loc_D2FEE5: ConcatVar var_43C
  loc_D2FEE9: LitI4 1
  loc_D2FEEE: LitI4 1
  loc_D2FEF3: LitVarStr var_534, "yyyy-mm-dd"
  loc_D2FEF8: FStVarCopyObj var_464
  loc_D2FEFB: FLdRfVar var_464
  loc_D2FEFE: FLdRfVar var_A4
  loc_D2FF01: CVarRef
  loc_D2FF06: ImpAdCallI2 Format$(, )
  loc_D2FF0B: CVarStr var_474
  loc_D2FF0E: ConcatVar var_484
  loc_D2FF12: LitVarStr var_544, "',"
  loc_D2FF17: ConcatVar var_4A4
  loc_D2FF1B: FLdRfVar var_3EC
  loc_D2FF1E: LitVarStr var_554, "FealLice"
  loc_D2FF23: PopAdLdVar
  loc_D2FF24: FLdRfVar var_3D8
  loc_D2FF27: FLdPr Me
  loc_D2FF2A: MemLdPr global_68
  loc_D2FF2D:  = Me.Fields
  loc_D2FF32: FLdPr var_3D8
  loc_D2FF35: from_stack_2 = Me.Item(from_stack_1)
  loc_D2FF3A: FLdZeroAd var_3EC
  loc_D2FF3D: CVarAd
  loc_D2FF41: FLdRfVar var_4E4
  loc_D2FF44: ImpAdCallFPR4  = Year()
  loc_D2FF49: FLdRfVar var_4E4
  loc_D2FF4C: ConcatVar var_514
  loc_D2FF50: LitVarStr var_564, ",'"
  loc_D2FF55: ConcatVar var_574
  loc_D2FF59: FLdRfVar var_584
  loc_D2FF5C: FLdRfVar var_454
  loc_D2FF5F: LitVarStr var_594, "CodiConc"
  loc_D2FF64: PopAdLdVar
  loc_D2FF65: FLdRfVar var_440
  loc_D2FF68: FLdPr Me
  loc_D2FF6B: MemLdPr global_68
  loc_D2FF6E:  = Me.Fields
  loc_D2FF73: FLdPr var_440
  loc_D2FF76: from_stack_2 = Me.Item(from_stack_1)
  loc_D2FF7B: FLdPr var_454
  loc_D2FF7E:  = Me.Value
  loc_D2FF83: FLdRfVar var_584
  loc_D2FF86: ConcatVar var_5A4
  loc_D2FF8A: LitVarStr var_5B4, "',23,'','',0,"
  loc_D2FF8F: ConcatVar var_5C4
  loc_D2FF93: LitI4 0
  loc_D2FF98: LitI4 -1
  loc_D2FF9D: LitI4 1
  loc_D2FFA2: LitStr "."
  loc_D2FFA5: LitStr ","
  loc_D2FFA8: FLdFPR8 var_EC
  loc_D2FFAB: CStrR8
  loc_D2FFAD: FStStrNoPop var_12C
  loc_D2FFB0: ImpAdCallI2 Replace(, , , , , )
  loc_D2FFB5: CVarStr var_5D4
  loc_D2FFB8: ConcatVar var_5F4
  loc_D2FFBC: LitVarStr var_5E4, ",'"
  loc_D2FFC1: ConcatVar var_614
  loc_D2FFC5: ImpAdLdI4 MemVar_D9302C
  loc_D2FFC8: CVarStr var_604
  loc_D2FFCB: ConcatVar var_624
  loc_D2FFCF: LitVarStr var_634, "');"
  loc_D2FFD4: ConcatVar var_644
  loc_D2FFD8: CStrVarVal var_130
  loc_D2FFDC: Call EjecutarRsCls(from_stack_1v)
  loc_D2FFE1: FFreeStr var_12C = ""
  loc_D2FFE8: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = "": var_440 = ""
  loc_D30005: FFreeVar var_4A4 = "": var_4E4 = "": var_514 = "": var_574 = "": var_584 = "": var_5A4 = "": var_5C4 = "": var_5D4 = "": var_5F4 = "": var_614 = "": var_624 = "": var_644 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = "": var_40C = "": var_41C = "": var_464 = "": var_43C = "": var_474 = "": var_484 = ""
  loc_D3005C: LitI2_Byte 0
  loc_D3005E: CR8I2
  loc_D3005F: FStFPR8 var_EC
  loc_D30062: FLdPr Me
  loc_D30065: MemLdPr global_72
  loc_D30068: Me.MoveNext
  loc_D3006D: Branch loc_D2F79E
  loc_D30070: LitVarStr var_1A4, " UPDATE recabole SET ActuRebo = 'Si' WHERE PeriLiqu = "
  loc_D30075: FLdRfVar var_194
  loc_D30078: FLdRfVar var_184
  loc_D3007B: LitVarStr var_180, "PeriLiqu"
  loc_D30080: PopAdLdVar
  loc_D30081: FLdRfVar var_170
  loc_D30084: FLdPr Me
  loc_D30087: MemLdPr global_68
  loc_D3008A:  = Me.Fields
  loc_D3008F: FLdPr var_170
  loc_D30092: from_stack_2 = Me.Item(from_stack_1)
  loc_D30097: FLdPr var_184
  loc_D3009A:  = Me.Value
  loc_D3009F: FLdRfVar var_194
  loc_D300A2: ConcatVar var_1B4
  loc_D300A6: LitVarStr var_1E8, " AND BimeLiqu = "
  loc_D300AB: ConcatVar var_1C4
  loc_D300AF: FLdRfVar var_1D4
  loc_D300B2: FLdRfVar var_1EC
  loc_D300B5: LitVarStr var_21C, "BimeLiqu"
  loc_D300BA: PopAdLdVar
  loc_D300BB: FLdRfVar var_1D8
  loc_D300BE: FLdPr Me
  loc_D300C1: MemLdPr global_68
  loc_D300C4:  = Me.Fields
  loc_D300C9: FLdPr var_1D8
  loc_D300CC: from_stack_2 = Me.Item(from_stack_1)
  loc_D300D1: FLdPr var_1EC
  loc_D300D4:  = Me.Value
  loc_D300D9: FLdRfVar var_1D4
  loc_D300DC: ConcatVar var_1FC
  loc_D300E0: LitVarStr var_23C, " AND CodiTili = "
  loc_D300E5: ConcatVar var_20C
  loc_D300E9: FLdRfVar var_22C
  loc_D300EC: FLdRfVar var_2B4
  loc_D300EF: LitVarStr var_24C, "CodiTili"
  loc_D300F4: PopAdLdVar
  loc_D300F5: FLdRfVar var_2A0
  loc_D300F8: FLdPr Me
  loc_D300FB: MemLdPr global_68
  loc_D300FE:  = Me.Fields
  loc_D30103: FLdPr var_2A0
  loc_D30106: from_stack_2 = Me.Item(from_stack_1)
  loc_D3010B: FLdPr var_2B4
  loc_D3010E:  = Me.Value
  loc_D30113: FLdRfVar var_22C
  loc_D30116: ConcatVar var_25C
  loc_D3011A: LitVarStr var_28C, " AND NumeLiqu = "
  loc_D3011F: ConcatVar var_26C
  loc_D30123: FLdRfVar var_27C
  loc_D30126: FLdRfVar var_33C
  loc_D30129: LitVarStr var_2B0, "NumeLiqu"
  loc_D3012E: PopAdLdVar
  loc_D3012F: FLdRfVar var_328
  loc_D30132: FLdPr Me
  loc_D30135: MemLdPr global_68
  loc_D30138:  = Me.Fields
  loc_D3013D: FLdPr var_328
  loc_D30140: from_stack_2 = Me.Item(from_stack_1)
  loc_D30145: FLdPr var_33C
  loc_D30148:  = Me.Value
  loc_D3014D: FLdRfVar var_27C
  loc_D30150: ConcatVar var_29C
  loc_D30154: LitVarStr var_2D4, " AND CodiOfic = 4 AND CuenCtct = '"
  loc_D30159: ConcatVar var_2C4
  loc_D3015D: FLdRfVar var_2E4
  loc_D30160: FLdRfVar var_394
  loc_D30163: LitVarStr var_314, "CodiDifu"
  loc_D30168: PopAdLdVar
  loc_D30169: FLdRfVar var_380
  loc_D3016C: FLdPr Me
  loc_D3016F: MemLdPr global_68
  loc_D30172:  = Me.Fields
  loc_D30177: FLdPr var_380
  loc_D3017A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3017F: FLdPr var_394
  loc_D30182:  = Me.Value
  loc_D30187: FLdRfVar var_2E4
  loc_D3018A: ConcatVar var_2F4
  loc_D3018E: LitVarStr var_338, "';"
  loc_D30193: ConcatVar var_304
  loc_D30197: CStrVarVal var_12C
  loc_D3019B: Call EjecutarRsCls(from_stack_1v)
  loc_D301A0: FFree1Str var_12C
  loc_D301A3: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = ""
  loc_D301BA: FFreeVar var_194 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = ""
  loc_D301DB: FLdRfVar var_194
  loc_D301DE: FLdRfVar var_184
  loc_D301E1: LitVarStr var_180, "TipoVenc"
  loc_D301E6: PopAdLdVar
  loc_D301E7: FLdRfVar var_170
  loc_D301EA: FLdPr Me
  loc_D301ED: MemLdPr global_68
  loc_D301F0:  = Me.Fields
  loc_D301F5: FLdPr var_170
  loc_D301F8: from_stack_2 = Me.Item(from_stack_1)
  loc_D301FD: FLdPr var_184
  loc_D30200:  = Me.Value
  loc_D30205: FLdRfVar var_194
  loc_D30208: FnCIntVar
  loc_D3020A: LitI2_Byte 2
  loc_D3020C: EqI2
  loc_D3020D: FFreeAd var_170 = ""
  loc_D30214: FFree1Var var_194 = ""
  loc_D30217: BranchF loc_D31535
  loc_D3021A: FLdRfVar var_194
  loc_D3021D: FLdRfVar var_184
  loc_D30220: LitVarStr var_180, "TotaBole"
  loc_D30225: PopAdLdVar
  loc_D30226: FLdRfVar var_170
  loc_D30229: FLdPr Me
  loc_D3022C: MemLdPr global_64
  loc_D3022F:  = Me.Fields
  loc_D30234: FLdPr var_170
  loc_D30237: from_stack_2 = Me.Item(from_stack_1)
  loc_D3023C: FLdPr var_184
  loc_D3023F:  = Me.Value
  loc_D30244: FLdRfVar var_194
  loc_D30247: LitVarI2 var_1A4, 0
  loc_D3024C: HardType
  loc_D3024D: GtVarBool
  loc_D3024F: FFreeAd var_170 = ""
  loc_D30256: FFree1Var var_194 = ""
  loc_D30259: BranchF loc_D31529
  loc_D3025C: FLdRfVar var_1B4
  loc_D3025F: FLdRfVar var_184
  loc_D30262: LitVarStr var_180, "CodiConc"
  loc_D30267: PopAdLdVar
  loc_D30268: FLdRfVar var_170
  loc_D3026B: FLdPr Me
  loc_D3026E: MemLdPr global_68
  loc_D30271:  = Me.Fields
  loc_D30276: FLdPr var_170
  loc_D30279: from_stack_2 = Me.Item(from_stack_1)
  loc_D3027E: FLdPr var_184
  loc_D30281:  = Me.Value
  loc_D30286: FLdRfVar var_1B4
  loc_D30289: FLdRfVar var_194
  loc_D3028C: FLdRfVar var_1EC
  loc_D3028F: LitVarStr var_1A4, "CodiTili"
  loc_D30294: PopAdLdVar
  loc_D30295: FLdRfVar var_1D8
  loc_D30298: FLdPr Me
  loc_D3029B: MemLdPr global_68
  loc_D3029E:  = Me.Fields
  loc_D302A3: FLdPr var_1D8
  loc_D302A6: from_stack_2 = Me.Item(from_stack_1)
  loc_D302AB: FLdPr var_1EC
  loc_D302AE:  = Me.Value
  loc_D302B3: FLdRfVar var_194
  loc_D302B6: CUI1Var
  loc_D302B8: LitI2_Byte 2
  loc_D302BA: CUI1I2
  loc_D302BC: ImpAdCallI2  = Proc_270_71_A8F7D0()
  loc_D302C1: CVarStr var_1C4
  loc_D302C4: HardType
  loc_D302C5: EqVarBool
  loc_D302C7: FFreeAd var_170 = "": var_1D8 = "": var_1EC = ""
  loc_D302D2: FFreeVar var_194 = "": var_1B4 = ""
  loc_D302DB: BranchF loc_D308B3
  loc_D302DE: LitStr "SELECT PeriCtct, BimeCtct, NumeCtct, CapiDebo, TotaDebo FROM detabole"
  loc_D302E1: LitStr " WHERE PeriBole = "
  loc_D302E4: ConcatStr
  loc_D302E5: CVarStr var_1B4
  loc_D302E8: FLdRfVar var_194
  loc_D302EB: FLdRfVar var_184
  loc_D302EE: LitVarStr var_180, "PeriLiqu"
  loc_D302F3: PopAdLdVar
  loc_D302F4: FLdRfVar var_170
  loc_D302F7: FLdPr Me
  loc_D302FA: MemLdPr global_68
  loc_D302FD:  = Me.Fields
  loc_D30302: FLdPr var_170
  loc_D30305: from_stack_2 = Me.Item(from_stack_1)
  loc_D3030A: FLdPr var_184
  loc_D3030D:  = Me.Value
  loc_D30312: FLdRfVar var_194
  loc_D30315: ConcatVar var_1C4
  loc_D30319: LitVarStr var_1A4, " AND CodiOfic = 4"
  loc_D3031E: ConcatVar var_1D4
  loc_D30322: LitVarStr var_1E8, " AND CuenCtct = '"
  loc_D30327: ConcatVar var_1FC
  loc_D3032B: FLdRfVar var_20C
  loc_D3032E: FLdRfVar var_1EC
  loc_D30331: LitVarStr var_21C, "CodiDifu"
  loc_D30336: PopAdLdVar
  loc_D30337: FLdRfVar var_1D8
  loc_D3033A: FLdPr Me
  loc_D3033D: MemLdPr global_68
  loc_D30340:  = Me.Fields
  loc_D30345: FLdPr var_1D8
  loc_D30348: from_stack_2 = Me.Item(from_stack_1)
  loc_D3034D: FLdPr var_1EC
  loc_D30350:  = Me.Value
  loc_D30355: FLdRfVar var_20C
  loc_D30358: ConcatVar var_22C
  loc_D3035C: LitVarStr var_23C, "'"
  loc_D30361: ConcatVar var_25C
  loc_D30365: LitVarStr var_24C, " AND PeriCtct = "
  loc_D3036A: ConcatVar var_26C
  loc_D3036E: FLdRfVar var_27C
  loc_D30371: FLdRfVar var_2B4
  loc_D30374: LitVarStr var_28C, "PeriLiqu"
  loc_D30379: PopAdLdVar
  loc_D3037A: FLdRfVar var_2A0
  loc_D3037D: FLdPr Me
  loc_D30380: MemLdPr global_68
  loc_D30383:  = Me.Fields
  loc_D30388: FLdPr var_2A0
  loc_D3038B: from_stack_2 = Me.Item(from_stack_1)
  loc_D30390: FLdPr var_2B4
  loc_D30393:  = Me.Value
  loc_D30398: FLdRfVar var_27C
  loc_D3039B: ConcatVar var_29C
  loc_D3039F: LitVarStr var_2B0, " AND CodiConc = '"
  loc_D303A4: ConcatVar var_2C4
  loc_D303A8: FLdRfVar var_2E4
  loc_D303AB: FLdRfVar var_33C
  loc_D303AE: LitVarStr var_2D4, "CodiConc"
  loc_D303B3: PopAdLdVar
  loc_D303B4: FLdRfVar var_328
  loc_D303B7: FLdPr Me
  loc_D303BA: MemLdPr global_68
  loc_D303BD:  = Me.Fields
  loc_D303C2: FLdPr var_328
  loc_D303C5: from_stack_2 = Me.Item(from_stack_1)
  loc_D303CA: FLdPr var_33C
  loc_D303CD:  = Me.Value
  loc_D303D2: FLdRfVar var_2E4
  loc_D303D5: ConcatVar var_2F4
  loc_D303D9: LitVarStr var_314, "'"
  loc_D303DE: ConcatVar var_304
  loc_D303E2: LitVarStr var_338, " AND TipoCtct = 'Bimestral'"
  loc_D303E7: ConcatVar var_324
  loc_D303EB: LitVarStr var_36C, " AND CodiTili = "
  loc_D303F0: ConcatVar var_34C
  loc_D303F4: FLdRfVar var_35C
  loc_D303F7: FLdRfVar var_394
  loc_D303FA: LitVarStr var_390, "CodiTili"
  loc_D303FF: PopAdLdVar
  loc_D30400: FLdRfVar var_380
  loc_D30403: FLdPr Me
  loc_D30406: MemLdPr global_68
  loc_D30409:  = Me.Fields
  loc_D3040E: FLdPr var_380
  loc_D30411: from_stack_2 = Me.Item(from_stack_1)
  loc_D30416: FLdPr var_394
  loc_D30419:  = Me.Value
  loc_D3041E: FLdRfVar var_35C
  loc_D30421: ConcatVar var_37C
  loc_D30425: LitVarStr var_3C4, " AND NumeLiqu = "
  loc_D3042A: ConcatVar var_3A4
  loc_D3042E: FLdRfVar var_3B4
  loc_D30431: FLdRfVar var_3EC
  loc_D30434: LitVarStr var_3E8, "NumeLiqu"
  loc_D30439: PopAdLdVar
  loc_D3043A: FLdRfVar var_3D8
  loc_D3043D: FLdPr Me
  loc_D30440: MemLdPr global_68
  loc_D30443:  = Me.Fields
  loc_D30448: FLdPr var_3D8
  loc_D3044B: from_stack_2 = Me.Item(from_stack_1)
  loc_D30450: FLdPr var_3EC
  loc_D30453:  = Me.Value
  loc_D30458: FLdRfVar var_3B4
  loc_D3045B: ConcatVar var_3D4
  loc_D3045F: LitVarStr var_42C, " ORDER BY PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D30464: ConcatVar var_3FC
  loc_D30468: CStrVarVal var_12C
  loc_D3046C: Call EjecutarRsCls4(from_stack_1v)
  loc_D30471: FFree1Str var_12C
  loc_D30474: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = ""
  loc_D3048F: FFreeVar var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = ""
  loc_D304C0: FLdRfVar var_168
  loc_D304C3: FLdPr Me
  loc_D304C6: MemLdPr global_72
  loc_D304C9:  = Me.RecordCount
  loc_D304CE: ILdRf var_168
  loc_D304D1: LitI4 0
  loc_D304D6: GtI4
  loc_D304D7: BranchF loc_D308B0
  loc_D304DA: FLdFPR8 var_10C
  loc_D304DD: CVarR8
  loc_D304E1: FLdRfVar var_194
  loc_D304E4: FLdRfVar var_184
  loc_D304E7: LitVarStr var_180, "TotaDebo"
  loc_D304EC: PopAdLdVar
  loc_D304ED: FLdRfVar var_170
  loc_D304F0: FLdPr Me
  loc_D304F3: MemLdPr global_72
  loc_D304F6:  = Me.Fields
  loc_D304FB: FLdPr var_170
  loc_D304FE: from_stack_2 = Me.Item(from_stack_1)
  loc_D30503: FLdPr var_184
  loc_D30506:  = Me.Value
  loc_D3050B: FLdRfVar var_194
  loc_D3050E: AddVar var_1B4
  loc_D30512: CR4Var
  loc_D30513: FStFPR8 var_10C
  loc_D30516: FFreeAd var_170 = ""
  loc_D3051D: FFreeVar var_194 = ""
  loc_D30524: FLdRfVar var_4A4
  loc_D30527: FLdRfVar var_6EC
  loc_D3052A: LitVarStr var_4B4, "CapiDebo"
  loc_D3052F: PopAdLdVar
  loc_D30530: FLdRfVar var_6E8
  loc_D30533: FLdPr Me
  loc_D30536: MemLdPr global_72
  loc_D30539:  = Me.Fields
  loc_D3053E: FLdPr var_6E8
  loc_D30541: from_stack_2 = Me.Item(from_stack_1)
  loc_D30546: FLdPr var_6EC
  loc_D30549:  = Me.Value
  loc_D3054E: FLdRfVar var_574
  loc_D30551: FLdRfVar var_6F4
  loc_D30554: LitVarStr var_524, "TotaDebo"
  loc_D30559: PopAdLdVar
  loc_D3055A: FLdRfVar var_6F0
  loc_D3055D: FLdPr Me
  loc_D30560: MemLdPr global_72
  loc_D30563:  = Me.Fields
  loc_D30568: FLdPr var_6F0
  loc_D3056B: from_stack_2 = Me.Item(from_stack_1)
  loc_D30570: FLdPr var_6F4
  loc_D30573:  = Me.Value
  loc_D30578: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiTili, NumeLiqu, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo) "
  loc_D3057B: LitStr " VALUES ("
  loc_D3057E: ConcatStr
  loc_D3057F: FStStrNoPop var_12C
  loc_D30582: FLdI2 iPeriodo
  loc_D30585: CStrUI1
  loc_D30587: FStStrNoPop var_130
  loc_D3058A: ConcatStr
  loc_D3058B: FStStrNoPop var_134
  loc_D3058E: LitStr ","
  loc_D30591: ConcatStr
  loc_D30592: FStStrNoPop var_138
  loc_D30595: ILdRf var_9C
  loc_D30598: CStrI4
  loc_D3059A: FStStrNoPop var_13C
  loc_D3059D: ConcatStr
  loc_D3059E: FStStrNoPop var_140
  loc_D305A1: LitStr ","
  loc_D305A4: ConcatStr
  loc_D305A5: CVarStr var_1B4
  loc_D305A8: FLdRfVar var_194
  loc_D305AB: FLdRfVar var_184
  loc_D305AE: LitVarStr var_180, "PeriCtct"
  loc_D305B3: PopAdLdVar
  loc_D305B4: FLdRfVar var_170
  loc_D305B7: FLdPr Me
  loc_D305BA: MemLdPr global_72
  loc_D305BD:  = Me.Fields
  loc_D305C2: FLdPr var_170
  loc_D305C5: from_stack_2 = Me.Item(from_stack_1)
  loc_D305CA: FLdPr var_184
  loc_D305CD:  = Me.Value
  loc_D305D2: FLdRfVar var_194
  loc_D305D5: ConcatVar var_1C4
  loc_D305D9: LitVarStr var_1A4, ","
  loc_D305DE: ConcatVar var_1D4
  loc_D305E2: FLdRfVar var_1FC
  loc_D305E5: FLdRfVar var_1EC
  loc_D305E8: LitVarStr var_1E8, "BimeCtct"
  loc_D305ED: PopAdLdVar
  loc_D305EE: FLdRfVar var_1D8
  loc_D305F1: FLdPr Me
  loc_D305F4: MemLdPr global_72
  loc_D305F7:  = Me.Fields
  loc_D305FC: FLdPr var_1D8
  loc_D305FF: from_stack_2 = Me.Item(from_stack_1)
  loc_D30604: FLdPr var_1EC
  loc_D30607:  = Me.Value
  loc_D3060C: FLdRfVar var_1FC
  loc_D3060F: ConcatVar var_20C
  loc_D30613: LitVarStr var_21C, ","
  loc_D30618: ConcatVar var_22C
  loc_D3061C: FLdRfVar var_25C
  loc_D3061F: FLdRfVar var_2B4
  loc_D30622: LitVarStr var_23C, "NumeCtct"
  loc_D30627: PopAdLdVar
  loc_D30628: FLdRfVar var_2A0
  loc_D3062B: FLdPr Me
  loc_D3062E: MemLdPr global_72
  loc_D30631:  = Me.Fields
  loc_D30636: FLdPr var_2A0
  loc_D30639: from_stack_2 = Me.Item(from_stack_1)
  loc_D3063E: FLdPr var_2B4
  loc_D30641:  = Me.Value
  loc_D30646: FLdRfVar var_25C
  loc_D30649: ConcatVar var_26C
  loc_D3064D: LitVarStr var_24C, ",1,1,"
  loc_D30652: ConcatVar var_27C
  loc_D30656: FLdRfVar var_29C
  loc_D30659: FLdRfVar var_33C
  loc_D3065C: LitVarStr var_28C, "CodiTili"
  loc_D30661: PopAdLdVar
  loc_D30662: FLdRfVar var_328
  loc_D30665: FLdPr Me
  loc_D30668: MemLdPr global_68
  loc_D3066B:  = Me.Fields
  loc_D30670: FLdPr var_328
  loc_D30673: from_stack_2 = Me.Item(from_stack_1)
  loc_D30678: FLdPr var_33C
  loc_D3067B:  = Me.Value
  loc_D30680: FLdRfVar var_29C
  loc_D30683: ConcatVar var_2C4
  loc_D30687: LitVarStr var_2B0, ","
  loc_D3068C: ConcatVar var_2E4
  loc_D30690: FLdRfVar var_2F4
  loc_D30693: FLdRfVar var_394
  loc_D30696: LitVarStr var_2D4, "NumeLiqu"
  loc_D3069B: PopAdLdVar
  loc_D3069C: FLdRfVar var_380
  loc_D3069F: FLdPr Me
  loc_D306A2: MemLdPr global_68
  loc_D306A5:  = Me.Fields
  loc_D306AA: FLdPr var_380
  loc_D306AD: from_stack_2 = Me.Item(from_stack_1)
  loc_D306B2: FLdPr var_394
  loc_D306B5:  = Me.Value
  loc_D306BA: FLdRfVar var_2F4
  loc_D306BD: ConcatVar var_304
  loc_D306C1: LitVarStr var_314, ",4,'"
  loc_D306C6: ConcatVar var_324
  loc_D306CA: FLdRfVar var_34C
  loc_D306CD: FLdRfVar var_3EC
  loc_D306D0: LitVarStr var_338, "CodiDifu"
  loc_D306D5: PopAdLdVar
  loc_D306D6: FLdRfVar var_3D8
  loc_D306D9: FLdPr Me
  loc_D306DC: MemLdPr global_68
  loc_D306DF:  = Me.Fields
  loc_D306E4: FLdPr var_3D8
  loc_D306E7: from_stack_2 = Me.Item(from_stack_1)
  loc_D306EC: FLdPr var_3EC
  loc_D306EF:  = Me.Value
  loc_D306F4: FLdRfVar var_34C
  loc_D306F7: ConcatVar var_35C
  loc_D306FB: LitVarStr var_36C, "','Anual',0,0,0,"
  loc_D30700: ConcatVar var_37C
  loc_D30704: FLdRfVar var_3A4
  loc_D30707: FLdRfVar var_454
  loc_D3070A: LitVarStr var_390, "TiafConc"
  loc_D3070F: PopAdLdVar
  loc_D30710: FLdRfVar var_440
  loc_D30713: FLdPr Me
  loc_D30716: MemLdPr global_68
  loc_D30719:  = Me.Fields
  loc_D3071E: FLdPr var_440
  loc_D30721: from_stack_2 = Me.Item(from_stack_1)
  loc_D30726: FLdPr var_454
  loc_D30729:  = Me.Value
  loc_D3072E: FLdRfVar var_3A4
  loc_D30731: ConcatVar var_3B4
  loc_D30735: LitVarStr var_3C4, ","
  loc_D3073A: ConcatVar var_3D4
  loc_D3073E: FLdRfVar var_4FC
  loc_D30741: LitVarStr var_3E8, "FealLice"
  loc_D30746: PopAdLdVar
  loc_D30747: FLdRfVar var_4F8
  loc_D3074A: FLdPr Me
  loc_D3074D: MemLdPr global_68
  loc_D30750:  = Me.Fields
  loc_D30755: FLdPr var_4F8
  loc_D30758: from_stack_2 = Me.Item(from_stack_1)
  loc_D3075D: FLdZeroAd var_4FC
  loc_D30760: CVarAd
  loc_D30764: FLdRfVar var_40C
  loc_D30767: ImpAdCallFPR4  = Year()
  loc_D3076C: FLdRfVar var_40C
  loc_D3076F: ConcatVar var_41C
  loc_D30773: LitVarStr var_42C, ",'"
  loc_D30778: ConcatVar var_43C
  loc_D3077C: FLdRfVar var_464
  loc_D3077F: FLdRfVar var_504
  loc_D30782: LitVarStr var_450, "CodiConc"
  loc_D30787: PopAdLdVar
  loc_D30788: FLdRfVar var_500
  loc_D3078B: FLdPr Me
  loc_D3078E: MemLdPr global_68
  loc_D30791:  = Me.Fields
  loc_D30796: FLdPr var_500
  loc_D30799: from_stack_2 = Me.Item(from_stack_1)
  loc_D3079E: FLdPr var_504
  loc_D307A1:  = Me.Value
  loc_D307A6: FLdRfVar var_464
  loc_D307A9: ConcatVar var_474
  loc_D307AD: LitVarStr var_494, "',"
  loc_D307B2: ConcatVar var_484
  loc_D307B6: LitI4 0
  loc_D307BB: LitI4 -1
  loc_D307C0: LitI4 1
  loc_D307C5: LitStr "."
  loc_D307C8: LitStr ","
  loc_D307CB: FLdRfVar var_4A4
  loc_D307CE: CStrVarTmp
  loc_D307CF: FStStrNoPop var_144
  loc_D307D2: ImpAdCallI2 Replace(, , , , , )
  loc_D307D7: CVarStr var_4C4
  loc_D307DA: ConcatVar var_4E4
  loc_D307DE: LitVarStr var_4D4, ",0,0,0,0,0,0,"
  loc_D307E3: ConcatVar var_514
  loc_D307E7: LitI4 0
  loc_D307EC: LitI4 -1
  loc_D307F1: LitI4 1
  loc_D307F6: LitStr "."
  loc_D307F9: LitStr ","
  loc_D307FC: FLdRfVar var_574
  loc_D307FF: CStrVarTmp
  loc_D30800: FStStrNoPop var_148
  loc_D30803: ImpAdCallI2 Replace(, , , , , )
  loc_D30808: CVarStr var_584
  loc_D3080B: ConcatVar var_5A4
  loc_D3080F: LitVarStr var_534, ");"
  loc_D30814: ConcatVar var_5C4
  loc_D30818: CStrVarVal var_14C
  loc_D3081C: Call EjecutarRsCls(from_stack_1v)
  loc_D30821: FFreeStr var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_D30836: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = "": var_3EC = "": var_440 = "": var_454 = "": var_4F8 = "": var_500 = "": var_504 = "": var_6E8 = "": var_6EC = "": var_6F0 = ""
  loc_D30863: FFreeVar var_4C4 = "": var_4E4 = "": var_574 = "": var_514 = "": var_584 = "": var_5A4 = "": var_5C4 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3FC = "": var_3D4 = "": var_40C = "": var_41C = "": var_43C = "": var_464 = "": var_474 = "": var_4A4 = ""
  loc_D308B0: Branch loc_D31529
  loc_D308B3: FLdRfVar var_194
  loc_D308B6: FLdRfVar var_184
  loc_D308B9: LitVarStr var_180, "CrafLice"
  loc_D308BE: PopAdLdVar
  loc_D308BF: FLdRfVar var_170
  loc_D308C2: FLdPr Me
  loc_D308C5: MemLdPr global_68
  loc_D308C8:  = Me.Fields
  loc_D308CD: FLdPr var_170
  loc_D308D0: from_stack_2 = Me.Item(from_stack_1)
  loc_D308D5: FLdPr var_184
  loc_D308D8:  = Me.Value
  loc_D308DD: LitI4 2
  loc_D308E2: FLdRfVar var_194
  loc_D308E5: FLdFPR8 var_104
  loc_D308E8: CVarR8
  loc_D308EC: SubVar var_1B4
  loc_D308F0: FStVar var_1C4
  loc_D308F4: FLdRfVar var_1C4
  loc_D308F7: FLdRfVar var_1D4
  loc_D308FA: ImpAdCallFPR4  = Round(, )
  loc_D308FF: FLdRfVar var_1D4
  loc_D30902: CR4Var
  loc_D30903: FStFPR8 var_104
  loc_D30906: FFreeAd var_170 = ""
  loc_D3090D: FFreeVar var_194 = "": var_1C4 = ""
  loc_D30916: LitStr vbNullString
  loc_D30919: FStStrCopy var_128
  loc_D3091C: LitI2_Byte 1
  loc_D3091E: FLdRfVar var_A6
  loc_D30921: LitI2_Byte 6
  loc_D30923: ForI2 var_6F8
  loc_D30929: LitStr "SELECT * FROM detabole"
  loc_D3092C: LitStr " USE INDEX (idxdetabole02)"
  loc_D3092F: ConcatStr
  loc_D30930: FStStrNoPop var_12C
  loc_D30933: LitStr " WHERE PeriBole = "
  loc_D30936: ConcatStr
  loc_D30937: CVarStr var_1B4
  loc_D3093A: FLdRfVar var_194
  loc_D3093D: FLdRfVar var_184
  loc_D30940: LitVarStr var_180, "PeriLiqu"
  loc_D30945: PopAdLdVar
  loc_D30946: FLdRfVar var_170
  loc_D30949: FLdPr Me
  loc_D3094C: MemLdPr global_68
  loc_D3094F:  = Me.Fields
  loc_D30954: FLdPr var_170
  loc_D30957: from_stack_2 = Me.Item(from_stack_1)
  loc_D3095C: FLdPr var_184
  loc_D3095F:  = Me.Value
  loc_D30964: FLdRfVar var_194
  loc_D30967: ConcatVar var_1C4
  loc_D3096B: LitVarStr var_1A4, " AND CodiOfic = 4"
  loc_D30970: ConcatVar var_1D4
  loc_D30974: LitVarStr var_1E8, " AND CuenCtct = '"
  loc_D30979: ConcatVar var_1FC
  loc_D3097D: FLdRfVar var_20C
  loc_D30980: FLdRfVar var_1EC
  loc_D30983: LitVarStr var_21C, "CodiDifu"
  loc_D30988: PopAdLdVar
  loc_D30989: FLdRfVar var_1D8
  loc_D3098C: FLdPr Me
  loc_D3098F: MemLdPr global_68
  loc_D30992:  = Me.Fields
  loc_D30997: FLdPr var_1D8
  loc_D3099A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3099F: FLdPr var_1EC
  loc_D309A2:  = Me.Value
  loc_D309A7: FLdRfVar var_20C
  loc_D309AA: ConcatVar var_22C
  loc_D309AE: LitVarStr var_23C, "'"
  loc_D309B3: ConcatVar var_25C
  loc_D309B7: LitVarStr var_24C, " AND PeriCtct = "
  loc_D309BC: ConcatVar var_26C
  loc_D309C0: FLdRfVar var_27C
  loc_D309C3: FLdRfVar var_2B4
  loc_D309C6: LitVarStr var_28C, "PeriLiqu"
  loc_D309CB: PopAdLdVar
  loc_D309CC: FLdRfVar var_2A0
  loc_D309CF: FLdPr Me
  loc_D309D2: MemLdPr global_68
  loc_D309D5:  = Me.Fields
  loc_D309DA: FLdPr var_2A0
  loc_D309DD: from_stack_2 = Me.Item(from_stack_1)
  loc_D309E2: FLdPr var_2B4
  loc_D309E5:  = Me.Value
  loc_D309EA: FLdRfVar var_27C
  loc_D309ED: ConcatVar var_29C
  loc_D309F1: LitVarStr var_2B0, " AND BimeCtct = "
  loc_D309F6: ConcatVar var_2C4
  loc_D309FA: FLdI2 var_A6
  loc_D309FD: CVarI2 var_2D4
  loc_D30A00: ConcatVar var_2E4
  loc_D30A04: LitVarStr var_314, " AND CodiConc = '"
  loc_D30A09: ConcatVar var_2F4
  loc_D30A0D: FLdRfVar var_304
  loc_D30A10: FLdRfVar var_33C
  loc_D30A13: LitVarStr var_338, "CodiConc"
  loc_D30A18: PopAdLdVar
  loc_D30A19: FLdRfVar var_328
  loc_D30A1C: FLdPr Me
  loc_D30A1F: MemLdPr global_68
  loc_D30A22:  = Me.Fields
  loc_D30A27: FLdPr var_328
  loc_D30A2A: from_stack_2 = Me.Item(from_stack_1)
  loc_D30A2F: FLdPr var_33C
  loc_D30A32:  = Me.Value
  loc_D30A37: FLdRfVar var_304
  loc_D30A3A: ConcatVar var_324
  loc_D30A3E: LitVarStr var_36C, "'"
  loc_D30A43: ConcatVar var_34C
  loc_D30A47: LitVarStr var_390, " AND TipoCtct = 'Bimestral'"
  loc_D30A4C: ConcatVar var_35C
  loc_D30A50: LitVarStr var_3C4, " AND CodiTili = "
  loc_D30A55: ConcatVar var_37C
  loc_D30A59: FLdRfVar var_3A4
  loc_D30A5C: FLdRfVar var_394
  loc_D30A5F: LitVarStr var_3E8, "CodiTili"
  loc_D30A64: PopAdLdVar
  loc_D30A65: FLdRfVar var_380
  loc_D30A68: FLdPr Me
  loc_D30A6B: MemLdPr global_68
  loc_D30A6E:  = Me.Fields
  loc_D30A73: FLdPr var_380
  loc_D30A76: from_stack_2 = Me.Item(from_stack_1)
  loc_D30A7B: FLdPr var_394
  loc_D30A7E:  = Me.Value
  loc_D30A83: FLdRfVar var_3A4
  loc_D30A86: ConcatVar var_3B4
  loc_D30A8A: LitVarStr var_42C, " AND NumeLiqu = "
  loc_D30A8F: ConcatVar var_3D4
  loc_D30A93: FLdRfVar var_3FC
  loc_D30A96: FLdRfVar var_3EC
  loc_D30A99: LitVarStr var_450, "NumeLiqu"
  loc_D30A9E: PopAdLdVar
  loc_D30A9F: FLdRfVar var_3D8
  loc_D30AA2: FLdPr Me
  loc_D30AA5: MemLdPr global_68
  loc_D30AA8:  = Me.Fields
  loc_D30AAD: FLdPr var_3D8
  loc_D30AB0: from_stack_2 = Me.Item(from_stack_1)
  loc_D30AB5: FLdPr var_3EC
  loc_D30AB8:  = Me.Value
  loc_D30ABD: FLdRfVar var_3FC
  loc_D30AC0: ConcatVar var_40C
  loc_D30AC4: LitVarStr var_494, " ORDER BY PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D30AC9: ConcatVar var_41C
  loc_D30ACD: CStrVarVal var_130
  loc_D30AD1: Call EjecutarRsCls4(from_stack_1v)
  loc_D30AD6: FFreeStr var_12C = ""
  loc_D30ADD: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = ""
  loc_D30AF8: FFreeVar var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = "": var_40C = ""
  loc_D30B2D: FLdRfVar var_168
  loc_D30B30: FLdPr Me
  loc_D30B33: MemLdPr global_72
  loc_D30B36:  = Me.RecordCount
  loc_D30B3B: ILdRf var_168
  loc_D30B3E: LitI4 0
  loc_D30B43: EqI4
  loc_D30B44: BranchF loc_D30D79
  loc_D30B47: LitStr "SELECT * FROM detabole"
  loc_D30B4A: LitStr " USE INDEX (idxdetabole02)"
  loc_D30B4D: ConcatStr
  loc_D30B4E: FStStrNoPop var_12C
  loc_D30B51: LitStr " WHERE PeriBole = "
  loc_D30B54: ConcatStr
  loc_D30B55: CVarStr var_1B4
  loc_D30B58: FLdRfVar var_194
  loc_D30B5B: FLdRfVar var_184
  loc_D30B5E: LitVarStr var_180, "PeriLiqu"
  loc_D30B63: PopAdLdVar
  loc_D30B64: FLdRfVar var_170
  loc_D30B67: FLdPr Me
  loc_D30B6A: MemLdPr global_68
  loc_D30B6D:  = Me.Fields
  loc_D30B72: FLdPr var_170
  loc_D30B75: from_stack_2 = Me.Item(from_stack_1)
  loc_D30B7A: FLdPr var_184
  loc_D30B7D:  = Me.Value
  loc_D30B82: FLdRfVar var_194
  loc_D30B85: ConcatVar var_1C4
  loc_D30B89: LitVarStr var_1A4, " AND CodiOfic = 4"
  loc_D30B8E: ConcatVar var_1D4
  loc_D30B92: LitVarStr var_1E8, " AND CuenCtct = '"
  loc_D30B97: ConcatVar var_1FC
  loc_D30B9B: FLdRfVar var_20C
  loc_D30B9E: FLdRfVar var_1EC
  loc_D30BA1: LitVarStr var_21C, "CodiDifu"
  loc_D30BA6: PopAdLdVar
  loc_D30BA7: FLdRfVar var_1D8
  loc_D30BAA: FLdPr Me
  loc_D30BAD: MemLdPr global_68
  loc_D30BB0:  = Me.Fields
  loc_D30BB5: FLdPr var_1D8
  loc_D30BB8: from_stack_2 = Me.Item(from_stack_1)
  loc_D30BBD: FLdPr var_1EC
  loc_D30BC0:  = Me.Value
  loc_D30BC5: FLdRfVar var_20C
  loc_D30BC8: ConcatVar var_22C
  loc_D30BCC: LitVarStr var_23C, "'"
  loc_D30BD1: ConcatVar var_25C
  loc_D30BD5: LitVarStr var_24C, " AND PeriCtct = "
  loc_D30BDA: ConcatVar var_26C
  loc_D30BDE: FLdRfVar var_27C
  loc_D30BE1: FLdRfVar var_2B4
  loc_D30BE4: LitVarStr var_28C, "PeriLiqu"
  loc_D30BE9: PopAdLdVar
  loc_D30BEA: FLdRfVar var_2A0
  loc_D30BED: FLdPr Me
  loc_D30BF0: MemLdPr global_68
  loc_D30BF3:  = Me.Fields
  loc_D30BF8: FLdPr var_2A0
  loc_D30BFB: from_stack_2 = Me.Item(from_stack_1)
  loc_D30C00: FLdPr var_2B4
  loc_D30C03:  = Me.Value
  loc_D30C08: FLdRfVar var_27C
  loc_D30C0B: ConcatVar var_29C
  loc_D30C0F: LitVarStr var_2B0, " AND BimeCtct = 1"
  loc_D30C14: ConcatVar var_2C4
  loc_D30C18: LitVarStr var_2D4, " AND CodiConc = '"
  loc_D30C1D: ConcatVar var_2E4
  loc_D30C21: FLdRfVar var_2F4
  loc_D30C24: FLdRfVar var_33C
  loc_D30C27: LitVarStr var_314, "CodiConc"
  loc_D30C2C: PopAdLdVar
  loc_D30C2D: FLdRfVar var_328
  loc_D30C30: FLdPr Me
  loc_D30C33: MemLdPr global_68
  loc_D30C36:  = Me.Fields
  loc_D30C3B: FLdPr var_328
  loc_D30C3E: from_stack_2 = Me.Item(from_stack_1)
  loc_D30C43: FLdPr var_33C
  loc_D30C46:  = Me.Value
  loc_D30C4B: FLdRfVar var_2F4
  loc_D30C4E: ConcatVar var_304
  loc_D30C52: LitVarStr var_338, "'"
  loc_D30C57: ConcatVar var_324
  loc_D30C5B: LitVarStr var_36C, " AND TipoCtct = 'Bimestral'"
  loc_D30C60: ConcatVar var_34C
  loc_D30C64: LitVarStr var_390, " AND CodiTili = "
  loc_D30C69: ConcatVar var_35C
  loc_D30C6D: FLdRfVar var_37C
  loc_D30C70: FLdRfVar var_394
  loc_D30C73: LitVarStr var_3C4, "CodiTili"
  loc_D30C78: PopAdLdVar
  loc_D30C79: FLdRfVar var_380
  loc_D30C7C: FLdPr Me
  loc_D30C7F: MemLdPr global_68
  loc_D30C82:  = Me.Fields
  loc_D30C87: FLdPr var_380
  loc_D30C8A: from_stack_2 = Me.Item(from_stack_1)
  loc_D30C8F: FLdPr var_394
  loc_D30C92:  = Me.Value
  loc_D30C97: FLdRfVar var_37C
  loc_D30C9A: ConcatVar var_3A4
  loc_D30C9E: LitVarStr var_3E8, " AND NumeLiqu = "
  loc_D30CA3: ConcatVar var_3B4
  loc_D30CA7: FLdRfVar var_3D4
  loc_D30CAA: FLdRfVar var_3EC
  loc_D30CAD: LitVarStr var_42C, "NumeLiqu"
  loc_D30CB2: PopAdLdVar
  loc_D30CB3: FLdRfVar var_3D8
  loc_D30CB6: FLdPr Me
  loc_D30CB9: MemLdPr global_68
  loc_D30CBC:  = Me.Fields
  loc_D30CC1: FLdPr var_3D8
  loc_D30CC4: from_stack_2 = Me.Item(from_stack_1)
  loc_D30CC9: FLdPr var_3EC
  loc_D30CCC:  = Me.Value
  loc_D30CD1: FLdRfVar var_3D4
  loc_D30CD4: ConcatVar var_3FC
  loc_D30CD8: LitVarStr var_450, " ORDER BY PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D30CDD: ConcatVar var_40C
  loc_D30CE1: CStrVarVal var_130
  loc_D30CE5: Call EjecutarRsCls4(from_stack_1v)
  loc_D30CEA: FFreeStr var_12C = ""
  loc_D30CF1: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = ""
  loc_D30D0C: FFreeVar var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = ""
  loc_D30D3F: FLdRfVar var_168
  loc_D30D42: FLdPr Me
  loc_D30D45: MemLdPr global_72
  loc_D30D48:  = Me.RecordCount
  loc_D30D4D: ILdRf var_168
  loc_D30D50: LitI4 0
  loc_D30D55: GtI4
  loc_D30D56: BranchF loc_D30D76
  loc_D30D59: FLdI2 var_A6
  loc_D30D5C: FStI2 var_E2
  loc_D30D5F: FLdRfVar var_168
  loc_D30D62: FLdI2 iPeriodo
  loc_D30D65: FLdRfVar var_90
  loc_D30D68: NewIfNullPr clsctacte
  loc_D30D6B: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_D30D70: ILdRf var_168
  loc_D30D73: FStR4 var_98
  loc_D30D76: Branch loc_D30DF0
  loc_D30D79: FLdRfVar var_194
  loc_D30D7C: FLdRfVar var_184
  loc_D30D7F: LitVarStr var_180, "BimeCtct"
  loc_D30D84: PopAdLdVar
  loc_D30D85: FLdRfVar var_170
  loc_D30D88: FLdPr Me
  loc_D30D8B: MemLdPr global_72
  loc_D30D8E:  = Me.Fields
  loc_D30D93: FLdPr var_170
  loc_D30D96: from_stack_2 = Me.Item(from_stack_1)
  loc_D30D9B: FLdPr var_184
  loc_D30D9E:  = Me.Value
  loc_D30DA3: FLdRfVar var_194
  loc_D30DA6: CI2Var
  loc_D30DA7: FStI2 var_E2
  loc_D30DAA: FFreeAd var_170 = ""
  loc_D30DB1: FFree1Var var_194 = ""
  loc_D30DB4: FLdRfVar var_194
  loc_D30DB7: FLdRfVar var_184
  loc_D30DBA: LitVarStr var_180, "NumeCtct"
  loc_D30DBF: PopAdLdVar
  loc_D30DC0: FLdRfVar var_170
  loc_D30DC3: FLdPr Me
  loc_D30DC6: MemLdPr global_72
  loc_D30DC9:  = Me.Fields
  loc_D30DCE: FLdPr var_170
  loc_D30DD1: from_stack_2 = Me.Item(from_stack_1)
  loc_D30DD6: FLdPr var_184
  loc_D30DD9:  = Me.Value
  loc_D30DDE: FLdRfVar var_194
  loc_D30DE1: CI4Var
  loc_D30DE3: FStR4 var_98
  loc_D30DE6: FFreeAd var_170 = ""
  loc_D30DED: FFree1Var var_194 = ""
  loc_D30DF0: FLdRfVar var_168
  loc_D30DF3: FLdPr Me
  loc_D30DF6: MemLdPr global_72
  loc_D30DF9:  = Me.RecordCount
  loc_D30DFE: ILdRf var_168
  loc_D30E01: LitI4 0
  loc_D30E06: GtI4
  loc_D30E07: BranchF loc_D31519
  loc_D30E0A: FLdPr Me
  loc_D30E0D: MemLdPr global_72
  loc_D30E10: Me.MoveFirst
  loc_D30E15: FLdRfVar var_16A
  loc_D30E18: FLdPr Me
  loc_D30E1B: MemLdPr global_72
  loc_D30E1E:  = Me.EOF
  loc_D30E23: FLdI2 var_16A
  loc_D30E26: NotI4
  loc_D30E27: BranchF loc_D31519
  loc_D30E2A: FLdRfVar var_194
  loc_D30E2D: FLdRfVar var_184
  loc_D30E30: LitVarStr var_180, "CodiConc"
  loc_D30E35: PopAdLdVar
  loc_D30E36: FLdRfVar var_170
  loc_D30E39: FLdPr Me
  loc_D30E3C: MemLdPr global_68
  loc_D30E3F:  = Me.Fields
  loc_D30E44: FLdPr var_170
  loc_D30E47: from_stack_2 = Me.Item(from_stack_1)
  loc_D30E4C: FLdPr var_184
  loc_D30E4F:  = Me.Value
  loc_D30E54: FLdRfVar var_194
  loc_D30E57: LitVarStr var_1A4, "13020601"
  loc_D30E5C: HardType
  loc_D30E5D: EqVarBool
  loc_D30E5F: FFreeAd var_170 = ""
  loc_D30E66: FFree1Var var_194 = ""
  loc_D30E69: BranchF loc_D3112A
  loc_D30E6C: LitStr "SELECT SUM(ImpoLade) ImpoLade, SUM(DecaLade) DecaLade, SUM(ExceLade) ExceLade, SUM(TotaLade) TotaLade FROM Licedeta "
  loc_D30E6F: LitStr " USE INDEX (idxlicodeta01)"
  loc_D30E72: ConcatStr
  loc_D30E73: FStStrNoPop var_12C
  loc_D30E76: LitStr " WHERE PeriLiqu = "
  loc_D30E79: ConcatStr
  loc_D30E7A: CVarStr var_1B4
  loc_D30E7D: FLdRfVar var_194
  loc_D30E80: FLdRfVar var_184
  loc_D30E83: LitVarStr var_180, "PeriLiqu"
  loc_D30E88: PopAdLdVar
  loc_D30E89: FLdRfVar var_170
  loc_D30E8C: FLdPr Me
  loc_D30E8F: MemLdPr global_68
  loc_D30E92:  = Me.Fields
  loc_D30E97: FLdPr var_170
  loc_D30E9A: from_stack_2 = Me.Item(from_stack_1)
  loc_D30E9F: FLdPr var_184
  loc_D30EA2:  = Me.Value
  loc_D30EA7: FLdRfVar var_194
  loc_D30EAA: ConcatVar var_1C4
  loc_D30EAE: LitVarStr var_1A4, " AND BimeLiqu = "
  loc_D30EB3: ConcatVar var_1D4
  loc_D30EB7: FLdI2 var_A6
  loc_D30EBA: CVarI2 var_1E8
  loc_D30EBD: ConcatVar var_1FC
  loc_D30EC1: LitVarStr var_21C, " AND CodiTili = "
  loc_D30EC6: ConcatVar var_20C
  loc_D30ECA: FLdRfVar var_22C
  loc_D30ECD: FLdRfVar var_1EC
  loc_D30ED0: LitVarStr var_23C, "CodiTili"
  loc_D30ED5: PopAdLdVar
  loc_D30ED6: FLdRfVar var_1D8
  loc_D30ED9: FLdPr Me
  loc_D30EDC: MemLdPr global_68
  loc_D30EDF:  = Me.Fields
  loc_D30EE4: FLdPr var_1D8
  loc_D30EE7: from_stack_2 = Me.Item(from_stack_1)
  loc_D30EEC: FLdPr var_1EC
  loc_D30EEF:  = Me.Value
  loc_D30EF4: FLdRfVar var_22C
  loc_D30EF7: ConcatVar var_25C
  loc_D30EFB: LitVarStr var_24C, " AND NumeLiqu = "
  loc_D30F00: ConcatVar var_26C
  loc_D30F04: FLdRfVar var_27C
  loc_D30F07: FLdRfVar var_2B4
  loc_D30F0A: LitVarStr var_28C, "NumeLiqu"
  loc_D30F0F: PopAdLdVar
  loc_D30F10: FLdRfVar var_2A0
  loc_D30F13: FLdPr Me
  loc_D30F16: MemLdPr global_68
  loc_D30F19:  = Me.Fields
  loc_D30F1E: FLdPr var_2A0
  loc_D30F21: from_stack_2 = Me.Item(from_stack_1)
  loc_D30F26: FLdPr var_2B4
  loc_D30F29:  = Me.Value
  loc_D30F2E: FLdRfVar var_27C
  loc_D30F31: ConcatVar var_29C
  loc_D30F35: LitVarStr var_2B0, " AND CodiDifu = "
  loc_D30F3A: ConcatVar var_2C4
  loc_D30F3E: FLdRfVar var_2E4
  loc_D30F41: FLdRfVar var_33C
  loc_D30F44: LitVarStr var_2D4, "CodiDifu"
  loc_D30F49: PopAdLdVar
  loc_D30F4A: FLdRfVar var_328
  loc_D30F4D: FLdPr Me
  loc_D30F50: MemLdPr global_68
  loc_D30F53:  = Me.Fields
  loc_D30F58: FLdPr var_328
  loc_D30F5B: from_stack_2 = Me.Item(from_stack_1)
  loc_D30F60: FLdPr var_33C
  loc_D30F63:  = Me.Value
  loc_D30F68: FLdRfVar var_2E4
  loc_D30F6B: ConcatVar var_2F4
  loc_D30F6F: LitVarStr var_314, " AND CodiConc = '"
  loc_D30F74: ConcatVar var_304
  loc_D30F78: FLdRfVar var_324
  loc_D30F7B: FLdRfVar var_394
  loc_D30F7E: LitVarStr var_338, "CodiConc"
  loc_D30F83: PopAdLdVar
  loc_D30F84: FLdRfVar var_380
  loc_D30F87: FLdPr Me
  loc_D30F8A: MemLdPr global_68
  loc_D30F8D:  = Me.Fields
  loc_D30F92: FLdPr var_380
  loc_D30F95: from_stack_2 = Me.Item(from_stack_1)
  loc_D30F9A: FLdPr var_394
  loc_D30F9D:  = Me.Value
  loc_D30FA2: FLdRfVar var_324
  loc_D30FA5: ConcatVar var_34C
  loc_D30FA9: LitVarStr var_36C, "'"
  loc_D30FAE: ConcatVar var_35C
  loc_D30FB2: LitVarStr var_390, " AND TipoVenc = 2"
  loc_D30FB7: ConcatVar var_37C
  loc_D30FBB: CStrVarVal var_130
  loc_D30FBF: Call EjecutarRsCls5(from_stack_1v)
  loc_D30FC4: FFreeStr var_12C = ""
  loc_D30FCB: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = ""
  loc_D30FE2: FFreeVar var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = ""
  loc_D3100B: FLdRfVar var_168
  loc_D3100E: FLdPr Me
  loc_D31011: MemLdPr global_76
  loc_D31014:  = Me.RecordCount
  loc_D31019: ILdRf var_168
  loc_D3101C: LitI4 0
  loc_D31021: GtI4
  loc_D31022: BranchF loc_D31127
  loc_D31025: FLdI2 var_A6
  loc_D31028: LitI2_Byte 2
  loc_D3102A: LeI2
  loc_D3102B: BranchF loc_D3106D
  loc_D3102E: FLdRfVar var_194
  loc_D31031: FLdRfVar var_184
  loc_D31034: LitVarStr var_180, "CapiDebo"
  loc_D31039: PopAdLdVar
  loc_D3103A: FLdRfVar var_170
  loc_D3103D: FLdPr Me
  loc_D31040: MemLdPr global_72
  loc_D31043:  = Me.Fields
  loc_D31048: FLdPr var_170
  loc_D3104B: from_stack_2 = Me.Item(from_stack_1)
  loc_D31050: FLdPr var_184
  loc_D31053:  = Me.Value
  loc_D31058: FLdRfVar var_194
  loc_D3105B: FnCDblVar
  loc_D3105D: FStFPR8 var_C8
  loc_D31060: FFreeAd var_170 = ""
  loc_D31067: FFree1Var var_194 = ""
  loc_D3106A: Branch loc_D310A9
  loc_D3106D: FLdRfVar var_194
  loc_D31070: FLdRfVar var_184
  loc_D31073: LitVarStr var_180, "ImpoLade"
  loc_D31078: PopAdLdVar
  loc_D31079: FLdRfVar var_170
  loc_D3107C: FLdPr Me
  loc_D3107F: MemLdPr global_76
  loc_D31082:  = Me.Fields
  loc_D31087: FLdPr var_170
  loc_D3108A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3108F: FLdPr var_184
  loc_D31092:  = Me.Value
  loc_D31097: FLdRfVar var_194
  loc_D3109A: FnCDblVar
  loc_D3109C: FStFPR8 var_C8
  loc_D3109F: FFreeAd var_170 = ""
  loc_D310A6: FFree1Var var_194 = ""
  loc_D310A9: FLdRfVar var_194
  loc_D310AC: FLdRfVar var_184
  loc_D310AF: LitVarStr var_180, "DecaLade"
  loc_D310B4: PopAdLdVar
  loc_D310B5: FLdRfVar var_170
  loc_D310B8: FLdPr Me
  loc_D310BB: MemLdPr global_76
  loc_D310BE:  = Me.Fields
  loc_D310C3: FLdPr var_170
  loc_D310C6: from_stack_2 = Me.Item(from_stack_1)
  loc_D310CB: FLdPr var_184
  loc_D310CE:  = Me.Value
  loc_D310D3: FLdRfVar var_194
  loc_D310D6: FnCDblVar
  loc_D310D8: FStFPR8 var_D0
  loc_D310DB: FFreeAd var_170 = ""
  loc_D310E2: FFree1Var var_194 = ""
  loc_D310E5: FLdRfVar var_194
  loc_D310E8: FLdRfVar var_184
  loc_D310EB: LitVarStr var_180, "ExceLade"
  loc_D310F0: PopAdLdVar
  loc_D310F1: FLdRfVar var_170
  loc_D310F4: FLdPr Me
  loc_D310F7: MemLdPr global_76
  loc_D310FA:  = Me.Fields
  loc_D310FF: FLdPr var_170
  loc_D31102: from_stack_2 = Me.Item(from_stack_1)
  loc_D31107: FLdPr var_184
  loc_D3110A:  = Me.Value
  loc_D3110F: FLdRfVar var_194
  loc_D31112: FnCDblVar
  loc_D31114: FStFPR8 var_D8
  loc_D31117: FFreeAd var_170 = ""
  loc_D3111E: FFree1Var var_194 = ""
  loc_D31121: LitI2_Byte 0
  loc_D31123: CR8I2
  loc_D31124: FStFPR8 var_FC
  loc_D31127: Branch loc_D31178
  loc_D3112A: FLdRfVar var_194
  loc_D3112D: FLdRfVar var_184
  loc_D31130: LitVarStr var_180, "CapiDebo"
  loc_D31135: PopAdLdVar
  loc_D31136: FLdRfVar var_170
  loc_D31139: FLdPr Me
  loc_D3113C: MemLdPr global_72
  loc_D3113F:  = Me.Fields
  loc_D31144: FLdPr var_170
  loc_D31147: from_stack_2 = Me.Item(from_stack_1)
  loc_D3114C: FLdPr var_184
  loc_D3114F:  = Me.Value
  loc_D31154: FLdRfVar var_194
  loc_D31157: FnCDblVar
  loc_D31159: FStFPR8 var_C8
  loc_D3115C: FFreeAd var_170 = ""
  loc_D31163: FFree1Var var_194 = ""
  loc_D31166: LitI2_Byte 0
  loc_D31168: CR8I2
  loc_D31169: FStFPR8 var_D0
  loc_D3116C: LitI2_Byte 0
  loc_D3116E: CR8I2
  loc_D3116F: FStFPR8 var_D8
  loc_D31172: LitI2_Byte 0
  loc_D31174: CR8I2
  loc_D31175: FStFPR8 var_FC
  loc_D31178: FLdFPR8 var_C8
  loc_D3117B: FLdFPR8 var_D0
  loc_D3117E: SubR4
  loc_D3117F: FLdFPR8 var_D8
  loc_D31182: SubR4
  loc_D31183: FLdFPR8 var_FC
  loc_D31186: SubR4
  loc_D31187: FStFPR8 var_E0
  loc_D3118A: FLdFPR8 var_10C
  loc_D3118D: FLdFPR8 var_C8
  loc_D31190: AddR8
  loc_D31191: FStFPR8 var_10C
  loc_D31194: FLdFPR8 var_114
  loc_D31197: FLdFPR8 var_D0
  loc_D3119A: AddR8
  loc_D3119B: FStFPR8 var_114
  loc_D3119E: FLdFPR8 var_11C
  loc_D311A1: FLdFPR8 var_D8
  loc_D311A4: AddR8
  loc_D311A5: FStFPR8 var_11C
  loc_D311A8: FLdFPR8 var_124
  loc_D311AB: FLdFPR8 var_FC
  loc_D311AE: AddR8
  loc_D311AF: FStFPR8 var_124
  loc_D311B2: ILdRf var_128
  loc_D311B5: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiTili, NumeLiqu, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, CrafDebo, TotaDebo) "
  loc_D311B8: ConcatStr
  loc_D311B9: FStStrNoPop var_12C
  loc_D311BC: LitStr " VALUES ("
  loc_D311BF: ConcatStr
  loc_D311C0: FStStrNoPop var_130
  loc_D311C3: FLdI2 iPeriodo
  loc_D311C6: CStrUI1
  loc_D311C8: FStStrNoPop var_134
  loc_D311CB: ConcatStr
  loc_D311CC: FStStrNoPop var_138
  loc_D311CF: LitStr ","
  loc_D311D2: ConcatStr
  loc_D311D3: FStStrNoPop var_13C
  loc_D311D6: ILdRf var_9C
  loc_D311D9: CStrI4
  loc_D311DB: FStStrNoPop var_140
  loc_D311DE: ConcatStr
  loc_D311DF: FStStrNoPop var_144
  loc_D311E2: LitStr ","
  loc_D311E5: ConcatStr
  loc_D311E6: FStStrNoPop var_148
  loc_D311E9: FLdI2 iPeriodo
  loc_D311EC: CStrUI1
  loc_D311EE: FStStrNoPop var_14C
  loc_D311F1: ConcatStr
  loc_D311F2: FStStrNoPop var_150
  loc_D311F5: LitStr ","
  loc_D311F8: ConcatStr
  loc_D311F9: FStStrNoPop var_154
  loc_D311FC: FLdI2 var_E2
  loc_D311FF: CStrUI1
  loc_D31201: FStStrNoPop var_158
  loc_D31204: ConcatStr
  loc_D31205: FStStrNoPop var_15C
  loc_D31208: LitStr ","
  loc_D3120B: ConcatStr
  loc_D3120C: FStStrNoPop var_160
  loc_D3120F: ILdRf var_98
  loc_D31212: CStrI4
  loc_D31214: FStStrNoPop var_164
  loc_D31217: ConcatStr
  loc_D31218: FStStrNoPop var_6FC
  loc_D3121B: LitStr ",1,1,"
  loc_D3121E: ConcatStr
  loc_D3121F: CVarStr var_1B4
  loc_D31222: FLdRfVar var_194
  loc_D31225: FLdRfVar var_184
  loc_D31228: LitVarStr var_180, "CodiTili"
  loc_D3122D: PopAdLdVar
  loc_D3122E: FLdRfVar var_170
  loc_D31231: FLdPr Me
  loc_D31234: MemLdPr global_72
  loc_D31237:  = Me.Fields
  loc_D3123C: FLdPr var_170
  loc_D3123F: from_stack_2 = Me.Item(from_stack_1)
  loc_D31244: FLdPr var_184
  loc_D31247:  = Me.Value
  loc_D3124C: FLdRfVar var_194
  loc_D3124F: ConcatVar var_1C4
  loc_D31253: LitVarStr var_1A4, ","
  loc_D31258: ConcatVar var_1D4
  loc_D3125C: FLdRfVar var_1FC
  loc_D3125F: FLdRfVar var_1EC
  loc_D31262: LitVarStr var_1E8, "NumeLiqu"
  loc_D31267: PopAdLdVar
  loc_D31268: FLdRfVar var_1D8
  loc_D3126B: FLdPr Me
  loc_D3126E: MemLdPr global_72
  loc_D31271:  = Me.Fields
  loc_D31276: FLdPr var_1D8
  loc_D31279: from_stack_2 = Me.Item(from_stack_1)
  loc_D3127E: FLdPr var_1EC
  loc_D31281:  = Me.Value
  loc_D31286: FLdRfVar var_1FC
  loc_D31289: ConcatVar var_20C
  loc_D3128D: LitVarStr var_21C, ",4,'"
  loc_D31292: ConcatVar var_22C
  loc_D31296: FLdRfVar var_25C
  loc_D31299: FLdRfVar var_2B4
  loc_D3129C: LitVarStr var_23C, "CuenCtct"
  loc_D312A1: PopAdLdVar
  loc_D312A2: FLdRfVar var_2A0
  loc_D312A5: FLdPr Me
  loc_D312A8: MemLdPr global_72
  loc_D312AB:  = Me.Fields
  loc_D312B0: FLdPr var_2A0
  loc_D312B3: from_stack_2 = Me.Item(from_stack_1)
  loc_D312B8: FLdPr var_2B4
  loc_D312BB:  = Me.Value
  loc_D312C0: FLdRfVar var_25C
  loc_D312C3: ConcatVar var_26C
  loc_D312C7: LitVarStr var_24C, "','Anual',0,0,0,"
  loc_D312CC: ConcatVar var_27C
  loc_D312D0: FLdRfVar var_29C
  loc_D312D3: FLdRfVar var_33C
  loc_D312D6: LitVarStr var_28C, "CodiTimo"
  loc_D312DB: PopAdLdVar
  loc_D312DC: FLdRfVar var_328
  loc_D312DF: FLdPr Me
  loc_D312E2: MemLdPr global_72
  loc_D312E5:  = Me.Fields
  loc_D312EA: FLdPr var_328
  loc_D312ED: from_stack_2 = Me.Item(from_stack_1)
  loc_D312F2: FLdPr var_33C
  loc_D312F5:  = Me.Value
  loc_D312FA: FLdRfVar var_29C
  loc_D312FD: ConcatVar var_2C4
  loc_D31301: LitVarStr var_2B0, ","
  loc_D31306: ConcatVar var_2E4
  loc_D3130A: FLdRfVar var_2F4
  loc_D3130D: FLdRfVar var_394
  loc_D31310: LitVarStr var_2D4, "PeriInfo"
  loc_D31315: PopAdLdVar
  loc_D31316: FLdRfVar var_380
  loc_D31319: FLdPr Me
  loc_D3131C: MemLdPr global_72
  loc_D3131F:  = Me.Fields
  loc_D31324: FLdPr var_380
  loc_D31327: from_stack_2 = Me.Item(from_stack_1)
  loc_D3132C: FLdPr var_394
  loc_D3132F:  = Me.Value
  loc_D31334: FLdRfVar var_2F4
  loc_D31337: ConcatVar var_304
  loc_D3133B: LitVarStr var_314, ",'"
  loc_D31340: ConcatVar var_324
  loc_D31344: FLdRfVar var_34C
  loc_D31347: FLdRfVar var_3EC
  loc_D3134A: LitVarStr var_338, "CodiConc"
  loc_D3134F: PopAdLdVar
  loc_D31350: FLdRfVar var_3D8
  loc_D31353: FLdPr Me
  loc_D31356: MemLdPr global_72
  loc_D31359:  = Me.Fields
  loc_D3135E: FLdPr var_3D8
  loc_D31361: from_stack_2 = Me.Item(from_stack_1)
  loc_D31366: FLdPr var_3EC
  loc_D31369:  = Me.Value
  loc_D3136E: FLdRfVar var_34C
  loc_D31371: ConcatVar var_35C
  loc_D31375: LitVarStr var_36C, "',"
  loc_D3137A: ConcatVar var_37C
  loc_D3137E: LitI4 0
  loc_D31383: LitI4 -1
  loc_D31388: LitI4 1
  loc_D3138D: LitStr "."
  loc_D31390: LitStr ","
  loc_D31393: FLdFPR8 var_C8
  loc_D31396: CStrR8
  loc_D31398: FStStrNoPop var_700
  loc_D3139B: ImpAdCallI2 Replace(, , , , , )
  loc_D313A0: CVarStr var_3A4
  loc_D313A3: ConcatVar var_3B4
  loc_D313A7: LitVarStr var_390, ","
  loc_D313AC: ConcatVar var_3D4
  loc_D313B0: LitI4 0
  loc_D313B5: LitI4 -1
  loc_D313BA: LitI4 1
  loc_D313BF: LitStr "."
  loc_D313C2: LitStr ","
  loc_D313C5: FLdFPR8 var_D0
  loc_D313C8: CStrR8
  loc_D313CA: FStStrNoPop var_704
  loc_D313CD: ImpAdCallI2 Replace(, , , , , )
  loc_D313D2: CVarStr var_3FC
  loc_D313D5: ConcatVar var_40C
  loc_D313D9: LitVarStr var_3C4, ",0,0,0,"
  loc_D313DE: ConcatVar var_41C
  loc_D313E2: LitI4 0
  loc_D313E7: LitI4 -1
  loc_D313EC: LitI4 1
  loc_D313F1: LitStr "."
  loc_D313F4: LitStr ","
  loc_D313F7: FLdFPR8 var_D8
  loc_D313FA: CStrR8
  loc_D313FC: FStStrNoPop var_708
  loc_D313FF: ImpAdCallI2 Replace(, , , , , )
  loc_D31404: CVarStr var_43C
  loc_D31407: ConcatVar var_464
  loc_D3140B: LitVarStr var_3E8, ","
  loc_D31410: ConcatVar var_474
  loc_D31414: LitI4 0
  loc_D31419: LitI4 -1
  loc_D3141E: LitI4 1
  loc_D31423: LitStr "."
  loc_D31426: LitStr ","
  loc_D31429: FLdFPR8 var_FC
  loc_D3142C: CStrR8
  loc_D3142E: FStStrNoPop var_70C
  loc_D31431: ImpAdCallI2 Replace(, , , , , )
  loc_D31436: CVarStr var_484
  loc_D31439: ConcatVar var_4A4
  loc_D3143D: LitVarStr var_42C, ","
  loc_D31442: ConcatVar var_4C4
  loc_D31446: LitI4 0
  loc_D3144B: LitI4 -1
  loc_D31450: LitI4 1
  loc_D31455: LitStr "."
  loc_D31458: LitStr ","
  loc_D3145B: FLdFPR8 var_E0
  loc_D3145E: CStrR8
  loc_D31460: FStStrNoPop var_710
  loc_D31463: ImpAdCallI2 Replace(, , , , , )
  loc_D31468: CVarStr var_4E4
  loc_D3146B: ConcatVar var_514
  loc_D3146F: LitVarStr var_450, ");"
  loc_D31474: ConcatVar var_574
  loc_D31478: CStrVarTmp
  loc_D31479: FStStr var_128
  loc_D3147C: FFreeStr var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_6FC = "": var_700 = "": var_704 = "": var_708 = "": var_70C = ""
  loc_D314A9: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = ""
  loc_D314C4: FFreeVar var_4C4 = "": var_4E4 = "": var_514 = "": var_574 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = "": var_40C = "": var_41C = "": var_43C = "": var_464 = "": var_474 = "": var_484 = ""
  loc_D3150B: FLdPr Me
  loc_D3150E: MemLdPr global_72
  loc_D31511: Me.MoveNext
  loc_D31516: Branch loc_D30E15
  loc_D31519: FLdRfVar var_A6
  loc_D3151C: NextI2 var_6F8, loc_D30929
  loc_D31521: ILdRf var_128
  loc_D31524: Call EjecutarRsCls(from_stack_1v)
  loc_D31529: LitI2_Byte 0
  loc_D3152B: CR8I2
  loc_D3152C: FStFPR8 var_B0
  loc_D3152F: LitI2_Byte 0
  loc_D31531: CR8I2
  loc_D31532: FStFPR8 var_B8
  loc_D31535: Branch loc_D316B1
  loc_D31538: FLdRfVar var_4F4
  loc_D3153B: LitVarStr var_180, "Pago Anticipado"
  loc_D31540: HardType
  loc_D31541: EqVarBool
  loc_D31543: BranchF loc_D316B1
  loc_D31546: LitVarStr var_1A4, " UPDATE pagoanti SET EstaPaan = 'Liquidado' WHERE CodiOfic = 4 AND CuenCtct = '"
  loc_D3154B: FLdRfVar var_194
  loc_D3154E: FLdRfVar var_184
  loc_D31551: LitVarStr var_180, "CodiDifu"
  loc_D31556: PopAdLdVar
  loc_D31557: FLdRfVar var_170
  loc_D3155A: FLdPr Me
  loc_D3155D: MemLdPr global_68
  loc_D31560:  = Me.Fields
  loc_D31565: FLdPr var_170
  loc_D31568: from_stack_2 = Me.Item(from_stack_1)
  loc_D3156D: FLdPr var_184
  loc_D31570:  = Me.Value
  loc_D31575: FLdRfVar var_194
  loc_D31578: ConcatVar var_1B4
  loc_D3157C: LitVarStr var_1E8, "' AND PeriLiqu = "
  loc_D31581: ConcatVar var_1C4
  loc_D31585: FLdRfVar var_1D4
  loc_D31588: FLdRfVar var_1EC
  loc_D3158B: LitVarStr var_21C, "PeriLiqu"
  loc_D31590: PopAdLdVar
  loc_D31591: FLdRfVar var_1D8
  loc_D31594: FLdPr Me
  loc_D31597: MemLdPr global_68
  loc_D3159A:  = Me.Fields
  loc_D3159F: FLdPr var_1D8
  loc_D315A2: from_stack_2 = Me.Item(from_stack_1)
  loc_D315A7: FLdPr var_1EC
  loc_D315AA:  = Me.Value
  loc_D315AF: FLdRfVar var_1D4
  loc_D315B2: ConcatVar var_1FC
  loc_D315B6: LitVarStr var_23C, " AND BimeLiqu = "
  loc_D315BB: ConcatVar var_20C
  loc_D315BF: FLdRfVar var_22C
  loc_D315C2: FLdRfVar var_2B4
  loc_D315C5: LitVarStr var_24C, "BimeLiqu"
  loc_D315CA: PopAdLdVar
  loc_D315CB: FLdRfVar var_2A0
  loc_D315CE: FLdPr Me
  loc_D315D1: MemLdPr global_68
  loc_D315D4:  = Me.Fields
  loc_D315D9: FLdPr var_2A0
  loc_D315DC: from_stack_2 = Me.Item(from_stack_1)
  loc_D315E1: FLdPr var_2B4
  loc_D315E4:  = Me.Value
  loc_D315E9: FLdRfVar var_22C
  loc_D315EC: ConcatVar var_25C
  loc_D315F0: LitVarStr var_28C, " AND CodiTili = "
  loc_D315F5: ConcatVar var_26C
  loc_D315F9: FLdRfVar var_27C
  loc_D315FC: FLdRfVar var_33C
  loc_D315FF: LitVarStr var_2B0, "CodiTili"
  loc_D31604: PopAdLdVar
  loc_D31605: FLdRfVar var_328
  loc_D31608: FLdPr Me
  loc_D3160B: MemLdPr global_68
  loc_D3160E:  = Me.Fields
  loc_D31613: FLdPr var_328
  loc_D31616: from_stack_2 = Me.Item(from_stack_1)
  loc_D3161B: FLdPr var_33C
  loc_D3161E:  = Me.Value
  loc_D31623: FLdRfVar var_27C
  loc_D31626: ConcatVar var_29C
  loc_D3162A: LitVarStr var_2D4, " AND NumeLiqu = "
  loc_D3162F: ConcatVar var_2C4
  loc_D31633: FLdRfVar var_2E4
  loc_D31636: FLdRfVar var_394
  loc_D31639: LitVarStr var_314, "NumeLiqu"
  loc_D3163E: PopAdLdVar
  loc_D3163F: FLdRfVar var_380
  loc_D31642: FLdPr Me
  loc_D31645: MemLdPr global_68
  loc_D31648:  = Me.Fields
  loc_D3164D: FLdPr var_380
  loc_D31650: from_stack_2 = Me.Item(from_stack_1)
  loc_D31655: FLdPr var_394
  loc_D31658:  = Me.Value
  loc_D3165D: FLdRfVar var_2E4
  loc_D31660: ConcatVar var_2F4
  loc_D31664: LitVarStr var_338, ";"
  loc_D31669: ConcatVar var_304
  loc_D3166D: CStrVarVal var_12C
  loc_D31671: Call EjecutarRsCls(from_stack_1v)
  loc_D31676: FFree1Str var_12C
  loc_D31679: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = ""
  loc_D31690: FFreeVar var_194 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = ""
  loc_D316B1: LitVarStr var_21C, " UPDATE liquceme SET ActuLice = 'Si', PeriBole = "
  loc_D316B6: LitVarI2 var_194, 0
  loc_D316BB: FLdRfVar iPeriodo
  loc_D316BE: CVarRef
  loc_D316C3: ILdRf var_9C
  loc_D316C6: LitI4 0
  loc_D316CB: NeI4
  loc_D316CC: CVarBoolI2 var_180
  loc_D316D0: FLdRfVar var_1B4
  loc_D316D3: ImpAdCallFPR4  = IIf(, , )
  loc_D316D8: FLdRfVar var_1B4
  loc_D316DB: ConcatVar var_1C4
  loc_D316DF: LitVarStr var_23C, ", NumeBole = "
  loc_D316E4: ConcatVar var_1D4
  loc_D316E8: ILdRf var_9C
  loc_D316EB: CVarI4
  loc_D316EF: ConcatVar var_1FC
  loc_D316F3: LitVarStr var_28C, ", FeacLice = '"
  loc_D316F8: ConcatVar var_20C
  loc_D316FC: LitI4 1
  loc_D31701: LitI4 1
  loc_D31706: LitVarStr var_2D4, "yyyy-mm-dd"
  loc_D3170B: FStVarCopyObj var_22C
  loc_D3170E: FLdRfVar var_22C
  loc_D31711: FLdRfVar var_A4
  loc_D31714: CVarRef
  loc_D31719: ImpAdCallI2 Format$(, )
  loc_D3171E: CVarStr var_25C
  loc_D31721: ConcatVar var_26C
  loc_D31725: LitVarStr var_314, "', OrdeLice = "
  loc_D3172A: ConcatVar var_27C
  loc_D3172E: ILdRf lOrden
  loc_D31731: CVarI4
  loc_D31735: ConcatVar var_29C
  loc_D31739: LitVarStr var_36C, " WHERE PeriLiqu = "
  loc_D3173E: ConcatVar var_2C4
  loc_D31742: FLdRfVar var_2E4
  loc_D31745: FLdRfVar var_184
  loc_D31748: LitVarStr var_390, "PeriLiqu"
  loc_D3174D: PopAdLdVar
  loc_D3174E: FLdRfVar var_170
  loc_D31751: FLdPr Me
  loc_D31754: MemLdPr global_68
  loc_D31757:  = Me.Fields
  loc_D3175C: FLdPr var_170
  loc_D3175F: from_stack_2 = Me.Item(from_stack_1)
  loc_D31764: FLdPr var_184
  loc_D31767:  = Me.Value
  loc_D3176C: FLdRfVar var_2E4
  loc_D3176F: ConcatVar var_2F4
  loc_D31773: LitVarStr var_3C4, " AND BimeLiqu = "
  loc_D31778: ConcatVar var_304
  loc_D3177C: FLdRfVar var_324
  loc_D3177F: FLdRfVar var_1EC
  loc_D31782: LitVarStr var_3E8, "BimeLiqu"
  loc_D31787: PopAdLdVar
  loc_D31788: FLdRfVar var_1D8
  loc_D3178B: FLdPr Me
  loc_D3178E: MemLdPr global_68
  loc_D31791:  = Me.Fields
  loc_D31796: FLdPr var_1D8
  loc_D31799: from_stack_2 = Me.Item(from_stack_1)
  loc_D3179E: FLdPr var_1EC
  loc_D317A1:  = Me.Value
  loc_D317A6: FLdRfVar var_324
  loc_D317A9: ConcatVar var_34C
  loc_D317AD: LitVarStr var_42C, " AND CodiTili = "
  loc_D317B2: ConcatVar var_35C
  loc_D317B6: FLdRfVar var_37C
  loc_D317B9: FLdRfVar var_2B4
  loc_D317BC: LitVarStr var_450, "CodiTili"
  loc_D317C1: PopAdLdVar
  loc_D317C2: FLdRfVar var_2A0
  loc_D317C5: FLdPr Me
  loc_D317C8: MemLdPr global_68
  loc_D317CB:  = Me.Fields
  loc_D317D0: FLdPr var_2A0
  loc_D317D3: from_stack_2 = Me.Item(from_stack_1)
  loc_D317D8: FLdPr var_2B4
  loc_D317DB:  = Me.Value
  loc_D317E0: FLdRfVar var_37C
  loc_D317E3: ConcatVar var_3A4
  loc_D317E7: LitVarStr var_494, " AND NumeLiqu = "
  loc_D317EC: ConcatVar var_3B4
  loc_D317F0: FLdRfVar var_3D4
  loc_D317F3: FLdRfVar var_33C
  loc_D317F6: LitVarStr var_4B4, "NumeLiqu"
  loc_D317FB: PopAdLdVar
  loc_D317FC: FLdRfVar var_328
  loc_D317FF: FLdPr Me
  loc_D31802: MemLdPr global_68
  loc_D31805:  = Me.Fields
  loc_D3180A: FLdPr var_328
  loc_D3180D: from_stack_2 = Me.Item(from_stack_1)
  loc_D31812: FLdPr var_33C
  loc_D31815:  = Me.Value
  loc_D3181A: FLdRfVar var_3D4
  loc_D3181D: ConcatVar var_3FC
  loc_D31821: LitVarStr var_4D4, " AND CodiDifu = "
  loc_D31826: ConcatVar var_40C
  loc_D3182A: FLdRfVar var_41C
  loc_D3182D: FLdRfVar var_394
  loc_D31830: LitVarStr var_524, "CodiDifu"
  loc_D31835: PopAdLdVar
  loc_D31836: FLdRfVar var_380
  loc_D31839: FLdPr Me
  loc_D3183C: MemLdPr global_68
  loc_D3183F:  = Me.Fields
  loc_D31844: FLdPr var_380
  loc_D31847: from_stack_2 = Me.Item(from_stack_1)
  loc_D3184C: FLdPr var_394
  loc_D3184F:  = Me.Value
  loc_D31854: FLdRfVar var_41C
  loc_D31857: ConcatVar var_43C
  loc_D3185B: LitVarStr var_534, " AND CodiConc = '"
  loc_D31860: ConcatVar var_464
  loc_D31864: FLdRfVar var_474
  loc_D31867: FLdRfVar var_3EC
  loc_D3186A: LitVarStr var_544, "CodiConc"
  loc_D3186F: PopAdLdVar
  loc_D31870: FLdRfVar var_3D8
  loc_D31873: FLdPr Me
  loc_D31876: MemLdPr global_68
  loc_D31879:  = Me.Fields
  loc_D3187E: FLdPr var_3D8
  loc_D31881: from_stack_2 = Me.Item(from_stack_1)
  loc_D31886: FLdPr var_3EC
  loc_D31889:  = Me.Value
  loc_D3188E: FLdRfVar var_474
  loc_D31891: ConcatVar var_484
  loc_D31895: LitVarStr var_554, "' AND TipoVenc = "
  loc_D3189A: ConcatVar var_4A4
  loc_D3189E: FLdRfVar var_4C4
  loc_D318A1: FLdRfVar var_454
  loc_D318A4: LitVarStr var_564, "TipoVenc"
  loc_D318A9: PopAdLdVar
  loc_D318AA: FLdRfVar var_440
  loc_D318AD: FLdPr Me
  loc_D318B0: MemLdPr global_68
  loc_D318B3:  = Me.Fields
  loc_D318B8: FLdPr var_440
  loc_D318BB: from_stack_2 = Me.Item(from_stack_1)
  loc_D318C0: FLdPr var_454
  loc_D318C3:  = Me.Value
  loc_D318C8: FLdRfVar var_4C4
  loc_D318CB: ConcatVar var_4E4
  loc_D318CF: LitVarStr var_594, ";"
  loc_D318D4: ConcatVar var_514
  loc_D318D8: CStrVarVal var_12C
  loc_D318DC: Call EjecutarRsCls(from_stack_1v)
  loc_D318E1: FFree1Str var_12C
  loc_D318E4: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = "": var_3EC = "": var_440 = ""
  loc_D31903: FFreeVar var_4A4 = "": var_4C4 = "": var_4E4 = "": var_514 = "": var_180 = "": var_194 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_22C = "": var_20C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = "": var_40C = "": var_41C = "": var_43C = "": var_464 = "": var_474 = ""
  loc_D3194A: FLdPr Me
  loc_D3194D: MemLdPr global_68
  loc_D31950: Me.MoveNext
  loc_D31955: Branch loc_D2E384
  loc_D31958: FLdRfVar var_194
  loc_D3195B: FLdRfVar var_184
  loc_D3195E: LitVarStr var_180, "TipoVenc"
  loc_D31963: PopAdLdVar
  loc_D31964: FLdRfVar var_170
  loc_D31967: FLdPr Me
  loc_D3196A: MemLdPr global_64
  loc_D3196D:  = Me.Fields
  loc_D31972: FLdPr var_170
  loc_D31975: from_stack_2 = Me.Item(from_stack_1)
  loc_D3197A: FLdPr var_184
  loc_D3197D:  = Me.Value
  loc_D31982: FLdRfVar var_194
  loc_D31985: FnCIntVar
  loc_D31987: LitI2_Byte 2
  loc_D31989: EqI2
  loc_D3198A: FFreeAd var_170 = ""
  loc_D31991: FFree1Var var_194 = ""
  loc_D31994: BranchF loc_D31CE4
  loc_D31997: FLdFPR8 var_10C
  loc_D3199A: FLdFPR8 var_114
  loc_D3199D: SubR4
  loc_D3199E: FLdFPR8 var_11C
  loc_D319A1: SubR4
  loc_D319A2: FLdFPR8 var_124
  loc_D319A5: SubR4
  loc_D319A6: FStFPR8 var_C0
  loc_D319A9: FLdFPR8 var_C0
  loc_D319AC: LitI2_Byte 0
  loc_D319AE: CR8I2
  loc_D319AF: GtR4
  loc_D319B0: BranchF loc_D31CE4
  loc_D319B3: FLdRfVar var_2B4
  loc_D319B6: LitVarStr var_2B0, "FeveLice"
  loc_D319BB: PopAdLdVar
  loc_D319BC: FLdRfVar var_2A0
  loc_D319BF: FLdPr Me
  loc_D319C2: MemLdPr global_64
  loc_D319C5:  = Me.Fields
  loc_D319CA: FLdPr var_2A0
  loc_D319CD: from_stack_2 = Me.Item(from_stack_1)
  loc_D319D2: LitStr " INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiTili, NumeLiqu, CodiFapa, CuotDefa, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, CrafBole, TotaBole, CodiUsua) "
  loc_D319D5: LitStr " VALUES ("
  loc_D319D8: ConcatStr
  loc_D319D9: FStStrNoPop var_12C
  loc_D319DC: FLdI2 iPeriodo
  loc_D319DF: CStrUI1
  loc_D319E1: FStStrNoPop var_130
  loc_D319E4: ConcatStr
  loc_D319E5: FStStrNoPop var_134
  loc_D319E8: LitStr ","
  loc_D319EB: ConcatStr
  loc_D319EC: FStStrNoPop var_138
  loc_D319EF: ILdRf var_9C
  loc_D319F2: CStrI4
  loc_D319F4: FStStrNoPop var_13C
  loc_D319F7: ConcatStr
  loc_D319F8: FStStrNoPop var_140
  loc_D319FB: LitStr ",4,'"
  loc_D319FE: ConcatStr
  loc_D319FF: CVarStr var_1B4
  loc_D31A02: FLdRfVar var_194
  loc_D31A05: FLdRfVar var_184
  loc_D31A08: LitVarStr var_180, "CodiDifu"
  loc_D31A0D: PopAdLdVar
  loc_D31A0E: FLdRfVar var_170
  loc_D31A11: FLdPr Me
  loc_D31A14: MemLdPr global_64
  loc_D31A17:  = Me.Fields
  loc_D31A1C: FLdPr var_170
  loc_D31A1F: from_stack_2 = Me.Item(from_stack_1)
  loc_D31A24: FLdPr var_184
  loc_D31A27:  = Me.Value
  loc_D31A2C: FLdRfVar var_194
  loc_D31A2F: ConcatVar var_1C4
  loc_D31A33: LitVarStr var_1A4, "','"
  loc_D31A38: ConcatVar var_1D4
  loc_D31A3C: FLdRfVar var_1FC
  loc_D31A3F: FLdRfVar var_1EC
  loc_D31A42: LitVarStr var_1E8, "CucuPers"
  loc_D31A47: PopAdLdVar
  loc_D31A48: FLdRfVar var_1D8
  loc_D31A4B: FLdPr Me
  loc_D31A4E: MemLdPr global_64
  loc_D31A51:  = Me.Fields
  loc_D31A56: FLdPr var_1D8
  loc_D31A59: from_stack_2 = Me.Item(from_stack_1)
  loc_D31A5E: FLdPr var_1EC
  loc_D31A61:  = Me.Value
  loc_D31A66: FLdRfVar var_1FC
  loc_D31A69: ConcatVar var_20C
  loc_D31A6D: LitVarStr var_21C, "','"
  loc_D31A72: ConcatVar var_22C
  loc_D31A76: LitI4 1
  loc_D31A7B: LitI4 1
  loc_D31A80: LitVarStr var_24C, "yyyy-mm-dd"
  loc_D31A85: FStVarCopyObj var_25C
  loc_D31A88: FLdRfVar var_25C
  loc_D31A8B: FLdRfVar var_A4
  loc_D31A8E: CVarRef
  loc_D31A93: ImpAdCallI2 Format$(, )
  loc_D31A98: CVarStr var_26C
  loc_D31A9B: ConcatVar var_27C
  loc_D31A9F: LitVarStr var_28C, "','"
  loc_D31AA4: ConcatVar var_29C
  loc_D31AA8: LitI4 1
  loc_D31AAD: LitI4 1
  loc_D31AB2: LitVarStr var_2D4, "yyyy-mm-dd"
  loc_D31AB7: FStVarCopyObj var_2E4
  loc_D31ABA: FLdRfVar var_2E4
  loc_D31ABD: FLdZeroAd var_2B4
  loc_D31AC0: CVarAd
  loc_D31AC4: ImpAdCallI2 Format$(, )
  loc_D31AC9: CVarStr var_2F4
  loc_D31ACC: ConcatVar var_304
  loc_D31AD0: LitVarStr var_314, "',0,'Anual','Emitido',"
  loc_D31AD5: ConcatVar var_324
  loc_D31AD9: FLdRfVar var_34C
  loc_D31ADC: FLdRfVar var_33C
  loc_D31ADF: LitVarStr var_338, "CodiTili"
  loc_D31AE4: PopAdLdVar
  loc_D31AE5: FLdRfVar var_328
  loc_D31AE8: FLdPr Me
  loc_D31AEB: MemLdPr global_64
  loc_D31AEE:  = Me.Fields
  loc_D31AF3: FLdPr var_328
  loc_D31AF6: from_stack_2 = Me.Item(from_stack_1)
  loc_D31AFB: FLdPr var_33C
  loc_D31AFE:  = Me.Value
  loc_D31B03: FLdRfVar var_34C
  loc_D31B06: ConcatVar var_35C
  loc_D31B0A: LitVarStr var_36C, ","
  loc_D31B0F: ConcatVar var_37C
  loc_D31B13: FLdRfVar var_3A4
  loc_D31B16: FLdRfVar var_394
  loc_D31B19: LitVarStr var_390, "NumeLiqu"
  loc_D31B1E: PopAdLdVar
  loc_D31B1F: FLdRfVar var_380
  loc_D31B22: FLdPr Me
  loc_D31B25: MemLdPr global_64
  loc_D31B28:  = Me.Fields
  loc_D31B2D: FLdPr var_380
  loc_D31B30: from_stack_2 = Me.Item(from_stack_1)
  loc_D31B35: FLdPr var_394
  loc_D31B38:  = Me.Value
  loc_D31B3D: FLdRfVar var_3A4
  loc_D31B40: ConcatVar var_3B4
  loc_D31B44: LitVarStr var_3C4, ",0,0,"
  loc_D31B49: ConcatVar var_3D4
  loc_D31B4D: LitI4 0
  loc_D31B52: LitI4 -1
  loc_D31B57: LitI4 1
  loc_D31B5C: LitStr "."
  loc_D31B5F: LitStr ","
  loc_D31B62: FLdFPR8 var_10C
  loc_D31B65: CStrR8
  loc_D31B67: FStStrNoPop var_144
  loc_D31B6A: ImpAdCallI2 Replace(, , , , , )
  loc_D31B6F: CVarStr var_3FC
  loc_D31B72: ConcatVar var_40C
  loc_D31B76: LitVarStr var_3E8, ",0,"
  loc_D31B7B: ConcatVar var_41C
  loc_D31B7F: LitI4 0
  loc_D31B84: LitI4 -1
  loc_D31B89: LitI4 1
  loc_D31B8E: LitStr "."
  loc_D31B91: LitStr ","
  loc_D31B94: FLdFPR8 var_114
  loc_D31B97: CStrR8
  loc_D31B99: FStStrNoPop var_148
  loc_D31B9C: ImpAdCallI2 Replace(, , , , , )
  loc_D31BA1: CVarStr var_43C
  loc_D31BA4: ConcatVar var_464
  loc_D31BA8: LitVarStr var_42C, ",0,0,"
  loc_D31BAD: ConcatVar var_474
  loc_D31BB1: LitI4 0
  loc_D31BB6: LitI4 -1
  loc_D31BBB: LitI4 1
  loc_D31BC0: LitStr "."
  loc_D31BC3: LitStr ","
  loc_D31BC6: FLdFPR8 var_11C
  loc_D31BC9: CStrR8
  loc_D31BCB: FStStrNoPop var_14C
  loc_D31BCE: ImpAdCallI2 Replace(, , , , , )
  loc_D31BD3: CVarStr var_484
  loc_D31BD6: ConcatVar var_4A4
  loc_D31BDA: LitVarStr var_450, ","
  loc_D31BDF: ConcatVar var_4C4
  loc_D31BE3: LitI4 0
  loc_D31BE8: LitI4 -1
  loc_D31BED: LitI4 1
  loc_D31BF2: LitStr "."
  loc_D31BF5: LitStr ","
  loc_D31BF8: FLdFPR8 var_124
  loc_D31BFB: CStrR8
  loc_D31BFD: FStStrNoPop var_150
  loc_D31C00: ImpAdCallI2 Replace(, , , , , )
  loc_D31C05: CVarStr var_4E4
  loc_D31C08: ConcatVar var_514
  loc_D31C0C: LitVarStr var_494, ","
  loc_D31C11: ConcatVar var_574
  loc_D31C15: LitI4 0
  loc_D31C1A: LitI4 -1
  loc_D31C1F: LitI4 1
  loc_D31C24: LitStr "."
  loc_D31C27: LitStr ","
  loc_D31C2A: FLdFPR8 var_C0
  loc_D31C2D: CStrR8
  loc_D31C2F: FStStrNoPop var_154
  loc_D31C32: ImpAdCallI2 Replace(, , , , , )
  loc_D31C37: CVarStr var_584
  loc_D31C3A: ConcatVar var_5A4
  loc_D31C3E: LitVarStr var_4B4, ",'"
  loc_D31C43: ConcatVar var_5C4
  loc_D31C47: ImpAdLdI4 MemVar_D9302C
  loc_D31C4A: CVarStr var_4D4
  loc_D31C4D: ConcatVar var_5D4
  loc_D31C51: LitVarStr var_524, "');"
  loc_D31C56: ConcatVar var_5F4
  loc_D31C5A: CStrVarVal var_158
  loc_D31C5E: Call EjecutarRsCls(from_stack_1v)
  loc_D31C63: FFreeStr var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_D31C7E: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_328 = "": var_33C = "": var_380 = ""
  loc_D31C93: FFreeVar var_4C4 = "": var_4E4 = "": var_514 = "": var_574 = "": var_584 = "": var_5A4 = "": var_5C4 = "": var_5D4 = "": var_5F4 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_25C = "": var_22C = "": var_26C = "": var_27C = "": var_2C4 = "": var_2E4 = "": var_29C = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = "": var_40C = "": var_41C = "": var_43C = "": var_464 = "": var_474 = "": var_484 = ""
  loc_D31CE4: FLdPr Me
  loc_D31CE7: MemLdPr global_64
  loc_D31CEA: Me.MoveNext
  loc_D31CEF: Branch loc_D2DD43
  loc_D31CF2: LitStr "COMMIT;"
  loc_D31CF5: Call EjecutarRsCls(from_stack_1v)
  loc_D31CFA: ExitProcCbHresult
  loc_D31D00: LitStr "rollback"
  loc_D31D03: Call EjecutarRsCls(from_stack_1v)
  loc_D31D08: LitVarStr var_1A4, " "
  loc_D31D0D: FLdRfVar var_194
  loc_D31D10: FLdRfVar var_184
  loc_D31D13: LitVarStr var_180, "CodiDifu"
  loc_D31D18: PopAdLdVar
  loc_D31D19: FLdRfVar var_170
  loc_D31D1C: FLdPr Me
  loc_D31D1F: MemLdPr global_64
  loc_D31D22:  = Me.Fields
  loc_D31D27: FLdPr var_170
  loc_D31D2A: from_stack_2 = Me.Item(from_stack_1)
  loc_D31D2F: FLdPr var_184
  loc_D31D32:  = Me.Value
  loc_D31D37: FLdRfVar var_194
  loc_D31D3A: ConcatVar var_1B4
  loc_D31D3E: CStrVarTmp
  loc_D31D3F: FStStr var_88
  loc_D31D42: FFreeAd var_170 = ""
  loc_D31D49: FFreeVar var_194 = ""
  loc_D31D50: ExitProcCbHresult
End Function

Public Function BuscaDeudaDeBimestreParaLaEmisionMasiva(sCuenCtct, iPeriCtct, iBimeCtct) 'AA66DC
  'Data Table: 489C84
  loc_AA6638: ILdRf sCuenCtct
  loc_AA663B: FStStrCopy var_8C
  loc_AA663E: LitI2_Byte 0
  loc_AA6640: FStI2 var_86
  loc_AA6643: LitStr " SELECT * FROM  ctacte USE INDEX (idxctacte09)"
  loc_AA6646: LitStr " WHERE ctacte.CodiOfic = 4"
  loc_AA6649: ConcatStr
  loc_AA664A: FStStrNoPop var_90
  loc_AA664D: LitStr " AND ctacte.CuenCtct = '"
  loc_AA6650: ConcatStr
  loc_AA6651: FStStrNoPop BuscaDeudaDeBimestreParaLaEmisionMasiva
  loc_AA6654: ILdRf var_8C
  loc_AA6657: ConcatStr
  loc_AA6658: FStStrNoPop var_98
  loc_AA665B: LitStr "'"
  loc_AA665E: ConcatStr
  loc_AA665F: FStStrNoPop var_9C
  loc_AA6662: LitStr " AND ctacte.PeriCtct = "
  loc_AA6665: ConcatStr
  loc_AA6666: FStStrNoPop var_A0
  loc_AA6669: FLdI2 iPeriCtct
  loc_AA666C: CStrUI1
  loc_AA666E: FStStrNoPop var_A4
  loc_AA6671: ConcatStr
  loc_AA6672: FStStrNoPop var_A8
  loc_AA6675: LitStr " AND ctacte.BimeCtct = "
  loc_AA6678: ConcatStr
  loc_AA6679: FStStrNoPop var_AC
  loc_AA667C: FLdI2 iBimeCtct
  loc_AA667F: CStrUI1
  loc_AA6681: FStStrNoPop var_B0
  loc_AA6684: ConcatStr
  loc_AA6685: FStStrNoPop var_B4
  loc_AA6688: LitStr " AND ctacte.CodiConc = '13020301'"
  loc_AA668B: ConcatStr
  loc_AA668C: FStStrNoPop var_B8
  loc_AA668F: Call EjecutarRsCls2(from_stack_1v)
  loc_AA6694: FFreeStr var_90 = "": BuscaDeudaDeBimestreParaLaEmisionMasiva = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_AA66AD: FLdRfVar var_BC
  loc_AA66B0: FLdPr Me
  loc_AA66B3: MemLdPr global_64
  loc_AA66B6:  = Me.RecordCount
  loc_AA66BB: ILdRf var_BC
  loc_AA66BE: LitI4 0
  loc_AA66C3: GtI4
  loc_AA66C4: BranchF loc_AA66CF
  loc_AA66C7: LitI2_Byte 0
  loc_AA66C9: FStI2 var_86
  loc_AA66CC: Branch loc_AA66D4
  loc_AA66CF: LitI2_Byte &HFF
  loc_AA66D1: FStI2 var_86
  loc_AA66D4: ExitProcCbHresult
End Function

Public Function LibredeDeuda(byCodiOfic, sCuenCtct, sFeveCtct) 'B236E8
  'Data Table: 489C84
  loc_B2346C: ILdRf sCuenCtct
  loc_B2346F: FStStrCopy var_90
  loc_B23472: ILdRf sFeveCtct
  loc_B23475: FStStrCopy LibredeDeuda
  loc_B23478: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_ctacte; CREATE TEMPORARY TABLE tmp_ctacte"
  loc_B2347B: LitStr " SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, DebeCtct, CredCtct FROM ctacte "
  loc_B2347E: ConcatStr
  loc_B2347F: FStStrNoPop var_98
  loc_B23482: LitStr " USE INDEX (idxctacte08)"
  loc_B23485: ConcatStr
  loc_B23486: FStStrNoPop var_9C
  loc_B23489: LitStr " WHERE CodiOfic = "
  loc_B2348C: ConcatStr
  loc_B2348D: FStStrNoPop var_A0
  loc_B23490: FLdUI1
  loc_B23494: CStrI2
  loc_B23496: FStStrNoPop var_A4
  loc_B23499: ConcatStr
  loc_B2349A: FStStrNoPop var_A8
  loc_B2349D: LitStr " AND CuenCtct = '"
  loc_B234A0: ConcatStr
  loc_B234A1: FStStrNoPop var_AC
  loc_B234A4: ILdRf var_90
  loc_B234A7: ConcatStr
  loc_B234A8: FStStrNoPop var_B0
  loc_B234AB: LitStr "'"
  loc_B234AE: ConcatStr
  loc_B234AF: FStStrNoPop var_B4
  loc_B234B2: LitStr " AND MoviCtct = 1 "
  loc_B234B5: ConcatStr
  loc_B234B6: FStStrNoPop var_B8
  loc_B234B9: LitStr " AND FeveCtct < '"
  loc_B234BC: ConcatStr
  loc_B234BD: FStStrNoPop var_EC
  loc_B234C0: LitI4 1
  loc_B234C5: LitI4 1
  loc_B234CA: LitVarStr var_D8, "yyyy-mm-dd"
  loc_B234CF: FStVarCopyObj var_E8
  loc_B234D2: FLdRfVar var_E8
  loc_B234D5: FLdRfVar LibredeDeuda
  loc_B234D8: CVarRef
  loc_B234DD: ImpAdCallI2 Format$(, )
  loc_B234E2: FStStrNoPop var_F0
  loc_B234E5: ConcatStr
  loc_B234E6: FStStrNoPop var_F4
  loc_B234E9: LitStr "'"
  loc_B234EC: ConcatStr
  loc_B234ED: FStStrNoPop var_F8
  loc_B234F0: LitStr " ORDER BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_B234F3: ConcatStr
  loc_B234F4: FStStrNoPop var_FC
  loc_B234F7: Call EjecutarRsCls(from_stack_1v)
  loc_B234FC: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B2351B: FFree1Var var_E8 = ""
  loc_B2351E: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_ctacte1; CREATE TEMPORARY TABLE tmp_ctacte1"
  loc_B23521: LitStr " SELECT tmp_ctacte.CodiOfic, tmp_ctacte.CuenCtct, tmp_ctacte.PeriCtct, tmp_ctacte.BimeCtct, tmp_ctacte.NumeCtct, "
  loc_B23524: ConcatStr
  loc_B23525: FStStrNoPop var_98
  loc_B23528: LitStr " SUM(ctacte.DebeCtct)-SUM(ctacte.CredCtct) as Saldo FROM ctacte"
  loc_B2352B: ConcatStr
  loc_B2352C: FStStrNoPop var_9C
  loc_B2352F: LitStr " INNER JOIN tmp_ctacte ON tmp_ctacte.CodiOfic = ctacte.CodiOfic AND tmp_ctacte.CuenCtct = ctacte.CuenCtct"
  loc_B23532: ConcatStr
  loc_B23533: FStStrNoPop var_A0
  loc_B23536: LitStr " AND tmp_ctacte.PeriCtct = ctacte.PeriCtct and tmp_ctacte.BimeCtct = ctacte.BimeCtct"
  loc_B23539: ConcatStr
  loc_B2353A: FStStrNoPop var_A4
  loc_B2353D: LitStr " AND tmp_ctacte.NumeCtct = ctacte.NumeCtct"
  loc_B23540: ConcatStr
  loc_B23541: FStStrNoPop var_A8
  loc_B23544: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.NumeCtct"
  loc_B23547: ConcatStr
  loc_B23548: FStStrNoPop var_AC
  loc_B2354B: LitStr " having saldo <> 0;"
  loc_B2354E: ConcatStr
  loc_B2354F: FStStrNoPop var_B0
  loc_B23552: Call EjecutarRsCls(from_stack_1v)
  loc_B23557: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_B23568: LitStr "SELECT IFNULL(SUM(saldo),0) as Saldo FROM tmp_ctacte1"
  loc_B2356B: Call EjecutarRsCls(from_stack_1v)
  loc_B23570: FLdRfVar var_100
  loc_B23573: FLdPr Me
  loc_B23576: MemLdPr global_56
  loc_B23579:  = Me.RecordCount
  loc_B2357E: ILdRf var_100
  loc_B23581: LitI4 0
  loc_B23586: GtI4
  loc_B23587: BranchF loc_B235C9
  loc_B2358A: FLdRfVar var_E8
  loc_B2358D: FLdRfVar var_108
  loc_B23590: LitVarStr var_C8, "Saldo"
  loc_B23595: PopAdLdVar
  loc_B23596: FLdRfVar var_104
  loc_B23599: FLdPr Me
  loc_B2359C: MemLdPr global_56
  loc_B2359F:  = Me.Fields
  loc_B235A4: FLdPr var_104
  loc_B235A7: from_stack_2 = Me.Item(from_stack_1)
  loc_B235AC: FLdPr var_108
  loc_B235AF:  = Me.Value
  loc_B235B4: FLdRfVar var_E8
  loc_B235B7: FnCDblVar
  loc_B235B9: FStFPR8 var_8C
  loc_B235BC: FFreeAd var_104 = ""
  loc_B235C3: FFree1Var var_E8 = ""
  loc_B235C6: Branch loc_B235CF
  loc_B235C9: LitI2_Byte 0
  loc_B235CB: CR8I2
  loc_B235CC: FStFPR8 var_8C
  loc_B235CF: FLdFPR8 var_8C
  loc_B235D2: LitI2_Byte 0
  loc_B235D4: CR8I2
  loc_B235D5: EqR4
  loc_B235D6: BranchF loc_B236DF
  loc_B235D9: LitStr "SELECT * FROM facipago WHERE CodiOfic = "
  loc_B235DC: FLdUI1
  loc_B235E0: CStrI2
  loc_B235E2: FStStrNoPop var_98
  loc_B235E5: ConcatStr
  loc_B235E6: FStStrNoPop var_9C
  loc_B235E9: LitStr " AND CuenCtct = '"
  loc_B235EC: ConcatStr
  loc_B235ED: FStStrNoPop var_A0
  loc_B235F0: ILdRf var_90
  loc_B235F3: ConcatStr
  loc_B235F4: FStStrNoPop var_A4
  loc_B235F7: LitStr "' AND NovaFapa = 1 AND EstaFapa = 'Activa'"
  loc_B235FA: ConcatStr
  loc_B235FB: FStStrNoPop var_A8
  loc_B235FE: Call EjecutarRsCls(from_stack_1v)
  loc_B23603: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_B23610: FLdRfVar var_100
  loc_B23613: FLdPr Me
  loc_B23616: MemLdPr global_56
  loc_B23619:  = Me.RecordCount
  loc_B2361E: ILdRf var_100
  loc_B23621: LitI4 0
  loc_B23626: GtI4
  loc_B23627: BranchF loc_B236DF
  loc_B2362A: LitVarStr var_D8, "SELECT IFNULL(SUM(TotaDefa),0) TotaDefa FROM detafapa WHERE CodiFapa = "
  loc_B2362F: FLdRfVar var_E8
  loc_B23632: FLdRfVar var_108
  loc_B23635: LitVarStr var_C8, "CodiFapa"
  loc_B2363A: PopAdLdVar
  loc_B2363B: FLdRfVar var_104
  loc_B2363E: FLdPr Me
  loc_B23641: MemLdPr global_56
  loc_B23644:  = Me.Fields
  loc_B23649: FLdPr var_104
  loc_B2364C: from_stack_2 = Me.Item(from_stack_1)
  loc_B23651: FLdPr var_108
  loc_B23654:  = Me.Value
  loc_B23659: FLdRfVar var_E8
  loc_B2365C: ConcatVar var_118
  loc_B23660: LitVarStr var_128, " AND FepaDefa IS NULL"
  loc_B23665: ConcatVar var_138
  loc_B23669: CStrVarVal var_98
  loc_B2366D: Call EjecutarRsCls(from_stack_1v)
  loc_B23672: FFree1Str var_98
  loc_B23675: FFreeAd var_104 = ""
  loc_B2367C: FFreeVar var_E8 = "": var_118 = ""
  loc_B23685: FLdRfVar var_100
  loc_B23688: FLdPr Me
  loc_B2368B: MemLdPr global_56
  loc_B2368E:  = Me.RecordCount
  loc_B23693: ILdRf var_100
  loc_B23696: LitI4 0
  loc_B2369B: GtI4
  loc_B2369C: BranchF loc_B236DF
  loc_B2369F: FLdRfVar var_E8
  loc_B236A2: FLdRfVar var_108
  loc_B236A5: LitVarStr var_C8, "TotaDefa"
  loc_B236AA: PopAdLdVar
  loc_B236AB: FLdRfVar var_104
  loc_B236AE: FLdPr Me
  loc_B236B1: MemLdPr global_56
  loc_B236B4:  = Me.Fields
  loc_B236B9: FLdPr var_104
  loc_B236BC: from_stack_2 = Me.Item(from_stack_1)
  loc_B236C1: FLdPr var_108
  loc_B236C4:  = Me.Value
  loc_B236C9: FLdFPR8 var_8C
  loc_B236CC: FLdRfVar var_E8
  loc_B236CF: FnCDblVar
  loc_B236D1: AddR8
  loc_B236D2: FStFPR8 var_8C
  loc_B236D5: FFreeAd var_104 = ""
  loc_B236DC: FFree1Var var_E8 = ""
  loc_B236DF: ExitProcCbHresult
End Function

Public Function CantidadDePeriodosConDeuda(byCodiOfic, sCuenCtct, sFeveCtct) 'A8CB7C
  'Data Table: 489C84
  loc_A8CAF0: ILdRf sCuenCtct
  loc_A8CAF3: FStStrCopy var_8C
  loc_A8CAF6: ILdRf sFeveCtct
  loc_A8CAF9: FStStrCopy var_90
  loc_A8CAFC: LitStr "SELECT * FROM tmp_ctacte1 WHERE PeriCtct >= "
  loc_A8CAFF: ImpAdLdI2 MemVar_D93034
  loc_A8CB02: LitI2_Byte 3
  loc_A8CB04: SubI2
  loc_A8CB05: CStrUI1
  loc_A8CB07: FStStrNoPop CantidadDePeriodosConDeuda
  loc_A8CB0A: ConcatStr
  loc_A8CB0B: FStStrNoPop var_98
  loc_A8CB0E: LitStr " AND PeriCtct <= "
  loc_A8CB11: ConcatStr
  loc_A8CB12: FStStrNoPop var_9C
  loc_A8CB15: ImpAdLdI2 MemVar_D93034
  loc_A8CB18: LitI2_Byte 1
  loc_A8CB1A: SubI2
  loc_A8CB1B: CStrUI1
  loc_A8CB1D: FStStrNoPop var_A0
  loc_A8CB20: ConcatStr
  loc_A8CB21: FStStrNoPop var_A4
  loc_A8CB24: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct  HAVING Saldo > 0"
  loc_A8CB27: ConcatStr
  loc_A8CB28: FStStrNoPop var_A8
  loc_A8CB2B: Call EjecutarRsCls(from_stack_1v)
  loc_A8CB30: FFreeStr CantidadDePeriodosConDeuda = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A8CB3F: FLdRfVar var_AC
  loc_A8CB42: FLdPr Me
  loc_A8CB45: MemLdPr global_56
  loc_A8CB48:  = Me.RecordCount
  loc_A8CB4D: ILdRf var_AC
  loc_A8CB50: LitI4 0
  loc_A8CB55: GtI4
  loc_A8CB56: BranchF loc_A8CB71
  loc_A8CB59: FLdRfVar var_AC
  loc_A8CB5C: FLdPr Me
  loc_A8CB5F: MemLdPr global_56
  loc_A8CB62:  = Me.RecordCount
  loc_A8CB67: ILdRf var_AC
  loc_A8CB6A: CI2I4
  loc_A8CB6B: FStI2 var_86
  loc_A8CB6E: Branch loc_A8CB76
  loc_A8CB71: LitI2_Byte 0
  loc_A8CB73: FStI2 var_86
  loc_A8CB76: ExitProcCbHresult
End Function

Private Function Proc_318_93_9F4090() '9F4090
  'Data Table: 489C84
  loc_9F406C: LitStr "Primary"
  loc_9F406F: FLdPr Me
  loc_9F4072: LateIdLdVar var_94 DispID_4 0
  loc_9F4079: CastAdVar Me
  loc_9F407D: FStAdFunc var_98
  loc_9F4080: FLdPr var_98
  loc_9F4088: FFree1Ad var_98
  loc_9F408B: FFree1Var var_94 = ""
  loc_9F408E: ExitProcHresult
End Function

Private Function Proc_318_94_9DF65C(arg_C) '9DF65C
  'Data Table: 489C84
  loc_9DF640: ILdI4 arg_C
  loc_9DF643: FStStrCopy var_88
  loc_9DF646: ILdRf var_88
  loc_9DF649: LitStr "Primary"
  loc_9DF64C: EqStr
  loc_9DF64E: BranchF loc_9DF65B
  loc_9DF651: FLdPr Me
  loc_9DF654: MemLdStr RsFrm
  loc_9DF657: IStAd
  loc_9DF65B: ExitProcHresult
End Function
