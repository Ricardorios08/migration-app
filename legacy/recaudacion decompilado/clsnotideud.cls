VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsnotideud"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject
Public RsCls As New UnkObject


Public Function RsFrmGet() '40AB8C
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40AB9B
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40ABAA
  RsFrm = Value
End Sub

Public Function RsClsGet() '40ABB9
  RsClsGet = RsCls
End Function

Public Sub RsClsPut(Value) '40ABC8
  RsCls = Value
End Sub

Public Sub RsClsSet(Value) '40ABD7
  RsCls = Value
End Sub

Public Sub Mover(iCantidad) '9FD418
  'Data Table: 40A928
  loc_9FD3E8: FLdRfVar var_88
  loc_9FD3EB: FLdPr Me
  loc_9FD3EE: MemLdPr RsFrm
  loc_9FD3F1:  = Me.RecordCount
  loc_9FD3F6: ILdRf var_88
  loc_9FD3F9: LitI4 0
  loc_9FD3FE: GtI4
  loc_9FD3FF: BranchF loc_9FD414
  loc_9FD402: LitVar_Missing var_98
  loc_9FD405: PopAdLdVar
  loc_9FD406: ILdI4 iCantidad
  loc_9FD409: FLdPr Me
  loc_9FD40C: MemLdPr RsFrm
  loc_9FD40F: Me.Move from_stack_1, from_stack_2
  loc_9FD414: ExitProcHresult
End Sub

Public Sub MoveFirst() '9EC64C
  'Data Table: 40A928
  loc_9EC624: FLdRfVar var_88
  loc_9EC627: FLdPr Me
  loc_9EC62A: MemLdPr RsFrm
  loc_9EC62D:  = Me.RecordCount
  loc_9EC632: ILdRf var_88
  loc_9EC635: LitI4 0
  loc_9EC63A: GtI4
  loc_9EC63B: BranchF loc_9EC649
  loc_9EC63E: FLdPr Me
  loc_9EC641: MemLdPr RsFrm
  loc_9EC644: Me.MoveFirst
  loc_9EC649: ExitProcHresult
End Sub

Public Sub MoveLast() '9EC59C
  'Data Table: 40A928
  loc_9EC574: FLdRfVar var_88
  loc_9EC577: FLdPr Me
  loc_9EC57A: MemLdPr RsFrm
  loc_9EC57D:  = Me.RecordCount
  loc_9EC582: ILdRf var_88
  loc_9EC585: LitI4 0
  loc_9EC58A: GtI4
  loc_9EC58B: BranchF loc_9EC599
  loc_9EC58E: FLdPr Me
  loc_9EC591: MemLdPr RsFrm
  loc_9EC594: Me.MoveLast
  loc_9EC599: ExitProcHresult
End Sub

Public Sub MoveNext() 'A69118
  'Data Table: 40A928
  loc_A690A0: FLdRfVar var_86
  loc_A690A3: FLdPr Me
  loc_A690A6: MemLdPr RsFrm
  loc_A690A9:  = Me.EOF
  loc_A690AE: FLdI2 var_86
  loc_A690B1: NotI4
  loc_A690B2: FLdRfVar var_8C
  loc_A690B5: FLdPr Me
  loc_A690B8: MemLdPr RsFrm
  loc_A690BB:  = Me.RecordCount
  loc_A690C0: ILdRf var_8C
  loc_A690C3: LitI4 0
  loc_A690C8: GtI4
  loc_A690C9: AndI4
  loc_A690CA: BranchF loc_A690D8
  loc_A690CD: FLdPr Me
  loc_A690D0: MemLdPr RsFrm
  loc_A690D3: Me.MoveNext
  loc_A690D8: FLdRfVar var_86
  loc_A690DB: FLdPr Me
  loc_A690DE: MemLdPr RsFrm
  loc_A690E1:  = Me.EOF
  loc_A690E6: FLdI2 var_86
  loc_A690E9: FLdRfVar var_8C
  loc_A690EC: FLdPr Me
  loc_A690EF: MemLdPr RsFrm
  loc_A690F2:  = Me.RecordCount
  loc_A690F7: ILdRf var_8C
  loc_A690FA: LitI4 0
  loc_A690FF: GtI4
  loc_A69100: AndI4
  loc_A69101: BranchF loc_A69114
  loc_A69104: ImpAdCallFPR4 Beep()
  loc_A69109: FLdPr Me
  loc_A6910C: MemLdPr RsFrm
  loc_A6910F: Me.MoveLast
  loc_A69114: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B1380
  'Data Table: 40A928
  loc_9B1374: FLdPr Me
  loc_9B1377: MemLdPr RsFrm
  loc_9B137A: Me.MoveNext
  loc_9B137F: ExitProcHresult
End Sub

Public Sub Move(iValor) '9BB250
  'Data Table: 40A928
  loc_9BB23C: LitVar_Missing var_94
  loc_9BB23F: PopAdLdVar
  loc_9BB240: ILdI2 iValor
  loc_9BB243: CI4UI1
  loc_9BB244: FLdPr Me
  loc_9BB247: MemLdPr RsFrm
  loc_9BB24A: Me.Move from_stack_1, from_stack_2
  loc_9BB24F: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A69268
  'Data Table: 40A928
  loc_A691F0: FLdRfVar var_86
  loc_A691F3: FLdPr Me
  loc_A691F6: MemLdPr RsFrm
  loc_A691F9:  = Me.BOF
  loc_A691FE: FLdI2 var_86
  loc_A69201: NotI4
  loc_A69202: FLdRfVar var_8C
  loc_A69205: FLdPr Me
  loc_A69208: MemLdPr RsFrm
  loc_A6920B:  = Me.RecordCount
  loc_A69210: ILdRf var_8C
  loc_A69213: LitI4 0
  loc_A69218: GtI4
  loc_A69219: AndI4
  loc_A6921A: BranchF loc_A69228
  loc_A6921D: FLdPr Me
  loc_A69220: MemLdPr RsFrm
  loc_A69223: Me.MovePrevious
  loc_A69228: FLdRfVar var_86
  loc_A6922B: FLdPr Me
  loc_A6922E: MemLdPr RsFrm
  loc_A69231:  = Me.BOF
  loc_A69236: FLdI2 var_86
  loc_A69239: FLdRfVar var_8C
  loc_A6923C: FLdPr Me
  loc_A6923F: MemLdPr RsFrm
  loc_A69242:  = Me.RecordCount
  loc_A69247: ILdRf var_8C
  loc_A6924A: LitI4 0
  loc_A6924F: GtI4
  loc_A69250: AndI4
  loc_A69251: BranchF loc_A69264
  loc_A69254: ImpAdCallFPR4 Beep()
  loc_A69259: FLdPr Me
  loc_A6925C: MemLdPr RsFrm
  loc_A6925F: Me.MoveFirst
  loc_A69264: ExitProcHresult
End Sub

Public Property Get EOF() '9C950C
  'Data Table: 40A928
  loc_9C94F0: FLdRfVar var_88
  loc_9C94F3: FLdPr Me
  loc_9C94F6: MemLdPr RsFrm
  loc_9C94F9:  = Me.EOF
  loc_9C94FE: FLdI2 var_88
  loc_9C9501: FStI2 var_86
  loc_9C9504: ExitProcCbHresult
End Sub

Public Property Get BOF() '9C94C0
  'Data Table: 40A928
  loc_9C94A4: FLdRfVar var_88
  loc_9C94A7: FLdPr Me
  loc_9C94AA: MemLdPr RsFrm
  loc_9C94AD:  = Me.BOF
  loc_9C94B2: FLdI2 var_88
  loc_9C94B5: FStI2 var_86
  loc_9C94B8: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B76F8
  'Data Table: 40A928
  loc_9B76E8: ILdI4 sOrden
  loc_9B76EB: FLdPr Me
  loc_9B76EE: MemLdPr RsFrm
  loc_9B76F1: Me.Sort = from_stack_1
  loc_9B76F6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E0290
  'Data Table: 40A928
  loc_9E0270: LitVar_Missing var_94
  loc_9E0273: PopAdLdVar
  loc_9E0274: LitI4 1
  loc_9E0279: LitI4 0
  loc_9E027E: ILdI4 sFind
  loc_9E0281: FLdPr Me
  loc_9E0284: MemLdPr RsFrm
  loc_9E0287: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E028C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9BB4B4
  'Data Table: 40A928
  loc_9BB4A0: ILdI4 sCriterio
  loc_9BB4A3: CVarStr var_94
  loc_9BB4A6: PopAdLdVar
  loc_9BB4A7: FLdPr Me
  loc_9BB4AA: MemLdPr RsFrm
  loc_9BB4AD: Me.Filter = from_stack_1
  loc_9BB4B2: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9C9260
  'Data Table: 40A928
  loc_9C9244: FLdRfVar var_8C
  loc_9C9247: FLdPr Me
  loc_9C924A: MemLdPr RsFrm
  loc_9C924D:  = Me.AbsolutePosition
  loc_9C9252: ILdRf var_8C
  loc_9C9255: FStR4 var_88
  loc_9C9258: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9C8E84
  'Data Table: 40A928
  loc_9C8E68: FLdRfVar var_8C
  loc_9C8E6B: FLdPr Me
  loc_9C8E6E: MemLdPr RsFrm
  loc_9C8E71:  = Me.RecordCount
  loc_9C8E76: ILdRf var_8C
  loc_9C8E79: FStR4 var_88
  loc_9C8E7C: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiOfic, CuenCtct, FechNode, ObseNode, ByNotiNode, HaceRequery) 'B9F2C4
  'Data Table: 40A928
  loc_B9ED88: ILdRf CuenCtct
  loc_B9ED8B: FStStrCopy var_88
  loc_B9ED8E: ILdRf FechNode
  loc_B9ED91: FStStrCopy var_8C
  loc_B9ED94: ILdRf ObseNode
  loc_B9ED97: FStStrCopy var_90
  loc_B9ED9A: LitStr "Municipalidad de Guaymallén"
  loc_B9ED9D: LitStr "Municipalidad de San Carlos"
  loc_B9EDA0: EqStr
  loc_B9EDA2: BranchF loc_B9F170
  loc_B9EDA5: FLdRfVar var_B2
  loc_B9EDA8: ILdRf var_88
  loc_B9EDAB: FLdUI1
  loc_B9EDAF: from_stack_3v = NuevoRegistro(from_stack_1v, from_stack_2v)
  loc_B9EDB4: FLdI2 var_B2
  loc_B9EDB7: FStI2 var_96
  loc_B9EDBA: FLdRfVar var_B2
  loc_B9EDBD: ILdRf var_88
  loc_B9EDC0: FLdUI1
  loc_B9EDC4: from_stack_3v = NuevoRegistroActivos(from_stack_1v, from_stack_2v)
  loc_B9EDC9: FLdI2 var_B2
  loc_B9EDCC: FStI2 var_98
  loc_B9EDCF: ImpAdCallFPR4 Proc_270_17_A5A74C()
  loc_B9EDD4: FStFPR8 var_A8
  loc_B9EDD7: FLdI2 var_98
  loc_B9EDDA: FStI2 var_B4
  loc_B9EDDD: FLdI2 var_B4
  loc_B9EDE0: LitI2_Byte 1
  loc_B9EDE2: EqI2
  loc_B9EDE3: BranchF loc_B9EE1B
  loc_B9EDE6: LitDate 25.83
  loc_B9EDEF: FStFPR8 var_A0
  loc_B9EDF2: LitI4 2
  loc_B9EDF7: FLdFPR8 var_A0
  loc_B9EDFA: FLdFPR8 var_A8
  loc_B9EDFD: MulR8
  loc_B9EDFE: CVarR8
  loc_B9EE02: FLdRfVar var_E4
  loc_B9EE05: ImpAdCallFPR4  = Round(, )
  loc_B9EE0A: FLdRfVar var_E4
  loc_B9EE0D: CR4Var
  loc_B9EE0E: FStFPR8 var_A0
  loc_B9EE11: FFreeVar var_D4 = ""
  loc_B9EE18: Branch loc_B9EE8B
  loc_B9EE1B: FLdI2 var_B4
  loc_B9EE1E: LitI2_Byte 2
  loc_B9EE20: EqI2
  loc_B9EE21: BranchF loc_B9EE59
  loc_B9EE24: LitDate 38.74
  loc_B9EE2D: FStFPR8 var_A0
  loc_B9EE30: LitI4 2
  loc_B9EE35: FLdFPR8 var_A0
  loc_B9EE38: FLdFPR8 var_A8
  loc_B9EE3B: MulR8
  loc_B9EE3C: CVarR8
  loc_B9EE40: FLdRfVar var_E4
  loc_B9EE43: ImpAdCallFPR4  = Round(, )
  loc_B9EE48: FLdRfVar var_E4
  loc_B9EE4B: CR4Var
  loc_B9EE4C: FStFPR8 var_A0
  loc_B9EE4F: FFreeVar var_D4 = ""
  loc_B9EE56: Branch loc_B9EE8B
  loc_B9EE59: LitDate 51.66
  loc_B9EE62: FStFPR8 var_A0
  loc_B9EE65: LitI4 2
  loc_B9EE6A: FLdFPR8 var_A0
  loc_B9EE6D: FLdFPR8 var_A8
  loc_B9EE70: MulR8
  loc_B9EE71: CVarR8
  loc_B9EE75: FLdRfVar var_E4
  loc_B9EE78: ImpAdCallFPR4  = Round(, )
  loc_B9EE7D: FLdRfVar var_E4
  loc_B9EE80: CR4Var
  loc_B9EE81: FStFPR8 var_A0
  loc_B9EE84: FFreeVar var_D4 = ""
  loc_B9EE8B: LitStr "START TRANSACTION; "
  loc_B9EE8E: FStStrCopy var_94
  loc_B9EE91: ILdRf var_94
  loc_B9EE94: LitStr " INSERT INTO notideud (CodiOfic,CuenCtct,NumeNode,FechNode,ObseNode,NotiNode,AltaUsua,AltaFeho) "
  loc_B9EE97: ConcatStr
  loc_B9EE98: FStStrNoPop var_E8
  loc_B9EE9B: LitStr " VALUES ("
  loc_B9EE9E: ConcatStr
  loc_B9EE9F: FStStrNoPop var_EC
  loc_B9EEA2: FLdUI1
  loc_B9EEA6: CStrI2
  loc_B9EEA8: FStStrNoPop var_F0
  loc_B9EEAB: ConcatStr
  loc_B9EEAC: FStStrNoPop var_F4
  loc_B9EEAF: LitStr ",'"
  loc_B9EEB2: ConcatStr
  loc_B9EEB3: FStStrNoPop var_F8
  loc_B9EEB6: ILdRf var_88
  loc_B9EEB9: ConcatStr
  loc_B9EEBA: FStStrNoPop var_FC
  loc_B9EEBD: LitStr "',"
  loc_B9EEC0: ConcatStr
  loc_B9EEC1: FStStrNoPop var_100
  loc_B9EEC4: FLdI2 var_96
  loc_B9EEC7: CStrUI1
  loc_B9EEC9: FStStrNoPop var_104
  loc_B9EECC: ConcatStr
  loc_B9EECD: FStStrNoPop var_108
  loc_B9EED0: LitStr ","
  loc_B9EED3: ConcatStr
  loc_B9EED4: CVarStr var_128
  loc_B9EED7: LitI4 1
  loc_B9EEDC: LitI4 1
  loc_B9EEE1: LitVarStr var_118, "'yyyy-mm-dd'"
  loc_B9EEE6: FStVarCopyObj var_D4
  loc_B9EEE9: FLdRfVar var_D4
  loc_B9EEEC: FLdRfVar var_8C
  loc_B9EEEF: CVarRef
  loc_B9EEF4: FLdRfVar var_E4
  loc_B9EEF7: ImpAdCallFPR4  = Format(, )
  loc_B9EEFC: FLdRfVar var_E4
  loc_B9EEFF: ConcatVar var_138
  loc_B9EF03: LitVarStr var_148, ",'"
  loc_B9EF08: ConcatVar var_158
  loc_B9EF0C: ILdRf var_90
  loc_B9EF0F: CVarStr var_168
  loc_B9EF12: ConcatVar var_178
  loc_B9EF16: LitVarStr var_188, "',"
  loc_B9EF1B: ConcatVar var_198
  loc_B9EF1F: FLdUI1
  loc_B9EF23: CVarUI1
  loc_B9EF27: ConcatVar var_1B8
  loc_B9EF2B: LitVarStr var_1C8, ",'"
  loc_B9EF30: ConcatVar var_1D8
  loc_B9EF34: ImpAdLdI4 MemVar_D9302C
  loc_B9EF37: CVarStr var_1E8
  loc_B9EF3A: ConcatVar var_1F8
  loc_B9EF3E: LitVarStr var_208, "', now());"
  loc_B9EF43: ConcatVar var_218
  loc_B9EF47: CStrVarTmp
  loc_B9EF48: FStStr var_94
  loc_B9EF4B: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_B9EF60: FFreeVar var_D4 = "": var_128 = "": var_E4 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = ""
  loc_B9EF79: FLdRfVar var_21C
  loc_B9EF7C: ImpAdLdI2 MemVar_D93034
  loc_B9EF7F: FLdRfVar var_B0
  loc_B9EF82: NewIfNullPr clsctacte
  loc_B9EF85: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_B9EF8A: ILdRf var_21C
  loc_B9EF8D: FStR4 var_AC
  loc_B9EF90: LitI2_Byte 0
  loc_B9EF92: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B9EF97: FStFPR8 var_408
  loc_B9EF9A: ILdRf var_94
  loc_B9EF9D: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, TifaCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, CodiUsua) "
  loc_B9EFA0: ConcatStr
  loc_B9EFA1: FStStrNoPop var_E8
  loc_B9EFA4: LitStr " VALUES ("
  loc_B9EFA7: ConcatStr
  loc_B9EFA8: FStStrNoPop var_EC
  loc_B9EFAB: FLdUI1
  loc_B9EFAF: CStrI2
  loc_B9EFB1: FStStrNoPop var_F0
  loc_B9EFB4: ConcatStr
  loc_B9EFB5: FStStrNoPop var_F4
  loc_B9EFB8: LitStr ",'"
  loc_B9EFBB: ConcatStr
  loc_B9EFBC: FStStrNoPop var_F8
  loc_B9EFBF: ILdRf var_88
  loc_B9EFC2: ConcatStr
  loc_B9EFC3: FStStrNoPop var_FC
  loc_B9EFC6: LitStr "',"
  loc_B9EFC9: ConcatStr
  loc_B9EFCA: FStStrNoPop var_100
  loc_B9EFCD: ImpAdLdI2 MemVar_D93034
  loc_B9EFD0: CStrUI1
  loc_B9EFD2: FStStrNoPop var_104
  loc_B9EFD5: ConcatStr
  loc_B9EFD6: FStStrNoPop var_108
  loc_B9EFD9: LitStr ","
  loc_B9EFDC: ConcatStr
  loc_B9EFDD: CVarStr var_128
  loc_B9EFE0: LitI2_Byte 0
  loc_B9EFE2: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B9EFE7: CVarDate var_D4
  loc_B9EFEB: FLdRfVar var_E4
  loc_B9EFEE: ImpAdCallFPR4  = Month()
  loc_B9EFF3: FLdRfVar var_E4
  loc_B9EFF6: ConcatVar var_138
  loc_B9EFFA: LitVarStr var_118, ","
  loc_B9EFFF: ConcatVar var_158
  loc_B9F003: ILdRf var_AC
  loc_B9F006: CVarI4
  loc_B9F00A: ConcatVar var_178
  loc_B9F00E: LitVarStr var_168, ",1,0,0,0,0,'Bimestral','"
  loc_B9F013: ConcatVar var_198
  loc_B9F017: LitI4 1
  loc_B9F01C: LitI4 1
  loc_B9F021: LitVarStr var_1A8, "yyyy-mm-dd"
  loc_B9F026: FStVarCopyObj var_1D8
  loc_B9F029: FLdRfVar var_1D8
  loc_B9F02C: FLdFPR8 var_408
  loc_B9F02F: CVarDate var_1B8
  loc_B9F033: ImpAdCallI2 Format$(, )
  loc_B9F038: CVarStr var_1F8
  loc_B9F03B: ConcatVar var_218
  loc_B9F03F: LitVarStr var_1C8, "','"
  loc_B9F044: ConcatVar var_22C
  loc_B9F048: LitI4 1
  loc_B9F04D: LitI4 1
  loc_B9F052: LitVarStr var_208, "yyyy-mm-dd"
  loc_B9F057: FStVarCopyObj var_23C
  loc_B9F05A: FLdRfVar var_23C
  loc_B9F05D: FLdRfVar var_8C
  loc_B9F060: CVarRef
  loc_B9F065: ImpAdCallI2 Format$(, )
  loc_B9F06A: CVarStr var_24C
  loc_B9F06D: ConcatVar var_25C
  loc_B9F071: LitVarStr var_26C, "',Null,0,"
  loc_B9F076: ConcatVar var_27C
  loc_B9F07A: ImpAdLdI2 MemVar_D93034
  loc_B9F07D: CVarI2 var_28C
  loc_B9F080: ConcatVar var_29C
  loc_B9F084: LitVarStr var_2AC, ",'13024300',0 ,0, 0,"
  loc_B9F089: ConcatVar var_2BC
  loc_B9F08D: LitStr "13024300"
  loc_B9F090: ImpAdLdI2 MemVar_D93034
  loc_B9F093: ImpAdCallI2 Proc_270_26_A93BD0(, )
  loc_B9F098: CVarStr var_2CC
  loc_B9F09B: ConcatVar var_2DC
  loc_B9F09F: LitVarStr var_2EC, ",'NOTIFIC.NRO: "
  loc_B9F0A4: ConcatVar var_2FC
  loc_B9F0A8: FLdI2 var_96
  loc_B9F0AB: CVarI2 var_30C
  loc_B9F0AE: ConcatVar var_31C
  loc_B9F0B2: LitVarStr var_32C, "', 's/f', 0, 0, 'AFORO AUTOMÁTICO DE NOTIFICACIÓN DE DEUDA. NUMERO: "
  loc_B9F0B7: ConcatVar var_33C
  loc_B9F0BB: FLdI2 var_96
  loc_B9F0BE: CVarI2 var_34C
  loc_B9F0C1: ConcatVar var_35C
  loc_B9F0C5: LitVarStr var_36C, "',"
  loc_B9F0CA: ConcatVar var_37C
  loc_B9F0CE: LitI4 0
  loc_B9F0D3: LitI4 -1
  loc_B9F0D8: LitI4 1
  loc_B9F0DD: LitStr "."
  loc_B9F0E0: LitStr ","
  loc_B9F0E3: FLdFPR8 var_A0
  loc_B9F0E6: CStrR8
  loc_B9F0E8: FStStrNoPop var_380
  loc_B9F0EB: ImpAdCallI2 Replace(, , , , , )
  loc_B9F0F0: CVarStr var_390
  loc_B9F0F3: ConcatVar var_3A0
  loc_B9F0F7: LitVarStr var_3B0, ",0,'"
  loc_B9F0FC: ConcatVar var_3C0
  loc_B9F100: ImpAdLdI4 MemVar_D9302C
  loc_B9F103: CVarStr var_3D0
  loc_B9F106: ConcatVar var_3E0
  loc_B9F10A: LitVarStr var_3F0, "');"
  loc_B9F10F: ConcatVar var_400
  loc_B9F113: CStrVarTmp
  loc_B9F114: FStStr var_94
  loc_B9F117: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_B9F12E: FFreeVar var_D4 = "": var_128 = "": var_E4 = "": var_138 = "": var_158 = "": var_178 = "": var_1B8 = "": var_1D8 = "": var_198 = "": var_1F8 = "": var_218 = "": var_23C = "": var_22C = "": var_24C = "": var_25C = "": var_27C = "": var_29C = "": var_2BC = "": var_2CC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = "": var_35C = "": var_37C = "": var_390 = "": var_3A0 = "": var_3C0 = "": var_3E0 = ""
  loc_B9F16D: Branch loc_B9F288
  loc_B9F170: FLdRfVar var_B2
  loc_B9F173: ILdRf var_88
  loc_B9F176: FLdUI1
  loc_B9F17A: from_stack_3v = NuevoRegistro(from_stack_1v, from_stack_2v)
  loc_B9F17F: FLdI2 var_B2
  loc_B9F182: FStI2 var_96
  loc_B9F185: FLdRfVar var_B2
  loc_B9F188: ILdRf var_88
  loc_B9F18B: FLdUI1
  loc_B9F18F: from_stack_3v = NuevoRegistroActivos(from_stack_1v, from_stack_2v)
  loc_B9F194: FLdI2 var_B2
  loc_B9F197: FStI2 var_98
  loc_B9F19A: LitStr "START TRANSACTION; "
  loc_B9F19D: FStStrCopy var_94
  loc_B9F1A0: ILdRf var_94
  loc_B9F1A3: LitStr " INSERT INTO notideud (CodiOfic,CuenCtct,NumeNode,FechNode,ObseNode,NotiNode,AltaUsua,AltaFeho) "
  loc_B9F1A6: ConcatStr
  loc_B9F1A7: FStStrNoPop var_E8
  loc_B9F1AA: LitStr " VALUES ("
  loc_B9F1AD: ConcatStr
  loc_B9F1AE: FStStrNoPop var_EC
  loc_B9F1B1: FLdUI1
  loc_B9F1B5: CStrI2
  loc_B9F1B7: FStStrNoPop var_F0
  loc_B9F1BA: ConcatStr
  loc_B9F1BB: FStStrNoPop var_F4
  loc_B9F1BE: LitStr ",'"
  loc_B9F1C1: ConcatStr
  loc_B9F1C2: FStStrNoPop var_F8
  loc_B9F1C5: ILdRf var_88
  loc_B9F1C8: ConcatStr
  loc_B9F1C9: FStStrNoPop var_FC
  loc_B9F1CC: LitStr "',"
  loc_B9F1CF: ConcatStr
  loc_B9F1D0: FStStrNoPop var_100
  loc_B9F1D3: FLdI2 var_96
  loc_B9F1D6: CStrUI1
  loc_B9F1D8: FStStrNoPop var_104
  loc_B9F1DB: ConcatStr
  loc_B9F1DC: FStStrNoPop var_108
  loc_B9F1DF: LitStr ","
  loc_B9F1E2: ConcatStr
  loc_B9F1E3: CVarStr var_128
  loc_B9F1E6: LitI4 1
  loc_B9F1EB: LitI4 1
  loc_B9F1F0: LitVarStr var_118, "'yyyy-mm-dd'"
  loc_B9F1F5: FStVarCopyObj var_D4
  loc_B9F1F8: FLdRfVar var_D4
  loc_B9F1FB: FLdRfVar var_8C
  loc_B9F1FE: CVarRef
  loc_B9F203: FLdRfVar var_E4
  loc_B9F206: ImpAdCallFPR4  = Format(, )
  loc_B9F20B: FLdRfVar var_E4
  loc_B9F20E: ConcatVar var_138
  loc_B9F212: LitVarStr var_148, ",'"
  loc_B9F217: ConcatVar var_158
  loc_B9F21B: ILdRf var_90
  loc_B9F21E: CVarStr var_168
  loc_B9F221: ConcatVar var_178
  loc_B9F225: LitVarStr var_188, "',"
  loc_B9F22A: ConcatVar var_198
  loc_B9F22E: FLdUI1
  loc_B9F232: CVarUI1
  loc_B9F236: ConcatVar var_1B8
  loc_B9F23A: LitVarStr var_1C8, ",'"
  loc_B9F23F: ConcatVar var_1D8
  loc_B9F243: ImpAdLdI4 MemVar_D9302C
  loc_B9F246: CVarStr var_1E8
  loc_B9F249: ConcatVar var_1F8
  loc_B9F24D: LitVarStr var_208, "', now());"
  loc_B9F252: ConcatVar var_218
  loc_B9F256: CStrVarTmp
  loc_B9F257: FStStr var_94
  loc_B9F25A: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_B9F26F: FFreeVar var_D4 = "": var_128 = "": var_E4 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = ""
  loc_B9F288: OnErrorGoto loc_B9F2B1
  loc_B9F28B: ILdRf var_94
  loc_B9F28E: Call Proc_206_31_A478E4()
  loc_B9F293: LitStr "COMMIT;"
  loc_B9F296: Call Proc_206_31_A478E4()
  loc_B9F29B: FLdI2 HaceRequery
  loc_B9F29E: BranchF loc_B9F2B0
  loc_B9F2A1: FLdI2 var_96
  loc_B9F2A4: ILdRf var_88
  loc_B9F2A7: FLdUI1
  loc_B9F2AB: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B9F2B0: ExitProcHresult
  loc_B9F2B1: LitStr "ROLLBACK;"
  loc_B9F2B4: Call Proc_206_31_A478E4()
  loc_B9F2B9: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B9F2BC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B9F2C1: ExitProcHresult
End Sub

Public Sub Modificar(CodiOfic, CuenCtct, NumeNode, FechNode, ObseNode, ByNotiNode, HaceRequery) 'AE4AC8
  'Data Table: 40A928
  loc_AE499C: ILdRf CuenCtct
  loc_AE499F: FStStrCopy var_88
  loc_AE49A2: ILdRf NumeNode
  loc_AE49A5: FStStrCopy var_8C
  loc_AE49A8: ILdRf FechNode
  loc_AE49AB: FStStrCopy var_90
  loc_AE49AE: ILdRf ObseNode
  loc_AE49B1: FStStrCopy var_94
  loc_AE49B4: LitVarStr var_E8, "START TRANSACTION; UPDATE notideud SET FechNode = "
  loc_AE49B9: LitI4 1
  loc_AE49BE: LitI4 1
  loc_AE49C3: LitVarStr var_B8, "'yyyy-mm-dd'"
  loc_AE49C8: FStVarCopyObj var_C8
  loc_AE49CB: FLdRfVar var_C8
  loc_AE49CE: FLdRfVar var_90
  loc_AE49D1: CVarRef
  loc_AE49D6: FLdRfVar var_D8
  loc_AE49D9: ImpAdCallFPR4  = Format(, )
  loc_AE49DE: FLdRfVar var_D8
  loc_AE49E1: ConcatVar var_F8
  loc_AE49E5: LitVarStr var_108, ", ObseNode = '"
  loc_AE49EA: ConcatVar var_118
  loc_AE49EE: ILdRf var_94
  loc_AE49F1: CVarStr var_128
  loc_AE49F4: ConcatVar var_138
  loc_AE49F8: LitVarStr var_148, "', NotiNode = "
  loc_AE49FD: ConcatVar var_158
  loc_AE4A01: FLdUI1
  loc_AE4A05: CVarUI1
  loc_AE4A09: ConcatVar var_178
  loc_AE4A0D: LitVarStr var_188, ", ModiUsua = '"
  loc_AE4A12: ConcatVar var_198
  loc_AE4A16: ImpAdLdI4 MemVar_D9302C
  loc_AE4A19: CVarStr var_1A8
  loc_AE4A1C: ConcatVar var_1B8
  loc_AE4A20: LitVarStr var_1C8, "', ModiFeho = now() WHERE CodiOfic = "
  loc_AE4A25: ConcatVar var_1D8
  loc_AE4A29: FLdUI1
  loc_AE4A2D: CVarUI1
  loc_AE4A31: ConcatVar var_1F8
  loc_AE4A35: LitVarStr var_208, " AND CuenCtct = '"
  loc_AE4A3A: ConcatVar var_218
  loc_AE4A3E: ILdRf var_88
  loc_AE4A41: CVarStr var_228
  loc_AE4A44: ConcatVar var_238
  loc_AE4A48: LitVarStr var_248, "' AND NumeNode = "
  loc_AE4A4D: ConcatVar var_258
  loc_AE4A51: ILdRf var_8C
  loc_AE4A54: CVarStr var_268
  loc_AE4A57: ConcatVar var_278
  loc_AE4A5B: LitVarStr var_288, ";"
  loc_AE4A60: ConcatVar var_298
  loc_AE4A64: CStrVarTmp
  loc_AE4A65: FStStr var_98
  loc_AE4A68: FFreeVar var_C8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = "": var_218 = "": var_238 = "": var_258 = "": var_278 = ""
  loc_AE4A8B: OnErrorGoto loc_AE4AB6
  loc_AE4A8E: ILdRf var_98
  loc_AE4A91: Call Proc_206_31_A478E4()
  loc_AE4A96: LitStr "COMMIT;"
  loc_AE4A99: Call Proc_206_31_A478E4()
  loc_AE4A9E: FLdI2 HaceRequery
  loc_AE4AA1: BranchF loc_AE4AB5
  loc_AE4AA4: ILdRf var_8C
  loc_AE4AA7: CI2Str
  loc_AE4AA9: ILdRf var_88
  loc_AE4AAC: FLdUI1
  loc_AE4AB0: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AE4AB5: ExitProcHresult
  loc_AE4AB6: LitStr "ROLLBACK;"
  loc_AE4AB9: Call Proc_206_31_A478E4()
  loc_AE4ABE: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AE4AC1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE4AC6: ExitProcHresult
End Sub

Public Sub Baja(CodiOfic, CuenCtct, NumeNode, MotiBaja, HaceRequery) 'AB1FC8
  'Data Table: 40A928
  loc_AB1F14: ILdRf CuenCtct
  loc_AB1F17: FStStrCopy var_88
  loc_AB1F1A: ILdRf NumeNode
  loc_AB1F1D: FStStrCopy var_8C
  loc_AB1F20: ILdRf MotiBaja
  loc_AB1F23: FStStrCopy var_90
  loc_AB1F26: LitStr "START TRANSACTION; UPDATE notideud SET BajaFeho = now(), MotiBaja = '"
  loc_AB1F29: ILdRf var_90
  loc_AB1F2C: ConcatStr
  loc_AB1F2D: FStStrNoPop var_98
  loc_AB1F30: LitStr "', BajaUsua = '"
  loc_AB1F33: ConcatStr
  loc_AB1F34: FStStrNoPop var_9C
  loc_AB1F37: ImpAdLdI4 MemVar_D9302C
  loc_AB1F3A: ConcatStr
  loc_AB1F3B: FStStrNoPop var_A0
  loc_AB1F3E: LitStr "' WHERE CodiOfic = "
  loc_AB1F41: ConcatStr
  loc_AB1F42: FStStrNoPop var_A4
  loc_AB1F45: FLdUI1
  loc_AB1F49: CStrI2
  loc_AB1F4B: FStStrNoPop var_A8
  loc_AB1F4E: ConcatStr
  loc_AB1F4F: FStStrNoPop var_AC
  loc_AB1F52: LitStr " AND CuenCtct = '"
  loc_AB1F55: ConcatStr
  loc_AB1F56: FStStrNoPop var_B0
  loc_AB1F59: ILdRf var_88
  loc_AB1F5C: ConcatStr
  loc_AB1F5D: FStStrNoPop var_B4
  loc_AB1F60: LitStr "' AND NumeNode = "
  loc_AB1F63: ConcatStr
  loc_AB1F64: FStStrNoPop var_B8
  loc_AB1F67: ILdRf var_8C
  loc_AB1F6A: ConcatStr
  loc_AB1F6B: FStStrNoPop var_BC
  loc_AB1F6E: LitStr ";"
  loc_AB1F71: ConcatStr
  loc_AB1F72: FStStr var_94
  loc_AB1F75: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_AB1F8C: OnErrorGoto loc_AB1FB7
  loc_AB1F8F: ILdRf var_94
  loc_AB1F92: Call Proc_206_31_A478E4()
  loc_AB1F97: LitStr "COMMIT;"
  loc_AB1F9A: Call Proc_206_31_A478E4()
  loc_AB1F9F: FLdI2 HaceRequery
  loc_AB1FA2: BranchF loc_AB1FB6
  loc_AB1FA5: ILdRf var_8C
  loc_AB1FA8: CI2Str
  loc_AB1FAA: ILdRf var_88
  loc_AB1FAD: FLdUI1
  loc_AB1FB1: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AB1FB6: ExitProcHresult
  loc_AB1FB7: LitStr "ROLLBACK;"
  loc_AB1FBA: Call Proc_206_31_A478E4()
  loc_AB1FBF: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AB1FC2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB1FC7: ExitProcHresult
End Sub

Public Sub Requery() '9E50AC
  'Data Table: 40A928
  loc_9E5088: LitI4 -1
  loc_9E508D: FLdPr Me
  loc_9E5090: MemLdPr RsFrm
  loc_9E5093: Me.Requery from_stack_1
  loc_9E5098: LitVarStr var_94, "Primary"
  loc_9E509D: PopAdLdVar
  loc_9E509E: FLdPr Me
  loc_9E50A1: LateIdCall
  loc_9E50A9: ExitProcHresult
End Sub

Public Sub Encontrar(CodiOfic, CuenCtct, NumeNode) 'AA1028
  'Data Table: 40A928
  loc_AA0F74: ILdRf CuenCtct
  loc_AA0F77: FStStrCopy var_88
  loc_AA0F7A: Call Requery()
  loc_AA0F7F: LitStr "CodiOfic = '"
  loc_AA0F82: FLdUI1
  loc_AA0F86: CStrI2
  loc_AA0F88: FStStrNoPop var_8C
  loc_AA0F8B: ConcatStr
  loc_AA0F8C: FStStrNoPop var_90
  loc_AA0F8F: LitStr "'"
  loc_AA0F92: ConcatStr
  loc_AA0F93: PopTmpLdAdStr
  loc_AA0F97: Call Find(from_stack_1v)
  loc_AA0F9C: FFreeStr var_8C = "": var_90 = ""
  loc_AA0FA5: LitStr "CuenCtct = '"
  loc_AA0FA8: ILdRf var_88
  loc_AA0FAB: ConcatStr
  loc_AA0FAC: FStStrNoPop var_8C
  loc_AA0FAF: LitStr "'"
  loc_AA0FB2: ConcatStr
  loc_AA0FB3: PopTmpLdAdStr
  loc_AA0FB7: Call Find(from_stack_1v)
  loc_AA0FBC: FFreeStr var_8C = ""
  loc_AA0FC3: LitStr "NumeNode = '"
  loc_AA0FC6: FLdI2 NumeNode
  loc_AA0FC9: CStrUI1
  loc_AA0FCB: FStStrNoPop var_8C
  loc_AA0FCE: ConcatStr
  loc_AA0FCF: FStStrNoPop var_90
  loc_AA0FD2: LitStr "'"
  loc_AA0FD5: ConcatStr
  loc_AA0FD6: PopTmpLdAdStr
  loc_AA0FDA: Call Find(from_stack_1v)
  loc_AA0FDF: FFreeStr var_8C = "": var_90 = ""
  loc_AA0FE8: FLdRfVar var_98
  loc_AA0FEB: FLdPr Me
  loc_AA0FEE: MemLdPr RsFrm
  loc_AA0FF1:  = Me.RecordCount
  loc_AA0FF6: ILdRf var_98
  loc_AA0FF9: LitI4 0
  loc_AA0FFE: GtI4
  loc_AA0FFF: FLdRfVar var_9C
  loc_AA1002: FLdPr Me
  loc_AA1005: MemLdPr RsFrm
  loc_AA1008:  = Me.AbsolutePosition
  loc_AA100D: ILdRf var_9C
  loc_AA1010: LitI4 -3
  loc_AA1015: EqI4
  loc_AA1016: AndI4
  loc_AA1017: BranchF loc_AA1025
  loc_AA101A: FLdPr Me
  loc_AA101D: MemLdPr RsFrm
  loc_AA1020: Me.MoveLast
  loc_AA1025: ExitProcHresult
End Sub

Public Function ValidaClave(CodiOfic, CuenCtct, NumeNode) 'A8BF6C
  'Data Table: 40A928
  loc_A8BEE8: ILdRf CuenCtct
  loc_A8BEEB: FStStrCopy var_98
  loc_A8BEEE: ZeroRetValVar
  loc_A8BEF0: LitStr "SELECT CodiOfic, CuenCtct, NumeNode FROM notideud  WHERE CodiOfic = "
  loc_A8BEF3: FLdUI1
  loc_A8BEF7: CStrI2
  loc_A8BEF9: FStStrNoPop var_9C
  loc_A8BEFC: ConcatStr
  loc_A8BEFD: FStStrNoPop var_A0
  loc_A8BF00: LitStr " AND CuenCtct = '"
  loc_A8BF03: ConcatStr
  loc_A8BF04: FStStrNoPop var_A4
  loc_A8BF07: ILdRf var_98
  loc_A8BF0A: ConcatStr
  loc_A8BF0B: FStStrNoPop var_A8
  loc_A8BF0E: LitStr "' AND NumeNode = "
  loc_A8BF11: ConcatStr
  loc_A8BF12: FStStrNoPop var_AC
  loc_A8BF15: FLdI2 NumeNode
  loc_A8BF18: CStrUI1
  loc_A8BF1A: FStStrNoPop var_B0
  loc_A8BF1D: ConcatStr
  loc_A8BF1E: FStStrNoPop var_B4
  loc_A8BF21: LitStr ";"
  loc_A8BF24: ConcatStr
  loc_A8BF25: FStStrNoPop var_B8
  loc_A8BF28: Call Proc_206_31_A478E4()
  loc_A8BF2D: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A8BF40: FLdRfVar var_BC
  loc_A8BF43: FLdPr Me
  loc_A8BF46: MemLdPr RsCls
  loc_A8BF49:  = Me.RecordCount
  loc_A8BF4E: ILdRf var_BC
  loc_A8BF51: LitI4 0
  loc_A8BF56: GtI4
  loc_A8BF57: BranchF loc_A8BF63
  loc_A8BF5A: LitVarStr var_CC, "EL TIPO de INSPECCIÓN YA EXISTE. Reintente..."
  loc_A8BF5F: FStVarCopy
  loc_A8BF63: ExitProcCbHresult
End Function

Public Function NuevoRegistro(CodiOfic, CuenCtct) 'A97444
  'Data Table: 40A928
  loc_A973A8: ILdRf CuenCtct
  loc_A973AB: FStStrCopy var_8C
  loc_A973AE: LitStr "SELECT IFNULL(MAX(NumeNode),0) + 1 NumeNode FROM notideud  WHERE CodiOfic = "
  loc_A973B1: FLdUI1
  loc_A973B5: CStrI2
  loc_A973B7: FStStrNoPop var_90
  loc_A973BA: ConcatStr
  loc_A973BB: FStStrNoPop NuevoRegistro
  loc_A973BE: LitStr " AND CuenCtct = '"
  loc_A973C1: ConcatStr
  loc_A973C2: FStStrNoPop var_98
  loc_A973C5: ILdRf var_8C
  loc_A973C8: ConcatStr
  loc_A973C9: FStStrNoPop var_9C
  loc_A973CC: LitStr "' ORDER BY CodiOfic, CuenCtct"
  loc_A973CF: ConcatStr
  loc_A973D0: FStStrNoPop var_A0
  loc_A973D3: Call Proc_206_31_A478E4()
  loc_A973D8: FFreeStr var_90 = "": NuevoRegistro = "": var_98 = "": var_9C = ""
  loc_A973E5: FLdRfVar var_A4
  loc_A973E8: FLdPr Me
  loc_A973EB: MemLdPr RsCls
  loc_A973EE:  = Me.RecordCount
  loc_A973F3: ILdRf var_A4
  loc_A973F6: LitI4 0
  loc_A973FB: GtI4
  loc_A973FC: BranchF loc_A9743B
  loc_A973FF: FLdRfVar var_CC
  loc_A97402: FLdRfVar var_BC
  loc_A97405: LitVarStr var_B8, "NumeNode"
  loc_A9740A: PopAdLdVar
  loc_A9740B: FLdRfVar var_A8
  loc_A9740E: FLdPr Me
  loc_A97411: MemLdPr RsCls
  loc_A97414:  = Me.Fields
  loc_A97419: FLdPr var_A8
  loc_A9741C: from_stack_2 = Me.Item(from_stack_1)
  loc_A97421: FLdPr var_BC
  loc_A97424:  = Me.Value
  loc_A97429: FLdRfVar var_CC
  loc_A9742C: FnCIntVar
  loc_A9742E: FStI2 var_86
  loc_A97431: FFreeAd var_A8 = ""
  loc_A97438: FFree1Var var_CC = ""
  loc_A9743B: ExitProcCbHresult
End Function

Public Function NuevoRegistroActivos(CodiOfic, CuenCtct) 'A97534
  'Data Table: 40A928
  loc_A97498: ILdRf CuenCtct
  loc_A9749B: FStStrCopy var_8C
  loc_A9749E: LitStr "SELECT IFNULL(MAX(NumeNode),0) + 1 NumeNode FROM notideud  WHERE CodiOfic = "
  loc_A974A1: FLdUI1
  loc_A974A5: CStrI2
  loc_A974A7: FStStrNoPop var_90
  loc_A974AA: ConcatStr
  loc_A974AB: FStStrNoPop NuevoRegistroActivos
  loc_A974AE: LitStr " AND CuenCtct = '"
  loc_A974B1: ConcatStr
  loc_A974B2: FStStrNoPop var_98
  loc_A974B5: ILdRf var_8C
  loc_A974B8: ConcatStr
  loc_A974B9: FStStrNoPop var_9C
  loc_A974BC: LitStr "' AND BajaFeho IS NULL ORDER BY CodiOfic, CuenCtct"
  loc_A974BF: ConcatStr
  loc_A974C0: FStStrNoPop var_A0
  loc_A974C3: Call Proc_206_31_A478E4()
  loc_A974C8: FFreeStr var_90 = "": NuevoRegistroActivos = "": var_98 = "": var_9C = ""
  loc_A974D5: FLdRfVar var_A4
  loc_A974D8: FLdPr Me
  loc_A974DB: MemLdPr RsCls
  loc_A974DE:  = Me.RecordCount
  loc_A974E3: ILdRf var_A4
  loc_A974E6: LitI4 0
  loc_A974EB: GtI4
  loc_A974EC: BranchF loc_A9752B
  loc_A974EF: FLdRfVar var_CC
  loc_A974F2: FLdRfVar var_BC
  loc_A974F5: LitVarStr var_B8, "NumeNode"
  loc_A974FA: PopAdLdVar
  loc_A974FB: FLdRfVar var_A8
  loc_A974FE: FLdPr Me
  loc_A97501: MemLdPr RsCls
  loc_A97504:  = Me.Fields
  loc_A97509: FLdPr var_A8
  loc_A9750C: from_stack_2 = Me.Item(from_stack_1)
  loc_A97511: FLdPr var_BC
  loc_A97514:  = Me.Value
  loc_A97519: FLdRfVar var_CC
  loc_A9751C: FnCIntVar
  loc_A9751E: FStI2 var_86
  loc_A97521: FFreeAd var_A8 = ""
  loc_A97528: FFree1Var var_CC = ""
  loc_A9752B: ExitProcCbHresult
  loc_A97531: CVarI2 arg_36FF
End Function

Public Sub RedefineRS(sSelect) 'A5FCF4
  'Data Table: 40A928
  loc_A5FC90: ILdRf sSelect
  loc_A5FC93: FStStrCopy var_88
  loc_A5FC96: LitNothing
  loc_A5FC98: CastAd
  loc_A5FC9B: FStAdFuncNoPop
  loc_A5FC9E: FLdPr Me
  loc_A5FCA1: MemStAd
  loc_A5FCA5: FFree1Ad var_8C
  loc_A5FCA8: New Recordset
  loc_A5FCAC: FStAdFuncNoPop
  loc_A5FCAF: FLdPr Me
  loc_A5FCB2: MemStAd
  loc_A5FCB6: FFree1Ad var_8C
  loc_A5FCB9: LitI4 -1
  loc_A5FCBE: LitI4 3
  loc_A5FCC3: LitI4 3
  loc_A5FCC8: ImpAdLdI4 MemVar_D9301C
  loc_A5FCCB: CVarAd
  loc_A5FCCF: PopAdLdVar
  loc_A5FCD0: ILdRf var_88
  loc_A5FCD3: CVarStr var_9C
  loc_A5FCD6: PopAdLdVar
  loc_A5FCD7: FLdPr Me
  loc_A5FCDA: MemLdPr RsFrm
  loc_A5FCDD: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5FCE2: LitVarStr var_9C, "Primary"
  loc_A5FCE7: PopAdLdVar
  loc_A5FCE8: FLdPr Me
  loc_A5FCEB: LateIdCall
  loc_A5FCF3: ExitProcHresult
End Sub

Public Property Get DataSource() '9F0098
  'Data Table: 40A928
  loc_9F0074: ZeroRetVal
  loc_9F0076: FLdRfVar var_8C
  loc_9F0079: FLdPr Me
  loc_9F007C: MemLdPr RsFrm
  loc_9F007F:  = Me.DataSource
  loc_9F0084: ILdRf var_8C
  loc_9F0087: CastAd
  loc_9F008A: FStAdFunc var_88
  loc_9F008D: FFree1Ad var_8C
  loc_9F0090: ExitProcCbHresult
  loc_9F0096: FStFPR4 var_4FFD
End Sub

Private Function Proc_206_30_9F1628() '9F1628
  'Data Table: 40A928
  loc_9F1604: LitStr "Primary"
  loc_9F1607: FLdPr Me
  loc_9F160A: LateIdLdVar var_94 DispID_4 0
  loc_9F1611: CastAdVar Me
  loc_9F1615: FStAdFunc var_98
  loc_9F1618: FLdPr var_98
  loc_9F1620: FFree1Ad var_98
  loc_9F1623: FFree1Var var_94 = ""
  loc_9F1626: ExitProcHresult
End Function

Private Function Proc_206_31_A478E4(arg_C) 'A478E4
  'Data Table: 40A928
  loc_A47890: ILdRf arg_C
  loc_A47893: FStStrCopy var_88
  loc_A47896: LitNothing
  loc_A47898: CastAd
  loc_A4789B: FStAdFuncNoPop
  loc_A4789E: FLdPr Me
  loc_A478A1: MemStAd
  loc_A478A5: FFree1Ad var_8C
  loc_A478A8: New Recordset
  loc_A478AC: FStAdFuncNoPop
  loc_A478AF: FLdPr Me
  loc_A478B2: MemStAd
  loc_A478B6: FFree1Ad var_8C
  loc_A478B9: LitI4 -1
  loc_A478BE: LitI4 3
  loc_A478C3: LitI4 3
  loc_A478C8: ImpAdLdI4 MemVar_D9301C
  loc_A478CB: CVarAd
  loc_A478CF: PopAdLdVar
  loc_A478D0: ILdRf var_88
  loc_A478D3: CVarStr var_9C
  loc_A478D6: PopAdLdVar
  loc_A478D7: FLdPr Me
  loc_A478DA: MemLdPr RsCls
  loc_A478DD: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A478E2: ExitProcHresult
End Function

Private Function Proc_206_32_9E046C(arg_C) '9E046C
  'Data Table: 40A928
  loc_9E0450: ILdI4 arg_C
  loc_9E0453: FStStrCopy var_88
  loc_9E0456: ILdRf var_88
  loc_9E0459: LitStr "Primary"
  loc_9E045C: EqStr
  loc_9E045E: BranchF loc_9E046B
  loc_9E0461: FLdPr Me
  loc_9E0464: MemLdStr RsFrm
  loc_9E0467: IStAd
  loc_9E046B: ExitProcHresult
End Function
