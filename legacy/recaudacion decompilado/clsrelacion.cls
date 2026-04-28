VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsrelacion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject
Public RsCls As New UnkObject
Public Rs2 As New UnkObject


Public Function RsFrmGet() '4348EC
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4348FB
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '43490A
  RsFrm = Value
End Sub

Public Function RsClsGet() '434919
  RsClsGet = RsCls
End Function

Public Sub RsClsPut(Value) '434928
  RsCls = Value
End Sub

Public Sub RsClsSet(Value) '434937
  RsCls = Value
End Sub

Public Function Rs2Get() '434946
  Rs2Get = Rs2
End Function

Public Sub Rs2Put(Value) '434955
  Rs2 = Value
End Sub

Public Sub Rs2Set(Value) '434964
  Rs2 = Value
End Sub

Public Sub MoveFirst(arg_10) '9EBEBC
  'Data Table: 434588
  loc_9EBE94: FLdRfVar var_88
  loc_9EBE97: FLdPr Me
  loc_9EBE9A: MemLdPr RsFrm
  loc_9EBE9D:  = Me.RecordCount
  loc_9EBEA2: ILdRf var_88
  loc_9EBEA5: LitI4 0
  loc_9EBEAA: GtI4
  loc_9EBEAB: BranchF loc_9EBEB9
  loc_9EBEAE: FLdPr Me
  loc_9EBEB1: MemLdPr RsFrm
  loc_9EBEB4: Me.MoveFirst
  loc_9EBEB9: ExitProcHresult
  loc_9EBEBA: FStStrCopy arg_1000
End Sub

Public Sub MoveLast(arg_10) '9EC01C
  'Data Table: 434588
  loc_9EBFF4: FLdRfVar var_88
  loc_9EBFF7: FLdPr Me
  loc_9EBFFA: MemLdPr RsFrm
  loc_9EBFFD:  = Me.RecordCount
  loc_9EC002: ILdRf var_88
  loc_9EC005: LitI4 0
  loc_9EC00A: GtI4
  loc_9EC00B: BranchF loc_9EC019
  loc_9EC00E: FLdPr Me
  loc_9EC011: MemLdPr RsFrm
  loc_9EC014: Me.MoveLast
  loc_9EC019: ExitProcHresult
  loc_9EC01A: FStStrCopy arg_1000
End Sub

Public Sub MoveNext() 'A53270
  'Data Table: 434588
  loc_A53210: FLdRfVar var_86
  loc_A53213: FLdPr Me
  loc_A53216: MemLdPr RsFrm
  loc_A53219:  = Me.EOF
  loc_A5321E: FLdI2 var_86
  loc_A53221: NotI4
  loc_A53222: BranchF loc_A53230
  loc_A53225: FLdPr Me
  loc_A53228: MemLdPr RsFrm
  loc_A5322B: Me.MoveNext
  loc_A53230: FLdRfVar var_86
  loc_A53233: FLdPr Me
  loc_A53236: MemLdPr RsFrm
  loc_A53239:  = Me.EOF
  loc_A5323E: FLdI2 var_86
  loc_A53241: FLdRfVar var_8C
  loc_A53244: FLdPr Me
  loc_A53247: MemLdPr RsFrm
  loc_A5324A:  = Me.RecordCount
  loc_A5324F: ILdRf var_8C
  loc_A53252: LitI4 0
  loc_A53257: GtI4
  loc_A53258: AndI4
  loc_A53259: BranchF loc_A5326C
  loc_A5325C: ImpAdCallFPR4 Beep()
  loc_A53261: FLdPr Me
  loc_A53264: MemLdPr RsFrm
  loc_A53267: Me.MoveLast
  loc_A5326C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B1BB4
  'Data Table: 434588
  loc_9B1BA8: FLdPr Me
  loc_9B1BAB: MemLdPr RsFrm
  loc_9B1BAE: Me.MoveNext
  loc_9B1BB3: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A53030
  'Data Table: 434588
  loc_A52FD0: FLdRfVar var_86
  loc_A52FD3: FLdPr Me
  loc_A52FD6: MemLdPr RsFrm
  loc_A52FD9:  = Me.BOF
  loc_A52FDE: FLdI2 var_86
  loc_A52FE1: NotI4
  loc_A52FE2: BranchF loc_A52FF0
  loc_A52FE5: FLdPr Me
  loc_A52FE8: MemLdPr RsFrm
  loc_A52FEB: Me.MovePrevious
  loc_A52FF0: FLdRfVar var_86
  loc_A52FF3: FLdPr Me
  loc_A52FF6: MemLdPr RsFrm
  loc_A52FF9:  = Me.BOF
  loc_A52FFE: FLdI2 var_86
  loc_A53001: FLdRfVar var_8C
  loc_A53004: FLdPr Me
  loc_A53007: MemLdPr RsFrm
  loc_A5300A:  = Me.RecordCount
  loc_A5300F: ILdRf var_8C
  loc_A53012: LitI4 0
  loc_A53017: GtI4
  loc_A53018: AndI4
  loc_A53019: BranchF loc_A5302C
  loc_A5301C: ImpAdCallFPR4 Beep()
  loc_A53021: FLdPr Me
  loc_A53024: MemLdPr RsFrm
  loc_A53027: Me.MoveFirst
  loc_A5302C: ExitProcHresult
End Sub

Public Property Get EOF() '9D7744
  'Data Table: 434588
  loc_9D7728: FLdRfVar var_88
  loc_9D772B: FLdPr Me
  loc_9D772E: MemLdPr RsFrm
  loc_9D7731:  = Me.EOF
  loc_9D7736: FLdI2 var_88
  loc_9D7739: FStI2 var_86
  loc_9D773C: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D7498
  'Data Table: 434588
  loc_9D747C: FLdRfVar var_88
  loc_9D747F: FLdPr Me
  loc_9D7482: MemLdPr RsFrm
  loc_9D7485:  = Me.BOF
  loc_9D748A: FLdI2 var_88
  loc_9D748D: FStI2 var_86
  loc_9D7490: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B3EB8
  'Data Table: 434588
  loc_9B3EA8: ILdI4 sOrden
  loc_9B3EAB: FLdPr Me
  loc_9B3EAE: MemLdPr RsFrm
  loc_9B3EB1: Me.Sort = from_stack_1
  loc_9B3EB6: ExitProcHresult
End Sub

Public Sub Find(sCriterio) '9E4A70
  'Data Table: 434588
  loc_9E4A50: LitVar_Missing var_94
  loc_9E4A53: PopAdLdVar
  loc_9E4A54: LitI4 1
  loc_9E4A59: LitI4 0
  loc_9E4A5E: ILdI4 sCriterio
  loc_9E4A61: FLdPr Me
  loc_9E4A64: MemLdPr RsFrm
  loc_9E4A67: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E4A6C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9B9848
  'Data Table: 434588
  loc_9B9834: ILdI4 sCriterio
  loc_9B9837: CVarStr var_94
  loc_9B983A: PopAdLdVar
  loc_9B983B: FLdPr Me
  loc_9B983E: MemLdPr RsFrm
  loc_9B9841: Me.Filter = from_stack_1
  loc_9B9846: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D7284
  'Data Table: 434588
  loc_9D7268: FLdRfVar var_8C
  loc_9D726B: FLdPr Me
  loc_9D726E: MemLdPr RsFrm
  loc_9D7271:  = Me.AbsolutePosition
  loc_9D7276: ILdRf var_8C
  loc_9D7279: FStR4 var_88
  loc_9D727C: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D70BC
  'Data Table: 434588
  loc_9D70A0: FLdRfVar var_8C
  loc_9D70A3: FLdPr Me
  loc_9D70A6: MemLdPr RsFrm
  loc_9D70A9:  = Me.RecordCount
  loc_9D70AE: ILdRf var_8C
  loc_9D70B1: FStR4 var_88
  loc_9D70B4: ExitProcCbHresult
End Sub

Public Sub AddNew(CucuPers, CodiOfic, CuenCtct, TipoRela, PorcRela) 'B09014
  'Data Table: 434588
  loc_B08E48: ILdRf CucuPers
  loc_B08E4B: FStStrCopy var_88
  loc_B08E4E: ILdRf CuenCtct
  loc_B08E51: FStStrCopy var_8C
  loc_B08E54: ILdRf TipoRela
  loc_B08E57: FStStrCopy var_90
  loc_B08E5A: FLdRfVar var_94
  loc_B08E5D: ILdRf var_8C
  loc_B08E60: FLdUI1
  loc_B08E64: ILdRf var_88
  loc_B08E67: from_stack_4v = NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B08E6C: FLdUI1
  loc_B08E70: FStUI1 var_92
  loc_B08E74: FLdRfVar var_98
  loc_B08E77: FLdUI1
  loc_B08E7B: ILdRf var_8C
  loc_B08E7E: FLdUI1
  loc_B08E82: ILdRf var_88
  loc_B08E85: from_stack_5v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B08E8A: ILdRf var_98
  loc_B08E8D: LitStr vbNullString
  loc_B08E90: EqStr
  loc_B08E92: FFree1Str var_98
  loc_B08E95: BranchF loc_B09012
  loc_B08E98: LitI2_Byte 0
  loc_B08E9A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B08E9F: FStFPR8 var_130
  loc_B08EA2: LitStr "INSERT INTO relacion (CucuPers,CodiOfic,CuenCtct,NumeRela,TipoRela,FealRela,PorcRela,CodiUsua) VALUES ('"
  loc_B08EA5: ILdRf var_88
  loc_B08EA8: ConcatStr
  loc_B08EA9: FStStrNoPop var_98
  loc_B08EAC: LitStr "',"
  loc_B08EAF: ConcatStr
  loc_B08EB0: FStStrNoPop var_9C
  loc_B08EB3: FLdUI1
  loc_B08EB7: CStrI2
  loc_B08EB9: FStStrNoPop var_A0
  loc_B08EBC: ConcatStr
  loc_B08EBD: FStStrNoPop var_A4
  loc_B08EC0: LitStr ",'"
  loc_B08EC3: ConcatStr
  loc_B08EC4: FStStrNoPop var_A8
  loc_B08EC7: ILdRf var_8C
  loc_B08ECA: ConcatStr
  loc_B08ECB: FStStrNoPop var_AC
  loc_B08ECE: LitStr "',"
  loc_B08ED1: ConcatStr
  loc_B08ED2: FStStrNoPop var_B0
  loc_B08ED5: FLdUI1
  loc_B08ED9: CStrI2
  loc_B08EDB: FStStrNoPop var_B4
  loc_B08EDE: ConcatStr
  loc_B08EDF: FStStrNoPop var_B8
  loc_B08EE2: LitStr ",'"
  loc_B08EE5: ConcatStr
  loc_B08EE6: FStStrNoPop var_BC
  loc_B08EE9: ILdRf var_90
  loc_B08EEC: ConcatStr
  loc_B08EED: FStStrNoPop var_C0
  loc_B08EF0: LitStr "','"
  loc_B08EF3: ConcatStr
  loc_B08EF4: FStStrNoPop var_104
  loc_B08EF7: LitI4 1
  loc_B08EFC: LitI4 1
  loc_B08F01: LitVarStr var_F0, "yyyy-mm-dd"
  loc_B08F06: FStVarCopyObj var_100
  loc_B08F09: FLdRfVar var_100
  loc_B08F0C: FLdFPR8 var_130
  loc_B08F0F: CVarDate var_E0
  loc_B08F13: ImpAdCallI2 Format$(, )
  loc_B08F18: FStStrNoPop var_108
  loc_B08F1B: ConcatStr
  loc_B08F1C: FStStrNoPop var_10C
  loc_B08F1F: LitStr "',"
  loc_B08F22: ConcatStr
  loc_B08F23: FStStrNoPop var_114
  loc_B08F26: LitI4 0
  loc_B08F2B: LitI4 -1
  loc_B08F30: LitI4 1
  loc_B08F35: LitStr "."
  loc_B08F38: LitStr ","
  loc_B08F3B: FLdFPR8 PorcRela
  loc_B08F3E: CStrR8
  loc_B08F40: FStStrNoPop var_110
  loc_B08F43: ImpAdCallI2 Replace(, , , , , )
  loc_B08F48: FStStrNoPop var_118
  loc_B08F4B: ConcatStr
  loc_B08F4C: FStStrNoPop var_11C
  loc_B08F4F: LitStr ",'"
  loc_B08F52: ConcatStr
  loc_B08F53: FStStrNoPop var_120
  loc_B08F56: ImpAdLdI4 MemVar_D9302C
  loc_B08F59: ConcatStr
  loc_B08F5A: FStStrNoPop var_124
  loc_B08F5D: LitStr "');"
  loc_B08F60: ConcatStr
  loc_B08F61: FStStrNoPop var_128
  loc_B08F64: Call EjecutarRs2(from_stack_1v)
  loc_B08F69: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_B08F96: FFreeVar var_E0 = ""
  loc_B08F9D: LitStr " SET @i:=0;"
  loc_B08FA0: LitStr " SELECT SUM(PorcRela) as PorcRela, @i:=SUM(PorcRela) FROM relacion WHERE CodiOfic = "
  loc_B08FA3: ConcatStr
  loc_B08FA4: FStStrNoPop var_98
  loc_B08FA7: FLdUI1
  loc_B08FAB: CStrI2
  loc_B08FAD: FStStrNoPop var_9C
  loc_B08FB0: ConcatStr
  loc_B08FB1: FStStrNoPop var_A0
  loc_B08FB4: LitStr " AND CuenCtct = '"
  loc_B08FB7: ConcatStr
  loc_B08FB8: FStStrNoPop var_A4
  loc_B08FBB: ILdRf var_8C
  loc_B08FBE: ConcatStr
  loc_B08FBF: FStStrNoPop var_A8
  loc_B08FC2: LitStr "' AND TipoRela = 'Propietario' AND FebaRela IS NULL ;"
  loc_B08FC5: ConcatStr
  loc_B08FC6: FStStrNoPop var_AC
  loc_B08FC9: LitStr " UPDATE relacion SET  PorcRela = ROUND(100 - @i,2) WHERE CodiOfic = "
  loc_B08FCC: ConcatStr
  loc_B08FCD: FStStrNoPop var_B0
  loc_B08FD0: FLdUI1
  loc_B08FD4: CStrI2
  loc_B08FD6: FStStrNoPop var_B4
  loc_B08FD9: ConcatStr
  loc_B08FDA: FStStrNoPop var_B8
  loc_B08FDD: LitStr " AND CuenCtct = '"
  loc_B08FE0: ConcatStr
  loc_B08FE1: FStStrNoPop var_BC
  loc_B08FE4: ILdRf var_8C
  loc_B08FE7: ConcatStr
  loc_B08FE8: FStStrNoPop var_C0
  loc_B08FEB: LitStr "' AND TipoRela = 'Titular' AND FebaRela IS NULL;"
  loc_B08FEE: ConcatStr
  loc_B08FEF: FStStrNoPop var_104
  loc_B08FF2: Call EjecutarRs2(from_stack_1v)
  loc_B08FF7: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B09012: ExitProcHresult
End Sub

Public Sub Delete(sCucuPers, iCodiOfic, sCuenCtct, iNumeRela) 'A8F604
  'Data Table: 434588
  loc_A8F584: ILdRf sCucuPers
  loc_A8F587: FStStrCopy var_88
  loc_A8F58A: ILdRf sCuenCtct
  loc_A8F58D: FStStrCopy var_8C
  loc_A8F590: LitStr "DELETE FROM relacion WHERE CucuPers = '"
  loc_A8F593: ILdRf var_88
  loc_A8F596: ConcatStr
  loc_A8F597: FStStrNoPop var_90
  loc_A8F59A: LitStr "' AND CodiOfic = "
  loc_A8F59D: ConcatStr
  loc_A8F59E: FStStrNoPop var_94
  loc_A8F5A1: FLdUI1
  loc_A8F5A5: CStrI2
  loc_A8F5A7: FStStrNoPop var_98
  loc_A8F5AA: ConcatStr
  loc_A8F5AB: FStStrNoPop var_9C
  loc_A8F5AE: LitStr " AND CuenCtct = '"
  loc_A8F5B1: ConcatStr
  loc_A8F5B2: FStStrNoPop var_A0
  loc_A8F5B5: ILdRf var_8C
  loc_A8F5B8: ConcatStr
  loc_A8F5B9: FStStrNoPop var_A4
  loc_A8F5BC: LitStr "' AND NumeRela = "
  loc_A8F5BF: ConcatStr
  loc_A8F5C0: FStStrNoPop var_A8
  loc_A8F5C3: FLdI2 iNumeRela
  loc_A8F5C6: CStrUI1
  loc_A8F5C8: FStStrNoPop var_AC
  loc_A8F5CB: ConcatStr
  loc_A8F5CC: FStStrNoPop var_B0
  loc_A8F5CF: LitStr ";"
  loc_A8F5D2: ConcatStr
  loc_A8F5D3: FStStrNoPop var_B4
  loc_A8F5D6: Call EjecutarRs2(from_stack_1v)
  loc_A8F5DB: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A8F5F2: ILdRf var_8C
  loc_A8F5F5: FLdUI1
  loc_A8F5F9: Call ActualizaPorcentaje(from_stack_1v, from_stack_2v)
  loc_A8F5FE: Call Requery()
  loc_A8F603: ExitProcHresult
End Sub

Public Sub BajaPoseedor(sCucuPers, iCodiOfic, sCuenCtct, iNumeRela) 'AC965C
  'Data Table: 434588
  loc_AC9584: ILdRf sCucuPers
  loc_AC9587: FStStrCopy var_88
  loc_AC958A: ILdRf sCuenCtct
  loc_AC958D: FStStrCopy var_8C
  loc_AC9590: LitI2_Byte 0
  loc_AC9592: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AC9597: FStFPR8 var_110
  loc_AC959A: LitStr "UPDATE relacion SET FebaRela = "
  loc_AC959D: LitI4 1
  loc_AC95A2: LitI4 1
  loc_AC95A7: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_AC95AC: FStVarCopyObj var_CC
  loc_AC95AF: FLdRfVar var_CC
  loc_AC95B2: FLdFPR8 var_110
  loc_AC95B5: CVarDate var_AC
  loc_AC95B9: ImpAdCallI2 Format$(, )
  loc_AC95BE: FStStrNoPop var_D0
  loc_AC95C1: ConcatStr
  loc_AC95C2: FStStrNoPop var_D4
  loc_AC95C5: LitStr ", MobaRela = 'BAJA DE POSEEDOR', CodiUsua = '"
  loc_AC95C8: ConcatStr
  loc_AC95C9: FStStrNoPop var_D8
  loc_AC95CC: ImpAdLdI4 MemVar_D9302C
  loc_AC95CF: ConcatStr
  loc_AC95D0: FStStrNoPop var_DC
  loc_AC95D3: LitStr "' WHERE CucuPers = '"
  loc_AC95D6: ConcatStr
  loc_AC95D7: FStStrNoPop var_E0
  loc_AC95DA: ILdRf var_88
  loc_AC95DD: ConcatStr
  loc_AC95DE: FStStrNoPop var_E4
  loc_AC95E1: LitStr "' AND CodiOfic = "
  loc_AC95E4: ConcatStr
  loc_AC95E5: FStStrNoPop var_E8
  loc_AC95E8: FLdUI1
  loc_AC95EC: CStrI2
  loc_AC95EE: FStStrNoPop var_EC
  loc_AC95F1: ConcatStr
  loc_AC95F2: FStStrNoPop var_F0
  loc_AC95F5: LitStr " AND CuenCtct = '"
  loc_AC95F8: ConcatStr
  loc_AC95F9: FStStrNoPop var_F4
  loc_AC95FC: ILdRf var_8C
  loc_AC95FF: ConcatStr
  loc_AC9600: FStStrNoPop var_F8
  loc_AC9603: LitStr "' AND NumeRela = "
  loc_AC9606: ConcatStr
  loc_AC9607: FStStrNoPop var_FC
  loc_AC960A: FLdI2 iNumeRela
  loc_AC960D: CStrUI1
  loc_AC960F: FStStrNoPop var_100
  loc_AC9612: ConcatStr
  loc_AC9613: FStStrNoPop var_104
  loc_AC9616: LitStr ";"
  loc_AC9619: ConcatStr
  loc_AC961A: FStStrNoPop var_108
  loc_AC961D: Call EjecutarRs2(from_stack_1v)
  loc_AC9622: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_AC9643: FFreeVar var_AC = ""
  loc_AC964A: ILdRf var_8C
  loc_AC964D: FLdUI1
  loc_AC9651: Call ActualizaPorcentaje(from_stack_1v, from_stack_2v)
  loc_AC9656: Call Requery()
  loc_AC965B: ExitProcHresult
End Sub

Public Sub BajaPropietario(sCucuPers, iCodiOfic, sCuenCtct, iNumeRela, sMobaRela) 'AD5A3C
  'Data Table: 434588
  loc_AD594C: ILdRf sCucuPers
  loc_AD594F: FStStrCopy var_88
  loc_AD5952: ILdRf sCuenCtct
  loc_AD5955: FStStrCopy var_8C
  loc_AD5958: ILdRf sMobaRela
  loc_AD595B: FStStrCopy var_90
  loc_AD595E: LitI2_Byte 0
  loc_AD5960: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AD5965: FStFPR8 var_11C
  loc_AD5968: LitStr "UPDATE relacion SET FebaRela = "
  loc_AD596B: LitI4 1
  loc_AD5970: LitI4 1
  loc_AD5975: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_AD597A: FStVarCopyObj var_D0
  loc_AD597D: FLdRfVar var_D0
  loc_AD5980: FLdFPR8 var_11C
  loc_AD5983: CVarDate var_B0
  loc_AD5987: ImpAdCallI2 Format$(, )
  loc_AD598C: FStStrNoPop var_D4
  loc_AD598F: ConcatStr
  loc_AD5990: FStStrNoPop var_D8
  loc_AD5993: LitStr ", MobaRela = '"
  loc_AD5996: ConcatStr
  loc_AD5997: FStStrNoPop var_DC
  loc_AD599A: ILdRf var_90
  loc_AD599D: ConcatStr
  loc_AD599E: FStStrNoPop var_E0
  loc_AD59A1: LitStr "', CodiUsua = '"
  loc_AD59A4: ConcatStr
  loc_AD59A5: FStStrNoPop var_E4
  loc_AD59A8: ImpAdLdI4 MemVar_D9302C
  loc_AD59AB: ConcatStr
  loc_AD59AC: FStStrNoPop var_E8
  loc_AD59AF: LitStr "' WHERE CucuPers = '"
  loc_AD59B2: ConcatStr
  loc_AD59B3: FStStrNoPop var_EC
  loc_AD59B6: ILdRf var_88
  loc_AD59B9: ConcatStr
  loc_AD59BA: FStStrNoPop var_F0
  loc_AD59BD: LitStr "' AND CodiOfic = "
  loc_AD59C0: ConcatStr
  loc_AD59C1: FStStrNoPop var_F4
  loc_AD59C4: FLdUI1
  loc_AD59C8: CStrI2
  loc_AD59CA: FStStrNoPop var_F8
  loc_AD59CD: ConcatStr
  loc_AD59CE: FStStrNoPop var_FC
  loc_AD59D1: LitStr " AND CuenCtct = '"
  loc_AD59D4: ConcatStr
  loc_AD59D5: FStStrNoPop var_100
  loc_AD59D8: ILdRf var_8C
  loc_AD59DB: ConcatStr
  loc_AD59DC: FStStrNoPop var_104
  loc_AD59DF: LitStr "' AND NumeRela = "
  loc_AD59E2: ConcatStr
  loc_AD59E3: FStStrNoPop var_108
  loc_AD59E6: FLdI2 iNumeRela
  loc_AD59E9: CStrUI1
  loc_AD59EB: FStStrNoPop var_10C
  loc_AD59EE: ConcatStr
  loc_AD59EF: FStStrNoPop var_110
  loc_AD59F2: LitStr ";"
  loc_AD59F5: ConcatStr
  loc_AD59F6: FStStrNoPop var_114
  loc_AD59F9: Call EjecutarRs2(from_stack_1v)
  loc_AD59FE: FFreeStr var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_AD5A23: FFreeVar var_B0 = ""
  loc_AD5A2A: ILdRf var_8C
  loc_AD5A2D: FLdUI1
  loc_AD5A31: Call ActualizaPorcentaje(from_stack_1v, from_stack_2v)
  loc_AD5A36: Call Requery()
  loc_AD5A3B: ExitProcHresult
End Sub

Public Sub Requery() '9E5CD0
  'Data Table: 434588
  loc_9E5CAC: LitI4 -1
  loc_9E5CB1: FLdPr Me
  loc_9E5CB4: MemLdPr RsFrm
  loc_9E5CB7: Me.Requery from_stack_1
  loc_9E5CBC: LitVarStr var_94, "Primary"
  loc_9E5CC1: PopAdLdVar
  loc_9E5CC2: FLdPr Me
  loc_9E5CC5: LateIdCall
  loc_9E5CCD: ExitProcHresult
End Sub

Public Sub Update() 'A0BAA4
  'Data Table: 434588
  loc_A0BA68: FLdPr Me
  loc_A0BA6B: MemLdStr RsFrm
  loc_A0BA6E: FStAd var_88 
  loc_A0BA72: LitI4 3
  loc_A0BA77: FLdPr var_88
  loc_A0BA7A: Me.UpdateBatch
  loc_A0BA7F: FLdRfVar var_8C
  loc_A0BA82: FLdPr var_88
  loc_A0BA85:  = Me.EditMode
  loc_A0BA8A: ILdRf var_8C
  loc_A0BA8D: LitI4 2
  loc_A0BA92: EqI4
  loc_A0BA93: BranchF loc_A0BA9B
  loc_A0BA96: Call MoveLast(from_stack_1v)
  loc_A0BA9B: LitNothing
  loc_A0BA9D: FStAd var_88 
  loc_A0BAA1: ExitProcHresult
End Sub

Public Sub Cancel() 'A28F2C
  'Data Table: 434588
  loc_A28EE0: FLdPr Me
  loc_A28EE3: MemLdStr RsFrm
  loc_A28EE6: FStAd var_88 
  loc_A28EEA: FLdRfVar var_8C
  loc_A28EED: FLdPr var_88
  loc_A28EF0:  = Me.RecordCount
  loc_A28EF5: ILdRf var_8C
  loc_A28EF8: LitI4 0
  loc_A28EFD: GtI4
  loc_A28EFE: BranchF loc_A28F25
  loc_A28F01: FLdPr var_88
  loc_A28F04: Me.CancelUpdate
  loc_A28F09: FLdRfVar var_8C
  loc_A28F0C: FLdPr var_88
  loc_A28F0F:  = Me.EditMode
  loc_A28F14: ILdRf var_8C
  loc_A28F17: LitI4 2
  loc_A28F1C: EqI4
  loc_A28F1D: BranchF loc_A28F25
  loc_A28F20: Call MoveFirst(from_stack_1v)
  loc_A28F25: LitNothing
  loc_A28F27: FStAd var_88 
  loc_A28F2B: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9E4430
  'Data Table: 434588
  loc_9E4410: FLdRfVar var_8C
  loc_9E4413: FLdPr Me
  loc_9E4416: MemLdPr RsFrm
  loc_9E4419:  = Me.EditMode
  loc_9E441E: ILdRf var_8C
  loc_9E4421: LitI4 0
  loc_9E4426: NeI4
  loc_9E4427: FStI2 var_86
  loc_9E442A: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A6009C
  'Data Table: 434588
  loc_A60038: ILdRf sSelect
  loc_A6003B: FStStrCopy var_88
  loc_A6003E: LitNothing
  loc_A60040: CastAd
  loc_A60043: FStAdFuncNoPop
  loc_A60046: FLdPr Me
  loc_A60049: MemStAd
  loc_A6004D: FFree1Ad var_8C
  loc_A60050: New Recordset
  loc_A60054: FStAdFuncNoPop
  loc_A60057: FLdPr Me
  loc_A6005A: MemStAd
  loc_A6005E: FFree1Ad var_8C
  loc_A60061: LitI4 -1
  loc_A60066: LitI4 3
  loc_A6006B: LitI4 3
  loc_A60070: ImpAdLdI4 MemVar_D9301C
  loc_A60073: CVarAd
  loc_A60077: PopAdLdVar
  loc_A60078: ILdRf var_88
  loc_A6007B: CVarStr var_9C
  loc_A6007E: PopAdLdVar
  loc_A6007F: FLdPr Me
  loc_A60082: MemLdPr RsFrm
  loc_A60085: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6008A: LitVarStr var_9C, "Primary"
  loc_A6008F: PopAdLdVar
  loc_A60090: FLdPr Me
  loc_A60093: LateIdCall
  loc_A6009B: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A4EF90
  'Data Table: 434588
  loc_A4EF3C: ILdRf sSelect
  loc_A4EF3F: FStStrCopy var_88
  loc_A4EF42: LitNothing
  loc_A4EF44: CastAd
  loc_A4EF47: FStAdFuncNoPop
  loc_A4EF4A: FLdPr Me
  loc_A4EF4D: MemStAd
  loc_A4EF51: FFree1Ad var_8C
  loc_A4EF54: New Recordset
  loc_A4EF58: FStAdFuncNoPop
  loc_A4EF5B: FLdPr Me
  loc_A4EF5E: MemStAd
  loc_A4EF62: FFree1Ad var_8C
  loc_A4EF65: LitI4 -1
  loc_A4EF6A: LitI4 3
  loc_A4EF6F: LitI4 3
  loc_A4EF74: ImpAdLdI4 MemVar_D9301C
  loc_A4EF77: CVarAd
  loc_A4EF7B: PopAdLdVar
  loc_A4EF7C: ILdRf var_88
  loc_A4EF7F: CVarStr var_9C
  loc_A4EF82: PopAdLdVar
  loc_A4EF83: FLdPr Me
  loc_A4EF86: MemLdPr RsCls
  loc_A4EF89: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4EF8E: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A47F74
  'Data Table: 434588
  loc_A47F20: ILdRf sSelect
  loc_A47F23: FStStrCopy var_88
  loc_A47F26: LitNothing
  loc_A47F28: CastAd
  loc_A47F2B: FStAdFuncNoPop
  loc_A47F2E: FLdPr Me
  loc_A47F31: MemStAd
  loc_A47F35: FFree1Ad var_8C
  loc_A47F38: New Recordset
  loc_A47F3C: FStAdFuncNoPop
  loc_A47F3F: FLdPr Me
  loc_A47F42: MemStAd
  loc_A47F46: FFree1Ad var_8C
  loc_A47F49: LitI4 -1
  loc_A47F4E: LitI4 3
  loc_A47F53: LitI4 3
  loc_A47F58: ImpAdLdI4 MemVar_D9301C
  loc_A47F5B: CVarAd
  loc_A47F5F: PopAdLdVar
  loc_A47F60: ILdRf var_88
  loc_A47F63: CVarStr var_9C
  loc_A47F66: PopAdLdVar
  loc_A47F67: FLdPr Me
  loc_A47F6A: MemLdPr Rs2
  loc_A47F6D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A47F72: ExitProcHresult
End Sub

Public Property Get DataSource() '9F6D7C
  'Data Table: 434588
  loc_9F6D58: ZeroRetVal
  loc_9F6D5A: FLdRfVar var_8C
  loc_9F6D5D: FLdPr Me
  loc_9F6D60: MemLdPr RsFrm
  loc_9F6D63:  = Me.DataSource
  loc_9F6D68: ILdRf var_8C
  loc_9F6D6B: CastAd
  loc_9F6D6E: FStAdFunc var_88
  loc_9F6D71: FFree1Ad var_8C
  loc_9F6D74: ExitProcCbHresult
  loc_9F6D7A: AryDescTemp 4096
End Sub

Public Property Get EditMode() '9D6F40
  'Data Table: 434588
  loc_9D6F24: FLdRfVar var_8C
  loc_9D6F27: FLdPr Me
  loc_9D6F2A: MemLdPr RsFrm
  loc_9D6F2D:  = Me.EditMode
  loc_9D6F32: ILdRf var_8C
  loc_9D6F35: FStR4 var_88
  loc_9D6F38: ExitProcCbHresult
End Sub

Public Property Get CucuPers() 'A35F44
  'Data Table: 434588
  loc_A35F00: ZeroRetVal
  loc_A35F02: FLdRfVar var_B0
  loc_A35F05: FLdRfVar var_A0
  loc_A35F08: LitVarStr var_9C, "CucuPers"
  loc_A35F0D: PopAdLdVar
  loc_A35F0E: FLdRfVar var_8C
  loc_A35F11: FLdPr Me
  loc_A35F14: MemLdPr RsFrm
  loc_A35F17:  = Me.Fields
  loc_A35F1C: FLdPr var_8C
  loc_A35F1F: from_stack_2 = Me.Item(from_stack_1)
  loc_A35F24: FLdPr var_A0
  loc_A35F27:  = Me.Value
  loc_A35F2C: FLdRfVar var_B0
  loc_A35F2F: CStrVarTmp
  loc_A35F30: FStStr var_88
  loc_A35F33: FFreeAd var_8C = ""
  loc_A35F3A: FFree1Var var_B0 = ""
  loc_A35F3D: ExitProcCbHresult
End Sub

Public Property Let CucuPers(vDato) '9E5F18
  'Data Table: 434588
  loc_9E5EF8: ILdRf vDato
  loc_9E5EFB: FStStrCopy var_88
  loc_9E5EFE: ILdRf var_88
  loc_9E5F01: CVarStr var_A8
  loc_9E5F04: PopAdLdVar
  loc_9E5F05: LitVarStr var_98, "CucuPers"
  loc_9E5F0A: PopAdLdVar
  loc_9E5F0B: FLdPr Me
  loc_9E5F0E: MemLdPr RsFrm
  loc_9E5F11: Me.Collect = from_stack_1
  loc_9E5F16: ExitProcHresult
End Sub

Public Property Get CodiOfic() 'A293A4
  'Data Table: 434588
  loc_A29360: FLdRfVar var_B0
  loc_A29363: FLdRfVar var_A0
  loc_A29366: LitVarStr var_9C, "CodiOfic"
  loc_A2936B: PopAdLdVar
  loc_A2936C: FLdRfVar var_8C
  loc_A2936F: FLdPr Me
  loc_A29372: MemLdPr RsFrm
  loc_A29375:  = Me.Fields
  loc_A2937A: FLdPr var_8C
  loc_A2937D: from_stack_2 = Me.Item(from_stack_1)
  loc_A29382: FLdPr var_A0
  loc_A29385:  = Me.Value
  loc_A2938A: FLdRfVar var_B0
  loc_A2938D: CUI1Var
  loc_A2938F: FStUI1 var_86
  loc_A29393: FFreeAd var_8C = ""
  loc_A2939A: FFree1Var var_B0 = ""
  loc_A2939D: ExitProcCbHresult
End Sub

Public Property Let CodiOfic(vDato) '9D6B18
  'Data Table: 434588
  loc_9D6AFC: FLdUI1
  loc_9D6B00: CVarUI1
  loc_9D6B04: PopAdLdVar
  loc_9D6B05: LitVarStr var_94, "CodiOfic"
  loc_9D6B0A: PopAdLdVar
  loc_9D6B0B: FLdPr Me
  loc_9D6B0E: MemLdPr RsFrm
  loc_9D6B11: Me.Collect = from_stack_1
  loc_9D6B16: ExitProcHresult
End Sub

Public Property Get CuenCtct() 'A3835C
  'Data Table: 434588
  loc_A38318: ZeroRetVal
  loc_A3831A: FLdRfVar var_B0
  loc_A3831D: FLdRfVar var_A0
  loc_A38320: LitVarStr var_9C, "CuenCtct"
  loc_A38325: PopAdLdVar
  loc_A38326: FLdRfVar var_8C
  loc_A38329: FLdPr Me
  loc_A3832C: MemLdPr RsFrm
  loc_A3832F:  = Me.Fields
  loc_A38334: FLdPr var_8C
  loc_A38337: from_stack_2 = Me.Item(from_stack_1)
  loc_A3833C: FLdPr var_A0
  loc_A3833F:  = Me.Value
  loc_A38344: FLdRfVar var_B0
  loc_A38347: CStrVarTmp
  loc_A38348: FStStr var_88
  loc_A3834B: FFreeAd var_8C = ""
  loc_A38352: FFree1Var var_B0 = ""
  loc_A38355: ExitProcCbHresult
End Sub

Public Property Let CuenCtct(vDato) '9E6068
  'Data Table: 434588
  loc_9E6048: ILdRf vDato
  loc_9E604B: FStStrCopy var_88
  loc_9E604E: ILdRf var_88
  loc_9E6051: CVarStr var_A8
  loc_9E6054: PopAdLdVar
  loc_9E6055: LitVarStr var_98, "CuenCtct"
  loc_9E605A: PopAdLdVar
  loc_9E605B: FLdPr Me
  loc_9E605E: MemLdPr RsFrm
  loc_9E6061: Me.Collect = from_stack_1
  loc_9E6066: ExitProcHresult
End Sub

Public Property Get NumeRela() 'A295A4
  'Data Table: 434588
  loc_A29560: FLdRfVar var_B0
  loc_A29563: FLdRfVar var_A0
  loc_A29566: LitVarStr var_9C, "NumeRela"
  loc_A2956B: PopAdLdVar
  loc_A2956C: FLdRfVar var_8C
  loc_A2956F: FLdPr Me
  loc_A29572: MemLdPr RsFrm
  loc_A29575:  = Me.Fields
  loc_A2957A: FLdPr var_8C
  loc_A2957D: from_stack_2 = Me.Item(from_stack_1)
  loc_A29582: FLdPr var_A0
  loc_A29585:  = Me.Value
  loc_A2958A: FLdRfVar var_B0
  loc_A2958D: CUI1Var
  loc_A2958F: FStUI1 var_86
  loc_A29593: FFreeAd var_8C = ""
  loc_A2959A: FFree1Var var_B0 = ""
  loc_A2959D: ExitProcCbHresult
End Sub

Public Property Let NumeRela(vDato) '9D6A80
  'Data Table: 434588
  loc_9D6A64: FLdUI1
  loc_9D6A68: CVarUI1
  loc_9D6A6C: PopAdLdVar
  loc_9D6A6D: LitVarStr var_94, "NumeRela"
  loc_9D6A72: PopAdLdVar
  loc_9D6A73: FLdPr Me
  loc_9D6A76: MemLdPr RsFrm
  loc_9D6A79: Me.Collect = from_stack_1
  loc_9D6A7E: ExitProcHresult
End Sub

Public Property Get TipoRela() 'A38FBC
  'Data Table: 434588
  loc_A38F78: ZeroRetVal
  loc_A38F7A: FLdRfVar var_B0
  loc_A38F7D: FLdRfVar var_A0
  loc_A38F80: LitVarStr var_9C, "TipoRela"
  loc_A38F85: PopAdLdVar
  loc_A38F86: FLdRfVar var_8C
  loc_A38F89: FLdPr Me
  loc_A38F8C: MemLdPr RsFrm
  loc_A38F8F:  = Me.Fields
  loc_A38F94: FLdPr var_8C
  loc_A38F97: from_stack_2 = Me.Item(from_stack_1)
  loc_A38F9C: FLdPr var_A0
  loc_A38F9F:  = Me.Value
  loc_A38FA4: FLdRfVar var_B0
  loc_A38FA7: CStrVarTmp
  loc_A38FA8: FStStr var_88
  loc_A38FAB: FFreeAd var_8C = ""
  loc_A38FB2: FFree1Var var_B0 = ""
  loc_A38FB5: ExitProcCbHresult
End Sub

Public Property Let TipoRela(vDato) '9E6164
  'Data Table: 434588
  loc_9E6144: ILdRf vDato
  loc_9E6147: FStStrCopy var_88
  loc_9E614A: ILdRf var_88
  loc_9E614D: CVarStr var_A8
  loc_9E6150: PopAdLdVar
  loc_9E6151: LitVarStr var_98, "TipoRela"
  loc_9E6156: PopAdLdVar
  loc_9E6157: FLdPr Me
  loc_9E615A: MemLdPr RsFrm
  loc_9E615D: Me.Collect = from_stack_1
  loc_9E6162: ExitProcHresult
End Sub

Public Property Get FealRela() 'A17920
  'Data Table: 434588
  loc_A178E8: ZeroRetValVar
  loc_A178EA: FLdRfVar var_AC
  loc_A178ED: LitVarStr var_A8, "FealRela"
  loc_A178F2: PopAdLdVar
  loc_A178F3: FLdRfVar var_98
  loc_A178F6: FLdPr Me
  loc_A178F9: MemLdPr RsFrm
  loc_A178FC:  = Me.Fields
  loc_A17901: FLdPr var_98
  loc_A17904: from_stack_2 = Me.Item(from_stack_1)
  loc_A17909: FLdZeroAd var_AC
  loc_A1790C: CVarAd
  loc_A17910: FStVar FealRela
  loc_A17914: FFree1Ad var_98
  loc_A17917: ExitProcCbHresult
End Sub

Public Property Let FealRela(vDato) '9E415C
  'Data Table: 434588
  loc_9E4140: FDupVar
  loc_9E4146: FLdVar var_94
  loc_9E414A: LitVarStr var_A4, "FealRela"
  loc_9E414F: PopAdLdVar
  loc_9E4150: FLdPr Me
  loc_9E4153: MemLdPr RsFrm
  loc_9E4156: Me.Collect = from_stack_1
  loc_9E415B: ExitProcHresult
End Sub

Public Property Get FebaRela() 'A17830
  'Data Table: 434588
  loc_A177F8: ZeroRetValVar
  loc_A177FA: FLdRfVar var_AC
  loc_A177FD: LitVarStr var_A8, "FebaRela"
  loc_A17802: PopAdLdVar
  loc_A17803: FLdRfVar var_98
  loc_A17806: FLdPr Me
  loc_A17809: MemLdPr RsFrm
  loc_A1780C:  = Me.Fields
  loc_A17811: FLdPr var_98
  loc_A17814: from_stack_2 = Me.Item(from_stack_1)
  loc_A17819: FLdZeroAd var_AC
  loc_A1781C: CVarAd
  loc_A17820: FStVar FebaRela
  loc_A17824: FFree1Ad var_98
  loc_A17827: ExitProcCbHresult
End Sub

Public Property Let FebaRela(vDato) '9E410C
  'Data Table: 434588
  loc_9E40F0: FDupVar
  loc_9E40F6: FLdVar var_94
  loc_9E40FA: LitVarStr var_A4, "FebaRela"
  loc_9E40FF: PopAdLdVar
  loc_9E4100: FLdPr Me
  loc_9E4103: MemLdPr RsFrm
  loc_9E4106: Me.Collect = from_stack_1
  loc_9E410B: ExitProcHresult
End Sub

Public Property Get MobaRela() 'A39250
  'Data Table: 434588
  loc_A3920C: ZeroRetVal
  loc_A3920E: FLdRfVar var_B0
  loc_A39211: FLdRfVar var_A0
  loc_A39214: LitVarStr var_9C, "MobaRela"
  loc_A39219: PopAdLdVar
  loc_A3921A: FLdRfVar var_8C
  loc_A3921D: FLdPr Me
  loc_A39220: MemLdPr RsFrm
  loc_A39223:  = Me.Fields
  loc_A39228: FLdPr var_8C
  loc_A3922B: from_stack_2 = Me.Item(from_stack_1)
  loc_A39230: FLdPr var_A0
  loc_A39233:  = Me.Value
  loc_A39238: FLdRfVar var_B0
  loc_A3923B: CStrVarTmp
  loc_A3923C: FStStr var_88
  loc_A3923F: FFreeAd var_8C = ""
  loc_A39246: FFree1Var var_B0 = ""
  loc_A39249: ExitProcCbHresult
End Sub

Public Property Let MobaRela(vDato) '9E62B4
  'Data Table: 434588
  loc_9E6294: ILdRf vDato
  loc_9E6297: FStStrCopy var_88
  loc_9E629A: ILdRf var_88
  loc_9E629D: CVarStr var_A8
  loc_9E62A0: PopAdLdVar
  loc_9E62A1: LitVarStr var_98, "MobaRela"
  loc_9E62A6: PopAdLdVar
  loc_9E62A7: FLdPr Me
  loc_9E62AA: MemLdPr RsFrm
  loc_9E62AD: Me.Collect = from_stack_1
  loc_9E62B2: ExitProcHresult
End Sub

Public Property Get CodiUsua() 'A39358
  'Data Table: 434588
  loc_A39314: ZeroRetVal
  loc_A39316: FLdRfVar var_B0
  loc_A39319: FLdRfVar var_A0
  loc_A3931C: LitVarStr var_9C, "CodiUsua"
  loc_A39321: PopAdLdVar
  loc_A39322: FLdRfVar var_8C
  loc_A39325: FLdPr Me
  loc_A39328: MemLdPr RsFrm
  loc_A3932B:  = Me.Fields
  loc_A39330: FLdPr var_8C
  loc_A39333: from_stack_2 = Me.Item(from_stack_1)
  loc_A39338: FLdPr var_A0
  loc_A3933B:  = Me.Value
  loc_A39340: FLdRfVar var_B0
  loc_A39343: CStrVarTmp
  loc_A39344: FStStr var_88
  loc_A39347: FFreeAd var_8C = ""
  loc_A3934E: FFree1Var var_B0 = ""
  loc_A39351: ExitProcCbHresult
End Sub

Public Property Let CodiUsua(vDato) '9E635C
  'Data Table: 434588
  loc_9E633C: ILdRf vDato
  loc_9E633F: FStStrCopy var_88
  loc_9E6342: ILdRf var_88
  loc_9E6345: CVarStr var_A8
  loc_9E6348: PopAdLdVar
  loc_9E6349: LitVarStr var_98, "CodiUsua"
  loc_9E634E: PopAdLdVar
  loc_9E634F: FLdPr Me
  loc_9E6352: MemLdPr RsFrm
  loc_9E6355: Me.Collect = from_stack_1
  loc_9E635A: ExitProcHresult
End Sub

Public Property Get DetaPers() 'A39568
  'Data Table: 434588
  loc_A39524: ZeroRetVal
  loc_A39526: FLdRfVar var_B0
  loc_A39529: FLdRfVar var_A0
  loc_A3952C: LitVarStr var_9C, "DetaPers"
  loc_A39531: PopAdLdVar
  loc_A39532: FLdRfVar var_8C
  loc_A39535: FLdPr Me
  loc_A39538: MemLdPr RsFrm
  loc_A3953B:  = Me.Fields
  loc_A39540: FLdPr var_8C
  loc_A39543: from_stack_2 = Me.Item(from_stack_1)
  loc_A39548: FLdPr var_A0
  loc_A3954B:  = Me.Value
  loc_A39550: FLdRfVar var_B0
  loc_A39553: CStrVarTmp
  loc_A39554: FStStr var_88
  loc_A39557: FFreeAd var_8C = ""
  loc_A3955E: FFree1Var var_B0 = ""
  loc_A39561: ExitProcCbHresult
End Sub

Public Function ValidaClave(CucuPers, CodiOfic, CuenCtct, NumeRela) 'A97078
  'Data Table: 434588
  loc_A96FE8: ILdRf CucuPers
  loc_A96FEB: FStStrCopy var_8C
  loc_A96FEE: ILdRf CuenCtct
  loc_A96FF1: FStStrCopy var_90
  loc_A96FF4: ZeroRetVal
  loc_A96FF6: LitStr "SELECT CucuPers FROM relacion WHERE CucuPers = "
  loc_A96FF9: ILdRf var_8C
  loc_A96FFC: ConcatStr
  loc_A96FFD: FStStrNoPop ValidaClave
  loc_A97000: LitStr " AND CodiOfic = "
  loc_A97003: ConcatStr
  loc_A97004: FStStrNoPop var_98
  loc_A97007: FLdUI1
  loc_A9700B: CStrI2
  loc_A9700D: FStStrNoPop var_9C
  loc_A97010: ConcatStr
  loc_A97011: FStStrNoPop var_A0
  loc_A97014: LitStr " AND CuenCtct = '"
  loc_A97017: ConcatStr
  loc_A97018: FStStrNoPop var_A4
  loc_A9701B: ILdRf var_90
  loc_A9701E: ConcatStr
  loc_A9701F: FStStrNoPop var_A8
  loc_A97022: LitStr "' AND NumeRela = "
  loc_A97025: ConcatStr
  loc_A97026: FStStrNoPop var_AC
  loc_A97029: FLdUI1
  loc_A9702D: CStrI2
  loc_A9702F: FStStrNoPop var_B0
  loc_A97032: ConcatStr
  loc_A97033: FStStrNoPop var_B4
  loc_A97036: Call EjecutarRs2(from_stack_1v)
  loc_A9703B: FFreeStr ValidaClave = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A97050: FLdRfVar var_B8
  loc_A97053: FLdPr Me
  loc_A97056: MemLdPr Rs2
  loc_A97059:  = Me.RecordCount
  loc_A9705E: ILdRf var_B8
  loc_A97061: LitI4 0
  loc_A97066: GtI4
  loc_A97067: BranchF loc_A97070
  loc_A9706A: LitStr "La relacion entre la PERSONA y LA CUENTA YA EXISTE. Reintente..."
  loc_A9706D: FStStrCopy var_88
  loc_A97070: ExitProcCbHresult
End Function

Public Function NuevoRegistro(CucuPers, CodiOfic, CuenCtct) 'ABAAA0
  'Data Table: 434588
  loc_ABA9D0: ILdRf CucuPers
  loc_ABA9D3: FStStrCopy var_8C
  loc_ABA9D6: ILdRf CuenCtct
  loc_ABA9D9: FStStrCopy var_90
  loc_ABA9DC: LitStr "SELECT CucuPers, CodiOfic, CuenCtct, NumeRela FROM relacion WHERE CucuPers = "
  loc_ABA9DF: ILdRf var_8C
  loc_ABA9E2: ConcatStr
  loc_ABA9E3: FStStrNoPop NuevoRegistro
  loc_ABA9E6: LitStr " AND CodiOfic = "
  loc_ABA9E9: ConcatStr
  loc_ABA9EA: FStStrNoPop var_98
  loc_ABA9ED: FLdUI1
  loc_ABA9F1: CStrI2
  loc_ABA9F3: FStStrNoPop var_9C
  loc_ABA9F6: ConcatStr
  loc_ABA9F7: FStStrNoPop var_A0
  loc_ABA9FA: LitStr " AND CuenCtct = '"
  loc_ABA9FD: ConcatStr
  loc_ABA9FE: FStStrNoPop var_A4
  loc_ABAA01: ILdRf var_90
  loc_ABAA04: ConcatStr
  loc_ABAA05: FStStrNoPop var_A8
  loc_ABAA08: LitStr "' ORDER BY CucuPers, CodiOfic, CuenCtct, NumeRela ASC "
  loc_ABAA0B: ConcatStr
  loc_ABAA0C: FStStrNoPop var_AC
  loc_ABAA0F: Call EjecutarRsCls(from_stack_1v)
  loc_ABAA14: FFreeStr NuevoRegistro = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_ABAA25: FLdRfVar var_B0
  loc_ABAA28: FLdPr Me
  loc_ABAA2B: MemLdPr RsCls
  loc_ABAA2E:  = Me.RecordCount
  loc_ABAA33: ILdRf var_B0
  loc_ABAA36: LitI4 0
  loc_ABAA3B: GtI4
  loc_ABAA3C: BranchF loc_ABAA91
  loc_ABAA3F: FLdPr Me
  loc_ABAA42: MemLdPr RsCls
  loc_ABAA45: Me.MoveLast
  loc_ABAA4A: FLdRfVar var_D8
  loc_ABAA4D: FLdRfVar var_C8
  loc_ABAA50: LitVarStr var_C4, "NumeRela"
  loc_ABAA55: PopAdLdVar
  loc_ABAA56: FLdRfVar var_B4
  loc_ABAA59: FLdPr Me
  loc_ABAA5C: MemLdPr RsCls
  loc_ABAA5F:  = Me.Fields
  loc_ABAA64: FLdPr var_B4
  loc_ABAA67: from_stack_2 = Me.Item(from_stack_1)
  loc_ABAA6C: FLdPr var_C8
  loc_ABAA6F:  = Me.Value
  loc_ABAA74: FLdRfVar var_D8
  loc_ABAA77: FnCByteVar
  loc_ABAA79: CI2UI1
  loc_ABAA7B: LitI2_Byte 1
  loc_ABAA7D: AddI2
  loc_ABAA7E: CUI1I2
  loc_ABAA80: FStUI1 var_86
  loc_ABAA84: FFreeAd var_B4 = ""
  loc_ABAA8B: FFree1Var var_D8 = ""
  loc_ABAA8E: Branch loc_ABAA99
  loc_ABAA91: LitI2_Byte 1
  loc_ABAA93: CUI1I2
  loc_ABAA95: FStUI1 var_86
  loc_ABAA99: ExitProcCbHresult
End Function

Public Sub ModificaPorcentaje(sCucuPers, iCodiOfic, sCuenCtct, iNumeRela, PorcRela, TipoRela) 'B07FA4
  'Data Table: 434588
  loc_B07DBC: ILdRf sCucuPers
  loc_B07DBF: FStStrCopy var_88
  loc_B07DC2: ILdRf sCuenCtct
  loc_B07DC5: FStStrCopy var_8C
  loc_B07DC8: FLdUI1
  loc_B07DCC: CI2UI1
  loc_B07DCE: LitI2_Byte 0
  loc_B07DD0: EqI2
  loc_B07DD1: BranchF loc_B07E6A
  loc_B07DD4: LitStr "START TRANSACTION; UPDATE relacion SET PorcRela = "
  loc_B07DD7: LitI4 0
  loc_B07DDC: LitI4 -1
  loc_B07DE1: LitI4 1
  loc_B07DE6: LitStr "."
  loc_B07DE9: LitStr ","
  loc_B07DEC: FLdFPR8 PorcRela
  loc_B07DEF: CStrR8
  loc_B07DF1: FStStrNoPop var_94
  loc_B07DF4: ImpAdCallI2 Replace(, , , , , )
  loc_B07DF9: FStStrNoPop var_98
  loc_B07DFC: ConcatStr
  loc_B07DFD: FStStrNoPop var_9C
  loc_B07E00: LitStr " WHERE CucuPers = '"
  loc_B07E03: ConcatStr
  loc_B07E04: FStStrNoPop var_A0
  loc_B07E07: ILdRf var_88
  loc_B07E0A: ConcatStr
  loc_B07E0B: FStStrNoPop var_A4
  loc_B07E0E: LitStr "' AND CodiOfic = "
  loc_B07E11: ConcatStr
  loc_B07E12: FStStrNoPop var_A8
  loc_B07E15: FLdUI1
  loc_B07E19: CStrI2
  loc_B07E1B: FStStrNoPop var_AC
  loc_B07E1E: ConcatStr
  loc_B07E1F: FStStrNoPop var_B0
  loc_B07E22: LitStr " AND CuenCtct = '"
  loc_B07E25: ConcatStr
  loc_B07E26: FStStrNoPop var_B4
  loc_B07E29: ILdRf var_8C
  loc_B07E2C: ConcatStr
  loc_B07E2D: FStStrNoPop var_B8
  loc_B07E30: LitStr "' AND NumeRela = "
  loc_B07E33: ConcatStr
  loc_B07E34: FStStrNoPop var_BC
  loc_B07E37: FLdI2 iNumeRela
  loc_B07E3A: CStrUI1
  loc_B07E3C: FStStrNoPop var_C0
  loc_B07E3F: ConcatStr
  loc_B07E40: FStStrNoPop var_C4
  loc_B07E43: LitStr ";"
  loc_B07E46: ConcatStr
  loc_B07E47: FStStr var_90
  loc_B07E4A: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B07E67: Branch loc_B07F7C
  loc_B07E6A: FLdUI1
  loc_B07E6E: CI2UI1
  loc_B07E70: LitI2_Byte 1
  loc_B07E72: EqI2
  loc_B07E73: BranchF loc_B07F7C
  loc_B07E76: LitStr "START TRANSACTION; UPDATE relacion SET TipoRela = 'Propietario' WHERE CodiOfic = "
  loc_B07E79: FLdUI1
  loc_B07E7D: CStrI2
  loc_B07E7F: FStStrNoPop var_94
  loc_B07E82: ConcatStr
  loc_B07E83: FStStrNoPop var_98
  loc_B07E86: LitStr " AND CuenCtct = '"
  loc_B07E89: ConcatStr
  loc_B07E8A: FStStrNoPop var_9C
  loc_B07E8D: ILdRf var_8C
  loc_B07E90: ConcatStr
  loc_B07E91: FStStrNoPop var_A0
  loc_B07E94: LitStr "' AND TipoRela = 'Titular';"
  loc_B07E97: ConcatStr
  loc_B07E98: FStStr var_90
  loc_B07E9B: FFreeStr var_94 = "": var_98 = "": var_9C = ""
  loc_B07EA6: ILdRf var_90
  loc_B07EA9: LitStr " UPDATE relacion SET PorcRela = "
  loc_B07EAC: ConcatStr
  loc_B07EAD: FStStrNoPop var_98
  loc_B07EB0: LitI4 0
  loc_B07EB5: LitI4 -1
  loc_B07EBA: LitI4 1
  loc_B07EBF: LitStr "."
  loc_B07EC2: LitStr ","
  loc_B07EC5: FLdFPR8 PorcRela
  loc_B07EC8: CStrR8
  loc_B07ECA: FStStrNoPop var_94
  loc_B07ECD: ImpAdCallI2 Replace(, , , , , )
  loc_B07ED2: FStStrNoPop var_9C
  loc_B07ED5: ConcatStr
  loc_B07ED6: FStStrNoPop var_A0
  loc_B07ED9: LitStr ", TipoRela = 'Titular' WHERE CucuPers = '"
  loc_B07EDC: ConcatStr
  loc_B07EDD: FStStrNoPop var_A4
  loc_B07EE0: ILdRf var_88
  loc_B07EE3: ConcatStr
  loc_B07EE4: FStStrNoPop var_A8
  loc_B07EE7: LitStr "' AND CodiOfic = "
  loc_B07EEA: ConcatStr
  loc_B07EEB: FStStrNoPop var_AC
  loc_B07EEE: FLdUI1
  loc_B07EF2: CStrI2
  loc_B07EF4: FStStrNoPop var_B0
  loc_B07EF7: ConcatStr
  loc_B07EF8: FStStrNoPop var_B4
  loc_B07EFB: LitStr " AND CuenCtct = '"
  loc_B07EFE: ConcatStr
  loc_B07EFF: FStStrNoPop var_B8
  loc_B07F02: ILdRf var_8C
  loc_B07F05: ConcatStr
  loc_B07F06: FStStrNoPop var_BC
  loc_B07F09: LitStr "' AND NumeRela = "
  loc_B07F0C: ConcatStr
  loc_B07F0D: FStStrNoPop var_C0
  loc_B07F10: FLdI2 iNumeRela
  loc_B07F13: CStrUI1
  loc_B07F15: FStStrNoPop var_C4
  loc_B07F18: ConcatStr
  loc_B07F19: FStStrNoPop var_C8
  loc_B07F1C: LitStr ";"
  loc_B07F1F: ConcatStr
  loc_B07F20: FStStr var_90
  loc_B07F23: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B07F42: ILdRf var_90
  loc_B07F45: LitStr " UPDATE inmueble SET CucuPers = '"
  loc_B07F48: ConcatStr
  loc_B07F49: FStStrNoPop var_94
  loc_B07F4C: ILdRf var_88
  loc_B07F4F: ConcatStr
  loc_B07F50: FStStrNoPop var_98
  loc_B07F53: LitStr "', ModiUsua = '"
  loc_B07F56: ConcatStr
  loc_B07F57: FStStrNoPop var_9C
  loc_B07F5A: ImpAdLdI4 MemVar_D9302C
  loc_B07F5D: ConcatStr
  loc_B07F5E: FStStrNoPop var_A0
  loc_B07F61: LitStr "' WHERE CodiInmu = "
  loc_B07F64: ConcatStr
  loc_B07F65: FStStrNoPop var_A4
  loc_B07F68: ILdRf var_8C
  loc_B07F6B: ConcatStr
  loc_B07F6C: FStStr var_90
  loc_B07F6F: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_B07F7C: OnErrorGoto loc_B07F90
  loc_B07F7F: ILdRf var_90
  loc_B07F82: Call EjecutarRs2(from_stack_1v)
  loc_B07F87: LitStr "COMMIT;"
  loc_B07F8A: Call EjecutarRs2(from_stack_1v)
  loc_B07F8F: ExitProcHresult
  loc_B07F90: LitStr "ROLLBACK;"
  loc_B07F93: Call EjecutarRs2(from_stack_1v)
  loc_B07F98: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B07F9B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B07FA0: ExitProcHresult
  loc_B07FA3: Ary1LdRf
End Sub

Public Sub ActualizaPorcentaje(iCodiOfic, sCuenCtct) 'A8DD80
  'Data Table: 434588
  loc_A8DD04: ILdRf sCuenCtct
  loc_A8DD07: FStStrCopy var_88
  loc_A8DD0A: LitStr " SET @i:=0;"
  loc_A8DD0D: LitStr " SELECT SUM(PorcRela) as PorcRela, @i:=IFNULL(SUM(PorcRela),0) FROM relacion WHERE CodiOfic = "
  loc_A8DD10: ConcatStr
  loc_A8DD11: FStStrNoPop var_8C
  loc_A8DD14: FLdUI1
  loc_A8DD18: CStrI2
  loc_A8DD1A: FStStrNoPop var_90
  loc_A8DD1D: ConcatStr
  loc_A8DD1E: FStStrNoPop var_94
  loc_A8DD21: LitStr " AND CuenCtct = '"
  loc_A8DD24: ConcatStr
  loc_A8DD25: FStStrNoPop var_98
  loc_A8DD28: ILdRf var_88
  loc_A8DD2B: ConcatStr
  loc_A8DD2C: FStStrNoPop var_9C
  loc_A8DD2F: LitStr "' AND TipoRela = 'Propietario' AND FebaRela IS NULL ;"
  loc_A8DD32: ConcatStr
  loc_A8DD33: FStStrNoPop var_A0
  loc_A8DD36: LitStr " UPDATE relacion SET  PorcRela = ROUND(100 - @i,2) WHERE CodiOfic = "
  loc_A8DD39: ConcatStr
  loc_A8DD3A: FStStrNoPop var_A4
  loc_A8DD3D: FLdUI1
  loc_A8DD41: CStrI2
  loc_A8DD43: FStStrNoPop var_A8
  loc_A8DD46: ConcatStr
  loc_A8DD47: FStStrNoPop var_AC
  loc_A8DD4A: LitStr " AND CuenCtct = '"
  loc_A8DD4D: ConcatStr
  loc_A8DD4E: FStStrNoPop var_B0
  loc_A8DD51: ILdRf var_88
  loc_A8DD54: ConcatStr
  loc_A8DD55: FStStrNoPop var_B4
  loc_A8DD58: LitStr "' AND TipoRela = 'Titular' AND FebaRela IS NULL;"
  loc_A8DD5B: ConcatStr
  loc_A8DD5C: FStStrNoPop var_B8
  loc_A8DD5F: Call EjecutarRs2(from_stack_1v)
  loc_A8DD64: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A8DD7F: ExitProcHresult
End Sub

Public Sub ModificaPorcentajeLavalle(sCucuPers, iCodiOfic, sCuenCtct, iNumeRela, PorcRela, TipoRela, EmitRela) 'B288AC
  'Data Table: 434588
  loc_B28620: ILdRf sCucuPers
  loc_B28623: FStStrCopy var_88
  loc_B28626: ILdRf sCuenCtct
  loc_B28629: FStStrCopy var_8C
  loc_B2862C: ILdRf EmitRela
  loc_B2862F: FStStrCopy var_90
  loc_B28632: ILdRf var_90
  loc_B28635: LitStr "Titular"
  loc_B28638: NeStr
  loc_B2863A: BranchF loc_B2875F
  loc_B2863D: LitStr "START TRANSACTION; UPDATE relacion SET PorcRela = "
  loc_B28640: LitI4 0
  loc_B28645: LitI4 -1
  loc_B2864A: LitI4 1
  loc_B2864F: LitStr "."
  loc_B28652: LitStr ","
  loc_B28655: FLdFPR8 PorcRela
  loc_B28658: CStrR8
  loc_B2865A: FStStrNoPop var_98
  loc_B2865D: ImpAdCallI2 Replace(, , , , , )
  loc_B28662: FStStrNoPop var_9C
  loc_B28665: ConcatStr
  loc_B28666: FStStrNoPop var_A0
  loc_B28669: LitStr ", TipoRela = '"
  loc_B2866C: ConcatStr
  loc_B2866D: FStStrNoPop var_A4
  loc_B28670: ILdRf var_90
  loc_B28673: ConcatStr
  loc_B28674: FStStrNoPop var_A8
  loc_B28677: LitStr "', EmitRela = "
  loc_B2867A: ConcatStr
  loc_B2867B: FStStrNoPop var_AC
  loc_B2867E: FLdUI1
  loc_B28682: CStrI2
  loc_B28684: FStStrNoPop var_B0
  loc_B28687: ConcatStr
  loc_B28688: FStStrNoPop var_B4
  loc_B2868B: LitStr " WHERE CucuPers = '"
  loc_B2868E: ConcatStr
  loc_B2868F: FStStrNoPop var_B8
  loc_B28692: ILdRf var_88
  loc_B28695: ConcatStr
  loc_B28696: FStStrNoPop var_BC
  loc_B28699: LitStr "' AND CodiOfic = "
  loc_B2869C: ConcatStr
  loc_B2869D: FStStrNoPop var_C0
  loc_B286A0: FLdUI1
  loc_B286A4: CStrI2
  loc_B286A6: FStStrNoPop var_C4
  loc_B286A9: ConcatStr
  loc_B286AA: FStStrNoPop var_C8
  loc_B286AD: LitStr " AND CuenCtct = '"
  loc_B286B0: ConcatStr
  loc_B286B1: FStStrNoPop var_CC
  loc_B286B4: ILdRf var_8C
  loc_B286B7: ConcatStr
  loc_B286B8: FStStrNoPop var_D0
  loc_B286BB: LitStr "' AND NumeRela = "
  loc_B286BE: ConcatStr
  loc_B286BF: FStStrNoPop var_D4
  loc_B286C2: FLdI2 iNumeRela
  loc_B286C5: CStrUI1
  loc_B286C7: FStStrNoPop var_D8
  loc_B286CA: ConcatStr
  loc_B286CB: FStStrNoPop var_DC
  loc_B286CE: LitStr ";"
  loc_B286D1: ConcatStr
  loc_B286D2: FStStr var_94
  loc_B286D5: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B286FC: FLdUI1
  loc_B28700: CI2UI1
  loc_B28702: LitI2_Byte 1
  loc_B28704: EqI2
  loc_B28705: ILdRf var_90
  loc_B28708: LitStr "Poseedor"
  loc_B2870B: EqStr
  loc_B2870D: AndI4
  loc_B2870E: BranchF loc_B2875C
  loc_B28711: ILdRf var_94
  loc_B28714: LitStr " UPDATE relacion SET EmitRela = 0 WHERE CucuPers <> '"
  loc_B28717: ConcatStr
  loc_B28718: FStStrNoPop var_98
  loc_B2871B: ILdRf var_88
  loc_B2871E: ConcatStr
  loc_B2871F: FStStrNoPop var_9C
  loc_B28722: LitStr "' AND CodiOfic = "
  loc_B28725: ConcatStr
  loc_B28726: FStStrNoPop var_A0
  loc_B28729: FLdUI1
  loc_B2872D: CStrI2
  loc_B2872F: FStStrNoPop var_A4
  loc_B28732: ConcatStr
  loc_B28733: FStStrNoPop var_A8
  loc_B28736: LitStr " AND CuenCtct = '"
  loc_B28739: ConcatStr
  loc_B2873A: FStStrNoPop var_AC
  loc_B2873D: ILdRf var_8C
  loc_B28740: ConcatStr
  loc_B28741: FStStrNoPop var_B0
  loc_B28744: LitStr "' AND TipoRela = 'Poseedor';"
  loc_B28747: ConcatStr
  loc_B28748: FStStr var_94
  loc_B2874B: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_B2875C: Branch loc_B28879
  loc_B2875F: ILdRf var_90
  loc_B28762: LitStr "Titular"
  loc_B28765: EqStr
  loc_B28767: BranchF loc_B28879
  loc_B2876A: LitStr "START TRANSACTION; UPDATE relacion SET TipoRela = 'Propietario' WHERE CodiOfic = "
  loc_B2876D: FLdUI1
  loc_B28771: CStrI2
  loc_B28773: FStStrNoPop var_98
  loc_B28776: ConcatStr
  loc_B28777: FStStrNoPop var_9C
  loc_B2877A: LitStr " AND CuenCtct = '"
  loc_B2877D: ConcatStr
  loc_B2877E: FStStrNoPop var_A0
  loc_B28781: ILdRf var_8C
  loc_B28784: ConcatStr
  loc_B28785: FStStrNoPop var_A4
  loc_B28788: LitStr "' AND TipoRela = 'Titular';"
  loc_B2878B: ConcatStr
  loc_B2878C: FStStr var_94
  loc_B2878F: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_B2879A: ILdRf var_94
  loc_B2879D: LitStr " UPDATE relacion SET PorcRela = "
  loc_B287A0: ConcatStr
  loc_B287A1: FStStrNoPop var_9C
  loc_B287A4: LitI4 0
  loc_B287A9: LitI4 -1
  loc_B287AE: LitI4 1
  loc_B287B3: LitStr "."
  loc_B287B6: LitStr ","
  loc_B287B9: FLdFPR8 PorcRela
  loc_B287BC: CStrR8
  loc_B287BE: FStStrNoPop var_98
  loc_B287C1: ImpAdCallI2 Replace(, , , , , )
  loc_B287C6: FStStrNoPop var_A0
  loc_B287C9: ConcatStr
  loc_B287CA: FStStrNoPop var_A4
  loc_B287CD: LitStr ", TipoRela = 'Titular' WHERE CucuPers = '"
  loc_B287D0: ConcatStr
  loc_B287D1: FStStrNoPop var_A8
  loc_B287D4: ILdRf var_88
  loc_B287D7: ConcatStr
  loc_B287D8: FStStrNoPop var_AC
  loc_B287DB: LitStr "' AND CodiOfic = "
  loc_B287DE: ConcatStr
  loc_B287DF: FStStrNoPop var_B0
  loc_B287E2: FLdUI1
  loc_B287E6: CStrI2
  loc_B287E8: FStStrNoPop var_B4
  loc_B287EB: ConcatStr
  loc_B287EC: FStStrNoPop var_B8
  loc_B287EF: LitStr " AND CuenCtct = '"
  loc_B287F2: ConcatStr
  loc_B287F3: FStStrNoPop var_BC
  loc_B287F6: ILdRf var_8C
  loc_B287F9: ConcatStr
  loc_B287FA: FStStrNoPop var_C0
  loc_B287FD: LitStr "' AND NumeRela = "
  loc_B28800: ConcatStr
  loc_B28801: FStStrNoPop var_C4
  loc_B28804: FLdI2 iNumeRela
  loc_B28807: CStrUI1
  loc_B28809: FStStrNoPop var_C8
  loc_B2880C: ConcatStr
  loc_B2880D: FStStrNoPop var_CC
  loc_B28810: LitStr ";"
  loc_B28813: ConcatStr
  loc_B28814: FStStr var_94
  loc_B28817: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B28836: ILdRf var_94
  loc_B28839: LitStr " UPDATE inmueble SET CucuPers = '"
  loc_B2883C: ConcatStr
  loc_B2883D: FStStrNoPop var_98
  loc_B28840: ILdRf var_88
  loc_B28843: ConcatStr
  loc_B28844: FStStrNoPop var_9C
  loc_B28847: LitStr "', ModiUsua = '"
  loc_B2884A: ConcatStr
  loc_B2884B: FStStrNoPop var_A0
  loc_B2884E: ImpAdLdI4 MemVar_D9302C
  loc_B28851: ConcatStr
  loc_B28852: FStStrNoPop var_A4
  loc_B28855: LitStr "' WHERE CodiInmu = "
  loc_B28858: ConcatStr
  loc_B28859: FStStrNoPop var_A8
  loc_B2885C: ILdRf var_8C
  loc_B2885F: ConcatStr
  loc_B28860: FStStrNoPop var_AC
  loc_B28863: LitStr ";"
  loc_B28866: ConcatStr
  loc_B28867: FStStr var_94
  loc_B2886A: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_B28879: OnErrorGoto loc_B28899
  loc_B2887C: ILdRf var_94
  loc_B2887F: Call EjecutarRs2(from_stack_1v)
  loc_B28884: LitStr "COMMIT;"
  loc_B28887: Call EjecutarRs2(from_stack_1v)
  loc_B2888C: ILdRf var_8C
  loc_B2888F: FLdUI1
  loc_B28893: Call ActualizaPorcentaje(from_stack_1v, from_stack_2v)
  loc_B28898: ExitProcHresult
  loc_B28899: LitStr "ROLLBACK;"
  loc_B2889C: Call EjecutarRs2(from_stack_1v)
  loc_B288A1: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B288A4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B288A9: ExitProcHresult
End Sub

Public Function BuscaDatosRelacion(iCodiOfic, sCuenCtct) 'A76ED4
  'Data Table: 434588
  loc_A76E68: ILdRf sCuenCtct
  loc_A76E6B: FStStrCopy var_8C
  loc_A76E6E: LitStr "SELECT CucuPers FROM relacion WHERE CodiOfic = "
  loc_A76E71: FLdUI1
  loc_A76E75: CStrI2
  loc_A76E77: FStStrNoPop var_90
  loc_A76E7A: ConcatStr
  loc_A76E7B: FStStrNoPop BuscaDatosRelacion
  loc_A76E7E: LitStr " AND CuenCtct = '"
  loc_A76E81: ConcatStr
  loc_A76E82: FStStrNoPop var_98
  loc_A76E85: ILdRf var_8C
  loc_A76E88: ConcatStr
  loc_A76E89: FStStrNoPop var_9C
  loc_A76E8C: LitStr "' AND TipoRela = 'Titular'"
  loc_A76E8F: ConcatStr
  loc_A76E90: FStStrNoPop var_A0
  loc_A76E93: Call EjecutarRs2(from_stack_1v)
  loc_A76E98: FFreeStr var_90 = "": BuscaDatosRelacion = "": var_98 = "": var_9C = ""
  loc_A76EA5: FLdRfVar var_A4
  loc_A76EA8: FLdPr Me
  loc_A76EAB: MemLdPr Rs2
  loc_A76EAE:  = Me.RecordCount
  loc_A76EB3: ILdRf var_A4
  loc_A76EB6: LitI4 0
  loc_A76EBB: GtI4
  loc_A76EBC: BranchF loc_A76EC7
  loc_A76EBF: LitI2_Byte &HFF
  loc_A76EC1: FStI2 var_86
  loc_A76EC4: Branch loc_A76ECC
  loc_A76EC7: LitI2_Byte 0
  loc_A76EC9: FStI2 var_86
  loc_A76ECC: ExitProcCbHresult
End Function

Private Function Proc_25_59_9E5C74(arg_10) '9E5C74
  'Data Table: 434588
  loc_9E5C58: ILdRf arg_10
  loc_9E5C5B: FStAd var_88 
  loc_9E5C5F: ILdRf arg_18
  loc_9E5C62: FStAd var_8C 
  loc_9E5C66: FLdPr Me
  loc_9E5C69: RaiseEvent
  loc_9E5C71: ExitProcHresult
End Function

Private Function Proc_25_60_A9E550(arg_C) 'A9E550
  'Data Table: 434588
  loc_A9E490: ILdRf arg_18
  loc_A9E493: FStAd var_88 
  loc_A9E497: ILdRf arg_C
  loc_A9E49A: FStR4 var_90
  loc_A9E49D: ILdRf var_90
  loc_A9E4A0: LitI4 1
  loc_A9E4A5: EqI4
  loc_A9E4A6: BranchF loc_A9E4AC
  loc_A9E4A9: Branch loc_A9E53F
  loc_A9E4AC: ILdRf var_90
  loc_A9E4AF: LitI4 9
  loc_A9E4B4: EqI4
  loc_A9E4B5: BranchF loc_A9E4BB
  loc_A9E4B8: Branch loc_A9E53F
  loc_A9E4BB: ILdRf var_90
  loc_A9E4BE: LitI4 2
  loc_A9E4C3: EqI4
  loc_A9E4C4: BranchF loc_A9E4CA
  loc_A9E4C7: Branch loc_A9E53F
  loc_A9E4CA: ILdRf var_90
  loc_A9E4CD: LitI4 &HB
  loc_A9E4D2: EqI4
  loc_A9E4D3: BranchF loc_A9E4D9
  loc_A9E4D6: Branch loc_A9E53F
  loc_A9E4D9: ILdRf var_90
  loc_A9E4DC: LitI4 &HA
  loc_A9E4E1: EqI4
  loc_A9E4E2: BranchF loc_A9E4E8
  loc_A9E4E5: Branch loc_A9E53F
  loc_A9E4E8: ILdRf var_90
  loc_A9E4EB: LitI4 7
  loc_A9E4F0: EqI4
  loc_A9E4F1: BranchF loc_A9E4F7
  loc_A9E4F4: Branch loc_A9E53F
  loc_A9E4F7: ILdRf var_90
  loc_A9E4FA: LitI4 8
  loc_A9E4FF: EqI4
  loc_A9E500: BranchF loc_A9E506
  loc_A9E503: Branch loc_A9E53F
  loc_A9E506: ILdRf var_90
  loc_A9E509: LitI4 5
  loc_A9E50E: EqI4
  loc_A9E50F: BranchF loc_A9E515
  loc_A9E512: Branch loc_A9E53F
  loc_A9E515: ILdRf var_90
  loc_A9E518: LitI4 6
  loc_A9E51D: EqI4
  loc_A9E51E: BranchF loc_A9E524
  loc_A9E521: Branch loc_A9E53F
  loc_A9E524: ILdRf var_90
  loc_A9E527: LitI4 4
  loc_A9E52C: EqI4
  loc_A9E52D: BranchF loc_A9E533
  loc_A9E530: Branch loc_A9E53F
  loc_A9E533: ILdRf var_90
  loc_A9E536: LitI4 3
  loc_A9E53B: EqI4
  loc_A9E53C: BranchF loc_A9E53F
  loc_A9E53F: FLdI2 var_8A
  loc_A9E542: BranchF loc_A9E54D
  loc_A9E545: LitI4 4
  loc_A9E54A: IStI4 arg_14
  loc_A9E54D: ExitProcHresult
End Function

Private Function Proc_25_61_9F6AF8() '9F6AF8
  'Data Table: 434588
  loc_9F6AD4: LitStr "Primary"
  loc_9F6AD7: FLdPr Me
  loc_9F6ADA: LateIdLdVar var_94 DispID_4 0
  loc_9F6AE1: CastAdVar Me
  loc_9F6AE5: FStAdFunc var_98
  loc_9F6AE8: FLdPr var_98
  loc_9F6AF0: FFree1Ad var_98
  loc_9F6AF3: FFree1Var var_94 = ""
  loc_9F6AF6: ExitProcHresult
End Function

Private Function Proc_25_62_9E424C(arg_C) '9E424C
  'Data Table: 434588
  loc_9E4230: ILdI4 arg_C
  loc_9E4233: FStStrCopy var_88
  loc_9E4236: ILdRf var_88
  loc_9E4239: LitStr "Primary"
  loc_9E423C: EqStr
  loc_9E423E: BranchF loc_9E424B
  loc_9E4241: FLdPr Me
  loc_9E4244: MemLdStr RsFrm
  loc_9E4247: IStAd
  loc_9E424B: ExitProcHresult
End Function
