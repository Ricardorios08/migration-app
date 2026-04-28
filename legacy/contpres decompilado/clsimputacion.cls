VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsimputacion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '4B0C00
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4B0C0F
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4B0C1E
  RsFrm = Value
End Sub

Public Sub Mover(iCantidad) '97599C
  'Data Table: 4AFD00
  loc_97596C: FLdRfVar var_88
  loc_97596F: FLdPr Me
  loc_975972: MemLdPr RsFrm
  loc_975975:  = Me.RecordCount
  loc_97597A: ILdRf var_88
  loc_97597D: LitI4 0
  loc_975982: GtI4
  loc_975983: BranchF loc_975998
  loc_975986: LitVar_Missing var_98
  loc_975989: PopAdLdVar
  loc_97598A: ILdI4 iCantidad
  loc_97598D: FLdPr Me
  loc_975990: MemLdPr RsFrm
  loc_975993: Me.Move from_stack_1, from_stack_2
  loc_975998: ExitProcHresult
End Sub

Public Sub MoveFirst() '96E234
  'Data Table: 4AFD00
  loc_96E20C: FLdRfVar var_88
  loc_96E20F: FLdPr Me
  loc_96E212: MemLdPr RsFrm
  loc_96E215:  = Me.RecordCount
  loc_96E21A: ILdRf var_88
  loc_96E21D: LitI4 0
  loc_96E222: GtI4
  loc_96E223: BranchF loc_96E231
  loc_96E226: FLdPr Me
  loc_96E229: MemLdPr RsFrm
  loc_96E22C: Me.MoveFirst
  loc_96E231: ExitProcHresult
  loc_96E232: CVarStr var_77B4
End Sub

Public Sub MoveLast() '96E33C
  'Data Table: 4AFD00
  loc_96E314: FLdRfVar var_88
  loc_96E317: FLdPr Me
  loc_96E31A: MemLdPr RsFrm
  loc_96E31D:  = Me.RecordCount
  loc_96E322: ILdRf var_88
  loc_96E325: LitI4 0
  loc_96E32A: GtI4
  loc_96E32B: BranchF loc_96E339
  loc_96E32E: FLdPr Me
  loc_96E331: MemLdPr RsFrm
  loc_96E334: Me.MoveLast
  loc_96E339: ExitProcHresult
  loc_96E33A: Ary1LdRf
End Sub

Public Sub MoveNext() '99E270
  'Data Table: 4AFD00
  loc_99E1F8: FLdRfVar var_86
  loc_99E1FB: FLdPr Me
  loc_99E1FE: MemLdPr RsFrm
  loc_99E201:  = Me.EOF
  loc_99E206: FLdI2 var_86
  loc_99E209: NotI4
  loc_99E20A: FLdRfVar var_8C
  loc_99E20D: FLdPr Me
  loc_99E210: MemLdPr RsFrm
  loc_99E213:  = Me.RecordCount
  loc_99E218: ILdRf var_8C
  loc_99E21B: LitI4 0
  loc_99E220: GtI4
  loc_99E221: AndI4
  loc_99E222: BranchF loc_99E230
  loc_99E225: FLdPr Me
  loc_99E228: MemLdPr RsFrm
  loc_99E22B: Me.MoveNext
  loc_99E230: FLdRfVar var_86
  loc_99E233: FLdPr Me
  loc_99E236: MemLdPr RsFrm
  loc_99E239:  = Me.EOF
  loc_99E23E: FLdI2 var_86
  loc_99E241: FLdRfVar var_8C
  loc_99E244: FLdPr Me
  loc_99E247: MemLdPr RsFrm
  loc_99E24A:  = Me.RecordCount
  loc_99E24F: ILdRf var_8C
  loc_99E252: LitI4 0
  loc_99E257: GtI4
  loc_99E258: AndI4
  loc_99E259: BranchF loc_99E26C
  loc_99E25C: ImpAdCallFPR4 Beep()
  loc_99E261: FLdPr Me
  loc_99E264: MemLdPr RsFrm
  loc_99E267: Me.MoveLast
  loc_99E26C: ExitProcHresult
  loc_99E26D: FFreeAd  = ""
End Sub

Public Sub MoveSiguiente() '94160C
  'Data Table: 4AFD00
  loc_941600: FLdPr Me
  loc_941603: MemLdPr RsFrm
  loc_941606: Me.MoveNext
  loc_94160B: ExitProcHresult
End Sub

Public Sub Move(iValor) '949490
  'Data Table: 4AFD00
  loc_94947C: LitVar_Missing var_94
  loc_94947F: PopAdLdVar
  loc_949480: ILdI2 iValor
  loc_949483: CI4UI1
  loc_949484: FLdPr Me
  loc_949487: MemLdPr RsFrm
  loc_94948A: Me.Move from_stack_1, from_stack_2
  loc_94948F: ExitProcHresult
End Sub

Public Sub MovePrevious() '99DDD8
  'Data Table: 4AFD00
  loc_99DD60: FLdRfVar var_86
  loc_99DD63: FLdPr Me
  loc_99DD66: MemLdPr RsFrm
  loc_99DD69:  = Me.BOF
  loc_99DD6E: FLdI2 var_86
  loc_99DD71: NotI4
  loc_99DD72: FLdRfVar var_8C
  loc_99DD75: FLdPr Me
  loc_99DD78: MemLdPr RsFrm
  loc_99DD7B:  = Me.RecordCount
  loc_99DD80: ILdRf var_8C
  loc_99DD83: LitI4 0
  loc_99DD88: GtI4
  loc_99DD89: AndI4
  loc_99DD8A: BranchF loc_99DD98
  loc_99DD8D: FLdPr Me
  loc_99DD90: MemLdPr RsFrm
  loc_99DD93: Me.MovePrevious
  loc_99DD98: FLdRfVar var_86
  loc_99DD9B: FLdPr Me
  loc_99DD9E: MemLdPr RsFrm
  loc_99DDA1:  = Me.BOF
  loc_99DDA6: FLdI2 var_86
  loc_99DDA9: FLdRfVar var_8C
  loc_99DDAC: FLdPr Me
  loc_99DDAF: MemLdPr RsFrm
  loc_99DDB2:  = Me.RecordCount
  loc_99DDB7: ILdRf var_8C
  loc_99DDBA: LitI4 0
  loc_99DDBF: GtI4
  loc_99DDC0: AndI4
  loc_99DDC1: BranchF loc_99DDD4
  loc_99DDC4: ImpAdCallFPR4 Beep()
  loc_99DDC9: FLdPr Me
  loc_99DDCC: MemLdPr RsFrm
  loc_99DDCF: Me.MoveFirst
  loc_99DDD4: ExitProcHresult
End Sub

Public Property Get EOF() '96513C
  'Data Table: 4AFD00
  loc_965120: FLdRfVar var_88
  loc_965123: FLdPr Me
  loc_965126: MemLdPr RsFrm
  loc_965129:  = Me.EOF
  loc_96512E: FLdI2 var_88
  loc_965131: FStI2 var_86
  loc_965134: ExitProcCbHresult
End Sub

Public Property Get BOF() '9650A4
  'Data Table: 4AFD00
  loc_965088: FLdRfVar var_88
  loc_96508B: FLdPr Me
  loc_96508E: MemLdPr RsFrm
  loc_965091:  = Me.BOF
  loc_965096: FLdI2 var_88
  loc_965099: FStI2 var_86
  loc_96509C: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '944984
  'Data Table: 4AFD00
  loc_944974: ILdI4 sOrden
  loc_944977: FLdPr Me
  loc_94497A: MemLdPr RsFrm
  loc_94497D: Me.Sort = from_stack_1
  loc_944982: ExitProcHresult
End Sub

Public Sub Find(sFind) '967080
  'Data Table: 4AFD00
  loc_967060: LitVar_Missing var_94
  loc_967063: PopAdLdVar
  loc_967064: LitI4 1
  loc_967069: LitI4 0
  loc_96706E: ILdI4 sFind
  loc_967071: FLdPr Me
  loc_967074: MemLdPr RsFrm
  loc_967077: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96707C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '97C23C
  'Data Table: 4AFD00
  loc_97C208: LitI4 0
  loc_97C20D: LitI4 -1
  loc_97C212: LitI4 1
  loc_97C217: LitStr " "
  loc_97C21A: LitStr "*"
  loc_97C21D: ILdI4 sCriterio
  loc_97C220: ImpAdCallI2 Replace(, , , , , )
  loc_97C225: IStStr
  loc_97C229: ILdI4 sCriterio
  loc_97C22C: CVarStr var_94
  loc_97C22F: PopAdLdVar
  loc_97C230: FLdPr Me
  loc_97C233: MemLdPr RsFrm
  loc_97C236: Me.Filter = from_stack_1
  loc_97C23B: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '964F74
  'Data Table: 4AFD00
  loc_964F58: FLdRfVar var_8C
  loc_964F5B: FLdPr Me
  loc_964F5E: MemLdPr RsFrm
  loc_964F61:  = Me.AbsolutePosition
  loc_964F66: ILdRf var_8C
  loc_964F69: FStR4 var_88
  loc_964F6C: ExitProcCbHresult
  loc_964F72: CVarStr var_7800
End Sub

Public Property Get RecordCount() '964EDC
  'Data Table: 4AFD00
  loc_964EC0: FLdRfVar var_8C
  loc_964EC3: FLdPr Me
  loc_964EC6: MemLdPr RsFrm
  loc_964EC9:  = Me.RecordCount
  loc_964ECE: ILdRf var_8C
  loc_964ED1: FStR4 var_88
  loc_964ED4: ExitProcCbHresult
End Sub

Public Property Get Bookmark() '96E4EC
  'Data Table: 4AFD00
  loc_96E4CC: ZeroRetValVar
  loc_96E4CE: FLdRfVar var_A4
  loc_96E4D1: FLdPr Me
  loc_96E4D4: MemLdPr RsFrm
  loc_96E4D7:  = Me.Bookmark
  loc_96E4DC: FLdRfVar var_A4
  loc_96E4DF: FStVar Bookmark
  loc_96E4E3: ExitProcCbHresult
End Sub

Public Property Let Bookmark(Marca) '964E40
  'Data Table: 4AFD00
  loc_964E28: FDupVar
  loc_964E2E: FLdVar var_94
  loc_964E32: FLdPr Me
  loc_964E35: MemLdPr RsFrm
  loc_964E38: Me.Bookmark = from_stack_1
  loc_964E3D: ExitProcHresult
  loc_964E3E: FLdPr var_77FD
End Sub

Public Function AddNewPreventiva(CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, ImpoImpu, DetaImpu, CodiNope, Item, AjusImpu, ReapDefiOr, EsEjercicioSiguiente, HaceRequery) 'AFE49C
  'Data Table: 4AFD00
  loc_AFDDE0: ILdRf CodiPart
  loc_AFDDE3: FStStrCopy var_8C
  loc_AFDDE6: ILdRf CodiOrga
  loc_AFDDE9: FStStrCopy var_90
  loc_AFDDEC: ILdRf CodiFifu
  loc_AFDDEF: FStStrCopy AddNewPreventiva
  loc_AFDDF2: ILdRf FechImpu
  loc_AFDDF5: FStStrCopy var_98
  loc_AFDDF8: ILdRf ExorImpu
  loc_AFDDFB: FStStrCopy var_9C
  loc_AFDDFE: ILdRf AddNewPreventiva0
  loc_AFDE01: FStStrCopy var_A0
  loc_AFDE04: FLdI2 arg_54
  loc_AFDE07: BranchF loc_AFDE16
  loc_AFDE0A: ImpAdLdI2 MemVar_C3D064
  loc_AFDE0D: LitI2_Byte 1
  loc_AFDE0F: AddI2
  loc_AFDE10: FStI2 var_A6
  loc_AFDE13: Branch loc_AFDE1C
  loc_AFDE16: ImpAdLdI2 MemVar_C3D064
  loc_AFDE19: FStI2 var_A6
  loc_AFDE1C: FLdRfVar var_98
  loc_AFDE1F: CVarRef
  loc_AFDE24: FLdRfVar var_C8
  loc_AFDE27: ImpAdCallFPR4  = Year()
  loc_AFDE2C: FLdRfVar var_C8
  loc_AFDE2F: FLdI2 var_A6
  loc_AFDE32: CVarI2 var_D8
  loc_AFDE35: HardType
  loc_AFDE36: NeVarBool
  loc_AFDE38: FFree1Var var_C8 = ""
  loc_AFDE3B: BranchF loc_AFDE44
  loc_AFDE3E: ExitProcCbHresult
  loc_AFDE44: ILdRf var_9C
  loc_AFDE47: ImpAdCallI2 Trim$()
  loc_AFDE4C: FStStr var_9C
  loc_AFDE4F: OnErrorGoto loc_AFE48E
  loc_AFDE52: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, PrevImpu, DetaImpu, CodiNope, Item, AjusImpu, ReapDefiOr, AltaUsua)"
  loc_AFDE55: LitStr " VALUES ("
  loc_AFDE58: ConcatStr
  loc_AFDE59: FStStrNoPop var_EC
  loc_AFDE5C: FLdI2 var_A6
  loc_AFDE5F: CStrUI1
  loc_AFDE61: FStStrNoPop var_F0
  loc_AFDE64: ConcatStr
  loc_AFDE65: FStStrNoPop var_F4
  loc_AFDE68: LitStr ", (SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_AFDE6B: ConcatStr
  loc_AFDE6C: FStStrNoPop var_F8
  loc_AFDE6F: FLdI2 var_A6
  loc_AFDE72: CStrUI1
  loc_AFDE74: FStStrNoPop var_FC
  loc_AFDE77: ConcatStr
  loc_AFDE78: FStStrNoPop var_100
  loc_AFDE7B: LitStr " LIMIT 1), '"
  loc_AFDE7E: ConcatStr
  loc_AFDE7F: FStStrNoPop var_104
  loc_AFDE82: ILdRf var_8C
  loc_AFDE85: ConcatStr
  loc_AFDE86: FStStrNoPop var_108
  loc_AFDE89: LitStr "', '"
  loc_AFDE8C: ConcatStr
  loc_AFDE8D: FStStrNoPop var_10C
  loc_AFDE90: ILdRf var_90
  loc_AFDE93: ConcatStr
  loc_AFDE94: FStStrNoPop var_110
  loc_AFDE97: LitStr "', "
  loc_AFDE9A: ConcatStr
  loc_AFDE9B: FStStrNoPop var_114
  loc_AFDE9E: FLdI2 CodiUnga
  loc_AFDEA1: CStrUI1
  loc_AFDEA3: FStStrNoPop var_118
  loc_AFDEA6: ConcatStr
  loc_AFDEA7: FStStrNoPop var_11C
  loc_AFDEAA: LitStr ", "
  loc_AFDEAD: ConcatStr
  loc_AFDEAE: FStStrNoPop var_120
  loc_AFDEB1: ILdRf CodiInsu
  loc_AFDEB4: CStrI4
  loc_AFDEB6: FStStrNoPop var_124
  loc_AFDEB9: ConcatStr
  loc_AFDEBA: FStStrNoPop var_128
  loc_AFDEBD: LitStr ", '"
  loc_AFDEC0: ConcatStr
  loc_AFDEC1: FStStrNoPop var_12C
  loc_AFDEC4: ILdRf AddNewPreventiva
  loc_AFDEC7: ConcatStr
  loc_AFDEC8: FStStrNoPop var_130
  loc_AFDECB: LitStr "', "
  loc_AFDECE: ConcatStr
  loc_AFDECF: FStStrNoPop var_134
  loc_AFDED2: LitI4 1
  loc_AFDED7: LitI4 1
  loc_AFDEDC: LitVarStr var_D8, "'yyyy-mm-dd'"
  loc_AFDEE1: FStVarCopyObj var_C8
  loc_AFDEE4: FLdRfVar var_C8
  loc_AFDEE7: FLdRfVar var_98
  loc_AFDEEA: CVarRef
  loc_AFDEEF: ImpAdCallI2 Format$(, )
  loc_AFDEF4: FStStrNoPop var_138
  loc_AFDEF7: ConcatStr
  loc_AFDEF8: FStStrNoPop var_13C
  loc_AFDEFB: LitStr ", '"
  loc_AFDEFE: ConcatStr
  loc_AFDEFF: FStStrNoPop var_140
  loc_AFDF02: ILdRf var_9C
  loc_AFDF05: ConcatStr
  loc_AFDF06: FStStrNoPop var_144
  loc_AFDF09: LitStr "', "
  loc_AFDF0C: ConcatStr
  loc_AFDF0D: FStStrNoPop var_14C
  loc_AFDF10: FLdFPR8 CantImpu
  loc_AFDF13: CStrR8
  loc_AFDF15: FStStrNoPop var_148
  loc_AFDF18: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AFDF1D: FStStrNoPop var_150
  loc_AFDF20: ConcatStr
  loc_AFDF21: FStStrNoPop var_154
  loc_AFDF24: LitStr ", "
  loc_AFDF27: ConcatStr
  loc_AFDF28: FStStrNoPop var_15C
  loc_AFDF2B: FLdFPR8 ImpoImpu
  loc_AFDF2E: CStrR8
  loc_AFDF30: FStStrNoPop var_158
  loc_AFDF33: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AFDF38: FStStrNoPop var_160
  loc_AFDF3B: ConcatStr
  loc_AFDF3C: FStStrNoPop var_164
  loc_AFDF3F: LitStr ", "
  loc_AFDF42: ConcatStr
  loc_AFDF43: FStStrNoPop var_16C
  loc_AFDF46: FLdFPR8 CodiNope
  loc_AFDF49: CStrR8
  loc_AFDF4B: FStStrNoPop var_168
  loc_AFDF4E: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AFDF53: FStStrNoPop var_170
  loc_AFDF56: ConcatStr
  loc_AFDF57: FStStrNoPop var_174
  loc_AFDF5A: LitStr ", '"
  loc_AFDF5D: ConcatStr
  loc_AFDF5E: FStStrNoPop var_178
  loc_AFDF61: ILdRf var_A0
  loc_AFDF64: ConcatStr
  loc_AFDF65: FStStrNoPop var_17C
  loc_AFDF68: LitStr "', "
  loc_AFDF6B: ConcatStr
  loc_AFDF6C: FStStrNoPop var_180
  loc_AFDF6F: ILdRf AddNewPreventiva4
  loc_AFDF72: CStrI4
  loc_AFDF74: FStStrNoPop var_184
  loc_AFDF77: ConcatStr
  loc_AFDF78: FStStrNoPop var_188
  loc_AFDF7B: LitStr ", "
  loc_AFDF7E: ConcatStr
  loc_AFDF7F: FStStrNoPop var_18C
  loc_AFDF82: FLdI2 AddNewPreventiva8
  loc_AFDF85: CStrUI1
  loc_AFDF87: FStStrNoPop var_190
  loc_AFDF8A: ConcatStr
  loc_AFDF8B: FStStrNoPop var_194
  loc_AFDF8E: LitStr ", "
  loc_AFDF91: ConcatStr
  loc_AFDF92: FStStrNoPop var_198
  loc_AFDF95: ILdRf AddNewPreventivaC
  loc_AFDF98: CStrI4
  loc_AFDF9A: FStStrNoPop var_19C
  loc_AFDF9D: ConcatStr
  loc_AFDF9E: FStStrNoPop var_1A0
  loc_AFDFA1: LitStr ", "
  loc_AFDFA4: ConcatStr
  loc_AFDFA5: FStStrNoPop var_1A4
  loc_AFDFA8: FLdI2 arg_50
  loc_AFDFAB: CStrUI1
  loc_AFDFAD: FStStrNoPop var_1A8
  loc_AFDFB0: ConcatStr
  loc_AFDFB1: FStStrNoPop var_1AC
  loc_AFDFB4: LitStr ", '"
  loc_AFDFB7: ConcatStr
  loc_AFDFB8: FStStrNoPop var_1B0
  loc_AFDFBB: ImpAdLdI4 MemVar_C3D03C
  loc_AFDFBE: ConcatStr
  loc_AFDFBF: FStStrNoPop var_1B4
  loc_AFDFC2: LitStr "');"
  loc_AFDFC5: ConcatStr
  loc_AFDFC6: FStStr var_A4
  loc_AFDFC9: FFreeStr var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_AFE032: FFree1Var var_C8 = ""
  loc_AFE035: ILdRf AddNewPreventiva4
  loc_AFE038: LitI4 0
  loc_AFE03D: GtI4
  loc_AFE03E: ILdRf AddNewPreventivaC
  loc_AFE041: LitI4 0
  loc_AFE046: EqI4
  loc_AFE047: AndI4
  loc_AFE048: FLdI2 arg_54
  loc_AFE04B: NotI4
  loc_AFE04C: AndI4
  loc_AFE04D: BranchF loc_AFE16C
  loc_AFE050: ILdRf var_A4
  loc_AFE053: LitStr "UPDATE notapedido"
  loc_AFE056: ConcatStr
  loc_AFE057: FStStrNoPop var_EC
  loc_AFE05A: LitStr " SET ExpeImpu = '"
  loc_AFE05D: ConcatStr
  loc_AFE05E: FStStrNoPop var_F0
  loc_AFE061: ILdRf var_9C
  loc_AFE064: ConcatStr
  loc_AFE065: FStStrNoPop var_F4
  loc_AFE068: LitStr "'"
  loc_AFE06B: ConcatStr
  loc_AFE06C: FStStrNoPop var_F8
  loc_AFE06F: LitStr " WHERE PeriInfo = "
  loc_AFE072: ConcatStr
  loc_AFE073: FStStrNoPop var_FC
  loc_AFE076: FLdI2 var_A6
  loc_AFE079: CStrUI1
  loc_AFE07B: FStStrNoPop var_100
  loc_AFE07E: ConcatStr
  loc_AFE07F: FStStrNoPop var_104
  loc_AFE082: LitStr " AND CodiNope = "
  loc_AFE085: ConcatStr
  loc_AFE086: FStStrNoPop var_108
  loc_AFE089: ILdRf AddNewPreventiva4
  loc_AFE08C: CStrI4
  loc_AFE08E: FStStrNoPop var_10C
  loc_AFE091: ConcatStr
  loc_AFE092: FStStrNoPop var_110
  loc_AFE095: LitStr ";"
  loc_AFE098: ConcatStr
  loc_AFE099: FStStr var_A4
  loc_AFE09C: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = ""
  loc_AFE0B3: ILdRf var_A4
  loc_AFE0B6: LitStr "UPDATE itemnota"
  loc_AFE0B9: ConcatStr
  loc_AFE0BA: FStStrNoPop var_EC
  loc_AFE0BD: LitStr " SET CodiPart='"
  loc_AFE0C0: ConcatStr
  loc_AFE0C1: FStStrNoPop var_F0
  loc_AFE0C4: ILdRf var_8C
  loc_AFE0C7: ConcatStr
  loc_AFE0C8: FStStrNoPop var_F4
  loc_AFE0CB: LitStr "', CodiOrga='"
  loc_AFE0CE: ConcatStr
  loc_AFE0CF: FStStrNoPop var_F8
  loc_AFE0D2: ILdRf var_90
  loc_AFE0D5: ConcatStr
  loc_AFE0D6: FStStrNoPop var_FC
  loc_AFE0D9: LitStr "', CodiUnga='"
  loc_AFE0DC: ConcatStr
  loc_AFE0DD: FStStrNoPop var_100
  loc_AFE0E0: FLdI2 CodiUnga
  loc_AFE0E3: CStrUI1
  loc_AFE0E5: FStStrNoPop var_104
  loc_AFE0E8: ConcatStr
  loc_AFE0E9: FStStrNoPop var_108
  loc_AFE0EC: LitStr "', CodiFifu='"
  loc_AFE0EF: ConcatStr
  loc_AFE0F0: FStStrNoPop var_10C
  loc_AFE0F3: ILdRf AddNewPreventiva
  loc_AFE0F6: ConcatStr
  loc_AFE0F7: FStStrNoPop var_110
  loc_AFE0FA: LitStr "'"
  loc_AFE0FD: ConcatStr
  loc_AFE0FE: FStStrNoPop var_114
  loc_AFE101: LitStr " WHERE PeriInfo="
  loc_AFE104: ConcatStr
  loc_AFE105: FStStrNoPop var_118
  loc_AFE108: FLdI2 var_A6
  loc_AFE10B: CStrUI1
  loc_AFE10D: FStStrNoPop var_11C
  loc_AFE110: ConcatStr
  loc_AFE111: FStStrNoPop var_120
  loc_AFE114: LitStr " AND CodiNope="
  loc_AFE117: ConcatStr
  loc_AFE118: FStStrNoPop var_124
  loc_AFE11B: ILdRf AddNewPreventiva4
  loc_AFE11E: CStrI4
  loc_AFE120: FStStrNoPop var_128
  loc_AFE123: ConcatStr
  loc_AFE124: FStStrNoPop var_12C
  loc_AFE127: LitStr " AND CodiItno = "
  loc_AFE12A: ConcatStr
  loc_AFE12B: FStStrNoPop var_130
  loc_AFE12E: FLdI2 AddNewPreventiva8
  loc_AFE131: CStrUI1
  loc_AFE133: FStStrNoPop var_134
  loc_AFE136: ConcatStr
  loc_AFE137: FStStrNoPop var_138
  loc_AFE13A: LitStr ";"
  loc_AFE13D: ConcatStr
  loc_AFE13E: FStStr var_A4
  loc_AFE141: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_AFE16C: ILdRf AddNewPreventiva4
  loc_AFE16F: LitI4 0
  loc_AFE174: GtI4
  loc_AFE175: BranchF loc_AFE20E
  loc_AFE178: ILdRf var_A4
  loc_AFE17B: LitStr "INSERT IGNORE INTO itemimpu (PeriInfo, CodiNope, Item, Cant, EtapImpu, IdImpu, AltaUsua)"
  loc_AFE17E: ConcatStr
  loc_AFE17F: FStStrNoPop var_EC
  loc_AFE182: LitStr " VALUES ("
  loc_AFE185: ConcatStr
  loc_AFE186: FStStrNoPop var_F0
  loc_AFE189: FLdI2 var_A6
  loc_AFE18C: CStrUI1
  loc_AFE18E: FStStrNoPop var_F4
  loc_AFE191: ConcatStr
  loc_AFE192: FStStrNoPop var_F8
  loc_AFE195: LitStr ", "
  loc_AFE198: ConcatStr
  loc_AFE199: FStStrNoPop var_FC
  loc_AFE19C: ILdRf AddNewPreventiva4
  loc_AFE19F: CStrI4
  loc_AFE1A1: FStStrNoPop var_100
  loc_AFE1A4: ConcatStr
  loc_AFE1A5: FStStrNoPop var_104
  loc_AFE1A8: LitStr ", "
  loc_AFE1AB: ConcatStr
  loc_AFE1AC: FStStrNoPop var_108
  loc_AFE1AF: FLdI2 AddNewPreventiva8
  loc_AFE1B2: CStrUI1
  loc_AFE1B4: FStStrNoPop var_10C
  loc_AFE1B7: ConcatStr
  loc_AFE1B8: FStStrNoPop var_110
  loc_AFE1BB: LitStr ", "
  loc_AFE1BE: ConcatStr
  loc_AFE1BF: FStStrNoPop var_118
  loc_AFE1C2: FLdFPR8 CantImpu
  loc_AFE1C5: CStrR8
  loc_AFE1C7: FStStrNoPop var_114
  loc_AFE1CA: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AFE1CF: FStStrNoPop var_11C
  loc_AFE1D2: ConcatStr
  loc_AFE1D3: FStStrNoPop var_120
  loc_AFE1D6: LitStr ", 1, @idimpu, '"
  loc_AFE1D9: ConcatStr
  loc_AFE1DA: FStStrNoPop var_124
  loc_AFE1DD: ImpAdLdI4 MemVar_C3D03C
  loc_AFE1E0: ConcatStr
  loc_AFE1E1: FStStrNoPop var_128
  loc_AFE1E4: LitStr "');"
  loc_AFE1E7: ConcatStr
  loc_AFE1E8: FStStr var_A4
  loc_AFE1EB: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_AFE20E: ILdRf var_A4
  loc_AFE211: LitStr "INSERT IGNORE INTO insupart (CodiInsu,PeriInfo,CodiPart,BicoInpa,AltaUsua)"
  loc_AFE214: ConcatStr
  loc_AFE215: FStStrNoPop var_EC
  loc_AFE218: LitStr " VALUES ("
  loc_AFE21B: ConcatStr
  loc_AFE21C: FStStrNoPop var_F0
  loc_AFE21F: ILdRf CodiInsu
  loc_AFE222: CStrI4
  loc_AFE224: FStStrNoPop var_F4
  loc_AFE227: ConcatStr
  loc_AFE228: FStStrNoPop var_F8
  loc_AFE22B: LitStr ","
  loc_AFE22E: ConcatStr
  loc_AFE22F: FStStrNoPop var_FC
  loc_AFE232: FLdI2 var_A6
  loc_AFE235: CStrUI1
  loc_AFE237: FStStrNoPop var_100
  loc_AFE23A: ConcatStr
  loc_AFE23B: FStStrNoPop var_104
  loc_AFE23E: LitStr ",'"
  loc_AFE241: ConcatStr
  loc_AFE242: FStStrNoPop var_108
  loc_AFE245: ILdRf var_8C
  loc_AFE248: ConcatStr
  loc_AFE249: FStStrNoPop var_10C
  loc_AFE24C: LitStr "',0,'"
  loc_AFE24F: ConcatStr
  loc_AFE250: FStStrNoPop var_110
  loc_AFE253: ImpAdLdI4 MemVar_C3D03C
  loc_AFE256: ConcatStr
  loc_AFE257: FStStrNoPop var_114
  loc_AFE25A: LitStr "');"
  loc_AFE25D: ConcatStr
  loc_AFE25E: FStStr var_A4
  loc_AFE261: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_AFE27A: ILdRf var_A4
  loc_AFE27D: Call EjecutarRsCls(from_stack_1v)
  loc_AFE282: LitStr "Municipalidad de Guaymallén"
  loc_AFE285: LitStr "Municipalidad de General Alvear"
  loc_AFE288: EqStr
  loc_AFE28A: ILdRf var_9C
  loc_AFE28D: LitStr vbNullString
  loc_AFE290: NeStr
  loc_AFE292: AndI4
  loc_AFE293: BranchF loc_AFE46A
  loc_AFE296: LitVarStr var_D8, "EX-"
  loc_AFE29B: ILdRf var_9C
  loc_AFE29E: FnLenStr
  loc_AFE29F: LitI4 2
  loc_AFE2A4: SubI4
  loc_AFE2A5: FLdRfVar var_9C
  loc_AFE2A8: CVarRef
  loc_AFE2AD: FLdRfVar var_C8
  loc_AFE2B0: ImpAdCallFPR4  = Left(, )
  loc_AFE2B5: FLdRfVar var_C8
  loc_AFE2B8: ConcatVar var_E8
  loc_AFE2BC: LitVarStr var_1C8, "-   -GDEMZA-"
  loc_AFE2C1: ConcatVar var_1D8
  loc_AFE2C5: CStrVarTmp
  loc_AFE2C6: FStStr var_1B8
  loc_AFE2C9: FFreeVar var_C8 = "": var_E8 = ""
  loc_AFE2D2: LitI4 1
  loc_AFE2D7: FLdRfVar var_9C
  loc_AFE2DA: CVarRef
  loc_AFE2DF: FLdRfVar var_C8
  loc_AFE2E2: ImpAdCallFPR4  = Right(, )
  loc_AFE2E7: FLdRfVar var_C8
  loc_AFE2EA: FStVar var_1E8
  loc_AFE2EE: FLdRfVar var_1E8
  loc_AFE2F1: LitVarStr var_B8, "H"
  loc_AFE2F6: HardType
  loc_AFE2F7: EqVarBool
  loc_AFE2F9: BranchT loc_AFE30A
  loc_AFE2FC: FLdRfVar var_1E8
  loc_AFE2FF: LitVarStr var_D8, "h"
  loc_AFE304: HardType
  loc_AFE305: EqVarBool
  loc_AFE307: BranchF loc_AFE317
  loc_AFE30A: ILdRf var_1B8
  loc_AFE30D: LitStr "SECHAC#ALVEAR"
  loc_AFE310: ConcatStr
  loc_AFE311: FStStr var_1B8
  loc_AFE314: Branch loc_AFE417
  loc_AFE317: FLdRfVar var_1E8
  loc_AFE31A: LitVarStr var_B8, "G"
  loc_AFE31F: HardType
  loc_AFE320: EqVarBool
  loc_AFE322: BranchT loc_AFE333
  loc_AFE325: FLdRfVar var_1E8
  loc_AFE328: LitVarStr var_D8, "g"
  loc_AFE32D: HardType
  loc_AFE32E: EqVarBool
  loc_AFE330: BranchF loc_AFE340
  loc_AFE333: ILdRf var_1B8
  loc_AFE336: LitStr "SECGOB#ALVEAR"
  loc_AFE339: ConcatStr
  loc_AFE33A: FStStr var_1B8
  loc_AFE33D: Branch loc_AFE417
  loc_AFE340: FLdRfVar var_1E8
  loc_AFE343: LitVarStr var_B8, "D"
  loc_AFE348: HardType
  loc_AFE349: EqVarBool
  loc_AFE34B: BranchT loc_AFE35C
  loc_AFE34E: FLdRfVar var_1E8
  loc_AFE351: LitVarStr var_D8, "d"
  loc_AFE356: HardType
  loc_AFE357: EqVarBool
  loc_AFE359: BranchF loc_AFE369
  loc_AFE35C: ILdRf var_1B8
  loc_AFE35F: LitStr "SECDESARR#ALVEAR"
  loc_AFE362: ConcatStr
  loc_AFE363: FStStr var_1B8
  loc_AFE366: Branch loc_AFE417
  loc_AFE369: FLdRfVar var_1E8
  loc_AFE36C: LitVarStr var_B8, "P"
  loc_AFE371: HardType
  loc_AFE372: EqVarBool
  loc_AFE374: BranchT loc_AFE385
  loc_AFE377: FLdRfVar var_1E8
  loc_AFE37A: LitVarStr var_D8, "p"
  loc_AFE37F: HardType
  loc_AFE380: EqVarBool
  loc_AFE382: BranchF loc_AFE392
  loc_AFE385: ILdRf var_1B8
  loc_AFE388: LitStr "SECOBYSERV#ALVEAR"
  loc_AFE38B: ConcatStr
  loc_AFE38C: FStStr var_1B8
  loc_AFE38F: Branch loc_AFE417
  loc_AFE392: FLdRfVar var_1E8
  loc_AFE395: LitVarStr var_B8, "I"
  loc_AFE39A: HardType
  loc_AFE39B: EqVarBool
  loc_AFE39D: BranchT loc_AFE3AE
  loc_AFE3A0: FLdRfVar var_1E8
  loc_AFE3A3: LitVarStr var_D8, "i"
  loc_AFE3A8: HardType
  loc_AFE3A9: EqVarBool
  loc_AFE3AB: BranchF loc_AFE3BB
  loc_AFE3AE: ILdRf var_1B8
  loc_AFE3B1: LitStr "MUNI#ALVEAR"
  loc_AFE3B4: ConcatStr
  loc_AFE3B5: FStStr var_1B8
  loc_AFE3B8: Branch loc_AFE417
  loc_AFE3BB: FLdRfVar var_1E8
  loc_AFE3BE: LitVarStr var_B8, "V"
  loc_AFE3C3: HardType
  loc_AFE3C4: EqVarBool
  loc_AFE3C6: BranchT loc_AFE3D7
  loc_AFE3C9: FLdRfVar var_1E8
  loc_AFE3CC: LitVarStr var_D8, "v"
  loc_AFE3D1: HardType
  loc_AFE3D2: EqVarBool
  loc_AFE3D4: BranchF loc_AFE3E4
  loc_AFE3D7: ILdRf var_1B8
  loc_AFE3DA: LitStr "VIAL#ALVEAR"
  loc_AFE3DD: ConcatStr
  loc_AFE3DE: FStStr var_1B8
  loc_AFE3E1: Branch loc_AFE417
  loc_AFE3E4: FLdRfVar var_1E8
  loc_AFE3E7: LitVarStr var_B8, "C"
  loc_AFE3EC: HardType
  loc_AFE3ED: EqVarBool
  loc_AFE3EF: BranchT loc_AFE400
  loc_AFE3F2: FLdRfVar var_1E8
  loc_AFE3F5: LitVarStr var_D8, "c"
  loc_AFE3FA: HardType
  loc_AFE3FB: EqVarBool
  loc_AFE3FD: BranchF loc_AFE40D
  loc_AFE400: ILdRf var_1B8
  loc_AFE403: LitStr "HCD#ALVEAR"
  loc_AFE406: ConcatStr
  loc_AFE407: FStStr var_1B8
  loc_AFE40A: Branch loc_AFE417
  loc_AFE40D: ILdRf var_1B8
  loc_AFE410: LitStr "ERROR EN LA LETRA"
  loc_AFE413: ConcatStr
  loc_AFE414: FStStr var_1B8
  loc_AFE417: LitStr "INSERT IGNORE INTO expediente (ExpeInfo, ExpeGDE, AltaUsua, AltaUsuaGDE) VALUE ('"
  loc_AFE41A: ILdRf var_9C
  loc_AFE41D: ConcatStr
  loc_AFE41E: FStStrNoPop var_EC
  loc_AFE421: LitStr "','"
  loc_AFE424: ConcatStr
  loc_AFE425: FStStrNoPop var_F0
  loc_AFE428: ILdRf var_1B8
  loc_AFE42B: ConcatStr
  loc_AFE42C: FStStrNoPop var_F4
  loc_AFE42F: LitStr "','"
  loc_AFE432: ConcatStr
  loc_AFE433: FStStrNoPop var_F8
  loc_AFE436: ImpAdLdI4 MemVar_C3D03C
  loc_AFE439: ConcatStr
  loc_AFE43A: FStStrNoPop var_FC
  loc_AFE43D: LitStr "','"
  loc_AFE440: ConcatStr
  loc_AFE441: FStStrNoPop var_100
  loc_AFE444: ImpAdLdI4 MemVar_C3D040
  loc_AFE447: ConcatStr
  loc_AFE448: FStStrNoPop var_104
  loc_AFE44B: LitStr "');"
  loc_AFE44E: ConcatStr
  loc_AFE44F: FStStrNoPop var_108
  loc_AFE452: Call EjecutarRsCls(from_stack_1v)
  loc_AFE457: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_AFE46A: LitI4 1
  loc_AFE46F: FStR4 var_88
  loc_AFE472: FLdI2 arg_58
  loc_AFE475: BranchF loc_AFE488
  loc_AFE478: LitI2_Byte 0
  loc_AFE47A: PopTmpLdAd2 var_1EA
  loc_AFE47D: ILdRf var_88
  loc_AFE480: FLdI2 var_A6
  loc_AFE483: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AFE488: ExitProcCbHresult
  loc_AFE48E: LitI4 0
  loc_AFE493: FStR4 var_88
  loc_AFE496: ExitProcCbHresult
End Function

Public Function ValidaDesafectarPreventiva(PeriInfo, IdImpu, Cuenta) '9D9020
  'Data Table: 4AFD00
  loc_9D8F40: ZeroRetVal
  loc_9D8F42: LitStr "SELECT * FROM imputacion WHERE PeriInfo = "
  loc_9D8F45: FLdI2 PeriInfo
  loc_9D8F48: CStrUI1
  loc_9D8F4A: FStStrNoPop var_8C
  loc_9D8F4D: ConcatStr
  loc_9D8F4E: FStStrNoPop var_90
  loc_9D8F51: LitStr " AND IdImpu = "
  loc_9D8F54: ConcatStr
  loc_9D8F55: FStStrNoPop ValidaDesafectarPreventiva
  loc_9D8F58: ILdRf IdImpu
  loc_9D8F5B: CStrI4
  loc_9D8F5D: FStStrNoPop var_98
  loc_9D8F60: ConcatStr
  loc_9D8F61: FStStrNoPop var_9C
  loc_9D8F64: LitStr ";"
  loc_9D8F67: ConcatStr
  loc_9D8F68: FStStrNoPop var_A0
  loc_9D8F6B: Call EjecutarRsCls(from_stack_1v)
  loc_9D8F70: FFreeStr var_8C = "": var_90 = "": ValidaDesafectarPreventiva = "": var_98 = "": var_9C = ""
  loc_9D8F7F: FLdRfVar var_C8
  loc_9D8F82: FLdRfVar var_B8
  loc_9D8F85: LitVarStr var_B4, "CodiNope"
  loc_9D8F8A: PopAdLdVar
  loc_9D8F8B: FLdRfVar var_A4
  loc_9D8F8E: FLdPr Me
  loc_9D8F91: MemLdPr global_56
  loc_9D8F94:  = Me.Fields
  loc_9D8F99: FLdPr var_A4
  loc_9D8F9C: from_stack_2 = Me.Item(from_stack_1)
  loc_9D8FA1: FLdPr var_B8
  loc_9D8FA4:  = Me.Value
  loc_9D8FA9: FLdRfVar var_C8
  loc_9D8FAC: FnCIntVar
  loc_9D8FAE: LitI2_Byte 0
  loc_9D8FB0: GtI2
  loc_9D8FB1: FFreeAd var_A4 = ""
  loc_9D8FB8: FFree1Var var_C8 = ""
  loc_9D8FBB: BranchF loc_9D9017
  loc_9D8FBE: LitVarStr var_D8, "Advertencia: la Preventiva esta incluida en la nota de pedido "
  loc_9D8FC3: FLdRfVar var_C8
  loc_9D8FC6: FLdRfVar var_B8
  loc_9D8FC9: LitVarStr var_B4, "CodiNope"
  loc_9D8FCE: PopAdLdVar
  loc_9D8FCF: FLdRfVar var_A4
  loc_9D8FD2: FLdPr Me
  loc_9D8FD5: MemLdPr global_56
  loc_9D8FD8:  = Me.Fields
  loc_9D8FDD: FLdPr var_A4
  loc_9D8FE0: from_stack_2 = Me.Item(from_stack_1)
  loc_9D8FE5: FLdPr var_B8
  loc_9D8FE8:  = Me.Value
  loc_9D8FED: FLdRfVar var_C8
  loc_9D8FF0: ConcatVar var_E8
  loc_9D8FF4: LitVarStr var_F8, " ..."
  loc_9D8FF9: ConcatVar var_108
  loc_9D8FFD: CStrVarTmp
  loc_9D8FFE: FStStr var_88
  loc_9D9001: FFreeAd var_A4 = ""
  loc_9D9008: FFreeVar var_C8 = "": var_E8 = ""
  loc_9D9011: ExitProcCbHresult
  loc_9D9017: ExitProcCbHresult
  loc_9D901D: FStStrCopy var_8C
End Function

Public Function DesafectarPreventiva(CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, ImpoImpu, DetaImpu, CodiNope, Item, AjusImpu, EsEjercicioSiguiente, HaceRequery) 'A97550
  'Data Table: 4AFD00
  loc_A97178: ILdRf CodiPart
  loc_A9717B: FStStrCopy var_8C
  loc_A9717E: ILdRf CodiOrga
  loc_A97181: FStStrCopy var_90
  loc_A97184: ILdRf CodiFifu
  loc_A97187: FStStrCopy DesafectarPreventiva
  loc_A9718A: ILdRf FechImpu
  loc_A9718D: FStStrCopy var_98
  loc_A97190: ILdRf ExorImpu
  loc_A97193: FStStrCopy var_9C
  loc_A97196: ILdRf DesafectarPreventiva0
  loc_A97199: FStStrCopy var_A0
  loc_A9719C: FLdFPR8 ImpoImpu
  loc_A9719F: LitI2_Byte &HFF
  loc_A971A1: CR8I2
  loc_A971A2: MulR8
  loc_A971A3: FStFPR8 ImpoImpu
  loc_A971A6: FLdFPR8 CodiNope
  loc_A971A9: LitI2_Byte &HFF
  loc_A971AB: CR8I2
  loc_A971AC: MulR8
  loc_A971AD: FStFPR8 CodiNope
  loc_A971B0: FLdI2 arg_50
  loc_A971B3: BranchF loc_A971C2
  loc_A971B6: ImpAdLdI2 MemVar_C3D064
  loc_A971B9: LitI2_Byte 1
  loc_A971BB: AddI2
  loc_A971BC: FStI2 var_A6
  loc_A971BF: Branch loc_A971C8
  loc_A971C2: ImpAdLdI2 MemVar_C3D064
  loc_A971C5: FStI2 var_A6
  loc_A971C8: FLdRfVar var_98
  loc_A971CB: CVarRef
  loc_A971D0: FLdRfVar var_C8
  loc_A971D3: ImpAdCallFPR4  = Year()
  loc_A971D8: FLdRfVar var_C8
  loc_A971DB: FLdI2 var_A6
  loc_A971DE: CVarI2 var_D8
  loc_A971E1: HardType
  loc_A971E2: NeVarBool
  loc_A971E4: FFree1Var var_C8 = ""
  loc_A971E7: BranchF loc_A971F0
  loc_A971EA: ExitProcCbHresult
  loc_A971F0: ILdRf var_9C
  loc_A971F3: ImpAdCallI2 Trim$()
  loc_A971F8: FStStr var_9C
  loc_A971FB: OnErrorGoto loc_A97540
  loc_A971FE: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, PrevImpu, DetaImpu, CodiNope, Item, AjusImpu, AltaUsua)"
  loc_A97201: LitStr " VALUES ("
  loc_A97204: ConcatStr
  loc_A97205: FStStrNoPop var_EC
  loc_A97208: FLdI2 var_A6
  loc_A9720B: CStrUI1
  loc_A9720D: FStStrNoPop var_F0
  loc_A97210: ConcatStr
  loc_A97211: FStStrNoPop var_F4
  loc_A97214: LitStr ",(SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_A97217: ConcatStr
  loc_A97218: FStStrNoPop var_F8
  loc_A9721B: FLdI2 var_A6
  loc_A9721E: CStrUI1
  loc_A97220: FStStrNoPop var_FC
  loc_A97223: ConcatStr
  loc_A97224: FStStrNoPop var_100
  loc_A97227: LitStr "),'"
  loc_A9722A: ConcatStr
  loc_A9722B: FStStrNoPop var_104
  loc_A9722E: ILdRf var_8C
  loc_A97231: ConcatStr
  loc_A97232: FStStrNoPop var_108
  loc_A97235: LitStr "','"
  loc_A97238: ConcatStr
  loc_A97239: FStStrNoPop var_10C
  loc_A9723C: ILdRf var_90
  loc_A9723F: ConcatStr
  loc_A97240: FStStrNoPop var_110
  loc_A97243: LitStr "',"
  loc_A97246: ConcatStr
  loc_A97247: FStStrNoPop var_114
  loc_A9724A: FLdI2 CodiUnga
  loc_A9724D: CStrUI1
  loc_A9724F: FStStrNoPop var_118
  loc_A97252: ConcatStr
  loc_A97253: FStStrNoPop var_11C
  loc_A97256: LitStr ","
  loc_A97259: ConcatStr
  loc_A9725A: FStStrNoPop var_120
  loc_A9725D: ILdRf CodiInsu
  loc_A97260: CStrI4
  loc_A97262: FStStrNoPop var_124
  loc_A97265: ConcatStr
  loc_A97266: FStStrNoPop var_128
  loc_A97269: LitStr ",'"
  loc_A9726C: ConcatStr
  loc_A9726D: FStStrNoPop var_12C
  loc_A97270: ILdRf DesafectarPreventiva
  loc_A97273: ConcatStr
  loc_A97274: FStStrNoPop var_130
  loc_A97277: LitStr "',"
  loc_A9727A: ConcatStr
  loc_A9727B: FStStrNoPop var_134
  loc_A9727E: LitI4 1
  loc_A97283: LitI4 1
  loc_A97288: LitVarStr var_D8, "'yyyy-mm-dd'"
  loc_A9728D: FStVarCopyObj var_C8
  loc_A97290: FLdRfVar var_C8
  loc_A97293: FLdRfVar var_98
  loc_A97296: CVarRef
  loc_A9729B: ImpAdCallI2 Format$(, )
  loc_A972A0: FStStrNoPop var_138
  loc_A972A3: ConcatStr
  loc_A972A4: FStStrNoPop var_13C
  loc_A972A7: LitStr ",'"
  loc_A972AA: ConcatStr
  loc_A972AB: FStStrNoPop var_140
  loc_A972AE: ILdRf var_9C
  loc_A972B1: ImpAdCallI2 Trim$()
  loc_A972B6: FStStrNoPop var_144
  loc_A972B9: ConcatStr
  loc_A972BA: FStStrNoPop var_148
  loc_A972BD: LitStr "',"
  loc_A972C0: ConcatStr
  loc_A972C1: FStStrNoPop var_150
  loc_A972C4: FLdFPR8 CantImpu
  loc_A972C7: CStrR8
  loc_A972C9: FStStrNoPop var_14C
  loc_A972CC: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A972D1: FStStrNoPop var_154
  loc_A972D4: ConcatStr
  loc_A972D5: FStStrNoPop var_158
  loc_A972D8: LitStr ","
  loc_A972DB: ConcatStr
  loc_A972DC: FStStrNoPop var_160
  loc_A972DF: FLdFPR8 ImpoImpu
  loc_A972E2: CStrR8
  loc_A972E4: FStStrNoPop var_15C
  loc_A972E7: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A972EC: FStStrNoPop var_164
  loc_A972EF: ConcatStr
  loc_A972F0: FStStrNoPop var_168
  loc_A972F3: LitStr ","
  loc_A972F6: ConcatStr
  loc_A972F7: FStStrNoPop var_170
  loc_A972FA: FLdFPR8 CodiNope
  loc_A972FD: CStrR8
  loc_A972FF: FStStrNoPop var_16C
  loc_A97302: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A97307: FStStrNoPop var_174
  loc_A9730A: ConcatStr
  loc_A9730B: FStStrNoPop var_178
  loc_A9730E: LitStr ",'"
  loc_A97311: ConcatStr
  loc_A97312: FStStrNoPop var_17C
  loc_A97315: ILdRf var_A0
  loc_A97318: ConcatStr
  loc_A97319: FStStrNoPop var_180
  loc_A9731C: LitStr "', "
  loc_A9731F: ConcatStr
  loc_A97320: FStStrNoPop var_184
  loc_A97323: ILdRf DesafectarPreventiva4
  loc_A97326: CStrI4
  loc_A97328: FStStrNoPop var_188
  loc_A9732B: ConcatStr
  loc_A9732C: FStStrNoPop var_18C
  loc_A9732F: LitStr ", "
  loc_A97332: ConcatStr
  loc_A97333: FStStrNoPop var_190
  loc_A97336: FLdI2 DesafectarPreventiva8
  loc_A97339: CStrUI1
  loc_A9733B: FStStrNoPop var_194
  loc_A9733E: ConcatStr
  loc_A9733F: FStStrNoPop var_198
  loc_A97342: LitStr ","
  loc_A97345: ConcatStr
  loc_A97346: FStStrNoPop var_19C
  loc_A97349: ILdRf DesafectarPreventivaC
  loc_A9734C: CStrI4
  loc_A9734E: FStStrNoPop var_1A0
  loc_A97351: ConcatStr
  loc_A97352: FStStrNoPop var_1A4
  loc_A97355: LitStr ",'"
  loc_A97358: ConcatStr
  loc_A97359: FStStrNoPop var_1A8
  loc_A9735C: ImpAdLdI4 MemVar_C3D03C
  loc_A9735F: ConcatStr
  loc_A97360: FStStrNoPop var_1AC
  loc_A97363: LitStr "');"
  loc_A97366: ConcatStr
  loc_A97367: FStStr var_A4
  loc_A9736A: FFreeStr var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_A973CF: FFree1Var var_C8 = ""
  loc_A973D2: ILdRf DesafectarPreventiva4
  loc_A973D5: LitI4 0
  loc_A973DA: GtI4
  loc_A973DB: BranchF loc_A97514
  loc_A973DE: ILdRf var_A4
  loc_A973E1: LitStr "UPDATE ("
  loc_A973E4: ConcatStr
  loc_A973E5: FStStrNoPop var_EC
  loc_A973E8: LitStr " SELECT PeriInfo, CodiNope, Item, SUM(PrevImpu) sumPrevImpu"
  loc_A973EB: ConcatStr
  loc_A973EC: FStStrNoPop var_F0
  loc_A973EF: LitStr " FROM imputacion"
  loc_A973F2: ConcatStr
  loc_A973F3: FStStrNoPop var_F4
  loc_A973F6: LitStr " WHERE PeriInfo = "
  loc_A973F9: ConcatStr
  loc_A973FA: FStStrNoPop var_F8
  loc_A973FD: FLdI2 var_A6
  loc_A97400: CStrUI1
  loc_A97402: FStStrNoPop var_FC
  loc_A97405: ConcatStr
  loc_A97406: FStStrNoPop var_100
  loc_A97409: LitStr " AND CodiNope = "
  loc_A9740C: ConcatStr
  loc_A9740D: FStStrNoPop var_104
  loc_A97410: ILdRf DesafectarPreventiva4
  loc_A97413: CStrI4
  loc_A97415: FStStrNoPop var_108
  loc_A97418: ConcatStr
  loc_A97419: FStStrNoPop var_10C
  loc_A9741C: LitStr " AND Item = "
  loc_A9741F: ConcatStr
  loc_A97420: FStStrNoPop var_110
  loc_A97423: FLdI2 DesafectarPreventiva8
  loc_A97426: CStrUI1
  loc_A97428: FStStrNoPop var_114
  loc_A9742B: ConcatStr
  loc_A9742C: FStStrNoPop var_118
  loc_A9742F: LitStr " AND ExorImpu = '"
  loc_A97432: ConcatStr
  loc_A97433: FStStrNoPop var_11C
  loc_A97436: ILdRf var_9C
  loc_A97439: ConcatStr
  loc_A9743A: FStStrNoPop var_120
  loc_A9743D: LitStr "'"
  loc_A97440: ConcatStr
  loc_A97441: FStStrNoPop var_124
  loc_A97444: LitStr " ) AS tbl"
  loc_A97447: ConcatStr
  loc_A97448: FStStrNoPop var_128
  loc_A9744B: LitStr " INNER JOIN itemnota itn ON itn.PeriInfo = tbl.PeriInfo AND itn.CodiNope = tbl.CodiNope AND itn.CodiItno = tbl.Item"
  loc_A9744E: ConcatStr
  loc_A9744F: FStStrNoPop var_12C
  loc_A97452: LitStr " SET itn.IdImpu= IF(sumPrevImpu=0,0,itn.IdImpu);"
  loc_A97455: ConcatStr
  loc_A97456: FStStr var_A4
  loc_A97459: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_A9747E: ILdRf var_A4
  loc_A97481: LitStr "INSERT INTO itemimpu (PeriInfo, CodiNope, Item, Cant, EtapImpu, IdImpu, AltaUsua)"
  loc_A97484: ConcatStr
  loc_A97485: FStStrNoPop var_EC
  loc_A97488: LitStr " VALUES ("
  loc_A9748B: ConcatStr
  loc_A9748C: FStStrNoPop var_F0
  loc_A9748F: FLdI2 var_A6
  loc_A97492: CStrUI1
  loc_A97494: FStStrNoPop var_F4
  loc_A97497: ConcatStr
  loc_A97498: FStStrNoPop var_F8
  loc_A9749B: LitStr ", "
  loc_A9749E: ConcatStr
  loc_A9749F: FStStrNoPop var_FC
  loc_A974A2: ILdRf DesafectarPreventiva4
  loc_A974A5: CStrI4
  loc_A974A7: FStStrNoPop var_100
  loc_A974AA: ConcatStr
  loc_A974AB: FStStrNoPop var_104
  loc_A974AE: LitStr ", "
  loc_A974B1: ConcatStr
  loc_A974B2: FStStrNoPop var_108
  loc_A974B5: FLdI2 DesafectarPreventiva8
  loc_A974B8: CStrUI1
  loc_A974BA: FStStrNoPop var_10C
  loc_A974BD: ConcatStr
  loc_A974BE: FStStrNoPop var_110
  loc_A974C1: LitStr ", "
  loc_A974C4: ConcatStr
  loc_A974C5: FStStrNoPop var_118
  loc_A974C8: FLdFPR8 CantImpu
  loc_A974CB: CStrR8
  loc_A974CD: FStStrNoPop var_114
  loc_A974D0: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A974D5: FStStrNoPop var_11C
  loc_A974D8: ConcatStr
  loc_A974D9: FStStrNoPop var_120
  loc_A974DC: LitStr ", 1, @idimpu, '"
  loc_A974DF: ConcatStr
  loc_A974E0: FStStrNoPop var_124
  loc_A974E3: ImpAdLdI4 MemVar_C3D03C
  loc_A974E6: ConcatStr
  loc_A974E7: FStStrNoPop var_128
  loc_A974EA: LitStr "');"
  loc_A974ED: ConcatStr
  loc_A974EE: FStStr var_A4
  loc_A974F1: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_A97514: ILdRf var_A4
  loc_A97517: Call EjecutarRsCls(from_stack_1v)
  loc_A9751C: LitI4 1
  loc_A97521: FStR4 var_88
  loc_A97524: FLdI2 arg_54
  loc_A97527: BranchF loc_A9753A
  loc_A9752A: LitI2_Byte 0
  loc_A9752C: PopTmpLdAd2 var_1AE
  loc_A9752F: ILdRf var_88
  loc_A97532: FLdI2 var_A6
  loc_A97535: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A9753A: ExitProcCbHresult
  loc_A97540: LitI4 0
  loc_A97545: FStR4 var_88
  loc_A97548: ExitProcCbHresult
End Function

Public Function ValidaModificarPreventiva(PeriInfo, IdImpu, Cuenta) '9EDA5C
  'Data Table: 4AFD00
  loc_9ED944: ZeroRetVal
  loc_9ED946: FLdI2 Cuenta
  loc_9ED949: LitI2_Byte 1
  loc_9ED94B: EqI2
  loc_9ED94C: BranchF loc_9EDA4D
  loc_9ED94F: LitStr "SELECT * FROM imputacion WHERE PeriInfo = "
  loc_9ED952: FLdI2 PeriInfo
  loc_9ED955: CStrUI1
  loc_9ED957: FStStrNoPop var_8C
  loc_9ED95A: ConcatStr
  loc_9ED95B: FStStrNoPop var_90
  loc_9ED95E: LitStr " AND IdImpu = "
  loc_9ED961: ConcatStr
  loc_9ED962: FStStrNoPop ValidaModificarPreventiva
  loc_9ED965: ILdRf IdImpu
  loc_9ED968: CStrI4
  loc_9ED96A: FStStrNoPop var_98
  loc_9ED96D: ConcatStr
  loc_9ED96E: FStStrNoPop var_9C
  loc_9ED971: LitStr ";"
  loc_9ED974: ConcatStr
  loc_9ED975: FStStrNoPop var_A0
  loc_9ED978: Call EjecutarRsCls(from_stack_1v)
  loc_9ED97D: FFreeStr var_8C = "": var_90 = "": ValidaModificarPreventiva = "": var_98 = "": var_9C = ""
  loc_9ED98C: FLdRfVar var_C8
  loc_9ED98F: FLdRfVar var_B8
  loc_9ED992: LitVarStr var_B4, "FechImpu"
  loc_9ED997: PopAdLdVar
  loc_9ED998: FLdRfVar var_A4
  loc_9ED99B: FLdPr Me
  loc_9ED99E: MemLdPr global_56
  loc_9ED9A1:  = Me.Fields
  loc_9ED9A6: FLdPr var_A4
  loc_9ED9A9: from_stack_2 = Me.Item(from_stack_1)
  loc_9ED9AE: FLdPr var_B8
  loc_9ED9B1:  = Me.Value
  loc_9ED9B6: LitI2_Byte &HFF
  loc_9ED9B8: PopTmpLdAd2 var_CE
  loc_9ED9BB: LitNothing
  loc_9ED9BD: CastAd
  loc_9ED9C0: FStAdFunc var_CC
  loc_9ED9C3: FLdRfVar var_CC
  loc_9ED9C6: LitStr "01/01/2018"
  loc_9ED9C9: LitI2_Byte &HFF
  loc_9ED9CB: LitI2_Byte &HFF
  loc_9ED9CD: FLdRfVar var_C8
  loc_9ED9D0: CStrVarTmp
  loc_9ED9D1: FStStrNoPop var_8C
  loc_9ED9D4: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9ED9D9: FStStr var_88
  loc_9ED9DC: FFree1Str var_8C
  loc_9ED9DF: FFreeAd var_A4 = "": var_B8 = ""
  loc_9ED9E8: FFree1Var var_C8 = ""
  loc_9ED9EB: ILdRf var_88
  loc_9ED9EE: LitStr vbNullString
  loc_9ED9F1: NeStr
  loc_9ED9F3: BranchF loc_9ED9FC
  loc_9ED9F6: ExitProcCbHresult
  loc_9ED9FC: FLdRfVar var_C8
  loc_9ED9FF: FLdRfVar var_B8
  loc_9EDA02: LitVarStr var_B4, "CodiNope"
  loc_9EDA07: PopAdLdVar
  loc_9EDA08: FLdRfVar var_A4
  loc_9EDA0B: FLdPr Me
  loc_9EDA0E: MemLdPr global_56
  loc_9EDA11:  = Me.Fields
  loc_9EDA16: FLdPr var_A4
  loc_9EDA19: from_stack_2 = Me.Item(from_stack_1)
  loc_9EDA1E: FLdPr var_B8
  loc_9EDA21:  = Me.Value
  loc_9EDA26: FLdRfVar var_C8
  loc_9EDA29: FnCLngVar
  loc_9EDA2B: LitI4 0
  loc_9EDA30: GtI4
  loc_9EDA31: FFreeAd var_A4 = ""
  loc_9EDA38: FFree1Var var_C8 = ""
  loc_9EDA3B: BranchF loc_9EDA4A
  loc_9EDA3E: LitStr "Advertencia: La Preventiva está incluida en una Nota de Pedido ..."
  loc_9EDA41: FStStrCopy var_88
  loc_9EDA44: ExitProcCbHresult
  loc_9EDA4A: Branch loc_9EDA53
  loc_9EDA4D: LitStr "Opción en desarrollo ...."
  loc_9EDA50: FStStrCopy var_88
  loc_9EDA53: ExitProcCbHresult
  loc_9EDA59: PopAdLdVar
  loc_9EDA5A: FLdPr var_77F8
End Function

Public Sub ModificarPreventiva(CodiUnga, CodiFifu, FechImpu, DetaImpu, CodiOrga, CodiInsu, CodiPart) 'A481A8
  'Data Table: 4AFD00
  loc_A47FA4: ILdRf CodiFifu
  loc_A47FA7: FStStrCopy var_88
  loc_A47FAA: ILdRf FechImpu
  loc_A47FAD: FStStrCopy var_8C
  loc_A47FB0: ILdRf DetaImpu
  loc_A47FB3: FStStrCopy var_90
  loc_A47FB6: ILdRf CodiOrga
  loc_A47FB9: FStStrCopy var_94
  loc_A47FBC: ILdRf CodiInsu
  loc_A47FBF: FStStrCopy var_98
  loc_A47FC2: ILdRf CodiPart
  loc_A47FC5: FStStrCopy var_9C
  loc_A47FC8: LitStr "UPDATE imputacion"
  loc_A47FCB: LitStr " SET CodiUnga="
  loc_A47FCE: ConcatStr
  loc_A47FCF: FStStrNoPop var_A0
  loc_A47FD2: FLdI2 CodiUnga
  loc_A47FD5: CStrUI1
  loc_A47FD7: FStStrNoPop var_A4
  loc_A47FDA: ConcatStr
  loc_A47FDB: FStStrNoPop var_A8
  loc_A47FDE: LitStr ", CodiOrga='"
  loc_A47FE1: ConcatStr
  loc_A47FE2: FStStrNoPop var_AC
  loc_A47FE5: ILdRf var_94
  loc_A47FE8: ConcatStr
  loc_A47FE9: FStStrNoPop var_B0
  loc_A47FEC: LitStr "', CodiInsu='"
  loc_A47FEF: ConcatStr
  loc_A47FF0: FStStrNoPop var_B4
  loc_A47FF3: ILdRf var_98
  loc_A47FF6: ConcatStr
  loc_A47FF7: FStStrNoPop var_B8
  loc_A47FFA: LitStr "', CodiPart='"
  loc_A47FFD: ConcatStr
  loc_A47FFE: FStStrNoPop var_BC
  loc_A48001: ILdRf var_9C
  loc_A48004: ConcatStr
  loc_A48005: FStStrNoPop var_C0
  loc_A48008: LitStr "', CodiFifu='"
  loc_A4800B: ConcatStr
  loc_A4800C: FStStrNoPop var_C4
  loc_A4800F: ILdRf var_88
  loc_A48012: ConcatStr
  loc_A48013: FStStrNoPop var_C8
  loc_A48016: LitStr "', FechImpu="
  loc_A48019: ConcatStr
  loc_A4801A: FStStrNoPop var_FC
  loc_A4801D: LitI4 1
  loc_A48022: LitI4 1
  loc_A48027: LitVarStr var_E8, "'yyyy-mm-dd'"
  loc_A4802C: FStVarCopyObj var_F8
  loc_A4802F: FLdRfVar var_F8
  loc_A48032: FLdRfVar var_8C
  loc_A48035: CVarRef
  loc_A4803A: ImpAdCallI2 Format$(, )
  loc_A4803F: FStStrNoPop var_100
  loc_A48042: ConcatStr
  loc_A48043: FStStrNoPop var_104
  loc_A48046: LitStr ", DetaImpu='"
  loc_A48049: ConcatStr
  loc_A4804A: FStStrNoPop var_108
  loc_A4804D: ILdRf var_90
  loc_A48050: ConcatStr
  loc_A48051: FStStrNoPop var_10C
  loc_A48054: LitStr "', AltaUsua='"
  loc_A48057: ConcatStr
  loc_A48058: FStStrNoPop var_110
  loc_A4805B: ImpAdLdI4 MemVar_C3D03C
  loc_A4805E: ConcatStr
  loc_A4805F: FStStrNoPop var_114
  loc_A48062: LitStr "'"
  loc_A48065: ConcatStr
  loc_A48066: FStStrNoPop var_118
  loc_A48069: LitStr " WHERE PeriInfo="
  loc_A4806C: ConcatStr
  loc_A4806D: CVarStr var_150
  loc_A48070: FLdRfVar var_140
  loc_A48073: FLdRfVar var_130
  loc_A48076: LitVarStr var_12C, "PeriInfo"
  loc_A4807B: PopAdLdVar
  loc_A4807C: FLdRfVar var_11C
  loc_A4807F: FLdPr Me
  loc_A48082: MemLdPr RsFrm
  loc_A48085:  = Me.Fields
  loc_A4808A: FLdPr var_11C
  loc_A4808D: from_stack_2 = Me.Item(from_stack_1)
  loc_A48092: FLdPr var_130
  loc_A48095:  = Me.Value
  loc_A4809A: FLdRfVar var_140
  loc_A4809D: ConcatVar var_160
  loc_A480A1: LitVarStr var_170, " AND IdImpu="
  loc_A480A6: ConcatVar var_180
  loc_A480AA: FLdRfVar var_1A8
  loc_A480AD: FLdRfVar var_198
  loc_A480B0: LitVarStr var_194, "IdImpu"
  loc_A480B5: PopAdLdVar
  loc_A480B6: FLdRfVar var_184
  loc_A480B9: FLdPr Me
  loc_A480BC: MemLdPr RsFrm
  loc_A480BF:  = Me.Fields
  loc_A480C4: FLdPr var_184
  loc_A480C7: from_stack_2 = Me.Item(from_stack_1)
  loc_A480CC: FLdPr var_198
  loc_A480CF:  = Me.Value
  loc_A480D4: FLdRfVar var_1A8
  loc_A480D7: ConcatVar var_1B8
  loc_A480DB: CStrVarVal var_1BC
  loc_A480DF: Call EjecutarRsCls(from_stack_1v)
  loc_A480E4: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_A4810F: FFreeAd var_11C = "": var_130 = "": var_184 = ""
  loc_A4811A: FFreeVar var_F8 = "": var_150 = "": var_140 = "": var_160 = "": var_180 = "": var_1A8 = ""
  loc_A4812B: FLdRfVar var_F8
  loc_A4812E: FLdRfVar var_130
  loc_A48131: LitVarStr var_D8, "PeriInfo"
  loc_A48136: PopAdLdVar
  loc_A48137: FLdRfVar var_11C
  loc_A4813A: FLdPr Me
  loc_A4813D: MemLdPr RsFrm
  loc_A48140:  = Me.Fields
  loc_A48145: FLdPr var_11C
  loc_A48148: from_stack_2 = Me.Item(from_stack_1)
  loc_A4814D: FLdPr var_130
  loc_A48150:  = Me.Value
  loc_A48155: FLdRfVar var_140
  loc_A48158: FLdRfVar var_198
  loc_A4815B: LitVarStr var_E8, "IdImpu"
  loc_A48160: PopAdLdVar
  loc_A48161: FLdRfVar var_184
  loc_A48164: FLdPr Me
  loc_A48167: MemLdPr RsFrm
  loc_A4816A:  = Me.Fields
  loc_A4816F: FLdPr var_184
  loc_A48172: from_stack_2 = Me.Item(from_stack_1)
  loc_A48177: FLdPr var_198
  loc_A4817A:  = Me.Value
  loc_A4817F: LitI2_Byte 0
  loc_A48181: PopTmpLdAd2 var_1BE
  loc_A48184: FLdRfVar var_140
  loc_A48187: CI4Var
  loc_A48189: FLdRfVar var_F8
  loc_A4818C: CI2Var
  loc_A4818D: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A48192: FFreeAd var_11C = "": var_184 = "": var_130 = ""
  loc_A4819D: FFreeVar var_F8 = ""
  loc_A481A4: ExitProcHresult
  loc_A481A5: FLdPr Me
End Sub

Public Function ValidaEliminarPreventiva(PeriInfo, IdImpu, Cuenta) 'A24E70
  'Data Table: 4AFD00
  loc_A24CD0: ZeroRetVal
  loc_A24CD2: FLdI2 Cuenta
  loc_A24CD5: LitI2_Byte 1
  loc_A24CD7: EqI2
  loc_A24CD8: BranchF loc_A24E64
  loc_A24CDB: LitStr "SELECT * FROM imputacion i WHERE i.PeriInfo = "
  loc_A24CDE: FLdI2 PeriInfo
  loc_A24CE1: CStrUI1
  loc_A24CE3: FStStrNoPop var_8C
  loc_A24CE6: ConcatStr
  loc_A24CE7: FStStrNoPop var_90
  loc_A24CEA: LitStr " AND IdImpu = "
  loc_A24CED: ConcatStr
  loc_A24CEE: FStStrNoPop ValidaEliminarPreventiva
  loc_A24CF1: ILdRf IdImpu
  loc_A24CF4: CStrI4
  loc_A24CF6: FStStrNoPop var_98
  loc_A24CF9: ConcatStr
  loc_A24CFA: FStStrNoPop var_9C
  loc_A24CFD: LitStr ";"
  loc_A24D00: ConcatStr
  loc_A24D01: FStStrNoPop var_A0
  loc_A24D04: Call EjecutarRsCls(from_stack_1v)
  loc_A24D09: FFreeStr var_8C = "": var_90 = "": ValidaEliminarPreventiva = "": var_98 = "": var_9C = ""
  loc_A24D18: ImpAdLdI2 MemVar_C3D064
  loc_A24D1B: ImpAdCallFPR4 Proc_266_42_9CF288()
  loc_A24D20: FStFPR8 var_D0
  loc_A24D23: FLdRfVar var_C8
  loc_A24D26: FLdRfVar var_B8
  loc_A24D29: LitVarStr var_B4, "FechImpu"
  loc_A24D2E: PopAdLdVar
  loc_A24D2F: FLdRfVar var_A4
  loc_A24D32: FLdPr Me
  loc_A24D35: MemLdPr global_56
  loc_A24D38:  = Me.Fields
  loc_A24D3D: FLdPr var_A4
  loc_A24D40: from_stack_2 = Me.Item(from_stack_1)
  loc_A24D45: FLdPr var_B8
  loc_A24D48:  = Me.Value
  loc_A24D4D: FLdRfVar var_C8
  loc_A24D50: FnCDateVar
  loc_A24D52: FLdFPR8 var_D0
  loc_A24D55: LeR8
  loc_A24D56: FFreeAd var_A4 = ""
  loc_A24D5D: FFree1Var var_C8 = ""
  loc_A24D60: BranchF loc_A24D6F
  loc_A24D63: LitStr "La Preventiva se encuentra en un balance cerrado. Verifique ..."
  loc_A24D66: FStStrCopy var_88
  loc_A24D69: ExitProcCbHresult
  loc_A24D6F: LitStr "SELECT IFNULL(GROUP_CONCAT(DISTINCT oc.CodiOrco),'') CodiOrcos FROM imputacion i INNER JOIN ordencompra oc ON oc.PeriInfo = i.PeriInfo AND oc.CodiNope = i.CodiNope WHERE i.PeriInfo = "
  loc_A24D72: FLdI2 PeriInfo
  loc_A24D75: CStrUI1
  loc_A24D77: FStStrNoPop var_8C
  loc_A24D7A: ConcatStr
  loc_A24D7B: FStStrNoPop var_90
  loc_A24D7E: LitStr " AND IdImpu = "
  loc_A24D81: ConcatStr
  loc_A24D82: FStStrNoPop ValidaEliminarPreventiva
  loc_A24D85: ILdRf IdImpu
  loc_A24D88: CStrI4
  loc_A24D8A: FStStrNoPop var_98
  loc_A24D8D: ConcatStr
  loc_A24D8E: FStStrNoPop var_9C
  loc_A24D91: LitStr ";"
  loc_A24D94: ConcatStr
  loc_A24D95: FStStrNoPop var_A0
  loc_A24D98: Call EjecutarRsCls(from_stack_1v)
  loc_A24D9D: FFreeStr var_8C = "": var_90 = "": ValidaEliminarPreventiva = "": var_98 = "": var_9C = ""
  loc_A24DAC: FLdRfVar var_D4
  loc_A24DAF: FLdPr Me
  loc_A24DB2: MemLdPr global_56
  loc_A24DB5:  = Me.RecordCount
  loc_A24DBA: ILdRf var_D4
  loc_A24DBD: LitI4 0
  loc_A24DC2: GtI4
  loc_A24DC3: BranchF loc_A24E61
  loc_A24DC6: FLdRfVar var_C8
  loc_A24DC9: FLdRfVar var_B8
  loc_A24DCC: LitVarStr var_B4, "CodiOrcos"
  loc_A24DD1: PopAdLdVar
  loc_A24DD2: FLdRfVar var_A4
  loc_A24DD5: FLdPr Me
  loc_A24DD8: MemLdPr global_56
  loc_A24DDB:  = Me.Fields
  loc_A24DE0: FLdPr var_A4
  loc_A24DE3: from_stack_2 = Me.Item(from_stack_1)
  loc_A24DE8: FLdPr var_B8
  loc_A24DEB:  = Me.Value
  loc_A24DF0: FLdRfVar var_C8
  loc_A24DF3: LitVarStr var_E4, vbNullString
  loc_A24DF8: HardType
  loc_A24DF9: NeVarBool
  loc_A24DFB: FFreeAd var_A4 = ""
  loc_A24E02: FFree1Var var_C8 = ""
  loc_A24E05: BranchF loc_A24E61
  loc_A24E08: LitVarStr var_E4, "La Nota de Pedido se encuentra en una Orden de Compra "
  loc_A24E0D: FLdRfVar var_C8
  loc_A24E10: FLdRfVar var_B8
  loc_A24E13: LitVarStr var_B4, "CodiOrcos"
  loc_A24E18: PopAdLdVar
  loc_A24E19: FLdRfVar var_A4
  loc_A24E1C: FLdPr Me
  loc_A24E1F: MemLdPr global_56
  loc_A24E22:  = Me.Fields
  loc_A24E27: FLdPr var_A4
  loc_A24E2A: from_stack_2 = Me.Item(from_stack_1)
  loc_A24E2F: FLdPr var_B8
  loc_A24E32:  = Me.Value
  loc_A24E37: FLdRfVar var_C8
  loc_A24E3A: ConcatVar var_F4
  loc_A24E3E: LitVarStr var_104, " . Verifique ..."
  loc_A24E43: ConcatVar var_114
  loc_A24E47: CStrVarTmp
  loc_A24E48: FStStr var_88
  loc_A24E4B: FFreeAd var_A4 = ""
  loc_A24E52: FFreeVar var_C8 = "": var_F4 = ""
  loc_A24E5B: ExitProcCbHresult
  loc_A24E61: Branch loc_A24E6A
  loc_A24E64: LitStr "No se permite eliminar la preventiva ...."
  loc_A24E67: FStStrCopy var_88
  loc_A24E6A: ExitProcCbHresult
End Function

Public Sub EliminarPreventiva(PeriInfo, IdImpu) '9E5C54
  'Data Table: 4AFD00
  loc_9E5B40: LitStr "DELETE FROM imputacion WHERE PeriInfo = "
  loc_9E5B43: FLdI2 PeriInfo
  loc_9E5B46: CStrUI1
  loc_9E5B48: FStStrNoPop var_88
  loc_9E5B4B: ConcatStr
  loc_9E5B4C: FStStrNoPop var_8C
  loc_9E5B4F: LitStr " AND IdImpu = '"
  loc_9E5B52: ConcatStr
  loc_9E5B53: FStStrNoPop var_90
  loc_9E5B56: ILdRf IdImpu
  loc_9E5B59: CStrI4
  loc_9E5B5B: FStStrNoPop var_94
  loc_9E5B5E: ConcatStr
  loc_9E5B5F: FStStrNoPop var_98
  loc_9E5B62: LitStr "';"
  loc_9E5B65: ConcatStr
  loc_9E5B66: FStStrNoPop var_9C
  loc_9E5B69: Call EjecutarRsCls(from_stack_1v)
  loc_9E5B6E: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9E5B7D: LitStr "DELETE FROM itemimpu WHERE PeriInfo = "
  loc_9E5B80: FLdI2 PeriInfo
  loc_9E5B83: CStrUI1
  loc_9E5B85: FStStrNoPop var_88
  loc_9E5B88: ConcatStr
  loc_9E5B89: FStStrNoPop var_8C
  loc_9E5B8C: LitStr " AND IdImpu = '"
  loc_9E5B8F: ConcatStr
  loc_9E5B90: FStStrNoPop var_90
  loc_9E5B93: ILdRf IdImpu
  loc_9E5B96: CStrI4
  loc_9E5B98: FStStrNoPop var_94
  loc_9E5B9B: ConcatStr
  loc_9E5B9C: FStStrNoPop var_98
  loc_9E5B9F: LitStr "';"
  loc_9E5BA2: ConcatStr
  loc_9E5BA3: FStStrNoPop var_9C
  loc_9E5BA6: Call EjecutarRsCls(from_stack_1v)
  loc_9E5BAB: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9E5BBA: LitStr "UPDATE itemnota SET IdImpu = 0 WHERE PeriInfo = "
  loc_9E5BBD: FLdI2 PeriInfo
  loc_9E5BC0: CStrUI1
  loc_9E5BC2: FStStrNoPop var_88
  loc_9E5BC5: ConcatStr
  loc_9E5BC6: FStStrNoPop var_8C
  loc_9E5BC9: LitStr " AND IdImpu = "
  loc_9E5BCC: ConcatStr
  loc_9E5BCD: FStStrNoPop var_90
  loc_9E5BD0: ILdRf IdImpu
  loc_9E5BD3: CStrI4
  loc_9E5BD5: FStStrNoPop var_94
  loc_9E5BD8: ConcatStr
  loc_9E5BD9: FStStrNoPop var_98
  loc_9E5BDC: LitStr ";"
  loc_9E5BDF: ConcatStr
  loc_9E5BE0: FStStrNoPop var_9C
  loc_9E5BE3: Call EjecutarRsCls(from_stack_1v)
  loc_9E5BE8: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9E5BF7: FLdRfVar var_A4
  loc_9E5BFA: FLdPr Me
  loc_9E5BFD: MemLdPr RsFrm
  loc_9E5C00:  = Me.AbsolutePosition
  loc_9E5C05: ILdRf var_A4
  loc_9E5C08: FStR4 var_A0
  loc_9E5C0B: Call Requery()
  loc_9E5C10: FLdRfVar var_A4
  loc_9E5C13: FLdPr Me
  loc_9E5C16: MemLdPr RsFrm
  loc_9E5C19:  = Me.RecordCount
  loc_9E5C1E: ILdRf var_A4
  loc_9E5C21: LitI4 0
  loc_9E5C26: GtI4
  loc_9E5C27: BranchF loc_9E5C53
  loc_9E5C2A: Call MoveFirst()
  loc_9E5C2F: ILdRf var_A0
  loc_9E5C32: LitI4 1
  loc_9E5C37: GtI4
  loc_9E5C38: BranchF loc_9E5C53
  loc_9E5C3B: LitVar_Missing var_B4
  loc_9E5C3E: PopAdLdVar
  loc_9E5C3F: ILdRf var_A0
  loc_9E5C42: LitI4 2
  loc_9E5C47: SubI4
  loc_9E5C48: FLdPr Me
  loc_9E5C4B: MemLdPr RsFrm
  loc_9E5C4E: Me.Move from_stack_1, from_stack_2
  loc_9E5C53: ExitProcHresult
End Sub

Public Function AddNewDefinitiva(CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, ImpoImpu, DetaImpu, CodiNope, CodiOrco, Item, Altern, CucuPers, AjusImpu, ReapDefiOr) 'AAFBD4
  'Data Table: 4AFD00
  loc_AAF774: ILdRf CodiPart
  loc_AAF777: FStStrCopy var_8C
  loc_AAF77A: ILdRf CodiOrga
  loc_AAF77D: FStStrCopy var_90
  loc_AAF780: ILdRf CodiFifu
  loc_AAF783: FStStrCopy AddNewDefinitiva
  loc_AAF786: ILdRf FechImpu
  loc_AAF789: FStStrCopy var_98
  loc_AAF78C: ILdRf ExorImpu
  loc_AAF78F: FStStrCopy var_9C
  loc_AAF792: ILdRf AddNewDefinitiva0
  loc_AAF795: FStStrCopy var_A0
  loc_AAF798: ILdRf arg_54
  loc_AAF79B: FStStrCopy var_A4
  loc_AAF79E: FLdI2 arg_60
  loc_AAF7A1: BranchF loc_AAF7B0
  loc_AAF7A4: ImpAdLdI2 MemVar_C3D064
  loc_AAF7A7: LitI2_Byte 1
  loc_AAF7A9: AddI2
  loc_AAF7AA: FStI2 var_AA
  loc_AAF7AD: Branch loc_AAF7B6
  loc_AAF7B0: ImpAdLdI2 MemVar_C3D064
  loc_AAF7B3: FStI2 var_AA
  loc_AAF7B6: FLdRfVar var_98
  loc_AAF7B9: CVarRef
  loc_AAF7BE: FLdRfVar var_CC
  loc_AAF7C1: ImpAdCallFPR4  = Year()
  loc_AAF7C6: FLdRfVar var_CC
  loc_AAF7C9: FLdI2 var_AA
  loc_AAF7CC: CVarI2 var_DC
  loc_AAF7CF: HardType
  loc_AAF7D0: NeVarBool
  loc_AAF7D2: FFree1Var var_CC = ""
  loc_AAF7D5: BranchF loc_AAF7DE
  loc_AAF7D8: ExitProcCbHresult
  loc_AAF7DE: ILdRf var_9C
  loc_AAF7E1: ImpAdCallI2 Trim$()
  loc_AAF7E6: FStStr var_9C
  loc_AAF7E9: OnErrorGoto loc_AAFBC6
  loc_AAF7EC: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, DefiImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, AjusImpu, ReapDefiOr, AltaUsua)"
  loc_AAF7EF: LitStr " VALUES ("
  loc_AAF7F2: ConcatStr
  loc_AAF7F3: FStStrNoPop var_F0
  loc_AAF7F6: FLdI2 var_AA
  loc_AAF7F9: CStrUI1
  loc_AAF7FB: FStStrNoPop var_F4
  loc_AAF7FE: ConcatStr
  loc_AAF7FF: FStStrNoPop var_F8
  loc_AAF802: LitStr ", (SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_AAF805: ConcatStr
  loc_AAF806: FStStrNoPop var_FC
  loc_AAF809: FLdI2 var_AA
  loc_AAF80C: CStrUI1
  loc_AAF80E: FStStrNoPop var_100
  loc_AAF811: ConcatStr
  loc_AAF812: FStStrNoPop var_104
  loc_AAF815: LitStr " LIMIT 1), '"
  loc_AAF818: ConcatStr
  loc_AAF819: FStStrNoPop var_108
  loc_AAF81C: ILdRf var_8C
  loc_AAF81F: ConcatStr
  loc_AAF820: FStStrNoPop var_10C
  loc_AAF823: LitStr "', '"
  loc_AAF826: ConcatStr
  loc_AAF827: FStStrNoPop var_110
  loc_AAF82A: ILdRf var_90
  loc_AAF82D: ConcatStr
  loc_AAF82E: FStStrNoPop var_114
  loc_AAF831: LitStr "', "
  loc_AAF834: ConcatStr
  loc_AAF835: FStStrNoPop var_118
  loc_AAF838: FLdI2 CodiUnga
  loc_AAF83B: CStrUI1
  loc_AAF83D: FStStrNoPop var_11C
  loc_AAF840: ConcatStr
  loc_AAF841: FStStrNoPop var_120
  loc_AAF844: LitStr ", "
  loc_AAF847: ConcatStr
  loc_AAF848: FStStrNoPop var_124
  loc_AAF84B: ILdRf CodiInsu
  loc_AAF84E: CStrI4
  loc_AAF850: FStStrNoPop var_128
  loc_AAF853: ConcatStr
  loc_AAF854: FStStrNoPop var_12C
  loc_AAF857: LitStr ", '"
  loc_AAF85A: ConcatStr
  loc_AAF85B: FStStrNoPop var_130
  loc_AAF85E: ILdRf AddNewDefinitiva
  loc_AAF861: ConcatStr
  loc_AAF862: FStStrNoPop var_134
  loc_AAF865: LitStr "', "
  loc_AAF868: ConcatStr
  loc_AAF869: FStStrNoPop var_138
  loc_AAF86C: LitI4 1
  loc_AAF871: LitI4 1
  loc_AAF876: LitVarStr var_DC, "'yyyy-mm-dd'"
  loc_AAF87B: FStVarCopyObj var_CC
  loc_AAF87E: FLdRfVar var_CC
  loc_AAF881: FLdRfVar var_98
  loc_AAF884: CVarRef
  loc_AAF889: ImpAdCallI2 Format$(, )
  loc_AAF88E: FStStrNoPop var_13C
  loc_AAF891: ConcatStr
  loc_AAF892: FStStrNoPop var_140
  loc_AAF895: LitStr ", '"
  loc_AAF898: ConcatStr
  loc_AAF899: FStStrNoPop var_144
  loc_AAF89C: ILdRf var_9C
  loc_AAF89F: ImpAdCallI2 Trim$()
  loc_AAF8A4: FStStrNoPop var_148
  loc_AAF8A7: ConcatStr
  loc_AAF8A8: FStStrNoPop var_14C
  loc_AAF8AB: LitStr "', "
  loc_AAF8AE: ConcatStr
  loc_AAF8AF: FStStrNoPop var_154
  loc_AAF8B2: FLdFPR8 CantImpu
  loc_AAF8B5: CStrR8
  loc_AAF8B7: FStStrNoPop var_150
  loc_AAF8BA: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AAF8BF: FStStrNoPop var_158
  loc_AAF8C2: ConcatStr
  loc_AAF8C3: FStStrNoPop var_15C
  loc_AAF8C6: LitStr ", "
  loc_AAF8C9: ConcatStr
  loc_AAF8CA: FStStrNoPop var_164
  loc_AAF8CD: FLdFPR8 ImpoImpu
  loc_AAF8D0: CStrR8
  loc_AAF8D2: FStStrNoPop var_160
  loc_AAF8D5: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AAF8DA: FStStrNoPop var_168
  loc_AAF8DD: ConcatStr
  loc_AAF8DE: FStStrNoPop var_16C
  loc_AAF8E1: LitStr ", "
  loc_AAF8E4: ConcatStr
  loc_AAF8E5: FStStrNoPop var_174
  loc_AAF8E8: FLdFPR8 CodiNope
  loc_AAF8EB: CStrR8
  loc_AAF8ED: FStStrNoPop var_170
  loc_AAF8F0: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AAF8F5: FStStrNoPop var_178
  loc_AAF8F8: ConcatStr
  loc_AAF8F9: FStStrNoPop var_17C
  loc_AAF8FC: LitStr ", '"
  loc_AAF8FF: ConcatStr
  loc_AAF900: FStStrNoPop var_180
  loc_AAF903: ILdRf var_A0
  loc_AAF906: ConcatStr
  loc_AAF907: FStStrNoPop var_184
  loc_AAF90A: LitStr "', "
  loc_AAF90D: ConcatStr
  loc_AAF90E: FStStrNoPop var_188
  loc_AAF911: ILdRf var_A4
  loc_AAF914: ConcatStr
  loc_AAF915: FStStrNoPop var_18C
  loc_AAF918: LitStr ", "
  loc_AAF91B: ConcatStr
  loc_AAF91C: FStStrNoPop var_190
  loc_AAF91F: ILdRf AddNewDefinitiva4
  loc_AAF922: CStrI4
  loc_AAF924: FStStrNoPop var_194
  loc_AAF927: ConcatStr
  loc_AAF928: FStStrNoPop var_198
  loc_AAF92B: LitStr ", "
  loc_AAF92E: ConcatStr
  loc_AAF92F: FStStrNoPop var_19C
  loc_AAF932: FLdI2 AddNewDefinitivaC
  loc_AAF935: CStrUI1
  loc_AAF937: FStStrNoPop var_1A0
  loc_AAF93A: ConcatStr
  loc_AAF93B: FStStrNoPop var_1A4
  loc_AAF93E: LitStr ", "
  loc_AAF941: ConcatStr
  loc_AAF942: FStStrNoPop var_1A8
  loc_AAF945: FLdUI1
  loc_AAF949: CStrI2
  loc_AAF94B: FStStrNoPop var_1AC
  loc_AAF94E: ConcatStr
  loc_AAF94F: FStStrNoPop var_1B0
  loc_AAF952: LitStr " , "
  loc_AAF955: ConcatStr
  loc_AAF956: FStStrNoPop var_1B4
  loc_AAF959: ILdRf AddNewDefinitiva8
  loc_AAF95C: CStrI4
  loc_AAF95E: FStStrNoPop var_1B8
  loc_AAF961: ConcatStr
  loc_AAF962: FStStrNoPop var_1BC
  loc_AAF965: LitStr ", "
  loc_AAF968: ConcatStr
  loc_AAF969: FStStrNoPop var_1C0
  loc_AAF96C: ILdRf arg_58
  loc_AAF96F: CStrI4
  loc_AAF971: FStStrNoPop var_1C4
  loc_AAF974: ConcatStr
  loc_AAF975: FStStrNoPop var_1C8
  loc_AAF978: LitStr ", "
  loc_AAF97B: ConcatStr
  loc_AAF97C: FStStrNoPop var_1CC
  loc_AAF97F: FLdI2 arg_5C
  loc_AAF982: CStrUI1
  loc_AAF984: FStStrNoPop var_1D0
  loc_AAF987: ConcatStr
  loc_AAF988: FStStrNoPop var_1D4
  loc_AAF98B: LitStr ", '"
  loc_AAF98E: ConcatStr
  loc_AAF98F: FStStrNoPop var_1D8
  loc_AAF992: ImpAdLdI4 MemVar_C3D03C
  loc_AAF995: ConcatStr
  loc_AAF996: FStStrNoPop var_1DC
  loc_AAF999: LitStr "');"
  loc_AAF99C: ConcatStr
  loc_AAF99D: FStStr var_A8
  loc_AAF9A0: FFreeStr var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_AAFA1B: FFree1Var var_CC = ""
  loc_AAFA1E: ILdRf AddNewDefinitiva8
  loc_AAFA21: LitI4 0
  loc_AAFA26: GtI4
  loc_AAFA27: BranchF loc_AAFB9A
  loc_AAFA2A: ILdRf var_A8
  loc_AAFA2D: LitStr "UPDATE itemcompra"
  loc_AAFA30: ConcatStr
  loc_AAFA31: FStStrNoPop var_F0
  loc_AAFA34: LitStr " SET IdImpu=if(IdImpu>0,IdImpu,@idimpu), CodiPart='"
  loc_AAFA37: ConcatStr
  loc_AAFA38: FStStrNoPop var_F4
  loc_AAFA3B: ILdRf var_8C
  loc_AAFA3E: ConcatStr
  loc_AAFA3F: FStStrNoPop var_F8
  loc_AAFA42: LitStr "', CodiOrga='"
  loc_AAFA45: ConcatStr
  loc_AAFA46: FStStrNoPop var_FC
  loc_AAFA49: ILdRf var_90
  loc_AAFA4C: ConcatStr
  loc_AAFA4D: FStStrNoPop var_100
  loc_AAFA50: LitStr "', CodiFifu='"
  loc_AAFA53: ConcatStr
  loc_AAFA54: FStStrNoPop var_104
  loc_AAFA57: ILdRf AddNewDefinitiva
  loc_AAFA5A: ConcatStr
  loc_AAFA5B: FStStrNoPop var_108
  loc_AAFA5E: LitStr "'"
  loc_AAFA61: ConcatStr
  loc_AAFA62: FStStrNoPop var_10C
  loc_AAFA65: LitStr " WHERE PeriInfo = "
  loc_AAFA68: ConcatStr
  loc_AAFA69: FStStrNoPop var_110
  loc_AAFA6C: ImpAdLdI2 MemVar_C3D064
  loc_AAFA6F: CStrUI1
  loc_AAFA71: FStStrNoPop var_114
  loc_AAFA74: ConcatStr
  loc_AAFA75: FStStrNoPop var_118
  loc_AAFA78: LitStr " AND CodiOrco = "
  loc_AAFA7B: ConcatStr
  loc_AAFA7C: FStStrNoPop var_11C
  loc_AAFA7F: ILdRf AddNewDefinitiva8
  loc_AAFA82: CStrI4
  loc_AAFA84: FStStrNoPop var_120
  loc_AAFA87: ConcatStr
  loc_AAFA88: FStStrNoPop var_124
  loc_AAFA8B: LitStr " AND CodiItco = "
  loc_AAFA8E: ConcatStr
  loc_AAFA8F: FStStrNoPop var_128
  loc_AAFA92: FLdI2 AddNewDefinitivaC
  loc_AAFA95: CStrUI1
  loc_AAFA97: FStStrNoPop var_12C
  loc_AAFA9A: ConcatStr
  loc_AAFA9B: FStStrNoPop var_130
  loc_AAFA9E: LitStr " AND AlteItco = "
  loc_AAFAA1: ConcatStr
  loc_AAFAA2: FStStrNoPop var_134
  loc_AAFAA5: FLdUI1
  loc_AAFAA9: CStrI2
  loc_AAFAAB: FStStrNoPop var_138
  loc_AAFAAE: ConcatStr
  loc_AAFAAF: FStStrNoPop var_13C
  loc_AAFAB2: LitStr "; "
  loc_AAFAB5: ConcatStr
  loc_AAFAB6: FStStrNoPop var_140
  loc_AAFAB9: LitStr "UPDATE itemrecepcion"
  loc_AAFABC: ConcatStr
  loc_AAFABD: FStStrNoPop var_144
  loc_AAFAC0: LitStr " SET IdImpu=0, CodiPart='"
  loc_AAFAC3: ConcatStr
  loc_AAFAC4: FStStrNoPop var_148
  loc_AAFAC7: ILdRf var_8C
  loc_AAFACA: ConcatStr
  loc_AAFACB: FStStrNoPop var_14C
  loc_AAFACE: LitStr "', CodiOrga='"
  loc_AAFAD1: ConcatStr
  loc_AAFAD2: FStStrNoPop var_150
  loc_AAFAD5: ILdRf var_90
  loc_AAFAD8: ConcatStr
  loc_AAFAD9: FStStrNoPop var_154
  loc_AAFADC: LitStr "', CodiFifu='"
  loc_AAFADF: ConcatStr
  loc_AAFAE0: FStStrNoPop var_158
  loc_AAFAE3: ILdRf AddNewDefinitiva
  loc_AAFAE6: ConcatStr
  loc_AAFAE7: FStStrNoPop var_15C
  loc_AAFAEA: LitStr "'"
  loc_AAFAED: ConcatStr
  loc_AAFAEE: FStStrNoPop var_160
  loc_AAFAF1: LitStr " WHERE PeriInfo = "
  loc_AAFAF4: ConcatStr
  loc_AAFAF5: FStStrNoPop var_164
  loc_AAFAF8: ImpAdLdI2 MemVar_C3D064
  loc_AAFAFB: CStrUI1
  loc_AAFAFD: FStStrNoPop var_168
  loc_AAFB00: ConcatStr
  loc_AAFB01: FStStrNoPop var_16C
  loc_AAFB04: LitStr " AND CodiOrco = "
  loc_AAFB07: ConcatStr
  loc_AAFB08: FStStrNoPop var_170
  loc_AAFB0B: ILdRf AddNewDefinitiva8
  loc_AAFB0E: CStrI4
  loc_AAFB10: FStStrNoPop var_174
  loc_AAFB13: ConcatStr
  loc_AAFB14: FStStrNoPop var_178
  loc_AAFB17: LitStr " AND CodiItco = "
  loc_AAFB1A: ConcatStr
  loc_AAFB1B: FStStrNoPop var_17C
  loc_AAFB1E: FLdI2 AddNewDefinitivaC
  loc_AAFB21: CStrUI1
  loc_AAFB23: FStStrNoPop var_180
  loc_AAFB26: ConcatStr
  loc_AAFB27: FStStrNoPop var_184
  loc_AAFB2A: LitStr " AND AlteItco = "
  loc_AAFB2D: ConcatStr
  loc_AAFB2E: FStStrNoPop var_188
  loc_AAFB31: FLdUI1
  loc_AAFB35: CStrI2
  loc_AAFB37: FStStrNoPop var_18C
  loc_AAFB3A: ConcatStr
  loc_AAFB3B: FStStrNoPop var_190
  loc_AAFB3E: LitStr ";"
  loc_AAFB41: ConcatStr
  loc_AAFB42: FStStr var_A8
  loc_AAFB45: FFreeStr var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_AAFB9A: ILdRf var_A8
  loc_AAFB9D: Call EjecutarRsCls(from_stack_1v)
  loc_AAFBA2: LitI4 1
  loc_AAFBA7: FStR4 var_88
  loc_AAFBAA: FLdI2 arg_64
  loc_AAFBAD: BranchF loc_AAFBC0
  loc_AAFBB0: LitI2_Byte 0
  loc_AAFBB2: PopTmpLdAd2 var_1DE
  loc_AAFBB5: ILdRf var_88
  loc_AAFBB8: FLdI2 var_AA
  loc_AAFBBB: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AAFBC0: ExitProcCbHresult
  loc_AAFBC6: LitI4 0
  loc_AAFBCB: FStR4 var_88
  loc_AAFBCE: ExitProcCbHresult
End Function

Public Function ValidaDesafectarDefinitiva(PeriInfo, IdImpu, Cuenta) '9D6ED8
  'Data Table: 4AFD00
  loc_9D6DF8: ZeroRetVal
  loc_9D6DFA: LitStr "SELECT * FROM imputacion WHERE PeriInfo = "
  loc_9D6DFD: FLdI2 PeriInfo
  loc_9D6E00: CStrUI1
  loc_9D6E02: FStStrNoPop var_8C
  loc_9D6E05: ConcatStr
  loc_9D6E06: FStStrNoPop var_90
  loc_9D6E09: LitStr " AND IdImpu = "
  loc_9D6E0C: ConcatStr
  loc_9D6E0D: FStStrNoPop ValidaDesafectarDefinitiva
  loc_9D6E10: ILdRf IdImpu
  loc_9D6E13: CStrI4
  loc_9D6E15: FStStrNoPop var_98
  loc_9D6E18: ConcatStr
  loc_9D6E19: FStStrNoPop var_9C
  loc_9D6E1C: LitStr ";"
  loc_9D6E1F: ConcatStr
  loc_9D6E20: FStStrNoPop var_A0
  loc_9D6E23: Call EjecutarRsCls(from_stack_1v)
  loc_9D6E28: FFreeStr var_8C = "": var_90 = "": ValidaDesafectarDefinitiva = "": var_98 = "": var_9C = ""
  loc_9D6E37: FLdRfVar var_C8
  loc_9D6E3A: FLdRfVar var_B8
  loc_9D6E3D: LitVarStr var_B4, "ReapDefi"
  loc_9D6E42: PopAdLdVar
  loc_9D6E43: FLdRfVar var_A4
  loc_9D6E46: FLdPr Me
  loc_9D6E49: MemLdPr global_56
  loc_9D6E4C:  = Me.Fields
  loc_9D6E51: FLdPr var_A4
  loc_9D6E54: from_stack_2 = Me.Item(from_stack_1)
  loc_9D6E59: FLdPr var_B8
  loc_9D6E5C:  = Me.Value
  loc_9D6E61: FLdRfVar var_C8
  loc_9D6E64: FnCByteVar
  loc_9D6E66: CI2UI1
  loc_9D6E68: LitI2_Byte 1
  loc_9D6E6A: EqI2
  loc_9D6E6B: FFreeAd var_A4 = ""
  loc_9D6E72: FFree1Var var_C8 = ""
  loc_9D6E75: BranchF loc_9D6E87
  loc_9D6E78: LitStr "La Definitiva está Reapropiada y NO puede Desafectarse. Verifique..."
  loc_9D6E7B: FStStrCopy var_88
  loc_9D6E7E: ExitProcCbHresult
  loc_9D6E84: Branch loc_9D6ED2
  loc_9D6E87: FLdRfVar var_C8
  loc_9D6E8A: FLdRfVar var_B8
  loc_9D6E8D: LitVarStr var_B4, "CodiOrco"
  loc_9D6E92: PopAdLdVar
  loc_9D6E93: FLdRfVar var_A4
  loc_9D6E96: FLdPr Me
  loc_9D6E99: MemLdPr global_56
  loc_9D6E9C:  = Me.Fields
  loc_9D6EA1: FLdPr var_A4
  loc_9D6EA4: from_stack_2 = Me.Item(from_stack_1)
  loc_9D6EA9: FLdPr var_B8
  loc_9D6EAC:  = Me.Value
  loc_9D6EB1: FLdRfVar var_C8
  loc_9D6EB4: FnCIntVar
  loc_9D6EB6: LitI2_Byte 0
  loc_9D6EB8: GtI2
  loc_9D6EB9: FFreeAd var_A4 = ""
  loc_9D6EC0: FFree1Var var_C8 = ""
  loc_9D6EC3: BranchF loc_9D6ED2
  loc_9D6EC6: LitStr "Advertencia: La Definitiva está incluida en un Orden de Compra..."
  loc_9D6EC9: FStStrCopy var_88
  loc_9D6ECC: ExitProcCbHresult
  loc_9D6ED2: ExitProcCbHresult
End Function

Public Function DesafectarDefinitiva(CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, ImpoImpu, DetaImpu, CodiNope, CodiOrco, Item, Altern, CucuPers, AjusImpu, EsEjercicioSiguiente, HaceRequery) 'A952AC
  'Data Table: 4AFD00
  loc_A94F04: ILdRf CodiPart
  loc_A94F07: FStStrCopy var_8C
  loc_A94F0A: ILdRf CodiOrga
  loc_A94F0D: FStStrCopy var_90
  loc_A94F10: ILdRf CodiFifu
  loc_A94F13: FStStrCopy DesafectarDefinitiva
  loc_A94F16: ILdRf FechImpu
  loc_A94F19: FStStrCopy var_98
  loc_A94F1C: ILdRf ExorImpu
  loc_A94F1F: FStStrCopy var_9C
  loc_A94F22: ILdRf DesafectarDefinitiva0
  loc_A94F25: FStStrCopy var_A0
  loc_A94F28: ILdRf HaceRequery
  loc_A94F2B: FStStrCopy var_A4
  loc_A94F2E: FLdFPR8 ImpoImpu
  loc_A94F31: LitI2_Byte &HFF
  loc_A94F33: CR8I2
  loc_A94F34: MulR8
  loc_A94F35: FStFPR8 ImpoImpu
  loc_A94F38: FLdFPR8 CodiNope
  loc_A94F3B: LitI2_Byte &HFF
  loc_A94F3D: CR8I2
  loc_A94F3E: MulR8
  loc_A94F3F: FStFPR8 CodiNope
  loc_A94F42: FLdI2 arg_5C
  loc_A94F45: BranchF loc_A94F54
  loc_A94F48: ImpAdLdI2 MemVar_C3D064
  loc_A94F4B: LitI2_Byte 1
  loc_A94F4D: AddI2
  loc_A94F4E: FStI2 var_AA
  loc_A94F51: Branch loc_A94F5A
  loc_A94F54: ImpAdLdI2 MemVar_C3D064
  loc_A94F57: FStI2 var_AA
  loc_A94F5A: FLdRfVar var_98
  loc_A94F5D: CVarRef
  loc_A94F62: FLdRfVar var_CC
  loc_A94F65: ImpAdCallFPR4  = Year()
  loc_A94F6A: FLdRfVar var_CC
  loc_A94F6D: FLdI2 var_AA
  loc_A94F70: CVarI2 var_DC
  loc_A94F73: HardType
  loc_A94F74: NeVarBool
  loc_A94F76: FFree1Var var_CC = ""
  loc_A94F79: BranchF loc_A94F82
  loc_A94F7C: ExitProcCbHresult
  loc_A94F82: ILdRf var_9C
  loc_A94F85: ImpAdCallI2 Trim$()
  loc_A94F8A: FStStr var_9C
  loc_A94F8D: OnErrorGoto loc_A9529E
  loc_A94F90: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, DefiImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, AjusImpu, AltaUsua)"
  loc_A94F93: LitStr " VALUES ("
  loc_A94F96: ConcatStr
  loc_A94F97: FStStrNoPop var_F0
  loc_A94F9A: FLdI2 var_AA
  loc_A94F9D: CStrUI1
  loc_A94F9F: FStStrNoPop var_F4
  loc_A94FA2: ConcatStr
  loc_A94FA3: FStStrNoPop var_F8
  loc_A94FA6: LitStr ", (SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_A94FA9: ConcatStr
  loc_A94FAA: FStStrNoPop var_FC
  loc_A94FAD: FLdI2 var_AA
  loc_A94FB0: CStrUI1
  loc_A94FB2: FStStrNoPop var_100
  loc_A94FB5: ConcatStr
  loc_A94FB6: FStStrNoPop var_104
  loc_A94FB9: LitStr "), '"
  loc_A94FBC: ConcatStr
  loc_A94FBD: FStStrNoPop var_108
  loc_A94FC0: ILdRf var_8C
  loc_A94FC3: ConcatStr
  loc_A94FC4: FStStrNoPop var_10C
  loc_A94FC7: LitStr "', '"
  loc_A94FCA: ConcatStr
  loc_A94FCB: FStStrNoPop var_110
  loc_A94FCE: ILdRf var_90
  loc_A94FD1: ConcatStr
  loc_A94FD2: FStStrNoPop var_114
  loc_A94FD5: LitStr "', "
  loc_A94FD8: ConcatStr
  loc_A94FD9: FStStrNoPop var_118
  loc_A94FDC: FLdI2 CodiUnga
  loc_A94FDF: CStrUI1
  loc_A94FE1: FStStrNoPop var_11C
  loc_A94FE4: ConcatStr
  loc_A94FE5: FStStrNoPop var_120
  loc_A94FE8: LitStr ", "
  loc_A94FEB: ConcatStr
  loc_A94FEC: FStStrNoPop var_124
  loc_A94FEF: ILdRf CodiInsu
  loc_A94FF2: CStrI4
  loc_A94FF4: FStStrNoPop var_128
  loc_A94FF7: ConcatStr
  loc_A94FF8: FStStrNoPop var_12C
  loc_A94FFB: LitStr ", '"
  loc_A94FFE: ConcatStr
  loc_A94FFF: FStStrNoPop var_130
  loc_A95002: ILdRf DesafectarDefinitiva
  loc_A95005: ConcatStr
  loc_A95006: FStStrNoPop var_134
  loc_A95009: LitStr "', "
  loc_A9500C: ConcatStr
  loc_A9500D: FStStrNoPop var_138
  loc_A95010: LitI4 1
  loc_A95015: LitI4 1
  loc_A9501A: LitVarStr var_DC, "'yyyy-mm-dd'"
  loc_A9501F: FStVarCopyObj var_CC
  loc_A95022: FLdRfVar var_CC
  loc_A95025: FLdRfVar var_98
  loc_A95028: CVarRef
  loc_A9502D: ImpAdCallI2 Format$(, )
  loc_A95032: FStStrNoPop var_13C
  loc_A95035: ConcatStr
  loc_A95036: FStStrNoPop var_140
  loc_A95039: LitStr ", '"
  loc_A9503C: ConcatStr
  loc_A9503D: FStStrNoPop var_144
  loc_A95040: ILdRf var_9C
  loc_A95043: ImpAdCallI2 Trim$()
  loc_A95048: FStStrNoPop var_148
  loc_A9504B: ConcatStr
  loc_A9504C: FStStrNoPop var_14C
  loc_A9504F: LitStr "', "
  loc_A95052: ConcatStr
  loc_A95053: FStStrNoPop var_154
  loc_A95056: FLdFPR8 CantImpu
  loc_A95059: CStrR8
  loc_A9505B: FStStrNoPop var_150
  loc_A9505E: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A95063: FStStrNoPop var_158
  loc_A95066: ConcatStr
  loc_A95067: FStStrNoPop var_15C
  loc_A9506A: LitStr ", "
  loc_A9506D: ConcatStr
  loc_A9506E: FStStrNoPop var_164
  loc_A95071: FLdFPR8 ImpoImpu
  loc_A95074: CStrR8
  loc_A95076: FStStrNoPop var_160
  loc_A95079: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A9507E: FStStrNoPop var_168
  loc_A95081: ConcatStr
  loc_A95082: FStStrNoPop var_16C
  loc_A95085: LitStr ", "
  loc_A95088: ConcatStr
  loc_A95089: FStStrNoPop var_174
  loc_A9508C: FLdFPR8 CodiNope
  loc_A9508F: CStrR8
  loc_A95091: FStStrNoPop var_170
  loc_A95094: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A95099: FStStrNoPop var_178
  loc_A9509C: ConcatStr
  loc_A9509D: FStStrNoPop var_17C
  loc_A950A0: LitStr ", '"
  loc_A950A3: ConcatStr
  loc_A950A4: FStStrNoPop var_180
  loc_A950A7: ILdRf var_A0
  loc_A950AA: ConcatStr
  loc_A950AB: FStStrNoPop var_184
  loc_A950AE: LitStr "', "
  loc_A950B1: ConcatStr
  loc_A950B2: FStStrNoPop var_188
  loc_A950B5: ILdRf var_A4
  loc_A950B8: ConcatStr
  loc_A950B9: FStStrNoPop var_18C
  loc_A950BC: LitStr ", "
  loc_A950BF: ConcatStr
  loc_A950C0: FStStrNoPop var_190
  loc_A950C3: ILdRf DesafectarDefinitiva4
  loc_A950C6: CStrI4
  loc_A950C8: FStStrNoPop var_194
  loc_A950CB: ConcatStr
  loc_A950CC: FStStrNoPop var_198
  loc_A950CF: LitStr ", "
  loc_A950D2: ConcatStr
  loc_A950D3: FStStrNoPop var_19C
  loc_A950D6: FLdI2 DesafectarDefinitivaC
  loc_A950D9: CStrUI1
  loc_A950DB: FStStrNoPop var_1A0
  loc_A950DE: ConcatStr
  loc_A950DF: FStStrNoPop var_1A4
  loc_A950E2: LitStr ", "
  loc_A950E5: ConcatStr
  loc_A950E6: FStStrNoPop var_1A8
  loc_A950E9: FLdUI1
  loc_A950ED: CStrI2
  loc_A950EF: FStStrNoPop var_1AC
  loc_A950F2: ConcatStr
  loc_A950F3: FStStrNoPop var_1B0
  loc_A950F6: LitStr " , "
  loc_A950F9: ConcatStr
  loc_A950FA: FStStrNoPop var_1B4
  loc_A950FD: ILdRf DesafectarDefinitiva8
  loc_A95100: CStrI4
  loc_A95102: FStStrNoPop var_1B8
  loc_A95105: ConcatStr
  loc_A95106: FStStrNoPop var_1BC
  loc_A95109: LitStr ", "
  loc_A9510C: ConcatStr
  loc_A9510D: FStStrNoPop var_1C0
  loc_A95110: ILdRf arg_58
  loc_A95113: CStrI4
  loc_A95115: FStStrNoPop var_1C4
  loc_A95118: ConcatStr
  loc_A95119: FStStrNoPop var_1C8
  loc_A9511C: LitStr ", '"
  loc_A9511F: ConcatStr
  loc_A95120: FStStrNoPop var_1CC
  loc_A95123: ImpAdLdI4 MemVar_C3D03C
  loc_A95126: ConcatStr
  loc_A95127: FStStrNoPop var_1D0
  loc_A9512A: LitStr "')"
  loc_A9512D: ConcatStr
  loc_A9512E: FStStrNoPop var_1D4
  loc_A95131: Call EjecutarRsCls(from_stack_1v)
  loc_A95136: FFreeStr var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_A951AD: FFree1Var var_CC = ""
  loc_A951B0: ILdRf DesafectarDefinitiva8
  loc_A951B3: LitI4 0
  loc_A951B8: GtI4
  loc_A951B9: BranchF loc_A95272
  loc_A951BC: LitStr "UPDATE ("
  loc_A951BF: LitStr " SELECT PeriInfo, CodiOrco, Item, Altern, SUM(DefiImpu) sumDefiImpu"
  loc_A951C2: ConcatStr
  loc_A951C3: FStStrNoPop var_F0
  loc_A951C6: LitStr " FROM imputacion"
  loc_A951C9: ConcatStr
  loc_A951CA: FStStrNoPop var_F4
  loc_A951CD: LitStr " WHERE PeriInfo = "
  loc_A951D0: ConcatStr
  loc_A951D1: FStStrNoPop var_F8
  loc_A951D4: FLdI2 var_AA
  loc_A951D7: CStrUI1
  loc_A951D9: FStStrNoPop var_FC
  loc_A951DC: ConcatStr
  loc_A951DD: FStStrNoPop var_100
  loc_A951E0: LitStr " AND CodiNope = "
  loc_A951E3: ConcatStr
  loc_A951E4: FStStrNoPop var_104
  loc_A951E7: ILdRf DesafectarDefinitiva4
  loc_A951EA: CStrI4
  loc_A951EC: FStStrNoPop var_108
  loc_A951EF: ConcatStr
  loc_A951F0: FStStrNoPop var_10C
  loc_A951F3: LitStr " AND CodiOrco = "
  loc_A951F6: ConcatStr
  loc_A951F7: FStStrNoPop var_110
  loc_A951FA: ILdRf DesafectarDefinitiva8
  loc_A951FD: CStrI4
  loc_A951FF: FStStrNoPop var_114
  loc_A95202: ConcatStr
  loc_A95203: FStStrNoPop var_118
  loc_A95206: LitStr " AND Item = "
  loc_A95209: ConcatStr
  loc_A9520A: FStStrNoPop var_11C
  loc_A9520D: FLdI2 DesafectarDefinitivaC
  loc_A95210: CStrUI1
  loc_A95212: FStStrNoPop var_120
  loc_A95215: ConcatStr
  loc_A95216: FStStrNoPop var_124
  loc_A95219: LitStr " AND Altern = "
  loc_A9521C: ConcatStr
  loc_A9521D: FStStrNoPop var_128
  loc_A95220: FLdUI1
  loc_A95224: CStrI2
  loc_A95226: FStStrNoPop var_12C
  loc_A95229: ConcatStr
  loc_A9522A: FStStrNoPop var_130
  loc_A9522D: LitStr " ) AS tbl"
  loc_A95230: ConcatStr
  loc_A95231: FStStrNoPop var_134
  loc_A95234: LitStr " INNER JOIN itemcompra itc ON itc.PeriInfo = tbl.PeriInfo AND itc.CodiOrco = tbl.CodiOrco AND itc.CodiItco = tbl.Item AND itc.AlteItco = tbl.Altern"
  loc_A95237: ConcatStr
  loc_A95238: FStStrNoPop var_138
  loc_A9523B: LitStr " SET itc.IdImpu= IF(sumDefiImpu=0,0,itc.IdImpu);"
  loc_A9523E: ConcatStr
  loc_A9523F: FStStrNoPop var_13C
  loc_A95242: Call EjecutarRsCls(from_stack_1v)
  loc_A95247: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = ""
  loc_A95272: ILdRf var_A8
  loc_A95275: Call EjecutarRsCls(from_stack_1v)
  loc_A9527A: LitI4 1
  loc_A9527F: FStR4 var_88
  loc_A95282: FLdI2 arg_60
  loc_A95285: BranchF loc_A95298
  loc_A95288: LitI2_Byte 0
  loc_A9528A: PopTmpLdAd2 var_1D6
  loc_A9528D: ILdRf var_88
  loc_A95290: FLdI2 var_AA
  loc_A95293: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A95298: ExitProcCbHresult
  loc_A9529E: LitI4 0
  loc_A952A3: FStR4 var_88
  loc_A952A6: ExitProcCbHresult
End Function

Public Function ValidaModificarDefinitiva(PeriInfo, IdImpu, Cuenta) '9EE1A0
  'Data Table: 4AFD00
  loc_9EE088: ZeroRetVal
  loc_9EE08A: FLdI2 Cuenta
  loc_9EE08D: LitI2_Byte 1
  loc_9EE08F: EqI2
  loc_9EE090: BranchF loc_9EE191
  loc_9EE093: LitStr "SELECT * FROM imputacion WHERE PeriInfo = "
  loc_9EE096: FLdI2 PeriInfo
  loc_9EE099: CStrUI1
  loc_9EE09B: FStStrNoPop var_8C
  loc_9EE09E: ConcatStr
  loc_9EE09F: FStStrNoPop var_90
  loc_9EE0A2: LitStr " AND IdImpu = "
  loc_9EE0A5: ConcatStr
  loc_9EE0A6: FStStrNoPop ValidaModificarDefinitiva
  loc_9EE0A9: ILdRf IdImpu
  loc_9EE0AC: CStrI4
  loc_9EE0AE: FStStrNoPop var_98
  loc_9EE0B1: ConcatStr
  loc_9EE0B2: FStStrNoPop var_9C
  loc_9EE0B5: LitStr ";"
  loc_9EE0B8: ConcatStr
  loc_9EE0B9: FStStrNoPop var_A0
  loc_9EE0BC: Call EjecutarRsCls(from_stack_1v)
  loc_9EE0C1: FFreeStr var_8C = "": var_90 = "": ValidaModificarDefinitiva = "": var_98 = "": var_9C = ""
  loc_9EE0D0: FLdRfVar var_C8
  loc_9EE0D3: FLdRfVar var_B8
  loc_9EE0D6: LitVarStr var_B4, "FechImpu"
  loc_9EE0DB: PopAdLdVar
  loc_9EE0DC: FLdRfVar var_A4
  loc_9EE0DF: FLdPr Me
  loc_9EE0E2: MemLdPr global_56
  loc_9EE0E5:  = Me.Fields
  loc_9EE0EA: FLdPr var_A4
  loc_9EE0ED: from_stack_2 = Me.Item(from_stack_1)
  loc_9EE0F2: FLdPr var_B8
  loc_9EE0F5:  = Me.Value
  loc_9EE0FA: LitI2_Byte &HFF
  loc_9EE0FC: PopTmpLdAd2 var_CE
  loc_9EE0FF: LitNothing
  loc_9EE101: CastAd
  loc_9EE104: FStAdFunc var_CC
  loc_9EE107: FLdRfVar var_CC
  loc_9EE10A: LitStr "01/01/2018"
  loc_9EE10D: LitI2_Byte &HFF
  loc_9EE10F: LitI2_Byte &HFF
  loc_9EE111: FLdRfVar var_C8
  loc_9EE114: CStrVarTmp
  loc_9EE115: FStStrNoPop var_8C
  loc_9EE118: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9EE11D: FStStr var_88
  loc_9EE120: FFree1Str var_8C
  loc_9EE123: FFreeAd var_A4 = "": var_B8 = ""
  loc_9EE12C: FFree1Var var_C8 = ""
  loc_9EE12F: ILdRf var_88
  loc_9EE132: LitStr vbNullString
  loc_9EE135: NeStr
  loc_9EE137: BranchF loc_9EE140
  loc_9EE13A: ExitProcCbHresult
  loc_9EE140: FLdRfVar var_C8
  loc_9EE143: FLdRfVar var_B8
  loc_9EE146: LitVarStr var_B4, "CodiOrco"
  loc_9EE14B: PopAdLdVar
  loc_9EE14C: FLdRfVar var_A4
  loc_9EE14F: FLdPr Me
  loc_9EE152: MemLdPr global_56
  loc_9EE155:  = Me.Fields
  loc_9EE15A: FLdPr var_A4
  loc_9EE15D: from_stack_2 = Me.Item(from_stack_1)
  loc_9EE162: FLdPr var_B8
  loc_9EE165:  = Me.Value
  loc_9EE16A: FLdRfVar var_C8
  loc_9EE16D: FnCLngVar
  loc_9EE16F: LitI4 0
  loc_9EE174: GtI4
  loc_9EE175: FFreeAd var_A4 = ""
  loc_9EE17C: FFree1Var var_C8 = ""
  loc_9EE17F: BranchF loc_9EE18E
  loc_9EE182: LitStr "Advertencia: La Definitiva está incluida en una Orden de Compra ..."
  loc_9EE185: FStStrCopy var_88
  loc_9EE188: ExitProcCbHresult
  loc_9EE18E: Branch loc_9EE197
  loc_9EE191: LitStr "Opción en desarrollo ...."
  loc_9EE194: FStStrCopy var_88
  loc_9EE197: ExitProcCbHresult
End Function

Public Sub ModificarDefinitiva(CodiUnga, FechImpu, DetaImpu, CucuPers) 'A38B64
  'Data Table: 4AFD00
  loc_A389A0: ILdRf FechImpu
  loc_A389A3: FStStrCopy var_88
  loc_A389A6: ILdRf DetaImpu
  loc_A389A9: FStStrCopy var_8C
  loc_A389AC: ILdRf CucuPers
  loc_A389AF: FStStrCopy var_90
  loc_A389B2: LitStr "UPDATE imputacion"
  loc_A389B5: LitStr " SET CodiUnga="
  loc_A389B8: ConcatStr
  loc_A389B9: FStStrNoPop var_94
  loc_A389BC: FLdI2 CodiUnga
  loc_A389BF: CStrUI1
  loc_A389C1: FStStrNoPop var_98
  loc_A389C4: ConcatStr
  loc_A389C5: FStStrNoPop var_9C
  loc_A389C8: LitStr ",FechImpu="
  loc_A389CB: ConcatStr
  loc_A389CC: FStStrNoPop var_D0
  loc_A389CF: LitI4 1
  loc_A389D4: LitI4 1
  loc_A389D9: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_A389DE: FStVarCopyObj var_CC
  loc_A389E1: FLdRfVar var_CC
  loc_A389E4: FLdRfVar var_88
  loc_A389E7: CVarRef
  loc_A389EC: ImpAdCallI2 Format$(, )
  loc_A389F1: FStStrNoPop var_D4
  loc_A389F4: ConcatStr
  loc_A389F5: FStStrNoPop var_D8
  loc_A389F8: LitStr ",DetaImpu='"
  loc_A389FB: ConcatStr
  loc_A389FC: FStStrNoPop var_DC
  loc_A389FF: ILdRf var_8C
  loc_A38A02: ConcatStr
  loc_A38A03: FStStrNoPop var_E0
  loc_A38A06: LitStr "',CucuPers='"
  loc_A38A09: ConcatStr
  loc_A38A0A: FStStrNoPop var_E4
  loc_A38A0D: ILdRf var_90
  loc_A38A10: ConcatStr
  loc_A38A11: FStStrNoPop var_E8
  loc_A38A14: LitStr "',AltaUsua='"
  loc_A38A17: ConcatStr
  loc_A38A18: FStStrNoPop var_EC
  loc_A38A1B: ImpAdLdI4 MemVar_C3D03C
  loc_A38A1E: ConcatStr
  loc_A38A1F: FStStrNoPop var_F0
  loc_A38A22: LitStr "'"
  loc_A38A25: ConcatStr
  loc_A38A26: FStStrNoPop var_F4
  loc_A38A29: LitStr " WHERE PeriInfo="
  loc_A38A2C: ConcatStr
  loc_A38A2D: CVarStr var_12C
  loc_A38A30: FLdRfVar var_11C
  loc_A38A33: FLdRfVar var_10C
  loc_A38A36: LitVarStr var_108, "PeriInfo"
  loc_A38A3B: PopAdLdVar
  loc_A38A3C: FLdRfVar var_F8
  loc_A38A3F: FLdPr Me
  loc_A38A42: MemLdPr RsFrm
  loc_A38A45:  = Me.Fields
  loc_A38A4A: FLdPr var_F8
  loc_A38A4D: from_stack_2 = Me.Item(from_stack_1)
  loc_A38A52: FLdPr var_10C
  loc_A38A55:  = Me.Value
  loc_A38A5A: FLdRfVar var_11C
  loc_A38A5D: ConcatVar var_13C
  loc_A38A61: LitVarStr var_14C, " AND IdImpu="
  loc_A38A66: ConcatVar var_15C
  loc_A38A6A: FLdRfVar var_184
  loc_A38A6D: FLdRfVar var_174
  loc_A38A70: LitVarStr var_170, "IdImpu"
  loc_A38A75: PopAdLdVar
  loc_A38A76: FLdRfVar var_160
  loc_A38A79: FLdPr Me
  loc_A38A7C: MemLdPr RsFrm
  loc_A38A7F:  = Me.Fields
  loc_A38A84: FLdPr var_160
  loc_A38A87: from_stack_2 = Me.Item(from_stack_1)
  loc_A38A8C: FLdPr var_174
  loc_A38A8F:  = Me.Value
  loc_A38A94: FLdRfVar var_184
  loc_A38A97: ConcatVar var_194
  loc_A38A9B: LitVarStr var_1A4, ";"
  loc_A38AA0: ConcatVar var_1B4
  loc_A38AA4: CStrVarVal var_1B8
  loc_A38AA8: Call EjecutarRsCls(from_stack_1v)
  loc_A38AAD: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_A38ACC: FFreeAd var_F8 = "": var_10C = "": var_160 = ""
  loc_A38AD7: FFreeVar var_CC = "": var_12C = "": var_11C = "": var_13C = "": var_15C = "": var_184 = "": var_194 = ""
  loc_A38AEA: FLdRfVar var_CC
  loc_A38AED: FLdRfVar var_10C
  loc_A38AF0: LitVarStr var_AC, "PeriInfo"
  loc_A38AF5: PopAdLdVar
  loc_A38AF6: FLdRfVar var_F8
  loc_A38AF9: FLdPr Me
  loc_A38AFC: MemLdPr RsFrm
  loc_A38AFF:  = Me.Fields
  loc_A38B04: FLdPr var_F8
  loc_A38B07: from_stack_2 = Me.Item(from_stack_1)
  loc_A38B0C: FLdPr var_10C
  loc_A38B0F:  = Me.Value
  loc_A38B14: FLdRfVar var_11C
  loc_A38B17: FLdRfVar var_174
  loc_A38B1A: LitVarStr var_BC, "IdImpu"
  loc_A38B1F: PopAdLdVar
  loc_A38B20: FLdRfVar var_160
  loc_A38B23: FLdPr Me
  loc_A38B26: MemLdPr RsFrm
  loc_A38B29:  = Me.Fields
  loc_A38B2E: FLdPr var_160
  loc_A38B31: from_stack_2 = Me.Item(from_stack_1)
  loc_A38B36: FLdPr var_174
  loc_A38B39:  = Me.Value
  loc_A38B3E: LitI2_Byte 0
  loc_A38B40: PopTmpLdAd2 var_1BA
  loc_A38B43: FLdRfVar var_11C
  loc_A38B46: CI4Var
  loc_A38B48: FLdRfVar var_CC
  loc_A38B4B: CI2Var
  loc_A38B4C: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A38B51: FFreeAd var_F8 = "": var_160 = "": var_10C = ""
  loc_A38B5C: FFreeVar var_CC = ""
  loc_A38B63: ExitProcHresult
End Sub

Public Function ValidaEliminarDefinitiva(PeriInfo, IdImpu, Cuenta) '9C2AD8
  'Data Table: 4AFD00
  loc_9C2A24: ZeroRetVal
  loc_9C2A26: FLdI2 Cuenta
  loc_9C2A29: LitI2_Byte 1
  loc_9C2A2B: EqI2
  loc_9C2A2C: BranchF loc_9C2AC9
  loc_9C2A2F: LitStr "SELECT FechImpu FROM imputacion WHERE PeriInfo = "
  loc_9C2A32: FLdI2 PeriInfo
  loc_9C2A35: CStrUI1
  loc_9C2A37: FStStrNoPop var_8C
  loc_9C2A3A: ConcatStr
  loc_9C2A3B: FStStrNoPop var_90
  loc_9C2A3E: LitStr " AND IdImpu = "
  loc_9C2A41: ConcatStr
  loc_9C2A42: FStStrNoPop ValidaEliminarDefinitiva
  loc_9C2A45: ILdRf IdImpu
  loc_9C2A48: CStrI4
  loc_9C2A4A: FStStrNoPop var_98
  loc_9C2A4D: ConcatStr
  loc_9C2A4E: FStStrNoPop var_9C
  loc_9C2A51: LitStr ";"
  loc_9C2A54: ConcatStr
  loc_9C2A55: FStStrNoPop var_A0
  loc_9C2A58: Call EjecutarRsCls(from_stack_1v)
  loc_9C2A5D: FFreeStr var_8C = "": var_90 = "": ValidaEliminarDefinitiva = "": var_98 = "": var_9C = ""
  loc_9C2A6C: ImpAdLdI2 MemVar_C3D064
  loc_9C2A6F: ImpAdCallFPR4 Proc_266_42_9CF288()
  loc_9C2A74: FStFPR8 var_D0
  loc_9C2A77: FLdRfVar var_C8
  loc_9C2A7A: FLdRfVar var_B8
  loc_9C2A7D: LitVarStr var_B4, "FechImpu"
  loc_9C2A82: PopAdLdVar
  loc_9C2A83: FLdRfVar var_A4
  loc_9C2A86: FLdPr Me
  loc_9C2A89: MemLdPr global_56
  loc_9C2A8C:  = Me.Fields
  loc_9C2A91: FLdPr var_A4
  loc_9C2A94: from_stack_2 = Me.Item(from_stack_1)
  loc_9C2A99: FLdPr var_B8
  loc_9C2A9C:  = Me.Value
  loc_9C2AA1: FLdRfVar var_C8
  loc_9C2AA4: FnCDateVar
  loc_9C2AA6: FLdFPR8 var_D0
  loc_9C2AA9: LeR8
  loc_9C2AAA: FFreeAd var_A4 = ""
  loc_9C2AB1: FFree1Var var_C8 = ""
  loc_9C2AB4: BranchF loc_9C2AC6
  loc_9C2AB7: LitStr "La Definitiva esta en un balance cerrado. Verifique ..."
  loc_9C2ABA: FStStrCopy var_88
  loc_9C2ABD: ExitProcCbHresult
  loc_9C2AC3: Branch loc_9C2AC6
  loc_9C2AC6: Branch loc_9C2ACF
  loc_9C2AC9: LitStr "No se permite eliminar la definitiva ...."
  loc_9C2ACC: FStStrCopy var_88
  loc_9C2ACF: ExitProcCbHresult
  loc_9C2AD5: Ary1LdCy
End Function

Public Sub EliminarDefinitiva(PeriInfo, IdImpu) '9CB62C
  'Data Table: 4AFD00
  loc_9CB554: LitStr "DELETE FROM imputacion WHERE PeriInfo = "
  loc_9CB557: FLdI2 PeriInfo
  loc_9CB55A: CStrUI1
  loc_9CB55C: FStStrNoPop var_88
  loc_9CB55F: ConcatStr
  loc_9CB560: FStStrNoPop var_8C
  loc_9CB563: LitStr " AND IdImpu = '"
  loc_9CB566: ConcatStr
  loc_9CB567: FStStrNoPop var_90
  loc_9CB56A: ILdRf IdImpu
  loc_9CB56D: CStrI4
  loc_9CB56F: FStStrNoPop var_94
  loc_9CB572: ConcatStr
  loc_9CB573: FStStrNoPop var_98
  loc_9CB576: LitStr "';"
  loc_9CB579: ConcatStr
  loc_9CB57A: FStStrNoPop var_9C
  loc_9CB57D: Call EjecutarRsCls(from_stack_1v)
  loc_9CB582: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9CB591: LitStr "UPDATE itemcompra SET IdImpu = 0 WHERE PeriInfo = "
  loc_9CB594: FLdI2 PeriInfo
  loc_9CB597: CStrUI1
  loc_9CB599: FStStrNoPop var_88
  loc_9CB59C: ConcatStr
  loc_9CB59D: FStStrNoPop var_8C
  loc_9CB5A0: LitStr " AND IdImpu = "
  loc_9CB5A3: ConcatStr
  loc_9CB5A4: FStStrNoPop var_90
  loc_9CB5A7: ILdRf IdImpu
  loc_9CB5AA: CStrI4
  loc_9CB5AC: FStStrNoPop var_94
  loc_9CB5AF: ConcatStr
  loc_9CB5B0: FStStrNoPop var_98
  loc_9CB5B3: LitStr ";"
  loc_9CB5B6: ConcatStr
  loc_9CB5B7: FStStrNoPop var_9C
  loc_9CB5BA: Call EjecutarRsCls(from_stack_1v)
  loc_9CB5BF: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9CB5CE: FLdRfVar var_A4
  loc_9CB5D1: FLdPr Me
  loc_9CB5D4: MemLdPr RsFrm
  loc_9CB5D7:  = Me.AbsolutePosition
  loc_9CB5DC: ILdRf var_A4
  loc_9CB5DF: FStR4 var_A0
  loc_9CB5E2: Call Requery()
  loc_9CB5E7: FLdRfVar var_A4
  loc_9CB5EA: FLdPr Me
  loc_9CB5ED: MemLdPr RsFrm
  loc_9CB5F0:  = Me.RecordCount
  loc_9CB5F5: ILdRf var_A4
  loc_9CB5F8: LitI4 0
  loc_9CB5FD: GtI4
  loc_9CB5FE: BranchF loc_9CB62A
  loc_9CB601: Call MoveFirst()
  loc_9CB606: ILdRf var_A0
  loc_9CB609: LitI4 1
  loc_9CB60E: GtI4
  loc_9CB60F: BranchF loc_9CB62A
  loc_9CB612: LitVar_Missing var_B4
  loc_9CB615: PopAdLdVar
  loc_9CB616: ILdRf var_A0
  loc_9CB619: LitI4 2
  loc_9CB61E: SubI4
  loc_9CB61F: FLdPr Me
  loc_9CB622: MemLdPr RsFrm
  loc_9CB625: Me.Move from_stack_1, from_stack_2
  loc_9CB62A: ExitProcHresult
End Sub

Public Function AddNewDevengado(CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, FefaDeve, ExorImpu, ExpeImpu, CantImpu, ImunImpu, ImpoImpu, DetaImpu, CodiNope, CodiOrco, CodiRece, Item, Altern) 'B9512C
  'Data Table: 4AFD00
  loc_B943B8: ILdRf CodiPart
  loc_B943BB: FStStrCopy var_8C
  loc_B943BE: ILdRf CodiOrga
  loc_B943C1: FStStrCopy var_90
  loc_B943C4: ILdRf CodiFifu
  loc_B943C7: FStStrCopy AddNewDevengado
  loc_B943CA: ILdRf FechImpu
  loc_B943CD: FStStrCopy var_98
  loc_B943D0: ILdRf FefaDeve
  loc_B943D3: FStStrCopy var_9C
  loc_B943D6: ILdRf ExorImpu
  loc_B943D9: FStStrCopy var_A0
  loc_B943DC: ILdRf ExpeImpu
  loc_B943DF: FStStrCopy var_A4
  loc_B943E2: ILdRf AddNewDevengado8
  loc_B943E5: FStStrCopy var_A8
  loc_B943E8: ILdRf AddNewDevengadoC
  loc_B943EB: FStStrCopy var_AC
  loc_B943EE: ILdRf Altern
  loc_B943F1: FStStrCopy var_B0
  loc_B943F4: ILdRf arg_58
  loc_B943F7: FStStrCopy var_B4
  loc_B943FA: ILdRf arg_5C
  loc_B943FD: FStStrCopy var_B8
  loc_B94400: ILdRf arg_60
  loc_B94403: FStStrCopy var_BC
  loc_B94406: ILdRf arg_64
  loc_B94409: FStStrCopy var_C0
  loc_B9440C: ILdRf arg_6C
  loc_B9440F: FStStrCopy var_C4
  loc_B94412: ILdRf var_B0
  loc_B94415: LitStr vbNullString
  loc_B94418: EqStr
  loc_B9441A: BranchF loc_B94423
  loc_B9441D: LitStr "0"
  loc_B94420: FStStrCopy var_B0
  loc_B94423: ILdRf var_B4
  loc_B94426: LitStr vbNullString
  loc_B94429: EqStr
  loc_B9442B: BranchF loc_B94434
  loc_B9442E: LitStr "0"
  loc_B94431: FStStrCopy var_B4
  loc_B94434: ILdRf var_B8
  loc_B94437: LitStr vbNullString
  loc_B9443A: EqStr
  loc_B9443C: BranchF loc_B94445
  loc_B9443F: LitStr "0"
  loc_B94442: FStStrCopy var_B8
  loc_B94445: FLdI2 arg_70
  loc_B94448: BranchF loc_B94457
  loc_B9444B: ImpAdLdI2 MemVar_C3D064
  loc_B9444E: LitI2_Byte 1
  loc_B94450: AddI2
  loc_B94451: FStI2 var_CA
  loc_B94454: Branch loc_B9445D
  loc_B94457: ImpAdLdI2 MemVar_C3D064
  loc_B9445A: FStI2 var_CA
  loc_B9445D: FLdRfVar var_98
  loc_B94460: CVarRef
  loc_B94465: FLdRfVar var_EC
  loc_B94468: ImpAdCallFPR4  = Year()
  loc_B9446D: FLdRfVar var_EC
  loc_B94470: FLdI2 var_CA
  loc_B94473: CVarI2 var_FC
  loc_B94476: HardType
  loc_B94477: NeVarBool
  loc_B94479: FFree1Var var_EC = ""
  loc_B9447C: BranchF loc_B94485
  loc_B9447F: ExitProcCbHresult
  loc_B94485: ILdRf var_A0
  loc_B94488: ImpAdCallI2 Trim$()
  loc_B9448D: FStStr var_A0
  loc_B94490: ILdRf var_A4
  loc_B94493: ImpAdCallI2 Trim$()
  loc_B94498: FStStr var_A4
  loc_B9449B: OnErrorGoto loc_B9511D
  loc_B9449E: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, CantImpu, ImunImpu, DeveImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AjusImpu, AltaUsua)"
  loc_B944A1: LitStr " VALUES ("
  loc_B944A4: ConcatStr
  loc_B944A5: FStStrNoPop var_110
  loc_B944A8: FLdI2 var_CA
  loc_B944AB: CStrUI1
  loc_B944AD: FStStrNoPop var_114
  loc_B944B0: ConcatStr
  loc_B944B1: FStStrNoPop var_118
  loc_B944B4: LitStr ", (SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_B944B7: ConcatStr
  loc_B944B8: FStStrNoPop var_11C
  loc_B944BB: FLdI2 var_CA
  loc_B944BE: CStrUI1
  loc_B944C0: FStStrNoPop var_120
  loc_B944C3: ConcatStr
  loc_B944C4: FStStrNoPop var_124
  loc_B944C7: LitStr " LIMIT 1), '"
  loc_B944CA: ConcatStr
  loc_B944CB: FStStrNoPop var_128
  loc_B944CE: ILdRf var_8C
  loc_B944D1: ConcatStr
  loc_B944D2: FStStrNoPop var_12C
  loc_B944D5: LitStr "', '"
  loc_B944D8: ConcatStr
  loc_B944D9: FStStrNoPop var_130
  loc_B944DC: ILdRf var_90
  loc_B944DF: ConcatStr
  loc_B944E0: FStStrNoPop var_134
  loc_B944E3: LitStr "', "
  loc_B944E6: ConcatStr
  loc_B944E7: FStStrNoPop var_138
  loc_B944EA: FLdI2 CodiUnga
  loc_B944ED: CStrUI1
  loc_B944EF: FStStrNoPop var_13C
  loc_B944F2: ConcatStr
  loc_B944F3: FStStrNoPop var_140
  loc_B944F6: LitStr ", "
  loc_B944F9: ConcatStr
  loc_B944FA: FStStrNoPop var_144
  loc_B944FD: ILdRf CodiInsu
  loc_B94500: CStrI4
  loc_B94502: FStStrNoPop var_148
  loc_B94505: ConcatStr
  loc_B94506: FStStrNoPop var_14C
  loc_B94509: LitStr ",'"
  loc_B9450C: ConcatStr
  loc_B9450D: FStStrNoPop var_150
  loc_B94510: ILdRf AddNewDevengado
  loc_B94513: ConcatStr
  loc_B94514: FStStrNoPop var_154
  loc_B94517: LitStr "' , "
  loc_B9451A: ConcatStr
  loc_B9451B: FStStrNoPop var_158
  loc_B9451E: LitI4 1
  loc_B94523: LitI4 1
  loc_B94528: LitVarStr var_FC, "'yyyy-mm-dd'"
  loc_B9452D: FStVarCopyObj var_EC
  loc_B94530: FLdRfVar var_EC
  loc_B94533: FLdRfVar var_98
  loc_B94536: CVarRef
  loc_B9453B: ImpAdCallI2 Format$(, )
  loc_B94540: FStStrNoPop var_15C
  loc_B94543: ConcatStr
  loc_B94544: FStStrNoPop var_160
  loc_B94547: LitStr ", '"
  loc_B9454A: ConcatStr
  loc_B9454B: FStStrNoPop var_164
  loc_B9454E: ILdRf var_A0
  loc_B94551: ConcatStr
  loc_B94552: FStStrNoPop var_168
  loc_B94555: LitStr "', '"
  loc_B94558: ConcatStr
  loc_B94559: FStStrNoPop var_16C
  loc_B9455C: ILdRf var_A4
  loc_B9455F: ConcatStr
  loc_B94560: FStStrNoPop var_170
  loc_B94563: LitStr "', "
  loc_B94566: ConcatStr
  loc_B94567: FStStrNoPop var_178
  loc_B9456A: FLdFPR8 CantImpu
  loc_B9456D: CStrR8
  loc_B9456F: FStStrNoPop var_174
  loc_B94572: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B94577: FStStrNoPop var_17C
  loc_B9457A: ConcatStr
  loc_B9457B: FStStrNoPop var_180
  loc_B9457E: LitStr ", "
  loc_B94581: ConcatStr
  loc_B94582: FStStrNoPop var_188
  loc_B94585: FLdFPR8 ImpoImpu
  loc_B94588: CStrR8
  loc_B9458A: FStStrNoPop var_184
  loc_B9458D: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B94592: FStStrNoPop var_18C
  loc_B94595: ConcatStr
  loc_B94596: FStStrNoPop var_190
  loc_B94599: LitStr ", "
  loc_B9459C: ConcatStr
  loc_B9459D: FStStrNoPop var_198
  loc_B945A0: FLdFPR8 AddNewDevengado0
  loc_B945A3: CStrR8
  loc_B945A5: FStStrNoPop var_194
  loc_B945A8: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B945AD: FStStrNoPop var_19C
  loc_B945B0: ConcatStr
  loc_B945B1: FStStrNoPop var_1A0
  loc_B945B4: LitStr ", '"
  loc_B945B7: ConcatStr
  loc_B945B8: FStStrNoPop var_1A4
  loc_B945BB: ILdRf var_A8
  loc_B945BE: ConcatStr
  loc_B945BF: FStStrNoPop var_1A8
  loc_B945C2: LitStr "', "
  loc_B945C5: ConcatStr
  loc_B945C6: FStStrNoPop var_1AC
  loc_B945C9: ILdRf var_BC
  loc_B945CC: ConcatStr
  loc_B945CD: FStStrNoPop var_1B0
  loc_B945D0: LitStr ", "
  loc_B945D3: ConcatStr
  loc_B945D4: FStStrNoPop var_1B4
  loc_B945D7: ILdRf var_AC
  loc_B945DA: ConcatStr
  loc_B945DB: FStStrNoPop var_1B8
  loc_B945DE: LitStr ", "
  loc_B945E1: ConcatStr
  loc_B945E2: FStStrNoPop var_1BC
  loc_B945E5: ILdRf var_B4
  loc_B945E8: ConcatStr
  loc_B945E9: FStStrNoPop var_1C0
  loc_B945EC: LitStr ", "
  loc_B945EF: ConcatStr
  loc_B945F0: FStStrNoPop var_1C4
  loc_B945F3: ILdRf var_B8
  loc_B945F6: ConcatStr
  loc_B945F7: FStStrNoPop var_1C8
  loc_B945FA: LitStr ", "
  loc_B945FD: ConcatStr
  loc_B945FE: FStStrNoPop var_1CC
  loc_B94601: ILdRf var_B0
  loc_B94604: ConcatStr
  loc_B94605: FStStrNoPop var_1D0
  loc_B94608: LitStr ", "
  loc_B9460B: ConcatStr
  loc_B9460C: FStStrNoPop var_1D4
  loc_B9460F: FLdI2 arg_54
  loc_B94612: CStrUI1
  loc_B94614: FStStrNoPop var_1D8
  loc_B94617: ConcatStr
  loc_B94618: FStStrNoPop var_1DC
  loc_B9461B: LitStr ", '"
  loc_B9461E: ConcatStr
  loc_B9461F: FStStrNoPop var_1E0
  loc_B94622: ILdRf var_C0
  loc_B94625: ConcatStr
  loc_B94626: FStStrNoPop var_1E4
  loc_B94629: LitStr "', "
  loc_B9462C: ConcatStr
  loc_B9462D: FStStrNoPop var_208
  loc_B94630: LitI4 1
  loc_B94635: LitI4 1
  loc_B9463A: LitVarStr var_204, "'yyyy-mm-dd'"
  loc_B9463F: FStVarCopyObj var_10C
  loc_B94642: FLdRfVar var_10C
  loc_B94645: FLdRfVar var_9C
  loc_B94648: CVarRef
  loc_B9464D: ImpAdCallI2 Format$(, )
  loc_B94652: FStStrNoPop var_20C
  loc_B94655: ConcatStr
  loc_B94656: FStStrNoPop var_210
  loc_B94659: LitStr ", "
  loc_B9465C: ConcatStr
  loc_B9465D: FStStrNoPop var_214
  loc_B94660: ILdRf arg_68
  loc_B94663: CStrI4
  loc_B94665: FStStrNoPop var_218
  loc_B94668: ConcatStr
  loc_B94669: FStStrNoPop var_21C
  loc_B9466C: LitStr ", '"
  loc_B9466F: ConcatStr
  loc_B94670: FStStrNoPop var_220
  loc_B94673: ImpAdLdI4 MemVar_C3D03C
  loc_B94676: ConcatStr
  loc_B94677: FStStrNoPop var_224
  loc_B9467A: LitStr "');"
  loc_B9467D: ConcatStr
  loc_B9467E: FStStr var_C8
  loc_B94681: FFreeStr var_220 = "": var_224 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = "": var_218 = "": var_21C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_B94700: FFreeVar var_EC = ""
  loc_B94707: LitStr "SELECT * FROM partida WHERE PeriInfo = "
  loc_B9470A: FLdI2 var_CA
  loc_B9470D: CStrUI1
  loc_B9470F: FStStrNoPop var_110
  loc_B94712: ConcatStr
  loc_B94713: FStStrNoPop var_114
  loc_B94716: LitStr " AND CodiPart = '"
  loc_B94719: ConcatStr
  loc_B9471A: FStStrNoPop var_118
  loc_B9471D: ILdRf var_8C
  loc_B94720: ConcatStr
  loc_B94721: FStStrNoPop var_11C
  loc_B94724: LitStr "' AND InvePart = 1;"
  loc_B94727: ConcatStr
  loc_B94728: FStStrNoPop var_120
  loc_B9472B: Call EjecutarRsCls(from_stack_1v)
  loc_B94730: FFreeStr var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_B9473D: FLdRfVar var_228
  loc_B94740: FLdPr Me
  loc_B94743: MemLdPr global_56
  loc_B94746:  = Me.RecordCount
  loc_B9474B: ILdRf var_228
  loc_B9474E: LitI4 0
  loc_B94753: GtI4
  loc_B94754: BranchF loc_B94A82
  loc_B94757: FLdI2 arg_78
  loc_B9475A: BranchF loc_B948DB
  loc_B9475D: ILdRf var_C8
  loc_B94760: LitStr "INSERT INTO invepatrimonial (IdInpa,CodiInpa,DetaInpa,CaraInpa,ObseInpa,FechInpa,PeriInfo,CodiInsu,CantInpa,ImunInpa,ImpoInpa,CodiCuco,IdImpu,FegaInpa,ExorImpu,ExpeImpu,MarcInpa,IdUbfi,PeusInpa,CodiAlbius,AltaUsua)"
  loc_B94763: ConcatStr
  loc_B94764: FStStrNoPop var_110
  loc_B94767: LitStr " VALUES ((SELECT Max(IdInpa)+1 IdInpa FROM invepatrimonial),0,'"
  loc_B9476A: ConcatStr
  loc_B9476B: FStStrNoPop var_114
  loc_B9476E: ILdRf var_A8
  loc_B94771: ConcatStr
  loc_B94772: FStStrNoPop var_118
  loc_B94775: LitStr "','','',"
  loc_B94778: ConcatStr
  loc_B94779: FStStrNoPop var_11C
  loc_B9477C: LitI4 1
  loc_B94781: LitI4 1
  loc_B94786: LitVarStr var_FC, "'yyyy-mm-dd'"
  loc_B9478B: FStVarCopyObj var_EC
  loc_B9478E: FLdRfVar var_EC
  loc_B94791: FLdRfVar var_98
  loc_B94794: CVarRef
  loc_B94799: ImpAdCallI2 Format$(, )
  loc_B9479E: FStStrNoPop var_120
  loc_B947A1: ConcatStr
  loc_B947A2: FStStrNoPop var_124
  loc_B947A5: LitStr ","
  loc_B947A8: ConcatStr
  loc_B947A9: FStStrNoPop var_128
  loc_B947AC: FLdI2 var_CA
  loc_B947AF: CStrUI1
  loc_B947B1: FStStrNoPop var_12C
  loc_B947B4: ConcatStr
  loc_B947B5: FStStrNoPop var_130
  loc_B947B8: LitStr ","
  loc_B947BB: ConcatStr
  loc_B947BC: FStStrNoPop var_134
  loc_B947BF: ILdRf CodiInsu
  loc_B947C2: CStrI4
  loc_B947C4: FStStrNoPop var_138
  loc_B947C7: ConcatStr
  loc_B947C8: FStStrNoPop var_13C
  loc_B947CB: LitStr ","
  loc_B947CE: ConcatStr
  loc_B947CF: FStStrNoPop var_144
  loc_B947D2: LitI4 0
  loc_B947D7: LitI4 -1
  loc_B947DC: LitI4 1
  loc_B947E1: LitStr "."
  loc_B947E4: LitStr ","
  loc_B947E7: FLdFPR8 CantImpu
  loc_B947EA: CStrR8
  loc_B947EC: FStStrNoPop var_140
  loc_B947EF: ImpAdCallI2 Replace(, , , , , )
  loc_B947F4: FStStrNoPop var_148
  loc_B947F7: ConcatStr
  loc_B947F8: FStStrNoPop var_14C
  loc_B947FB: LitStr ","
  loc_B947FE: ConcatStr
  loc_B947FF: FStStrNoPop var_154
  loc_B94802: LitI4 0
  loc_B94807: LitI4 -1
  loc_B9480C: LitI4 1
  loc_B94811: LitStr "."
  loc_B94814: LitStr ","
  loc_B94817: FLdFPR8 ImpoImpu
  loc_B9481A: CStrR8
  loc_B9481C: FStStrNoPop var_150
  loc_B9481F: ImpAdCallI2 Replace(, , , , , )
  loc_B94824: FStStrNoPop var_158
  loc_B94827: ConcatStr
  loc_B94828: FStStrNoPop var_15C
  loc_B9482B: LitStr ","
  loc_B9482E: ConcatStr
  loc_B9482F: FStStrNoPop var_164
  loc_B94832: LitI4 0
  loc_B94837: LitI4 -1
  loc_B9483C: LitI4 1
  loc_B94841: LitStr "."
  loc_B94844: LitStr ","
  loc_B94847: FLdFPR8 AddNewDevengado0
  loc_B9484A: CStrR8
  loc_B9484C: FStStrNoPop var_160
  loc_B9484F: ImpAdCallI2 Replace(, , , , , )
  loc_B94854: FStStrNoPop var_168
  loc_B94857: ConcatStr
  loc_B94858: FStStrNoPop var_16C
  loc_B9485B: LitStr ",'',@idimpu,NULL,'"
  loc_B9485E: ConcatStr
  loc_B9485F: FStStrNoPop var_170
  loc_B94862: ILdRf var_A0
  loc_B94865: ImpAdCallI2 Trim$()
  loc_B9486A: FStStrNoPop var_174
  loc_B9486D: ConcatStr
  loc_B9486E: FStStrNoPop var_178
  loc_B94871: LitStr "','"
  loc_B94874: ConcatStr
  loc_B94875: FStStrNoPop var_17C
  loc_B94878: ILdRf var_A4
  loc_B9487B: ConcatStr
  loc_B9487C: FStStrNoPop var_180
  loc_B9487F: LitStr "',0,0,0,2,'"
  loc_B94882: ConcatStr
  loc_B94883: FStStrNoPop var_184
  loc_B94886: ImpAdLdI4 MemVar_C3D03C
  loc_B94889: ConcatStr
  loc_B9488A: FStStrNoPop var_188
  loc_B9488D: LitStr "');"
  loc_B94890: ConcatStr
  loc_B94891: FStStr var_C8
  loc_B94894: FFreeStr var_188 = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_B948D5: FFree1Var var_EC = ""
  loc_B948D8: Branch loc_B94A82
  loc_B948DB: ILdRf var_C8
  loc_B948DE: LitStr "SET @idinpa=(SELECT Max(IdInpa)+1 IdInpa FROM invepatrimonial);"
  loc_B948E1: ConcatStr
  loc_B948E2: FStStr var_C8
  loc_B948E5: ILdRf var_C8
  loc_B948E8: LitStr "INSERT INTO invepatrimonial (IdInpa,CodiInpa,DetaInpa,CaraInpa,ObseInpa,FechInpa,PeriInfo,CodiInsu,CantInpa,ImunInpa,ImpoInpa,CodiCuco,IdImpu,FegaInpa,ExorImpu,ExpeImpu,MarcInpa,IdUbfi,PeusInpa,CodiAlbius,AltaUsua)"
  loc_B948EB: ConcatStr
  loc_B948EC: FStStrNoPop var_110
  loc_B948EF: LitStr " VALUES (@idinpa,0,'"
  loc_B948F2: ConcatStr
  loc_B948F3: FStStrNoPop var_114
  loc_B948F6: ILdRf var_A8
  loc_B948F9: ConcatStr
  loc_B948FA: FStStrNoPop var_118
  loc_B948FD: LitStr "','','',"
  loc_B94900: ConcatStr
  loc_B94901: FStStrNoPop var_11C
  loc_B94904: LitI4 1
  loc_B94909: LitI4 1
  loc_B9490E: LitVarStr var_FC, "'yyyy-mm-dd'"
  loc_B94913: FStVarCopyObj var_EC
  loc_B94916: FLdRfVar var_EC
  loc_B94919: FLdRfVar var_98
  loc_B9491C: CVarRef
  loc_B94921: ImpAdCallI2 Format$(, )
  loc_B94926: FStStrNoPop var_120
  loc_B94929: ConcatStr
  loc_B9492A: FStStrNoPop var_124
  loc_B9492D: LitStr ","
  loc_B94930: ConcatStr
  loc_B94931: FStStrNoPop var_128
  loc_B94934: FLdI2 var_CA
  loc_B94937: CStrUI1
  loc_B94939: FStStrNoPop var_12C
  loc_B9493C: ConcatStr
  loc_B9493D: FStStrNoPop var_130
  loc_B94940: LitStr ","
  loc_B94943: ConcatStr
  loc_B94944: FStStrNoPop var_134
  loc_B94947: ILdRf CodiInsu
  loc_B9494A: CStrI4
  loc_B9494C: FStStrNoPop var_138
  loc_B9494F: ConcatStr
  loc_B94950: FStStrNoPop var_13C
  loc_B94953: LitStr ","
  loc_B94956: ConcatStr
  loc_B94957: FStStrNoPop var_144
  loc_B9495A: LitI4 0
  loc_B9495F: LitI4 -1
  loc_B94964: LitI4 1
  loc_B94969: LitStr "."
  loc_B9496C: LitStr ","
  loc_B9496F: FLdFPR8 CantImpu
  loc_B94972: CStrR8
  loc_B94974: FStStrNoPop var_140
  loc_B94977: ImpAdCallI2 Replace(, , , , , )
  loc_B9497C: FStStrNoPop var_148
  loc_B9497F: ConcatStr
  loc_B94980: FStStrNoPop var_14C
  loc_B94983: LitStr ","
  loc_B94986: ConcatStr
  loc_B94987: FStStrNoPop var_154
  loc_B9498A: LitI4 0
  loc_B9498F: LitI4 -1
  loc_B94994: LitI4 1
  loc_B94999: LitStr "."
  loc_B9499C: LitStr ","
  loc_B9499F: FLdFPR8 ImpoImpu
  loc_B949A2: CStrR8
  loc_B949A4: FStStrNoPop var_150
  loc_B949A7: ImpAdCallI2 Replace(, , , , , )
  loc_B949AC: FStStrNoPop var_158
  loc_B949AF: ConcatStr
  loc_B949B0: FStStrNoPop var_15C
  loc_B949B3: LitStr ","
  loc_B949B6: ConcatStr
  loc_B949B7: FStStrNoPop var_164
  loc_B949BA: LitI4 0
  loc_B949BF: LitI4 -1
  loc_B949C4: LitI4 1
  loc_B949C9: LitStr "."
  loc_B949CC: LitStr ","
  loc_B949CF: FLdFPR8 AddNewDevengado0
  loc_B949D2: CStrR8
  loc_B949D4: FStStrNoPop var_160
  loc_B949D7: ImpAdCallI2 Replace(, , , , , )
  loc_B949DC: FStStrNoPop var_168
  loc_B949DF: ConcatStr
  loc_B949E0: FStStrNoPop var_16C
  loc_B949E3: LitStr ",'',@idimpu,NULL,'"
  loc_B949E6: ConcatStr
  loc_B949E7: FStStrNoPop var_170
  loc_B949EA: ILdRf var_A0
  loc_B949ED: ImpAdCallI2 Trim$()
  loc_B949F2: FStStrNoPop var_174
  loc_B949F5: ConcatStr
  loc_B949F6: FStStrNoPop var_178
  loc_B949F9: LitStr "','"
  loc_B949FC: ConcatStr
  loc_B949FD: FStStrNoPop var_17C
  loc_B94A00: ILdRf var_A4
  loc_B94A03: ConcatStr
  loc_B94A04: FStStrNoPop var_180
  loc_B94A07: LitStr "',0,0,0,2,'"
  loc_B94A0A: ConcatStr
  loc_B94A0B: FStStrNoPop var_184
  loc_B94A0E: ImpAdLdI4 MemVar_C3D03C
  loc_B94A11: ConcatStr
  loc_B94A12: FStStrNoPop var_188
  loc_B94A15: LitStr "');"
  loc_B94A18: ConcatStr
  loc_B94A19: FStStr var_C8
  loc_B94A1C: FFreeStr var_188 = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_B94A5D: FFree1Var var_EC = ""
  loc_B94A60: LitI4 0
  loc_B94A65: LitStr "El Item: "
  loc_B94A68: ILdRf var_B4
  loc_B94A6B: ConcatStr
  loc_B94A6C: FStStrNoPop var_110
  loc_B94A6F: LitStr " es Inventariable."
  loc_B94A72: ConcatStr
  loc_B94A73: FStStrNoPop var_114
  loc_B94A76: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B94A7B: FFreeStr var_110 = ""
  loc_B94A82: LitStr "SELECT * FROM insupart WHERE PeriInfo = "
  loc_B94A85: FLdI2 var_CA
  loc_B94A88: CStrUI1
  loc_B94A8A: FStStrNoPop var_110
  loc_B94A8D: ConcatStr
  loc_B94A8E: FStStrNoPop var_114
  loc_B94A91: LitStr " AND CodiPart = '"
  loc_B94A94: ConcatStr
  loc_B94A95: FStStrNoPop var_118
  loc_B94A98: ILdRf var_8C
  loc_B94A9B: ConcatStr
  loc_B94A9C: FStStrNoPop var_11C
  loc_B94A9F: LitStr "' AND CodiInsu = '"
  loc_B94AA2: ConcatStr
  loc_B94AA3: FStStrNoPop var_120
  loc_B94AA6: ILdRf CodiInsu
  loc_B94AA9: CStrI4
  loc_B94AAB: FStStrNoPop var_124
  loc_B94AAE: ConcatStr
  loc_B94AAF: FStStrNoPop var_128
  loc_B94AB2: LitStr "' AND BicoInpa = 1;"
  loc_B94AB5: ConcatStr
  loc_B94AB6: FStStrNoPop var_12C
  loc_B94AB9: Call EjecutarRsCls(from_stack_1v)
  loc_B94ABE: FFreeStr var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_B94AD1: FLdRfVar var_228
  loc_B94AD4: FLdPr Me
  loc_B94AD7: MemLdPr global_56
  loc_B94ADA:  = Me.RecordCount
  loc_B94ADF: ILdRf var_228
  loc_B94AE2: LitI4 0
  loc_B94AE7: GtI4
  loc_B94AE8: BranchF loc_B94C7C
  loc_B94AEB: FLdI2 arg_78
  loc_B94AEE: BranchF loc_B94AF4
  loc_B94AF1: Branch loc_B94C7C
  loc_B94AF4: ILdRf var_C8
  loc_B94AF7: LitStr "INSERT INTO bienconsumo (IdBico,CodiBico,IdInpa,DetaBico,CaraBico,ObseBico,FechBico,PeriInfo,CodiInsu,CantBico,ImunBico,ImpoBico,IdImpu,FegaBico,ExorImpu,ExpeImpu,MarcBico,IdUbfi,PeusBico,CodiAlbico,AltaUsua)"
  loc_B94AFA: ConcatStr
  loc_B94AFB: FStStrNoPop var_110
  loc_B94AFE: LitStr " VALUES ((SELECT IFNULL(Max(IdBico),0)+1 FROM bienconsumo bc),0,0,'"
  loc_B94B01: ConcatStr
  loc_B94B02: FStStrNoPop var_114
  loc_B94B05: ILdRf var_A8
  loc_B94B08: ConcatStr
  loc_B94B09: FStStrNoPop var_118
  loc_B94B0C: LitStr "','','',"
  loc_B94B0F: ConcatStr
  loc_B94B10: FStStrNoPop var_11C
  loc_B94B13: LitI4 1
  loc_B94B18: LitI4 1
  loc_B94B1D: LitVarStr var_FC, "'yyyy-mm-dd'"
  loc_B94B22: FStVarCopyObj var_EC
  loc_B94B25: FLdRfVar var_EC
  loc_B94B28: FLdRfVar var_98
  loc_B94B2B: CVarRef
  loc_B94B30: ImpAdCallI2 Format$(, )
  loc_B94B35: FStStrNoPop var_120
  loc_B94B38: ConcatStr
  loc_B94B39: FStStrNoPop var_124
  loc_B94B3C: LitStr ","
  loc_B94B3F: ConcatStr
  loc_B94B40: FStStrNoPop var_128
  loc_B94B43: FLdI2 var_CA
  loc_B94B46: CStrUI1
  loc_B94B48: FStStrNoPop var_12C
  loc_B94B4B: ConcatStr
  loc_B94B4C: FStStrNoPop var_130
  loc_B94B4F: LitStr ","
  loc_B94B52: ConcatStr
  loc_B94B53: FStStrNoPop var_134
  loc_B94B56: ILdRf CodiInsu
  loc_B94B59: CStrI4
  loc_B94B5B: FStStrNoPop var_138
  loc_B94B5E: ConcatStr
  loc_B94B5F: FStStrNoPop var_13C
  loc_B94B62: LitStr ","
  loc_B94B65: ConcatStr
  loc_B94B66: FStStrNoPop var_144
  loc_B94B69: LitI4 0
  loc_B94B6E: LitI4 -1
  loc_B94B73: LitI4 1
  loc_B94B78: LitStr "."
  loc_B94B7B: LitStr ","
  loc_B94B7E: FLdFPR8 CantImpu
  loc_B94B81: CStrR8
  loc_B94B83: FStStrNoPop var_140
  loc_B94B86: ImpAdCallI2 Replace(, , , , , )
  loc_B94B8B: FStStrNoPop var_148
  loc_B94B8E: ConcatStr
  loc_B94B8F: FStStrNoPop var_14C
  loc_B94B92: LitStr ","
  loc_B94B95: ConcatStr
  loc_B94B96: FStStrNoPop var_154
  loc_B94B99: LitI4 0
  loc_B94B9E: LitI4 -1
  loc_B94BA3: LitI4 1
  loc_B94BA8: LitStr "."
  loc_B94BAB: LitStr ","
  loc_B94BAE: FLdFPR8 ImpoImpu
  loc_B94BB1: CStrR8
  loc_B94BB3: FStStrNoPop var_150
  loc_B94BB6: ImpAdCallI2 Replace(, , , , , )
  loc_B94BBB: FStStrNoPop var_158
  loc_B94BBE: ConcatStr
  loc_B94BBF: FStStrNoPop var_15C
  loc_B94BC2: LitStr ","
  loc_B94BC5: ConcatStr
  loc_B94BC6: FStStrNoPop var_164
  loc_B94BC9: LitI4 0
  loc_B94BCE: LitI4 -1
  loc_B94BD3: LitI4 1
  loc_B94BD8: LitStr "."
  loc_B94BDB: LitStr ","
  loc_B94BDE: FLdFPR8 AddNewDevengado0
  loc_B94BE1: CStrR8
  loc_B94BE3: FStStrNoPop var_160
  loc_B94BE6: ImpAdCallI2 Replace(, , , , , )
  loc_B94BEB: FStStrNoPop var_168
  loc_B94BEE: ConcatStr
  loc_B94BEF: FStStrNoPop var_16C
  loc_B94BF2: LitStr ",@idimpu,NULL,'"
  loc_B94BF5: ConcatStr
  loc_B94BF6: FStStrNoPop var_170
  loc_B94BF9: ILdRf var_A0
  loc_B94BFC: ImpAdCallI2 Trim$()
  loc_B94C01: FStStrNoPop var_174
  loc_B94C04: ConcatStr
  loc_B94C05: FStStrNoPop var_178
  loc_B94C08: LitStr "','"
  loc_B94C0B: ConcatStr
  loc_B94C0C: FStStrNoPop var_17C
  loc_B94C0F: ILdRf var_A4
  loc_B94C12: ConcatStr
  loc_B94C13: FStStrNoPop var_180
  loc_B94C16: LitStr "',0,0,0,2,'"
  loc_B94C19: ConcatStr
  loc_B94C1A: FStStrNoPop var_184
  loc_B94C1D: ImpAdLdI4 MemVar_C3D03C
  loc_B94C20: ConcatStr
  loc_B94C21: FStStrNoPop var_188
  loc_B94C24: LitStr "');"
  loc_B94C27: ConcatStr
  loc_B94C28: FStStr var_C8
  loc_B94C2B: FFreeStr var_188 = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_B94C6C: FFree1Var var_EC = ""
  loc_B94C6F: LitI4 0
  loc_B94C74: LitStr "El Devengado fue transferido al inventario Bienes de Consumo."
  loc_B94C77: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B94C7C: LitStr "Municipalidad de Guaymallén"
  loc_B94C7F: LitStr "Municipalidad de Tupungato"
  loc_B94C82: EqStr
  loc_B94C84: BranchF loc_B94E29
  loc_B94C87: FLdRfVar var_234
  loc_B94C8A: ImpAdLdRf MemVar_C3D1C4
  loc_B94C8D: NewIfNullPr mdlImporte
  loc_B94C90: from_stack_1v = mdlImporte.Impo105Get()
  loc_B94C95: FLdRfVar var_23C
  loc_B94C98: ImpAdLdRf MemVar_C3D1C4
  loc_B94C9B: NewIfNullPr mdlImporte
  loc_B94C9E: from_stack_1v = mdlImporte.Impo21Get()
  loc_B94CA3: FLdRfVar var_244
  loc_B94CA6: ImpAdLdRf MemVar_C3D1C4
  loc_B94CA9: NewIfNullPr mdlImporte
  loc_B94CAC: from_stack_1v = mdlImporte.Impo27Get()
  loc_B94CB1: FLdRfVar var_24C
  loc_B94CB4: ImpAdLdRf MemVar_C3D1C4
  loc_B94CB7: NewIfNullPr mdlImporte
  loc_B94CBA: from_stack_1v = mdlImporte.ImpoPercIvaGet()
  loc_B94CBF: FLdRfVar var_254
  loc_B94CC2: ImpAdLdRf MemVar_C3D1C4
  loc_B94CC5: NewIfNullPr mdlImporte
  loc_B94CC8: from_stack_1v = mdlImporte.ImpoReteIvaGet()
  loc_B94CCD: ILdRf var_C8
  loc_B94CD0: LitStr "INSERT INTO devengado (PeriInfo,IdImpu,CodiCuco,Impo105,Impo21,Impo27,PercIva,ReteIva)"
  loc_B94CD3: ConcatStr
  loc_B94CD4: FStStrNoPop var_110
  loc_B94CD7: LitStr " VALUES ("
  loc_B94CDA: ConcatStr
  loc_B94CDB: FStStrNoPop var_114
  loc_B94CDE: FLdI2 var_CA
  loc_B94CE1: CStrUI1
  loc_B94CE3: FStStrNoPop var_118
  loc_B94CE6: ConcatStr
  loc_B94CE7: FStStrNoPop var_11C
  loc_B94CEA: LitStr ", @idimpu,'"
  loc_B94CED: ConcatStr
  loc_B94CEE: FStStrNoPop var_120
  loc_B94CF1: ILdRf var_C4
  loc_B94CF4: ConcatStr
  loc_B94CF5: FStStrNoPop var_124
  loc_B94CF8: LitStr "',"
  loc_B94CFB: ConcatStr
  loc_B94CFC: FStStrNoPop var_12C
  loc_B94CFF: LitI4 0
  loc_B94D04: LitI4 -1
  loc_B94D09: LitI4 1
  loc_B94D0E: LitStr "."
  loc_B94D11: LitStr ","
  loc_B94D14: FLdFPR8 var_234
  loc_B94D17: CStrR8
  loc_B94D19: FStStrNoPop var_128
  loc_B94D1C: ImpAdCallI2 Replace(, , , , , )
  loc_B94D21: FStStrNoPop var_130
  loc_B94D24: ConcatStr
  loc_B94D25: FStStrNoPop var_134
  loc_B94D28: LitStr ","
  loc_B94D2B: ConcatStr
  loc_B94D2C: FStStrNoPop var_13C
  loc_B94D2F: LitI4 0
  loc_B94D34: LitI4 -1
  loc_B94D39: LitI4 1
  loc_B94D3E: LitStr "."
  loc_B94D41: LitStr ","
  loc_B94D44: FLdFPR8 var_23C
  loc_B94D47: CStrR8
  loc_B94D49: FStStrNoPop var_138
  loc_B94D4C: ImpAdCallI2 Replace(, , , , , )
  loc_B94D51: FStStrNoPop var_140
  loc_B94D54: ConcatStr
  loc_B94D55: FStStrNoPop var_144
  loc_B94D58: LitStr ","
  loc_B94D5B: ConcatStr
  loc_B94D5C: FStStrNoPop var_14C
  loc_B94D5F: LitI4 0
  loc_B94D64: LitI4 -1
  loc_B94D69: LitI4 1
  loc_B94D6E: LitStr "."
  loc_B94D71: LitStr ","
  loc_B94D74: FLdFPR8 var_244
  loc_B94D77: CStrR8
  loc_B94D79: FStStrNoPop var_148
  loc_B94D7C: ImpAdCallI2 Replace(, , , , , )
  loc_B94D81: FStStrNoPop var_150
  loc_B94D84: ConcatStr
  loc_B94D85: FStStrNoPop var_154
  loc_B94D88: LitStr ","
  loc_B94D8B: ConcatStr
  loc_B94D8C: FStStrNoPop var_15C
  loc_B94D8F: LitI4 0
  loc_B94D94: LitI4 -1
  loc_B94D99: LitI4 1
  loc_B94D9E: LitStr "."
  loc_B94DA1: LitStr ","
  loc_B94DA4: FLdFPR8 var_24C
  loc_B94DA7: CStrR8
  loc_B94DA9: FStStrNoPop var_158
  loc_B94DAC: ImpAdCallI2 Replace(, , , , , )
  loc_B94DB1: FStStrNoPop var_160
  loc_B94DB4: ConcatStr
  loc_B94DB5: FStStrNoPop var_164
  loc_B94DB8: LitStr ","
  loc_B94DBB: ConcatStr
  loc_B94DBC: FStStrNoPop var_16C
  loc_B94DBF: LitI4 0
  loc_B94DC4: LitI4 -1
  loc_B94DC9: LitI4 1
  loc_B94DCE: LitStr "."
  loc_B94DD1: LitStr ","
  loc_B94DD4: FLdFPR8 var_254
  loc_B94DD7: CStrR8
  loc_B94DD9: FStStrNoPop var_168
  loc_B94DDC: ImpAdCallI2 Replace(, , , , , )
  loc_B94DE1: FStStrNoPop var_170
  loc_B94DE4: ConcatStr
  loc_B94DE5: FStStrNoPop var_174
  loc_B94DE8: LitStr ");"
  loc_B94DEB: ConcatStr
  loc_B94DEC: FStStr var_C8
  loc_B94DEF: FFreeStr var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = ""
  loc_B94E26: Branch loc_B94E6A
  loc_B94E29: ILdRf var_C8
  loc_B94E2C: LitStr "INSERT INTO devengado (PeriInfo, IdImpu, CodiCuco)"
  loc_B94E2F: ConcatStr
  loc_B94E30: FStStrNoPop var_110
  loc_B94E33: LitStr " VALUES ("
  loc_B94E36: ConcatStr
  loc_B94E37: FStStrNoPop var_114
  loc_B94E3A: FLdI2 var_CA
  loc_B94E3D: CStrUI1
  loc_B94E3F: FStStrNoPop var_118
  loc_B94E42: ConcatStr
  loc_B94E43: FStStrNoPop var_11C
  loc_B94E46: LitStr ", @idimpu, '"
  loc_B94E49: ConcatStr
  loc_B94E4A: FStStrNoPop var_120
  loc_B94E4D: ILdRf var_C4
  loc_B94E50: ConcatStr
  loc_B94E51: FStStrNoPop var_124
  loc_B94E54: LitStr "');"
  loc_B94E57: ConcatStr
  loc_B94E58: FStStr var_C8
  loc_B94E5B: FFreeStr var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_B94E6A: LitStr "Municipalidad de Guaymallén"
  loc_B94E6D: LitStr "Municipalidad de General Alvear"
  loc_B94E70: EqStr
  loc_B94E72: ILdRf var_A4
  loc_B94E75: LitStr vbNullString
  loc_B94E78: NeStr
  loc_B94E7A: AndI4
  loc_B94E7B: BranchF loc_B95052
  loc_B94E7E: LitVarStr var_FC, "EX-"
  loc_B94E83: ILdRf var_A4
  loc_B94E86: FnLenStr
  loc_B94E87: LitI4 2
  loc_B94E8C: SubI4
  loc_B94E8D: FLdRfVar var_A4
  loc_B94E90: CVarRef
  loc_B94E95: FLdRfVar var_EC
  loc_B94E98: ImpAdCallFPR4  = Left(, )
  loc_B94E9D: FLdRfVar var_EC
  loc_B94EA0: ConcatVar var_10C
  loc_B94EA4: LitVarStr var_1F4, "-   -GDEMZA-"
  loc_B94EA9: ConcatVar var_268
  loc_B94EAD: CStrVarTmp
  loc_B94EAE: FStStr var_258
  loc_B94EB1: FFreeVar var_EC = "": var_10C = ""
  loc_B94EBA: LitI4 1
  loc_B94EBF: FLdRfVar var_A4
  loc_B94EC2: CVarRef
  loc_B94EC7: FLdRfVar var_EC
  loc_B94ECA: ImpAdCallFPR4  = Right(, )
  loc_B94ECF: FLdRfVar var_EC
  loc_B94ED2: FStVar var_278
  loc_B94ED6: FLdRfVar var_278
  loc_B94ED9: LitVarStr var_DC, "H"
  loc_B94EDE: HardType
  loc_B94EDF: EqVarBool
  loc_B94EE1: BranchT loc_B94EF2
  loc_B94EE4: FLdRfVar var_278
  loc_B94EE7: LitVarStr var_FC, "h"
  loc_B94EEC: HardType
  loc_B94EED: EqVarBool
  loc_B94EEF: BranchF loc_B94EFF
  loc_B94EF2: ILdRf var_258
  loc_B94EF5: LitStr "SECHAC#ALVEAR"
  loc_B94EF8: ConcatStr
  loc_B94EF9: FStStr var_258
  loc_B94EFC: Branch loc_B94FFF
  loc_B94EFF: FLdRfVar var_278
  loc_B94F02: LitVarStr var_DC, "G"
  loc_B94F07: HardType
  loc_B94F08: EqVarBool
  loc_B94F0A: BranchT loc_B94F1B
  loc_B94F0D: FLdRfVar var_278
  loc_B94F10: LitVarStr var_FC, "g"
  loc_B94F15: HardType
  loc_B94F16: EqVarBool
  loc_B94F18: BranchF loc_B94F28
  loc_B94F1B: ILdRf var_258
  loc_B94F1E: LitStr "SECGOB#ALVEAR"
  loc_B94F21: ConcatStr
  loc_B94F22: FStStr var_258
  loc_B94F25: Branch loc_B94FFF
  loc_B94F28: FLdRfVar var_278
  loc_B94F2B: LitVarStr var_DC, "D"
  loc_B94F30: HardType
  loc_B94F31: EqVarBool
  loc_B94F33: BranchT loc_B94F44
  loc_B94F36: FLdRfVar var_278
  loc_B94F39: LitVarStr var_FC, "d"
  loc_B94F3E: HardType
  loc_B94F3F: EqVarBool
  loc_B94F41: BranchF loc_B94F51
  loc_B94F44: ILdRf var_258
  loc_B94F47: LitStr "SECDESARR#ALVEAR"
  loc_B94F4A: ConcatStr
  loc_B94F4B: FStStr var_258
  loc_B94F4E: Branch loc_B94FFF
  loc_B94F51: FLdRfVar var_278
  loc_B94F54: LitVarStr var_DC, "P"
  loc_B94F59: HardType
  loc_B94F5A: EqVarBool
  loc_B94F5C: BranchT loc_B94F6D
  loc_B94F5F: FLdRfVar var_278
  loc_B94F62: LitVarStr var_FC, "p"
  loc_B94F67: HardType
  loc_B94F68: EqVarBool
  loc_B94F6A: BranchF loc_B94F7A
  loc_B94F6D: ILdRf var_258
  loc_B94F70: LitStr "SECOBYSERV#ALVEAR"
  loc_B94F73: ConcatStr
  loc_B94F74: FStStr var_258
  loc_B94F77: Branch loc_B94FFF
  loc_B94F7A: FLdRfVar var_278
  loc_B94F7D: LitVarStr var_DC, "I"
  loc_B94F82: HardType
  loc_B94F83: EqVarBool
  loc_B94F85: BranchT loc_B94F96
  loc_B94F88: FLdRfVar var_278
  loc_B94F8B: LitVarStr var_FC, "i"
  loc_B94F90: HardType
  loc_B94F91: EqVarBool
  loc_B94F93: BranchF loc_B94FA3
  loc_B94F96: ILdRf var_258
  loc_B94F99: LitStr "MUNI#ALVEAR"
  loc_B94F9C: ConcatStr
  loc_B94F9D: FStStr var_258
  loc_B94FA0: Branch loc_B94FFF
  loc_B94FA3: FLdRfVar var_278
  loc_B94FA6: LitVarStr var_DC, "V"
  loc_B94FAB: HardType
  loc_B94FAC: EqVarBool
  loc_B94FAE: BranchT loc_B94FBF
  loc_B94FB1: FLdRfVar var_278
  loc_B94FB4: LitVarStr var_FC, "v"
  loc_B94FB9: HardType
  loc_B94FBA: EqVarBool
  loc_B94FBC: BranchF loc_B94FCC
  loc_B94FBF: ILdRf var_258
  loc_B94FC2: LitStr "VIAL#ALVEAR"
  loc_B94FC5: ConcatStr
  loc_B94FC6: FStStr var_258
  loc_B94FC9: Branch loc_B94FFF
  loc_B94FCC: FLdRfVar var_278
  loc_B94FCF: LitVarStr var_DC, "C"
  loc_B94FD4: HardType
  loc_B94FD5: EqVarBool
  loc_B94FD7: BranchT loc_B94FE8
  loc_B94FDA: FLdRfVar var_278
  loc_B94FDD: LitVarStr var_FC, "c"
  loc_B94FE2: HardType
  loc_B94FE3: EqVarBool
  loc_B94FE5: BranchF loc_B94FF5
  loc_B94FE8: ILdRf var_258
  loc_B94FEB: LitStr "HCD#ALVEAR"
  loc_B94FEE: ConcatStr
  loc_B94FEF: FStStr var_258
  loc_B94FF2: Branch loc_B94FFF
  loc_B94FF5: ILdRf var_258
  loc_B94FF8: LitStr "ERROR EN LA LETRA"
  loc_B94FFB: ConcatStr
  loc_B94FFC: FStStr var_258
  loc_B94FFF: LitStr "INSERT IGNORE INTO contpres.expediente (ExpeInfo, ExpeGDE, AltaUsua, AltaUsuaGDE) VALUE ('"
  loc_B95002: ILdRf var_A4
  loc_B95005: ConcatStr
  loc_B95006: FStStrNoPop var_110
  loc_B95009: LitStr "','"
  loc_B9500C: ConcatStr
  loc_B9500D: FStStrNoPop var_114
  loc_B95010: ILdRf var_258
  loc_B95013: ConcatStr
  loc_B95014: FStStrNoPop var_118
  loc_B95017: LitStr "','"
  loc_B9501A: ConcatStr
  loc_B9501B: FStStrNoPop var_11C
  loc_B9501E: ImpAdLdI4 MemVar_C3D03C
  loc_B95021: ConcatStr
  loc_B95022: FStStrNoPop var_120
  loc_B95025: LitStr "','"
  loc_B95028: ConcatStr
  loc_B95029: FStStrNoPop var_124
  loc_B9502C: ImpAdLdI4 MemVar_C3D040
  loc_B9502F: ConcatStr
  loc_B95030: FStStrNoPop var_128
  loc_B95033: LitStr "');"
  loc_B95036: ConcatStr
  loc_B95037: FStStrNoPop var_12C
  loc_B9503A: Call EjecutarRsCls(from_stack_1v)
  loc_B9503F: FFreeStr var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_B95052: ILdRf var_C8
  loc_B95055: LitStr "UPDATE itemrecepcion"
  loc_B95058: ConcatStr
  loc_B95059: FStStrNoPop var_110
  loc_B9505C: LitStr " SET itemrecepcion.IdImpu = @idimpu"
  loc_B9505F: ConcatStr
  loc_B95060: FStStrNoPop var_114
  loc_B95063: LitStr " WHERE itemrecepcion.PeriInfo = "
  loc_B95066: ConcatStr
  loc_B95067: FStStrNoPop var_118
  loc_B9506A: FLdI2 var_CA
  loc_B9506D: CStrUI1
  loc_B9506F: FStStrNoPop var_11C
  loc_B95072: ConcatStr
  loc_B95073: FStStrNoPop var_120
  loc_B95076: LitStr " AND itemrecepcion.CodiOrco = "
  loc_B95079: ConcatStr
  loc_B9507A: FStStrNoPop var_124
  loc_B9507D: ILdRf var_B0
  loc_B95080: ConcatStr
  loc_B95081: FStStrNoPop var_128
  loc_B95084: LitStr " AND itemrecepcion.CodiRece = "
  loc_B95087: ConcatStr
  loc_B95088: FStStrNoPop var_12C
  loc_B9508B: FLdI2 arg_54
  loc_B9508E: CStrUI1
  loc_B95090: FStStrNoPop var_130
  loc_B95093: ConcatStr
  loc_B95094: FStStrNoPop var_134
  loc_B95097: LitStr " AND itemrecepcion.CodiItco = "
  loc_B9509A: ConcatStr
  loc_B9509B: FStStrNoPop var_138
  loc_B9509E: ILdRf var_B4
  loc_B950A1: ConcatStr
  loc_B950A2: FStStrNoPop var_13C
  loc_B950A5: LitStr " AND itemrecepcion.AlteItco = "
  loc_B950A8: ConcatStr
  loc_B950A9: FStStrNoPop var_140
  loc_B950AC: ILdRf var_B8
  loc_B950AF: ConcatStr
  loc_B950B0: FStStrNoPop var_144
  loc_B950B3: LitStr ";"
  loc_B950B6: ConcatStr
  loc_B950B7: FStStr var_C8
  loc_B950BA: FFreeStr var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_B950D9: ILdRf var_C8
  loc_B950DC: Call EjecutarRsCls(from_stack_1v)
  loc_B950E1: LitStr "Municipalidad de Guaymallén"
  loc_B950E4: LitStr "Municipalidad de Lavalle"
  loc_B950E7: EqStr
  loc_B950E9: BranchF loc_B950F9
  loc_B950EC: LitI4 0
  loc_B950F1: LitStr "se grabó CORRECTAMENTE ..."
  loc_B950F4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B950F9: LitI4 1
  loc_B950FE: FStR4 var_88
  loc_B95101: FLdI2 arg_74
  loc_B95104: BranchF loc_B95117
  loc_B95107: LitI2_Byte 0
  loc_B95109: PopTmpLdAd2 var_27A
  loc_B9510C: ILdRf var_88
  loc_B9510F: FLdI2 var_CA
  loc_B95112: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B95117: ExitProcCbHresult
  loc_B9511D: LitI4 0
  loc_B95122: FStR4 var_88
  loc_B95125: ExitProcCbHresult
End Function

Public Function ValidaDesafectarDevengado(PeriInfo, IdImpu, Cuenta) 'A3B9F4
  'Data Table: 4AFD00
  loc_A3B7E8: ZeroRetVal
  loc_A3B7EA: LitStr "SELECT * FROM invepatrimonial WHERE PeriInfo = "
  loc_A3B7ED: FLdI2 PeriInfo
  loc_A3B7F0: CStrUI1
  loc_A3B7F2: FStStrNoPop var_8C
  loc_A3B7F5: ConcatStr
  loc_A3B7F6: FStStrNoPop var_90
  loc_A3B7F9: LitStr " AND IdImpu = "
  loc_A3B7FC: ConcatStr
  loc_A3B7FD: FStStrNoPop ValidaDesafectarDevengado
  loc_A3B800: ILdRf IdImpu
  loc_A3B803: CStrI4
  loc_A3B805: FStStrNoPop var_98
  loc_A3B808: ConcatStr
  loc_A3B809: FStStrNoPop var_9C
  loc_A3B80C: LitStr ";"
  loc_A3B80F: ConcatStr
  loc_A3B810: FStStrNoPop var_A0
  loc_A3B813: Call EjecutarRsCls(from_stack_1v)
  loc_A3B818: FFreeStr var_8C = "": var_90 = "": ValidaDesafectarDevengado = "": var_98 = "": var_9C = ""
  loc_A3B827: FLdRfVar var_A4
  loc_A3B82A: FLdPr Me
  loc_A3B82D: MemLdPr global_56
  loc_A3B830:  = Me.RecordCount
  loc_A3B835: ILdRf var_A4
  loc_A3B838: LitI4 0
  loc_A3B83D: GtI4
  loc_A3B83E: BranchF loc_A3B91F
  loc_A3B841: FLdRfVar var_CC
  loc_A3B844: FLdRfVar var_BC
  loc_A3B847: LitVarStr var_B8, "CodiInpa"
  loc_A3B84C: PopAdLdVar
  loc_A3B84D: FLdRfVar var_A8
  loc_A3B850: FLdPr Me
  loc_A3B853: MemLdPr global_56
  loc_A3B856:  = Me.Fields
  loc_A3B85B: FLdPr var_A8
  loc_A3B85E: from_stack_2 = Me.Item(from_stack_1)
  loc_A3B863: FLdPr var_BC
  loc_A3B866:  = Me.Value
  loc_A3B86B: FLdRfVar var_CC
  loc_A3B86E: FnCLngVar
  loc_A3B870: LitI4 0
  loc_A3B875: EqI4
  loc_A3B876: FFreeAd var_A8 = ""
  loc_A3B87D: FFree1Var var_CC = ""
  loc_A3B880: BranchF loc_A3B892
  loc_A3B883: LitStr "Advertencia: El Devengado está en la >> Lista Temporal del Inventario << ...."
  loc_A3B886: FStStrCopy var_88
  loc_A3B889: ExitProcCbHresult
  loc_A3B88F: Branch loc_A3B91F
  loc_A3B892: FLdRfVar var_BC
  loc_A3B895: LitVarStr var_B8, "FebaInpa"
  loc_A3B89A: PopAdLdVar
  loc_A3B89B: FLdRfVar var_A8
  loc_A3B89E: FLdPr Me
  loc_A3B8A1: MemLdPr global_56
  loc_A3B8A4:  = Me.Fields
  loc_A3B8A9: FLdPr var_A8
  loc_A3B8AC: from_stack_2 = Me.Item(from_stack_1)
  loc_A3B8B1: FLdZeroAd var_BC
  loc_A3B8B4: CVarAd
  loc_A3B8B8: ImpAdCallI2 IsNull()
  loc_A3B8BD: FFree1Ad var_A8
  loc_A3B8C0: FFree1Var var_CC = ""
  loc_A3B8C3: BranchF loc_A3B91F
  loc_A3B8C6: LitVarStr var_DC, "El Devengado está incluido en el Bien Patrimonial definitivo "
  loc_A3B8CB: FLdRfVar var_CC
  loc_A3B8CE: FLdRfVar var_BC
  loc_A3B8D1: LitVarStr var_B8, "CodiInpa"
  loc_A3B8D6: PopAdLdVar
  loc_A3B8D7: FLdRfVar var_A8
  loc_A3B8DA: FLdPr Me
  loc_A3B8DD: MemLdPr global_56
  loc_A3B8E0:  = Me.Fields
  loc_A3B8E5: FLdPr var_A8
  loc_A3B8E8: from_stack_2 = Me.Item(from_stack_1)
  loc_A3B8ED: FLdPr var_BC
  loc_A3B8F0:  = Me.Value
  loc_A3B8F5: FLdRfVar var_CC
  loc_A3B8F8: ConcatVar var_EC
  loc_A3B8FC: LitVarStr var_FC, " y NO puede Desafectarse. Verifique..."
  loc_A3B901: ConcatVar var_10C
  loc_A3B905: CStrVarTmp
  loc_A3B906: FStStr var_88
  loc_A3B909: FFreeAd var_A8 = ""
  loc_A3B910: FFreeVar var_CC = "": var_EC = ""
  loc_A3B919: ExitProcCbHresult
  loc_A3B91F: LitStr "SELECT *"
  loc_A3B922: LitStr " FROM imputacion i"
  loc_A3B925: ConcatStr
  loc_A3B926: FStStrNoPop var_8C
  loc_A3B929: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_A3B92C: ConcatStr
  loc_A3B92D: FStStrNoPop var_90
  loc_A3B930: LitStr " WHERE i.PeriInfo = "
  loc_A3B933: ConcatStr
  loc_A3B934: FStStrNoPop ValidaDesafectarDevengado
  loc_A3B937: FLdI2 PeriInfo
  loc_A3B93A: CStrUI1
  loc_A3B93C: FStStrNoPop var_98
  loc_A3B93F: ConcatStr
  loc_A3B940: FStStrNoPop var_9C
  loc_A3B943: LitStr " AND i.IdImpu = "
  loc_A3B946: ConcatStr
  loc_A3B947: FStStrNoPop var_A0
  loc_A3B94A: ILdRf IdImpu
  loc_A3B94D: CStrI4
  loc_A3B94F: FStStrNoPop var_110
  loc_A3B952: ConcatStr
  loc_A3B953: FStStrNoPop var_114
  loc_A3B956: LitStr ";"
  loc_A3B959: ConcatStr
  loc_A3B95A: FStStrNoPop var_118
  loc_A3B95D: Call EjecutarRsCls(from_stack_1v)
  loc_A3B962: FFreeStr var_8C = "": var_90 = "": ValidaDesafectarDevengado = "": var_98 = "": var_9C = "": var_A0 = "": var_110 = "": var_114 = ""
  loc_A3B977: FLdRfVar var_CC
  loc_A3B97A: FLdRfVar var_BC
  loc_A3B97D: LitVarStr var_B8, "ResiDeve"
  loc_A3B982: PopAdLdVar
  loc_A3B983: FLdRfVar var_A8
  loc_A3B986: FLdPr Me
  loc_A3B989: MemLdPr global_56
  loc_A3B98C:  = Me.Fields
  loc_A3B991: FLdPr var_A8
  loc_A3B994: from_stack_2 = Me.Item(from_stack_1)
  loc_A3B999: FLdPr var_BC
  loc_A3B99C:  = Me.Value
  loc_A3B9A1: FLdRfVar var_CC
  loc_A3B9A4: LitVarStr var_DC, "1"
  loc_A3B9A9: HardType
  loc_A3B9AA: EqVarBool
  loc_A3B9AC: FFreeAd var_A8 = ""
  loc_A3B9B3: FFree1Var var_CC = ""
  loc_A3B9B6: BranchF loc_A3B9EB
  loc_A3B9B9: LitStr "Municipalidad de Guaymallén"
  loc_A3B9BC: LitStr "Municipalidad de Maipú"
  loc_A3B9BF: EqStr
  loc_A3B9C1: LitStr "Municipalidad de Guaymallén"
  loc_A3B9C4: LitStr "Municipalidad de General Alvear"
  loc_A3B9C7: EqStr
  loc_A3B9C9: OrI4
  loc_A3B9CA: LitStr "Municipalidad de Guaymallén"
  loc_A3B9CD: LitStr "Municipalidad de Guaymallén"
  loc_A3B9D0: EqStr
  loc_A3B9D2: OrI4
  loc_A3B9D3: BranchF loc_A3B9DF
  loc_A3B9D6: LitStr "Advertencia: El Devengado está pasado como Residuo Pasivo. Verifique..."
  loc_A3B9D9: FStStrCopy var_88
  loc_A3B9DC: Branch loc_A3B9E5
  loc_A3B9DF: LitStr "El Devengado está pasado como Residuo Pasivo y NO puede Desafectarse. Verifique..."
  loc_A3B9E2: FStStrCopy var_88
  loc_A3B9E5: ExitProcCbHresult
  loc_A3B9EB: ExitProcCbHresult
  loc_A3B9F1: DOC
End Function

Public Function DesafectarDevengado(IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, FefaDeve, ExorImpu, ExpeImpu, CantImpu, ImunImpu, ImpoImpu, DetaImpu, CodiNope, CodiOrco, CodiRece, Item) 'B0FCA0
  'Data Table: 4AFD00
  loc_B0F578: ILdRf CodiPart
  loc_B0F57B: FStStrCopy var_8C
  loc_B0F57E: ILdRf CodiOrga
  loc_B0F581: FStStrCopy var_90
  loc_B0F584: ILdRf CodiFifu
  loc_B0F587: FStStrCopy DesafectarDevengado
  loc_B0F58A: ILdRf FechImpu
  loc_B0F58D: FStStrCopy var_98
  loc_B0F590: ILdRf FefaDeve
  loc_B0F593: FStStrCopy var_9C
  loc_B0F596: ILdRf ExorImpu
  loc_B0F599: FStStrCopy var_A0
  loc_B0F59C: ILdRf ExpeImpu
  loc_B0F59F: FStStrCopy var_A4
  loc_B0F5A2: ILdRf DesafectarDevengadoC
  loc_B0F5A5: FStStrCopy var_A8
  loc_B0F5A8: ILdRf Item
  loc_B0F5AB: FStStrCopy var_AC
  loc_B0F5AE: ILdRf arg_54
  loc_B0F5B1: FStStrCopy var_B0
  loc_B0F5B4: ILdRf arg_5C
  loc_B0F5B7: FStStrCopy var_B4
  loc_B0F5BA: ILdRf arg_60
  loc_B0F5BD: FStStrCopy var_B8
  loc_B0F5C0: ILdRf arg_64
  loc_B0F5C3: FStStrCopy var_BC
  loc_B0F5C6: ILdRf arg_68
  loc_B0F5C9: FStStrCopy var_C0
  loc_B0F5CC: ILdRf arg_70
  loc_B0F5CF: FStStrCopy var_C4
  loc_B0F5D2: ILdRf var_B0
  loc_B0F5D5: LitStr vbNullString
  loc_B0F5D8: EqStr
  loc_B0F5DA: BranchF loc_B0F5E3
  loc_B0F5DD: LitStr "0"
  loc_B0F5E0: FStStrCopy var_B0
  loc_B0F5E3: ILdRf var_B4
  loc_B0F5E6: LitStr vbNullString
  loc_B0F5E9: EqStr
  loc_B0F5EB: BranchF loc_B0F5F4
  loc_B0F5EE: LitStr "0"
  loc_B0F5F1: FStStrCopy var_B4
  loc_B0F5F4: ILdRf var_B8
  loc_B0F5F7: LitStr vbNullString
  loc_B0F5FA: EqStr
  loc_B0F5FC: BranchF loc_B0F605
  loc_B0F5FF: LitStr "0"
  loc_B0F602: FStStrCopy var_B8
  loc_B0F605: FLdFPR8 ImpoImpu
  loc_B0F608: LitI2_Byte &HFF
  loc_B0F60A: CR8I2
  loc_B0F60B: MulR8
  loc_B0F60C: FStFPR8 ImpoImpu
  loc_B0F60F: FLdFPR8 DesafectarDevengado4
  loc_B0F612: LitI2_Byte &HFF
  loc_B0F614: CR8I2
  loc_B0F615: MulR8
  loc_B0F616: FStFPR8 DesafectarDevengado4
  loc_B0F619: FLdI2 arg_74
  loc_B0F61C: BranchF loc_B0F62B
  loc_B0F61F: ImpAdLdI2 MemVar_C3D064
  loc_B0F622: LitI2_Byte 1
  loc_B0F624: AddI2
  loc_B0F625: FStI2 var_CA
  loc_B0F628: Branch loc_B0F631
  loc_B0F62B: ImpAdLdI2 MemVar_C3D064
  loc_B0F62E: FStI2 var_CA
  loc_B0F631: FLdRfVar var_98
  loc_B0F634: CVarRef
  loc_B0F639: FLdRfVar var_EC
  loc_B0F63C: ImpAdCallFPR4  = Year()
  loc_B0F641: FLdRfVar var_EC
  loc_B0F644: FLdI2 var_CA
  loc_B0F647: CVarI2 var_FC
  loc_B0F64A: HardType
  loc_B0F64B: NeVarBool
  loc_B0F64D: FFree1Var var_EC = ""
  loc_B0F650: BranchF loc_B0F659
  loc_B0F653: ExitProcCbHresult
  loc_B0F659: ILdRf var_A0
  loc_B0F65C: ImpAdCallI2 Trim$()
  loc_B0F661: FStStr var_A0
  loc_B0F664: ILdRf var_A4
  loc_B0F667: ImpAdCallI2 Trim$()
  loc_B0F66C: FStStr var_A4
  loc_B0F66F: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, CantImpu, ImunImpu, DeveImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AjusImpu, AltaUsua)"
  loc_B0F672: LitStr " VALUES ("
  loc_B0F675: ConcatStr
  loc_B0F676: FStStrNoPop var_110
  loc_B0F679: FLdI2 var_CA
  loc_B0F67C: CStrUI1
  loc_B0F67E: FStStrNoPop var_114
  loc_B0F681: ConcatStr
  loc_B0F682: FStStrNoPop var_118
  loc_B0F685: LitStr ", (SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_B0F688: ConcatStr
  loc_B0F689: FStStrNoPop var_11C
  loc_B0F68C: FLdI2 var_CA
  loc_B0F68F: CStrUI1
  loc_B0F691: FStStrNoPop var_120
  loc_B0F694: ConcatStr
  loc_B0F695: FStStrNoPop var_124
  loc_B0F698: LitStr " LIMIT 1), '"
  loc_B0F69B: ConcatStr
  loc_B0F69C: FStStrNoPop var_128
  loc_B0F69F: ILdRf var_8C
  loc_B0F6A2: ConcatStr
  loc_B0F6A3: FStStrNoPop var_12C
  loc_B0F6A6: LitStr "', '"
  loc_B0F6A9: ConcatStr
  loc_B0F6AA: FStStrNoPop var_130
  loc_B0F6AD: ILdRf var_90
  loc_B0F6B0: ConcatStr
  loc_B0F6B1: FStStrNoPop var_134
  loc_B0F6B4: LitStr "', "
  loc_B0F6B7: ConcatStr
  loc_B0F6B8: FStStrNoPop var_138
  loc_B0F6BB: FLdI2 CodiUnga
  loc_B0F6BE: CStrUI1
  loc_B0F6C0: FStStrNoPop var_13C
  loc_B0F6C3: ConcatStr
  loc_B0F6C4: FStStrNoPop var_140
  loc_B0F6C7: LitStr ", "
  loc_B0F6CA: ConcatStr
  loc_B0F6CB: FStStrNoPop var_144
  loc_B0F6CE: ILdRf CodiInsu
  loc_B0F6D1: CStrI4
  loc_B0F6D3: FStStrNoPop var_148
  loc_B0F6D6: ConcatStr
  loc_B0F6D7: FStStrNoPop var_14C
  loc_B0F6DA: LitStr ",'"
  loc_B0F6DD: ConcatStr
  loc_B0F6DE: FStStrNoPop var_150
  loc_B0F6E1: ILdRf DesafectarDevengado
  loc_B0F6E4: ConcatStr
  loc_B0F6E5: FStStrNoPop var_154
  loc_B0F6E8: LitStr "', "
  loc_B0F6EB: ConcatStr
  loc_B0F6EC: FStStrNoPop var_158
  loc_B0F6EF: LitI4 1
  loc_B0F6F4: LitI4 1
  loc_B0F6F9: LitVarStr var_FC, "'yyyy-mm-dd'"
  loc_B0F6FE: FStVarCopyObj var_EC
  loc_B0F701: FLdRfVar var_EC
  loc_B0F704: FLdRfVar var_98
  loc_B0F707: CVarRef
  loc_B0F70C: ImpAdCallI2 Format$(, )
  loc_B0F711: FStStrNoPop var_15C
  loc_B0F714: ConcatStr
  loc_B0F715: FStStrNoPop var_160
  loc_B0F718: LitStr ",'"
  loc_B0F71B: ConcatStr
  loc_B0F71C: FStStrNoPop var_164
  loc_B0F71F: ILdRf var_A0
  loc_B0F722: ImpAdCallI2 Trim$()
  loc_B0F727: FStStrNoPop var_168
  loc_B0F72A: ConcatStr
  loc_B0F72B: FStStrNoPop var_16C
  loc_B0F72E: LitStr "','"
  loc_B0F731: ConcatStr
  loc_B0F732: FStStrNoPop var_170
  loc_B0F735: ILdRf var_A4
  loc_B0F738: ImpAdCallI2 Trim$()
  loc_B0F73D: FStStrNoPop var_174
  loc_B0F740: ConcatStr
  loc_B0F741: FStStrNoPop var_178
  loc_B0F744: LitStr "',"
  loc_B0F747: ConcatStr
  loc_B0F748: FStStrNoPop var_180
  loc_B0F74B: FLdFPR8 CantImpu
  loc_B0F74E: CStrR8
  loc_B0F750: FStStrNoPop var_17C
  loc_B0F753: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B0F758: FStStrNoPop var_184
  loc_B0F75B: ConcatStr
  loc_B0F75C: FStStrNoPop var_188
  loc_B0F75F: LitStr ", "
  loc_B0F762: ConcatStr
  loc_B0F763: FStStrNoPop var_190
  loc_B0F766: FLdFPR8 ImpoImpu
  loc_B0F769: CStrR8
  loc_B0F76B: FStStrNoPop var_18C
  loc_B0F76E: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B0F773: FStStrNoPop var_194
  loc_B0F776: ConcatStr
  loc_B0F777: FStStrNoPop var_198
  loc_B0F77A: LitStr ", "
  loc_B0F77D: ConcatStr
  loc_B0F77E: FStStrNoPop var_1A0
  loc_B0F781: FLdFPR8 DesafectarDevengado4
  loc_B0F784: CStrR8
  loc_B0F786: FStStrNoPop var_19C
  loc_B0F789: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B0F78E: FStStrNoPop var_1A4
  loc_B0F791: ConcatStr
  loc_B0F792: FStStrNoPop var_1A8
  loc_B0F795: LitStr ", '"
  loc_B0F798: ConcatStr
  loc_B0F799: FStStrNoPop var_1AC
  loc_B0F79C: ILdRf var_A8
  loc_B0F79F: ConcatStr
  loc_B0F7A0: FStStrNoPop var_1B0
  loc_B0F7A3: LitStr "', "
  loc_B0F7A6: ConcatStr
  loc_B0F7A7: FStStrNoPop var_1B4
  loc_B0F7AA: ILdRf var_BC
  loc_B0F7AD: ConcatStr
  loc_B0F7AE: FStStrNoPop var_1B8
  loc_B0F7B1: LitStr ", "
  loc_B0F7B4: ConcatStr
  loc_B0F7B5: FStStrNoPop var_1BC
  loc_B0F7B8: ILdRf var_AC
  loc_B0F7BB: ConcatStr
  loc_B0F7BC: FStStrNoPop var_1C0
  loc_B0F7BF: LitStr ", "
  loc_B0F7C2: ConcatStr
  loc_B0F7C3: FStStrNoPop var_1C4
  loc_B0F7C6: ILdRf var_B4
  loc_B0F7C9: ConcatStr
  loc_B0F7CA: FStStrNoPop var_1C8
  loc_B0F7CD: LitStr ", "
  loc_B0F7D0: ConcatStr
  loc_B0F7D1: FStStrNoPop var_1CC
  loc_B0F7D4: ILdRf var_B8
  loc_B0F7D7: ConcatStr
  loc_B0F7D8: FStStrNoPop var_1D0
  loc_B0F7DB: LitStr ", "
  loc_B0F7DE: ConcatStr
  loc_B0F7DF: FStStrNoPop var_1D4
  loc_B0F7E2: ILdRf var_B0
  loc_B0F7E5: ConcatStr
  loc_B0F7E6: FStStrNoPop var_1D8
  loc_B0F7E9: LitStr ", "
  loc_B0F7EC: ConcatStr
  loc_B0F7ED: FStStrNoPop var_1DC
  loc_B0F7F0: FLdI2 arg_58
  loc_B0F7F3: CStrUI1
  loc_B0F7F5: FStStrNoPop var_1E0
  loc_B0F7F8: ConcatStr
  loc_B0F7F9: FStStrNoPop var_1E4
  loc_B0F7FC: LitStr ", '"
  loc_B0F7FF: ConcatStr
  loc_B0F800: FStStrNoPop var_1E8
  loc_B0F803: ILdRf var_C0
  loc_B0F806: ConcatStr
  loc_B0F807: FStStrNoPop var_1EC
  loc_B0F80A: LitStr "', "
  loc_B0F80D: ConcatStr
  loc_B0F80E: FStStrNoPop var_210
  loc_B0F811: LitI4 1
  loc_B0F816: LitI4 1
  loc_B0F81B: LitVarStr var_20C, "'yyyy-mm-dd'"
  loc_B0F820: FStVarCopyObj var_10C
  loc_B0F823: FLdRfVar var_10C
  loc_B0F826: FLdRfVar var_9C
  loc_B0F829: CVarRef
  loc_B0F82E: ImpAdCallI2 Format$(, )
  loc_B0F833: FStStrNoPop var_214
  loc_B0F836: ConcatStr
  loc_B0F837: FStStrNoPop var_218
  loc_B0F83A: LitStr ", "
  loc_B0F83D: ConcatStr
  loc_B0F83E: FStStrNoPop var_21C
  loc_B0F841: ILdRf arg_6C
  loc_B0F844: CStrI4
  loc_B0F846: FStStrNoPop var_220
  loc_B0F849: ConcatStr
  loc_B0F84A: FStStrNoPop var_224
  loc_B0F84D: LitStr ", '"
  loc_B0F850: ConcatStr
  loc_B0F851: FStStrNoPop var_228
  loc_B0F854: ImpAdLdI4 MemVar_C3D03C
  loc_B0F857: ConcatStr
  loc_B0F858: FStStrNoPop var_22C
  loc_B0F85B: LitStr "'); "
  loc_B0F85E: ConcatStr
  loc_B0F85F: FStStr var_C8
  loc_B0F862: FFreeStr var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_210 = "": var_214 = "": var_218 = "": var_21C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_B0F8E5: FFreeVar var_EC = ""
  loc_B0F8EC: LitStr "SELECT *"
  loc_B0F8EF: LitStr " FROM invepatrimonial"
  loc_B0F8F2: ConcatStr
  loc_B0F8F3: FStStrNoPop var_110
  loc_B0F8F6: LitStr " WHERE PeriInfo = "
  loc_B0F8F9: ConcatStr
  loc_B0F8FA: FStStrNoPop var_114
  loc_B0F8FD: ImpAdLdI2 MemVar_C3D064
  loc_B0F900: CStrUI1
  loc_B0F902: FStStrNoPop var_118
  loc_B0F905: ConcatStr
  loc_B0F906: FStStrNoPop var_11C
  loc_B0F909: LitStr " AND IdImpu = "
  loc_B0F90C: ConcatStr
  loc_B0F90D: FStStrNoPop var_120
  loc_B0F910: ILdRf IdImpu
  loc_B0F913: CStrI4
  loc_B0F915: FStStrNoPop var_124
  loc_B0F918: ConcatStr
  loc_B0F919: FStStrNoPop var_128
  loc_B0F91C: LitStr ";"
  loc_B0F91F: ConcatStr
  loc_B0F920: FStStrNoPop var_12C
  loc_B0F923: Call EjecutarRsCls(from_stack_1v)
  loc_B0F928: FFreeStr var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_B0F93B: FLdRfVar var_230
  loc_B0F93E: FLdPr Me
  loc_B0F941: MemLdPr global_56
  loc_B0F944:  = Me.RecordCount
  loc_B0F949: ILdRf var_230
  loc_B0F94C: LitI4 0
  loc_B0F951: GtI4
  loc_B0F952: BranchF loc_B0FB72
  loc_B0F955: FLdRfVar var_EC
  loc_B0F958: FLdRfVar var_238
  loc_B0F95B: LitVarStr var_DC, "CodiInpa"
  loc_B0F960: PopAdLdVar
  loc_B0F961: FLdRfVar var_234
  loc_B0F964: FLdPr Me
  loc_B0F967: MemLdPr global_56
  loc_B0F96A:  = Me.Fields
  loc_B0F96F: FLdPr var_234
  loc_B0F972: from_stack_2 = Me.Item(from_stack_1)
  loc_B0F977: FLdPr var_238
  loc_B0F97A:  = Me.Value
  loc_B0F97F: FLdRfVar var_EC
  loc_B0F982: FnCLngVar
  loc_B0F984: LitI4 0
  loc_B0F989: EqI4
  loc_B0F98A: FFreeAd var_234 = ""
  loc_B0F991: FFree1Var var_EC = ""
  loc_B0F994: BranchF loc_B0FB72
  loc_B0F997: ILdRf var_C8
  loc_B0F99A: LitStr "INSERT INTO invepatrimonial (IdInpa,CodiInpa,DetaInpa,CaraInpa,ObseInpa,FechInpa,PeriInfo,CodiInsu,CantInpa,ImunInpa,ImpoInpa,CodiCuco,IdImpu,FegaInpa,ExorImpu,ExpeImpu,MarcInpa,IdUbfi,PeusInpa,CodiAlbius,AltaUsua)"
  loc_B0F99D: ConcatStr
  loc_B0F99E: FStStrNoPop var_110
  loc_B0F9A1: LitStr " SELECT (SELECT Max(IdInpa)+1 IdInpa FROM invepatrimonial) IdInpa,0,'"
  loc_B0F9A4: ConcatStr
  loc_B0F9A5: FStStrNoPop var_114
  loc_B0F9A8: ILdRf var_A8
  loc_B0F9AB: ConcatStr
  loc_B0F9AC: FStStrNoPop var_118
  loc_B0F9AF: LitStr "','','',"
  loc_B0F9B2: ConcatStr
  loc_B0F9B3: FStStrNoPop var_11C
  loc_B0F9B6: LitI4 1
  loc_B0F9BB: LitI4 1
  loc_B0F9C0: LitVarStr var_FC, "'yyyy-mm-dd'"
  loc_B0F9C5: FStVarCopyObj var_EC
  loc_B0F9C8: FLdRfVar var_EC
  loc_B0F9CB: FLdRfVar var_98
  loc_B0F9CE: CVarRef
  loc_B0F9D3: ImpAdCallI2 Format$(, )
  loc_B0F9D8: FStStrNoPop var_120
  loc_B0F9DB: ConcatStr
  loc_B0F9DC: FStStrNoPop var_124
  loc_B0F9DF: LitStr ","
  loc_B0F9E2: ConcatStr
  loc_B0F9E3: FStStrNoPop var_128
  loc_B0F9E6: FLdI2 var_CA
  loc_B0F9E9: CStrUI1
  loc_B0F9EB: FStStrNoPop var_12C
  loc_B0F9EE: ConcatStr
  loc_B0F9EF: FStStrNoPop var_130
  loc_B0F9F2: LitStr ","
  loc_B0F9F5: ConcatStr
  loc_B0F9F6: FStStrNoPop var_134
  loc_B0F9F9: ILdRf CodiInsu
  loc_B0F9FC: CStrI4
  loc_B0F9FE: FStStrNoPop var_138
  loc_B0FA01: ConcatStr
  loc_B0FA02: FStStrNoPop var_13C
  loc_B0FA05: LitStr ","
  loc_B0FA08: ConcatStr
  loc_B0FA09: FStStrNoPop var_144
  loc_B0FA0C: LitI4 0
  loc_B0FA11: LitI4 -1
  loc_B0FA16: LitI4 1
  loc_B0FA1B: LitStr "."
  loc_B0FA1E: LitStr ","
  loc_B0FA21: FLdFPR8 CantImpu
  loc_B0FA24: CStrR8
  loc_B0FA26: FStStrNoPop var_140
  loc_B0FA29: ImpAdCallI2 Replace(, , , , , )
  loc_B0FA2E: FStStrNoPop var_148
  loc_B0FA31: ConcatStr
  loc_B0FA32: FStStrNoPop var_14C
  loc_B0FA35: LitStr ","
  loc_B0FA38: ConcatStr
  loc_B0FA39: FStStrNoPop var_154
  loc_B0FA3C: LitI4 0
  loc_B0FA41: LitI4 -1
  loc_B0FA46: LitI4 1
  loc_B0FA4B: LitStr "."
  loc_B0FA4E: LitStr ","
  loc_B0FA51: FLdFPR8 ImpoImpu
  loc_B0FA54: CStrR8
  loc_B0FA56: FStStrNoPop var_150
  loc_B0FA59: ImpAdCallI2 Replace(, , , , , )
  loc_B0FA5E: FStStrNoPop var_158
  loc_B0FA61: ConcatStr
  loc_B0FA62: FStStrNoPop var_15C
  loc_B0FA65: LitStr ","
  loc_B0FA68: ConcatStr
  loc_B0FA69: FStStrNoPop var_164
  loc_B0FA6C: LitI4 0
  loc_B0FA71: LitI4 -1
  loc_B0FA76: LitI4 1
  loc_B0FA7B: LitStr "."
  loc_B0FA7E: LitStr ","
  loc_B0FA81: FLdFPR8 DesafectarDevengado4
  loc_B0FA84: CStrR8
  loc_B0FA86: FStStrNoPop var_160
  loc_B0FA89: ImpAdCallI2 Replace(, , , , , )
  loc_B0FA8E: FStStrNoPop var_168
  loc_B0FA91: ConcatStr
  loc_B0FA92: FStStrNoPop var_16C
  loc_B0FA95: LitStr ",'',"
  loc_B0FA98: ConcatStr
  loc_B0FA99: FStStrNoPop var_170
  loc_B0FA9C: ILdRf IdImpu
  loc_B0FA9F: CStrI4
  loc_B0FAA1: FStStrNoPop var_174
  loc_B0FAA4: ConcatStr
  loc_B0FAA5: FStStrNoPop var_178
  loc_B0FAA8: LitStr ",NULL,'"
  loc_B0FAAB: ConcatStr
  loc_B0FAAC: FStStrNoPop var_17C
  loc_B0FAAF: ILdRf var_A0
  loc_B0FAB2: ImpAdCallI2 Trim$()
  loc_B0FAB7: FStStrNoPop var_180
  loc_B0FABA: ConcatStr
  loc_B0FABB: FStStrNoPop var_184
  loc_B0FABE: LitStr "','"
  loc_B0FAC1: ConcatStr
  loc_B0FAC2: FStStrNoPop var_188
  loc_B0FAC5: ILdRf var_A4
  loc_B0FAC8: ConcatStr
  loc_B0FAC9: FStStrNoPop var_18C
  loc_B0FACC: LitStr "',0,0,0,2,'"
  loc_B0FACF: ConcatStr
  loc_B0FAD0: FStStrNoPop var_190
  loc_B0FAD3: ImpAdLdI4 MemVar_C3D03C
  loc_B0FAD6: ConcatStr
  loc_B0FAD7: FStStrNoPop var_194
  loc_B0FADA: LitStr "'"
  loc_B0FADD: ConcatStr
  loc_B0FADE: FStStrNoPop var_198
  loc_B0FAE1: LitStr " FROM invepatrimonial"
  loc_B0FAE4: ConcatStr
  loc_B0FAE5: FStStrNoPop var_19C
  loc_B0FAE8: LitStr " WHERE PeriInfo = "
  loc_B0FAEB: ConcatStr
  loc_B0FAEC: FStStrNoPop var_1A0
  loc_B0FAEF: ImpAdLdI2 MemVar_C3D064
  loc_B0FAF2: CStrUI1
  loc_B0FAF4: FStStrNoPop var_1A4
  loc_B0FAF7: ConcatStr
  loc_B0FAF8: FStStrNoPop var_1A8
  loc_B0FAFB: LitStr " AND IdImpu = "
  loc_B0FAFE: ConcatStr
  loc_B0FAFF: FStStrNoPop var_1AC
  loc_B0FB02: ILdRf IdImpu
  loc_B0FB05: CStrI4
  loc_B0FB07: FStStrNoPop var_1B0
  loc_B0FB0A: ConcatStr
  loc_B0FB0B: FStStrNoPop var_1B4
  loc_B0FB0E: LitStr " LIMIT 1;"
  loc_B0FB11: ConcatStr
  loc_B0FB12: FStStr var_C8
  loc_B0FB15: FFreeStr var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_B0FB6C: FFree1Var var_EC = ""
  loc_B0FB6F: Branch loc_B0FB72
  loc_B0FB72: ILdRf var_C8
  loc_B0FB75: LitStr "INSERT INTO devengado (PeriInfo, IdImpu, CodiCuco)"
  loc_B0FB78: ConcatStr
  loc_B0FB79: FStStrNoPop var_110
  loc_B0FB7C: LitStr " VALUES ("
  loc_B0FB7F: ConcatStr
  loc_B0FB80: FStStrNoPop var_114
  loc_B0FB83: FLdI2 var_CA
  loc_B0FB86: CStrUI1
  loc_B0FB88: FStStrNoPop var_118
  loc_B0FB8B: ConcatStr
  loc_B0FB8C: FStStrNoPop var_11C
  loc_B0FB8F: LitStr ", @idimpu, '"
  loc_B0FB92: ConcatStr
  loc_B0FB93: FStStrNoPop var_120
  loc_B0FB96: ILdRf var_C4
  loc_B0FB99: ConcatStr
  loc_B0FB9A: FStStrNoPop var_124
  loc_B0FB9D: LitStr "');"
  loc_B0FBA0: ConcatStr
  loc_B0FBA1: FStStr var_C8
  loc_B0FBA4: FFreeStr var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_B0FBB3: ILdRf var_B0
  loc_B0FBB6: CR8Str
  loc_B0FBB8: LitI2_Byte 0
  loc_B0FBBA: CR8I2
  loc_B0FBBB: GtR4
  loc_B0FBBC: BranchF loc_B0FC61
  loc_B0FBBF: ILdRf var_C8
  loc_B0FBC2: LitStr "UPDATE ("
  loc_B0FBC5: ConcatStr
  loc_B0FBC6: FStStrNoPop var_110
  loc_B0FBC9: LitStr " SELECT PeriInfo, CodiOrco, Item, Altern, CodiRece, SUM(DeveImpu) sumDeveImpu"
  loc_B0FBCC: ConcatStr
  loc_B0FBCD: FStStrNoPop var_114
  loc_B0FBD0: LitStr " FROM imputacion"
  loc_B0FBD3: ConcatStr
  loc_B0FBD4: FStStrNoPop var_118
  loc_B0FBD7: LitStr " WHERE PeriInfo = "
  loc_B0FBDA: ConcatStr
  loc_B0FBDB: FStStrNoPop var_11C
  loc_B0FBDE: FLdI2 var_CA
  loc_B0FBE1: CStrUI1
  loc_B0FBE3: FStStrNoPop var_120
  loc_B0FBE6: ConcatStr
  loc_B0FBE7: FStStrNoPop var_124
  loc_B0FBEA: LitStr " AND CodiOrco = "
  loc_B0FBED: ConcatStr
  loc_B0FBEE: FStStrNoPop var_128
  loc_B0FBF1: ILdRf var_B0
  loc_B0FBF4: ConcatStr
  loc_B0FBF5: FStStrNoPop var_12C
  loc_B0FBF8: LitStr " AND Item = "
  loc_B0FBFB: ConcatStr
  loc_B0FBFC: FStStrNoPop var_130
  loc_B0FBFF: ILdRf var_B4
  loc_B0FC02: ConcatStr
  loc_B0FC03: FStStrNoPop var_134
  loc_B0FC06: LitStr " AND Altern = "
  loc_B0FC09: ConcatStr
  loc_B0FC0A: FStStrNoPop var_138
  loc_B0FC0D: ILdRf var_B8
  loc_B0FC10: ConcatStr
  loc_B0FC11: FStStrNoPop var_13C
  loc_B0FC14: LitStr " AND CodiRece = "
  loc_B0FC17: ConcatStr
  loc_B0FC18: FStStrNoPop var_140
  loc_B0FC1B: FLdI2 arg_58
  loc_B0FC1E: CStrUI1
  loc_B0FC20: FStStrNoPop var_144
  loc_B0FC23: ConcatStr
  loc_B0FC24: FStStrNoPop var_148
  loc_B0FC27: LitStr " ) AS tbl"
  loc_B0FC2A: ConcatStr
  loc_B0FC2B: FStStrNoPop var_14C
  loc_B0FC2E: LitStr " INNER JOIN itemrecepcion itr ON itr.PeriInfo = tbl.PeriInfo AND itr.CodiOrco = tbl.CodiOrco AND itr.CodiItco = tbl.Item AND itr.AlteItco = tbl.Altern AND itr.CodiRece = tbl.CodiRece"
  loc_B0FC31: ConcatStr
  loc_B0FC32: FStStrNoPop var_150
  loc_B0FC35: LitStr " SET itr.IdImpu= IF(sumDeveImpu=0,0,itr.IdImpu);"
  loc_B0FC38: ConcatStr
  loc_B0FC39: FStStr var_C8
  loc_B0FC3C: FFreeStr var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_B0FC61: OnErrorGoto loc_B0FC90
  loc_B0FC64: ILdRf var_C8
  loc_B0FC67: Call EjecutarRsCls(from_stack_1v)
  loc_B0FC6C: LitI4 1
  loc_B0FC71: FStR4 var_88
  loc_B0FC74: FLdI2 arg_78
  loc_B0FC77: BranchF loc_B0FC8A
  loc_B0FC7A: LitI2_Byte 0
  loc_B0FC7C: PopTmpLdAd2 var_23A
  loc_B0FC7F: ILdRf var_88
  loc_B0FC82: FLdI2 var_CA
  loc_B0FC85: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B0FC8A: ExitProcCbHresult
  loc_B0FC90: LitI4 0
  loc_B0FC95: FStR4 var_88
  loc_B0FC98: ExitProcCbHresult
End Function

Public Function DesafectarDevengadoTransfer(CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, FefaDeve, ExorImpu, ExpeImpu, CantImpu, ImunImpu, ImpoImpu, DetaImpu, CodiOrco, CodiRece, CodiItco, AlteItco, CucuPers) 'A8AB88
  'Data Table: 4AFD00
  loc_A8A814: ILdRf CodiPart
  loc_A8A817: FStStrCopy var_8C
  loc_A8A81A: ILdRf CodiOrga
  loc_A8A81D: FStStrCopy var_90
  loc_A8A820: ILdRf CodiFifu
  loc_A8A823: FStStrCopy DesafectarDevengadoTransfer
  loc_A8A826: ILdRf FechImpu
  loc_A8A829: FStStrCopy var_98
  loc_A8A82C: ILdRf FefaDeve
  loc_A8A82F: FStStrCopy var_9C
  loc_A8A832: ILdRf ExorImpu
  loc_A8A835: FStStrCopy var_A0
  loc_A8A838: ILdRf ExpeImpu
  loc_A8A83B: FStStrCopy var_A4
  loc_A8A83E: ILdRf DesafectarDevengadoTransfer8
  loc_A8A841: FStStrCopy var_A8
  loc_A8A844: ILdRf DesafectarDevengadoTransferC
  loc_A8A847: FStStrCopy var_AC
  loc_A8A84A: ILdRf arg_54
  loc_A8A84D: FStStrCopy var_B0
  loc_A8A850: ILdRf arg_58
  loc_A8A853: FStStrCopy var_B4
  loc_A8A856: ILdRf arg_5C
  loc_A8A859: FStStrCopy var_B8
  loc_A8A85C: ILdRf arg_60
  loc_A8A85F: FStStrCopy var_BC
  loc_A8A862: ILdRf arg_70
  loc_A8A865: FStStrCopy var_C0
  loc_A8A868: ILdRf var_AC
  loc_A8A86B: LitStr vbNullString
  loc_A8A86E: EqStr
  loc_A8A870: BranchF loc_A8A879
  loc_A8A873: LitStr "0"
  loc_A8A876: FStStrCopy var_AC
  loc_A8A879: ILdRf var_B0
  loc_A8A87C: LitStr vbNullString
  loc_A8A87F: EqStr
  loc_A8A881: BranchF loc_A8A88A
  loc_A8A884: LitStr "0"
  loc_A8A887: FStStrCopy var_B0
  loc_A8A88A: ILdRf var_B4
  loc_A8A88D: LitStr vbNullString
  loc_A8A890: EqStr
  loc_A8A892: BranchF loc_A8A89B
  loc_A8A895: LitStr "0"
  loc_A8A898: FStStrCopy var_B4
  loc_A8A89B: FLdFPR8 ImpoImpu
  loc_A8A89E: LitI2_Byte &HFF
  loc_A8A8A0: CR8I2
  loc_A8A8A1: MulR8
  loc_A8A8A2: FStFPR8 ImpoImpu
  loc_A8A8A5: FLdFPR8 DesafectarDevengadoTransfer0
  loc_A8A8A8: LitI2_Byte &HFF
  loc_A8A8AA: CR8I2
  loc_A8A8AB: MulR8
  loc_A8A8AC: FStFPR8 DesafectarDevengadoTransfer0
  loc_A8A8AF: FLdI2 arg_74
  loc_A8A8B2: BranchF loc_A8A8C1
  loc_A8A8B5: ImpAdLdI2 MemVar_C3D064
  loc_A8A8B8: LitI2_Byte 1
  loc_A8A8BA: AddI2
  loc_A8A8BB: FStI2 var_C6
  loc_A8A8BE: Branch loc_A8A8C7
  loc_A8A8C1: ImpAdLdI2 MemVar_C3D064
  loc_A8A8C4: FStI2 var_C6
  loc_A8A8C7: FLdRfVar var_98
  loc_A8A8CA: CVarRef
  loc_A8A8CF: FLdRfVar var_EC
  loc_A8A8D2: ImpAdCallFPR4  = Year()
  loc_A8A8D7: FLdRfVar var_EC
  loc_A8A8DA: FLdI2 var_C6
  loc_A8A8DD: CVarI2 var_FC
  loc_A8A8E0: HardType
  loc_A8A8E1: NeVarBool
  loc_A8A8E3: FFree1Var var_EC = ""
  loc_A8A8E6: BranchF loc_A8A8EF
  loc_A8A8E9: ExitProcCbHresult
  loc_A8A8EF: ILdRf var_A0
  loc_A8A8F2: ImpAdCallI2 Trim$()
  loc_A8A8F7: FStStr var_A0
  loc_A8A8FA: ILdRf var_A4
  loc_A8A8FD: ImpAdCallI2 Trim$()
  loc_A8A902: FStStr var_A4
  loc_A8A905: OnErrorGoto loc_A8AB7A
  loc_A8A908: LitStr "INSERT INTO imputacion (PeriInfo,IdImpu,CodiPart,CodiOrga,CodiUnga,CodiInsu,CodiFifu,FechImpu,ExorImpu,ExpeImpu,CantImpu,ImunImpu,DeveImpu,DetaImpu,CucuPers,AjusImpu,AltaUsua)"
  loc_A8A90B: LitStr " VALUES ("
  loc_A8A90E: ConcatStr
  loc_A8A90F: FStStrNoPop var_110
  loc_A8A912: FLdI2 var_C6
  loc_A8A915: CStrUI1
  loc_A8A917: FStStrNoPop var_114
  loc_A8A91A: ConcatStr
  loc_A8A91B: FStStrNoPop var_118
  loc_A8A91E: LitStr ",(SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_A8A921: ConcatStr
  loc_A8A922: FStStrNoPop var_11C
  loc_A8A925: FLdI2 var_C6
  loc_A8A928: CStrUI1
  loc_A8A92A: FStStrNoPop var_120
  loc_A8A92D: ConcatStr
  loc_A8A92E: FStStrNoPop var_124
  loc_A8A931: LitStr " LIMIT 1),'"
  loc_A8A934: ConcatStr
  loc_A8A935: FStStrNoPop var_128
  loc_A8A938: ILdRf var_8C
  loc_A8A93B: ConcatStr
  loc_A8A93C: FStStrNoPop var_12C
  loc_A8A93F: LitStr "','"
  loc_A8A942: ConcatStr
  loc_A8A943: FStStrNoPop var_130
  loc_A8A946: ILdRf var_90
  loc_A8A949: ConcatStr
  loc_A8A94A: FStStrNoPop var_134
  loc_A8A94D: LitStr "',"
  loc_A8A950: ConcatStr
  loc_A8A951: FStStrNoPop var_138
  loc_A8A954: FLdI2 CodiUnga
  loc_A8A957: CStrUI1
  loc_A8A959: FStStrNoPop var_13C
  loc_A8A95C: ConcatStr
  loc_A8A95D: FStStrNoPop var_140
  loc_A8A960: LitStr ","
  loc_A8A963: ConcatStr
  loc_A8A964: FStStrNoPop var_144
  loc_A8A967: ILdRf CodiInsu
  loc_A8A96A: CStrI4
  loc_A8A96C: FStStrNoPop var_148
  loc_A8A96F: ConcatStr
  loc_A8A970: FStStrNoPop var_14C
  loc_A8A973: LitStr ",'"
  loc_A8A976: ConcatStr
  loc_A8A977: FStStrNoPop var_150
  loc_A8A97A: ILdRf DesafectarDevengadoTransfer
  loc_A8A97D: ConcatStr
  loc_A8A97E: FStStrNoPop var_154
  loc_A8A981: LitStr "',"
  loc_A8A984: ConcatStr
  loc_A8A985: FStStrNoPop var_158
  loc_A8A988: LitI4 1
  loc_A8A98D: LitI4 1
  loc_A8A992: LitVarStr var_FC, "'yyyy-mm-dd'"
  loc_A8A997: FStVarCopyObj var_EC
  loc_A8A99A: FLdRfVar var_EC
  loc_A8A99D: FLdRfVar var_98
  loc_A8A9A0: CVarRef
  loc_A8A9A5: ImpAdCallI2 Format$(, )
  loc_A8A9AA: FStStrNoPop var_15C
  loc_A8A9AD: ConcatStr
  loc_A8A9AE: FStStrNoPop var_160
  loc_A8A9B1: LitStr ",'"
  loc_A8A9B4: ConcatStr
  loc_A8A9B5: FStStrNoPop var_164
  loc_A8A9B8: ILdRf var_A0
  loc_A8A9BB: ImpAdCallI2 Trim$()
  loc_A8A9C0: FStStrNoPop var_168
  loc_A8A9C3: ConcatStr
  loc_A8A9C4: FStStrNoPop var_16C
  loc_A8A9C7: LitStr "','"
  loc_A8A9CA: ConcatStr
  loc_A8A9CB: FStStrNoPop var_170
  loc_A8A9CE: ILdRf var_A4
  loc_A8A9D1: ConcatStr
  loc_A8A9D2: FStStrNoPop var_174
  loc_A8A9D5: LitStr "',"
  loc_A8A9D8: ConcatStr
  loc_A8A9D9: FStStrNoPop var_17C
  loc_A8A9DC: LitI4 0
  loc_A8A9E1: LitI4 -1
  loc_A8A9E6: LitI4 1
  loc_A8A9EB: LitStr "."
  loc_A8A9EE: LitStr ","
  loc_A8A9F1: FLdFPR8 CantImpu
  loc_A8A9F4: CStrR8
  loc_A8A9F6: FStStrNoPop var_178
  loc_A8A9F9: ImpAdCallI2 Replace(, , , , , )
  loc_A8A9FE: FStStrNoPop var_180
  loc_A8AA01: ConcatStr
  loc_A8AA02: FStStrNoPop var_184
  loc_A8AA05: LitStr ","
  loc_A8AA08: ConcatStr
  loc_A8AA09: FStStrNoPop var_18C
  loc_A8AA0C: LitI4 0
  loc_A8AA11: LitI4 -1
  loc_A8AA16: LitI4 1
  loc_A8AA1B: LitStr "."
  loc_A8AA1E: LitStr ","
  loc_A8AA21: FLdFPR8 ImpoImpu
  loc_A8AA24: CStrR8
  loc_A8AA26: FStStrNoPop var_188
  loc_A8AA29: ImpAdCallI2 Replace(, , , , , )
  loc_A8AA2E: FStStrNoPop var_190
  loc_A8AA31: ConcatStr
  loc_A8AA32: FStStrNoPop var_194
  loc_A8AA35: LitStr ","
  loc_A8AA38: ConcatStr
  loc_A8AA39: FStStrNoPop var_19C
  loc_A8AA3C: LitI4 0
  loc_A8AA41: LitI4 -1
  loc_A8AA46: LitI4 1
  loc_A8AA4B: LitStr "."
  loc_A8AA4E: LitStr ","
  loc_A8AA51: FLdFPR8 DesafectarDevengadoTransfer0
  loc_A8AA54: CStrR8
  loc_A8AA56: FStStrNoPop var_198
  loc_A8AA59: ImpAdCallI2 Replace(, , , , , )
  loc_A8AA5E: FStStrNoPop var_1A0
  loc_A8AA61: ConcatStr
  loc_A8AA62: FStStrNoPop var_1A4
  loc_A8AA65: LitStr ",'"
  loc_A8AA68: ConcatStr
  loc_A8AA69: FStStrNoPop var_1A8
  loc_A8AA6C: ILdRf var_A8
  loc_A8AA6F: ConcatStr
  loc_A8AA70: FStStrNoPop var_1AC
  loc_A8AA73: LitStr "',"
  loc_A8AA76: ConcatStr
  loc_A8AA77: FStStrNoPop var_1B0
  loc_A8AA7A: ILdRf var_B8
  loc_A8AA7D: ConcatStr
  loc_A8AA7E: FStStrNoPop var_1B4
  loc_A8AA81: LitStr ","
  loc_A8AA84: ConcatStr
  loc_A8AA85: FStStrNoPop var_1B8
  loc_A8AA88: ILdRf arg_6C
  loc_A8AA8B: CStrI4
  loc_A8AA8D: FStStrNoPop var_1BC
  loc_A8AA90: ConcatStr
  loc_A8AA91: FStStrNoPop var_1C0
  loc_A8AA94: LitStr ",'"
  loc_A8AA97: ConcatStr
  loc_A8AA98: FStStrNoPop var_1C4
  loc_A8AA9B: ImpAdLdI4 MemVar_C3D03C
  loc_A8AA9E: ConcatStr
  loc_A8AA9F: FStStrNoPop var_1C8
  loc_A8AAA2: LitStr "');"
  loc_A8AAA5: ConcatStr
  loc_A8AAA6: FStStr var_C4
  loc_A8AAA9: FFreeStr var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_A8AB0A: FFree1Var var_EC = ""
  loc_A8AB0D: ILdRf var_C4
  loc_A8AB10: LitStr "INSERT INTO devengado (PeriInfo,IdImpu,CodiCuco)"
  loc_A8AB13: ConcatStr
  loc_A8AB14: FStStrNoPop var_110
  loc_A8AB17: LitStr " VALUES ("
  loc_A8AB1A: ConcatStr
  loc_A8AB1B: FStStrNoPop var_114
  loc_A8AB1E: FLdI2 var_C6
  loc_A8AB21: CStrUI1
  loc_A8AB23: FStStrNoPop var_118
  loc_A8AB26: ConcatStr
  loc_A8AB27: FStStrNoPop var_11C
  loc_A8AB2A: LitStr ",@idimpu,'"
  loc_A8AB2D: ConcatStr
  loc_A8AB2E: FStStrNoPop var_120
  loc_A8AB31: ILdRf var_C0
  loc_A8AB34: ConcatStr
  loc_A8AB35: FStStrNoPop var_124
  loc_A8AB38: LitStr "');"
  loc_A8AB3B: ConcatStr
  loc_A8AB3C: FStStr var_C4
  loc_A8AB3F: FFreeStr var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_A8AB4E: ILdRf var_C4
  loc_A8AB51: Call EjecutarRsCls(from_stack_1v)
  loc_A8AB56: LitI4 1
  loc_A8AB5B: FStR4 var_88
  loc_A8AB5E: FLdI2 arg_78
  loc_A8AB61: BranchF loc_A8AB74
  loc_A8AB64: LitI2_Byte 0
  loc_A8AB66: PopTmpLdAd2 var_1CA
  loc_A8AB69: ILdRf var_88
  loc_A8AB6C: FLdI2 var_C6
  loc_A8AB6F: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A8AB74: ExitProcCbHresult
  loc_A8AB7A: LitI4 0
  loc_A8AB7F: FStR4 var_88
  loc_A8AB82: ExitProcCbHresult
End Function

Public Function ValidaModificarDevengado(PeriInfo, IdImpu, Cuenta) '9EE02C
  'Data Table: 4AFD00
  loc_9EDF14: ZeroRetVal
  loc_9EDF16: FLdI2 Cuenta
  loc_9EDF19: LitI2_Byte 1
  loc_9EDF1B: EqI2
  loc_9EDF1C: BranchF loc_9EE01D
  loc_9EDF1F: LitStr "SELECT * FROM imputacion WHERE PeriInfo = "
  loc_9EDF22: FLdI2 PeriInfo
  loc_9EDF25: CStrUI1
  loc_9EDF27: FStStrNoPop var_8C
  loc_9EDF2A: ConcatStr
  loc_9EDF2B: FStStrNoPop var_90
  loc_9EDF2E: LitStr " AND IdImpu = "
  loc_9EDF31: ConcatStr
  loc_9EDF32: FStStrNoPop ValidaModificarDevengado
  loc_9EDF35: ILdRf IdImpu
  loc_9EDF38: CStrI4
  loc_9EDF3A: FStStrNoPop var_98
  loc_9EDF3D: ConcatStr
  loc_9EDF3E: FStStrNoPop var_9C
  loc_9EDF41: LitStr ";"
  loc_9EDF44: ConcatStr
  loc_9EDF45: FStStrNoPop var_A0
  loc_9EDF48: Call EjecutarRsCls(from_stack_1v)
  loc_9EDF4D: FFreeStr var_8C = "": var_90 = "": ValidaModificarDevengado = "": var_98 = "": var_9C = ""
  loc_9EDF5C: FLdRfVar var_C8
  loc_9EDF5F: FLdRfVar var_B8
  loc_9EDF62: LitVarStr var_B4, "FechImpu"
  loc_9EDF67: PopAdLdVar
  loc_9EDF68: FLdRfVar var_A4
  loc_9EDF6B: FLdPr Me
  loc_9EDF6E: MemLdPr global_56
  loc_9EDF71:  = Me.Fields
  loc_9EDF76: FLdPr var_A4
  loc_9EDF79: from_stack_2 = Me.Item(from_stack_1)
  loc_9EDF7E: FLdPr var_B8
  loc_9EDF81:  = Me.Value
  loc_9EDF86: LitI2_Byte &HFF
  loc_9EDF88: PopTmpLdAd2 var_CE
  loc_9EDF8B: LitNothing
  loc_9EDF8D: CastAd
  loc_9EDF90: FStAdFunc var_CC
  loc_9EDF93: FLdRfVar var_CC
  loc_9EDF96: LitStr "01/01/2018"
  loc_9EDF99: LitI2_Byte &HFF
  loc_9EDF9B: LitI2_Byte &HFF
  loc_9EDF9D: FLdRfVar var_C8
  loc_9EDFA0: CStrVarTmp
  loc_9EDFA1: FStStrNoPop var_8C
  loc_9EDFA4: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9EDFA9: FStStr var_88
  loc_9EDFAC: FFree1Str var_8C
  loc_9EDFAF: FFreeAd var_A4 = "": var_B8 = ""
  loc_9EDFB8: FFree1Var var_C8 = ""
  loc_9EDFBB: ILdRf var_88
  loc_9EDFBE: LitStr vbNullString
  loc_9EDFC1: NeStr
  loc_9EDFC3: BranchF loc_9EDFCC
  loc_9EDFC6: ExitProcCbHresult
  loc_9EDFCC: FLdRfVar var_C8
  loc_9EDFCF: FLdRfVar var_B8
  loc_9EDFD2: LitVarStr var_B4, "CodiOrco"
  loc_9EDFD7: PopAdLdVar
  loc_9EDFD8: FLdRfVar var_A4
  loc_9EDFDB: FLdPr Me
  loc_9EDFDE: MemLdPr global_56
  loc_9EDFE1:  = Me.Fields
  loc_9EDFE6: FLdPr var_A4
  loc_9EDFE9: from_stack_2 = Me.Item(from_stack_1)
  loc_9EDFEE: FLdPr var_B8
  loc_9EDFF1:  = Me.Value
  loc_9EDFF6: FLdRfVar var_C8
  loc_9EDFF9: FnCLngVar
  loc_9EDFFB: LitI4 0
  loc_9EE000: GtI4
  loc_9EE001: FFreeAd var_A4 = ""
  loc_9EE008: FFree1Var var_C8 = ""
  loc_9EE00B: BranchF loc_9EE01A
  loc_9EE00E: LitStr "Advertencia: El Devengado está incluida en una Orden de Compra ..."
  loc_9EE011: FStStrCopy var_88
  loc_9EE014: ExitProcCbHresult
  loc_9EE01A: Branch loc_9EE023
  loc_9EE01D: LitStr "Opción en desarrollo ...."
  loc_9EE020: FStStrCopy var_88
  loc_9EE023: ExitProcCbHresult
  loc_9EE029: ImpAdLdFPR4 MemVar_4012D2
End Function

Public Sub ModificarDevengado(CodiUnga, ExpeImpu, FechImpu, FefaDeve, DetaImpu, NumeFact) 'A6B300
  'Data Table: 4AFD00
  loc_A6B008: ILdRf ExpeImpu
  loc_A6B00B: FStStrCopy var_88
  loc_A6B00E: ILdRf FechImpu
  loc_A6B011: FStStrCopy var_8C
  loc_A6B014: ILdRf FefaDeve
  loc_A6B017: FStStrCopy var_90
  loc_A6B01A: ILdRf DetaImpu
  loc_A6B01D: FStStrCopy var_94
  loc_A6B020: ILdRf NumeFact
  loc_A6B023: FStStrCopy var_98
  loc_A6B026: LitStr "UPDATE imputacion i"
  loc_A6B029: LitStr " LEFT JOIN invepatrimonial ip ON ip.PeriInfo = i.PeriInfo AND ip.IdImpu = i.IdImpu AND ip.CodiInpa = 0"
  loc_A6B02C: ConcatStr
  loc_A6B02D: FStStrNoPop var_9C
  loc_A6B030: LitStr " SET i.ExpeImpu='"
  loc_A6B033: ConcatStr
  loc_A6B034: FStStrNoPop var_A0
  loc_A6B037: ILdRf var_88
  loc_A6B03A: ConcatStr
  loc_A6B03B: FStStrNoPop var_A4
  loc_A6B03E: LitStr "', ip.ExpeImpu = '"
  loc_A6B041: ConcatStr
  loc_A6B042: FStStrNoPop var_A8
  loc_A6B045: ILdRf var_88
  loc_A6B048: ConcatStr
  loc_A6B049: FStStrNoPop var_AC
  loc_A6B04C: LitStr "', i.CodiUnga="
  loc_A6B04F: ConcatStr
  loc_A6B050: FStStrNoPop var_B0
  loc_A6B053: FLdI2 CodiUnga
  loc_A6B056: CStrUI1
  loc_A6B058: FStStrNoPop var_B4
  loc_A6B05B: ConcatStr
  loc_A6B05C: FStStrNoPop var_B8
  loc_A6B05F: LitStr ", i.FechImpu="
  loc_A6B062: ConcatStr
  loc_A6B063: FStStrNoPop var_EC
  loc_A6B066: LitI4 1
  loc_A6B06B: LitI4 1
  loc_A6B070: LitVarStr var_D8, "'yyyy-mm-dd'"
  loc_A6B075: FStVarCopyObj var_E8
  loc_A6B078: FLdRfVar var_E8
  loc_A6B07B: FLdRfVar var_8C
  loc_A6B07E: CVarRef
  loc_A6B083: ImpAdCallI2 Format$(, )
  loc_A6B088: FStStrNoPop var_F0
  loc_A6B08B: ConcatStr
  loc_A6B08C: FStStrNoPop var_F4
  loc_A6B08F: LitStr ", i.DetaImpu='"
  loc_A6B092: ConcatStr
  loc_A6B093: FStStrNoPop var_F8
  loc_A6B096: ILdRf var_94
  loc_A6B099: ConcatStr
  loc_A6B09A: FStStrNoPop var_FC
  loc_A6B09D: LitStr "', i.AltaUsua='"
  loc_A6B0A0: ConcatStr
  loc_A6B0A1: FStStrNoPop var_100
  loc_A6B0A4: ImpAdLdI4 MemVar_C3D03C
  loc_A6B0A7: ConcatStr
  loc_A6B0A8: FStStrNoPop var_104
  loc_A6B0AB: LitStr "'"
  loc_A6B0AE: ConcatStr
  loc_A6B0AF: FStStrNoPop var_108
  loc_A6B0B2: LitStr ", i.NumeFact='"
  loc_A6B0B5: ConcatStr
  loc_A6B0B6: FStStrNoPop var_10C
  loc_A6B0B9: ILdRf var_98
  loc_A6B0BC: ConcatStr
  loc_A6B0BD: FStStrNoPop var_110
  loc_A6B0C0: LitStr "', i.FefaDeve="
  loc_A6B0C3: ConcatStr
  loc_A6B0C4: FStStrNoPop var_144
  loc_A6B0C7: LitI4 1
  loc_A6B0CC: LitI4 1
  loc_A6B0D1: LitVarStr var_130, "'yyyy-mm-dd'"
  loc_A6B0D6: FStVarCopyObj var_140
  loc_A6B0D9: FLdRfVar var_140
  loc_A6B0DC: FLdRfVar var_90
  loc_A6B0DF: CVarRef
  loc_A6B0E4: ImpAdCallI2 Format$(, )
  loc_A6B0E9: FStStrNoPop var_148
  loc_A6B0EC: ConcatStr
  loc_A6B0ED: FStStrNoPop var_14C
  loc_A6B0F0: LitStr " WHERE i.PeriInfo = "
  loc_A6B0F3: ConcatStr
  loc_A6B0F4: CVarStr var_184
  loc_A6B0F7: FLdRfVar var_174
  loc_A6B0FA: FLdRfVar var_164
  loc_A6B0FD: LitVarStr var_160, "PeriInfo"
  loc_A6B102: PopAdLdVar
  loc_A6B103: FLdRfVar var_150
  loc_A6B106: FLdPr Me
  loc_A6B109: MemLdPr RsFrm
  loc_A6B10C:  = Me.Fields
  loc_A6B111: FLdPr var_150
  loc_A6B114: from_stack_2 = Me.Item(from_stack_1)
  loc_A6B119: FLdPr var_164
  loc_A6B11C:  = Me.Value
  loc_A6B121: FLdRfVar var_174
  loc_A6B124: ConcatVar var_194
  loc_A6B128: LitVarStr var_1A4, " AND i.IdImpu = "
  loc_A6B12D: ConcatVar var_1B4
  loc_A6B131: FLdRfVar var_1DC
  loc_A6B134: FLdRfVar var_1CC
  loc_A6B137: LitVarStr var_1C8, "IdImpu"
  loc_A6B13C: PopAdLdVar
  loc_A6B13D: FLdRfVar var_1B8
  loc_A6B140: FLdPr Me
  loc_A6B143: MemLdPr RsFrm
  loc_A6B146:  = Me.Fields
  loc_A6B14B: FLdPr var_1B8
  loc_A6B14E: from_stack_2 = Me.Item(from_stack_1)
  loc_A6B153: FLdPr var_1CC
  loc_A6B156:  = Me.Value
  loc_A6B15B: FLdRfVar var_1DC
  loc_A6B15E: ConcatVar var_1EC
  loc_A6B162: LitVarStr var_1FC, ";"
  loc_A6B167: ConcatVar var_20C
  loc_A6B16B: CStrVarVal var_210
  loc_A6B16F: Call EjecutarRsCls(from_stack_1v)
  loc_A6B174: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_A6B1A3: FFreeAd var_150 = "": var_164 = "": var_1B8 = ""
  loc_A6B1AE: FFreeVar var_E8 = "": var_140 = "": var_184 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1DC = "": var_1EC = ""
  loc_A6B1C3: LitStr "UPDATE bienconsumo bc"
  loc_A6B1C6: LitStr " SET bc.ExpeImpu = '"
  loc_A6B1C9: ConcatStr
  loc_A6B1CA: FStStrNoPop var_9C
  loc_A6B1CD: ILdRf var_88
  loc_A6B1D0: ConcatStr
  loc_A6B1D1: FStStrNoPop var_A0
  loc_A6B1D4: LitStr "'"
  loc_A6B1D7: ConcatStr
  loc_A6B1D8: FStStrNoPop var_A4
  loc_A6B1DB: LitStr " WHERE bc.PeriInfo = "
  loc_A6B1DE: ConcatStr
  loc_A6B1DF: CVarStr var_140
  loc_A6B1E2: FLdRfVar var_E8
  loc_A6B1E5: FLdRfVar var_164
  loc_A6B1E8: LitVarStr var_C8, "PeriInfo"
  loc_A6B1ED: PopAdLdVar
  loc_A6B1EE: FLdRfVar var_150
  loc_A6B1F1: FLdPr Me
  loc_A6B1F4: MemLdPr RsFrm
  loc_A6B1F7:  = Me.Fields
  loc_A6B1FC: FLdPr var_150
  loc_A6B1FF: from_stack_2 = Me.Item(from_stack_1)
  loc_A6B204: FLdPr var_164
  loc_A6B207:  = Me.Value
  loc_A6B20C: FLdRfVar var_E8
  loc_A6B20F: ConcatVar var_174
  loc_A6B213: LitVarStr var_D8, " AND bc.IdImpu = "
  loc_A6B218: ConcatVar var_184
  loc_A6B21C: FLdRfVar var_194
  loc_A6B21F: FLdRfVar var_1CC
  loc_A6B222: LitVarStr var_120, "IdImpu"
  loc_A6B227: PopAdLdVar
  loc_A6B228: FLdRfVar var_1B8
  loc_A6B22B: FLdPr Me
  loc_A6B22E: MemLdPr RsFrm
  loc_A6B231:  = Me.Fields
  loc_A6B236: FLdPr var_1B8
  loc_A6B239: from_stack_2 = Me.Item(from_stack_1)
  loc_A6B23E: FLdPr var_1CC
  loc_A6B241:  = Me.Value
  loc_A6B246: FLdRfVar var_194
  loc_A6B249: ConcatVar var_1B4
  loc_A6B24D: LitVarStr var_130, ";"
  loc_A6B252: ConcatVar var_1DC
  loc_A6B256: CStrVarVal var_A8
  loc_A6B25A: Call EjecutarRsCls(from_stack_1v)
  loc_A6B25F: FFreeStr var_9C = "": var_A0 = "": var_A4 = ""
  loc_A6B26A: FFreeAd var_150 = "": var_164 = "": var_1B8 = ""
  loc_A6B275: FFreeVar var_140 = "": var_E8 = "": var_174 = "": var_184 = "": var_194 = "": var_1B4 = ""
  loc_A6B286: FLdRfVar var_E8
  loc_A6B289: FLdRfVar var_164
  loc_A6B28C: LitVarStr var_C8, "PeriInfo"
  loc_A6B291: PopAdLdVar
  loc_A6B292: FLdRfVar var_150
  loc_A6B295: FLdPr Me
  loc_A6B298: MemLdPr RsFrm
  loc_A6B29B:  = Me.Fields
  loc_A6B2A0: FLdPr var_150
  loc_A6B2A3: from_stack_2 = Me.Item(from_stack_1)
  loc_A6B2A8: FLdPr var_164
  loc_A6B2AB:  = Me.Value
  loc_A6B2B0: FLdRfVar var_140
  loc_A6B2B3: FLdRfVar var_1CC
  loc_A6B2B6: LitVarStr var_D8, "IdImpu"
  loc_A6B2BB: PopAdLdVar
  loc_A6B2BC: FLdRfVar var_1B8
  loc_A6B2BF: FLdPr Me
  loc_A6B2C2: MemLdPr RsFrm
  loc_A6B2C5:  = Me.Fields
  loc_A6B2CA: FLdPr var_1B8
  loc_A6B2CD: from_stack_2 = Me.Item(from_stack_1)
  loc_A6B2D2: FLdPr var_1CC
  loc_A6B2D5:  = Me.Value
  loc_A6B2DA: LitI2_Byte 0
  loc_A6B2DC: PopTmpLdAd2 var_212
  loc_A6B2DF: FLdRfVar var_140
  loc_A6B2E2: CI4Var
  loc_A6B2E4: FLdRfVar var_E8
  loc_A6B2E7: CI2Var
  loc_A6B2E8: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A6B2ED: FFreeAd var_150 = "": var_1B8 = "": var_164 = ""
  loc_A6B2F8: FFreeVar var_E8 = ""
  loc_A6B2FF: ExitProcHresult
End Sub

Public Function ValidaEliminarDevengado(PeriInfo, IdImpu, Cuenta) 'A5F8DC
  'Data Table: 4AFD00
  loc_A5F5E8: ZeroRetVal
  loc_A5F5EA: FLdI2 Cuenta
  loc_A5F5ED: LitI2_Byte 1
  loc_A5F5EF: EqI2
  loc_A5F5F0: BranchF loc_A5F68D
  loc_A5F5F3: LitStr "SELECT FechImpu FROM imputacion WHERE PeriInfo = "
  loc_A5F5F6: FLdI2 PeriInfo
  loc_A5F5F9: CStrUI1
  loc_A5F5FB: FStStrNoPop var_8C
  loc_A5F5FE: ConcatStr
  loc_A5F5FF: FStStrNoPop var_90
  loc_A5F602: LitStr " AND IdImpu = "
  loc_A5F605: ConcatStr
  loc_A5F606: FStStrNoPop ValidaEliminarDevengado
  loc_A5F609: ILdRf IdImpu
  loc_A5F60C: CStrI4
  loc_A5F60E: FStStrNoPop var_98
  loc_A5F611: ConcatStr
  loc_A5F612: FStStrNoPop var_9C
  loc_A5F615: LitStr ";"
  loc_A5F618: ConcatStr
  loc_A5F619: FStStrNoPop var_A0
  loc_A5F61C: Call EjecutarRsCls(from_stack_1v)
  loc_A5F621: FFreeStr var_8C = "": var_90 = "": ValidaEliminarDevengado = "": var_98 = "": var_9C = ""
  loc_A5F630: ImpAdLdI2 MemVar_C3D064
  loc_A5F633: ImpAdCallFPR4 Proc_266_42_9CF288()
  loc_A5F638: FStFPR8 var_D0
  loc_A5F63B: FLdRfVar var_C8
  loc_A5F63E: FLdRfVar var_B8
  loc_A5F641: LitVarStr var_B4, "FechImpu"
  loc_A5F646: PopAdLdVar
  loc_A5F647: FLdRfVar var_A4
  loc_A5F64A: FLdPr Me
  loc_A5F64D: MemLdPr global_56
  loc_A5F650:  = Me.Fields
  loc_A5F655: FLdPr var_A4
  loc_A5F658: from_stack_2 = Me.Item(from_stack_1)
  loc_A5F65D: FLdPr var_B8
  loc_A5F660:  = Me.Value
  loc_A5F665: FLdRfVar var_C8
  loc_A5F668: FnCDateVar
  loc_A5F66A: FLdFPR8 var_D0
  loc_A5F66D: LeR8
  loc_A5F66E: FFreeAd var_A4 = ""
  loc_A5F675: FFree1Var var_C8 = ""
  loc_A5F678: BranchF loc_A5F68A
  loc_A5F67B: LitStr "El Devengado esta en un balance cerrado. Verifique ..."
  loc_A5F67E: FStStrCopy var_88
  loc_A5F681: ExitProcCbHresult
  loc_A5F687: Branch loc_A5F68A
  loc_A5F68A: Branch loc_A5F693
  loc_A5F68D: LitStr "No se permite eliminar el devengado ...."
  loc_A5F690: FStStrCopy var_88
  loc_A5F693: LitStr "SELECT * FROM invepatrimonial WHERE PeriInfo = "
  loc_A5F696: FLdI2 PeriInfo
  loc_A5F699: CStrUI1
  loc_A5F69B: FStStrNoPop var_8C
  loc_A5F69E: ConcatStr
  loc_A5F69F: FStStrNoPop var_90
  loc_A5F6A2: LitStr " AND IdImpu = "
  loc_A5F6A5: ConcatStr
  loc_A5F6A6: FStStrNoPop ValidaEliminarDevengado
  loc_A5F6A9: ILdRf IdImpu
  loc_A5F6AC: CStrI4
  loc_A5F6AE: FStStrNoPop var_98
  loc_A5F6B1: ConcatStr
  loc_A5F6B2: FStStrNoPop var_9C
  loc_A5F6B5: LitStr ";"
  loc_A5F6B8: ConcatStr
  loc_A5F6B9: FStStrNoPop var_A0
  loc_A5F6BC: Call EjecutarRsCls(from_stack_1v)
  loc_A5F6C1: FFreeStr var_8C = "": var_90 = "": ValidaEliminarDevengado = "": var_98 = "": var_9C = ""
  loc_A5F6D0: FLdRfVar var_D4
  loc_A5F6D3: FLdPr Me
  loc_A5F6D6: MemLdPr global_56
  loc_A5F6D9:  = Me.RecordCount
  loc_A5F6DE: ILdRf var_D4
  loc_A5F6E1: LitI4 0
  loc_A5F6E6: GtI4
  loc_A5F6E7: BranchF loc_A5F7C8
  loc_A5F6EA: FLdRfVar var_C8
  loc_A5F6ED: FLdRfVar var_B8
  loc_A5F6F0: LitVarStr var_B4, "CodiInpa"
  loc_A5F6F5: PopAdLdVar
  loc_A5F6F6: FLdRfVar var_A4
  loc_A5F6F9: FLdPr Me
  loc_A5F6FC: MemLdPr global_56
  loc_A5F6FF:  = Me.Fields
  loc_A5F704: FLdPr var_A4
  loc_A5F707: from_stack_2 = Me.Item(from_stack_1)
  loc_A5F70C: FLdPr var_B8
  loc_A5F70F:  = Me.Value
  loc_A5F714: FLdRfVar var_C8
  loc_A5F717: FnCLngVar
  loc_A5F719: LitI4 0
  loc_A5F71E: EqI4
  loc_A5F71F: FFreeAd var_A4 = ""
  loc_A5F726: FFree1Var var_C8 = ""
  loc_A5F729: BranchF loc_A5F73B
  loc_A5F72C: LitStr "El Devengado está en la >> Lista Temporal << y NO puede Eliminarse. Verifique..."
  loc_A5F72F: FStStrCopy var_88
  loc_A5F732: ExitProcCbHresult
  loc_A5F738: Branch loc_A5F7C8
  loc_A5F73B: FLdRfVar var_B8
  loc_A5F73E: LitVarStr var_B4, "FebaInpa"
  loc_A5F743: PopAdLdVar
  loc_A5F744: FLdRfVar var_A4
  loc_A5F747: FLdPr Me
  loc_A5F74A: MemLdPr global_56
  loc_A5F74D:  = Me.Fields
  loc_A5F752: FLdPr var_A4
  loc_A5F755: from_stack_2 = Me.Item(from_stack_1)
  loc_A5F75A: FLdZeroAd var_B8
  loc_A5F75D: CVarAd
  loc_A5F761: ImpAdCallI2 IsNull()
  loc_A5F766: FFree1Ad var_A4
  loc_A5F769: FFree1Var var_C8 = ""
  loc_A5F76C: BranchF loc_A5F7C8
  loc_A5F76F: LitVarStr var_E4, "El Devengado está incluido en el Bien Patrimonial definitivo "
  loc_A5F774: FLdRfVar var_C8
  loc_A5F777: FLdRfVar var_B8
  loc_A5F77A: LitVarStr var_B4, "CodiInpa"
  loc_A5F77F: PopAdLdVar
  loc_A5F780: FLdRfVar var_A4
  loc_A5F783: FLdPr Me
  loc_A5F786: MemLdPr global_56
  loc_A5F789:  = Me.Fields
  loc_A5F78E: FLdPr var_A4
  loc_A5F791: from_stack_2 = Me.Item(from_stack_1)
  loc_A5F796: FLdPr var_B8
  loc_A5F799:  = Me.Value
  loc_A5F79E: FLdRfVar var_C8
  loc_A5F7A1: ConcatVar var_F4
  loc_A5F7A5: LitVarStr var_104, " y NO puede Eliminarse. Verifique..."
  loc_A5F7AA: ConcatVar var_114
  loc_A5F7AE: CStrVarTmp
  loc_A5F7AF: FStStr var_88
  loc_A5F7B2: FFreeAd var_A4 = ""
  loc_A5F7B9: FFreeVar var_C8 = "": var_F4 = ""
  loc_A5F7C2: ExitProcCbHresult
  loc_A5F7C8: LitStr "SELECT i.*, ResiDeve "
  loc_A5F7CB: LitStr " FROM imputacion i"
  loc_A5F7CE: ConcatStr
  loc_A5F7CF: FStStrNoPop var_8C
  loc_A5F7D2: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_A5F7D5: ConcatStr
  loc_A5F7D6: FStStrNoPop var_90
  loc_A5F7D9: LitStr " WHERE i.PeriInfo = "
  loc_A5F7DC: ConcatStr
  loc_A5F7DD: FStStrNoPop ValidaEliminarDevengado
  loc_A5F7E0: FLdI2 PeriInfo
  loc_A5F7E3: CStrUI1
  loc_A5F7E5: FStStrNoPop var_98
  loc_A5F7E8: ConcatStr
  loc_A5F7E9: FStStrNoPop var_9C
  loc_A5F7EC: LitStr " AND i.IdImpu = "
  loc_A5F7EF: ConcatStr
  loc_A5F7F0: FStStrNoPop var_A0
  loc_A5F7F3: ILdRf IdImpu
  loc_A5F7F6: CStrI4
  loc_A5F7F8: FStStrNoPop var_118
  loc_A5F7FB: ConcatStr
  loc_A5F7FC: FStStrNoPop var_11C
  loc_A5F7FF: LitStr " AND DeveImpu != 0;"
  loc_A5F802: ConcatStr
  loc_A5F803: FStStrNoPop var_120
  loc_A5F806: Call EjecutarRsCls(from_stack_1v)
  loc_A5F80B: FFreeStr var_8C = "": var_90 = "": ValidaEliminarDevengado = "": var_98 = "": var_9C = "": var_A0 = "": var_118 = "": var_11C = ""
  loc_A5F820: FLdRfVar var_C8
  loc_A5F823: FLdRfVar var_B8
  loc_A5F826: LitVarStr var_B4, "CodiRece"
  loc_A5F82B: PopAdLdVar
  loc_A5F82C: FLdRfVar var_A4
  loc_A5F82F: FLdPr Me
  loc_A5F832: MemLdPr global_56
  loc_A5F835:  = Me.Fields
  loc_A5F83A: FLdPr var_A4
  loc_A5F83D: from_stack_2 = Me.Item(from_stack_1)
  loc_A5F842: FLdPr var_B8
  loc_A5F845:  = Me.Value
  loc_A5F84A: FLdRfVar var_C8
  loc_A5F84D: FnCLngVar
  loc_A5F84F: LitI4 0
  loc_A5F854: GtI4
  loc_A5F855: FFreeAd var_A4 = ""
  loc_A5F85C: FFree1Var var_C8 = ""
  loc_A5F85F: BranchF loc_A5F871
  loc_A5F862: LitStr "El Devengado está incluido en una Recepción y NO puede Eliminarse. Verifique..."
  loc_A5F865: FStStrCopy var_88
  loc_A5F868: ExitProcCbHresult
  loc_A5F86E: Branch loc_A5F8D3
  loc_A5F871: FLdRfVar var_C8
  loc_A5F874: FLdRfVar var_B8
  loc_A5F877: LitVarStr var_B4, "ResiDeve"
  loc_A5F87C: PopAdLdVar
  loc_A5F87D: FLdRfVar var_A4
  loc_A5F880: FLdPr Me
  loc_A5F883: MemLdPr global_56
  loc_A5F886:  = Me.Fields
  loc_A5F88B: FLdPr var_A4
  loc_A5F88E: from_stack_2 = Me.Item(from_stack_1)
  loc_A5F893: FLdPr var_B8
  loc_A5F896:  = Me.Value
  loc_A5F89B: FLdRfVar var_C8
  loc_A5F89E: LitVarStr var_E4, "1"
  loc_A5F8A3: HardType
  loc_A5F8A4: EqVarBool
  loc_A5F8A6: FFreeAd var_A4 = ""
  loc_A5F8AD: FFree1Var var_C8 = ""
  loc_A5F8B0: BranchF loc_A5F8D3
  loc_A5F8B3: LitStr "Municipalidad de Guaymallén"
  loc_A5F8B6: LitStr "Municipalidad de Maipú"
  loc_A5F8B9: EqStr
  loc_A5F8BB: BranchF loc_A5F8C7
  loc_A5F8BE: LitStr "El Devengado está pasado como Residuo Pasivo y NO puede Eliminarse. Verifique..."
  loc_A5F8C1: FStStrCopy var_88
  loc_A5F8C4: Branch loc_A5F8CD
  loc_A5F8C7: LitStr "El Devengado está pasado como Residuo Pasivo y NO puede Eliminarse. Verifique..."
  loc_A5F8CA: FStStrCopy var_88
  loc_A5F8CD: ExitProcCbHresult
  loc_A5F8D3: ExitProcCbHresult
End Function

Public Sub EliminarDevengado(PeriInfo, IdImpu) 'A19D9C
  'Data Table: 4AFD00
  loc_A19C18: ILdRf IdImpu
  loc_A19C1B: FStStrCopy var_88
  loc_A19C1E: LitStr "DELETE i, dv"
  loc_A19C21: LitStr " FROM imputacion i"
  loc_A19C24: ConcatStr
  loc_A19C25: FStStrNoPop var_8C
  loc_A19C28: LitStr " INNER JOIN devengado dv ON dv.PeriInfo = i.PeriInfo AND dv.IdImpu = i.IdImpu"
  loc_A19C2B: ConcatStr
  loc_A19C2C: FStStrNoPop var_90
  loc_A19C2F: LitStr " WHERE i.PeriInfo = "
  loc_A19C32: ConcatStr
  loc_A19C33: FStStrNoPop var_94
  loc_A19C36: FLdI2 PeriInfo
  loc_A19C39: CStrUI1
  loc_A19C3B: FStStrNoPop var_98
  loc_A19C3E: ConcatStr
  loc_A19C3F: FStStrNoPop var_9C
  loc_A19C42: LitStr " AND i.IdImpu = '"
  loc_A19C45: ConcatStr
  loc_A19C46: FStStrNoPop var_A0
  loc_A19C49: ILdRf var_88
  loc_A19C4C: ConcatStr
  loc_A19C4D: FStStrNoPop var_A4
  loc_A19C50: LitStr "';"
  loc_A19C53: ConcatStr
  loc_A19C54: FStStrNoPop var_A8
  loc_A19C57: Call EjecutarRsCls(from_stack_1v)
  loc_A19C5C: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A19C6F: LitStr "UPDATE itemrecepcion"
  loc_A19C72: LitStr " SET IdImpu = 0"
  loc_A19C75: ConcatStr
  loc_A19C76: FStStrNoPop var_8C
  loc_A19C79: LitStr " WHERE PeriInfo = "
  loc_A19C7C: ConcatStr
  loc_A19C7D: FStStrNoPop var_90
  loc_A19C80: FLdI2 PeriInfo
  loc_A19C83: CStrUI1
  loc_A19C85: FStStrNoPop var_94
  loc_A19C88: ConcatStr
  loc_A19C89: FStStrNoPop var_98
  loc_A19C8C: LitStr " AND IdImpu = "
  loc_A19C8F: ConcatStr
  loc_A19C90: FStStrNoPop var_9C
  loc_A19C93: ILdRf var_88
  loc_A19C96: ConcatStr
  loc_A19C97: FStStrNoPop var_A0
  loc_A19C9A: LitStr ";"
  loc_A19C9D: ConcatStr
  loc_A19C9E: FStStrNoPop var_A4
  loc_A19CA1: Call EjecutarRsCls(from_stack_1v)
  loc_A19CA6: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A19CB7: LitStr "UPDATE locadores"
  loc_A19CBA: LitStr " SET IdImpu = 0"
  loc_A19CBD: ConcatStr
  loc_A19CBE: FStStrNoPop var_8C
  loc_A19CC1: LitStr " WHERE PeriInfo = "
  loc_A19CC4: ConcatStr
  loc_A19CC5: FStStrNoPop var_90
  loc_A19CC8: FLdI2 PeriInfo
  loc_A19CCB: CStrUI1
  loc_A19CCD: FStStrNoPop var_94
  loc_A19CD0: ConcatStr
  loc_A19CD1: FStStrNoPop var_98
  loc_A19CD4: LitStr " AND IdImpu = "
  loc_A19CD7: ConcatStr
  loc_A19CD8: FStStrNoPop var_9C
  loc_A19CDB: ILdRf var_88
  loc_A19CDE: ConcatStr
  loc_A19CDF: FStStrNoPop var_A0
  loc_A19CE2: LitStr ";"
  loc_A19CE5: ConcatStr
  loc_A19CE6: FStStrNoPop var_A4
  loc_A19CE9: Call EjecutarRsCls(from_stack_1v)
  loc_A19CEE: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A19CFF: LitStr "DELETE FROM invepatrimonial"
  loc_A19D02: LitStr " WHERE PeriInfo = "
  loc_A19D05: ConcatStr
  loc_A19D06: FStStrNoPop var_8C
  loc_A19D09: FLdI2 PeriInfo
  loc_A19D0C: CStrUI1
  loc_A19D0E: FStStrNoPop var_90
  loc_A19D11: ConcatStr
  loc_A19D12: FStStrNoPop var_94
  loc_A19D15: LitStr " AND IdImpu = "
  loc_A19D18: ConcatStr
  loc_A19D19: FStStrNoPop var_98
  loc_A19D1C: ILdRf var_88
  loc_A19D1F: ConcatStr
  loc_A19D20: FStStrNoPop var_9C
  loc_A19D23: LitStr " AND CodiInpa = 0;"
  loc_A19D26: ConcatStr
  loc_A19D27: FStStrNoPop var_A0
  loc_A19D2A: Call EjecutarRsCls(from_stack_1v)
  loc_A19D2F: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A19D3E: FLdRfVar var_B0
  loc_A19D41: FLdPr Me
  loc_A19D44: MemLdPr RsFrm
  loc_A19D47:  = Me.AbsolutePosition
  loc_A19D4C: ILdRf var_B0
  loc_A19D4F: FStR4 var_AC
  loc_A19D52: Call Requery()
  loc_A19D57: FLdRfVar var_B0
  loc_A19D5A: FLdPr Me
  loc_A19D5D: MemLdPr RsFrm
  loc_A19D60:  = Me.RecordCount
  loc_A19D65: ILdRf var_B0
  loc_A19D68: LitI4 0
  loc_A19D6D: GtI4
  loc_A19D6E: BranchF loc_A19D9A
  loc_A19D71: Call MoveFirst()
  loc_A19D76: ILdRf var_AC
  loc_A19D79: LitI4 1
  loc_A19D7E: GtI4
  loc_A19D7F: BranchF loc_A19D9A
  loc_A19D82: LitVar_Missing var_C0
  loc_A19D85: PopAdLdVar
  loc_A19D86: ILdRf var_AC
  loc_A19D89: LitI4 2
  loc_A19D8E: SubI4
  loc_A19D8F: FLdPr Me
  loc_A19D92: MemLdPr RsFrm
  loc_A19D95: Me.Move from_stack_1, from_stack_2
  loc_A19D9A: ExitProcHresult
End Sub

Public Function AddNewPagado(IdImpu, FechImpu, PagaImpu, AjusImpu, EsEjercicioSiguiente, HaceRequery) 'A4E338
  'Data Table: 4AFD00
  loc_A4E0EC: ILdRf FechImpu
  loc_A4E0EF: FStStrCopy var_8C
  loc_A4E0F2: ILdRf PagaImpu
  loc_A4E0F5: FStStrCopy var_90
  loc_A4E0F8: FLdI2 EsEjercicioSiguiente
  loc_A4E0FB: BranchF loc_A4E10A
  loc_A4E0FE: ImpAdLdI2 MemVar_C3D064
  loc_A4E101: LitI2_Byte 1
  loc_A4E103: AddI2
  loc_A4E104: FStI2 var_92
  loc_A4E107: Branch loc_A4E110
  loc_A4E10A: ImpAdLdI2 MemVar_C3D064
  loc_A4E10D: FStI2 var_92
  loc_A4E110: OnErrorGoto loc_A4E327
  loc_A4E113: ILdRf var_90
  loc_A4E116: LitStr vbNullString
  loc_A4E119: EqStr
  loc_A4E11B: BranchF loc_A4E1F6
  loc_A4E11E: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, PagaImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_A4E121: LitStr " SELECT PeriInfo, (SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_A4E124: ConcatStr
  loc_A4E125: FStStrNoPop var_98
  loc_A4E128: FLdI2 var_92
  loc_A4E12B: CStrUI1
  loc_A4E12D: FStStrNoPop var_9C
  loc_A4E130: ConcatStr
  loc_A4E131: FStStrNoPop var_A0
  loc_A4E134: LitStr " LIMIT 1), CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_A4E137: ConcatStr
  loc_A4E138: FStStrNoPop var_D4
  loc_A4E13B: LitI4 1
  loc_A4E140: LitI4 1
  loc_A4E145: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_A4E14A: FStVarCopyObj var_D0
  loc_A4E14D: FLdRfVar var_D0
  loc_A4E150: FLdRfVar var_8C
  loc_A4E153: CVarRef
  loc_A4E158: ImpAdCallI2 Format$(, )
  loc_A4E15D: FStStrNoPop var_D8
  loc_A4E160: ConcatStr
  loc_A4E161: FStStrNoPop var_DC
  loc_A4E164: LitStr ", ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, MapaImpu, DetaImpu, CucuPers, "
  loc_A4E167: ConcatStr
  loc_A4E168: FStStrNoPop var_E0
  loc_A4E16B: ILdRf AjusImpu
  loc_A4E16E: CStrI4
  loc_A4E170: FStStrNoPop var_E4
  loc_A4E173: ConcatStr
  loc_A4E174: FStStrNoPop var_E8
  loc_A4E177: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_A4E17A: ConcatStr
  loc_A4E17B: FStStrNoPop var_EC
  loc_A4E17E: ImpAdLdI4 MemVar_C3D03C
  loc_A4E181: ConcatStr
  loc_A4E182: FStStrNoPop var_F0
  loc_A4E185: LitStr "'"
  loc_A4E188: ConcatStr
  loc_A4E189: FStStrNoPop var_F4
  loc_A4E18C: LitStr " FROM imputacion"
  loc_A4E18F: ConcatStr
  loc_A4E190: FStStrNoPop var_F8
  loc_A4E193: LitStr " WHERE PeriInfo = "
  loc_A4E196: ConcatStr
  loc_A4E197: FStStrNoPop var_FC
  loc_A4E19A: FLdI2 var_92
  loc_A4E19D: CStrUI1
  loc_A4E19F: FStStrNoPop var_100
  loc_A4E1A2: ConcatStr
  loc_A4E1A3: FStStrNoPop var_104
  loc_A4E1A6: LitStr " AND IdImpu = "
  loc_A4E1A9: ConcatStr
  loc_A4E1AA: FStStrNoPop var_108
  loc_A4E1AD: ILdRf IdImpu
  loc_A4E1B0: CStrI4
  loc_A4E1B2: FStStrNoPop var_10C
  loc_A4E1B5: ConcatStr
  loc_A4E1B6: FStStrNoPop var_110
  loc_A4E1B9: LitStr ";"
  loc_A4E1BC: ConcatStr
  loc_A4E1BD: FStStrNoPop var_114
  loc_A4E1C0: Call EjecutarRsCls(from_stack_1v)
  loc_A4E1C5: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_A4E1F0: FFree1Var var_D0 = ""
  loc_A4E1F3: Branch loc_A4E303
  loc_A4E1F6: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, PagaImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_A4E1F9: LitStr " SELECT PeriInfo, (SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_A4E1FC: ConcatStr
  loc_A4E1FD: FStStrNoPop var_98
  loc_A4E200: FLdI2 var_92
  loc_A4E203: CStrUI1
  loc_A4E205: FStStrNoPop var_9C
  loc_A4E208: ConcatStr
  loc_A4E209: FStStrNoPop var_A0
  loc_A4E20C: LitStr " LIMIT 1), CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_A4E20F: ConcatStr
  loc_A4E210: FStStrNoPop var_D4
  loc_A4E213: LitI4 1
  loc_A4E218: LitI4 1
  loc_A4E21D: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_A4E222: FStVarCopyObj var_D0
  loc_A4E225: FLdRfVar var_D0
  loc_A4E228: FLdRfVar var_8C
  loc_A4E22B: CVarRef
  loc_A4E230: ImpAdCallI2 Format$(, )
  loc_A4E235: FStStrNoPop var_D8
  loc_A4E238: ConcatStr
  loc_A4E239: FStStrNoPop var_DC
  loc_A4E23C: LitStr ", ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, 1 CantImpu, "
  loc_A4E23F: ConcatStr
  loc_A4E240: FStStrNoPop var_E0
  loc_A4E243: ILdRf var_90
  loc_A4E246: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A4E24B: FStStrNoPop var_E4
  loc_A4E24E: ConcatStr
  loc_A4E24F: FStStrNoPop var_E8
  loc_A4E252: LitStr " ImunImpu, "
  loc_A4E255: ConcatStr
  loc_A4E256: FStStrNoPop var_EC
  loc_A4E259: ILdRf var_90
  loc_A4E25C: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A4E261: FStStrNoPop var_F0
  loc_A4E264: ConcatStr
  loc_A4E265: FStStrNoPop var_F4
  loc_A4E268: LitStr " PagaImpu, DetaImpu, CucuPers, "
  loc_A4E26B: ConcatStr
  loc_A4E26C: FStStrNoPop var_F8
  loc_A4E26F: ILdRf AjusImpu
  loc_A4E272: CStrI4
  loc_A4E274: FStStrNoPop var_FC
  loc_A4E277: ConcatStr
  loc_A4E278: FStStrNoPop var_100
  loc_A4E27B: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_A4E27E: ConcatStr
  loc_A4E27F: FStStrNoPop var_104
  loc_A4E282: ImpAdLdI4 MemVar_C3D03C
  loc_A4E285: ConcatStr
  loc_A4E286: FStStrNoPop var_108
  loc_A4E289: LitStr "'"
  loc_A4E28C: ConcatStr
  loc_A4E28D: FStStrNoPop var_10C
  loc_A4E290: LitStr " FROM imputacion"
  loc_A4E293: ConcatStr
  loc_A4E294: FStStrNoPop var_110
  loc_A4E297: LitStr " WHERE PeriInfo = "
  loc_A4E29A: ConcatStr
  loc_A4E29B: FStStrNoPop var_114
  loc_A4E29E: FLdI2 var_92
  loc_A4E2A1: CStrUI1
  loc_A4E2A3: FStStrNoPop var_118
  loc_A4E2A6: ConcatStr
  loc_A4E2A7: FStStrNoPop var_11C
  loc_A4E2AA: LitStr " AND IdImpu = "
  loc_A4E2AD: ConcatStr
  loc_A4E2AE: FStStrNoPop var_120
  loc_A4E2B1: ILdRf IdImpu
  loc_A4E2B4: CStrI4
  loc_A4E2B6: FStStrNoPop var_124
  loc_A4E2B9: ConcatStr
  loc_A4E2BA: FStStrNoPop var_128
  loc_A4E2BD: LitStr ";"
  loc_A4E2C0: ConcatStr
  loc_A4E2C1: FStStrNoPop var_12C
  loc_A4E2C4: Call EjecutarRsCls(from_stack_1v)
  loc_A4E2C9: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_A4E300: FFree1Var var_D0 = ""
  loc_A4E303: LitI4 1
  loc_A4E308: FStR4 var_88
  loc_A4E30B: FLdI2 HaceRequery
  loc_A4E30E: BranchF loc_A4E321
  loc_A4E311: LitI2_Byte 0
  loc_A4E313: PopTmpLdAd2 var_12E
  loc_A4E316: ILdRf var_88
  loc_A4E319: FLdI2 var_92
  loc_A4E31C: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A4E321: ExitProcCbHresult
  loc_A4E327: LitI4 0
  loc_A4E32C: FStR4 var_88
  loc_A4E32F: ExitProcCbHresult
End Function

Public Function Transferencia5etapas(IdImpu, FechImpu, CodiPart, CodiOrga, CodiFifu, CodiUnga, PagaImpu, AjusImpu, HaceRequery) 'BB3B28
  'Data Table: 4AFD00
  loc_BB2B48: ILdRf FechImpu
  loc_BB2B4B: FStStrCopy var_8C
  loc_BB2B4E: ILdRf CodiPart
  loc_BB2B51: FStStrCopy var_90
  loc_BB2B54: ILdRf CodiOrga
  loc_BB2B57: FStStrCopy Transferencia5etapas
  loc_BB2B5A: ILdRf CodiFifu
  loc_BB2B5D: FStStrCopy var_98
  loc_BB2B60: ILdRf CodiUnga
  loc_BB2B63: FStStrCopy var_9C
  loc_BB2B66: ILdRf PagaImpu
  loc_BB2B69: FStStrCopy var_A0
  loc_BB2B6C: LitStr "START TRANSACTION;"
  loc_BB2B6F: FStStrCopy var_A4
  loc_BB2B72: OnErrorGoto loc_BB3B12
  loc_BB2B75: ILdRf var_A4
  loc_BB2B78: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, PagaImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_BB2B7B: ConcatStr
  loc_BB2B7C: FStStrNoPop var_A8
  loc_BB2B7F: LitStr " SELECT PeriInfo, (SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_BB2B82: ConcatStr
  loc_BB2B83: FStStrNoPop var_AC
  loc_BB2B86: ImpAdLdI2 MemVar_C3D064
  loc_BB2B89: CStrUI1
  loc_BB2B8B: FStStrNoPop var_B0
  loc_BB2B8E: ConcatStr
  loc_BB2B8F: FStStrNoPop var_B4
  loc_BB2B92: LitStr " LIMIT 1), CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_BB2B95: ConcatStr
  loc_BB2B96: FStStrNoPop var_E8
  loc_BB2B99: LitI4 1
  loc_BB2B9E: LitI4 1
  loc_BB2BA3: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_BB2BA8: FStVarCopyObj var_E4
  loc_BB2BAB: FLdRfVar var_E4
  loc_BB2BAE: FLdRfVar var_8C
  loc_BB2BB1: CVarRef
  loc_BB2BB6: ImpAdCallI2 Format$(, )
  loc_BB2BBB: FStStrNoPop var_EC
  loc_BB2BBE: ConcatStr
  loc_BB2BBF: FStStrNoPop var_F0
  loc_BB2BC2: LitStr ", ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, 1 CantImpu, "
  loc_BB2BC5: ConcatStr
  loc_BB2BC6: FStStrNoPop var_F4
  loc_BB2BC9: ILdRf var_A0
  loc_BB2BCC: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB2BD1: FStStrNoPop var_F8
  loc_BB2BD4: ConcatStr
  loc_BB2BD5: FStStrNoPop var_FC
  loc_BB2BD8: LitStr " ImunImpu, "
  loc_BB2BDB: ConcatStr
  loc_BB2BDC: FStStrNoPop var_100
  loc_BB2BDF: ILdRf var_A0
  loc_BB2BE2: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB2BE7: FStStrNoPop var_104
  loc_BB2BEA: ConcatStr
  loc_BB2BEB: FStStrNoPop var_108
  loc_BB2BEE: LitStr " PagaImpu, DetaImpu, CucuPers, "
  loc_BB2BF1: ConcatStr
  loc_BB2BF2: FStStrNoPop var_10C
  loc_BB2BF5: ILdRf AjusImpu
  loc_BB2BF8: CStrI4
  loc_BB2BFA: FStStrNoPop var_110
  loc_BB2BFD: ConcatStr
  loc_BB2BFE: FStStrNoPop var_114
  loc_BB2C01: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_BB2C04: ConcatStr
  loc_BB2C05: FStStrNoPop var_118
  loc_BB2C08: ImpAdLdI4 MemVar_C3D03C
  loc_BB2C0B: ConcatStr
  loc_BB2C0C: FStStrNoPop var_11C
  loc_BB2C0F: LitStr "'"
  loc_BB2C12: ConcatStr
  loc_BB2C13: FStStrNoPop var_120
  loc_BB2C16: LitStr " FROM imputacion"
  loc_BB2C19: ConcatStr
  loc_BB2C1A: FStStrNoPop var_124
  loc_BB2C1D: LitStr " WHERE PeriInfo = "
  loc_BB2C20: ConcatStr
  loc_BB2C21: FStStrNoPop var_128
  loc_BB2C24: ImpAdLdI2 MemVar_C3D064
  loc_BB2C27: CStrUI1
  loc_BB2C29: FStStrNoPop var_12C
  loc_BB2C2C: ConcatStr
  loc_BB2C2D: FStStrNoPop var_130
  loc_BB2C30: LitStr " AND IdImpu = "
  loc_BB2C33: ConcatStr
  loc_BB2C34: FStStrNoPop var_134
  loc_BB2C37: ILdRf IdImpu
  loc_BB2C3A: CStrI4
  loc_BB2C3C: FStStrNoPop var_138
  loc_BB2C3F: ConcatStr
  loc_BB2C40: FStStrNoPop var_13C
  loc_BB2C43: LitStr ";"
  loc_BB2C46: ConcatStr
  loc_BB2C47: FStStr var_A4
  loc_BB2C4A: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = ""
  loc_BB2C81: FFree1Var var_E4 = ""
  loc_BB2C84: ILdRf var_A4
  loc_BB2C87: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, MapaImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_BB2C8A: ConcatStr
  loc_BB2C8B: FStStrNoPop var_A8
  loc_BB2C8E: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_BB2C91: ConcatStr
  loc_BB2C92: FStStrNoPop var_AC
  loc_BB2C95: LitI4 1
  loc_BB2C9A: LitI4 1
  loc_BB2C9F: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_BB2CA4: FStVarCopyObj var_E4
  loc_BB2CA7: FLdRfVar var_E4
  loc_BB2CAA: FLdRfVar var_8C
  loc_BB2CAD: CVarRef
  loc_BB2CB2: ImpAdCallI2 Format$(, )
  loc_BB2CB7: FStStrNoPop var_B0
  loc_BB2CBA: ConcatStr
  loc_BB2CBB: FStStrNoPop var_B4
  loc_BB2CBE: LitStr ", ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, 1 CantImpu, "
  loc_BB2CC1: ConcatStr
  loc_BB2CC2: FStStrNoPop var_E8
  loc_BB2CC5: ILdRf var_A0
  loc_BB2CC8: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB2CCD: FStStrNoPop var_EC
  loc_BB2CD0: ConcatStr
  loc_BB2CD1: FStStrNoPop var_F0
  loc_BB2CD4: LitStr " ImunImpu, "
  loc_BB2CD7: ConcatStr
  loc_BB2CD8: FStStrNoPop var_F4
  loc_BB2CDB: ILdRf var_A0
  loc_BB2CDE: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB2CE3: FStStrNoPop var_F8
  loc_BB2CE6: ConcatStr
  loc_BB2CE7: FStStrNoPop var_FC
  loc_BB2CEA: LitStr " MapaImpu, DetaImpu, CucuPers, "
  loc_BB2CED: ConcatStr
  loc_BB2CEE: FStStrNoPop var_100
  loc_BB2CF1: ILdRf AjusImpu
  loc_BB2CF4: CStrI4
  loc_BB2CF6: FStStrNoPop var_104
  loc_BB2CF9: ConcatStr
  loc_BB2CFA: FStStrNoPop var_108
  loc_BB2CFD: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_BB2D00: ConcatStr
  loc_BB2D01: FStStrNoPop var_10C
  loc_BB2D04: ImpAdLdI4 MemVar_C3D03C
  loc_BB2D07: ConcatStr
  loc_BB2D08: FStStrNoPop var_110
  loc_BB2D0B: LitStr "'"
  loc_BB2D0E: ConcatStr
  loc_BB2D0F: FStStrNoPop var_114
  loc_BB2D12: LitStr " FROM imputacion"
  loc_BB2D15: ConcatStr
  loc_BB2D16: FStStrNoPop var_118
  loc_BB2D19: LitStr " WHERE PeriInfo = "
  loc_BB2D1C: ConcatStr
  loc_BB2D1D: FStStrNoPop var_11C
  loc_BB2D20: ImpAdLdI2 MemVar_C3D064
  loc_BB2D23: CStrUI1
  loc_BB2D25: FStStrNoPop var_120
  loc_BB2D28: ConcatStr
  loc_BB2D29: FStStrNoPop var_124
  loc_BB2D2C: LitStr " AND IdImpu = "
  loc_BB2D2F: ConcatStr
  loc_BB2D30: FStStrNoPop var_128
  loc_BB2D33: ILdRf IdImpu
  loc_BB2D36: CStrI4
  loc_BB2D38: FStStrNoPop var_12C
  loc_BB2D3B: ConcatStr
  loc_BB2D3C: FStStrNoPop var_130
  loc_BB2D3F: LitStr ";"
  loc_BB2D42: ConcatStr
  loc_BB2D43: FStStr var_A4
  loc_BB2D46: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_BB2D77: FFree1Var var_E4 = ""
  loc_BB2D7A: ILdRf var_A4
  loc_BB2D7D: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, CantImpu, ImunImpu, LiquImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_BB2D80: ConcatStr
  loc_BB2D81: FStStrNoPop var_A8
  loc_BB2D84: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_BB2D87: ConcatStr
  loc_BB2D88: FStStrNoPop var_AC
  loc_BB2D8B: LitI4 1
  loc_BB2D90: LitI4 1
  loc_BB2D95: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_BB2D9A: FStVarCopyObj var_E4
  loc_BB2D9D: FLdRfVar var_E4
  loc_BB2DA0: FLdRfVar var_8C
  loc_BB2DA3: CVarRef
  loc_BB2DA8: ImpAdCallI2 Format$(, )
  loc_BB2DAD: FStStrNoPop var_B0
  loc_BB2DB0: ConcatStr
  loc_BB2DB1: FStStrNoPop var_B4
  loc_BB2DB4: LitStr ", ExorImpu, ExpeImpu, NumeLiqu, 1 CantImpu, "
  loc_BB2DB7: ConcatStr
  loc_BB2DB8: FStStrNoPop var_E8
  loc_BB2DBB: ILdRf var_A0
  loc_BB2DBE: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB2DC3: FStStrNoPop var_EC
  loc_BB2DC6: ConcatStr
  loc_BB2DC7: FStStrNoPop var_F0
  loc_BB2DCA: LitStr " ImunImpu, "
  loc_BB2DCD: ConcatStr
  loc_BB2DCE: FStStrNoPop var_F4
  loc_BB2DD1: ILdRf var_A0
  loc_BB2DD4: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB2DD9: FStStrNoPop var_F8
  loc_BB2DDC: ConcatStr
  loc_BB2DDD: FStStrNoPop var_FC
  loc_BB2DE0: LitStr " LiquImpu, DetaImpu, CucuPers, "
  loc_BB2DE3: ConcatStr
  loc_BB2DE4: FStStrNoPop var_100
  loc_BB2DE7: ILdRf AjusImpu
  loc_BB2DEA: CStrI4
  loc_BB2DEC: FStStrNoPop var_104
  loc_BB2DEF: ConcatStr
  loc_BB2DF0: FStStrNoPop var_108
  loc_BB2DF3: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_BB2DF6: ConcatStr
  loc_BB2DF7: FStStrNoPop var_10C
  loc_BB2DFA: ImpAdLdI4 MemVar_C3D03C
  loc_BB2DFD: ConcatStr
  loc_BB2DFE: FStStrNoPop var_110
  loc_BB2E01: LitStr "'"
  loc_BB2E04: ConcatStr
  loc_BB2E05: FStStrNoPop var_114
  loc_BB2E08: LitStr " FROM imputacion"
  loc_BB2E0B: ConcatStr
  loc_BB2E0C: FStStrNoPop var_118
  loc_BB2E0F: LitStr " WHERE PeriInfo = "
  loc_BB2E12: ConcatStr
  loc_BB2E13: FStStrNoPop var_11C
  loc_BB2E16: ImpAdLdI2 MemVar_C3D064
  loc_BB2E19: CStrUI1
  loc_BB2E1B: FStStrNoPop var_120
  loc_BB2E1E: ConcatStr
  loc_BB2E1F: FStStrNoPop var_124
  loc_BB2E22: LitStr " AND IdImpu = "
  loc_BB2E25: ConcatStr
  loc_BB2E26: FStStrNoPop var_128
  loc_BB2E29: ILdRf IdImpu
  loc_BB2E2C: CStrI4
  loc_BB2E2E: FStStrNoPop var_12C
  loc_BB2E31: ConcatStr
  loc_BB2E32: FStStrNoPop var_130
  loc_BB2E35: LitStr ";"
  loc_BB2E38: ConcatStr
  loc_BB2E39: FStStr var_A4
  loc_BB2E3C: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_BB2E6D: FFree1Var var_E4 = ""
  loc_BB2E70: ILdRf var_A4
  loc_BB2E73: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, CantImpu, ImunImpu, DeveImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_BB2E76: ConcatStr
  loc_BB2E77: FStStrNoPop var_A8
  loc_BB2E7A: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_BB2E7D: ConcatStr
  loc_BB2E7E: FStStrNoPop var_AC
  loc_BB2E81: LitI4 1
  loc_BB2E86: LitI4 1
  loc_BB2E8B: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_BB2E90: FStVarCopyObj var_E4
  loc_BB2E93: FLdRfVar var_E4
  loc_BB2E96: FLdRfVar var_8C
  loc_BB2E99: CVarRef
  loc_BB2E9E: ImpAdCallI2 Format$(, )
  loc_BB2EA3: FStStrNoPop var_B0
  loc_BB2EA6: ConcatStr
  loc_BB2EA7: FStStrNoPop var_B4
  loc_BB2EAA: LitStr ", ExorImpu, ExpeImpu, 1 CantImpu, "
  loc_BB2EAD: ConcatStr
  loc_BB2EAE: FStStrNoPop var_E8
  loc_BB2EB1: ILdRf var_A0
  loc_BB2EB4: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB2EB9: FStStrNoPop var_EC
  loc_BB2EBC: ConcatStr
  loc_BB2EBD: FStStrNoPop var_F0
  loc_BB2EC0: LitStr " ImunImpu, "
  loc_BB2EC3: ConcatStr
  loc_BB2EC4: FStStrNoPop var_F4
  loc_BB2EC7: ILdRf var_A0
  loc_BB2ECA: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB2ECF: FStStrNoPop var_F8
  loc_BB2ED2: ConcatStr
  loc_BB2ED3: FStStrNoPop var_FC
  loc_BB2ED6: LitStr " DeveImpu, DetaImpu, CucuPers, "
  loc_BB2ED9: ConcatStr
  loc_BB2EDA: FStStrNoPop var_100
  loc_BB2EDD: ILdRf AjusImpu
  loc_BB2EE0: CStrI4
  loc_BB2EE2: FStStrNoPop var_104
  loc_BB2EE5: ConcatStr
  loc_BB2EE6: FStStrNoPop var_108
  loc_BB2EE9: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_BB2EEC: ConcatStr
  loc_BB2EED: FStStrNoPop var_10C
  loc_BB2EF0: ImpAdLdI4 MemVar_C3D03C
  loc_BB2EF3: ConcatStr
  loc_BB2EF4: FStStrNoPop var_110
  loc_BB2EF7: LitStr "'"
  loc_BB2EFA: ConcatStr
  loc_BB2EFB: FStStrNoPop var_114
  loc_BB2EFE: LitStr " FROM imputacion"
  loc_BB2F01: ConcatStr
  loc_BB2F02: FStStrNoPop var_118
  loc_BB2F05: LitStr " WHERE PeriInfo = "
  loc_BB2F08: ConcatStr
  loc_BB2F09: FStStrNoPop var_11C
  loc_BB2F0C: ImpAdLdI2 MemVar_C3D064
  loc_BB2F0F: CStrUI1
  loc_BB2F11: FStStrNoPop var_120
  loc_BB2F14: ConcatStr
  loc_BB2F15: FStStrNoPop var_124
  loc_BB2F18: LitStr " AND IdImpu = "
  loc_BB2F1B: ConcatStr
  loc_BB2F1C: FStStrNoPop var_128
  loc_BB2F1F: ILdRf IdImpu
  loc_BB2F22: CStrI4
  loc_BB2F24: FStStrNoPop var_12C
  loc_BB2F27: ConcatStr
  loc_BB2F28: FStStrNoPop var_130
  loc_BB2F2B: LitStr ";"
  loc_BB2F2E: ConcatStr
  loc_BB2F2F: FStStr var_A4
  loc_BB2F32: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_BB2F63: FFree1Var var_E4 = ""
  loc_BB2F66: ILdRf var_A4
  loc_BB2F69: LitStr "INSERT INTO devengado (PeriInfo, IdImpu, CodiCuco)"
  loc_BB2F6C: ConcatStr
  loc_BB2F6D: FStStrNoPop var_A8
  loc_BB2F70: LitStr " VALUES ("
  loc_BB2F73: ConcatStr
  loc_BB2F74: FStStrNoPop var_AC
  loc_BB2F77: ImpAdLdI2 MemVar_C3D064
  loc_BB2F7A: CStrUI1
  loc_BB2F7C: FStStrNoPop var_B0
  loc_BB2F7F: ConcatStr
  loc_BB2F80: FStStrNoPop var_B4
  loc_BB2F83: LitStr ", @idimpu, '');"
  loc_BB2F86: ConcatStr
  loc_BB2F87: FStStr var_A4
  loc_BB2F8A: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_BB2F95: ILdRf var_A4
  loc_BB2F98: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, DefiImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, AltaUsua)"
  loc_BB2F9B: ConcatStr
  loc_BB2F9C: FStStrNoPop var_A8
  loc_BB2F9F: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_BB2FA2: ConcatStr
  loc_BB2FA3: FStStrNoPop var_AC
  loc_BB2FA6: LitI4 1
  loc_BB2FAB: LitI4 1
  loc_BB2FB0: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_BB2FB5: FStVarCopyObj var_E4
  loc_BB2FB8: FLdRfVar var_E4
  loc_BB2FBB: FLdRfVar var_8C
  loc_BB2FBE: CVarRef
  loc_BB2FC3: ImpAdCallI2 Format$(, )
  loc_BB2FC8: FStStrNoPop var_B0
  loc_BB2FCB: ConcatStr
  loc_BB2FCC: FStStrNoPop var_B4
  loc_BB2FCF: LitStr ", ExorImpu, 1 CantImpu, "
  loc_BB2FD2: ConcatStr
  loc_BB2FD3: FStStrNoPop var_E8
  loc_BB2FD6: ILdRf var_A0
  loc_BB2FD9: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB2FDE: FStStrNoPop var_EC
  loc_BB2FE1: ConcatStr
  loc_BB2FE2: FStStrNoPop var_F0
  loc_BB2FE5: LitStr " ImunImpu, "
  loc_BB2FE8: ConcatStr
  loc_BB2FE9: FStStrNoPop var_F4
  loc_BB2FEC: ILdRf var_A0
  loc_BB2FEF: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB2FF4: FStStrNoPop var_F8
  loc_BB2FF7: ConcatStr
  loc_BB2FF8: FStStrNoPop var_FC
  loc_BB2FFB: LitStr " DefiImpu, DetaImpu, CucuPers, "
  loc_BB2FFE: ConcatStr
  loc_BB2FFF: FStStrNoPop var_100
  loc_BB3002: ILdRf AjusImpu
  loc_BB3005: CStrI4
  loc_BB3007: FStStrNoPop var_104
  loc_BB300A: ConcatStr
  loc_BB300B: FStStrNoPop var_108
  loc_BB300E: LitStr ", CodiNope, Item, Altern, CodiOrco, '"
  loc_BB3011: ConcatStr
  loc_BB3012: FStStrNoPop var_10C
  loc_BB3015: ImpAdLdI4 MemVar_C3D03C
  loc_BB3018: ConcatStr
  loc_BB3019: FStStrNoPop var_110
  loc_BB301C: LitStr "'"
  loc_BB301F: ConcatStr
  loc_BB3020: FStStrNoPop var_114
  loc_BB3023: LitStr " FROM imputacion"
  loc_BB3026: ConcatStr
  loc_BB3027: FStStrNoPop var_118
  loc_BB302A: LitStr " WHERE PeriInfo = "
  loc_BB302D: ConcatStr
  loc_BB302E: FStStrNoPop var_11C
  loc_BB3031: ImpAdLdI2 MemVar_C3D064
  loc_BB3034: CStrUI1
  loc_BB3036: FStStrNoPop var_120
  loc_BB3039: ConcatStr
  loc_BB303A: FStStrNoPop var_124
  loc_BB303D: LitStr " AND IdImpu = "
  loc_BB3040: ConcatStr
  loc_BB3041: FStStrNoPop var_128
  loc_BB3044: ILdRf IdImpu
  loc_BB3047: CStrI4
  loc_BB3049: FStStrNoPop var_12C
  loc_BB304C: ConcatStr
  loc_BB304D: FStStrNoPop var_130
  loc_BB3050: LitStr ";"
  loc_BB3053: ConcatStr
  loc_BB3054: FStStr var_A4
  loc_BB3057: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_BB3088: FFree1Var var_E4 = ""
  loc_BB308B: ILdRf var_A4
  loc_BB308E: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, PrevImpu, DetaImpu, AjusImpu, CodiNope, Item, AltaUsua)"
  loc_BB3091: ConcatStr
  loc_BB3092: FStStrNoPop var_A8
  loc_BB3095: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_BB3098: ConcatStr
  loc_BB3099: FStStrNoPop var_AC
  loc_BB309C: LitI4 1
  loc_BB30A1: LitI4 1
  loc_BB30A6: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_BB30AB: FStVarCopyObj var_E4
  loc_BB30AE: FLdRfVar var_E4
  loc_BB30B1: FLdRfVar var_8C
  loc_BB30B4: CVarRef
  loc_BB30B9: ImpAdCallI2 Format$(, )
  loc_BB30BE: FStStrNoPop var_B0
  loc_BB30C1: ConcatStr
  loc_BB30C2: FStStrNoPop var_B4
  loc_BB30C5: LitStr ", ExorImpu, 1 CantImpu, "
  loc_BB30C8: ConcatStr
  loc_BB30C9: FStStrNoPop var_E8
  loc_BB30CC: ILdRf var_A0
  loc_BB30CF: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB30D4: FStStrNoPop var_EC
  loc_BB30D7: ConcatStr
  loc_BB30D8: FStStrNoPop var_F0
  loc_BB30DB: LitStr " ImunImpu, "
  loc_BB30DE: ConcatStr
  loc_BB30DF: FStStrNoPop var_F4
  loc_BB30E2: ILdRf var_A0
  loc_BB30E5: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB30EA: FStStrNoPop var_F8
  loc_BB30ED: ConcatStr
  loc_BB30EE: FStStrNoPop var_FC
  loc_BB30F1: LitStr " PrevImpu, DetaImpu, "
  loc_BB30F4: ConcatStr
  loc_BB30F5: FStStrNoPop var_100
  loc_BB30F8: ILdRf AjusImpu
  loc_BB30FB: CStrI4
  loc_BB30FD: FStStrNoPop var_104
  loc_BB3100: ConcatStr
  loc_BB3101: FStStrNoPop var_108
  loc_BB3104: LitStr ", CodiNope, Item, '"
  loc_BB3107: ConcatStr
  loc_BB3108: FStStrNoPop var_10C
  loc_BB310B: ImpAdLdI4 MemVar_C3D03C
  loc_BB310E: ConcatStr
  loc_BB310F: FStStrNoPop var_110
  loc_BB3112: LitStr "'"
  loc_BB3115: ConcatStr
  loc_BB3116: FStStrNoPop var_114
  loc_BB3119: LitStr " FROM imputacion"
  loc_BB311C: ConcatStr
  loc_BB311D: FStStrNoPop var_118
  loc_BB3120: LitStr " WHERE PeriInfo = "
  loc_BB3123: ConcatStr
  loc_BB3124: FStStrNoPop var_11C
  loc_BB3127: ImpAdLdI2 MemVar_C3D064
  loc_BB312A: CStrUI1
  loc_BB312C: FStStrNoPop var_120
  loc_BB312F: ConcatStr
  loc_BB3130: FStStrNoPop var_124
  loc_BB3133: LitStr " AND IdImpu = "
  loc_BB3136: ConcatStr
  loc_BB3137: FStStrNoPop var_128
  loc_BB313A: ILdRf IdImpu
  loc_BB313D: CStrI4
  loc_BB313F: FStStrNoPop var_12C
  loc_BB3142: ConcatStr
  loc_BB3143: FStStrNoPop var_130
  loc_BB3146: LitStr ";"
  loc_BB3149: ConcatStr
  loc_BB314A: FStStr var_A4
  loc_BB314D: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_BB317E: FFree1Var var_E4 = ""
  loc_BB3181: ILdRf var_A4
  loc_BB3184: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, PrevImpu, DetaImpu, AjusImpu, CodiNope, Item, AltaUsua)"
  loc_BB3187: ConcatStr
  loc_BB3188: FStStrNoPop var_A8
  loc_BB318B: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, '"
  loc_BB318E: ConcatStr
  loc_BB318F: FStStrNoPop var_AC
  loc_BB3192: ILdRf var_90
  loc_BB3195: ConcatStr
  loc_BB3196: FStStrNoPop var_B0
  loc_BB3199: LitStr "', '"
  loc_BB319C: ConcatStr
  loc_BB319D: FStStrNoPop var_B4
  loc_BB31A0: ILdRf Transferencia5etapas
  loc_BB31A3: ConcatStr
  loc_BB31A4: FStStrNoPop var_E8
  loc_BB31A7: LitStr "', "
  loc_BB31AA: ConcatStr
  loc_BB31AB: FStStrNoPop var_EC
  loc_BB31AE: ILdRf var_9C
  loc_BB31B1: ConcatStr
  loc_BB31B2: FStStrNoPop var_F0
  loc_BB31B5: LitStr ", CodiInsu, '"
  loc_BB31B8: ConcatStr
  loc_BB31B9: FStStrNoPop var_F4
  loc_BB31BC: ILdRf var_98
  loc_BB31BF: ConcatStr
  loc_BB31C0: FStStrNoPop var_F8
  loc_BB31C3: LitStr "', "
  loc_BB31C6: ConcatStr
  loc_BB31C7: FStStrNoPop var_FC
  loc_BB31CA: LitI4 1
  loc_BB31CF: LitI4 1
  loc_BB31D4: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_BB31D9: FStVarCopyObj var_E4
  loc_BB31DC: FLdRfVar var_E4
  loc_BB31DF: FLdRfVar var_8C
  loc_BB31E2: CVarRef
  loc_BB31E7: ImpAdCallI2 Format$(, )
  loc_BB31EC: FStStrNoPop var_100
  loc_BB31EF: ConcatStr
  loc_BB31F0: FStStrNoPop var_104
  loc_BB31F3: LitStr ", ExorImpu, 1 CantImpu, "
  loc_BB31F6: ConcatStr
  loc_BB31F7: FStStrNoPop var_10C
  loc_BB31FA: ILdRf var_A0
  loc_BB31FD: CR8Str
  loc_BB31FF: LitI2_Byte &HFF
  loc_BB3201: CR8I2
  loc_BB3202: MulR8
  loc_BB3203: CStrR8
  loc_BB3205: FStStrNoPop var_108
  loc_BB3208: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB320D: FStStrNoPop var_110
  loc_BB3210: ConcatStr
  loc_BB3211: FStStrNoPop var_114
  loc_BB3214: LitStr " ImunImpu, "
  loc_BB3217: ConcatStr
  loc_BB3218: FStStrNoPop var_11C
  loc_BB321B: ILdRf var_A0
  loc_BB321E: CR8Str
  loc_BB3220: LitI2_Byte &HFF
  loc_BB3222: CR8I2
  loc_BB3223: MulR8
  loc_BB3224: CStrR8
  loc_BB3226: FStStrNoPop var_118
  loc_BB3229: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB322E: FStStrNoPop var_120
  loc_BB3231: ConcatStr
  loc_BB3232: FStStrNoPop var_124
  loc_BB3235: LitStr " PrevImpu, DetaImpu, "
  loc_BB3238: ConcatStr
  loc_BB3239: FStStrNoPop var_128
  loc_BB323C: ILdRf AjusImpu
  loc_BB323F: CStrI4
  loc_BB3241: FStStrNoPop var_12C
  loc_BB3244: ConcatStr
  loc_BB3245: FStStrNoPop var_130
  loc_BB3248: LitStr ", CodiNope, Item, '"
  loc_BB324B: ConcatStr
  loc_BB324C: FStStrNoPop var_134
  loc_BB324F: ImpAdLdI4 MemVar_C3D03C
  loc_BB3252: ConcatStr
  loc_BB3253: FStStrNoPop var_138
  loc_BB3256: LitStr "'"
  loc_BB3259: ConcatStr
  loc_BB325A: FStStrNoPop var_13C
  loc_BB325D: LitStr " FROM imputacion"
  loc_BB3260: ConcatStr
  loc_BB3261: FStStrNoPop var_140
  loc_BB3264: LitStr " WHERE PeriInfo = "
  loc_BB3267: ConcatStr
  loc_BB3268: FStStrNoPop var_144
  loc_BB326B: ImpAdLdI2 MemVar_C3D064
  loc_BB326E: CStrUI1
  loc_BB3270: FStStrNoPop var_148
  loc_BB3273: ConcatStr
  loc_BB3274: FStStrNoPop var_14C
  loc_BB3277: LitStr " AND IdImpu = "
  loc_BB327A: ConcatStr
  loc_BB327B: FStStrNoPop var_150
  loc_BB327E: ILdRf IdImpu
  loc_BB3281: CStrI4
  loc_BB3283: FStStrNoPop var_154
  loc_BB3286: ConcatStr
  loc_BB3287: FStStrNoPop var_158
  loc_BB328A: LitStr ";"
  loc_BB328D: ConcatStr
  loc_BB328E: FStStr var_A4
  loc_BB3291: FFreeStr var_150 = "": var_154 = "": var_158 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_BB32D6: FFree1Var var_E4 = ""
  loc_BB32D9: ILdRf var_A4
  loc_BB32DC: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, DefiImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, AltaUsua)"
  loc_BB32DF: ConcatStr
  loc_BB32E0: FStStrNoPop var_A8
  loc_BB32E3: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, '"
  loc_BB32E6: ConcatStr
  loc_BB32E7: FStStrNoPop var_AC
  loc_BB32EA: ILdRf var_90
  loc_BB32ED: ConcatStr
  loc_BB32EE: FStStrNoPop var_B0
  loc_BB32F1: LitStr "', '"
  loc_BB32F4: ConcatStr
  loc_BB32F5: FStStrNoPop var_B4
  loc_BB32F8: ILdRf Transferencia5etapas
  loc_BB32FB: ConcatStr
  loc_BB32FC: FStStrNoPop var_E8
  loc_BB32FF: LitStr "', "
  loc_BB3302: ConcatStr
  loc_BB3303: FStStrNoPop var_EC
  loc_BB3306: ILdRf var_9C
  loc_BB3309: ConcatStr
  loc_BB330A: FStStrNoPop var_F0
  loc_BB330D: LitStr ", CodiInsu, '"
  loc_BB3310: ConcatStr
  loc_BB3311: FStStrNoPop var_F4
  loc_BB3314: ILdRf var_98
  loc_BB3317: ConcatStr
  loc_BB3318: FStStrNoPop var_F8
  loc_BB331B: LitStr "', "
  loc_BB331E: ConcatStr
  loc_BB331F: FStStrNoPop var_FC
  loc_BB3322: LitI4 1
  loc_BB3327: LitI4 1
  loc_BB332C: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_BB3331: FStVarCopyObj var_E4
  loc_BB3334: FLdRfVar var_E4
  loc_BB3337: FLdRfVar var_8C
  loc_BB333A: CVarRef
  loc_BB333F: ImpAdCallI2 Format$(, )
  loc_BB3344: FStStrNoPop var_100
  loc_BB3347: ConcatStr
  loc_BB3348: FStStrNoPop var_104
  loc_BB334B: LitStr ", ExorImpu, 1 CantImpu, "
  loc_BB334E: ConcatStr
  loc_BB334F: FStStrNoPop var_10C
  loc_BB3352: ILdRf var_A0
  loc_BB3355: CR8Str
  loc_BB3357: LitI2_Byte &HFF
  loc_BB3359: CR8I2
  loc_BB335A: MulR8
  loc_BB335B: CStrR8
  loc_BB335D: FStStrNoPop var_108
  loc_BB3360: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB3365: FStStrNoPop var_110
  loc_BB3368: ConcatStr
  loc_BB3369: FStStrNoPop var_114
  loc_BB336C: LitStr " ImunImpu, "
  loc_BB336F: ConcatStr
  loc_BB3370: FStStrNoPop var_11C
  loc_BB3373: ILdRf var_A0
  loc_BB3376: CR8Str
  loc_BB3378: LitI2_Byte &HFF
  loc_BB337A: CR8I2
  loc_BB337B: MulR8
  loc_BB337C: CStrR8
  loc_BB337E: FStStrNoPop var_118
  loc_BB3381: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB3386: FStStrNoPop var_120
  loc_BB3389: ConcatStr
  loc_BB338A: FStStrNoPop var_124
  loc_BB338D: LitStr " DefiImpu, DetaImpu, CucuPers, "
  loc_BB3390: ConcatStr
  loc_BB3391: FStStrNoPop var_128
  loc_BB3394: ILdRf AjusImpu
  loc_BB3397: CStrI4
  loc_BB3399: FStStrNoPop var_12C
  loc_BB339C: ConcatStr
  loc_BB339D: FStStrNoPop var_130
  loc_BB33A0: LitStr ", CodiNope, Item, Altern, CodiOrco, '"
  loc_BB33A3: ConcatStr
  loc_BB33A4: FStStrNoPop var_134
  loc_BB33A7: ImpAdLdI4 MemVar_C3D03C
  loc_BB33AA: ConcatStr
  loc_BB33AB: FStStrNoPop var_138
  loc_BB33AE: LitStr "'"
  loc_BB33B1: ConcatStr
  loc_BB33B2: FStStrNoPop var_13C
  loc_BB33B5: LitStr " FROM imputacion"
  loc_BB33B8: ConcatStr
  loc_BB33B9: FStStrNoPop var_140
  loc_BB33BC: LitStr " WHERE PeriInfo = "
  loc_BB33BF: ConcatStr
  loc_BB33C0: FStStrNoPop var_144
  loc_BB33C3: ImpAdLdI2 MemVar_C3D064
  loc_BB33C6: CStrUI1
  loc_BB33C8: FStStrNoPop var_148
  loc_BB33CB: ConcatStr
  loc_BB33CC: FStStrNoPop var_14C
  loc_BB33CF: LitStr " AND IdImpu = "
  loc_BB33D2: ConcatStr
  loc_BB33D3: FStStrNoPop var_150
  loc_BB33D6: ILdRf IdImpu
  loc_BB33D9: CStrI4
  loc_BB33DB: FStStrNoPop var_154
  loc_BB33DE: ConcatStr
  loc_BB33DF: FStStrNoPop var_158
  loc_BB33E2: LitStr ";"
  loc_BB33E5: ConcatStr
  loc_BB33E6: FStStr var_A4
  loc_BB33E9: FFreeStr var_150 = "": var_154 = "": var_158 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_BB342E: FFree1Var var_E4 = ""
  loc_BB3431: ILdRf var_A4
  loc_BB3434: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, CantImpu, ImunImpu, DeveImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_BB3437: ConcatStr
  loc_BB3438: FStStrNoPop var_A8
  loc_BB343B: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, '"
  loc_BB343E: ConcatStr
  loc_BB343F: FStStrNoPop var_AC
  loc_BB3442: ILdRf var_90
  loc_BB3445: ConcatStr
  loc_BB3446: FStStrNoPop var_B0
  loc_BB3449: LitStr "', '"
  loc_BB344C: ConcatStr
  loc_BB344D: FStStrNoPop var_B4
  loc_BB3450: ILdRf Transferencia5etapas
  loc_BB3453: ConcatStr
  loc_BB3454: FStStrNoPop var_E8
  loc_BB3457: LitStr "', "
  loc_BB345A: ConcatStr
  loc_BB345B: FStStrNoPop var_EC
  loc_BB345E: ILdRf var_9C
  loc_BB3461: ConcatStr
  loc_BB3462: FStStrNoPop var_F0
  loc_BB3465: LitStr ", @insu:= CodiInsu, '"
  loc_BB3468: ConcatStr
  loc_BB3469: FStStrNoPop var_F4
  loc_BB346C: ILdRf var_98
  loc_BB346F: ConcatStr
  loc_BB3470: FStStrNoPop var_F8
  loc_BB3473: LitStr "', "
  loc_BB3476: ConcatStr
  loc_BB3477: FStStrNoPop var_FC
  loc_BB347A: LitI4 1
  loc_BB347F: LitI4 1
  loc_BB3484: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_BB3489: FStVarCopyObj var_E4
  loc_BB348C: FLdRfVar var_E4
  loc_BB348F: FLdRfVar var_8C
  loc_BB3492: CVarRef
  loc_BB3497: ImpAdCallI2 Format$(, )
  loc_BB349C: FStStrNoPop var_100
  loc_BB349F: ConcatStr
  loc_BB34A0: FStStrNoPop var_104
  loc_BB34A3: LitStr ", @exor:= ExorImpu, @expe:= ExpeImpu, 1 CantImpu, "
  loc_BB34A6: ConcatStr
  loc_BB34A7: FStStrNoPop var_10C
  loc_BB34AA: ILdRf var_A0
  loc_BB34AD: CR8Str
  loc_BB34AF: LitI2_Byte &HFF
  loc_BB34B1: CR8I2
  loc_BB34B2: MulR8
  loc_BB34B3: CStrR8
  loc_BB34B5: FStStrNoPop var_108
  loc_BB34B8: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB34BD: FStStrNoPop var_110
  loc_BB34C0: ConcatStr
  loc_BB34C1: FStStrNoPop var_114
  loc_BB34C4: LitStr " ImunImpu, "
  loc_BB34C7: ConcatStr
  loc_BB34C8: FStStrNoPop var_11C
  loc_BB34CB: ILdRf var_A0
  loc_BB34CE: CR8Str
  loc_BB34D0: LitI2_Byte &HFF
  loc_BB34D2: CR8I2
  loc_BB34D3: MulR8
  loc_BB34D4: CStrR8
  loc_BB34D6: FStStrNoPop var_118
  loc_BB34D9: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB34DE: FStStrNoPop var_120
  loc_BB34E1: ConcatStr
  loc_BB34E2: FStStrNoPop var_124
  loc_BB34E5: LitStr " DeveImpu, @deta:= DetaImpu, CucuPers, "
  loc_BB34E8: ConcatStr
  loc_BB34E9: FStStrNoPop var_128
  loc_BB34EC: ILdRf AjusImpu
  loc_BB34EF: CStrI4
  loc_BB34F1: FStStrNoPop var_12C
  loc_BB34F4: ConcatStr
  loc_BB34F5: FStStrNoPop var_130
  loc_BB34F8: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_BB34FB: ConcatStr
  loc_BB34FC: FStStrNoPop var_134
  loc_BB34FF: ImpAdLdI4 MemVar_C3D03C
  loc_BB3502: ConcatStr
  loc_BB3503: FStStrNoPop var_138
  loc_BB3506: LitStr "'"
  loc_BB3509: ConcatStr
  loc_BB350A: FStStrNoPop var_13C
  loc_BB350D: LitStr " FROM imputacion"
  loc_BB3510: ConcatStr
  loc_BB3511: FStStrNoPop var_140
  loc_BB3514: LitStr " WHERE PeriInfo = "
  loc_BB3517: ConcatStr
  loc_BB3518: FStStrNoPop var_144
  loc_BB351B: ImpAdLdI2 MemVar_C3D064
  loc_BB351E: CStrUI1
  loc_BB3520: FStStrNoPop var_148
  loc_BB3523: ConcatStr
  loc_BB3524: FStStrNoPop var_14C
  loc_BB3527: LitStr " AND IdImpu = "
  loc_BB352A: ConcatStr
  loc_BB352B: FStStrNoPop var_150
  loc_BB352E: ILdRf IdImpu
  loc_BB3531: CStrI4
  loc_BB3533: FStStrNoPop var_154
  loc_BB3536: ConcatStr
  loc_BB3537: FStStrNoPop var_158
  loc_BB353A: LitStr ";"
  loc_BB353D: ConcatStr
  loc_BB353E: FStStr var_A4
  loc_BB3541: FFreeStr var_150 = "": var_154 = "": var_158 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_BB3586: FFree1Var var_E4 = ""
  loc_BB3589: ILdRf var_A4
  loc_BB358C: LitStr "INSERT INTO devengado (PeriInfo, IdImpu, CodiCuco)"
  loc_BB358F: ConcatStr
  loc_BB3590: FStStrNoPop var_A8
  loc_BB3593: LitStr " VALUES ("
  loc_BB3596: ConcatStr
  loc_BB3597: FStStrNoPop var_AC
  loc_BB359A: ImpAdLdI2 MemVar_C3D064
  loc_BB359D: CStrUI1
  loc_BB359F: FStStrNoPop var_B0
  loc_BB35A2: ConcatStr
  loc_BB35A3: FStStrNoPop var_B4
  loc_BB35A6: LitStr ", @idimpu, '');"
  loc_BB35A9: ConcatStr
  loc_BB35AA: FStStr var_A4
  loc_BB35AD: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_BB35B8: LitStr "SELECT * FROM partida WHERE PeriInfo = "
  loc_BB35BB: ImpAdLdI2 MemVar_C3D064
  loc_BB35BE: CStrUI1
  loc_BB35C0: FStStrNoPop var_A8
  loc_BB35C3: ConcatStr
  loc_BB35C4: FStStrNoPop var_AC
  loc_BB35C7: LitStr " AND CodiPart = '"
  loc_BB35CA: ConcatStr
  loc_BB35CB: FStStrNoPop var_B0
  loc_BB35CE: ILdRf var_90
  loc_BB35D1: ConcatStr
  loc_BB35D2: FStStrNoPop var_B4
  loc_BB35D5: LitStr "' AND InvePart = 1;"
  loc_BB35D8: ConcatStr
  loc_BB35D9: FStStrNoPop var_E8
  loc_BB35DC: Call EjecutarRsCls(from_stack_1v)
  loc_BB35E1: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_BB35EE: FLdRfVar var_15C
  loc_BB35F1: FLdPr Me
  loc_BB35F4: MemLdPr global_56
  loc_BB35F7:  = Me.RecordCount
  loc_BB35FC: ILdRf var_15C
  loc_BB35FF: LitI4 0
  loc_BB3604: GtI4
  loc_BB3605: BranchF loc_BB36D4
  loc_BB3608: ILdRf var_A4
  loc_BB360B: LitStr "INSERT INTO invepatrimonial (IdInpa,CodiInpa,DetaInpa,CaraInpa,ObseInpa,FechInpa,PeriInfo,CodiInsu,CantInpa,ImunInpa,ImpoInpa,CodiCuco,IdImpu,FegaInpa,ExorImpu,ExpeImpu,MarcInpa,IdUbfi,PeusInpa,CodiAlbius,AltaUsua)"
  loc_BB360E: ConcatStr
  loc_BB360F: FStStrNoPop var_A8
  loc_BB3612: LitStr " VALUES ((SELECT Max(IdInpa)+1 IdInpa FROM invepatrimonial t),0, @deta,'','',"
  loc_BB3615: ConcatStr
  loc_BB3616: FStStrNoPop var_AC
  loc_BB3619: LitI4 1
  loc_BB361E: LitI4 1
  loc_BB3623: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_BB3628: FStVarCopyObj var_E4
  loc_BB362B: FLdRfVar var_E4
  loc_BB362E: FLdRfVar var_8C
  loc_BB3631: CVarRef
  loc_BB3636: ImpAdCallI2 Format$(, )
  loc_BB363B: FStStrNoPop var_B0
  loc_BB363E: ConcatStr
  loc_BB363F: FStStrNoPop var_B4
  loc_BB3642: LitStr ","
  loc_BB3645: ConcatStr
  loc_BB3646: FStStrNoPop var_E8
  loc_BB3649: ImpAdLdI2 MemVar_C3D064
  loc_BB364C: CStrUI1
  loc_BB364E: FStStrNoPop var_EC
  loc_BB3651: ConcatStr
  loc_BB3652: FStStrNoPop var_F0
  loc_BB3655: LitStr ", @insu, 1,"
  loc_BB3658: ConcatStr
  loc_BB3659: FStStrNoPop var_F8
  loc_BB365C: ILdRf var_A0
  loc_BB365F: CR8Str
  loc_BB3661: LitI2_Byte &HFF
  loc_BB3663: CR8I2
  loc_BB3664: MulR8
  loc_BB3665: CStrR8
  loc_BB3667: FStStrNoPop var_F4
  loc_BB366A: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB366F: FStStrNoPop var_FC
  loc_BB3672: ConcatStr
  loc_BB3673: FStStrNoPop var_100
  loc_BB3676: LitStr ","
  loc_BB3679: ConcatStr
  loc_BB367A: FStStrNoPop var_108
  loc_BB367D: ILdRf var_A0
  loc_BB3680: CR8Str
  loc_BB3682: LitI2_Byte &HFF
  loc_BB3684: CR8I2
  loc_BB3685: MulR8
  loc_BB3686: CStrR8
  loc_BB3688: FStStrNoPop var_104
  loc_BB368B: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB3690: FStStrNoPop var_10C
  loc_BB3693: ConcatStr
  loc_BB3694: FStStrNoPop var_110
  loc_BB3697: LitStr ",'',@idimpu,NULL, @exor,@expe,0,0,0,2,'"
  loc_BB369A: ConcatStr
  loc_BB369B: FStStrNoPop var_114
  loc_BB369E: ImpAdLdI4 MemVar_C3D03C
  loc_BB36A1: ConcatStr
  loc_BB36A2: FStStrNoPop var_118
  loc_BB36A5: LitStr "');"
  loc_BB36A8: ConcatStr
  loc_BB36A9: FStStr var_A4
  loc_BB36AC: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_BB36D1: FFree1Var var_E4 = ""
  loc_BB36D4: ILdRf var_A4
  loc_BB36D7: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, CantImpu, ImunImpu, LiquImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_BB36DA: ConcatStr
  loc_BB36DB: FStStrNoPop var_A8
  loc_BB36DE: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, '"
  loc_BB36E1: ConcatStr
  loc_BB36E2: FStStrNoPop var_AC
  loc_BB36E5: ILdRf var_90
  loc_BB36E8: ConcatStr
  loc_BB36E9: FStStrNoPop var_B0
  loc_BB36EC: LitStr "', '"
  loc_BB36EF: ConcatStr
  loc_BB36F0: FStStrNoPop var_B4
  loc_BB36F3: ILdRf Transferencia5etapas
  loc_BB36F6: ConcatStr
  loc_BB36F7: FStStrNoPop var_E8
  loc_BB36FA: LitStr "', "
  loc_BB36FD: ConcatStr
  loc_BB36FE: FStStrNoPop var_EC
  loc_BB3701: ILdRf var_9C
  loc_BB3704: ConcatStr
  loc_BB3705: FStStrNoPop var_F0
  loc_BB3708: LitStr ", CodiInsu, '"
  loc_BB370B: ConcatStr
  loc_BB370C: FStStrNoPop var_F4
  loc_BB370F: ILdRf var_98
  loc_BB3712: ConcatStr
  loc_BB3713: FStStrNoPop var_F8
  loc_BB3716: LitStr "', "
  loc_BB3719: ConcatStr
  loc_BB371A: FStStrNoPop var_FC
  loc_BB371D: LitI4 1
  loc_BB3722: LitI4 1
  loc_BB3727: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_BB372C: FStVarCopyObj var_E4
  loc_BB372F: FLdRfVar var_E4
  loc_BB3732: FLdRfVar var_8C
  loc_BB3735: CVarRef
  loc_BB373A: ImpAdCallI2 Format$(, )
  loc_BB373F: FStStrNoPop var_100
  loc_BB3742: ConcatStr
  loc_BB3743: FStStrNoPop var_104
  loc_BB3746: LitStr ", ExorImpu, ExpeImpu, NumeLiqu, 1 CantImpu, "
  loc_BB3749: ConcatStr
  loc_BB374A: FStStrNoPop var_10C
  loc_BB374D: ILdRf var_A0
  loc_BB3750: CR8Str
  loc_BB3752: LitI2_Byte &HFF
  loc_BB3754: CR8I2
  loc_BB3755: MulR8
  loc_BB3756: CStrR8
  loc_BB3758: FStStrNoPop var_108
  loc_BB375B: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB3760: FStStrNoPop var_110
  loc_BB3763: ConcatStr
  loc_BB3764: FStStrNoPop var_114
  loc_BB3767: LitStr " ImunImpu, "
  loc_BB376A: ConcatStr
  loc_BB376B: FStStrNoPop var_11C
  loc_BB376E: ILdRf var_A0
  loc_BB3771: CR8Str
  loc_BB3773: LitI2_Byte &HFF
  loc_BB3775: CR8I2
  loc_BB3776: MulR8
  loc_BB3777: CStrR8
  loc_BB3779: FStStrNoPop var_118
  loc_BB377C: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB3781: FStStrNoPop var_120
  loc_BB3784: ConcatStr
  loc_BB3785: FStStrNoPop var_124
  loc_BB3788: LitStr " LiquImpu, DetaImpu, CucuPers, "
  loc_BB378B: ConcatStr
  loc_BB378C: FStStrNoPop var_128
  loc_BB378F: ILdRf AjusImpu
  loc_BB3792: CStrI4
  loc_BB3794: FStStrNoPop var_12C
  loc_BB3797: ConcatStr
  loc_BB3798: FStStrNoPop var_130
  loc_BB379B: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_BB379E: ConcatStr
  loc_BB379F: FStStrNoPop var_134
  loc_BB37A2: ImpAdLdI4 MemVar_C3D03C
  loc_BB37A5: ConcatStr
  loc_BB37A6: FStStrNoPop var_138
  loc_BB37A9: LitStr "'"
  loc_BB37AC: ConcatStr
  loc_BB37AD: FStStrNoPop var_13C
  loc_BB37B0: LitStr " FROM imputacion"
  loc_BB37B3: ConcatStr
  loc_BB37B4: FStStrNoPop var_140
  loc_BB37B7: LitStr " WHERE PeriInfo = "
  loc_BB37BA: ConcatStr
  loc_BB37BB: FStStrNoPop var_144
  loc_BB37BE: ImpAdLdI2 MemVar_C3D064
  loc_BB37C1: CStrUI1
  loc_BB37C3: FStStrNoPop var_148
  loc_BB37C6: ConcatStr
  loc_BB37C7: FStStrNoPop var_14C
  loc_BB37CA: LitStr " AND IdImpu = "
  loc_BB37CD: ConcatStr
  loc_BB37CE: FStStrNoPop var_150
  loc_BB37D1: ILdRf IdImpu
  loc_BB37D4: CStrI4
  loc_BB37D6: FStStrNoPop var_154
  loc_BB37D9: ConcatStr
  loc_BB37DA: FStStrNoPop var_158
  loc_BB37DD: LitStr ";"
  loc_BB37E0: ConcatStr
  loc_BB37E1: FStStr var_A4
  loc_BB37E4: FFreeStr var_150 = "": var_154 = "": var_158 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_BB3829: FFree1Var var_E4 = ""
  loc_BB382C: ILdRf var_A4
  loc_BB382F: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, MapaImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_BB3832: ConcatStr
  loc_BB3833: FStStrNoPop var_A8
  loc_BB3836: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, '"
  loc_BB3839: ConcatStr
  loc_BB383A: FStStrNoPop var_AC
  loc_BB383D: ILdRf var_90
  loc_BB3840: ConcatStr
  loc_BB3841: FStStrNoPop var_B0
  loc_BB3844: LitStr "', '"
  loc_BB3847: ConcatStr
  loc_BB3848: FStStrNoPop var_B4
  loc_BB384B: ILdRf Transferencia5etapas
  loc_BB384E: ConcatStr
  loc_BB384F: FStStrNoPop var_E8
  loc_BB3852: LitStr "', "
  loc_BB3855: ConcatStr
  loc_BB3856: FStStrNoPop var_EC
  loc_BB3859: ILdRf var_9C
  loc_BB385C: ConcatStr
  loc_BB385D: FStStrNoPop var_F0
  loc_BB3860: LitStr ", CodiInsu, '"
  loc_BB3863: ConcatStr
  loc_BB3864: FStStrNoPop var_F4
  loc_BB3867: ILdRf var_98
  loc_BB386A: ConcatStr
  loc_BB386B: FStStrNoPop var_F8
  loc_BB386E: LitStr "', "
  loc_BB3871: ConcatStr
  loc_BB3872: FStStrNoPop var_FC
  loc_BB3875: LitI4 1
  loc_BB387A: LitI4 1
  loc_BB387F: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_BB3884: FStVarCopyObj var_E4
  loc_BB3887: FLdRfVar var_E4
  loc_BB388A: FLdRfVar var_8C
  loc_BB388D: CVarRef
  loc_BB3892: ImpAdCallI2 Format$(, )
  loc_BB3897: FStStrNoPop var_100
  loc_BB389A: ConcatStr
  loc_BB389B: FStStrNoPop var_104
  loc_BB389E: LitStr ", ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, 1 CantImpu, "
  loc_BB38A1: ConcatStr
  loc_BB38A2: FStStrNoPop var_10C
  loc_BB38A5: ILdRf var_A0
  loc_BB38A8: CR8Str
  loc_BB38AA: LitI2_Byte &HFF
  loc_BB38AC: CR8I2
  loc_BB38AD: MulR8
  loc_BB38AE: CStrR8
  loc_BB38B0: FStStrNoPop var_108
  loc_BB38B3: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB38B8: FStStrNoPop var_110
  loc_BB38BB: ConcatStr
  loc_BB38BC: FStStrNoPop var_114
  loc_BB38BF: LitStr " ImunImpu, "
  loc_BB38C2: ConcatStr
  loc_BB38C3: FStStrNoPop var_11C
  loc_BB38C6: ILdRf var_A0
  loc_BB38C9: CR8Str
  loc_BB38CB: LitI2_Byte &HFF
  loc_BB38CD: CR8I2
  loc_BB38CE: MulR8
  loc_BB38CF: CStrR8
  loc_BB38D1: FStStrNoPop var_118
  loc_BB38D4: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB38D9: FStStrNoPop var_120
  loc_BB38DC: ConcatStr
  loc_BB38DD: FStStrNoPop var_124
  loc_BB38E0: LitStr " MapaImpu, DetaImpu, CucuPers, "
  loc_BB38E3: ConcatStr
  loc_BB38E4: FStStrNoPop var_128
  loc_BB38E7: ILdRf AjusImpu
  loc_BB38EA: CStrI4
  loc_BB38EC: FStStrNoPop var_12C
  loc_BB38EF: ConcatStr
  loc_BB38F0: FStStrNoPop var_130
  loc_BB38F3: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_BB38F6: ConcatStr
  loc_BB38F7: FStStrNoPop var_134
  loc_BB38FA: ImpAdLdI4 MemVar_C3D03C
  loc_BB38FD: ConcatStr
  loc_BB38FE: FStStrNoPop var_138
  loc_BB3901: LitStr "'"
  loc_BB3904: ConcatStr
  loc_BB3905: FStStrNoPop var_13C
  loc_BB3908: LitStr " FROM imputacion"
  loc_BB390B: ConcatStr
  loc_BB390C: FStStrNoPop var_140
  loc_BB390F: LitStr " WHERE PeriInfo = "
  loc_BB3912: ConcatStr
  loc_BB3913: FStStrNoPop var_144
  loc_BB3916: ImpAdLdI2 MemVar_C3D064
  loc_BB3919: CStrUI1
  loc_BB391B: FStStrNoPop var_148
  loc_BB391E: ConcatStr
  loc_BB391F: FStStrNoPop var_14C
  loc_BB3922: LitStr " AND IdImpu = "
  loc_BB3925: ConcatStr
  loc_BB3926: FStStrNoPop var_150
  loc_BB3929: ILdRf IdImpu
  loc_BB392C: CStrI4
  loc_BB392E: FStStrNoPop var_154
  loc_BB3931: ConcatStr
  loc_BB3932: FStStrNoPop var_158
  loc_BB3935: LitStr ";"
  loc_BB3938: ConcatStr
  loc_BB3939: FStStr var_A4
  loc_BB393C: FFreeStr var_150 = "": var_154 = "": var_158 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_BB3981: FFree1Var var_E4 = ""
  loc_BB3984: ILdRf var_A4
  loc_BB3987: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, PagaImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_BB398A: ConcatStr
  loc_BB398B: FStStrNoPop var_A8
  loc_BB398E: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, '"
  loc_BB3991: ConcatStr
  loc_BB3992: FStStrNoPop var_AC
  loc_BB3995: ILdRf var_90
  loc_BB3998: ConcatStr
  loc_BB3999: FStStrNoPop var_B0
  loc_BB399C: LitStr "', '"
  loc_BB399F: ConcatStr
  loc_BB39A0: FStStrNoPop var_B4
  loc_BB39A3: ILdRf Transferencia5etapas
  loc_BB39A6: ConcatStr
  loc_BB39A7: FStStrNoPop var_E8
  loc_BB39AA: LitStr "', "
  loc_BB39AD: ConcatStr
  loc_BB39AE: FStStrNoPop var_EC
  loc_BB39B1: ILdRf var_9C
  loc_BB39B4: ConcatStr
  loc_BB39B5: FStStrNoPop var_F0
  loc_BB39B8: LitStr ", CodiInsu, '"
  loc_BB39BB: ConcatStr
  loc_BB39BC: FStStrNoPop var_F4
  loc_BB39BF: ILdRf var_98
  loc_BB39C2: ConcatStr
  loc_BB39C3: FStStrNoPop var_F8
  loc_BB39C6: LitStr "', "
  loc_BB39C9: ConcatStr
  loc_BB39CA: FStStrNoPop var_FC
  loc_BB39CD: LitI4 1
  loc_BB39D2: LitI4 1
  loc_BB39D7: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_BB39DC: FStVarCopyObj var_E4
  loc_BB39DF: FLdRfVar var_E4
  loc_BB39E2: FLdRfVar var_8C
  loc_BB39E5: CVarRef
  loc_BB39EA: ImpAdCallI2 Format$(, )
  loc_BB39EF: FStStrNoPop var_100
  loc_BB39F2: ConcatStr
  loc_BB39F3: FStStrNoPop var_104
  loc_BB39F6: LitStr ", ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, 1 CantImpu, "
  loc_BB39F9: ConcatStr
  loc_BB39FA: FStStrNoPop var_10C
  loc_BB39FD: ILdRf var_A0
  loc_BB3A00: CR8Str
  loc_BB3A02: LitI2_Byte &HFF
  loc_BB3A04: CR8I2
  loc_BB3A05: MulR8
  loc_BB3A06: CStrR8
  loc_BB3A08: FStStrNoPop var_108
  loc_BB3A0B: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB3A10: FStStrNoPop var_110
  loc_BB3A13: ConcatStr
  loc_BB3A14: FStStrNoPop var_114
  loc_BB3A17: LitStr " ImunImpu, "
  loc_BB3A1A: ConcatStr
  loc_BB3A1B: FStStrNoPop var_11C
  loc_BB3A1E: ILdRf var_A0
  loc_BB3A21: CR8Str
  loc_BB3A23: LitI2_Byte &HFF
  loc_BB3A25: CR8I2
  loc_BB3A26: MulR8
  loc_BB3A27: CStrR8
  loc_BB3A29: FStStrNoPop var_118
  loc_BB3A2C: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB3A31: FStStrNoPop var_120
  loc_BB3A34: ConcatStr
  loc_BB3A35: FStStrNoPop var_124
  loc_BB3A38: LitStr " PagaImpu, DetaImpu, CucuPers, "
  loc_BB3A3B: ConcatStr
  loc_BB3A3C: FStStrNoPop var_128
  loc_BB3A3F: ILdRf AjusImpu
  loc_BB3A42: CStrI4
  loc_BB3A44: FStStrNoPop var_12C
  loc_BB3A47: ConcatStr
  loc_BB3A48: FStStrNoPop var_130
  loc_BB3A4B: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_BB3A4E: ConcatStr
  loc_BB3A4F: FStStrNoPop var_134
  loc_BB3A52: ImpAdLdI4 MemVar_C3D03C
  loc_BB3A55: ConcatStr
  loc_BB3A56: FStStrNoPop var_138
  loc_BB3A59: LitStr "'"
  loc_BB3A5C: ConcatStr
  loc_BB3A5D: FStStrNoPop var_13C
  loc_BB3A60: LitStr " FROM imputacion"
  loc_BB3A63: ConcatStr
  loc_BB3A64: FStStrNoPop var_140
  loc_BB3A67: LitStr " WHERE PeriInfo = "
  loc_BB3A6A: ConcatStr
  loc_BB3A6B: FStStrNoPop var_144
  loc_BB3A6E: ImpAdLdI2 MemVar_C3D064
  loc_BB3A71: CStrUI1
  loc_BB3A73: FStStrNoPop var_148
  loc_BB3A76: ConcatStr
  loc_BB3A77: FStStrNoPop var_14C
  loc_BB3A7A: LitStr " AND IdImpu = "
  loc_BB3A7D: ConcatStr
  loc_BB3A7E: FStStrNoPop var_150
  loc_BB3A81: ILdRf IdImpu
  loc_BB3A84: CStrI4
  loc_BB3A86: FStStrNoPop var_154
  loc_BB3A89: ConcatStr
  loc_BB3A8A: FStStrNoPop var_158
  loc_BB3A8D: LitStr ";"
  loc_BB3A90: ConcatStr
  loc_BB3A91: FStStr var_A4
  loc_BB3A94: FFreeStr var_150 = "": var_154 = "": var_158 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_BB3AD9: FFree1Var var_E4 = ""
  loc_BB3ADC: ILdRf var_A4
  loc_BB3ADF: LitStr "COMMIT;"
  loc_BB3AE2: ConcatStr
  loc_BB3AE3: FStStr var_A4
  loc_BB3AE6: ILdRf var_A4
  loc_BB3AE9: Call EjecutarRsCls(from_stack_1v)
  loc_BB3AEE: LitI4 1
  loc_BB3AF3: FStR4 var_88
  loc_BB3AF6: FLdI2 HaceRequery
  loc_BB3AF9: BranchF loc_BB3B0C
  loc_BB3AFC: LitI2_Byte 0
  loc_BB3AFE: PopTmpLdAd2 var_15E
  loc_BB3B01: ILdRf var_88
  loc_BB3B04: ImpAdLdI2 MemVar_C3D064
  loc_BB3B07: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BB3B0C: ExitProcCbHresult
  loc_BB3B12: LitStr "ROLLBACK;"
  loc_BB3B15: Call EjecutarRsCls(from_stack_1v)
  loc_BB3B1A: LitI4 0
  loc_BB3B1F: FStR4 var_88
  loc_BB3B22: ExitProcCbHresult
End Function

Public Function ImputarComisionesBcriasTesoreria(IdImpu, FechaHasta, PagaImpu, AjusImpu, CodiCuco, HaceRequery) 'B1204C
  'Data Table: 4AFD00
  loc_B1183C: ILdRf FechaHasta
  loc_B1183F: FStStrCopy var_8C
  loc_B11842: ILdRf PagaImpu
  loc_B11845: FStStrCopy var_90
  loc_B11848: ILdRf CodiCuco
  loc_B1184B: FStStrCopy ImputarComisionesBcriasTesoreria
  loc_B1184E: LitStr "START TRANSACTION;"
  loc_B11851: FStStrCopy var_98
  loc_B11854: OnErrorGoto loc_B12034
  loc_B11857: LitStr "SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_B1185A: ImpAdLdI2 MemVar_C3D064
  loc_B1185D: CStrUI1
  loc_B1185F: FStStrNoPop var_9C
  loc_B11862: ConcatStr
  loc_B11863: FStStrNoPop var_A0
  loc_B11866: LitStr " LIMIT 1;"
  loc_B11869: ConcatStr
  loc_B1186A: FStStr var_98
  loc_B1186D: FFreeStr var_9C = ""
  loc_B11874: ILdRf var_98
  loc_B11877: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, DefiImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, AltaUsua)"
  loc_B1187A: ConcatStr
  loc_B1187B: FStStrNoPop var_9C
  loc_B1187E: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B11881: ConcatStr
  loc_B11882: FStStrNoPop var_A0
  loc_B11885: LitI4 1
  loc_B1188A: LitI4 1
  loc_B1188F: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_B11894: FStVarCopyObj var_D0
  loc_B11897: FLdRfVar var_D0
  loc_B1189A: FLdRfVar var_8C
  loc_B1189D: CVarRef
  loc_B118A2: ImpAdCallI2 Format$(, )
  loc_B118A7: FStStrNoPop var_D4
  loc_B118AA: ConcatStr
  loc_B118AB: FStStrNoPop var_D8
  loc_B118AE: LitStr ", ExorImpu, 1 CantImpu, "
  loc_B118B1: ConcatStr
  loc_B118B2: FStStrNoPop var_110
  loc_B118B5: LitI4 1
  loc_B118BA: LitI4 1
  loc_B118BF: LitVarStr var_F8, "#########.##"
  loc_B118C4: FStVarCopyObj var_108
  loc_B118C7: FLdRfVar var_108
  loc_B118CA: FLdRfVar var_90
  loc_B118CD: CVarRef
  loc_B118D2: ImpAdCallI2 Format$(, )
  loc_B118D7: FStStrNoPop var_10C
  loc_B118DA: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B118DF: FStStrNoPop var_114
  loc_B118E2: ConcatStr
  loc_B118E3: FStStrNoPop var_118
  loc_B118E6: LitStr " ImunImpu, "
  loc_B118E9: ConcatStr
  loc_B118EA: FStStrNoPop var_150
  loc_B118ED: LitI4 1
  loc_B118F2: LitI4 1
  loc_B118F7: LitVarStr var_138, "#########.##"
  loc_B118FC: FStVarCopyObj var_148
  loc_B118FF: FLdRfVar var_148
  loc_B11902: FLdRfVar var_90
  loc_B11905: CVarRef
  loc_B1190A: ImpAdCallI2 Format$(, )
  loc_B1190F: FStStrNoPop var_14C
  loc_B11912: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B11917: FStStrNoPop var_154
  loc_B1191A: ConcatStr
  loc_B1191B: FStStrNoPop var_158
  loc_B1191E: LitStr " DefiImpu, DetaImpu, '"
  loc_B11921: ConcatStr
  loc_B11922: FStStrNoPop var_15C
  loc_B11925: LitI4 0
  loc_B1192A: LitI4 -1
  loc_B1192F: LitI4 1
  loc_B11934: LitStr vbNullString
  loc_B11937: LitStr "-"
  loc_B1193A: LitStr "30-99914707-7"
  loc_B1193D: ImpAdCallI2 Replace(, , , , , )
  loc_B11942: FStStrNoPop var_160
  loc_B11945: ConcatStr
  loc_B11946: FStStrNoPop var_164
  loc_B11949: LitStr "' CucuPers, "
  loc_B1194C: ConcatStr
  loc_B1194D: FStStrNoPop var_168
  loc_B11950: ILdRf AjusImpu
  loc_B11953: CStrI4
  loc_B11955: FStStrNoPop var_16C
  loc_B11958: ConcatStr
  loc_B11959: FStStrNoPop var_170
  loc_B1195C: LitStr ", CodiNope, Item, Altern, CodiOrco, '"
  loc_B1195F: ConcatStr
  loc_B11960: FStStrNoPop var_174
  loc_B11963: ImpAdLdI4 MemVar_C3D03C
  loc_B11966: ConcatStr
  loc_B11967: FStStrNoPop var_178
  loc_B1196A: LitStr "'"
  loc_B1196D: ConcatStr
  loc_B1196E: FStStrNoPop var_17C
  loc_B11971: LitStr " FROM imputacion"
  loc_B11974: ConcatStr
  loc_B11975: FStStrNoPop var_180
  loc_B11978: LitStr " WHERE PeriInfo = "
  loc_B1197B: ConcatStr
  loc_B1197C: FStStrNoPop var_184
  loc_B1197F: ImpAdLdI2 MemVar_C3D064
  loc_B11982: CStrUI1
  loc_B11984: FStStrNoPop var_188
  loc_B11987: ConcatStr
  loc_B11988: FStStrNoPop var_18C
  loc_B1198B: LitStr " AND IdImpu = "
  loc_B1198E: ConcatStr
  loc_B1198F: FStStrNoPop var_190
  loc_B11992: ILdRf IdImpu
  loc_B11995: CStrI4
  loc_B11997: FStStrNoPop var_194
  loc_B1199A: ConcatStr
  loc_B1199B: FStStrNoPop var_198
  loc_B1199E: LitStr ";"
  loc_B119A1: ConcatStr
  loc_B119A2: FStStr var_98
  loc_B119A5: FFreeStr var_9C = "": var_A0 = "": var_D4 = "": var_D8 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_B119E0: FFreeVar var_D0 = "": var_108 = ""
  loc_B119E9: ILdRf var_98
  loc_B119EC: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, CantImpu, ImunImpu, DeveImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_B119EF: ConcatStr
  loc_B119F0: FStStrNoPop var_9C
  loc_B119F3: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B119F6: ConcatStr
  loc_B119F7: FStStrNoPop var_A0
  loc_B119FA: LitI4 1
  loc_B119FF: LitI4 1
  loc_B11A04: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_B11A09: FStVarCopyObj var_D0
  loc_B11A0C: FLdRfVar var_D0
  loc_B11A0F: FLdRfVar var_8C
  loc_B11A12: CVarRef
  loc_B11A17: ImpAdCallI2 Format$(, )
  loc_B11A1C: FStStrNoPop var_D4
  loc_B11A1F: ConcatStr
  loc_B11A20: FStStrNoPop var_D8
  loc_B11A23: LitStr ", ExorImpu, ExorImpu AS ExpeImpu, 1 CantImpu, "
  loc_B11A26: ConcatStr
  loc_B11A27: FStStrNoPop var_110
  loc_B11A2A: LitI4 1
  loc_B11A2F: LitI4 1
  loc_B11A34: LitVarStr var_F8, "#########.##"
  loc_B11A39: FStVarCopyObj var_108
  loc_B11A3C: FLdRfVar var_108
  loc_B11A3F: FLdRfVar var_90
  loc_B11A42: CVarRef
  loc_B11A47: ImpAdCallI2 Format$(, )
  loc_B11A4C: FStStrNoPop var_10C
  loc_B11A4F: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B11A54: FStStrNoPop var_114
  loc_B11A57: ConcatStr
  loc_B11A58: FStStrNoPop var_118
  loc_B11A5B: LitStr " ImunImpu, "
  loc_B11A5E: ConcatStr
  loc_B11A5F: FStStrNoPop var_150
  loc_B11A62: LitI4 1
  loc_B11A67: LitI4 1
  loc_B11A6C: LitVarStr var_138, "#########.##"
  loc_B11A71: FStVarCopyObj var_148
  loc_B11A74: FLdRfVar var_148
  loc_B11A77: FLdRfVar var_90
  loc_B11A7A: CVarRef
  loc_B11A7F: ImpAdCallI2 Format$(, )
  loc_B11A84: FStStrNoPop var_14C
  loc_B11A87: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B11A8C: FStStrNoPop var_154
  loc_B11A8F: ConcatStr
  loc_B11A90: FStStrNoPop var_158
  loc_B11A93: LitStr " DeveImpu, DetaImpu, '"
  loc_B11A96: ConcatStr
  loc_B11A97: FStStrNoPop var_15C
  loc_B11A9A: LitI4 0
  loc_B11A9F: LitI4 -1
  loc_B11AA4: LitI4 1
  loc_B11AA9: LitStr vbNullString
  loc_B11AAC: LitStr "-"
  loc_B11AAF: LitStr "30-99914707-7"
  loc_B11AB2: ImpAdCallI2 Replace(, , , , , )
  loc_B11AB7: FStStrNoPop var_160
  loc_B11ABA: ConcatStr
  loc_B11ABB: FStStrNoPop var_164
  loc_B11ABE: LitStr "' CucuPers, "
  loc_B11AC1: ConcatStr
  loc_B11AC2: FStStrNoPop var_168
  loc_B11AC5: ILdRf AjusImpu
  loc_B11AC8: CStrI4
  loc_B11ACA: FStStrNoPop var_16C
  loc_B11ACD: ConcatStr
  loc_B11ACE: FStStrNoPop var_170
  loc_B11AD1: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, 's/f000000000000' AS NumeFact, FefaDeve, '"
  loc_B11AD4: ConcatStr
  loc_B11AD5: FStStrNoPop var_174
  loc_B11AD8: ImpAdLdI4 MemVar_C3D03C
  loc_B11ADB: ConcatStr
  loc_B11ADC: FStStrNoPop var_178
  loc_B11ADF: LitStr "'"
  loc_B11AE2: ConcatStr
  loc_B11AE3: FStStrNoPop var_17C
  loc_B11AE6: LitStr " FROM imputacion"
  loc_B11AE9: ConcatStr
  loc_B11AEA: FStStrNoPop var_180
  loc_B11AED: LitStr " WHERE PeriInfo = "
  loc_B11AF0: ConcatStr
  loc_B11AF1: FStStrNoPop var_184
  loc_B11AF4: ImpAdLdI2 MemVar_C3D064
  loc_B11AF7: CStrUI1
  loc_B11AF9: FStStrNoPop var_188
  loc_B11AFC: ConcatStr
  loc_B11AFD: FStStrNoPop var_18C
  loc_B11B00: LitStr " AND IdImpu = "
  loc_B11B03: ConcatStr
  loc_B11B04: FStStrNoPop var_190
  loc_B11B07: ILdRf IdImpu
  loc_B11B0A: CStrI4
  loc_B11B0C: FStStrNoPop var_194
  loc_B11B0F: ConcatStr
  loc_B11B10: FStStrNoPop var_198
  loc_B11B13: LitStr ";"
  loc_B11B16: ConcatStr
  loc_B11B17: FStStr var_98
  loc_B11B1A: FFreeStr var_9C = "": var_A0 = "": var_D4 = "": var_D8 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_B11B55: FFreeVar var_D0 = "": var_108 = ""
  loc_B11B5E: ILdRf var_98
  loc_B11B61: LitStr "INSERT INTO devengado (PeriInfo, IdImpu, CodiCuco)"
  loc_B11B64: ConcatStr
  loc_B11B65: FStStrNoPop var_9C
  loc_B11B68: LitStr " VALUES ("
  loc_B11B6B: ConcatStr
  loc_B11B6C: FStStrNoPop var_A0
  loc_B11B6F: ImpAdLdI2 MemVar_C3D064
  loc_B11B72: CStrUI1
  loc_B11B74: FStStrNoPop var_D4
  loc_B11B77: ConcatStr
  loc_B11B78: FStStrNoPop var_D8
  loc_B11B7B: LitStr ", @idimpu, '"
  loc_B11B7E: ConcatStr
  loc_B11B7F: FStStrNoPop var_10C
  loc_B11B82: ILdRf ImputarComisionesBcriasTesoreria
  loc_B11B85: ConcatStr
  loc_B11B86: FStStrNoPop var_110
  loc_B11B89: LitStr "');"
  loc_B11B8C: ConcatStr
  loc_B11B8D: FStStr var_98
  loc_B11B90: FFreeStr var_9C = "": var_A0 = "": var_D4 = "": var_D8 = "": var_10C = ""
  loc_B11B9F: ILdRf var_98
  loc_B11BA2: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, CantImpu, ImunImpu, LiquImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_B11BA5: ConcatStr
  loc_B11BA6: FStStrNoPop var_9C
  loc_B11BA9: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B11BAC: ConcatStr
  loc_B11BAD: FStStrNoPop var_A0
  loc_B11BB0: LitI4 1
  loc_B11BB5: LitI4 1
  loc_B11BBA: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_B11BBF: FStVarCopyObj var_D0
  loc_B11BC2: FLdRfVar var_D0
  loc_B11BC5: FLdRfVar var_8C
  loc_B11BC8: CVarRef
  loc_B11BCD: ImpAdCallI2 Format$(, )
  loc_B11BD2: FStStrNoPop var_D4
  loc_B11BD5: ConcatStr
  loc_B11BD6: FStStrNoPop var_D8
  loc_B11BD9: LitStr ", ExorImpu, ExorImpu AS ExpeImpu, NumeLiqu, 1 CantImpu, "
  loc_B11BDC: ConcatStr
  loc_B11BDD: FStStrNoPop var_110
  loc_B11BE0: LitI4 1
  loc_B11BE5: LitI4 1
  loc_B11BEA: LitVarStr var_F8, "#########.##"
  loc_B11BEF: FStVarCopyObj var_108
  loc_B11BF2: FLdRfVar var_108
  loc_B11BF5: FLdRfVar var_90
  loc_B11BF8: CVarRef
  loc_B11BFD: ImpAdCallI2 Format$(, )
  loc_B11C02: FStStrNoPop var_10C
  loc_B11C05: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B11C0A: FStStrNoPop var_114
  loc_B11C0D: ConcatStr
  loc_B11C0E: FStStrNoPop var_118
  loc_B11C11: LitStr " ImunImpu, "
  loc_B11C14: ConcatStr
  loc_B11C15: FStStrNoPop var_150
  loc_B11C18: LitI4 1
  loc_B11C1D: LitI4 1
  loc_B11C22: LitVarStr var_138, "#########.##"
  loc_B11C27: FStVarCopyObj var_148
  loc_B11C2A: FLdRfVar var_148
  loc_B11C2D: FLdRfVar var_90
  loc_B11C30: CVarRef
  loc_B11C35: ImpAdCallI2 Format$(, )
  loc_B11C3A: FStStrNoPop var_14C
  loc_B11C3D: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B11C42: FStStrNoPop var_154
  loc_B11C45: ConcatStr
  loc_B11C46: FStStrNoPop var_158
  loc_B11C49: LitStr " LiquImpu, DetaImpu, '"
  loc_B11C4C: ConcatStr
  loc_B11C4D: FStStrNoPop var_15C
  loc_B11C50: LitI4 0
  loc_B11C55: LitI4 -1
  loc_B11C5A: LitI4 1
  loc_B11C5F: LitStr vbNullString
  loc_B11C62: LitStr "-"
  loc_B11C65: LitStr "30-99914707-7"
  loc_B11C68: ImpAdCallI2 Replace(, , , , , )
  loc_B11C6D: FStStrNoPop var_160
  loc_B11C70: ConcatStr
  loc_B11C71: FStStrNoPop var_164
  loc_B11C74: LitStr "' CucuPers, "
  loc_B11C77: ConcatStr
  loc_B11C78: FStStrNoPop var_168
  loc_B11C7B: ILdRf AjusImpu
  loc_B11C7E: CStrI4
  loc_B11C80: FStStrNoPop var_16C
  loc_B11C83: ConcatStr
  loc_B11C84: FStStrNoPop var_170
  loc_B11C87: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, 's/f000000000000' AS NumeFact, FefaDeve, '"
  loc_B11C8A: ConcatStr
  loc_B11C8B: FStStrNoPop var_174
  loc_B11C8E: ImpAdLdI4 MemVar_C3D03C
  loc_B11C91: ConcatStr
  loc_B11C92: FStStrNoPop var_178
  loc_B11C95: LitStr "'"
  loc_B11C98: ConcatStr
  loc_B11C99: FStStrNoPop var_17C
  loc_B11C9C: LitStr " FROM imputacion"
  loc_B11C9F: ConcatStr
  loc_B11CA0: FStStrNoPop var_180
  loc_B11CA3: LitStr " WHERE PeriInfo = "
  loc_B11CA6: ConcatStr
  loc_B11CA7: FStStrNoPop var_184
  loc_B11CAA: ImpAdLdI2 MemVar_C3D064
  loc_B11CAD: CStrUI1
  loc_B11CAF: FStStrNoPop var_188
  loc_B11CB2: ConcatStr
  loc_B11CB3: FStStrNoPop var_18C
  loc_B11CB6: LitStr " AND IdImpu = "
  loc_B11CB9: ConcatStr
  loc_B11CBA: FStStrNoPop var_190
  loc_B11CBD: ILdRf IdImpu
  loc_B11CC0: CStrI4
  loc_B11CC2: FStStrNoPop var_194
  loc_B11CC5: ConcatStr
  loc_B11CC6: FStStrNoPop var_198
  loc_B11CC9: LitStr ";"
  loc_B11CCC: ConcatStr
  loc_B11CCD: FStStr var_98
  loc_B11CD0: FFreeStr var_9C = "": var_A0 = "": var_D4 = "": var_D8 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_B11D0B: FFreeVar var_D0 = "": var_108 = ""
  loc_B11D14: ILdRf var_98
  loc_B11D17: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, MapaImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_B11D1A: ConcatStr
  loc_B11D1B: FStStrNoPop var_9C
  loc_B11D1E: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B11D21: ConcatStr
  loc_B11D22: FStStrNoPop var_A0
  loc_B11D25: LitI4 1
  loc_B11D2A: LitI4 1
  loc_B11D2F: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_B11D34: FStVarCopyObj var_D0
  loc_B11D37: FLdRfVar var_D0
  loc_B11D3A: FLdRfVar var_8C
  loc_B11D3D: CVarRef
  loc_B11D42: ImpAdCallI2 Format$(, )
  loc_B11D47: FStStrNoPop var_D4
  loc_B11D4A: ConcatStr
  loc_B11D4B: FStStrNoPop var_D8
  loc_B11D4E: LitStr ", ExorImpu, ExorImpu AS ExpeImpu, NumeLiqu, NumeOrpa, 1 CantImpu, "
  loc_B11D51: ConcatStr
  loc_B11D52: FStStrNoPop var_110
  loc_B11D55: LitI4 1
  loc_B11D5A: LitI4 1
  loc_B11D5F: LitVarStr var_F8, "#########.##"
  loc_B11D64: FStVarCopyObj var_108
  loc_B11D67: FLdRfVar var_108
  loc_B11D6A: FLdRfVar var_90
  loc_B11D6D: CVarRef
  loc_B11D72: ImpAdCallI2 Format$(, )
  loc_B11D77: FStStrNoPop var_10C
  loc_B11D7A: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B11D7F: FStStrNoPop var_114
  loc_B11D82: ConcatStr
  loc_B11D83: FStStrNoPop var_118
  loc_B11D86: LitStr " ImunImpu, "
  loc_B11D89: ConcatStr
  loc_B11D8A: FStStrNoPop var_150
  loc_B11D8D: LitI4 1
  loc_B11D92: LitI4 1
  loc_B11D97: LitVarStr var_138, "#########.##"
  loc_B11D9C: FStVarCopyObj var_148
  loc_B11D9F: FLdRfVar var_148
  loc_B11DA2: FLdRfVar var_90
  loc_B11DA5: CVarRef
  loc_B11DAA: ImpAdCallI2 Format$(, )
  loc_B11DAF: FStStrNoPop var_14C
  loc_B11DB2: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B11DB7: FStStrNoPop var_154
  loc_B11DBA: ConcatStr
  loc_B11DBB: FStStrNoPop var_158
  loc_B11DBE: LitStr " MapaImpu, DetaImpu, '"
  loc_B11DC1: ConcatStr
  loc_B11DC2: FStStrNoPop var_15C
  loc_B11DC5: LitI4 0
  loc_B11DCA: LitI4 -1
  loc_B11DCF: LitI4 1
  loc_B11DD4: LitStr vbNullString
  loc_B11DD7: LitStr "-"
  loc_B11DDA: LitStr "30-99914707-7"
  loc_B11DDD: ImpAdCallI2 Replace(, , , , , )
  loc_B11DE2: FStStrNoPop var_160
  loc_B11DE5: ConcatStr
  loc_B11DE6: FStStrNoPop var_164
  loc_B11DE9: LitStr "' CucuPers, "
  loc_B11DEC: ConcatStr
  loc_B11DED: FStStrNoPop var_168
  loc_B11DF0: ILdRf AjusImpu
  loc_B11DF3: CStrI4
  loc_B11DF5: FStStrNoPop var_16C
  loc_B11DF8: ConcatStr
  loc_B11DF9: FStStrNoPop var_170
  loc_B11DFC: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, 's/f000000000000' AS NumeFact, FefaDeve, '"
  loc_B11DFF: ConcatStr
  loc_B11E00: FStStrNoPop var_174
  loc_B11E03: ImpAdLdI4 MemVar_C3D03C
  loc_B11E06: ConcatStr
  loc_B11E07: FStStrNoPop var_178
  loc_B11E0A: LitStr "'"
  loc_B11E0D: ConcatStr
  loc_B11E0E: FStStrNoPop var_17C
  loc_B11E11: LitStr " FROM imputacion"
  loc_B11E14: ConcatStr
  loc_B11E15: FStStrNoPop var_180
  loc_B11E18: LitStr " WHERE PeriInfo = "
  loc_B11E1B: ConcatStr
  loc_B11E1C: FStStrNoPop var_184
  loc_B11E1F: ImpAdLdI2 MemVar_C3D064
  loc_B11E22: CStrUI1
  loc_B11E24: FStStrNoPop var_188
  loc_B11E27: ConcatStr
  loc_B11E28: FStStrNoPop var_18C
  loc_B11E2B: LitStr " AND IdImpu = "
  loc_B11E2E: ConcatStr
  loc_B11E2F: FStStrNoPop var_190
  loc_B11E32: ILdRf IdImpu
  loc_B11E35: CStrI4
  loc_B11E37: FStStrNoPop var_194
  loc_B11E3A: ConcatStr
  loc_B11E3B: FStStrNoPop var_198
  loc_B11E3E: LitStr ";"
  loc_B11E41: ConcatStr
  loc_B11E42: FStStr var_98
  loc_B11E45: FFreeStr var_9C = "": var_A0 = "": var_D4 = "": var_D8 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_B11E80: FFreeVar var_D0 = "": var_108 = ""
  loc_B11E89: ILdRf var_98
  loc_B11E8C: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, PagaImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_B11E8F: ConcatStr
  loc_B11E90: FStStrNoPop var_9C
  loc_B11E93: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B11E96: ConcatStr
  loc_B11E97: FStStrNoPop var_A0
  loc_B11E9A: LitI4 1
  loc_B11E9F: LitI4 1
  loc_B11EA4: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_B11EA9: FStVarCopyObj var_D0
  loc_B11EAC: FLdRfVar var_D0
  loc_B11EAF: FLdRfVar var_8C
  loc_B11EB2: CVarRef
  loc_B11EB7: ImpAdCallI2 Format$(, )
  loc_B11EBC: FStStrNoPop var_D4
  loc_B11EBF: ConcatStr
  loc_B11EC0: FStStrNoPop var_D8
  loc_B11EC3: LitStr ", ExorImpu, ExorImpu AS ExpeImpu, NumeLiqu, NumeOrpa, 1 CantImpu, "
  loc_B11EC6: ConcatStr
  loc_B11EC7: FStStrNoPop var_110
  loc_B11ECA: LitI4 1
  loc_B11ECF: LitI4 1
  loc_B11ED4: LitVarStr var_F8, "#########.##"
  loc_B11ED9: FStVarCopyObj var_108
  loc_B11EDC: FLdRfVar var_108
  loc_B11EDF: FLdRfVar var_90
  loc_B11EE2: CVarRef
  loc_B11EE7: ImpAdCallI2 Format$(, )
  loc_B11EEC: FStStrNoPop var_10C
  loc_B11EEF: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B11EF4: FStStrNoPop var_114
  loc_B11EF7: ConcatStr
  loc_B11EF8: FStStrNoPop var_118
  loc_B11EFB: LitStr " ImunImpu, "
  loc_B11EFE: ConcatStr
  loc_B11EFF: FStStrNoPop var_150
  loc_B11F02: LitI4 1
  loc_B11F07: LitI4 1
  loc_B11F0C: LitVarStr var_138, "#########.##"
  loc_B11F11: FStVarCopyObj var_148
  loc_B11F14: FLdRfVar var_148
  loc_B11F17: FLdRfVar var_90
  loc_B11F1A: CVarRef
  loc_B11F1F: ImpAdCallI2 Format$(, )
  loc_B11F24: FStStrNoPop var_14C
  loc_B11F27: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B11F2C: FStStrNoPop var_154
  loc_B11F2F: ConcatStr
  loc_B11F30: FStStrNoPop var_158
  loc_B11F33: LitStr " PagaImpu, DetaImpu, '"
  loc_B11F36: ConcatStr
  loc_B11F37: FStStrNoPop var_15C
  loc_B11F3A: LitI4 0
  loc_B11F3F: LitI4 -1
  loc_B11F44: LitI4 1
  loc_B11F49: LitStr vbNullString
  loc_B11F4C: LitStr "-"
  loc_B11F4F: LitStr "30-99914707-7"
  loc_B11F52: ImpAdCallI2 Replace(, , , , , )
  loc_B11F57: FStStrNoPop var_160
  loc_B11F5A: ConcatStr
  loc_B11F5B: FStStrNoPop var_164
  loc_B11F5E: LitStr "' CucuPers, "
  loc_B11F61: ConcatStr
  loc_B11F62: FStStrNoPop var_168
  loc_B11F65: ILdRf AjusImpu
  loc_B11F68: CStrI4
  loc_B11F6A: FStStrNoPop var_16C
  loc_B11F6D: ConcatStr
  loc_B11F6E: FStStrNoPop var_170
  loc_B11F71: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, 's/f000000000000' AS NumeFact, FefaDeve, '"
  loc_B11F74: ConcatStr
  loc_B11F75: FStStrNoPop var_174
  loc_B11F78: ImpAdLdI4 MemVar_C3D03C
  loc_B11F7B: ConcatStr
  loc_B11F7C: FStStrNoPop var_178
  loc_B11F7F: LitStr "'"
  loc_B11F82: ConcatStr
  loc_B11F83: FStStrNoPop var_17C
  loc_B11F86: LitStr " FROM imputacion"
  loc_B11F89: ConcatStr
  loc_B11F8A: FStStrNoPop var_180
  loc_B11F8D: LitStr " WHERE PeriInfo = "
  loc_B11F90: ConcatStr
  loc_B11F91: FStStrNoPop var_184
  loc_B11F94: ImpAdLdI2 MemVar_C3D064
  loc_B11F97: CStrUI1
  loc_B11F99: FStStrNoPop var_188
  loc_B11F9C: ConcatStr
  loc_B11F9D: FStStrNoPop var_18C
  loc_B11FA0: LitStr " AND IdImpu = "
  loc_B11FA3: ConcatStr
  loc_B11FA4: FStStrNoPop var_190
  loc_B11FA7: ILdRf IdImpu
  loc_B11FAA: CStrI4
  loc_B11FAC: FStStrNoPop var_194
  loc_B11FAF: ConcatStr
  loc_B11FB0: FStStrNoPop var_198
  loc_B11FB3: LitStr ";"
  loc_B11FB6: ConcatStr
  loc_B11FB7: FStStr var_98
  loc_B11FBA: FFreeStr var_9C = "": var_A0 = "": var_D4 = "": var_D8 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_B11FF5: FFreeVar var_D0 = "": var_108 = ""
  loc_B11FFE: ILdRf var_98
  loc_B12001: LitStr "COMMIT;"
  loc_B12004: ConcatStr
  loc_B12005: FStStr var_98
  loc_B12008: ILdRf var_98
  loc_B1200B: Call EjecutarRsCls(from_stack_1v)
  loc_B12010: LitI4 1
  loc_B12015: FStR4 var_88
  loc_B12018: FLdI2 HaceRequery
  loc_B1201B: BranchF loc_B1202E
  loc_B1201E: LitI2_Byte 0
  loc_B12020: PopTmpLdAd2 var_19A
  loc_B12023: ILdRf var_88
  loc_B12026: ImpAdLdI2 MemVar_C3D064
  loc_B12029: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B1202E: ExitProcCbHresult
  loc_B12034: LitStr "ROLLBACK;"
  loc_B12037: Call EjecutarRsCls(from_stack_1v)
  loc_B1203C: LitI4 0
  loc_B12041: FStR4 var_88
  loc_B12044: ExitProcCbHresult
  loc_B1204A: LdFixedStr
End Function

Public Function ImputarComisionesEntesRecaudadores(IdImpu, FechaDesde, FechaHasta, PagaImpu, AjusImpu, CodiCuco, iCodiTimbComER_bcoDebito, iCodiTimbComER_bcoCredito, HaceRequery) 'B67914
  'Data Table: 4AFD00
  loc_B66E08: ILdRf FechaDesde
  loc_B66E0B: FStStrCopy var_8C
  loc_B66E0E: ILdRf FechaHasta
  loc_B66E11: FStStrCopy var_90
  loc_B66E14: ILdRf PagaImpu
  loc_B66E17: FStStrCopy ImputarComisionesEntesRecaudadores
  loc_B66E1A: ILdRf CodiCuco
  loc_B66E1D: FStStrCopy var_98
  loc_B66E20: LitStr "START TRANSACTION;"
  loc_B66E23: FStStrCopy var_9C
  loc_B66E26: OnErrorGoto loc_B678FE
  loc_B66E29: ILdRf var_9C
  loc_B66E2C: LitStr "SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_B66E2F: ConcatStr
  loc_B66E30: FStStrNoPop var_A0
  loc_B66E33: ImpAdLdI2 MemVar_C3D064
  loc_B66E36: CStrUI1
  loc_B66E38: FStStrNoPop var_A4
  loc_B66E3B: ConcatStr
  loc_B66E3C: FStStrNoPop var_A8
  loc_B66E3F: LitStr " LIMIT 1;"
  loc_B66E42: ConcatStr
  loc_B66E43: FStStr var_9C
  loc_B66E46: FFreeStr var_A0 = "": var_A4 = ""
  loc_B66E4F: ILdRf var_9C
  loc_B66E52: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, DefiImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, AltaUsua)"
  loc_B66E55: ConcatStr
  loc_B66E56: FStStrNoPop var_A0
  loc_B66E59: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B66E5C: ConcatStr
  loc_B66E5D: FStStrNoPop var_A4
  loc_B66E60: LitI4 1
  loc_B66E65: LitI4 1
  loc_B66E6A: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_B66E6F: FStVarCopyObj var_D8
  loc_B66E72: FLdRfVar var_D8
  loc_B66E75: FLdRfVar var_90
  loc_B66E78: CVarRef
  loc_B66E7D: ImpAdCallI2 Format$(, )
  loc_B66E82: FStStrNoPop var_A8
  loc_B66E85: ConcatStr
  loc_B66E86: FStStrNoPop var_DC
  loc_B66E89: LitStr ", ExorImpu, 1 CantImpu, "
  loc_B66E8C: ConcatStr
  loc_B66E8D: FStStrNoPop var_114
  loc_B66E90: LitI4 1
  loc_B66E95: LitI4 1
  loc_B66E9A: LitVarStr var_FC, "#########.##"
  loc_B66E9F: FStVarCopyObj var_10C
  loc_B66EA2: FLdRfVar var_10C
  loc_B66EA5: FLdRfVar ImputarComisionesEntesRecaudadores
  loc_B66EA8: CVarRef
  loc_B66EAD: ImpAdCallI2 Format$(, )
  loc_B66EB2: FStStrNoPop var_110
  loc_B66EB5: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B66EBA: FStStrNoPop var_118
  loc_B66EBD: ConcatStr
  loc_B66EBE: FStStrNoPop var_11C
  loc_B66EC1: LitStr " ImunImpu, "
  loc_B66EC4: ConcatStr
  loc_B66EC5: FStStrNoPop var_154
  loc_B66EC8: LitI4 1
  loc_B66ECD: LitI4 1
  loc_B66ED2: LitVarStr var_13C, "#########.##"
  loc_B66ED7: FStVarCopyObj var_14C
  loc_B66EDA: FLdRfVar var_14C
  loc_B66EDD: FLdRfVar ImputarComisionesEntesRecaudadores
  loc_B66EE0: CVarRef
  loc_B66EE5: ImpAdCallI2 Format$(, )
  loc_B66EEA: FStStrNoPop var_150
  loc_B66EED: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B66EF2: FStStrNoPop var_158
  loc_B66EF5: ConcatStr
  loc_B66EF6: FStStrNoPop var_15C
  loc_B66EF9: LitStr " DefiImpu, DetaImpu, '"
  loc_B66EFC: ConcatStr
  loc_B66EFD: FStStrNoPop var_160
  loc_B66F00: LitI4 0
  loc_B66F05: LitI4 -1
  loc_B66F0A: LitI4 1
  loc_B66F0F: LitStr vbNullString
  loc_B66F12: LitStr "-"
  loc_B66F15: LitStr "30-99914707-7"
  loc_B66F18: ImpAdCallI2 Replace(, , , , , )
  loc_B66F1D: FStStrNoPop var_164
  loc_B66F20: ConcatStr
  loc_B66F21: FStStrNoPop var_168
  loc_B66F24: LitStr "' CucuPers, "
  loc_B66F27: ConcatStr
  loc_B66F28: FStStrNoPop var_16C
  loc_B66F2B: ILdRf AjusImpu
  loc_B66F2E: CStrI4
  loc_B66F30: FStStrNoPop var_170
  loc_B66F33: ConcatStr
  loc_B66F34: FStStrNoPop var_174
  loc_B66F37: LitStr ", CodiNope, Item, Altern, CodiOrco, '"
  loc_B66F3A: ConcatStr
  loc_B66F3B: FStStrNoPop var_178
  loc_B66F3E: ImpAdLdI4 MemVar_C3D03C
  loc_B66F41: ConcatStr
  loc_B66F42: FStStrNoPop var_17C
  loc_B66F45: LitStr "'"
  loc_B66F48: ConcatStr
  loc_B66F49: FStStrNoPop var_180
  loc_B66F4C: LitStr " FROM imputacion"
  loc_B66F4F: ConcatStr
  loc_B66F50: FStStrNoPop var_184
  loc_B66F53: LitStr " WHERE PeriInfo = "
  loc_B66F56: ConcatStr
  loc_B66F57: FStStrNoPop var_188
  loc_B66F5A: ImpAdLdI2 MemVar_C3D064
  loc_B66F5D: CStrUI1
  loc_B66F5F: FStStrNoPop var_18C
  loc_B66F62: ConcatStr
  loc_B66F63: FStStrNoPop var_190
  loc_B66F66: LitStr " AND IdImpu = "
  loc_B66F69: ConcatStr
  loc_B66F6A: FStStrNoPop var_194
  loc_B66F6D: ILdRf IdImpu
  loc_B66F70: CStrI4
  loc_B66F72: FStStrNoPop var_198
  loc_B66F75: ConcatStr
  loc_B66F76: FStStrNoPop var_19C
  loc_B66F79: LitStr ";"
  loc_B66F7C: ConcatStr
  loc_B66F7D: FStStr var_9C
  loc_B66F80: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_DC = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = ""
  loc_B66FBB: FFreeVar var_D8 = "": var_10C = ""
  loc_B66FC4: ILdRf var_9C
  loc_B66FC7: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, CantImpu, ImunImpu, DeveImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_B66FCA: ConcatStr
  loc_B66FCB: FStStrNoPop var_A0
  loc_B66FCE: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B66FD1: ConcatStr
  loc_B66FD2: FStStrNoPop var_A4
  loc_B66FD5: LitI4 1
  loc_B66FDA: LitI4 1
  loc_B66FDF: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_B66FE4: FStVarCopyObj var_D8
  loc_B66FE7: FLdRfVar var_D8
  loc_B66FEA: FLdRfVar var_90
  loc_B66FED: CVarRef
  loc_B66FF2: ImpAdCallI2 Format$(, )
  loc_B66FF7: FStStrNoPop var_A8
  loc_B66FFA: ConcatStr
  loc_B66FFB: FStStrNoPop var_DC
  loc_B66FFE: LitStr ", ExorImpu, ExorImpu AS ExpeImpu, 1 CantImpu, "
  loc_B67001: ConcatStr
  loc_B67002: FStStrNoPop var_114
  loc_B67005: LitI4 1
  loc_B6700A: LitI4 1
  loc_B6700F: LitVarStr var_FC, "#########.##"
  loc_B67014: FStVarCopyObj var_10C
  loc_B67017: FLdRfVar var_10C
  loc_B6701A: FLdRfVar ImputarComisionesEntesRecaudadores
  loc_B6701D: CVarRef
  loc_B67022: ImpAdCallI2 Format$(, )
  loc_B67027: FStStrNoPop var_110
  loc_B6702A: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B6702F: FStStrNoPop var_118
  loc_B67032: ConcatStr
  loc_B67033: FStStrNoPop var_11C
  loc_B67036: LitStr " ImunImpu, "
  loc_B67039: ConcatStr
  loc_B6703A: FStStrNoPop var_154
  loc_B6703D: LitI4 1
  loc_B67042: LitI4 1
  loc_B67047: LitVarStr var_13C, "#########.##"
  loc_B6704C: FStVarCopyObj var_14C
  loc_B6704F: FLdRfVar var_14C
  loc_B67052: FLdRfVar ImputarComisionesEntesRecaudadores
  loc_B67055: CVarRef
  loc_B6705A: ImpAdCallI2 Format$(, )
  loc_B6705F: FStStrNoPop var_150
  loc_B67062: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B67067: FStStrNoPop var_158
  loc_B6706A: ConcatStr
  loc_B6706B: FStStrNoPop var_15C
  loc_B6706E: LitStr " DeveImpu, DetaImpu, '"
  loc_B67071: ConcatStr
  loc_B67072: FStStrNoPop var_160
  loc_B67075: LitI4 0
  loc_B6707A: LitI4 -1
  loc_B6707F: LitI4 1
  loc_B67084: LitStr vbNullString
  loc_B67087: LitStr "-"
  loc_B6708A: LitStr "30-99914707-7"
  loc_B6708D: ImpAdCallI2 Replace(, , , , , )
  loc_B67092: FStStrNoPop var_164
  loc_B67095: ConcatStr
  loc_B67096: FStStrNoPop var_168
  loc_B67099: LitStr "' CucuPers, "
  loc_B6709C: ConcatStr
  loc_B6709D: FStStrNoPop var_16C
  loc_B670A0: ILdRf AjusImpu
  loc_B670A3: CStrI4
  loc_B670A5: FStStrNoPop var_170
  loc_B670A8: ConcatStr
  loc_B670A9: FStStrNoPop var_174
  loc_B670AC: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, 's/f000000000000' AS NumeFact, FefaDeve, '"
  loc_B670AF: ConcatStr
  loc_B670B0: FStStrNoPop var_178
  loc_B670B3: ImpAdLdI4 MemVar_C3D03C
  loc_B670B6: ConcatStr
  loc_B670B7: FStStrNoPop var_17C
  loc_B670BA: LitStr "'"
  loc_B670BD: ConcatStr
  loc_B670BE: FStStrNoPop var_180
  loc_B670C1: LitStr " FROM imputacion"
  loc_B670C4: ConcatStr
  loc_B670C5: FStStrNoPop var_184
  loc_B670C8: LitStr " WHERE PeriInfo = "
  loc_B670CB: ConcatStr
  loc_B670CC: FStStrNoPop var_188
  loc_B670CF: ImpAdLdI2 MemVar_C3D064
  loc_B670D2: CStrUI1
  loc_B670D4: FStStrNoPop var_18C
  loc_B670D7: ConcatStr
  loc_B670D8: FStStrNoPop var_190
  loc_B670DB: LitStr " AND IdImpu = "
  loc_B670DE: ConcatStr
  loc_B670DF: FStStrNoPop var_194
  loc_B670E2: ILdRf IdImpu
  loc_B670E5: CStrI4
  loc_B670E7: FStStrNoPop var_198
  loc_B670EA: ConcatStr
  loc_B670EB: FStStrNoPop var_19C
  loc_B670EE: LitStr ";"
  loc_B670F1: ConcatStr
  loc_B670F2: FStStr var_9C
  loc_B670F5: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_DC = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = ""
  loc_B67130: FFreeVar var_D8 = "": var_10C = ""
  loc_B67139: ILdRf var_9C
  loc_B6713C: LitStr "INSERT INTO devengado (PeriInfo, IdImpu, CodiCuco)"
  loc_B6713F: ConcatStr
  loc_B67140: FStStrNoPop var_A0
  loc_B67143: LitStr " VALUES ("
  loc_B67146: ConcatStr
  loc_B67147: FStStrNoPop var_A4
  loc_B6714A: ImpAdLdI2 MemVar_C3D064
  loc_B6714D: CStrUI1
  loc_B6714F: FStStrNoPop var_A8
  loc_B67152: ConcatStr
  loc_B67153: FStStrNoPop var_DC
  loc_B67156: LitStr ", @idimpu, '"
  loc_B67159: ConcatStr
  loc_B6715A: FStStrNoPop var_110
  loc_B6715D: ILdRf var_98
  loc_B67160: ConcatStr
  loc_B67161: FStStrNoPop var_114
  loc_B67164: LitStr "');"
  loc_B67167: ConcatStr
  loc_B67168: FStStr var_9C
  loc_B6716B: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_DC = "": var_110 = ""
  loc_B6717A: ILdRf var_9C
  loc_B6717D: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, CantImpu, ImunImpu, LiquImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_B67180: ConcatStr
  loc_B67181: FStStrNoPop var_A0
  loc_B67184: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B67187: ConcatStr
  loc_B67188: FStStrNoPop var_A4
  loc_B6718B: LitI4 1
  loc_B67190: LitI4 1
  loc_B67195: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_B6719A: FStVarCopyObj var_D8
  loc_B6719D: FLdRfVar var_D8
  loc_B671A0: FLdRfVar var_90
  loc_B671A3: CVarRef
  loc_B671A8: ImpAdCallI2 Format$(, )
  loc_B671AD: FStStrNoPop var_A8
  loc_B671B0: ConcatStr
  loc_B671B1: FStStrNoPop var_DC
  loc_B671B4: LitStr ", ExorImpu, ExorImpu AS ExpeImpu, NumeLiqu, 1 CantImpu, "
  loc_B671B7: ConcatStr
  loc_B671B8: FStStrNoPop var_114
  loc_B671BB: LitI4 1
  loc_B671C0: LitI4 1
  loc_B671C5: LitVarStr var_FC, "#########.##"
  loc_B671CA: FStVarCopyObj var_10C
  loc_B671CD: FLdRfVar var_10C
  loc_B671D0: FLdRfVar ImputarComisionesEntesRecaudadores
  loc_B671D3: CVarRef
  loc_B671D8: ImpAdCallI2 Format$(, )
  loc_B671DD: FStStrNoPop var_110
  loc_B671E0: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B671E5: FStStrNoPop var_118
  loc_B671E8: ConcatStr
  loc_B671E9: FStStrNoPop var_11C
  loc_B671EC: LitStr " ImunImpu, "
  loc_B671EF: ConcatStr
  loc_B671F0: FStStrNoPop var_154
  loc_B671F3: LitI4 1
  loc_B671F8: LitI4 1
  loc_B671FD: LitVarStr var_13C, "#########.##"
  loc_B67202: FStVarCopyObj var_14C
  loc_B67205: FLdRfVar var_14C
  loc_B67208: FLdRfVar ImputarComisionesEntesRecaudadores
  loc_B6720B: CVarRef
  loc_B67210: ImpAdCallI2 Format$(, )
  loc_B67215: FStStrNoPop var_150
  loc_B67218: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B6721D: FStStrNoPop var_158
  loc_B67220: ConcatStr
  loc_B67221: FStStrNoPop var_15C
  loc_B67224: LitStr " LiquImpu, DetaImpu, '"
  loc_B67227: ConcatStr
  loc_B67228: FStStrNoPop var_160
  loc_B6722B: LitI4 0
  loc_B67230: LitI4 -1
  loc_B67235: LitI4 1
  loc_B6723A: LitStr vbNullString
  loc_B6723D: LitStr "-"
  loc_B67240: LitStr "30-99914707-7"
  loc_B67243: ImpAdCallI2 Replace(, , , , , )
  loc_B67248: FStStrNoPop var_164
  loc_B6724B: ConcatStr
  loc_B6724C: FStStrNoPop var_168
  loc_B6724F: LitStr "' CucuPers, "
  loc_B67252: ConcatStr
  loc_B67253: FStStrNoPop var_16C
  loc_B67256: ILdRf AjusImpu
  loc_B67259: CStrI4
  loc_B6725B: FStStrNoPop var_170
  loc_B6725E: ConcatStr
  loc_B6725F: FStStrNoPop var_174
  loc_B67262: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, 's/f000000000000' AS NumeFact, FefaDeve, '"
  loc_B67265: ConcatStr
  loc_B67266: FStStrNoPop var_178
  loc_B67269: ImpAdLdI4 MemVar_C3D03C
  loc_B6726C: ConcatStr
  loc_B6726D: FStStrNoPop var_17C
  loc_B67270: LitStr "'"
  loc_B67273: ConcatStr
  loc_B67274: FStStrNoPop var_180
  loc_B67277: LitStr " FROM imputacion"
  loc_B6727A: ConcatStr
  loc_B6727B: FStStrNoPop var_184
  loc_B6727E: LitStr " WHERE PeriInfo = "
  loc_B67281: ConcatStr
  loc_B67282: FStStrNoPop var_188
  loc_B67285: ImpAdLdI2 MemVar_C3D064
  loc_B67288: CStrUI1
  loc_B6728A: FStStrNoPop var_18C
  loc_B6728D: ConcatStr
  loc_B6728E: FStStrNoPop var_190
  loc_B67291: LitStr " AND IdImpu = "
  loc_B67294: ConcatStr
  loc_B67295: FStStrNoPop var_194
  loc_B67298: ILdRf IdImpu
  loc_B6729B: CStrI4
  loc_B6729D: FStStrNoPop var_198
  loc_B672A0: ConcatStr
  loc_B672A1: FStStrNoPop var_19C
  loc_B672A4: LitStr ";"
  loc_B672A7: ConcatStr
  loc_B672A8: FStStr var_9C
  loc_B672AB: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_DC = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = ""
  loc_B672E6: FFreeVar var_D8 = "": var_10C = ""
  loc_B672EF: ILdRf var_9C
  loc_B672F2: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, MapaImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_B672F5: ConcatStr
  loc_B672F6: FStStrNoPop var_A0
  loc_B672F9: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B672FC: ConcatStr
  loc_B672FD: FStStrNoPop var_A4
  loc_B67300: LitI4 1
  loc_B67305: LitI4 1
  loc_B6730A: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_B6730F: FStVarCopyObj var_D8
  loc_B67312: FLdRfVar var_D8
  loc_B67315: FLdRfVar var_90
  loc_B67318: CVarRef
  loc_B6731D: ImpAdCallI2 Format$(, )
  loc_B67322: FStStrNoPop var_A8
  loc_B67325: ConcatStr
  loc_B67326: FStStrNoPop var_DC
  loc_B67329: LitStr ", ExorImpu, ExorImpu AS ExpeImpu, NumeLiqu, NumeOrpa, 1 CantImpu, "
  loc_B6732C: ConcatStr
  loc_B6732D: FStStrNoPop var_114
  loc_B67330: LitI4 1
  loc_B67335: LitI4 1
  loc_B6733A: LitVarStr var_FC, "#########.##"
  loc_B6733F: FStVarCopyObj var_10C
  loc_B67342: FLdRfVar var_10C
  loc_B67345: FLdRfVar ImputarComisionesEntesRecaudadores
  loc_B67348: CVarRef
  loc_B6734D: ImpAdCallI2 Format$(, )
  loc_B67352: FStStrNoPop var_110
  loc_B67355: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B6735A: FStStrNoPop var_118
  loc_B6735D: ConcatStr
  loc_B6735E: FStStrNoPop var_11C
  loc_B67361: LitStr " ImunImpu, "
  loc_B67364: ConcatStr
  loc_B67365: FStStrNoPop var_154
  loc_B67368: LitI4 1
  loc_B6736D: LitI4 1
  loc_B67372: LitVarStr var_13C, "#########.##"
  loc_B67377: FStVarCopyObj var_14C
  loc_B6737A: FLdRfVar var_14C
  loc_B6737D: FLdRfVar ImputarComisionesEntesRecaudadores
  loc_B67380: CVarRef
  loc_B67385: ImpAdCallI2 Format$(, )
  loc_B6738A: FStStrNoPop var_150
  loc_B6738D: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B67392: FStStrNoPop var_158
  loc_B67395: ConcatStr
  loc_B67396: FStStrNoPop var_15C
  loc_B67399: LitStr " MapaImpu, DetaImpu, '"
  loc_B6739C: ConcatStr
  loc_B6739D: FStStrNoPop var_160
  loc_B673A0: LitI4 0
  loc_B673A5: LitI4 -1
  loc_B673AA: LitI4 1
  loc_B673AF: LitStr vbNullString
  loc_B673B2: LitStr "-"
  loc_B673B5: LitStr "30-99914707-7"
  loc_B673B8: ImpAdCallI2 Replace(, , , , , )
  loc_B673BD: FStStrNoPop var_164
  loc_B673C0: ConcatStr
  loc_B673C1: FStStrNoPop var_168
  loc_B673C4: LitStr "' CucuPers, "
  loc_B673C7: ConcatStr
  loc_B673C8: FStStrNoPop var_16C
  loc_B673CB: ILdRf AjusImpu
  loc_B673CE: CStrI4
  loc_B673D0: FStStrNoPop var_170
  loc_B673D3: ConcatStr
  loc_B673D4: FStStrNoPop var_174
  loc_B673D7: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, 's/f000000000000' AS NumeFact, FefaDeve, '"
  loc_B673DA: ConcatStr
  loc_B673DB: FStStrNoPop var_178
  loc_B673DE: ImpAdLdI4 MemVar_C3D03C
  loc_B673E1: ConcatStr
  loc_B673E2: FStStrNoPop var_17C
  loc_B673E5: LitStr "'"
  loc_B673E8: ConcatStr
  loc_B673E9: FStStrNoPop var_180
  loc_B673EC: LitStr " FROM imputacion"
  loc_B673EF: ConcatStr
  loc_B673F0: FStStrNoPop var_184
  loc_B673F3: LitStr " WHERE PeriInfo = "
  loc_B673F6: ConcatStr
  loc_B673F7: FStStrNoPop var_188
  loc_B673FA: ImpAdLdI2 MemVar_C3D064
  loc_B673FD: CStrUI1
  loc_B673FF: FStStrNoPop var_18C
  loc_B67402: ConcatStr
  loc_B67403: FStStrNoPop var_190
  loc_B67406: LitStr " AND IdImpu = "
  loc_B67409: ConcatStr
  loc_B6740A: FStStrNoPop var_194
  loc_B6740D: ILdRf IdImpu
  loc_B67410: CStrI4
  loc_B67412: FStStrNoPop var_198
  loc_B67415: ConcatStr
  loc_B67416: FStStrNoPop var_19C
  loc_B67419: LitStr ";"
  loc_B6741C: ConcatStr
  loc_B6741D: FStStr var_9C
  loc_B67420: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_DC = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = ""
  loc_B6745B: FFreeVar var_D8 = "": var_10C = ""
  loc_B67464: ILdRf var_9C
  loc_B67467: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, PagaImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_B6746A: ConcatStr
  loc_B6746B: FStStrNoPop var_A0
  loc_B6746E: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B67471: ConcatStr
  loc_B67472: FStStrNoPop var_A4
  loc_B67475: LitI4 1
  loc_B6747A: LitI4 1
  loc_B6747F: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_B67484: FStVarCopyObj var_D8
  loc_B67487: FLdRfVar var_D8
  loc_B6748A: FLdRfVar var_90
  loc_B6748D: CVarRef
  loc_B67492: ImpAdCallI2 Format$(, )
  loc_B67497: FStStrNoPop var_A8
  loc_B6749A: ConcatStr
  loc_B6749B: FStStrNoPop var_DC
  loc_B6749E: LitStr ", ExorImpu, ExorImpu AS ExpeImpu, NumeLiqu, NumeOrpa, 1 CantImpu, "
  loc_B674A1: ConcatStr
  loc_B674A2: FStStrNoPop var_114
  loc_B674A5: LitI4 1
  loc_B674AA: LitI4 1
  loc_B674AF: LitVarStr var_FC, "#########.##"
  loc_B674B4: FStVarCopyObj var_10C
  loc_B674B7: FLdRfVar var_10C
  loc_B674BA: FLdRfVar ImputarComisionesEntesRecaudadores
  loc_B674BD: CVarRef
  loc_B674C2: ImpAdCallI2 Format$(, )
  loc_B674C7: FStStrNoPop var_110
  loc_B674CA: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B674CF: FStStrNoPop var_118
  loc_B674D2: ConcatStr
  loc_B674D3: FStStrNoPop var_11C
  loc_B674D6: LitStr " ImunImpu, "
  loc_B674D9: ConcatStr
  loc_B674DA: FStStrNoPop var_154
  loc_B674DD: LitI4 1
  loc_B674E2: LitI4 1
  loc_B674E7: LitVarStr var_13C, "#########.##"
  loc_B674EC: FStVarCopyObj var_14C
  loc_B674EF: FLdRfVar var_14C
  loc_B674F2: FLdRfVar ImputarComisionesEntesRecaudadores
  loc_B674F5: CVarRef
  loc_B674FA: ImpAdCallI2 Format$(, )
  loc_B674FF: FStStrNoPop var_150
  loc_B67502: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B67507: FStStrNoPop var_158
  loc_B6750A: ConcatStr
  loc_B6750B: FStStrNoPop var_15C
  loc_B6750E: LitStr " PagaImpu, DetaImpu, '"
  loc_B67511: ConcatStr
  loc_B67512: FStStrNoPop var_160
  loc_B67515: LitI4 0
  loc_B6751A: LitI4 -1
  loc_B6751F: LitI4 1
  loc_B67524: LitStr vbNullString
  loc_B67527: LitStr "-"
  loc_B6752A: LitStr "30-99914707-7"
  loc_B6752D: ImpAdCallI2 Replace(, , , , , )
  loc_B67532: FStStrNoPop var_164
  loc_B67535: ConcatStr
  loc_B67536: FStStrNoPop var_168
  loc_B67539: LitStr "' CucuPers, "
  loc_B6753C: ConcatStr
  loc_B6753D: FStStrNoPop var_16C
  loc_B67540: ILdRf AjusImpu
  loc_B67543: CStrI4
  loc_B67545: FStStrNoPop var_170
  loc_B67548: ConcatStr
  loc_B67549: FStStrNoPop var_174
  loc_B6754C: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, 's/f000000000000' AS NumeFact, FefaDeve, '"
  loc_B6754F: ConcatStr
  loc_B67550: FStStrNoPop var_178
  loc_B67553: ImpAdLdI4 MemVar_C3D03C
  loc_B67556: ConcatStr
  loc_B67557: FStStrNoPop var_17C
  loc_B6755A: LitStr "'"
  loc_B6755D: ConcatStr
  loc_B6755E: FStStrNoPop var_180
  loc_B67561: LitStr " FROM imputacion"
  loc_B67564: ConcatStr
  loc_B67565: FStStrNoPop var_184
  loc_B67568: LitStr " WHERE PeriInfo = "
  loc_B6756B: ConcatStr
  loc_B6756C: FStStrNoPop var_188
  loc_B6756F: ImpAdLdI2 MemVar_C3D064
  loc_B67572: CStrUI1
  loc_B67574: FStStrNoPop var_18C
  loc_B67577: ConcatStr
  loc_B67578: FStStrNoPop var_190
  loc_B6757B: LitStr " AND IdImpu = "
  loc_B6757E: ConcatStr
  loc_B6757F: FStStrNoPop var_194
  loc_B67582: ILdRf IdImpu
  loc_B67585: CStrI4
  loc_B67587: FStStrNoPop var_198
  loc_B6758A: ConcatStr
  loc_B6758B: FStStrNoPop var_19C
  loc_B6758E: LitStr ";"
  loc_B67591: ConcatStr
  loc_B67592: FStStr var_9C
  loc_B67595: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_DC = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = ""
  loc_B675D0: FFreeVar var_D8 = "": var_10C = ""
  loc_B675D9: ILdRf var_9C
  loc_B675DC: LitStr "SET @idmoba=(SELECT Max(IdMoba)+1 FROM movibanco mb WHERE mb.PeriInfo = "
  loc_B675DF: ConcatStr
  loc_B675E0: FStStrNoPop var_A0
  loc_B675E3: ImpAdLdI2 MemVar_C3D064
  loc_B675E6: CStrUI1
  loc_B675E8: FStStrNoPop var_A4
  loc_B675EB: ConcatStr
  loc_B675EC: FStStrNoPop var_A8
  loc_B675EF: LitStr ");"
  loc_B675F2: ConcatStr
  loc_B675F3: FStStr var_9C
  loc_B675F6: FFreeStr var_A0 = "": var_A4 = ""
  loc_B675FF: ILdRf var_9C
  loc_B67602: LitStr "INSERT INTO movibanco (PeriInfo, IdMoba, CodiBanc, CodiTimb, NumeMoba, FechMoba, FeinMoba, FecoMoba, FehocoMoba, DebeMoba, HabeMoba, ComiMoba, IvaMoba, CodiEnre, CodiCuco, DetaMoba, AltaUsua)"
  loc_B67605: ConcatStr
  loc_B67606: FStStrNoPop var_A0
  loc_B67609: LitStr "SELECT PeriInfo, @idmoba:=@idmoba+1 IdMoba"
  loc_B6760C: ConcatStr
  loc_B6760D: FStStrNoPop var_A4
  loc_B67610: LitStr ", CodiBanc, "
  loc_B67613: ConcatStr
  loc_B67614: FStStrNoPop var_A8
  loc_B67617: FLdI2 iCodiTimbComER_bcoCredito
  loc_B6761A: CStrUI1
  loc_B6761C: FStStrNoPop var_DC
  loc_B6761F: ConcatStr
  loc_B67620: FStStrNoPop var_110
  loc_B67623: LitStr " CodiTimb, 1 NumeMoba, "
  loc_B67626: ConcatStr
  loc_B67627: FStStrNoPop var_114
  loc_B6762A: LitI4 1
  loc_B6762F: LitI4 1
  loc_B67634: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_B67639: FStVarCopyObj var_D8
  loc_B6763C: FLdRfVar var_D8
  loc_B6763F: FLdRfVar var_90
  loc_B67642: CVarRef
  loc_B67647: ImpAdCallI2 Format$(, )
  loc_B6764C: FStStrNoPop var_118
  loc_B6764F: ConcatStr
  loc_B67650: FStStrNoPop var_11C
  loc_B67653: LitStr " FechMoba, "
  loc_B67656: ConcatStr
  loc_B67657: FStStrNoPop var_150
  loc_B6765A: LitI4 1
  loc_B6765F: LitI4 1
  loc_B67664: LitVarStr var_FC, "'yyyy-mm-dd'"
  loc_B67669: FStVarCopyObj var_10C
  loc_B6766C: FLdRfVar var_10C
  loc_B6766F: FLdRfVar var_90
  loc_B67672: CVarRef
  loc_B67677: ImpAdCallI2 Format$(, )
  loc_B6767C: FStStrNoPop var_154
  loc_B6767F: ConcatStr
  loc_B67680: FStStrNoPop var_158
  loc_B67683: LitStr " FeinMoba, "
  loc_B67686: ConcatStr
  loc_B67687: FStStrNoPop var_15C
  loc_B6768A: LitI4 1
  loc_B6768F: LitI4 1
  loc_B67694: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_B67699: FStVarCopyObj var_14C
  loc_B6769C: FLdRfVar var_14C
  loc_B6769F: FLdRfVar var_90
  loc_B676A2: CVarRef
  loc_B676A7: ImpAdCallI2 Format$(, )
  loc_B676AC: FStStrNoPop var_160
  loc_B676AF: ConcatStr
  loc_B676B0: FStStrNoPop var_164
  loc_B676B3: LitStr " FecoMoba, Now() FehocoMoba, 0 DebeMoba, SUM(ComiMoba+IvaMoba) HabeMoba"
  loc_B676B6: ConcatStr
  loc_B676B7: FStStrNoPop var_168
  loc_B676BA: LitStr ", 0 ComiMoba, 0 IvaMoba, 0 CodiEnre, '"
  loc_B676BD: ConcatStr
  loc_B676BE: FStStrNoPop var_16C
  loc_B676C1: ILdRf var_98
  loc_B676C4: ConcatStr
  loc_B676C5: FStStrNoPop var_170
  loc_B676C8: LitStr "', 'Comisiones automáticas' DetaMoba, '"
  loc_B676CB: ConcatStr
  loc_B676CC: FStStrNoPop var_174
  loc_B676CF: ImpAdLdI4 MemVar_C3D03C
  loc_B676D2: ConcatStr
  loc_B676D3: FStStrNoPop var_178
  loc_B676D6: LitStr "' AltaUsua"
  loc_B676D9: ConcatStr
  loc_B676DA: FStStrNoPop var_17C
  loc_B676DD: LitStr " FROM movibanco mb"
  loc_B676E0: ConcatStr
  loc_B676E1: FStStrNoPop var_180
  loc_B676E4: LitStr " WHERE PeriInfo = "
  loc_B676E7: ConcatStr
  loc_B676E8: FStStrNoPop var_184
  loc_B676EB: ImpAdLdI2 MemVar_C3D064
  loc_B676EE: CStrUI1
  loc_B676F0: FStStrNoPop var_188
  loc_B676F3: ConcatStr
  loc_B676F4: FStStrNoPop var_18C
  loc_B676F7: LitStr vbNullString
  loc_B676FA: ConcatStr
  loc_B676FB: FStStrNoPop var_190
  loc_B676FE: LitStr " AND FechMoba >= "
  loc_B67701: ConcatStr
  loc_B67702: FStStrNoPop var_194
  loc_B67705: LitI4 1
  loc_B6770A: LitI4 1
  loc_B6770F: LitVarStr var_1BC, "'yyyy-mm-dd'"
  loc_B67714: FStVarCopyObj var_1CC
  loc_B67717: FLdRfVar var_1CC
  loc_B6771A: FLdRfVar var_8C
  loc_B6771D: CVarRef
  loc_B67722: ImpAdCallI2 Format$(, )
  loc_B67727: FStStrNoPop var_198
  loc_B6772A: ConcatStr
  loc_B6772B: FStStrNoPop var_19C
  loc_B6772E: LitStr " AND FechMoba <= "
  loc_B67731: ConcatStr
  loc_B67732: FStStrNoPop var_200
  loc_B67735: LitI4 1
  loc_B6773A: LitI4 1
  loc_B6773F: LitVarStr var_1EC, "'yyyy-mm-dd'"
  loc_B67744: FStVarCopyObj var_1FC
  loc_B67747: FLdRfVar var_1FC
  loc_B6774A: FLdRfVar var_90
  loc_B6774D: CVarRef
  loc_B67752: ImpAdCallI2 Format$(, )
  loc_B67757: FStStrNoPop var_204
  loc_B6775A: ConcatStr
  loc_B6775B: FStStrNoPop var_208
  loc_B6775E: LitStr " AND (mb.ComiMoba != 0 OR mb.IvaMoba != 0)"
  loc_B67761: ConcatStr
  loc_B67762: FStStrNoPop var_20C
  loc_B67765: LitStr " GROUP BY CodiBanc;"
  loc_B67768: ConcatStr
  loc_B67769: FStStr var_9C
  loc_B6776C: FFreeStr var_208 = "": var_20C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_DC = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_200 = ""
  loc_B677AF: FFreeVar var_D8 = "": var_10C = "": var_14C = "": var_1CC = ""
  loc_B677BC: ILdRf var_9C
  loc_B677BF: LitStr "INSERT INTO movibanco (PeriInfo, IdMoba, CodiBanc, CodiTimb, NumeMoba, FechMoba, FeinMoba, FecoMoba, FehocoMoba, DebeMoba, HabeMoba, ComiMoba, IvaMoba, CodiEnre, CodiCuco, DetaMoba, AltaUsua)"
  loc_B677C2: ConcatStr
  loc_B677C3: FStStrNoPop var_A0
  loc_B677C6: LitStr "SELECT mb.PeriInfo, @idmoba:=@idmoba+1 IdMoba"
  loc_B677C9: ConcatStr
  loc_B677CA: FStStrNoPop var_A4
  loc_B677CD: LitStr ", CodiBanc, "
  loc_B677D0: ConcatStr
  loc_B677D1: FStStrNoPop var_A8
  loc_B677D4: FLdI2 iCodiTimbComER_bcoDebito
  loc_B677D7: CStrUI1
  loc_B677D9: FStStrNoPop var_DC
  loc_B677DC: ConcatStr
  loc_B677DD: FStStrNoPop var_110
  loc_B677E0: LitStr " CodiTimb, @idmoba NumeMoba, FechMoba, FeinMoba, FechMoba FecoMoba, Now() FehocoMoba, SUM(ComiMoba+IvaMoba) DebeMoba, 0 HabeMoba"
  loc_B677E3: ConcatStr
  loc_B677E4: FStStrNoPop var_114
  loc_B677E7: LitStr ", 0 ComiMoba, 0 IvaMoba, 0 CodiEnre, p.CajaPaco, 'Comisiones automáticas' DetaMoba, '"
  loc_B677EA: ConcatStr
  loc_B677EB: FStStrNoPop var_118
  loc_B677EE: ImpAdLdI4 MemVar_C3D03C
  loc_B677F1: ConcatStr
  loc_B677F2: FStStrNoPop var_11C
  loc_B677F5: LitStr "' AltaUsua"
  loc_B677F8: ConcatStr
  loc_B677F9: FStStrNoPop var_150
  loc_B677FC: LitStr " FROM movibanco mb"
  loc_B677FF: ConcatStr
  loc_B67800: FStStrNoPop var_154
  loc_B67803: LitStr " INNER JOIN paraconta p ON p.PeriInfo = mb.PeriInfo"
  loc_B67806: ConcatStr
  loc_B67807: FStStrNoPop var_158
  loc_B6780A: LitStr " WHERE mb.PeriInfo = "
  loc_B6780D: ConcatStr
  loc_B6780E: FStStrNoPop var_15C
  loc_B67811: ImpAdLdI2 MemVar_C3D064
  loc_B67814: CStrUI1
  loc_B67816: FStStrNoPop var_160
  loc_B67819: ConcatStr
  loc_B6781A: FStStrNoPop var_164
  loc_B6781D: LitStr vbNullString
  loc_B67820: ConcatStr
  loc_B67821: FStStrNoPop var_168
  loc_B67824: LitStr " AND FechMoba >= "
  loc_B67827: ConcatStr
  loc_B67828: FStStrNoPop var_16C
  loc_B6782B: LitI4 1
  loc_B67830: LitI4 1
  loc_B67835: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_B6783A: FStVarCopyObj var_D8
  loc_B6783D: FLdRfVar var_D8
  loc_B67840: FLdRfVar var_8C
  loc_B67843: CVarRef
  loc_B67848: ImpAdCallI2 Format$(, )
  loc_B6784D: FStStrNoPop var_170
  loc_B67850: ConcatStr
  loc_B67851: FStStrNoPop var_174
  loc_B67854: LitStr " AND FechMoba <= "
  loc_B67857: ConcatStr
  loc_B67858: FStStrNoPop var_178
  loc_B6785B: LitI4 1
  loc_B67860: LitI4 1
  loc_B67865: LitVarStr var_FC, "'yyyy-mm-dd'"
  loc_B6786A: FStVarCopyObj var_10C
  loc_B6786D: FLdRfVar var_10C
  loc_B67870: FLdRfVar var_90
  loc_B67873: CVarRef
  loc_B67878: ImpAdCallI2 Format$(, )
  loc_B6787D: FStStrNoPop var_17C
  loc_B67880: ConcatStr
  loc_B67881: FStStrNoPop var_180
  loc_B67884: LitStr " AND (mb.ComiMoba != 0 OR mb.IvaMoba != 0)"
  loc_B67887: ConcatStr
  loc_B67888: FStStrNoPop var_184
  loc_B6788B: LitStr " GROUP BY mb.IdMoba;"
  loc_B6788E: ConcatStr
  loc_B6788F: FStStr var_9C
  loc_B67892: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_DC = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_B678C1: FFreeVar var_D8 = ""
  loc_B678C8: ILdRf var_9C
  loc_B678CB: LitStr "COMMIT;"
  loc_B678CE: ConcatStr
  loc_B678CF: FStStr var_9C
  loc_B678D2: ILdRf var_9C
  loc_B678D5: Call EjecutarRsCls(from_stack_1v)
  loc_B678DA: LitI4 1
  loc_B678DF: FStR4 var_88
  loc_B678E2: FLdI2 HaceRequery
  loc_B678E5: BranchF loc_B678F8
  loc_B678E8: LitI2_Byte 0
  loc_B678EA: PopTmpLdAd2 var_20E
  loc_B678ED: ILdRf var_88
  loc_B678F0: ImpAdLdI2 MemVar_C3D064
  loc_B678F3: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B678F8: ExitProcCbHresult
  loc_B678FE: LitStr "ROLLBACK;"
  loc_B67901: Call EjecutarRsCls(from_stack_1v)
  loc_B67906: LitI4 0
  loc_B6790B: FStR4 var_88
  loc_B6790E: ExitProcCbHresult
End Function

Public Function Desafectar5etapas(IdImpu, FechImpu, CodiCuco, PagaImpu, AjusImpu, HaceRequery) 'AE443C
  'Data Table: 4AFD00
  loc_AE3DB4: ILdRf FechImpu
  loc_AE3DB7: FStStrCopy var_8C
  loc_AE3DBA: ILdRf CodiCuco
  loc_AE3DBD: FStStrCopy var_90
  loc_AE3DC0: ILdRf PagaImpu
  loc_AE3DC3: FStStrCopy Desafectar5etapas
  loc_AE3DC6: LitStr "START TRANSACTION;"
  loc_AE3DC9: FStStrCopy var_98
  loc_AE3DCC: OnErrorGoto loc_AE4423
  loc_AE3DCF: ILdRf var_98
  loc_AE3DD2: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, PagaImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_AE3DD5: ConcatStr
  loc_AE3DD6: FStStrNoPop var_9C
  loc_AE3DD9: LitStr " SELECT PeriInfo, (SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_AE3DDC: ConcatStr
  loc_AE3DDD: FStStrNoPop var_A0
  loc_AE3DE0: ImpAdLdI2 MemVar_C3D064
  loc_AE3DE3: CStrUI1
  loc_AE3DE5: FStStrNoPop var_A4
  loc_AE3DE8: ConcatStr
  loc_AE3DE9: FStStrNoPop var_A8
  loc_AE3DEC: LitStr " LIMIT 1), CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_AE3DEF: ConcatStr
  loc_AE3DF0: FStStrNoPop var_DC
  loc_AE3DF3: LitI4 1
  loc_AE3DF8: LitI4 1
  loc_AE3DFD: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_AE3E02: FStVarCopyObj var_D8
  loc_AE3E05: FLdRfVar var_D8
  loc_AE3E08: FLdRfVar var_8C
  loc_AE3E0B: CVarRef
  loc_AE3E10: ImpAdCallI2 Format$(, )
  loc_AE3E15: FStStrNoPop var_E0
  loc_AE3E18: ConcatStr
  loc_AE3E19: FStStrNoPop var_E4
  loc_AE3E1C: LitStr ", ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, 1 CantImpu, "
  loc_AE3E1F: ConcatStr
  loc_AE3E20: FStStrNoPop var_E8
  loc_AE3E23: ILdRf Desafectar5etapas
  loc_AE3E26: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AE3E2B: FStStrNoPop var_EC
  loc_AE3E2E: ConcatStr
  loc_AE3E2F: FStStrNoPop var_F0
  loc_AE3E32: LitStr " ImunImpu, "
  loc_AE3E35: ConcatStr
  loc_AE3E36: FStStrNoPop var_F4
  loc_AE3E39: ILdRf Desafectar5etapas
  loc_AE3E3C: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AE3E41: FStStrNoPop var_F8
  loc_AE3E44: ConcatStr
  loc_AE3E45: FStStrNoPop var_FC
  loc_AE3E48: LitStr " PagaImpu, DetaImpu, CucuPers, "
  loc_AE3E4B: ConcatStr
  loc_AE3E4C: FStStrNoPop var_100
  loc_AE3E4F: ILdRf AjusImpu
  loc_AE3E52: CStrI4
  loc_AE3E54: FStStrNoPop var_104
  loc_AE3E57: ConcatStr
  loc_AE3E58: FStStrNoPop var_108
  loc_AE3E5B: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_AE3E5E: ConcatStr
  loc_AE3E5F: FStStrNoPop var_10C
  loc_AE3E62: ImpAdLdI4 MemVar_C3D03C
  loc_AE3E65: ConcatStr
  loc_AE3E66: FStStrNoPop var_110
  loc_AE3E69: LitStr "'"
  loc_AE3E6C: ConcatStr
  loc_AE3E6D: FStStrNoPop var_114
  loc_AE3E70: LitStr " FROM imputacion"
  loc_AE3E73: ConcatStr
  loc_AE3E74: FStStrNoPop var_118
  loc_AE3E77: LitStr " WHERE PeriInfo = "
  loc_AE3E7A: ConcatStr
  loc_AE3E7B: FStStrNoPop var_11C
  loc_AE3E7E: ImpAdLdI2 MemVar_C3D064
  loc_AE3E81: CStrUI1
  loc_AE3E83: FStStrNoPop var_120
  loc_AE3E86: ConcatStr
  loc_AE3E87: FStStrNoPop var_124
  loc_AE3E8A: LitStr " AND IdImpu = "
  loc_AE3E8D: ConcatStr
  loc_AE3E8E: FStStrNoPop var_128
  loc_AE3E91: ILdRf IdImpu
  loc_AE3E94: CStrI4
  loc_AE3E96: FStStrNoPop var_12C
  loc_AE3E99: ConcatStr
  loc_AE3E9A: FStStrNoPop var_130
  loc_AE3E9D: LitStr ";"
  loc_AE3EA0: ConcatStr
  loc_AE3EA1: FStStr var_98
  loc_AE3EA4: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_AE3EDB: FFree1Var var_D8 = ""
  loc_AE3EDE: ILdRf var_98
  loc_AE3EE1: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, MapaImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_AE3EE4: ConcatStr
  loc_AE3EE5: FStStrNoPop var_9C
  loc_AE3EE8: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_AE3EEB: ConcatStr
  loc_AE3EEC: FStStrNoPop var_A0
  loc_AE3EEF: LitI4 1
  loc_AE3EF4: LitI4 1
  loc_AE3EF9: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_AE3EFE: FStVarCopyObj var_D8
  loc_AE3F01: FLdRfVar var_D8
  loc_AE3F04: FLdRfVar var_8C
  loc_AE3F07: CVarRef
  loc_AE3F0C: ImpAdCallI2 Format$(, )
  loc_AE3F11: FStStrNoPop var_A4
  loc_AE3F14: ConcatStr
  loc_AE3F15: FStStrNoPop var_A8
  loc_AE3F18: LitStr ", ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, 1 CantImpu, "
  loc_AE3F1B: ConcatStr
  loc_AE3F1C: FStStrNoPop var_DC
  loc_AE3F1F: ILdRf Desafectar5etapas
  loc_AE3F22: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AE3F27: FStStrNoPop var_E0
  loc_AE3F2A: ConcatStr
  loc_AE3F2B: FStStrNoPop var_E4
  loc_AE3F2E: LitStr " ImunImpu, "
  loc_AE3F31: ConcatStr
  loc_AE3F32: FStStrNoPop var_E8
  loc_AE3F35: ILdRf Desafectar5etapas
  loc_AE3F38: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AE3F3D: FStStrNoPop var_EC
  loc_AE3F40: ConcatStr
  loc_AE3F41: FStStrNoPop var_F0
  loc_AE3F44: LitStr " MapaImpu, DetaImpu, CucuPers, "
  loc_AE3F47: ConcatStr
  loc_AE3F48: FStStrNoPop var_F4
  loc_AE3F4B: ILdRf AjusImpu
  loc_AE3F4E: CStrI4
  loc_AE3F50: FStStrNoPop var_F8
  loc_AE3F53: ConcatStr
  loc_AE3F54: FStStrNoPop var_FC
  loc_AE3F57: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_AE3F5A: ConcatStr
  loc_AE3F5B: FStStrNoPop var_100
  loc_AE3F5E: ImpAdLdI4 MemVar_C3D03C
  loc_AE3F61: ConcatStr
  loc_AE3F62: FStStrNoPop var_104
  loc_AE3F65: LitStr "'"
  loc_AE3F68: ConcatStr
  loc_AE3F69: FStStrNoPop var_108
  loc_AE3F6C: LitStr " FROM imputacion"
  loc_AE3F6F: ConcatStr
  loc_AE3F70: FStStrNoPop var_10C
  loc_AE3F73: LitStr " WHERE PeriInfo = "
  loc_AE3F76: ConcatStr
  loc_AE3F77: FStStrNoPop var_110
  loc_AE3F7A: ImpAdLdI2 MemVar_C3D064
  loc_AE3F7D: CStrUI1
  loc_AE3F7F: FStStrNoPop var_114
  loc_AE3F82: ConcatStr
  loc_AE3F83: FStStrNoPop var_118
  loc_AE3F86: LitStr " AND IdImpu = "
  loc_AE3F89: ConcatStr
  loc_AE3F8A: FStStrNoPop var_11C
  loc_AE3F8D: ILdRf IdImpu
  loc_AE3F90: CStrI4
  loc_AE3F92: FStStrNoPop var_120
  loc_AE3F95: ConcatStr
  loc_AE3F96: FStStrNoPop var_124
  loc_AE3F99: LitStr ";"
  loc_AE3F9C: ConcatStr
  loc_AE3F9D: FStStr var_98
  loc_AE3FA0: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_AE3FD1: FFree1Var var_D8 = ""
  loc_AE3FD4: ILdRf var_98
  loc_AE3FD7: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, CantImpu, ImunImpu, LiquImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_AE3FDA: ConcatStr
  loc_AE3FDB: FStStrNoPop var_9C
  loc_AE3FDE: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_AE3FE1: ConcatStr
  loc_AE3FE2: FStStrNoPop var_A0
  loc_AE3FE5: LitI4 1
  loc_AE3FEA: LitI4 1
  loc_AE3FEF: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_AE3FF4: FStVarCopyObj var_D8
  loc_AE3FF7: FLdRfVar var_D8
  loc_AE3FFA: FLdRfVar var_8C
  loc_AE3FFD: CVarRef
  loc_AE4002: ImpAdCallI2 Format$(, )
  loc_AE4007: FStStrNoPop var_A4
  loc_AE400A: ConcatStr
  loc_AE400B: FStStrNoPop var_A8
  loc_AE400E: LitStr ", ExorImpu, ExpeImpu, NumeLiqu, 1 CantImpu, "
  loc_AE4011: ConcatStr
  loc_AE4012: FStStrNoPop var_DC
  loc_AE4015: ILdRf Desafectar5etapas
  loc_AE4018: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AE401D: FStStrNoPop var_E0
  loc_AE4020: ConcatStr
  loc_AE4021: FStStrNoPop var_E4
  loc_AE4024: LitStr " ImunImpu, "
  loc_AE4027: ConcatStr
  loc_AE4028: FStStrNoPop var_E8
  loc_AE402B: ILdRf Desafectar5etapas
  loc_AE402E: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AE4033: FStStrNoPop var_EC
  loc_AE4036: ConcatStr
  loc_AE4037: FStStrNoPop var_F0
  loc_AE403A: LitStr " LiquImpu, DetaImpu, CucuPers, "
  loc_AE403D: ConcatStr
  loc_AE403E: FStStrNoPop var_F4
  loc_AE4041: ILdRf AjusImpu
  loc_AE4044: CStrI4
  loc_AE4046: FStStrNoPop var_F8
  loc_AE4049: ConcatStr
  loc_AE404A: FStStrNoPop var_FC
  loc_AE404D: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_AE4050: ConcatStr
  loc_AE4051: FStStrNoPop var_100
  loc_AE4054: ImpAdLdI4 MemVar_C3D03C
  loc_AE4057: ConcatStr
  loc_AE4058: FStStrNoPop var_104
  loc_AE405B: LitStr "'"
  loc_AE405E: ConcatStr
  loc_AE405F: FStStrNoPop var_108
  loc_AE4062: LitStr " FROM imputacion"
  loc_AE4065: ConcatStr
  loc_AE4066: FStStrNoPop var_10C
  loc_AE4069: LitStr " WHERE PeriInfo = "
  loc_AE406C: ConcatStr
  loc_AE406D: FStStrNoPop var_110
  loc_AE4070: ImpAdLdI2 MemVar_C3D064
  loc_AE4073: CStrUI1
  loc_AE4075: FStStrNoPop var_114
  loc_AE4078: ConcatStr
  loc_AE4079: FStStrNoPop var_118
  loc_AE407C: LitStr " AND IdImpu = "
  loc_AE407F: ConcatStr
  loc_AE4080: FStStrNoPop var_11C
  loc_AE4083: ILdRf IdImpu
  loc_AE4086: CStrI4
  loc_AE4088: FStStrNoPop var_120
  loc_AE408B: ConcatStr
  loc_AE408C: FStStrNoPop var_124
  loc_AE408F: LitStr ";"
  loc_AE4092: ConcatStr
  loc_AE4093: FStStr var_98
  loc_AE4096: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_AE40C7: FFree1Var var_D8 = ""
  loc_AE40CA: ILdRf var_98
  loc_AE40CD: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, CantImpu, ImunImpu, DeveImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_AE40D0: ConcatStr
  loc_AE40D1: FStStrNoPop var_9C
  loc_AE40D4: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_AE40D7: ConcatStr
  loc_AE40D8: FStStrNoPop var_A0
  loc_AE40DB: LitI4 1
  loc_AE40E0: LitI4 1
  loc_AE40E5: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_AE40EA: FStVarCopyObj var_D8
  loc_AE40ED: FLdRfVar var_D8
  loc_AE40F0: FLdRfVar var_8C
  loc_AE40F3: CVarRef
  loc_AE40F8: ImpAdCallI2 Format$(, )
  loc_AE40FD: FStStrNoPop var_A4
  loc_AE4100: ConcatStr
  loc_AE4101: FStStrNoPop var_A8
  loc_AE4104: LitStr ", ExorImpu, ExpeImpu, 1 CantImpu, "
  loc_AE4107: ConcatStr
  loc_AE4108: FStStrNoPop var_DC
  loc_AE410B: ILdRf Desafectar5etapas
  loc_AE410E: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AE4113: FStStrNoPop var_E0
  loc_AE4116: ConcatStr
  loc_AE4117: FStStrNoPop var_E4
  loc_AE411A: LitStr " ImunImpu, "
  loc_AE411D: ConcatStr
  loc_AE411E: FStStrNoPop var_E8
  loc_AE4121: ILdRf Desafectar5etapas
  loc_AE4124: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AE4129: FStStrNoPop var_EC
  loc_AE412C: ConcatStr
  loc_AE412D: FStStrNoPop var_F0
  loc_AE4130: LitStr " DeveImpu, DetaImpu, CucuPers, "
  loc_AE4133: ConcatStr
  loc_AE4134: FStStrNoPop var_F4
  loc_AE4137: ILdRf AjusImpu
  loc_AE413A: CStrI4
  loc_AE413C: FStStrNoPop var_F8
  loc_AE413F: ConcatStr
  loc_AE4140: FStStrNoPop var_FC
  loc_AE4143: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_AE4146: ConcatStr
  loc_AE4147: FStStrNoPop var_100
  loc_AE414A: ImpAdLdI4 MemVar_C3D03C
  loc_AE414D: ConcatStr
  loc_AE414E: FStStrNoPop var_104
  loc_AE4151: LitStr "'"
  loc_AE4154: ConcatStr
  loc_AE4155: FStStrNoPop var_108
  loc_AE4158: LitStr " FROM imputacion"
  loc_AE415B: ConcatStr
  loc_AE415C: FStStrNoPop var_10C
  loc_AE415F: LitStr " WHERE PeriInfo = "
  loc_AE4162: ConcatStr
  loc_AE4163: FStStrNoPop var_110
  loc_AE4166: ImpAdLdI2 MemVar_C3D064
  loc_AE4169: CStrUI1
  loc_AE416B: FStStrNoPop var_114
  loc_AE416E: ConcatStr
  loc_AE416F: FStStrNoPop var_118
  loc_AE4172: LitStr " AND IdImpu = "
  loc_AE4175: ConcatStr
  loc_AE4176: FStStrNoPop var_11C
  loc_AE4179: ILdRf IdImpu
  loc_AE417C: CStrI4
  loc_AE417E: FStStrNoPop var_120
  loc_AE4181: ConcatStr
  loc_AE4182: FStStrNoPop var_124
  loc_AE4185: LitStr ";"
  loc_AE4188: ConcatStr
  loc_AE4189: FStStr var_98
  loc_AE418C: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_AE41BD: FFree1Var var_D8 = ""
  loc_AE41C0: ILdRf var_98
  loc_AE41C3: LitStr "INSERT INTO devengado (PeriInfo, IdImpu, CodiCuco)"
  loc_AE41C6: ConcatStr
  loc_AE41C7: FStStrNoPop var_9C
  loc_AE41CA: LitStr " VALUES ("
  loc_AE41CD: ConcatStr
  loc_AE41CE: FStStrNoPop var_A0
  loc_AE41D1: ImpAdLdI2 MemVar_C3D064
  loc_AE41D4: CStrUI1
  loc_AE41D6: FStStrNoPop var_A4
  loc_AE41D9: ConcatStr
  loc_AE41DA: FStStrNoPop var_A8
  loc_AE41DD: LitStr ", @idimpu, '"
  loc_AE41E0: ConcatStr
  loc_AE41E1: FStStrNoPop var_DC
  loc_AE41E4: ILdRf var_90
  loc_AE41E7: ConcatStr
  loc_AE41E8: FStStrNoPop var_E0
  loc_AE41EB: LitStr "');"
  loc_AE41EE: ConcatStr
  loc_AE41EF: FStStr var_98
  loc_AE41F2: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_DC = ""
  loc_AE4201: ILdRf var_98
  loc_AE4204: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, DefiImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, AltaUsua)"
  loc_AE4207: ConcatStr
  loc_AE4208: FStStrNoPop var_9C
  loc_AE420B: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_AE420E: ConcatStr
  loc_AE420F: FStStrNoPop var_A0
  loc_AE4212: LitI4 1
  loc_AE4217: LitI4 1
  loc_AE421C: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_AE4221: FStVarCopyObj var_D8
  loc_AE4224: FLdRfVar var_D8
  loc_AE4227: FLdRfVar var_8C
  loc_AE422A: CVarRef
  loc_AE422F: ImpAdCallI2 Format$(, )
  loc_AE4234: FStStrNoPop var_A4
  loc_AE4237: ConcatStr
  loc_AE4238: FStStrNoPop var_A8
  loc_AE423B: LitStr ", ExorImpu, 1 CantImpu, "
  loc_AE423E: ConcatStr
  loc_AE423F: FStStrNoPop var_DC
  loc_AE4242: ILdRf Desafectar5etapas
  loc_AE4245: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AE424A: FStStrNoPop var_E0
  loc_AE424D: ConcatStr
  loc_AE424E: FStStrNoPop var_E4
  loc_AE4251: LitStr " ImunImpu, "
  loc_AE4254: ConcatStr
  loc_AE4255: FStStrNoPop var_E8
  loc_AE4258: ILdRf Desafectar5etapas
  loc_AE425B: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AE4260: FStStrNoPop var_EC
  loc_AE4263: ConcatStr
  loc_AE4264: FStStrNoPop var_F0
  loc_AE4267: LitStr " DefiImpu, DetaImpu, CucuPers, "
  loc_AE426A: ConcatStr
  loc_AE426B: FStStrNoPop var_F4
  loc_AE426E: ILdRf AjusImpu
  loc_AE4271: CStrI4
  loc_AE4273: FStStrNoPop var_F8
  loc_AE4276: ConcatStr
  loc_AE4277: FStStrNoPop var_FC
  loc_AE427A: LitStr ", CodiNope, Item, Altern, CodiOrco, '"
  loc_AE427D: ConcatStr
  loc_AE427E: FStStrNoPop var_100
  loc_AE4281: ImpAdLdI4 MemVar_C3D03C
  loc_AE4284: ConcatStr
  loc_AE4285: FStStrNoPop var_104
  loc_AE4288: LitStr "'"
  loc_AE428B: ConcatStr
  loc_AE428C: FStStrNoPop var_108
  loc_AE428F: LitStr " FROM imputacion"
  loc_AE4292: ConcatStr
  loc_AE4293: FStStrNoPop var_10C
  loc_AE4296: LitStr " WHERE PeriInfo = "
  loc_AE4299: ConcatStr
  loc_AE429A: FStStrNoPop var_110
  loc_AE429D: ImpAdLdI2 MemVar_C3D064
  loc_AE42A0: CStrUI1
  loc_AE42A2: FStStrNoPop var_114
  loc_AE42A5: ConcatStr
  loc_AE42A6: FStStrNoPop var_118
  loc_AE42A9: LitStr " AND IdImpu = "
  loc_AE42AC: ConcatStr
  loc_AE42AD: FStStrNoPop var_11C
  loc_AE42B0: ILdRf IdImpu
  loc_AE42B3: CStrI4
  loc_AE42B5: FStStrNoPop var_120
  loc_AE42B8: ConcatStr
  loc_AE42B9: FStStrNoPop var_124
  loc_AE42BC: LitStr ";"
  loc_AE42BF: ConcatStr
  loc_AE42C0: FStStr var_98
  loc_AE42C3: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_AE42F4: FFree1Var var_D8 = ""
  loc_AE42F7: ILdRf var_98
  loc_AE42FA: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, PrevImpu, DetaImpu, AjusImpu, CodiNope, Item, AltaUsua)"
  loc_AE42FD: ConcatStr
  loc_AE42FE: FStStrNoPop var_9C
  loc_AE4301: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_AE4304: ConcatStr
  loc_AE4305: FStStrNoPop var_A0
  loc_AE4308: LitI4 1
  loc_AE430D: LitI4 1
  loc_AE4312: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_AE4317: FStVarCopyObj var_D8
  loc_AE431A: FLdRfVar var_D8
  loc_AE431D: FLdRfVar var_8C
  loc_AE4320: CVarRef
  loc_AE4325: ImpAdCallI2 Format$(, )
  loc_AE432A: FStStrNoPop var_A4
  loc_AE432D: ConcatStr
  loc_AE432E: FStStrNoPop var_A8
  loc_AE4331: LitStr ", ExorImpu, 1 CantImpu, "
  loc_AE4334: ConcatStr
  loc_AE4335: FStStrNoPop var_DC
  loc_AE4338: ILdRf Desafectar5etapas
  loc_AE433B: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AE4340: FStStrNoPop var_E0
  loc_AE4343: ConcatStr
  loc_AE4344: FStStrNoPop var_E4
  loc_AE4347: LitStr " ImunImpu, "
  loc_AE434A: ConcatStr
  loc_AE434B: FStStrNoPop var_E8
  loc_AE434E: ILdRf Desafectar5etapas
  loc_AE4351: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AE4356: FStStrNoPop var_EC
  loc_AE4359: ConcatStr
  loc_AE435A: FStStrNoPop var_F0
  loc_AE435D: LitStr " PrevImpu, DetaImpu, "
  loc_AE4360: ConcatStr
  loc_AE4361: FStStrNoPop var_F4
  loc_AE4364: ILdRf AjusImpu
  loc_AE4367: CStrI4
  loc_AE4369: FStStrNoPop var_F8
  loc_AE436C: ConcatStr
  loc_AE436D: FStStrNoPop var_FC
  loc_AE4370: LitStr ", CodiNope, Item, '"
  loc_AE4373: ConcatStr
  loc_AE4374: FStStrNoPop var_100
  loc_AE4377: ImpAdLdI4 MemVar_C3D03C
  loc_AE437A: ConcatStr
  loc_AE437B: FStStrNoPop var_104
  loc_AE437E: LitStr "'"
  loc_AE4381: ConcatStr
  loc_AE4382: FStStrNoPop var_108
  loc_AE4385: LitStr " FROM imputacion"
  loc_AE4388: ConcatStr
  loc_AE4389: FStStrNoPop var_10C
  loc_AE438C: LitStr " WHERE PeriInfo = "
  loc_AE438F: ConcatStr
  loc_AE4390: FStStrNoPop var_110
  loc_AE4393: ImpAdLdI2 MemVar_C3D064
  loc_AE4396: CStrUI1
  loc_AE4398: FStStrNoPop var_114
  loc_AE439B: ConcatStr
  loc_AE439C: FStStrNoPop var_118
  loc_AE439F: LitStr " AND IdImpu = "
  loc_AE43A2: ConcatStr
  loc_AE43A3: FStStrNoPop var_11C
  loc_AE43A6: ILdRf IdImpu
  loc_AE43A9: CStrI4
  loc_AE43AB: FStStrNoPop var_120
  loc_AE43AE: ConcatStr
  loc_AE43AF: FStStrNoPop var_124
  loc_AE43B2: LitStr ";"
  loc_AE43B5: ConcatStr
  loc_AE43B6: FStStr var_98
  loc_AE43B9: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_AE43EA: FFree1Var var_D8 = ""
  loc_AE43ED: ILdRf var_98
  loc_AE43F0: LitStr "COMMIT;"
  loc_AE43F3: ConcatStr
  loc_AE43F4: FStStr var_98
  loc_AE43F7: ILdRf var_98
  loc_AE43FA: Call EjecutarRsCls(from_stack_1v)
  loc_AE43FF: LitI4 1
  loc_AE4404: FStR4 var_88
  loc_AE4407: FLdI2 HaceRequery
  loc_AE440A: BranchF loc_AE441D
  loc_AE440D: LitI2_Byte 0
  loc_AE440F: PopTmpLdAd2 var_132
  loc_AE4412: ILdRf var_88
  loc_AE4415: ImpAdLdI2 MemVar_C3D064
  loc_AE4418: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AE441D: ExitProcCbHresult
  loc_AE4423: LitStr "ROLLBACK;"
  loc_AE4426: Call EjecutarRsCls(from_stack_1v)
  loc_AE442B: LitI4 0
  loc_AE4430: FStR4 var_88
  loc_AE4433: ExitProcCbHresult
End Function

Public Function ReasignarDefinitivadeOC(IdImpu, FechImpu, CodiPart, CodiOrga, CodiUnga, CodiFifu, DefiImpu, HaceRequery) 'AEC878
  'Data Table: 4AFD00
  loc_AEC1C4: ILdRf FechImpu
  loc_AEC1C7: FStStrCopy var_8C
  loc_AEC1CA: ILdRf CodiPart
  loc_AEC1CD: FStStrCopy var_90
  loc_AEC1D0: ILdRf CodiOrga
  loc_AEC1D3: FStStrCopy ReasignarDefinitivadeOC
  loc_AEC1D6: ILdRf CodiUnga
  loc_AEC1D9: FStStrCopy var_98
  loc_AEC1DC: ILdRf CodiFifu
  loc_AEC1DF: FStStrCopy var_9C
  loc_AEC1E2: ILdRf DefiImpu
  loc_AEC1E5: FStStrCopy var_A0
  loc_AEC1E8: LitStr "START TRANSACTION;"
  loc_AEC1EB: FStStrCopy var_A4
  loc_AEC1EE: OnErrorGoto loc_AEC862
  loc_AEC1F1: ILdRf var_A4
  loc_AEC1F4: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, DefiImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, AltaUsua)"
  loc_AEC1F7: ConcatStr
  loc_AEC1F8: FStStrNoPop var_A8
  loc_AEC1FB: LitStr " SELECT PeriInfo, (SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_AEC1FE: ConcatStr
  loc_AEC1FF: FStStrNoPop var_AC
  loc_AEC202: ImpAdLdI2 MemVar_C3D064
  loc_AEC205: CStrUI1
  loc_AEC207: FStStrNoPop var_B0
  loc_AEC20A: ConcatStr
  loc_AEC20B: FStStrNoPop var_B4
  loc_AEC20E: LitStr " LIMIT 1), CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_AEC211: ConcatStr
  loc_AEC212: FStStrNoPop var_E8
  loc_AEC215: LitI4 1
  loc_AEC21A: LitI4 1
  loc_AEC21F: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_AEC224: FStVarCopyObj var_E4
  loc_AEC227: FLdRfVar var_E4
  loc_AEC22A: FLdRfVar var_8C
  loc_AEC22D: CVarRef
  loc_AEC232: ImpAdCallI2 Format$(, )
  loc_AEC237: FStStrNoPop var_EC
  loc_AEC23A: ConcatStr
  loc_AEC23B: FStStrNoPop var_F0
  loc_AEC23E: LitStr ", ExorImpu, 1 CantImpu, "
  loc_AEC241: ConcatStr
  loc_AEC242: FStStrNoPop var_F8
  loc_AEC245: ILdRf var_A0
  loc_AEC248: CR8Str
  loc_AEC24A: LitI2_Byte &HFF
  loc_AEC24C: CR8I2
  loc_AEC24D: MulR8
  loc_AEC24E: CStrR8
  loc_AEC250: FStStrNoPop var_F4
  loc_AEC253: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AEC258: FStStrNoPop var_FC
  loc_AEC25B: ConcatStr
  loc_AEC25C: FStStrNoPop var_100
  loc_AEC25F: LitStr " ImunImpu, "
  loc_AEC262: ConcatStr
  loc_AEC263: FStStrNoPop var_108
  loc_AEC266: ILdRf var_A0
  loc_AEC269: CR8Str
  loc_AEC26B: LitI2_Byte &HFF
  loc_AEC26D: CR8I2
  loc_AEC26E: MulR8
  loc_AEC26F: CStrR8
  loc_AEC271: FStStrNoPop var_104
  loc_AEC274: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AEC279: FStStrNoPop var_10C
  loc_AEC27C: ConcatStr
  loc_AEC27D: FStStrNoPop var_110
  loc_AEC280: LitStr " DefiImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, '"
  loc_AEC283: ConcatStr
  loc_AEC284: FStStrNoPop var_114
  loc_AEC287: ImpAdLdI4 MemVar_C3D03C
  loc_AEC28A: ConcatStr
  loc_AEC28B: FStStrNoPop var_118
  loc_AEC28E: LitStr "'"
  loc_AEC291: ConcatStr
  loc_AEC292: FStStrNoPop var_11C
  loc_AEC295: LitStr " FROM imputacion"
  loc_AEC298: ConcatStr
  loc_AEC299: FStStrNoPop var_120
  loc_AEC29C: LitStr " WHERE PeriInfo = "
  loc_AEC29F: ConcatStr
  loc_AEC2A0: FStStrNoPop var_124
  loc_AEC2A3: ImpAdLdI2 MemVar_C3D064
  loc_AEC2A6: CStrUI1
  loc_AEC2A8: FStStrNoPop var_128
  loc_AEC2AB: ConcatStr
  loc_AEC2AC: FStStrNoPop var_12C
  loc_AEC2AF: LitStr " AND IdImpu = "
  loc_AEC2B2: ConcatStr
  loc_AEC2B3: FStStrNoPop var_130
  loc_AEC2B6: ILdRf IdImpu
  loc_AEC2B9: CStrI4
  loc_AEC2BB: FStStrNoPop var_134
  loc_AEC2BE: ConcatStr
  loc_AEC2BF: FStStrNoPop var_138
  loc_AEC2C2: LitStr ";"
  loc_AEC2C5: ConcatStr
  loc_AEC2C6: FStStr var_A4
  loc_AEC2C9: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_AEC2FE: FFree1Var var_E4 = ""
  loc_AEC301: ILdRf var_A4
  loc_AEC304: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, PrevImpu, DetaImpu, CodiNope, Item, AltaUsua)"
  loc_AEC307: ConcatStr
  loc_AEC308: FStStrNoPop var_A8
  loc_AEC30B: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_AEC30E: ConcatStr
  loc_AEC30F: FStStrNoPop var_AC
  loc_AEC312: LitI4 1
  loc_AEC317: LitI4 1
  loc_AEC31C: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_AEC321: FStVarCopyObj var_E4
  loc_AEC324: FLdRfVar var_E4
  loc_AEC327: FLdRfVar var_8C
  loc_AEC32A: CVarRef
  loc_AEC32F: ImpAdCallI2 Format$(, )
  loc_AEC334: FStStrNoPop var_B0
  loc_AEC337: ConcatStr
  loc_AEC338: FStStrNoPop var_B4
  loc_AEC33B: LitStr ", ExorImpu, 1 CantImpu, "
  loc_AEC33E: ConcatStr
  loc_AEC33F: FStStrNoPop var_EC
  loc_AEC342: ILdRf var_A0
  loc_AEC345: CR8Str
  loc_AEC347: LitI2_Byte &HFF
  loc_AEC349: CR8I2
  loc_AEC34A: MulR8
  loc_AEC34B: CStrR8
  loc_AEC34D: FStStrNoPop var_E8
  loc_AEC350: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AEC355: FStStrNoPop var_F0
  loc_AEC358: ConcatStr
  loc_AEC359: FStStrNoPop var_F4
  loc_AEC35C: LitStr " ImunImpu, "
  loc_AEC35F: ConcatStr
  loc_AEC360: FStStrNoPop var_FC
  loc_AEC363: ILdRf var_A0
  loc_AEC366: CR8Str
  loc_AEC368: LitI2_Byte &HFF
  loc_AEC36A: CR8I2
  loc_AEC36B: MulR8
  loc_AEC36C: CStrR8
  loc_AEC36E: FStStrNoPop var_F8
  loc_AEC371: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AEC376: FStStrNoPop var_100
  loc_AEC379: ConcatStr
  loc_AEC37A: FStStrNoPop var_104
  loc_AEC37D: LitStr " PrevImpu, DetaImpu, CodiNope, Item, '"
  loc_AEC380: ConcatStr
  loc_AEC381: FStStrNoPop var_108
  loc_AEC384: ImpAdLdI4 MemVar_C3D03C
  loc_AEC387: ConcatStr
  loc_AEC388: FStStrNoPop var_10C
  loc_AEC38B: LitStr "'"
  loc_AEC38E: ConcatStr
  loc_AEC38F: FStStrNoPop var_110
  loc_AEC392: LitStr " FROM imputacion"
  loc_AEC395: ConcatStr
  loc_AEC396: FStStrNoPop var_114
  loc_AEC399: LitStr " WHERE PeriInfo = "
  loc_AEC39C: ConcatStr
  loc_AEC39D: FStStrNoPop var_118
  loc_AEC3A0: ImpAdLdI2 MemVar_C3D064
  loc_AEC3A3: CStrUI1
  loc_AEC3A5: FStStrNoPop var_11C
  loc_AEC3A8: ConcatStr
  loc_AEC3A9: FStStrNoPop var_120
  loc_AEC3AC: LitStr " AND IdImpu = "
  loc_AEC3AF: ConcatStr
  loc_AEC3B0: FStStrNoPop var_124
  loc_AEC3B3: ILdRf IdImpu
  loc_AEC3B6: CStrI4
  loc_AEC3B8: FStStrNoPop var_128
  loc_AEC3BB: ConcatStr
  loc_AEC3BC: FStStrNoPop var_12C
  loc_AEC3BF: LitStr ";"
  loc_AEC3C2: ConcatStr
  loc_AEC3C3: FStStr var_A4
  loc_AEC3C6: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_AEC3F5: FFree1Var var_E4 = ""
  loc_AEC3F8: ILdRf var_A4
  loc_AEC3FB: LitStr "SELECT @np:=CodiNope, @item:=Item, @alte:=Altern, @oc:=CodiOrco"
  loc_AEC3FE: ConcatStr
  loc_AEC3FF: FStStrNoPop var_A8
  loc_AEC402: LitStr " FROM imputacion"
  loc_AEC405: ConcatStr
  loc_AEC406: FStStrNoPop var_AC
  loc_AEC409: LitStr " WHERE PeriInfo = "
  loc_AEC40C: ConcatStr
  loc_AEC40D: FStStrNoPop var_B0
  loc_AEC410: ImpAdLdI2 MemVar_C3D064
  loc_AEC413: CStrUI1
  loc_AEC415: FStStrNoPop var_B4
  loc_AEC418: ConcatStr
  loc_AEC419: FStStrNoPop var_E8
  loc_AEC41C: LitStr " AND IdImpu = "
  loc_AEC41F: ConcatStr
  loc_AEC420: FStStrNoPop var_EC
  loc_AEC423: ILdRf IdImpu
  loc_AEC426: CStrI4
  loc_AEC428: FStStrNoPop var_F0
  loc_AEC42B: ConcatStr
  loc_AEC42C: FStStrNoPop var_F4
  loc_AEC42F: LitStr ";"
  loc_AEC432: ConcatStr
  loc_AEC433: FStStr var_A4
  loc_AEC436: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_AEC449: ILdRf var_A4
  loc_AEC44C: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, PrevImpu, DetaImpu, CodiNope, Item, AltaUsua)"
  loc_AEC44F: ConcatStr
  loc_AEC450: FStStrNoPop var_A8
  loc_AEC453: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, '"
  loc_AEC456: ConcatStr
  loc_AEC457: FStStrNoPop var_AC
  loc_AEC45A: ILdRf var_90
  loc_AEC45D: ConcatStr
  loc_AEC45E: FStStrNoPop var_B0
  loc_AEC461: LitStr "', '"
  loc_AEC464: ConcatStr
  loc_AEC465: FStStrNoPop var_B4
  loc_AEC468: ILdRf ReasignarDefinitivadeOC
  loc_AEC46B: ConcatStr
  loc_AEC46C: FStStrNoPop var_E8
  loc_AEC46F: LitStr "', "
  loc_AEC472: ConcatStr
  loc_AEC473: FStStrNoPop var_EC
  loc_AEC476: ILdRf var_98
  loc_AEC479: ConcatStr
  loc_AEC47A: FStStrNoPop var_F0
  loc_AEC47D: LitStr ", CodiInsu, '"
  loc_AEC480: ConcatStr
  loc_AEC481: FStStrNoPop var_F4
  loc_AEC484: ILdRf var_9C
  loc_AEC487: ConcatStr
  loc_AEC488: FStStrNoPop var_F8
  loc_AEC48B: LitStr "', "
  loc_AEC48E: ConcatStr
  loc_AEC48F: FStStrNoPop var_FC
  loc_AEC492: LitI4 1
  loc_AEC497: LitI4 1
  loc_AEC49C: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_AEC4A1: FStVarCopyObj var_E4
  loc_AEC4A4: FLdRfVar var_E4
  loc_AEC4A7: FLdRfVar var_8C
  loc_AEC4AA: CVarRef
  loc_AEC4AF: ImpAdCallI2 Format$(, )
  loc_AEC4B4: FStStrNoPop var_100
  loc_AEC4B7: ConcatStr
  loc_AEC4B8: FStStrNoPop var_104
  loc_AEC4BB: LitStr ", ExorImpu, 1 CantImpu, "
  loc_AEC4BE: ConcatStr
  loc_AEC4BF: FStStrNoPop var_10C
  loc_AEC4C2: ILdRf var_A0
  loc_AEC4C5: CR8Str
  loc_AEC4C7: LitI2_Byte 1
  loc_AEC4C9: CR8I2
  loc_AEC4CA: MulR8
  loc_AEC4CB: CStrR8
  loc_AEC4CD: FStStrNoPop var_108
  loc_AEC4D0: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AEC4D5: FStStrNoPop var_110
  loc_AEC4D8: ConcatStr
  loc_AEC4D9: FStStrNoPop var_114
  loc_AEC4DC: LitStr " ImunImpu, "
  loc_AEC4DF: ConcatStr
  loc_AEC4E0: FStStrNoPop var_11C
  loc_AEC4E3: ILdRf var_A0
  loc_AEC4E6: CR8Str
  loc_AEC4E8: LitI2_Byte 1
  loc_AEC4EA: CR8I2
  loc_AEC4EB: MulR8
  loc_AEC4EC: CStrR8
  loc_AEC4EE: FStStrNoPop var_118
  loc_AEC4F1: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AEC4F6: FStStrNoPop var_120
  loc_AEC4F9: ConcatStr
  loc_AEC4FA: FStStrNoPop var_124
  loc_AEC4FD: LitStr " PrevImpu, DetaImpu, CodiNope, Item, '"
  loc_AEC500: ConcatStr
  loc_AEC501: FStStrNoPop var_128
  loc_AEC504: ImpAdLdI4 MemVar_C3D03C
  loc_AEC507: ConcatStr
  loc_AEC508: FStStrNoPop var_12C
  loc_AEC50B: LitStr "'"
  loc_AEC50E: ConcatStr
  loc_AEC50F: FStStrNoPop var_130
  loc_AEC512: LitStr " FROM imputacion"
  loc_AEC515: ConcatStr
  loc_AEC516: FStStrNoPop var_134
  loc_AEC519: LitStr " WHERE PeriInfo = "
  loc_AEC51C: ConcatStr
  loc_AEC51D: FStStrNoPop var_138
  loc_AEC520: ImpAdLdI2 MemVar_C3D064
  loc_AEC523: CStrUI1
  loc_AEC525: FStStrNoPop var_13C
  loc_AEC528: ConcatStr
  loc_AEC529: FStStrNoPop var_140
  loc_AEC52C: LitStr " AND IdImpu = "
  loc_AEC52F: ConcatStr
  loc_AEC530: FStStrNoPop var_144
  loc_AEC533: ILdRf IdImpu
  loc_AEC536: CStrI4
  loc_AEC538: FStStrNoPop var_148
  loc_AEC53B: ConcatStr
  loc_AEC53C: FStStrNoPop var_14C
  loc_AEC53F: LitStr ";"
  loc_AEC542: ConcatStr
  loc_AEC543: FStStr var_A4
  loc_AEC546: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_AEC585: FFree1Var var_E4 = ""
  loc_AEC588: ILdRf var_A4
  loc_AEC58B: LitStr "UPDATE itemnota"
  loc_AEC58E: ConcatStr
  loc_AEC58F: FStStrNoPop var_A8
  loc_AEC592: LitStr " SET IdImpu = @idimpu, CodiPart = '"
  loc_AEC595: ConcatStr
  loc_AEC596: FStStrNoPop var_AC
  loc_AEC599: ILdRf var_90
  loc_AEC59C: ConcatStr
  loc_AEC59D: FStStrNoPop var_B0
  loc_AEC5A0: LitStr "', CodiOrga = '"
  loc_AEC5A3: ConcatStr
  loc_AEC5A4: FStStrNoPop var_B4
  loc_AEC5A7: ILdRf ReasignarDefinitivadeOC
  loc_AEC5AA: ConcatStr
  loc_AEC5AB: FStStrNoPop var_E8
  loc_AEC5AE: LitStr "', CodiFifu = '"
  loc_AEC5B1: ConcatStr
  loc_AEC5B2: FStStrNoPop var_EC
  loc_AEC5B5: ILdRf var_9C
  loc_AEC5B8: ConcatStr
  loc_AEC5B9: FStStrNoPop var_F0
  loc_AEC5BC: LitStr "', CodiUnga = "
  loc_AEC5BF: ConcatStr
  loc_AEC5C0: FStStrNoPop var_F4
  loc_AEC5C3: ILdRf var_98
  loc_AEC5C6: ConcatStr
  loc_AEC5C7: FStStrNoPop var_F8
  loc_AEC5CA: LitStr " WHERE PeriInfo = "
  loc_AEC5CD: ConcatStr
  loc_AEC5CE: FStStrNoPop var_FC
  loc_AEC5D1: ImpAdLdI2 MemVar_C3D064
  loc_AEC5D4: CStrUI1
  loc_AEC5D6: FStStrNoPop var_100
  loc_AEC5D9: ConcatStr
  loc_AEC5DA: FStStrNoPop var_104
  loc_AEC5DD: LitStr " AND CodiNope = @np AND CodiItno = @item;"
  loc_AEC5E0: ConcatStr
  loc_AEC5E1: FStStr var_A4
  loc_AEC5E4: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_AEC5FF: ILdRf var_A4
  loc_AEC602: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, DefiImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, AltaUsua)"
  loc_AEC605: ConcatStr
  loc_AEC606: FStStrNoPop var_A8
  loc_AEC609: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, '"
  loc_AEC60C: ConcatStr
  loc_AEC60D: FStStrNoPop var_AC
  loc_AEC610: ILdRf var_90
  loc_AEC613: ConcatStr
  loc_AEC614: FStStrNoPop var_B0
  loc_AEC617: LitStr "', '"
  loc_AEC61A: ConcatStr
  loc_AEC61B: FStStrNoPop var_B4
  loc_AEC61E: ILdRf ReasignarDefinitivadeOC
  loc_AEC621: ConcatStr
  loc_AEC622: FStStrNoPop var_E8
  loc_AEC625: LitStr "', "
  loc_AEC628: ConcatStr
  loc_AEC629: FStStrNoPop var_EC
  loc_AEC62C: ILdRf var_98
  loc_AEC62F: ConcatStr
  loc_AEC630: FStStrNoPop var_F0
  loc_AEC633: LitStr ", CodiInsu, '"
  loc_AEC636: ConcatStr
  loc_AEC637: FStStrNoPop var_F4
  loc_AEC63A: ILdRf var_9C
  loc_AEC63D: ConcatStr
  loc_AEC63E: FStStrNoPop var_F8
  loc_AEC641: LitStr "', "
  loc_AEC644: ConcatStr
  loc_AEC645: FStStrNoPop var_FC
  loc_AEC648: LitI4 1
  loc_AEC64D: LitI4 1
  loc_AEC652: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_AEC657: FStVarCopyObj var_E4
  loc_AEC65A: FLdRfVar var_E4
  loc_AEC65D: FLdRfVar var_8C
  loc_AEC660: CVarRef
  loc_AEC665: ImpAdCallI2 Format$(, )
  loc_AEC66A: FStStrNoPop var_100
  loc_AEC66D: ConcatStr
  loc_AEC66E: FStStrNoPop var_104
  loc_AEC671: LitStr ", ExorImpu, 1 CantImpu, "
  loc_AEC674: ConcatStr
  loc_AEC675: FStStrNoPop var_10C
  loc_AEC678: ILdRf var_A0
  loc_AEC67B: CR8Str
  loc_AEC67D: LitI2_Byte 1
  loc_AEC67F: CR8I2
  loc_AEC680: MulR8
  loc_AEC681: CStrR8
  loc_AEC683: FStStrNoPop var_108
  loc_AEC686: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AEC68B: FStStrNoPop var_110
  loc_AEC68E: ConcatStr
  loc_AEC68F: FStStrNoPop var_114
  loc_AEC692: LitStr " ImunImpu, "
  loc_AEC695: ConcatStr
  loc_AEC696: FStStrNoPop var_11C
  loc_AEC699: ILdRf var_A0
  loc_AEC69C: CR8Str
  loc_AEC69E: LitI2_Byte 1
  loc_AEC6A0: CR8I2
  loc_AEC6A1: MulR8
  loc_AEC6A2: CStrR8
  loc_AEC6A4: FStStrNoPop var_118
  loc_AEC6A7: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AEC6AC: FStStrNoPop var_120
  loc_AEC6AF: ConcatStr
  loc_AEC6B0: FStStrNoPop var_124
  loc_AEC6B3: LitStr " DefiImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, '"
  loc_AEC6B6: ConcatStr
  loc_AEC6B7: FStStrNoPop var_128
  loc_AEC6BA: ImpAdLdI4 MemVar_C3D03C
  loc_AEC6BD: ConcatStr
  loc_AEC6BE: FStStrNoPop var_12C
  loc_AEC6C1: LitStr "'"
  loc_AEC6C4: ConcatStr
  loc_AEC6C5: FStStrNoPop var_130
  loc_AEC6C8: LitStr " FROM imputacion"
  loc_AEC6CB: ConcatStr
  loc_AEC6CC: FStStrNoPop var_134
  loc_AEC6CF: LitStr " WHERE PeriInfo = "
  loc_AEC6D2: ConcatStr
  loc_AEC6D3: FStStrNoPop var_138
  loc_AEC6D6: ImpAdLdI2 MemVar_C3D064
  loc_AEC6D9: CStrUI1
  loc_AEC6DB: FStStrNoPop var_13C
  loc_AEC6DE: ConcatStr
  loc_AEC6DF: FStStrNoPop var_140
  loc_AEC6E2: LitStr " AND IdImpu = "
  loc_AEC6E5: ConcatStr
  loc_AEC6E6: FStStrNoPop var_144
  loc_AEC6E9: ILdRf IdImpu
  loc_AEC6EC: CStrI4
  loc_AEC6EE: FStStrNoPop var_148
  loc_AEC6F1: ConcatStr
  loc_AEC6F2: FStStrNoPop var_14C
  loc_AEC6F5: LitStr ";"
  loc_AEC6F8: ConcatStr
  loc_AEC6F9: FStStr var_A4
  loc_AEC6FC: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_AEC73B: FFree1Var var_E4 = ""
  loc_AEC73E: ILdRf var_A4
  loc_AEC741: LitStr "UPDATE itemcompra"
  loc_AEC744: ConcatStr
  loc_AEC745: FStStrNoPop var_A8
  loc_AEC748: LitStr " SET IdImpu = @idimpu, CodiPart = '"
  loc_AEC74B: ConcatStr
  loc_AEC74C: FStStrNoPop var_AC
  loc_AEC74F: ILdRf var_90
  loc_AEC752: ConcatStr
  loc_AEC753: FStStrNoPop var_B0
  loc_AEC756: LitStr "', CodiOrga = '"
  loc_AEC759: ConcatStr
  loc_AEC75A: FStStrNoPop var_B4
  loc_AEC75D: ILdRf ReasignarDefinitivadeOC
  loc_AEC760: ConcatStr
  loc_AEC761: FStStrNoPop var_E8
  loc_AEC764: LitStr "', CodiFifu = '"
  loc_AEC767: ConcatStr
  loc_AEC768: FStStrNoPop var_EC
  loc_AEC76B: ILdRf var_9C
  loc_AEC76E: ConcatStr
  loc_AEC76F: FStStrNoPop var_F0
  loc_AEC772: LitStr "', CodiUnga = "
  loc_AEC775: ConcatStr
  loc_AEC776: FStStrNoPop var_F4
  loc_AEC779: ILdRf var_98
  loc_AEC77C: ConcatStr
  loc_AEC77D: FStStrNoPop var_F8
  loc_AEC780: LitStr " WHERE PeriInfo = "
  loc_AEC783: ConcatStr
  loc_AEC784: FStStrNoPop var_FC
  loc_AEC787: ImpAdLdI2 MemVar_C3D064
  loc_AEC78A: CStrUI1
  loc_AEC78C: FStStrNoPop var_100
  loc_AEC78F: ConcatStr
  loc_AEC790: FStStrNoPop var_104
  loc_AEC793: LitStr " AND CodiOrco = @oc AND CodiItco = @item AND AlteItco = @alte;"
  loc_AEC796: ConcatStr
  loc_AEC797: FStStr var_A4
  loc_AEC79A: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_AEC7B5: ILdRf var_A4
  loc_AEC7B8: LitStr "UPDATE itemrecepcion"
  loc_AEC7BB: ConcatStr
  loc_AEC7BC: FStStrNoPop var_A8
  loc_AEC7BF: LitStr " SET CodiPart = '"
  loc_AEC7C2: ConcatStr
  loc_AEC7C3: FStStrNoPop var_AC
  loc_AEC7C6: ILdRf var_90
  loc_AEC7C9: ConcatStr
  loc_AEC7CA: FStStrNoPop var_B0
  loc_AEC7CD: LitStr "', CodiOrga = '"
  loc_AEC7D0: ConcatStr
  loc_AEC7D1: FStStrNoPop var_B4
  loc_AEC7D4: ILdRf ReasignarDefinitivadeOC
  loc_AEC7D7: ConcatStr
  loc_AEC7D8: FStStrNoPop var_E8
  loc_AEC7DB: LitStr "', CodiFifu = '"
  loc_AEC7DE: ConcatStr
  loc_AEC7DF: FStStrNoPop var_EC
  loc_AEC7E2: ILdRf var_9C
  loc_AEC7E5: ConcatStr
  loc_AEC7E6: FStStrNoPop var_F0
  loc_AEC7E9: LitStr "', CodiUnga = "
  loc_AEC7EC: ConcatStr
  loc_AEC7ED: FStStrNoPop var_F4
  loc_AEC7F0: ILdRf var_98
  loc_AEC7F3: ConcatStr
  loc_AEC7F4: FStStrNoPop var_F8
  loc_AEC7F7: LitStr " WHERE PeriInfo = "
  loc_AEC7FA: ConcatStr
  loc_AEC7FB: FStStrNoPop var_FC
  loc_AEC7FE: ImpAdLdI2 MemVar_C3D064
  loc_AEC801: CStrUI1
  loc_AEC803: FStStrNoPop var_100
  loc_AEC806: ConcatStr
  loc_AEC807: FStStrNoPop var_104
  loc_AEC80A: LitStr " AND CodiOrco = @oc AND CodiItco = @item AND AlteItco = @alte;"
  loc_AEC80D: ConcatStr
  loc_AEC80E: FStStr var_A4
  loc_AEC811: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_AEC82C: ILdRf var_A4
  loc_AEC82F: LitStr "COMMIT;"
  loc_AEC832: ConcatStr
  loc_AEC833: FStStr var_A4
  loc_AEC836: ILdRf var_A4
  loc_AEC839: Call EjecutarRsCls(from_stack_1v)
  loc_AEC83E: LitI4 1
  loc_AEC843: FStR4 var_88
  loc_AEC846: FLdI2 HaceRequery
  loc_AEC849: BranchF loc_AEC85C
  loc_AEC84C: LitI2_Byte 0
  loc_AEC84E: PopTmpLdAd2 var_14E
  loc_AEC851: ILdRf var_88
  loc_AEC854: ImpAdLdI2 MemVar_C3D064
  loc_AEC857: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AEC85C: ExitProcCbHresult
  loc_AEC862: LitStr "ROLLBACK;"
  loc_AEC865: Call EjecutarRsCls(from_stack_1v)
  loc_AEC86A: LitI4 0
  loc_AEC86F: FStR4 var_88
  loc_AEC872: ExitProcCbHresult
End Function

Public Function ReasignarDevengadodeOC(IdImpu, FechImpu, CodiPart, CodiOrga, CodiUnga, CodiFifu, DeveImpu, HaceRequery) 'B66D40
  'Data Table: 4AFD00
  loc_B66230: ILdRf FechImpu
  loc_B66233: FStStrCopy var_8C
  loc_B66236: ILdRf CodiPart
  loc_B66239: FStStrCopy var_90
  loc_B6623C: ILdRf CodiOrga
  loc_B6623F: FStStrCopy ReasignarDevengadodeOC
  loc_B66242: ILdRf CodiUnga
  loc_B66245: FStStrCopy var_98
  loc_B66248: ILdRf CodiFifu
  loc_B6624B: FStStrCopy var_9C
  loc_B6624E: ILdRf DeveImpu
  loc_B66251: FStStrCopy var_A0
  loc_B66254: LitStr "Municipalidad de Guaymallén"
  loc_B66257: LitStr "Municipalidad de Lavalle"
  loc_B6625A: EqStr
  loc_B6625C: BranchF loc_B66268
  loc_B6625F: LitStr vbNullString
  loc_B66262: FStStrCopy var_A4
  loc_B66265: Branch loc_B6626E
  loc_B66268: LitStr "START TRANSACTION;"
  loc_B6626B: FStStrCopy var_A4
  loc_B6626E: OnErrorGoto loc_B66D28
  loc_B66271: ILdRf var_A4
  loc_B66274: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, CantImpu, ImunImpu, DeveImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_B66277: ConcatStr
  loc_B66278: FStStrNoPop var_A8
  loc_B6627B: LitStr " SELECT PeriInfo, (SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_B6627E: ConcatStr
  loc_B6627F: FStStrNoPop var_AC
  loc_B66282: ImpAdLdI2 MemVar_C3D064
  loc_B66285: CStrUI1
  loc_B66287: FStStrNoPop var_B0
  loc_B6628A: ConcatStr
  loc_B6628B: FStStrNoPop var_B4
  loc_B6628E: LitStr " LIMIT 1), CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B66291: ConcatStr
  loc_B66292: FStStrNoPop var_E8
  loc_B66295: LitI4 1
  loc_B6629A: LitI4 1
  loc_B6629F: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_B662A4: FStVarCopyObj var_E4
  loc_B662A7: FLdRfVar var_E4
  loc_B662AA: FLdRfVar var_8C
  loc_B662AD: CVarRef
  loc_B662B2: ImpAdCallI2 Format$(, )
  loc_B662B7: FStStrNoPop var_EC
  loc_B662BA: ConcatStr
  loc_B662BB: FStStrNoPop var_F0
  loc_B662BE: LitStr ", ExorImpu, ExpeImpu, 1 CantImpu, "
  loc_B662C1: ConcatStr
  loc_B662C2: FStStrNoPop var_F8
  loc_B662C5: ILdRf var_A0
  loc_B662C8: CR8Str
  loc_B662CA: LitI2_Byte &HFF
  loc_B662CC: CR8I2
  loc_B662CD: MulR8
  loc_B662CE: CStrR8
  loc_B662D0: FStStrNoPop var_F4
  loc_B662D3: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B662D8: FStStrNoPop var_FC
  loc_B662DB: ConcatStr
  loc_B662DC: FStStrNoPop var_100
  loc_B662DF: LitStr " ImunImpu, "
  loc_B662E2: ConcatStr
  loc_B662E3: FStStrNoPop var_108
  loc_B662E6: ILdRf var_A0
  loc_B662E9: CR8Str
  loc_B662EB: LitI2_Byte &HFF
  loc_B662ED: CR8I2
  loc_B662EE: MulR8
  loc_B662EF: CStrR8
  loc_B662F1: FStStrNoPop var_104
  loc_B662F4: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B662F9: FStStrNoPop var_10C
  loc_B662FC: ConcatStr
  loc_B662FD: FStStrNoPop var_110
  loc_B66300: LitStr " DeveImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_B66303: ConcatStr
  loc_B66304: FStStrNoPop var_114
  loc_B66307: ImpAdLdI4 MemVar_C3D03C
  loc_B6630A: ConcatStr
  loc_B6630B: FStStrNoPop var_118
  loc_B6630E: LitStr "'"
  loc_B66311: ConcatStr
  loc_B66312: FStStrNoPop var_11C
  loc_B66315: LitStr " FROM imputacion"
  loc_B66318: ConcatStr
  loc_B66319: FStStrNoPop var_120
  loc_B6631C: LitStr " WHERE PeriInfo = "
  loc_B6631F: ConcatStr
  loc_B66320: FStStrNoPop var_124
  loc_B66323: ImpAdLdI2 MemVar_C3D064
  loc_B66326: CStrUI1
  loc_B66328: FStStrNoPop var_128
  loc_B6632B: ConcatStr
  loc_B6632C: FStStrNoPop var_12C
  loc_B6632F: LitStr " AND IdImpu = "
  loc_B66332: ConcatStr
  loc_B66333: FStStrNoPop var_130
  loc_B66336: ILdRf IdImpu
  loc_B66339: CStrI4
  loc_B6633B: FStStrNoPop var_134
  loc_B6633E: ConcatStr
  loc_B6633F: FStStrNoPop var_138
  loc_B66342: LitStr ";"
  loc_B66345: ConcatStr
  loc_B66346: FStStr var_A4
  loc_B66349: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_B6637E: FFree1Var var_E4 = ""
  loc_B66381: ILdRf var_A4
  loc_B66384: LitStr "INSERT INTO devengado (PeriInfo, IdImpu) VALUES ("
  loc_B66387: ConcatStr
  loc_B66388: FStStrNoPop var_A8
  loc_B6638B: ImpAdLdI2 MemVar_C3D064
  loc_B6638E: CStrUI1
  loc_B66390: FStStrNoPop var_AC
  loc_B66393: ConcatStr
  loc_B66394: FStStrNoPop var_B0
  loc_B66397: LitStr ", @idimpu);"
  loc_B6639A: ConcatStr
  loc_B6639B: FStStr var_A4
  loc_B6639E: FFreeStr var_A8 = "": var_AC = ""
  loc_B663A7: ILdRf var_A4
  loc_B663AA: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, DefiImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, AltaUsua)"
  loc_B663AD: ConcatStr
  loc_B663AE: FStStrNoPop var_A8
  loc_B663B1: LitStr " SELECT PeriInfo, (SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_B663B4: ConcatStr
  loc_B663B5: FStStrNoPop var_AC
  loc_B663B8: ImpAdLdI2 MemVar_C3D064
  loc_B663BB: CStrUI1
  loc_B663BD: FStStrNoPop var_B0
  loc_B663C0: ConcatStr
  loc_B663C1: FStStrNoPop var_B4
  loc_B663C4: LitStr " LIMIT 1), CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B663C7: ConcatStr
  loc_B663C8: FStStrNoPop var_E8
  loc_B663CB: LitI4 1
  loc_B663D0: LitI4 1
  loc_B663D5: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_B663DA: FStVarCopyObj var_E4
  loc_B663DD: FLdRfVar var_E4
  loc_B663E0: FLdRfVar var_8C
  loc_B663E3: CVarRef
  loc_B663E8: ImpAdCallI2 Format$(, )
  loc_B663ED: FStStrNoPop var_EC
  loc_B663F0: ConcatStr
  loc_B663F1: FStStrNoPop var_F0
  loc_B663F4: LitStr ", ExorImpu, 1 CantImpu, "
  loc_B663F7: ConcatStr
  loc_B663F8: FStStrNoPop var_F8
  loc_B663FB: ILdRf var_A0
  loc_B663FE: CR8Str
  loc_B66400: LitI2_Byte &HFF
  loc_B66402: CR8I2
  loc_B66403: MulR8
  loc_B66404: CStrR8
  loc_B66406: FStStrNoPop var_F4
  loc_B66409: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B6640E: FStStrNoPop var_FC
  loc_B66411: ConcatStr
  loc_B66412: FStStrNoPop var_100
  loc_B66415: LitStr " ImunImpu, "
  loc_B66418: ConcatStr
  loc_B66419: FStStrNoPop var_108
  loc_B6641C: ILdRf var_A0
  loc_B6641F: CR8Str
  loc_B66421: LitI2_Byte &HFF
  loc_B66423: CR8I2
  loc_B66424: MulR8
  loc_B66425: CStrR8
  loc_B66427: FStStrNoPop var_104
  loc_B6642A: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B6642F: FStStrNoPop var_10C
  loc_B66432: ConcatStr
  loc_B66433: FStStrNoPop var_110
  loc_B66436: LitStr " DefiImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, '"
  loc_B66439: ConcatStr
  loc_B6643A: FStStrNoPop var_114
  loc_B6643D: ImpAdLdI4 MemVar_C3D03C
  loc_B66440: ConcatStr
  loc_B66441: FStStrNoPop var_118
  loc_B66444: LitStr "'"
  loc_B66447: ConcatStr
  loc_B66448: FStStrNoPop var_11C
  loc_B6644B: LitStr " FROM imputacion"
  loc_B6644E: ConcatStr
  loc_B6644F: FStStrNoPop var_120
  loc_B66452: LitStr " WHERE PeriInfo = "
  loc_B66455: ConcatStr
  loc_B66456: FStStrNoPop var_124
  loc_B66459: ImpAdLdI2 MemVar_C3D064
  loc_B6645C: CStrUI1
  loc_B6645E: FStStrNoPop var_128
  loc_B66461: ConcatStr
  loc_B66462: FStStrNoPop var_12C
  loc_B66465: LitStr " AND IdImpu = "
  loc_B66468: ConcatStr
  loc_B66469: FStStrNoPop var_130
  loc_B6646C: ILdRf IdImpu
  loc_B6646F: CStrI4
  loc_B66471: FStStrNoPop var_134
  loc_B66474: ConcatStr
  loc_B66475: FStStrNoPop var_138
  loc_B66478: LitStr ";"
  loc_B6647B: ConcatStr
  loc_B6647C: FStStr var_A4
  loc_B6647F: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_B664B4: FFree1Var var_E4 = ""
  loc_B664B7: ILdRf var_A4
  loc_B664BA: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, PrevImpu, DetaImpu, CodiNope, Item, AltaUsua)"
  loc_B664BD: ConcatStr
  loc_B664BE: FStStrNoPop var_A8
  loc_B664C1: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B664C4: ConcatStr
  loc_B664C5: FStStrNoPop var_AC
  loc_B664C8: LitI4 1
  loc_B664CD: LitI4 1
  loc_B664D2: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_B664D7: FStVarCopyObj var_E4
  loc_B664DA: FLdRfVar var_E4
  loc_B664DD: FLdRfVar var_8C
  loc_B664E0: CVarRef
  loc_B664E5: ImpAdCallI2 Format$(, )
  loc_B664EA: FStStrNoPop var_B0
  loc_B664ED: ConcatStr
  loc_B664EE: FStStrNoPop var_B4
  loc_B664F1: LitStr ", ExorImpu, 1 CantImpu, "
  loc_B664F4: ConcatStr
  loc_B664F5: FStStrNoPop var_EC
  loc_B664F8: ILdRf var_A0
  loc_B664FB: CR8Str
  loc_B664FD: LitI2_Byte &HFF
  loc_B664FF: CR8I2
  loc_B66500: MulR8
  loc_B66501: CStrR8
  loc_B66503: FStStrNoPop var_E8
  loc_B66506: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B6650B: FStStrNoPop var_F0
  loc_B6650E: ConcatStr
  loc_B6650F: FStStrNoPop var_F4
  loc_B66512: LitStr " ImunImpu, "
  loc_B66515: ConcatStr
  loc_B66516: FStStrNoPop var_FC
  loc_B66519: ILdRf var_A0
  loc_B6651C: CR8Str
  loc_B6651E: LitI2_Byte &HFF
  loc_B66520: CR8I2
  loc_B66521: MulR8
  loc_B66522: CStrR8
  loc_B66524: FStStrNoPop var_F8
  loc_B66527: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B6652C: FStStrNoPop var_100
  loc_B6652F: ConcatStr
  loc_B66530: FStStrNoPop var_104
  loc_B66533: LitStr " PrevImpu, DetaImpu, CodiNope, Item, '"
  loc_B66536: ConcatStr
  loc_B66537: FStStrNoPop var_108
  loc_B6653A: ImpAdLdI4 MemVar_C3D03C
  loc_B6653D: ConcatStr
  loc_B6653E: FStStrNoPop var_10C
  loc_B66541: LitStr "'"
  loc_B66544: ConcatStr
  loc_B66545: FStStrNoPop var_110
  loc_B66548: LitStr " FROM imputacion"
  loc_B6654B: ConcatStr
  loc_B6654C: FStStrNoPop var_114
  loc_B6654F: LitStr " WHERE PeriInfo = "
  loc_B66552: ConcatStr
  loc_B66553: FStStrNoPop var_118
  loc_B66556: ImpAdLdI2 MemVar_C3D064
  loc_B66559: CStrUI1
  loc_B6655B: FStStrNoPop var_11C
  loc_B6655E: ConcatStr
  loc_B6655F: FStStrNoPop var_120
  loc_B66562: LitStr " AND IdImpu = "
  loc_B66565: ConcatStr
  loc_B66566: FStStrNoPop var_124
  loc_B66569: ILdRf IdImpu
  loc_B6656C: CStrI4
  loc_B6656E: FStStrNoPop var_128
  loc_B66571: ConcatStr
  loc_B66572: FStStrNoPop var_12C
  loc_B66575: LitStr ";"
  loc_B66578: ConcatStr
  loc_B66579: FStStr var_A4
  loc_B6657C: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_B665AB: FFree1Var var_E4 = ""
  loc_B665AE: ILdRf var_A4
  loc_B665B1: LitStr "SELECT @np:=CodiNope, @item:=Item, @alte:=Altern, @oc:=CodiOrco, @re:=CodiRece"
  loc_B665B4: ConcatStr
  loc_B665B5: FStStrNoPop var_A8
  loc_B665B8: LitStr " FROM imputacion"
  loc_B665BB: ConcatStr
  loc_B665BC: FStStrNoPop var_AC
  loc_B665BF: LitStr " WHERE PeriInfo = "
  loc_B665C2: ConcatStr
  loc_B665C3: FStStrNoPop var_B0
  loc_B665C6: ImpAdLdI2 MemVar_C3D064
  loc_B665C9: CStrUI1
  loc_B665CB: FStStrNoPop var_B4
  loc_B665CE: ConcatStr
  loc_B665CF: FStStrNoPop var_E8
  loc_B665D2: LitStr " AND IdImpu = "
  loc_B665D5: ConcatStr
  loc_B665D6: FStStrNoPop var_EC
  loc_B665D9: ILdRf IdImpu
  loc_B665DC: CStrI4
  loc_B665DE: FStStrNoPop var_F0
  loc_B665E1: ConcatStr
  loc_B665E2: FStStrNoPop var_F4
  loc_B665E5: LitStr ";"
  loc_B665E8: ConcatStr
  loc_B665E9: FStStr var_A4
  loc_B665EC: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_B665FF: ILdRf var_A4
  loc_B66602: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, PrevImpu, DetaImpu, CodiNope, Item, AltaUsua)"
  loc_B66605: ConcatStr
  loc_B66606: FStStrNoPop var_A8
  loc_B66609: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, '"
  loc_B6660C: ConcatStr
  loc_B6660D: FStStrNoPop var_AC
  loc_B66610: ILdRf var_90
  loc_B66613: ConcatStr
  loc_B66614: FStStrNoPop var_B0
  loc_B66617: LitStr "', '"
  loc_B6661A: ConcatStr
  loc_B6661B: FStStrNoPop var_B4
  loc_B6661E: ILdRf ReasignarDevengadodeOC
  loc_B66621: ConcatStr
  loc_B66622: FStStrNoPop var_E8
  loc_B66625: LitStr "', "
  loc_B66628: ConcatStr
  loc_B66629: FStStrNoPop var_EC
  loc_B6662C: ILdRf var_98
  loc_B6662F: ConcatStr
  loc_B66630: FStStrNoPop var_F0
  loc_B66633: LitStr ", CodiInsu, '"
  loc_B66636: ConcatStr
  loc_B66637: FStStrNoPop var_F4
  loc_B6663A: ILdRf var_9C
  loc_B6663D: ConcatStr
  loc_B6663E: FStStrNoPop var_F8
  loc_B66641: LitStr "', "
  loc_B66644: ConcatStr
  loc_B66645: FStStrNoPop var_FC
  loc_B66648: LitI4 1
  loc_B6664D: LitI4 1
  loc_B66652: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_B66657: FStVarCopyObj var_E4
  loc_B6665A: FLdRfVar var_E4
  loc_B6665D: FLdRfVar var_8C
  loc_B66660: CVarRef
  loc_B66665: ImpAdCallI2 Format$(, )
  loc_B6666A: FStStrNoPop var_100
  loc_B6666D: ConcatStr
  loc_B6666E: FStStrNoPop var_104
  loc_B66671: LitStr ", ExorImpu, 1 CantImpu, "
  loc_B66674: ConcatStr
  loc_B66675: FStStrNoPop var_10C
  loc_B66678: ILdRf var_A0
  loc_B6667B: CR8Str
  loc_B6667D: LitI2_Byte 1
  loc_B6667F: CR8I2
  loc_B66680: MulR8
  loc_B66681: CStrR8
  loc_B66683: FStStrNoPop var_108
  loc_B66686: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B6668B: FStStrNoPop var_110
  loc_B6668E: ConcatStr
  loc_B6668F: FStStrNoPop var_114
  loc_B66692: LitStr " ImunImpu, "
  loc_B66695: ConcatStr
  loc_B66696: FStStrNoPop var_11C
  loc_B66699: ILdRf var_A0
  loc_B6669C: CR8Str
  loc_B6669E: LitI2_Byte 1
  loc_B666A0: CR8I2
  loc_B666A1: MulR8
  loc_B666A2: CStrR8
  loc_B666A4: FStStrNoPop var_118
  loc_B666A7: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B666AC: FStStrNoPop var_120
  loc_B666AF: ConcatStr
  loc_B666B0: FStStrNoPop var_124
  loc_B666B3: LitStr " PrevImpu, DetaImpu, CodiNope, Item, '"
  loc_B666B6: ConcatStr
  loc_B666B7: FStStrNoPop var_128
  loc_B666BA: ImpAdLdI4 MemVar_C3D03C
  loc_B666BD: ConcatStr
  loc_B666BE: FStStrNoPop var_12C
  loc_B666C1: LitStr "'"
  loc_B666C4: ConcatStr
  loc_B666C5: FStStrNoPop var_130
  loc_B666C8: LitStr " FROM imputacion"
  loc_B666CB: ConcatStr
  loc_B666CC: FStStrNoPop var_134
  loc_B666CF: LitStr " WHERE PeriInfo = "
  loc_B666D2: ConcatStr
  loc_B666D3: FStStrNoPop var_138
  loc_B666D6: ImpAdLdI2 MemVar_C3D064
  loc_B666D9: CStrUI1
  loc_B666DB: FStStrNoPop var_13C
  loc_B666DE: ConcatStr
  loc_B666DF: FStStrNoPop var_140
  loc_B666E2: LitStr " AND IdImpu = "
  loc_B666E5: ConcatStr
  loc_B666E6: FStStrNoPop var_144
  loc_B666E9: ILdRf IdImpu
  loc_B666EC: CStrI4
  loc_B666EE: FStStrNoPop var_148
  loc_B666F1: ConcatStr
  loc_B666F2: FStStrNoPop var_14C
  loc_B666F5: LitStr ";"
  loc_B666F8: ConcatStr
  loc_B666F9: FStStr var_A4
  loc_B666FC: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_B6673B: FFree1Var var_E4 = ""
  loc_B6673E: ILdRf var_A4
  loc_B66741: LitStr "UPDATE itemnota"
  loc_B66744: ConcatStr
  loc_B66745: FStStrNoPop var_A8
  loc_B66748: LitStr " SET IdImpu = @idimpu, CodiPart = '"
  loc_B6674B: ConcatStr
  loc_B6674C: FStStrNoPop var_AC
  loc_B6674F: ILdRf var_90
  loc_B66752: ConcatStr
  loc_B66753: FStStrNoPop var_B0
  loc_B66756: LitStr "', CodiOrga = '"
  loc_B66759: ConcatStr
  loc_B6675A: FStStrNoPop var_B4
  loc_B6675D: ILdRf ReasignarDevengadodeOC
  loc_B66760: ConcatStr
  loc_B66761: FStStrNoPop var_E8
  loc_B66764: LitStr "', CodiFifu = '"
  loc_B66767: ConcatStr
  loc_B66768: FStStrNoPop var_EC
  loc_B6676B: ILdRf var_9C
  loc_B6676E: ConcatStr
  loc_B6676F: FStStrNoPop var_F0
  loc_B66772: LitStr "', CodiUnga = "
  loc_B66775: ConcatStr
  loc_B66776: FStStrNoPop var_F4
  loc_B66779: ILdRf var_98
  loc_B6677C: ConcatStr
  loc_B6677D: FStStrNoPop var_F8
  loc_B66780: LitStr " WHERE PeriInfo = "
  loc_B66783: ConcatStr
  loc_B66784: FStStrNoPop var_FC
  loc_B66787: ImpAdLdI2 MemVar_C3D064
  loc_B6678A: CStrUI1
  loc_B6678C: FStStrNoPop var_100
  loc_B6678F: ConcatStr
  loc_B66790: FStStrNoPop var_104
  loc_B66793: LitStr " AND CodiNope = @np AND CodiItno = @item;"
  loc_B66796: ConcatStr
  loc_B66797: FStStr var_A4
  loc_B6679A: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_B667B5: ILdRf var_A4
  loc_B667B8: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, DefiImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, AltaUsua)"
  loc_B667BB: ConcatStr
  loc_B667BC: FStStrNoPop var_A8
  loc_B667BF: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, '"
  loc_B667C2: ConcatStr
  loc_B667C3: FStStrNoPop var_AC
  loc_B667C6: ILdRf var_90
  loc_B667C9: ConcatStr
  loc_B667CA: FStStrNoPop var_B0
  loc_B667CD: LitStr "', '"
  loc_B667D0: ConcatStr
  loc_B667D1: FStStrNoPop var_B4
  loc_B667D4: ILdRf ReasignarDevengadodeOC
  loc_B667D7: ConcatStr
  loc_B667D8: FStStrNoPop var_E8
  loc_B667DB: LitStr "', "
  loc_B667DE: ConcatStr
  loc_B667DF: FStStrNoPop var_EC
  loc_B667E2: ILdRf var_98
  loc_B667E5: ConcatStr
  loc_B667E6: FStStrNoPop var_F0
  loc_B667E9: LitStr ", CodiInsu, '"
  loc_B667EC: ConcatStr
  loc_B667ED: FStStrNoPop var_F4
  loc_B667F0: ILdRf var_9C
  loc_B667F3: ConcatStr
  loc_B667F4: FStStrNoPop var_F8
  loc_B667F7: LitStr "', "
  loc_B667FA: ConcatStr
  loc_B667FB: FStStrNoPop var_FC
  loc_B667FE: LitI4 1
  loc_B66803: LitI4 1
  loc_B66808: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_B6680D: FStVarCopyObj var_E4
  loc_B66810: FLdRfVar var_E4
  loc_B66813: FLdRfVar var_8C
  loc_B66816: CVarRef
  loc_B6681B: ImpAdCallI2 Format$(, )
  loc_B66820: FStStrNoPop var_100
  loc_B66823: ConcatStr
  loc_B66824: FStStrNoPop var_104
  loc_B66827: LitStr ", ExorImpu, 1 CantImpu, "
  loc_B6682A: ConcatStr
  loc_B6682B: FStStrNoPop var_10C
  loc_B6682E: ILdRf var_A0
  loc_B66831: CR8Str
  loc_B66833: LitI2_Byte 1
  loc_B66835: CR8I2
  loc_B66836: MulR8
  loc_B66837: CStrR8
  loc_B66839: FStStrNoPop var_108
  loc_B6683C: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B66841: FStStrNoPop var_110
  loc_B66844: ConcatStr
  loc_B66845: FStStrNoPop var_114
  loc_B66848: LitStr " ImunImpu, "
  loc_B6684B: ConcatStr
  loc_B6684C: FStStrNoPop var_11C
  loc_B6684F: ILdRf var_A0
  loc_B66852: CR8Str
  loc_B66854: LitI2_Byte 1
  loc_B66856: CR8I2
  loc_B66857: MulR8
  loc_B66858: CStrR8
  loc_B6685A: FStStrNoPop var_118
  loc_B6685D: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B66862: FStStrNoPop var_120
  loc_B66865: ConcatStr
  loc_B66866: FStStrNoPop var_124
  loc_B66869: LitStr " DefiImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, '"
  loc_B6686C: ConcatStr
  loc_B6686D: FStStrNoPop var_128
  loc_B66870: ImpAdLdI4 MemVar_C3D03C
  loc_B66873: ConcatStr
  loc_B66874: FStStrNoPop var_12C
  loc_B66877: LitStr "'"
  loc_B6687A: ConcatStr
  loc_B6687B: FStStrNoPop var_130
  loc_B6687E: LitStr " FROM imputacion"
  loc_B66881: ConcatStr
  loc_B66882: FStStrNoPop var_134
  loc_B66885: LitStr " WHERE PeriInfo = "
  loc_B66888: ConcatStr
  loc_B66889: FStStrNoPop var_138
  loc_B6688C: ImpAdLdI2 MemVar_C3D064
  loc_B6688F: CStrUI1
  loc_B66891: FStStrNoPop var_13C
  loc_B66894: ConcatStr
  loc_B66895: FStStrNoPop var_140
  loc_B66898: LitStr " AND IdImpu = "
  loc_B6689B: ConcatStr
  loc_B6689C: FStStrNoPop var_144
  loc_B6689F: ILdRf IdImpu
  loc_B668A2: CStrI4
  loc_B668A4: FStStrNoPop var_148
  loc_B668A7: ConcatStr
  loc_B668A8: FStStrNoPop var_14C
  loc_B668AB: LitStr ";"
  loc_B668AE: ConcatStr
  loc_B668AF: FStStr var_A4
  loc_B668B2: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_B668F1: FFree1Var var_E4 = ""
  loc_B668F4: ILdRf var_A4
  loc_B668F7: LitStr "UPDATE itemcompra"
  loc_B668FA: ConcatStr
  loc_B668FB: FStStrNoPop var_A8
  loc_B668FE: LitStr " SET IdImpu = @idimpu, CodiPart = '"
  loc_B66901: ConcatStr
  loc_B66902: FStStrNoPop var_AC
  loc_B66905: ILdRf var_90
  loc_B66908: ConcatStr
  loc_B66909: FStStrNoPop var_B0
  loc_B6690C: LitStr "', CodiOrga = '"
  loc_B6690F: ConcatStr
  loc_B66910: FStStrNoPop var_B4
  loc_B66913: ILdRf ReasignarDevengadodeOC
  loc_B66916: ConcatStr
  loc_B66917: FStStrNoPop var_E8
  loc_B6691A: LitStr "', CodiFifu = '"
  loc_B6691D: ConcatStr
  loc_B6691E: FStStrNoPop var_EC
  loc_B66921: ILdRf var_9C
  loc_B66924: ConcatStr
  loc_B66925: FStStrNoPop var_F0
  loc_B66928: LitStr "', CodiUnga = "
  loc_B6692B: ConcatStr
  loc_B6692C: FStStrNoPop var_F4
  loc_B6692F: ILdRf var_98
  loc_B66932: ConcatStr
  loc_B66933: FStStrNoPop var_F8
  loc_B66936: LitStr " WHERE PeriInfo = "
  loc_B66939: ConcatStr
  loc_B6693A: FStStrNoPop var_FC
  loc_B6693D: ImpAdLdI2 MemVar_C3D064
  loc_B66940: CStrUI1
  loc_B66942: FStStrNoPop var_100
  loc_B66945: ConcatStr
  loc_B66946: FStStrNoPop var_104
  loc_B66949: LitStr " AND CodiOrco = @oc AND CodiItco = @item AND AlteItco = @alte;"
  loc_B6694C: ConcatStr
  loc_B6694D: FStStr var_A4
  loc_B66950: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_B6696B: ILdRf var_A4
  loc_B6696E: LitStr "UPDATE itemrecepcion"
  loc_B66971: ConcatStr
  loc_B66972: FStStrNoPop var_A8
  loc_B66975: LitStr " SET CodiPart = '"
  loc_B66978: ConcatStr
  loc_B66979: FStStrNoPop var_AC
  loc_B6697C: ILdRf var_90
  loc_B6697F: ConcatStr
  loc_B66980: FStStrNoPop var_B0
  loc_B66983: LitStr "', CodiOrga = '"
  loc_B66986: ConcatStr
  loc_B66987: FStStrNoPop var_B4
  loc_B6698A: ILdRf ReasignarDevengadodeOC
  loc_B6698D: ConcatStr
  loc_B6698E: FStStrNoPop var_E8
  loc_B66991: LitStr "', CodiFifu = '"
  loc_B66994: ConcatStr
  loc_B66995: FStStrNoPop var_EC
  loc_B66998: ILdRf var_9C
  loc_B6699B: ConcatStr
  loc_B6699C: FStStrNoPop var_F0
  loc_B6699F: LitStr "', CodiUnga = "
  loc_B669A2: ConcatStr
  loc_B669A3: FStStrNoPop var_F4
  loc_B669A6: ILdRf var_98
  loc_B669A9: ConcatStr
  loc_B669AA: FStStrNoPop var_F8
  loc_B669AD: LitStr " WHERE PeriInfo = "
  loc_B669B0: ConcatStr
  loc_B669B1: FStStrNoPop var_FC
  loc_B669B4: ImpAdLdI2 MemVar_C3D064
  loc_B669B7: CStrUI1
  loc_B669B9: FStStrNoPop var_100
  loc_B669BC: ConcatStr
  loc_B669BD: FStStrNoPop var_104
  loc_B669C0: LitStr " AND CodiOrco = @oc AND CodiItco = @item AND AlteItco = @alte;"
  loc_B669C3: ConcatStr
  loc_B669C4: FStStr var_A4
  loc_B669C7: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_B669E2: ILdRf var_A4
  loc_B669E5: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, CantImpu, ImunImpu, DeveImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_B669E8: ConcatStr
  loc_B669E9: FStStrNoPop var_A8
  loc_B669EC: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, '"
  loc_B669EF: ConcatStr
  loc_B669F0: FStStrNoPop var_AC
  loc_B669F3: ILdRf var_90
  loc_B669F6: ConcatStr
  loc_B669F7: FStStrNoPop var_B0
  loc_B669FA: LitStr "', '"
  loc_B669FD: ConcatStr
  loc_B669FE: FStStrNoPop var_B4
  loc_B66A01: ILdRf ReasignarDevengadodeOC
  loc_B66A04: ConcatStr
  loc_B66A05: FStStrNoPop var_E8
  loc_B66A08: LitStr "', "
  loc_B66A0B: ConcatStr
  loc_B66A0C: FStStrNoPop var_EC
  loc_B66A0F: ILdRf var_98
  loc_B66A12: ConcatStr
  loc_B66A13: FStStrNoPop var_F0
  loc_B66A16: LitStr ", @insu:=CodiInsu, '"
  loc_B66A19: ConcatStr
  loc_B66A1A: FStStrNoPop var_F4
  loc_B66A1D: ILdRf var_9C
  loc_B66A20: ConcatStr
  loc_B66A21: FStStrNoPop var_F8
  loc_B66A24: LitStr "', "
  loc_B66A27: ConcatStr
  loc_B66A28: FStStrNoPop var_FC
  loc_B66A2B: LitI4 1
  loc_B66A30: LitI4 1
  loc_B66A35: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_B66A3A: FStVarCopyObj var_E4
  loc_B66A3D: FLdRfVar var_E4
  loc_B66A40: FLdRfVar var_8C
  loc_B66A43: CVarRef
  loc_B66A48: ImpAdCallI2 Format$(, )
  loc_B66A4D: FStStrNoPop var_100
  loc_B66A50: ConcatStr
  loc_B66A51: FStStrNoPop var_104
  loc_B66A54: LitStr ", @exor:=ExorImpu, @expe:=ExpeImpu, 1 CantImpu, "
  loc_B66A57: ConcatStr
  loc_B66A58: FStStrNoPop var_10C
  loc_B66A5B: ILdRf var_A0
  loc_B66A5E: CR8Str
  loc_B66A60: LitI2_Byte 1
  loc_B66A62: CR8I2
  loc_B66A63: MulR8
  loc_B66A64: CStrR8
  loc_B66A66: FStStrNoPop var_108
  loc_B66A69: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B66A6E: FStStrNoPop var_110
  loc_B66A71: ConcatStr
  loc_B66A72: FStStrNoPop var_114
  loc_B66A75: LitStr " ImunImpu, "
  loc_B66A78: ConcatStr
  loc_B66A79: FStStrNoPop var_11C
  loc_B66A7C: ILdRf var_A0
  loc_B66A7F: CR8Str
  loc_B66A81: LitI2_Byte 1
  loc_B66A83: CR8I2
  loc_B66A84: MulR8
  loc_B66A85: CStrR8
  loc_B66A87: FStStrNoPop var_118
  loc_B66A8A: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B66A8F: FStStrNoPop var_120
  loc_B66A92: ConcatStr
  loc_B66A93: FStStrNoPop var_124
  loc_B66A96: LitStr " DeveImpu, @deta:=DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_B66A99: ConcatStr
  loc_B66A9A: FStStrNoPop var_128
  loc_B66A9D: ImpAdLdI4 MemVar_C3D03C
  loc_B66AA0: ConcatStr
  loc_B66AA1: FStStrNoPop var_12C
  loc_B66AA4: LitStr "'"
  loc_B66AA7: ConcatStr
  loc_B66AA8: FStStrNoPop var_130
  loc_B66AAB: LitStr " FROM imputacion"
  loc_B66AAE: ConcatStr
  loc_B66AAF: FStStrNoPop var_134
  loc_B66AB2: LitStr " WHERE PeriInfo = "
  loc_B66AB5: ConcatStr
  loc_B66AB6: FStStrNoPop var_138
  loc_B66AB9: ImpAdLdI2 MemVar_C3D064
  loc_B66ABC: CStrUI1
  loc_B66ABE: FStStrNoPop var_13C
  loc_B66AC1: ConcatStr
  loc_B66AC2: FStStrNoPop var_140
  loc_B66AC5: LitStr " AND IdImpu = "
  loc_B66AC8: ConcatStr
  loc_B66AC9: FStStrNoPop var_144
  loc_B66ACC: ILdRf IdImpu
  loc_B66ACF: CStrI4
  loc_B66AD1: FStStrNoPop var_148
  loc_B66AD4: ConcatStr
  loc_B66AD5: FStStrNoPop var_14C
  loc_B66AD8: LitStr ";"
  loc_B66ADB: ConcatStr
  loc_B66ADC: FStStr var_A4
  loc_B66ADF: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_B66B1E: FFree1Var var_E4 = ""
  loc_B66B21: ILdRf var_A4
  loc_B66B24: LitStr "INSERT INTO devengado (PeriInfo, IdImpu) VALUES ("
  loc_B66B27: ConcatStr
  loc_B66B28: FStStrNoPop var_A8
  loc_B66B2B: ImpAdLdI2 MemVar_C3D064
  loc_B66B2E: CStrUI1
  loc_B66B30: FStStrNoPop var_AC
  loc_B66B33: ConcatStr
  loc_B66B34: FStStrNoPop var_B0
  loc_B66B37: LitStr ", @idimpu);"
  loc_B66B3A: ConcatStr
  loc_B66B3B: FStStr var_A4
  loc_B66B3E: FFreeStr var_A8 = "": var_AC = ""
  loc_B66B47: LitStr "SELECT * FROM partida WHERE PeriInfo = "
  loc_B66B4A: ImpAdLdI2 MemVar_C3D064
  loc_B66B4D: CStrUI1
  loc_B66B4F: FStStrNoPop var_A8
  loc_B66B52: ConcatStr
  loc_B66B53: FStStrNoPop var_AC
  loc_B66B56: LitStr " AND CodiPart = '"
  loc_B66B59: ConcatStr
  loc_B66B5A: FStStrNoPop var_B0
  loc_B66B5D: ILdRf var_90
  loc_B66B60: ConcatStr
  loc_B66B61: FStStrNoPop var_B4
  loc_B66B64: LitStr "' AND InvePart = 1;"
  loc_B66B67: ConcatStr
  loc_B66B68: FStStrNoPop var_E8
  loc_B66B6B: Call EjecutarRsCls(from_stack_1v)
  loc_B66B70: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_B66B7D: FLdRfVar var_150
  loc_B66B80: FLdPr Me
  loc_B66B83: MemLdPr global_56
  loc_B66B86:  = Me.RecordCount
  loc_B66B8B: ILdRf var_150
  loc_B66B8E: LitI4 0
  loc_B66B93: GtI4
  loc_B66B94: BranchF loc_B66C63
  loc_B66B97: ILdRf var_A4
  loc_B66B9A: LitStr "INSERT INTO invepatrimonial (IdInpa,CodiInpa,DetaInpa,CaraInpa,ObseInpa,FechInpa,PeriInfo,CodiInsu,CantInpa,ImunInpa,ImpoInpa,CodiCuco,IdImpu,FegaInpa,ExorImpu,ExpeImpu,MarcInpa,IdUbfi,PeusInpa,CodiAlbius,AltaUsua)"
  loc_B66B9D: ConcatStr
  loc_B66B9E: FStStrNoPop var_A8
  loc_B66BA1: LitStr " VALUES ((SELECT Max(IdInpa)+1 IdInpa FROM invepatrimonial t),0, @deta,'','',"
  loc_B66BA4: ConcatStr
  loc_B66BA5: FStStrNoPop var_AC
  loc_B66BA8: LitI4 1
  loc_B66BAD: LitI4 1
  loc_B66BB2: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_B66BB7: FStVarCopyObj var_E4
  loc_B66BBA: FLdRfVar var_E4
  loc_B66BBD: FLdRfVar var_8C
  loc_B66BC0: CVarRef
  loc_B66BC5: ImpAdCallI2 Format$(, )
  loc_B66BCA: FStStrNoPop var_B0
  loc_B66BCD: ConcatStr
  loc_B66BCE: FStStrNoPop var_B4
  loc_B66BD1: LitStr ","
  loc_B66BD4: ConcatStr
  loc_B66BD5: FStStrNoPop var_E8
  loc_B66BD8: ImpAdLdI2 MemVar_C3D064
  loc_B66BDB: CStrUI1
  loc_B66BDD: FStStrNoPop var_EC
  loc_B66BE0: ConcatStr
  loc_B66BE1: FStStrNoPop var_F0
  loc_B66BE4: LitStr ", @insu, 1,"
  loc_B66BE7: ConcatStr
  loc_B66BE8: FStStrNoPop var_F8
  loc_B66BEB: ILdRf var_A0
  loc_B66BEE: CR8Str
  loc_B66BF0: LitI2_Byte 1
  loc_B66BF2: CR8I2
  loc_B66BF3: MulR8
  loc_B66BF4: CStrR8
  loc_B66BF6: FStStrNoPop var_F4
  loc_B66BF9: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B66BFE: FStStrNoPop var_FC
  loc_B66C01: ConcatStr
  loc_B66C02: FStStrNoPop var_100
  loc_B66C05: LitStr ","
  loc_B66C08: ConcatStr
  loc_B66C09: FStStrNoPop var_108
  loc_B66C0C: ILdRf var_A0
  loc_B66C0F: CR8Str
  loc_B66C11: LitI2_Byte 1
  loc_B66C13: CR8I2
  loc_B66C14: MulR8
  loc_B66C15: CStrR8
  loc_B66C17: FStStrNoPop var_104
  loc_B66C1A: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B66C1F: FStStrNoPop var_10C
  loc_B66C22: ConcatStr
  loc_B66C23: FStStrNoPop var_110
  loc_B66C26: LitStr ",'',@idimpu,NULL, @exor,@expe,0,0,0,2,'"
  loc_B66C29: ConcatStr
  loc_B66C2A: FStStrNoPop var_114
  loc_B66C2D: ImpAdLdI4 MemVar_C3D03C
  loc_B66C30: ConcatStr
  loc_B66C31: FStStrNoPop var_118
  loc_B66C34: LitStr "');"
  loc_B66C37: ConcatStr
  loc_B66C38: FStStr var_A4
  loc_B66C3B: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_B66C60: FFree1Var var_E4 = ""
  loc_B66C63: ILdRf var_A4
  loc_B66C66: LitStr "UPDATE itemrecepcion"
  loc_B66C69: ConcatStr
  loc_B66C6A: FStStrNoPop var_A8
  loc_B66C6D: LitStr " SET IdImpu = @idimpu, CodiPart = '"
  loc_B66C70: ConcatStr
  loc_B66C71: FStStrNoPop var_AC
  loc_B66C74: ILdRf var_90
  loc_B66C77: ConcatStr
  loc_B66C78: FStStrNoPop var_B0
  loc_B66C7B: LitStr "', CodiOrga = '"
  loc_B66C7E: ConcatStr
  loc_B66C7F: FStStrNoPop var_B4
  loc_B66C82: ILdRf ReasignarDevengadodeOC
  loc_B66C85: ConcatStr
  loc_B66C86: FStStrNoPop var_E8
  loc_B66C89: LitStr "', CodiFifu = '"
  loc_B66C8C: ConcatStr
  loc_B66C8D: FStStrNoPop var_EC
  loc_B66C90: ILdRf var_9C
  loc_B66C93: ConcatStr
  loc_B66C94: FStStrNoPop var_F0
  loc_B66C97: LitStr "', CodiUnga = "
  loc_B66C9A: ConcatStr
  loc_B66C9B: FStStrNoPop var_F4
  loc_B66C9E: ILdRf var_98
  loc_B66CA1: ConcatStr
  loc_B66CA2: FStStrNoPop var_F8
  loc_B66CA5: LitStr " WHERE PeriInfo = "
  loc_B66CA8: ConcatStr
  loc_B66CA9: FStStrNoPop var_FC
  loc_B66CAC: ImpAdLdI2 MemVar_C3D064
  loc_B66CAF: CStrUI1
  loc_B66CB1: FStStrNoPop var_100
  loc_B66CB4: ConcatStr
  loc_B66CB5: FStStrNoPop var_104
  loc_B66CB8: LitStr " AND CodiOrco = @oc AND CodiRece = @re AND CodiItco = @item AND AlteItco = @alte;"
  loc_B66CBB: ConcatStr
  loc_B66CBC: FStStr var_A4
  loc_B66CBF: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_B66CDA: LitStr "Municipalidad de Guaymallén"
  loc_B66CDD: LitStr "Municipalidad de Lavalle"
  loc_B66CE0: EqStr
  loc_B66CE2: BranchF loc_B66CF2
  loc_B66CE5: ILdRf var_A4
  loc_B66CE8: LitStr vbNullString
  loc_B66CEB: ConcatStr
  loc_B66CEC: FStStr var_A4
  loc_B66CEF: Branch loc_B66CFC
  loc_B66CF2: ILdRf var_A4
  loc_B66CF5: LitStr "COMMIT;"
  loc_B66CF8: ConcatStr
  loc_B66CF9: FStStr var_A4
  loc_B66CFC: ILdRf var_A4
  loc_B66CFF: Call EjecutarRsCls(from_stack_1v)
  loc_B66D04: LitI4 1
  loc_B66D09: FStR4 var_88
  loc_B66D0C: FLdI2 HaceRequery
  loc_B66D0F: BranchF loc_B66D22
  loc_B66D12: LitI2_Byte 0
  loc_B66D14: PopTmpLdAd2 var_152
  loc_B66D17: ILdRf var_88
  loc_B66D1A: ImpAdLdI2 MemVar_C3D064
  loc_B66D1D: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B66D22: ExitProcCbHresult
  loc_B66D28: LitStr "ROLLBACK;"
  loc_B66D2B: Call EjecutarRsCls(from_stack_1v)
  loc_B66D30: LitI4 0
  loc_B66D35: FStR4 var_88
  loc_B66D38: ExitProcCbHresult
End Function

Public Sub Encontrar(PeriInfo, IdImpu, HaceRequery) '9A9CFC
  'Data Table: 4AFD00
  loc_9A9C68: ILdI2 HaceRequery
  loc_9A9C6B: BranchF loc_9A9C73
  loc_9A9C6E: Call Requery()
  loc_9A9C73: LitStr "PeriInfo = '"
  loc_9A9C76: FLdI2 PeriInfo
  loc_9A9C79: CStrUI1
  loc_9A9C7B: FStStrNoPop var_88
  loc_9A9C7E: ConcatStr
  loc_9A9C7F: FStStrNoPop var_8C
  loc_9A9C82: LitStr "'"
  loc_9A9C85: ConcatStr
  loc_9A9C86: PopTmpLdAdStr
  loc_9A9C8A: Call Find(from_stack_1v)
  loc_9A9C8F: FFreeStr var_88 = "": var_8C = ""
  loc_9A9C98: LitStr "IdImpu = '"
  loc_9A9C9B: ILdRf IdImpu
  loc_9A9C9E: CStrI4
  loc_9A9CA0: FStStrNoPop var_88
  loc_9A9CA3: ConcatStr
  loc_9A9CA4: FStStrNoPop var_8C
  loc_9A9CA7: LitStr "'"
  loc_9A9CAA: ConcatStr
  loc_9A9CAB: PopTmpLdAdStr
  loc_9A9CAF: Call Find(from_stack_1v)
  loc_9A9CB4: FFreeStr var_88 = "": var_8C = ""
  loc_9A9CBD: FLdRfVar var_94
  loc_9A9CC0: FLdPr Me
  loc_9A9CC3: MemLdPr RsFrm
  loc_9A9CC6:  = Me.RecordCount
  loc_9A9CCB: ILdRf var_94
  loc_9A9CCE: LitI4 0
  loc_9A9CD3: GtI4
  loc_9A9CD4: FLdRfVar var_98
  loc_9A9CD7: FLdPr Me
  loc_9A9CDA: MemLdPr RsFrm
  loc_9A9CDD:  = Me.AbsolutePosition
  loc_9A9CE2: ILdRf var_98
  loc_9A9CE5: LitI4 -3
  loc_9A9CEA: EqI4
  loc_9A9CEB: AndI4
  loc_9A9CEC: BranchF loc_9A9CFA
  loc_9A9CEF: FLdPr Me
  loc_9A9CF2: MemLdPr RsFrm
  loc_9A9CF5: Me.MoveLast
  loc_9A9CFA: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '9722FC
  'Data Table: 4AFD00
  loc_9722D4: ILdRf sSelect
  loc_9722D7: FStStrCopy var_88
  loc_9722DA: FLdPr Me
  loc_9722DD: MemLdRfVar from_stack_1.RsFrm
  loc_9722E0: ILdRf var_88
  loc_9722E3: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_9722E8: LitVarStr var_98, "Primary"
  loc_9722ED: PopAdLdVar
  loc_9722EE: FLdPr Me
  loc_9722F1: LateIdCall
  loc_9722F9: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '964C78
  'Data Table: 4AFD00
  loc_964C60: ILdRf sSelect
  loc_964C63: FStStrCopy var_88
  loc_964C66: FLdPr Me
  loc_964C69: MemLdRfVar from_stack_1.global_56
  loc_964C6C: ILdRf var_88
  loc_964C6F: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_964C74: ExitProcHresult
End Sub

Public Sub Requery() '967620
  'Data Table: 4AFD00
  loc_967600: FLdPr Me
  loc_967603: MemLdRfVar from_stack_1.RsFrm
  loc_967606: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_96760B: LitVarStr var_94, "Primary"
  loc_967610: PopAdLdVar
  loc_967611: FLdPr Me
  loc_967614: LateIdCall
  loc_96761C: ExitProcHresult
End Sub

Public Property Get DataSource() '97212C
  'Data Table: 4AFD00
  loc_972108: ZeroRetVal
  loc_97210A: FLdRfVar var_8C
  loc_97210D: FLdPr Me
  loc_972110: MemLdPr RsFrm
  loc_972113:  = Me.DataSource
  loc_972118: ILdRf var_8C
  loc_97211B: CastAd
  loc_97211E: FStAdFunc var_88
  loc_972121: FFree1Ad var_8C
  loc_972124: ExitProcCbHresult
  loc_97212A: CBoolVarNull
End Sub

Public Property Get PaexPaco(PeriInfo) '9A5690
  'Data Table: 4AFD00
  loc_9A5618: ZeroRetVal
  loc_9A561A: LitStr "SELECT PaexPaco FROM paraconta WHERE PeriInfo = "
  loc_9A561D: FLdI2 PeriInfo
  loc_9A5620: CStrUI1
  loc_9A5622: FStStrNoPop var_8C
  loc_9A5625: ConcatStr
  loc_9A5626: FStStrNoPop var_90
  loc_9A5629: Call EjecutarRsCls(from_stack_1v)
  loc_9A562E: FFreeStr var_8C = ""
  loc_9A5635: FLdRfVar PaexPaco
  loc_9A5638: FLdPr Me
  loc_9A563B: MemLdPr global_56
  loc_9A563E:  = Me.RecordCount
  loc_9A5643: ILdRf PaexPaco
  loc_9A5646: LitI4 0
  loc_9A564B: GtI4
  loc_9A564C: BranchF loc_9A568A
  loc_9A564F: FLdRfVar var_BC
  loc_9A5652: FLdRfVar var_AC
  loc_9A5655: LitVarStr var_A8, "PaexPaco"
  loc_9A565A: PopAdLdVar
  loc_9A565B: FLdRfVar var_98
  loc_9A565E: FLdPr Me
  loc_9A5661: MemLdPr global_56
  loc_9A5664:  = Me.Fields
  loc_9A5669: FLdPr var_98
  loc_9A566C: from_stack_2 = Me.Item(from_stack_1)
  loc_9A5671: FLdPr var_AC
  loc_9A5674:  = Me.Value
  loc_9A5679: FLdRfVar var_BC
  loc_9A567C: CStrVarTmp
  loc_9A567D: FStStr var_88
  loc_9A5680: FFreeAd var_98 = ""
  loc_9A5687: FFree1Var var_BC = ""
  loc_9A568A: ExitProcCbHresult
End Sub

Public Function BuscaSaldPrev(PeriInfo, IdImpu) '9E4BF0
  'Data Table: 4AFD00
  loc_9E4B04: ILdRf IdImpu
  loc_9E4B07: LitI4 0
  loc_9E4B0C: EqI4
  loc_9E4B0D: BranchF loc_9E4B19
  loc_9E4B10: LitI2_Byte 0
  loc_9E4B12: CR8I2
  loc_9E4B13: FStFPR8 var_8C
  loc_9E4B16: Branch loc_9E4BEA
  loc_9E4B19: LitStr "SELECT tbl.*"
  loc_9E4B1C: LitStr ", SUM(PrevImpu-DefiImpu) SaldPrev"
  loc_9E4B1F: ConcatStr
  loc_9E4B20: FStStrNoPop var_90
  loc_9E4B23: LitStr " FROM ("
  loc_9E4B26: ConcatStr
  loc_9E4B27: FStStrNoPop BuscaSaldPrev
  loc_9E4B2A: LitStr " SELECT PeriInfo, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, ExorImpu, CodiNope, Item"
  loc_9E4B2D: ConcatStr
  loc_9E4B2E: FStStrNoPop var_98
  loc_9E4B31: LitStr " FROM imputacion"
  loc_9E4B34: ConcatStr
  loc_9E4B35: FStStrNoPop var_9C
  loc_9E4B38: LitStr " WHERE PeriInfo = "
  loc_9E4B3B: ConcatStr
  loc_9E4B3C: FStStrNoPop var_A0
  loc_9E4B3F: FLdI2 PeriInfo
  loc_9E4B42: CStrUI1
  loc_9E4B44: FStStrNoPop var_A4
  loc_9E4B47: ConcatStr
  loc_9E4B48: FStStrNoPop var_A8
  loc_9E4B4B: LitStr " And IdImpu = "
  loc_9E4B4E: ConcatStr
  loc_9E4B4F: FStStrNoPop var_AC
  loc_9E4B52: ILdRf IdImpu
  loc_9E4B55: CStrI4
  loc_9E4B57: FStStrNoPop var_B0
  loc_9E4B5A: ConcatStr
  loc_9E4B5B: FStStrNoPop var_B4
  loc_9E4B5E: LitStr " ) AS tbl"
  loc_9E4B61: ConcatStr
  loc_9E4B62: FStStrNoPop var_B8
  loc_9E4B65: LitStr " INNER JOIN imputacion i ON i.PeriInfo = tbl.PeriInfo AND i.CodiPart = tbl.CodiPart AND i.CodiOrga = tbl.CodiOrga AND i.CodiUnga = tbl.CodiUnga AND i.CodiInsu = tbl.CodiInsu AND i.CodiFifu = tbl.CodiFifu AND i.ExorImpu = tbl.ExorImpu AND i.CodiNope = tbl.CodiNope AND i.Item = tbl.Item;"
  loc_9E4B68: ConcatStr
  loc_9E4B69: FStStrNoPop var_BC
  loc_9E4B6C: Call EjecutarRsCls(from_stack_1v)
  loc_9E4B71: FFreeStr var_90 = "": BuscaSaldPrev = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9E4B8C: FLdRfVar var_C0
  loc_9E4B8F: FLdPr Me
  loc_9E4B92: MemLdPr global_56
  loc_9E4B95:  = Me.RecordCount
  loc_9E4B9A: ILdRf var_C0
  loc_9E4B9D: LitI4 0
  loc_9E4BA2: GtI4
  loc_9E4BA3: BranchF loc_9E4BE4
  loc_9E4BA6: FLdRfVar var_E8
  loc_9E4BA9: FLdRfVar var_D8
  loc_9E4BAC: LitVarStr var_D4, "SaldPrev"
  loc_9E4BB1: PopAdLdVar
  loc_9E4BB2: FLdRfVar var_C4
  loc_9E4BB5: FLdPr Me
  loc_9E4BB8: MemLdPr global_56
  loc_9E4BBB:  = Me.Fields
  loc_9E4BC0: FLdPr var_C4
  loc_9E4BC3: from_stack_2 = Me.Item(from_stack_1)
  loc_9E4BC8: FLdPr var_D8
  loc_9E4BCB:  = Me.Value
  loc_9E4BD0: FLdRfVar var_E8
  loc_9E4BD3: CR4Var
  loc_9E4BD4: FStFPR8 var_8C
  loc_9E4BD7: FFreeAd var_C4 = ""
  loc_9E4BDE: FFree1Var var_E8 = ""
  loc_9E4BE1: Branch loc_9E4BEA
  loc_9E4BE4: LitI2_Byte 0
  loc_9E4BE6: CR8I2
  loc_9E4BE7: FStFPR8 var_8C
  loc_9E4BEA: ExitProcCbHresult
End Function

Public Function BuscaSaldDefi(PeriInfo, IdImpu) '9E8CD4
  'Data Table: 4AFD00
  loc_9E8BDC: ILdRf IdImpu
  loc_9E8BDF: LitI4 0
  loc_9E8BE4: EqI4
  loc_9E8BE5: BranchF loc_9E8BF1
  loc_9E8BE8: LitI2_Byte 0
  loc_9E8BEA: CR8I2
  loc_9E8BEB: FStFPR8 var_8C
  loc_9E8BEE: Branch loc_9E8CCB
  loc_9E8BF1: LitStr "SELECT tbl.*"
  loc_9E8BF4: LitStr ", SUM(DefiImpu-DeveImpu) SaldDefi"
  loc_9E8BF7: ConcatStr
  loc_9E8BF8: FStStrNoPop var_90
  loc_9E8BFB: LitStr " FROM ("
  loc_9E8BFE: ConcatStr
  loc_9E8BFF: FStStrNoPop BuscaSaldDefi
  loc_9E8C02: LitStr " SELECT PeriInfo, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, ExorImpu, CodiNope, Item, Altern, CodiOrco"
  loc_9E8C05: ConcatStr
  loc_9E8C06: FStStrNoPop var_98
  loc_9E8C09: LitStr " FROM imputacion"
  loc_9E8C0C: ConcatStr
  loc_9E8C0D: FStStrNoPop var_9C
  loc_9E8C10: LitStr " WHERE PeriInfo = "
  loc_9E8C13: ConcatStr
  loc_9E8C14: FStStrNoPop var_A0
  loc_9E8C17: FLdI2 PeriInfo
  loc_9E8C1A: CStrUI1
  loc_9E8C1C: FStStrNoPop var_A4
  loc_9E8C1F: ConcatStr
  loc_9E8C20: FStStrNoPop var_A8
  loc_9E8C23: LitStr " And IdImpu = "
  loc_9E8C26: ConcatStr
  loc_9E8C27: FStStrNoPop var_AC
  loc_9E8C2A: ILdRf IdImpu
  loc_9E8C2D: CStrI4
  loc_9E8C2F: FStStrNoPop var_B0
  loc_9E8C32: ConcatStr
  loc_9E8C33: FStStrNoPop var_B4
  loc_9E8C36: LitStr " GROUP BY PeriInfo, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, ExorImpu, CodiNope, Item, Altern, CodiOrco"
  loc_9E8C39: ConcatStr
  loc_9E8C3A: FStStrNoPop var_B8
  loc_9E8C3D: LitStr " ) AS tbl"
  loc_9E8C40: ConcatStr
  loc_9E8C41: FStStrNoPop var_BC
  loc_9E8C44: LitStr " INNER JOIN imputacion i ON i.PeriInfo = tbl.PeriInfo AND i.CodiPart = tbl.CodiPart AND i.CodiOrga = tbl.CodiOrga AND i.CodiUnga = tbl.CodiUnga AND i.CodiInsu = tbl.CodiInsu AND i.CodiFifu = tbl.CodiFifu AND i.ExorImpu = tbl.ExorImpu AND i.CodiNope = tbl.CodiNope AND i.Item = tbl.Item AND i.Altern = tbl.Altern AND i.CodiOrco = tbl.CodiOrco;"
  loc_9E8C47: ConcatStr
  loc_9E8C48: FStStrNoPop var_C0
  loc_9E8C4B: Call EjecutarRsCls(from_stack_1v)
  loc_9E8C50: FFreeStr var_90 = "": BuscaSaldDefi = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9E8C6D: FLdRfVar var_C4
  loc_9E8C70: FLdPr Me
  loc_9E8C73: MemLdPr global_56
  loc_9E8C76:  = Me.RecordCount
  loc_9E8C7B: ILdRf var_C4
  loc_9E8C7E: LitI4 0
  loc_9E8C83: GtI4
  loc_9E8C84: BranchF loc_9E8CC5
  loc_9E8C87: FLdRfVar var_EC
  loc_9E8C8A: FLdRfVar var_DC
  loc_9E8C8D: LitVarStr var_D8, "SaldDefi"
  loc_9E8C92: PopAdLdVar
  loc_9E8C93: FLdRfVar var_C8
  loc_9E8C96: FLdPr Me
  loc_9E8C99: MemLdPr global_56
  loc_9E8C9C:  = Me.Fields
  loc_9E8CA1: FLdPr var_C8
  loc_9E8CA4: from_stack_2 = Me.Item(from_stack_1)
  loc_9E8CA9: FLdPr var_DC
  loc_9E8CAC:  = Me.Value
  loc_9E8CB1: FLdRfVar var_EC
  loc_9E8CB4: CR4Var
  loc_9E8CB5: FStFPR8 var_8C
  loc_9E8CB8: FFreeAd var_C8 = ""
  loc_9E8CBF: FFree1Var var_EC = ""
  loc_9E8CC2: Branch loc_9E8CCB
  loc_9E8CC5: LitI2_Byte 0
  loc_9E8CC7: CR8I2
  loc_9E8CC8: FStFPR8 var_8C
  loc_9E8CCB: ExitProcCbHresult
End Function

Public Function BuscaSaldDeve(PeriInfo, IdImpu) 'A1E89C
  'Data Table: 4AFD00
  loc_A1E750: LitStr "SELECT tbl.*"
  loc_A1E753: LitStr ", SUM(DeveImpu-LiquImpu) SaldDeve"
  loc_A1E756: ConcatStr
  loc_A1E757: FStStrNoPop var_90
  loc_A1E75A: LitStr " FROM ("
  loc_A1E75D: ConcatStr
  loc_A1E75E: FStStrNoPop BuscaSaldDeve
  loc_A1E761: LitStr " SELECT PeriInfo, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, ExorImpu, ExpeImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact"
  loc_A1E764: ConcatStr
  loc_A1E765: FStStrNoPop var_98
  loc_A1E768: LitStr " FROM imputacion"
  loc_A1E76B: ConcatStr
  loc_A1E76C: FStStrNoPop var_9C
  loc_A1E76F: LitStr " WHERE PeriInfo = "
  loc_A1E772: ConcatStr
  loc_A1E773: FStStrNoPop var_A0
  loc_A1E776: FLdI2 PeriInfo
  loc_A1E779: CStrUI1
  loc_A1E77B: FStStrNoPop var_A4
  loc_A1E77E: ConcatStr
  loc_A1E77F: FStStrNoPop var_A8
  loc_A1E782: LitStr " And IdImpu = "
  loc_A1E785: ConcatStr
  loc_A1E786: FStStrNoPop var_AC
  loc_A1E789: ILdRf IdImpu
  loc_A1E78C: CStrI4
  loc_A1E78E: FStStrNoPop var_B0
  loc_A1E791: ConcatStr
  loc_A1E792: FStStrNoPop var_B4
  loc_A1E795: LitStr " ) AS tbl"
  loc_A1E798: ConcatStr
  loc_A1E799: FStStrNoPop var_B8
  loc_A1E79C: LitStr " INNER JOIN imputacion i ON i.PeriInfo = tbl.PeriInfo"
  loc_A1E79F: ConcatStr
  loc_A1E7A0: FStStrNoPop var_BC
  loc_A1E7A3: LitStr " AND i.CodiPart = tbl.CodiPart"
  loc_A1E7A6: ConcatStr
  loc_A1E7A7: FStStrNoPop var_C0
  loc_A1E7AA: LitStr " AND i.CodiOrga = tbl.CodiOrga"
  loc_A1E7AD: ConcatStr
  loc_A1E7AE: FStStrNoPop var_C4
  loc_A1E7B1: LitStr " AND i.CodiUnga = tbl.CodiUnga"
  loc_A1E7B4: ConcatStr
  loc_A1E7B5: FStStrNoPop var_C8
  loc_A1E7B8: LitStr " AND i.CodiInsu = tbl.CodiInsu"
  loc_A1E7BB: ConcatStr
  loc_A1E7BC: FStStrNoPop var_CC
  loc_A1E7BF: LitStr " AND i.CodiFifu = tbl.CodiFifu"
  loc_A1E7C2: ConcatStr
  loc_A1E7C3: FStStrNoPop var_D0
  loc_A1E7C6: LitStr " AND i.ExorImpu = tbl.ExorImpu"
  loc_A1E7C9: ConcatStr
  loc_A1E7CA: FStStrNoPop var_D4
  loc_A1E7CD: LitStr " AND i.ExpeImpu = tbl.ExpeImpu"
  loc_A1E7D0: ConcatStr
  loc_A1E7D1: FStStrNoPop var_D8
  loc_A1E7D4: LitStr " AND i.CodiNope = tbl.CodiNope"
  loc_A1E7D7: ConcatStr
  loc_A1E7D8: FStStrNoPop var_DC
  loc_A1E7DB: LitStr " AND i.Item = tbl.Item"
  loc_A1E7DE: ConcatStr
  loc_A1E7DF: FStStrNoPop var_E0
  loc_A1E7E2: LitStr " AND i.Altern = tbl.Altern"
  loc_A1E7E5: ConcatStr
  loc_A1E7E6: FStStrNoPop var_E4
  loc_A1E7E9: LitStr " AND i.CodiOrco = tbl.CodiOrco"
  loc_A1E7EC: ConcatStr
  loc_A1E7ED: FStStrNoPop var_E8
  loc_A1E7F0: LitStr " AND i.CodiRece = tbl.CodiRece"
  loc_A1E7F3: ConcatStr
  loc_A1E7F4: FStStrNoPop var_EC
  loc_A1E7F7: LitStr " AND i.NumeFact = tbl.NumeFact;"
  loc_A1E7FA: ConcatStr
  loc_A1E7FB: FStStrNoPop var_F0
  loc_A1E7FE: Call EjecutarRsCls(from_stack_1v)
  loc_A1E803: FFreeStr var_90 = "": BuscaSaldDeve = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_A1E838: FLdRfVar var_F4
  loc_A1E83B: FLdPr Me
  loc_A1E83E: MemLdPr global_56
  loc_A1E841:  = Me.RecordCount
  loc_A1E846: ILdRf var_F4
  loc_A1E849: LitI4 0
  loc_A1E84E: GtI4
  loc_A1E84F: BranchF loc_A1E890
  loc_A1E852: FLdRfVar var_11C
  loc_A1E855: FLdRfVar var_10C
  loc_A1E858: LitVarStr var_108, "SaldDeve"
  loc_A1E85D: PopAdLdVar
  loc_A1E85E: FLdRfVar var_F8
  loc_A1E861: FLdPr Me
  loc_A1E864: MemLdPr global_56
  loc_A1E867:  = Me.Fields
  loc_A1E86C: FLdPr var_F8
  loc_A1E86F: from_stack_2 = Me.Item(from_stack_1)
  loc_A1E874: FLdPr var_10C
  loc_A1E877:  = Me.Value
  loc_A1E87C: FLdRfVar var_11C
  loc_A1E87F: CR4Var
  loc_A1E880: FStFPR8 var_8C
  loc_A1E883: FFreeAd var_F8 = ""
  loc_A1E88A: FFree1Var var_11C = ""
  loc_A1E88D: Branch loc_A1E896
  loc_A1E890: LitI2_Byte 0
  loc_A1E892: CR8I2
  loc_A1E893: FStFPR8 var_8C
  loc_A1E896: ExitProcCbHresult
End Function

Public Function DistinctIdImpuDeveImpu(PeriInfo, IdImpu) 'A21ADC
  'Data Table: 4AFD00
  loc_A2198C: ZeroRetVal
  loc_A2198E: LitStr "SELECT Group_concat(Distinct i.IdImpu) IdImpuS"
  loc_A21991: LitStr " FROM ("
  loc_A21994: ConcatStr
  loc_A21995: FStStrNoPop var_8C
  loc_A21998: LitStr " SELECT PeriInfo, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, ExorImpu, ExpeImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, IdImpu"
  loc_A2199B: ConcatStr
  loc_A2199C: FStStrNoPop var_90
  loc_A2199F: LitStr " FROM imputacion"
  loc_A219A2: ConcatStr
  loc_A219A3: FStStrNoPop DistinctIdImpuDeveImpu
  loc_A219A6: LitStr " WHERE PeriInfo = "
  loc_A219A9: ConcatStr
  loc_A219AA: FStStrNoPop var_98
  loc_A219AD: FLdI2 PeriInfo
  loc_A219B0: CStrUI1
  loc_A219B2: FStStrNoPop var_9C
  loc_A219B5: ConcatStr
  loc_A219B6: FStStrNoPop var_A0
  loc_A219B9: LitStr " And IdImpu = "
  loc_A219BC: ConcatStr
  loc_A219BD: FStStrNoPop var_A4
  loc_A219C0: ILdRf IdImpu
  loc_A219C3: CStrI4
  loc_A219C5: FStStrNoPop var_A8
  loc_A219C8: ConcatStr
  loc_A219C9: FStStrNoPop var_AC
  loc_A219CC: LitStr " ) AS tbl"
  loc_A219CF: ConcatStr
  loc_A219D0: FStStrNoPop var_B0
  loc_A219D3: LitStr " INNER JOIN imputacion i ON i.PeriInfo = tbl.PeriInfo"
  loc_A219D6: ConcatStr
  loc_A219D7: FStStrNoPop var_B4
  loc_A219DA: LitStr " AND i.CodiPart = tbl.CodiPart"
  loc_A219DD: ConcatStr
  loc_A219DE: FStStrNoPop var_B8
  loc_A219E1: LitStr " AND i.CodiOrga = tbl.CodiOrga"
  loc_A219E4: ConcatStr
  loc_A219E5: FStStrNoPop var_BC
  loc_A219E8: LitStr " AND i.CodiUnga = tbl.CodiUnga"
  loc_A219EB: ConcatStr
  loc_A219EC: FStStrNoPop var_C0
  loc_A219EF: LitStr " AND i.CodiInsu = tbl.CodiInsu"
  loc_A219F2: ConcatStr
  loc_A219F3: FStStrNoPop var_C4
  loc_A219F6: LitStr " AND i.CodiFifu = tbl.CodiFifu"
  loc_A219F9: ConcatStr
  loc_A219FA: FStStrNoPop var_C8
  loc_A219FD: LitStr " AND i.ExorImpu = tbl.ExorImpu"
  loc_A21A00: ConcatStr
  loc_A21A01: FStStrNoPop var_CC
  loc_A21A04: LitStr " AND i.ExpeImpu = tbl.ExpeImpu"
  loc_A21A07: ConcatStr
  loc_A21A08: FStStrNoPop var_D0
  loc_A21A0B: LitStr " AND i.CodiNope = tbl.CodiNope"
  loc_A21A0E: ConcatStr
  loc_A21A0F: FStStrNoPop var_D4
  loc_A21A12: LitStr " AND i.Item = tbl.Item"
  loc_A21A15: ConcatStr
  loc_A21A16: FStStrNoPop var_D8
  loc_A21A19: LitStr " AND i.Altern = tbl.Altern"
  loc_A21A1C: ConcatStr
  loc_A21A1D: FStStrNoPop var_DC
  loc_A21A20: LitStr " AND i.CodiOrco = tbl.CodiOrco"
  loc_A21A23: ConcatStr
  loc_A21A24: FStStrNoPop var_E0
  loc_A21A27: LitStr " AND i.CodiRece = tbl.CodiRece"
  loc_A21A2A: ConcatStr
  loc_A21A2B: FStStrNoPop var_E4
  loc_A21A2E: LitStr " AND i.NumeFact = tbl.NumeFact"
  loc_A21A31: ConcatStr
  loc_A21A32: FStStrNoPop var_E8
  loc_A21A35: LitStr " AND DeveImpu != 0;"
  loc_A21A38: ConcatStr
  loc_A21A39: FStStrNoPop var_EC
  loc_A21A3C: Call EjecutarRsCls(from_stack_1v)
  loc_A21A41: FFreeStr var_8C = "": var_90 = "": DistinctIdImpuDeveImpu = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_A21A76: FLdRfVar var_F0
  loc_A21A79: FLdPr Me
  loc_A21A7C: MemLdPr global_56
  loc_A21A7F:  = Me.RecordCount
  loc_A21A84: ILdRf var_F0
  loc_A21A87: LitI4 0
  loc_A21A8C: GtI4
  loc_A21A8D: BranchF loc_A21ACE
  loc_A21A90: FLdRfVar var_118
  loc_A21A93: FLdRfVar var_108
  loc_A21A96: LitVarStr var_104, "idimpus"
  loc_A21A9B: PopAdLdVar
  loc_A21A9C: FLdRfVar var_F4
  loc_A21A9F: FLdPr Me
  loc_A21AA2: MemLdPr global_56
  loc_A21AA5:  = Me.Fields
  loc_A21AAA: FLdPr var_F4
  loc_A21AAD: from_stack_2 = Me.Item(from_stack_1)
  loc_A21AB2: FLdPr var_108
  loc_A21AB5:  = Me.Value
  loc_A21ABA: FLdRfVar var_118
  loc_A21ABD: CStrVarTmp
  loc_A21ABE: FStStr var_88
  loc_A21AC1: FFreeAd var_F4 = ""
  loc_A21AC8: FFree1Var var_118 = ""
  loc_A21ACB: Branch loc_A21AD4
  loc_A21ACE: LitStr vbNullString
  loc_A21AD1: FStStrCopy var_88
  loc_A21AD4: ExitProcCbHresult
  loc_A21ADA: FLdPr var_77F8
End Function

Public Function BuscaAjusImpu(PeriInfo) '9A7494
  'Data Table: 4AFD00
  loc_9A7414: LitStr "SELECT Max(AjusImpu)+1 AjusImpu FROM imputacion WHERE PeriInfo = "
  loc_9A7417: FLdI2 PeriInfo
  loc_9A741A: CStrUI1
  loc_9A741C: FStStrNoPop var_8C
  loc_9A741F: ConcatStr
  loc_9A7420: FStStrNoPop var_90
  loc_9A7423: LitStr ";"
  loc_9A7426: ConcatStr
  loc_9A7427: FStStrNoPop BuscaAjusImpu
  loc_9A742A: Call EjecutarRsCls(from_stack_1v)
  loc_9A742F: FFreeStr var_8C = "": var_90 = ""
  loc_9A7438: FLdRfVar var_98
  loc_9A743B: FLdPr Me
  loc_9A743E: MemLdPr global_56
  loc_9A7441:  = Me.RecordCount
  loc_9A7446: ILdRf var_98
  loc_9A7449: LitI4 0
  loc_9A744E: GtI4
  loc_9A744F: BranchF loc_9A748E
  loc_9A7452: FLdRfVar var_C0
  loc_9A7455: FLdRfVar var_B0
  loc_9A7458: LitVarStr var_AC, "AjusImpu"
  loc_9A745D: PopAdLdVar
  loc_9A745E: FLdRfVar var_9C
  loc_9A7461: FLdPr Me
  loc_9A7464: MemLdPr global_56
  loc_9A7467:  = Me.Fields
  loc_9A746C: FLdPr var_9C
  loc_9A746F: from_stack_2 = Me.Item(from_stack_1)
  loc_9A7474: FLdPr var_B0
  loc_9A7477:  = Me.Value
  loc_9A747C: FLdRfVar var_C0
  loc_9A747F: FnCLngVar
  loc_9A7481: FStR4 var_88
  loc_9A7484: FFreeAd var_9C = ""
  loc_9A748B: FFree1Var var_C0 = ""
  loc_9A748E: ExitProcCbHresult
End Function

Public Function ValidaImunImpuPreventiva(ImunImpu, ePart, iModoEdicion) 'A22EC0
  'Data Table: 4AFD00
  loc_A22D18: ILdRf ImunImpu
  loc_A22D1B: FStStrCopy var_8C
  loc_A22D1E: ZeroRetVal
  loc_A22D20: LitStr "0"
  loc_A22D23: LitI2_Byte &HFF
  loc_A22D25: LitI2_Byte &HFF
  loc_A22D27: LitI2_Byte 0
  loc_A22D29: ILdRf var_8C
  loc_A22D2C: LitStr "Importe Unitario"
  loc_A22D2F: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_A22D34: FStStr var_88
  loc_A22D37: ILdRf var_88
  loc_A22D3A: LitStr vbNullString
  loc_A22D3D: NeStr
  loc_A22D3F: BranchF loc_A22D48
  loc_A22D42: ExitProcCbHresult
  loc_A22D48: FLdUI1
  loc_A22D4C: LitI2_Byte 1
  loc_A22D4E: EqI2
  loc_A22D4F: BranchF loc_A22EB9
  loc_A22D52: FLdRfVar var_90
  loc_A22D55: ILdPr
  loc_A22D58: from_stack_1v = tblpartida.CodiPartGet()
  loc_A22D5D: ILdRf var_90
  loc_A22D60: LitStr vbNullString
  loc_A22D63: NeStr
  loc_A22D65: FFree1Str var_90
  loc_A22D68: BranchF loc_A22EB6
  loc_A22D6B: FLdRfVar var_90
  loc_A22D6E: ILdPr
  loc_A22D71: from_stack_1v = tblpartida.PeriInfoGet()
  loc_A22D76: FLdRfVar ValidaImunImpuPreventiva
  loc_A22D79: NewIfNullRf
  loc_A22D7D: ILdRf var_90
  loc_A22D80: CI2Str
  loc_A22D82: ImpAdCallI2 Proc_259_23_AE2098(, )
  loc_A22D87: FFree1Str var_90
  loc_A22D8A: BranchF loc_A22EA2
  loc_A22D8D: FLdRfVar var_90
  loc_A22D90: ILdPr
  loc_A22D93: from_stack_1v = tblpartida.InvePartGet()
  loc_A22D98: ILdRf var_90
  loc_A22D9B: LitStr "Si"
  loc_A22D9E: EqStr
  loc_A22DA0: FFree1Str var_90
  loc_A22DA3: BranchF loc_A22E9F
  loc_A22DA6: FLdRfVar var_90
  loc_A22DA9: FLdRfVar ValidaImunImpuPreventiva
  loc_A22DAC: NewIfNullPr tblparaconta
  loc_A22DAF: from_stack_1v = tblparaconta.MiinPacoGet()
  loc_A22DB4: ILdRf var_90
  loc_A22DB7: CR8Str
  loc_A22DB9: LitI2_Byte 0
  loc_A22DBB: CR8I2
  loc_A22DBC: EqR4
  loc_A22DBD: FFree1Str var_90
  loc_A22DC0: BranchF loc_A22DD2
  loc_A22DC3: LitStr "Ingrese el Valor Mínimo para los Bienes Inventariables. Verifique..."
  loc_A22DC6: FStStrCopy var_88
  loc_A22DC9: ExitProcCbHresult
  loc_A22DCF: Branch loc_A22E9F
  loc_A22DD2: FLdRfVar var_90
  loc_A22DD5: FLdRfVar ValidaImunImpuPreventiva
  loc_A22DD8: NewIfNullPr tblparaconta
  loc_A22DDB: from_stack_1v = tblparaconta.MiinPacoGet()
  loc_A22DE0: ILdRf var_8C
  loc_A22DE3: CR8Str
  loc_A22DE5: ILdRf var_90
  loc_A22DE8: CR8Str
  loc_A22DEA: LtR8
  loc_A22DEB: FFree1Str var_90
  loc_A22DEE: BranchF loc_A22E9F
  loc_A22DF1: LitStr "Municipalidad de Guaymallén"
  loc_A22DF4: LitStr "Municipalidad de Guaymallén"
  loc_A22DF7: EqStr
  loc_A22DF9: BranchF loc_A22E4C
  loc_A22DFC: FLdRfVar var_90
  loc_A22DFF: FLdRfVar ValidaImunImpuPreventiva
  loc_A22E02: NewIfNullPr tblparaconta
  loc_A22E05: from_stack_1v = tblparaconta.MiinPacoGet()
  loc_A22E0A: LitStr "Advertencia: El Importe Unitario es menor al valor mínimo ("
  loc_A22E0D: LitI4 1
  loc_A22E12: LitI4 1
  loc_A22E17: LitVarStr var_B4, "currency"
  loc_A22E1C: FStVarCopyObj var_C4
  loc_A22E1F: FLdRfVar var_C4
  loc_A22E22: FLdZeroAd var_90
  loc_A22E25: CVarStr var_A4
  loc_A22E28: ImpAdCallI2 Format$(, )
  loc_A22E2D: FStStrNoPop var_C8
  loc_A22E30: ConcatStr
  loc_A22E31: FStStrNoPop var_CC
  loc_A22E34: LitStr ") para los Bienes de Uso ..."
  loc_A22E37: ConcatStr
  loc_A22E38: FStStr var_88
  loc_A22E3B: FFreeStr var_C8 = ""
  loc_A22E42: FFreeVar var_A4 = ""
  loc_A22E49: Branch loc_A22E99
  loc_A22E4C: FLdRfVar var_90
  loc_A22E4F: FLdRfVar ValidaImunImpuPreventiva
  loc_A22E52: NewIfNullPr tblparaconta
  loc_A22E55: from_stack_1v = tblparaconta.MiinPacoGet()
  loc_A22E5A: LitStr "El Importe Unitario es menor al valor mínimo ("
  loc_A22E5D: LitI4 1
  loc_A22E62: LitI4 1
  loc_A22E67: LitVarStr var_B4, "currency"
  loc_A22E6C: FStVarCopyObj var_C4
  loc_A22E6F: FLdRfVar var_C4
  loc_A22E72: FLdZeroAd var_90
  loc_A22E75: CVarStr var_A4
  loc_A22E78: ImpAdCallI2 Format$(, )
  loc_A22E7D: FStStrNoPop var_C8
  loc_A22E80: ConcatStr
  loc_A22E81: FStStrNoPop var_CC
  loc_A22E84: LitStr ") para los Bienes de Uso. Verifique ..."
  loc_A22E87: ConcatStr
  loc_A22E88: FStStr var_88
  loc_A22E8B: FFreeStr var_C8 = ""
  loc_A22E92: FFreeVar var_A4 = ""
  loc_A22E99: ExitProcCbHresult
  loc_A22E9F: Branch loc_A22EB6
  loc_A22EA2: FLdRfVar var_90
  loc_A22EA5: FLdRfVar ValidaImunImpuPreventiva
  loc_A22EA8: NewIfNullPr tblparaconta
  loc_A22EAB: from_stack_1v = tblparaconta.MsgErrorGet()
  loc_A22EB0: FLdZeroAd var_90
  loc_A22EB3: FStStr var_88
  loc_A22EB6: Branch loc_A22EB9
  loc_A22EB9: ExitProcCbHresult
End Function

Public Function ValidaPrevImpu(ImpoImpu, ePart, eOrga, eFifu, eUnga, FechImpu, SaldImpu, PeriInfo) 'BBE630
  'Data Table: 4AFD00
  loc_BBD564: ILdRf ImpoImpu
  loc_BBD567: FStStrCopy var_8C
  loc_BBD56A: ILdRf FechImpu
  loc_BBD56D: FStStrCopy var_90
  loc_BBD570: ILdRf SaldImpu
  loc_BBD573: FStStrCopy ValidaPrevImpu
  loc_BBD576: ZeroRetVal
  loc_BBD578: ILdI2 PeriInfo
  loc_BBD57B: LitI2_Byte 0
  loc_BBD57D: EqI2
  loc_BBD57E: BranchF loc_BBD587
  loc_BBD581: ImpAdLdI2 MemVar_C3D064
  loc_BBD584: IStI2 PeriInfo
  loc_BBD587: LitI4 0
  loc_BBD58C: LitI4 -1
  loc_BBD591: LitI4 1
  loc_BBD596: LitStr vbNullString
  loc_BBD599: LitStr "$"
  loc_BBD59C: ILdRf var_8C
  loc_BBD59F: ImpAdCallI2 Replace(, , , , , )
  loc_BBD5A4: FStStr var_8C
  loc_BBD5A7: ILdRf ValidaPrevImpu
  loc_BBD5AA: LitI2_Byte &HFF
  loc_BBD5AC: LitI2_Byte 0
  loc_BBD5AE: LitI2_Byte &HFF
  loc_BBD5B0: ILdRf var_8C
  loc_BBD5B3: LitStr "Importe de la Preventiva"
  loc_BBD5B6: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_BBD5BB: FStStr var_88
  loc_BBD5BE: ILdRf var_88
  loc_BBD5C1: LitStr vbNullString
  loc_BBD5C4: NeStr
  loc_BBD5C6: BranchF loc_BBD5CF
  loc_BBD5C9: ExitProcCbHresult
  loc_BBD5CF: ILdRf var_8C
  loc_BBD5D2: CR8Str
  loc_BBD5D4: LitI2_Byte 0
  loc_BBD5D6: CR8I2
  loc_BBD5D7: LtR8
  loc_BBD5D8: BranchF loc_BBD5E1
  loc_BBD5DB: ExitProcCbHresult
  loc_BBD5E1: FLdRfVar var_90
  loc_BBD5E4: CVarRef
  loc_BBD5E9: ImpAdCallI2 IsDate()
  loc_BBD5EE: NotI4
  loc_BBD5EF: BranchF loc_BBD5F8
  loc_BBD5F2: ExitProcCbHresult
  loc_BBD5F8: LitStr "Municipalidad de Guaymallén"
  loc_BBD5FB: LitStr "Municipalidad de Maipú"
  loc_BBD5FE: EqStr
  loc_BBD600: BranchF loc_BBD6C2
  loc_BBD603: LitVarStr var_C4, "SELECT contpres.fnSaldoVota("
  loc_BBD608: FLdRfVar var_90
  loc_BBD60B: CVarRef
  loc_BBD610: FLdRfVar var_B4
  loc_BBD613: ImpAdCallFPR4  = Year()
  loc_BBD618: FLdRfVar var_B4
  loc_BBD61B: ConcatVar var_D4
  loc_BBD61F: LitVarStr var_E4, ", '"
  loc_BBD624: ConcatVar var_F4
  loc_BBD628: FLdRfVar var_F8
  loc_BBD62B: ILdPr
  loc_BBD62E: from_stack_1v = tblpartida.CodiPartGet()
  loc_BBD633: FLdZeroAd var_F8
  loc_BBD636: CVarStr var_108
  loc_BBD639: ConcatVar var_118
  loc_BBD63D: LitVarStr var_128, "', '"
  loc_BBD642: ConcatVar var_138
  loc_BBD646: FLdRfVar var_13C
  loc_BBD649: ILdPr
  loc_BBD64C: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_BBD651: FLdZeroAd var_13C
  loc_BBD654: CVarStr var_14C
  loc_BBD657: ConcatVar var_15C
  loc_BBD65B: LitVarStr var_16C, "', "
  loc_BBD660: ConcatVar var_17C
  loc_BBD664: LitI4 1
  loc_BBD669: LitI4 1
  loc_BBD66E: LitVarStr var_19C, "'yyyy-mm-dd'"
  loc_BBD673: FStVarCopyObj var_1AC
  loc_BBD676: FLdRfVar var_1AC
  loc_BBD679: FLdRfVar var_90
  loc_BBD67C: CVarRef
  loc_BBD681: ImpAdCallI2 Format$(, )
  loc_BBD686: CVarStr var_1BC
  loc_BBD689: ConcatVar var_1CC
  loc_BBD68D: LitVarStr var_1DC, ") SaldAuto;"
  loc_BBD692: ConcatVar var_1EC
  loc_BBD696: CStrVarVal var_1F0
  loc_BBD69A: Call EjecutarRsCls(from_stack_1v)
  loc_BBD69F: FFree1Str var_1F0
  loc_BBD6A2: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_108 = "": var_118 = "": var_138 = "": var_14C = "": var_15C = "": var_1AC = "": var_17C = "": var_1BC = "": var_1CC = ""
  loc_BBD6BF: Branch loc_BBD77E
  loc_BBD6C2: LitVarStr var_C4, "SELECT contpres.fnSaldoVota("
  loc_BBD6C7: FLdRfVar var_90
  loc_BBD6CA: CVarRef
  loc_BBD6CF: FLdRfVar var_B4
  loc_BBD6D2: ImpAdCallFPR4  = Year()
  loc_BBD6D7: FLdRfVar var_B4
  loc_BBD6DA: ConcatVar var_D4
  loc_BBD6DE: LitVarStr var_E4, ", '"
  loc_BBD6E3: ConcatVar var_F4
  loc_BBD6E7: FLdRfVar var_F8
  loc_BBD6EA: ILdPr
  loc_BBD6ED: from_stack_1v = tblpartida.CodiPartGet()
  loc_BBD6F2: FLdZeroAd var_F8
  loc_BBD6F5: CVarStr var_108
  loc_BBD6F8: ConcatVar var_118
  loc_BBD6FC: LitVarStr var_128, "', '"
  loc_BBD701: ConcatVar var_138
  loc_BBD705: FLdRfVar var_13C
  loc_BBD708: ILdPr
  loc_BBD70B: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_BBD710: FLdZeroAd var_13C
  loc_BBD713: CVarStr var_14C
  loc_BBD716: ConcatVar var_15C
  loc_BBD71A: LitVarStr var_16C, "', "
  loc_BBD71F: ConcatVar var_17C
  loc_BBD723: LitI4 1
  loc_BBD728: LitI4 1
  loc_BBD72D: LitVarStr var_19C, "'yyyy-mm-dd'"
  loc_BBD732: FStVarCopyObj var_1AC
  loc_BBD735: FLdRfVar var_1AC
  loc_BBD738: FLdRfVar var_90
  loc_BBD73B: CVarRef
  loc_BBD740: ImpAdCallI2 Format$(, )
  loc_BBD745: CVarStr var_1BC
  loc_BBD748: ConcatVar var_1CC
  loc_BBD74C: LitVarStr var_1DC, ") SaldAuto;"
  loc_BBD751: ConcatVar var_1EC
  loc_BBD755: CStrVarVal var_1F0
  loc_BBD759: Call EjecutarRsCls(from_stack_1v)
  loc_BBD75E: FFree1Str var_1F0
  loc_BBD761: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_108 = "": var_118 = "": var_138 = "": var_14C = "": var_15C = "": var_1AC = "": var_17C = "": var_1BC = "": var_1CC = ""
  loc_BBD77E: FLdRfVar var_B4
  loc_BBD781: FLdRfVar var_1F8
  loc_BBD784: LitVarStr var_A4, "SaldAuto"
  loc_BBD789: PopAdLdVar
  loc_BBD78A: FLdRfVar var_1F4
  loc_BBD78D: FLdPr Me
  loc_BBD790: MemLdPr global_56
  loc_BBD793:  = Me.Fields
  loc_BBD798: FLdPr var_1F4
  loc_BBD79B: from_stack_2 = Me.Item(from_stack_1)
  loc_BBD7A0: FLdPr var_1F8
  loc_BBD7A3:  = Me.Value
  loc_BBD7A8: LitI4 2
  loc_BBD7AD: FLdRfVar var_B4
  loc_BBD7B0: FnCDblVar
  loc_BBD7B2: ILdRf var_8C
  loc_BBD7B5: CR8Str
  loc_BBD7B7: SubR4
  loc_BBD7B8: CVarR8
  loc_BBD7BC: FLdRfVar var_F4
  loc_BBD7BF: ImpAdCallFPR4  = Round(, )
  loc_BBD7C4: FLdRfVar var_F4
  loc_BBD7C7: LitVarI2 var_E4, 0
  loc_BBD7CC: HardType
  loc_BBD7CD: LtVarBool
  loc_BBD7CF: FFreeAd var_1F4 = ""
  loc_BBD7D6: FFreeVar var_B4 = "": var_D4 = ""
  loc_BBD7DF: BranchF loc_BBDAA1
  loc_BBD7E2: ImpAdLdRf MemVar_C3D1EC
  loc_BBD7E5: NewIfNullAd
  loc_BBD7E8: FStAd var_1FC 
  loc_BBD7EC: LitI4 1
  loc_BBD7F1: LitI4 1
  loc_BBD7F6: LitVarStr var_C4, "dd/mm/yyyy"
  loc_BBD7FB: FStVarCopyObj var_B4
  loc_BBD7FE: FLdRfVar var_B4
  loc_BBD801: FLdRfVar var_90
  loc_BBD804: CVarRef
  loc_BBD809: ImpAdCallI2 Format$(, )
  loc_BBD80E: FStStrNoPop var_F8
  loc_BBD811: FLdPr var_1FC
  loc_BBD814: VCallAd Control_ID_
  loc_BBD817: FStAdFunc var_1F4
  loc_BBD81A: FLdPr var_1F4
  loc_BBD81D: Me.Caption = from_stack_1
  loc_BBD822: FFree1Str var_F8
  loc_BBD825: FFree1Ad var_1F4
  loc_BBD828: FFree1Var var_B4 = ""
  loc_BBD82B: FLdRfVar var_F8
  loc_BBD82E: FLdPr var_1FC
  loc_BBD831: VCallAd Control_ID_
  loc_BBD834: FStAdFunc var_1F4
  loc_BBD837: FLdPr var_1F4
  loc_BBD83A:  = Me.Caption
  loc_BBD83F: ILdRf var_F8
  loc_BBD842: LitStr "al "
  loc_BBD845: ConcatStr
  loc_BBD846: FStStrNoPop var_1F0
  loc_BBD849: FLdRfVar var_13C
  loc_BBD84C: FLdPr var_1FC
  loc_BBD84F: VCallAd Control_ID_
  loc_BBD852: FStAdFunc var_1F8
  loc_BBD855: FLdPr var_1F8
  loc_BBD858:  = Me.Caption
  loc_BBD85D: ILdRf var_13C
  loc_BBD860: ConcatStr
  loc_BBD861: FStStrNoPop var_200
  loc_BBD864: LitStr " "
  loc_BBD867: ConcatStr
  loc_BBD868: FStStrNoPop var_204
  loc_BBD86B: FLdPr var_1FC
  loc_BBD86E: VCallAd Control_ID_
  loc_BBD871: FStAdFunc var_208
  loc_BBD874: FLdPr var_208
  loc_BBD877: Me.Caption = from_stack_1
  loc_BBD87C: FFreeStr var_F8 = "": var_1F0 = "": var_13C = "": var_200 = ""
  loc_BBD889: FFreeAd var_1F4 = "": var_1F8 = ""
  loc_BBD892: FLdRfVar var_F8
  loc_BBD895: ILdPr
  loc_BBD898: from_stack_1v = tblpartida.CredPartGet()
  loc_BBD89D: ILdRf var_F8
  loc_BBD8A0: FLdPr var_1FC
  loc_BBD8A3: VCallAd Control_ID_
  loc_BBD8A6: FStAdFunc var_1F4
  loc_BBD8A9: FLdPr var_1F4
  loc_BBD8AC: Me.Caption = from_stack_1
  loc_BBD8B1: FFree1Str var_F8
  loc_BBD8B4: FFree1Ad var_1F4
  loc_BBD8B7: FLdRfVar var_F8
  loc_BBD8BA: ILdPr
  loc_BBD8BD: from_stack_1v = tblpartida.DetaPartGet()
  loc_BBD8C2: ILdRf var_F8
  loc_BBD8C5: FLdPr var_1FC
  loc_BBD8C8: VCallAd Control_ID_
  loc_BBD8CB: FStAdFunc var_1F4
  loc_BBD8CE: FLdPr var_1F4
  loc_BBD8D1: Me.Caption = from_stack_1
  loc_BBD8D6: FFree1Str var_F8
  loc_BBD8D9: FFree1Ad var_1F4
  loc_BBD8DC: FLdRfVar var_F8
  loc_BBD8DF: ILdPr
  loc_BBD8E2: from_stack_1v = tblorganigrama.CredOrgaGet()
  loc_BBD8E7: ILdRf var_F8
  loc_BBD8EA: FLdPr var_1FC
  loc_BBD8ED: VCallAd Control_ID_
  loc_BBD8F0: FStAdFunc var_1F4
  loc_BBD8F3: FLdPr var_1F4
  loc_BBD8F6: Me.Caption = from_stack_1
  loc_BBD8FB: FFree1Str var_F8
  loc_BBD8FE: FFree1Ad var_1F4
  loc_BBD901: FLdRfVar var_F8
  loc_BBD904: ILdPr
  loc_BBD907: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_BBD90C: ILdRf var_F8
  loc_BBD90F: FLdPr var_1FC
  loc_BBD912: VCallAd Control_ID_
  loc_BBD915: FStAdFunc var_1F4
  loc_BBD918: FLdPr var_1F4
  loc_BBD91B: Me.Caption = from_stack_1
  loc_BBD920: FFree1Str var_F8
  loc_BBD923: FFree1Ad var_1F4
  loc_BBD926: FLdRfVar var_1F8
  loc_BBD929: LitVarStr var_A4, "SaldAuto"
  loc_BBD92E: PopAdLdVar
  loc_BBD92F: FLdRfVar var_1F4
  loc_BBD932: FLdPr Me
  loc_BBD935: MemLdPr global_56
  loc_BBD938:  = Me.Fields
  loc_BBD93D: FLdPr var_1F4
  loc_BBD940: from_stack_2 = Me.Item(from_stack_1)
  loc_BBD945: LitI4 1
  loc_BBD94A: LitI4 1
  loc_BBD94F: LitVarStr var_C4, "currency"
  loc_BBD954: FStVarCopyObj var_D4
  loc_BBD957: FLdRfVar var_D4
  loc_BBD95A: FLdZeroAd var_1F8
  loc_BBD95D: CVarAd
  loc_BBD961: ImpAdCallI2 Format$(, )
  loc_BBD966: FStStrNoPop var_F8
  loc_BBD969: FLdPr var_1FC
  loc_BBD96C: VCallAd Control_ID_
  loc_BBD96F: FStAdFunc var_208
  loc_BBD972: FLdPr var_208
  loc_BBD975: Me.Caption = from_stack_1
  loc_BBD97A: FFree1Str var_F8
  loc_BBD97D: FFreeAd var_1F4 = ""
  loc_BBD984: FFreeVar var_B4 = ""
  loc_BBD98B: LitI4 1
  loc_BBD990: LitI4 1
  loc_BBD995: LitVarStr var_C4, "currency"
  loc_BBD99A: FStVarCopyObj var_B4
  loc_BBD99D: FLdRfVar var_B4
  loc_BBD9A0: FLdRfVar var_8C
  loc_BBD9A3: CVarRef
  loc_BBD9A8: ImpAdCallI2 Format$(, )
  loc_BBD9AD: FStStrNoPop var_F8
  loc_BBD9B0: FLdPr var_1FC
  loc_BBD9B3: VCallAd Control_ID_
  loc_BBD9B6: FStAdFunc var_1F4
  loc_BBD9B9: FLdPr var_1F4
  loc_BBD9BC: Me.Caption = from_stack_1
  loc_BBD9C1: FFree1Str var_F8
  loc_BBD9C4: FFree1Ad var_1F4
  loc_BBD9C7: FFree1Var var_B4 = ""
  loc_BBD9CA: FLdRfVar var_B4
  loc_BBD9CD: FLdRfVar var_1F8
  loc_BBD9D0: LitVarStr var_A4, "SaldAuto"
  loc_BBD9D5: PopAdLdVar
  loc_BBD9D6: FLdRfVar var_1F4
  loc_BBD9D9: FLdPr Me
  loc_BBD9DC: MemLdPr global_56
  loc_BBD9DF:  = Me.Fields
  loc_BBD9E4: FLdPr var_1F4
  loc_BBD9E7: from_stack_2 = Me.Item(from_stack_1)
  loc_BBD9EC: FLdPr var_1F8
  loc_BBD9EF:  = Me.Value
  loc_BBD9F4: LitI4 2
  loc_BBD9F9: FLdRfVar var_B4
  loc_BBD9FC: FnCDblVar
  loc_BBD9FE: ILdRf var_8C
  loc_BBDA01: CR8Str
  loc_BBDA03: SubR4
  loc_BBDA04: CVarR8
  loc_BBDA08: FLdRfVar var_F4
  loc_BBDA0B: ImpAdCallFPR4  = Round(, )
  loc_BBDA10: LitI4 1
  loc_BBDA15: LitI4 1
  loc_BBDA1A: LitVarStr var_E4, "currency"
  loc_BBDA1F: FStVarCopyObj var_108
  loc_BBDA22: FLdRfVar var_108
  loc_BBDA25: FLdRfVar var_F4
  loc_BBDA28: ImpAdCallI2 Format$(, )
  loc_BBDA2D: FStStrNoPop var_F8
  loc_BBDA30: FLdPr var_1FC
  loc_BBDA33: VCallAd Control_ID_
  loc_BBDA36: FStAdFunc var_208
  loc_BBDA39: FLdPr var_208
  loc_BBDA3C: Me.Caption = from_stack_1
  loc_BBDA41: FFree1Str var_F8
  loc_BBDA44: FFreeAd var_1F4 = "": var_1F8 = ""
  loc_BBDA4D: FFreeVar var_B4 = "": var_D4 = "": var_F4 = ""
  loc_BBDA58: LitStr "Imputación Cancelada"
  loc_BBDA5B: FLdPr var_1FC
  loc_BBDA5E: VCallAd Control_ID_
  loc_BBDA61: FStAdFunc var_1F4
  loc_BBDA64: FLdPr var_1F4
  loc_BBDA67: Me.Caption = from_stack_1
  loc_BBDA6C: FFree1Ad var_1F4
  loc_BBDA6F: LitStr "Imputación Cancelada"
  loc_BBDA72: FStStrCopy var_88
  loc_BBDA75: LitVar_Missing var_C4
  loc_BBDA78: PopAdLdVar
  loc_BBDA79: LitVarI4
  loc_BBDA81: PopAdLdVar
  loc_BBDA82: FLdPr var_1FC
  loc_BBDA85: Me.Show from_stack_1, from_stack_2
  loc_BBDA8A: ILdRf var_88
  loc_BBDA8D: LitStr vbNullString
  loc_BBDA90: NeStr
  loc_BBDA92: BranchF loc_BBDA9B
  loc_BBDA95: ExitProcCbHresult
  loc_BBDA9B: LitNothing
  loc_BBDA9D: FStAd var_1FC 
  loc_BBDAA1: LitI2_Byte 0
  loc_BBDAA3: BranchF loc_BBDEC9
  loc_BBDAA6: LitStr "SELECT IFNULL(Sum(AutoFipo),0) AutoFipo, CoauFipo"
  loc_BBDAA9: LitStr " FROM fifupartorga"
  loc_BBDAAC: ConcatStr
  loc_BBDAAD: FStStrNoPop var_F8
  loc_BBDAB0: LitStr " WHERE PeriInfo = "
  loc_BBDAB3: ConcatStr
  loc_BBDAB4: FStStrNoPop var_13C
  loc_BBDAB7: ILdI2 PeriInfo
  loc_BBDABA: CStrUI1
  loc_BBDABC: FStStrNoPop var_1F0
  loc_BBDABF: ConcatStr
  loc_BBDAC0: FStStrNoPop var_200
  loc_BBDAC3: LitStr " AND CodiFifu = '"
  loc_BBDAC6: ConcatStr
  loc_BBDAC7: FStStrNoPop var_20C
  loc_BBDACA: FLdRfVar var_204
  loc_BBDACD: ILdPr
  loc_BBDAD0: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_BBDAD5: ILdRf var_204
  loc_BBDAD8: ConcatStr
  loc_BBDAD9: FStStrNoPop var_210
  loc_BBDADC: LitStr "' AND CodiPart = '"
  loc_BBDADF: ConcatStr
  loc_BBDAE0: FStStrNoPop var_218
  loc_BBDAE3: FLdRfVar var_214
  loc_BBDAE6: ILdPr
  loc_BBDAE9: from_stack_1v = tblpartida.CredPartGestionGet()
  loc_BBDAEE: ILdRf var_214
  loc_BBDAF1: ConcatStr
  loc_BBDAF2: FStStrNoPop var_21C
  loc_BBDAF5: LitStr "' AND CodiOrga = '"
  loc_BBDAF8: ConcatStr
  loc_BBDAF9: FStStrNoPop var_224
  loc_BBDAFC: FLdRfVar var_220
  loc_BBDAFF: ILdPr
  loc_BBDB02: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_BBDB07: ILdRf var_220
  loc_BBDB0A: ConcatStr
  loc_BBDB0B: FStStrNoPop var_228
  loc_BBDB0E: LitStr "'"
  loc_BBDB11: ConcatStr
  loc_BBDB12: FStStrNoPop var_22C
  loc_BBDB15: LitStr " GROUP BY PeriInfo, CodiFifu, CodiPart, CodiOrga;"
  loc_BBDB18: ConcatStr
  loc_BBDB19: FStStrNoPop var_230
  loc_BBDB1C: Call EjecutarRsCls(from_stack_1v)
  loc_BBDB21: FFreeStr var_F8 = "": var_13C = "": var_1F0 = "": var_200 = "": var_20C = "": var_204 = "": var_210 = "": var_218 = "": var_214 = "": var_21C = "": var_224 = "": var_220 = "": var_228 = "": var_22C = ""
  loc_BBDB42: FLdRfVar var_234
  loc_BBDB45: FLdPr Me
  loc_BBDB48: MemLdPr global_56
  loc_BBDB4B:  = Me.RecordCount
  loc_BBDB50: ILdRf var_234
  loc_BBDB53: LitI4 0
  loc_BBDB58: GtI4
  loc_BBDB59: BranchF loc_BBDEB2
  loc_BBDB5C: LitVarStr var_C4, "SELECT nSaldoVotaG`('"
  loc_BBDB61: FLdRfVar var_90
  loc_BBDB64: CVarRef
  loc_BBDB69: FLdRfVar var_B4
  loc_BBDB6C: ImpAdCallFPR4  = Year()
  loc_BBDB71: FLdRfVar var_B4
  loc_BBDB74: ConcatVar var_D4
  loc_BBDB78: LitVarStr var_E4, "', '"
  loc_BBDB7D: ConcatVar var_F4
  loc_BBDB81: FLdRfVar var_F8
  loc_BBDB84: ILdPr
  loc_BBDB87: from_stack_1v = tblpartida.CodiPartGet()
  loc_BBDB8C: FLdZeroAd var_F8
  loc_BBDB8F: CVarStr var_108
  loc_BBDB92: ConcatVar var_118
  loc_BBDB96: LitVarStr var_128, "', '"
  loc_BBDB9B: ConcatVar var_138
  loc_BBDB9F: FLdRfVar var_13C
  loc_BBDBA2: ILdPr
  loc_BBDBA5: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_BBDBAA: FLdZeroAd var_13C
  loc_BBDBAD: CVarStr var_14C
  loc_BBDBB0: ConcatVar var_15C
  loc_BBDBB4: LitVarStr var_16C, "', '"
  loc_BBDBB9: ConcatVar var_17C
  loc_BBDBBD: FLdRfVar var_1F0
  loc_BBDBC0: ILdPr
  loc_BBDBC3: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_BBDBC8: FLdZeroAd var_1F0
  loc_BBDBCB: CVarStr var_1AC
  loc_BBDBCE: ConcatVar var_1BC
  loc_BBDBD2: LitVarStr var_18C, "', "
  loc_BBDBD7: ConcatVar var_1CC
  loc_BBDBDB: LitI4 1
  loc_BBDBE0: LitI4 1
  loc_BBDBE5: LitVarStr var_1DC, "'yyyy-mm-dd'"
  loc_BBDBEA: FStVarCopyObj var_1EC
  loc_BBDBED: FLdRfVar var_1EC
  loc_BBDBF0: FLdRfVar var_90
  loc_BBDBF3: CVarRef
  loc_BBDBF8: ImpAdCallI2 Format$(, )
  loc_BBDBFD: CVarStr var_244
  loc_BBDC00: ConcatVar var_254
  loc_BBDC04: LitVarStr var_264, ") SaldAuto;"
  loc_BBDC09: ConcatVar var_274
  loc_BBDC0D: CStrVarVal var_200
  loc_BBDC11: Call Proc_13_81_964BE0()
  loc_BBDC16: FFree1Str var_200
  loc_BBDC19: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_108 = "": var_118 = "": var_138 = "": var_14C = "": var_15C = "": var_17C = "": var_1AC = "": var_1BC = "": var_1EC = "": var_1CC = "": var_244 = "": var_254 = ""
  loc_BBDC3C: FLdRfVar var_B4
  loc_BBDC3F: FLdRfVar var_1F8
  loc_BBDC42: LitVarStr var_A4, "SaldAuto"
  loc_BBDC47: PopAdLdVar
  loc_BBDC48: FLdRfVar var_1F4
  loc_BBDC4B: FLdPr Me
  loc_BBDC4E: MemLdPr global_60
  loc_BBDC51:  = Me.Fields
  loc_BBDC56: FLdPr var_1F4
  loc_BBDC59: from_stack_2 = Me.Item(from_stack_1)
  loc_BBDC5E: FLdPr var_1F8
  loc_BBDC61:  = Me.Value
  loc_BBDC66: LitI4 2
  loc_BBDC6B: FLdRfVar var_B4
  loc_BBDC6E: FnCDblVar
  loc_BBDC70: ILdRf var_8C
  loc_BBDC73: CR8Str
  loc_BBDC75: SubR4
  loc_BBDC76: CVarR8
  loc_BBDC7A: FLdRfVar var_F4
  loc_BBDC7D: ImpAdCallFPR4  = Round(, )
  loc_BBDC82: FLdRfVar var_F4
  loc_BBDC85: LitVarI2 var_E4, 0
  loc_BBDC8A: HardType
  loc_BBDC8B: LtVarBool
  loc_BBDC8D: FFreeAd var_1F4 = ""
  loc_BBDC94: FFreeVar var_B4 = "": var_D4 = ""
  loc_BBDC9D: BranchF loc_BBDEAF
  loc_BBDCA0: FLdRfVar var_B4
  loc_BBDCA3: FLdRfVar var_1F8
  loc_BBDCA6: LitVarStr var_A4, "CoauFipo"
  loc_BBDCAB: PopAdLdVar
  loc_BBDCAC: FLdRfVar var_1F4
  loc_BBDCAF: FLdPr Me
  loc_BBDCB2: MemLdPr global_56
  loc_BBDCB5:  = Me.Fields
  loc_BBDCBA: FLdPr var_1F4
  loc_BBDCBD: from_stack_2 = Me.Item(from_stack_1)
  loc_BBDCC2: FLdPr var_1F8
  loc_BBDCC5:  = Me.Value
  loc_BBDCCA: FLdRfVar var_B4
  loc_BBDCCD: LitVarI2 var_C4, 0
  loc_BBDCD2: HardType
  loc_BBDCD3: EqVarBool
  loc_BBDCD5: FFreeAd var_1F4 = ""
  loc_BBDCDC: FFree1Var var_B4 = ""
  loc_BBDCDF: BranchF loc_BBDDC7
  loc_BBDCE2: FLdRfVar var_1F8
  loc_BBDCE5: LitVarStr var_A4, "AutoFipo"
  loc_BBDCEA: PopAdLdVar
  loc_BBDCEB: FLdRfVar var_1F4
  loc_BBDCEE: FLdPr Me
  loc_BBDCF1: MemLdPr global_56
  loc_BBDCF4:  = Me.Fields
  loc_BBDCF9: FLdPr var_1F4
  loc_BBDCFC: from_stack_2 = Me.Item(from_stack_1)
  loc_BBDD01: FLdRfVar var_278
  loc_BBDD04: LitVarStr var_E4, "SaldAuto"
  loc_BBDD09: PopAdLdVar
  loc_BBDD0A: FLdRfVar var_208
  loc_BBDD0D: FLdPr Me
  loc_BBDD10: MemLdPr global_60
  loc_BBDD13:  = Me.Fields
  loc_BBDD18: FLdPr var_208
  loc_BBDD1B: from_stack_2 = Me.Item(from_stack_1)
  loc_BBDD20: LitStr "Advertencia: CONTROL DE GESTION ..."
  loc_BBDD23: LitStr vbCrLf
  loc_BBDD26: ConcatStr
  loc_BBDD27: FStStrNoPop var_F8
  loc_BBDD2A: LitStr " El Saldo para el Organigrama-Partida-Finalidad es insuficiente. Verifique..."
  loc_BBDD2D: ConcatStr
  loc_BBDD2E: FStStrNoPop var_13C
  loc_BBDD31: LitStr vbCrLf
  loc_BBDD34: ConcatStr
  loc_BBDD35: FStStrNoPop var_1F0
  loc_BBDD38: LitStr " Crédito: "
  loc_BBDD3B: ConcatStr
  loc_BBDD3C: FStStrNoPop var_200
  loc_BBDD3F: LitI4 1
  loc_BBDD44: LitI4 1
  loc_BBDD49: LitVarStr var_C4, "currency"
  loc_BBDD4E: FStVarCopyObj var_D4
  loc_BBDD51: FLdRfVar var_D4
  loc_BBDD54: FLdZeroAd var_1F8
  loc_BBDD57: CVarAd
  loc_BBDD5B: ImpAdCallI2 Format$(, )
  loc_BBDD60: FStStrNoPop var_204
  loc_BBDD63: ConcatStr
  loc_BBDD64: FStStrNoPop var_20C
  loc_BBDD67: LitStr vbCrLf
  loc_BBDD6A: ConcatStr
  loc_BBDD6B: FStStrNoPop var_210
  loc_BBDD6E: LitStr " Saldo: "
  loc_BBDD71: ConcatStr
  loc_BBDD72: FStStrNoPop var_214
  loc_BBDD75: LitI4 1
  loc_BBDD7A: LitI4 1
  loc_BBDD7F: LitVarStr var_128, "currency"
  loc_BBDD84: FStVarCopyObj var_108
  loc_BBDD87: FLdRfVar var_108
  loc_BBDD8A: FLdZeroAd var_278
  loc_BBDD8D: CVarAd
  loc_BBDD91: ImpAdCallI2 Format$(, )
  loc_BBDD96: FStStrNoPop var_218
  loc_BBDD99: ConcatStr
  loc_BBDD9A: FStStr var_88
  loc_BBDD9D: FFreeStr var_F8 = "": var_13C = "": var_1F0 = "": var_200 = "": var_204 = "": var_20C = "": var_210 = "": var_214 = ""
  loc_BBDDB2: FFreeAd var_1F4 = ""
  loc_BBDDB9: FFreeVar var_B4 = "": var_D4 = "": var_F4 = ""
  loc_BBDDC4: Branch loc_BBDEAF
  loc_BBDDC7: FLdRfVar var_1F8
  loc_BBDDCA: LitVarStr var_A4, "AutoFipo"
  loc_BBDDCF: PopAdLdVar
  loc_BBDDD0: FLdRfVar var_1F4
  loc_BBDDD3: FLdPr Me
  loc_BBDDD6: MemLdPr global_56
  loc_BBDDD9:  = Me.Fields
  loc_BBDDDE: FLdPr var_1F4
  loc_BBDDE1: from_stack_2 = Me.Item(from_stack_1)
  loc_BBDDE6: FLdRfVar var_278
  loc_BBDDE9: LitVarStr var_E4, "SaldAuto"
  loc_BBDDEE: PopAdLdVar
  loc_BBDDEF: FLdRfVar var_208
  loc_BBDDF2: FLdPr Me
  loc_BBDDF5: MemLdPr global_60
  loc_BBDDF8:  = Me.Fields
  loc_BBDDFD: FLdPr var_208
  loc_BBDE00: from_stack_2 = Me.Item(from_stack_1)
  loc_BBDE05: LitStr "CONTROL DE GESTION ..."
  loc_BBDE08: LitStr vbCrLf
  loc_BBDE0B: ConcatStr
  loc_BBDE0C: FStStrNoPop var_F8
  loc_BBDE0F: LitStr " El Saldo para el Organigrama-Partida-Finalidad es insuficiente. Verifique..."
  loc_BBDE12: ConcatStr
  loc_BBDE13: FStStrNoPop var_13C
  loc_BBDE16: LitStr vbCrLf
  loc_BBDE19: ConcatStr
  loc_BBDE1A: FStStrNoPop var_1F0
  loc_BBDE1D: LitStr " Crédito: "
  loc_BBDE20: ConcatStr
  loc_BBDE21: FStStrNoPop var_200
  loc_BBDE24: LitI4 1
  loc_BBDE29: LitI4 1
  loc_BBDE2E: LitVarStr var_C4, "currency"
  loc_BBDE33: FStVarCopyObj var_D4
  loc_BBDE36: FLdRfVar var_D4
  loc_BBDE39: FLdZeroAd var_1F8
  loc_BBDE3C: CVarAd
  loc_BBDE40: ImpAdCallI2 Format$(, )
  loc_BBDE45: FStStrNoPop var_204
  loc_BBDE48: ConcatStr
  loc_BBDE49: FStStrNoPop var_20C
  loc_BBDE4C: LitStr vbCrLf
  loc_BBDE4F: ConcatStr
  loc_BBDE50: FStStrNoPop var_210
  loc_BBDE53: LitStr " Saldo: "
  loc_BBDE56: ConcatStr
  loc_BBDE57: FStStrNoPop var_214
  loc_BBDE5A: LitI4 1
  loc_BBDE5F: LitI4 1
  loc_BBDE64: LitVarStr var_128, "currency"
  loc_BBDE69: FStVarCopyObj var_108
  loc_BBDE6C: FLdRfVar var_108
  loc_BBDE6F: FLdZeroAd var_278
  loc_BBDE72: CVarAd
  loc_BBDE76: ImpAdCallI2 Format$(, )
  loc_BBDE7B: FStStrNoPop var_218
  loc_BBDE7E: ConcatStr
  loc_BBDE7F: FStStr var_88
  loc_BBDE82: FFreeStr var_F8 = "": var_13C = "": var_1F0 = "": var_200 = "": var_204 = "": var_20C = "": var_210 = "": var_214 = ""
  loc_BBDE97: FFreeAd var_1F4 = ""
  loc_BBDE9E: FFreeVar var_B4 = "": var_D4 = "": var_F4 = ""
  loc_BBDEA9: ExitProcCbHresult
  loc_BBDEAF: Branch loc_BBDEC6
  loc_BBDEB2: LitStr "CONTROL DE GESTION:"
  loc_BBDEB5: LitStr vbCrLf
  loc_BBDEB8: ConcatStr
  loc_BBDEB9: FStStrNoPop var_F8
  loc_BBDEBC: LitStr "El Autorizado de Gestión para Organigrama-Partida-Finalidad NO EXISTE. Verifique..."
  loc_BBDEBF: ConcatStr
  loc_BBDEC0: FStStr var_88
  loc_BBDEC3: FFree1Str var_F8
  loc_BBDEC6: Branch loc_BBE1BB
  loc_BBDEC9: LitStr "SELECT *"
  loc_BBDECC: LitStr " FROM finalidad"
  loc_BBDECF: ConcatStr
  loc_BBDED0: FStStrNoPop var_F8
  loc_BBDED3: LitStr " WHERE PeriInfo = "
  loc_BBDED6: ConcatStr
  loc_BBDED7: FStStrNoPop var_13C
  loc_BBDEDA: ILdI2 PeriInfo
  loc_BBDEDD: CStrUI1
  loc_BBDEDF: FStStrNoPop var_1F0
  loc_BBDEE2: ConcatStr
  loc_BBDEE3: FStStrNoPop var_200
  loc_BBDEE6: LitStr " AND CodiFifu = '"
  loc_BBDEE9: ConcatStr
  loc_BBDEEA: FStStrNoPop var_20C
  loc_BBDEED: FLdRfVar var_204
  loc_BBDEF0: ILdPr
  loc_BBDEF3: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_BBDEF8: ILdRf var_204
  loc_BBDEFB: ConcatStr
  loc_BBDEFC: FStStrNoPop var_210
  loc_BBDEFF: LitStr "'"
  loc_BBDF02: ConcatStr
  loc_BBDF03: FStStrNoPop var_214
  loc_BBDF06: Call EjecutarRsCls(from_stack_1v)
  loc_BBDF0B: FFreeStr var_F8 = "": var_13C = "": var_1F0 = "": var_200 = "": var_20C = "": var_204 = "": var_210 = ""
  loc_BBDF1E: FLdRfVar var_234
  loc_BBDF21: FLdPr Me
  loc_BBDF24: MemLdPr global_56
  loc_BBDF27:  = Me.RecordCount
  loc_BBDF2C: ILdRf var_234
  loc_BBDF2F: LitI4 0
  loc_BBDF34: GtI4
  loc_BBDF35: BranchF loc_BBE1A7
  loc_BBDF38: FLdRfVar var_B4
  loc_BBDF3B: FLdRfVar var_1F8
  loc_BBDF3E: LitVarStr var_A4, "AutoFifu"
  loc_BBDF43: PopAdLdVar
  loc_BBDF44: FLdRfVar var_1F4
  loc_BBDF47: FLdPr Me
  loc_BBDF4A: MemLdPr global_56
  loc_BBDF4D:  = Me.Fields
  loc_BBDF52: FLdPr var_1F4
  loc_BBDF55: from_stack_2 = Me.Item(from_stack_1)
  loc_BBDF5A: FLdPr var_1F8
  loc_BBDF5D:  = Me.Value
  loc_BBDF62: FLdRfVar var_B4
  loc_BBDF65: LitVarI2 var_C4, 0
  loc_BBDF6A: HardType
  loc_BBDF6B: GtVarBool
  loc_BBDF6D: FFreeAd var_1F4 = ""
  loc_BBDF74: FFree1Var var_B4 = ""
  loc_BBDF77: BranchF loc_BBE1A4
  loc_BBDF7A: LitStr "SELECT IFNULL(SUM(PrevImpu),0) AS PrevImpu FROM imputacion /*USE INDEX (idximpu01)*/ WHERE PeriInfo = "
  loc_BBDF7D: ILdI2 PeriInfo
  loc_BBDF80: CStrUI1
  loc_BBDF82: FStStrNoPop var_F8
  loc_BBDF85: ConcatStr
  loc_BBDF86: FStStrNoPop var_13C
  loc_BBDF89: LitStr " AND CodiFifu = '"
  loc_BBDF8C: ConcatStr
  loc_BBDF8D: FStStrNoPop var_200
  loc_BBDF90: FLdRfVar var_1F0
  loc_BBDF93: ILdPr
  loc_BBDF96: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_BBDF9B: ILdRf var_1F0
  loc_BBDF9E: ConcatStr
  loc_BBDF9F: FStStrNoPop var_204
  loc_BBDFA2: LitStr "'"
  loc_BBDFA5: ConcatStr
  loc_BBDFA6: FStStrNoPop var_20C
  loc_BBDFA9: Call Proc_13_81_964BE0()
  loc_BBDFAE: FFreeStr var_F8 = "": var_13C = "": var_200 = "": var_1F0 = "": var_204 = ""
  loc_BBDFBD: FLdRfVar var_F4
  loc_BBDFC0: FLdRfVar var_1F8
  loc_BBDFC3: LitVarStr var_A4, "AutoFifu"
  loc_BBDFC8: PopAdLdVar
  loc_BBDFC9: FLdRfVar var_1F4
  loc_BBDFCC: FLdPr Me
  loc_BBDFCF: MemLdPr global_56
  loc_BBDFD2:  = Me.Fields
  loc_BBDFD7: FLdPr var_1F4
  loc_BBDFDA: from_stack_2 = Me.Item(from_stack_1)
  loc_BBDFDF: FLdPr var_1F8
  loc_BBDFE2:  = Me.Value
  loc_BBDFE7: FLdRfVar var_F4
  loc_BBDFEA: FLdRfVar var_B4
  loc_BBDFED: FLdRfVar var_278
  loc_BBDFF0: LitVarStr var_C4, "PrevImpu"
  loc_BBDFF5: PopAdLdVar
  loc_BBDFF6: FLdRfVar var_208
  loc_BBDFF9: FLdPr Me
  loc_BBDFFC: MemLdPr global_60
  loc_BBDFFF:  = Me.Fields
  loc_BBE004: FLdPr var_208
  loc_BBE007: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE00C: FLdPr var_278
  loc_BBE00F:  = Me.Value
  loc_BBE014: FLdRfVar var_B4
  loc_BBE017: ILdRf var_8C
  loc_BBE01A: CVarStr var_E4
  loc_BBE01D: AddVar var_D4
  loc_BBE021: LtVarBool
  loc_BBE023: FFreeAd var_1F4 = "": var_208 = "": var_278 = ""
  loc_BBE02E: FFreeVar var_B4 = "": var_F4 = ""
  loc_BBE037: BranchF loc_BBE1A4
  loc_BBE03A: FLdRfVar var_B4
  loc_BBE03D: FLdRfVar var_1F8
  loc_BBE040: LitVarStr var_A4, "PrevImpu"
  loc_BBE045: PopAdLdVar
  loc_BBE046: FLdRfVar var_1F4
  loc_BBE049: FLdPr Me
  loc_BBE04C: MemLdPr global_60
  loc_BBE04F:  = Me.Fields
  loc_BBE054: FLdPr var_1F4
  loc_BBE057: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE05C: FLdPr var_1F8
  loc_BBE05F:  = Me.Value
  loc_BBE064: FLdRfVar var_278
  loc_BBE067: LitVarStr var_128, "AutoFifu"
  loc_BBE06C: PopAdLdVar
  loc_BBE06D: FLdRfVar var_208
  loc_BBE070: FLdPr Me
  loc_BBE073: MemLdPr global_56
  loc_BBE076:  = Me.Fields
  loc_BBE07B: FLdPr var_208
  loc_BBE07E: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE083: LitStr "CONTROL DE GESTION:"
  loc_BBE086: LitStr vbCrLf
  loc_BBE089: ConcatStr
  loc_BBE08A: FStStrNoPop var_F8
  loc_BBE08D: LitStr " El Total Acumulado para la Finalidad-Función es Mayor a su Importe Autorizado. Verifique..."
  loc_BBE090: ConcatStr
  loc_BBE091: FStStrNoPop var_13C
  loc_BBE094: LitStr vbCrLf
  loc_BBE097: ConcatStr
  loc_BBE098: FStStrNoPop var_1F0
  loc_BBE09B: LitStr " Total Acumulado: "
  loc_BBE09E: ConcatStr
  loc_BBE09F: FStStrNoPop var_200
  loc_BBE0A2: LitI4 1
  loc_BBE0A7: LitI4 1
  loc_BBE0AC: LitVarStr var_E4, "currency"
  loc_BBE0B1: FStVarCopyObj var_F4
  loc_BBE0B4: FLdRfVar var_F4
  loc_BBE0B7: FLdRfVar var_B4
  loc_BBE0BA: ILdRf var_8C
  loc_BBE0BD: CVarStr var_C4
  loc_BBE0C0: AddVar var_D4
  loc_BBE0C4: ImpAdCallI2 Format$(, )
  loc_BBE0C9: FStStrNoPop var_204
  loc_BBE0CC: ConcatStr
  loc_BBE0CD: FStStrNoPop var_20C
  loc_BBE0D0: LitStr vbCrLf
  loc_BBE0D3: ConcatStr
  loc_BBE0D4: FStStrNoPop var_210
  loc_BBE0D7: LitStr " Importe Autorizado: "
  loc_BBE0DA: ConcatStr
  loc_BBE0DB: FStStrNoPop var_214
  loc_BBE0DE: LitI4 1
  loc_BBE0E3: LitI4 1
  loc_BBE0E8: LitVarStr var_16C, "currency"
  loc_BBE0ED: FStVarCopyObj var_118
  loc_BBE0F0: FLdRfVar var_118
  loc_BBE0F3: FLdZeroAd var_278
  loc_BBE0F6: CVarAd
  loc_BBE0FA: ImpAdCallI2 Format$(, )
  loc_BBE0FF: FStStrNoPop var_218
  loc_BBE102: ConcatStr
  loc_BBE103: FStStr var_88
  loc_BBE106: FFreeStr var_F8 = "": var_13C = "": var_1F0 = "": var_200 = "": var_204 = "": var_20C = "": var_210 = "": var_214 = ""
  loc_BBE11B: FFreeAd var_1F4 = "": var_1F8 = ""
  loc_BBE124: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_108 = ""
  loc_BBE131: FLdRfVar var_B4
  loc_BBE134: FLdRfVar var_1F8
  loc_BBE137: LitVarStr var_A4, "CoauFifu"
  loc_BBE13C: PopAdLdVar
  loc_BBE13D: FLdRfVar var_1F4
  loc_BBE140: FLdPr Me
  loc_BBE143: MemLdPr global_56
  loc_BBE146:  = Me.Fields
  loc_BBE14B: FLdPr var_1F4
  loc_BBE14E: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE153: FLdPr var_1F8
  loc_BBE156:  = Me.Value
  loc_BBE15B: FLdRfVar var_B4
  loc_BBE15E: LitVarI2 var_C4, 0
  loc_BBE163: HardType
  loc_BBE164: EqVarBool
  loc_BBE166: FFreeAd var_1F4 = ""
  loc_BBE16D: FFree1Var var_B4 = ""
  loc_BBE170: BranchF loc_BBE19E
  loc_BBE173: LitI4 0
  loc_BBE178: LitStr "La Imputación se realizará SIN CONTROL DE GESTIÓN de Finalidad-Función"
  loc_BBE17B: LitStr vbCrLf
  loc_BBE17E: ConcatStr
  loc_BBE17F: FStStrNoPop var_F8
  loc_BBE182: ILdRf var_88
  loc_BBE185: ConcatStr
  loc_BBE186: FStStrNoPop var_13C
  loc_BBE189: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BBE18E: FFreeStr var_F8 = ""
  loc_BBE195: LitStr vbNullString
  loc_BBE198: FStStrCopy var_88
  loc_BBE19B: Branch loc_BBE1A4
  loc_BBE19E: ExitProcCbHresult
  loc_BBE1A4: Branch loc_BBE1BB
  loc_BBE1A7: LitStr "CONTROL DE GESTION:"
  loc_BBE1AA: LitStr vbCrLf
  loc_BBE1AD: ConcatStr
  loc_BBE1AE: FStStrNoPop var_F8
  loc_BBE1B1: LitStr "La Finalidad-Función-Programa de Gestión NO EXISTE. Verifique..."
  loc_BBE1B4: ConcatStr
  loc_BBE1B5: FStStr var_88
  loc_BBE1B8: FFree1Str var_F8
  loc_BBE1BB: FLdRfVar var_F8
  loc_BBE1BE: ILdPr
  loc_BBE1C1: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_BBE1C6: ILdRf var_F8
  loc_BBE1C9: LitStr vbNullString
  loc_BBE1CC: NeStr
  loc_BBE1CE: FFree1Str var_F8
  loc_BBE1D1: BranchF loc_BBE629
  loc_BBE1D4: LitStr "SELECT *"
  loc_BBE1D7: LitStr " FROM ugperiodo"
  loc_BBE1DA: ConcatStr
  loc_BBE1DB: FStStrNoPop var_F8
  loc_BBE1DE: LitStr " WHERE PeriInfo = "
  loc_BBE1E1: ConcatStr
  loc_BBE1E2: FStStrNoPop var_13C
  loc_BBE1E5: ILdI2 PeriInfo
  loc_BBE1E8: CStrUI1
  loc_BBE1EA: FStStrNoPop var_1F0
  loc_BBE1ED: ConcatStr
  loc_BBE1EE: FStStrNoPop var_200
  loc_BBE1F1: LitStr " AND CodiUnga = '"
  loc_BBE1F4: ConcatStr
  loc_BBE1F5: FStStrNoPop var_20C
  loc_BBE1F8: FLdRfVar var_204
  loc_BBE1FB: ILdPr
  loc_BBE1FE: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_BBE203: ILdRf var_204
  loc_BBE206: ConcatStr
  loc_BBE207: FStStrNoPop var_210
  loc_BBE20A: LitStr "';"
  loc_BBE20D: ConcatStr
  loc_BBE20E: FStStrNoPop var_214
  loc_BBE211: Call EjecutarRsCls(from_stack_1v)
  loc_BBE216: FFreeStr var_F8 = "": var_13C = "": var_1F0 = "": var_200 = "": var_20C = "": var_204 = "": var_210 = ""
  loc_BBE229: FLdRfVar var_234
  loc_BBE22C: FLdPr Me
  loc_BBE22F: MemLdPr global_56
  loc_BBE232:  = Me.RecordCount
  loc_BBE237: ILdRf var_234
  loc_BBE23A: LitI4 0
  loc_BBE23F: GtI4
  loc_BBE240: BranchF loc_BBE629
  loc_BBE243: FLdRfVar var_B4
  loc_BBE246: FLdRfVar var_1F8
  loc_BBE249: LitVarStr var_A4, "ImpoUgpe"
  loc_BBE24E: PopAdLdVar
  loc_BBE24F: FLdRfVar var_1F4
  loc_BBE252: FLdPr Me
  loc_BBE255: MemLdPr global_56
  loc_BBE258:  = Me.Fields
  loc_BBE25D: FLdPr var_1F4
  loc_BBE260: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE265: FLdPr var_1F8
  loc_BBE268:  = Me.Value
  loc_BBE26D: FLdRfVar var_B4
  loc_BBE270: LitVarI2 var_C4, 0
  loc_BBE275: HardType
  loc_BBE276: NeVar var_D4
  loc_BBE27A: FLdRfVar var_F4
  loc_BBE27D: FLdRfVar var_278
  loc_BBE280: LitVarStr var_E4, "AumeUgpe"
  loc_BBE285: PopAdLdVar
  loc_BBE286: FLdRfVar var_208
  loc_BBE289: FLdPr Me
  loc_BBE28C: MemLdPr global_56
  loc_BBE28F:  = Me.Fields
  loc_BBE294: FLdPr var_208
  loc_BBE297: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE29C: FLdPr var_278
  loc_BBE29F:  = Me.Value
  loc_BBE2A4: FLdRfVar var_F4
  loc_BBE2A7: LitVarI2 var_128, 0
  loc_BBE2AC: HardType
  loc_BBE2AD: NeVar var_108
  loc_BBE2B1: OrVar var_118
  loc_BBE2B5: FLdRfVar var_138
  loc_BBE2B8: FLdRfVar var_280
  loc_BBE2BB: LitVarStr var_16C, "DismUgpe"
  loc_BBE2C0: PopAdLdVar
  loc_BBE2C1: FLdRfVar var_27C
  loc_BBE2C4: FLdPr Me
  loc_BBE2C7: MemLdPr global_56
  loc_BBE2CA:  = Me.Fields
  loc_BBE2CF: FLdPr var_27C
  loc_BBE2D2: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE2D7: FLdPr var_280
  loc_BBE2DA:  = Me.Value
  loc_BBE2DF: FLdRfVar var_138
  loc_BBE2E2: LitVarI2 var_18C, 0
  loc_BBE2E7: HardType
  loc_BBE2E8: NeVar var_14C
  loc_BBE2EC: OrVar var_15C
  loc_BBE2F0: CBoolVarNull
  loc_BBE2F2: FFreeAd var_1F4 = "": var_1F8 = "": var_208 = "": var_278 = "": var_27C = ""
  loc_BBE301: FFreeVar var_B4 = "": var_F4 = ""
  loc_BBE30A: BranchF loc_BBE629
  loc_BBE30D: LitStr "SELECT IFNULL(SUM(PrevImpu),0) AS PrevImpu FROM imputacion /*USE INDEX (idximpu01)*/ WHERE PeriInfo = "
  loc_BBE310: ILdI2 PeriInfo
  loc_BBE313: CStrUI1
  loc_BBE315: FStStrNoPop var_F8
  loc_BBE318: ConcatStr
  loc_BBE319: FStStrNoPop var_13C
  loc_BBE31C: LitStr " AND CodiUnga = '"
  loc_BBE31F: ConcatStr
  loc_BBE320: FStStrNoPop var_200
  loc_BBE323: FLdRfVar var_1F0
  loc_BBE326: ILdPr
  loc_BBE329: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_BBE32E: ILdRf var_1F0
  loc_BBE331: ConcatStr
  loc_BBE332: FStStrNoPop var_204
  loc_BBE335: LitStr "';"
  loc_BBE338: ConcatStr
  loc_BBE339: FStStrNoPop var_20C
  loc_BBE33C: Call Proc_13_81_964BE0()
  loc_BBE341: FFreeStr var_F8 = "": var_13C = "": var_200 = "": var_1F0 = "": var_204 = ""
  loc_BBE350: FLdRfVar var_D4
  loc_BBE353: FLdRfVar var_1F8
  loc_BBE356: LitVarStr var_A4, "ImpoUgpe"
  loc_BBE35B: PopAdLdVar
  loc_BBE35C: FLdRfVar var_1F4
  loc_BBE35F: FLdPr Me
  loc_BBE362: MemLdPr global_56
  loc_BBE365:  = Me.Fields
  loc_BBE36A: FLdPr var_1F4
  loc_BBE36D: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE372: FLdPr var_1F8
  loc_BBE375:  = Me.Value
  loc_BBE37A: FLdRfVar var_D4
  loc_BBE37D: FLdRfVar var_B4
  loc_BBE380: FLdRfVar var_278
  loc_BBE383: LitVarStr var_C4, "AumeUgpe"
  loc_BBE388: PopAdLdVar
  loc_BBE389: FLdRfVar var_208
  loc_BBE38C: FLdPr Me
  loc_BBE38F: MemLdPr global_56
  loc_BBE392:  = Me.Fields
  loc_BBE397: FLdPr var_208
  loc_BBE39A: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE39F: FLdPr var_278
  loc_BBE3A2:  = Me.Value
  loc_BBE3A7: FLdRfVar var_B4
  loc_BBE3AA: AddVar var_F4
  loc_BBE3AE: FLdRfVar var_108
  loc_BBE3B1: FLdRfVar var_280
  loc_BBE3B4: LitVarStr var_E4, "DismUgpe"
  loc_BBE3B9: PopAdLdVar
  loc_BBE3BA: FLdRfVar var_27C
  loc_BBE3BD: FLdPr Me
  loc_BBE3C0: MemLdPr global_56
  loc_BBE3C3:  = Me.Fields
  loc_BBE3C8: FLdPr var_27C
  loc_BBE3CB: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE3D0: FLdPr var_280
  loc_BBE3D3:  = Me.Value
  loc_BBE3D8: FLdRfVar var_108
  loc_BBE3DB: SubVar var_118
  loc_BBE3DF: FLdRfVar var_138
  loc_BBE3E2: FLdRfVar var_288
  loc_BBE3E5: LitVarStr var_128, "PrevImpu"
  loc_BBE3EA: PopAdLdVar
  loc_BBE3EB: FLdRfVar var_284
  loc_BBE3EE: FLdPr Me
  loc_BBE3F1: MemLdPr global_60
  loc_BBE3F4:  = Me.Fields
  loc_BBE3F9: FLdPr var_284
  loc_BBE3FC: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE401: FLdPr var_288
  loc_BBE404:  = Me.Value
  loc_BBE409: FLdRfVar var_138
  loc_BBE40C: ILdRf var_8C
  loc_BBE40F: CVarStr var_16C
  loc_BBE412: AddVar var_14C
  loc_BBE416: LtVarBool
  loc_BBE418: FFreeAd var_1F4 = "": var_208 = "": var_278 = "": var_1F8 = "": var_27C = "": var_280 = "": var_284 = ""
  loc_BBE42B: FFreeVar var_D4 = "": var_B4 = "": var_F4 = "": var_108 = "": var_138 = ""
  loc_BBE43A: BranchF loc_BBE629
  loc_BBE43D: FLdRfVar var_B4
  loc_BBE440: FLdRfVar var_1F8
  loc_BBE443: LitVarStr var_A4, "PrevImpu"
  loc_BBE448: PopAdLdVar
  loc_BBE449: FLdRfVar var_1F4
  loc_BBE44C: FLdPr Me
  loc_BBE44F: MemLdPr global_60
  loc_BBE452:  = Me.Fields
  loc_BBE457: FLdPr var_1F4
  loc_BBE45A: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE45F: FLdPr var_1F8
  loc_BBE462:  = Me.Value
  loc_BBE467: FLdRfVar var_118
  loc_BBE46A: FLdRfVar var_278
  loc_BBE46D: LitVarStr var_128, "ImpoUgpe"
  loc_BBE472: PopAdLdVar
  loc_BBE473: FLdRfVar var_208
  loc_BBE476: FLdPr Me
  loc_BBE479: MemLdPr global_56
  loc_BBE47C:  = Me.Fields
  loc_BBE481: FLdPr var_208
  loc_BBE484: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE489: FLdPr var_278
  loc_BBE48C:  = Me.Value
  loc_BBE491: FLdRfVar var_108
  loc_BBE494: FLdRfVar var_280
  loc_BBE497: LitVarStr var_16C, "AumeUgpe"
  loc_BBE49C: PopAdLdVar
  loc_BBE49D: FLdRfVar var_27C
  loc_BBE4A0: FLdPr Me
  loc_BBE4A3: MemLdPr global_56
  loc_BBE4A6:  = Me.Fields
  loc_BBE4AB: FLdPr var_27C
  loc_BBE4AE: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE4B3: FLdPr var_280
  loc_BBE4B6:  = Me.Value
  loc_BBE4BB: FLdRfVar var_14C
  loc_BBE4BE: FLdRfVar var_288
  loc_BBE4C1: LitVarStr var_18C, "DismUgpe"
  loc_BBE4C6: PopAdLdVar
  loc_BBE4C7: FLdRfVar var_284
  loc_BBE4CA: FLdPr Me
  loc_BBE4CD: MemLdPr global_56
  loc_BBE4D0:  = Me.Fields
  loc_BBE4D5: FLdPr var_284
  loc_BBE4D8: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE4DD: FLdPr var_288
  loc_BBE4E0:  = Me.Value
  loc_BBE4E5: LitStr "CONTROL DE U.G.:"
  loc_BBE4E8: LitStr vbCrLf
  loc_BBE4EB: ConcatStr
  loc_BBE4EC: FStStrNoPop var_F8
  loc_BBE4EF: LitStr " El Total Acumulado para la U.G. es Mayor a su Importe Autorizado. Verifique..."
  loc_BBE4F2: ConcatStr
  loc_BBE4F3: FStStrNoPop var_13C
  loc_BBE4F6: LitStr vbCrLf
  loc_BBE4F9: ConcatStr
  loc_BBE4FA: FStStrNoPop var_1F0
  loc_BBE4FD: LitStr " Total Acumulado: "
  loc_BBE500: ConcatStr
  loc_BBE501: FStStrNoPop var_200
  loc_BBE504: LitI4 1
  loc_BBE509: LitI4 1
  loc_BBE50E: LitVarStr var_E4, "currency"
  loc_BBE513: FStVarCopyObj var_F4
  loc_BBE516: FLdRfVar var_F4
  loc_BBE519: FLdRfVar var_B4
  loc_BBE51C: ILdRf var_8C
  loc_BBE51F: CVarStr var_C4
  loc_BBE522: AddVar var_D4
  loc_BBE526: ImpAdCallI2 Format$(, )
  loc_BBE52B: FStStrNoPop var_204
  loc_BBE52E: ConcatStr
  loc_BBE52F: FStStrNoPop var_20C
  loc_BBE532: LitStr vbCrLf
  loc_BBE535: ConcatStr
  loc_BBE536: FStStrNoPop var_210
  loc_BBE539: LitStr " Importe Autorizado: "
  loc_BBE53C: ConcatStr
  loc_BBE53D: FStStrNoPop var_214
  loc_BBE540: LitI4 1
  loc_BBE545: LitI4 1
  loc_BBE54A: LitVarStr var_19C, "currency"
  loc_BBE54F: FStVarCopyObj var_1AC
  loc_BBE552: FLdRfVar var_1AC
  loc_BBE555: FLdRfVar var_118
  loc_BBE558: FLdRfVar var_108
  loc_BBE55B: AddVar var_138
  loc_BBE55F: FLdRfVar var_14C
  loc_BBE562: SubVar var_15C
  loc_BBE566: FStVar var_17C
  loc_BBE56A: FLdRfVar var_17C
  loc_BBE56D: ImpAdCallI2 Format$(, )
  loc_BBE572: FStStrNoPop var_218
  loc_BBE575: ConcatStr
  loc_BBE576: FStStr var_88
  loc_BBE579: FFreeStr var_F8 = "": var_13C = "": var_1F0 = "": var_200 = "": var_204 = "": var_20C = "": var_210 = "": var_214 = ""
  loc_BBE58E: FFreeAd var_1F4 = "": var_1F8 = "": var_208 = "": var_27C = "": var_280 = "": var_278 = "": var_284 = ""
  loc_BBE5A1: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_118 = "": var_108 = "": var_138 = "": var_14C = "": var_17C = ""
  loc_BBE5B6: FLdRfVar var_B4
  loc_BBE5B9: FLdRfVar var_1F8
  loc_BBE5BC: LitVarStr var_A4, "CoimUgpe"
  loc_BBE5C1: PopAdLdVar
  loc_BBE5C2: FLdRfVar var_1F4
  loc_BBE5C5: FLdPr Me
  loc_BBE5C8: MemLdPr global_56
  loc_BBE5CB:  = Me.Fields
  loc_BBE5D0: FLdPr var_1F4
  loc_BBE5D3: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE5D8: FLdPr var_1F8
  loc_BBE5DB:  = Me.Value
  loc_BBE5E0: FLdRfVar var_B4
  loc_BBE5E3: LitVarI2 var_C4, 0
  loc_BBE5E8: HardType
  loc_BBE5E9: EqVarBool
  loc_BBE5EB: FFreeAd var_1F4 = ""
  loc_BBE5F2: FFree1Var var_B4 = ""
  loc_BBE5F5: BranchF loc_BBE623
  loc_BBE5F8: LitI4 0
  loc_BBE5FD: LitStr "La Imputación se realizará SIN CONTROL DE GESTIÓN de U.G."
  loc_BBE600: LitStr vbCrLf
  loc_BBE603: ConcatStr
  loc_BBE604: FStStrNoPop var_F8
  loc_BBE607: ILdRf var_88
  loc_BBE60A: ConcatStr
  loc_BBE60B: FStStrNoPop var_13C
  loc_BBE60E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BBE613: FFreeStr var_F8 = ""
  loc_BBE61A: LitStr vbNullString
  loc_BBE61D: FStStrCopy var_88
  loc_BBE620: Branch loc_BBE629
  loc_BBE623: ExitProcCbHresult
  loc_BBE629: ExitProcCbHresult
End Function

Public Function UltimaFechImpu(PeriInfo, cboSeleccion, ExorImpu, iCodiNope, Item, Altern, iCodiOrco, iCodiRece, CodiPart, CodiOrga) 'B17944
  'Data Table: 4AFD00
  loc_B170F0: ILdRf ExorImpu
  loc_B170F3: FStStrCopy var_8C
  loc_B170F6: ILdRf CodiPart
  loc_B170F9: FStStrCopy var_90
  loc_B170FC: ILdRf CodiOrga
  loc_B170FF: FStStrCopy UltimaFechImpu
  loc_B17102: ZeroRetVal
  loc_B17104: ImpAdLdI2 MemVar_C3D048
  loc_B17107: BranchF loc_B1792A
  loc_B1710A: ImpAdLdFPR8 MemVar_C3D054
  loc_B1710D: CStrDate
  loc_B1710F: FStStr var_88
  loc_B17112: LitStr "SELECT /*IFNULL(FeproPaco, CONVERT('"
  loc_B17115: FLdI2 PeriInfo
  loc_B17118: CStrUI1
  loc_B1711A: FStStrNoPop var_98
  loc_B1711D: ConcatStr
  loc_B1711E: FStStrNoPop var_9C
  loc_B17121: LitStr "-01-01', DATE))*/ IFNULL(FeproPaco, CONVERT('"
  loc_B17124: ConcatStr
  loc_B17125: FStStrNoPop var_A0
  loc_B17128: FLdI2 PeriInfo
  loc_B1712B: LitI2_Byte 1
  loc_B1712D: SubI2
  loc_B1712E: CStrUI1
  loc_B17130: FStStrNoPop var_A4
  loc_B17133: ConcatStr
  loc_B17134: FStStrNoPop var_A8
  loc_B17137: LitStr "-12-31', DATE)) FeproPaco"
  loc_B1713A: ConcatStr
  loc_B1713B: FStStrNoPop var_AC
  loc_B1713E: LitStr " FROM paraconta"
  loc_B17141: ConcatStr
  loc_B17142: FStStrNoPop var_B0
  loc_B17145: LitStr " WHERE PeriInfo = "
  loc_B17148: ConcatStr
  loc_B17149: FStStrNoPop var_B4
  loc_B1714C: FLdI2 PeriInfo
  loc_B1714F: CStrUI1
  loc_B17151: FStStrNoPop var_B8
  loc_B17154: ConcatStr
  loc_B17155: FStStrNoPop var_BC
  loc_B17158: LitStr ";"
  loc_B1715B: ConcatStr
  loc_B1715C: FStStrNoPop var_C0
  loc_B1715F: Call EjecutarRsCls(from_stack_1v)
  loc_B17164: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B1717D: FLdRfVar var_C4
  loc_B17180: FLdPr Me
  loc_B17183: MemLdPr global_56
  loc_B17186:  = Me.RecordCount
  loc_B1718B: ILdRf var_C4
  loc_B1718E: LitI4 0
  loc_B17193: GtI4
  loc_B17194: BranchF loc_B1723C
  loc_B17197: FLdRfVar var_EC
  loc_B1719A: FLdRfVar var_DC
  loc_B1719D: LitVarStr var_D8, "FeproPaco"
  loc_B171A2: PopAdLdVar
  loc_B171A3: FLdRfVar var_C8
  loc_B171A6: FLdPr Me
  loc_B171A9: MemLdPr global_56
  loc_B171AC:  = Me.Fields
  loc_B171B1: FLdPr var_C8
  loc_B171B4: from_stack_2 = Me.Item(from_stack_1)
  loc_B171B9: FLdPr var_DC
  loc_B171BC:  = Me.Value
  loc_B171C1: FLdRfVar var_114
  loc_B171C4: FLdRfVar var_104
  loc_B171C7: LitVarStr var_100, "FeproPaco"
  loc_B171CC: PopAdLdVar
  loc_B171CD: FLdRfVar var_F0
  loc_B171D0: FLdPr Me
  loc_B171D3: MemLdPr global_56
  loc_B171D6:  = Me.Fields
  loc_B171DB: FLdPr var_F0
  loc_B171DE: from_stack_2 = Me.Item(from_stack_1)
  loc_B171E3: FLdPr var_104
  loc_B171E6:  = Me.Value
  loc_B171EB: FLdRfVar var_114
  loc_B171EE: FnCDateVar
  loc_B171F0: LitI2_Byte 1
  loc_B171F2: CR8I2
  loc_B171F3: AddR8
  loc_B171F4: CDateR8
  loc_B171F5: CVarDate var_154
  loc_B171F9: FLdRfVar var_88
  loc_B171FC: CVarRef
  loc_B17201: ILdRf var_88
  loc_B17204: CDateStr
  loc_B17206: FLdRfVar var_EC
  loc_B17209: FnCDateVar
  loc_B1720B: LitI2_Byte 1
  loc_B1720D: CR8I2
  loc_B1720E: AddR8
  loc_B1720F: CDateR8
  loc_B17210: GtR4
  loc_B17211: CVarBoolI2 var_124
  loc_B17215: FLdRfVar var_164
  loc_B17218: ImpAdCallFPR4  = IIf(, , )
  loc_B1721D: FLdRfVar var_164
  loc_B17220: CStrVarTmp
  loc_B17221: FStStr var_88
  loc_B17224: FFreeAd var_C8 = "": var_DC = "": var_F0 = ""
  loc_B1722F: FFreeVar var_EC = "": var_114 = "": var_124 = "": var_154 = ""
  loc_B1723C: FLdI2 cboSeleccion
  loc_B1723F: FStI2 var_166
  loc_B17242: FLdI2 var_166
  loc_B17245: LitI2_Byte 1
  loc_B17247: EqI2
  loc_B17248: BranchT loc_B17281
  loc_B1724B: FLdI2 var_166
  loc_B1724E: LitI2_Byte 3
  loc_B17250: EqI2
  loc_B17251: BranchT loc_B17281
  loc_B17254: FLdI2 var_166
  loc_B17257: LitI2_Byte 4
  loc_B17259: EqI2
  loc_B1725A: BranchT loc_B17281
  loc_B1725D: FLdI2 var_166
  loc_B17260: LitI2_Byte 2
  loc_B17262: EqI2
  loc_B17263: BranchT loc_B17281
  loc_B17266: FLdI2 var_166
  loc_B17269: LitI2_Byte &H13
  loc_B1726B: EqI2
  loc_B1726C: BranchT loc_B17281
  loc_B1726F: FLdI2 var_166
  loc_B17272: LitI2_Byte 8
  loc_B17274: EqI2
  loc_B17275: BranchT loc_B17281
  loc_B17278: FLdI2 var_166
  loc_B1727B: LitI2_Byte &H32
  loc_B1727D: EqI2
  loc_B1727E: BranchF loc_B173F3
  loc_B17281: LitStr "SELECT IFNULL(Max(FechAuto),'') FechAuto"
  loc_B17284: LitStr " FROM autorizado"
  loc_B17287: ConcatStr
  loc_B17288: FStStrNoPop var_98
  loc_B1728B: LitStr " WHERE PeriInfo = "
  loc_B1728E: ConcatStr
  loc_B1728F: FStStrNoPop var_9C
  loc_B17292: FLdI2 PeriInfo
  loc_B17295: CStrUI1
  loc_B17297: FStStrNoPop var_A0
  loc_B1729A: ConcatStr
  loc_B1729B: FStStrNoPop var_A4
  loc_B1729E: LitStr " AND CodiPart = (SELECT CredPart FROM partida WHERE PeriInfo = "
  loc_B172A1: ConcatStr
  loc_B172A2: FStStrNoPop var_A8
  loc_B172A5: FLdI2 PeriInfo
  loc_B172A8: CStrUI1
  loc_B172AA: FStStrNoPop var_AC
  loc_B172AD: ConcatStr
  loc_B172AE: FStStrNoPop var_B0
  loc_B172B1: LitStr " AND CodiPart = '"
  loc_B172B4: ConcatStr
  loc_B172B5: FStStrNoPop var_B4
  loc_B172B8: ILdRf var_90
  loc_B172BB: ConcatStr
  loc_B172BC: FStStrNoPop var_B8
  loc_B172BF: LitStr "')"
  loc_B172C2: ConcatStr
  loc_B172C3: FStStrNoPop var_BC
  loc_B172C6: LitStr " AND CodiOrga = (SELECT CredOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_B172C9: ConcatStr
  loc_B172CA: FStStrNoPop var_C0
  loc_B172CD: FLdI2 PeriInfo
  loc_B172D0: CStrUI1
  loc_B172D2: FStStrNoPop var_16C
  loc_B172D5: ConcatStr
  loc_B172D6: FStStrNoPop var_170
  loc_B172D9: LitStr " AND CodiOrga = '"
  loc_B172DC: ConcatStr
  loc_B172DD: FStStrNoPop var_174
  loc_B172E0: ILdRf UltimaFechImpu
  loc_B172E3: ConcatStr
  loc_B172E4: FStStrNoPop var_178
  loc_B172E7: LitStr "');"
  loc_B172EA: ConcatStr
  loc_B172EB: FStStrNoPop var_17C
  loc_B172EE: Call EjecutarRsCls(from_stack_1v)
  loc_B172F3: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = ""
  loc_B17316: FLdRfVar var_EC
  loc_B17319: FLdRfVar var_DC
  loc_B1731C: LitVarStr var_D8, "FechAuto"
  loc_B17321: PopAdLdVar
  loc_B17322: FLdRfVar var_C8
  loc_B17325: FLdPr Me
  loc_B17328: MemLdPr global_56
  loc_B1732B:  = Me.Fields
  loc_B17330: FLdPr var_C8
  loc_B17333: from_stack_2 = Me.Item(from_stack_1)
  loc_B17338: FLdPr var_DC
  loc_B1733B:  = Me.Value
  loc_B17340: FLdRfVar var_EC
  loc_B17343: LitVarStr var_100, vbNullString
  loc_B17348: HardType
  loc_B17349: NeVarBool
  loc_B1734B: FFreeAd var_C8 = ""
  loc_B17352: FFree1Var var_EC = ""
  loc_B17355: BranchF loc_B173F3
  loc_B17358: FLdRfVar var_EC
  loc_B1735B: FLdRfVar var_DC
  loc_B1735E: LitVarStr var_D8, "FechAuto"
  loc_B17363: PopAdLdVar
  loc_B17364: FLdRfVar var_C8
  loc_B17367: FLdPr Me
  loc_B1736A: MemLdPr global_56
  loc_B1736D:  = Me.Fields
  loc_B17372: FLdPr var_C8
  loc_B17375: from_stack_2 = Me.Item(from_stack_1)
  loc_B1737A: FLdPr var_DC
  loc_B1737D:  = Me.Value
  loc_B17382: FLdRfVar var_114
  loc_B17385: FLdRfVar var_104
  loc_B17388: LitVarStr var_100, "FechAuto"
  loc_B1738D: PopAdLdVar
  loc_B1738E: FLdRfVar var_F0
  loc_B17391: FLdPr Me
  loc_B17394: MemLdPr global_56
  loc_B17397:  = Me.Fields
  loc_B1739C: FLdPr var_F0
  loc_B1739F: from_stack_2 = Me.Item(from_stack_1)
  loc_B173A4: FLdPr var_104
  loc_B173A7:  = Me.Value
  loc_B173AC: FLdRfVar var_114
  loc_B173AF: FnCDateVar
  loc_B173B1: CVarDate var_154
  loc_B173B5: FLdRfVar var_88
  loc_B173B8: CVarRef
  loc_B173BD: ILdRf var_88
  loc_B173C0: CDateStr
  loc_B173C2: FLdRfVar var_EC
  loc_B173C5: FnCDateVar
  loc_B173C7: GtR4
  loc_B173C8: CVarBoolI2 var_124
  loc_B173CC: FLdRfVar var_164
  loc_B173CF: ImpAdCallFPR4  = IIf(, , )
  loc_B173D4: FLdRfVar var_164
  loc_B173D7: CStrVarTmp
  loc_B173D8: FStStr var_88
  loc_B173DB: FFreeAd var_C8 = "": var_DC = "": var_F0 = ""
  loc_B173E6: FFreeVar var_EC = "": var_114 = "": var_124 = "": var_154 = ""
  loc_B173F3: FLdI2 cboSeleccion
  loc_B173F6: FStI2 var_17E
  loc_B173F9: FLdI2 var_17E
  loc_B173FC: LitI2_Byte 1
  loc_B173FE: EqI2
  loc_B173FF: BranchT loc_B1740B
  loc_B17402: FLdI2 var_17E
  loc_B17405: LitI2_Byte 3
  loc_B17407: EqI2
  loc_B17408: BranchF loc_B1742A
  loc_B1740B: FLdRfVar var_188
  loc_B1740E: LitStr vbNullString
  loc_B17411: ILdRf iCodiNope
  loc_B17414: FLdI2 PeriInfo
  loc_B17417: FLdRfVar var_88
  loc_B1741A: Call Proc_13_83_A43AA0()
  loc_B1741F: FLdFPR8 var_188
  loc_B17422: CStrDate
  loc_B17424: FStStr var_88
  loc_B17427: Branch loc_B17927
  loc_B1742A: FLdI2 var_17E
  loc_B1742D: LitI2_Byte 4
  loc_B1742F: EqI2
  loc_B17430: BranchF loc_B17454
  loc_B17433: FLdRfVar var_188
  loc_B17436: ILdRf var_8C
  loc_B17439: LitI4 0
  loc_B1743E: FLdI2 PeriInfo
  loc_B17441: FLdRfVar var_88
  loc_B17444: Call Proc_13_83_A43AA0()
  loc_B17449: FLdFPR8 var_188
  loc_B1744C: CStrDate
  loc_B1744E: FStStr var_88
  loc_B17451: Branch loc_B17927
  loc_B17454: FLdI2 var_17E
  loc_B17457: LitI2_Byte 5
  loc_B17459: EqI2
  loc_B1745A: BranchT loc_B1746F
  loc_B1745D: FLdI2 var_17E
  loc_B17460: LitI2_Byte 2
  loc_B17462: EqI2
  loc_B17463: BranchT loc_B1746F
  loc_B17466: FLdI2 var_17E
  loc_B17469: LitI2_Byte &H13
  loc_B1746B: EqI2
  loc_B1746C: BranchF loc_B174B5
  loc_B1746F: FLdRfVar var_188
  loc_B17472: FLdI2 iCodiOrco
  loc_B17475: CI4UI1
  loc_B17476: FLdI2 PeriInfo
  loc_B17479: FLdRfVar var_88
  loc_B1747C: Call Proc_13_84_A1F078()
  loc_B17481: FLdFPR8 var_188
  loc_B17484: CStrDate
  loc_B17486: FStStr var_88
  loc_B17489: FLdRfVar var_188
  loc_B1748C: LitI2_Byte 0
  loc_B1748E: CUI1I2
  loc_B17490: LitI2_Byte 0
  loc_B17492: CUI1I2
  loc_B17494: LitI2_Byte 0
  loc_B17496: CUI1I2
  loc_B17498: LitI2_Byte 1
  loc_B1749A: CUI1I2
  loc_B1749C: ILdRf var_8C
  loc_B1749F: FLdI2 PeriInfo
  loc_B174A2: FLdRfVar var_88
  loc_B174A5: Call Proc_13_86_AA52DC()
  loc_B174AA: FLdFPR8 var_188
  loc_B174AD: CStrDate
  loc_B174AF: FStStr var_88
  loc_B174B2: Branch loc_B17927
  loc_B174B5: FLdI2 var_17E
  loc_B174B8: LitI2_Byte 6
  loc_B174BA: EqI2
  loc_B174BB: BranchF loc_B17504
  loc_B174BE: FLdRfVar var_188
  loc_B174C1: FLdI2 iCodiOrco
  loc_B174C4: CI4UI1
  loc_B174C5: FLdI2 PeriInfo
  loc_B174C8: FLdRfVar var_88
  loc_B174CB: Call Proc_13_84_A1F078()
  loc_B174D0: FLdFPR8 var_188
  loc_B174D3: CStrDate
  loc_B174D5: FStStr var_88
  loc_B174D8: FLdRfVar var_188
  loc_B174DB: LitI2_Byte 0
  loc_B174DD: CUI1I2
  loc_B174DF: LitI2_Byte 0
  loc_B174E1: CUI1I2
  loc_B174E3: LitI2_Byte 0
  loc_B174E5: CUI1I2
  loc_B174E7: LitI2_Byte 1
  loc_B174E9: CUI1I2
  loc_B174EB: ILdRf var_8C
  loc_B174EE: FLdI2 PeriInfo
  loc_B174F1: FLdRfVar var_88
  loc_B174F4: Call Proc_13_86_AA52DC()
  loc_B174F9: FLdFPR8 var_188
  loc_B174FC: CStrDate
  loc_B174FE: FStStr var_88
  loc_B17501: Branch loc_B17927
  loc_B17504: FLdI2 var_17E
  loc_B17507: LitI2_Byte 7
  loc_B17509: EqI2
  loc_B1750A: BranchF loc_B17556
  loc_B1750D: FLdRfVar var_188
  loc_B17510: FLdI2 iCodiRece
  loc_B17513: FLdI2 iCodiOrco
  loc_B17516: CI4UI1
  loc_B17517: FLdI2 PeriInfo
  loc_B1751A: FLdRfVar var_88
  loc_B1751D: Call Proc_13_85_A5925C()
  loc_B17522: FLdFPR8 var_188
  loc_B17525: CStrDate
  loc_B17527: FStStr var_88
  loc_B1752A: FLdRfVar var_188
  loc_B1752D: LitI2_Byte 0
  loc_B1752F: CUI1I2
  loc_B17531: LitI2_Byte 0
  loc_B17533: CUI1I2
  loc_B17535: LitI2_Byte 1
  loc_B17537: CUI1I2
  loc_B17539: LitI2_Byte 0
  loc_B1753B: CUI1I2
  loc_B1753D: ILdRf var_8C
  loc_B17540: FLdI2 PeriInfo
  loc_B17543: FLdRfVar var_88
  loc_B17546: Call Proc_13_86_AA52DC()
  loc_B1754B: FLdFPR8 var_188
  loc_B1754E: CStrDate
  loc_B17550: FStStr var_88
  loc_B17553: Branch loc_B17927
  loc_B17556: FLdI2 var_17E
  loc_B17559: LitI2_Byte 8
  loc_B1755B: EqI2
  loc_B1755C: BranchF loc_B17580
  loc_B1755F: FLdRfVar var_188
  loc_B17562: ILdRf var_8C
  loc_B17565: LitI4 0
  loc_B1756A: FLdI2 PeriInfo
  loc_B1756D: FLdRfVar var_88
  loc_B17570: Call Proc_13_83_A43AA0()
  loc_B17575: FLdFPR8 var_188
  loc_B17578: CStrDate
  loc_B1757A: FStStr var_88
  loc_B1757D: Branch loc_B17927
  loc_B17580: FLdI2 var_17E
  loc_B17583: LitI2_Byte 9
  loc_B17585: EqI2
  loc_B17586: BranchF loc_B175CF
  loc_B17589: FLdRfVar var_188
  loc_B1758C: FLdI2 iCodiOrco
  loc_B1758F: CI4UI1
  loc_B17590: FLdI2 PeriInfo
  loc_B17593: FLdRfVar var_88
  loc_B17596: Call Proc_13_84_A1F078()
  loc_B1759B: FLdFPR8 var_188
  loc_B1759E: CStrDate
  loc_B175A0: FStStr var_88
  loc_B175A3: FLdRfVar var_188
  loc_B175A6: LitI2_Byte 0
  loc_B175A8: CUI1I2
  loc_B175AA: LitI2_Byte 0
  loc_B175AC: CUI1I2
  loc_B175AE: LitI2_Byte 0
  loc_B175B0: CUI1I2
  loc_B175B2: LitI2_Byte 1
  loc_B175B4: CUI1I2
  loc_B175B6: ILdRf var_8C
  loc_B175B9: FLdI2 PeriInfo
  loc_B175BC: FLdRfVar var_88
  loc_B175BF: Call Proc_13_86_AA52DC()
  loc_B175C4: FLdFPR8 var_188
  loc_B175C7: CStrDate
  loc_B175C9: FStStr var_88
  loc_B175CC: Branch loc_B17927
  loc_B175CF: FLdI2 var_17E
  loc_B175D2: LitI2_Byte &HA
  loc_B175D4: EqI2
  loc_B175D5: BranchF loc_B17620
  loc_B175D8: FLdRfVar var_188
  loc_B175DB: LitI2_Byte 0
  loc_B175DD: FLdI2 iCodiOrco
  loc_B175E0: CI4UI1
  loc_B175E1: FLdI2 PeriInfo
  loc_B175E4: FLdRfVar var_88
  loc_B175E7: Call Proc_13_85_A5925C()
  loc_B175EC: FLdFPR8 var_188
  loc_B175EF: CStrDate
  loc_B175F1: FStStr var_88
  loc_B175F4: FLdRfVar var_188
  loc_B175F7: LitI2_Byte 0
  loc_B175F9: CUI1I2
  loc_B175FB: LitI2_Byte 0
  loc_B175FD: CUI1I2
  loc_B175FF: LitI2_Byte 1
  loc_B17601: CUI1I2
  loc_B17603: LitI2_Byte 0
  loc_B17605: CUI1I2
  loc_B17607: ILdRf var_8C
  loc_B1760A: FLdI2 PeriInfo
  loc_B1760D: FLdRfVar var_88
  loc_B17610: Call Proc_13_86_AA52DC()
  loc_B17615: FLdFPR8 var_188
  loc_B17618: CStrDate
  loc_B1761A: FStStr var_88
  loc_B1761D: Branch loc_B17927
  loc_B17620: FLdI2 var_17E
  loc_B17623: LitI2_Byte &H11
  loc_B17625: EqI2
  loc_B17626: BranchF loc_B1766F
  loc_B17629: FLdRfVar var_188
  loc_B1762C: FLdI2 iCodiOrco
  loc_B1762F: CI4UI1
  loc_B17630: FLdI2 PeriInfo
  loc_B17633: FLdRfVar var_88
  loc_B17636: Call Proc_13_84_A1F078()
  loc_B1763B: FLdFPR8 var_188
  loc_B1763E: CStrDate
  loc_B17640: FStStr var_88
  loc_B17643: FLdRfVar var_188
  loc_B17646: LitI2_Byte 0
  loc_B17648: CUI1I2
  loc_B1764A: LitI2_Byte 0
  loc_B1764C: CUI1I2
  loc_B1764E: LitI2_Byte 0
  loc_B17650: CUI1I2
  loc_B17652: LitI2_Byte 1
  loc_B17654: CUI1I2
  loc_B17656: ILdRf var_8C
  loc_B17659: FLdI2 PeriInfo
  loc_B1765C: FLdRfVar var_88
  loc_B1765F: Call Proc_13_86_AA52DC()
  loc_B17664: FLdFPR8 var_188
  loc_B17667: CStrDate
  loc_B17669: FStStr var_88
  loc_B1766C: Branch loc_B17927
  loc_B1766F: FLdI2 var_17E
  loc_B17672: LitI2_Byte &H12
  loc_B17674: EqI2
  loc_B17675: BranchF loc_B176C0
  loc_B17678: FLdRfVar var_188
  loc_B1767B: LitI2_Byte 0
  loc_B1767D: FLdI2 iCodiOrco
  loc_B17680: CI4UI1
  loc_B17681: FLdI2 PeriInfo
  loc_B17684: FLdRfVar var_88
  loc_B17687: Call Proc_13_85_A5925C()
  loc_B1768C: FLdFPR8 var_188
  loc_B1768F: CStrDate
  loc_B17691: FStStr var_88
  loc_B17694: FLdRfVar var_188
  loc_B17697: LitI2_Byte 0
  loc_B17699: CUI1I2
  loc_B1769B: LitI2_Byte 0
  loc_B1769D: CUI1I2
  loc_B1769F: LitI2_Byte 1
  loc_B176A1: CUI1I2
  loc_B176A3: LitI2_Byte 0
  loc_B176A5: CUI1I2
  loc_B176A7: ILdRf var_8C
  loc_B176AA: FLdI2 PeriInfo
  loc_B176AD: FLdRfVar var_88
  loc_B176B0: Call Proc_13_86_AA52DC()
  loc_B176B5: FLdFPR8 var_188
  loc_B176B8: CStrDate
  loc_B176BA: FStStr var_88
  loc_B176BD: Branch loc_B17927
  loc_B176C0: FLdI2 var_17E
  loc_B176C3: LitI2_Byte &H13
  loc_B176C5: EqI2
  loc_B176C6: BranchF loc_B17711
  loc_B176C9: FLdRfVar var_188
  loc_B176CC: LitI2_Byte 0
  loc_B176CE: FLdI2 iCodiOrco
  loc_B176D1: CI4UI1
  loc_B176D2: FLdI2 PeriInfo
  loc_B176D5: FLdRfVar var_88
  loc_B176D8: Call Proc_13_85_A5925C()
  loc_B176DD: FLdFPR8 var_188
  loc_B176E0: CStrDate
  loc_B176E2: FStStr var_88
  loc_B176E5: FLdRfVar var_188
  loc_B176E8: LitI2_Byte 0
  loc_B176EA: CUI1I2
  loc_B176EC: LitI2_Byte 0
  loc_B176EE: CUI1I2
  loc_B176F0: LitI2_Byte 1
  loc_B176F2: CUI1I2
  loc_B176F4: LitI2_Byte 0
  loc_B176F6: CUI1I2
  loc_B176F8: ILdRf var_8C
  loc_B176FB: FLdI2 PeriInfo
  loc_B176FE: FLdRfVar var_88
  loc_B17701: Call Proc_13_86_AA52DC()
  loc_B17706: FLdFPR8 var_188
  loc_B17709: CStrDate
  loc_B1770B: FStStr var_88
  loc_B1770E: Branch loc_B17927
  loc_B17711: FLdI2 var_17E
  loc_B17714: LitI2_Byte &HB
  loc_B17716: EqI2
  loc_B17717: BranchF loc_B17764
  loc_B1771A: FLdRfVar var_188
  loc_B1771D: ILdRf var_8C
  loc_B17720: LitI4 0
  loc_B17725: FLdI2 PeriInfo
  loc_B17728: FLdRfVar var_88
  loc_B1772B: Call Proc_13_83_A43AA0()
  loc_B17730: FLdFPR8 var_188
  loc_B17733: CStrDate
  loc_B17735: FStStr var_88
  loc_B17738: FLdRfVar var_188
  loc_B1773B: LitI2_Byte 0
  loc_B1773D: CUI1I2
  loc_B1773F: LitI2_Byte 1
  loc_B17741: CUI1I2
  loc_B17743: LitI2_Byte 1
  loc_B17745: CUI1I2
  loc_B17747: LitI2_Byte 1
  loc_B17749: CUI1I2
  loc_B1774B: ILdRf var_8C
  loc_B1774E: FLdI2 PeriInfo
  loc_B17751: FLdRfVar var_88
  loc_B17754: Call Proc_13_86_AA52DC()
  loc_B17759: FLdFPR8 var_188
  loc_B1775C: CStrDate
  loc_B1775E: FStStr var_88
  loc_B17761: Branch loc_B17927
  loc_B17764: FLdI2 var_17E
  loc_B17767: LitI2_Byte &HC
  loc_B17769: EqI2
  loc_B1776A: BranchF loc_B177B3
  loc_B1776D: FLdRfVar var_188
  loc_B17770: FLdI2 iCodiOrco
  loc_B17773: CI4UI1
  loc_B17774: FLdI2 PeriInfo
  loc_B17777: FLdRfVar var_88
  loc_B1777A: Call Proc_13_84_A1F078()
  loc_B1777F: FLdFPR8 var_188
  loc_B17782: CStrDate
  loc_B17784: FStStr var_88
  loc_B17787: FLdRfVar var_188
  loc_B1778A: LitI2_Byte 0
  loc_B1778C: CUI1I2
  loc_B1778E: LitI2_Byte 1
  loc_B17790: CUI1I2
  loc_B17792: LitI2_Byte 1
  loc_B17794: CUI1I2
  loc_B17796: LitI2_Byte 1
  loc_B17798: CUI1I2
  loc_B1779A: ILdRf var_8C
  loc_B1779D: FLdI2 PeriInfo
  loc_B177A0: FLdRfVar var_88
  loc_B177A3: Call Proc_13_86_AA52DC()
  loc_B177A8: FLdFPR8 var_188
  loc_B177AB: CStrDate
  loc_B177AD: FStStr var_88
  loc_B177B0: Branch loc_B17927
  loc_B177B3: FLdI2 var_17E
  loc_B177B6: LitI2_Byte &HD
  loc_B177B8: EqI2
  loc_B177B9: BranchF loc_B17804
  loc_B177BC: FLdRfVar var_188
  loc_B177BF: LitI2_Byte 0
  loc_B177C1: FLdI2 iCodiOrco
  loc_B177C4: CI4UI1
  loc_B177C5: FLdI2 PeriInfo
  loc_B177C8: FLdRfVar var_88
  loc_B177CB: Call Proc_13_85_A5925C()
  loc_B177D0: FLdFPR8 var_188
  loc_B177D3: CStrDate
  loc_B177D5: FStStr var_88
  loc_B177D8: FLdRfVar var_188
  loc_B177DB: LitI2_Byte 0
  loc_B177DD: CUI1I2
  loc_B177DF: LitI2_Byte 1
  loc_B177E1: CUI1I2
  loc_B177E3: LitI2_Byte 1
  loc_B177E5: CUI1I2
  loc_B177E7: LitI2_Byte 1
  loc_B177E9: CUI1I2
  loc_B177EB: ILdRf var_8C
  loc_B177EE: FLdI2 PeriInfo
  loc_B177F1: FLdRfVar var_88
  loc_B177F4: Call Proc_13_86_AA52DC()
  loc_B177F9: FLdFPR8 var_188
  loc_B177FC: CStrDate
  loc_B177FE: FStStr var_88
  loc_B17801: Branch loc_B17927
  loc_B17804: FLdI2 var_17E
  loc_B17807: LitI2_Byte &HE
  loc_B17809: EqI2
  loc_B1780A: BranchF loc_B17853
  loc_B1780D: FLdRfVar var_188
  loc_B17810: FLdI2 iCodiOrco
  loc_B17813: CI4UI1
  loc_B17814: FLdI2 PeriInfo
  loc_B17817: FLdRfVar var_88
  loc_B1781A: Call Proc_13_84_A1F078()
  loc_B1781F: FLdFPR8 var_188
  loc_B17822: CStrDate
  loc_B17824: FStStr var_88
  loc_B17827: FLdRfVar var_188
  loc_B1782A: LitI2_Byte 0
  loc_B1782C: CUI1I2
  loc_B1782E: LitI2_Byte 1
  loc_B17830: CUI1I2
  loc_B17832: LitI2_Byte 1
  loc_B17834: CUI1I2
  loc_B17836: LitI2_Byte 1
  loc_B17838: CUI1I2
  loc_B1783A: ILdRf var_8C
  loc_B1783D: FLdI2 PeriInfo
  loc_B17840: FLdRfVar var_88
  loc_B17843: Call Proc_13_86_AA52DC()
  loc_B17848: FLdFPR8 var_188
  loc_B1784B: CStrDate
  loc_B1784D: FStStr var_88
  loc_B17850: Branch loc_B17927
  loc_B17853: FLdI2 var_17E
  loc_B17856: LitI2_Byte &HF
  loc_B17858: EqI2
  loc_B17859: BranchF loc_B178A4
  loc_B1785C: FLdRfVar var_188
  loc_B1785F: LitI2_Byte 0
  loc_B17861: FLdI2 iCodiOrco
  loc_B17864: CI4UI1
  loc_B17865: FLdI2 PeriInfo
  loc_B17868: FLdRfVar var_88
  loc_B1786B: Call Proc_13_85_A5925C()
  loc_B17870: FLdFPR8 var_188
  loc_B17873: CStrDate
  loc_B17875: FStStr var_88
  loc_B17878: FLdRfVar var_188
  loc_B1787B: LitI2_Byte 0
  loc_B1787D: CUI1I2
  loc_B1787F: LitI2_Byte 1
  loc_B17881: CUI1I2
  loc_B17883: LitI2_Byte 1
  loc_B17885: CUI1I2
  loc_B17887: LitI2_Byte 1
  loc_B17889: CUI1I2
  loc_B1788B: ILdRf var_8C
  loc_B1788E: FLdI2 PeriInfo
  loc_B17891: FLdRfVar var_88
  loc_B17894: Call Proc_13_86_AA52DC()
  loc_B17899: FLdFPR8 var_188
  loc_B1789C: CStrDate
  loc_B1789E: FStStr var_88
  loc_B178A1: Branch loc_B17927
  loc_B178A4: FLdI2 var_17E
  loc_B178A7: LitI2_Byte &H10
  loc_B178A9: EqI2
  loc_B178AA: BranchF loc_B178F5
  loc_B178AD: FLdRfVar var_188
  loc_B178B0: LitI2_Byte 0
  loc_B178B2: FLdI2 iCodiOrco
  loc_B178B5: CI4UI1
  loc_B178B6: FLdI2 PeriInfo
  loc_B178B9: FLdRfVar var_88
  loc_B178BC: Call Proc_13_85_A5925C()
  loc_B178C1: FLdFPR8 var_188
  loc_B178C4: CStrDate
  loc_B178C6: FStStr var_88
  loc_B178C9: FLdRfVar var_188
  loc_B178CC: LitI2_Byte 0
  loc_B178CE: CUI1I2
  loc_B178D0: LitI2_Byte 1
  loc_B178D2: CUI1I2
  loc_B178D4: LitI2_Byte 1
  loc_B178D6: CUI1I2
  loc_B178D8: LitI2_Byte 1
  loc_B178DA: CUI1I2
  loc_B178DC: ILdRf var_8C
  loc_B178DF: FLdI2 PeriInfo
  loc_B178E2: FLdRfVar var_88
  loc_B178E5: Call Proc_13_86_AA52DC()
  loc_B178EA: FLdFPR8 var_188
  loc_B178ED: CStrDate
  loc_B178EF: FStStr var_88
  loc_B178F2: Branch loc_B17927
  loc_B178F5: FLdI2 var_17E
  loc_B178F8: LitI2_Byte &H32
  loc_B178FA: EqI2
  loc_B178FB: BranchF loc_B17927
  loc_B178FE: FLdRfVar var_188
  loc_B17901: LitI2_Byte 1
  loc_B17903: CUI1I2
  loc_B17905: LitI2_Byte 0
  loc_B17907: CUI1I2
  loc_B17909: LitI2_Byte 0
  loc_B1790B: CUI1I2
  loc_B1790D: LitI2_Byte 0
  loc_B1790F: CUI1I2
  loc_B17911: ILdRf var_8C
  loc_B17914: FLdI2 PeriInfo
  loc_B17917: FLdRfVar var_88
  loc_B1791A: Call Proc_13_86_AA52DC()
  loc_B1791F: FLdFPR8 var_188
  loc_B17922: CStrDate
  loc_B17924: FStStr var_88
  loc_B17927: Branch loc_B17937
  loc_B1792A: FLdRfVar PeriInfo
  loc_B1792D: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_B17932: CStrDate
  loc_B17934: FStStr var_88
  loc_B17937: ExitProcCbHresult
  loc_B1793D: ExitProcCbHresult
End Function

Public Function UltimaFechImpuDevengado(PeriInfo, ExpeImpu) '9DB328
  'Data Table: 4AFD00
  loc_9DB244: ILdRf ExpeImpu
  loc_9DB247: FStStrCopy var_8C
  loc_9DB24A: ZeroRetVal
  loc_9DB24C: LitStr "SELECT Max(FechImpu) AS FechImpu"
  loc_9DB24F: LitStr " FROM imputacion"
  loc_9DB252: ConcatStr
  loc_9DB253: FStStrNoPop var_90
  loc_9DB256: LitStr " WHERE PeriInfo = "
  loc_9DB259: ConcatStr
  loc_9DB25A: FStStrNoPop UltimaFechImpuDevengado
  loc_9DB25D: FLdI2 PeriInfo
  loc_9DB260: CStrUI1
  loc_9DB262: FStStrNoPop var_98
  loc_9DB265: ConcatStr
  loc_9DB266: FStStrNoPop var_9C
  loc_9DB269: LitStr " AND ExpeImpu = '"
  loc_9DB26C: ConcatStr
  loc_9DB26D: FStStrNoPop var_A0
  loc_9DB270: ILdRf var_8C
  loc_9DB273: ConcatStr
  loc_9DB274: FStStrNoPop var_A4
  loc_9DB277: LitStr "' AND DeveImpu != 0;"
  loc_9DB27A: ConcatStr
  loc_9DB27B: FStStrNoPop var_A8
  loc_9DB27E: Call EjecutarRsCls(from_stack_1v)
  loc_9DB283: FFreeStr var_90 = "": UltimaFechImpuDevengado = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9DB294: FLdRfVar var_C0
  loc_9DB297: LitVarStr var_BC, "FechImpu"
  loc_9DB29C: PopAdLdVar
  loc_9DB29D: FLdRfVar var_AC
  loc_9DB2A0: FLdPr Me
  loc_9DB2A3: MemLdPr global_56
  loc_9DB2A6:  = Me.Fields
  loc_9DB2AB: FLdPr var_AC
  loc_9DB2AE: from_stack_2 = Me.Item(from_stack_1)
  loc_9DB2B3: FLdZeroAd var_C0
  loc_9DB2B6: CVarAd
  loc_9DB2BA: ImpAdCallI2 IsNull()
  loc_9DB2BF: NotI4
  loc_9DB2C0: FFree1Ad var_AC
  loc_9DB2C3: FFree1Var var_D0 = ""
  loc_9DB2C6: BranchF loc_9DB307
  loc_9DB2C9: FLdRfVar var_D0
  loc_9DB2CC: FLdRfVar var_C0
  loc_9DB2CF: LitVarStr var_BC, "FechImpu"
  loc_9DB2D4: PopAdLdVar
  loc_9DB2D5: FLdRfVar var_AC
  loc_9DB2D8: FLdPr Me
  loc_9DB2DB: MemLdPr global_56
  loc_9DB2DE:  = Me.Fields
  loc_9DB2E3: FLdPr var_AC
  loc_9DB2E6: from_stack_2 = Me.Item(from_stack_1)
  loc_9DB2EB: FLdPr var_C0
  loc_9DB2EE:  = Me.Value
  loc_9DB2F3: FLdRfVar var_D0
  loc_9DB2F6: CStrVarTmp
  loc_9DB2F7: FStStr var_88
  loc_9DB2FA: FFreeAd var_AC = ""
  loc_9DB301: FFree1Var var_D0 = ""
  loc_9DB304: Branch loc_9DB320
  loc_9DB307: LitI2_Byte 2
  loc_9DB309: LitI2_Byte 1
  loc_9DB30B: ImpAdLdI2 MemVar_C3D064
  loc_9DB30E: FLdRfVar var_D0
  loc_9DB311: ImpAdCallFPR4  = DateSerial(, , )
  loc_9DB316: FLdRfVar var_D0
  loc_9DB319: CStrVarTmp
  loc_9DB31A: FStStr var_88
  loc_9DB31D: FFree1Var var_D0 = ""
  loc_9DB320: ExitProcCbHresult
End Function

Public Function GenerarEjecucion(PeriInfo, CodiPart, Comienza, Desde, Hasta, Sintetico, Consolidado) 'B3CF80
  'Data Table: 4AFD00
  loc_B3C5D8: ILdRf PeriInfo
  loc_B3C5DB: FStStrCopy var_8C
  loc_B3C5DE: ILdRf CodiPart
  loc_B3C5E1: FStStrCopy var_90
  loc_B3C5E4: ILdRf Desde
  loc_B3C5E7: FStStrCopy GenerarEjecucion
  loc_B3C5EA: ILdRf Hasta
  loc_B3C5ED: FStStrCopy var_98
  loc_B3C5F0: LitStr "Municipalidad de Guaymallén"
  loc_B3C5F3: LitStr "Municipalidad de Tupungato"
  loc_B3C5F6: EqStr
  loc_B3C5F8: BranchF loc_B3C603
  loc_B3C5FB: LitI2_Byte 3
  loc_B3C5FD: FStI2 var_AA
  loc_B3C600: Branch loc_B3C61B
  loc_B3C603: LitStr "Municipalidad de Guaymallén"
  loc_B3C606: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_B3C609: EqStr
  loc_B3C60B: BranchF loc_B3C616
  loc_B3C60E: LitI2_Byte 3
  loc_B3C610: FStI2 var_AA
  loc_B3C613: Branch loc_B3C61B
  loc_B3C616: LitI2_Byte 3
  loc_B3C618: FStI2 var_AA
  loc_B3C61B: LitI4 1
  loc_B3C620: LitI4 1
  loc_B3C625: LitVarStr var_CC, "'yyyy-mm-dd'"
  loc_B3C62A: FStVarCopyObj var_DC
  loc_B3C62D: FLdRfVar var_DC
  loc_B3C630: FLdRfVar GenerarEjecucion
  loc_B3C633: CVarRef
  loc_B3C638: FLdRfVar var_EC
  loc_B3C63B: ImpAdCallFPR4  = Format(, )
  loc_B3C640: FLdRfVar var_EC
  loc_B3C643: CStrVarTmp
  loc_B3C644: FStStr GenerarEjecucion
  loc_B3C647: FFreeVar var_DC = ""
  loc_B3C64E: LitI4 1
  loc_B3C653: LitI4 1
  loc_B3C658: LitVarStr var_CC, "'yyyy-mm-dd'"
  loc_B3C65D: FStVarCopyObj var_DC
  loc_B3C660: FLdRfVar var_DC
  loc_B3C663: FLdRfVar var_98
  loc_B3C666: CVarRef
  loc_B3C66B: FLdRfVar var_EC
  loc_B3C66E: ImpAdCallFPR4  = Format(, )
  loc_B3C673: FLdRfVar var_EC
  loc_B3C676: CStrVarTmp
  loc_B3C677: FStStr var_98
  loc_B3C67A: FFreeVar var_DC = ""
  loc_B3C681: ILdRf var_8C
  loc_B3C684: CR8Str
  loc_B3C686: LitI2 2024
  loc_B3C689: CR8I2
  loc_B3C68A: GeR8
  loc_B3C68B: BranchF loc_B3C7C3
  loc_B3C68E: LitVarStr var_BC, "0"
  loc_B3C693: FStVarCopyObj var_DC
  loc_B3C696: FLdRfVar var_DC
  loc_B3C699: LitI2_Byte 8
  loc_B3C69B: CI2UI1
  loc_B3C69D: FLdI2 var_AA
  loc_B3C6A0: SubI2
  loc_B3C6A1: CI4UI1
  loc_B3C6A2: FLdRfVar var_EC
  loc_B3C6A5: ImpAdCallFPR4  = String(, )
  loc_B3C6AA: LitVarStr var_144, "CodiPart"
  loc_B3C6AF: FStVarCopyObj var_154
  loc_B3C6B2: FLdRfVar var_154
  loc_B3C6B5: LitStr "Concat(Left(CodiPart,"
  loc_B3C6B8: FLdI2 var_AA
  loc_B3C6BB: CStrUI1
  loc_B3C6BD: FStStrNoPop var_F0
  loc_B3C6C0: ConcatStr
  loc_B3C6C1: FStStrNoPop var_F4
  loc_B3C6C4: LitStr "),'"
  loc_B3C6C7: ConcatStr
  loc_B3C6C8: CVarStr var_104
  loc_B3C6CB: FLdRfVar var_EC
  loc_B3C6CE: ConcatVar var_114
  loc_B3C6D2: LitVarStr var_CC, "')"
  loc_B3C6D7: ConcatVar var_124
  loc_B3C6DB: FLdRfVar Sintetico
  loc_B3C6DE: CVarRef
  loc_B3C6E3: FLdRfVar var_164
  loc_B3C6E6: ImpAdCallFPR4  = IIf(, , )
  loc_B3C6EB: FLdRfVar var_164
  loc_B3C6EE: CStrVarTmp
  loc_B3C6EF: FStStr var_9C
  loc_B3C6F2: FFreeStr var_F0 = ""
  loc_B3C6F9: FFreeVar var_DC = "": var_104 = "": var_EC = "": var_114 = "": var_124 = "": var_154 = ""
  loc_B3C70A: LitVarStr var_134, vbNullString
  loc_B3C70F: FStVarCopyObj var_EC
  loc_B3C712: FLdRfVar var_EC
  loc_B3C715: LitVarStr var_CC, ", LEFT(infogov.fnArmarJeraOrga(tbl.PeriInfo,tbl.CodiOrga),1)"
  loc_B3C71A: FStVarCopyObj var_DC
  loc_B3C71D: FLdRfVar var_DC
  loc_B3C720: FLdI2 Consolidado
  loc_B3C723: NotI4
  loc_B3C724: CVarBoolI2 var_BC
  loc_B3C728: FLdRfVar var_104
  loc_B3C72B: ImpAdCallFPR4  = IIf(, , )
  loc_B3C730: FLdRfVar var_104
  loc_B3C733: CStrVarTmp
  loc_B3C734: FStStr var_A0
  loc_B3C737: FFreeVar var_BC = "": var_DC = "": var_EC = ""
  loc_B3C742: LitVarStr var_CC, "CodiPart"
  loc_B3C747: FStVarCopyObj var_EC
  loc_B3C74A: FLdRfVar var_EC
  loc_B3C74D: LitStr "Left(CodiPart,"
  loc_B3C750: FLdI2 var_AA
  loc_B3C753: CStrUI1
  loc_B3C755: FStStrNoPop var_F0
  loc_B3C758: ConcatStr
  loc_B3C759: FStStrNoPop var_F4
  loc_B3C75C: LitStr ")"
  loc_B3C75F: ConcatStr
  loc_B3C760: CVarStr var_DC
  loc_B3C763: FLdRfVar Sintetico
  loc_B3C766: CVarRef
  loc_B3C76B: FLdRfVar var_104
  loc_B3C76E: ImpAdCallFPR4  = IIf(, , )
  loc_B3C773: FLdRfVar var_104
  loc_B3C776: CStrVarTmp
  loc_B3C777: FStStr var_A4
  loc_B3C77A: FFreeStr var_F0 = ""
  loc_B3C781: FFreeVar var_DC = "": var_EC = ""
  loc_B3C78A: LitVarStr var_134, "NOT"
  loc_B3C78F: FStVarCopyObj var_EC
  loc_B3C792: FLdRfVar var_EC
  loc_B3C795: LitVarStr var_CC, vbNullString
  loc_B3C79A: FStVarCopyObj var_DC
  loc_B3C79D: FLdRfVar var_DC
  loc_B3C7A0: FLdRfVar Comienza
  loc_B3C7A3: CVarRef
  loc_B3C7A8: FLdRfVar var_104
  loc_B3C7AB: ImpAdCallFPR4  = IIf(, , )
  loc_B3C7B0: FLdRfVar var_104
  loc_B3C7B3: CStrVarTmp
  loc_B3C7B4: FStStr var_A8
  loc_B3C7B7: FFreeVar var_DC = "": var_EC = ""
  loc_B3C7C0: Branch loc_B3C8F5
  loc_B3C7C3: LitVarStr var_BC, "0"
  loc_B3C7C8: FStVarCopyObj var_DC
  loc_B3C7CB: FLdRfVar var_DC
  loc_B3C7CE: LitI2_Byte 8
  loc_B3C7D0: CI2UI1
  loc_B3C7D2: FLdI2 var_AA
  loc_B3C7D5: SubI2
  loc_B3C7D6: CI4UI1
  loc_B3C7D7: FLdRfVar var_EC
  loc_B3C7DA: ImpAdCallFPR4  = String(, )
  loc_B3C7DF: LitVarStr var_144, "CodiPart"
  loc_B3C7E4: FStVarCopyObj var_154
  loc_B3C7E7: FLdRfVar var_154
  loc_B3C7EA: LitStr "Concat(Left(CodiPart,"
  loc_B3C7ED: FLdI2 var_AA
  loc_B3C7F0: CStrUI1
  loc_B3C7F2: FStStrNoPop var_F0
  loc_B3C7F5: ConcatStr
  loc_B3C7F6: FStStrNoPop var_F4
  loc_B3C7F9: LitStr "),'"
  loc_B3C7FC: ConcatStr
  loc_B3C7FD: CVarStr var_104
  loc_B3C800: FLdRfVar var_EC
  loc_B3C803: ConcatVar var_114
  loc_B3C807: LitVarStr var_CC, "')"
  loc_B3C80C: ConcatVar var_124
  loc_B3C810: FLdRfVar Sintetico
  loc_B3C813: CVarRef
  loc_B3C818: FLdRfVar var_164
  loc_B3C81B: ImpAdCallFPR4  = IIf(, , )
  loc_B3C820: FLdRfVar var_164
  loc_B3C823: CStrVarTmp
  loc_B3C824: FStStr var_9C
  loc_B3C827: FFreeStr var_F0 = ""
  loc_B3C82E: FFreeVar var_DC = "": var_104 = "": var_EC = "": var_114 = "": var_124 = "": var_154 = ""
  loc_B3C83F: LitVarStr var_134, vbNullString
  loc_B3C844: FStVarCopyObj var_EC
  loc_B3C847: FLdRfVar var_EC
  loc_B3C84A: LitVarStr var_CC, ", Left(CodiOrga,1)"
  loc_B3C84F: FStVarCopyObj var_DC
  loc_B3C852: FLdRfVar var_DC
  loc_B3C855: FLdI2 Consolidado
  loc_B3C858: NotI4
  loc_B3C859: CVarBoolI2 var_BC
  loc_B3C85D: FLdRfVar var_104
  loc_B3C860: ImpAdCallFPR4  = IIf(, , )
  loc_B3C865: FLdRfVar var_104
  loc_B3C868: CStrVarTmp
  loc_B3C869: FStStr var_A0
  loc_B3C86C: FFreeVar var_BC = "": var_DC = "": var_EC = ""
  loc_B3C877: LitVarStr var_CC, "CodiPart"
  loc_B3C87C: FStVarCopyObj var_EC
  loc_B3C87F: FLdRfVar var_EC
  loc_B3C882: LitStr "Left(CodiPart,"
  loc_B3C885: FLdI2 var_AA
  loc_B3C888: CStrUI1
  loc_B3C88A: FStStrNoPop var_F0
  loc_B3C88D: ConcatStr
  loc_B3C88E: FStStrNoPop var_F4
  loc_B3C891: LitStr ")"
  loc_B3C894: ConcatStr
  loc_B3C895: CVarStr var_DC
  loc_B3C898: FLdRfVar Sintetico
  loc_B3C89B: CVarRef
  loc_B3C8A0: FLdRfVar var_104
  loc_B3C8A3: ImpAdCallFPR4  = IIf(, , )
  loc_B3C8A8: FLdRfVar var_104
  loc_B3C8AB: CStrVarTmp
  loc_B3C8AC: FStStr var_A4
  loc_B3C8AF: FFreeStr var_F0 = ""
  loc_B3C8B6: FFreeVar var_DC = "": var_EC = ""
  loc_B3C8BF: LitVarStr var_134, "NOT"
  loc_B3C8C4: FStVarCopyObj var_EC
  loc_B3C8C7: FLdRfVar var_EC
  loc_B3C8CA: LitVarStr var_CC, vbNullString
  loc_B3C8CF: FStVarCopyObj var_DC
  loc_B3C8D2: FLdRfVar var_DC
  loc_B3C8D5: FLdRfVar Comienza
  loc_B3C8D8: CVarRef
  loc_B3C8DD: FLdRfVar var_104
  loc_B3C8E0: ImpAdCallFPR4  = IIf(, , )
  loc_B3C8E5: FLdRfVar var_104
  loc_B3C8E8: CStrVarTmp
  loc_B3C8E9: FStStr var_A8
  loc_B3C8EC: FFreeVar var_DC = "": var_EC = ""
  loc_B3C8F5: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp;"
  loc_B3C8F8: LitStr " CREATE TEMPORARY TABLE tmp ("
  loc_B3C8FB: ConcatStr
  loc_B3C8FC: FStStrNoPop var_F0
  loc_B3C8FF: LitStr " PeriInfo year(4) NOT NULL DEFAULT '0000'"
  loc_B3C902: ConcatStr
  loc_B3C903: FStStrNoPop var_F4
  loc_B3C906: LitStr ", CodiOrga varchar(50) NOT NULL DEFAULT ''"
  loc_B3C909: ConcatStr
  loc_B3C90A: FStStrNoPop var_168
  loc_B3C90D: LitStr ", CodiPart varchar(9) NOT NULL DEFAULT ''"
  loc_B3C910: ConcatStr
  loc_B3C911: FStStrNoPop var_16C
  loc_B3C914: LitStr ", AutoAuto decimal(13,2) NOT NULL DEFAULT '0.00'"
  loc_B3C917: ConcatStr
  loc_B3C918: FStStrNoPop var_170
  loc_B3C91B: LitStr ", AumeAuto decimal(13,2) NOT NULL DEFAULT '0.00'"
  loc_B3C91E: ConcatStr
  loc_B3C91F: FStStrNoPop var_174
  loc_B3C922: LitStr ", DismAuto decimal(13,2) NOT NULL DEFAULT '0.00'"
  loc_B3C925: ConcatStr
  loc_B3C926: FStStrNoPop var_178
  loc_B3C929: LitStr ", PrevImpu decimal(13,2) NOT NULL DEFAULT '0.00', PrevImpuMes1 decimal(13,2) NOT NULL DEFAULT '0.00', PrevImpuMes2 decimal(13,2) NOT NULL DEFAULT '0.00', PrevImpuMes3 decimal(13,2) NOT NULL DEFAULT '0.00', PrevImpuMes4 decimal(13,2) NOT NULL DEFAULT '0.00', PrevImpuMes5 decimal(13,2) NOT NULL DEFAULT '0.00', PrevImpuMes6 decimal(13,2) NOT NULL DEFAULT '0.00', PrevImpuMes7 decimal(13,2) NOT NULL DEFAULT '0.00', PrevImpuMes8 decimal(13,2) NOT NULL DEFAULT '0.00', PrevImpuMes9 decimal(13,2) NOT NULL DEFAULT '0.00', PrevImpuMes10 decimal(13,2) NOT NULL DEFAULT '0.00', PrevImpuMes11 decimal(13,2) NOT NULL DEFAULT '0.00', PrevImpuMes12 decimal(13,2) NOT NULL DEFAULT '0.00'"
  loc_B3C92C: ConcatStr
  loc_B3C92D: FStStrNoPop var_17C
  loc_B3C930: LitStr ", DefiImpu decimal(13,2) NOT NULL DEFAULT '0.00', DefiImpuMes1 decimal(13,2) NOT NULL DEFAULT '0.00', DefiImpuMes2 decimal(13,2) NOT NULL DEFAULT '0.00', DefiImpuMes3 decimal(13,2) NOT NULL DEFAULT '0.00', DefiImpuMes4 decimal(13,2) NOT NULL DEFAULT '0.00', DefiImpuMes5 decimal(13,2) NOT NULL DEFAULT '0.00', DefiImpuMes6 decimal(13,2) NOT NULL DEFAULT '0.00', DefiImpuMes7 decimal(13,2) NOT NULL DEFAULT '0.00', DefiImpuMes8 decimal(13,2) NOT NULL DEFAULT '0.00', DefiImpuMes9 decimal(13,2) NOT NULL DEFAULT '0.00', DefiImpuMes10 decimal(13,2) NOT NULL DEFAULT '0.00', DefiImpuMes11 decimal(13,2) NOT NULL DEFAULT '0.00', DefiImpuMes12 decimal(13,2) NOT NULL DEFAULT '0.00'"
  loc_B3C933: ConcatStr
  loc_B3C934: FStStrNoPop var_180
  loc_B3C937: LitStr ", DeveImpu decimal(13,2) NOT NULL DEFAULT '0.00', DeveImpuMes1 decimal(13,2) NOT NULL DEFAULT '0.00', DeveImpuMes2 decimal(13,2) NOT NULL DEFAULT '0.00', DeveImpuMes3 decimal(13,2) NOT NULL DEFAULT '0.00', DeveImpuMes4 decimal(13,2) NOT NULL DEFAULT '0.00', DeveImpuMes5 decimal(13,2) NOT NULL DEFAULT '0.00', DeveImpuMes6 decimal(13,2) NOT NULL DEFAULT '0.00', DeveImpuMes7 decimal(13,2) NOT NULL DEFAULT '0.00', DeveImpuMes8 decimal(13,2) NOT NULL DEFAULT '0.00', DeveImpuMes9 decimal(13,2) NOT NULL DEFAULT '0.00', DeveImpuMes10 decimal(13,2) NOT NULL DEFAULT '0.00', DeveImpuMes11 decimal(13,2) NOT NULL DEFAULT '0.00', DeveImpuMes12 decimal(13,2) NOT NULL DEFAULT '0.00'"
  loc_B3C93A: ConcatStr
  loc_B3C93B: FStStrNoPop var_184
  loc_B3C93E: LitStr ", MapaImpu decimal(13,2) NOT NULL DEFAULT '0.00', MapaImpuMes1 decimal(13,2) NOT NULL DEFAULT '0.00', MapaImpuMes2 decimal(13,2) NOT NULL DEFAULT '0.00', MapaImpuMes3 decimal(13,2) NOT NULL DEFAULT '0.00', MapaImpuMes4 decimal(13,2) NOT NULL DEFAULT '0.00', MapaImpuMes5 decimal(13,2) NOT NULL DEFAULT '0.00', MapaImpuMes6 decimal(13,2) NOT NULL DEFAULT '0.00', MapaImpuMes7 decimal(13,2) NOT NULL DEFAULT '0.00', MapaImpuMes8 decimal(13,2) NOT NULL DEFAULT '0.00', MapaImpuMes9 decimal(13,2) NOT NULL DEFAULT '0.00', MapaImpuMes10 decimal(13,2) NOT NULL DEFAULT '0.00', MapaImpuMes11 decimal(13,2) NOT NULL DEFAULT '0.00', MapaImpuMes12 decimal(13,2) NOT NULL DEFAULT '0.00'"
  loc_B3C941: ConcatStr
  loc_B3C942: FStStrNoPop var_188
  loc_B3C945: LitStr ", PagaImpu decimal(13,2) NOT NULL DEFAULT '0.00', PagaImpuMes1 decimal(13,2) NOT NULL DEFAULT '0.00', PagaImpuMes2 decimal(13,2) NOT NULL DEFAULT '0.00', PagaImpuMes3 decimal(13,2) NOT NULL DEFAULT '0.00', PagaImpuMes4 decimal(13,2) NOT NULL DEFAULT '0.00', PagaImpuMes5 decimal(13,2) NOT NULL DEFAULT '0.00', PagaImpuMes6 decimal(13,2) NOT NULL DEFAULT '0.00', PagaImpuMes7 decimal(13,2) NOT NULL DEFAULT '0.00', PagaImpuMes8 decimal(13,2) NOT NULL DEFAULT '0.00', PagaImpuMes9 decimal(13,2) NOT NULL DEFAULT '0.00', PagaImpuMes10 decimal(13,2) NOT NULL DEFAULT '0.00', PagaImpuMes11 decimal(13,2) NOT NULL DEFAULT '0.00', PagaImpuMes12 decimal(13,2) NOT NULL DEFAULT '0.00'"
  loc_B3C948: ConcatStr
  loc_B3C949: FStStrNoPop var_18C
  loc_B3C94C: LitStr ") ;"
  loc_B3C94F: ConcatStr
  loc_B3C950: FStStrNoPop var_190
  loc_B3C953: Call RedefineRS(from_stack_1v)
  loc_B3C958: FFreeStr var_F0 = "": var_F4 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_B3C975: ILdRf var_8C
  loc_B3C978: CR8Str
  loc_B3C97A: LitI2 2024
  loc_B3C97D: CR8I2
  loc_B3C97E: GeR8
  loc_B3C97F: BranchF loc_B3CCCF
  loc_B3C982: LitStr "INSERT INTO tmp (PeriInfo,CodiOrga,CodiPart,AutoAuto,AumeAuto,DismAuto)"
  loc_B3C985: LitStr " SELECT PeriInfo, CodiOrga, "
  loc_B3C988: ConcatStr
  loc_B3C989: FStStrNoPop var_F0
  loc_B3C98C: ILdRf var_9C
  loc_B3C98F: ConcatStr
  loc_B3C990: FStStrNoPop var_F4
  loc_B3C993: LitStr ", Sum(AutoAuto), Sum(AumeAuto), Sum(DismAuto)"
  loc_B3C996: ConcatStr
  loc_B3C997: FStStrNoPop var_168
  loc_B3C99A: LitStr " FROM autorizado tbl"
  loc_B3C99D: ConcatStr
  loc_B3C99E: FStStrNoPop var_16C
  loc_B3C9A1: LitStr " WHERE PeriInfo = "
  loc_B3C9A4: ConcatStr
  loc_B3C9A5: FStStrNoPop var_170
  loc_B3C9A8: ILdRf var_8C
  loc_B3C9AB: ConcatStr
  loc_B3C9AC: FStStrNoPop var_174
  loc_B3C9AF: LitStr " AND CodiPart "
  loc_B3C9B2: ConcatStr
  loc_B3C9B3: FStStrNoPop var_178
  loc_B3C9B6: ILdRf var_A8
  loc_B3C9B9: ConcatStr
  loc_B3C9BA: FStStrNoPop var_17C
  loc_B3C9BD: LitStr " LIKE '"
  loc_B3C9C0: ConcatStr
  loc_B3C9C1: FStStrNoPop var_180
  loc_B3C9C4: ILdRf var_90
  loc_B3C9C7: ConcatStr
  loc_B3C9C8: FStStrNoPop var_184
  loc_B3C9CB: LitStr Chr(37) & "' AND FechAuto BETWEEN "
  loc_B3C9CE: ConcatStr
  loc_B3C9CF: FStStrNoPop var_188
  loc_B3C9D2: ILdRf GenerarEjecucion
  loc_B3C9D5: ConcatStr
  loc_B3C9D6: FStStrNoPop var_18C
  loc_B3C9D9: LitStr " AND "
  loc_B3C9DC: ConcatStr
  loc_B3C9DD: FStStrNoPop var_190
  loc_B3C9E0: ILdRf var_98
  loc_B3C9E3: ConcatStr
  loc_B3C9E4: FStStrNoPop var_194
  loc_B3C9E7: LitStr " GROUP BY PeriInfo"
  loc_B3C9EA: ConcatStr
  loc_B3C9EB: FStStrNoPop var_198
  loc_B3C9EE: ILdRf var_A0
  loc_B3C9F1: ConcatStr
  loc_B3C9F2: FStStrNoPop var_19C
  loc_B3C9F5: LitStr ", "
  loc_B3C9F8: ConcatStr
  loc_B3C9F9: FStStrNoPop var_1A0
  loc_B3C9FC: ILdRf var_A4
  loc_B3C9FF: ConcatStr
  loc_B3CA00: FStStrNoPop var_1A4
  loc_B3CA03: LitStr " ORDER BY PeriInfo, CodiOrga, CodiPart;"
  loc_B3CA06: ConcatStr
  loc_B3CA07: FStStrNoPop var_1A8
  loc_B3CA0A: Call RedefineRS(from_stack_1v)
  loc_B3CA0F: FFreeStr var_F0 = "": var_F4 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = ""
  loc_B3CA38: LitStr "INSERT INTO tmp (PeriInfo,CodiOrga,CodiPart,PrevImpu,DefiImpu,DeveImpu,MapaImpu,PagaImpu)"
  loc_B3CA3B: LitStr " SELECT PeriInfo, LEFT(infogov.fnArmarJeraOrga(tbl.PeriInfo,tbl.CodiOrga),1) CodiOrga, "
  loc_B3CA3E: ConcatStr
  loc_B3CA3F: FStStrNoPop var_F0
  loc_B3CA42: ILdRf var_9C
  loc_B3CA45: ConcatStr
  loc_B3CA46: FStStrNoPop var_F4
  loc_B3CA49: LitStr ", Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_B3CA4C: ConcatStr
  loc_B3CA4D: FStStrNoPop var_168
  loc_B3CA50: LitStr " FROM imputacion tbl"
  loc_B3CA53: ConcatStr
  loc_B3CA54: FStStrNoPop var_16C
  loc_B3CA57: LitStr " WHERE PeriInfo = "
  loc_B3CA5A: ConcatStr
  loc_B3CA5B: FStStrNoPop var_170
  loc_B3CA5E: ILdRf var_8C
  loc_B3CA61: ConcatStr
  loc_B3CA62: FStStrNoPop var_174
  loc_B3CA65: LitStr " AND CodiPart "
  loc_B3CA68: ConcatStr
  loc_B3CA69: FStStrNoPop var_178
  loc_B3CA6C: ILdRf var_A8
  loc_B3CA6F: ConcatStr
  loc_B3CA70: FStStrNoPop var_17C
  loc_B3CA73: LitStr " LIKE '"
  loc_B3CA76: ConcatStr
  loc_B3CA77: FStStrNoPop var_180
  loc_B3CA7A: ILdRf var_90
  loc_B3CA7D: ConcatStr
  loc_B3CA7E: FStStrNoPop var_184
  loc_B3CA81: LitStr Chr(37) & "' AND FechImpu BETWEEN "
  loc_B3CA84: ConcatStr
  loc_B3CA85: FStStrNoPop var_188
  loc_B3CA88: ILdRf GenerarEjecucion
  loc_B3CA8B: ConcatStr
  loc_B3CA8C: FStStrNoPop var_18C
  loc_B3CA8F: LitStr " AND "
  loc_B3CA92: ConcatStr
  loc_B3CA93: FStStrNoPop var_190
  loc_B3CA96: ILdRf var_98
  loc_B3CA99: ConcatStr
  loc_B3CA9A: FStStrNoPop var_194
  loc_B3CA9D: LitStr " GROUP BY PeriInfo"
  loc_B3CAA0: ConcatStr
  loc_B3CAA1: FStStrNoPop var_198
  loc_B3CAA4: ILdRf var_A0
  loc_B3CAA7: ConcatStr
  loc_B3CAA8: FStStrNoPop var_19C
  loc_B3CAAB: LitStr ", "
  loc_B3CAAE: ConcatStr
  loc_B3CAAF: FStStrNoPop var_1A0
  loc_B3CAB2: ILdRf var_A4
  loc_B3CAB5: ConcatStr
  loc_B3CAB6: FStStrNoPop var_1A4
  loc_B3CAB9: LitStr " ORDER BY PeriInfo, CodiOrga, CodiPart;"
  loc_B3CABC: ConcatStr
  loc_B3CABD: FStStrNoPop var_1A8
  loc_B3CAC0: Call RedefineRS(from_stack_1v)
  loc_B3CAC5: FFreeStr var_F0 = "": var_F4 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = ""
  loc_B3CAEE: LitStr "INSERT INTO tmp (PeriInfo,CodiOrga,CodiPart,PrevImpuMes1,PrevImpuMes2,PrevImpuMes3,PrevImpuMes4,PrevImpuMes5,PrevImpuMes6,PrevImpuMes7,PrevImpuMes8,PrevImpuMes9,PrevImpuMes10,PrevImpuMes11,PrevImpuMes12,DefiImpuMes1,DefiImpuMes2,DefiImpuMes3,DefiImpuMes4,DefiImpuMes5,DefiImpuMes6,DefiImpuMes7,DefiImpuMes8,DefiImpuMes9,DefiImpuMes10,DefiImpuMes11,DefiImpuMes12"
  loc_B3CAF1: LitStr ",DeveImpuMes1,DeveImpuMes2,DeveImpuMes3,DeveImpuMes4,DeveImpuMes5,DeveImpuMes6,DeveImpuMes7,DeveImpuMes8,DeveImpuMes9,DeveImpuMes10,DeveImpuMes11,DeveImpuMes12,MapaImpuMes1,MapaImpuMes2,MapaImpuMes3,MapaImpuMes4,MapaImpuMes5,MapaImpuMes6,MapaImpuMes7,MapaImpuMes8,MapaImpuMes9,MapaImpuMes10,MapaImpuMes11,MapaImpuMes12,PagaImpuMes1,PagaImpuMes2,PagaImpuMes3,PagaImpuMes4,PagaImpuMes5,PagaImpuMes6,PagaImpuMes7,PagaImpuMes8,PagaImpuMes9,PagaImpuMes10,PagaImpuMes11,PagaImpuMes12)"
  loc_B3CAF4: ConcatStr
  loc_B3CAF5: FStStrNoPop var_F0
  loc_B3CAF8: LitStr " SELECT PeriInfo, LEFT(infogov.fnArmarJeraOrga(tbl.PeriInfo,tbl.CodiOrga),1) CodiOrga, "
  loc_B3CAFB: ConcatStr
  loc_B3CAFC: FStStrNoPop var_F4
  loc_B3CAFF: ILdRf var_9C
  loc_B3CB02: ConcatStr
  loc_B3CB03: FStStrNoPop var_168
  loc_B3CB06: LitStr ", SUM(if(MONTH(tbl.FechImpu)=1,tbl.PrevImpu,0)) PrevImpuMes1, SUM(if(MONTH(tbl.FechImpu)=2,tbl.PrevImpu,0)) PrevImpuMes2, SUM(if(MONTH(tbl.FechImpu)=3,tbl.PrevImpu,0)) PrevImpuMes3, SUM(if(MONTH(tbl.FechImpu)=4,tbl.PrevImpu,0)) PrevImpuMes4, SUM(if(MONTH(tbl.FechImpu)=5,tbl.PrevImpu,0)) PrevImpuMes5, SUM(if(MONTH(tbl.FechImpu)=6,tbl.PrevImpu,0)) PrevImpuMes6, SUM(if(MONTH(tbl.FechImpu)=7,tbl.PrevImpu,0)) PrevImpuMes7, SUM(if(MONTH(tbl.FechImpu)=8,tbl.PrevImpu,0)) PrevImpuMes8, SUM(if(MONTH(tbl.FechImpu)=9,tbl.PrevImpu,0)) PrevImpuMes9, SUM(if(MONTH(tbl.FechImpu)=10,tbl.PrevImpu,0)) PrevImpuMes10, SUM(if(MONTH(tbl.FechImpu)=11,tbl.PrevImpu,0)) PrevImpuMes11, SUM(if(MONTH(tbl.FechImpu)=12,tbl.PrevImpu,0)) PrevImpuMes12"
  loc_B3CB09: ConcatStr
  loc_B3CB0A: FStStrNoPop var_16C
  loc_B3CB0D: LitStr ", SUM(if(MONTH(tbl.FechImpu)=1,tbl.DefiImpu,0)) DefiImpuMes1, SUM(if(MONTH(tbl.FechImpu)=2,tbl.DefiImpu,0)) DefiImpuMes2, SUM(if(MONTH(tbl.FechImpu)=3,tbl.DefiImpu,0)) DefiImpuMes3, SUM(if(MONTH(tbl.FechImpu)=4,tbl.DefiImpu,0)) DefiImpuMes4, SUM(if(MONTH(tbl.FechImpu)=5,tbl.DefiImpu,0)) DefiImpuMes5, SUM(if(MONTH(tbl.FechImpu)=6,tbl.DefiImpu,0)) DefiImpuMes6, SUM(if(MONTH(tbl.FechImpu)=7,tbl.DefiImpu,0)) DefiImpuMes7, SUM(if(MONTH(tbl.FechImpu)=8,tbl.DefiImpu,0)) DefiImpuMes8, SUM(if(MONTH(tbl.FechImpu)=9,tbl.DefiImpu,0)) DefiImpuMes9, SUM(if(MONTH(tbl.FechImpu)=10,tbl.DefiImpu,0)) DefiImpuMes10, SUM(if(MONTH(tbl.FechImpu)=11,tbl.DefiImpu,0)) DefiImpuMes11, SUM(if(MONTH(tbl.FechImpu)=12,tbl.DefiImpu,0)) DefiImpuMes12"
  loc_B3CB10: ConcatStr
  loc_B3CB11: FStStrNoPop var_170
  loc_B3CB14: LitStr ", SUM(if(MONTH(tbl.FechImpu)=1,tbl.DeveImpu,0)) DeveImpuMes1, SUM(if(MONTH(tbl.FechImpu)=2,tbl.DeveImpu,0)) DeveImpuMes2, SUM(if(MONTH(tbl.FechImpu)=3,tbl.DeveImpu,0)) DeveImpuMes3, SUM(if(MONTH(tbl.FechImpu)=4,tbl.DeveImpu,0)) DeveImpuMes4, SUM(if(MONTH(tbl.FechImpu)=5,tbl.DeveImpu,0)) DeveImpuMes5, SUM(if(MONTH(tbl.FechImpu)=6,tbl.DeveImpu,0)) DeveImpuMes6, SUM(if(MONTH(tbl.FechImpu)=7,tbl.DeveImpu,0)) DeveImpuMes7, SUM(if(MONTH(tbl.FechImpu)=8,tbl.DeveImpu,0)) DeveImpuMes8, SUM(if(MONTH(tbl.FechImpu)=9,tbl.DeveImpu,0)) DeveImpuMes9, SUM(if(MONTH(tbl.FechImpu)=10,tbl.DeveImpu,0)) DeveImpuMes10, SUM(if(MONTH(tbl.FechImpu)=11,tbl.DeveImpu,0)) DeveImpuMes11, SUM(if(MONTH(tbl.FechImpu)=12,tbl.DeveImpu,0)) DeveImpuMes12"
  loc_B3CB17: ConcatStr
  loc_B3CB18: FStStrNoPop var_174
  loc_B3CB1B: LitStr ", SUM(if(MONTH(tbl.FechImpu)=1,tbl.MapaImpu,0)) MapaImpuMes1, SUM(if(MONTH(tbl.FechImpu)=2,tbl.MapaImpu,0)) MapaImpuMes2, SUM(if(MONTH(tbl.FechImpu)=3,tbl.MapaImpu,0)) MapaImpuMes3, SUM(if(MONTH(tbl.FechImpu)=4,tbl.MapaImpu,0)) MapaImpuMes4, SUM(if(MONTH(tbl.FechImpu)=5,tbl.MapaImpu,0)) MapaImpuMes5, SUM(if(MONTH(tbl.FechImpu)=6,tbl.MapaImpu,0)) MapaImpuMes6, SUM(if(MONTH(tbl.FechImpu)=7,tbl.MapaImpu,0)) MapaImpuMes7, SUM(if(MONTH(tbl.FechImpu)=8,tbl.MapaImpu,0)) MapaImpuMes8, SUM(if(MONTH(tbl.FechImpu)=9,tbl.MapaImpu,0)) MapaImpuMes9, SUM(if(MONTH(tbl.FechImpu)=10,tbl.MapaImpu,0)) MapaImpuMes10, SUM(if(MONTH(tbl.FechImpu)=11,tbl.MapaImpu,0)) MapaImpuMes11, SUM(if(MONTH(tbl.FechImpu)=12,tbl.MapaImpu,0)) MapaImpuMes12"
  loc_B3CB1E: ConcatStr
  loc_B3CB1F: FStStrNoPop var_178
  loc_B3CB22: LitStr ", SUM(if(MONTH(tbl.FechImpu)=1,tbl.PagaImpu,0)) PagaImpuMes1, SUM(if(MONTH(tbl.FechImpu)=2,tbl.PagaImpu,0)) PagaImpuMes2, SUM(if(MONTH(tbl.FechImpu)=3,tbl.PagaImpu,0)) PagaImpuMes3, SUM(if(MONTH(tbl.FechImpu)=4,tbl.PagaImpu,0)) PagaImpuMes4, SUM(if(MONTH(tbl.FechImpu)=5,tbl.PagaImpu,0)) PagaImpuMes5, SUM(if(MONTH(tbl.FechImpu)=6,tbl.PagaImpu,0)) PagaImpuMes6, SUM(if(MONTH(tbl.FechImpu)=7,tbl.PagaImpu,0)) PagaImpuMes7, SUM(if(MONTH(tbl.FechImpu)=8,tbl.PagaImpu,0)) PagaImpuMes8, SUM(if(MONTH(tbl.FechImpu)=9,tbl.PagaImpu,0)) PagaImpuMes9, SUM(if(MONTH(tbl.FechImpu)=10,tbl.PagaImpu,0)) PagaImpuMes10, SUM(if(MONTH(tbl.FechImpu)=11,tbl.PagaImpu,0)) PagaImpuMes11, SUM(if(MONTH(tbl.FechImpu)=12,tbl.PagaImpu,0)) PagaImpuMes12"
  loc_B3CB25: ConcatStr
  loc_B3CB26: FStStrNoPop var_17C
  loc_B3CB29: LitStr " FROM imputacion tbl"
  loc_B3CB2C: ConcatStr
  loc_B3CB2D: FStStrNoPop var_180
  loc_B3CB30: LitStr " WHERE PeriInfo = "
  loc_B3CB33: ConcatStr
  loc_B3CB34: FStStrNoPop var_184
  loc_B3CB37: ILdRf var_8C
  loc_B3CB3A: ConcatStr
  loc_B3CB3B: FStStrNoPop var_188
  loc_B3CB3E: LitStr " AND CodiPart "
  loc_B3CB41: ConcatStr
  loc_B3CB42: FStStrNoPop var_18C
  loc_B3CB45: ILdRf var_A8
  loc_B3CB48: ConcatStr
  loc_B3CB49: FStStrNoPop var_190
  loc_B3CB4C: LitStr " LIKE '"
  loc_B3CB4F: ConcatStr
  loc_B3CB50: FStStrNoPop var_194
  loc_B3CB53: ILdRf var_90
  loc_B3CB56: ConcatStr
  loc_B3CB57: FStStrNoPop var_198
  loc_B3CB5A: LitStr Chr(37) & "' AND FechImpu BETWEEN "
  loc_B3CB5D: ConcatStr
  loc_B3CB5E: FStStrNoPop var_19C
  loc_B3CB61: ILdRf GenerarEjecucion
  loc_B3CB64: ConcatStr
  loc_B3CB65: FStStrNoPop var_1A0
  loc_B3CB68: LitStr " AND "
  loc_B3CB6B: ConcatStr
  loc_B3CB6C: FStStrNoPop var_1A4
  loc_B3CB6F: ILdRf var_98
  loc_B3CB72: ConcatStr
  loc_B3CB73: FStStrNoPop var_1A8
  loc_B3CB76: LitStr " GROUP BY PeriInfo"
  loc_B3CB79: ConcatStr
  loc_B3CB7A: FStStrNoPop var_1AC
  loc_B3CB7D: ILdRf var_A0
  loc_B3CB80: ConcatStr
  loc_B3CB81: FStStrNoPop var_1B0
  loc_B3CB84: LitStr ", "
  loc_B3CB87: ConcatStr
  loc_B3CB88: FStStrNoPop var_1B4
  loc_B3CB8B: ILdRf var_A4
  loc_B3CB8E: ConcatStr
  loc_B3CB8F: FStStrNoPop var_1B8
  loc_B3CB92: LitStr ", MONTH(tbl.FechImpu)"
  loc_B3CB95: ConcatStr
  loc_B3CB96: FStStrNoPop var_1BC
  loc_B3CB99: LitStr " ORDER BY PeriInfo, CodiOrga, CodiPart;"
  loc_B3CB9C: ConcatStr
  loc_B3CB9D: FStStrNoPop var_1C0
  loc_B3CBA0: Call RedefineRS(from_stack_1v)
  loc_B3CBA5: FFreeStr var_F0 = "": var_F4 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = ""
  loc_B3CBDA: LitStr "SELECT tmp.PeriInfo, tmp.CodiOrga, DetaOrga, tmp.CodiPart, DetaPart, Sum(AutoAuto) AutoAuto, Sum(AumeAuto) AumeAuto, Sum(DismAuto) DismAuto"
  loc_B3CBDD: LitStr ", Sum(DefiImpu) PrevImpu, Sum(PrevImpuMes1) PrevImpuMes1, Sum(PrevImpuMes2) PrevImpuMes2, Sum(PrevImpuMes3) PrevImpuMes3, Sum(PrevImpuMes4) PrevImpuMes4, Sum(PrevImpuMes5) PrevImpuMes5, Sum(PrevImpuMes6) PrevImpuMes6, Sum(PrevImpuMes7) PrevImpuMes7, Sum(PrevImpuMes8) PrevImpuMes8, Sum(PrevImpuMes9) PrevImpuMes9, Sum(PrevImpuMes10) PrevImpuMes10, Sum(PrevImpuMes11) PrevImpuMes11, Sum(PrevImpuMes12) PrevImpuMes12"
  loc_B3CBE0: ConcatStr
  loc_B3CBE1: FStStrNoPop var_F0
  loc_B3CBE4: LitStr ", Sum(DefiImpu) DefiImpu, Sum(DefiImpuMes1) DefiImpuMes1, Sum(DefiImpuMes2) DefiImpuMes2, Sum(DefiImpuMes3) DefiImpuMes3, Sum(DefiImpuMes4) DefiImpuMes4, Sum(DefiImpuMes5) DefiImpuMes5, Sum(DefiImpuMes6) DefiImpuMes6, Sum(DefiImpuMes7) DefiImpuMes7, Sum(DefiImpuMes8) DefiImpuMes8, Sum(DefiImpuMes9) DefiImpuMes9, Sum(DefiImpuMes10) DefiImpuMes10, Sum(DefiImpuMes11) DefiImpuMes11, Sum(DefiImpuMes12) DefiImpuMes12"
  loc_B3CBE7: ConcatStr
  loc_B3CBE8: FStStrNoPop var_F4
  loc_B3CBEB: LitStr ", Sum(DeveImpu) DeveImpu, Sum(DeveImpuMes1) DeveImpuMes1, Sum(DeveImpuMes2) DeveImpuMes2, Sum(DeveImpuMes3) DeveImpuMes3, Sum(DeveImpuMes4) DeveImpuMes4, Sum(DeveImpuMes5) DeveImpuMes5, Sum(DeveImpuMes6) DeveImpuMes6, Sum(DeveImpuMes7) DeveImpuMes7, Sum(DeveImpuMes8) DeveImpuMes8, Sum(DeveImpuMes9) DeveImpuMes9, Sum(DeveImpuMes10) DeveImpuMes10, Sum(DeveImpuMes11) DeveImpuMes11, Sum(DeveImpuMes12) DeveImpuMes12"
  loc_B3CBEE: ConcatStr
  loc_B3CBEF: FStStrNoPop var_168
  loc_B3CBF2: LitStr ", Sum(MapaImpu) MapaImpu, Sum(MapaImpuMes1) MapaImpuMes1, Sum(MapaImpuMes2) MapaImpuMes2, Sum(MapaImpuMes3) MapaImpuMes3, Sum(MapaImpuMes4) MapaImpuMes4, Sum(MapaImpuMes5) MapaImpuMes5, Sum(MapaImpuMes6) MapaImpuMes6, Sum(MapaImpuMes7) MapaImpuMes7, Sum(MapaImpuMes8) MapaImpuMes8, Sum(MapaImpuMes9) MapaImpuMes9, Sum(MapaImpuMes10) MapaImpuMes10, Sum(MapaImpuMes11) MapaImpuMes11, Sum(MapaImpuMes12) MapaImpuMes12"
  loc_B3CBF5: ConcatStr
  loc_B3CBF6: FStStrNoPop var_16C
  loc_B3CBF9: LitStr ", Sum(PagaImpu) PagaImpu, Sum(PagaImpuMes1) PagaImpuMes1, Sum(PagaImpuMes2) PagaImpuMes2, Sum(PagaImpuMes3) PagaImpuMes3, Sum(PagaImpuMes4) PagaImpuMes4, Sum(PagaImpuMes5) PagaImpuMes5, Sum(PagaImpuMes6) PagaImpuMes6, Sum(PagaImpuMes7) PagaImpuMes7, Sum(PagaImpuMes8) PagaImpuMes8, Sum(PagaImpuMes9) PagaImpuMes9, Sum(PagaImpuMes10) PagaImpuMes10, Sum(PagaImpuMes11) PagaImpuMes11, Sum(PagaImpuMes12) PagaImpuMes12"
  loc_B3CBFC: ConcatStr
  loc_B3CBFD: FStStrNoPop var_170
  loc_B3CC00: LitStr " FROM tmp"
  loc_B3CC03: ConcatStr
  loc_B3CC04: FStStrNoPop var_174
  loc_B3CC07: LitStr " INNER JOIN infogov.organigrama ON organigrama.PeriInfo = tmp.PeriInfo AND organigrama.CodiOrga = tmp.CodiOrga"
  loc_B3CC0A: ConcatStr
  loc_B3CC0B: FStStrNoPop var_178
  loc_B3CC0E: LitStr " INNER JOIN partida ON partida.PeriInfo = tmp.PeriInfo AND partida.CodiPart = tmp.CodiPart"
  loc_B3CC11: ConcatStr
  loc_B3CC12: FStStrNoPop var_17C
  loc_B3CC15: LitStr " GROUP BY tmp.PeriInfo"
  loc_B3CC18: ConcatStr
  loc_B3CC19: CVarStr var_114
  loc_B3CC1C: LitVarStr var_134, vbNullString
  loc_B3CC21: FStVarCopyObj var_EC
  loc_B3CC24: FLdRfVar var_EC
  loc_B3CC27: LitVarStr var_CC, ", tmp.CodiOrga"
  loc_B3CC2C: FStVarCopyObj var_DC
  loc_B3CC2F: FLdRfVar var_DC
  loc_B3CC32: FLdI2 Consolidado
  loc_B3CC35: NotI4
  loc_B3CC36: CVarBoolI2 var_BC
  loc_B3CC3A: FLdRfVar var_104
  loc_B3CC3D: ImpAdCallFPR4  = IIf(, , )
  loc_B3CC42: FLdRfVar var_104
  loc_B3CC45: ConcatVar var_124
  loc_B3CC49: LitVarStr var_144, ", tmp.CodiPart"
  loc_B3CC4E: ConcatVar var_154
  loc_B3CC52: LitVarStr var_1D0, " ORDER BY "
  loc_B3CC57: ConcatVar var_164
  loc_B3CC5B: LitVarStr var_210, "PeriInfo, CodiOrga, CodiPart"
  loc_B3CC60: FStVarCopyObj var_220
  loc_B3CC63: FLdRfVar var_220
  loc_B3CC66: LitVarStr var_1F0, "PeriInfo, CodiPart"
  loc_B3CC6B: FStVarCopyObj var_200
  loc_B3CC6E: FLdRfVar var_200
  loc_B3CC71: FLdRfVar Consolidado
  loc_B3CC74: CVarRef
  loc_B3CC79: FLdRfVar var_230
  loc_B3CC7C: ImpAdCallFPR4  = IIf(, , )
  loc_B3CC81: FLdRfVar var_230
  loc_B3CC84: ConcatVar var_240
  loc_B3CC88: LitVarStr var_250, ";"
  loc_B3CC8D: ConcatVar var_260
  loc_B3CC91: CStrVarVal var_180
  loc_B3CC95: Call RedefineRS(from_stack_1v)
  loc_B3CC9A: FFreeStr var_F0 = "": var_F4 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = ""
  loc_B3CCAF: FFreeVar var_BC = "": var_DC = "": var_EC = "": var_114 = "": var_104 = "": var_124 = "": var_154 = "": var_200 = "": var_220 = "": var_164 = "": var_230 = "": var_240 = ""
  loc_B3CCCC: Branch loc_B3CF5D
  loc_B3CCCF: LitStr "INSERT INTO tmp (PeriInfo,CodiOrga,CodiPart,AutoAuto,AumeAuto,DismAuto)"
  loc_B3CCD2: LitStr " SELECT autorizado.PeriInfo, Rpad(Left(CodiOrga,1),"
  loc_B3CCD5: ConcatStr
  loc_B3CCD6: FStStrNoPop var_F0
  loc_B3CCD9: LitI2_Byte 6
  loc_B3CCDB: CStrUI1
  loc_B3CCDD: FStStrNoPop var_F4
  loc_B3CCE0: ConcatStr
  loc_B3CCE1: FStStrNoPop var_168
  loc_B3CCE4: LitStr ",'0'), "
  loc_B3CCE7: ConcatStr
  loc_B3CCE8: FStStrNoPop var_16C
  loc_B3CCEB: ILdRf var_9C
  loc_B3CCEE: ConcatStr
  loc_B3CCEF: FStStrNoPop var_170
  loc_B3CCF2: LitStr ", Sum(AutoAuto), Sum(AumeAuto), Sum(DismAuto)"
  loc_B3CCF5: ConcatStr
  loc_B3CCF6: FStStrNoPop var_174
  loc_B3CCF9: LitStr " FROM autorizado"
  loc_B3CCFC: ConcatStr
  loc_B3CCFD: FStStrNoPop var_178
  loc_B3CD00: LitStr " WHERE autorizado.PeriInfo = "
  loc_B3CD03: ConcatStr
  loc_B3CD04: FStStrNoPop var_17C
  loc_B3CD07: ILdRf var_8C
  loc_B3CD0A: ConcatStr
  loc_B3CD0B: FStStrNoPop var_180
  loc_B3CD0E: LitStr " AND CodiPart "
  loc_B3CD11: ConcatStr
  loc_B3CD12: FStStrNoPop var_184
  loc_B3CD15: ILdRf var_A8
  loc_B3CD18: ConcatStr
  loc_B3CD19: FStStrNoPop var_188
  loc_B3CD1C: LitStr " LIKE '"
  loc_B3CD1F: ConcatStr
  loc_B3CD20: FStStrNoPop var_18C
  loc_B3CD23: ILdRf var_90
  loc_B3CD26: ConcatStr
  loc_B3CD27: FStStrNoPop var_190
  loc_B3CD2A: LitStr Chr(37) & "' AND FechAuto BETWEEN "
  loc_B3CD2D: ConcatStr
  loc_B3CD2E: FStStrNoPop var_194
  loc_B3CD31: ILdRf GenerarEjecucion
  loc_B3CD34: ConcatStr
  loc_B3CD35: FStStrNoPop var_198
  loc_B3CD38: LitStr " AND "
  loc_B3CD3B: ConcatStr
  loc_B3CD3C: FStStrNoPop var_19C
  loc_B3CD3F: ILdRf var_98
  loc_B3CD42: ConcatStr
  loc_B3CD43: FStStrNoPop var_1A0
  loc_B3CD46: LitStr " GROUP BY PeriInfo"
  loc_B3CD49: ConcatStr
  loc_B3CD4A: FStStrNoPop var_1A4
  loc_B3CD4D: ILdRf var_A0
  loc_B3CD50: ConcatStr
  loc_B3CD51: FStStrNoPop var_1A8
  loc_B3CD54: LitStr ", "
  loc_B3CD57: ConcatStr
  loc_B3CD58: FStStrNoPop var_1AC
  loc_B3CD5B: ILdRf var_A4
  loc_B3CD5E: ConcatStr
  loc_B3CD5F: FStStrNoPop var_1B0
  loc_B3CD62: LitStr " ORDER BY PeriInfo, CodiOrga, CodiPart;"
  loc_B3CD65: ConcatStr
  loc_B3CD66: FStStrNoPop var_1B4
  loc_B3CD69: Call RedefineRS(from_stack_1v)
  loc_B3CD6E: FFreeStr var_F0 = "": var_F4 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = ""
  loc_B3CD9D: LitStr " INSERT INTO tmp (PeriInfo,CodiOrga,CodiPart,PrevImpu,DefiImpu,DeveImpu,MapaImpu,PagaImpu)"
  loc_B3CDA0: LitStr " SELECT PeriInfo, Rpad(Left(CodiOrga,1),"
  loc_B3CDA3: ConcatStr
  loc_B3CDA4: FStStrNoPop var_F0
  loc_B3CDA7: LitI2_Byte 6
  loc_B3CDA9: CStrUI1
  loc_B3CDAB: FStStrNoPop var_F4
  loc_B3CDAE: ConcatStr
  loc_B3CDAF: FStStrNoPop var_168
  loc_B3CDB2: LitStr ",'0'), "
  loc_B3CDB5: ConcatStr
  loc_B3CDB6: FStStrNoPop var_16C
  loc_B3CDB9: ILdRf var_9C
  loc_B3CDBC: ConcatStr
  loc_B3CDBD: FStStrNoPop var_170
  loc_B3CDC0: LitStr ", Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_B3CDC3: ConcatStr
  loc_B3CDC4: FStStrNoPop var_174
  loc_B3CDC7: LitStr " FROM imputacion tbl"
  loc_B3CDCA: ConcatStr
  loc_B3CDCB: FStStrNoPop var_178
  loc_B3CDCE: LitStr " WHERE PeriInfo = "
  loc_B3CDD1: ConcatStr
  loc_B3CDD2: FStStrNoPop var_17C
  loc_B3CDD5: ILdRf var_8C
  loc_B3CDD8: ConcatStr
  loc_B3CDD9: FStStrNoPop var_180
  loc_B3CDDC: LitStr " AND CodiPart "
  loc_B3CDDF: ConcatStr
  loc_B3CDE0: FStStrNoPop var_184
  loc_B3CDE3: ILdRf var_A8
  loc_B3CDE6: ConcatStr
  loc_B3CDE7: FStStrNoPop var_188
  loc_B3CDEA: LitStr " LIKE '"
  loc_B3CDED: ConcatStr
  loc_B3CDEE: FStStrNoPop var_18C
  loc_B3CDF1: ILdRf var_90
  loc_B3CDF4: ConcatStr
  loc_B3CDF5: FStStrNoPop var_190
  loc_B3CDF8: LitStr Chr(37) & "' AND FechImpu BETWEEN "
  loc_B3CDFB: ConcatStr
  loc_B3CDFC: FStStrNoPop var_194
  loc_B3CDFF: ILdRf GenerarEjecucion
  loc_B3CE02: ConcatStr
  loc_B3CE03: FStStrNoPop var_198
  loc_B3CE06: LitStr " AND "
  loc_B3CE09: ConcatStr
  loc_B3CE0A: FStStrNoPop var_19C
  loc_B3CE0D: ILdRf var_98
  loc_B3CE10: ConcatStr
  loc_B3CE11: FStStrNoPop var_1A0
  loc_B3CE14: LitStr " GROUP BY PeriInfo"
  loc_B3CE17: ConcatStr
  loc_B3CE18: FStStrNoPop var_1A4
  loc_B3CE1B: ILdRf var_A0
  loc_B3CE1E: ConcatStr
  loc_B3CE1F: FStStrNoPop var_1A8
  loc_B3CE22: LitStr ", "
  loc_B3CE25: ConcatStr
  loc_B3CE26: FStStrNoPop var_1AC
  loc_B3CE29: ILdRf var_A4
  loc_B3CE2C: ConcatStr
  loc_B3CE2D: FStStrNoPop var_1B0
  loc_B3CE30: LitStr " ORDER BY PeriInfo, CodiOrga, CodiPart;"
  loc_B3CE33: ConcatStr
  loc_B3CE34: FStStrNoPop var_1B4
  loc_B3CE37: Call RedefineRS(from_stack_1v)
  loc_B3CE3C: FFreeStr var_F0 = "": var_F4 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = ""
  loc_B3CE6B: LitStr "SELECT tmp.PeriInfo, tmp.CodiOrga, DetaOrga, tmp.CodiPart, DetaPart, Sum(AutoAuto) AutoAuto, Sum(AumeAuto) AumeAuto, Sum(DismAuto) DismAuto"
  loc_B3CE6E: LitStr ", Sum(DefiImpu) PrevImpu, Sum(PrevImpuMes1) PrevImpuMes1, Sum(PrevImpuMes2) PrevImpuMes2, Sum(PrevImpuMes3) PrevImpuMes3, Sum(PrevImpuMes4) PrevImpuMes4, Sum(PrevImpuMes5) PrevImpuMes5, Sum(PrevImpuMes6) PrevImpuMes6, Sum(PrevImpuMes7) PrevImpuMes7, Sum(PrevImpuMes8) PrevImpuMes8, Sum(PrevImpuMes9) PrevImpuMes9, Sum(PrevImpuMes10) PrevImpuMes10, Sum(PrevImpuMes11) PrevImpuMes11, Sum(PrevImpuMes12) PrevImpuMes12"
  loc_B3CE71: ConcatStr
  loc_B3CE72: FStStrNoPop var_F0
  loc_B3CE75: LitStr ", Sum(DefiImpu) DefiImpu, Sum(DefiImpuMes1) DefiImpuMes1, Sum(DefiImpuMes2) DefiImpuMes2, Sum(DefiImpuMes3) DefiImpuMes3, Sum(DefiImpuMes4) DefiImpuMes4, Sum(DefiImpuMes5) DefiImpuMes5, Sum(DefiImpuMes6) DefiImpuMes6, Sum(DefiImpuMes7) DefiImpuMes7, Sum(DefiImpuMes8) DefiImpuMes8, Sum(DefiImpuMes9) DefiImpuMes9, Sum(DefiImpuMes10) DefiImpuMes10, Sum(DefiImpuMes11) DefiImpuMes11, Sum(DefiImpuMes12) DefiImpuMes12"
  loc_B3CE78: ConcatStr
  loc_B3CE79: FStStrNoPop var_F4
  loc_B3CE7C: LitStr ", Sum(DeveImpu) DeveImpu, Sum(DeveImpuMes1) DeveImpuMes1, Sum(DeveImpuMes2) DeveImpuMes2, Sum(DeveImpuMes3) DeveImpuMes3, Sum(DeveImpuMes4) DeveImpuMes4, Sum(DeveImpuMes5) DeveImpuMes5, Sum(DeveImpuMes6) DeveImpuMes6, Sum(DeveImpuMes7) DeveImpuMes7, Sum(DeveImpuMes8) DeveImpuMes8, Sum(DeveImpuMes9) DeveImpuMes9, Sum(DeveImpuMes10) DeveImpuMes10, Sum(DeveImpuMes11) DeveImpuMes11, Sum(DeveImpuMes12) DeveImpuMes12"
  loc_B3CE7F: ConcatStr
  loc_B3CE80: FStStrNoPop var_168
  loc_B3CE83: LitStr ", Sum(MapaImpu) MapaImpu, Sum(MapaImpuMes1) MapaImpuMes1, Sum(MapaImpuMes2) MapaImpuMes2, Sum(MapaImpuMes3) MapaImpuMes3, Sum(MapaImpuMes4) MapaImpuMes4, Sum(MapaImpuMes5) MapaImpuMes5, Sum(MapaImpuMes6) MapaImpuMes6, Sum(MapaImpuMes7) MapaImpuMes7, Sum(MapaImpuMes8) MapaImpuMes8, Sum(MapaImpuMes9) MapaImpuMes9, Sum(MapaImpuMes10) MapaImpuMes10, Sum(MapaImpuMes11) MapaImpuMes11, Sum(MapaImpuMes12) MapaImpuMes12"
  loc_B3CE86: ConcatStr
  loc_B3CE87: FStStrNoPop var_16C
  loc_B3CE8A: LitStr ", Sum(PagaImpu) PagaImpu, Sum(PagaImpuMes1) PagaImpuMes1, Sum(PagaImpuMes2) PagaImpuMes2, Sum(PagaImpuMes3) PagaImpuMes3, Sum(PagaImpuMes4) PagaImpuMes4, Sum(PagaImpuMes5) PagaImpuMes5, Sum(PagaImpuMes6) PagaImpuMes6, Sum(PagaImpuMes7) PagaImpuMes7, Sum(PagaImpuMes8) PagaImpuMes8, Sum(PagaImpuMes9) PagaImpuMes9, Sum(PagaImpuMes10) PagaImpuMes10, Sum(PagaImpuMes11) PagaImpuMes11, Sum(PagaImpuMes12) PagaImpuMes12"
  loc_B3CE8D: ConcatStr
  loc_B3CE8E: FStStrNoPop var_170
  loc_B3CE91: LitStr " FROM tmp"
  loc_B3CE94: ConcatStr
  loc_B3CE95: FStStrNoPop var_174
  loc_B3CE98: LitStr " INNER JOIN infogov.organigrama ON organigrama.PeriInfo = tmp.PeriInfo AND organigrama.CodiOrga = tmp.CodiOrga"
  loc_B3CE9B: ConcatStr
  loc_B3CE9C: FStStrNoPop var_178
  loc_B3CE9F: LitStr " INNER JOIN partida ON partida.PeriInfo = tmp.PeriInfo AND partida.CodiPart = tmp.CodiPart"
  loc_B3CEA2: ConcatStr
  loc_B3CEA3: FStStrNoPop var_17C
  loc_B3CEA6: LitStr " GROUP BY tmp.PeriInfo"
  loc_B3CEA9: ConcatStr
  loc_B3CEAA: CVarStr var_114
  loc_B3CEAD: LitVarStr var_134, vbNullString
  loc_B3CEB2: FStVarCopyObj var_EC
  loc_B3CEB5: FLdRfVar var_EC
  loc_B3CEB8: LitVarStr var_CC, ", tmp.CodiOrga"
  loc_B3CEBD: FStVarCopyObj var_DC
  loc_B3CEC0: FLdRfVar var_DC
  loc_B3CEC3: FLdI2 Consolidado
  loc_B3CEC6: NotI4
  loc_B3CEC7: CVarBoolI2 var_BC
  loc_B3CECB: FLdRfVar var_104
  loc_B3CECE: ImpAdCallFPR4  = IIf(, , )
  loc_B3CED3: FLdRfVar var_104
  loc_B3CED6: ConcatVar var_124
  loc_B3CEDA: LitVarStr var_144, ", tmp.CodiPart"
  loc_B3CEDF: ConcatVar var_154
  loc_B3CEE3: LitVarStr var_1D0, " ORDER BY "
  loc_B3CEE8: ConcatVar var_164
  loc_B3CEEC: LitVarStr var_210, "PeriInfo, CodiOrga, CodiPart"
  loc_B3CEF1: FStVarCopyObj var_220
  loc_B3CEF4: FLdRfVar var_220
  loc_B3CEF7: LitVarStr var_1F0, "PeriInfo, CodiPart"
  loc_B3CEFC: FStVarCopyObj var_200
  loc_B3CEFF: FLdRfVar var_200
  loc_B3CF02: FLdRfVar Consolidado
  loc_B3CF05: CVarRef
  loc_B3CF0A: FLdRfVar var_230
  loc_B3CF0D: ImpAdCallFPR4  = IIf(, , )
  loc_B3CF12: FLdRfVar var_230
  loc_B3CF15: ConcatVar var_240
  loc_B3CF19: LitVarStr var_250, ";"
  loc_B3CF1E: ConcatVar var_260
  loc_B3CF22: CStrVarVal var_180
  loc_B3CF26: Call RedefineRS(from_stack_1v)
  loc_B3CF2B: FFreeStr var_F0 = "": var_F4 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = ""
  loc_B3CF40: FFreeVar var_BC = "": var_DC = "": var_EC = "": var_114 = "": var_104 = "": var_124 = "": var_154 = "": var_200 = "": var_220 = "": var_164 = "": var_230 = "": var_240 = ""
  loc_B3CF5D: FLdRfVar var_264
  loc_B3CF60: FLdPr Me
  loc_B3CF63: MemLdPr RsFrm
  loc_B3CF66:  = Me.RecordCount
  loc_B3CF6B: ILdRf var_264
  loc_B3CF6E: LitI4 0
  loc_B3CF73: GtI4
  loc_B3CF74: FStI2 var_86
  loc_B3CF77: ExitProcCbHresult
End Function

Public Function GenerarA3949anexoVI(PeriInfo, Trimestre, Sintetico, Consolidado) 'AD5CE8
  'Data Table: 4AFD00
  loc_AD5750: ILdRf PeriInfo
  loc_AD5753: FStStrCopy var_8C
  loc_AD5756: FLdUI1
  loc_AD575A: CI2UI1
  loc_AD575C: LitI2_Byte 3
  loc_AD575E: MulI2
  loc_AD575F: CUI1I2
  loc_AD5761: FStUI1 var_9C
  loc_AD5765: FLdUI1
  loc_AD5769: CI2UI1
  loc_AD576B: LitI2_Byte 2
  loc_AD576D: SubI2
  loc_AD576E: CUI1I2
  loc_AD5770: FStUI1 var_9A
  loc_AD5774: LitVarStr var_DC, "CodiPart"
  loc_AD5779: FStVarCopyObj var_EC
  loc_AD577C: FLdRfVar var_EC
  loc_AD577F: LitVarStr var_BC, "Concat(Left(CodiPart,3),'00000')"
  loc_AD5784: FStVarCopyObj var_CC
  loc_AD5787: FLdRfVar var_CC
  loc_AD578A: FLdRfVar Sintetico
  loc_AD578D: CVarRef
  loc_AD5792: FLdRfVar var_FC
  loc_AD5795: ImpAdCallFPR4  = IIf(, , )
  loc_AD579A: FLdRfVar var_FC
  loc_AD579D: CStrVarTmp
  loc_AD579E: FStStr var_90
  loc_AD57A1: FFreeVar var_CC = "": var_EC = ""
  loc_AD57AA: ILdRf var_8C
  loc_AD57AD: CI2Str
  loc_AD57AF: LitI2 2023
  loc_AD57B2: LeI2
  loc_AD57B3: BranchF loc_AD57F1
  loc_AD57B6: LitVarStr var_DC, vbNullString
  loc_AD57BB: FStVarCopyObj var_EC
  loc_AD57BE: FLdRfVar var_EC
  loc_AD57C1: LitVarStr var_BC, ", Left(CodiOrga,1)"
  loc_AD57C6: FStVarCopyObj var_CC
  loc_AD57C9: FLdRfVar var_CC
  loc_AD57CC: FLdI2 Consolidado
  loc_AD57CF: NotI4
  loc_AD57D0: CVarBoolI2 var_AC
  loc_AD57D4: FLdRfVar var_FC
  loc_AD57D7: ImpAdCallFPR4  = IIf(, , )
  loc_AD57DC: FLdRfVar var_FC
  loc_AD57DF: CStrVarTmp
  loc_AD57E0: FStStr var_98
  loc_AD57E3: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_AD57EE: Branch loc_AD5829
  loc_AD57F1: LitVarStr var_DC, vbNullString
  loc_AD57F6: FStVarCopyObj var_EC
  loc_AD57F9: FLdRfVar var_EC
  loc_AD57FC: LitVarStr var_BC, ", LEFT(infogov.fnArmarJeraOrga(tbl.PeriInfo,tbl.CodiOrga),1)"
  loc_AD5801: FStVarCopyObj var_CC
  loc_AD5804: FLdRfVar var_CC
  loc_AD5807: FLdI2 Consolidado
  loc_AD580A: NotI4
  loc_AD580B: CVarBoolI2 var_AC
  loc_AD580F: FLdRfVar var_FC
  loc_AD5812: ImpAdCallFPR4  = IIf(, , )
  loc_AD5817: FLdRfVar var_FC
  loc_AD581A: CStrVarTmp
  loc_AD581B: FStStr var_98
  loc_AD581E: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_AD5829: LitVarStr var_DC, "CodiPart"
  loc_AD582E: FStVarCopyObj var_EC
  loc_AD5831: FLdRfVar var_EC
  loc_AD5834: LitVarStr var_BC, "Left(CodiPart,3)"
  loc_AD5839: FStVarCopyObj var_CC
  loc_AD583C: FLdRfVar var_CC
  loc_AD583F: FLdRfVar Sintetico
  loc_AD5842: CVarRef
  loc_AD5847: FLdRfVar var_FC
  loc_AD584A: ImpAdCallFPR4  = IIf(, , )
  loc_AD584F: FLdRfVar var_FC
  loc_AD5852: CStrVarTmp
  loc_AD5853: FStStr GenerarA3949anexoVI
  loc_AD5856: FFreeVar var_CC = "": var_EC = ""
  loc_AD585F: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp;"
  loc_AD5862: LitStr " CREATE TEMPORARY TABLE tmp ("
  loc_AD5865: ConcatStr
  loc_AD5866: FStStrNoPop var_100
  loc_AD5869: LitStr " PeriInfo year(4) NOT NULL DEFAULT '0000',"
  loc_AD586C: ConcatStr
  loc_AD586D: FStStrNoPop var_104
  loc_AD5870: LitStr " CodiOrga varchar(7) NOT NULL DEFAULT '',"
  loc_AD5873: ConcatStr
  loc_AD5874: FStStrNoPop var_108
  loc_AD5877: LitStr " CodiPart varchar(9) NOT NULL DEFAULT '',"
  loc_AD587A: ConcatStr
  loc_AD587B: FStStrNoPop var_10C
  loc_AD587E: LitStr " DFini decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_AD5881: ConcatStr
  loc_AD5882: FStStrNoPop var_110
  loc_AD5885: LitStr " DFtrim decimal(12,2) NOT NULL DEFAULT '0.00'"
  loc_AD5888: ConcatStr
  loc_AD5889: FStStrNoPop var_114
  loc_AD588C: LitStr ") ;"
  loc_AD588F: ConcatStr
  loc_AD5890: FStStrNoPop var_118
  loc_AD5893: Call RedefineRS(from_stack_1v)
  loc_AD5898: FFreeStr var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_AD58A9: ILdRf var_8C
  loc_AD58AC: CI2Str
  loc_AD58AE: LitI2 2023
  loc_AD58B1: LeI2
  loc_AD58B2: BranchF loc_AD5ADC
  loc_AD58B5: LitStr "INSERT INTO tmp"
  loc_AD58B8: LitStr " SELECT i.PeriInfo, Concat(Left(CodiOrga,1),'"
  loc_AD58BB: ConcatStr
  loc_AD58BC: CVarStr var_FC
  loc_AD58BF: LitVarStr var_AC, "0"
  loc_AD58C4: FStVarCopyObj var_CC
  loc_AD58C7: FLdRfVar var_CC
  loc_AD58CA: LitI4 5
  loc_AD58CF: FLdRfVar var_EC
  loc_AD58D2: ImpAdCallFPR4  = String(, )
  loc_AD58D7: FLdRfVar var_EC
  loc_AD58DA: ConcatVar var_128
  loc_AD58DE: LitVarStr var_BC, "'), "
  loc_AD58E3: ConcatVar var_138
  loc_AD58E7: ILdRf var_90
  loc_AD58EA: CVarStr var_DC
  loc_AD58ED: ConcatVar var_148
  loc_AD58F1: LitVarStr var_158, ", Sum(DeveImpu) - Sum(PagaImpu), 0"
  loc_AD58F6: ConcatVar var_168
  loc_AD58FA: LitVarStr var_178, " FROM imputacion i"
  loc_AD58FF: ConcatVar var_188
  loc_AD5903: LitVarStr var_198, " INNER JOIN paraconta ON paraconta.PeriInfo = i.PeriInfo"
  loc_AD5908: ConcatVar var_1A8
  loc_AD590C: LitVarStr var_1B8, " WHERE i.PeriInfo = "
  loc_AD5911: ConcatVar var_1C8
  loc_AD5915: ILdRf var_8C
  loc_AD5918: CVarStr var_1D8
  loc_AD591B: ConcatVar var_1E8
  loc_AD591F: LitVarStr var_1F8, " AND Month(FechImpu) < "
  loc_AD5924: ConcatVar var_208
  loc_AD5928: FLdUI1
  loc_AD592C: CVarUI1
  loc_AD5930: ConcatVar var_228
  loc_AD5934: LitVarStr var_238, " AND Left(CodiPart,1) <> PaexPaco"
  loc_AD5939: ConcatVar var_248
  loc_AD593D: LitVarStr var_258, " GROUP BY PeriInfo"
  loc_AD5942: ConcatVar var_268
  loc_AD5946: ILdRf var_98
  loc_AD5949: CVarStr var_278
  loc_AD594C: ConcatVar var_288
  loc_AD5950: LitVarStr var_298, ", "
  loc_AD5955: ConcatVar var_2A8
  loc_AD5959: ILdRf GenerarA3949anexoVI
  loc_AD595C: CVarStr var_2B8
  loc_AD595F: ConcatVar var_2C8
  loc_AD5963: LitVarStr var_2D8, " ORDER BY PeriInfo, CodiOrga, CodiPart; "
  loc_AD5968: ConcatVar var_2E8
  loc_AD596C: LitVarStr var_2F8, "INSERT INTO tmp"
  loc_AD5971: ConcatVar var_308
  loc_AD5975: LitVarStr var_318, " SELECT i.PeriInfo, Concat(Left(CodiOrga,1),'"
  loc_AD597A: ConcatVar var_328
  loc_AD597E: LitVarStr var_338, "0"
  loc_AD5983: FStVarCopyObj var_348
  loc_AD5986: FLdRfVar var_348
  loc_AD5989: LitI4 5
  loc_AD598E: FLdRfVar var_358
  loc_AD5991: ImpAdCallFPR4  = String(, )
  loc_AD5996: FLdRfVar var_358
  loc_AD5999: ConcatVar var_368
  loc_AD599D: LitVarStr var_378, "'), "
  loc_AD59A2: ConcatVar var_388
  loc_AD59A6: ILdRf var_90
  loc_AD59A9: CVarStr var_398
  loc_AD59AC: ConcatVar var_3A8
  loc_AD59B0: LitVarStr var_3B8, ", 0, Sum(DeveImpu) - Sum(PagaImpu)"
  loc_AD59B5: ConcatVar var_3C8
  loc_AD59B9: LitVarStr var_3D8, " FROM imputacion i"
  loc_AD59BE: ConcatVar var_3E8
  loc_AD59C2: LitVarStr var_3F8, " INNER JOIN paraconta ON paraconta.PeriInfo = i.PeriInfo"
  loc_AD59C7: ConcatVar var_408
  loc_AD59CB: LitVarStr var_418, " WHERE i.PeriInfo = "
  loc_AD59D0: ConcatVar var_428
  loc_AD59D4: ILdRf var_8C
  loc_AD59D7: CVarStr var_438
  loc_AD59DA: ConcatVar var_448
  loc_AD59DE: LitVarStr var_458, " AND Month(FechImpu) BETWEEN "
  loc_AD59E3: ConcatVar var_468
  loc_AD59E7: FLdUI1
  loc_AD59EB: CVarUI1
  loc_AD59EF: ConcatVar var_488
  loc_AD59F3: LitVarStr var_498, " AND "
  loc_AD59F8: ConcatVar var_4A8
  loc_AD59FC: FLdUI1
  loc_AD5A00: CVarUI1
  loc_AD5A04: ConcatVar var_4C8
  loc_AD5A08: LitVarStr var_4D8, " AND Left(CodiPart,1) <> PaexPaco"
  loc_AD5A0D: ConcatVar var_4E8
  loc_AD5A11: LitVarStr var_4F8, " GROUP BY PeriInfo"
  loc_AD5A16: ConcatVar var_508
  loc_AD5A1A: ILdRf var_98
  loc_AD5A1D: CVarStr var_518
  loc_AD5A20: ConcatVar var_528
  loc_AD5A24: LitVarStr var_538, ", "
  loc_AD5A29: ConcatVar var_548
  loc_AD5A2D: ILdRf GenerarA3949anexoVI
  loc_AD5A30: CVarStr var_558
  loc_AD5A33: ConcatVar var_568
  loc_AD5A37: LitVarStr var_578, " ORDER BY PeriInfo, CodiOrga, CodiPart;"
  loc_AD5A3C: ConcatVar var_588
  loc_AD5A40: CStrVarVal var_100
  loc_AD5A44: Call RedefineRS(from_stack_1v)
  loc_AD5A49: FFree1Str var_100
  loc_AD5A4C: FFreeVar var_448 = "": var_468 = "": var_488 = "": var_4A8 = "": var_4C8 = "": var_4E8 = "": var_508 = "": var_528 = "": var_548 = "": var_568 = "": var_588 = "": var_CC = "": var_FC = "": var_EC = "": var_128 = "": var_138 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_288 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_308 = "": var_348 = "": var_328 = "": var_358 = "": var_368 = "": var_388 = "": var_3A8 = "": var_3C8 = "": var_3E8 = "": var_408 = ""
  loc_AD5AA1: LitStr " SELECT tmp.PeriInfo, tmp.CodiOrga, DetaOrga, tmp.CodiPart, DetaPart, Sum(DFini) AS DFini, Sum(DFtrim) AS DFtrim, Sum(DFini)+Sum(DFtrim) AS DFfin"
  loc_AD5AA4: LitStr " FROM tmp"
  loc_AD5AA7: ConcatStr
  loc_AD5AA8: FStStrNoPop var_100
  loc_AD5AAB: LitStr " INNER JOIN infogov.organigrama ON organigrama.PeriInfo = tmp.PeriInfo AND organigrama.CodiOrga = tmp.CodiOrga"
  loc_AD5AAE: ConcatStr
  loc_AD5AAF: FStStrNoPop var_104
  loc_AD5AB2: LitStr " INNER JOIN partida ON partida.PeriInfo = tmp.PeriInfo AND partida.CodiPart = tmp.CodiPart"
  loc_AD5AB5: ConcatStr
  loc_AD5AB6: FStStrNoPop var_108
  loc_AD5AB9: LitStr " GROUP BY tmp.PeriInfo, tmp.CodiOrga, tmp.CodiPart HAVING DFini <> 0 OR DFtrim <> 0"
  loc_AD5ABC: ConcatStr
  loc_AD5ABD: FStStrNoPop var_10C
  loc_AD5AC0: LitStr " ORDER BY PeriInfo, CodiOrga, CodiPart;"
  loc_AD5AC3: ConcatStr
  loc_AD5AC4: FStStrNoPop var_110
  loc_AD5AC7: Call RedefineRS(from_stack_1v)
  loc_AD5ACC: FFreeStr var_100 = "": var_104 = "": var_108 = "": var_10C = ""
  loc_AD5AD9: Branch loc_AD5CC5
  loc_AD5ADC: LitStr "INSERT INTO tmp"
  loc_AD5ADF: LitStr " SELECT i.PeriInfo, Left(infogov.fnArmarJeraOrga(o.PeriInfo,o.CodiOrga),1) JeraOrga, "
  loc_AD5AE2: ConcatStr
  loc_AD5AE3: FStStrNoPop var_100
  loc_AD5AE6: ILdRf var_90
  loc_AD5AE9: ConcatStr
  loc_AD5AEA: FStStrNoPop var_104
  loc_AD5AED: LitStr ", Sum(DeveImpu) - Sum(PagaImpu), 0"
  loc_AD5AF0: ConcatStr
  loc_AD5AF1: FStStrNoPop var_108
  loc_AD5AF4: LitStr " FROM imputacion i"
  loc_AD5AF7: ConcatStr
  loc_AD5AF8: FStStrNoPop var_10C
  loc_AD5AFB: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = i.PeriInfo"
  loc_AD5AFE: ConcatStr
  loc_AD5AFF: FStStrNoPop var_110
  loc_AD5B02: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = i.PeriInfo AND o.CodiOrga = i.CodiOrga"
  loc_AD5B05: ConcatStr
  loc_AD5B06: FStStrNoPop var_114
  loc_AD5B09: LitStr " WHERE i.PeriInfo = "
  loc_AD5B0C: ConcatStr
  loc_AD5B0D: FStStrNoPop var_118
  loc_AD5B10: ILdRf var_8C
  loc_AD5B13: ConcatStr
  loc_AD5B14: FStStrNoPop var_58C
  loc_AD5B17: LitStr " AND Month(FechImpu) < "
  loc_AD5B1A: ConcatStr
  loc_AD5B1B: FStStrNoPop var_590
  loc_AD5B1E: FLdUI1
  loc_AD5B22: CStrI2
  loc_AD5B24: FStStrNoPop var_594
  loc_AD5B27: ConcatStr
  loc_AD5B28: FStStrNoPop var_598
  loc_AD5B2B: LitStr " AND Left(CodiPart,1) <> PaexPaco"
  loc_AD5B2E: ConcatStr
  loc_AD5B2F: FStStrNoPop var_59C
  loc_AD5B32: LitStr " GROUP BY PeriInfo"
  loc_AD5B35: ConcatStr
  loc_AD5B36: FStStrNoPop var_5A0
  loc_AD5B39: ILdRf var_98
  loc_AD5B3C: ConcatStr
  loc_AD5B3D: FStStrNoPop var_5A4
  loc_AD5B40: LitStr ", "
  loc_AD5B43: ConcatStr
  loc_AD5B44: FStStrNoPop var_5A8
  loc_AD5B47: ILdRf GenerarA3949anexoVI
  loc_AD5B4A: ConcatStr
  loc_AD5B4B: FStStrNoPop var_5AC
  loc_AD5B4E: LitStr " ORDER BY PeriInfo, i.CodiOrga, CodiPart;"
  loc_AD5B51: ConcatStr
  loc_AD5B52: FStStrNoPop var_5B0
  loc_AD5B55: Call RedefineRS(from_stack_1v)
  loc_AD5B5A: FFreeStr var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_58C = "": var_590 = "": var_594 = "": var_598 = "": var_59C = "": var_5A0 = "": var_5A4 = "": var_5A8 = "": var_5AC = ""
  loc_AD5B7F: LitStr "INSERT INTO tmp"
  loc_AD5B82: LitStr " SELECT i.PeriInfo, Left(infogov.fnArmarJeraOrga(o.PeriInfo,o.CodiOrga),1) JeraOrga, "
  loc_AD5B85: ConcatStr
  loc_AD5B86: FStStrNoPop var_100
  loc_AD5B89: ILdRf var_90
  loc_AD5B8C: ConcatStr
  loc_AD5B8D: FStStrNoPop var_104
  loc_AD5B90: LitStr ", 0, Sum(DeveImpu) - Sum(PagaImpu)"
  loc_AD5B93: ConcatStr
  loc_AD5B94: FStStrNoPop var_108
  loc_AD5B97: LitStr " FROM imputacion i"
  loc_AD5B9A: ConcatStr
  loc_AD5B9B: FStStrNoPop var_10C
  loc_AD5B9E: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = i.PeriInfo"
  loc_AD5BA1: ConcatStr
  loc_AD5BA2: FStStrNoPop var_110
  loc_AD5BA5: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = i.PeriInfo AND o.CodiOrga = i.CodiOrga"
  loc_AD5BA8: ConcatStr
  loc_AD5BA9: FStStrNoPop var_114
  loc_AD5BAC: LitStr " WHERE i.PeriInfo = "
  loc_AD5BAF: ConcatStr
  loc_AD5BB0: FStStrNoPop var_118
  loc_AD5BB3: ILdRf var_8C
  loc_AD5BB6: ConcatStr
  loc_AD5BB7: FStStrNoPop var_58C
  loc_AD5BBA: LitStr " AND Month(FechImpu) BETWEEN "
  loc_AD5BBD: ConcatStr
  loc_AD5BBE: FStStrNoPop var_590
  loc_AD5BC1: FLdUI1
  loc_AD5BC5: CStrI2
  loc_AD5BC7: FStStrNoPop var_594
  loc_AD5BCA: ConcatStr
  loc_AD5BCB: FStStrNoPop var_598
  loc_AD5BCE: LitStr " AND "
  loc_AD5BD1: ConcatStr
  loc_AD5BD2: FStStrNoPop var_59C
  loc_AD5BD5: FLdUI1
  loc_AD5BD9: CStrI2
  loc_AD5BDB: FStStrNoPop var_5A0
  loc_AD5BDE: ConcatStr
  loc_AD5BDF: FStStrNoPop var_5A4
  loc_AD5BE2: LitStr " AND Left(CodiPart,1) <> PaexPaco"
  loc_AD5BE5: ConcatStr
  loc_AD5BE6: FStStrNoPop var_5A8
  loc_AD5BE9: LitStr " GROUP BY PeriInfo"
  loc_AD5BEC: ConcatStr
  loc_AD5BED: FStStrNoPop var_5AC
  loc_AD5BF0: ILdRf var_98
  loc_AD5BF3: ConcatStr
  loc_AD5BF4: FStStrNoPop var_5B0
  loc_AD5BF7: LitStr ", "
  loc_AD5BFA: ConcatStr
  loc_AD5BFB: FStStrNoPop var_5B4
  loc_AD5BFE: ILdRf GenerarA3949anexoVI
  loc_AD5C01: ConcatStr
  loc_AD5C02: FStStrNoPop var_5B8
  loc_AD5C05: LitStr " ORDER BY PeriInfo, i.CodiOrga, CodiPart;"
  loc_AD5C08: ConcatStr
  loc_AD5C09: FStStrNoPop var_5BC
  loc_AD5C0C: Call RedefineRS(from_stack_1v)
  loc_AD5C11: FFreeStr var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_58C = "": var_590 = "": var_594 = "": var_598 = "": var_59C = "": var_5A0 = "": var_5A4 = "": var_5A8 = "": var_5AC = "": var_5B0 = "": var_5B4 = "": var_5B8 = ""
  loc_AD5C3C: LitStr " SELECT tmp.PeriInfo, tmp.CodiOrga, DetaOrga, tmp.CodiPart, DetaPart, Sum(DFini) AS DFini, Sum(DFtrim) AS DFtrim, Sum(DFini)+Sum(DFtrim) AS DFfin"
  loc_AD5C3F: LitStr " FROM tmp"
  loc_AD5C42: ConcatStr
  loc_AD5C43: FStStrNoPop var_100
  loc_AD5C46: LitStr " INNER JOIN infogov.organigrama ON organigrama.PeriInfo = tmp.PeriInfo AND organigrama.CodiOrga = tmp.CodiOrga"
  loc_AD5C49: ConcatStr
  loc_AD5C4A: FStStrNoPop var_104
  loc_AD5C4D: LitStr " INNER JOIN partida ON partida.PeriInfo = tmp.PeriInfo AND partida.CodiPart = tmp.CodiPart"
  loc_AD5C50: ConcatStr
  loc_AD5C51: FStStrNoPop var_108
  loc_AD5C54: LitStr " GROUP BY tmp.PeriInfo"
  loc_AD5C57: ConcatStr
  loc_AD5C58: CVarStr var_128
  loc_AD5C5B: LitVarStr var_DC, ", tmp.CodiOrga"
  loc_AD5C60: FStVarCopyObj var_EC
  loc_AD5C63: FLdRfVar var_EC
  loc_AD5C66: LitVarStr var_BC, vbNullString
  loc_AD5C6B: FStVarCopyObj var_CC
  loc_AD5C6E: FLdRfVar var_CC
  loc_AD5C71: ILdRf var_98
  loc_AD5C74: LitStr vbNullString
  loc_AD5C77: EqStr
  loc_AD5C79: CVarBoolI2 var_AC
  loc_AD5C7D: FLdRfVar var_FC
  loc_AD5C80: ImpAdCallFPR4  = IIf(, , )
  loc_AD5C85: FLdRfVar var_FC
  loc_AD5C88: ConcatVar var_138
  loc_AD5C8C: LitVarStr var_158, ", tmp.CodiPart HAVING DFini <> 0 OR DFtrim <> 0"
  loc_AD5C91: ConcatVar var_148
  loc_AD5C95: LitVarStr var_178, " ORDER BY PeriInfo, CodiOrga, CodiPart;"
  loc_AD5C9A: ConcatVar var_168
  loc_AD5C9E: CStrVarVal var_10C
  loc_AD5CA2: Call RedefineRS(from_stack_1v)
  loc_AD5CA7: FFreeStr var_100 = "": var_104 = "": var_108 = ""
  loc_AD5CB2: FFreeVar var_AC = "": var_CC = "": var_EC = "": var_128 = "": var_FC = "": var_138 = "": var_148 = ""
  loc_AD5CC5: FLdRfVar var_5C0
  loc_AD5CC8: FLdPr Me
  loc_AD5CCB: MemLdPr RsFrm
  loc_AD5CCE:  = Me.RecordCount
  loc_AD5CD3: ILdRf var_5C0
  loc_AD5CD6: LitI4 0
  loc_AD5CDB: GtI4
  loc_AD5CDC: FStI2 var_86
  loc_AD5CDF: ExitProcCbHresult
  loc_AD5CE5: BranchFVar
End Function

Public Function NormasLegales(PeriInfo, CodiOrga, CodiPart, Desde, Hasta) 'A34258
  'Data Table: 4AFD00
  loc_A340A0: ILdRf CodiOrga
  loc_A340A3: FStStrCopy var_8C
  loc_A340A6: ILdRf CodiPart
  loc_A340A9: FStStrCopy var_90
  loc_A340AC: ILdRf Desde
  loc_A340AF: FStStrCopy NormasLegales
  loc_A340B2: ILdRf Hasta
  loc_A340B5: FStStrCopy var_98
  loc_A340B8: ZeroRetVal
  loc_A340BA: LitStr "SELECT DISTINCT NormAuto"
  loc_A340BD: LitStr " FROM autorizado"
  loc_A340C0: ConcatStr
  loc_A340C1: FStStrNoPop var_9C
  loc_A340C4: LitStr " WHERE PeriInfo = "
  loc_A340C7: ConcatStr
  loc_A340C8: FStStrNoPop var_A0
  loc_A340CB: FLdI2 PeriInfo
  loc_A340CE: CStrUI1
  loc_A340D0: FStStrNoPop var_A4
  loc_A340D3: ConcatStr
  loc_A340D4: FStStrNoPop var_A8
  loc_A340D7: LitStr " AND CodiPart like '"
  loc_A340DA: ConcatStr
  loc_A340DB: FStStrNoPop var_AC
  loc_A340DE: ILdRf var_90
  loc_A340E1: ConcatStr
  loc_A340E2: FStStrNoPop var_B0
  loc_A340E5: LitStr Chr(37) & "' AND CodiOrga like '"
  loc_A340E8: ConcatStr
  loc_A340E9: FStStrNoPop var_B4
  loc_A340EC: ILdRf var_8C
  loc_A340EF: ConcatStr
  loc_A340F0: FStStrNoPop var_B8
  loc_A340F3: LitStr Chr(37) & "'"
  loc_A340F6: ConcatStr
  loc_A340F7: FStStrNoPop var_BC
  loc_A340FA: LitStr " AND FechAuto BETWEEN "
  loc_A340FD: ConcatStr
  loc_A340FE: FStStrNoPop var_F0
  loc_A34101: LitI4 1
  loc_A34106: LitI4 1
  loc_A3410B: LitVarStr var_DC, "'yyyy-mm-dd'"
  loc_A34110: FStVarCopyObj var_EC
  loc_A34113: FLdRfVar var_EC
  loc_A34116: FLdRfVar NormasLegales
  loc_A34119: CVarRef
  loc_A3411E: ImpAdCallI2 Format$(, )
  loc_A34123: FStStrNoPop var_F4
  loc_A34126: ConcatStr
  loc_A34127: FStStrNoPop var_F8
  loc_A3412A: LitStr " AND "
  loc_A3412D: ConcatStr
  loc_A3412E: FStStrNoPop var_12C
  loc_A34131: LitI4 1
  loc_A34136: LitI4 1
  loc_A3413B: LitVarStr var_118, "'yyyy-mm-dd'"
  loc_A34140: FStVarCopyObj var_128
  loc_A34143: FLdRfVar var_128
  loc_A34146: FLdRfVar var_98
  loc_A34149: CVarRef
  loc_A3414E: ImpAdCallI2 Format$(, )
  loc_A34153: FStStrNoPop var_130
  loc_A34156: ConcatStr
  loc_A34157: FStStrNoPop var_134
  loc_A3415A: Call EjecutarRsCls(from_stack_1v)
  loc_A3415F: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_12C = "": var_130 = ""
  loc_A34180: FFreeVar var_EC = ""
  loc_A34187: FLdPr Me
  loc_A3418A: MemLdStr global_56
  loc_A3418D: FStAd var_138 
  loc_A34191: FLdRfVar var_13C
  loc_A34194: FLdPr var_138
  loc_A34197:  = Me.RecordCount
  loc_A3419C: ILdRf var_13C
  loc_A3419F: LitI4 0
  loc_A341A4: GtI4
  loc_A341A5: BranchF loc_A34244
  loc_A341A8: LitI2_Byte 1
  loc_A341AA: FLdRfVar var_13E
  loc_A341AD: FLdRfVar var_13C
  loc_A341B0: FLdPr var_138
  loc_A341B3:  = Me.RecordCount
  loc_A341B8: ILdRf var_13C
  loc_A341BB: CI2I4
  loc_A341BC: ForI2 var_148
  loc_A341C2: ILdRf var_144
  loc_A341C5: CVarStr var_DC
  loc_A341C8: FLdRfVar var_EC
  loc_A341CB: FLdRfVar var_150
  loc_A341CE: LitVarStr var_CC, "NormAuto"
  loc_A341D3: PopAdLdVar
  loc_A341D4: FLdRfVar var_14C
  loc_A341D7: FLdPr var_138
  loc_A341DA:  = Me.Fields
  loc_A341DF: FLdPr var_14C
  loc_A341E2: from_stack_2 = Me.Item(from_stack_1)
  loc_A341E7: FLdPr var_150
  loc_A341EA:  = Me.Value
  loc_A341EF: FLdRfVar var_EC
  loc_A341F2: ConcatVar var_128
  loc_A341F6: LitVarStr var_108, "<br>"
  loc_A341FB: ConcatVar var_160
  loc_A341FF: CStrVarTmp
  loc_A34200: FStStr var_144
  loc_A34203: FFreeAd var_14C = ""
  loc_A3420A: FFreeVar var_EC = "": var_128 = ""
  loc_A34213: LitVar_Missing var_CC
  loc_A34216: PopAdLdVar
  loc_A34217: LitI4 1
  loc_A3421C: FLdPr var_138
  loc_A3421F: Me.Move from_stack_1, from_stack_2
  loc_A34224: FLdRfVar var_13E
  loc_A34227: NextI2 var_148, loc_A341C2
  loc_A3422C: ILdRf var_144
  loc_A3422F: FnLenStr
  loc_A34230: LitI4 4
  loc_A34235: SubI4
  loc_A34236: ILdRf var_144
  loc_A34239: ImpAdCallI2 Left$(, )
  loc_A3423E: FStStr var_88
  loc_A34241: Branch loc_A3424A
  loc_A34244: LitStr vbNullString
  loc_A34247: FStStrCopy var_88
  loc_A3424A: LitNothing
  loc_A3424C: FStAd var_138 
  loc_A34250: ExitProcCbHresult
End Function

Public Function BuscaSaldAuto(ePart, eOrga, FechAuto) 'A3F3B0
  'Data Table: 4AFD00
  loc_A3F19C: ILdRf FechAuto
  loc_A3F19F: FStStrCopy var_90
  loc_A3F1A2: LitStr "Municipalidad de Guaymallén"
  loc_A3F1A5: FStStrCopy BuscaSaldAuto
  loc_A3F1A8: ILdRf BuscaSaldAuto
  loc_A3F1AB: LitStr "Municipalidad de Maipú"
  loc_A3F1AE: EqStr
  loc_A3F1B0: BranchT loc_A3F1BE
  loc_A3F1B3: ILdRf BuscaSaldAuto
  loc_A3F1B6: LitStr "Municipalidad de La Paz"
  loc_A3F1B9: EqStr
  loc_A3F1BB: BranchF loc_A3F27D
  loc_A3F1BE: LitVarStr var_C4, "SELECT contpres.fnSaldoVota("
  loc_A3F1C3: FLdRfVar var_90
  loc_A3F1C6: CVarRef
  loc_A3F1CB: FLdRfVar var_B4
  loc_A3F1CE: ImpAdCallFPR4  = Year()
  loc_A3F1D3: FLdRfVar var_B4
  loc_A3F1D6: ConcatVar var_D4
  loc_A3F1DA: LitVarStr var_E4, ", '"
  loc_A3F1DF: ConcatVar var_F4
  loc_A3F1E3: FLdRfVar var_F8
  loc_A3F1E6: ILdPr
  loc_A3F1E9: from_stack_1v = tblpartida.CodiPartGet()
  loc_A3F1EE: FLdZeroAd var_F8
  loc_A3F1F1: CVarStr var_108
  loc_A3F1F4: ConcatVar var_118
  loc_A3F1F8: LitVarStr var_128, "', '"
  loc_A3F1FD: ConcatVar var_138
  loc_A3F201: FLdRfVar var_13C
  loc_A3F204: ILdPr
  loc_A3F207: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_A3F20C: FLdZeroAd var_13C
  loc_A3F20F: CVarStr var_14C
  loc_A3F212: ConcatVar var_15C
  loc_A3F216: LitVarStr var_16C, "', "
  loc_A3F21B: ConcatVar var_17C
  loc_A3F21F: LitI4 1
  loc_A3F224: LitI4 1
  loc_A3F229: LitVarStr var_19C, "'yyyy-mm-dd'"
  loc_A3F22E: FStVarCopyObj var_1AC
  loc_A3F231: FLdRfVar var_1AC
  loc_A3F234: FLdRfVar var_90
  loc_A3F237: CVarRef
  loc_A3F23C: ImpAdCallI2 Format$(, )
  loc_A3F241: CVarStr var_1BC
  loc_A3F244: ConcatVar var_1CC
  loc_A3F248: LitVarStr var_1DC, ") SaldAuto"
  loc_A3F24D: ConcatVar var_1EC
  loc_A3F251: CStrVarVal var_1F0
  loc_A3F255: Call EjecutarRsCls(from_stack_1v)
  loc_A3F25A: FFree1Str var_1F0
  loc_A3F25D: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_108 = "": var_118 = "": var_138 = "": var_14C = "": var_15C = "": var_1AC = "": var_17C = "": var_1BC = "": var_1CC = ""
  loc_A3F27A: Branch loc_A3F339
  loc_A3F27D: LitVarStr var_C4, "SELECT contpres.fnSaldoVota("
  loc_A3F282: FLdRfVar var_90
  loc_A3F285: CVarRef
  loc_A3F28A: FLdRfVar var_B4
  loc_A3F28D: ImpAdCallFPR4  = Year()
  loc_A3F292: FLdRfVar var_B4
  loc_A3F295: ConcatVar var_D4
  loc_A3F299: LitVarStr var_E4, ", '"
  loc_A3F29E: ConcatVar var_F4
  loc_A3F2A2: FLdRfVar var_F8
  loc_A3F2A5: ILdPr
  loc_A3F2A8: from_stack_1v = tblpartida.CodiPartGet()
  loc_A3F2AD: FLdZeroAd var_F8
  loc_A3F2B0: CVarStr var_108
  loc_A3F2B3: ConcatVar var_118
  loc_A3F2B7: LitVarStr var_128, "', '"
  loc_A3F2BC: ConcatVar var_138
  loc_A3F2C0: FLdRfVar var_13C
  loc_A3F2C3: ILdPr
  loc_A3F2C6: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_A3F2CB: FLdZeroAd var_13C
  loc_A3F2CE: CVarStr var_14C
  loc_A3F2D1: ConcatVar var_15C
  loc_A3F2D5: LitVarStr var_16C, "', "
  loc_A3F2DA: ConcatVar var_17C
  loc_A3F2DE: LitI4 1
  loc_A3F2E3: LitI4 1
  loc_A3F2E8: LitVarStr var_19C, "'yyyy-mm-dd'"
  loc_A3F2ED: FStVarCopyObj var_1AC
  loc_A3F2F0: FLdRfVar var_1AC
  loc_A3F2F3: FLdRfVar var_90
  loc_A3F2F6: CVarRef
  loc_A3F2FB: ImpAdCallI2 Format$(, )
  loc_A3F300: CVarStr var_1BC
  loc_A3F303: ConcatVar var_1CC
  loc_A3F307: LitVarStr var_1DC, ") SaldAuto"
  loc_A3F30C: ConcatVar var_1EC
  loc_A3F310: CStrVarVal var_1F0
  loc_A3F314: Call EjecutarRsCls(from_stack_1v)
  loc_A3F319: FFree1Str var_1F0
  loc_A3F31C: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_108 = "": var_118 = "": var_138 = "": var_14C = "": var_15C = "": var_1AC = "": var_17C = "": var_1BC = "": var_1CC = ""
  loc_A3F339: FLdRfVar var_1F4
  loc_A3F33C: FLdPr Me
  loc_A3F33F: MemLdPr global_56
  loc_A3F342:  = Me.RecordCount
  loc_A3F347: ILdRf var_1F4
  loc_A3F34A: LitI4 0
  loc_A3F34F: GtI4
  loc_A3F350: BranchF loc_A3F3AA
  loc_A3F353: FLdRfVar var_B4
  loc_A3F356: FLdRfVar var_1FC
  loc_A3F359: LitVarStr var_A4, "SaldAuto"
  loc_A3F35E: PopAdLdVar
  loc_A3F35F: FLdRfVar var_1F8
  loc_A3F362: FLdPr Me
  loc_A3F365: MemLdPr global_56
  loc_A3F368:  = Me.Fields
  loc_A3F36D: FLdPr var_1F8
  loc_A3F370: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F375: FLdPr var_1FC
  loc_A3F378:  = Me.Value
  loc_A3F37D: LitI4 2
  loc_A3F382: FLdRfVar var_B4
  loc_A3F385: FnCDblVar
  loc_A3F387: CVarR8
  loc_A3F38B: FLdRfVar var_F4
  loc_A3F38E: ImpAdCallFPR4  = Round(, )
  loc_A3F393: FLdRfVar var_F4
  loc_A3F396: CR4Var
  loc_A3F397: FStFPR8 var_8C
  loc_A3F39A: FFreeAd var_1F8 = ""
  loc_A3F3A1: FFreeVar var_B4 = "": var_D4 = ""
  loc_A3F3AA: ExitProcCbHresult
End Function

Public Function BuscaSaldAutoJuri(PeriInfo, CodiPart, FechAuto) 'A31FD8
  'Data Table: 4AFD00
  loc_A31E20: ILdRf PeriInfo
  loc_A31E23: FStStrCopy var_8C
  loc_A31E26: ILdRf CodiPart
  loc_A31E29: FStStrCopy var_90
  loc_A31E2C: ILdRf FechAuto
  loc_A31E2F: FStStrCopy BuscaSaldAutoJuri
  loc_A31E32: ZeroRetVal
  loc_A31E34: LitStr "SELECT Left(CodiOrga,1) as CodiOrga, sum(AutoAuto)+sum(AumeAuto)-sum(DismAuto) as Saldo"
  loc_A31E37: LitStr " FROM autorizado"
  loc_A31E3A: ConcatStr
  loc_A31E3B: FStStrNoPop var_9C
  loc_A31E3E: LitStr " WHERE PeriInfo="
  loc_A31E41: ConcatStr
  loc_A31E42: FStStrNoPop var_A0
  loc_A31E45: ILdRf var_8C
  loc_A31E48: ConcatStr
  loc_A31E49: FStStrNoPop var_A4
  loc_A31E4C: LitStr " AND CodiPart='"
  loc_A31E4F: ConcatStr
  loc_A31E50: FStStrNoPop var_A8
  loc_A31E53: ILdRf var_90
  loc_A31E56: ConcatStr
  loc_A31E57: FStStrNoPop var_AC
  loc_A31E5A: LitStr "' AND FechAuto<="
  loc_A31E5D: ConcatStr
  loc_A31E5E: CVarStr var_FC
  loc_A31E61: LitI4 1
  loc_A31E66: LitI4 1
  loc_A31E6B: LitVarStr var_CC, "'yyyy-mm-dd'"
  loc_A31E70: FStVarCopyObj var_DC
  loc_A31E73: FLdRfVar var_DC
  loc_A31E76: FLdRfVar BuscaSaldAutoJuri
  loc_A31E79: CVarRef
  loc_A31E7E: FLdRfVar var_EC
  loc_A31E81: ImpAdCallFPR4  = Format(, )
  loc_A31E86: FLdRfVar var_EC
  loc_A31E89: ConcatVar var_10C
  loc_A31E8D: LitVarStr var_11C, " GROUP BY Left(CodiOrga,1)"
  loc_A31E92: ConcatVar var_12C
  loc_A31E96: CStrVarVal var_130
  loc_A31E9A: Call EjecutarRsCls(from_stack_1v)
  loc_A31E9F: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A31EAE: FFreeVar var_DC = "": var_FC = "": var_EC = "": var_10C = ""
  loc_A31EBB: FLdRfVar var_134
  loc_A31EBE: FLdPr Me
  loc_A31EC1: MemLdPr global_56
  loc_A31EC4:  = Me.RecordCount
  loc_A31EC9: ILdRf var_134
  loc_A31ECC: LitI4 0
  loc_A31ED1: GtI4
  loc_A31ED2: BranchF loc_A31FCC
  loc_A31ED5: FLdPr Me
  loc_A31ED8: MemLdStr global_56
  loc_A31EDB: FStAd var_138 
  loc_A31EDF: FLdPr var_138
  loc_A31EE2: Me.MoveFirst
  loc_A31EE7: LitStr " ---> Crédito Autorizado Definitivo: "
  loc_A31EEA: FStStrCopy var_98
  loc_A31EED: FLdRfVar var_148
  loc_A31EF0: LitVarStr var_11C, "Saldo"
  loc_A31EF5: PopAdLdVar
  loc_A31EF6: FLdRfVar var_144
  loc_A31EF9: FLdPr var_138
  loc_A31EFC:  = Me.Fields
  loc_A31F01: FLdPr var_144
  loc_A31F04: from_stack_2 = Me.Item(from_stack_1)
  loc_A31F09: ILdRf var_98
  loc_A31F0C: LitStr "(Jurisdicción "
  loc_A31F0F: ConcatStr
  loc_A31F10: CVarStr var_EC
  loc_A31F13: FLdRfVar var_DC
  loc_A31F16: FLdRfVar var_140
  loc_A31F19: LitVarStr var_BC, "CodiOrga"
  loc_A31F1E: PopAdLdVar
  loc_A31F1F: FLdRfVar var_13C
  loc_A31F22: FLdPr var_138
  loc_A31F25:  = Me.Fields
  loc_A31F2A: FLdPr var_13C
  loc_A31F2D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31F32: FLdPr var_140
  loc_A31F35:  = Me.Value
  loc_A31F3A: FLdRfVar var_DC
  loc_A31F3D: ConcatVar var_FC
  loc_A31F41: LitVarStr var_CC, ": "
  loc_A31F46: ConcatVar var_10C
  loc_A31F4A: LitI4 -1
  loc_A31F4F: LitI4 0
  loc_A31F54: LitI4 -1
  loc_A31F59: LitI4 2
  loc_A31F5E: FLdZeroAd var_148
  loc_A31F61: CVarAd
  loc_A31F65: ImpAdCallI2 FormatNumber(, , , , )
  loc_A31F6A: CVarStr var_158
  loc_A31F6D: ConcatVar var_168
  loc_A31F71: LitVarStr var_178, ") "
  loc_A31F76: ConcatVar var_188
  loc_A31F7A: CStrVarTmp
  loc_A31F7B: FStStr var_98
  loc_A31F7E: FFreeAd var_13C = "": var_140 = ""
  loc_A31F87: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_12C = "": var_10C = "": var_158 = "": var_168 = ""
  loc_A31F9A: LitVar_Missing var_BC
  loc_A31F9D: PopAdLdVar
  loc_A31F9E: LitI4 1
  loc_A31FA3: FLdPr var_138
  loc_A31FA6: Me.Move from_stack_1, from_stack_2
  loc_A31FAB: FLdRfVar var_18A
  loc_A31FAE: FLdPr var_138
  loc_A31FB1:  = Me.EOF
  loc_A31FB6: FLdI2 var_18A
  loc_A31FB9: NotI4
  loc_A31FBA: BranchT loc_A31EED
  loc_A31FBD: LitNothing
  loc_A31FBF: FStAd var_138 
  loc_A31FC3: ILdRf var_98
  loc_A31FC6: FStStrCopy var_88
  loc_A31FC9: Branch loc_A31FD2
  loc_A31FCC: LitStr vbNullString
  loc_A31FCF: FStStrCopy var_88
  loc_A31FD2: ExitProcCbHresult
End Function

Public Function BuscaPartExtra(PeriInfo) '9A36D4
  'Data Table: 4AFD00
  loc_9A366C: ILdRf PeriInfo
  loc_9A366F: FStStrCopy var_8C
  loc_9A3672: ZeroRetVal
  loc_9A3674: LitStr "SELECT PaexPaco FROM paraconta WHERE PeriInfo = "
  loc_9A3677: ILdRf var_8C
  loc_9A367A: ConcatStr
  loc_9A367B: FStStrNoPop var_90
  loc_9A367E: LitStr ";"
  loc_9A3681: ConcatStr
  loc_9A3682: FStStrNoPop BuscaPartExtra
  loc_9A3685: Call EjecutarRsCls(from_stack_1v)
  loc_9A368A: FFreeStr var_90 = ""
  loc_9A3691: FLdRfVar var_BC
  loc_9A3694: FLdRfVar var_AC
  loc_9A3697: LitVarStr var_A8, "PaexPaco"
  loc_9A369C: PopAdLdVar
  loc_9A369D: FLdRfVar var_98
  loc_9A36A0: FLdPr Me
  loc_9A36A3: MemLdPr global_56
  loc_9A36A6:  = Me.Fields
  loc_9A36AB: FLdPr var_98
  loc_9A36AE: from_stack_2 = Me.Item(from_stack_1)
  loc_9A36B3: FLdPr var_AC
  loc_9A36B6:  = Me.Value
  loc_9A36BB: FLdRfVar var_BC
  loc_9A36BE: CStrVarTmp
  loc_9A36BF: FStStr var_88
  loc_9A36C2: FFreeAd var_98 = ""
  loc_9A36C9: FFree1Var var_BC = ""
  loc_9A36CC: ExitProcCbHresult
End Function

Public Sub FormLoadTprevTdefiTdeve(PeriInfo, sFiltroMsk, FiltroCbo) 'A24A88
  'Data Table: 4AFD00
  loc_A248D0: ILdRf sFiltroMsk
  loc_A248D3: FStStrCopy var_88
  loc_A248D6: FLdRfVar var_8A
  loc_A248D9: ILdPr
  loc_A248DC:  = Me.ListIndex
  loc_A248E1: FLdI2 var_8A
  loc_A248E4: FStI2 var_8C
  loc_A248E7: FLdI2 var_8C
  loc_A248EA: LitI2_Byte &HFF
  loc_A248EC: EqI2
  loc_A248ED: BranchF loc_A248FB
  loc_A248F0: LitStr "CALL contpres.fnImputacion('0', '', '', '', '', '', '');"
  loc_A248F3: Call RedefineRS(from_stack_1v)
  loc_A248F8: Branch loc_A24A84
  loc_A248FB: FLdI2 var_8C
  loc_A248FE: LitI2_Byte 0
  loc_A24900: EqI2
  loc_A24901: BranchF loc_A2493D
  loc_A24904: LitStr "CALL contpres.fnImputacion('"
  loc_A24907: FLdI2 PeriInfo
  loc_A2490A: CStrUI1
  loc_A2490C: FStStrNoPop var_90
  loc_A2490F: ConcatStr
  loc_A24910: FStStrNoPop var_94
  loc_A24913: LitStr "', '"
  loc_A24916: ConcatStr
  loc_A24917: FStStrNoPop var_98
  loc_A2491A: ILdRf var_88
  loc_A2491D: ConcatStr
  loc_A2491E: FStStrNoPop var_9C
  loc_A24921: LitStr "', '', '', '', '', '');"
  loc_A24924: ConcatStr
  loc_A24925: FStStrNoPop var_A0
  loc_A24928: Call RedefineRS(from_stack_1v)
  loc_A2492D: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A2493A: Branch loc_A24A84
  loc_A2493D: FLdI2 var_8C
  loc_A24940: LitI2_Byte 1
  loc_A24942: EqI2
  loc_A24943: BranchF loc_A2497F
  loc_A24946: LitStr "CALL contpres.fnImputacion('"
  loc_A24949: FLdI2 PeriInfo
  loc_A2494C: CStrUI1
  loc_A2494E: FStStrNoPop var_90
  loc_A24951: ConcatStr
  loc_A24952: FStStrNoPop var_94
  loc_A24955: LitStr "', '', '"
  loc_A24958: ConcatStr
  loc_A24959: FStStrNoPop var_98
  loc_A2495C: ILdRf var_88
  loc_A2495F: ConcatStr
  loc_A24960: FStStrNoPop var_9C
  loc_A24963: LitStr "', '', '', '', '');"
  loc_A24966: ConcatStr
  loc_A24967: FStStrNoPop var_A0
  loc_A2496A: Call RedefineRS(from_stack_1v)
  loc_A2496F: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A2497C: Branch loc_A24A84
  loc_A2497F: FLdI2 var_8C
  loc_A24982: LitI2_Byte 2
  loc_A24984: EqI2
  loc_A24985: BranchF loc_A249C1
  loc_A24988: LitStr "CALL contpres.fnImputacion('"
  loc_A2498B: FLdI2 PeriInfo
  loc_A2498E: CStrUI1
  loc_A24990: FStStrNoPop var_90
  loc_A24993: ConcatStr
  loc_A24994: FStStrNoPop var_94
  loc_A24997: LitStr "', '', '', '"
  loc_A2499A: ConcatStr
  loc_A2499B: FStStrNoPop var_98
  loc_A2499E: ILdRf var_88
  loc_A249A1: ConcatStr
  loc_A249A2: FStStrNoPop var_9C
  loc_A249A5: LitStr "', '', '', '');"
  loc_A249A8: ConcatStr
  loc_A249A9: FStStrNoPop var_A0
  loc_A249AC: Call RedefineRS(from_stack_1v)
  loc_A249B1: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A249BE: Branch loc_A24A84
  loc_A249C1: FLdI2 var_8C
  loc_A249C4: LitI2_Byte 3
  loc_A249C6: EqI2
  loc_A249C7: BranchF loc_A24A03
  loc_A249CA: LitStr "CALL contpres.fnImputacion('"
  loc_A249CD: FLdI2 PeriInfo
  loc_A249D0: CStrUI1
  loc_A249D2: FStStrNoPop var_90
  loc_A249D5: ConcatStr
  loc_A249D6: FStStrNoPop var_94
  loc_A249D9: LitStr "', '', '', '', '"
  loc_A249DC: ConcatStr
  loc_A249DD: FStStrNoPop var_98
  loc_A249E0: ILdRf var_88
  loc_A249E3: ConcatStr
  loc_A249E4: FStStrNoPop var_9C
  loc_A249E7: LitStr "', '', '');"
  loc_A249EA: ConcatStr
  loc_A249EB: FStStrNoPop var_A0
  loc_A249EE: Call RedefineRS(from_stack_1v)
  loc_A249F3: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A24A00: Branch loc_A24A84
  loc_A24A03: FLdI2 var_8C
  loc_A24A06: LitI2_Byte 4
  loc_A24A08: EqI2
  loc_A24A09: BranchF loc_A24A45
  loc_A24A0C: LitStr "CALL contpres.fnImputacion('"
  loc_A24A0F: FLdI2 PeriInfo
  loc_A24A12: CStrUI1
  loc_A24A14: FStStrNoPop var_90
  loc_A24A17: ConcatStr
  loc_A24A18: FStStrNoPop var_94
  loc_A24A1B: LitStr "', '', '', '', '', '"
  loc_A24A1E: ConcatStr
  loc_A24A1F: FStStrNoPop var_98
  loc_A24A22: ILdRf var_88
  loc_A24A25: ConcatStr
  loc_A24A26: FStStrNoPop var_9C
  loc_A24A29: LitStr "', '');"
  loc_A24A2C: ConcatStr
  loc_A24A2D: FStStrNoPop var_A0
  loc_A24A30: Call RedefineRS(from_stack_1v)
  loc_A24A35: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A24A42: Branch loc_A24A84
  loc_A24A45: FLdI2 var_8C
  loc_A24A48: LitI2_Byte 5
  loc_A24A4A: EqI2
  loc_A24A4B: BranchF loc_A24A84
  loc_A24A4E: LitStr "CALL contpres.fnImputacion('"
  loc_A24A51: FLdI2 PeriInfo
  loc_A24A54: CStrUI1
  loc_A24A56: FStStrNoPop var_90
  loc_A24A59: ConcatStr
  loc_A24A5A: FStStrNoPop var_94
  loc_A24A5D: LitStr "', '', '', '', '', '', '"
  loc_A24A60: ConcatStr
  loc_A24A61: FStStrNoPop var_98
  loc_A24A64: ILdRf var_88
  loc_A24A67: ConcatStr
  loc_A24A68: FStStrNoPop var_9C
  loc_A24A6B: LitStr "');"
  loc_A24A6E: ConcatStr
  loc_A24A6F: FStStrNoPop var_A0
  loc_A24A72: Call RedefineRS(from_stack_1v)
  loc_A24A77: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A24A84: ExitProcHresult
End Sub

Public Sub PasaraResiduosPasivos(PeriInfo, sFiltroMsk, sFiltroMsk2, FiltroCbo) '9BDE74
  'Data Table: 4AFD00
  loc_9BDDC0: ILdRf sFiltroMsk
  loc_9BDDC3: FStStrCopy var_88
  loc_9BDDC6: ILdRf sFiltroMsk2
  loc_9BDDC9: FStStrCopy var_8C
  loc_9BDDCC: FLdRfVar var_8E
  loc_9BDDCF: ILdPr
  loc_9BDDD2:  = Me.ListIndex
  loc_9BDDD7: FLdI2 var_8E
  loc_9BDDDA: FStI2 var_90
  loc_9BDDDD: FLdI2 var_90
  loc_9BDDE0: LitI2_Byte &HFF
  loc_9BDDE2: EqI2
  loc_9BDDE3: BranchF loc_9BDDF1
  loc_9BDDE6: LitStr "CALL contpres.fnRP('0', '', '')"
  loc_9BDDE9: Call RedefineRS(from_stack_1v)
  loc_9BDDEE: Branch loc_9BDE72
  loc_9BDDF1: FLdI2 var_90
  loc_9BDDF4: LitI2_Byte 0
  loc_9BDDF6: EqI2
  loc_9BDDF7: BranchF loc_9BDE33
  loc_9BDDFA: LitStr "CALL contpres.fnRP('"
  loc_9BDDFD: FLdI2 PeriInfo
  loc_9BDE00: CStrUI1
  loc_9BDE02: FStStrNoPop var_94
  loc_9BDE05: ConcatStr
  loc_9BDE06: FStStrNoPop var_98
  loc_9BDE09: LitStr "', '"
  loc_9BDE0C: ConcatStr
  loc_9BDE0D: FStStrNoPop var_9C
  loc_9BDE10: ILdRf var_88
  loc_9BDE13: ConcatStr
  loc_9BDE14: FStStrNoPop var_A0
  loc_9BDE17: LitStr "','')"
  loc_9BDE1A: ConcatStr
  loc_9BDE1B: FStStrNoPop var_A4
  loc_9BDE1E: Call RedefineRS(from_stack_1v)
  loc_9BDE23: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_9BDE30: Branch loc_9BDE72
  loc_9BDE33: FLdI2 var_90
  loc_9BDE36: LitI2_Byte 1
  loc_9BDE38: EqI2
  loc_9BDE39: BranchF loc_9BDE72
  loc_9BDE3C: LitStr "CALL contpres.fnRP('"
  loc_9BDE3F: FLdI2 PeriInfo
  loc_9BDE42: CStrUI1
  loc_9BDE44: FStStrNoPop var_94
  loc_9BDE47: ConcatStr
  loc_9BDE48: FStStrNoPop var_98
  loc_9BDE4B: LitStr "', '', '"
  loc_9BDE4E: ConcatStr
  loc_9BDE4F: FStStrNoPop var_9C
  loc_9BDE52: ILdRf var_8C
  loc_9BDE55: ConcatStr
  loc_9BDE56: FStStrNoPop var_A0
  loc_9BDE59: LitStr "')"
  loc_9BDE5C: ConcatStr
  loc_9BDE5D: FStStrNoPop var_A4
  loc_9BDE60: Call RedefineRS(from_stack_1v)
  loc_9BDE65: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_9BDE72: ExitProcHresult
End Sub

Public Sub PasaraResiduosPasivosMarcarDevengado(PeriInfo, sExpeImpu, sExorImpu, sNumeFact, sItem) '9D94FC
  'Data Table: 4AFD00
  loc_9D9440: ILdRf sExpeImpu
  loc_9D9443: FStStrCopy var_88
  loc_9D9446: ILdRf sExorImpu
  loc_9D9449: FStStrCopy var_8C
  loc_9D944C: ILdRf sNumeFact
  loc_9D944F: FStStrCopy var_90
  loc_9D9452: ILdRf sItem
  loc_9D9455: FStStrCopy var_94
  loc_9D9458: LitStr "UPDATE imputacion i"
  loc_9D945B: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_9D945E: ConcatStr
  loc_9D945F: FStStrNoPop var_98
  loc_9D9462: LitStr " SET ResiDeve = 1"
  loc_9D9465: ConcatStr
  loc_9D9466: FStStrNoPop var_9C
  loc_9D9469: LitStr " WHERE i.PeriInfo = "
  loc_9D946C: ConcatStr
  loc_9D946D: FStStrNoPop var_A0
  loc_9D9470: FLdI2 PeriInfo
  loc_9D9473: CStrUI1
  loc_9D9475: FStStrNoPop var_A4
  loc_9D9478: ConcatStr
  loc_9D9479: FStStrNoPop var_A8
  loc_9D947C: LitStr " AND i.ExorImpu = '"
  loc_9D947F: ConcatStr
  loc_9D9480: FStStrNoPop var_AC
  loc_9D9483: ILdRf var_8C
  loc_9D9486: ConcatStr
  loc_9D9487: FStStrNoPop var_B0
  loc_9D948A: LitStr "'"
  loc_9D948D: ConcatStr
  loc_9D948E: FStStrNoPop var_B4
  loc_9D9491: LitStr " AND i.ExpeImpu = '"
  loc_9D9494: ConcatStr
  loc_9D9495: FStStrNoPop var_B8
  loc_9D9498: ILdRf var_88
  loc_9D949B: ConcatStr
  loc_9D949C: FStStrNoPop var_BC
  loc_9D949F: LitStr "'"
  loc_9D94A2: ConcatStr
  loc_9D94A3: FStStrNoPop var_C0
  loc_9D94A6: LitStr " AND i.NumeFact = '"
  loc_9D94A9: ConcatStr
  loc_9D94AA: FStStrNoPop var_C4
  loc_9D94AD: ILdRf var_90
  loc_9D94B0: ConcatStr
  loc_9D94B1: FStStrNoPop var_C8
  loc_9D94B4: LitStr "'"
  loc_9D94B7: ConcatStr
  loc_9D94B8: FStStrNoPop var_CC
  loc_9D94BB: LitStr " AND i.Item = '"
  loc_9D94BE: ConcatStr
  loc_9D94BF: FStStrNoPop var_D0
  loc_9D94C2: ILdRf var_94
  loc_9D94C5: ConcatStr
  loc_9D94C6: FStStrNoPop var_D4
  loc_9D94C9: LitStr "';"
  loc_9D94CC: ConcatStr
  loc_9D94CD: FStStrNoPop var_D8
  loc_9D94D0: Call EjecutarRsCls(from_stack_1v)
  loc_9D94D5: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_9D94FA: ExitProcHresult
End Sub

Public Sub CierraExpedienteReapropiado(PeriInfo, sIdImpus) '9986F0
  'Data Table: 4AFD00
  loc_9986A0: ILdRf sIdImpus
  loc_9986A3: FStStrCopy var_88
  loc_9986A6: LitStr "UPDATE imputacion"
  loc_9986A9: LitStr " SET ReapDefi = 1"
  loc_9986AC: ConcatStr
  loc_9986AD: FStStrNoPop var_8C
  loc_9986B0: LitStr " WHERE PeriInfo = "
  loc_9986B3: ConcatStr
  loc_9986B4: FStStrNoPop var_90
  loc_9986B7: FLdI2 PeriInfo
  loc_9986BA: CStrUI1
  loc_9986BC: FStStrNoPop var_94
  loc_9986BF: ConcatStr
  loc_9986C0: FStStrNoPop var_98
  loc_9986C3: LitStr " AND IdImpu IN ("
  loc_9986C6: ConcatStr
  loc_9986C7: FStStrNoPop var_9C
  loc_9986CA: ILdRf var_88
  loc_9986CD: ConcatStr
  loc_9986CE: FStStrNoPop var_A0
  loc_9986D1: LitStr ");"
  loc_9986D4: ConcatStr
  loc_9986D5: FStStrNoPop var_A4
  loc_9986D8: Call EjecutarRsCls(from_stack_1v)
  loc_9986DD: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_9986EE: ExitProcHresult
End Sub

Public Sub ReapropiaralEjercicioSiguiente(PeriInfo, sFiltroMsk, FiltroCbo) '9D8EE0
  'Data Table: 4AFD00
  loc_9D8E00: ILdRf sFiltroMsk
  loc_9D8E03: FStStrCopy var_88
  loc_9D8E06: FLdRfVar var_8E
  loc_9D8E09: ILdPr
  loc_9D8E0C:  = Me.ListIndex
  loc_9D8E11: FLdI2 var_8E
  loc_9D8E14: FStI2 var_90
  loc_9D8E17: FLdI2 var_90
  loc_9D8E1A: LitI2_Byte &HFF
  loc_9D8E1C: EqI2
  loc_9D8E1D: BranchF loc_9D8E2B
  loc_9D8E20: LitStr "CALL contpres.fnReap('0', '', 0);"
  loc_9D8E23: Call RedefineRS(from_stack_1v)
  loc_9D8E28: Branch loc_9D8EDE
  loc_9D8E2B: FLdI2 var_90
  loc_9D8E2E: LitI2_Byte 0
  loc_9D8E30: EqI2
  loc_9D8E31: BranchF loc_9D8E6D
  loc_9D8E34: LitStr "CALL contpres.fnReap('"
  loc_9D8E37: FLdI2 PeriInfo
  loc_9D8E3A: CStrUI1
  loc_9D8E3C: FStStrNoPop var_94
  loc_9D8E3F: ConcatStr
  loc_9D8E40: FStStrNoPop var_98
  loc_9D8E43: LitStr "', '"
  loc_9D8E46: ConcatStr
  loc_9D8E47: FStStrNoPop var_9C
  loc_9D8E4A: ILdRf var_88
  loc_9D8E4D: ConcatStr
  loc_9D8E4E: FStStrNoPop var_A0
  loc_9D8E51: LitStr "', 0);"
  loc_9D8E54: ConcatStr
  loc_9D8E55: FStStrNoPop var_A4
  loc_9D8E58: Call RedefineRS(from_stack_1v)
  loc_9D8E5D: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_9D8E6A: Branch loc_9D8EDE
  loc_9D8E6D: FLdI2 var_90
  loc_9D8E70: LitI2_Byte 1
  loc_9D8E72: EqI2
  loc_9D8E73: BranchF loc_9D8EDE
  loc_9D8E76: LitStr "CALL contpres.fnReap('"
  loc_9D8E79: FLdI2 PeriInfo
  loc_9D8E7C: CStrUI1
  loc_9D8E7E: FStStrNoPop var_94
  loc_9D8E81: ConcatStr
  loc_9D8E82: FStStrNoPop var_98
  loc_9D8E85: LitStr "', '', "
  loc_9D8E88: ConcatStr
  loc_9D8E89: CVarStr var_104
  loc_9D8E8C: FLdRfVar var_88
  loc_9D8E8F: CVarRef
  loc_9D8E94: LitVarI2 var_D4, 0
  loc_9D8E99: ILdRf var_88
  loc_9D8E9C: LitStr vbNullString
  loc_9D8E9F: EqStr
  loc_9D8EA1: CVarBoolI2 var_B4
  loc_9D8EA5: FLdRfVar var_F4
  loc_9D8EA8: ImpAdCallFPR4  = IIf(, , )
  loc_9D8EAD: FLdRfVar var_F4
  loc_9D8EB0: ConcatVar var_114
  loc_9D8EB4: LitVarStr var_124, ");"
  loc_9D8EB9: ConcatVar var_134
  loc_9D8EBD: CStrVarVal var_9C
  loc_9D8EC1: Call RedefineRS(from_stack_1v)
  loc_9D8EC6: FFreeStr var_94 = "": var_98 = ""
  loc_9D8ECF: FFreeVar var_B4 = "": var_D4 = "": var_104 = "": var_F4 = "": var_114 = ""
  loc_9D8EDE: ExitProcHresult
End Sub

Public Function TipoPago(PeriInfo, CodiPart) '9B8C48
  'Data Table: 4AFD00
  loc_9B8BAC: ILdRf CodiPart
  loc_9B8BAF: FStStrCopy var_8C
  loc_9B8BB2: ZeroRetVal
  loc_9B8BB4: LitStr "SET @periinfo="
  loc_9B8BB7: FLdI2 PeriInfo
  loc_9B8BBA: CStrUI1
  loc_9B8BBC: FStStrNoPop var_90
  loc_9B8BBF: ConcatStr
  loc_9B8BC0: FStStrNoPop TipoPago
  loc_9B8BC3: LitStr ",@codipart='"
  loc_9B8BC6: ConcatStr
  loc_9B8BC7: FStStrNoPop var_98
  loc_9B8BCA: ILdRf var_8C
  loc_9B8BCD: ConcatStr
  loc_9B8BCE: FStStrNoPop var_9C
  loc_9B8BD1: LitStr "';"
  loc_9B8BD4: ConcatStr
  loc_9B8BD5: FStStrNoPop var_A0
  loc_9B8BD8: Call EjecutarRsCls(from_stack_1v)
  loc_9B8BDD: FFreeStr var_90 = "": TipoPago = "": var_98 = "": var_9C = ""
  loc_9B8BEA: LitStr "SELECT IF(Left(@codipart,1)=PaexPaco,'Extra','Presu') TipoPago"
  loc_9B8BED: LitStr " FROM paraconta"
  loc_9B8BF0: ConcatStr
  loc_9B8BF1: FStStrNoPop var_90
  loc_9B8BF4: LitStr " WHERE PeriInfo = @periinfo"
  loc_9B8BF7: ConcatStr
  loc_9B8BF8: FStStrNoPop TipoPago
  loc_9B8BFB: Call EjecutarRsCls(from_stack_1v)
  loc_9B8C00: FFreeStr var_90 = ""
  loc_9B8C07: FLdRfVar var_C8
  loc_9B8C0A: FLdRfVar var_B8
  loc_9B8C0D: LitVarStr var_B4, "TipoPago"
  loc_9B8C12: PopAdLdVar
  loc_9B8C13: FLdRfVar var_A4
  loc_9B8C16: FLdPr Me
  loc_9B8C19: MemLdPr global_56
  loc_9B8C1C:  = Me.Fields
  loc_9B8C21: FLdPr var_A4
  loc_9B8C24: from_stack_2 = Me.Item(from_stack_1)
  loc_9B8C29: FLdPr var_B8
  loc_9B8C2C:  = Me.Value
  loc_9B8C31: FLdRfVar var_C8
  loc_9B8C34: CStrVarTmp
  loc_9B8C35: FStStr var_88
  loc_9B8C38: FFreeAd var_A4 = ""
  loc_9B8C3F: FFree1Var var_C8 = ""
  loc_9B8C42: ExitProcCbHresult
End Function

Public Function ImputarAE() 'A15FE4
  'Data Table: 4AFD00
  loc_A15E8C: ZeroRetVal
  loc_A15E8E: LitVar_Missing var_174
  loc_A15E91: LitVar_Missing var_154
  loc_A15E94: LitVar_Missing var_134
  loc_A15E97: LitVar_Missing var_114
  loc_A15E9A: LitVar_Missing var_F4
  loc_A15E9D: LitVarStr var_C4, "Imputar AE Ayudas Económicas"
  loc_A15EA2: FStVarCopyObj var_D4
  loc_A15EA5: FLdRfVar var_D4
  loc_A15EA8: LitVarStr var_A4, "Ingrese el nombre del archivo csv..."
  loc_A15EAD: FStVarCopyObj var_B4
  loc_A15EB0: FLdRfVar var_B4
  loc_A15EB3: ImpAdCallI2 InputBox(, , , , , , )
  loc_A15EB8: FStStr var_90
  loc_A15EBB: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = ""
  loc_A15ECC: LitI2_Byte 0
  loc_A15ECE: PopTmpLdAd2 var_17A
  loc_A15ED1: LitI2_Byte 0
  loc_A15ED3: PopTmpLdAd2 var_178
  loc_A15ED6: LitI2_Byte 0
  loc_A15ED8: PopTmpLdAd2 var_176
  loc_A15EDB: ILdRf var_90
  loc_A15EDE: LitStr "nombre del archivo"
  loc_A15EE1: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A15EE6: FStStr ImputarAE
  loc_A15EE9: ILdRf ImputarAE
  loc_A15EEC: LitStr vbNullString
  loc_A15EEF: NeStr
  loc_A15EF1: BranchF loc_A15F07
  loc_A15EF4: LitI4 0
  loc_A15EF9: ILdRf ImputarAE
  loc_A15EFC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A15F01: ExitProcCbHresult
  loc_A15F07: ImpAdCallI2 Proc_261_16_9B9214()
  loc_A15F0C: ImpAdStStr MemVar_C3D05C
  loc_A15F10: FLdRfVar var_176
  loc_A15F13: ImpAdLdI4 MemVar_C3D05C
  loc_A15F16: LitStr "\"
  loc_A15F19: ConcatStr
  loc_A15F1A: FStStrNoPop var_180
  loc_A15F1D: ILdRf var_90
  loc_A15F20: ConcatStr
  loc_A15F21: FStStrNoPop var_184
  loc_A15F24: FLdRfVar var_8C
  loc_A15F27: NewIfNullPr IFileSystem3
  loc_A15F2A: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A15F2F: FLdI2 var_176
  loc_A15F32: NotI4
  loc_A15F33: FFreeStr var_180 = ""
  loc_A15F3A: BranchF loc_A15F49
  loc_A15F3D: LitStr "El archivo NO existe. Verifique..."
  loc_A15F40: FStStrCopy var_88
  loc_A15F43: ExitProcCbHresult
  loc_A15F49: LitI4 0
  loc_A15F4E: LitI4 -1
  loc_A15F53: LitI4 1
  loc_A15F58: LitStr "\\"
  loc_A15F5B: LitStr "\"
  loc_A15F5E: ImpAdLdI4 MemVar_C3D05C
  loc_A15F61: ImpAdCallI2 Replace(, , , , , )
  loc_A15F66: ImpAdStStr MemVar_C3D05C
  loc_A15F6A: OnErrorGoto loc_A15FCE
  loc_A15F6D: LitStr "START TRANSACTION;"
  loc_A15F70: Call EjecutarRsCls(from_stack_1v)
  loc_A15F75: LitI4 0
  loc_A15F7A: LitStr "Comienza limpieza e importación del CSV..."
  loc_A15F7D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A15F82: LitStr "TRUNCATE TABLE ontpres`.`tmp_ayudaec`; "
  loc_A15F85: LitStr "LOAD DATA LOW_PRIORITY LOCAL INFILE '"
  loc_A15F88: ConcatStr
  loc_A15F89: FStStrNoPop var_180
  loc_A15F8C: ImpAdLdI4 MemVar_C3D05C
  loc_A15F8F: ConcatStr
  loc_A15F90: FStStrNoPop var_184
  loc_A15F93: LitStr "\\"
  loc_A15F96: ConcatStr
  loc_A15F97: FStStrNoPop var_188
  loc_A15F9A: ILdRf var_90
  loc_A15F9D: ConcatStr
  loc_A15F9E: FStStrNoPop var_18C
  loc_A15FA1: LitStr "' INTO TABLE ontpres`.`tmp_ayudaec` FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '""' ESCAPED BY '""' LINES TERMINATED BY '\r\n' (cuil,importe,CodiOrga,ExorImpu);"
  loc_A15FA4: ConcatStr
  loc_A15FA5: FStStrNoPop var_190
  loc_A15FA8: Call EjecutarRsCls(from_stack_1v)
  loc_A15FAD: FFreeStr var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_A15FBA: LitStr "COMMIT;"
  loc_A15FBD: Call EjecutarRsCls(from_stack_1v)
  loc_A15FC2: LitStr vbNullString
  loc_A15FC5: FStStrCopy var_88
  loc_A15FC8: ExitProcCbHresult
  loc_A15FCE: LitStr "ROLLBACK;"
  loc_A15FD1: Call EjecutarRsCls(from_stack_1v)
  loc_A15FD6: LitStr "Error en la imputación de AE Ayudas Económicas. Verifique..."
  loc_A15FD9: FStStrCopy var_88
  loc_A15FDC: ExitProcCbHresult
  loc_A15FE2: BranchFVar
End Function

Public Function ImputarLoc() 'A515D0
  'Data Table: 4AFD00
  loc_A5134C: ZeroRetVal
  loc_A5134E: LitVar_Missing var_178
  loc_A51351: LitVar_Missing var_158
  loc_A51354: LitVar_Missing var_138
  loc_A51357: LitVar_Missing var_118
  loc_A5135A: LitVar_Missing var_F8
  loc_A5135D: LitVarStr var_C8, "Imputar Locación de Servicios"
  loc_A51362: FStVarCopyObj var_D8
  loc_A51365: FLdRfVar var_D8
  loc_A51368: LitVarStr var_A8, "Ingrese el nombre del archivo csv..."
  loc_A5136D: FStVarCopyObj var_B8
  loc_A51370: FLdRfVar var_B8
  loc_A51373: ImpAdCallI2 InputBox(, , , , , , )
  loc_A51378: FStStr var_90
  loc_A5137B: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = ""
  loc_A5138C: LitI2_Byte 0
  loc_A5138E: PopTmpLdAd2 var_17E
  loc_A51391: LitI2_Byte 0
  loc_A51393: PopTmpLdAd2 var_17C
  loc_A51396: LitI2_Byte 0
  loc_A51398: PopTmpLdAd2 var_17A
  loc_A5139B: ILdRf var_90
  loc_A5139E: LitStr "nombre del archivo"
  loc_A513A1: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A513A6: FStStr ImputarLoc
  loc_A513A9: ILdRf ImputarLoc
  loc_A513AC: LitStr vbNullString
  loc_A513AF: NeStr
  loc_A513B1: BranchF loc_A513C7
  loc_A513B4: LitI4 0
  loc_A513B9: ILdRf ImputarLoc
  loc_A513BC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A513C1: ExitProcCbHresult
  loc_A513C7: ImpAdCallI2 Proc_261_16_9B9214()
  loc_A513CC: ImpAdStStr MemVar_C3D05C
  loc_A513D0: FLdRfVar var_17A
  loc_A513D3: ImpAdLdI4 MemVar_C3D05C
  loc_A513D6: LitStr "\"
  loc_A513D9: ConcatStr
  loc_A513DA: FStStrNoPop var_184
  loc_A513DD: ILdRf var_90
  loc_A513E0: ConcatStr
  loc_A513E1: FStStrNoPop var_188
  loc_A513E4: FLdRfVar var_8C
  loc_A513E7: NewIfNullPr IFileSystem3
  loc_A513EA: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A513EF: FLdI2 var_17A
  loc_A513F2: NotI4
  loc_A513F3: FFreeStr var_184 = ""
  loc_A513FA: BranchF loc_A51409
  loc_A513FD: LitStr "El archivo NO existe. Verifique..."
  loc_A51400: FStStrCopy var_88
  loc_A51403: ExitProcCbHresult
  loc_A51409: LitI4 0
  loc_A5140E: LitI4 -1
  loc_A51413: LitI4 1
  loc_A51418: LitStr "\\"
  loc_A5141B: LitStr "\"
  loc_A5141E: ImpAdLdI4 MemVar_C3D05C
  loc_A51421: ImpAdCallI2 Replace(, , , , , )
  loc_A51426: ImpAdStStr MemVar_C3D05C
  loc_A5142A: OnErrorGoto loc_A515BA
  loc_A5142D: LitI4 0
  loc_A51432: LitStr "Comienza limpieza e imputación de Locación de Servicios..."
  loc_A51435: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A5143A: LitStr "START TRANSACTION;"
  loc_A5143D: Call EjecutarRsCls(from_stack_1v)
  loc_A51442: LitStr "TRUNCATE contpres.locadores;"
  loc_A51445: Call EjecutarRsCls(from_stack_1v)
  loc_A5144A: LitStr "LOAD DATA LOW_PRIORITY LOCAL INFILE '"
  loc_A5144D: ImpAdLdI4 MemVar_C3D05C
  loc_A51450: ConcatStr
  loc_A51451: FStStrNoPop var_184
  loc_A51454: LitStr "\\"
  loc_A51457: ConcatStr
  loc_A51458: FStStrNoPop var_188
  loc_A5145B: ILdRf var_90
  loc_A5145E: ConcatStr
  loc_A5145F: FStStrNoPop var_18C
  loc_A51462: LitStr "'"
  loc_A51465: ConcatStr
  loc_A51466: FStStrNoPop var_190
  loc_A51469: LitStr " INTO TABLE ontpres`.`locadores` FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '""' ESCAPED BY '""' LINES TERMINATED"
  loc_A5146C: ConcatStr
  loc_A5146D: FStStrNoPop var_194
  loc_A51470: LitStr " BY '\r\n' (nombre, cuenta, cuil, expte, impomensual, ptoventa, factura, pago, fechainicio, fechafin, totalcontrato);"
  loc_A51473: ConcatStr
  loc_A51474: FStStrNoPop var_198
  loc_A51477: Call EjecutarRsCls(from_stack_1v)
  loc_A5147C: FFreeStr var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_A5148B: LitStr "INSERT IGNORE INTO retexprov (CucuPers, PeriInfo, CodiRete, CodiDere, NuinRexp, FeacRexp, AltaUsua)"
  loc_A5148E: LitStr " SELECT Replace(l.cuil,'-',''), "
  loc_A51491: ConcatStr
  loc_A51492: FStStrNoPop var_184
  loc_A51495: ImpAdLdI2 MemVar_C3D064
  loc_A51498: CStrUI1
  loc_A5149A: FStStrNoPop var_188
  loc_A5149D: ConcatStr
  loc_A5149E: FStStrNoPop var_18C
  loc_A514A1: LitStr ", 1, 3, '00', Current_date, @sUsuario"
  loc_A514A4: ConcatStr
  loc_A514A5: FStStrNoPop var_190
  loc_A514A8: LitStr " FROM contpres.locadores l"
  loc_A514AB: ConcatStr
  loc_A514AC: FStStrNoPop var_194
  loc_A514AF: LitStr " INNER JOIN contpres.proveedor p ON p.CucuPers = Replace(l.cuil,'-','');"
  loc_A514B2: ConcatStr
  loc_A514B3: FStStrNoPop var_198
  loc_A514B6: Call EjecutarRsCls(from_stack_1v)
  loc_A514BB: FFreeStr var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_A514CA: LitStr "Municipalidad de Guaymallén"
  loc_A514CD: FStStrCopy var_19C
  loc_A514D0: ILdRf var_19C
  loc_A514D3: LitStr "Municipalidad de General Alvear"
  loc_A514D6: EqStr
  loc_A514D8: BranchF loc_A514E6
  loc_A514DB: LitI2_Byte 2
  loc_A514DD: CUI1I2
  loc_A514DF: FStUI1 var_96
  loc_A514E3: Branch loc_A5151A
  loc_A514E6: ILdRf var_19C
  loc_A514E9: LitStr "Municipalidad de Tunuyán"
  loc_A514EC: EqStr
  loc_A514EE: BranchF loc_A514FC
  loc_A514F1: LitI2_Byte 1
  loc_A514F3: CUI1I2
  loc_A514F5: FStUI1 var_96
  loc_A514F9: Branch loc_A5151A
  loc_A514FC: ILdRf var_19C
  loc_A514FF: LitStr "Municipalidad de Santa Rosa"
  loc_A51502: EqStr
  loc_A51504: BranchF loc_A51512
  loc_A51507: LitI2_Byte 1
  loc_A51509: CUI1I2
  loc_A5150B: FStUI1 var_96
  loc_A5150F: Branch loc_A5151A
  loc_A51512: LitI2_Byte 0
  loc_A51514: CUI1I2
  loc_A51516: FStUI1 var_96
  loc_A5151A: LitStr "UPDATE contpres.locadores l"
  loc_A5151D: LitStr " INNER JOIN contpres.proveedor p ON p.CucuPers = Replace(l.cuil,'-','')"
  loc_A51520: ConcatStr
  loc_A51521: FStStrNoPop var_184
  loc_A51524: LitStr " SET LocaProv = 1"
  loc_A51527: ConcatStr
  loc_A51528: FStStrNoPop var_188
  loc_A5152B: Call EjecutarRsCls(from_stack_1v)
  loc_A51530: FFreeStr var_184 = ""
  loc_A51537: LitStr "UPDATE contpres.locadores l"
  loc_A5153A: LitStr " INNER JOIN contpres.proveedor p ON p.CucuPers = Replace(l.cuil,'-','')"
  loc_A5153D: ConcatStr
  loc_A5153E: FStStrNoPop var_184
  loc_A51541: LitStr " AND (p.CubaProv = '' OR p.CodiBapr = 0)"
  loc_A51544: ConcatStr
  loc_A51545: FStStrNoPop var_188
  loc_A51548: LitStr " SET CubaProv = Replace(l.cuenta,'-',''), CodiBapr = "
  loc_A5154B: ConcatStr
  loc_A5154C: FStStrNoPop var_18C
  loc_A5154F: FLdUI1
  loc_A51553: CStrI2
  loc_A51555: FStStrNoPop var_190
  loc_A51558: ConcatStr
  loc_A51559: FStStrNoPop var_194
  loc_A5155C: LitStr " WHERE l.cuenta != '';"
  loc_A5155F: ConcatStr
  loc_A51560: FStStrNoPop var_198
  loc_A51563: Call EjecutarRsCls(from_stack_1v)
  loc_A51568: FFreeStr var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_A51577: LitStr "UPDATE contpres.locadores l"
  loc_A5157A: LitStr " INNER JOIN contpres.proveedor p ON p.CucuPers = Replace(l.cuil,'-','')"
  loc_A5157D: ConcatStr
  loc_A5157E: FStStrNoPop var_184
  loc_A51581: LitStr " AND p.CodiBapr != 0"
  loc_A51584: ConcatStr
  loc_A51585: FStStrNoPop var_188
  loc_A51588: LitStr " SET CodiBapr = 0"
  loc_A5158B: ConcatStr
  loc_A5158C: FStStrNoPop var_18C
  loc_A5158F: LitStr " WHERE l.cuenta = ''"
  loc_A51592: ConcatStr
  loc_A51593: FStStrNoPop var_190
  loc_A51596: Call EjecutarRsCls(from_stack_1v)
  loc_A5159B: FFreeStr var_184 = "": var_188 = "": var_18C = ""
  loc_A515A6: LitStr "COMMIT;"
  loc_A515A9: Call EjecutarRsCls(from_stack_1v)
  loc_A515AE: LitStr vbNullString
  loc_A515B1: FStStrCopy var_88
  loc_A515B4: ExitProcCbHresult
  loc_A515BA: LitStr "ROLLBACK;"
  loc_A515BD: Call EjecutarRsCls(from_stack_1v)
  loc_A515C2: LitStr "Error en la imputación de Locación de Servicios. Verifique..."
  loc_A515C5: FStStrCopy var_88
  loc_A515C8: ExitProcCbHresult
  loc_A515CE: Ary1StVar
End Function

Public Function ValidoElInventario(sCodiPart, IdImpu) 'A19460
  'Data Table: 4AFD00
  loc_A192E0: ILdRf sCodiPart
  loc_A192E3: FStStrCopy var_8C
  loc_A192E6: LitStr "SELECT * FROM partida WHERE PeriInfo = "
  loc_A192E9: ImpAdLdI2 MemVar_C3D064
  loc_A192EC: CStrUI1
  loc_A192EE: FStStrNoPop var_90
  loc_A192F1: ConcatStr
  loc_A192F2: FStStrNoPop ValidoElInventario
  loc_A192F5: LitStr " AND CodiPart = '"
  loc_A192F8: ConcatStr
  loc_A192F9: FStStrNoPop var_98
  loc_A192FC: ILdRf var_8C
  loc_A192FF: ConcatStr
  loc_A19300: FStStrNoPop var_9C
  loc_A19303: LitStr "' AND InvePart = 1;"
  loc_A19306: ConcatStr
  loc_A19307: FStStrNoPop var_A0
  loc_A1930A: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_A1930F: FFreeStr var_90 = "": ValidoElInventario = "": var_98 = "": var_9C = ""
  loc_A1931C: FLdRfVar var_A4
  loc_A1931F: ImpAdLdPr unk_4AFFE1
  loc_A19322: MemLdPr global_0
  loc_A19325:  = Me.RecordCount
  loc_A1932A: ILdRf var_A4
  loc_A1932D: LitI4 0
  loc_A19332: GtI4
  loc_A19333: BranchF loc_A19455
  loc_A19336: FLdRfVar var_90
  loc_A19339: ILdRf IdImpu
  loc_A1933C: ImpAdLdI2 MemVar_C3D064
  loc_A1933F: from_stack_3v = DistinctIdImpuDeveImpu(from_stack_1v, from_stack_2v)
  loc_A19344: FLdZeroAd var_90
  loc_A19347: FStStr var_A8
  loc_A1934A: LitStr "SELECT * FROM invepatrimonial WHERE PeriInfo = "
  loc_A1934D: ImpAdLdI2 MemVar_C3D064
  loc_A19350: CStrUI1
  loc_A19352: FStStrNoPop var_90
  loc_A19355: ConcatStr
  loc_A19356: FStStrNoPop ValidoElInventario
  loc_A19359: LitStr " AND IdImpu IN ("
  loc_A1935C: ConcatStr
  loc_A1935D: FStStrNoPop var_98
  loc_A19360: ILdRf var_A8
  loc_A19363: ConcatStr
  loc_A19364: FStStrNoPop var_9C
  loc_A19367: LitStr ") AND CodiInpa > 0 ORDER BY CodiInpa DESC;"
  loc_A1936A: ConcatStr
  loc_A1936B: FStStrNoPop var_A0
  loc_A1936E: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_A19373: FFreeStr var_90 = "": ValidoElInventario = "": var_98 = "": var_9C = ""
  loc_A19380: FLdRfVar var_A4
  loc_A19383: ImpAdLdPr unk_4AFFE1
  loc_A19386: MemLdPr global_0
  loc_A19389:  = Me.RecordCount
  loc_A1938E: ILdRf var_A4
  loc_A19391: LitI4 0
  loc_A19396: EqI4
  loc_A19397: BranchF loc_A193CF
  loc_A1939A: LitStr "Municipalidad de Guaymallén"
  loc_A1939D: LitStr "Municipalidad de Guaymallén"
  loc_A193A0: EqStr
  loc_A193A2: BranchF loc_A193BA
  loc_A193A5: LitI4 0
  loc_A193AA: LitStr "Advertencia: El Bien no tiene Alta en el Inventario Municipal. Verifique..."
  loc_A193AD: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A193B2: LitI2_Byte &HFF
  loc_A193B4: FStI2 var_86
  loc_A193B7: Branch loc_A193CC
  loc_A193BA: LitI4 0
  loc_A193BF: LitStr "El Bien no tiene Alta en el Inventario Municipal. Verifique..."
  loc_A193C2: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A193C7: LitI2_Byte 0
  loc_A193C9: FStI2 var_86
  loc_A193CC: Branch loc_A19452
  loc_A193CF: FLdRfVar var_C0
  loc_A193D2: LitVarStr var_BC, "FebaInpa"
  loc_A193D7: PopAdLdVar
  loc_A193D8: FLdRfVar var_AC
  loc_A193DB: ImpAdLdPr unk_4AFFE1
  loc_A193DE: MemLdPr global_0
  loc_A193E1:  = Me.Fields
  loc_A193E6: FLdPr var_AC
  loc_A193E9: from_stack_2 = Me.Item(from_stack_1)
  loc_A193EE: FLdZeroAd var_C0
  loc_A193F1: CVarAd
  loc_A193F5: ImpAdCallI2 IsNull()
  loc_A193FA: NotI4
  loc_A193FB: FFree1Ad var_AC
  loc_A193FE: FFree1Var var_D0 = ""
  loc_A19401: BranchF loc_A19419
  loc_A19404: LitI4 0
  loc_A19409: LitStr "El Bien está dado de baja. Verifique..."
  loc_A1940C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A19411: LitI2_Byte 0
  loc_A19413: FStI2 var_86
  loc_A19416: Branch loc_A19452
  loc_A19419: FLdRfVar var_C0
  loc_A1941C: LitVarStr var_BC, "FebaInpa"
  loc_A19421: PopAdLdVar
  loc_A19422: FLdRfVar var_AC
  loc_A19425: ImpAdLdPr unk_4AFFE1
  loc_A19428: MemLdPr global_0
  loc_A1942B:  = Me.Fields
  loc_A19430: FLdPr var_AC
  loc_A19433: from_stack_2 = Me.Item(from_stack_1)
  loc_A19438: FLdZeroAd var_C0
  loc_A1943B: CVarAd
  loc_A1943F: ImpAdCallI2 IsNull()
  loc_A19444: FFree1Ad var_AC
  loc_A19447: FFree1Var var_D0 = ""
  loc_A1944A: BranchF loc_A19452
  loc_A1944D: LitI2_Byte &HFF
  loc_A1944F: FStI2 var_86
  loc_A19452: Branch loc_A1945A
  loc_A19455: LitI2_Byte &HFF
  loc_A19457: FStI2 var_86
  loc_A1945A: ExitProcCbHresult
End Function

Public Function UltimaFechAuto(PeriInfo, CodiPart, CodiOrga) 'A5DDD0
  'Data Table: 4AFD00
  loc_A5DB14: ILdRf CodiPart
  loc_A5DB17: FStStrCopy var_8C
  loc_A5DB1A: ILdRf CodiOrga
  loc_A5DB1D: FStStrCopy var_90
  loc_A5DB20: ZeroRetVal
  loc_A5DB22: ImpAdLdI2 MemVar_C3D048
  loc_A5DB25: BranchF loc_A5DDB6
  loc_A5DB28: ImpAdLdFPR8 MemVar_C3D054
  loc_A5DB2B: CStrDate
  loc_A5DB2D: FStStr var_88
  loc_A5DB30: LitStr "SELECT FeproPaco"
  loc_A5DB33: LitStr " FROM paraconta"
  loc_A5DB36: ConcatStr
  loc_A5DB37: FStStrNoPop UltimaFechAuto
  loc_A5DB3A: LitStr " WHERE PeriInfo = "
  loc_A5DB3D: ConcatStr
  loc_A5DB3E: FStStrNoPop var_98
  loc_A5DB41: FLdI2 PeriInfo
  loc_A5DB44: CStrUI1
  loc_A5DB46: FStStrNoPop var_9C
  loc_A5DB49: ConcatStr
  loc_A5DB4A: FStStrNoPop var_A0
  loc_A5DB4D: LitStr ";"
  loc_A5DB50: ConcatStr
  loc_A5DB51: FStStrNoPop var_A4
  loc_A5DB54: Call EjecutarRsCls(from_stack_1v)
  loc_A5DB59: FFreeStr UltimaFechAuto = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A5DB66: FLdRfVar var_A8
  loc_A5DB69: FLdPr Me
  loc_A5DB6C: MemLdPr global_56
  loc_A5DB6F:  = Me.RecordCount
  loc_A5DB74: ILdRf var_A8
  loc_A5DB77: LitI4 0
  loc_A5DB7C: GtI4
  loc_A5DB7D: BranchF loc_A5DC5C
  loc_A5DB80: FLdRfVar var_C0
  loc_A5DB83: LitVarStr var_BC, "FeproPaco"
  loc_A5DB88: PopAdLdVar
  loc_A5DB89: FLdRfVar var_AC
  loc_A5DB8C: FLdPr Me
  loc_A5DB8F: MemLdPr global_56
  loc_A5DB92:  = Me.Fields
  loc_A5DB97: FLdPr var_AC
  loc_A5DB9A: from_stack_2 = Me.Item(from_stack_1)
  loc_A5DB9F: FLdZeroAd var_C0
  loc_A5DBA2: CVarAd
  loc_A5DBA6: ImpAdCallI2 IsNull()
  loc_A5DBAB: FFree1Ad var_AC
  loc_A5DBAE: FFree1Var var_D0 = ""
  loc_A5DBB1: BranchF loc_A5DBB7
  loc_A5DBB4: Branch loc_A5DC5C
  loc_A5DBB7: FLdRfVar var_D0
  loc_A5DBBA: FLdRfVar var_C0
  loc_A5DBBD: LitVarStr var_BC, "FeproPaco"
  loc_A5DBC2: PopAdLdVar
  loc_A5DBC3: FLdRfVar var_AC
  loc_A5DBC6: FLdPr Me
  loc_A5DBC9: MemLdPr global_56
  loc_A5DBCC:  = Me.Fields
  loc_A5DBD1: FLdPr var_AC
  loc_A5DBD4: from_stack_2 = Me.Item(from_stack_1)
  loc_A5DBD9: FLdPr var_C0
  loc_A5DBDC:  = Me.Value
  loc_A5DBE1: FLdRfVar var_F8
  loc_A5DBE4: FLdRfVar var_E8
  loc_A5DBE7: LitVarStr var_E4, "FeproPaco"
  loc_A5DBEC: PopAdLdVar
  loc_A5DBED: FLdRfVar var_D4
  loc_A5DBF0: FLdPr Me
  loc_A5DBF3: MemLdPr global_56
  loc_A5DBF6:  = Me.Fields
  loc_A5DBFB: FLdPr var_D4
  loc_A5DBFE: from_stack_2 = Me.Item(from_stack_1)
  loc_A5DC03: FLdPr var_E8
  loc_A5DC06:  = Me.Value
  loc_A5DC0B: FLdRfVar var_F8
  loc_A5DC0E: FnCDateVar
  loc_A5DC10: LitI2_Byte 1
  loc_A5DC12: CR8I2
  loc_A5DC13: AddR8
  loc_A5DC14: CDateR8
  loc_A5DC15: CVarDate var_138
  loc_A5DC19: FLdRfVar var_88
  loc_A5DC1C: CVarRef
  loc_A5DC21: ILdRf var_88
  loc_A5DC24: CDateStr
  loc_A5DC26: FLdRfVar var_D0
  loc_A5DC29: FnCDateVar
  loc_A5DC2B: LitI2_Byte 1
  loc_A5DC2D: CR8I2
  loc_A5DC2E: AddR8
  loc_A5DC2F: CDateR8
  loc_A5DC30: GtR4
  loc_A5DC31: CVarBoolI2 var_108
  loc_A5DC35: FLdRfVar var_148
  loc_A5DC38: ImpAdCallFPR4  = IIf(, , )
  loc_A5DC3D: FLdRfVar var_148
  loc_A5DC40: CStrVarTmp
  loc_A5DC41: FStStr var_88
  loc_A5DC44: FFreeAd var_AC = "": var_C0 = "": var_D4 = ""
  loc_A5DC4F: FFreeVar var_D0 = "": var_F8 = "": var_108 = "": var_138 = ""
  loc_A5DC5C: LitStr "SELECT IFNULL(Max(FechAuto),'') FechAuto"
  loc_A5DC5F: LitStr " FROM autorizado"
  loc_A5DC62: ConcatStr
  loc_A5DC63: FStStrNoPop UltimaFechAuto
  loc_A5DC66: LitStr " WHERE PeriInfo = "
  loc_A5DC69: ConcatStr
  loc_A5DC6A: FStStrNoPop var_98
  loc_A5DC6D: FLdI2 PeriInfo
  loc_A5DC70: CStrUI1
  loc_A5DC72: FStStrNoPop var_9C
  loc_A5DC75: ConcatStr
  loc_A5DC76: FStStrNoPop var_A0
  loc_A5DC79: LitStr " AND CodiPart = (SELECT CredPart FROM partida WHERE PeriInfo = "
  loc_A5DC7C: ConcatStr
  loc_A5DC7D: FStStrNoPop var_A4
  loc_A5DC80: FLdI2 PeriInfo
  loc_A5DC83: CStrUI1
  loc_A5DC85: FStStrNoPop var_14C
  loc_A5DC88: ConcatStr
  loc_A5DC89: FStStrNoPop var_150
  loc_A5DC8C: LitStr " AND CodiPart = '"
  loc_A5DC8F: ConcatStr
  loc_A5DC90: FStStrNoPop var_154
  loc_A5DC93: ILdRf var_8C
  loc_A5DC96: ConcatStr
  loc_A5DC97: FStStrNoPop var_158
  loc_A5DC9A: LitStr "')"
  loc_A5DC9D: ConcatStr
  loc_A5DC9E: FStStrNoPop var_15C
  loc_A5DCA1: LitStr " AND CodiOrga = (SELECT CredOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A5DCA4: ConcatStr
  loc_A5DCA5: FStStrNoPop var_160
  loc_A5DCA8: FLdI2 PeriInfo
  loc_A5DCAB: CStrUI1
  loc_A5DCAD: FStStrNoPop var_164
  loc_A5DCB0: ConcatStr
  loc_A5DCB1: FStStrNoPop var_168
  loc_A5DCB4: LitStr " AND CodiOrga = '"
  loc_A5DCB7: ConcatStr
  loc_A5DCB8: FStStrNoPop var_16C
  loc_A5DCBB: ILdRf var_90
  loc_A5DCBE: ConcatStr
  loc_A5DCBF: FStStrNoPop var_170
  loc_A5DCC2: LitStr "');"
  loc_A5DCC5: ConcatStr
  loc_A5DCC6: FStStrNoPop var_174
  loc_A5DCC9: Call EjecutarRsCls(from_stack_1v)
  loc_A5DCCE: FFreeStr UltimaFechAuto = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = ""
  loc_A5DCF1: FLdRfVar var_D0
  loc_A5DCF4: FLdRfVar var_C0
  loc_A5DCF7: LitVarStr var_BC, "FechAuto"
  loc_A5DCFC: PopAdLdVar
  loc_A5DCFD: FLdRfVar var_AC
  loc_A5DD00: FLdPr Me
  loc_A5DD03: MemLdPr global_56
  loc_A5DD06:  = Me.Fields
  loc_A5DD0B: FLdPr var_AC
  loc_A5DD0E: from_stack_2 = Me.Item(from_stack_1)
  loc_A5DD13: FLdPr var_C0
  loc_A5DD16:  = Me.Value
  loc_A5DD1B: FLdRfVar var_D0
  loc_A5DD1E: LitVarStr var_E4, vbNullString
  loc_A5DD23: HardType
  loc_A5DD24: NeVarBool
  loc_A5DD26: FFreeAd var_AC = ""
  loc_A5DD2D: FFree1Var var_D0 = ""
  loc_A5DD30: BranchF loc_A5DDB3
  loc_A5DD33: FLdRfVar var_D0
  loc_A5DD36: FLdRfVar var_C0
  loc_A5DD39: LitVarStr var_BC, "FechAuto"
  loc_A5DD3E: PopAdLdVar
  loc_A5DD3F: FLdRfVar var_AC
  loc_A5DD42: FLdPr Me
  loc_A5DD45: MemLdPr global_56
  loc_A5DD48:  = Me.Fields
  loc_A5DD4D: FLdPr var_AC
  loc_A5DD50: from_stack_2 = Me.Item(from_stack_1)
  loc_A5DD55: FLdPr var_C0
  loc_A5DD58:  = Me.Value
  loc_A5DD5D: FLdRfVar var_D0
  loc_A5DD60: FnCDateVar
  loc_A5DD62: ILdRf var_88
  loc_A5DD65: CDateStr
  loc_A5DD67: GtR4
  loc_A5DD68: FFreeAd var_AC = ""
  loc_A5DD6F: FFree1Var var_D0 = ""
  loc_A5DD72: BranchF loc_A5DDB3
  loc_A5DD75: FLdRfVar var_D0
  loc_A5DD78: FLdRfVar var_C0
  loc_A5DD7B: LitVarStr var_BC, "FechAuto"
  loc_A5DD80: PopAdLdVar
  loc_A5DD81: FLdRfVar var_AC
  loc_A5DD84: FLdPr Me
  loc_A5DD87: MemLdPr global_56
  loc_A5DD8A:  = Me.Fields
  loc_A5DD8F: FLdPr var_AC
  loc_A5DD92: from_stack_2 = Me.Item(from_stack_1)
  loc_A5DD97: FLdPr var_C0
  loc_A5DD9A:  = Me.Value
  loc_A5DD9F: FLdRfVar var_D0
  loc_A5DDA2: FnCDateVar
  loc_A5DDA4: CStrDate
  loc_A5DDA6: FStStr var_88
  loc_A5DDA9: FFreeAd var_AC = ""
  loc_A5DDB0: FFree1Var var_D0 = ""
  loc_A5DDB3: Branch loc_A5DDC3
  loc_A5DDB6: FLdRfVar PeriInfo
  loc_A5DDB9: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A5DDBE: CStrDate
  loc_A5DDC0: FStStr var_88
  loc_A5DDC3: ExitProcCbHresult
  loc_A5DDC9: ExitProcCbHresult
End Function

Public Function ValidaPartida43(PeriInfo, sCodiPart, CucuPers, sExorImpu) 'A6D5DC
  'Data Table: 4AFD00
  loc_A6D284: ILdRf sCodiPart
  loc_A6D287: FStStrCopy var_8C
  loc_A6D28A: ILdRf CucuPers
  loc_A6D28D: FStStrCopy var_90
  loc_A6D290: ILdRf sExorImpu
  loc_A6D293: FStStrCopy ValidaPartida43
  loc_A6D296: ZeroRetVal
  loc_A6D298: OnErrorGoto loc_A6D55A
  loc_A6D29B: LitVarI2 var_C8, 2
  loc_A6D2A0: LitI4 1
  loc_A6D2A5: FLdRfVar var_8C
  loc_A6D2A8: CVarRef
  loc_A6D2AD: FLdRfVar var_D8
  loc_A6D2B0: ImpAdCallFPR4  = Mid(, , )
  loc_A6D2B5: FLdRfVar var_D8
  loc_A6D2B8: LitVarStr var_E8, "43"
  loc_A6D2BD: HardType
  loc_A6D2BE: NeVarBool
  loc_A6D2C0: FFreeVar var_C8 = ""
  loc_A6D2C7: BranchF loc_A6D40F
  loc_A6D2CA: LitStr "SELECT IFNULL(Group_concat(Distinct ExorImpu),'') ExorImpu"
  loc_A6D2CD: LitStr " FROM contpres.imputacion"
  loc_A6D2D0: ConcatStr
  loc_A6D2D1: FStStrNoPop var_FC
  loc_A6D2D4: LitStr " WHERE PeriInfo = "
  loc_A6D2D7: ConcatStr
  loc_A6D2D8: FStStrNoPop var_100
  loc_A6D2DB: FLdI2 PeriInfo
  loc_A6D2DE: CStrUI1
  loc_A6D2E0: FStStrNoPop var_104
  loc_A6D2E3: ConcatStr
  loc_A6D2E4: FStStrNoPop var_108
  loc_A6D2E7: LitStr " AND CodiPart LIKE '43" & Chr(37) & "' AND CucuPers = '"
  loc_A6D2EA: ConcatStr
  loc_A6D2EB: FStStrNoPop var_10C
  loc_A6D2EE: ILdRf var_90
  loc_A6D2F1: ConcatStr
  loc_A6D2F2: FStStrNoPop var_110
  loc_A6D2F5: LitStr "' AND ExorImpu != '"
  loc_A6D2F8: ConcatStr
  loc_A6D2F9: FStStrNoPop var_114
  loc_A6D2FC: ILdRf ValidaPartida43
  loc_A6D2FF: ConcatStr
  loc_A6D300: FStStrNoPop var_118
  loc_A6D303: LitStr "' AND DefiImpu != 0;"
  loc_A6D306: ConcatStr
  loc_A6D307: FStStrNoPop var_11C
  loc_A6D30A: FLdRfVar var_98
  loc_A6D30D: NewIfNullPr clsbase
  loc_A6D310: Call clsbase.RedefineRS(from_stack_1v)
  loc_A6D315: FFreeStr var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_A6D32A: FLdRfVar var_120
  loc_A6D32D: FLdRfVar var_98
  loc_A6D330: NewIfNullPr clsbase
  loc_A6D333: from_stack_1 = clsbase.RecordCount
  loc_A6D338: ILdRf var_120
  loc_A6D33B: LitI4 0
  loc_A6D340: GtI4
  loc_A6D341: BranchF loc_A6D40C
  loc_A6D344: FLdRfVar var_C8
  loc_A6D347: FLdRfVar var_12C
  loc_A6D34A: LitVarStr var_A8, "ExorImpu"
  loc_A6D34F: PopAdLdVar
  loc_A6D350: FLdRfVar var_128
  loc_A6D353: FLdRfVar var_124
  loc_A6D356: FLdRfVar var_98
  loc_A6D359: NewIfNullPr clsbase
  loc_A6D35C: from_stack_1v = clsbase.RsFrmGet()
  loc_A6D361: FLdPr var_124
  loc_A6D364:  = Me.Fields
  loc_A6D369: FLdPr var_128
  loc_A6D36C: from_stack_2 = Me.Item(from_stack_1)
  loc_A6D371: FLdPr var_12C
  loc_A6D374:  = Me.Value
  loc_A6D379: FLdRfVar var_C8
  loc_A6D37C: LitVarStr var_B8, vbNullString
  loc_A6D381: HardType
  loc_A6D382: NeVarBool
  loc_A6D384: FFreeAd var_124 = "": var_128 = ""
  loc_A6D38D: FFree1Var var_C8 = ""
  loc_A6D390: BranchF loc_A6D406
  loc_A6D393: LitStr "Advertencia: El proveedor "
  loc_A6D396: ILdRf var_90
  loc_A6D399: ConcatStr
  loc_A6D39A: FStStrNoPop var_FC
  loc_A6D39D: LitStr " tiene DEFINITIVAS en la Partida TRANSFERENCIAS (Expediente/s: "
  loc_A6D3A0: ConcatStr
  loc_A6D3A1: FStStrNoPop var_100
  loc_A6D3A4: FLdRfVar var_C8
  loc_A6D3A7: FLdRfVar var_12C
  loc_A6D3AA: LitVarStr var_A8, "ExorImpu"
  loc_A6D3AF: PopAdLdVar
  loc_A6D3B0: FLdRfVar var_128
  loc_A6D3B3: FLdRfVar var_124
  loc_A6D3B6: FLdRfVar var_98
  loc_A6D3B9: NewIfNullPr clsbase
  loc_A6D3BC: from_stack_1v = clsbase.RsFrmGet()
  loc_A6D3C1: FLdPr var_124
  loc_A6D3C4:  = Me.Fields
  loc_A6D3C9: FLdPr var_128
  loc_A6D3CC: from_stack_2 = Me.Item(from_stack_1)
  loc_A6D3D1: FLdPr var_12C
  loc_A6D3D4:  = Me.Value
  loc_A6D3D9: FLdRfVar var_C8
  loc_A6D3DC: FnCStrVar
  loc_A6D3DE: FStStrNoPop var_104
  loc_A6D3E1: ConcatStr
  loc_A6D3E2: FStStrNoPop var_108
  loc_A6D3E5: LitStr "). Verifique..."
  loc_A6D3E8: ConcatStr
  loc_A6D3E9: FStStr var_88
  loc_A6D3EC: FFreeStr var_FC = "": var_100 = "": var_104 = ""
  loc_A6D3F7: FFreeAd var_124 = "": var_128 = ""
  loc_A6D400: FFree1Var var_C8 = ""
  loc_A6D403: Branch loc_A6D40C
  loc_A6D406: LitStr vbNullString
  loc_A6D409: FStStrCopy var_88
  loc_A6D40C: Branch loc_A6D551
  loc_A6D40F: LitStr "SELECT IFNULL(Group_concat(Distinct ExorImpu),'') ExorImpu"
  loc_A6D412: LitStr " FROM contpres.imputacion"
  loc_A6D415: ConcatStr
  loc_A6D416: FStStrNoPop var_FC
  loc_A6D419: LitStr " WHERE PeriInfo = "
  loc_A6D41C: ConcatStr
  loc_A6D41D: FStStrNoPop var_100
  loc_A6D420: FLdI2 PeriInfo
  loc_A6D423: CStrUI1
  loc_A6D425: FStStrNoPop var_104
  loc_A6D428: ConcatStr
  loc_A6D429: FStStrNoPop var_108
  loc_A6D42C: LitStr " AND CodiPart NOT LIKE '43" & Chr(37) & "' AND CucuPers = '"
  loc_A6D42F: ConcatStr
  loc_A6D430: FStStrNoPop var_10C
  loc_A6D433: ILdRf var_90
  loc_A6D436: ConcatStr
  loc_A6D437: FStStrNoPop var_110
  loc_A6D43A: LitStr "' AND ExorImpu != '"
  loc_A6D43D: ConcatStr
  loc_A6D43E: FStStrNoPop var_114
  loc_A6D441: ILdRf ValidaPartida43
  loc_A6D444: ConcatStr
  loc_A6D445: FStStrNoPop var_118
  loc_A6D448: LitStr "' AND DefiImpu != 0;"
  loc_A6D44B: ConcatStr
  loc_A6D44C: FStStrNoPop var_11C
  loc_A6D44F: FLdRfVar var_98
  loc_A6D452: NewIfNullPr clsbase
  loc_A6D455: Call clsbase.RedefineRS(from_stack_1v)
  loc_A6D45A: FFreeStr var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_A6D46F: FLdRfVar var_120
  loc_A6D472: FLdRfVar var_98
  loc_A6D475: NewIfNullPr clsbase
  loc_A6D478: from_stack_1 = clsbase.RecordCount
  loc_A6D47D: ILdRf var_120
  loc_A6D480: LitI4 0
  loc_A6D485: GtI4
  loc_A6D486: BranchF loc_A6D551
  loc_A6D489: FLdRfVar var_C8
  loc_A6D48C: FLdRfVar var_12C
  loc_A6D48F: LitVarStr var_A8, "ExorImpu"
  loc_A6D494: PopAdLdVar
  loc_A6D495: FLdRfVar var_128
  loc_A6D498: FLdRfVar var_124
  loc_A6D49B: FLdRfVar var_98
  loc_A6D49E: NewIfNullPr clsbase
  loc_A6D4A1: from_stack_1v = clsbase.RsFrmGet()
  loc_A6D4A6: FLdPr var_124
  loc_A6D4A9:  = Me.Fields
  loc_A6D4AE: FLdPr var_128
  loc_A6D4B1: from_stack_2 = Me.Item(from_stack_1)
  loc_A6D4B6: FLdPr var_12C
  loc_A6D4B9:  = Me.Value
  loc_A6D4BE: FLdRfVar var_C8
  loc_A6D4C1: LitVarStr var_B8, vbNullString
  loc_A6D4C6: HardType
  loc_A6D4C7: NeVarBool
  loc_A6D4C9: FFreeAd var_124 = "": var_128 = ""
  loc_A6D4D2: FFree1Var var_C8 = ""
  loc_A6D4D5: BranchF loc_A6D54B
  loc_A6D4D8: LitStr "Advertencia: El proveedor "
  loc_A6D4DB: ILdRf var_90
  loc_A6D4DE: ConcatStr
  loc_A6D4DF: FStStrNoPop var_FC
  loc_A6D4E2: LitStr " tiene DEFINITIVAS en Partida/s distinta/s a TRANSFERENCIAS (Expediente/s: "
  loc_A6D4E5: ConcatStr
  loc_A6D4E6: FStStrNoPop var_100
  loc_A6D4E9: FLdRfVar var_C8
  loc_A6D4EC: FLdRfVar var_12C
  loc_A6D4EF: LitVarStr var_A8, "ExorImpu"
  loc_A6D4F4: PopAdLdVar
  loc_A6D4F5: FLdRfVar var_128
  loc_A6D4F8: FLdRfVar var_124
  loc_A6D4FB: FLdRfVar var_98
  loc_A6D4FE: NewIfNullPr clsbase
  loc_A6D501: from_stack_1v = clsbase.RsFrmGet()
  loc_A6D506: FLdPr var_124
  loc_A6D509:  = Me.Fields
  loc_A6D50E: FLdPr var_128
  loc_A6D511: from_stack_2 = Me.Item(from_stack_1)
  loc_A6D516: FLdPr var_12C
  loc_A6D519:  = Me.Value
  loc_A6D51E: FLdRfVar var_C8
  loc_A6D521: FnCStrVar
  loc_A6D523: FStStrNoPop var_104
  loc_A6D526: ConcatStr
  loc_A6D527: FStStrNoPop var_108
  loc_A6D52A: LitStr "). Verifique..."
  loc_A6D52D: ConcatStr
  loc_A6D52E: FStStr var_88
  loc_A6D531: FFreeStr var_FC = "": var_100 = "": var_104 = ""
  loc_A6D53C: FFreeAd var_124 = "": var_128 = ""
  loc_A6D545: FFree1Var var_C8 = ""
  loc_A6D548: Branch loc_A6D551
  loc_A6D54B: LitStr vbNullString
  loc_A6D54E: FStStrCopy var_88
  loc_A6D551: On Error GoTo 0
  loc_A6D554: ExitProcCbHresult
  loc_A6D55A: LitVar_Missing var_13C
  loc_A6D55D: LitVar_Missing var_F8
  loc_A6D560: LitVar_Missing var_D8
  loc_A6D563: LitI4 0
  loc_A6D568: LitStr "Error "
  loc_A6D56B: FLdRfVar var_120
  loc_A6D56E: ImpAdCallI2 Err 'rtcErrObj
  loc_A6D573: FStAdFunc var_124
  loc_A6D576: FLdPr var_124
  loc_A6D579:  = Err.Number
  loc_A6D57E: ILdRf var_120
  loc_A6D581: CStrI4
  loc_A6D583: FStStrNoPop var_FC
  loc_A6D586: ConcatStr
  loc_A6D587: FStStrNoPop var_100
  loc_A6D58A: LitStr " ("
  loc_A6D58D: ConcatStr
  loc_A6D58E: FStStrNoPop var_108
  loc_A6D591: FLdRfVar var_104
  loc_A6D594: ImpAdCallI2 Err 'rtcErrObj
  loc_A6D599: FStAdFunc var_128
  loc_A6D59C: FLdPr var_128
  loc_A6D59F:  = Err.Description
  loc_A6D5A4: ILdRf var_104
  loc_A6D5A7: ConcatStr
  loc_A6D5A8: FStStrNoPop var_10C
  loc_A6D5AB: LitStr ") in procedure ValidaCUITdevengado of Módulo DatosCliente"
  loc_A6D5AE: ConcatStr
  loc_A6D5AF: CVarStr var_C8
  loc_A6D5B2: ImpAdCallFPR4 MsgBox(, , , , )
  loc_A6D5B7: FFreeStr var_FC = "": var_100 = "": var_108 = "": var_104 = ""
  loc_A6D5C4: FFreeAd var_124 = ""
  loc_A6D5CB: FFreeVar var_C8 = "": var_D8 = "": var_F8 = ""
  loc_A6D5D6: ExitProcCbHresult
End Function

Private Function Proc_13_80_972354() '972354
  'Data Table: 4AFD00
  loc_972330: LitStr "Primary"
  loc_972333: FLdPr Me
  loc_972336: LateIdLdVar var_94 DispID_4 0
  loc_97233D: CastAdVar Me
  loc_972341: FStAdFunc var_98
  loc_972344: FLdPr var_98
  loc_97234C: FFree1Ad var_98
  loc_97234F: FFree1Var var_94 = ""
  loc_972352: ExitProcHresult
End Function

Private Function Proc_13_81_964BE0(arg_C) '964BE0
  'Data Table: 4AFD00
  loc_964BC8: ILdRf arg_C
  loc_964BCB: FStStrCopy var_88
  loc_964BCE: FLdPr Me
  loc_964BD1: MemLdRfVar from_stack_1.global_60
  loc_964BD4: ILdRf var_88
  loc_964BD7: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_964BDC: ExitProcHresult
End Function

Private Function Proc_13_82_9671BC(arg_C) '9671BC
  'Data Table: 4AFD00
  loc_9671A0: ILdI4 arg_C
  loc_9671A3: FStStrCopy var_88
  loc_9671A6: ILdRf var_88
  loc_9671A9: LitStr "Primary"
  loc_9671AC: EqStr
  loc_9671AE: BranchF loc_9671BB
  loc_9671B1: FLdPr Me
  loc_9671B4: MemLdStr RsFrm
  loc_9671B7: IStAd
  loc_9671BB: ExitProcHresult
End Function

Private Function Proc_13_83_A43AA0(arg_C, arg_10, arg_14, arg_18) 'A43AA0
  'Data Table: 4AFD00
  loc_A43864: ILdRf arg_18
  loc_A43867: FStStrCopy var_90
  loc_A4386A: ILdI4 arg_C
  loc_A4386D: CDateStr
  loc_A4386F: FStFPR8 var_8C
  loc_A43872: ILdRf arg_14
  loc_A43875: LitI4 0
  loc_A4387A: GtI4
  loc_A4387B: BranchF loc_A43969
  loc_A4387E: LitStr "SELECT IFNULL(Min(FechNope),'') FechNope"
  loc_A43881: LitStr " FROM notapedido"
  loc_A43884: ConcatStr
  loc_A43885: FStStrNoPop var_94
  loc_A43888: LitStr " WHERE PeriInfo = "
  loc_A4388B: ConcatStr
  loc_A4388C: FStStrNoPop var_98
  loc_A4388F: FLdI2 arg_10
  loc_A43892: CStrUI1
  loc_A43894: FStStrNoPop var_9C
  loc_A43897: ConcatStr
  loc_A43898: FStStrNoPop var_A0
  loc_A4389B: LitStr " AND CodiNope = '"
  loc_A4389E: ConcatStr
  loc_A4389F: FStStrNoPop var_A4
  loc_A438A2: ILdRf arg_14
  loc_A438A5: CStrI4
  loc_A438A7: FStStrNoPop var_A8
  loc_A438AA: ConcatStr
  loc_A438AB: FStStrNoPop var_AC
  loc_A438AE: LitStr "' AND FeanNope IS NULL;"
  loc_A438B1: ConcatStr
  loc_A438B2: FStStrNoPop var_B0
  loc_A438B5: Call EjecutarRsCls(from_stack_1v)
  loc_A438BA: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A438CD: FLdRfVar var_D8
  loc_A438D0: FLdRfVar var_C8
  loc_A438D3: LitVarStr var_C4, "FechNope"
  loc_A438D8: PopAdLdVar
  loc_A438D9: FLdRfVar var_B4
  loc_A438DC: FLdPr Me
  loc_A438DF: MemLdPr global_56
  loc_A438E2:  = Me.Fields
  loc_A438E7: FLdPr var_B4
  loc_A438EA: from_stack_2 = Me.Item(from_stack_1)
  loc_A438EF: FLdPr var_C8
  loc_A438F2:  = Me.Value
  loc_A438F7: FLdRfVar var_100
  loc_A438FA: FLdRfVar var_F0
  loc_A438FD: LitVarStr var_EC, "FechNope"
  loc_A43902: PopAdLdVar
  loc_A43903: FLdRfVar var_DC
  loc_A43906: FLdPr Me
  loc_A43909: MemLdPr global_56
  loc_A4390C:  = Me.Fields
  loc_A43911: FLdPr var_DC
  loc_A43914: from_stack_2 = Me.Item(from_stack_1)
  loc_A43919: FLdPr var_F0
  loc_A4391C:  = Me.Value
  loc_A43921: FLdRfVar var_100
  loc_A43924: FnCDateVar
  loc_A43926: CVarDate var_140
  loc_A4392A: ILdRf arg_C
  loc_A4392D: CVarRef
  loc_A43932: ILdI4 arg_C
  loc_A43935: CDateStr
  loc_A43937: FLdRfVar var_D8
  loc_A4393A: FnCDateVar
  loc_A4393C: GtR4
  loc_A4393D: CVarBoolI2 var_110
  loc_A43941: FLdRfVar var_150
  loc_A43944: ImpAdCallFPR4  = IIf(, , )
  loc_A43949: FLdRfVar var_150
  loc_A4394C: FnCDateVar
  loc_A4394E: FStFPR8 var_8C
  loc_A43951: FFreeAd var_B4 = "": var_C8 = "": var_DC = ""
  loc_A4395C: FFreeVar var_D8 = "": var_100 = "": var_110 = "": var_140 = ""
  loc_A43969: ILdRf var_90
  loc_A4396C: LitStr vbNullString
  loc_A4396F: NeStr
  loc_A43971: BranchF loc_A43A9A
  loc_A43974: LitStr "SELECT IFNULL(Min(FechNope),'') FechNope"
  loc_A43977: LitStr " FROM notapedido"
  loc_A4397A: ConcatStr
  loc_A4397B: FStStrNoPop var_94
  loc_A4397E: LitStr " WHERE PeriInfo = "
  loc_A43981: ConcatStr
  loc_A43982: FStStrNoPop var_98
  loc_A43985: FLdI2 arg_10
  loc_A43988: CStrUI1
  loc_A4398A: FStStrNoPop var_9C
  loc_A4398D: ConcatStr
  loc_A4398E: FStStrNoPop var_A0
  loc_A43991: LitStr " AND ExpeImpu = '"
  loc_A43994: ConcatStr
  loc_A43995: FStStrNoPop var_A4
  loc_A43998: ILdRf var_90
  loc_A4399B: ConcatStr
  loc_A4399C: FStStrNoPop var_A8
  loc_A4399F: LitStr "';"
  loc_A439A2: ConcatStr
  loc_A439A3: FStStrNoPop var_AC
  loc_A439A6: Call EjecutarRsCls(from_stack_1v)
  loc_A439AB: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A439BC: FLdRfVar var_D8
  loc_A439BF: FLdRfVar var_C8
  loc_A439C2: LitVarStr var_C4, "FechNope"
  loc_A439C7: PopAdLdVar
  loc_A439C8: FLdRfVar var_B4
  loc_A439CB: FLdPr Me
  loc_A439CE: MemLdPr global_56
  loc_A439D1:  = Me.Fields
  loc_A439D6: FLdPr var_B4
  loc_A439D9: from_stack_2 = Me.Item(from_stack_1)
  loc_A439DE: FLdPr var_C8
  loc_A439E1:  = Me.Value
  loc_A439E6: FLdRfVar var_D8
  loc_A439E9: LitVarStr var_EC, vbNullString
  loc_A439EE: HardType
  loc_A439EF: NeVarBool
  loc_A439F1: FFreeAd var_B4 = ""
  loc_A439F8: FFree1Var var_D8 = ""
  loc_A439FB: BranchF loc_A43A9A
  loc_A439FE: FLdRfVar var_D8
  loc_A43A01: FLdRfVar var_C8
  loc_A43A04: LitVarStr var_C4, "FechNope"
  loc_A43A09: PopAdLdVar
  loc_A43A0A: FLdRfVar var_B4
  loc_A43A0D: FLdPr Me
  loc_A43A10: MemLdPr global_56
  loc_A43A13:  = Me.Fields
  loc_A43A18: FLdPr var_B4
  loc_A43A1B: from_stack_2 = Me.Item(from_stack_1)
  loc_A43A20: FLdPr var_C8
  loc_A43A23:  = Me.Value
  loc_A43A28: FLdRfVar var_100
  loc_A43A2B: FLdRfVar var_F0
  loc_A43A2E: LitVarStr var_EC, "FechNope"
  loc_A43A33: PopAdLdVar
  loc_A43A34: FLdRfVar var_DC
  loc_A43A37: FLdPr Me
  loc_A43A3A: MemLdPr global_56
  loc_A43A3D:  = Me.Fields
  loc_A43A42: FLdPr var_DC
  loc_A43A45: from_stack_2 = Me.Item(from_stack_1)
  loc_A43A4A: FLdPr var_F0
  loc_A43A4D:  = Me.Value
  loc_A43A52: FLdRfVar var_100
  loc_A43A55: FnCDateVar
  loc_A43A57: CVarDate var_140
  loc_A43A5B: ILdRf arg_C
  loc_A43A5E: CVarRef
  loc_A43A63: ILdI4 arg_C
  loc_A43A66: CDateStr
  loc_A43A68: FLdRfVar var_D8
  loc_A43A6B: FnCDateVar
  loc_A43A6D: GtR4
  loc_A43A6E: CVarBoolI2 var_110
  loc_A43A72: FLdRfVar var_150
  loc_A43A75: ImpAdCallFPR4  = IIf(, , )
  loc_A43A7A: FLdRfVar var_150
  loc_A43A7D: FnCDateVar
  loc_A43A7F: FStFPR8 var_8C
  loc_A43A82: FFreeAd var_B4 = "": var_C8 = "": var_DC = ""
  loc_A43A8D: FFreeVar var_D8 = "": var_100 = "": var_110 = "": var_140 = ""
  loc_A43A9A: ExitProcCbHresult
End Function

Private Function Proc_13_84_A1F078(arg_C, arg_10, arg_14) 'A1F078
  'Data Table: 4AFD00
  loc_A1EF00: ILdI4 arg_C
  loc_A1EF03: CDateStr
  loc_A1EF05: FStFPR8 var_8C
  loc_A1EF08: LitStr "SELECT *"
  loc_A1EF0B: LitStr " FROM paraconta p"
  loc_A1EF0E: ConcatStr
  loc_A1EF0F: FStStrNoPop var_90
  loc_A1EF12: LitStr " INNER JOIN ordencompra oc ON oc.PeriInfo = p.PeriInfo AND oc.CodiOrco = "
  loc_A1EF15: ConcatStr
  loc_A1EF16: FStStrNoPop var_94
  loc_A1EF19: ILdRf arg_14
  loc_A1EF1C: CStrI4
  loc_A1EF1E: FStStrNoPop var_98
  loc_A1EF21: ConcatStr
  loc_A1EF22: FStStrNoPop var_9C
  loc_A1EF25: LitStr " INNER JOIN itemcompra itc ON itc.PeriInfo = oc.PeriInfo AND itc.CodiOrco = oc.CodiOrco AND itc.CodiPart != p.ParpPaco"
  loc_A1EF28: ConcatStr
  loc_A1EF29: FStStrNoPop var_A0
  loc_A1EF2C: LitStr " WHERE p.PeriInfo = "
  loc_A1EF2F: ConcatStr
  loc_A1EF30: FStStrNoPop var_A4
  loc_A1EF33: FLdI2 arg_10
  loc_A1EF36: CStrUI1
  loc_A1EF38: FStStrNoPop var_A8
  loc_A1EF3B: ConcatStr
  loc_A1EF3C: FStStrNoPop var_AC
  loc_A1EF3F: LitStr ";"
  loc_A1EF42: ConcatStr
  loc_A1EF43: FStStrNoPop var_B0
  loc_A1EF46: Call EjecutarRsCls(from_stack_1v)
  loc_A1EF4B: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A1EF60: FLdRfVar var_B4
  loc_A1EF63: FLdPr Me
  loc_A1EF66: MemLdPr global_56
  loc_A1EF69:  = Me.RecordCount
  loc_A1EF6E: ILdRf var_B4
  loc_A1EF71: LitI4 0
  loc_A1EF76: GtI4
  loc_A1EF77: BranchF loc_A1F071
  loc_A1EF7A: ILdRf arg_14
  loc_A1EF7D: LitI4 0
  loc_A1EF82: GtI4
  loc_A1EF83: BranchF loc_A1F071
  loc_A1EF86: LitStr "SELECT IFNULL(Min(FechOrco),'') FechOrco"
  loc_A1EF89: LitStr " FROM ordencompra"
  loc_A1EF8C: ConcatStr
  loc_A1EF8D: FStStrNoPop var_90
  loc_A1EF90: LitStr " WHERE PeriInfo = "
  loc_A1EF93: ConcatStr
  loc_A1EF94: FStStrNoPop var_94
  loc_A1EF97: FLdI2 arg_10
  loc_A1EF9A: CStrUI1
  loc_A1EF9C: FStStrNoPop var_98
  loc_A1EF9F: ConcatStr
  loc_A1EFA0: FStStrNoPop var_9C
  loc_A1EFA3: LitStr " AND CodiOrco = '"
  loc_A1EFA6: ConcatStr
  loc_A1EFA7: FStStrNoPop var_A0
  loc_A1EFAA: ILdRf arg_14
  loc_A1EFAD: CStrI4
  loc_A1EFAF: FStStrNoPop var_A4
  loc_A1EFB2: ConcatStr
  loc_A1EFB3: FStStrNoPop var_A8
  loc_A1EFB6: LitStr "' AND FeanOrco IS NULL;"
  loc_A1EFB9: ConcatStr
  loc_A1EFBA: FStStrNoPop var_AC
  loc_A1EFBD: Call EjecutarRsCls(from_stack_1v)
  loc_A1EFC2: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A1EFD5: FLdRfVar var_DC
  loc_A1EFD8: FLdRfVar var_CC
  loc_A1EFDB: LitVarStr var_C8, "FechOrco"
  loc_A1EFE0: PopAdLdVar
  loc_A1EFE1: FLdRfVar var_B8
  loc_A1EFE4: FLdPr Me
  loc_A1EFE7: MemLdPr global_56
  loc_A1EFEA:  = Me.Fields
  loc_A1EFEF: FLdPr var_B8
  loc_A1EFF2: from_stack_2 = Me.Item(from_stack_1)
  loc_A1EFF7: FLdPr var_CC
  loc_A1EFFA:  = Me.Value
  loc_A1EFFF: FLdRfVar var_104
  loc_A1F002: FLdRfVar var_F4
  loc_A1F005: LitVarStr var_F0, "FechOrco"
  loc_A1F00A: PopAdLdVar
  loc_A1F00B: FLdRfVar var_E0
  loc_A1F00E: FLdPr Me
  loc_A1F011: MemLdPr global_56
  loc_A1F014:  = Me.Fields
  loc_A1F019: FLdPr var_E0
  loc_A1F01C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F021: FLdPr var_F4
  loc_A1F024:  = Me.Value
  loc_A1F029: FLdRfVar var_104
  loc_A1F02C: FnCDateVar
  loc_A1F02E: CVarDate var_144
  loc_A1F032: ILdRf arg_C
  loc_A1F035: CVarRef
  loc_A1F03A: ILdI4 arg_C
  loc_A1F03D: CDateStr
  loc_A1F03F: FLdRfVar var_DC
  loc_A1F042: FnCDateVar
  loc_A1F044: GtR4
  loc_A1F045: CVarBoolI2 var_114
  loc_A1F049: FLdRfVar var_154
  loc_A1F04C: ImpAdCallFPR4  = IIf(, , )
  loc_A1F051: FLdRfVar var_154
  loc_A1F054: FnCDateVar
  loc_A1F056: FStFPR8 var_8C
  loc_A1F059: FFreeAd var_B8 = "": var_CC = "": var_E0 = ""
  loc_A1F064: FFreeVar var_DC = "": var_104 = "": var_114 = "": var_144 = ""
  loc_A1F071: ExitProcCbHresult
End Function

Private Function Proc_13_85_A5925C(arg_C, arg_10, arg_14, arg_18) 'A5925C
  'Data Table: 4AFD00
  loc_A58FB8: ILdI4 arg_C
  loc_A58FBB: CDateStr
  loc_A58FBD: FStFPR8 var_8C
  loc_A58FC0: ILdRf arg_14
  loc_A58FC3: LitI4 0
  loc_A58FC8: GtI4
  loc_A58FC9: FLdI2 arg_18
  loc_A58FCC: LitI2_Byte 0
  loc_A58FCE: EqI2
  loc_A58FCF: AndI4
  loc_A58FD0: BranchF loc_A59122
  loc_A58FD3: LitVarStr var_DC, "SELECT IFNULL(Min(FechRece),'"
  loc_A58FD8: LitI4 1
  loc_A58FDD: LitI4 1
  loc_A58FE2: LitVarStr var_AC, "yyyy-mm-dd"
  loc_A58FE7: FStVarCopyObj var_BC
  loc_A58FEA: FLdRfVar var_BC
  loc_A58FED: ILdRf arg_C
  loc_A58FF0: CVarRef
  loc_A58FF5: FLdRfVar var_CC
  loc_A58FF8: ImpAdCallFPR4  = Format(, )
  loc_A58FFD: FLdRfVar var_CC
  loc_A59000: ConcatVar var_EC
  loc_A59004: LitVarStr var_FC, "') FechRece"
  loc_A59009: ConcatVar var_10C
  loc_A5900D: LitVarStr var_11C, " FROM recepcion"
  loc_A59012: ConcatVar var_12C
  loc_A59016: LitVarStr var_13C, " WHERE PeriInfo = "
  loc_A5901B: ConcatVar var_14C
  loc_A5901F: FLdI2 arg_10
  loc_A59022: CVarI2 var_15C
  loc_A59025: ConcatVar var_16C
  loc_A59029: LitVarStr var_17C, " AND CodiOrco = '"
  loc_A5902E: ConcatVar var_18C
  loc_A59032: ILdRf arg_14
  loc_A59035: CVarI4
  loc_A59039: ConcatVar var_1AC
  loc_A5903D: LitVarStr var_1BC, "' AND FeanRece IS NULL;"
  loc_A59042: ConcatVar var_1CC
  loc_A59046: CStrVarVal var_1D0
  loc_A5904A: Call EjecutarRsCls(from_stack_1v)
  loc_A5904F: FFree1Str var_1D0
  loc_A59052: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = ""
  loc_A59069: FLdRfVar var_1D4
  loc_A5906C: FLdPr Me
  loc_A5906F: MemLdPr global_56
  loc_A59072:  = Me.RecordCount
  loc_A59077: ILdRf var_1D4
  loc_A5907A: LitI4 0
  loc_A5907F: GtI4
  loc_A59080: BranchF loc_A5911F
  loc_A59083: FLdRfVar var_BC
  loc_A59086: FLdRfVar var_1DC
  loc_A59089: LitVarStr var_9C, "FechRece"
  loc_A5908E: PopAdLdVar
  loc_A5908F: FLdRfVar var_1D8
  loc_A59092: FLdPr Me
  loc_A59095: MemLdPr global_56
  loc_A59098:  = Me.Fields
  loc_A5909D: FLdPr var_1D8
  loc_A590A0: from_stack_2 = Me.Item(from_stack_1)
  loc_A590A5: FLdPr var_1DC
  loc_A590A8:  = Me.Value
  loc_A590AD: FLdRfVar var_CC
  loc_A590B0: FLdRfVar var_1E4
  loc_A590B3: LitVarStr var_AC, "FechRece"
  loc_A590B8: PopAdLdVar
  loc_A590B9: FLdRfVar var_1E0
  loc_A590BC: FLdPr Me
  loc_A590BF: MemLdPr global_56
  loc_A590C2:  = Me.Fields
  loc_A590C7: FLdPr var_1E0
  loc_A590CA: from_stack_2 = Me.Item(from_stack_1)
  loc_A590CF: FLdPr var_1E4
  loc_A590D2:  = Me.Value
  loc_A590D7: FLdRfVar var_CC
  loc_A590DA: FnCDateVar
  loc_A590DC: CVarDate var_EC
  loc_A590E0: ILdRf arg_C
  loc_A590E3: CVarRef
  loc_A590E8: ILdI4 arg_C
  loc_A590EB: CDateStr
  loc_A590ED: FLdRfVar var_BC
  loc_A590F0: FnCDateVar
  loc_A590F2: GtR4
  loc_A590F3: CVarBoolI2 var_DC
  loc_A590F7: FLdRfVar var_10C
  loc_A590FA: ImpAdCallFPR4  = IIf(, , )
  loc_A590FF: FLdRfVar var_10C
  loc_A59102: FnCDateVar
  loc_A59104: FStFPR8 var_8C
  loc_A59107: FFreeAd var_1D8 = "": var_1DC = "": var_1E0 = ""
  loc_A59112: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_EC = ""
  loc_A5911F: Branch loc_A59253
  loc_A59122: ILdRf arg_14
  loc_A59125: LitI4 0
  loc_A5912A: GtI4
  loc_A5912B: FLdI2 arg_18
  loc_A5912E: LitI2_Byte 0
  loc_A59130: GtI2
  loc_A59131: AndI4
  loc_A59132: BranchF loc_A59253
  loc_A59135: LitStr "SELECT IFNULL(Min(FechRece),'') FechRece"
  loc_A59138: LitStr " FROM recepcion"
  loc_A5913B: ConcatStr
  loc_A5913C: FStStrNoPop var_1D0
  loc_A5913F: LitStr " WHERE PeriInfo = "
  loc_A59142: ConcatStr
  loc_A59143: FStStrNoPop var_1E8
  loc_A59146: FLdI2 arg_10
  loc_A59149: CStrUI1
  loc_A5914B: FStStrNoPop var_1EC
  loc_A5914E: ConcatStr
  loc_A5914F: FStStrNoPop var_1F0
  loc_A59152: LitStr " AND CodiOrco = '"
  loc_A59155: ConcatStr
  loc_A59156: FStStrNoPop var_1F4
  loc_A59159: ILdRf arg_14
  loc_A5915C: CStrI4
  loc_A5915E: FStStrNoPop var_1F8
  loc_A59161: ConcatStr
  loc_A59162: FStStrNoPop var_1FC
  loc_A59165: LitStr "' AND CodiRece = '"
  loc_A59168: ConcatStr
  loc_A59169: FStStrNoPop var_200
  loc_A5916C: FLdI2 arg_18
  loc_A5916F: CStrUI1
  loc_A59171: FStStrNoPop var_204
  loc_A59174: ConcatStr
  loc_A59175: FStStrNoPop var_208
  loc_A59178: LitStr "' AND FeanRece IS NULL;"
  loc_A5917B: ConcatStr
  loc_A5917C: FStStrNoPop var_20C
  loc_A5917F: Call EjecutarRsCls(from_stack_1v)
  loc_A59184: FFreeStr var_1D0 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = ""
  loc_A5919D: FLdRfVar var_1D4
  loc_A591A0: FLdPr Me
  loc_A591A3: MemLdPr global_56
  loc_A591A6:  = Me.RecordCount
  loc_A591AB: ILdRf var_1D4
  loc_A591AE: LitI4 0
  loc_A591B3: GtI4
  loc_A591B4: BranchF loc_A59253
  loc_A591B7: FLdRfVar var_BC
  loc_A591BA: FLdRfVar var_1DC
  loc_A591BD: LitVarStr var_9C, "FechRece"
  loc_A591C2: PopAdLdVar
  loc_A591C3: FLdRfVar var_1D8
  loc_A591C6: FLdPr Me
  loc_A591C9: MemLdPr global_56
  loc_A591CC:  = Me.Fields
  loc_A591D1: FLdPr var_1D8
  loc_A591D4: from_stack_2 = Me.Item(from_stack_1)
  loc_A591D9: FLdPr var_1DC
  loc_A591DC:  = Me.Value
  loc_A591E1: FLdRfVar var_CC
  loc_A591E4: FLdRfVar var_1E4
  loc_A591E7: LitVarStr var_AC, "FechRece"
  loc_A591EC: PopAdLdVar
  loc_A591ED: FLdRfVar var_1E0
  loc_A591F0: FLdPr Me
  loc_A591F3: MemLdPr global_56
  loc_A591F6:  = Me.Fields
  loc_A591FB: FLdPr var_1E0
  loc_A591FE: from_stack_2 = Me.Item(from_stack_1)
  loc_A59203: FLdPr var_1E4
  loc_A59206:  = Me.Value
  loc_A5920B: FLdRfVar var_CC
  loc_A5920E: FnCDateVar
  loc_A59210: CVarDate var_EC
  loc_A59214: ILdRf arg_C
  loc_A59217: CVarRef
  loc_A5921C: ILdI4 arg_C
  loc_A5921F: CDateStr
  loc_A59221: FLdRfVar var_BC
  loc_A59224: FnCDateVar
  loc_A59226: GtR4
  loc_A59227: CVarBoolI2 var_DC
  loc_A5922B: FLdRfVar var_10C
  loc_A5922E: ImpAdCallFPR4  = IIf(, , )
  loc_A59233: FLdRfVar var_10C
  loc_A59236: FnCDateVar
  loc_A59238: FStFPR8 var_8C
  loc_A5923B: FFreeAd var_1D8 = "": var_1DC = "": var_1E0 = ""
  loc_A59246: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_EC = ""
  loc_A59253: ExitProcCbHresult
  loc_A59259: GeR8
End Function

Private Function Proc_13_86_AA52DC(arg_C, arg_10, arg_14) 'AA52DC
  'Data Table: 4AFD00
  loc_AA4DF8: ILdRf arg_14
  loc_AA4DFB: FStStrCopy var_90
  loc_AA4DFE: ILdI4 arg_C
  loc_AA4E01: CDateStr
  loc_AA4E03: FStFPR8 var_8C
  loc_AA4E06: FLdUI1
  loc_AA4E0A: CI2UI1
  loc_AA4E0C: LitI2_Byte 0
  loc_AA4E0E: GtI2
  loc_AA4E0F: BranchF loc_AA4F44
  loc_AA4E12: LitStr "Municipalidad de Guaymallén"
  loc_AA4E15: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_AA4E18: EqStr
  loc_AA4E1A: BranchF loc_AA4E20
  loc_AA4E1D: Branch loc_AA4F44
  loc_AA4E20: LitStr "SELECT Max(FechImpu) FechImpu"
  loc_AA4E23: LitStr " FROM imputacion"
  loc_AA4E26: ConcatStr
  loc_AA4E27: FStStrNoPop var_94
  loc_AA4E2A: LitStr " WHERE PeriInfo = "
  loc_AA4E2D: ConcatStr
  loc_AA4E2E: FStStrNoPop var_98
  loc_AA4E31: FLdI2 arg_10
  loc_AA4E34: CStrUI1
  loc_AA4E36: FStStrNoPop var_9C
  loc_AA4E39: ConcatStr
  loc_AA4E3A: FStStrNoPop var_A0
  loc_AA4E3D: LitStr " AND ExorImpu = '"
  loc_AA4E40: ConcatStr
  loc_AA4E41: FStStrNoPop var_A4
  loc_AA4E44: ILdRf var_90
  loc_AA4E47: ConcatStr
  loc_AA4E48: FStStrNoPop var_A8
  loc_AA4E4B: LitStr "' AND PrevImpu != 0;"
  loc_AA4E4E: ConcatStr
  loc_AA4E4F: FStStrNoPop var_AC
  loc_AA4E52: Call EjecutarRsCls(from_stack_1v)
  loc_AA4E57: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AA4E68: FLdRfVar var_D4
  loc_AA4E6B: FLdRfVar var_C4
  loc_AA4E6E: LitVarStr var_C0, "FechImpu"
  loc_AA4E73: PopAdLdVar
  loc_AA4E74: FLdRfVar var_B0
  loc_AA4E77: FLdPr Me
  loc_AA4E7A: MemLdPr global_56
  loc_AA4E7D:  = Me.Fields
  loc_AA4E82: FLdPr var_B0
  loc_AA4E85: from_stack_2 = Me.Item(from_stack_1)
  loc_AA4E8A: FLdPr var_C4
  loc_AA4E8D:  = Me.Value
  loc_AA4E92: FLdRfVar var_D4
  loc_AA4E95: LitVarStr var_E4, vbNullString
  loc_AA4E9A: HardType
  loc_AA4E9B: NeVarBool
  loc_AA4E9D: FFreeAd var_B0 = ""
  loc_AA4EA4: FFree1Var var_D4 = ""
  loc_AA4EA7: BranchF loc_AA4F44
  loc_AA4EAA: FLdRfVar var_D4
  loc_AA4EAD: FLdRfVar var_C4
  loc_AA4EB0: LitVarStr var_C0, "FechImpu"
  loc_AA4EB5: PopAdLdVar
  loc_AA4EB6: FLdRfVar var_B0
  loc_AA4EB9: FLdPr Me
  loc_AA4EBC: MemLdPr global_56
  loc_AA4EBF:  = Me.Fields
  loc_AA4EC4: FLdPr var_B0
  loc_AA4EC7: from_stack_2 = Me.Item(from_stack_1)
  loc_AA4ECC: FLdPr var_C4
  loc_AA4ECF:  = Me.Value
  loc_AA4ED4: FLdRfVar var_F4
  loc_AA4ED7: FLdRfVar var_FC
  loc_AA4EDA: LitVarStr var_E4, "FechImpu"
  loc_AA4EDF: PopAdLdVar
  loc_AA4EE0: FLdRfVar var_F8
  loc_AA4EE3: FLdPr Me
  loc_AA4EE6: MemLdPr global_56
  loc_AA4EE9:  = Me.Fields
  loc_AA4EEE: FLdPr var_F8
  loc_AA4EF1: from_stack_2 = Me.Item(from_stack_1)
  loc_AA4EF6: FLdPr var_FC
  loc_AA4EF9:  = Me.Value
  loc_AA4EFE: FLdRfVar var_F4
  loc_AA4F01: FnCDateVar
  loc_AA4F03: CVarDate var_13C
  loc_AA4F07: FLdRfVar var_8C
  loc_AA4F0A: CVarRef
  loc_AA4F0F: FLdFPR8 var_8C
  loc_AA4F12: FLdRfVar var_D4
  loc_AA4F15: FnCDateVar
  loc_AA4F17: GtR4
  loc_AA4F18: CVarBoolI2 var_10C
  loc_AA4F1C: FLdRfVar var_14C
  loc_AA4F1F: ImpAdCallFPR4  = IIf(, , )
  loc_AA4F24: FLdRfVar var_14C
  loc_AA4F27: FnCDateVar
  loc_AA4F29: FStFPR8 var_8C
  loc_AA4F2C: FFreeAd var_B0 = "": var_C4 = "": var_F8 = ""
  loc_AA4F37: FFreeVar var_D4 = "": var_F4 = "": var_10C = "": var_13C = ""
  loc_AA4F44: FLdUI1
  loc_AA4F48: CI2UI1
  loc_AA4F4A: LitI2_Byte 0
  loc_AA4F4C: GtI2
  loc_AA4F4D: BranchF loc_AA5074
  loc_AA4F50: LitStr "SELECT Max(FechImpu) FechImpu"
  loc_AA4F53: LitStr " FROM imputacion"
  loc_AA4F56: ConcatStr
  loc_AA4F57: FStStrNoPop var_94
  loc_AA4F5A: LitStr " WHERE PeriInfo = "
  loc_AA4F5D: ConcatStr
  loc_AA4F5E: FStStrNoPop var_98
  loc_AA4F61: FLdI2 arg_10
  loc_AA4F64: CStrUI1
  loc_AA4F66: FStStrNoPop var_9C
  loc_AA4F69: ConcatStr
  loc_AA4F6A: FStStrNoPop var_A0
  loc_AA4F6D: LitStr " AND ExorImpu = '"
  loc_AA4F70: ConcatStr
  loc_AA4F71: FStStrNoPop var_A4
  loc_AA4F74: ILdRf var_90
  loc_AA4F77: ConcatStr
  loc_AA4F78: FStStrNoPop var_A8
  loc_AA4F7B: LitStr "' AND DefiImpu != 0;"
  loc_AA4F7E: ConcatStr
  loc_AA4F7F: FStStrNoPop var_AC
  loc_AA4F82: Call EjecutarRsCls(from_stack_1v)
  loc_AA4F87: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AA4F98: FLdRfVar var_D4
  loc_AA4F9B: FLdRfVar var_C4
  loc_AA4F9E: LitVarStr var_C0, "FechImpu"
  loc_AA4FA3: PopAdLdVar
  loc_AA4FA4: FLdRfVar var_B0
  loc_AA4FA7: FLdPr Me
  loc_AA4FAA: MemLdPr global_56
  loc_AA4FAD:  = Me.Fields
  loc_AA4FB2: FLdPr var_B0
  loc_AA4FB5: from_stack_2 = Me.Item(from_stack_1)
  loc_AA4FBA: FLdPr var_C4
  loc_AA4FBD:  = Me.Value
  loc_AA4FC2: FLdRfVar var_D4
  loc_AA4FC5: LitVarStr var_E4, vbNullString
  loc_AA4FCA: HardType
  loc_AA4FCB: NeVarBool
  loc_AA4FCD: FFreeAd var_B0 = ""
  loc_AA4FD4: FFree1Var var_D4 = ""
  loc_AA4FD7: BranchF loc_AA5074
  loc_AA4FDA: FLdRfVar var_D4
  loc_AA4FDD: FLdRfVar var_C4
  loc_AA4FE0: LitVarStr var_C0, "FechImpu"
  loc_AA4FE5: PopAdLdVar
  loc_AA4FE6: FLdRfVar var_B0
  loc_AA4FE9: FLdPr Me
  loc_AA4FEC: MemLdPr global_56
  loc_AA4FEF:  = Me.Fields
  loc_AA4FF4: FLdPr var_B0
  loc_AA4FF7: from_stack_2 = Me.Item(from_stack_1)
  loc_AA4FFC: FLdPr var_C4
  loc_AA4FFF:  = Me.Value
  loc_AA5004: FLdRfVar var_F4
  loc_AA5007: FLdRfVar var_FC
  loc_AA500A: LitVarStr var_E4, "FechImpu"
  loc_AA500F: PopAdLdVar
  loc_AA5010: FLdRfVar var_F8
  loc_AA5013: FLdPr Me
  loc_AA5016: MemLdPr global_56
  loc_AA5019:  = Me.Fields
  loc_AA501E: FLdPr var_F8
  loc_AA5021: from_stack_2 = Me.Item(from_stack_1)
  loc_AA5026: FLdPr var_FC
  loc_AA5029:  = Me.Value
  loc_AA502E: FLdRfVar var_F4
  loc_AA5031: FnCDateVar
  loc_AA5033: CVarDate var_13C
  loc_AA5037: FLdRfVar var_8C
  loc_AA503A: CVarRef
  loc_AA503F: FLdFPR8 var_8C
  loc_AA5042: FLdRfVar var_D4
  loc_AA5045: FnCDateVar
  loc_AA5047: GtR4
  loc_AA5048: CVarBoolI2 var_10C
  loc_AA504C: FLdRfVar var_14C
  loc_AA504F: ImpAdCallFPR4  = IIf(, , )
  loc_AA5054: FLdRfVar var_14C
  loc_AA5057: FnCDateVar
  loc_AA5059: FStFPR8 var_8C
  loc_AA505C: FFreeAd var_B0 = "": var_C4 = "": var_F8 = ""
  loc_AA5067: FFreeVar var_D4 = "": var_F4 = "": var_10C = "": var_13C = ""
  loc_AA5074: FLdUI1
  loc_AA5078: CI2UI1
  loc_AA507A: LitI2_Byte 0
  loc_AA507C: GtI2
  loc_AA507D: BranchF loc_AA51A4
  loc_AA5080: LitStr "SELECT Max(FechImpu) FechImpu"
  loc_AA5083: LitStr " FROM imputacion"
  loc_AA5086: ConcatStr
  loc_AA5087: FStStrNoPop var_94
  loc_AA508A: LitStr " WHERE PeriInfo = "
  loc_AA508D: ConcatStr
  loc_AA508E: FStStrNoPop var_98
  loc_AA5091: FLdI2 arg_10
  loc_AA5094: CStrUI1
  loc_AA5096: FStStrNoPop var_9C
  loc_AA5099: ConcatStr
  loc_AA509A: FStStrNoPop var_A0
  loc_AA509D: LitStr " AND ExorImpu = '"
  loc_AA50A0: ConcatStr
  loc_AA50A1: FStStrNoPop var_A4
  loc_AA50A4: ILdRf var_90
  loc_AA50A7: ConcatStr
  loc_AA50A8: FStStrNoPop var_A8
  loc_AA50AB: LitStr "' AND DeveImpu != 0;"
  loc_AA50AE: ConcatStr
  loc_AA50AF: FStStrNoPop var_AC
  loc_AA50B2: Call EjecutarRsCls(from_stack_1v)
  loc_AA50B7: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AA50C8: FLdRfVar var_D4
  loc_AA50CB: FLdRfVar var_C4
  loc_AA50CE: LitVarStr var_C0, "FechImpu"
  loc_AA50D3: PopAdLdVar
  loc_AA50D4: FLdRfVar var_B0
  loc_AA50D7: FLdPr Me
  loc_AA50DA: MemLdPr global_56
  loc_AA50DD:  = Me.Fields
  loc_AA50E2: FLdPr var_B0
  loc_AA50E5: from_stack_2 = Me.Item(from_stack_1)
  loc_AA50EA: FLdPr var_C4
  loc_AA50ED:  = Me.Value
  loc_AA50F2: FLdRfVar var_D4
  loc_AA50F5: LitVarStr var_E4, vbNullString
  loc_AA50FA: HardType
  loc_AA50FB: NeVarBool
  loc_AA50FD: FFreeAd var_B0 = ""
  loc_AA5104: FFree1Var var_D4 = ""
  loc_AA5107: BranchF loc_AA51A4
  loc_AA510A: FLdRfVar var_D4
  loc_AA510D: FLdRfVar var_C4
  loc_AA5110: LitVarStr var_C0, "FechImpu"
  loc_AA5115: PopAdLdVar
  loc_AA5116: FLdRfVar var_B0
  loc_AA5119: FLdPr Me
  loc_AA511C: MemLdPr global_56
  loc_AA511F:  = Me.Fields
  loc_AA5124: FLdPr var_B0
  loc_AA5127: from_stack_2 = Me.Item(from_stack_1)
  loc_AA512C: FLdPr var_C4
  loc_AA512F:  = Me.Value
  loc_AA5134: FLdRfVar var_F4
  loc_AA5137: FLdRfVar var_FC
  loc_AA513A: LitVarStr var_E4, "FechImpu"
  loc_AA513F: PopAdLdVar
  loc_AA5140: FLdRfVar var_F8
  loc_AA5143: FLdPr Me
  loc_AA5146: MemLdPr global_56
  loc_AA5149:  = Me.Fields
  loc_AA514E: FLdPr var_F8
  loc_AA5151: from_stack_2 = Me.Item(from_stack_1)
  loc_AA5156: FLdPr var_FC
  loc_AA5159:  = Me.Value
  loc_AA515E: FLdRfVar var_F4
  loc_AA5161: FnCDateVar
  loc_AA5163: CVarDate var_13C
  loc_AA5167: FLdRfVar var_8C
  loc_AA516A: CVarRef
  loc_AA516F: FLdFPR8 var_8C
  loc_AA5172: FLdRfVar var_D4
  loc_AA5175: FnCDateVar
  loc_AA5177: GtR4
  loc_AA5178: CVarBoolI2 var_10C
  loc_AA517C: FLdRfVar var_14C
  loc_AA517F: ImpAdCallFPR4  = IIf(, , )
  loc_AA5184: FLdRfVar var_14C
  loc_AA5187: FnCDateVar
  loc_AA5189: FStFPR8 var_8C
  loc_AA518C: FFreeAd var_B0 = "": var_C4 = "": var_F8 = ""
  loc_AA5197: FFreeVar var_D4 = "": var_F4 = "": var_10C = "": var_13C = ""
  loc_AA51A4: FLdUI1
  loc_AA51A8: CI2UI1
  loc_AA51AA: LitI2_Byte 0
  loc_AA51AC: GtI2
  loc_AA51AD: BranchF loc_AA52D4
  loc_AA51B0: LitStr "SELECT Max(FechImpu) FechImpu"
  loc_AA51B3: LitStr " FROM imputacion"
  loc_AA51B6: ConcatStr
  loc_AA51B7: FStStrNoPop var_94
  loc_AA51BA: LitStr " WHERE PeriInfo = "
  loc_AA51BD: ConcatStr
  loc_AA51BE: FStStrNoPop var_98
  loc_AA51C1: FLdI2 arg_10
  loc_AA51C4: CStrUI1
  loc_AA51C6: FStStrNoPop var_9C
  loc_AA51C9: ConcatStr
  loc_AA51CA: FStStrNoPop var_A0
  loc_AA51CD: LitStr " AND ExorImpu = '"
  loc_AA51D0: ConcatStr
  loc_AA51D1: FStStrNoPop var_A4
  loc_AA51D4: ILdRf var_90
  loc_AA51D7: ConcatStr
  loc_AA51D8: FStStrNoPop var_A8
  loc_AA51DB: LitStr "' AND PagaImpu != 0;"
  loc_AA51DE: ConcatStr
  loc_AA51DF: FStStrNoPop var_AC
  loc_AA51E2: Call EjecutarRsCls(from_stack_1v)
  loc_AA51E7: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AA51F8: FLdRfVar var_D4
  loc_AA51FB: FLdRfVar var_C4
  loc_AA51FE: LitVarStr var_C0, "FechImpu"
  loc_AA5203: PopAdLdVar
  loc_AA5204: FLdRfVar var_B0
  loc_AA5207: FLdPr Me
  loc_AA520A: MemLdPr global_56
  loc_AA520D:  = Me.Fields
  loc_AA5212: FLdPr var_B0
  loc_AA5215: from_stack_2 = Me.Item(from_stack_1)
  loc_AA521A: FLdPr var_C4
  loc_AA521D:  = Me.Value
  loc_AA5222: FLdRfVar var_D4
  loc_AA5225: LitVarStr var_E4, vbNullString
  loc_AA522A: HardType
  loc_AA522B: NeVarBool
  loc_AA522D: FFreeAd var_B0 = ""
  loc_AA5234: FFree1Var var_D4 = ""
  loc_AA5237: BranchF loc_AA52D4
  loc_AA523A: FLdRfVar var_D4
  loc_AA523D: FLdRfVar var_C4
  loc_AA5240: LitVarStr var_C0, "FechImpu"
  loc_AA5245: PopAdLdVar
  loc_AA5246: FLdRfVar var_B0
  loc_AA5249: FLdPr Me
  loc_AA524C: MemLdPr global_56
  loc_AA524F:  = Me.Fields
  loc_AA5254: FLdPr var_B0
  loc_AA5257: from_stack_2 = Me.Item(from_stack_1)
  loc_AA525C: FLdPr var_C4
  loc_AA525F:  = Me.Value
  loc_AA5264: FLdRfVar var_F4
  loc_AA5267: FLdRfVar var_FC
  loc_AA526A: LitVarStr var_E4, "FechImpu"
  loc_AA526F: PopAdLdVar
  loc_AA5270: FLdRfVar var_F8
  loc_AA5273: FLdPr Me
  loc_AA5276: MemLdPr global_56
  loc_AA5279:  = Me.Fields
  loc_AA527E: FLdPr var_F8
  loc_AA5281: from_stack_2 = Me.Item(from_stack_1)
  loc_AA5286: FLdPr var_FC
  loc_AA5289:  = Me.Value
  loc_AA528E: FLdRfVar var_F4
  loc_AA5291: FnCDateVar
  loc_AA5293: CVarDate var_13C
  loc_AA5297: FLdRfVar var_8C
  loc_AA529A: CVarRef
  loc_AA529F: FLdFPR8 var_8C
  loc_AA52A2: FLdRfVar var_D4
  loc_AA52A5: FnCDateVar
  loc_AA52A7: GtR4
  loc_AA52A8: CVarBoolI2 var_10C
  loc_AA52AC: FLdRfVar var_14C
  loc_AA52AF: ImpAdCallFPR4  = IIf(, , )
  loc_AA52B4: FLdRfVar var_14C
  loc_AA52B7: FnCDateVar
  loc_AA52B9: FStFPR8 var_8C
  loc_AA52BC: FFreeAd var_B0 = "": var_C4 = "": var_F8 = ""
  loc_AA52C7: FFreeVar var_D4 = "": var_F4 = "": var_10C = "": var_13C = ""
  loc_AA52D4: ExitProcCbHresult
  loc_AA52DA: ExitProcR8
End Function

Private Function Proc_13_87_A33DB8(arg_C, arg_10) 'A33DB8
  'Data Table: 4AFD00
  loc_A33C00: ILdRf arg_10
  loc_A33C03: FStStrCopy var_88
  loc_A33C06: FLdRfVar var_8E
  loc_A33C09: ILdPr
  loc_A33C0C:  = Me.ListIndex
  loc_A33C11: FLdI2 var_8E
  loc_A33C14: FStI2 var_90
  loc_A33C17: FLdI2 var_90
  loc_A33C1A: LitI2_Byte 0
  loc_A33C1C: EqI2
  loc_A33C1D: BranchF loc_A33C37
  loc_A33C20: LitStr " AND ExorImpu LIKE '"
  loc_A33C23: ILdRf var_88
  loc_A33C26: ConcatStr
  loc_A33C27: FStStrNoPop var_94
  loc_A33C2A: LitStr Chr(37) & "'"
  loc_A33C2D: ConcatStr
  loc_A33C2E: FStStr var_8C
  loc_A33C31: FFree1Str var_94
  loc_A33C34: Branch loc_A33CD4
  loc_A33C37: FLdI2 var_90
  loc_A33C3A: LitI2_Byte 1
  loc_A33C3C: EqI2
  loc_A33C3D: BranchF loc_A33C57
  loc_A33C40: LitStr " AND ExpeImpu LIKE '"
  loc_A33C43: ILdRf var_88
  loc_A33C46: ConcatStr
  loc_A33C47: FStStrNoPop var_94
  loc_A33C4A: LitStr Chr(37) & "'"
  loc_A33C4D: ConcatStr
  loc_A33C4E: FStStr var_8C
  loc_A33C51: FFree1Str var_94
  loc_A33C54: Branch loc_A33CD4
  loc_A33C57: FLdI2 var_90
  loc_A33C5A: LitI2_Byte 2
  loc_A33C5C: EqI2
  loc_A33C5D: BranchF loc_A33C77
  loc_A33C60: LitStr " AND DetaImpu LIKE '" & Chr(37)
  loc_A33C63: ILdRf var_88
  loc_A33C66: ConcatStr
  loc_A33C67: FStStrNoPop var_94
  loc_A33C6A: LitStr Chr(37) & "'"
  loc_A33C6D: ConcatStr
  loc_A33C6E: FStStr var_8C
  loc_A33C71: FFree1Str var_94
  loc_A33C74: Branch loc_A33CD4
  loc_A33C77: FLdI2 var_90
  loc_A33C7A: LitI2_Byte 3
  loc_A33C7C: EqI2
  loc_A33C7D: BranchF loc_A33C97
  loc_A33C80: LitStr " AND CodiPart LIKE '"
  loc_A33C83: ILdRf var_88
  loc_A33C86: ConcatStr
  loc_A33C87: FStStrNoPop var_94
  loc_A33C8A: LitStr Chr(37) & "'"
  loc_A33C8D: ConcatStr
  loc_A33C8E: FStStr var_8C
  loc_A33C91: FFree1Str var_94
  loc_A33C94: Branch loc_A33CD4
  loc_A33C97: FLdI2 var_90
  loc_A33C9A: LitI2_Byte 4
  loc_A33C9C: EqI2
  loc_A33C9D: BranchF loc_A33CB7
  loc_A33CA0: LitStr " AND CodiOrga LIKE '"
  loc_A33CA3: ILdRf var_88
  loc_A33CA6: ConcatStr
  loc_A33CA7: FStStrNoPop var_94
  loc_A33CAA: LitStr Chr(37) & "'"
  loc_A33CAD: ConcatStr
  loc_A33CAE: FStStr var_8C
  loc_A33CB1: FFree1Str var_94
  loc_A33CB4: Branch loc_A33CD4
  loc_A33CB7: FLdI2 var_90
  loc_A33CBA: LitI2_Byte 5
  loc_A33CBC: EqI2
  loc_A33CBD: BranchF loc_A33CD4
  loc_A33CC0: LitStr " AND CodiFifu LIKE '"
  loc_A33CC3: ILdRf var_88
  loc_A33CC6: ConcatStr
  loc_A33CC7: FStStrNoPop var_94
  loc_A33CCA: LitStr Chr(37) & "'"
  loc_A33CCD: ConcatStr
  loc_A33CCE: FStStr var_8C
  loc_A33CD1: FFree1Str var_94
  loc_A33CD4: LitStr "DROP TEMPORARY TABLE IF EXISTS tprev;"
  loc_A33CD7: LitStr " CREATE TEMPORARY TABLE prev` ("
  loc_A33CDA: ConcatStr
  loc_A33CDB: FStStrNoPop var_94
  loc_A33CDE: LitStr " eriInfo` year(4) NOT NULL default '0000',"
  loc_A33CE1: ConcatStr
  loc_A33CE2: FStStrNoPop var_98
  loc_A33CE5: LitStr " odiPart` varchar(9) NOT NULL default '',"
  loc_A33CE8: ConcatStr
  loc_A33CE9: FStStrNoPop var_9C
  loc_A33CEC: LitStr " odiOrga` varchar(7) NOT NULL default '',"
  loc_A33CEF: ConcatStr
  loc_A33CF0: FStStrNoPop var_A0
  loc_A33CF3: LitStr " odiFifu` varchar(8) NOT NULL,"
  loc_A33CF6: ConcatStr
  loc_A33CF7: FStStrNoPop var_A4
  loc_A33CFA: LitStr " xorImpu` varchar(15) NOT NULL default '',"
  loc_A33CFD: ConcatStr
  loc_A33CFE: FStStrNoPop var_A8
  loc_A33D01: LitStr " odiUnga` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',"
  loc_A33D04: ConcatStr
  loc_A33D05: FStStrNoPop var_AC
  loc_A33D08: LitStr " odiInsu` int(8) unsigned NOT NULL DEFAULT '0',"
  loc_A33D0B: ConcatStr
  loc_A33D0C: FStStrNoPop var_B0
  loc_A33D0F: LitStr " odiNope` int(8) unsigned NOT NULL DEFAULT '0',"
  loc_A33D12: ConcatStr
  loc_A33D13: FStStrNoPop var_B4
  loc_A33D16: LitStr " tem` smallint(4) unsigned NOT NULL DEFAULT '0',"
  loc_A33D19: ConcatStr
  loc_A33D1A: FStStrNoPop var_B8
  loc_A33D1D: LitStr " ltern` tinyint(2) unsigned NOT NULL DEFAULT '0',"
  loc_A33D20: ConcatStr
  loc_A33D21: FStStrNoPop var_BC
  loc_A33D24: LitStr " aldImpu` decimal(12,2) default NULL,"
  loc_A33D27: ConcatStr
  loc_A33D28: FStStrNoPop var_C0
  loc_A33D2B: LitStr " PRIMARY KEY  (eriInfo`,`CodiPart`,`CodiOrga`,`CodiFifu`,`ExorImpu`,`CodiUnga`,`CodiInsu`,`CodiNope`,`Item`,`Altern`)"
  loc_A33D2E: ConcatStr
  loc_A33D2F: FStStrNoPop var_C4
  loc_A33D32: LitStr " ) ENGINE=MyISAM ; "
  loc_A33D35: ConcatStr
  loc_A33D36: FStStrNoPop var_C8
  loc_A33D39: LitStr "INSERT INTO tprev"
  loc_A33D3C: ConcatStr
  loc_A33D3D: FStStrNoPop var_CC
  loc_A33D40: LitStr " SELECT PeriInfo, CodiPart, CodiOrga, CodiFifu, ExorImpu, CodiUnga, CodiInsu, CodiNope, Item, Altern, Sum(PrevImpu-DefiImpu) SaldImpu"
  loc_A33D43: ConcatStr
  loc_A33D44: FStStrNoPop var_D0
  loc_A33D47: LitStr " FROM imputacion"
  loc_A33D4A: ConcatStr
  loc_A33D4B: FStStrNoPop var_D4
  loc_A33D4E: LitStr " WHERE PeriInfo = "
  loc_A33D51: ConcatStr
  loc_A33D52: FStStrNoPop var_D8
  loc_A33D55: FLdI2 arg_C
  loc_A33D58: CStrUI1
  loc_A33D5A: FStStrNoPop var_DC
  loc_A33D5D: ConcatStr
  loc_A33D5E: FStStrNoPop var_E0
  loc_A33D61: ILdRf var_8C
  loc_A33D64: ConcatStr
  loc_A33D65: FStStrNoPop var_E4
  loc_A33D68: LitStr " AND (PrevImpu != 0 OR DefiImpu != 0)"
  loc_A33D6B: ConcatStr
  loc_A33D6C: FStStrNoPop var_E8
  loc_A33D6F: LitStr " GROUP BY PeriInfo, CodiPart, CodiOrga, CodiFifu, ExorImpu, CodiUnga, CodiInsu, CodiNope, Item, Altern"
  loc_A33D72: ConcatStr
  loc_A33D73: FStStrNoPop var_EC
  loc_A33D76: LitStr " HAVING SaldImpu != 0;"
  loc_A33D79: ConcatStr
  loc_A33D7A: FStStrNoPop var_F0
  loc_A33D7D: Call RedefineRS(from_stack_1v)
  loc_A33D82: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_A33DB5: ExitProcHresult
  loc_A33DB6: FnLenStr
End Function

Private Function Proc_13_88_A39038(arg_C, arg_10) 'A39038
  'Data Table: 4AFD00
  loc_A38E70: ILdRf arg_10
  loc_A38E73: FStStrCopy var_88
  loc_A38E76: FLdRfVar var_8E
  loc_A38E79: ILdPr
  loc_A38E7C:  = Me.ListIndex
  loc_A38E81: FLdI2 var_8E
  loc_A38E84: FStI2 var_90
  loc_A38E87: FLdI2 var_90
  loc_A38E8A: LitI2_Byte 0
  loc_A38E8C: EqI2
  loc_A38E8D: BranchF loc_A38EA7
  loc_A38E90: LitStr " AND ExorImpu LIKE '"
  loc_A38E93: ILdRf var_88
  loc_A38E96: ConcatStr
  loc_A38E97: FStStrNoPop var_94
  loc_A38E9A: LitStr Chr(37) & "'"
  loc_A38E9D: ConcatStr
  loc_A38E9E: FStStr var_8C
  loc_A38EA1: FFree1Str var_94
  loc_A38EA4: Branch loc_A38F44
  loc_A38EA7: FLdI2 var_90
  loc_A38EAA: LitI2_Byte 1
  loc_A38EAC: EqI2
  loc_A38EAD: BranchF loc_A38EC7
  loc_A38EB0: LitStr " AND ExpeImpu LIKE '"
  loc_A38EB3: ILdRf var_88
  loc_A38EB6: ConcatStr
  loc_A38EB7: FStStrNoPop var_94
  loc_A38EBA: LitStr Chr(37) & "'"
  loc_A38EBD: ConcatStr
  loc_A38EBE: FStStr var_8C
  loc_A38EC1: FFree1Str var_94
  loc_A38EC4: Branch loc_A38F44
  loc_A38EC7: FLdI2 var_90
  loc_A38ECA: LitI2_Byte 2
  loc_A38ECC: EqI2
  loc_A38ECD: BranchF loc_A38EE7
  loc_A38ED0: LitStr " AND DetaImpu LIKE '" & Chr(37)
  loc_A38ED3: ILdRf var_88
  loc_A38ED6: ConcatStr
  loc_A38ED7: FStStrNoPop var_94
  loc_A38EDA: LitStr Chr(37) & "'"
  loc_A38EDD: ConcatStr
  loc_A38EDE: FStStr var_8C
  loc_A38EE1: FFree1Str var_94
  loc_A38EE4: Branch loc_A38F44
  loc_A38EE7: FLdI2 var_90
  loc_A38EEA: LitI2_Byte 3
  loc_A38EEC: EqI2
  loc_A38EED: BranchF loc_A38F07
  loc_A38EF0: LitStr " AND CodiPart LIKE '"
  loc_A38EF3: ILdRf var_88
  loc_A38EF6: ConcatStr
  loc_A38EF7: FStStrNoPop var_94
  loc_A38EFA: LitStr Chr(37) & "'"
  loc_A38EFD: ConcatStr
  loc_A38EFE: FStStr var_8C
  loc_A38F01: FFree1Str var_94
  loc_A38F04: Branch loc_A38F44
  loc_A38F07: FLdI2 var_90
  loc_A38F0A: LitI2_Byte 4
  loc_A38F0C: EqI2
  loc_A38F0D: BranchF loc_A38F27
  loc_A38F10: LitStr " AND CodiOrga LIKE '"
  loc_A38F13: ILdRf var_88
  loc_A38F16: ConcatStr
  loc_A38F17: FStStrNoPop var_94
  loc_A38F1A: LitStr Chr(37) & "'"
  loc_A38F1D: ConcatStr
  loc_A38F1E: FStStr var_8C
  loc_A38F21: FFree1Str var_94
  loc_A38F24: Branch loc_A38F44
  loc_A38F27: FLdI2 var_90
  loc_A38F2A: LitI2_Byte 5
  loc_A38F2C: EqI2
  loc_A38F2D: BranchF loc_A38F44
  loc_A38F30: LitStr " AND CodiFifu LIKE '"
  loc_A38F33: ILdRf var_88
  loc_A38F36: ConcatStr
  loc_A38F37: FStStrNoPop var_94
  loc_A38F3A: LitStr Chr(37) & "'"
  loc_A38F3D: ConcatStr
  loc_A38F3E: FStStr var_8C
  loc_A38F41: FFree1Str var_94
  loc_A38F44: LitStr "DROP TEMPORARY TABLE IF EXISTS tdefi;"
  loc_A38F47: LitStr " CREATE TEMPORARY TABLE defi` ("
  loc_A38F4A: ConcatStr
  loc_A38F4B: FStStrNoPop var_94
  loc_A38F4E: LitStr " eriInfo` year(4) NOT NULL default '0000',"
  loc_A38F51: ConcatStr
  loc_A38F52: FStStrNoPop var_98
  loc_A38F55: LitStr " odiPart` varchar(9) NOT NULL default '',"
  loc_A38F58: ConcatStr
  loc_A38F59: FStStrNoPop var_9C
  loc_A38F5C: LitStr " odiOrga` varchar(7) NOT NULL default '',"
  loc_A38F5F: ConcatStr
  loc_A38F60: FStStrNoPop var_A0
  loc_A38F63: LitStr " odiFifu` varchar(8) NOT NULL,"
  loc_A38F66: ConcatStr
  loc_A38F67: FStStrNoPop var_A4
  loc_A38F6A: LitStr " xorImpu` varchar(15) NOT NULL default '',"
  loc_A38F6D: ConcatStr
  loc_A38F6E: FStStrNoPop var_A8
  loc_A38F71: LitStr " odiUnga` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',"
  loc_A38F74: ConcatStr
  loc_A38F75: FStStrNoPop var_AC
  loc_A38F78: LitStr " odiInsu` int(8) unsigned NOT NULL DEFAULT '0',"
  loc_A38F7B: ConcatStr
  loc_A38F7C: FStStrNoPop var_B0
  loc_A38F7F: LitStr " ucuPers` BIGINT(11) UNSIGNED NOT NULL DEFAULT '0',"
  loc_A38F82: ConcatStr
  loc_A38F83: FStStrNoPop var_B4
  loc_A38F86: LitStr " odiNope` int(8) unsigned NOT NULL DEFAULT '0',"
  loc_A38F89: ConcatStr
  loc_A38F8A: FStStrNoPop var_B8
  loc_A38F8D: LitStr " tem` smallint(4) unsigned NOT NULL DEFAULT '0',"
  loc_A38F90: ConcatStr
  loc_A38F91: FStStrNoPop var_BC
  loc_A38F94: LitStr " ltern` tinyint(2) unsigned NOT NULL DEFAULT '0',"
  loc_A38F97: ConcatStr
  loc_A38F98: FStStrNoPop var_C0
  loc_A38F9B: LitStr " odiOrco` int(8) unsigned NOT NULL DEFAULT '0',"
  loc_A38F9E: ConcatStr
  loc_A38F9F: FStStrNoPop var_C4
  loc_A38FA2: LitStr " aldImpu` decimal(12,2) default NULL,"
  loc_A38FA5: ConcatStr
  loc_A38FA6: FStStrNoPop var_C8
  loc_A38FA9: LitStr " PRIMARY KEY  (eriInfo`,`CodiPart`,`CodiOrga`,`CodiFifu`,`ExorImpu`,`CodiUnga`,`CodiInsu`,`CucuPers`,`CodiNope`,`Item`,`Altern`,`CodiOrco`)"
  loc_A38FAC: ConcatStr
  loc_A38FAD: FStStrNoPop var_CC
  loc_A38FB0: LitStr " ) ENGINE=MyISAM ; "
  loc_A38FB3: ConcatStr
  loc_A38FB4: FStStrNoPop var_D0
  loc_A38FB7: LitStr "INSERT INTO tdefi"
  loc_A38FBA: ConcatStr
  loc_A38FBB: FStStrNoPop var_D4
  loc_A38FBE: LitStr " SELECT PeriInfo, CodiPart, CodiOrga, CodiFifu, ExorImpu, CodiUnga, CodiInsu, CucuPers, CodiNope, Item, Altern, CodiOrco, Sum(DefiImpu-DeveImpu) SaldImpu"
  loc_A38FC1: ConcatStr
  loc_A38FC2: FStStrNoPop var_D8
  loc_A38FC5: LitStr " FROM imputacion"
  loc_A38FC8: ConcatStr
  loc_A38FC9: FStStrNoPop var_DC
  loc_A38FCC: LitStr " WHERE PeriInfo = "
  loc_A38FCF: ConcatStr
  loc_A38FD0: FStStrNoPop var_E0
  loc_A38FD3: FLdI2 arg_C
  loc_A38FD6: CStrUI1
  loc_A38FD8: FStStrNoPop var_E4
  loc_A38FDB: ConcatStr
  loc_A38FDC: FStStrNoPop var_E8
  loc_A38FDF: ILdRf var_8C
  loc_A38FE2: ConcatStr
  loc_A38FE3: FStStrNoPop var_EC
  loc_A38FE6: LitStr " AND (DefiImpu != 0 OR DeveImpu != 0)"
  loc_A38FE9: ConcatStr
  loc_A38FEA: FStStrNoPop var_F0
  loc_A38FED: LitStr " GROUP BY PeriInfo, CodiPart, CodiOrga, CodiFifu, ExorImpu, CodiUnga, CodiInsu, CucuPers, CodiNope, Item, Altern, CodiOrco"
  loc_A38FF0: ConcatStr
  loc_A38FF1: FStStrNoPop var_F4
  loc_A38FF4: LitStr " HAVING SaldImpu != 0;"
  loc_A38FF7: ConcatStr
  loc_A38FF8: FStStrNoPop var_F8
  loc_A38FFB: Call RedefineRS(from_stack_1v)
  loc_A39000: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_A39037: ExitProcHresult
End Function

Private Function Proc_13_89_A392A0(arg_C, arg_10) 'A392A0
  'Data Table: 4AFD00
  loc_A390D8: ILdRf arg_10
  loc_A390DB: FStStrCopy var_88
  loc_A390DE: FLdRfVar var_8E
  loc_A390E1: ILdPr
  loc_A390E4:  = Me.ListIndex
  loc_A390E9: FLdI2 var_8E
  loc_A390EC: FStI2 var_90
  loc_A390EF: FLdI2 var_90
  loc_A390F2: LitI2_Byte 0
  loc_A390F4: EqI2
  loc_A390F5: BranchF loc_A3910F
  loc_A390F8: LitStr " AND ExorImpu LIKE '"
  loc_A390FB: ILdRf var_88
  loc_A390FE: ConcatStr
  loc_A390FF: FStStrNoPop var_94
  loc_A39102: LitStr Chr(37) & "'"
  loc_A39105: ConcatStr
  loc_A39106: FStStr var_8C
  loc_A39109: FFree1Str var_94
  loc_A3910C: Branch loc_A391AC
  loc_A3910F: FLdI2 var_90
  loc_A39112: LitI2_Byte 1
  loc_A39114: EqI2
  loc_A39115: BranchF loc_A3912F
  loc_A39118: LitStr " AND ExpeImpu LIKE '"
  loc_A3911B: ILdRf var_88
  loc_A3911E: ConcatStr
  loc_A3911F: FStStrNoPop var_94
  loc_A39122: LitStr Chr(37) & "'"
  loc_A39125: ConcatStr
  loc_A39126: FStStr var_8C
  loc_A39129: FFree1Str var_94
  loc_A3912C: Branch loc_A391AC
  loc_A3912F: FLdI2 var_90
  loc_A39132: LitI2_Byte 2
  loc_A39134: EqI2
  loc_A39135: BranchF loc_A3914F
  loc_A39138: LitStr " AND DetaImpu LIKE '" & Chr(37)
  loc_A3913B: ILdRf var_88
  loc_A3913E: ConcatStr
  loc_A3913F: FStStrNoPop var_94
  loc_A39142: LitStr Chr(37) & "'"
  loc_A39145: ConcatStr
  loc_A39146: FStStr var_8C
  loc_A39149: FFree1Str var_94
  loc_A3914C: Branch loc_A391AC
  loc_A3914F: FLdI2 var_90
  loc_A39152: LitI2_Byte 3
  loc_A39154: EqI2
  loc_A39155: BranchF loc_A3916F
  loc_A39158: LitStr " AND CodiPart LIKE '"
  loc_A3915B: ILdRf var_88
  loc_A3915E: ConcatStr
  loc_A3915F: FStStrNoPop var_94
  loc_A39162: LitStr Chr(37) & "'"
  loc_A39165: ConcatStr
  loc_A39166: FStStr var_8C
  loc_A39169: FFree1Str var_94
  loc_A3916C: Branch loc_A391AC
  loc_A3916F: FLdI2 var_90
  loc_A39172: LitI2_Byte 4
  loc_A39174: EqI2
  loc_A39175: BranchF loc_A3918F
  loc_A39178: LitStr " AND CodiOrga LIKE '"
  loc_A3917B: ILdRf var_88
  loc_A3917E: ConcatStr
  loc_A3917F: FStStrNoPop var_94
  loc_A39182: LitStr Chr(37) & "'"
  loc_A39185: ConcatStr
  loc_A39186: FStStr var_8C
  loc_A39189: FFree1Str var_94
  loc_A3918C: Branch loc_A391AC
  loc_A3918F: FLdI2 var_90
  loc_A39192: LitI2_Byte 5
  loc_A39194: EqI2
  loc_A39195: BranchF loc_A391AC
  loc_A39198: LitStr " AND CodiFifu LIKE '"
  loc_A3919B: ILdRf var_88
  loc_A3919E: ConcatStr
  loc_A3919F: FStStrNoPop var_94
  loc_A391A2: LitStr Chr(37) & "'"
  loc_A391A5: ConcatStr
  loc_A391A6: FStStr var_8C
  loc_A391A9: FFree1Str var_94
  loc_A391AC: LitStr "DROP TEMPORARY TABLE IF EXISTS tdeve;"
  loc_A391AF: LitStr " CREATE TEMPORARY TABLE deve` ("
  loc_A391B2: ConcatStr
  loc_A391B3: FStStrNoPop var_94
  loc_A391B6: LitStr " eriInfo` year(4) NOT NULL default '0000',"
  loc_A391B9: ConcatStr
  loc_A391BA: FStStrNoPop var_98
  loc_A391BD: LitStr " odiPart` varchar(9) NOT NULL default '',"
  loc_A391C0: ConcatStr
  loc_A391C1: FStStrNoPop var_9C
  loc_A391C4: LitStr " odiOrga` varchar(7) NOT NULL default '',"
  loc_A391C7: ConcatStr
  loc_A391C8: FStStrNoPop var_A0
  loc_A391CB: LitStr " odiFifu` varchar(8) NOT NULL,"
  loc_A391CE: ConcatStr
  loc_A391CF: FStStrNoPop var_A4
  loc_A391D2: LitStr " xpeImpu` varchar(15) NOT NULL default '',"
  loc_A391D5: ConcatStr
  loc_A391D6: FStStrNoPop var_A8
  loc_A391D9: LitStr " odiUnga` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',"
  loc_A391DC: ConcatStr
  loc_A391DD: FStStrNoPop var_AC
  loc_A391E0: LitStr " odiInsu` int(8) unsigned NOT NULL DEFAULT '0',"
  loc_A391E3: ConcatStr
  loc_A391E4: FStStrNoPop var_B0
  loc_A391E7: LitStr " ucuPers` BIGINT(11) UNSIGNED NOT NULL DEFAULT '0',"
  loc_A391EA: ConcatStr
  loc_A391EB: FStStrNoPop var_B4
  loc_A391EE: LitStr " odiNope` int(8) unsigned NOT NULL DEFAULT '0',"
  loc_A391F1: ConcatStr
  loc_A391F2: FStStrNoPop var_B8
  loc_A391F5: LitStr " tem` smallint(4) unsigned NOT NULL DEFAULT '0',"
  loc_A391F8: ConcatStr
  loc_A391F9: FStStrNoPop var_BC
  loc_A391FC: LitStr " ltern` tinyint(2) unsigned NOT NULL DEFAULT '0',"
  loc_A391FF: ConcatStr
  loc_A39200: FStStrNoPop var_C0
  loc_A39203: LitStr " odiOrco` int(8) unsigned NOT NULL DEFAULT '0',"
  loc_A39206: ConcatStr
  loc_A39207: FStStrNoPop var_C4
  loc_A3920A: LitStr " aldImpu` decimal(12,2) default NULL,"
  loc_A3920D: ConcatStr
  loc_A3920E: FStStrNoPop var_C8
  loc_A39211: LitStr " PRIMARY KEY  (eriInfo`,`CodiPart`,`CodiOrga`,`CodiFifu`,`ExpeImpu`,`CodiUnga`,`CodiInsu`,`CucuPers`,`CodiNope`,`Item`,`Altern`,`CodiOrco`)"
  loc_A39214: ConcatStr
  loc_A39215: FStStrNoPop var_CC
  loc_A39218: LitStr " ) ENGINE=MyISAM ; "
  loc_A3921B: ConcatStr
  loc_A3921C: FStStrNoPop var_D0
  loc_A3921F: LitStr "INSERT INTO tdeve"
  loc_A39222: ConcatStr
  loc_A39223: FStStrNoPop var_D4
  loc_A39226: LitStr " SELECT PeriInfo, CodiPart, CodiOrga, CodiFifu, ExpeImpu, CodiUnga, CodiInsu, CucuPers, CodiNope, Item, Altern, CodiOrco, Sum(DeveImpu-MapaImpu) SaldImpu"
  loc_A39229: ConcatStr
  loc_A3922A: FStStrNoPop var_D8
  loc_A3922D: LitStr " FROM imputacion"
  loc_A39230: ConcatStr
  loc_A39231: FStStrNoPop var_DC
  loc_A39234: LitStr " WHERE PeriInfo = "
  loc_A39237: ConcatStr
  loc_A39238: FStStrNoPop var_E0
  loc_A3923B: FLdI2 arg_C
  loc_A3923E: CStrUI1
  loc_A39240: FStStrNoPop var_E4
  loc_A39243: ConcatStr
  loc_A39244: FStStrNoPop var_E8
  loc_A39247: ILdRf var_8C
  loc_A3924A: ConcatStr
  loc_A3924B: FStStrNoPop var_EC
  loc_A3924E: LitStr " AND (DeveImpu != 0 OR MapaImpu != 0)"
  loc_A39251: ConcatStr
  loc_A39252: FStStrNoPop var_F0
  loc_A39255: LitStr " GROUP BY PeriInfo, CodiPart, CodiOrga, CodiFifu, ExpeImpu, CodiUnga, CodiInsu, CucuPers, CodiNope, Item, Altern, CodiOrco"
  loc_A39258: ConcatStr
  loc_A39259: FStStrNoPop var_F4
  loc_A3925C: LitStr " HAVING SaldImpu != 0;"
  loc_A3925F: ConcatStr
  loc_A39260: FStStrNoPop var_F8
  loc_A39263: Call RedefineRS(from_stack_1v)
  loc_A39268: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_A3929F: ExitProcHresult
End Function
