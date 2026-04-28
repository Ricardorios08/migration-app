VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsboleapre"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Move(iValor) '9E9B78
  'Data Table: 459928
  loc_9E9B58: LitVar_Missing var_98
  loc_9E9B5B: PopAdLdVar
  loc_9E9B5C: ILdI2 iValor
  loc_9E9B5F: CI4UI1
  loc_9E9B60: FLdRfVar var_88
  loc_9E9B63: FLdPr Me
  loc_9E9B66: from_stack_1v = clsboleapre.global_4561072Get()
  loc_9E9B6B: FLdPr var_88
  loc_9E9B6E: Me.Move from_stack_1, from_stack_2
  loc_9E9B73: FFree1Ad var_88
  loc_9E9B76: ExitProcHresult
End Sub

Public Sub MoveFirst() 'A0CD74
  'Data Table: 459928
  loc_A0CD38: FLdRfVar var_8C
  loc_A0CD3B: FLdRfVar var_88
  loc_A0CD3E: FLdPr Me
  loc_A0CD41: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A0CD46: FLdPr var_88
  loc_A0CD49:  = Me.RecordCount
  loc_A0CD4E: ILdRf var_8C
  loc_A0CD51: LitI4 0
  loc_A0CD56: GtI4
  loc_A0CD57: FFree1Ad var_88
  loc_A0CD5A: BranchF loc_A0CD73
  loc_A0CD5D: FLdRfVar var_88
  loc_A0CD60: FLdPr Me
  loc_A0CD63: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A0CD68: FLdPr var_88
  loc_A0CD6B: Me.MoveFirst
  loc_A0CD70: FFree1Ad var_88
  loc_A0CD73: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0CF34
  'Data Table: 459928
  loc_A0CEF8: FLdRfVar var_8C
  loc_A0CEFB: FLdRfVar var_88
  loc_A0CEFE: FLdPr Me
  loc_A0CF01: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A0CF06: FLdPr var_88
  loc_A0CF09:  = Me.RecordCount
  loc_A0CF0E: ILdRf var_8C
  loc_A0CF11: LitI4 0
  loc_A0CF16: GtI4
  loc_A0CF17: FFree1Ad var_88
  loc_A0CF1A: BranchF loc_A0CF33
  loc_A0CF1D: FLdRfVar var_88
  loc_A0CF20: FLdPr Me
  loc_A0CF23: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A0CF28: FLdPr var_88
  loc_A0CF2B: Me.MoveLast
  loc_A0CF30: FFree1Ad var_88
  loc_A0CF33: ExitProcHresult
End Sub

Public Sub MoveNext() 'AA18C4
  'Data Table: 459928
  loc_AA1808: FLdRfVar var_8A
  loc_AA180B: FLdRfVar var_88
  loc_AA180E: FLdPr Me
  loc_AA1811: from_stack_1v = clsboleapre.global_4561072Get()
  loc_AA1816: FLdPr var_88
  loc_AA1819:  = Me.EOF
  loc_AA181E: FLdI2 var_8A
  loc_AA1821: NotI4
  loc_AA1822: FLdRfVar var_94
  loc_AA1825: FLdRfVar var_90
  loc_AA1828: FLdPr Me
  loc_AA182B: from_stack_1v = clsboleapre.global_4561072Get()
  loc_AA1830: FLdPr var_90
  loc_AA1833:  = Me.RecordCount
  loc_AA1838: ILdRf var_94
  loc_AA183B: LitI4 0
  loc_AA1840: GtI4
  loc_AA1841: AndI4
  loc_AA1842: FFreeAd var_88 = ""
  loc_AA1849: BranchF loc_AA1862
  loc_AA184C: FLdRfVar var_88
  loc_AA184F: FLdPr Me
  loc_AA1852: from_stack_1v = clsboleapre.global_4561072Get()
  loc_AA1857: FLdPr var_88
  loc_AA185A: Me.MoveNext
  loc_AA185F: FFree1Ad var_88
  loc_AA1862: FLdRfVar var_8A
  loc_AA1865: FLdRfVar var_88
  loc_AA1868: FLdPr Me
  loc_AA186B: from_stack_1v = clsboleapre.global_4561072Get()
  loc_AA1870: FLdPr var_88
  loc_AA1873:  = Me.EOF
  loc_AA1878: FLdI2 var_8A
  loc_AA187B: FLdRfVar var_94
  loc_AA187E: FLdRfVar var_90
  loc_AA1881: FLdPr Me
  loc_AA1884: from_stack_1v = clsboleapre.global_4561072Get()
  loc_AA1889: FLdPr var_90
  loc_AA188C:  = Me.RecordCount
  loc_AA1891: ILdRf var_94
  loc_AA1894: LitI4 0
  loc_AA1899: GtI4
  loc_AA189A: AndI4
  loc_AA189B: FFreeAd var_88 = ""
  loc_AA18A2: BranchF loc_AA18C0
  loc_AA18A5: ImpAdCallFPR4 Beep()
  loc_AA18AA: FLdRfVar var_88
  loc_AA18AD: FLdPr Me
  loc_AA18B0: from_stack_1v = clsboleapre.global_4561072Get()
  loc_AA18B5: FLdPr var_88
  loc_AA18B8: Me.MoveLast
  loc_AA18BD: FFree1Ad var_88
  loc_AA18C0: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9CE958
  'Data Table: 459928
  loc_9CE940: FLdRfVar var_88
  loc_9CE943: FLdPr Me
  loc_9CE946: from_stack_1v = clsboleapre.global_4561072Get()
  loc_9CE94B: FLdPr var_88
  loc_9CE94E: Me.MoveNext
  loc_9CE953: FFree1Ad var_88
  loc_9CE956: ExitProcHresult
End Sub

Public Sub MovePrevious() 'AA00F0
  'Data Table: 459928
  loc_AA0034: FLdRfVar var_8A
  loc_AA0037: FLdRfVar var_88
  loc_AA003A: FLdPr Me
  loc_AA003D: from_stack_1v = clsboleapre.global_4561072Get()
  loc_AA0042: FLdPr var_88
  loc_AA0045:  = Me.BOF
  loc_AA004A: FLdI2 var_8A
  loc_AA004D: NotI4
  loc_AA004E: FLdRfVar var_94
  loc_AA0051: FLdRfVar var_90
  loc_AA0054: FLdPr Me
  loc_AA0057: from_stack_1v = clsboleapre.global_4561072Get()
  loc_AA005C: FLdPr var_90
  loc_AA005F:  = Me.RecordCount
  loc_AA0064: ILdRf var_94
  loc_AA0067: LitI4 0
  loc_AA006C: GtI4
  loc_AA006D: AndI4
  loc_AA006E: FFreeAd var_88 = ""
  loc_AA0075: BranchF loc_AA008E
  loc_AA0078: FLdRfVar var_88
  loc_AA007B: FLdPr Me
  loc_AA007E: from_stack_1v = clsboleapre.global_4561072Get()
  loc_AA0083: FLdPr var_88
  loc_AA0086: Me.MovePrevious
  loc_AA008B: FFree1Ad var_88
  loc_AA008E: FLdRfVar var_8A
  loc_AA0091: FLdRfVar var_88
  loc_AA0094: FLdPr Me
  loc_AA0097: from_stack_1v = clsboleapre.global_4561072Get()
  loc_AA009C: FLdPr var_88
  loc_AA009F:  = Me.BOF
  loc_AA00A4: FLdI2 var_8A
  loc_AA00A7: FLdRfVar var_94
  loc_AA00AA: FLdRfVar var_90
  loc_AA00AD: FLdPr Me
  loc_AA00B0: from_stack_1v = clsboleapre.global_4561072Get()
  loc_AA00B5: FLdPr var_90
  loc_AA00B8:  = Me.RecordCount
  loc_AA00BD: ILdRf var_94
  loc_AA00C0: LitI4 0
  loc_AA00C5: GtI4
  loc_AA00C6: AndI4
  loc_AA00C7: FFreeAd var_88 = ""
  loc_AA00CE: BranchF loc_AA00EC
  loc_AA00D1: ImpAdCallFPR4 Beep()
  loc_AA00D6: FLdRfVar var_88
  loc_AA00D9: FLdPr Me
  loc_AA00DC: from_stack_1v = clsboleapre.global_4561072Get()
  loc_AA00E1: FLdPr var_88
  loc_AA00E4: Me.MoveFirst
  loc_AA00E9: FFree1Ad var_88
  loc_AA00EC: ExitProcHresult
End Sub

Public Property Get EOF() '9F79B8
  'Data Table: 459928
  loc_9F7990: FLdRfVar var_8E
  loc_9F7993: FLdRfVar var_8C
  loc_9F7996: FLdPr Me
  loc_9F7999: from_stack_1v = clsboleapre.global_4561072Get()
  loc_9F799E: FLdPr var_8C
  loc_9F79A1:  = Me.EOF
  loc_9F79A6: FLdI2 var_8E
  loc_9F79A9: FStI2 var_86
  loc_9F79AC: FFree1Ad var_8C
  loc_9F79AF: ExitProcCbHresult
  loc_9F79B5: FLdI2 arg_36F
End Sub

Public Property Get BOF() '9F7A14
  'Data Table: 459928
  loc_9F79EC: FLdRfVar var_8E
  loc_9F79EF: FLdRfVar var_8C
  loc_9F79F2: FLdPr Me
  loc_9F79F5: from_stack_1v = clsboleapre.global_4561072Get()
  loc_9F79FA: FLdPr var_8C
  loc_9F79FD:  = Me.BOF
  loc_9F7A02: FLdI2 var_8E
  loc_9F7A05: FStI2 var_86
  loc_9F7A08: FFree1Ad var_8C
  loc_9F7A0B: ExitProcCbHresult
  loc_9F7A11: UMiCy
End Sub

Public Sub Sort(sOrden) '9E1B3C
  'Data Table: 459928
  loc_9E1B20: ILdI4 sOrden
  loc_9E1B23: FLdRfVar var_88
  loc_9E1B26: FLdPr Me
  loc_9E1B29: from_stack_1v = clsboleapre.global_4561072Get()
  loc_9E1B2E: FLdPr var_88
  loc_9E1B31: Me.Sort = from_stack_1
  loc_9E1B36: FFree1Ad var_88
  loc_9E1B39: ExitProcHresult
End Sub

Public Sub Find(sFind) '9F7B84
  'Data Table: 459928
  loc_9F7B5C: LitVar_Missing var_98
  loc_9F7B5F: PopAdLdVar
  loc_9F7B60: LitI4 1
  loc_9F7B65: LitI4 0
  loc_9F7B6A: ILdI4 sFind
  loc_9F7B6D: FLdRfVar var_88
  loc_9F7B70: FLdPr Me
  loc_9F7B73: from_stack_1v = clsboleapre.global_4561072Get()
  loc_9F7B78: FLdPr var_88
  loc_9F7B7B: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F7B80: FFree1Ad var_88
  loc_9F7B83: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F7C3C
  'Data Table: 459928
  loc_9F7C14: FLdRfVar var_90
  loc_9F7C17: FLdRfVar var_8C
  loc_9F7C1A: FLdPr Me
  loc_9F7C1D: from_stack_1v = clsboleapre.global_4561072Get()
  loc_9F7C22: FLdPr var_8C
  loc_9F7C25:  = Me.AbsolutePosition
  loc_9F7C2A: ILdRf var_90
  loc_9F7C2D: FStR4 var_88
  loc_9F7C30: FFree1Ad var_8C
  loc_9F7C33: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F7CF4
  'Data Table: 459928
  loc_9F7CCC: FLdRfVar var_90
  loc_9F7CCF: FLdRfVar var_8C
  loc_9F7CD2: FLdPr Me
  loc_9F7CD5: from_stack_1v = clsboleapre.global_4561072Get()
  loc_9F7CDA: FLdPr var_8C
  loc_9F7CDD:  = Me.RecordCount
  loc_9F7CE2: ILdRf var_90
  loc_9F7CE5: FStR4 var_88
  loc_9F7CE8: FFree1Ad var_8C
  loc_9F7CEB: ExitProcCbHresult
  loc_9F7CF1: ExitProcR8
  loc_9F7CF2: EqR4
End Sub

Public Sub AddNew(PeriBole, NumeBole, NumeApre, CodiInju, CodiFapa, CuotDefa, FealBoap, FeacBoap, EstaBoap, CoadBoap, ReseBoap, ApleBoap, DefiBoap, HoreBoap, HoofBoap) 'B5D088
  'Data Table: 459928
  loc_B5CD58: ILdRf FealBoap
  loc_B5CD5B: FStStrCopy var_88
  loc_B5CD5E: ILdRf FeacBoap
  loc_B5CD61: FStStrCopy var_8C
  loc_B5CD64: ILdRf EstaBoap
  loc_B5CD67: FStStrCopy var_90
  loc_B5CD6A: FLdRfVar var_94
  loc_B5CD6D: ILdRf NumeApre
  loc_B5CD70: ILdRf NumeBole
  loc_B5CD73: FLdI2 PeriBole
  loc_B5CD76: from_stack_4v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B5CD7B: ILdRf var_94
  loc_B5CD7E: LitStr vbNullString
  loc_B5CD81: NeStr
  loc_B5CD83: FFree1Str var_94
  loc_B5CD86: BranchF loc_B5CD94
  loc_B5CD89: LitStr "El boleto para el apremio ya existe. Verifique el boleto..."
  loc_B5CD8C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5CD91: Branch loc_B5D087
  loc_B5CD94: FLdRfVar var_8C
  loc_B5CD97: CVarRef
  loc_B5CD9C: ImpAdCallI2 IsDate()
  loc_B5CDA1: FStI2 var_406
  loc_B5CDA4: LitI4 1
  loc_B5CDA9: LitI4 1
  loc_B5CDAE: LitVarStr var_140, "yyyy-mm-dd"
  loc_B5CDB3: FStVarCopyObj var_150
  loc_B5CDB6: FLdRfVar var_150
  loc_B5CDB9: FLdRfVar var_8C
  loc_B5CDBC: CVarRef
  loc_B5CDC1: ImpAdCallI2 Format$(, )
  loc_B5CDC6: FStStr var_40C
  loc_B5CDC9: LitStr "INSERT INTO boleapre (PeriBole, NumeBole, NumeApre, CodiInju, CodiFapa, CuotDefa, FealBoap, FeacBoap, EstaBoap, CoadBoap, ReseBoap, ApleBoap, DefiBoap, HoreBoap, HoofBoap, CodiUsua) VALUES ("
  loc_B5CDCC: FLdI2 PeriBole
  loc_B5CDCF: CStrUI1
  loc_B5CDD1: FStStrNoPop var_94
  loc_B5CDD4: ConcatStr
  loc_B5CDD5: FStStrNoPop var_98
  loc_B5CDD8: LitStr ","
  loc_B5CDDB: ConcatStr
  loc_B5CDDC: FStStrNoPop var_9C
  loc_B5CDDF: ILdRf NumeBole
  loc_B5CDE2: CStrI4
  loc_B5CDE4: FStStrNoPop var_A0
  loc_B5CDE7: ConcatStr
  loc_B5CDE8: FStStrNoPop var_A4
  loc_B5CDEB: LitStr ","
  loc_B5CDEE: ConcatStr
  loc_B5CDEF: FStStrNoPop var_A8
  loc_B5CDF2: ILdRf NumeApre
  loc_B5CDF5: CStrI4
  loc_B5CDF7: FStStrNoPop var_AC
  loc_B5CDFA: ConcatStr
  loc_B5CDFB: FStStrNoPop var_B0
  loc_B5CDFE: LitStr ","
  loc_B5CE01: ConcatStr
  loc_B5CE02: FStStrNoPop var_B4
  loc_B5CE05: FLdI2 CodiInju
  loc_B5CE08: CStrUI1
  loc_B5CE0A: FStStrNoPop var_B8
  loc_B5CE0D: ConcatStr
  loc_B5CE0E: FStStrNoPop var_BC
  loc_B5CE11: LitStr ","
  loc_B5CE14: ConcatStr
  loc_B5CE15: FStStrNoPop var_C0
  loc_B5CE18: ILdRf CodiFapa
  loc_B5CE1B: CStrI4
  loc_B5CE1D: FStStrNoPop var_C4
  loc_B5CE20: ConcatStr
  loc_B5CE21: FStStrNoPop var_C8
  loc_B5CE24: LitStr ","
  loc_B5CE27: ConcatStr
  loc_B5CE28: FStStrNoPop var_CC
  loc_B5CE2B: FLdI2 CuotDefa
  loc_B5CE2E: CStrUI1
  loc_B5CE30: FStStrNoPop var_D0
  loc_B5CE33: ConcatStr
  loc_B5CE34: FStStrNoPop var_D4
  loc_B5CE37: LitStr ",'"
  loc_B5CE3A: ConcatStr
  loc_B5CE3B: FStStrNoPop var_108
  loc_B5CE3E: LitI4 1
  loc_B5CE43: LitI4 1
  loc_B5CE48: LitVarStr var_F4, "yyyy-mm-dd"
  loc_B5CE4D: FStVarCopyObj var_104
  loc_B5CE50: FLdRfVar var_104
  loc_B5CE53: FLdRfVar var_88
  loc_B5CE56: CVarRef
  loc_B5CE5B: ImpAdCallI2 Format$(, )
  loc_B5CE60: FStStrNoPop var_10C
  loc_B5CE63: ConcatStr
  loc_B5CE64: FStStrNoPop var_110
  loc_B5CE67: LitStr "',"
  loc_B5CE6A: ConcatStr
  loc_B5CE6B: CVarStr var_1B8
  loc_B5CE6E: LitVarStr var_188, "Null"
  loc_B5CE73: FStVarCopyObj var_198
  loc_B5CE76: FLdRfVar var_198
  loc_B5CE79: LitStr "'"
  loc_B5CE7C: FLdZeroAd var_40C
  loc_B5CE7F: FStStrNoPop var_154
  loc_B5CE82: ConcatStr
  loc_B5CE83: FStStrNoPop var_158
  loc_B5CE86: LitStr "'"
  loc_B5CE89: ConcatStr
  loc_B5CE8A: CVarStr var_178
  loc_B5CE8D: FLdI2 var_406
  loc_B5CE90: CVarBoolI2 var_168
  loc_B5CE94: FLdRfVar var_1A8
  loc_B5CE97: ImpAdCallFPR4  = IIf(, , )
  loc_B5CE9C: FLdRfVar var_1A8
  loc_B5CE9F: ConcatVar var_1C8
  loc_B5CEA3: LitVarStr var_1D8, ",'"
  loc_B5CEA8: ConcatVar var_1E8
  loc_B5CEAC: ILdRf var_90
  loc_B5CEAF: CVarStr var_1F8
  loc_B5CEB2: ConcatVar var_208
  loc_B5CEB6: LitVarStr var_218, "',"
  loc_B5CEBB: ConcatVar var_228
  loc_B5CEBF: LitI4 0
  loc_B5CEC4: LitI4 -1
  loc_B5CEC9: LitI4 1
  loc_B5CECE: LitStr "."
  loc_B5CED1: LitStr ","
  loc_B5CED4: FLdFPR8 CoadBoap
  loc_B5CED7: CStrR8
  loc_B5CED9: FStStrNoPop var_22C
  loc_B5CEDC: ImpAdCallI2 Replace(, , , , , )
  loc_B5CEE1: CVarStr var_23C
  loc_B5CEE4: ConcatVar var_24C
  loc_B5CEE8: LitVarStr var_25C, ","
  loc_B5CEED: ConcatVar var_26C
  loc_B5CEF1: LitI4 0
  loc_B5CEF6: LitI4 -1
  loc_B5CEFB: LitI4 1
  loc_B5CF00: LitStr "."
  loc_B5CF03: LitStr ","
  loc_B5CF06: FLdFPR8 ApleBoap
  loc_B5CF09: CStrR8
  loc_B5CF0B: FStStrNoPop var_270
  loc_B5CF0E: ImpAdCallI2 Replace(, , , , , )
  loc_B5CF13: CVarStr var_280
  loc_B5CF16: ConcatVar var_290
  loc_B5CF1A: LitVarStr var_2A0, ","
  loc_B5CF1F: ConcatVar var_2B0
  loc_B5CF23: LitI4 0
  loc_B5CF28: LitI4 -1
  loc_B5CF2D: LitI4 1
  loc_B5CF32: LitStr "."
  loc_B5CF35: LitStr ","
  loc_B5CF38: FLdFPR8 AddNew0
  loc_B5CF3B: CStrR8
  loc_B5CF3D: FStStrNoPop var_2B4
  loc_B5CF40: ImpAdCallI2 Replace(, , , , , )
  loc_B5CF45: CVarStr var_2C4
  loc_B5CF48: ConcatVar var_2D4
  loc_B5CF4C: LitVarStr var_2E4, ","
  loc_B5CF51: ConcatVar var_2F4
  loc_B5CF55: LitI4 0
  loc_B5CF5A: LitI4 -1
  loc_B5CF5F: LitI4 1
  loc_B5CF64: LitStr "."
  loc_B5CF67: LitStr ","
  loc_B5CF6A: FLdFPR8 AddNew8
  loc_B5CF6D: CStrR8
  loc_B5CF6F: FStStrNoPop var_2F8
  loc_B5CF72: ImpAdCallI2 Replace(, , , , , )
  loc_B5CF77: CVarStr var_308
  loc_B5CF7A: ConcatVar var_318
  loc_B5CF7E: LitVarStr var_328, ","
  loc_B5CF83: ConcatVar var_338
  loc_B5CF87: LitI4 0
  loc_B5CF8C: LitI4 -1
  loc_B5CF91: LitI4 1
  loc_B5CF96: LitStr "."
  loc_B5CF99: LitStr ","
  loc_B5CF9C: FLdFPR8 arg_50
  loc_B5CF9F: CStrR8
  loc_B5CFA1: FStStrNoPop var_33C
  loc_B5CFA4: ImpAdCallI2 Replace(, , , , , )
  loc_B5CFA9: CVarStr var_34C
  loc_B5CFAC: ConcatVar var_35C
  loc_B5CFB0: LitVarStr var_36C, ","
  loc_B5CFB5: ConcatVar var_37C
  loc_B5CFB9: LitI4 0
  loc_B5CFBE: LitI4 -1
  loc_B5CFC3: LitI4 1
  loc_B5CFC8: LitStr "."
  loc_B5CFCB: LitStr ","
  loc_B5CFCE: FLdFPR8 arg_58
  loc_B5CFD1: CStrR8
  loc_B5CFD3: FStStrNoPop var_380
  loc_B5CFD6: ImpAdCallI2 Replace(, , , , , )
  loc_B5CFDB: CVarStr var_390
  loc_B5CFDE: ConcatVar var_3A0
  loc_B5CFE2: LitVarStr var_3B0, ",'"
  loc_B5CFE7: ConcatVar var_3C0
  loc_B5CFEB: ImpAdLdI4 MemVar_D9302C
  loc_B5CFEE: CVarStr var_3D0
  loc_B5CFF1: ConcatVar var_3E0
  loc_B5CFF5: LitVarStr var_3F0, "');"
  loc_B5CFFA: ConcatVar var_400
  loc_B5CFFE: CStrVarVal var_404
  loc_B5D002: Call EjecutarRs2(from_stack_1v)
  loc_B5D007: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_108 = "": var_10C = "": var_110 = "": var_154 = "": var_158 = "": var_22C = "": var_270 = "": var_2B4 = "": var_2F8 = "": var_33C = "": var_380 = "": var_404 = ""
  loc_B5D046: FFreeVar var_400 = "": var_104 = "": var_150 = "": var_168 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_23C = "": var_24C = "": var_26C = "": var_280 = "": var_290 = "": var_2B0 = "": var_2C4 = "": var_2D4 = "": var_2F4 = "": var_308 = "": var_318 = "": var_338 = "": var_34C = "": var_35C = "": var_37C = "": var_390 = "": var_3A0 = "": var_3C0 = ""
  loc_B5D087: ExitProcHresult
End Sub

Public Sub Delete() 'A216FC
  'Data Table: 459928
  loc_A216B4: FLdRfVar var_8C
  loc_A216B7: FLdRfVar var_88
  loc_A216BA: FLdPr Me
  loc_A216BD: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A216C2: FLdPr var_88
  loc_A216C5:  = Me.RecordCount
  loc_A216CA: ILdRf var_8C
  loc_A216CD: LitI4 0
  loc_A216D2: GtI4
  loc_A216D3: FFree1Ad var_88
  loc_A216D6: BranchF loc_A216F9
  loc_A216D9: LitI4 1
  loc_A216DE: FLdRfVar var_88
  loc_A216E1: FLdPr Me
  loc_A216E4: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A216E9: FLdPr var_88
  loc_A216EC: Me.Delete
  loc_A216F1: FFree1Ad var_88
  loc_A216F4: Call MoveNext()
  loc_A216F9: ExitProcHresult
  loc_A216FA: FStR4 var_5000
End Sub

Public Sub Requery() '9FF23C
  'Data Table: 459928
  loc_9FF20C: LitI4 -1
  loc_9FF211: FLdRfVar var_88
  loc_9FF214: FLdPr Me
  loc_9FF217: from_stack_1v = clsboleapre.global_4561072Get()
  loc_9FF21C: FLdPr var_88
  loc_9FF21F: Me.Requery from_stack_1
  loc_9FF224: FFree1Ad var_88
  loc_9FF227: LitVarStr var_98, "Primary"
  loc_9FF22C: PopAdLdVar
  loc_9FF22D: FLdPr Me
  loc_9FF230: LateIdCall
  loc_9FF238: ExitProcHresult
End Sub

Public Sub Update() 'A230A4
  'Data Table: 459928
  loc_A23060: FLdRfVar var_88
  loc_A23063: FLdPr Me
  loc_A23066: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A2306B: FLdZeroAd var_88
  loc_A2306E: FStAdFunc var_8C
  loc_A23071: LitI4 3
  loc_A23076: FLdPr var_8C
  loc_A23079: Me.UpdateBatch
  loc_A2307E: FLdRfVar var_90
  loc_A23081: FLdPr var_8C
  loc_A23084:  = Me.EditMode
  loc_A23089: ILdRf var_90
  loc_A2308C: LitI4 2
  loc_A23091: EqI4
  loc_A23092: BranchF loc_A2309A
  loc_A23095: Call MoveLast()
  loc_A2309A: LitNothing
  loc_A2309C: FStAd var_8C 
  loc_A230A0: ExitProcHresult
End Sub

Public Sub Cancel() 'A4E4A0
  'Data Table: 459928
  loc_A4E44C: FLdRfVar var_88
  loc_A4E44F: FLdPr Me
  loc_A4E452: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4E457: FLdZeroAd var_88
  loc_A4E45A: FStAdFunc var_8C
  loc_A4E45D: FLdRfVar var_90
  loc_A4E460: FLdPr var_8C
  loc_A4E463:  = Me.RecordCount
  loc_A4E468: ILdRf var_90
  loc_A4E46B: LitI4 0
  loc_A4E470: GtI4
  loc_A4E471: BranchF loc_A4E498
  loc_A4E474: FLdPr var_8C
  loc_A4E477: Me.CancelUpdate
  loc_A4E47C: FLdRfVar var_90
  loc_A4E47F: FLdPr var_8C
  loc_A4E482:  = Me.EditMode
  loc_A4E487: ILdRf var_90
  loc_A4E48A: LitI4 2
  loc_A4E48F: EqI4
  loc_A4E490: BranchF loc_A4E498
  loc_A4E493: Call MoveFirst()
  loc_A4E498: LitNothing
  loc_A4E49A: FStAd var_8C 
  loc_A4E49E: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FC394
  'Data Table: 459928
  loc_9FC368: FLdRfVar var_90
  loc_9FC36B: FLdRfVar var_8C
  loc_9FC36E: FLdPr Me
  loc_9FC371: from_stack_1v = clsboleapre.global_4561072Get()
  loc_9FC376: FLdPr var_8C
  loc_9FC379:  = Me.EditMode
  loc_9FC37E: ILdRf var_90
  loc_9FC381: LitI4 0
  loc_9FC386: NeI4
  loc_9FC387: FStI2 var_86
  loc_9FC38A: FFree1Ad var_8C
  loc_9FC38D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A6F490
  'Data Table: 459928
  loc_A6F41C: ILdRf sSelect
  loc_A6F41F: FStStrCopy var_88
  loc_A6F422: LitNothing
  loc_A6F424: CastAd
  loc_A6F427: FStAdFuncNoPop
  loc_A6F42A: FLdPr Me
  loc_A6F42D: Call clsboleapre.global_4561072Set(from_stack_1v)
  loc_A6F432: FFree1Ad var_8C
  loc_A6F435: New Recordset
  loc_A6F439: FStAdFuncNoPop
  loc_A6F43C: FLdPr Me
  loc_A6F43F: Call clsboleapre.global_4561072Set(from_stack_1v)
  loc_A6F444: FFree1Ad var_8C
  loc_A6F447: LitI4 -1
  loc_A6F44C: LitI4 3
  loc_A6F451: LitI4 3
  loc_A6F456: ImpAdLdI4 MemVar_D9301C
  loc_A6F459: CVarAd
  loc_A6F45D: PopAdLdVar
  loc_A6F45E: ILdRf var_88
  loc_A6F461: CVarStr var_9C
  loc_A6F464: PopAdLdVar
  loc_A6F465: FLdRfVar var_8C
  loc_A6F468: FLdPr Me
  loc_A6F46B: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A6F470: FLdPr var_8C
  loc_A6F473: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6F478: FFree1Ad var_8C
  loc_A6F47B: LitVarStr var_9C, "Primary"
  loc_A6F480: PopAdLdVar
  loc_A6F481: FLdPr Me
  loc_A6F484: LateIdCall
  loc_A6F48C: ExitProcHresult
  loc_A6F48D: IDvI2
End Sub

Public Sub EjecutarRs2(sSelect) 'A59C08
  'Data Table: 459928
  loc_A59BA8: ILdRf sSelect
  loc_A59BAB: FStStrCopy var_88
  loc_A59BAE: LitNothing
  loc_A59BB0: CastAd
  loc_A59BB3: FStAdFuncNoPop
  loc_A59BB6: FLdPr Me
  loc_A59BB9: Call clsboleapre.global_4561072Set(from_stack_1v)
  loc_A59BBE: FFree1Ad var_8C
  loc_A59BC1: New Recordset
  loc_A59BC5: FStAdFuncNoPop
  loc_A59BC8: FLdPr Me
  loc_A59BCB: Call clsboleapre.global_4561072Set(from_stack_1v)
  loc_A59BD0: FFree1Ad var_8C
  loc_A59BD3: LitI4 -1
  loc_A59BD8: LitI4 3
  loc_A59BDD: LitI4 3
  loc_A59BE2: ImpAdLdI4 MemVar_D9301C
  loc_A59BE5: CVarAd
  loc_A59BE9: PopAdLdVar
  loc_A59BEA: ILdRf var_88
  loc_A59BED: CVarStr var_9C
  loc_A59BF0: PopAdLdVar
  loc_A59BF1: FLdRfVar var_8C
  loc_A59BF4: FLdPr Me
  loc_A59BF7: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A59BFC: FLdPr var_8C
  loc_A59BFF: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A59C04: FFree1Ad var_8C
  loc_A59C07: ExitProcHresult
End Sub

Public Property Get DataSource() 'A09D40
  'Data Table: 459928
  loc_A09D10: ZeroRetVal
  loc_A09D12: FLdRfVar var_90
  loc_A09D15: FLdRfVar var_8C
  loc_A09D18: FLdPr Me
  loc_A09D1B: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A09D20: FLdPr var_8C
  loc_A09D23:  = Me.DataSource
  loc_A09D28: ILdRf var_90
  loc_A09D2B: CastAd
  loc_A09D2E: FStAdFunc var_88
  loc_A09D31: FFreeAd var_8C = ""
  loc_A09D38: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9F82B4
  'Data Table: 459928
  loc_9F828C: FLdRfVar var_90
  loc_9F828F: FLdRfVar var_8C
  loc_9F8292: FLdPr Me
  loc_9F8295: from_stack_1v = clsboleapre.global_4561072Get()
  loc_9F829A: FLdPr var_8C
  loc_9F829D:  = Me.EditMode
  loc_9F82A2: ILdRf var_90
  loc_9F82A5: FStR4 var_88
  loc_9F82A8: FFree1Ad var_8C
  loc_9F82AB: ExitProcCbHresult
  loc_9F82B3: CStrVarTmp
End Sub

Public Property Get PeriBole() 'A4DC64
  'Data Table: 459928
  loc_A4DC18: FLdRfVar var_B4
  loc_A4DC1B: FLdRfVar var_A4
  loc_A4DC1E: LitVarStr var_A0, "PeriBole"
  loc_A4DC23: PopAdLdVar
  loc_A4DC24: FLdRfVar var_90
  loc_A4DC27: FLdRfVar var_8C
  loc_A4DC2A: FLdPr Me
  loc_A4DC2D: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4DC32: FLdPr var_8C
  loc_A4DC35:  = Me.Fields
  loc_A4DC3A: FLdPr var_90
  loc_A4DC3D: from_stack_2 = Me.Item(from_stack_1)
  loc_A4DC42: FLdPr var_A4
  loc_A4DC45:  = Me.Value
  loc_A4DC4A: FLdRfVar var_B4
  loc_A4DC4D: CI2Var
  loc_A4DC4E: FStI2 var_86
  loc_A4DC51: FFreeAd var_8C = "": var_90 = ""
  loc_A4DC5A: FFree1Var var_B4 = ""
  loc_A4DC5D: ExitProcCbHresult
End Sub

Public Property Get NumeBole() 'A4DB4C
  'Data Table: 459928
  loc_A4DB00: FLdRfVar var_B4
  loc_A4DB03: FLdRfVar var_A4
  loc_A4DB06: LitVarStr var_A0, "NumeBole"
  loc_A4DB0B: PopAdLdVar
  loc_A4DB0C: FLdRfVar var_90
  loc_A4DB0F: FLdRfVar var_8C
  loc_A4DB12: FLdPr Me
  loc_A4DB15: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4DB1A: FLdPr var_8C
  loc_A4DB1D:  = Me.Fields
  loc_A4DB22: FLdPr var_90
  loc_A4DB25: from_stack_2 = Me.Item(from_stack_1)
  loc_A4DB2A: FLdPr var_A4
  loc_A4DB2D:  = Me.Value
  loc_A4DB32: FLdRfVar var_B4
  loc_A4DB35: CI4Var
  loc_A4DB37: FStR4 var_88
  loc_A4DB3A: FFreeAd var_8C = "": var_90 = ""
  loc_A4DB43: FFree1Var var_B4 = ""
  loc_A4DB46: ExitProcCbHresult
End Sub

Public Property Get NumeApre() 'A4DAC0
  'Data Table: 459928
  loc_A4DA74: FLdRfVar var_B4
  loc_A4DA77: FLdRfVar var_A4
  loc_A4DA7A: LitVarStr var_A0, "NumeApre"
  loc_A4DA7F: PopAdLdVar
  loc_A4DA80: FLdRfVar var_90
  loc_A4DA83: FLdRfVar var_8C
  loc_A4DA86: FLdPr Me
  loc_A4DA89: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4DA8E: FLdPr var_8C
  loc_A4DA91:  = Me.Fields
  loc_A4DA96: FLdPr var_90
  loc_A4DA99: from_stack_2 = Me.Item(from_stack_1)
  loc_A4DA9E: FLdPr var_A4
  loc_A4DAA1:  = Me.Value
  loc_A4DAA6: FLdRfVar var_B4
  loc_A4DAA9: CI4Var
  loc_A4DAAB: FStR4 var_88
  loc_A4DAAE: FFreeAd var_8C = "": var_90 = ""
  loc_A4DAB7: FFree1Var var_B4 = ""
  loc_A4DABA: ExitProcCbHresult
End Sub

Public Property Get CodiInju() 'A4D9A8
  'Data Table: 459928
  loc_A4D95C: FLdRfVar var_B4
  loc_A4D95F: FLdRfVar var_A4
  loc_A4D962: LitVarStr var_A0, "CodiInju"
  loc_A4D967: PopAdLdVar
  loc_A4D968: FLdRfVar var_90
  loc_A4D96B: FLdRfVar var_8C
  loc_A4D96E: FLdPr Me
  loc_A4D971: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4D976: FLdPr var_8C
  loc_A4D979:  = Me.Fields
  loc_A4D97E: FLdPr var_90
  loc_A4D981: from_stack_2 = Me.Item(from_stack_1)
  loc_A4D986: FLdPr var_A4
  loc_A4D989:  = Me.Value
  loc_A4D98E: FLdRfVar var_B4
  loc_A4D991: CI2Var
  loc_A4D992: FStI2 var_86
  loc_A4D995: FFreeAd var_8C = "": var_90 = ""
  loc_A4D99E: FFree1Var var_B4 = ""
  loc_A4D9A1: ExitProcCbHresult
End Sub

Public Property Get CodiFapa() 'A4D91C
  'Data Table: 459928
  loc_A4D8D0: FLdRfVar var_B4
  loc_A4D8D3: FLdRfVar var_A4
  loc_A4D8D6: LitVarStr var_A0, "CodiFapa"
  loc_A4D8DB: PopAdLdVar
  loc_A4D8DC: FLdRfVar var_90
  loc_A4D8DF: FLdRfVar var_8C
  loc_A4D8E2: FLdPr Me
  loc_A4D8E5: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4D8EA: FLdPr var_8C
  loc_A4D8ED:  = Me.Fields
  loc_A4D8F2: FLdPr var_90
  loc_A4D8F5: from_stack_2 = Me.Item(from_stack_1)
  loc_A4D8FA: FLdPr var_A4
  loc_A4D8FD:  = Me.Value
  loc_A4D902: FLdRfVar var_B4
  loc_A4D905: CI4Var
  loc_A4D907: FStR4 var_88
  loc_A4D90A: FFreeAd var_8C = "": var_90 = ""
  loc_A4D913: FFree1Var var_B4 = ""
  loc_A4D916: ExitProcCbHresult
End Sub

Public Property Get CuotDefa() 'A4D890
  'Data Table: 459928
  loc_A4D844: FLdRfVar var_B4
  loc_A4D847: FLdRfVar var_A4
  loc_A4D84A: LitVarStr var_A0, "CuotDefa"
  loc_A4D84F: PopAdLdVar
  loc_A4D850: FLdRfVar var_90
  loc_A4D853: FLdRfVar var_8C
  loc_A4D856: FLdPr Me
  loc_A4D859: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4D85E: FLdPr var_8C
  loc_A4D861:  = Me.Fields
  loc_A4D866: FLdPr var_90
  loc_A4D869: from_stack_2 = Me.Item(from_stack_1)
  loc_A4D86E: FLdPr var_A4
  loc_A4D871:  = Me.Value
  loc_A4D876: FLdRfVar var_B4
  loc_A4D879: CI2Var
  loc_A4D87A: FStI2 var_86
  loc_A4D87D: FFreeAd var_8C = "": var_90 = ""
  loc_A4D886: FFree1Var var_B4 = ""
  loc_A4D889: ExitProcCbHresult
End Sub

Public Property Get FealBoap() 'A40E88
  'Data Table: 459928
  loc_A40E44: ZeroRetValVar
  loc_A40E46: FLdRfVar var_B0
  loc_A40E49: LitVarStr var_AC, "FealBoap"
  loc_A40E4E: PopAdLdVar
  loc_A40E4F: FLdRfVar var_9C
  loc_A40E52: FLdRfVar var_98
  loc_A40E55: FLdPr Me
  loc_A40E58: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A40E5D: FLdPr var_98
  loc_A40E60:  = Me.Fields
  loc_A40E65: FLdPr var_9C
  loc_A40E68: from_stack_2 = Me.Item(from_stack_1)
  loc_A40E6D: FLdZeroAd var_B0
  loc_A40E70: CVarAd
  loc_A40E74: FStVar FealBoap
  loc_A40E78: FFreeAd var_98 = ""
  loc_A40E7F: ExitProcCbHresult
  loc_A40E85: ImpAdStI2 MemVar_C3004012
End Sub

Public Property Get FeenAcpa() 'A40F10
  'Data Table: 459928
  loc_A40ECC: ZeroRetValVar
  loc_A40ECE: FLdRfVar var_B0
  loc_A40ED1: LitVarStr var_AC, "FeenAcpa"
  loc_A40ED6: PopAdLdVar
  loc_A40ED7: FLdRfVar var_9C
  loc_A40EDA: FLdRfVar var_98
  loc_A40EDD: FLdPr Me
  loc_A40EE0: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A40EE5: FLdPr var_98
  loc_A40EE8:  = Me.Fields
  loc_A40EED: FLdPr var_9C
  loc_A40EF0: from_stack_2 = Me.Item(from_stack_1)
  loc_A40EF5: FLdZeroAd var_B0
  loc_A40EF8: CVarAd
  loc_A40EFC: FStVar FeenAcpa
  loc_A40F00: FFreeAd var_98 = ""
  loc_A40F07: ExitProcCbHresult
End Sub

Public Property Get FeacBoap() 'A435D8
  'Data Table: 459928
  loc_A43594: ZeroRetValVar
  loc_A43596: FLdRfVar var_B0
  loc_A43599: LitVarStr var_AC, "FeacBoap"
  loc_A4359E: PopAdLdVar
  loc_A4359F: FLdRfVar var_9C
  loc_A435A2: FLdRfVar var_98
  loc_A435A5: FLdPr Me
  loc_A435A8: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A435AD: FLdPr var_98
  loc_A435B0:  = Me.Fields
  loc_A435B5: FLdPr var_9C
  loc_A435B8: from_stack_2 = Me.Item(from_stack_1)
  loc_A435BD: FLdZeroAd var_B0
  loc_A435C0: CVarAd
  loc_A435C4: FStVar FeacBoap
  loc_A435C8: FFreeAd var_98 = ""
  loc_A435CF: ExitProcCbHresult
  loc_A435D5: MemLdFPR8 global_1701
End Sub

Public Property Get EstaBoap() 'A56AB4
  'Data Table: 459928
  loc_A56A64: ZeroRetVal
  loc_A56A66: FLdRfVar var_B4
  loc_A56A69: FLdRfVar var_A4
  loc_A56A6C: LitVarStr var_A0, "EstaBoap"
  loc_A56A71: PopAdLdVar
  loc_A56A72: FLdRfVar var_90
  loc_A56A75: FLdRfVar var_8C
  loc_A56A78: FLdPr Me
  loc_A56A7B: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A56A80: FLdPr var_8C
  loc_A56A83:  = Me.Fields
  loc_A56A88: FLdPr var_90
  loc_A56A8B: from_stack_2 = Me.Item(from_stack_1)
  loc_A56A90: FLdPr var_A4
  loc_A56A93:  = Me.Value
  loc_A56A98: FLdRfVar var_B4
  loc_A56A9B: CStrVarTmp
  loc_A56A9C: FStStr var_88
  loc_A56A9F: FFreeAd var_8C = "": var_90 = ""
  loc_A56AA8: FFree1Var var_B4 = ""
  loc_A56AAB: ExitProcCbHresult
End Sub

Public Property Get CoadBoap() 'A4D548
  'Data Table: 459928
  loc_A4D4FC: FLdRfVar var_B8
  loc_A4D4FF: FLdRfVar var_A8
  loc_A4D502: LitVarStr var_A4, "CoadBoap"
  loc_A4D507: PopAdLdVar
  loc_A4D508: FLdRfVar CoadBoap
  loc_A4D50B: FLdRfVar var_90
  loc_A4D50E: FLdPr Me
  loc_A4D511: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4D516: FLdPr var_90
  loc_A4D519:  = Me.Fields
  loc_A4D51E: FLdPr CoadBoap
  loc_A4D521: from_stack_2 = Me.Item(from_stack_1)
  loc_A4D526: FLdPr var_A8
  loc_A4D529:  = Me.Value
  loc_A4D52E: FLdRfVar var_B8
  loc_A4D531: CR4Var
  loc_A4D532: FStFPR8 var_8C
  loc_A4D535: FFreeAd var_90 = "": CoadBoap = ""
  loc_A4D53E: FFree1Var var_B8 = ""
  loc_A4D541: ExitProcCbHresult
End Sub

Public Property Get IcomBoap() 'A4CF44
  'Data Table: 459928
  loc_A4CEF8: FLdRfVar var_B8
  loc_A4CEFB: FLdRfVar var_A8
  loc_A4CEFE: LitVarStr var_A4, "IcomBoap"
  loc_A4CF03: PopAdLdVar
  loc_A4CF04: FLdRfVar IcomBoap
  loc_A4CF07: FLdRfVar var_90
  loc_A4CF0A: FLdPr Me
  loc_A4CF0D: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4CF12: FLdPr var_90
  loc_A4CF15:  = Me.Fields
  loc_A4CF1A: FLdPr IcomBoap
  loc_A4CF1D: from_stack_2 = Me.Item(from_stack_1)
  loc_A4CF22: FLdPr var_A8
  loc_A4CF25:  = Me.Value
  loc_A4CF2A: FLdRfVar var_B8
  loc_A4CF2D: CR4Var
  loc_A4CF2E: FStFPR8 var_8C
  loc_A4CF31: FFreeAd var_90 = "": IcomBoap = ""
  loc_A4CF3A: FFree1Var var_B8 = ""
  loc_A4CF3D: ExitProcCbHresult
End Sub

Public Property Get ApleBoap() 'A4CEB8
  'Data Table: 459928
  loc_A4CE6C: FLdRfVar var_B8
  loc_A4CE6F: FLdRfVar var_A8
  loc_A4CE72: LitVarStr var_A4, "ApleBoap"
  loc_A4CE77: PopAdLdVar
  loc_A4CE78: FLdRfVar ApleBoap
  loc_A4CE7B: FLdRfVar var_90
  loc_A4CE7E: FLdPr Me
  loc_A4CE81: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4CE86: FLdPr var_90
  loc_A4CE89:  = Me.Fields
  loc_A4CE8E: FLdPr ApleBoap
  loc_A4CE91: from_stack_2 = Me.Item(from_stack_1)
  loc_A4CE96: FLdPr var_A8
  loc_A4CE99:  = Me.Value
  loc_A4CE9E: FLdRfVar var_B8
  loc_A4CEA1: CR4Var
  loc_A4CEA2: FStFPR8 var_8C
  loc_A4CEA5: FFreeAd var_90 = "": ApleBoap = ""
  loc_A4CEAE: FFree1Var var_B8 = ""
  loc_A4CEB1: ExitProcCbHresult
End Sub

Public Property Get DefiBoap() 'A4CE2C
  'Data Table: 459928
  loc_A4CDE0: FLdRfVar var_B8
  loc_A4CDE3: FLdRfVar var_A8
  loc_A4CDE6: LitVarStr var_A4, "DefiBoap"
  loc_A4CDEB: PopAdLdVar
  loc_A4CDEC: FLdRfVar DefiBoap
  loc_A4CDEF: FLdRfVar var_90
  loc_A4CDF2: FLdPr Me
  loc_A4CDF5: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4CDFA: FLdPr var_90
  loc_A4CDFD:  = Me.Fields
  loc_A4CE02: FLdPr DefiBoap
  loc_A4CE05: from_stack_2 = Me.Item(from_stack_1)
  loc_A4CE0A: FLdPr var_A8
  loc_A4CE0D:  = Me.Value
  loc_A4CE12: FLdRfVar var_B8
  loc_A4CE15: CR4Var
  loc_A4CE16: FStFPR8 var_8C
  loc_A4CE19: FFreeAd var_90 = "": DefiBoap = ""
  loc_A4CE22: FFree1Var var_B8 = ""
  loc_A4CE25: ExitProcCbHresult
End Sub

Public Property Get ReseBoap() 'A4CDA0
  'Data Table: 459928
  loc_A4CD54: FLdRfVar var_B8
  loc_A4CD57: FLdRfVar var_A8
  loc_A4CD5A: LitVarStr var_A4, "ReseBoap"
  loc_A4CD5F: PopAdLdVar
  loc_A4CD60: FLdRfVar ReseBoap
  loc_A4CD63: FLdRfVar var_90
  loc_A4CD66: FLdPr Me
  loc_A4CD69: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4CD6E: FLdPr var_90
  loc_A4CD71:  = Me.Fields
  loc_A4CD76: FLdPr ReseBoap
  loc_A4CD79: from_stack_2 = Me.Item(from_stack_1)
  loc_A4CD7E: FLdPr var_A8
  loc_A4CD81:  = Me.Value
  loc_A4CD86: FLdRfVar var_B8
  loc_A4CD89: CR4Var
  loc_A4CD8A: FStFPR8 var_8C
  loc_A4CD8D: FFreeAd var_90 = "": ReseBoap = ""
  loc_A4CD96: FFree1Var var_B8 = ""
  loc_A4CD99: ExitProcCbHresult
End Sub

Public Property Get HoreBoap() 'A4C940
  'Data Table: 459928
  loc_A4C8F4: FLdRfVar var_B8
  loc_A4C8F7: FLdRfVar var_A8
  loc_A4C8FA: LitVarStr var_A4, "HoreBoap"
  loc_A4C8FF: PopAdLdVar
  loc_A4C900: FLdRfVar HoreBoap
  loc_A4C903: FLdRfVar var_90
  loc_A4C906: FLdPr Me
  loc_A4C909: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4C90E: FLdPr var_90
  loc_A4C911:  = Me.Fields
  loc_A4C916: FLdPr HoreBoap
  loc_A4C919: from_stack_2 = Me.Item(from_stack_1)
  loc_A4C91E: FLdPr var_A8
  loc_A4C921:  = Me.Value
  loc_A4C926: FLdRfVar var_B8
  loc_A4C929: CR4Var
  loc_A4C92A: FStFPR8 var_8C
  loc_A4C92D: FFreeAd var_90 = "": HoreBoap = ""
  loc_A4C936: FFree1Var var_B8 = ""
  loc_A4C939: ExitProcCbHresult
End Sub

Public Property Get IrecBoap() 'A4C8B4
  'Data Table: 459928
  loc_A4C868: FLdRfVar var_B8
  loc_A4C86B: FLdRfVar var_A8
  loc_A4C86E: LitVarStr var_A4, "IrecBoap"
  loc_A4C873: PopAdLdVar
  loc_A4C874: FLdRfVar IrecBoap
  loc_A4C877: FLdRfVar var_90
  loc_A4C87A: FLdPr Me
  loc_A4C87D: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4C882: FLdPr var_90
  loc_A4C885:  = Me.Fields
  loc_A4C88A: FLdPr IrecBoap
  loc_A4C88D: from_stack_2 = Me.Item(from_stack_1)
  loc_A4C892: FLdPr var_A8
  loc_A4C895:  = Me.Value
  loc_A4C89A: FLdRfVar var_B8
  loc_A4C89D: CR4Var
  loc_A4C89E: FStFPR8 var_8C
  loc_A4C8A1: FFreeAd var_90 = "": IrecBoap = ""
  loc_A4C8AA: FFree1Var var_B8 = ""
  loc_A4C8AD: ExitProcCbHresult
End Sub

Public Property Get HoofBoap() 'A4C828
  'Data Table: 459928
  loc_A4C7DC: FLdRfVar var_B8
  loc_A4C7DF: FLdRfVar var_A8
  loc_A4C7E2: LitVarStr var_A4, "HoofBoap"
  loc_A4C7E7: PopAdLdVar
  loc_A4C7E8: FLdRfVar HoofBoap
  loc_A4C7EB: FLdRfVar var_90
  loc_A4C7EE: FLdPr Me
  loc_A4C7F1: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4C7F6: FLdPr var_90
  loc_A4C7F9:  = Me.Fields
  loc_A4C7FE: FLdPr HoofBoap
  loc_A4C801: from_stack_2 = Me.Item(from_stack_1)
  loc_A4C806: FLdPr var_A8
  loc_A4C809:  = Me.Value
  loc_A4C80E: FLdRfVar var_B8
  loc_A4C811: CR4Var
  loc_A4C812: FStFPR8 var_8C
  loc_A4C815: FFreeAd var_90 = "": HoofBoap = ""
  loc_A4C81E: FFree1Var var_B8 = ""
  loc_A4C821: ExitProcCbHresult
End Sub

Public Property Get IofiBoap() 'A4C79C
  'Data Table: 459928
  loc_A4C750: FLdRfVar var_B8
  loc_A4C753: FLdRfVar var_A8
  loc_A4C756: LitVarStr var_A4, "IofiBoap"
  loc_A4C75B: PopAdLdVar
  loc_A4C75C: FLdRfVar IofiBoap
  loc_A4C75F: FLdRfVar var_90
  loc_A4C762: FLdPr Me
  loc_A4C765: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4C76A: FLdPr var_90
  loc_A4C76D:  = Me.Fields
  loc_A4C772: FLdPr IofiBoap
  loc_A4C775: from_stack_2 = Me.Item(from_stack_1)
  loc_A4C77A: FLdPr var_A8
  loc_A4C77D:  = Me.Value
  loc_A4C782: FLdRfVar var_B8
  loc_A4C785: CR4Var
  loc_A4C786: FStFPR8 var_8C
  loc_A4C789: FFreeAd var_90 = "": IofiBoap = ""
  loc_A4C792: FFree1Var var_B8 = ""
  loc_A4C795: ExitProcCbHresult
End Sub

Public Property Get MoreBoap() 'A4C710
  'Data Table: 459928
  loc_A4C6C4: FLdRfVar var_B8
  loc_A4C6C7: FLdRfVar var_A8
  loc_A4C6CA: LitVarStr var_A4, "MoreBoap"
  loc_A4C6CF: PopAdLdVar
  loc_A4C6D0: FLdRfVar MoreBoap
  loc_A4C6D3: FLdRfVar var_90
  loc_A4C6D6: FLdPr Me
  loc_A4C6D9: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4C6DE: FLdPr var_90
  loc_A4C6E1:  = Me.Fields
  loc_A4C6E6: FLdPr MoreBoap
  loc_A4C6E9: from_stack_2 = Me.Item(from_stack_1)
  loc_A4C6EE: FLdPr var_A8
  loc_A4C6F1:  = Me.Value
  loc_A4C6F6: FLdRfVar var_B8
  loc_A4C6F9: CR4Var
  loc_A4C6FA: FStFPR8 var_8C
  loc_A4C6FD: FFreeAd var_90 = "": MoreBoap = ""
  loc_A4C706: FFree1Var var_B8 = ""
  loc_A4C709: ExitProcCbHresult
End Sub

Public Property Get MoofBoap() 'A4C454
  'Data Table: 459928
  loc_A4C408: FLdRfVar var_B8
  loc_A4C40B: FLdRfVar var_A8
  loc_A4C40E: LitVarStr var_A4, "MoofBoap"
  loc_A4C413: PopAdLdVar
  loc_A4C414: FLdRfVar MoofBoap
  loc_A4C417: FLdRfVar var_90
  loc_A4C41A: FLdPr Me
  loc_A4C41D: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4C422: FLdPr var_90
  loc_A4C425:  = Me.Fields
  loc_A4C42A: FLdPr MoofBoap
  loc_A4C42D: from_stack_2 = Me.Item(from_stack_1)
  loc_A4C432: FLdPr var_A8
  loc_A4C435:  = Me.Value
  loc_A4C43A: FLdRfVar var_B8
  loc_A4C43D: CR4Var
  loc_A4C43E: FStFPR8 var_8C
  loc_A4C441: FFreeAd var_90 = "": MoofBoap = ""
  loc_A4C44A: FFree1Var var_B8 = ""
  loc_A4C44D: ExitProcCbHresult
End Sub

Public Property Get CodiUsua() 'A55FB8
  'Data Table: 459928
  loc_A55F68: ZeroRetVal
  loc_A55F6A: FLdRfVar var_B4
  loc_A55F6D: FLdRfVar var_A4
  loc_A55F70: LitVarStr var_A0, "CodiUsua"
  loc_A55F75: PopAdLdVar
  loc_A55F76: FLdRfVar var_90
  loc_A55F79: FLdRfVar var_8C
  loc_A55F7C: FLdPr Me
  loc_A55F7F: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A55F84: FLdPr var_8C
  loc_A55F87:  = Me.Fields
  loc_A55F8C: FLdPr var_90
  loc_A55F8F: from_stack_2 = Me.Item(from_stack_1)
  loc_A55F94: FLdPr var_A4
  loc_A55F97:  = Me.Value
  loc_A55F9C: FLdRfVar var_B4
  loc_A55F9F: CStrVarTmp
  loc_A55FA0: FStStr var_88
  loc_A55FA3: FFreeAd var_8C = "": var_90 = ""
  loc_A55FAC: FFree1Var var_B4 = ""
  loc_A55FAF: ExitProcCbHresult
  loc_A55FB5: FnStrComp3Var
End Sub

Public Property Get CodiReca() 'A412C8
  'Data Table: 459928
  loc_A41284: ZeroRetValVar
  loc_A41286: FLdRfVar var_B0
  loc_A41289: LitVarStr var_AC, "CodiReca"
  loc_A4128E: PopAdLdVar
  loc_A4128F: FLdRfVar var_9C
  loc_A41292: FLdRfVar var_98
  loc_A41295: FLdPr Me
  loc_A41298: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4129D: FLdPr var_98
  loc_A412A0:  = Me.Fields
  loc_A412A5: FLdPr var_9C
  loc_A412A8: from_stack_2 = Me.Item(from_stack_1)
  loc_A412AD: FLdZeroAd var_B0
  loc_A412B0: CVarAd
  loc_A412B4: FStVar CodiReca
  loc_A412B8: FFreeAd var_98 = ""
  loc_A412BF: ExitProcCbHresult
End Sub

Public Property Get DetaReca() 'A418A0
  'Data Table: 459928
  loc_A4185C: ZeroRetValVar
  loc_A4185E: FLdRfVar var_B0
  loc_A41861: LitVarStr var_AC, "DetaReca"
  loc_A41866: PopAdLdVar
  loc_A41867: FLdRfVar var_9C
  loc_A4186A: FLdRfVar var_98
  loc_A4186D: FLdPr Me
  loc_A41870: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A41875: FLdPr var_98
  loc_A41878:  = Me.Fields
  loc_A4187D: FLdPr var_9C
  loc_A41880: from_stack_2 = Me.Item(from_stack_1)
  loc_A41885: FLdZeroAd var_B0
  loc_A41888: CVarAd
  loc_A4188C: FStVar DetaReca
  loc_A41890: FFreeAd var_98 = ""
  loc_A41897: ExitProcCbHresult
End Sub

Public Property Get CodiOfic() 'A414E8
  'Data Table: 459928
  loc_A414A4: ZeroRetValVar
  loc_A414A6: FLdRfVar var_B0
  loc_A414A9: LitVarStr var_AC, "CodiOfic"
  loc_A414AE: PopAdLdVar
  loc_A414AF: FLdRfVar var_9C
  loc_A414B2: FLdRfVar var_98
  loc_A414B5: FLdPr Me
  loc_A414B8: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A414BD: FLdPr var_98
  loc_A414C0:  = Me.Fields
  loc_A414C5: FLdPr var_9C
  loc_A414C8: from_stack_2 = Me.Item(from_stack_1)
  loc_A414CD: FLdZeroAd var_B0
  loc_A414D0: CVarAd
  loc_A414D4: FStVar CodiOfic
  loc_A414D8: FFreeAd var_98 = ""
  loc_A414DF: ExitProcCbHresult
End Sub

Public Property Get CuenCtct() 'A415F8
  'Data Table: 459928
  loc_A415B4: ZeroRetValVar
  loc_A415B6: FLdRfVar var_B0
  loc_A415B9: LitVarStr var_AC, "CuenCtct"
  loc_A415BE: PopAdLdVar
  loc_A415BF: FLdRfVar var_9C
  loc_A415C2: FLdRfVar var_98
  loc_A415C5: FLdPr Me
  loc_A415C8: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A415CD: FLdPr var_98
  loc_A415D0:  = Me.Fields
  loc_A415D5: FLdPr var_9C
  loc_A415D8: from_stack_2 = Me.Item(from_stack_1)
  loc_A415DD: FLdZeroAd var_B0
  loc_A415E0: CVarAd
  loc_A415E4: FStVar CuenCtct
  loc_A415E8: FFreeAd var_98 = ""
  loc_A415EF: ExitProcCbHresult
End Sub

Public Property Get AutoApre() 'A41928
  'Data Table: 459928
  loc_A418E4: ZeroRetValVar
  loc_A418E6: FLdRfVar var_B0
  loc_A418E9: LitVarStr var_AC, "AutoApre"
  loc_A418EE: PopAdLdVar
  loc_A418EF: FLdRfVar var_9C
  loc_A418F2: FLdRfVar var_98
  loc_A418F5: FLdPr Me
  loc_A418F8: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A418FD: FLdPr var_98
  loc_A41900:  = Me.Fields
  loc_A41905: FLdPr var_9C
  loc_A41908: from_stack_2 = Me.Item(from_stack_1)
  loc_A4190D: FLdZeroAd var_B0
  loc_A41910: CVarAd
  loc_A41914: FStVar AutoApre
  loc_A41918: FFreeAd var_98 = ""
  loc_A4191F: ExitProcCbHresult
End Sub

Public Property Get CodiOfju() 'A437F8
  'Data Table: 459928
  loc_A437B4: ZeroRetValVar
  loc_A437B6: FLdRfVar var_B0
  loc_A437B9: LitVarStr var_AC, "CodiOfju"
  loc_A437BE: PopAdLdVar
  loc_A437BF: FLdRfVar var_9C
  loc_A437C2: FLdRfVar var_98
  loc_A437C5: FLdPr Me
  loc_A437C8: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A437CD: FLdPr var_98
  loc_A437D0:  = Me.Fields
  loc_A437D5: FLdPr var_9C
  loc_A437D8: from_stack_2 = Me.Item(from_stack_1)
  loc_A437DD: FLdZeroAd var_B0
  loc_A437E0: CVarAd
  loc_A437E4: FStVar CodiOfju
  loc_A437E8: FFreeAd var_98 = ""
  loc_A437EF: ExitProcCbHresult
  loc_A437F5: BranchT loc_A43EEA
End Sub

Public Property Get DetaOfju() 'A419B0
  'Data Table: 459928
  loc_A4196C: ZeroRetValVar
  loc_A4196E: FLdRfVar var_B0
  loc_A41971: LitVarStr var_AC, "DetaOfju"
  loc_A41976: PopAdLdVar
  loc_A41977: FLdRfVar var_9C
  loc_A4197A: FLdRfVar var_98
  loc_A4197D: FLdPr Me
  loc_A41980: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A41985: FLdPr var_98
  loc_A41988:  = Me.Fields
  loc_A4198D: FLdPr var_9C
  loc_A41990: from_stack_2 = Me.Item(from_stack_1)
  loc_A41995: FLdZeroAd var_B0
  loc_A41998: CVarAd
  loc_A4199C: FStVar DetaOfju
  loc_A419A0: FFreeAd var_98 = ""
  loc_A419A7: ExitProcCbHresult
End Sub

Public Property Get TotaBoap() 'A43DD0
  'Data Table: 459928
  loc_A43D8C: ZeroRetValVar
  loc_A43D8E: FLdRfVar var_B0
  loc_A43D91: LitVarStr var_AC, "TotaBoap"
  loc_A43D96: PopAdLdVar
  loc_A43D97: FLdRfVar var_9C
  loc_A43D9A: FLdRfVar var_98
  loc_A43D9D: FLdPr Me
  loc_A43DA0: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A43DA5: FLdPr var_98
  loc_A43DA8:  = Me.Fields
  loc_A43DAD: FLdPr var_9C
  loc_A43DB0: from_stack_2 = Me.Item(from_stack_1)
  loc_A43DB5: FLdZeroAd var_B0
  loc_A43DB8: CVarAd
  loc_A43DBC: FStVar TotaBoap
  loc_A43DC0: FFreeAd var_98 = ""
  loc_A43DC7: ExitProcCbHresult
End Sub

Public Property Get Facilidad() 'A54DCC
  'Data Table: 459928
  loc_A54D7C: ZeroRetVal
  loc_A54D7E: FLdRfVar var_B4
  loc_A54D81: FLdRfVar var_A4
  loc_A54D84: LitVarStr var_A0, "Facilidad"
  loc_A54D89: PopAdLdVar
  loc_A54D8A: FLdRfVar var_90
  loc_A54D8D: FLdRfVar var_8C
  loc_A54D90: FLdPr Me
  loc_A54D93: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A54D98: FLdPr var_8C
  loc_A54D9B:  = Me.Fields
  loc_A54DA0: FLdPr var_90
  loc_A54DA3: from_stack_2 = Me.Item(from_stack_1)
  loc_A54DA8: FLdPr var_A4
  loc_A54DAB:  = Me.Value
  loc_A54DB0: FLdRfVar var_B4
  loc_A54DB3: CStrVarTmp
  loc_A54DB4: FStStr var_88
  loc_A54DB7: FFreeAd var_8C = "": var_90 = ""
  loc_A54DC0: FFree1Var var_B4 = ""
  loc_A54DC3: ExitProcCbHresult
End Sub

Public Property Get ApreCance() 'A54770
  'Data Table: 459928
  loc_A54720: ZeroRetVal
  loc_A54722: FLdRfVar var_B4
  loc_A54725: FLdRfVar var_A4
  loc_A54728: LitVarStr var_A0, "ApreCance"
  loc_A5472D: PopAdLdVar
  loc_A5472E: FLdRfVar var_90
  loc_A54731: FLdRfVar var_8C
  loc_A54734: FLdPr Me
  loc_A54737: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A5473C: FLdPr var_8C
  loc_A5473F:  = Me.Fields
  loc_A54744: FLdPr var_90
  loc_A54747: from_stack_2 = Me.Item(from_stack_1)
  loc_A5474C: FLdPr var_A4
  loc_A5474F:  = Me.Value
  loc_A54754: FLdRfVar var_B4
  loc_A54757: CStrVarTmp
  loc_A54758: FStStr var_88
  loc_A5475B: FFreeAd var_8C = "": var_90 = ""
  loc_A54764: FFree1Var var_B4 = ""
  loc_A54767: ExitProcCbHresult
  loc_A5476D: ExitProcR8
  loc_A5476E: Ary1LdPr
End Sub

Public Property Get DetaPers() 'A54D38
  'Data Table: 459928
  loc_A54CE8: ZeroRetVal
  loc_A54CEA: FLdRfVar var_B4
  loc_A54CED: FLdRfVar var_A4
  loc_A54CF0: LitVarStr var_A0, "DetaPers"
  loc_A54CF5: PopAdLdVar
  loc_A54CF6: FLdRfVar var_90
  loc_A54CF9: FLdRfVar var_8C
  loc_A54CFC: FLdPr Me
  loc_A54CFF: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A54D04: FLdPr var_8C
  loc_A54D07:  = Me.Fields
  loc_A54D0C: FLdPr var_90
  loc_A54D0F: from_stack_2 = Me.Item(from_stack_1)
  loc_A54D14: FLdPr var_A4
  loc_A54D17:  = Me.Value
  loc_A54D1C: FLdRfVar var_B4
  loc_A54D1F: CStrVarTmp
  loc_A54D20: FStStr var_88
  loc_A54D23: FFreeAd var_8C = "": var_90 = ""
  loc_A54D2C: FFree1Var var_B4 = ""
  loc_A54D2F: ExitProcCbHresult
  loc_A54D35: CVarStr var_9C
End Sub

Public Property Get Caratula() 'A54898
  'Data Table: 459928
  loc_A54848: ZeroRetVal
  loc_A5484A: FLdRfVar var_B4
  loc_A5484D: FLdRfVar var_A4
  loc_A54850: LitVarStr var_A0, "Caratula"
  loc_A54855: PopAdLdVar
  loc_A54856: FLdRfVar var_90
  loc_A54859: FLdRfVar var_8C
  loc_A5485C: FLdPr Me
  loc_A5485F: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A54864: FLdPr var_8C
  loc_A54867:  = Me.Fields
  loc_A5486C: FLdPr var_90
  loc_A5486F: from_stack_2 = Me.Item(from_stack_1)
  loc_A54874: FLdPr var_A4
  loc_A54877:  = Me.Value
  loc_A5487C: FLdRfVar var_B4
  loc_A5487F: CStrVarTmp
  loc_A54880: FStStr var_88
  loc_A54883: FFreeAd var_8C = "": var_90 = ""
  loc_A5488C: FFree1Var var_B4 = ""
  loc_A5488F: ExitProcCbHresult
End Sub

Public Property Get Juzgado() 'A54EF4
  'Data Table: 459928
  loc_A54EA4: ZeroRetVal
  loc_A54EA6: FLdRfVar var_B4
  loc_A54EA9: FLdRfVar var_A4
  loc_A54EAC: LitVarStr var_A0, "Juzgado"
  loc_A54EB1: PopAdLdVar
  loc_A54EB2: FLdRfVar var_90
  loc_A54EB5: FLdRfVar var_8C
  loc_A54EB8: FLdPr Me
  loc_A54EBB: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A54EC0: FLdPr var_8C
  loc_A54EC3:  = Me.Fields
  loc_A54EC8: FLdPr var_90
  loc_A54ECB: from_stack_2 = Me.Item(from_stack_1)
  loc_A54ED0: FLdPr var_A4
  loc_A54ED3:  = Me.Value
  loc_A54ED8: FLdRfVar var_B4
  loc_A54EDB: CStrVarTmp
  loc_A54EDC: FStStr var_88
  loc_A54EDF: FFreeAd var_8C = "": var_90 = ""
  loc_A54EE8: FFree1Var var_B4 = ""
  loc_A54EEB: ExitProcCbHresult
  loc_A54EF1: AndI4
  loc_A54EF2: PopFPR4
End Sub

Public Property Get SecrInap() 'A5501C
  'Data Table: 459928
  loc_A54FCC: ZeroRetVal
  loc_A54FCE: FLdRfVar var_B4
  loc_A54FD1: FLdRfVar var_A4
  loc_A54FD4: LitVarStr var_A0, "SecrInap"
  loc_A54FD9: PopAdLdVar
  loc_A54FDA: FLdRfVar var_90
  loc_A54FDD: FLdRfVar var_8C
  loc_A54FE0: FLdPr Me
  loc_A54FE3: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A54FE8: FLdPr var_8C
  loc_A54FEB:  = Me.Fields
  loc_A54FF0: FLdPr var_90
  loc_A54FF3: from_stack_2 = Me.Item(from_stack_1)
  loc_A54FF8: FLdPr var_A4
  loc_A54FFB:  = Me.Value
  loc_A55000: FLdRfVar var_B4
  loc_A55003: CStrVarTmp
  loc_A55004: FStStr var_88
  loc_A55007: FFreeAd var_8C = "": var_90 = ""
  loc_A55010: FFree1Var var_B4 = ""
  loc_A55013: ExitProcCbHresult
End Sub

Public Property Get JuzgInap() 'A551D8
  'Data Table: 459928
  loc_A55188: ZeroRetVal
  loc_A5518A: FLdRfVar var_B4
  loc_A5518D: FLdRfVar var_A4
  loc_A55190: LitVarStr var_A0, "JuzgInap"
  loc_A55195: PopAdLdVar
  loc_A55196: FLdRfVar var_90
  loc_A55199: FLdRfVar var_8C
  loc_A5519C: FLdPr Me
  loc_A5519F: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A551A4: FLdPr var_8C
  loc_A551A7:  = Me.Fields
  loc_A551AC: FLdPr var_90
  loc_A551AF: from_stack_2 = Me.Item(from_stack_1)
  loc_A551B4: FLdPr var_A4
  loc_A551B7:  = Me.Value
  loc_A551BC: FLdRfVar var_B4
  loc_A551BF: CStrVarTmp
  loc_A551C0: FStStr var_88
  loc_A551C3: FFreeAd var_8C = "": var_90 = ""
  loc_A551CC: FFree1Var var_B4 = ""
  loc_A551CF: ExitProcCbHresult
End Sub

Public Property Get TotaApre() 'A4B84C
  'Data Table: 459928
  loc_A4B800: FLdRfVar var_B8
  loc_A4B803: FLdRfVar var_A8
  loc_A4B806: LitVarStr var_A4, "TotaApre"
  loc_A4B80B: PopAdLdVar
  loc_A4B80C: FLdRfVar TotaApre
  loc_A4B80F: FLdRfVar var_90
  loc_A4B812: FLdPr Me
  loc_A4B815: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4B81A: FLdPr var_90
  loc_A4B81D:  = Me.Fields
  loc_A4B822: FLdPr TotaApre
  loc_A4B825: from_stack_2 = Me.Item(from_stack_1)
  loc_A4B82A: FLdPr var_A8
  loc_A4B82D:  = Me.Value
  loc_A4B832: FLdRfVar var_B8
  loc_A4B835: CR4Var
  loc_A4B836: FStFPR8 var_8C
  loc_A4B839: FFreeAd var_90 = "": TotaApre = ""
  loc_A4B842: FFree1Var var_B8 = ""
  loc_A4B845: ExitProcCbHresult
End Sub

Public Property Get CapiApre() 'A4B7C0
  'Data Table: 459928
  loc_A4B774: FLdRfVar var_B8
  loc_A4B777: FLdRfVar var_A8
  loc_A4B77A: LitVarStr var_A4, "CapiApre"
  loc_A4B77F: PopAdLdVar
  loc_A4B780: FLdRfVar CapiApre
  loc_A4B783: FLdRfVar var_90
  loc_A4B786: FLdPr Me
  loc_A4B789: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4B78E: FLdPr var_90
  loc_A4B791:  = Me.Fields
  loc_A4B796: FLdPr CapiApre
  loc_A4B799: from_stack_2 = Me.Item(from_stack_1)
  loc_A4B79E: FLdPr var_A8
  loc_A4B7A1:  = Me.Value
  loc_A4B7A6: FLdRfVar var_B8
  loc_A4B7A9: CR4Var
  loc_A4B7AA: FStFPR8 var_8C
  loc_A4B7AD: FFreeAd var_90 = "": CapiApre = ""
  loc_A4B7B6: FFree1Var var_B8 = ""
  loc_A4B7B9: ExitProcCbHresult
End Sub

Public Property Get RecaApre() 'A4B734
  'Data Table: 459928
  loc_A4B6E8: FLdRfVar var_B8
  loc_A4B6EB: FLdRfVar var_A8
  loc_A4B6EE: LitVarStr var_A4, "RecaApre"
  loc_A4B6F3: PopAdLdVar
  loc_A4B6F4: FLdRfVar RecaApre
  loc_A4B6F7: FLdRfVar var_90
  loc_A4B6FA: FLdPr Me
  loc_A4B6FD: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A4B702: FLdPr var_90
  loc_A4B705:  = Me.Fields
  loc_A4B70A: FLdPr RecaApre
  loc_A4B70D: from_stack_2 = Me.Item(from_stack_1)
  loc_A4B712: FLdPr var_A8
  loc_A4B715:  = Me.Value
  loc_A4B71A: FLdRfVar var_B8
  loc_A4B71D: CR4Var
  loc_A4B71E: FStFPR8 var_8C
  loc_A4B721: FFreeAd var_90 = "": RecaApre = ""
  loc_A4B72A: FFree1Var var_B8 = ""
  loc_A4B72D: ExitProcCbHresult
End Sub

Public Function ValidaClave(PeriBole, NumeBole, NumeApre) 'A8A5DC
  'Data Table: 459928
  loc_A8A55C: ZeroRetVal
  loc_A8A55E: LitStr "SELECT PeriBole FROM boleapre WHERE PeriBole = "
  loc_A8A561: FLdI2 PeriBole
  loc_A8A564: CStrUI1
  loc_A8A566: FStStrNoPop var_8C
  loc_A8A569: ConcatStr
  loc_A8A56A: FStStrNoPop var_90
  loc_A8A56D: LitStr " AND NumeBole = "
  loc_A8A570: ConcatStr
  loc_A8A571: FStStrNoPop ValidaClave
  loc_A8A574: ILdRf NumeBole
  loc_A8A577: CStrI4
  loc_A8A579: FStStrNoPop var_98
  loc_A8A57C: ConcatStr
  loc_A8A57D: FStStrNoPop var_9C
  loc_A8A580: LitStr " AND NumeApre = "
  loc_A8A583: ConcatStr
  loc_A8A584: FStStrNoPop var_A0
  loc_A8A587: ILdRf NumeApre
  loc_A8A58A: CStrI4
  loc_A8A58C: FStStrNoPop var_A4
  loc_A8A58F: ConcatStr
  loc_A8A590: FStStrNoPop var_A8
  loc_A8A593: Call EjecutarRs2(from_stack_1v)
  loc_A8A598: FFreeStr var_8C = "": var_90 = "": ValidaClave = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A8A5AB: FLdRfVar var_B0
  loc_A8A5AE: FLdRfVar var_AC
  loc_A8A5B1: FLdPr Me
  loc_A8A5B4: from_stack_1v = clsboleapre.global_4561072Get()
  loc_A8A5B9: FLdPr var_AC
  loc_A8A5BC:  = Me.RecordCount
  loc_A8A5C1: ILdRf var_B0
  loc_A8A5C4: LitI4 0
  loc_A8A5C9: GtI4
  loc_A8A5CA: FFree1Ad var_AC
  loc_A8A5CD: BranchF loc_A8A5D6
  loc_A8A5D0: LitStr "El boleto de apremio ya existe. Verifique el boleto..."
  loc_A8A5D3: FStStrCopy var_88
  loc_A8A5D6: ExitProcCbHresult
End Function

Public Sub ActualizaEstadoBoleApre(iPeriBole, lNumeBole, sEstado, FechActu) 'AC659C
  'Data Table: 459928
  loc_AC64B0: ILdRf sEstado
  loc_AC64B3: FStStrCopy var_88
  loc_AC64B6: ILdRf FechActu
  loc_AC64B9: FStStrCopy var_8C
  loc_AC64BC: ILdRf var_8C
  loc_AC64BF: LitStr vbNullString
  loc_AC64C2: EqStr
  loc_AC64C4: BranchF loc_AC6510
  loc_AC64C7: LitStr "UPDATE boleapre SET EstaBoap = '"
  loc_AC64CA: ILdRf var_88
  loc_AC64CD: ConcatStr
  loc_AC64CE: FStStrNoPop var_90
  loc_AC64D1: LitStr "', FeacBoap = Null WHERE PeriBole = "
  loc_AC64D4: ConcatStr
  loc_AC64D5: FStStrNoPop var_94
  loc_AC64D8: FLdI2 iPeriBole
  loc_AC64DB: CStrUI1
  loc_AC64DD: FStStrNoPop var_98
  loc_AC64E0: ConcatStr
  loc_AC64E1: FStStrNoPop var_9C
  loc_AC64E4: LitStr " AND NumeBole = "
  loc_AC64E7: ConcatStr
  loc_AC64E8: FStStrNoPop var_A0
  loc_AC64EB: ILdRf lNumeBole
  loc_AC64EE: CStrI4
  loc_AC64F0: FStStrNoPop var_A4
  loc_AC64F3: ConcatStr
  loc_AC64F4: FStStrNoPop var_A8
  loc_AC64F7: Call EjecutarRs2(from_stack_1v)
  loc_AC64FC: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_AC650D: Branch loc_AC659A
  loc_AC6510: ILdRf var_8C
  loc_AC6513: LitStr vbNullString
  loc_AC6516: NeStr
  loc_AC6518: BranchF loc_AC659A
  loc_AC651B: LitStr "UPDATE boleapre SET EstaBoap = '"
  loc_AC651E: ILdRf var_88
  loc_AC6521: ConcatStr
  loc_AC6522: FStStrNoPop var_90
  loc_AC6525: LitStr "', FeacBoap = '"
  loc_AC6528: ConcatStr
  loc_AC6529: FStStrNoPop var_94
  loc_AC652C: LitI4 1
  loc_AC6531: LitI4 1
  loc_AC6536: LitVarStr var_C8, "yyyy-mm-dd"
  loc_AC653B: FStVarCopyObj var_D8
  loc_AC653E: FLdRfVar var_D8
  loc_AC6541: FLdRfVar var_8C
  loc_AC6544: CVarRef
  loc_AC6549: ImpAdCallI2 Format$(, )
  loc_AC654E: FStStrNoPop var_98
  loc_AC6551: ConcatStr
  loc_AC6552: FStStrNoPop var_9C
  loc_AC6555: LitStr "' WHERE PeriBole = "
  loc_AC6558: ConcatStr
  loc_AC6559: FStStrNoPop var_A0
  loc_AC655C: FLdI2 iPeriBole
  loc_AC655F: CStrUI1
  loc_AC6561: FStStrNoPop var_A4
  loc_AC6564: ConcatStr
  loc_AC6565: FStStrNoPop var_A8
  loc_AC6568: LitStr " AND NumeBole = "
  loc_AC656B: ConcatStr
  loc_AC656C: FStStrNoPop var_DC
  loc_AC656F: ILdRf lNumeBole
  loc_AC6572: CStrI4
  loc_AC6574: FStStrNoPop var_E0
  loc_AC6577: ConcatStr
  loc_AC6578: FStStrNoPop var_E4
  loc_AC657B: Call EjecutarRs2(from_stack_1v)
  loc_AC6580: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_DC = "": var_E0 = ""
  loc_AC6597: FFree1Var var_D8 = ""
  loc_AC659A: ExitProcHresult
End Sub

Public Function BuscaGastosApremio(iPeriBole, lNumeBole) 'B402B4
  'Data Table: 459928
  loc_B40004: ZeroRetValVar
  loc_B40006: New Recordset
  loc_B4000A: FStAdFuncNoPop
  loc_B4000D: FLdPr Me
  loc_B40010: Call clsboleapre.global_4561072Set(from_stack_1v)
  loc_B40015: FFree1Ad var_B4
  loc_B40018: LitI4 -1
  loc_B4001D: LitI4 3
  loc_B40022: LitI4 3
  loc_B40027: ImpAdLdI4 MemVar_D9301C
  loc_B4002A: CVarAd
  loc_B4002E: PopAdLdVar
  loc_B4002F: LitStr "SELECT * FROM boleapre WHERE PeriBole = "
  loc_B40032: FLdI2 iPeriBole
  loc_B40035: CStrUI1
  loc_B40037: FStStrNoPop var_B8
  loc_B4003A: ConcatStr
  loc_B4003B: FStStrNoPop var_BC
  loc_B4003E: LitStr " AND NumeBole = "
  loc_B40041: ConcatStr
  loc_B40042: FStStrNoPop var_C0
  loc_B40045: ILdRf lNumeBole
  loc_B40048: CStrI4
  loc_B4004A: FStStrNoPop var_C4
  loc_B4004D: ConcatStr
  loc_B4004E: FStStrNoPop var_C8
  loc_B40051: LitStr " ORDER BY PeriBole, NumeBole, NumeApre"
  loc_B40054: ConcatStr
  loc_B40055: CVarStr var_D8
  loc_B40058: PopAdLdVar
  loc_B40059: FLdRfVar var_B4
  loc_B4005C: FLdPr Me
  loc_B4005F: from_stack_1v = clsboleapre.global_4561072Get()
  loc_B40064: FLdPr var_B4
  loc_B40067: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_B4006C: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B40079: FFree1Ad var_B4
  loc_B4007C: FFree1Var var_D8 = ""
  loc_B4007F: FLdRfVar var_EC
  loc_B40082: FLdRfVar var_B4
  loc_B40085: FLdPr Me
  loc_B40088: from_stack_1v = clsboleapre.global_4561072Get()
  loc_B4008D: FLdPr var_B4
  loc_B40090:  = Me.RecordCount
  loc_B40095: ILdRf var_EC
  loc_B40098: LitI4 1
  loc_B4009D: EqI4
  loc_B4009E: FFree1Ad var_B4
  loc_B400A1: BranchF loc_B40274
  loc_B400A4: FLdRfVar var_D8
  loc_B400A7: FLdRfVar var_F4
  loc_B400AA: LitVarStr var_E8, "CoadBoap"
  loc_B400AF: PopAdLdVar
  loc_B400B0: FLdRfVar var_F0
  loc_B400B3: FLdRfVar var_B4
  loc_B400B6: FLdPr Me
  loc_B400B9: from_stack_1v = clsboleapre.global_4561072Get()
  loc_B400BE: FLdPr var_B4
  loc_B400C1:  = Me.Fields
  loc_B400C6: FLdPr var_F0
  loc_B400C9: from_stack_2 = Me.Item(from_stack_1)
  loc_B400CE: FLdPr var_F4
  loc_B400D1:  = Me.Value
  loc_B400D6: FLdRfVar var_D8
  loc_B400D9: FnCDblVar
  loc_B400DB: CStrR8
  loc_B400DD: FStStrNoPop var_B8
  loc_B400E0: LitI4 1
  loc_B400E5: FLdRfVar var_AC
  loc_B400E8: Ary1StStrCopy
  loc_B400E9: FFree1Str var_B8
  loc_B400EC: FFreeAd var_B4 = "": var_F0 = ""
  loc_B400F5: FFree1Var var_D8 = ""
  loc_B400F8: FLdRfVar var_D8
  loc_B400FB: FLdRfVar var_F4
  loc_B400FE: LitVarStr var_E8, "ApleBoap"
  loc_B40103: PopAdLdVar
  loc_B40104: FLdRfVar var_F0
  loc_B40107: FLdRfVar var_B4
  loc_B4010A: FLdPr Me
  loc_B4010D: from_stack_1v = clsboleapre.global_4561072Get()
  loc_B40112: FLdPr var_B4
  loc_B40115:  = Me.Fields
  loc_B4011A: FLdPr var_F0
  loc_B4011D: from_stack_2 = Me.Item(from_stack_1)
  loc_B40122: FLdPr var_F4
  loc_B40125:  = Me.Value
  loc_B4012A: FLdRfVar var_120
  loc_B4012D: FLdRfVar var_110
  loc_B40130: LitVarStr var_10C, "DefiBoap"
  loc_B40135: PopAdLdVar
  loc_B40136: FLdRfVar var_FC
  loc_B40139: FLdRfVar var_F8
  loc_B4013C: FLdPr Me
  loc_B4013F: from_stack_1v = clsboleapre.global_4561072Get()
  loc_B40144: FLdPr var_F8
  loc_B40147:  = Me.Fields
  loc_B4014C: FLdPr var_FC
  loc_B4014F: from_stack_2 = Me.Item(from_stack_1)
  loc_B40154: FLdPr var_110
  loc_B40157:  = Me.Value
  loc_B4015C: FLdRfVar var_14C
  loc_B4015F: FLdRfVar var_13C
  loc_B40162: LitVarStr var_138, "ReseBoap"
  loc_B40167: PopAdLdVar
  loc_B40168: FLdRfVar var_128
  loc_B4016B: FLdRfVar var_124
  loc_B4016E: FLdPr Me
  loc_B40171: from_stack_1v = clsboleapre.global_4561072Get()
  loc_B40176: FLdPr var_124
  loc_B40179:  = Me.Fields
  loc_B4017E: FLdPr var_128
  loc_B40181: from_stack_2 = Me.Item(from_stack_1)
  loc_B40186: FLdPr var_13C
  loc_B40189:  = Me.Value
  loc_B4018E: FLdRfVar var_178
  loc_B40191: FLdRfVar var_168
  loc_B40194: LitVarStr var_164, "HoreBoap"
  loc_B40199: PopAdLdVar
  loc_B4019A: FLdRfVar var_154
  loc_B4019D: FLdRfVar var_150
  loc_B401A0: FLdPr Me
  loc_B401A3: from_stack_1v = clsboleapre.global_4561072Get()
  loc_B401A8: FLdPr var_150
  loc_B401AB:  = Me.Fields
  loc_B401B0: FLdPr var_154
  loc_B401B3: from_stack_2 = Me.Item(from_stack_1)
  loc_B401B8: FLdPr var_168
  loc_B401BB:  = Me.Value
  loc_B401C0: FLdRfVar var_1A4
  loc_B401C3: FLdRfVar var_194
  loc_B401C6: LitVarStr var_190, "HoofBoap"
  loc_B401CB: PopAdLdVar
  loc_B401CC: FLdRfVar var_180
  loc_B401CF: FLdRfVar var_17C
  loc_B401D2: FLdPr Me
  loc_B401D5: from_stack_1v = clsboleapre.global_4561072Get()
  loc_B401DA: FLdPr var_17C
  loc_B401DD:  = Me.Fields
  loc_B401E2: FLdPr var_180
  loc_B401E5: from_stack_2 = Me.Item(from_stack_1)
  loc_B401EA: FLdPr var_194
  loc_B401ED:  = Me.Value
  loc_B401F2: LitI4 2
  loc_B401F7: FLdRfVar var_D8
  loc_B401FA: FnCDblVar
  loc_B401FC: FLdRfVar var_120
  loc_B401FF: FnCDblVar
  loc_B40201: AddR8
  loc_B40202: FLdRfVar var_14C
  loc_B40205: FnCDblVar
  loc_B40207: AddR8
  loc_B40208: FLdRfVar var_178
  loc_B4020B: FnCDblVar
  loc_B4020D: AddR8
  loc_B4020E: FLdRfVar var_1A4
  loc_B40211: FnCDblVar
  loc_B40213: AddR8
  loc_B40214: CVarR8
  loc_B40218: FLdRfVar var_1D4
  loc_B4021B: ImpAdCallFPR4  = Round(, )
  loc_B40220: FLdRfVar var_1D4
  loc_B40223: CStrVarTmp
  loc_B40224: FStStrNoPop var_B8
  loc_B40227: LitI4 2
  loc_B4022C: FLdRfVar var_AC
  loc_B4022F: Ary1StStrCopy
  loc_B40230: FFree1Str var_B8
  loc_B40233: FFreeAd var_B4 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_110 = "": var_124 = "": var_128 = "": var_13C = "": var_150 = "": var_154 = "": var_168 = "": var_17C = "": var_180 = ""
  loc_B40254: FFreeVar var_D8 = "": var_120 = "": var_14C = "": var_178 = "": var_1A4 = "": var_1C4 = ""
  loc_B40265: FLdRfVar var_AC
  loc_B40268: CVarRef
  loc_B4026D: FStVarCopy
  loc_B40271: Branch loc_B40298
  loc_B40274: LitStr vbNullString
  loc_B40277: LitI4 1
  loc_B4027C: FLdRfVar var_AC
  loc_B4027F: Ary1StStrCopy
  loc_B40280: LitStr vbNullString
  loc_B40283: LitI4 2
  loc_B40288: FLdRfVar var_AC
  loc_B4028B: Ary1StStrCopy
  loc_B4028C: FLdRfVar var_AC
  loc_B4028F: CVarRef
  loc_B40294: FStVarCopy
  loc_B40298: LitNothing
  loc_B4029A: CastAd
  loc_B4029D: FStAdFuncNoPop
  loc_B402A0: FLdPr Me
  loc_B402A3: Call clsboleapre.global_4561072Set(from_stack_1v)
  loc_B402A8: FFree1Ad var_B4
  loc_B402AB: ExitProcCbHresult
  loc_B402B1: FLdFPR8 arg_6964
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E9EBC
  'Data Table: 459928
  loc_9E9EA0: ILdRf pError
  loc_9E9EA3: FStAd var_88 
  loc_9E9EA7: ILdRf pRecordset
  loc_9E9EAA: FStAd var_8C 
  loc_9E9EAE: FLdPr Me
  loc_9E9EB1: RaiseEvent
  loc_9E9EB9: ExitProcHresult
  loc_9E9EBA: CRec2Uni var_5000
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9E644
  'Data Table: 459928
  loc_A9E584: ILdRf pRecordset
  loc_A9E587: FStAd var_88 
  loc_A9E58B: ILdRf adReason
  loc_A9E58E: FStR4 var_90
  loc_A9E591: ILdRf var_90
  loc_A9E594: LitI4 1
  loc_A9E599: EqI4
  loc_A9E59A: BranchF loc_A9E5A0
  loc_A9E59D: Branch loc_A9E633
  loc_A9E5A0: ILdRf var_90
  loc_A9E5A3: LitI4 9
  loc_A9E5A8: EqI4
  loc_A9E5A9: BranchF loc_A9E5AF
  loc_A9E5AC: Branch loc_A9E633
  loc_A9E5AF: ILdRf var_90
  loc_A9E5B2: LitI4 2
  loc_A9E5B7: EqI4
  loc_A9E5B8: BranchF loc_A9E5BE
  loc_A9E5BB: Branch loc_A9E633
  loc_A9E5BE: ILdRf var_90
  loc_A9E5C1: LitI4 &HB
  loc_A9E5C6: EqI4
  loc_A9E5C7: BranchF loc_A9E5CD
  loc_A9E5CA: Branch loc_A9E633
  loc_A9E5CD: ILdRf var_90
  loc_A9E5D0: LitI4 &HA
  loc_A9E5D5: EqI4
  loc_A9E5D6: BranchF loc_A9E5DC
  loc_A9E5D9: Branch loc_A9E633
  loc_A9E5DC: ILdRf var_90
  loc_A9E5DF: LitI4 7
  loc_A9E5E4: EqI4
  loc_A9E5E5: BranchF loc_A9E5EB
  loc_A9E5E8: Branch loc_A9E633
  loc_A9E5EB: ILdRf var_90
  loc_A9E5EE: LitI4 8
  loc_A9E5F3: EqI4
  loc_A9E5F4: BranchF loc_A9E5FA
  loc_A9E5F7: Branch loc_A9E633
  loc_A9E5FA: ILdRf var_90
  loc_A9E5FD: LitI4 5
  loc_A9E602: EqI4
  loc_A9E603: BranchF loc_A9E609
  loc_A9E606: Branch loc_A9E633
  loc_A9E609: ILdRf var_90
  loc_A9E60C: LitI4 6
  loc_A9E611: EqI4
  loc_A9E612: BranchF loc_A9E618
  loc_A9E615: Branch loc_A9E633
  loc_A9E618: ILdRf var_90
  loc_A9E61B: LitI4 4
  loc_A9E620: EqI4
  loc_A9E621: BranchF loc_A9E627
  loc_A9E624: Branch loc_A9E633
  loc_A9E627: ILdRf var_90
  loc_A9E62A: LitI4 3
  loc_A9E62F: EqI4
  loc_A9E630: BranchF loc_A9E633
  loc_A9E633: FLdI2 var_8A
  loc_A9E636: BranchF loc_A9E641
  loc_A9E639: LitI4 4
  loc_A9E63E: IStI4 adStatus
  loc_A9E641: ExitProcHresult
  loc_A9E642: FStVarCopyObj var_5000
End Sub

Private Function Proc_2_67_9F802C() '9F802C
  'Data Table: 459928
  loc_9F8008: LitStr "Primary"
  loc_9F800B: FLdPr Me
  loc_9F800E: LateIdLdVar var_94 DispID_4 0
  loc_9F8015: CastAdVar Me
  loc_9F8019: FStAdFunc var_98
  loc_9F801C: FLdPr var_98
  loc_9F8024: FFree1Ad var_98
  loc_9F8027: FFree1Var var_94 = ""
  loc_9F802A: ExitProcHresult
End Function

Private Function Proc_2_68_9F80E4(arg_C) '9F80E4
  'Data Table: 459928
  loc_9F80C0: ILdI4 arg_C
  loc_9F80C3: FStStrCopy var_88
  loc_9F80C6: ILdRf var_88
  loc_9F80C9: LitStr "Primary"
  loc_9F80CC: EqStr
  loc_9F80CE: BranchF loc_9F80E3
  loc_9F80D1: FLdRfVar var_8C
  loc_9F80D4: FLdPr Me
  loc_9F80D7: from_stack_1v = clsboleapre.global_4561072Get()
  loc_9F80DC: FLdZeroAd var_8C
  loc_9F80DF: IStAdFunc
  loc_9F80E3: ExitProcHresult
End Function

Public Function global_4561072Get() '459E90
  global_4561072Get = global_4561072
End Function

Public Sub global_4561072Put(Value) '459EAA
  global_4561072 = Value
End Sub

Public Sub global_4561072Set(Value) '459EC4
  global_4561072 = Value
End Sub

Public Function global_4561072Get() '459EDE
  global_4561072Get = global_4561072
End Function

Public Sub global_4561072Put(Value) '459EF8
  global_4561072 = Value
End Sub

Public Sub global_4561072Set(Value) '459F12
  global_4561072 = Value
End Sub

Public Function global_4561072Get() '459F2C
  global_4561072Get = global_4561072
End Function

Public Sub global_4561072Put(Value) '459F46
  global_4561072 = Value
End Sub

Public Sub global_4561072Set(Value) '459F60
  global_4561072 = Value
End Sub
