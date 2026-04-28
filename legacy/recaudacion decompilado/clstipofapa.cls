VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clstipofapa"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '406DA4
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '406DB3
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '406DC2
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9EA12C
  'Data Table: 406B88
  loc_9EA104: FLdRfVar var_88
  loc_9EA107: FLdPr Me
  loc_9EA10A: MemLdPr RsFrm
  loc_9EA10D:  = Me.RecordCount
  loc_9EA112: ILdRf var_88
  loc_9EA115: LitI4 0
  loc_9EA11A: GtI4
  loc_9EA11B: BranchF loc_9EA129
  loc_9EA11E: FLdPr Me
  loc_9EA121: MemLdPr RsFrm
  loc_9EA124: Me.MoveFirst
  loc_9EA129: ExitProcHresult
End Sub

Public Sub MoveLast() '9EA0D4
  'Data Table: 406B88
  loc_9EA0AC: FLdRfVar var_88
  loc_9EA0AF: FLdPr Me
  loc_9EA0B2: MemLdPr RsFrm
  loc_9EA0B5:  = Me.RecordCount
  loc_9EA0BA: ILdRf var_88
  loc_9EA0BD: LitI4 0
  loc_9EA0C2: GtI4
  loc_9EA0C3: BranchF loc_9EA0D1
  loc_9EA0C6: FLdPr Me
  loc_9EA0C9: MemLdPr RsFrm
  loc_9EA0CC: Me.MoveLast
  loc_9EA0D1: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6AFF0
  'Data Table: 406B88
  loc_A6AF78: FLdRfVar var_86
  loc_A6AF7B: FLdPr Me
  loc_A6AF7E: MemLdPr RsFrm
  loc_A6AF81:  = Me.EOF
  loc_A6AF86: FLdI2 var_86
  loc_A6AF89: NotI4
  loc_A6AF8A: FLdRfVar var_8C
  loc_A6AF8D: FLdPr Me
  loc_A6AF90: MemLdPr RsFrm
  loc_A6AF93:  = Me.RecordCount
  loc_A6AF98: ILdRf var_8C
  loc_A6AF9B: LitI4 0
  loc_A6AFA0: GtI4
  loc_A6AFA1: AndI4
  loc_A6AFA2: BranchF loc_A6AFB0
  loc_A6AFA5: FLdPr Me
  loc_A6AFA8: MemLdPr RsFrm
  loc_A6AFAB: Me.MoveNext
  loc_A6AFB0: FLdRfVar var_86
  loc_A6AFB3: FLdPr Me
  loc_A6AFB6: MemLdPr RsFrm
  loc_A6AFB9:  = Me.EOF
  loc_A6AFBE: FLdI2 var_86
  loc_A6AFC1: FLdRfVar var_8C
  loc_A6AFC4: FLdPr Me
  loc_A6AFC7: MemLdPr RsFrm
  loc_A6AFCA:  = Me.RecordCount
  loc_A6AFCF: ILdRf var_8C
  loc_A6AFD2: LitI4 0
  loc_A6AFD7: GtI4
  loc_A6AFD8: AndI4
  loc_A6AFD9: BranchF loc_A6AFEC
  loc_A6AFDC: ImpAdCallFPR4 Beep()
  loc_A6AFE1: FLdPr Me
  loc_A6AFE4: MemLdPr RsFrm
  loc_A6AFE7: Me.MoveLast
  loc_A6AFEC: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B159C
  'Data Table: 406B88
  loc_9B1590: FLdPr Me
  loc_9B1593: MemLdPr RsFrm
  loc_9B1596: Me.MoveNext
  loc_9B159B: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B8BCC
  'Data Table: 406B88
  loc_9B8BB8: LitVar_Missing var_94
  loc_9B8BBB: PopAdLdVar
  loc_9B8BBC: ILdI2 iValor
  loc_9B8BBF: CI4UI1
  loc_9B8BC0: FLdPr Me
  loc_9B8BC3: MemLdPr RsFrm
  loc_9B8BC6: Me.Move from_stack_1, from_stack_2
  loc_9B8BCB: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6B3E0
  'Data Table: 406B88
  loc_A6B368: FLdRfVar var_86
  loc_A6B36B: FLdPr Me
  loc_A6B36E: MemLdPr RsFrm
  loc_A6B371:  = Me.BOF
  loc_A6B376: FLdI2 var_86
  loc_A6B379: NotI4
  loc_A6B37A: FLdRfVar var_8C
  loc_A6B37D: FLdPr Me
  loc_A6B380: MemLdPr RsFrm
  loc_A6B383:  = Me.RecordCount
  loc_A6B388: ILdRf var_8C
  loc_A6B38B: LitI4 0
  loc_A6B390: GtI4
  loc_A6B391: AndI4
  loc_A6B392: BranchF loc_A6B3A0
  loc_A6B395: FLdPr Me
  loc_A6B398: MemLdPr RsFrm
  loc_A6B39B: Me.MovePrevious
  loc_A6B3A0: FLdRfVar var_86
  loc_A6B3A3: FLdPr Me
  loc_A6B3A6: MemLdPr RsFrm
  loc_A6B3A9:  = Me.BOF
  loc_A6B3AE: FLdI2 var_86
  loc_A6B3B1: FLdRfVar var_8C
  loc_A6B3B4: FLdPr Me
  loc_A6B3B7: MemLdPr RsFrm
  loc_A6B3BA:  = Me.RecordCount
  loc_A6B3BF: ILdRf var_8C
  loc_A6B3C2: LitI4 0
  loc_A6B3C7: GtI4
  loc_A6B3C8: AndI4
  loc_A6B3C9: BranchF loc_A6B3DC
  loc_A6B3CC: ImpAdCallFPR4 Beep()
  loc_A6B3D1: FLdPr Me
  loc_A6B3D4: MemLdPr RsFrm
  loc_A6B3D7: Me.MoveFirst
  loc_A6B3DC: ExitProcHresult
End Sub

Public Property Get EOF() '9D0EC4
  'Data Table: 406B88
  loc_9D0EA8: FLdRfVar var_88
  loc_9D0EAB: FLdPr Me
  loc_9D0EAE: MemLdPr RsFrm
  loc_9D0EB1:  = Me.EOF
  loc_9D0EB6: FLdI2 var_88
  loc_9D0EB9: FStI2 var_86
  loc_9D0EBC: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D0D48
  'Data Table: 406B88
  loc_9D0D2C: FLdRfVar var_88
  loc_9D0D2F: FLdPr Me
  loc_9D0D32: MemLdPr RsFrm
  loc_9D0D35:  = Me.BOF
  loc_9D0D3A: FLdI2 var_88
  loc_9D0D3D: FStI2 var_86
  loc_9D0D40: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B2EB8
  'Data Table: 406B88
  loc_9B2EA8: ILdI4 sOrden
  loc_9B2EAB: FLdPr Me
  loc_9B2EAE: MemLdPr RsFrm
  loc_9B2EB1: Me.Sort = from_stack_1
  loc_9B2EB6: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9B933C
  'Data Table: 406B88
  loc_9B9328: ILdI4 sCriterio
  loc_9B932B: CVarStr var_94
  loc_9B932E: PopAdLdVar
  loc_9B932F: FLdPr Me
  loc_9B9332: MemLdPr RsFrm
  loc_9B9335: Me.Filter = from_stack_1
  loc_9B933A: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E3CB0
  'Data Table: 406B88
  loc_9E3C90: LitVar_Missing var_94
  loc_9E3C93: PopAdLdVar
  loc_9E3C94: LitI4 1
  loc_9E3C99: LitI4 0
  loc_9E3C9E: ILdI4 sFind
  loc_9E3CA1: FLdPr Me
  loc_9E3CA4: MemLdPr RsFrm
  loc_9E3CA7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E3CAC: ExitProcHresult
End Sub

Public Property Get AbsolutePosition(arg_10) '9D0BCC
  'Data Table: 406B88
  loc_9D0BB0: FLdRfVar var_8C
  loc_9D0BB3: FLdPr Me
  loc_9D0BB6: MemLdPr RsFrm
  loc_9D0BB9:  = Me.AbsolutePosition
  loc_9D0BBE: ILdRf var_8C
  loc_9D0BC1: FStR4 var_88
  loc_9D0BC4: ExitProcCbHresult
  loc_9D0BCA: IStDarg arg_1000
End Sub

Public Sub AddNew(CodiTifa, DetaTifa, TipoTifa, EmitTifa, ExpeTifa, ResoTifa, MecaTifa, InteTifa, MomiTifa, DecaTifa, DereTifa, TianTifa, AntiTifa, CumiTifa, CumaTifa, ImmiTifa, VecuTifa, CbuTifa) 'B58778
  'Data Table: 406B88
  loc_B58474: ILdRf DetaTifa
  loc_B58477: FStStrCopy var_88
  loc_B5847A: ILdRf TipoTifa
  loc_B5847D: FStStrCopy var_8C
  loc_B58480: ILdRf EmitTifa
  loc_B58483: FStStrCopy var_90
  loc_B58486: ILdRf ExpeTifa
  loc_B58489: FStStrCopy var_94
  loc_B5848C: ILdRf ResoTifa
  loc_B5848F: FStStrCopy var_98
  loc_B58492: ILdRf MecaTifa
  loc_B58495: FStStrCopy var_9C
  loc_B58498: ILdRf AddNew8
  loc_B5849B: FStStrCopy var_A0
  loc_B5849E: ILdRf arg_64
  loc_B584A1: FStStrCopy var_A4
  loc_B584A4: FLdRfVar var_A8
  loc_B584A7: FLdI2 CodiTifa
  loc_B584AA: from_stack_2v = ValidaClave(from_stack_1v)
  loc_B584AF: ILdRf var_A8
  loc_B584B2: LitStr vbNullString
  loc_B584B5: NeStr
  loc_B584B7: FFree1Str var_A8
  loc_B584BA: BranchF loc_B584C8
  loc_B584BD: LitStr "El TIPO YA EXISTE. Reintente..."
  loc_B584C0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B584C5: Branch loc_B58774
  loc_B584C8: LitI2_Byte 0
  loc_B584CA: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B584CF: FStFPR8 var_1CC
  loc_B584D2: LitStr "INSERT INTO tipofapa (CodiTifa, DetaTifa, TipoTifa, FealTifa, EmitTifa, ExpeTifa, ResoTifa, MecaTifa, InteTifa, MomiTifa, DecaTifa, DereTifa, TianTifa, AntiTifa, CumiTifa, CumaTifa, ImmiTifa, VecuTifa, CbuTifa) "
  loc_B584D5: LitStr " VALUES ("
  loc_B584D8: ConcatStr
  loc_B584D9: FStStrNoPop var_A8
  loc_B584DC: FLdI2 CodiTifa
  loc_B584DF: CStrUI1
  loc_B584E1: FStStrNoPop var_AC
  loc_B584E4: ConcatStr
  loc_B584E5: FStStrNoPop var_B0
  loc_B584E8: LitStr ",'"
  loc_B584EB: ConcatStr
  loc_B584EC: FStStrNoPop var_B4
  loc_B584EF: ILdRf var_88
  loc_B584F2: ConcatStr
  loc_B584F3: FStStrNoPop var_B8
  loc_B584F6: LitStr "','"
  loc_B584F9: ConcatStr
  loc_B584FA: FStStrNoPop var_BC
  loc_B584FD: ILdRf var_8C
  loc_B58500: ConcatStr
  loc_B58501: FStStrNoPop var_C0
  loc_B58504: LitStr "','"
  loc_B58507: ConcatStr
  loc_B58508: FStStrNoPop var_104
  loc_B5850B: LitI4 1
  loc_B58510: LitI4 1
  loc_B58515: LitVarStr var_F0, "yyyy-mm-dd"
  loc_B5851A: FStVarCopyObj var_100
  loc_B5851D: FLdRfVar var_100
  loc_B58520: FLdFPR8 var_1CC
  loc_B58523: CVarDate var_E0
  loc_B58527: ImpAdCallI2 Format$(, )
  loc_B5852C: FStStrNoPop var_108
  loc_B5852F: ConcatStr
  loc_B58530: FStStrNoPop var_10C
  loc_B58533: LitStr "','"
  loc_B58536: ConcatStr
  loc_B58537: FStStrNoPop var_110
  loc_B5853A: ILdRf var_90
  loc_B5853D: ConcatStr
  loc_B5853E: FStStrNoPop var_114
  loc_B58541: LitStr "','"
  loc_B58544: ConcatStr
  loc_B58545: FStStrNoPop var_118
  loc_B58548: ILdRf var_94
  loc_B5854B: ConcatStr
  loc_B5854C: FStStrNoPop var_11C
  loc_B5854F: LitStr "','"
  loc_B58552: ConcatStr
  loc_B58553: FStStrNoPop var_120
  loc_B58556: ILdRf var_98
  loc_B58559: ConcatStr
  loc_B5855A: FStStrNoPop var_124
  loc_B5855D: LitStr "','"
  loc_B58560: ConcatStr
  loc_B58561: FStStrNoPop var_128
  loc_B58564: ILdRf var_9C
  loc_B58567: ConcatStr
  loc_B58568: FStStrNoPop var_12C
  loc_B5856B: LitStr "',"
  loc_B5856E: ConcatStr
  loc_B5856F: FStStrNoPop var_134
  loc_B58572: LitI4 0
  loc_B58577: LitI4 -1
  loc_B5857C: LitI4 1
  loc_B58581: LitStr "."
  loc_B58584: LitStr ","
  loc_B58587: FLdFPR8 InteTifa
  loc_B5858A: CStrR8
  loc_B5858C: FStStrNoPop var_130
  loc_B5858F: ImpAdCallI2 Replace(, , , , , )
  loc_B58594: FStStrNoPop var_138
  loc_B58597: ConcatStr
  loc_B58598: FStStrNoPop var_13C
  loc_B5859B: LitStr ","
  loc_B5859E: ConcatStr
  loc_B5859F: FStStrNoPop var_144
  loc_B585A2: LitI4 0
  loc_B585A7: LitI4 -1
  loc_B585AC: LitI4 1
  loc_B585B1: LitStr "."
  loc_B585B4: LitStr ","
  loc_B585B7: FLdFPR8 DecaTifa
  loc_B585BA: CStrR8
  loc_B585BC: FStStrNoPop var_140
  loc_B585BF: ImpAdCallI2 Replace(, , , , , )
  loc_B585C4: FStStrNoPop var_148
  loc_B585C7: ConcatStr
  loc_B585C8: FStStrNoPop var_14C
  loc_B585CB: LitStr ","
  loc_B585CE: ConcatStr
  loc_B585CF: FStStrNoPop var_154
  loc_B585D2: LitI4 0
  loc_B585D7: LitI4 -1
  loc_B585DC: LitI4 1
  loc_B585E1: LitStr "."
  loc_B585E4: LitStr ","
  loc_B585E7: FLdFPR8 TianTifa
  loc_B585EA: CStrR8
  loc_B585EC: FStStrNoPop var_150
  loc_B585EF: ImpAdCallI2 Replace(, , , , , )
  loc_B585F4: FStStrNoPop var_158
  loc_B585F7: ConcatStr
  loc_B585F8: FStStrNoPop var_15C
  loc_B585FB: LitStr ","
  loc_B585FE: ConcatStr
  loc_B585FF: FStStrNoPop var_164
  loc_B58602: LitI4 0
  loc_B58607: LitI4 -1
  loc_B5860C: LitI4 1
  loc_B58611: LitStr "."
  loc_B58614: LitStr ","
  loc_B58617: FLdFPR8 AddNew0
  loc_B5861A: CStrR8
  loc_B5861C: FStStrNoPop var_160
  loc_B5861F: ImpAdCallI2 Replace(, , , , , )
  loc_B58624: FStStrNoPop var_168
  loc_B58627: ConcatStr
  loc_B58628: FStStrNoPop var_16C
  loc_B5862B: LitStr ",'"
  loc_B5862E: ConcatStr
  loc_B5862F: FStStrNoPop var_170
  loc_B58632: ILdRf var_A0
  loc_B58635: ConcatStr
  loc_B58636: FStStrNoPop var_174
  loc_B58639: LitStr "',"
  loc_B5863C: ConcatStr
  loc_B5863D: FStStrNoPop var_17C
  loc_B58640: LitI4 0
  loc_B58645: LitI4 -1
  loc_B5864A: LitI4 1
  loc_B5864F: LitStr "."
  loc_B58652: LitStr ","
  loc_B58655: FLdFPR8 AddNewC
  loc_B58658: CStrR8
  loc_B5865A: FStStrNoPop var_178
  loc_B5865D: ImpAdCallI2 Replace(, , , , , )
  loc_B58662: FStStrNoPop var_180
  loc_B58665: ConcatStr
  loc_B58666: FStStrNoPop var_184
  loc_B58669: LitStr ","
  loc_B5866C: ConcatStr
  loc_B5866D: FStStrNoPop var_188
  loc_B58670: FLdI2 arg_54
  loc_B58673: CStrUI1
  loc_B58675: FStStrNoPop var_18C
  loc_B58678: ConcatStr
  loc_B58679: FStStrNoPop var_190
  loc_B5867C: LitStr ","
  loc_B5867F: ConcatStr
  loc_B58680: FStStrNoPop var_194
  loc_B58683: FLdI2 arg_58
  loc_B58686: CStrUI1
  loc_B58688: FStStrNoPop var_198
  loc_B5868B: ConcatStr
  loc_B5868C: FStStrNoPop var_19C
  loc_B5868F: LitStr ","
  loc_B58692: ConcatStr
  loc_B58693: FStStrNoPop var_1A4
  loc_B58696: LitI4 0
  loc_B5869B: LitI4 -1
  loc_B586A0: LitI4 1
  loc_B586A5: LitStr "."
  loc_B586A8: LitStr ","
  loc_B586AB: FLdFPR8 arg_5C
  loc_B586AE: CStrR8
  loc_B586B0: FStStrNoPop var_1A0
  loc_B586B3: ImpAdCallI2 Replace(, , , , , )
  loc_B586B8: FStStrNoPop var_1A8
  loc_B586BB: ConcatStr
  loc_B586BC: FStStrNoPop var_1AC
  loc_B586BF: LitStr ",'"
  loc_B586C2: ConcatStr
  loc_B586C3: FStStrNoPop var_1B0
  loc_B586C6: ILdRf var_A4
  loc_B586C9: ConcatStr
  loc_B586CA: FStStrNoPop var_1B4
  loc_B586CD: LitStr "',"
  loc_B586D0: ConcatStr
  loc_B586D1: FStStrNoPop var_1B8
  loc_B586D4: FLdUI1
  loc_B586D8: CStrI2
  loc_B586DA: FStStrNoPop var_1BC
  loc_B586DD: ConcatStr
  loc_B586DE: FStStrNoPop var_1C0
  loc_B586E1: LitStr ")"
  loc_B586E4: ConcatStr
  loc_B586E5: FStStrNoPop var_1C4
  loc_B586E8: Call Proc_10_28_A472E0()
  loc_B586ED: FFreeStr var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = ""
  loc_B58760: FFreeVar var_E0 = ""
  loc_B58767: Call Requery()
  loc_B5876C: FLdI2 CodiTifa
  loc_B5876F: Call Encontrar(from_stack_1v)
  loc_B58774: ExitProcHresult
End Sub

Public Sub Modificar(CodiTifa, DetaTifa, TipoTifa, EmitTifa, ExpeTifa, ResoTifa, MecaTifa, InteTifa, MomiTifa, DecaTifa, DereTifa, TianTifa, AntiTifa, CumiTifa, CumaTifa, ImmiTifa, VecuTifa, CbuTifa) 'B4FCFC
  'Data Table: 406B88
  loc_B4FA30: ILdRf DetaTifa
  loc_B4FA33: FStStrCopy var_88
  loc_B4FA36: ILdRf TipoTifa
  loc_B4FA39: FStStrCopy var_8C
  loc_B4FA3C: ILdRf EmitTifa
  loc_B4FA3F: FStStrCopy var_90
  loc_B4FA42: ILdRf ExpeTifa
  loc_B4FA45: FStStrCopy var_94
  loc_B4FA48: ILdRf ResoTifa
  loc_B4FA4B: FStStrCopy var_98
  loc_B4FA4E: ILdRf MecaTifa
  loc_B4FA51: FStStrCopy var_9C
  loc_B4FA54: ILdRf Modificar8
  loc_B4FA57: FStStrCopy var_A0
  loc_B4FA5A: ILdRf arg_64
  loc_B4FA5D: FStStrCopy var_A4
  loc_B4FA60: FLdRfVar var_A8
  loc_B4FA63: FLdI2 CodiTifa
  loc_B4FA66: from_stack_2v = ValidaClave(from_stack_1v)
  loc_B4FA6B: ILdRf var_A8
  loc_B4FA6E: LitStr vbNullString
  loc_B4FA71: EqStr
  loc_B4FA73: FFree1Str var_A8
  loc_B4FA76: BranchF loc_B4FA84
  loc_B4FA79: LitStr "El Tipo De Facilidad NO EXISTE. Reintente..."
  loc_B4FA7C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B4FA81: Branch loc_B4FCED
  loc_B4FA84: LitStr "UPDATE tipofapa SET CodiTifa = "
  loc_B4FA87: FLdI2 CodiTifa
  loc_B4FA8A: CStrUI1
  loc_B4FA8C: FStStrNoPop var_A8
  loc_B4FA8F: ConcatStr
  loc_B4FA90: FStStrNoPop var_AC
  loc_B4FA93: LitStr ", DetaTifa = '"
  loc_B4FA96: ConcatStr
  loc_B4FA97: FStStrNoPop var_B0
  loc_B4FA9A: ILdRf var_88
  loc_B4FA9D: ConcatStr
  loc_B4FA9E: FStStrNoPop var_B4
  loc_B4FAA1: LitStr "', TipoTifa = '"
  loc_B4FAA4: ConcatStr
  loc_B4FAA5: FStStrNoPop var_B8
  loc_B4FAA8: ILdRf var_8C
  loc_B4FAAB: ConcatStr
  loc_B4FAAC: FStStrNoPop var_BC
  loc_B4FAAF: LitStr "' ,EmitTifa = '"
  loc_B4FAB2: ConcatStr
  loc_B4FAB3: FStStrNoPop var_C0
  loc_B4FAB6: ILdRf var_90
  loc_B4FAB9: ConcatStr
  loc_B4FABA: FStStrNoPop var_C4
  loc_B4FABD: LitStr "', ExpeTifa = '"
  loc_B4FAC0: ConcatStr
  loc_B4FAC1: FStStrNoPop var_C8
  loc_B4FAC4: ILdRf var_94
  loc_B4FAC7: ConcatStr
  loc_B4FAC8: FStStrNoPop var_CC
  loc_B4FACB: LitStr "', ResoTifa = '"
  loc_B4FACE: ConcatStr
  loc_B4FACF: FStStrNoPop var_D0
  loc_B4FAD2: ILdRf var_98
  loc_B4FAD5: ConcatStr
  loc_B4FAD6: FStStrNoPop var_D4
  loc_B4FAD9: LitStr "', MecaTifa = '"
  loc_B4FADC: ConcatStr
  loc_B4FADD: FStStrNoPop var_D8
  loc_B4FAE0: ILdRf var_9C
  loc_B4FAE3: ConcatStr
  loc_B4FAE4: FStStrNoPop var_DC
  loc_B4FAE7: LitStr "', InteTifa = "
  loc_B4FAEA: ConcatStr
  loc_B4FAEB: FStStrNoPop var_E4
  loc_B4FAEE: LitI4 0
  loc_B4FAF3: LitI4 -1
  loc_B4FAF8: LitI4 1
  loc_B4FAFD: LitStr "."
  loc_B4FB00: LitStr ","
  loc_B4FB03: FLdFPR8 InteTifa
  loc_B4FB06: CStrR8
  loc_B4FB08: FStStrNoPop var_E0
  loc_B4FB0B: ImpAdCallI2 Replace(, , , , , )
  loc_B4FB10: FStStrNoPop var_E8
  loc_B4FB13: ConcatStr
  loc_B4FB14: FStStrNoPop var_EC
  loc_B4FB17: LitStr ", MomiTifa = "
  loc_B4FB1A: ConcatStr
  loc_B4FB1B: FStStrNoPop var_F4
  loc_B4FB1E: LitI4 0
  loc_B4FB23: LitI4 -1
  loc_B4FB28: LitI4 1
  loc_B4FB2D: LitStr "."
  loc_B4FB30: LitStr ","
  loc_B4FB33: FLdFPR8 DecaTifa
  loc_B4FB36: CStrR8
  loc_B4FB38: FStStrNoPop var_F0
  loc_B4FB3B: ImpAdCallI2 Replace(, , , , , )
  loc_B4FB40: FStStrNoPop var_F8
  loc_B4FB43: ConcatStr
  loc_B4FB44: FStStrNoPop var_FC
  loc_B4FB47: LitStr ", DecaTifa = "
  loc_B4FB4A: ConcatStr
  loc_B4FB4B: FStStrNoPop var_104
  loc_B4FB4E: LitI4 0
  loc_B4FB53: LitI4 -1
  loc_B4FB58: LitI4 1
  loc_B4FB5D: LitStr "."
  loc_B4FB60: LitStr ","
  loc_B4FB63: FLdFPR8 TianTifa
  loc_B4FB66: CStrR8
  loc_B4FB68: FStStrNoPop var_100
  loc_B4FB6B: ImpAdCallI2 Replace(, , , , , )
  loc_B4FB70: FStStrNoPop var_108
  loc_B4FB73: ConcatStr
  loc_B4FB74: FStStrNoPop var_10C
  loc_B4FB77: LitStr ", DereTifa = "
  loc_B4FB7A: ConcatStr
  loc_B4FB7B: FStStrNoPop var_114
  loc_B4FB7E: LitI4 0
  loc_B4FB83: LitI4 -1
  loc_B4FB88: LitI4 1
  loc_B4FB8D: LitStr "."
  loc_B4FB90: LitStr ","
  loc_B4FB93: FLdFPR8 Modificar0
  loc_B4FB96: CStrR8
  loc_B4FB98: FStStrNoPop var_110
  loc_B4FB9B: ImpAdCallI2 Replace(, , , , , )
  loc_B4FBA0: FStStrNoPop var_118
  loc_B4FBA3: ConcatStr
  loc_B4FBA4: FStStrNoPop var_11C
  loc_B4FBA7: LitStr ", TianTifa = '"
  loc_B4FBAA: ConcatStr
  loc_B4FBAB: FStStrNoPop var_120
  loc_B4FBAE: ILdRf var_A0
  loc_B4FBB1: ConcatStr
  loc_B4FBB2: FStStrNoPop var_124
  loc_B4FBB5: LitStr "', AntiTifa = "
  loc_B4FBB8: ConcatStr
  loc_B4FBB9: FStStrNoPop var_12C
  loc_B4FBBC: LitI4 0
  loc_B4FBC1: LitI4 -1
  loc_B4FBC6: LitI4 1
  loc_B4FBCB: LitStr "."
  loc_B4FBCE: LitStr ","
  loc_B4FBD1: FLdFPR8 ModificarC
  loc_B4FBD4: CStrR8
  loc_B4FBD6: FStStrNoPop var_128
  loc_B4FBD9: ImpAdCallI2 Replace(, , , , , )
  loc_B4FBDE: FStStrNoPop var_130
  loc_B4FBE1: ConcatStr
  loc_B4FBE2: FStStrNoPop var_134
  loc_B4FBE5: LitStr ", CumiTifa = "
  loc_B4FBE8: ConcatStr
  loc_B4FBE9: FStStrNoPop var_138
  loc_B4FBEC: FLdI2 arg_54
  loc_B4FBEF: CStrUI1
  loc_B4FBF1: FStStrNoPop var_13C
  loc_B4FBF4: ConcatStr
  loc_B4FBF5: FStStrNoPop var_140
  loc_B4FBF8: LitStr ", CumaTifa = "
  loc_B4FBFB: ConcatStr
  loc_B4FBFC: FStStrNoPop var_144
  loc_B4FBFF: FLdI2 arg_58
  loc_B4FC02: CStrUI1
  loc_B4FC04: FStStrNoPop var_148
  loc_B4FC07: ConcatStr
  loc_B4FC08: FStStrNoPop var_14C
  loc_B4FC0B: LitStr ", ImmiTifa = "
  loc_B4FC0E: ConcatStr
  loc_B4FC0F: FStStrNoPop var_154
  loc_B4FC12: LitI4 0
  loc_B4FC17: LitI4 -1
  loc_B4FC1C: LitI4 1
  loc_B4FC21: LitStr "."
  loc_B4FC24: LitStr ","
  loc_B4FC27: FLdFPR8 arg_5C
  loc_B4FC2A: CStrR8
  loc_B4FC2C: FStStrNoPop var_150
  loc_B4FC2F: ImpAdCallI2 Replace(, , , , , )
  loc_B4FC34: FStStrNoPop var_158
  loc_B4FC37: ConcatStr
  loc_B4FC38: FStStrNoPop var_15C
  loc_B4FC3B: LitStr ", VecuTifa = '"
  loc_B4FC3E: ConcatStr
  loc_B4FC3F: FStStrNoPop var_160
  loc_B4FC42: ILdRf var_A4
  loc_B4FC45: ConcatStr
  loc_B4FC46: FStStrNoPop var_164
  loc_B4FC49: LitStr "', CbuTifa = "
  loc_B4FC4C: ConcatStr
  loc_B4FC4D: FStStrNoPop var_168
  loc_B4FC50: FLdUI1
  loc_B4FC54: CStrI2
  loc_B4FC56: FStStrNoPop var_16C
  loc_B4FC59: ConcatStr
  loc_B4FC5A: FStStrNoPop var_170
  loc_B4FC5D: LitStr " WHERE CodiTifa = "
  loc_B4FC60: ConcatStr
  loc_B4FC61: FStStrNoPop var_174
  loc_B4FC64: FLdI2 CodiTifa
  loc_B4FC67: CStrUI1
  loc_B4FC69: FStStrNoPop var_178
  loc_B4FC6C: ConcatStr
  loc_B4FC6D: FStStrNoPop var_17C
  loc_B4FC70: LitStr ";"
  loc_B4FC73: ConcatStr
  loc_B4FC74: FStStrNoPop var_180
  loc_B4FC77: Call Proc_10_28_A472E0()
  loc_B4FC7C: FFreeStr var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_B4FCED: Call Requery()
  loc_B4FCF2: FLdI2 CodiTifa
  loc_B4FCF5: Call Encontrar(from_stack_1v)
  loc_B4FCFA: ExitProcHresult
End Sub

Public Sub Baja(CodiTifa) 'A637A4
  'Data Table: 406B88
  loc_A63744: FLdRfVar var_88
  loc_A63747: FLdI2 CodiTifa
  loc_A6374A: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A6374F: ILdRf var_88
  loc_A63752: LitStr vbNullString
  loc_A63755: EqStr
  loc_A63757: FFree1Str var_88
  loc_A6375A: BranchF loc_A63768
  loc_A6375D: LitStr "El Tipo De Facilidad NO EXISTE. Reintente..."
  loc_A63760: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A63765: Branch loc_A63795
  loc_A63768: LitStr "UPDATE tipofapa SET BajaUsua = '"
  loc_A6376B: ImpAdLdI4 MemVar_D9302C
  loc_A6376E: ConcatStr
  loc_A6376F: FStStrNoPop var_88
  loc_A63772: LitStr "', BajaFeho = now() WHERE CodiTifa = "
  loc_A63775: ConcatStr
  loc_A63776: FStStrNoPop var_8C
  loc_A63779: FLdI2 CodiTifa
  loc_A6377C: CStrUI1
  loc_A6377E: FStStrNoPop var_90
  loc_A63781: ConcatStr
  loc_A63782: FStStrNoPop var_94
  loc_A63785: Call Proc_10_28_A472E0()
  loc_A6378A: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_A63795: Call Requery()
  loc_A6379A: FLdI2 CodiTifa
  loc_A6379D: Call Encontrar(from_stack_1v)
  loc_A637A2: ExitProcHresult
End Sub

Public Sub Requery() '9E978C
  'Data Table: 406B88
  loc_9E9768: LitI4 -1
  loc_9E976D: FLdPr Me
  loc_9E9770: MemLdPr RsFrm
  loc_9E9773: Me.Requery from_stack_1
  loc_9E9778: LitVarStr var_94, "Primary"
  loc_9E977D: PopAdLdVar
  loc_9E977E: FLdPr Me
  loc_9E9781: LateIdCall
  loc_9E9789: ExitProcHresult
  loc_9E978A: ConcatStr
End Sub

Public Sub RedefineRS(sSelect) 'A5DD44
  'Data Table: 406B88
  loc_A5DCE0: ILdRf sSelect
  loc_A5DCE3: FStStrCopy var_88
  loc_A5DCE6: LitNothing
  loc_A5DCE8: CastAd
  loc_A5DCEB: FStAdFuncNoPop
  loc_A5DCEE: FLdPr Me
  loc_A5DCF1: MemStAd
  loc_A5DCF5: FFree1Ad var_8C
  loc_A5DCF8: New Recordset
  loc_A5DCFC: FStAdFuncNoPop
  loc_A5DCFF: FLdPr Me
  loc_A5DD02: MemStAd
  loc_A5DD06: FFree1Ad var_8C
  loc_A5DD09: LitI4 -1
  loc_A5DD0E: LitI4 3
  loc_A5DD13: LitI4 3
  loc_A5DD18: ImpAdLdI4 MemVar_D9301C
  loc_A5DD1B: CVarAd
  loc_A5DD1F: PopAdLdVar
  loc_A5DD20: ILdRf var_88
  loc_A5DD23: CVarStr var_9C
  loc_A5DD26: PopAdLdVar
  loc_A5DD27: FLdPr Me
  loc_A5DD2A: MemLdPr RsFrm
  loc_A5DD2D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5DD32: LitVarStr var_9C, "Primary"
  loc_A5DD37: PopAdLdVar
  loc_A5DD38: FLdPr Me
  loc_A5DD3B: LateIdCall
  loc_A5DD43: ExitProcHresult
End Sub

Public Sub Encontrar(CodiTifa) '9EA544
  'Data Table: 406B88
  loc_9EA524: LitStr "CodiTifa = "
  loc_9EA527: FLdI2 CodiTifa
  loc_9EA52A: CStrUI1
  loc_9EA52C: FStStrNoPop var_88
  loc_9EA52F: ConcatStr
  loc_9EA530: PopTmpLdAdStr
  loc_9EA534: Call Find(from_stack_1v)
  loc_9EA539: FFreeStr var_88 = ""
  loc_9EA540: ExitProcHresult
End Sub

Public Property Get DataSource() '9F9B20
  'Data Table: 406B88
  loc_9F9AFC: ZeroRetVal
  loc_9F9AFE: FLdRfVar var_8C
  loc_9F9B01: FLdPr Me
  loc_9F9B04: MemLdPr RsFrm
  loc_9F9B07:  = Me.DataSource
  loc_9F9B0C: ILdRf var_8C
  loc_9F9B0F: CastAd
  loc_9F9B12: FStAdFunc var_88
  loc_9F9B15: FFree1Ad var_8C
  loc_9F9B18: ExitProcCbHresult
End Sub

Public Property Get EditMode(arg_10) '9D0A9C
  'Data Table: 406B88
  loc_9D0A80: FLdRfVar var_8C
  loc_9D0A83: FLdPr Me
  loc_9D0A86: MemLdPr RsFrm
  loc_9D0A89:  = Me.EditMode
  loc_9D0A8E: ILdRf var_8C
  loc_9D0A91: FStR4 var_88
  loc_9D0A94: ExitProcCbHresult
  loc_9D0A9A: FLdZeroAd arg_1001
End Sub

Public Function ValidaClave(CodiTifa) 'A31224
  'Data Table: 406B88
  loc_A311E0: ZeroRetVal
  loc_A311E2: LitStr "SELECT CodiTifa FROM tipofapa WHERE CodiTifa = "
  loc_A311E5: FLdI2 CodiTifa
  loc_A311E8: CStrUI1
  loc_A311EA: FStStrNoPop var_8C
  loc_A311ED: ConcatStr
  loc_A311EE: FStStrNoPop var_90
  loc_A311F1: Call Proc_10_28_A472E0()
  loc_A311F6: FFreeStr var_8C = ""
  loc_A311FD: FLdRfVar ValidaClave
  loc_A31200: FLdPr Me
  loc_A31203: MemLdPr global_64
  loc_A31206:  = Me.RecordCount
  loc_A3120B: ILdRf ValidaClave
  loc_A3120E: LitI4 0
  loc_A31213: GtI4
  loc_A31214: BranchF loc_A3121D
  loc_A31217: LitStr "EL Tipo De Facilidad YA EXISTE. Reintente..."
  loc_A3121A: FStStrCopy var_88
  loc_A3121D: ExitProcCbHresult
End Function

Public Function NuevoRegistro() 'A77F0C
  'Data Table: 406B88
  loc_A77E94: LitStr "SELECT CodiTifa FROM tipofapa ORDER BY CodiTifa DESC "
  loc_A77E97: Call Proc_10_28_A472E0()
  loc_A77E9C: FLdRfVar var_8C
  loc_A77E9F: FLdPr Me
  loc_A77EA2: MemLdPr global_64
  loc_A77EA5:  = Me.RecordCount
  loc_A77EAA: ILdRf var_8C
  loc_A77EAD: LitI4 0
  loc_A77EB2: GtI4
  loc_A77EB3: BranchF loc_A77EFB
  loc_A77EB6: FLdRfVar var_B4
  loc_A77EB9: FLdRfVar var_A4
  loc_A77EBC: LitVarStr var_A0, "CodiTifa"
  loc_A77EC1: PopAdLdVar
  loc_A77EC2: FLdRfVar var_90
  loc_A77EC5: FLdPr Me
  loc_A77EC8: MemLdPr global_64
  loc_A77ECB:  = Me.Fields
  loc_A77ED0: FLdPr var_90
  loc_A77ED3: from_stack_2 = Me.Item(from_stack_1)
  loc_A77ED8: FLdPr var_A4
  loc_A77EDB:  = Me.Value
  loc_A77EE0: FLdRfVar var_B4
  loc_A77EE3: FnCLngVar
  loc_A77EE5: LitI4 1
  loc_A77EEA: AddI4
  loc_A77EEB: FStR4 var_88
  loc_A77EEE: FFreeAd var_90 = ""
  loc_A77EF5: FFree1Var var_B4 = ""
  loc_A77EF8: Branch loc_A77F03
  loc_A77EFB: LitI4 1
  loc_A77F00: FStR4 var_88
  loc_A77F03: ExitProcCbHresult
  loc_A77F09: MemLdRfVar from_stack_1.global_-24576
End Function

Private Function Proc_10_25_9E99D0(arg_10) '9E99D0
  'Data Table: 406B88
  loc_9E99B4: ILdRf arg_10
  loc_9E99B7: FStAd var_88 
  loc_9E99BB: ILdRf arg_18
  loc_9E99BE: FStAd var_8C 
  loc_9E99C2: FLdPr Me
  loc_9E99C5: RaiseEvent
  loc_9E99CD: ExitProcHresult
  loc_9E99CE: FFreeStr  = ""
End Function

Private Function Proc_10_26_AA02DC(arg_C) 'AA02DC
  'Data Table: 406B88
  loc_AA021C: ILdRf arg_18
  loc_AA021F: FStAd var_88 
  loc_AA0223: ILdRf arg_C
  loc_AA0226: FStR4 var_90
  loc_AA0229: ILdRf var_90
  loc_AA022C: LitI4 1
  loc_AA0231: EqI4
  loc_AA0232: BranchF loc_AA0238
  loc_AA0235: Branch loc_AA02CB
  loc_AA0238: ILdRf var_90
  loc_AA023B: LitI4 9
  loc_AA0240: EqI4
  loc_AA0241: BranchF loc_AA0247
  loc_AA0244: Branch loc_AA02CB
  loc_AA0247: ILdRf var_90
  loc_AA024A: LitI4 2
  loc_AA024F: EqI4
  loc_AA0250: BranchF loc_AA0256
  loc_AA0253: Branch loc_AA02CB
  loc_AA0256: ILdRf var_90
  loc_AA0259: LitI4 &HB
  loc_AA025E: EqI4
  loc_AA025F: BranchF loc_AA0265
  loc_AA0262: Branch loc_AA02CB
  loc_AA0265: ILdRf var_90
  loc_AA0268: LitI4 &HA
  loc_AA026D: EqI4
  loc_AA026E: BranchF loc_AA0274
  loc_AA0271: Branch loc_AA02CB
  loc_AA0274: ILdRf var_90
  loc_AA0277: LitI4 7
  loc_AA027C: EqI4
  loc_AA027D: BranchF loc_AA0283
  loc_AA0280: Branch loc_AA02CB
  loc_AA0283: ILdRf var_90
  loc_AA0286: LitI4 8
  loc_AA028B: EqI4
  loc_AA028C: BranchF loc_AA0292
  loc_AA028F: Branch loc_AA02CB
  loc_AA0292: ILdRf var_90
  loc_AA0295: LitI4 5
  loc_AA029A: EqI4
  loc_AA029B: BranchF loc_AA02A1
  loc_AA029E: Branch loc_AA02CB
  loc_AA02A1: ILdRf var_90
  loc_AA02A4: LitI4 6
  loc_AA02A9: EqI4
  loc_AA02AA: BranchF loc_AA02B0
  loc_AA02AD: Branch loc_AA02CB
  loc_AA02B0: ILdRf var_90
  loc_AA02B3: LitI4 4
  loc_AA02B8: EqI4
  loc_AA02B9: BranchF loc_AA02BF
  loc_AA02BC: Branch loc_AA02CB
  loc_AA02BF: ILdRf var_90
  loc_AA02C2: LitI4 3
  loc_AA02C7: EqI4
  loc_AA02C8: BranchF loc_AA02CB
  loc_AA02CB: FLdI2 var_8A
  loc_AA02CE: BranchF loc_AA02D9
  loc_AA02D1: LitI4 4
  loc_AA02D6: IStI4 arg_14
  loc_AA02D9: ExitProcHresult
End Function

Private Function Proc_10_27_9F9954() '9F9954
  'Data Table: 406B88
  loc_9F9930: LitStr "Primary"
  loc_9F9933: FLdPr Me
  loc_9F9936: LateIdLdVar var_94 DispID_4 0
  loc_9F993D: CastAdVar Me
  loc_9F9941: FStAdFunc var_98
  loc_9F9944: FLdPr var_98
  loc_9F994C: FFree1Ad var_98
  loc_9F994F: FFree1Var var_94 = ""
  loc_9F9952: ExitProcHresult
  loc_9F9953: ConcatStr
End Function

Private Function Proc_10_28_A472E0(arg_C) 'A472E0
  'Data Table: 406B88
  loc_A4728C: ILdRf arg_C
  loc_A4728F: FStStrCopy var_88
  loc_A47292: LitNothing
  loc_A47294: CastAd
  loc_A47297: FStAdFuncNoPop
  loc_A4729A: FLdPr Me
  loc_A4729D: MemStAd
  loc_A472A1: FFree1Ad var_8C
  loc_A472A4: New Recordset
  loc_A472A8: FStAdFuncNoPop
  loc_A472AB: FLdPr Me
  loc_A472AE: MemStAd
  loc_A472B2: FFree1Ad var_8C
  loc_A472B5: LitI4 -1
  loc_A472BA: LitI4 3
  loc_A472BF: LitI4 3
  loc_A472C4: ImpAdLdI4 MemVar_D9301C
  loc_A472C7: CVarAd
  loc_A472CB: PopAdLdVar
  loc_A472CC: ILdRf var_88
  loc_A472CF: CVarStr var_9C
  loc_A472D2: PopAdLdVar
  loc_A472D3: FLdPr Me
  loc_A472D6: MemLdPr global_64
  loc_A472D9: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A472DE: ExitProcHresult
End Function

Private Function Proc_10_29_9E438C(arg_C) '9E438C
  'Data Table: 406B88
  loc_9E4370: ILdI4 arg_C
  loc_9E4373: FStStrCopy var_88
  loc_9E4376: ILdRf var_88
  loc_9E4379: LitStr "Primary"
  loc_9E437C: EqStr
  loc_9E437E: BranchF loc_9E438B
  loc_9E4381: FLdPr Me
  loc_9E4384: MemLdStr RsFrm
  loc_9E4387: IStAd
  loc_9E438B: ExitProcHresult
End Function
