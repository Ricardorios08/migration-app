VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsticoxusua"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40BB28
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40BB37
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40BB46
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96DF74
  'Data Table: 40B984
  loc_96DF4C: FLdRfVar var_88
  loc_96DF4F: FLdPr Me
  loc_96DF52: MemLdPr RsFrm
  loc_96DF55:  = Me.RecordCount
  loc_96DF5A: ILdRf var_88
  loc_96DF5D: LitI4 0
  loc_96DF62: GtI4
  loc_96DF63: BranchF loc_96DF71
  loc_96DF66: FLdPr Me
  loc_96DF69: MemLdPr RsFrm
  loc_96DF6C: Me.MoveFirst
  loc_96DF71: ExitProcHresult
End Sub

Public Sub MoveLast() '970284
  'Data Table: 40B984
  loc_97025C: FLdRfVar var_88
  loc_97025F: FLdPr Me
  loc_970262: MemLdPr RsFrm
  loc_970265:  = Me.RecordCount
  loc_97026A: ILdRf var_88
  loc_97026D: LitI4 0
  loc_970272: GtI4
  loc_970273: BranchF loc_970281
  loc_970276: FLdPr Me
  loc_970279: MemLdPr RsFrm
  loc_97027C: Me.MoveLast
  loc_970281: ExitProcHresult
End Sub

Public Sub MoveNext() '99DC88
  'Data Table: 40B984
  loc_99DC10: FLdRfVar var_86
  loc_99DC13: FLdPr Me
  loc_99DC16: MemLdPr RsFrm
  loc_99DC19:  = Me.EOF
  loc_99DC1E: FLdI2 var_86
  loc_99DC21: NotI4
  loc_99DC22: FLdRfVar var_8C
  loc_99DC25: FLdPr Me
  loc_99DC28: MemLdPr RsFrm
  loc_99DC2B:  = Me.RecordCount
  loc_99DC30: ILdRf var_8C
  loc_99DC33: LitI4 0
  loc_99DC38: GtI4
  loc_99DC39: AndI4
  loc_99DC3A: BranchF loc_99DC48
  loc_99DC3D: FLdPr Me
  loc_99DC40: MemLdPr RsFrm
  loc_99DC43: Me.MoveNext
  loc_99DC48: FLdRfVar var_86
  loc_99DC4B: FLdPr Me
  loc_99DC4E: MemLdPr RsFrm
  loc_99DC51:  = Me.EOF
  loc_99DC56: FLdI2 var_86
  loc_99DC59: FLdRfVar var_8C
  loc_99DC5C: FLdPr Me
  loc_99DC5F: MemLdPr RsFrm
  loc_99DC62:  = Me.RecordCount
  loc_99DC67: ILdRf var_8C
  loc_99DC6A: LitI4 0
  loc_99DC6F: GtI4
  loc_99DC70: AndI4
  loc_99DC71: BranchF loc_99DC84
  loc_99DC74: ImpAdCallFPR4 Beep()
  loc_99DC79: FLdPr Me
  loc_99DC7C: MemLdPr RsFrm
  loc_99DC7F: Me.MoveLast
  loc_99DC84: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '94142C
  'Data Table: 40B984
  loc_941420: FLdPr Me
  loc_941423: MemLdPr RsFrm
  loc_941426: Me.MoveNext
  loc_94142B: ExitProcHresult
End Sub

Public Sub Move(iValor) '948858
  'Data Table: 40B984
  loc_948844: LitVar_Missing var_94
  loc_948847: PopAdLdVar
  loc_948848: ILdI2 iValor
  loc_94884B: CI4UI1
  loc_94884C: FLdPr Me
  loc_94884F: MemLdPr RsFrm
  loc_948852: Me.Move from_stack_1, from_stack_2
  loc_948857: ExitProcHresult
End Sub

Public Sub MovePrevious() '99DBE0
  'Data Table: 40B984
  loc_99DB68: FLdRfVar var_86
  loc_99DB6B: FLdPr Me
  loc_99DB6E: MemLdPr RsFrm
  loc_99DB71:  = Me.BOF
  loc_99DB76: FLdI2 var_86
  loc_99DB79: NotI4
  loc_99DB7A: FLdRfVar var_8C
  loc_99DB7D: FLdPr Me
  loc_99DB80: MemLdPr RsFrm
  loc_99DB83:  = Me.RecordCount
  loc_99DB88: ILdRf var_8C
  loc_99DB8B: LitI4 0
  loc_99DB90: GtI4
  loc_99DB91: AndI4
  loc_99DB92: BranchF loc_99DBA0
  loc_99DB95: FLdPr Me
  loc_99DB98: MemLdPr RsFrm
  loc_99DB9B: Me.MovePrevious
  loc_99DBA0: FLdRfVar var_86
  loc_99DBA3: FLdPr Me
  loc_99DBA6: MemLdPr RsFrm
  loc_99DBA9:  = Me.BOF
  loc_99DBAE: FLdI2 var_86
  loc_99DBB1: FLdRfVar var_8C
  loc_99DBB4: FLdPr Me
  loc_99DBB7: MemLdPr RsFrm
  loc_99DBBA:  = Me.RecordCount
  loc_99DBBF: ILdRf var_8C
  loc_99DBC2: LitI4 0
  loc_99DBC7: GtI4
  loc_99DBC8: AndI4
  loc_99DBC9: BranchF loc_99DBDC
  loc_99DBCC: ImpAdCallFPR4 Beep()
  loc_99DBD1: FLdPr Me
  loc_99DBD4: MemLdPr RsFrm
  loc_99DBD7: Me.MoveFirst
  loc_99DBDC: ExitProcHresult
End Sub

Public Property Get EOF() '964264
  'Data Table: 40B984
  loc_964248: FLdRfVar var_88
  loc_96424B: FLdPr Me
  loc_96424E: MemLdPr RsFrm
  loc_964251:  = Me.EOF
  loc_964256: FLdI2 var_88
  loc_964259: FStI2 var_86
  loc_96425C: ExitProcCbHresult
End Sub

Public Property Get BOF() '964394
  'Data Table: 40B984
  loc_964378: FLdRfVar var_88
  loc_96437B: FLdPr Me
  loc_96437E: MemLdPr RsFrm
  loc_964381:  = Me.BOF
  loc_964386: FLdI2 var_88
  loc_964389: FStI2 var_86
  loc_96438C: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '943F44
  'Data Table: 40B984
  loc_943F34: ILdI4 sOrden
  loc_943F37: FLdPr Me
  loc_943F3A: MemLdPr RsFrm
  loc_943F3D: Me.Sort = from_stack_1
  loc_943F42: ExitProcHresult
End Sub

Public Sub Find(sFind) '968C50
  'Data Table: 40B984
  loc_968C30: LitVar_Missing var_94
  loc_968C33: PopAdLdVar
  loc_968C34: LitI4 1
  loc_968C39: LitI4 0
  loc_968C3E: ILdI4 sFind
  loc_968C41: FLdPr Me
  loc_968C44: MemLdPr RsFrm
  loc_968C47: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_968C4C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '949380
  'Data Table: 40B984
  loc_94936C: ILdI4 sCriterio
  loc_94936F: CVarStr var_94
  loc_949372: PopAdLdVar
  loc_949373: FLdPr Me
  loc_949376: MemLdPr RsFrm
  loc_949379: Me.Filter = from_stack_1
  loc_94937E: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '964A1C
  'Data Table: 40B984
  loc_964A00: FLdRfVar var_8C
  loc_964A03: FLdPr Me
  loc_964A06: MemLdPr RsFrm
  loc_964A09:  = Me.AbsolutePosition
  loc_964A0E: ILdRf var_8C
  loc_964A11: FStR4 var_88
  loc_964A14: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9651D4
  'Data Table: 40B984
  loc_9651B8: FLdRfVar var_8C
  loc_9651BB: FLdPr Me
  loc_9651BE: MemLdPr RsFrm
  loc_9651C1:  = Me.RecordCount
  loc_9651C6: ILdRf var_8C
  loc_9651C9: FStR4 var_88
  loc_9651CC: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiTico, CodiUsua) '998C94
  'Data Table: 40B984
  loc_998C40: ILdRf CodiUsua
  loc_998C43: FStStrCopy var_88
  loc_998C46: LitStr "REPLACE INTO contpres.ticoxusua (CodiTico, CodiUsua, AltaUsua, AltaFeho)"
  loc_998C49: LitStr " VALUES ('"
  loc_998C4C: ConcatStr
  loc_998C4D: FStStrNoPop var_8C
  loc_998C50: FLdI2 CodiTico
  loc_998C53: CStrUI1
  loc_998C55: FStStrNoPop var_90
  loc_998C58: ConcatStr
  loc_998C59: FStStrNoPop var_94
  loc_998C5C: LitStr "', '"
  loc_998C5F: ConcatStr
  loc_998C60: FStStrNoPop var_98
  loc_998C63: ILdRf var_88
  loc_998C66: ConcatStr
  loc_998C67: FStStrNoPop var_9C
  loc_998C6A: LitStr "', @sUsuario, Now());"
  loc_998C6D: ConcatStr
  loc_998C6E: FStStrNoPop var_A0
  loc_998C71: Call EjecutarRsCls(from_stack_1v)
  loc_998C76: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_998C85: ILdRf var_88
  loc_998C88: FLdI2 CodiTico
  loc_998C8B: CUI1I2
  loc_998C8D: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_998C92: ExitProcHresult
End Sub

Public Function ValidaModificar() '9413EC
  'Data Table: 40B984
  loc_9413E4: ZeroRetVal
  loc_9413E6: ExitProcCbHresult
End Function

Public Sub Modificar(DetaUnga, CodiInsu, CodiPart, CodiFifu, CucuPers, CucuProv) '97C160
  'Data Table: 40B984
  loc_97C140: ILdRf DetaUnga
  loc_97C143: FStStrCopy var_88
  loc_97C146: ILdRf CodiPart
  loc_97C149: FStStrCopy var_8C
  loc_97C14C: ILdRf CodiFifu
  loc_97C14F: FStStrCopy var_90
  loc_97C152: ILdRf CucuPers
  loc_97C155: FStStrCopy var_94
  loc_97C158: ILdRf CucuProv
  loc_97C15B: FStStrCopy var_98
  loc_97C15E: ExitProcHresult
End Sub

Public Sub Anular(BajaMoti) 'A14FE0
  'Data Table: 40B984
  loc_A14E90: ILdRf BajaMoti
  loc_A14E93: FStStrCopy var_88
  loc_A14E96: LitStr "UPDATE contpres.ticoxusua"
  loc_A14E99: LitStr " SET BajaUsua = @sUsuario, BajaFeho = Now(), BajaMoti = '"
  loc_A14E9C: ConcatStr
  loc_A14E9D: FStStrNoPop var_8C
  loc_A14EA0: ILdRf var_88
  loc_A14EA3: ConcatStr
  loc_A14EA4: FStStrNoPop var_90
  loc_A14EA7: LitStr "'"
  loc_A14EAA: ConcatStr
  loc_A14EAB: FStStrNoPop var_94
  loc_A14EAE: LitStr " WHERE CodiTico = '"
  loc_A14EB1: ConcatStr
  loc_A14EB2: CVarStr var_CC
  loc_A14EB5: FLdRfVar var_BC
  loc_A14EB8: FLdRfVar var_AC
  loc_A14EBB: LitVarStr var_A8, "CodiTico"
  loc_A14EC0: PopAdLdVar
  loc_A14EC1: FLdRfVar var_98
  loc_A14EC4: FLdPr Me
  loc_A14EC7: MemLdPr RsFrm
  loc_A14ECA:  = Me.Fields
  loc_A14ECF: FLdPr var_98
  loc_A14ED2: from_stack_2 = Me.Item(from_stack_1)
  loc_A14ED7: FLdPr var_AC
  loc_A14EDA:  = Me.Value
  loc_A14EDF: FLdRfVar var_BC
  loc_A14EE2: ConcatVar var_DC
  loc_A14EE6: LitVarStr var_EC, "'"
  loc_A14EEB: ConcatVar var_FC
  loc_A14EEF: LitVarStr var_10C, " AND CodiUsua = '"
  loc_A14EF4: ConcatVar var_11C
  loc_A14EF8: FLdRfVar var_144
  loc_A14EFB: FLdRfVar var_134
  loc_A14EFE: LitVarStr var_130, "CodiUsua"
  loc_A14F03: PopAdLdVar
  loc_A14F04: FLdRfVar var_120
  loc_A14F07: FLdPr Me
  loc_A14F0A: MemLdPr RsFrm
  loc_A14F0D:  = Me.Fields
  loc_A14F12: FLdPr var_120
  loc_A14F15: from_stack_2 = Me.Item(from_stack_1)
  loc_A14F1A: FLdPr var_134
  loc_A14F1D:  = Me.Value
  loc_A14F22: FLdRfVar var_144
  loc_A14F25: ConcatVar var_154
  loc_A14F29: LitVarStr var_164, "';"
  loc_A14F2E: ConcatVar var_174
  loc_A14F32: CStrVarVal var_178
  loc_A14F36: Call EjecutarRsCls(from_stack_1v)
  loc_A14F3B: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_A14F46: FFreeAd var_98 = "": var_AC = "": var_120 = ""
  loc_A14F51: FFreeVar var_CC = "": var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_A14F64: FLdRfVar var_BC
  loc_A14F67: FLdRfVar var_AC
  loc_A14F6A: LitVarStr var_A8, "CodiTico"
  loc_A14F6F: PopAdLdVar
  loc_A14F70: FLdRfVar var_98
  loc_A14F73: FLdPr Me
  loc_A14F76: MemLdPr RsFrm
  loc_A14F79:  = Me.Fields
  loc_A14F7E: FLdPr var_98
  loc_A14F81: from_stack_2 = Me.Item(from_stack_1)
  loc_A14F86: FLdPr var_AC
  loc_A14F89:  = Me.Value
  loc_A14F8E: FLdRfVar var_CC
  loc_A14F91: FLdRfVar var_134
  loc_A14F94: LitVarStr var_EC, "CodiUsua"
  loc_A14F99: PopAdLdVar
  loc_A14F9A: FLdRfVar var_120
  loc_A14F9D: FLdPr Me
  loc_A14FA0: MemLdPr RsFrm
  loc_A14FA3:  = Me.Fields
  loc_A14FA8: FLdPr var_120
  loc_A14FAB: from_stack_2 = Me.Item(from_stack_1)
  loc_A14FB0: FLdPr var_134
  loc_A14FB3:  = Me.Value
  loc_A14FB8: FLdRfVar var_CC
  loc_A14FBB: CStrVarTmp
  loc_A14FBC: FStStrNoPop var_8C
  loc_A14FBF: FLdRfVar var_BC
  loc_A14FC2: CUI1Var
  loc_A14FC4: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A14FC9: FFree1Str var_8C
  loc_A14FCC: FFreeAd var_98 = "": var_120 = "": var_AC = ""
  loc_A14FD7: FFreeVar var_BC = ""
  loc_A14FDE: ExitProcHresult
End Sub

Public Function ValidaEliminar() '941AB8
  'Data Table: 40B984
  loc_941AB0: ZeroRetVal
  loc_941AB2: ExitProcCbHresult
End Function

Public Sub Eliminar() '9E85DC
  'Data Table: 40B984
  loc_9E84D8: LitStr "DELETE FROM contpres.ticoxusua"
  loc_9E84DB: LitStr " WHERE CodiTico = '"
  loc_9E84DE: ConcatStr
  loc_9E84DF: CVarStr var_BC
  loc_9E84E2: FLdRfVar var_AC
  loc_9E84E5: FLdRfVar var_9C
  loc_9E84E8: LitVarStr var_98, "CodiTico"
  loc_9E84ED: PopAdLdVar
  loc_9E84EE: FLdRfVar var_88
  loc_9E84F1: FLdPr Me
  loc_9E84F4: MemLdPr RsFrm
  loc_9E84F7:  = Me.Fields
  loc_9E84FC: FLdPr var_88
  loc_9E84FF: from_stack_2 = Me.Item(from_stack_1)
  loc_9E8504: FLdPr var_9C
  loc_9E8507:  = Me.Value
  loc_9E850C: FLdRfVar var_AC
  loc_9E850F: ConcatVar var_CC
  loc_9E8513: LitVarStr var_DC, "' AND CodiUsua = '"
  loc_9E8518: ConcatVar var_EC
  loc_9E851C: FLdRfVar var_114
  loc_9E851F: FLdRfVar var_104
  loc_9E8522: LitVarStr var_100, "CodiUsua"
  loc_9E8527: PopAdLdVar
  loc_9E8528: FLdRfVar var_F0
  loc_9E852B: FLdPr Me
  loc_9E852E: MemLdPr RsFrm
  loc_9E8531:  = Me.Fields
  loc_9E8536: FLdPr var_F0
  loc_9E8539: from_stack_2 = Me.Item(from_stack_1)
  loc_9E853E: FLdPr var_104
  loc_9E8541:  = Me.Value
  loc_9E8546: FLdRfVar var_114
  loc_9E8549: ConcatVar var_124
  loc_9E854D: LitVarStr var_134, "';"
  loc_9E8552: ConcatVar var_144
  loc_9E8556: CStrVarVal var_148
  loc_9E855A: Call EjecutarRsCls(from_stack_1v)
  loc_9E855F: FFree1Str var_148
  loc_9E8562: FFreeAd var_88 = "": var_9C = "": var_F0 = ""
  loc_9E856D: FFreeVar var_BC = "": var_AC = "": var_CC = "": var_EC = "": var_114 = "": var_124 = ""
  loc_9E857E: FLdRfVar var_150
  loc_9E8581: FLdPr Me
  loc_9E8584: MemLdPr RsFrm
  loc_9E8587:  = Me.AbsolutePosition
  loc_9E858C: ILdRf var_150
  loc_9E858F: FStR4 var_14C
  loc_9E8592: Call Requery()
  loc_9E8597: FLdRfVar var_150
  loc_9E859A: FLdPr Me
  loc_9E859D: MemLdPr RsFrm
  loc_9E85A0:  = Me.RecordCount
  loc_9E85A5: ILdRf var_150
  loc_9E85A8: LitI4 0
  loc_9E85AD: GtI4
  loc_9E85AE: BranchF loc_9E85DA
  loc_9E85B1: Call MoveFirst()
  loc_9E85B6: ILdRf var_14C
  loc_9E85B9: LitI4 1
  loc_9E85BE: GtI4
  loc_9E85BF: BranchF loc_9E85DA
  loc_9E85C2: LitVar_Missing var_98
  loc_9E85C5: PopAdLdVar
  loc_9E85C6: ILdRf var_14C
  loc_9E85C9: LitI4 2
  loc_9E85CE: SubI4
  loc_9E85CF: FLdPr Me
  loc_9E85D2: MemLdPr RsFrm
  loc_9E85D5: Me.Move from_stack_1, from_stack_2
  loc_9E85DA: ExitProcHresult
End Sub

Public Sub Encontrar(CodiTico, CodiUsua) '9E4960
  'Data Table: 40B984
  loc_9E4856: ILdRf CodiUsua
  loc_9E4859: FStStrCopy var_88
  loc_9E485E: On Error Resume Next
  loc_9E4863: FLdUI1
  loc_9E4867: CI2UI1
  loc_9E4869: LitI2_Byte 0
  loc_9E486B: EqI2
  loc_9E486C: ILdRf var_88
  loc_9E486F: LitStr vbNullString
  loc_9E4872: EqStr
  loc_9E4874: AndI4
  loc_9E4875: FLdRfVar var_8C
  loc_9E4878: FLdPr Me
  loc_9E487B: MemLdPr RsFrm
  loc_9E487E:  = Me.RecordCount
  loc_9E4883: ILdRf var_8C
  loc_9E4886: LitI4 0
  loc_9E488B: GtI4
  loc_9E488C: AndI4
  loc_9E488D: BranchF loc_9E490C
  loc_9E4892: FLdRfVar var_B4
  loc_9E4895: FLdRfVar var_A4
  loc_9E4898: LitVarStr var_A0, "CodiTico"
  loc_9E489D: PopAdLdVar
  loc_9E489E: FLdRfVar var_90
  loc_9E48A1: FLdPr Me
  loc_9E48A4: MemLdPr RsFrm
  loc_9E48A7:  = Me.Fields
  loc_9E48AC: FLdPr var_90
  loc_9E48AF: from_stack_2 = Me.Item(from_stack_1)
  loc_9E48B4: FLdPr var_A4
  loc_9E48B7:  = Me.Value
  loc_9E48BC: FLdRfVar var_B4
  loc_9E48BF: CUI1Var
  loc_9E48C1: FStUI1 CodiTico
  loc_9E48C5: FFreeAd var_90 = ""
  loc_9E48CC: FFree1Var var_B4 = ""
  loc_9E48D1: FLdRfVar var_B4
  loc_9E48D4: FLdRfVar var_A4
  loc_9E48D7: LitVarStr var_A0, "CodiUsua"
  loc_9E48DC: PopAdLdVar
  loc_9E48DD: FLdRfVar var_90
  loc_9E48E0: FLdPr Me
  loc_9E48E3: MemLdPr RsFrm
  loc_9E48E6:  = Me.Fields
  loc_9E48EB: FLdPr var_90
  loc_9E48EE: from_stack_2 = Me.Item(from_stack_1)
  loc_9E48F3: FLdPr var_A4
  loc_9E48F6:  = Me.Value
  loc_9E48FB: FLdRfVar var_B4
  loc_9E48FE: CStrVarTmp
  loc_9E48FF: FStStr var_88
  loc_9E4902: FFreeAd var_90 = ""
  loc_9E4909: FFree1Var var_B4 = ""
  loc_9E4910: Call Requery()
  loc_9E4917: LitStr "CodiTico = '"
  loc_9E491A: FLdUI1
  loc_9E491E: CStrI2
  loc_9E4920: FStStrNoPop var_B8
  loc_9E4923: ConcatStr
  loc_9E4924: FStStrNoPop var_BC
  loc_9E4927: LitStr "'"
  loc_9E492A: ConcatStr
  loc_9E492B: PopTmpLdAdStr
  loc_9E492F: Call Find(from_stack_1v)
  loc_9E4934: FFreeStr var_B8 = "": var_BC = ""
  loc_9E493F: LitStr "CodiUsua = '"
  loc_9E4942: ILdRf var_88
  loc_9E4945: ConcatStr
  loc_9E4946: FStStrNoPop var_B8
  loc_9E4949: LitStr "'"
  loc_9E494C: ConcatStr
  loc_9E494D: PopTmpLdAdStr
  loc_9E4951: Call Find(from_stack_1v)
  loc_9E4956: FFreeStr var_B8 = ""
  loc_9E495F: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '973328
  'Data Table: 40B984
  loc_973300: ILdRf sSelect
  loc_973303: FStStrCopy var_88
  loc_973306: FLdPr Me
  loc_973309: MemLdRfVar from_stack_1.RsFrm
  loc_97330C: ILdRf var_88
  loc_97330F: ImpAdCallFPR4  = Proc_261_44_9A4454()
  loc_973314: LitVarStr var_98, "Primary"
  loc_973319: PopAdLdVar
  loc_97331A: FLdPr Me
  loc_97331D: LateIdCall
  loc_973325: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '9667C8
  'Data Table: 40B984
  loc_9667B0: ILdRf sSelect
  loc_9667B3: FStStrCopy var_88
  loc_9667B6: FLdPr Me
  loc_9667B9: MemLdRfVar from_stack_1.global_56
  loc_9667BC: ILdRf var_88
  loc_9667BF: ImpAdCallFPR4  = Proc_261_46_9AA7A0()
  loc_9667C4: ExitProcHresult
End Sub

Public Sub Requery() '968B10
  'Data Table: 40B984
  loc_968AF0: FLdPr Me
  loc_968AF3: MemLdRfVar from_stack_1.RsFrm
  loc_968AF6: ImpAdCallFPR4  = Proc_261_45_9C79FC()
  loc_968AFB: LitVarStr var_94, "Primary"
  loc_968B00: PopAdLdVar
  loc_968B01: FLdPr Me
  loc_968B04: LateIdCall
  loc_968B0C: ExitProcHresult
End Sub

Public Property Get DataSource() '972FE8
  'Data Table: 40B984
  loc_972FC4: ZeroRetVal
  loc_972FC6: FLdRfVar var_8C
  loc_972FC9: FLdPr Me
  loc_972FCC: MemLdPr RsFrm
  loc_972FCF:  = Me.DataSource
  loc_972FD4: ILdRf var_8C
  loc_972FD7: CastAd
  loc_972FDA: FStAdFunc var_88
  loc_972FDD: FFree1Ad var_8C
  loc_972FE0: ExitProcCbHresult
End Sub

Private Function Proc_274_27_973660() '973660
  'Data Table: 40B984
  loc_97363C: LitStr "Primary"
  loc_97363F: FLdPr Me
  loc_973642: LateIdLdVar var_94 DispID_4 0
  loc_973649: CastAdVar Me
  loc_97364D: FStAdFunc var_98
  loc_973650: FLdPr var_98
  loc_973658: FFree1Ad var_98
  loc_97365B: FFree1Var var_94 = ""
  loc_97365E: ExitProcHresult
End Function

Private Function Proc_274_28_968A6C(arg_C) '968A6C
  'Data Table: 40B984
  loc_968A50: ILdI4 arg_C
  loc_968A53: FStStrCopy var_88
  loc_968A56: ILdRf var_88
  loc_968A59: LitStr "Primary"
  loc_968A5C: EqStr
  loc_968A5E: BranchF loc_968A6B
  loc_968A61: FLdPr Me
  loc_968A64: MemLdStr RsFrm
  loc_968A67: IStAd
  loc_968A6B: ExitProcHresult
End Function
