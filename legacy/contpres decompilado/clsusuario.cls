VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsusuario"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '41367C
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '41368B
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '41369A
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96D5D4
  'Data Table: 413408
  loc_96D5AC: FLdRfVar var_88
  loc_96D5AF: FLdPr Me
  loc_96D5B2: MemLdPr RsFrm
  loc_96D5B5:  = Me.RecordCount
  loc_96D5BA: ILdRf var_88
  loc_96D5BD: LitI4 0
  loc_96D5C2: GtI4
  loc_96D5C3: BranchF loc_96D5D1
  loc_96D5C6: FLdPr Me
  loc_96D5C9: MemLdPr RsFrm
  loc_96D5CC: Me.MoveFirst
  loc_96D5D1: ExitProcHresult
End Sub

Public Sub MoveLast() '96D684
  'Data Table: 413408
  loc_96D65C: FLdRfVar var_88
  loc_96D65F: FLdPr Me
  loc_96D662: MemLdPr RsFrm
  loc_96D665:  = Me.RecordCount
  loc_96D66A: ILdRf var_88
  loc_96D66D: LitI4 0
  loc_96D672: GtI4
  loc_96D673: BranchF loc_96D681
  loc_96D676: FLdPr Me
  loc_96D679: MemLdPr RsFrm
  loc_96D67C: Me.MoveLast
  loc_96D681: ExitProcHresult
End Sub

Public Sub MoveNext() '993A70
  'Data Table: 413408
  loc_993A10: FLdRfVar var_86
  loc_993A13: FLdPr Me
  loc_993A16: MemLdPr RsFrm
  loc_993A19:  = Me.EOF
  loc_993A1E: FLdI2 var_86
  loc_993A21: NotI4
  loc_993A22: BranchF loc_993A30
  loc_993A25: FLdPr Me
  loc_993A28: MemLdPr RsFrm
  loc_993A2B: Me.MoveNext
  loc_993A30: FLdRfVar var_86
  loc_993A33: FLdPr Me
  loc_993A36: MemLdPr RsFrm
  loc_993A39:  = Me.EOF
  loc_993A3E: FLdI2 var_86
  loc_993A41: FLdRfVar var_8C
  loc_993A44: FLdPr Me
  loc_993A47: MemLdPr RsFrm
  loc_993A4A:  = Me.RecordCount
  loc_993A4F: ILdRf var_8C
  loc_993A52: LitI4 0
  loc_993A57: GtI4
  loc_993A58: AndI4
  loc_993A59: BranchF loc_993A6C
  loc_993A5C: ImpAdCallFPR4 Beep()
  loc_993A61: FLdPr Me
  loc_993A64: MemLdPr RsFrm
  loc_993A67: Me.MoveLast
  loc_993A6C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9417B0
  'Data Table: 413408
  loc_9417A4: FLdPr Me
  loc_9417A7: MemLdPr RsFrm
  loc_9417AA: Me.MoveNext
  loc_9417AF: ExitProcHresult
End Sub

Public Sub MovePrevious() '994130
  'Data Table: 413408
  loc_9940D0: FLdRfVar var_86
  loc_9940D3: FLdPr Me
  loc_9940D6: MemLdPr RsFrm
  loc_9940D9:  = Me.BOF
  loc_9940DE: FLdI2 var_86
  loc_9940E1: NotI4
  loc_9940E2: BranchF loc_9940F0
  loc_9940E5: FLdPr Me
  loc_9940E8: MemLdPr RsFrm
  loc_9940EB: Me.MovePrevious
  loc_9940F0: FLdRfVar var_86
  loc_9940F3: FLdPr Me
  loc_9940F6: MemLdPr RsFrm
  loc_9940F9:  = Me.BOF
  loc_9940FE: FLdI2 var_86
  loc_994101: FLdRfVar var_8C
  loc_994104: FLdPr Me
  loc_994107: MemLdPr RsFrm
  loc_99410A:  = Me.RecordCount
  loc_99410F: ILdRf var_8C
  loc_994112: LitI4 0
  loc_994117: GtI4
  loc_994118: AndI4
  loc_994119: BranchF loc_99412C
  loc_99411C: ImpAdCallFPR4 Beep()
  loc_994121: FLdPr Me
  loc_994124: MemLdPr RsFrm
  loc_994127: Me.MoveFirst
  loc_99412C: ExitProcHresult
  loc_99412D: DOC
End Sub

Public Property Get EOF() '960160
  'Data Table: 413408
  loc_960144: FLdRfVar var_88
  loc_960147: FLdPr Me
  loc_96014A: MemLdPr RsFrm
  loc_96014D:  = Me.EOF
  loc_960152: FLdI2 var_88
  loc_960155: FStI2 var_86
  loc_960158: ExitProcCbHresult
End Sub

Public Property Get BOF() '95745C
  'Data Table: 413408
  loc_957440: FLdRfVar var_88
  loc_957443: FLdPr Me
  loc_957446: MemLdPr RsFrm
  loc_957449:  = Me.BOF
  loc_95744E: FLdI2 var_88
  loc_957451: FStI2 var_86
  loc_957454: ExitProcCbHresult
  loc_95745A: NewIfNullPr Me
End Sub

Public Sub Sort(sOrden) '9476C4
  'Data Table: 413408
  loc_9476B4: ILdI4 sOrden
  loc_9476B7: FLdPr Me
  loc_9476BA: MemLdPr RsFrm
  loc_9476BD: Me.Sort = from_stack_1
  loc_9476C2: ExitProcHresult
End Sub

Public Sub Find(sCriterio) '96A230
  'Data Table: 413408
  loc_96A210: LitVar_Missing var_94
  loc_96A213: PopAdLdVar
  loc_96A214: LitI4 1
  loc_96A219: LitI4 0
  loc_96A21E: ILdI4 sCriterio
  loc_96A221: FLdPr Me
  loc_96A224: MemLdPr RsFrm
  loc_96A227: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96A22C: ExitProcHresult
  loc_96A22D: Ary1StI2
  loc_96A22E: CI2I4
End Sub

Public Sub Filter(sCriterio) '94900C
  'Data Table: 413408
  loc_948FF8: ILdI4 sCriterio
  loc_948FFB: CVarStr var_94
  loc_948FFE: PopAdLdVar
  loc_948FFF: FLdPr Me
  loc_949002: MemLdPr RsFrm
  loc_949005: Me.Filter = from_stack_1
  loc_94900A: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '957378
  'Data Table: 413408
  loc_95735C: FLdRfVar var_8C
  loc_95735F: FLdPr Me
  loc_957362: MemLdPr RsFrm
  loc_957365:  = Me.AbsolutePosition
  loc_95736A: ILdRf var_8C
  loc_95736D: FStR4 var_88
  loc_957370: ExitProcCbHresult
  loc_957376: FLdRfVar var_7000
End Sub

Public Property Get RecordCount() '95732C
  'Data Table: 413408
  loc_957310: FLdRfVar var_8C
  loc_957313: FLdPr Me
  loc_957316: MemLdPr RsFrm
  loc_957319:  = Me.RecordCount
  loc_95731E: ILdRf var_8C
  loc_957321: FStR4 var_88
  loc_957324: ExitProcCbHresult
  loc_95732A: DOC
End Sub

Public Sub AddNew(CodiUsua, CucuPers, AcreUsua, CoenUsua, CosaUsua, UsmaUsua, ComaUsua, HaceRequery) 'A156D8
  'Data Table: 413408
  loc_A155A4: ILdRf CodiUsua
  loc_A155A7: FStStrCopy var_88
  loc_A155AA: ILdRf CucuPers
  loc_A155AD: FStStrCopy var_8C
  loc_A155B0: ILdRf CoenUsua
  loc_A155B3: FStStrCopy var_90
  loc_A155B6: ILdRf CosaUsua
  loc_A155B9: FStStrCopy var_94
  loc_A155BC: ILdRf UsmaUsua
  loc_A155BF: FStStrCopy var_98
  loc_A155C2: ILdRf ComaUsua
  loc_A155C5: FStStrCopy var_9C
  loc_A155C8: OnErrorGoto loc_A15686
  loc_A155CB: LitStr "INSERT INTO infogov.usuario (CodiUsua,CucuPers,ClavUsua,FeveUsua,AcreUsua,CoenUsua,CosaUsua,UsmaUsua,ComaUsua,AltaUsua)"
  loc_A155CE: LitStr " VALUES ('"
  loc_A155D1: ConcatStr
  loc_A155D2: FStStrNoPop var_A0
  loc_A155D5: ILdRf var_88
  loc_A155D8: ConcatStr
  loc_A155D9: FStStrNoPop var_A4
  loc_A155DC: LitStr "',"
  loc_A155DF: ConcatStr
  loc_A155E0: FStStrNoPop var_A8
  loc_A155E3: ILdRf var_8C
  loc_A155E6: ConcatStr
  loc_A155E7: FStStrNoPop var_AC
  loc_A155EA: LitStr ",MD5('123456'),Curdate(),"
  loc_A155ED: ConcatStr
  loc_A155EE: FStStrNoPop var_B0
  loc_A155F1: FLdUI1
  loc_A155F5: CStrI2
  loc_A155F7: FStStrNoPop var_B4
  loc_A155FA: ConcatStr
  loc_A155FB: FStStrNoPop var_B8
  loc_A155FE: LitStr ",'"
  loc_A15601: ConcatStr
  loc_A15602: FStStrNoPop var_BC
  loc_A15605: ILdRf var_90
  loc_A15608: ConcatStr
  loc_A15609: FStStrNoPop var_C0
  loc_A1560C: LitStr "','"
  loc_A1560F: ConcatStr
  loc_A15610: FStStrNoPop var_C4
  loc_A15613: ILdRf var_94
  loc_A15616: ConcatStr
  loc_A15617: FStStrNoPop var_C8
  loc_A1561A: LitStr "','"
  loc_A1561D: ConcatStr
  loc_A1561E: FStStrNoPop var_CC
  loc_A15621: ILdRf var_98
  loc_A15624: ConcatStr
  loc_A15625: FStStrNoPop var_D0
  loc_A15628: LitStr "','"
  loc_A1562B: ConcatStr
  loc_A1562C: FStStrNoPop var_D4
  loc_A1562F: ILdRf var_9C
  loc_A15632: ConcatStr
  loc_A15633: FStStrNoPop var_D8
  loc_A15636: LitStr "','"
  loc_A15639: ConcatStr
  loc_A1563A: FStStrNoPop var_DC
  loc_A1563D: ImpAdLdI4 MemVar_C3D03C
  loc_A15640: ConcatStr
  loc_A15641: FStStrNoPop var_E0
  loc_A15644: LitStr "')"
  loc_A15647: ConcatStr
  loc_A15648: FStStrNoPop var_E4
  loc_A1564B: Call EjecutarRsCls(from_stack_1v)
  loc_A15650: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_A15677: FLdI2 HaceRequery
  loc_A1567A: BranchF loc_A15685
  loc_A1567D: ILdRf var_88
  loc_A15680: Call Encontrar(from_stack_1v)
  loc_A15685: ExitProcHresult
  loc_A15686: LitI4 0
  loc_A1568B: LitStr "No se pudo agregar el registro."
  loc_A1568E: LitStr vbCrLf
  loc_A15691: ConcatStr
  loc_A15692: FStStrNoPop var_A0
  loc_A15695: LitStr "(Cod. "
  loc_A15698: ConcatStr
  loc_A15699: FStStrNoPop var_A4
  loc_A1569C: FLdRfVar var_EC
  loc_A1569F: ImpAdCallI2 Err 'rtcErrObj
  loc_A156A4: FStAdFunc var_E8
  loc_A156A7: FLdPr var_E8
  loc_A156AA:  = Err.Number
  loc_A156AF: ILdRf var_EC
  loc_A156B2: CStrI4
  loc_A156B4: FStStrNoPop var_A8
  loc_A156B7: ConcatStr
  loc_A156B8: FStStrNoPop var_AC
  loc_A156BB: LitStr ")"
  loc_A156BE: ConcatStr
  loc_A156BF: FStStrNoPop var_B0
  loc_A156C2: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A156C7: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A156D4: FFree1Ad var_E8
  loc_A156D7: ExitProcHresult
End Sub

Public Sub Modificar(CodiUsua, CucuPers, InhaUsua, AcreUsua, CoenUsua, CosaUsua, UsmaUsua, ComaUsua, HaceRequery) 'A22A88
  'Data Table: 413408
  loc_A2292C: ILdRf CodiUsua
  loc_A2292F: FStStrCopy var_88
  loc_A22932: ILdRf CucuPers
  loc_A22935: FStStrCopy var_8C
  loc_A22938: ILdRf CoenUsua
  loc_A2293B: FStStrCopy var_90
  loc_A2293E: ILdRf CosaUsua
  loc_A22941: FStStrCopy var_94
  loc_A22944: ILdRf UsmaUsua
  loc_A22947: FStStrCopy var_98
  loc_A2294A: ILdRf ComaUsua
  loc_A2294D: FStStrCopy var_9C
  loc_A22950: OnErrorGoto loc_A22A36
  loc_A22953: LitStr "UPDATE infogov.usuario"
  loc_A22956: LitStr " SET CucuPers="
  loc_A22959: ConcatStr
  loc_A2295A: FStStrNoPop var_A0
  loc_A2295D: ILdRf var_8C
  loc_A22960: ConcatStr
  loc_A22961: FStStrNoPop var_A4
  loc_A22964: LitStr ", AcreUsua="
  loc_A22967: ConcatStr
  loc_A22968: FStStrNoPop var_A8
  loc_A2296B: FLdUI1
  loc_A2296F: CStrI2
  loc_A22971: FStStrNoPop var_AC
  loc_A22974: ConcatStr
  loc_A22975: FStStrNoPop var_B0
  loc_A22978: LitStr ", CoenUsua='"
  loc_A2297B: ConcatStr
  loc_A2297C: FStStrNoPop var_B4
  loc_A2297F: ILdRf var_90
  loc_A22982: ConcatStr
  loc_A22983: FStStrNoPop var_B8
  loc_A22986: LitStr "', CosaUsua='"
  loc_A22989: ConcatStr
  loc_A2298A: FStStrNoPop var_BC
  loc_A2298D: ILdRf var_94
  loc_A22990: ConcatStr
  loc_A22991: FStStrNoPop var_C0
  loc_A22994: LitStr "', UsmaUsua='"
  loc_A22997: ConcatStr
  loc_A22998: FStStrNoPop var_C4
  loc_A2299B: ILdRf var_98
  loc_A2299E: ConcatStr
  loc_A2299F: FStStrNoPop var_C8
  loc_A229A2: LitStr "', ComaUsua='"
  loc_A229A5: ConcatStr
  loc_A229A6: FStStrNoPop var_CC
  loc_A229A9: ILdRf var_9C
  loc_A229AC: ConcatStr
  loc_A229AD: FStStrNoPop var_D0
  loc_A229B0: LitStr "', ModiUsua='"
  loc_A229B3: ConcatStr
  loc_A229B4: FStStrNoPop var_D4
  loc_A229B7: ImpAdLdI4 MemVar_C3D03C
  loc_A229BA: ConcatStr
  loc_A229BB: FStStrNoPop var_D8
  loc_A229BE: LitStr "', ModiFeho=Now()"
  loc_A229C1: ConcatStr
  loc_A229C2: FStStrNoPop var_DC
  loc_A229C5: LitStr " WHERE CodiUsua='"
  loc_A229C8: ConcatStr
  loc_A229C9: FStStrNoPop var_E0
  loc_A229CC: ILdRf var_88
  loc_A229CF: ConcatStr
  loc_A229D0: FStStrNoPop var_E4
  loc_A229D3: LitStr "';"
  loc_A229D6: ConcatStr
  loc_A229D7: FStStrNoPop var_E8
  loc_A229DA: Call EjecutarRsCls(from_stack_1v)
  loc_A229DF: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_A22A08: FLdUI1
  loc_A22A0C: CI2UI1
  loc_A22A0E: LitI2_Byte 0
  loc_A22A10: EqI2
  loc_A22A11: BranchF loc_A22A1F
  loc_A22A14: ILdRf var_88
  loc_A22A17: Call Proc_37_30_9AE6C8()
  loc_A22A1C: Branch loc_A22A27
  loc_A22A1F: ILdRf var_88
  loc_A22A22: Call Inhabilitar(from_stack_1v)
  loc_A22A27: FLdI2 HaceRequery
  loc_A22A2A: BranchF loc_A22A35
  loc_A22A2D: ILdRf var_88
  loc_A22A30: Call Encontrar(from_stack_1v)
  loc_A22A35: ExitProcHresult
  loc_A22A36: LitI4 0
  loc_A22A3B: LitStr "No se pudo modificar el registro."
  loc_A22A3E: LitStr vbCrLf
  loc_A22A41: ConcatStr
  loc_A22A42: FStStrNoPop var_A0
  loc_A22A45: LitStr "(Cod. "
  loc_A22A48: ConcatStr
  loc_A22A49: FStStrNoPop var_A4
  loc_A22A4C: FLdRfVar var_F0
  loc_A22A4F: ImpAdCallI2 Err 'rtcErrObj
  loc_A22A54: FStAdFunc var_EC
  loc_A22A57: FLdPr var_EC
  loc_A22A5A:  = Err.Number
  loc_A22A5F: ILdRf var_F0
  loc_A22A62: CStrI4
  loc_A22A64: FStStrNoPop var_A8
  loc_A22A67: ConcatStr
  loc_A22A68: FStStrNoPop var_AC
  loc_A22A6B: LitStr ")"
  loc_A22A6E: ConcatStr
  loc_A22A6F: FStStrNoPop var_B0
  loc_A22A72: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A22A77: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A22A84: FFree1Ad var_EC
  loc_A22A87: ExitProcHresult
End Sub

Public Sub Anular(CodiUsua, HaceRequery) '9B72F0
  'Data Table: 413408
  loc_9B724C: ILdRf CodiUsua
  loc_9B724F: FStStrCopy var_88
  loc_9B7252: OnErrorGoto loc_9B729C
  loc_9B7255: LitStr "UPDATE infogov.usuario SET BajaUsua='"
  loc_9B7258: ImpAdLdI4 MemVar_C3D03C
  loc_9B725B: ConcatStr
  loc_9B725C: FStStrNoPop var_8C
  loc_9B725F: LitStr "',BajaFeho=now()"
  loc_9B7262: ConcatStr
  loc_9B7263: FStStrNoPop var_90
  loc_9B7266: LitStr " WHERE CodiUsua='"
  loc_9B7269: ConcatStr
  loc_9B726A: FStStrNoPop var_94
  loc_9B726D: ILdRf var_88
  loc_9B7270: ConcatStr
  loc_9B7271: FStStrNoPop var_98
  loc_9B7274: LitStr "';"
  loc_9B7277: ConcatStr
  loc_9B7278: FStStrNoPop var_9C
  loc_9B727B: Call EjecutarRsCls(from_stack_1v)
  loc_9B7280: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9B728D: FLdI2 HaceRequery
  loc_9B7290: BranchF loc_9B729B
  loc_9B7293: ILdRf var_88
  loc_9B7296: Call Encontrar(from_stack_1v)
  loc_9B729B: ExitProcHresult
  loc_9B729C: LitI4 0
  loc_9B72A1: LitStr "No se pudo anular el registro."
  loc_9B72A4: LitStr vbCrLf
  loc_9B72A7: ConcatStr
  loc_9B72A8: FStStrNoPop var_8C
  loc_9B72AB: LitStr "(Cod. "
  loc_9B72AE: ConcatStr
  loc_9B72AF: FStStrNoPop var_90
  loc_9B72B2: FLdRfVar var_A4
  loc_9B72B5: ImpAdCallI2 Err 'rtcErrObj
  loc_9B72BA: FStAdFunc var_A0
  loc_9B72BD: FLdPr var_A0
  loc_9B72C0:  = Err.Number
  loc_9B72C5: ILdRf var_A4
  loc_9B72C8: CStrI4
  loc_9B72CA: FStStrNoPop var_94
  loc_9B72CD: ConcatStr
  loc_9B72CE: FStStrNoPop var_98
  loc_9B72D1: LitStr ")"
  loc_9B72D4: ConcatStr
  loc_9B72D5: FStStrNoPop var_9C
  loc_9B72D8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9B72DD: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9B72EA: FFree1Ad var_A0
  loc_9B72ED: ExitProcHresult
End Sub

Public Sub Encontrar(CodiUsua) '97CD10
  'Data Table: 413408
  loc_97CCE4: ILdRf CodiUsua
  loc_97CCE7: FStStrCopy var_88
  loc_97CCEA: Call Requery()
  loc_97CCEF: LitStr "CodiUsua = '"
  loc_97CCF2: ILdRf var_88
  loc_97CCF5: ConcatStr
  loc_97CCF6: FStStrNoPop var_8C
  loc_97CCF9: LitStr "'"
  loc_97CCFC: ConcatStr
  loc_97CCFD: PopTmpLdAdStr
  loc_97CD01: Call Find(from_stack_1v)
  loc_97CD06: FFreeStr var_8C = ""
  loc_97CD0D: ExitProcHresult
  loc_97CD0E: MemLdPr global_-28417
End Sub

Public Sub Inhabilitar(CodiUsua) '9ABD6C
  'Data Table: 413408
  loc_9ABCE0: ILdRf CodiUsua
  loc_9ABCE3: FStStrCopy var_88
  loc_9ABCE6: OnErrorGoto loc_9ABD19
  loc_9ABCE9: LitStr "UPDATE infogov.usuario"
  loc_9ABCEC: LitStr " SET InhaUsua=1, BajaMoti=Concat(RIGHT(BajaMoti,145),',Inhabilitado desde ',SUBSTRING_INDEX(USER(),'@',-1),', ',Date_format(Now(),'" & Chr(37) & "d/" & Chr(37) & "m/" & Chr(37) & "Y " & Chr(37) & "T'),'.')"
  loc_9ABCEF: ConcatStr
  loc_9ABCF0: FStStrNoPop var_8C
  loc_9ABCF3: LitStr " WHERE CodiUsua='"
  loc_9ABCF6: ConcatStr
  loc_9ABCF7: FStStrNoPop var_90
  loc_9ABCFA: ILdRf var_88
  loc_9ABCFD: ConcatStr
  loc_9ABCFE: FStStrNoPop var_94
  loc_9ABD01: LitStr "';"
  loc_9ABD04: ConcatStr
  loc_9ABD05: FStStrNoPop var_98
  loc_9ABD08: Call EjecutarRsCls(from_stack_1v)
  loc_9ABD0D: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_9ABD18: ExitProcHresult
  loc_9ABD19: LitI4 0
  loc_9ABD1E: LitStr "No se pudo inhabilitar el usuario."
  loc_9ABD21: LitStr vbCrLf
  loc_9ABD24: ConcatStr
  loc_9ABD25: FStStrNoPop var_8C
  loc_9ABD28: LitStr "(Cod. "
  loc_9ABD2B: ConcatStr
  loc_9ABD2C: FStStrNoPop var_90
  loc_9ABD2F: FLdRfVar var_A0
  loc_9ABD32: ImpAdCallI2 Err 'rtcErrObj
  loc_9ABD37: FStAdFunc var_9C
  loc_9ABD3A: FLdPr var_9C
  loc_9ABD3D:  = Err.Number
  loc_9ABD42: ILdRf var_A0
  loc_9ABD45: CStrI4
  loc_9ABD47: FStStrNoPop var_94
  loc_9ABD4A: ConcatStr
  loc_9ABD4B: FStStrNoPop var_98
  loc_9ABD4E: LitStr ")"
  loc_9ABD51: ConcatStr
  loc_9ABD52: FStStrNoPop var_A4
  loc_9ABD55: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9ABD5A: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9ABD67: FFree1Ad var_9C
  loc_9ABD6A: ExitProcHresult
End Sub

Public Sub EstablecerClave(CodiUsua, Clave) '9C8EC8
  'Data Table: 413408
  loc_9C8E0C: ILdRf CodiUsua
  loc_9C8E0F: FStStrCopy var_88
  loc_9C8E12: ILdRf Clave
  loc_9C8E15: FStStrCopy var_8C
  loc_9C8E18: OnErrorGoto loc_9C8E76
  loc_9C8E1B: LitStr "UPDATE infogov.usuario"
  loc_9C8E1E: LitStr " SET ClavUsua=MD5('"
  loc_9C8E21: ConcatStr
  loc_9C8E22: FStStrNoPop var_90
  loc_9C8E25: ILdRf var_8C
  loc_9C8E28: ConcatStr
  loc_9C8E29: FStStrNoPop var_94
  loc_9C8E2C: LitStr "'),FeveUsua=adddate(curdate(),"
  loc_9C8E2F: ConcatStr
  loc_9C8E30: FStStrNoPop var_98
  loc_9C8E33: LitI2 255
  loc_9C8E36: CStrI2
  loc_9C8E38: FStStrNoPop var_9C
  loc_9C8E3B: ConcatStr
  loc_9C8E3C: FStStrNoPop var_A0
  loc_9C8E3F: LitStr ")"
  loc_9C8E42: ConcatStr
  loc_9C8E43: FStStrNoPop var_A4
  loc_9C8E46: LitStr " WHERE codiusua = '"
  loc_9C8E49: ConcatStr
  loc_9C8E4A: FStStrNoPop var_A8
  loc_9C8E4D: ILdRf var_88
  loc_9C8E50: ConcatStr
  loc_9C8E51: FStStrNoPop var_AC
  loc_9C8E54: LitStr "';"
  loc_9C8E57: ConcatStr
  loc_9C8E58: FStStrNoPop var_B0
  loc_9C8E5B: Call EjecutarRsCls(from_stack_1v)
  loc_9C8E60: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_9C8E75: ExitProcHresult
  loc_9C8E76: LitI4 0
  loc_9C8E7B: LitStr "No se pudo establecer la clave."
  loc_9C8E7E: LitStr vbCrLf
  loc_9C8E81: ConcatStr
  loc_9C8E82: FStStrNoPop var_90
  loc_9C8E85: LitStr "(Cod. "
  loc_9C8E88: ConcatStr
  loc_9C8E89: FStStrNoPop var_94
  loc_9C8E8C: FLdRfVar var_B8
  loc_9C8E8F: ImpAdCallI2 Err 'rtcErrObj
  loc_9C8E94: FStAdFunc var_B4
  loc_9C8E97: FLdPr var_B4
  loc_9C8E9A:  = Err.Number
  loc_9C8E9F: ILdRf var_B8
  loc_9C8EA2: CStrI4
  loc_9C8EA4: FStStrNoPop var_98
  loc_9C8EA7: ConcatStr
  loc_9C8EA8: FStStrNoPop var_9C
  loc_9C8EAB: LitStr ")"
  loc_9C8EAE: ConcatStr
  loc_9C8EAF: FStStrNoPop var_A0
  loc_9C8EB2: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9C8EB7: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_9C8EC4: FFree1Ad var_B4
  loc_9C8EC7: ExitProcHresult
End Sub

Public Sub ResetearClave(CodiUsua) '9B96D4
  'Data Table: 413408
  loc_9B962C: ILdRf CodiUsua
  loc_9B962F: FStStrCopy var_88
  loc_9B9632: OnErrorGoto loc_9B967F
  loc_9B9635: LitStr "UPDATE infogov.usuario"
  loc_9B9638: LitStr " SET ClavUsua=MD5('123456'),FeveUsua=curdate(),ModiUsua='"
  loc_9B963B: ConcatStr
  loc_9B963C: FStStrNoPop var_8C
  loc_9B963F: ImpAdLdI4 MemVar_C3D03C
  loc_9B9642: ConcatStr
  loc_9B9643: FStStrNoPop var_90
  loc_9B9646: LitStr "',ModiFeho=Now()"
  loc_9B9649: ConcatStr
  loc_9B964A: FStStrNoPop var_94
  loc_9B964D: LitStr " WHERE CodiUsua='"
  loc_9B9650: ConcatStr
  loc_9B9651: FStStrNoPop var_98
  loc_9B9654: ILdRf var_88
  loc_9B9657: ConcatStr
  loc_9B9658: FStStrNoPop var_9C
  loc_9B965B: LitStr "'"
  loc_9B965E: ConcatStr
  loc_9B965F: FStStrNoPop var_A0
  loc_9B9662: Call EjecutarRsCls(from_stack_1v)
  loc_9B9667: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_9B9676: ILdRf var_88
  loc_9B9679: Call Encontrar(from_stack_1v)
  loc_9B967E: ExitProcHresult
  loc_9B967F: LitI4 0
  loc_9B9684: LitStr "No se pudo inhabilitar el usuario."
  loc_9B9687: LitStr vbCrLf
  loc_9B968A: ConcatStr
  loc_9B968B: FStStrNoPop var_8C
  loc_9B968E: LitStr "(Cod. "
  loc_9B9691: ConcatStr
  loc_9B9692: FStStrNoPop var_90
  loc_9B9695: FLdRfVar var_A8
  loc_9B9698: ImpAdCallI2 Err 'rtcErrObj
  loc_9B969D: FStAdFunc var_A4
  loc_9B96A0: FLdPr var_A4
  loc_9B96A3:  = Err.Number
  loc_9B96A8: ILdRf var_A8
  loc_9B96AB: CStrI4
  loc_9B96AD: FStStrNoPop var_94
  loc_9B96B0: ConcatStr
  loc_9B96B1: FStStrNoPop var_98
  loc_9B96B4: LitStr ")"
  loc_9B96B7: ConcatStr
  loc_9B96B8: FStStrNoPop var_9C
  loc_9B96BB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9B96C0: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9B96CD: FFree1Ad var_A4
  loc_9B96D0: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '9739A0
  'Data Table: 413408
  loc_973978: ILdRf sSelect
  loc_97397B: FStStrCopy var_88
  loc_97397E: FLdPr Me
  loc_973981: MemLdRfVar from_stack_1.RsFrm
  loc_973984: ILdRf var_88
  loc_973987: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_97398C: LitVarStr var_98, "Primary"
  loc_973991: PopAdLdVar
  loc_973992: FLdPr Me
  loc_973995: LateIdCall
  loc_97399D: ExitProcHresult
  loc_97399E: AryLock
End Sub

Public Sub EjecutarRsCls(sSelect) '957290
  'Data Table: 413408
  loc_957278: ILdRf sSelect
  loc_95727B: FStStrCopy var_88
  loc_95727E: FLdPr Me
  loc_957281: MemLdRfVar from_stack_1.global_56
  loc_957284: ILdRf var_88
  loc_957287: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95728C: ExitProcHresult
End Sub

Public Sub Requery() '96A280
  'Data Table: 413408
  loc_96A260: FLdPr Me
  loc_96A263: MemLdRfVar from_stack_1.RsFrm
  loc_96A266: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_96A26B: LitVarStr var_94, "Primary"
  loc_96A270: PopAdLdVar
  loc_96A271: FLdPr Me
  loc_96A274: LateIdCall
  loc_96A27C: ExitProcHresult
End Sub

Public Property Get DataSource() '973BC4
  'Data Table: 413408
  loc_973BA0: ZeroRetVal
  loc_973BA2: FLdRfVar var_8C
  loc_973BA5: FLdPr Me
  loc_973BA8: MemLdPr RsFrm
  loc_973BAB:  = Me.DataSource
  loc_973BB0: ILdRf var_8C
  loc_973BB3: CastAd
  loc_973BB6: FStAdFunc var_88
  loc_973BB9: FFree1Ad var_8C
  loc_973BBC: ExitProcCbHresult
End Sub

Public Property Get ClaveVencida() '98F1AC
  'Data Table: 413408
  loc_98F168: FLdRfVar var_B0
  loc_98F16B: FLdRfVar var_A0
  loc_98F16E: LitVarStr var_9C, "ClaveVencida"
  loc_98F173: PopAdLdVar
  loc_98F174: FLdRfVar var_8C
  loc_98F177: FLdPr Me
  loc_98F17A: MemLdPr RsFrm
  loc_98F17D:  = Me.Fields
  loc_98F182: FLdPr var_8C
  loc_98F185: from_stack_2 = Me.Item(from_stack_1)
  loc_98F18A: FLdPr var_A0
  loc_98F18D:  = Me.Value
  loc_98F192: FLdRfVar var_B0
  loc_98F195: CBoolVar
  loc_98F197: FStI2 var_86
  loc_98F19A: FFreeAd var_8C = ""
  loc_98F1A1: FFree1Var var_B0 = ""
  loc_98F1A4: ExitProcCbHresult
End Sub

Public Function ValidaClave(CodiUsua) '9A4B7C
  'Data Table: 413408
  loc_9A4B00: ILdRf CodiUsua
  loc_9A4B03: FStStrCopy var_8C
  loc_9A4B06: ZeroRetVal
  loc_9A4B08: LitI2_Byte 0
  loc_9A4B0A: PopTmpLdAd2 var_92
  loc_9A4B0D: LitI2_Byte 0
  loc_9A4B0F: PopTmpLdAd2 var_90
  loc_9A4B12: LitI2_Byte 0
  loc_9A4B14: PopTmpLdAd2 var_8E
  loc_9A4B17: ILdRf var_8C
  loc_9A4B1A: LitStr " el código de usuario"
  loc_9A4B1D: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9A4B22: FStStr var_88
  loc_9A4B25: ILdRf var_88
  loc_9A4B28: LitStr vbNullString
  loc_9A4B2B: NeStr
  loc_9A4B2D: BranchF loc_9A4B36
  loc_9A4B30: ExitProcCbHresult
  loc_9A4B36: LitStr "SELECT * FROM infogov.usuario WHERE CodiUsua = '"
  loc_9A4B39: ILdRf var_8C
  loc_9A4B3C: ConcatStr
  loc_9A4B3D: FStStrNoPop var_98
  loc_9A4B40: LitStr "'"
  loc_9A4B43: ConcatStr
  loc_9A4B44: FStStrNoPop var_9C
  loc_9A4B47: Call EjecutarRsCls(from_stack_1v)
  loc_9A4B4C: FFreeStr var_98 = ""
  loc_9A4B53: FLdRfVar var_A0
  loc_9A4B56: FLdPr Me
  loc_9A4B59: MemLdPr global_56
  loc_9A4B5C:  = Me.RecordCount
  loc_9A4B61: ILdRf var_A0
  loc_9A4B64: LitI4 0
  loc_9A4B69: GtI4
  loc_9A4B6A: BranchF loc_9A4B73
  loc_9A4B6D: LitStr "El usuario YA EXISTE. Reintente..."
  loc_9A4B70: FStStrCopy var_88
  loc_9A4B73: ExitProcCbHresult
End Function

Public Function ValidarUsuario(CodiUsua) '9AE7A8
  'Data Table: 413408
  loc_9AE714: ILdRf CodiUsua
  loc_9AE717: FStStrCopy var_8C
  loc_9AE71A: ZeroRetVal
  loc_9AE71C: LitI2_Byte 0
  loc_9AE71E: PopTmpLdAd2 var_92
  loc_9AE721: LitI2_Byte 0
  loc_9AE723: PopTmpLdAd2 var_90
  loc_9AE726: LitI2_Byte 0
  loc_9AE728: PopTmpLdAd2 var_8E
  loc_9AE72B: ILdRf var_8C
  loc_9AE72E: LitStr "código de usuario"
  loc_9AE731: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9AE736: FStStr var_88
  loc_9AE739: ILdRf var_88
  loc_9AE73C: LitStr vbNullString
  loc_9AE73F: NeStr
  loc_9AE741: BranchF loc_9AE74A
  loc_9AE744: ExitProcCbHresult
  loc_9AE74A: LitStr "SELECT infogov.fnValidarUsuario('"
  loc_9AE74D: ILdRf var_8C
  loc_9AE750: ConcatStr
  loc_9AE751: FStStrNoPop var_98
  loc_9AE754: LitStr "') AS Error;"
  loc_9AE757: ConcatStr
  loc_9AE758: FStStrNoPop var_9C
  loc_9AE75B: Call EjecutarRsCls(from_stack_1v)
  loc_9AE760: FFreeStr var_98 = ""
  loc_9AE767: FLdRfVar var_C4
  loc_9AE76A: FLdRfVar var_B4
  loc_9AE76D: LitVarStr var_B0, "Error"
  loc_9AE772: PopAdLdVar
  loc_9AE773: FLdRfVar var_A0
  loc_9AE776: FLdPr Me
  loc_9AE779: MemLdPr global_56
  loc_9AE77C:  = Me.Fields
  loc_9AE781: FLdPr var_A0
  loc_9AE784: from_stack_2 = Me.Item(from_stack_1)
  loc_9AE789: FLdPr var_B4
  loc_9AE78C:  = Me.Value
  loc_9AE791: FLdRfVar var_C4
  loc_9AE794: CStrVarTmp
  loc_9AE795: FStStr var_88
  loc_9AE798: FFreeAd var_A0 = ""
  loc_9AE79F: FFree1Var var_C4 = ""
  loc_9AE7A2: ExitProcCbHresult
End Function

Public Function ValidaClaveUsuario(CodiUsua, Clave) '9BFFC0
  'Data Table: 413408
  loc_9BFF14: ILdRf CodiUsua
  loc_9BFF17: FStStrCopy var_8C
  loc_9BFF1A: ILdRf Clave
  loc_9BFF1D: FStStrCopy var_90
  loc_9BFF20: ZeroRetVal
  loc_9BFF22: LitI2_Byte 0
  loc_9BFF24: PopTmpLdAd2 var_96
  loc_9BFF27: LitI2_Byte 0
  loc_9BFF29: PopTmpLdAd2 ValidaClaveUsuario
  loc_9BFF2C: LitI2_Byte 0
  loc_9BFF2E: PopTmpLdAd2 var_92
  loc_9BFF31: ILdRf var_8C
  loc_9BFF34: LitStr " el código de usuario"
  loc_9BFF37: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BFF3C: FStStr var_88
  loc_9BFF3F: ILdRf var_88
  loc_9BFF42: LitStr vbNullString
  loc_9BFF45: NeStr
  loc_9BFF47: BranchF loc_9BFF50
  loc_9BFF4A: ExitProcCbHresult
  loc_9BFF50: LitStr "SELECT infogov.fnValidarClaveUsuario('"
  loc_9BFF53: ILdRf var_8C
  loc_9BFF56: ConcatStr
  loc_9BFF57: FStStrNoPop var_9C
  loc_9BFF5A: LitStr "','"
  loc_9BFF5D: ConcatStr
  loc_9BFF5E: FStStrNoPop var_A0
  loc_9BFF61: ILdRf var_90
  loc_9BFF64: ConcatStr
  loc_9BFF65: FStStrNoPop var_A4
  loc_9BFF68: LitStr "') AS Error;"
  loc_9BFF6B: ConcatStr
  loc_9BFF6C: FStStrNoPop var_A8
  loc_9BFF6F: Call EjecutarRsCls(from_stack_1v)
  loc_9BFF74: FFreeStr var_9C = "": var_A0 = "": var_A4 = ""
  loc_9BFF7F: FLdRfVar var_D0
  loc_9BFF82: FLdRfVar var_C0
  loc_9BFF85: LitVarStr var_BC, "Error"
  loc_9BFF8A: PopAdLdVar
  loc_9BFF8B: FLdRfVar var_AC
  loc_9BFF8E: FLdPr Me
  loc_9BFF91: MemLdPr global_56
  loc_9BFF94:  = Me.Fields
  loc_9BFF99: FLdPr var_AC
  loc_9BFF9C: from_stack_2 = Me.Item(from_stack_1)
  loc_9BFFA1: FLdPr var_C0
  loc_9BFFA4:  = Me.Value
  loc_9BFFA9: FLdRfVar var_D0
  loc_9BFFAC: CStrVarTmp
  loc_9BFFAD: FStStr var_88
  loc_9BFFB0: FFreeAd var_AC = ""
  loc_9BFFB7: FFree1Var var_D0 = ""
  loc_9BFFBA: ExitProcCbHresult
End Function

Private Function Proc_37_30_9AE6C8(arg_C) '9AE6C8
  'Data Table: 413408
  loc_9AE634: ILdRf arg_C
  loc_9AE637: FStStrCopy var_88
  loc_9AE63A: OnErrorGoto loc_9AE675
  loc_9AE63D: LitStr "UPDATE infogov.usuario SET InhaUsua=0,ModiUsua='"
  loc_9AE640: ImpAdLdI4 MemVar_C3D03C
  loc_9AE643: ConcatStr
  loc_9AE644: FStStrNoPop var_8C
  loc_9AE647: LitStr "',ModiFeho=now() WHERE CodiUsua='"
  loc_9AE64A: ConcatStr
  loc_9AE64B: FStStrNoPop var_90
  loc_9AE64E: ILdRf var_88
  loc_9AE651: ConcatStr
  loc_9AE652: FStStrNoPop var_94
  loc_9AE655: LitStr "'"
  loc_9AE658: ConcatStr
  loc_9AE659: FStStrNoPop var_98
  loc_9AE65C: Call EjecutarRsCls(from_stack_1v)
  loc_9AE661: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_9AE66C: ILdRf var_88
  loc_9AE66F: Call Encontrar(from_stack_1v)
  loc_9AE674: ExitProcHresult
  loc_9AE675: LitI4 0
  loc_9AE67A: LitStr "No se pudo habilitar el usuario."
  loc_9AE67D: LitStr vbCrLf
  loc_9AE680: ConcatStr
  loc_9AE681: FStStrNoPop var_8C
  loc_9AE684: LitStr "(Cod. "
  loc_9AE687: ConcatStr
  loc_9AE688: FStStrNoPop var_90
  loc_9AE68B: FLdRfVar var_A0
  loc_9AE68E: ImpAdCallI2 Err 'rtcErrObj
  loc_9AE693: FStAdFunc var_9C
  loc_9AE696: FLdPr var_9C
  loc_9AE699:  = Err.Number
  loc_9AE69E: ILdRf var_A0
  loc_9AE6A1: CStrI4
  loc_9AE6A3: FStStrNoPop var_94
  loc_9AE6A6: ConcatStr
  loc_9AE6A7: FStStrNoPop var_98
  loc_9AE6AA: LitStr ")"
  loc_9AE6AD: ConcatStr
  loc_9AE6AE: FStStrNoPop var_A4
  loc_9AE6B1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9AE6B6: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9AE6C3: FFree1Ad var_9C
  loc_9AE6C6: ExitProcHresult
End Function

Private Function Proc_37_31_9BFBAC(arg_C) '9BFBAC
  'Data Table: 413408
  loc_9BFB04: ILdRf arg_C
  loc_9BFB07: FStStrCopy var_8C
  loc_9BFB0A: ZeroRetVal
  loc_9BFB0C: LitStr "char("
  loc_9BFB0F: FStStrCopy var_90
  loc_9BFB12: LitI2_Byte 1
  loc_9BFB14: FLdRfVar var_92
  loc_9BFB17: ILdRf var_8C
  loc_9BFB1A: FnLenStr
  loc_9BFB1B: CI2I4
  loc_9BFB1C: ForI2 var_96
  loc_9BFB22: ILdRf var_90
  loc_9BFB25: LitVarI2 var_B8, 1
  loc_9BFB2A: FLdI2 var_92
  loc_9BFB2D: CI4UI1
  loc_9BFB2E: ILdRf var_8C
  loc_9BFB31: ImpAdCallI2 Mid$(, , )
  loc_9BFB36: FStStrNoPop var_BC
  loc_9BFB39: ImpAdCallI2 Asc()
  loc_9BFB3E: CStrUI1
  loc_9BFB40: FStStrNoPop var_C0
  loc_9BFB43: ConcatStr
  loc_9BFB44: CVarStr var_130
  loc_9BFB47: LitVarStr var_100, ")"
  loc_9BFB4C: FStVarCopyObj var_110
  loc_9BFB4F: FLdRfVar var_110
  loc_9BFB52: LitVarStr var_E0, ","
  loc_9BFB57: FStVarCopyObj var_F0
  loc_9BFB5A: FLdRfVar var_F0
  loc_9BFB5D: FLdI2 var_92
  loc_9BFB60: CI4UI1
  loc_9BFB61: ILdRf var_8C
  loc_9BFB64: FnLenStr
  loc_9BFB65: LtI4
  loc_9BFB66: CVarBoolI2 var_D0
  loc_9BFB6A: FLdRfVar var_120
  loc_9BFB6D: ImpAdCallFPR4  = IIf(, , )
  loc_9BFB72: FLdRfVar var_120
  loc_9BFB75: ConcatVar var_140
  loc_9BFB79: CStrVarTmp
  loc_9BFB7A: FStStr var_90
  loc_9BFB7D: FFreeStr var_BC = ""
  loc_9BFB84: FFreeVar var_B8 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_120 = ""
  loc_9BFB95: FLdRfVar var_92
  loc_9BFB98: NextI2 var_96, loc_9BFB22
  loc_9BFB9D: ILdRf var_90
  loc_9BFBA0: FStStrCopy var_88
  loc_9BFBA3: ExitProcCbHresult
End Function

Private Function Proc_37_32_973940() '973940
  'Data Table: 413408
  loc_97391C: LitStr "Primary"
  loc_97391F: FLdPr Me
  loc_973922: LateIdLdVar var_94 DispID_4 0
  loc_973929: CastAdVar Me
  loc_97392D: FStAdFunc var_98
  loc_973930: FLdPr var_98
  loc_973938: FFree1Ad var_98
  loc_97393B: FFree1Var var_94 = ""
  loc_97393E: ExitProcHresult
End Function

Private Function Proc_37_33_96A2CC(arg_C) '96A2CC
  'Data Table: 413408
  loc_96A2B0: ILdI4 arg_C
  loc_96A2B3: FStStrCopy var_88
  loc_96A2B6: ILdRf var_88
  loc_96A2B9: LitStr "Primary"
  loc_96A2BC: EqStr
  loc_96A2BE: BranchF loc_96A2CB
  loc_96A2C1: FLdPr Me
  loc_96A2C4: MemLdStr RsFrm
  loc_96A2C7: IStAd
  loc_96A2CB: ExitProcHresult
End Function
