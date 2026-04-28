VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsliquante"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '485628
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '485637
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '485646
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9EC3E4
  'Data Table: 484E94
  loc_9EC3BC: FLdRfVar var_88
  loc_9EC3BF: FLdPr Me
  loc_9EC3C2: MemLdPr RsFrm
  loc_9EC3C5:  = Me.RecordCount
  loc_9EC3CA: ILdRf var_88
  loc_9EC3CD: LitI4 0
  loc_9EC3D2: GtI4
  loc_9EC3D3: BranchF loc_9EC3E1
  loc_9EC3D6: FLdPr Me
  loc_9EC3D9: MemLdPr RsFrm
  loc_9EC3DC: Me.MoveFirst
  loc_9EC3E1: ExitProcHresult
End Sub

Public Sub MoveLast() '9EA1DC
  'Data Table: 484E94
  loc_9EA1B4: FLdRfVar var_88
  loc_9EA1B7: FLdPr Me
  loc_9EA1BA: MemLdPr RsFrm
  loc_9EA1BD:  = Me.RecordCount
  loc_9EA1C2: ILdRf var_88
  loc_9EA1C5: LitI4 0
  loc_9EA1CA: GtI4
  loc_9EA1CB: BranchF loc_9EA1D9
  loc_9EA1CE: FLdPr Me
  loc_9EA1D1: MemLdPr RsFrm
  loc_9EA1D4: Me.MoveLast
  loc_9EA1D9: ExitProcHresult
  loc_9EA1DA: ImpAdLdFPR4 MemVar_48CA5C
End Sub

Public Sub MoveNext() 'A6D750
  'Data Table: 484E94
  loc_A6D6D8: FLdRfVar var_86
  loc_A6D6DB: FLdPr Me
  loc_A6D6DE: MemLdPr RsFrm
  loc_A6D6E1:  = Me.EOF
  loc_A6D6E6: FLdI2 var_86
  loc_A6D6E9: NotI4
  loc_A6D6EA: FLdRfVar var_8C
  loc_A6D6ED: FLdPr Me
  loc_A6D6F0: MemLdPr RsFrm
  loc_A6D6F3:  = Me.RecordCount
  loc_A6D6F8: ILdRf var_8C
  loc_A6D6FB: LitI4 0
  loc_A6D700: GtI4
  loc_A6D701: AndI4
  loc_A6D702: BranchF loc_A6D710
  loc_A6D705: FLdPr Me
  loc_A6D708: MemLdPr RsFrm
  loc_A6D70B: Me.MoveNext
  loc_A6D710: FLdRfVar var_86
  loc_A6D713: FLdPr Me
  loc_A6D716: MemLdPr RsFrm
  loc_A6D719:  = Me.EOF
  loc_A6D71E: FLdI2 var_86
  loc_A6D721: FLdRfVar var_8C
  loc_A6D724: FLdPr Me
  loc_A6D727: MemLdPr RsFrm
  loc_A6D72A:  = Me.RecordCount
  loc_A6D72F: ILdRf var_8C
  loc_A6D732: LitI4 0
  loc_A6D737: GtI4
  loc_A6D738: AndI4
  loc_A6D739: BranchF loc_A6D74C
  loc_A6D73C: ImpAdCallFPR4 Beep()
  loc_A6D741: FLdPr Me
  loc_A6D744: MemLdPr RsFrm
  loc_A6D747: Me.MoveLast
  loc_A6D74C: ExitProcHresult
  loc_A6D74D: NewIfNullPr Me
End Sub

Public Sub MoveSiguiente() '9B0CF0
  'Data Table: 484E94
  loc_9B0CE4: FLdPr Me
  loc_9B0CE7: MemLdPr RsFrm
  loc_9B0CEA: Me.MoveNext
  loc_9B0CEF: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B96F4
  'Data Table: 484E94
  loc_9B96E0: LitVar_Missing var_94
  loc_9B96E3: PopAdLdVar
  loc_9B96E4: ILdI2 iValor
  loc_9B96E7: CI4UI1
  loc_9B96E8: FLdPr Me
  loc_9B96EB: MemLdPr RsFrm
  loc_9B96EE: Me.Move from_stack_1, from_stack_2
  loc_9B96F3: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6D168
  'Data Table: 484E94
  loc_A6D0F0: FLdRfVar var_86
  loc_A6D0F3: FLdPr Me
  loc_A6D0F6: MemLdPr RsFrm
  loc_A6D0F9:  = Me.BOF
  loc_A6D0FE: FLdI2 var_86
  loc_A6D101: NotI4
  loc_A6D102: FLdRfVar var_8C
  loc_A6D105: FLdPr Me
  loc_A6D108: MemLdPr RsFrm
  loc_A6D10B:  = Me.RecordCount
  loc_A6D110: ILdRf var_8C
  loc_A6D113: LitI4 0
  loc_A6D118: GtI4
  loc_A6D119: AndI4
  loc_A6D11A: BranchF loc_A6D128
  loc_A6D11D: FLdPr Me
  loc_A6D120: MemLdPr RsFrm
  loc_A6D123: Me.MovePrevious
  loc_A6D128: FLdRfVar var_86
  loc_A6D12B: FLdPr Me
  loc_A6D12E: MemLdPr RsFrm
  loc_A6D131:  = Me.BOF
  loc_A6D136: FLdI2 var_86
  loc_A6D139: FLdRfVar var_8C
  loc_A6D13C: FLdPr Me
  loc_A6D13F: MemLdPr RsFrm
  loc_A6D142:  = Me.RecordCount
  loc_A6D147: ILdRf var_8C
  loc_A6D14A: LitI4 0
  loc_A6D14F: GtI4
  loc_A6D150: AndI4
  loc_A6D151: BranchF loc_A6D164
  loc_A6D154: ImpAdCallFPR4 Beep()
  loc_A6D159: FLdPr Me
  loc_A6D15C: MemLdPr RsFrm
  loc_A6D15F: Me.MoveFirst
  loc_A6D164: ExitProcHresult
End Sub

Public Property Get EOF() '9CFD8C
  'Data Table: 484E94
  loc_9CFD70: FLdRfVar var_88
  loc_9CFD73: FLdPr Me
  loc_9CFD76: MemLdPr RsFrm
  loc_9CFD79:  = Me.EOF
  loc_9CFD7E: FLdI2 var_88
  loc_9CFD81: FStI2 var_86
  loc_9CFD84: ExitProcCbHresult
End Sub

Public Property Get BOF() '9CFFEC
  'Data Table: 484E94
  loc_9CFFD0: FLdRfVar var_88
  loc_9CFFD3: FLdPr Me
  loc_9CFFD6: MemLdPr RsFrm
  loc_9CFFD9:  = Me.BOF
  loc_9CFFDE: FLdI2 var_88
  loc_9CFFE1: FStI2 var_86
  loc_9CFFE4: ExitProcCbHresult
  loc_9CFFEA: ImpAdLdFPR4 MemVar_0
End Sub

Public Sub Sort(sOrden) '9B3B38
  'Data Table: 484E94
  loc_9B3B28: ILdI4 sOrden
  loc_9B3B2B: FLdPr Me
  loc_9B3B2E: MemLdPr RsFrm
  loc_9B3B31: Me.Sort = from_stack_1
  loc_9B3B36: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E48E0
  'Data Table: 484E94
  loc_9E48C0: LitVar_Missing var_94
  loc_9E48C3: PopAdLdVar
  loc_9E48C4: LitI4 1
  loc_9E48C9: LitI4 0
  loc_9E48CE: ILdI4 sFind
  loc_9E48D1: FLdPr Me
  loc_9E48D4: MemLdPr RsFrm
  loc_9E48D7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E48DC: ExitProcHresult
  loc_9E48DD: LdFrameRf
End Sub

Public Sub Filter(sCriterio) '9BA370
  'Data Table: 484E94
  loc_9BA35C: ILdI4 sCriterio
  loc_9BA35F: CVarStr var_94
  loc_9BA362: PopAdLdVar
  loc_9BA363: FLdPr Me
  loc_9BA366: MemLdPr RsFrm
  loc_9BA369: Me.Filter = from_stack_1
  loc_9BA36E: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D0084
  'Data Table: 484E94
  loc_9D0068: FLdRfVar var_8C
  loc_9D006B: FLdPr Me
  loc_9D006E: MemLdPr RsFrm
  loc_9D0071:  = Me.AbsolutePosition
  loc_9D0076: ILdRf var_8C
  loc_9D0079: FStR4 var_88
  loc_9D007C: ExitProcCbHresult
  loc_9D0082: MemLdRfVar from_stack_1.global_7366
End Sub

Public Property Get RecordCount() '9D0168
  'Data Table: 484E94
  loc_9D014C: FLdRfVar var_8C
  loc_9D014F: FLdPr Me
  loc_9D0152: MemLdPr RsFrm
  loc_9D0155:  = Me.RecordCount
  loc_9D015A: ILdRf var_8C
  loc_9D015D: FStR4 var_88
  loc_9D0160: ExitProcCbHresult
  loc_9D0166: ExitProcI2
End Sub

Public Sub AddNew(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, CodiConc, TipoVenc, TipoLian, FeveLian, DeudLian, ImpoLian, CrafLian, ExenLian, DescLian, GastLian, TotaLian, CucuPers, CodiRuta, CodiCall) 'D0FA60
  'Data Table: 484E94
  loc_D0C71C: ILdRf CodiConc
  loc_D0C71F: FStStrCopy var_88
  loc_D0C722: ILdRf TipoLian
  loc_D0C725: FStStrCopy var_8C
  loc_D0C728: ILdRf FeveLian
  loc_D0C72B: FStStrCopy var_90
  loc_D0C72E: ILdRf arg_68
  loc_D0C731: FStStrCopy var_94
  loc_D0C734: ILdRf arg_78
  loc_D0C737: FStStrCopy var_98
  loc_D0C73A: ILdRf Me0
  loc_D0C73D: FStStrCopy var_9C
  loc_D0C740: ILdRf Me4
  loc_D0C743: FStStrCopy var_A0
  loc_D0C746: ILdRf Me8
  loc_D0C749: FStStrCopy var_A4
  loc_D0C74C: ILdRf MeC
  loc_D0C74F: FStStrCopy var_A8
  loc_D0C752: ILdRf arg_94
  loc_D0C755: FStStrCopy var_AC
  loc_D0C758: ILdRf arg_98
  loc_D0C75B: FStStrCopy var_B0
  loc_D0C75E: LitI2_Byte 0
  loc_D0C760: CR8I2
  loc_D0C761: FStFPR8 var_BC
  loc_D0C764: LitI4 0
  loc_D0C769: FStR4 var_C0
  loc_D0C76C: OnErrorGoto loc_D0FA3B
  loc_D0C76F: FLdUI1
  loc_D0C773: CI2UI1
  loc_D0C775: LitI2_Byte 1
  loc_D0C777: EqI2
  loc_D0C778: FLdUI1
  loc_D0C77C: CI2UI1
  loc_D0C77E: LitI2_Byte 2
  loc_D0C780: EqI2
  loc_D0C781: AndI4
  loc_D0C782: BranchF loc_D0DAEC
  loc_D0C785: LitI2_Byte 0
  loc_D0C787: CR8I2
  loc_D0C788: FStFPR8 var_F8
  loc_D0C78B: LitStr "START TRANSACTION;"
  loc_D0C78E: FStStrCopy var_114
  loc_D0C791: LitStr "SELECT PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, CodiConc, TipoVenc, TipoLian, DeudLian, ImpoLian, GastLian, SUM(CrafLian) as CrafLian, ExenLian, DescLian, TotaLian "
  loc_D0C794: LitStr " FROM liquante WHERE PeriLiqu = "
  loc_D0C797: ConcatStr
  loc_D0C798: FStStrNoPop var_11C
  loc_D0C79B: FLdI2 PeriLiqu
  loc_D0C79E: CStrUI1
  loc_D0C7A0: FStStrNoPop var_120
  loc_D0C7A3: ConcatStr
  loc_D0C7A4: FStStrNoPop var_124
  loc_D0C7A7: LitStr " AND CodiTili = "
  loc_D0C7AA: ConcatStr
  loc_D0C7AB: FStStrNoPop var_128
  loc_D0C7AE: FLdUI1
  loc_D0C7B2: CStrI2
  loc_D0C7B4: FStStrNoPop var_12C
  loc_D0C7B7: ConcatStr
  loc_D0C7B8: FStStrNoPop var_130
  loc_D0C7BB: LitStr " AND NumeLiqu = "
  loc_D0C7BE: ConcatStr
  loc_D0C7BF: FStStrNoPop var_134
  loc_D0C7C2: FLdI2 NumeLiqu
  loc_D0C7C5: CStrUI1
  loc_D0C7C7: FStStrNoPop var_138
  loc_D0C7CA: ConcatStr
  loc_D0C7CB: FStStrNoPop var_13C
  loc_D0C7CE: LitStr " AND CodiCome = "
  loc_D0C7D1: ConcatStr
  loc_D0C7D2: FStStrNoPop var_140
  loc_D0C7D5: ILdRf CodiCome
  loc_D0C7D8: CStrI4
  loc_D0C7DA: FStStrNoPop var_144
  loc_D0C7DD: ConcatStr
  loc_D0C7DE: FStStrNoPop var_148
  loc_D0C7E1: LitStr " GROUP BY PeriLiqu, CodiTili, NumeLiqu, CodiCome, CodiConc"
  loc_D0C7E4: ConcatStr
  loc_D0C7E5: FStStrNoPop var_14C
  loc_D0C7E8: LitStr " HAVING TotaLian > 0"
  loc_D0C7EB: ConcatStr
  loc_D0C7EC: FStStrNoPop var_150
  loc_D0C7EF: Call EjecutarRsCls2(from_stack_1v)
  loc_D0C7F4: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_D0C813: FLdRfVar var_154
  loc_D0C816: FLdPr Me
  loc_D0C819: MemLdPr global_64
  loc_D0C81C:  = Me.RecordCount
  loc_D0C821: ILdRf var_154
  loc_D0C824: LitI4 0
  loc_D0C829: GtI4
  loc_D0C82A: BranchF loc_D0DAE1
  loc_D0C82D: FLdPr Me
  loc_D0C830: MemLdPr global_64
  loc_D0C833: Me.MoveFirst
  loc_D0C838: FLdRfVar var_156
  loc_D0C83B: FLdPr Me
  loc_D0C83E: MemLdPr global_64
  loc_D0C841:  = Me.EOF
  loc_D0C846: FLdI2 var_156
  loc_D0C849: NotI4
  loc_D0C84A: BranchF loc_D0DAE1
  loc_D0C84D: FLdRfVar var_180
  loc_D0C850: FLdRfVar var_170
  loc_D0C853: LitVarStr var_16C, "CodiConc"
  loc_D0C858: PopAdLdVar
  loc_D0C859: FLdRfVar var_15C
  loc_D0C85C: FLdPr Me
  loc_D0C85F: MemLdPr global_64
  loc_D0C862:  = Me.Fields
  loc_D0C867: FLdPr var_15C
  loc_D0C86A: from_stack_2 = Me.Item(from_stack_1)
  loc_D0C86F: FLdPr var_170
  loc_D0C872:  = Me.Value
  loc_D0C877: FLdRfVar var_180
  loc_D0C87A: LitVarStr var_190, "13020601"
  loc_D0C87F: HardType
  loc_D0C880: EqVarBool
  loc_D0C882: FFreeAd var_15C = ""
  loc_D0C889: FFree1Var var_180 = ""
  loc_D0C88C: BranchF loc_D0D591
  loc_D0C88F: LitI2_Byte 0
  loc_D0C891: CR8I2
  loc_D0C892: FStFPR8 var_F8
  loc_D0C895: LitStr "SELECT liandeta.* FROM liandeta "
  loc_D0C898: LitStr " LEFT JOIN servante ON servante.CodiCome = liandeta.CodiCome"
  loc_D0C89B: ConcatStr
  loc_D0C89C: FStStrNoPop var_11C
  loc_D0C89F: LitStr " AND servante.CodiRamo = liandeta.CodiRamo"
  loc_D0C8A2: ConcatStr
  loc_D0C8A3: FStStrNoPop var_120
  loc_D0C8A6: LitStr " AND servante.CodiSubr = liandeta.CodiSubr"
  loc_D0C8A9: ConcatStr
  loc_D0C8AA: FStStrNoPop var_124
  loc_D0C8AD: LitStr " AND servante.CodiRubr = liandeta.CodiRubr"
  loc_D0C8B0: ConcatStr
  loc_D0C8B1: FStStrNoPop var_128
  loc_D0C8B4: LitStr " AND servante.PrioSeco = liandeta.NumeLade"
  loc_D0C8B7: ConcatStr
  loc_D0C8B8: FStStrNoPop var_12C
  loc_D0C8BB: LitStr " WHERE PeriLiqu = "
  loc_D0C8BE: ConcatStr
  loc_D0C8BF: CVarStr var_1A0
  loc_D0C8C2: FLdRfVar var_180
  loc_D0C8C5: FLdRfVar var_170
  loc_D0C8C8: LitVarStr var_16C, "PeriLiqu"
  loc_D0C8CD: PopAdLdVar
  loc_D0C8CE: FLdRfVar var_15C
  loc_D0C8D1: FLdPr Me
  loc_D0C8D4: MemLdPr global_64
  loc_D0C8D7:  = Me.Fields
  loc_D0C8DC: FLdPr var_15C
  loc_D0C8DF: from_stack_2 = Me.Item(from_stack_1)
  loc_D0C8E4: FLdPr var_170
  loc_D0C8E7:  = Me.Value
  loc_D0C8EC: FLdRfVar var_180
  loc_D0C8EF: ConcatVar var_1B0
  loc_D0C8F3: LitVarStr var_190, " AND BimeLiqu = 1"
  loc_D0C8F8: ConcatVar var_1C0
  loc_D0C8FC: LitVarStr var_1D0, " AND CodiTili = "
  loc_D0C901: ConcatVar var_1E0
  loc_D0C905: FLdRfVar var_208
  loc_D0C908: FLdRfVar var_1F8
  loc_D0C90B: LitVarStr var_1F4, "CodiTili"
  loc_D0C910: PopAdLdVar
  loc_D0C911: FLdRfVar var_1E4
  loc_D0C914: FLdPr Me
  loc_D0C917: MemLdPr global_64
  loc_D0C91A:  = Me.Fields
  loc_D0C91F: FLdPr var_1E4
  loc_D0C922: from_stack_2 = Me.Item(from_stack_1)
  loc_D0C927: FLdPr var_1F8
  loc_D0C92A:  = Me.Value
  loc_D0C92F: FLdRfVar var_208
  loc_D0C932: ConcatVar var_218
  loc_D0C936: LitVarStr var_228, " AND NumeLiqu = "
  loc_D0C93B: ConcatVar var_238
  loc_D0C93F: FLdRfVar var_260
  loc_D0C942: FLdRfVar var_250
  loc_D0C945: LitVarStr var_24C, "NumeLiqu"
  loc_D0C94A: PopAdLdVar
  loc_D0C94B: FLdRfVar var_23C
  loc_D0C94E: FLdPr Me
  loc_D0C951: MemLdPr global_64
  loc_D0C954:  = Me.Fields
  loc_D0C959: FLdPr var_23C
  loc_D0C95C: from_stack_2 = Me.Item(from_stack_1)
  loc_D0C961: FLdPr var_250
  loc_D0C964:  = Me.Value
  loc_D0C969: FLdRfVar var_260
  loc_D0C96C: ConcatVar var_270
  loc_D0C970: LitVarStr var_280, " AND liandeta.CodiCome = "
  loc_D0C975: ConcatVar var_290
  loc_D0C979: FLdRfVar var_2B8
  loc_D0C97C: FLdRfVar var_2A8
  loc_D0C97F: LitVarStr var_2A4, "CodiCome"
  loc_D0C984: PopAdLdVar
  loc_D0C985: FLdRfVar var_294
  loc_D0C988: FLdPr Me
  loc_D0C98B: MemLdPr global_64
  loc_D0C98E:  = Me.Fields
  loc_D0C993: FLdPr var_294
  loc_D0C996: from_stack_2 = Me.Item(from_stack_1)
  loc_D0C99B: FLdPr var_2A8
  loc_D0C99E:  = Me.Value
  loc_D0C9A3: FLdRfVar var_2B8
  loc_D0C9A6: ConcatVar var_2C8
  loc_D0C9AA: LitVarStr var_2D8, " AND CodiConc = '"
  loc_D0C9AF: ConcatVar var_2E8
  loc_D0C9B3: FLdRfVar var_310
  loc_D0C9B6: FLdRfVar var_300
  loc_D0C9B9: LitVarStr var_2FC, "CodiConc"
  loc_D0C9BE: PopAdLdVar
  loc_D0C9BF: FLdRfVar var_2EC
  loc_D0C9C2: FLdPr Me
  loc_D0C9C5: MemLdPr global_64
  loc_D0C9C8:  = Me.Fields
  loc_D0C9CD: FLdPr var_2EC
  loc_D0C9D0: from_stack_2 = Me.Item(from_stack_1)
  loc_D0C9D5: FLdPr var_300
  loc_D0C9D8:  = Me.Value
  loc_D0C9DD: FLdRfVar var_310
  loc_D0C9E0: ConcatVar var_320
  loc_D0C9E4: LitVarStr var_330, "'"
  loc_D0C9E9: ConcatVar var_340
  loc_D0C9ED: LitVarStr var_350, " AND TipoVenc = 1"
  loc_D0C9F2: ConcatVar var_360
  loc_D0C9F6: LitVarStr var_370, " GROUP BY liandeta.PeriLiqu, liandeta.CodiTili, liandeta.NumeLiqu, liandeta.CodiCome, liandeta.CodiConc, liandeta.TipoVenc, liandeta.CodiRamo, liandeta.CodiRubr, liandeta.PeriOrde, liandeta.CodiSubr"
  loc_D0C9FB: ConcatVar var_380
  loc_D0C9FF: LitVarStr var_390, " ORDER BY servante.FealSeco DESC, servante.CodiSubr ASC"
  loc_D0CA04: ConcatVar var_3A0
  loc_D0CA08: CStrVarVal var_130
  loc_D0CA0C: Call EjecutarRsCls3(from_stack_1v)
  loc_D0CA11: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_D0CA20: FFreeAd var_15C = "": var_170 = "": var_1E4 = "": var_1F8 = "": var_23C = "": var_250 = "": var_294 = "": var_2A8 = "": var_2EC = ""
  loc_D0CA37: FFreeVar var_1A0 = "": var_180 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_208 = "": var_218 = "": var_238 = "": var_260 = "": var_270 = "": var_290 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_310 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = ""
  loc_D0CA62: FLdRfVar var_154
  loc_D0CA65: FLdPr Me
  loc_D0CA68: MemLdPr global_68
  loc_D0CA6B:  = Me.RecordCount
  loc_D0CA70: ILdRf var_154
  loc_D0CA73: LitI4 0
  loc_D0CA78: GtI4
  loc_D0CA79: BranchF loc_D0D194
  loc_D0CA7C: FLdPr Me
  loc_D0CA7F: MemLdPr global_68
  loc_D0CA82: Me.MoveFirst
  loc_D0CA87: LitI2_Byte 0
  loc_D0CA89: FStI2 var_116
  loc_D0CA8C: FLdRfVar var_156
  loc_D0CA8F: FLdPr Me
  loc_D0CA92: MemLdPr global_68
  loc_D0CA95:  = Me.EOF
  loc_D0CA9A: FLdI2 var_156
  loc_D0CA9D: NotI4
  loc_D0CA9E: BranchF loc_D0D194
  loc_D0CAA1: FLdI2 var_116
  loc_D0CAA4: LitI2_Byte 1
  loc_D0CAA6: AddI2
  loc_D0CAA7: FStI2 var_116
  loc_D0CAAA: FLdRfVar var_180
  loc_D0CAAD: FLdRfVar var_170
  loc_D0CAB0: LitVarStr var_16C, "CodiSubr"
  loc_D0CAB5: PopAdLdVar
  loc_D0CAB6: FLdRfVar var_15C
  loc_D0CAB9: FLdPr Me
  loc_D0CABC: MemLdPr global_68
  loc_D0CABF:  = Me.Fields
  loc_D0CAC4: FLdPr var_15C
  loc_D0CAC7: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CACC: FLdPr var_170
  loc_D0CACF:  = Me.Value
  loc_D0CAD4: FLdRfVar var_180
  loc_D0CAD7: FnCLngVar
  loc_D0CAD9: LitI4 &H3E7
  loc_D0CADE: EqI4
  loc_D0CADF: FFreeAd var_15C = ""
  loc_D0CAE6: FFree1Var var_180 = ""
  loc_D0CAE9: BranchF loc_D0CAF5
  loc_D0CAEC: LitI2_Byte 0
  loc_D0CAEE: CR8I2
  loc_D0CAEF: FStFPR8 var_E8
  loc_D0CAF2: Branch loc_D0CAFC
  loc_D0CAF5: LitI2 2860
  loc_D0CAF8: CR8I2
  loc_D0CAF9: FStFPR8 var_E8
  loc_D0CAFC: LitI2_Byte 1
  loc_D0CAFE: FLdRfVar var_118
  loc_D0CB01: LitI2_Byte 6
  loc_D0CB03: ForI2 var_3A4
  loc_D0CB09: LitI2_Byte 0
  loc_D0CB0B: CR8I2
  loc_D0CB0C: FStFPR8 var_C8
  loc_D0CB0F: LitI2_Byte 0
  loc_D0CB11: CR8I2
  loc_D0CB12: FStFPR8 var_D0
  loc_D0CB15: LitI2_Byte 0
  loc_D0CB17: CR8I2
  loc_D0CB18: FStFPR8 var_D8
  loc_D0CB1B: LitI2_Byte 0
  loc_D0CB1D: CR8I2
  loc_D0CB1E: FStFPR8 var_E0
  loc_D0CB21: FLdI2 var_118
  loc_D0CB24: LitI2_Byte 2
  loc_D0CB26: LeI2
  loc_D0CB27: BranchF loc_D0CB39
  loc_D0CB2A: LitI2_Byte 0
  loc_D0CB2C: CR8I2
  loc_D0CB2D: FStFPR8 var_D0
  loc_D0CB30: LitI2_Byte 0
  loc_D0CB32: CR8I2
  loc_D0CB33: FStFPR8 var_D8
  loc_D0CB36: Branch loc_D0CBB1
  loc_D0CB39: FLdRfVar var_180
  loc_D0CB3C: FLdRfVar var_170
  loc_D0CB3F: LitVarStr var_16C, "DecaLade"
  loc_D0CB44: PopAdLdVar
  loc_D0CB45: FLdRfVar var_15C
  loc_D0CB48: FLdPr Me
  loc_D0CB4B: MemLdPr global_68
  loc_D0CB4E:  = Me.Fields
  loc_D0CB53: FLdPr var_15C
  loc_D0CB56: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CB5B: FLdPr var_170
  loc_D0CB5E:  = Me.Value
  loc_D0CB63: FLdRfVar var_180
  loc_D0CB66: FnCDblVar
  loc_D0CB68: FStFPR8 var_D0
  loc_D0CB6B: FFreeAd var_15C = ""
  loc_D0CB72: FFree1Var var_180 = ""
  loc_D0CB75: FLdRfVar var_180
  loc_D0CB78: FLdRfVar var_170
  loc_D0CB7B: LitVarStr var_16C, "ExceLade"
  loc_D0CB80: PopAdLdVar
  loc_D0CB81: FLdRfVar var_15C
  loc_D0CB84: FLdPr Me
  loc_D0CB87: MemLdPr global_68
  loc_D0CB8A:  = Me.Fields
  loc_D0CB8F: FLdPr var_15C
  loc_D0CB92: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CB97: FLdPr var_170
  loc_D0CB9A:  = Me.Value
  loc_D0CB9F: FLdRfVar var_180
  loc_D0CBA2: FnCDblVar
  loc_D0CBA4: FStFPR8 var_D8
  loc_D0CBA7: FFreeAd var_15C = ""
  loc_D0CBAE: FFree1Var var_180 = ""
  loc_D0CBB1: FLdRfVar var_180
  loc_D0CBB4: FLdRfVar var_170
  loc_D0CBB7: LitVarStr var_16C, "ImpoLade"
  loc_D0CBBC: PopAdLdVar
  loc_D0CBBD: FLdRfVar var_15C
  loc_D0CBC0: FLdPr Me
  loc_D0CBC3: MemLdPr global_68
  loc_D0CBC6:  = Me.Fields
  loc_D0CBCB: FLdPr var_15C
  loc_D0CBCE: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CBD3: FLdPr var_170
  loc_D0CBD6:  = Me.Value
  loc_D0CBDB: FLdRfVar var_180
  loc_D0CBDE: FnCDblVar
  loc_D0CBE0: FStFPR8 var_C8
  loc_D0CBE3: FFreeAd var_15C = ""
  loc_D0CBEA: FFree1Var var_180 = ""
  loc_D0CBED: FLdRfVar var_180
  loc_D0CBF0: FLdRfVar var_170
  loc_D0CBF3: LitVarStr var_16C, "CodiSubr"
  loc_D0CBF8: PopAdLdVar
  loc_D0CBF9: FLdRfVar var_15C
  loc_D0CBFC: FLdPr Me
  loc_D0CBFF: MemLdPr global_68
  loc_D0CC02:  = Me.Fields
  loc_D0CC07: FLdPr var_15C
  loc_D0CC0A: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CC0F: FLdPr var_170
  loc_D0CC12:  = Me.Value
  loc_D0CC17: FLdRfVar var_180
  loc_D0CC1A: FnCLngVar
  loc_D0CC1C: LitI4 &H3E7
  loc_D0CC21: NeI4
  loc_D0CC22: FFreeAd var_15C = ""
  loc_D0CC29: FFree1Var var_180 = ""
  loc_D0CC2C: BranchF loc_D0CCDF
  loc_D0CC2F: FLdRfVar var_180
  loc_D0CC32: FLdRfVar var_170
  loc_D0CC35: LitVarStr var_16C, "ImpoLade"
  loc_D0CC3A: PopAdLdVar
  loc_D0CC3B: FLdRfVar var_15C
  loc_D0CC3E: FLdPr Me
  loc_D0CC41: MemLdPr global_68
  loc_D0CC44:  = Me.Fields
  loc_D0CC49: FLdPr var_15C
  loc_D0CC4C: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CC51: FLdPr var_170
  loc_D0CC54:  = Me.Value
  loc_D0CC59: FLdRfVar var_1A0
  loc_D0CC5C: FLdRfVar var_1F8
  loc_D0CC5F: LitVarStr var_190, "ExceLade"
  loc_D0CC64: PopAdLdVar
  loc_D0CC65: FLdRfVar var_1E4
  loc_D0CC68: FLdPr Me
  loc_D0CC6B: MemLdPr global_68
  loc_D0CC6E:  = Me.Fields
  loc_D0CC73: FLdPr var_1E4
  loc_D0CC76: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CC7B: FLdPr var_1F8
  loc_D0CC7E:  = Me.Value
  loc_D0CC83: LitI4 2
  loc_D0CC88: FLdFPR8 var_D0
  loc_D0CC8B: FLdRfVar var_180
  loc_D0CC8E: FnCDblVar
  loc_D0CC90: FLdRfVar var_1A0
  loc_D0CC93: FnCDblVar
  loc_D0CC95: SubR4
  loc_D0CC96: FLdFPR8 var_E8
  loc_D0CC99: SubR4
  loc_D0CC9A: FLdFPR8 arg_BC
  loc_D0CC9D: MulR8
  loc_D0CC9E: LitI2_Byte &H64
  loc_D0CCA0: CR8I2
  loc_D0CCA1: DivR8
  loc_D0CCA2: AddR8
  loc_D0CCA3: CVarR8
  loc_D0CCA7: FLdRfVar var_1C0
  loc_D0CCAA: ImpAdCallFPR4  = Round(, )
  loc_D0CCAF: FLdRfVar var_1C0
  loc_D0CCB2: CR4Var
  loc_D0CCB3: FStFPR8 var_D0
  loc_D0CCB6: FFreeAd var_15C = "": var_170 = "": var_1E4 = ""
  loc_D0CCC1: FFreeVar var_180 = "": var_1A0 = "": var_1B0 = ""
  loc_D0CCCC: FLdI2 var_118
  loc_D0CCCF: LitI2_Byte 1
  loc_D0CCD1: GtI2
  loc_D0CCD2: BranchF loc_D0CCDF
  loc_D0CCD5: FLdFPR8 var_D0
  loc_D0CCD8: FLdFPR8 var_E8
  loc_D0CCDB: AddR8
  loc_D0CCDC: FStFPR8 var_D0
  loc_D0CCDF: FLdRfVar var_180
  loc_D0CCE2: FLdRfVar var_170
  loc_D0CCE5: LitVarStr var_16C, "CodiSubr"
  loc_D0CCEA: PopAdLdVar
  loc_D0CCEB: FLdRfVar var_15C
  loc_D0CCEE: FLdPr Me
  loc_D0CCF1: MemLdPr global_68
  loc_D0CCF4:  = Me.Fields
  loc_D0CCF9: FLdPr var_15C
  loc_D0CCFC: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CD01: FLdPr var_170
  loc_D0CD04:  = Me.Value
  loc_D0CD09: FLdRfVar var_180
  loc_D0CD0C: FnCLngVar
  loc_D0CD0E: LitI4 &H3E7
  loc_D0CD13: EqI4
  loc_D0CD14: FFreeAd var_15C = ""
  loc_D0CD1B: FFree1Var var_180 = ""
  loc_D0CD1E: BranchF loc_D0CD6A
  loc_D0CD21: FLdI2 var_118
  loc_D0CD24: LitI2_Byte 1
  loc_D0CD26: GtI2
  loc_D0CD27: BranchF loc_D0CD6A
  loc_D0CD2A: FLdRfVar var_180
  loc_D0CD2D: FLdRfVar var_170
  loc_D0CD30: LitVarStr var_16C, "ImpoLade"
  loc_D0CD35: PopAdLdVar
  loc_D0CD36: FLdRfVar var_15C
  loc_D0CD39: FLdPr Me
  loc_D0CD3C: MemLdPr global_68
  loc_D0CD3F:  = Me.Fields
  loc_D0CD44: FLdPr var_15C
  loc_D0CD47: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CD4C: FLdPr var_170
  loc_D0CD4F:  = Me.Value
  loc_D0CD54: FLdFPR8 var_D0
  loc_D0CD57: FLdRfVar var_180
  loc_D0CD5A: FnCDblVar
  loc_D0CD5C: AddR8
  loc_D0CD5D: FStFPR8 var_D0
  loc_D0CD60: FFreeAd var_15C = ""
  loc_D0CD67: FFree1Var var_180 = ""
  loc_D0CD6A: FLdFPR8 var_C8
  loc_D0CD6D: FLdFPR8 var_D0
  loc_D0CD70: SubR4
  loc_D0CD71: FLdFPR8 var_D8
  loc_D0CD74: SubR4
  loc_D0CD75: FStFPR8 var_E0
  loc_D0CD78: FLdFPR8 var_F8
  loc_D0CD7B: FLdFPR8 var_C8
  loc_D0CD7E: AddR8
  loc_D0CD7F: FStFPR8 var_F8
  loc_D0CD82: FLdFPR8 var_100
  loc_D0CD85: FLdFPR8 var_D0
  loc_D0CD88: AddR8
  loc_D0CD89: FStFPR8 var_100
  loc_D0CD8C: FLdFPR8 var_108
  loc_D0CD8F: FLdFPR8 var_D8
  loc_D0CD92: AddR8
  loc_D0CD93: FStFPR8 var_108
  loc_D0CD96: LitI2_Byte 0
  loc_D0CD98: CR8I2
  loc_D0CD99: FStFPR8 var_110
  loc_D0CD9C: ILdRf var_114
  loc_D0CD9F: LitStr " INSERT INTO liandeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLade,ImpoLade,DecaLade,ExceLade,TotaLade) "
  loc_D0CDA2: ConcatStr
  loc_D0CDA3: FStStrNoPop var_11C
  loc_D0CDA6: LitStr " VALUES ("
  loc_D0CDA9: ConcatStr
  loc_D0CDAA: CVarStr var_1A0
  loc_D0CDAD: FLdRfVar var_180
  loc_D0CDB0: FLdRfVar var_170
  loc_D0CDB3: LitVarStr var_16C, "PeriLiqu"
  loc_D0CDB8: PopAdLdVar
  loc_D0CDB9: FLdRfVar var_15C
  loc_D0CDBC: FLdPr Me
  loc_D0CDBF: MemLdPr global_68
  loc_D0CDC2:  = Me.Fields
  loc_D0CDC7: FLdPr var_15C
  loc_D0CDCA: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CDCF: FLdPr var_170
  loc_D0CDD2:  = Me.Value
  loc_D0CDD7: FLdRfVar var_180
  loc_D0CDDA: ConcatVar var_1B0
  loc_D0CDDE: LitVarStr var_190, ","
  loc_D0CDE3: ConcatVar var_1C0
  loc_D0CDE7: FLdI2 var_118
  loc_D0CDEA: CVarI2 var_1D0
  loc_D0CDED: ConcatVar var_1E0
  loc_D0CDF1: LitVarStr var_1F4, ","
  loc_D0CDF6: ConcatVar var_208
  loc_D0CDFA: FLdRfVar var_218
  loc_D0CDFD: FLdRfVar var_1F8
  loc_D0CE00: LitVarStr var_228, "CodiTili"
  loc_D0CE05: PopAdLdVar
  loc_D0CE06: FLdRfVar var_1E4
  loc_D0CE09: FLdPr Me
  loc_D0CE0C: MemLdPr global_68
  loc_D0CE0F:  = Me.Fields
  loc_D0CE14: FLdPr var_1E4
  loc_D0CE17: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CE1C: FLdPr var_1F8
  loc_D0CE1F:  = Me.Value
  loc_D0CE24: FLdRfVar var_218
  loc_D0CE27: ConcatVar var_238
  loc_D0CE2B: LitVarStr var_24C, ","
  loc_D0CE30: ConcatVar var_260
  loc_D0CE34: FLdRfVar var_270
  loc_D0CE37: FLdRfVar var_250
  loc_D0CE3A: LitVarStr var_280, "NumeLiqu"
  loc_D0CE3F: PopAdLdVar
  loc_D0CE40: FLdRfVar var_23C
  loc_D0CE43: FLdPr Me
  loc_D0CE46: MemLdPr global_68
  loc_D0CE49:  = Me.Fields
  loc_D0CE4E: FLdPr var_23C
  loc_D0CE51: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CE56: FLdPr var_250
  loc_D0CE59:  = Me.Value
  loc_D0CE5E: FLdRfVar var_270
  loc_D0CE61: ConcatVar var_290
  loc_D0CE65: LitVarStr var_2A4, ","
  loc_D0CE6A: ConcatVar var_2B8
  loc_D0CE6E: FLdRfVar var_2C8
  loc_D0CE71: FLdRfVar var_2A8
  loc_D0CE74: LitVarStr var_2D8, "CodiCome"
  loc_D0CE79: PopAdLdVar
  loc_D0CE7A: FLdRfVar var_294
  loc_D0CE7D: FLdPr Me
  loc_D0CE80: MemLdPr global_68
  loc_D0CE83:  = Me.Fields
  loc_D0CE88: FLdPr var_294
  loc_D0CE8B: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CE90: FLdPr var_2A8
  loc_D0CE93:  = Me.Value
  loc_D0CE98: FLdRfVar var_2C8
  loc_D0CE9B: ConcatVar var_2E8
  loc_D0CE9F: LitVarStr var_2FC, ",'"
  loc_D0CEA4: ConcatVar var_310
  loc_D0CEA8: FLdRfVar var_320
  loc_D0CEAB: FLdRfVar var_300
  loc_D0CEAE: LitVarStr var_330, "CodiConc"
  loc_D0CEB3: PopAdLdVar
  loc_D0CEB4: FLdRfVar var_2EC
  loc_D0CEB7: FLdPr Me
  loc_D0CEBA: MemLdPr global_68
  loc_D0CEBD:  = Me.Fields
  loc_D0CEC2: FLdPr var_2EC
  loc_D0CEC5: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CECA: FLdPr var_300
  loc_D0CECD:  = Me.Value
  loc_D0CED2: FLdRfVar var_320
  loc_D0CED5: ConcatVar var_340
  loc_D0CED9: LitVarStr var_350, "',"
  loc_D0CEDE: ConcatVar var_360
  loc_D0CEE2: FLdUI1
  loc_D0CEE6: CVarUI1
  loc_D0CEEA: ConcatVar var_380
  loc_D0CEEE: LitVarStr var_390, ","
  loc_D0CEF3: ConcatVar var_3A0
  loc_D0CEF7: FLdRfVar var_3CC
  loc_D0CEFA: FLdRfVar var_3BC
  loc_D0CEFD: LitVarStr var_3B8, "CodiRamo"
  loc_D0CF02: PopAdLdVar
  loc_D0CF03: FLdRfVar var_3A8
  loc_D0CF06: FLdPr Me
  loc_D0CF09: MemLdPr global_68
  loc_D0CF0C:  = Me.Fields
  loc_D0CF11: FLdPr var_3A8
  loc_D0CF14: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CF19: FLdPr var_3BC
  loc_D0CF1C:  = Me.Value
  loc_D0CF21: FLdRfVar var_3CC
  loc_D0CF24: ConcatVar var_3DC
  loc_D0CF28: LitVarStr var_3EC, ",'"
  loc_D0CF2D: ConcatVar var_3FC
  loc_D0CF31: FLdRfVar var_424
  loc_D0CF34: FLdRfVar var_414
  loc_D0CF37: LitVarStr var_410, "CodiRubr"
  loc_D0CF3C: PopAdLdVar
  loc_D0CF3D: FLdRfVar var_400
  loc_D0CF40: FLdPr Me
  loc_D0CF43: MemLdPr global_68
  loc_D0CF46:  = Me.Fields
  loc_D0CF4B: FLdPr var_400
  loc_D0CF4E: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CF53: FLdPr var_414
  loc_D0CF56:  = Me.Value
  loc_D0CF5B: FLdRfVar var_424
  loc_D0CF5E: ConcatVar var_434
  loc_D0CF62: LitVarStr var_444, "',"
  loc_D0CF67: ConcatVar var_454
  loc_D0CF6B: FLdRfVar var_47C
  loc_D0CF6E: FLdRfVar var_46C
  loc_D0CF71: LitVarStr var_468, "PeriOrde"
  loc_D0CF76: PopAdLdVar
  loc_D0CF77: FLdRfVar var_458
  loc_D0CF7A: FLdPr Me
  loc_D0CF7D: MemLdPr global_68
  loc_D0CF80:  = Me.Fields
  loc_D0CF85: FLdPr var_458
  loc_D0CF88: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CF8D: FLdPr var_46C
  loc_D0CF90:  = Me.Value
  loc_D0CF95: FLdRfVar var_47C
  loc_D0CF98: ConcatVar var_48C
  loc_D0CF9C: LitVarStr var_49C, ","
  loc_D0CFA1: ConcatVar var_4AC
  loc_D0CFA5: FLdRfVar var_4D4
  loc_D0CFA8: FLdRfVar var_4C4
  loc_D0CFAB: LitVarStr var_4C0, "CodiSubr"
  loc_D0CFB0: PopAdLdVar
  loc_D0CFB1: FLdRfVar var_4B0
  loc_D0CFB4: FLdPr Me
  loc_D0CFB7: MemLdPr global_68
  loc_D0CFBA:  = Me.Fields
  loc_D0CFBF: FLdPr var_4B0
  loc_D0CFC2: from_stack_2 = Me.Item(from_stack_1)
  loc_D0CFC7: FLdPr var_4C4
  loc_D0CFCA:  = Me.Value
  loc_D0CFCF: FLdRfVar var_4D4
  loc_D0CFD2: ConcatVar var_4E4
  loc_D0CFD6: LitVarStr var_4F4, ","
  loc_D0CFDB: ConcatVar var_504
  loc_D0CFDF: FLdRfVar var_52C
  loc_D0CFE2: FLdRfVar var_51C
  loc_D0CFE5: LitVarStr var_518, "NumeLade"
  loc_D0CFEA: PopAdLdVar
  loc_D0CFEB: FLdRfVar var_508
  loc_D0CFEE: FLdPr Me
  loc_D0CFF1: MemLdPr global_68
  loc_D0CFF4:  = Me.Fields
  loc_D0CFF9: FLdPr var_508
  loc_D0CFFC: from_stack_2 = Me.Item(from_stack_1)
  loc_D0D001: FLdPr var_51C
  loc_D0D004:  = Me.Value
  loc_D0D009: FLdRfVar var_52C
  loc_D0D00C: ConcatVar var_53C
  loc_D0D010: LitVarStr var_54C, ","
  loc_D0D015: ConcatVar var_55C
  loc_D0D019: LitI4 0
  loc_D0D01E: LitI4 -1
  loc_D0D023: LitI4 1
  loc_D0D028: LitStr "."
  loc_D0D02B: LitStr ","
  loc_D0D02E: FLdFPR8 var_C8
  loc_D0D031: CStrR8
  loc_D0D033: FStStrNoPop var_120
  loc_D0D036: ImpAdCallI2 Replace(, , , , , )
  loc_D0D03B: CVarStr var_56C
  loc_D0D03E: ConcatVar var_57C
  loc_D0D042: LitVarStr var_58C, ","
  loc_D0D047: ConcatVar var_59C
  loc_D0D04B: LitI4 0
  loc_D0D050: LitI4 -1
  loc_D0D055: LitI4 1
  loc_D0D05A: LitStr "."
  loc_D0D05D: LitStr ","
  loc_D0D060: FLdFPR8 var_D0
  loc_D0D063: CStrR8
  loc_D0D065: FStStrNoPop var_124
  loc_D0D068: ImpAdCallI2 Replace(, , , , , )
  loc_D0D06D: CVarStr var_5AC
  loc_D0D070: ConcatVar var_5BC
  loc_D0D074: LitVarStr var_5CC, ","
  loc_D0D079: ConcatVar var_5DC
  loc_D0D07D: LitI4 0
  loc_D0D082: LitI4 -1
  loc_D0D087: LitI4 1
  loc_D0D08C: LitStr "."
  loc_D0D08F: LitStr ","
  loc_D0D092: FLdFPR8 var_D8
  loc_D0D095: CStrR8
  loc_D0D097: FStStrNoPop var_128
  loc_D0D09A: ImpAdCallI2 Replace(, , , , , )
  loc_D0D09F: CVarStr var_5EC
  loc_D0D0A2: ConcatVar var_5FC
  loc_D0D0A6: LitVarStr var_60C, ","
  loc_D0D0AB: ConcatVar var_61C
  loc_D0D0AF: LitI4 0
  loc_D0D0B4: LitI4 -1
  loc_D0D0B9: LitI4 1
  loc_D0D0BE: LitStr "."
  loc_D0D0C1: LitStr ","
  loc_D0D0C4: FLdFPR8 var_E0
  loc_D0D0C7: CStrR8
  loc_D0D0C9: FStStrNoPop var_12C
  loc_D0D0CC: ImpAdCallI2 Replace(, , , , , )
  loc_D0D0D1: CVarStr var_62C
  loc_D0D0D4: ConcatVar var_63C
  loc_D0D0D8: LitVarStr var_64C, ");"
  loc_D0D0DD: ConcatVar var_65C
  loc_D0D0E1: CStrVarTmp
  loc_D0D0E2: FStStr var_114
  loc_D0D0E5: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_D0D0F2: FFreeAd var_15C = "": var_170 = "": var_1E4 = "": var_1F8 = "": var_23C = "": var_250 = "": var_294 = "": var_2A8 = "": var_2EC = "": var_300 = "": var_3A8 = "": var_3BC = "": var_400 = "": var_414 = "": var_458 = "": var_46C = "": var_4B0 = "": var_4C4 = "": var_508 = ""
  loc_D0D11D: FFreeVar var_4E4 = "": var_504 = "": var_52C = "": var_53C = "": var_55C = "": var_56C = "": var_57C = "": var_59C = "": var_5AC = "": var_5BC = "": var_5DC = "": var_5EC = "": var_5FC = "": var_61C = "": var_62C = "": var_63C = "": var_65C = "": var_1A0 = "": var_180 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_208 = "": var_218 = "": var_238 = "": var_260 = "": var_270 = "": var_290 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_310 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3CC = "": var_3DC = "": var_3FC = "": var_424 = "": var_434 = "": var_454 = "": var_47C = "": var_48C = "": var_4AC = ""
  loc_D0D17E: FLdRfVar var_118
  loc_D0D181: NextI2 var_3A4, loc_D0CB09
  loc_D0D186: FLdPr Me
  loc_D0D189: MemLdPr global_68
  loc_D0D18C: Me.MoveNext
  loc_D0D191: Branch loc_D0CA8C
  loc_D0D194: FLdFPR8 var_F8
  loc_D0D197: FLdFPR8 var_100
  loc_D0D19A: SubR4
  loc_D0D19B: FLdFPR8 var_108
  loc_D0D19E: SubR4
  loc_D0D19F: FLdFPR8 var_110
  loc_D0D1A2: SubR4
  loc_D0D1A3: FStFPR8 arg_60
  loc_D0D1A6: ILdRf var_114
  loc_D0D1A9: LitStr " INSERT INTO liquante (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,ActuLian,TipoLian,FealLian,FeveLian,DeudLian,ImpoLian,CrafLian,ExenLian,DescLian,GastLian,TotaLian,CucuPers,CodiRuta,CodiCall,NucaLian,CallLian,CodiBarr,ManzLian,CasaLian,UbicLian,CodiLoca,LocaLian,CopoLian) "
  loc_D0D1AC: ConcatStr
  loc_D0D1AD: FStStrNoPop var_11C
  loc_D0D1B0: LitStr " VALUES ("
  loc_D0D1B3: ConcatStr
  loc_D0D1B4: FStStrNoPop var_120
  loc_D0D1B7: FLdI2 PeriLiqu
  loc_D0D1BA: CStrUI1
  loc_D0D1BC: FStStrNoPop var_124
  loc_D0D1BF: ConcatStr
  loc_D0D1C0: FStStrNoPop var_128
  loc_D0D1C3: LitStr ","
  loc_D0D1C6: ConcatStr
  loc_D0D1C7: FStStrNoPop var_12C
  loc_D0D1CA: FLdUI1
  loc_D0D1CE: CStrI2
  loc_D0D1D0: FStStrNoPop var_130
  loc_D0D1D3: ConcatStr
  loc_D0D1D4: FStStrNoPop var_134
  loc_D0D1D7: LitStr ","
  loc_D0D1DA: ConcatStr
  loc_D0D1DB: FStStrNoPop var_138
  loc_D0D1DE: FLdUI1
  loc_D0D1E2: CStrI2
  loc_D0D1E4: FStStrNoPop var_13C
  loc_D0D1E7: ConcatStr
  loc_D0D1E8: FStStrNoPop var_140
  loc_D0D1EB: LitStr ","
  loc_D0D1EE: ConcatStr
  loc_D0D1EF: FStStrNoPop var_144
  loc_D0D1F2: FLdI2 NumeLiqu
  loc_D0D1F5: CStrUI1
  loc_D0D1F7: FStStrNoPop var_148
  loc_D0D1FA: ConcatStr
  loc_D0D1FB: FStStrNoPop var_14C
  loc_D0D1FE: LitStr ","
  loc_D0D201: ConcatStr
  loc_D0D202: FStStrNoPop var_150
  loc_D0D205: ILdRf CodiCome
  loc_D0D208: CStrI4
  loc_D0D20A: FStStrNoPop var_660
  loc_D0D20D: ConcatStr
  loc_D0D20E: FStStrNoPop var_664
  loc_D0D211: LitStr ",'"
  loc_D0D214: ConcatStr
  loc_D0D215: FStStrNoPop var_668
  loc_D0D218: ILdRf var_88
  loc_D0D21B: ConcatStr
  loc_D0D21C: FStStrNoPop var_66C
  loc_D0D21F: LitStr "',"
  loc_D0D222: ConcatStr
  loc_D0D223: FStStrNoPop var_670
  loc_D0D226: FLdUI1
  loc_D0D22A: CStrI2
  loc_D0D22C: FStStrNoPop var_674
  loc_D0D22F: ConcatStr
  loc_D0D230: FStStrNoPop var_678
  loc_D0D233: LitStr ",'No','"
  loc_D0D236: ConcatStr
  loc_D0D237: FStStrNoPop var_67C
  loc_D0D23A: ILdRf var_8C
  loc_D0D23D: ConcatStr
  loc_D0D23E: FStStrNoPop var_680
  loc_D0D241: LitStr "','"
  loc_D0D244: ConcatStr
  loc_D0D245: FStStrNoPop var_684
  loc_D0D248: LitI4 1
  loc_D0D24D: LitI4 1
  loc_D0D252: LitVarStr var_190, "yyyy-mm-dd"
  loc_D0D257: FStVarCopyObj var_180
  loc_D0D25A: FLdRfVar var_180
  loc_D0D25D: FLdRfVar arg_9C
  loc_D0D260: CVarRef
  loc_D0D265: ImpAdCallI2 Format$(, )
  loc_D0D26A: FStStrNoPop var_688
  loc_D0D26D: ConcatStr
  loc_D0D26E: FStStrNoPop var_68C
  loc_D0D271: LitStr "','"
  loc_D0D274: ConcatStr
  loc_D0D275: FStStrNoPop var_690
  loc_D0D278: LitI4 1
  loc_D0D27D: LitI4 1
  loc_D0D282: LitVarStr var_1F4, "yyyy-mm-dd"
  loc_D0D287: FStVarCopyObj var_1A0
  loc_D0D28A: FLdRfVar var_1A0
  loc_D0D28D: FLdRfVar var_90
  loc_D0D290: CVarRef
  loc_D0D295: ImpAdCallI2 Format$(, )
  loc_D0D29A: FStStrNoPop var_694
  loc_D0D29D: ConcatStr
  loc_D0D29E: FStStrNoPop var_698
  loc_D0D2A1: LitStr "',"
  loc_D0D2A4: ConcatStr
  loc_D0D2A5: FStStrNoPop var_6A0
  loc_D0D2A8: LitI4 0
  loc_D0D2AD: LitI4 -1
  loc_D0D2B2: LitI4 1
  loc_D0D2B7: LitStr "."
  loc_D0D2BA: LitStr ","
  loc_D0D2BD: FLdFPR8 DeudLian
  loc_D0D2C0: CStrR8
  loc_D0D2C2: FStStrNoPop var_69C
  loc_D0D2C5: ImpAdCallI2 Replace(, , , , , )
  loc_D0D2CA: FStStrNoPop var_6A4
  loc_D0D2CD: ConcatStr
  loc_D0D2CE: FStStrNoPop var_6A8
  loc_D0D2D1: LitStr ","
  loc_D0D2D4: ConcatStr
  loc_D0D2D5: FStStrNoPop var_6B0
  loc_D0D2D8: LitI4 0
  loc_D0D2DD: LitI4 -1
  loc_D0D2E2: LitI4 1
  loc_D0D2E7: LitStr "."
  loc_D0D2EA: LitStr ","
  loc_D0D2ED: FLdFPR8 var_F8
  loc_D0D2F0: CStrR8
  loc_D0D2F2: FStStrNoPop var_6AC
  loc_D0D2F5: ImpAdCallI2 Replace(, , , , , )
  loc_D0D2FA: FStStrNoPop var_6B4
  loc_D0D2FD: ConcatStr
  loc_D0D2FE: FStStrNoPop var_6B8
  loc_D0D301: LitStr ","
  loc_D0D304: ConcatStr
  loc_D0D305: FStStrNoPop var_6C0
  loc_D0D308: LitI4 0
  loc_D0D30D: LitI4 -1
  loc_D0D312: LitI4 1
  loc_D0D317: LitStr "."
  loc_D0D31A: LitStr ","
  loc_D0D31D: FLdFPR8 var_110
  loc_D0D320: CStrR8
  loc_D0D322: FStStrNoPop var_6BC
  loc_D0D325: ImpAdCallI2 Replace(, , , , , )
  loc_D0D32A: FStStrNoPop var_6C4
  loc_D0D32D: ConcatStr
  loc_D0D32E: FStStrNoPop var_6C8
  loc_D0D331: LitStr ","
  loc_D0D334: ConcatStr
  loc_D0D335: FStStrNoPop var_6D0
  loc_D0D338: LitI4 0
  loc_D0D33D: LitI4 -1
  loc_D0D342: LitI4 1
  loc_D0D347: LitStr "."
  loc_D0D34A: LitStr ","
  loc_D0D34D: FLdFPR8 var_108
  loc_D0D350: CStrR8
  loc_D0D352: FStStrNoPop var_6CC
  loc_D0D355: ImpAdCallI2 Replace(, , , , , )
  loc_D0D35A: FStStrNoPop var_6D4
  loc_D0D35D: ConcatStr
  loc_D0D35E: FStStrNoPop var_6D8
  loc_D0D361: LitStr ","
  loc_D0D364: ConcatStr
  loc_D0D365: FStStrNoPop var_6E0
  loc_D0D368: LitI4 0
  loc_D0D36D: LitI4 -1
  loc_D0D372: LitI4 1
  loc_D0D377: LitStr "."
  loc_D0D37A: LitStr ","
  loc_D0D37D: FLdFPR8 var_100
  loc_D0D380: CStrR8
  loc_D0D382: FStStrNoPop var_6DC
  loc_D0D385: ImpAdCallI2 Replace(, , , , , )
  loc_D0D38A: FStStrNoPop var_6E4
  loc_D0D38D: ConcatStr
  loc_D0D38E: FStStrNoPop var_6E8
  loc_D0D391: LitStr ","
  loc_D0D394: ConcatStr
  loc_D0D395: FStStrNoPop var_6F0
  loc_D0D398: LitI4 0
  loc_D0D39D: LitI4 -1
  loc_D0D3A2: LitI4 1
  loc_D0D3A7: LitStr "."
  loc_D0D3AA: LitStr ","
  loc_D0D3AD: FLdFPR8 arg_58
  loc_D0D3B0: CStrR8
  loc_D0D3B2: FStStrNoPop var_6EC
  loc_D0D3B5: ImpAdCallI2 Replace(, , , , , )
  loc_D0D3BA: FStStrNoPop var_6F4
  loc_D0D3BD: ConcatStr
  loc_D0D3BE: FStStrNoPop var_6F8
  loc_D0D3C1: LitStr ","
  loc_D0D3C4: ConcatStr
  loc_D0D3C5: FStStrNoPop var_700
  loc_D0D3C8: LitI4 0
  loc_D0D3CD: LitI4 -1
  loc_D0D3D2: LitI4 1
  loc_D0D3D7: LitStr "."
  loc_D0D3DA: LitStr ","
  loc_D0D3DD: FLdFPR8 arg_60
  loc_D0D3E0: CStrR8
  loc_D0D3E2: FStStrNoPop var_6FC
  loc_D0D3E5: ImpAdCallI2 Replace(, , , , , )
  loc_D0D3EA: FStStrNoPop var_704
  loc_D0D3ED: ConcatStr
  loc_D0D3EE: FStStrNoPop var_708
  loc_D0D3F1: LitStr ",'"
  loc_D0D3F4: ConcatStr
  loc_D0D3F5: FStStrNoPop var_70C
  loc_D0D3F8: ILdRf var_94
  loc_D0D3FB: ConcatStr
  loc_D0D3FC: FStStrNoPop var_710
  loc_D0D3FF: LitStr "',"
  loc_D0D402: ConcatStr
  loc_D0D403: FStStrNoPop var_714
  loc_D0D406: FLdI2 arg_6C
  loc_D0D409: CStrUI1
  loc_D0D40B: FStStrNoPop var_718
  loc_D0D40E: ConcatStr
  loc_D0D40F: FStStrNoPop var_71C
  loc_D0D412: LitStr ","
  loc_D0D415: ConcatStr
  loc_D0D416: FStStrNoPop var_720
  loc_D0D419: ILdRf arg_70
  loc_D0D41C: CStrI4
  loc_D0D41E: FStStrNoPop var_724
  loc_D0D421: ConcatStr
  loc_D0D422: FStStrNoPop var_728
  loc_D0D425: LitStr ","
  loc_D0D428: ConcatStr
  loc_D0D429: FStStrNoPop var_72C
  loc_D0D42C: ILdRf arg_74
  loc_D0D42F: CStrI4
  loc_D0D431: FStStrNoPop var_730
  loc_D0D434: ConcatStr
  loc_D0D435: FStStrNoPop var_734
  loc_D0D438: LitStr ",'"
  loc_D0D43B: ConcatStr
  loc_D0D43C: FStStrNoPop var_738
  loc_D0D43F: LitI4 0
  loc_D0D444: LitI4 -1
  loc_D0D449: LitI4 1
  loc_D0D44E: LitStr " "
  loc_D0D451: LitStr "'"
  loc_D0D454: ILdRf var_98
  loc_D0D457: ImpAdCallI2 Replace(, , , , , )
  loc_D0D45C: FStStrNoPop var_73C
  loc_D0D45F: ConcatStr
  loc_D0D460: FStStrNoPop var_740
  loc_D0D463: LitStr "',"
  loc_D0D466: ConcatStr
  loc_D0D467: FStStrNoPop var_744
  loc_D0D46A: FLdI2 arg_7C
  loc_D0D46D: CStrUI1
  loc_D0D46F: FStStrNoPop var_748
  loc_D0D472: ConcatStr
  loc_D0D473: FStStrNoPop var_74C
  loc_D0D476: LitStr ",'"
  loc_D0D479: ConcatStr
  loc_D0D47A: FStStrNoPop var_750
  loc_D0D47D: ILdRf var_A0
  loc_D0D480: ConcatStr
  loc_D0D481: FStStrNoPop var_754
  loc_D0D484: LitStr "','"
  loc_D0D487: ConcatStr
  loc_D0D488: FStStrNoPop var_758
  loc_D0D48B: ILdRf var_A4
  loc_D0D48E: ConcatStr
  loc_D0D48F: FStStrNoPop var_75C
  loc_D0D492: LitStr "','"
  loc_D0D495: ConcatStr
  loc_D0D496: FStStrNoPop var_760
  loc_D0D499: ILdRf var_A8
  loc_D0D49C: ConcatStr
  loc_D0D49D: FStStrNoPop var_764
  loc_D0D4A0: LitStr "',"
  loc_D0D4A3: ConcatStr
  loc_D0D4A4: FStStrNoPop var_768
  loc_D0D4A7: FLdI2 arg_90
  loc_D0D4AA: CStrUI1
  loc_D0D4AC: FStStrNoPop var_76C
  loc_D0D4AF: ConcatStr
  loc_D0D4B0: FStStrNoPop var_770
  loc_D0D4B3: LitStr ",'"
  loc_D0D4B6: ConcatStr
  loc_D0D4B7: FStStrNoPop var_774
  loc_D0D4BA: ILdRf var_AC
  loc_D0D4BD: ConcatStr
  loc_D0D4BE: FStStrNoPop var_778
  loc_D0D4C1: LitStr "','"
  loc_D0D4C4: ConcatStr
  loc_D0D4C5: FStStrNoPop var_77C
  loc_D0D4C8: ILdRf var_B0
  loc_D0D4CB: ConcatStr
  loc_D0D4CC: FStStrNoPop var_780
  loc_D0D4CF: LitStr "');"
  loc_D0D4D2: ConcatStr
  loc_D0D4D3: FStStr var_114
  loc_D0D4D6: FFreeStr var_718 = "": var_71C = "": var_720 = "": var_724 = "": var_728 = "": var_72C = "": var_730 = "": var_734 = "": var_738 = "": var_73C = "": var_740 = "": var_744 = "": var_748 = "": var_74C = "": var_750 = "": var_754 = "": var_758 = "": var_75C = "": var_760 = "": var_764 = "": var_768 = "": var_76C = "": var_770 = "": var_774 = "": var_778 = "": var_77C = "": var_780 = "": var_6A0 = "": var_6A4 = "": var_6A8 = "": var_6AC = "": var_6B0 = "": var_6B4 = "": var_6B8 = "": var_6BC = "": var_6C0 = "": var_6C4 = "": var_6C8 = "": var_6CC = "": var_6D0 = "": var_6D4 = "": var_6D8 = "": var_6DC = "": var_6E0 = "": var_6E4 = "": var_6E8 = "": var_6EC = "": var_6F0 = "": var_6F4 = "": var_6F8 = "": var_6FC = "": var_700 = "": var_704 = "": var_708 = "": var_70C = "": var_710 = "": var_714 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = "": var_678 = "": var_67C = "": var_680 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = "": var_698 = ""
  loc_D0D587: FFreeVar var_180 = ""
  loc_D0D58E: Branch loc_D0DAD3
  loc_D0D591: LitI2_Byte 0
  loc_D0D593: CR8I2
  loc_D0D594: FStFPR8 var_100
  loc_D0D597: LitI2_Byte 0
  loc_D0D599: CR8I2
  loc_D0D59A: FStFPR8 var_108
  loc_D0D59D: LitI2_Byte 0
  loc_D0D59F: CR8I2
  loc_D0D5A0: FStFPR8 var_110
  loc_D0D5A3: FLdRfVar var_180
  loc_D0D5A6: FLdRfVar var_170
  loc_D0D5A9: LitVarStr var_16C, "CodiConc"
  loc_D0D5AE: PopAdLdVar
  loc_D0D5AF: FLdRfVar var_15C
  loc_D0D5B2: FLdPr Me
  loc_D0D5B5: MemLdPr global_64
  loc_D0D5B8:  = Me.Fields
  loc_D0D5BD: FLdPr var_15C
  loc_D0D5C0: from_stack_2 = Me.Item(from_stack_1)
  loc_D0D5C5: FLdPr var_170
  loc_D0D5C8:  = Me.Value
  loc_D0D5CD: FLdRfVar var_180
  loc_D0D5D0: LitVarStr var_190, "13030201"
  loc_D0D5D5: HardType
  loc_D0D5D6: EqVarBool
  loc_D0D5D8: FFreeAd var_15C = ""
  loc_D0D5DF: FFree1Var var_180 = ""
  loc_D0D5E2: BranchF loc_D0D624
  loc_D0D5E5: FLdRfVar var_180
  loc_D0D5E8: FLdRfVar var_170
  loc_D0D5EB: LitVarStr var_16C, "ImpoLian"
  loc_D0D5F0: PopAdLdVar
  loc_D0D5F1: FLdRfVar var_15C
  loc_D0D5F4: FLdPr Me
  loc_D0D5F7: MemLdPr global_64
  loc_D0D5FA:  = Me.Fields
  loc_D0D5FF: FLdPr var_15C
  loc_D0D602: from_stack_2 = Me.Item(from_stack_1)
  loc_D0D607: FLdPr var_170
  loc_D0D60A:  = Me.Value
  loc_D0D60F: FLdRfVar var_180
  loc_D0D612: FnCDblVar
  loc_D0D614: FStFPR8 var_F8
  loc_D0D617: FFreeAd var_15C = ""
  loc_D0D61E: FFree1Var var_180 = ""
  loc_D0D621: Branch loc_D0D664
  loc_D0D624: FLdRfVar var_180
  loc_D0D627: FLdRfVar var_170
  loc_D0D62A: LitVarStr var_16C, "ImpoLian"
  loc_D0D62F: PopAdLdVar
  loc_D0D630: FLdRfVar var_15C
  loc_D0D633: FLdPr Me
  loc_D0D636: MemLdPr global_64
  loc_D0D639:  = Me.Fields
  loc_D0D63E: FLdPr var_15C
  loc_D0D641: from_stack_2 = Me.Item(from_stack_1)
  loc_D0D646: FLdPr var_170
  loc_D0D649:  = Me.Value
  loc_D0D64E: FLdRfVar var_180
  loc_D0D651: FnCDblVar
  loc_D0D653: LitI2_Byte 6
  loc_D0D655: CR8I2
  loc_D0D656: MulR8
  loc_D0D657: FStFPR8 var_F8
  loc_D0D65A: FFreeAd var_15C = ""
  loc_D0D661: FFree1Var var_180 = ""
  loc_D0D664: LitI2_Byte 0
  loc_D0D666: CR8I2
  loc_D0D667: FStFPR8 var_108
  loc_D0D66A: LitI2_Byte 0
  loc_D0D66C: CR8I2
  loc_D0D66D: FStFPR8 var_110
  loc_D0D670: FLdFPR8 var_F8
  loc_D0D673: FLdFPR8 var_100
  loc_D0D676: SubR4
  loc_D0D677: FLdFPR8 var_110
  loc_D0D67A: SubR4
  loc_D0D67B: FLdFPR8 var_108
  loc_D0D67E: SubR4
  loc_D0D67F: FStFPR8 arg_60
  loc_D0D682: ILdRf var_114
  loc_D0D685: LitStr " INSERT INTO liquante (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,ActuLian,TipoLian,FealLian,FeveLian,DeudLian,ImpoLian,CrafLian,ExenLian,DescLian,GastLian,TotaLian,CucuPers,CodiRuta,CodiCall,NucaLian,CallLian,CodiBarr,ManzLian,CasaLian,UbicLian,CodiLoca,LocaLian,CopoLian) "
  loc_D0D688: ConcatStr
  loc_D0D689: FStStrNoPop var_11C
  loc_D0D68C: LitStr " VALUES ("
  loc_D0D68F: ConcatStr
  loc_D0D690: FStStrNoPop var_120
  loc_D0D693: FLdI2 PeriLiqu
  loc_D0D696: CStrUI1
  loc_D0D698: FStStrNoPop var_124
  loc_D0D69B: ConcatStr
  loc_D0D69C: FStStrNoPop var_128
  loc_D0D69F: LitStr ","
  loc_D0D6A2: ConcatStr
  loc_D0D6A3: FStStrNoPop var_12C
  loc_D0D6A6: FLdUI1
  loc_D0D6AA: CStrI2
  loc_D0D6AC: FStStrNoPop var_130
  loc_D0D6AF: ConcatStr
  loc_D0D6B0: FStStrNoPop var_134
  loc_D0D6B3: LitStr ","
  loc_D0D6B6: ConcatStr
  loc_D0D6B7: FStStrNoPop var_138
  loc_D0D6BA: FLdUI1
  loc_D0D6BE: CStrI2
  loc_D0D6C0: FStStrNoPop var_13C
  loc_D0D6C3: ConcatStr
  loc_D0D6C4: FStStrNoPop var_140
  loc_D0D6C7: LitStr ","
  loc_D0D6CA: ConcatStr
  loc_D0D6CB: FStStrNoPop var_144
  loc_D0D6CE: FLdI2 NumeLiqu
  loc_D0D6D1: CStrUI1
  loc_D0D6D3: FStStrNoPop var_148
  loc_D0D6D6: ConcatStr
  loc_D0D6D7: FStStrNoPop var_14C
  loc_D0D6DA: LitStr ","
  loc_D0D6DD: ConcatStr
  loc_D0D6DE: FStStrNoPop var_150
  loc_D0D6E1: ILdRf CodiCome
  loc_D0D6E4: CStrI4
  loc_D0D6E6: FStStrNoPop var_660
  loc_D0D6E9: ConcatStr
  loc_D0D6EA: FStStrNoPop var_664
  loc_D0D6ED: LitStr ",'"
  loc_D0D6F0: ConcatStr
  loc_D0D6F1: CVarStr var_1A0
  loc_D0D6F4: FLdRfVar var_180
  loc_D0D6F7: FLdRfVar var_170
  loc_D0D6FA: LitVarStr var_16C, "CodiConc"
  loc_D0D6FF: PopAdLdVar
  loc_D0D700: FLdRfVar var_15C
  loc_D0D703: FLdPr Me
  loc_D0D706: MemLdPr global_64
  loc_D0D709:  = Me.Fields
  loc_D0D70E: FLdPr var_15C
  loc_D0D711: from_stack_2 = Me.Item(from_stack_1)
  loc_D0D716: FLdPr var_170
  loc_D0D719:  = Me.Value
  loc_D0D71E: FLdRfVar var_180
  loc_D0D721: ConcatVar var_1B0
  loc_D0D725: LitVarStr var_190, "',"
  loc_D0D72A: ConcatVar var_1C0
  loc_D0D72E: FLdUI1
  loc_D0D732: CVarUI1
  loc_D0D736: ConcatVar var_1E0
  loc_D0D73A: LitVarStr var_1F4, ",'No','"
  loc_D0D73F: ConcatVar var_208
  loc_D0D743: ILdRf var_8C
  loc_D0D746: CVarStr var_228
  loc_D0D749: ConcatVar var_218
  loc_D0D74D: LitVarStr var_24C, "','"
  loc_D0D752: ConcatVar var_238
  loc_D0D756: LitI4 1
  loc_D0D75B: LitI4 1
  loc_D0D760: LitVarStr var_2A4, "yyyy-mm-dd"
  loc_D0D765: FStVarCopyObj var_260
  loc_D0D768: FLdRfVar var_260
  loc_D0D76B: FLdRfVar arg_9C
  loc_D0D76E: CVarRef
  loc_D0D773: ImpAdCallI2 Format$(, )
  loc_D0D778: CVarStr var_270
  loc_D0D77B: ConcatVar var_290
  loc_D0D77F: LitVarStr var_2D8, "','"
  loc_D0D784: ConcatVar var_2B8
  loc_D0D788: LitI4 1
  loc_D0D78D: LitI4 1
  loc_D0D792: LitVarStr var_330, "yyyy-mm-dd"
  loc_D0D797: FStVarCopyObj var_2C8
  loc_D0D79A: FLdRfVar var_2C8
  loc_D0D79D: FLdRfVar var_90
  loc_D0D7A0: CVarRef
  loc_D0D7A5: ImpAdCallI2 Format$(, )
  loc_D0D7AA: CVarStr var_2E8
  loc_D0D7AD: ConcatVar var_310
  loc_D0D7B1: LitVarStr var_350, "',"
  loc_D0D7B6: ConcatVar var_320
  loc_D0D7BA: LitI4 0
  loc_D0D7BF: LitI4 -1
  loc_D0D7C4: LitI4 1
  loc_D0D7C9: LitStr "."
  loc_D0D7CC: LitStr ","
  loc_D0D7CF: FLdFPR8 DeudLian
  loc_D0D7D2: CStrR8
  loc_D0D7D4: FStStrNoPop var_668
  loc_D0D7D7: ImpAdCallI2 Replace(, , , , , )
  loc_D0D7DC: CVarStr var_340
  loc_D0D7DF: ConcatVar var_360
  loc_D0D7E3: LitVarStr var_370, ","
  loc_D0D7E8: ConcatVar var_380
  loc_D0D7EC: LitI4 0
  loc_D0D7F1: LitI4 -1
  loc_D0D7F6: LitI4 1
  loc_D0D7FB: LitStr "."
  loc_D0D7FE: LitStr ","
  loc_D0D801: FLdFPR8 var_F8
  loc_D0D804: CStrR8
  loc_D0D806: FStStrNoPop var_66C
  loc_D0D809: ImpAdCallI2 Replace(, , , , , )
  loc_D0D80E: CVarStr var_3A0
  loc_D0D811: ConcatVar var_3CC
  loc_D0D815: LitVarStr var_390, ","
  loc_D0D81A: ConcatVar var_3DC
  loc_D0D81E: LitI4 0
  loc_D0D823: LitI4 -1
  loc_D0D828: LitI4 1
  loc_D0D82D: LitStr "."
  loc_D0D830: LitStr ","
  loc_D0D833: FLdFPR8 var_110
  loc_D0D836: CStrR8
  loc_D0D838: FStStrNoPop var_670
  loc_D0D83B: ImpAdCallI2 Replace(, , , , , )
  loc_D0D840: CVarStr var_3FC
  loc_D0D843: ConcatVar var_424
  loc_D0D847: LitVarStr var_3B8, ","
  loc_D0D84C: ConcatVar var_434
  loc_D0D850: LitI4 0
  loc_D0D855: LitI4 -1
  loc_D0D85A: LitI4 1
  loc_D0D85F: LitStr "."
  loc_D0D862: LitStr ","
  loc_D0D865: FLdFPR8 var_108
  loc_D0D868: CStrR8
  loc_D0D86A: FStStrNoPop var_674
  loc_D0D86D: ImpAdCallI2 Replace(, , , , , )
  loc_D0D872: CVarStr var_454
  loc_D0D875: ConcatVar var_47C
  loc_D0D879: LitVarStr var_3EC, ","
  loc_D0D87E: ConcatVar var_48C
  loc_D0D882: LitI4 0
  loc_D0D887: LitI4 -1
  loc_D0D88C: LitI4 1
  loc_D0D891: LitStr "."
  loc_D0D894: LitStr ","
  loc_D0D897: FLdFPR8 var_100
  loc_D0D89A: CStrR8
  loc_D0D89C: FStStrNoPop var_678
  loc_D0D89F: ImpAdCallI2 Replace(, , , , , )
  loc_D0D8A4: CVarStr var_4AC
  loc_D0D8A7: ConcatVar var_4D4
  loc_D0D8AB: LitVarStr var_410, ","
  loc_D0D8B0: ConcatVar var_4E4
  loc_D0D8B4: LitI4 0
  loc_D0D8B9: LitI4 -1
  loc_D0D8BE: LitI4 1
  loc_D0D8C3: LitStr "."
  loc_D0D8C6: LitStr ","
  loc_D0D8C9: FLdFPR8 arg_58
  loc_D0D8CC: CStrR8
  loc_D0D8CE: FStStrNoPop var_67C
  loc_D0D8D1: ImpAdCallI2 Replace(, , , , , )
  loc_D0D8D6: CVarStr var_504
  loc_D0D8D9: ConcatVar var_52C
  loc_D0D8DD: LitVarStr var_444, ","
  loc_D0D8E2: ConcatVar var_53C
  loc_D0D8E6: LitI4 0
  loc_D0D8EB: LitI4 -1
  loc_D0D8F0: LitI4 1
  loc_D0D8F5: LitStr "."
  loc_D0D8F8: LitStr ","
  loc_D0D8FB: FLdFPR8 arg_60
  loc_D0D8FE: CStrR8
  loc_D0D900: FStStrNoPop var_680
  loc_D0D903: ImpAdCallI2 Replace(, , , , , )
  loc_D0D908: CVarStr var_55C
  loc_D0D90B: ConcatVar var_56C
  loc_D0D90F: LitVarStr var_468, ",'"
  loc_D0D914: ConcatVar var_57C
  loc_D0D918: ILdRf var_94
  loc_D0D91B: CVarStr var_49C
  loc_D0D91E: ConcatVar var_59C
  loc_D0D922: LitVarStr var_4C0, "',"
  loc_D0D927: ConcatVar var_5AC
  loc_D0D92B: FLdI2 arg_6C
  loc_D0D92E: CVarI2 var_4F4
  loc_D0D931: ConcatVar var_5BC
  loc_D0D935: LitVarStr var_518, ","
  loc_D0D93A: ConcatVar var_5DC
  loc_D0D93E: ILdRf arg_70
  loc_D0D941: CVarI4
  loc_D0D945: ConcatVar var_5EC
  loc_D0D949: LitVarStr var_58C, ","
  loc_D0D94E: ConcatVar var_5FC
  loc_D0D952: ILdRf arg_74
  loc_D0D955: CVarI4
  loc_D0D959: ConcatVar var_61C
  loc_D0D95D: LitVarStr var_60C, ",'"
  loc_D0D962: ConcatVar var_62C
  loc_D0D966: LitI4 0
  loc_D0D96B: LitI4 -1
  loc_D0D970: LitI4 1
  loc_D0D975: LitStr " "
  loc_D0D978: LitStr "'"
  loc_D0D97B: ILdRf var_98
  loc_D0D97E: ImpAdCallI2 Replace(, , , , , )
  loc_D0D983: CVarStr var_63C
  loc_D0D986: ConcatVar var_65C
  loc_D0D98A: LitVarStr var_64C, "',"
  loc_D0D98F: ConcatVar var_790
  loc_D0D993: FLdI2 arg_7C
  loc_D0D996: CVarI2 var_7A0
  loc_D0D999: ConcatVar var_7B0
  loc_D0D99D: LitVarStr var_7C0, ",'"
  loc_D0D9A2: ConcatVar var_7D0
  loc_D0D9A6: ILdRf var_A0
  loc_D0D9A9: CVarStr var_7E0
  loc_D0D9AC: ConcatVar var_7F0
  loc_D0D9B0: LitVarStr var_800, "','"
  loc_D0D9B5: ConcatVar var_810
  loc_D0D9B9: ILdRf var_A4
  loc_D0D9BC: CVarStr var_820
  loc_D0D9BF: ConcatVar var_830
  loc_D0D9C3: LitVarStr var_840, "','"
  loc_D0D9C8: ConcatVar var_850
  loc_D0D9CC: ILdRf var_A8
  loc_D0D9CF: CVarStr var_860
  loc_D0D9D2: ConcatVar var_870
  loc_D0D9D6: LitVarStr var_880, "',"
  loc_D0D9DB: ConcatVar var_890
  loc_D0D9DF: FLdI2 arg_90
  loc_D0D9E2: CVarI2 var_8A0
  loc_D0D9E5: ConcatVar var_8B0
  loc_D0D9E9: LitVarStr var_8C0, ",'"
  loc_D0D9EE: ConcatVar var_8D0
  loc_D0D9F2: ILdRf var_AC
  loc_D0D9F5: CVarStr var_8E0
  loc_D0D9F8: ConcatVar var_8F0
  loc_D0D9FC: LitVarStr var_900, "','"
  loc_D0DA01: ConcatVar var_910
  loc_D0DA05: ILdRf var_B0
  loc_D0DA08: CVarStr var_920
  loc_D0DA0B: ConcatVar var_930
  loc_D0DA0F: LitVarStr var_940, "');"
  loc_D0DA14: ConcatVar var_950
  loc_D0DA18: CStrVarTmp
  loc_D0DA19: FStStr var_114
  loc_D0DA1C: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = "": var_678 = "": var_67C = ""
  loc_D0DA4D: FFreeAd var_15C = ""
  loc_D0DA54: FFreeVar var_930 = "": var_950 = "": var_4E4 = "": var_504 = "": var_52C = "": var_53C = "": var_55C = "": var_56C = "": var_57C = "": var_59C = "": var_5AC = "": var_5BC = "": var_5DC = "": var_5EC = "": var_5FC = "": var_61C = "": var_62C = "": var_63C = "": var_65C = "": var_790 = "": var_7B0 = "": var_7D0 = "": var_7F0 = "": var_810 = "": var_830 = "": var_850 = "": var_870 = "": var_890 = "": var_8B0 = "": var_8D0 = "": var_8F0 = "": var_910 = "": var_1A0 = "": var_180 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_208 = "": var_218 = "": var_260 = "": var_238 = "": var_270 = "": var_290 = "": var_2C8 = "": var_2B8 = "": var_2E8 = "": var_310 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3CC = "": var_3DC = "": var_3FC = "": var_424 = "": var_434 = "": var_454 = "": var_47C = "": var_48C = "": var_4AC = ""
  loc_D0DAD3: FLdPr Me
  loc_D0DAD6: MemLdPr global_64
  loc_D0DAD9: Me.MoveNext
  loc_D0DADE: Branch loc_D0C838
  loc_D0DAE1: ILdRf var_114
  loc_D0DAE4: Call EjecutarRsCls(from_stack_1v)
  loc_D0DAE9: Branch loc_D0FA32
  loc_D0DAEC: LitStr "START TRANSACTION;  INSERT INTO liquante (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,ActuLian,TipoLian,FealLian,FeveLian,DeudLian,ImpoLian,CrafLian,ExenLian,DescLian,GastLian,TotaLian,CucuPers,CodiRuta,CodiCall,NucaLian,CallLian,CodiBarr,ManzLian,CasaLian,UbicLian,CodiLoca,LocaLian,CopoLian) "
  loc_D0DAEF: LitStr " VALUES ("
  loc_D0DAF2: ConcatStr
  loc_D0DAF3: FStStrNoPop var_11C
  loc_D0DAF6: FLdI2 PeriLiqu
  loc_D0DAF9: CStrUI1
  loc_D0DAFB: FStStrNoPop var_120
  loc_D0DAFE: ConcatStr
  loc_D0DAFF: FStStrNoPop var_124
  loc_D0DB02: LitStr ","
  loc_D0DB05: ConcatStr
  loc_D0DB06: FStStrNoPop var_128
  loc_D0DB09: FLdUI1
  loc_D0DB0D: CStrI2
  loc_D0DB0F: FStStrNoPop var_12C
  loc_D0DB12: ConcatStr
  loc_D0DB13: FStStrNoPop var_130
  loc_D0DB16: LitStr ","
  loc_D0DB19: ConcatStr
  loc_D0DB1A: FStStrNoPop var_134
  loc_D0DB1D: FLdUI1
  loc_D0DB21: CStrI2
  loc_D0DB23: FStStrNoPop var_138
  loc_D0DB26: ConcatStr
  loc_D0DB27: FStStrNoPop var_13C
  loc_D0DB2A: LitStr ","
  loc_D0DB2D: ConcatStr
  loc_D0DB2E: FStStrNoPop var_140
  loc_D0DB31: FLdI2 NumeLiqu
  loc_D0DB34: CStrUI1
  loc_D0DB36: FStStrNoPop var_144
  loc_D0DB39: ConcatStr
  loc_D0DB3A: FStStrNoPop var_148
  loc_D0DB3D: LitStr ","
  loc_D0DB40: ConcatStr
  loc_D0DB41: FStStrNoPop var_14C
  loc_D0DB44: ILdRf CodiCome
  loc_D0DB47: CStrI4
  loc_D0DB49: FStStrNoPop var_150
  loc_D0DB4C: ConcatStr
  loc_D0DB4D: FStStrNoPop var_660
  loc_D0DB50: LitStr ",'"
  loc_D0DB53: ConcatStr
  loc_D0DB54: FStStrNoPop var_664
  loc_D0DB57: ILdRf var_88
  loc_D0DB5A: ConcatStr
  loc_D0DB5B: FStStrNoPop var_668
  loc_D0DB5E: LitStr "',"
  loc_D0DB61: ConcatStr
  loc_D0DB62: FStStrNoPop var_66C
  loc_D0DB65: FLdUI1
  loc_D0DB69: CStrI2
  loc_D0DB6B: FStStrNoPop var_670
  loc_D0DB6E: ConcatStr
  loc_D0DB6F: FStStrNoPop var_674
  loc_D0DB72: LitStr ",'No','"
  loc_D0DB75: ConcatStr
  loc_D0DB76: FStStrNoPop var_678
  loc_D0DB79: ILdRf var_8C
  loc_D0DB7C: ConcatStr
  loc_D0DB7D: FStStrNoPop var_67C
  loc_D0DB80: LitStr "','"
  loc_D0DB83: ConcatStr
  loc_D0DB84: FStStrNoPop var_680
  loc_D0DB87: LitI4 1
  loc_D0DB8C: LitI4 1
  loc_D0DB91: LitVarStr var_190, "yyyy-mm-dd"
  loc_D0DB96: FStVarCopyObj var_180
  loc_D0DB99: FLdRfVar var_180
  loc_D0DB9C: FLdRfVar arg_9C
  loc_D0DB9F: CVarRef
  loc_D0DBA4: ImpAdCallI2 Format$(, )
  loc_D0DBA9: FStStrNoPop var_684
  loc_D0DBAC: ConcatStr
  loc_D0DBAD: FStStrNoPop var_688
  loc_D0DBB0: LitStr "','"
  loc_D0DBB3: ConcatStr
  loc_D0DBB4: FStStrNoPop var_68C
  loc_D0DBB7: LitI4 1
  loc_D0DBBC: LitI4 1
  loc_D0DBC1: LitVarStr var_1F4, "yyyy-mm-dd"
  loc_D0DBC6: FStVarCopyObj var_1A0
  loc_D0DBC9: FLdRfVar var_1A0
  loc_D0DBCC: FLdRfVar var_90
  loc_D0DBCF: CVarRef
  loc_D0DBD4: ImpAdCallI2 Format$(, )
  loc_D0DBD9: FStStrNoPop var_690
  loc_D0DBDC: ConcatStr
  loc_D0DBDD: FStStrNoPop var_694
  loc_D0DBE0: LitStr "',"
  loc_D0DBE3: ConcatStr
  loc_D0DBE4: FStStrNoPop var_69C
  loc_D0DBE7: LitI4 0
  loc_D0DBEC: LitI4 -1
  loc_D0DBF1: LitI4 1
  loc_D0DBF6: LitStr "."
  loc_D0DBF9: LitStr ","
  loc_D0DBFC: FLdFPR8 DeudLian
  loc_D0DBFF: CStrR8
  loc_D0DC01: FStStrNoPop var_698
  loc_D0DC04: ImpAdCallI2 Replace(, , , , , )
  loc_D0DC09: FStStrNoPop var_6A0
  loc_D0DC0C: ConcatStr
  loc_D0DC0D: FStStrNoPop var_6A4
  loc_D0DC10: LitStr ","
  loc_D0DC13: ConcatStr
  loc_D0DC14: FStStrNoPop var_6AC
  loc_D0DC17: LitI4 0
  loc_D0DC1C: LitI4 -1
  loc_D0DC21: LitI4 1
  loc_D0DC26: LitStr "."
  loc_D0DC29: LitStr ","
  loc_D0DC2C: FLdFPR8 CrafLian
  loc_D0DC2F: CStrR8
  loc_D0DC31: FStStrNoPop var_6A8
  loc_D0DC34: ImpAdCallI2 Replace(, , , , , )
  loc_D0DC39: FStStrNoPop var_6B0
  loc_D0DC3C: ConcatStr
  loc_D0DC3D: FStStrNoPop var_6B4
  loc_D0DC40: LitStr ","
  loc_D0DC43: ConcatStr
  loc_D0DC44: FStStrNoPop var_6BC
  loc_D0DC47: LitI4 0
  loc_D0DC4C: LitI4 -1
  loc_D0DC51: LitI4 1
  loc_D0DC56: LitStr "."
  loc_D0DC59: LitStr ","
  loc_D0DC5C: FLdFPR8 AddNew0
  loc_D0DC5F: CStrR8
  loc_D0DC61: FStStrNoPop var_6B8
  loc_D0DC64: ImpAdCallI2 Replace(, , , , , )
  loc_D0DC69: FStStrNoPop var_6C0
  loc_D0DC6C: ConcatStr
  loc_D0DC6D: FStStrNoPop var_6C4
  loc_D0DC70: LitStr ","
  loc_D0DC73: ConcatStr
  loc_D0DC74: FStStrNoPop var_6CC
  loc_D0DC77: LitI4 0
  loc_D0DC7C: LitI4 -1
  loc_D0DC81: LitI4 1
  loc_D0DC86: LitStr "."
  loc_D0DC89: LitStr ","
  loc_D0DC8C: FLdFPR8 AddNew8
  loc_D0DC8F: CStrR8
  loc_D0DC91: FStStrNoPop var_6C8
  loc_D0DC94: ImpAdCallI2 Replace(, , , , , )
  loc_D0DC99: FStStrNoPop var_6D0
  loc_D0DC9C: ConcatStr
  loc_D0DC9D: FStStrNoPop var_6D4
  loc_D0DCA0: LitStr ","
  loc_D0DCA3: ConcatStr
  loc_D0DCA4: FStStrNoPop var_6DC
  loc_D0DCA7: LitI4 0
  loc_D0DCAC: LitI4 -1
  loc_D0DCB1: LitI4 1
  loc_D0DCB6: LitStr "."
  loc_D0DCB9: LitStr ","
  loc_D0DCBC: FLdFPR8 CodiRuta
  loc_D0DCBF: CStrR8
  loc_D0DCC1: FStStrNoPop var_6D8
  loc_D0DCC4: ImpAdCallI2 Replace(, , , , , )
  loc_D0DCC9: FStStrNoPop var_6E0
  loc_D0DCCC: ConcatStr
  loc_D0DCCD: FStStrNoPop var_6E4
  loc_D0DCD0: LitStr ","
  loc_D0DCD3: ConcatStr
  loc_D0DCD4: FStStrNoPop var_6EC
  loc_D0DCD7: LitI4 0
  loc_D0DCDC: LitI4 -1
  loc_D0DCE1: LitI4 1
  loc_D0DCE6: LitStr "."
  loc_D0DCE9: LitStr ","
  loc_D0DCEC: FLdFPR8 arg_58
  loc_D0DCEF: CStrR8
  loc_D0DCF1: FStStrNoPop var_6E8
  loc_D0DCF4: ImpAdCallI2 Replace(, , , , , )
  loc_D0DCF9: FStStrNoPop var_6F0
  loc_D0DCFC: ConcatStr
  loc_D0DCFD: FStStrNoPop var_6F4
  loc_D0DD00: LitStr ","
  loc_D0DD03: ConcatStr
  loc_D0DD04: FStStrNoPop var_6FC
  loc_D0DD07: LitI4 0
  loc_D0DD0C: LitI4 -1
  loc_D0DD11: LitI4 1
  loc_D0DD16: LitStr "."
  loc_D0DD19: LitStr ","
  loc_D0DD1C: FLdFPR8 arg_60
  loc_D0DD1F: CStrR8
  loc_D0DD21: FStStrNoPop var_6F8
  loc_D0DD24: ImpAdCallI2 Replace(, , , , , )
  loc_D0DD29: FStStrNoPop var_700
  loc_D0DD2C: ConcatStr
  loc_D0DD2D: FStStrNoPop var_704
  loc_D0DD30: LitStr ",'"
  loc_D0DD33: ConcatStr
  loc_D0DD34: FStStrNoPop var_708
  loc_D0DD37: ILdRf var_94
  loc_D0DD3A: ConcatStr
  loc_D0DD3B: FStStrNoPop var_70C
  loc_D0DD3E: LitStr "',"
  loc_D0DD41: ConcatStr
  loc_D0DD42: FStStrNoPop var_710
  loc_D0DD45: FLdI2 arg_6C
  loc_D0DD48: CStrUI1
  loc_D0DD4A: FStStrNoPop var_714
  loc_D0DD4D: ConcatStr
  loc_D0DD4E: FStStrNoPop var_718
  loc_D0DD51: LitStr ","
  loc_D0DD54: ConcatStr
  loc_D0DD55: FStStrNoPop var_71C
  loc_D0DD58: ILdRf arg_70
  loc_D0DD5B: CStrI4
  loc_D0DD5D: FStStrNoPop var_720
  loc_D0DD60: ConcatStr
  loc_D0DD61: FStStrNoPop var_724
  loc_D0DD64: LitStr ","
  loc_D0DD67: ConcatStr
  loc_D0DD68: FStStrNoPop var_728
  loc_D0DD6B: ILdRf arg_74
  loc_D0DD6E: CStrI4
  loc_D0DD70: FStStrNoPop var_72C
  loc_D0DD73: ConcatStr
  loc_D0DD74: FStStrNoPop var_730
  loc_D0DD77: LitStr ",'"
  loc_D0DD7A: ConcatStr
  loc_D0DD7B: FStStrNoPop var_734
  loc_D0DD7E: LitI4 0
  loc_D0DD83: LitI4 -1
  loc_D0DD88: LitI4 1
  loc_D0DD8D: LitStr " "
  loc_D0DD90: LitStr "'"
  loc_D0DD93: ILdRf var_98
  loc_D0DD96: ImpAdCallI2 Replace(, , , , , )
  loc_D0DD9B: FStStrNoPop var_738
  loc_D0DD9E: ConcatStr
  loc_D0DD9F: FStStrNoPop var_73C
  loc_D0DDA2: LitStr "',"
  loc_D0DDA5: ConcatStr
  loc_D0DDA6: FStStrNoPop var_740
  loc_D0DDA9: FLdI2 arg_7C
  loc_D0DDAC: CStrUI1
  loc_D0DDAE: FStStrNoPop var_744
  loc_D0DDB1: ConcatStr
  loc_D0DDB2: FStStrNoPop var_748
  loc_D0DDB5: LitStr ",'"
  loc_D0DDB8: ConcatStr
  loc_D0DDB9: FStStrNoPop var_74C
  loc_D0DDBC: ILdRf var_A0
  loc_D0DDBF: ConcatStr
  loc_D0DDC0: FStStrNoPop var_750
  loc_D0DDC3: LitStr "','"
  loc_D0DDC6: ConcatStr
  loc_D0DDC7: FStStrNoPop var_754
  loc_D0DDCA: ILdRf var_A4
  loc_D0DDCD: ConcatStr
  loc_D0DDCE: FStStrNoPop var_758
  loc_D0DDD1: LitStr "','"
  loc_D0DDD4: ConcatStr
  loc_D0DDD5: FStStrNoPop var_75C
  loc_D0DDD8: ILdRf var_A8
  loc_D0DDDB: ConcatStr
  loc_D0DDDC: FStStrNoPop var_760
  loc_D0DDDF: LitStr "',"
  loc_D0DDE2: ConcatStr
  loc_D0DDE3: FStStrNoPop var_764
  loc_D0DDE6: FLdI2 arg_90
  loc_D0DDE9: CStrUI1
  loc_D0DDEB: FStStrNoPop var_768
  loc_D0DDEE: ConcatStr
  loc_D0DDEF: FStStrNoPop var_76C
  loc_D0DDF2: LitStr ",'"
  loc_D0DDF5: ConcatStr
  loc_D0DDF6: FStStrNoPop var_770
  loc_D0DDF9: ILdRf var_AC
  loc_D0DDFC: ConcatStr
  loc_D0DDFD: FStStrNoPop var_774
  loc_D0DE00: LitStr "','"
  loc_D0DE03: ConcatStr
  loc_D0DE04: FStStrNoPop var_778
  loc_D0DE07: ILdRf var_B0
  loc_D0DE0A: ConcatStr
  loc_D0DE0B: FStStrNoPop var_77C
  loc_D0DE0E: LitStr "');"
  loc_D0DE11: ConcatStr
  loc_D0DE12: FStStrNoPop var_780
  loc_D0DE15: Call EjecutarRsCls(from_stack_1v)
  loc_D0DE1A: FFreeStr var_718 = "": var_71C = "": var_720 = "": var_724 = "": var_728 = "": var_72C = "": var_730 = "": var_734 = "": var_738 = "": var_73C = "": var_740 = "": var_744 = "": var_748 = "": var_74C = "": var_750 = "": var_754 = "": var_758 = "": var_75C = "": var_760 = "": var_764 = "": var_768 = "": var_76C = "": var_770 = "": var_774 = "": var_778 = "": var_77C = "": var_780 = "": var_6A0 = "": var_6A4 = "": var_6A8 = "": var_6AC = "": var_6B0 = "": var_6B4 = "": var_6B8 = "": var_6BC = "": var_6C0 = "": var_6C4 = "": var_6C8 = "": var_6CC = "": var_6D0 = "": var_6D4 = "": var_6D8 = "": var_6DC = "": var_6E0 = "": var_6E4 = "": var_6E8 = "": var_6EC = "": var_6F0 = "": var_6F4 = "": var_6F8 = "": var_6FC = "": var_700 = "": var_704 = "": var_708 = "": var_70C = "": var_710 = "": var_714 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = "": var_678 = "": var_67C = "": var_680 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = "": var_698 = ""
  loc_D0DECB: FFreeVar var_180 = ""
  loc_D0DED2: FLdI2 arg_AC
  loc_D0DED5: LitI2_Byte &HFF
  loc_D0DED7: EqI2
  loc_D0DED8: BranchF loc_D0FA32
  loc_D0DEDB: LitI2 2860
  loc_D0DEDE: CR8I2
  loc_D0DEDF: FStFPR8 var_E8
  loc_D0DEE2: LitStr "SELECT s.CodiCome, s.CodiRamo, s.CodiRubr, s.CodiSubr, s.PrioSeco, s.FealSeco, s.ExalSeco, s.FebaSeco, s.ExbaSeco, s.MobaSeco, s.AcprSeco, s.LiquSeco, s.CantSeco, s.ObseSeco, s.AltaUsua, r.DetaRamo, ru.DetaRubr, su.DetaSubr,"
  loc_D0DEE5: LitStr " ROUND((t.Importe) * (SELECT UntrPage FROM recaudacion.paragene),2) ImpoSubr,"
  loc_D0DEE8: ConcatStr
  loc_D0DEE9: FStStrNoPop var_11C
  loc_D0DEEC: LitStr " ROUND((t.Importe * s.CantSeco) * (SELECT UntrPage FROM recaudacion.paragene),2) ImpoTaco"
  loc_D0DEEF: ConcatStr
  loc_D0DEF0: FStStrNoPop var_120
  loc_D0DEF3: LitStr " FROM servante s"
  loc_D0DEF6: ConcatStr
  loc_D0DEF7: FStStrNoPop var_124
  loc_D0DEFA: LitStr " INNER JOIN ramo r ON r.CodiRamo = s.CodiRamo"
  loc_D0DEFD: ConcatStr
  loc_D0DEFE: FStStrNoPop var_128
  loc_D0DF01: LitStr " INNER JOIN rubro ru ON ru.CodiRubr = s.CodiRubr"
  loc_D0DF04: ConcatStr
  loc_D0DF05: FStStrNoPop var_12C
  loc_D0DF08: LitStr " INNER JOIN subrubro su ON su.CodiSubr = s.CodiSubr AND su.CodiRamo = s.CodiRamo AND su.CodiRubr = s.CodiRubr AND su.PeriOrde = "
  loc_D0DF0B: ConcatStr
  loc_D0DF0C: FStStrNoPop var_130
  loc_D0DF0F: ImpAdLdI2 MemVar_D93036
  loc_D0DF12: CStrUI1
  loc_D0DF14: FStStrNoPop var_134
  loc_D0DF17: ConcatStr
  loc_D0DF18: FStStrNoPop var_138
  loc_D0DF1B: LitStr " LEFT JOIN tarifaria t ON t.PeriInfo = su.PeriOrde AND su.CodiSubr = t.Letra"
  loc_D0DF1E: ConcatStr
  loc_D0DF1F: FStStrNoPop var_13C
  loc_D0DF22: LitStr " WHERE s.CodiCome = "
  loc_D0DF25: ConcatStr
  loc_D0DF26: FStStrNoPop var_140
  loc_D0DF29: ILdRf CodiCome
  loc_D0DF2C: CStrI4
  loc_D0DF2E: FStStrNoPop var_144
  loc_D0DF31: ConcatStr
  loc_D0DF32: FStStrNoPop var_148
  loc_D0DF35: LitStr " AND s.BajaFeho IS NULL AND s.FebaSeco IS NULL"
  loc_D0DF38: ConcatStr
  loc_D0DF39: FStStrNoPop var_14C
  loc_D0DF3C: FLdRfVar var_B4
  loc_D0DF3F: NewIfNullPr clsservcome
  loc_D0DF42: Call clsservcome.RedefineRS(from_stack_1v)
  loc_D0DF47: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_D0DF64: FLdRfVar var_154
  loc_D0DF67: FLdRfVar var_B4
  loc_D0DF6A: NewIfNullPr clsservcome
  loc_D0DF6D: from_stack_1 = clsservcome.RecordCount
  loc_D0DF72: ILdRf var_154
  loc_D0DF75: LitI4 0
  loc_D0DF7A: GtI4
  loc_D0DF7B: BranchF loc_D0E4FB
  loc_D0DF7E: FLdRfVar var_B4
  loc_D0DF81: NewIfNullPr clsservcome
  loc_D0DF84: Call clsservcome.MoveFirst()
  loc_D0DF89: FLdRfVar var_156
  loc_D0DF8C: FLdRfVar var_B4
  loc_D0DF8F: NewIfNullPr clsservcome
  loc_D0DF92: from_stack_1 = clsservcome.EOF
  loc_D0DF97: FLdI2 var_156
  loc_D0DF9A: NotI4
  loc_D0DF9B: BranchF loc_D0E333
  loc_D0DF9E: FLdRfVar var_180
  loc_D0DFA1: FLdRfVar var_B4
  loc_D0DFA4: NewIfNullPr clsservcome
  loc_D0DFA7: from_stack_1 = clsservcome.ImpoTaco
  loc_D0DFAC: FLdRfVar var_180
  loc_D0DFAF: LitVarI2 var_16C, 0
  loc_D0DFB4: HardType
  loc_D0DFB5: GtVarBool
  loc_D0DFB7: FFree1Var var_180 = ""
  loc_D0DFBA: BranchF loc_D0E325
  loc_D0DFBD: LitI2_Byte 0
  loc_D0DFBF: CR8I2
  loc_D0DFC0: FStFPR8 var_F0
  loc_D0DFC3: FLdFPR8 arg_B4
  loc_D0DFC6: LitI2_Byte 0
  loc_D0DFC8: CR8I2
  loc_D0DFC9: GtR4
  loc_D0DFCA: BranchF loc_D0E016
  loc_D0DFCD: FLdRfVar var_180
  loc_D0DFD0: FLdRfVar var_B4
  loc_D0DFD3: NewIfNullPr clsservcome
  loc_D0DFD6: from_stack_1 = clsservcome.ImpoTaco
  loc_D0DFDB: LitI4 2
  loc_D0DFE0: FLdRfVar var_180
  loc_D0DFE3: FLdFPR8 arg_B4
  loc_D0DFE6: CVarR8
  loc_D0DFEA: MulVar var_1A0
  loc_D0DFEE: LitVarI2 var_190, 100
  loc_D0DFF3: DivVar var_1B0
  loc_D0DFF7: FStVar var_1C0
  loc_D0DFFB: FLdRfVar var_1C0
  loc_D0DFFE: FLdRfVar var_1E0
  loc_D0E001: ImpAdCallFPR4  = Round(, )
  loc_D0E006: FLdRfVar var_1E0
  loc_D0E009: CR4Var
  loc_D0E00A: FStFPR8 var_F0
  loc_D0E00D: FFreeVar var_180 = "": var_1C0 = ""
  loc_D0E016: FLdRfVar var_180
  loc_D0E019: FLdRfVar var_B4
  loc_D0E01C: NewIfNullPr clsservcome
  loc_D0E01F: from_stack_1 = clsservcome.ImpoTaco
  loc_D0E024: FLdRfVar var_180
  loc_D0E027: FLdFPR8 var_F0
  loc_D0E02A: CVarR8
  loc_D0E02E: HardType
  loc_D0E02F: NeVarBool
  loc_D0E031: FFree1Var var_180 = ""
  loc_D0E034: BranchF loc_D0E061
  loc_D0E037: FLdRfVar var_180
  loc_D0E03A: FLdRfVar var_B4
  loc_D0E03D: NewIfNullPr clsservcome
  loc_D0E040: from_stack_1 = clsservcome.ImpoTaco
  loc_D0E045: FLdRfVar var_180
  loc_D0E048: FLdFPR8 var_E8
  loc_D0E04B: CVarR8
  loc_D0E04F: AddVar var_1A0
  loc_D0E053: CR4Var
  loc_D0E054: FStFPR8 var_C8
  loc_D0E057: FFreeVar var_180 = ""
  loc_D0E05E: Branch loc_D0E079
  loc_D0E061: FLdRfVar var_180
  loc_D0E064: FLdRfVar var_B4
  loc_D0E067: NewIfNullPr clsservcome
  loc_D0E06A: from_stack_1 = clsservcome.ImpoTaco
  loc_D0E06F: FLdRfVar var_180
  loc_D0E072: CR4Var
  loc_D0E073: FStFPR8 var_C8
  loc_D0E076: FFree1Var var_180 = ""
  loc_D0E079: LitI4 2
  loc_D0E07E: FLdRfVar var_C8
  loc_D0E081: CVarRef
  loc_D0E086: FLdRfVar var_180
  loc_D0E089: ImpAdCallFPR4  = Round(, )
  loc_D0E08E: LitI4 2
  loc_D0E093: FLdFPR8 var_BC
  loc_D0E096: CVarR8
  loc_D0E09A: FLdRfVar var_180
  loc_D0E09D: AddVar var_1A0
  loc_D0E0A1: FLdRfVar var_1B0
  loc_D0E0A4: ImpAdCallFPR4  = Round(, )
  loc_D0E0A9: FLdRfVar var_1B0
  loc_D0E0AC: CR4Var
  loc_D0E0AD: FStFPR8 var_BC
  loc_D0E0B0: FFreeVar var_180 = "": var_1A0 = ""
  loc_D0E0B9: LitStr " INSERT INTO liandeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLade,ImpoLade,DecaLade,ExceLade,TotaLade) "
  loc_D0E0BC: LitStr " VALUES ("
  loc_D0E0BF: ConcatStr
  loc_D0E0C0: FStStrNoPop var_11C
  loc_D0E0C3: FLdI2 PeriLiqu
  loc_D0E0C6: CStrUI1
  loc_D0E0C8: FStStrNoPop var_120
  loc_D0E0CB: ConcatStr
  loc_D0E0CC: FStStrNoPop var_124
  loc_D0E0CF: LitStr ","
  loc_D0E0D2: ConcatStr
  loc_D0E0D3: FStStrNoPop var_128
  loc_D0E0D6: FLdUI1
  loc_D0E0DA: CStrI2
  loc_D0E0DC: FStStrNoPop var_12C
  loc_D0E0DF: ConcatStr
  loc_D0E0E0: FStStrNoPop var_130
  loc_D0E0E3: LitStr ","
  loc_D0E0E6: ConcatStr
  loc_D0E0E7: FStStrNoPop var_134
  loc_D0E0EA: FLdUI1
  loc_D0E0EE: CStrI2
  loc_D0E0F0: FStStrNoPop var_138
  loc_D0E0F3: ConcatStr
  loc_D0E0F4: FStStrNoPop var_13C
  loc_D0E0F7: LitStr ","
  loc_D0E0FA: ConcatStr
  loc_D0E0FB: FStStrNoPop var_140
  loc_D0E0FE: FLdI2 NumeLiqu
  loc_D0E101: CStrUI1
  loc_D0E103: FStStrNoPop var_144
  loc_D0E106: ConcatStr
  loc_D0E107: FStStrNoPop var_148
  loc_D0E10A: LitStr ","
  loc_D0E10D: ConcatStr
  loc_D0E10E: FStStrNoPop var_14C
  loc_D0E111: ILdRf CodiCome
  loc_D0E114: CStrI4
  loc_D0E116: FStStrNoPop var_150
  loc_D0E119: ConcatStr
  loc_D0E11A: FStStrNoPop var_660
  loc_D0E11D: LitStr ",'"
  loc_D0E120: ConcatStr
  loc_D0E121: FStStrNoPop var_664
  loc_D0E124: ILdRf var_88
  loc_D0E127: ConcatStr
  loc_D0E128: FStStrNoPop var_668
  loc_D0E12B: LitStr "',"
  loc_D0E12E: ConcatStr
  loc_D0E12F: FStStrNoPop var_66C
  loc_D0E132: FLdUI1
  loc_D0E136: CStrI2
  loc_D0E138: FStStrNoPop var_670
  loc_D0E13B: ConcatStr
  loc_D0E13C: FStStrNoPop var_674
  loc_D0E13F: LitStr ","
  loc_D0E142: ConcatStr
  loc_D0E143: FStStrNoPop var_678
  loc_D0E146: FLdRfVar var_156
  loc_D0E149: FLdRfVar var_B4
  loc_D0E14C: NewIfNullPr clsservcome
  loc_D0E14F: from_stack_1 = clsservcome.CodiRamo
  loc_D0E154: FLdI2 var_156
  loc_D0E157: CStrUI1
  loc_D0E159: FStStrNoPop var_67C
  loc_D0E15C: ConcatStr
  loc_D0E15D: FStStrNoPop var_680
  loc_D0E160: LitStr ",'"
  loc_D0E163: ConcatStr
  loc_D0E164: CVarStr var_1A0
  loc_D0E167: FLdRfVar var_180
  loc_D0E16A: FLdRfVar var_B4
  loc_D0E16D: NewIfNullPr clsservcome
  loc_D0E170: from_stack_1 = clsservcome.CodiRubr
  loc_D0E175: FLdRfVar var_180
  loc_D0E178: ConcatVar var_1B0
  loc_D0E17C: LitVarStr var_16C, "',"
  loc_D0E181: ConcatVar var_1C0
  loc_D0E185: ImpAdLdI2 MemVar_D93036
  loc_D0E188: CVarI2 var_190
  loc_D0E18B: ConcatVar var_1E0
  loc_D0E18F: LitVarStr var_1D0, ","
  loc_D0E194: ConcatVar var_208
  loc_D0E198: FLdRfVar var_684
  loc_D0E19B: FLdRfVar var_B4
  loc_D0E19E: NewIfNullPr clsservcome
  loc_D0E1A1: from_stack_1 = clsservcome.CodiSubr
  loc_D0E1A6: FLdZeroAd var_684
  loc_D0E1A9: CVarStr var_218
  loc_D0E1AC: ConcatVar var_238
  loc_D0E1B0: LitVarStr var_1F4, ","
  loc_D0E1B5: ConcatVar var_260
  loc_D0E1B9: FLdRfVar var_952
  loc_D0E1BC: FLdRfVar var_B4
  loc_D0E1BF: NewIfNullPr clsservcome
  loc_D0E1C2: from_stack_1 = clsservcome.PrioSeco
  loc_D0E1C7: FLdI2 var_952
  loc_D0E1CA: CVarI2 var_228
  loc_D0E1CD: ConcatVar var_270
  loc_D0E1D1: LitVarStr var_24C, ","
  loc_D0E1D6: ConcatVar var_290
  loc_D0E1DA: LitI4 0
  loc_D0E1DF: LitI4 -1
  loc_D0E1E4: LitI4 1
  loc_D0E1E9: LitStr "."
  loc_D0E1EC: LitStr ","
  loc_D0E1EF: FLdFPR8 var_C8
  loc_D0E1F2: CStrR8
  loc_D0E1F4: FStStrNoPop var_688
  loc_D0E1F7: ImpAdCallI2 Replace(, , , , , )
  loc_D0E1FC: CVarStr var_2B8
  loc_D0E1FF: ConcatVar var_2C8
  loc_D0E203: LitVarStr var_280, ","
  loc_D0E208: ConcatVar var_2E8
  loc_D0E20C: LitI4 0
  loc_D0E211: LitI4 -1
  loc_D0E216: LitI4 1
  loc_D0E21B: LitStr "."
  loc_D0E21E: LitStr ","
  loc_D0E221: FLdFPR8 var_D0
  loc_D0E224: CStrR8
  loc_D0E226: FStStrNoPop var_68C
  loc_D0E229: ImpAdCallI2 Replace(, , , , , )
  loc_D0E22E: CVarStr var_310
  loc_D0E231: ConcatVar var_320
  loc_D0E235: LitVarStr var_2A4, ","
  loc_D0E23A: ConcatVar var_340
  loc_D0E23E: LitI4 0
  loc_D0E243: LitI4 -1
  loc_D0E248: LitI4 1
  loc_D0E24D: LitStr "."
  loc_D0E250: LitStr ","
  loc_D0E253: FLdFPR8 var_F0
  loc_D0E256: CStrR8
  loc_D0E258: FStStrNoPop var_690
  loc_D0E25B: ImpAdCallI2 Replace(, , , , , )
  loc_D0E260: CVarStr var_360
  loc_D0E263: ConcatVar var_380
  loc_D0E267: LitVarStr var_2D8, ","
  loc_D0E26C: ConcatVar var_3A0
  loc_D0E270: LitI4 0
  loc_D0E275: LitI4 -1
  loc_D0E27A: LitI4 1
  loc_D0E27F: LitStr "."
  loc_D0E282: LitStr ","
  loc_D0E285: FLdFPR8 var_C8
  loc_D0E288: FLdFPR8 var_D0
  loc_D0E28B: SubR4
  loc_D0E28C: FLdFPR8 var_F0
  loc_D0E28F: SubR4
  loc_D0E290: CStrR8
  loc_D0E292: FStStrNoPop var_694
  loc_D0E295: ImpAdCallI2 Replace(, , , , , )
  loc_D0E29A: CVarStr var_3CC
  loc_D0E29D: ConcatVar var_3DC
  loc_D0E2A1: LitVarStr var_2FC, ");"
  loc_D0E2A6: ConcatVar var_3FC
  loc_D0E2AA: CStrVarVal var_698
  loc_D0E2AE: Call EjecutarRsCls(from_stack_1v)
  loc_D0E2B3: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = "": var_678 = "": var_67C = "": var_680 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = ""
  loc_D0E2EE: FFreeVar var_1A0 = "": var_180 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_208 = "": var_218 = "": var_238 = "": var_260 = "": var_270 = "": var_290 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_310 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3CC = "": var_3DC = ""
  loc_D0E31F: LitI2_Byte 0
  loc_D0E321: CR8I2
  loc_D0E322: FStFPR8 var_E8
  loc_D0E325: FLdRfVar var_B4
  loc_D0E328: NewIfNullPr clsservcome
  loc_D0E32B: Call clsservcome.MoveSiguiente()
  loc_D0E330: Branch loc_D0DF89
  loc_D0E333: FLdFPR8 arg_A4
  loc_D0E336: LitI2_Byte 0
  loc_D0E338: CR8I2
  loc_D0E339: GtR4
  loc_D0E33A: BranchF loc_D0E4FB
  loc_D0E33D: LitI4 2
  loc_D0E342: FLdFPR8 var_BC
  loc_D0E345: FLdFPR8 arg_A4
  loc_D0E348: AddR8
  loc_D0E349: CVarR8
  loc_D0E34D: FLdRfVar var_1A0
  loc_D0E350: ImpAdCallFPR4  = Round(, )
  loc_D0E355: FLdRfVar var_1A0
  loc_D0E358: CR4Var
  loc_D0E359: FStFPR8 var_BC
  loc_D0E35C: FFreeVar var_180 = ""
  loc_D0E363: LitStr " INSERT INTO liandeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLade,ImpoLade,DecaLade,TotaLade) "
  loc_D0E366: LitStr " VALUES ("
  loc_D0E369: ConcatStr
  loc_D0E36A: FStStrNoPop var_11C
  loc_D0E36D: FLdI2 PeriLiqu
  loc_D0E370: CStrUI1
  loc_D0E372: FStStrNoPop var_120
  loc_D0E375: ConcatStr
  loc_D0E376: FStStrNoPop var_124
  loc_D0E379: LitStr ","
  loc_D0E37C: ConcatStr
  loc_D0E37D: FStStrNoPop var_128
  loc_D0E380: FLdUI1
  loc_D0E384: CStrI2
  loc_D0E386: FStStrNoPop var_12C
  loc_D0E389: ConcatStr
  loc_D0E38A: FStStrNoPop var_130
  loc_D0E38D: LitStr ","
  loc_D0E390: ConcatStr
  loc_D0E391: FStStrNoPop var_134
  loc_D0E394: FLdUI1
  loc_D0E398: CStrI2
  loc_D0E39A: FStStrNoPop var_138
  loc_D0E39D: ConcatStr
  loc_D0E39E: FStStrNoPop var_13C
  loc_D0E3A1: LitStr ","
  loc_D0E3A4: ConcatStr
  loc_D0E3A5: FStStrNoPop var_140
  loc_D0E3A8: FLdI2 NumeLiqu
  loc_D0E3AB: CStrUI1
  loc_D0E3AD: FStStrNoPop var_144
  loc_D0E3B0: ConcatStr
  loc_D0E3B1: FStStrNoPop var_148
  loc_D0E3B4: LitStr ","
  loc_D0E3B7: ConcatStr
  loc_D0E3B8: FStStrNoPop var_14C
  loc_D0E3BB: ILdRf CodiCome
  loc_D0E3BE: CStrI4
  loc_D0E3C0: FStStrNoPop var_150
  loc_D0E3C3: ConcatStr
  loc_D0E3C4: FStStrNoPop var_660
  loc_D0E3C7: LitStr ","
  loc_D0E3CA: ConcatStr
  loc_D0E3CB: FStStrNoPop var_664
  loc_D0E3CE: ILdRf var_88
  loc_D0E3D1: ConcatStr
  loc_D0E3D2: FStStrNoPop var_668
  loc_D0E3D5: LitStr ","
  loc_D0E3D8: ConcatStr
  loc_D0E3D9: FStStrNoPop var_66C
  loc_D0E3DC: FLdUI1
  loc_D0E3E0: CStrI2
  loc_D0E3E2: FStStrNoPop var_670
  loc_D0E3E5: ConcatStr
  loc_D0E3E6: FStStrNoPop var_674
  loc_D0E3E9: LitStr ",1,9,"
  loc_D0E3EC: ConcatStr
  loc_D0E3ED: FStStrNoPop var_678
  loc_D0E3F0: ImpAdLdI2 MemVar_D93036
  loc_D0E3F3: CStrUI1
  loc_D0E3F5: FStStrNoPop var_67C
  loc_D0E3F8: ConcatStr
  loc_D0E3F9: FStStrNoPop var_680
  loc_D0E3FC: LitStr ","
  loc_D0E3FF: ConcatStr
  loc_D0E400: FStStrNoPop var_684
  loc_D0E403: FLdI2 arg_B0
  loc_D0E406: CStrUI1
  loc_D0E408: FStStrNoPop var_688
  loc_D0E40B: ConcatStr
  loc_D0E40C: FStStrNoPop var_68C
  loc_D0E40F: LitStr ",1,"
  loc_D0E412: ConcatStr
  loc_D0E413: FStStrNoPop var_694
  loc_D0E416: LitI4 0
  loc_D0E41B: LitI4 -1
  loc_D0E420: LitI4 1
  loc_D0E425: LitStr "."
  loc_D0E428: LitStr ","
  loc_D0E42B: FLdFPR8 arg_A4
  loc_D0E42E: CStrR8
  loc_D0E430: FStStrNoPop var_690
  loc_D0E433: ImpAdCallI2 Replace(, , , , , )
  loc_D0E438: FStStrNoPop var_698
  loc_D0E43B: ConcatStr
  loc_D0E43C: FStStrNoPop var_69C
  loc_D0E43F: LitStr ","
  loc_D0E442: ConcatStr
  loc_D0E443: FStStrNoPop var_6A4
  loc_D0E446: LitI4 0
  loc_D0E44B: LitI4 -1
  loc_D0E450: LitI4 1
  loc_D0E455: LitStr "."
  loc_D0E458: LitStr ","
  loc_D0E45B: LitI2_Byte 0
  loc_D0E45D: CStrUI1
  loc_D0E45F: FStStrNoPop var_6A0
  loc_D0E462: ImpAdCallI2 Replace(, , , , , )
  loc_D0E467: FStStrNoPop var_6A8
  loc_D0E46A: ConcatStr
  loc_D0E46B: FStStrNoPop var_6AC
  loc_D0E46E: LitStr ","
  loc_D0E471: ConcatStr
  loc_D0E472: FStStrNoPop var_6B4
  loc_D0E475: LitI4 0
  loc_D0E47A: LitI4 -1
  loc_D0E47F: LitI4 1
  loc_D0E484: LitStr "."
  loc_D0E487: LitStr ","
  loc_D0E48A: FLdFPR8 arg_A4
  loc_D0E48D: CStrR8
  loc_D0E48F: FStStrNoPop var_6B0
  loc_D0E492: ImpAdCallI2 Replace(, , , , , )
  loc_D0E497: FStStrNoPop var_6B8
  loc_D0E49A: ConcatStr
  loc_D0E49B: FStStrNoPop var_6BC
  loc_D0E49E: LitStr ");"
  loc_D0E4A1: ConcatStr
  loc_D0E4A2: FStStrNoPop var_6C0
  loc_D0E4A5: Call EjecutarRsCls(from_stack_1v)
  loc_D0E4AA: FFreeStr var_6A0 = "": var_6A4 = "": var_6A8 = "": var_6AC = "": var_6B0 = "": var_6B4 = "": var_6B8 = "": var_6BC = "": var_6C0 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = "": var_678 = "": var_67C = "": var_680 = "": var_684 = "": var_688 = "": var_68C = "": var_690 = "": var_694 = "": var_698 = ""
  loc_D0E4FB: FLdUI1
  loc_D0E4FF: CI2UI1
  loc_D0E501: LitI2_Byte 1
  loc_D0E503: EqI2
  loc_D0E504: BranchF loc_D0FA32
  loc_D0E507: LitStr "SELECT SUM(ImpoLade) as ImpoLade, SUM(DecaLade) as DecaLade, SUM(TotaLade) as TotaLade FROM liandeta WHERE PeriLiqu = "
  loc_D0E50A: FLdI2 PeriLiqu
  loc_D0E50D: CStrUI1
  loc_D0E50F: FStStrNoPop var_11C
  loc_D0E512: ConcatStr
  loc_D0E513: FStStrNoPop var_120
  loc_D0E516: LitStr " AND Bimeliqu = "
  loc_D0E519: ConcatStr
  loc_D0E51A: FStStrNoPop var_124
  loc_D0E51D: FLdUI1
  loc_D0E521: CStrI2
  loc_D0E523: FStStrNoPop var_128
  loc_D0E526: ConcatStr
  loc_D0E527: FStStrNoPop var_12C
  loc_D0E52A: LitStr " AND CodiTili = "
  loc_D0E52D: ConcatStr
  loc_D0E52E: FStStrNoPop var_130
  loc_D0E531: FLdUI1
  loc_D0E535: CStrI2
  loc_D0E537: FStStrNoPop var_134
  loc_D0E53A: ConcatStr
  loc_D0E53B: FStStrNoPop var_138
  loc_D0E53E: LitStr " AND NumeLiqu = "
  loc_D0E541: ConcatStr
  loc_D0E542: FStStrNoPop var_13C
  loc_D0E545: FLdI2 NumeLiqu
  loc_D0E548: CStrUI1
  loc_D0E54A: FStStrNoPop var_140
  loc_D0E54D: ConcatStr
  loc_D0E54E: FStStrNoPop var_144
  loc_D0E551: LitStr " AND CodiCome = "
  loc_D0E554: ConcatStr
  loc_D0E555: FStStrNoPop var_148
  loc_D0E558: ILdRf CodiCome
  loc_D0E55B: CStrI4
  loc_D0E55D: FStStrNoPop var_14C
  loc_D0E560: ConcatStr
  loc_D0E561: FStStrNoPop var_150
  loc_D0E564: LitStr " AND CodiConc = '"
  loc_D0E567: ConcatStr
  loc_D0E568: FStStrNoPop var_660
  loc_D0E56B: ILdRf var_88
  loc_D0E56E: ConcatStr
  loc_D0E56F: FStStrNoPop var_664
  loc_D0E572: LitStr "'"
  loc_D0E575: ConcatStr
  loc_D0E576: FStStrNoPop var_668
  loc_D0E579: LitStr " AND TipoVenc = "
  loc_D0E57C: ConcatStr
  loc_D0E57D: FStStrNoPop var_66C
  loc_D0E580: FLdUI1
  loc_D0E584: CStrI2
  loc_D0E586: FStStrNoPop var_670
  loc_D0E589: ConcatStr
  loc_D0E58A: FStStrNoPop var_674
  loc_D0E58D: Call EjecutarRsCls2(from_stack_1v)
  loc_D0E592: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = ""
  loc_D0E5BD: FLdRfVar var_154
  loc_D0E5C0: FLdPr Me
  loc_D0E5C3: MemLdPr global_64
  loc_D0E5C6:  = Me.RecordCount
  loc_D0E5CB: ILdRf var_154
  loc_D0E5CE: LitI4 0
  loc_D0E5D3: GtI4
  loc_D0E5D4: BranchF loc_D0FA32
  loc_D0E5D7: FLdFPR8 CrafLian
  loc_D0E5DA: CVarR8
  loc_D0E5DE: HardType
  loc_D0E5DF: FLdRfVar var_180
  loc_D0E5E2: FLdRfVar var_170
  loc_D0E5E5: LitVarStr var_16C, "ImpoLade"
  loc_D0E5EA: PopAdLdVar
  loc_D0E5EB: FLdRfVar var_15C
  loc_D0E5EE: FLdPr Me
  loc_D0E5F1: MemLdPr global_64
  loc_D0E5F4:  = Me.Fields
  loc_D0E5F9: FLdPr var_15C
  loc_D0E5FC: from_stack_2 = Me.Item(from_stack_1)
  loc_D0E601: FLdPr var_170
  loc_D0E604:  = Me.Value
  loc_D0E609: FLdRfVar var_180
  loc_D0E60C: NeVarBool
  loc_D0E60E: FFreeAd var_15C = ""
  loc_D0E615: FFree1Var var_180 = ""
  loc_D0E618: BranchF loc_D0EFF9
  loc_D0E61B: FLdRfVar var_180
  loc_D0E61E: FLdRfVar var_170
  loc_D0E621: LitVarStr var_16C, "ImpoLade"
  loc_D0E626: PopAdLdVar
  loc_D0E627: FLdRfVar var_15C
  loc_D0E62A: FLdPr Me
  loc_D0E62D: MemLdPr global_64
  loc_D0E630:  = Me.Fields
  loc_D0E635: FLdPr var_15C
  loc_D0E638: from_stack_2 = Me.Item(from_stack_1)
  loc_D0E63D: FLdPr var_170
  loc_D0E640:  = Me.Value
  loc_D0E645: FLdFPR8 CrafLian
  loc_D0E648: FLdRfVar var_180
  loc_D0E64B: FnCDblVar
  loc_D0E64D: GtR4
  loc_D0E64E: FFreeAd var_15C = ""
  loc_D0E655: FFree1Var var_180 = ""
  loc_D0E658: BranchF loc_D0EB17
  loc_D0E65B: LitStr "SELECT * FROM liandeta WHERE PeriLiqu = "
  loc_D0E65E: FLdI2 PeriLiqu
  loc_D0E661: CStrUI1
  loc_D0E663: FStStrNoPop var_11C
  loc_D0E666: ConcatStr
  loc_D0E667: FStStrNoPop var_120
  loc_D0E66A: LitStr " AND Bimeliqu = "
  loc_D0E66D: ConcatStr
  loc_D0E66E: FStStrNoPop var_124
  loc_D0E671: FLdUI1
  loc_D0E675: CStrI2
  loc_D0E677: FStStrNoPop var_128
  loc_D0E67A: ConcatStr
  loc_D0E67B: FStStrNoPop var_12C
  loc_D0E67E: LitStr " AND CodiTili = "
  loc_D0E681: ConcatStr
  loc_D0E682: FStStrNoPop var_130
  loc_D0E685: FLdUI1
  loc_D0E689: CStrI2
  loc_D0E68B: FStStrNoPop var_134
  loc_D0E68E: ConcatStr
  loc_D0E68F: FStStrNoPop var_138
  loc_D0E692: LitStr " AND NumeLiqu = "
  loc_D0E695: ConcatStr
  loc_D0E696: FStStrNoPop var_13C
  loc_D0E699: FLdI2 NumeLiqu
  loc_D0E69C: CStrUI1
  loc_D0E69E: FStStrNoPop var_140
  loc_D0E6A1: ConcatStr
  loc_D0E6A2: FStStrNoPop var_144
  loc_D0E6A5: LitStr " AND CodiCome = "
  loc_D0E6A8: ConcatStr
  loc_D0E6A9: FStStrNoPop var_148
  loc_D0E6AC: ILdRf CodiCome
  loc_D0E6AF: CStrI4
  loc_D0E6B1: FStStrNoPop var_14C
  loc_D0E6B4: ConcatStr
  loc_D0E6B5: FStStrNoPop var_150
  loc_D0E6B8: LitStr " AND CodiConc = '"
  loc_D0E6BB: ConcatStr
  loc_D0E6BC: FStStrNoPop var_660
  loc_D0E6BF: ILdRf var_88
  loc_D0E6C2: ConcatStr
  loc_D0E6C3: FStStrNoPop var_664
  loc_D0E6C6: LitStr "'"
  loc_D0E6C9: ConcatStr
  loc_D0E6CA: FStStrNoPop var_668
  loc_D0E6CD: LitStr " AND TipoVenc = "
  loc_D0E6D0: ConcatStr
  loc_D0E6D1: FStStrNoPop var_66C
  loc_D0E6D4: FLdUI1
  loc_D0E6D8: CStrI2
  loc_D0E6DA: FStStrNoPop var_670
  loc_D0E6DD: ConcatStr
  loc_D0E6DE: FStStrNoPop var_674
  loc_D0E6E1: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLade"
  loc_D0E6E4: ConcatStr
  loc_D0E6E5: FStStrNoPop var_678
  loc_D0E6E8: Call EjecutarRsCls1(from_stack_1v)
  loc_D0E6ED: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = ""
  loc_D0E71A: FLdRfVar var_154
  loc_D0E71D: FLdPr Me
  loc_D0E720: MemLdPr global_60
  loc_D0E723:  = Me.RecordCount
  loc_D0E728: ILdRf var_154
  loc_D0E72B: LitI4 0
  loc_D0E730: GtI4
  loc_D0E731: BranchF loc_D0EB14
  loc_D0E734: FLdPr Me
  loc_D0E737: MemLdPr global_60
  loc_D0E73A: Me.MoveFirst
  loc_D0E73F: FLdRfVar var_180
  loc_D0E742: FLdRfVar var_170
  loc_D0E745: LitVarStr var_16C, "ImpoLade"
  loc_D0E74A: PopAdLdVar
  loc_D0E74B: FLdRfVar var_15C
  loc_D0E74E: FLdPr Me
  loc_D0E751: MemLdPr global_64
  loc_D0E754:  = Me.Fields
  loc_D0E759: FLdPr var_15C
  loc_D0E75C: from_stack_2 = Me.Item(from_stack_1)
  loc_D0E761: FLdPr var_170
  loc_D0E764:  = Me.Value
  loc_D0E769: LitI4 2
  loc_D0E76E: FLdFPR8 CrafLian
  loc_D0E771: FLdRfVar var_180
  loc_D0E774: FnCDblVar
  loc_D0E776: SubR4
  loc_D0E777: CVarR8
  loc_D0E77B: FLdRfVar var_1B0
  loc_D0E77E: ImpAdCallFPR4  = Round(, )
  loc_D0E783: LitStr " UPDATE liandeta SET ImpoLade = ImpoLade + "
  loc_D0E786: LitI4 0
  loc_D0E78B: LitI4 -1
  loc_D0E790: LitI4 1
  loc_D0E795: LitStr "."
  loc_D0E798: LitStr ","
  loc_D0E79B: FLdRfVar var_1B0
  loc_D0E79E: CStrVarVal var_11C
  loc_D0E7A2: ImpAdCallI2 Replace(, , , , , )
  loc_D0E7A7: FStStrNoPop var_120
  loc_D0E7AA: ConcatStr
  loc_D0E7AB: FStStrNoPop var_124
  loc_D0E7AE: LitStr ", TotaLade = ImpoLade - DecaLade "
  loc_D0E7B1: ConcatStr
  loc_D0E7B2: FStStrNoPop var_128
  loc_D0E7B5: LitStr " WHERE PeriLiqu = "
  loc_D0E7B8: ConcatStr
  loc_D0E7B9: CVarStr var_1E0
  loc_D0E7BC: FLdRfVar var_1C0
  loc_D0E7BF: FLdRfVar var_1F8
  loc_D0E7C2: LitVarStr var_1D0, "PeriLiqu"
  loc_D0E7C7: PopAdLdVar
  loc_D0E7C8: FLdRfVar var_1E4
  loc_D0E7CB: FLdPr Me
  loc_D0E7CE: MemLdPr global_60
  loc_D0E7D1:  = Me.Fields
  loc_D0E7D6: FLdPr var_1E4
  loc_D0E7D9: from_stack_2 = Me.Item(from_stack_1)
  loc_D0E7DE: FLdPr var_1F8
  loc_D0E7E1:  = Me.Value
  loc_D0E7E6: FLdRfVar var_1C0
  loc_D0E7E9: ConcatVar var_208
  loc_D0E7ED: LitVarStr var_1F4, " AND Bimeliqu = "
  loc_D0E7F2: ConcatVar var_218
  loc_D0E7F6: FLdRfVar var_238
  loc_D0E7F9: FLdRfVar var_250
  loc_D0E7FC: LitVarStr var_228, "BimeLiqu"
  loc_D0E801: PopAdLdVar
  loc_D0E802: FLdRfVar var_23C
  loc_D0E805: FLdPr Me
  loc_D0E808: MemLdPr global_60
  loc_D0E80B:  = Me.Fields
  loc_D0E810: FLdPr var_23C
  loc_D0E813: from_stack_2 = Me.Item(from_stack_1)
  loc_D0E818: FLdPr var_250
  loc_D0E81B:  = Me.Value
  loc_D0E820: FLdRfVar var_238
  loc_D0E823: ConcatVar var_260
  loc_D0E827: LitVarStr var_24C, " AND CodiTili = "
  loc_D0E82C: ConcatVar var_270
  loc_D0E830: FLdRfVar var_290
  loc_D0E833: FLdRfVar var_2A8
  loc_D0E836: LitVarStr var_280, "CodiTili"
  loc_D0E83B: PopAdLdVar
  loc_D0E83C: FLdRfVar var_294
  loc_D0E83F: FLdPr Me
  loc_D0E842: MemLdPr global_60
  loc_D0E845:  = Me.Fields
  loc_D0E84A: FLdPr var_294
  loc_D0E84D: from_stack_2 = Me.Item(from_stack_1)
  loc_D0E852: FLdPr var_2A8
  loc_D0E855:  = Me.Value
  loc_D0E85A: FLdRfVar var_290
  loc_D0E85D: ConcatVar var_2B8
  loc_D0E861: LitVarStr var_2A4, " AND NumeLiqu = "
  loc_D0E866: ConcatVar var_2C8
  loc_D0E86A: FLdRfVar var_2E8
  loc_D0E86D: FLdRfVar var_300
  loc_D0E870: LitVarStr var_2D8, "NumeLiqu"
  loc_D0E875: PopAdLdVar
  loc_D0E876: FLdRfVar var_2EC
  loc_D0E879: FLdPr Me
  loc_D0E87C: MemLdPr global_60
  loc_D0E87F:  = Me.Fields
  loc_D0E884: FLdPr var_2EC
  loc_D0E887: from_stack_2 = Me.Item(from_stack_1)
  loc_D0E88C: FLdPr var_300
  loc_D0E88F:  = Me.Value
  loc_D0E894: FLdRfVar var_2E8
  loc_D0E897: ConcatVar var_310
  loc_D0E89B: LitVarStr var_2FC, " AND CodiCome = "
  loc_D0E8A0: ConcatVar var_320
  loc_D0E8A4: FLdRfVar var_340
  loc_D0E8A7: FLdRfVar var_3BC
  loc_D0E8AA: LitVarStr var_330, "CodiCome"
  loc_D0E8AF: PopAdLdVar
  loc_D0E8B0: FLdRfVar var_3A8
  loc_D0E8B3: FLdPr Me
  loc_D0E8B6: MemLdPr global_60
  loc_D0E8B9:  = Me.Fields
  loc_D0E8BE: FLdPr var_3A8
  loc_D0E8C1: from_stack_2 = Me.Item(from_stack_1)
  loc_D0E8C6: FLdPr var_3BC
  loc_D0E8C9:  = Me.Value
  loc_D0E8CE: FLdRfVar var_340
  loc_D0E8D1: ConcatVar var_360
  loc_D0E8D5: LitVarStr var_350, " AND CodiConc = '"
  loc_D0E8DA: ConcatVar var_380
  loc_D0E8DE: FLdRfVar var_3A0
  loc_D0E8E1: FLdRfVar var_414
  loc_D0E8E4: LitVarStr var_370, "CodiConc"
  loc_D0E8E9: PopAdLdVar
  loc_D0E8EA: FLdRfVar var_400
  loc_D0E8ED: FLdPr Me
  loc_D0E8F0: MemLdPr global_60
  loc_D0E8F3:  = Me.Fields
  loc_D0E8F8: FLdPr var_400
  loc_D0E8FB: from_stack_2 = Me.Item(from_stack_1)
  loc_D0E900: FLdPr var_414
  loc_D0E903:  = Me.Value
  loc_D0E908: FLdRfVar var_3A0
  loc_D0E90B: ConcatVar var_3CC
  loc_D0E90F: LitVarStr var_390, "'"
  loc_D0E914: ConcatVar var_3DC
  loc_D0E918: LitVarStr var_3B8, " AND TipoVenc = "
  loc_D0E91D: ConcatVar var_3FC
  loc_D0E921: FLdRfVar var_424
  loc_D0E924: FLdRfVar var_46C
  loc_D0E927: LitVarStr var_3EC, "TipoVenc"
  loc_D0E92C: PopAdLdVar
  loc_D0E92D: FLdRfVar var_458
  loc_D0E930: FLdPr Me
  loc_D0E933: MemLdPr global_60
  loc_D0E936:  = Me.Fields
  loc_D0E93B: FLdPr var_458
  loc_D0E93E: from_stack_2 = Me.Item(from_stack_1)
  loc_D0E943: FLdPr var_46C
  loc_D0E946:  = Me.Value
  loc_D0E94B: FLdRfVar var_424
  loc_D0E94E: ConcatVar var_434
  loc_D0E952: LitVarStr var_410, " AND CodiRamo = "
  loc_D0E957: ConcatVar var_454
  loc_D0E95B: FLdRfVar var_47C
  loc_D0E95E: FLdRfVar var_4C4
  loc_D0E961: LitVarStr var_444, "CodiRamo"
  loc_D0E966: PopAdLdVar
  loc_D0E967: FLdRfVar var_4B0
  loc_D0E96A: FLdPr Me
  loc_D0E96D: MemLdPr global_60
  loc_D0E970:  = Me.Fields
  loc_D0E975: FLdPr var_4B0
  loc_D0E978: from_stack_2 = Me.Item(from_stack_1)
  loc_D0E97D: FLdPr var_4C4
  loc_D0E980:  = Me.Value
  loc_D0E985: FLdRfVar var_47C
  loc_D0E988: ConcatVar var_48C
  loc_D0E98C: LitVarStr var_468, " AND CodiRubr = "
  loc_D0E991: ConcatVar var_4AC
  loc_D0E995: FLdRfVar var_4D4
  loc_D0E998: FLdRfVar var_51C
  loc_D0E99B: LitVarStr var_49C, "CodiRubr"
  loc_D0E9A0: PopAdLdVar
  loc_D0E9A1: FLdRfVar var_508
  loc_D0E9A4: FLdPr Me
  loc_D0E9A7: MemLdPr global_60
  loc_D0E9AA:  = Me.Fields
  loc_D0E9AF: FLdPr var_508
  loc_D0E9B2: from_stack_2 = Me.Item(from_stack_1)
  loc_D0E9B7: FLdPr var_51C
  loc_D0E9BA:  = Me.Value
  loc_D0E9BF: FLdRfVar var_4D4
  loc_D0E9C2: ConcatVar var_4E4
  loc_D0E9C6: LitVarStr var_4C0, " AND PeriOrde = "
  loc_D0E9CB: ConcatVar var_504
  loc_D0E9CF: FLdRfVar var_52C
  loc_D0E9D2: FLdRfVar var_95C
  loc_D0E9D5: LitVarStr var_4F4, "PeriOrde"
  loc_D0E9DA: PopAdLdVar
  loc_D0E9DB: FLdRfVar var_958
  loc_D0E9DE: FLdPr Me
  loc_D0E9E1: MemLdPr global_60
  loc_D0E9E4:  = Me.Fields
  loc_D0E9E9: FLdPr var_958
  loc_D0E9EC: from_stack_2 = Me.Item(from_stack_1)
  loc_D0E9F1: FLdPr var_95C
  loc_D0E9F4:  = Me.Value
  loc_D0E9F9: FLdRfVar var_52C
  loc_D0E9FC: ConcatVar var_53C
  loc_D0EA00: LitVarStr var_518, " AND CodiSubr = "
  loc_D0EA05: ConcatVar var_55C
  loc_D0EA09: FLdRfVar var_56C
  loc_D0EA0C: FLdRfVar var_964
  loc_D0EA0F: LitVarStr var_54C, "CodiSubr"
  loc_D0EA14: PopAdLdVar
  loc_D0EA15: FLdRfVar var_960
  loc_D0EA18: FLdPr Me
  loc_D0EA1B: MemLdPr global_60
  loc_D0EA1E:  = Me.Fields
  loc_D0EA23: FLdPr var_960
  loc_D0EA26: from_stack_2 = Me.Item(from_stack_1)
  loc_D0EA2B: FLdPr var_964
  loc_D0EA2E:  = Me.Value
  loc_D0EA33: FLdRfVar var_56C
  loc_D0EA36: ConcatVar var_57C
  loc_D0EA3A: LitVarStr var_58C, " AND NumeLade = "
  loc_D0EA3F: ConcatVar var_59C
  loc_D0EA43: FLdRfVar var_5AC
  loc_D0EA46: FLdRfVar var_96C
  loc_D0EA49: LitVarStr var_5CC, "NumeLade"
  loc_D0EA4E: PopAdLdVar
  loc_D0EA4F: FLdRfVar var_968
  loc_D0EA52: FLdPr Me
  loc_D0EA55: MemLdPr global_60
  loc_D0EA58:  = Me.Fields
  loc_D0EA5D: FLdPr var_968
  loc_D0EA60: from_stack_2 = Me.Item(from_stack_1)
  loc_D0EA65: FLdPr var_96C
  loc_D0EA68:  = Me.Value
  loc_D0EA6D: FLdRfVar var_5AC
  loc_D0EA70: ConcatVar var_5BC
  loc_D0EA74: CStrVarVal var_12C
  loc_D0EA78: Call EjecutarRsCls(from_stack_1v)
  loc_D0EA7D: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_D0EA8A: FFreeAd var_15C = "": var_170 = "": var_1E4 = "": var_1F8 = "": var_23C = "": var_250 = "": var_294 = "": var_2A8 = "": var_2EC = "": var_300 = "": var_3A8 = "": var_3BC = "": var_400 = "": var_414 = "": var_458 = "": var_46C = "": var_4B0 = "": var_4C4 = "": var_508 = "": var_51C = "": var_958 = "": var_95C = "": var_960 = "": var_964 = "": var_968 = ""
  loc_D0EAC1: FFreeVar var_4E4 = "": var_504 = "": var_52C = "": var_53C = "": var_55C = "": var_56C = "": var_57C = "": var_59C = "": var_5AC = "": var_5BC = "": var_180 = "": var_1A0 = "": var_1B0 = "": var_1E0 = "": var_1C0 = "": var_208 = "": var_218 = "": var_238 = "": var_260 = "": var_270 = "": var_290 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_310 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3CC = "": var_3DC = "": var_3FC = "": var_424 = "": var_434 = "": var_454 = "": var_47C = "": var_48C = "": var_4AC = ""
  loc_D0EB14: Branch loc_D0EFF9
  loc_D0EB17: FLdRfVar var_180
  loc_D0EB1A: FLdRfVar var_170
  loc_D0EB1D: LitVarStr var_16C, "ImpoLcde"
  loc_D0EB22: PopAdLdVar
  loc_D0EB23: FLdRfVar var_15C
  loc_D0EB26: FLdPr Me
  loc_D0EB29: MemLdPr global_64
  loc_D0EB2C:  = Me.Fields
  loc_D0EB31: FLdPr var_15C
  loc_D0EB34: from_stack_2 = Me.Item(from_stack_1)
  loc_D0EB39: FLdPr var_170
  loc_D0EB3C:  = Me.Value
  loc_D0EB41: FLdFPR8 CrafLian
  loc_D0EB44: FLdRfVar var_180
  loc_D0EB47: FnCDblVar
  loc_D0EB49: LtR8
  loc_D0EB4A: FFreeAd var_15C = ""
  loc_D0EB51: FFree1Var var_180 = ""
  loc_D0EB54: BranchF loc_D0EFF9
  loc_D0EB57: LitStr "SELECT * FROM liandeta WHERE PeriLiqu = "
  loc_D0EB5A: FLdI2 PeriLiqu
  loc_D0EB5D: CStrUI1
  loc_D0EB5F: FStStrNoPop var_11C
  loc_D0EB62: ConcatStr
  loc_D0EB63: FStStrNoPop var_120
  loc_D0EB66: LitStr " AND Bimeliqu = "
  loc_D0EB69: ConcatStr
  loc_D0EB6A: FStStrNoPop var_124
  loc_D0EB6D: FLdUI1
  loc_D0EB71: CStrI2
  loc_D0EB73: FStStrNoPop var_128
  loc_D0EB76: ConcatStr
  loc_D0EB77: FStStrNoPop var_12C
  loc_D0EB7A: LitStr " AND CodiTili = "
  loc_D0EB7D: ConcatStr
  loc_D0EB7E: FStStrNoPop var_130
  loc_D0EB81: FLdUI1
  loc_D0EB85: CStrI2
  loc_D0EB87: FStStrNoPop var_134
  loc_D0EB8A: ConcatStr
  loc_D0EB8B: FStStrNoPop var_138
  loc_D0EB8E: LitStr " AND NumeLiqu = "
  loc_D0EB91: ConcatStr
  loc_D0EB92: FStStrNoPop var_13C
  loc_D0EB95: FLdI2 NumeLiqu
  loc_D0EB98: CStrUI1
  loc_D0EB9A: FStStrNoPop var_140
  loc_D0EB9D: ConcatStr
  loc_D0EB9E: FStStrNoPop var_144
  loc_D0EBA1: LitStr " AND CodiCome = "
  loc_D0EBA4: ConcatStr
  loc_D0EBA5: FStStrNoPop var_148
  loc_D0EBA8: ILdRf CodiCome
  loc_D0EBAB: CStrI4
  loc_D0EBAD: FStStrNoPop var_14C
  loc_D0EBB0: ConcatStr
  loc_D0EBB1: FStStrNoPop var_150
  loc_D0EBB4: LitStr " AND CodiConc = '"
  loc_D0EBB7: ConcatStr
  loc_D0EBB8: FStStrNoPop var_660
  loc_D0EBBB: ILdRf var_88
  loc_D0EBBE: ConcatStr
  loc_D0EBBF: FStStrNoPop var_664
  loc_D0EBC2: LitStr "'"
  loc_D0EBC5: ConcatStr
  loc_D0EBC6: FStStrNoPop var_668
  loc_D0EBC9: LitStr " AND TipoVenc = "
  loc_D0EBCC: ConcatStr
  loc_D0EBCD: FStStrNoPop var_66C
  loc_D0EBD0: FLdUI1
  loc_D0EBD4: CStrI2
  loc_D0EBD6: FStStrNoPop var_670
  loc_D0EBD9: ConcatStr
  loc_D0EBDA: FStStrNoPop var_674
  loc_D0EBDD: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLade"
  loc_D0EBE0: ConcatStr
  loc_D0EBE1: FStStrNoPop var_678
  loc_D0EBE4: Call EjecutarRsCls1(from_stack_1v)
  loc_D0EBE9: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = ""
  loc_D0EC16: FLdRfVar var_154
  loc_D0EC19: FLdPr Me
  loc_D0EC1C: MemLdPr global_60
  loc_D0EC1F:  = Me.RecordCount
  loc_D0EC24: ILdRf var_154
  loc_D0EC27: LitI4 0
  loc_D0EC2C: GtI4
  loc_D0EC2D: BranchF loc_D0EFF9
  loc_D0EC30: FLdPr Me
  loc_D0EC33: MemLdPr global_60
  loc_D0EC36: Me.MoveFirst
  loc_D0EC3B: FLdRfVar var_180
  loc_D0EC3E: FLdRfVar var_170
  loc_D0EC41: LitVarStr var_16C, "ImpoLade"
  loc_D0EC46: PopAdLdVar
  loc_D0EC47: FLdRfVar var_15C
  loc_D0EC4A: FLdPr Me
  loc_D0EC4D: MemLdPr global_64
  loc_D0EC50:  = Me.Fields
  loc_D0EC55: FLdPr var_15C
  loc_D0EC58: from_stack_2 = Me.Item(from_stack_1)
  loc_D0EC5D: FLdPr var_170
  loc_D0EC60:  = Me.Value
  loc_D0EC65: LitStr " UPDATE liandeta SET ImpoLade = ImpoLade - "
  loc_D0EC68: LitI4 0
  loc_D0EC6D: LitI4 -1
  loc_D0EC72: LitI4 1
  loc_D0EC77: LitStr "."
  loc_D0EC7A: LitStr ","
  loc_D0EC7D: FLdRfVar var_180
  loc_D0EC80: FnCDblVar
  loc_D0EC82: FLdFPR8 CrafLian
  loc_D0EC85: SubR4
  loc_D0EC86: CStrR8
  loc_D0EC88: FStStrNoPop var_11C
  loc_D0EC8B: ImpAdCallI2 Replace(, , , , , )
  loc_D0EC90: FStStrNoPop var_120
  loc_D0EC93: ConcatStr
  loc_D0EC94: FStStrNoPop var_124
  loc_D0EC97: LitStr ", TotaLade = ImpoLade - DecaLade "
  loc_D0EC9A: ConcatStr
  loc_D0EC9B: FStStrNoPop var_128
  loc_D0EC9E: LitStr " WHERE PeriLiqu = "
  loc_D0ECA1: ConcatStr
  loc_D0ECA2: CVarStr var_1B0
  loc_D0ECA5: FLdRfVar var_1A0
  loc_D0ECA8: FLdRfVar var_1F8
  loc_D0ECAB: LitVarStr var_190, "PeriLiqu"
  loc_D0ECB0: PopAdLdVar
  loc_D0ECB1: FLdRfVar var_1E4
  loc_D0ECB4: FLdPr Me
  loc_D0ECB7: MemLdPr global_60
  loc_D0ECBA:  = Me.Fields
  loc_D0ECBF: FLdPr var_1E4
  loc_D0ECC2: from_stack_2 = Me.Item(from_stack_1)
  loc_D0ECC7: FLdPr var_1F8
  loc_D0ECCA:  = Me.Value
  loc_D0ECCF: FLdRfVar var_1A0
  loc_D0ECD2: ConcatVar var_1C0
  loc_D0ECD6: LitVarStr var_1D0, " AND Bimeliqu = "
  loc_D0ECDB: ConcatVar var_1E0
  loc_D0ECDF: FLdRfVar var_208
  loc_D0ECE2: FLdRfVar var_250
  loc_D0ECE5: LitVarStr var_1F4, "BimeLiqu"
  loc_D0ECEA: PopAdLdVar
  loc_D0ECEB: FLdRfVar var_23C
  loc_D0ECEE: FLdPr Me
  loc_D0ECF1: MemLdPr global_60
  loc_D0ECF4:  = Me.Fields
  loc_D0ECF9: FLdPr var_23C
  loc_D0ECFC: from_stack_2 = Me.Item(from_stack_1)
  loc_D0ED01: FLdPr var_250
  loc_D0ED04:  = Me.Value
  loc_D0ED09: FLdRfVar var_208
  loc_D0ED0C: ConcatVar var_218
  loc_D0ED10: LitVarStr var_228, " AND CodiTili = "
  loc_D0ED15: ConcatVar var_238
  loc_D0ED19: FLdRfVar var_260
  loc_D0ED1C: FLdRfVar var_2A8
  loc_D0ED1F: LitVarStr var_24C, "CodiTili"
  loc_D0ED24: PopAdLdVar
  loc_D0ED25: FLdRfVar var_294
  loc_D0ED28: FLdPr Me
  loc_D0ED2B: MemLdPr global_60
  loc_D0ED2E:  = Me.Fields
  loc_D0ED33: FLdPr var_294
  loc_D0ED36: from_stack_2 = Me.Item(from_stack_1)
  loc_D0ED3B: FLdPr var_2A8
  loc_D0ED3E:  = Me.Value
  loc_D0ED43: FLdRfVar var_260
  loc_D0ED46: ConcatVar var_270
  loc_D0ED4A: LitVarStr var_280, " AND NumeLiqu = "
  loc_D0ED4F: ConcatVar var_290
  loc_D0ED53: FLdRfVar var_2B8
  loc_D0ED56: FLdRfVar var_300
  loc_D0ED59: LitVarStr var_2A4, "NumeLiqu"
  loc_D0ED5E: PopAdLdVar
  loc_D0ED5F: FLdRfVar var_2EC
  loc_D0ED62: FLdPr Me
  loc_D0ED65: MemLdPr global_60
  loc_D0ED68:  = Me.Fields
  loc_D0ED6D: FLdPr var_2EC
  loc_D0ED70: from_stack_2 = Me.Item(from_stack_1)
  loc_D0ED75: FLdPr var_300
  loc_D0ED78:  = Me.Value
  loc_D0ED7D: FLdRfVar var_2B8
  loc_D0ED80: ConcatVar var_2C8
  loc_D0ED84: LitVarStr var_2D8, " AND CodiCome = "
  loc_D0ED89: ConcatVar var_2E8
  loc_D0ED8D: FLdRfVar var_310
  loc_D0ED90: FLdRfVar var_3BC
  loc_D0ED93: LitVarStr var_2FC, "CodiCome"
  loc_D0ED98: PopAdLdVar
  loc_D0ED99: FLdRfVar var_3A8
  loc_D0ED9C: FLdPr Me
  loc_D0ED9F: MemLdPr global_60
  loc_D0EDA2:  = Me.Fields
  loc_D0EDA7: FLdPr var_3A8
  loc_D0EDAA: from_stack_2 = Me.Item(from_stack_1)
  loc_D0EDAF: FLdPr var_3BC
  loc_D0EDB2:  = Me.Value
  loc_D0EDB7: FLdRfVar var_310
  loc_D0EDBA: ConcatVar var_320
  loc_D0EDBE: LitVarStr var_330, " AND CodiConc = '"
  loc_D0EDC3: ConcatVar var_340
  loc_D0EDC7: FLdRfVar var_360
  loc_D0EDCA: FLdRfVar var_414
  loc_D0EDCD: LitVarStr var_350, "CodiConc"
  loc_D0EDD2: PopAdLdVar
  loc_D0EDD3: FLdRfVar var_400
  loc_D0EDD6: FLdPr Me
  loc_D0EDD9: MemLdPr global_60
  loc_D0EDDC:  = Me.Fields
  loc_D0EDE1: FLdPr var_400
  loc_D0EDE4: from_stack_2 = Me.Item(from_stack_1)
  loc_D0EDE9: FLdPr var_414
  loc_D0EDEC:  = Me.Value
  loc_D0EDF1: FLdRfVar var_360
  loc_D0EDF4: ConcatVar var_380
  loc_D0EDF8: LitVarStr var_370, "'"
  loc_D0EDFD: ConcatVar var_3A0
  loc_D0EE01: LitVarStr var_390, " AND TipoVenc = "
  loc_D0EE06: ConcatVar var_3CC
  loc_D0EE0A: FLdRfVar var_3DC
  loc_D0EE0D: FLdRfVar var_46C
  loc_D0EE10: LitVarStr var_3B8, "TipoVenc"
  loc_D0EE15: PopAdLdVar
  loc_D0EE16: FLdRfVar var_458
  loc_D0EE19: FLdPr Me
  loc_D0EE1C: MemLdPr global_60
  loc_D0EE1F:  = Me.Fields
  loc_D0EE24: FLdPr var_458
  loc_D0EE27: from_stack_2 = Me.Item(from_stack_1)
  loc_D0EE2C: FLdPr var_46C
  loc_D0EE2F:  = Me.Value
  loc_D0EE34: FLdRfVar var_3DC
  loc_D0EE37: ConcatVar var_3FC
  loc_D0EE3B: LitVarStr var_3EC, " AND CodiRamo = "
  loc_D0EE40: ConcatVar var_424
  loc_D0EE44: FLdRfVar var_434
  loc_D0EE47: FLdRfVar var_4C4
  loc_D0EE4A: LitVarStr var_410, "CodiRamo"
  loc_D0EE4F: PopAdLdVar
  loc_D0EE50: FLdRfVar var_4B0
  loc_D0EE53: FLdPr Me
  loc_D0EE56: MemLdPr global_60
  loc_D0EE59:  = Me.Fields
  loc_D0EE5E: FLdPr var_4B0
  loc_D0EE61: from_stack_2 = Me.Item(from_stack_1)
  loc_D0EE66: FLdPr var_4C4
  loc_D0EE69:  = Me.Value
  loc_D0EE6E: FLdRfVar var_434
  loc_D0EE71: ConcatVar var_454
  loc_D0EE75: LitVarStr var_444, " AND CodiRubr = "
  loc_D0EE7A: ConcatVar var_47C
  loc_D0EE7E: FLdRfVar var_48C
  loc_D0EE81: FLdRfVar var_51C
  loc_D0EE84: LitVarStr var_468, "CodiRubr"
  loc_D0EE89: PopAdLdVar
  loc_D0EE8A: FLdRfVar var_508
  loc_D0EE8D: FLdPr Me
  loc_D0EE90: MemLdPr global_60
  loc_D0EE93:  = Me.Fields
  loc_D0EE98: FLdPr var_508
  loc_D0EE9B: from_stack_2 = Me.Item(from_stack_1)
  loc_D0EEA0: FLdPr var_51C
  loc_D0EEA3:  = Me.Value
  loc_D0EEA8: FLdRfVar var_48C
  loc_D0EEAB: ConcatVar var_4AC
  loc_D0EEAF: LitVarStr var_49C, " AND PeriOrde = "
  loc_D0EEB4: ConcatVar var_4D4
  loc_D0EEB8: FLdRfVar var_4E4
  loc_D0EEBB: FLdRfVar var_95C
  loc_D0EEBE: LitVarStr var_4C0, "PeriOrde"
  loc_D0EEC3: PopAdLdVar
  loc_D0EEC4: FLdRfVar var_958
  loc_D0EEC7: FLdPr Me
  loc_D0EECA: MemLdPr global_60
  loc_D0EECD:  = Me.Fields
  loc_D0EED2: FLdPr var_958
  loc_D0EED5: from_stack_2 = Me.Item(from_stack_1)
  loc_D0EEDA: FLdPr var_95C
  loc_D0EEDD:  = Me.Value
  loc_D0EEE2: FLdRfVar var_4E4
  loc_D0EEE5: ConcatVar var_504
  loc_D0EEE9: LitVarStr var_4F4, " AND CodiSubr = "
  loc_D0EEEE: ConcatVar var_52C
  loc_D0EEF2: FLdRfVar var_53C
  loc_D0EEF5: FLdRfVar var_964
  loc_D0EEF8: LitVarStr var_518, "CodiSubr"
  loc_D0EEFD: PopAdLdVar
  loc_D0EEFE: FLdRfVar var_960
  loc_D0EF01: FLdPr Me
  loc_D0EF04: MemLdPr global_60
  loc_D0EF07:  = Me.Fields
  loc_D0EF0C: FLdPr var_960
  loc_D0EF0F: from_stack_2 = Me.Item(from_stack_1)
  loc_D0EF14: FLdPr var_964
  loc_D0EF17:  = Me.Value
  loc_D0EF1C: FLdRfVar var_53C
  loc_D0EF1F: ConcatVar var_55C
  loc_D0EF23: LitVarStr var_54C, " AND NumeLade = "
  loc_D0EF28: ConcatVar var_56C
  loc_D0EF2C: FLdRfVar var_57C
  loc_D0EF2F: FLdRfVar var_96C
  loc_D0EF32: LitVarStr var_58C, "NumeLade"
  loc_D0EF37: PopAdLdVar
  loc_D0EF38: FLdRfVar var_968
  loc_D0EF3B: FLdPr Me
  loc_D0EF3E: MemLdPr global_60
  loc_D0EF41:  = Me.Fields
  loc_D0EF46: FLdPr var_968
  loc_D0EF49: from_stack_2 = Me.Item(from_stack_1)
  loc_D0EF4E: FLdPr var_96C
  loc_D0EF51:  = Me.Value
  loc_D0EF56: FLdRfVar var_57C
  loc_D0EF59: ConcatVar var_59C
  loc_D0EF5D: CStrVarVal var_12C
  loc_D0EF61: Call EjecutarRsCls(from_stack_1v)
  loc_D0EF66: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_D0EF73: FFreeAd var_15C = "": var_170 = "": var_1E4 = "": var_1F8 = "": var_23C = "": var_250 = "": var_294 = "": var_2A8 = "": var_2EC = "": var_300 = "": var_3A8 = "": var_3BC = "": var_400 = "": var_414 = "": var_458 = "": var_46C = "": var_4B0 = "": var_4C4 = "": var_508 = "": var_51C = "": var_958 = "": var_95C = "": var_960 = "": var_964 = "": var_968 = ""
  loc_D0EFAA: FFreeVar var_4E4 = "": var_504 = "": var_52C = "": var_53C = "": var_55C = "": var_56C = "": var_57C = "": var_59C = "": var_180 = "": var_1B0 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_208 = "": var_218 = "": var_238 = "": var_260 = "": var_270 = "": var_290 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_310 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3CC = "": var_3DC = "": var_3FC = "": var_424 = "": var_434 = "": var_454 = "": var_47C = "": var_48C = "": var_4AC = ""
  loc_D0EFF9: FLdFPR8 CodiRuta
  loc_D0EFFC: CVarR8
  loc_D0F000: HardType
  loc_D0F001: FLdRfVar var_180
  loc_D0F004: FLdRfVar var_170
  loc_D0F007: LitVarStr var_16C, "DecaLade"
  loc_D0F00C: PopAdLdVar
  loc_D0F00D: FLdRfVar var_15C
  loc_D0F010: FLdPr Me
  loc_D0F013: MemLdPr global_64
  loc_D0F016:  = Me.Fields
  loc_D0F01B: FLdPr var_15C
  loc_D0F01E: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F023: FLdPr var_170
  loc_D0F026:  = Me.Value
  loc_D0F02B: FLdRfVar var_180
  loc_D0F02E: NeVarBool
  loc_D0F030: FFreeAd var_15C = ""
  loc_D0F037: FFree1Var var_180 = ""
  loc_D0F03A: BranchF loc_D0FA32
  loc_D0F03D: FLdRfVar var_180
  loc_D0F040: FLdRfVar var_170
  loc_D0F043: LitVarStr var_16C, "DecaLade"
  loc_D0F048: PopAdLdVar
  loc_D0F049: FLdRfVar var_15C
  loc_D0F04C: FLdPr Me
  loc_D0F04F: MemLdPr global_64
  loc_D0F052:  = Me.Fields
  loc_D0F057: FLdPr var_15C
  loc_D0F05A: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F05F: FLdPr var_170
  loc_D0F062:  = Me.Value
  loc_D0F067: FLdFPR8 CodiRuta
  loc_D0F06A: FLdRfVar var_180
  loc_D0F06D: FnCDblVar
  loc_D0F06F: GtR4
  loc_D0F070: FFreeAd var_15C = ""
  loc_D0F077: FFree1Var var_180 = ""
  loc_D0F07A: BranchF loc_D0F539
  loc_D0F07D: LitStr "SELECT * FROM liandeta WHERE PeriLiqu = "
  loc_D0F080: FLdI2 PeriLiqu
  loc_D0F083: CStrUI1
  loc_D0F085: FStStrNoPop var_11C
  loc_D0F088: ConcatStr
  loc_D0F089: FStStrNoPop var_120
  loc_D0F08C: LitStr " AND Bimeliqu = "
  loc_D0F08F: ConcatStr
  loc_D0F090: FStStrNoPop var_124
  loc_D0F093: FLdUI1
  loc_D0F097: CStrI2
  loc_D0F099: FStStrNoPop var_128
  loc_D0F09C: ConcatStr
  loc_D0F09D: FStStrNoPop var_12C
  loc_D0F0A0: LitStr " AND CodiTili = "
  loc_D0F0A3: ConcatStr
  loc_D0F0A4: FStStrNoPop var_130
  loc_D0F0A7: FLdUI1
  loc_D0F0AB: CStrI2
  loc_D0F0AD: FStStrNoPop var_134
  loc_D0F0B0: ConcatStr
  loc_D0F0B1: FStStrNoPop var_138
  loc_D0F0B4: LitStr " AND NumeLiqu = "
  loc_D0F0B7: ConcatStr
  loc_D0F0B8: FStStrNoPop var_13C
  loc_D0F0BB: FLdI2 NumeLiqu
  loc_D0F0BE: CStrUI1
  loc_D0F0C0: FStStrNoPop var_140
  loc_D0F0C3: ConcatStr
  loc_D0F0C4: FStStrNoPop var_144
  loc_D0F0C7: LitStr " AND CodiCome = "
  loc_D0F0CA: ConcatStr
  loc_D0F0CB: FStStrNoPop var_148
  loc_D0F0CE: ILdRf CodiCome
  loc_D0F0D1: CStrI4
  loc_D0F0D3: FStStrNoPop var_14C
  loc_D0F0D6: ConcatStr
  loc_D0F0D7: FStStrNoPop var_150
  loc_D0F0DA: LitStr " AND CodiConc = '"
  loc_D0F0DD: ConcatStr
  loc_D0F0DE: FStStrNoPop var_660
  loc_D0F0E1: ILdRf var_88
  loc_D0F0E4: ConcatStr
  loc_D0F0E5: FStStrNoPop var_664
  loc_D0F0E8: LitStr "'"
  loc_D0F0EB: ConcatStr
  loc_D0F0EC: FStStrNoPop var_668
  loc_D0F0EF: LitStr " AND TipoVenc = "
  loc_D0F0F2: ConcatStr
  loc_D0F0F3: FStStrNoPop var_66C
  loc_D0F0F6: FLdUI1
  loc_D0F0FA: CStrI2
  loc_D0F0FC: FStStrNoPop var_670
  loc_D0F0FF: ConcatStr
  loc_D0F100: FStStrNoPop var_674
  loc_D0F103: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLade"
  loc_D0F106: ConcatStr
  loc_D0F107: FStStrNoPop var_678
  loc_D0F10A: Call EjecutarRsCls1(from_stack_1v)
  loc_D0F10F: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = ""
  loc_D0F13C: FLdRfVar var_154
  loc_D0F13F: FLdPr Me
  loc_D0F142: MemLdPr global_60
  loc_D0F145:  = Me.RecordCount
  loc_D0F14A: ILdRf var_154
  loc_D0F14D: LitI4 0
  loc_D0F152: GtI4
  loc_D0F153: BranchF loc_D0F536
  loc_D0F156: FLdPr Me
  loc_D0F159: MemLdPr global_60
  loc_D0F15C: Me.MoveFirst
  loc_D0F161: FLdRfVar var_180
  loc_D0F164: FLdRfVar var_170
  loc_D0F167: LitVarStr var_16C, "DecaLade"
  loc_D0F16C: PopAdLdVar
  loc_D0F16D: FLdRfVar var_15C
  loc_D0F170: FLdPr Me
  loc_D0F173: MemLdPr global_64
  loc_D0F176:  = Me.Fields
  loc_D0F17B: FLdPr var_15C
  loc_D0F17E: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F183: FLdPr var_170
  loc_D0F186:  = Me.Value
  loc_D0F18B: LitI4 2
  loc_D0F190: FLdFPR8 CodiRuta
  loc_D0F193: FLdRfVar var_180
  loc_D0F196: FnCDblVar
  loc_D0F198: SubR4
  loc_D0F199: CVarR8
  loc_D0F19D: FLdRfVar var_1B0
  loc_D0F1A0: ImpAdCallFPR4  = Round(, )
  loc_D0F1A5: LitStr " UPDATE liandeta SET DecaLade = DecaLade + "
  loc_D0F1A8: LitI4 0
  loc_D0F1AD: LitI4 -1
  loc_D0F1B2: LitI4 1
  loc_D0F1B7: LitStr "."
  loc_D0F1BA: LitStr ","
  loc_D0F1BD: FLdRfVar var_1B0
  loc_D0F1C0: CStrVarVal var_11C
  loc_D0F1C4: ImpAdCallI2 Replace(, , , , , )
  loc_D0F1C9: FStStrNoPop var_120
  loc_D0F1CC: ConcatStr
  loc_D0F1CD: FStStrNoPop var_124
  loc_D0F1D0: LitStr ", TotaLade = ImpoLade - DecaLade "
  loc_D0F1D3: ConcatStr
  loc_D0F1D4: FStStrNoPop var_128
  loc_D0F1D7: LitStr " WHERE PeriLiqu = "
  loc_D0F1DA: ConcatStr
  loc_D0F1DB: CVarStr var_1E0
  loc_D0F1DE: FLdRfVar var_1C0
  loc_D0F1E1: FLdRfVar var_1F8
  loc_D0F1E4: LitVarStr var_1D0, "PeriLiqu"
  loc_D0F1E9: PopAdLdVar
  loc_D0F1EA: FLdRfVar var_1E4
  loc_D0F1ED: FLdPr Me
  loc_D0F1F0: MemLdPr global_60
  loc_D0F1F3:  = Me.Fields
  loc_D0F1F8: FLdPr var_1E4
  loc_D0F1FB: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F200: FLdPr var_1F8
  loc_D0F203:  = Me.Value
  loc_D0F208: FLdRfVar var_1C0
  loc_D0F20B: ConcatVar var_208
  loc_D0F20F: LitVarStr var_1F4, " AND Bimeliqu = "
  loc_D0F214: ConcatVar var_218
  loc_D0F218: FLdRfVar var_238
  loc_D0F21B: FLdRfVar var_250
  loc_D0F21E: LitVarStr var_228, "BimeLiqu"
  loc_D0F223: PopAdLdVar
  loc_D0F224: FLdRfVar var_23C
  loc_D0F227: FLdPr Me
  loc_D0F22A: MemLdPr global_60
  loc_D0F22D:  = Me.Fields
  loc_D0F232: FLdPr var_23C
  loc_D0F235: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F23A: FLdPr var_250
  loc_D0F23D:  = Me.Value
  loc_D0F242: FLdRfVar var_238
  loc_D0F245: ConcatVar var_260
  loc_D0F249: LitVarStr var_24C, " AND CodiTili = "
  loc_D0F24E: ConcatVar var_270
  loc_D0F252: FLdRfVar var_290
  loc_D0F255: FLdRfVar var_2A8
  loc_D0F258: LitVarStr var_280, "CodiTili"
  loc_D0F25D: PopAdLdVar
  loc_D0F25E: FLdRfVar var_294
  loc_D0F261: FLdPr Me
  loc_D0F264: MemLdPr global_60
  loc_D0F267:  = Me.Fields
  loc_D0F26C: FLdPr var_294
  loc_D0F26F: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F274: FLdPr var_2A8
  loc_D0F277:  = Me.Value
  loc_D0F27C: FLdRfVar var_290
  loc_D0F27F: ConcatVar var_2B8
  loc_D0F283: LitVarStr var_2A4, " AND NumeLiqu = "
  loc_D0F288: ConcatVar var_2C8
  loc_D0F28C: FLdRfVar var_2E8
  loc_D0F28F: FLdRfVar var_300
  loc_D0F292: LitVarStr var_2D8, "NumeLiqu"
  loc_D0F297: PopAdLdVar
  loc_D0F298: FLdRfVar var_2EC
  loc_D0F29B: FLdPr Me
  loc_D0F29E: MemLdPr global_60
  loc_D0F2A1:  = Me.Fields
  loc_D0F2A6: FLdPr var_2EC
  loc_D0F2A9: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F2AE: FLdPr var_300
  loc_D0F2B1:  = Me.Value
  loc_D0F2B6: FLdRfVar var_2E8
  loc_D0F2B9: ConcatVar var_310
  loc_D0F2BD: LitVarStr var_2FC, " AND CodiCome = "
  loc_D0F2C2: ConcatVar var_320
  loc_D0F2C6: FLdRfVar var_340
  loc_D0F2C9: FLdRfVar var_3BC
  loc_D0F2CC: LitVarStr var_330, "CodiCome"
  loc_D0F2D1: PopAdLdVar
  loc_D0F2D2: FLdRfVar var_3A8
  loc_D0F2D5: FLdPr Me
  loc_D0F2D8: MemLdPr global_60
  loc_D0F2DB:  = Me.Fields
  loc_D0F2E0: FLdPr var_3A8
  loc_D0F2E3: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F2E8: FLdPr var_3BC
  loc_D0F2EB:  = Me.Value
  loc_D0F2F0: FLdRfVar var_340
  loc_D0F2F3: ConcatVar var_360
  loc_D0F2F7: LitVarStr var_350, " AND CodiConc = '"
  loc_D0F2FC: ConcatVar var_380
  loc_D0F300: FLdRfVar var_3A0
  loc_D0F303: FLdRfVar var_414
  loc_D0F306: LitVarStr var_370, "CodiConc"
  loc_D0F30B: PopAdLdVar
  loc_D0F30C: FLdRfVar var_400
  loc_D0F30F: FLdPr Me
  loc_D0F312: MemLdPr global_60
  loc_D0F315:  = Me.Fields
  loc_D0F31A: FLdPr var_400
  loc_D0F31D: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F322: FLdPr var_414
  loc_D0F325:  = Me.Value
  loc_D0F32A: FLdRfVar var_3A0
  loc_D0F32D: ConcatVar var_3CC
  loc_D0F331: LitVarStr var_390, "'"
  loc_D0F336: ConcatVar var_3DC
  loc_D0F33A: LitVarStr var_3B8, " AND TipoVenc = "
  loc_D0F33F: ConcatVar var_3FC
  loc_D0F343: FLdRfVar var_424
  loc_D0F346: FLdRfVar var_46C
  loc_D0F349: LitVarStr var_3EC, "TipoVenc"
  loc_D0F34E: PopAdLdVar
  loc_D0F34F: FLdRfVar var_458
  loc_D0F352: FLdPr Me
  loc_D0F355: MemLdPr global_60
  loc_D0F358:  = Me.Fields
  loc_D0F35D: FLdPr var_458
  loc_D0F360: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F365: FLdPr var_46C
  loc_D0F368:  = Me.Value
  loc_D0F36D: FLdRfVar var_424
  loc_D0F370: ConcatVar var_434
  loc_D0F374: LitVarStr var_410, " AND CodiRamo = "
  loc_D0F379: ConcatVar var_454
  loc_D0F37D: FLdRfVar var_47C
  loc_D0F380: FLdRfVar var_4C4
  loc_D0F383: LitVarStr var_444, "CodiRamo"
  loc_D0F388: PopAdLdVar
  loc_D0F389: FLdRfVar var_4B0
  loc_D0F38C: FLdPr Me
  loc_D0F38F: MemLdPr global_60
  loc_D0F392:  = Me.Fields
  loc_D0F397: FLdPr var_4B0
  loc_D0F39A: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F39F: FLdPr var_4C4
  loc_D0F3A2:  = Me.Value
  loc_D0F3A7: FLdRfVar var_47C
  loc_D0F3AA: ConcatVar var_48C
  loc_D0F3AE: LitVarStr var_468, " AND CodiRubr = "
  loc_D0F3B3: ConcatVar var_4AC
  loc_D0F3B7: FLdRfVar var_4D4
  loc_D0F3BA: FLdRfVar var_51C
  loc_D0F3BD: LitVarStr var_49C, "CodiRubr"
  loc_D0F3C2: PopAdLdVar
  loc_D0F3C3: FLdRfVar var_508
  loc_D0F3C6: FLdPr Me
  loc_D0F3C9: MemLdPr global_60
  loc_D0F3CC:  = Me.Fields
  loc_D0F3D1: FLdPr var_508
  loc_D0F3D4: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F3D9: FLdPr var_51C
  loc_D0F3DC:  = Me.Value
  loc_D0F3E1: FLdRfVar var_4D4
  loc_D0F3E4: ConcatVar var_4E4
  loc_D0F3E8: LitVarStr var_4C0, " AND PeriOrde = "
  loc_D0F3ED: ConcatVar var_504
  loc_D0F3F1: FLdRfVar var_52C
  loc_D0F3F4: FLdRfVar var_95C
  loc_D0F3F7: LitVarStr var_4F4, "PeriOrde"
  loc_D0F3FC: PopAdLdVar
  loc_D0F3FD: FLdRfVar var_958
  loc_D0F400: FLdPr Me
  loc_D0F403: MemLdPr global_60
  loc_D0F406:  = Me.Fields
  loc_D0F40B: FLdPr var_958
  loc_D0F40E: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F413: FLdPr var_95C
  loc_D0F416:  = Me.Value
  loc_D0F41B: FLdRfVar var_52C
  loc_D0F41E: ConcatVar var_53C
  loc_D0F422: LitVarStr var_518, " AND CodiSubr = "
  loc_D0F427: ConcatVar var_55C
  loc_D0F42B: FLdRfVar var_56C
  loc_D0F42E: FLdRfVar var_964
  loc_D0F431: LitVarStr var_54C, "CodiSubr"
  loc_D0F436: PopAdLdVar
  loc_D0F437: FLdRfVar var_960
  loc_D0F43A: FLdPr Me
  loc_D0F43D: MemLdPr global_60
  loc_D0F440:  = Me.Fields
  loc_D0F445: FLdPr var_960
  loc_D0F448: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F44D: FLdPr var_964
  loc_D0F450:  = Me.Value
  loc_D0F455: FLdRfVar var_56C
  loc_D0F458: ConcatVar var_57C
  loc_D0F45C: LitVarStr var_58C, " AND NumeLade = "
  loc_D0F461: ConcatVar var_59C
  loc_D0F465: FLdRfVar var_5AC
  loc_D0F468: FLdRfVar var_96C
  loc_D0F46B: LitVarStr var_5CC, "NumeLade"
  loc_D0F470: PopAdLdVar
  loc_D0F471: FLdRfVar var_968
  loc_D0F474: FLdPr Me
  loc_D0F477: MemLdPr global_60
  loc_D0F47A:  = Me.Fields
  loc_D0F47F: FLdPr var_968
  loc_D0F482: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F487: FLdPr var_96C
  loc_D0F48A:  = Me.Value
  loc_D0F48F: FLdRfVar var_5AC
  loc_D0F492: ConcatVar var_5BC
  loc_D0F496: CStrVarVal var_12C
  loc_D0F49A: Call EjecutarRsCls(from_stack_1v)
  loc_D0F49F: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_D0F4AC: FFreeAd var_15C = "": var_170 = "": var_1E4 = "": var_1F8 = "": var_23C = "": var_250 = "": var_294 = "": var_2A8 = "": var_2EC = "": var_300 = "": var_3A8 = "": var_3BC = "": var_400 = "": var_414 = "": var_458 = "": var_46C = "": var_4B0 = "": var_4C4 = "": var_508 = "": var_51C = "": var_958 = "": var_95C = "": var_960 = "": var_964 = "": var_968 = ""
  loc_D0F4E3: FFreeVar var_4E4 = "": var_504 = "": var_52C = "": var_53C = "": var_55C = "": var_56C = "": var_57C = "": var_59C = "": var_5AC = "": var_5BC = "": var_180 = "": var_1A0 = "": var_1B0 = "": var_1E0 = "": var_1C0 = "": var_208 = "": var_218 = "": var_238 = "": var_260 = "": var_270 = "": var_290 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_310 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3CC = "": var_3DC = "": var_3FC = "": var_424 = "": var_434 = "": var_454 = "": var_47C = "": var_48C = "": var_4AC = ""
  loc_D0F536: Branch loc_D0FA32
  loc_D0F539: FLdRfVar var_180
  loc_D0F53C: FLdRfVar var_170
  loc_D0F53F: LitVarStr var_16C, "DecaLade"
  loc_D0F544: PopAdLdVar
  loc_D0F545: FLdRfVar var_15C
  loc_D0F548: FLdPr Me
  loc_D0F54B: MemLdPr global_64
  loc_D0F54E:  = Me.Fields
  loc_D0F553: FLdPr var_15C
  loc_D0F556: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F55B: FLdPr var_170
  loc_D0F55E:  = Me.Value
  loc_D0F563: FLdFPR8 CodiRuta
  loc_D0F566: FLdRfVar var_180
  loc_D0F569: FnCDblVar
  loc_D0F56B: LtR8
  loc_D0F56C: FFreeAd var_15C = ""
  loc_D0F573: FFree1Var var_180 = ""
  loc_D0F576: BranchF loc_D0FA32
  loc_D0F579: LitStr "SELECT * FROM liandeta WHERE PeriLiqu = "
  loc_D0F57C: FLdI2 PeriLiqu
  loc_D0F57F: CStrUI1
  loc_D0F581: FStStrNoPop var_11C
  loc_D0F584: ConcatStr
  loc_D0F585: FStStrNoPop var_120
  loc_D0F588: LitStr " AND Bimeliqu = "
  loc_D0F58B: ConcatStr
  loc_D0F58C: FStStrNoPop var_124
  loc_D0F58F: FLdUI1
  loc_D0F593: CStrI2
  loc_D0F595: FStStrNoPop var_128
  loc_D0F598: ConcatStr
  loc_D0F599: FStStrNoPop var_12C
  loc_D0F59C: LitStr " AND CodiTili = "
  loc_D0F59F: ConcatStr
  loc_D0F5A0: FStStrNoPop var_130
  loc_D0F5A3: FLdUI1
  loc_D0F5A7: CStrI2
  loc_D0F5A9: FStStrNoPop var_134
  loc_D0F5AC: ConcatStr
  loc_D0F5AD: FStStrNoPop var_138
  loc_D0F5B0: LitStr " AND NumeLiqu = "
  loc_D0F5B3: ConcatStr
  loc_D0F5B4: FStStrNoPop var_13C
  loc_D0F5B7: FLdI2 NumeLiqu
  loc_D0F5BA: CStrUI1
  loc_D0F5BC: FStStrNoPop var_140
  loc_D0F5BF: ConcatStr
  loc_D0F5C0: FStStrNoPop var_144
  loc_D0F5C3: LitStr " AND CodiCome = "
  loc_D0F5C6: ConcatStr
  loc_D0F5C7: FStStrNoPop var_148
  loc_D0F5CA: ILdRf CodiCome
  loc_D0F5CD: CStrI4
  loc_D0F5CF: FStStrNoPop var_14C
  loc_D0F5D2: ConcatStr
  loc_D0F5D3: FStStrNoPop var_150
  loc_D0F5D6: LitStr " AND CodiConc = '"
  loc_D0F5D9: ConcatStr
  loc_D0F5DA: FStStrNoPop var_660
  loc_D0F5DD: ILdRf var_88
  loc_D0F5E0: ConcatStr
  loc_D0F5E1: FStStrNoPop var_664
  loc_D0F5E4: LitStr "'"
  loc_D0F5E7: ConcatStr
  loc_D0F5E8: FStStrNoPop var_668
  loc_D0F5EB: LitStr " AND TipoVenc = "
  loc_D0F5EE: ConcatStr
  loc_D0F5EF: FStStrNoPop var_66C
  loc_D0F5F2: FLdUI1
  loc_D0F5F6: CStrI2
  loc_D0F5F8: FStStrNoPop var_670
  loc_D0F5FB: ConcatStr
  loc_D0F5FC: FStStrNoPop var_674
  loc_D0F5FF: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiCome,CodiConc,TipoVenc,CodiRamo,CodiRubr,PeriOrde,CodiSubr,NumeLade"
  loc_D0F602: ConcatStr
  loc_D0F603: FStStrNoPop var_678
  loc_D0F606: Call EjecutarRsCls1(from_stack_1v)
  loc_D0F60B: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_660 = "": var_664 = "": var_668 = "": var_66C = "": var_670 = "": var_674 = ""
  loc_D0F638: FLdRfVar var_154
  loc_D0F63B: FLdPr Me
  loc_D0F63E: MemLdPr global_60
  loc_D0F641:  = Me.RecordCount
  loc_D0F646: ILdRf var_154
  loc_D0F649: LitI4 0
  loc_D0F64E: GtI4
  loc_D0F64F: BranchF loc_D0FA32
  loc_D0F652: FLdPr Me
  loc_D0F655: MemLdPr global_60
  loc_D0F658: Me.MoveFirst
  loc_D0F65D: FLdRfVar var_180
  loc_D0F660: FLdRfVar var_170
  loc_D0F663: LitVarStr var_16C, "DecaLade"
  loc_D0F668: PopAdLdVar
  loc_D0F669: FLdRfVar var_15C
  loc_D0F66C: FLdPr Me
  loc_D0F66F: MemLdPr global_64
  loc_D0F672:  = Me.Fields
  loc_D0F677: FLdPr var_15C
  loc_D0F67A: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F67F: FLdPr var_170
  loc_D0F682:  = Me.Value
  loc_D0F687: LitI4 2
  loc_D0F68C: FLdRfVar var_180
  loc_D0F68F: FnCDblVar
  loc_D0F691: FLdFPR8 CodiRuta
  loc_D0F694: SubR4
  loc_D0F695: CVarR8
  loc_D0F699: FLdRfVar var_1B0
  loc_D0F69C: ImpAdCallFPR4  = Round(, )
  loc_D0F6A1: LitStr " UPDATE liandeta SET DecaLade = DecaLade - "
  loc_D0F6A4: LitI4 0
  loc_D0F6A9: LitI4 -1
  loc_D0F6AE: LitI4 1
  loc_D0F6B3: LitStr "."
  loc_D0F6B6: LitStr ","
  loc_D0F6B9: FLdRfVar var_1B0
  loc_D0F6BC: CStrVarVal var_11C
  loc_D0F6C0: ImpAdCallI2 Replace(, , , , , )
  loc_D0F6C5: FStStrNoPop var_120
  loc_D0F6C8: ConcatStr
  loc_D0F6C9: FStStrNoPop var_124
  loc_D0F6CC: LitStr ", TotaLade = ImpoLade - DecaLade "
  loc_D0F6CF: ConcatStr
  loc_D0F6D0: FStStrNoPop var_128
  loc_D0F6D3: LitStr " WHERE PeriLiqu = "
  loc_D0F6D6: ConcatStr
  loc_D0F6D7: CVarStr var_1E0
  loc_D0F6DA: FLdRfVar var_1C0
  loc_D0F6DD: FLdRfVar var_1F8
  loc_D0F6E0: LitVarStr var_1D0, "PeriLiqu"
  loc_D0F6E5: PopAdLdVar
  loc_D0F6E6: FLdRfVar var_1E4
  loc_D0F6E9: FLdPr Me
  loc_D0F6EC: MemLdPr global_60
  loc_D0F6EF:  = Me.Fields
  loc_D0F6F4: FLdPr var_1E4
  loc_D0F6F7: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F6FC: FLdPr var_1F8
  loc_D0F6FF:  = Me.Value
  loc_D0F704: FLdRfVar var_1C0
  loc_D0F707: ConcatVar var_208
  loc_D0F70B: LitVarStr var_1F4, " AND Bimeliqu = "
  loc_D0F710: ConcatVar var_218
  loc_D0F714: FLdRfVar var_238
  loc_D0F717: FLdRfVar var_250
  loc_D0F71A: LitVarStr var_228, "BimeLiqu"
  loc_D0F71F: PopAdLdVar
  loc_D0F720: FLdRfVar var_23C
  loc_D0F723: FLdPr Me
  loc_D0F726: MemLdPr global_60
  loc_D0F729:  = Me.Fields
  loc_D0F72E: FLdPr var_23C
  loc_D0F731: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F736: FLdPr var_250
  loc_D0F739:  = Me.Value
  loc_D0F73E: FLdRfVar var_238
  loc_D0F741: ConcatVar var_260
  loc_D0F745: LitVarStr var_24C, " AND CodiTili = "
  loc_D0F74A: ConcatVar var_270
  loc_D0F74E: FLdRfVar var_290
  loc_D0F751: FLdRfVar var_2A8
  loc_D0F754: LitVarStr var_280, "CodiTili"
  loc_D0F759: PopAdLdVar
  loc_D0F75A: FLdRfVar var_294
  loc_D0F75D: FLdPr Me
  loc_D0F760: MemLdPr global_60
  loc_D0F763:  = Me.Fields
  loc_D0F768: FLdPr var_294
  loc_D0F76B: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F770: FLdPr var_2A8
  loc_D0F773:  = Me.Value
  loc_D0F778: FLdRfVar var_290
  loc_D0F77B: ConcatVar var_2B8
  loc_D0F77F: LitVarStr var_2A4, " AND NumeLiqu = "
  loc_D0F784: ConcatVar var_2C8
  loc_D0F788: FLdRfVar var_2E8
  loc_D0F78B: FLdRfVar var_300
  loc_D0F78E: LitVarStr var_2D8, "NumeLiqu"
  loc_D0F793: PopAdLdVar
  loc_D0F794: FLdRfVar var_2EC
  loc_D0F797: FLdPr Me
  loc_D0F79A: MemLdPr global_60
  loc_D0F79D:  = Me.Fields
  loc_D0F7A2: FLdPr var_2EC
  loc_D0F7A5: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F7AA: FLdPr var_300
  loc_D0F7AD:  = Me.Value
  loc_D0F7B2: FLdRfVar var_2E8
  loc_D0F7B5: ConcatVar var_310
  loc_D0F7B9: LitVarStr var_2FC, " AND CodiCome = "
  loc_D0F7BE: ConcatVar var_320
  loc_D0F7C2: FLdRfVar var_340
  loc_D0F7C5: FLdRfVar var_3BC
  loc_D0F7C8: LitVarStr var_330, "CodiCome"
  loc_D0F7CD: PopAdLdVar
  loc_D0F7CE: FLdRfVar var_3A8
  loc_D0F7D1: FLdPr Me
  loc_D0F7D4: MemLdPr global_60
  loc_D0F7D7:  = Me.Fields
  loc_D0F7DC: FLdPr var_3A8
  loc_D0F7DF: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F7E4: FLdPr var_3BC
  loc_D0F7E7:  = Me.Value
  loc_D0F7EC: FLdRfVar var_340
  loc_D0F7EF: ConcatVar var_360
  loc_D0F7F3: LitVarStr var_350, " AND CodiConc = '"
  loc_D0F7F8: ConcatVar var_380
  loc_D0F7FC: FLdRfVar var_3A0
  loc_D0F7FF: FLdRfVar var_414
  loc_D0F802: LitVarStr var_370, "CodiConc"
  loc_D0F807: PopAdLdVar
  loc_D0F808: FLdRfVar var_400
  loc_D0F80B: FLdPr Me
  loc_D0F80E: MemLdPr global_60
  loc_D0F811:  = Me.Fields
  loc_D0F816: FLdPr var_400
  loc_D0F819: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F81E: FLdPr var_414
  loc_D0F821:  = Me.Value
  loc_D0F826: FLdRfVar var_3A0
  loc_D0F829: ConcatVar var_3CC
  loc_D0F82D: LitVarStr var_390, "'"
  loc_D0F832: ConcatVar var_3DC
  loc_D0F836: LitVarStr var_3B8, " AND TipoVenc = "
  loc_D0F83B: ConcatVar var_3FC
  loc_D0F83F: FLdRfVar var_424
  loc_D0F842: FLdRfVar var_46C
  loc_D0F845: LitVarStr var_3EC, "TipoVenc"
  loc_D0F84A: PopAdLdVar
  loc_D0F84B: FLdRfVar var_458
  loc_D0F84E: FLdPr Me
  loc_D0F851: MemLdPr global_60
  loc_D0F854:  = Me.Fields
  loc_D0F859: FLdPr var_458
  loc_D0F85C: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F861: FLdPr var_46C
  loc_D0F864:  = Me.Value
  loc_D0F869: FLdRfVar var_424
  loc_D0F86C: ConcatVar var_434
  loc_D0F870: LitVarStr var_410, " AND CodiRamo = "
  loc_D0F875: ConcatVar var_454
  loc_D0F879: FLdRfVar var_47C
  loc_D0F87C: FLdRfVar var_4C4
  loc_D0F87F: LitVarStr var_444, "CodiRamo"
  loc_D0F884: PopAdLdVar
  loc_D0F885: FLdRfVar var_4B0
  loc_D0F888: FLdPr Me
  loc_D0F88B: MemLdPr global_60
  loc_D0F88E:  = Me.Fields
  loc_D0F893: FLdPr var_4B0
  loc_D0F896: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F89B: FLdPr var_4C4
  loc_D0F89E:  = Me.Value
  loc_D0F8A3: FLdRfVar var_47C
  loc_D0F8A6: ConcatVar var_48C
  loc_D0F8AA: LitVarStr var_468, " AND CodiRubr = "
  loc_D0F8AF: ConcatVar var_4AC
  loc_D0F8B3: FLdRfVar var_4D4
  loc_D0F8B6: FLdRfVar var_51C
  loc_D0F8B9: LitVarStr var_49C, "CodiRubr"
  loc_D0F8BE: PopAdLdVar
  loc_D0F8BF: FLdRfVar var_508
  loc_D0F8C2: FLdPr Me
  loc_D0F8C5: MemLdPr global_60
  loc_D0F8C8:  = Me.Fields
  loc_D0F8CD: FLdPr var_508
  loc_D0F8D0: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F8D5: FLdPr var_51C
  loc_D0F8D8:  = Me.Value
  loc_D0F8DD: FLdRfVar var_4D4
  loc_D0F8E0: ConcatVar var_4E4
  loc_D0F8E4: LitVarStr var_4C0, " AND PeriOrde = "
  loc_D0F8E9: ConcatVar var_504
  loc_D0F8ED: FLdRfVar var_52C
  loc_D0F8F0: FLdRfVar var_95C
  loc_D0F8F3: LitVarStr var_4F4, "PeriOrde"
  loc_D0F8F8: PopAdLdVar
  loc_D0F8F9: FLdRfVar var_958
  loc_D0F8FC: FLdPr Me
  loc_D0F8FF: MemLdPr global_60
  loc_D0F902:  = Me.Fields
  loc_D0F907: FLdPr var_958
  loc_D0F90A: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F90F: FLdPr var_95C
  loc_D0F912:  = Me.Value
  loc_D0F917: FLdRfVar var_52C
  loc_D0F91A: ConcatVar var_53C
  loc_D0F91E: LitVarStr var_518, " AND CodiSubr = "
  loc_D0F923: ConcatVar var_55C
  loc_D0F927: FLdRfVar var_56C
  loc_D0F92A: FLdRfVar var_964
  loc_D0F92D: LitVarStr var_54C, "CodiSubr"
  loc_D0F932: PopAdLdVar
  loc_D0F933: FLdRfVar var_960
  loc_D0F936: FLdPr Me
  loc_D0F939: MemLdPr global_60
  loc_D0F93C:  = Me.Fields
  loc_D0F941: FLdPr var_960
  loc_D0F944: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F949: FLdPr var_964
  loc_D0F94C:  = Me.Value
  loc_D0F951: FLdRfVar var_56C
  loc_D0F954: ConcatVar var_57C
  loc_D0F958: LitVarStr var_58C, " AND NumeLade = "
  loc_D0F95D: ConcatVar var_59C
  loc_D0F961: FLdRfVar var_5AC
  loc_D0F964: FLdRfVar var_96C
  loc_D0F967: LitVarStr var_5CC, "NumeLade"
  loc_D0F96C: PopAdLdVar
  loc_D0F96D: FLdRfVar var_968
  loc_D0F970: FLdPr Me
  loc_D0F973: MemLdPr global_60
  loc_D0F976:  = Me.Fields
  loc_D0F97B: FLdPr var_968
  loc_D0F97E: from_stack_2 = Me.Item(from_stack_1)
  loc_D0F983: FLdPr var_96C
  loc_D0F986:  = Me.Value
  loc_D0F98B: FLdRfVar var_5AC
  loc_D0F98E: ConcatVar var_5BC
  loc_D0F992: CStrVarVal var_12C
  loc_D0F996: Call EjecutarRsCls(from_stack_1v)
  loc_D0F99B: FFreeStr var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_D0F9A8: FFreeAd var_15C = "": var_170 = "": var_1E4 = "": var_1F8 = "": var_23C = "": var_250 = "": var_294 = "": var_2A8 = "": var_2EC = "": var_300 = "": var_3A8 = "": var_3BC = "": var_400 = "": var_414 = "": var_458 = "": var_46C = "": var_4B0 = "": var_4C4 = "": var_508 = "": var_51C = "": var_958 = "": var_95C = "": var_960 = "": var_964 = "": var_968 = ""
  loc_D0F9DF: FFreeVar var_4E4 = "": var_504 = "": var_52C = "": var_53C = "": var_55C = "": var_56C = "": var_57C = "": var_59C = "": var_5AC = "": var_5BC = "": var_180 = "": var_1A0 = "": var_1B0 = "": var_1E0 = "": var_1C0 = "": var_208 = "": var_218 = "": var_238 = "": var_260 = "": var_270 = "": var_290 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_310 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3CC = "": var_3DC = "": var_3FC = "": var_424 = "": var_434 = "": var_454 = "": var_47C = "": var_48C = "": var_4AC = ""
  loc_D0FA32: LitStr "COMMIT;"
  loc_D0FA35: Call EjecutarRsCls(from_stack_1v)
  loc_D0FA3A: ExitProcHresult
  loc_D0FA3B: LitStr "ROLLBACK;"
  loc_D0FA3E: Call EjecutarRsCls(from_stack_1v)
  loc_D0FA43: LitStr "Error cuando se quiere calcular la cuenta: "
  loc_D0FA46: ILdRf CodiCome
  loc_D0FA49: CStrI4
  loc_D0FA4B: FStStrNoPop var_11C
  loc_D0FA4E: ConcatStr
  loc_D0FA4F: FStStrNoPop var_120
  loc_D0FA52: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D0FA57: FFreeStr var_11C = ""
  loc_D0FA5E: ExitProcHresult
End Sub

Public Sub Requery() '9E74C4
  'Data Table: 484E94
  loc_9E74A0: LitI4 -1
  loc_9E74A5: FLdPr Me
  loc_9E74A8: MemLdPr RsFrm
  loc_9E74AB: Me.Requery from_stack_1
  loc_9E74B0: LitVarStr var_94, "Primary"
  loc_9E74B5: PopAdLdVar
  loc_9E74B6: FLdPr Me
  loc_9E74B9: LateIdCall
  loc_9E74C1: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) 'A60000
  'Data Table: 484E94
  loc_A5FF9C: ILdRf sSelect
  loc_A5FF9F: FStStrCopy var_88
  loc_A5FFA2: LitNothing
  loc_A5FFA4: CastAd
  loc_A5FFA7: FStAdFuncNoPop
  loc_A5FFAA: FLdPr Me
  loc_A5FFAD: MemStAd
  loc_A5FFB1: FFree1Ad var_8C
  loc_A5FFB4: New Recordset
  loc_A5FFB8: FStAdFuncNoPop
  loc_A5FFBB: FLdPr Me
  loc_A5FFBE: MemStAd
  loc_A5FFC2: FFree1Ad var_8C
  loc_A5FFC5: LitI4 -1
  loc_A5FFCA: LitI4 3
  loc_A5FFCF: LitI4 3
  loc_A5FFD4: ImpAdLdI4 MemVar_D9301C
  loc_A5FFD7: CVarAd
  loc_A5FFDB: PopAdLdVar
  loc_A5FFDC: ILdRf var_88
  loc_A5FFDF: CVarStr var_9C
  loc_A5FFE2: PopAdLdVar
  loc_A5FFE3: FLdPr Me
  loc_A5FFE6: MemLdPr RsFrm
  loc_A5FFE9: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5FFEE: LitVarStr var_9C, "Primary"
  loc_A5FFF3: PopAdLdVar
  loc_A5FFF4: FLdPr Me
  loc_A5FFF7: LateIdCall
  loc_A5FFFF: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A47BA0
  'Data Table: 484E94
  loc_A47B4C: ILdRf sSelect
  loc_A47B4F: FStStrCopy var_88
  loc_A47B52: LitNothing
  loc_A47B54: CastAd
  loc_A47B57: FStAdFuncNoPop
  loc_A47B5A: FLdPr Me
  loc_A47B5D: MemStAd
  loc_A47B61: FFree1Ad var_8C
  loc_A47B64: New Recordset
  loc_A47B68: FStAdFuncNoPop
  loc_A47B6B: FLdPr Me
  loc_A47B6E: MemStAd
  loc_A47B72: FFree1Ad var_8C
  loc_A47B75: LitI4 -1
  loc_A47B7A: LitI4 3
  loc_A47B7F: LitI4 3
  loc_A47B84: ImpAdLdI4 MemVar_D9301C
  loc_A47B87: CVarAd
  loc_A47B8B: PopAdLdVar
  loc_A47B8C: ILdRf var_88
  loc_A47B8F: CVarStr var_9C
  loc_A47B92: PopAdLdVar
  loc_A47B93: FLdPr Me
  loc_A47B96: MemLdPr global_56
  loc_A47B99: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A47B9E: ExitProcHresult
  loc_A47B9F: CR8I4
End Sub

Public Sub EjecutarRsCls1(sSelect) 'A4506C
  'Data Table: 484E94
  loc_A45018: ILdRf sSelect
  loc_A4501B: FStStrCopy var_88
  loc_A4501E: LitNothing
  loc_A45020: CastAd
  loc_A45023: FStAdFuncNoPop
  loc_A45026: FLdPr Me
  loc_A45029: MemStAd
  loc_A4502D: FFree1Ad var_8C
  loc_A45030: New Recordset
  loc_A45034: FStAdFuncNoPop
  loc_A45037: FLdPr Me
  loc_A4503A: MemStAd
  loc_A4503E: FFree1Ad var_8C
  loc_A45041: LitI4 -1
  loc_A45046: LitI4 3
  loc_A4504B: LitI4 3
  loc_A45050: ImpAdLdI4 MemVar_D9301C
  loc_A45053: CVarAd
  loc_A45057: PopAdLdVar
  loc_A45058: ILdRf var_88
  loc_A4505B: CVarStr var_9C
  loc_A4505E: PopAdLdVar
  loc_A4505F: FLdPr Me
  loc_A45062: MemLdPr global_60
  loc_A45065: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4506A: ExitProcHresult
End Sub

Public Sub EjecutarRsCls2(sSelect) 'A47DD0
  'Data Table: 484E94
  loc_A47D7C: ILdRf sSelect
  loc_A47D7F: FStStrCopy var_88
  loc_A47D82: LitNothing
  loc_A47D84: CastAd
  loc_A47D87: FStAdFuncNoPop
  loc_A47D8A: FLdPr Me
  loc_A47D8D: MemStAd
  loc_A47D91: FFree1Ad var_8C
  loc_A47D94: New Recordset
  loc_A47D98: FStAdFuncNoPop
  loc_A47D9B: FLdPr Me
  loc_A47D9E: MemStAd
  loc_A47DA2: FFree1Ad var_8C
  loc_A47DA5: LitI4 -1
  loc_A47DAA: LitI4 3
  loc_A47DAF: LitI4 3
  loc_A47DB4: ImpAdLdI4 MemVar_D9301C
  loc_A47DB7: CVarAd
  loc_A47DBB: PopAdLdVar
  loc_A47DBC: ILdRf var_88
  loc_A47DBF: CVarStr var_9C
  loc_A47DC2: PopAdLdVar
  loc_A47DC3: FLdPr Me
  loc_A47DC6: MemLdPr global_64
  loc_A47DC9: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A47DCE: ExitProcHresult
End Sub

Public Sub EjecutarRsCls3(sSelect) 'A47E5C
  'Data Table: 484E94
  loc_A47E08: ILdRf sSelect
  loc_A47E0B: FStStrCopy var_88
  loc_A47E0E: LitNothing
  loc_A47E10: CastAd
  loc_A47E13: FStAdFuncNoPop
  loc_A47E16: FLdPr Me
  loc_A47E19: MemStAd
  loc_A47E1D: FFree1Ad var_8C
  loc_A47E20: New Recordset
  loc_A47E24: FStAdFuncNoPop
  loc_A47E27: FLdPr Me
  loc_A47E2A: MemStAd
  loc_A47E2E: FFree1Ad var_8C
  loc_A47E31: LitI4 -1
  loc_A47E36: LitI4 3
  loc_A47E3B: LitI4 3
  loc_A47E40: ImpAdLdI4 MemVar_D9301C
  loc_A47E43: CVarAd
  loc_A47E47: PopAdLdVar
  loc_A47E48: ILdRf var_88
  loc_A47E4B: CVarStr var_9C
  loc_A47E4E: PopAdLdVar
  loc_A47E4F: FLdPr Me
  loc_A47E52: MemLdPr global_68
  loc_A47E55: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A47E5A: ExitProcHresult
End Sub

Public Sub EjecutarRsCls4(sSelect) 'A48000
  'Data Table: 484E94
  loc_A47FAC: ILdRf sSelect
  loc_A47FAF: FStStrCopy var_88
  loc_A47FB2: LitNothing
  loc_A47FB4: CastAd
  loc_A47FB7: FStAdFuncNoPop
  loc_A47FBA: FLdPr Me
  loc_A47FBD: MemStAd
  loc_A47FC1: FFree1Ad var_8C
  loc_A47FC4: New Recordset
  loc_A47FC8: FStAdFuncNoPop
  loc_A47FCB: FLdPr Me
  loc_A47FCE: MemStAd
  loc_A47FD2: FFree1Ad var_8C
  loc_A47FD5: LitI4 -1
  loc_A47FDA: LitI4 3
  loc_A47FDF: LitI4 3
  loc_A47FE4: ImpAdLdI4 MemVar_D9301C
  loc_A47FE7: CVarAd
  loc_A47FEB: PopAdLdVar
  loc_A47FEC: ILdRf var_88
  loc_A47FEF: CVarStr var_9C
  loc_A47FF2: PopAdLdVar
  loc_A47FF3: FLdPr Me
  loc_A47FF6: MemLdPr global_72
  loc_A47FF9: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A47FFE: ExitProcHresult
End Sub

Public Sub EjecutarRsCls5(sSelect) 'A45440
  'Data Table: 484E94
  loc_A453EC: ILdRf sSelect
  loc_A453EF: FStStrCopy var_88
  loc_A453F2: LitNothing
  loc_A453F4: CastAd
  loc_A453F7: FStAdFuncNoPop
  loc_A453FA: FLdPr Me
  loc_A453FD: MemStAd
  loc_A45401: FFree1Ad var_8C
  loc_A45404: New Recordset
  loc_A45408: FStAdFuncNoPop
  loc_A4540B: FLdPr Me
  loc_A4540E: MemStAd
  loc_A45412: FFree1Ad var_8C
  loc_A45415: LitI4 -1
  loc_A4541A: LitI4 3
  loc_A4541F: LitI4 3
  loc_A45424: ImpAdLdI4 MemVar_D9301C
  loc_A45427: CVarAd
  loc_A4542B: PopAdLdVar
  loc_A4542C: ILdRf var_88
  loc_A4542F: CVarStr var_9C
  loc_A45432: PopAdLdVar
  loc_A45433: FLdPr Me
  loc_A45436: MemLdPr global_76
  loc_A45439: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4543E: ExitProcHresult
End Sub

Public Property Get DataSource() '9F3F7C
  'Data Table: 484E94
  loc_9F3F58: ZeroRetVal
  loc_9F3F5A: FLdRfVar var_8C
  loc_9F3F5D: FLdPr Me
  loc_9F3F60: MemLdPr RsFrm
  loc_9F3F63:  = Me.DataSource
  loc_9F3F68: ILdRf var_8C
  loc_9F3F6B: CastAd
  loc_9F3F6E: FStAdFunc var_88
  loc_9F3F71: FFree1Ad var_8C
  loc_9F3F74: ExitProcCbHresult
End Sub

Public Property Get PeriLiqu() 'A2F2A4
  'Data Table: 484E94
  loc_A2F260: FLdRfVar var_B0
  loc_A2F263: FLdRfVar var_A0
  loc_A2F266: LitVarStr var_9C, "PeriLiqu"
  loc_A2F26B: PopAdLdVar
  loc_A2F26C: FLdRfVar var_8C
  loc_A2F26F: FLdPr Me
  loc_A2F272: MemLdPr RsFrm
  loc_A2F275:  = Me.Fields
  loc_A2F27A: FLdPr var_8C
  loc_A2F27D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F282: FLdPr var_A0
  loc_A2F285:  = Me.Value
  loc_A2F28A: FLdRfVar var_B0
  loc_A2F28D: CI2Var
  loc_A2F28E: FStI2 var_86
  loc_A2F291: FFreeAd var_8C = ""
  loc_A2F298: FFree1Var var_B0 = ""
  loc_A2F29B: ExitProcCbHresult
End Sub

Public Property Get BimeLiqu() 'A2F424
  'Data Table: 484E94
  loc_A2F3E0: FLdRfVar var_B0
  loc_A2F3E3: FLdRfVar var_A0
  loc_A2F3E6: LitVarStr var_9C, "BimeLiqu"
  loc_A2F3EB: PopAdLdVar
  loc_A2F3EC: FLdRfVar var_8C
  loc_A2F3EF: FLdPr Me
  loc_A2F3F2: MemLdPr RsFrm
  loc_A2F3F5:  = Me.Fields
  loc_A2F3FA: FLdPr var_8C
  loc_A2F3FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F402: FLdPr var_A0
  loc_A2F405:  = Me.Value
  loc_A2F40A: FLdRfVar var_B0
  loc_A2F40D: CUI1Var
  loc_A2F40F: FStUI1 var_86
  loc_A2F413: FFreeAd var_8C = ""
  loc_A2F41A: FFree1Var var_B0 = ""
  loc_A2F41D: ExitProcCbHresult
End Sub

Public Property Get CodiTili() 'A2F524
  'Data Table: 484E94
  loc_A2F4E0: FLdRfVar var_B0
  loc_A2F4E3: FLdRfVar var_A0
  loc_A2F4E6: LitVarStr var_9C, "CodiTili"
  loc_A2F4EB: PopAdLdVar
  loc_A2F4EC: FLdRfVar var_8C
  loc_A2F4EF: FLdPr Me
  loc_A2F4F2: MemLdPr RsFrm
  loc_A2F4F5:  = Me.Fields
  loc_A2F4FA: FLdPr var_8C
  loc_A2F4FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F502: FLdPr var_A0
  loc_A2F505:  = Me.Value
  loc_A2F50A: FLdRfVar var_B0
  loc_A2F50D: CUI1Var
  loc_A2F50F: FStUI1 var_86
  loc_A2F513: FFreeAd var_8C = ""
  loc_A2F51A: FFree1Var var_B0 = ""
  loc_A2F51D: ExitProcCbHresult
End Sub

Public Property Get NumeLiqu() 'A2F5A4
  'Data Table: 484E94
  loc_A2F560: FLdRfVar var_B0
  loc_A2F563: FLdRfVar var_A0
  loc_A2F566: LitVarStr var_9C, "NumeLiqu"
  loc_A2F56B: PopAdLdVar
  loc_A2F56C: FLdRfVar var_8C
  loc_A2F56F: FLdPr Me
  loc_A2F572: MemLdPr RsFrm
  loc_A2F575:  = Me.Fields
  loc_A2F57A: FLdPr var_8C
  loc_A2F57D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F582: FLdPr var_A0
  loc_A2F585:  = Me.Value
  loc_A2F58A: FLdRfVar var_B0
  loc_A2F58D: CI2Var
  loc_A2F58E: FStI2 var_86
  loc_A2F591: FFreeAd var_8C = ""
  loc_A2F598: FFree1Var var_B0 = ""
  loc_A2F59B: ExitProcCbHresult
End Sub

Public Property Get CodiCome() 'A2F6A4
  'Data Table: 484E94
  loc_A2F660: FLdRfVar var_B0
  loc_A2F663: FLdRfVar var_A0
  loc_A2F666: LitVarStr var_9C, "CodiCome"
  loc_A2F66B: PopAdLdVar
  loc_A2F66C: FLdRfVar var_8C
  loc_A2F66F: FLdPr Me
  loc_A2F672: MemLdPr RsFrm
  loc_A2F675:  = Me.Fields
  loc_A2F67A: FLdPr var_8C
  loc_A2F67D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F682: FLdPr var_A0
  loc_A2F685:  = Me.Value
  loc_A2F68A: FLdRfVar var_B0
  loc_A2F68D: CI4Var
  loc_A2F68F: FStR4 var_88
  loc_A2F692: FFreeAd var_8C = ""
  loc_A2F699: FFree1Var var_B0 = ""
  loc_A2F69C: ExitProcCbHresult
End Sub

Public Property Get CodiConc() 'A3F9F4
  'Data Table: 484E94
  loc_A3F9B0: ZeroRetVal
  loc_A3F9B2: FLdRfVar var_B0
  loc_A3F9B5: FLdRfVar var_A0
  loc_A3F9B8: LitVarStr var_9C, "CodiConc"
  loc_A3F9BD: PopAdLdVar
  loc_A3F9BE: FLdRfVar var_8C
  loc_A3F9C1: FLdPr Me
  loc_A3F9C4: MemLdPr RsFrm
  loc_A3F9C7:  = Me.Fields
  loc_A3F9CC: FLdPr var_8C
  loc_A3F9CF: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F9D4: FLdPr var_A0
  loc_A3F9D7:  = Me.Value
  loc_A3F9DC: FLdRfVar var_B0
  loc_A3F9DF: CStrVarTmp
  loc_A3F9E0: FStStr var_88
  loc_A3F9E3: FFreeAd var_8C = ""
  loc_A3F9EA: FFree1Var var_B0 = ""
  loc_A3F9ED: ExitProcCbHresult
End Sub

Public Property Get TipoVenc() 'A2F724
  'Data Table: 484E94
  loc_A2F6E0: FLdRfVar var_B0
  loc_A2F6E3: FLdRfVar var_A0
  loc_A2F6E6: LitVarStr var_9C, "TipoVenc"
  loc_A2F6EB: PopAdLdVar
  loc_A2F6EC: FLdRfVar var_8C
  loc_A2F6EF: FLdPr Me
  loc_A2F6F2: MemLdPr RsFrm
  loc_A2F6F5:  = Me.Fields
  loc_A2F6FA: FLdPr var_8C
  loc_A2F6FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F702: FLdPr var_A0
  loc_A2F705:  = Me.Value
  loc_A2F70A: FLdRfVar var_B0
  loc_A2F70D: CUI1Var
  loc_A2F70F: FStUI1 var_86
  loc_A2F713: FFreeAd var_8C = ""
  loc_A2F71A: FFree1Var var_B0 = ""
  loc_A2F71D: ExitProcCbHresult
End Sub

Public Property Get OrdeLian() 'A2FDA4
  'Data Table: 484E94
  loc_A2FD60: FLdRfVar var_B0
  loc_A2FD63: FLdRfVar var_A0
  loc_A2FD66: LitVarStr var_9C, "OrdeLian"
  loc_A2FD6B: PopAdLdVar
  loc_A2FD6C: FLdRfVar var_8C
  loc_A2FD6F: FLdPr Me
  loc_A2FD72: MemLdPr RsFrm
  loc_A2FD75:  = Me.Fields
  loc_A2FD7A: FLdPr var_8C
  loc_A2FD7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FD82: FLdPr var_A0
  loc_A2FD85:  = Me.Value
  loc_A2FD8A: FLdRfVar var_B0
  loc_A2FD8D: CI4Var
  loc_A2FD8F: FStR4 var_88
  loc_A2FD92: FFreeAd var_8C = ""
  loc_A2FD99: FFree1Var var_B0 = ""
  loc_A2FD9C: ExitProcCbHresult
End Sub

Public Property Get ActuLian() 'A3EB00
  'Data Table: 484E94
  loc_A3EABC: ZeroRetVal
  loc_A3EABE: FLdRfVar var_B0
  loc_A3EAC1: FLdRfVar var_A0
  loc_A3EAC4: LitVarStr var_9C, "ActuLian"
  loc_A3EAC9: PopAdLdVar
  loc_A3EACA: FLdRfVar var_8C
  loc_A3EACD: FLdPr Me
  loc_A3EAD0: MemLdPr RsFrm
  loc_A3EAD3:  = Me.Fields
  loc_A3EAD8: FLdPr var_8C
  loc_A3EADB: from_stack_2 = Me.Item(from_stack_1)
  loc_A3EAE0: FLdPr var_A0
  loc_A3EAE3:  = Me.Value
  loc_A3EAE8: FLdRfVar var_B0
  loc_A3EAEB: CStrVarTmp
  loc_A3EAEC: FStStr var_88
  loc_A3EAEF: FFreeAd var_8C = ""
  loc_A3EAF6: FFree1Var var_B0 = ""
  loc_A3EAF9: ExitProcCbHresult
End Sub

Public Property Get TipoLian() 'A3EC8C
  'Data Table: 484E94
  loc_A3EC48: ZeroRetVal
  loc_A3EC4A: FLdRfVar var_B0
  loc_A3EC4D: FLdRfVar var_A0
  loc_A3EC50: LitVarStr var_9C, "TipoLian"
  loc_A3EC55: PopAdLdVar
  loc_A3EC56: FLdRfVar var_8C
  loc_A3EC59: FLdPr Me
  loc_A3EC5C: MemLdPr RsFrm
  loc_A3EC5F:  = Me.Fields
  loc_A3EC64: FLdPr var_8C
  loc_A3EC67: from_stack_2 = Me.Item(from_stack_1)
  loc_A3EC6C: FLdPr var_A0
  loc_A3EC6F:  = Me.Value
  loc_A3EC74: FLdRfVar var_B0
  loc_A3EC77: CStrVarTmp
  loc_A3EC78: FStStr var_88
  loc_A3EC7B: FFreeAd var_8C = ""
  loc_A3EC82: FFree1Var var_B0 = ""
  loc_A3EC85: ExitProcCbHresult
End Sub

Public Property Get FealLian() 'A3F7E4
  'Data Table: 484E94
  loc_A3F7A0: ZeroRetVal
  loc_A3F7A2: FLdRfVar var_B0
  loc_A3F7A5: FLdRfVar var_A0
  loc_A3F7A8: LitVarStr var_9C, "FealLian"
  loc_A3F7AD: PopAdLdVar
  loc_A3F7AE: FLdRfVar var_8C
  loc_A3F7B1: FLdPr Me
  loc_A3F7B4: MemLdPr RsFrm
  loc_A3F7B7:  = Me.Fields
  loc_A3F7BC: FLdPr var_8C
  loc_A3F7BF: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F7C4: FLdPr var_A0
  loc_A3F7C7:  = Me.Value
  loc_A3F7CC: FLdRfVar var_B0
  loc_A3F7CF: CStrVarTmp
  loc_A3F7D0: FStStr var_88
  loc_A3F7D3: FFreeAd var_8C = ""
  loc_A3F7DA: FFree1Var var_B0 = ""
  loc_A3F7DD: ExitProcCbHresult
End Sub

Public Property Get FeveLian() 'A3F130
  'Data Table: 484E94
  loc_A3F0EC: ZeroRetVal
  loc_A3F0EE: FLdRfVar var_B0
  loc_A3F0F1: FLdRfVar var_A0
  loc_A3F0F4: LitVarStr var_9C, "FeveLian"
  loc_A3F0F9: PopAdLdVar
  loc_A3F0FA: FLdRfVar var_8C
  loc_A3F0FD: FLdPr Me
  loc_A3F100: MemLdPr RsFrm
  loc_A3F103:  = Me.Fields
  loc_A3F108: FLdPr var_8C
  loc_A3F10B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F110: FLdPr var_A0
  loc_A3F113:  = Me.Value
  loc_A3F118: FLdRfVar var_B0
  loc_A3F11B: CStrVarTmp
  loc_A3F11C: FStStr var_88
  loc_A3F11F: FFreeAd var_8C = ""
  loc_A3F126: FFree1Var var_B0 = ""
  loc_A3F129: ExitProcCbHresult
End Sub

Public Property Get DeudLian() 'A30C24
  'Data Table: 484E94
  loc_A30BE0: FLdRfVar var_B4
  loc_A30BE3: FLdRfVar var_A4
  loc_A30BE6: LitVarStr var_A0, "DeudLian"
  loc_A30BEB: PopAdLdVar
  loc_A30BEC: FLdRfVar var_90
  loc_A30BEF: FLdPr Me
  loc_A30BF2: MemLdPr RsFrm
  loc_A30BF5:  = Me.Fields
  loc_A30BFA: FLdPr var_90
  loc_A30BFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A30C02: FLdPr var_A4
  loc_A30C05:  = Me.Value
  loc_A30C0A: FLdRfVar var_B4
  loc_A30C0D: CR4Var
  loc_A30C0E: FStFPR8 var_8C
  loc_A30C11: FFreeAd var_90 = ""
  loc_A30C18: FFree1Var var_B4 = ""
  loc_A30C1B: ExitProcCbHresult
End Sub

Public Property Get ImpoLian() 'A30DA4
  'Data Table: 484E94
  loc_A30D60: FLdRfVar var_B4
  loc_A30D63: FLdRfVar var_A4
  loc_A30D66: LitVarStr var_A0, "ImpoLian"
  loc_A30D6B: PopAdLdVar
  loc_A30D6C: FLdRfVar var_90
  loc_A30D6F: FLdPr Me
  loc_A30D72: MemLdPr RsFrm
  loc_A30D75:  = Me.Fields
  loc_A30D7A: FLdPr var_90
  loc_A30D7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A30D82: FLdPr var_A4
  loc_A30D85:  = Me.Value
  loc_A30D8A: FLdRfVar var_B4
  loc_A30D8D: CR4Var
  loc_A30D8E: FStFPR8 var_8C
  loc_A30D91: FFreeAd var_90 = ""
  loc_A30D98: FFree1Var var_B4 = ""
  loc_A30D9B: ExitProcCbHresult
End Sub

Public Property Get CrafLian() 'A30E24
  'Data Table: 484E94
  loc_A30DE0: FLdRfVar var_B4
  loc_A30DE3: FLdRfVar var_A4
  loc_A30DE6: LitVarStr var_A0, "CrafLian"
  loc_A30DEB: PopAdLdVar
  loc_A30DEC: FLdRfVar var_90
  loc_A30DEF: FLdPr Me
  loc_A30DF2: MemLdPr RsFrm
  loc_A30DF5:  = Me.Fields
  loc_A30DFA: FLdPr var_90
  loc_A30DFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A30E02: FLdPr var_A4
  loc_A30E05:  = Me.Value
  loc_A30E0A: FLdRfVar var_B4
  loc_A30E0D: CR4Var
  loc_A30E0E: FStFPR8 var_8C
  loc_A30E11: FFreeAd var_90 = ""
  loc_A30E18: FFree1Var var_B4 = ""
  loc_A30E1B: ExitProcCbHresult
End Sub

Public Property Get ExenLian() 'A30EA4
  'Data Table: 484E94
  loc_A30E60: FLdRfVar var_B4
  loc_A30E63: FLdRfVar var_A4
  loc_A30E66: LitVarStr var_A0, "ExenLian"
  loc_A30E6B: PopAdLdVar
  loc_A30E6C: FLdRfVar var_90
  loc_A30E6F: FLdPr Me
  loc_A30E72: MemLdPr RsFrm
  loc_A30E75:  = Me.Fields
  loc_A30E7A: FLdPr var_90
  loc_A30E7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A30E82: FLdPr var_A4
  loc_A30E85:  = Me.Value
  loc_A30E8A: FLdRfVar var_B4
  loc_A30E8D: CR4Var
  loc_A30E8E: FStFPR8 var_8C
  loc_A30E91: FFreeAd var_90 = ""
  loc_A30E98: FFree1Var var_B4 = ""
  loc_A30E9B: ExitProcCbHresult
End Sub

Public Property Get DescLian() 'A30FA4
  'Data Table: 484E94
  loc_A30F60: FLdRfVar var_B4
  loc_A30F63: FLdRfVar var_A4
  loc_A30F66: LitVarStr var_A0, "DescLian"
  loc_A30F6B: PopAdLdVar
  loc_A30F6C: FLdRfVar var_90
  loc_A30F6F: FLdPr Me
  loc_A30F72: MemLdPr RsFrm
  loc_A30F75:  = Me.Fields
  loc_A30F7A: FLdPr var_90
  loc_A30F7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A30F82: FLdPr var_A4
  loc_A30F85:  = Me.Value
  loc_A30F8A: FLdRfVar var_B4
  loc_A30F8D: CR4Var
  loc_A30F8E: FStFPR8 var_8C
  loc_A30F91: FFreeAd var_90 = ""
  loc_A30F98: FFree1Var var_B4 = ""
  loc_A30F9B: ExitProcCbHresult
End Sub

Public Property Get GastLian() 'A310A4
  'Data Table: 484E94
  loc_A31060: FLdRfVar var_B4
  loc_A31063: FLdRfVar var_A4
  loc_A31066: LitVarStr var_A0, "GastLian"
  loc_A3106B: PopAdLdVar
  loc_A3106C: FLdRfVar var_90
  loc_A3106F: FLdPr Me
  loc_A31072: MemLdPr RsFrm
  loc_A31075:  = Me.Fields
  loc_A3107A: FLdPr var_90
  loc_A3107D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31082: FLdPr var_A4
  loc_A31085:  = Me.Value
  loc_A3108A: FLdRfVar var_B4
  loc_A3108D: CR4Var
  loc_A3108E: FStFPR8 var_8C
  loc_A31091: FFreeAd var_90 = ""
  loc_A31098: FFree1Var var_B4 = ""
  loc_A3109B: ExitProcCbHresult
End Sub

Public Property Get TotaLian() 'A31124
  'Data Table: 484E94
  loc_A310E0: FLdRfVar var_B4
  loc_A310E3: FLdRfVar var_A4
  loc_A310E6: LitVarStr var_A0, "TotaLian"
  loc_A310EB: PopAdLdVar
  loc_A310EC: FLdRfVar var_90
  loc_A310EF: FLdPr Me
  loc_A310F2: MemLdPr RsFrm
  loc_A310F5:  = Me.Fields
  loc_A310FA: FLdPr var_90
  loc_A310FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A31102: FLdPr var_A4
  loc_A31105:  = Me.Value
  loc_A3110A: FLdRfVar var_B4
  loc_A3110D: CR4Var
  loc_A3110E: FStFPR8 var_8C
  loc_A31111: FFreeAd var_90 = ""
  loc_A31118: FFree1Var var_B4 = ""
  loc_A3111B: ExitProcCbHresult
End Sub

Public Property Get CucuPers() 'A3E0B0
  'Data Table: 484E94
  loc_A3E06C: ZeroRetVal
  loc_A3E06E: FLdRfVar var_B0
  loc_A3E071: FLdRfVar var_A0
  loc_A3E074: LitVarStr var_9C, "CucuPers"
  loc_A3E079: PopAdLdVar
  loc_A3E07A: FLdRfVar var_8C
  loc_A3E07D: FLdPr Me
  loc_A3E080: MemLdPr RsFrm
  loc_A3E083:  = Me.Fields
  loc_A3E088: FLdPr var_8C
  loc_A3E08B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E090: FLdPr var_A0
  loc_A3E093:  = Me.Value
  loc_A3E098: FLdRfVar var_B0
  loc_A3E09B: CStrVarTmp
  loc_A3E09C: FStStr var_88
  loc_A3E09F: FFreeAd var_8C = ""
  loc_A3E0A6: FFree1Var var_B0 = ""
  loc_A3E0A9: ExitProcCbHresult
End Sub

Public Property Get CodiCall() 'A311A4
  'Data Table: 484E94
  loc_A31160: FLdRfVar var_B0
  loc_A31163: FLdRfVar var_A0
  loc_A31166: LitVarStr var_9C, "CodiCall"
  loc_A3116B: PopAdLdVar
  loc_A3116C: FLdRfVar var_8C
  loc_A3116F: FLdPr Me
  loc_A31172: MemLdPr RsFrm
  loc_A31175:  = Me.Fields
  loc_A3117A: FLdPr var_8C
  loc_A3117D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31182: FLdPr var_A0
  loc_A31185:  = Me.Value
  loc_A3118A: FLdRfVar var_B0
  loc_A3118D: CI2Var
  loc_A3118E: FStI2 var_86
  loc_A31191: FFreeAd var_8C = ""
  loc_A31198: FFree1Var var_B0 = ""
  loc_A3119B: ExitProcCbHresult
End Sub

Public Property Get NucaLian() 'A31324
  'Data Table: 484E94
  loc_A312E0: FLdRfVar var_B0
  loc_A312E3: FLdRfVar var_A0
  loc_A312E6: LitVarStr var_9C, "NucaLian"
  loc_A312EB: PopAdLdVar
  loc_A312EC: FLdRfVar var_8C
  loc_A312EF: FLdPr Me
  loc_A312F2: MemLdPr RsFrm
  loc_A312F5:  = Me.Fields
  loc_A312FA: FLdPr var_8C
  loc_A312FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A31302: FLdPr var_A0
  loc_A31305:  = Me.Value
  loc_A3130A: FLdRfVar var_B0
  loc_A3130D: CI4Var
  loc_A3130F: FStR4 var_88
  loc_A31312: FFreeAd var_8C = ""
  loc_A31319: FFree1Var var_B0 = ""
  loc_A3131C: ExitProcCbHresult
End Sub

Public Property Get CodiBarr() 'A31424
  'Data Table: 484E94
  loc_A313E0: FLdRfVar var_B0
  loc_A313E3: FLdRfVar var_A0
  loc_A313E6: LitVarStr var_9C, "CodiBarr"
  loc_A313EB: PopAdLdVar
  loc_A313EC: FLdRfVar var_8C
  loc_A313EF: FLdPr Me
  loc_A313F2: MemLdPr RsFrm
  loc_A313F5:  = Me.Fields
  loc_A313FA: FLdPr var_8C
  loc_A313FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A31402: FLdPr var_A0
  loc_A31405:  = Me.Value
  loc_A3140A: FLdRfVar var_B0
  loc_A3140D: CI2Var
  loc_A3140E: FStI2 var_86
  loc_A31411: FFreeAd var_8C = ""
  loc_A31418: FFree1Var var_B0 = ""
  loc_A3141B: ExitProcCbHresult
End Sub

Public Property Get ManzLian() 'A3D870
  'Data Table: 484E94
  loc_A3D82C: ZeroRetVal
  loc_A3D82E: FLdRfVar var_B0
  loc_A3D831: FLdRfVar var_A0
  loc_A3D834: LitVarStr var_9C, "ManzLian"
  loc_A3D839: PopAdLdVar
  loc_A3D83A: FLdRfVar var_8C
  loc_A3D83D: FLdPr Me
  loc_A3D840: MemLdPr RsFrm
  loc_A3D843:  = Me.Fields
  loc_A3D848: FLdPr var_8C
  loc_A3D84B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D850: FLdPr var_A0
  loc_A3D853:  = Me.Value
  loc_A3D858: FLdRfVar var_B0
  loc_A3D85B: CStrVarTmp
  loc_A3D85C: FStStr var_88
  loc_A3D85F: FFreeAd var_8C = ""
  loc_A3D866: FFree1Var var_B0 = ""
  loc_A3D869: ExitProcCbHresult
End Sub

Public Property Get CasaLian() 'A3E02C
  'Data Table: 484E94
  loc_A3DFE8: ZeroRetVal
  loc_A3DFEA: FLdRfVar var_B0
  loc_A3DFED: FLdRfVar var_A0
  loc_A3DFF0: LitVarStr var_9C, "CasaLian"
  loc_A3DFF5: PopAdLdVar
  loc_A3DFF6: FLdRfVar var_8C
  loc_A3DFF9: FLdPr Me
  loc_A3DFFC: MemLdPr RsFrm
  loc_A3DFFF:  = Me.Fields
  loc_A3E004: FLdPr var_8C
  loc_A3E007: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E00C: FLdPr var_A0
  loc_A3E00F:  = Me.Value
  loc_A3E014: FLdRfVar var_B0
  loc_A3E017: CStrVarTmp
  loc_A3E018: FStStr var_88
  loc_A3E01B: FFreeAd var_8C = ""
  loc_A3E022: FFree1Var var_B0 = ""
  loc_A3E025: ExitProcCbHresult
End Sub

Public Property Get UbicLian() 'A3C97C
  'Data Table: 484E94
  loc_A3C938: ZeroRetVal
  loc_A3C93A: FLdRfVar var_B0
  loc_A3C93D: FLdRfVar var_A0
  loc_A3C940: LitVarStr var_9C, "UbicLian"
  loc_A3C945: PopAdLdVar
  loc_A3C946: FLdRfVar var_8C
  loc_A3C949: FLdPr Me
  loc_A3C94C: MemLdPr RsFrm
  loc_A3C94F:  = Me.Fields
  loc_A3C954: FLdPr var_8C
  loc_A3C957: from_stack_2 = Me.Item(from_stack_1)
  loc_A3C95C: FLdPr var_A0
  loc_A3C95F:  = Me.Value
  loc_A3C964: FLdRfVar var_B0
  loc_A3C967: CStrVarTmp
  loc_A3C968: FStStr var_88
  loc_A3C96B: FFreeAd var_8C = ""
  loc_A3C972: FFree1Var var_B0 = ""
  loc_A3C975: ExitProcCbHresult
End Sub

Public Property Get CodiLoca() 'A314A4
  'Data Table: 484E94
  loc_A31460: FLdRfVar var_B0
  loc_A31463: FLdRfVar var_A0
  loc_A31466: LitVarStr var_9C, "CodiLoca"
  loc_A3146B: PopAdLdVar
  loc_A3146C: FLdRfVar var_8C
  loc_A3146F: FLdPr Me
  loc_A31472: MemLdPr RsFrm
  loc_A31475:  = Me.Fields
  loc_A3147A: FLdPr var_8C
  loc_A3147D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31482: FLdPr var_A0
  loc_A31485:  = Me.Value
  loc_A3148A: FLdRfVar var_B0
  loc_A3148D: CI2Var
  loc_A3148E: FStI2 var_86
  loc_A31491: FFreeAd var_8C = ""
  loc_A31498: FFree1Var var_B0 = ""
  loc_A3149B: ExitProcCbHresult
End Sub

Public Property Get PeriBole() 'A31524
  'Data Table: 484E94
  loc_A314E0: FLdRfVar var_B0
  loc_A314E3: FLdRfVar var_A0
  loc_A314E6: LitVarStr var_9C, "PeriBole"
  loc_A314EB: PopAdLdVar
  loc_A314EC: FLdRfVar var_8C
  loc_A314EF: FLdPr Me
  loc_A314F2: MemLdPr RsFrm
  loc_A314F5:  = Me.Fields
  loc_A314FA: FLdPr var_8C
  loc_A314FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A31502: FLdPr var_A0
  loc_A31505:  = Me.Value
  loc_A3150A: FLdRfVar var_B0
  loc_A3150D: CI2Var
  loc_A3150E: FStI2 var_86
  loc_A31511: FFreeAd var_8C = ""
  loc_A31518: FFree1Var var_B0 = ""
  loc_A3151B: ExitProcCbHresult
  loc_A31521: SubCy
End Sub

Public Property Get NumeBole() 'A31624
  'Data Table: 484E94
  loc_A315E0: FLdRfVar var_B0
  loc_A315E3: FLdRfVar var_A0
  loc_A315E6: LitVarStr var_9C, "NumeBole"
  loc_A315EB: PopAdLdVar
  loc_A315EC: FLdRfVar var_8C
  loc_A315EF: FLdPr Me
  loc_A315F2: MemLdPr RsFrm
  loc_A315F5:  = Me.Fields
  loc_A315FA: FLdPr var_8C
  loc_A315FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A31602: FLdPr var_A0
  loc_A31605:  = Me.Value
  loc_A3160A: FLdRfVar var_B0
  loc_A3160D: CI4Var
  loc_A3160F: FStR4 var_88
  loc_A31612: FFreeAd var_8C = ""
  loc_A31619: FFree1Var var_B0 = ""
  loc_A3161C: ExitProcCbHresult
End Sub

Public Property Get PeriOrde() 'A316A4
  'Data Table: 484E94
  loc_A31660: FLdRfVar var_B0
  loc_A31663: FLdRfVar var_A0
  loc_A31666: LitVarStr var_9C, "PeriOrde"
  loc_A3166B: PopAdLdVar
  loc_A3166C: FLdRfVar var_8C
  loc_A3166F: FLdPr Me
  loc_A31672: MemLdPr RsFrm
  loc_A31675:  = Me.Fields
  loc_A3167A: FLdPr var_8C
  loc_A3167D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31682: FLdPr var_A0
  loc_A31685:  = Me.Value
  loc_A3168A: FLdRfVar var_B0
  loc_A3168D: CI2Var
  loc_A3168E: FStI2 var_86
  loc_A31691: FFreeAd var_8C = ""
  loc_A31698: FFree1Var var_B0 = ""
  loc_A3169B: ExitProcCbHresult
  loc_A316A1: VCallStr
End Sub

Public Property Get CodiSubr() 'A156E8
  'Data Table: 484E94
  loc_A156B0: ZeroRetValVar
  loc_A156B2: FLdRfVar var_AC
  loc_A156B5: LitVarStr var_A8, "CodiSubr"
  loc_A156BA: PopAdLdVar
  loc_A156BB: FLdRfVar var_98
  loc_A156BE: FLdPr Me
  loc_A156C1: MemLdPr RsFrm
  loc_A156C4:  = Me.Fields
  loc_A156C9: FLdPr var_98
  loc_A156CC: from_stack_2 = Me.Item(from_stack_1)
  loc_A156D1: FLdZeroAd var_AC
  loc_A156D4: CVarAd
  loc_A156D8: FStVar CodiSubr
  loc_A156DC: FFree1Ad var_98
  loc_A156DF: ExitProcCbHresult
End Sub

Public Property Get NumeLcde() 'A31724
  'Data Table: 484E94
  loc_A316E0: FLdRfVar var_B0
  loc_A316E3: FLdRfVar var_A0
  loc_A316E6: LitVarStr var_9C, "NumeLcde"
  loc_A316EB: PopAdLdVar
  loc_A316EC: FLdRfVar var_8C
  loc_A316EF: FLdPr Me
  loc_A316F2: MemLdPr RsFrm
  loc_A316F5:  = Me.Fields
  loc_A316FA: FLdPr var_8C
  loc_A316FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A31702: FLdPr var_A0
  loc_A31705:  = Me.Value
  loc_A3170A: FLdRfVar var_B0
  loc_A3170D: CI2Var
  loc_A3170E: FStI2 var_86
  loc_A31711: FFreeAd var_8C = ""
  loc_A31718: FFree1Var var_B0 = ""
  loc_A3171B: ExitProcCbHresult
  loc_A31721: MemStR8 global_7422
End Sub

Public Property Get ImpoLcde(arg_1C) 'A317A4
  'Data Table: 484E94
  loc_A31760: FLdRfVar var_B4
  loc_A31763: FLdRfVar var_A4
  loc_A31766: LitVarStr var_A0, "ImpoLcde"
  loc_A3176B: PopAdLdVar
  loc_A3176C: FLdRfVar var_90
  loc_A3176F: FLdPr Me
  loc_A31772: MemLdPr RsFrm
  loc_A31775:  = Me.Fields
  loc_A3177A: FLdPr var_90
  loc_A3177D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31782: FLdPr var_A4
  loc_A31785:  = Me.Value
  loc_A3178A: FLdRfVar var_B4
  loc_A3178D: CR4Var
  loc_A3178E: FStFPR8 var_8C
  loc_A31791: FFreeAd var_90 = ""
  loc_A31798: FFree1Var var_B4 = ""
  loc_A3179B: ExitProcCbHresult
  loc_A317A1: PopAdLdVar
  loc_A317A2: FLdRfVar arg_1CA4
End Sub

Public Property Get TotaBole() 'A31824
  'Data Table: 484E94
  loc_A317E0: FLdRfVar var_B4
  loc_A317E3: FLdRfVar var_A4
  loc_A317E6: LitVarStr var_A0, "TotaBole"
  loc_A317EB: PopAdLdVar
  loc_A317EC: FLdRfVar var_90
  loc_A317EF: FLdPr Me
  loc_A317F2: MemLdPr RsFrm
  loc_A317F5:  = Me.Fields
  loc_A317FA: FLdPr var_90
  loc_A317FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A31802: FLdPr var_A4
  loc_A31805:  = Me.Value
  loc_A3180A: FLdRfVar var_B4
  loc_A3180D: CR4Var
  loc_A3180E: FStFPR8 var_8C
  loc_A31811: FFreeAd var_90 = ""
  loc_A31818: FFree1Var var_B4 = ""
  loc_A3181B: ExitProcCbHresult
  loc_A31821: FLdRfVar var_15C
End Sub

Public Property Get DetaPers() 'A15508
  'Data Table: 484E94
  loc_A154D0: ZeroRetValVar
  loc_A154D2: FLdRfVar var_AC
  loc_A154D5: LitVarStr var_A8, "DetaPers"
  loc_A154DA: PopAdLdVar
  loc_A154DB: FLdRfVar var_98
  loc_A154DE: FLdPr Me
  loc_A154E1: MemLdPr RsFrm
  loc_A154E4:  = Me.Fields
  loc_A154E9: FLdPr var_98
  loc_A154EC: from_stack_2 = Me.Item(from_stack_1)
  loc_A154F1: FLdZeroAd var_AC
  loc_A154F4: CVarAd
  loc_A154F8: FStVar DetaPers
  loc_A154FC: FFree1Ad var_98
  loc_A154FF: ExitProcCbHresult
  loc_A15505: FFreeAd  = ""
End Sub

Public Property Get DetaCall() 'A153A0
  'Data Table: 484E94
  loc_A15368: ZeroRetValVar
  loc_A1536A: FLdRfVar var_AC
  loc_A1536D: LitVarStr var_A8, "DetaCall"
  loc_A15372: PopAdLdVar
  loc_A15373: FLdRfVar var_98
  loc_A15376: FLdPr Me
  loc_A15379: MemLdPr RsFrm
  loc_A1537C:  = Me.Fields
  loc_A15381: FLdPr var_98
  loc_A15384: from_stack_2 = Me.Item(from_stack_1)
  loc_A15389: FLdZeroAd var_AC
  loc_A1538C: CVarAd
  loc_A15390: FStVar DetaCall
  loc_A15394: FFree1Ad var_98
  loc_A15397: ExitProcCbHresult
End Sub

Public Property Get NucaCome() 'A12808
  'Data Table: 484E94
  loc_A127D0: ZeroRetValVar
  loc_A127D2: FLdRfVar var_AC
  loc_A127D5: LitVarStr var_A8, "NucaCome"
  loc_A127DA: PopAdLdVar
  loc_A127DB: FLdRfVar var_98
  loc_A127DE: FLdPr Me
  loc_A127E1: MemLdPr RsFrm
  loc_A127E4:  = Me.Fields
  loc_A127E9: FLdPr var_98
  loc_A127EC: from_stack_2 = Me.Item(from_stack_1)
  loc_A127F1: FLdZeroAd var_AC
  loc_A127F4: CVarAd
  loc_A127F8: FStVar NucaCome
  loc_A127FC: FFree1Ad var_98
  loc_A127FF: ExitProcCbHresult
  loc_A12805: LtI2
  loc_A12806: DOC
End Sub

Public Property Get DetaConc() 'A137F8
  'Data Table: 484E94
  loc_A137C0: ZeroRetValVar
  loc_A137C2: FLdRfVar var_AC
  loc_A137C5: LitVarStr var_A8, "DetaConc"
  loc_A137CA: PopAdLdVar
  loc_A137CB: FLdRfVar var_98
  loc_A137CE: FLdPr Me
  loc_A137D1: MemLdPr RsFrm
  loc_A137D4:  = Me.Fields
  loc_A137D9: FLdPr var_98
  loc_A137DC: from_stack_2 = Me.Item(from_stack_1)
  loc_A137E1: FLdZeroAd var_AC
  loc_A137E4: CVarAd
  loc_A137E8: FStVar DetaConc
  loc_A137EC: FFree1Ad var_98
  loc_A137EF: ExitProcCbHresult
End Sub

Public Property Get CodiRubr() 'A12B50
  'Data Table: 484E94
  loc_A12B18: ZeroRetValVar
  loc_A12B1A: FLdRfVar var_AC
  loc_A12B1D: LitVarStr var_A8, "CodiRubr"
  loc_A12B22: PopAdLdVar
  loc_A12B23: FLdRfVar var_98
  loc_A12B26: FLdPr Me
  loc_A12B29: MemLdPr RsFrm
  loc_A12B2C:  = Me.Fields
  loc_A12B31: FLdPr var_98
  loc_A12B34: from_stack_2 = Me.Item(from_stack_1)
  loc_A12B39: FLdZeroAd var_AC
  loc_A12B3C: CVarAd
  loc_A12B40: FStVar CodiRubr
  loc_A12B44: FFree1Ad var_98
  loc_A12B47: ExitProcCbHresult
End Sub

Public Property Get DetaRubr() 'A14158
  'Data Table: 484E94
  loc_A14120: ZeroRetValVar
  loc_A14122: FLdRfVar var_AC
  loc_A14125: LitVarStr var_A8, "DetaRubr"
  loc_A1412A: PopAdLdVar
  loc_A1412B: FLdRfVar var_98
  loc_A1412E: FLdPr Me
  loc_A14131: MemLdPr RsFrm
  loc_A14134:  = Me.Fields
  loc_A14139: FLdPr var_98
  loc_A1413C: from_stack_2 = Me.Item(from_stack_1)
  loc_A14141: FLdZeroAd var_AC
  loc_A14144: CVarAd
  loc_A14148: FStVar DetaRubr
  loc_A1414C: FFree1Ad var_98
  loc_A1414F: ExitProcCbHresult
  loc_A14155: MemLdPr global_64
End Sub

Public Property Get DetaSubr() 'A13000
  'Data Table: 484E94
  loc_A12FC8: ZeroRetValVar
  loc_A12FCA: FLdRfVar var_AC
  loc_A12FCD: LitVarStr var_A8, "DetaSubr"
  loc_A12FD2: PopAdLdVar
  loc_A12FD3: FLdRfVar var_98
  loc_A12FD6: FLdPr Me
  loc_A12FD9: MemLdPr RsFrm
  loc_A12FDC:  = Me.Fields
  loc_A12FE1: FLdPr var_98
  loc_A12FE4: from_stack_2 = Me.Item(from_stack_1)
  loc_A12FE9: FLdZeroAd var_AC
  loc_A12FEC: CVarAd
  loc_A12FF0: FStVar DetaSubr
  loc_A12FF4: FFree1Ad var_98
  loc_A12FF7: ExitProcCbHresult
  loc_A12FFD: CStr2Ansi
End Sub

Public Property Get ImpoTaco() 'A15148
  'Data Table: 484E94
  loc_A15110: ZeroRetValVar
  loc_A15112: FLdRfVar var_AC
  loc_A15115: LitVarStr var_A8, "ImpoTaco"
  loc_A1511A: PopAdLdVar
  loc_A1511B: FLdRfVar var_98
  loc_A1511E: FLdPr Me
  loc_A15121: MemLdPr RsFrm
  loc_A15124:  = Me.Fields
  loc_A15129: FLdPr var_98
  loc_A1512C: from_stack_2 = Me.Item(from_stack_1)
  loc_A15131: FLdZeroAd var_AC
  loc_A15134: CVarAd
  loc_A15138: FStVar ImpoTaco
  loc_A1513C: FFree1Ad var_98
  loc_A1513F: ExitProcCbHresult
  loc_A15145: CCyI2
  loc_A15147: AddCy
End Sub

Public Property Get Bimestres() 'A15490
  'Data Table: 484E94
  loc_A15458: ZeroRetValVar
  loc_A1545A: FLdRfVar var_AC
  loc_A1545D: LitVarStr var_A8, "Bimestres"
  loc_A15462: PopAdLdVar
  loc_A15463: FLdRfVar var_98
  loc_A15466: FLdPr Me
  loc_A15469: MemLdPr RsFrm
  loc_A1546C:  = Me.Fields
  loc_A15471: FLdPr var_98
  loc_A15474: from_stack_2 = Me.Item(from_stack_1)
  loc_A15479: FLdZeroAd var_AC
  loc_A1547C: CVarAd
  loc_A15480: FStVar Bimestres
  loc_A15484: FFree1Ad var_98
  loc_A15487: ExitProcCbHresult
  loc_A1548D: BranchF loc_A15831
End Sub

Public Property Get ImpoSubr() 'A134B0
  'Data Table: 484E94
  loc_A13478: ZeroRetValVar
  loc_A1347A: FLdRfVar var_AC
  loc_A1347D: LitVarStr var_A8, "ImpoSubr"
  loc_A13482: PopAdLdVar
  loc_A13483: FLdRfVar var_98
  loc_A13486: FLdPr Me
  loc_A13489: MemLdPr RsFrm
  loc_A1348C:  = Me.Fields
  loc_A13491: FLdPr var_98
  loc_A13494: from_stack_2 = Me.Item(from_stack_1)
  loc_A13499: FLdZeroAd var_AC
  loc_A1349C: CVarAd
  loc_A134A0: FStVar ImpoSubr
  loc_A134A4: FFree1Ad var_98
  loc_A134A7: ExitProcCbHresult
  loc_A134AD: DOC
End Sub

Public Property Get CantSeco() 'A31EA4
  'Data Table: 484E94
  loc_A31E60: FLdRfVar var_B0
  loc_A31E63: FLdRfVar var_A0
  loc_A31E66: LitVarStr var_9C, "CantSeco"
  loc_A31E6B: PopAdLdVar
  loc_A31E6C: FLdRfVar var_8C
  loc_A31E6F: FLdPr Me
  loc_A31E72: MemLdPr RsFrm
  loc_A31E75:  = Me.Fields
  loc_A31E7A: FLdPr var_8C
  loc_A31E7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31E82: FLdPr var_A0
  loc_A31E85:  = Me.Value
  loc_A31E8A: FLdRfVar var_B0
  loc_A31E8D: CI2Var
  loc_A31E8E: FStI2 var_86
  loc_A31E91: FFreeAd var_8C = ""
  loc_A31E98: FFree1Var var_B0 = ""
  loc_A31E9B: ExitProcCbHresult
End Sub

Public Property Get RazoCome() 'A139D8
  'Data Table: 484E94
  loc_A139A0: ZeroRetValVar
  loc_A139A2: FLdRfVar var_AC
  loc_A139A5: LitVarStr var_A8, "RazoCome"
  loc_A139AA: PopAdLdVar
  loc_A139AB: FLdRfVar var_98
  loc_A139AE: FLdPr Me
  loc_A139B1: MemLdPr RsFrm
  loc_A139B4:  = Me.Fields
  loc_A139B9: FLdPr var_98
  loc_A139BC: from_stack_2 = Me.Item(from_stack_1)
  loc_A139C1: FLdZeroAd var_AC
  loc_A139C4: CVarAd
  loc_A139C8: FStVar RazoCome
  loc_A139CC: FFree1Ad var_98
  loc_A139CF: ExitProcCbHresult
  loc_A139D5: PopTmpLdAd8 RazoComeFF
End Sub

Public Property Get RecaBole() 'A16048
  'Data Table: 484E94
  loc_A16010: ZeroRetValVar
  loc_A16012: FLdRfVar var_AC
  loc_A16015: LitVarStr var_A8, "RecaBole"
  loc_A1601A: PopAdLdVar
  loc_A1601B: FLdRfVar var_98
  loc_A1601E: FLdPr Me
  loc_A16021: MemLdPr RsFrm
  loc_A16024:  = Me.Fields
  loc_A16029: FLdPr var_98
  loc_A1602C: from_stack_2 = Me.Item(from_stack_1)
  loc_A16031: FLdZeroAd var_AC
  loc_A16034: CVarAd
  loc_A16038: FStVar RecaBole
  loc_A1603C: FFree1Ad var_98
  loc_A1603F: ExitProcCbHresult
  loc_A16047: EqI4
End Sub

Public Property Get CEmision() 'A13CA8
  'Data Table: 484E94
  loc_A13C70: ZeroRetValVar
  loc_A13C72: FLdRfVar var_AC
  loc_A13C75: LitVarStr var_A8, "CEmision"
  loc_A13C7A: PopAdLdVar
  loc_A13C7B: FLdRfVar var_98
  loc_A13C7E: FLdPr Me
  loc_A13C81: MemLdPr RsFrm
  loc_A13C84:  = Me.Fields
  loc_A13C89: FLdPr var_98
  loc_A13C8C: from_stack_2 = Me.Item(from_stack_1)
  loc_A13C91: FLdZeroAd var_AC
  loc_A13C94: CVarAd
  loc_A13C98: FStVar CEmision
  loc_A13C9C: FFree1Ad var_98
  loc_A13C9F: ExitProcCbHresult
  loc_A13CA5: FStFPR8 var_110
End Sub

Public Property Get CateSeco() 'A16570
  'Data Table: 484E94
  loc_A16538: ZeroRetValVar
  loc_A1653A: FLdRfVar var_AC
  loc_A1653D: LitVarStr var_A8, "CateSeco"
  loc_A16542: PopAdLdVar
  loc_A16543: FLdRfVar var_98
  loc_A16546: FLdPr Me
  loc_A16549: MemLdPr RsFrm
  loc_A1654C:  = Me.Fields
  loc_A16551: FLdPr var_98
  loc_A16554: from_stack_2 = Me.Item(from_stack_1)
  loc_A16559: FLdZeroAd var_AC
  loc_A1655C: CVarAd
  loc_A16560: FStVar CateSeco
  loc_A16564: FFree1Ad var_98
  loc_A16567: ExitProcCbHresult
End Sub

Public Property Get Vinculo() 'A168B8
  'Data Table: 484E94
  loc_A16880: ZeroRetValVar
  loc_A16882: FLdRfVar var_AC
  loc_A16885: LitVarStr var_A8, "Vinculo"
  loc_A1688A: PopAdLdVar
  loc_A1688B: FLdRfVar var_98
  loc_A1688E: FLdPr Me
  loc_A16891: MemLdPr RsFrm
  loc_A16894:  = Me.Fields
  loc_A16899: FLdPr var_98
  loc_A1689C: from_stack_2 = Me.Item(from_stack_1)
  loc_A168A1: FLdZeroAd var_AC
  loc_A168A4: CVarAd
  loc_A168A8: FStVar Vinculo
  loc_A168AC: FFree1Ad var_98
  loc_A168AF: ExitProcCbHresult
  loc_A168B5: GeI4
  loc_A168B6: CCyI2
End Sub

Public Property Get DetaBarr() 'A18EB0
  'Data Table: 484E94
  loc_A18E78: ZeroRetValVar
  loc_A18E7A: FLdRfVar var_AC
  loc_A18E7D: LitVarStr var_A8, "DetaBarr"
  loc_A18E82: PopAdLdVar
  loc_A18E83: FLdRfVar var_98
  loc_A18E86: FLdPr Me
  loc_A18E89: MemLdPr RsFrm
  loc_A18E8C:  = Me.Fields
  loc_A18E91: FLdPr var_98
  loc_A18E94: from_stack_2 = Me.Item(from_stack_1)
  loc_A18E99: FLdZeroAd var_AC
  loc_A18E9C: CVarAd
  loc_A18EA0: FStVar DetaBarr
  loc_A18EA4: FFree1Ad var_98
  loc_A18EA7: ExitProcCbHresult
End Sub

Public Property Get DetaLoca() 'A15F58
  'Data Table: 484E94
  loc_A15F20: ZeroRetValVar
  loc_A15F22: FLdRfVar var_AC
  loc_A15F25: LitVarStr var_A8, "DetaLoca"
  loc_A15F2A: PopAdLdVar
  loc_A15F2B: FLdRfVar var_98
  loc_A15F2E: FLdPr Me
  loc_A15F31: MemLdPr RsFrm
  loc_A15F34:  = Me.Fields
  loc_A15F39: FLdPr var_98
  loc_A15F3C: from_stack_2 = Me.Item(from_stack_1)
  loc_A15F41: FLdZeroAd var_AC
  loc_A15F44: CVarAd
  loc_A15F48: FStVar DetaLoca
  loc_A15F4C: FFree1Ad var_98
  loc_A15F4F: ExitProcCbHresult
End Sub

Public Property Get CopoLian() 'A16390
  'Data Table: 484E94
  loc_A16358: ZeroRetValVar
  loc_A1635A: FLdRfVar var_AC
  loc_A1635D: LitVarStr var_A8, "CopoLian"
  loc_A16362: PopAdLdVar
  loc_A16363: FLdRfVar var_98
  loc_A16366: FLdPr Me
  loc_A16369: MemLdPr RsFrm
  loc_A1636C:  = Me.Fields
  loc_A16371: FLdPr var_98
  loc_A16374: from_stack_2 = Me.Item(from_stack_1)
  loc_A16379: FLdZeroAd var_AC
  loc_A1637C: CVarAd
  loc_A16380: FStVar CopoLian
  loc_A16384: FFree1Ad var_98
  loc_A16387: ExitProcCbHresult
End Sub

Public Property Get CallLianReal() 'A16C00
  'Data Table: 484E94
  loc_A16BC8: ZeroRetValVar
  loc_A16BCA: FLdRfVar var_AC
  loc_A16BCD: LitVarStr var_A8, "CallLianReal"
  loc_A16BD2: PopAdLdVar
  loc_A16BD3: FLdRfVar var_98
  loc_A16BD6: FLdPr Me
  loc_A16BD9: MemLdPr RsFrm
  loc_A16BDC:  = Me.Fields
  loc_A16BE1: FLdPr var_98
  loc_A16BE4: from_stack_2 = Me.Item(from_stack_1)
  loc_A16BE9: FLdZeroAd var_AC
  loc_A16BEC: CVarAd
  loc_A16BF0: FStVar CallLianReal
  loc_A16BF4: FFree1Ad var_98
  loc_A16BF7: ExitProcCbHresult
End Sub

Public Property Get NucaLianReal() 'A17218
  'Data Table: 484E94
  loc_A171E0: ZeroRetValVar
  loc_A171E2: FLdRfVar var_AC
  loc_A171E5: LitVarStr var_A8, "NucaLianReal"
  loc_A171EA: PopAdLdVar
  loc_A171EB: FLdRfVar var_98
  loc_A171EE: FLdPr Me
  loc_A171F1: MemLdPr RsFrm
  loc_A171F4:  = Me.Fields
  loc_A171F9: FLdPr var_98
  loc_A171FC: from_stack_2 = Me.Item(from_stack_1)
  loc_A17201: FLdZeroAd var_AC
  loc_A17204: CVarAd
  loc_A17208: FStVar NucaLianReal
  loc_A1720C: FFree1Ad var_98
  loc_A1720F: ExitProcCbHresult
End Sub

Public Property Get BarrLianReal() 'A177B8
  'Data Table: 484E94
  loc_A17780: ZeroRetValVar
  loc_A17782: FLdRfVar var_AC
  loc_A17785: LitVarStr var_A8, "BarrLianReal"
  loc_A1778A: PopAdLdVar
  loc_A1778B: FLdRfVar var_98
  loc_A1778E: FLdPr Me
  loc_A17791: MemLdPr RsFrm
  loc_A17794:  = Me.Fields
  loc_A17799: FLdPr var_98
  loc_A1779C: from_stack_2 = Me.Item(from_stack_1)
  loc_A177A1: FLdZeroAd var_AC
  loc_A177A4: CVarAd
  loc_A177A8: FStVar BarrLianReal
  loc_A177AC: FFree1Ad var_98
  loc_A177AF: ExitProcCbHresult
End Sub

Public Property Get ManzLianReal() 'A17998
  'Data Table: 484E94
  loc_A17960: ZeroRetValVar
  loc_A17962: FLdRfVar var_AC
  loc_A17965: LitVarStr var_A8, "ManzLianReal"
  loc_A1796A: PopAdLdVar
  loc_A1796B: FLdRfVar var_98
  loc_A1796E: FLdPr Me
  loc_A17971: MemLdPr RsFrm
  loc_A17974:  = Me.Fields
  loc_A17979: FLdPr var_98
  loc_A1797C: from_stack_2 = Me.Item(from_stack_1)
  loc_A17981: FLdZeroAd var_AC
  loc_A17984: CVarAd
  loc_A17988: FStVar ManzLianReal
  loc_A1798C: FFree1Ad var_98
  loc_A1798F: ExitProcCbHresult
End Sub

Public Property Get CasaLianReal() 'A195B8
  'Data Table: 484E94
  loc_A19580: ZeroRetValVar
  loc_A19582: FLdRfVar var_AC
  loc_A19585: LitVarStr var_A8, "CasaLianReal"
  loc_A1958A: PopAdLdVar
  loc_A1958B: FLdRfVar var_98
  loc_A1958E: FLdPr Me
  loc_A19591: MemLdPr RsFrm
  loc_A19594:  = Me.Fields
  loc_A19599: FLdPr var_98
  loc_A1959C: from_stack_2 = Me.Item(from_stack_1)
  loc_A195A1: FLdZeroAd var_AC
  loc_A195A4: CVarAd
  loc_A195A8: FStVar CasaLianReal
  loc_A195AC: FFree1Ad var_98
  loc_A195AF: ExitProcCbHresult
End Sub

Public Property Get UbicLianReal() 'A1A8F0
  'Data Table: 484E94
  loc_A1A8B8: ZeroRetValVar
  loc_A1A8BA: FLdRfVar var_AC
  loc_A1A8BD: LitVarStr var_A8, "UbicLianReal"
  loc_A1A8C2: PopAdLdVar
  loc_A1A8C3: FLdRfVar var_98
  loc_A1A8C6: FLdPr Me
  loc_A1A8C9: MemLdPr RsFrm
  loc_A1A8CC:  = Me.Fields
  loc_A1A8D1: FLdPr var_98
  loc_A1A8D4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A8D9: FLdZeroAd var_AC
  loc_A1A8DC: CVarAd
  loc_A1A8E0: FStVar UbicLianReal
  loc_A1A8E4: FFree1Ad var_98
  loc_A1A8E7: ExitProcCbHresult
End Sub

Public Property Get LocaLianReal() 'A1B2C8
  'Data Table: 484E94
  loc_A1B290: ZeroRetValVar
  loc_A1B292: FLdRfVar var_AC
  loc_A1B295: LitVarStr var_A8, "LocaLianReal"
  loc_A1B29A: PopAdLdVar
  loc_A1B29B: FLdRfVar var_98
  loc_A1B29E: FLdPr Me
  loc_A1B2A1: MemLdPr RsFrm
  loc_A1B2A4:  = Me.Fields
  loc_A1B2A9: FLdPr var_98
  loc_A1B2AC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B2B1: FLdZeroAd var_AC
  loc_A1B2B4: CVarAd
  loc_A1B2B8: FStVar LocaLianReal
  loc_A1B2BC: FFree1Ad var_98
  loc_A1B2BF: ExitProcCbHresult
  loc_A1B2C7: CCyI2
End Sub

Public Property Get CopoLianReal() 'A1B598
  'Data Table: 484E94
  loc_A1B560: ZeroRetValVar
  loc_A1B562: FLdRfVar var_AC
  loc_A1B565: LitVarStr var_A8, "CopoLianReal"
  loc_A1B56A: PopAdLdVar
  loc_A1B56B: FLdRfVar var_98
  loc_A1B56E: FLdPr Me
  loc_A1B571: MemLdPr RsFrm
  loc_A1B574:  = Me.Fields
  loc_A1B579: FLdPr var_98
  loc_A1B57C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B581: FLdZeroAd var_AC
  loc_A1B584: CVarAd
  loc_A1B588: FStVar CopoLianReal
  loc_A1B58C: FFree1Ad var_98
  loc_A1B58F: ExitProcCbHresult
  loc_A1B595: FLdPr Me
End Sub

Public Property Get CodiUsua() 'A1C2B8
  'Data Table: 484E94
  loc_A1C280: ZeroRetValVar
  loc_A1C282: FLdRfVar var_AC
  loc_A1C285: LitVarStr var_A8, "CodiUsua"
  loc_A1C28A: PopAdLdVar
  loc_A1C28B: FLdRfVar var_98
  loc_A1C28E: FLdPr Me
  loc_A1C291: MemLdPr RsFrm
  loc_A1C294:  = Me.Fields
  loc_A1C299: FLdPr var_98
  loc_A1C29C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C2A1: FLdZeroAd var_AC
  loc_A1C2A4: CVarAd
  loc_A1C2A8: FStVar CodiUsua
  loc_A1C2AC: FFree1Ad var_98
  loc_A1C2AF: ExitProcCbHresult
  loc_A1C2B5: CR8I4
  loc_A1C2B6: DOC
End Sub

Public Sub BorraLiquidacion(PeriLiqu, CodiTili) 'B8EEA4
  'Data Table: 484E94
  loc_B8EA4C: LitStr "SELECT PeriLiqu, CodiOfic, CodiTili, NumeLiqu FROM liquidacion WHERE PeriLiqu = "
  loc_B8EA4F: FLdI2 PeriLiqu
  loc_B8EA52: CStrUI1
  loc_B8EA54: FStStrNoPop var_88
  loc_B8EA57: ConcatStr
  loc_B8EA58: FStStrNoPop var_8C
  loc_B8EA5B: LitStr " AND CodiOfic = 7 AND CodiTili = "
  loc_B8EA5E: ConcatStr
  loc_B8EA5F: FStStrNoPop var_90
  loc_B8EA62: FLdUI1
  loc_B8EA66: CStrI2
  loc_B8EA68: FStStrNoPop var_94
  loc_B8EA6B: ConcatStr
  loc_B8EA6C: FStStrNoPop var_98
  loc_B8EA6F: LitStr " AND ActuLiqu = 'No' ORDER BY PeriLiqu, CodiTili, NumeLiqu"
  loc_B8EA72: ConcatStr
  loc_B8EA73: FStStrNoPop var_9C
  loc_B8EA76: Call EjecutarRsCls(from_stack_1v)
  loc_B8EA7B: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_B8EA8A: FLdRfVar var_A0
  loc_B8EA8D: FLdPr Me
  loc_B8EA90: MemLdPr global_56
  loc_B8EA93:  = Me.RecordCount
  loc_B8EA98: ILdRf var_A0
  loc_B8EA9B: LitI4 0
  loc_B8EAA0: GtI4
  loc_B8EAA1: BranchF loc_B8EEA2
  loc_B8EAA4: LitStr "START TRANSACTION;"
  loc_B8EAA7: LitStr " DELETE FROM liquante WHERE PeriLiqu = "
  loc_B8EAAA: ConcatStr
  loc_B8EAAB: FStStrNoPop var_88
  loc_B8EAAE: FLdI2 PeriLiqu
  loc_B8EAB1: CStrUI1
  loc_B8EAB3: FStStrNoPop var_8C
  loc_B8EAB6: ConcatStr
  loc_B8EAB7: FStStrNoPop var_90
  loc_B8EABA: LitStr " AND CodiTili = "
  loc_B8EABD: ConcatStr
  loc_B8EABE: FStStrNoPop var_94
  loc_B8EAC1: FLdUI1
  loc_B8EAC5: CStrI2
  loc_B8EAC7: FStStrNoPop var_98
  loc_B8EACA: ConcatStr
  loc_B8EACB: FStStrNoPop var_9C
  loc_B8EACE: LitStr " AND NumeLiqu = "
  loc_B8EAD1: ConcatStr
  loc_B8EAD2: CVarStr var_D8
  loc_B8EAD5: FLdRfVar var_C8
  loc_B8EAD8: FLdRfVar var_B8
  loc_B8EADB: LitVarStr var_B4, "NumeLiqu"
  loc_B8EAE0: PopAdLdVar
  loc_B8EAE1: FLdRfVar var_A4
  loc_B8EAE4: FLdPr Me
  loc_B8EAE7: MemLdPr global_56
  loc_B8EAEA:  = Me.Fields
  loc_B8EAEF: FLdPr var_A4
  loc_B8EAF2: from_stack_2 = Me.Item(from_stack_1)
  loc_B8EAF7: FLdPr var_B8
  loc_B8EAFA:  = Me.Value
  loc_B8EAFF: FLdRfVar var_C8
  loc_B8EB02: ConcatVar var_E8
  loc_B8EB06: LitVarStr var_F8, " AND ActuLian = 'No';"
  loc_B8EB0B: ConcatVar var_108
  loc_B8EB0F: LitVarStr var_118, " DELETE FROM liandeta WHERE PeriLiqu = "
  loc_B8EB14: ConcatVar var_128
  loc_B8EB18: FLdI2 PeriLiqu
  loc_B8EB1B: CVarI2 var_138
  loc_B8EB1E: ConcatVar var_148
  loc_B8EB22: LitVarStr var_158, " AND CodiTili = "
  loc_B8EB27: ConcatVar var_168
  loc_B8EB2B: FLdUI1
  loc_B8EB2F: CVarUI1
  loc_B8EB33: ConcatVar var_188
  loc_B8EB37: LitVarStr var_198, " AND NumeLiqu = "
  loc_B8EB3C: ConcatVar var_1A8
  loc_B8EB40: FLdRfVar var_1D0
  loc_B8EB43: FLdRfVar var_1C0
  loc_B8EB46: LitVarStr var_1BC, "NumeLiqu"
  loc_B8EB4B: PopAdLdVar
  loc_B8EB4C: FLdRfVar var_1AC
  loc_B8EB4F: FLdPr Me
  loc_B8EB52: MemLdPr global_56
  loc_B8EB55:  = Me.Fields
  loc_B8EB5A: FLdPr var_1AC
  loc_B8EB5D: from_stack_2 = Me.Item(from_stack_1)
  loc_B8EB62: FLdPr var_1C0
  loc_B8EB65:  = Me.Value
  loc_B8EB6A: FLdRfVar var_1D0
  loc_B8EB6D: ConcatVar var_1E0
  loc_B8EB71: LitVarStr var_1F0, ";"
  loc_B8EB76: ConcatVar var_200
  loc_B8EB7A: LitVarStr var_210, " DELETE FROM erroliqu WHERE PeriLiqu = "
  loc_B8EB7F: ConcatVar var_220
  loc_B8EB83: FLdI2 PeriLiqu
  loc_B8EB86: CVarI2 var_230
  loc_B8EB89: ConcatVar var_240
  loc_B8EB8D: LitVarStr var_250, " AND CodiTili = "
  loc_B8EB92: ConcatVar var_260
  loc_B8EB96: FLdUI1
  loc_B8EB9A: CVarUI1
  loc_B8EB9E: ConcatVar var_280
  loc_B8EBA2: LitVarStr var_290, " AND NumeLiqu = "
  loc_B8EBA7: ConcatVar var_2A0
  loc_B8EBAB: FLdRfVar var_2C8
  loc_B8EBAE: FLdRfVar var_2B8
  loc_B8EBB1: LitVarStr var_2B4, "NumeLiqu"
  loc_B8EBB6: PopAdLdVar
  loc_B8EBB7: FLdRfVar var_2A4
  loc_B8EBBA: FLdPr Me
  loc_B8EBBD: MemLdPr global_56
  loc_B8EBC0:  = Me.Fields
  loc_B8EBC5: FLdPr var_2A4
  loc_B8EBC8: from_stack_2 = Me.Item(from_stack_1)
  loc_B8EBCD: FLdPr var_2B8
  loc_B8EBD0:  = Me.Value
  loc_B8EBD5: FLdRfVar var_2C8
  loc_B8EBD8: ConcatVar var_2D8
  loc_B8EBDC: LitVarStr var_2E8, " AND CodiOfic = "
  loc_B8EBE1: ConcatVar var_2F8
  loc_B8EBE5: FLdRfVar var_320
  loc_B8EBE8: FLdRfVar var_310
  loc_B8EBEB: LitVarStr var_30C, "CodiOfic"
  loc_B8EBF0: PopAdLdVar
  loc_B8EBF1: FLdRfVar var_2FC
  loc_B8EBF4: FLdPr Me
  loc_B8EBF7: MemLdPr global_56
  loc_B8EBFA:  = Me.Fields
  loc_B8EBFF: FLdPr var_2FC
  loc_B8EC02: from_stack_2 = Me.Item(from_stack_1)
  loc_B8EC07: FLdPr var_310
  loc_B8EC0A:  = Me.Value
  loc_B8EC0F: FLdRfVar var_320
  loc_B8EC12: ConcatVar var_330
  loc_B8EC16: LitVarStr var_340, ";"
  loc_B8EC1B: ConcatVar var_350
  loc_B8EC1F: LitVarStr var_360, " UPDATE recabole SET PeriLiqu = 0, BimeLiqu = 0, CodiTili = 0, NumeLiqu = 0 WHERE CodiOfic = 7 AND PeriLiqu = "
  loc_B8EC24: ConcatVar var_370
  loc_B8EC28: FLdI2 PeriLiqu
  loc_B8EC2B: CVarI2 var_380
  loc_B8EC2E: ConcatVar var_390
  loc_B8EC32: LitVarStr var_3A0, " AND CodiTili = "
  loc_B8EC37: ConcatVar var_3B0
  loc_B8EC3B: FLdUI1
  loc_B8EC3F: CVarUI1
  loc_B8EC43: ConcatVar var_3D0
  loc_B8EC47: LitVarStr var_3E0, " AND NumeLiqu = "
  loc_B8EC4C: ConcatVar var_3F0
  loc_B8EC50: FLdRfVar var_418
  loc_B8EC53: FLdRfVar var_408
  loc_B8EC56: LitVarStr var_404, "NumeLiqu"
  loc_B8EC5B: PopAdLdVar
  loc_B8EC5C: FLdRfVar var_3F4
  loc_B8EC5F: FLdPr Me
  loc_B8EC62: MemLdPr global_56
  loc_B8EC65:  = Me.Fields
  loc_B8EC6A: FLdPr var_3F4
  loc_B8EC6D: from_stack_2 = Me.Item(from_stack_1)
  loc_B8EC72: FLdPr var_408
  loc_B8EC75:  = Me.Value
  loc_B8EC7A: FLdRfVar var_418
  loc_B8EC7D: ConcatVar var_428
  loc_B8EC81: LitVarStr var_438, " AND ActuRebo = 'No';"
  loc_B8EC86: ConcatVar var_448
  loc_B8EC8A: LitVarStr var_458, " UPDATE pagoanti SET CodiTili = 0, NumeLiqu = 0 WHERE PeriLiqu = "
  loc_B8EC8F: ConcatVar var_468
  loc_B8EC93: FLdI2 PeriLiqu
  loc_B8EC96: CVarI2 var_478
  loc_B8EC99: ConcatVar var_488
  loc_B8EC9D: LitVarStr var_498, " AND CodiTili = "
  loc_B8ECA2: ConcatVar var_4A8
  loc_B8ECA6: FLdUI1
  loc_B8ECAA: CVarUI1
  loc_B8ECAE: ConcatVar var_4C8
  loc_B8ECB2: LitVarStr var_4D8, " AND NumeLiqu = "
  loc_B8ECB7: ConcatVar var_4E8
  loc_B8ECBB: FLdRfVar var_510
  loc_B8ECBE: FLdRfVar var_500
  loc_B8ECC1: LitVarStr var_4FC, "NumeLiqu"
  loc_B8ECC6: PopAdLdVar
  loc_B8ECC7: FLdRfVar var_4EC
  loc_B8ECCA: FLdPr Me
  loc_B8ECCD: MemLdPr global_56
  loc_B8ECD0:  = Me.Fields
  loc_B8ECD5: FLdPr var_4EC
  loc_B8ECD8: from_stack_2 = Me.Item(from_stack_1)
  loc_B8ECDD: FLdPr var_500
  loc_B8ECE0:  = Me.Value
  loc_B8ECE5: FLdRfVar var_510
  loc_B8ECE8: ConcatVar var_520
  loc_B8ECEC: LitVarStr var_530, " AND (EstaPaan = 'Actualizado' OR EstaPaan = 'Liquidado');"
  loc_B8ECF1: ConcatVar var_540
  loc_B8ECF5: LitVarStr var_550, " DELETE FROM liquidacion WHERE PeriLiqu = "
  loc_B8ECFA: ConcatVar var_560
  loc_B8ECFE: FLdI2 PeriLiqu
  loc_B8ED01: CVarI2 var_570
  loc_B8ED04: ConcatVar var_580
  loc_B8ED08: LitVarStr var_590, " AND CodiOfic = 7 AND CodiTili = "
  loc_B8ED0D: ConcatVar var_5A0
  loc_B8ED11: FLdUI1
  loc_B8ED15: CVarUI1
  loc_B8ED19: ConcatVar var_5C0
  loc_B8ED1D: LitVarStr var_5D0, " AND NumeLiqu = "
  loc_B8ED22: ConcatVar var_5E0
  loc_B8ED26: FLdRfVar var_608
  loc_B8ED29: FLdRfVar var_5F8
  loc_B8ED2C: LitVarStr var_5F4, "NumeLiqu"
  loc_B8ED31: PopAdLdVar
  loc_B8ED32: FLdRfVar var_5E4
  loc_B8ED35: FLdPr Me
  loc_B8ED38: MemLdPr global_56
  loc_B8ED3B:  = Me.Fields
  loc_B8ED40: FLdPr var_5E4
  loc_B8ED43: from_stack_2 = Me.Item(from_stack_1)
  loc_B8ED48: FLdPr var_5F8
  loc_B8ED4B:  = Me.Value
  loc_B8ED50: FLdRfVar var_608
  loc_B8ED53: ConcatVar var_618
  loc_B8ED57: LitVarStr var_628, " AND ActuLiqu = 'No';"
  loc_B8ED5C: ConcatVar var_638
  loc_B8ED60: LitVarStr var_648, " DELETE FROM pagoanual WHERE PeriLiqu = "
  loc_B8ED65: ConcatVar var_658
  loc_B8ED69: FLdI2 PeriLiqu
  loc_B8ED6C: CVarI2 var_668
  loc_B8ED6F: ConcatVar var_678
  loc_B8ED73: LitVarStr var_688, " AND CodiOfic = 7 AND CodiTili = "
  loc_B8ED78: ConcatVar var_698
  loc_B8ED7C: FLdUI1
  loc_B8ED80: CVarUI1
  loc_B8ED84: ConcatVar var_6B8
  loc_B8ED88: LitVarStr var_6C8, " AND NumeLiqu = "
  loc_B8ED8D: ConcatVar var_6D8
  loc_B8ED91: FLdRfVar var_700
  loc_B8ED94: FLdRfVar var_6F0
  loc_B8ED97: LitVarStr var_6EC, "NumeLiqu"
  loc_B8ED9C: PopAdLdVar
  loc_B8ED9D: FLdRfVar var_6DC
  loc_B8EDA0: FLdPr Me
  loc_B8EDA3: MemLdPr global_56
  loc_B8EDA6:  = Me.Fields
  loc_B8EDAB: FLdPr var_6DC
  loc_B8EDAE: from_stack_2 = Me.Item(from_stack_1)
  loc_B8EDB3: FLdPr var_6F0
  loc_B8EDB6:  = Me.Value
  loc_B8EDBB: FLdRfVar var_700
  loc_B8EDBE: ConcatVar var_710
  loc_B8EDC2: LitVarStr var_720, " AND FepaPaan IS NULL ORDER BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu"
  loc_B8EDC7: ConcatVar var_730
  loc_B8EDCB: CStrVarTmp
  loc_B8EDCC: FStStrNoPop var_734
  loc_B8EDCF: FLdPr Me
  loc_B8EDD2: MemStStrCopy
  loc_B8EDD6: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_B8EDE7: FFreeAd var_A4 = "": var_B8 = "": var_1AC = "": var_1C0 = "": var_2A4 = "": var_2B8 = "": var_2FC = "": var_310 = "": var_3F4 = "": var_408 = "": var_4EC = "": var_500 = "": var_5E4 = "": var_5F8 = "": var_6DC = ""
  loc_B8EE0A: FFreeVar var_448 = "": var_468 = "": var_488 = "": var_4A8 = "": var_4C8 = "": var_4E8 = "": var_510 = "": var_520 = "": var_540 = "": var_560 = "": var_580 = "": var_5A0 = "": var_5C0 = "": var_5E0 = "": var_608 = "": var_618 = "": var_638 = "": var_658 = "": var_678 = "": var_698 = "": var_6B8 = "": var_6D8 = "": var_700 = "": var_710 = "": var_730 = "": var_D8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1D0 = "": var_1E0 = "": var_200 = "": var_220 = "": var_240 = "": var_260 = "": var_280 = "": var_2A0 = "": var_2C8 = "": var_2D8 = "": var_2F8 = "": var_320 = "": var_330 = "": var_350 = "": var_370 = "": var_390 = "": var_3B0 = "": var_3D0 = "": var_3F0 = "": var_418 = ""
  loc_B8EE7B: OnErrorGoto loc_B8EE92
  loc_B8EE7E: FLdPr Me
  loc_B8EE81: MemLdStr global_80
  loc_B8EE84: Call EjecutarRsCls(from_stack_1v)
  loc_B8EE89: LitStr "COMMIT;"
  loc_B8EE8C: Call EjecutarRsCls(from_stack_1v)
  loc_B8EE91: ExitProcHresult
  loc_B8EE92: LitStr "ROLLBACK;"
  loc_B8EE95: Call EjecutarRsCls(from_stack_1v)
  loc_B8EE9A: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B8EE9D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B8EEA2: ExitProcHresult
End Sub

Public Sub CreaErrorLiquidacion(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, DetaErli) 'A704A8
  'Data Table: 484E94
  loc_A7043C: ILdRf DetaErli
  loc_A7043F: FStStrCopy var_88
  loc_A70442: FLdRfVar var_92
  loc_A70445: ILdRf CodiCome
  loc_A70448: CStrI4
  loc_A7044A: FStStrNoPop var_90
  loc_A7044D: LitI2_Byte 2
  loc_A7044F: CUI1I2
  loc_A70451: FLdI2 NumeLiqu
  loc_A70454: FLdUI1
  loc_A70458: FLdUI1
  loc_A7045C: FLdI2 PeriLiqu
  loc_A7045F: FLdRfVar var_8C
  loc_A70462: NewIfNullPr clserroliqu
  loc_A70465: from_stack_7v = clserroliqu.NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_A7046A: ILdRf var_88
  loc_A7046D: FLdI2 var_92
  loc_A70470: CUI1I2
  loc_A70472: ILdRf CodiCome
  loc_A70475: CStrI4
  loc_A70477: FStStrNoPop var_98
  loc_A7047A: LitI2_Byte 2
  loc_A7047C: CUI1I2
  loc_A7047E: FLdI2 NumeLiqu
  loc_A70481: FLdUI1
  loc_A70485: FLdUI1
  loc_A70489: FLdI2 PeriLiqu
  loc_A7048C: FLdRfVar var_8C
  loc_A7048F: NewIfNullPr clserroliqu
  loc_A70492: Call clserroliqu.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_A70497: FFreeStr var_90 = ""
  loc_A7049E: LitNothing
  loc_A704A0: CastAd
  loc_A704A3: FStAdFunc var_8C
  loc_A704A6: ExitProcHresult
End Sub

Public Function BuscaPorcentajeExcepcion(CodiExce) '9F3964
  'Data Table: 484E94
  loc_9F393C: FLdRfVar var_98
  loc_9F393F: FLdI2 CodiExce
  loc_9F3942: FLdRfVar var_90
  loc_9F3945: NewIfNullPr clsexcepcion
  loc_9F3948: from_stack_2v = clsexcepcion.BuscaPorcentajeExcepcion(from_stack_1v)
  loc_9F394D: FLdFPR8 var_98
  loc_9F3950: FStFPR8 var_8C
  loc_9F3953: LitNothing
  loc_9F3955: CastAd
  loc_9F3958: FStAdFunc var_90
  loc_9F395B: ExitProcCbHresult
End Function

Public Function BuscaDeudaParaLibreDeuda(CodiCome) 'A12798
  'Data Table: 484E94
  loc_A1275C: FLdRfVar var_9C
  loc_A1275F: LitI4 0
  loc_A12764: LitI4 0
  loc_A12769: ILdRf CodiCome
  loc_A1276C: CStrI4
  loc_A1276E: FStStrNoPop BuscaDeudaParaLibreDeuda
  loc_A12771: LitI2_Byte 2
  loc_A12773: FLdRfVar var_90
  loc_A12776: NewIfNullPr clsctacte
  loc_A12779: from_stack_5v = clsctacte.BuscaDeudaParaLibreDeuda(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_A1277E: FLdFPR8 var_9C
  loc_A12781: FStFPR8 var_8C
  loc_A12784: FFree1Str BuscaDeudaParaLibreDeuda
  loc_A12787: LitNothing
  loc_A12789: CastAd
  loc_A1278C: FStAdFunc var_90
  loc_A1278F: ExitProcCbHresult
End Function

Public Function GeneracionCuentaCorriente(PeriLiqu, CodiTili, NumeLiqu, CodiCome, lOrden, iPeriodo, doDeanTili) 'D35FE8
  'Data Table: 484E94
  loc_D31F0C: ZeroRetVal
  loc_D31F0E: LitI2_Byte 0
  loc_D31F10: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_D31F15: FStFPR8 var_A4
  loc_D31F18: LitStr "SELECT SUM(ImpoLian) - SUM(CrafLian) as CapiBole, SUM(DescLian) as  DecaBole, SUM(ExenLian) as ExenBole, SUM(TotaLian) as  TotaBole, PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, CodiConc, TipoVenc, CucuPers, ActuLian, FealLian, FeveLian, TipoLian FROM liquante "
  loc_D31F1B: LitStr " WHERE PeriLiqu = "
  loc_D31F1E: ConcatStr
  loc_D31F1F: FStStrNoPop var_12C
  loc_D31F22: FLdI2 PeriLiqu
  loc_D31F25: CStrUI1
  loc_D31F27: FStStrNoPop var_130
  loc_D31F2A: ConcatStr
  loc_D31F2B: FStStrNoPop var_134
  loc_D31F2E: LitStr " AND CodiTili = "
  loc_D31F31: ConcatStr
  loc_D31F32: FStStrNoPop var_138
  loc_D31F35: FLdUI1
  loc_D31F39: CStrI2
  loc_D31F3B: FStStrNoPop var_13C
  loc_D31F3E: ConcatStr
  loc_D31F3F: FStStrNoPop var_140
  loc_D31F42: LitStr " AND NumeLiqu = "
  loc_D31F45: ConcatStr
  loc_D31F46: FStStrNoPop var_144
  loc_D31F49: FLdI2 NumeLiqu
  loc_D31F4C: CStrUI1
  loc_D31F4E: FStStrNoPop var_148
  loc_D31F51: ConcatStr
  loc_D31F52: FStStrNoPop var_14C
  loc_D31F55: LitStr " AND CodiCome = "
  loc_D31F58: ConcatStr
  loc_D31F59: FStStrNoPop var_150
  loc_D31F5C: ILdRf CodiCome
  loc_D31F5F: CStrI4
  loc_D31F61: FStStrNoPop var_154
  loc_D31F64: ConcatStr
  loc_D31F65: FStStrNoPop var_158
  loc_D31F68: LitStr " AND ActuLian = 'No' "
  loc_D31F6B: ConcatStr
  loc_D31F6C: FStStrNoPop var_15C
  loc_D31F6F: LitStr " GROUP BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, TipoVenc"
  loc_D31F72: ConcatStr
  loc_D31F73: FStStrNoPop var_160
  loc_D31F76: LitStr " ORDER BY PeriLiqu, TipoVenc, BimeLiqu;"
  loc_D31F79: ConcatStr
  loc_D31F7A: FStStrNoPop var_164
  loc_D31F7D: Call EjecutarRsCls2(from_stack_1v)
  loc_D31F82: FFreeStr var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_D31FA3: FLdRfVar var_168
  loc_D31FA6: FLdPr Me
  loc_D31FA9: MemLdPr global_64
  loc_D31FAC:  = Me.RecordCount
  loc_D31FB1: ILdRf var_168
  loc_D31FB4: LitI4 0
  loc_D31FB9: GtI4
  loc_D31FBA: BranchF loc_D35F8A
  loc_D31FBD: OnErrorGoto loc_D35F90
  loc_D31FC0: LitStr "START TRANSACTION;"
  loc_D31FC3: Call EjecutarRsCls(from_stack_1v)
  loc_D31FC8: FLdPr Me
  loc_D31FCB: MemLdPr global_64
  loc_D31FCE: Me.MoveFirst
  loc_D31FD3: FLdRfVar var_16A
  loc_D31FD6: FLdPr Me
  loc_D31FD9: MemLdPr global_64
  loc_D31FDC:  = Me.EOF
  loc_D31FE1: FLdI2 var_16A
  loc_D31FE4: NotI4
  loc_D31FE5: BranchF loc_D35F82
  loc_D31FE8: FLdRfVar var_194
  loc_D31FEB: FLdRfVar var_184
  loc_D31FEE: LitVarStr var_180, "TotaBole"
  loc_D31FF3: PopAdLdVar
  loc_D31FF4: FLdRfVar var_170
  loc_D31FF7: FLdPr Me
  loc_D31FFA: MemLdPr global_64
  loc_D31FFD:  = Me.Fields
  loc_D32002: FLdPr var_170
  loc_D32005: from_stack_2 = Me.Item(from_stack_1)
  loc_D3200A: FLdPr var_184
  loc_D3200D:  = Me.Value
  loc_D32012: FLdRfVar var_194
  loc_D32015: LitVarI2 var_1A4, 0
  loc_D3201A: HardType
  loc_D3201B: GtVarBool
  loc_D3201D: FFreeAd var_170 = ""
  loc_D32024: FFree1Var var_194 = ""
  loc_D32027: BranchF loc_D323C3
  loc_D3202A: FLdRfVar var_194
  loc_D3202D: FLdRfVar var_184
  loc_D32030: LitVarStr var_180, "TipoVenc"
  loc_D32035: PopAdLdVar
  loc_D32036: FLdRfVar var_170
  loc_D32039: FLdPr Me
  loc_D3203C: MemLdPr global_64
  loc_D3203F:  = Me.Fields
  loc_D32044: FLdPr var_170
  loc_D32047: from_stack_2 = Me.Item(from_stack_1)
  loc_D3204C: FLdPr var_184
  loc_D3204F:  = Me.Value
  loc_D32054: FLdRfVar var_194
  loc_D32057: FnCIntVar
  loc_D32059: LitI2_Byte 1
  loc_D3205B: EqI2
  loc_D3205C: FFreeAd var_170 = ""
  loc_D32063: FFree1Var var_194 = ""
  loc_D32066: BranchF loc_D3236D
  loc_D32069: LitI2_Byte 0
  loc_D3206B: CR8I2
  loc_D3206C: FStFPR8 var_B0
  loc_D3206F: LitI2_Byte 0
  loc_D32071: CR8I2
  loc_D32072: FStFPR8 var_B8
  loc_D32075: FLdRfVar var_168
  loc_D32078: FLdI2 iPeriodo
  loc_D3207B: FLdRfVar var_8C
  loc_D3207E: NewIfNullPr clsnumebole
  loc_D32081: from_stack_2v = clsnumebole.NuevoRegistro(from_stack_1v)
  loc_D32086: ILdRf var_168
  loc_D32089: FStR4 var_9C
  loc_D3208C: FLdRfVar var_2B4
  loc_D3208F: LitVarStr var_2B0, "FeveLian"
  loc_D32094: PopAdLdVar
  loc_D32095: FLdRfVar var_2A0
  loc_D32098: FLdPr Me
  loc_D3209B: MemLdPr global_64
  loc_D3209E:  = Me.Fields
  loc_D320A3: FLdPr var_2A0
  loc_D320A6: from_stack_2 = Me.Item(from_stack_1)
  loc_D320AB: FLdRfVar var_3FC
  loc_D320AE: FLdRfVar var_3EC
  loc_D320B1: LitVarStr var_3E8, "TotaBole"
  loc_D320B6: PopAdLdVar
  loc_D320B7: FLdRfVar var_3D8
  loc_D320BA: FLdPr Me
  loc_D320BD: MemLdPr global_64
  loc_D320C0:  = Me.Fields
  loc_D320C5: FLdPr var_3D8
  loc_D320C8: from_stack_2 = Me.Item(from_stack_1)
  loc_D320CD: FLdPr var_3EC
  loc_D320D0:  = Me.Value
  loc_D320D5: FLdRfVar var_464
  loc_D320D8: FLdRfVar var_454
  loc_D320DB: LitVarStr var_450, "TotaBole"
  loc_D320E0: PopAdLdVar
  loc_D320E1: FLdRfVar var_440
  loc_D320E4: FLdPr Me
  loc_D320E7: MemLdPr global_64
  loc_D320EA:  = Me.Fields
  loc_D320EF: FLdPr var_440
  loc_D320F2: from_stack_2 = Me.Item(from_stack_1)
  loc_D320F7: FLdPr var_454
  loc_D320FA:  = Me.Value
  loc_D320FF: LitStr " INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiTili, NumeLiqu, CodiFapa, CuotDefa, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, ApreBole, TotaBole, CodiUsua) "
  loc_D32102: LitStr " VALUES ("
  loc_D32105: ConcatStr
  loc_D32106: FStStrNoPop var_12C
  loc_D32109: FLdI2 iPeriodo
  loc_D3210C: CStrUI1
  loc_D3210E: FStStrNoPop var_130
  loc_D32111: ConcatStr
  loc_D32112: FStStrNoPop var_134
  loc_D32115: LitStr ","
  loc_D32118: ConcatStr
  loc_D32119: FStStrNoPop var_138
  loc_D3211C: ILdRf var_9C
  loc_D3211F: CStrI4
  loc_D32121: FStStrNoPop var_13C
  loc_D32124: ConcatStr
  loc_D32125: FStStrNoPop var_140
  loc_D32128: LitStr ",7,'"
  loc_D3212B: ConcatStr
  loc_D3212C: CVarStr var_1B4
  loc_D3212F: FLdRfVar var_194
  loc_D32132: FLdRfVar var_184
  loc_D32135: LitVarStr var_180, "CodiCome"
  loc_D3213A: PopAdLdVar
  loc_D3213B: FLdRfVar var_170
  loc_D3213E: FLdPr Me
  loc_D32141: MemLdPr global_64
  loc_D32144:  = Me.Fields
  loc_D32149: FLdPr var_170
  loc_D3214C: from_stack_2 = Me.Item(from_stack_1)
  loc_D32151: FLdPr var_184
  loc_D32154:  = Me.Value
  loc_D32159: FLdRfVar var_194
  loc_D3215C: ConcatVar var_1C4
  loc_D32160: LitVarStr var_1A4, "','"
  loc_D32165: ConcatVar var_1D4
  loc_D32169: FLdRfVar var_1FC
  loc_D3216C: FLdRfVar var_1EC
  loc_D3216F: LitVarStr var_1E8, "CucuPers"
  loc_D32174: PopAdLdVar
  loc_D32175: FLdRfVar var_1D8
  loc_D32178: FLdPr Me
  loc_D3217B: MemLdPr global_64
  loc_D3217E:  = Me.Fields
  loc_D32183: FLdPr var_1D8
  loc_D32186: from_stack_2 = Me.Item(from_stack_1)
  loc_D3218B: FLdPr var_1EC
  loc_D3218E:  = Me.Value
  loc_D32193: FLdRfVar var_1FC
  loc_D32196: ConcatVar var_20C
  loc_D3219A: LitVarStr var_21C, "','"
  loc_D3219F: ConcatVar var_22C
  loc_D321A3: LitI4 1
  loc_D321A8: LitI4 1
  loc_D321AD: LitVarStr var_24C, "yyyy-mm-dd"
  loc_D321B2: FStVarCopyObj var_25C
  loc_D321B5: FLdRfVar var_25C
  loc_D321B8: FLdRfVar var_A4
  loc_D321BB: CVarRef
  loc_D321C0: ImpAdCallI2 Format$(, )
  loc_D321C5: CVarStr var_26C
  loc_D321C8: ConcatVar var_27C
  loc_D321CC: LitVarStr var_28C, "','"
  loc_D321D1: ConcatVar var_29C
  loc_D321D5: LitI4 1
  loc_D321DA: LitI4 1
  loc_D321DF: LitVarStr var_2D4, "yyyy-mm-dd"
  loc_D321E4: FStVarCopyObj var_2E4
  loc_D321E7: FLdRfVar var_2E4
  loc_D321EA: FLdZeroAd var_2B4
  loc_D321ED: CVarAd
  loc_D321F1: ImpAdCallI2 Format$(, )
  loc_D321F6: CVarStr var_2F4
  loc_D321F9: ConcatVar var_304
  loc_D321FD: LitVarStr var_314, "',0,'Bimestral','Emitido',"
  loc_D32202: ConcatVar var_324
  loc_D32206: FLdRfVar var_34C
  loc_D32209: FLdRfVar var_33C
  loc_D3220C: LitVarStr var_338, "CodiTili"
  loc_D32211: PopAdLdVar
  loc_D32212: FLdRfVar var_328
  loc_D32215: FLdPr Me
  loc_D32218: MemLdPr global_64
  loc_D3221B:  = Me.Fields
  loc_D32220: FLdPr var_328
  loc_D32223: from_stack_2 = Me.Item(from_stack_1)
  loc_D32228: FLdPr var_33C
  loc_D3222B:  = Me.Value
  loc_D32230: FLdRfVar var_34C
  loc_D32233: ConcatVar var_35C
  loc_D32237: LitVarStr var_36C, ","
  loc_D3223C: ConcatVar var_37C
  loc_D32240: FLdRfVar var_3A4
  loc_D32243: FLdRfVar var_394
  loc_D32246: LitVarStr var_390, "NumeLiqu"
  loc_D3224B: PopAdLdVar
  loc_D3224C: FLdRfVar var_380
  loc_D3224F: FLdPr Me
  loc_D32252: MemLdPr global_64
  loc_D32255:  = Me.Fields
  loc_D3225A: FLdPr var_380
  loc_D3225D: from_stack_2 = Me.Item(from_stack_1)
  loc_D32262: FLdPr var_394
  loc_D32265:  = Me.Value
  loc_D3226A: FLdRfVar var_3A4
  loc_D3226D: ConcatVar var_3B4
  loc_D32271: LitVarStr var_3C4, ",0,0,"
  loc_D32276: ConcatVar var_3D4
  loc_D3227A: LitI4 0
  loc_D3227F: LitI4 -1
  loc_D32284: LitI4 1
  loc_D32289: LitStr "."
  loc_D3228C: LitStr ","
  loc_D3228F: FLdRfVar var_3FC
  loc_D32292: CStrVarTmp
  loc_D32293: FStStrNoPop var_144
  loc_D32296: ImpAdCallI2 Replace(, , , , , )
  loc_D3229B: CVarStr var_40C
  loc_D3229E: ConcatVar var_41C
  loc_D322A2: LitVarStr var_42C, ",0,0,0,0,0,0,"
  loc_D322A7: ConcatVar var_43C
  loc_D322AB: LitI4 0
  loc_D322B0: LitI4 -1
  loc_D322B5: LitI4 1
  loc_D322BA: LitStr "."
  loc_D322BD: LitStr ","
  loc_D322C0: FLdRfVar var_464
  loc_D322C3: CStrVarTmp
  loc_D322C4: FStStrNoPop var_148
  loc_D322C7: ImpAdCallI2 Replace(, , , , , )
  loc_D322CC: CVarStr var_474
  loc_D322CF: ConcatVar var_484
  loc_D322D3: LitVarStr var_494, ",'"
  loc_D322D8: ConcatVar var_4A4
  loc_D322DC: ImpAdLdI4 MemVar_D9302C
  loc_D322DF: CVarStr var_4B4
  loc_D322E2: ConcatVar var_4C4
  loc_D322E6: LitVarStr var_4D4, "');"
  loc_D322EB: ConcatVar var_4E4
  loc_D322EF: CStrVarVal var_14C
  loc_D322F3: Call EjecutarRsCls(from_stack_1v)
  loc_D322F8: FFreeStr var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_D3230D: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = "": var_3EC = "": var_440 = ""
  loc_D3232A: FFreeVar var_4C4 = "": var_4E4 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_25C = "": var_22C = "": var_26C = "": var_27C = "": var_2C4 = "": var_2E4 = "": var_29C = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3FC = "": var_3D4 = "": var_40C = "": var_41C = "": var_464 = "": var_43C = "": var_474 = "": var_484 = ""
  loc_D3236D: FLdRfVar var_194
  loc_D32370: FLdRfVar var_184
  loc_D32373: LitVarStr var_180, "TipoVenc"
  loc_D32378: PopAdLdVar
  loc_D32379: FLdRfVar var_170
  loc_D3237C: FLdPr Me
  loc_D3237F: MemLdPr global_64
  loc_D32382:  = Me.Fields
  loc_D32387: FLdPr var_170
  loc_D3238A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3238F: FLdPr var_184
  loc_D32392:  = Me.Value
  loc_D32397: FLdRfVar var_194
  loc_D3239A: FnCIntVar
  loc_D3239C: LitI2_Byte 2
  loc_D3239E: EqI2
  loc_D3239F: FFreeAd var_170 = ""
  loc_D323A6: FFree1Var var_194 = ""
  loc_D323A9: BranchF loc_D323C3
  loc_D323AC: FLdRfVar var_168
  loc_D323AF: FLdI2 iPeriodo
  loc_D323B2: FLdRfVar var_8C
  loc_D323B5: NewIfNullPr clsnumebole
  loc_D323B8: from_stack_2v = clsnumebole.NuevoRegistro(from_stack_1v)
  loc_D323BD: ILdRf var_168
  loc_D323C0: FStR4 var_9C
  loc_D323C3: LitStr "SELECT PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, liquante.CodiConc, TipoVenc, TipoLian, FealLian, FeveLian, ImpoLian, CrafLian, ExenLian, DescLian, GastLian, TotaLian, ActuLian, concepto.TiafConc, DeudLian FROM liquante "
  loc_D323C6: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_D323C9: ConcatStr
  loc_D323CA: CVarStr var_1C4
  loc_D323CD: FLdRfVar var_184
  loc_D323D0: LitVarStr var_180, "FealLian"
  loc_D323D5: PopAdLdVar
  loc_D323D6: FLdRfVar var_170
  loc_D323D9: FLdPr Me
  loc_D323DC: MemLdPr global_64
  loc_D323DF:  = Me.Fields
  loc_D323E4: FLdPr var_170
  loc_D323E7: from_stack_2 = Me.Item(from_stack_1)
  loc_D323EC: FLdZeroAd var_184
  loc_D323EF: CVarAd
  loc_D323F3: FLdRfVar var_1B4
  loc_D323F6: ImpAdCallFPR4  = Year()
  loc_D323FB: FLdRfVar var_1B4
  loc_D323FE: ConcatVar var_1D4
  loc_D32402: LitVarStr var_1A4, " AND concepto.CodiConc = liquante.CodiConc"
  loc_D32407: ConcatVar var_1FC
  loc_D3240B: LitVarStr var_1E8, " WHERE PeriLiqu = "
  loc_D32410: ConcatVar var_20C
  loc_D32414: FLdRfVar var_22C
  loc_D32417: FLdRfVar var_1EC
  loc_D3241A: LitVarStr var_21C, "PeriLiqu"
  loc_D3241F: PopAdLdVar
  loc_D32420: FLdRfVar var_1D8
  loc_D32423: FLdPr Me
  loc_D32426: MemLdPr global_64
  loc_D32429:  = Me.Fields
  loc_D3242E: FLdPr var_1D8
  loc_D32431: from_stack_2 = Me.Item(from_stack_1)
  loc_D32436: FLdPr var_1EC
  loc_D32439:  = Me.Value
  loc_D3243E: FLdRfVar var_22C
  loc_D32441: ConcatVar var_25C
  loc_D32445: LitVarStr var_23C, " AND BimeLiqu = "
  loc_D3244A: ConcatVar var_26C
  loc_D3244E: FLdRfVar var_27C
  loc_D32451: FLdRfVar var_2B4
  loc_D32454: LitVarStr var_24C, "BimeLiqu"
  loc_D32459: PopAdLdVar
  loc_D3245A: FLdRfVar var_2A0
  loc_D3245D: FLdPr Me
  loc_D32460: MemLdPr global_64
  loc_D32463:  = Me.Fields
  loc_D32468: FLdPr var_2A0
  loc_D3246B: from_stack_2 = Me.Item(from_stack_1)
  loc_D32470: FLdPr var_2B4
  loc_D32473:  = Me.Value
  loc_D32478: FLdRfVar var_27C
  loc_D3247B: ConcatVar var_29C
  loc_D3247F: LitVarStr var_28C, " AND CodiTili = "
  loc_D32484: ConcatVar var_2C4
  loc_D32488: FLdRfVar var_2E4
  loc_D3248B: FLdRfVar var_33C
  loc_D3248E: LitVarStr var_2B0, "CodiTili"
  loc_D32493: PopAdLdVar
  loc_D32494: FLdRfVar var_328
  loc_D32497: FLdPr Me
  loc_D3249A: MemLdPr global_64
  loc_D3249D:  = Me.Fields
  loc_D324A2: FLdPr var_328
  loc_D324A5: from_stack_2 = Me.Item(from_stack_1)
  loc_D324AA: FLdPr var_33C
  loc_D324AD:  = Me.Value
  loc_D324B2: FLdRfVar var_2E4
  loc_D324B5: ConcatVar var_2F4
  loc_D324B9: LitVarStr var_2D4, " AND NumeLiqu = "
  loc_D324BE: ConcatVar var_304
  loc_D324C2: FLdRfVar var_324
  loc_D324C5: FLdRfVar var_394
  loc_D324C8: LitVarStr var_314, "NumeLiqu"
  loc_D324CD: PopAdLdVar
  loc_D324CE: FLdRfVar var_380
  loc_D324D1: FLdPr Me
  loc_D324D4: MemLdPr global_64
  loc_D324D7:  = Me.Fields
  loc_D324DC: FLdPr var_380
  loc_D324DF: from_stack_2 = Me.Item(from_stack_1)
  loc_D324E4: FLdPr var_394
  loc_D324E7:  = Me.Value
  loc_D324EC: FLdRfVar var_324
  loc_D324EF: ConcatVar var_34C
  loc_D324F3: LitVarStr var_338, " AND CodiCome = "
  loc_D324F8: ConcatVar var_35C
  loc_D324FC: FLdRfVar var_37C
  loc_D324FF: FLdRfVar var_3EC
  loc_D32502: LitVarStr var_36C, "CodiCome"
  loc_D32507: PopAdLdVar
  loc_D32508: FLdRfVar var_3D8
  loc_D3250B: FLdPr Me
  loc_D3250E: MemLdPr global_64
  loc_D32511:  = Me.Fields
  loc_D32516: FLdPr var_3D8
  loc_D32519: from_stack_2 = Me.Item(from_stack_1)
  loc_D3251E: FLdPr var_3EC
  loc_D32521:  = Me.Value
  loc_D32526: FLdRfVar var_37C
  loc_D32529: ConcatVar var_3A4
  loc_D3252D: LitVarStr var_390, " AND TipoVenc = "
  loc_D32532: ConcatVar var_3B4
  loc_D32536: FLdRfVar var_3D4
  loc_D32539: FLdRfVar var_454
  loc_D3253C: LitVarStr var_3C4, "TipoVenc"
  loc_D32541: PopAdLdVar
  loc_D32542: FLdRfVar var_440
  loc_D32545: FLdPr Me
  loc_D32548: MemLdPr global_64
  loc_D3254B:  = Me.Fields
  loc_D32550: FLdPr var_440
  loc_D32553: from_stack_2 = Me.Item(from_stack_1)
  loc_D32558: FLdPr var_454
  loc_D3255B:  = Me.Value
  loc_D32560: FLdRfVar var_3D4
  loc_D32563: ConcatVar var_3FC
  loc_D32567: LitVarStr var_3E8, " AND ActuLian = 'No' "
  loc_D3256C: ConcatVar var_40C
  loc_D32570: LitVarStr var_42C, " ORDER BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, liquante.CodiConc, TipoVenc"
  loc_D32575: ConcatVar var_41C
  loc_D32579: CStrVarVal var_12C
  loc_D3257D: Call EjecutarRsCls3(from_stack_1v)
  loc_D32582: FFree1Str var_12C
  loc_D32585: FFreeAd var_170 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = "": var_3EC = "": var_440 = ""
  loc_D325A2: FFreeVar var_194 = "": var_1C4 = "": var_1B4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = "": var_40C = ""
  loc_D325D7: FLdRfVar var_168
  loc_D325DA: FLdPr Me
  loc_D325DD: MemLdPr global_68
  loc_D325E0:  = Me.RecordCount
  loc_D325E5: ILdRf var_168
  loc_D325E8: LitI4 0
  loc_D325ED: GtI4
  loc_D325EE: BranchF loc_D35F74
  loc_D325F1: LitI2_Byte 0
  loc_D325F3: CR8I2
  loc_D325F4: FStFPR8 var_10C
  loc_D325F7: LitI2_Byte 0
  loc_D325F9: CR8I2
  loc_D325FA: FStFPR8 var_114
  loc_D325FD: LitI2_Byte 0
  loc_D325FF: CR8I2
  loc_D32600: FStFPR8 var_11C
  loc_D32603: LitI2_Byte 0
  loc_D32605: CR8I2
  loc_D32606: FStFPR8 var_124
  loc_D32609: FLdPr Me
  loc_D3260C: MemLdPr global_68
  loc_D3260F: Me.MoveFirst
  loc_D32614: FLdRfVar var_16A
  loc_D32617: FLdPr Me
  loc_D3261A: MemLdPr global_68
  loc_D3261D:  = Me.EOF
  loc_D32622: FLdI2 var_16A
  loc_D32625: NotI4
  loc_D32626: BranchF loc_D35BE8
  loc_D32629: FLdRfVar var_194
  loc_D3262C: FLdRfVar var_184
  loc_D3262F: LitVarStr var_180, "TipoLian"
  loc_D32634: PopAdLdVar
  loc_D32635: FLdRfVar var_170
  loc_D32638: FLdPr Me
  loc_D3263B: MemLdPr global_68
  loc_D3263E:  = Me.Fields
  loc_D32643: FLdPr var_170
  loc_D32646: from_stack_2 = Me.Item(from_stack_1)
  loc_D3264B: FLdPr var_184
  loc_D3264E:  = Me.Value
  loc_D32653: FLdRfVar var_194
  loc_D32656: FStVar var_4F4
  loc_D3265A: FFreeAd var_170 = ""
  loc_D32661: FLdRfVar var_4F4
  loc_D32664: LitVarStr var_180, "Aforo"
  loc_D32669: HardType
  loc_D3266A: EqVarBool
  loc_D3266C: BranchF loc_D357C8
  loc_D3266F: FLdRfVar var_194
  loc_D32672: FLdRfVar var_184
  loc_D32675: LitVarStr var_180, "TipoVenc"
  loc_D3267A: PopAdLdVar
  loc_D3267B: FLdRfVar var_170
  loc_D3267E: FLdPr Me
  loc_D32681: MemLdPr global_68
  loc_D32684:  = Me.Fields
  loc_D32689: FLdPr var_170
  loc_D3268C: from_stack_2 = Me.Item(from_stack_1)
  loc_D32691: FLdPr var_184
  loc_D32694:  = Me.Value
  loc_D32699: FLdRfVar var_194
  loc_D3269C: FnCIntVar
  loc_D3269E: LitI2_Byte 1
  loc_D326A0: EqI2
  loc_D326A1: FFreeAd var_170 = ""
  loc_D326A8: FFree1Var var_194 = ""
  loc_D326AB: BranchF loc_D3446B
  loc_D326AE: FLdRfVar var_168
  loc_D326B1: FLdI2 iPeriodo
  loc_D326B4: FLdRfVar var_90
  loc_D326B7: NewIfNullPr clsctacte
  loc_D326BA: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_D326BF: ILdRf var_168
  loc_D326C2: FStR4 var_98
  loc_D326C5: FLdRfVar var_194
  loc_D326C8: FLdRfVar var_184
  loc_D326CB: LitVarStr var_180, "TotaBole"
  loc_D326D0: PopAdLdVar
  loc_D326D1: FLdRfVar var_170
  loc_D326D4: FLdPr Me
  loc_D326D7: MemLdPr global_64
  loc_D326DA:  = Me.Fields
  loc_D326DF: FLdPr var_170
  loc_D326E2: from_stack_2 = Me.Item(from_stack_1)
  loc_D326E7: FLdPr var_184
  loc_D326EA:  = Me.Value
  loc_D326EF: FLdRfVar var_194
  loc_D326F2: LitVarI2 var_1A4, 0
  loc_D326F7: HardType
  loc_D326F8: GtVarBool
  loc_D326FA: FFreeAd var_170 = ""
  loc_D32701: FFree1Var var_194 = ""
  loc_D32704: BranchF loc_D32A82
  loc_D32707: FLdRfVar var_194
  loc_D3270A: FLdRfVar var_184
  loc_D3270D: LitVarStr var_180, "TotaLian"
  loc_D32712: PopAdLdVar
  loc_D32713: FLdRfVar var_170
  loc_D32716: FLdPr Me
  loc_D32719: MemLdPr global_68
  loc_D3271C:  = Me.Fields
  loc_D32721: FLdPr var_170
  loc_D32724: from_stack_2 = Me.Item(from_stack_1)
  loc_D32729: FLdPr var_184
  loc_D3272C:  = Me.Value
  loc_D32731: FLdRfVar var_194
  loc_D32734: FnCDblVar
  loc_D32736: LitI2_Byte 0
  loc_D32738: CR8I2
  loc_D32739: GtR4
  loc_D3273A: FFreeAd var_170 = ""
  loc_D32741: FFree1Var var_194 = ""
  loc_D32744: BranchF loc_D32A7F
  loc_D32747: FLdRfVar var_43C
  loc_D3274A: FLdRfVar var_4FC
  loc_D3274D: LitVarStr var_450, "TotaLian"
  loc_D32752: PopAdLdVar
  loc_D32753: FLdRfVar var_4F8
  loc_D32756: FLdPr Me
  loc_D32759: MemLdPr global_68
  loc_D3275C:  = Me.Fields
  loc_D32761: FLdPr var_4F8
  loc_D32764: from_stack_2 = Me.Item(from_stack_1)
  loc_D32769: FLdPr var_4FC
  loc_D3276C:  = Me.Value
  loc_D32771: FLdRfVar var_4A4
  loc_D32774: FLdRfVar var_504
  loc_D32777: LitVarStr var_4B4, "TotaLian"
  loc_D3277C: PopAdLdVar
  loc_D3277D: FLdRfVar var_500
  loc_D32780: FLdPr Me
  loc_D32783: MemLdPr global_68
  loc_D32786:  = Me.Fields
  loc_D3278B: FLdPr var_500
  loc_D3278E: from_stack_2 = Me.Item(from_stack_1)
  loc_D32793: FLdPr var_504
  loc_D32796:  = Me.Value
  loc_D3279B: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiTili, NumeLiqu, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo) "
  loc_D3279E: LitStr " VALUES ("
  loc_D327A1: ConcatStr
  loc_D327A2: FStStrNoPop var_12C
  loc_D327A5: FLdI2 iPeriodo
  loc_D327A8: CStrUI1
  loc_D327AA: FStStrNoPop var_130
  loc_D327AD: ConcatStr
  loc_D327AE: FStStrNoPop var_134
  loc_D327B1: LitStr ","
  loc_D327B4: ConcatStr
  loc_D327B5: FStStrNoPop var_138
  loc_D327B8: ILdRf var_9C
  loc_D327BB: CStrI4
  loc_D327BD: FStStrNoPop var_13C
  loc_D327C0: ConcatStr
  loc_D327C1: FStStrNoPop var_140
  loc_D327C4: LitStr ","
  loc_D327C7: ConcatStr
  loc_D327C8: FStStrNoPop var_144
  loc_D327CB: FLdI2 iPeriodo
  loc_D327CE: CStrUI1
  loc_D327D0: FStStrNoPop var_148
  loc_D327D3: ConcatStr
  loc_D327D4: FStStrNoPop var_14C
  loc_D327D7: LitStr ","
  loc_D327DA: ConcatStr
  loc_D327DB: CVarStr var_1B4
  loc_D327DE: FLdRfVar var_194
  loc_D327E1: FLdRfVar var_184
  loc_D327E4: LitVarStr var_180, "BimeLiqu"
  loc_D327E9: PopAdLdVar
  loc_D327EA: FLdRfVar var_170
  loc_D327ED: FLdPr Me
  loc_D327F0: MemLdPr global_68
  loc_D327F3:  = Me.Fields
  loc_D327F8: FLdPr var_170
  loc_D327FB: from_stack_2 = Me.Item(from_stack_1)
  loc_D32800: FLdPr var_184
  loc_D32803:  = Me.Value
  loc_D32808: FLdRfVar var_194
  loc_D3280B: ConcatVar var_1C4
  loc_D3280F: LitVarStr var_1A4, ","
  loc_D32814: ConcatVar var_1D4
  loc_D32818: ILdRf var_98
  loc_D3281B: CVarI4
  loc_D3281F: ConcatVar var_1FC
  loc_D32823: LitVarStr var_21C, ",1,1,"
  loc_D32828: ConcatVar var_20C
  loc_D3282C: FLdRfVar var_22C
  loc_D3282F: FLdRfVar var_1EC
  loc_D32832: LitVarStr var_23C, "CodiTili"
  loc_D32837: PopAdLdVar
  loc_D32838: FLdRfVar var_1D8
  loc_D3283B: FLdPr Me
  loc_D3283E: MemLdPr global_68
  loc_D32841:  = Me.Fields
  loc_D32846: FLdPr var_1D8
  loc_D32849: from_stack_2 = Me.Item(from_stack_1)
  loc_D3284E: FLdPr var_1EC
  loc_D32851:  = Me.Value
  loc_D32856: FLdRfVar var_22C
  loc_D32859: ConcatVar var_25C
  loc_D3285D: LitVarStr var_24C, ","
  loc_D32862: ConcatVar var_26C
  loc_D32866: FLdRfVar var_27C
  loc_D32869: FLdRfVar var_2B4
  loc_D3286C: LitVarStr var_28C, "NumeLiqu"
  loc_D32871: PopAdLdVar
  loc_D32872: FLdRfVar var_2A0
  loc_D32875: FLdPr Me
  loc_D32878: MemLdPr global_68
  loc_D3287B:  = Me.Fields
  loc_D32880: FLdPr var_2A0
  loc_D32883: from_stack_2 = Me.Item(from_stack_1)
  loc_D32888: FLdPr var_2B4
  loc_D3288B:  = Me.Value
  loc_D32890: FLdRfVar var_27C
  loc_D32893: ConcatVar var_29C
  loc_D32897: LitVarStr var_2B0, ",7,'"
  loc_D3289C: ConcatVar var_2C4
  loc_D328A0: FLdRfVar var_2E4
  loc_D328A3: FLdRfVar var_33C
  loc_D328A6: LitVarStr var_2D4, "CodiCome"
  loc_D328AB: PopAdLdVar
  loc_D328AC: FLdRfVar var_328
  loc_D328AF: FLdPr Me
  loc_D328B2: MemLdPr global_68
  loc_D328B5:  = Me.Fields
  loc_D328BA: FLdPr var_328
  loc_D328BD: from_stack_2 = Me.Item(from_stack_1)
  loc_D328C2: FLdPr var_33C
  loc_D328C5:  = Me.Value
  loc_D328CA: FLdRfVar var_2E4
  loc_D328CD: ConcatVar var_2F4
  loc_D328D1: LitVarStr var_314, "','Bimestral',0,0,0,"
  loc_D328D6: ConcatVar var_304
  loc_D328DA: FLdRfVar var_324
  loc_D328DD: FLdRfVar var_394
  loc_D328E0: LitVarStr var_338, "TiafConc"
  loc_D328E5: PopAdLdVar
  loc_D328E6: FLdRfVar var_380
  loc_D328E9: FLdPr Me
  loc_D328EC: MemLdPr global_68
  loc_D328EF:  = Me.Fields
  loc_D328F4: FLdPr var_380
  loc_D328F7: from_stack_2 = Me.Item(from_stack_1)
  loc_D328FC: FLdPr var_394
  loc_D328FF:  = Me.Value
  loc_D32904: FLdRfVar var_324
  loc_D32907: ConcatVar var_34C
  loc_D3290B: LitVarStr var_36C, ","
  loc_D32910: ConcatVar var_35C
  loc_D32914: FLdRfVar var_3EC
  loc_D32917: LitVarStr var_390, "FealLian"
  loc_D3291C: PopAdLdVar
  loc_D3291D: FLdRfVar var_3D8
  loc_D32920: FLdPr Me
  loc_D32923: MemLdPr global_68
  loc_D32926:  = Me.Fields
  loc_D3292B: FLdPr var_3D8
  loc_D3292E: from_stack_2 = Me.Item(from_stack_1)
  loc_D32933: FLdZeroAd var_3EC
  loc_D32936: CVarAd
  loc_D3293A: FLdRfVar var_3A4
  loc_D3293D: ImpAdCallFPR4  = Year()
  loc_D32942: FLdRfVar var_3A4
  loc_D32945: ConcatVar var_3B4
  loc_D32949: LitVarStr var_3C4, ",'"
  loc_D3294E: ConcatVar var_3D4
  loc_D32952: FLdRfVar var_3FC
  loc_D32955: FLdRfVar var_454
  loc_D32958: LitVarStr var_3E8, "CodiConc"
  loc_D3295D: PopAdLdVar
  loc_D3295E: FLdRfVar var_440
  loc_D32961: FLdPr Me
  loc_D32964: MemLdPr global_68
  loc_D32967:  = Me.Fields
  loc_D3296C: FLdPr var_440
  loc_D3296F: from_stack_2 = Me.Item(from_stack_1)
  loc_D32974: FLdPr var_454
  loc_D32977:  = Me.Value
  loc_D3297C: FLdRfVar var_3FC
  loc_D3297F: ConcatVar var_40C
  loc_D32983: LitVarStr var_42C, "',"
  loc_D32988: ConcatVar var_41C
  loc_D3298C: LitI4 0
  loc_D32991: LitI4 -1
  loc_D32996: LitI4 1
  loc_D3299B: LitStr "."
  loc_D3299E: LitStr ","
  loc_D329A1: FLdRfVar var_43C
  loc_D329A4: FnCDblVar
  loc_D329A6: CStrR8
  loc_D329A8: FStStrNoPop var_150
  loc_D329AB: ImpAdCallI2 Replace(, , , , , )
  loc_D329B0: CVarStr var_464
  loc_D329B3: ConcatVar var_474
  loc_D329B7: LitVarStr var_494, ",0,0,0,0,0,0,"
  loc_D329BC: ConcatVar var_484
  loc_D329C0: LitI4 0
  loc_D329C5: LitI4 -1
  loc_D329CA: LitI4 1
  loc_D329CF: LitStr "."
  loc_D329D2: LitStr ","
  loc_D329D5: FLdRfVar var_4A4
  loc_D329D8: CStrVarTmp
  loc_D329D9: FStStrNoPop var_154
  loc_D329DC: ImpAdCallI2 Replace(, , , , , )
  loc_D329E1: CVarStr var_4C4
  loc_D329E4: ConcatVar var_4E4
  loc_D329E8: LitVarStr var_4D4, ");"
  loc_D329ED: ConcatVar var_514
  loc_D329F1: CStrVarVal var_158
  loc_D329F5: Call EjecutarRsCls(from_stack_1v)
  loc_D329FA: FFreeStr var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_D32A15: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = "": var_440 = "": var_454 = "": var_4F8 = "": var_4FC = "": var_500 = ""
  loc_D32A3A: FFreeVar var_4C4 = "": var_4E4 = "": var_514 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_37C = "": var_35C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = "": var_40C = "": var_43C = "": var_41C = "": var_464 = "": var_474 = "": var_4A4 = ""
  loc_D32A7F: Branch loc_D32A8A
  loc_D32A82: LitI4 0
  loc_D32A87: FStR4 var_9C
  loc_D32A8A: FLdRfVar var_394
  loc_D32A8D: LitVarStr var_534, "FeveLian"
  loc_D32A92: PopAdLdVar
  loc_D32A93: FLdRfVar var_380
  loc_D32A96: FLdPr Me
  loc_D32A99: MemLdPr global_68
  loc_D32A9C:  = Me.Fields
  loc_D32AA1: FLdPr var_380
  loc_D32AA4: from_stack_2 = Me.Item(from_stack_1)
  loc_D32AA9: FLdRfVar var_664
  loc_D32AAC: FLdRfVar var_504
  loc_D32AAF: LitVarStr var_654, "ImpoLian"
  loc_D32AB4: PopAdLdVar
  loc_D32AB5: FLdRfVar var_500
  loc_D32AB8: FLdPr Me
  loc_D32ABB: MemLdPr global_68
  loc_D32ABE:  = Me.Fields
  loc_D32AC3: FLdPr var_500
  loc_D32AC6: from_stack_2 = Me.Item(from_stack_1)
  loc_D32ACB: FLdPr var_504
  loc_D32ACE:  = Me.Value
  loc_D32AD3: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D32AD6: LitStr " VALUES (7,'"
  loc_D32AD9: ConcatStr
  loc_D32ADA: CVarStr var_1B4
  loc_D32ADD: FLdRfVar var_194
  loc_D32AE0: FLdRfVar var_184
  loc_D32AE3: LitVarStr var_180, "CodiCome"
  loc_D32AE8: PopAdLdVar
  loc_D32AE9: FLdRfVar var_170
  loc_D32AEC: FLdPr Me
  loc_D32AEF: MemLdPr global_68
  loc_D32AF2:  = Me.Fields
  loc_D32AF7: FLdPr var_170
  loc_D32AFA: from_stack_2 = Me.Item(from_stack_1)
  loc_D32AFF: FLdPr var_184
  loc_D32B02:  = Me.Value
  loc_D32B07: FLdRfVar var_194
  loc_D32B0A: ConcatVar var_1C4
  loc_D32B0E: LitVarStr var_1A4, "',"
  loc_D32B13: ConcatVar var_1D4
  loc_D32B17: FLdI2 iPeriodo
  loc_D32B1A: CVarI2 var_1E8
  loc_D32B1D: ConcatVar var_1FC
  loc_D32B21: LitVarStr var_21C, ","
  loc_D32B26: ConcatVar var_20C
  loc_D32B2A: FLdRfVar var_22C
  loc_D32B2D: FLdRfVar var_1EC
  loc_D32B30: LitVarStr var_23C, "BimeLiqu"
  loc_D32B35: PopAdLdVar
  loc_D32B36: FLdRfVar var_1D8
  loc_D32B39: FLdPr Me
  loc_D32B3C: MemLdPr global_68
  loc_D32B3F:  = Me.Fields
  loc_D32B44: FLdPr var_1D8
  loc_D32B47: from_stack_2 = Me.Item(from_stack_1)
  loc_D32B4C: FLdPr var_1EC
  loc_D32B4F:  = Me.Value
  loc_D32B54: FLdRfVar var_22C
  loc_D32B57: ConcatVar var_25C
  loc_D32B5B: LitVarStr var_24C, ","
  loc_D32B60: ConcatVar var_26C
  loc_D32B64: ILdRf var_98
  loc_D32B67: CVarI4
  loc_D32B6B: ConcatVar var_27C
  loc_D32B6F: LitVarStr var_2B0, ",1,"
  loc_D32B74: ConcatVar var_29C
  loc_D32B78: FLdRfVar var_2C4
  loc_D32B7B: FLdRfVar var_2B4
  loc_D32B7E: LitVarStr var_2D4, "CodiTili"
  loc_D32B83: PopAdLdVar
  loc_D32B84: FLdRfVar var_2A0
  loc_D32B87: FLdPr Me
  loc_D32B8A: MemLdPr global_68
  loc_D32B8D:  = Me.Fields
  loc_D32B92: FLdPr var_2A0
  loc_D32B95: from_stack_2 = Me.Item(from_stack_1)
  loc_D32B9A: FLdPr var_2B4
  loc_D32B9D:  = Me.Value
  loc_D32BA2: FLdRfVar var_2C4
  loc_D32BA5: ConcatVar var_2E4
  loc_D32BA9: LitVarStr var_314, ","
  loc_D32BAE: ConcatVar var_2F4
  loc_D32BB2: FLdRfVar var_304
  loc_D32BB5: FLdRfVar var_33C
  loc_D32BB8: LitVarStr var_338, "NumeLiqu"
  loc_D32BBD: PopAdLdVar
  loc_D32BBE: FLdRfVar var_328
  loc_D32BC1: FLdPr Me
  loc_D32BC4: MemLdPr global_68
  loc_D32BC7:  = Me.Fields
  loc_D32BCC: FLdPr var_328
  loc_D32BCF: from_stack_2 = Me.Item(from_stack_1)
  loc_D32BD4: FLdPr var_33C
  loc_D32BD7:  = Me.Value
  loc_D32BDC: FLdRfVar var_304
  loc_D32BDF: ConcatVar var_324
  loc_D32BE3: LitVarStr var_36C, ","
  loc_D32BE8: ConcatVar var_34C
  loc_D32BEC: LitVarI2 var_35C, 0
  loc_D32BF1: FLdRfVar iPeriodo
  loc_D32BF4: CVarRef
  loc_D32BF9: ILdRf var_9C
  loc_D32BFC: LitI4 0
  loc_D32C01: NeI4
  loc_D32C02: CVarBoolI2 var_390
  loc_D32C06: FLdRfVar var_37C
  loc_D32C09: ImpAdCallFPR4  = IIf(, , )
  loc_D32C0E: FLdRfVar var_37C
  loc_D32C11: ConcatVar var_3A4
  loc_D32C15: LitVarStr var_42C, ","
  loc_D32C1A: ConcatVar var_3B4
  loc_D32C1E: ILdRf var_9C
  loc_D32C21: CVarI4
  loc_D32C25: ConcatVar var_3D4
  loc_D32C29: LitVarStr var_494, ",'Bimestral','"
  loc_D32C2E: ConcatVar var_3FC
  loc_D32C32: LitI4 1
  loc_D32C37: LitI4 1
  loc_D32C3C: LitVarStr var_4D4, "yyyy-mm-dd"
  loc_D32C41: FStVarCopyObj var_40C
  loc_D32C44: FLdRfVar var_40C
  loc_D32C47: FLdRfVar var_A4
  loc_D32C4A: CVarRef
  loc_D32C4F: ImpAdCallI2 Format$(, )
  loc_D32C54: CVarStr var_41C
  loc_D32C57: ConcatVar var_43C
  loc_D32C5B: LitVarStr var_524, "','"
  loc_D32C60: ConcatVar var_464
  loc_D32C64: LitI4 1
  loc_D32C69: LitI4 1
  loc_D32C6E: LitVarStr var_544, "yyyy-mm-dd"
  loc_D32C73: FStVarCopyObj var_484
  loc_D32C76: FLdRfVar var_484
  loc_D32C79: FLdZeroAd var_394
  loc_D32C7C: CVarAd
  loc_D32C80: ImpAdCallI2 Format$(, )
  loc_D32C85: CVarStr var_4A4
  loc_D32C88: ConcatVar var_4C4
  loc_D32C8C: LitVarStr var_554, "',Null,0,"
  loc_D32C91: ConcatVar var_4E4
  loc_D32C95: FLdRfVar var_3EC
  loc_D32C98: LitVarStr var_564, "FealLian"
  loc_D32C9D: PopAdLdVar
  loc_D32C9E: FLdRfVar var_3D8
  loc_D32CA1: FLdPr Me
  loc_D32CA4: MemLdPr global_68
  loc_D32CA7:  = Me.Fields
  loc_D32CAC: FLdPr var_3D8
  loc_D32CAF: from_stack_2 = Me.Item(from_stack_1)
  loc_D32CB4: FLdZeroAd var_3EC
  loc_D32CB7: CVarAd
  loc_D32CBB: FLdRfVar var_574
  loc_D32CBE: ImpAdCallFPR4  = Year()
  loc_D32CC3: FLdRfVar var_574
  loc_D32CC6: ConcatVar var_584
  loc_D32CCA: LitVarStr var_594, ",'"
  loc_D32CCF: ConcatVar var_5A4
  loc_D32CD3: FLdRfVar var_5C4
  loc_D32CD6: FLdRfVar var_454
  loc_D32CD9: LitVarStr var_5B4, "CodiConc"
  loc_D32CDE: PopAdLdVar
  loc_D32CDF: FLdRfVar var_440
  loc_D32CE2: FLdPr Me
  loc_D32CE5: MemLdPr global_68
  loc_D32CE8:  = Me.Fields
  loc_D32CED: FLdPr var_440
  loc_D32CF0: from_stack_2 = Me.Item(from_stack_1)
  loc_D32CF5: FLdPr var_454
  loc_D32CF8:  = Me.Value
  loc_D32CFD: FLdRfVar var_5C4
  loc_D32D00: ConcatVar var_5D4
  loc_D32D04: LitVarStr var_5E4, "',0,0,0,"
  loc_D32D09: ConcatVar var_5F4
  loc_D32D0D: FLdRfVar var_614
  loc_D32D10: FLdRfVar var_4FC
  loc_D32D13: LitVarStr var_604, "TiafConc"
  loc_D32D18: PopAdLdVar
  loc_D32D19: FLdRfVar var_4F8
  loc_D32D1C: FLdPr Me
  loc_D32D1F: MemLdPr global_68
  loc_D32D22:  = Me.Fields
  loc_D32D27: FLdPr var_4F8
  loc_D32D2A: from_stack_2 = Me.Item(from_stack_1)
  loc_D32D2F: FLdPr var_4FC
  loc_D32D32:  = Me.Value
  loc_D32D37: FLdRfVar var_614
  loc_D32D3A: ConcatVar var_624
  loc_D32D3E: LitVarStr var_634, ",'','',0,0,'',"
  loc_D32D43: ConcatVar var_644
  loc_D32D47: LitI4 0
  loc_D32D4C: LitI4 -1
  loc_D32D51: LitI4 1
  loc_D32D56: LitStr "."
  loc_D32D59: LitStr ","
  loc_D32D5C: FLdRfVar var_664
  loc_D32D5F: CStrVarTmp
  loc_D32D60: FStStrNoPop var_12C
  loc_D32D63: ImpAdCallI2 Replace(, , , , , )
  loc_D32D68: CVarStr var_674
  loc_D32D6B: ConcatVar var_684
  loc_D32D6F: LitVarStr var_694, ",0,'"
  loc_D32D74: ConcatVar var_6A4
  loc_D32D78: ImpAdLdI4 MemVar_D9302C
  loc_D32D7B: CVarStr var_6B4
  loc_D32D7E: ConcatVar var_6C4
  loc_D32D82: LitVarStr var_6D4, "');"
  loc_D32D87: ConcatVar var_6E4
  loc_D32D8B: CStrVarVal var_130
  loc_D32D8F: Call EjecutarRsCls(from_stack_1v)
  loc_D32D94: FFreeStr var_12C = ""
  loc_D32D9B: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_3D8 = "": var_440 = "": var_454 = "": var_4F8 = "": var_4FC = "": var_500 = ""
  loc_D32DBE: FFreeVar var_4A4 = "": var_4C4 = "": var_514 = "": var_4E4 = "": var_574 = "": var_584 = "": var_5A4 = "": var_5C4 = "": var_5D4 = "": var_5F4 = "": var_614 = "": var_624 = "": var_664 = "": var_644 = "": var_674 = "": var_684 = "": var_6A4 = "": var_6C4 = "": var_6E4 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_390 = "": var_35C = "": var_34C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_40C = "": var_3FC = "": var_41C = "": var_43C = "": var_474 = "": var_484 = ""
  loc_D32E23: FLdRfVar var_194
  loc_D32E26: FLdRfVar var_184
  loc_D32E29: LitVarStr var_180, "DescLian"
  loc_D32E2E: PopAdLdVar
  loc_D32E2F: FLdRfVar var_170
  loc_D32E32: FLdPr Me
  loc_D32E35: MemLdPr global_68
  loc_D32E38:  = Me.Fields
  loc_D32E3D: FLdPr var_170
  loc_D32E40: from_stack_2 = Me.Item(from_stack_1)
  loc_D32E45: FLdPr var_184
  loc_D32E48:  = Me.Value
  loc_D32E4D: FLdRfVar var_194
  loc_D32E50: LitVarI2 var_1A4, 0
  loc_D32E55: HardType
  loc_D32E56: GtVarBool
  loc_D32E58: FFreeAd var_170 = ""
  loc_D32E5F: FFree1Var var_194 = ""
  loc_D32E62: BranchF loc_D331E2
  loc_D32E65: FLdFPR8 var_B0
  loc_D32E68: CVarR8
  loc_D32E6C: FLdRfVar var_194
  loc_D32E6F: FLdRfVar var_184
  loc_D32E72: LitVarStr var_180, "DescLian"
  loc_D32E77: PopAdLdVar
  loc_D32E78: FLdRfVar var_170
  loc_D32E7B: FLdPr Me
  loc_D32E7E: MemLdPr global_68
  loc_D32E81:  = Me.Fields
  loc_D32E86: FLdPr var_170
  loc_D32E89: from_stack_2 = Me.Item(from_stack_1)
  loc_D32E8E: FLdPr var_184
  loc_D32E91:  = Me.Value
  loc_D32E96: FLdRfVar var_194
  loc_D32E99: AddVar var_1B4
  loc_D32E9D: CR4Var
  loc_D32E9E: FStFPR8 var_B0
  loc_D32EA1: FFreeAd var_170 = ""
  loc_D32EA8: FFreeVar var_194 = ""
  loc_D32EAF: FLdRfVar var_5F4
  loc_D32EB2: FLdRfVar var_454
  loc_D32EB5: LitVarStr var_604, "DescLian"
  loc_D32EBA: PopAdLdVar
  loc_D32EBB: FLdRfVar var_440
  loc_D32EBE: FLdPr Me
  loc_D32EC1: MemLdPr global_68
  loc_D32EC4:  = Me.Fields
  loc_D32EC9: FLdPr var_440
  loc_D32ECC: from_stack_2 = Me.Item(from_stack_1)
  loc_D32ED1: FLdPr var_454
  loc_D32ED4:  = Me.Value
  loc_D32ED9: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D32EDC: LitStr " VALUES (7,'"
  loc_D32EDF: ConcatStr
  loc_D32EE0: CVarStr var_1B4
  loc_D32EE3: FLdRfVar var_194
  loc_D32EE6: FLdRfVar var_184
  loc_D32EE9: LitVarStr var_180, "CodiCome"
  loc_D32EEE: PopAdLdVar
  loc_D32EEF: FLdRfVar var_170
  loc_D32EF2: FLdPr Me
  loc_D32EF5: MemLdPr global_68
  loc_D32EF8:  = Me.Fields
  loc_D32EFD: FLdPr var_170
  loc_D32F00: from_stack_2 = Me.Item(from_stack_1)
  loc_D32F05: FLdPr var_184
  loc_D32F08:  = Me.Value
  loc_D32F0D: FLdRfVar var_194
  loc_D32F10: ConcatVar var_1C4
  loc_D32F14: LitVarStr var_1A4, "',"
  loc_D32F19: ConcatVar var_1D4
  loc_D32F1D: FLdI2 iPeriodo
  loc_D32F20: CVarI2 var_1E8
  loc_D32F23: ConcatVar var_1FC
  loc_D32F27: LitVarStr var_21C, ","
  loc_D32F2C: ConcatVar var_20C
  loc_D32F30: FLdRfVar var_22C
  loc_D32F33: FLdRfVar var_1EC
  loc_D32F36: LitVarStr var_23C, "BimeLiqu"
  loc_D32F3B: PopAdLdVar
  loc_D32F3C: FLdRfVar var_1D8
  loc_D32F3F: FLdPr Me
  loc_D32F42: MemLdPr global_68
  loc_D32F45:  = Me.Fields
  loc_D32F4A: FLdPr var_1D8
  loc_D32F4D: from_stack_2 = Me.Item(from_stack_1)
  loc_D32F52: FLdPr var_1EC
  loc_D32F55:  = Me.Value
  loc_D32F5A: FLdRfVar var_22C
  loc_D32F5D: ConcatVar var_25C
  loc_D32F61: LitVarStr var_24C, ","
  loc_D32F66: ConcatVar var_26C
  loc_D32F6A: ILdRf var_98
  loc_D32F6D: CVarI4
  loc_D32F71: ConcatVar var_27C
  loc_D32F75: LitVarStr var_2B0, ",2,"
  loc_D32F7A: ConcatVar var_29C
  loc_D32F7E: FLdRfVar var_2C4
  loc_D32F81: FLdRfVar var_2B4
  loc_D32F84: LitVarStr var_2D4, "CodiTili"
  loc_D32F89: PopAdLdVar
  loc_D32F8A: FLdRfVar var_2A0
  loc_D32F8D: FLdPr Me
  loc_D32F90: MemLdPr global_68
  loc_D32F93:  = Me.Fields
  loc_D32F98: FLdPr var_2A0
  loc_D32F9B: from_stack_2 = Me.Item(from_stack_1)
  loc_D32FA0: FLdPr var_2B4
  loc_D32FA3:  = Me.Value
  loc_D32FA8: FLdRfVar var_2C4
  loc_D32FAB: ConcatVar var_2E4
  loc_D32FAF: LitVarStr var_314, ","
  loc_D32FB4: ConcatVar var_2F4
  loc_D32FB8: FLdRfVar var_304
  loc_D32FBB: FLdRfVar var_33C
  loc_D32FBE: LitVarStr var_338, "NumeLiqu"
  loc_D32FC3: PopAdLdVar
  loc_D32FC4: FLdRfVar var_328
  loc_D32FC7: FLdPr Me
  loc_D32FCA: MemLdPr global_68
  loc_D32FCD:  = Me.Fields
  loc_D32FD2: FLdPr var_328
  loc_D32FD5: from_stack_2 = Me.Item(from_stack_1)
  loc_D32FDA: FLdPr var_33C
  loc_D32FDD:  = Me.Value
  loc_D32FE2: FLdRfVar var_304
  loc_D32FE5: ConcatVar var_324
  loc_D32FE9: LitVarStr var_36C, ","
  loc_D32FEE: ConcatVar var_34C
  loc_D32FF2: LitVarI2 var_35C, 0
  loc_D32FF7: FLdRfVar iPeriodo
  loc_D32FFA: CVarRef
  loc_D32FFF: ILdRf var_9C
  loc_D33002: LitI4 0
  loc_D33007: NeI4
  loc_D33008: CVarBoolI2 var_390
  loc_D3300C: FLdRfVar var_37C
  loc_D3300F: ImpAdCallFPR4  = IIf(, , )
  loc_D33014: FLdRfVar var_37C
  loc_D33017: ConcatVar var_3A4
  loc_D3301B: LitVarStr var_42C, ","
  loc_D33020: ConcatVar var_3B4
  loc_D33024: ILdRf var_9C
  loc_D33027: CVarI4
  loc_D3302B: ConcatVar var_3D4
  loc_D3302F: LitVarStr var_494, ",'Bimestral','"
  loc_D33034: ConcatVar var_3FC
  loc_D33038: LitI4 1
  loc_D3303D: LitI4 1
  loc_D33042: LitVarStr var_4D4, "yyyy-mm-dd"
  loc_D33047: FStVarCopyObj var_40C
  loc_D3304A: FLdRfVar var_40C
  loc_D3304D: FLdRfVar var_A4
  loc_D33050: CVarRef
  loc_D33055: ImpAdCallI2 Format$(, )
  loc_D3305A: CVarStr var_41C
  loc_D3305D: ConcatVar var_43C
  loc_D33061: LitVarStr var_524, "','"
  loc_D33066: ConcatVar var_464
  loc_D3306A: LitI4 1
  loc_D3306F: LitI4 1
  loc_D33074: LitVarStr var_544, "yyyy-mm-dd"
  loc_D33079: FStVarCopyObj var_474
  loc_D3307C: FLdRfVar var_474
  loc_D3307F: FLdRfVar var_A4
  loc_D33082: CVarRef
  loc_D33087: ImpAdCallI2 Format$(, )
  loc_D3308C: CVarStr var_484
  loc_D3308F: ConcatVar var_4A4
  loc_D33093: LitVarStr var_554, "',Null,0,"
  loc_D33098: ConcatVar var_4C4
  loc_D3309C: FLdRfVar var_394
  loc_D3309F: LitVarStr var_564, "FealLian"
  loc_D330A4: PopAdLdVar
  loc_D330A5: FLdRfVar var_380
  loc_D330A8: FLdPr Me
  loc_D330AB: MemLdPr global_68
  loc_D330AE:  = Me.Fields
  loc_D330B3: FLdPr var_380
  loc_D330B6: from_stack_2 = Me.Item(from_stack_1)
  loc_D330BB: FLdZeroAd var_394
  loc_D330BE: CVarAd
  loc_D330C2: FLdRfVar var_514
  loc_D330C5: ImpAdCallFPR4  = Year()
  loc_D330CA: FLdRfVar var_514
  loc_D330CD: ConcatVar var_574
  loc_D330D1: LitVarStr var_594, ",'"
  loc_D330D6: ConcatVar var_584
  loc_D330DA: FLdRfVar var_5A4
  loc_D330DD: FLdRfVar var_3EC
  loc_D330E0: LitVarStr var_5B4, "CodiConc"
  loc_D330E5: PopAdLdVar
  loc_D330E6: FLdRfVar var_3D8
  loc_D330E9: FLdPr Me
  loc_D330EC: MemLdPr global_68
  loc_D330EF:  = Me.Fields
  loc_D330F4: FLdPr var_3D8
  loc_D330F7: from_stack_2 = Me.Item(from_stack_1)
  loc_D330FC: FLdPr var_3EC
  loc_D330FF:  = Me.Value
  loc_D33104: FLdRfVar var_5A4
  loc_D33107: ConcatVar var_5C4
  loc_D3310B: LitVarStr var_5E4, "',0,0,0,6,'','',0,0,'',0,"
  loc_D33110: ConcatVar var_5D4
  loc_D33114: LitI4 0
  loc_D33119: LitI4 -1
  loc_D3311E: LitI4 1
  loc_D33123: LitStr "."
  loc_D33126: LitStr ","
  loc_D33129: FLdRfVar var_5F4
  loc_D3312C: CStrVarTmp
  loc_D3312D: FStStrNoPop var_12C
  loc_D33130: ImpAdCallI2 Replace(, , , , , )
  loc_D33135: CVarStr var_614
  loc_D33138: ConcatVar var_624
  loc_D3313C: LitVarStr var_634, ",'"
  loc_D33141: ConcatVar var_644
  loc_D33145: ImpAdLdI4 MemVar_D9302C
  loc_D33148: CVarStr var_654
  loc_D3314B: ConcatVar var_664
  loc_D3314F: LitVarStr var_694, "');"
  loc_D33154: ConcatVar var_674
  loc_D33158: CStrVarVal var_130
  loc_D3315C: Call EjecutarRsCls(from_stack_1v)
  loc_D33161: FFreeStr var_12C = ""
  loc_D33168: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_3D8 = "": var_3EC = "": var_440 = ""
  loc_D33185: FFreeVar var_4A4 = "": var_4E4 = "": var_4C4 = "": var_514 = "": var_574 = "": var_584 = "": var_5A4 = "": var_5C4 = "": var_5F4 = "": var_5D4 = "": var_614 = "": var_624 = "": var_644 = "": var_664 = "": var_674 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_390 = "": var_35C = "": var_34C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_40C = "": var_3FC = "": var_41C = "": var_43C = "": var_474 = "": var_464 = ""
  loc_D331E2: FLdRfVar var_194
  loc_D331E5: FLdRfVar var_184
  loc_D331E8: LitVarStr var_180, "ExenLian"
  loc_D331ED: PopAdLdVar
  loc_D331EE: FLdRfVar var_170
  loc_D331F1: FLdPr Me
  loc_D331F4: MemLdPr global_68
  loc_D331F7:  = Me.Fields
  loc_D331FC: FLdPr var_170
  loc_D331FF: from_stack_2 = Me.Item(from_stack_1)
  loc_D33204: FLdPr var_184
  loc_D33207:  = Me.Value
  loc_D3320C: FLdRfVar var_194
  loc_D3320F: FnCDblVar
  loc_D33211: LitI2_Byte 0
  loc_D33213: CR8I2
  loc_D33214: GtR4
  loc_D33215: FFreeAd var_170 = ""
  loc_D3321C: FFree1Var var_194 = ""
  loc_D3321F: BranchF loc_D3359F
  loc_D33222: FLdFPR8 var_B8
  loc_D33225: CVarR8
  loc_D33229: FLdRfVar var_194
  loc_D3322C: FLdRfVar var_184
  loc_D3322F: LitVarStr var_180, "ExenLian"
  loc_D33234: PopAdLdVar
  loc_D33235: FLdRfVar var_170
  loc_D33238: FLdPr Me
  loc_D3323B: MemLdPr global_68
  loc_D3323E:  = Me.Fields
  loc_D33243: FLdPr var_170
  loc_D33246: from_stack_2 = Me.Item(from_stack_1)
  loc_D3324B: FLdPr var_184
  loc_D3324E:  = Me.Value
  loc_D33253: FLdRfVar var_194
  loc_D33256: AddVar var_1B4
  loc_D3325A: CR4Var
  loc_D3325B: FStFPR8 var_B8
  loc_D3325E: FFreeAd var_170 = ""
  loc_D33265: FFreeVar var_194 = ""
  loc_D3326C: FLdRfVar var_5F4
  loc_D3326F: FLdRfVar var_454
  loc_D33272: LitVarStr var_604, "ExenLian"
  loc_D33277: PopAdLdVar
  loc_D33278: FLdRfVar var_440
  loc_D3327B: FLdPr Me
  loc_D3327E: MemLdPr global_68
  loc_D33281:  = Me.Fields
  loc_D33286: FLdPr var_440
  loc_D33289: from_stack_2 = Me.Item(from_stack_1)
  loc_D3328E: FLdPr var_454
  loc_D33291:  = Me.Value
  loc_D33296: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D33299: LitStr " VALUES (7,'"
  loc_D3329C: ConcatStr
  loc_D3329D: CVarStr var_1B4
  loc_D332A0: FLdRfVar var_194
  loc_D332A3: FLdRfVar var_184
  loc_D332A6: LitVarStr var_180, "CodiCome"
  loc_D332AB: PopAdLdVar
  loc_D332AC: FLdRfVar var_170
  loc_D332AF: FLdPr Me
  loc_D332B2: MemLdPr global_68
  loc_D332B5:  = Me.Fields
  loc_D332BA: FLdPr var_170
  loc_D332BD: from_stack_2 = Me.Item(from_stack_1)
  loc_D332C2: FLdPr var_184
  loc_D332C5:  = Me.Value
  loc_D332CA: FLdRfVar var_194
  loc_D332CD: ConcatVar var_1C4
  loc_D332D1: LitVarStr var_1A4, "',"
  loc_D332D6: ConcatVar var_1D4
  loc_D332DA: FLdI2 iPeriodo
  loc_D332DD: CVarI2 var_1E8
  loc_D332E0: ConcatVar var_1FC
  loc_D332E4: LitVarStr var_21C, ","
  loc_D332E9: ConcatVar var_20C
  loc_D332ED: FLdRfVar var_22C
  loc_D332F0: FLdRfVar var_1EC
  loc_D332F3: LitVarStr var_23C, "BimeLiqu"
  loc_D332F8: PopAdLdVar
  loc_D332F9: FLdRfVar var_1D8
  loc_D332FC: FLdPr Me
  loc_D332FF: MemLdPr global_68
  loc_D33302:  = Me.Fields
  loc_D33307: FLdPr var_1D8
  loc_D3330A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3330F: FLdPr var_1EC
  loc_D33312:  = Me.Value
  loc_D33317: FLdRfVar var_22C
  loc_D3331A: ConcatVar var_25C
  loc_D3331E: LitVarStr var_24C, ","
  loc_D33323: ConcatVar var_26C
  loc_D33327: ILdRf var_98
  loc_D3332A: CVarI4
  loc_D3332E: ConcatVar var_27C
  loc_D33332: LitVarStr var_2B0, ",2,"
  loc_D33337: ConcatVar var_29C
  loc_D3333B: FLdRfVar var_2C4
  loc_D3333E: FLdRfVar var_2B4
  loc_D33341: LitVarStr var_2D4, "CodiTili"
  loc_D33346: PopAdLdVar
  loc_D33347: FLdRfVar var_2A0
  loc_D3334A: FLdPr Me
  loc_D3334D: MemLdPr global_68
  loc_D33350:  = Me.Fields
  loc_D33355: FLdPr var_2A0
  loc_D33358: from_stack_2 = Me.Item(from_stack_1)
  loc_D3335D: FLdPr var_2B4
  loc_D33360:  = Me.Value
  loc_D33365: FLdRfVar var_2C4
  loc_D33368: ConcatVar var_2E4
  loc_D3336C: LitVarStr var_314, ","
  loc_D33371: ConcatVar var_2F4
  loc_D33375: FLdRfVar var_304
  loc_D33378: FLdRfVar var_33C
  loc_D3337B: LitVarStr var_338, "NumeLiqu"
  loc_D33380: PopAdLdVar
  loc_D33381: FLdRfVar var_328
  loc_D33384: FLdPr Me
  loc_D33387: MemLdPr global_68
  loc_D3338A:  = Me.Fields
  loc_D3338F: FLdPr var_328
  loc_D33392: from_stack_2 = Me.Item(from_stack_1)
  loc_D33397: FLdPr var_33C
  loc_D3339A:  = Me.Value
  loc_D3339F: FLdRfVar var_304
  loc_D333A2: ConcatVar var_324
  loc_D333A6: LitVarStr var_36C, ","
  loc_D333AB: ConcatVar var_34C
  loc_D333AF: LitVarI2 var_35C, 0
  loc_D333B4: FLdRfVar iPeriodo
  loc_D333B7: CVarRef
  loc_D333BC: ILdRf var_9C
  loc_D333BF: LitI4 0
  loc_D333C4: NeI4
  loc_D333C5: CVarBoolI2 var_390
  loc_D333C9: FLdRfVar var_37C
  loc_D333CC: ImpAdCallFPR4  = IIf(, , )
  loc_D333D1: FLdRfVar var_37C
  loc_D333D4: ConcatVar var_3A4
  loc_D333D8: LitVarStr var_42C, ","
  loc_D333DD: ConcatVar var_3B4
  loc_D333E1: ILdRf var_9C
  loc_D333E4: CVarI4
  loc_D333E8: ConcatVar var_3D4
  loc_D333EC: LitVarStr var_494, ",'Bimestral','"
  loc_D333F1: ConcatVar var_3FC
  loc_D333F5: LitI4 1
  loc_D333FA: LitI4 1
  loc_D333FF: LitVarStr var_4D4, "yyyy-mm-dd"
  loc_D33404: FStVarCopyObj var_40C
  loc_D33407: FLdRfVar var_40C
  loc_D3340A: FLdRfVar var_A4
  loc_D3340D: CVarRef
  loc_D33412: ImpAdCallI2 Format$(, )
  loc_D33417: CVarStr var_41C
  loc_D3341A: ConcatVar var_43C
  loc_D3341E: LitVarStr var_524, "','"
  loc_D33423: ConcatVar var_464
  loc_D33427: LitI4 1
  loc_D3342C: LitI4 1
  loc_D33431: LitVarStr var_544, "yyyy-mm-dd"
  loc_D33436: FStVarCopyObj var_474
  loc_D33439: FLdRfVar var_474
  loc_D3343C: FLdRfVar var_A4
  loc_D3343F: CVarRef
  loc_D33444: ImpAdCallI2 Format$(, )
  loc_D33449: CVarStr var_484
  loc_D3344C: ConcatVar var_4A4
  loc_D33450: LitVarStr var_554, "',Null,0,"
  loc_D33455: ConcatVar var_4C4
  loc_D33459: FLdRfVar var_394
  loc_D3345C: LitVarStr var_564, "FealLian"
  loc_D33461: PopAdLdVar
  loc_D33462: FLdRfVar var_380
  loc_D33465: FLdPr Me
  loc_D33468: MemLdPr global_68
  loc_D3346B:  = Me.Fields
  loc_D33470: FLdPr var_380
  loc_D33473: from_stack_2 = Me.Item(from_stack_1)
  loc_D33478: FLdZeroAd var_394
  loc_D3347B: CVarAd
  loc_D3347F: FLdRfVar var_514
  loc_D33482: ImpAdCallFPR4  = Year()
  loc_D33487: FLdRfVar var_514
  loc_D3348A: ConcatVar var_574
  loc_D3348E: LitVarStr var_594, ",'"
  loc_D33493: ConcatVar var_584
  loc_D33497: FLdRfVar var_5A4
  loc_D3349A: FLdRfVar var_3EC
  loc_D3349D: LitVarStr var_5B4, "CodiConc"
  loc_D334A2: PopAdLdVar
  loc_D334A3: FLdRfVar var_3D8
  loc_D334A6: FLdPr Me
  loc_D334A9: MemLdPr global_68
  loc_D334AC:  = Me.Fields
  loc_D334B1: FLdPr var_3D8
  loc_D334B4: from_stack_2 = Me.Item(from_stack_1)
  loc_D334B9: FLdPr var_3EC
  loc_D334BC:  = Me.Value
  loc_D334C1: FLdRfVar var_5A4
  loc_D334C4: ConcatVar var_5C4
  loc_D334C8: LitVarStr var_5E4, "',0,0,0,15,'','',0,0,'',0,"
  loc_D334CD: ConcatVar var_5D4
  loc_D334D1: LitI4 0
  loc_D334D6: LitI4 -1
  loc_D334DB: LitI4 1
  loc_D334E0: LitStr "."
  loc_D334E3: LitStr ","
  loc_D334E6: FLdRfVar var_5F4
  loc_D334E9: CStrVarTmp
  loc_D334EA: FStStrNoPop var_12C
  loc_D334ED: ImpAdCallI2 Replace(, , , , , )
  loc_D334F2: CVarStr var_614
  loc_D334F5: ConcatVar var_624
  loc_D334F9: LitVarStr var_634, ",'"
  loc_D334FE: ConcatVar var_644
  loc_D33502: ImpAdLdI4 MemVar_D9302C
  loc_D33505: CVarStr var_654
  loc_D33508: ConcatVar var_664
  loc_D3350C: LitVarStr var_694, "');"
  loc_D33511: ConcatVar var_674
  loc_D33515: CStrVarVal var_130
  loc_D33519: Call EjecutarRsCls(from_stack_1v)
  loc_D3351E: FFreeStr var_12C = ""
  loc_D33525: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_3D8 = "": var_3EC = "": var_440 = ""
  loc_D33542: FFreeVar var_4A4 = "": var_4E4 = "": var_4C4 = "": var_514 = "": var_574 = "": var_584 = "": var_5A4 = "": var_5C4 = "": var_5F4 = "": var_5D4 = "": var_614 = "": var_624 = "": var_644 = "": var_664 = "": var_674 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_390 = "": var_35C = "": var_34C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_40C = "": var_3FC = "": var_41C = "": var_43C = "": var_474 = "": var_464 = ""
  loc_D3359F: FLdRfVar var_194
  loc_D335A2: FLdRfVar var_184
  loc_D335A5: LitVarStr var_180, "CrafLian"
  loc_D335AA: PopAdLdVar
  loc_D335AB: FLdRfVar var_170
  loc_D335AE: FLdPr Me
  loc_D335B1: MemLdPr global_68
  loc_D335B4:  = Me.Fields
  loc_D335B9: FLdPr var_170
  loc_D335BC: from_stack_2 = Me.Item(from_stack_1)
  loc_D335C1: FLdPr var_184
  loc_D335C4:  = Me.Value
  loc_D335C9: FLdRfVar var_194
  loc_D335CC: LitVarI2 var_1A4, 0
  loc_D335D1: HardType
  loc_D335D2: GtVarBool
  loc_D335D4: FFreeAd var_170 = ""
  loc_D335DB: FFree1Var var_194 = ""
  loc_D335DE: BranchF loc_D34300
  loc_D335E1: FLdRfVar var_5F4
  loc_D335E4: FLdRfVar var_454
  loc_D335E7: LitVarStr var_604, "CrafLian"
  loc_D335EC: PopAdLdVar
  loc_D335ED: FLdRfVar var_440
  loc_D335F0: FLdPr Me
  loc_D335F3: MemLdPr global_68
  loc_D335F6:  = Me.Fields
  loc_D335FB: FLdPr var_440
  loc_D335FE: from_stack_2 = Me.Item(from_stack_1)
  loc_D33603: FLdPr var_454
  loc_D33606:  = Me.Value
  loc_D3360B: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, CodiUsua) "
  loc_D3360E: LitStr " VALUES (7,'"
  loc_D33611: ConcatStr
  loc_D33612: CVarStr var_1B4
  loc_D33615: FLdRfVar var_194
  loc_D33618: FLdRfVar var_184
  loc_D3361B: LitVarStr var_180, "CodiCome"
  loc_D33620: PopAdLdVar
  loc_D33621: FLdRfVar var_170
  loc_D33624: FLdPr Me
  loc_D33627: MemLdPr global_68
  loc_D3362A:  = Me.Fields
  loc_D3362F: FLdPr var_170
  loc_D33632: from_stack_2 = Me.Item(from_stack_1)
  loc_D33637: FLdPr var_184
  loc_D3363A:  = Me.Value
  loc_D3363F: FLdRfVar var_194
  loc_D33642: ConcatVar var_1C4
  loc_D33646: LitVarStr var_1A4, "',"
  loc_D3364B: ConcatVar var_1D4
  loc_D3364F: FLdI2 iPeriodo
  loc_D33652: CVarI2 var_1E8
  loc_D33655: ConcatVar var_1FC
  loc_D33659: LitVarStr var_21C, ","
  loc_D3365E: ConcatVar var_20C
  loc_D33662: FLdRfVar var_22C
  loc_D33665: FLdRfVar var_1EC
  loc_D33668: LitVarStr var_23C, "BimeLiqu"
  loc_D3366D: PopAdLdVar
  loc_D3366E: FLdRfVar var_1D8
  loc_D33671: FLdPr Me
  loc_D33674: MemLdPr global_68
  loc_D33677:  = Me.Fields
  loc_D3367C: FLdPr var_1D8
  loc_D3367F: from_stack_2 = Me.Item(from_stack_1)
  loc_D33684: FLdPr var_1EC
  loc_D33687:  = Me.Value
  loc_D3368C: FLdRfVar var_22C
  loc_D3368F: ConcatVar var_25C
  loc_D33693: LitVarStr var_24C, ","
  loc_D33698: ConcatVar var_26C
  loc_D3369C: ILdRf var_98
  loc_D3369F: CVarI4
  loc_D336A3: ConcatVar var_27C
  loc_D336A7: LitVarStr var_2B0, ",3,"
  loc_D336AC: ConcatVar var_29C
  loc_D336B0: FLdRfVar var_2C4
  loc_D336B3: FLdRfVar var_2B4
  loc_D336B6: LitVarStr var_2D4, "CodiTili"
  loc_D336BB: PopAdLdVar
  loc_D336BC: FLdRfVar var_2A0
  loc_D336BF: FLdPr Me
  loc_D336C2: MemLdPr global_68
  loc_D336C5:  = Me.Fields
  loc_D336CA: FLdPr var_2A0
  loc_D336CD: from_stack_2 = Me.Item(from_stack_1)
  loc_D336D2: FLdPr var_2B4
  loc_D336D5:  = Me.Value
  loc_D336DA: FLdRfVar var_2C4
  loc_D336DD: ConcatVar var_2E4
  loc_D336E1: LitVarStr var_314, ","
  loc_D336E6: ConcatVar var_2F4
  loc_D336EA: FLdRfVar var_304
  loc_D336ED: FLdRfVar var_33C
  loc_D336F0: LitVarStr var_338, "NumeLiqu"
  loc_D336F5: PopAdLdVar
  loc_D336F6: FLdRfVar var_328
  loc_D336F9: FLdPr Me
  loc_D336FC: MemLdPr global_68
  loc_D336FF:  = Me.Fields
  loc_D33704: FLdPr var_328
  loc_D33707: from_stack_2 = Me.Item(from_stack_1)
  loc_D3370C: FLdPr var_33C
  loc_D3370F:  = Me.Value
  loc_D33714: FLdRfVar var_304
  loc_D33717: ConcatVar var_324
  loc_D3371B: LitVarStr var_36C, ","
  loc_D33720: ConcatVar var_34C
  loc_D33724: LitVarI2 var_35C, 0
  loc_D33729: FLdRfVar iPeriodo
  loc_D3372C: CVarRef
  loc_D33731: ILdRf var_9C
  loc_D33734: LitI4 0
  loc_D33739: NeI4
  loc_D3373A: CVarBoolI2 var_390
  loc_D3373E: FLdRfVar var_37C
  loc_D33741: ImpAdCallFPR4  = IIf(, , )
  loc_D33746: FLdRfVar var_37C
  loc_D33749: ConcatVar var_3A4
  loc_D3374D: LitVarStr var_42C, ","
  loc_D33752: ConcatVar var_3B4
  loc_D33756: ILdRf var_9C
  loc_D33759: CVarI4
  loc_D3375D: ConcatVar var_3D4
  loc_D33761: LitVarStr var_494, ",'Mensual','"
  loc_D33766: ConcatVar var_3FC
  loc_D3376A: LitI4 1
  loc_D3376F: LitI4 1
  loc_D33774: LitVarStr var_4D4, "yyyy-mm-dd"
  loc_D33779: FStVarCopyObj var_40C
  loc_D3377C: FLdRfVar var_40C
  loc_D3377F: FLdRfVar var_A4
  loc_D33782: CVarRef
  loc_D33787: ImpAdCallI2 Format$(, )
  loc_D3378C: CVarStr var_41C
  loc_D3378F: ConcatVar var_43C
  loc_D33793: LitVarStr var_524, "','"
  loc_D33798: ConcatVar var_464
  loc_D3379C: LitI4 1
  loc_D337A1: LitI4 1
  loc_D337A6: LitVarStr var_544, "yyyy-mm-dd"
  loc_D337AB: FStVarCopyObj var_474
  loc_D337AE: FLdRfVar var_474
  loc_D337B1: FLdRfVar var_A4
  loc_D337B4: CVarRef
  loc_D337B9: ImpAdCallI2 Format$(, )
  loc_D337BE: CVarStr var_484
  loc_D337C1: ConcatVar var_4A4
  loc_D337C5: LitVarStr var_554, "',Null,0,"
  loc_D337CA: ConcatVar var_4C4
  loc_D337CE: FLdRfVar var_394
  loc_D337D1: LitVarStr var_564, "FealLian"
  loc_D337D6: PopAdLdVar
  loc_D337D7: FLdRfVar var_380
  loc_D337DA: FLdPr Me
  loc_D337DD: MemLdPr global_68
  loc_D337E0:  = Me.Fields
  loc_D337E5: FLdPr var_380
  loc_D337E8: from_stack_2 = Me.Item(from_stack_1)
  loc_D337ED: FLdZeroAd var_394
  loc_D337F0: CVarAd
  loc_D337F4: FLdRfVar var_514
  loc_D337F7: ImpAdCallFPR4  = Year()
  loc_D337FC: FLdRfVar var_514
  loc_D337FF: ConcatVar var_574
  loc_D33803: LitVarStr var_594, ",'"
  loc_D33808: ConcatVar var_584
  loc_D3380C: FLdRfVar var_5A4
  loc_D3380F: FLdRfVar var_3EC
  loc_D33812: LitVarStr var_5B4, "CodiConc"
  loc_D33817: PopAdLdVar
  loc_D33818: FLdRfVar var_3D8
  loc_D3381B: FLdPr Me
  loc_D3381E: MemLdPr global_68
  loc_D33821:  = Me.Fields
  loc_D33826: FLdPr var_3D8
  loc_D33829: from_stack_2 = Me.Item(from_stack_1)
  loc_D3382E: FLdPr var_3EC
  loc_D33831:  = Me.Value
  loc_D33836: FLdRfVar var_5A4
  loc_D33839: ConcatVar var_5C4
  loc_D3383D: LitVarStr var_5E4, "',0,0,0,23,'','',0,0,'',0,"
  loc_D33842: ConcatVar var_5D4
  loc_D33846: LitI4 0
  loc_D3384B: LitI4 -1
  loc_D33850: LitI4 1
  loc_D33855: LitStr "."
  loc_D33858: LitStr ","
  loc_D3385B: FLdRfVar var_5F4
  loc_D3385E: CStrVarTmp
  loc_D3385F: FStStrNoPop var_12C
  loc_D33862: ImpAdCallI2 Replace(, , , , , )
  loc_D33867: CVarStr var_614
  loc_D3386A: ConcatVar var_624
  loc_D3386E: LitVarStr var_634, ",'"
  loc_D33873: ConcatVar var_644
  loc_D33877: ImpAdLdI4 MemVar_D9302C
  loc_D3387A: CVarStr var_654
  loc_D3387D: ConcatVar var_664
  loc_D33881: LitVarStr var_694, "');"
  loc_D33886: ConcatVar var_674
  loc_D3388A: CStrVarVal var_130
  loc_D3388E: Call EjecutarRsCls(from_stack_1v)
  loc_D33893: FFreeStr var_12C = ""
  loc_D3389A: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_3D8 = "": var_3EC = "": var_440 = ""
  loc_D338B7: FFreeVar var_4A4 = "": var_4E4 = "": var_4C4 = "": var_514 = "": var_574 = "": var_584 = "": var_5A4 = "": var_5C4 = "": var_5F4 = "": var_5D4 = "": var_614 = "": var_624 = "": var_644 = "": var_664 = "": var_674 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_390 = "": var_35C = "": var_34C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_40C = "": var_3FC = "": var_41C = "": var_43C = "": var_474 = "": var_464 = ""
  loc_D33914: FLdRfVar var_184
  loc_D33917: LitVarStr var_180, "CrafLian"
  loc_D3391C: PopAdLdVar
  loc_D3391D: FLdRfVar var_170
  loc_D33920: FLdPr Me
  loc_D33923: MemLdPr global_68
  loc_D33926:  = Me.Fields
  loc_D3392B: FLdPr var_170
  loc_D3392E: from_stack_2 = Me.Item(from_stack_1)
  loc_D33933: LitI4 2
  loc_D33938: FLdZeroAd var_184
  loc_D3393B: CVarAd
  loc_D3393F: FLdRfVar var_1B4
  loc_D33942: ImpAdCallFPR4  = Round(, )
  loc_D33947: FLdRfVar var_1B4
  loc_D3394A: CR4Var
  loc_D3394B: FStFPR8 var_EC
  loc_D3394E: FFree1Ad var_170
  loc_D33951: FFreeVar var_194 = ""
  loc_D33958: FLdRfVar var_184
  loc_D3395B: LitVarStr var_180, "CrafLian"
  loc_D33960: PopAdLdVar
  loc_D33961: FLdRfVar var_170
  loc_D33964: FLdPr Me
  loc_D33967: MemLdPr global_68
  loc_D3396A:  = Me.Fields
  loc_D3396F: FLdPr var_170
  loc_D33972: from_stack_2 = Me.Item(from_stack_1)
  loc_D33977: LitI4 2
  loc_D3397C: FLdZeroAd var_184
  loc_D3397F: CVarAd
  loc_D33983: FLdRfVar var_1B4
  loc_D33986: ImpAdCallFPR4  = Round(, )
  loc_D3398B: FLdRfVar var_1B4
  loc_D3398E: CR4Var
  loc_D3398F: FStFPR8 var_104
  loc_D33992: FFree1Ad var_170
  loc_D33995: FFreeVar var_194 = ""
  loc_D3399C: LitStr "SELECT CodiOfic, CuenCtct, NumeCred, SUM(DebeCred)-SUM(CredCred) as SaldCred FROM creditos WHERE CodiOfic = 7"
  loc_D3399F: LitStr " AND CuenCtct = '"
  loc_D339A2: ConcatStr
  loc_D339A3: CVarStr var_1B4
  loc_D339A6: FLdRfVar var_194
  loc_D339A9: FLdRfVar var_184
  loc_D339AC: LitVarStr var_180, "CodiCome"
  loc_D339B1: PopAdLdVar
  loc_D339B2: FLdRfVar var_170
  loc_D339B5: FLdPr Me
  loc_D339B8: MemLdPr global_68
  loc_D339BB:  = Me.Fields
  loc_D339C0: FLdPr var_170
  loc_D339C3: from_stack_2 = Me.Item(from_stack_1)
  loc_D339C8: FLdPr var_184
  loc_D339CB:  = Me.Value
  loc_D339D0: FLdRfVar var_194
  loc_D339D3: ConcatVar var_1C4
  loc_D339D7: LitVarStr var_1A4, "'"
  loc_D339DC: ConcatVar var_1D4
  loc_D339E0: LitVarStr var_1E8, " GROUP BY CodiOfic, CuenCtct, NumeCred"
  loc_D339E5: ConcatVar var_1FC
  loc_D339E9: CStrVarVal var_12C
  loc_D339ED: Call EjecutarRsCls4(from_stack_1v)
  loc_D339F2: FFree1Str var_12C
  loc_D339F5: FFreeAd var_170 = ""
  loc_D339FC: FFreeVar var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = ""
  loc_D33A09: FLdRfVar var_168
  loc_D33A0C: FLdPr Me
  loc_D33A0F: MemLdPr global_72
  loc_D33A12:  = Me.RecordCount
  loc_D33A17: ILdRf var_168
  loc_D33A1A: LitI4 0
  loc_D33A1F: GtI4
  loc_D33A20: BranchF loc_D34300
  loc_D33A23: FLdPr Me
  loc_D33A26: MemLdPr global_72
  loc_D33A29: Me.MoveFirst
  loc_D33A2E: FLdRfVar var_16A
  loc_D33A31: FLdPr Me
  loc_D33A34: MemLdPr global_72
  loc_D33A37:  = Me.EOF
  loc_D33A3C: FLdI2 var_16A
  loc_D33A3F: NotI4
  loc_D33A40: BranchF loc_D34300
  loc_D33A43: FLdFPR8 var_EC
  loc_D33A46: LitI2_Byte 0
  loc_D33A48: CR8I2
  loc_D33A49: GtR4
  loc_D33A4A: CVarBoolI2 var_1E8
  loc_D33A4E: FLdRfVar var_194
  loc_D33A51: FLdRfVar var_184
  loc_D33A54: LitVarStr var_180, "SaldCred"
  loc_D33A59: PopAdLdVar
  loc_D33A5A: FLdRfVar var_170
  loc_D33A5D: FLdPr Me
  loc_D33A60: MemLdPr global_72
  loc_D33A63:  = Me.Fields
  loc_D33A68: FLdPr var_170
  loc_D33A6B: from_stack_2 = Me.Item(from_stack_1)
  loc_D33A70: FLdPr var_184
  loc_D33A73:  = Me.Value
  loc_D33A78: FLdRfVar var_194
  loc_D33A7B: LitVarI2 var_1A4, 0
  loc_D33A80: HardType
  loc_D33A81: GtVar var_1B4
  loc_D33A85: AndVar var_1C4
  loc_D33A89: CBoolVarNull
  loc_D33A8B: FFreeAd var_170 = ""
  loc_D33A92: FFreeVar var_194 = ""
  loc_D33A99: BranchF loc_D342F2
  loc_D33A9C: FLdRfVar var_194
  loc_D33A9F: FLdRfVar var_184
  loc_D33AA2: LitVarStr var_180, "SaldCred"
  loc_D33AA7: PopAdLdVar
  loc_D33AA8: FLdRfVar var_170
  loc_D33AAB: FLdPr Me
  loc_D33AAE: MemLdPr global_72
  loc_D33AB1:  = Me.Fields
  loc_D33AB6: FLdPr var_170
  loc_D33AB9: from_stack_2 = Me.Item(from_stack_1)
  loc_D33ABE: FLdPr var_184
  loc_D33AC1:  = Me.Value
  loc_D33AC6: FLdRfVar var_194
  loc_D33AC9: FLdFPR8 var_EC
  loc_D33ACC: CVarR8
  loc_D33AD0: HardType
  loc_D33AD1: LeVarBool
  loc_D33AD3: FFreeAd var_170 = ""
  loc_D33ADA: FFree1Var var_194 = ""
  loc_D33ADD: BranchF loc_D33F22
  loc_D33AE0: FLdFPR8 var_EC
  loc_D33AE3: CVarR8
  loc_D33AE7: FLdRfVar var_194
  loc_D33AEA: FLdRfVar var_184
  loc_D33AED: LitVarStr var_180, "SaldCred"
  loc_D33AF2: PopAdLdVar
  loc_D33AF3: FLdRfVar var_170
  loc_D33AF6: FLdPr Me
  loc_D33AF9: MemLdPr global_72
  loc_D33AFC:  = Me.Fields
  loc_D33B01: FLdPr var_170
  loc_D33B04: from_stack_2 = Me.Item(from_stack_1)
  loc_D33B09: FLdPr var_184
  loc_D33B0C:  = Me.Value
  loc_D33B11: FLdRfVar var_194
  loc_D33B14: SubVar var_1B4
  loc_D33B18: CR4Var
  loc_D33B19: FStFPR8 var_EC
  loc_D33B1C: FFreeAd var_170 = ""
  loc_D33B23: FFree1Var var_194 = ""
  loc_D33B26: FLdRfVar var_194
  loc_D33B29: FLdRfVar var_184
  loc_D33B2C: LitVarStr var_180, "CodiOfic"
  loc_D33B31: PopAdLdVar
  loc_D33B32: FLdRfVar var_170
  loc_D33B35: FLdPr Me
  loc_D33B38: MemLdPr global_72
  loc_D33B3B:  = Me.Fields
  loc_D33B40: FLdPr var_170
  loc_D33B43: from_stack_2 = Me.Item(from_stack_1)
  loc_D33B48: FLdPr var_184
  loc_D33B4B:  = Me.Value
  loc_D33B50: FLdRfVar var_1B4
  loc_D33B53: FLdRfVar var_1EC
  loc_D33B56: LitVarStr var_1A4, "CuenCtct"
  loc_D33B5B: PopAdLdVar
  loc_D33B5C: FLdRfVar var_1D8
  loc_D33B5F: FLdPr Me
  loc_D33B62: MemLdPr global_72
  loc_D33B65:  = Me.Fields
  loc_D33B6A: FLdPr var_1D8
  loc_D33B6D: from_stack_2 = Me.Item(from_stack_1)
  loc_D33B72: FLdPr var_1EC
  loc_D33B75:  = Me.Value
  loc_D33B7A: FLdRfVar var_1C4
  loc_D33B7D: FLdRfVar var_2B4
  loc_D33B80: LitVarStr var_1E8, "NumeCred"
  loc_D33B85: PopAdLdVar
  loc_D33B86: FLdRfVar var_2A0
  loc_D33B89: FLdPr Me
  loc_D33B8C: MemLdPr global_72
  loc_D33B8F:  = Me.Fields
  loc_D33B94: FLdPr var_2A0
  loc_D33B97: from_stack_2 = Me.Item(from_stack_1)
  loc_D33B9C: FLdPr var_2B4
  loc_D33B9F:  = Me.Value
  loc_D33BA4: FLdRfVar var_16A
  loc_D33BA7: FLdRfVar var_1C4
  loc_D33BAA: CI4Var
  loc_D33BAC: FLdRfVar var_1B4
  loc_D33BAF: CStrVarTmp
  loc_D33BB0: FStStrNoPop var_12C
  loc_D33BB3: FLdRfVar var_194
  loc_D33BB6: CUI1Var
  loc_D33BB8: FLdRfVar GeneracionCuentaCorriente
  loc_D33BBB: NewIfNullPr clscreditos
  loc_D33BBE: from_stack_4v = clscreditos.BuscaMoviCred(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D33BC3: FLdI2 var_16A
  loc_D33BC6: CR8I2
  loc_D33BC7: FStFPR8 var_F4
  loc_D33BCA: FFree1Str var_12C
  loc_D33BCD: FFreeAd var_170 = "": var_1D8 = "": var_2A0 = "": var_184 = "": var_1EC = ""
  loc_D33BDC: FFreeVar var_194 = "": var_1B4 = ""
  loc_D33BE5: FLdFPR8 var_F4
  loc_D33BE8: LitI2_Byte 1
  loc_D33BEA: CR8I2
  loc_D33BEB: AddR8
  loc_D33BEC: FStFPR8 var_F4
  loc_D33BEF: FLdRfVar var_5D4
  loc_D33BF2: FLdRfVar var_4FC
  loc_D33BF5: LitVarStr var_5E4, "SaldCred"
  loc_D33BFA: PopAdLdVar
  loc_D33BFB: FLdRfVar var_4F8
  loc_D33BFE: FLdPr Me
  loc_D33C01: MemLdPr global_72
  loc_D33C04:  = Me.Fields
  loc_D33C09: FLdPr var_4F8
  loc_D33C0C: from_stack_2 = Me.Item(from_stack_1)
  loc_D33C11: FLdPr var_4FC
  loc_D33C14:  = Me.Value
  loc_D33C19: LitStr " INSERT INTO creditos (CodiOfic,CuenCtct,NumeCred,MoviCred,PeriCtct,BimeCtct,NumeCtct,MoviCtct,CodiTili,NumeLiqu,PeriBole,NumeBole,FealCtct,PeriInfo,CodiConc,CodiTimo,ExpeCred,DetaCred,DebeCred,CredCred,CodiUsua) "
  loc_D33C1C: LitStr " VALUES (7,'"
  loc_D33C1F: ConcatStr
  loc_D33C20: CVarStr var_1B4
  loc_D33C23: FLdRfVar var_194
  loc_D33C26: FLdRfVar var_184
  loc_D33C29: LitVarStr var_180, "CodiCome"
  loc_D33C2E: PopAdLdVar
  loc_D33C2F: FLdRfVar var_170
  loc_D33C32: FLdPr Me
  loc_D33C35: MemLdPr global_68
  loc_D33C38:  = Me.Fields
  loc_D33C3D: FLdPr var_170
  loc_D33C40: from_stack_2 = Me.Item(from_stack_1)
  loc_D33C45: FLdPr var_184
  loc_D33C48:  = Me.Value
  loc_D33C4D: FLdRfVar var_194
  loc_D33C50: ConcatVar var_1C4
  loc_D33C54: LitVarStr var_1A4, "',"
  loc_D33C59: ConcatVar var_1D4
  loc_D33C5D: FLdRfVar var_1FC
  loc_D33C60: FLdRfVar var_1EC
  loc_D33C63: LitVarStr var_1E8, "NumeCred"
  loc_D33C68: PopAdLdVar
  loc_D33C69: FLdRfVar var_1D8
  loc_D33C6C: FLdPr Me
  loc_D33C6F: MemLdPr global_72
  loc_D33C72:  = Me.Fields
  loc_D33C77: FLdPr var_1D8
  loc_D33C7A: from_stack_2 = Me.Item(from_stack_1)
  loc_D33C7F: FLdPr var_1EC
  loc_D33C82:  = Me.Value
  loc_D33C87: FLdRfVar var_1FC
  loc_D33C8A: ConcatVar var_20C
  loc_D33C8E: LitVarStr var_21C, ","
  loc_D33C93: ConcatVar var_22C
  loc_D33C97: FLdFPR8 var_F4
  loc_D33C9A: CVarR8
  loc_D33C9E: ConcatVar var_25C
  loc_D33CA2: LitVarStr var_24C, ","
  loc_D33CA7: ConcatVar var_26C
  loc_D33CAB: FLdI2 iPeriodo
  loc_D33CAE: CVarI2 var_28C
  loc_D33CB1: ConcatVar var_27C
  loc_D33CB5: LitVarStr var_2B0, ","
  loc_D33CBA: ConcatVar var_29C
  loc_D33CBE: FLdRfVar var_2C4
  loc_D33CC1: FLdRfVar var_2B4
  loc_D33CC4: LitVarStr var_2D4, "BimeLiqu"
  loc_D33CC9: PopAdLdVar
  loc_D33CCA: FLdRfVar var_2A0
  loc_D33CCD: FLdPr Me
  loc_D33CD0: MemLdPr global_68
  loc_D33CD3:  = Me.Fields
  loc_D33CD8: FLdPr var_2A0
  loc_D33CDB: from_stack_2 = Me.Item(from_stack_1)
  loc_D33CE0: FLdPr var_2B4
  loc_D33CE3:  = Me.Value
  loc_D33CE8: FLdRfVar var_2C4
  loc_D33CEB: ConcatVar var_2E4
  loc_D33CEF: LitVarStr var_314, ","
  loc_D33CF4: ConcatVar var_2F4
  loc_D33CF8: ILdRf var_98
  loc_D33CFB: CVarI4
  loc_D33CFF: ConcatVar var_304
  loc_D33D03: LitVarStr var_36C, ",3,"
  loc_D33D08: ConcatVar var_324
  loc_D33D0C: FLdRfVar var_34C
  loc_D33D0F: FLdRfVar var_33C
  loc_D33D12: LitVarStr var_390, "CodiTili"
  loc_D33D17: PopAdLdVar
  loc_D33D18: FLdRfVar var_328
  loc_D33D1B: FLdPr Me
  loc_D33D1E: MemLdPr global_68
  loc_D33D21:  = Me.Fields
  loc_D33D26: FLdPr var_328
  loc_D33D29: from_stack_2 = Me.Item(from_stack_1)
  loc_D33D2E: FLdPr var_33C
  loc_D33D31:  = Me.Value
  loc_D33D36: FLdRfVar var_34C
  loc_D33D39: ConcatVar var_35C
  loc_D33D3D: LitVarStr var_3C4, ","
  loc_D33D42: ConcatVar var_37C
  loc_D33D46: FLdRfVar var_3A4
  loc_D33D49: FLdRfVar var_394
  loc_D33D4C: LitVarStr var_3E8, "NumeLiqu"
  loc_D33D51: PopAdLdVar
  loc_D33D52: FLdRfVar var_380
  loc_D33D55: FLdPr Me
  loc_D33D58: MemLdPr global_68
  loc_D33D5B:  = Me.Fields
  loc_D33D60: FLdPr var_380
  loc_D33D63: from_stack_2 = Me.Item(from_stack_1)
  loc_D33D68: FLdPr var_394
  loc_D33D6B:  = Me.Value
  loc_D33D70: FLdRfVar var_3A4
  loc_D33D73: ConcatVar var_3B4
  loc_D33D77: LitVarStr var_42C, ","
  loc_D33D7C: ConcatVar var_3D4
  loc_D33D80: FLdI2 iPeriodo
  loc_D33D83: CVarI2 var_450
  loc_D33D86: ConcatVar var_3FC
  loc_D33D8A: LitVarStr var_494, ","
  loc_D33D8F: ConcatVar var_40C
  loc_D33D93: ILdRf var_9C
  loc_D33D96: CVarI4
  loc_D33D9A: ConcatVar var_41C
  loc_D33D9E: LitVarStr var_4D4, ",'"
  loc_D33DA3: ConcatVar var_43C
  loc_D33DA7: LitI4 1
  loc_D33DAC: LitI4 1
  loc_D33DB1: LitVarStr var_534, "yyyy-mm-dd"
  loc_D33DB6: FStVarCopyObj var_464
  loc_D33DB9: FLdRfVar var_464
  loc_D33DBC: FLdRfVar var_A4
  loc_D33DBF: CVarRef
  loc_D33DC4: ImpAdCallI2 Format$(, )
  loc_D33DC9: CVarStr var_474
  loc_D33DCC: ConcatVar var_484
  loc_D33DD0: LitVarStr var_544, "',"
  loc_D33DD5: ConcatVar var_4A4
  loc_D33DD9: FLdRfVar var_3EC
  loc_D33DDC: LitVarStr var_554, "FealLian"
  loc_D33DE1: PopAdLdVar
  loc_D33DE2: FLdRfVar var_3D8
  loc_D33DE5: FLdPr Me
  loc_D33DE8: MemLdPr global_68
  loc_D33DEB:  = Me.Fields
  loc_D33DF0: FLdPr var_3D8
  loc_D33DF3: from_stack_2 = Me.Item(from_stack_1)
  loc_D33DF8: FLdZeroAd var_3EC
  loc_D33DFB: CVarAd
  loc_D33DFF: FLdRfVar var_4E4
  loc_D33E02: ImpAdCallFPR4  = Year()
  loc_D33E07: FLdRfVar var_4E4
  loc_D33E0A: ConcatVar var_514
  loc_D33E0E: LitVarStr var_564, ",'"
  loc_D33E13: ConcatVar var_574
  loc_D33E17: FLdRfVar var_584
  loc_D33E1A: FLdRfVar var_454
  loc_D33E1D: LitVarStr var_594, "CodiConc"
  loc_D33E22: PopAdLdVar
  loc_D33E23: FLdRfVar var_440
  loc_D33E26: FLdPr Me
  loc_D33E29: MemLdPr global_68
  loc_D33E2C:  = Me.Fields
  loc_D33E31: FLdPr var_440
  loc_D33E34: from_stack_2 = Me.Item(from_stack_1)
  loc_D33E39: FLdPr var_454
  loc_D33E3C:  = Me.Value
  loc_D33E41: FLdRfVar var_584
  loc_D33E44: ConcatVar var_5A4
  loc_D33E48: LitVarStr var_5B4, "',23,'','',0,"
  loc_D33E4D: ConcatVar var_5C4
  loc_D33E51: LitI4 0
  loc_D33E56: LitI4 -1
  loc_D33E5B: LitI4 1
  loc_D33E60: LitStr "."
  loc_D33E63: LitStr ","
  loc_D33E66: FLdRfVar var_5D4
  loc_D33E69: CStrVarTmp
  loc_D33E6A: FStStrNoPop var_12C
  loc_D33E6D: ImpAdCallI2 Replace(, , , , , )
  loc_D33E72: CVarStr var_5F4
  loc_D33E75: ConcatVar var_614
  loc_D33E79: LitVarStr var_604, ",'"
  loc_D33E7E: ConcatVar var_624
  loc_D33E82: ImpAdLdI4 MemVar_D9302C
  loc_D33E85: CVarStr var_634
  loc_D33E88: ConcatVar var_644
  loc_D33E8C: LitVarStr var_654, "');"
  loc_D33E91: ConcatVar var_664
  loc_D33E95: CStrVarVal var_130
  loc_D33E99: Call EjecutarRsCls(from_stack_1v)
  loc_D33E9E: FFreeStr var_12C = ""
  loc_D33EA5: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = "": var_440 = "": var_454 = "": var_4F8 = ""
  loc_D33EC6: FFreeVar var_4A4 = "": var_4E4 = "": var_514 = "": var_574 = "": var_584 = "": var_5A4 = "": var_5D4 = "": var_5C4 = "": var_5F4 = "": var_614 = "": var_624 = "": var_644 = "": var_664 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = "": var_40C = "": var_41C = "": var_464 = "": var_43C = "": var_474 = "": var_484 = ""
  loc_D33F1F: Branch loc_D342F2
  loc_D33F22: FLdRfVar var_194
  loc_D33F25: FLdRfVar var_184
  loc_D33F28: LitVarStr var_180, "CodiOfic"
  loc_D33F2D: PopAdLdVar
  loc_D33F2E: FLdRfVar var_170
  loc_D33F31: FLdPr Me
  loc_D33F34: MemLdPr global_72
  loc_D33F37:  = Me.Fields
  loc_D33F3C: FLdPr var_170
  loc_D33F3F: from_stack_2 = Me.Item(from_stack_1)
  loc_D33F44: FLdPr var_184
  loc_D33F47:  = Me.Value
  loc_D33F4C: FLdRfVar var_1B4
  loc_D33F4F: FLdRfVar var_1EC
  loc_D33F52: LitVarStr var_1A4, "CuenCtct"
  loc_D33F57: PopAdLdVar
  loc_D33F58: FLdRfVar var_1D8
  loc_D33F5B: FLdPr Me
  loc_D33F5E: MemLdPr global_72
  loc_D33F61:  = Me.Fields
  loc_D33F66: FLdPr var_1D8
  loc_D33F69: from_stack_2 = Me.Item(from_stack_1)
  loc_D33F6E: FLdPr var_1EC
  loc_D33F71:  = Me.Value
  loc_D33F76: FLdRfVar var_1C4
  loc_D33F79: FLdRfVar var_2B4
  loc_D33F7C: LitVarStr var_1E8, "NumeCred"
  loc_D33F81: PopAdLdVar
  loc_D33F82: FLdRfVar var_2A0
  loc_D33F85: FLdPr Me
  loc_D33F88: MemLdPr global_72
  loc_D33F8B:  = Me.Fields
  loc_D33F90: FLdPr var_2A0
  loc_D33F93: from_stack_2 = Me.Item(from_stack_1)
  loc_D33F98: FLdPr var_2B4
  loc_D33F9B:  = Me.Value
  loc_D33FA0: FLdRfVar var_16A
  loc_D33FA3: FLdRfVar var_1C4
  loc_D33FA6: CI4Var
  loc_D33FA8: FLdRfVar var_1B4
  loc_D33FAB: CStrVarTmp
  loc_D33FAC: FStStrNoPop var_12C
  loc_D33FAF: FLdRfVar var_194
  loc_D33FB2: CUI1Var
  loc_D33FB4: FLdRfVar GeneracionCuentaCorriente
  loc_D33FB7: NewIfNullPr clscreditos
  loc_D33FBA: from_stack_4v = clscreditos.BuscaMoviCred(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D33FBF: FLdI2 var_16A
  loc_D33FC2: CR8I2
  loc_D33FC3: FStFPR8 var_F4
  loc_D33FC6: FFree1Str var_12C
  loc_D33FC9: FFreeAd var_170 = "": var_1D8 = "": var_2A0 = "": var_184 = "": var_1EC = ""
  loc_D33FD8: FFreeVar var_194 = "": var_1B4 = ""
  loc_D33FE1: FLdFPR8 var_F4
  loc_D33FE4: LitI2_Byte 1
  loc_D33FE6: CR8I2
  loc_D33FE7: AddR8
  loc_D33FE8: FStFPR8 var_F4
  loc_D33FEB: LitStr " INSERT INTO creditos (CodiOfic,CuenCtct,NumeCred,MoviCred,PeriCtct,BimeCtct,NumeCtct,MoviCtct,CodiTili,NumeLiqu,PeriBole,NumeBole,FealCtct,PeriInfo,CodiConc,CodiTimo,ExpeCred,DetaCred,DebeCred,CredCred,CodiUsua) "
  loc_D33FEE: LitStr " VALUES (7,'"
  loc_D33FF1: ConcatStr
  loc_D33FF2: CVarStr var_1B4
  loc_D33FF5: FLdRfVar var_194
  loc_D33FF8: FLdRfVar var_184
  loc_D33FFB: LitVarStr var_180, "CodiCome"
  loc_D34000: PopAdLdVar
  loc_D34001: FLdRfVar var_170
  loc_D34004: FLdPr Me
  loc_D34007: MemLdPr global_68
  loc_D3400A:  = Me.Fields
  loc_D3400F: FLdPr var_170
  loc_D34012: from_stack_2 = Me.Item(from_stack_1)
  loc_D34017: FLdPr var_184
  loc_D3401A:  = Me.Value
  loc_D3401F: FLdRfVar var_194
  loc_D34022: ConcatVar var_1C4
  loc_D34026: LitVarStr var_1A4, "',"
  loc_D3402B: ConcatVar var_1D4
  loc_D3402F: FLdRfVar var_1FC
  loc_D34032: FLdRfVar var_1EC
  loc_D34035: LitVarStr var_1E8, "NumeCred"
  loc_D3403A: PopAdLdVar
  loc_D3403B: FLdRfVar var_1D8
  loc_D3403E: FLdPr Me
  loc_D34041: MemLdPr global_72
  loc_D34044:  = Me.Fields
  loc_D34049: FLdPr var_1D8
  loc_D3404C: from_stack_2 = Me.Item(from_stack_1)
  loc_D34051: FLdPr var_1EC
  loc_D34054:  = Me.Value
  loc_D34059: FLdRfVar var_1FC
  loc_D3405C: ConcatVar var_20C
  loc_D34060: LitVarStr var_21C, ","
  loc_D34065: ConcatVar var_22C
  loc_D34069: FLdFPR8 var_F4
  loc_D3406C: CVarR8
  loc_D34070: ConcatVar var_25C
  loc_D34074: LitVarStr var_24C, ","
  loc_D34079: ConcatVar var_26C
  loc_D3407D: FLdI2 iPeriodo
  loc_D34080: CVarI2 var_28C
  loc_D34083: ConcatVar var_27C
  loc_D34087: LitVarStr var_2B0, ","
  loc_D3408C: ConcatVar var_29C
  loc_D34090: FLdRfVar var_2C4
  loc_D34093: FLdRfVar var_2B4
  loc_D34096: LitVarStr var_2D4, "BimeLiqu"
  loc_D3409B: PopAdLdVar
  loc_D3409C: FLdRfVar var_2A0
  loc_D3409F: FLdPr Me
  loc_D340A2: MemLdPr global_68
  loc_D340A5:  = Me.Fields
  loc_D340AA: FLdPr var_2A0
  loc_D340AD: from_stack_2 = Me.Item(from_stack_1)
  loc_D340B2: FLdPr var_2B4
  loc_D340B5:  = Me.Value
  loc_D340BA: FLdRfVar var_2C4
  loc_D340BD: ConcatVar var_2E4
  loc_D340C1: LitVarStr var_314, ","
  loc_D340C6: ConcatVar var_2F4
  loc_D340CA: ILdRf var_98
  loc_D340CD: CVarI4
  loc_D340D1: ConcatVar var_304
  loc_D340D5: LitVarStr var_36C, ",3,"
  loc_D340DA: ConcatVar var_324
  loc_D340DE: FLdRfVar var_34C
  loc_D340E1: FLdRfVar var_33C
  loc_D340E4: LitVarStr var_390, "CodiTili"
  loc_D340E9: PopAdLdVar
  loc_D340EA: FLdRfVar var_328
  loc_D340ED: FLdPr Me
  loc_D340F0: MemLdPr global_68
  loc_D340F3:  = Me.Fields
  loc_D340F8: FLdPr var_328
  loc_D340FB: from_stack_2 = Me.Item(from_stack_1)
  loc_D34100: FLdPr var_33C
  loc_D34103:  = Me.Value
  loc_D34108: FLdRfVar var_34C
  loc_D3410B: ConcatVar var_35C
  loc_D3410F: LitVarStr var_3C4, ","
  loc_D34114: ConcatVar var_37C
  loc_D34118: FLdRfVar var_3A4
  loc_D3411B: FLdRfVar var_394
  loc_D3411E: LitVarStr var_3E8, "NumeLiqu"
  loc_D34123: PopAdLdVar
  loc_D34124: FLdRfVar var_380
  loc_D34127: FLdPr Me
  loc_D3412A: MemLdPr global_68
  loc_D3412D:  = Me.Fields
  loc_D34132: FLdPr var_380
  loc_D34135: from_stack_2 = Me.Item(from_stack_1)
  loc_D3413A: FLdPr var_394
  loc_D3413D:  = Me.Value
  loc_D34142: FLdRfVar var_3A4
  loc_D34145: ConcatVar var_3B4
  loc_D34149: LitVarStr var_42C, ","
  loc_D3414E: ConcatVar var_3D4
  loc_D34152: FLdI2 iPeriodo
  loc_D34155: CVarI2 var_450
  loc_D34158: ConcatVar var_3FC
  loc_D3415C: LitVarStr var_494, ","
  loc_D34161: ConcatVar var_40C
  loc_D34165: ILdRf var_9C
  loc_D34168: CVarI4
  loc_D3416C: ConcatVar var_41C
  loc_D34170: LitVarStr var_4D4, ",'"
  loc_D34175: ConcatVar var_43C
  loc_D34179: LitI4 1
  loc_D3417E: LitI4 1
  loc_D34183: LitVarStr var_534, "yyyy-mm-dd"
  loc_D34188: FStVarCopyObj var_464
  loc_D3418B: FLdRfVar var_464
  loc_D3418E: FLdRfVar var_A4
  loc_D34191: CVarRef
  loc_D34196: ImpAdCallI2 Format$(, )
  loc_D3419B: CVarStr var_474
  loc_D3419E: ConcatVar var_484
  loc_D341A2: LitVarStr var_544, "',"
  loc_D341A7: ConcatVar var_4A4
  loc_D341AB: FLdRfVar var_3EC
  loc_D341AE: LitVarStr var_554, "FealLian"
  loc_D341B3: PopAdLdVar
  loc_D341B4: FLdRfVar var_3D8
  loc_D341B7: FLdPr Me
  loc_D341BA: MemLdPr global_68
  loc_D341BD:  = Me.Fields
  loc_D341C2: FLdPr var_3D8
  loc_D341C5: from_stack_2 = Me.Item(from_stack_1)
  loc_D341CA: FLdZeroAd var_3EC
  loc_D341CD: CVarAd
  loc_D341D1: FLdRfVar var_4E4
  loc_D341D4: ImpAdCallFPR4  = Year()
  loc_D341D9: FLdRfVar var_4E4
  loc_D341DC: ConcatVar var_514
  loc_D341E0: LitVarStr var_564, ",'"
  loc_D341E5: ConcatVar var_574
  loc_D341E9: FLdRfVar var_584
  loc_D341EC: FLdRfVar var_454
  loc_D341EF: LitVarStr var_594, "CodiConc"
  loc_D341F4: PopAdLdVar
  loc_D341F5: FLdRfVar var_440
  loc_D341F8: FLdPr Me
  loc_D341FB: MemLdPr global_68
  loc_D341FE:  = Me.Fields
  loc_D34203: FLdPr var_440
  loc_D34206: from_stack_2 = Me.Item(from_stack_1)
  loc_D3420B: FLdPr var_454
  loc_D3420E:  = Me.Value
  loc_D34213: FLdRfVar var_584
  loc_D34216: ConcatVar var_5A4
  loc_D3421A: LitVarStr var_5B4, "',23,'','',0,"
  loc_D3421F: ConcatVar var_5C4
  loc_D34223: LitI4 0
  loc_D34228: LitI4 -1
  loc_D3422D: LitI4 1
  loc_D34232: LitStr "."
  loc_D34235: LitStr ","
  loc_D34238: FLdFPR8 var_EC
  loc_D3423B: CStrR8
  loc_D3423D: FStStrNoPop var_12C
  loc_D34240: ImpAdCallI2 Replace(, , , , , )
  loc_D34245: CVarStr var_5D4
  loc_D34248: ConcatVar var_5F4
  loc_D3424C: LitVarStr var_5E4, ",'"
  loc_D34251: ConcatVar var_614
  loc_D34255: ImpAdLdI4 MemVar_D9302C
  loc_D34258: CVarStr var_604
  loc_D3425B: ConcatVar var_624
  loc_D3425F: LitVarStr var_634, "');"
  loc_D34264: ConcatVar var_644
  loc_D34268: CStrVarVal var_130
  loc_D3426C: Call EjecutarRsCls(from_stack_1v)
  loc_D34271: FFreeStr var_12C = ""
  loc_D34278: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = "": var_440 = ""
  loc_D34295: FFreeVar var_4A4 = "": var_4E4 = "": var_514 = "": var_574 = "": var_584 = "": var_5A4 = "": var_5C4 = "": var_5D4 = "": var_5F4 = "": var_614 = "": var_624 = "": var_644 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = "": var_40C = "": var_41C = "": var_464 = "": var_43C = "": var_474 = "": var_484 = ""
  loc_D342EC: LitI2_Byte 0
  loc_D342EE: CR8I2
  loc_D342EF: FStFPR8 var_EC
  loc_D342F2: FLdPr Me
  loc_D342F5: MemLdPr global_72
  loc_D342F8: Me.MoveNext
  loc_D342FD: Branch loc_D33A2E
  loc_D34300: LitVarStr var_1A4, " UPDATE recabole SET ActuRebo = 'Si' WHERE PeriLiqu = "
  loc_D34305: FLdRfVar var_194
  loc_D34308: FLdRfVar var_184
  loc_D3430B: LitVarStr var_180, "PeriLiqu"
  loc_D34310: PopAdLdVar
  loc_D34311: FLdRfVar var_170
  loc_D34314: FLdPr Me
  loc_D34317: MemLdPr global_68
  loc_D3431A:  = Me.Fields
  loc_D3431F: FLdPr var_170
  loc_D34322: from_stack_2 = Me.Item(from_stack_1)
  loc_D34327: FLdPr var_184
  loc_D3432A:  = Me.Value
  loc_D3432F: FLdRfVar var_194
  loc_D34332: ConcatVar var_1B4
  loc_D34336: LitVarStr var_1E8, " AND BimeLiqu = "
  loc_D3433B: ConcatVar var_1C4
  loc_D3433F: FLdRfVar var_1D4
  loc_D34342: FLdRfVar var_1EC
  loc_D34345: LitVarStr var_21C, "BimeLiqu"
  loc_D3434A: PopAdLdVar
  loc_D3434B: FLdRfVar var_1D8
  loc_D3434E: FLdPr Me
  loc_D34351: MemLdPr global_68
  loc_D34354:  = Me.Fields
  loc_D34359: FLdPr var_1D8
  loc_D3435C: from_stack_2 = Me.Item(from_stack_1)
  loc_D34361: FLdPr var_1EC
  loc_D34364:  = Me.Value
  loc_D34369: FLdRfVar var_1D4
  loc_D3436C: ConcatVar var_1FC
  loc_D34370: LitVarStr var_23C, " AND CodiTili = "
  loc_D34375: ConcatVar var_20C
  loc_D34379: FLdRfVar var_22C
  loc_D3437C: FLdRfVar var_2B4
  loc_D3437F: LitVarStr var_24C, "CodiTili"
  loc_D34384: PopAdLdVar
  loc_D34385: FLdRfVar var_2A0
  loc_D34388: FLdPr Me
  loc_D3438B: MemLdPr global_68
  loc_D3438E:  = Me.Fields
  loc_D34393: FLdPr var_2A0
  loc_D34396: from_stack_2 = Me.Item(from_stack_1)
  loc_D3439B: FLdPr var_2B4
  loc_D3439E:  = Me.Value
  loc_D343A3: FLdRfVar var_22C
  loc_D343A6: ConcatVar var_25C
  loc_D343AA: LitVarStr var_28C, " AND NumeLiqu = "
  loc_D343AF: ConcatVar var_26C
  loc_D343B3: FLdRfVar var_27C
  loc_D343B6: FLdRfVar var_33C
  loc_D343B9: LitVarStr var_2B0, "NumeLiqu"
  loc_D343BE: PopAdLdVar
  loc_D343BF: FLdRfVar var_328
  loc_D343C2: FLdPr Me
  loc_D343C5: MemLdPr global_68
  loc_D343C8:  = Me.Fields
  loc_D343CD: FLdPr var_328
  loc_D343D0: from_stack_2 = Me.Item(from_stack_1)
  loc_D343D5: FLdPr var_33C
  loc_D343D8:  = Me.Value
  loc_D343DD: FLdRfVar var_27C
  loc_D343E0: ConcatVar var_29C
  loc_D343E4: LitVarStr var_2D4, " AND CodiOfic = 7 AND CuenCtct = '"
  loc_D343E9: ConcatVar var_2C4
  loc_D343ED: FLdRfVar var_2E4
  loc_D343F0: FLdRfVar var_394
  loc_D343F3: LitVarStr var_314, "CodiCome"
  loc_D343F8: PopAdLdVar
  loc_D343F9: FLdRfVar var_380
  loc_D343FC: FLdPr Me
  loc_D343FF: MemLdPr global_68
  loc_D34402:  = Me.Fields
  loc_D34407: FLdPr var_380
  loc_D3440A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3440F: FLdPr var_394
  loc_D34412:  = Me.Value
  loc_D34417: FLdRfVar var_2E4
  loc_D3441A: ConcatVar var_2F4
  loc_D3441E: LitVarStr var_338, "';"
  loc_D34423: ConcatVar var_304
  loc_D34427: CStrVarVal var_12C
  loc_D3442B: Call EjecutarRsCls(from_stack_1v)
  loc_D34430: FFree1Str var_12C
  loc_D34433: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = ""
  loc_D3444A: FFreeVar var_194 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = ""
  loc_D3446B: FLdRfVar var_194
  loc_D3446E: FLdRfVar var_184
  loc_D34471: LitVarStr var_180, "TipoVenc"
  loc_D34476: PopAdLdVar
  loc_D34477: FLdRfVar var_170
  loc_D3447A: FLdPr Me
  loc_D3447D: MemLdPr global_68
  loc_D34480:  = Me.Fields
  loc_D34485: FLdPr var_170
  loc_D34488: from_stack_2 = Me.Item(from_stack_1)
  loc_D3448D: FLdPr var_184
  loc_D34490:  = Me.Value
  loc_D34495: FLdRfVar var_194
  loc_D34498: FnCIntVar
  loc_D3449A: LitI2_Byte 2
  loc_D3449C: EqI2
  loc_D3449D: FFreeAd var_170 = ""
  loc_D344A4: FFree1Var var_194 = ""
  loc_D344A7: BranchF loc_D357C5
  loc_D344AA: FLdRfVar var_194
  loc_D344AD: FLdRfVar var_184
  loc_D344B0: LitVarStr var_180, "TotaBole"
  loc_D344B5: PopAdLdVar
  loc_D344B6: FLdRfVar var_170
  loc_D344B9: FLdPr Me
  loc_D344BC: MemLdPr global_64
  loc_D344BF:  = Me.Fields
  loc_D344C4: FLdPr var_170
  loc_D344C7: from_stack_2 = Me.Item(from_stack_1)
  loc_D344CC: FLdPr var_184
  loc_D344CF:  = Me.Value
  loc_D344D4: FLdRfVar var_194
  loc_D344D7: LitVarI2 var_1A4, 0
  loc_D344DC: HardType
  loc_D344DD: GtVarBool
  loc_D344DF: FFreeAd var_170 = ""
  loc_D344E6: FFree1Var var_194 = ""
  loc_D344E9: BranchF loc_D357B9
  loc_D344EC: FLdRfVar var_1B4
  loc_D344EF: FLdRfVar var_184
  loc_D344F2: LitVarStr var_180, "CodiConc"
  loc_D344F7: PopAdLdVar
  loc_D344F8: FLdRfVar var_170
  loc_D344FB: FLdPr Me
  loc_D344FE: MemLdPr global_68
  loc_D34501:  = Me.Fields
  loc_D34506: FLdPr var_170
  loc_D34509: from_stack_2 = Me.Item(from_stack_1)
  loc_D3450E: FLdPr var_184
  loc_D34511:  = Me.Value
  loc_D34516: FLdRfVar var_1B4
  loc_D34519: FLdRfVar var_194
  loc_D3451C: FLdRfVar var_1EC
  loc_D3451F: LitVarStr var_1A4, "CodiTili"
  loc_D34524: PopAdLdVar
  loc_D34525: FLdRfVar var_1D8
  loc_D34528: FLdPr Me
  loc_D3452B: MemLdPr global_68
  loc_D3452E:  = Me.Fields
  loc_D34533: FLdPr var_1D8
  loc_D34536: from_stack_2 = Me.Item(from_stack_1)
  loc_D3453B: FLdPr var_1EC
  loc_D3453E:  = Me.Value
  loc_D34543: FLdRfVar var_194
  loc_D34546: CUI1Var
  loc_D34548: LitI2_Byte 2
  loc_D3454A: CUI1I2
  loc_D3454C: ImpAdCallI2  = Proc_270_71_A8F7D0()
  loc_D34551: CVarStr var_1C4
  loc_D34554: HardType
  loc_D34555: EqVarBool
  loc_D34557: FFreeAd var_170 = "": var_1D8 = "": var_1EC = ""
  loc_D34562: FFreeVar var_194 = "": var_1B4 = ""
  loc_D3456B: BranchF loc_D34B43
  loc_D3456E: LitStr "SELECT PeriCtct, BimeCtct, NumeCtct, CapiDebo, TotaDebo FROM detabole"
  loc_D34571: LitStr " WHERE PeriBole = "
  loc_D34574: ConcatStr
  loc_D34575: CVarStr var_1B4
  loc_D34578: FLdRfVar var_194
  loc_D3457B: FLdRfVar var_184
  loc_D3457E: LitVarStr var_180, "PeriLiqu"
  loc_D34583: PopAdLdVar
  loc_D34584: FLdRfVar var_170
  loc_D34587: FLdPr Me
  loc_D3458A: MemLdPr global_68
  loc_D3458D:  = Me.Fields
  loc_D34592: FLdPr var_170
  loc_D34595: from_stack_2 = Me.Item(from_stack_1)
  loc_D3459A: FLdPr var_184
  loc_D3459D:  = Me.Value
  loc_D345A2: FLdRfVar var_194
  loc_D345A5: ConcatVar var_1C4
  loc_D345A9: LitVarStr var_1A4, " AND CodiOfic = 7"
  loc_D345AE: ConcatVar var_1D4
  loc_D345B2: LitVarStr var_1E8, " AND CuenCtct = '"
  loc_D345B7: ConcatVar var_1FC
  loc_D345BB: FLdRfVar var_20C
  loc_D345BE: FLdRfVar var_1EC
  loc_D345C1: LitVarStr var_21C, "CodiCome"
  loc_D345C6: PopAdLdVar
  loc_D345C7: FLdRfVar var_1D8
  loc_D345CA: FLdPr Me
  loc_D345CD: MemLdPr global_68
  loc_D345D0:  = Me.Fields
  loc_D345D5: FLdPr var_1D8
  loc_D345D8: from_stack_2 = Me.Item(from_stack_1)
  loc_D345DD: FLdPr var_1EC
  loc_D345E0:  = Me.Value
  loc_D345E5: FLdRfVar var_20C
  loc_D345E8: ConcatVar var_22C
  loc_D345EC: LitVarStr var_23C, "'"
  loc_D345F1: ConcatVar var_25C
  loc_D345F5: LitVarStr var_24C, " AND PeriCtct = "
  loc_D345FA: ConcatVar var_26C
  loc_D345FE: FLdRfVar var_27C
  loc_D34601: FLdRfVar var_2B4
  loc_D34604: LitVarStr var_28C, "PeriLiqu"
  loc_D34609: PopAdLdVar
  loc_D3460A: FLdRfVar var_2A0
  loc_D3460D: FLdPr Me
  loc_D34610: MemLdPr global_68
  loc_D34613:  = Me.Fields
  loc_D34618: FLdPr var_2A0
  loc_D3461B: from_stack_2 = Me.Item(from_stack_1)
  loc_D34620: FLdPr var_2B4
  loc_D34623:  = Me.Value
  loc_D34628: FLdRfVar var_27C
  loc_D3462B: ConcatVar var_29C
  loc_D3462F: LitVarStr var_2B0, " AND CodiConc = '"
  loc_D34634: ConcatVar var_2C4
  loc_D34638: FLdRfVar var_2E4
  loc_D3463B: FLdRfVar var_33C
  loc_D3463E: LitVarStr var_2D4, "CodiConc"
  loc_D34643: PopAdLdVar
  loc_D34644: FLdRfVar var_328
  loc_D34647: FLdPr Me
  loc_D3464A: MemLdPr global_68
  loc_D3464D:  = Me.Fields
  loc_D34652: FLdPr var_328
  loc_D34655: from_stack_2 = Me.Item(from_stack_1)
  loc_D3465A: FLdPr var_33C
  loc_D3465D:  = Me.Value
  loc_D34662: FLdRfVar var_2E4
  loc_D34665: ConcatVar var_2F4
  loc_D34669: LitVarStr var_314, "'"
  loc_D3466E: ConcatVar var_304
  loc_D34672: LitVarStr var_338, " AND TipoCtct = 'Bimestral'"
  loc_D34677: ConcatVar var_324
  loc_D3467B: LitVarStr var_36C, " AND CodiTili = "
  loc_D34680: ConcatVar var_34C
  loc_D34684: FLdRfVar var_35C
  loc_D34687: FLdRfVar var_394
  loc_D3468A: LitVarStr var_390, "CodiTili"
  loc_D3468F: PopAdLdVar
  loc_D34690: FLdRfVar var_380
  loc_D34693: FLdPr Me
  loc_D34696: MemLdPr global_68
  loc_D34699:  = Me.Fields
  loc_D3469E: FLdPr var_380
  loc_D346A1: from_stack_2 = Me.Item(from_stack_1)
  loc_D346A6: FLdPr var_394
  loc_D346A9:  = Me.Value
  loc_D346AE: FLdRfVar var_35C
  loc_D346B1: ConcatVar var_37C
  loc_D346B5: LitVarStr var_3C4, " AND NumeLiqu = "
  loc_D346BA: ConcatVar var_3A4
  loc_D346BE: FLdRfVar var_3B4
  loc_D346C1: FLdRfVar var_3EC
  loc_D346C4: LitVarStr var_3E8, "NumeLiqu"
  loc_D346C9: PopAdLdVar
  loc_D346CA: FLdRfVar var_3D8
  loc_D346CD: FLdPr Me
  loc_D346D0: MemLdPr global_68
  loc_D346D3:  = Me.Fields
  loc_D346D8: FLdPr var_3D8
  loc_D346DB: from_stack_2 = Me.Item(from_stack_1)
  loc_D346E0: FLdPr var_3EC
  loc_D346E3:  = Me.Value
  loc_D346E8: FLdRfVar var_3B4
  loc_D346EB: ConcatVar var_3D4
  loc_D346EF: LitVarStr var_42C, " ORDER BY PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D346F4: ConcatVar var_3FC
  loc_D346F8: CStrVarVal var_12C
  loc_D346FC: Call EjecutarRsCls4(from_stack_1v)
  loc_D34701: FFree1Str var_12C
  loc_D34704: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = ""
  loc_D3471F: FFreeVar var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = ""
  loc_D34750: FLdRfVar var_168
  loc_D34753: FLdPr Me
  loc_D34756: MemLdPr global_72
  loc_D34759:  = Me.RecordCount
  loc_D3475E: ILdRf var_168
  loc_D34761: LitI4 0
  loc_D34766: GtI4
  loc_D34767: BranchF loc_D34B40
  loc_D3476A: FLdFPR8 var_10C
  loc_D3476D: CVarR8
  loc_D34771: FLdRfVar var_194
  loc_D34774: FLdRfVar var_184
  loc_D34777: LitVarStr var_180, "TotaDebo"
  loc_D3477C: PopAdLdVar
  loc_D3477D: FLdRfVar var_170
  loc_D34780: FLdPr Me
  loc_D34783: MemLdPr global_72
  loc_D34786:  = Me.Fields
  loc_D3478B: FLdPr var_170
  loc_D3478E: from_stack_2 = Me.Item(from_stack_1)
  loc_D34793: FLdPr var_184
  loc_D34796:  = Me.Value
  loc_D3479B: FLdRfVar var_194
  loc_D3479E: AddVar var_1B4
  loc_D347A2: CR4Var
  loc_D347A3: FStFPR8 var_10C
  loc_D347A6: FFreeAd var_170 = ""
  loc_D347AD: FFreeVar var_194 = ""
  loc_D347B4: FLdRfVar var_4A4
  loc_D347B7: FLdRfVar var_6EC
  loc_D347BA: LitVarStr var_4B4, "CapiDebo"
  loc_D347BF: PopAdLdVar
  loc_D347C0: FLdRfVar var_6E8
  loc_D347C3: FLdPr Me
  loc_D347C6: MemLdPr global_72
  loc_D347C9:  = Me.Fields
  loc_D347CE: FLdPr var_6E8
  loc_D347D1: from_stack_2 = Me.Item(from_stack_1)
  loc_D347D6: FLdPr var_6EC
  loc_D347D9:  = Me.Value
  loc_D347DE: FLdRfVar var_574
  loc_D347E1: FLdRfVar var_6F4
  loc_D347E4: LitVarStr var_524, "TotaDebo"
  loc_D347E9: PopAdLdVar
  loc_D347EA: FLdRfVar var_6F0
  loc_D347ED: FLdPr Me
  loc_D347F0: MemLdPr global_72
  loc_D347F3:  = Me.Fields
  loc_D347F8: FLdPr var_6F0
  loc_D347FB: from_stack_2 = Me.Item(from_stack_1)
  loc_D34800: FLdPr var_6F4
  loc_D34803:  = Me.Value
  loc_D34808: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiTili, NumeLiqu, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo) "
  loc_D3480B: LitStr " VALUES ("
  loc_D3480E: ConcatStr
  loc_D3480F: FStStrNoPop var_12C
  loc_D34812: FLdI2 iPeriodo
  loc_D34815: CStrUI1
  loc_D34817: FStStrNoPop var_130
  loc_D3481A: ConcatStr
  loc_D3481B: FStStrNoPop var_134
  loc_D3481E: LitStr ","
  loc_D34821: ConcatStr
  loc_D34822: FStStrNoPop var_138
  loc_D34825: ILdRf var_9C
  loc_D34828: CStrI4
  loc_D3482A: FStStrNoPop var_13C
  loc_D3482D: ConcatStr
  loc_D3482E: FStStrNoPop var_140
  loc_D34831: LitStr ","
  loc_D34834: ConcatStr
  loc_D34835: CVarStr var_1B4
  loc_D34838: FLdRfVar var_194
  loc_D3483B: FLdRfVar var_184
  loc_D3483E: LitVarStr var_180, "PeriCtct"
  loc_D34843: PopAdLdVar
  loc_D34844: FLdRfVar var_170
  loc_D34847: FLdPr Me
  loc_D3484A: MemLdPr global_72
  loc_D3484D:  = Me.Fields
  loc_D34852: FLdPr var_170
  loc_D34855: from_stack_2 = Me.Item(from_stack_1)
  loc_D3485A: FLdPr var_184
  loc_D3485D:  = Me.Value
  loc_D34862: FLdRfVar var_194
  loc_D34865: ConcatVar var_1C4
  loc_D34869: LitVarStr var_1A4, ","
  loc_D3486E: ConcatVar var_1D4
  loc_D34872: FLdRfVar var_1FC
  loc_D34875: FLdRfVar var_1EC
  loc_D34878: LitVarStr var_1E8, "BimeCtct"
  loc_D3487D: PopAdLdVar
  loc_D3487E: FLdRfVar var_1D8
  loc_D34881: FLdPr Me
  loc_D34884: MemLdPr global_72
  loc_D34887:  = Me.Fields
  loc_D3488C: FLdPr var_1D8
  loc_D3488F: from_stack_2 = Me.Item(from_stack_1)
  loc_D34894: FLdPr var_1EC
  loc_D34897:  = Me.Value
  loc_D3489C: FLdRfVar var_1FC
  loc_D3489F: ConcatVar var_20C
  loc_D348A3: LitVarStr var_21C, ","
  loc_D348A8: ConcatVar var_22C
  loc_D348AC: FLdRfVar var_25C
  loc_D348AF: FLdRfVar var_2B4
  loc_D348B2: LitVarStr var_23C, "NumeCtct"
  loc_D348B7: PopAdLdVar
  loc_D348B8: FLdRfVar var_2A0
  loc_D348BB: FLdPr Me
  loc_D348BE: MemLdPr global_72
  loc_D348C1:  = Me.Fields
  loc_D348C6: FLdPr var_2A0
  loc_D348C9: from_stack_2 = Me.Item(from_stack_1)
  loc_D348CE: FLdPr var_2B4
  loc_D348D1:  = Me.Value
  loc_D348D6: FLdRfVar var_25C
  loc_D348D9: ConcatVar var_26C
  loc_D348DD: LitVarStr var_24C, ",1,1,"
  loc_D348E2: ConcatVar var_27C
  loc_D348E6: FLdRfVar var_29C
  loc_D348E9: FLdRfVar var_33C
  loc_D348EC: LitVarStr var_28C, "CodiTili"
  loc_D348F1: PopAdLdVar
  loc_D348F2: FLdRfVar var_328
  loc_D348F5: FLdPr Me
  loc_D348F8: MemLdPr global_68
  loc_D348FB:  = Me.Fields
  loc_D34900: FLdPr var_328
  loc_D34903: from_stack_2 = Me.Item(from_stack_1)
  loc_D34908: FLdPr var_33C
  loc_D3490B:  = Me.Value
  loc_D34910: FLdRfVar var_29C
  loc_D34913: ConcatVar var_2C4
  loc_D34917: LitVarStr var_2B0, ","
  loc_D3491C: ConcatVar var_2E4
  loc_D34920: FLdRfVar var_2F4
  loc_D34923: FLdRfVar var_394
  loc_D34926: LitVarStr var_2D4, "NumeLiqu"
  loc_D3492B: PopAdLdVar
  loc_D3492C: FLdRfVar var_380
  loc_D3492F: FLdPr Me
  loc_D34932: MemLdPr global_68
  loc_D34935:  = Me.Fields
  loc_D3493A: FLdPr var_380
  loc_D3493D: from_stack_2 = Me.Item(from_stack_1)
  loc_D34942: FLdPr var_394
  loc_D34945:  = Me.Value
  loc_D3494A: FLdRfVar var_2F4
  loc_D3494D: ConcatVar var_304
  loc_D34951: LitVarStr var_314, ",7,'"
  loc_D34956: ConcatVar var_324
  loc_D3495A: FLdRfVar var_34C
  loc_D3495D: FLdRfVar var_3EC
  loc_D34960: LitVarStr var_338, "CodiCome"
  loc_D34965: PopAdLdVar
  loc_D34966: FLdRfVar var_3D8
  loc_D34969: FLdPr Me
  loc_D3496C: MemLdPr global_68
  loc_D3496F:  = Me.Fields
  loc_D34974: FLdPr var_3D8
  loc_D34977: from_stack_2 = Me.Item(from_stack_1)
  loc_D3497C: FLdPr var_3EC
  loc_D3497F:  = Me.Value
  loc_D34984: FLdRfVar var_34C
  loc_D34987: ConcatVar var_35C
  loc_D3498B: LitVarStr var_36C, "','Anual',0,0,0,"
  loc_D34990: ConcatVar var_37C
  loc_D34994: FLdRfVar var_3A4
  loc_D34997: FLdRfVar var_454
  loc_D3499A: LitVarStr var_390, "TiafConc"
  loc_D3499F: PopAdLdVar
  loc_D349A0: FLdRfVar var_440
  loc_D349A3: FLdPr Me
  loc_D349A6: MemLdPr global_68
  loc_D349A9:  = Me.Fields
  loc_D349AE: FLdPr var_440
  loc_D349B1: from_stack_2 = Me.Item(from_stack_1)
  loc_D349B6: FLdPr var_454
  loc_D349B9:  = Me.Value
  loc_D349BE: FLdRfVar var_3A4
  loc_D349C1: ConcatVar var_3B4
  loc_D349C5: LitVarStr var_3C4, ","
  loc_D349CA: ConcatVar var_3D4
  loc_D349CE: FLdRfVar var_4FC
  loc_D349D1: LitVarStr var_3E8, "FealLian"
  loc_D349D6: PopAdLdVar
  loc_D349D7: FLdRfVar var_4F8
  loc_D349DA: FLdPr Me
  loc_D349DD: MemLdPr global_68
  loc_D349E0:  = Me.Fields
  loc_D349E5: FLdPr var_4F8
  loc_D349E8: from_stack_2 = Me.Item(from_stack_1)
  loc_D349ED: FLdZeroAd var_4FC
  loc_D349F0: CVarAd
  loc_D349F4: FLdRfVar var_40C
  loc_D349F7: ImpAdCallFPR4  = Year()
  loc_D349FC: FLdRfVar var_40C
  loc_D349FF: ConcatVar var_41C
  loc_D34A03: LitVarStr var_42C, ",'"
  loc_D34A08: ConcatVar var_43C
  loc_D34A0C: FLdRfVar var_464
  loc_D34A0F: FLdRfVar var_504
  loc_D34A12: LitVarStr var_450, "CodiConc"
  loc_D34A17: PopAdLdVar
  loc_D34A18: FLdRfVar var_500
  loc_D34A1B: FLdPr Me
  loc_D34A1E: MemLdPr global_68
  loc_D34A21:  = Me.Fields
  loc_D34A26: FLdPr var_500
  loc_D34A29: from_stack_2 = Me.Item(from_stack_1)
  loc_D34A2E: FLdPr var_504
  loc_D34A31:  = Me.Value
  loc_D34A36: FLdRfVar var_464
  loc_D34A39: ConcatVar var_474
  loc_D34A3D: LitVarStr var_494, "',"
  loc_D34A42: ConcatVar var_484
  loc_D34A46: LitI4 0
  loc_D34A4B: LitI4 -1
  loc_D34A50: LitI4 1
  loc_D34A55: LitStr "."
  loc_D34A58: LitStr ","
  loc_D34A5B: FLdRfVar var_4A4
  loc_D34A5E: CStrVarTmp
  loc_D34A5F: FStStrNoPop var_144
  loc_D34A62: ImpAdCallI2 Replace(, , , , , )
  loc_D34A67: CVarStr var_4C4
  loc_D34A6A: ConcatVar var_4E4
  loc_D34A6E: LitVarStr var_4D4, ",0,0,0,0,0,0,"
  loc_D34A73: ConcatVar var_514
  loc_D34A77: LitI4 0
  loc_D34A7C: LitI4 -1
  loc_D34A81: LitI4 1
  loc_D34A86: LitStr "."
  loc_D34A89: LitStr ","
  loc_D34A8C: FLdRfVar var_574
  loc_D34A8F: CStrVarTmp
  loc_D34A90: FStStrNoPop var_148
  loc_D34A93: ImpAdCallI2 Replace(, , , , , )
  loc_D34A98: CVarStr var_584
  loc_D34A9B: ConcatVar var_5A4
  loc_D34A9F: LitVarStr var_534, ");"
  loc_D34AA4: ConcatVar var_5C4
  loc_D34AA8: CStrVarVal var_14C
  loc_D34AAC: Call EjecutarRsCls(from_stack_1v)
  loc_D34AB1: FFreeStr var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_D34AC6: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = "": var_3EC = "": var_440 = "": var_454 = "": var_4F8 = "": var_500 = "": var_504 = "": var_6E8 = "": var_6EC = "": var_6F0 = ""
  loc_D34AF3: FFreeVar var_4C4 = "": var_4E4 = "": var_574 = "": var_514 = "": var_584 = "": var_5A4 = "": var_5C4 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3FC = "": var_3D4 = "": var_40C = "": var_41C = "": var_43C = "": var_464 = "": var_474 = "": var_4A4 = ""
  loc_D34B40: Branch loc_D357B9
  loc_D34B43: FLdRfVar var_194
  loc_D34B46: FLdRfVar var_184
  loc_D34B49: LitVarStr var_180, "CrafLian"
  loc_D34B4E: PopAdLdVar
  loc_D34B4F: FLdRfVar var_170
  loc_D34B52: FLdPr Me
  loc_D34B55: MemLdPr global_68
  loc_D34B58:  = Me.Fields
  loc_D34B5D: FLdPr var_170
  loc_D34B60: from_stack_2 = Me.Item(from_stack_1)
  loc_D34B65: FLdPr var_184
  loc_D34B68:  = Me.Value
  loc_D34B6D: LitI4 2
  loc_D34B72: FLdRfVar var_194
  loc_D34B75: FLdFPR8 var_104
  loc_D34B78: CVarR8
  loc_D34B7C: SubVar var_1B4
  loc_D34B80: FStVar var_1C4
  loc_D34B84: FLdRfVar var_1C4
  loc_D34B87: FLdRfVar var_1D4
  loc_D34B8A: ImpAdCallFPR4  = Round(, )
  loc_D34B8F: FLdRfVar var_1D4
  loc_D34B92: CR4Var
  loc_D34B93: FStFPR8 var_104
  loc_D34B96: FFreeAd var_170 = ""
  loc_D34B9D: FFreeVar var_194 = "": var_1C4 = ""
  loc_D34BA6: LitStr vbNullString
  loc_D34BA9: FStStrCopy var_128
  loc_D34BAC: LitI2_Byte 1
  loc_D34BAE: FLdRfVar var_A6
  loc_D34BB1: LitI2_Byte 6
  loc_D34BB3: ForI2 var_6F8
  loc_D34BB9: LitStr "SELECT * FROM detabole"
  loc_D34BBC: LitStr " USE INDEX (idxdetabole02)"
  loc_D34BBF: ConcatStr
  loc_D34BC0: FStStrNoPop var_12C
  loc_D34BC3: LitStr " WHERE PeriBole = "
  loc_D34BC6: ConcatStr
  loc_D34BC7: CVarStr var_1B4
  loc_D34BCA: FLdRfVar var_194
  loc_D34BCD: FLdRfVar var_184
  loc_D34BD0: LitVarStr var_180, "PeriLiqu"
  loc_D34BD5: PopAdLdVar
  loc_D34BD6: FLdRfVar var_170
  loc_D34BD9: FLdPr Me
  loc_D34BDC: MemLdPr global_68
  loc_D34BDF:  = Me.Fields
  loc_D34BE4: FLdPr var_170
  loc_D34BE7: from_stack_2 = Me.Item(from_stack_1)
  loc_D34BEC: FLdPr var_184
  loc_D34BEF:  = Me.Value
  loc_D34BF4: FLdRfVar var_194
  loc_D34BF7: ConcatVar var_1C4
  loc_D34BFB: LitVarStr var_1A4, " AND CodiOfic = 7"
  loc_D34C00: ConcatVar var_1D4
  loc_D34C04: LitVarStr var_1E8, " AND CuenCtct = '"
  loc_D34C09: ConcatVar var_1FC
  loc_D34C0D: FLdRfVar var_20C
  loc_D34C10: FLdRfVar var_1EC
  loc_D34C13: LitVarStr var_21C, "CodiCome"
  loc_D34C18: PopAdLdVar
  loc_D34C19: FLdRfVar var_1D8
  loc_D34C1C: FLdPr Me
  loc_D34C1F: MemLdPr global_68
  loc_D34C22:  = Me.Fields
  loc_D34C27: FLdPr var_1D8
  loc_D34C2A: from_stack_2 = Me.Item(from_stack_1)
  loc_D34C2F: FLdPr var_1EC
  loc_D34C32:  = Me.Value
  loc_D34C37: FLdRfVar var_20C
  loc_D34C3A: ConcatVar var_22C
  loc_D34C3E: LitVarStr var_23C, "'"
  loc_D34C43: ConcatVar var_25C
  loc_D34C47: LitVarStr var_24C, " AND PeriCtct = "
  loc_D34C4C: ConcatVar var_26C
  loc_D34C50: FLdRfVar var_27C
  loc_D34C53: FLdRfVar var_2B4
  loc_D34C56: LitVarStr var_28C, "PeriLiqu"
  loc_D34C5B: PopAdLdVar
  loc_D34C5C: FLdRfVar var_2A0
  loc_D34C5F: FLdPr Me
  loc_D34C62: MemLdPr global_68
  loc_D34C65:  = Me.Fields
  loc_D34C6A: FLdPr var_2A0
  loc_D34C6D: from_stack_2 = Me.Item(from_stack_1)
  loc_D34C72: FLdPr var_2B4
  loc_D34C75:  = Me.Value
  loc_D34C7A: FLdRfVar var_27C
  loc_D34C7D: ConcatVar var_29C
  loc_D34C81: LitVarStr var_2B0, " AND BimeCtct = "
  loc_D34C86: ConcatVar var_2C4
  loc_D34C8A: FLdI2 var_A6
  loc_D34C8D: CVarI2 var_2D4
  loc_D34C90: ConcatVar var_2E4
  loc_D34C94: LitVarStr var_314, " AND CodiConc = '"
  loc_D34C99: ConcatVar var_2F4
  loc_D34C9D: FLdRfVar var_304
  loc_D34CA0: FLdRfVar var_33C
  loc_D34CA3: LitVarStr var_338, "CodiConc"
  loc_D34CA8: PopAdLdVar
  loc_D34CA9: FLdRfVar var_328
  loc_D34CAC: FLdPr Me
  loc_D34CAF: MemLdPr global_68
  loc_D34CB2:  = Me.Fields
  loc_D34CB7: FLdPr var_328
  loc_D34CBA: from_stack_2 = Me.Item(from_stack_1)
  loc_D34CBF: FLdPr var_33C
  loc_D34CC2:  = Me.Value
  loc_D34CC7: FLdRfVar var_304
  loc_D34CCA: ConcatVar var_324
  loc_D34CCE: LitVarStr var_36C, "'"
  loc_D34CD3: ConcatVar var_34C
  loc_D34CD7: LitVarStr var_390, " AND TipoCtct = 'Bimestral'"
  loc_D34CDC: ConcatVar var_35C
  loc_D34CE0: LitVarStr var_3C4, " AND CodiTili = "
  loc_D34CE5: ConcatVar var_37C
  loc_D34CE9: FLdRfVar var_3A4
  loc_D34CEC: FLdRfVar var_394
  loc_D34CEF: LitVarStr var_3E8, "CodiTili"
  loc_D34CF4: PopAdLdVar
  loc_D34CF5: FLdRfVar var_380
  loc_D34CF8: FLdPr Me
  loc_D34CFB: MemLdPr global_68
  loc_D34CFE:  = Me.Fields
  loc_D34D03: FLdPr var_380
  loc_D34D06: from_stack_2 = Me.Item(from_stack_1)
  loc_D34D0B: FLdPr var_394
  loc_D34D0E:  = Me.Value
  loc_D34D13: FLdRfVar var_3A4
  loc_D34D16: ConcatVar var_3B4
  loc_D34D1A: LitVarStr var_42C, " AND NumeLiqu = "
  loc_D34D1F: ConcatVar var_3D4
  loc_D34D23: FLdRfVar var_3FC
  loc_D34D26: FLdRfVar var_3EC
  loc_D34D29: LitVarStr var_450, "NumeLiqu"
  loc_D34D2E: PopAdLdVar
  loc_D34D2F: FLdRfVar var_3D8
  loc_D34D32: FLdPr Me
  loc_D34D35: MemLdPr global_68
  loc_D34D38:  = Me.Fields
  loc_D34D3D: FLdPr var_3D8
  loc_D34D40: from_stack_2 = Me.Item(from_stack_1)
  loc_D34D45: FLdPr var_3EC
  loc_D34D48:  = Me.Value
  loc_D34D4D: FLdRfVar var_3FC
  loc_D34D50: ConcatVar var_40C
  loc_D34D54: LitVarStr var_494, " ORDER BY PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D34D59: ConcatVar var_41C
  loc_D34D5D: CStrVarVal var_130
  loc_D34D61: Call EjecutarRsCls4(from_stack_1v)
  loc_D34D66: FFreeStr var_12C = ""
  loc_D34D6D: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = ""
  loc_D34D88: FFreeVar var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = "": var_40C = ""
  loc_D34DBD: FLdRfVar var_168
  loc_D34DC0: FLdPr Me
  loc_D34DC3: MemLdPr global_72
  loc_D34DC6:  = Me.RecordCount
  loc_D34DCB: ILdRf var_168
  loc_D34DCE: LitI4 0
  loc_D34DD3: EqI4
  loc_D34DD4: BranchF loc_D35009
  loc_D34DD7: LitStr "SELECT * FROM detabole"
  loc_D34DDA: LitStr " USE INDEX (idxdetabole02)"
  loc_D34DDD: ConcatStr
  loc_D34DDE: FStStrNoPop var_12C
  loc_D34DE1: LitStr " WHERE PeriBole = "
  loc_D34DE4: ConcatStr
  loc_D34DE5: CVarStr var_1B4
  loc_D34DE8: FLdRfVar var_194
  loc_D34DEB: FLdRfVar var_184
  loc_D34DEE: LitVarStr var_180, "PeriLiqu"
  loc_D34DF3: PopAdLdVar
  loc_D34DF4: FLdRfVar var_170
  loc_D34DF7: FLdPr Me
  loc_D34DFA: MemLdPr global_68
  loc_D34DFD:  = Me.Fields
  loc_D34E02: FLdPr var_170
  loc_D34E05: from_stack_2 = Me.Item(from_stack_1)
  loc_D34E0A: FLdPr var_184
  loc_D34E0D:  = Me.Value
  loc_D34E12: FLdRfVar var_194
  loc_D34E15: ConcatVar var_1C4
  loc_D34E19: LitVarStr var_1A4, " AND CodiOfic = 7"
  loc_D34E1E: ConcatVar var_1D4
  loc_D34E22: LitVarStr var_1E8, " AND CuenCtct = '"
  loc_D34E27: ConcatVar var_1FC
  loc_D34E2B: FLdRfVar var_20C
  loc_D34E2E: FLdRfVar var_1EC
  loc_D34E31: LitVarStr var_21C, "CodiCome"
  loc_D34E36: PopAdLdVar
  loc_D34E37: FLdRfVar var_1D8
  loc_D34E3A: FLdPr Me
  loc_D34E3D: MemLdPr global_68
  loc_D34E40:  = Me.Fields
  loc_D34E45: FLdPr var_1D8
  loc_D34E48: from_stack_2 = Me.Item(from_stack_1)
  loc_D34E4D: FLdPr var_1EC
  loc_D34E50:  = Me.Value
  loc_D34E55: FLdRfVar var_20C
  loc_D34E58: ConcatVar var_22C
  loc_D34E5C: LitVarStr var_23C, "'"
  loc_D34E61: ConcatVar var_25C
  loc_D34E65: LitVarStr var_24C, " AND PeriCtct = "
  loc_D34E6A: ConcatVar var_26C
  loc_D34E6E: FLdRfVar var_27C
  loc_D34E71: FLdRfVar var_2B4
  loc_D34E74: LitVarStr var_28C, "PeriLiqu"
  loc_D34E79: PopAdLdVar
  loc_D34E7A: FLdRfVar var_2A0
  loc_D34E7D: FLdPr Me
  loc_D34E80: MemLdPr global_68
  loc_D34E83:  = Me.Fields
  loc_D34E88: FLdPr var_2A0
  loc_D34E8B: from_stack_2 = Me.Item(from_stack_1)
  loc_D34E90: FLdPr var_2B4
  loc_D34E93:  = Me.Value
  loc_D34E98: FLdRfVar var_27C
  loc_D34E9B: ConcatVar var_29C
  loc_D34E9F: LitVarStr var_2B0, " AND BimeCtct = 1"
  loc_D34EA4: ConcatVar var_2C4
  loc_D34EA8: LitVarStr var_2D4, " AND CodiConc = '"
  loc_D34EAD: ConcatVar var_2E4
  loc_D34EB1: FLdRfVar var_2F4
  loc_D34EB4: FLdRfVar var_33C
  loc_D34EB7: LitVarStr var_314, "CodiConc"
  loc_D34EBC: PopAdLdVar
  loc_D34EBD: FLdRfVar var_328
  loc_D34EC0: FLdPr Me
  loc_D34EC3: MemLdPr global_68
  loc_D34EC6:  = Me.Fields
  loc_D34ECB: FLdPr var_328
  loc_D34ECE: from_stack_2 = Me.Item(from_stack_1)
  loc_D34ED3: FLdPr var_33C
  loc_D34ED6:  = Me.Value
  loc_D34EDB: FLdRfVar var_2F4
  loc_D34EDE: ConcatVar var_304
  loc_D34EE2: LitVarStr var_338, "'"
  loc_D34EE7: ConcatVar var_324
  loc_D34EEB: LitVarStr var_36C, " AND TipoCtct = 'Bimestral'"
  loc_D34EF0: ConcatVar var_34C
  loc_D34EF4: LitVarStr var_390, " AND CodiTili = "
  loc_D34EF9: ConcatVar var_35C
  loc_D34EFD: FLdRfVar var_37C
  loc_D34F00: FLdRfVar var_394
  loc_D34F03: LitVarStr var_3C4, "CodiTili"
  loc_D34F08: PopAdLdVar
  loc_D34F09: FLdRfVar var_380
  loc_D34F0C: FLdPr Me
  loc_D34F0F: MemLdPr global_68
  loc_D34F12:  = Me.Fields
  loc_D34F17: FLdPr var_380
  loc_D34F1A: from_stack_2 = Me.Item(from_stack_1)
  loc_D34F1F: FLdPr var_394
  loc_D34F22:  = Me.Value
  loc_D34F27: FLdRfVar var_37C
  loc_D34F2A: ConcatVar var_3A4
  loc_D34F2E: LitVarStr var_3E8, " AND NumeLiqu = "
  loc_D34F33: ConcatVar var_3B4
  loc_D34F37: FLdRfVar var_3D4
  loc_D34F3A: FLdRfVar var_3EC
  loc_D34F3D: LitVarStr var_42C, "NumeLiqu"
  loc_D34F42: PopAdLdVar
  loc_D34F43: FLdRfVar var_3D8
  loc_D34F46: FLdPr Me
  loc_D34F49: MemLdPr global_68
  loc_D34F4C:  = Me.Fields
  loc_D34F51: FLdPr var_3D8
  loc_D34F54: from_stack_2 = Me.Item(from_stack_1)
  loc_D34F59: FLdPr var_3EC
  loc_D34F5C:  = Me.Value
  loc_D34F61: FLdRfVar var_3D4
  loc_D34F64: ConcatVar var_3FC
  loc_D34F68: LitVarStr var_450, " ORDER BY PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D34F6D: ConcatVar var_40C
  loc_D34F71: CStrVarVal var_130
  loc_D34F75: Call EjecutarRsCls4(from_stack_1v)
  loc_D34F7A: FFreeStr var_12C = ""
  loc_D34F81: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = ""
  loc_D34F9C: FFreeVar var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = ""
  loc_D34FCF: FLdRfVar var_168
  loc_D34FD2: FLdPr Me
  loc_D34FD5: MemLdPr global_72
  loc_D34FD8:  = Me.RecordCount
  loc_D34FDD: ILdRf var_168
  loc_D34FE0: LitI4 0
  loc_D34FE5: GtI4
  loc_D34FE6: BranchF loc_D35006
  loc_D34FE9: FLdI2 var_A6
  loc_D34FEC: FStI2 var_E2
  loc_D34FEF: FLdRfVar var_168
  loc_D34FF2: FLdI2 iPeriodo
  loc_D34FF5: FLdRfVar var_90
  loc_D34FF8: NewIfNullPr clsctacte
  loc_D34FFB: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_D35000: ILdRf var_168
  loc_D35003: FStR4 var_98
  loc_D35006: Branch loc_D35080
  loc_D35009: FLdRfVar var_194
  loc_D3500C: FLdRfVar var_184
  loc_D3500F: LitVarStr var_180, "BimeCtct"
  loc_D35014: PopAdLdVar
  loc_D35015: FLdRfVar var_170
  loc_D35018: FLdPr Me
  loc_D3501B: MemLdPr global_72
  loc_D3501E:  = Me.Fields
  loc_D35023: FLdPr var_170
  loc_D35026: from_stack_2 = Me.Item(from_stack_1)
  loc_D3502B: FLdPr var_184
  loc_D3502E:  = Me.Value
  loc_D35033: FLdRfVar var_194
  loc_D35036: CI2Var
  loc_D35037: FStI2 var_E2
  loc_D3503A: FFreeAd var_170 = ""
  loc_D35041: FFree1Var var_194 = ""
  loc_D35044: FLdRfVar var_194
  loc_D35047: FLdRfVar var_184
  loc_D3504A: LitVarStr var_180, "NumeCtct"
  loc_D3504F: PopAdLdVar
  loc_D35050: FLdRfVar var_170
  loc_D35053: FLdPr Me
  loc_D35056: MemLdPr global_72
  loc_D35059:  = Me.Fields
  loc_D3505E: FLdPr var_170
  loc_D35061: from_stack_2 = Me.Item(from_stack_1)
  loc_D35066: FLdPr var_184
  loc_D35069:  = Me.Value
  loc_D3506E: FLdRfVar var_194
  loc_D35071: CI4Var
  loc_D35073: FStR4 var_98
  loc_D35076: FFreeAd var_170 = ""
  loc_D3507D: FFree1Var var_194 = ""
  loc_D35080: FLdRfVar var_168
  loc_D35083: FLdPr Me
  loc_D35086: MemLdPr global_72
  loc_D35089:  = Me.RecordCount
  loc_D3508E: ILdRf var_168
  loc_D35091: LitI4 0
  loc_D35096: GtI4
  loc_D35097: BranchF loc_D357A9
  loc_D3509A: FLdPr Me
  loc_D3509D: MemLdPr global_72
  loc_D350A0: Me.MoveFirst
  loc_D350A5: FLdRfVar var_16A
  loc_D350A8: FLdPr Me
  loc_D350AB: MemLdPr global_72
  loc_D350AE:  = Me.EOF
  loc_D350B3: FLdI2 var_16A
  loc_D350B6: NotI4
  loc_D350B7: BranchF loc_D357A9
  loc_D350BA: FLdRfVar var_194
  loc_D350BD: FLdRfVar var_184
  loc_D350C0: LitVarStr var_180, "CodiConc"
  loc_D350C5: PopAdLdVar
  loc_D350C6: FLdRfVar var_170
  loc_D350C9: FLdPr Me
  loc_D350CC: MemLdPr global_68
  loc_D350CF:  = Me.Fields
  loc_D350D4: FLdPr var_170
  loc_D350D7: from_stack_2 = Me.Item(from_stack_1)
  loc_D350DC: FLdPr var_184
  loc_D350DF:  = Me.Value
  loc_D350E4: FLdRfVar var_194
  loc_D350E7: LitVarStr var_1A4, "13020601"
  loc_D350EC: HardType
  loc_D350ED: EqVarBool
  loc_D350EF: FFreeAd var_170 = ""
  loc_D350F6: FFree1Var var_194 = ""
  loc_D350F9: BranchF loc_D353BA
  loc_D350FC: LitStr "SELECT SUM(ImpoLade) ImpoLade, SUM(DecaLade) DecaLade, SUM(ExceLade) ExceLade, SUM(TotaLade) TotaLade FROM liandeta "
  loc_D350FF: LitStr " USE INDEX (idxlicodeta01)"
  loc_D35102: ConcatStr
  loc_D35103: FStStrNoPop var_12C
  loc_D35106: LitStr " WHERE PeriLiqu = "
  loc_D35109: ConcatStr
  loc_D3510A: CVarStr var_1B4
  loc_D3510D: FLdRfVar var_194
  loc_D35110: FLdRfVar var_184
  loc_D35113: LitVarStr var_180, "PeriLiqu"
  loc_D35118: PopAdLdVar
  loc_D35119: FLdRfVar var_170
  loc_D3511C: FLdPr Me
  loc_D3511F: MemLdPr global_68
  loc_D35122:  = Me.Fields
  loc_D35127: FLdPr var_170
  loc_D3512A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3512F: FLdPr var_184
  loc_D35132:  = Me.Value
  loc_D35137: FLdRfVar var_194
  loc_D3513A: ConcatVar var_1C4
  loc_D3513E: LitVarStr var_1A4, " AND BimeLiqu = "
  loc_D35143: ConcatVar var_1D4
  loc_D35147: FLdI2 var_A6
  loc_D3514A: CVarI2 var_1E8
  loc_D3514D: ConcatVar var_1FC
  loc_D35151: LitVarStr var_21C, " AND CodiTili = "
  loc_D35156: ConcatVar var_20C
  loc_D3515A: FLdRfVar var_22C
  loc_D3515D: FLdRfVar var_1EC
  loc_D35160: LitVarStr var_23C, "CodiTili"
  loc_D35165: PopAdLdVar
  loc_D35166: FLdRfVar var_1D8
  loc_D35169: FLdPr Me
  loc_D3516C: MemLdPr global_68
  loc_D3516F:  = Me.Fields
  loc_D35174: FLdPr var_1D8
  loc_D35177: from_stack_2 = Me.Item(from_stack_1)
  loc_D3517C: FLdPr var_1EC
  loc_D3517F:  = Me.Value
  loc_D35184: FLdRfVar var_22C
  loc_D35187: ConcatVar var_25C
  loc_D3518B: LitVarStr var_24C, " AND NumeLiqu = "
  loc_D35190: ConcatVar var_26C
  loc_D35194: FLdRfVar var_27C
  loc_D35197: FLdRfVar var_2B4
  loc_D3519A: LitVarStr var_28C, "NumeLiqu"
  loc_D3519F: PopAdLdVar
  loc_D351A0: FLdRfVar var_2A0
  loc_D351A3: FLdPr Me
  loc_D351A6: MemLdPr global_68
  loc_D351A9:  = Me.Fields
  loc_D351AE: FLdPr var_2A0
  loc_D351B1: from_stack_2 = Me.Item(from_stack_1)
  loc_D351B6: FLdPr var_2B4
  loc_D351B9:  = Me.Value
  loc_D351BE: FLdRfVar var_27C
  loc_D351C1: ConcatVar var_29C
  loc_D351C5: LitVarStr var_2B0, " AND CodiCome = "
  loc_D351CA: ConcatVar var_2C4
  loc_D351CE: FLdRfVar var_2E4
  loc_D351D1: FLdRfVar var_33C
  loc_D351D4: LitVarStr var_2D4, "CodiCome"
  loc_D351D9: PopAdLdVar
  loc_D351DA: FLdRfVar var_328
  loc_D351DD: FLdPr Me
  loc_D351E0: MemLdPr global_68
  loc_D351E3:  = Me.Fields
  loc_D351E8: FLdPr var_328
  loc_D351EB: from_stack_2 = Me.Item(from_stack_1)
  loc_D351F0: FLdPr var_33C
  loc_D351F3:  = Me.Value
  loc_D351F8: FLdRfVar var_2E4
  loc_D351FB: ConcatVar var_2F4
  loc_D351FF: LitVarStr var_314, " AND CodiConc = '"
  loc_D35204: ConcatVar var_304
  loc_D35208: FLdRfVar var_324
  loc_D3520B: FLdRfVar var_394
  loc_D3520E: LitVarStr var_338, "CodiConc"
  loc_D35213: PopAdLdVar
  loc_D35214: FLdRfVar var_380
  loc_D35217: FLdPr Me
  loc_D3521A: MemLdPr global_68
  loc_D3521D:  = Me.Fields
  loc_D35222: FLdPr var_380
  loc_D35225: from_stack_2 = Me.Item(from_stack_1)
  loc_D3522A: FLdPr var_394
  loc_D3522D:  = Me.Value
  loc_D35232: FLdRfVar var_324
  loc_D35235: ConcatVar var_34C
  loc_D35239: LitVarStr var_36C, "'"
  loc_D3523E: ConcatVar var_35C
  loc_D35242: LitVarStr var_390, " AND TipoVenc = 2"
  loc_D35247: ConcatVar var_37C
  loc_D3524B: CStrVarVal var_130
  loc_D3524F: Call EjecutarRsCls5(from_stack_1v)
  loc_D35254: FFreeStr var_12C = ""
  loc_D3525B: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = ""
  loc_D35272: FFreeVar var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = ""
  loc_D3529B: FLdRfVar var_168
  loc_D3529E: FLdPr Me
  loc_D352A1: MemLdPr global_76
  loc_D352A4:  = Me.RecordCount
  loc_D352A9: ILdRf var_168
  loc_D352AC: LitI4 0
  loc_D352B1: GtI4
  loc_D352B2: BranchF loc_D353B7
  loc_D352B5: FLdI2 var_A6
  loc_D352B8: LitI2_Byte 2
  loc_D352BA: LeI2
  loc_D352BB: BranchF loc_D352FD
  loc_D352BE: FLdRfVar var_194
  loc_D352C1: FLdRfVar var_184
  loc_D352C4: LitVarStr var_180, "CapiDebo"
  loc_D352C9: PopAdLdVar
  loc_D352CA: FLdRfVar var_170
  loc_D352CD: FLdPr Me
  loc_D352D0: MemLdPr global_72
  loc_D352D3:  = Me.Fields
  loc_D352D8: FLdPr var_170
  loc_D352DB: from_stack_2 = Me.Item(from_stack_1)
  loc_D352E0: FLdPr var_184
  loc_D352E3:  = Me.Value
  loc_D352E8: FLdRfVar var_194
  loc_D352EB: FnCDblVar
  loc_D352ED: FStFPR8 var_C8
  loc_D352F0: FFreeAd var_170 = ""
  loc_D352F7: FFree1Var var_194 = ""
  loc_D352FA: Branch loc_D35339
  loc_D352FD: FLdRfVar var_194
  loc_D35300: FLdRfVar var_184
  loc_D35303: LitVarStr var_180, "ImpoLade"
  loc_D35308: PopAdLdVar
  loc_D35309: FLdRfVar var_170
  loc_D3530C: FLdPr Me
  loc_D3530F: MemLdPr global_76
  loc_D35312:  = Me.Fields
  loc_D35317: FLdPr var_170
  loc_D3531A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3531F: FLdPr var_184
  loc_D35322:  = Me.Value
  loc_D35327: FLdRfVar var_194
  loc_D3532A: FnCDblVar
  loc_D3532C: FStFPR8 var_C8
  loc_D3532F: FFreeAd var_170 = ""
  loc_D35336: FFree1Var var_194 = ""
  loc_D35339: FLdRfVar var_194
  loc_D3533C: FLdRfVar var_184
  loc_D3533F: LitVarStr var_180, "DecaLade"
  loc_D35344: PopAdLdVar
  loc_D35345: FLdRfVar var_170
  loc_D35348: FLdPr Me
  loc_D3534B: MemLdPr global_76
  loc_D3534E:  = Me.Fields
  loc_D35353: FLdPr var_170
  loc_D35356: from_stack_2 = Me.Item(from_stack_1)
  loc_D3535B: FLdPr var_184
  loc_D3535E:  = Me.Value
  loc_D35363: FLdRfVar var_194
  loc_D35366: FnCDblVar
  loc_D35368: FStFPR8 var_D0
  loc_D3536B: FFreeAd var_170 = ""
  loc_D35372: FFree1Var var_194 = ""
  loc_D35375: FLdRfVar var_194
  loc_D35378: FLdRfVar var_184
  loc_D3537B: LitVarStr var_180, "ExceLade"
  loc_D35380: PopAdLdVar
  loc_D35381: FLdRfVar var_170
  loc_D35384: FLdPr Me
  loc_D35387: MemLdPr global_76
  loc_D3538A:  = Me.Fields
  loc_D3538F: FLdPr var_170
  loc_D35392: from_stack_2 = Me.Item(from_stack_1)
  loc_D35397: FLdPr var_184
  loc_D3539A:  = Me.Value
  loc_D3539F: FLdRfVar var_194
  loc_D353A2: FnCDblVar
  loc_D353A4: FStFPR8 var_D8
  loc_D353A7: FFreeAd var_170 = ""
  loc_D353AE: FFree1Var var_194 = ""
  loc_D353B1: LitI2_Byte 0
  loc_D353B3: CR8I2
  loc_D353B4: FStFPR8 var_FC
  loc_D353B7: Branch loc_D35408
  loc_D353BA: FLdRfVar var_194
  loc_D353BD: FLdRfVar var_184
  loc_D353C0: LitVarStr var_180, "CapiDebo"
  loc_D353C5: PopAdLdVar
  loc_D353C6: FLdRfVar var_170
  loc_D353C9: FLdPr Me
  loc_D353CC: MemLdPr global_72
  loc_D353CF:  = Me.Fields
  loc_D353D4: FLdPr var_170
  loc_D353D7: from_stack_2 = Me.Item(from_stack_1)
  loc_D353DC: FLdPr var_184
  loc_D353DF:  = Me.Value
  loc_D353E4: FLdRfVar var_194
  loc_D353E7: FnCDblVar
  loc_D353E9: FStFPR8 var_C8
  loc_D353EC: FFreeAd var_170 = ""
  loc_D353F3: FFree1Var var_194 = ""
  loc_D353F6: LitI2_Byte 0
  loc_D353F8: CR8I2
  loc_D353F9: FStFPR8 var_D0
  loc_D353FC: LitI2_Byte 0
  loc_D353FE: CR8I2
  loc_D353FF: FStFPR8 var_D8
  loc_D35402: LitI2_Byte 0
  loc_D35404: CR8I2
  loc_D35405: FStFPR8 var_FC
  loc_D35408: FLdFPR8 var_C8
  loc_D3540B: FLdFPR8 var_D0
  loc_D3540E: SubR4
  loc_D3540F: FLdFPR8 var_D8
  loc_D35412: SubR4
  loc_D35413: FLdFPR8 var_FC
  loc_D35416: SubR4
  loc_D35417: FStFPR8 var_E0
  loc_D3541A: FLdFPR8 var_10C
  loc_D3541D: FLdFPR8 var_C8
  loc_D35420: AddR8
  loc_D35421: FStFPR8 var_10C
  loc_D35424: FLdFPR8 var_114
  loc_D35427: FLdFPR8 var_D0
  loc_D3542A: AddR8
  loc_D3542B: FStFPR8 var_114
  loc_D3542E: FLdFPR8 var_11C
  loc_D35431: FLdFPR8 var_D8
  loc_D35434: AddR8
  loc_D35435: FStFPR8 var_11C
  loc_D35438: FLdFPR8 var_124
  loc_D3543B: FLdFPR8 var_FC
  loc_D3543E: AddR8
  loc_D3543F: FStFPR8 var_124
  loc_D35442: ILdRf var_128
  loc_D35445: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiTili, NumeLiqu, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, CrafDebo, TotaDebo) "
  loc_D35448: ConcatStr
  loc_D35449: FStStrNoPop var_12C
  loc_D3544C: LitStr " VALUES ("
  loc_D3544F: ConcatStr
  loc_D35450: FStStrNoPop var_130
  loc_D35453: FLdI2 iPeriodo
  loc_D35456: CStrUI1
  loc_D35458: FStStrNoPop var_134
  loc_D3545B: ConcatStr
  loc_D3545C: FStStrNoPop var_138
  loc_D3545F: LitStr ","
  loc_D35462: ConcatStr
  loc_D35463: FStStrNoPop var_13C
  loc_D35466: ILdRf var_9C
  loc_D35469: CStrI4
  loc_D3546B: FStStrNoPop var_140
  loc_D3546E: ConcatStr
  loc_D3546F: FStStrNoPop var_144
  loc_D35472: LitStr ","
  loc_D35475: ConcatStr
  loc_D35476: FStStrNoPop var_148
  loc_D35479: FLdI2 iPeriodo
  loc_D3547C: CStrUI1
  loc_D3547E: FStStrNoPop var_14C
  loc_D35481: ConcatStr
  loc_D35482: FStStrNoPop var_150
  loc_D35485: LitStr ","
  loc_D35488: ConcatStr
  loc_D35489: FStStrNoPop var_154
  loc_D3548C: FLdI2 var_E2
  loc_D3548F: CStrUI1
  loc_D35491: FStStrNoPop var_158
  loc_D35494: ConcatStr
  loc_D35495: FStStrNoPop var_15C
  loc_D35498: LitStr ","
  loc_D3549B: ConcatStr
  loc_D3549C: FStStrNoPop var_160
  loc_D3549F: ILdRf var_98
  loc_D354A2: CStrI4
  loc_D354A4: FStStrNoPop var_164
  loc_D354A7: ConcatStr
  loc_D354A8: FStStrNoPop var_6FC
  loc_D354AB: LitStr ",1,1,"
  loc_D354AE: ConcatStr
  loc_D354AF: CVarStr var_1B4
  loc_D354B2: FLdRfVar var_194
  loc_D354B5: FLdRfVar var_184
  loc_D354B8: LitVarStr var_180, "CodiTili"
  loc_D354BD: PopAdLdVar
  loc_D354BE: FLdRfVar var_170
  loc_D354C1: FLdPr Me
  loc_D354C4: MemLdPr global_72
  loc_D354C7:  = Me.Fields
  loc_D354CC: FLdPr var_170
  loc_D354CF: from_stack_2 = Me.Item(from_stack_1)
  loc_D354D4: FLdPr var_184
  loc_D354D7:  = Me.Value
  loc_D354DC: FLdRfVar var_194
  loc_D354DF: ConcatVar var_1C4
  loc_D354E3: LitVarStr var_1A4, ","
  loc_D354E8: ConcatVar var_1D4
  loc_D354EC: FLdRfVar var_1FC
  loc_D354EF: FLdRfVar var_1EC
  loc_D354F2: LitVarStr var_1E8, "NumeLiqu"
  loc_D354F7: PopAdLdVar
  loc_D354F8: FLdRfVar var_1D8
  loc_D354FB: FLdPr Me
  loc_D354FE: MemLdPr global_72
  loc_D35501:  = Me.Fields
  loc_D35506: FLdPr var_1D8
  loc_D35509: from_stack_2 = Me.Item(from_stack_1)
  loc_D3550E: FLdPr var_1EC
  loc_D35511:  = Me.Value
  loc_D35516: FLdRfVar var_1FC
  loc_D35519: ConcatVar var_20C
  loc_D3551D: LitVarStr var_21C, ",7,'"
  loc_D35522: ConcatVar var_22C
  loc_D35526: FLdRfVar var_25C
  loc_D35529: FLdRfVar var_2B4
  loc_D3552C: LitVarStr var_23C, "CuenCtct"
  loc_D35531: PopAdLdVar
  loc_D35532: FLdRfVar var_2A0
  loc_D35535: FLdPr Me
  loc_D35538: MemLdPr global_72
  loc_D3553B:  = Me.Fields
  loc_D35540: FLdPr var_2A0
  loc_D35543: from_stack_2 = Me.Item(from_stack_1)
  loc_D35548: FLdPr var_2B4
  loc_D3554B:  = Me.Value
  loc_D35550: FLdRfVar var_25C
  loc_D35553: ConcatVar var_26C
  loc_D35557: LitVarStr var_24C, "','Anual',0,0,0,"
  loc_D3555C: ConcatVar var_27C
  loc_D35560: FLdRfVar var_29C
  loc_D35563: FLdRfVar var_33C
  loc_D35566: LitVarStr var_28C, "CodiTimo"
  loc_D3556B: PopAdLdVar
  loc_D3556C: FLdRfVar var_328
  loc_D3556F: FLdPr Me
  loc_D35572: MemLdPr global_72
  loc_D35575:  = Me.Fields
  loc_D3557A: FLdPr var_328
  loc_D3557D: from_stack_2 = Me.Item(from_stack_1)
  loc_D35582: FLdPr var_33C
  loc_D35585:  = Me.Value
  loc_D3558A: FLdRfVar var_29C
  loc_D3558D: ConcatVar var_2C4
  loc_D35591: LitVarStr var_2B0, ","
  loc_D35596: ConcatVar var_2E4
  loc_D3559A: FLdRfVar var_2F4
  loc_D3559D: FLdRfVar var_394
  loc_D355A0: LitVarStr var_2D4, "PeriInfo"
  loc_D355A5: PopAdLdVar
  loc_D355A6: FLdRfVar var_380
  loc_D355A9: FLdPr Me
  loc_D355AC: MemLdPr global_72
  loc_D355AF:  = Me.Fields
  loc_D355B4: FLdPr var_380
  loc_D355B7: from_stack_2 = Me.Item(from_stack_1)
  loc_D355BC: FLdPr var_394
  loc_D355BF:  = Me.Value
  loc_D355C4: FLdRfVar var_2F4
  loc_D355C7: ConcatVar var_304
  loc_D355CB: LitVarStr var_314, ",'"
  loc_D355D0: ConcatVar var_324
  loc_D355D4: FLdRfVar var_34C
  loc_D355D7: FLdRfVar var_3EC
  loc_D355DA: LitVarStr var_338, "CodiConc"
  loc_D355DF: PopAdLdVar
  loc_D355E0: FLdRfVar var_3D8
  loc_D355E3: FLdPr Me
  loc_D355E6: MemLdPr global_72
  loc_D355E9:  = Me.Fields
  loc_D355EE: FLdPr var_3D8
  loc_D355F1: from_stack_2 = Me.Item(from_stack_1)
  loc_D355F6: FLdPr var_3EC
  loc_D355F9:  = Me.Value
  loc_D355FE: FLdRfVar var_34C
  loc_D35601: ConcatVar var_35C
  loc_D35605: LitVarStr var_36C, "',"
  loc_D3560A: ConcatVar var_37C
  loc_D3560E: LitI4 0
  loc_D35613: LitI4 -1
  loc_D35618: LitI4 1
  loc_D3561D: LitStr "."
  loc_D35620: LitStr ","
  loc_D35623: FLdFPR8 var_C8
  loc_D35626: CStrR8
  loc_D35628: FStStrNoPop var_700
  loc_D3562B: ImpAdCallI2 Replace(, , , , , )
  loc_D35630: CVarStr var_3A4
  loc_D35633: ConcatVar var_3B4
  loc_D35637: LitVarStr var_390, ","
  loc_D3563C: ConcatVar var_3D4
  loc_D35640: LitI4 0
  loc_D35645: LitI4 -1
  loc_D3564A: LitI4 1
  loc_D3564F: LitStr "."
  loc_D35652: LitStr ","
  loc_D35655: FLdFPR8 var_D0
  loc_D35658: CStrR8
  loc_D3565A: FStStrNoPop var_704
  loc_D3565D: ImpAdCallI2 Replace(, , , , , )
  loc_D35662: CVarStr var_3FC
  loc_D35665: ConcatVar var_40C
  loc_D35669: LitVarStr var_3C4, ",0,0,0,"
  loc_D3566E: ConcatVar var_41C
  loc_D35672: LitI4 0
  loc_D35677: LitI4 -1
  loc_D3567C: LitI4 1
  loc_D35681: LitStr "."
  loc_D35684: LitStr ","
  loc_D35687: FLdFPR8 var_D8
  loc_D3568A: CStrR8
  loc_D3568C: FStStrNoPop var_708
  loc_D3568F: ImpAdCallI2 Replace(, , , , , )
  loc_D35694: CVarStr var_43C
  loc_D35697: ConcatVar var_464
  loc_D3569B: LitVarStr var_3E8, ","
  loc_D356A0: ConcatVar var_474
  loc_D356A4: LitI4 0
  loc_D356A9: LitI4 -1
  loc_D356AE: LitI4 1
  loc_D356B3: LitStr "."
  loc_D356B6: LitStr ","
  loc_D356B9: FLdFPR8 var_FC
  loc_D356BC: CStrR8
  loc_D356BE: FStStrNoPop var_70C
  loc_D356C1: ImpAdCallI2 Replace(, , , , , )
  loc_D356C6: CVarStr var_484
  loc_D356C9: ConcatVar var_4A4
  loc_D356CD: LitVarStr var_42C, ","
  loc_D356D2: ConcatVar var_4C4
  loc_D356D6: LitI4 0
  loc_D356DB: LitI4 -1
  loc_D356E0: LitI4 1
  loc_D356E5: LitStr "."
  loc_D356E8: LitStr ","
  loc_D356EB: FLdFPR8 var_E0
  loc_D356EE: CStrR8
  loc_D356F0: FStStrNoPop var_710
  loc_D356F3: ImpAdCallI2 Replace(, , , , , )
  loc_D356F8: CVarStr var_4E4
  loc_D356FB: ConcatVar var_514
  loc_D356FF: LitVarStr var_450, ");"
  loc_D35704: ConcatVar var_574
  loc_D35708: CStrVarTmp
  loc_D35709: FStStr var_128
  loc_D3570C: FFreeStr var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_6FC = "": var_700 = "": var_704 = "": var_708 = "": var_70C = ""
  loc_D35739: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = ""
  loc_D35754: FFreeVar var_4C4 = "": var_4E4 = "": var_514 = "": var_574 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = "": var_40C = "": var_41C = "": var_43C = "": var_464 = "": var_474 = "": var_484 = ""
  loc_D3579B: FLdPr Me
  loc_D3579E: MemLdPr global_72
  loc_D357A1: Me.MoveNext
  loc_D357A6: Branch loc_D350A5
  loc_D357A9: FLdRfVar var_A6
  loc_D357AC: NextI2 var_6F8, loc_D34BB9
  loc_D357B1: ILdRf var_128
  loc_D357B4: Call EjecutarRsCls(from_stack_1v)
  loc_D357B9: LitI2_Byte 0
  loc_D357BB: CR8I2
  loc_D357BC: FStFPR8 var_B0
  loc_D357BF: LitI2_Byte 0
  loc_D357C1: CR8I2
  loc_D357C2: FStFPR8 var_B8
  loc_D357C5: Branch loc_D35941
  loc_D357C8: FLdRfVar var_4F4
  loc_D357CB: LitVarStr var_180, "Pago Anticipado"
  loc_D357D0: HardType
  loc_D357D1: EqVarBool
  loc_D357D3: BranchF loc_D35941
  loc_D357D6: LitVarStr var_1A4, " UPDATE pagoanti SET EstaPaan = 'Liquidado' WHERE CodiOfic = 7 AND CuenCtct = '"
  loc_D357DB: FLdRfVar var_194
  loc_D357DE: FLdRfVar var_184
  loc_D357E1: LitVarStr var_180, "CodiCome"
  loc_D357E6: PopAdLdVar
  loc_D357E7: FLdRfVar var_170
  loc_D357EA: FLdPr Me
  loc_D357ED: MemLdPr global_68
  loc_D357F0:  = Me.Fields
  loc_D357F5: FLdPr var_170
  loc_D357F8: from_stack_2 = Me.Item(from_stack_1)
  loc_D357FD: FLdPr var_184
  loc_D35800:  = Me.Value
  loc_D35805: FLdRfVar var_194
  loc_D35808: ConcatVar var_1B4
  loc_D3580C: LitVarStr var_1E8, "' AND PeriLiqu = "
  loc_D35811: ConcatVar var_1C4
  loc_D35815: FLdRfVar var_1D4
  loc_D35818: FLdRfVar var_1EC
  loc_D3581B: LitVarStr var_21C, "PeriLiqu"
  loc_D35820: PopAdLdVar
  loc_D35821: FLdRfVar var_1D8
  loc_D35824: FLdPr Me
  loc_D35827: MemLdPr global_68
  loc_D3582A:  = Me.Fields
  loc_D3582F: FLdPr var_1D8
  loc_D35832: from_stack_2 = Me.Item(from_stack_1)
  loc_D35837: FLdPr var_1EC
  loc_D3583A:  = Me.Value
  loc_D3583F: FLdRfVar var_1D4
  loc_D35842: ConcatVar var_1FC
  loc_D35846: LitVarStr var_23C, " AND BimeLiqu = "
  loc_D3584B: ConcatVar var_20C
  loc_D3584F: FLdRfVar var_22C
  loc_D35852: FLdRfVar var_2B4
  loc_D35855: LitVarStr var_24C, "BimeLiqu"
  loc_D3585A: PopAdLdVar
  loc_D3585B: FLdRfVar var_2A0
  loc_D3585E: FLdPr Me
  loc_D35861: MemLdPr global_68
  loc_D35864:  = Me.Fields
  loc_D35869: FLdPr var_2A0
  loc_D3586C: from_stack_2 = Me.Item(from_stack_1)
  loc_D35871: FLdPr var_2B4
  loc_D35874:  = Me.Value
  loc_D35879: FLdRfVar var_22C
  loc_D3587C: ConcatVar var_25C
  loc_D35880: LitVarStr var_28C, " AND CodiTili = "
  loc_D35885: ConcatVar var_26C
  loc_D35889: FLdRfVar var_27C
  loc_D3588C: FLdRfVar var_33C
  loc_D3588F: LitVarStr var_2B0, "CodiTili"
  loc_D35894: PopAdLdVar
  loc_D35895: FLdRfVar var_328
  loc_D35898: FLdPr Me
  loc_D3589B: MemLdPr global_68
  loc_D3589E:  = Me.Fields
  loc_D358A3: FLdPr var_328
  loc_D358A6: from_stack_2 = Me.Item(from_stack_1)
  loc_D358AB: FLdPr var_33C
  loc_D358AE:  = Me.Value
  loc_D358B3: FLdRfVar var_27C
  loc_D358B6: ConcatVar var_29C
  loc_D358BA: LitVarStr var_2D4, " AND NumeLiqu = "
  loc_D358BF: ConcatVar var_2C4
  loc_D358C3: FLdRfVar var_2E4
  loc_D358C6: FLdRfVar var_394
  loc_D358C9: LitVarStr var_314, "NumeLiqu"
  loc_D358CE: PopAdLdVar
  loc_D358CF: FLdRfVar var_380
  loc_D358D2: FLdPr Me
  loc_D358D5: MemLdPr global_68
  loc_D358D8:  = Me.Fields
  loc_D358DD: FLdPr var_380
  loc_D358E0: from_stack_2 = Me.Item(from_stack_1)
  loc_D358E5: FLdPr var_394
  loc_D358E8:  = Me.Value
  loc_D358ED: FLdRfVar var_2E4
  loc_D358F0: ConcatVar var_2F4
  loc_D358F4: LitVarStr var_338, ";"
  loc_D358F9: ConcatVar var_304
  loc_D358FD: CStrVarVal var_12C
  loc_D35901: Call EjecutarRsCls(from_stack_1v)
  loc_D35906: FFree1Str var_12C
  loc_D35909: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = ""
  loc_D35920: FFreeVar var_194 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_22C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = ""
  loc_D35941: LitVarStr var_21C, " UPDATE liquante SET ActuLian = 'Si', PeriBole = "
  loc_D35946: LitVarI2 var_194, 0
  loc_D3594B: FLdRfVar iPeriodo
  loc_D3594E: CVarRef
  loc_D35953: ILdRf var_9C
  loc_D35956: LitI4 0
  loc_D3595B: NeI4
  loc_D3595C: CVarBoolI2 var_180
  loc_D35960: FLdRfVar var_1B4
  loc_D35963: ImpAdCallFPR4  = IIf(, , )
  loc_D35968: FLdRfVar var_1B4
  loc_D3596B: ConcatVar var_1C4
  loc_D3596F: LitVarStr var_23C, ", NumeBole = "
  loc_D35974: ConcatVar var_1D4
  loc_D35978: ILdRf var_9C
  loc_D3597B: CVarI4
  loc_D3597F: ConcatVar var_1FC
  loc_D35983: LitVarStr var_28C, ", FeacLian = '"
  loc_D35988: ConcatVar var_20C
  loc_D3598C: LitI4 1
  loc_D35991: LitI4 1
  loc_D35996: LitVarStr var_2D4, "yyyy-mm-dd"
  loc_D3599B: FStVarCopyObj var_22C
  loc_D3599E: FLdRfVar var_22C
  loc_D359A1: FLdRfVar var_A4
  loc_D359A4: CVarRef
  loc_D359A9: ImpAdCallI2 Format$(, )
  loc_D359AE: CVarStr var_25C
  loc_D359B1: ConcatVar var_26C
  loc_D359B5: LitVarStr var_314, "', OrdeLian = "
  loc_D359BA: ConcatVar var_27C
  loc_D359BE: ILdRf lOrden
  loc_D359C1: CVarI4
  loc_D359C5: ConcatVar var_29C
  loc_D359C9: LitVarStr var_36C, " WHERE PeriLiqu = "
  loc_D359CE: ConcatVar var_2C4
  loc_D359D2: FLdRfVar var_2E4
  loc_D359D5: FLdRfVar var_184
  loc_D359D8: LitVarStr var_390, "PeriLiqu"
  loc_D359DD: PopAdLdVar
  loc_D359DE: FLdRfVar var_170
  loc_D359E1: FLdPr Me
  loc_D359E4: MemLdPr global_68
  loc_D359E7:  = Me.Fields
  loc_D359EC: FLdPr var_170
  loc_D359EF: from_stack_2 = Me.Item(from_stack_1)
  loc_D359F4: FLdPr var_184
  loc_D359F7:  = Me.Value
  loc_D359FC: FLdRfVar var_2E4
  loc_D359FF: ConcatVar var_2F4
  loc_D35A03: LitVarStr var_3C4, " AND BimeLiqu = "
  loc_D35A08: ConcatVar var_304
  loc_D35A0C: FLdRfVar var_324
  loc_D35A0F: FLdRfVar var_1EC
  loc_D35A12: LitVarStr var_3E8, "BimeLiqu"
  loc_D35A17: PopAdLdVar
  loc_D35A18: FLdRfVar var_1D8
  loc_D35A1B: FLdPr Me
  loc_D35A1E: MemLdPr global_68
  loc_D35A21:  = Me.Fields
  loc_D35A26: FLdPr var_1D8
  loc_D35A29: from_stack_2 = Me.Item(from_stack_1)
  loc_D35A2E: FLdPr var_1EC
  loc_D35A31:  = Me.Value
  loc_D35A36: FLdRfVar var_324
  loc_D35A39: ConcatVar var_34C
  loc_D35A3D: LitVarStr var_42C, " AND CodiTili = "
  loc_D35A42: ConcatVar var_35C
  loc_D35A46: FLdRfVar var_37C
  loc_D35A49: FLdRfVar var_2B4
  loc_D35A4C: LitVarStr var_450, "CodiTili"
  loc_D35A51: PopAdLdVar
  loc_D35A52: FLdRfVar var_2A0
  loc_D35A55: FLdPr Me
  loc_D35A58: MemLdPr global_68
  loc_D35A5B:  = Me.Fields
  loc_D35A60: FLdPr var_2A0
  loc_D35A63: from_stack_2 = Me.Item(from_stack_1)
  loc_D35A68: FLdPr var_2B4
  loc_D35A6B:  = Me.Value
  loc_D35A70: FLdRfVar var_37C
  loc_D35A73: ConcatVar var_3A4
  loc_D35A77: LitVarStr var_494, " AND NumeLiqu = "
  loc_D35A7C: ConcatVar var_3B4
  loc_D35A80: FLdRfVar var_3D4
  loc_D35A83: FLdRfVar var_33C
  loc_D35A86: LitVarStr var_4B4, "NumeLiqu"
  loc_D35A8B: PopAdLdVar
  loc_D35A8C: FLdRfVar var_328
  loc_D35A8F: FLdPr Me
  loc_D35A92: MemLdPr global_68
  loc_D35A95:  = Me.Fields
  loc_D35A9A: FLdPr var_328
  loc_D35A9D: from_stack_2 = Me.Item(from_stack_1)
  loc_D35AA2: FLdPr var_33C
  loc_D35AA5:  = Me.Value
  loc_D35AAA: FLdRfVar var_3D4
  loc_D35AAD: ConcatVar var_3FC
  loc_D35AB1: LitVarStr var_4D4, " AND CodiCome = "
  loc_D35AB6: ConcatVar var_40C
  loc_D35ABA: FLdRfVar var_41C
  loc_D35ABD: FLdRfVar var_394
  loc_D35AC0: LitVarStr var_524, "CodiCome"
  loc_D35AC5: PopAdLdVar
  loc_D35AC6: FLdRfVar var_380
  loc_D35AC9: FLdPr Me
  loc_D35ACC: MemLdPr global_68
  loc_D35ACF:  = Me.Fields
  loc_D35AD4: FLdPr var_380
  loc_D35AD7: from_stack_2 = Me.Item(from_stack_1)
  loc_D35ADC: FLdPr var_394
  loc_D35ADF:  = Me.Value
  loc_D35AE4: FLdRfVar var_41C
  loc_D35AE7: ConcatVar var_43C
  loc_D35AEB: LitVarStr var_534, " AND CodiConc = '"
  loc_D35AF0: ConcatVar var_464
  loc_D35AF4: FLdRfVar var_474
  loc_D35AF7: FLdRfVar var_3EC
  loc_D35AFA: LitVarStr var_544, "CodiConc"
  loc_D35AFF: PopAdLdVar
  loc_D35B00: FLdRfVar var_3D8
  loc_D35B03: FLdPr Me
  loc_D35B06: MemLdPr global_68
  loc_D35B09:  = Me.Fields
  loc_D35B0E: FLdPr var_3D8
  loc_D35B11: from_stack_2 = Me.Item(from_stack_1)
  loc_D35B16: FLdPr var_3EC
  loc_D35B19:  = Me.Value
  loc_D35B1E: FLdRfVar var_474
  loc_D35B21: ConcatVar var_484
  loc_D35B25: LitVarStr var_554, "' AND TipoVenc = "
  loc_D35B2A: ConcatVar var_4A4
  loc_D35B2E: FLdRfVar var_4C4
  loc_D35B31: FLdRfVar var_454
  loc_D35B34: LitVarStr var_564, "TipoVenc"
  loc_D35B39: PopAdLdVar
  loc_D35B3A: FLdRfVar var_440
  loc_D35B3D: FLdPr Me
  loc_D35B40: MemLdPr global_68
  loc_D35B43:  = Me.Fields
  loc_D35B48: FLdPr var_440
  loc_D35B4B: from_stack_2 = Me.Item(from_stack_1)
  loc_D35B50: FLdPr var_454
  loc_D35B53:  = Me.Value
  loc_D35B58: FLdRfVar var_4C4
  loc_D35B5B: ConcatVar var_4E4
  loc_D35B5F: LitVarStr var_594, ";"
  loc_D35B64: ConcatVar var_514
  loc_D35B68: CStrVarVal var_12C
  loc_D35B6C: Call EjecutarRsCls(from_stack_1v)
  loc_D35B71: FFree1Str var_12C
  loc_D35B74: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_2B4 = "": var_328 = "": var_33C = "": var_380 = "": var_394 = "": var_3D8 = "": var_3EC = "": var_440 = ""
  loc_D35B93: FFreeVar var_4A4 = "": var_4C4 = "": var_4E4 = "": var_514 = "": var_180 = "": var_194 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_22C = "": var_20C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_2C4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = "": var_40C = "": var_41C = "": var_43C = "": var_464 = "": var_474 = ""
  loc_D35BDA: FLdPr Me
  loc_D35BDD: MemLdPr global_68
  loc_D35BE0: Me.MoveNext
  loc_D35BE5: Branch loc_D32614
  loc_D35BE8: FLdRfVar var_194
  loc_D35BEB: FLdRfVar var_184
  loc_D35BEE: LitVarStr var_180, "TipoVenc"
  loc_D35BF3: PopAdLdVar
  loc_D35BF4: FLdRfVar var_170
  loc_D35BF7: FLdPr Me
  loc_D35BFA: MemLdPr global_64
  loc_D35BFD:  = Me.Fields
  loc_D35C02: FLdPr var_170
  loc_D35C05: from_stack_2 = Me.Item(from_stack_1)
  loc_D35C0A: FLdPr var_184
  loc_D35C0D:  = Me.Value
  loc_D35C12: FLdRfVar var_194
  loc_D35C15: FnCIntVar
  loc_D35C17: LitI2_Byte 2
  loc_D35C19: EqI2
  loc_D35C1A: FFreeAd var_170 = ""
  loc_D35C21: FFree1Var var_194 = ""
  loc_D35C24: BranchF loc_D35F74
  loc_D35C27: FLdFPR8 var_10C
  loc_D35C2A: FLdFPR8 var_114
  loc_D35C2D: SubR4
  loc_D35C2E: FLdFPR8 var_11C
  loc_D35C31: SubR4
  loc_D35C32: FLdFPR8 var_124
  loc_D35C35: SubR4
  loc_D35C36: FStFPR8 var_C0
  loc_D35C39: FLdFPR8 var_C0
  loc_D35C3C: LitI2_Byte 0
  loc_D35C3E: CR8I2
  loc_D35C3F: GtR4
  loc_D35C40: BranchF loc_D35F74
  loc_D35C43: FLdRfVar var_2B4
  loc_D35C46: LitVarStr var_2B0, "FeveLian"
  loc_D35C4B: PopAdLdVar
  loc_D35C4C: FLdRfVar var_2A0
  loc_D35C4F: FLdPr Me
  loc_D35C52: MemLdPr global_64
  loc_D35C55:  = Me.Fields
  loc_D35C5A: FLdPr var_2A0
  loc_D35C5D: from_stack_2 = Me.Item(from_stack_1)
  loc_D35C62: LitStr " INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiTili, NumeLiqu, CodiFapa, CuotDefa, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, CrafBole, TotaBole, CodiUsua) "
  loc_D35C65: LitStr " VALUES ("
  loc_D35C68: ConcatStr
  loc_D35C69: FStStrNoPop var_12C
  loc_D35C6C: FLdI2 iPeriodo
  loc_D35C6F: CStrUI1
  loc_D35C71: FStStrNoPop var_130
  loc_D35C74: ConcatStr
  loc_D35C75: FStStrNoPop var_134
  loc_D35C78: LitStr ","
  loc_D35C7B: ConcatStr
  loc_D35C7C: FStStrNoPop var_138
  loc_D35C7F: ILdRf var_9C
  loc_D35C82: CStrI4
  loc_D35C84: FStStrNoPop var_13C
  loc_D35C87: ConcatStr
  loc_D35C88: FStStrNoPop var_140
  loc_D35C8B: LitStr ",7,'"
  loc_D35C8E: ConcatStr
  loc_D35C8F: CVarStr var_1B4
  loc_D35C92: FLdRfVar var_194
  loc_D35C95: FLdRfVar var_184
  loc_D35C98: LitVarStr var_180, "CodiCome"
  loc_D35C9D: PopAdLdVar
  loc_D35C9E: FLdRfVar var_170
  loc_D35CA1: FLdPr Me
  loc_D35CA4: MemLdPr global_64
  loc_D35CA7:  = Me.Fields
  loc_D35CAC: FLdPr var_170
  loc_D35CAF: from_stack_2 = Me.Item(from_stack_1)
  loc_D35CB4: FLdPr var_184
  loc_D35CB7:  = Me.Value
  loc_D35CBC: FLdRfVar var_194
  loc_D35CBF: ConcatVar var_1C4
  loc_D35CC3: LitVarStr var_1A4, "','"
  loc_D35CC8: ConcatVar var_1D4
  loc_D35CCC: FLdRfVar var_1FC
  loc_D35CCF: FLdRfVar var_1EC
  loc_D35CD2: LitVarStr var_1E8, "CucuPers"
  loc_D35CD7: PopAdLdVar
  loc_D35CD8: FLdRfVar var_1D8
  loc_D35CDB: FLdPr Me
  loc_D35CDE: MemLdPr global_64
  loc_D35CE1:  = Me.Fields
  loc_D35CE6: FLdPr var_1D8
  loc_D35CE9: from_stack_2 = Me.Item(from_stack_1)
  loc_D35CEE: FLdPr var_1EC
  loc_D35CF1:  = Me.Value
  loc_D35CF6: FLdRfVar var_1FC
  loc_D35CF9: ConcatVar var_20C
  loc_D35CFD: LitVarStr var_21C, "','"
  loc_D35D02: ConcatVar var_22C
  loc_D35D06: LitI4 1
  loc_D35D0B: LitI4 1
  loc_D35D10: LitVarStr var_24C, "yyyy-mm-dd"
  loc_D35D15: FStVarCopyObj var_25C
  loc_D35D18: FLdRfVar var_25C
  loc_D35D1B: FLdRfVar var_A4
  loc_D35D1E: CVarRef
  loc_D35D23: ImpAdCallI2 Format$(, )
  loc_D35D28: CVarStr var_26C
  loc_D35D2B: ConcatVar var_27C
  loc_D35D2F: LitVarStr var_28C, "','"
  loc_D35D34: ConcatVar var_29C
  loc_D35D38: LitI4 1
  loc_D35D3D: LitI4 1
  loc_D35D42: LitVarStr var_2D4, "yyyy-mm-dd"
  loc_D35D47: FStVarCopyObj var_2E4
  loc_D35D4A: FLdRfVar var_2E4
  loc_D35D4D: FLdZeroAd var_2B4
  loc_D35D50: CVarAd
  loc_D35D54: ImpAdCallI2 Format$(, )
  loc_D35D59: CVarStr var_2F4
  loc_D35D5C: ConcatVar var_304
  loc_D35D60: LitVarStr var_314, "',0,'Anual','Emitido',"
  loc_D35D65: ConcatVar var_324
  loc_D35D69: FLdRfVar var_34C
  loc_D35D6C: FLdRfVar var_33C
  loc_D35D6F: LitVarStr var_338, "CodiTili"
  loc_D35D74: PopAdLdVar
  loc_D35D75: FLdRfVar var_328
  loc_D35D78: FLdPr Me
  loc_D35D7B: MemLdPr global_64
  loc_D35D7E:  = Me.Fields
  loc_D35D83: FLdPr var_328
  loc_D35D86: from_stack_2 = Me.Item(from_stack_1)
  loc_D35D8B: FLdPr var_33C
  loc_D35D8E:  = Me.Value
  loc_D35D93: FLdRfVar var_34C
  loc_D35D96: ConcatVar var_35C
  loc_D35D9A: LitVarStr var_36C, ","
  loc_D35D9F: ConcatVar var_37C
  loc_D35DA3: FLdRfVar var_3A4
  loc_D35DA6: FLdRfVar var_394
  loc_D35DA9: LitVarStr var_390, "NumeLiqu"
  loc_D35DAE: PopAdLdVar
  loc_D35DAF: FLdRfVar var_380
  loc_D35DB2: FLdPr Me
  loc_D35DB5: MemLdPr global_64
  loc_D35DB8:  = Me.Fields
  loc_D35DBD: FLdPr var_380
  loc_D35DC0: from_stack_2 = Me.Item(from_stack_1)
  loc_D35DC5: FLdPr var_394
  loc_D35DC8:  = Me.Value
  loc_D35DCD: FLdRfVar var_3A4
  loc_D35DD0: ConcatVar var_3B4
  loc_D35DD4: LitVarStr var_3C4, ",0,0,"
  loc_D35DD9: ConcatVar var_3D4
  loc_D35DDD: LitI4 0
  loc_D35DE2: LitI4 -1
  loc_D35DE7: LitI4 1
  loc_D35DEC: LitStr "."
  loc_D35DEF: LitStr ","
  loc_D35DF2: FLdFPR8 var_10C
  loc_D35DF5: CStrR8
  loc_D35DF7: FStStrNoPop var_144
  loc_D35DFA: ImpAdCallI2 Replace(, , , , , )
  loc_D35DFF: CVarStr var_3FC
  loc_D35E02: ConcatVar var_40C
  loc_D35E06: LitVarStr var_3E8, ",0,"
  loc_D35E0B: ConcatVar var_41C
  loc_D35E0F: LitI4 0
  loc_D35E14: LitI4 -1
  loc_D35E19: LitI4 1
  loc_D35E1E: LitStr "."
  loc_D35E21: LitStr ","
  loc_D35E24: FLdFPR8 var_114
  loc_D35E27: CStrR8
  loc_D35E29: FStStrNoPop var_148
  loc_D35E2C: ImpAdCallI2 Replace(, , , , , )
  loc_D35E31: CVarStr var_43C
  loc_D35E34: ConcatVar var_464
  loc_D35E38: LitVarStr var_42C, ",0,0,"
  loc_D35E3D: ConcatVar var_474
  loc_D35E41: LitI4 0
  loc_D35E46: LitI4 -1
  loc_D35E4B: LitI4 1
  loc_D35E50: LitStr "."
  loc_D35E53: LitStr ","
  loc_D35E56: FLdFPR8 var_11C
  loc_D35E59: CStrR8
  loc_D35E5B: FStStrNoPop var_14C
  loc_D35E5E: ImpAdCallI2 Replace(, , , , , )
  loc_D35E63: CVarStr var_484
  loc_D35E66: ConcatVar var_4A4
  loc_D35E6A: LitVarStr var_450, ","
  loc_D35E6F: ConcatVar var_4C4
  loc_D35E73: LitI4 0
  loc_D35E78: LitI4 -1
  loc_D35E7D: LitI4 1
  loc_D35E82: LitStr "."
  loc_D35E85: LitStr ","
  loc_D35E88: FLdFPR8 var_124
  loc_D35E8B: CStrR8
  loc_D35E8D: FStStrNoPop var_150
  loc_D35E90: ImpAdCallI2 Replace(, , , , , )
  loc_D35E95: CVarStr var_4E4
  loc_D35E98: ConcatVar var_514
  loc_D35E9C: LitVarStr var_494, ","
  loc_D35EA1: ConcatVar var_574
  loc_D35EA5: LitI4 0
  loc_D35EAA: LitI4 -1
  loc_D35EAF: LitI4 1
  loc_D35EB4: LitStr "."
  loc_D35EB7: LitStr ","
  loc_D35EBA: FLdFPR8 var_C0
  loc_D35EBD: CStrR8
  loc_D35EBF: FStStrNoPop var_154
  loc_D35EC2: ImpAdCallI2 Replace(, , , , , )
  loc_D35EC7: CVarStr var_584
  loc_D35ECA: ConcatVar var_5A4
  loc_D35ECE: LitVarStr var_4B4, ",'"
  loc_D35ED3: ConcatVar var_5C4
  loc_D35ED7: ImpAdLdI4 MemVar_D9302C
  loc_D35EDA: CVarStr var_4D4
  loc_D35EDD: ConcatVar var_5D4
  loc_D35EE1: LitVarStr var_524, "');"
  loc_D35EE6: ConcatVar var_5F4
  loc_D35EEA: CStrVarVal var_158
  loc_D35EEE: Call EjecutarRsCls(from_stack_1v)
  loc_D35EF3: FFreeStr var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_D35F0E: FFreeAd var_170 = "": var_184 = "": var_1D8 = "": var_1EC = "": var_2A0 = "": var_328 = "": var_33C = "": var_380 = ""
  loc_D35F23: FFreeVar var_4C4 = "": var_4E4 = "": var_514 = "": var_574 = "": var_584 = "": var_5A4 = "": var_5C4 = "": var_5D4 = "": var_5F4 = "": var_1B4 = "": var_194 = "": var_1C4 = "": var_1D4 = "": var_1FC = "": var_20C = "": var_25C = "": var_22C = "": var_26C = "": var_27C = "": var_2C4 = "": var_2E4 = "": var_29C = "": var_2F4 = "": var_304 = "": var_324 = "": var_34C = "": var_35C = "": var_37C = "": var_3A4 = "": var_3B4 = "": var_3D4 = "": var_3FC = "": var_40C = "": var_41C = "": var_43C = "": var_464 = "": var_474 = "": var_484 = ""
  loc_D35F74: FLdPr Me
  loc_D35F77: MemLdPr global_64
  loc_D35F7A: Me.MoveNext
  loc_D35F7F: Branch loc_D31FD3
  loc_D35F82: LitStr "COMMIT;"
  loc_D35F85: Call EjecutarRsCls(from_stack_1v)
  loc_D35F8A: ExitProcCbHresult
  loc_D35F90: LitStr "rollback"
  loc_D35F93: Call EjecutarRsCls(from_stack_1v)
  loc_D35F98: LitVarStr var_1A4, " "
  loc_D35F9D: FLdRfVar var_194
  loc_D35FA0: FLdRfVar var_184
  loc_D35FA3: LitVarStr var_180, "CodiCome"
  loc_D35FA8: PopAdLdVar
  loc_D35FA9: FLdRfVar var_170
  loc_D35FAC: FLdPr Me
  loc_D35FAF: MemLdPr global_64
  loc_D35FB2:  = Me.Fields
  loc_D35FB7: FLdPr var_170
  loc_D35FBA: from_stack_2 = Me.Item(from_stack_1)
  loc_D35FBF: FLdPr var_184
  loc_D35FC2:  = Me.Value
  loc_D35FC7: FLdRfVar var_194
  loc_D35FCA: ConcatVar var_1B4
  loc_D35FCE: CStrVarTmp
  loc_D35FCF: FStStr var_88
  loc_D35FD2: FFreeAd var_170 = ""
  loc_D35FD9: FFreeVar var_194 = ""
  loc_D35FE0: ExitProcCbHresult
End Function

Public Function BuscaDeudaDeBimestreParaLaEmisionMasiva(sCuenCtct, iPeriCtct, iBimeCtct) 'AA69E8
  'Data Table: 484E94
  loc_AA6944: ILdRf sCuenCtct
  loc_AA6947: FStStrCopy var_8C
  loc_AA694A: LitI2_Byte 0
  loc_AA694C: FStI2 var_86
  loc_AA694F: LitStr " SELECT * FROM  ctacte USE INDEX (idxctacte09)"
  loc_AA6952: LitStr " WHERE ctacte.CodiOfic = 7"
  loc_AA6955: ConcatStr
  loc_AA6956: FStStrNoPop var_90
  loc_AA6959: LitStr " AND ctacte.CuenCtct = '"
  loc_AA695C: ConcatStr
  loc_AA695D: FStStrNoPop BuscaDeudaDeBimestreParaLaEmisionMasiva
  loc_AA6960: ILdRf var_8C
  loc_AA6963: ConcatStr
  loc_AA6964: FStStrNoPop var_98
  loc_AA6967: LitStr "'"
  loc_AA696A: ConcatStr
  loc_AA696B: FStStrNoPop var_9C
  loc_AA696E: LitStr " AND ctacte.PeriCtct = "
  loc_AA6971: ConcatStr
  loc_AA6972: FStStrNoPop var_A0
  loc_AA6975: FLdI2 iPeriCtct
  loc_AA6978: CStrUI1
  loc_AA697A: FStStrNoPop var_A4
  loc_AA697D: ConcatStr
  loc_AA697E: FStStrNoPop var_A8
  loc_AA6981: LitStr " AND ctacte.BimeCtct = "
  loc_AA6984: ConcatStr
  loc_AA6985: FStStrNoPop var_AC
  loc_AA6988: FLdI2 iBimeCtct
  loc_AA698B: CStrUI1
  loc_AA698D: FStStrNoPop var_B0
  loc_AA6990: ConcatStr
  loc_AA6991: FStStrNoPop var_B4
  loc_AA6994: LitStr " AND ctacte.CodiConc = '13020601'"
  loc_AA6997: ConcatStr
  loc_AA6998: FStStrNoPop var_B8
  loc_AA699B: Call EjecutarRsCls2(from_stack_1v)
  loc_AA69A0: FFreeStr var_90 = "": BuscaDeudaDeBimestreParaLaEmisionMasiva = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_AA69B9: FLdRfVar var_BC
  loc_AA69BC: FLdPr Me
  loc_AA69BF: MemLdPr global_64
  loc_AA69C2:  = Me.RecordCount
  loc_AA69C7: ILdRf var_BC
  loc_AA69CA: LitI4 0
  loc_AA69CF: GtI4
  loc_AA69D0: BranchF loc_AA69DB
  loc_AA69D3: LitI2_Byte 0
  loc_AA69D5: FStI2 var_86
  loc_AA69D8: Branch loc_AA69E0
  loc_AA69DB: LitI2_Byte &HFF
  loc_AA69DD: FStI2 var_86
  loc_AA69E0: ExitProcCbHresult
End Function

Private Function Proc_328_94_9F3230() '9F3230
  'Data Table: 484E94
  loc_9F320C: LitStr "Primary"
  loc_9F320F: FLdPr Me
  loc_9F3212: LateIdLdVar var_94 DispID_4 0
  loc_9F3219: CastAdVar Me
  loc_9F321D: FStAdFunc var_98
  loc_9F3220: FLdPr var_98
  loc_9F3228: FFree1Ad var_98
  loc_9F322B: FFree1Var var_94 = ""
  loc_9F322E: ExitProcHresult
End Function

Private Function Proc_328_95_9E3F7C(arg_C) '9E3F7C
  'Data Table: 484E94
  loc_9E3F60: ILdI4 arg_C
  loc_9E3F63: FStStrCopy var_88
  loc_9E3F66: ILdRf var_88
  loc_9E3F69: LitStr "Primary"
  loc_9E3F6C: EqStr
  loc_9E3F6E: BranchF loc_9E3F7B
  loc_9E3F71: FLdPr Me
  loc_9E3F74: MemLdStr RsFrm
  loc_9E3F77: IStAd
  loc_9E3F7B: ExitProcHresult
End Function
