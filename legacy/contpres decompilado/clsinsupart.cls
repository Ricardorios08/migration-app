VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsinsupart"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40BF94
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40BFA3
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40BFB2
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96E3EC
  'Data Table: 40BDD8
  loc_96E3C4: FLdRfVar var_88
  loc_96E3C7: FLdPr Me
  loc_96E3CA: MemLdPr RsFrm
  loc_96E3CD:  = Me.RecordCount
  loc_96E3D2: ILdRf var_88
  loc_96E3D5: LitI4 0
  loc_96E3DA: GtI4
  loc_96E3DB: BranchF loc_96E3E9
  loc_96E3DE: FLdPr Me
  loc_96E3E1: MemLdPr RsFrm
  loc_96E3E4: Me.MoveFirst
  loc_96E3E9: ExitProcHresult
End Sub

Public Sub MoveLast() '96E184
  'Data Table: 40BDD8
  loc_96E15C: FLdRfVar var_88
  loc_96E15F: FLdPr Me
  loc_96E162: MemLdPr RsFrm
  loc_96E165:  = Me.RecordCount
  loc_96E16A: ILdRf var_88
  loc_96E16D: LitI4 0
  loc_96E172: GtI4
  loc_96E173: BranchF loc_96E181
  loc_96E176: FLdPr Me
  loc_96E179: MemLdPr RsFrm
  loc_96E17C: Me.MoveLast
  loc_96E181: ExitProcHresult
End Sub

Public Sub MoveNext() '99CCC8
  'Data Table: 40BDD8
  loc_99CC50: FLdRfVar var_86
  loc_99CC53: FLdPr Me
  loc_99CC56: MemLdPr RsFrm
  loc_99CC59:  = Me.EOF
  loc_99CC5E: FLdI2 var_86
  loc_99CC61: NotI4
  loc_99CC62: FLdRfVar var_8C
  loc_99CC65: FLdPr Me
  loc_99CC68: MemLdPr RsFrm
  loc_99CC6B:  = Me.RecordCount
  loc_99CC70: ILdRf var_8C
  loc_99CC73: LitI4 0
  loc_99CC78: GtI4
  loc_99CC79: AndI4
  loc_99CC7A: BranchF loc_99CC88
  loc_99CC7D: FLdPr Me
  loc_99CC80: MemLdPr RsFrm
  loc_99CC83: Me.MoveNext
  loc_99CC88: FLdRfVar var_86
  loc_99CC8B: FLdPr Me
  loc_99CC8E: MemLdPr RsFrm
  loc_99CC91:  = Me.EOF
  loc_99CC96: FLdI2 var_86
  loc_99CC99: FLdRfVar var_8C
  loc_99CC9C: FLdPr Me
  loc_99CC9F: MemLdPr RsFrm
  loc_99CCA2:  = Me.RecordCount
  loc_99CCA7: ILdRf var_8C
  loc_99CCAA: LitI4 0
  loc_99CCAF: GtI4
  loc_99CCB0: AndI4
  loc_99CCB1: BranchF loc_99CCC4
  loc_99CCB4: ImpAdCallFPR4 Beep()
  loc_99CCB9: FLdPr Me
  loc_99CCBC: MemLdPr RsFrm
  loc_99CCBF: Me.MoveLast
  loc_99CCC4: ExitProcHresult
  loc_99CCC7: Ary1LdRf
End Sub

Public Sub MoveSiguiente() '941D14
  'Data Table: 40BDD8
  loc_941D08: FLdPr Me
  loc_941D0B: MemLdPr RsFrm
  loc_941D0E: Me.MoveNext
  loc_941D13: ExitProcHresult
End Sub

Public Sub Move(iValor) '948D20
  'Data Table: 40BDD8
  loc_948D0C: LitVar_Missing var_94
  loc_948D0F: PopAdLdVar
  loc_948D10: ILdI2 iValor
  loc_948D13: CI4UI1
  loc_948D14: FLdPr Me
  loc_948D17: MemLdPr RsFrm
  loc_948D1A: Me.Move from_stack_1, from_stack_2
  loc_948D1F: ExitProcHresult
End Sub

Public Sub MovePrevious() '99C980
  'Data Table: 40BDD8
  loc_99C908: FLdRfVar var_86
  loc_99C90B: FLdPr Me
  loc_99C90E: MemLdPr RsFrm
  loc_99C911:  = Me.BOF
  loc_99C916: FLdI2 var_86
  loc_99C919: NotI4
  loc_99C91A: FLdRfVar var_8C
  loc_99C91D: FLdPr Me
  loc_99C920: MemLdPr RsFrm
  loc_99C923:  = Me.RecordCount
  loc_99C928: ILdRf var_8C
  loc_99C92B: LitI4 0
  loc_99C930: GtI4
  loc_99C931: AndI4
  loc_99C932: BranchF loc_99C940
  loc_99C935: FLdPr Me
  loc_99C938: MemLdPr RsFrm
  loc_99C93B: Me.MovePrevious
  loc_99C940: FLdRfVar var_86
  loc_99C943: FLdPr Me
  loc_99C946: MemLdPr RsFrm
  loc_99C949:  = Me.BOF
  loc_99C94E: FLdI2 var_86
  loc_99C951: FLdRfVar var_8C
  loc_99C954: FLdPr Me
  loc_99C957: MemLdPr RsFrm
  loc_99C95A:  = Me.RecordCount
  loc_99C95F: ILdRf var_8C
  loc_99C962: LitI4 0
  loc_99C967: GtI4
  loc_99C968: AndI4
  loc_99C969: BranchF loc_99C97C
  loc_99C96C: ImpAdCallFPR4 Beep()
  loc_99C971: FLdPr Me
  loc_99C974: MemLdPr RsFrm
  loc_99C977: Me.MoveFirst
  loc_99C97C: ExitProcHresult
  loc_99C97D: FLdFPR8 arg_FA9
End Sub

Public Property Get EOF() '95E280
  'Data Table: 40BDD8
  loc_95E264: FLdRfVar var_88
  loc_95E267: FLdPr Me
  loc_95E26A: MemLdPr RsFrm
  loc_95E26D:  = Me.EOF
  loc_95E272: FLdI2 var_88
  loc_95E275: FStI2 var_86
  loc_95E278: ExitProcCbHresult
End Sub

Public Property Get BOF() '95E1E8
  'Data Table: 40BDD8
  loc_95E1CC: FLdRfVar var_88
  loc_95E1CF: FLdPr Me
  loc_95E1D2: MemLdPr RsFrm
  loc_95E1D5:  = Me.BOF
  loc_95E1DA: FLdI2 var_88
  loc_95E1DD: FStI2 var_86
  loc_95E1E0: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '946884
  'Data Table: 40BDD8
  loc_946874: ILdI4 sOrden
  loc_946877: FLdPr Me
  loc_94687A: MemLdPr RsFrm
  loc_94687D: Me.Sort = from_stack_1
  loc_946882: ExitProcHresult
End Sub

Public Sub Find(sFind) '9687A0
  'Data Table: 40BDD8
  loc_968780: LitVar_Missing var_94
  loc_968783: PopAdLdVar
  loc_968784: LitI4 1
  loc_968789: LitI4 0
  loc_96878E: ILdI4 sFind
  loc_968791: FLdPr Me
  loc_968794: MemLdPr RsFrm
  loc_968797: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96879C: ExitProcHresult
  loc_96879D: FLdZeroAd MeFF
End Sub

Public Sub Filter(sCriterio) '948C10
  'Data Table: 40BDD8
  loc_948BFC: ILdI4 sCriterio
  loc_948BFF: CVarStr var_94
  loc_948C02: PopAdLdVar
  loc_948C03: FLdPr Me
  loc_948C06: MemLdPr RsFrm
  loc_948C09: Me.Filter = from_stack_1
  loc_948C0E: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '95E020
  'Data Table: 40BDD8
  loc_95E004: FLdRfVar var_8C
  loc_95E007: FLdPr Me
  loc_95E00A: MemLdPr RsFrm
  loc_95E00D:  = Me.AbsolutePosition
  loc_95E012: ILdRf var_8C
  loc_95E015: FStR4 var_88
  loc_95E018: ExitProcCbHresult
  loc_95E01E: FLdPr arg_6008
End Sub

Public Property Get RecordCount() '95DF88
  'Data Table: 40BDD8
  loc_95DF6C: FLdRfVar var_8C
  loc_95DF6F: FLdPr Me
  loc_95DF72: MemLdPr RsFrm
  loc_95DF75:  = Me.RecordCount
  loc_95DF7A: ILdRf var_8C
  loc_95DF7D: FStR4 var_88
  loc_95DF80: ExitProcCbHresult
  loc_95DF86: FLdRfVar arg_6000
End Sub

Public Sub AddNew(PeriInfo, CodiInsu, CodiPart, BicoInpa) '9C7004
  'Data Table: 40BDD8
  loc_9C6F54: ILdRf CodiPart
  loc_9C6F57: FStStrCopy var_88
  loc_9C6F5A: ILdRf BicoInpa
  loc_9C6F5D: FStStrCopy var_8C
  loc_9C6F60: FLdRfVar var_94
  loc_9C6F63: ILdRf var_88
  loc_9C6F66: ILdRf CodiInsu
  loc_9C6F69: FLdI2 PeriInfo
  loc_9C6F6C: from_stack_4v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_9C6F71: FLdZeroAd var_94
  loc_9C6F74: FStStr var_90
  loc_9C6F77: ILdRf var_90
  loc_9C6F7A: LitStr vbNullString
  loc_9C6F7D: NeStr
  loc_9C6F7F: BranchF loc_9C6F92
  loc_9C6F82: LitI4 0
  loc_9C6F87: ILdRf var_90
  loc_9C6F8A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9C6F8F: Branch loc_9C7001
  loc_9C6F92: LitStr "INSERT INTO insupart (CodiInsu,PeriInfo,CodiPart,AltaUsua) VALUES ("
  loc_9C6F95: ILdRf CodiInsu
  loc_9C6F98: CStrI4
  loc_9C6F9A: FStStrNoPop var_94
  loc_9C6F9D: ConcatStr
  loc_9C6F9E: FStStrNoPop var_98
  loc_9C6FA1: LitStr ","
  loc_9C6FA4: ConcatStr
  loc_9C6FA5: FStStrNoPop var_9C
  loc_9C6FA8: FLdI2 PeriInfo
  loc_9C6FAB: CStrUI1
  loc_9C6FAD: FStStrNoPop var_A0
  loc_9C6FB0: ConcatStr
  loc_9C6FB1: FStStrNoPop var_A4
  loc_9C6FB4: LitStr ",'"
  loc_9C6FB7: ConcatStr
  loc_9C6FB8: FStStrNoPop var_A8
  loc_9C6FBB: ILdRf var_88
  loc_9C6FBE: ConcatStr
  loc_9C6FBF: FStStrNoPop var_AC
  loc_9C6FC2: LitStr "','"
  loc_9C6FC5: ConcatStr
  loc_9C6FC6: FStStrNoPop var_B0
  loc_9C6FC9: ImpAdLdI4 MemVar_C3D03C
  loc_9C6FCC: ConcatStr
  loc_9C6FCD: FStStrNoPop var_B4
  loc_9C6FD0: LitStr "')"
  loc_9C6FD3: ConcatStr
  loc_9C6FD4: FStStrNoPop var_B8
  loc_9C6FD7: Call EjecutarRsCls(from_stack_1v)
  loc_9C6FDC: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_9C6FF3: ILdRf var_88
  loc_9C6FF6: ILdRf CodiInsu
  loc_9C6FF9: FLdI2 PeriInfo
  loc_9C6FFC: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_9C7001: ExitProcHresult
  loc_9C7002: Branch loc_9CCFF3
End Sub

Public Sub Modificar(PeriInfo, CodiInsu, CodiPart, IncoInpa) '9BA25C
  'Data Table: 40BDD8
  loc_9BA1CC: ILdRf CodiPart
  loc_9BA1CF: FStStrCopy var_88
  loc_9BA1D2: ILdRf IncoInpa
  loc_9BA1D5: FStStrCopy var_8C
  loc_9BA1D8: LitStr "UPDATE insupart"
  loc_9BA1DB: LitStr " SET IncoInpa='"
  loc_9BA1DE: ConcatStr
  loc_9BA1DF: FStStrNoPop var_90
  loc_9BA1E2: ILdRf var_8C
  loc_9BA1E5: ConcatStr
  loc_9BA1E6: FStStrNoPop var_94
  loc_9BA1E9: LitStr "'"
  loc_9BA1EC: ConcatStr
  loc_9BA1ED: FStStrNoPop var_98
  loc_9BA1F0: LitStr " WHERE CodiInsu = "
  loc_9BA1F3: ConcatStr
  loc_9BA1F4: FStStrNoPop var_9C
  loc_9BA1F7: ILdRf CodiInsu
  loc_9BA1FA: CStrI4
  loc_9BA1FC: FStStrNoPop var_A0
  loc_9BA1FF: ConcatStr
  loc_9BA200: FStStrNoPop var_A4
  loc_9BA203: LitStr " AND PeriInfo = "
  loc_9BA206: ConcatStr
  loc_9BA207: FStStrNoPop var_A8
  loc_9BA20A: ImpAdLdI2 MemVar_C3D064
  loc_9BA20D: CStrUI1
  loc_9BA20F: FStStrNoPop var_AC
  loc_9BA212: ConcatStr
  loc_9BA213: FStStrNoPop var_B0
  loc_9BA216: LitStr " AND CodiPart='"
  loc_9BA219: ConcatStr
  loc_9BA21A: FStStrNoPop var_B4
  loc_9BA21D: ILdRf var_88
  loc_9BA220: ConcatStr
  loc_9BA221: FStStrNoPop var_B8
  loc_9BA224: LitStr "';"
  loc_9BA227: ConcatStr
  loc_9BA228: FStStrNoPop var_BC
  loc_9BA22B: Call EjecutarRsCls(from_stack_1v)
  loc_9BA230: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9BA24B: ILdRf var_88
  loc_9BA24E: ILdRf CodiInsu
  loc_9BA251: FLdI2 PeriInfo
  loc_9BA254: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_9BA259: ExitProcHresult
  loc_9BA25A: SubCy
End Sub

Public Sub Eliminar(PeriInfo, CodiInsu, CodiPart) '9C172C
  'Data Table: 40BDD8
  loc_9C1678: ILdRf CodiPart
  loc_9C167B: FStStrCopy var_88
  loc_9C167E: LitStr "DELETE FROM insupart WHERE CodiInsu = "
  loc_9C1681: ILdRf CodiInsu
  loc_9C1684: CStrI4
  loc_9C1686: FStStrNoPop var_8C
  loc_9C1689: ConcatStr
  loc_9C168A: FStStrNoPop var_90
  loc_9C168D: LitStr " AND PeriInfo = "
  loc_9C1690: ConcatStr
  loc_9C1691: FStStrNoPop var_94
  loc_9C1694: FLdI2 PeriInfo
  loc_9C1697: CStrUI1
  loc_9C1699: FStStrNoPop var_98
  loc_9C169C: ConcatStr
  loc_9C169D: FStStrNoPop var_9C
  loc_9C16A0: LitStr " AND CodiPart = '"
  loc_9C16A3: ConcatStr
  loc_9C16A4: FStStrNoPop var_A0
  loc_9C16A7: ILdRf var_88
  loc_9C16AA: ConcatStr
  loc_9C16AB: FStStrNoPop var_A4
  loc_9C16AE: LitStr "'"
  loc_9C16B1: ConcatStr
  loc_9C16B2: FStStrNoPop var_A8
  loc_9C16B5: Call EjecutarRsCls(from_stack_1v)
  loc_9C16BA: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9C16CD: FLdRfVar var_B0
  loc_9C16D0: FLdPr Me
  loc_9C16D3: MemLdPr RsFrm
  loc_9C16D6:  = Me.AbsolutePosition
  loc_9C16DB: ILdRf var_B0
  loc_9C16DE: FStR4 var_AC
  loc_9C16E1: Call Requery()
  loc_9C16E6: FLdRfVar var_B0
  loc_9C16E9: FLdPr Me
  loc_9C16EC: MemLdPr RsFrm
  loc_9C16EF:  = Me.RecordCount
  loc_9C16F4: ILdRf var_B0
  loc_9C16F7: LitI4 0
  loc_9C16FC: GtI4
  loc_9C16FD: BranchF loc_9C1729
  loc_9C1700: Call MoveFirst()
  loc_9C1705: ILdRf var_AC
  loc_9C1708: LitI4 1
  loc_9C170D: GtI4
  loc_9C170E: BranchF loc_9C1729
  loc_9C1711: LitVar_Missing var_C0
  loc_9C1714: PopAdLdVar
  loc_9C1715: ILdRf var_AC
  loc_9C1718: LitI4 2
  loc_9C171D: SubI4
  loc_9C171E: FLdPr Me
  loc_9C1721: MemLdPr RsFrm
  loc_9C1724: Me.Move from_stack_1, from_stack_2
  loc_9C1729: ExitProcHresult
  loc_9C172A: MemLdFPR4 global_24697
End Sub

Public Function ValidaClave(PeriInfo, CodiInsu, CodiPart) '9ABF10
  'Data Table: 40BDD8
  loc_9ABE90: ILdRf CodiPart
  loc_9ABE93: FStStrCopy var_8C
  loc_9ABE96: ZeroRetVal
  loc_9ABE98: LitStr "SELECT * FROM insupart WHERE CodiInsu = "
  loc_9ABE9B: ILdRf CodiInsu
  loc_9ABE9E: CStrI4
  loc_9ABEA0: FStStrNoPop var_90
  loc_9ABEA3: ConcatStr
  loc_9ABEA4: FStStrNoPop ValidaClave
  loc_9ABEA7: LitStr " AND PeriInfo = "
  loc_9ABEAA: ConcatStr
  loc_9ABEAB: FStStrNoPop var_98
  loc_9ABEAE: FLdI2 PeriInfo
  loc_9ABEB1: CStrUI1
  loc_9ABEB3: FStStrNoPop var_9C
  loc_9ABEB6: ConcatStr
  loc_9ABEB7: FStStrNoPop var_A0
  loc_9ABEBA: LitStr " AND CodiPart = '"
  loc_9ABEBD: ConcatStr
  loc_9ABEBE: FStStrNoPop var_A4
  loc_9ABEC1: ILdRf var_8C
  loc_9ABEC4: ConcatStr
  loc_9ABEC5: FStStrNoPop var_A8
  loc_9ABEC8: LitStr "'"
  loc_9ABECB: ConcatStr
  loc_9ABECC: FStStrNoPop var_AC
  loc_9ABECF: Call EjecutarRsCls(from_stack_1v)
  loc_9ABED4: FFreeStr var_90 = "": ValidaClave = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9ABEE7: FLdRfVar var_B0
  loc_9ABEEA: FLdPr Me
  loc_9ABEED: MemLdPr global_56
  loc_9ABEF0:  = Me.RecordCount
  loc_9ABEF5: ILdRf var_B0
  loc_9ABEF8: LitI4 0
  loc_9ABEFD: GtI4
  loc_9ABEFE: BranchF loc_9ABF07
  loc_9ABF01: LitStr "El Insumo/Partida YA EXISTE. Reintente..."
  loc_9ABF04: FStStrCopy var_88
  loc_9ABF07: ExitProcCbHresult
  loc_9ABF0F: CStrVarTmp
End Function

Public Sub Encontrar(PeriInfo, CodiInsu, CodiPart) '9A2DBC
  'Data Table: 40BDD8
  loc_9A2D48: ILdRf CodiPart
  loc_9A2D4B: FStStrCopy var_88
  loc_9A2D4E: Call Requery()
  loc_9A2D53: LitStr "PeriInfo = '"
  loc_9A2D56: FLdI2 PeriInfo
  loc_9A2D59: CStrUI1
  loc_9A2D5B: FStStrNoPop var_8C
  loc_9A2D5E: ConcatStr
  loc_9A2D5F: FStStrNoPop var_90
  loc_9A2D62: LitStr "'"
  loc_9A2D65: ConcatStr
  loc_9A2D66: PopTmpLdAdStr
  loc_9A2D6A: Call Find(from_stack_1v)
  loc_9A2D6F: FFreeStr var_8C = "": var_90 = ""
  loc_9A2D78: LitStr "CodiInsu = '"
  loc_9A2D7B: ILdRf CodiInsu
  loc_9A2D7E: CStrI4
  loc_9A2D80: FStStrNoPop var_8C
  loc_9A2D83: ConcatStr
  loc_9A2D84: FStStrNoPop var_90
  loc_9A2D87: LitStr "'"
  loc_9A2D8A: ConcatStr
  loc_9A2D8B: PopTmpLdAdStr
  loc_9A2D8F: Call Find(from_stack_1v)
  loc_9A2D94: FFreeStr var_8C = "": var_90 = ""
  loc_9A2D9D: LitStr "CodiPart = '"
  loc_9A2DA0: ILdRf var_88
  loc_9A2DA3: ConcatStr
  loc_9A2DA4: FStStrNoPop var_8C
  loc_9A2DA7: LitStr "'"
  loc_9A2DAA: ConcatStr
  loc_9A2DAB: PopTmpLdAdStr
  loc_9A2DAF: Call Find(from_stack_1v)
  loc_9A2DB4: FFreeStr var_8C = ""
  loc_9A2DBB: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '972804
  'Data Table: 40BDD8
  loc_9727DC: ILdRf sSelect
  loc_9727DF: FStStrCopy var_88
  loc_9727E2: FLdPr Me
  loc_9727E5: MemLdRfVar from_stack_1.RsFrm
  loc_9727E8: ILdRf var_88
  loc_9727EB: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_9727F0: LitVarStr var_98, "Primary"
  loc_9727F5: PopAdLdVar
  loc_9727F6: FLdPr Me
  loc_9727F9: LateIdCall
  loc_972801: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '95DEEC
  'Data Table: 40BDD8
  loc_95DED4: ILdRf sSelect
  loc_95DED7: FStStrCopy var_88
  loc_95DEDA: FLdPr Me
  loc_95DEDD: MemLdRfVar from_stack_1.global_56
  loc_95DEE0: ILdRf var_88
  loc_95DEE3: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95DEE8: ExitProcHresult
End Sub

Public Sub Requery() '9687F0
  'Data Table: 40BDD8
  loc_9687D0: FLdPr Me
  loc_9687D3: MemLdRfVar from_stack_1.RsFrm
  loc_9687D6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_9687DB: LitVarStr var_94, "Primary"
  loc_9687E0: PopAdLdVar
  loc_9687E1: FLdPr Me
  loc_9687E4: LateIdCall
  loc_9687EC: ExitProcHresult
  loc_9687ED: FnStrComp3Var
End Sub

Public Property Get DataSource() '972914
  'Data Table: 40BDD8
  loc_9728F0: ZeroRetVal
  loc_9728F2: FLdRfVar var_8C
  loc_9728F5: FLdPr Me
  loc_9728F8: MemLdPr RsFrm
  loc_9728FB:  = Me.DataSource
  loc_972900: ILdRf var_8C
  loc_972903: CastAd
  loc_972906: FStAdFunc var_88
  loc_972909: FFree1Ad var_8C
  loc_97290C: ExitProcCbHresult
  loc_972912: Ary1LdRf
End Sub

Public Function BuscaBicoInpa(lCodiInsu, sCodiPart) '9C7C04
  'Data Table: 40BDD8
  loc_9C7B50: ILdRf sCodiPart
  loc_9C7B53: FStStrCopy var_8C
  loc_9C7B56: ZeroRetVal
  loc_9C7B58: LitStr "SELECT BicoInpa FROM insupart WHERE CodiInsu = "
  loc_9C7B5B: ILdRf lCodiInsu
  loc_9C7B5E: CStrI4
  loc_9C7B60: FStStrNoPop var_90
  loc_9C7B63: ConcatStr
  loc_9C7B64: FStStrNoPop BuscaBicoInpa
  loc_9C7B67: LitStr " AND PeriInfo = "
  loc_9C7B6A: ConcatStr
  loc_9C7B6B: FStStrNoPop var_98
  loc_9C7B6E: ImpAdLdI2 MemVar_C3D064
  loc_9C7B71: CStrUI1
  loc_9C7B73: FStStrNoPop var_9C
  loc_9C7B76: ConcatStr
  loc_9C7B77: FStStrNoPop var_A0
  loc_9C7B7A: LitStr " AND CodiPart = '"
  loc_9C7B7D: ConcatStr
  loc_9C7B7E: FStStrNoPop var_A4
  loc_9C7B81: ILdRf var_8C
  loc_9C7B84: ConcatStr
  loc_9C7B85: FStStrNoPop var_A8
  loc_9C7B88: LitStr "'"
  loc_9C7B8B: ConcatStr
  loc_9C7B8C: FStStrNoPop var_AC
  loc_9C7B8F: Call EjecutarRsCls(from_stack_1v)
  loc_9C7B94: FFreeStr var_90 = "": BuscaBicoInpa = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9C7BA7: FLdRfVar var_B0
  loc_9C7BAA: FLdPr Me
  loc_9C7BAD: MemLdPr global_56
  loc_9C7BB0:  = Me.RecordCount
  loc_9C7BB5: ILdRf var_B0
  loc_9C7BB8: LitI4 0
  loc_9C7BBD: GtI4
  loc_9C7BBE: BranchF loc_9C7BFC
  loc_9C7BC1: FLdRfVar var_D8
  loc_9C7BC4: FLdRfVar var_C8
  loc_9C7BC7: LitVarStr var_C4, "BicoInpa"
  loc_9C7BCC: PopAdLdVar
  loc_9C7BCD: FLdRfVar var_B4
  loc_9C7BD0: FLdPr Me
  loc_9C7BD3: MemLdPr global_56
  loc_9C7BD6:  = Me.Fields
  loc_9C7BDB: FLdPr var_B4
  loc_9C7BDE: from_stack_2 = Me.Item(from_stack_1)
  loc_9C7BE3: FLdPr var_C8
  loc_9C7BE6:  = Me.Value
  loc_9C7BEB: FLdRfVar var_D8
  loc_9C7BEE: CStrVarTmp
  loc_9C7BEF: FStStr var_88
  loc_9C7BF2: FFreeAd var_B4 = ""
  loc_9C7BF9: FFree1Var var_D8 = ""
  loc_9C7BFC: ExitProcCbHresult
End Function

Private Function Proc_16_26_9727A4() '9727A4
  'Data Table: 40BDD8
  loc_972780: LitStr "Primary"
  loc_972783: FLdPr Me
  loc_972786: LateIdLdVar var_94 DispID_4 0
  loc_97278D: CastAdVar Me
  loc_972791: FStAdFunc var_98
  loc_972794: FLdPr var_98
  loc_97279C: FFree1Ad var_98
  loc_97279F: FFree1Var var_94 = ""
  loc_9727A2: ExitProcHresult
End Function

Private Function Proc_16_27_96883C(arg_C) '96883C
  'Data Table: 40BDD8
  loc_968820: ILdI4 arg_C
  loc_968823: FStStrCopy var_88
  loc_968826: ILdRf var_88
  loc_968829: LitStr "Primary"
  loc_96882C: EqStr
  loc_96882E: BranchF loc_96883B
  loc_968831: FLdPr Me
  loc_968834: MemLdStr RsFrm
  loc_968837: IStAd
  loc_96883B: ExitProcHresult
End Function
