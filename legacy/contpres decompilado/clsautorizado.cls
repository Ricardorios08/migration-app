VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsautorizado"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '4120D4
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4120E3
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4120F2
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96DD0C
  'Data Table: 411E38
  loc_96DCE4: FLdRfVar var_88
  loc_96DCE7: FLdPr Me
  loc_96DCEA: MemLdPr RsFrm
  loc_96DCED:  = Me.RecordCount
  loc_96DCF2: ILdRf var_88
  loc_96DCF5: LitI4 0
  loc_96DCFA: GtI4
  loc_96DCFB: BranchF loc_96DD09
  loc_96DCFE: FLdPr Me
  loc_96DD01: MemLdPr RsFrm
  loc_96DD04: Me.MoveFirst
  loc_96DD09: ExitProcHresult
End Sub

Public Sub MoveLast() '96DDBC
  'Data Table: 411E38
  loc_96DD94: FLdRfVar var_88
  loc_96DD97: FLdPr Me
  loc_96DD9A: MemLdPr RsFrm
  loc_96DD9D:  = Me.RecordCount
  loc_96DDA2: ILdRf var_88
  loc_96DDA5: LitI4 0
  loc_96DDAA: GtI4
  loc_96DDAB: BranchF loc_96DDB9
  loc_96DDAE: FLdPr Me
  loc_96DDB1: MemLdPr RsFrm
  loc_96DDB4: Me.MoveLast
  loc_96DDB9: ExitProcHresult
End Sub

Public Sub MoveNext() '99D898
  'Data Table: 411E38
  loc_99D820: FLdRfVar var_86
  loc_99D823: FLdPr Me
  loc_99D826: MemLdPr RsFrm
  loc_99D829:  = Me.EOF
  loc_99D82E: FLdI2 var_86
  loc_99D831: NotI4
  loc_99D832: FLdRfVar var_8C
  loc_99D835: FLdPr Me
  loc_99D838: MemLdPr RsFrm
  loc_99D83B:  = Me.RecordCount
  loc_99D840: ILdRf var_8C
  loc_99D843: LitI4 0
  loc_99D848: GtI4
  loc_99D849: AndI4
  loc_99D84A: BranchF loc_99D858
  loc_99D84D: FLdPr Me
  loc_99D850: MemLdPr RsFrm
  loc_99D853: Me.MoveNext
  loc_99D858: FLdRfVar var_86
  loc_99D85B: FLdPr Me
  loc_99D85E: MemLdPr RsFrm
  loc_99D861:  = Me.EOF
  loc_99D866: FLdI2 var_86
  loc_99D869: FLdRfVar var_8C
  loc_99D86C: FLdPr Me
  loc_99D86F: MemLdPr RsFrm
  loc_99D872:  = Me.RecordCount
  loc_99D877: ILdRf var_8C
  loc_99D87A: LitI4 0
  loc_99D87F: GtI4
  loc_99D880: AndI4
  loc_99D881: BranchF loc_99D894
  loc_99D884: ImpAdCallFPR4 Beep()
  loc_99D889: FLdPr Me
  loc_99D88C: MemLdPr RsFrm
  loc_99D88F: Me.MoveLast
  loc_99D894: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '941F30
  'Data Table: 411E38
  loc_941F24: FLdPr Me
  loc_941F27: MemLdPr RsFrm
  loc_941F2A: Me.MoveNext
  loc_941F2F: ExitProcHresult
End Sub

Public Sub MovePrevious() '99D748
  'Data Table: 411E38
  loc_99D6D0: FLdRfVar var_86
  loc_99D6D3: FLdPr Me
  loc_99D6D6: MemLdPr RsFrm
  loc_99D6D9:  = Me.BOF
  loc_99D6DE: FLdI2 var_86
  loc_99D6E1: NotI4
  loc_99D6E2: FLdRfVar var_8C
  loc_99D6E5: FLdPr Me
  loc_99D6E8: MemLdPr RsFrm
  loc_99D6EB:  = Me.RecordCount
  loc_99D6F0: ILdRf var_8C
  loc_99D6F3: LitI4 0
  loc_99D6F8: GtI4
  loc_99D6F9: AndI4
  loc_99D6FA: BranchF loc_99D708
  loc_99D6FD: FLdPr Me
  loc_99D700: MemLdPr RsFrm
  loc_99D703: Me.MovePrevious
  loc_99D708: FLdRfVar var_86
  loc_99D70B: FLdPr Me
  loc_99D70E: MemLdPr RsFrm
  loc_99D711:  = Me.BOF
  loc_99D716: FLdI2 var_86
  loc_99D719: FLdRfVar var_8C
  loc_99D71C: FLdPr Me
  loc_99D71F: MemLdPr RsFrm
  loc_99D722:  = Me.RecordCount
  loc_99D727: ILdRf var_8C
  loc_99D72A: LitI4 0
  loc_99D72F: GtI4
  loc_99D730: AndI4
  loc_99D731: BranchF loc_99D744
  loc_99D734: ImpAdCallFPR4 Beep()
  loc_99D739: FLdPr Me
  loc_99D73C: MemLdPr RsFrm
  loc_99D73F: Me.MoveFirst
  loc_99D744: ExitProcHresult
End Sub

Public Property Get EOF() '965A24
  'Data Table: 411E38
  loc_965A08: FLdRfVar var_88
  loc_965A0B: FLdPr Me
  loc_965A0E: MemLdPr RsFrm
  loc_965A11:  = Me.EOF
  loc_965A16: FLdI2 var_88
  loc_965A19: FStI2 var_86
  loc_965A1C: ExitProcCbHresult
End Sub

Public Property Get BOF() '96598C
  'Data Table: 411E38
  loc_965970: FLdRfVar var_88
  loc_965973: FLdPr Me
  loc_965976: MemLdPr RsFrm
  loc_965979:  = Me.BOF
  loc_96597E: FLdI2 var_88
  loc_965981: FStI2 var_86
  loc_965984: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9658F4
  'Data Table: 411E38
  loc_9658DC: On Error Resume Next
  loc_9658E1: ILdI4 sOrden
  loc_9658E4: FLdPr Me
  loc_9658E7: MemLdPr RsFrm
  loc_9658EA: Me.Sort = from_stack_1
  loc_9658F1: ExitProcHresult
  loc_9658F2: ExitProc
End Sub

Public Sub Find(sFind) '967350
  'Data Table: 411E38
  loc_967330: LitVar_Missing var_94
  loc_967333: PopAdLdVar
  loc_967334: LitI4 1
  loc_967339: LitI4 0
  loc_96733E: ILdI4 sFind
  loc_967341: FLdPr Me
  loc_967344: MemLdPr RsFrm
  loc_967347: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96734C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9494D4
  'Data Table: 411E38
  loc_9494C0: ILdI4 sCriterio
  loc_9494C3: CVarStr var_94
  loc_9494C6: PopAdLdVar
  loc_9494C7: FLdPr Me
  loc_9494CA: MemLdPr RsFrm
  loc_9494CD: Me.Filter = from_stack_1
  loc_9494D2: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '96572C
  'Data Table: 411E38
  loc_965710: FLdRfVar var_8C
  loc_965713: FLdPr Me
  loc_965716: MemLdPr RsFrm
  loc_965719:  = Me.AbsolutePosition
  loc_96571E: ILdRf var_8C
  loc_965721: FStR4 var_88
  loc_965724: ExitProcCbHresult
  loc_96572A: AryDescTemp -16342
End Sub

Public Property Get RecordCount() '965694
  'Data Table: 411E38
  loc_965678: FLdRfVar var_8C
  loc_96567B: FLdPr Me
  loc_96567E: MemLdPr RsFrm
  loc_965681:  = Me.RecordCount
  loc_965686: ILdRf var_8C
  loc_965689: FStR4 var_88
  loc_96568C: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriInfo, CodiPart, CodiOrga, ExpeAuto, FechAuto, NormAuto, AutoAuto, AumeAuto, DismAuto) 'A3F89C
  'Data Table: 411E38
  loc_A3F6C8: ILdRf CodiPart
  loc_A3F6CB: FStStrCopy var_88
  loc_A3F6CE: ILdRf CodiOrga
  loc_A3F6D1: FStStrCopy var_8C
  loc_A3F6D4: ILdRf ExpeAuto
  loc_A3F6D7: FStStrCopy var_90
  loc_A3F6DA: ILdRf FechAuto
  loc_A3F6DD: FStStrCopy var_94
  loc_A3F6E0: ILdRf NormAuto
  loc_A3F6E3: FStStrCopy var_98
  loc_A3F6E6: LitStr "INSERT INTO autorizado (PeriInfo,CodiPart,CodiOrga,ExpeAuto,FechAuto,NormAuto,AutoAuto,AumeAuto,DismAuto,AltaUsua)"
  loc_A3F6E9: LitStr " VALUES ("
  loc_A3F6EC: ConcatStr
  loc_A3F6ED: FStStrNoPop var_9C
  loc_A3F6F0: FLdI2 PeriInfo
  loc_A3F6F3: CStrUI1
  loc_A3F6F5: FStStrNoPop var_A0
  loc_A3F6F8: ConcatStr
  loc_A3F6F9: FStStrNoPop var_A4
  loc_A3F6FC: LitStr ",'"
  loc_A3F6FF: ConcatStr
  loc_A3F700: FStStrNoPop var_A8
  loc_A3F703: ILdRf var_88
  loc_A3F706: ConcatStr
  loc_A3F707: FStStrNoPop var_AC
  loc_A3F70A: LitStr "','"
  loc_A3F70D: ConcatStr
  loc_A3F70E: FStStrNoPop var_B0
  loc_A3F711: ILdRf var_8C
  loc_A3F714: ConcatStr
  loc_A3F715: FStStrNoPop var_B4
  loc_A3F718: LitStr "','"
  loc_A3F71B: ConcatStr
  loc_A3F71C: FStStrNoPop var_B8
  loc_A3F71F: ILdRf var_90
  loc_A3F722: ConcatStr
  loc_A3F723: FStStrNoPop var_BC
  loc_A3F726: LitStr "',"
  loc_A3F729: ConcatStr
  loc_A3F72A: FStStrNoPop var_F0
  loc_A3F72D: LitI4 1
  loc_A3F732: LitI4 1
  loc_A3F737: LitVarStr var_DC, "'yyyy-mm-dd'"
  loc_A3F73C: FStVarCopyObj var_EC
  loc_A3F73F: FLdRfVar var_EC
  loc_A3F742: FLdRfVar var_94
  loc_A3F745: CVarRef
  loc_A3F74A: ImpAdCallI2 Format$(, )
  loc_A3F74F: FStStrNoPop var_F4
  loc_A3F752: ConcatStr
  loc_A3F753: FStStrNoPop var_F8
  loc_A3F756: LitStr ",'"
  loc_A3F759: ConcatStr
  loc_A3F75A: FStStrNoPop var_FC
  loc_A3F75D: ILdRf var_98
  loc_A3F760: ConcatStr
  loc_A3F761: FStStrNoPop var_100
  loc_A3F764: LitStr "',"
  loc_A3F767: ConcatStr
  loc_A3F768: FStStrNoPop var_108
  loc_A3F76B: LitI4 0
  loc_A3F770: LitI4 -1
  loc_A3F775: LitI4 1
  loc_A3F77A: LitStr "."
  loc_A3F77D: LitStr ","
  loc_A3F780: FLdFPR8 AutoAuto
  loc_A3F783: CStrR8
  loc_A3F785: FStStrNoPop var_104
  loc_A3F788: ImpAdCallI2 Replace(, , , , , )
  loc_A3F78D: FStStrNoPop var_10C
  loc_A3F790: ConcatStr
  loc_A3F791: FStStrNoPop var_110
  loc_A3F794: LitStr ","
  loc_A3F797: ConcatStr
  loc_A3F798: FStStrNoPop var_118
  loc_A3F79B: LitI4 0
  loc_A3F7A0: LitI4 -1
  loc_A3F7A5: LitI4 1
  loc_A3F7AA: LitStr "."
  loc_A3F7AD: LitStr ","
  loc_A3F7B0: FLdFPR8 DismAuto
  loc_A3F7B3: CStrR8
  loc_A3F7B5: FStStrNoPop var_114
  loc_A3F7B8: ImpAdCallI2 Replace(, , , , , )
  loc_A3F7BD: FStStrNoPop var_11C
  loc_A3F7C0: ConcatStr
  loc_A3F7C1: FStStrNoPop var_120
  loc_A3F7C4: LitStr ","
  loc_A3F7C7: ConcatStr
  loc_A3F7C8: FStStrNoPop var_128
  loc_A3F7CB: LitI4 0
  loc_A3F7D0: LitI4 -1
  loc_A3F7D5: LitI4 1
  loc_A3F7DA: LitStr "."
  loc_A3F7DD: LitStr ","
  loc_A3F7E0: FLdFPR8 arg_34
  loc_A3F7E3: CStrR8
  loc_A3F7E5: FStStrNoPop var_124
  loc_A3F7E8: ImpAdCallI2 Replace(, , , , , )
  loc_A3F7ED: FStStrNoPop var_12C
  loc_A3F7F0: ConcatStr
  loc_A3F7F1: FStStrNoPop var_130
  loc_A3F7F4: LitStr ",'"
  loc_A3F7F7: ConcatStr
  loc_A3F7F8: FStStrNoPop var_134
  loc_A3F7FB: ImpAdLdI4 MemVar_C3D03C
  loc_A3F7FE: ConcatStr
  loc_A3F7FF: FStStrNoPop var_138
  loc_A3F802: LitStr "');"
  loc_A3F805: ConcatStr
  loc_A3F806: FStStrNoPop var_13C
  loc_A3F809: Call EjecutarRsCls(from_stack_1v)
  loc_A3F80E: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = ""
  loc_A3F84B: FFree1Var var_EC = ""
  loc_A3F84E: LitStr "SELECT LAST_INSERT_ID() IdAuto;"
  loc_A3F851: Call EjecutarRsCls(from_stack_1v)
  loc_A3F856: FLdRfVar var_EC
  loc_A3F859: FLdRfVar var_144
  loc_A3F85C: LitVarStr var_CC, "IdAuto"
  loc_A3F861: PopAdLdVar
  loc_A3F862: FLdRfVar var_140
  loc_A3F865: FLdPr Me
  loc_A3F868: MemLdPr global_56
  loc_A3F86B:  = Me.Fields
  loc_A3F870: FLdPr var_140
  loc_A3F873: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F878: FLdPr var_144
  loc_A3F87B:  = Me.Value
  loc_A3F880: FLdI2 PeriInfo
  loc_A3F883: FLdRfVar var_EC
  loc_A3F886: CI4Var
  loc_A3F888: PopTmpLdAdStr var_148
  loc_A3F88B: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A3F890: FFreeAd var_140 = ""
  loc_A3F897: FFree1Var var_EC = ""
  loc_A3F89A: ExitProcHresult
End Sub

Public Sub Modificar(IdAuto, PeriInfo, CodiPart, CodiOrga, FechAuto, ExpeAuto, NormAuto, AutoAuto, AumeAuto, DismAuto) 'A2CD7C
  'Data Table: 411E38
  loc_A2CC08: ILdRf CodiPart
  loc_A2CC0B: FStStrCopy var_88
  loc_A2CC0E: ILdRf CodiOrga
  loc_A2CC11: FStStrCopy var_8C
  loc_A2CC14: ILdRf FechAuto
  loc_A2CC17: FStStrCopy var_90
  loc_A2CC1A: ILdRf ExpeAuto
  loc_A2CC1D: FStStrCopy var_94
  loc_A2CC20: ILdRf NormAuto
  loc_A2CC23: FStStrCopy var_98
  loc_A2CC26: LitStr "UPDATE autorizado"
  loc_A2CC29: LitStr " SET FechAuto="
  loc_A2CC2C: ConcatStr
  loc_A2CC2D: CVarStr var_E8
  loc_A2CC30: LitI4 1
  loc_A2CC35: LitI4 1
  loc_A2CC3A: LitVarStr var_B8, "'yyyy-mm-dd'"
  loc_A2CC3F: FStVarCopyObj var_C8
  loc_A2CC42: FLdRfVar var_C8
  loc_A2CC45: FLdRfVar var_90
  loc_A2CC48: CVarRef
  loc_A2CC4D: FLdRfVar var_D8
  loc_A2CC50: ImpAdCallFPR4  = Format(, )
  loc_A2CC55: FLdRfVar var_D8
  loc_A2CC58: ConcatVar var_F8
  loc_A2CC5C: LitVarStr var_108, ", ExpeAuto='"
  loc_A2CC61: ConcatVar var_118
  loc_A2CC65: ILdRf var_94
  loc_A2CC68: CVarStr var_128
  loc_A2CC6B: ConcatVar var_138
  loc_A2CC6F: LitVarStr var_148, "', NormAuto='"
  loc_A2CC74: ConcatVar var_158
  loc_A2CC78: ILdRf var_98
  loc_A2CC7B: CVarStr var_168
  loc_A2CC7E: ConcatVar var_178
  loc_A2CC82: LitVarStr var_188, "', AutoAuto="
  loc_A2CC87: ConcatVar var_198
  loc_A2CC8B: FLdFPR8 AutoAuto
  loc_A2CC8E: CStrR8
  loc_A2CC90: FStStrNoPop var_19C
  loc_A2CC93: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A2CC98: CVarStr var_1AC
  loc_A2CC9B: ConcatVar var_1BC
  loc_A2CC9F: LitVarStr var_1CC, ", AumeAuto="
  loc_A2CCA4: ConcatVar var_1DC
  loc_A2CCA8: FLdFPR8 DismAuto
  loc_A2CCAB: CStrR8
  loc_A2CCAD: FStStrNoPop var_1E0
  loc_A2CCB0: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A2CCB5: CVarStr var_1F0
  loc_A2CCB8: ConcatVar var_200
  loc_A2CCBC: LitVarStr var_210, ", DismAuto="
  loc_A2CCC1: ConcatVar var_220
  loc_A2CCC5: FLdFPR8 arg_38
  loc_A2CCC8: CStrR8
  loc_A2CCCA: FStStrNoPop var_224
  loc_A2CCCD: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A2CCD2: CVarStr var_234
  loc_A2CCD5: ConcatVar var_244
  loc_A2CCD9: LitVarStr var_254, ", ModiUsua='"
  loc_A2CCDE: ConcatVar var_264
  loc_A2CCE2: ImpAdLdI4 MemVar_C3D03C
  loc_A2CCE5: CVarStr var_274
  loc_A2CCE8: ConcatVar var_284
  loc_A2CCEC: LitVarStr var_294, "', ModiFeho=Now()"
  loc_A2CCF1: ConcatVar var_2A4
  loc_A2CCF5: LitVarStr var_2B4, " WHERE IdAuto = "
  loc_A2CCFA: ConcatVar var_2C4
  loc_A2CCFE: ILdRf IdAuto
  loc_A2CD01: CVarI4
  loc_A2CD05: ConcatVar var_2E4
  loc_A2CD09: LitVarStr var_2F4, " AND PeriInfo = "
  loc_A2CD0E: ConcatVar var_304
  loc_A2CD12: FLdI2 PeriInfo
  loc_A2CD15: CVarI2 var_314
  loc_A2CD18: ConcatVar var_324
  loc_A2CD1C: LitVarStr var_334, ";"
  loc_A2CD21: ConcatVar var_344
  loc_A2CD25: CStrVarVal var_348
  loc_A2CD29: Call EjecutarRsCls(from_stack_1v)
  loc_A2CD2E: FFreeStr var_19C = "": var_1E0 = "": var_224 = ""
  loc_A2CD39: FFreeVar var_C8 = "": var_E8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1AC = "": var_1BC = "": var_1DC = "": var_1F0 = "": var_200 = "": var_220 = "": var_234 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = ""
  loc_A2CD6E: FLdI2 PeriInfo
  loc_A2CD71: FLdRfVar IdAuto
  loc_A2CD74: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A2CD79: ExitProcHresult
End Sub

Public Function ValidaEliminar(ePart, eOrga, FechAuto, AutoAuto) '9EB1E4
  'Data Table: 411E38
  loc_9EB0D8: ILdRf ePart
  loc_9EB0DB: FStAd var_8C 
  loc_9EB0DF: ILdRf eOrga
  loc_9EB0E2: FStAd var_90 
  loc_9EB0E6: ILdRf FechAuto
  loc_9EB0E9: FStStrCopy ValidaEliminar
  loc_9EB0EC: ZeroRetVal
  loc_9EB0EE: LitI2_Byte 0
  loc_9EB0F0: PopTmpLdAd2 var_9A
  loc_9EB0F3: LitNothing
  loc_9EB0F5: CastAd
  loc_9EB0F8: FStAdFunc var_98
  loc_9EB0FB: FLdRfVar var_98
  loc_9EB0FE: LitStr "01/01/2018"
  loc_9EB101: LitI2_Byte &HFF
  loc_9EB103: LitI2_Byte &HFF
  loc_9EB105: ILdRf ValidaEliminar
  loc_9EB108: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9EB10D: FStStr var_88
  loc_9EB110: FFree1Ad var_98
  loc_9EB113: ILdRf var_88
  loc_9EB116: LitStr vbNullString
  loc_9EB119: NeStr
  loc_9EB11B: BranchF loc_9EB124
  loc_9EB11E: ExitProcCbHresult
  loc_9EB124: FLdRfVar var_B0
  loc_9EB127: ILdRf ValidaEliminar
  loc_9EB12A: ILdRf var_90
  loc_9EB12D: FStAdNoPop
  loc_9EB131: ILdRf var_8C
  loc_9EB134: FStAdNoPop
  loc_9EB138: from_stack_4v = SaldoAutorizado(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_9EB13D: FLdFPR8 var_B0
  loc_9EB140: FStFPR8 var_A4
  loc_9EB143: FFreeAd var_98 = ""
  loc_9EB14A: FLdFPR8 var_A4
  loc_9EB14D: LitI2_Byte 0
  loc_9EB14F: CR8I2
  loc_9EB150: NeR8
  loc_9EB151: BranchF loc_9EB1DB
  loc_9EB154: FLdFPR8 AutoAuto
  loc_9EB157: FLdFPR8 var_A4
  loc_9EB15A: GtR4
  loc_9EB15B: BranchF loc_9EB1DB
  loc_9EB15E: LitStr "El Importe: "
  loc_9EB161: LitI4 1
  loc_9EB166: LitI4 1
  loc_9EB16B: LitVarStr var_D0, "currency"
  loc_9EB170: FStVarCopyObj var_E0
  loc_9EB173: FLdRfVar var_E0
  loc_9EB176: FLdRfVar AutoAuto
  loc_9EB179: CVarRef
  loc_9EB17E: ImpAdCallI2 Format$(, )
  loc_9EB183: FStStrNoPop var_E4
  loc_9EB186: ConcatStr
  loc_9EB187: FStStrNoPop var_E8
  loc_9EB18A: LitStr " es Mayor al Saldo Autorizado: "
  loc_9EB18D: ConcatStr
  loc_9EB18E: FStStrNoPop var_11C
  loc_9EB191: LitI4 1
  loc_9EB196: LitI4 1
  loc_9EB19B: LitVarStr var_108, "currency"
  loc_9EB1A0: FStVarCopyObj var_118
  loc_9EB1A3: FLdRfVar var_118
  loc_9EB1A6: FLdRfVar var_A4
  loc_9EB1A9: CVarRef
  loc_9EB1AE: ImpAdCallI2 Format$(, )
  loc_9EB1B3: FStStrNoPop var_120
  loc_9EB1B6: ConcatStr
  loc_9EB1B7: FStStrNoPop var_124
  loc_9EB1BA: LitStr ". Verifique..."
  loc_9EB1BD: ConcatStr
  loc_9EB1BE: FStStr var_88
  loc_9EB1C1: FFreeStr var_E4 = "": var_E8 = "": var_11C = "": var_120 = ""
  loc_9EB1CE: FFreeVar var_E0 = ""
  loc_9EB1D5: ExitProcCbHresult
  loc_9EB1DB: ExitProcCbHresult
End Function

Public Sub Eliminar(IdAuto, PeriInfo) '9B5F40
  'Data Table: 411E38
  loc_9B5E9C: LitStr "DELETE FROM autorizado"
  loc_9B5E9F: LitStr " WHERE IdAuto = "
  loc_9B5EA2: ConcatStr
  loc_9B5EA3: FStStrNoPop var_88
  loc_9B5EA6: ILdRf IdAuto
  loc_9B5EA9: CStrI4
  loc_9B5EAB: FStStrNoPop var_8C
  loc_9B5EAE: ConcatStr
  loc_9B5EAF: FStStrNoPop var_90
  loc_9B5EB2: LitStr " AND PeriInfo = "
  loc_9B5EB5: ConcatStr
  loc_9B5EB6: FStStrNoPop var_94
  loc_9B5EB9: FLdI2 PeriInfo
  loc_9B5EBC: CStrUI1
  loc_9B5EBE: FStStrNoPop var_98
  loc_9B5EC1: ConcatStr
  loc_9B5EC2: FStStrNoPop var_9C
  loc_9B5EC5: LitStr ";"
  loc_9B5EC8: ConcatStr
  loc_9B5EC9: FStStrNoPop var_A0
  loc_9B5ECC: Call EjecutarRsCls(from_stack_1v)
  loc_9B5ED1: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_9B5EE2: FLdRfVar var_A8
  loc_9B5EE5: FLdPr Me
  loc_9B5EE8: MemLdPr RsFrm
  loc_9B5EEB:  = Me.AbsolutePosition
  loc_9B5EF0: ILdRf var_A8
  loc_9B5EF3: FStR4 var_A4
  loc_9B5EF6: Call Requery()
  loc_9B5EFB: FLdRfVar var_A8
  loc_9B5EFE: FLdPr Me
  loc_9B5F01: MemLdPr RsFrm
  loc_9B5F04:  = Me.RecordCount
  loc_9B5F09: ILdRf var_A8
  loc_9B5F0C: LitI4 0
  loc_9B5F11: GtI4
  loc_9B5F12: BranchF loc_9B5F3E
  loc_9B5F15: Call MoveFirst()
  loc_9B5F1A: ILdRf var_A4
  loc_9B5F1D: LitI4 1
  loc_9B5F22: GtI4
  loc_9B5F23: BranchF loc_9B5F3E
  loc_9B5F26: LitVar_Missing var_B8
  loc_9B5F29: PopAdLdVar
  loc_9B5F2A: ILdRf var_A4
  loc_9B5F2D: LitI4 2
  loc_9B5F32: SubI4
  loc_9B5F33: FLdPr Me
  loc_9B5F36: MemLdPr RsFrm
  loc_9B5F39: Me.Move from_stack_1, from_stack_2
  loc_9B5F3E: ExitProcHresult
End Sub

Public Function ValidaClave(PeriInfo, CodiPart, CodiOrga, ExpeAuto, FechAuto) '9D9DCC
  'Data Table: 411E38
  loc_9D9D00: ILdRf CodiPart
  loc_9D9D03: FStStrCopy var_8C
  loc_9D9D06: ILdRf CodiOrga
  loc_9D9D09: FStStrCopy var_90
  loc_9D9D0C: ILdRf ExpeAuto
  loc_9D9D0F: FStStrCopy ValidaClave
  loc_9D9D12: ILdRf FechAuto
  loc_9D9D15: FStStrCopy var_98
  loc_9D9D18: ZeroRetVal
  loc_9D9D1A: LitStr "SELECT PeriInfo, CodiPart, CodiOrga, ExpeAuto, FechAuto FROM autorizado WHERE PeriInfo = "
  loc_9D9D1D: FLdI2 PeriInfo
  loc_9D9D20: CStrUI1
  loc_9D9D22: FStStrNoPop var_9C
  loc_9D9D25: ConcatStr
  loc_9D9D26: FStStrNoPop var_A0
  loc_9D9D29: LitStr " AND CodiPart = '"
  loc_9D9D2C: ConcatStr
  loc_9D9D2D: FStStrNoPop var_A4
  loc_9D9D30: ILdRf var_8C
  loc_9D9D33: ConcatStr
  loc_9D9D34: FStStrNoPop var_A8
  loc_9D9D37: LitStr "' AND CodiOrga = '"
  loc_9D9D3A: ConcatStr
  loc_9D9D3B: FStStrNoPop var_AC
  loc_9D9D3E: ILdRf var_90
  loc_9D9D41: ConcatStr
  loc_9D9D42: FStStrNoPop var_B0
  loc_9D9D45: LitStr "' AND ExpeAuto = '"
  loc_9D9D48: ConcatStr
  loc_9D9D49: FStStrNoPop var_B4
  loc_9D9D4C: ILdRf ValidaClave
  loc_9D9D4F: ConcatStr
  loc_9D9D50: FStStrNoPop var_B8
  loc_9D9D53: LitStr "' AND FechAuto ="
  loc_9D9D56: ConcatStr
  loc_9D9D57: FStStrNoPop var_EC
  loc_9D9D5A: LitI4 1
  loc_9D9D5F: LitI4 1
  loc_9D9D64: LitVarStr var_D8, "'yyyy-mm-dd'"
  loc_9D9D69: FStVarCopyObj var_E8
  loc_9D9D6C: FLdRfVar var_E8
  loc_9D9D6F: FLdRfVar var_98
  loc_9D9D72: CVarRef
  loc_9D9D77: ImpAdCallI2 Format$(, )
  loc_9D9D7C: FStStrNoPop var_F0
  loc_9D9D7F: ConcatStr
  loc_9D9D80: FStStrNoPop var_F4
  loc_9D9D83: Call EjecutarRsCls(from_stack_1v)
  loc_9D9D88: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_EC = "": var_F0 = ""
  loc_9D9DA1: FFree1Var var_E8 = ""
  loc_9D9DA4: FLdRfVar var_F8
  loc_9D9DA7: FLdPr Me
  loc_9D9DAA: MemLdPr global_56
  loc_9D9DAD:  = Me.RecordCount
  loc_9D9DB2: ILdRf var_F8
  loc_9D9DB5: LitI4 0
  loc_9D9DBA: GtI4
  loc_9D9DBB: BranchF loc_9D9DC4
  loc_9D9DBE: LitStr "La Autorizacion YA EXISTE. Reintente..."
  loc_9D9DC1: FStStrCopy var_88
  loc_9D9DC4: ExitProcCbHresult
  loc_9D9DCA: CStr2Ansi
End Function

Public Sub Encontrar(IdAuto, PeriInfo) '9E2E90
  'Data Table: 411E38
  loc_9E2D88: On Error Resume Next
  loc_9E2D8D: ILdI4 IdAuto
  loc_9E2D90: LitI4 0
  loc_9E2D95: EqI4
  loc_9E2D96: FLdI2 PeriInfo
  loc_9E2D99: LitI2_Byte 0
  loc_9E2D9B: EqI2
  loc_9E2D9C: AndI4
  loc_9E2D9D: FLdRfVar var_88
  loc_9E2DA0: FLdPr Me
  loc_9E2DA3: MemLdPr RsFrm
  loc_9E2DA6:  = Me.RecordCount
  loc_9E2DAB: ILdRf var_88
  loc_9E2DAE: LitI4 0
  loc_9E2DB3: GtI4
  loc_9E2DB4: AndI4
  loc_9E2DB5: BranchF loc_9E2E33
  loc_9E2DBA: FLdRfVar var_B0
  loc_9E2DBD: FLdRfVar var_A0
  loc_9E2DC0: LitVarStr var_9C, "IdAuto"
  loc_9E2DC5: PopAdLdVar
  loc_9E2DC6: FLdRfVar var_8C
  loc_9E2DC9: FLdPr Me
  loc_9E2DCC: MemLdPr RsFrm
  loc_9E2DCF:  = Me.Fields
  loc_9E2DD4: FLdPr var_8C
  loc_9E2DD7: from_stack_2 = Me.Item(from_stack_1)
  loc_9E2DDC: FLdPr var_A0
  loc_9E2DDF:  = Me.Value
  loc_9E2DE4: FLdRfVar var_B0
  loc_9E2DE7: CI4Var
  loc_9E2DE9: IStI4 IdAuto
  loc_9E2DEC: FFreeAd var_8C = ""
  loc_9E2DF3: FFree1Var var_B0 = ""
  loc_9E2DF8: FLdRfVar var_B0
  loc_9E2DFB: FLdRfVar var_A0
  loc_9E2DFE: LitVarStr var_9C, "PeriInfo"
  loc_9E2E03: PopAdLdVar
  loc_9E2E04: FLdRfVar var_8C
  loc_9E2E07: FLdPr Me
  loc_9E2E0A: MemLdPr RsFrm
  loc_9E2E0D:  = Me.Fields
  loc_9E2E12: FLdPr var_8C
  loc_9E2E15: from_stack_2 = Me.Item(from_stack_1)
  loc_9E2E1A: FLdPr var_A0
  loc_9E2E1D:  = Me.Value
  loc_9E2E22: FLdRfVar var_B0
  loc_9E2E25: CI2Var
  loc_9E2E26: FStI2 PeriInfo
  loc_9E2E29: FFreeAd var_8C = ""
  loc_9E2E30: FFree1Var var_B0 = ""
  loc_9E2E37: Call Requery()
  loc_9E2E3E: LitStr "IdAuto = '"
  loc_9E2E41: ILdI4 IdAuto
  loc_9E2E44: CStrI4
  loc_9E2E46: FStStrNoPop var_B4
  loc_9E2E49: ConcatStr
  loc_9E2E4A: FStStrNoPop var_B8
  loc_9E2E4D: LitStr "'"
  loc_9E2E50: ConcatStr
  loc_9E2E51: PopTmpLdAdStr
  loc_9E2E55: Call Find(from_stack_1v)
  loc_9E2E5A: FFreeStr var_B4 = "": var_B8 = ""
  loc_9E2E65: LitStr "PeriInfo = '"
  loc_9E2E68: FLdI2 PeriInfo
  loc_9E2E6B: CStrUI1
  loc_9E2E6D: FStStrNoPop var_B4
  loc_9E2E70: ConcatStr
  loc_9E2E71: FStStrNoPop var_B8
  loc_9E2E74: LitStr "'"
  loc_9E2E77: ConcatStr
  loc_9E2E78: PopTmpLdAdStr
  loc_9E2E7C: Call Find(from_stack_1v)
  loc_9E2E81: FFreeStr var_B4 = "": var_B8 = ""
  loc_9E2E8C: ExitProcHresult
  loc_9E2E8D: FStAdFunc arg_0
End Sub

Public Sub RedefineRS(sSelect) '9728BC
  'Data Table: 411E38
  loc_972894: ILdRf sSelect
  loc_972897: FStStrCopy var_88
  loc_97289A: FLdPr Me
  loc_97289D: MemLdRfVar from_stack_1.RsFrm
  loc_9728A0: ILdRf var_88
  loc_9728A3: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_9728A8: LitVarStr var_98, "Primary"
  loc_9728AD: PopAdLdVar
  loc_9728AE: FLdPr Me
  loc_9728B1: LateIdCall
  loc_9728B9: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '965560
  'Data Table: 411E38
  loc_965548: ILdRf sSelect
  loc_96554B: FStStrCopy var_88
  loc_96554E: FLdPr Me
  loc_965551: MemLdRfVar from_stack_1.global_56
  loc_965554: ILdRf var_88
  loc_965557: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_96555C: ExitProcHresult
End Sub

Public Sub Requery() '967300
  'Data Table: 411E38
  loc_9672E0: FLdPr Me
  loc_9672E3: MemLdRfVar from_stack_1.RsFrm
  loc_9672E6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_9672EB: LitVarStr var_94, "Primary"
  loc_9672F0: PopAdLdVar
  loc_9672F1: FLdPr Me
  loc_9672F4: LateIdCall
  loc_9672FC: ExitProcHresult
  loc_9672FD: FLdFPR4 MeFF
End Sub

Public Property Get DataSource() '9726EC
  'Data Table: 411E38
  loc_9726C8: ZeroRetVal
  loc_9726CA: FLdRfVar var_8C
  loc_9726CD: FLdPr Me
  loc_9726D0: MemLdPr RsFrm
  loc_9726D3:  = Me.DataSource
  loc_9726D8: ILdRf var_8C
  loc_9726DB: CastAd
  loc_9726DE: FStAdFunc var_88
  loc_9726E1: FFree1Ad var_8C
  loc_9726E4: ExitProcCbHresult
End Sub

Public Function SaldoAutorizado(ePart, eOrga, FechAuto) '98A0F4
  'Data Table: 411E38
  loc_98A0BC: ILdRf ePart
  loc_98A0BF: FStAd var_90 
  loc_98A0C3: ILdRf eOrga
  loc_98A0C6: FStAd SaldoAutorizado 
  loc_98A0CA: ILdRf FechAuto
  loc_98A0CD: FStStrCopy var_98
  loc_98A0D0: FLdRfVar var_A4
  loc_98A0D3: ILdRf var_98
  loc_98A0D6: FLdRfVar SaldoAutorizado
  loc_98A0D9: FLdRfVar var_90
  loc_98A0DC: FLdRfVar var_9C
  loc_98A0DF: NewIfNullPr clsimputacion
  loc_98A0E2: from_stack_4v = clsimputacion.BuscaSaldAuto(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_98A0E7: FLdFPR8 var_A4
  loc_98A0EA: FStFPR8 var_8C
  loc_98A0ED: ExitProcCbHresult
End Function

Public Function totalesAuto(sCriterio) 'A2B170
  'Data Table: 411E38
  loc_A2AFF0: ILdRf sCriterio
  loc_A2AFF3: FStStrCopy var_8C
  loc_A2AFF6: LitStr "SELECT IFNULL(Sum(AutoAuto),0) AS AutoAuto,"
  loc_A2AFF9: LitStr " IFNULL(Sum(AumeAuto),0) AS AumeAuto,"
  loc_A2AFFC: ConcatStr
  loc_A2AFFD: FStStrNoPop var_AC
  loc_A2B000: LitStr " IFNULL(Sum(DismAuto),0) AS DismAuto,"
  loc_A2B003: ConcatStr
  loc_A2B004: FStStrNoPop var_B0
  loc_A2B007: LitStr " IFNULL(Sum(AutoAuto)+Sum(AumeAuto)-Sum(DismAuto),0) AS TotaAuto"
  loc_A2B00A: ConcatStr
  loc_A2B00B: FStStrNoPop var_B4
  loc_A2B00E: LitStr " FROM autorizado"
  loc_A2B011: ConcatStr
  loc_A2B012: FStStrNoPop var_B8
  loc_A2B015: LitStr " INNER JOIN partida ON partida.PeriInfo = autorizado.PeriInfo AND partida.CodiPart = autorizado.CodiPart"
  loc_A2B018: ConcatStr
  loc_A2B019: FStStrNoPop var_BC
  loc_A2B01C: LitStr " INNER JOIN infogov.organigrama ON organigrama.PeriInfo = autorizado.PeriInfo AND organigrama.CodiOrga = autorizado.CodiOrga"
  loc_A2B01F: ConcatStr
  loc_A2B020: FStStrNoPop var_C0
  loc_A2B023: LitStr " WHERE autorizado.PeriInfo = "
  loc_A2B026: ConcatStr
  loc_A2B027: FStStrNoPop var_C4
  loc_A2B02A: ImpAdLdI2 MemVar_C3D064
  loc_A2B02D: CStrUI1
  loc_A2B02F: FStStrNoPop var_C8
  loc_A2B032: ConcatStr
  loc_A2B033: FStStrNoPop var_CC
  loc_A2B036: ILdRf var_8C
  loc_A2B039: ConcatStr
  loc_A2B03A: FStStrNoPop var_D0
  loc_A2B03D: Call EjecutarRsCls(from_stack_1v)
  loc_A2B042: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A2B059: FLdRfVar var_F8
  loc_A2B05C: FLdRfVar var_E8
  loc_A2B05F: LitVarStr var_E4, "AutoAuto"
  loc_A2B064: PopAdLdVar
  loc_A2B065: FLdRfVar var_D4
  loc_A2B068: FLdPr Me
  loc_A2B06B: MemLdPr global_56
  loc_A2B06E:  = Me.Fields
  loc_A2B073: FLdPr var_D4
  loc_A2B076: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B07B: FLdPr var_E8
  loc_A2B07E:  = Me.Value
  loc_A2B083: FLdRfVar var_F8
  loc_A2B086: CR4Var
  loc_A2B087: LitI4 0
  loc_A2B08C: FLdRfVar var_A4
  loc_A2B08F: Ary1StFPR8
  loc_A2B090: FFreeAd var_D4 = ""
  loc_A2B097: FFree1Var var_F8 = ""
  loc_A2B09A: FLdRfVar var_F8
  loc_A2B09D: FLdRfVar var_E8
  loc_A2B0A0: LitVarStr var_E4, "AumeAuto"
  loc_A2B0A5: PopAdLdVar
  loc_A2B0A6: FLdRfVar var_D4
  loc_A2B0A9: FLdPr Me
  loc_A2B0AC: MemLdPr global_56
  loc_A2B0AF:  = Me.Fields
  loc_A2B0B4: FLdPr var_D4
  loc_A2B0B7: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B0BC: FLdPr var_E8
  loc_A2B0BF:  = Me.Value
  loc_A2B0C4: FLdRfVar var_F8
  loc_A2B0C7: CR4Var
  loc_A2B0C8: LitI4 1
  loc_A2B0CD: FLdRfVar var_A4
  loc_A2B0D0: Ary1StFPR8
  loc_A2B0D1: FFreeAd var_D4 = ""
  loc_A2B0D8: FFree1Var var_F8 = ""
  loc_A2B0DB: FLdRfVar var_F8
  loc_A2B0DE: FLdRfVar var_E8
  loc_A2B0E1: LitVarStr var_E4, "DismAuto"
  loc_A2B0E6: PopAdLdVar
  loc_A2B0E7: FLdRfVar var_D4
  loc_A2B0EA: FLdPr Me
  loc_A2B0ED: MemLdPr global_56
  loc_A2B0F0:  = Me.Fields
  loc_A2B0F5: FLdPr var_D4
  loc_A2B0F8: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B0FD: FLdPr var_E8
  loc_A2B100:  = Me.Value
  loc_A2B105: FLdRfVar var_F8
  loc_A2B108: CR4Var
  loc_A2B109: LitI4 2
  loc_A2B10E: FLdRfVar var_A4
  loc_A2B111: Ary1StFPR8
  loc_A2B112: FFreeAd var_D4 = ""
  loc_A2B119: FFree1Var var_F8 = ""
  loc_A2B11C: FLdRfVar var_F8
  loc_A2B11F: FLdRfVar var_E8
  loc_A2B122: LitVarStr var_E4, "TotaAuto"
  loc_A2B127: PopAdLdVar
  loc_A2B128: FLdRfVar var_D4
  loc_A2B12B: FLdPr Me
  loc_A2B12E: MemLdPr global_56
  loc_A2B131:  = Me.Fields
  loc_A2B136: FLdPr var_D4
  loc_A2B139: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B13E: FLdPr var_E8
  loc_A2B141:  = Me.Value
  loc_A2B146: FLdRfVar var_F8
  loc_A2B149: CR4Var
  loc_A2B14A: LitI4 3
  loc_A2B14F: FLdRfVar var_A4
  loc_A2B152: Ary1StFPR8
  loc_A2B153: FFreeAd var_D4 = ""
  loc_A2B15A: FFree1Var var_F8 = ""
  loc_A2B15D: FLdRfVar var_A4
  loc_A2B160: PopTmpLdAdStr var_FC
  loc_A2B163: FLdRfVar var_88
  loc_A2B166: StAryCopy
  loc_A2B168: ExitProcCbHresult
  loc_A2B16E: CastAd
End Function

Public Function UltimaFechAuto(PeriInfo, CodiPart, CodiOrga) 'A5E128
  'Data Table: 411E38
  loc_A5DE6C: ILdRf CodiPart
  loc_A5DE6F: FStStrCopy var_8C
  loc_A5DE72: ILdRf CodiOrga
  loc_A5DE75: FStStrCopy var_90
  loc_A5DE78: ZeroRetVal
  loc_A5DE7A: ImpAdLdI2 MemVar_C3D048
  loc_A5DE7D: BranchF loc_A5E10E
  loc_A5DE80: ImpAdLdFPR8 MemVar_C3D054
  loc_A5DE83: CStrDate
  loc_A5DE85: FStStr var_88
  loc_A5DE88: LitStr "SELECT FeproPaco"
  loc_A5DE8B: LitStr " FROM paraconta"
  loc_A5DE8E: ConcatStr
  loc_A5DE8F: FStStrNoPop UltimaFechAuto
  loc_A5DE92: LitStr " WHERE PeriInfo = "
  loc_A5DE95: ConcatStr
  loc_A5DE96: FStStrNoPop var_98
  loc_A5DE99: FLdI2 PeriInfo
  loc_A5DE9C: CStrUI1
  loc_A5DE9E: FStStrNoPop var_9C
  loc_A5DEA1: ConcatStr
  loc_A5DEA2: FStStrNoPop var_A0
  loc_A5DEA5: LitStr ";"
  loc_A5DEA8: ConcatStr
  loc_A5DEA9: FStStrNoPop var_A4
  loc_A5DEAC: Call EjecutarRsCls(from_stack_1v)
  loc_A5DEB1: FFreeStr UltimaFechAuto = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A5DEBE: FLdRfVar var_A8
  loc_A5DEC1: FLdPr Me
  loc_A5DEC4: MemLdPr global_56
  loc_A5DEC7:  = Me.RecordCount
  loc_A5DECC: ILdRf var_A8
  loc_A5DECF: LitI4 0
  loc_A5DED4: GtI4
  loc_A5DED5: BranchF loc_A5DFB4
  loc_A5DED8: FLdRfVar var_C0
  loc_A5DEDB: LitVarStr var_BC, "FeproPaco"
  loc_A5DEE0: PopAdLdVar
  loc_A5DEE1: FLdRfVar var_AC
  loc_A5DEE4: FLdPr Me
  loc_A5DEE7: MemLdPr global_56
  loc_A5DEEA:  = Me.Fields
  loc_A5DEEF: FLdPr var_AC
  loc_A5DEF2: from_stack_2 = Me.Item(from_stack_1)
  loc_A5DEF7: FLdZeroAd var_C0
  loc_A5DEFA: CVarAd
  loc_A5DEFE: ImpAdCallI2 IsNull()
  loc_A5DF03: FFree1Ad var_AC
  loc_A5DF06: FFree1Var var_D0 = ""
  loc_A5DF09: BranchF loc_A5DF0F
  loc_A5DF0C: Branch loc_A5DFB4
  loc_A5DF0F: FLdRfVar var_D0
  loc_A5DF12: FLdRfVar var_C0
  loc_A5DF15: LitVarStr var_BC, "FeproPaco"
  loc_A5DF1A: PopAdLdVar
  loc_A5DF1B: FLdRfVar var_AC
  loc_A5DF1E: FLdPr Me
  loc_A5DF21: MemLdPr global_56
  loc_A5DF24:  = Me.Fields
  loc_A5DF29: FLdPr var_AC
  loc_A5DF2C: from_stack_2 = Me.Item(from_stack_1)
  loc_A5DF31: FLdPr var_C0
  loc_A5DF34:  = Me.Value
  loc_A5DF39: FLdRfVar var_F8
  loc_A5DF3C: FLdRfVar var_E8
  loc_A5DF3F: LitVarStr var_E4, "FeproPaco"
  loc_A5DF44: PopAdLdVar
  loc_A5DF45: FLdRfVar var_D4
  loc_A5DF48: FLdPr Me
  loc_A5DF4B: MemLdPr global_56
  loc_A5DF4E:  = Me.Fields
  loc_A5DF53: FLdPr var_D4
  loc_A5DF56: from_stack_2 = Me.Item(from_stack_1)
  loc_A5DF5B: FLdPr var_E8
  loc_A5DF5E:  = Me.Value
  loc_A5DF63: FLdRfVar var_F8
  loc_A5DF66: FnCDateVar
  loc_A5DF68: LitI2_Byte 1
  loc_A5DF6A: CR8I2
  loc_A5DF6B: AddR8
  loc_A5DF6C: CDateR8
  loc_A5DF6D: CVarDate var_138
  loc_A5DF71: FLdRfVar var_88
  loc_A5DF74: CVarRef
  loc_A5DF79: ILdRf var_88
  loc_A5DF7C: CDateStr
  loc_A5DF7E: FLdRfVar var_D0
  loc_A5DF81: FnCDateVar
  loc_A5DF83: LitI2_Byte 1
  loc_A5DF85: CR8I2
  loc_A5DF86: AddR8
  loc_A5DF87: CDateR8
  loc_A5DF88: GtR4
  loc_A5DF89: CVarBoolI2 var_108
  loc_A5DF8D: FLdRfVar var_148
  loc_A5DF90: ImpAdCallFPR4  = IIf(, , )
  loc_A5DF95: FLdRfVar var_148
  loc_A5DF98: CStrVarTmp
  loc_A5DF99: FStStr var_88
  loc_A5DF9C: FFreeAd var_AC = "": var_C0 = "": var_D4 = ""
  loc_A5DFA7: FFreeVar var_D0 = "": var_F8 = "": var_108 = "": var_138 = ""
  loc_A5DFB4: LitStr "SELECT IFNULL(Max(FechAuto),'') FechAuto"
  loc_A5DFB7: LitStr " FROM autorizado"
  loc_A5DFBA: ConcatStr
  loc_A5DFBB: FStStrNoPop UltimaFechAuto
  loc_A5DFBE: LitStr " WHERE PeriInfo = "
  loc_A5DFC1: ConcatStr
  loc_A5DFC2: FStStrNoPop var_98
  loc_A5DFC5: FLdI2 PeriInfo
  loc_A5DFC8: CStrUI1
  loc_A5DFCA: FStStrNoPop var_9C
  loc_A5DFCD: ConcatStr
  loc_A5DFCE: FStStrNoPop var_A0
  loc_A5DFD1: LitStr " AND CodiPart = (SELECT CredPart FROM partida WHERE PeriInfo = "
  loc_A5DFD4: ConcatStr
  loc_A5DFD5: FStStrNoPop var_A4
  loc_A5DFD8: FLdI2 PeriInfo
  loc_A5DFDB: CStrUI1
  loc_A5DFDD: FStStrNoPop var_14C
  loc_A5DFE0: ConcatStr
  loc_A5DFE1: FStStrNoPop var_150
  loc_A5DFE4: LitStr " AND CodiPart = '"
  loc_A5DFE7: ConcatStr
  loc_A5DFE8: FStStrNoPop var_154
  loc_A5DFEB: ILdRf var_8C
  loc_A5DFEE: ConcatStr
  loc_A5DFEF: FStStrNoPop var_158
  loc_A5DFF2: LitStr "')"
  loc_A5DFF5: ConcatStr
  loc_A5DFF6: FStStrNoPop var_15C
  loc_A5DFF9: LitStr " AND CodiOrga = (SELECT CredOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A5DFFC: ConcatStr
  loc_A5DFFD: FStStrNoPop var_160
  loc_A5E000: FLdI2 PeriInfo
  loc_A5E003: CStrUI1
  loc_A5E005: FStStrNoPop var_164
  loc_A5E008: ConcatStr
  loc_A5E009: FStStrNoPop var_168
  loc_A5E00C: LitStr " AND CodiOrga = '"
  loc_A5E00F: ConcatStr
  loc_A5E010: FStStrNoPop var_16C
  loc_A5E013: ILdRf var_90
  loc_A5E016: ConcatStr
  loc_A5E017: FStStrNoPop var_170
  loc_A5E01A: LitStr "');"
  loc_A5E01D: ConcatStr
  loc_A5E01E: FStStrNoPop var_174
  loc_A5E021: Call EjecutarRsCls(from_stack_1v)
  loc_A5E026: FFreeStr UltimaFechAuto = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = ""
  loc_A5E049: FLdRfVar var_D0
  loc_A5E04C: FLdRfVar var_C0
  loc_A5E04F: LitVarStr var_BC, "FechAuto"
  loc_A5E054: PopAdLdVar
  loc_A5E055: FLdRfVar var_AC
  loc_A5E058: FLdPr Me
  loc_A5E05B: MemLdPr global_56
  loc_A5E05E:  = Me.Fields
  loc_A5E063: FLdPr var_AC
  loc_A5E066: from_stack_2 = Me.Item(from_stack_1)
  loc_A5E06B: FLdPr var_C0
  loc_A5E06E:  = Me.Value
  loc_A5E073: FLdRfVar var_D0
  loc_A5E076: LitVarStr var_E4, vbNullString
  loc_A5E07B: HardType
  loc_A5E07C: NeVarBool
  loc_A5E07E: FFreeAd var_AC = ""
  loc_A5E085: FFree1Var var_D0 = ""
  loc_A5E088: BranchF loc_A5E10B
  loc_A5E08B: FLdRfVar var_D0
  loc_A5E08E: FLdRfVar var_C0
  loc_A5E091: LitVarStr var_BC, "FechAuto"
  loc_A5E096: PopAdLdVar
  loc_A5E097: FLdRfVar var_AC
  loc_A5E09A: FLdPr Me
  loc_A5E09D: MemLdPr global_56
  loc_A5E0A0:  = Me.Fields
  loc_A5E0A5: FLdPr var_AC
  loc_A5E0A8: from_stack_2 = Me.Item(from_stack_1)
  loc_A5E0AD: FLdPr var_C0
  loc_A5E0B0:  = Me.Value
  loc_A5E0B5: FLdRfVar var_D0
  loc_A5E0B8: FnCDateVar
  loc_A5E0BA: ILdRf var_88
  loc_A5E0BD: CDateStr
  loc_A5E0BF: GtR4
  loc_A5E0C0: FFreeAd var_AC = ""
  loc_A5E0C7: FFree1Var var_D0 = ""
  loc_A5E0CA: BranchF loc_A5E10B
  loc_A5E0CD: FLdRfVar var_D0
  loc_A5E0D0: FLdRfVar var_C0
  loc_A5E0D3: LitVarStr var_BC, "FechAuto"
  loc_A5E0D8: PopAdLdVar
  loc_A5E0D9: FLdRfVar var_AC
  loc_A5E0DC: FLdPr Me
  loc_A5E0DF: MemLdPr global_56
  loc_A5E0E2:  = Me.Fields
  loc_A5E0E7: FLdPr var_AC
  loc_A5E0EA: from_stack_2 = Me.Item(from_stack_1)
  loc_A5E0EF: FLdPr var_C0
  loc_A5E0F2:  = Me.Value
  loc_A5E0F7: FLdRfVar var_D0
  loc_A5E0FA: FnCDateVar
  loc_A5E0FC: CStrDate
  loc_A5E0FE: FStStr var_88
  loc_A5E101: FFreeAd var_AC = ""
  loc_A5E108: FFree1Var var_D0 = ""
  loc_A5E10B: Branch loc_A5E11B
  loc_A5E10E: FLdRfVar PeriInfo
  loc_A5E111: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A5E116: CStrDate
  loc_A5E118: FStStr var_88
  loc_A5E11B: ExitProcCbHresult
  loc_A5E121: ExitProcCbHresult
End Function

Private Function Proc_2_28_9729CC() '9729CC
  'Data Table: 411E38
  loc_9729A8: LitStr "Primary"
  loc_9729AB: FLdPr Me
  loc_9729AE: LateIdLdVar var_94 DispID_4 0
  loc_9729B5: CastAdVar Me
  loc_9729B9: FStAdFunc var_98
  loc_9729BC: FLdPr var_98
  loc_9729C4: FFree1Ad var_98
  loc_9729C7: FFree1Var var_94 = ""
  loc_9729CA: ExitProcHresult
End Function

Private Function Proc_2_29_96739C(arg_C) '96739C
  'Data Table: 411E38
  loc_967380: ILdI4 arg_C
  loc_967383: FStStrCopy var_88
  loc_967386: ILdRf var_88
  loc_967389: LitStr "Primary"
  loc_96738C: EqStr
  loc_96738E: BranchF loc_96739B
  loc_967391: FLdPr Me
  loc_967394: MemLdStr RsFrm
  loc_967397: IStAd
  loc_96739B: ExitProcHresult
End Function
