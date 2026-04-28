VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsasiento"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '4208B0
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4208BF
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4208CE
  RsFrm = Value
End Sub

Public Sub MoveFirst(arg_30) '96D7E4
  'Data Table: 4204A8
  loc_96D7BC: FLdRfVar var_88
  loc_96D7BF: FLdPr Me
  loc_96D7C2: MemLdPr RsFrm
  loc_96D7C5:  = Me.RecordCount
  loc_96D7CA: ILdRf var_88
  loc_96D7CD: LitI4 0
  loc_96D7D2: GtI4
  loc_96D7D3: BranchF loc_96D7E1
  loc_96D7D6: FLdPr Me
  loc_96D7D9: MemLdPr RsFrm
  loc_96D7DC: Me.MoveFirst
  loc_96D7E1: ExitProcHresult
  loc_96D7E2: CRec2Uni arg_3000
End Sub

Public Sub MoveLast() '96D83C
  'Data Table: 4204A8
  loc_96D814: FLdRfVar var_88
  loc_96D817: FLdPr Me
  loc_96D81A: MemLdPr RsFrm
  loc_96D81D:  = Me.RecordCount
  loc_96D822: ILdRf var_88
  loc_96D825: LitI4 0
  loc_96D82A: GtI4
  loc_96D82B: BranchF loc_96D839
  loc_96D82E: FLdPr Me
  loc_96D831: MemLdPr RsFrm
  loc_96D834: Me.MoveLast
  loc_96D839: ExitProcHresult
End Sub

Public Sub MoveNext() '99FA10
  'Data Table: 4204A8
  loc_99F998: FLdRfVar var_86
  loc_99F99B: FLdPr Me
  loc_99F99E: MemLdPr RsFrm
  loc_99F9A1:  = Me.EOF
  loc_99F9A6: FLdI2 var_86
  loc_99F9A9: NotI4
  loc_99F9AA: FLdRfVar var_8C
  loc_99F9AD: FLdPr Me
  loc_99F9B0: MemLdPr RsFrm
  loc_99F9B3:  = Me.RecordCount
  loc_99F9B8: ILdRf var_8C
  loc_99F9BB: LitI4 0
  loc_99F9C0: GtI4
  loc_99F9C1: AndI4
  loc_99F9C2: BranchF loc_99F9D0
  loc_99F9C5: FLdPr Me
  loc_99F9C8: MemLdPr RsFrm
  loc_99F9CB: Me.MoveNext
  loc_99F9D0: FLdRfVar var_86
  loc_99F9D3: FLdPr Me
  loc_99F9D6: MemLdPr RsFrm
  loc_99F9D9:  = Me.EOF
  loc_99F9DE: FLdI2 var_86
  loc_99F9E1: FLdRfVar var_8C
  loc_99F9E4: FLdPr Me
  loc_99F9E7: MemLdPr RsFrm
  loc_99F9EA:  = Me.RecordCount
  loc_99F9EF: ILdRf var_8C
  loc_99F9F2: LitI4 0
  loc_99F9F7: GtI4
  loc_99F9F8: AndI4
  loc_99F9F9: BranchF loc_99FA0C
  loc_99F9FC: ImpAdCallFPR4 Beep()
  loc_99FA01: FLdPr Me
  loc_99FA04: MemLdPr RsFrm
  loc_99FA07: Me.MoveLast
  loc_99FA0C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9421C4
  'Data Table: 4204A8
  loc_9421B8: FLdPr Me
  loc_9421BB: MemLdPr RsFrm
  loc_9421BE: Me.MoveNext
  loc_9421C3: ExitProcHresult
End Sub

Public Sub MovePrevious() '99FCB0
  'Data Table: 4204A8
  loc_99FC38: FLdRfVar var_86
  loc_99FC3B: FLdPr Me
  loc_99FC3E: MemLdPr RsFrm
  loc_99FC41:  = Me.BOF
  loc_99FC46: FLdI2 var_86
  loc_99FC49: NotI4
  loc_99FC4A: FLdRfVar var_8C
  loc_99FC4D: FLdPr Me
  loc_99FC50: MemLdPr RsFrm
  loc_99FC53:  = Me.RecordCount
  loc_99FC58: ILdRf var_8C
  loc_99FC5B: LitI4 0
  loc_99FC60: GtI4
  loc_99FC61: AndI4
  loc_99FC62: BranchF loc_99FC70
  loc_99FC65: FLdPr Me
  loc_99FC68: MemLdPr RsFrm
  loc_99FC6B: Me.MovePrevious
  loc_99FC70: FLdRfVar var_86
  loc_99FC73: FLdPr Me
  loc_99FC76: MemLdPr RsFrm
  loc_99FC79:  = Me.BOF
  loc_99FC7E: FLdI2 var_86
  loc_99FC81: FLdRfVar var_8C
  loc_99FC84: FLdPr Me
  loc_99FC87: MemLdPr RsFrm
  loc_99FC8A:  = Me.RecordCount
  loc_99FC8F: ILdRf var_8C
  loc_99FC92: LitI4 0
  loc_99FC97: GtI4
  loc_99FC98: AndI4
  loc_99FC99: BranchF loc_99FCAC
  loc_99FC9C: ImpAdCallFPR4 Beep()
  loc_99FCA1: FLdPr Me
  loc_99FCA4: MemLdPr RsFrm
  loc_99FCA7: Me.MoveFirst
  loc_99FCAC: ExitProcHresult
End Sub

Public Property Get EOF() '966014
  'Data Table: 4204A8
  loc_965FF8: FLdRfVar var_88
  loc_965FFB: FLdPr Me
  loc_965FFE: MemLdPr RsFrm
  loc_966001:  = Me.EOF
  loc_966006: FLdI2 var_88
  loc_966009: FStI2 var_86
  loc_96600C: ExitProcCbHresult
  loc_966012: IDvI2
End Sub

Public Property Get BOF() '965F7C
  'Data Table: 4204A8
  loc_965F60: FLdRfVar var_88
  loc_965F63: FLdPr Me
  loc_965F66: MemLdPr RsFrm
  loc_965F69:  = Me.BOF
  loc_965F6E: FLdI2 var_88
  loc_965F71: FStI2 var_86
  loc_965F74: ExitProcCbHresult
  loc_965F7A: ExitProcHresult
End Sub

Public Sub Sort(sOrden) '944704
  'Data Table: 4204A8
  loc_9446F4: ILdI4 sOrden
  loc_9446F7: FLdPr Me
  loc_9446FA: MemLdPr RsFrm
  loc_9446FD: Me.Sort = from_stack_1
  loc_944702: ExitProcHresult
End Sub

Public Sub Find(sFind) '9670D0
  'Data Table: 4204A8
  loc_9670B0: LitVar_Missing var_94
  loc_9670B3: PopAdLdVar
  loc_9670B4: LitI4 1
  loc_9670B9: LitI4 0
  loc_9670BE: ILdI4 sFind
  loc_9670C1: FLdPr Me
  loc_9670C4: MemLdPr RsFrm
  loc_9670C7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9670CC: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '965E4C
  'Data Table: 4204A8
  loc_965E30: FLdRfVar var_8C
  loc_965E33: FLdPr Me
  loc_965E36: MemLdPr RsFrm
  loc_965E39:  = Me.AbsolutePosition
  loc_965E3E: ILdRf var_8C
  loc_965E41: FStR4 var_88
  loc_965E44: ExitProcCbHresult
  loc_965E4A: SetLastSystemError
End Sub

Public Property Get RecordCount() '965D1C
  'Data Table: 4204A8
  loc_965D00: FLdRfVar var_8C
  loc_965D03: FLdPr Me
  loc_965D06: MemLdPr RsFrm
  loc_965D09:  = Me.RecordCount
  loc_965D0E: ILdRf var_8C
  loc_965D11: FStR4 var_88
  loc_965D14: ExitProcCbHresult
End Sub

Public Function AddNew(PeriInfo, FechAsie, CodiTias, DetaAsie, MinuAsie, NoleAsie) '9FE094
  'Data Table: 4204A8
  loc_9FDF90: ILdRf FechAsie
  loc_9FDF93: FStStrCopy var_8C
  loc_9FDF96: ILdRf DetaAsie
  loc_9FDF99: FStStrCopy var_90
  loc_9FDF9C: ILdRf MinuAsie
  loc_9FDF9F: FStStrCopy AddNew
  loc_9FDFA2: ILdRf NoleAsie
  loc_9FDFA5: FStStrCopy var_98
  loc_9FDFA8: FLdRfVar var_9C
  loc_9FDFAB: FLdI2 PeriInfo
  loc_9FDFAE: from_stack_2v = NuevoRegistro(from_stack_1v)
  loc_9FDFB3: FLdI2 var_9C
  loc_9FDFB6: FStI2 var_9A
  loc_9FDFB9: LitStr "INSERT INTO asiento (PeriInfo,CodiAsie,FechAsie,CodiTias,DetaAsie,NoleAsie,MinuAsie,AltaUsua)"
  loc_9FDFBC: LitStr " VALUES ("
  loc_9FDFBF: ConcatStr
  loc_9FDFC0: FStStrNoPop var_A0
  loc_9FDFC3: FLdI2 PeriInfo
  loc_9FDFC6: CStrUI1
  loc_9FDFC8: FStStrNoPop var_A4
  loc_9FDFCB: ConcatStr
  loc_9FDFCC: FStStrNoPop var_A8
  loc_9FDFCF: LitStr ","
  loc_9FDFD2: ConcatStr
  loc_9FDFD3: FStStrNoPop var_AC
  loc_9FDFD6: FLdI2 var_9A
  loc_9FDFD9: CStrUI1
  loc_9FDFDB: FStStrNoPop var_B0
  loc_9FDFDE: ConcatStr
  loc_9FDFDF: FStStrNoPop var_B4
  loc_9FDFE2: LitStr ","
  loc_9FDFE5: ConcatStr
  loc_9FDFE6: FStStrNoPop var_E8
  loc_9FDFE9: LitI4 1
  loc_9FDFEE: LitI4 1
  loc_9FDFF3: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_9FDFF8: FStVarCopyObj var_E4
  loc_9FDFFB: FLdRfVar var_E4
  loc_9FDFFE: FLdRfVar var_8C
  loc_9FE001: CVarRef
  loc_9FE006: ImpAdCallI2 Format$(, )
  loc_9FE00B: FStStrNoPop var_EC
  loc_9FE00E: ConcatStr
  loc_9FE00F: FStStrNoPop var_F0
  loc_9FE012: LitStr ","
  loc_9FE015: ConcatStr
  loc_9FE016: FStStrNoPop var_F4
  loc_9FE019: FLdI2 CodiTias
  loc_9FE01C: CStrUI1
  loc_9FE01E: FStStrNoPop var_F8
  loc_9FE021: ConcatStr
  loc_9FE022: FStStrNoPop var_FC
  loc_9FE025: LitStr ",'"
  loc_9FE028: ConcatStr
  loc_9FE029: FStStrNoPop var_100
  loc_9FE02C: ILdRf var_90
  loc_9FE02F: ConcatStr
  loc_9FE030: FStStrNoPop var_104
  loc_9FE033: LitStr "','"
  loc_9FE036: ConcatStr
  loc_9FE037: FStStrNoPop var_108
  loc_9FE03A: ILdRf var_98
  loc_9FE03D: ConcatStr
  loc_9FE03E: FStStrNoPop var_10C
  loc_9FE041: LitStr "','"
  loc_9FE044: ConcatStr
  loc_9FE045: FStStrNoPop var_110
  loc_9FE048: ILdRf AddNew
  loc_9FE04B: ConcatStr
  loc_9FE04C: FStStrNoPop var_114
  loc_9FE04F: LitStr "',@sUsuario)"
  loc_9FE052: ConcatStr
  loc_9FE053: FStStrNoPop var_118
  loc_9FE056: Call EjecutarRsCls(from_stack_1v)
  loc_9FE05B: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_9FE084: FFree1Var var_E4 = ""
  loc_9FE087: FLdI2 var_9A
  loc_9FE08A: FStI2 var_86
  loc_9FE08D: ExitProcCbHresult
End Function

Public Sub AddNewMoviAsiento(PeriInfo, CodiAsie, CodiCuco, DebeMoas, HabeMoas) 'A08D04
  'Data Table: 4204A8
  loc_A08BF0: ILdRf CodiCuco
  loc_A08BF3: FStStrCopy var_88
  loc_A08BF6: LitStr "INSERT INTO moviasiento (PeriInfo,CodiAsie,CodiMoas,CodiCuco,DebeMoas,HabeMoas,AltaUsua)"
  loc_A08BF9: LitStr " VALUES ("
  loc_A08BFC: ConcatStr
  loc_A08BFD: FStStrNoPop var_8C
  loc_A08C00: FLdI2 PeriInfo
  loc_A08C03: CStrUI1
  loc_A08C05: FStStrNoPop var_90
  loc_A08C08: ConcatStr
  loc_A08C09: FStStrNoPop var_94
  loc_A08C0C: LitStr ","
  loc_A08C0F: ConcatStr
  loc_A08C10: FStStrNoPop var_98
  loc_A08C13: FLdI2 CodiAsie
  loc_A08C16: CStrUI1
  loc_A08C18: FStStrNoPop var_9C
  loc_A08C1B: ConcatStr
  loc_A08C1C: FStStrNoPop var_A0
  loc_A08C1F: LitStr ",(SELECT IFNULL(Max(CodiMoas),0)+1 CodiMoas FROM moviasiento tmp WHERE PeriInfo = "
  loc_A08C22: ConcatStr
  loc_A08C23: FStStrNoPop var_A4
  loc_A08C26: FLdI2 PeriInfo
  loc_A08C29: CStrUI1
  loc_A08C2B: FStStrNoPop var_A8
  loc_A08C2E: ConcatStr
  loc_A08C2F: FStStrNoPop var_AC
  loc_A08C32: LitStr " AND CodiAsie = "
  loc_A08C35: ConcatStr
  loc_A08C36: FStStrNoPop var_B0
  loc_A08C39: FLdI2 CodiAsie
  loc_A08C3C: CStrUI1
  loc_A08C3E: FStStrNoPop var_B4
  loc_A08C41: ConcatStr
  loc_A08C42: FStStrNoPop var_B8
  loc_A08C45: LitStr "),'"
  loc_A08C48: ConcatStr
  loc_A08C49: FStStrNoPop var_BC
  loc_A08C4C: ILdRf var_88
  loc_A08C4F: ConcatStr
  loc_A08C50: FStStrNoPop var_C0
  loc_A08C53: LitStr "',"
  loc_A08C56: ConcatStr
  loc_A08C57: FStStrNoPop var_C8
  loc_A08C5A: LitI4 0
  loc_A08C5F: LitI4 -1
  loc_A08C64: LitI4 1
  loc_A08C69: LitStr "."
  loc_A08C6C: LitStr ","
  loc_A08C6F: FLdFPR8 DebeMoas
  loc_A08C72: CStrR8
  loc_A08C74: FStStrNoPop var_C4
  loc_A08C77: ImpAdCallI2 Replace(, , , , , )
  loc_A08C7C: FStStrNoPop var_CC
  loc_A08C7F: ConcatStr
  loc_A08C80: FStStrNoPop var_D0
  loc_A08C83: LitStr ","
  loc_A08C86: ConcatStr
  loc_A08C87: FStStrNoPop var_D8
  loc_A08C8A: LitI4 0
  loc_A08C8F: LitI4 -1
  loc_A08C94: LitI4 1
  loc_A08C99: LitStr "."
  loc_A08C9C: LitStr ","
  loc_A08C9F: FLdFPR8 arg_20
  loc_A08CA2: CStrR8
  loc_A08CA4: FStStrNoPop var_D4
  loc_A08CA7: ImpAdCallI2 Replace(, , , , , )
  loc_A08CAC: FStStrNoPop var_DC
  loc_A08CAF: ConcatStr
  loc_A08CB0: FStStrNoPop var_E0
  loc_A08CB3: LitStr ",'"
  loc_A08CB6: ConcatStr
  loc_A08CB7: FStStrNoPop var_E4
  loc_A08CBA: ImpAdLdI4 MemVar_C3D03C
  loc_A08CBD: ConcatStr
  loc_A08CBE: FStStrNoPop var_E8
  loc_A08CC1: LitStr "')"
  loc_A08CC4: ConcatStr
  loc_A08CC5: FStStrNoPop var_EC
  loc_A08CC8: Call EjecutarRsCls(from_stack_1v)
  loc_A08CCD: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_A08D02: ExitProcHresult
End Sub

Public Sub Encontrar(PeriInfo, CodiAsie) '9EA680
  'Data Table: 4204A8
  loc_9EA562: ILdRf PeriInfo
  loc_9EA565: FStStrCopy var_88
  loc_9EA568: ILdRf CodiAsie
  loc_9EA56B: FStStrCopy var_8C
  loc_9EA570: On Error Resume Next
  loc_9EA575: ILdRf var_88
  loc_9EA578: LitStr vbNullString
  loc_9EA57B: EqStr
  loc_9EA57D: ILdRf var_8C
  loc_9EA580: LitStr vbNullString
  loc_9EA583: EqStr
  loc_9EA585: AndI4
  loc_9EA586: FLdRfVar var_90
  loc_9EA589: FLdPr Me
  loc_9EA58C: MemLdPr RsFrm
  loc_9EA58F:  = Me.RecordCount
  loc_9EA594: ILdRf var_90
  loc_9EA597: LitI4 0
  loc_9EA59C: GtI4
  loc_9EA59D: AndI4
  loc_9EA59E: FLdRfVar var_94
  loc_9EA5A1: FLdPr Me
  loc_9EA5A4: MemLdPr RsFrm
  loc_9EA5A7:  = Me.AbsolutePosition
  loc_9EA5AC: ILdRf var_94
  loc_9EA5AF: LitI4 -3
  loc_9EA5B4: NeI4
  loc_9EA5B5: AndI4
  loc_9EA5B6: BranchF loc_9EA633
  loc_9EA5BB: FLdRfVar var_BC
  loc_9EA5BE: FLdRfVar var_AC
  loc_9EA5C1: LitVarStr var_A8, "PeriInfo"
  loc_9EA5C6: PopAdLdVar
  loc_9EA5C7: FLdRfVar var_98
  loc_9EA5CA: FLdPr Me
  loc_9EA5CD: MemLdPr RsFrm
  loc_9EA5D0:  = Me.Fields
  loc_9EA5D5: FLdPr var_98
  loc_9EA5D8: from_stack_2 = Me.Item(from_stack_1)
  loc_9EA5DD: FLdPr var_AC
  loc_9EA5E0:  = Me.Value
  loc_9EA5E5: FLdRfVar var_BC
  loc_9EA5E8: CStrVarTmp
  loc_9EA5E9: FStStr var_88
  loc_9EA5EC: FFreeAd var_98 = ""
  loc_9EA5F3: FFree1Var var_BC = ""
  loc_9EA5F8: FLdRfVar var_BC
  loc_9EA5FB: FLdRfVar var_AC
  loc_9EA5FE: LitVarStr var_A8, "CodiAsie"
  loc_9EA603: PopAdLdVar
  loc_9EA604: FLdRfVar var_98
  loc_9EA607: FLdPr Me
  loc_9EA60A: MemLdPr RsFrm
  loc_9EA60D:  = Me.Fields
  loc_9EA612: FLdPr var_98
  loc_9EA615: from_stack_2 = Me.Item(from_stack_1)
  loc_9EA61A: FLdPr var_AC
  loc_9EA61D:  = Me.Value
  loc_9EA622: FLdRfVar var_BC
  loc_9EA625: CStrVarTmp
  loc_9EA626: FStStr var_8C
  loc_9EA629: FFreeAd var_98 = ""
  loc_9EA630: FFree1Var var_BC = ""
  loc_9EA637: Call Requery()
  loc_9EA63E: LitStr "PeriInfo = '"
  loc_9EA641: ILdRf var_88
  loc_9EA644: ConcatStr
  loc_9EA645: FStStrNoPop var_C0
  loc_9EA648: LitStr "'"
  loc_9EA64B: ConcatStr
  loc_9EA64C: PopTmpLdAdStr
  loc_9EA650: Call Find(from_stack_1v)
  loc_9EA655: FFreeStr var_C0 = ""
  loc_9EA65E: LitStr "CodiAsie = '"
  loc_9EA661: ILdRf var_8C
  loc_9EA664: ConcatStr
  loc_9EA665: FStStrNoPop var_C0
  loc_9EA668: LitStr "'"
  loc_9EA66B: ConcatStr
  loc_9EA66C: PopTmpLdAdStr
  loc_9EA670: Call Find(from_stack_1v)
  loc_9EA675: FFreeStr var_C0 = ""
  loc_9EA67E: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '972B9C
  'Data Table: 4204A8
  loc_972B74: ILdRf sSelect
  loc_972B77: FStStrCopy var_88
  loc_972B7A: FLdPr Me
  loc_972B7D: MemLdRfVar from_stack_1.RsFrm
  loc_972B80: ILdRf var_88
  loc_972B83: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_972B88: LitVarStr var_98, "Primary"
  loc_972B8D: PopAdLdVar
  loc_972B8E: FLdPr Me
  loc_972B91: LateIdCall
  loc_972B99: ExitProcHresult
  loc_972B9A: FFree1Ad arg_3078
End Sub

Public Sub EjecutarRsCls(sSelect) '965C80
  'Data Table: 4204A8
  loc_965C68: ILdRf sSelect
  loc_965C6B: FStStrCopy var_88
  loc_965C6E: FLdPr Me
  loc_965C71: MemLdRfVar from_stack_1.global_56
  loc_965C74: ILdRf var_88
  loc_965C77: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_965C7C: ExitProcHresult
  loc_965C7D: AryLdRf
End Sub

Public Sub Requery() '966F40
  'Data Table: 4204A8
  loc_966F20: FLdPr Me
  loc_966F23: MemLdRfVar from_stack_1.RsFrm
  loc_966F26: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_966F2B: LitVarStr var_94, "Primary"
  loc_966F30: PopAdLdVar
  loc_966F31: FLdPr Me
  loc_966F34: LateIdCall
  loc_966F3C: ExitProcHresult
End Sub

Public Property Get DataSource() '971664
  'Data Table: 4204A8
  loc_971640: ZeroRetVal
  loc_971642: FLdRfVar var_8C
  loc_971645: FLdPr Me
  loc_971648: MemLdPr RsFrm
  loc_97164B:  = Me.DataSource
  loc_971650: ILdRf var_8C
  loc_971653: CastAd
  loc_971656: FStAdFunc var_88
  loc_971659: FFree1Ad var_8C
  loc_97165C: ExitProcCbHresult
End Sub

Public Property Get MinCodiAsie() '9A9DCC
  'Data Table: 4204A8
  loc_9A9D38: FLdRfVar var_8C
  loc_9A9D3B: FLdPr Me
  loc_9A9D3E: MemLdPr RsFrm
  loc_9A9D41:  = Me.RecordCount
  loc_9A9D46: ILdRf var_8C
  loc_9A9D49: LitI4 0
  loc_9A9D4E: GtI4
  loc_9A9D4F: BranchF loc_9A9DC6
  loc_9A9D52: FLdPr Me
  loc_9A9D55: MemLdStr RsFrm
  loc_9A9D58: FLdPr Me
  loc_9A9D5B: MemStAd
  loc_9A9D5F: LitStr "CodiAsie"
  loc_9A9D62: FLdPr Me
  loc_9A9D65: MemLdPr global_56
  loc_9A9D68: Me.Sort = from_stack_1
  loc_9A9D6D: FLdPr Me
  loc_9A9D70: MemLdPr global_56
  loc_9A9D73: Me.MoveFirst
  loc_9A9D78: FLdRfVar var_B4
  loc_9A9D7B: FLdRfVar var_A4
  loc_9A9D7E: LitVarStr var_A0, "CodiAsie"
  loc_9A9D83: PopAdLdVar
  loc_9A9D84: FLdRfVar var_90
  loc_9A9D87: FLdPr Me
  loc_9A9D8A: MemLdPr global_56
  loc_9A9D8D:  = Me.Fields
  loc_9A9D92: FLdPr var_90
  loc_9A9D95: from_stack_2 = Me.Item(from_stack_1)
  loc_9A9D9A: FLdPr var_A4
  loc_9A9D9D:  = Me.Value
  loc_9A9DA2: FLdRfVar var_B4
  loc_9A9DA5: CI4Var
  loc_9A9DA7: FStR4 var_88
  loc_9A9DAA: FFreeAd var_90 = ""
  loc_9A9DB1: FFree1Var var_B4 = ""
  loc_9A9DB4: LitNothing
  loc_9A9DB6: CastAd
  loc_9A9DB9: FStAdFuncNoPop
  loc_9A9DBC: FLdPr Me
  loc_9A9DBF: MemStAd
  loc_9A9DC3: FFree1Ad var_90
  loc_9A9DC6: ExitProcCbHresult
End Sub

Public Property Get MaxCodiAsie() '9AA10C
  'Data Table: 4204A8
  loc_9AA078: FLdRfVar var_8C
  loc_9AA07B: FLdPr Me
  loc_9AA07E: MemLdPr RsFrm
  loc_9AA081:  = Me.RecordCount
  loc_9AA086: ILdRf var_8C
  loc_9AA089: LitI4 0
  loc_9AA08E: GtI4
  loc_9AA08F: BranchF loc_9AA106
  loc_9AA092: FLdPr Me
  loc_9AA095: MemLdStr RsFrm
  loc_9AA098: FLdPr Me
  loc_9AA09B: MemStAd
  loc_9AA09F: LitStr "CodiAsie"
  loc_9AA0A2: FLdPr Me
  loc_9AA0A5: MemLdPr global_56
  loc_9AA0A8: Me.Sort = from_stack_1
  loc_9AA0AD: FLdPr Me
  loc_9AA0B0: MemLdPr global_56
  loc_9AA0B3: Me.MoveLast
  loc_9AA0B8: FLdRfVar var_B4
  loc_9AA0BB: FLdRfVar var_A4
  loc_9AA0BE: LitVarStr var_A0, "CodiAsie"
  loc_9AA0C3: PopAdLdVar
  loc_9AA0C4: FLdRfVar var_90
  loc_9AA0C7: FLdPr Me
  loc_9AA0CA: MemLdPr global_56
  loc_9AA0CD:  = Me.Fields
  loc_9AA0D2: FLdPr var_90
  loc_9AA0D5: from_stack_2 = Me.Item(from_stack_1)
  loc_9AA0DA: FLdPr var_A4
  loc_9AA0DD:  = Me.Value
  loc_9AA0E2: FLdRfVar var_B4
  loc_9AA0E5: CI4Var
  loc_9AA0E7: FStR4 var_88
  loc_9AA0EA: FFreeAd var_90 = ""
  loc_9AA0F1: FFree1Var var_B4 = ""
  loc_9AA0F4: LitNothing
  loc_9AA0F6: CastAd
  loc_9AA0F9: FStAdFuncNoPop
  loc_9AA0FC: FLdPr Me
  loc_9AA0FF: MemStAd
  loc_9AA103: FFree1Ad var_90
  loc_9AA106: ExitProcCbHresult
End Sub

Public Property Get Importe(arg_30) '9A055C
  'Data Table: 4204A8
  loc_9A04F0: ZeroRetVal
  loc_9A04F2: FLdRfVar var_8C
  loc_9A04F5: FLdPr Me
  loc_9A04F8: MemLdPr RsFrm
  loc_9A04FB:  = Me.RecordCount
  loc_9A0500: ILdRf var_8C
  loc_9A0503: LitI4 0
  loc_9A0508: GtI4
  loc_9A0509: BranchF loc_9A054D
  loc_9A050C: FLdRfVar var_B4
  loc_9A050F: FLdRfVar var_A4
  loc_9A0512: LitVarStr var_A0, "Importe"
  loc_9A0517: PopAdLdVar
  loc_9A0518: FLdRfVar var_90
  loc_9A051B: FLdPr Me
  loc_9A051E: MemLdPr RsFrm
  loc_9A0521:  = Me.Fields
  loc_9A0526: FLdPr var_90
  loc_9A0529: from_stack_2 = Me.Item(from_stack_1)
  loc_9A052E: FLdPr var_A4
  loc_9A0531:  = Me.Value
  loc_9A0536: FLdRfVar var_B4
  loc_9A0539: FnCDblVar
  loc_9A053B: CStrR8
  loc_9A053D: FStStr var_88
  loc_9A0540: FFreeAd var_90 = ""
  loc_9A0547: FFree1Var var_B4 = ""
  loc_9A054A: Branch loc_9A0554
  loc_9A054D: LitI2_Byte 0
  loc_9A054F: CStrUI1
  loc_9A0551: FStStr var_88
  loc_9A0554: ExitProcCbHresult
  loc_9A055A: FStAdFunc arg_3078
End Sub

Public Function NuevoRegistro(iPeriInfo) '9AAAEC
  'Data Table: 4204A8
  loc_9AAA60: LitStr "SELECT * FROM asiento WHERE PeriInfo = "
  loc_9AAA63: FLdI2 iPeriInfo
  loc_9AAA66: CStrUI1
  loc_9AAA68: FStStrNoPop var_8C
  loc_9AAA6B: ConcatStr
  loc_9AAA6C: FStStrNoPop var_90
  loc_9AAA6F: LitStr " ORDER BY PeriInfo, CodiAsie DESC "
  loc_9AAA72: ConcatStr
  loc_9AAA73: FStStrNoPop NuevoRegistro
  loc_9AAA76: Call EjecutarRsCls(from_stack_1v)
  loc_9AAA7B: FFreeStr var_8C = "": var_90 = ""
  loc_9AAA84: FLdRfVar var_98
  loc_9AAA87: FLdPr Me
  loc_9AAA8A: MemLdPr global_56
  loc_9AAA8D:  = Me.RecordCount
  loc_9AAA92: ILdRf var_98
  loc_9AAA95: LitI4 0
  loc_9AAA9A: GtI4
  loc_9AAA9B: BranchF loc_9AAAE0
  loc_9AAA9E: FLdRfVar var_C0
  loc_9AAAA1: FLdRfVar var_B0
  loc_9AAAA4: LitVarStr var_AC, "CodiAsie"
  loc_9AAAA9: PopAdLdVar
  loc_9AAAAA: FLdRfVar var_9C
  loc_9AAAAD: FLdPr Me
  loc_9AAAB0: MemLdPr global_56
  loc_9AAAB3:  = Me.Fields
  loc_9AAAB8: FLdPr var_9C
  loc_9AAABB: from_stack_2 = Me.Item(from_stack_1)
  loc_9AAAC0: FLdPr var_B0
  loc_9AAAC3:  = Me.Value
  loc_9AAAC8: FLdRfVar var_C0
  loc_9AAACB: FnCIntVar
  loc_9AAACD: LitI2_Byte 1
  loc_9AAACF: AddI2
  loc_9AAAD0: FStI2 var_86
  loc_9AAAD3: FFreeAd var_9C = ""
  loc_9AAADA: FFree1Var var_C0 = ""
  loc_9AAADD: Branch loc_9AAAE5
  loc_9AAAE0: LitI2_Byte 1
  loc_9AAAE2: FStI2 var_86
  loc_9AAAE5: ExitProcCbHresult
End Function

Public Function EsAsientoManual(PeriInfo, CodiAsie) '9C7E38
  'Data Table: 4204A8
  loc_9C7D80: LitStr "SELECT FijoTias"
  loc_9C7D83: LitStr " FROM asiento"
  loc_9C7D86: ConcatStr
  loc_9C7D87: FStStrNoPop var_8C
  loc_9C7D8A: LitStr " INNER JOIN tipoasiento ON tipoasiento.CodiTias = asiento.CodiTias"
  loc_9C7D8D: ConcatStr
  loc_9C7D8E: FStStrNoPop var_90
  loc_9C7D91: LitStr " WHERE asiento.PeriInfo = "
  loc_9C7D94: ConcatStr
  loc_9C7D95: FStStrNoPop EsAsientoManual
  loc_9C7D98: FLdI2 PeriInfo
  loc_9C7D9B: CStrUI1
  loc_9C7D9D: FStStrNoPop var_98
  loc_9C7DA0: ConcatStr
  loc_9C7DA1: FStStrNoPop var_9C
  loc_9C7DA4: LitStr " AND asiento.CodiAsie = "
  loc_9C7DA7: ConcatStr
  loc_9C7DA8: FStStrNoPop var_A0
  loc_9C7DAB: FLdI2 CodiAsie
  loc_9C7DAE: CStrUI1
  loc_9C7DB0: FStStrNoPop var_A4
  loc_9C7DB3: ConcatStr
  loc_9C7DB4: FStStrNoPop var_A8
  loc_9C7DB7: Call EjecutarRsCls(from_stack_1v)
  loc_9C7DBC: FFreeStr var_8C = "": var_90 = "": EsAsientoManual = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9C7DCF: FLdRfVar var_AC
  loc_9C7DD2: FLdPr Me
  loc_9C7DD5: MemLdPr global_56
  loc_9C7DD8:  = Me.RecordCount
  loc_9C7DDD: ILdRf var_AC
  loc_9C7DE0: LitI4 0
  loc_9C7DE5: GtI4
  loc_9C7DE6: BranchF loc_9C7E30
  loc_9C7DE9: FLdRfVar var_D4
  loc_9C7DEC: FLdRfVar var_C4
  loc_9C7DEF: LitVarStr var_C0, "FijoTias"
  loc_9C7DF4: PopAdLdVar
  loc_9C7DF5: FLdRfVar var_B0
  loc_9C7DF8: FLdPr Me
  loc_9C7DFB: MemLdPr global_56
  loc_9C7DFE:  = Me.Fields
  loc_9C7E03: FLdPr var_B0
  loc_9C7E06: from_stack_2 = Me.Item(from_stack_1)
  loc_9C7E0B: FLdPr var_C4
  loc_9C7E0E:  = Me.Value
  loc_9C7E13: FLdRfVar var_D4
  loc_9C7E16: LitVarStr var_E4, "0"
  loc_9C7E1B: HardType
  loc_9C7E1C: EqVarBool
  loc_9C7E1E: FFreeAd var_B0 = ""
  loc_9C7E25: FFree1Var var_D4 = ""
  loc_9C7E28: BranchF loc_9C7E30
  loc_9C7E2B: LitI2_Byte &HFF
  loc_9C7E2D: FStI2 var_86
  loc_9C7E30: ExitProcCbHresult
End Function

Public Sub EliminaAsientoManual(PeriInfo, CodiAsie) '9A58C8
  'Data Table: 4204A8
  loc_9A5858: LitStr "DELETE asiento, moviasiento"
  loc_9A585B: LitStr " FROM asiento"
  loc_9A585E: ConcatStr
  loc_9A585F: FStStrNoPop var_88
  loc_9A5862: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_9A5865: ConcatStr
  loc_9A5866: FStStrNoPop var_8C
  loc_9A5869: LitStr " WHERE asiento.PeriInfo = "
  loc_9A586C: ConcatStr
  loc_9A586D: FStStrNoPop var_90
  loc_9A5870: FLdI2 PeriInfo
  loc_9A5873: CStrUI1
  loc_9A5875: FStStrNoPop var_94
  loc_9A5878: ConcatStr
  loc_9A5879: FStStrNoPop var_98
  loc_9A587C: LitStr " AND asiento.CodiAsie = "
  loc_9A587F: ConcatStr
  loc_9A5880: FStStrNoPop var_9C
  loc_9A5883: FLdI2 CodiAsie
  loc_9A5886: CStrUI1
  loc_9A5888: FStStrNoPop var_A0
  loc_9A588B: ConcatStr
  loc_9A588C: FStStrNoPop var_A4
  loc_9A588F: Call EjecutarRsCls(from_stack_1v)
  loc_9A5894: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_9A58A7: LitI4 0
  loc_9A58AC: LitStr "Se eliminó el asiento: "
  loc_9A58AF: FLdI2 CodiAsie
  loc_9A58B2: CStrUI1
  loc_9A58B4: FStStrNoPop var_88
  loc_9A58B7: ConcatStr
  loc_9A58B8: FStStrNoPop var_8C
  loc_9A58BB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9A58C0: FFreeStr var_88 = ""
  loc_9A58C7: ExitProcHresult
End Sub

Public Sub IncrementaMedePaco() '96C75C
  'Data Table: 4204A8
  loc_96C740: LitStr "UPDATE paraconta SET MedePaco=MedePaco+1 WHERE PeriInfo = "
  loc_96C743: ImpAdLdI2 MemVar_C3D064
  loc_96C746: CStrUI1
  loc_96C748: FStStrNoPop var_88
  loc_96C74B: ConcatStr
  loc_96C74C: FStStrNoPop var_8C
  loc_96C74F: Call EjecutarRsCls(from_stack_1v)
  loc_96C754: FFreeStr var_88 = ""
  loc_96C75B: ExitProcHresult
End Sub

Public Sub IncrementaFedePaco() 'A197E0
  'Data Table: 4204A8
  loc_A19690: OnErrorGoto loc_A19760
  loc_A19693: LitStr "UPDATE paraconta"
  loc_A19696: LitStr " SET FedePaco = FeproPaco"
  loc_A19699: ConcatStr
  loc_A1969A: FStStrNoPop var_88
  loc_A1969D: LitStr " WHERE paraconta.PeriInfo = "
  loc_A196A0: ConcatStr
  loc_A196A1: FStStrNoPop var_8C
  loc_A196A4: ImpAdLdI2 MemVar_C3D064
  loc_A196A7: CStrUI1
  loc_A196A9: FStStrNoPop var_90
  loc_A196AC: ConcatStr
  loc_A196AD: FStStrNoPop var_94
  loc_A196B0: LitStr ";"
  loc_A196B3: ConcatStr
  loc_A196B4: FStStrNoPop var_98
  loc_A196B7: Call EjecutarRsCls(from_stack_1v)
  loc_A196BC: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = ""
  loc_A196C9: LitStr "UPDATE paraconta p"
  loc_A196CC: LitStr " SET p.FemaxPaco=if(p.FedePaco='"
  loc_A196CF: ConcatStr
  loc_A196D0: FStStrNoPop var_88
  loc_A196D3: ImpAdLdI2 MemVar_C3D064
  loc_A196D6: CStrUI1
  loc_A196D8: FStStrNoPop var_8C
  loc_A196DB: ConcatStr
  loc_A196DC: FStStrNoPop var_90
  loc_A196DF: LitStr "-12-30"
  loc_A196E2: ConcatStr
  loc_A196E3: FStStrNoPop var_94
  loc_A196E6: LitStr "' && p.FemaxPaco='"
  loc_A196E9: ConcatStr
  loc_A196EA: FStStrNoPop var_98
  loc_A196ED: ImpAdLdI2 MemVar_C3D064
  loc_A196F0: CStrUI1
  loc_A196F2: FStStrNoPop var_9C
  loc_A196F5: ConcatStr
  loc_A196F6: FStStrNoPop var_A0
  loc_A196F9: LitStr "-12-30"
  loc_A196FC: ConcatStr
  loc_A196FD: FStStrNoPop var_A4
  loc_A19700: LitStr "','"
  loc_A19703: ConcatStr
  loc_A19704: FStStrNoPop var_A8
  loc_A19707: ImpAdLdI2 MemVar_C3D064
  loc_A1970A: CStrUI1
  loc_A1970C: FStStrNoPop var_AC
  loc_A1970F: ConcatStr
  loc_A19710: FStStrNoPop var_B0
  loc_A19713: LitStr "-12-31',p.FemaxPaco)"
  loc_A19716: ConcatStr
  loc_A19717: FStStrNoPop var_B4
  loc_A1971A: LitStr " WHERE p.PeriInfo = "
  loc_A1971D: ConcatStr
  loc_A1971E: FStStrNoPop var_B8
  loc_A19721: ImpAdLdI2 MemVar_C3D064
  loc_A19724: CStrUI1
  loc_A19726: FStStrNoPop var_BC
  loc_A19729: ConcatStr
  loc_A1972A: FStStrNoPop var_C0
  loc_A1972D: LitStr ";"
  loc_A19730: ConcatStr
  loc_A19731: FStStrNoPop var_C4
  loc_A19734: Call EjecutarRsCls(from_stack_1v)
  loc_A19739: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_A1975C: On Error GoTo 0
  loc_A1975F: ExitProcHresult
  loc_A19760: LitVar_Missing var_140
  loc_A19763: LitVar_Missing var_120
  loc_A19766: LitVar_Missing var_100
  loc_A19769: LitI4 0
  loc_A1976E: LitStr "Error "
  loc_A19771: FLdRfVar var_CC
  loc_A19774: ImpAdCallI2 Err 'rtcErrObj
  loc_A19779: FStAdFunc var_C8
  loc_A1977C: FLdPr var_C8
  loc_A1977F:  = Err.Number
  loc_A19784: ILdRf var_CC
  loc_A19787: CStrI4
  loc_A19789: FStStrNoPop var_88
  loc_A1978C: ConcatStr
  loc_A1978D: FStStrNoPop var_8C
  loc_A19790: LitStr " ("
  loc_A19793: ConcatStr
  loc_A19794: FStStrNoPop var_94
  loc_A19797: FLdRfVar var_90
  loc_A1979A: ImpAdCallI2 Err 'rtcErrObj
  loc_A1979F: FStAdFunc var_D0
  loc_A197A2: FLdPr var_D0
  loc_A197A5:  = Err.Description
  loc_A197AA: ILdRf var_90
  loc_A197AD: ConcatStr
  loc_A197AE: FStStrNoPop var_98
  loc_A197B1: LitStr ") in procedure IncrementaFedePaco of Módulo de clase clsasiento"
  loc_A197B4: ConcatStr
  loc_A197B5: CVarStr var_E0
  loc_A197B8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_A197BD: FFreeStr var_88 = "": var_8C = "": var_94 = "": var_90 = ""
  loc_A197CA: FFreeAd var_C8 = ""
  loc_A197D1: FFreeVar var_E0 = "": var_100 = "": var_120 = ""
  loc_A197DC: ExitProcHresult
End Sub

Public Sub AbreCajas(PeriInfo, Fecha) 'A2BC74
  'Data Table: 4204A8
  loc_A2BAAC: ILdRf Fecha
  loc_A2BAAF: FStStrCopy var_88
  loc_A2BAB2: LitStr "START TRANSACTION;"
  loc_A2BAB5: Call EjecutarRsCls(from_stack_1v)
  loc_A2BABA: OnErrorGoto loc_A2BC5B
  loc_A2BABD: LitStr "DELETE moviasiento"
  loc_A2BAC0: LitStr " FROM asiento"
  loc_A2BAC3: ConcatStr
  loc_A2BAC4: FStStrNoPop var_8C
  loc_A2BAC7: LitStr " INNER JOIN tipoasiento ON tipoasiento.CodiTias = asiento.CodiTias AND FijoTias = 1"
  loc_A2BACA: ConcatStr
  loc_A2BACB: FStStrNoPop var_90
  loc_A2BACE: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_A2BAD1: ConcatStr
  loc_A2BAD2: FStStrNoPop var_94
  loc_A2BAD5: LitStr " WHERE asiento.PeriInfo = "
  loc_A2BAD8: ConcatStr
  loc_A2BAD9: FStStrNoPop var_98
  loc_A2BADC: FLdI2 PeriInfo
  loc_A2BADF: CStrUI1
  loc_A2BAE1: FStStrNoPop var_9C
  loc_A2BAE4: ConcatStr
  loc_A2BAE5: FStStrNoPop var_A0
  loc_A2BAE8: LitStr " AND FechAsie >= "
  loc_A2BAEB: ConcatStr
  loc_A2BAEC: FStStrNoPop var_D4
  loc_A2BAEF: LitI4 1
  loc_A2BAF4: LitI4 1
  loc_A2BAF9: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_A2BAFE: FStVarCopyObj var_D0
  loc_A2BB01: FLdRfVar var_D0
  loc_A2BB04: FLdRfVar var_88
  loc_A2BB07: CVarRef
  loc_A2BB0C: ImpAdCallI2 Format$(, )
  loc_A2BB11: FStStrNoPop var_D8
  loc_A2BB14: ConcatStr
  loc_A2BB15: FStStrNoPop var_DC
  loc_A2BB18: LitStr " AND asiento.CodiTias NOT IN (17,18);"
  loc_A2BB1B: ConcatStr
  loc_A2BB1C: FStStrNoPop var_E0
  loc_A2BB1F: Call EjecutarRsCls(from_stack_1v)
  loc_A2BB24: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_A2BB3B: FFree1Var var_D0 = ""
  loc_A2BB3E: LitStr "DELETE asiento"
  loc_A2BB41: LitStr " FROM asiento"
  loc_A2BB44: ConcatStr
  loc_A2BB45: FStStrNoPop var_8C
  loc_A2BB48: LitStr " INNER JOIN tipoasiento ON tipoasiento.CodiTias = asiento.CodiTias AND FijoTias = 1"
  loc_A2BB4B: ConcatStr
  loc_A2BB4C: FStStrNoPop var_90
  loc_A2BB4F: LitStr " WHERE asiento.PeriInfo = "
  loc_A2BB52: ConcatStr
  loc_A2BB53: FStStrNoPop var_94
  loc_A2BB56: FLdI2 PeriInfo
  loc_A2BB59: CStrUI1
  loc_A2BB5B: FStStrNoPop var_98
  loc_A2BB5E: ConcatStr
  loc_A2BB5F: FStStrNoPop var_9C
  loc_A2BB62: LitStr " AND FechAsie >= "
  loc_A2BB65: ConcatStr
  loc_A2BB66: FStStrNoPop var_A0
  loc_A2BB69: LitI4 1
  loc_A2BB6E: LitI4 1
  loc_A2BB73: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_A2BB78: FStVarCopyObj var_D0
  loc_A2BB7B: FLdRfVar var_D0
  loc_A2BB7E: FLdRfVar var_88
  loc_A2BB81: CVarRef
  loc_A2BB86: ImpAdCallI2 Format$(, )
  loc_A2BB8B: FStStrNoPop var_D4
  loc_A2BB8E: ConcatStr
  loc_A2BB8F: FStStrNoPop var_D8
  loc_A2BB92: LitStr " AND asiento.CodiTias NOT IN (17,18);"
  loc_A2BB95: ConcatStr
  loc_A2BB96: FStStrNoPop var_DC
  loc_A2BB99: Call EjecutarRsCls(from_stack_1v)
  loc_A2BB9E: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_D4 = "": var_D8 = ""
  loc_A2BBB3: FFree1Var var_D0 = ""
  loc_A2BBB6: LitStr "DELETE FROM detactrl"
  loc_A2BBB9: LitStr " WHERE PeriInfo = "
  loc_A2BBBC: ConcatStr
  loc_A2BBBD: FStStrNoPop var_8C
  loc_A2BBC0: FLdI2 PeriInfo
  loc_A2BBC3: CStrUI1
  loc_A2BBC5: FStStrNoPop var_90
  loc_A2BBC8: ConcatStr
  loc_A2BBC9: FStStrNoPop var_94
  loc_A2BBCC: LitStr " AND FechDect >= "
  loc_A2BBCF: ConcatStr
  loc_A2BBD0: FStStrNoPop var_98
  loc_A2BBD3: LitI4 1
  loc_A2BBD8: LitI4 1
  loc_A2BBDD: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_A2BBE2: FStVarCopyObj var_D0
  loc_A2BBE5: FLdRfVar var_D0
  loc_A2BBE8: FLdRfVar var_88
  loc_A2BBEB: CVarRef
  loc_A2BBF0: ImpAdCallI2 Format$(, )
  loc_A2BBF5: FStStrNoPop var_9C
  loc_A2BBF8: ConcatStr
  loc_A2BBF9: FStStrNoPop var_A0
  loc_A2BBFC: LitStr ";"
  loc_A2BBFF: ConcatStr
  loc_A2BC00: FStStrNoPop var_D4
  loc_A2BC03: Call EjecutarRsCls(from_stack_1v)
  loc_A2BC08: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A2BC19: FFree1Var var_D0 = ""
  loc_A2BC1C: LitStr "UPDATE paraconta"
  loc_A2BC1F: LitStr " SET FeproPaco = FedePaco"
  loc_A2BC22: ConcatStr
  loc_A2BC23: FStStrNoPop var_8C
  loc_A2BC26: LitStr " WHERE PeriInfo = "
  loc_A2BC29: ConcatStr
  loc_A2BC2A: FStStrNoPop var_90
  loc_A2BC2D: FLdI2 PeriInfo
  loc_A2BC30: CStrUI1
  loc_A2BC32: FStStrNoPop var_94
  loc_A2BC35: ConcatStr
  loc_A2BC36: FStStrNoPop var_98
  loc_A2BC39: LitStr ";"
  loc_A2BC3C: ConcatStr
  loc_A2BC3D: FStStrNoPop var_9C
  loc_A2BC40: Call EjecutarRsCls(from_stack_1v)
  loc_A2BC45: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A2BC52: LitStr "COMMIT;"
  loc_A2BC55: Call EjecutarRsCls(from_stack_1v)
  loc_A2BC5A: ExitProcHresult
  loc_A2BC5B: LitStr "ROLLBACK;"
  loc_A2BC5E: Call EjecutarRsCls(from_stack_1v)
  loc_A2BC63: LitI4 0
  loc_A2BC68: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_A2BC6B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A2BC70: ExitProcHresult
End Sub

Public Sub ReordenarAsientos(PeriInfo) 'A4378C
  'Data Table: 4204A8
  loc_A435B8: FLdI2 PeriInfo
  loc_A435BB: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_A435C0: FStStr var_88
  loc_A435C3: OnErrorGoto loc_A43776
  loc_A435C6: LitStr "START TRANSACTION;"
  loc_A435C9: Call EjecutarRsCls(from_stack_1v)
  loc_A435CE: LitStr "SET @NumeAsie:=0;"
  loc_A435D1: LitStr " DROP TEMPORARY TABLE IF EXISTS tasie;"
  loc_A435D4: ConcatStr
  loc_A435D5: FStStrNoPop var_8C
  loc_A435D8: LitStr " DROP TEMPORARY TABLE IF EXISTS tmoviasie;"
  loc_A435DB: ConcatStr
  loc_A435DC: FStStrNoPop var_90
  loc_A435DF: LitStr " CREATE TEMPORARY TABLE tasie"
  loc_A435E2: ConcatStr
  loc_A435E3: FStStrNoPop var_94
  loc_A435E6: LitStr " SELECT *, CodiAsie AS CodiNuevo, @NumeAsie:=CodiAsie NumeAsie_CodiAsie"
  loc_A435E9: ConcatStr
  loc_A435EA: FStStrNoPop var_98
  loc_A435ED: LitStr " FROM asiento"
  loc_A435F0: ConcatStr
  loc_A435F1: FStStrNoPop var_9C
  loc_A435F4: LitStr " WHERE asiento.PeriInfo = "
  loc_A435F7: ConcatStr
  loc_A435F8: FStStrNoPop var_A0
  loc_A435FB: FLdI2 PeriInfo
  loc_A435FE: CStrUI1
  loc_A43600: FStStrNoPop var_A4
  loc_A43603: ConcatStr
  loc_A43604: FStStrNoPop var_A8
  loc_A43607: LitStr " AND FechAsie <= "
  loc_A4360A: ConcatStr
  loc_A4360B: FStStrNoPop var_DC
  loc_A4360E: LitI4 1
  loc_A43613: LitI4 1
  loc_A43618: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_A4361D: FStVarCopyObj var_D8
  loc_A43620: FLdRfVar var_D8
  loc_A43623: FLdRfVar var_88
  loc_A43626: CVarRef
  loc_A4362B: ImpAdCallI2 Format$(, )
  loc_A43630: FStStrNoPop var_E0
  loc_A43633: ConcatStr
  loc_A43634: FStStrNoPop var_E4
  loc_A43637: LitStr ";"
  loc_A4363A: ConcatStr
  loc_A4363B: FStStrNoPop var_E8
  loc_A4363E: LitStr " INSERT INTO tasie (PeriInfo,CodiAsie,FechAsie,CodiTias,DetaAsie,NoleAsie,MinuAsie,AltaUsua,AltaFeho,CodiNuevo,NumeAsie_CodiAsie)"
  loc_A43641: ConcatStr
  loc_A43642: FStStrNoPop var_EC
  loc_A43645: LitStr " SELECT PeriInfo, CodiAsie, FechAsie, CodiTias, DetaAsie, NoleAsie, MinuAsie, AltaUsua, AltaFeho, @NumeAsie:=@NumeAsie+1 AS CodiNuevo, 0 NumeAsie_CodiAsie"
  loc_A43648: ConcatStr
  loc_A43649: FStStrNoPop var_F0
  loc_A4364C: LitStr " FROM asiento"
  loc_A4364F: ConcatStr
  loc_A43650: FStStrNoPop var_F4
  loc_A43653: LitStr " WHERE asiento.PeriInfo = "
  loc_A43656: ConcatStr
  loc_A43657: FStStrNoPop var_F8
  loc_A4365A: FLdI2 PeriInfo
  loc_A4365D: CStrUI1
  loc_A4365F: FStStrNoPop var_FC
  loc_A43662: ConcatStr
  loc_A43663: FStStrNoPop var_100
  loc_A43666: LitStr " AND FechAsie > "
  loc_A43669: ConcatStr
  loc_A4366A: FStStrNoPop var_134
  loc_A4366D: LitI4 1
  loc_A43672: LitI4 1
  loc_A43677: LitVarStr var_120, "'yyyy-mm-dd'"
  loc_A4367C: FStVarCopyObj var_130
  loc_A4367F: FLdRfVar var_130
  loc_A43682: FLdRfVar var_88
  loc_A43685: CVarRef
  loc_A4368A: ImpAdCallI2 Format$(, )
  loc_A4368F: FStStrNoPop var_138
  loc_A43692: ConcatStr
  loc_A43693: FStStrNoPop var_13C
  loc_A43696: LitStr " ORDER BY FechAsie, CodiAsie;"
  loc_A43699: ConcatStr
  loc_A4369A: FStStrNoPop var_140
  loc_A4369D: LitStr " CREATE TEMPORARY TABLE tmoviasie"
  loc_A436A0: ConcatStr
  loc_A436A1: FStStrNoPop var_144
  loc_A436A4: LitStr " SELECT mv.PeriInfo, CodiNuevo AS CodiAsie, CodiMoas, CodiCuco, DebeMoas, HabeMoas, mv.AltaUsua, mv.AltaFeho"
  loc_A436A7: ConcatStr
  loc_A436A8: FStStrNoPop var_148
  loc_A436AB: LitStr " FROM tasie"
  loc_A436AE: ConcatStr
  loc_A436AF: FStStrNoPop var_14C
  loc_A436B2: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = tasie.PeriInfo AND mv.CodiAsie = tasie.CodiAsie;"
  loc_A436B5: ConcatStr
  loc_A436B6: FStStrNoPop var_150
  loc_A436B9: LitStr " DELETE FROM moviasiento WHERE PeriInfo = "
  loc_A436BC: ConcatStr
  loc_A436BD: FStStrNoPop var_154
  loc_A436C0: FLdI2 PeriInfo
  loc_A436C3: CStrUI1
  loc_A436C5: FStStrNoPop var_158
  loc_A436C8: ConcatStr
  loc_A436C9: FStStrNoPop var_15C
  loc_A436CC: LitStr ";"
  loc_A436CF: ConcatStr
  loc_A436D0: FStStrNoPop var_160
  loc_A436D3: LitStr " INSERT INTO moviasiento (PeriInfo,CodiAsie,CodiMoas,CodiCuco,DebeMoas,HabeMoas,AltaUsua,AltaFeho)"
  loc_A436D6: ConcatStr
  loc_A436D7: FStStrNoPop var_164
  loc_A436DA: LitStr " SELECT * FROM tmoviasie;"
  loc_A436DD: ConcatStr
  loc_A436DE: FStStrNoPop var_168
  loc_A436E1: LitStr " DELETE FROM asiento WHERE PeriInfo = "
  loc_A436E4: ConcatStr
  loc_A436E5: FStStrNoPop var_16C
  loc_A436E8: FLdI2 PeriInfo
  loc_A436EB: CStrUI1
  loc_A436ED: FStStrNoPop var_170
  loc_A436F0: ConcatStr
  loc_A436F1: FStStrNoPop var_174
  loc_A436F4: LitStr ";"
  loc_A436F7: ConcatStr
  loc_A436F8: FStStrNoPop var_178
  loc_A436FB: LitStr " INSERT INTO asiento (PeriInfo,CodiAsie,FechAsie,CodiTias,DetaAsie,NoleAsie,MinuAsie,AltaUsua,AltaFeho)"
  loc_A436FE: ConcatStr
  loc_A436FF: FStStrNoPop var_17C
  loc_A43702: LitStr " SELECT PeriInfo, CodiNuevo AS CodiAsie, FechAsie, CodiTias, DetaAsie, NoleAsie, MinuAsie, AltaUsua, AltaFeho"
  loc_A43705: ConcatStr
  loc_A43706: FStStrNoPop var_180
  loc_A43709: LitStr " FROM tasie;"
  loc_A4370C: ConcatStr
  loc_A4370D: FStStrNoPop var_184
  loc_A43710: Call EjecutarRsCls(from_stack_1v)
  loc_A43715: FFreeStr var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_A43766: FFreeVar var_D8 = ""
  loc_A4376D: LitStr "COMMIT;"
  loc_A43770: Call EjecutarRsCls(from_stack_1v)
  loc_A43775: ExitProcHresult
  loc_A43776: LitStr "ROLLBACK;"
  loc_A43779: Call EjecutarRsCls(from_stack_1v)
  loc_A4377E: LitI4 0
  loc_A43783: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_A43786: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A4378B: ExitProcHresult
End Sub

Public Sub ReordenarImputaciones(PeriInfo, formABM) 'A3EE84
  'Data Table: 4204A8
  loc_A3EC78: FLdI2 PeriInfo
  loc_A3EC7B: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_A3EC80: FStStr var_88
  loc_A3EC83: OnErrorGoto loc_A3EE6D
  loc_A3EC86: LitVarI2 var_98, 0
  loc_A3EC8B: PopAdLdVar
  loc_A3EC8C: ILdPr
  loc_A3EC8F: LateMemLdVar
  loc_A3EC94: VarLateMemSt .Min
  loc_A3EC98: FFree1Var var_B8 = ""
  loc_A3EC9B: LitVarI2 var_98, 4
  loc_A3ECA0: PopAdLdVar
  loc_A3ECA1: ILdPr
  loc_A3ECA4: LateMemLdVar
  loc_A3ECA9: VarLateMemSt .Max
  loc_A3ECAD: FFree1Var var_B8 = ""
  loc_A3ECB0: LitVarI2 var_98, 1
  loc_A3ECB5: PopAdLdVar
  loc_A3ECB6: ILdPr
  loc_A3ECB9: LateMemLdVar
  loc_A3ECBE: VarLateMemSt .value
  loc_A3ECC2: FFree1Var var_B8 = ""
  loc_A3ECC5: LitStr "START TRANSACTION;"
  loc_A3ECC8: Call EjecutarRsCls(from_stack_1v)
  loc_A3ECCD: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_A3ECD0: LitStr " CREATE TEMPORARY TABLE tmovi ("
  loc_A3ECD3: ConcatStr
  loc_A3ECD4: FStStrNoPop var_BC
  loc_A3ECD7: LitStr "   ewNumeImpu` mediumint(7) unsigned NOT NULL DEFAULT '0',"
  loc_A3ECDA: ConcatStr
  loc_A3ECDB: FStStrNoPop var_C0
  loc_A3ECDE: LitStr "   eriInfo` year(4) NOT NULL DEFAULT '0000',"
  loc_A3ECE1: ConcatStr
  loc_A3ECE2: FStStrNoPop var_C4
  loc_A3ECE5: LitStr "   dImpu` mediumint(7) unsigned NOT NULL DEFAULT '0',"
  loc_A3ECE8: ConcatStr
  loc_A3ECE9: FStStrNoPop var_C8
  loc_A3ECEC: LitStr "   etCodiPart` varchar(8) NOT NULL DEFAULT '',"
  loc_A3ECEF: ConcatStr
  loc_A3ECF0: FStStrNoPop var_CC
  loc_A3ECF3: LitStr "   etCodiOrga` varchar(7) NOT NULL DEFAULT '',"
  loc_A3ECF6: ConcatStr
  loc_A3ECF7: FStStrNoPop var_D0
  loc_A3ECFA: LitStr "   PRIMARY KEY (eriInfo`,`IdImpu`)"
  loc_A3ECFD: ConcatStr
  loc_A3ECFE: FStStrNoPop var_D4
  loc_A3ED01: LitStr " );"
  loc_A3ED04: ConcatStr
  loc_A3ED05: FStStrNoPop var_D8
  loc_A3ED08: Call EjecutarRsCls(from_stack_1v)
  loc_A3ED0D: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_A3ED20: LitVarI2 var_98, 2
  loc_A3ED25: PopAdLdVar
  loc_A3ED26: ILdPr
  loc_A3ED29: LateMemLdVar
  loc_A3ED2E: VarLateMemSt .value
  loc_A3ED32: FFree1Var var_B8 = ""
  loc_A3ED35: LitStr "SET @numeimpu=0, @codipart='', @codiorga='';"
  loc_A3ED38: LitStr "INSERT INTO tmovi"
  loc_A3ED3B: ConcatStr
  loc_A3ED3C: FStStrNoPop var_BC
  loc_A3ED3F: LitStr " SELECT @numeimpu:= IFNULL( IF(@codipart=CodiPart AND @codiorga=CodiOrga,@numeimpu+1,(SELECT MAX(NumeImpu)+1 FROM imputacion ii WHERE ii.PeriInfo = i.PeriInfo AND ii.CodiPart = i.CodiPart AND ii.CodiOrga = i.CodiOrga AND FechImpu <= "
  loc_A3ED42: ConcatStr
  loc_A3ED43: FStStrNoPop var_C0
  loc_A3ED46: LitI4 1
  loc_A3ED4B: LitI4 1
  loc_A3ED50: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_A3ED55: FStVarCopyObj var_B8
  loc_A3ED58: FLdRfVar var_B8
  loc_A3ED5B: FLdRfVar var_88
  loc_A3ED5E: CVarRef
  loc_A3ED63: ImpAdCallI2 Format$(, )
  loc_A3ED68: FStStrNoPop var_C4
  loc_A3ED6B: ConcatStr
  loc_A3ED6C: FStStrNoPop var_C8
  loc_A3ED6F: LitStr ")) , 1) newNumeImpu"
  loc_A3ED72: ConcatStr
  loc_A3ED73: FStStrNoPop var_CC
  loc_A3ED76: LitStr " , Periinfo, IdImpu"
  loc_A3ED79: ConcatStr
  loc_A3ED7A: FStStrNoPop var_D0
  loc_A3ED7D: LitStr " , @codipart:=CodiPart setCodiPart, @codiorga:=CodiOrga setCodiOrga"
  loc_A3ED80: ConcatStr
  loc_A3ED81: FStStrNoPop var_D4
  loc_A3ED84: LitStr " FROM imputacion i"
  loc_A3ED87: ConcatStr
  loc_A3ED88: FStStrNoPop var_D8
  loc_A3ED8B: LitStr " WHERE PeriInfo = "
  loc_A3ED8E: ConcatStr
  loc_A3ED8F: FStStrNoPop var_DC
  loc_A3ED92: FLdI2 PeriInfo
  loc_A3ED95: CStrUI1
  loc_A3ED97: FStStrNoPop var_E0
  loc_A3ED9A: ConcatStr
  loc_A3ED9B: FStStrNoPop var_E4
  loc_A3ED9E: LitStr " AND FechImpu > "
  loc_A3EDA1: ConcatStr
  loc_A3EDA2: FStStrNoPop var_118
  loc_A3EDA5: LitI4 1
  loc_A3EDAA: LitI4 1
  loc_A3EDAF: LitVarStr var_104, "'yyyy-mm-dd'"
  loc_A3EDB4: FStVarCopyObj var_114
  loc_A3EDB7: FLdRfVar var_114
  loc_A3EDBA: FLdRfVar var_88
  loc_A3EDBD: CVarRef
  loc_A3EDC2: ImpAdCallI2 Format$(, )
  loc_A3EDC7: FStStrNoPop var_11C
  loc_A3EDCA: ConcatStr
  loc_A3EDCB: FStStrNoPop var_120
  loc_A3EDCE: LitStr " AND LiquImpu = 0"
  loc_A3EDD1: ConcatStr
  loc_A3EDD2: FStStrNoPop var_124
  loc_A3EDD5: LitStr " ORDER BY CodiPart, CodiOrga, FechImpu"
  loc_A3EDD8: ConcatStr
  loc_A3EDD9: FStStrNoPop var_128
  loc_A3EDDC: LitStr " , PrevImpu>0 DESC, DefiImpu>0 DESC, DeveImpu>0 DESC, MapaImpu>0 DESC, PagaImpu>0 DESC"
  loc_A3EDDF: ConcatStr
  loc_A3EDE0: FStStrNoPop var_12C
  loc_A3EDE3: LitStr " , PrevImpu<0, DefiImpu<0, DeveImpu<0, MapaImpu<0, PagaImpu<0;"
  loc_A3EDE6: ConcatStr
  loc_A3EDE7: FStStrNoPop var_130
  loc_A3EDEA: Call EjecutarRsCls(from_stack_1v)
  loc_A3EDEF: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_A3EE16: FFreeVar var_B8 = ""
  loc_A3EE1D: LitVarI2 var_98, 3
  loc_A3EE22: PopAdLdVar
  loc_A3EE23: ILdPr
  loc_A3EE26: LateMemLdVar
  loc_A3EE2B: VarLateMemSt .value
  loc_A3EE2F: FFree1Var var_B8 = ""
  loc_A3EE32: LitStr "UPDATE tmovi"
  loc_A3EE35: LitStr " INNER JOIN imputacion i ON i.PeriInfo = tmovi.PeriInfo AND i.IdImpu = tmovi.IdImpu"
  loc_A3EE38: ConcatStr
  loc_A3EE39: FStStrNoPop var_BC
  loc_A3EE3C: LitStr " SET i.NumeImpu = tmovi.newNumeImpu;"
  loc_A3EE3F: ConcatStr
  loc_A3EE40: FStStrNoPop var_C0
  loc_A3EE43: Call EjecutarRsCls(from_stack_1v)
  loc_A3EE48: FFreeStr var_BC = ""
  loc_A3EE4F: LitVarI2 var_98, 4
  loc_A3EE54: PopAdLdVar
  loc_A3EE55: ILdPr
  loc_A3EE58: LateMemLdVar
  loc_A3EE5D: VarLateMemSt .value
  loc_A3EE61: FFree1Var var_B8 = ""
  loc_A3EE64: LitStr "COMMIT;"
  loc_A3EE67: Call EjecutarRsCls(from_stack_1v)
  loc_A3EE6C: ExitProcHresult
  loc_A3EE6D: LitStr "ROLLBACK;"
  loc_A3EE70: Call EjecutarRsCls(from_stack_1v)
  loc_A3EE75: LitI4 0
  loc_A3EE7A: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_A3EE7D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A3EE82: ExitProcHresult
  loc_A3EE83: ConcatStr
End Sub

Public Sub ActualizaFechAsie(FechAsie) '9E52A4
  'Data Table: 4204A8
  loc_9E51BC: ILdRf FechAsie
  loc_9E51BF: FStStrCopy var_88
  loc_9E51C2: LitStr "UPDATE asiento"
  loc_9E51C5: LitStr " SET FechAsie = "
  loc_9E51C8: ConcatStr
  loc_9E51C9: FStStrNoPop var_BC
  loc_9E51CC: LitI4 1
  loc_9E51D1: LitI4 1
  loc_9E51D6: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_9E51DB: FStVarCopyObj var_B8
  loc_9E51DE: FLdRfVar var_B8
  loc_9E51E1: FLdRfVar var_88
  loc_9E51E4: CVarRef
  loc_9E51E9: ImpAdCallI2 Format$(, )
  loc_9E51EE: FStStrNoPop var_C0
  loc_9E51F1: ConcatStr
  loc_9E51F2: FStStrNoPop var_C4
  loc_9E51F5: LitStr ", ModiUsua=@sUsuario, ModiFeho=Now()"
  loc_9E51F8: ConcatStr
  loc_9E51F9: FStStrNoPop var_C8
  loc_9E51FC: LitStr " WHERE PeriInfo = "
  loc_9E51FF: ConcatStr
  loc_9E5200: CVarStr var_100
  loc_9E5203: FLdRfVar var_F0
  loc_9E5206: FLdRfVar var_E0
  loc_9E5209: LitVarStr var_DC, "PeriInfo"
  loc_9E520E: PopAdLdVar
  loc_9E520F: FLdRfVar var_CC
  loc_9E5212: FLdPr Me
  loc_9E5215: MemLdPr RsFrm
  loc_9E5218:  = Me.Fields
  loc_9E521D: FLdPr var_CC
  loc_9E5220: from_stack_2 = Me.Item(from_stack_1)
  loc_9E5225: FLdPr var_E0
  loc_9E5228:  = Me.Value
  loc_9E522D: FLdRfVar var_F0
  loc_9E5230: ConcatVar var_110
  loc_9E5234: LitVarStr var_120, " AND CodiAsie = "
  loc_9E5239: ConcatVar var_130
  loc_9E523D: FLdRfVar var_158
  loc_9E5240: FLdRfVar var_148
  loc_9E5243: LitVarStr var_144, "CodiAsie"
  loc_9E5248: PopAdLdVar
  loc_9E5249: FLdRfVar var_134
  loc_9E524C: FLdPr Me
  loc_9E524F: MemLdPr RsFrm
  loc_9E5252:  = Me.Fields
  loc_9E5257: FLdPr var_134
  loc_9E525A: from_stack_2 = Me.Item(from_stack_1)
  loc_9E525F: FLdPr var_148
  loc_9E5262:  = Me.Value
  loc_9E5267: FLdRfVar var_158
  loc_9E526A: ConcatVar var_168
  loc_9E526E: CStrVarVal var_16C
  loc_9E5272: Call EjecutarRsCls(from_stack_1v)
  loc_9E5277: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_9E5284: FFreeAd var_CC = "": var_E0 = "": var_134 = ""
  loc_9E528F: FFreeVar var_B8 = "": var_100 = "": var_F0 = "": var_110 = "": var_130 = "": var_158 = ""
  loc_9E52A0: ExitProcHresult
End Sub

Public Sub ActualizaMinuAsie(MinuAsie) '9C6CC8
  'Data Table: 4204A8
  loc_9C6C18: ILdRf MinuAsie
  loc_9C6C1B: FStStrCopy var_88
  loc_9C6C1E: LitStr "UPDATE asiento SET MinuAsie = '"
  loc_9C6C21: ILdRf var_88
  loc_9C6C24: ConcatStr
  loc_9C6C25: FStStrNoPop var_8C
  loc_9C6C28: LitStr "' WHERE PeriInfo = "
  loc_9C6C2B: ConcatStr
  loc_9C6C2C: CVarStr var_C4
  loc_9C6C2F: FLdRfVar var_B4
  loc_9C6C32: FLdRfVar var_A4
  loc_9C6C35: LitVarStr var_A0, "PeriInfo"
  loc_9C6C3A: PopAdLdVar
  loc_9C6C3B: FLdRfVar var_90
  loc_9C6C3E: FLdPr Me
  loc_9C6C41: MemLdPr RsFrm
  loc_9C6C44:  = Me.Fields
  loc_9C6C49: FLdPr var_90
  loc_9C6C4C: from_stack_2 = Me.Item(from_stack_1)
  loc_9C6C51: FLdPr var_A4
  loc_9C6C54:  = Me.Value
  loc_9C6C59: FLdRfVar var_B4
  loc_9C6C5C: ConcatVar var_D4
  loc_9C6C60: LitVarStr var_E4, " AND CodiAsie = "
  loc_9C6C65: ConcatVar var_F4
  loc_9C6C69: FLdRfVar var_11C
  loc_9C6C6C: FLdRfVar var_10C
  loc_9C6C6F: LitVarStr var_108, "CodiAsie"
  loc_9C6C74: PopAdLdVar
  loc_9C6C75: FLdRfVar var_F8
  loc_9C6C78: FLdPr Me
  loc_9C6C7B: MemLdPr RsFrm
  loc_9C6C7E:  = Me.Fields
  loc_9C6C83: FLdPr var_F8
  loc_9C6C86: from_stack_2 = Me.Item(from_stack_1)
  loc_9C6C8B: FLdPr var_10C
  loc_9C6C8E:  = Me.Value
  loc_9C6C93: FLdRfVar var_11C
  loc_9C6C96: ConcatVar var_12C
  loc_9C6C9A: CStrVarVal var_130
  loc_9C6C9E: Call EjecutarRsCls(from_stack_1v)
  loc_9C6CA3: FFreeStr var_8C = ""
  loc_9C6CAA: FFreeAd var_90 = "": var_A4 = "": var_F8 = ""
  loc_9C6CB5: FFreeVar var_C4 = "": var_B4 = "": var_D4 = "": var_F4 = "": var_11C = ""
  loc_9C6CC4: ExitProcHresult
  loc_9C6CC5: ILdI4 arg_0
End Sub

Public Sub DeleteMoviAsientos() '9B6B64
  'Data Table: 4204A8
  loc_9B6ACC: LitVarStr var_BC, "DELETE FROM moviasiento WHERE PeriInfo = "
  loc_9B6AD1: FLdRfVar var_AC
  loc_9B6AD4: FLdRfVar var_9C
  loc_9B6AD7: LitVarStr var_98, "PeriInfo"
  loc_9B6ADC: PopAdLdVar
  loc_9B6ADD: FLdRfVar var_88
  loc_9B6AE0: FLdPr Me
  loc_9B6AE3: MemLdPr RsFrm
  loc_9B6AE6:  = Me.Fields
  loc_9B6AEB: FLdPr var_88
  loc_9B6AEE: from_stack_2 = Me.Item(from_stack_1)
  loc_9B6AF3: FLdPr var_9C
  loc_9B6AF6:  = Me.Value
  loc_9B6AFB: FLdRfVar var_AC
  loc_9B6AFE: ConcatVar var_CC
  loc_9B6B02: LitVarStr var_DC, " AND CodiAsie = "
  loc_9B6B07: ConcatVar var_EC
  loc_9B6B0B: FLdRfVar var_114
  loc_9B6B0E: FLdRfVar var_104
  loc_9B6B11: LitVarStr var_100, "CodiAsie"
  loc_9B6B16: PopAdLdVar
  loc_9B6B17: FLdRfVar var_F0
  loc_9B6B1A: FLdPr Me
  loc_9B6B1D: MemLdPr RsFrm
  loc_9B6B20:  = Me.Fields
  loc_9B6B25: FLdPr var_F0
  loc_9B6B28: from_stack_2 = Me.Item(from_stack_1)
  loc_9B6B2D: FLdPr var_104
  loc_9B6B30:  = Me.Value
  loc_9B6B35: FLdRfVar var_114
  loc_9B6B38: ConcatVar var_124
  loc_9B6B3C: CStrVarVal var_128
  loc_9B6B40: Call EjecutarRsCls(from_stack_1v)
  loc_9B6B45: FFree1Str var_128
  loc_9B6B48: FFreeAd var_88 = "": var_9C = "": var_F0 = ""
  loc_9B6B53: FFreeVar var_AC = "": var_CC = "": var_EC = "": var_114 = ""
  loc_9B6B60: ExitProcHresult
End Sub

Public Function ValidaAsientoAutomatico(PeriInfo, Mes) '9AD720
  'Data Table: 4204A8
  loc_9AD69C: ZeroRetVal
  loc_9AD69E: LitStr "SELECT *"
  loc_9AD6A1: LitStr " FROM asiento"
  loc_9AD6A4: ConcatStr
  loc_9AD6A5: FStStrNoPop var_8C
  loc_9AD6A8: LitStr " LEFT JOIN tipoasiento ON tipoasiento.CodiTias = asiento.CodiTias"
  loc_9AD6AB: ConcatStr
  loc_9AD6AC: FStStrNoPop var_90
  loc_9AD6AF: LitStr " WHERE PeriInfo = "
  loc_9AD6B2: ConcatStr
  loc_9AD6B3: FStStrNoPop ValidaAsientoAutomatico
  loc_9AD6B6: FLdI2 PeriInfo
  loc_9AD6B9: CStrUI1
  loc_9AD6BB: FStStrNoPop var_98
  loc_9AD6BE: ConcatStr
  loc_9AD6BF: FStStrNoPop var_9C
  loc_9AD6C2: LitStr " AND MONTH(FechAsie) = "
  loc_9AD6C5: ConcatStr
  loc_9AD6C6: FStStrNoPop var_A0
  loc_9AD6C9: FLdUI1
  loc_9AD6CD: CStrI2
  loc_9AD6CF: FStStrNoPop var_A4
  loc_9AD6D2: ConcatStr
  loc_9AD6D3: FStStrNoPop var_A8
  loc_9AD6D6: LitStr " AND FijoTias = 1"
  loc_9AD6D9: ConcatStr
  loc_9AD6DA: FStStrNoPop var_AC
  loc_9AD6DD: Call EjecutarRsCls(from_stack_1v)
  loc_9AD6E2: FFreeStr var_8C = "": var_90 = "": ValidaAsientoAutomatico = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9AD6F7: FLdRfVar var_B0
  loc_9AD6FA: FLdPr Me
  loc_9AD6FD: MemLdPr global_56
  loc_9AD700:  = Me.RecordCount
  loc_9AD705: ILdRf var_B0
  loc_9AD708: LitI4 0
  loc_9AD70D: EqI4
  loc_9AD70E: BranchF loc_9AD717
  loc_9AD711: LitStr "Falta generar los asientos automáticos para el mes solicitado. Verifique..."
  loc_9AD714: FStStrCopy var_88
  loc_9AD717: ExitProcCbHresult
  loc_9AD71F: Ary1LdRf
End Function

Public Function ControlesMensuales(PeriInfo, Fecha) '9CA76C
  'Data Table: 4204A8
  loc_9CA6B4: ILdRf Fecha
  loc_9CA6B7: FStStrCopy var_8C
  loc_9CA6BA: ZeroRetVal
  loc_9CA6BC: LitStr "SELECT detactrl.*, DetaCtrl, ErroCtrl"
  loc_9CA6BF: LitStr " FROM detactrl"
  loc_9CA6C2: ConcatStr
  loc_9CA6C3: FStStrNoPop var_90
  loc_9CA6C6: LitStr " INNER JOIN ctrl ON ctrl.CodiCtrl = detactrl.CodiCtrl AND ctrl.ErroCtrl = 1"
  loc_9CA6C9: ConcatStr
  loc_9CA6CA: FStStrNoPop ControlesMensuales
  loc_9CA6CD: LitStr " WHERE detactrl.PeriInfo = "
  loc_9CA6D0: ConcatStr
  loc_9CA6D1: FStStrNoPop var_98
  loc_9CA6D4: FLdI2 PeriInfo
  loc_9CA6D7: CStrUI1
  loc_9CA6D9: FStStrNoPop var_9C
  loc_9CA6DC: ConcatStr
  loc_9CA6DD: FStStrNoPop var_A0
  loc_9CA6E0: LitStr vbNullString
  loc_9CA6E3: ConcatStr
  loc_9CA6E4: FStStrNoPop var_A4
  loc_9CA6E7: LitStr " AND detactrl.FechDect > "
  loc_9CA6EA: ConcatStr
  loc_9CA6EB: FStStrNoPop var_D8
  loc_9CA6EE: LitI4 1
  loc_9CA6F3: LitI4 1
  loc_9CA6F8: LitVarStr var_C4, "'yyyy-mm-dd'"
  loc_9CA6FD: FStVarCopyObj var_D4
  loc_9CA700: FLdRfVar var_D4
  loc_9CA703: FLdRfVar var_8C
  loc_9CA706: CVarRef
  loc_9CA70B: ImpAdCallI2 Format$(, )
  loc_9CA710: FStStrNoPop var_DC
  loc_9CA713: ConcatStr
  loc_9CA714: FStStrNoPop var_E0
  loc_9CA717: LitStr " AND detactrl.TituDect = 1"
  loc_9CA71A: ConcatStr
  loc_9CA71B: FStStrNoPop var_E4
  loc_9CA71E: LitStr " AND Imp1Dect <> Imp2Dect"
  loc_9CA721: ConcatStr
  loc_9CA722: FStStrNoPop var_E8
  loc_9CA725: Call EjecutarRsCls(from_stack_1v)
  loc_9CA72A: FFreeStr var_90 = "": ControlesMensuales = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_9CA743: FFree1Var var_D4 = ""
  loc_9CA746: FLdRfVar var_EC
  loc_9CA749: FLdPr Me
  loc_9CA74C: MemLdPr global_56
  loc_9CA74F:  = Me.RecordCount
  loc_9CA754: ILdRf var_EC
  loc_9CA757: LitI4 0
  loc_9CA75C: GtI4
  loc_9CA75D: BranchF loc_9CA766
  loc_9CA760: LitStr "El Balance tiene errores. Consulte con el Administrador..."
  loc_9CA763: FStStrCopy var_88
  loc_9CA766: ExitProcCbHresult
End Function

Public Function NormasLegales(PeriInfo, Mes, CodiCuco) 'A18024
  'Data Table: 4204A8
  loc_A17ED8: ILdRf CodiCuco
  loc_A17EDB: FStStrCopy var_8C
  loc_A17EDE: ZeroRetVal
  loc_A17EE0: LitStr "SELECT DISTINCT NoleAsie"
  loc_A17EE3: LitStr " FROM moviasiento"
  loc_A17EE6: ConcatStr
  loc_A17EE7: FStStrNoPop var_90
  loc_A17EEA: LitStr " INNER JOIN asiento ON asiento.PeriInfo = moviasiento.PeriInfo AND asiento.CodiAsie = moviasiento.CodiAsie"
  loc_A17EED: ConcatStr
  loc_A17EEE: FStStrNoPop NormasLegales
  loc_A17EF1: LitStr " WHERE moviasiento.PeriInfo = "
  loc_A17EF4: ConcatStr
  loc_A17EF5: FStStrNoPop var_98
  loc_A17EF8: FLdI2 PeriInfo
  loc_A17EFB: CStrUI1
  loc_A17EFD: FStStrNoPop var_9C
  loc_A17F00: ConcatStr
  loc_A17F01: FStStrNoPop var_A0
  loc_A17F04: LitStr " AND Month(FechAsie) <= "
  loc_A17F07: ConcatStr
  loc_A17F08: FStStrNoPop var_A4
  loc_A17F0B: FLdUI1
  loc_A17F0F: CStrI2
  loc_A17F11: FStStrNoPop var_A8
  loc_A17F14: ConcatStr
  loc_A17F15: FStStrNoPop var_AC
  loc_A17F18: LitStr " AND CodiCuco = '"
  loc_A17F1B: ConcatStr
  loc_A17F1C: FStStrNoPop var_B0
  loc_A17F1F: ILdRf var_8C
  loc_A17F22: ConcatStr
  loc_A17F23: FStStrNoPop var_B4
  loc_A17F26: LitStr "'"
  loc_A17F29: ConcatStr
  loc_A17F2A: FStStrNoPop var_B8
  loc_A17F2D: LitStr " AND CodiTias IN(7,8)"
  loc_A17F30: ConcatStr
  loc_A17F31: FStStrNoPop var_BC
  loc_A17F34: Call EjecutarRsCls(from_stack_1v)
  loc_A17F39: FFreeStr var_90 = "": NormasLegales = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A17F54: FLdPr Me
  loc_A17F57: MemLdStr global_56
  loc_A17F5A: FStAd var_C0 
  loc_A17F5E: FLdRfVar var_C4
  loc_A17F61: FLdPr var_C0
  loc_A17F64:  = Me.RecordCount
  loc_A17F69: ILdRf var_C4
  loc_A17F6C: LitI4 0
  loc_A17F71: GtI4
  loc_A17F72: BranchF loc_A18011
  loc_A17F75: LitI2_Byte 1
  loc_A17F77: FLdRfVar var_C6
  loc_A17F7A: FLdRfVar var_C4
  loc_A17F7D: FLdPr var_C0
  loc_A17F80:  = Me.RecordCount
  loc_A17F85: ILdRf var_C4
  loc_A17F88: CI2I4
  loc_A17F89: ForI2 var_D0
  loc_A17F8F: ILdRf var_CC
  loc_A17F92: CVarStr var_108
  loc_A17F95: FLdRfVar var_F8
  loc_A17F98: FLdRfVar var_E8
  loc_A17F9B: LitVarStr var_E4, "NoleAsie"
  loc_A17FA0: PopAdLdVar
  loc_A17FA1: FLdRfVar var_D4
  loc_A17FA4: FLdPr var_C0
  loc_A17FA7:  = Me.Fields
  loc_A17FAC: FLdPr var_D4
  loc_A17FAF: from_stack_2 = Me.Item(from_stack_1)
  loc_A17FB4: FLdPr var_E8
  loc_A17FB7:  = Me.Value
  loc_A17FBC: FLdRfVar var_F8
  loc_A17FBF: ConcatVar var_118
  loc_A17FC3: LitVarStr var_128, "<br>"
  loc_A17FC8: ConcatVar var_138
  loc_A17FCC: CStrVarTmp
  loc_A17FCD: FStStr var_CC
  loc_A17FD0: FFreeAd var_D4 = ""
  loc_A17FD7: FFreeVar var_F8 = "": var_118 = ""
  loc_A17FE0: LitVar_Missing var_E4
  loc_A17FE3: PopAdLdVar
  loc_A17FE4: LitI4 1
  loc_A17FE9: FLdPr var_C0
  loc_A17FEC: Me.Move from_stack_1, from_stack_2
  loc_A17FF1: FLdRfVar var_C6
  loc_A17FF4: NextI2 var_D0, loc_A17F8F
  loc_A17FF9: ILdRf var_CC
  loc_A17FFC: FnLenStr
  loc_A17FFD: LitI4 4
  loc_A18002: SubI4
  loc_A18003: ILdRf var_CC
  loc_A18006: ImpAdCallI2 Left$(, )
  loc_A1800B: FStStr var_88
  loc_A1800E: Branch loc_A18017
  loc_A18011: LitStr vbNullString
  loc_A18014: FStStrCopy var_88
  loc_A18017: LitNothing
  loc_A18019: FStAd var_C0 
  loc_A1801D: ExitProcCbHresult
End Function

Private Function Proc_1_38_972B3C() '972B3C
  'Data Table: 4204A8
  loc_972B18: LitStr "Primary"
  loc_972B1B: FLdPr Me
  loc_972B1E: LateIdLdVar var_94 DispID_4 0
  loc_972B25: CastAdVar Me
  loc_972B29: FStAdFunc var_98
  loc_972B2C: FLdPr var_98
  loc_972B34: FFree1Ad var_98
  loc_972B37: FFree1Var var_94 = ""
  loc_972B3A: ExitProcHresult
End Function

Private Function Proc_1_39_966FDC(arg_C) '966FDC
  'Data Table: 4204A8
  loc_966FC0: ILdI4 arg_C
  loc_966FC3: FStStrCopy var_88
  loc_966FC6: ILdRf var_88
  loc_966FC9: LitStr "Primary"
  loc_966FCC: EqStr
  loc_966FCE: BranchF loc_966FDB
  loc_966FD1: FLdPr Me
  loc_966FD4: MemLdStr RsFrm
  loc_966FD7: IStAd
  loc_966FDB: ExitProcHresult
End Function
